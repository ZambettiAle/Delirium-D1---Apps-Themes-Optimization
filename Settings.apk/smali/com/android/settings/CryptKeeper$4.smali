.class Lcom/android/settings/CryptKeeper$4;
.super Landroid/os/AsyncTask;
.source "CryptKeeper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/CryptKeeper;->setupUi()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field owner_info:Ljava/lang/String;

.field pattern_visible:Z

.field final synthetic this$0:Lcom/android/settings/CryptKeeper;

.field type:I


# direct methods
.method constructor <init>(Lcom/android/settings/CryptKeeper;)V
    .locals 1

    .prologue
    .line 453
    iput-object p1, p0, Lcom/android/settings/CryptKeeper$4;->this$0:Lcom/android/settings/CryptKeeper;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 454
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/CryptKeeper$4;->type:I

    return-void
.end method


# virtual methods
.method public bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 453
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/settings/CryptKeeper$4;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 5
    .param p1, "v"    # [Ljava/lang/Void;

    .prologue
    .line 461
    :try_start_0
    iget-object v2, p0, Lcom/android/settings/CryptKeeper$4;->this$0:Lcom/android/settings/CryptKeeper;

    # invokes: Lcom/android/settings/CryptKeeper;->getMountService()Landroid/os/storage/IMountService;
    invoke-static {v2}, Lcom/android/settings/CryptKeeper;->access$200(Lcom/android/settings/CryptKeeper;)Landroid/os/storage/IMountService;

    move-result-object v1

    .line 462
    .local v1, "service":Landroid/os/storage/IMountService;
    invoke-interface {v1}, Landroid/os/storage/IMountService;->getPasswordType()I

    move-result v2

    iput v2, p0, Lcom/android/settings/CryptKeeper$4;->type:I

    .line 463
    const-string v2, "OwnerInfo"

    invoke-interface {v1, v2}, Landroid/os/storage/IMountService;->getField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/CryptKeeper$4;->owner_info:Ljava/lang/String;

    .line 464
    const-string v2, "0"

    const-string v3, "PatternVisible"

    invoke-interface {v1, v3}, Landroid/os/storage/IMountService;->getField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    iput-boolean v2, p0, Lcom/android/settings/CryptKeeper$4;->pattern_visible:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 469
    .end local v1    # "service":Landroid/os/storage/IMountService;
    :goto_1
    const/4 v2, 0x0

    return-object v2

    .line 464
    .restart local v1    # "service":Landroid/os/storage/IMountService;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 465
    .end local v1    # "service":Landroid/os/storage/IMountService;
    :catch_0
    move-exception v0

    .line 466
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "CryptKeeper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error calling mount service "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 453
    check-cast p1, Ljava/lang/Void;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/settings/CryptKeeper$4;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method public onPostExecute(Ljava/lang/Void;)V
    .locals 6
    .param p1, "v"    # Ljava/lang/Void;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 474
    iget v4, p0, Lcom/android/settings/CryptKeeper$4;->type:I

    const/4 v5, 0x3

    if-ne v4, v5, :cond_2

    .line 475
    iget-object v4, p0, Lcom/android/settings/CryptKeeper$4;->this$0:Lcom/android/settings/CryptKeeper;

    const v5, 0x7f040029

    invoke-virtual {v4, v5}, Lcom/android/settings/CryptKeeper;->setContentView(I)V

    .line 476
    iget-object v4, p0, Lcom/android/settings/CryptKeeper$4;->this$0:Lcom/android/settings/CryptKeeper;

    const v5, 0x7f080756

    # setter for: Lcom/android/settings/CryptKeeper;->mStatusString:I
    invoke-static {v4, v5}, Lcom/android/settings/CryptKeeper;->access$1202(Lcom/android/settings/CryptKeeper;I)I

    .line 485
    :goto_0
    iget-object v4, p0, Lcom/android/settings/CryptKeeper$4;->this$0:Lcom/android/settings/CryptKeeper;

    const v5, 0x7f0e001d

    invoke-virtual {v4, v5}, Lcom/android/settings/CryptKeeper;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 486
    .local v1, "status":Landroid/widget/TextView;
    iget-object v4, p0, Lcom/android/settings/CryptKeeper$4;->this$0:Lcom/android/settings/CryptKeeper;

    # getter for: Lcom/android/settings/CryptKeeper;->mStatusString:I
    invoke-static {v4}, Lcom/android/settings/CryptKeeper;->access$1200(Lcom/android/settings/CryptKeeper;)I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(I)V

    .line 488
    iget-object v4, p0, Lcom/android/settings/CryptKeeper$4;->this$0:Lcom/android/settings/CryptKeeper;

    const v5, 0x7f0e0059

    invoke-virtual {v4, v5}, Lcom/android/settings/CryptKeeper;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 489
    .local v0, "ownerInfo":Landroid/widget/TextView;
    iget-object v4, p0, Lcom/android/settings/CryptKeeper$4;->owner_info:Ljava/lang/String;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 490
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setSelected(Z)V

    .line 492
    iget-object v4, p0, Lcom/android/settings/CryptKeeper$4;->this$0:Lcom/android/settings/CryptKeeper;

    # invokes: Lcom/android/settings/CryptKeeper;->passwordEntryInit()V
    invoke-static {v4}, Lcom/android/settings/CryptKeeper;->access$1400(Lcom/android/settings/CryptKeeper;)V

    .line 494
    iget-object v4, p0, Lcom/android/settings/CryptKeeper$4;->this$0:Lcom/android/settings/CryptKeeper;

    # getter for: Lcom/android/settings/CryptKeeper;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;
    invoke-static {v4}, Lcom/android/settings/CryptKeeper;->access$100(Lcom/android/settings/CryptKeeper;)Lcom/android/internal/widget/LockPatternView;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 495
    iget-object v4, p0, Lcom/android/settings/CryptKeeper$4;->this$0:Lcom/android/settings/CryptKeeper;

    # getter for: Lcom/android/settings/CryptKeeper;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;
    invoke-static {v4}, Lcom/android/settings/CryptKeeper;->access$100(Lcom/android/settings/CryptKeeper;)Lcom/android/internal/widget/LockPatternView;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/settings/CryptKeeper$4;->pattern_visible:Z

    if-nez v5, :cond_4

    :goto_1
    invoke-virtual {v4, v2}, Lcom/android/internal/widget/LockPatternView;->setInStealthMode(Z)V

    .line 498
    :cond_0
    iget-object v2, p0, Lcom/android/settings/CryptKeeper$4;->this$0:Lcom/android/settings/CryptKeeper;

    # getter for: Lcom/android/settings/CryptKeeper;->mCooldown:I
    invoke-static {v2}, Lcom/android/settings/CryptKeeper;->access$1500(Lcom/android/settings/CryptKeeper;)I

    move-result v2

    if-lez v2, :cond_1

    .line 499
    iget-object v2, p0, Lcom/android/settings/CryptKeeper$4;->this$0:Lcom/android/settings/CryptKeeper;

    # invokes: Lcom/android/settings/CryptKeeper;->setBackFunctionality(Z)V
    invoke-static {v2, v3}, Lcom/android/settings/CryptKeeper;->access$1300(Lcom/android/settings/CryptKeeper;Z)V

    .line 500
    iget-object v2, p0, Lcom/android/settings/CryptKeeper$4;->this$0:Lcom/android/settings/CryptKeeper;

    # invokes: Lcom/android/settings/CryptKeeper;->cooldown()V
    invoke-static {v2}, Lcom/android/settings/CryptKeeper;->access$1000(Lcom/android/settings/CryptKeeper;)V

    .line 502
    :cond_1
    return-void

    .line 477
    .end local v0    # "ownerInfo":Landroid/widget/TextView;
    .end local v1    # "status":Landroid/widget/TextView;
    :cond_2
    iget v4, p0, Lcom/android/settings/CryptKeeper$4;->type:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_3

    .line 478
    iget-object v4, p0, Lcom/android/settings/CryptKeeper$4;->this$0:Lcom/android/settings/CryptKeeper;

    const v5, 0x7f040027

    invoke-virtual {v4, v5}, Lcom/android/settings/CryptKeeper;->setContentView(I)V

    .line 479
    iget-object v4, p0, Lcom/android/settings/CryptKeeper$4;->this$0:Lcom/android/settings/CryptKeeper;

    # invokes: Lcom/android/settings/CryptKeeper;->setBackFunctionality(Z)V
    invoke-static {v4, v3}, Lcom/android/settings/CryptKeeper;->access$1300(Lcom/android/settings/CryptKeeper;Z)V

    .line 480
    iget-object v4, p0, Lcom/android/settings/CryptKeeper$4;->this$0:Lcom/android/settings/CryptKeeper;

    const v5, 0x7f080757

    # setter for: Lcom/android/settings/CryptKeeper;->mStatusString:I
    invoke-static {v4, v5}, Lcom/android/settings/CryptKeeper;->access$1202(Lcom/android/settings/CryptKeeper;I)I

    goto :goto_0

    .line 482
    :cond_3
    iget-object v4, p0, Lcom/android/settings/CryptKeeper$4;->this$0:Lcom/android/settings/CryptKeeper;

    const v5, 0x7f040025

    invoke-virtual {v4, v5}, Lcom/android/settings/CryptKeeper;->setContentView(I)V

    .line 483
    iget-object v4, p0, Lcom/android/settings/CryptKeeper$4;->this$0:Lcom/android/settings/CryptKeeper;

    const v5, 0x7f080755

    # setter for: Lcom/android/settings/CryptKeeper;->mStatusString:I
    invoke-static {v4, v5}, Lcom/android/settings/CryptKeeper;->access$1202(Lcom/android/settings/CryptKeeper;I)I

    goto :goto_0

    .restart local v0    # "ownerInfo":Landroid/widget/TextView;
    .restart local v1    # "status":Landroid/widget/TextView;
    :cond_4
    move v2, v3

    .line 495
    goto :goto_1
.end method
