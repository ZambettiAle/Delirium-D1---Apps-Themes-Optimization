.class Lcom/android/systemui/statusbar/phone/PhoneStatusBar$MyTicker;
.super Lcom/android/systemui/statusbar/phone/Ticker;
.source "PhoneStatusBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/PhoneStatusBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyTicker"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;Landroid/content/Context;Landroid/view/View;)V
    .locals 3
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "sb"    # Landroid/view/View;

    .prologue
    .line 2770
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$MyTicker;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .line 2771
    invoke-direct {p0, p2, p3}, Lcom/android/systemui/statusbar/phone/Ticker;-><init>(Landroid/content/Context;Landroid/view/View;)V

    .line 2772
    # getter for: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mTickerEnabled:Z
    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$5900(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2773
    const-string v0, "PhoneStatusBar"

    const-string v1, "MyTicker instantiated with mTickerEnabled=false"

    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v0, v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2775
    :cond_0
    return-void
.end method


# virtual methods
.method public tickerDone()V
    .locals 4

    .prologue
    .line 2789
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$MyTicker;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    # getter for: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mTickerEnabled:Z
    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$5900(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2795
    :goto_0
    return-void

    .line 2790
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$MyTicker;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarContents:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2791
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$MyTicker;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    # getter for: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mTickerView:Landroid/view/View;
    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$6100(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2792
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$MyTicker;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarContents:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$MyTicker;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    const v2, 0x10a0039

    const/4 v3, 0x0

    # invokes: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->loadAnim(ILandroid/view/animation/Animation$AnimationListener;)Landroid/view/animation/Animation;
    invoke-static {v1, v2, v3}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$6200(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;ILandroid/view/animation/Animation$AnimationListener;)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 2793
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$MyTicker;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    # getter for: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mTickerView:Landroid/view/View;
    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$6100(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$MyTicker;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    const v2, 0x10a003b

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$MyTicker;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v3, v3, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mTickingDoneListener:Landroid/view/animation/Animation$AnimationListener;

    # invokes: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->loadAnim(ILandroid/view/animation/Animation$AnimationListener;)Landroid/view/animation/Animation;
    invoke-static {v1, v2, v3}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$6200(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;ILandroid/view/animation/Animation$AnimationListener;)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0
.end method

.method public tickerHalting()V
    .locals 4

    .prologue
    .line 2798
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$MyTicker;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    # getter for: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mTickerEnabled:Z
    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$5900(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2806
    :goto_0
    return-void

    .line 2799
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$MyTicker;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarContents:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    .line 2800
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$MyTicker;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarContents:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2801
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$MyTicker;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarContents:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$MyTicker;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    const/high16 v2, 0x10a0000

    const/4 v3, 0x0

    # invokes: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->loadAnim(ILandroid/view/animation/Animation$AnimationListener;)Landroid/view/animation/Animation;
    invoke-static {v1, v2, v3}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$6200(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;ILandroid/view/animation/Animation$AnimationListener;)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 2804
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$MyTicker;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    # getter for: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mTickerView:Landroid/view/View;
    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$6100(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public tickerStarting()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 2779
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$MyTicker;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    # getter for: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mTickerEnabled:Z
    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$5900(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2785
    :goto_0
    return-void

    .line 2780
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$MyTicker;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    const/4 v1, 0x1

    # setter for: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mTicking:Z
    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$6002(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;Z)Z

    .line 2781
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$MyTicker;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarContents:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2782
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$MyTicker;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    # getter for: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mTickerView:Landroid/view/View;
    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$6100(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2783
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$MyTicker;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    # getter for: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mTickerView:Landroid/view/View;
    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$6100(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$MyTicker;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    const v2, 0x10a003d

    # invokes: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->loadAnim(ILandroid/view/animation/Animation$AnimationListener;)Landroid/view/animation/Animation;
    invoke-static {v1, v2, v3}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$6200(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;ILandroid/view/animation/Animation$AnimationListener;)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 2784
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$MyTicker;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarContents:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$MyTicker;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    const v2, 0x10a003e

    # invokes: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->loadAnim(ILandroid/view/animation/Animation$AnimationListener;)Landroid/view/animation/Animation;
    invoke-static {v1, v2, v3}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$6200(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;ILandroid/view/animation/Animation$AnimationListener;)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0
.end method
