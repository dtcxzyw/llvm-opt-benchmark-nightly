Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wolfssl/original/ssl?download=true
inline.NumInlined: 160
inline.NumDeleted: 48
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 9
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%union.pthread_mutex_t = type { %struct.__pthread_mutex_s }
%struct.__pthread_mutex_s = type { i32, i32, i32, i32, i32, i16, i16, %struct.__pthread_internal_list }
%struct.__pthread_internal_list = type { ptr, ptr }
%struct.SessionRow = type { i32, i32, [3 x %struct.WOLFSSL_SESSION] }
%struct.WOLFSSL_SESSION = type { i32, i32, %struct.wolfSSL_Ref, [32 x i8], i8, ptr, i8, i32, i32, [32 x i8], i8, [48 x i8], i16, %struct.ProtocolVersion, i8, i8, i16, [20 x i8], i16, i8 }
%struct.wolfSSL_Ref = type { i32 }
%struct.ProtocolVersion = type { i8, i8 }
%struct.ClientRow = type { i32, i32, [24 x %struct.ClientSession] }
%struct.ClientSession = type { i16, i16, i32 }
%struct.WC_RNG = type { %struct.OS_Seed, ptr, i8, %union.anon.0 }
%struct.OS_Seed = type { i32 }
%union.anon.0 = type { %struct.anon }
%struct.anon = type { ptr, i8 }
%struct.DecodedCert = type { ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, [20 x i8], [20 x i8], ptr, ptr, i32, i8, [256 x i8], [256 x i8], i32, ptr, i32, i32, ptr, [32 x i8], i32, ptr, i32, i32, ptr, i32, ptr, i32, ptr, i32, [20 x i8], i32, [20 x i8], i32, i16, i16, i8, i16, i8, i32, ptr, i32, ptr, i32, ptr, i32, ptr, i32, i8, ptr, %struct.SignatureCtx, i32, i32, i32, [8 x %struct.WOLFSSL_AIA_ENTRY], i8 }
%struct.SignatureCtx = type { ptr, ptr, ptr, ptr, i32, %union.anon, i32, i32, i32, i32, i32, i32, i32, i32 }
%union.anon = type { ptr }
%struct.WOLFSSL_AIA_ENTRY = type { i32, ptr, i32 }
%struct.ProcPeerCertArgs = type { ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i8, i8 }
%struct.WOLFSSL_BUFFER_INFO = type { ptr, i32 }
%struct.ecc_key = type { i32, i32, i32, i32, ptr, ptr, %struct.ecc_point, [1 x %struct.sp_int], ptr }
%struct.ecc_point = type { [1 x %struct.sp_int], [1 x %struct.sp_int], [1 x %struct.sp_int], i8 }
%struct.sp_int = type { i16, i16, [129 x i64] }
%struct.EncryptedInfo = type { i64 }
%struct.StaticBuffer = type { ptr, i32, i32 }
%struct.ReadDirCtx = type { ptr, ptr, %struct.stat, [261 x i8] }
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }
%struct.DhKey = type { %struct.sp_int, %struct.sp_int, %struct.sp_int, ptr, i32 }
%struct.Suites = type { i16, i16, [300 x i8], [128 x i8], i8 }

@.str = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@session_lock = internal global %union.pthread_mutex_t zeroinitializer, align 8
@SessionCache = internal global [11 x %struct.SessionRow] zeroinitializer, align 16
@clisession_mutex = internal global %union.pthread_mutex_t zeroinitializer, align 8
@ClientCache = internal global [88 x %struct.ClientRow] zeroinitializer, align 16
@initGlobalRNG = internal global i32 0, align 4
@globalRNG = internal global %struct.WC_RNG zeroinitializer, align 8
@initRefCount = internal global i32 0, align 4
@wolfSSL_ERR_error_string.tmp = internal global [80 x i8] zeroinitializer, align 16
@inits_count_mutex = internal global %union.pthread_mutex_t zeroinitializer, align 8
@session_lock_valid = internal unnamed_addr global i1 false, align 4
@systemCaDirs = internal global [3 x ptr] [ptr @.str.17, ptr @.str.18, ptr @.str.19], align 16
@.str.8 = private unnamed_addr constant [10 x i8] c"localhost\00", align 1
@.str.9 = private unnamed_addr constant [8 x i8] c"unknown\00", align 1
@.str.10 = private unnamed_addr constant [6 x i8] c"5.9.2\00", align 1
@.str.11 = private unnamed_addr constant [11 x i8] c"ML_KEM_512\00", align 1
@.str.12 = private unnamed_addr constant [11 x i8] c"ML_KEM_768\00", align 1
@.str.13 = private unnamed_addr constant [18 x i8] c"SecP256r1MLKEM768\00", align 1
@.str.14 = private unnamed_addr constant [12 x i8] c"ML_KEM_1024\00", align 1
@.str.15 = private unnamed_addr constant [19 x i8] c"SecP384r1MLKEM1024\00", align 1
@.str.17 = private unnamed_addr constant [15 x i8] c"/etc/ssl/certs\00", align 1
@.str.18 = private unnamed_addr constant [33 x i8] c"/etc/pki/ca-trust/source/anchors\00", align 1
@.str.19 = private unnamed_addr constant [19 x i8] c"/etc/pki/tls/certs\00", align 1
@.str.21 = private unnamed_addr constant [6 x i8] c"SSLv3\00", align 1
@.str.22 = private unnamed_addr constant [6 x i8] c"TLSv1\00", align 1
@.str.23 = private unnamed_addr constant [8 x i8] c"TLSv1.1\00", align 1
@.str.24 = private unnamed_addr constant [8 x i8] c"TLSv1.2\00", align 1
@.str.25 = private unnamed_addr constant [8 x i8] c"TLSv1.3\00", align 1
@.str.26 = private unnamed_addr constant [11 x i8] c"FFDHE_2048\00", align 1
@.str.27 = private unnamed_addr constant [11 x i8] c"FFDHE_3072\00", align 1
@.str.28 = private unnamed_addr constant [11 x i8] c"FFDHE_4096\00", align 1
@.str.29 = private unnamed_addr constant [11 x i8] c"FFDHE_6144\00", align 1
@.str.30 = private unnamed_addr constant [11 x i8] c"FFDHE_8192\00", align 1
@switch.table.wolfSSL_CIPHER_get_version = private unnamed_addr constant [5 x ptr] [ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25], align 8
@switch.table.wolfSSL_get_curve_name = private unnamed_addr constant [5 x ptr] [ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30], align 8
@switch.table.wolfSSL_version = private unnamed_addr constant [4 x i16] [i16 -260, i16 -259, i16 0, i16 -257], align 4

; Function Attrs: nounwind uwtable
define ptr @wolfSSL_CertManagerNew_ex(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @wolfSSL_Malloc(i64 noundef 240) #23 ; 14 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %.critedge.thread27, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(240) %i.a, i8 0, i64 240, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 88 ; 2 uses
  store ptr %0, ptr %i.b, align 8, !tbaa !18
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 184 ; 2 uses
  %i.d = tail call i32 @wc_InitMutex(ptr noundef nonnull %i.c) #23
  %.not20 = icmp eq i32 %i.d, 0
  br i1 %.not20, label %.critedge.thread, label %.critedge

.critedge.thread:                                 ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 224 ; 4 uses
  %i.f = load i16, ptr %i.e, align 8
  %i.g = or i16 %i.f, 128
  store i16 %i.g, ptr %i.e, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 232
  tail call void @wolfSSL_Atomic_Int_Init(ptr noundef nonnull %i.h, i32 noundef 1) #23
  %i.i = load i16, ptr %i.e, align 8
  %i.j = or i16 %i.i, 256
  store i16 %i.j, ptr %i.e, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 226
  store i16 128, ptr %i.k, align 2, !tbaa !19
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 228
  store i16 28, ptr %i.l, align 4, !tbaa !20
  br label %.critedge.thread27

.critedge:                                        ; preds = %bb.b
  %i.m = load ptr, ptr %i.b, align 8, !tbaa !18
  tail call void @FreeSignerTable(ptr noundef nonnull %i.a, i32 noundef 11, ptr noundef %i.m) #23
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 224
  %i.o = load i16, ptr %i.n, align 8              ; 2 uses
  %i.p = and i16 %i.o, 128
  %.not.i = icmp eq i16 %i.p, 0
  %1 = lshr i16 %i.o, 8
  %2 = trunc nuw i16 %1 to i8
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.critedge
  %i.q = tail call i32 @wc_FreeMutex(ptr noundef nonnull %i.c) #23 ; 0 uses
  %.phi.trans.insert.i = getelementptr i8, ptr %i.a, i64 225
  %.pre.i = load i8, ptr %.phi.trans.insert.i, align 1
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %.critedge
  %3 = phi i8 [ %.pre.i, %bb.c ], [ %2, %.critedge ]
  %4 = and i8 %3, 1
  %.not9.i = icmp eq i8 %4, 0
  br i1 %.not9.i, label %DoCertManagerFree.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 232
  tail call void @wolfSSL_Atomic_Int_Init(ptr noundef nonnull %i.r, i32 noundef 0) #23
  br label %DoCertManagerFree.exit

DoCertManagerFree.exit:                           ; preds = %bb.d, %bb.e
  tail call void @wolfSSL_Free(ptr noundef nonnull %i.a) #23
  br label %.critedge.thread27

.critedge.thread27:                               ; preds = %bb.a, %.critedge.thread, %DoCertManagerFree.exit
  %.0 = phi ptr [ null, %DoCertManagerFree.exit ], [ null, %bb.a ], [ %i.a, %.critedge.thread ]
  ret ptr %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare ptr @wolfSSL_Malloc(i64 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #3

declare i32 @wc_InitMutex(ptr noundef) local_unnamed_addr #2

declare void @wolfSSL_Atomic_Int_Init(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nounwind uwtable
define ptr @wolfSSL_CertManagerNew() local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @wolfSSL_CertManagerNew_ex(ptr noundef null)
  ret ptr %i.a
}

; Function Attrs: nounwind uwtable
define void @wolfSSL_CertManagerFree(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 232 ; 2 uses
  %i.b = tail call i32 @wolfSSL_Atomic_Int_FetchSub(ptr noundef nonnull %i.a, i32 noundef 1) #23
  %i.c = icmp eq i32 %i.b, 1
  br i1 %i.c, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !18
  tail call void @FreeSignerTable(ptr noundef nonnull %0, i32 noundef 11, ptr noundef %i.e) #23
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.g = load i16, ptr %i.f, align 8              ; 2 uses
  %i.h = and i16 %i.g, 128
  %.not.i = icmp eq i16 %i.h, 0
  %1 = lshr i16 %i.g, 8
  %2 = trunc nuw i16 %1 to i8
  br i1 %.not.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.j = tail call i32 @wc_FreeMutex(ptr noundef nonnull %i.i) #23 ; 0 uses
  %.phi.trans.insert.i = getelementptr i8, ptr %0, i64 225
  %.pre.i = load i8, ptr %.phi.trans.insert.i, align 1
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %3 = phi i8 [ %.pre.i, %bb.d ], [ %2, %bb.c ]
  %4 = and i8 %3, 1
  %.not9.i = icmp eq i8 %4, 0
  br i1 %.not9.i, label %DoCertManagerFree.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @wolfSSL_Atomic_Int_Init(ptr noundef nonnull %i.a, i32 noundef 0) #23
  br label %DoCertManagerFree.exit

DoCertManagerFree.exit:                           ; preds = %bb.e, %bb.f
  tail call void @wolfSSL_Free(ptr noundef nonnull %0) #23
  br label %bb.g

bb.g:                                             ; preds = %bb.b, %DoCertManagerFree.exit, %bb.a
  ret void
}

declare i32 @wolfSSL_Atomic_Int_FetchSub(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define noundef range(i32 0, 2) i32 @wolfSSL_CertManager_up_ref(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp ne ptr %0, null                     ; 2 uses
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.c = tail call i32 @wolfSSL_Atomic_Int_FetchAdd(ptr noundef nonnull %i.b, i32 noundef 1) #23 ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %spec.store.select = zext i1 %i.a to i32
  ret i32 %spec.store.select
}

declare i32 @wolfSSL_Atomic_Int_FetchAdd(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define range(i32 -173, 2) i32 @wolfSSL_CertManagerUnloadCAs(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %.thread11, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 2 uses
  %i.b = tail call i32 @wc_LockMutex(ptr noundef nonnull %i.a) #23
  %.not7 = icmp eq i32 %i.b, 0
  br i1 %.not7, label %.thread, label %.thread11

.thread:                                          ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !18
  tail call void @FreeSignerTable(ptr noundef nonnull %0, i32 noundef 11, ptr noundef %i.d) #23
  %i.e = tail call i32 @wc_UnLockMutex(ptr noundef nonnull %i.a) #23 ; 0 uses
  br label %.thread11

.thread11:                                        ; preds = %bb.a, %bb.b, %.thread
  %.09 = phi i32 [ 1, %.thread ], [ -106, %bb.b ], [ -173, %bb.a ]
  ret i32 %.09
}

declare i32 @wc_LockMutex(ptr noundef) local_unnamed_addr #2

declare void @FreeSignerTable(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare i32 @wc_UnLockMutex(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define range(i32 -173, 2) i32 @wolfSSL_CertManagerUnloadTypeCerts(ptr noundef %0, i8 noundef zeroext %1) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %.thread12, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 2 uses
  %i.b = tail call i32 @wc_LockMutex(ptr noundef nonnull %i.a) #23
  %.not8 = icmp eq i32 %i.b, 0
  br i1 %.not8, label %.thread, label %.thread12

.thread:                                          ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !18
  tail call void @FreeSignerTableType(ptr noundef nonnull %0, i32 noundef 11, i8 noundef zeroext %1, ptr noundef %i.d) #23
  %i.e = tail call i32 @wc_UnLockMutex(ptr noundef nonnull %i.a) #23 ; 0 uses
  br label %.thread12

.thread12:                                        ; preds = %bb.a, %bb.b, %.thread
  %.010 = phi i32 [ 1, %.thread ], [ -106, %bb.b ], [ -173, %bb.a ]
  ret i32 %.010
}

declare void @FreeSignerTableType(ptr noundef, i32 noundef, i8 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define range(i32 -173, 2) i32 @wolfSSL_CertManagerUnloadIntermediateCerts(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %.not.i = icmp eq ptr %0, null
  br i1 %.not.i, label %wolfSSL_CertManagerUnloadTypeCerts.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 2 uses
  %i.b = tail call i32 @wc_LockMutex(ptr noundef nonnull %i.a) #23
  %.not8.i = icmp eq i32 %i.b, 0
  br i1 %.not8.i, label %.thread.i, label %wolfSSL_CertManagerUnloadTypeCerts.exit

.thread.i:                                        ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !18
  tail call void @FreeSignerTableType(ptr noundef nonnull %0, i32 noundef 11, i8 noundef zeroext 2, ptr noundef %i.d) #23
  %i.e = tail call i32 @wc_UnLockMutex(ptr noundef nonnull %i.a) #23 ; 0 uses
  br label %wolfSSL_CertManagerUnloadTypeCerts.exit

wolfSSL_CertManagerUnloadTypeCerts.exit:          ; preds = %bb.a, %bb.b, %.thread.i
  %.010.i = phi i32 [ 1, %.thread.i ], [ -106, %bb.b ], [ -173, %bb.a ]
  ret i32 %.010.i
}

; Function Attrs: nounwind uwtable
define i32 @wolfSSL_CertManagerLoadCABufferType(ptr noundef %0, ptr noundef %1, i64 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  store ptr null, ptr %i.a, align 8, !tbaa !22
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %wolfSSL_CTX_free.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 4 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !18
  %i.d = tail call ptr @wolfTLSv1_2_client_method_ex(ptr noundef %i.c) #23
  %i.e = load ptr, ptr %i.b, align 8, !tbaa !18
  %i.f = tail call ptr @wolfSSL_CTX_new_ex(ptr noundef %i.d, ptr noundef %i.e) ; 6 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %wolfSSL_CTX_free.exit, label %wolfSSL_CTX_set_verify.exit

wolfSSL_CTX_set_verify.exit:                      ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 169 ; 2 uses
  %i.i = load i16, ptr %i.h, align 1
  %i.j = and i16 %i.i, -16
  store i16 %i.j, ptr %i.h, align 1
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 208
  store ptr null, ptr %i.k, align 8, !tbaa !31
  %i.l = getelementptr inbounds nuw i8, ptr %i.f, i64 144 ; 3 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !32   ; 8 uses
  %.not.i54 = icmp eq ptr %i.m, null
  br i1 %.not.i54, label %bb.h, label %bb.c

bb.c:                                             ; preds = %wolfSSL_CTX_set_verify.exit
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 232 ; 2 uses
  %i.o = tail call i32 @wolfSSL_Atomic_Int_FetchSub(ptr noundef nonnull %i.n, i32 noundef 1) #23
  %i.p = icmp eq i32 %i.o, 1
  br i1 %i.p, label %bb.d, label %bb.h

bb.d:                                             ; preds = %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %i.m, i64 88
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !18
  tail call void @FreeSignerTable(ptr noundef nonnull %i.m, i32 noundef 11, ptr noundef %i.r) #23
  %i.s = getelementptr inbounds nuw i8, ptr %i.m, i64 224
  %i.t = load i16, ptr %i.s, align 8              ; 2 uses
  %i.u = and i16 %i.t, 128
  %.not.i.i = icmp eq i16 %i.u, 0
  %7 = lshr i16 %i.t, 8
  %8 = trunc nuw i16 %7 to i8
  br i1 %.not.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.v = getelementptr inbounds nuw i8, ptr %i.m, i64 184
  %i.w = tail call i32 @wc_FreeMutex(ptr noundef nonnull %i.v) #23 ; 0 uses
  %.phi.trans.insert.i.i = getelementptr i8, ptr %i.m, i64 225
  %.pre.i.i = load i8, ptr %.phi.trans.insert.i.i, align 1
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %9 = phi i8 [ %.pre.i.i, %bb.e ], [ %8, %bb.d ]
  %10 = and i8 %9, 1
  %.not9.i.i = icmp eq i8 %10, 0
  br i1 %.not9.i.i, label %DoCertManagerFree.exit.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @wolfSSL_Atomic_Int_Init(ptr noundef nonnull %i.n, i32 noundef 0) #23
  br label %DoCertManagerFree.exit.i

DoCertManagerFree.exit.i:                         ; preds = %bb.g, %bb.f
  tail call void @wolfSSL_Free(ptr noundef nonnull %i.m) #23
  br label %bb.h

bb.h:                                             ; preds = %DoCertManagerFree.exit.i, %bb.c, %wolfSSL_CTX_set_verify.exit
  store ptr %0, ptr %i.l, align 8, !tbaa !32
  %i.x = tail call i32 @wolfSSL_CTX_load_verify_buffer_ex(ptr noundef nonnull %i.f, ptr noundef %1, i64 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) ; 2 uses
  store ptr null, ptr %i.l, align 8, !tbaa !32
  %i.y = icmp eq i32 %i.x, 1
  %i.z = icmp ne i32 %6, 1
  %or.cond = and i1 %i.z, %i.y
  br i1 %or.cond, label %bb.i, label %.thread81

bb.i:                                             ; preds = %bb.h
  %i.aa = tail call ptr @wolfSSL_Malloc(i64 noundef 1240) #23 ; 7 uses
  %i.ab = icmp eq ptr %i.aa, null
  br i1 %i.ab, label %.thread81, label %bb.j

bb.j:                                             ; preds = %bb.i
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1240) %i.aa, i8 0, i64 1240, i1 false)
  %i.ac = icmp eq i32 %3, 1
  br i1 %i.ac, label %bb.k, label %bb.m

bb.k:                                             ; preds = %bb.j
  %i.ad = load ptr, ptr %i.b, align 8, !tbaa !18
  %i.ae = call i32 @PemToDer(ptr noundef %1, i64 noundef %2, i32 noundef 0, ptr noundef nonnull %i.a, ptr noundef %i.ad, ptr noundef null, ptr noundef null) #23
  %.not49 = icmp eq i32 %i.ae, 0
  br i1 %.not49, label %bb.l, label %SetCAType.exit

bb.l:                                             ; preds = %bb.k
  %i.af = load ptr, ptr %i.a, align 8, !tbaa !22  ; 2 uses
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !34
  %i.ah = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  %i.ai = load i32, ptr %i.ah, align 8, !tbaa !35
  %i.aj = zext i32 %i.ai to i64
  br label %bb.m

bb.m:                                             ; preds = %bb.j, %bb.l
  %.044.ph = phi i64 [ %i.aj, %bb.l ], [ %2, %bb.j ]
  %.043.ph = phi ptr [ %i.ag, %bb.l ], [ %1, %bb.j ]
  %i.ak = trunc i64 %.044.ph to i32
  %i.al = load ptr, ptr %i.b, align 8, !tbaa !18
  call void @wc_InitDecodedCert(ptr noundef nonnull %i.aa, ptr noundef %.043.ph, i32 noundef %i.ak, ptr noundef %i.al) #23
  %i.am = call i32 @wc_ParseCert(ptr noundef nonnull %i.aa, i32 noundef 0, i32 noundef 0, ptr noundef null) #23
  %.not50 = icmp eq i32 %i.am, 0
  br i1 %.not50, label %bb.n, label %SetCAType.exit

bb.n:                                             ; preds = %bb.m
  %i.an = getelementptr inbounds nuw i8, ptr %i.aa, i64 804 ; 3 uses
  %i.ao = add i32 %6, -5
  %i.ap = icmp ult i32 %i.ao, -4
  br i1 %i.ap, label %SetCAType.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.aq = load i32, ptr %i.an, align 4
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 2 uses
  %i.as = call i32 @wc_LockMutex(ptr noundef nonnull %i.ar) #23
  %.not.i55 = icmp eq i32 %i.as, 0
  br i1 %.not.i55, label %bb.p, label %SetCAType.exit

bb.p:                                             ; preds = %bb.o
  %i.at = call i32 @llvm.bswap.i32(i32 %i.aq)
  %i.au = urem i32 %i.at, 11
  %i.av = zext nneg i32 %i.au to i64
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.av
  %.02637.i = load ptr, ptr %i.aw, align 8, !tbaa !37 ; 2 uses
  %.not3238.i = icmp eq ptr %.02637.i, null
  br i1 %.not3238.i, label %.loopexit.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.p, %bb.q
  %.02639.i = phi ptr [ %.026.i, %bb.q ], [ %.02637.i, %bb.p ] ; 3 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %.02639.i, i64 76 ; 2 uses
  %i.ay = load i128, ptr %i.an, align 1
  %i.az = load i128, ptr %i.ax, align 1
  %i.ba = xor i128 %i.ay, %i.az
  %i.bb = getelementptr i8, ptr %i.an, i64 16
  %i.bc = getelementptr i8, ptr %i.ax, i64 16
  %i.bd = load i32, ptr %i.bb, align 1
  %i.be = load i32, ptr %i.bc, align 1
  %i.bf = zext i32 %i.bd to i128
  %i.bg = zext i32 %i.be to i128
  %i.bh = xor i128 %i.bf, %i.bg
  %i.bi = or i128 %i.ba, %i.bh
  %i.bj = icmp ne i128 %i.bi, 0
  %i.bk = zext i1 %i.bj to i32
  %i.bl = icmp eq i32 %i.bk, 0
  br i1 %i.bl, label %.thread.i, label %bb.q

.thread.i:                                        ; preds = %.lr.ph.i
  %i.bm = trunc nuw nsw i32 %6 to i8
  %i.bn = getelementptr inbounds nuw i8, ptr %.02639.i, i64 96
  store i8 %i.bm, ptr %i.bn, align 8, !tbaa !40
  br label %.loopexit.i

bb.q:                                             ; preds = %.lr.ph.i
  %i.bo = getelementptr inbounds nuw i8, ptr %.02639.i, i64 104
  %.026.i = load ptr, ptr %i.bo, align 8, !tbaa !37 ; 2 uses
  %.not32.i = icmp eq ptr %.026.i, null
  br i1 %.not32.i, label %.loopexit.i, label %.lr.ph.i

.loopexit.i:                                      ; preds = %bb.q, %.thread.i, %bb.p
  %.2.i = phi i32 [ 1, %.thread.i ], [ 0, %bb.p ], [ 0, %bb.q ]
  %i.bp = call i32 @wc_UnLockMutex(ptr noundef nonnull %i.ar) #23 ; 0 uses
  br label %SetCAType.exit

SetCAType.exit:                                   ; preds = %.loopexit.i, %bb.o, %bb.n, %bb.k, %bb.m
  %.4 = phi i32 [ -1, %bb.m ], [ -1, %bb.k ], [ %.2.i, %.loopexit.i ], [ 0, %bb.n ], [ 0, %bb.o ] ; 2 uses
  call void @wc_FreeDecodedCert(ptr noundef nonnull %i.aa) #23
  call void @wolfSSL_Free(ptr noundef nonnull %i.aa) #23
  %i.bq = load ptr, ptr %i.a, align 8, !tbaa !22
  %.not51 = icmp eq ptr %i.bq, null
  br i1 %.not51, label %.thread81, label %bb.r

bb.r:                                             ; preds = %SetCAType.exit
  call void @FreeDer(ptr noundef nonnull %i.a) #23
  br label %.thread81

.thread81:                                        ; preds = %SetCAType.exit, %bb.r, %bb.i, %bb.h
  %.586 = phi i32 [ %i.x, %bb.h ], [ -1, %bb.i ], [ %.4, %bb.r ], [ %.4, %SetCAType.exit ]
  call void @FreeSSL_Ctx(ptr noundef nonnull %i.f) #23
  br label %wolfSSL_CTX_free.exit

wolfSSL_CTX_free.exit:                            ; preds = %bb.a, %bb.b, %.thread81
  %.587 = phi i32 [ -1, %bb.a ], [ %.586, %.thread81 ], [ -1, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  ret i32 %.587
}

; Function Attrs: nounwind uwtable
define ptr @wolfSSL_CTX_new_ex(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = load volatile i32, ptr @initRefCount, align 4, !tbaa !41
  %i.b = icmp eq i32 %i.a, 0
  br i1 %i.b, label %bb.b, label %.critedge

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @wc_LockMutex(ptr noundef nonnull @inits_count_mutex) #23
  %.not.i = icmp eq i32 %i.c, 0
  br i1 %.not.i, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.d = load volatile i32, ptr @initRefCount, align 4, !tbaa !41
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %bb.d, label %wolfSSL_Init.exit

bb.d:                                             ; preds = %bb.c
  %i.f = tail call i32 @wolfCrypt_Init() #23
  %.not7.i = icmp eq i32 %i.f, 0
  br i1 %.not7.i, label %bb.e, label %.thread13.i

bb.e:                                             ; preds = %bb.d
  %i.g = tail call i32 @wc_InitRwLock(ptr noundef nonnull @session_lock) #23
  %.not8.i = icmp eq i32 %i.g, 0
  br i1 %.not8.i, label %bb.f, label %.thread13.i

bb.f:                                             ; preds = %bb.e
  store i1 true, ptr @session_lock_valid, align 4
  br label %wolfSSL_Init.exit

.thread13.i:                                      ; preds = %bb.e, %bb.d
  store volatile i32 1, ptr @initRefCount, align 4, !tbaa !41
  %i.h = tail call i32 @wc_UnLockMutex(ptr noundef nonnull @inits_count_mutex) #23 ; 0 uses
  %i.i = tail call i32 @wolfSSL_Cleanup()         ; 0 uses
  br label %bb.g

wolfSSL_Init.exit:                                ; preds = %bb.c, %bb.f
  %i.j = load volatile i32, ptr @initRefCount, align 4, !tbaa !41
  %i.k = add nsw i32 %i.j, 1
  store volatile i32 %i.k, ptr @initRefCount, align 4, !tbaa !41
  %i.l = tail call i32 @wc_UnLockMutex(ptr noundef nonnull @inits_count_mutex) #23 ; 0 uses
  br label %.critedge

bb.g:                                             ; preds = %bb.b, %.thread13.i
  %.not24 = icmp eq ptr %0, null
  br i1 %.not24, label %bb.l, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @wolfSSL_Free(ptr noundef nonnull %0) #23
  br label %bb.l

.critedge:                                        ; preds = %wolfSSL_Init.exit, %bb.a
  %.old = icmp eq ptr %0, null
  br i1 %.old, label %bb.l, label %bb.i

bb.i:                                             ; preds = %.critedge
  %i.m = tail call ptr @wolfSSL_Malloc(i64 noundef 360) #23 ; 4 uses
  %.not25 = icmp eq ptr %i.m, null
  br i1 %.not25, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.n = tail call i32 @InitSSL_Ctx(ptr noundef nonnull %i.m, ptr noundef nonnull %0, ptr noundef %1) #23
  %i.o = icmp slt i32 %i.n, 0
  br i1 %i.o, label %wolfSSL_CTX_free.exit, label %bb.l

end_hunk_0
begin_hunk_1_@CM_VerifyBuffer_ex:bb.a
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !18
  call void @InitDecodedCert(ptr noundef nonnull %5, ptr noundef %.020.ph, i32 noundef %i.k, ptr noundef %i.m) #23
  %i.n = call i32 @ParseCertRelative(ptr noundef nonnull %5, i32 noundef 0, i32 noundef 1, ptr noundef %0, ptr noundef null) #23 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !44
  %.not26 = icmp eq ptr %i.p, null
  br i1 %.not26, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #23
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(56) %6, i8 0, i64 56, i1 false)
  store ptr %.020.ph, ptr %7, align 8, !tbaa !177
  %i.q = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i32 %i.k, ptr %i.q, align 8, !tbaa !178
  %i.r = getelementptr inbounds nuw i8, ptr %6, i64 32
  store i32 1, ptr %i.r, align 16, !tbaa !181
  store ptr %7, ptr %6, align 16, !tbaa !182
  %i.s = getelementptr inbounds nuw i8, ptr %6, i64 16
  store ptr %5, ptr %i.s, align 16, !tbaa !183
  %i.t = getelementptr inbounds nuw i8, ptr %6, i64 53
  store i8 4, ptr %i.t, align 1
  %.not27 = icmp eq i32 %4, 0
  %spec.select = select i1 %.not27, i32 %i.n, i32 %4
  %i.u = call i32 @DoVerifyCallback(ptr noundef nonnull %0, ptr noundef null, i32 noundef %spec.select, ptr noundef nonnull %6) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  br label %bb.f

bb.f:                                             ; preds = %bb.b, %bb.e, %bb.d
  %.3 = phi i32 [ %i.n, %bb.d ], [ %i.u, %bb.e ], [ %i.e, %bb.b ]
  call void @FreeDecodedCert(ptr noundef nonnull %5) #23
  call void @FreeDer(ptr noundef nonnull %i.a) #23
  %i.v = call i32 @llvm.umax.i32(i32 %.3, i32 1)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  ret i32 %i.v
}

declare void @InitDecodedCert(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare i32 @ParseCertRelative(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @DoVerifyCallback(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare void @FreeDecodedCert(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define range(i32 1, 0) i32 @wolfSSL_CertManagerVerifyBuffer(ptr noundef %0, ptr noundef %1, i64 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  %i.b = icmp eq ptr %1, null
  %or.cond = or i1 %i.a, %i.b
  %i.c = icmp slt i64 %2, 1
  %or.cond3 = or i1 %or.cond, %i.c
  br i1 %or.cond3, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = add i32 %3, -3
  %or.cond5 = icmp ult i32 %i.d, -2
  br i1 %or.cond5, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = tail call i32 @CM_VerifyBuffer_ex(ptr noundef nonnull %0, ptr noundef nonnull %1, i64 noundef %2, i32 noundef %3, i32 noundef 0)
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.a, %bb.c
  %.0 = phi i32 [ %i.e, %bb.c ], [ -173, %bb.a ], [ -462, %bb.b ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define range(i32 1, 0) i32 @wolfSSL_CertManagerVerify(ptr noundef %0, ptr nofree noundef readonly captures(address_is_null) %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [1024 x i8], align 16             ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  %i.b = icmp ne ptr %0, null
  %i.c = icmp ne ptr %1, null
  %or.cond.not = and i1 %i.b, %i.c
  br i1 %or.cond.not, label %bb.b, label %wolfSSL_CertManagerVerifyBuffer.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.d = tail call noalias ptr @fopen(ptr noundef nonnull %1, ptr noundef nonnull @.str) ; 8 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %wolfSSL_CertManagerVerifyBuffer.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = tail call i64 @ftell(ptr noundef nonnull %i.d) ; 3 uses
  %i.g = icmp slt i64 %i.f, 0
  br i1 %i.g, label %bb.d, label %.thread36.i

bb.d:                                             ; preds = %bb.c
  %i.h = tail call ptr @__errno_location() #24
  %i.i = load i32, ptr %i.h, align 4, !tbaa !41
  %i.j = icmp eq i32 %i.i, 29
  br i1 %i.j, label %.thread125, label %.thread115

.thread36.i:                                      ; preds = %bb.c
  %i.k = tail call i32 @fseek(ptr noundef nonnull %i.d, i64 noundef 0, i32 noundef 2)
  %.not27.i = icmp eq i32 %i.k, 0
  br i1 %.not27.i, label %bb.e, label %.thread115

bb.e:                                             ; preds = %.thread36.i
  %i.l = tail call i64 @ftell(ptr noundef nonnull %i.d)
  %i.m = sub nsw i64 %i.l, %i.f                   ; 7 uses
  %i.n = icmp slt i64 %i.m, 0
  br i1 %i.n, label %.thread115, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.o = tail call i32 @fseek(ptr noundef nonnull %i.d, i64 noundef %i.f, i32 noundef 0)
  %.not28.i = icmp ne i32 %i.o, 0
  %i.p = add nsw i64 %i.m, -4194305
  %or.cond.i = icmp ult i64 %i.p, -4194304
  %or.cond62.i = select i1 %.not28.i, i1 true, i1 %or.cond.i
  br i1 %or.cond62.i, label %.thread115, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.q = icmp samesign ugt i64 %i.m, 1024
  br i1 %i.q, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.r = tail call ptr @wolfSSL_Malloc(i64 noundef %i.m) #23 ; 2 uses
  %i.s = icmp eq ptr %i.r, null
  br i1 %i.s, label %.thread125, label %bb.i

.thread115:                                       ; preds = %.thread36.i, %bb.f, %bb.e, %bb.d
  br label %.thread125

.thread125:                                       ; preds = %.thread115, %bb.d, %bb.h
  %.499.ph = phi i32 [ -463, %.thread115 ], [ -462, %bb.d ], [ -463, %bb.h ]
  %.0288794.ph = phi ptr [ %i.a, %.thread115 ], [ %i.a, %bb.d ], [ null, %bb.h ]
  %i.t = tail call i32 @fclose(ptr noundef nonnull %i.d) ; 0 uses
  br label %wolfSSL_CertManagerVerifyBuffer.exit

bb.i:                                             ; preds = %bb.h, %bb.g
  %.028 = phi ptr [ %i.a, %bb.g ], [ %i.r, %bb.h ] ; 5 uses
  %i.u = call i64 @fread(ptr noundef nonnull %.028, i64 noundef 1, i64 noundef %i.m, ptr noundef nonnull %i.d)
  %.not = icmp eq i64 %i.u, %i.m
  %i.v = tail call i32 @fclose(ptr noundef nonnull %i.d) ; 0 uses
  br i1 %.not, label %bb.j, label %wolfSSL_CertManagerVerifyBuffer.exit

bb.j:                                             ; preds = %bb.i
  %i.w = add i32 %2, -3
  %or.cond5.i = icmp ult i32 %i.w, -2
  br i1 %or.cond5.i, label %wolfSSL_CertManagerVerifyBuffer.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.x = call i32 @CM_VerifyBuffer_ex(ptr noundef nonnull %0, ptr noundef nonnull %.028, i64 noundef %i.m, i32 noundef %2, i32 noundef 0)
  br label %wolfSSL_CertManagerVerifyBuffer.exit

wolfSSL_CertManagerVerifyBuffer.exit:             ; preds = %bb.k, %bb.j, %.thread125, %bb.i
  %.0288795123 = phi ptr [ %.0288794.ph, %.thread125 ], [ %.028, %bb.i ], [ %.028, %bb.k ], [ %.028, %bb.j ] ; 3 uses
  %.5 = phi i32 [ %.499.ph, %.thread125 ], [ -463, %bb.i ], [ %i.x, %bb.k ], [ -462, %bb.j ] ; 2 uses
  %i.y = icmp ne ptr %.0288795123, %i.a
  %.not37 = icmp ne ptr %.0288795123, null
  %i.z = and i1 %i.y, %.not37
  br i1 %i.z, label %bb.l, label %wolfSSL_CertManagerVerifyBuffer.exit.thread

bb.l:                                             ; preds = %wolfSSL_CertManagerVerifyBuffer.exit
  call void @wolfSSL_Free(ptr noundef nonnull %.0288795123) #23
  br label %wolfSSL_CertManagerVerifyBuffer.exit.thread

wolfSSL_CertManagerVerifyBuffer.exit.thread:      ; preds = %bb.a, %bb.b, %bb.l, %wolfSSL_CertManagerVerifyBuffer.exit
  %.5136 = phi i32 [ %.5, %wolfSSL_CertManagerVerifyBuffer.exit ], [ %.5, %bb.l ], [ -463, %bb.b ], [ -173, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  ret i32 %.5136
}

; Function Attrs: nofree nounwind
declare noalias noundef ptr @fopen(ptr noundef readonly captures(none), ptr noundef readonly captures(none)) local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare noundef i64 @fread(ptr noundef writeonly captures(none), i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare noundef i32 @fclose(ptr noundef captures(none)) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define i32 @wolfSSL_CertManagerLoadCA(ptr noundef %0, ptr nofree noundef readonly captures(address_is_null) %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %wolfSSL_CTX_free.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.c = tail call ptr @wolfTLSv1_2_client_method_ex(ptr noundef %i.b) #23
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.e = tail call ptr @wolfSSL_CTX_new_ex(ptr noundef %i.c, ptr noundef %i.d) ; 6 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %wolfSSL_CTX_free.exit, label %wolfSSL_CTX_set_verify.exit

wolfSSL_CTX_set_verify.exit:                      ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 169 ; 2 uses
  %i.h = load i16, ptr %i.g, align 1
  %i.i = and i16 %i.h, -16
  store i16 %i.i, ptr %i.g, align 1
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 208
  store ptr null, ptr %i.j, align 8, !tbaa !31
  %i.k = getelementptr inbounds nuw i8, ptr %i.e, i64 144 ; 3 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !32   ; 8 uses
  %.not.i19 = icmp eq ptr %i.l, null
  br i1 %.not.i19, label %bb.h, label %bb.c

bb.c:                                             ; preds = %wolfSSL_CTX_set_verify.exit
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 232 ; 2 uses
  %i.n = tail call i32 @wolfSSL_Atomic_Int_FetchSub(ptr noundef nonnull %i.m, i32 noundef 1) #23
  %i.o = icmp eq i32 %i.n, 1
  br i1 %i.o, label %bb.d, label %bb.h

bb.d:                                             ; preds = %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %i.l, i64 88
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !18
  tail call void @FreeSignerTable(ptr noundef nonnull %i.l, i32 noundef 11, ptr noundef %i.q) #23
  %i.r = getelementptr inbounds nuw i8, ptr %i.l, i64 224
  %i.s = load i16, ptr %i.r, align 8              ; 2 uses
  %i.t = and i16 %i.s, 128
  %.not.i.i = icmp eq i16 %i.t, 0
  %3 = lshr i16 %i.s, 8
  %4 = trunc nuw i16 %3 to i8
  br i1 %.not.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.u = getelementptr inbounds nuw i8, ptr %i.l, i64 184
  %i.v = tail call i32 @wc_FreeMutex(ptr noundef nonnull %i.u) #23 ; 0 uses
  %.phi.trans.insert.i.i = getelementptr i8, ptr %i.l, i64 225
  %.pre.i.i = load i8, ptr %.phi.trans.insert.i.i, align 1
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %5 = phi i8 [ %.pre.i.i, %bb.e ], [ %4, %bb.d ]
  %6 = and i8 %5, 1
  %.not9.i.i = icmp eq i8 %6, 0
  br i1 %.not9.i.i, label %DoCertManagerFree.exit.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @wolfSSL_Atomic_Int_Init(ptr noundef nonnull %i.m, i32 noundef 0) #23
  br label %DoCertManagerFree.exit.i

DoCertManagerFree.exit.i:                         ; preds = %bb.g, %bb.f
  tail call void @wolfSSL_Free(ptr noundef nonnull %i.l) #23
  br label %bb.h

bb.h:                                             ; preds = %wolfSSL_CTX_set_verify.exit, %bb.c, %DoCertManagerFree.exit.i
  store ptr %0, ptr %i.k, align 8, !tbaa !32
  %i.w = tail call i32 @wolfSSL_CTX_load_verify_locations_ex(ptr noundef nonnull %i.e, ptr noundef readonly %1, ptr noundef %2, i32 noundef 0)
  store ptr null, ptr %i.k, align 8, !tbaa !32
  tail call void @FreeSSL_Ctx(ptr noundef nonnull %i.e) #23
  br label %wolfSSL_CTX_free.exit

wolfSSL_CTX_free.exit:                            ; preds = %bb.a, %bb.b, %bb.h
  %.236 = phi i32 [ %i.w, %bb.h ], [ -1, %bb.b ], [ -1, %bb.a ]
  ret i32 %.236
}

; Function Attrs: nounwind uwtable
define i32 @wolfSSL_CTX_load_verify_locations(ptr noundef %0, ptr nofree noundef readonly captures(address_is_null) %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @wolfSSL_CTX_load_verify_locations_ex(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef 0)
  ret i32 %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef range(i32 -174, -172) i32 @wolfSSL_CertManagerEnableCRL(ptr nofree noundef readnone captures(address_is_null) %0, i32 noundef %1) local_unnamed_addr #7 {
bb.a:
  %.not = icmp eq ptr %0, null
  %spec.store.select = select i1 %.not, i32 -173, i32 -174
  ret i32 %spec.store.select
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define range(i32 -173, 2) i32 @wolfSSL_CertManagerDisableCRL(ptr nofree noundef captures(address_is_null) %0) local_unnamed_addr #4 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 2 uses
  %i.b = load i16, ptr %i.a, align 8
  %i.c = and i16 %i.b, -4
  store i16 %i.c, ptr %i.a, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %spec.store.select = phi i32 [ 1, %bb.b ], [ -173, %bb.a ]
  ret i32 %spec.store.select
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef range(i32 -174, -172) i32 @wolfSSL_CertManagerEnableOCSP(ptr nofree noundef readnone captures(address_is_null) %0, i32 noundef %1) local_unnamed_addr #7 {
bb.a:
  %.not = icmp eq ptr %0, null
  %spec.store.select = select i1 %.not, i32 -173, i32 -174
  ret i32 %spec.store.select
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define range(i32 -173, 2) i32 @wolfSSL_CertManagerDisableOCSP(ptr nofree noundef captures(address_is_null) %0) local_unnamed_addr #4 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 2 uses
  %i.b = load i16, ptr %i.a, align 8
  %i.c = and i16 %i.b, -5
  store i16 %i.c, ptr %i.a, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %spec.store.select = phi i32 [ 1, %bb.b ], [ -173, %bb.a ]
  ret i32 %spec.store.select
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef range(i32 -174, -172) i32 @wolfSSL_CertManagerEnableOCSPStapling(ptr nofree noundef readnone captures(address_is_null) %0) local_unnamed_addr #7 {
bb.a:
  %.not = icmp eq ptr %0, null
  %spec.store.select = select i1 %.not, i32 -173, i32 -174
  ret i32 %spec.store.select
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef range(i32 -174, -172) i32 @wolfSSL_CertManagerDisableOCSPStapling(ptr nofree noundef readnone captures(address_is_null) %0) local_unnamed_addr #7 {
bb.a:
  %.not = icmp eq ptr %0, null
  %spec.store.select = select i1 %.not, i32 -173, i32 -174
  ret i32 %spec.store.select
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef range(i32 -174, -172) i32 @wolfSSL_CertManagerEnableOCSPMustStaple(ptr nofree noundef readnone captures(address_is_null) %0) local_unnamed_addr #7 {
bb.a:
  %.not = icmp eq ptr %0, null
  %spec.store.select = select i1 %.not, i32 -173, i32 -174
  ret i32 %spec.store.select
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef range(i32 -174, -172) i32 @wolfSSL_CertManagerDisableOCSPMustStaple(ptr nofree noundef readnone captures(address_is_null) %0) local_unnamed_addr #7 {
bb.a:
  %.not = icmp eq ptr %0, null
  %spec.store.select = select i1 %.not, i32 -173, i32 -174
  ret i32 %spec.store.select
}

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @AlreadySigner(ptr noundef %0, ptr nofree noundef readonly captures(address_is_null) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  %i.b = icmp eq ptr %1, null
  %or.cond = or i1 %i.a, %i.b
  br i1 %or.cond, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load i32, ptr %1, align 1
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 2 uses
  %i.e = tail call i32 @wc_LockMutex(ptr noundef nonnull %i.d) #23
  %.not = icmp eq i32 %i.e, 0
  br i1 %.not, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.f = tail call i32 @llvm.bswap.i32(i32 %i.c)
  %i.g = urem i32 %i.f, 11
  %i.h = zext nneg i32 %i.g to i64
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.h
  %.01827 = load ptr, ptr %i.i, align 8, !tbaa !37 ; 2 uses
  %.not2328 = icmp eq ptr %.01827, null
  br i1 %.not2328, label %.thread, label %.lr.ph

bb.d:                                             ; preds = %.lr.ph
  %i.j = getelementptr inbounds nuw i8, ptr %.01829, i64 104
  %.018 = load ptr, ptr %i.j, align 8, !tbaa !37  ; 2 uses
  %.not23 = icmp eq ptr %.018, null
  br i1 %.not23, label %.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c, %bb.d
  %.01829 = phi ptr [ %.018, %bb.d ], [ %.01827, %bb.c ] ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.01829, i64 76 ; 2 uses
  %i.l = load i128, ptr %1, align 1
  %i.m = load i128, ptr %i.k, align 1
  %i.n = xor i128 %i.l, %i.m
  %i.o = getelementptr i8, ptr %1, i64 16
  %i.p = getelementptr i8, ptr %i.k, i64 16
  %i.q = load i32, ptr %i.o, align 1
  %i.r = load i32, ptr %i.p, align 1
  %i.s = zext i32 %i.q to i128
  %i.t = zext i32 %i.r to i128
  %i.u = xor i128 %i.s, %i.t
  %i.v = or i128 %i.n, %i.u
  %i.w = icmp ne i128 %i.v, 0
  %i.x = zext i1 %i.w to i32
  %i.y = icmp eq i32 %i.x, 0
  br i1 %i.y, label %.thread, label %bb.d

.thread:                                          ; preds = %bb.d, %.lr.ph, %bb.c
  %.2 = phi i32 [ 0, %bb.c ], [ 1, %.lr.ph ], [ 0, %bb.d ]
  %i.z = tail call i32 @wc_UnLockMutex(ptr noundef nonnull %i.d) #23 ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.b, %bb.a, %.thread
  %.020 = phi i32 [ %.2, %.thread ], [ 0, %bb.a ], [ 0, %bb.b ]
  ret i32 %.020
}

; Function Attrs: nounwind uwtable
define ptr @GetCA(ptr noundef %0, ptr nofree noundef readonly captures(address_is_null) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  %i.b = icmp eq ptr %1, null
  %or.cond = or i1 %i.a, %i.b
  br i1 %or.cond, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load i32, ptr %1, align 1
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 2 uses
  %i.e = tail call i32 @wc_LockMutex(ptr noundef nonnull %i.d) #23
  %.not = icmp eq i32 %i.e, 0
  br i1 %.not, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.f = tail call i32 @llvm.bswap.i32(i32 %i.c)
  %i.g = urem i32 %i.f, 11
  %i.h = zext nneg i32 %i.g to i64
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.h
  %.01828 = load ptr, ptr %i.i, align 8, !tbaa !37 ; 2 uses
  %.not2429 = icmp eq ptr %.01828, null
  br i1 %.not2429, label %.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c, %bb.d
  %.01830 = phi ptr [ %.018, %bb.d ], [ %.01828, %bb.c ] ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.01830, i64 76 ; 2 uses
  %i.k = load i128, ptr %1, align 1
end_hunk_1
