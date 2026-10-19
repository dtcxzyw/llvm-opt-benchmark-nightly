Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ncnn/original/deconvolution_x86_avx512?download=true
inline.NumInlined: 20
inline.NumDeleted: 6
loop-unroll.NumCompletelyUnrolled: 96
loop-unroll.NumRuntimeUnrolled: 19
loop-unroll.NumUnrolled: 115
begin_hunk_0_@_ZNK4ncnn24Deconvolution_x86_avx5127forwardERKSt6vectorINS_3MatESaIS2_EERS4_RKNS_6OptionE:bb.a
  %i.cz = mul i64 %i.cw, %i.cy
  %i.da = icmp eq i64 %i.cz, 0
  br i1 %i.da, label %_ZNK4ncnn3Mat5emptyEv.exit212.thread, label %.preheader215

.preheader215:                                    ; preds = %_ZNK4ncnn3Mat5emptyEv.exit212
  %i.db = load ptr, ptr %4, align 16, !tbaa !20   ; 3 uses
  %i.dc = icmp slt i32 %i.n, 1
  %i.dd = icmp slt i32 %i.h, 1
  %i.de = icmp slt i32 %i.cp, 1
  %brmerge = select i1 %i.dc, i1 true, i1 %i.dd
  %brmerge227 = or i1 %brmerge, %i.de
  br i1 %brmerge227, label %.split, label %.preheader214.preheader

.preheader214.preheader:                          ; preds = %.preheader215
  %i.df = zext nneg i32 %i.n to i64               ; 4 uses
  %i.dg = zext nneg i32 %i.cp to i64              ; 14 uses
  %i.dh = zext nneg i32 %i.h to i64               ; 4 uses
  %i.di = mul nuw nsw i64 %i.dh, %i.dg
  %i.dj = shl nuw i64 %i.di, 2                    ; 2 uses
  %i.dk = shl nuw nsw i64 %i.dg, 2
  %i.dl = add nuw nsw i64 %i.dh, 4611686018427387903
  %i.dm = mul i64 %i.dl, %i.df
  %i.dn = shl i64 %i.dm, 2
  %i.do = add i64 %i.dn, 4
  %i.dp = mul i64 %i.do, %i.dg
  %i.dq = mul nuw nsw i64 %i.df, %i.dg
  %i.dr = getelementptr i8, ptr %i.cu, i64 %i.dj
  %i.ds = getelementptr i8, ptr %i.db, i64 %i.dp
  %min.iters.check = icmp ult i32 %i.cp, 8
  %stride.check = icmp samesign ugt i64 %i.dq, 2305843009213693951
  %min.iters.check315 = icmp ult i32 %i.cp, 64
  %i.dt = and i64 %i.dg, 56
  %n.vec = and i64 %i.dg, 2147483584              ; 4 uses
  %cmp.n = icmp eq i64 %n.vec, %i.dg
  %min.epilog.iters.check = icmp eq i64 %i.dt, 0
  %n.vec319 = and i64 %i.dg, 2147483640           ; 3 uses
  %cmp.n323 = icmp eq i64 %n.vec319, %i.dg
  %xtraiter = and i64 %i.dg, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br label %.preheader214

bb.ac:                                            ; preds = %_ZNK4ncnn3Mat8elembitsEv.exit211.thread
  %i.du = landingpad { ptr, i32 }
          cleanup
  br label %bb.es

.split:                                           ; preds = %._crit_edge218, %.preheader215
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #9
  %i.dv = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 4 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 5 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %7, i64 24 ; 5 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %7, i64 32 ; 6 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %7, i64 40 ; 2 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %7, i64 44 ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %7, i64 56 ; 3 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %7, i64 64 ; 4 uses
  store i64 0, ptr %i.ec, align 16, !tbaa !21
  %i.ed = getelementptr inbounds nuw i8, ptr %0, i64 268 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(28) %7, i8 0, i64 28, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(28) %i.dy, i8 0, i64 28, i1 false)
  %i.ee = load i32, ptr %i.ed, align 4, !tbaa !1229
  %.not = icmp eq i32 %i.ee, 0
  br i1 %.not, label %bb.bd, label %bb.ad

.preheader214:                                    ; preds = %.preheader214.preheader, %._crit_edge218
  %indvars.iv235 = phi i64 [ 0, %.preheader214.preheader ], [ %indvars.iv.next236, %._crit_edge218 ] ; 5 uses
  %i.ef = mul i64 %i.dj, %indvars.iv235           ; 2 uses
  %scevgep = getelementptr i8, ptr %i.cu, i64 %i.ef
  %scevgep312 = getelementptr i8, ptr %i.dr, i64 %i.ef
  %i.eg = mul i64 %i.dk, %indvars.iv235           ; 2 uses
  %scevgep313 = getelementptr i8, ptr %i.db, i64 %i.eg
  %scevgep314 = getelementptr i8, ptr %i.ds, i64 %i.eg
  %i.eh = mul nuw nsw i64 %indvars.iv235, %i.dh
  %bound0 = icmp ult ptr %scevgep, %scevgep314
  %bound1 = icmp ult ptr %scevgep313, %scevgep312
  %found.conflict = and i1 %bound0, %bound1
  %i.ei = or i1 %found.conflict, %stride.check
  br label %iter.check

iter.check:                                       ; preds = %.preheader214, %._crit_edge
  %indvars.iv230 = phi i64 [ 0, %.preheader214 ], [ %indvars.iv.next231, %._crit_edge ] ; 3 uses
  %i.ej = mul nuw nsw i64 %indvars.iv230, %i.df
  %i.ek = add nuw nsw i64 %i.ej, %indvars.iv235
  %i.el = mul nuw nsw i64 %i.ek, %i.dg
  %i.em = add nuw nsw i64 %indvars.iv230, %i.eh
  %i.en = mul nuw nsw i64 %i.em, %i.dg
  %invariant.gep = getelementptr inbounds nuw [4 x i8], ptr %i.db, i64 %i.el ; 7 uses
  %invariant.gep310 = getelementptr inbounds nuw [4 x i8], ptr %i.cu, i64 %i.en ; 7 uses
  %brmerge324 = select i1 %min.iters.check, i1 true, i1 %i.ei
  br i1 %brmerge324, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  br i1 %min.iters.check315, label %vec.epilog.ph, label %vector.body

vector.body:                                      ; preds = %vector.main.loop.iter.check, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.main.loop.iter.check ] ; 3 uses
  %i.eo = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep, i64 %index ; 4 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 64
  %i.eq = getelementptr inbounds nuw i8, ptr %i.eo, i64 128
  %i.er = getelementptr inbounds nuw i8, ptr %i.eo, i64 192
  %wide.load = load <16 x float>, ptr %i.eo, align 4, !tbaa !39, !alias.scope !1230
  %wide.load316 = load <16 x float>, ptr %i.ep, align 4, !tbaa !39, !alias.scope !1230
  %wide.load317 = load <16 x float>, ptr %i.eq, align 4, !tbaa !39, !alias.scope !1230
  %wide.load318 = load <16 x float>, ptr %i.er, align 4, !tbaa !39, !alias.scope !1230
  %i.es = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep310, i64 %index ; 4 uses
  %i.et = getelementptr inbounds nuw i8, ptr %i.es, i64 64
  %i.eu = getelementptr inbounds nuw i8, ptr %i.es, i64 128
  %i.ev = getelementptr inbounds nuw i8, ptr %i.es, i64 192
  store <16 x float> %wide.load, ptr %i.es, align 4, !tbaa !39, !alias.scope !1231, !noalias !1230
  store <16 x float> %wide.load316, ptr %i.et, align 4, !tbaa !39, !alias.scope !1231, !noalias !1230
  store <16 x float> %wide.load317, ptr %i.eu, align 4, !tbaa !39, !alias.scope !1231, !noalias !1230
  store <16 x float> %wide.load318, ptr %i.ev, align 4, !tbaa !39, !alias.scope !1231, !noalias !1230
  %index.next = add nuw i64 %index, 64            ; 2 uses
  %i.ew = icmp eq i64 %index.next, %n.vec
  br i1 %i.ew, label %middle.block, label %vector.body, !llvm.loop !1221

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !65

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index320 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next322, %vec.epilog.vector.body ] ; 3 uses
  %i.ex = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep, i64 %index320
  %wide.load321 = load <8 x float>, ptr %i.ex, align 4, !tbaa !39, !alias.scope !1230
  %i.ey = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep310, i64 %index320
  store <8 x float> %wide.load321, ptr %i.ey, align 4, !tbaa !39, !alias.scope !1231, !noalias !1230
  %index.next322 = add nuw i64 %index320, 8       ; 2 uses
  %i.ez = icmp eq i64 %index.next322, %n.vec319
  br i1 %i.ez, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !1222

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  br i1 %cmp.n323, label %._crit_edge, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.ph = phi i64 [ 0, %iter.check ], [ %n.vec319, %vec.epilog.middle.block ], [ %n.vec, %vec.epilog.iter.check ] ; 3 uses
  br i1 %lcmp.mod.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph.prol
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %vec.epilog.scalar.ph.prol ], [ %indvars.iv.ph, %vec.epilog.scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %vec.epilog.scalar.ph.prol ], [ 0, %vec.epilog.scalar.ph.preheader ]
  %gep.prol = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep, i64 %indvars.iv.prol
  %i.fa = load float, ptr %gep.prol, align 4, !tbaa !39
  %gep311.prol = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep310, i64 %indvars.iv.prol
  store float %i.fa, ptr %gep311.prol, align 4, !tbaa !39
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol, !llvm.loop !1223

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %vec.epilog.scalar.ph.preheader ], [ %indvars.iv.next.prol, %vec.epilog.scalar.ph.prol ]
  %i.fb = sub nsw i64 %indvars.iv.ph, %i.dg
  %i.fc = icmp ugt i64 %i.fb, -4
  br i1 %i.fc, label %._crit_edge, label %vec.epilog.scalar.ph

._crit_edge218:                                   ; preds = %._crit_edge
  %indvars.iv.next236 = add nuw nsw i64 %indvars.iv235, 1 ; 2 uses
  %exitcond239.not = icmp eq i64 %indvars.iv.next236, %i.df
  br i1 %exitcond239.not, label %.split, label %.preheader214, !llvm.loop !1224

._crit_edge:                                      ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block
  %indvars.iv.next231 = add nuw nsw i64 %indvars.iv230, 1 ; 2 uses
  %exitcond234.not = icmp eq i64 %indvars.iv.next231, %i.dh
  br i1 %exitcond234.not, label %._crit_edge218, label %iter.check, !llvm.loop !1225

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %vec.epilog.scalar.ph ], [ %indvars.iv.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 6 uses
  %gep = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep, i64 %indvars.iv
  %i.fd = load float, ptr %gep, align 4, !tbaa !39
  %gep311 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep310, i64 %indvars.iv
  store float %i.fd, ptr %gep311, align 4, !tbaa !39
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %gep.1 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep, i64 %indvars.iv.next
  %i.fe = load float, ptr %gep.1, align 4, !tbaa !39
  %gep311.1 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep310, i64 %indvars.iv.next
  store float %i.fe, ptr %gep311.1, align 4, !tbaa !39
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %gep.2 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep, i64 %indvars.iv.next.1
  %i.ff = load float, ptr %gep.2, align 4, !tbaa !39
  %gep311.2 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep310, i64 %indvars.iv.next.1
  store float %i.ff, ptr %gep311.2, align 4, !tbaa !39
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv, 3 ; 2 uses
  %gep.3 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep, i64 %indvars.iv.next.2
  %i.fg = load float, ptr %gep.3, align 4, !tbaa !39
  %gep311.3 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep310, i64 %indvars.iv.next.2
  store float %i.fg, ptr %gep311.3, align 4, !tbaa !39
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next.3, %i.dg
  br i1 %exitcond.not.3, label %._crit_edge, label %vec.epilog.scalar.ph, !llvm.loop !1226

bb.ad:                                            ; preds = %.split
  %i.fh = load ptr, ptr %1, align 8, !tbaa !1227
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fh, i64 144
  invoke void @_ZN4ncnn7flattenERKNS_3MatERS0_RKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(72) %i.fi, ptr noundef nonnull align 8 dereferenceable(72) %7, ptr noundef nonnull align 8 dereferenceable(64) %3)
          to label %bb.ae unwind label %bb.ct

bb.ae:                                            ; preds = %bb.ad
  %i.fj = load ptr, ptr %7, align 16, !tbaa !20
  %i.fk = icmp eq ptr %i.fj, null
  br i1 %i.fk, label %.critedge, label %_ZNK4ncnn3Mat5emptyEv.exit

_ZNK4ncnn3Mat5emptyEv.exit:                       ; preds = %bb.ae
  %i.fl = load i64, ptr %i.ec, align 16, !tbaa !21
  %i.fm = load i32, ptr %i.eb, align 8, !tbaa !64
  %i.fn = sext i32 %i.fm to i64
  %i.fo = mul i64 %i.fl, %i.fn
  %i.fp = icmp eq i64 %i.fo, 0
  br i1 %i.fp, label %.critedge, label %bb.af

bb.af:                                            ; preds = %_ZNK4ncnn3Mat5emptyEv.exit
  %i.fq = load i32, ptr %i.dx, align 8, !tbaa !62 ; 3 uses
  %.not.i208 = icmp eq i32 %i.fq, 0
  %.pre244 = load i64, ptr %i.dw, align 16, !tbaa !56 ; 3 uses
  br i1 %.not.i208, label %_ZNK4ncnn3Mat8elembitsEv.exit.thread, label %_ZNK4ncnn3Mat8elembitsEv.exit

_ZNK4ncnn3Mat8elembitsEv.exit:                    ; preds = %bb.af
  %.tr.i = trunc i64 %.pre244 to i32
  %i.fr = shl i32 %.tr.i, 3
  %i.fs = sdiv i32 %i.fr, %i.fq
  %i.ft = icmp eq i32 %i.fs, 16
  br i1 %i.ft, label %bb.ag, label %_ZNK4ncnn3Mat8elembitsEv.exit.thread

bb.ag:                                            ; preds = %_ZNK4ncnn3Mat8elembitsEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #9
  %i.fu = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 3 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.fw = getelementptr inbounds nuw i8, ptr %8, i64 24
  %i.fx = getelementptr inbounds nuw i8, ptr %8, i64 32 ; 4 uses
  %i.fy = getelementptr inbounds nuw i8, ptr %8, i64 40
  %i.fz = getelementptr inbounds nuw i8, ptr %8, i64 56
  %i.ga = getelementptr inbounds nuw i8, ptr %8, i64 64 ; 2 uses
  store i64 0, ptr %i.ga, align 16, !tbaa !21
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(28) %8, i8 0, i64 28, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(28) %i.fx, i8 0, i64 28, i1 false)
  invoke void @_ZN4ncnn24cast_bfloat16_to_float32ERKNS_3MatERS0_RKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(72) %7, ptr noundef nonnull align 8 dereferenceable(72) %8, ptr noundef nonnull align 8 dereferenceable(64) %3)
          to label %bb.ah unwind label %bb.aw

bb.ah:                                            ; preds = %bb.ag
  %i.gb = load ptr, ptr %i.fu, align 8, !tbaa !18 ; 2 uses
  %.not.i194 = icmp eq ptr %i.gb, null
  br i1 %.not.i194, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.gc = atomicrmw add ptr %i.gb, i32 1 acq_rel, align 4 ; 0 uses
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ah
  %i.gd = load ptr, ptr %i.dv, align 8, !tbaa !18 ; 2 uses
  %.not.i.i195 = icmp eq ptr %i.gd, null
  br i1 %.not.i.i195, label %bb.ap, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.ge = atomicrmw add ptr %i.gd, i32 -1 acq_rel, align 4
  %i.gf = icmp eq i32 %i.ge, 1
  br i1 %i.gf, label %bb.al, label %bb.ap

bb.al:                                            ; preds = %bb.ak
  %i.gg = load ptr, ptr %i.dy, align 16, !tbaa !19 ; 3 uses
  %.not3.i.i196 = icmp eq ptr %i.gg, null
  %i.gh = load ptr, ptr %7, align 16, !tbaa !20   ; 3 uses
  br i1 %.not3.i.i196, label %bb.an, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.gi = load ptr, ptr %i.gg, align 8, !tbaa !12
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gi, i64 24
  %i.gk = load ptr, ptr %i.gj, align 8
  invoke void %i.gk(ptr noundef nonnull align 8 dereferenceable(8) %i.gg, ptr noundef %i.gh)
          to label %bb.ap unwind label %bb.aw, !inline_history !1

bb.an:                                            ; preds = %bb.al
  %.not.i18.i197 = icmp eq ptr %i.gh, null
  br i1 %.not.i18.i197, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  call void @free(ptr noundef nonnull %i.gh) #9
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ak, %bb.aj, %bb.am, %bb.ao, %bb.an
  %i.gl = load ptr, ptr %i.fu, align 8, !tbaa !18 ; 2 uses
  %i.gm = load <2 x ptr>, ptr %8, align 16, !tbaa !61
  store <2 x ptr> %i.gm, ptr %7, align 16, !tbaa !61
  %i.gn = load i64, ptr %i.fv, align 16, !tbaa !56
  store i64 %i.gn, ptr %i.dw, align 16, !tbaa !56
  %i.go = load i32, ptr %i.fw, align 8, !tbaa !62
  store i32 %i.go, ptr %i.dx, align 8, !tbaa !62
  %i.gp = load ptr, ptr %i.fx, align 16, !tbaa !19
  store ptr %i.gp, ptr %i.dy, align 16, !tbaa !19
  %i.gq = load <4 x i32>, ptr %i.fy, align 8, !tbaa !63
  store <4 x i32> %i.gq, ptr %i.dz, align 8, !tbaa !63
  %i.gr = load i32, ptr %i.fz, align 8, !tbaa !64
  store i32 %i.gr, ptr %i.eb, align 8, !tbaa !64
  %i.gs = load i64, ptr %i.ga, align 16, !tbaa !21
  store i64 %i.gs, ptr %i.ec, align 16, !tbaa !21
  %.not.i122 = icmp eq ptr %i.gl, null
  br i1 %.not.i122, label %_ZN4ncnn3MatD2Ev.exit115, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.gt = atomicrmw add ptr %i.gl, i32 -1 acq_rel, align 4
  %i.gu = icmp eq i32 %i.gt, 1
  br i1 %i.gu, label %bb.ar, label %_ZN4ncnn3MatD2Ev.exit115

bb.ar:                                            ; preds = %bb.aq
  %i.gv = load ptr, ptr %i.fx, align 16, !tbaa !19 ; 3 uses
  %.not3.i123 = icmp eq ptr %i.gv, null
  %i.gw = load ptr, ptr %8, align 16, !tbaa !20   ; 3 uses
  br i1 %.not3.i123, label %bb.at, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.gx = load ptr, ptr %i.gv, align 8, !tbaa !12
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gx, i64 24
  %i.gz = load ptr, ptr %i.gy, align 8
  invoke void %i.gz(ptr noundef nonnull align 8 dereferenceable(8) %i.gv, ptr noundef %i.gw)
          to label %_ZN4ncnn3MatD2Ev.exit115 unwind label %bb.av, !inline_history !0

bb.at:                                            ; preds = %bb.ar
  %.not.i179 = icmp eq ptr %i.gw, null
  br i1 %.not.i179, label %_ZN4ncnn3MatD2Ev.exit115, label %bb.au

bb.au:                                            ; preds = %bb.at
  call void @free(ptr noundef nonnull %i.gw) #9
  br label %_ZN4ncnn3MatD2Ev.exit115

bb.av:                                            ; preds = %bb.as
  %i.ha = landingpad { ptr, i32 }
          catch ptr null
  %i.hb = extractvalue { ptr, i32 } %i.ha, 0
  call void @__clang_call_terminate(ptr %i.hb) #24
  unreachable

_ZN4ncnn3MatD2Ev.exit115:                         ; preds = %bb.aq, %bb.ap, %bb.as, %bb.at, %bb.au
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #9
  %.pre242 = load i32, ptr %i.dx, align 8, !tbaa !62
  %.pre243 = load i64, ptr %i.dw, align 16, !tbaa !56
  br label %_ZNK4ncnn3Mat8elembitsEv.exit.thread

bb.aw:                                            ; preds = %bb.am, %bb.ag
  %i.hc = landingpad { ptr, i32 }
          cleanup
  %i.hd = load ptr, ptr %i.fu, align 8, !tbaa !18 ; 2 uses
  %.not.i126 = icmp eq ptr %i.hd, null
  br i1 %.not.i126, label %_ZN4ncnn3MatD2Ev.exit114, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.he = atomicrmw add ptr %i.hd, i32 -1 acq_rel, align 4
  %i.hf = icmp eq i32 %i.he, 1
  br i1 %i.hf, label %bb.ay, label %_ZN4ncnn3MatD2Ev.exit114

bb.ay:                                            ; preds = %bb.ax
  %i.hg = load ptr, ptr %i.fx, align 16, !tbaa !19 ; 3 uses
  %.not3.i127 = icmp eq ptr %i.hg, null
  %i.hh = load ptr, ptr %8, align 16, !tbaa !20   ; 3 uses
  br i1 %.not3.i127, label %bb.ba, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.hi = load ptr, ptr %i.hg, align 8, !tbaa !12
  %i.hj = getelementptr inbounds nuw i8, ptr %i.hi, i64 24
  %i.hk = load ptr, ptr %i.hj, align 8
  invoke void %i.hk(ptr noundef nonnull align 8 dereferenceable(8) %i.hg, ptr noundef %i.hh)
          to label %_ZN4ncnn3MatD2Ev.exit114 unwind label %bb.bc, !inline_history !0

bb.ba:                                            ; preds = %bb.ay
  %.not.i177 = icmp eq ptr %i.hh, null
  br i1 %.not.i177, label %_ZN4ncnn3MatD2Ev.exit114, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  call void @free(ptr noundef nonnull %i.hh) #9
  br label %_ZN4ncnn3MatD2Ev.exit114

bb.bc:                                            ; preds = %bb.az
  %i.hl = landingpad { ptr, i32 }
          catch ptr null
  %i.hm = extractvalue { ptr, i32 } %i.hl, 0
  call void @__clang_call_terminate(ptr %i.hm) #24
  unreachable

_ZN4ncnn3MatD2Ev.exit114:                         ; preds = %bb.ax, %bb.aw, %bb.az, %bb.ba, %bb.bb
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #9
  br label %bb.ef

_ZNK4ncnn3Mat8elembitsEv.exit.thread:             ; preds = %bb.af, %_ZN4ncnn3MatD2Ev.exit115, %_ZNK4ncnn3Mat8elembitsEv.exit
  %i.hn = phi i64 [ %.pre244, %bb.af ], [ %.pre243, %_ZN4ncnn3MatD2Ev.exit115 ], [ %.pre244, %_ZNK4ncnn3Mat8elembitsEv.exit ]
  %i.ho = phi i32 [ 0, %bb.af ], [ %.pre242, %_ZN4ncnn3MatD2Ev.exit115 ], [ %i.fq, %_ZNK4ncnn3Mat8elembitsEv.exit ] ; 2 uses
  %i.hp = load i32, ptr %i.ea, align 4, !tbaa !55
  %i.hq = mul nsw i32 %i.hp, %i.ho
  store i32 %i.hq, ptr %i.ea, align 4, !tbaa !55
  %i.hr = sext i32 %i.ho to i64
  %i.hs = udiv i64 %i.hn, %i.hr
  store i64 %i.hs, ptr %i.dw, align 16, !tbaa !56
  store i32 1, ptr %i.dx, align 8, !tbaa !62
  br label %bb.bd

bb.bd:                                            ; preds = %_ZNK4ncnn3Mat8elembitsEv.exit.thread, %.split
  %i.ht = invoke noundef ptr @_ZN4ncnn16create_layer_cpuEi(i32 noundef 8)
          to label %bb.be unwind label %bb.ct     ; 12 uses

bb.be:                                            ; preds = %bb.bd
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #9
  invoke void @_ZN4ncnn9ParamDictC1Ev(ptr noundef nonnull align 8 dereferenceable(16) %9)
          to label %bb.bf unwind label %bb.cu

bb.bf:                                            ; preds = %bb.be
  invoke void @_ZN4ncnn9ParamDict3setEii(ptr noundef nonnull align 8 dereferenceable(16) %9, i32 noundef 0, i32 noundef %i.n)
          to label %bb.bg unwind label %bb.cv

bb.bg:                                            ; preds = %bb.bf
  invoke void @_ZN4ncnn9ParamDict3setEii(ptr noundef nonnull align 8 dereferenceable(16) %9, i32 noundef 1, i32 noundef %i.j)
          to label %bb.bh unwind label %bb.cv

bb.bh:                                            ; preds = %bb.bg
end_hunk_0
begin_hunk_1_@_ZNK4ncnn24Deconvolution_x86_avx5127forwardERKSt6vectorINS_3MatESaIS2_EERS4_RKNS_6OptionE:bb.a
          to label %bb.bv unwind label %bb.cv

bb.bv:                                            ; preds = %bb.bu
  %i.it = load i32, ptr %i.cm, align 4, !tbaa !55
  invoke void @_ZN4ncnn9ParamDict3setEii(ptr noundef nonnull align 8 dereferenceable(16) %9, i32 noundef 6, i32 noundef %i.it)
          to label %bb.bw unwind label %bb.cv

bb.bw:                                            ; preds = %bb.bv
  %i.iu = getelementptr inbounds nuw i8, ptr %0, i64 276
  %i.iv = load i32, ptr %i.iu, align 4, !tbaa !37
  invoke void @_ZN4ncnn9ParamDict3setEii(ptr noundef nonnull align 8 dereferenceable(16) %9, i32 noundef 9, i32 noundef %i.iv)
          to label %bb.bx unwind label %bb.cv

bb.bx:                                            ; preds = %bb.bw
  %i.iw = getelementptr inbounds nuw i8, ptr %0, i64 280
  invoke void @_ZN4ncnn9ParamDict3setEiRKNS_3MatE(ptr noundef nonnull align 8 dereferenceable(16) %9, i32 noundef 10, ptr noundef nonnull align 8 dereferenceable(72) %i.iw)
          to label %bb.by unwind label %bb.cv

bb.by:                                            ; preds = %bb.bx
  %i.ix = load ptr, ptr %i.ht, align 8, !tbaa !12
  %i.iy = getelementptr inbounds nuw i8, ptr %i.ix, i64 16
  %i.iz = load ptr, ptr %i.iy, align 8
  %i.ja = invoke noundef i32 %i.iz(ptr noundef nonnull align 8 dereferenceable(208) %i.ht, ptr noundef nonnull align 8 dereferenceable(16) %9)
          to label %bb.bz unwind label %bb.cv     ; 0 uses

bb.bz:                                            ; preds = %bb.by
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #9
  %i.jb = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.jc = getelementptr inbounds nuw i8, ptr %10, i64 24
  %i.jd = getelementptr inbounds nuw i8, ptr %10, i64 32 ; 3 uses
  %i.je = getelementptr inbounds nuw i8, ptr %10, i64 40
  %i.jf = getelementptr inbounds nuw i8, ptr %10, i64 56
  %i.jg = getelementptr inbounds nuw i8, ptr %10, i64 64 ; 2 uses
  %.ptr.1 = getelementptr inbounds nuw i8, ptr %10, i64 72 ; 2 uses
  %i.jh = getelementptr inbounds nuw i8, ptr %10, i64 104
  %i.ji = getelementptr inbounds nuw i8, ptr %10, i64 136
  store i64 0, ptr %i.ji, align 8, !tbaa !21
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(28) %10, i8 0, i64 28, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(28) %i.jd, i8 0, i64 28, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(36) %i.jg, i8 0, i64 36, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.jh, i8 0, i64 28, i1 false)
  %i.jj = load ptr, ptr %i.ch, align 8, !tbaa !18 ; 2 uses
  %.not.i187 = icmp eq ptr %i.jj, null
  br i1 %.not.i187, label %.thread, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  %i.jk = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.jl = atomicrmw add ptr %i.jj, i32 1 acq_rel, align 4 ; 0 uses
  %.pre245 = load ptr, ptr %i.jk, align 8, !tbaa !18 ; 2 uses
  %.not.i.i188 = icmp eq ptr %.pre245, null
  br i1 %.not.i.i188, label %.thread, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  %i.jm = atomicrmw add ptr %.pre245, i32 -1 acq_rel, align 4
  %i.jn = icmp eq i32 %i.jm, 1
  br i1 %i.jn, label %bb.cc, label %.thread

bb.cc:                                            ; preds = %bb.cb
  %i.jo = load ptr, ptr %i.jd, align 16, !tbaa !19 ; 3 uses
  %.not3.i.i189 = icmp eq ptr %i.jo, null
  %i.jp = load ptr, ptr %10, align 16, !tbaa !20  ; 3 uses
  br i1 %.not3.i.i189, label %bb.ce, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  %i.jq = load ptr, ptr %i.jo, align 8, !tbaa !12
  %i.jr = getelementptr inbounds nuw i8, ptr %i.jq, i64 24
  %i.js = load ptr, ptr %i.jr, align 8
  invoke void %i.js(ptr noundef nonnull align 8 dereferenceable(8) %i.jo, ptr noundef %i.jp)
          to label %.thread unwind label %bb.cw, !inline_history !1

bb.ce:                                            ; preds = %bb.cc
  %.not.i18.i190 = icmp eq ptr %i.jp, null
  br i1 %.not.i18.i190, label %.thread, label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  call void @free(ptr noundef nonnull %i.jp) #9
  br label %.thread

.thread:                                          ; preds = %bb.bz, %bb.cb, %bb.ca, %bb.cd, %bb.cf, %bb.ce
  %i.jt = load <2 x ptr>, ptr %6, align 16, !tbaa !61
  store <2 x ptr> %i.jt, ptr %10, align 16, !tbaa !61
  %i.ju = load i64, ptr %i.ci, align 16, !tbaa !56
  store i64 %i.ju, ptr %i.jb, align 16, !tbaa !56
  %i.jv = load i32, ptr %i.cj, align 8, !tbaa !62
  store i32 %i.jv, ptr %i.jc, align 8, !tbaa !62
  %i.jw = load ptr, ptr %i.ck, align 16, !tbaa !19
  store ptr %i.jw, ptr %i.jd, align 16, !tbaa !19
  %i.jx = load <4 x i32>, ptr %i.cl, align 8, !tbaa !63
  store <4 x i32> %i.jx, ptr %i.je, align 8, !tbaa !63
  %i.jy = load i32, ptr %i.cn, align 8, !tbaa !64
  store i32 %i.jy, ptr %i.jf, align 8, !tbaa !64
  %i.jz = load i64, ptr %i.co, align 16, !tbaa !21
  store i64 %i.jz, ptr %i.jg, align 16, !tbaa !21
  %i.ka = load ptr, ptr %i.dv, align 8, !tbaa !18 ; 2 uses
  %.not.i185 = icmp eq ptr %i.ka, null
  br i1 %.not.i185, label %bb.ch, label %bb.cg

bb.cg:                                            ; preds = %.thread
  %i.kb = atomicrmw add ptr %i.ka, i32 1 acq_rel, align 4 ; 0 uses
  br label %bb.ch

bb.ch:                                            ; preds = %bb.cg, %.thread
  %i.kc = getelementptr inbounds nuw i8, ptr %10, i64 80
  %i.kd = load ptr, ptr %i.kc, align 16, !tbaa !18 ; 2 uses
  %.not.i.i = icmp eq ptr %i.kd, null
  br i1 %.not.i.i, label %bb.cn, label %bb.ci

bb.ci:                                            ; preds = %bb.ch
  %i.ke = atomicrmw add ptr %i.kd, i32 -1 acq_rel, align 4
  %i.kf = icmp eq i32 %i.ke, 1
  br i1 %i.kf, label %bb.cj, label %bb.cn

bb.cj:                                            ; preds = %bb.ci
  %i.kg = getelementptr inbounds nuw i8, ptr %10, i64 104
  %i.kh = load ptr, ptr %i.kg, align 8, !tbaa !19 ; 3 uses
  %.not3.i.i = icmp eq ptr %i.kh, null
  %i.ki = load ptr, ptr %.ptr.1, align 8, !tbaa !20 ; 3 uses
  br i1 %.not3.i.i, label %bb.cl, label %bb.ck

bb.ck:                                            ; preds = %bb.cj
  %i.kj = load ptr, ptr %i.kh, align 8, !tbaa !12
  %i.kk = getelementptr inbounds nuw i8, ptr %i.kj, i64 24
  %i.kl = load ptr, ptr %i.kk, align 8
  invoke void %i.kl(ptr noundef nonnull align 8 dereferenceable(8) %i.kh, ptr noundef %i.ki)
          to label %bb.cn unwind label %bb.cw, !inline_history !1

bb.cl:                                            ; preds = %bb.cj
  %.not.i18.i = icmp eq ptr %i.ki, null
  br i1 %.not.i18.i, label %bb.cn, label %bb.cm

bb.cm:                                            ; preds = %bb.cl
  call void @free(ptr noundef nonnull %i.ki) #9
  br label %bb.cn

bb.cn:                                            ; preds = %bb.ci, %bb.ch, %bb.ck, %bb.cm, %bb.cl
  %i.km = getelementptr inbounds nuw i8, ptr %10, i64 88
  %i.kn = getelementptr inbounds nuw i8, ptr %10, i64 96
  %i.ko = getelementptr inbounds nuw i8, ptr %10, i64 112
  %i.kp = getelementptr inbounds nuw i8, ptr %10, i64 128
  %i.kq = getelementptr inbounds nuw i8, ptr %10, i64 136
  %i.kr = load <2 x ptr>, ptr %7, align 16, !tbaa !61
  store <2 x ptr> %i.kr, ptr %.ptr.1, align 8, !tbaa !61
  %i.ks = load i64, ptr %i.dw, align 16, !tbaa !56
  store i64 %i.ks, ptr %i.km, align 8, !tbaa !56
  %i.kt = load i32, ptr %i.dx, align 8, !tbaa !62
  store i32 %i.kt, ptr %i.kn, align 16, !tbaa !62
  %i.ku = load ptr, ptr %i.dy, align 16, !tbaa !19
  %i.kv = getelementptr inbounds nuw i8, ptr %10, i64 104
  store ptr %i.ku, ptr %i.kv, align 8, !tbaa !19
  %i.kw = load <4 x i32>, ptr %i.dz, align 8, !tbaa !63
  store <4 x i32> %i.kw, ptr %i.ko, align 16, !tbaa !63
  %i.kx = load i32, ptr %i.eb, align 8, !tbaa !64
  store i32 %i.kx, ptr %i.kp, align 16, !tbaa !64
  %i.ky = load i64, ptr %i.ec, align 16, !tbaa !21
  store i64 %i.ky, ptr %i.kq, align 8, !tbaa !21
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #9
  invoke void @_ZN4ncnn20ModelBinFromMatArrayC1EPKNS_3MatE(ptr noundef nonnull align 8 dereferenceable(16) %11, ptr noundef nonnull %10)
          to label %bb.co unwind label %bb.cx

bb.co:                                            ; preds = %bb.cn
  %i.kz = load ptr, ptr %i.ht, align 8, !tbaa !12
  %i.la = getelementptr inbounds nuw i8, ptr %i.kz, i64 24
  %i.lb = load ptr, ptr %i.la, align 8
  %i.lc = invoke noundef i32 %i.lb(ptr noundef nonnull align 8 dereferenceable(208) %i.ht, ptr noundef nonnull align 8 dereferenceable(8) %11)
          to label %bb.cp unwind label %bb.cy     ; 0 uses

bb.cp:                                            ; preds = %bb.co
  call void @_ZN4ncnn20ModelBinFromMatArrayD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %11) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #9
  %i.ld = load ptr, ptr %i.ht, align 8, !tbaa !12
  %i.le = getelementptr inbounds nuw i8, ptr %i.ld, i64 32
  %i.lf = load ptr, ptr %i.le, align 8
  %i.lg = invoke noundef i32 %i.lf(ptr noundef nonnull align 8 dereferenceable(208) %i.ht, ptr noundef nonnull align 8 dereferenceable(64) %3)
          to label %bb.cq unwind label %bb.cw     ; 0 uses

bb.cq:                                            ; preds = %bb.cp
  %i.lh = load ptr, ptr %i.ht, align 8, !tbaa !12
  %i.li = getelementptr inbounds nuw i8, ptr %i.lh, i64 56
  %i.lj = load ptr, ptr %i.li, align 8
  %i.lk = invoke noundef i32 %i.lj(ptr noundef nonnull align 8 dereferenceable(208) %i.ht, ptr noundef nonnull align 8 dereferenceable(72) %i.a, ptr noundef nonnull align 8 dereferenceable(72) %i.c, ptr noundef nonnull align 8 dereferenceable(64) %3)
          to label %bb.cr unwind label %bb.cw     ; 0 uses

bb.cr:                                            ; preds = %bb.cq
  %i.ll = load ptr, ptr %i.ht, align 8, !tbaa !12
  %i.lm = getelementptr inbounds nuw i8, ptr %i.ll, i64 40
  %i.ln = load ptr, ptr %i.lm, align 8
  %i.lo = invoke noundef i32 %i.ln(ptr noundef nonnull align 8 dereferenceable(208) %i.ht, ptr noundef nonnull align 8 dereferenceable(64) %3)
          to label %bb.cs unwind label %bb.cw     ; 0 uses

bb.cs:                                            ; preds = %bb.cr
  %i.lp = load ptr, ptr %i.ht, align 8, !tbaa !12
  %i.lq = getelementptr inbounds nuw i8, ptr %i.lp, i64 8
  %i.lr = load ptr, ptr %i.lq, align 8
  call void %i.lr(ptr noundef nonnull align 8 dereferenceable(208) %i.ht) #9
  %i.ls = getelementptr inbounds nuw i8, ptr %10, i64 72 ; 2 uses
  %i.lt = getelementptr inbounds nuw i8, ptr %10, i64 80
  %i.lu = load ptr, ptr %i.lt, align 16, !tbaa !18 ; 2 uses
  %.not.i130 = icmp eq ptr %i.lu, null
  br i1 %.not.i130, label %_ZN4ncnn3MatD2Ev.exit113, label %bb.da

bb.ct:                                            ; preds = %bb.ad, %bb.bd
  %i.lv = landingpad { ptr, i32 }
          cleanup
  br label %bb.ef

bb.cu:                                            ; preds = %bb.be
  %i.lw = landingpad { ptr, i32 }
          cleanup
  br label %bb.dy

bb.cv:                                            ; preds = %bb.by, %bb.bx, %bb.bw, %bb.bv, %bb.bu, %bb.bt, %bb.bs, %bb.br, %bb.bq, %bb.bp, %bb.bo, %bb.bn, %bb.bm, %bb.bl, %bb.bk, %bb.bj, %bb.bi, %bb.bh, %bb.bg, %bb.bf
  %i.lx = landingpad { ptr, i32 }
          cleanup
  br label %bb.dx

bb.cw:                                            ; preds = %bb.cd, %bb.ck, %bb.cr, %bb.cq, %bb.cp
  %i.ly = landingpad { ptr, i32 }
          cleanup
  br label %bb.dl

bb.cx:                                            ; preds = %bb.cn
  %i.lz = landingpad { ptr, i32 }
          cleanup
  br label %bb.cz

bb.cy:                                            ; preds = %bb.co
  %i.ma = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4ncnn20ModelBinFromMatArrayD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %11) #9
  br label %bb.cz

bb.cz:                                            ; preds = %bb.cy, %bb.cx
  %.pn97 = phi { ptr, i32 } [ %i.ma, %bb.cy ], [ %i.lz, %bb.cx ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #9
  br label %bb.dl

bb.da:                                            ; preds = %bb.cs
  %i.mb = atomicrmw add ptr %i.lu, i32 -1 acq_rel, align 4
  %i.mc = icmp eq i32 %i.mb, 1
  br i1 %i.mc, label %bb.db, label %_ZN4ncnn3MatD2Ev.exit113

bb.db:                                            ; preds = %bb.da
  %i.md = getelementptr inbounds nuw i8, ptr %10, i64 104
  %i.me = load ptr, ptr %i.md, align 8, !tbaa !19 ; 3 uses
  %.not3.i131 = icmp eq ptr %i.me, null
  %i.mf = load ptr, ptr %i.ls, align 8, !tbaa !20 ; 3 uses
  br i1 %.not3.i131, label %bb.dd, label %bb.dc

bb.dc:                                            ; preds = %bb.db
  %i.mg = load ptr, ptr %i.me, align 8, !tbaa !12
  %i.mh = getelementptr inbounds nuw i8, ptr %i.mg, i64 24
  %i.mi = load ptr, ptr %i.mh, align 8
  invoke void %i.mi(ptr noundef nonnull align 8 dereferenceable(8) %i.me, ptr noundef %i.mf)
          to label %_ZN4ncnn3MatD2Ev.exit113 unwind label %bb.df, !inline_history !0

bb.dd:                                            ; preds = %bb.db
  %.not.i175 = icmp eq ptr %i.mf, null
  br i1 %.not.i175, label %_ZN4ncnn3MatD2Ev.exit113, label %bb.de

bb.de:                                            ; preds = %bb.dd
  call void @free(ptr noundef nonnull %i.mf) #9
  br label %_ZN4ncnn3MatD2Ev.exit113

bb.df:                                            ; preds = %bb.di, %bb.dc
  %i.mj = landingpad { ptr, i32 }
          catch ptr null
  %i.mk = extractvalue { ptr, i32 } %i.mj, 0
  call void @__clang_call_terminate(ptr %i.mk) #24
  unreachable

_ZN4ncnn3MatD2Ev.exit113:                         ; preds = %bb.da, %bb.cs, %bb.dc, %bb.dd, %bb.de
  %i.ml = getelementptr inbounds nuw i8, ptr %10, i64 112
  %i.mm = getelementptr inbounds nuw i8, ptr %10, i64 136
  store i64 0, ptr %i.mm, align 8, !tbaa !21
  %i.mn = getelementptr inbounds nuw i8, ptr %10, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.ls, i8 0, i64 28, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(20) %i.ml, i8 0, i64 20, i1 false)
  %i.mo = load ptr, ptr %i.mn, align 8, !tbaa !18 ; 2 uses
  %.not.i130.1 = icmp eq ptr %i.mo, null
  br i1 %.not.i130.1, label %_ZN4ncnn3MatD2Ev.exit113.1, label %bb.dg

bb.dg:                                            ; preds = %_ZN4ncnn3MatD2Ev.exit113
  %i.mp = atomicrmw add ptr %i.mo, i32 -1 acq_rel, align 4
  %i.mq = icmp eq i32 %i.mp, 1
  br i1 %i.mq, label %bb.dh, label %_ZN4ncnn3MatD2Ev.exit113.1

bb.dh:                                            ; preds = %bb.dg
  %i.mr = getelementptr inbounds nuw i8, ptr %10, i64 32
  %i.ms = load ptr, ptr %i.mr, align 16, !tbaa !19 ; 3 uses
  %.not3.i131.1 = icmp eq ptr %i.ms, null
  %i.mt = load ptr, ptr %10, align 16, !tbaa !20  ; 3 uses
  br i1 %.not3.i131.1, label %bb.dj, label %bb.di

bb.di:                                            ; preds = %bb.dh
  %i.mu = load ptr, ptr %i.ms, align 8, !tbaa !12
  %i.mv = getelementptr inbounds nuw i8, ptr %i.mu, i64 24
  %i.mw = load ptr, ptr %i.mv, align 8
  invoke void %i.mw(ptr noundef nonnull align 8 dereferenceable(8) %i.ms, ptr noundef %i.mt)
          to label %_ZN4ncnn3MatD2Ev.exit113.1 unwind label %bb.df, !inline_history !0

bb.dj:                                            ; preds = %bb.dh
  %.not.i175.1 = icmp eq ptr %i.mt, null
  br i1 %.not.i175.1, label %_ZN4ncnn3MatD2Ev.exit113.1, label %bb.dk

bb.dk:                                            ; preds = %bb.dj
  call void @free(ptr noundef nonnull %i.mt) #9
  br label %_ZN4ncnn3MatD2Ev.exit113.1

_ZN4ncnn3MatD2Ev.exit113.1:                       ; preds = %bb.dk, %bb.dj, %bb.di, %bb.dg, %_ZN4ncnn3MatD2Ev.exit113
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #9
  call void @_ZN4ncnn9ParamDictD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %9) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #9
  br label %.critedge

bb.dl:                                            ; preds = %bb.cz, %bb.cw
  %.pn99 = phi { ptr, i32 } [ %i.ly, %bb.cw ], [ %.pn97, %bb.cz ]
  %i.mx = getelementptr inbounds nuw i8, ptr %10, i64 72 ; 2 uses
  %i.my = getelementptr inbounds nuw i8, ptr %10, i64 80
  %i.mz = load ptr, ptr %i.my, align 16, !tbaa !18 ; 2 uses
  %.not.i134 = icmp eq ptr %i.mz, null
  br i1 %.not.i134, label %_ZN4ncnn3MatD2Ev.exit112, label %bb.dm

bb.dm:                                            ; preds = %bb.dl
  %i.na = atomicrmw add ptr %i.mz, i32 -1 acq_rel, align 4
  %i.nb = icmp eq i32 %i.na, 1
  br i1 %i.nb, label %bb.dn, label %_ZN4ncnn3MatD2Ev.exit112

bb.dn:                                            ; preds = %bb.dm
  %i.nc = getelementptr inbounds nuw i8, ptr %10, i64 104
  %i.nd = load ptr, ptr %i.nc, align 8, !tbaa !19 ; 3 uses
  %.not3.i135 = icmp eq ptr %i.nd, null
  %i.ne = load ptr, ptr %i.mx, align 8, !tbaa !20 ; 3 uses
  br i1 %.not3.i135, label %bb.dp, label %bb.do

bb.do:                                            ; preds = %bb.dn
  %i.nf = load ptr, ptr %i.nd, align 8, !tbaa !12
  %i.ng = getelementptr inbounds nuw i8, ptr %i.nf, i64 24
  %i.nh = load ptr, ptr %i.ng, align 8
  invoke void %i.nh(ptr noundef nonnull align 8 dereferenceable(8) %i.nd, ptr noundef %i.ne)
          to label %_ZN4ncnn3MatD2Ev.exit112 unwind label %bb.dr, !inline_history !0

bb.dp:                                            ; preds = %bb.dn
  %.not.i173 = icmp eq ptr %i.ne, null
  br i1 %.not.i173, label %_ZN4ncnn3MatD2Ev.exit112, label %bb.dq

bb.dq:                                            ; preds = %bb.dp
  call void @free(ptr noundef nonnull %i.ne) #9
  br label %_ZN4ncnn3MatD2Ev.exit112

bb.dr:                                            ; preds = %bb.du, %bb.do
  %i.ni = landingpad { ptr, i32 }
          catch ptr null
  %i.nj = extractvalue { ptr, i32 } %i.ni, 0
  call void @__clang_call_terminate(ptr %i.nj) #24
  unreachable

_ZN4ncnn3MatD2Ev.exit112:                         ; preds = %bb.dm, %bb.dl, %bb.do, %bb.dp, %bb.dq
  %i.nk = getelementptr inbounds nuw i8, ptr %10, i64 112
  %i.nl = getelementptr inbounds nuw i8, ptr %10, i64 136
  store i64 0, ptr %i.nl, align 8, !tbaa !21
  %i.nm = getelementptr inbounds nuw i8, ptr %10, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.mx, i8 0, i64 28, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(20) %i.nk, i8 0, i64 20, i1 false)
  %i.nn = load ptr, ptr %i.nm, align 8, !tbaa !18 ; 2 uses
  %.not.i134.1 = icmp eq ptr %i.nn, null
  br i1 %.not.i134.1, label %_ZN4ncnn3MatD2Ev.exit112.1, label %bb.ds

bb.ds:                                            ; preds = %_ZN4ncnn3MatD2Ev.exit112
  %i.no = atomicrmw add ptr %i.nn, i32 -1 acq_rel, align 4
  %i.np = icmp eq i32 %i.no, 1
  br i1 %i.np, label %bb.dt, label %_ZN4ncnn3MatD2Ev.exit112.1

bb.dt:                                            ; preds = %bb.ds
  %i.nq = getelementptr inbounds nuw i8, ptr %10, i64 32
  %i.nr = load ptr, ptr %i.nq, align 16, !tbaa !19 ; 3 uses
  %.not3.i135.1 = icmp eq ptr %i.nr, null
  %i.ns = load ptr, ptr %10, align 16, !tbaa !20  ; 3 uses
  br i1 %.not3.i135.1, label %bb.dv, label %bb.du

bb.du:                                            ; preds = %bb.dt
  %i.nt = load ptr, ptr %i.nr, align 8, !tbaa !12
  %i.nu = getelementptr inbounds nuw i8, ptr %i.nt, i64 24
  %i.nv = load ptr, ptr %i.nu, align 8
  invoke void %i.nv(ptr noundef nonnull align 8 dereferenceable(8) %i.nr, ptr noundef %i.ns)
          to label %_ZN4ncnn3MatD2Ev.exit112.1 unwind label %bb.dr, !inline_history !0

bb.dv:                                            ; preds = %bb.dt
  %.not.i173.1 = icmp eq ptr %i.ns, null
  br i1 %.not.i173.1, label %_ZN4ncnn3MatD2Ev.exit112.1, label %bb.dw

bb.dw:                                            ; preds = %bb.dv
  call void @free(ptr noundef nonnull %i.ns) #9
  br label %_ZN4ncnn3MatD2Ev.exit112.1

_ZN4ncnn3MatD2Ev.exit112.1:                       ; preds = %bb.dw, %bb.dv, %bb.du, %bb.ds, %_ZN4ncnn3MatD2Ev.exit112
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #9
  br label %bb.dx

bb.dx:                                            ; preds = %_ZN4ncnn3MatD2Ev.exit112.1, %bb.cv
  %.pn99.pn = phi { ptr, i32 } [ %.pn99, %_ZN4ncnn3MatD2Ev.exit112.1 ], [ %i.lx, %bb.cv ]
  call void @_ZN4ncnn9ParamDictD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %9) #9
  br label %bb.dy

bb.dy:                                            ; preds = %bb.dx, %bb.cu
  %.pn99.pn.pn = phi { ptr, i32 } [ %.pn99.pn, %bb.dx ], [ %i.lw, %bb.cu ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #9
  br label %bb.ef

.critedge:                                        ; preds = %bb.ae, %_ZNK4ncnn3Mat5emptyEv.exit, %_ZN4ncnn3MatD2Ev.exit113.1
  %.188 = phi i32 [ 0, %_ZN4ncnn3MatD2Ev.exit113.1 ], [ -100, %_ZNK4ncnn3Mat5emptyEv.exit ], [ -100, %bb.ae ]
  %i.nw = load ptr, ptr %i.dv, align 8, !tbaa !18 ; 2 uses
  %.not.i138 = icmp eq ptr %i.nw, null
  br i1 %.not.i138, label %_ZN4ncnn3MatD2Ev.exit111, label %bb.dz

bb.dz:                                            ; preds = %.critedge
  %i.nx = atomicrmw add ptr %i.nw, i32 -1 acq_rel, align 4
  %i.ny = icmp eq i32 %i.nx, 1
  br i1 %i.ny, label %bb.ea, label %_ZN4ncnn3MatD2Ev.exit111

bb.ea:                                            ; preds = %bb.dz
  %i.nz = load ptr, ptr %i.dy, align 16, !tbaa !19 ; 3 uses
  %.not3.i139 = icmp eq ptr %i.nz, null
  %i.oa = load ptr, ptr %7, align 16, !tbaa !20   ; 3 uses
  br i1 %.not3.i139, label %bb.ec, label %bb.eb

bb.eb:                                            ; preds = %bb.ea
  %i.ob = load ptr, ptr %i.nz, align 8, !tbaa !12
  %i.oc = getelementptr inbounds nuw i8, ptr %i.ob, i64 24
  %i.od = load ptr, ptr %i.oc, align 8
  invoke void %i.od(ptr noundef nonnull align 8 dereferenceable(8) %i.nz, ptr noundef %i.oa)
          to label %_ZN4ncnn3MatD2Ev.exit111 unwind label %bb.ee, !inline_history !0

bb.ec:                                            ; preds = %bb.ea
  %.not.i171 = icmp eq ptr %i.oa, null
  br i1 %.not.i171, label %_ZN4ncnn3MatD2Ev.exit111, label %bb.ed

bb.ed:                                            ; preds = %bb.ec
  call void @free(ptr noundef nonnull %i.oa) #9
  br label %_ZN4ncnn3MatD2Ev.exit111

bb.ee:                                            ; preds = %bb.eb
  %i.oe = landingpad { ptr, i32 }
          catch ptr null
  %i.of = extractvalue { ptr, i32 } %i.oe, 0
  call void @__clang_call_terminate(ptr %i.of) #24
  unreachable

_ZN4ncnn3MatD2Ev.exit111:                         ; preds = %bb.dz, %.critedge, %bb.eb, %bb.ec, %bb.ed
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #9
  br label %_ZNK4ncnn3Mat5emptyEv.exit212.thread

bb.ef:                                            ; preds = %bb.ct, %bb.dy, %_ZN4ncnn3MatD2Ev.exit114
  %.pn99.pn.pn.pn.pn = phi { ptr, i32 } [ %i.lv, %bb.ct ], [ %i.hc, %_ZN4ncnn3MatD2Ev.exit114 ], [ %.pn99.pn.pn, %bb.dy ]
  %i.og = load ptr, ptr %i.dv, align 8, !tbaa !18 ; 2 uses
  %.not.i142 = icmp eq ptr %i.og, null
  br i1 %.not.i142, label %_ZN4ncnn3MatD2Ev.exit110, label %bb.eg

bb.eg:                                            ; preds = %bb.ef
  %i.oh = atomicrmw add ptr %i.og, i32 -1 acq_rel, align 4
  %i.oi = icmp eq i32 %i.oh, 1
  br i1 %i.oi, label %bb.eh, label %_ZN4ncnn3MatD2Ev.exit110

bb.eh:                                            ; preds = %bb.eg
  %i.oj = load ptr, ptr %i.dy, align 16, !tbaa !19 ; 3 uses
  %.not3.i143 = icmp eq ptr %i.oj, null
  %i.ok = load ptr, ptr %7, align 16, !tbaa !20   ; 3 uses
  br i1 %.not3.i143, label %bb.ej, label %bb.ei

bb.ei:                                            ; preds = %bb.eh
  %i.ol = load ptr, ptr %i.oj, align 8, !tbaa !12
  %i.om = getelementptr inbounds nuw i8, ptr %i.ol, i64 24
  %i.on = load ptr, ptr %i.om, align 8
  invoke void %i.on(ptr noundef nonnull align 8 dereferenceable(8) %i.oj, ptr noundef %i.ok)
          to label %_ZN4ncnn3MatD2Ev.exit110 unwind label %bb.el, !inline_history !0

bb.ej:                                            ; preds = %bb.eh
  %.not.i169 = icmp eq ptr %i.ok, null
  br i1 %.not.i169, label %_ZN4ncnn3MatD2Ev.exit110, label %bb.ek

bb.ek:                                            ; preds = %bb.ej
  call void @free(ptr noundef nonnull %i.ok) #9
  br label %_ZN4ncnn3MatD2Ev.exit110

bb.el:                                            ; preds = %bb.ei
  %i.oo = landingpad { ptr, i32 }
          catch ptr null
  %i.op = extractvalue { ptr, i32 } %i.oo, 0
  call void @__clang_call_terminate(ptr %i.op) #24
  unreachable

_ZN4ncnn3MatD2Ev.exit110:                         ; preds = %bb.eg, %bb.ef, %bb.ei, %bb.ej, %bb.ek
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #9
  br label %bb.es

_ZNK4ncnn3Mat5emptyEv.exit212.thread:             ; preds = %bb.ab, %_ZNK4ncnn3Mat5emptyEv.exit212, %_ZN4ncnn3MatD2Ev.exit111
  %.289 = phi i32 [ %.188, %_ZN4ncnn3MatD2Ev.exit111 ], [ -100, %_ZNK4ncnn3Mat5emptyEv.exit212 ], [ -100, %bb.ab ]
  %i.oq = load ptr, ptr %i.ch, align 8, !tbaa !18 ; 2 uses
  %.not.i146 = icmp eq ptr %i.oq, null
  br i1 %.not.i146, label %_ZN4ncnn3MatD2Ev.exit109, label %bb.em

bb.em:                                            ; preds = %_ZNK4ncnn3Mat5emptyEv.exit212.thread
  %i.or = atomicrmw add ptr %i.oq, i32 -1 acq_rel, align 4
  %i.os = icmp eq i32 %i.or, 1
  br i1 %i.os, label %bb.en, label %_ZN4ncnn3MatD2Ev.exit109

bb.en:                                            ; preds = %bb.em
  %i.ot = load ptr, ptr %i.ck, align 16, !tbaa !19 ; 3 uses
  %.not3.i147 = icmp eq ptr %i.ot, null
  %i.ou = load ptr, ptr %6, align 16, !tbaa !20   ; 3 uses
  br i1 %.not3.i147, label %bb.ep, label %bb.eo

bb.eo:                                            ; preds = %bb.en
  %i.ov = load ptr, ptr %i.ot, align 8, !tbaa !12
  %i.ow = getelementptr inbounds nuw i8, ptr %i.ov, i64 24
  %i.ox = load ptr, ptr %i.ow, align 8
  invoke void %i.ox(ptr noundef nonnull align 8 dereferenceable(8) %i.ot, ptr noundef %i.ou)
          to label %_ZN4ncnn3MatD2Ev.exit109 unwind label %bb.er, !inline_history !0

bb.ep:                                            ; preds = %bb.en
  %.not.i167 = icmp eq ptr %i.ou, null
  br i1 %.not.i167, label %_ZN4ncnn3MatD2Ev.exit109, label %bb.eq

bb.eq:                                            ; preds = %bb.ep
  call void @free(ptr noundef nonnull %i.ou) #9
  br label %_ZN4ncnn3MatD2Ev.exit109

bb.er:                                            ; preds = %bb.eo
  %i.oy = landingpad { ptr, i32 }
          catch ptr null
  %i.oz = extractvalue { ptr, i32 } %i.oy, 0
  call void @__clang_call_terminate(ptr %i.oz) #24
  unreachable

_ZN4ncnn3MatD2Ev.exit109:                         ; preds = %bb.em, %_ZNK4ncnn3Mat5emptyEv.exit212.thread, %bb.eo, %bb.ep, %bb.eq
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #9
  br label %_ZNK4ncnn3Mat5emptyEv.exit213.thread

bb.es:                                            ; preds = %_ZN4ncnn3MatD2Ev.exit110, %bb.ac
  %.pn99.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn99.pn.pn.pn.pn, %_ZN4ncnn3MatD2Ev.exit110 ], [ %i.du, %bb.ac ]
  %i.pa = load ptr, ptr %i.ch, align 8, !tbaa !18 ; 2 uses
  %.not.i150 = icmp eq ptr %i.pa, null
  br i1 %.not.i150, label %_ZN4ncnn3MatD2Ev.exit108, label %bb.et

bb.et:                                            ; preds = %bb.es
  %i.pb = atomicrmw add ptr %i.pa, i32 -1 acq_rel, align 4
  %i.pc = icmp eq i32 %i.pb, 1
  br i1 %i.pc, label %bb.eu, label %_ZN4ncnn3MatD2Ev.exit108

bb.eu:                                            ; preds = %bb.et
  %i.pd = load ptr, ptr %i.ck, align 16, !tbaa !19 ; 3 uses
  %.not3.i151 = icmp eq ptr %i.pd, null
  %i.pe = load ptr, ptr %6, align 16, !tbaa !20   ; 3 uses
  br i1 %.not3.i151, label %bb.ew, label %bb.ev

bb.ev:                                            ; preds = %bb.eu
  %i.pf = load ptr, ptr %i.pd, align 8, !tbaa !12
  %i.pg = getelementptr inbounds nuw i8, ptr %i.pf, i64 24
  %i.ph = load ptr, ptr %i.pg, align 8
  invoke void %i.ph(ptr noundef nonnull align 8 dereferenceable(8) %i.pd, ptr noundef %i.pe)
          to label %_ZN4ncnn3MatD2Ev.exit108 unwind label %bb.ey, !inline_history !0

bb.ew:                                            ; preds = %bb.eu
  %.not.i165 = icmp eq ptr %i.pe, null
  br i1 %.not.i165, label %_ZN4ncnn3MatD2Ev.exit108, label %bb.ex

bb.ex:                                            ; preds = %bb.ew
  call void @free(ptr noundef nonnull %i.pe) #9
  br label %_ZN4ncnn3MatD2Ev.exit108

bb.ey:                                            ; preds = %bb.ev
  %i.pi = landingpad { ptr, i32 }
          catch ptr null
  %i.pj = extractvalue { ptr, i32 } %i.pi, 0
  call void @__clang_call_terminate(ptr %i.pj) #24
  unreachable

_ZN4ncnn3MatD2Ev.exit108:                         ; preds = %bb.et, %bb.es, %bb.ev, %bb.ew, %bb.ex
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #9
  br label %bb.ff

_ZNK4ncnn3Mat5emptyEv.exit213.thread:             ; preds = %bb.b, %_ZNK4ncnn3Mat5emptyEv.exit213, %_ZN4ncnn3MatD2Ev.exit109
  %.390 = phi i32 [ %.289, %_ZN4ncnn3MatD2Ev.exit109 ], [ -100, %_ZNK4ncnn3Mat5emptyEv.exit213 ], [ -100, %bb.b ]
  %i.pk = load ptr, ptr %i.o, align 8, !tbaa !18  ; 2 uses
  %.not.i154 = icmp eq ptr %i.pk, null
  br i1 %.not.i154, label %_ZN4ncnn3MatD2Ev.exit107, label %bb.ez

bb.ez:                                            ; preds = %_ZNK4ncnn3Mat5emptyEv.exit213.thread
  %i.pl = atomicrmw add ptr %i.pk, i32 -1 acq_rel, align 4
  %i.pm = icmp eq i32 %i.pl, 1
  br i1 %i.pm, label %bb.fa, label %_ZN4ncnn3MatD2Ev.exit107

bb.fa:                                            ; preds = %bb.ez
  %i.pn = load ptr, ptr %i.r, align 16, !tbaa !19 ; 3 uses
  %.not3.i155 = icmp eq ptr %i.pn, null
  %i.po = load ptr, ptr %4, align 16, !tbaa !20   ; 3 uses
  br i1 %.not3.i155, label %bb.fc, label %bb.fb

bb.fb:                                            ; preds = %bb.fa
  %i.pp = load ptr, ptr %i.pn, align 8, !tbaa !12
  %i.pq = getelementptr inbounds nuw i8, ptr %i.pp, i64 24
  %i.pr = load ptr, ptr %i.pq, align 8
  invoke void %i.pr(ptr noundef nonnull align 8 dereferenceable(8) %i.pn, ptr noundef %i.po)
          to label %_ZN4ncnn3MatD2Ev.exit107 unwind label %bb.fe, !inline_history !0

bb.fc:                                            ; preds = %bb.fa
  %.not.i163 = icmp eq ptr %i.po, null
  br i1 %.not.i163, label %_ZN4ncnn3MatD2Ev.exit107, label %bb.fd

bb.fd:                                            ; preds = %bb.fc
  call void @free(ptr noundef nonnull %i.po) #9
  br label %_ZN4ncnn3MatD2Ev.exit107

bb.fe:                                            ; preds = %bb.fb
  %i.ps = landingpad { ptr, i32 }
          catch ptr null
  %i.pt = extractvalue { ptr, i32 } %i.ps, 0
  call void @__clang_call_terminate(ptr %i.pt) #24
  unreachable

_ZN4ncnn3MatD2Ev.exit107:                         ; preds = %bb.ez, %_ZNK4ncnn3Mat5emptyEv.exit213.thread, %bb.fb, %bb.fc, %bb.fd
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #9
  ret i32 %.390

bb.ff:                                            ; preds = %_ZN4ncnn3MatD2Ev.exit108, %_ZN4ncnn3MatD2Ev.exit116, %bb.c
  %.pn99.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn99.pn.pn.pn.pn.pn, %_ZN4ncnn3MatD2Ev.exit108 ], [ %i.bq, %_ZN4ncnn3MatD2Ev.exit116 ], [ %i.ad, %bb.c ]
  %i.pu = load ptr, ptr %i.o, align 8, !tbaa !18  ; 2 uses
  %.not.i158 = icmp eq ptr %i.pu, null
  br i1 %.not.i158, label %_ZN4ncnn3MatD2Ev.exit, label %bb.fg

bb.fg:                                            ; preds = %bb.ff
  %i.pv = atomicrmw add ptr %i.pu, i32 -1 acq_rel, align 4
  %i.pw = icmp eq i32 %i.pv, 1
  br i1 %i.pw, label %bb.fh, label %_ZN4ncnn3MatD2Ev.exit

bb.fh:                                            ; preds = %bb.fg
  %i.px = load ptr, ptr %i.r, align 16, !tbaa !19 ; 3 uses
  %.not3.i159 = icmp eq ptr %i.px, null
  %i.py = load ptr, ptr %4, align 16, !tbaa !20   ; 3 uses
  br i1 %.not3.i159, label %bb.fj, label %bb.fi

bb.fi:                                            ; preds = %bb.fh
  %i.pz = load ptr, ptr %i.px, align 8, !tbaa !12
  %i.qa = getelementptr inbounds nuw i8, ptr %i.pz, i64 24
  %i.qb = load ptr, ptr %i.qa, align 8
  invoke void %i.qb(ptr noundef nonnull align 8 dereferenceable(8) %i.px, ptr noundef %i.py)
          to label %_ZN4ncnn3MatD2Ev.exit unwind label %bb.fl, !inline_history !0

bb.fj:                                            ; preds = %bb.fh
  %.not.i162 = icmp eq ptr %i.py, null
  br i1 %.not.i162, label %_ZN4ncnn3MatD2Ev.exit, label %bb.fk

bb.fk:                                            ; preds = %bb.fj
  call void @free(ptr noundef nonnull %i.py) #9
end_hunk_1
