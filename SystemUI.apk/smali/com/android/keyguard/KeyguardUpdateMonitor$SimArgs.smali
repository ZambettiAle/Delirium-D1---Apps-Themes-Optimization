.class Lcom/android/keyguard/KeyguardUpdateMonitor$SimArgs;
.super Ljava/lang/Object;
.source "KeyguardUpdateMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/KeyguardUpdateMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SimArgs"
.end annotation


# instance fields
.field public final simState:Lcom/android/internal/telephony/IccCardConstants$State;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/IccCardConstants$State;)V
    .locals 0
    .param p1, "state"    # Lcom/android/internal/telephony/IccCardConstants$State;

    .prologue
    .line 455
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 456
    iput-object p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$SimArgs;->simState:Lcom/android/internal/telephony/IccCardConstants$State;

    .line 457
    return-void
.end method

.method static fromIntent(Landroid/content/Intent;)Lcom/android/keyguard/KeyguardUpdateMonitor$SimArgs;
    .locals 6
    .param p0, "intent"    # Landroid/content/Intent;

    .prologue
    .line 461
    const-string v4, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 462
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "only handles intent ACTION_SIM_STATE_CHANGED"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 464
    :cond_0
    const-string v4, "ss"

    invoke-virtual {p0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 465
    .local v3, "stateExtra":Ljava/lang/String;
    const-string v4, "ABSENT"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 466
    const-string v4, "reason"

    invoke-virtual {p0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 469
    .local v0, "absentReason":Ljava/lang/String;
    const-string v4, "PERM_DISABLED"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 471
    sget-object v2, Lcom/android/internal/telephony/IccCardConstants$State;->PERM_DISABLED:Lcom/android/internal/telephony/IccCardConstants$State;

    .line 497
    .end local v0    # "absentReason":Ljava/lang/String;
    .local v2, "state":Lcom/android/internal/telephony/IccCardConstants$State;
    :goto_0
    new-instance v4, Lcom/android/keyguard/KeyguardUpdateMonitor$SimArgs;

    invoke-direct {v4, v2}, Lcom/android/keyguard/KeyguardUpdateMonitor$SimArgs;-><init>(Lcom/android/internal/telephony/IccCardConstants$State;)V

    return-object v4

    .line 473
    .end local v2    # "state":Lcom/android/internal/telephony/IccCardConstants$State;
    .restart local v0    # "absentReason":Ljava/lang/String;
    :cond_1
    sget-object v2, Lcom/android/internal/telephony/IccCardConstants$State;->ABSENT:Lcom/android/internal/telephony/IccCardConstants$State;

    .restart local v2    # "state":Lcom/android/internal/telephony/IccCardConstants$State;
    goto :goto_0

    .line 475
    .end local v0    # "absentReason":Ljava/lang/String;
    .end local v2    # "state":Lcom/android/internal/telephony/IccCardConstants$State;
    :cond_2
    const-string v4, "READY"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 476
    sget-object v2, Lcom/android/internal/telephony/IccCardConstants$State;->READY:Lcom/android/internal/telephony/IccCardConstants$State;

    .restart local v2    # "state":Lcom/android/internal/telephony/IccCardConstants$State;
    goto :goto_0

    .line 477
    .end local v2    # "state":Lcom/android/internal/telephony/IccCardConstants$State;
    :cond_3
    const-string v4, "LOCKED"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 478
    const-string v4, "reason"

    invoke-virtual {p0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 480
    .local v1, "lockedReason":Ljava/lang/String;
    const-string v4, "PIN"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 481
    sget-object v2, Lcom/android/internal/telephony/IccCardConstants$State;->PIN_REQUIRED:Lcom/android/internal/telephony/IccCardConstants$State;

    .restart local v2    # "state":Lcom/android/internal/telephony/IccCardConstants$State;
    goto :goto_0

    .line 482
    .end local v2    # "state":Lcom/android/internal/telephony/IccCardConstants$State;
    :cond_4
    const-string v4, "PUK"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 483
    sget-object v2, Lcom/android/internal/telephony/IccCardConstants$State;->PUK_REQUIRED:Lcom/android/internal/telephony/IccCardConstants$State;

    .restart local v2    # "state":Lcom/android/internal/telephony/IccCardConstants$State;
    goto :goto_0

    .line 485
    .end local v2    # "state":Lcom/android/internal/telephony/IccCardConstants$State;
    :cond_5
    sget-object v2, Lcom/android/internal/telephony/IccCardConstants$State;->UNKNOWN:Lcom/android/internal/telephony/IccCardConstants$State;

    .restart local v2    # "state":Lcom/android/internal/telephony/IccCardConstants$State;
    goto :goto_0

    .line 487
    .end local v1    # "lockedReason":Ljava/lang/String;
    .end local v2    # "state":Lcom/android/internal/telephony/IccCardConstants$State;
    :cond_6
    const-string v4, "NETWORK"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 488
    sget-object v2, Lcom/android/internal/telephony/IccCardConstants$State;->NETWORK_LOCKED:Lcom/android/internal/telephony/IccCardConstants$State;

    .restart local v2    # "state":Lcom/android/internal/telephony/IccCardConstants$State;
    goto :goto_0

    .line 489
    .end local v2    # "state":Lcom/android/internal/telephony/IccCardConstants$State;
    :cond_7
    const-string v4, "LOADED"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_8

    const-string v4, "IMSI"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 493
    :cond_8
    sget-object v2, Lcom/android/internal/telephony/IccCardConstants$State;->READY:Lcom/android/internal/telephony/IccCardConstants$State;

    .restart local v2    # "state":Lcom/android/internal/telephony/IccCardConstants$State;
    goto :goto_0

    .line 495
    .end local v2    # "state":Lcom/android/internal/telephony/IccCardConstants$State;
    :cond_9
    sget-object v2, Lcom/android/internal/telephony/IccCardConstants$State;->UNKNOWN:Lcom/android/internal/telephony/IccCardConstants$State;

    .restart local v2    # "state":Lcom/android/internal/telephony/IccCardConstants$State;
    goto :goto_0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 501
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$SimArgs;->simState:Lcom/android/internal/telephony/IccCardConstants$State;

    invoke-virtual {v0}, Lcom/android/internal/telephony/IccCardConstants$State;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
