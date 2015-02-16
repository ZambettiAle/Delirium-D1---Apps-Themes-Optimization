.class public Lcom/android/settings/users/UserSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "UserSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Landroid/preference/Preference$OnPreferenceClickListener;
.implements Landroid/view/View$OnClickListener;
.implements Lcom/android/settings/users/EditUserInfoController$OnContentChangedCallback;


# instance fields
.field private mAddUser:Landroid/preference/Preference;

.field private mAddedUserId:I

.field private mAddingUser:Z

.field private mCanAddRestrictedProfile:Z

.field private mDefaultIconDrawable:Landroid/graphics/drawable/Drawable;

.field private mEditUserInfoController:Lcom/android/settings/users/EditUserInfoController;

.field private mEnabled:Z

.field private mHandler:Landroid/os/Handler;

.field private mIsGuest:Z

.field private mIsOwner:Z

.field private mMePreference:Landroid/preference/Preference;

.field private mNicknamePreference:Lcom/android/settings/SelectableEditTextPreference;

.field private mRemovingUserId:I

.field private mUserChangeReceiver:Landroid/content/BroadcastReceiver;

.field private mUserIcons:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private mUserListCategory:Landroid/preference/PreferenceGroup;

.field private final mUserLock:Ljava/lang/Object;

.field private mUserManager:Landroid/os/UserManager;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 81
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 129
    const/4 v2, -0x1

    iput v2, p0, Lcom/android/settings/users/UserSettings;->mRemovingUserId:I

    .line 130
    iput v1, p0, Lcom/android/settings/users/UserSettings;->mAddedUserId:I

    .line 132
    iput-boolean v0, p0, Lcom/android/settings/users/UserSettings;->mEnabled:Z

    .line 133
    iput-boolean v0, p0, Lcom/android/settings/users/UserSettings;->mCanAddRestrictedProfile:Z

    .line 135
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/android/settings/users/UserSettings;->mUserLock:Ljava/lang/Object;

    .line 137
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    iput-object v2, p0, Lcom/android/settings/users/UserSettings;->mUserIcons:Landroid/util/SparseArray;

    .line 138
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    if-nez v2, :cond_0

    :goto_0
    iput-boolean v0, p0, Lcom/android/settings/users/UserSettings;->mIsOwner:Z

    .line 141
    new-instance v0, Lcom/android/settings/users/EditUserInfoController;

    invoke-direct {v0}, Lcom/android/settings/users/EditUserInfoController;-><init>()V

    iput-object v0, p0, Lcom/android/settings/users/UserSettings;->mEditUserInfoController:Lcom/android/settings/users/EditUserInfoController;

    .line 147
    new-instance v0, Lcom/android/settings/users/UserSettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings/users/UserSettings$1;-><init>(Lcom/android/settings/users/UserSettings;)V

    iput-object v0, p0, Lcom/android/settings/users/UserSettings;->mHandler:Landroid/os/Handler;

    .line 164
    new-instance v0, Lcom/android/settings/users/UserSettings$2;

    invoke-direct {v0, p0}, Lcom/android/settings/users/UserSettings$2;-><init>(Lcom/android/settings/users/UserSettings;)V

    iput-object v0, p0, Lcom/android/settings/users/UserSettings;->mUserChangeReceiver:Landroid/content/BroadcastReceiver;

    return-void

    :cond_0
    move v0, v1

    .line 138
    goto :goto_0
.end method

.method static synthetic access$000(Lcom/android/settings/users/UserSettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/users/UserSettings;

    .prologue
    .line 81
    invoke-direct {p0}, Lcom/android/settings/users/UserSettings;->updateUserList()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/users/UserSettings;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/users/UserSettings;
    .param p1, "x1"    # I

    .prologue
    .line 81
    invoke-direct {p0, p1}, Lcom/android/settings/users/UserSettings;->onUserCreated(I)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/settings/users/UserSettings;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/users/UserSettings;
    .param p1, "x1"    # I

    .prologue
    .line 81
    invoke-direct {p0, p1}, Lcom/android/settings/users/UserSettings;->addUserNow(I)V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/settings/users/UserSettings;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/users/UserSettings;

    .prologue
    .line 81
    iget v0, p0, Lcom/android/settings/users/UserSettings;->mAddedUserId:I

    return v0
.end method

.method static synthetic access$1200(Lcom/android/settings/users/UserSettings;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/users/UserSettings;
    .param p1, "x1"    # I

    .prologue
    .line 81
    invoke-direct {p0, p1}, Lcom/android/settings/users/UserSettings;->switchUserNow(I)V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/settings/users/UserSettings;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/users/UserSettings;
    .param p1, "x1"    # I

    .prologue
    .line 81
    invoke-direct {p0, p1}, Lcom/android/settings/users/UserSettings;->onAddUserClicked(I)V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/settings/users/UserSettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/users/UserSettings;

    .prologue
    .line 81
    invoke-direct {p0}, Lcom/android/settings/users/UserSettings;->launchChooseLockscreen()V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/settings/users/UserSettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/users/UserSettings;

    .prologue
    .line 81
    invoke-direct {p0}, Lcom/android/settings/users/UserSettings;->exitGuest()V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/settings/users/UserSettings;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/users/UserSettings;

    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/settings/users/UserSettings;->mUserLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/settings/users/UserSettings;)Landroid/content/pm/UserInfo;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/users/UserSettings;

    .prologue
    .line 81
    invoke-direct {p0}, Lcom/android/settings/users/UserSettings;->createTrustedUser()Landroid/content/pm/UserInfo;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/settings/users/UserSettings;)Landroid/content/pm/UserInfo;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/users/UserSettings;

    .prologue
    .line 81
    invoke-direct {p0}, Lcom/android/settings/users/UserSettings;->createLimitedUser()Landroid/content/pm/UserInfo;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1902(Lcom/android/settings/users/UserSettings;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/users/UserSettings;
    .param p1, "x1"    # Z

    .prologue
    .line 81
    iput-boolean p1, p0, Lcom/android/settings/users/UserSettings;->mAddingUser:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/settings/users/UserSettings;IZ)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/users/UserSettings;
    .param p1, "x1"    # I
    .param p2, "x2"    # Z

    .prologue
    .line 81
    invoke-direct {p0, p1, p2}, Lcom/android/settings/users/UserSettings;->onManageUserClicked(IZ)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/settings/users/UserSettings;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/users/UserSettings;

    .prologue
    .line 81
    iget v0, p0, Lcom/android/settings/users/UserSettings;->mRemovingUserId:I

    return v0
.end method

.method static synthetic access$302(Lcom/android/settings/users/UserSettings;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/users/UserSettings;
    .param p1, "x1"    # I

    .prologue
    .line 81
    iput p1, p0, Lcom/android/settings/users/UserSettings;->mRemovingUserId:I

    return p1
.end method

.method static synthetic access$400(Lcom/android/settings/users/UserSettings;)Landroid/util/SparseArray;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/users/UserSettings;

    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/settings/users/UserSettings;->mUserIcons:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/settings/users/UserSettings;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/users/UserSettings;

    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/settings/users/UserSettings;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/settings/users/UserSettings;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/users/UserSettings;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 81
    invoke-direct {p0, p1}, Lcom/android/settings/users/UserSettings;->finishLoadProfile(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/settings/users/UserSettings;)Landroid/os/UserManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/users/UserSettings;

    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/settings/users/UserSettings;->mUserManager:Landroid/os/UserManager;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/settings/users/UserSettings;Landroid/content/pm/UserInfo;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/users/UserSettings;
    .param p1, "x1"    # Landroid/content/pm/UserInfo;

    .prologue
    .line 81
    invoke-direct {p0, p1}, Lcom/android/settings/users/UserSettings;->assignProfilePhoto(Landroid/content/pm/UserInfo;)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/settings/users/UserSettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/users/UserSettings;

    .prologue
    .line 81
    invoke-direct {p0}, Lcom/android/settings/users/UserSettings;->removeUserNow()V

    return-void
.end method

.method private addUserNow(I)V
    .locals 2
    .param p1, "userType"    # I

    .prologue
    .line 661
    iget-object v1, p0, Lcom/android/settings/users/UserSettings;->mUserLock:Ljava/lang/Object;

    monitor-enter v1

    .line 662
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/android/settings/users/UserSettings;->mAddingUser:Z

    .line 664
    new-instance v0, Lcom/android/settings/users/UserSettings$12;

    invoke-direct {v0, p0, p1}, Lcom/android/settings/users/UserSettings$12;-><init>(Lcom/android/settings/users/UserSettings;I)V

    invoke-virtual {v0}, Lcom/android/settings/users/UserSettings$12;->start()V

    .line 686
    monitor-exit v1

    .line 687
    return-void

    .line 686
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private assignDefaultPhoto(Landroid/content/pm/UserInfo;)V
    .locals 3
    .param p1, "user"    # Landroid/content/pm/UserInfo;

    .prologue
    .line 850
    iget v1, p1, Landroid/content/pm/UserInfo;->id:I

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/internal/util/UserIcons;->getDefaultUserIcon(IZ)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/util/UserIcons;->convertToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 852
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    iget-object v1, p0, Lcom/android/settings/users/UserSettings;->mUserManager:Landroid/os/UserManager;

    iget v2, p1, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v1, v2, v0}, Landroid/os/UserManager;->setUserIcon(ILandroid/graphics/Bitmap;)V

    .line 853
    return-void
.end method

.method private assignProfilePhoto(Landroid/content/pm/UserInfo;)V
    .locals 1
    .param p1, "user"    # Landroid/content/pm/UserInfo;

    .prologue
    .line 844
    invoke-virtual {p0}, Lcom/android/settings/users/UserSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/android/settings/Utils;->copyMeProfilePhoto(Landroid/content/Context;Landroid/content/pm/UserInfo;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 845
    invoke-direct {p0, p1}, Lcom/android/settings/users/UserSettings;->assignDefaultPhoto(Landroid/content/pm/UserInfo;)V

    .line 847
    :cond_0
    return-void
.end method

.method private createAndSwitchToGuestUser()V
    .locals 8

    .prologue
    .line 916
    iget-object v4, p0, Lcom/android/settings/users/UserSettings;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v4}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v3

    .line 917
    .local v3, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/UserInfo;

    .line 918
    .local v2, "user":Landroid/content/pm/UserInfo;
    invoke-virtual {v2}, Landroid/content/pm/UserInfo;->isGuest()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 919
    iget v4, v2, Landroid/content/pm/UserInfo;->id:I

    invoke-direct {p0, v4}, Lcom/android/settings/users/UserSettings;->switchUserNow(I)V

    .line 936
    .end local v2    # "user":Landroid/content/pm/UserInfo;
    :cond_1
    :goto_0
    return-void

    .line 925
    :cond_2
    iget-object v4, p0, Lcom/android/settings/users/UserSettings;->mUserManager:Landroid/os/UserManager;

    const-string v5, "no_add_user"

    invoke-virtual {v4, v5}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3

    iget-boolean v4, p0, Lcom/android/settings/users/UserSettings;->mIsOwner:Z

    if-nez v4, :cond_4

    invoke-virtual {p0}, Lcom/android/settings/users/UserSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "add_users_when_locked"

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    const/4 v5, 0x1

    if-eq v4, v5, :cond_4

    .line 928
    :cond_3
    const-string v4, "UserSettings"

    const-string v5, "Blocking guest creation because it is restricted"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 931
    :cond_4
    iget-object v4, p0, Lcom/android/settings/users/UserSettings;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {p0}, Lcom/android/settings/users/UserSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {p0}, Lcom/android/settings/users/UserSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f080852

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/os/UserManager;->createGuest(Landroid/content/Context;Ljava/lang/String;)Landroid/content/pm/UserInfo;

    move-result-object v0

    .line 933
    .local v0, "guestUser":Landroid/content/pm/UserInfo;
    if-eqz v0, :cond_1

    .line 934
    iget v4, v0, Landroid/content/pm/UserInfo;->id:I

    invoke-direct {p0, v4}, Lcom/android/settings/users/UserSettings;->switchUserNow(I)V

    goto :goto_0
.end method

.method private createLimitedUser()Landroid/content/pm/UserInfo;
    .locals 13

    .prologue
    const/4 v12, 0x1

    .line 400
    iget-object v9, p0, Lcom/android/settings/users/UserSettings;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {p0}, Lcom/android/settings/users/UserSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f080846

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    const/16 v11, 0x8

    invoke-virtual {v9, v10, v11}, Landroid/os/UserManager;->createSecondaryUser(Ljava/lang/String;I)Landroid/content/pm/UserInfo;

    move-result-object v6

    .line 403
    .local v6, "newUserInfo":Landroid/content/pm/UserInfo;
    iget v8, v6, Landroid/content/pm/UserInfo;->id:I

    .line 404
    .local v8, "userId":I
    new-instance v7, Landroid/os/UserHandle;

    invoke-direct {v7, v8}, Landroid/os/UserHandle;-><init>(I)V

    .line 405
    .local v7, "user":Landroid/os/UserHandle;
    iget-object v9, p0, Lcom/android/settings/users/UserSettings;->mUserManager:Landroid/os/UserManager;

    const-string v10, "no_modify_accounts"

    invoke-virtual {v9, v10, v12, v7}, Landroid/os/UserManager;->setUserRestriction(Ljava/lang/String;ZLandroid/os/UserHandle;)V

    .line 408
    invoke-virtual {p0}, Lcom/android/settings/users/UserSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "location_mode"

    const/4 v11, 0x0

    invoke-static {v9, v10, v11, v8}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 410
    iget-object v9, p0, Lcom/android/settings/users/UserSettings;->mUserManager:Landroid/os/UserManager;

    const-string v10, "no_share_location"

    invoke-virtual {v9, v10, v12, v7}, Landroid/os/UserManager;->setUserRestriction(Ljava/lang/String;ZLandroid/os/UserHandle;)V

    .line 411
    invoke-direct {p0, v6}, Lcom/android/settings/users/UserSettings;->assignDefaultPhoto(Landroid/content/pm/UserInfo;)V

    .line 413
    invoke-virtual {p0}, Lcom/android/settings/users/UserSettings;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-static {v9}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v2

    .line 414
    .local v2, "am":Landroid/accounts/AccountManager;
    invoke-virtual {v2}, Landroid/accounts/AccountManager;->getAccounts()[Landroid/accounts/Account;

    move-result-object v1

    .line 415
    .local v1, "accounts":[Landroid/accounts/Account;
    if-eqz v1, :cond_0

    .line 416
    move-object v3, v1

    .local v3, "arr$":[Landroid/accounts/Account;
    array-length v5, v3

    .local v5, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_0
    if-ge v4, v5, :cond_0

    aget-object v0, v3, v4

    .line 417
    .local v0, "account":Landroid/accounts/Account;
    invoke-virtual {v2, v0, v7}, Landroid/accounts/AccountManager;->addSharedAccount(Landroid/accounts/Account;Landroid/os/UserHandle;)Z

    .line 416
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 420
    .end local v0    # "account":Landroid/accounts/Account;
    .end local v3    # "arr$":[Landroid/accounts/Account;
    .end local v4    # "i$":I
    .end local v5    # "len$":I
    :cond_0
    return-object v6
.end method

.method private createTrustedUser()Landroid/content/pm/UserInfo;
    .locals 4

    .prologue
    .line 424
    iget-object v1, p0, Lcom/android/settings/users/UserSettings;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {p0}, Lcom/android/settings/users/UserSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f080845

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/os/UserManager;->createSecondaryUser(Ljava/lang/String;I)Landroid/content/pm/UserInfo;

    move-result-object v0

    .line 426
    .local v0, "newUserInfo":Landroid/content/pm/UserInfo;
    if-eqz v0, :cond_0

    .line 427
    invoke-direct {p0, v0}, Lcom/android/settings/users/UserSettings;->assignDefaultPhoto(Landroid/content/pm/UserInfo;)V

    .line 429
    :cond_0
    return-object v0
.end method

.method private encircle(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Drawable;
    .locals 2
    .param p1, "icon"    # Landroid/graphics/Bitmap;

    .prologue
    .line 943
    invoke-virtual {p0}, Lcom/android/settings/users/UserSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/android/settings/drawable/CircleFramedDrawable;->getInstance(Landroid/content/Context;Landroid/graphics/Bitmap;)Lcom/android/settings/drawable/CircleFramedDrawable;

    move-result-object v0

    .line 944
    .local v0, "circled":Landroid/graphics/drawable/Drawable;
    return-object v0
.end method

.method private exitGuest()V
    .locals 1

    .prologue
    .line 702
    iget-boolean v0, p0, Lcom/android/settings/users/UserSettings;->mIsGuest:Z

    if-nez v0, :cond_0

    .line 706
    :goto_0
    return-void

    .line 705
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/users/UserSettings;->removeThisUser()V

    goto :goto_0
.end method

.method private finishLoadProfile(Ljava/lang/String;)V
    .locals 6
    .param p1, "profileName"    # Ljava/lang/String;

    .prologue
    .line 336
    invoke-virtual {p0}, Lcom/android/settings/users/UserSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    if-nez v2, :cond_1

    .line 344
    :cond_0
    :goto_0
    return-void

    .line 337
    :cond_1
    iget-object v2, p0, Lcom/android/settings/users/UserSettings;->mMePreference:Landroid/preference/Preference;

    const v3, 0x7f080832

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    invoke-virtual {p0, v3, v4}, Lcom/android/settings/users/UserSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 338
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    .line 339
    .local v1, "myUserId":I
    iget-object v2, p0, Lcom/android/settings/users/UserSettings;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v2, v1}, Landroid/os/UserManager;->getUserIcon(I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 340
    .local v0, "b":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    .line 341
    iget-object v2, p0, Lcom/android/settings/users/UserSettings;->mMePreference:Landroid/preference/Preference;

    invoke-direct {p0, v0}, Lcom/android/settings/users/UserSettings;->encircle(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 342
    iget-object v2, p0, Lcom/android/settings/users/UserSettings;->mUserIcons:Landroid/util/SparseArray;

    invoke-virtual {v2, v1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0
.end method

.method private getEncircledDefaultIcon()Landroid/graphics/drawable/Drawable;
    .locals 2

    .prologue
    .line 856
    iget-object v0, p0, Lcom/android/settings/users/UserSettings;->mDefaultIconDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    .line 857
    const/16 v0, -0x2710

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/internal/util/UserIcons;->getDefaultUserIcon(IZ)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/util/UserIcons;->convertToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings/users/UserSettings;->encircle(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/users/UserSettings;->mDefaultIconDrawable:Landroid/graphics/drawable/Drawable;

    .line 860
    :cond_0
    iget-object v0, p0, Lcom/android/settings/users/UserSettings;->mDefaultIconDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method private hasLockscreenSecurity()Z
    .locals 2

    .prologue
    .line 347
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0}, Lcom/android/settings/users/UserSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    .line 348
    .local v0, "lpu":Lcom/android/internal/widget/LockPatternUtils;
    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->isLockPasswordEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->isLockPatternEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isInitialized(Landroid/content/pm/UserInfo;)Z
    .locals 1
    .param p1, "user"    # Landroid/content/pm/UserInfo;

    .prologue
    .line 939
    iget v0, p1, Landroid/content/pm/UserInfo;->flags:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private launchChooseLockscreen()V
    .locals 3

    .prologue
    .line 352
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.app.action.SET_NEW_PASSWORD"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 353
    .local v0, "chooseLockIntent":Landroid/content/Intent;
    const-string v1, "minimum_quality"

    const/high16 v2, 0x10000

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 355
    const/16 v1, 0xa

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/users/UserSettings;->startActivityForResult(Landroid/content/Intent;I)V

    .line 356
    return-void
.end method

.method private loadIconsAsync(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 821
    .local p1, "missingIcons":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-virtual {p0}, Lcom/android/settings/users/UserSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 822
    .local v0, "resources":Landroid/content/res/Resources;
    new-instance v1, Lcom/android/settings/users/UserSettings$13;

    invoke-direct {v1, p0}, Lcom/android/settings/users/UserSettings$13;-><init>(Lcom/android/settings/users/UserSettings;)V

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/util/List;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v1, v2}, Lcom/android/settings/users/UserSettings$13;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 841
    return-void
.end method

.method private loadProfile()V
    .locals 2

    .prologue
    .line 311
    iget-boolean v0, p0, Lcom/android/settings/users/UserSettings;->mIsGuest:Z

    if-eqz v0, :cond_0

    .line 313
    iget-object v0, p0, Lcom/android/settings/users/UserSettings;->mMePreference:Landroid/preference/Preference;

    invoke-direct {p0}, Lcom/android/settings/users/UserSettings;->getEncircledDefaultIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 314
    iget-object v0, p0, Lcom/android/settings/users/UserSettings;->mMePreference:Landroid/preference/Preference;

    const v1, 0x7f080853

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setTitle(I)V

    .line 333
    :goto_0
    return-void

    .line 318
    :cond_0
    new-instance v0, Lcom/android/settings/users/UserSettings$3;

    invoke-direct {v0, p0}, Lcom/android/settings/users/UserSettings$3;-><init>(Lcom/android/settings/users/UserSettings;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/settings/users/UserSettings$3;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method private onAddUserClicked(I)V
    .locals 3
    .param p1, "userType"    # I

    .prologue
    .line 372
    iget-object v1, p0, Lcom/android/settings/users/UserSettings;->mUserLock:Ljava/lang/Object;

    monitor-enter v1

    .line 373
    :try_start_0
    iget v0, p0, Lcom/android/settings/users/UserSettings;->mRemovingUserId:I

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    iget-boolean v0, p0, Lcom/android/settings/users/UserSettings;->mAddingUser:Z

    if-nez v0, :cond_0

    .line 374
    packed-switch p1, :pswitch_data_0

    .line 387
    :cond_0
    :goto_0
    monitor-exit v1

    .line 388
    return-void

    .line 376
    :pswitch_0
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/settings/users/UserSettings;->showDialog(I)V

    goto :goto_0

    .line 387
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 379
    :pswitch_1
    :try_start_1
    invoke-direct {p0}, Lcom/android/settings/users/UserSettings;->hasLockscreenSecurity()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 380
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/settings/users/UserSettings;->addUserNow(I)V

    goto :goto_0

    .line 382
    :cond_1
    const/4 v0, 0x7

    invoke-virtual {p0, v0}, Lcom/android/settings/users/UserSettings;->showDialog(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 374
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private onManageUserClicked(IZ)V
    .locals 12
    .param p1, "userId"    # I
    .param p2, "newUser"    # Z

    .prologue
    .line 433
    const/16 v0, -0xb

    if-ne p1, v0, :cond_1

    .line 434
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 435
    .local v2, "extras":Landroid/os/Bundle;
    const-string v0, "guest_user"

    const/4 v1, 0x1

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 436
    invoke-virtual {p0}, Lcom/android/settings/users/UserSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/SettingsActivity;

    const-class v1, Lcom/android/settings/users/UserDetailsSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const v3, 0x7f080852

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Lcom/android/settings/SettingsActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    .line 473
    .end local v2    # "extras":Landroid/os/Bundle;
    :cond_0
    :goto_0
    return-void

    .line 441
    :cond_1
    iget-object v0, p0, Lcom/android/settings/users/UserSettings;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v11

    .line 442
    .local v11, "info":Landroid/content/pm/UserInfo;
    invoke-virtual {v11}, Landroid/content/pm/UserInfo;->isRestricted()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/settings/users/UserSettings;->mIsOwner:Z

    if-eqz v0, :cond_2

    .line 443
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 444
    .restart local v2    # "extras":Landroid/os/Bundle;
    const-string v0, "user_id"

    invoke-virtual {v2, v0, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 445
    const-string v0, "new_user"

    invoke-virtual {v2, v0, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 446
    invoke-virtual {p0}, Lcom/android/settings/users/UserSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/SettingsActivity;

    const-class v1, Lcom/android/settings/users/RestrictedProfileSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const v3, 0x7f08089b

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Lcom/android/settings/SettingsActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    goto :goto_0

    .line 450
    .end local v2    # "extras":Landroid/os/Bundle;
    :cond_2
    iget v0, v11, Landroid/content/pm/UserInfo;->id:I

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    if-ne v0, v1, :cond_6

    .line 452
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 453
    .restart local v2    # "extras":Landroid/os/Bundle;
    invoke-virtual {v11}, Landroid/content/pm/UserInfo;->isRestricted()Z

    move-result v0

    if-nez v0, :cond_3

    .line 454
    const-string v0, "show_nickname"

    const/4 v1, 0x1

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 456
    :cond_3
    iget v0, v11, Landroid/content/pm/UserInfo;->id:I

    if-nez v0, :cond_4

    const v3, 0x7f080137

    .line 459
    .local v3, "titleResId":I
    :goto_1
    invoke-virtual {p0}, Lcom/android/settings/users/UserSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/SettingsActivity;

    const-class v1, Lcom/android/settings/OwnerInfoSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Lcom/android/settings/SettingsActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    goto :goto_0

    .line 456
    .end local v3    # "titleResId":I
    :cond_4
    invoke-virtual {v11}, Landroid/content/pm/UserInfo;->isRestricted()Z

    move-result v0

    if-eqz v0, :cond_5

    const v3, 0x7f08013f

    goto :goto_1

    :cond_5
    const v3, 0x7f08013d

    goto :goto_1

    .line 462
    .end local v2    # "extras":Landroid/os/Bundle;
    :cond_6
    iget-boolean v0, p0, Lcom/android/settings/users/UserSettings;->mIsOwner:Z

    if-eqz v0, :cond_0

    .line 463
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 464
    .restart local v2    # "extras":Landroid/os/Bundle;
    const-string v0, "user_id"

    invoke-virtual {v2, v0, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 465
    invoke-virtual {p0}, Lcom/android/settings/users/UserSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    check-cast v4, Lcom/android/settings/SettingsActivity;

    const-class v0, Lcom/android/settings/users/UserDetailsSettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    const/4 v7, -0x1

    iget-object v8, v11, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v6, v2

    invoke-virtual/range {v4 .. v10}, Lcom/android/settings/SettingsActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    goto/16 :goto_0
.end method

.method private onRemoveUserClicked(I)V
    .locals 3
    .param p1, "userId"    # I

    .prologue
    .line 391
    iget-object v1, p0, Lcom/android/settings/users/UserSettings;->mUserLock:Ljava/lang/Object;

    monitor-enter v1

    .line 392
    :try_start_0
    iget v0, p0, Lcom/android/settings/users/UserSettings;->mRemovingUserId:I

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    iget-boolean v0, p0, Lcom/android/settings/users/UserSettings;->mAddingUser:Z

    if-nez v0, :cond_0

    .line 393
    iput p1, p0, Lcom/android/settings/users/UserSettings;->mRemovingUserId:I

    .line 394
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/settings/users/UserSettings;->showDialog(I)V

    .line 396
    :cond_0
    monitor-exit v1

    .line 397
    return-void

    .line 396
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private onUserCreated(I)V
    .locals 1
    .param p1, "userId"    # I

    .prologue
    .line 476
    iput p1, p0, Lcom/android/settings/users/UserSettings;->mAddedUserId:I

    .line 477
    iget-object v0, p0, Lcom/android/settings/users/UserSettings;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isRestricted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 478
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/android/settings/users/UserSettings;->showDialog(I)V

    .line 482
    :goto_0
    return-void

    .line 480
    :cond_0
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/android/settings/users/UserSettings;->showDialog(I)V

    goto :goto_0
.end method

.method private removeThisUser()V
    .locals 3

    .prologue
    .line 652
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/app/IActivityManager;->switchUser(I)Z

    .line 653
    invoke-virtual {p0}, Lcom/android/settings/users/UserSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "user"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/UserManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/os/UserManager;->removeUser(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 658
    :goto_0
    return-void

    .line 655
    :catch_0
    move-exception v0

    .line 656
    .local v0, "re":Landroid/os/RemoteException;
    const-string v1, "UserSettings"

    const-string v2, "Unable to remove self user"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private removeUserNow()V
    .locals 2

    .prologue
    .line 636
    iget v0, p0, Lcom/android/settings/users/UserSettings;->mRemovingUserId:I

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 637
    invoke-direct {p0}, Lcom/android/settings/users/UserSettings;->removeThisUser()V

    .line 648
    :goto_0
    return-void

    .line 639
    :cond_0
    new-instance v0, Lcom/android/settings/users/UserSettings$11;

    invoke-direct {v0, p0}, Lcom/android/settings/users/UserSettings$11;-><init>(Lcom/android/settings/users/UserSettings;)V

    invoke-virtual {v0}, Lcom/android/settings/users/UserSettings$11;->start()V

    goto :goto_0
.end method

.method private setPhotoId(Landroid/preference/Preference;Landroid/content/pm/UserInfo;)V
    .locals 3
    .param p1, "pref"    # Landroid/preference/Preference;
    .param p2, "user"    # Landroid/content/pm/UserInfo;

    .prologue
    .line 864
    iget-object v1, p0, Lcom/android/settings/users/UserSettings;->mUserIcons:Landroid/util/SparseArray;

    iget v2, p2, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 865
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    .line 866
    invoke-direct {p0, v0}, Lcom/android/settings/users/UserSettings;->encircle(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/preference/Preference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 868
    :cond_0
    return-void
.end method

.method private setUserName(Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 871
    iget-object v0, p0, Lcom/android/settings/users/UserSettings;->mUserManager:Landroid/os/UserManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Landroid/os/UserManager;->setUserName(ILjava/lang/String;)V

    .line 872
    iget-object v0, p0, Lcom/android/settings/users/UserSettings;->mNicknamePreference:Lcom/android/settings/SelectableEditTextPreference;

    invoke-virtual {v0, p1}, Lcom/android/settings/SelectableEditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 873
    invoke-virtual {p0}, Lcom/android/settings/users/UserSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 874
    return-void
.end method

.method private switchUserNow(I)V
    .locals 1
    .param p1, "userId"    # I

    .prologue
    .line 691
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/app/IActivityManager;->switchUser(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 695
    :goto_0
    return-void

    .line 692
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private updateUserList()V
    .locals 18

    .prologue
    .line 709
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/users/UserSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    if-nez v3, :cond_0

    .line 818
    :goto_0
    return-void

    .line 710
    :cond_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/users/UserSettings;->mUserManager:Landroid/os/UserManager;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/os/UserManager;->getUsers(Z)Ljava/util/List;

    move-result-object v16

    .line 711
    .local v16, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/users/UserSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    .line 713
    .local v2, "context":Landroid/content/Context;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/users/UserSettings;->mUserListCategory:Landroid/preference/PreferenceGroup;

    invoke-virtual {v3}, Landroid/preference/PreferenceGroup;->removeAll()V

    .line 714
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/users/UserSettings;->mUserListCategory:Landroid/preference/PreferenceGroup;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceGroup;->setOrderingAsAdded(Z)V

    .line 715
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/users/UserSettings;->mUserListCategory:Landroid/preference/PreferenceGroup;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/users/UserSettings;->mMePreference:Landroid/preference/Preference;

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 717
    invoke-static {v2}, Lcom/android/settings/Utils;->isVoiceCapable(Landroid/content/Context;)Z

    move-result v17

    .line 718
    .local v17, "voiceCapable":Z
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 719
    .local v10, "missingIcons":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-interface/range {v16 .. v16}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_e

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/content/pm/UserInfo;

    .line 720
    .local v15, "user":Landroid/content/pm/UserInfo;
    invoke-virtual {v15}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v3

    if-nez v3, :cond_1

    .line 725
    iget v3, v15, Landroid/content/pm/UserInfo;->id:I

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v4

    if-ne v3, v4, :cond_3

    .line 726
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/users/UserSettings;->mMePreference:Landroid/preference/Preference;

    .line 753
    .local v1, "pref":Landroid/preference/Preference;
    :goto_2
    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/android/settings/users/UserSettings;->isInitialized(Landroid/content/pm/UserInfo;)Z

    move-result v3

    if-nez v3, :cond_b

    .line 754
    invoke-virtual {v15}, Landroid/content/pm/UserInfo;->isRestricted()Z

    move-result v3

    if-eqz v3, :cond_a

    .line 755
    const v3, 0x7f08082f

    invoke-virtual {v1, v3}, Landroid/preference/Preference;->setSummary(I)V

    .line 762
    :cond_2
    :goto_3
    iget-object v3, v15, Landroid/content/pm/UserInfo;->iconPath:Ljava/lang/String;

    if-eqz v3, :cond_d

    .line 763
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/users/UserSettings;->mUserIcons:Landroid/util/SparseArray;

    iget v4, v15, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_c

    .line 765
    iget v3, v15, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v10, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 766
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/users/UserSettings;->getEncircledDefaultIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/preference/Preference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 727
    .end local v1    # "pref":Landroid/preference/Preference;
    :cond_3
    invoke-virtual {v15}, Landroid/content/pm/UserInfo;->isGuest()Z

    move-result v3

    if-nez v3, :cond_1

    .line 739
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/settings/users/UserSettings;->mIsOwner:Z

    if-eqz v3, :cond_6

    if-nez v17, :cond_4

    invoke-virtual {v15}, Landroid/content/pm/UserInfo;->isRestricted()Z

    move-result v3

    if-eqz v3, :cond_6

    :cond_4
    const/4 v14, 0x1

    .line 740
    .local v14, "showSettings":Z
    :goto_4
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/settings/users/UserSettings;->mIsOwner:Z

    if-eqz v3, :cond_7

    if-nez v17, :cond_7

    invoke-virtual {v15}, Landroid/content/pm/UserInfo;->isRestricted()Z

    move-result v3

    if-nez v3, :cond_7

    invoke-virtual {v15}, Landroid/content/pm/UserInfo;->isGuest()Z

    move-result v3

    if-nez v3, :cond_7

    const/4 v12, 0x1

    .line 742
    .local v12, "showDelete":Z
    :goto_5
    new-instance v1, Lcom/android/settings/users/UserPreference;

    const/4 v3, 0x0

    iget v4, v15, Landroid/content/pm/UserInfo;->id:I

    if-eqz v14, :cond_8

    move-object/from16 v5, p0

    :goto_6
    if-eqz v12, :cond_9

    move-object/from16 v6, p0

    :goto_7
    invoke-direct/range {v1 .. v6}, Lcom/android/settings/users/UserPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;ILandroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)V

    .line 745
    .restart local v1    # "pref":Landroid/preference/Preference;
    move-object/from16 v0, p0

    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 746
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v15, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 747
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/users/UserSettings;->mUserListCategory:Landroid/preference/PreferenceGroup;

    invoke-virtual {v3, v1}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 748
    iget v3, v15, Landroid/content/pm/UserInfo;->id:I

    if-nez v3, :cond_5

    .line 749
    const v3, 0x7f080831

    invoke-virtual {v1, v3}, Landroid/preference/Preference;->setSummary(I)V

    .line 751
    :cond_5
    iget-object v3, v15, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 739
    .end local v1    # "pref":Landroid/preference/Preference;
    .end local v12    # "showDelete":Z
    .end local v14    # "showSettings":Z
    :cond_6
    const/4 v14, 0x0

    goto :goto_4

    .line 740
    .restart local v14    # "showSettings":Z
    :cond_7
    const/4 v12, 0x0

    goto :goto_5

    .line 742
    .restart local v12    # "showDelete":Z
    :cond_8
    const/4 v5, 0x0

    goto :goto_6

    :cond_9
    const/4 v6, 0x0

    goto :goto_7

    .line 757
    .end local v12    # "showDelete":Z
    .end local v14    # "showSettings":Z
    .restart local v1    # "pref":Landroid/preference/Preference;
    :cond_a
    const v3, 0x7f08082e

    invoke-virtual {v1, v3}, Landroid/preference/Preference;->setSummary(I)V

    goto/16 :goto_3

    .line 759
    :cond_b
    invoke-virtual {v15}, Landroid/content/pm/UserInfo;->isRestricted()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 760
    const v3, 0x7f08082a

    invoke-virtual {v1, v3}, Landroid/preference/Preference;->setSummary(I)V

    goto/16 :goto_3

    .line 768
    :cond_c
    move-object/from16 v0, p0

    invoke-direct {v0, v1, v15}, Lcom/android/settings/users/UserSettings;->setPhotoId(Landroid/preference/Preference;Landroid/content/pm/UserInfo;)V

    goto/16 :goto_1

    .line 772
    :cond_d
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/users/UserSettings;->getEncircledDefaultIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/preference/Preference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_1

    .line 777
    .end local v1    # "pref":Landroid/preference/Preference;
    .end local v15    # "user":Landroid/content/pm/UserInfo;
    :cond_e
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/settings/users/UserSettings;->mAddingUser:Z

    if-eqz v3, :cond_f

    .line 778
    new-instance v1, Lcom/android/settings/users/UserPreference;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/users/UserSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const/4 v5, 0x0

    const/16 v6, -0xa

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v3, v1

    invoke-direct/range {v3 .. v8}, Lcom/android/settings/users/UserPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;ILandroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)V

    .line 780
    .restart local v1    # "pref":Landroid/preference/Preference;
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 781
    const v3, 0x7f080845

    invoke-virtual {v1, v3}, Landroid/preference/Preference;->setTitle(I)V

    .line 782
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/users/UserSettings;->getEncircledDefaultIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/preference/Preference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 783
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/users/UserSettings;->mUserListCategory:Landroid/preference/PreferenceGroup;

    invoke-virtual {v3, v1}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 786
    .end local v1    # "pref":Landroid/preference/Preference;
    :cond_f
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/settings/users/UserSettings;->mIsGuest:Z

    if-nez v3, :cond_14

    const/4 v13, 0x1

    .line 788
    .local v13, "showGuestPreference":Z
    :goto_8
    if-eqz v13, :cond_11

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/users/UserSettings;->mUserManager:Landroid/os/UserManager;

    const-string v4, "no_add_user"

    invoke-virtual {v3, v4}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_11

    .line 789
    const/4 v13, 0x0

    .line 791
    invoke-interface/range {v16 .. v16}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_10
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_11

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/content/pm/UserInfo;

    .line 792
    .restart local v15    # "user":Landroid/content/pm/UserInfo;
    invoke-virtual {v15}, Landroid/content/pm/UserInfo;->isGuest()Z

    move-result v3

    if-eqz v3, :cond_10

    .line 793
    const/4 v13, 0x1

    .line 798
    .end local v15    # "user":Landroid/content/pm/UserInfo;
    :cond_11
    if-eqz v13, :cond_12

    .line 800
    new-instance v1, Lcom/android/settings/users/UserPreference;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/users/UserSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const/4 v5, 0x0

    const/16 v6, -0xb

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/settings/users/UserSettings;->mIsOwner:Z

    if-eqz v3, :cond_15

    if-eqz v17, :cond_15

    move-object/from16 v7, p0

    :goto_9
    const/4 v8, 0x0

    move-object v3, v1

    invoke-direct/range {v3 .. v8}, Lcom/android/settings/users/UserPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;ILandroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)V

    .line 804
    .restart local v1    # "pref":Landroid/preference/Preference;
    const v3, 0x7f080852

    invoke-virtual {v1, v3}, Landroid/preference/Preference;->setTitle(I)V

    .line 805
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/users/UserSettings;->getEncircledDefaultIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/preference/Preference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 806
    move-object/from16 v0, p0

    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 807
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/users/UserSettings;->mUserListCategory:Landroid/preference/PreferenceGroup;

    invoke-virtual {v3, v1}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 810
    .end local v1    # "pref":Landroid/preference/Preference;
    :cond_12
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/users/UserSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 813
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_13

    .line 814
    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/android/settings/users/UserSettings;->loadIconsAsync(Ljava/util/List;)V

    .line 816
    :cond_13
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/users/UserSettings;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v3}, Landroid/os/UserManager;->canAddMoreUsers()Z

    move-result v11

    .line 817
    .local v11, "moreUsers":Z
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/users/UserSettings;->mAddUser:Landroid/preference/Preference;

    invoke-virtual {v3, v11}, Landroid/preference/Preference;->setEnabled(Z)V

    goto/16 :goto_0

    .line 786
    .end local v11    # "moreUsers":Z
    .end local v13    # "showGuestPreference":Z
    :cond_14
    const/4 v13, 0x0

    goto :goto_8

    .line 800
    .restart local v13    # "showGuestPreference":Z
    :cond_15
    const/4 v7, 0x0

    goto :goto_9
.end method


# virtual methods
.method public getHelpResource()I
    .locals 1

    .prologue
    .line 986
    const v0, 0x7f080881

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 360
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 362
    const/16 v0, 0xa

    if-ne p1, v0, :cond_1

    .line 363
    if-eqz p2, :cond_0

    invoke-direct {p0}, Lcom/android/settings/users/UserSettings;->hasLockscreenSecurity()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 364
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/settings/users/UserSettings;->addUserNow(I)V

    .line 369
    :cond_0
    :goto_0
    return-void

    .line 367
    :cond_1
    iget-object v0, p0, Lcom/android/settings/users/UserSettings;->mEditUserInfoController:Lcom/android/settings/users/EditUserInfoController;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/settings/users/EditUserInfoController;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 949
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lcom/android/settings/users/UserPreference;

    if-eqz v1, :cond_0

    .line 950
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/users/UserPreference;

    invoke-virtual {v1}, Lcom/android/settings/users/UserPreference;->getUserId()I

    move-result v0

    .line 951
    .local v0, "userId":I
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 960
    .end local v0    # "userId":I
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 953
    .restart local v0    # "userId":I
    :pswitch_1
    invoke-direct {p0, v0}, Lcom/android/settings/users/UserSettings;->onRemoveUserClicked(I)V

    goto :goto_0

    .line 956
    :pswitch_2
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/settings/users/UserSettings;->onManageUserClicked(IZ)V

    goto :goto_0

    .line 951
    nop

    :pswitch_data_0
    .packed-switch 0x7f0e0124
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 12
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    const/4 v6, 0x1

    const/4 v8, 0x0

    const/4 v2, 0x0

    .line 181
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 183
    if-eqz p1, :cond_2

    .line 184
    const-string v0, "adding_user"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 185
    const-string v0, "adding_user"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/settings/users/UserSettings;->mAddedUserId:I

    .line 187
    :cond_0
    const-string v0, "removing_user"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 188
    const-string v0, "removing_user"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/settings/users/UserSettings;->mRemovingUserId:I

    .line 190
    :cond_1
    iget-object v0, p0, Lcom/android/settings/users/UserSettings;->mEditUserInfoController:Lcom/android/settings/users/EditUserInfoController;

    invoke-virtual {v0, p1}, Lcom/android/settings/users/EditUserInfoController;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 192
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/users/UserSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 193
    .local v1, "context":Landroid/content/Context;
    const-string v0, "user"

    invoke-virtual {v1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    iput-object v0, p0, Lcom/android/settings/users/UserSettings;->mUserManager:Landroid/os/UserManager;

    .line 194
    iget-object v0, p0, Lcom/android/settings/users/UserSettings;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0}, Landroid/os/UserManager;->getUserCount()I

    move-result v0

    if-le v0, v6, :cond_5

    move v11, v6

    .line 195
    .local v11, "hasMultipleUsers":Z
    :goto_0
    invoke-static {}, Landroid/os/UserManager;->supportsMultipleUsers()Z

    move-result v0

    if-nez v0, :cond_3

    if-eqz v11, :cond_4

    :cond_3
    invoke-static {}, Lcom/android/settings/Utils;->isMonkeyRunning()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 197
    :cond_4
    iput-boolean v8, p0, Lcom/android/settings/users/UserSettings;->mEnabled:Z

    .line 235
    :goto_1
    return-void

    .end local v11    # "hasMultipleUsers":Z
    :cond_5
    move v11, v8

    .line 194
    goto :goto_0

    .line 201
    .restart local v11    # "hasMultipleUsers":Z
    :cond_6
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    .line 202
    .local v3, "myUserId":I
    iget-object v0, p0, Lcom/android/settings/users/UserSettings;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0, v3}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isGuest()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/users/UserSettings;->mIsGuest:Z

    .line 204
    const v0, 0x7f050041

    invoke-virtual {p0, v0}, Lcom/android/settings/users/UserSettings;->addPreferencesFromResource(I)V

    .line 205
    const-string v0, "user_list"

    invoke-virtual {p0, v0}, Lcom/android/settings/users/UserSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceGroup;

    iput-object v0, p0, Lcom/android/settings/users/UserSettings;->mUserListCategory:Landroid/preference/PreferenceGroup;

    .line 206
    new-instance v0, Lcom/android/settings/users/UserPreference;

    move-object v4, v2

    move-object v5, v2

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/users/UserPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;ILandroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)V

    iput-object v0, p0, Lcom/android/settings/users/UserSettings;->mMePreference:Landroid/preference/Preference;

    .line 209
    iget-object v0, p0, Lcom/android/settings/users/UserSettings;->mMePreference:Landroid/preference/Preference;

    const-string v4, "user_me"

    invoke-virtual {v0, v4}, Landroid/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 210
    iget-object v0, p0, Lcom/android/settings/users/UserSettings;->mMePreference:Landroid/preference/Preference;

    invoke-virtual {v0, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 211
    iget-boolean v0, p0, Lcom/android/settings/users/UserSettings;->mIsOwner:Z

    if-eqz v0, :cond_7

    .line 212
    iget-object v0, p0, Lcom/android/settings/users/UserSettings;->mMePreference:Landroid/preference/Preference;

    const v4, 0x7f080831

    invoke-virtual {v0, v4}, Landroid/preference/Preference;->setSummary(I)V

    .line 214
    :cond_7
    const-string v0, "user_add"

    invoke-virtual {p0, v0}, Lcom/android/settings/users/UserSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/users/UserSettings;->mAddUser:Landroid/preference/Preference;

    .line 215
    iget-boolean v0, p0, Lcom/android/settings/users/UserSettings;->mIsOwner:Z

    if-eqz v0, :cond_8

    invoke-static {}, Landroid/os/UserManager;->getMaxSupportedUsers()I

    move-result v0

    const/4 v4, 0x2

    if-lt v0, v4, :cond_8

    invoke-static {}, Landroid/os/UserManager;->supportsMultipleUsers()Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/android/settings/users/UserSettings;->mUserManager:Landroid/os/UserManager;

    const-string v4, "no_add_user"

    invoke-virtual {v0, v4}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 218
    :cond_8
    const-string v0, "user_add"

    invoke-virtual {p0, v0}, Lcom/android/settings/users/UserSettings;->removePreference(Ljava/lang/String;)V

    .line 229
    :cond_9
    :goto_2
    invoke-direct {p0}, Lcom/android/settings/users/UserSettings;->loadProfile()V

    .line 230
    invoke-virtual {p0, v6}, Lcom/android/settings/users/UserSettings;->setHasOptionsMenu(Z)V

    .line 231
    new-instance v7, Landroid/content/IntentFilter;

    const-string v0, "android.intent.action.USER_REMOVED"

    invoke-direct {v7, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 232
    .local v7, "filter":Landroid/content/IntentFilter;
    const-string v0, "android.intent.action.USER_INFO_CHANGED"

    invoke-virtual {v7, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 233
    iget-object v5, p0, Lcom/android/settings/users/UserSettings;->mUserChangeReceiver:Landroid/content/BroadcastReceiver;

    sget-object v6, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    iget-object v9, p0, Lcom/android/settings/users/UserSettings;->mHandler:Landroid/os/Handler;

    move-object v4, v1

    move-object v8, v2

    invoke-virtual/range {v4 .. v9}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    goto/16 :goto_1

    .line 220
    .end local v7    # "filter":Landroid/content/IntentFilter;
    :cond_a
    iget-object v0, p0, Lcom/android/settings/users/UserSettings;->mAddUser:Landroid/preference/Preference;

    invoke-virtual {v0, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 221
    const-string v0, "device_policy"

    invoke-virtual {v1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/app/admin/DevicePolicyManager;

    .line 224
    .local v10, "dpm":Landroid/app/admin/DevicePolicyManager;
    invoke-virtual {v10}, Landroid/app/admin/DevicePolicyManager;->getDeviceOwner()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_b

    invoke-static {v1}, Lcom/android/settings/Utils;->isVoiceCapable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 225
    :cond_b
    iput-boolean v8, p0, Lcom/android/settings/users/UserSettings;->mCanAddRestrictedProfile:Z

    .line 226
    iget-object v0, p0, Lcom/android/settings/users/UserSettings;->mAddUser:Landroid/preference/Preference;

    const v4, 0x7f080829

    invoke-virtual {v0, v4}, Landroid/preference/Preference;->setTitle(I)V

    goto :goto_2
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 21
    .param p1, "dialogId"    # I

    .prologue
    .line 493
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/users/UserSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    .line 494
    .local v5, "context":Landroid/content/Context;
    if-nez v5, :cond_0

    const/16 v16, 0x0

    .line 631
    :goto_0
    return-object v16

    .line 495
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 631
    const/16 v16, 0x0

    goto :goto_0

    .line 497
    :pswitch_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/users/UserSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/settings/users/UserSettings;->mRemovingUserId:I

    new-instance v8, Lcom/android/settings/users/UserSettings$4;

    move-object/from16 v0, p0

    invoke-direct {v8, v0}, Lcom/android/settings/users/UserSettings$4;-><init>(Lcom/android/settings/users/UserSettings;)V

    invoke-static {v4, v7, v8}, Lcom/android/settings/Utils;->createRemoveConfirmationDialog(Landroid/content/Context;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/Dialog;

    move-result-object v16

    .line 505
    .local v16, "dlg":Landroid/app/Dialog;
    goto :goto_0

    .line 508
    .end local v16    # "dlg":Landroid/app/Dialog;
    :pswitch_1
    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-direct {v4, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v7, 0x7f080841

    invoke-virtual {v4, v7}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v7, 0x104000a

    const/4 v8, 0x0

    invoke-virtual {v4, v7, v8}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v16

    goto :goto_0

    .line 513
    :pswitch_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/users/UserSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const/4 v7, 0x0

    invoke-virtual {v4, v7}, Landroid/app/Activity;->getPreferences(I)Landroid/content/SharedPreferences;

    move-result-object v19

    .line 515
    .local v19, "preferences":Landroid/content/SharedPreferences;
    const-string v4, "key_add_user_long_message_displayed"

    const/4 v7, 0x0

    move-object/from16 v0, v19

    invoke-interface {v0, v4, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v17

    .line 517
    .local v17, "longMessageDisplayed":Z
    if-eqz v17, :cond_1

    const v18, 0x7f08083b

    .line 520
    .local v18, "messageResId":I
    :goto_1
    const/4 v4, 0x2

    move/from16 v0, p1

    if-ne v0, v4, :cond_2

    const/16 v20, 0x1

    .line 522
    .local v20, "userType":I
    :goto_2
    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-direct {v4, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v7, 0x7f080839

    invoke-virtual {v4, v7}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    move/from16 v0, v18

    invoke-virtual {v4, v0}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v7, 0x104000a

    new-instance v8, Lcom/android/settings/users/UserSettings$5;

    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v2, v17

    move-object/from16 v3, v19

    invoke-direct {v8, v0, v1, v2, v3}, Lcom/android/settings/users/UserSettings$5;-><init>(Lcom/android/settings/users/UserSettings;IZLandroid/content/SharedPreferences;)V

    invoke-virtual {v4, v7, v8}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const/high16 v7, 0x1040000

    const/4 v8, 0x0

    invoke-virtual {v4, v7, v8}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v16

    .line 537
    .restart local v16    # "dlg":Landroid/app/Dialog;
    goto/16 :goto_0

    .line 517
    .end local v16    # "dlg":Landroid/app/Dialog;
    .end local v18    # "messageResId":I
    .end local v20    # "userType":I
    :cond_1
    const v18, 0x7f08083a

    goto :goto_1

    .line 520
    .restart local v18    # "messageResId":I
    :cond_2
    const/16 v20, 0x2

    goto :goto_2

    .line 540
    .end local v17    # "longMessageDisplayed":Z
    .end local v18    # "messageResId":I
    .end local v19    # "preferences":Landroid/content/SharedPreferences;
    :pswitch_3
    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-direct {v4, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v7, 0x7f08083c

    invoke-virtual {v4, v7}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v7, 0x7f08083d

    invoke-virtual {v4, v7}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v7, 0x7f08083f

    new-instance v8, Lcom/android/settings/users/UserSettings$6;

    move-object/from16 v0, p0

    invoke-direct {v8, v0}, Lcom/android/settings/users/UserSettings$6;-><init>(Lcom/android/settings/users/UserSettings;)V

    invoke-virtual {v4, v7, v8}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v7, 0x7f080840

    const/4 v8, 0x0

    invoke-virtual {v4, v7, v8}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v16

    .line 551
    .restart local v16    # "dlg":Landroid/app/Dialog;
    goto/16 :goto_0

    .line 554
    .end local v16    # "dlg":Landroid/app/Dialog;
    :pswitch_4
    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-direct {v4, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v7, 0x7f08083e

    invoke-virtual {v4, v7}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v7, 0x104000a

    new-instance v8, Lcom/android/settings/users/UserSettings$7;

    move-object/from16 v0, p0

    invoke-direct {v8, v0}, Lcom/android/settings/users/UserSettings$7;-><init>(Lcom/android/settings/users/UserSettings;)V

    invoke-virtual {v4, v7, v8}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const/high16 v7, 0x1040000

    const/4 v8, 0x0

    invoke-virtual {v4, v7, v8}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v16

    .line 564
    .restart local v16    # "dlg":Landroid/app/Dialog;
    goto/16 :goto_0

    .line 567
    .end local v16    # "dlg":Landroid/app/Dialog;
    :pswitch_5
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 568
    .local v6, "data":Ljava/util/List;, "Ljava/util/List<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;>;"
    new-instance v15, Ljava/util/HashMap;

    invoke-direct {v15}, Ljava/util/HashMap;-><init>()V

    .line 569
    .local v15, "addUserItem":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v4, "title"

    const v7, 0x7f080837

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/android/settings/users/UserSettings;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v15, v4, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 570
    const-string v4, "summary"

    const v7, 0x7f080835

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/android/settings/users/UserSettings;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v15, v4, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 571
    new-instance v14, Ljava/util/HashMap;

    invoke-direct {v14}, Ljava/util/HashMap;-><init>()V

    .line 572
    .local v14, "addProfileItem":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v4, "title"

    const v7, 0x7f080838

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/android/settings/users/UserSettings;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v14, v4, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 573
    const-string v4, "summary"

    const v7, 0x7f080836

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/android/settings/users/UserSettings;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v14, v4, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 574
    invoke-interface {v6, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 575
    invoke-interface {v6, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 576
    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-direct {v4, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v7, 0x7f080834

    invoke-virtual {v4, v7}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v10

    new-instance v4, Landroid/widget/SimpleAdapter;

    const v7, 0x7f0400bb

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    const-string v11, "title"

    aput-object v11, v8, v9

    const/4 v9, 0x1

    const-string v11, "summary"

    aput-object v11, v8, v9

    const/4 v9, 0x2

    new-array v9, v9, [I

    fill-array-data v9, :array_0

    invoke-direct/range {v4 .. v9}, Landroid/widget/SimpleAdapter;-><init>(Landroid/content/Context;Ljava/util/List;I[Ljava/lang/String;[I)V

    new-instance v7, Lcom/android/settings/users/UserSettings$8;

    move-object/from16 v0, p0

    invoke-direct {v7, v0}, Lcom/android/settings/users/UserSettings$8;-><init>(Lcom/android/settings/users/UserSettings;)V

    invoke-virtual {v10, v4, v7}, Landroid/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v16

    .line 589
    .restart local v16    # "dlg":Landroid/app/Dialog;
    goto/16 :goto_0

    .line 592
    .end local v6    # "data":Ljava/util/List;, "Ljava/util/List<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;>;"
    .end local v14    # "addProfileItem":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v15    # "addUserItem":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v16    # "dlg":Landroid/app/Dialog;
    :pswitch_6
    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-direct {v4, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v7, 0x7f08082c

    invoke-virtual {v4, v7}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v7, 0x7f08082d

    new-instance v8, Lcom/android/settings/users/UserSettings$9;

    move-object/from16 v0, p0

    invoke-direct {v8, v0}, Lcom/android/settings/users/UserSettings$9;-><init>(Lcom/android/settings/users/UserSettings;)V

    invoke-virtual {v4, v7, v8}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const/high16 v7, 0x1040000

    const/4 v8, 0x0

    invoke-virtual {v4, v7, v8}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v16

    .line 603
    .restart local v16    # "dlg":Landroid/app/Dialog;
    goto/16 :goto_0

    .line 606
    .end local v16    # "dlg":Landroid/app/Dialog;
    :pswitch_7
    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-direct {v4, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v7, 0x7f080854

    invoke-virtual {v4, v7}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v7, 0x7f080855

    invoke-virtual {v4, v7}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v7, 0x7f080856

    new-instance v8, Lcom/android/settings/users/UserSettings$10;

    move-object/from16 v0, p0

    invoke-direct {v8, v0}, Lcom/android/settings/users/UserSettings$10;-><init>(Lcom/android/settings/users/UserSettings;)V

    invoke-virtual {v4, v7, v8}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const/high16 v7, 0x1040000

    const/4 v8, 0x0

    invoke-virtual {v4, v7, v8}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v16

    .line 618
    .restart local v16    # "dlg":Landroid/app/Dialog;
    goto/16 :goto_0

    .line 621
    .end local v16    # "dlg":Landroid/app/Dialog;
    :pswitch_8
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/settings/users/UserSettings;->mEditUserInfoController:Lcom/android/settings/users/EditUserInfoController;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/users/UserSettings;->mMePreference:Landroid/preference/Preference;

    invoke-virtual {v4}, Landroid/preference/Preference;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v9

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/users/UserSettings;->mMePreference:Landroid/preference/Preference;

    invoke-virtual {v4}, Landroid/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v10

    const v11, 0x7f08013f

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v13

    move-object/from16 v8, p0

    move-object/from16 v12, p0

    invoke-virtual/range {v7 .. v13}, Lcom/android/settings/users/EditUserInfoController;->createDialog(Landroid/app/Fragment;Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;ILcom/android/settings/users/EditUserInfoController$OnContentChangedCallback;Landroid/os/UserHandle;)Landroid/app/Dialog;

    move-result-object v16

    .line 628
    .restart local v16    # "dlg":Landroid/app/Dialog;
    goto/16 :goto_0

    .line 495
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_1
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch

    .line 576
    :array_0
    .array-data 4
        0x7f0e0035
        0x7f0e0046
    .end array-data
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 11
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 272
    const/4 v2, 0x0

    .line 273
    .local v2, "pos":I
    invoke-virtual {p0}, Lcom/android/settings/users/UserSettings;->getActivity()Landroid/app/Activity;

    move-result-object v8

    const-string v9, "user"

    invoke-virtual {v8, v9}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/UserManager;

    .line 274
    .local v5, "um":Landroid/os/UserManager;
    iget-boolean v8, p0, Lcom/android/settings/users/UserSettings;->mIsOwner:Z

    if-nez v8, :cond_0

    const-string v8, "no_remove_user"

    invoke-virtual {v5, v8}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 275
    iget-object v8, p0, Lcom/android/settings/users/UserSettings;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v8}, Landroid/os/UserManager;->getUserName()Ljava/lang/String;

    move-result-object v1

    .line 276
    .local v1, "nickname":Ljava/lang/String;
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "pos":I
    .local v3, "pos":I
    invoke-virtual {p0}, Lcom/android/settings/users/UserSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f080843

    new-array v10, v6, [Ljava/lang/Object;

    aput-object v1, v10, v7

    invoke-virtual {v8, v9, v10}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-interface {p1, v7, v6, v2, v8}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v4

    .line 278
    .local v4, "removeThisUser":Landroid/view/MenuItem;
    invoke-interface {v4, v7}, Landroid/view/MenuItem;->setShowAsAction(I)V

    move v2, v3

    .line 280
    .end local v1    # "nickname":Ljava/lang/String;
    .end local v3    # "pos":I
    .end local v4    # "removeThisUser":Landroid/view/MenuItem;
    .restart local v2    # "pos":I
    :cond_0
    iget-boolean v8, p0, Lcom/android/settings/users/UserSettings;->mIsOwner:Z

    if-eqz v8, :cond_1

    const-string v8, "no_add_user"

    invoke-virtual {v5, v8}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 281
    const/4 v8, 0x2

    add-int/lit8 v3, v2, 0x1

    .end local v2    # "pos":I
    .restart local v3    # "pos":I
    const v9, 0x7f080844

    invoke-interface {p1, v7, v8, v2, v9}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 283
    .local v0, "allowAddOnLockscreen":Landroid/view/MenuItem;
    invoke-interface {v0, v6}, Landroid/view/MenuItem;->setCheckable(Z)Landroid/view/MenuItem;

    .line 284
    invoke-virtual {p0}, Lcom/android/settings/users/UserSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "add_users_when_locked"

    invoke-static {v8, v9, v7}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    if-ne v8, v6, :cond_2

    :goto_0
    invoke-interface {v0, v6}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    move v2, v3

    .line 287
    .end local v0    # "allowAddOnLockscreen":Landroid/view/MenuItem;
    .end local v3    # "pos":I
    .restart local v2    # "pos":I
    :cond_1
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 288
    return-void

    .end local v2    # "pos":I
    .restart local v0    # "allowAddOnLockscreen":Landroid/view/MenuItem;
    .restart local v3    # "pos":I
    :cond_2
    move v6, v7

    .line 284
    goto :goto_0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 249
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDestroy()V

    .line 251
    iget-boolean v0, p0, Lcom/android/settings/users/UserSettings;->mEnabled:Z

    if-nez v0, :cond_0

    .line 254
    :goto_0
    return-void

    .line 253
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/users/UserSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/users/UserSettings;->mUserChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    goto :goto_0
.end method

.method public onDialogShowing()V
    .locals 0

    .prologue
    .line 486
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDialogShowing()V

    .line 488
    invoke-virtual {p0, p0}, Lcom/android/settings/users/UserSettings;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 489
    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 964
    iget-object v1, p0, Lcom/android/settings/users/UserSettings;->mUserLock:Ljava/lang/Object;

    monitor-enter v1

    .line 965
    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/android/settings/users/UserSettings;->mAddingUser:Z

    .line 966
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings/users/UserSettings;->mRemovingUserId:I

    .line 967
    invoke-direct {p0}, Lcom/android/settings/users/UserSettings;->updateUserList()V

    .line 968
    monitor-exit v1

    .line 969
    return-void

    .line 968
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onLabelChanged(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "label"    # Ljava/lang/CharSequence;

    .prologue
    .line 996
    iget-object v0, p0, Lcom/android/settings/users/UserSettings;->mMePreference:Landroid/preference/Preference;

    invoke-virtual {v0, p1}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 997
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 7
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 292
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    .line 293
    .local v1, "itemId":I
    if-ne v1, v4, :cond_0

    .line 294
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/settings/users/UserSettings;->onRemoveUserClicked(I)V

    .line 303
    :goto_0
    return v4

    .line 296
    :cond_0
    const/4 v2, 0x2

    if-ne v1, v2, :cond_3

    .line 297
    invoke-interface {p1}, Landroid/view/MenuItem;->isChecked()Z

    move-result v0

    .line 298
    .local v0, "isChecked":Z
    invoke-virtual {p0}, Lcom/android/settings/users/UserSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "add_users_when_locked"

    if-eqz v0, :cond_2

    move v2, v3

    :goto_1
    invoke-static {v5, v6, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 300
    if-nez v0, :cond_1

    move v3, v4

    :cond_1
    invoke-interface {p1, v3}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    goto :goto_0

    :cond_2
    move v2, v4

    .line 298
    goto :goto_1

    .line 303
    .end local v0    # "isChecked":Z
    :cond_3
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v4

    goto :goto_0
.end method

.method public onPhotoChanged(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "photo"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 991
    iget-object v0, p0, Lcom/android/settings/users/UserSettings;->mMePreference:Landroid/preference/Preference;

    invoke-virtual {v0, p1}, Landroid/preference/Preference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 992
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 2
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    .line 973
    iget-object v1, p0, Lcom/android/settings/users/UserSettings;->mNicknamePreference:Lcom/android/settings/SelectableEditTextPreference;

    if-ne p1, v1, :cond_1

    move-object v0, p2

    .line 974
    check-cast v0, Ljava/lang/String;

    .line 975
    .local v0, "value":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/settings/users/UserSettings;->mNicknamePreference:Lcom/android/settings/SelectableEditTextPreference;

    if-ne p1, v1, :cond_0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 977
    invoke-direct {p0, v0}, Lcom/android/settings/users/UserSettings;->setUserName(Ljava/lang/String;)V

    .line 979
    :cond_0
    const/4 v1, 0x1

    .line 981
    .end local v0    # "value":Ljava/lang/String;
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 8
    .param p1, "pref"    # Landroid/preference/Preference;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 878
    iget-object v4, p0, Lcom/android/settings/users/UserSettings;->mMePreference:Landroid/preference/Preference;

    if-ne p1, v4, :cond_3

    .line 879
    iget-boolean v4, p0, Lcom/android/settings/users/UserSettings;->mIsGuest:Z

    if-eqz v4, :cond_0

    .line 880
    const/16 v3, 0x8

    invoke-virtual {p0, v3}, Lcom/android/settings/users/UserSettings;->showDialog(I)V

    .line 912
    .end local p1    # "pref":Landroid/preference/Preference;
    :goto_0
    return v2

    .line 884
    .restart local p1    # "pref":Landroid/preference/Preference;
    :cond_0
    iget-object v2, p0, Lcom/android/settings/users/UserSettings;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v2}, Landroid/os/UserManager;->isLinkedUser()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 885
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-direct {p0, v2, v3}, Lcom/android/settings/users/UserSettings;->onManageUserClicked(IZ)V

    .end local p1    # "pref":Landroid/preference/Preference;
    :cond_1
    :goto_1
    move v2, v3

    .line 912
    goto :goto_0

    .line 887
    .restart local p1    # "pref":Landroid/preference/Preference;
    :cond_2
    const/16 v2, 0x9

    invoke-virtual {p0, v2}, Lcom/android/settings/users/UserSettings;->showDialog(I)V

    goto :goto_1

    .line 889
    :cond_3
    instance-of v4, p1, Lcom/android/settings/users/UserPreference;

    if-eqz v4, :cond_6

    .line 890
    check-cast p1, Lcom/android/settings/users/UserPreference;

    .end local p1    # "pref":Landroid/preference/Preference;
    invoke-virtual {p1}, Lcom/android/settings/users/UserPreference;->getUserId()I

    move-result v1

    .line 891
    .local v1, "userId":I
    const/16 v2, -0xb

    if-ne v1, v2, :cond_4

    .line 892
    invoke-direct {p0}, Lcom/android/settings/users/UserSettings;->createAndSwitchToGuestUser()V

    goto :goto_1

    .line 895
    :cond_4
    iget-object v2, p0, Lcom/android/settings/users/UserSettings;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v2, v1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    .line 896
    .local v0, "user":Landroid/content/pm/UserInfo;
    invoke-direct {p0, v0}, Lcom/android/settings/users/UserSettings;->isInitialized(Landroid/content/pm/UserInfo;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 897
    iget-object v2, p0, Lcom/android/settings/users/UserSettings;->mHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/android/settings/users/UserSettings;->mHandler:Landroid/os/Handler;

    const/4 v5, 0x2

    iget v6, v0, Landroid/content/pm/UserInfo;->id:I

    iget v7, v0, Landroid/content/pm/UserInfo;->serialNumber:I

    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_1

    .line 900
    :cond_5
    invoke-direct {p0, v1}, Lcom/android/settings/users/UserSettings;->switchUserNow(I)V

    goto :goto_1

    .line 903
    .end local v0    # "user":Landroid/content/pm/UserInfo;
    .end local v1    # "userId":I
    .restart local p1    # "pref":Landroid/preference/Preference;
    :cond_6
    iget-object v4, p0, Lcom/android/settings/users/UserSettings;->mAddUser:Landroid/preference/Preference;

    if-ne p1, v4, :cond_1

    .line 906
    iget-boolean v4, p0, Lcom/android/settings/users/UserSettings;->mCanAddRestrictedProfile:Z

    if-eqz v4, :cond_7

    .line 907
    const/4 v2, 0x6

    invoke-virtual {p0, v2}, Lcom/android/settings/users/UserSettings;->showDialog(I)V

    goto :goto_1

    .line 909
    :cond_7
    invoke-direct {p0, v2}, Lcom/android/settings/users/UserSettings;->onAddUserClicked(I)V

    goto :goto_1
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 239
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 241
    iget-boolean v0, p0, Lcom/android/settings/users/UserSettings;->mEnabled:Z

    if-nez v0, :cond_0

    .line 245
    :goto_0
    return-void

    .line 243
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/users/UserSettings;->loadProfile()V

    .line 244
    invoke-direct {p0}, Lcom/android/settings/users/UserSettings;->updateUserList()V

    goto :goto_0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 258
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 259
    iget-object v0, p0, Lcom/android/settings/users/UserSettings;->mEditUserInfoController:Lcom/android/settings/users/EditUserInfoController;

    invoke-virtual {v0, p1}, Lcom/android/settings/users/EditUserInfoController;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 260
    const-string v0, "adding_user"

    iget v1, p0, Lcom/android/settings/users/UserSettings;->mAddedUserId:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 261
    const-string v0, "removing_user"

    iget v1, p0, Lcom/android/settings/users/UserSettings;->mRemovingUserId:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 262
    return-void
.end method

.method public startActivityForResult(Landroid/content/Intent;I)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "requestCode"    # I

    .prologue
    .line 266
    iget-object v0, p0, Lcom/android/settings/users/UserSettings;->mEditUserInfoController:Lcom/android/settings/users/EditUserInfoController;

    invoke-virtual {v0}, Lcom/android/settings/users/EditUserInfoController;->startingActivityForResult()V

    .line 267
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 268
    return-void
.end method
