Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/velox/original/ascii?download=true
inline.NumInlined: 143
inline.NumDeleted: 54
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

$_ZN4absl12lts_2024011627StripLeadingAsciiWhitespaceESt17basic_string_viewIcSt11char_traitsIcEE = comdat any

@_ZN4absl12lts_2024011614ascii_internal13kPropertyBitsE = local_unnamed_addr constant <{ [128 x i8], [128 x i8] }> <{ [128 x i8] c"@@@@@@@@@hHHHH@@@@@@@@@@@@@@@@@@(\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\84\84\84\84\84\84\84\84\84\84\10\10\10\10\10\10\10\85\85\85\85\85\85\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\10\10\10\10\10\10\85\85\85\85\85\85\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\10\10\10\10@", [128 x i8] zeroinitializer }>, align 16
@_ZN4absl12lts_2024011614ascii_internal8kToLowerE = local_unnamed_addr constant [256 x i8] c"\00\01\02\03\04\05\06\07\08\09\0A\0B\0C\0D\0E\0F\10\11\12\13\14\15\16\17\18\19\1A\1B\1C\1D\1E\1F !\22#$%&'()*+,-./0123456789:;<=>?@abcdefghijklmnopqrstuvwxyz[\\]^_`abcdefghijklmnopqrstuvwxyz{|}~\7F\80\81\82\83\84\85\86\87\88\89\8A\8B\8C\8D\8E\8F\90\91\92\93\94\95\96\97\98\99\9A\9B\9C\9D\9E\9F\A0\A1\A2\A3\A4\A5\A6\A7\A8\A9\AA\AB\AC\AD\AE\AF\B0\B1\B2\B3\B4\B5\B6\B7\B8\B9\BA\BB\BC\BD\BE\BF\C0\C1\C2\C3\C4\C5\C6\C7\C8\C9\CA\CB\CC\CD\CE\CF\D0\D1\D2\D3\D4\D5\D6\D7\D8\D9\DA\DB\DC\DD\DE\DF\E0\E1\E2\E3\E4\E5\E6\E7\E8\E9\EA\EB\EC\ED\EE\EF\F0\F1\F2\F3\F4\F5\F6\F7\F8\F9\FA\FB\FC\FD\FE\FF", align 16
@_ZN4absl12lts_2024011614ascii_internal8kToUpperE = local_unnamed_addr constant [256 x i8] c"\00\01\02\03\04\05\06\07\08\09\0A\0B\0C\0D\0E\0F\10\11\12\13\14\15\16\17\18\19\1A\1B\1C\1D\1E\1F !\22#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\\]^_`ABCDEFGHIJKLMNOPQRSTUVWXYZ{|}~\7F\80\81\82\83\84\85\86\87\88\89\8A\8B\8C\8D\8E\8F\90\91\92\93\94\95\96\97\98\99\9A\9B\9C\9D\9E\9F\A0\A1\A2\A3\A4\A5\A6\A7\A8\A9\AA\AB\AC\AD\AE\AF\B0\B1\B2\B3\B4\B5\B6\B7\B8\B9\BA\BB\BC\BD\BE\BF\C0\C1\C2\C3\C4\C5\C6\C7\C8\C9\CA\CB\CC\CD\CE\CF\D0\D1\D2\D3\D4\D5\D6\D7\D8\D9\DA\DB\DC\DD\DE\DF\E0\E1\E2\E3\E4\E5\E6\E7\E8\E9\EA\EB\EC\ED\EE\EF\F0\F1\F2\F3\F4\F5\F6\F7\F8\F9\FA\FB\FC\FD\FE\FF", align 16
@.str = private unnamed_addr constant [26 x i8] c"basic_string_view::substr\00", align 1
@.str.1 = private unnamed_addr constant [49 x i8] c"%s: __pos (which is %zu) > __size (which is %zu)\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"basic_string::erase\00", align 1
@.str.3 = private unnamed_addr constant [55 x i8] c"%s: __pos (which is %zu) > this->size() (which is %zu)\00", align 1

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @_ZN4absl12lts_2024011615AsciiStrToLowerEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !13     ; 8 uses
  %i.b = ptrtoaddr ptr %i.a to i64
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !14   ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.d ; 2 uses
  %i.f = icmp ugt i64 %i.d, 7
  br i1 %i.f, label %bb.b, label %_ZN4absl12lts_2024011614ascii_internalL23PartialAsciiStrCaseFoldILb0EEEPcS3_S3_.exit.i

bb.b:                                             ; preds = %bb.a
  %i.g = and i64 %i.d, -8                         ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.g
  %1 = ptrtoaddr ptr %i.a to i64                  ; 3 uses
  %i.i = add i64 %i.g, %1
  %i.j = add i64 %1, 8
  %i.k = tail call i64 @llvm.umax.i64(i64 %i.i, i64 %i.j)
  %i.l = xor i64 %1, -1
  %i.m = add i64 %i.k, %i.l                       ; 2 uses
  %i.n = lshr i64 %i.m, 3
  %i.o = add nuw nsw i64 %i.n, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.m, 24
  br i1 %min.iters.check, label %.preheader.i.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %bb.b
  %n.vec = and i64 %i.o, 4611686018427387900      ; 3 uses
  %i.p = shl i64 %n.vec, 3
  %i.q = getelementptr i8, ptr %i.a, i64 %i.p     ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.r = shl i64 %index, 3
  %next.gep = getelementptr i8, ptr %i.a, i64 %i.r ; 2 uses
  %wide.load = load <4 x i64>, ptr %next.gep, align 1 ; 3 uses
  %i.s = and <4 x i64> %wide.load, splat (i64 -9187201950435737472) ; 2 uses
  %i.t = shl <4 x i64> %i.s, splat (i64 1)
  %i.u = lshr exact <4 x i64> %i.s, splat (i64 7)
  %i.v = sub nsw <4 x i64> %i.t, %i.u             ; 2 uses
  %i.w = and <4 x i64> %i.v, %wide.load
  %i.x = xor <4 x i64> %i.v, splat (i64 -1)
  %i.y = and <4 x i64> %wide.load, %i.x           ; 3 uses
  %i.z = add <4 x i64> %i.y, splat (i64 4557430888798830399)
  %i.aa = add <4 x i64> %i.y, splat (i64 2676586395008836901)
  %i.ab = xor <4 x i64> %i.z, %i.aa
  %i.ac = lshr <4 x i64> %i.ab, splat (i64 2)
  %i.ad = and <4 x i64> %i.ac, splat (i64 2314885530818453536)
  %i.ae = xor <4 x i64> %i.ad, %i.y
  %i.af = or <4 x i64> %i.ae, %i.w
  store <4 x i64> %i.af, ptr %next.gep, align 1
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ag = icmp eq i64 %index.next, %n.vec
  br i1 %i.ag, label %middle.block, label %vector.body, !llvm.loop !20

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.o, %n.vec
  br i1 %cmp.n, label %_ZN4absl12lts_2024011614ascii_internalL23PartialAsciiStrCaseFoldILb0EEEPcS3_S3_.exit.i, label %.preheader.i.i.preheader

.preheader.i.i.preheader:                         ; preds = %bb.b, %middle.block
  %.03438.i.i.ph = phi ptr [ %i.a, %bb.b ], [ %i.q, %middle.block ]
  br label %.preheader.i.i

.preheader.i.i:                                   ; preds = %.preheader.i.i.preheader, %.preheader.i.i
  %.03438.i.i = phi ptr [ %i.aw, %.preheader.i.i ], [ %.03438.i.i.ph, %.preheader.i.i.preheader ] ; 3 uses
  %i.ah = load i64, ptr %.03438.i.i, align 1      ; 3 uses
  %i.ai = and i64 %i.ah, -9187201950435737472     ; 2 uses
  %i.aj = shl i64 %i.ai, 1
  %i.ak = lshr exact i64 %i.ai, 7
  %i.al = sub nsw i64 %i.aj, %i.ak                ; 2 uses
  %i.am = and i64 %i.al, %i.ah
  %i.an = xor i64 %i.al, -1
  %i.ao = and i64 %i.ah, %i.an                    ; 3 uses
  %i.ap = add i64 %i.ao, 4557430888798830399
  %i.aq = add i64 %i.ao, 2676586395008836901
  %i.ar = xor i64 %i.ap, %i.aq
  %i.as = lshr i64 %i.ar, 2
  %i.at = and i64 %i.as, 2314885530818453536
  %i.au = xor i64 %i.at, %i.ao
  %i.av = or i64 %i.au, %i.am
  store i64 %i.av, ptr %.03438.i.i, align 1
  %i.aw = getelementptr inbounds nuw i8, ptr %.03438.i.i, i64 8 ; 3 uses
  %i.ax = icmp ult ptr %i.aw, %i.h
  br i1 %i.ax, label %.preheader.i.i, label %_ZN4absl12lts_2024011614ascii_internalL23PartialAsciiStrCaseFoldILb0EEEPcS3_S3_.exit.i, !llvm.loop !21

_ZN4absl12lts_2024011614ascii_internalL23PartialAsciiStrCaseFoldILb0EEEPcS3_S3_.exit.i: ; preds = %.preheader.i.i, %middle.block, %bb.a
  %.0.i = phi ptr [ %i.a, %bb.a ], [ %i.q, %middle.block ], [ %i.aw, %.preheader.i.i ] ; 7 uses
  %i.ay = icmp ult ptr %.0.i, %i.e
  br i1 %i.ay, label %iter.check, label %_ZN4absl12lts_2024011614ascii_internalL16AsciiStrCaseFoldILb0EEEvPcS3_.exit

iter.check:                                       ; preds = %_ZN4absl12lts_2024011614ascii_internalL23PartialAsciiStrCaseFoldILb0EEEPcS3_S3_.exit.i
  %.0.i6 = ptrtoaddr ptr %.0.i to i64
  %i.az = add i64 %i.d, %i.b
  %i.ba = sub i64 %i.az, %.0.i6                   ; 7 uses
  %min.iters.check8 = icmp ult i64 %i.ba, 16
  br i1 %min.iters.check8, label %.lr.ph.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check9 = icmp ult i64 %i.ba, 128
  br i1 %min.iters.check9, label %vec.epilog.ph, label %vector.ph10

vector.ph10:                                      ; preds = %vector.main.loop.iter.check
  %i.bb = and i64 %i.ba, 112
  %n.vec11 = and i64 %i.ba, -128                  ; 4 uses
  %i.bc = getelementptr i8, ptr %.0.i, i64 %n.vec11
  br label %vector.body12

vector.body12:                                    ; preds = %vector.ph10, %vector.body12
  %index13 = phi i64 [ 0, %vector.ph10 ], [ %index.next19, %vector.body12 ] ; 2 uses
  %next.gep14 = getelementptr i8, ptr %.0.i, i64 %index13 ; 5 uses
  %i.bd = getelementptr i8, ptr %next.gep14, i64 32 ; 2 uses
  %i.be = getelementptr i8, ptr %next.gep14, i64 64 ; 2 uses
  %i.bf = getelementptr i8, ptr %next.gep14, i64 96 ; 2 uses
  %wide.load15 = load <32 x i8>, ptr %next.gep14, align 1, !tbaa !18 ; 2 uses
  %wide.load16 = load <32 x i8>, ptr %i.bd, align 1, !tbaa !18 ; 2 uses
  %wide.load17 = load <32 x i8>, ptr %i.be, align 1, !tbaa !18 ; 2 uses
  %wide.load18 = load <32 x i8>, ptr %i.bf, align 1, !tbaa !18 ; 2 uses
  %i.bg = add <32 x i8> %wide.load15, splat (i8 63)
  %i.bh = add <32 x i8> %wide.load16, splat (i8 63)
  %i.bi = add <32 x i8> %wide.load17, splat (i8 63)
  %i.bj = add <32 x i8> %wide.load18, splat (i8 63)
  %i.bk = icmp slt <32 x i8> %i.bg, splat (i8 -102)
  %i.bl = icmp slt <32 x i8> %i.bh, splat (i8 -102)
  %i.bm = icmp slt <32 x i8> %i.bi, splat (i8 -102)
  %i.bn = icmp slt <32 x i8> %i.bj, splat (i8 -102)
  %i.bo = select <32 x i1> %i.bk, <32 x i8> splat (i8 32), <32 x i8> zeroinitializer
  %i.bp = select <32 x i1> %i.bl, <32 x i8> splat (i8 32), <32 x i8> zeroinitializer
  %i.bq = select <32 x i1> %i.bm, <32 x i8> splat (i8 32), <32 x i8> zeroinitializer
  %i.br = select <32 x i1> %i.bn, <32 x i8> splat (i8 32), <32 x i8> zeroinitializer
  %i.bs = xor <32 x i8> %i.bo, %wide.load15
  %i.bt = xor <32 x i8> %i.bp, %wide.load16
  %i.bu = xor <32 x i8> %i.bq, %wide.load17
  %i.bv = xor <32 x i8> %i.br, %wide.load18
  store <32 x i8> %i.bs, ptr %next.gep14, align 1, !tbaa !18
  store <32 x i8> %i.bt, ptr %i.bd, align 1, !tbaa !18
  store <32 x i8> %i.bu, ptr %i.be, align 1, !tbaa !18
  store <32 x i8> %i.bv, ptr %i.bf, align 1, !tbaa !18
  %index.next19 = add nuw i64 %index13, 128       ; 2 uses
  %i.bw = icmp eq i64 %index.next19, %n.vec11
  br i1 %i.bw, label %middle.block20, label %vector.body12, !llvm.loop !22

middle.block20:                                   ; preds = %vector.body12
  %cmp.n21 = icmp eq i64 %i.ba, %n.vec11
  br i1 %cmp.n21, label %_ZN4absl12lts_2024011614ascii_internalL16AsciiStrCaseFoldILb0EEEvPcS3_.exit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block20
  %min.epilog.iters.check = icmp eq i64 %i.bb, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.preheader, label %vec.epilog.ph, !prof !19

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec11, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec23 = and i64 %i.ba, -16                   ; 3 uses
  %i.bx = getelementptr i8, ptr %.0.i, i64 %n.vec23
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index24 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next27, %vec.epilog.vector.body ] ; 2 uses
  %next.gep25 = getelementptr i8, ptr %.0.i, i64 %index24 ; 2 uses
  %wide.load26 = load <16 x i8>, ptr %next.gep25, align 1, !tbaa !18 ; 2 uses
  %i.by = add <16 x i8> %wide.load26, splat (i8 63)
  %i.bz = icmp slt <16 x i8> %i.by, splat (i8 -102)
  %i.ca = select <16 x i1> %i.bz, <16 x i8> splat (i8 32), <16 x i8> zeroinitializer
  %i.cb = xor <16 x i8> %i.ca, %wide.load26
  store <16 x i8> %i.cb, ptr %next.gep25, align 1, !tbaa !18
  %index.next27 = add nuw i64 %index24, 16        ; 2 uses
  %i.cc = icmp eq i64 %index.next27, %n.vec23
  br i1 %i.cc, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !23

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n28 = icmp eq i64 %i.ba, %n.vec23
  br i1 %cmp.n28, label %_ZN4absl12lts_2024011614ascii_internalL16AsciiStrCaseFoldILb0EEEvPcS3_.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.111.i.ph = phi ptr [ %.0.i, %iter.check ], [ %i.bc, %vec.epilog.iter.check ], [ %i.bx, %vec.epilog.middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %.111.i = phi ptr [ %i.ci, %.lr.ph.i ], [ %.111.i.ph, %.lr.ph.i.preheader ] ; 3 uses
  %i.cd = load i8, ptr %.111.i, align 1, !tbaa !18 ; 2 uses
  %i.ce = add i8 %i.cd, 63
  %i.cf = icmp slt i8 %i.ce, -102
  %i.cg = select i1 %i.cf, i8 32, i8 0
  %i.ch = xor i8 %i.cg, %i.cd
  store i8 %i.ch, ptr %.111.i, align 1, !tbaa !18
  %i.ci = getelementptr inbounds nuw i8, ptr %.111.i, i64 1 ; 2 uses
  %exitcond.not.i = icmp eq ptr %i.ci, %i.e
  br i1 %exitcond.not.i, label %_ZN4absl12lts_2024011614ascii_internalL16AsciiStrCaseFoldILb0EEEvPcS3_.exit, label %.lr.ph.i, !llvm.loop !24

_ZN4absl12lts_2024011614ascii_internalL16AsciiStrCaseFoldILb0EEEvPcS3_.exit: ; preds = %.lr.ph.i, %middle.block20, %vec.epilog.middle.block, %_ZN4absl12lts_2024011614ascii_internalL23PartialAsciiStrCaseFoldILb0EEEPcS3_S3_.exit.i
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @_ZN4absl12lts_2024011615AsciiStrToUpperEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !13     ; 8 uses
  %i.b = ptrtoaddr ptr %i.a to i64
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !14   ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.d ; 2 uses
  %i.f = icmp ugt i64 %i.d, 7
  br i1 %i.f, label %bb.b, label %_ZN4absl12lts_2024011614ascii_internalL23PartialAsciiStrCaseFoldILb1EEEPcS3_S3_.exit.i

bb.b:                                             ; preds = %bb.a
  %i.g = and i64 %i.d, -8                         ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.g
  %1 = ptrtoaddr ptr %i.a to i64                  ; 3 uses
  %i.i = add i64 %i.g, %1
  %i.j = add i64 %1, 8
  %i.k = tail call i64 @llvm.umax.i64(i64 %i.i, i64 %i.j)
  %i.l = xor i64 %1, -1
  %i.m = add i64 %i.k, %i.l                       ; 2 uses
  %i.n = lshr i64 %i.m, 3
  %i.o = add nuw nsw i64 %i.n, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.m, 24
  br i1 %min.iters.check, label %.preheader.i.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %bb.b
  %n.vec = and i64 %i.o, 4611686018427387900      ; 3 uses
  %i.p = shl i64 %n.vec, 3
  %i.q = getelementptr i8, ptr %i.a, i64 %i.p     ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.r = shl i64 %index, 3
  %next.gep = getelementptr i8, ptr %i.a, i64 %i.r ; 2 uses
  %wide.load = load <4 x i64>, ptr %next.gep, align 1 ; 3 uses
  %i.s = and <4 x i64> %wide.load, splat (i64 -9187201950435737472) ; 2 uses
  %i.t = shl <4 x i64> %i.s, splat (i64 1)
  %i.u = lshr exact <4 x i64> %i.s, splat (i64 7)
  %i.v = sub nsw <4 x i64> %i.t, %i.u             ; 2 uses
  %i.w = and <4 x i64> %i.v, %wide.load
  %i.x = xor <4 x i64> %i.v, splat (i64 -1)
  %i.y = and <4 x i64> %wide.load, %i.x           ; 3 uses
  %i.z = add <4 x i64> %i.y, splat (i64 2242545357980376863)
  %i.aa = add <4 x i64> %i.y, splat (i64 361700864190383365)
  %i.ab = xor <4 x i64> %i.z, %i.aa
  %i.ac = lshr <4 x i64> %i.ab, splat (i64 2)
  %i.ad = and <4 x i64> %i.ac, splat (i64 2314885530818453536)
  %i.ae = xor <4 x i64> %i.ad, %i.y
  %i.af = or <4 x i64> %i.ae, %i.w
  store <4 x i64> %i.af, ptr %next.gep, align 1
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ag = icmp eq i64 %index.next, %n.vec
  br i1 %i.ag, label %middle.block, label %vector.body, !llvm.loop !25

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.o, %n.vec
  br i1 %cmp.n, label %_ZN4absl12lts_2024011614ascii_internalL23PartialAsciiStrCaseFoldILb1EEEPcS3_S3_.exit.i, label %.preheader.i.i.preheader

.preheader.i.i.preheader:                         ; preds = %bb.b, %middle.block
  %.03438.i.i.ph = phi ptr [ %i.a, %bb.b ], [ %i.q, %middle.block ]
  br label %.preheader.i.i

.preheader.i.i:                                   ; preds = %.preheader.i.i.preheader, %.preheader.i.i
  %.03438.i.i = phi ptr [ %i.aw, %.preheader.i.i ], [ %.03438.i.i.ph, %.preheader.i.i.preheader ] ; 3 uses
  %i.ah = load i64, ptr %.03438.i.i, align 1      ; 3 uses
  %i.ai = and i64 %i.ah, -9187201950435737472     ; 2 uses
  %i.aj = shl i64 %i.ai, 1
  %i.ak = lshr exact i64 %i.ai, 7
  %i.al = sub nsw i64 %i.aj, %i.ak                ; 2 uses
  %i.am = and i64 %i.al, %i.ah
  %i.an = xor i64 %i.al, -1
  %i.ao = and i64 %i.ah, %i.an                    ; 3 uses
  %i.ap = add i64 %i.ao, 2242545357980376863
  %i.aq = add i64 %i.ao, 361700864190383365
  %i.ar = xor i64 %i.ap, %i.aq
  %i.as = lshr i64 %i.ar, 2
  %i.at = and i64 %i.as, 2314885530818453536
  %i.au = xor i64 %i.at, %i.ao
  %i.av = or i64 %i.au, %i.am
  store i64 %i.av, ptr %.03438.i.i, align 1
  %i.aw = getelementptr inbounds nuw i8, ptr %.03438.i.i, i64 8 ; 3 uses
  %i.ax = icmp ult ptr %i.aw, %i.h
  br i1 %i.ax, label %.preheader.i.i, label %_ZN4absl12lts_2024011614ascii_internalL23PartialAsciiStrCaseFoldILb1EEEPcS3_S3_.exit.i, !llvm.loop !26

_ZN4absl12lts_2024011614ascii_internalL23PartialAsciiStrCaseFoldILb1EEEPcS3_S3_.exit.i: ; preds = %.preheader.i.i, %middle.block, %bb.a
  %.0.i = phi ptr [ %i.a, %bb.a ], [ %i.q, %middle.block ], [ %i.aw, %.preheader.i.i ] ; 7 uses
  %i.ay = icmp ult ptr %.0.i, %i.e
  br i1 %i.ay, label %iter.check, label %_ZN4absl12lts_2024011614ascii_internalL16AsciiStrCaseFoldILb1EEEvPcS3_.exit

iter.check:                                       ; preds = %_ZN4absl12lts_2024011614ascii_internalL23PartialAsciiStrCaseFoldILb1EEEPcS3_S3_.exit.i
  %.0.i6 = ptrtoaddr ptr %.0.i to i64
  %i.az = add i64 %i.d, %i.b
  %i.ba = sub i64 %i.az, %.0.i6                   ; 7 uses
  %min.iters.check8 = icmp ult i64 %i.ba, 16
  br i1 %min.iters.check8, label %.lr.ph.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check9 = icmp ult i64 %i.ba, 128
  br i1 %min.iters.check9, label %vec.epilog.ph, label %vector.ph10

vector.ph10:                                      ; preds = %vector.main.loop.iter.check
  %i.bb = and i64 %i.ba, 112
  %n.vec11 = and i64 %i.ba, -128                  ; 4 uses
  %i.bc = getelementptr i8, ptr %.0.i, i64 %n.vec11
  br label %vector.body12

vector.body12:                                    ; preds = %vector.ph10, %vector.body12
  %index13 = phi i64 [ 0, %vector.ph10 ], [ %index.next19, %vector.body12 ] ; 2 uses
  %next.gep14 = getelementptr i8, ptr %.0.i, i64 %index13 ; 5 uses
  %i.bd = getelementptr i8, ptr %next.gep14, i64 32 ; 2 uses
  %i.be = getelementptr i8, ptr %next.gep14, i64 64 ; 2 uses
  %i.bf = getelementptr i8, ptr %next.gep14, i64 96 ; 2 uses
  %wide.load15 = load <32 x i8>, ptr %next.gep14, align 1, !tbaa !18 ; 2 uses
  %wide.load16 = load <32 x i8>, ptr %i.bd, align 1, !tbaa !18 ; 2 uses
  %wide.load17 = load <32 x i8>, ptr %i.be, align 1, !tbaa !18 ; 2 uses
  %wide.load18 = load <32 x i8>, ptr %i.bf, align 1, !tbaa !18 ; 2 uses
  %i.bg = add <32 x i8> %wide.load15, splat (i8 31)
  %i.bh = add <32 x i8> %wide.load16, splat (i8 31)
  %i.bi = add <32 x i8> %wide.load17, splat (i8 31)
  %i.bj = add <32 x i8> %wide.load18, splat (i8 31)
  %i.bk = icmp slt <32 x i8> %i.bg, splat (i8 -102)
  %i.bl = icmp slt <32 x i8> %i.bh, splat (i8 -102)
  %i.bm = icmp slt <32 x i8> %i.bi, splat (i8 -102)
  %i.bn = icmp slt <32 x i8> %i.bj, splat (i8 -102)
  %i.bo = select <32 x i1> %i.bk, <32 x i8> splat (i8 32), <32 x i8> zeroinitializer
  %i.bp = select <32 x i1> %i.bl, <32 x i8> splat (i8 32), <32 x i8> zeroinitializer
  %i.bq = select <32 x i1> %i.bm, <32 x i8> splat (i8 32), <32 x i8> zeroinitializer
  %i.br = select <32 x i1> %i.bn, <32 x i8> splat (i8 32), <32 x i8> zeroinitializer
  %i.bs = xor <32 x i8> %i.bo, %wide.load15
  %i.bt = xor <32 x i8> %i.bp, %wide.load16
  %i.bu = xor <32 x i8> %i.bq, %wide.load17
  %i.bv = xor <32 x i8> %i.br, %wide.load18
  store <32 x i8> %i.bs, ptr %next.gep14, align 1, !tbaa !18
  store <32 x i8> %i.bt, ptr %i.bd, align 1, !tbaa !18
  store <32 x i8> %i.bu, ptr %i.be, align 1, !tbaa !18
  store <32 x i8> %i.bv, ptr %i.bf, align 1, !tbaa !18
  %index.next19 = add nuw i64 %index13, 128       ; 2 uses
  %i.bw = icmp eq i64 %index.next19, %n.vec11
  br i1 %i.bw, label %middle.block20, label %vector.body12, !llvm.loop !27

middle.block20:                                   ; preds = %vector.body12
  %cmp.n21 = icmp eq i64 %i.ba, %n.vec11
  br i1 %cmp.n21, label %_ZN4absl12lts_2024011614ascii_internalL16AsciiStrCaseFoldILb1EEEvPcS3_.exit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block20
  %min.epilog.iters.check = icmp eq i64 %i.bb, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.preheader, label %vec.epilog.ph, !prof !19

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec11, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec23 = and i64 %i.ba, -16                   ; 3 uses
  %i.bx = getelementptr i8, ptr %.0.i, i64 %n.vec23
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index24 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next27, %vec.epilog.vector.body ] ; 2 uses
  %next.gep25 = getelementptr i8, ptr %.0.i, i64 %index24 ; 2 uses
  %wide.load26 = load <16 x i8>, ptr %next.gep25, align 1, !tbaa !18 ; 2 uses
  %i.by = add <16 x i8> %wide.load26, splat (i8 31)
  %i.bz = icmp slt <16 x i8> %i.by, splat (i8 -102)
  %i.ca = select <16 x i1> %i.bz, <16 x i8> splat (i8 32), <16 x i8> zeroinitializer
  %i.cb = xor <16 x i8> %i.ca, %wide.load26
  store <16 x i8> %i.cb, ptr %next.gep25, align 1, !tbaa !18
  %index.next27 = add nuw i64 %index24, 16        ; 2 uses
  %i.cc = icmp eq i64 %index.next27, %n.vec23
  br i1 %i.cc, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !28

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n28 = icmp eq i64 %i.ba, %n.vec23
  br i1 %cmp.n28, label %_ZN4absl12lts_2024011614ascii_internalL16AsciiStrCaseFoldILb1EEEvPcS3_.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.111.i.ph = phi ptr [ %.0.i, %iter.check ], [ %i.bc, %vec.epilog.iter.check ], [ %i.bx, %vec.epilog.middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %.111.i = phi ptr [ %i.ci, %.lr.ph.i ], [ %.111.i.ph, %.lr.ph.i.preheader ] ; 3 uses
  %i.cd = load i8, ptr %.111.i, align 1, !tbaa !18 ; 2 uses
  %i.ce = add i8 %i.cd, 31
  %i.cf = icmp slt i8 %i.ce, -102
  %i.cg = select i1 %i.cf, i8 32, i8 0
  %i.ch = xor i8 %i.cg, %i.cd
  store i8 %i.ch, ptr %.111.i, align 1, !tbaa !18
  %i.ci = getelementptr inbounds nuw i8, ptr %.111.i, i64 1 ; 2 uses
  %exitcond.not.i = icmp eq ptr %i.ci, %i.e
  br i1 %exitcond.not.i, label %_ZN4absl12lts_2024011614ascii_internalL16AsciiStrCaseFoldILb1EEEvPcS3_.exit, label %.lr.ph.i, !llvm.loop !29

_ZN4absl12lts_2024011614ascii_internalL16AsciiStrCaseFoldILb1EEEvPcS3_.exit: ; preds = %.lr.ph.i, %middle.block20, %vec.epilog.middle.block, %_ZN4absl12lts_2024011614ascii_internalL23PartialAsciiStrCaseFoldILb1EEEPcS3_S3_.exit.i
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN4absl12lts_2024011626RemoveExtraAsciiWhitespaceEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr nofree noundef captures(none) %0) local_unnamed_addr #1 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !13
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !14
  %i.d = tail call { i64, ptr } @_ZN4absl12lts_2024011627StripLeadingAsciiWhitespaceESt17basic_string_viewIcSt11char_traitsIcEE(i64 %i.c, ptr %i.a) ; 2 uses
  %i.e = extractvalue { i64, ptr } %i.d, 0        ; 4 uses
  %i.f = extractvalue { i64, ptr } %i.d, 1        ; 7 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.e ; 2 uses
  %i.h = ptrtoint ptr %i.f to i64                 ; 2 uses
  %i.i = ashr i64 %i.e, 2                         ; 2 uses
  %i.j = icmp sgt i64 %i.i, 0
  br i1 %i.j, label %.lr.ph.i.i.i.preheader.i.i, label %._crit_edge.i.i.i.i.i

.lr.ph.i.i.i.preheader.i.i:                       ; preds = %bb.a
  %i.k = and i64 %i.e, 3
  %scevgep.i.i = getelementptr i8, ptr %i.f, i64 %i.k
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.e, %.lr.ph.i.i.i.preheader.i.i
  %.sroa.03.3.i.i.i.i = phi ptr [ %i.ad, %bb.e ], [ %i.g, %.lr.ph.i.i.i.preheader.i.i ] ; 8 uses
  %.015.i.i.i.i.i = phi i64 [ %i.aj, %bb.e ], [ %i.i, %.lr.ph.i.i.i.preheader.i.i ] ; 2 uses
  %i.l = getelementptr inbounds i8, ptr %.sroa.03.3.i.i.i.i, i64 -1
  %i.m = load i8, ptr %i.l, align 1, !tbaa !18, !noalias !38
  %i.n = zext i8 %i.m to i64
  %i.o = getelementptr inbounds nuw i8, ptr @_ZN4absl12lts_2024011614ascii_internal13kPropertyBitsE, i64 %i.n
end_hunk_0
