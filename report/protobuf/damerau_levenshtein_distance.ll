inline.NumInlined: 55
inline.NumDeleted: 16
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"struct.std::array" = type { [102 x %"struct.std::array.0"] }
%"struct.std::array.0" = type { [102 x i8] }

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define noundef zeroext i8 @_ZN4absl12lts_2025051216strings_internal32CappedDamerauLevenshteinDistanceESt17basic_string_viewIcSt11char_traitsIcEES5_h(i64 %0, ptr nofree readonly captures(none) %1, i64 %2, ptr nofree readonly captures(none) %3, i8 noundef zeroext %4) local_unnamed_addr #0 {
bb.a:
  %5 = alloca %"struct.std::array", align 16      ; 22 uses
  %.sroa.speculated = tail call i8 @llvm.umin.i8(i8 %4, i8 100) ; 3 uses
  %i.a = add nuw nsw i8 %.sroa.speculated, 1      ; 14 uses
  %i.b = icmp ugt i64 %0, %2
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.sroa.11.0 = phi ptr [ %1, %bb.b ], [ %3, %bb.a ] ; 3 uses
  %.sroa.0.0 = phi i64 [ %0, %bb.b ], [ %2, %bb.a ] ; 7 uses
  %.sroa.080.0 = phi i64 [ %2, %bb.b ], [ %0, %bb.a ] ; 5 uses
  %.sroa.9.0 = phi ptr [ %3, %bb.b ], [ %1, %bb.a ] ; 2 uses
  %i.c = zext nneg i8 %.sroa.speculated to i64    ; 4 uses
  %i.d = add i64 %.sroa.080.0, %i.c
  %i.e = icmp ult i64 %i.d, %.sroa.0.0
  %i.f = icmp ugt i64 %.sroa.0.0, 100
  %or.cond89 = or i1 %i.f, %i.e
  br i1 %or.cond89, label %bb.p, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = icmp eq i64 %.sroa.080.0, 0
  br i1 %i.g, label %bb.e, label %iter.check

bb.e:                                             ; preds = %bb.d
  %i.h = trunc nuw nsw i64 %.sroa.0.0 to i8
  br label %bb.p

iter.check:                                       ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #3
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 %i.c
  %i.j = add nuw nsw i64 %i.c, 1                  ; 5 uses
  %min.iters.check = icmp ult i8 %4, 3
  br i1 %min.iters.check, label %.lr.ph.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check127 = icmp ult i8 %4, 31
  br i1 %min.iters.check127, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %i.j, 28
  %n.vec = and i64 %i.j, 224                      ; 6 uses
  %i.k = trunc nuw i64 %n.vec to i8               ; 2 uses
  %i.l = getelementptr i8, ptr %5, i64 %n.vec
  %i.m = getelementptr inbounds nuw i8, ptr %5, i64 16
  store <16 x i8> <i8 0, i8 1, i8 2, i8 3, i8 4, i8 5, i8 6, i8 7, i8 8, i8 9, i8 10, i8 11, i8 12, i8 13, i8 14, i8 15>, ptr %5, align 16, !tbaa !7
  store <16 x i8> <i8 16, i8 17, i8 18, i8 19, i8 20, i8 21, i8 22, i8 23, i8 24, i8 25, i8 26, i8 27, i8 28, i8 29, i8 30, i8 31>, ptr %i.m, align 16, !tbaa !7
  %i.n = icmp eq i64 %n.vec, 32
  br i1 %i.n, label %middle.block, label %vector.body.1

vector.body.1:                                    ; preds = %vector.ph
  %next.gep.1 = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.o = getelementptr inbounds nuw i8, ptr %5, i64 48
  store <16 x i8> <i8 32, i8 33, i8 34, i8 35, i8 36, i8 37, i8 38, i8 39, i8 40, i8 41, i8 42, i8 43, i8 44, i8 45, i8 46, i8 47>, ptr %next.gep.1, align 16, !tbaa !7
  store <16 x i8> <i8 48, i8 49, i8 50, i8 51, i8 52, i8 53, i8 54, i8 55, i8 56, i8 57, i8 58, i8 59, i8 60, i8 61, i8 62, i8 63>, ptr %i.o, align 16, !tbaa !7
  %i.p = icmp eq i64 %n.vec, 64
  br i1 %i.p, label %middle.block, label %vector.body.2

vector.body.2:                                    ; preds = %vector.body.1
  %next.gep.2 = getelementptr inbounds nuw i8, ptr %5, i64 64
  %i.q = getelementptr inbounds nuw i8, ptr %5, i64 80
  store <16 x i8> <i8 64, i8 65, i8 66, i8 67, i8 68, i8 69, i8 70, i8 71, i8 72, i8 73, i8 74, i8 75, i8 76, i8 77, i8 78, i8 79>, ptr %next.gep.2, align 16, !tbaa !7
  store <16 x i8> <i8 80, i8 81, i8 82, i8 83, i8 84, i8 85, i8 86, i8 87, i8 88, i8 89, i8 90, i8 91, i8 92, i8 93, i8 94, i8 95>, ptr %i.q, align 16, !tbaa !7
  br label %middle.block

middle.block:                                     ; preds = %vector.body.2, %vector.body.1, %vector.ph
  %cmp.n = icmp eq i64 %i.j, %n.vec
  br i1 %cmp.n, label %_ZSt4iotaIPhiEvT_S1_T0_.exit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.preheader, label %vec.epilog.ph, !prof !8

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.resume.val = phi i8 [ %i.k, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec130 = and i64 %i.j, 252                   ; 4 uses
  %i.r = trunc nuw i64 %n.vec130 to i8
  %i.s = getelementptr i8, ptr %5, i64 %n.vec130
  %broadcast.splatinsert = insertelement <4 x i8> poison, i8 %bc.resume.val, i64 0
  %broadcast.splat = shufflevector <4 x i8> %broadcast.splatinsert, <4 x i8> poison, <4 x i32> zeroinitializer
  %induction = add nuw nsw <4 x i8> %broadcast.splat, <i8 0, i8 1, i8 2, i8 3>
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index131 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next134, %vec.epilog.vector.body ] ; 2 uses
  %vec.ind132 = phi <4 x i8> [ %induction, %vec.epilog.ph ], [ %vec.ind.next135, %vec.epilog.vector.body ] ; 2 uses
  %next.gep133 = getelementptr i8, ptr %5, i64 %index131
  store <4 x i8> %vec.ind132, ptr %next.gep133, align 4, !tbaa !7
  %index.next134 = add nuw i64 %index131, 4       ; 2 uses
  %vec.ind.next135 = add nuw nsw <4 x i8> %vec.ind132, splat (i8 4)
  %i.t = icmp eq i64 %index.next134, %n.vec130
  br i1 %i.t, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !9

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n136 = icmp eq i64 %i.j, %n.vec130
  br i1 %cmp.n136, label %_ZSt4iotaIPhiEvT_S1_T0_.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.08.i.ph = phi i8 [ 0, %iter.check ], [ %i.k, %vec.epilog.iter.check ], [ %i.r, %vec.epilog.middle.block ]
  %.057.i.ph = phi ptr [ %5, %iter.check ], [ %i.l, %vec.epilog.iter.check ], [ %i.s, %vec.epilog.middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %.08.i = phi i8 [ %i.u, %.lr.ph.i ], [ %.08.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  %.057.i = phi ptr [ %i.v, %.lr.ph.i ], [ %.057.i.ph, %.lr.ph.i.preheader ] ; 3 uses
  store i8 %.08.i, ptr %.057.i, align 1, !tbaa !7
  %i.u = add nuw nsw i8 %.08.i, 1
  %i.v = getelementptr inbounds nuw i8, ptr %.057.i, i64 1
  %.not.i = icmp eq ptr %.057.i, %i.i
  br i1 %.not.i, label %_ZSt4iotaIPhiEvT_S1_T0_.exit, label %.lr.ph.i, !llvm.loop !13

_ZSt4iotaIPhiEvT_S1_T0_.exit:                     ; preds = %.lr.ph.i, %vec.epilog.middle.block, %middle.block
  %.neg = sub i64 %.sroa.080.0, %.sroa.0.0
  %.neg63 = trunc i64 %.neg to i8
  %i.w = add i8 %.sroa.speculated, %.neg63
  %i.x = zext nneg i8 %i.a to i64
  %i.y = getelementptr inbounds nuw i8, ptr %5, i64 %i.x
  store i8 %i.a, ptr %i.y, align 1, !tbaa !7
  %i.z = zext i8 %i.w to i64                      ; 2 uses
  br label %bb.g

bb.f:                                             ; preds = %._crit_edge
  %i.aa = getelementptr inbounds nuw [102 x i8], ptr %5, i64 %.sroa.080.0
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 %.sroa.0.0
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !7
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #3
  br label %bb.p

bb.g:                                             ; preds = %_ZSt4iotaIPhiEvT_S1_T0_.exit, %._crit_edge
  %indvar = phi i64 [ 0, %_ZSt4iotaIPhiEvT_S1_T0_.exit ], [ %indvar.next, %._crit_edge ] ; 3 uses
  %.05794 = phi i64 [ 1, %_ZSt4iotaIPhiEvT_S1_T0_.exit ], [ %i.bu, %._crit_edge ] ; 12 uses
  %i.ad = mul nuw nsw i64 %indvar, 102
  %i.ae = getelementptr i8, ptr %5, i64 %i.ad
  %scevgep140.a = getelementptr i8, ptr %i.ae, i64 101
  %i.af = mul nuw nsw i64 %indvar, 102
  %i.ag = getelementptr i8, ptr %5, i64 %i.af
  %scevgep = getelementptr i8, ptr %i.ag, i64 101
  %i.ah = icmp ugt i64 %.05794, %i.z
  %i.ai = getelementptr inbounds nuw [102 x i8], ptr %5, i64 %.05794 ; 2 uses
  br i1 %i.ah, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.aj = sub nuw i64 %.05794, %i.z               ; 2 uses
  %i.ak = getelementptr i8, ptr %i.ai, i64 %i.aj
  %i.al = getelementptr i8, ptr %i.ak, i64 -1
  store i8 %i.a, ptr %i.al, align 1, !tbaa !7
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.am = trunc nuw i64 %.05794 to i8
  store i8 %i.am, ptr %i.ai, align 2, !tbaa !7
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.058 = phi i64 [ %i.aj, %bb.h ], [ 1, %bb.i ]  ; 5 uses
  %i.an = add i64 %.05794, %i.c                   ; 3 uses
  %i.ao = icmp ugt i64 %i.an, %.sroa.0.0
  br i1 %i.ao, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ap = getelementptr inbounds nuw [102 x i8], ptr %5, i64 %.05794
  %i.aq = getelementptr i8, ptr %i.ap, i64 %i.an
  %i.ar = getelementptr i8, ptr %i.aq, i64 1
  store i8 %i.a, ptr %i.ar, align 1, !tbaa !7
  br label %bb.l

bb.l:                                             ; preds = %bb.j, %bb.k
  %.059 = phi i64 [ %i.an, %bb.k ], [ %.sroa.0.0, %bb.j ] ; 3 uses
  %.not6492 = icmp ugt i64 %.058, %.059
  br i1 %.not6492, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.l
  %i.as = add i64 %.05794, -1                     ; 2 uses
  %i.at = getelementptr inbounds nuw [102 x i8], ptr %5, i64 %i.as ; 4 uses
  %i.au = getelementptr inbounds nuw [102 x i8], ptr %5, i64 %.05794 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %.sroa.9.0, i64 %i.as
  %6 = load i8, ptr %i.av, align 1, !tbaa !7      ; 3 uses
  %i.aw = icmp ugt i64 %.05794, 1
  %i.ax = add i64 %.05794, -2                     ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %.sroa.9.0, i64 %i.ax
  %i.az = getelementptr inbounds nuw [102 x i8], ptr %5, i64 %i.ax
  br i1 %i.aw, label %.lr.ph.split.preheader, label %.lr.ph.split.us.preheader

.lr.ph.split.us.preheader:                        ; preds = %.lr.ph
  %scevgep139 = getelementptr i8, ptr %scevgep, i64 %.058
  %load_initial = load i8, ptr %scevgep139, align 1
  br label %.lr.ph.split.us

.lr.ph.split.preheader:                           ; preds = %.lr.ph
  %scevgep141 = getelementptr i8, ptr %scevgep140.a, i64 %.058
  %load_initial142 = load i8, ptr %scevgep141, align 1
  br label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph.split.us.preheader, %.lr.ph.split.us
  %store_forwarded = phi i8 [ %load_initial, %.lr.ph.split.us.preheader ], [ %.sroa.speculated103, %.lr.ph.split.us ]
  %.06093.us = phi i64 [ %.058, %.lr.ph.split.us.preheader ], [ %i.bt, %.lr.ph.split.us ] ; 4 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.at, i64 %.06093.us
  %i.bb = load i8, ptr %i.ba, align 1, !tbaa !7
  %i.bc = add i8 %i.bb, 1                         ; 2 uses
  %i.bd = add i64 %.06093.us, -1                  ; 2 uses
  %i.be = add i8 %store_forwarded, 1              ; 3 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %.sroa.11.0, i64 %i.bd
  %i.bg = load i8, ptr %i.bf, align 1, !tbaa !7
  %i.bh = icmp ne i8 %6, %i.bg
  %i.bi = getelementptr inbounds nuw i8, ptr %i.at, i64 %i.bd
  %i.bj = load i8, ptr %i.bi, align 1, !tbaa !7
  %i.bk = zext i1 %i.bh to i8
  %i.bl = add i8 %i.bj, %i.bk                     ; 3 uses
  %i.bm = call i8 @llvm.umin.i8(i8 %i.bc, i8 %i.a) ; 2 uses
  %i.bn = icmp ult i8 %i.be, %i.bm
  %i.bo = call i8 @llvm.umin.i8(i8 %i.be, i8 %i.bm) ; 2 uses
  %i.bp = icmp ult i8 %i.bl, %i.bo
  %i.bq = call i8 @llvm.umin.i8(i8 %i.bl, i8 %i.bo)
  %i.br = icmp samesign ult i8 %i.a, %i.bq
  %.sroa.speculate.load.false102.sroa.speculate.load.false.sroa.speculate.load.false.sroa.speculated = call i8 @llvm.umin.i8(i8 %i.bc, i8 %i.a)
  %.sroa.speculate.load.false102.sroa.speculate.load.false.sroa.speculated = select i1 %i.bn, i8 %i.be, i8 %.sroa.speculate.load.false102.sroa.speculate.load.false.sroa.speculate.load.false.sroa.speculated
  %.sroa.speculate.load.false102.sroa.speculated = select i1 %i.bp, i8 %i.bl, i8 %.sroa.speculate.load.false102.sroa.speculate.load.false.sroa.speculated
  %.sroa.speculated103 = select i1 %i.br, i8 %i.a, i8 %.sroa.speculate.load.false102.sroa.speculated ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.au, i64 %.06093.us
  store i8 %.sroa.speculated103, ptr %i.bs, align 1, !tbaa !7
  %i.bt = add i64 %.06093.us, 1                   ; 2 uses
  %.not64.us = icmp ugt i64 %i.bt, %.059
  br i1 %.not64.us, label %._crit_edge, label %.lr.ph.split.us, !llvm.loop !14

._crit_edge:                                      ; preds = %.lr.ph.split.us, %.lr.ph.i.i, %bb.l
  %i.bu = add nuw i64 %.05794, 1
  %exitcond = icmp eq i64 %.05794, %.sroa.080.0
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond, label %bb.f, label %bb.g, !llvm.loop !15

.lr.ph.split:                                     ; preds = %.lr.ph.split.preheader, %.lr.ph.i.i
  %store_forwarded143 = phi i8 [ %load_initial142, %.lr.ph.split.preheader ], [ %.sroa.speculated100, %.lr.ph.i.i ]
  %.06093 = phi i64 [ %.058, %.lr.ph.split.preheader ], [ %i.cy, %.lr.ph.i.i ] ; 7 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.at, i64 %.06093
  %i.bw = load i8, ptr %i.bv, align 1, !tbaa !7
  %i.bx = add i8 %i.bw, 1                         ; 2 uses
  %i.by = add nsw i64 %.06093, -1                 ; 2 uses
  %i.bz = add i8 %store_forwarded143, 1           ; 3 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %.sroa.11.0, i64 %i.by
  %i.cb = load i8, ptr %i.ca, align 1, !tbaa !7   ; 2 uses
  %i.cc = icmp ne i8 %6, %i.cb
  %i.cd = getelementptr inbounds nuw i8, ptr %i.at, i64 %i.by
  %i.ce = load i8, ptr %i.cd, align 1, !tbaa !7
  %i.cf = zext i1 %i.cc to i8
  %i.cg = add i8 %i.ce, %i.cf                     ; 3 uses
  %i.ch = icmp ugt i64 %.06093, 1
  br i1 %i.ch, label %bb.m, label %.lr.ph.i.i

bb.m:                                             ; preds = %.lr.ph.split
  %i.ci = add nsw i64 %.06093, -2                 ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %.sroa.11.0, i64 %i.ci
  %i.ck = load i8, ptr %i.cj, align 1, !tbaa !7
  %i.cl = icmp eq i8 %6, %i.ck
  br i1 %i.cl, label %bb.n, label %.lr.ph.i.i

bb.n:                                             ; preds = %bb.m
  %i.cm = load i8, ptr %i.ay, align 1, !tbaa !7
  %i.cn = icmp eq i8 %i.cm, %i.cb
  br i1 %i.cn, label %bb.o, label %.lr.ph.i.i

bb.o:                                             ; preds = %bb.n
  %i.co = getelementptr inbounds nuw i8, ptr %i.az, i64 %i.ci
  %i.cp = load i8, ptr %i.co, align 1, !tbaa !7
  %i.cq = add i8 %i.cp, 1
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.o, %bb.n, %bb.m, %.lr.ph.split
  %.056 = phi i8 [ %i.cq, %bb.o ], [ %i.a, %bb.n ], [ %i.a, %bb.m ], [ %i.a, %.lr.ph.split ] ; 2 uses
  %i.cr = call i8 @llvm.umin.i8(i8 %i.bx, i8 %i.a) ; 2 uses
  %i.cs = icmp ult i8 %i.bz, %i.cr
  %i.ct = call i8 @llvm.umin.i8(i8 %i.bz, i8 %i.cr) ; 2 uses
  %i.cu = icmp ult i8 %i.cg, %i.ct
  %i.cv = call i8 @llvm.umin.i8(i8 %i.cg, i8 %i.ct)
  %i.cw = icmp ult i8 %.056, %i.cv
  %.sroa.speculate.load.false.sroa.speculate.load.false.sroa.speculate.load.false.sroa.speculated = call i8 @llvm.umin.i8(i8 %i.bx, i8 %i.a)
  %.sroa.speculate.load.false.sroa.speculate.load.false.sroa.speculated = select i1 %i.cs, i8 %i.bz, i8 %.sroa.speculate.load.false.sroa.speculate.load.false.sroa.speculate.load.false.sroa.speculated
  %.sroa.speculate.load.false.sroa.speculated = select i1 %i.cu, i8 %i.cg, i8 %.sroa.speculate.load.false.sroa.speculate.load.false.sroa.speculated
  %.sroa.speculated100 = select i1 %i.cw, i8 %.056, i8 %.sroa.speculate.load.false.sroa.speculated ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.au, i64 %.06093
  store i8 %.sroa.speculated100, ptr %i.cx, align 1, !tbaa !7
  %i.cy = add nuw nsw i64 %.06093, 1
  %.not64.not = icmp ult i64 %.06093, %.059
  br i1 %.not64.not, label %.lr.ph.split, label %._crit_edge, !llvm.loop !14

bb.p:                                             ; preds = %bb.c, %bb.f, %bb.e
  %.0 = phi i8 [ %i.ac, %bb.f ], [ %i.h, %bb.e ], [ %i.a, %bb.c ]
  ret i8 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.umin.i8(i8, i8) #2

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!3 = !{!4, !4, i64 0}
!4 = !{!"int", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C++ TBAA"}
!7 = !{!5, !5, i64 0}
!8 = !{!"branch_weights", i32 4, i32 28}
!9 = distinct !{!9, !10, !11, !12}
!10 = !{!"llvm.loop.mustprogress"}
!11 = !{!"llvm.loop.isvectorized", i32 1}
!12 = !{!"llvm.loop.unroll.runtime.disable"}
!13 = distinct !{!13, !10, !12, !11}
!14 = distinct !{!14, !10}
!15 = distinct !{!15, !10}
end_hunk_0
