Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/harfbuzz/original/hb-subset-plan-var?download=true
inline.NumInlined: 3771
inline.NumDeleted: 1746
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 14
loop-unroll.NumUnrolled: 20
begin_hunk_0_@_ZNK2OT7VarData10_get_deltaEjPKijRKNS_13VarRegionListEPNS_17hb_scalar_cache_tE:bb.a
  br i1 %or.cond.i.i95.us, label %_ZNK2OT13VarRegionAxis8evaluateEi.exit.thread.i104.us, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.be = icmp eq i32 %i.aw, 0
  br i1 %i.be, label %_ZNK2OT13VarRegionList8evaluateEjPKijPNS_17hb_scalar_cache_tE.exit74.thread.us, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bf = load i16, ptr %i.ax, align 1, !tbaa !62
  %i.bg = tail call noundef i16 @llvm.bswap.i16(i16 %i.bf) ; 3 uses
  %i.bh = sext i16 %i.bg to i32                   ; 3 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.ax, i64 4
  %i.bj = load i16, ptr %i.bi, align 1, !tbaa !62
  %i.bk = tail call noundef i16 @llvm.bswap.i16(i16 %i.bj) ; 3 uses
  %i.bl = sext i16 %i.bk to i32                   ; 3 uses
  %i.bm = icmp sgt i16 %i.bg, %i.ba
  %i.bn = icmp sgt i16 %i.ba, %i.bk
  %i.bo = or i1 %i.bm, %i.bn
  br i1 %i.bo, label %_ZNK2OT13VarRegionAxis8evaluateEi.exit.thread.i104.us, label %bb.h, !prof !32

bb.h:                                             ; preds = %bb.g
  %i.bp = icmp slt i16 %i.bg, 0
  %i.bq = icmp sgt i16 %i.bk, 0
  %i.br = and i1 %i.bp, %i.bq
  br i1 %i.br, label %_ZNK2OT13VarRegionAxis8evaluateEi.exit.thread.i104.us, label %bb.i, !prof !32

bb.i:                                             ; preds = %bb.h
  %.not.i.i96.us = icmp sgt i32 %i.aw, %i.bh
  %.not29.i.i97.us = icmp slt i32 %i.aw, %i.bl
  %or.cond30.i.i98.us = and i1 %.not.i.i96.us, %.not29.i.i97.us
  br i1 %or.cond30.i.i98.us, label %_ZNK2OT13VarRegionAxis8evaluateEi.exit.i100.us, label %_ZNK2OT13VarRegionList8evaluateEjPKijPNS_17hb_scalar_cache_tE.exit74.thread.us

_ZNK2OT13VarRegionAxis8evaluateEi.exit.i100.us:   ; preds = %bb.i
  %i.bs = icmp slt i32 %i.aw, %i.bb               ; 2 uses
  %i.bt = sub nsw i32 %i.aw, %i.bh
  %i.bu = sub nsw i32 %i.bb, %i.bh
  %i.bv = sub nsw i32 %i.bl, %i.aw
  %i.bw = sub nsw i32 %i.bl, %i.bb
  %.sink40.i101.us = select i1 %i.bs, i32 %i.bu, i32 %i.bw
  %.sink.in.i102.us = select i1 %i.bs, i32 %i.bt, i32 %i.bv
  %.sink.i103.us = sitofp i32 %.sink.in.i102.us to float
  %i.bx = sitofp i32 %.sink40.i101.us to float
  %i.by = fdiv float %.sink.i103.us, %i.bx        ; 2 uses
  %i.bz = fcmp une float %i.by, 0.000000e+00
  %i.ca = fmul float %.01726.i94.us, %i.by
  br i1 %i.bz, label %_ZNK2OT13VarRegionAxis8evaluateEi.exit.thread.i104.us, label %_ZNK2OT13VarRegionList8evaluateEjPKijPNS_17hb_scalar_cache_tE.exit74.thread.us

_ZNK2OT13VarRegionAxis8evaluateEi.exit.thread.i104.us: ; preds = %_ZNK2OT13VarRegionAxis8evaluateEi.exit.i100.us, %bb.h, %bb.g, %bb.e
  %.121.i105.us = phi float [ %i.ca, %_ZNK2OT13VarRegionAxis8evaluateEi.exit.i100.us ], [ %.01726.i94.us, %bb.e ], [ %.01726.i94.us, %bb.g ], [ %.01726.i94.us, %bb.h ] ; 3 uses
  %indvars.iv.next.i106.us = add nuw nsw i64 %indvars.iv.i93.us, 1 ; 2 uses
  %exitcond.not.i107.us = icmp eq i64 %indvars.iv.next.i106.us, %i.aq
  br i1 %exitcond.not.i107.us, label %_ZNK2OT13VarRegionList8evaluateEjPKijPNS_17hb_scalar_cache_tE.exit74.loopexit.us, label %.lr.ph.i92.us, !llvm.loop !578

_ZNK2OT13VarRegionList8evaluateEjPKijPNS_17hb_scalar_cache_tE.exit74.thread201.us: ; preds = %_ZNK2OT13VarRegionList8evaluateEjPKijPNS_17hb_scalar_cache_tE.exit74.loopexit.us, %.critedge.i73.us
  %.1.i70203.us = phi float [ %.121.i105.us, %_ZNK2OT13VarRegionList8evaluateEjPKijPNS_17hb_scalar_cache_tE.exit74.loopexit.us ], [ 1.000000e+00, %.critedge.i73.us ]
  %i.cb = load i32, ptr %.053234.us, align 1, !tbaa !64
  %i.cc = tail call noundef i32 @llvm.bswap.i32(i32 %i.cb)
  %i.cd = sitofp i32 %i.cc to float
  %i.ce = tail call float @llvm.fmuladd.f32(float %.1.i70203.us, float %i.cd, float %.055232.us)
  br label %_ZNK2OT13VarRegionList8evaluateEjPKijPNS_17hb_scalar_cache_tE.exit74.thread.us

_ZNK2OT13VarRegionList8evaluateEjPKijPNS_17hb_scalar_cache_tE.exit74.thread.us: ; preds = %bb.f, %bb.i, %_ZNK2OT13VarRegionAxis8evaluateEi.exit.i100.us, %_ZNK2OT13VarRegionList8evaluateEjPKijPNS_17hb_scalar_cache_tE.exit74.thread201.us, %_ZNK2OT13VarRegionList8evaluateEjPKijPNS_17hb_scalar_cache_tE.exit74.loopexit.us, %bb.c
  %.156.us = phi float [ %i.ce, %_ZNK2OT13VarRegionList8evaluateEjPKijPNS_17hb_scalar_cache_tE.exit74.thread201.us ], [ %.055232.us, %_ZNK2OT13VarRegionList8evaluateEjPKijPNS_17hb_scalar_cache_tE.exit74.loopexit.us ], [ %.055232.us, %bb.c ], [ %.055232.us, %_ZNK2OT13VarRegionAxis8evaluateEi.exit.i100.us ], [ %.055232.us, %bb.i ], [ %.055232.us, %bb.f ] ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %.053234.us, i64 4 ; 2 uses
  %indvars.iv.next270 = add nuw nsw i64 %indvars.iv269, 1 ; 3 uses
  %i.cg = icmp samesign ult i64 %indvars.iv.next270, %i.aj
  br i1 %i.cg, label %bb.c, label %.preheader231.loopexit, !llvm.loop !579

_ZNK2OT13VarRegionList8evaluateEjPKijPNS_17hb_scalar_cache_tE.exit74.loopexit.us: ; preds = %_ZNK2OT13VarRegionAxis8evaluateEi.exit.thread.i104.us
  %i.ch = fcmp une float %.121.i105.us, 0.000000e+00
  br i1 %i.ch, label %_ZNK2OT13VarRegionList8evaluateEjPKijPNS_17hb_scalar_cache_tE.exit74.thread201.us, label %_ZNK2OT13VarRegionList8evaluateEjPKijPNS_17hb_scalar_cache_tE.exit74.thread.us

.preheader231.loopexit:                           ; preds = %_ZNK2OT13VarRegionList8evaluateEjPKijPNS_17hb_scalar_cache_tE.exit74.thread.us
  %i.ci = trunc nuw nsw i64 %indvars.iv.next270 to i32
  br label %.preheader231

.preheader231.loopexit260:                        ; preds = %_ZNK2OT13VarRegionList8evaluateEjPKijPNS_17hb_scalar_cache_tE.exit74.thread
  %i.cj = trunc nuw nsw i64 %indvars.iv.next to i32
  br label %.preheader231

.preheader231:                                    ; preds = %.preheader231.loopexit260, %.preheader231.loopexit, %bb.b
  %.055.lcssa = phi float [ 0.000000e+00, %bb.b ], [ %.156.us, %.preheader231.loopexit ], [ %.156, %.preheader231.loopexit260 ] ; 3 uses
  %.054.lcssa = phi i32 [ 0, %bb.b ], [ %i.ci, %.preheader231.loopexit ], [ %i.cj, %.preheader231.loopexit260 ] ; 4 uses
  %.053.lcssa = phi ptr [ %i.y, %bb.b ], [ %i.cf, %.preheader231.loopexit ], [ %i.gz, %.preheader231.loopexit260 ] ; 3 uses
  %i.ck = icmp ult i32 %.054.lcssa, %i.n
  br i1 %i.ck, label %.lr.ph244, label %.preheader

.lr.ph244:                                        ; preds = %.preheader231
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 6 ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %4, i64 2 ; 2 uses
  %.not14.i65 = icmp eq ptr %5, null
  %i.cn = getelementptr inbounds nuw i8, ptr %5, i64 4
  %i.co = getelementptr inbounds nuw i8, ptr %4, i64 4 ; 2 uses
  %i.cp = zext i32 %3 to i64                      ; 2 uses
  br i1 %.not14.i65, label %.lr.ph244.split.us, label %.lr.ph244.split.preheader

.lr.ph244.split.preheader:                        ; preds = %.lr.ph244
  %i.cq = zext nneg i32 %.054.lcssa to i64
  %wide.trip.count = zext nneg i32 %i.n to i64
  br label %.lr.ph244.split

.lr.ph244.split.us:                               ; preds = %.lr.ph244
  %i.cr = load i16, ptr %i.cm, align 1, !tbaa !62
  %i.cs = tail call noundef i16 @llvm.bswap.i16(i16 %i.cr)
  %i.ct = zext nneg i32 %.054.lcssa to i64
  %wide.trip.count278 = zext nneg i32 %i.n to i64
  br label %bb.j

bb.j:                                             ; preds = %_ZNK2OT13VarRegionList8evaluateEjPKijPNS_17hb_scalar_cache_tE.exit68.thread.us, %.lr.ph244.split.us
  %indvars.iv275 = phi i64 [ %indvars.iv.next276, %_ZNK2OT13VarRegionList8evaluateEjPKijPNS_17hb_scalar_cache_tE.exit68.thread.us ], [ %i.ct, %.lr.ph244.split.us ] ; 2 uses
  %.052242.us = phi ptr [ %i.ep, %_ZNK2OT13VarRegionList8evaluateEjPKijPNS_17hb_scalar_cache_tE.exit68.thread.us ], [ %.053.lcssa, %.lr.ph244.split.us ] ; 2 uses
  %.257240.us = phi float [ %.3.us, %_ZNK2OT13VarRegionList8evaluateEjPKijPNS_17hb_scalar_cache_tE.exit68.thread.us ], [ %.055.lcssa, %.lr.ph244.split.us ] ; 6 uses
  %i.cu = getelementptr inbounds nuw [2 x i8], ptr %i.cl, i64 %indvars.iv275
  %i.cv = load i16, ptr %i.cu, align 1, !tbaa !62
  %i.cw = tail call noundef i16 @llvm.bswap.i16(i16 %i.cv) ; 2 uses
  %.not.i63.us = icmp ult i16 %i.cw, %i.cs
  br i1 %.not.i63.us, label %.critedge.i67.us, label %_ZNK2OT13VarRegionList8evaluateEjPKijPNS_17hb_scalar_cache_tE.exit68.thread.us, !prof !33

.critedge.i67.us:                                 ; preds = %bb.j
  %i.cx = zext i16 %i.cw to i64
  %i.cy = load i16, ptr %4, align 1, !tbaa !62    ; 2 uses
  %i.cz = tail call noundef i16 @llvm.bswap.i16(i16 %i.cy)
  %i.da = zext i16 %i.cz to i64                   ; 2 uses
  %i.db = mul nuw nsw i64 %i.da, %i.cx
  %i.dc = getelementptr inbounds nuw [6 x i8], ptr %i.co, i64 %i.db
  %.not.i129.us = icmp eq i16 %i.cy, 0
  br i1 %.not.i129.us, label %_ZNK2OT13VarRegionList8evaluateEjPKijPNS_17hb_scalar_cache_tE.exit68.thread210.us, label %.lr.ph.i132.us

.lr.ph.i132.us:                                   ; preds = %.critedge.i67.us, %_ZNK2OT13VarRegionAxis8evaluateEi.exit.thread.i144.us
  %indvars.iv.i133.us = phi i64 [ %indvars.iv.next.i146.us, %_ZNK2OT13VarRegionAxis8evaluateEi.exit.thread.i144.us ], [ 0, %.critedge.i67.us ] ; 4 uses
  %.01726.i134.us = phi float [ %.121.i145.us, %_ZNK2OT13VarRegionAxis8evaluateEi.exit.thread.i144.us ], [ 1.000000e+00, %.critedge.i67.us ] ; 4 uses
  %i.dd = icmp samesign ult i64 %indvars.iv.i133.us, %i.cp
  br i1 %i.dd, label %bb.k, label %bb.l

bb.k:                                             ; preds = %.lr.ph.i132.us
  %i.de = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv.i133.us
  %i.df = load i32, ptr %i.de, align 4, !tbaa !19
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %.lr.ph.i132.us
  %i.dg = phi i32 [ %i.df, %bb.k ], [ 0, %.lr.ph.i132.us ] ; 7 uses
  %i.dh = getelementptr inbounds nuw [6 x i8], ptr %i.dc, i64 %indvars.iv.i133.us ; 3 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 2
  %i.dj = load i16, ptr %i.di, align 1, !tbaa !62 ; 2 uses
  %i.dk = tail call noundef i16 @llvm.bswap.i16(i16 %i.dj) ; 3 uses
  %i.dl = sext i16 %i.dk to i32                   ; 4 uses
  %i.dm = icmp eq i16 %i.dj, 0
  %i.dn = icmp eq i32 %i.dg, %i.dl
  %or.cond.i.i135.us = or i1 %i.dm, %i.dn
  br i1 %or.cond.i.i135.us, label %_ZNK2OT13VarRegionAxis8evaluateEi.exit.thread.i144.us, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.do = icmp eq i32 %i.dg, 0
  br i1 %i.do, label %_ZNK2OT13VarRegionList8evaluateEjPKijPNS_17hb_scalar_cache_tE.exit68.thread.us, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.dp = load i16, ptr %i.dh, align 1, !tbaa !62
  %i.dq = tail call noundef i16 @llvm.bswap.i16(i16 %i.dp) ; 3 uses
  %i.dr = sext i16 %i.dq to i32                   ; 3 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dh, i64 4
  %i.dt = load i16, ptr %i.ds, align 1, !tbaa !62
  %i.du = tail call noundef i16 @llvm.bswap.i16(i16 %i.dt) ; 3 uses
  %i.dv = sext i16 %i.du to i32                   ; 3 uses
  %i.dw = icmp sgt i16 %i.dq, %i.dk
  %i.dx = icmp sgt i16 %i.dk, %i.du
  %i.dy = or i1 %i.dw, %i.dx
  br i1 %i.dy, label %_ZNK2OT13VarRegionAxis8evaluateEi.exit.thread.i144.us, label %bb.o, !prof !32

bb.o:                                             ; preds = %bb.n
  %i.dz = icmp slt i16 %i.dq, 0
  %i.ea = icmp sgt i16 %i.du, 0
  %i.eb = and i1 %i.dz, %i.ea
  br i1 %i.eb, label %_ZNK2OT13VarRegionAxis8evaluateEi.exit.thread.i144.us, label %bb.p, !prof !32

bb.p:                                             ; preds = %bb.o
  %.not.i.i136.us = icmp sgt i32 %i.dg, %i.dr
  %.not29.i.i137.us = icmp slt i32 %i.dg, %i.dv
  %or.cond30.i.i138.us = and i1 %.not.i.i136.us, %.not29.i.i137.us
  br i1 %or.cond30.i.i138.us, label %_ZNK2OT13VarRegionAxis8evaluateEi.exit.i140.us, label %_ZNK2OT13VarRegionList8evaluateEjPKijPNS_17hb_scalar_cache_tE.exit68.thread.us

_ZNK2OT13VarRegionAxis8evaluateEi.exit.i140.us:   ; preds = %bb.p
  %i.ec = icmp slt i32 %i.dg, %i.dl               ; 2 uses
  %i.ed = sub nsw i32 %i.dg, %i.dr
  %i.ee = sub nsw i32 %i.dl, %i.dr
  %i.ef = sub nsw i32 %i.dv, %i.dg
  %i.eg = sub nsw i32 %i.dv, %i.dl
  %.sink40.i141.us = select i1 %i.ec, i32 %i.ee, i32 %i.eg
  %.sink.in.i142.us = select i1 %i.ec, i32 %i.ed, i32 %i.ef
  %.sink.i143.us = sitofp i32 %.sink.in.i142.us to float
  %i.eh = sitofp i32 %.sink40.i141.us to float
  %i.ei = fdiv float %.sink.i143.us, %i.eh        ; 2 uses
  %i.ej = fcmp une float %i.ei, 0.000000e+00
  %i.ek = fmul float %.01726.i134.us, %i.ei
  br i1 %i.ej, label %_ZNK2OT13VarRegionAxis8evaluateEi.exit.thread.i144.us, label %_ZNK2OT13VarRegionList8evaluateEjPKijPNS_17hb_scalar_cache_tE.exit68.thread.us

_ZNK2OT13VarRegionAxis8evaluateEi.exit.thread.i144.us: ; preds = %_ZNK2OT13VarRegionAxis8evaluateEi.exit.i140.us, %bb.o, %bb.n, %bb.l
  %.121.i145.us = phi float [ %i.ek, %_ZNK2OT13VarRegionAxis8evaluateEi.exit.i140.us ], [ %.01726.i134.us, %bb.l ], [ %.01726.i134.us, %bb.n ], [ %.01726.i134.us, %bb.o ] ; 3 uses
  %indvars.iv.next.i146.us = add nuw nsw i64 %indvars.iv.i133.us, 1 ; 2 uses
  %exitcond.not.i147.us = icmp eq i64 %indvars.iv.next.i146.us, %i.da
  br i1 %exitcond.not.i147.us, label %_ZNK2OT13VarRegionList8evaluateEjPKijPNS_17hb_scalar_cache_tE.exit68.loopexit.us, label %.lr.ph.i132.us, !llvm.loop !578

_ZNK2OT13VarRegionList8evaluateEjPKijPNS_17hb_scalar_cache_tE.exit68.loopexit.us: ; preds = %_ZNK2OT13VarRegionAxis8evaluateEi.exit.thread.i144.us
  %6 = fcmp une float %.121.i145.us, 0.000000e+00
  br i1 %6, label %_ZNK2OT13VarRegionList8evaluateEjPKijPNS_17hb_scalar_cache_tE.exit68.thread210.us, label %_ZNK2OT13VarRegionList8evaluateEjPKijPNS_17hb_scalar_cache_tE.exit68.thread.us

_ZNK2OT13VarRegionList8evaluateEjPKijPNS_17hb_scalar_cache_tE.exit68.thread210.us: ; preds = %_ZNK2OT13VarRegionList8evaluateEjPKijPNS_17hb_scalar_cache_tE.exit68.loopexit.us, %.critedge.i67.us
  %.1.i64212.us = phi float [ %.121.i145.us, %_ZNK2OT13VarRegionList8evaluateEjPKijPNS_17hb_scalar_cache_tE.exit68.loopexit.us ], [ 1.000000e+00, %.critedge.i67.us ]
  %i.el = load i16, ptr %.052242.us, align 1, !tbaa !62
  %i.em = tail call noundef i16 @llvm.bswap.i16(i16 %i.el)
  %i.en = sitofp i16 %i.em to float
  %i.eo = tail call float @llvm.fmuladd.f32(float %.1.i64212.us, float %i.en, float %.257240.us)
  br label %_ZNK2OT13VarRegionList8evaluateEjPKijPNS_17hb_scalar_cache_tE.exit68.thread.us

_ZNK2OT13VarRegionList8evaluateEjPKijPNS_17hb_scalar_cache_tE.exit68.thread.us: ; preds = %bb.m, %bb.p, %_ZNK2OT13VarRegionAxis8evaluateEi.exit.i140.us, %_ZNK2OT13VarRegionList8evaluateEjPKijPNS_17hb_scalar_cache_tE.exit68.thread210.us, %_ZNK2OT13VarRegionList8evaluateEjPKijPNS_17hb_scalar_cache_tE.exit68.loopexit.us, %bb.j
  %.3.us = phi float [ %i.eo, %_ZNK2OT13VarRegionList8evaluateEjPKijPNS_17hb_scalar_cache_tE.exit68.thread210.us ], [ %.257240.us, %_ZNK2OT13VarRegionList8evaluateEjPKijPNS_17hb_scalar_cache_tE.exit68.loopexit.us ], [ %.257240.us, %bb.j ], [ %.257240.us, %_ZNK2OT13VarRegionAxis8evaluateEi.exit.i140.us ], [ %.257240.us, %bb.p ], [ %.257240.us, %bb.m ] ; 2 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %.052242.us, i64 2 ; 2 uses
  %indvars.iv.next276 = add nuw nsw i64 %indvars.iv275, 1 ; 2 uses
  %exitcond279.not = icmp eq i64 %indvars.iv.next276, %wide.trip.count278
  br i1 %exitcond279.not, label %.preheader, label %bb.j, !llvm.loop !580

.lr.ph.split:                                     ; preds = %.lr.ph.split.preheader, %_ZNK2OT13VarRegionList8evaluateEjPKijPNS_17hb_scalar_cache_tE.exit74.thread
  %indvars.iv = phi i64 [ 0, %.lr.ph.split.preheader ], [ %indvars.iv.next, %_ZNK2OT13VarRegionList8evaluateEjPKijPNS_17hb_scalar_cache_tE.exit74.thread ] ; 2 uses
  %.053234 = phi ptr [ %i.y, %.lr.ph.split.preheader ], [ %i.gz, %_ZNK2OT13VarRegionList8evaluateEjPKijPNS_17hb_scalar_cache_tE.exit74.thread ] ; 2 uses
  %.055232 = phi float [ 0.000000e+00, %.lr.ph.split.preheader ], [ %.156, %_ZNK2OT13VarRegionList8evaluateEjPKijPNS_17hb_scalar_cache_tE.exit74.thread ] ; 5 uses
  %i.eq = getelementptr inbounds nuw [2 x i8], ptr %i.ab, i64 %indvars.iv
  %i.er = load i16, ptr %i.eq, align 1, !tbaa !62
  %i.es = tail call noundef i16 @llvm.bswap.i16(i16 %i.er) ; 3 uses
  %i.et = zext i16 %i.es to i32                   ; 2 uses
  %i.eu = load i16, ptr %i.ac, align 1, !tbaa !62
  %i.ev = tail call noundef i16 @llvm.bswap.i16(i16 %i.eu)
  %.not.i69 = icmp ult i16 %i.es, %i.ev
  br i1 %.not.i69, label %bb.q, label %_ZNK2OT13VarRegionList8evaluateEjPKijPNS_17hb_scalar_cache_tE.exit74.thread, !prof !33

bb.q:                                             ; preds = %.lr.ph.split
  %i.ew = load i32, ptr %5, align 4, !tbaa !66
  %.not.i75 = icmp ugt i32 %i.ew, %i.et
  br i1 %.not.i75, label %bb.r, label %_ZNK2OT13VarRegionList8evaluateEjPKijPNS_17hb_scalar_cache_tE.exit74.thread, !prof !33

bb.r:                                             ; preds = %bb.q
  %i.ex = zext i16 %i.es to i64
  %i.ey = getelementptr inbounds nuw [4 x i8], ptr %i.ad, i64 %i.ex ; 2 uses
  %i.ez = load atomic i32, ptr %i.ey monotonic, align 4 ; 2 uses
  switch i32 %i.ez, label %bb.s [
    i32 0, label %_ZNK2OT13VarRegionList8evaluateEjPKijPNS_17hb_scalar_cache_tE.exit74.thread
    i32 -2147483648, label %_ZNK2OT17hb_scalar_cache_t3getEjPf.exit
  ], !prof !582

bb.s:                                             ; preds = %bb.r
  %i.fa = sitofp i32 %i.ez to float
  %i.fb = fmul nnan float %i.fa, f0x30800000
  br label %_ZNK2OT13VarRegionList8evaluateEjPKijPNS_17hb_scalar_cache_tE.exit74

_ZNK2OT17hb_scalar_cache_t3getEjPf.exit:          ; preds = %bb.r
  %i.fc = load i16, ptr %4, align 1, !tbaa !62    ; 2 uses
  %i.fd = tail call noundef i16 @llvm.bswap.i16(i16 %i.fc) ; 2 uses
  %i.fe = zext i16 %i.fd to i32
  %i.ff = mul nuw i32 %i.fe, %i.et
  %i.fg = zext i32 %i.ff to i64
  %i.fh = getelementptr inbounds nuw [6 x i8], ptr %i.ae, i64 %i.fg
  %.not.i88 = icmp eq i16 %i.fc, 0
  br i1 %.not.i88, label %_ZNK2OT13VarRegionList13evaluate_implEjPKij.exit.thread, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %_ZNK2OT17hb_scalar_cache_t3getEjPf.exit
  %wide.trip.count.i = zext i16 %i.fd to i64
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZNK2OT13VarRegionAxis8evaluateEi.exit.thread.i, %.lr.ph.preheader.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i, %_ZNK2OT13VarRegionAxis8evaluateEi.exit.thread.i ] ; 4 uses
  %.01726.i = phi float [ 1.000000e+00, %.lr.ph.preheader.i ], [ %.121.i, %_ZNK2OT13VarRegionAxis8evaluateEi.exit.thread.i ] ; 4 uses
  %i.fi = icmp samesign ult i64 %indvars.iv.i, %i.af
  br i1 %i.fi, label %bb.t, label %bb.u

bb.t:                                             ; preds = %.lr.ph.i
  %i.fj = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv.i
  %i.fk = load i32, ptr %i.fj, align 4, !tbaa !19
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %.lr.ph.i
  %i.fl = phi i32 [ %i.fk, %bb.t ], [ 0, %.lr.ph.i ] ; 7 uses
  %i.fm = getelementptr inbounds nuw [6 x i8], ptr %i.fh, i64 %indvars.iv.i ; 3 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fm, i64 2
  %i.fo = load i16, ptr %i.fn, align 1, !tbaa !62 ; 2 uses
  %i.fp = tail call noundef i16 @llvm.bswap.i16(i16 %i.fo) ; 3 uses
  %i.fq = sext i16 %i.fp to i32                   ; 4 uses
  %i.fr = icmp eq i16 %i.fo, 0
  %i.fs = icmp eq i32 %i.fl, %i.fq
  %or.cond.i.i = or i1 %i.fr, %i.fs
  br i1 %or.cond.i.i, label %_ZNK2OT13VarRegionAxis8evaluateEi.exit.thread.i, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.ft = icmp eq i32 %i.fl, 0
  br i1 %i.ft, label %_ZNK2OT13VarRegionList13evaluate_implEjPKij.exit.thread, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.fu = load i16, ptr %i.fm, align 1, !tbaa !62
  %i.fv = tail call noundef i16 @llvm.bswap.i16(i16 %i.fu) ; 3 uses
  %i.fw = sext i16 %i.fv to i32                   ; 3 uses
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fm, i64 4
  %i.fy = load i16, ptr %i.fx, align 1, !tbaa !62
  %i.fz = tail call noundef i16 @llvm.bswap.i16(i16 %i.fy) ; 3 uses
  %i.ga = sext i16 %i.fz to i32                   ; 3 uses
  %i.gb = icmp sgt i16 %i.fv, %i.fp
  %i.gc = icmp sgt i16 %i.fp, %i.fz
  %i.gd = or i1 %i.gb, %i.gc
  br i1 %i.gd, label %_ZNK2OT13VarRegionAxis8evaluateEi.exit.thread.i, label %bb.x, !prof !32

bb.x:                                             ; preds = %bb.w
  %i.ge = icmp slt i16 %i.fv, 0
  %i.gf = icmp sgt i16 %i.fz, 0
  %i.gg = and i1 %i.ge, %i.gf
  br i1 %i.gg, label %_ZNK2OT13VarRegionAxis8evaluateEi.exit.thread.i, label %bb.y, !prof !32

bb.y:                                             ; preds = %bb.x
  %.not.i.i = icmp sgt i32 %i.fl, %i.fw
  %.not29.i.i = icmp slt i32 %i.fl, %i.ga
  %or.cond30.i.i = and i1 %.not.i.i, %.not29.i.i
  br i1 %or.cond30.i.i, label %_ZNK2OT13VarRegionAxis8evaluateEi.exit.i, label %_ZNK2OT13VarRegionList13evaluate_implEjPKij.exit.thread

_ZNK2OT13VarRegionAxis8evaluateEi.exit.i:         ; preds = %bb.y
  %i.gh = icmp slt i32 %i.fl, %i.fq               ; 2 uses
  %i.gi = sub nsw i32 %i.fl, %i.fw
  %i.gj = sub nsw i32 %i.fq, %i.fw
  %i.gk = sub nsw i32 %i.ga, %i.fl
  %i.gl = sub nsw i32 %i.ga, %i.fq
  %.sink40.i = select i1 %i.gh, i32 %i.gj, i32 %i.gl
  %.sink.in.i = select i1 %i.gh, i32 %i.gi, i32 %i.gk
  %.sink.i = sitofp i32 %.sink.in.i to float
  %i.gm = sitofp i32 %.sink40.i to float
  %i.gn = fdiv float %.sink.i, %i.gm              ; 2 uses
  %i.go = fcmp une float %i.gn, 0.000000e+00
  %i.gp = fmul float %.01726.i, %i.gn
  br i1 %i.go, label %_ZNK2OT13VarRegionAxis8evaluateEi.exit.thread.i, label %_ZNK2OT13VarRegionList13evaluate_implEjPKij.exit.thread

_ZNK2OT13VarRegionAxis8evaluateEi.exit.thread.i:  ; preds = %_ZNK2OT13VarRegionAxis8evaluateEi.exit.i, %bb.x, %bb.w, %bb.u
  %.121.i = phi float [ %i.gp, %_ZNK2OT13VarRegionAxis8evaluateEi.exit.i ], [ %.01726.i, %bb.u ], [ %.01726.i, %bb.w ], [ %.01726.i, %bb.x ] ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %_ZNK2OT13VarRegionList13evaluate_implEjPKij.exit.thread, label %.lr.ph.i, !llvm.loop !578

_ZNK2OT13VarRegionList13evaluate_implEjPKij.exit.thread: ; preds = %bb.v, %bb.y, %_ZNK2OT13VarRegionAxis8evaluateEi.exit.i, %_ZNK2OT13VarRegionAxis8evaluateEi.exit.thread.i, %_ZNK2OT17hb_scalar_cache_t3getEjPf.exit
  %.2.i198 = phi float [ 1.000000e+00, %_ZNK2OT17hb_scalar_cache_t3getEjPf.exit ], [ 0.000000e+00, %bb.y ], [ 0.000000e+00, %bb.v ], [ %.121.i, %_ZNK2OT13VarRegionAxis8evaluateEi.exit.thread.i ], [ 0.000000e+00, %_ZNK2OT13VarRegionAxis8evaluateEi.exit.i ] ; 2 uses
  %i.gq = fmul float %.2.i198, f0x4E800000
  %i.gr = fadd float %i.gq, 5.000000e-01
  %i.gs = tail call noundef float @llvm.floor.f32(float %i.gr)
  %i.gt = fptosi float %i.gs to i32
  store atomic i32 %i.gt, ptr %i.ey monotonic, align 4
  br label %_ZNK2OT13VarRegionList8evaluateEjPKijPNS_17hb_scalar_cache_tE.exit74

_ZNK2OT13VarRegionList8evaluateEjPKijPNS_17hb_scalar_cache_tE.exit74: ; preds = %bb.s, %_ZNK2OT13VarRegionList13evaluate_implEjPKij.exit.thread
  %.1.i70 = phi float [ %i.fb, %bb.s ], [ %.2.i198, %_ZNK2OT13VarRegionList13evaluate_implEjPKij.exit.thread ] ; 2 uses
  %i.gu = fcmp une float %.1.i70, 0.000000e+00
  br i1 %i.gu, label %_ZNK2OT13VarRegionList8evaluateEjPKijPNS_17hb_scalar_cache_tE.exit74.thread201, label %_ZNK2OT13VarRegionList8evaluateEjPKijPNS_17hb_scalar_cache_tE.exit74.thread

_ZNK2OT13VarRegionList8evaluateEjPKijPNS_17hb_scalar_cache_tE.exit74.thread201: ; preds = %_ZNK2OT13VarRegionList8evaluateEjPKijPNS_17hb_scalar_cache_tE.exit74
  %i.gv = load i32, ptr %.053234, align 1, !tbaa !64
  %i.gw = tail call noundef i32 @llvm.bswap.i32(i32 %i.gv)
  %i.gx = sitofp i32 %i.gw to float
  %i.gy = tail call float @llvm.fmuladd.f32(float %.1.i70, float %i.gx, float %.055232)
  br label %_ZNK2OT13VarRegionList8evaluateEjPKijPNS_17hb_scalar_cache_tE.exit74.thread

_ZNK2OT13VarRegionList8evaluateEjPKijPNS_17hb_scalar_cache_tE.exit74.thread: ; preds = %bb.r, %bb.q, %.lr.ph.split, %_ZNK2OT13VarRegionList8evaluateEjPKijPNS_17hb_scalar_cache_tE.exit74.thread201, %_ZNK2OT13VarRegionList8evaluateEjPKijPNS_17hb_scalar_cache_tE.exit74
  %.156 = phi float [ %i.gy, %_ZNK2OT13VarRegionList8evaluateEjPKijPNS_17hb_scalar_cache_tE.exit74.thread201 ], [ %.055232, %_ZNK2OT13VarRegionList8evaluateEjPKijPNS_17hb_scalar_cache_tE.exit74 ], [ %.055232, %.lr.ph.split ], [ %.055232, %bb.r ], [ %.055232, %bb.q ] ; 2 uses
  %i.gz = getelementptr inbounds nuw i8, ptr %.053234, i64 4 ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %i.ha = icmp samesign ult i64 %indvars.iv.next, %i.ag
  br i1 %i.ha, label %.lr.ph.split, label %.preheader231.loopexit260, !llvm.loop !579

.preheader:                                       ; preds = %_ZNK2OT13VarRegionList8evaluateEjPKijPNS_17hb_scalar_cache_tE.exit68.thread, %_ZNK2OT13VarRegionList8evaluateEjPKijPNS_17hb_scalar_cache_tE.exit68.thread.us, %.preheader231
  %.257.lcssa = phi float [ %.055.lcssa, %.preheader231 ], [ %.3.us, %_ZNK2OT13VarRegionList8evaluateEjPKijPNS_17hb_scalar_cache_tE.exit68.thread.us ], [ %.3, %_ZNK2OT13VarRegionList8evaluateEjPKijPNS_17hb_scalar_cache_tE.exit68.thread ] ; 3 uses
  %.1.lcssa = phi i32 [ %.054.lcssa, %.preheader231 ], [ %i.n, %_ZNK2OT13VarRegionList8evaluateEjPKijPNS_17hb_scalar_cache_tE.exit68.thread.us ], [ %i.n, %_ZNK2OT13VarRegionList8evaluateEjPKijPNS_17hb_scalar_cache_tE.exit68.thread ] ; 3 uses
  %.052.lcssa = phi ptr [ %.053.lcssa, %.preheader231 ], [ %i.ep, %_ZNK2OT13VarRegionList8evaluateEjPKijPNS_17hb_scalar_cache_tE.exit68.thread.us ], [ %i.lp, %_ZNK2OT13VarRegionList8evaluateEjPKijPNS_17hb_scalar_cache_tE.exit68.thread ] ; 2 uses
  %i.hb = icmp ult i32 %.1.lcssa, %i.j
  br i1 %i.hb, label %.lr.ph255, label %.loopexit

.lr.ph255:                                        ; preds = %.preheader
  %i.hc = getelementptr inbounds nuw i8, ptr %0, i64 6 ; 2 uses
  %i.hd = getelementptr inbounds nuw i8, ptr %4, i64 2 ; 2 uses
  %.not14.i = icmp eq ptr %5, null
  %i.he = getelementptr inbounds nuw i8, ptr %5, i64 4
  %i.hf = getelementptr inbounds nuw i8, ptr %4, i64 4 ; 2 uses
  %i.hg = zext i32 %3 to i64                      ; 2 uses
  br i1 %.not14.i, label %.lr.ph255.split.us, label %.lr.ph255.split.preheader

.lr.ph255.split.preheader:                        ; preds = %.lr.ph255
  %i.hh = zext nneg i32 %.1.lcssa to i64
  %wide.trip.count283 = zext i16 %i.i to i64
  br label %.lr.ph255.split

.lr.ph255.split.us:                               ; preds = %.lr.ph255
  %i.hi = load i16, ptr %i.hd, align 1, !tbaa !62
  %i.hj = tail call noundef i16 @llvm.bswap.i16(i16 %i.hi)
  %i.hk = zext nneg i32 %.1.lcssa to i64
  %wide.trip.count288 = zext i16 %i.i to i64
  br label %bb.z

bb.z:                                             ; preds = %_ZNK2OT13VarRegionList8evaluateEjPKijPNS_17hb_scalar_cache_tE.exit.thread.us, %.lr.ph255.split.us
  %indvars.iv285 = phi i64 [ %indvars.iv.next286, %_ZNK2OT13VarRegionList8evaluateEjPKijPNS_17hb_scalar_cache_tE.exit.thread.us ], [ %i.hk, %.lr.ph255.split.us ] ; 2 uses
  %.0253.us = phi ptr [ %i.jf, %_ZNK2OT13VarRegionList8evaluateEjPKijPNS_17hb_scalar_cache_tE.exit.thread.us ], [ %.052.lcssa, %.lr.ph255.split.us ] ; 2 uses
  %.4251.us = phi float [ %.5.us, %_ZNK2OT13VarRegionList8evaluateEjPKijPNS_17hb_scalar_cache_tE.exit.thread.us ], [ %.257.lcssa, %.lr.ph255.split.us ] ; 6 uses
  %i.hl = getelementptr inbounds nuw [2 x i8], ptr %i.hc, i64 %indvars.iv285
  %i.hm = load i16, ptr %i.hl, align 1, !tbaa !62
  %i.hn = tail call noundef i16 @llvm.bswap.i16(i16 %i.hm) ; 2 uses
  %.not.i.us = icmp ult i16 %i.hn, %i.hj
  br i1 %.not.i.us, label %.critedge.i.us, label %_ZNK2OT13VarRegionList8evaluateEjPKijPNS_17hb_scalar_cache_tE.exit.thread.us, !prof !33

.critedge.i.us:                                   ; preds = %bb.z
  %i.ho = zext i16 %i.hn to i64
  %i.hp = load i16, ptr %4, align 1, !tbaa !62    ; 2 uses
  %i.hq = tail call noundef i16 @llvm.bswap.i16(i16 %i.hp)
  %i.hr = zext i16 %i.hq to i64                   ; 2 uses
  %i.hs = mul nuw nsw i64 %i.hr, %i.ho
  %i.ht = getelementptr inbounds nuw [6 x i8], ptr %i.hf, i64 %i.hs
  %.not.i169.us = icmp eq i16 %i.hp, 0
  br i1 %.not.i169.us, label %_ZNK2OT13VarRegionList8evaluateEjPKijPNS_17hb_scalar_cache_tE.exit.thread219.us, label %.lr.ph.i172.us

.lr.ph.i172.us:                                   ; preds = %.critedge.i.us, %_ZNK2OT13VarRegionAxis8evaluateEi.exit.thread.i184.us
  %indvars.iv.i173.us = phi i64 [ %indvars.iv.next.i186.us, %_ZNK2OT13VarRegionAxis8evaluateEi.exit.thread.i184.us ], [ 0, %.critedge.i.us ] ; 4 uses
  %.01726.i174.us = phi float [ %.121.i185.us, %_ZNK2OT13VarRegionAxis8evaluateEi.exit.thread.i184.us ], [ 1.000000e+00, %.critedge.i.us ] ; 4 uses
  %i.hu = icmp samesign ult i64 %indvars.iv.i173.us, %i.hg
  br i1 %i.hu, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %.lr.ph.i172.us
  %i.hv = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv.i173.us
  %i.hw = load i32, ptr %i.hv, align 4, !tbaa !19
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %.lr.ph.i172.us
  %i.hx = phi i32 [ %i.hw, %bb.aa ], [ 0, %.lr.ph.i172.us ] ; 7 uses
  %i.hy = getelementptr inbounds nuw [6 x i8], ptr %i.ht, i64 %indvars.iv.i173.us ; 3 uses
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hy, i64 2
  %i.ia = load i16, ptr %i.hz, align 1, !tbaa !62 ; 2 uses
  %i.ib = tail call noundef i16 @llvm.bswap.i16(i16 %i.ia) ; 3 uses
  %i.ic = sext i16 %i.ib to i32                   ; 4 uses
  %i.id = icmp eq i16 %i.ia, 0
  %i.ie = icmp eq i32 %i.hx, %i.ic
  %or.cond.i.i175.us = or i1 %i.id, %i.ie
  br i1 %or.cond.i.i175.us, label %_ZNK2OT13VarRegionAxis8evaluateEi.exit.thread.i184.us, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.if = icmp eq i32 %i.hx, 0
  br i1 %i.if, label %_ZNK2OT13VarRegionList8evaluateEjPKijPNS_17hb_scalar_cache_tE.exit.thread.us, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.ig = load i16, ptr %i.hy, align 1, !tbaa !62
  %i.ih = tail call noundef i16 @llvm.bswap.i16(i16 %i.ig) ; 3 uses
  %i.ii = sext i16 %i.ih to i32                   ; 3 uses
  %i.ij = getelementptr inbounds nuw i8, ptr %i.hy, i64 4
  %i.ik = load i16, ptr %i.ij, align 1, !tbaa !62
  %i.il = tail call noundef i16 @llvm.bswap.i16(i16 %i.ik) ; 3 uses
  %i.im = sext i16 %i.il to i32                   ; 3 uses
  %i.in = icmp sgt i16 %i.ih, %i.ib
  %i.io = icmp sgt i16 %i.ib, %i.il
  %i.ip = or i1 %i.in, %i.io
  br i1 %i.ip, label %_ZNK2OT13VarRegionAxis8evaluateEi.exit.thread.i184.us, label %bb.ae, !prof !32

bb.ae:                                            ; preds = %bb.ad
  %i.iq = icmp slt i16 %i.ih, 0
  %i.ir = icmp sgt i16 %i.il, 0
  %i.is = and i1 %i.iq, %i.ir
  br i1 %i.is, label %_ZNK2OT13VarRegionAxis8evaluateEi.exit.thread.i184.us, label %bb.af, !prof !32

bb.af:                                            ; preds = %bb.ae
  %.not.i.i176.us = icmp sgt i32 %i.hx, %i.ii
  %.not29.i.i177.us = icmp slt i32 %i.hx, %i.im
  %or.cond30.i.i178.us = and i1 %.not.i.i176.us, %.not29.i.i177.us
  br i1 %or.cond30.i.i178.us, label %_ZNK2OT13VarRegionAxis8evaluateEi.exit.i180.us, label %_ZNK2OT13VarRegionList8evaluateEjPKijPNS_17hb_scalar_cache_tE.exit.thread.us

_ZNK2OT13VarRegionAxis8evaluateEi.exit.i180.us:   ; preds = %bb.af
  %i.it = icmp slt i32 %i.hx, %i.ic               ; 2 uses
  %i.iu = sub nsw i32 %i.hx, %i.ii
  %i.iv = sub nsw i32 %i.ic, %i.ii
  %i.iw = sub nsw i32 %i.im, %i.hx
  %i.ix = sub nsw i32 %i.im, %i.ic
  %.sink40.i181.us = select i1 %i.it, i32 %i.iv, i32 %i.ix
  %.sink.in.i182.us = select i1 %i.it, i32 %i.iu, i32 %i.iw
  %.sink.i183.us = sitofp i32 %.sink.in.i182.us to float
  %i.iy = sitofp i32 %.sink40.i181.us to float
  %i.iz = fdiv float %.sink.i183.us, %i.iy        ; 2 uses
  %i.ja = fcmp une float %i.iz, 0.000000e+00
  %i.jb = fmul float %.01726.i174.us, %i.iz
  br i1 %i.ja, label %_ZNK2OT13VarRegionAxis8evaluateEi.exit.thread.i184.us, label %_ZNK2OT13VarRegionList8evaluateEjPKijPNS_17hb_scalar_cache_tE.exit.thread.us

_ZNK2OT13VarRegionAxis8evaluateEi.exit.thread.i184.us: ; preds = %_ZNK2OT13VarRegionAxis8evaluateEi.exit.i180.us, %bb.ae, %bb.ad, %bb.ab
  %.121.i185.us = phi float [ %i.jb, %_ZNK2OT13VarRegionAxis8evaluateEi.exit.i180.us ], [ %.01726.i174.us, %bb.ab ], [ %.01726.i174.us, %bb.ad ], [ %.01726.i174.us, %bb.ae ] ; 3 uses
  %indvars.iv.next.i186.us = add nuw nsw i64 %indvars.iv.i173.us, 1 ; 2 uses
  %exitcond.not.i187.us = icmp eq i64 %indvars.iv.next.i186.us, %i.hr
  br i1 %exitcond.not.i187.us, label %_ZNK2OT13VarRegionList8evaluateEjPKijPNS_17hb_scalar_cache_tE.exit.loopexit.us, label %.lr.ph.i172.us, !llvm.loop !578

_ZNK2OT13VarRegionList8evaluateEjPKijPNS_17hb_scalar_cache_tE.exit.loopexit.us: ; preds = %_ZNK2OT13VarRegionAxis8evaluateEi.exit.thread.i184.us
  %7 = fcmp une float %.121.i185.us, 0.000000e+00
  br i1 %7, label %_ZNK2OT13VarRegionList8evaluateEjPKijPNS_17hb_scalar_cache_tE.exit.thread219.us, label %_ZNK2OT13VarRegionList8evaluateEjPKijPNS_17hb_scalar_cache_tE.exit.thread.us

_ZNK2OT13VarRegionList8evaluateEjPKijPNS_17hb_scalar_cache_tE.exit.thread219.us: ; preds = %_ZNK2OT13VarRegionList8evaluateEjPKijPNS_17hb_scalar_cache_tE.exit.loopexit.us, %.critedge.i.us
  %.1.i221.us = phi float [ %.121.i185.us, %_ZNK2OT13VarRegionList8evaluateEjPKijPNS_17hb_scalar_cache_tE.exit.loopexit.us ], [ 1.000000e+00, %.critedge.i.us ]
  %i.jc = load i8, ptr %.0253.us, align 1, !tbaa !159
  %i.jd = sitofp i8 %i.jc to float
  %i.je = tail call float @llvm.fmuladd.f32(float %.1.i221.us, float %i.jd, float %.4251.us)
  br label %_ZNK2OT13VarRegionList8evaluateEjPKijPNS_17hb_scalar_cache_tE.exit.thread.us

_ZNK2OT13VarRegionList8evaluateEjPKijPNS_17hb_scalar_cache_tE.exit.thread.us: ; preds = %bb.ac, %bb.af, %_ZNK2OT13VarRegionAxis8evaluateEi.exit.i180.us, %_ZNK2OT13VarRegionList8evaluateEjPKijPNS_17hb_scalar_cache_tE.exit.thread219.us, %_ZNK2OT13VarRegionList8evaluateEjPKijPNS_17hb_scalar_cache_tE.exit.loopexit.us, %bb.z
  %.5.us = phi float [ %i.je, %_ZNK2OT13VarRegionList8evaluateEjPKijPNS_17hb_scalar_cache_tE.exit.thread219.us ], [ %.4251.us, %_ZNK2OT13VarRegionList8evaluateEjPKijPNS_17hb_scalar_cache_tE.exit.loopexit.us ], [ %.4251.us, %bb.z ], [ %.4251.us, %_ZNK2OT13VarRegionAxis8evaluateEi.exit.i180.us ], [ %.4251.us, %bb.af ], [ %.4251.us, %bb.ac ] ; 2 uses
  %i.jf = getelementptr inbounds nuw i8, ptr %.0253.us, i64 1
  %indvars.iv.next286 = add nuw nsw i64 %indvars.iv285, 1 ; 2 uses
  %exitcond289.not = icmp eq i64 %indvars.iv.next286, %wide.trip.count288
  br i1 %exitcond289.not, label %.loopexit, label %bb.z, !llvm.loop !581

.lr.ph244.split:                                  ; preds = %.lr.ph244.split.preheader, %_ZNK2OT13VarRegionList8evaluateEjPKijPNS_17hb_scalar_cache_tE.exit68.thread
  %indvars.iv272 = phi i64 [ %i.cq, %.lr.ph244.split.preheader ], [ %indvars.iv.next273, %_ZNK2OT13VarRegionList8evaluateEjPKijPNS_17hb_scalar_cache_tE.exit68.thread ] ; 2 uses
  %.052242 = phi ptr [ %.053.lcssa, %.lr.ph244.split.preheader ], [ %i.lp, %_ZNK2OT13VarRegionList8evaluateEjPKijPNS_17hb_scalar_cache_tE.exit68.thread ] ; 2 uses
  %.257240 = phi float [ %.055.lcssa, %.lr.ph244.split.preheader ], [ %.3, %_ZNK2OT13VarRegionList8evaluateEjPKijPNS_17hb_scalar_cache_tE.exit68.thread ] ; 5 uses
  %i.jg = getelementptr inbounds nuw [2 x i8], ptr %i.cl, i64 %indvars.iv272
  %i.jh = load i16, ptr %i.jg, align 1, !tbaa !62
  %i.ji = tail call noundef i16 @llvm.bswap.i16(i16 %i.jh) ; 3 uses
  %i.jj = zext i16 %i.ji to i32                   ; 2 uses
  %i.jk = load i16, ptr %i.cm, align 1, !tbaa !62
  %i.jl = tail call noundef i16 @llvm.bswap.i16(i16 %i.jk)
  %.not.i63 = icmp ult i16 %i.ji, %i.jl
  br i1 %.not.i63, label %bb.ag, label %_ZNK2OT13VarRegionList8evaluateEjPKijPNS_17hb_scalar_cache_tE.exit68.thread, !prof !33

bb.ag:                                            ; preds = %.lr.ph244.split
  %i.jm = load i32, ptr %5, align 4, !tbaa !66
  %.not.i77 = icmp ugt i32 %i.jm, %i.jj
  br i1 %.not.i77, label %bb.ah, label %_ZNK2OT13VarRegionList8evaluateEjPKijPNS_17hb_scalar_cache_tE.exit68.thread, !prof !33

bb.ah:                                            ; preds = %bb.ag
  %i.jn = zext i16 %i.ji to i64
  %i.jo = getelementptr inbounds nuw [4 x i8], ptr %i.cn, i64 %i.jn ; 2 uses
  %i.jp = load atomic i32, ptr %i.jo monotonic, align 4 ; 2 uses
  switch i32 %i.jp, label %bb.ai [
    i32 0, label %_ZNK2OT13VarRegionList8evaluateEjPKijPNS_17hb_scalar_cache_tE.exit68.thread
    i32 -2147483648, label %_ZNK2OT17hb_scalar_cache_t3getEjPf.exit79
  ], !prof !582

bb.ai:                                            ; preds = %bb.ah
  %i.jq = sitofp i32 %i.jp to float
  %i.jr = fmul nnan float %i.jq, f0x30800000
  br label %_ZNK2OT13VarRegionList8evaluateEjPKijPNS_17hb_scalar_cache_tE.exit68

_ZNK2OT17hb_scalar_cache_t3getEjPf.exit79:        ; preds = %bb.ah
  %i.js = load i16, ptr %4, align 1, !tbaa !62    ; 2 uses
  %i.jt = tail call noundef i16 @llvm.bswap.i16(i16 %i.js) ; 2 uses
  %i.ju = zext i16 %i.jt to i32
  %i.jv = mul nuw i32 %i.ju, %i.jj
  %i.jw = zext i32 %i.jv to i64
  %i.jx = getelementptr inbounds nuw [6 x i8], ptr %i.co, i64 %i.jw
  %.not.i109 = icmp eq i16 %i.js, 0
  br i1 %.not.i109, label %_ZNK2OT13VarRegionList13evaluate_implEjPKij.exit128.thread, label %.lr.ph.preheader.i110

.lr.ph.preheader.i110:                            ; preds = %_ZNK2OT17hb_scalar_cache_t3getEjPf.exit79
  %wide.trip.count.i111 = zext i16 %i.jt to i64
  br label %.lr.ph.i112

.lr.ph.i112:                                      ; preds = %_ZNK2OT13VarRegionAxis8evaluateEi.exit.thread.i124, %.lr.ph.preheader.i110
  %indvars.iv.i113 = phi i64 [ 0, %.lr.ph.preheader.i110 ], [ %indvars.iv.next.i126, %_ZNK2OT13VarRegionAxis8evaluateEi.exit.thread.i124 ] ; 4 uses
  %.01726.i114 = phi float [ 1.000000e+00, %.lr.ph.preheader.i110 ], [ %.121.i125, %_ZNK2OT13VarRegionAxis8evaluateEi.exit.thread.i124 ] ; 4 uses
  %i.jy = icmp samesign ult i64 %indvars.iv.i113, %i.cp
  br i1 %i.jy, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %.lr.ph.i112
  %i.jz = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv.i113
  %i.ka = load i32, ptr %i.jz, align 4, !tbaa !19
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %.lr.ph.i112
  %i.kb = phi i32 [ %i.ka, %bb.aj ], [ 0, %.lr.ph.i112 ] ; 7 uses
  %i.kc = getelementptr inbounds nuw [6 x i8], ptr %i.jx, i64 %indvars.iv.i113 ; 3 uses
  %i.kd = getelementptr inbounds nuw i8, ptr %i.kc, i64 2
  %i.ke = load i16, ptr %i.kd, align 1, !tbaa !62 ; 2 uses
  %i.kf = tail call noundef i16 @llvm.bswap.i16(i16 %i.ke) ; 3 uses
  %i.kg = sext i16 %i.kf to i32                   ; 4 uses
  %i.kh = icmp eq i16 %i.ke, 0
  %i.ki = icmp eq i32 %i.kb, %i.kg
  %or.cond.i.i115 = or i1 %i.kh, %i.ki
  br i1 %or.cond.i.i115, label %_ZNK2OT13VarRegionAxis8evaluateEi.exit.thread.i124, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.kj = icmp eq i32 %i.kb, 0
  br i1 %i.kj, label %_ZNK2OT13VarRegionList13evaluate_implEjPKij.exit128.thread, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.kk = load i16, ptr %i.kc, align 1, !tbaa !62
  %i.kl = tail call noundef i16 @llvm.bswap.i16(i16 %i.kk) ; 3 uses
  %i.km = sext i16 %i.kl to i32                   ; 3 uses
  %i.kn = getelementptr inbounds nuw i8, ptr %i.kc, i64 4
  %i.ko = load i16, ptr %i.kn, align 1, !tbaa !62
  %i.kp = tail call noundef i16 @llvm.bswap.i16(i16 %i.ko) ; 3 uses
  %i.kq = sext i16 %i.kp to i32                   ; 3 uses
  %i.kr = icmp sgt i16 %i.kl, %i.kf
  %i.ks = icmp sgt i16 %i.kf, %i.kp
  %i.kt = or i1 %i.kr, %i.ks
  br i1 %i.kt, label %_ZNK2OT13VarRegionAxis8evaluateEi.exit.thread.i124, label %bb.an, !prof !32

bb.an:                                            ; preds = %bb.am
  %i.ku = icmp slt i16 %i.kl, 0
  %i.kv = icmp sgt i16 %i.kp, 0
  %i.kw = and i1 %i.ku, %i.kv
  br i1 %i.kw, label %_ZNK2OT13VarRegionAxis8evaluateEi.exit.thread.i124, label %bb.ao, !prof !32

bb.ao:                                            ; preds = %bb.an
  %.not.i.i116 = icmp sgt i32 %i.kb, %i.km
  %.not29.i.i117 = icmp slt i32 %i.kb, %i.kq
  %or.cond30.i.i118 = and i1 %.not.i.i116, %.not29.i.i117
  br i1 %or.cond30.i.i118, label %_ZNK2OT13VarRegionAxis8evaluateEi.exit.i120, label %_ZNK2OT13VarRegionList13evaluate_implEjPKij.exit128.thread

_ZNK2OT13VarRegionAxis8evaluateEi.exit.i120:      ; preds = %bb.ao
  %i.kx = icmp slt i32 %i.kb, %i.kg               ; 2 uses
  %i.ky = sub nsw i32 %i.kb, %i.km
  %i.kz = sub nsw i32 %i.kg, %i.km
  %i.la = sub nsw i32 %i.kq, %i.kb
  %i.lb = sub nsw i32 %i.kq, %i.kg
  %.sink40.i121 = select i1 %i.kx, i32 %i.kz, i32 %i.lb
  %.sink.in.i122 = select i1 %i.kx, i32 %i.ky, i32 %i.la
  %.sink.i123 = sitofp i32 %.sink.in.i122 to float
  %i.lc = sitofp i32 %.sink40.i121 to float
  %i.ld = fdiv float %.sink.i123, %i.lc           ; 2 uses
  %i.le = fcmp une float %i.ld, 0.000000e+00
  %i.lf = fmul float %.01726.i114, %i.ld
  br i1 %i.le, label %_ZNK2OT13VarRegionAxis8evaluateEi.exit.thread.i124, label %_ZNK2OT13VarRegionList13evaluate_implEjPKij.exit128.thread

_ZNK2OT13VarRegionAxis8evaluateEi.exit.thread.i124: ; preds = %_ZNK2OT13VarRegionAxis8evaluateEi.exit.i120, %bb.an, %bb.am, %bb.ak
  %.121.i125 = phi float [ %i.lf, %_ZNK2OT13VarRegionAxis8evaluateEi.exit.i120 ], [ %.01726.i114, %bb.ak ], [ %.01726.i114, %bb.am ], [ %.01726.i114, %bb.an ] ; 2 uses
  %indvars.iv.next.i126 = add nuw nsw i64 %indvars.iv.i113, 1 ; 2 uses
  %exitcond.not.i127 = icmp eq i64 %indvars.iv.next.i126, %wide.trip.count.i111
  br i1 %exitcond.not.i127, label %_ZNK2OT13VarRegionList13evaluate_implEjPKij.exit128.thread, label %.lr.ph.i112, !llvm.loop !578

_ZNK2OT13VarRegionList13evaluate_implEjPKij.exit128.thread: ; preds = %bb.al, %bb.ao, %_ZNK2OT13VarRegionAxis8evaluateEi.exit.i120, %_ZNK2OT13VarRegionAxis8evaluateEi.exit.thread.i124, %_ZNK2OT17hb_scalar_cache_t3getEjPf.exit79
  %.2.i119207 = phi float [ 1.000000e+00, %_ZNK2OT17hb_scalar_cache_t3getEjPf.exit79 ], [ 0.000000e+00, %bb.ao ], [ 0.000000e+00, %bb.al ], [ %.121.i125, %_ZNK2OT13VarRegionAxis8evaluateEi.exit.thread.i124 ], [ 0.000000e+00, %_ZNK2OT13VarRegionAxis8evaluateEi.exit.i120 ] ; 2 uses
  %i.lg = fmul float %.2.i119207, f0x4E800000
  %i.lh = fadd float %i.lg, 5.000000e-01
  %i.li = tail call noundef float @llvm.floor.f32(float %i.lh)
  %i.lj = fptosi float %i.li to i32
  store atomic i32 %i.lj, ptr %i.jo monotonic, align 4
  br label %_ZNK2OT13VarRegionList8evaluateEjPKijPNS_17hb_scalar_cache_tE.exit68

_ZNK2OT13VarRegionList8evaluateEjPKijPNS_17hb_scalar_cache_tE.exit68: ; preds = %bb.ai, %_ZNK2OT13VarRegionList13evaluate_implEjPKij.exit128.thread
  %.1.i64 = phi float [ %i.jr, %bb.ai ], [ %.2.i119207, %_ZNK2OT13VarRegionList13evaluate_implEjPKij.exit128.thread ] ; 2 uses
  %i.lk = fcmp une float %.1.i64, 0.000000e+00
  br i1 %i.lk, label %_ZNK2OT13VarRegionList8evaluateEjPKijPNS_17hb_scalar_cache_tE.exit68.thread210, label %_ZNK2OT13VarRegionList8evaluateEjPKijPNS_17hb_scalar_cache_tE.exit68.thread

_ZNK2OT13VarRegionList8evaluateEjPKijPNS_17hb_scalar_cache_tE.exit68.thread210: ; preds = %_ZNK2OT13VarRegionList8evaluateEjPKijPNS_17hb_scalar_cache_tE.exit68
  %i.ll = load i16, ptr %.052242, align 1, !tbaa !62
  %i.lm = tail call noundef i16 @llvm.bswap.i16(i16 %i.ll)
  %i.ln = sitofp i16 %i.lm to float
  %i.lo = tail call float @llvm.fmuladd.f32(float %.1.i64, float %i.ln, float %.257240)
  br label %_ZNK2OT13VarRegionList8evaluateEjPKijPNS_17hb_scalar_cache_tE.exit68.thread

_ZNK2OT13VarRegionList8evaluateEjPKijPNS_17hb_scalar_cache_tE.exit68.thread: ; preds = %bb.ah, %bb.ag, %.lr.ph244.split, %_ZNK2OT13VarRegionList8evaluateEjPKijPNS_17hb_scalar_cache_tE.exit68.thread210, %_ZNK2OT13VarRegionList8evaluateEjPKijPNS_17hb_scalar_cache_tE.exit68
  %.3 = phi float [ %i.lo, %_ZNK2OT13VarRegionList8evaluateEjPKijPNS_17hb_scalar_cache_tE.exit68.thread210 ], [ %.257240, %_ZNK2OT13VarRegionList8evaluateEjPKijPNS_17hb_scalar_cache_tE.exit68 ], [ %.257240, %.lr.ph244.split ], [ %.257240, %bb.ah ], [ %.257240, %bb.ag ] ; 2 uses
  %i.lp = getelementptr inbounds nuw i8, ptr %.052242, i64 2 ; 2 uses
  %indvars.iv.next273 = add nuw nsw i64 %indvars.iv272, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next273, %wide.trip.count
  br i1 %exitcond.not, label %.preheader, label %.lr.ph244.split, !llvm.loop !580

.lr.ph255.split:                                  ; preds = %.lr.ph255.split.preheader, %_ZNK2OT13VarRegionList8evaluateEjPKijPNS_17hb_scalar_cache_tE.exit.thread
  %indvars.iv280 = phi i64 [ %i.hh, %.lr.ph255.split.preheader ], [ %indvars.iv.next281, %_ZNK2OT13VarRegionList8evaluateEjPKijPNS_17hb_scalar_cache_tE.exit.thread ] ; 2 uses
  %.0253 = phi ptr [ %.052.lcssa, %.lr.ph255.split.preheader ], [ %i.ny, %_ZNK2OT13VarRegionList8evaluateEjPKijPNS_17hb_scalar_cache_tE.exit.thread ] ; 2 uses
  %.4251 = phi float [ %.257.lcssa, %.lr.ph255.split.preheader ], [ %.5, %_ZNK2OT13VarRegionList8evaluateEjPKijPNS_17hb_scalar_cache_tE.exit.thread ] ; 5 uses
  %i.lq = getelementptr inbounds nuw [2 x i8], ptr %i.hc, i64 %indvars.iv280
  %i.lr = load i16, ptr %i.lq, align 1, !tbaa !62
  %i.ls = tail call noundef i16 @llvm.bswap.i16(i16 %i.lr) ; 3 uses
  %i.lt = zext i16 %i.ls to i32                   ; 2 uses
  %i.lu = load i16, ptr %i.hd, align 1, !tbaa !62
  %i.lv = tail call noundef i16 @llvm.bswap.i16(i16 %i.lu)
  %.not.i = icmp ult i16 %i.ls, %i.lv
  br i1 %.not.i, label %bb.ap, label %_ZNK2OT13VarRegionList8evaluateEjPKijPNS_17hb_scalar_cache_tE.exit.thread, !prof !33

bb.ap:                                            ; preds = %.lr.ph255.split
  %i.lw = load i32, ptr %5, align 4, !tbaa !66
  %.not.i80 = icmp ugt i32 %i.lw, %i.lt
  br i1 %.not.i80, label %bb.aq, label %_ZNK2OT13VarRegionList8evaluateEjPKijPNS_17hb_scalar_cache_tE.exit.thread, !prof !33

bb.aq:                                            ; preds = %bb.ap
  %i.lx = zext i16 %i.ls to i64
  %i.ly = getelementptr inbounds nuw [4 x i8], ptr %i.he, i64 %i.lx ; 2 uses
  %i.lz = load atomic i32, ptr %i.ly monotonic, align 4 ; 2 uses
  switch i32 %i.lz, label %bb.ar [
    i32 0, label %_ZNK2OT13VarRegionList8evaluateEjPKijPNS_17hb_scalar_cache_tE.exit.thread
    i32 -2147483648, label %_ZNK2OT17hb_scalar_cache_t3getEjPf.exit82
  ], !prof !582

bb.ar:                                            ; preds = %bb.aq
  %i.ma = sitofp i32 %i.lz to float
  %i.mb = fmul nnan float %i.ma, f0x30800000
  br label %_ZNK2OT13VarRegionList8evaluateEjPKijPNS_17hb_scalar_cache_tE.exit

_ZNK2OT17hb_scalar_cache_t3getEjPf.exit82:        ; preds = %bb.aq
  %i.mc = load i16, ptr %4, align 1, !tbaa !62    ; 2 uses
  %i.md = tail call noundef i16 @llvm.bswap.i16(i16 %i.mc) ; 2 uses
  %i.me = zext i16 %i.md to i32
  %i.mf = mul nuw i32 %i.me, %i.lt
  %i.mg = zext i32 %i.mf to i64
  %i.mh = getelementptr inbounds nuw [6 x i8], ptr %i.hf, i64 %i.mg
  %.not.i149 = icmp eq i16 %i.mc, 0
  br i1 %.not.i149, label %_ZNK2OT13VarRegionList13evaluate_implEjPKij.exit168.thread, label %.lr.ph.preheader.i150

.lr.ph.preheader.i150:                            ; preds = %_ZNK2OT17hb_scalar_cache_t3getEjPf.exit82
  %wide.trip.count.i151 = zext i16 %i.md to i64
  br label %.lr.ph.i152

.lr.ph.i152:                                      ; preds = %_ZNK2OT13VarRegionAxis8evaluateEi.exit.thread.i164, %.lr.ph.preheader.i150
  %indvars.iv.i153 = phi i64 [ 0, %.lr.ph.preheader.i150 ], [ %indvars.iv.next.i166, %_ZNK2OT13VarRegionAxis8evaluateEi.exit.thread.i164 ] ; 4 uses
  %.01726.i154 = phi float [ 1.000000e+00, %.lr.ph.preheader.i150 ], [ %.121.i165, %_ZNK2OT13VarRegionAxis8evaluateEi.exit.thread.i164 ] ; 4 uses
  %i.mi = icmp samesign ult i64 %indvars.iv.i153, %i.hg
  br i1 %i.mi, label %bb.as, label %bb.at

bb.as:                                            ; preds = %.lr.ph.i152
end_hunk_0
