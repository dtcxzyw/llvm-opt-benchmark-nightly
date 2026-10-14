Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/sentencepiece/original/ascii?download=true
inline.NumInlined: 132
inline.NumDeleted: 53
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 6
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

$_ZN4absl12lts_2026052620StripAsciiWhitespaceESt17basic_string_viewIcSt11char_traitsIcEE = comdat any

@_ZN4absl12lts_2026052614ascii_internal13kPropertyBitsE = dso_local local_unnamed_addr constant <{ [128 x i8], [128 x i8] }> <{ [128 x i8] c"@@@@@@@@@hHHHH@@@@@@@@@@@@@@@@@@(\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\84\84\84\84\84\84\84\84\84\84\10\10\10\10\10\10\10\85\85\85\85\85\85\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\10\10\10\10\10\10\85\85\85\85\85\85\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\10\10\10\10@", [128 x i8] zeroinitializer }>, align 16
@_ZN4absl12lts_2026052614ascii_internal8kToLowerE = dso_local local_unnamed_addr constant [256 x i8] c"\00\01\02\03\04\05\06\07\08\09\0A\0B\0C\0D\0E\0F\10\11\12\13\14\15\16\17\18\19\1A\1B\1C\1D\1E\1F !\22#$%&'()*+,-./0123456789:;<=>?@abcdefghijklmnopqrstuvwxyz[\\]^_`abcdefghijklmnopqrstuvwxyz{|}~\7F\80\81\82\83\84\85\86\87\88\89\8A\8B\8C\8D\8E\8F\90\91\92\93\94\95\96\97\98\99\9A\9B\9C\9D\9E\9F\A0\A1\A2\A3\A4\A5\A6\A7\A8\A9\AA\AB\AC\AD\AE\AF\B0\B1\B2\B3\B4\B5\B6\B7\B8\B9\BA\BB\BC\BD\BE\BF\C0\C1\C2\C3\C4\C5\C6\C7\C8\C9\CA\CB\CC\CD\CE\CF\D0\D1\D2\D3\D4\D5\D6\D7\D8\D9\DA\DB\DC\DD\DE\DF\E0\E1\E2\E3\E4\E5\E6\E7\E8\E9\EA\EB\EC\ED\EE\EF\F0\F1\F2\F3\F4\F5\F6\F7\F8\F9\FA\FB\FC\FD\FE\FF", align 16
@_ZN4absl12lts_2026052614ascii_internal8kToUpperE = dso_local local_unnamed_addr constant [256 x i8] c"\00\01\02\03\04\05\06\07\08\09\0A\0B\0C\0D\0E\0F\10\11\12\13\14\15\16\17\18\19\1A\1B\1C\1D\1E\1F !\22#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\\]^_`ABCDEFGHIJKLMNOPQRSTUVWXYZ{|}~\7F\80\81\82\83\84\85\86\87\88\89\8A\8B\8C\8D\8E\8F\90\91\92\93\94\95\96\97\98\99\9A\9B\9C\9D\9E\9F\A0\A1\A2\A3\A4\A5\A6\A7\A8\A9\AA\AB\AC\AD\AE\AF\B0\B1\B2\B3\B4\B5\B6\B7\B8\B9\BA\BB\BC\BD\BE\BF\C0\C1\C2\C3\C4\C5\C6\C7\C8\C9\CA\CB\CC\CD\CE\CF\D0\D1\D2\D3\D4\D5\D6\D7\D8\D9\DA\DB\DC\DD\DE\DF\E0\E1\E2\E3\E4\E5\E6\E7\E8\E9\EA\EB\EC\ED\EE\EF\F0\F1\F2\F3\F4\F5\F6\F7\F8\F9\FA\FB\FC\FD\FE\FF", align 16
@.str = private unnamed_addr constant [26 x i8] c"basic_string_view::substr\00", align 1
@.str.1 = private unnamed_addr constant [49 x i8] c"%s: __pos (which is %zu) > __size (which is %zu)\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"basic_string::erase\00", align 1
@.str.3 = private unnamed_addr constant [55 x i8] c"%s: __pos (which is %zu) > this->size() (which is %zu)\00", align 1

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local void @_ZN4absl12lts_2026052614ascii_internal15AsciiStrToLowerEPcPKcm(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp ult i64 %2, 16
  br i1 %i.a, label %bb.b, label %vector.memcheck

vector.memcheck:                                  ; preds = %bb.a
  %i.b = ptrtoaddr ptr %0 to i64
  %i.c = ptrtoaddr ptr %1 to i64
  %i.d = sub i64 %i.c, %i.b
  %diff.check = icmp ugt i64 %i.d, -32
  br i1 %diff.check, label %.lr.ph.i7.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check = icmp ult i64 %2, 32
  br i1 %min.iters.check, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.e = and i64 %2, 24
  %n.vec = and i64 %2, -32                        ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 %index ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %wide.load = load <16 x i8>, ptr %i.f, align 1, !tbaa !11 ; 2 uses
  %wide.load6 = load <16 x i8>, ptr %i.g, align 1, !tbaa !11 ; 2 uses
  %i.h = add <16 x i8> %wide.load, splat (i8 63)
  %i.i = add <16 x i8> %wide.load6, splat (i8 63)
  %i.j = icmp slt <16 x i8> %i.h, splat (i8 -102)
  %i.k = icmp slt <16 x i8> %i.i, splat (i8 -102)
  %i.l = select <16 x i1> %i.j, <16 x i8> splat (i8 32), <16 x i8> zeroinitializer
  %i.m = select <16 x i1> %i.k, <16 x i8> splat (i8 32), <16 x i8> zeroinitializer
  %i.n = xor <16 x i8> %i.l, %wide.load
  %i.o = xor <16 x i8> %i.m, %wide.load6
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 %index ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  store <16 x i8> %i.n, ptr %i.p, align 1, !tbaa !11
  store <16 x i8> %i.o, ptr %i.q, align 1, !tbaa !11
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.r = icmp eq i64 %index.next, %n.vec
  br i1 %i.r, label %middle.block, label %vector.body, !llvm.loop !23

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %2, %n.vec
  br i1 %cmp.n, label %_ZN4absl12lts_2026052614ascii_internal16AsciiStrCaseFoldILb0EEEvPcPKcm.exit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.e, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i7.i.preheader, label %vec.epilog.ph, !prof !15

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec7 = and i64 %2, -8                        ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index8 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next10, %vec.epilog.vector.body ] ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 %index8
  %wide.load9 = load <8 x i8>, ptr %i.s, align 1, !tbaa !11 ; 2 uses
  %i.t = add <8 x i8> %wide.load9, splat (i8 63)
  %i.u = icmp slt <8 x i8> %i.t, splat (i8 -102)
  %i.v = select <8 x i1> %i.u, <8 x i8> splat (i8 32), <8 x i8> zeroinitializer
  %i.w = xor <8 x i8> %i.v, %wide.load9
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 %index8
  store <8 x i8> %i.w, ptr %i.x, align 1, !tbaa !11
  %index.next10 = add nuw i64 %index8, 8          ; 2 uses
  %i.y = icmp eq i64 %index.next10, %n.vec7
  br i1 %i.y, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !24

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n11 = icmp eq i64 %2, %n.vec7
  br i1 %cmp.n11, label %_ZN4absl12lts_2026052614ascii_internal16AsciiStrCaseFoldILb0EEEvPcPKcm.exit, label %.lr.ph.i7.i.preheader

.lr.ph.i7.i.preheader:                            ; preds = %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.09.i8.i.ph = phi i64 [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec7, %vec.epilog.middle.block ] ; 5 uses
  %.neg = or disjoint i64 %.09.i8.i.ph, 1
  %xtraiter = and i64 %2, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i7.i.prol.loopexit, label %.lr.ph.i7.i.prol

.lr.ph.i7.i.prol:                                 ; preds = %.lr.ph.i7.i.preheader
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 %.09.i8.i.ph
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !11   ; 2 uses
  %i.ab = add i8 %i.aa, 63
  %i.ac = icmp slt i8 %i.ab, -102
  %i.ad = select i1 %i.ac, i8 32, i8 0
  %i.ae = xor i8 %i.ad, %i.aa
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 %.09.i8.i.ph
  store i8 %i.ae, ptr %i.af, align 1, !tbaa !11
  %i.ag = or disjoint i64 %.09.i8.i.ph, 1
  br label %.lr.ph.i7.i.prol.loopexit

.lr.ph.i7.i.prol.loopexit:                        ; preds = %.lr.ph.i7.i.prol, %.lr.ph.i7.i.preheader
  %.09.i8.i.unr = phi i64 [ %.09.i8.i.ph, %.lr.ph.i7.i.preheader ], [ %i.ag, %.lr.ph.i7.i.prol ]
  %i.ah = icmp eq i64 %2, %.neg
  br i1 %i.ah, label %_ZN4absl12lts_2026052614ascii_internal16AsciiStrCaseFoldILb0EEEvPcPKcm.exit, label %.lr.ph.i7.i

bb.b:                                             ; preds = %bb.a
  %.not.i.i = icmp eq i64 %2, 0
  br i1 %.not.i.i, label %_ZN4absl12lts_2026052614ascii_internal16AsciiStrCaseFoldILb0EEEvPcPKcm.exit, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.b
  %xtraiter13 = and i64 %2, 1
  %i.ai = icmp eq i64 %2, 1
  br i1 %i.ai, label %.lr.ph.i.i.epil.preheader, label %.lr.ph.i.i.preheader.new

.lr.ph.i.i.preheader.new:                         ; preds = %.lr.ph.i.i.preheader
  %unroll_iter = and i64 %2, 14
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.i.i.preheader.new
  %.09.i.i = phi i64 [ 0, %.lr.ph.i.i.preheader.new ], [ %i.ay, %.lr.ph.i.i ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph.i.i.preheader.new ], [ %niter.next.1, %.lr.ph.i.i ]
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 %.09.i.i
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !11  ; 2 uses
  %i.al = add i8 %i.ak, -65
  %i.am = icmp ult i8 %i.al, 26
  %i.an = select i1 %i.am, i8 32, i8 0
  %i.ao = xor i8 %i.an, %i.ak
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 %.09.i.i
  store i8 %i.ao, ptr %i.ap, align 1, !tbaa !11
  %i.aq = or disjoint i64 %.09.i.i, 1             ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 %i.aq
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !11  ; 2 uses
  %i.at = add i8 %i.as, -65
  %i.au = icmp ult i8 %i.at, 26
  %i.av = select i1 %i.au, i8 32, i8 0
  %i.aw = xor i8 %i.av, %i.as
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 %i.aq
  store i8 %i.aw, ptr %i.ax, align 1, !tbaa !11
  %i.ay = add nuw nsw i64 %.09.i.i, 2             ; 2 uses
  %niter.next.1 = add nuw nsw i64 %niter, 2       ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZN4absl12lts_2026052614ascii_internal16AsciiStrCaseFoldILb0EEEvPcPKcm.exit.loopexit.unr-lcssa, label %.lr.ph.i.i, !llvm.loop !0

.lr.ph.i7.i:                                      ; preds = %.lr.ph.i7.i.prol.loopexit, %.lr.ph.i7.i
  %.09.i8.i = phi i64 [ %i.bo, %.lr.ph.i7.i ], [ %.09.i8.i.unr, %.lr.ph.i7.i.prol.loopexit ] ; 4 uses
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 %.09.i8.i
  %i.ba = load i8, ptr %i.az, align 1, !tbaa !11  ; 2 uses
  %i.bb = add i8 %i.ba, 63
  %i.bc = icmp slt i8 %i.bb, -102
  %i.bd = select i1 %i.bc, i8 32, i8 0
  %i.be = xor i8 %i.bd, %i.ba
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 %.09.i8.i
  store i8 %i.be, ptr %i.bf, align 1, !tbaa !11
  %i.bg = add nuw i64 %.09.i8.i, 1                ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 %i.bg
  %i.bi = load i8, ptr %i.bh, align 1, !tbaa !11  ; 2 uses
  %i.bj = add i8 %i.bi, 63
  %i.bk = icmp slt i8 %i.bj, -102
  %i.bl = select i1 %i.bk, i8 32, i8 0
  %i.bm = xor i8 %i.bl, %i.bi
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 %i.bg
  store i8 %i.bm, ptr %i.bn, align 1, !tbaa !11
  %i.bo = add nuw i64 %.09.i8.i, 2                ; 2 uses
  %exitcond.not.i9.i.1 = icmp eq i64 %i.bo, %2
  br i1 %exitcond.not.i9.i.1, label %_ZN4absl12lts_2026052614ascii_internal16AsciiStrCaseFoldILb0EEEvPcPKcm.exit, label %.lr.ph.i7.i, !llvm.loop !25

_ZN4absl12lts_2026052614ascii_internal16AsciiStrCaseFoldILb0EEEvPcPKcm.exit.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i
  %lcmp.mod14.not = icmp eq i64 %xtraiter13, 0
  br i1 %lcmp.mod14.not, label %_ZN4absl12lts_2026052614ascii_internal16AsciiStrCaseFoldILb0EEEvPcPKcm.exit, label %.lr.ph.i.i.epil.preheader

.lr.ph.i.i.epil.preheader:                        ; preds = %_ZN4absl12lts_2026052614ascii_internal16AsciiStrCaseFoldILb0EEEvPcPKcm.exit.loopexit.unr-lcssa, %.lr.ph.i.i.preheader
  %.09.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.i.preheader ], [ %i.ay, %_ZN4absl12lts_2026052614ascii_internal16AsciiStrCaseFoldILb0EEEvPcPKcm.exit.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod15 = trunc i64 %2 to i1
  tail call void @llvm.assume(i1 %lcmp.mod15)
  %i.bp = getelementptr inbounds nuw i8, ptr %1, i64 %.09.i.i.epil.init
  %i.bq = load i8, ptr %i.bp, align 1, !tbaa !11  ; 2 uses
  %i.br = add i8 %i.bq, -65
  %i.bs = icmp ult i8 %i.br, 26
  %i.bt = select i1 %i.bs, i8 32, i8 0
  %i.bu = xor i8 %i.bt, %i.bq
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 %.09.i.i.epil.init
  store i8 %i.bu, ptr %i.bv, align 1, !tbaa !11
  br label %_ZN4absl12lts_2026052614ascii_internal16AsciiStrCaseFoldILb0EEEvPcPKcm.exit

_ZN4absl12lts_2026052614ascii_internal16AsciiStrCaseFoldILb0EEEvPcPKcm.exit: ; preds = %.lr.ph.i7.i.prol.loopexit, %.lr.ph.i7.i, %.lr.ph.i.i.epil.preheader, %_ZN4absl12lts_2026052614ascii_internal16AsciiStrCaseFoldILb0EEEvPcPKcm.exit.loopexit.unr-lcssa, %middle.block, %vec.epilog.middle.block, %bb.b
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local void @_ZN4absl12lts_2026052614ascii_internal15AsciiStrToUpperEPcPKcm(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp ult i64 %2, 16
  br i1 %i.a, label %bb.b, label %vector.memcheck

vector.memcheck:                                  ; preds = %bb.a
  %i.b = ptrtoaddr ptr %0 to i64
  %i.c = ptrtoaddr ptr %1 to i64
  %i.d = sub i64 %i.c, %i.b
  %diff.check = icmp ugt i64 %i.d, -32
  br i1 %diff.check, label %.lr.ph.i7.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check = icmp ult i64 %2, 32
  br i1 %min.iters.check, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.e = and i64 %2, 24
  %n.vec = and i64 %2, -32                        ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 %index ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %wide.load = load <16 x i8>, ptr %i.f, align 1, !tbaa !11 ; 2 uses
  %wide.load6 = load <16 x i8>, ptr %i.g, align 1, !tbaa !11 ; 2 uses
  %i.h = add <16 x i8> %wide.load, splat (i8 31)
  %i.i = add <16 x i8> %wide.load6, splat (i8 31)
  %i.j = icmp slt <16 x i8> %i.h, splat (i8 -102)
  %i.k = icmp slt <16 x i8> %i.i, splat (i8 -102)
  %i.l = select <16 x i1> %i.j, <16 x i8> splat (i8 32), <16 x i8> zeroinitializer
  %i.m = select <16 x i1> %i.k, <16 x i8> splat (i8 32), <16 x i8> zeroinitializer
  %i.n = xor <16 x i8> %i.l, %wide.load
  %i.o = xor <16 x i8> %i.m, %wide.load6
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 %index ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  store <16 x i8> %i.n, ptr %i.p, align 1, !tbaa !11
  store <16 x i8> %i.o, ptr %i.q, align 1, !tbaa !11
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.r = icmp eq i64 %index.next, %n.vec
  br i1 %i.r, label %middle.block, label %vector.body, !llvm.loop !26

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %2, %n.vec
  br i1 %cmp.n, label %_ZN4absl12lts_2026052614ascii_internal16AsciiStrCaseFoldILb1EEEvPcPKcm.exit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.e, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i7.i.preheader, label %vec.epilog.ph, !prof !15

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec7 = and i64 %2, -8                        ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index8 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next10, %vec.epilog.vector.body ] ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 %index8
  %wide.load9 = load <8 x i8>, ptr %i.s, align 1, !tbaa !11 ; 2 uses
  %i.t = add <8 x i8> %wide.load9, splat (i8 31)
  %i.u = icmp slt <8 x i8> %i.t, splat (i8 -102)
  %i.v = select <8 x i1> %i.u, <8 x i8> splat (i8 32), <8 x i8> zeroinitializer
  %i.w = xor <8 x i8> %i.v, %wide.load9
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 %index8
  store <8 x i8> %i.w, ptr %i.x, align 1, !tbaa !11
  %index.next10 = add nuw i64 %index8, 8          ; 2 uses
  %i.y = icmp eq i64 %index.next10, %n.vec7
  br i1 %i.y, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !27

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n11 = icmp eq i64 %2, %n.vec7
  br i1 %cmp.n11, label %_ZN4absl12lts_2026052614ascii_internal16AsciiStrCaseFoldILb1EEEvPcPKcm.exit, label %.lr.ph.i7.i.preheader

.lr.ph.i7.i.preheader:                            ; preds = %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.09.i8.i.ph = phi i64 [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec7, %vec.epilog.middle.block ] ; 5 uses
  %.neg = or disjoint i64 %.09.i8.i.ph, 1
  %xtraiter = and i64 %2, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i7.i.prol.loopexit, label %.lr.ph.i7.i.prol

.lr.ph.i7.i.prol:                                 ; preds = %.lr.ph.i7.i.preheader
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 %.09.i8.i.ph
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !11   ; 2 uses
  %i.ab = add i8 %i.aa, 31
  %i.ac = icmp slt i8 %i.ab, -102
  %i.ad = select i1 %i.ac, i8 32, i8 0
  %i.ae = xor i8 %i.ad, %i.aa
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 %.09.i8.i.ph
  store i8 %i.ae, ptr %i.af, align 1, !tbaa !11
  %i.ag = or disjoint i64 %.09.i8.i.ph, 1
  br label %.lr.ph.i7.i.prol.loopexit

.lr.ph.i7.i.prol.loopexit:                        ; preds = %.lr.ph.i7.i.prol, %.lr.ph.i7.i.preheader
  %.09.i8.i.unr = phi i64 [ %.09.i8.i.ph, %.lr.ph.i7.i.preheader ], [ %i.ag, %.lr.ph.i7.i.prol ]
  %i.ah = icmp eq i64 %2, %.neg
  br i1 %i.ah, label %_ZN4absl12lts_2026052614ascii_internal16AsciiStrCaseFoldILb1EEEvPcPKcm.exit, label %.lr.ph.i7.i

bb.b:                                             ; preds = %bb.a
  %.not.i.i = icmp eq i64 %2, 0
  br i1 %.not.i.i, label %_ZN4absl12lts_2026052614ascii_internal16AsciiStrCaseFoldILb1EEEvPcPKcm.exit, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.b
  %xtraiter13 = and i64 %2, 1
  %i.ai = icmp eq i64 %2, 1
  br i1 %i.ai, label %.lr.ph.i.i.epil.preheader, label %.lr.ph.i.i.preheader.new

.lr.ph.i.i.preheader.new:                         ; preds = %.lr.ph.i.i.preheader
  %unroll_iter = and i64 %2, 14
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.i.i.preheader.new
  %.09.i.i = phi i64 [ 0, %.lr.ph.i.i.preheader.new ], [ %i.ay, %.lr.ph.i.i ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph.i.i.preheader.new ], [ %niter.next.1, %.lr.ph.i.i ]
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 %.09.i.i
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !11  ; 2 uses
  %i.al = add i8 %i.ak, -97
  %i.am = icmp ult i8 %i.al, 26
  %i.an = select i1 %i.am, i8 32, i8 0
  %i.ao = xor i8 %i.an, %i.ak
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 %.09.i.i
  store i8 %i.ao, ptr %i.ap, align 1, !tbaa !11
  %i.aq = or disjoint i64 %.09.i.i, 1             ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 %i.aq
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !11  ; 2 uses
  %i.at = add i8 %i.as, -97
  %i.au = icmp ult i8 %i.at, 26
  %i.av = select i1 %i.au, i8 32, i8 0
  %i.aw = xor i8 %i.av, %i.as
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 %i.aq
  store i8 %i.aw, ptr %i.ax, align 1, !tbaa !11
  %i.ay = add nuw nsw i64 %.09.i.i, 2             ; 2 uses
  %niter.next.1 = add nuw nsw i64 %niter, 2       ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZN4absl12lts_2026052614ascii_internal16AsciiStrCaseFoldILb1EEEvPcPKcm.exit.loopexit.unr-lcssa, label %.lr.ph.i.i, !llvm.loop !1

.lr.ph.i7.i:                                      ; preds = %.lr.ph.i7.i.prol.loopexit, %.lr.ph.i7.i
  %.09.i8.i = phi i64 [ %i.bo, %.lr.ph.i7.i ], [ %.09.i8.i.unr, %.lr.ph.i7.i.prol.loopexit ] ; 4 uses
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 %.09.i8.i
  %i.ba = load i8, ptr %i.az, align 1, !tbaa !11  ; 2 uses
  %i.bb = add i8 %i.ba, 31
  %i.bc = icmp slt i8 %i.bb, -102
  %i.bd = select i1 %i.bc, i8 32, i8 0
  %i.be = xor i8 %i.bd, %i.ba
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 %.09.i8.i
  store i8 %i.be, ptr %i.bf, align 1, !tbaa !11
  %i.bg = add nuw i64 %.09.i8.i, 1                ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 %i.bg
  %i.bi = load i8, ptr %i.bh, align 1, !tbaa !11  ; 2 uses
  %i.bj = add i8 %i.bi, 31
  %i.bk = icmp slt i8 %i.bj, -102
  %i.bl = select i1 %i.bk, i8 32, i8 0
  %i.bm = xor i8 %i.bl, %i.bi
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 %i.bg
  store i8 %i.bm, ptr %i.bn, align 1, !tbaa !11
  %i.bo = add nuw i64 %.09.i8.i, 2                ; 2 uses
  %exitcond.not.i9.i.1 = icmp eq i64 %i.bo, %2
  br i1 %exitcond.not.i9.i.1, label %_ZN4absl12lts_2026052614ascii_internal16AsciiStrCaseFoldILb1EEEvPcPKcm.exit, label %.lr.ph.i7.i, !llvm.loop !28

_ZN4absl12lts_2026052614ascii_internal16AsciiStrCaseFoldILb1EEEvPcPKcm.exit.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i
  %lcmp.mod14.not = icmp eq i64 %xtraiter13, 0
  br i1 %lcmp.mod14.not, label %_ZN4absl12lts_2026052614ascii_internal16AsciiStrCaseFoldILb1EEEvPcPKcm.exit, label %.lr.ph.i.i.epil.preheader

.lr.ph.i.i.epil.preheader:                        ; preds = %_ZN4absl12lts_2026052614ascii_internal16AsciiStrCaseFoldILb1EEEvPcPKcm.exit.loopexit.unr-lcssa, %.lr.ph.i.i.preheader
  %.09.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.i.preheader ], [ %i.ay, %_ZN4absl12lts_2026052614ascii_internal16AsciiStrCaseFoldILb1EEEvPcPKcm.exit.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod15 = trunc i64 %2 to i1
  tail call void @llvm.assume(i1 %lcmp.mod15)
  %i.bp = getelementptr inbounds nuw i8, ptr %1, i64 %.09.i.i.epil.init
  %i.bq = load i8, ptr %i.bp, align 1, !tbaa !11  ; 2 uses
  %i.br = add i8 %i.bq, -97
  %i.bs = icmp ult i8 %i.br, 26
  %i.bt = select i1 %i.bs, i8 32, i8 0
  %i.bu = xor i8 %i.bt, %i.bq
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 %.09.i.i.epil.init
  store i8 %i.bu, ptr %i.bv, align 1, !tbaa !11
  br label %_ZN4absl12lts_2026052614ascii_internal16AsciiStrCaseFoldILb1EEEvPcPKcm.exit

_ZN4absl12lts_2026052614ascii_internal16AsciiStrCaseFoldILb1EEEvPcPKcm.exit: ; preds = %.lr.ph.i7.i.prol.loopexit, %.lr.ph.i7.i, %.lr.ph.i.i.epil.preheader, %_ZN4absl12lts_2026052614ascii_internal16AsciiStrCaseFoldILb1EEEvPcPKcm.exit.loopexit.unr-lcssa, %middle.block, %vec.epilog.middle.block, %bb.b
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @_ZN4absl12lts_2026052615AsciiStrToLowerEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #1 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !21     ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.b, align 8, !tbaa !22   ; 13 uses
  %i.d = icmp ult i64 %i.c, 16
  br i1 %i.d, label %bb.b, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %bb.a
  %min.iters.check = icmp ult i64 %i.c, 32
  br i1 %min.iters.check, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.e = and i64 %i.c, 24
  %n.vec = and i64 %i.c, -32                      ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 %index ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 2 uses
  %wide.load = load <16 x i8>, ptr %i.f, align 1, !tbaa !11 ; 2 uses
  %wide.load8 = load <16 x i8>, ptr %i.g, align 1, !tbaa !11 ; 2 uses
  %i.h = add <16 x i8> %wide.load, splat (i8 63)
  %i.i = add <16 x i8> %wide.load8, splat (i8 63)
  %i.j = icmp slt <16 x i8> %i.h, splat (i8 -102)
  %i.k = icmp slt <16 x i8> %i.i, splat (i8 -102)
end_hunk_0
