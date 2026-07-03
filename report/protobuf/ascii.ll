inline.NumInlined: 132
inline.NumDeleted: 53
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 6
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

$_ZN4absl12lts_2025051227StripLeadingAsciiWhitespaceESt17basic_string_viewIcSt11char_traitsIcEE = comdat any

@_ZN4absl12lts_2025051214ascii_internal13kPropertyBitsE = local_unnamed_addr constant <{ [128 x i8], [128 x i8] }> <{ [128 x i8] c"@@@@@@@@@hHHHH@@@@@@@@@@@@@@@@@@(\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\84\84\84\84\84\84\84\84\84\84\10\10\10\10\10\10\10\85\85\85\85\85\85\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\10\10\10\10\10\10\85\85\85\85\85\85\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\10\10\10\10@", [128 x i8] zeroinitializer }>, align 16
@_ZN4absl12lts_2025051214ascii_internal8kToLowerE = local_unnamed_addr constant [256 x i8] c"\00\01\02\03\04\05\06\07\08\09\0A\0B\0C\0D\0E\0F\10\11\12\13\14\15\16\17\18\19\1A\1B\1C\1D\1E\1F !\22#$%&'()*+,-./0123456789:;<=>?@abcdefghijklmnopqrstuvwxyz[\\]^_`abcdefghijklmnopqrstuvwxyz{|}~\7F\80\81\82\83\84\85\86\87\88\89\8A\8B\8C\8D\8E\8F\90\91\92\93\94\95\96\97\98\99\9A\9B\9C\9D\9E\9F\A0\A1\A2\A3\A4\A5\A6\A7\A8\A9\AA\AB\AC\AD\AE\AF\B0\B1\B2\B3\B4\B5\B6\B7\B8\B9\BA\BB\BC\BD\BE\BF\C0\C1\C2\C3\C4\C5\C6\C7\C8\C9\CA\CB\CC\CD\CE\CF\D0\D1\D2\D3\D4\D5\D6\D7\D8\D9\DA\DB\DC\DD\DE\DF\E0\E1\E2\E3\E4\E5\E6\E7\E8\E9\EA\EB\EC\ED\EE\EF\F0\F1\F2\F3\F4\F5\F6\F7\F8\F9\FA\FB\FC\FD\FE\FF", align 16
@_ZN4absl12lts_2025051214ascii_internal8kToUpperE = local_unnamed_addr constant [256 x i8] c"\00\01\02\03\04\05\06\07\08\09\0A\0B\0C\0D\0E\0F\10\11\12\13\14\15\16\17\18\19\1A\1B\1C\1D\1E\1F !\22#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\\]^_`ABCDEFGHIJKLMNOPQRSTUVWXYZ{|}~\7F\80\81\82\83\84\85\86\87\88\89\8A\8B\8C\8D\8E\8F\90\91\92\93\94\95\96\97\98\99\9A\9B\9C\9D\9E\9F\A0\A1\A2\A3\A4\A5\A6\A7\A8\A9\AA\AB\AC\AD\AE\AF\B0\B1\B2\B3\B4\B5\B6\B7\B8\B9\BA\BB\BC\BD\BE\BF\C0\C1\C2\C3\C4\C5\C6\C7\C8\C9\CA\CB\CC\CD\CE\CF\D0\D1\D2\D3\D4\D5\D6\D7\D8\D9\DA\DB\DC\DD\DE\DF\E0\E1\E2\E3\E4\E5\E6\E7\E8\E9\EA\EB\EC\ED\EE\EF\F0\F1\F2\F3\F4\F5\F6\F7\F8\F9\FA\FB\FC\FD\FE\FF", align 16
@.str = private unnamed_addr constant [26 x i8] c"basic_string_view::substr\00", align 1
@.str.1 = private unnamed_addr constant [49 x i8] c"%s: __pos (which is %zu) > __size (which is %zu)\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"basic_string::erase\00", align 1
@.str.3 = private unnamed_addr constant [55 x i8] c"%s: __pos (which is %zu) > this->size() (which is %zu)\00", align 1

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define void @_ZN4absl12lts_2025051214ascii_internal15AsciiStrToLowerEPcPKcm(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp ult i64 %2, 16
  br i1 %i.a, label %bb.b, label %vector.memcheck

vector.memcheck:                                  ; preds = %bb.a
  %i.b = ptrtoaddr ptr %0 to i64
  %i.c = ptrtoaddr ptr %1 to i64
  %i.d = sub i64 %i.b, %i.c
  %diff.check = icmp ult i64 %i.d, 32
  br i1 %diff.check, label %.lr.ph.i7.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check = icmp ult i64 %2, 32
  br i1 %min.iters.check, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %2, 24
  %n.vec = and i64 %2, -32                        ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 %index ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %wide.load = load <16 x i8>, ptr %i.e, align 1, !tbaa !7 ; 2 uses
  %wide.load6 = load <16 x i8>, ptr %i.f, align 1, !tbaa !7 ; 2 uses
  %i.g = add <16 x i8> %wide.load, splat (i8 63)
  %i.h = add <16 x i8> %wide.load6, splat (i8 63)
  %i.i = icmp slt <16 x i8> %i.g, splat (i8 -102)
  %i.j = icmp slt <16 x i8> %i.h, splat (i8 -102)
  %i.k = select <16 x i1> %i.i, <16 x i8> splat (i8 32), <16 x i8> zeroinitializer
  %i.l = select <16 x i1> %i.j, <16 x i8> splat (i8 32), <16 x i8> zeroinitializer
  %i.m = xor <16 x i8> %i.k, %wide.load
  %i.n = xor <16 x i8> %i.l, %wide.load6
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 %index ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  store <16 x i8> %i.m, ptr %i.o, align 1, !tbaa !7
  store <16 x i8> %i.n, ptr %i.p, align 1, !tbaa !7
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.q = icmp eq i64 %index.next, %n.vec
  br i1 %i.q, label %middle.block, label %vector.body, !llvm.loop !8

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %2, %n.vec
  br i1 %cmp.n, label %_ZN4absl12lts_2025051214ascii_internal16AsciiStrCaseFoldILb0EEEvPcPKcm.exit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i7.i.preheader, label %vec.epilog.ph, !prof !12

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec8 = and i64 %2, -8                        ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index9 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next11, %vec.epilog.vector.body ] ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 %index9
  %wide.load10 = load <8 x i8>, ptr %i.r, align 1, !tbaa !7 ; 2 uses
  %i.s = add <8 x i8> %wide.load10, splat (i8 63)
  %i.t = icmp slt <8 x i8> %i.s, splat (i8 -102)
  %i.u = select <8 x i1> %i.t, <8 x i8> splat (i8 32), <8 x i8> zeroinitializer
  %i.v = xor <8 x i8> %i.u, %wide.load10
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 %index9
  store <8 x i8> %i.v, ptr %i.w, align 1, !tbaa !7
  %index.next11 = add nuw i64 %index9, 8          ; 2 uses
  %i.x = icmp eq i64 %index.next11, %n.vec8
  br i1 %i.x, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !13

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n12 = icmp eq i64 %2, %n.vec8
  br i1 %cmp.n12, label %_ZN4absl12lts_2025051214ascii_internal16AsciiStrCaseFoldILb0EEEvPcPKcm.exit, label %.lr.ph.i7.i.preheader

.lr.ph.i7.i.preheader:                            ; preds = %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.09.i8.i.ph = phi i64 [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec8, %vec.epilog.middle.block ] ; 5 uses
  %.neg = or disjoint i64 %.09.i8.i.ph, 1
  %xtraiter = and i64 %2, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i7.i.prol.loopexit, label %.lr.ph.i7.i.prol

.lr.ph.i7.i.prol:                                 ; preds = %.lr.ph.i7.i.preheader
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 %.09.i8.i.ph
  %i.z = load i8, ptr %i.y, align 1, !tbaa !7     ; 2 uses
  %i.aa = add i8 %i.z, 63
  %i.ab = icmp slt i8 %i.aa, -102
  %i.ac = select i1 %i.ab, i8 32, i8 0
  %i.ad = xor i8 %i.ac, %i.z
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 %.09.i8.i.ph
  store i8 %i.ad, ptr %i.ae, align 1, !tbaa !7
  %i.af = or disjoint i64 %.09.i8.i.ph, 1
  br label %.lr.ph.i7.i.prol.loopexit

.lr.ph.i7.i.prol.loopexit:                        ; preds = %.lr.ph.i7.i.prol, %.lr.ph.i7.i.preheader
  %.09.i8.i.unr = phi i64 [ %.09.i8.i.ph, %.lr.ph.i7.i.preheader ], [ %i.af, %.lr.ph.i7.i.prol ]
  %i.ag = icmp eq i64 %2, %.neg
  br i1 %i.ag, label %_ZN4absl12lts_2025051214ascii_internal16AsciiStrCaseFoldILb0EEEvPcPKcm.exit, label %.lr.ph.i7.i

bb.b:                                             ; preds = %bb.a
  %.not.i.i = icmp eq i64 %2, 0
  br i1 %.not.i.i, label %_ZN4absl12lts_2025051214ascii_internal16AsciiStrCaseFoldILb0EEEvPcPKcm.exit, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.b
  %xtraiter14 = and i64 %2, 1
  %i.ah = icmp eq i64 %2, 1
  br i1 %i.ah, label %.lr.ph.i.i.epil.preheader, label %.lr.ph.i.i.preheader.new

.lr.ph.i.i.preheader.new:                         ; preds = %.lr.ph.i.i.preheader
  %unroll_iter = and i64 %2, 14
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.i.i.preheader.new
  %.09.i.i = phi i64 [ 0, %.lr.ph.i.i.preheader.new ], [ %i.ax, %.lr.ph.i.i ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph.i.i.preheader.new ], [ %niter.next.1, %.lr.ph.i.i ]
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 %.09.i.i
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !7   ; 2 uses
  %i.ak = add i8 %i.aj, -65
  %i.al = icmp ult i8 %i.ak, 26
  %i.am = select i1 %i.al, i8 32, i8 0
  %i.an = xor i8 %i.am, %i.aj
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 %.09.i.i
  store i8 %i.an, ptr %i.ao, align 1, !tbaa !7
  %i.ap = or disjoint i64 %.09.i.i, 1             ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 %i.ap
  %i.ar = load i8, ptr %i.aq, align 1, !tbaa !7   ; 2 uses
  %i.as = add i8 %i.ar, -65
  %i.at = icmp ult i8 %i.as, 26
  %i.au = select i1 %i.at, i8 32, i8 0
  %i.av = xor i8 %i.au, %i.ar
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 %i.ap
  store i8 %i.av, ptr %i.aw, align 1, !tbaa !7
  %i.ax = add nuw nsw i64 %.09.i.i, 2             ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZN4absl12lts_2025051214ascii_internal16AsciiStrCaseFoldILb0EEEvPcPKcm.exit.loopexit.unr-lcssa, label %.lr.ph.i.i, !llvm.loop !14

.lr.ph.i7.i:                                      ; preds = %.lr.ph.i7.i.prol.loopexit, %.lr.ph.i7.i
  %.09.i8.i = phi i64 [ %i.bn, %.lr.ph.i7.i ], [ %.09.i8.i.unr, %.lr.ph.i7.i.prol.loopexit ] ; 4 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 %.09.i8.i
  %i.az = load i8, ptr %i.ay, align 1, !tbaa !7   ; 2 uses
  %i.ba = add i8 %i.az, 63
  %i.bb = icmp slt i8 %i.ba, -102
  %i.bc = select i1 %i.bb, i8 32, i8 0
  %i.bd = xor i8 %i.bc, %i.az
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 %.09.i8.i
  store i8 %i.bd, ptr %i.be, align 1, !tbaa !7
  %i.bf = add nuw i64 %.09.i8.i, 1                ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 %i.bf
  %i.bh = load i8, ptr %i.bg, align 1, !tbaa !7   ; 2 uses
  %i.bi = add i8 %i.bh, 63
  %i.bj = icmp slt i8 %i.bi, -102
  %i.bk = select i1 %i.bj, i8 32, i8 0
  %i.bl = xor i8 %i.bk, %i.bh
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 %i.bf
  store i8 %i.bl, ptr %i.bm, align 1, !tbaa !7
  %i.bn = add nuw i64 %.09.i8.i, 2                ; 2 uses
  %exitcond.not.i9.i.1 = icmp eq i64 %i.bn, %2
  br i1 %exitcond.not.i9.i.1, label %_ZN4absl12lts_2025051214ascii_internal16AsciiStrCaseFoldILb0EEEvPcPKcm.exit, label %.lr.ph.i7.i, !llvm.loop !15

_ZN4absl12lts_2025051214ascii_internal16AsciiStrCaseFoldILb0EEEvPcPKcm.exit.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i
  %lcmp.mod15.not = icmp eq i64 %xtraiter14, 0
  br i1 %lcmp.mod15.not, label %_ZN4absl12lts_2025051214ascii_internal16AsciiStrCaseFoldILb0EEEvPcPKcm.exit, label %.lr.ph.i.i.epil.preheader

.lr.ph.i.i.epil.preheader:                        ; preds = %_ZN4absl12lts_2025051214ascii_internal16AsciiStrCaseFoldILb0EEEvPcPKcm.exit.loopexit.unr-lcssa, %.lr.ph.i.i.preheader
  %.09.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.i.preheader ], [ %i.ax, %_ZN4absl12lts_2025051214ascii_internal16AsciiStrCaseFoldILb0EEEvPcPKcm.exit.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod16 = trunc i64 %2 to i1
  tail call void @llvm.assume(i1 %lcmp.mod16)
  %i.bo = getelementptr inbounds nuw i8, ptr %1, i64 %.09.i.i.epil.init
  %i.bp = load i8, ptr %i.bo, align 1, !tbaa !7   ; 2 uses
  %i.bq = add i8 %i.bp, -65
  %i.br = icmp ult i8 %i.bq, 26
  %i.bs = select i1 %i.br, i8 32, i8 0
  %i.bt = xor i8 %i.bs, %i.bp
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 %.09.i.i.epil.init
  store i8 %i.bt, ptr %i.bu, align 1, !tbaa !7
  br label %_ZN4absl12lts_2025051214ascii_internal16AsciiStrCaseFoldILb0EEEvPcPKcm.exit

_ZN4absl12lts_2025051214ascii_internal16AsciiStrCaseFoldILb0EEEvPcPKcm.exit: ; preds = %.lr.ph.i7.i.prol.loopexit, %.lr.ph.i7.i, %.lr.ph.i.i.epil.preheader, %_ZN4absl12lts_2025051214ascii_internal16AsciiStrCaseFoldILb0EEEvPcPKcm.exit.loopexit.unr-lcssa, %middle.block, %vec.epilog.middle.block, %bb.b
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define void @_ZN4absl12lts_2025051214ascii_internal15AsciiStrToUpperEPcPKcm(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp ult i64 %2, 16
  br i1 %i.a, label %bb.b, label %vector.memcheck

vector.memcheck:                                  ; preds = %bb.a
  %i.b = ptrtoaddr ptr %0 to i64
  %i.c = ptrtoaddr ptr %1 to i64
  %i.d = sub i64 %i.b, %i.c
  %diff.check = icmp ult i64 %i.d, 32
  br i1 %diff.check, label %.lr.ph.i7.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check = icmp ult i64 %2, 32
  br i1 %min.iters.check, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %2, 24
  %n.vec = and i64 %2, -32                        ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 %index ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %wide.load = load <16 x i8>, ptr %i.e, align 1, !tbaa !7 ; 2 uses
  %wide.load6 = load <16 x i8>, ptr %i.f, align 1, !tbaa !7 ; 2 uses
  %i.g = add <16 x i8> %wide.load, splat (i8 31)
  %i.h = add <16 x i8> %wide.load6, splat (i8 31)
  %i.i = icmp slt <16 x i8> %i.g, splat (i8 -102)
  %i.j = icmp slt <16 x i8> %i.h, splat (i8 -102)
  %i.k = select <16 x i1> %i.i, <16 x i8> splat (i8 32), <16 x i8> zeroinitializer
  %i.l = select <16 x i1> %i.j, <16 x i8> splat (i8 32), <16 x i8> zeroinitializer
  %i.m = xor <16 x i8> %i.k, %wide.load
  %i.n = xor <16 x i8> %i.l, %wide.load6
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 %index ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  store <16 x i8> %i.m, ptr %i.o, align 1, !tbaa !7
  store <16 x i8> %i.n, ptr %i.p, align 1, !tbaa !7
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.q = icmp eq i64 %index.next, %n.vec
  br i1 %i.q, label %middle.block, label %vector.body, !llvm.loop !16

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %2, %n.vec
  br i1 %cmp.n, label %_ZN4absl12lts_2025051214ascii_internal16AsciiStrCaseFoldILb1EEEvPcPKcm.exit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i7.i.preheader, label %vec.epilog.ph, !prof !12

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec8 = and i64 %2, -8                        ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index9 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next11, %vec.epilog.vector.body ] ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 %index9
  %wide.load10 = load <8 x i8>, ptr %i.r, align 1, !tbaa !7 ; 2 uses
  %i.s = add <8 x i8> %wide.load10, splat (i8 31)
  %i.t = icmp slt <8 x i8> %i.s, splat (i8 -102)
  %i.u = select <8 x i1> %i.t, <8 x i8> splat (i8 32), <8 x i8> zeroinitializer
  %i.v = xor <8 x i8> %i.u, %wide.load10
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 %index9
  store <8 x i8> %i.v, ptr %i.w, align 1, !tbaa !7
  %index.next11 = add nuw i64 %index9, 8          ; 2 uses
  %i.x = icmp eq i64 %index.next11, %n.vec8
  br i1 %i.x, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !17

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n12 = icmp eq i64 %2, %n.vec8
  br i1 %cmp.n12, label %_ZN4absl12lts_2025051214ascii_internal16AsciiStrCaseFoldILb1EEEvPcPKcm.exit, label %.lr.ph.i7.i.preheader

.lr.ph.i7.i.preheader:                            ; preds = %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.09.i8.i.ph = phi i64 [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec8, %vec.epilog.middle.block ] ; 5 uses
  %.neg = or disjoint i64 %.09.i8.i.ph, 1
  %xtraiter = and i64 %2, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i7.i.prol.loopexit, label %.lr.ph.i7.i.prol

.lr.ph.i7.i.prol:                                 ; preds = %.lr.ph.i7.i.preheader
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 %.09.i8.i.ph
  %i.z = load i8, ptr %i.y, align 1, !tbaa !7     ; 2 uses
  %i.aa = add i8 %i.z, 31
  %i.ab = icmp slt i8 %i.aa, -102
  %i.ac = select i1 %i.ab, i8 32, i8 0
  %i.ad = xor i8 %i.ac, %i.z
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 %.09.i8.i.ph
  store i8 %i.ad, ptr %i.ae, align 1, !tbaa !7
  %i.af = or disjoint i64 %.09.i8.i.ph, 1
  br label %.lr.ph.i7.i.prol.loopexit

.lr.ph.i7.i.prol.loopexit:                        ; preds = %.lr.ph.i7.i.prol, %.lr.ph.i7.i.preheader
  %.09.i8.i.unr = phi i64 [ %.09.i8.i.ph, %.lr.ph.i7.i.preheader ], [ %i.af, %.lr.ph.i7.i.prol ]
  %i.ag = icmp eq i64 %2, %.neg
  br i1 %i.ag, label %_ZN4absl12lts_2025051214ascii_internal16AsciiStrCaseFoldILb1EEEvPcPKcm.exit, label %.lr.ph.i7.i

bb.b:                                             ; preds = %bb.a
  %.not.i.i = icmp eq i64 %2, 0
  br i1 %.not.i.i, label %_ZN4absl12lts_2025051214ascii_internal16AsciiStrCaseFoldILb1EEEvPcPKcm.exit, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.b
  %xtraiter14 = and i64 %2, 1
  %i.ah = icmp eq i64 %2, 1
  br i1 %i.ah, label %.lr.ph.i.i.epil.preheader, label %.lr.ph.i.i.preheader.new

.lr.ph.i.i.preheader.new:                         ; preds = %.lr.ph.i.i.preheader
  %unroll_iter = and i64 %2, 14
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.i.i.preheader.new
  %.09.i.i = phi i64 [ 0, %.lr.ph.i.i.preheader.new ], [ %i.ax, %.lr.ph.i.i ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph.i.i.preheader.new ], [ %niter.next.1, %.lr.ph.i.i ]
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 %.09.i.i
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !7   ; 2 uses
  %i.ak = add i8 %i.aj, -97
  %i.al = icmp ult i8 %i.ak, 26
  %i.am = select i1 %i.al, i8 32, i8 0
  %i.an = xor i8 %i.am, %i.aj
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 %.09.i.i
  store i8 %i.an, ptr %i.ao, align 1, !tbaa !7
  %i.ap = or disjoint i64 %.09.i.i, 1             ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 %i.ap
  %i.ar = load i8, ptr %i.aq, align 1, !tbaa !7   ; 2 uses
  %i.as = add i8 %i.ar, -97
  %i.at = icmp ult i8 %i.as, 26
  %i.au = select i1 %i.at, i8 32, i8 0
  %i.av = xor i8 %i.au, %i.ar
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 %i.ap
  store i8 %i.av, ptr %i.aw, align 1, !tbaa !7
  %i.ax = add nuw nsw i64 %.09.i.i, 2             ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZN4absl12lts_2025051214ascii_internal16AsciiStrCaseFoldILb1EEEvPcPKcm.exit.loopexit.unr-lcssa, label %.lr.ph.i.i, !llvm.loop !18

.lr.ph.i7.i:                                      ; preds = %.lr.ph.i7.i.prol.loopexit, %.lr.ph.i7.i
  %.09.i8.i = phi i64 [ %i.bn, %.lr.ph.i7.i ], [ %.09.i8.i.unr, %.lr.ph.i7.i.prol.loopexit ] ; 4 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 %.09.i8.i
  %i.az = load i8, ptr %i.ay, align 1, !tbaa !7   ; 2 uses
  %i.ba = add i8 %i.az, 31
  %i.bb = icmp slt i8 %i.ba, -102
  %i.bc = select i1 %i.bb, i8 32, i8 0
  %i.bd = xor i8 %i.bc, %i.az
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 %.09.i8.i
  store i8 %i.bd, ptr %i.be, align 1, !tbaa !7
  %i.bf = add nuw i64 %.09.i8.i, 1                ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 %i.bf
  %i.bh = load i8, ptr %i.bg, align 1, !tbaa !7   ; 2 uses
  %i.bi = add i8 %i.bh, 31
  %i.bj = icmp slt i8 %i.bi, -102
  %i.bk = select i1 %i.bj, i8 32, i8 0
  %i.bl = xor i8 %i.bk, %i.bh
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 %i.bf
  store i8 %i.bl, ptr %i.bm, align 1, !tbaa !7
  %i.bn = add nuw i64 %.09.i8.i, 2                ; 2 uses
  %exitcond.not.i9.i.1 = icmp eq i64 %i.bn, %2
  br i1 %exitcond.not.i9.i.1, label %_ZN4absl12lts_2025051214ascii_internal16AsciiStrCaseFoldILb1EEEvPcPKcm.exit, label %.lr.ph.i7.i, !llvm.loop !19

_ZN4absl12lts_2025051214ascii_internal16AsciiStrCaseFoldILb1EEEvPcPKcm.exit.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i
  %lcmp.mod15.not = icmp eq i64 %xtraiter14, 0
  br i1 %lcmp.mod15.not, label %_ZN4absl12lts_2025051214ascii_internal16AsciiStrCaseFoldILb1EEEvPcPKcm.exit, label %.lr.ph.i.i.epil.preheader

.lr.ph.i.i.epil.preheader:                        ; preds = %_ZN4absl12lts_2025051214ascii_internal16AsciiStrCaseFoldILb1EEEvPcPKcm.exit.loopexit.unr-lcssa, %.lr.ph.i.i.preheader
  %.09.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.i.preheader ], [ %i.ax, %_ZN4absl12lts_2025051214ascii_internal16AsciiStrCaseFoldILb1EEEvPcPKcm.exit.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod16 = trunc i64 %2 to i1
  tail call void @llvm.assume(i1 %lcmp.mod16)
  %i.bo = getelementptr inbounds nuw i8, ptr %1, i64 %.09.i.i.epil.init
  %i.bp = load i8, ptr %i.bo, align 1, !tbaa !7   ; 2 uses
  %i.bq = add i8 %i.bp, -97
  %i.br = icmp ult i8 %i.bq, 26
  %i.bs = select i1 %i.br, i8 32, i8 0
  %i.bt = xor i8 %i.bs, %i.bp
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 %.09.i.i.epil.init
  store i8 %i.bt, ptr %i.bu, align 1, !tbaa !7
  br label %_ZN4absl12lts_2025051214ascii_internal16AsciiStrCaseFoldILb1EEEvPcPKcm.exit

_ZN4absl12lts_2025051214ascii_internal16AsciiStrCaseFoldILb1EEEvPcPKcm.exit: ; preds = %.lr.ph.i7.i.prol.loopexit, %.lr.ph.i7.i, %.lr.ph.i.i.epil.preheader, %_ZN4absl12lts_2025051214ascii_internal16AsciiStrCaseFoldILb1EEEvPcPKcm.exit.loopexit.unr-lcssa, %middle.block, %vec.epilog.middle.block, %bb.b
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @_ZN4absl12lts_2025051215AsciiStrToLowerEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #1 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !20     ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.b, align 8, !tbaa !26   ; 13 uses
  %i.d = icmp ult i64 %i.c, 16
  br i1 %i.d, label %bb.b, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %bb.a
  %min.iters.check = icmp ult i64 %i.c, 32
  br i1 %min.iters.check, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %i.c, 24
  %n.vec = and i64 %i.c, -32                      ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 %index ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  %wide.load = load <16 x i8>, ptr %i.e, align 1, !tbaa !7 ; 2 uses
  %wide.load8 = load <16 x i8>, ptr %i.f, align 1, !tbaa !7 ; 2 uses
  %i.g = add <16 x i8> %wide.load, splat (i8 63)
  %i.h = add <16 x i8> %wide.load8, splat (i8 63)
  %i.i = icmp slt <16 x i8> %i.g, splat (i8 -102)
  %i.j = icmp slt <16 x i8> %i.h, splat (i8 -102)
  %i.k = select <16 x i1> %i.i, <16 x i8> splat (i8 32), <16 x i8> zeroinitializer
end_hunk_0
