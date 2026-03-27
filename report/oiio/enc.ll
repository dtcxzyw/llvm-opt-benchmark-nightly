begin_hunk_0
  %i.au = zext i16 %i.at to i32
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.b, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert68.a = insertelement <4 x i32> poison, i32 %i.e, i64 0
  %broadcast.splat69.a = shufflevector <4 x i32> %broadcast.splatinsert68.a, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert70.a = insertelement <4 x i32> poison, i32 %i.h, i64 0
  %broadcast.splat71.a = shufflevector <4 x i32> %broadcast.splatinsert70.a, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert72 = insertelement <4 x i32> poison, i32 %i.k, i64 0
  %broadcast.splat73 = shufflevector <4 x i32> %broadcast.splatinsert72, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert74 = insertelement <4 x i32> poison, i32 %i.n, i64 0
  %broadcast.splat75 = shufflevector <4 x i32> %broadcast.splatinsert74, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert76 = insertelement <4 x i32> poison, i32 %i.q, i64 0
  %broadcast.splat77 = shufflevector <4 x i32> %broadcast.splatinsert76, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
end_hunk_0
begin_hunk_1
  %.01362 = phi i32 [ 0, %bb.a ], [ %i.zj, %.preheader ]
  %invariant.gep = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv65 ; 64 uses
  %invariant.gep58 = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv65 ; 64 uses
  %3 = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %.01362, i64 0
  tail call void @llvm.experimental.noalias.scope.decl(metadata !28)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !29)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !30)
end_hunk_1
begin_hunk_2
  %i.rw = add nsw <4 x i32> %i.pt, %i.rv          ; 2 uses
  %i.rx = add nsw <4 x i32> %i.nq, %i.rw
  %i.ry = tail call <4 x i32> @llvm.abs.v4i32(<4 x i32> %i.rx, i1 true)
  %i.rz = mul nuw nsw <4 x i32> %i.ry, %broadcast.splat75
  %i.sa = add nuw nsw <4 x i32> %i.kj, %i.jw      ; 2 uses
  %i.sb = add nuw nsw <4 x i32> %i.lk, %i.kx      ; 2 uses
  %i.sc = add nuw nsw <4 x i32> %i.sa, %i.sb      ; 2 uses
end_hunk_2
begin_hunk_3
  %i.sq = add nuw nsw <4 x i32> %i.rz, %i.sp
  %i.sr = sub nsw <4 x i32> %i.sn, %i.sg
  %i.ss = tail call <4 x i32> @llvm.abs.v4i32(<4 x i32> %i.sr, i1 true)
  %i.st = mul nuw nsw <4 x i32> %i.ss, %broadcast.splat73
  %i.su = add nuw nsw <4 x i32> %i.sq, %i.st
  %i.sv = sub nsw <4 x i32> %i.sm, %i.sj          ; 2 uses
  %i.sw = sub nsw <4 x i32> %i.sf, %i.sc          ; 2 uses
  %i.sx = sub nsw <4 x i32> %i.sv, %i.sw
  %i.sy = tail call <4 x i32> @llvm.abs.v4i32(<4 x i32> %i.sx, i1 true)
  %i.sz = mul nuw nsw <4 x i32> %i.sy, %broadcast.splat71.a
  %i.ta = add nuw nsw <4 x i32> %i.su, %i.sz
  %i.tb = add nsw <4 x i32> %i.sw, %i.sv
  %i.tc = tail call <4 x i32> @llvm.abs.v4i32(<4 x i32> %i.tb, i1 true)
  %i.td = mul nuw nsw <4 x i32> %i.tc, %broadcast.splat69.a
  %i.te = add nuw nsw <4 x i32> %i.ta, %i.td
  %i.tf = sub nsw <4 x i32> %i.np, %i.lm          ; 2 uses
  %i.tg = sub nsw <4 x i32> %i.rv, %i.pt          ; 2 uses
end_hunk_3
begin_hunk_4
  %i.vr = sub nsw <4 x i32> %i.jg, %i.he          ; 2 uses
  %i.vs = add nsw <4 x i32> %i.vq, %i.vr
  %i.vt = tail call <4 x i32> @llvm.abs.v4i32(<4 x i32> %i.vs, i1 true)
  %i.vu = mul nuw nsw <4 x i32> %i.vt, %broadcast.splat69.a
  %i.vv = add <4 x i32> %i.vp, %i.vu
  %i.vw = sub nsw <4 x i32> %i.vr, %i.vq
  %i.vx = tail call <4 x i32> @llvm.abs.v4i32(<4 x i32> %i.vw, i1 true)
  %i.vy = mul nuw nsw <4 x i32> %i.vx, %broadcast.splat71.a
  %i.vz = add <4 x i32> %i.vv, %i.vy
  %i.wa = sub nsw <4 x i32> %i.jh, %i.fb
  %i.wb = tail call <4 x i32> @llvm.abs.v4i32(<4 x i32> %i.wa, i1 true)
  %i.wc = mul nuw nsw <4 x i32> %i.wb, %broadcast.splat73
  %i.wd = add <4 x i32> %i.vz, %i.wc
  %i.we = sub nsw <4 x i32> %i.bu, %i.bh          ; 2 uses
  %i.wf = sub nsw <4 x i32> %i.cv, %i.ci          ; 2 uses
end_hunk_4
begin_hunk_5
  %i.wr = add nsw <4 x i32> %i.wn, %i.wq          ; 2 uses
  %i.ws = add nsw <4 x i32> %i.wk, %i.wr
  %i.wt = tail call <4 x i32> @llvm.abs.v4i32(<4 x i32> %i.ws, i1 true)
  %i.wu = mul nuw nsw <4 x i32> %i.wt, %broadcast.splat75
  %i.wv = add <4 x i32> %i.wd, %i.wu
  %i.ww = sub nsw <4 x i32> %i.wj, %i.wg          ; 2 uses
  %i.wx = sub nsw <4 x i32> %i.wq, %i.wn          ; 2 uses
end_hunk_5
begin_hunk_6
  %i.zf = add <4 x i32> %i.zb, %i.ze
  %i.zg = tail call <4 x i32> @llvm.abs.v4i32(<4 x i32> %i.zf, i1 true)
  %i.zh = lshr <4 x i32> %i.zg, splat (i32 5)
  %i.zi = add <4 x i32> %i.zh, %3
  %i.zj = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.zi) ; 2 uses
  %indvars.iv.next66 = add nuw nsw i64 %indvars.iv65, 128
end_hunk_6
