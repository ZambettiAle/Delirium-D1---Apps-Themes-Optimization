.class public Lcom/android/settings/tts/TtsEngineSettingsFragment;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "TtsEngineSettingsFragment.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# instance fields
.field private mEngineSettingsIntent:Landroid/content/Intent;

.field private mEngineSettingsPreference:Landroid/preference/Preference;

.field private mEnginesHelper:Landroid/speech/tts/TtsEngines;

.field private mInstallVoicesPreference:Landroid/preference/Preference;

.field private final mLanguagesChangedReceiver:Landroid/content/BroadcastReceiver;

.field private mLocalePreference:Landroid/preference/ListPreference;

.field private mSelectedLocaleIndex:I

.field private mTts:Landroid/speech/tts/TextToSpeech;

.field private final mTtsInitListener:Landroid/speech/tts/TextToSpeech$OnInitListener;

.field private mVoiceDataDetails:Landroid/content/Intent;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 99
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 70
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings/tts/TtsEngineSettingsFragment;->mSelectedLocaleIndex:I

    .line 72
    new-instance v0, Lcom/android/settings/tts/TtsEngineSettingsFragment$1;

    invoke-direct {v0, p0}, Lcom/android/settings/tts/TtsEngineSettingsFragment$1;-><init>(Lcom/android/settings/tts/TtsEngineSettingsFragment;)V

    iput-object v0, p0, Lcom/android/settings/tts/TtsEngineSettingsFragment;->mTtsInitListener:Landroid/speech/tts/TextToSpeech$OnInitListener;

    .line 88
    new-instance v0, Lcom/android/settings/tts/TtsEngineSettingsFragment$2;

    invoke-direct {v0, p0}, Lcom/android/settings/tts/TtsEngineSettingsFragment$2;-><init>(Lcom/android/settings/tts/TtsEngineSettingsFragment;)V

    iput-object v0, p0, Lcom/android/settings/tts/TtsEngineSettingsFragment;->mLanguagesChangedReceiver:Landroid/content/BroadcastReceiver;

    .line 100
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/tts/TtsEngineSettingsFragment;)Landroid/preference/ListPreference;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/tts/TtsEngineSettingsFragment;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/settings/tts/TtsEngineSettingsFragment;->mLocalePreference:Landroid/preference/ListPreference;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/tts/TtsEngineSettingsFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/tts/TtsEngineSettingsFragment;

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/android/settings/tts/TtsEngineSettingsFragment;->checkTtsData()V

    return-void
.end method

.method private final checkTtsData()V
    .locals 5

    .prologue
    .line 180
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.speech.tts.engine.CHECK_TTS_DATA"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 181
    .local v1, "intent":Landroid/content/Intent;
    invoke-direct {p0}, Lcom/android/settings/tts/TtsEngineSettingsFragment;->getEngineName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 184
    const/16 v2, 0x7b9

    :try_start_0
    invoke-virtual {p0, v1, v2}, Lcom/android/settings/tts/TtsEngineSettingsFragment;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 188
    :goto_0
    return-void

    .line 185
    :catch_0
    move-exception v0

    .line 186
    .local v0, "ex":Landroid/content/ActivityNotFoundException;
    const-string v2, "TtsEngineSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to check TTS data, no activity found for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private getEngineLabel()Ljava/lang/String;
    .locals 2

    .prologue
    .line 363
    invoke-virtual {p0}, Lcom/android/settings/tts/TtsEngineSettingsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "label"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getEngineName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 359
    invoke-virtual {p0}, Lcom/android/settings/tts/TtsEngineSettingsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "name"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private installVoiceData()V
    .locals 5

    .prologue
    .line 298
    invoke-direct {p0}, Lcom/android/settings/tts/TtsEngineSettingsFragment;->getEngineName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 307
    :goto_0
    return-void

    .line 299
    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.speech.tts.engine.INSTALL_TTS_DATA"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 300
    .local v1, "intent":Landroid/content/Intent;
    invoke-direct {p0}, Lcom/android/settings/tts/TtsEngineSettingsFragment;->getEngineName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 302
    :try_start_0
    const-string v2, "TtsEngineSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Installing voice data: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    invoke-virtual {p0, v1}, Lcom/android/settings/tts/TtsEngineSettingsFragment;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 304
    :catch_0
    move-exception v0

    .line 305
    .local v0, "ex":Landroid/content/ActivityNotFoundException;
    const-string v2, "TtsEngineSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to install TTS data, no acitivty found for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private setLocalePreference(I)V
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 284
    if-gez p1, :cond_0

    .line 285
    iget-object v0, p0, Lcom/android/settings/tts/TtsEngineSettingsFragment;->mLocalePreference:Landroid/preference/ListPreference;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 286
    iget-object v0, p0, Lcom/android/settings/tts/TtsEngineSettingsFragment;->mLocalePreference:Landroid/preference/ListPreference;

    const v1, 0x7f08068e

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(I)V

    .line 291
    :goto_0
    return-void

    .line 288
    :cond_0
    iget-object v0, p0, Lcom/android/settings/tts/TtsEngineSettingsFragment;->mLocalePreference:Landroid/preference/ListPreference;

    invoke-virtual {v0, p1}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 289
    iget-object v0, p0, Lcom/android/settings/tts/TtsEngineSettingsFragment;->mLocalePreference:Landroid/preference/ListPreference;

    iget-object v1, p0, Lcom/android/settings/tts/TtsEngineSettingsFragment;->mLocalePreference:Landroid/preference/ListPreference;

    invoke-virtual {v1}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v1

    aget-object v1, v1, p1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private updateDefaultLocalePref(Ljava/util/ArrayList;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "availableLangs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v11, 0x0

    .line 232
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-nez v9, :cond_1

    .line 233
    :cond_0
    iget-object v9, p0, Lcom/android/settings/tts/TtsEngineSettingsFragment;->mLocalePreference:Landroid/preference/ListPreference;

    invoke-virtual {v9, v11}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 280
    :goto_0
    return-void

    .line 236
    :cond_1
    const/4 v0, 0x0

    .line 237
    .local v0, "currentLocale":Ljava/util/Locale;
    iget-object v9, p0, Lcom/android/settings/tts/TtsEngineSettingsFragment;->mEnginesHelper:Landroid/speech/tts/TtsEngines;

    invoke-direct {p0}, Lcom/android/settings/tts/TtsEngineSettingsFragment;->getEngineName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/speech/tts/TtsEngines;->isLocaleSetToDefaultForEngine(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_2

    .line 238
    iget-object v9, p0, Lcom/android/settings/tts/TtsEngineSettingsFragment;->mEnginesHelper:Landroid/speech/tts/TtsEngines;

    invoke-direct {p0}, Lcom/android/settings/tts/TtsEngineSettingsFragment;->getEngineName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/speech/tts/TtsEngines;->getLocalePrefForEngine(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v0

    .line 241
    :cond_2
    new-instance v3, Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v9

    invoke-direct {v3, v9}, Ljava/util/ArrayList;-><init>(I)V

    .line 243
    .local v3, "entryPairs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/util/Pair<Ljava/lang/String;Ljava/util/Locale;>;>;"
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v5, v9, :cond_4

    .line 244
    iget-object v10, p0, Lcom/android/settings/tts/TtsEngineSettingsFragment;->mEnginesHelper:Landroid/speech/tts/TtsEngines;

    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v10, v9}, Landroid/speech/tts/TtsEngines;->parseLocaleString(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v8

    .line 245
    .local v8, "locale":Ljava/util/Locale;
    if-eqz v8, :cond_3

    .line 246
    new-instance v9, Landroid/util/Pair;

    invoke-virtual {v8}, Ljava/util/Locale;->getDisplayName()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10, v8}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 243
    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 252
    .end local v8    # "locale":Ljava/util/Locale;
    :cond_4
    new-instance v9, Lcom/android/settings/tts/TtsEngineSettingsFragment$3;

    invoke-direct {v9, p0}, Lcom/android/settings/tts/TtsEngineSettingsFragment$3;-><init>(Lcom/android/settings/tts/TtsEngineSettingsFragment;)V

    invoke-static {v3, v9}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 260
    iput v11, p0, Lcom/android/settings/tts/TtsEngineSettingsFragment;->mSelectedLocaleIndex:I

    .line 261
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v9

    add-int/lit8 v9, v9, 0x1

    new-array v1, v9, [Ljava/lang/CharSequence;

    .line 262
    .local v1, "entries":[Ljava/lang/CharSequence;
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v9

    add-int/lit8 v9, v9, 0x1

    new-array v4, v9, [Ljava/lang/CharSequence;

    .line 264
    .local v4, "entryValues":[Ljava/lang/CharSequence;
    invoke-virtual {p0}, Lcom/android/settings/tts/TtsEngineSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v9

    const v10, 0x7f08068d

    invoke-virtual {v9, v10}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v1, v11

    .line 265
    const-string v9, ""

    aput-object v9, v4, v11

    .line 267
    const/4 v5, 0x1

    .line 268
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_6

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    .line 269
    .local v2, "entry":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/util/Locale;>;"
    iget-object v9, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v9, Ljava/util/Locale;

    invoke-virtual {v9, v0}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 270
    iput v5, p0, Lcom/android/settings/tts/TtsEngineSettingsFragment;->mSelectedLocaleIndex:I

    .line 272
    :cond_5
    iget-object v9, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v9, Ljava/lang/CharSequence;

    aput-object v9, v1, v5

    .line 273
    add-int/lit8 v6, v5, 0x1

    .end local v5    # "i":I
    .local v6, "i":I
    iget-object v9, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v9, Ljava/util/Locale;

    invoke-virtual {v9}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v4, v5

    move v5, v6

    .line 274
    .end local v6    # "i":I
    .restart local v5    # "i":I
    goto :goto_2

    .line 276
    .end local v2    # "entry":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/util/Locale;>;"
    :cond_6
    iget-object v9, p0, Lcom/android/settings/tts/TtsEngineSettingsFragment;->mLocalePreference:Landroid/preference/ListPreference;

    invoke-virtual {v9, v1}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 277
    iget-object v9, p0, Lcom/android/settings/tts/TtsEngineSettingsFragment;->mLocalePreference:Landroid/preference/ListPreference;

    invoke-virtual {v9, v4}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 278
    iget-object v9, p0, Lcom/android/settings/tts/TtsEngineSettingsFragment;->mLocalePreference:Landroid/preference/ListPreference;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 279
    iget v9, p0, Lcom/android/settings/tts/TtsEngineSettingsFragment;->mSelectedLocaleIndex:I

    invoke-direct {p0, v9}, Lcom/android/settings/tts/TtsEngineSettingsFragment;->setLocalePreference(I)V

    goto/16 :goto_0
.end method

.method private updateLanguageTo(Ljava/util/Locale;)V
    .locals 5
    .param p1, "locale"    # Ljava/util/Locale;

    .prologue
    .line 334
    const/4 v2, -0x1

    .line 335
    .local v2, "selectedLocaleIndex":I
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v1

    .line 336
    .local v1, "localeString":Ljava/lang/String;
    :goto_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v3, p0, Lcom/android/settings/tts/TtsEngineSettingsFragment;->mLocalePreference:Landroid/preference/ListPreference;

    invoke-virtual {v3}, Landroid/preference/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v3

    array-length v3, v3

    if-ge v0, v3, :cond_0

    .line 337
    iget-object v3, p0, Lcom/android/settings/tts/TtsEngineSettingsFragment;->mLocalePreference:Landroid/preference/ListPreference;

    invoke-virtual {v3}, Landroid/preference/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v3

    aget-object v3, v3, v0

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 338
    move v2, v0

    .line 343
    :cond_0
    const/4 v3, -0x1

    if-ne v2, v3, :cond_4

    .line 344
    const-string v3, "TtsEngineSettings"

    const-string v4, "updateLanguageTo called with unknown locale argument"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 356
    .end local p1    # "locale":Ljava/util/Locale;
    :cond_1
    :goto_2
    return-void

    .line 335
    .end local v0    # "i":I
    .end local v1    # "localeString":Ljava/lang/String;
    .restart local p1    # "locale":Ljava/util/Locale;
    :cond_2
    const-string v1, ""

    goto :goto_0

    .line 336
    .restart local v0    # "i":I
    .restart local v1    # "localeString":Ljava/lang/String;
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 347
    :cond_4
    iget-object v3, p0, Lcom/android/settings/tts/TtsEngineSettingsFragment;->mLocalePreference:Landroid/preference/ListPreference;

    iget-object v4, p0, Lcom/android/settings/tts/TtsEngineSettingsFragment;->mLocalePreference:Landroid/preference/ListPreference;

    invoke-virtual {v4}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v4

    aget-object v4, v4, v2

    invoke-virtual {v3, v4}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 348
    iput v2, p0, Lcom/android/settings/tts/TtsEngineSettingsFragment;->mSelectedLocaleIndex:I

    .line 350
    iget-object v3, p0, Lcom/android/settings/tts/TtsEngineSettingsFragment;->mEnginesHelper:Landroid/speech/tts/TtsEngines;

    invoke-direct {p0}, Lcom/android/settings/tts/TtsEngineSettingsFragment;->getEngineName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, p1}, Landroid/speech/tts/TtsEngines;->updateLocalePrefForEngine(Ljava/lang/String;Ljava/util/Locale;)V

    .line 352
    invoke-direct {p0}, Lcom/android/settings/tts/TtsEngineSettingsFragment;->getEngineName()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/tts/TtsEngineSettingsFragment;->mTts:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v4}, Landroid/speech/tts/TextToSpeech;->getCurrentEngine()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 354
    iget-object v3, p0, Lcom/android/settings/tts/TtsEngineSettingsFragment;->mTts:Landroid/speech/tts/TextToSpeech;

    if-eqz p1, :cond_5

    .end local p1    # "locale":Ljava/util/Locale;
    :goto_3
    invoke-virtual {v3, p1}, Landroid/speech/tts/TextToSpeech;->setLanguage(Ljava/util/Locale;)I

    goto :goto_2

    .restart local p1    # "locale":Ljava/util/Locale;
    :cond_5
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p1

    goto :goto_3
.end method

.method private updateVoiceDetails(Landroid/content/Intent;)V
    .locals 5
    .param p1, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v4, 0x0

    .line 202
    if-nez p1, :cond_0

    .line 203
    const-string v2, "TtsEngineSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Engine failed voice data integrity check (null return)"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/tts/TtsEngineSettingsFragment;->mTts:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v4}, Landroid/speech/tts/TextToSpeech;->getCurrentEngine()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    :goto_0
    return-void

    .line 207
    :cond_0
    iput-object p1, p0, Lcom/android/settings/tts/TtsEngineSettingsFragment;->mVoiceDataDetails:Landroid/content/Intent;

    .line 211
    iget-object v2, p0, Lcom/android/settings/tts/TtsEngineSettingsFragment;->mVoiceDataDetails:Landroid/content/Intent;

    const-string v3, "availableVoices"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 213
    .local v0, "available":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v2, p0, Lcom/android/settings/tts/TtsEngineSettingsFragment;->mVoiceDataDetails:Landroid/content/Intent;

    const-string v3, "unavailableVoices"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 216
    .local v1, "unavailable":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 217
    iget-object v2, p0, Lcom/android/settings/tts/TtsEngineSettingsFragment;->mInstallVoicesPreference:Landroid/preference/Preference;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 222
    :goto_1
    if-nez v0, :cond_2

    .line 223
    const-string v2, "TtsEngineSettings"

    const-string v3, "TTS data check failed (available == null)."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    iget-object v2, p0, Lcom/android/settings/tts/TtsEngineSettingsFragment;->mLocalePreference:Landroid/preference/ListPreference;

    invoke-virtual {v2, v4}, Landroid/preference/ListPreference;->setEnabled(Z)V

    goto :goto_0

    .line 219
    :cond_1
    iget-object v2, p0, Lcom/android/settings/tts/TtsEngineSettingsFragment;->mInstallVoicesPreference:Landroid/preference/Preference;

    invoke-virtual {v2, v4}, Landroid/preference/Preference;->setEnabled(Z)V

    goto :goto_1

    .line 227
    :cond_2
    invoke-direct {p0, v0}, Lcom/android/settings/tts/TtsEngineSettingsFragment;->updateDefaultLocalePref(Ljava/util/ArrayList;)V

    goto :goto_0
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 192
    const/16 v0, 0x7b9

    if-ne p1, v0, :cond_0

    .line 193
    if-eqz p2, :cond_1

    .line 194
    invoke-direct {p0, p3}, Lcom/android/settings/tts/TtsEngineSettingsFragment;->updateVoiceDetails(Landroid/content/Intent;)V

    .line 199
    :cond_0
    :goto_0
    return-void

    .line 196
    :cond_1
    const-string v0, "TtsEngineSettings"

    const-string v1, "CheckVoiceData activity failed"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 11
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 104
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 105
    const v4, 0x7f05003c

    invoke-virtual {p0, v4}, Lcom/android/settings/tts/TtsEngineSettingsFragment;->addPreferencesFromResource(I)V

    .line 106
    new-instance v4, Landroid/speech/tts/TtsEngines;

    invoke-virtual {p0}, Lcom/android/settings/tts/TtsEngineSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-direct {v4, v7}, Landroid/speech/tts/TtsEngines;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/settings/tts/TtsEngineSettingsFragment;->mEnginesHelper:Landroid/speech/tts/TtsEngines;

    .line 108
    invoke-virtual {p0}, Lcom/android/settings/tts/TtsEngineSettingsFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    .line 109
    .local v2, "root":Landroid/preference/PreferenceScreen;
    const-string v4, "tts_default_lang"

    invoke-virtual {v2, v4}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/ListPreference;

    iput-object v4, p0, Lcom/android/settings/tts/TtsEngineSettingsFragment;->mLocalePreference:Landroid/preference/ListPreference;

    .line 110
    iget-object v4, p0, Lcom/android/settings/tts/TtsEngineSettingsFragment;->mLocalePreference:Landroid/preference/ListPreference;

    invoke-virtual {v4, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 111
    const-string v4, "tts_engine_settings"

    invoke-virtual {v2, v4}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/tts/TtsEngineSettingsFragment;->mEngineSettingsPreference:Landroid/preference/Preference;

    .line 112
    iget-object v4, p0, Lcom/android/settings/tts/TtsEngineSettingsFragment;->mEngineSettingsPreference:Landroid/preference/Preference;

    invoke-virtual {v4, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 113
    const-string v4, "tts_install_data"

    invoke-virtual {v2, v4}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/tts/TtsEngineSettingsFragment;->mInstallVoicesPreference:Landroid/preference/Preference;

    .line 114
    iget-object v4, p0, Lcom/android/settings/tts/TtsEngineSettingsFragment;->mInstallVoicesPreference:Landroid/preference/Preference;

    invoke-virtual {v4, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 116
    invoke-direct {p0}, Lcom/android/settings/tts/TtsEngineSettingsFragment;->getEngineLabel()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/preference/PreferenceScreen;->setTitle(Ljava/lang/CharSequence;)V

    .line 117
    invoke-direct {p0}, Lcom/android/settings/tts/TtsEngineSettingsFragment;->getEngineName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/preference/PreferenceScreen;->setKey(Ljava/lang/String;)V

    .line 118
    iget-object v4, p0, Lcom/android/settings/tts/TtsEngineSettingsFragment;->mEngineSettingsPreference:Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/android/settings/tts/TtsEngineSettingsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0806a6

    new-array v9, v5, [Ljava/lang/Object;

    invoke-direct {p0}, Lcom/android/settings/tts/TtsEngineSettingsFragment;->getEngineLabel()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, v6

    invoke-virtual {v7, v8, v9}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 121
    iget-object v4, p0, Lcom/android/settings/tts/TtsEngineSettingsFragment;->mEnginesHelper:Landroid/speech/tts/TtsEngines;

    invoke-direct {p0}, Lcom/android/settings/tts/TtsEngineSettingsFragment;->getEngineName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/speech/tts/TtsEngines;->getSettingsIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/tts/TtsEngineSettingsFragment;->mEngineSettingsIntent:Landroid/content/Intent;

    .line 122
    iget-object v4, p0, Lcom/android/settings/tts/TtsEngineSettingsFragment;->mEngineSettingsIntent:Landroid/content/Intent;

    if-nez v4, :cond_0

    .line 123
    iget-object v4, p0, Lcom/android/settings/tts/TtsEngineSettingsFragment;->mEngineSettingsPreference:Landroid/preference/Preference;

    invoke-virtual {v4, v6}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 125
    :cond_0
    iget-object v4, p0, Lcom/android/settings/tts/TtsEngineSettingsFragment;->mInstallVoicesPreference:Landroid/preference/Preference;

    invoke-virtual {v4, v6}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 127
    if-nez p1, :cond_1

    .line 128
    iget-object v4, p0, Lcom/android/settings/tts/TtsEngineSettingsFragment;->mLocalePreference:Landroid/preference/ListPreference;

    invoke-virtual {v4, v6}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 129
    iget-object v4, p0, Lcom/android/settings/tts/TtsEngineSettingsFragment;->mLocalePreference:Landroid/preference/ListPreference;

    new-array v5, v6, [Ljava/lang/CharSequence;

    invoke-virtual {v4, v5}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 130
    iget-object v4, p0, Lcom/android/settings/tts/TtsEngineSettingsFragment;->mLocalePreference:Landroid/preference/ListPreference;

    new-array v5, v6, [Ljava/lang/CharSequence;

    invoke-virtual {v4, v5}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 147
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/tts/TtsEngineSettingsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "voices"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Landroid/content/Intent;

    iput-object v4, p0, Lcom/android/settings/tts/TtsEngineSettingsFragment;->mVoiceDataDetails:Landroid/content/Intent;

    .line 149
    new-instance v4, Landroid/speech/tts/TextToSpeech;

    invoke-virtual {p0}, Lcom/android/settings/tts/TtsEngineSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings/tts/TtsEngineSettingsFragment;->mTtsInitListener:Landroid/speech/tts/TextToSpeech$OnInitListener;

    invoke-direct {p0}, Lcom/android/settings/tts/TtsEngineSettingsFragment;->getEngineName()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v4, v5, v6, v7}, Landroid/speech/tts/TextToSpeech;-><init>(Landroid/content/Context;Landroid/speech/tts/TextToSpeech$OnInitListener;Ljava/lang/String;)V

    iput-object v4, p0, Lcom/android/settings/tts/TtsEngineSettingsFragment;->mTts:Landroid/speech/tts/TextToSpeech;

    .line 153
    invoke-direct {p0}, Lcom/android/settings/tts/TtsEngineSettingsFragment;->checkTtsData()V

    .line 155
    invoke-virtual {p0}, Lcom/android/settings/tts/TtsEngineSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/tts/TtsEngineSettingsFragment;->mLanguagesChangedReceiver:Landroid/content/BroadcastReceiver;

    new-instance v6, Landroid/content/IntentFilter;

    const-string v7, "android.speech.tts.engine.TTS_DATA_INSTALLED"

    invoke-direct {v6, v7}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v5, v6}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 157
    return-void

    .line 134
    :cond_1
    const-string v4, "locale_entries"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getCharSequenceArray(Ljava/lang/String;)[Ljava/lang/CharSequence;

    move-result-object v0

    .line 136
    .local v0, "entries":[Ljava/lang/CharSequence;
    const-string v4, "locale_entry_values"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getCharSequenceArray(Ljava/lang/String;)[Ljava/lang/CharSequence;

    move-result-object v1

    .line 138
    .local v1, "entryValues":[Ljava/lang/CharSequence;
    const-string v4, "locale_value"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v3

    .line 141
    .local v3, "value":Ljava/lang/CharSequence;
    iget-object v4, p0, Lcom/android/settings/tts/TtsEngineSettingsFragment;->mLocalePreference:Landroid/preference/ListPreference;

    invoke-virtual {v4, v0}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 142
    iget-object v4, p0, Lcom/android/settings/tts/TtsEngineSettingsFragment;->mLocalePreference:Landroid/preference/ListPreference;

    invoke-virtual {v4, v1}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 143
    iget-object v7, p0, Lcom/android/settings/tts/TtsEngineSettingsFragment;->mLocalePreference:Landroid/preference/ListPreference;

    if-eqz v3, :cond_2

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    :goto_1
    invoke-virtual {v7, v4}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 144
    iget-object v7, p0, Lcom/android/settings/tts/TtsEngineSettingsFragment;->mLocalePreference:Landroid/preference/ListPreference;

    array-length v4, v0

    if-lez v4, :cond_3

    move v4, v5

    :goto_2
    invoke-virtual {v7, v4}, Landroid/preference/ListPreference;->setEnabled(Z)V

    goto :goto_0

    .line 143
    :cond_2
    const/4 v4, 0x0

    goto :goto_1

    :cond_3
    move v4, v6

    .line 144
    goto :goto_2
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 161
    invoke-virtual {p0}, Lcom/android/settings/tts/TtsEngineSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/tts/TtsEngineSettingsFragment;->mLanguagesChangedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 162
    iget-object v0, p0, Lcom/android/settings/tts/TtsEngineSettingsFragment;->mTts:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v0}, Landroid/speech/tts/TextToSpeech;->shutdown()V

    .line 163
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDestroy()V

    .line 164
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 2
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    .line 324
    iget-object v1, p0, Lcom/android/settings/tts/TtsEngineSettingsFragment;->mLocalePreference:Landroid/preference/ListPreference;

    if-ne p1, v1, :cond_1

    move-object v0, p2

    .line 325
    check-cast v0, Ljava/lang/String;

    .line 326
    .local v0, "localeString":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/tts/TtsEngineSettingsFragment;->mEnginesHelper:Landroid/speech/tts/TtsEngines;

    invoke-virtual {v1, v0}, Landroid/speech/tts/TtsEngines;->parseLocaleString(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v1

    :goto_0
    invoke-direct {p0, v1}, Lcom/android/settings/tts/TtsEngineSettingsFragment;->updateLanguageTo(Ljava/util/Locale;)V

    .line 328
    const/4 v1, 0x1

    .line 330
    .end local v0    # "localeString":Ljava/lang/String;
    :goto_1
    return v1

    .line 326
    .restart local v0    # "localeString":Ljava/lang/String;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 330
    .end local v0    # "localeString":Ljava/lang/String;
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 2
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    const/4 v0, 0x1

    .line 311
    iget-object v1, p0, Lcom/android/settings/tts/TtsEngineSettingsFragment;->mInstallVoicesPreference:Landroid/preference/Preference;

    if-ne p1, v1, :cond_0

    .line 312
    invoke-direct {p0}, Lcom/android/settings/tts/TtsEngineSettingsFragment;->installVoiceData()V

    .line 319
    :goto_0
    return v0

    .line 314
    :cond_0
    iget-object v1, p0, Lcom/android/settings/tts/TtsEngineSettingsFragment;->mEngineSettingsPreference:Landroid/preference/Preference;

    if-ne p1, v1, :cond_1

    .line 315
    iget-object v1, p0, Lcom/android/settings/tts/TtsEngineSettingsFragment;->mEngineSettingsIntent:Landroid/content/Intent;

    invoke-virtual {p0, v1}, Lcom/android/settings/tts/TtsEngineSettingsFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 319
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 168
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 171
    const-string v0, "locale_entries"

    iget-object v1, p0, Lcom/android/settings/tts/TtsEngineSettingsFragment;->mLocalePreference:Landroid/preference/ListPreference;

    invoke-virtual {v1}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putCharSequenceArray(Ljava/lang/String;[Ljava/lang/CharSequence;)V

    .line 173
    const-string v0, "locale_entry_values"

    iget-object v1, p0, Lcom/android/settings/tts/TtsEngineSettingsFragment;->mLocalePreference:Landroid/preference/ListPreference;

    invoke-virtual {v1}, Landroid/preference/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putCharSequenceArray(Ljava/lang/String;[Ljava/lang/CharSequence;)V

    .line 175
    const-string v0, "locale_value"

    iget-object v1, p0, Lcom/android/settings/tts/TtsEngineSettingsFragment;->mLocalePreference:Landroid/preference/ListPreference;

    invoke-virtual {v1}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 177
    return-void
.end method
