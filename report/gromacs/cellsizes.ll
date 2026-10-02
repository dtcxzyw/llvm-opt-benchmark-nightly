Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/cellsizes?download=true
inline.NumInlined: 600
inline.NumDeleted: 275
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 12
loop-unroll.NumUnrolled: 14
begin_hunk_0_@_Z21set_dd_cell_sizes_slbP12gmx_domdec_tPK11gmx_ddbox_ti:bb.a
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <8 x i32> [ <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 5 uses
  %step.add = add <8 x i32> %vec.ind, splat (i32 8)
  %step.add.2 = add <8 x i32> %vec.ind, splat (i32 16)
  %step.add.3 = add <8 x i32> %vec.ind, splat (i32 24)
  %i.au = uitofp nneg <8 x i32> %vec.ind to <8 x float>
  %i.av = uitofp nneg <8 x i32> %step.add to <8 x float>
  %i.aw = uitofp nneg <8 x i32> %step.add.2 to <8 x float>
  %i.ax = uitofp nneg <8 x i32> %step.add.3 to <8 x float>
  %i.ay = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %i.au, <8 x float> %broadcast.splat, <8 x float> %broadcast.splat239)
  %i.az = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %i.av, <8 x float> %broadcast.splat, <8 x float> %broadcast.splat239)
  %i.ba = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %i.aw, <8 x float> %broadcast.splat, <8 x float> %broadcast.splat239)
  %i.bb = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %i.ax, <8 x float> %broadcast.splat, <8 x float> %broadcast.splat239)
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.ap, i64 %index ; 4 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 32
  %i.be = getelementptr inbounds nuw i8, ptr %i.bc, i64 64
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bc, i64 96
  store <8 x float> %i.ay, ptr %i.bc, align 4, !tbaa !120, !alias.scope !270, !noalias !269
  store <8 x float> %i.az, ptr %i.bd, align 4, !tbaa !120, !alias.scope !270, !noalias !269
  store <8 x float> %i.ba, ptr %i.be, align 4, !tbaa !120, !alias.scope !270, !noalias !269
  store <8 x float> %i.bb, ptr %i.bf, align 4, !tbaa !120, !alias.scope !270, !noalias !269
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %vec.ind.next = add <8 x i32> %vec.ind, splat (i32 32)
  %i.bg = icmp eq i64 %index.next, %n.vec
  br i1 %i.bg, label %middle.block, label %vector.body, !llvm.loop !258

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count205
  br i1 %cmp.n, label %.loopexit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.as, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !136

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ] ; 2 uses
  %n.vec240 = and i64 %wide.trip.count205, 4294967292 ; 3 uses
  %i.bh = load float, ptr %i.an, align 4, !tbaa !120, !alias.scope !269
  %broadcast.splatinsert247 = insertelement <4 x float> poison, float %i.bh, i64 0
  %broadcast.splat248 = shufflevector <4 x float> %broadcast.splatinsert247, <4 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert241 = insertelement <4 x float> poison, float %i.am, i64 0
  %broadcast.splat242 = shufflevector <4 x float> %broadcast.splatinsert241, <4 x float> poison, <4 x i32> zeroinitializer
  %i.bi = trunc nuw i64 %vec.epilog.resume.val to i32
  %broadcast.splatinsert243 = insertelement <4 x i32> poison, i32 %i.bi, i64 0
  %broadcast.splat244 = shufflevector <4 x i32> %broadcast.splatinsert243, <4 x i32> poison, <4 x i32> zeroinitializer
  %induction = or disjoint <4 x i32> %broadcast.splat244, <i32 0, i32 1, i32 2, i32 3>
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index245 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next249, %vec.epilog.vector.body ] ; 2 uses
  %vec.ind246 = phi <4 x i32> [ %induction, %vec.epilog.ph ], [ %vec.ind.next250, %vec.epilog.vector.body ] ; 2 uses
  %i.bj = uitofp nneg <4 x i32> %vec.ind246 to <4 x float>
  %i.bk = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bj, <4 x float> %broadcast.splat242, <4 x float> %broadcast.splat248)
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %i.ap, i64 %index245
  store <4 x float> %i.bk, ptr %i.bl, align 4, !tbaa !120, !alias.scope !270, !noalias !269
  %index.next249 = add nuw i64 %index245, 4       ; 2 uses
  %vec.ind.next250 = add <4 x i32> %vec.ind246, splat (i32 4)
  %i.bm = icmp eq i64 %index.next249, %n.vec240
  br i1 %i.bm, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !259

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n251 = icmp eq i64 %n.vec240, %wide.trip.count205
  br i1 %cmp.n251, label %.loopexit, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv202.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec240, %vec.epilog.middle.block ] ; 4 uses
  %i.bn = sub nsw i64 %wide.trip.count205, %indvars.iv202.ph
  %i.bo = zext nneg i32 %i.ae to i64
  %i.bp = sub nsw i64 %i.bo, %indvars.iv202.ph
  %xtraiter267 = and i64 %i.bn, 7                 ; 2 uses
  %lcmp.mod268.not = icmp eq i64 %xtraiter267, 0
  br i1 %lcmp.mod268.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph.prol
  %indvars.iv202.prol = phi i64 [ %indvars.iv.next203.prol, %vec.epilog.scalar.ph.prol ], [ %indvars.iv202.ph, %vec.epilog.scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %vec.epilog.scalar.ph.prol ], [ 0, %vec.epilog.scalar.ph.preheader ]
  %i.bq = load float, ptr %i.an, align 4, !tbaa !120
  %i.br = trunc nuw nsw i64 %indvars.iv202.prol to i32
  %i.bs = uitofp nneg i32 %i.br to float
  %i.bt = tail call float @llvm.fmuladd.f32(float %i.bs, float %i.am, float %i.bq)
  %i.bu = getelementptr inbounds nuw [4 x i8], ptr %i.ap, i64 %indvars.iv202.prol
  store float %i.bt, ptr %i.bu, align 4, !tbaa !120
  %indvars.iv.next203.prol = add nuw nsw i64 %indvars.iv202.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter267
  br i1 %prol.iter.cmp.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol, !llvm.loop !260

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %indvars.iv202.unr = phi i64 [ %indvars.iv202.ph, %vec.epilog.scalar.ph.preheader ], [ %indvars.iv.next203.prol, %vec.epilog.scalar.ph.prol ]
  %i.bv = icmp ult i64 %i.bp, 7
  br i1 %i.bv, label %.loopexit, label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph
  %indvars.iv202 = phi i64 [ %indvars.iv.next203.7, %vec.epilog.scalar.ph ], [ %indvars.iv202.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 10 uses
  %i.bw = load float, ptr %i.an, align 4, !tbaa !120
  %i.bx = trunc nuw nsw i64 %indvars.iv202 to i32
  %i.by = uitofp nneg i32 %i.bx to float
  %i.bz = tail call float @llvm.fmuladd.f32(float %i.by, float %i.am, float %i.bw)
  %i.ca = getelementptr inbounds nuw [4 x i8], ptr %i.ap, i64 %indvars.iv202
  store float %i.bz, ptr %i.ca, align 4, !tbaa !120
  %indvars.iv.next203 = add nuw nsw i64 %indvars.iv202, 1 ; 2 uses
  %i.cb = load float, ptr %i.an, align 4, !tbaa !120
  %i.cc = trunc nuw nsw i64 %indvars.iv.next203 to i32
  %i.cd = uitofp nneg i32 %i.cc to float
  %i.ce = tail call float @llvm.fmuladd.f32(float %i.cd, float %i.am, float %i.cb)
  %i.cf = getelementptr inbounds nuw [4 x i8], ptr %i.ap, i64 %indvars.iv.next203
  store float %i.ce, ptr %i.cf, align 4, !tbaa !120
  %indvars.iv.next203.1 = add nuw nsw i64 %indvars.iv202, 2 ; 2 uses
  %i.cg = load float, ptr %i.an, align 4, !tbaa !120
  %i.ch = trunc nuw nsw i64 %indvars.iv.next203.1 to i32
  %i.ci = uitofp nneg i32 %i.ch to float
  %i.cj = tail call float @llvm.fmuladd.f32(float %i.ci, float %i.am, float %i.cg)
  %i.ck = getelementptr inbounds nuw [4 x i8], ptr %i.ap, i64 %indvars.iv.next203.1
  store float %i.cj, ptr %i.ck, align 4, !tbaa !120
  %indvars.iv.next203.2 = add nuw nsw i64 %indvars.iv202, 3 ; 2 uses
  %i.cl = load float, ptr %i.an, align 4, !tbaa !120
  %i.cm = trunc nuw nsw i64 %indvars.iv.next203.2 to i32
  %i.cn = uitofp nneg i32 %i.cm to float
  %i.co = tail call float @llvm.fmuladd.f32(float %i.cn, float %i.am, float %i.cl)
  %i.cp = getelementptr inbounds nuw [4 x i8], ptr %i.ap, i64 %indvars.iv.next203.2
  store float %i.co, ptr %i.cp, align 4, !tbaa !120
  %indvars.iv.next203.3 = add nuw nsw i64 %indvars.iv202, 4 ; 2 uses
  %i.cq = load float, ptr %i.an, align 4, !tbaa !120
  %i.cr = trunc nuw nsw i64 %indvars.iv.next203.3 to i32
  %i.cs = uitofp nneg i32 %i.cr to float
  %i.ct = tail call float @llvm.fmuladd.f32(float %i.cs, float %i.am, float %i.cq)
  %i.cu = getelementptr inbounds nuw [4 x i8], ptr %i.ap, i64 %indvars.iv.next203.3
  store float %i.ct, ptr %i.cu, align 4, !tbaa !120
  %indvars.iv.next203.4 = add nuw nsw i64 %indvars.iv202, 5 ; 2 uses
  %i.cv = load float, ptr %i.an, align 4, !tbaa !120
  %i.cw = trunc nuw nsw i64 %indvars.iv.next203.4 to i32
  %i.cx = uitofp nneg i32 %i.cw to float
  %i.cy = tail call float @llvm.fmuladd.f32(float %i.cx, float %i.am, float %i.cv)
  %i.cz = getelementptr inbounds nuw [4 x i8], ptr %i.ap, i64 %indvars.iv.next203.4
  store float %i.cy, ptr %i.cz, align 4, !tbaa !120
  %indvars.iv.next203.5 = add nuw nsw i64 %indvars.iv202, 6 ; 2 uses
  %i.da = load float, ptr %i.an, align 4, !tbaa !120
  %i.db = trunc nuw nsw i64 %indvars.iv.next203.5 to i32
  %i.dc = uitofp nneg i32 %i.db to float
  %i.dd = tail call float @llvm.fmuladd.f32(float %i.dc, float %i.am, float %i.da)
  %i.de = getelementptr inbounds nuw [4 x i8], ptr %i.ap, i64 %indvars.iv.next203.5
  store float %i.dd, ptr %i.de, align 4, !tbaa !120
  %indvars.iv.next203.6 = add nuw nsw i64 %indvars.iv202, 7 ; 2 uses
  %i.df = load float, ptr %i.an, align 4, !tbaa !120
  %i.dg = trunc nuw nsw i64 %indvars.iv.next203.6 to i32
  %i.dh = uitofp nneg i32 %i.dg to float
  %i.di = tail call float @llvm.fmuladd.f32(float %i.dh, float %i.am, float %i.df)
  %i.dj = getelementptr inbounds nuw [4 x i8], ptr %i.ap, i64 %indvars.iv.next203.6
  store float %i.di, ptr %i.dj, align 4, !tbaa !120
  %indvars.iv.next203.7 = add nuw nsw i64 %indvars.iv202, 8 ; 2 uses
  %exitcond206.not.7 = icmp eq i64 %indvars.iv.next203.7, %wide.trip.count205
  br i1 %exitcond206.not.7, label %.loopexit, label %vec.epilog.scalar.ph, !llvm.loop !261

bb.h:                                             ; preds = %bb.g
  %i.dk = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %indvars.iv207 ; 2 uses
  %i.dl = load float, ptr %i.dk, align 4, !tbaa !120
  %i.dm = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %indvars.iv207
  %i.dn = load i32, ptr %i.dm, align 4, !tbaa !129 ; 2 uses
  %i.do = sitofp i32 %i.dn to float
  %i.dp = tail call float @llvm.fmuladd.f32(float %i.do, float %i.am, float %i.dl)
  %i.dq = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %indvars.iv207
  store float %i.dp, ptr %i.dq, align 4, !tbaa !120
  %i.dr = load float, ptr %i.dk, align 4, !tbaa !120
  %i.ds = add nsw i32 %i.dn, 1
  %i.dt = sitofp i32 %i.ds to float
  %i.du = tail call float @llvm.fmuladd.f32(float %i.dt, float %i.am, float %i.dr)
  %i.dv = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %indvars.iv207
  store float %i.du, ptr %i.dv, align 4, !tbaa !120
  br label %.loopexit

.loopexit:                                        ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %middle.block, %vec.epilog.middle.block, %.preheader, %bb.g, %bb.h
  %i.dw = load float, ptr %i.z, align 4, !tbaa !120
  %i.dx = fmul float %i.am, %i.dw                 ; 2 uses
  %i.dy = load float, ptr %i.p, align 4, !tbaa !138
  br label %bb.i

bb.i:                                             ; preds = %bb.i, %.loopexit
  %.0136 = phi i32 [ 1, %.loopexit ], [ %i.ec, %bb.i ] ; 3 uses
  %i.dz = uitofp nneg i32 %.0136 to float
  %i.ea = fmul float %i.dx, %i.dz
  %i.eb = fcmp olt float %i.ea, %i.dy
  %i.ec = add nuw nsw i32 %.0136, 1
  br i1 %i.eb, label %bb.i, label %bb.j, !llvm.loop !262

bb.j:                                             ; preds = %bb.i
  store float %i.dx, ptr %i.ac, align 4, !tbaa !120
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit142

bb.k:                                             ; preds = %bb.f
  br i1 %i.e, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.ed = getelementptr inbounds nuw [24 x i8], ptr %.sroa.0166.0, i64 %indvars.iv207
  %i.ee = load ptr, ptr %i.ed, align 8, !tbaa !132
  br label %_ZNSt6vectorIfSaIfEE6resizeEm.exit

bb.m:                                             ; preds = %bb.k
  %i.ef = add nsw i32 %i.ae, 1                    ; 2 uses
  %i.eg = sext i32 %i.ef to i64                   ; 3 uses
  %.not173 = icmp ne i32 %i.ef, 0
  tail call void @llvm.assume(i1 %.not173)
  %i.eh = icmp slt i32 %i.ae, -1
  br i1 %i.eh, label %.noexc143, label %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i

.noexc143:                                        ; preds = %bb.m
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.5) #19
  unreachable

_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i:  ; preds = %bb.m
  %i.ei = shl nuw nsw i64 %i.eg, 2
  %i.ej = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ei) #20 ; 5 uses
  store float 0.000000e+00, ptr %i.ej, align 4, !tbaa !120
  %i.ek = add nsw i64 %i.eg, -1                   ; 2 uses
  %i.el = icmp eq i64 %i.ek, 0
  br i1 %i.el, label %.noexc, label %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i30.i

_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i30.i: ; preds = %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i
  %i.em = getelementptr i8, ptr %i.ej, i64 4
  %.idx.i.i.i.i.i31.i = shl nuw nsw i64 %i.ek, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.em, i8 0, i64 %.idx.i.i.i.i.i31.i, i1 false), !tbaa !120
  br label %.noexc

.noexc:                                           ; preds = %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i30.i, %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i
  %i.en = getelementptr inbounds nuw [4 x i8], ptr %i.ej, i64 %i.eg
  %i.eo = ptrtoint ptr %i.en to i64
  %.pre = load i32, ptr %i.ad, align 4, !tbaa !129
  br label %_ZNSt6vectorIfSaIfEE6resizeEm.exit

_ZNSt6vectorIfSaIfEE6resizeEm.exit:               ; preds = %.noexc, %bb.l
  %i.ep = phi i32 [ %i.ae, %bb.l ], [ %.pre, %.noexc ] ; 5 uses
  %.sroa.16.0 = phi i64 [ 0, %bb.l ], [ %i.eo, %.noexc ]
  %.sroa.0149.0 = phi ptr [ null, %bb.l ], [ %i.ej, %.noexc ] ; 3 uses
  %.sroa.0159.0 = phi ptr [ %i.ee, %bb.l ], [ %i.ej, %.noexc ] ; 5 uses
  %i.eq = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %indvars.iv207
  %i.er = load float, ptr %i.eq, align 4, !tbaa !120 ; 3 uses
  store float %i.er, ptr %.sroa.0159.0, align 4, !tbaa !120
  %i.es = icmp sgt i32 %i.ep, 0
  br i1 %i.es, label %.lr.ph, label %bb.o

.lr.ph:                                           ; preds = %_ZNSt6vectorIfSaIfEE6resizeEm.exit
  %i.et = load ptr, ptr %i.ag, align 8, !tbaa !132 ; 3 uses
  %i.eu = add nsw i32 %i.ep, -1                   ; 3 uses
  %wide.trip.count = zext nneg i32 %i.ep to i64   ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.ev = icmp eq i32 %i.ep, 1
  br i1 %i.ev, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %wide.trip.count, 2147483646
  br label %bb.p

._crit_edge.unr-lcssa:                            ; preds = %.critedge.1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.unr-lcssa, %.lr.ph
  %.epil.init = phi float [ %i.er, %.lr.ph ], [ %i.gh, %._crit_edge.unr-lcssa ]
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next.1, %._crit_edge.unr-lcssa ] ; 2 uses
  %.epil.init263 = phi float [ %i.ab, %.lr.ph ], [ %.sroa.speculated.1, %._crit_edge.unr-lcssa ] ; 2 uses
  %.1181.epil.init = phi i32 [ 1, %.lr.ph ], [ %.2.1, %._crit_edge.unr-lcssa ]
  %lcmp.mod266 = trunc i32 %i.ep to i1
  tail call void @llvm.assume(i1 %lcmp.mod266)
  %i.ew = load float, ptr %i.x, align 4, !tbaa !120
  %i.ex = getelementptr inbounds nuw [4 x i8], ptr %i.et, i64 %indvars.iv.epil.init
  %i.ey = load float, ptr %i.ex, align 4, !tbaa !120
  %i.ez = fmul float %i.ew, %i.ey                 ; 2 uses
  %i.fa = fadd float %.epil.init, %i.ez
  %i.fb = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0159.0, i64 %indvars.iv.epil.init
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fb, i64 4
  store float %i.fa, ptr %i.fc, align 4, !tbaa !120
  %i.fd = load float, ptr %i.z, align 4, !tbaa !120
  %i.fe = fmul float %i.ez, %i.fd                 ; 3 uses
  %i.ff = load float, ptr %i.p, align 4, !tbaa !138
  br label %bb.n

bb.n:                                             ; preds = %bb.n, %.epil.preheader
  %.2.epil = phi i32 [ %.1181.epil.init, %.epil.preheader ], [ %i.fk, %bb.n ] ; 4 uses
  %i.fg = sitofp i32 %.2.epil to float
  %i.fh = fmul float %i.fe, %i.fg
  %i.fi = fcmp olt float %i.fh, %i.ff
  %i.fj = icmp slt i32 %.2.epil, %i.eu
  %or.cond.epil = select i1 %i.fi, i1 %i.fj, i1 false
  %i.fk = add nsw i32 %.2.epil, 1
  br i1 %or.cond.epil, label %bb.n, label %.critedge.epil, !llvm.loop !263

.critedge.epil:                                   ; preds = %bb.n
  %i.fl = fcmp olt float %i.fe, %.epil.init263
  %.sroa.speculated.epil = select i1 %i.fl, float %i.fe, float %.epil.init263
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.unr-lcssa, %.critedge.epil
  %.sroa.speculated.lcssa = phi float [ %.sroa.speculated.1, %._crit_edge.unr-lcssa ], [ %.sroa.speculated.epil, %.critedge.epil ]
  %.2.lcssa.lcssa = phi i32 [ %.2.1, %._crit_edge.unr-lcssa ], [ %.2.epil, %.critedge.epil ]
  store float %.sroa.speculated.lcssa, ptr %i.ac, align 4, !tbaa !120
  br label %bb.o

bb.o:                                             ; preds = %._crit_edge, %_ZNSt6vectorIfSaIfEE6resizeEm.exit
  %.1.lcssa = phi i32 [ %.2.lcssa.lcssa, %._crit_edge ], [ 1, %_ZNSt6vectorIfSaIfEE6resizeEm.exit ] ; 2 uses
  br i1 %i.q, label %bb.s, label %bb.t

bb.p:                                             ; preds = %.critedge.1, %.lr.ph.new
  %i.fm = phi float [ %i.er, %.lr.ph.new ], [ %i.gh, %.critedge.1 ]
  %indvars.iv = phi i64 [ 0, %.lr.ph.new ], [ %indvars.iv.next.1, %.critedge.1 ] ; 3 uses
  %i.fn = phi float [ %i.ab, %.lr.ph.new ], [ %.sroa.speculated.1, %.critedge.1 ] ; 2 uses
  %.1181 = phi i32 [ 1, %.lr.ph.new ], [ %.2.1, %.critedge.1 ]
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.1, %.critedge.1 ]
  %i.fo = load float, ptr %i.x, align 4, !tbaa !120
  %i.fp = getelementptr inbounds nuw [4 x i8], ptr %i.et, i64 %indvars.iv
  %i.fq = load float, ptr %i.fp, align 4, !tbaa !120
  %i.fr = fmul float %i.fo, %i.fq                 ; 2 uses
  %i.fs = fadd float %i.fm, %i.fr                 ; 2 uses
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.ft = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0159.0, i64 %indvars.iv.next
  store float %i.fs, ptr %i.ft, align 4, !tbaa !120
  %i.fu = load float, ptr %i.z, align 4, !tbaa !120
  %i.fv = fmul float %i.fr, %i.fu                 ; 3 uses
  %i.fw = load float, ptr %i.p, align 4, !tbaa !138
  br label %bb.q

bb.q:                                             ; preds = %bb.q, %bb.p
  %.2 = phi i32 [ %.1181, %bb.p ], [ %i.gb, %bb.q ] ; 4 uses
  %i.fx = sitofp i32 %.2 to float
  %i.fy = fmul float %i.fv, %i.fx
  %i.fz = fcmp olt float %i.fy, %i.fw
  %i.ga = icmp slt i32 %.2, %i.eu
  %or.cond = select i1 %i.fz, i1 %i.ga, i1 false
  %i.gb = add nsw i32 %.2, 1
  br i1 %or.cond, label %bb.q, label %.critedge, !llvm.loop !263

.critedge:                                        ; preds = %bb.q
  %i.gc = fcmp olt float %i.fv, %i.fn
  %.sroa.speculated = select i1 %i.gc, float %i.fv, float %i.fn ; 2 uses
  %i.gd = load float, ptr %i.x, align 4, !tbaa !120
  %i.ge = getelementptr inbounds nuw [4 x i8], ptr %i.et, i64 %indvars.iv.next
  %i.gf = load float, ptr %i.ge, align 4, !tbaa !120
  %i.gg = fmul float %i.gd, %i.gf                 ; 2 uses
  %i.gh = fadd float %i.fs, %i.gg                 ; 3 uses
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 3 uses
  %i.gi = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0159.0, i64 %indvars.iv.next.1
  store float %i.gh, ptr %i.gi, align 4, !tbaa !120
  %i.gj = load float, ptr %i.z, align 4, !tbaa !120
  %i.gk = fmul float %i.gg, %i.gj                 ; 3 uses
  %i.gl = load float, ptr %i.p, align 4, !tbaa !138
  br label %bb.r

bb.r:                                             ; preds = %bb.r, %.critedge
  %.2.1 = phi i32 [ %.2, %.critedge ], [ %i.gq, %bb.r ] ; 6 uses
  %i.gm = sitofp i32 %.2.1 to float
  %i.gn = fmul float %i.gk, %i.gm
  %i.go = fcmp olt float %i.gn, %i.gl
  %i.gp = icmp slt i32 %.2.1, %i.eu
  %or.cond.1 = select i1 %i.go, i1 %i.gp, i1 false
  %i.gq = add nsw i32 %.2.1, 1
  br i1 %or.cond.1, label %bb.r, label %.critedge.1, !llvm.loop !263

.critedge.1:                                      ; preds = %bb.r
  %i.gr = fcmp olt float %i.gk, %.sroa.speculated
  %.sroa.speculated.1 = select i1 %i.gr, float %i.gk, float %.sroa.speculated ; 3 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.unr-lcssa, label %bb.p, !llvm.loop !264

bb.s:                                             ; preds = %bb.o
  %i.gs = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %indvars.iv207
  %i.gt = load i32, ptr %i.gs, align 4, !tbaa !129
  %i.gu = sext i32 %i.gt to i64
  %i.gv = getelementptr [4 x i8], ptr %.sroa.0159.0, i64 %i.gu ; 2 uses
  %i.gw = load float, ptr %i.gv, align 4, !tbaa !120
  %i.gx = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %indvars.iv207
  store float %i.gw, ptr %i.gx, align 4, !tbaa !120
  %i.gy = getelementptr i8, ptr %i.gv, i64 4
  %i.gz = load float, ptr %i.gy, align 4, !tbaa !120
  %i.ha = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %indvars.iv207
  store float %i.gz, ptr %i.ha, align 4, !tbaa !120
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.o
  %.not.i.i.i141 = icmp eq ptr %.sroa.0149.0, null
  br i1 %.not.i.i.i141, label %_ZNSt6vectorIfSaIfEED2Ev.exit142, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.hb = ptrtoint ptr %.sroa.0149.0 to i64
  %i.hc = sub i64 %.sroa.16.0, %i.hb
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0149.0, i64 noundef %i.hc) #21
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit142

_ZNSt6vectorIfSaIfEED2Ev.exit142:                 ; preds = %bb.u, %bb.t, %bb.j
  %.3 = phi i32 [ %.0136, %bb.j ], [ %.1.lcssa, %bb.t ], [ %.1.lcssa, %bb.u ] ; 2 uses
  %i.hd = load i32, ptr %1, align 4, !tbaa !140
  %i.he = sext i32 %i.hd to i64
  %i.hf = icmp slt i64 %indvars.iv207, %i.he
  br i1 %i.hf, label %bb.v, label %bb.ab

bb.v:                                             ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit142
  %i.hg = load i32, ptr %i.ad, align 4, !tbaa !129 ; 2 uses
  %i.hh = icmp slt i32 %i.hg, 2
  %.not138 = icmp slt i32 %.3, %i.hg
  %or.cond172 = or i1 %i.hh, %.not138
  br i1 %or.cond172, label %bb.ab, label %bb.w

bb.w:                                             ; preds = %bb.v
end_hunk_0
