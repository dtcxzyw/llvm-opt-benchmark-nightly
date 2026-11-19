Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruby/original/ossl?download=true
inline.NumInlined: 59
inline.NumDeleted: 25
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.__va_list_tag = type { i32, i32, ptr, ptr }

@eOSSLError = global i64 0, align 8, !guid !10
@cX509Cert = external local_unnamed_addr global i64, align 8
@.str = private unnamed_addr constant [38 x i8] c"object in array not of class ##type##\00", align 1, !guid !11
@.str.1 = private unnamed_addr constant [28 x i8] c"../../../ext/openssl/ossl.c\00", align 1, !guid !12
@.str.2 = private unnamed_addr constant [17 x i8] c"0123456789abcdef\00", align 1, !guid !13
@.str.3 = private unnamed_addr constant [42 x i8] c"password must not be longer than %d bytes\00", align 1, !guid !14
@dOSSL = global i64 0, align 8, !guid !15
@stderr = external local_unnamed_addr global ptr, align 8
@.str.4 = private unnamed_addr constant [13 x i8] c"OSSL_DEBUG: \00", align 1, !guid !16
@.str.5 = private unnamed_addr constant [35 x i8] c"passed data is not valid String???\00", align 1, !guid !17
@.str.6 = private unnamed_addr constant [10 x i8] c" [%s:%d]\0A\00", align 1, !guid !18
@ossl_s_to_der = internal unnamed_addr global i64 0, align 8, !guid !19
@.str.7 = private unnamed_addr constant [3 x i8] c": \00", align 1, !guid !20
@.str.8 = private unnamed_addr constant [7 x i8] c"(null)\00", align 1, !guid !21
@.str.9 = private unnamed_addr constant [6 x i8] c" (%s)\00", align 1, !guid !22
@id_i_errors = internal unnamed_addr global i64 0, align 8, !guid !23
@rb_eRuntimeError = external local_unnamed_addr global i64, align 8
@.str.10 = private unnamed_addr constant [17 x i8] c"OPENSSL_init_ssl\00", align 1, !guid !24
@mOSSL = global i64 0, align 8, !guid !25
@.str.11 = private unnamed_addr constant [8 x i8] c"OpenSSL\00", align 1, !guid !26
@.str.12 = private unnamed_addr constant [28 x i8] c"fixed_length_secure_compare\00", align 1, !guid !27
@.str.13 = private unnamed_addr constant [16 x i8] c"OPENSSL_VERSION\00", align 1, !guid !28
@.str.14 = private unnamed_addr constant [27 x i8] c"OpenSSL 3.0.13 30 Jan 2024\00", align 1, !guid !29
@.str.15 = private unnamed_addr constant [24 x i8] c"OPENSSL_LIBRARY_VERSION\00", align 1, !guid !30
@.str.16 = private unnamed_addr constant [23 x i8] c"OPENSSL_VERSION_NUMBER\00", align 1, !guid !31
@.str.17 = private unnamed_addr constant [13 x i8] c"OPENSSL_FIPS\00", align 1, !guid !32
@.str.18 = private unnamed_addr constant [10 x i8] c"fips_mode\00", align 1, !guid !33
@.str.19 = private unnamed_addr constant [11 x i8] c"fips_mode=\00", align 1, !guid !34
@.str.20 = private unnamed_addr constant [13 x i8] c"OpenSSLError\00", align 1, !guid !35
@rb_eStandardError = external local_unnamed_addr global i64, align 8
@.str.21 = private unnamed_addr constant [7 x i8] c"errors\00", align 1, !guid !36
@.str.22 = private unnamed_addr constant [17 x i8] c"detailed_message\00", align 1, !guid !37
@.str.23 = private unnamed_addr constant [6 x i8] c"debug\00", align 1, !guid !38
@.str.24 = private unnamed_addr constant [7 x i8] c"debug=\00", align 1, !guid !39
@.str.25 = private unnamed_addr constant [7 x i8] c"to_der\00", align 1, !guid !40
@.str.26 = private unnamed_addr constant [8 x i8] c"@errors\00", align 1, !guid !41
@.str.27 = private unnamed_addr constant [21 x i8] c"error:%08lX:%s:%s:%s\00", align 1, !guid !42
@.str.28 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1, !guid !43
@.str.29 = private unnamed_addr constant [21 x i8] c"error on stack: %li\0B\00", align 1, !guid !44
@rb_eArgError = external local_unnamed_addr global i64, align 8
@.str.30 = private unnamed_addr constant [31 x i8] c"inputs must be of equal length\00", align 1, !guid !45
@.str.31 = private unnamed_addr constant [28 x i8] c"Turning on FIPS mode failed\00", align 1, !guid !46
@.str.32 = private unnamed_addr constant [29 x i8] c"Turning off FIPS mode failed\00", align 1, !guid !47
@rb_eException = external local_unnamed_addr global i64, align 8
@osslerror_detailed_message.rbimpl_id = internal unnamed_addr global i64 0, align 8, !guid !48
@.str.33 = private unnamed_addr constant [16 x i8] c"method_defined?\00", align 1, !guid !49
@osslerror_detailed_message.rbimpl_id.34 = internal unnamed_addr global i64 0, align 8, !guid !50
@osslerror_detailed_message.rbimpl_id.35 = internal unnamed_addr global i64 0, align 8, !guid !51
@.str.36 = private unnamed_addr constant [8 x i8] c"message\00", align 1, !guid !52
@.str.37 = private unnamed_addr constant [42 x i8] c"\0AOpenSSL error queue reported %ld errors:\00", align 1, !guid !53
@.str.38 = private unnamed_addr constant [6 x i8] c"\0A%li\0B\00", align 1, !guid !54

; Function Attrs: nounwind uwtable
define i64 @ossl_x509_ary2sk0(i64 noundef %0) #0 !guid !65 {
bb.a:
  %i.a = icmp eq i64 %0, 0
  %i.b = and i64 %0, 7
  %i.c = icmp ne i64 %i.b, 0
  %i.d = or i1 %i.a, %i.c
  br i1 %i.d, label %rbimpl_RB_TYPE_P_fastpath.exit.thread.i, label %rbimpl_RB_TYPE_P_fastpath.exit.i, !prof !66

rbimpl_RB_TYPE_P_fastpath.exit.i:                 ; preds = %bb.a
  %i.e = inttoptr i64 %0 to ptr                   ; 3 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !57
  %i.g = and i64 %i.f, 31
  %i.h = icmp eq i64 %i.g, 7
  br i1 %i.h, label %Check_Type.exit, label %rbimpl_RB_TYPE_P_fastpath.exit.thread.i, !prof !67

rbimpl_RB_TYPE_P_fastpath.exit.thread.i:          ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i, %bb.a
  tail call void @rb_unexpected_type(i64 noundef %0, i32 noundef 7) #15
  unreachable

Check_Type.exit:                                  ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i
  %i.i = tail call ptr @OPENSSL_sk_new_null() #16 ; 4 uses
  %.not = icmp eq ptr %i.i, null
  br i1 %.not, label %bb.b, label %.preheader

.preheader:                                       ; preds = %Check_Type.exit
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  br label %bb.c

bb.b:                                             ; preds = %Check_Type.exit
  %i.k = load i64, ptr @eOSSLError, align 8, !tbaa !58
  tail call void (i64, ptr, ...) @ossl_raise(i64 noundef %i.k, ptr noundef null) #17
  unreachable

bb.c:                                             ; preds = %.preheader, %bb.h
  %.0 = phi i32 [ %2, %bb.h ], [ 0, %.preheader ] ; 2 uses
  %1 = zext nneg i32 %.0 to i64                   ; 2 uses
  %i.l = load i64, ptr %i.e, align 8, !tbaa !57   ; 2 uses
  %i.m = and i64 %i.l, 8192
  %.not.i = icmp eq i64 %i.m, 0
  br i1 %.not.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.n = lshr i64 %i.l, 15
  %i.o = and i64 %i.n, 127
  br label %rb_array_len.exit

bb.e:                                             ; preds = %bb.c
  %i.p = load i64, ptr %i.j, align 8, !tbaa !59
  br label %rb_array_len.exit

rb_array_len.exit:                                ; preds = %bb.d, %bb.e
  %.0.i = phi i64 [ %i.o, %bb.d ], [ %i.p, %bb.e ]
  %i.q = icmp sgt i64 %.0.i, %1
  br i1 %i.q, label %bb.f, label %bb.i

bb.f:                                             ; preds = %rb_array_len.exit
  %i.r = tail call i64 @rb_ary_entry(i64 noundef %0, i64 noundef %1) #18 ; 2 uses
  %i.s = load i64, ptr @cX509Cert, align 8, !tbaa !58
  %i.t = tail call i64 @rb_obj_is_kind_of(i64 noundef %i.r, i64 noundef %i.s) #16
  %.not14 = icmp eq i64 %i.t, 0
  br i1 %.not14, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  tail call void @OPENSSL_sk_pop_free(ptr noundef nonnull %i.i, ptr noundef nonnull @X509_free) #16
  %i.u = load i64, ptr @eOSSLError, align 8, !tbaa !58
  tail call void (i64, ptr, ...) @ossl_raise(i64 noundef %i.u, ptr noundef nonnull @.str) #17
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.v = tail call ptr @DupX509CertPtr(i64 noundef %i.r) #16
  %i.w = tail call i32 @OPENSSL_sk_push(ptr noundef nonnull %i.i, ptr noundef %i.v) #16 ; 0 uses
  %2 = add nuw nsw i32 %.0, 1
  br label %bb.c, !llvm.loop !64

bb.i:                                             ; preds = %rb_array_len.exit
  %i.x = ptrtoint ptr %i.i to i64
  ret i64 %i.x
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare ptr @OPENSSL_sk_new_null() local_unnamed_addr #2

; Function Attrs: noreturn nounwind uwtable
define void @ossl_raise(i64 noundef %0, ptr noundef %1, ...) local_unnamed_addr #3 !guid !68 {
bb.a:
  %2 = alloca [1 x %struct.__va_list_tag], align 16 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #16
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.va_start.p0(ptr nonnull %2)
  %i.a = call i64 @rb_vsprintf(ptr noundef nonnull %1, ptr noundef nonnull %2) #16
  call void @llvm.va_end.p0(ptr nonnull %2)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i64 [ %i.a, %bb.b ], [ 4, %bb.a ]
  %i.b = call i64 @ossl_make_error(i64 noundef %0, i64 noundef %.0)
  call void @rb_exc_raise(i64 noundef %i.b) #19
  unreachable
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare i64 @rb_ary_entry(i64 noundef, i64 noundef) local_unnamed_addr #4

declare i64 @rb_obj_is_kind_of(i64 noundef, i64 noundef) local_unnamed_addr #2

declare void @OPENSSL_sk_pop_free(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @X509_free(ptr noundef) #2

declare ptr @DupX509CertPtr(i64 noundef) local_unnamed_addr #2

declare i32 @OPENSSL_sk_push(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nounwind uwtable
define ptr @ossl_protect_x509_ary2sk(i64 noundef %0, ptr noundef %1) local_unnamed_addr #0 !guid !69 {
bb.a:
  %i.a = tail call i64 @rb_protect(ptr noundef nonnull @ossl_x509_ary2sk0, i64 noundef %0, ptr noundef %1) #16
  %i.b = inttoptr i64 %i.a to ptr
  ret ptr %i.b
}

declare i64 @rb_protect(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define ptr @ossl_x509_ary2sk(i64 noundef %0) local_unnamed_addr #0 !guid !70 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  store i32 0, ptr %i.a, align 4, !tbaa !9
  %i.b = call i64 @rb_protect(ptr noundef nonnull @ossl_x509_ary2sk0, i64 noundef %0, ptr noundef nonnull %i.a) #16
  %i.c = load i32, ptr %i.a, align 4, !tbaa !9    ; 2 uses
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @rb_jump_tag(i32 noundef %i.c) #19
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.d = inttoptr i64 %i.b to ptr
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  ret ptr %i.d
}

; Function Attrs: noreturn
declare void @rb_jump_tag(i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define i64 @ossl_x509_sk2ary(ptr noundef %0) local_unnamed_addr #0 !guid !72 {
bb.a:
  %i.a = tail call i32 @OPENSSL_sk_num(ptr noundef %0) #16 ; 3 uses
  %i.b = sext i32 %i.a to i64
  %i.c = tail call i64 @rb_ary_new_capa(i64 noundef %i.b) #16 ; 2 uses
  %i.d = icmp sgt i32 %i.a, 0
  br i1 %i.d, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.09 = phi i32 [ %i.h, %.lr.ph ], [ 0, %bb.a ]  ; 2 uses
  %i.e = tail call ptr @OPENSSL_sk_value(ptr noundef %0, i32 noundef %.09) #16
  %i.f = tail call i64 @ossl_x509_new(ptr noundef %i.e) #16
  %i.g = tail call i64 @rb_ary_push(i64 noundef %i.c, i64 noundef %i.f) #16 ; 0 uses
  %i.h = add nuw nsw i32 %.09, 1                  ; 2 uses
  %exitcond.not = icmp eq i32 %i.h, %i.a
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !71

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret i64 %i.c
}

declare i32 @OPENSSL_sk_num(ptr noundef) local_unnamed_addr #2

declare i64 @rb_ary_new_capa(i64 noundef) local_unnamed_addr #2

declare ptr @OPENSSL_sk_value(ptr noundef, i32 noundef) local_unnamed_addr #2

declare i64 @rb_ary_push(i64 noundef, i64 noundef) local_unnamed_addr #2

declare i64 @ossl_x509_new(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define i64 @ossl_x509crl_sk2ary(ptr noundef %0) local_unnamed_addr #0 !guid !74 {
bb.a:
  %i.a = tail call i32 @OPENSSL_sk_num(ptr noundef %0) #16 ; 3 uses
  %i.b = sext i32 %i.a to i64
  %i.c = tail call i64 @rb_ary_new_capa(i64 noundef %i.b) #16 ; 2 uses
  %i.d = icmp sgt i32 %i.a, 0
  br i1 %i.d, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.09 = phi i32 [ %i.h, %.lr.ph ], [ 0, %bb.a ]  ; 2 uses
  %i.e = tail call ptr @OPENSSL_sk_value(ptr noundef %0, i32 noundef %.09) #16
  %i.f = tail call i64 @ossl_x509crl_new(ptr noundef %i.e) #16
  %i.g = tail call i64 @rb_ary_push(i64 noundef %i.c, i64 noundef %i.f) #16 ; 0 uses
  %i.h = add nuw nsw i32 %.09, 1                  ; 2 uses
  %exitcond.not = icmp eq i32 %i.h, %i.a
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !73

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret i64 %i.c
}

declare i64 @ossl_x509crl_new(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define i64 @ossl_x509name_sk2ary(ptr noundef %0) local_unnamed_addr #0 !guid !76 {
bb.a:
  %i.a = tail call i32 @OPENSSL_sk_num(ptr noundef %0) #16 ; 3 uses
  %i.b = sext i32 %i.a to i64
  %i.c = tail call i64 @rb_ary_new_capa(i64 noundef %i.b) #16 ; 2 uses
  %i.d = icmp sgt i32 %i.a, 0
  br i1 %i.d, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.09 = phi i32 [ %i.h, %.lr.ph ], [ 0, %bb.a ]  ; 2 uses
  %i.e = tail call ptr @OPENSSL_sk_value(ptr noundef %0, i32 noundef %.09) #16
  %i.f = tail call i64 @ossl_x509name_new(ptr noundef %i.e) #16
  %i.g = tail call i64 @rb_ary_push(i64 noundef %i.c, i64 noundef %i.f) #16 ; 0 uses
  %i.h = add nuw nsw i32 %.09, 1                  ; 2 uses
  %exitcond.not = icmp eq i32 %i.h, %i.a
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !75

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret i64 %i.c
}

declare i64 @ossl_x509name_new(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define i64 @ossl_str_new(ptr nofree noundef readonly captures(address_is_null) %0, i64 noundef %1, ptr nofree noundef writeonly captures(address_is_null) %2) local_unnamed_addr #0 !guid !77 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  %i.b = call i64 @rb_protect(ptr noundef nonnull @ossl_str_new_i, i64 noundef %1, ptr noundef nonnull %i.a) #16 ; 3 uses
  %.not = icmp eq ptr %2, null
  %.pr = load i32, ptr %i.a, align 4, !tbaa !9    ; 3 uses
  br i1 %.not, label %bb.b, label %.thread

bb.b:                                             ; preds = %bb.a
  %.not11 = icmp eq i32 %.pr, 0
  br i1 %.not11, label %bb.d, label %bb.c

.thread:                                          ; preds = %bb.a
  store i32 %.pr, ptr %2, align 4, !tbaa !9
  %.not1113 = icmp eq i32 %.pr, 0
  br i1 %.not1113, label %bb.d, label %.thread14

bb.c:                                             ; preds = %bb.b
  call void @rb_set_errinfo(i64 noundef 4) #16
  br label %.thread14

bb.d:                                             ; preds = %.thread, %bb.b
  %.not12 = icmp eq ptr %0, null
  br i1 %.not12, label %.thread14, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.c = inttoptr i64 %i.b to ptr                 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !57
  %i.e = and i64 %i.d, 8192
  %.not.i = icmp eq i64 %i.e, 0
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 24 ; 2 uses
  br i1 %.not.i, label %RSTRING_PTR.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !59
end_hunk_0
