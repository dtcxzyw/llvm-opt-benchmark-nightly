begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@prompt_string = internal global [80 x i8] zeroinitializer, align 16
@.str = private unnamed_addr constant [45 x i8] c"assertion failed: nkey <= EVP_MAX_KEY_LENGTH\00", align 1
@.str.1 = private unnamed_addr constant [48 x i8] c"../../deps/openssl/openssl/crypto/evp/evp_key.c\00", align 1
@.str.2 = private unnamed_addr constant [55 x i8] c"assertion failed: niv >= 0 && niv <= EVP_MAX_IV_LENGTH\00", align 1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @EVP_set_pw_prompt(ptr nofree noundef readonly captures(address_is_null) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i8 0, ptr @prompt_string, align 16, !tbaa !9
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.b = tail call ptr @strncpy(ptr noundef nonnull dereferenceable(1) @prompt_string, ptr noundef nonnull dereferenceable(1) %0, i64 noundef 79) #8 ; 0 uses
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @prompt_string, i64 79), align 1, !tbaa !9
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare ptr @strncpy(ptr noalias noundef returned writeonly, ptr noalias noundef readonly captures(none), i64 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define dso_local ptr @EVP_get_pw_prompt() local_unnamed_addr #2 {
bb.a:
  %i.a = load i8, ptr @prompt_string, align 16, !tbaa !9
  %i.b = icmp eq i8 %i.a, 0
  %.prompt_string = select i1 %i.b, ptr null, ptr @prompt_string
  ret ptr %.prompt_string
}

; Function Attrs: nounwind uwtable
define dso_local i32 @EVP_read_pw_string(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #3 {
bb.a:
  %i.a = tail call i32 @EVP_read_pw_string_min(ptr noundef %0, i32 noundef 0, i32 noundef %1, ptr noundef %2, i32 noundef %3)
  ret i32 %i.a
}

; Function Attrs: nounwind uwtable
define dso_local i32 @EVP_read_pw_string_min(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3, i32 noundef %4) local_unnamed_addr #3 {
bb.a:
  %i.a = alloca [8192 x i8], align 16             ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  %i.b = icmp eq ptr %3, null
  %i.c = load i8, ptr @prompt_string, align 16
  %i.d = icmp ne i8 %i.c, 0
  %or.cond = select i1 %i.b, i1 %i.d, i1 false
  %spec.store.select = select i1 %or.cond, ptr @prompt_string, ptr %3 ; 2 uses
  %i.e = tail call ptr @UI_new() #8               ; 5 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = tail call i32 @llvm.smin.i32(i32 %2, i32 8191) ; 2 uses
  %i.h = tail call i32 @UI_add_input_string(ptr noundef nonnull %i.e, ptr noundef %spec.store.select, i32 noundef 0, ptr noundef %0, i32 noundef %1, i32 noundef %i.g) #8
  %i.i = icmp slt i32 %i.h, 0
  br i1 %i.i, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.not = icmp eq i32 %4, 0
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = call i32 @UI_add_verify_string(ptr noundef nonnull %i.e, ptr noundef %spec.store.select, i32 noundef 0, ptr noundef nonnull %i.a, i32 noundef %1, i32 noundef %i.g, ptr noundef %0) #8
  %i.k = icmp slt i32 %i.j, 0
  br i1 %i.k, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.l = call i32 @UI_process(ptr noundef nonnull %i.e) #8
  call void @OPENSSL_cleanse(ptr noundef nonnull %i.a, i64 noundef 8192) #8
  br label %bb.f

bb.f:                                             ; preds = %bb.b, %bb.d, %bb.e
  %.021 = phi i32 [ -1, %bb.b ], [ -1, %bb.d ], [ %i.l, %bb.e ]
  call void @UI_free(ptr noundef nonnull %i.e) #8
  br label %bb.g

bb.g:                                             ; preds = %bb.a, %bb.f
  %.0 = phi i32 [ %.021, %bb.f ], [ -1, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  ret i32 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #4

declare ptr @UI_new() local_unnamed_addr #5

declare i32 @UI_add_input_string(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

declare i32 @UI_add_verify_string(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #5

declare i32 @UI_process(ptr noundef) local_unnamed_addr #5

declare void @OPENSSL_cleanse(ptr noundef, i64 noundef) local_unnamed_addr #5

declare void @UI_free(ptr noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #4

; Function Attrs: nounwind uwtable
define dso_local i32 @EVP_BytesToKey(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef %5, ptr nofree noundef writeonly captures(address) %6, ptr nofree noundef writeonly captures(address) %7) local_unnamed_addr #3 {
bb.a:
  %i.a = alloca [64 x i8], align 16               ; 9 uses
  %i.b = alloca i32, align 4                      ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #8
  store i32 0, ptr %i.b, align 4, !tbaa !5
  %i.c = tail call i32 @EVP_CIPHER_get_key_length(ptr noundef %0) #8 ; 3 uses
  %i.d = tail call i32 @EVP_CIPHER_get_iv_length(ptr noundef %0) #8 ; 2 uses
  %i.e = icmp slt i32 %i.c, 65
  br i1 %i.e, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @OPENSSL_die(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 92) #9
  unreachable

bb.c:                                             ; preds = %bb.a
  %or.cond = icmp ult i32 %i.d, 17
  br i1 %or.cond, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @OPENSSL_die(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 93) #9
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.f = icmp eq ptr %3, null
  br i1 %i.f, label %bb.y, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.g = tail call ptr @EVP_MD_CTX_new() #8       ; 10 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %.loopexit98, label %.preheader99

.preheader99:                                     ; preds = %bb.f
  %i.i = sext i32 %4 to i64
  %.not86 = icmp eq ptr %2, null
  %i.j = icmp ugt i32 %5, 1
  br label %bb.g

bb.g:                                             ; preds = %.preheader99, %.loopexit
  %.071 = phi ptr [ %.374, %.loopexit ], [ %6, %.preheader99 ] ; 2 uses
  %.067 = phi ptr [ %.370, %.loopexit ], [ %7, %.preheader99 ] ; 3 uses
  %.063 = phi i32 [ %.265, %.loopexit ], [ %i.d, %.preheader99 ] ; 3 uses
  %.060 = phi i32 [ %.262, %.loopexit ], [ %i.c, %.preheader99 ] ; 3 uses
  %.059 = phi i32 [ %i.l, %.loopexit ], [ 0, %.preheader99 ] ; 2 uses
  %i.k = call i32 @EVP_DigestInit_ex(ptr noundef nonnull %i.g, ptr noundef %1, ptr noundef null) #8
  %.not = icmp eq i32 %i.k, 0
  br i1 %.not, label %.loopexit98, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.l = add nuw nsw i32 %.059, 1
  %.not83 = icmp eq i32 %.059, 0
  br i1 %.not83, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.m = load i32, ptr %i.b, align 4, !tbaa !5
  %i.n = zext i32 %i.m to i64
  %i.o = call i32 @EVP_DigestUpdate(ptr noundef nonnull %i.g, ptr noundef nonnull %i.a, i64 noundef %i.n) #8
  %.not84 = icmp eq i32 %i.o, 0
  br i1 %.not84, label %.loopexit98, label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.p = call i32 @EVP_DigestUpdate(ptr noundef nonnull %i.g, ptr noundef nonnull %3, i64 noundef %i.i) #8
  %.not85 = icmp eq i32 %i.p, 0
  br i1 %.not85, label %.loopexit98, label %bb.k

bb.k:                                             ; preds = %bb.j
  br i1 %.not86, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.q = call i32 @EVP_DigestUpdate(ptr noundef nonnull %i.g, ptr noundef nonnull %2, i64 noundef 8) #8
  %.not87 = icmp eq i32 %i.q, 0
  br i1 %.not87, label %.loopexit98, label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.r = call i32 @EVP_DigestFinal_ex(ptr noundef nonnull %i.g, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) #8
  %.not88 = icmp eq i32 %i.r, 0
  br i1 %.not88, label %.loopexit98, label %.preheader97

.preheader97:                                     ; preds = %bb.m
  br i1 %i.j, label %.lr.ph, label %._crit_edge

bb.n:                                             ; preds = %bb.p
  %i.s = add nuw i32 %.058101, 1                  ; 2 uses
  %exitcond.not = icmp eq i32 %i.s, %5
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !10

.lr.ph:                                           ; preds = %.preheader97, %bb.n
  %.058101 = phi i32 [ %i.s, %bb.n ], [ 1, %.preheader97 ]
  %i.t = call i32 @EVP_DigestInit_ex(ptr noundef nonnull %i.g, ptr noundef %1, ptr noundef null) #8
  %.not92 = icmp eq i32 %i.t, 0
  br i1 %.not92, label %.loopexit98, label %bb.o

bb.o:                                             ; preds = %.lr.ph
  %i.u = load i32, ptr %i.b, align 4, !tbaa !5
  %i.v = zext i32 %i.u to i64
  %i.w = call i32 @EVP_DigestUpdate(ptr noundef nonnull %i.g, ptr noundef nonnull %i.a, i64 noundef %i.v) #8
  %.not93 = icmp eq i32 %i.w, 0
  br i1 %.not93, label %.loopexit98, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.x = call i32 @EVP_DigestFinal_ex(ptr noundef nonnull %i.g, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) #8
  %.not94 = icmp eq i32 %i.x, 0
  br i1 %.not94, label %.loopexit98, label %bb.n

._crit_edge:                                      ; preds = %bb.n, %.preheader97
  %i.y = icmp eq i32 %.060, 0
  br i1 %i.y, label %.loopexit96, label %.preheader95.preheader

.preheader95.preheader:                           ; preds = %._crit_edge
  %.pre104 = load i32, ptr %i.b, align 4, !tbaa !5
  br label %.preheader95

.preheader95:                                     ; preds = %.preheader95.preheader, %bb.s
  %8 = phi i32 [ %.pre104, %.preheader95.preheader ], [ %9, %bb.s ] ; 2 uses
  %indvars.iv = phi i64 [ 0, %.preheader95.preheader ], [ %indvars.iv.next, %bb.s ] ; 4 uses
  %.172 = phi ptr [ %.071, %.preheader95.preheader ], [ %.273, %bb.s ] ; 4 uses
  %.161 = phi i32 [ %.060, %.preheader95.preheader ], [ %i.ae, %bb.s ] ; 2 uses
  %i.z = zext i32 %8 to i64
  %i.aa = icmp eq i64 %indvars.iv, %i.z
  br i1 %i.aa, label %.loopexit96.loopexit.split.loop.exit, label %bb.q

bb.q:                                             ; preds = %.preheader95
  %.not89 = icmp eq ptr %.172, null
  br i1 %.not89, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ab = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !9
  %i.ad = getelementptr inbounds nuw i8, ptr %.172, i64 1
  store i8 %i.ac, ptr %.172, align 1, !tbaa !9
  %.pre = load i32, ptr %i.b, align 4, !tbaa !5
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %9 = phi i32 [ %.pre, %bb.r ], [ %8, %bb.q ]
  %.273 = phi ptr [ %i.ad, %bb.r ], [ null, %bb.q ] ; 2 uses
  %i.ae = add nsw i32 %.161, -1                   ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %.old4 = icmp eq i32 %i.ae, 0
  br i1 %.old4, label %.loopexit96, label %.preheader95

.loopexit96.loopexit.split.loop.exit:             ; preds = %.preheader95
  %i.af = trunc nuw i64 %indvars.iv to i32
  br label %.loopexit96

.loopexit96:                                      ; preds = %bb.s, %.loopexit96.loopexit.split.loop.exit, %._crit_edge
  %.374 = phi ptr [ %.071, %._crit_edge ], [ %.172, %.loopexit96.loopexit.split.loop.exit ], [ %.273, %bb.s ]
  %.262 = phi i32 [ 0, %._crit_edge ], [ %.161, %.loopexit96.loopexit.split.loop.exit ], [ 0, %bb.s ] ; 2 uses
  %.2 = phi i32 [ 0, %._crit_edge ], [ %i.af, %.loopexit96.loopexit.split.loop.exit ], [ %.060, %bb.s ] ; 2 uses
  %.not90 = icmp eq i32 %.063, 0
  br i1 %.not90, label %.loopexit, label %bb.t

bb.t:                                             ; preds = %.loopexit96
  %i.ag = load i32, ptr %i.b, align 4, !tbaa !5   ; 2 uses
  %i.ah = icmp eq i32 %.2, %i.ag
  br i1 %i.ah, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.t, %bb.w
  %10 = phi i32 [ %11, %bb.w ], [ %i.ag, %bb.t ]  ; 2 uses
  %.168 = phi ptr [ %.269, %bb.w ], [ %.067, %bb.t ] ; 4 uses
  %.3.a = phi i32 [ %i.an, %bb.w ], [ %.063, %bb.t ] ; 2 uses
  %.3 = phi i32 [ %i.ao, %bb.w ], [ %.2, %bb.t ]  ; 3 uses
  %i.ai = icmp eq i32 %.3, %10
  br i1 %i.ai, label %.loopexit, label %bb.u

bb.u:                                             ; preds = %.preheader
  %.not91 = icmp eq ptr %.168, null
  br i1 %.not91, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.aj = zext i32 %.3 to i64
  %i.ak = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.aj
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !9
  %i.am = getelementptr inbounds nuw i8, ptr %.168, i64 1
  store i8 %i.al, ptr %.168, align 1, !tbaa !9
  %.pre105 = load i32, ptr %i.b, align 4, !tbaa !5
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %11 = phi i32 [ %.pre105, %bb.v ], [ %10, %bb.u ]
  %.269 = phi ptr [ %i.am, %bb.v ], [ null, %bb.u ] ; 2 uses
  %i.an = add nsw i32 %.3.a, -1                   ; 2 uses
  %i.ao = add i32 %.3, 1
  %.old7 = icmp eq i32 %i.an, 0
  br i1 %.old7, label %.loopexit, label %.preheader

.loopexit:                                        ; preds = %bb.w, %.preheader, %bb.t, %.loopexit96
  %.370 = phi ptr [ %.067, %bb.t ], [ %.067, %.loopexit96 ], [ %.269, %bb.w ], [ %.168, %.preheader ]
  %.265 = phi i32 [ %.063, %bb.t ], [ 0, %.loopexit96 ], [ 0, %bb.w ], [ %.3.a, %.preheader ] ; 2 uses
  %i.ap = icmp eq i32 %.262, 0
  %i.aq = icmp eq i32 %.265, 0
  %or.cond3 = select i1 %i.ap, i1 %i.aq, i1 false
  br i1 %or.cond3, label %bb.x, label %bb.g

bb.x:                                             ; preds = %.loopexit
  %i.ar = call i32 @EVP_CIPHER_get_key_length(ptr noundef %0) #8
  br label %.loopexit98

.loopexit98:                                      ; preds = %bb.m, %bb.l, %bb.j, %bb.i, %bb.g, %bb.p, %bb.o, %.lr.ph, %bb.f, %bb.x
  %.0 = phi i32 [ 0, %bb.f ], [ 0, %bb.p ], [ %i.ar, %bb.x ], [ 0, %.lr.ph ], [ 0, %bb.o ], [ 0, %bb.g ], [ 0, %bb.i ], [ 0, %bb.j ], [ 0, %bb.l ], [ 0, %bb.m ]
  call void @EVP_MD_CTX_free(ptr noundef %i.g) #8
  call void @OPENSSL_cleanse(ptr noundef nonnull %i.a, i64 noundef 64) #8
  br label %bb.y

bb.y:                                             ; preds = %bb.e, %.loopexit98
  %.066 = phi i32 [ %.0, %.loopexit98 ], [ %i.c, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  ret i32 %.066
}

declare i32 @EVP_CIPHER_get_key_length(ptr noundef) local_unnamed_addr #5

declare i32 @EVP_CIPHER_get_iv_length(ptr noundef) local_unnamed_addr #5

; Function Attrs: noreturn
declare void @OPENSSL_die(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #6

declare ptr @EVP_MD_CTX_new() local_unnamed_addr #5

declare i32 @EVP_DigestInit_ex(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

declare i32 @EVP_DigestUpdate(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #5

declare i32 @EVP_DigestFinal_ex(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

declare void @EVP_MD_CTX_free(ptr noundef) local_unnamed_addr #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #7

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { nounwind }
attributes #9 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}
!llvm.errno.tbaa = !{!5}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{i32 7, !"frame-pointer", i32 2}
!4 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!5 = !{!6, !6, i64 0}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!7, !7, i64 0}
!10 = distinct !{!10, !11}
!11 = !{!"llvm.loop.mustprogress"}
end_hunk_0
