.class public Lcom/android/systemui/recents/views/TaskViewFooter;
.super Landroid/widget/FrameLayout;
.source "TaskViewFooter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/recents/views/TaskViewFooter$TaskFooterViewCallbacks;
    }
.end annotation


# instance fields
.field mCb:Lcom/android/systemui/recents/views/TaskViewFooter$TaskFooterViewCallbacks;

.field mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

.field mFooterAnimator:Landroid/animation/ObjectAnimator;

.field mFooterHeight:I

.field mMaxFooterHeight:I


# virtual methods
.method animateFooterVisibility(ZI)V
    .locals 4
    .param p1, "visible"    # Z
    .param p2, "duration"    # I

    .prologue
    const/4 v1, 0x0

    .line 81
    iget v2, p0, Lcom/android/systemui/recents/views/TaskViewFooter;->mMaxFooterHeight:I

    if-gtz v2, :cond_0

    .line 97
    :goto_0
    return-void

    .line 84
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskViewFooter;->mFooterAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v2, :cond_1

    .line 85
    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskViewFooter;->mFooterAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v2}, Landroid/animation/ObjectAnimator;->removeAllListeners()V

    .line 86
    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskViewFooter;->mFooterAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v2}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 88
    :cond_1
    if-eqz p1, :cond_2

    iget v0, p0, Lcom/android/systemui/recents/views/TaskViewFooter;->mMaxFooterHeight:I

    .line 89
    .local v0, "finalHeight":I
    :goto_1
    if-lez p2, :cond_3

    .line 90
    const-string v2, "footerHeight"

    const/4 v3, 0x1

    new-array v3, v3, [I

    aput v0, v3, v1

    invoke-static {p0, v2, v3}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/recents/views/TaskViewFooter;->mFooterAnimator:Landroid/animation/ObjectAnimator;

    .line 91
    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskViewFooter;->mFooterAnimator:Landroid/animation/ObjectAnimator;

    int-to-long v2, p2

    invoke-virtual {v1, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 92
    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskViewFooter;->mFooterAnimator:Landroid/animation/ObjectAnimator;

    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskViewFooter;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget-object v2, v2, Lcom/android/systemui/recents/RecentsConfiguration;->fastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v1, v2}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 93
    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskViewFooter;->mFooterAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->start()V

    goto :goto_0

    .end local v0    # "finalHeight":I
    :cond_2
    move v0, v1

    .line 88
    goto :goto_1

    .line 95
    .restart local v0    # "finalHeight":I
    :cond_3
    invoke-virtual {p0, v0}, Lcom/android/systemui/recents/views/TaskViewFooter;->setFooterHeight(I)V

    goto :goto_0
.end method

.method setCallbacks(Lcom/android/systemui/recents/views/TaskViewFooter$TaskFooterViewCallbacks;)V
    .locals 3
    .param p1, "cb"    # Lcom/android/systemui/recents/views/TaskViewFooter$TaskFooterViewCallbacks;

    .prologue
    .line 61
    iput-object p1, p0, Lcom/android/systemui/recents/views/TaskViewFooter;->mCb:Lcom/android/systemui/recents/views/TaskViewFooter$TaskFooterViewCallbacks;

    .line 62
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskViewFooter;->mCb:Lcom/android/systemui/recents/views/TaskViewFooter$TaskFooterViewCallbacks;

    iget v1, p0, Lcom/android/systemui/recents/views/TaskViewFooter;->mFooterHeight:I

    iget v2, p0, Lcom/android/systemui/recents/views/TaskViewFooter;->mMaxFooterHeight:I

    invoke-interface {v0, v1, v2}, Lcom/android/systemui/recents/views/TaskViewFooter$TaskFooterViewCallbacks;->onTaskFooterHeightChanged(II)V

    .line 63
    return-void
.end method

.method public setFooterHeight(I)V
    .locals 2
    .param p1, "footerHeight"    # I

    .prologue
    .line 67
    iget v0, p0, Lcom/android/systemui/recents/views/TaskViewFooter;->mFooterHeight:I

    if-eq p1, v0, :cond_0

    .line 68
    iput p1, p0, Lcom/android/systemui/recents/views/TaskViewFooter;->mFooterHeight:I

    .line 69
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskViewFooter;->mCb:Lcom/android/systemui/recents/views/TaskViewFooter$TaskFooterViewCallbacks;

    iget v1, p0, Lcom/android/systemui/recents/views/TaskViewFooter;->mMaxFooterHeight:I

    invoke-interface {v0, p1, v1}, Lcom/android/systemui/recents/views/TaskViewFooter$TaskFooterViewCallbacks;->onTaskFooterHeightChanged(II)V

    .line 71
    :cond_0
    return-void
.end method
