.class public Lcom/android/systemui/recents/AlternateRecentsComponent;
.super Ljava/lang/Object;
.source "AlternateRecentsComponent.java"

# interfaces
.implements Landroid/app/ActivityOptions$OnAnimationStartedListener;


# static fields
.field static sLastScreenshot:Landroid/graphics/Bitmap;

.field static sRecentsComponentCallbacks:Lcom/android/systemui/RecentsComponent$Callbacks;


# instance fields
.field mBootCompleted:Z

.field mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

.field mContext:Landroid/content/Context;

.field mDummyStackView:Lcom/android/systemui/recents/views/TaskStackView;

.field mHandler:Landroid/os/Handler;

.field mHeaderBar:Lcom/android/systemui/recents/views/TaskViewHeader;

.field mInflater:Landroid/view/LayoutInflater;

.field mLastToggleTime:J

.field mNavBarHeight:I

.field mNavBarWidth:I

.field mStartAnimationTriggered:Z

.field mStatusBarHeight:I

.field mStatusBarView:Landroid/view/View;

.field mSystemInsets:Landroid/graphics/Rect;

.field mSystemServicesProxy:Lcom/android/systemui/recents/misc/SystemServicesProxy;

.field mTaskStackBounds:Landroid/graphics/Rect;

.field mTmpTransform:Lcom/android/systemui/recents/views/TaskViewTransform;

.field mTriggeredFromAltTab:Z

.field mWindowRect:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mWindowRect:Landroid/graphics/Rect;

    .line 90
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mTaskStackBounds:Landroid/graphics/Rect;

    .line 91
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mSystemInsets:Landroid/graphics/Rect;

    .line 92
    new-instance v0, Lcom/android/systemui/recents/views/TaskViewTransform;

    invoke-direct {v0}, Lcom/android/systemui/recents/views/TaskViewTransform;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mTmpTransform:Lcom/android/systemui/recents/views/TaskViewTransform;

    .line 107
    invoke-static {p1}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->initialize(Landroid/content/Context;)Lcom/android/systemui/recents/model/RecentsTaskLoader;

    .line 108
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mInflater:Landroid/view/LayoutInflater;

    .line 109
    iput-object p1, p0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mContext:Landroid/content/Context;

    .line 110
    new-instance v0, Lcom/android/systemui/recents/misc/SystemServicesProxy;

    invoke-direct {v0, p1}, Lcom/android/systemui/recents/misc/SystemServicesProxy;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mSystemServicesProxy:Lcom/android/systemui/recents/misc/SystemServicesProxy;

    .line 111
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mHandler:Landroid/os/Handler;

    .line 112
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mTaskStackBounds:Landroid/graphics/Rect;

    .line 113
    return-void
.end method

.method public static consumeLastScreenshot()V
    .locals 1

    .prologue
    .line 571
    sget-object v0, Lcom/android/systemui/recents/AlternateRecentsComponent;->sLastScreenshot:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 572
    sget-object v0, Lcom/android/systemui/recents/AlternateRecentsComponent;->sLastScreenshot:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 573
    const/4 v0, 0x0

    sput-object v0, Lcom/android/systemui/recents/AlternateRecentsComponent;->sLastScreenshot:Landroid/graphics/Bitmap;

    .line 575
    :cond_0
    return-void
.end method

.method public static getLastScreenshot()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 566
    sget-object v0, Lcom/android/systemui/recents/AlternateRecentsComponent;->sLastScreenshot:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public static notifyVisibilityChanged(Z)V
    .locals 1
    .param p0, "visible"    # Z

    .prologue
    .line 584
    sget-object v0, Lcom/android/systemui/recents/AlternateRecentsComponent;->sRecentsComponentCallbacks:Lcom/android/systemui/RecentsComponent$Callbacks;

    if-eqz v0, :cond_0

    .line 585
    sget-object v0, Lcom/android/systemui/recents/AlternateRecentsComponent;->sRecentsComponentCallbacks:Lcom/android/systemui/RecentsComponent$Callbacks;

    invoke-interface {v0, p0}, Lcom/android/systemui/RecentsComponent$Callbacks;->onVisibilityChanged(Z)V

    .line 587
    :cond_0
    return-void
.end method


# virtual methods
.method getHomeTransitionActivityOptions(Z)Landroid/app/ActivityOptions;
    .locals 4
    .param p1, "fromSearchHome"    # Z

    .prologue
    .line 380
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mStartAnimationTriggered:Z

    .line 381
    if-eqz p1, :cond_0

    .line 382
    iget-object v0, p0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mContext:Landroid/content/Context;

    const v1, 0x7f050013

    const v2, 0x7f050014

    iget-object v3, p0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mHandler:Landroid/os/Handler;

    invoke-static {v0, v1, v2, v3, p0}, Landroid/app/ActivityOptions;->makeCustomAnimation(Landroid/content/Context;IILandroid/os/Handler;Landroid/app/ActivityOptions$OnAnimationStartedListener;)Landroid/app/ActivityOptions;

    move-result-object v0

    .line 386
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mContext:Landroid/content/Context;

    const v1, 0x7f050011

    const v2, 0x7f050012

    iget-object v3, p0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mHandler:Landroid/os/Handler;

    invoke-static {v0, v1, v2, v3, p0}, Landroid/app/ActivityOptions;->makeCustomAnimation(Landroid/content/Context;IILandroid/os/Handler;Landroid/app/ActivityOptions$OnAnimationStartedListener;)Landroid/app/ActivityOptions;

    move-result-object v0

    goto :goto_0
.end method

.method getThumbnailTransitionActivityOptions(Landroid/app/ActivityManager$RunningTaskInfo;Z)Landroid/app/ActivityOptions;
    .locals 13
    .param p1, "topTask"    # Landroid/app/ActivityManager$RunningTaskInfo;
    .param p2, "isTopTaskHome"    # Z

    .prologue
    .line 412
    new-instance v10, Lcom/android/systemui/recents/model/Task;

    invoke-direct {v10}, Lcom/android/systemui/recents/model/Task;-><init>()V

    .line 413
    .local v10, "toTask":Lcom/android/systemui/recents/model/Task;
    iget v0, p1, Landroid/app/ActivityManager$RunningTaskInfo;->id:I

    invoke-virtual {p0, v0, p2, v10}, Lcom/android/systemui/recents/AlternateRecentsComponent;->getThumbnailTransitionTransform(IZLcom/android/systemui/recents/model/Task;)Lcom/android/systemui/recents/views/TaskViewTransform;

    move-result-object v12

    .line 415
    .local v12, "toTransform":Lcom/android/systemui/recents/views/TaskViewTransform;
    if-eqz v12, :cond_0

    iget-object v0, v10, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    if-eqz v0, :cond_0

    .line 416
    iget-object v11, v12, Lcom/android/systemui/recents/views/TaskViewTransform;->rect:Landroid/graphics/Rect;

    .line 417
    .local v11, "toTaskRect":Landroid/graphics/Rect;
    iget-object v0, p0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mHeaderBar:Lcom/android/systemui/recents/views/TaskViewHeader;

    invoke-virtual {v0}, Lcom/android/systemui/recents/views/TaskViewHeader;->getMeasuredWidth()I

    move-result v0

    int-to-float v0, v0

    iget v2, v12, Lcom/android/systemui/recents/views/TaskViewTransform;->scale:F

    mul-float/2addr v0, v2

    float-to-int v9, v0

    .line 418
    .local v9, "toHeaderWidth":I
    iget-object v0, p0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mHeaderBar:Lcom/android/systemui/recents/views/TaskViewHeader;

    invoke-virtual {v0}, Lcom/android/systemui/recents/views/TaskViewHeader;->getMeasuredHeight()I

    move-result v0

    int-to-float v0, v0

    iget v2, v12, Lcom/android/systemui/recents/views/TaskViewTransform;->scale:F

    mul-float/2addr v0, v2

    float-to-int v8, v0

    .line 419
    .local v8, "toHeaderHeight":I
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v9, v8, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 424
    .local v1, "thumbnail":Landroid/graphics/Bitmap;
    new-instance v7, Landroid/graphics/Canvas;

    invoke-direct {v7, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 425
    .local v7, "c":Landroid/graphics/Canvas;
    iget v0, v12, Lcom/android/systemui/recents/views/TaskViewTransform;->scale:F

    iget v2, v12, Lcom/android/systemui/recents/views/TaskViewTransform;->scale:F

    invoke-virtual {v7, v0, v2}, Landroid/graphics/Canvas;->scale(FF)V

    .line 426
    iget-object v0, p0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mHeaderBar:Lcom/android/systemui/recents/views/TaskViewHeader;

    invoke-virtual {v0, v10}, Lcom/android/systemui/recents/views/TaskViewHeader;->rebindToTask(Lcom/android/systemui/recents/model/Task;)V

    .line 427
    iget-object v0, p0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mHeaderBar:Lcom/android/systemui/recents/views/TaskViewHeader;

    invoke-virtual {v0, v7}, Lcom/android/systemui/recents/views/TaskViewHeader;->draw(Landroid/graphics/Canvas;)V

    .line 428
    const/4 v0, 0x0

    invoke-virtual {v7, v0}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 431
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mStartAnimationTriggered:Z

    .line 432
    iget-object v0, p0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mStatusBarView:Landroid/view/View;

    iget v2, v11, Landroid/graphics/Rect;->left:I

    iget v3, v11, Landroid/graphics/Rect;->top:I

    invoke-virtual {v11}, Landroid/graphics/Rect;->width()I

    move-result v4

    invoke-virtual {v11}, Landroid/graphics/Rect;->height()I

    move-result v5

    move-object v6, p0

    invoke-static/range {v0 .. v6}, Landroid/app/ActivityOptions;->makeThumbnailAspectScaleDownAnimation(Landroid/view/View;Landroid/graphics/Bitmap;IIIILandroid/app/ActivityOptions$OnAnimationStartedListener;)Landroid/app/ActivityOptions;

    move-result-object v0

    .line 438
    .end local v1    # "thumbnail":Landroid/graphics/Bitmap;
    .end local v7    # "c":Landroid/graphics/Canvas;
    .end local v8    # "toHeaderHeight":I
    .end local v9    # "toHeaderWidth":I
    .end local v11    # "toTaskRect":Landroid/graphics/Rect;
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/recents/AlternateRecentsComponent;->getUnknownTransitionActivityOptions()Landroid/app/ActivityOptions;

    move-result-object v0

    goto :goto_0
.end method

.method getThumbnailTransitionTransform(IZLcom/android/systemui/recents/model/Task;)Lcom/android/systemui/recents/views/TaskViewTransform;
    .locals 16
    .param p1, "runningTaskId"    # I
    .param p2, "isTopTaskHome"    # Z
    .param p3, "runningTaskOut"    # Lcom/android/systemui/recents/model/Task;

    .prologue
    .line 445
    invoke-static {}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->getInstance()Lcom/android/systemui/recents/model/RecentsTaskLoader;

    move-result-object v1

    .line 446
    .local v1, "loader":Lcom/android/systemui/recents/model/RecentsTaskLoader;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mSystemServicesProxy:Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const/4 v5, -0x1

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move/from16 v4, p1

    move/from16 v7, p2

    invoke-virtual/range {v1 .. v9}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->getTaskStack(Lcom/android/systemui/recents/misc/SystemServicesProxy;Landroid/content/res/Resources;IIZZLjava/util/List;Ljava/util/List;)Lcom/android/systemui/recents/model/TaskStack;

    move-result-object v11

    .line 448
    .local v11, "stack":Lcom/android/systemui/recents/model/TaskStack;
    invoke-virtual {v11}, Lcom/android/systemui/recents/model/TaskStack;->getTaskCount()I

    move-result v2

    if-nez v2, :cond_0

    .line 449
    const/4 v2, 0x0

    .line 477
    :goto_0
    return-object v2

    .line 453
    :cond_0
    const/4 v13, 0x0

    .line 454
    .local v13, "task":Lcom/android/systemui/recents/model/Task;
    invoke-virtual {v11}, Lcom/android/systemui/recents/model/TaskStack;->getTasks()Ljava/util/ArrayList;

    move-result-object v15

    .line 455
    .local v15, "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/recents/model/Task;>;"
    const/4 v2, -0x1

    move/from16 v0, p1

    if-eq v0, v2, :cond_1

    .line 457
    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v14

    .line 458
    .local v14, "taskCount":I
    add-int/lit8 v10, v14, -0x1

    .local v10, "i":I
    :goto_1
    if-ltz v10, :cond_1

    .line 459
    invoke-virtual {v15, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/systemui/recents/model/Task;

    .line 460
    .local v12, "t":Lcom/android/systemui/recents/model/Task;
    iget-object v2, v12, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    iget v2, v2, Lcom/android/systemui/recents/model/Task$TaskKey;->id:I

    move/from16 v0, p1

    if-ne v2, v0, :cond_3

    .line 461
    move-object v13, v12

    .line 462
    move-object/from16 v0, p3

    invoke-virtual {v0, v12}, Lcom/android/systemui/recents/model/Task;->copyFrom(Lcom/android/systemui/recents/model/Task;)V

    .line 467
    .end local v10    # "i":I
    .end local v12    # "t":Lcom/android/systemui/recents/model/Task;
    .end local v14    # "taskCount":I
    :cond_1
    if-nez v13, :cond_2

    .line 469
    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v15, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    .end local v13    # "task":Lcom/android/systemui/recents/model/Task;
    check-cast v13, Lcom/android/systemui/recents/model/Task;

    .line 473
    .restart local v13    # "task":Lcom/android/systemui/recents/model/Task;
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mDummyStackView:Lcom/android/systemui/recents/views/TaskStackView;

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mTriggeredFromAltTab:Z

    move/from16 v0, p2

    invoke-virtual {v2, v11, v3, v0}, Lcom/android/systemui/recents/views/TaskStackView;->updateMinMaxScrollForStack(Lcom/android/systemui/recents/model/TaskStack;ZZ)V

    .line 474
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mDummyStackView:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual {v2}, Lcom/android/systemui/recents/views/TaskStackView;->getScroller()Lcom/android/systemui/recents/views/TaskStackViewScroller;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/recents/views/TaskStackViewScroller;->setStackScrollToInitialState()V

    .line 475
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mDummyStackView:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual {v2}, Lcom/android/systemui/recents/views/TaskStackView;->getStackAlgorithm()Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mDummyStackView:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual {v3}, Lcom/android/systemui/recents/views/TaskStackView;->getScroller()Lcom/android/systemui/recents/views/TaskStackViewScroller;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/systemui/recents/views/TaskStackViewScroller;->getStackScroll()F

    move-result v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mTmpTransform:Lcom/android/systemui/recents/views/TaskViewTransform;

    const/4 v5, 0x0

    invoke-virtual {v2, v13, v3, v4, v5}, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;->getStackTransform(Lcom/android/systemui/recents/model/Task;FLcom/android/systemui/recents/views/TaskViewTransform;Lcom/android/systemui/recents/views/TaskViewTransform;)Lcom/android/systemui/recents/views/TaskViewTransform;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mTmpTransform:Lcom/android/systemui/recents/views/TaskViewTransform;

    .line 477
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mTmpTransform:Lcom/android/systemui/recents/views/TaskViewTransform;

    goto :goto_0

    .line 458
    .restart local v10    # "i":I
    .restart local v12    # "t":Lcom/android/systemui/recents/model/Task;
    .restart local v14    # "taskCount":I
    :cond_3
    add-int/lit8 v10, v10, -0x1

    goto :goto_1
.end method

.method getTopMostTask()Landroid/app/ActivityManager$RunningTaskInfo;
    .locals 3

    .prologue
    .line 298
    iget-object v0, p0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mSystemServicesProxy:Lcom/android/systemui/recents/misc/SystemServicesProxy;

    .line 299
    .local v0, "ssp":Lcom/android/systemui/recents/misc/SystemServicesProxy;
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getRunningTasks(I)Ljava/util/List;

    move-result-object v1

    .line 300
    .local v1, "tasks":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 301
    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 303
    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method getUnknownTransitionActivityOptions()Landroid/app/ActivityOptions;
    .locals 4

    .prologue
    .line 370
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mStartAnimationTriggered:Z

    .line 371
    iget-object v0, p0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mContext:Landroid/content/Context;

    const v1, 0x7f050015

    const v2, 0x7f050016

    iget-object v3, p0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mHandler:Landroid/os/Handler;

    invoke-static {v0, v1, v2, v3, p0}, Landroid/app/ActivityOptions;->makeCustomAnimation(Landroid/content/Context;IILandroid/os/Handler;Landroid/app/ActivityOptions$OnAnimationStartedListener;)Landroid/app/ActivityOptions;

    move-result-object v0

    return-object v0
.end method

.method isRecentsTopMost(Landroid/app/ActivityManager$RunningTaskInfo;Ljava/util/concurrent/atomic/AtomicBoolean;)Z
    .locals 5
    .param p1, "topTask"    # Landroid/app/ActivityManager$RunningTaskInfo;
    .param p2, "isHomeTopMost"    # Ljava/util/concurrent/atomic/AtomicBoolean;

    .prologue
    const/4 v2, 0x0

    .line 308
    iget-object v0, p0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mSystemServicesProxy:Lcom/android/systemui/recents/misc/SystemServicesProxy;

    .line 309
    .local v0, "ssp":Lcom/android/systemui/recents/misc/SystemServicesProxy;
    if-eqz p1, :cond_1

    .line 310
    iget-object v1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    .line 313
    .local v1, "topActivity":Landroid/content/ComponentName;
    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "com.android.systemui"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "com.android.systemui.recents.RecentsActivity"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 315
    if-eqz p2, :cond_0

    .line 316
    invoke-virtual {p2, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 318
    :cond_0
    const/4 v2, 0x1

    .line 325
    .end local v1    # "topActivity":Landroid/content/ComponentName;
    :cond_1
    :goto_0
    return v2

    .line 321
    .restart local v1    # "topActivity":Landroid/content/ComponentName;
    :cond_2
    if-eqz p2, :cond_1

    .line 322
    iget v3, p1, Landroid/app/ActivityManager$RunningTaskInfo;->id:I

    invoke-virtual {v0, v3}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->isInHomeStack(I)Z

    move-result v3

    invoke-virtual {p2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto :goto_0
.end method

.method public onAnimationStarted()V
    .locals 9

    .prologue
    const/4 v3, 0x0

    .line 594
    iget-boolean v0, p0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mStartAnimationTriggered:Z

    if-nez v0, :cond_0

    .line 599
    new-instance v4, Lcom/android/systemui/recents/AlternateRecentsComponent$1;

    invoke-direct {v4, p0}, Lcom/android/systemui/recents/AlternateRecentsComponent$1;-><init>(Lcom/android/systemui/recents/AlternateRecentsComponent;)V

    .line 618
    .local v4, "fallbackReceiver":Landroid/content/BroadcastReceiver;
    new-instance v1, Landroid/content/Intent;

    const-string v0, "action_start_enter_animation"

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 619
    .local v1, "intent":Landroid/content/Intent;
    iget-object v0, p0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 620
    const/high16 v0, 0x14000000

    invoke-virtual {v1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 622
    iget-object v0, p0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    const/4 v6, 0x0

    move-object v5, v3

    move-object v7, v3

    move-object v8, v3

    invoke-virtual/range {v0 .. v8}, Landroid/content/Context;->sendOrderedBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    .line 625
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v4    # "fallbackReceiver":Landroid/content/BroadcastReceiver;
    :cond_0
    return-void
.end method

.method public onBootCompleted()V
    .locals 1

    .prologue
    .line 138
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mBootCompleted:Z

    .line 139
    return-void
.end method

.method public onCancelPreloadingRecents()V
    .locals 0

    .prologue
    .line 187
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 258
    invoke-virtual {p0}, Lcom/android/systemui/recents/AlternateRecentsComponent;->reloadHeaderBarLayout()V

    .line 259
    const/4 v0, 0x0

    sput-object v0, Lcom/android/systemui/recents/AlternateRecentsComponent;->sLastScreenshot:Landroid/graphics/Bitmap;

    .line 260
    return-void
.end method

.method public onHideRecents(ZZ)V
    .locals 3
    .param p1, "triggeredFromAltTab"    # Z
    .param p2, "triggeredFromHomeKey"    # Z

    .prologue
    .line 155
    iget-boolean v1, p0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mBootCompleted:Z

    if-eqz v1, :cond_0

    .line 156
    invoke-virtual {p0}, Lcom/android/systemui/recents/AlternateRecentsComponent;->getTopMostTask()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/android/systemui/recents/AlternateRecentsComponent;->isRecentsTopMost(Landroid/app/ActivityManager$RunningTaskInfo;Ljava/util/concurrent/atomic/AtomicBoolean;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 158
    new-instance v0, Landroid/content/Intent;

    const-string v1, "action_hide_recents_activity"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 159
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 160
    const/high16 v1, 0x14000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 162
    const-string v1, "recents.triggeredFromAltTab"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 163
    const-string v1, "recents.triggeredFromHomeKey"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 164
    iget-object v1, p0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 167
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method public onPreloadRecents()V
    .locals 0

    .prologue
    .line 183
    return-void
.end method

.method public onShowNextAffiliatedTask()V
    .locals 1

    .prologue
    .line 249
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/recents/AlternateRecentsComponent;->showRelativeAffiliatedTask(Z)V

    .line 250
    return-void
.end method

.method public onShowPrevAffiliatedTask()V
    .locals 1

    .prologue
    .line 253
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/recents/AlternateRecentsComponent;->showRelativeAffiliatedTask(Z)V

    .line 254
    return-void
.end method

.method public onShowRecents(ZLandroid/view/View;)V
    .locals 2
    .param p1, "triggeredFromAltTab"    # Z
    .param p2, "statusBarView"    # Landroid/view/View;

    .prologue
    .line 143
    iput-object p2, p0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mStatusBarView:Landroid/view/View;

    .line 144
    iput-boolean p1, p0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mTriggeredFromAltTab:Z

    .line 147
    :try_start_0
    invoke-virtual {p0}, Lcom/android/systemui/recents/AlternateRecentsComponent;->startRecentsActivity()V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 151
    :goto_0
    return-void

    .line 148
    :catch_0
    move-exception v0

    .line 149
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    const-string v1, "Failed to launch RecentAppsIntent"

    invoke-static {v1, v0}, Lcom/android/systemui/recents/misc/Console;->logRawError(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public onStart()V
    .locals 5

    .prologue
    .line 117
    invoke-static {}, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;->initializeCurve()V

    .line 119
    invoke-virtual {p0}, Lcom/android/systemui/recents/AlternateRecentsComponent;->reloadHeaderBarLayout()V

    .line 124
    iget-object v2, p0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget v2, v2, Lcom/android/systemui/recents/RecentsConfiguration;->searchBarAppWidgetId:I

    if-gez v2, :cond_0

    .line 125
    new-instance v0, Lcom/android/systemui/recents/RecentsAppWidgetHost;

    iget-object v2, p0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mContext:Landroid/content/Context;

    sget v3, Lcom/android/systemui/recents/Constants$Values$App;->AppWidgetHostId:I

    invoke-direct {v0, v2, v3}, Lcom/android/systemui/recents/RecentsAppWidgetHost;-><init>(Landroid/content/Context;I)V

    .line 127
    .local v0, "host":Landroid/appwidget/AppWidgetHost;
    iget-object v2, p0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mSystemServicesProxy:Lcom/android/systemui/recents/misc/SystemServicesProxy;

    invoke-virtual {v2, v0}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->bindSearchAppWidget(Landroid/appwidget/AppWidgetHost;)Landroid/util/Pair;

    move-result-object v1

    .line 129
    .local v1, "widgetInfo":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Landroid/appwidget/AppWidgetProviderInfo;>;"
    if-eqz v1, :cond_0

    .line 131
    iget-object v3, p0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget-object v4, p0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mContext:Landroid/content/Context;

    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v3, v4, v2}, Lcom/android/systemui/recents/RecentsConfiguration;->updateSearchBarAppWidgetId(Landroid/content/Context;I)V

    .line 135
    .end local v0    # "host":Landroid/appwidget/AppWidgetHost;
    .end local v1    # "widgetInfo":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Landroid/appwidget/AppWidgetProviderInfo;>;"
    :cond_0
    return-void
.end method

.method public onToggleRecents(Landroid/view/View;)V
    .locals 2
    .param p1, "statusBarView"    # Landroid/view/View;

    .prologue
    .line 171
    iput-object p1, p0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mStatusBarView:Landroid/view/View;

    .line 172
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mTriggeredFromAltTab:Z

    .line 175
    :try_start_0
    invoke-virtual {p0}, Lcom/android/systemui/recents/AlternateRecentsComponent;->toggleRecentsActivity()V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 179
    :goto_0
    return-void

    .line 176
    :catch_0
    move-exception v0

    .line 177
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    const-string v1, "Failed to launch RecentAppsIntent"

    invoke-static {v1, v0}, Lcom/android/systemui/recents/misc/Console;->logRawError(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method reloadHeaderBarLayout()V
    .locals 14

    .prologue
    const/high16 v13, 0x40000000

    const/4 v12, 0x0

    .line 264
    iget-object v0, p0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    .line 265
    .local v7, "res":Landroid/content/res/Resources;
    iget-object v0, p0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mSystemServicesProxy:Lcom/android/systemui/recents/misc/SystemServicesProxy;

    invoke-virtual {v0}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getWindowRect()Landroid/graphics/Rect;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mWindowRect:Landroid/graphics/Rect;

    .line 266
    const v0, 0x1050010

    invoke-virtual {v7, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mStatusBarHeight:I

    .line 267
    const v0, 0x1050011

    invoke-virtual {v7, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mNavBarHeight:I

    .line 268
    const v0, 0x1050013

    invoke-virtual {v7, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mNavBarWidth:I

    .line 269
    iget-object v0, p0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mSystemServicesProxy:Lcom/android/systemui/recents/misc/SystemServicesProxy;

    invoke-static {v0, v1}, Lcom/android/systemui/recents/RecentsConfiguration;->reinitialize(Landroid/content/Context;Lcom/android/systemui/recents/misc/SystemServicesProxy;)Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    .line 270
    iget-object v0, p0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    invoke-virtual {v0}, Lcom/android/systemui/recents/RecentsConfiguration;->updateOnConfigurationChange()V

    .line 271
    iget-object v0, p0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget-object v1, p0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mWindowRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    iget-object v2, p0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mWindowRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    iget v3, p0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mStatusBarHeight:I

    iget-object v4, p0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget-boolean v4, v4, Lcom/android/systemui/recents/RecentsConfiguration;->hasTransposedNavBar:Z

    if-eqz v4, :cond_0

    iget v4, p0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mNavBarWidth:I

    :goto_0
    iget-object v5, p0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mTaskStackBounds:Landroid/graphics/Rect;

    invoke-virtual/range {v0 .. v5}, Lcom/android/systemui/recents/RecentsConfiguration;->getTaskStackBounds(IIIILandroid/graphics/Rect;)V

    .line 273
    iget-object v0, p0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget-boolean v0, v0, Lcom/android/systemui/recents/RecentsConfiguration;->isLandscape:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget-boolean v0, v0, Lcom/android/systemui/recents/RecentsConfiguration;->hasTransposedNavBar:Z

    if-eqz v0, :cond_1

    .line 274
    iget-object v0, p0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mSystemInsets:Landroid/graphics/Rect;

    iget v1, p0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mStatusBarHeight:I

    iget v2, p0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mNavBarWidth:I

    invoke-virtual {v0, v12, v1, v2, v12}, Landroid/graphics/Rect;->set(IIII)V

    .line 280
    :goto_1
    new-instance v8, Lcom/android/systemui/recents/model/TaskStack;

    invoke-direct {v8}, Lcom/android/systemui/recents/model/TaskStack;-><init>()V

    .line 281
    .local v8, "stack":Lcom/android/systemui/recents/model/TaskStack;
    new-instance v0, Lcom/android/systemui/recents/views/TaskStackView;

    iget-object v1, p0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, v8}, Lcom/android/systemui/recents/views/TaskStackView;-><init>(Landroid/content/Context;Lcom/android/systemui/recents/model/TaskStack;)V

    iput-object v0, p0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mDummyStackView:Lcom/android/systemui/recents/views/TaskStackView;

    .line 282
    iget-object v0, p0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mDummyStackView:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual {v0}, Lcom/android/systemui/recents/views/TaskStackView;->getStackAlgorithm()Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;

    move-result-object v6

    .line 283
    .local v6, "algo":Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;
    new-instance v10, Landroid/graphics/Rect;

    iget-object v0, p0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mTaskStackBounds:Landroid/graphics/Rect;

    invoke-direct {v10, v0}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 284
    .local v10, "taskStackBounds":Landroid/graphics/Rect;
    iget v0, v10, Landroid/graphics/Rect;->bottom:I

    iget-object v1, p0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mSystemInsets:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v0, v1

    iput v0, v10, Landroid/graphics/Rect;->bottom:I

    .line 285
    iget-object v0, p0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mWindowRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mWindowRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    invoke-virtual {v6, v0, v1, v10}, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;->computeRects(IILandroid/graphics/Rect;)V

    .line 286
    invoke-virtual {v6}, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;->getUntransformedTaskViewSize()Landroid/graphics/Rect;

    move-result-object v11

    .line 287
    .local v11, "taskViewSize":Landroid/graphics/Rect;
    const v0, 0x7f0c005f

    invoke-virtual {v7, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    .line 288
    .local v9, "taskBarHeight":I
    iget-object v0, p0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f040034

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v12}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/recents/views/TaskViewHeader;

    iput-object v0, p0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mHeaderBar:Lcom/android/systemui/recents/views/TaskViewHeader;

    .line 290
    iget-object v0, p0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mHeaderBar:Lcom/android/systemui/recents/views/TaskViewHeader;

    invoke-virtual {v11}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-static {v1, v13}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-static {v9, v13}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/recents/views/TaskViewHeader;->measure(II)V

    .line 293
    iget-object v0, p0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mHeaderBar:Lcom/android/systemui/recents/views/TaskViewHeader;

    invoke-virtual {v11}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {v0, v12, v12, v1, v9}, Lcom/android/systemui/recents/views/TaskViewHeader;->layout(IIII)V

    .line 294
    return-void

    .end local v6    # "algo":Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;
    .end local v8    # "stack":Lcom/android/systemui/recents/model/TaskStack;
    .end local v9    # "taskBarHeight":I
    .end local v10    # "taskStackBounds":Landroid/graphics/Rect;
    .end local v11    # "taskViewSize":Landroid/graphics/Rect;
    :cond_0
    move v4, v12

    .line 271
    goto/16 :goto_0

    .line 276
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mSystemInsets:Landroid/graphics/Rect;

    iget v1, p0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mStatusBarHeight:I

    iget v2, p0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mNavBarHeight:I

    invoke-virtual {v0, v12, v1, v12, v2}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_1
.end method

.method public setRecentsComponentCallback(Lcom/android/systemui/RecentsComponent$Callbacks;)V
    .locals 0
    .param p1, "cb"    # Lcom/android/systemui/RecentsComponent$Callbacks;

    .prologue
    .line 579
    sput-object p1, Lcom/android/systemui/recents/AlternateRecentsComponent;->sRecentsComponentCallbacks:Lcom/android/systemui/RecentsComponent$Callbacks;

    .line 580
    return-void
.end method

.method showRelativeAffiliatedTask(Z)V
    .locals 20
    .param p1, "showNextTask"    # Z

    .prologue
    .line 190
    invoke-static {}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->getInstance()Lcom/android/systemui/recents/model/RecentsTaskLoader;

    move-result-object v1

    .line 191
    .local v1, "loader":Lcom/android/systemui/recents/model/RecentsTaskLoader;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mSystemServicesProxy:Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const/4 v4, -0x1

    const/4 v5, -0x1

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v1 .. v9}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->getTaskStack(Lcom/android/systemui/recents/misc/SystemServicesProxy;Landroid/content/res/Resources;IIZZLjava/util/List;Ljava/util/List;)Lcom/android/systemui/recents/model/TaskStack;

    move-result-object v14

    .line 194
    .local v14, "stack":Lcom/android/systemui/recents/model/TaskStack;
    invoke-virtual {v14}, Lcom/android/systemui/recents/model/TaskStack;->getTaskCount()I

    move-result v2

    if-nez v2, :cond_1

    .line 246
    :cond_0
    :goto_0
    return-void

    .line 196
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/recents/AlternateRecentsComponent;->getTopMostTask()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v13

    .line 198
    .local v13, "runningTask":Landroid/app/ActivityManager$RunningTaskInfo;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mSystemServicesProxy:Lcom/android/systemui/recents/misc/SystemServicesProxy;

    iget v3, v13, Landroid/app/ActivityManager$RunningTaskInfo;->id:I

    invoke-virtual {v2, v3}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->isInHomeStack(I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 201
    invoke-virtual {v14}, Lcom/android/systemui/recents/model/TaskStack;->getTasks()Ljava/util/ArrayList;

    move-result-object v17

    .line 202
    .local v17, "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/recents/model/Task;>;"
    const/16 v18, 0x0

    .line 203
    .local v18, "toTask":Lcom/android/systemui/recents/model/Task;
    const/4 v12, 0x0

    .line 204
    .local v12, "launchOpts":Landroid/app/ActivityOptions;
    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v16

    .line 205
    .local v16, "taskCount":I
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_1
    move/from16 v0, v16

    if-ge v11, v0, :cond_2

    .line 206
    move-object/from16 v0, v17

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/systemui/recents/model/Task;

    .line 207
    .local v15, "task":Lcom/android/systemui/recents/model/Task;
    iget-object v2, v15, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    iget v2, v2, Lcom/android/systemui/recents/model/Task$TaskKey;->id:I

    iget v3, v13, Landroid/app/ActivityManager$RunningTaskInfo;->id:I

    if-ne v2, v3, :cond_4

    .line 208
    iget-object v10, v15, Lcom/android/systemui/recents/model/Task;->group:Lcom/android/systemui/recents/model/TaskGrouping;

    .line 210
    .local v10, "group":Lcom/android/systemui/recents/model/TaskGrouping;
    if-eqz p1, :cond_3

    .line 211
    invoke-virtual {v10, v15}, Lcom/android/systemui/recents/model/TaskGrouping;->getNextTaskInGroup(Lcom/android/systemui/recents/model/Task;)Lcom/android/systemui/recents/model/Task$TaskKey;

    move-result-object v19

    .line 212
    .local v19, "toTaskKey":Lcom/android/systemui/recents/model/Task$TaskKey;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mContext:Landroid/content/Context;

    const v3, 0x7f05001b

    const v4, 0x7f05001a

    invoke-static {v2, v3, v4}, Landroid/app/ActivityOptions;->makeCustomAnimation(Landroid/content/Context;II)Landroid/app/ActivityOptions;

    move-result-object v12

    .line 221
    :goto_2
    if-eqz v19, :cond_2

    .line 222
    move-object/from16 v0, v19

    iget v2, v0, Lcom/android/systemui/recents/model/Task$TaskKey;->id:I

    invoke-virtual {v14, v2}, Lcom/android/systemui/recents/model/TaskStack;->findTaskWithId(I)Lcom/android/systemui/recents/model/Task;

    move-result-object v18

    .line 229
    .end local v10    # "group":Lcom/android/systemui/recents/model/TaskGrouping;
    .end local v15    # "task":Lcom/android/systemui/recents/model/Task;
    .end local v19    # "toTaskKey":Lcom/android/systemui/recents/model/Task$TaskKey;
    :cond_2
    if-nez v18, :cond_5

    .line 230
    if-eqz p1, :cond_0

    goto :goto_0

    .line 216
    .restart local v10    # "group":Lcom/android/systemui/recents/model/TaskGrouping;
    .restart local v15    # "task":Lcom/android/systemui/recents/model/Task;
    :cond_3
    invoke-virtual {v10, v15}, Lcom/android/systemui/recents/model/TaskGrouping;->getPrevTaskInGroup(Lcom/android/systemui/recents/model/Task;)Lcom/android/systemui/recents/model/Task$TaskKey;

    move-result-object v19

    .line 217
    .restart local v19    # "toTaskKey":Lcom/android/systemui/recents/model/Task$TaskKey;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mContext:Landroid/content/Context;

    const v3, 0x7f05001e

    const v4, 0x7f05001d

    invoke-static {v2, v3, v4}, Landroid/app/ActivityOptions;->makeCustomAnimation(Landroid/content/Context;II)Landroid/app/ActivityOptions;

    move-result-object v12

    goto :goto_2

    .line 205
    .end local v10    # "group":Lcom/android/systemui/recents/model/TaskGrouping;
    .end local v19    # "toTaskKey":Lcom/android/systemui/recents/model/Task$TaskKey;
    :cond_4
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 239
    .end local v15    # "task":Lcom/android/systemui/recents/model/Task;
    :cond_5
    move-object/from16 v0, v18

    iget-boolean v2, v0, Lcom/android/systemui/recents/model/Task;->isActive:Z

    if-eqz v2, :cond_6

    .line 241
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mSystemServicesProxy:Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-object/from16 v0, v18

    iget-object v3, v0, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    iget v3, v3, Lcom/android/systemui/recents/model/Task$TaskKey;->id:I

    invoke-virtual {v2, v3, v12}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->moveTaskToFront(ILandroid/app/ActivityOptions;)V

    goto :goto_0

    .line 243
    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mSystemServicesProxy:Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mContext:Landroid/content/Context;

    move-object/from16 v0, v18

    iget-object v4, v0, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    iget v4, v4, Lcom/android/systemui/recents/model/Task$TaskKey;->id:I

    move-object/from16 v0, v18

    iget-object v5, v0, Lcom/android/systemui/recents/model/Task;->activityLabel:Ljava/lang/String;

    invoke-virtual {v2, v3, v4, v5, v12}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->startActivityFromRecents(Landroid/content/Context;ILjava/lang/String;Landroid/app/ActivityOptions;)Z

    goto/16 :goto_0
.end method

.method startAlternateRecentsActivity(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/app/ActivityOptions;Ljava/lang/String;)V
    .locals 4
    .param p1, "topTask"    # Landroid/app/ActivityManager$RunningTaskInfo;
    .param p2, "opts"    # Landroid/app/ActivityOptions;
    .param p3, "extraFlag"    # Ljava/lang/String;

    .prologue
    .line 547
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.systemui.recents.SHOW_RECENTS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 548
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.android.systemui"

    const-string v2, "com.android.systemui.recents.RecentsActivity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 549
    const v1, 0x10804000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 552
    if-eqz p3, :cond_0

    .line 553
    const/4 v1, 0x1

    invoke-virtual {v0, p3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 555
    :cond_0
    const-string v1, "recents.triggeredFromAltTab"

    iget-boolean v2, p0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mTriggeredFromAltTab:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 556
    const-string v2, "recents.activeTaskId"

    if-eqz p1, :cond_1

    iget v1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->id:I

    :goto_0
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 557
    if-eqz p2, :cond_2

    .line 558
    iget-object v1, p0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v2

    sget-object v3, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/Bundle;Landroid/os/UserHandle;)V

    .line 562
    :goto_1
    return-void

    .line 556
    :cond_1
    const/4 v1, -0x1

    goto :goto_0

    .line 560
    :cond_2
    iget-object v1, p0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto :goto_1
.end method

.method startRecentsActivity()V
    .locals 3

    .prologue
    .line 359
    invoke-virtual {p0}, Lcom/android/systemui/recents/AlternateRecentsComponent;->getTopMostTask()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v1

    .line 360
    .local v1, "topTask":Landroid/app/ActivityManager$RunningTaskInfo;
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    .line 361
    .local v0, "isTopTaskHome":Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/recents/AlternateRecentsComponent;->isRecentsTopMost(Landroid/app/ActivityManager$RunningTaskInfo;Ljava/util/concurrent/atomic/AtomicBoolean;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 362
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    invoke-virtual {p0, v1, v2}, Lcom/android/systemui/recents/AlternateRecentsComponent;->startRecentsActivity(Landroid/app/ActivityManager$RunningTaskInfo;Z)V

    .line 364
    :cond_0
    return-void
.end method

.method startRecentsActivity(Landroid/app/ActivityManager$RunningTaskInfo;Z)V
    .locals 13
    .param p1, "topTask"    # Landroid/app/ActivityManager$RunningTaskInfo;
    .param p2, "isTopTaskHome"    # Z

    .prologue
    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 486
    iget-object v7, p0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mSystemServicesProxy:Lcom/android/systemui/recents/misc/SystemServicesProxy;

    .line 487
    .local v7, "ssp":Lcom/android/systemui/recents/misc/SystemServicesProxy;
    const/4 v11, 0x3

    sget-object v12, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v12}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v12

    invoke-virtual {v7, v11, v12, p2}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getRecentTasks(IIZ)Ljava/util/List;

    move-result-object v4

    .line 489
    .local v4, "recentTasks":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RecentTaskInfo;>;"
    if-nez p2, :cond_4

    move v8, v9

    .line 490
    .local v8, "useThumbnailTransition":Z
    :goto_0
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_5

    move v1, v9

    .line 492
    .local v1, "hasRecentTasks":Z
    :goto_1
    if-eqz v8, :cond_0

    .line 494
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/recents/AlternateRecentsComponent;->getThumbnailTransitionActivityOptions(Landroid/app/ActivityManager$RunningTaskInfo;Z)Landroid/app/ActivityOptions;

    move-result-object v3

    .line 495
    .local v3, "opts":Landroid/app/ActivityOptions;
    if-eqz v3, :cond_7

    .line 496
    sget-object v9, Lcom/android/systemui/recents/AlternateRecentsComponent;->sLastScreenshot:Landroid/graphics/Bitmap;

    if-eqz v9, :cond_6

    .line 497
    const-string v9, "recents.thumbnail"

    invoke-virtual {p0, p1, v3, v9}, Lcom/android/systemui/recents/AlternateRecentsComponent;->startAlternateRecentsActivity(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/app/ActivityOptions;Ljava/lang/String;)V

    .line 507
    .end local v3    # "opts":Landroid/app/ActivityOptions;
    :cond_0
    :goto_2
    if-nez v8, :cond_3

    .line 510
    if-eqz v1, :cond_a

    .line 512
    iget-object v9, p0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mSystemServicesProxy:Lcom/android/systemui/recents/misc/SystemServicesProxy;

    invoke-virtual {v9}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getHomeActivityPackageName()Ljava/lang/String;

    move-result-object v2

    .line 514
    .local v2, "homeActivityPackage":Ljava/lang/String;
    const/4 v5, 0x0

    .line 515
    .local v5, "searchWidget":Landroid/appwidget/AppWidgetProviderInfo;
    const/4 v6, 0x0

    .line 516
    .local v6, "searchWidgetPackage":Ljava/lang/String;
    iget-object v9, p0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    invoke-virtual {v9}, Lcom/android/systemui/recents/RecentsConfiguration;->hasSearchBarAppWidget()Z

    move-result v9

    if-eqz v9, :cond_8

    .line 517
    iget-object v9, p0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mSystemServicesProxy:Lcom/android/systemui/recents/misc/SystemServicesProxy;

    iget-object v10, p0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget v10, v10, Lcom/android/systemui/recents/RecentsConfiguration;->searchBarAppWidgetId:I

    invoke-virtual {v9, v10}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getAppWidgetInfo(I)Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v5

    .line 522
    :goto_3
    if-eqz v5, :cond_1

    iget-object v9, v5, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    if-eqz v9, :cond_1

    .line 523
    iget-object v9, v5, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v9}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    .line 526
    :cond_1
    const/4 v0, 0x0

    .line 527
    .local v0, "fromSearchHome":Z
    if-eqz v2, :cond_2

    if-eqz v6, :cond_2

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 529
    const/4 v0, 0x1

    .line 532
    :cond_2
    invoke-virtual {p0, v0}, Lcom/android/systemui/recents/AlternateRecentsComponent;->getHomeTransitionActivityOptions(Z)Landroid/app/ActivityOptions;

    move-result-object v3

    .line 533
    .restart local v3    # "opts":Landroid/app/ActivityOptions;
    if-eqz v0, :cond_9

    const-string v9, "recents.triggeredOverSearchHome"

    :goto_4
    invoke-virtual {p0, p1, v3, v9}, Lcom/android/systemui/recents/AlternateRecentsComponent;->startAlternateRecentsActivity(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/app/ActivityOptions;Ljava/lang/String;)V

    .line 541
    .end local v0    # "fromSearchHome":Z
    .end local v2    # "homeActivityPackage":Ljava/lang/String;
    .end local v3    # "opts":Landroid/app/ActivityOptions;
    .end local v5    # "searchWidget":Landroid/appwidget/AppWidgetProviderInfo;
    .end local v6    # "searchWidgetPackage":Ljava/lang/String;
    :cond_3
    :goto_5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    iput-wide v10, p0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mLastToggleTime:J

    .line 542
    return-void

    .end local v1    # "hasRecentTasks":Z
    .end local v8    # "useThumbnailTransition":Z
    :cond_4
    move v8, v10

    .line 489
    goto :goto_0

    .restart local v8    # "useThumbnailTransition":Z
    :cond_5
    move v1, v10

    .line 490
    goto :goto_1

    .line 499
    .restart local v1    # "hasRecentTasks":Z
    .restart local v3    # "opts":Landroid/app/ActivityOptions;
    :cond_6
    const-string v9, "recents.animatingWithThumbnail"

    invoke-virtual {p0, p1, v3, v9}, Lcom/android/systemui/recents/AlternateRecentsComponent;->startAlternateRecentsActivity(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/app/ActivityOptions;Ljava/lang/String;)V

    goto :goto_2

    .line 503
    :cond_7
    const/4 v8, 0x0

    goto :goto_2

    .line 520
    .end local v3    # "opts":Landroid/app/ActivityOptions;
    .restart local v2    # "homeActivityPackage":Ljava/lang/String;
    .restart local v5    # "searchWidget":Landroid/appwidget/AppWidgetProviderInfo;
    .restart local v6    # "searchWidgetPackage":Ljava/lang/String;
    :cond_8
    iget-object v9, p0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mSystemServicesProxy:Lcom/android/systemui/recents/misc/SystemServicesProxy;

    invoke-virtual {v9}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->resolveSearchAppWidget()Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v5

    goto :goto_3

    .line 533
    .restart local v0    # "fromSearchHome":Z
    .restart local v3    # "opts":Landroid/app/ActivityOptions;
    :cond_9
    const-string v9, "recents.triggeredOverHome"

    goto :goto_4

    .line 537
    .end local v0    # "fromSearchHome":Z
    .end local v2    # "homeActivityPackage":Ljava/lang/String;
    .end local v3    # "opts":Landroid/app/ActivityOptions;
    .end local v5    # "searchWidget":Landroid/appwidget/AppWidgetProviderInfo;
    .end local v6    # "searchWidgetPackage":Ljava/lang/String;
    :cond_a
    invoke-virtual {p0}, Lcom/android/systemui/recents/AlternateRecentsComponent;->getUnknownTransitionActivityOptions()Landroid/app/ActivityOptions;

    move-result-object v3

    .line 538
    .restart local v3    # "opts":Landroid/app/ActivityOptions;
    const/4 v9, 0x0

    invoke-virtual {p0, p1, v3, v9}, Lcom/android/systemui/recents/AlternateRecentsComponent;->startAlternateRecentsActivity(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/app/ActivityOptions;Ljava/lang/String;)V

    goto :goto_5
.end method

.method toggleRecentsActivity()V
    .locals 8

    .prologue
    .line 333
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mLastToggleTime:J

    sub-long/2addr v4, v6

    const-wide/16 v6, 0x15e

    cmp-long v3, v4, v6

    if-gez v3, :cond_0

    .line 354
    :goto_0
    return-void

    .line 339
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/recents/AlternateRecentsComponent;->getTopMostTask()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v2

    .line 340
    .local v2, "topTask":Landroid/app/ActivityManager$RunningTaskInfo;
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    .line 341
    .local v1, "isTopTaskHome":Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-virtual {p0, v2, v1}, Lcom/android/systemui/recents/AlternateRecentsComponent;->isRecentsTopMost(Landroid/app/ActivityManager$RunningTaskInfo;Ljava/util/concurrent/atomic/AtomicBoolean;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 343
    new-instance v0, Landroid/content/Intent;

    const-string v3, "action_toggle_recents_activity"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 344
    .local v0, "intent":Landroid/content/Intent;
    iget-object v3, p0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 345
    const/high16 v3, 0x14000000

    invoke-virtual {v0, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 347
    iget-object v3, p0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mContext:Landroid/content/Context;

    sget-object v4, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v3, v0, v4}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 348
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mLastToggleTime:J

    goto :goto_0

    .line 352
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_1
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v3

    invoke-virtual {p0, v2, v3}, Lcom/android/systemui/recents/AlternateRecentsComponent;->startRecentsActivity(Landroid/app/ActivityManager$RunningTaskInfo;Z)V

    goto :goto_0
.end method
