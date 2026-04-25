inline.NumInlined: 20
inline.NumDeleted: 6
begin_hunk_0_@LowPassForIntra8x8Pred:bb.a
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 2 ; 4 uses
  %.sroa.7.0.copyload = load i16, ptr %.sroa.7.0..sroa_idx, align 2 ; 3 uses
  %.sroa.9.0..sroa_idx = getelementptr i8, ptr %0, i64 4 ; 3 uses
  %.sroa.10.0..sroa_idx = getelementptr i8, ptr %0, i64 6
  %.sroa.17.0..sroa_idx = getelementptr i8, ptr %0, i64 20 ; 2 uses
  %.sroa.9.0.copyload = load i16, ptr %.sroa.9.0..sroa_idx, align 2 ; 2 uses
  %i.a = load <8 x i16>, ptr %.sroa.9.0..sroa_idx, align 2
  %i.b = load <8 x i16>, ptr %.sroa.10.0..sroa_idx, align 2
  %.sroa.18.0..sroa_idx = getelementptr i8, ptr %0, i64 22
  %.sroa.21.0..sroa_idx = getelementptr i8, ptr %0, i64 28 ; 3 uses
  %i.c = load <4 x i16>, ptr %.sroa.17.0..sroa_idx, align 2 ; 2 uses
  %i.d = load <4 x i16>, ptr %.sroa.18.0..sroa_idx, align 2
  %.sroa.22.0..sroa_idx = getelementptr i8, ptr %0, i64 30 ; 2 uses
  %i.e = load <2 x i16>, ptr %.sroa.21.0..sroa_idx, align 2
end_hunk_0
begin_hunk_1_@LowPassForIntra8x8Pred:bb.a
  %i.h = zext i16 %.sroa.0.0.copyload to i32
  %i.i = zext i16 %.sroa.7.0.copyload to i32      ; 2 uses
  %i.j = shl nuw nsw i32 %i.i, 1
  %4 = zext i16 %.sroa.9.0.copyload to i32        ; 3 uses
  %i.k = add nuw nsw i32 %i.h, 2
  %5 = add nuw nsw i32 %i.k, %i.j
  %i.l = add nuw nsw i32 %5, %4
  %.pre119 = add nuw nsw i32 %4, 2
  br label %bb.e

bb.d:                                             ; preds = %bb.b
end_hunk_1
begin_hunk_2_@LowPassForIntra8x8Pred:bb.a

bb.e:                                             ; preds = %bb.d, %bb.c
  %.pre-phi120 = phi i32 [ %i.p, %bb.d ], [ %.pre119, %bb.c ]
  %.pre-phi118 = phi i32 [ %i.o, %bb.d ], [ %4, %bb.c ] ; 2 uses
  %.pre-phi = phi i32 [ %i.m, %bb.d ], [ %i.i, %bb.c ]
  %.sroa.7.0.in.in = phi i32 [ %i.q, %bb.d ], [ %i.l, %bb.c ]
  %.sroa.7.0.in = lshr i32 %.sroa.7.0.in.in, 2
  %.sroa.7.0 = trunc nuw i32 %.sroa.7.0.in to i16
  %i.r = zext <8 x i16> %i.b to <8 x i32>         ; 4 uses
  %6 = shufflevector <4 x i16> %i.c, <4 x i16> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 2>
  %7 = zext <4 x i16> %6 to <4 x i32>             ; 3 uses
  %8 = insertelement <8 x i32> poison, i32 %.pre-phi, i64 0
  %9 = shufflevector <8 x i32> %8, <8 x i32> %i.r, <8 x i32> <i32 0, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14> ; 2 uses
  %10 = insertelement <8 x i32> %9, i32 2, i64 0
  %11 = add nuw nsw <8 x i32> %9, %10
  %12 = shufflevector <8 x i32> %i.r, <8 x i32> poison, <8 x i32> <i32 poison, i32 poison, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5>
  %i.s = insertelement <8 x i32> %12, i32 %.pre-phi118, i64 0
  %i.t = insertelement <8 x i32> %i.s, i32 %.pre-phi120, i64 1
  %i.u = insertelement <8 x i32> <i32 poison, i32 0, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2>, i32 %.pre-phi118, i64 0
  %i.v = add nuw nsw <8 x i32> %i.t, %i.u
  %i.w = add nuw nsw <8 x i32> %i.v, %11
  %i.x = add nuw nsw <8 x i32> %i.w, %i.r
  %i.y = lshr <8 x i32> %i.x, splat (i32 2)
  %i.z = trunc <8 x i32> %i.y to <8 x i16>
  %i.aa = zext <4 x i16> %i.d to <4 x i32>        ; 2 uses
  %i.ab = shufflevector <8 x i32> %i.r, <8 x i32> poison, <4 x i32> <i32 6, i32 poison, i32 poison, i32 poison>
  %i.ac = shufflevector <4 x i32> %7, <4 x i32> %i.aa, <4 x i32> <i32 poison, i32 2, i32 3, i32 6> ; 2 uses
  %i.ad = shufflevector <4 x i32> %i.ab, <4 x i32> %i.ac, <4 x i32> <i32 0, i32 5, i32 6, i32 7>
  %i.ae = insertelement <4 x i32> %i.ac, i32 2, i64 0
  %i.af = add nuw nsw <4 x i32> %i.ad, %i.ae
  %i.ag = shufflevector <4 x i32> %7, <4 x i32> <i32 poison, i32 2, i32 2, i32 2>, <4 x i32> <i32 0, i32 5, i32 6, i32 7>
  %i.ah = add nuw nsw <4 x i32> %i.ag, %7
  %i.ai = add nuw nsw <4 x i32> %i.ah, %i.af
  %i.aj = add nuw nsw <4 x i32> %i.ai, %i.aa
  %i.ak = lshr <4 x i32> %i.aj, splat (i32 2)
end_hunk_2
begin_hunk_3_@LowPassForIntra8x8Pred:bb.a
  %.sroa.0.0 = phi i16 [ %i.co, %.thread62..thread61_crit_edge ], [ %i.bw, %bb.h ], [ %i.cf, %bb.k ]
  %i.cp = shl nuw nsw i32 %.pre-phi127, 1
  %i.cq = load i16, ptr %.sroa.26.0..sroa_idx, align 2, !tbaa !51
  %13 = zext i16 %i.cq to i32                     ; 3 uses
  %i.cr = add nuw nsw i32 %.pre-phi125, 2
  %14 = add nuw nsw i32 %i.cr, %i.cp
  %i.cs = add nuw nsw i32 %14, %13
  %.pre123 = add nuw nsw i32 %13, 2
  br label %bb.n

bb.m:                                             ; preds = %bb.l
end_hunk_3
begin_hunk_4_@LowPassForIntra8x8Pred:bb.a

bb.n:                                             ; preds = %bb.m, %.thread61
  %.pre-phi124 = phi i32 [ %i.cy, %bb.m ], [ %.pre123, %.thread61 ]
  %.pre-phi122 = phi i32 [ %i.cx, %bb.m ], [ %13, %.thread61 ]
  %.pre-phi121 = phi i32 [ %i.cu, %bb.m ], [ %.pre-phi127, %.thread61 ]
  %.sroa.24.0.in.in = phi i32 [ %i.cz, %bb.m ], [ %i.cs, %.thread61 ]
  %.sroa.0.1 = phi i16 [ %.sroa.0.0.copyload, %bb.m ], [ %.sroa.0.0, %.thread61 ]
end_hunk_4
begin_hunk_5_@LowPassForIntra8x8Pred:bb.a
  %i.dc = add nuw nsw i32 %i.da, %i.db
  %.sroa.24.0.in = lshr i32 %.sroa.24.0.in.in, 2
  %.sroa.24.0 = trunc i32 %.sroa.24.0.in to i16
  %i.dd = load <4 x i16>, ptr %.sroa.27.0..sroa_idx, align 2, !tbaa !51
  %i.de = load <4 x i16>, ptr %.sroa.28.0..sroa_idx, align 2, !tbaa !51
  %i.df = load <4 x i16>, ptr %.sroa.29.0..sroa_idx, align 2, !tbaa !51
  %i.dg = zext <4 x i16> %i.df to <4 x i32>       ; 2 uses
  %i.dh = zext <4 x i16> %i.dd to <4 x i32>       ; 3 uses
  %i.di = zext <4 x i16> %i.de to <4 x i32>       ; 2 uses
  %i.dj = add nuw nsw <4 x i32> %i.dh, splat (i32 2)
  %i.dk = extractelement <4 x i32> %i.dg, i64 3   ; 2 uses
  %i.dl = shl nuw nsw i32 %i.dk, 1
  %i.dm = extractelement <4 x i32> %i.di, i64 3
  %i.dn = add nuw nsw i32 %i.dm, 2
  %i.do = shl nuw nsw <4 x i32> %i.di, splat (i32 1)
  %i.dp = extractelement <4 x i32> %i.dh, i64 0   ; 2 uses
  %i.dq = shl nuw nsw i32 %i.dp, 1
  %i.dr = add nuw nsw i32 %i.dn, %i.dk
  %i.ds = add nuw nsw <4 x i32> %i.dj, %i.do
  %i.dt = add nuw nsw i32 %.pre-phi124, %i.dq
  %i.du = add nuw nsw i32 %i.dr, %i.dl
  %i.dv = add nuw nsw <4 x i32> %i.ds, %i.dg
  %i.dw = extractelement <4 x i32> %i.dh, i64 1
  %i.dx = add nuw nsw i32 %i.dt, %i.dw
  %i.dy = add nuw nsw i32 %i.dc, %i.dp
  %i.dz = lshr i32 %i.du, 2
end_hunk_5
