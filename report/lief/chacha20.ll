inline.NumInlined: 14
inline.NumDeleted: 2
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 3
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.mbedtls_chacha20_context = type { [16 x i32], [64 x i8], i64 }

@.str = private unnamed_addr constant [20 x i8] c"  ChaCha20 test %u \00", align 1
@test_input = internal constant [2 x [375 x i8]] [[375 x i8] zeroinitializer, [375 x i8] c"Any submission to the IETF intended by the Contributor for publication as all or part of an IETF Internet-Draft or RFC and any statement made within the context of an IETF activity is considered an \22IETF Contribution\22. Such statements include oral statements in IETF sessions, as well as written and electronic communications made at any time or place, which are addressed to"], align 16
@test_output = internal constant <{ <{ [64 x i8], [311 x i8] }>, [375 x i8] }> <{ <{ [64 x i8], [311 x i8] }> <{ [64 x i8] c"v\B8\E0\AD\A0\F1=\90@]j\E5S\86\BD(\BD\D2\19\B8\A0\8D\ED\1A\A86\EF\CC\8Bw\0D\C7\DAAY|QWH\8Dw$\E0?\B8\D8J7jC\B8\F4\15\18\A1\1C\C3\87\B6i\B2\EEe\86", [311 x i8] zeroinitializer }>, [375 x i8] c"\A3\FB\F0}\F3\FA/\DEO7l\A2>\82spA`]\9FOOW\BD\8C\FF,\1DKyU\EC*\97\94\8B\D3r)\15\C8\F3\D37\F7\D3p\05\0E\9E\96\D6G\B7\C3\9FV\E01\CA^\B6%\0D@B\E0'\85\EC\EC\FAKK\B5\E8\EA\D0D\0E \B6\E8\DB\09\D8\81\A7\C6\13/B\0ERyPB\BD\FAws\D8\A9\05\14G\B3)\1C\E1A\1Ch\04eU*\A6\C4\05\B7vM^\87\BE\A8Z\D0\0F\84I\ED\8Fr\D0\D6b\AB\05&\91\CAfBK\C8m-\F8\0E\A4\1FC\AB\F97\D3%\9D\C4\B2\D0\DF\B4\8Al\919\DD\D7\F7if\E9(\E65U;\A7l\\\87\9D{5\D4\9E\B2\E6+\08q\CD\ACc\899\E2^\8A\1E\0E\F9\D5(\0F\A8\CA2\8B5\1C<vY\89\CB\CF=\AA\8Bl\CC:\AF\9F9y\C9+7 \FC\88\DC\95\ED\84\A1\BE\05\9Cd\99\B9\FD\A26\E7\E8\18\B0K\0B\C3\9C\1E\87k\19;\FEUiu?\88\12\8C\C0\8A\AA\9Bc\D1\A1o\80\EF%T\D7\18\9CA\1FXi\CAR\C5\B8?\A3o\F2\16\B9\C1\D3\00b\BE\BC\FD-\C5\BC\E0\91\194\FD\A7\9A\86\F6\E6\98\CE\D7Y\C3\FF\9Bdw3\8F=\A4\F9\CD\85\14\EA\99\82\CC\AF\B3A\B28M\D9\02\F3\D1\ABz\C6\1D\D2\9Co!\BA[\86/70\E3|\FD\C4\FD\80l\22\F2!" }>, align 16
@str = private unnamed_addr constant [16 x i8] c"failed (output)\00", align 1
@str.1 = private unnamed_addr constant [7 x i8] c"passed\00", align 1

; Function Attrs: nounwind uwtable
define hidden void @mbedtls_chacha20_init(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  tail call void @mbedtls_platform_zeroize(ptr noundef %0, i64 noundef 64) #9
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  tail call void @mbedtls_platform_zeroize(ptr noundef nonnull %i.a, i64 noundef 64) #9
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 128
  store i64 64, ptr %i.b, align 8, !tbaa !8
  ret void
}

declare void @mbedtls_platform_zeroize(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define hidden void @mbedtls_chacha20_free(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @mbedtls_platform_zeroize(ptr noundef nonnull %0, i64 noundef 136) #9
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define hidden noundef i32 @mbedtls_chacha20_setkey(ptr nofree noundef writeonly captures(none) initializes((0, 48)) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #2 {
bb.a:
  store <4 x i32> <i32 1634760805, i32 857760878, i32 2036477234, i32 1797285236>, ptr %0, align 8, !tbaa !11
  %.0.copyload.i26 = load i32, ptr %1, align 1
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %.0.copyload.i26, ptr %i.a, align 8, !tbaa !11
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 4
  %.0.copyload.i25 = load i32, ptr %i.b, align 1
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i32 %.0.copyload.i25, ptr %i.c, align 4, !tbaa !11
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.0.copyload.i24 = load i32, ptr %i.d, align 1
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 %.0.copyload.i24, ptr %i.e, align 8, !tbaa !11
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 12
  %.0.copyload.i23 = load i32, ptr %i.f, align 1
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i32 %.0.copyload.i23, ptr %i.g, align 4, !tbaa !11
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.0.copyload.i22 = load i32, ptr %i.h, align 1
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 %.0.copyload.i22, ptr %i.i, align 8, !tbaa !11
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 20
  %.0.copyload.i21 = load i32, ptr %i.j, align 1
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 36
  store i32 %.0.copyload.i21, ptr %i.k, align 4, !tbaa !11
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.0.copyload.i20 = load i32, ptr %i.l, align 1
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 %.0.copyload.i20, ptr %i.m, align 8, !tbaa !11
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 28
  %.0.copyload.i = load i32, ptr %i.n, align 1
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 44
  store i32 %.0.copyload.i, ptr %i.o, align 4, !tbaa !11
  ret i32 0
}

; Function Attrs: nounwind uwtable
define hidden noundef i32 @mbedtls_chacha20_starts(ptr noundef initializes((48, 64)) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i32 %2, ptr %i.a, align 8, !tbaa !11
  %.0.copyload.i10 = load i32, ptr %1, align 1
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 52
  store i32 %.0.copyload.i10, ptr %i.b, align 4, !tbaa !11
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 4
  %.0.copyload.i9 = load i32, ptr %i.c, align 1
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i32 %.0.copyload.i9, ptr %i.d, align 8, !tbaa !11
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.0.copyload.i = load i32, ptr %i.e, align 1
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 60
  store i32 %.0.copyload.i, ptr %i.f, align 4, !tbaa !11
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 64
  tail call void @mbedtls_platform_zeroize(ptr noundef nonnull %i.g, i64 noundef 64) #9
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 128
  store i64 64, ptr %i.h, align 8, !tbaa !8
  ret i32 0
}

; Function Attrs: nounwind uwtable
define hidden noundef i32 @mbedtls_chacha20_update(ptr nofree noundef captures(none) %0, i64 noundef %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef writeonly captures(none) %3) local_unnamed_addr #0 {
bb.a:
  %i.a = ptrtoaddr ptr %0 to i64                  ; 2 uses
  %i.b = ptrtoaddr ptr %2 to i64                  ; 2 uses
  %i.c = ptrtoaddr ptr %3 to i64                  ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 4 uses
  %.not45 = icmp eq i64 %1, 0
  br i1 %.not45, label %._crit_edge.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 64
  %.pre = load i64, ptr %i.d, align 8, !tbaa !8
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.c
  %i.f = phi i64 [ %.pre, %.lr.ph ], [ %i.o, %bb.c ] ; 2 uses
  %.047 = phi i64 [ 0, %.lr.ph ], [ %i.p, %bb.c ] ; 5 uses
  %.03346 = phi i64 [ %1, %.lr.ph ], [ %i.q, %bb.c ] ; 4 uses
  %i.g = icmp ult i64 %i.f, 64
  br i1 %i.g, label %bb.c, label %.critedge

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 %.047
  %i.i = load i8, ptr %i.h, align 1, !tbaa !12
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.f
  %i.k = load i8, ptr %i.j, align 1, !tbaa !12
  %i.l = xor i8 %i.k, %i.i
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 %.047
  store i8 %i.l, ptr %i.m, align 1, !tbaa !12
  %i.n = load i64, ptr %i.d, align 8, !tbaa !8
  %i.o = add i64 %i.n, 1                          ; 2 uses
  store i64 %i.o, ptr %i.d, align 8, !tbaa !8
  %i.p = add nuw i64 %.047, 1
  %i.q = add i64 %.03346, -1                      ; 2 uses
  %.not = icmp eq i64 %i.q, 0
  br i1 %.not, label %._crit_edge.thread, label %bb.b, !llvm.loop !13

.critedge:                                        ; preds = %bb.b
  %i.r = icmp ugt i64 %.03346, 63
  br i1 %i.r, label %.lr.ph57, label %._crit_edge.thread77

.lr.ph57:                                         ; preds = %.critedge
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 120
  br label %mbedtls_xor.exit40

mbedtls_xor.exit40:                               ; preds = %mbedtls_xor.exit40, %.lr.ph57
  %.156 = phi i64 [ %.047, %.lr.ph57 ], [ %i.bb, %mbedtls_xor.exit40 ] ; 3 uses
  %.13455 = phi i64 [ %.03346, %.lr.ph57 ], [ %i.bc, %mbedtls_xor.exit40 ]
  tail call fastcc void @chacha20_block(ptr noundef nonnull %0, ptr noundef nonnull %i.s)
  %i.ab = load i32, ptr %i.t, align 8, !tbaa !11
  %i.ac = add i32 %i.ab, 1
  store i32 %i.ac, ptr %i.t, align 8, !tbaa !11
  %i.ad = getelementptr inbounds nuw i8, ptr %3, i64 %.156 ; 8 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 %.156 ; 8 uses
  %.0.copyload.i41 = load i64, ptr %i.ae, align 1
  %.0.copyload.i = load i64, ptr %i.s, align 8
  %i.af = xor i64 %.0.copyload.i, %.0.copyload.i41
  store i64 %i.af, ptr %i.ad, align 1
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %.0.copyload.i41.1 = load i64, ptr %i.ag, align 1
  %.0.copyload.i.1 = load i64, ptr %i.u, align 8
  %i.ah = xor i64 %.0.copyload.i.1, %.0.copyload.i41.1
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  store i64 %i.ah, ptr %i.ai, align 1
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  %.0.copyload.i41.2 = load i64, ptr %i.aj, align 1
  %.0.copyload.i.2 = load i64, ptr %i.v, align 8
  %i.ak = xor i64 %.0.copyload.i.2, %.0.copyload.i41.2
  %i.al = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  store i64 %i.ak, ptr %i.al, align 1
  %i.am = getelementptr inbounds nuw i8, ptr %i.ae, i64 24
  %.0.copyload.i41.3 = load i64, ptr %i.am, align 1
  %.0.copyload.i.3 = load i64, ptr %i.w, align 8
  %i.an = xor i64 %.0.copyload.i.3, %.0.copyload.i41.3
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ad, i64 24
  store i64 %i.an, ptr %i.ao, align 1
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ae, i64 32
  %.0.copyload.i41.4 = load i64, ptr %i.ap, align 1
  %.0.copyload.i.4 = load i64, ptr %i.x, align 8
  %i.aq = xor i64 %.0.copyload.i.4, %.0.copyload.i41.4
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ad, i64 32
  store i64 %i.aq, ptr %i.ar, align 1
  %i.as = getelementptr inbounds nuw i8, ptr %i.ae, i64 40
  %.0.copyload.i41.5 = load i64, ptr %i.as, align 1
  %.0.copyload.i.5 = load i64, ptr %i.y, align 8
  %i.at = xor i64 %.0.copyload.i.5, %.0.copyload.i41.5
  %i.au = getelementptr inbounds nuw i8, ptr %i.ad, i64 40
  store i64 %i.at, ptr %i.au, align 1
  %i.av = getelementptr inbounds nuw i8, ptr %i.ae, i64 48
  %.0.copyload.i41.6 = load i64, ptr %i.av, align 1
  %.0.copyload.i.6 = load i64, ptr %i.z, align 8
  %i.aw = xor i64 %.0.copyload.i.6, %.0.copyload.i41.6
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ad, i64 48
  store i64 %i.aw, ptr %i.ax, align 1
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ae, i64 56
  %.0.copyload.i41.7 = load i64, ptr %i.ay, align 1
  %.0.copyload.i.7 = load i64, ptr %i.aa, align 8
  %i.az = xor i64 %.0.copyload.i.7, %.0.copyload.i41.7
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ad, i64 56
  store i64 %i.az, ptr %i.ba, align 1
  %i.bb = add i64 %.156, 64                       ; 2 uses
  %i.bc = add i64 %.13455, -64                    ; 4 uses
  %i.bd = icmp ugt i64 %i.bc, 63
  br i1 %i.bd, label %mbedtls_xor.exit40, label %._crit_edge, !llvm.loop !15

._crit_edge:                                      ; preds = %mbedtls_xor.exit40
  %.not36 = icmp eq i64 %i.bc, 0
  br i1 %.not36, label %._crit_edge.thread, label %._crit_edge.thread77

._crit_edge.thread77:                             ; preds = %.critedge, %._crit_edge
  %.1.lcssa82 = phi i64 [ %i.bb, %._crit_edge ], [ %.047, %.critedge ] ; 4 uses
  %.134.lcssa81 = phi i64 [ %i.bc, %._crit_edge ], [ %.03346, %.critedge ] ; 9 uses
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 10 uses
  tail call fastcc void @chacha20_block(ptr noundef nonnull %0, ptr noundef nonnull %i.be)
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.bg = load i32, ptr %i.bf, align 8, !tbaa !11
  %i.bh = add i32 %i.bg, 1
  store i32 %i.bh, ptr %i.bf, align 8, !tbaa !11
  %i.bi = getelementptr inbounds nuw i8, ptr %3, i64 %.1.lcssa82 ; 9 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %2, i64 %.1.lcssa82 ; 9 uses
  %.not.i60 = icmp samesign ult i64 %.134.lcssa81, 8
  br i1 %.not.i60, label %.preheader, label %.lr.ph63.preheader

.lr.ph63.preheader:                               ; preds = %._crit_edge.thread77
  %i.bk = add nsw i64 %.134.lcssa81, -8           ; 2 uses
  %i.bl = lshr i64 %i.bk, 3
  %i.bm = add nuw nsw i64 %i.bl, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.bk, 120
  br i1 %min.iters.check, label %.lr.ph63.preheader122, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph63.preheader
  %i.bn = sub i64 %i.b, %i.c
  %diff.check = icmp ugt i64 %i.bn, -32
  %i.bo = add i64 %.1.lcssa82, %i.c
  %i.bp = sub i64 %i.bo, %i.a
  %i.bq = add i64 %i.bp, -65
  %diff.check91 = icmp ult i64 %i.bq, 31
  %conflict.rdx = or i1 %diff.check, %diff.check91
  br i1 %conflict.rdx, label %.lr.ph63.preheader122, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.bm, 4611686018427387900     ; 3 uses
  %i.br = shl i64 %n.vec, 3                       ; 3 uses
  %i.bs = or disjoint i64 %i.br, 8
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bt = shl i64 %index, 3                       ; 3 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bj, i64 %i.bt ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 16
  %wide.load = load <2 x i64>, ptr %i.bu, align 1
  %wide.load92 = load <2 x i64>, ptr %i.bv, align 1
  %i.bw = getelementptr inbounds nuw i8, ptr %i.be, i64 %i.bt ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 16
  %wide.load93 = load <2 x i64>, ptr %i.bw, align 1
  %wide.load94 = load <2 x i64>, ptr %i.bx, align 1
  %i.by = xor <2 x i64> %wide.load93, %wide.load
  %i.bz = xor <2 x i64> %wide.load94, %wide.load92
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bi, i64 %i.bt ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 16
  store <2 x i64> %i.by, ptr %i.ca, align 1
  store <2 x i64> %i.bz, ptr %i.cb, align 1
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.cc = icmp eq i64 %index.next, %n.vec
  br i1 %i.cc, label %middle.block, label %vector.body, !llvm.loop !16

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bm, %n.vec
  br i1 %cmp.n, label %.preheader, label %.lr.ph63.preheader122

.lr.ph63.preheader122:                            ; preds = %vector.memcheck, %.lr.ph63.preheader, %middle.block
  %.ph = phi i64 [ 8, %vector.memcheck ], [ 8, %.lr.ph63.preheader ], [ %i.bs, %middle.block ]
  %.0.i61.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph63.preheader ], [ %i.br, %middle.block ]
  br label %.lr.ph63

.preheader:                                       ; preds = %.lr.ph63, %middle.block, %._crit_edge.thread77
  %.0.i.lcssa = phi i64 [ 0, %._crit_edge.thread77 ], [ %i.br, %middle.block ], [ %i.dm, %.lr.ph63 ] ; 8 uses
  %i.cd = icmp samesign ult i64 %.0.i.lcssa, %.134.lcssa81
  br i1 %i.cd, label %iter.check, label %mbedtls_xor.exit

iter.check:                                       ; preds = %.preheader
  %i.ce = sub nuw i64 %.134.lcssa81, %.0.i.lcssa  ; 7 uses
  %min.iters.check101 = icmp ult i64 %i.ce, 8
  br i1 %min.iters.check101, label %.lr.ph66.preheader, label %vector.memcheck96

vector.memcheck96:                                ; preds = %iter.check
  %i.cf = sub i64 %i.b, %i.c
  %diff.check97 = icmp ugt i64 %i.cf, -32
  %i.cg = add i64 %.1.lcssa82, %i.c
  %i.ch = sub i64 %i.cg, %i.a
  %i.ci = add i64 %i.ch, -65
  %diff.check98 = icmp ult i64 %i.ci, 31
  %conflict.rdx99 = or i1 %diff.check97, %diff.check98
  br i1 %conflict.rdx99, label %.lr.ph66.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck96
  %min.iters.check102 = icmp ult i64 %i.ce, 32
  br i1 %min.iters.check102, label %vec.epilog.ph, label %vector.ph103

vector.ph103:                                     ; preds = %vector.main.loop.iter.check
  %i.cj = and i64 %i.ce, 24
  %n.vec104 = and i64 %i.ce, 32                   ; 4 uses
  %i.ck = add i64 %.0.i.lcssa, %n.vec104
  br label %vector.body105

vector.body105:                                   ; preds = %vector.body105, %vector.ph103
  %index106 = phi i64 [ 0, %vector.ph103 ], [ %index.next111, %vector.body105 ] ; 2 uses
  %i.cl = add nuw i64 %.0.i.lcssa, %index106      ; 3 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.bj, i64 %i.cl ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 16
  %wide.load107 = load <16 x i8>, ptr %i.cm, align 1, !tbaa !12
  %wide.load108 = load <16 x i8>, ptr %i.cn, align 1, !tbaa !12
  %i.co = getelementptr inbounds nuw i8, ptr %i.be, i64 %i.cl ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 16
  %wide.load109 = load <16 x i8>, ptr %i.co, align 1, !tbaa !12
  %wide.load110 = load <16 x i8>, ptr %i.cp, align 1, !tbaa !12
  %i.cq = xor <16 x i8> %wide.load109, %wide.load107
  %i.cr = xor <16 x i8> %wide.load110, %wide.load108
  %i.cs = getelementptr inbounds nuw i8, ptr %i.bi, i64 %i.cl ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 16
  store <16 x i8> %i.cq, ptr %i.cs, align 1, !tbaa !12
  store <16 x i8> %i.cr, ptr %i.ct, align 1, !tbaa !12
  %index.next111 = add nuw i64 %index106, 32      ; 2 uses
  %i.cu = icmp eq i64 %index.next111, %n.vec104
  br i1 %i.cu, label %middle.block112, label %vector.body105, !llvm.loop !19

middle.block112:                                  ; preds = %vector.body105
  %cmp.n113 = icmp eq i64 %i.ce, %n.vec104
  br i1 %cmp.n113, label %mbedtls_xor.exit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block112
  %min.epilog.iters.check = icmp eq i64 %i.cj, 0
  br i1 %min.epilog.iters.check, label %.lr.ph66.preheader, label %vec.epilog.ph, !prof !20

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec104, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec115 = and i64 %i.ce, 56                   ; 3 uses
  %i.cv = add i64 %.0.i.lcssa, %n.vec115
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index116 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next119, %vec.epilog.vector.body ] ; 2 uses
  %i.cw = add nuw i64 %.0.i.lcssa, %index116      ; 3 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.bj, i64 %i.cw
  %wide.load117 = load <8 x i8>, ptr %i.cx, align 1, !tbaa !12
end_hunk_0
