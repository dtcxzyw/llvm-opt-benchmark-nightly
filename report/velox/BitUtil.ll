inline.NumInlined: 97
inline.NumDeleted: 64
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_ZN8facebook5velox4bits9hashBytesEmPKcm:bb.a

bb.j:                                             ; preds = %bb.i
  %i.cb = load i32, ptr %i.by, align 8, !tbaa !3
  store volatile i32 %i.cb, ptr %i.c, align 8, !tbaa !3
  %i.cc = getelementptr inbounds nuw i8, ptr %.0.lcssa, i64 20
  %i.cd = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.ce = add nsw i32 %.049.lcssa, -20
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.018.i58 = phi ptr [ %i.cd, %bb.j ], [ %i.c, %bb.i ] ; 3 uses
  %.016.i59 = phi ptr [ %i.cc, %bb.j ], [ %i.by, %bb.i ] ; 3 uses
  %.0.i60 = phi i32 [ %i.ce, %bb.j ], [ %i.bz, %bb.i ] ; 3 uses
  %i.cf = icmp samesign ugt i32 %.0.i60, 1
  br i1 %i.cf, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.cg = load i16, ptr %.016.i59, align 2, !tbaa !13
  store volatile i16 %i.cg, ptr %.018.i58, align 2, !tbaa !13
  %i.ch = getelementptr inbounds nuw i8, ptr %.016.i59, i64 2
  %i.ci = getelementptr inbounds nuw i8, ptr %.018.i58, i64 2
  %i.cj = add nsw i32 %.0.i60, -2
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.119.i61 = phi ptr [ %i.ci, %bb.l ], [ %.018.i58, %bb.k ]
  %.117.i62 = phi ptr [ %i.ch, %bb.l ], [ %.016.i59, %bb.k ]
  %.1.i63 = phi i32 [ %i.cj, %bb.l ], [ %.0.i60, %bb.k ]
  %i.ck = icmp eq i32 %.1.i63, 1
  br i1 %i.ck, label %bb.n, label %_ZN8facebook5velox4bits15loadPartialWordEPKhi.exit64

bb.n:                                             ; preds = %bb.m
  %i.cl = load i8, ptr %.117.i62, align 1, !tbaa !9
  store volatile i8 %i.cl, ptr %.119.i61, align 1, !tbaa !9
  br label %_ZN8facebook5velox4bits15loadPartialWordEPKhi.exit64

_ZN8facebook5velox4bits15loadPartialWordEPKhi.exit64: ; preds = %bb.m, %bb.n
  %i.cm = load volatile i64, ptr %i.c, align 8, !tbaa !7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #17
  %i.cn = and i64 %.050.lcssa, 4294967295
  %i.co = tail call noundef i64 @llvm.x86.sse42.crc32.64.64(i64 range(i64 0, 4294967296) %i.cn, i64 %i.cm)
  br label %bb.ai

bb.o:                                             ; preds = %._crit_edge
  %i.cp = icmp sgt i32 %.049.lcssa, 8
  br i1 %i.cp, label %bb.p, label %bb.y

bb.p:                                             ; preds = %bb.o
  %i.cq = load i64, ptr %.0.lcssa, align 8, !tbaa !7
  %i.cr = and i64 %.053.lcssa, 4294967295
  %i.cs = tail call noundef i64 @llvm.x86.sse42.crc32.64.64(i64 range(i64 0, 4294967296) %i.cr, i64 %i.cq)
  %i.ct = icmp eq i32 %.049.lcssa, 16
  %i.cu = getelementptr inbounds nuw i8, ptr %.0.lcssa, i64 8 ; 3 uses
  br i1 %i.ct, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.cv = load i64, ptr %i.cu, align 8, !tbaa !7
  br label %bb.x

bb.r:                                             ; preds = %bb.p
  %i.cw = add nsw i32 %.049.lcssa, -8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #17
  store volatile i64 0, ptr %i.b, align 8, !tbaa !7
  %i.cx = icmp samesign ugt i32 %.049.lcssa, 11
  br i1 %i.cx, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.cy = load i32, ptr %i.cu, align 8, !tbaa !3
  store volatile i32 %i.cy, ptr %i.b, align 8, !tbaa !3
  %i.cz = getelementptr inbounds nuw i8, ptr %.0.lcssa, i64 12
  %i.da = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.db = add nsw i32 %.049.lcssa, -12
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %.018.i65 = phi ptr [ %i.da, %bb.s ], [ %i.b, %bb.r ] ; 3 uses
  %.016.i66 = phi ptr [ %i.cz, %bb.s ], [ %i.cu, %bb.r ] ; 3 uses
  %.0.i67 = phi i32 [ %i.db, %bb.s ], [ %i.cw, %bb.r ] ; 3 uses
  %i.dc = icmp samesign ugt i32 %.0.i67, 1
  br i1 %i.dc, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.dd = load i16, ptr %.016.i66, align 2, !tbaa !13
  store volatile i16 %i.dd, ptr %.018.i65, align 2, !tbaa !13
  %i.de = getelementptr inbounds nuw i8, ptr %.016.i66, i64 2
  %i.df = getelementptr inbounds nuw i8, ptr %.018.i65, i64 2
  %i.dg = add nsw i32 %.0.i67, -2
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %.119.i68 = phi ptr [ %i.df, %bb.u ], [ %.018.i65, %bb.t ]
  %.117.i69 = phi ptr [ %i.de, %bb.u ], [ %.016.i66, %bb.t ]
  %.1.i70 = phi i32 [ %i.dg, %bb.u ], [ %.0.i67, %bb.t ]
  %i.dh = icmp eq i32 %.1.i70, 1
  br i1 %i.dh, label %bb.w, label %_ZN8facebook5velox4bits15loadPartialWordEPKhi.exit71

bb.w:                                             ; preds = %bb.v
  %i.di = load i8, ptr %.117.i69, align 1, !tbaa !9
  store volatile i8 %i.di, ptr %.119.i68, align 1, !tbaa !9
  br label %_ZN8facebook5velox4bits15loadPartialWordEPKhi.exit71

_ZN8facebook5velox4bits15loadPartialWordEPKhi.exit71: ; preds = %bb.v, %bb.w
  %i.dj = load volatile i64, ptr %i.b, align 8, !tbaa !7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #17
  br label %bb.x

bb.x:                                             ; preds = %_ZN8facebook5velox4bits15loadPartialWordEPKhi.exit71, %bb.q
  %i.dk = phi i64 [ %i.cv, %bb.q ], [ %i.dj, %_ZN8facebook5velox4bits15loadPartialWordEPKhi.exit71 ]
  %i.dl = and i64 %.051.lcssa, 4294967295
  %i.dm = tail call noundef i64 @llvm.x86.sse42.crc32.64.64(i64 range(i64 0, 4294967296) %i.dl, i64 %i.dk)
  br label %bb.ai

bb.y:                                             ; preds = %bb.o
  %i.dn = icmp sgt i32 %.049.lcssa, 0
  br i1 %i.dn, label %bb.z, label %bb.ai

bb.z:                                             ; preds = %bb.y
  %i.do = icmp eq i32 %.049.lcssa, 8
  br i1 %i.do, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.dp = load i64, ptr %.0.lcssa, align 8, !tbaa !7
  br label %bb.ah

bb.ab:                                            ; preds = %bb.z
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  store volatile i64 0, ptr %i.a, align 8, !tbaa !7
  %i.dq = icmp samesign ugt i32 %.049.lcssa, 3
  br i1 %i.dq, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.dr = load i32, ptr %.0.lcssa, align 4, !tbaa !3
  store volatile i32 %i.dr, ptr %i.a, align 8, !tbaa !3
  %i.ds = getelementptr inbounds nuw i8, ptr %.0.lcssa, i64 4
  %i.dt = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.du = add nsw i32 %.049.lcssa, -4
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %.018.i72 = phi ptr [ %i.dt, %bb.ac ], [ %i.a, %bb.ab ] ; 3 uses
  %.016.i73 = phi ptr [ %i.ds, %bb.ac ], [ %.0.lcssa, %bb.ab ] ; 3 uses
  %.0.i74 = phi i32 [ %i.du, %bb.ac ], [ %.049.lcssa, %bb.ab ] ; 3 uses
  %i.dv = icmp samesign ugt i32 %.0.i74, 1
  br i1 %i.dv, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %i.dw = load i16, ptr %.016.i73, align 2, !tbaa !13
  store volatile i16 %i.dw, ptr %.018.i72, align 2, !tbaa !13
  %i.dx = getelementptr inbounds nuw i8, ptr %.016.i73, i64 2
  %i.dy = getelementptr inbounds nuw i8, ptr %.018.i72, i64 2
  %i.dz = add nsw i32 %.0.i74, -2
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad
  %.119.i75 = phi ptr [ %i.dy, %bb.ae ], [ %.018.i72, %bb.ad ]
  %.117.i76 = phi ptr [ %i.dx, %bb.ae ], [ %.016.i73, %bb.ad ]
  %.1.i77 = phi i32 [ %i.dz, %bb.ae ], [ %.0.i74, %bb.ad ]
  %i.ea = icmp eq i32 %.1.i77, 1
  br i1 %i.ea, label %bb.ag, label %_ZN8facebook5velox4bits15loadPartialWordEPKhi.exit78

bb.ag:                                            ; preds = %bb.af
  %i.eb = load i8, ptr %.117.i76, align 1, !tbaa !9
  store volatile i8 %i.eb, ptr %.119.i75, align 1, !tbaa !9
  br label %_ZN8facebook5velox4bits15loadPartialWordEPKhi.exit78

_ZN8facebook5velox4bits15loadPartialWordEPKhi.exit78: ; preds = %bb.af, %bb.ag
  %i.ec = load volatile i64, ptr %i.a, align 8, !tbaa !7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  br label %bb.ah

bb.ah:                                            ; preds = %_ZN8facebook5velox4bits15loadPartialWordEPKhi.exit78, %bb.aa
  %i.ed = phi i64 [ %i.dp, %bb.aa ], [ %i.ec, %_ZN8facebook5velox4bits15loadPartialWordEPKhi.exit78 ]
  %i.ee = and i64 %.053.lcssa, 4294967295
  %i.ef = tail call noundef i64 @llvm.x86.sse42.crc32.64.64(i64 range(i64 0, 4294967296) %i.ee, i64 %i.ed)
  br label %bb.ai

bb.ai:                                            ; preds = %bb.x, %bb.ah, %bb.y, %_ZN8facebook5velox4bits15loadPartialWordEPKhi.exit64
  %.154 = phi i64 [ %i.bt, %_ZN8facebook5velox4bits15loadPartialWordEPKhi.exit64 ], [ %i.cs, %bb.x ], [ %i.ef, %bb.ah ], [ %.053.lcssa, %bb.y ]
  %.152 = phi i64 [ %i.bx, %_ZN8facebook5velox4bits15loadPartialWordEPKhi.exit64 ], [ %i.dm, %bb.x ], [ %.051.lcssa, %bb.ah ], [ %.051.lcssa, %bb.y ]
  %.1 = phi i64 [ %i.co, %_ZN8facebook5velox4bits15loadPartialWordEPKhi.exit64 ], [ %.050.lcssa, %bb.x ], [ %.050.lcssa, %bb.ah ], [ %.050.lcssa, %bb.y ]
  %i.eg = mul i64 %.152, -7070675565921424023
  %i.eh = xor i64 %i.eg, %.154
  %i.ei = mul i64 %.1, -7070675565921424023
  %i.ej = xor i64 %i.eh, %i.ei
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %_ZN8facebook5velox4bits15loadPartialWordEPKhi.exit
  %.055 = phi i64 [ %i.y, %_ZN8facebook5velox4bits15loadPartialWordEPKhi.exit ], [ %i.ej, %bb.ai ]
  ret i64 %.055
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define void @_ZN8facebook5velox4bits10packBitmapESt4spanIKbLm18446744073709551615EEPc(ptr nofree readonly %0, i64 %1, ptr nofree noundef captures(none) %2) local_unnamed_addr #2 {
bb.a:
  %i.a = lshr i64 %1, 6                           ; 2 uses
  %i.b = and i64 %1, 63                           ; 6 uses
  %.not = icmp eq i64 %i.a, 0
  br i1 %.not, label %.preheader, label %.preheader21

.preheader21:                                     ; preds = %bb.a, %.preheader21
  %.pn = phi ptr [ %indvars.iv35, %.preheader21 ], [ %0, %bb.a ] ; 2 uses
  %.01726 = phi i64 [ %i.i, %.preheader21 ], [ 0, %bb.a ]
  %.01825 = phi ptr [ %i.h, %.preheader21 ], [ %2, %bb.a ] ; 3 uses
  %indvars.iv35 = getelementptr i8, ptr %.pn, i64 64 ; 2 uses
  %.019.promoted = load i64, ptr %.01825, align 8, !tbaa !7
  %i.c = load <64 x i8>, ptr %.pn, align 1, !tbaa !29
  %i.d = shl nuw <64 x i8> %i.c, <i8 0, i8 1, i8 2, i8 3, i8 4, i8 5, i8 6, i8 7, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0>
  %i.e = zext <64 x i8> %i.d to <64 x i64>
  %i.f = shl nuw <64 x i64> %i.e, <i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 8, i64 9, i64 10, i64 11, i64 12, i64 13, i64 14, i64 15, i64 16, i64 17, i64 18, i64 19, i64 20, i64 21, i64 22, i64 23, i64 24, i64 25, i64 26, i64 27, i64 28, i64 29, i64 30, i64 31, i64 32, i64 33, i64 34, i64 35, i64 36, i64 37, i64 38, i64 39, i64 40, i64 41, i64 42, i64 43, i64 44, i64 45, i64 46, i64 47, i64 48, i64 49, i64 50, i64 51, i64 52, i64 53, i64 54, i64 55, i64 56, i64 57, i64 58, i64 59, i64 60, i64 61, i64 62, i64 63>
  %i.g = tail call i64 @llvm.vector.reduce.or.v64i64(<64 x i64> %i.f)
  %op.rdx = or i64 %i.g, %.019.promoted
  store i64 %op.rdx, ptr %.01825, align 8, !tbaa !7
  %i.h = getelementptr inbounds nuw i8, ptr %.01825, i64 8 ; 2 uses
  %i.i = add nuw nsw i64 %.01726, 1               ; 2 uses
  %exitcond.not = icmp eq i64 %i.i, %i.a
  br i1 %exitcond.not, label %.preheader, label %.preheader21, !llvm.loop !31

.preheader:                                       ; preds = %.preheader21, %bb.a
  %.019.lcssa = phi ptr [ %2, %bb.a ], [ %i.h, %.preheader21 ] ; 2 uses
  %.018.lcssa = phi ptr [ %0, %bb.a ], [ %indvars.iv35, %.preheader21 ] ; 5 uses
  %.not31 = icmp eq i64 %i.b, 0
  br i1 %.not31, label %bb.b, label %iter.check

iter.check:                                       ; preds = %.preheader
  %.019.lcssa.promoted = load i64, ptr %.019.lcssa, align 8, !tbaa !7 ; 3 uses
  %min.iters.check = icmp samesign ult i64 %i.b, 4
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check41 = icmp samesign ult i64 %i.b, 16
  br i1 %min.iters.check41, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %1, 12
  %n.vec = and i64 %1, 48                         ; 5 uses
  %i.j = getelementptr i8, ptr %.018.lcssa, i64 %n.vec
  %i.k = insertelement <4 x i64> <i64 poison, i64 0, i64 0, i64 0>, i64 %.019.lcssa.promoted, i64 0
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 5 uses
  %vec.phi = phi <4 x i64> [ %i.k, %vector.ph ], [ %i.w, %vector.body ]
  %vec.phi42 = phi <4 x i64> [ zeroinitializer, %vector.ph ], [ %i.x, %vector.body ]
  %vec.phi43 = phi <4 x i64> [ zeroinitializer, %vector.ph ], [ %i.y, %vector.body ]
  %vec.phi44 = phi <4 x i64> [ zeroinitializer, %vector.ph ], [ %i.z, %vector.body ]
  %step.add = add nuw <4 x i64> %vec.ind, splat (i64 4)
  %step.add.2 = add nuw <4 x i64> %vec.ind, splat (i64 8)
  %step.add.3 = add nuw <4 x i64> %vec.ind, splat (i64 12)
  %next.gep = getelementptr i8, ptr %.018.lcssa, i64 %index ; 4 uses
  %i.l = getelementptr i8, ptr %next.gep, i64 4
  %i.m = getelementptr i8, ptr %next.gep, i64 8
  %i.n = getelementptr i8, ptr %next.gep, i64 12
  %wide.load = load <4 x i8>, ptr %next.gep, align 1, !tbaa !29
  %wide.load45 = load <4 x i8>, ptr %i.l, align 1, !tbaa !29
  %wide.load46 = load <4 x i8>, ptr %i.m, align 1, !tbaa !29
  %wide.load47 = load <4 x i8>, ptr %i.n, align 1, !tbaa !29
  %i.o = zext nneg <4 x i8> %wide.load to <4 x i64>
  %i.p = zext nneg <4 x i8> %wide.load45 to <4 x i64>
  %i.q = zext nneg <4 x i8> %wide.load46 to <4 x i64>
  %i.r = zext nneg <4 x i8> %wide.load47 to <4 x i64>
  %i.s = shl nuw <4 x i64> %i.o, %vec.ind
  %i.t = shl nuw <4 x i64> %i.p, %step.add
  %i.u = shl nuw <4 x i64> %i.q, %step.add.2
  %i.v = shl nuw <4 x i64> %i.r, %step.add.3
  %i.w = or <4 x i64> %i.s, %vec.phi              ; 2 uses
  %i.x = or <4 x i64> %i.t, %vec.phi42            ; 2 uses
  %i.y = or <4 x i64> %i.u, %vec.phi43            ; 2 uses
  %i.z = or <4 x i64> %i.v, %vec.phi44            ; 2 uses
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %vec.ind.next = add nuw <4 x i64> %vec.ind, splat (i64 16)
  %i.aa = icmp eq i64 %index.next, %n.vec
  br i1 %i.aa, label %middle.block, label %vector.body, !llvm.loop !32

middle.block:                                     ; preds = %vector.body
  %bin.rdx = or <4 x i64> %i.x, %i.w
  %bin.rdx48 = or <4 x i64> %i.y, %bin.rdx
  %bin.rdx49 = or <4 x i64> %i.z, %bin.rdx48
  %i.ab = tail call i64 @llvm.vector.reduce.or.v4i64(<4 x i64> %bin.rdx49) ; 3 uses
  %cmp.n = icmp eq i64 %i.b, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !35

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ] ; 2 uses
  %bc.merge.rdx = phi i64 [ %i.ab, %vec.epilog.iter.check ], [ %.019.lcssa.promoted, %vector.main.loop.iter.check ]
  %n.vec51 = and i64 %1, 60                       ; 4 uses
  %i.ac = getelementptr i8, ptr %.018.lcssa, i64 %n.vec51
  %i.ad = insertelement <4 x i64> <i64 poison, i64 0, i64 0, i64 0>, i64 %bc.merge.rdx, i64 0
  %broadcast.splatinsert = insertelement <4 x i64> poison, i64 %vec.epilog.resume.val, i64 0
  %broadcast.splat = shufflevector <4 x i64> %broadcast.splatinsert, <4 x i64> poison, <4 x i32> zeroinitializer
  %induction = or disjoint <4 x i64> %broadcast.splat, <i64 0, i64 1, i64 2, i64 3>
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index52 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next57, %vec.epilog.vector.body ] ; 2 uses
  %vec.ind53 = phi <4 x i64> [ %induction, %vec.epilog.ph ], [ %vec.ind.next58, %vec.epilog.vector.body ] ; 2 uses
  %vec.phi54 = phi <4 x i64> [ %i.ad, %vec.epilog.ph ], [ %i.ag, %vec.epilog.vector.body ]
  %next.gep55 = getelementptr i8, ptr %.018.lcssa, i64 %index52
  %wide.load56 = load <4 x i8>, ptr %next.gep55, align 1, !tbaa !29
  %i.ae = zext nneg <4 x i8> %wide.load56 to <4 x i64>
  %i.af = shl nuw <4 x i64> %i.ae, %vec.ind53
  %i.ag = or <4 x i64> %i.af, %vec.phi54          ; 2 uses
  %index.next57 = add nuw i64 %index52, 4         ; 2 uses
  %vec.ind.next58 = add nuw nsw <4 x i64> %vec.ind53, splat (i64 4)
  %i.ah = icmp eq i64 %index.next57, %n.vec51
  br i1 %i.ah, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !36

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %i.ai = tail call i64 @llvm.vector.reduce.or.v4i64(<4 x i64> %i.ag) ; 2 uses
  %cmp.n59 = icmp eq i64 %i.b, %n.vec51
  br i1 %cmp.n59, label %._crit_edge, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec51, %vec.epilog.middle.block ]
  %.ph = phi i64 [ %.019.lcssa.promoted, %iter.check ], [ %i.ab, %vec.epilog.iter.check ], [ %i.ai, %vec.epilog.middle.block ]
  %.228.ph = phi ptr [ %.018.lcssa, %iter.check ], [ %i.j, %vec.epilog.iter.check ], [ %i.ac, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

._crit_edge:                                      ; preds = %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block
  %.lcssa = phi i64 [ %i.ai, %vec.epilog.middle.block ], [ %i.ab, %middle.block ], [ %i.ao, %vec.epilog.scalar.ph ]
  store i64 %.lcssa, ptr %.019.lcssa, align 8, !tbaa !7
  br label %bb.b

bb.b:                                             ; preds = %._crit_edge, %.preheader
  ret void

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %vec.epilog.scalar.ph ], [ %indvars.iv.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %i.aj = phi i64 [ %i.ao, %vec.epilog.scalar.ph ], [ %.ph, %vec.epilog.scalar.ph.preheader ]
  %.228 = phi ptr [ %i.ak, %vec.epilog.scalar.ph ], [ %.228.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.228, i64 1
  %i.al = load i8, ptr %.228, align 1, !tbaa !29, !range !37, !noundef !38
  %i.am = zext nneg i8 %i.al to i64
  %i.an = shl nuw i64 %i.am, %indvars.iv
  %i.ao = or i64 %i.an, %i.aj                     ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond37.not = icmp eq i64 %indvars.iv.next, %i.b
  br i1 %exitcond37.not, label %._crit_edge, label %vec.epilog.scalar.ph, !llvm.loop !39
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef i32 @_ZN8facebook5velox4bits10findSetBitEPKcjjj(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #7 {
bb.a:
  %i.a = icmp uge i32 %1, %2
  %i.b = icmp eq i32 %3, 0
  %or.cond = or i1 %i.a, %i.b
  br i1 %or.cond, label %.thread87, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = lshr i32 %1, 6                           ; 2 uses
  %i.d = and i32 %1, 63
  %i.e = zext nneg i32 %i.c to i64
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.e
  %i.g = load i64, ptr %i.f, align 8, !tbaa !7
  %i.h = zext nneg i32 %i.d to i64
  %notmask = shl nsw i64 -1, %i.h
  %i.i = and i64 %i.g, %notmask
  br label %bb.c

bb.c:                                             ; preds = %select.unfold, %bb.b
  %.059 = phi i64 [ %i.i, %bb.b ], [ %.463, %select.unfold ] ; 2 uses
  %.057 = phi i32 [ %i.c, %bb.b ], [ %i.x, %select.unfold ] ; 2 uses
  %.049 = phi i32 [ %3, %bb.b ], [ %i.z, %select.unfold ] ; 3 uses
  %i.j = tail call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %.059)
  %i.k = trunc nuw nsw i64 %i.j to i32            ; 2 uses
  %i.l = add i32 %.049, -1
  %or.cond3 = icmp ult i32 %i.l, %i.k
  br i1 %or.cond3, label %.preheader, label %.loopexit

.preheader:                                       ; preds = %bb.c, %bb.d
  %.160 = phi i64 [ %i.q, %bb.d ], [ %.059, %bb.c ] ; 3 uses
  %.150 = phi i32 [ %i.r, %bb.d ], [ %.049, %bb.c ] ; 2 uses
  %i.m = icmp eq i64 %.160, 0
  br i1 %i.m, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %.preheader
  %i.n = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.160, i1 true) ; 2 uses
  %i.o = shl nuw i64 1, %i.n
  %i.p = xor i64 %i.o, -1
  %i.q = and i64 %.160, %i.p
  %i.r = add nsw i32 %.150, -1                    ; 2 uses
  %i.s = icmp eq i32 %i.r, 0
  br i1 %i.s, label %.thread, label %.preheader

.thread:                                          ; preds = %bb.d
  %i.t = trunc nuw nsw i64 %i.n to i32
  %i.u = shl i32 %.057, 6
  %i.v = or disjoint i32 %i.u, %i.t
  %i.w = tail call i32 @llvm.umin.i32(i32 %i.v, i32 %2)
  br label %.thread87

.loopexit:                                        ; preds = %.preheader, %bb.c
  %.352 = phi i32 [ %.049, %bb.c ], [ %.150, %.preheader ]
  %i.x = add i32 %.057, 1                         ; 3 uses
  %i.y = shl i32 %i.x, 6                          ; 3 uses
  %.not = icmp ult i32 %i.y, %2
  br i1 %.not, label %select.unfold, label %.thread87

select.unfold:                                    ; preds = %.loopexit
  %i.z = sub i32 %.352, %i.k
  %i.aa = zext i32 %i.x to i64
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.aa
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !7
  %i.ad = add i32 %i.y, 64
  %i.ae = icmp ugt i32 %i.ad, %2
  %i.af = sub nuw i32 %2, %i.y
  %i.ag = zext nneg i32 %i.af to i64
  %notmask73 = shl nsw i64 -1, %i.ag
  %i.ah = xor i64 %notmask73, -1
  %i.ai = select i1 %i.ae, i64 %i.ah, i64 -1
  %.463 = and i64 %i.ac, %i.ai
  br label %bb.c

.thread87:                                        ; preds = %.loopexit, %.thread, %bb.a
  %.6 = phi i32 [ %1, %bb.a ], [ %i.w, %.thread ], [ %2, %.loopexit ]
  ret i32 %.6
end_hunk_0
