Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libsignal-rs/original/zkgroup-01bd3d79286543e4.zkgroup.5d344a40d40de915-cgu.10?download=true
inline.NumInlined: 160
inline.NumDeleted: 95
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 9
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@0 = private unnamed_addr constant <{ [24 x i8], ptr, ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNSNvYNCINvMs0_NtNtCs9k3SxhrAWiO_3std4sync4onceNtBd_4Once15call_once_forceNCNvMNtBf_9lazy_lockINtB1f_8LazyLockNtNtNtCs807GXlIGG3x_7zkgroup6crypto11credentials12SystemParamsE5force0E0INtNtNtCsgxBkk5gSRhY_4core3ops8function6FnOnceTRNtBd_9OnceStateEE9call_once6vtableB1Q_, ptr @_RNCINvMs0_NtNtCs9k3SxhrAWiO_3std4sync4onceNtB8_4Once15call_once_forceNCNvMNtBa_9lazy_lockINtB1a_8LazyLockNtNtNtCs807GXlIGG3x_7zkgroup6crypto11credentials12SystemParamsE5force0E0B1L_ }>, align 8
@1 = private unnamed_addr constant [77 x i8] c"/rustc/48a229ceaefd4985c50990b14116b6d856af0985/library/std/src/sync/once.rs\00", align 1
@2 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @1, [16 x i8] c"L\00\00\00\00\00\00\00\E2\00\00\00\14\00\00\00" }>, align 8
@3 = private unnamed_addr constant <{ [24 x i8], ptr, ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNSNvYNCINvMs0_NtNtCs9k3SxhrAWiO_3std4sync4onceNtBd_4Once15call_once_forceNCNvMNtBf_9lazy_lockINtB1f_8LazyLockNtNtNtCs807GXlIGG3x_7zkgroup6crypto14uid_encryption12SystemParamsE5force0E0INtNtNtCsgxBkk5gSRhY_4core3ops8function6FnOnceTRNtBd_9OnceStateEE9call_once6vtableB1Q_, ptr @_RNCINvMs0_NtNtCs9k3SxhrAWiO_3std4sync4onceNtB8_4Once15call_once_forceNCNvMNtBa_9lazy_lockINtB1a_8LazyLockNtNtNtCs807GXlIGG3x_7zkgroup6crypto14uid_encryption12SystemParamsE5force0E0B1L_ }>, align 8
@4 = private unnamed_addr constant <{ [24 x i8], ptr, ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNSNvYNCINvMs0_NtNtCs9k3SxhrAWiO_3std4sync4onceNtBd_4Once15call_once_forceNCNvMNtBf_9lazy_lockINtB1f_8LazyLockNtNtNtCs807GXlIGG3x_7zkgroup6crypto22profile_key_encryption12SystemParamsE5force0E0INtNtNtCsgxBkk5gSRhY_4core3ops8function6FnOnceTRNtBd_9OnceStateEE9call_once6vtableB1Q_, ptr @_RNCINvMs0_NtNtCs9k3SxhrAWiO_3std4sync4onceNtB8_4Once15call_once_forceNCNvMNtBa_9lazy_lockINtB1a_8LazyLockNtNtNtCs807GXlIGG3x_7zkgroup6crypto22profile_key_encryption12SystemParamsE5force0E0B1L_ }>, align 8
@5 = private unnamed_addr constant [8 x i8] c"OneBased", align 1
@6 = private unnamed_addr constant [12 x i8] c"SystemParams", align 1
@7 = private unnamed_addr constant [3 x i8] c"G_w", align 1
@8 = private unnamed_addr constant [8 x i8] c"G_wprime", align 1
@9 = private unnamed_addr constant [4 x i8] c"G_x0", align 1
@10 = private unnamed_addr constant [4 x i8] c"G_x1", align 1
@11 = private unnamed_addr constant [3 x i8] c"G_y", align 1
@12 = private unnamed_addr constant [4 x i8] c"G_m1", align 1
@13 = private unnamed_addr constant [4 x i8] c"G_m2", align 1
@14 = private unnamed_addr constant [4 x i8] c"G_m3", align 1
@15 = private unnamed_addr constant [4 x i8] c"G_m4", align 1
@16 = private unnamed_addr constant [4 x i8] c"G_m5", align 1
@17 = private unnamed_addr constant [3 x i8] c"G_V", align 1
@18 = private unnamed_addr constant [3 x i8] c"G_z", align 1
@19 = private unnamed_addr constant <{ ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8] }> <{ ptr @7, [8 x i8] c"\03\00\00\00\00\00\00\00", ptr @8, [8 x i8] c"\08\00\00\00\00\00\00\00", ptr @9, [8 x i8] c"\04\00\00\00\00\00\00\00", ptr @10, [8 x i8] c"\04\00\00\00\00\00\00\00", ptr @11, [8 x i8] c"\03\00\00\00\00\00\00\00", ptr @12, [8 x i8] c"\04\00\00\00\00\00\00\00", ptr @13, [8 x i8] c"\04\00\00\00\00\00\00\00", ptr @14, [8 x i8] c"\04\00\00\00\00\00\00\00", ptr @15, [8 x i8] c"\04\00\00\00\00\00\00\00", ptr @16, [8 x i8] c"\04\00\00\00\00\00\00\00", ptr @17, [8 x i8] c"\03\00\00\00\00\00\00\00", ptr @18, [8 x i8] c"\03\00\00\00\00\00\00\00" }>, align 8
@20 = private unnamed_addr constant [4 x i8] c"G_a1", align 1
@21 = private unnamed_addr constant [4 x i8] c"G_a2", align 1
@22 = private unnamed_addr constant <{ ptr, [8 x i8], ptr, [8 x i8] }> <{ ptr @20, [8 x i8] c"\04\00\00\00\00\00\00\00", ptr @21, [8 x i8] c"\04\00\00\00\00\00\00\00" }>, align 8
@23 = private unnamed_addr constant [4 x i8] c"G_b1", align 1
@24 = private unnamed_addr constant [4 x i8] c"G_b2", align 1
@25 = private unnamed_addr constant <{ ptr, [8 x i8], ptr, [8 x i8] }> <{ ptr @23, [8 x i8] c"\04\00\00\00\00\00\00\00", ptr @24, [8 x i8] c"\04\00\00\00\00\00\00\00" }>, align 8
@26 = private unnamed_addr constant [107 x i8] c"/home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/curve25519-dalek-5.0.0/src/edwards.rs\00", align 1
@27 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @26, [16 x i8] c"j\00\00\00\00\00\00\00\DA\03\00\00\09\00\00\00" }>, align 8
@28 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @26, [16 x i8] c"j\00\00\00\00\00\00\00\F9\03\00\00\09\00\00\00" }>, align 8
@29 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @1, [16 x i8] c"L\00\00\00\00\00\00\00\E2\00\00\001\00\00\00" }>, align 8
@30 = private unnamed_addr constant [50 x i8] c"rust/zkgroup/src/crypto/profile_key_encryption.rs\00", align 1
@31 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @30, [16 x i8] c"1\00\00\00\00\00\00\00\80\00\00\00\1D\00\00\00" }>, align 8
@32 = private unnamed_addr constant [544 x i8] c"\9A\E7\C8\E5\EDw\9B\11J\E7p\8A\A2\F7\94g\0A\DD\A3$\98{e\99\13\12,5P[\10^l\A3\10%\D2\D7k\E7\FD4\94O\98\F7\FA\0E7\BA\BB,\8B\98\BB\BD\BD=\D1\BF\13\0C\CA,\8A\9A;\DF\AA\A2\B6\B3\22\D4k\93\EC\A7\B0\D5\1C\86\A3\C89\E1\14f5\82X\A6\C1\0CW\7F\C2\BF\FD4\CD\99\16L\9Al\D2\9F\ABU\D9\1F\F9&\93\22\EC4X`<\C9j\0DG\F7\04\05\82\88\F6.\E0\AC\ED\B8\AA#$!!\D9\89e\A9\BB)\91%\0C\11u\80\95\EC\E0\FD+3(R\86\FE\1F\CB\05a\03\B6\08\17D\B9u\F5P\D0\85!V\8D\D3\D8a\8F%\C1@7Z\0F@$\C3\AA#\BD\FF\FB'\FB\D9\82 \8D>\CD\1F\D3\BC\B7\AC\0C:\14\B1\09\80O\C7H\D7\FAEl\FF\B4\93O\98\0Bn\09\A2H\A6\0FD\A6\15\0A\E6\C1=~<\06&\1D~N\ED7\F3\9F`\B0M\D9\D6\07\FD5p\12'M<c\DB\B3\8EsxY\9C\9E\97\DF\BB(\84&\94\89\1D_\0D\DCr\99\19\B7\98\B4\13\15\03@\8C\C5z\9CS/D'c,\88\F5L\EAS\86\1A[\C4La\CC`7\DC1\C2\E8\D4GO\B5\19XzD\86\93\18*\D9\D6\D8kSYW\85\8FT{\93@\12}\A7_\80t\CA\EE\94J\C3l\0A\C6b\D3\8C\9B<\CC\E0:\09?\CD\96D\04s\98\B8kn\837/\F1O\B8\BB\0D\EAeS\12R\ACp\D5\8AJ\08\10\D6\82\A0\E7\09\C9\22{0\EFl\8E\17\C5\91]Rr!\BB\00\DA\81u\CDd\89\AA\8A\A4\92\A5\00\F9\AB\EEV\90\B9\DF\CA\88U\DC\0B\D0*\7F'z\DD$\0Fc\9A\C1h\01\E8\15t\AF\B4h>\DF\F6;\9A\01\E9=\BD\86z\04\B6\16\C7\06\C8\0Cul\11\A3\01k\BF\B6\09w\F4d\8B_#\95\A4\B4(\B7!\19@\81>:\FD\E2\B8z\A9\C2\C3{\F7\16\E2W\8F\95em\F1,/\B6\F5\D0c\1Foq\E2\C3\19?m", align 1
@33 = private unnamed_addr constant [22 x i8] c"valid hardcoded params", align 1
@34 = private unnamed_addr constant [39 x i8] c"rust/zkgroup/src/crypto/credentials.rs\00", align 1
@35 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @34, [16 x i8] c"&\00\00\00\00\00\00\00\1F\00\00\008\00\00\00" }>, align 8
@36 = private unnamed_addr constant [64 x i8] c"\A62L6\8D\F74i\11G\98\13H\B6\E7\EBB\C30~q\1Bl~\CC\D3\03-Ei?Z\04\80\13R[v\12K\F2d\0C^\93i\C7n\FB\E8\0A\BA*$\AA]\8E\18\A9\8E\BA\14\F87", align 1
@37 = private unnamed_addr constant [42 x i8] c"rust/zkgroup/src/crypto/uid_encryption.rs\00", align 1
@38 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @37, [16 x i8] c")\00\00\00\00\00\00\00\15\00\00\009\00\00\00" }>, align 8
@39 = private unnamed_addr constant [64 x i8] c"\F6\BA\A3\17\CE\189\C9=a~\0C\D87\D1\9D\A9\C8\A4\C5 \BF|Q\B1\E6\C2\CB*\04\9Ca.\01u\89L\870\B2\03\AB;\D9\8E\CB-\81\AB\AC\B6_\8Aa$\F4\97q\D1J\98R\12\0C", align 1
@40 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @30, [16 x i8] c"1\00\00\00\00\00\00\00\16\00\00\009\00\00\00" }>, align 8
@41 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\10\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs2_NtNtCs807GXlIGG3x_7zkgroup6common6errorsNtB5_29ZkGroupDeserializationFailureNtNtCsgxBkk5gSRhY_4core3fmt5Debug3fmt }>, align 8
@42 = private unnamed_addr constant [68 x i8] c"Signal_ZKGroup_20200424_Constant_UidEncryption_SystemParams_Generate", align 1
@43 = private unnamed_addr constant [75 x i8] c"Signal_ZKGroup_20200424_Constant_ProfileKeyEncryption_SystemParams_Generate", align 1
@44 = private unnamed_addr constant [36 x i8] c"20240215_Signal_GroupSendEndorsement", align 1
@45 = private unnamed_addr constant [93 x i8] c"/home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/subtle-2.6.1/src/lib.rs\00", align 1
@46 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @45, [16 x i8] c"\\\00\00\00\00\00\00\00\1D\02\00\00\01\00\00\00" }>, align 8
@47 = private unnamed_addr constant [116 x i8] c"zkgroup::api::groups::group_send_endorsement::GroupSendEndorsement<curve25519_dalek::ristretto::CompressedRistretto>", align 1
@48 = private unnamed_addr constant [160 x i8] c"\1A\D5%\8F`-\06\00*Y\F6\B4\A4\12\04\00\1D\B3\A4qq[\07\00\FE\18qR`\FF\01\00\E5\D6<m\93\16\02\00Xfffff\06\00\CC\CC\CC\CC\CC\CC\04\00\99\99\99\99\99\99\01\00333333\03\00ffffff\06\00\01\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\A3\DD\B7\A5\B3\8A\06\00\BB\AD^*\EA\0E\00\00~\C2\83\F4\8D\AF\02\002G'u\B32\03\00\B7x\FD\F0ux\06\00", align 8
@49 = private unnamed_addr constant [44 x i8] c"20260520_Signal_ZkCredentialKeyPair_Generate", align 1
@50 = private unnamed_addr constant <{ ptr, [16 x i8], ptr, ptr, ptr, ptr, ptr }> <{ ptr @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCsfFEWD1QhNwv_6poksho13shohmacsha25613ShoHmacSha256ECs807GXlIGG3x_7zkgroup, [16 x i8] c"\E0\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvYNtNtCsfFEWD1QhNwv_6poksho13shohmacsha25613ShoHmacSha256NtNtB6_6shoapi6ShoApi18absorb_and_ratchetCs807GXlIGG3x_7zkgroup, ptr @_RNvXNtCsfFEWD1QhNwv_6poksho13shohmacsha256NtB2_13ShoHmacSha256NtNtB4_6shoapi6ShoApi6absorb, ptr @_RNvXNtCsfFEWD1QhNwv_6poksho13shohmacsha256NtB2_13ShoHmacSha256NtNtB4_6shoapi6ShoApi7ratchet, ptr @_RNvYNtNtCsfFEWD1QhNwv_6poksho13shohmacsha25613ShoHmacSha256NtNtB6_6shoapi6ShoApi19squeeze_and_ratchetCs807GXlIGG3x_7zkgroup, ptr @_RNvXNtCsfFEWD1QhNwv_6poksho13shohmacsha256NtB2_13ShoHmacSha256NtNtB4_6shoapi6ShoApi24squeeze_and_ratchet_into }>, align 8
@51 = private unnamed_addr constant [1 x i8] c"\01", align 1
@52 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @45, [16 x i8] c"\\\00\00\00\00\00\00\00\BD\02\00\00\09\00\00\00" }>, align 8
@53 = private unnamed_addr constant [47 x i8] c"rust/zkgroup/src/api/endorsement_expiration.rs\00", align 1
@54 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @53, [16 x i8] c".\00\00\00\00\00\00\00\0F\00\00\00\1A\00\00\00" }>, align 8
@55 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @53, [16 x i8] c".\00\00\00\00\00\00\00\10\00\00\00\08\00\00\00" }>, align 8
@56 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @53, [16 x i8] c".\00\00\00\00\00\00\00\11\00\00\00\09\00\00\00" }>, align 8
@_RNvNtNtCs807GXlIGG3x_7zkgroup6crypto11credentials13SYSTEM_PARAMS = internal global <{ ptr, [2712 x i8], [4 x i8], [4 x i8] }> <{ ptr @_RNvYNCNvNtNtCs807GXlIGG3x_7zkgroup6crypto11credentials13SYSTEM_PARAMS0INtNtNtCsgxBkk5gSRhY_4core3ops8function6FnOnceuE9call_onceBa_, [2712 x i8] undef, [4 x i8] c"\03\00\00\00", [4 x i8] undef }>, align 8
@_RNvNtNtCs807GXlIGG3x_7zkgroup6crypto14uid_encryption13SYSTEM_PARAMS = internal global <{ ptr, [312 x i8], [4 x i8], [4 x i8] }> <{ ptr @_RNvYNCNvNtNtCs807GXlIGG3x_7zkgroup6crypto14uid_encryption13SYSTEM_PARAMS0INtNtNtCsgxBkk5gSRhY_4core3ops8function6FnOnceuE9call_onceBa_, [312 x i8] undef, [4 x i8] c"\03\00\00\00", [4 x i8] undef }>, align 8
@_RNvNtNtCs807GXlIGG3x_7zkgroup6crypto22profile_key_encryption13SYSTEM_PARAMS = internal global <{ ptr, [312 x i8], [4 x i8], [4 x i8] }> <{ ptr @_RNvYNCNvNtNtCs807GXlIGG3x_7zkgroup6crypto22profile_key_encryption13SYSTEM_PARAMS0INtNtNtCsgxBkk5gSRhY_4core3ops8function6FnOnceuE9call_onceBa_, [312 x i8] undef, [4 x i8] c"\03\00\00\00", [4 x i8] undef }>, align 8
@_RNvNvXNtNtCs807GXlIGG3x_7zkgroup3api17zk_credential_keyNtB4_21ZkCredentialKeyDomainNtNtCs17t5S1clqUH_12zkcredential10attributes6Domain3G_a7STORAGE = internal global <{ [320 x i8], [4 x i8], [4 x i8] }> <{ [320 x i8] undef, [4 x i8] c"\03\00\00\00", [4 x i8] undef }>, align 8
@57 = private unnamed_addr constant [16 x i8] c"field identifier", align 1
@_RNvNtNtNtNtCsdRrpXuHtjOb_16curve25519_dalek7backend6vector4avx29constants20CACHEDPOINT_IDENTITY = external local_unnamed_addr global { { [5 x <4 x i64>] } }
@58 = private unnamed_addr constant [20 x i8] c"GroupSendEndorsement", align 1
@59 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @_RNvXs5_NtNtCs807GXlIGG3x_7zkgroup6common13serializationINtB5_11VersionByteKh0_ENtNtCsgxBkk5gSRhY_4core3fmt5Debug3fmtB9_ }>, align 8
@60 = private unnamed_addr constant [8 x i8] c"reserved", align 1
@61 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\A0\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs2_NtCs17t5S1clqUH_12zkcredential12endorsementsNtB5_11EndorsementNtNtCsgxBkk5gSRhY_4core3fmt5Debug3fmt }>, align 8
@62 = private unnamed_addr constant [11 x i8] c"endorsement", align 1
@63 = private unnamed_addr constant [28 x i8] c"struct ZkCredentialPublicKey", align 1
@64 = private unnamed_addr constant [26 x i8] c"struct ZkCredentialKeyPair", align 1
@65 = private unnamed_addr constant [16 x i8] c"struct PublicKey", align 1
@66 = private unnamed_addr constant [21 x i8] c"struct AuthCredential", align 1
@67 = private unnamed_addr constant [28 x i8] c"struct AuthCredentialWithPni", align 1
@68 = private unnamed_addr constant [19 x i8] c"struct SystemParams", align 1
@69 = private unnamed_addr constant [27 x i8] c"struct ProfileKeyCredential", align 1
@70 = private unnamed_addr constant [35 x i8] c"struct ExpiringProfileKeyCredential", align 1
@71 = private unnamed_addr constant [57 x i8] c"struct BlindedExpiringProfileKeyCredentialWithSecretNonce", align 1
@72 = private unnamed_addr constant [42 x i8] c"struct BlindedExpiringProfileKeyCredential", align 1
@73 = private unnamed_addr constant [20 x i8] c"struct PniCredential", align 1
@74 = private unnamed_addr constant [24 x i8] c"struct ReceiptCredential", align 1
@75 = private unnamed_addr constant [46 x i8] c"struct BlindedReceiptCredentialWithSecretNonce", align 1
@76 = private unnamed_addr constant [31 x i8] c"struct BlindedReceiptCredential", align 1
@77 = private unnamed_addr constant [36 x i8] c"struct GroupSendEndorsementsResponse", align 1
@78 = private unnamed_addr constant [21 x i8] c"struct GroupSendToken", align 1
@79 = private unnamed_addr constant [25 x i8] c"struct GroupSendFullToken", align 1
@80 = private unnamed_addr constant [30 x i8] c"struct GroupSendDerivedKeyPair", align 1
@81 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00 \00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @_RNvXs3_NtCs17t5S1clqUH_12zkcredential12endorsementsINtB5_11EndorsementNtNtCsdRrpXuHtjOb_16curve25519_dalek9ristretto19CompressedRistrettoENtNtCsgxBkk5gSRhY_4core3fmt5Debug3fmt }>, align 8
@82 = private unnamed_addr constant [40 x i8] c"\01\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", align 8
@83 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCsgxBkk5gSRhY_4core3fmtRReNtB6_5Debug3fmtCs807GXlIGG3x_7zkgroup }>, align 8
@84 = private unnamed_addr constant [29 x i8] c"ZkGroupDeserializationFailure", align 1
@85 = private unnamed_addr constant [11 x i8] c"VersionByte", align 1
@86 = private unnamed_addr constant [14 x i8] c"GroupSendToken", align 1
@87 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\10\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXCs17t5S1clqUH_12zkcredentialINtB2_10PrintAsHexRShENtNtCsgxBkk5gSRhY_4core3fmt5Debug3fmt }>, align 8
@88 = private unnamed_addr constant [9 x i8] c"raw_token", align 1
@89 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCsgxBkk5gSRhY_4core3fmtRyNtB6_5Debug3fmtCs807GXlIGG3x_7zkgroup }>, align 8
@90 = private unnamed_addr constant [9 x i8] c"Timestamp", align 1
@91 = private unnamed_addr constant [18 x i8] c"GroupSendFullToken", align 1
@92 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs6_NtNtCs807GXlIGG3x_7zkgroup6common12simple_typesNtB5_9TimestampNtNtCsgxBkk5gSRhY_4core3fmt5Debug3fmt }>, align 8
@93 = private unnamed_addr constant [10 x i8] c"expiration", align 1
@94 = private unnamed_addr constant [30 x i8] c"one-based index cannot be zero", align 1

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VecNtNtCsdRrpXuHtjOb_16curve25519_dalek9ristretto19CompressedRistrettoEECs807GXlIGG3x_7zkgroup(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXso_NtCs6i54tJFfzR_5alloc3vecINtB5_3VecNtNtCsdRrpXuHtjOb_16curve25519_dalek9ristretto19CompressedRistrettoENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs807GXlIGG3x_7zkgroup(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVecNtNtCsdRrpXuHtjOb_16curve25519_dalek9ristretto19CompressedRistrettoENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs807GXlIGG3x_7zkgroup(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc7raw_vec6RawVecNtNtCsdRrpXuHtjOb_16curve25519_dalek9ristretto19CompressedRistrettoEECs807GXlIGG3x_7zkgroup.exit unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVecNtNtCsdRrpXuHtjOb_16curve25519_dalek9ristretto19CompressedRistrettoENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs807GXlIGG3x_7zkgroup(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
  ret void

bb.d:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #23
  unreachable

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc7raw_vec6RawVecNtNtCsdRrpXuHtjOb_16curve25519_dalek9ristretto19CompressedRistrettoEECs807GXlIGG3x_7zkgroup.exit: ; preds = %bb.b
  resume { ptr, i32 } %i.a
}

; Function Attrs: nonlazybind uwtable
define internal void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCsfFEWD1QhNwv_6poksho13shohmacsha25613ShoHmacSha256ECs807GXlIGG3x_7zkgroup(ptr noalias nofree noundef align 8 dereferenceable(224) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [64 x i8], align 1                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(64) %i.a, i8 0, i64 64, i1 false), !noalias !19
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 dereferenceable(184) %0, ptr nonnull align 1 %i.a, i64 64, i1 true)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  tail call void asm sideeffect inteldialect "# ${0:q}", "r,~{memory}"(ptr nonnull align 8 dereferenceable(184) %0) #24, !srcloc !4
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 64
  tail call void @_RNvXCseNmJmsPJ47l_7zeroizeuNtB2_7Zeroize7zeroizeCs807GXlIGG3x_7zkgroup(ptr noalias nofree noundef nonnull %i.b)
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define hidden void @_RINvNvNtCsgxBkk5gSRhY_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECs807GXlIGG3x_7zkgroup(ptr nofree noundef captures(none) %0, ptr nofree noundef captures(none) %1, i64 noundef range(i64 1, 0) %2) unnamed_addr #1 {
bb.a:
  %min.iters.check = icmp ult i64 %2, 8
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %bb.a
  %i.a = shl i64 %2, 3                            ; 2 uses
  %i.b = getelementptr i8, ptr %0, i64 %i.a
  %i.c = getelementptr i8, ptr %1, i64 %i.a
  %bound0 = icmp ult ptr %0, %i.c
  %bound1 = icmp ult ptr %1, %i.b
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %2, -4                         ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.d = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %index ; 3 uses
  %i.e = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %index ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !31)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !32)
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  %wide.load = load <2 x i64>, ptr %i.d, align 1, !alias.scope !33, !noalias !34
  %wide.load6 = load <2 x i64>, ptr %i.f, align 1, !alias.scope !33, !noalias !34
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  %wide.load7 = load <2 x i64>, ptr %i.e, align 1, !alias.scope !35
  %wide.load8 = load <2 x i64>, ptr %i.g, align 1, !alias.scope !35
  store <2 x i64> %wide.load7, ptr %i.d, align 1, !alias.scope !33, !noalias !34
  store <2 x i64> %wide.load8, ptr %i.f, align 1, !alias.scope !33, !noalias !34
  store <2 x i64> %wide.load, ptr %i.e, align 1, !alias.scope !35
  store <2 x i64> %wide.load6, ptr %i.g, align 1, !alias.scope !35
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.h = icmp eq i64 %index.next, %n.vec
  br i1 %i.h, label %middle.block, label %vector.body, !llvm.loop !26

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %2, %n.vec
  br i1 %cmp.n, label %.loopexit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %bb.a, %middle.block
  %.sroa.0.04.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %bb.a ], [ %n.vec, %middle.block ] ; 5 uses
  %.neg = or disjoint i64 %.sroa.0.04.ph, 1
  %lcmp.mod.not = trunc i64 %2 to i1
  br i1 %lcmp.mod.not, label %scalar.ph.prol, label %scalar.ph.prol.loopexit

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.i = or disjoint i64 %.sroa.0.04.ph, 1
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.0.04.ph ; 2 uses
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.sroa.0.04.ph ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !31)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !32)
  %.sroa.0.0.copyload.i.prol = load i64, ptr %i.j, align 1, !alias.scope !31
  %.sroa.02.0.copyload.i.prol = load i64, ptr %i.k, align 1, !alias.scope !32
  store i64 %.sroa.02.0.copyload.i.prol, ptr %i.j, align 1, !alias.scope !31
  store i64 %.sroa.0.0.copyload.i.prol, ptr %i.k, align 1, !alias.scope !32
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.sroa.0.04.unr = phi i64 [ %.sroa.0.04.ph, %scalar.ph.preheader ], [ %i.i, %scalar.ph.prol ]
  %i.l = icmp eq i64 %2, %.neg
  br i1 %i.l, label %.loopexit, label %scalar.ph

.loopexit:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  ret void

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %.sroa.0.04 = phi i64 [ %i.p, %scalar.ph ], [ %.sroa.0.04.unr, %scalar.ph.prol.loopexit ] ; 4 uses
  %i.m = add nuw i64 %.sroa.0.04, 1               ; 2 uses
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.0.04 ; 2 uses
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.sroa.0.04 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !31)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !32)
  %.sroa.0.0.copyload.i = load i64, ptr %i.n, align 1, !alias.scope !31
  %.sroa.02.0.copyload.i = load i64, ptr %i.o, align 1, !alias.scope !32
  store i64 %.sroa.02.0.copyload.i, ptr %i.n, align 1, !alias.scope !31
  store i64 %.sroa.0.0.copyload.i, ptr %i.o, align 1, !alias.scope !32
  %i.p = add nuw i64 %.sroa.0.04, 2               ; 2 uses
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.m ; 2 uses
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.m ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !38)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !39)
  %.sroa.0.0.copyload.i.1 = load i64, ptr %i.q, align 1, !alias.scope !38
  %.sroa.02.0.copyload.i.1 = load i64, ptr %i.r, align 1, !alias.scope !39
  store i64 %.sroa.02.0.copyload.i.1, ptr %i.q, align 1, !alias.scope !38
  store i64 %.sroa.0.0.copyload.i.1, ptr %i.r, align 1, !alias.scope !39
  %exitcond.not.1 = icmp eq i64 %i.p, %2
  br i1 %exitcond.not.1, label %.loopexit, label %scalar.ph, !llvm.loop !30
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXNvNtNtCs807GXlIGG3x_7zkgroup6common11array_utilss_1__INtB5_8OneBasedANtNtCsdRrpXuHtjOb_16curve25519_dalek9ristretto14RistrettoPointj6_ENtNtCs6yNvtpc0TEA_10serde_core2de11Deserialize11deserializeQINtNtCsfzLoC2LLPWN_7bincode2de12DeserializerNtNtB3f_4read11SliceReaderINtNtB3h_6config17WithOtherTrailingINtB4n_15WithOtherEndianINtB4n_20WithOtherIntEncodingNtB4n_14DefaultOptionsNtNtB4n_3int14FixintEncodingENtNtB4n_6endian12LittleEndianENtNtB4n_8trailing14RejectTrailingEEEB9_(ptr dead_on_unwind noalias nofree noundef writable sret([968 x i8]) align 8 captures(address) dereferenceable(968) %0, ptr noalias nofree noundef align 8 dereferenceable(16) %1) unnamed_addr #0 {
bb.a:
  tail call void @_RINvXs1_NtCsfzLoC2LLPWN_7bincode2deQINtB6_12DeserializerNtNtB6_4read11SliceReaderINtNtB8_6config17WithOtherTrailingINtB1k_15WithOtherEndianINtB1k_20WithOtherIntEncodingNtB1k_14DefaultOptionsNtNtB1k_3int14FixintEncodingENtNtB1k_6endian12LittleEndianENtNtB1k_8trailing14RejectTrailingEENtNtCs6yNvtpc0TEA_10serde_core2de12Deserializer26deserialize_newtype_structINtNvXNvNtNtCs807GXlIGG3x_7zkgroup6common11array_utilss_1__INtB5T_8OneBasedpENtB4A_11Deserialize11deserialize9___VisitorANtNtCsdRrpXuHtjOb_16curve25519_dalek9ristretto14RistrettoPointj6_EEB5X_(ptr noalias nofree noundef nonnull sret([968 x i8]) align 8 captures(address) dereferenceable(968) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @5, i64 noundef 8)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXsx_NtCsdRrpXuHtjOb_16curve25519_dalek7edwardsNtB6_12EdwardsPointNtNtB8_6traits14MultiscalarMul15multiscalar_mulRINtNtCs6i54tJFfzR_5alloc3vec3VecNtNtB8_6scalar6ScalarEINtNtNtNtCsgxBkk5gSRhY_4core4iter8adapters3map3MapINtNtNtB2S_5slice4iter4IterNtNtB8_9ristretto14RistrettoPointENCINvXsq_B40_B3Y_B15_15multiscalar_mulB1Q_RSB3Y_E0EECs807GXlIGG3x_7zkgroup(ptr dead_on_unwind noalias nofree noundef writable sret([160 x i8]) align 8 captures(address) dereferenceable(160) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1, ptr noundef nonnull %2, ptr noundef %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val = load ptr, ptr %i.c, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val7 = load i64, ptr %i.d, align 8, !noundef !5 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 %.val7, ptr %i.b, align 8
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %3) ]
  %i.e = ptrtoint ptr %3 to i64
  %i.f = ptrtoint ptr %2 to i64
  %i.g = sub nuw i64 %i.e, %i.f
  %i.h = udiv exact i64 %i.g, 160                 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 %i.h, ptr %i.a, align 8
  %i.i = icmp eq i64 %.val7, %i.h
  br i1 %i.i, label %bb.c, label %bb.b, !prof !6

bb.b:                                             ; preds = %bb.a
  call void @_RINvNtCsgxBkk5gSRhY_4core9panicking13assert_failedjjEB4_(i8 noundef 0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.a, ptr noundef null, ptr undef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @27) #25
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw [32 x i8], ptr %.val, i64 %.val7
  tail call void @_RINvNtCsdRrpXuHtjOb_16curve25519_dalek7backend22straus_multiscalar_mulINtNtNtCsgxBkk5gSRhY_4core5slice4iter4IterNtNtB4_6scalar6ScalarEINtNtNtNtB1d_4iter8adapters3map3MapIB17_NtNtB4_9ristretto14RistrettoPointENCINvXsq_B2O_B2M_NtNtB4_6traits14MultiscalarMul15multiscalar_mulRINtNtCs6i54tJFfzR_5alloc3vec3VecB1M_ERSB2M_E0EECs807GXlIGG3x_7zkgroup(ptr noalias nofree noundef nonnull sret([160 x i8]) align 8 captures(address) dereferenceable(160) %0, ptr noundef nonnull %.val, ptr noundef nonnull %i.j, ptr noundef nonnull %2, ptr noundef nonnull %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXsy_NtCsdRrpXuHtjOb_16curve25519_dalek7edwardsNtB6_12EdwardsPointNtNtB8_6traits21VartimeMultiscalarMul24optional_multiscalar_mulANtNtB8_6scalar6Scalarj2_INtNtNtNtCsgxBkk5gSRhY_4core4iter8adapters3map3MapIB2w_INtNtNtB2E_5array4iter8IntoIterNtNtB8_9ristretto14RistrettoPointKB2s_ENCINvYB3T_B15_23vartime_multiscalar_mulB26_AB3T_B2s_E0ENCINvXsr_B3V_B3T_B4G_24optional_multiscalar_mulB26_B3j_E0EECs807GXlIGG3x_7zkgroup(ptr dead_on_unwind noalias nofree noundef writable sret([168 x i8]) align 8 captures(address) dereferenceable(168) %0, ptr noalias nofree noundef readonly align 1 captures(none) dead_on_return dereferenceable(64) %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(336) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [336 x i8], align 8               ; 6 uses
  %i.b = alloca [80 x i8], align 8                ; 6 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %.sroa.025.0.copyload = load i64, ptr %2, align 8 ; 2 uses
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.4.0.copyload = load i64, ptr %.sroa.4.0..sroa_idx, align 8 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store i64 2, ptr %i.d, align 8
  %i.e = sub nuw i64 %.sroa.4.0.copyload, %.sroa.025.0.copyload ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i64 %i.e, ptr %i.c, align 8
  %i.f = icmp eq i64 %i.e, 2
  br i1 %i.f, label %bb.c, label %bb.b, !prof !6

bb.b:                                             ; preds = %bb.a
  call void @_RINvNtCsgxBkk5gSRhY_4core9panicking13assert_failedjjEB4_(i8 noundef 0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.d, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.c, ptr noundef null, ptr undef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @28) #25
  unreachable

bb.c:                                             ; preds = %bb.a
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 0, ptr %i.b, align 8
  %.sroa.6.0..sroa_idx12 = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 2, ptr %.sroa.6.0..sroa_idx12, align 8
  %.sroa.8.0..sroa_idx14 = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.8.0..sroa_idx14, ptr noundef nonnull align 1 dereferenceable(64) %1, i64 64, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 %.sroa.025.0.copyload, ptr %i.a, align 8
  %.sroa.618.0..sroa_idx19 = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %.sroa.4.0.copyload, ptr %.sroa.618.0..sroa_idx19, align 8
  %.sroa.7.0..sroa_idx23 = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(320) %.sroa.7.0..sroa_idx23, ptr noundef nonnull align 8 dereferenceable(320) %.sroa.5.0..sroa_idx, i64 320, i1 false)
  call void @_RINvNtCsdRrpXuHtjOb_16curve25519_dalek7backend31straus_optional_multiscalar_mulINtNtNtCsgxBkk5gSRhY_4core5array4iter8IntoIterNtNtB4_6scalar6ScalarKj2_EINtNtNtNtB1m_4iter8adapters3map3MapIB2q_IB1g_NtNtB4_9ristretto14RistrettoPointKB2l_ENCINvYB38_NtNtB4_6traits21VartimeMultiscalarMul23vartime_multiscalar_mulAB1Z_B2l_AB38_B2l_E0ENCINvXsr_B3a_B38_B3V_24optional_multiscalar_mulB4V_B2Y_E0EECs807GXlIGG3x_7zkgroup(ptr noalias nofree noundef nonnull sret([168 x i8]) align 8 captures(address) dereferenceable(168) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(80) %i.b, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(336) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden noundef align 8 ptr @_RINvYNtNtNtCs807GXlIGG3x_7zkgroup6crypto11credentials12SystemParamsNtNtCs6yNvtpc0TEA_10serde_core2de11Deserialize20deserialize_in_placeQINtNtCsfzLoC2LLPWN_7bincode2de12DeserializerNtNtB2d_4read11SliceReaderINtNtB2f_6config17WithOtherTrailingINtB3l_15WithOtherEndianINtB3l_20WithOtherIntEncodingNtB3l_14DefaultOptionsNtNtB3l_3int14FixintEncodingENtNtB3l_6endian12LittleEndianENtNtB3l_8trailing14RejectTrailingEEEB9_(ptr noalias nofree noundef align 8 dereferenceable(16) %0, ptr noalias nofree noundef writeonly align 8 captures(none) dereferenceable(2720) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [2728 x i8], align 8              ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RINvXs1_NtCsfzLoC2LLPWN_7bincode2deQINtB6_12DeserializerNtNtB6_4read11SliceReaderINtNtB8_6config17WithOtherTrailingINtB1k_15WithOtherEndianINtB1k_20WithOtherIntEncodingNtB1k_14DefaultOptionsNtNtB1k_3int14FixintEncodingENtNtB1k_6endian12LittleEndianENtNtB1k_8trailing14RejectTrailingEENtNtCs6yNvtpc0TEA_10serde_core2de12Deserializer18deserialize_structNtNvXNvNtNtCs807GXlIGG3x_7zkgroup6crypto11credentialss_1__NtB5K_12SystemParamsNtB4A_11Deserialize11deserialize9___VisitorEB5O_(ptr noalias nofree noundef nonnull sret([2728 x i8]) align 8 captures(address) dereferenceable(2728) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @6, i64 noundef 12, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) @19, i64 noundef 12)
  %i.b = load i64, ptr %i.a, align 8, !range !7, !noundef !5
  %i.c = trunc nuw i64 %i.b to i1
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %i.d, align 8, !nonnull !5, !align !8, !noundef !5
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(2720) %1, ptr noundef nonnull align 8 dereferenceable(2720) %i.d, i64 2720, i1 false)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.0.0 = phi ptr [ %i.e, %bb.b ], [ null, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret ptr %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define hidden noundef align 8 ptr @_RINvYNtNtNtCs807GXlIGG3x_7zkgroup6crypto14uid_encryption12SystemParamsNtNtCs6yNvtpc0TEA_10serde_core2de11Deserialize20deserialize_in_placeQINtNtCsfzLoC2LLPWN_7bincode2de12DeserializerNtNtB2g_4read11SliceReaderINtNtB2i_6config17WithOtherTrailingINtB3o_15WithOtherEndianINtB3o_20WithOtherIntEncodingNtB3o_14DefaultOptionsNtNtB3o_3int14FixintEncodingENtNtB3o_6endian12LittleEndianENtNtB3o_8trailing14RejectTrailingEEEB9_(ptr noalias nofree noundef align 8 dereferenceable(16) %0, ptr noalias nofree noundef writeonly align 8 captures(none) dereferenceable(320) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [328 x i8], align 8               ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RINvXs1_NtCsfzLoC2LLPWN_7bincode2deQINtB6_12DeserializerNtNtB6_4read11SliceReaderINtNtB8_6config17WithOtherTrailingINtB1k_15WithOtherEndianINtB1k_20WithOtherIntEncodingNtB1k_14DefaultOptionsNtNtB1k_3int14FixintEncodingENtNtB1k_6endian12LittleEndianENtNtB1k_8trailing14RejectTrailingEENtNtCs6yNvtpc0TEA_10serde_core2de12Deserializer18deserialize_structNtNvXNvNtNtCs807GXlIGG3x_7zkgroup6crypto14uid_encryptions_1__NtB5K_12SystemParamsNtB4A_11Deserialize11deserialize9___VisitorEB5O_(ptr noalias nofree noundef nonnull sret([328 x i8]) align 8 captures(address) dereferenceable(328) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @6, i64 noundef 12, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) @22, i64 noundef 2)
  %i.b = load i64, ptr %i.a, align 8, !range !7, !noundef !5
  %i.c = trunc nuw i64 %i.b to i1
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %i.d, align 8, !nonnull !5, !align !8, !noundef !5
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(320) %1, ptr noundef nonnull align 8 dereferenceable(320) %i.d, i64 320, i1 false)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.0.0 = phi ptr [ %i.e, %bb.b ], [ null, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret ptr %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define hidden noundef align 8 ptr @_RINvYNtNtNtCs807GXlIGG3x_7zkgroup6crypto22profile_key_encryption12SystemParamsNtNtCs6yNvtpc0TEA_10serde_core2de11Deserialize20deserialize_in_placeQINtNtCsfzLoC2LLPWN_7bincode2de12DeserializerNtNtB2o_4read11SliceReaderINtNtB2q_6config17WithOtherTrailingINtB3w_15WithOtherEndianINtB3w_20WithOtherIntEncodingNtB3w_14DefaultOptionsNtNtB3w_3int14FixintEncodingENtNtB3w_6endian12LittleEndianENtNtB3w_8trailing14RejectTrailingEEEB9_(ptr noalias nofree noundef align 8 dereferenceable(16) %0, ptr noalias nofree noundef writeonly align 8 captures(none) dereferenceable(320) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [328 x i8], align 8               ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RINvXs1_NtCsfzLoC2LLPWN_7bincode2deQINtB6_12DeserializerNtNtB6_4read11SliceReaderINtNtB8_6config17WithOtherTrailingINtB1k_15WithOtherEndianINtB1k_20WithOtherIntEncodingNtB1k_14DefaultOptionsNtNtB1k_3int14FixintEncodingENtNtB1k_6endian12LittleEndianENtNtB1k_8trailing14RejectTrailingEENtNtCs6yNvtpc0TEA_10serde_core2de12Deserializer18deserialize_structNtNvXNvNtNtCs807GXlIGG3x_7zkgroup6crypto22profile_key_encryptions_1__NtB5K_12SystemParamsNtB4A_11Deserialize11deserialize9___VisitorEB5O_(ptr noalias nofree noundef nonnull sret([328 x i8]) align 8 captures(address) dereferenceable(328) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @6, i64 noundef 12, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) @25, i64 noundef 2)
  %i.b = load i64, ptr %i.a, align 8, !range !7, !noundef !5
  %i.c = trunc nuw i64 %i.b to i1
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %i.d, align 8, !nonnull !5, !align !8, !noundef !5
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(320) %1, ptr noundef nonnull align 8 dereferenceable(320) %i.d, i64 320, i1 false)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.0.0 = phi ptr [ %i.e, %bb.b ], [ null, %bb.c ]
end_hunk_0
begin_hunk_1_@_RNvMs0_NtNtCs807GXlIGG3x_7zkgroup6crypto14uid_encryptionNtB5_19UidEncryptionDomain7decrypt:bb.a
  unreachable

bb.m:                                             ; preds = %bb.k
  store i8 2, ptr %0, align 1
  br label %bb.o

bb.n:                                             ; preds = %bb.k
  %i.ap = zext nneg i8 %i.an to i64
  %i.aq = getelementptr inbounds nuw [17 x i8], ptr %i.n, i64 %i.ap
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(17) %0, ptr noundef nonnull align 1 dereferenceable(17) %i.aq, i64 17, i1 false)
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  br label %bb.f

bb.p:                                             ; preds = %bb.f, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  ret void

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs807GXlIGG3x_7zkgroup6common3sho3ShoEBH_.exit: ; preds = %bb.q
  resume { ptr, i32 } %lpad.thr_comm.split-lp

bb.q:                                             ; preds = %bb.d, %bb.g
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(64) %i.a, i8 0, i64 64, i1 false), !noalias !142
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 dereferenceable(224) %i.k, ptr nonnull align 1 %i.a, i64 64, i1 true)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void asm sideeffect inteldialect "# ${0:q}", "r,~{memory}"(ptr nonnull align 8 dereferenceable(224) %i.k) #24, !srcloc !4
  invoke void @_RNvXCseNmJmsPJ47l_7zeroizeuNtB2_7Zeroize7zeroizeCs807GXlIGG3x_7zkgroup(ptr noalias nofree noundef nonnull %i.aa)
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs807GXlIGG3x_7zkgroup6common3sho3ShoEBH_.exit unwind label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ar = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #23
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs0_NtNtCs807GXlIGG3x_7zkgroup6crypto22profile_key_encryptionNtB5_26ProfileKeyEncryptionDomain7decrypt(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([33 x i8]) align 1 captures(none) dereferenceable(33) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(224) %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(320) %2, ptr noalias nofree noundef readonly align 1 captures(none) dead_on_return dereferenceable(16) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [64 x i8], align 1                ; 4 uses
  %i.b = alloca [1 x i8], align 1                 ; 4 uses
  %i.c = alloca [184 x i8], align 8               ; 5 uses
  %.sroa.011.i.i.i.i.i.i.i = alloca [216 x i8], align 8 ; 5 uses
  %i.d = alloca [16 x i8], align 1                ; 4 uses
  %i.e = alloca [32 x i8], align 1                ; 6 uses
  %i.f = alloca [224 x i8], align 8               ; 5 uses
  %i.g = alloca [160 x i8], align 8               ; 4 uses
  %i.h = alloca [33 x i8], align 1                ; 7 uses
  %i.i = alloca [33 x i8], align 1                ; 5 uses
  %i.j = alloca [32 x i8], align 1                ; 7 uses
  %.sroa.4.i.i.i.i = alloca [30 x i8], align 1    ; 5 uses
  %i.k = alloca [33 x i8], align 1                ; 7 uses
  %i.l = alloca [33 x i8], align 1                ; 5 uses
  %i.m = alloca [33 x i8], align 1                ; 4 uses
  %i.n = alloca [64 x i8], align 1                ; 4 uses
  %i.o = alloca [33 x i8], align 1                ; 5 uses
  %i.p = alloca [33 x i8], align 1                ; 7 uses
  %i.q = alloca [32 x i8], align 1                ; 4 uses
  %i.r = alloca [224 x i8], align 8               ; 12 uses
  %i.s = alloca [160 x i8], align 8               ; 2 uses
  %i.t = alloca [32 x i8], align 1                ; 4 uses
  %i.u = alloca [160 x i8], align 8               ; 4 uses
  %i.v = alloca [528 x i8], align 1               ; 4 uses
  %i.w = alloca [168 x i8], align 8               ; 6 uses
  %i.x = alloca [160 x i8], align 8               ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w)
  call void @_RNvMs7_NtCs17t5S1clqUH_12zkcredential10attributesINtB5_7KeyPairNtNtNtCs807GXlIGG3x_7zkgroup6crypto22profile_key_encryption26ProfileKeyEncryptionDomainE23decrypt_to_second_pointB15_(ptr noalias nofree noundef nonnull sret([168 x i8]) align 8 captures(none) dereferenceable(168) %i.w, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(224) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(320) %2)
  %i.y = load i64, ptr %i.w, align 8, !range !7, !noundef !5
  %i.z = trunc nuw i64 %i.y to i1
  br i1 %i.z, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w)
  store i8 1, ptr %0, align 1
  br label %bb.p

bb.c:                                             ; preds = %bb.a
  %i.aa = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(160) %i.x, ptr noundef nonnull align 8 dereferenceable(160) %i.aa, i64 160, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v)
  call void @_RNvMNtNtCsdRrpXuHtjOb_16curve25519_dalek6lizard16lizard_ristrettoNtNtB6_9ristretto14RistrettoPoint20map_to_curve_inverse(ptr noalias nofree noundef nonnull sret([528 x i8]) align 1 captures(none) dereferenceable(528) %i.v, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(160) %i.x)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t)
  call void @_RNvMso_NtCsdRrpXuHtjOb_16curve25519_dalek6scalarNtB5_6Scalar6invert(ptr noalias nofree noundef nonnull sret([32 x i8]) align 1 captures(address) dereferenceable(32) %i.t, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(32) %1)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(160) %i.s, ptr noundef nonnull align 8 dereferenceable(160) %2, i64 160, i1 false)
  call void @_RNvXsX_NtCsdRrpXuHtjOb_16curve25519_dalek9ristrettoNtNtB7_6scalar6ScalarINtNtNtCsgxBkk5gSRhY_4core3ops5arith3MulNtB5_14RistrettoPointE3mul(ptr noalias nofree noundef nonnull sret([160 x i8]) align 8 captures(address) dereferenceable(160) %i.u, ptr noalias nofree noundef nonnull readonly align 1 captures(address) dereferenceable(32) %i.t, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(160) %i.s)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  call void @llvm.experimental.noalias.scope.decl(metadata !201)
  call void @llvm.experimental.noalias.scope.decl(metadata !202)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !203
  call void @_RNvMNtNtCs807GXlIGG3x_7zkgroup6crypto18profile_key_structNtB2_16ProfileKeyStruct7seed_M3(ptr noalias nofree noundef nonnull sret([224 x i8]) align 8 captures(address) dereferenceable(224) %i.r), !noalias !203
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !203
  invoke void @_RNvXsz_NtCsgxBkk5gSRhY_4core5arrayAhj20_NtNtB7_7default7Default7defaultCs807GXlIGG3x_7zkgroup(ptr noalias nofree noundef nonnull sret([32 x i8]) align 1 captures(none) dereferenceable(32) %i.q)
          to label %bb.d unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !203

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.i, %.noexc9.i, %.noexc10.i, %.noexc11.i, %.noexc12.i, %_RINvMsg_Cs7yXBOrgAdI3_6subtleINtB6_8CtOptionAhj20_E7or_elseNCNCNCNvMs0_NtNtCs807GXlIGG3x_7zkgroup6crypto22profile_key_encryptionNtB17_26ProfileKeyEncryptionDomain23decrypt_from_candidates000EB1b_.exit.i.i.i.i.i, %.noexc18.i, %_RNCNvMs0_NtNtCs807GXlIGG3x_7zkgroup6crypto22profile_key_encryptionNtB7_26ProfileKeyEncryptionDomain23decrypt_from_candidates0Bb_.exit.i.i, %.noexc7.i, %.noexc6.i, %.noexc5.i, %bb.h, %bb.g, %bb.l, %bb.j, %bb.d, %bb.c
  %lpad.loopexit.split-lp20 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(64) %i.n, i8 0, i64 64, i1 false), !noalias !204
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 dereferenceable(224) %i.r, ptr nonnull align 1 %i.n, i64 64, i1 true), !noalias !205
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  call void asm sideeffect inteldialect "# ${0:q}", "r,~{memory}"(ptr nonnull align 8 dereferenceable(224) %i.r) #24, !noalias !205, !srcloc !4
  %i.ab = getelementptr inbounds nuw i8, ptr %i.r, i64 64
  invoke void @_RNvXCseNmJmsPJ47l_7zeroizeuNtB2_7Zeroize7zeroizeCs807GXlIGG3x_7zkgroup(ptr noalias nofree noundef nonnull %i.ab)
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs807GXlIGG3x_7zkgroup6common3sho3ShoEBH_.exit.i unwind label %bb.o, !noalias !205

bb.d:                                             ; preds = %bb.c
  %i.ac = invoke noundef i8 @_RINvCs7yXBOrgAdI3_6subtle9black_boxhECs5xjgei055gZ_13password_hash(i8 noundef 0)
          to label %bb.e unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !203

bb.e:                                             ; preds = %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.p, ptr noundef nonnull align 1 dereferenceable(32) %i.q, i64 32, i1 false), !noalias !203
  %i.ad = getelementptr inbounds nuw i8, ptr %i.p, i64 32 ; 2 uses
  store i8 %i.ac, ptr %i.ad, align 1, !noalias !203
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !203
  %i.ae = getelementptr inbounds nuw i8, ptr %i.o, i64 32
  %i.af = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  %.sroa.44.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 1
  %.sroa.5.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 31
  %i.ag = getelementptr inbounds nuw i8, ptr %i.k, i64 32 ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  %i.ai = getelementptr inbounds nuw i8, ptr %i.r, i64 64 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  %i.ak = getelementptr inbounds nuw i8, ptr %i.r, i64 184
  %.sroa.011.184..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.011.i.i.i.i.i.i.i, i64 184
  %i.al = getelementptr inbounds nuw i8, ptr %i.r, i64 216
  %.sroa.512.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 216
  %.sroa.5.0..sroa_idx3.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 1
  %.sroa.55.0..sroa_idx6.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 31
  %.sroa.5.0..sroa_idx4.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 1
  %.sroa.55.0..sroa_idx8.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 31
  %i.am = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  br label %bb.g

bb.f:                                             ; preds = %bb.n
  %i.an = icmp eq i8 %i.bj, 1
  br i1 %i.an, label %bb.k, label %_RNvMs0_NtNtCs807GXlIGG3x_7zkgroup6crypto22profile_key_encryptionNtB5_26ProfileKeyEncryptionDomain23decrypt_from_candidates.exit

bb.g:                                             ; preds = %bb.n, %bb.e
  %.sroa.01.032.i = phi i64 [ 0, %bb.e ], [ %i.br, %bb.n ] ; 2 uses
  %.sroa.0.031.i = phi i8 [ 0, %bb.e ], [ %i.bj, %bb.n ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !203
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(33) %i.o, ptr noundef nonnull align 1 dereferenceable(33) %i.p, i64 33, i1 false), !noalias !203
  call void @llvm.experimental.noalias.scope.decl(metadata !206)
  %i.ao = load i8, ptr %i.ae, align 1, !alias.scope !206, !noalias !203, !noundef !5
  %i.ap = and i8 %i.ao, 1
  %i.aq = xor i8 %i.ap, 1
  %i.ar = invoke noundef i8 @_RINvCs7yXBOrgAdI3_6subtle9black_boxhECs5xjgei055gZ_13password_hash(i8 noundef %i.aq)
          to label %bb.h unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !205

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !207
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !208
  %i.as = getelementptr inbounds nuw [33 x i8], ptr %i.v, i64 %.sroa.01.032.i ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(33) %i.l, ptr noundef nonnull readonly align 1 dereferenceable(33) %i.as, i64 33, i1 false), !noalias !209
  call void @llvm.experimental.noalias.scope.decl(metadata !210)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !211
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4.i.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !212
  invoke void @_RNvXsz_NtCsgxBkk5gSRhY_4core5arrayAhj20_NtNtB7_7default7Default7defaultCs807GXlIGG3x_7zkgroup(ptr noalias nofree noundef nonnull sret([32 x i8]) align 1 captures(none) dereferenceable(32) %i.j)
          to label %.noexc5.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !205

.noexc5.i:                                        ; preds = %bb.h
  %i.at = load i8, ptr %i.af, align 1, !alias.scope !210, !noalias !208, !noundef !5 ; 2 uses
  invoke void @_RNvXsd_Cs7yXBOrgAdI3_6subtleAhj20_NtB5_23ConditionallySelectable18conditional_assignCs807GXlIGG3x_7zkgroup(ptr noalias nofree noundef nonnull dereferenceable(32) %i.j, ptr noalias nofree noundef nonnull readonly align 1 captures(address, read_provenance) dereferenceable(33) %i.l, i8 noundef %i.at)
          to label %.noexc6.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !205

.noexc6.i:                                        ; preds = %.noexc5.i
  %.sroa.03.0.copyload.i.i.i.i = load i8, ptr %i.j, align 1, !noalias !213
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(30) %.sroa.4.i.i.i.i, ptr noundef nonnull align 1 dereferenceable(30) %.sroa.44.0..sroa_idx.i.i.i.i, i64 30, i1 false), !noalias !211
  %.sroa.5.0.copyload.i.i.i.i = load i8, ptr %.sroa.5.0..sroa_idx.i.i.i.i, align 1, !noalias !213
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !212
  call void @llvm.experimental.noalias.scope.decl(metadata !214)
  invoke void @_RNvXsz_NtCsgxBkk5gSRhY_4core5arrayAhj20_NtNtB7_7default7Default7defaultCs807GXlIGG3x_7zkgroup(ptr noalias nofree noundef nonnull sret([32 x i8]) align 1 captures(none) dereferenceable(33) %i.k)
          to label %.noexc7.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !205

.noexc7.i:                                        ; preds = %.noexc6.i
  %i.au = invoke noundef i8 @_RINvCs7yXBOrgAdI3_6subtle9black_boxhECs5xjgei055gZ_13password_hash(i8 noundef 0) #27
          to label %.noexc8.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !205

.noexc8.i:                                        ; preds = %.noexc7.i
  store i8 %i.au, ptr %i.ag, align 1, !alias.scope !214, !noalias !211
  %i.av = getelementptr inbounds nuw i8, ptr %i.as, i64 32
  br label %bb.i

bb.i:                                             ; preds = %.noexc16.i, %.noexc8.i
  %.sroa.0.1.i = phi i8 [ %.sroa.0.031.i, %.noexc8.i ], [ %i.bj, %.noexc16.i ] ; 2 uses
  %.sroa.01.04.i.i.i.i.i = phi i32 [ 0, %.noexc8.i ], [ %i.aw, %.noexc16.i ] ; 3 uses
  %i.aw = add nuw nsw i32 %.sroa.01.04.i.i.i.i.i, 1 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !215
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(33) %i.i, ptr noundef nonnull align 1 dereferenceable(33) %i.k, i64 33, i1 false), !noalias !216
  call void @llvm.experimental.noalias.scope.decl(metadata !217)
  %i.ax = load i8, ptr %i.ah, align 1, !alias.scope !217, !noalias !215, !noundef !5
  %i.ay = and i8 %i.ax, 1
  %i.az = xor i8 %i.ay, 1
  %i.ba = invoke noundef i8 @_RINvCs7yXBOrgAdI3_6subtle9black_boxhECs5xjgei055gZ_13password_hash(i8 noundef %i.az)
          to label %.noexc9.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !205

.noexc9.i:                                        ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !218
  call void @llvm.experimental.noalias.scope.decl(metadata !219)
  %i.bb = trunc nuw nsw i32 %.sroa.01.04.i.i.i.i.i to i8 ; 2 uses
  %i.bc = lshr i8 %i.bb, 2
  %spec.select.i.i.i.i.i.i.i = or i8 %i.bc, %.sroa.03.0.copyload.i.i.i.i ; 2 uses
  %i.bd = shl i8 %i.bb, 6
  %4 = and i8 %i.bd, -128
  %.sroa.55.0.i.i.i.i.i.i.i = or i8 %4, %.sroa.5.0.copyload.i.i.i.i ; 2 uses
  %5 = trunc i32 %.sroa.01.04.i.i.i.i.i to i1
  %.sroa.55.1.i.i.i.i.i.i.i.a = or i8 %.sroa.55.0.i.i.i.i.i.i.i, 64
  %.sroa.55.1.i.i.i.i.i.i.i = select i1 %5, i8 %.sroa.55.1.i.i.i.i.i.i.i.a, i8 %.sroa.55.0.i.i.i.i.i.i.i ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !220
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !220
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.011.i.i.i.i.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !220
  invoke void @_RNvXs9_NtCsfkg6qDyjgHi_4hmac9block_apiINtB5_13HmacResetCoreNtCsj2Wav7G13rI_4sha26Sha256ENtNtCsgxBkk5gSRhY_4core5clone5Clone5cloneCs807GXlIGG3x_7zkgroup(ptr noalias nofree noundef nonnull sret([120 x i8]) align 8 captures(none) dereferenceable(120) %i.aj, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.ai)
          to label %.noexc10.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !205

.noexc10.i:                                       ; preds = %.noexc9.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.c, ptr noundef nonnull align 8 dereferenceable(64) %i.r, i64 64, i1 false), !noalias !221
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.011.184..sroa_idx.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(32) %i.ak, i64 32, i1 false), !noalias !221
  %i.be = load i8, ptr %i.al, align 8, !range !10, !noalias !221, !noundef !5
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(184) %.sroa.011.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(184) %i.c, i64 184, i1 false), !noalias !220
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !220
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(216) %i.f, ptr noundef nonnull align 8 dereferenceable(216) %.sroa.011.i.i.i.i.i.i.i, i64 216, i1 false), !noalias !220
  store i8 %i.be, ptr %.sroa.512.0..sroa_idx.i.i.i.i.i.i.i, align 8, !noalias !220
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.011.i.i.i.i.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !220
  store i8 %spec.select.i.i.i.i.i.i.i, ptr %i.e, align 1, !noalias !220
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(30) %.sroa.5.0..sroa_idx3.i.i.i.i.i.i.i, ptr noundef nonnull align 1 dereferenceable(30) %.sroa.4.i.i.i.i, i64 30, i1 false), !noalias !222
  store i8 %.sroa.55.1.i.i.i.i.i.i.i, ptr %.sroa.55.0..sroa_idx6.i.i.i.i.i.i.i, align 1, !noalias !220
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !220
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.d, ptr noundef nonnull readonly align 1 dereferenceable(16) %3, i64 16, i1 false), !noalias !223
  invoke void @_RNvMNtNtCs807GXlIGG3x_7zkgroup6crypto18profile_key_structNtB2_16ProfileKeyStruct7calc_M3(ptr noalias nofree noundef nonnull sret([160 x i8]) align 8 captures(address) dereferenceable(160) %i.g, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(224) %i.f, ptr noalias nofree noundef nonnull readonly align 1 captures(address) dereferenceable(32) %i.e, ptr noalias nofree noundef nonnull readonly align 1 captures(address) dereferenceable(16) %i.d)
          to label %.noexc11.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !205

.noexc11.i:                                       ; preds = %.noexc10.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !220
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !220
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !220
  %i.bf = invoke noundef i8 @_RNvXsd_NtCsdRrpXuHtjOb_16curve25519_dalek9ristrettoNtB5_14RistrettoPointNtCs7yXBOrgAdI3_6subtle14ConstantTimeEq5ct_eq(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(160) %i.g, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(160) %i.u)
          to label %.noexc12.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !205 ; 2 uses

.noexc12.i:                                       ; preds = %.noexc11.i
  %i.bg = load i8, ptr %i.av, align 1, !alias.scope !202, !noalias !224, !noundef !5
  %i.bh = and i8 %i.bg, %i.bf
  %i.bi = invoke noundef i8 @_RINvCs7yXBOrgAdI3_6subtle9black_boxhECs5xjgei055gZ_13password_hash(i8 noundef %i.bh) #27
          to label %.noexc13.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !205

.noexc13.i:                                       ; preds = %.noexc12.i
  %i.bj = add i8 %i.bi, %.sroa.0.1.i              ; 4 uses
  %i.bk = icmp ult i8 %i.bj, %.sroa.0.1.i
  br i1 %i.bk, label %bb.j, label %_RINvMsg_Cs7yXBOrgAdI3_6subtleINtB6_8CtOptionAhj20_E7or_elseNCNCNCNvMs0_NtNtCs807GXlIGG3x_7zkgroup6crypto22profile_key_encryptionNtB17_26ProfileKeyEncryptionDomain23decrypt_from_candidates000EB1b_.exit.i.i.i.i.i

bb.j:                                             ; preds = %.noexc13.i
  invoke void @_RNvNtNtCsgxBkk5gSRhY_4core9panicking11panic_const24panic_const_add_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @31) #26
          to label %.noexc15.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !205

.noexc15.i:                                       ; preds = %bb.j
  unreachable

_RINvMsg_Cs7yXBOrgAdI3_6subtleINtB6_8CtOptionAhj20_E7or_elseNCNCNCNvMs0_NtNtCs807GXlIGG3x_7zkgroup6crypto22profile_key_encryptionNtB17_26ProfileKeyEncryptionDomain23decrypt_from_candidates000EB1b_.exit.i.i.i.i.i: ; preds = %.noexc13.i
  store i8 %spec.select.i.i.i.i.i.i.i, ptr %i.h, align 1, !alias.scope !219, !noalias !218
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(30) %.sroa.5.0..sroa_idx4.i.i.i.i.i.i.i, ptr noundef nonnull align 1 dereferenceable(30) %.sroa.4.i.i.i.i, i64 30, i1 false), !noalias !222
  store i8 %.sroa.55.1.i.i.i.i.i.i.i, ptr %.sroa.55.0..sroa_idx8.i.i.i.i.i.i.i, align 1, !alias.scope !219, !noalias !218
  store i8 %i.bf, ptr %i.am, align 1, !alias.scope !219, !noalias !218
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !220
  invoke void @_RNvXsh_Cs7yXBOrgAdI3_6subtleINtB5_8CtOptionAhj20_ENtB5_23ConditionallySelectable18conditional_selectCs807GXlIGG3x_7zkgroup(ptr noalias nofree noundef nonnull sret([33 x i8]) align 1 captures(none) dereferenceable(33) %i.k, ptr noalias nofree noundef nonnull readonly align 1 captures(address, read_provenance) dereferenceable(33) %i.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(33) %i.h, i8 noundef %i.ba)
          to label %.noexc16.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !205

.noexc16.i:                                       ; preds = %_RINvMsg_Cs7yXBOrgAdI3_6subtleINtB6_8CtOptionAhj20_E7or_elseNCNCNCNvMs0_NtNtCs807GXlIGG3x_7zkgroup6crypto22profile_key_encryptionNtB17_26ProfileKeyEncryptionDomain23decrypt_from_candidates000EB1b_.exit.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !218
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !215
  %exitcond.not.i.i.i.i.i = icmp eq i32 %i.aw, 8
  br i1 %exitcond.not.i.i.i.i.i, label %_RNCNvMs0_NtNtCs807GXlIGG3x_7zkgroup6crypto22profile_key_encryptionNtB7_26ProfileKeyEncryptionDomain23decrypt_from_candidates0Bb_.exit.i.i, label %bb.i

_RNCNvMs0_NtNtCs807GXlIGG3x_7zkgroup6crypto22profile_key_encryptionNtB7_26ProfileKeyEncryptionDomain23decrypt_from_candidates0Bb_.exit.i.i: ; preds = %.noexc16.i
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4.i.i.i.i)
  %i.bl = load i8, ptr %i.ag, align 1, !noalias !211, !noundef !5
  %i.bm = and i8 %i.bl, %i.at
  %i.bn = invoke noundef i8 @_RINvCs7yXBOrgAdI3_6subtle9black_boxhECs5xjgei055gZ_13password_hash(i8 noundef %i.bm)
          to label %.noexc18.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !205

.noexc18.i:                                       ; preds = %_RNCNvMs0_NtNtCs807GXlIGG3x_7zkgroup6crypto22profile_key_encryptionNtB7_26ProfileKeyEncryptionDomain23decrypt_from_candidates0Bb_.exit.i.i
  store i8 %i.bn, ptr %i.ag, align 1, !noalias !211
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(33) %i.m, ptr noundef nonnull align 1 dereferenceable(33) %i.k, i64 33, i1 false), !noalias !225
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !211
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !208
  invoke void @_RNvXsh_Cs7yXBOrgAdI3_6subtleINtB5_8CtOptionAhj20_ENtB5_23ConditionallySelectable18conditional_selectCs807GXlIGG3x_7zkgroup(ptr noalias nofree noundef nonnull sret([33 x i8]) align 1 captures(none) dereferenceable(33) %i.p, ptr noalias nofree noundef nonnull readonly align 1 captures(address, read_provenance) dereferenceable(33) %i.o, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(33) %i.m, i8 noundef %i.ar)
          to label %bb.n unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !205

bb.k:                                             ; preds = %bb.f
  call void @llvm.experimental.noalias.scope.decl(metadata !226)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !227
  %i.bo = load i8, ptr %i.ad, align 1, !alias.scope !226, !noalias !203, !noundef !5 ; 2 uses
  store i8 %i.bo, ptr %i.b, align 1, !noalias !227
  %i.bp = icmp eq i8 %i.bo, 1
  br i1 %i.bp, label %bb.m, label %bb.l, !prof !6

bb.l:                                             ; preds = %bb.k
  invoke void @_RINvNtCsgxBkk5gSRhY_4core9panicking13assert_failedhhECsdRrpXuHtjOb_16curve25519_dalek(i8 noundef 0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(1) %i.b, ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(1) @51, ptr noundef null, ptr undef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @52) #25
          to label %.noexc20.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !205

.noexc20.i:                                       ; preds = %bb.l
  unreachable

bb.m:                                             ; preds = %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !227
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.bq, ptr noundef nonnull readonly align 1 dereferenceable(33) %i.p, i64 32, i1 false), !noalias !228
  br label %_RNvMs0_NtNtCs807GXlIGG3x_7zkgroup6crypto22profile_key_encryptionNtB5_26ProfileKeyEncryptionDomain23decrypt_from_candidates.exit

bb.n:                                             ; preds = %.noexc18.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !207
  %i.br = add nuw nsw i64 %.sroa.01.032.i, 1      ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !203
  %exitcond.not.i = icmp eq i64 %i.br, 8
  br i1 %exitcond.not.i, label %bb.f, label %bb.g

bb.o:                                             ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %i.bs = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #23, !noalias !205
  unreachable

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs807GXlIGG3x_7zkgroup6common3sho3ShoEBH_.exit.i: ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  resume { ptr, i32 } %lpad.loopexit.split-lp20

_RNvMs0_NtNtCs807GXlIGG3x_7zkgroup6crypto22profile_key_encryptionNtB5_26ProfileKeyEncryptionDomain23decrypt_from_candidates.exit: ; preds = %bb.f, %bb.m
  %storemerge.i = phi i8 [ 0, %bb.m ], [ 1, %bb.f ]
  store i8 %storemerge.i, ptr %0, align 1, !alias.scope !201
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(64) %i.a, i8 0, i64 64, i1 false), !noalias !229
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 dereferenceable(224) %i.r, ptr nonnull align 1 %i.a, i64 64, i1 true), !noalias !205
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void asm sideeffect inteldialect "# ${0:q}", "r,~{memory}"(ptr nonnull align 8 dereferenceable(224) %i.r) #24, !noalias !205, !srcloc !4
  call void @_RNvXCseNmJmsPJ47l_7zeroizeuNtB2_7Zeroize7zeroizeCs807GXlIGG3x_7zkgroup(ptr noalias nofree noundef nonnull %i.ai), !noalias !205
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !203
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  br label %bb.p

bb.p:                                             ; preds = %_RNvMs0_NtNtCs807GXlIGG3x_7zkgroup6crypto22profile_key_encryptionNtB5_26ProfileKeyEncryptionDomain23decrypt_from_candidates.exit, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs2_NtNtNtCs807GXlIGG3x_7zkgroup3api6groups22group_send_endorsementINtB5_20GroupSendEndorsementNtNtCsdRrpXuHtjOb_16curve25519_dalek9ristretto19CompressedRistrettoE10decompress(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([168 x i8]) align 8 captures(none) dereferenceable(168) initializes((0, 24)) %0, ptr noalias nofree noundef readonly align 1 captures(none) dead_on_return dereferenceable(32) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [32 x i8], align 1                ; 4 uses
  %i.b = alloca [168 x i8], align 8               ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.a, ptr noundef nonnull align 1 dereferenceable(32) %1, i64 32, i1 false)
  call void @_RNvMs5_NtCs17t5S1clqUH_12zkcredential12endorsementsINtB5_11EndorsementNtNtCsdRrpXuHtjOb_16curve25519_dalek9ristretto19CompressedRistrettoE10decompress(ptr noalias nofree noundef nonnull sret([168 x i8]) align 8 captures(none) dereferenceable(168) %i.b, ptr noalias nofree noundef nonnull readonly align 1 captures(address) dereferenceable(32) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.c = load i64, ptr %i.b, align 8, !range !7, !noundef !5
  %i.d = trunc nuw i64 %i.c to i1
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.016.0.copyload = load ptr, ptr %i.e, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.4.0.copyload = load i64, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.517.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %.sroa.6.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(144) %.sroa.517.0..sroa_idx, i64 144, i1 false)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.016.0.copyload.sink = phi ptr [ %.sroa.016.0.copyload, %bb.b ], [ @47, %bb.a ]
  %.sroa.4.0.copyload.sink = phi i64 [ %.sroa.4.0.copyload, %bb.b ], [ 116, %bb.a ]
  %.sink = phi i64 [ 0, %bb.b ], [ 1, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.016.0.copyload.sink, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.4.0.copyload.sink, ptr %i.g, align 8
  store i64 %.sink, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs3_NtNtNtCs807GXlIGG3x_7zkgroup3api6groups22group_send_endorsementNtB5_20GroupSendEndorsement8compress(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 1 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(160) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [160 x i8], align 8               ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(160) %i.a, ptr noundef nonnull align 8 dereferenceable(160) %1, i64 160, i1 false)
  call void @_RNvMs6_NtCs17t5S1clqUH_12zkcredential12endorsementsNtB5_11Endorsement8compress(ptr noalias nofree noundef nonnull sret([32 x i8]) align 1 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(160) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs4_NtNtCs807GXlIGG3x_7zkgroup6crypto11credentialsNtB5_12SystemParams13get_hardcoded(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([2720 x i8]) align 8 captures(none) dereferenceable(2720) initializes((0, 2720)) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = load atomic i32, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtNtCs807GXlIGG3x_7zkgroup6crypto11credentials13SYSTEM_PARAMS, i64 2720) acquire, align 8
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %_RINvMs0_NtNtCs9k3SxhrAWiO_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockNtNtNtCs807GXlIGG3x_7zkgroup6crypto11credentials12SystemParamsE5force0EB1J_.exit, label %bb.b, !prof !6

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr @_RNvNtNtCs807GXlIGG3x_7zkgroup6crypto11credentials13SYSTEM_PARAMS, ptr %i.b, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.b, ptr %i.a, align 8
  call void @_RNvMs0_NtNtNtNtCs9k3SxhrAWiO_3std3sys4sync4once5futexNtB5_4Once4call(ptr noundef nonnull align 4 getelementptr inbounds nuw (i8, ptr @_RNvNtNtCs807GXlIGG3x_7zkgroup6crypto11credentials13SYSTEM_PARAMS, i64 2720), i1 noundef zeroext true, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) @0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %_RINvMs0_NtNtCs9k3SxhrAWiO_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockNtNtNtCs807GXlIGG3x_7zkgroup6crypto11credentials12SystemParamsE5force0EB1J_.exit

_RINvMs0_NtNtCs9k3SxhrAWiO_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockNtNtNtCs807GXlIGG3x_7zkgroup6crypto11credentials12SystemParamsE5force0EB1J_.exit: ; preds = %bb.a, %bb.b
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(2720) %0, ptr noundef nonnull align 8 dereferenceable(2720) @_RNvNtNtCs807GXlIGG3x_7zkgroup6crypto11credentials13SYSTEM_PARAMS, i64 2720, i1 false)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs4_NtNtNtCs807GXlIGG3x_7zkgroup3api6groups22group_send_endorsementNtB5_20GroupSendEndorsement6remove(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([160 x i8]) align 8 captures(none) dereferenceable(160) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(160) %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(160) %2) unnamed_addr #0 {
bb.a:
  tail call void @_RNvMsb_NtCs17t5S1clqUH_12zkcredential12endorsementsNtB5_11Endorsement6remove(ptr noalias nofree noundef nonnull sret([160 x i8]) align 8 captures(none) dereferenceable(160) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(160) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(160) %2)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs5_NtNtCs807GXlIGG3x_7zkgroup6crypto11credentialsINtB5_7KeyPairNtB5_13PniCredentialE8generateB9_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([800 x i8]) align 8 captures(none) dereferenceable(800) initializes((0, 800)) %0, ptr noalias nofree noundef align 8 dereferenceable(224) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [32 x i8], align 1                ; 4 uses
  %i.d = alloca [32 x i8], align 1                ; 4 uses
  %i.e = alloca [32 x i8], align 1                ; 4 uses
  %i.f = alloca [32 x i8], align 1                ; 4 uses
  %i.g = alloca [160 x i8], align 8               ; 4 uses
  %i.h = alloca [32 x i8], align 1                ; 4 uses
  %i.i = alloca [160 x i8], align 8               ; 24 uses
  %i.j = alloca [48 x i8], align 8                ; 7 uses
  %i.k = alloca [160 x i8], align 8               ; 4 uses
  %i.l = alloca [160 x i8], align 8               ; 4 uses
  %i.m = alloca [160 x i8], align 8               ; 4 uses
  %i.n = alloca [160 x i8], align 8               ; 4 uses
  %i.o = alloca [160 x i8], align 8               ; 4 uses
  %i.p = alloca [160 x i8], align 8               ; 4 uses
  %i.q = alloca [160 x i8], align 8               ; 10 uses
  %i.r = alloca [160 x i8], align 8               ; 4 uses
  %i.s = alloca [160 x i8], align 8               ; 4 uses
  %i.t = alloca [160 x i8], align 8               ; 4 uses
  %i.u = alloca [160 x i8], align 8               ; 4 uses
  %i.v = alloca [192 x i8], align 1               ; 6 uses
  %i.w = alloca [32 x i8], align 1                ; 5 uses
  %i.x = alloca [32 x i8], align 1                ; 5 uses
  %i.y = alloca [32 x i8], align 1                ; 5 uses
  %i.z = alloca [160 x i8], align 8               ; 2 uses
  %i.aa = alloca [160 x i8], align 8              ; 4 uses
  %i.ab = alloca [32 x i8], align 1               ; 6 uses
  %i.ac = alloca [2720 x i8], align 8             ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac)
  %i.ad = load atomic i32, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtNtCs807GXlIGG3x_7zkgroup6crypto11credentials13SYSTEM_PARAMS, i64 2720) acquire, align 8, !noalias !232
  %i.ae = icmp eq i32 %i.ad, 0
  br i1 %i.ae, label %_RNvMs4_NtNtCs807GXlIGG3x_7zkgroup6crypto11credentialsNtB5_12SystemParams13get_hardcoded.exit, label %bb.b, !prof !6

bb.b:                                             ; preds = %bb.a
end_hunk_1
