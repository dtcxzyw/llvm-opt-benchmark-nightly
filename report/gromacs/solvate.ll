Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/solvate?download=true
inline.NumInlined: 828
inline.NumDeleted: 373
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 17
begin_hunk_0_@_ZL8add_solvPKcP7t_atomsP8t_symtabPSt6vectorIN3gmx11BasicVectorIfEESaIS8_EESB_7PbcTypePA3_fP14AtomPropertiesfffi:bb.a
  %i.mp = add i64 %n.vec, %i.dx
  %broadcast.splatinsert = insertelement <8 x i64> poison, i64 %i.dx, i64 0
  %broadcast.splat = shufflevector <8 x i64> %broadcast.splatinsert, <8 x i64> poison, <8 x i32> zeroinitializer
  %induction = add nsw <8 x i64> %broadcast.splat, <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7>
  %cmp.n = icmp eq i64 %i.ml, %n.vec
  br label %.preheader.2.i

.preheader.2.i:                                   ; preds = %._crit_edge75.2.i, %.preheader.lr.ph.2.i
  %i.mq = phi float [ %.lcssa68.2.i, %.preheader.lr.ph.2.i ], [ %i.np, %._crit_edge75.2.i ]
  %brmerge584 = select i1 %min.iters.check, i1 true, i1 %i.mo
  %brmerge585 = select i1 %brmerge584, i1 true, i1 %found.conflict
  br i1 %brmerge585, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.preheader.2.i
  %i.mr = load float, ptr %.phi.trans.insert142.i, align 16, !tbaa !18, !alias.scope !243, !noalias !244
  %broadcast.splatinsert400 = insertelement <8 x float> poison, float %i.mr, i64 0
  %broadcast.splat401 = shufflevector <8 x float> %broadcast.splatinsert400, <8 x float> poison, <8 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %vec.ind = phi <8 x i64> [ %induction, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 2 uses
  %wide.gep = getelementptr [12 x i8], ptr %invariant.gep76.2.i, <8 x i64> %vec.ind ; 2 uses
  %wide.masked.gather = call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !18, !alias.scope !244
  %i.ms = fsub <8 x float> %wide.masked.gather, %broadcast.splat401
  call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %i.ms, <8 x ptr> align 4 %wide.gep, <8 x i1> splat (i1 true)), !tbaa !18, !alias.scope !244
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %vec.ind.next = add nsw <8 x i64> %vec.ind, splat (i64 8)
  %i.mt = icmp eq i64 %index.next, %n.vec
  br i1 %i.mt, label %middle.block, label %vector.body, !llvm.loop !205

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge75.2.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.preheader.2.i, %middle.block
  %indvars.iv102.2.i.ph = phi i64 [ %i.dx, %.preheader.2.i ], [ %i.mp, %middle.block ] ; 4 uses
  %i.mu = sub i64 %i.mj, %indvars.iv102.2.i.ph
  %i.mv = sub i64 %smax.i, %indvars.iv102.2.i.ph
  %xtraiter561 = and i64 %i.mu, 3                 ; 2 uses
  %lcmp.mod562.not = icmp eq i64 %xtraiter561, 0
  br i1 %lcmp.mod562.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv102.2.i.prol = phi i64 [ %indvars.iv.next103.2.i.prol, %scalar.ph.prol ], [ %indvars.iv102.2.i.ph, %scalar.ph.preheader ] ; 2 uses
  %prol.iter563 = phi i64 [ %prol.iter563.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.mw = load float, ptr %.phi.trans.insert142.i, align 16, !tbaa !18
  %gep77.2.i.prol = getelementptr [12 x i8], ptr %invariant.gep76.2.i, i64 %indvars.iv102.2.i.prol ; 2 uses
  %i.mx = load float, ptr %gep77.2.i.prol, align 4, !tbaa !18
  %i.my = fsub float %i.mx, %i.mw
  store float %i.my, ptr %gep77.2.i.prol, align 4, !tbaa !18
  %indvars.iv.next103.2.i.prol = add nsw i64 %indvars.iv102.2.i.prol, 1 ; 2 uses
  %prol.iter563.next = add i64 %prol.iter563, 1   ; 2 uses
  %prol.iter563.cmp.not = icmp eq i64 %prol.iter563.next, %xtraiter561
  br i1 %prol.iter563.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !206

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv102.2.i.unr = phi i64 [ %indvars.iv102.2.i.ph, %scalar.ph.preheader ], [ %indvars.iv.next103.2.i.prol, %scalar.ph.prol ]
  %i.mz = icmp ult i64 %i.mv, 3
  br i1 %i.mz, label %._crit_edge75.2.i, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv102.2.i = phi i64 [ %indvars.iv.next103.2.i.3, %scalar.ph ], [ %indvars.iv102.2.i.unr, %scalar.ph.prol.loopexit ] ; 5 uses
  %i.na = load float, ptr %.phi.trans.insert142.i, align 16, !tbaa !18
  %gep77.2.i = getelementptr [12 x i8], ptr %invariant.gep76.2.i, i64 %indvars.iv102.2.i ; 2 uses
  %i.nb = load float, ptr %gep77.2.i, align 4, !tbaa !18
  %i.nc = fsub float %i.nb, %i.na
  store float %i.nc, ptr %gep77.2.i, align 4, !tbaa !18
  %i.nd = load float, ptr %.phi.trans.insert142.i, align 16, !tbaa !18
  %i.ne = getelementptr [12 x i8], ptr %invariant.gep76.2.i, i64 %indvars.iv102.2.i
  %gep77.2.i.1 = getelementptr i8, ptr %i.ne, i64 12 ; 2 uses
  %i.nf = load float, ptr %gep77.2.i.1, align 4, !tbaa !18
  %i.ng = fsub float %i.nf, %i.nd
  store float %i.ng, ptr %gep77.2.i.1, align 4, !tbaa !18
  %i.nh = load float, ptr %.phi.trans.insert142.i, align 16, !tbaa !18
  %i.ni = getelementptr [12 x i8], ptr %invariant.gep76.2.i, i64 %indvars.iv102.2.i
  %gep77.2.i.2 = getelementptr i8, ptr %i.ni, i64 24 ; 2 uses
  %i.nj = load float, ptr %gep77.2.i.2, align 4, !tbaa !18
  %i.nk = fsub float %i.nj, %i.nh
  store float %i.nk, ptr %gep77.2.i.2, align 4, !tbaa !18
  %indvars.iv.next103.2.i.2 = add nsw i64 %indvars.iv102.2.i, 3 ; 2 uses
  %i.nl = load float, ptr %.phi.trans.insert142.i, align 16, !tbaa !18
  %gep77.2.i.3 = getelementptr [12 x i8], ptr %invariant.gep76.2.i, i64 %indvars.iv.next103.2.i.2 ; 2 uses
  %i.nm = load float, ptr %gep77.2.i.3, align 4, !tbaa !18
  %i.nn = fsub float %i.nm, %i.nl
  store float %i.nn, ptr %gep77.2.i.3, align 4, !tbaa !18
  %indvars.iv.next103.2.i.3 = add nsw i64 %indvars.iv102.2.i, 4
  %exitcond111.not.i.3 = icmp eq i64 %indvars.iv.next103.2.i.2, %smax.i
  br i1 %exitcond111.not.i.3, label %._crit_edge75.2.i, label %scalar.ph, !llvm.loop !207

._crit_edge75.2.i:                                ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %i.no = load float, ptr %.phi.trans.insert142.i, align 16, !tbaa !18 ; 2 uses
  %i.np = fsub float %i.mq, %i.no                 ; 2 uses
  %i.nq = fcmp ult float %i.np, %i.no
  br i1 %i.nq, label %.split85.us.i, label %.preheader.2.i, !llvm.loop !183

bb.bc:                                            ; preds = %.split85.us.i, %bb.ay
  %.sroa.28.3.i = phi float [ 0.000000e+00, %.split85.us.i ], [ %.sroa.28.1.i, %bb.ay ]
  %.158.i = phi i32 [ %i.em, %.split85.us.i ], [ %.05787.i, %bb.ay ]
  %.3.i = phi i32 [ 0, %.split85.us.i ], [ %.1.i, %bb.ay ]
  %i.nr = phi <2 x float> [ zeroinitializer, %.split85.us.i ], [ %i.cx, %bb.ay ]
  %i.ns = sext i32 %i.cy to i64
  %i.nt = icmp slt i64 %indvars.iv.next110.i, %i.ns
  %indvars.iv.next101.i = add nuw i32 %indvars.iv100.i, 1
  br i1 %i.nt, label %bb.av, label %_ZL10rm_res_pbcPK7t_atomsPSt6vectorIN3gmx11BasicVectorIfEESaIS5_EEPA3_f.exit, !llvm.loop !208

_ZL10rm_res_pbcPK7t_atomsPSt6vectorIN3gmx11BasicVectorIfEESaIS5_EEPA3_f.exit: ; preds = %bb.bc, %bb.au
  %i.nu = load float, ptr %i.c, align 16, !tbaa !18
  %i.nv = load float, ptr %6, align 4, !tbaa !18
  br label %bb.bd

bb.bd:                                            ; preds = %bb.bd, %_ZL10rm_res_pbcPK7t_atomsPSt6vectorIN3gmx11BasicVectorIfEESaIS5_EEPA3_f.exit
  %storemerge.i = phi i32 [ 1, %_ZL10rm_res_pbcPK7t_atomsPSt6vectorIN3gmx11BasicVectorIfEESaIS5_EEPA3_f.exit ], [ %i.nz, %bb.bd ] ; 5 uses
  %i.nw = uitofp nneg i32 %storemerge.i to float
  %i.nx = fmul float %i.nu, %i.nw
  %i.ny = fcmp olt float %i.nx, %i.nv
  %i.nz = add nuw nsw i32 %storemerge.i, 1
  br i1 %i.ny, label %bb.bd, label %bb.be, !llvm.loop !209

bb.be:                                            ; preds = %bb.bd
  %i.oa = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  %i.ob = load float, ptr %i.oa, align 16, !tbaa !18
  %i.oc = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.od = load float, ptr %i.oc, align 4, !tbaa !18
  br label %bb.bf

bb.bf:                                            ; preds = %bb.bf, %bb.be
  %storemerge.1.i = phi i32 [ 1, %bb.be ], [ %i.oh, %bb.bf ] ; 5 uses
  %i.oe = uitofp nneg i32 %storemerge.1.i to float
  %i.of = fmul float %i.ob, %i.oe
  %i.og = fcmp olt float %i.of, %i.od
  %i.oh = add nuw nsw i32 %storemerge.1.i, 1
  br i1 %i.og, label %bb.bf, label %bb.bg, !llvm.loop !209

bb.bg:                                            ; preds = %bb.bf
  %i.oi = getelementptr inbounds nuw i8, ptr %i.c, i64 32 ; 2 uses
  %i.oj = load float, ptr %i.oi, align 16, !tbaa !18
  %i.ok = getelementptr inbounds nuw i8, ptr %6, i64 32 ; 2 uses
  %i.ol = load float, ptr %i.ok, align 4, !tbaa !18
  br label %bb.bh

bb.bh:                                            ; preds = %bb.bh, %bb.bg
  %storemerge.2.i = phi i32 [ 1, %bb.bg ], [ %i.op, %bb.bh ] ; 5 uses
  %i.om = uitofp nneg i32 %storemerge.2.i to float
  %i.on = fmul float %i.oj, %i.om
  %i.oo = fcmp olt float %i.on, %i.ol
  %i.op = add nuw nsw i32 %storemerge.2.i, 1
  br i1 %i.oo, label %bb.bh, label %bb.bi, !llvm.loop !209

bb.bi:                                            ; preds = %bb.bh
  %i.oq = mul nuw nsw i32 %storemerge.1.i, %storemerge.i
  %i.or = mul nuw nsw i32 %i.oq, %storemerge.2.i  ; 5 uses
  %i.os = load ptr, ptr @stderr, align 8, !tbaa !25
  %i.ot = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.os, ptr noundef nonnull @.str.88, i32 noundef %storemerge.i, i32 noundef %storemerge.1.i, i32 noundef %storemerge.2.i) #24 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %35) #22
  invoke void @_Z12init_t_atomsP7t_atomsib(ptr noundef nonnull %35, i32 noundef 0, i1 noundef zeroext false)
          to label %.noexc98 unwind label %.loopexit.split-lp

.noexc98:                                         ; preds = %bb.bi
  call void @llvm.lifetime.start.p0(ptr nonnull %36) #22
  invoke void @_ZN3gmx12AtomsBuilderC1EP7t_atomsP8t_symtab(ptr noundef nonnull align 8 dereferenceable(32) %36, ptr noundef nonnull %35, ptr noundef null)
          to label %.noexc99 unwind label %.loopexit.split-lp

.noexc99:                                         ; preds = %.noexc98
  %i.ou = load i32, ptr %i.ah, align 8, !tbaa !103
  %i.ov = mul nsw i32 %i.ou, %i.or
  %i.ow = getelementptr inbounds nuw i8, ptr %i.ah, i64 40 ; 3 uses
  %i.ox = load i32, ptr %i.ow, align 8, !tbaa !104
  %i.oy = mul nsw i32 %i.ox, %i.or
  invoke void @_ZN3gmx12AtomsBuilder7reserveEii(ptr noundef nonnull align 8 dereferenceable(32) %36, i32 noundef %i.ov, i32 noundef %i.oy)
          to label %bb.bj unwind label %bb.ca

bb.bj:                                            ; preds = %.noexc99
  %i.oz = load i32, ptr %i.ah, align 8, !tbaa !103 ; 2 uses
  %i.pa = mul nsw i32 %i.oz, %i.or                ; 2 uses
  %i.pb = icmp slt i32 %i.pa, 0
  br i1 %i.pb, label %bb.bk, label %_ZNSt6vectorIN3gmx11BasicVectorIfEESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i.i

bb.bk:                                            ; preds = %bb.bj
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.77) #23
          to label %.noexc.i unwind label %bb.cb

.noexc.i:                                         ; preds = %bb.bk
  unreachable

_ZNSt6vectorIN3gmx11BasicVectorIfEESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i.i: ; preds = %bb.bj
  %i.pc = zext nneg i32 %i.pa to i64
  %.not.i.i.i.i.i = icmp eq i32 %i.oz, 0
  %.pre240.i = mul nuw nsw i64 %i.pc, 12          ; 5 uses
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorIN3gmx11BasicVectorIfEESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i._crit_edge.i, label %_ZNSt15__new_allocatorIN3gmx11BasicVectorIfEEE8allocateEmPKv.exit.i.i.i.i.i

_ZNSt15__new_allocatorIN3gmx11BasicVectorIfEEE8allocateEmPKv.exit.i.i.i.i.i: ; preds = %_ZNSt6vectorIN3gmx11BasicVectorIfEESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i.i
  %i.pd = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %.pre240.i) #28
          to label %_ZNSt15__new_allocatorIN3gmx11BasicVectorIfEEE8allocateEmPKv.exit.i.i.i.i.i._ZNSt6vectorIN3gmx11BasicVectorIfEESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i._crit_edge.i_crit_edge unwind label %bb.cb

_ZNSt15__new_allocatorIN3gmx11BasicVectorIfEEE8allocateEmPKv.exit.i.i.i.i.i._ZNSt6vectorIN3gmx11BasicVectorIfEESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i._crit_edge.i_crit_edge: ; preds = %_ZNSt15__new_allocatorIN3gmx11BasicVectorIfEEE8allocateEmPKv.exit.i.i.i.i.i
  %.pre260.pre = load i32, ptr %i.ah, align 8, !tbaa !103
  br label %_ZNSt6vectorIN3gmx11BasicVectorIfEESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i._crit_edge.i

_ZNSt6vectorIN3gmx11BasicVectorIfEESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i._crit_edge.i: ; preds = %_ZNSt15__new_allocatorIN3gmx11BasicVectorIfEEE8allocateEmPKv.exit.i.i.i.i.i._ZNSt6vectorIN3gmx11BasicVectorIfEESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i._crit_edge.i_crit_edge, %_ZNSt6vectorIN3gmx11BasicVectorIfEESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i.i
  %.pre260 = phi i32 [ %.pre260.pre, %_ZNSt15__new_allocatorIN3gmx11BasicVectorIfEEE8allocateEmPKv.exit.i.i.i.i.i._ZNSt6vectorIN3gmx11BasicVectorIfEESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i._crit_edge.i_crit_edge ], [ 0, %_ZNSt6vectorIN3gmx11BasicVectorIfEESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i.i ] ; 3 uses
  %.pre-phi.i.i = phi i64 [ %.pre240.i, %_ZNSt15__new_allocatorIN3gmx11BasicVectorIfEEE8allocateEmPKv.exit.i.i.i.i.i._ZNSt6vectorIN3gmx11BasicVectorIfEESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i._crit_edge.i_crit_edge ], [ 0, %_ZNSt6vectorIN3gmx11BasicVectorIfEESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i.i ] ; 7 uses
  %i.pe = phi ptr [ %i.pd, %_ZNSt15__new_allocatorIN3gmx11BasicVectorIfEEE8allocateEmPKv.exit.i.i.i.i.i._ZNSt6vectorIN3gmx11BasicVectorIfEESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i._crit_edge.i_crit_edge ], [ null, %_ZNSt6vectorIN3gmx11BasicVectorIfEESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i.i ] ; 20 uses
  %i.pf = getelementptr inbounds nuw i8, ptr %i.pe, i64 %.pre240.i ; 13 uses
  %scevgep.i.i.i.i.i.i = getelementptr i8, ptr %i.pe, i64 %.pre-phi.i.i ; 2 uses
  %i.pg = load ptr, ptr %39, align 8, !tbaa !108
  %i.ph = getelementptr inbounds nuw i8, ptr %39, i64 8 ; 5 uses
  %i.pi = load ptr, ptr %i.ph, align 8, !tbaa !108
  %i.pj = icmp eq ptr %i.pg, %i.pi
  br i1 %i.pj, label %_ZNSt6vectorIN3gmx11BasicVectorIfEESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i130.thread.i, label %bb.bl

bb.bl:                                            ; preds = %_ZNSt6vectorIN3gmx11BasicVectorIfEESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i._crit_edge.i
  %i.pk = mul nsw i32 %.pre260, %i.or             ; 2 uses
  %i.pl = sext i32 %i.pk to i64                   ; 2 uses
  %i.pm = icmp slt i32 %i.pk, 0
  br i1 %i.pm, label %bb.bm, label %_ZNSt6vectorIN3gmx11BasicVectorIfEESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i130.i

bb.bm:                                            ; preds = %bb.bl
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.77) #23
          to label %.noexc135.i unwind label %bb.cc

.noexc135.i:                                      ; preds = %bb.bm
  unreachable

_ZNSt6vectorIN3gmx11BasicVectorIfEESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i130.i: ; preds = %bb.bl
  %.not.i.i.i.i131.i = icmp eq i32 %.pre260, 0
  br i1 %.not.i.i.i.i131.i, label %_ZNSt12_Vector_baseIfSaIfEEC2EmRKS0_.exit.thread.i.i, label %_ZNSt15__new_allocatorIN3gmx11BasicVectorIfEEE8allocateEmPKv.exit.i.i.i.i132.i

_ZNSt15__new_allocatorIN3gmx11BasicVectorIfEEE8allocateEmPKv.exit.i.i.i.i132.i: ; preds = %_ZNSt6vectorIN3gmx11BasicVectorIfEESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i130.i
  %i.pn = mul nuw nsw i64 %i.pl, 12               ; 2 uses
  %i.po = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.pn) #28
          to label %_ZNSt15__new_allocatorIN3gmx11BasicVectorIfEEE8allocateEmPKv.exit.i.i.i.i132.i._ZNSt6vectorIN3gmx11BasicVectorIfEESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i130.thread.i_crit_edge unwind label %bb.cc

_ZNSt15__new_allocatorIN3gmx11BasicVectorIfEEE8allocateEmPKv.exit.i.i.i.i132.i._ZNSt6vectorIN3gmx11BasicVectorIfEESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i130.thread.i_crit_edge: ; preds = %_ZNSt15__new_allocatorIN3gmx11BasicVectorIfEEE8allocateEmPKv.exit.i.i.i.i132.i
  %.pre = load i32, ptr %i.ah, align 8, !tbaa !103
  %i.pp = mul nuw nsw i64 %i.pl, 12
  br label %_ZNSt6vectorIN3gmx11BasicVectorIfEESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i130.thread.i

_ZNSt6vectorIN3gmx11BasicVectorIfEESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i130.thread.i: ; preds = %_ZNSt15__new_allocatorIN3gmx11BasicVectorIfEEE8allocateEmPKv.exit.i.i.i.i132.i._ZNSt6vectorIN3gmx11BasicVectorIfEESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i130.thread.i_crit_edge, %_ZNSt6vectorIN3gmx11BasicVectorIfEESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i._crit_edge.i
  %i.pq = phi i32 [ %.pre, %_ZNSt15__new_allocatorIN3gmx11BasicVectorIfEEE8allocateEmPKv.exit.i.i.i.i132.i._ZNSt6vectorIN3gmx11BasicVectorIfEESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i130.thread.i_crit_edge ], [ %.pre260, %_ZNSt6vectorIN3gmx11BasicVectorIfEESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i._crit_edge.i ] ; 2 uses
  %.idx233 = phi i64 [ %i.pp, %_ZNSt15__new_allocatorIN3gmx11BasicVectorIfEEE8allocateEmPKv.exit.i.i.i.i132.i._ZNSt6vectorIN3gmx11BasicVectorIfEESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i130.thread.i_crit_edge ], [ 0, %_ZNSt6vectorIN3gmx11BasicVectorIfEESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i._crit_edge.i ] ; 4 uses
  %.pre-phi.i133.i = phi i64 [ %i.pn, %_ZNSt15__new_allocatorIN3gmx11BasicVectorIfEEE8allocateEmPKv.exit.i.i.i.i132.i._ZNSt6vectorIN3gmx11BasicVectorIfEESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i130.thread.i_crit_edge ], [ 0, %_ZNSt6vectorIN3gmx11BasicVectorIfEESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i._crit_edge.i ] ; 4 uses
  %i.pr = phi ptr [ %i.po, %_ZNSt15__new_allocatorIN3gmx11BasicVectorIfEEE8allocateEmPKv.exit.i.i.i.i132.i._ZNSt6vectorIN3gmx11BasicVectorIfEESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i130.thread.i_crit_edge ], [ null, %_ZNSt6vectorIN3gmx11BasicVectorIfEESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i._crit_edge.i ] ; 6 uses
  %i.ps = getelementptr inbounds nuw i8, ptr %i.pr, i64 %.idx233 ; 4 uses
  %scevgep.i.i.i.i.i134.i = getelementptr i8, ptr %i.pr, i64 %.pre-phi.i133.i ; 3 uses
  %i.pt = mul nsw i32 %i.pq, %i.or                ; 2 uses
  %i.pu = zext nneg i32 %i.pt to i64              ; 3 uses
  %i.pv = icmp slt i32 %i.pt, 0
  br i1 %i.pv, label %bb.bn, label %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i.i

bb.bn:                                            ; preds = %_ZNSt6vectorIN3gmx11BasicVectorIfEESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i130.thread.i
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.77) #23
          to label %.noexc139.i unwind label %bb.cd

.noexc139.i:                                      ; preds = %bb.bn
  unreachable

_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i.i: ; preds = %_ZNSt6vectorIN3gmx11BasicVectorIfEESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i130.thread.i
  %.not.i.i.i.i138.i = icmp eq i32 %i.pq, 0
  br i1 %.not.i.i.i.i138.i, label %_ZNSt12_Vector_baseIfSaIfEEC2EmRKS0_.exit.thread.i.i, label %bb.bo

bb.bo:                                            ; preds = %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i.i
  %i.pw = shl nuw nsw i64 %i.pu, 2
  %i.px = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.pw) #28
          to label %.noexc140.i unwind label %bb.cd ; 5 uses

.noexc140.i:                                      ; preds = %bb.bo
  %i.py = getelementptr inbounds nuw [4 x i8], ptr %i.px, i64 %i.pu ; 2 uses
  store float 0.000000e+00, ptr %i.px, align 4, !tbaa !18
  %i.pz = getelementptr i8, ptr %i.px, i64 4      ; 3 uses
  %i.qa = add nsw i64 %i.pu, -1                   ; 2 uses
  %i.qb = icmp eq i64 %i.qa, 0
  br i1 %i.qb, label %_ZNSt12_Vector_baseIfSaIfEEC2EmRKS0_.exit.thread.i.i, label %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i.i

_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i.i: ; preds = %.noexc140.i
  %.idx.i.i.i.i.i.i.i.i = shl nuw nsw i64 %i.qa, 2 ; 2 uses
  call void @llvm.memset.p0.i64(ptr align 4 %i.pz, i8 0, i64 %.idx.i.i.i.i.i.i.i.i, i1 false), !tbaa !18
  %i.qc = getelementptr inbounds nuw i8, ptr %i.pz, i64 %.idx.i.i.i.i.i.i.i.i
  br label %_ZNSt12_Vector_baseIfSaIfEEC2EmRKS0_.exit.thread.i.i

_ZNSt12_Vector_baseIfSaIfEEC2EmRKS0_.exit.thread.i.i: ; preds = %_ZNSt6vectorIN3gmx11BasicVectorIfEESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i130.i, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i.i, %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i.i, %.noexc140.i
  %.idx233365374 = phi i64 [ %.idx233, %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i.i ], [ %.idx233, %.noexc140.i ], [ %.idx233, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i.i ], [ 0, %_ZNSt6vectorIN3gmx11BasicVectorIfEESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i130.i ] ; 2 uses
  %.pre-phi.i133.i366373 = phi i64 [ %.pre-phi.i133.i, %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i.i ], [ %.pre-phi.i133.i, %.noexc140.i ], [ %.pre-phi.i133.i, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i.i ], [ 0, %_ZNSt6vectorIN3gmx11BasicVectorIfEESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i130.i ] ; 5 uses
  %i.qd = phi ptr [ %i.pr, %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i.i ], [ %i.pr, %.noexc140.i ], [ %i.pr, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i.i ], [ null, %_ZNSt6vectorIN3gmx11BasicVectorIfEESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i130.i ] ; 19 uses
  %i.qe = phi ptr [ %i.ps, %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i.i ], [ %i.ps, %.noexc140.i ], [ %i.ps, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i.i ], [ null, %_ZNSt6vectorIN3gmx11BasicVectorIfEESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i130.i ] ; 14 uses
  %scevgep.i.i.i.i.i134.i367372 = phi ptr [ %scevgep.i.i.i.i.i134.i, %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i.i ], [ %scevgep.i.i.i.i.i134.i, %.noexc140.i ], [ %scevgep.i.i.i.i.i134.i, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i.i ], [ null, %_ZNSt6vectorIN3gmx11BasicVectorIfEESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i130.i ] ; 2 uses
  %.sroa.0218.0 = phi ptr [ %i.px, %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i.i ], [ %i.px, %.noexc140.i ], [ null, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i.i ], [ null, %_ZNSt6vectorIN3gmx11BasicVectorIfEESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i130.i ] ; 13 uses
  %.sroa.17.0 = phi ptr [ %i.py, %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i.i ], [ %i.py, %.noexc140.i ], [ null, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i.i ], [ null, %_ZNSt6vectorIN3gmx11BasicVectorIfEESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i130.i ] ; 6 uses
  %i.qf = phi ptr [ %i.qc, %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i.i ], [ %i.pz, %.noexc140.i ], [ null, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i.i ], [ null, %_ZNSt6vectorIN3gmx11BasicVectorIfEESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i130.i ] ; 6 uses
  %i.qg = load ptr, ptr %47, align 8, !tbaa !29   ; 5 uses
  %i.qh = getelementptr inbounds nuw i8, ptr %47, i64 8 ; 3 uses
  %i.qi = load ptr, ptr %i.qh, align 8, !tbaa !29 ; 3 uses
  %i.qj = icmp eq ptr %i.qg, %i.qi
  %i.qk = getelementptr inbounds nuw i8, ptr %i.qg, i64 4 ; 2 uses
  %.not9.i.i.i = icmp eq ptr %i.qk, %i.qi
  %or.cond.i.i.i = select i1 %i.qj, i1 true, i1 %.not9.i.i.i
  br i1 %or.cond.i.i.i, label %.lr.ph190.us.us.preheader.i, label %.lr.ph.preheader.i.i.i

.lr.ph.preheader.i.i.i:                           ; preds = %_ZNSt12_Vector_baseIfSaIfEEC2EmRKS0_.exit.thread.i.i
  %.pre.i.i.i = load float, ptr %i.qg, align 4, !tbaa !18
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i, %.lr.ph.preheader.i.i.i
  %i.ql = phi float [ %i.qq, %.lr.ph.i.i.i ], [ %.pre.i.i.i, %.lr.ph.preheader.i.i.i ] ; 2 uses
  %i.qm = phi ptr [ %i.qp, %.lr.ph.i.i.i ], [ %i.qk, %.lr.ph.preheader.i.i.i ] ; 3 uses
  %.sroa.02.010.i.i.i = phi ptr [ %spec.select.i.i.i, %.lr.ph.i.i.i ], [ %i.qg, %.lr.ph.preheader.i.i.i ]
  %i.qn = load float, ptr %i.qm, align 4, !tbaa !18 ; 2 uses
  %i.qo = fcmp olt float %i.ql, %i.qn             ; 2 uses
  %spec.select.i.i.i = select i1 %i.qo, ptr %i.qm, ptr %.sroa.02.010.i.i.i ; 2 uses
  %i.qp = getelementptr inbounds nuw i8, ptr %i.qm, i64 4 ; 2 uses
  %.not.i.i.i93 = icmp eq ptr %i.qp, %i.qi
  %i.qq = select i1 %i.qo, float %i.qn, float %i.ql
  br i1 %.not.i.i.i93, label %.lr.ph190.us.us.preheader.i, label %.lr.ph.i.i.i, !llvm.loop !210

.lr.ph190.us.us.preheader.i:                      ; preds = %.lr.ph.i.i.i, %_ZNSt12_Vector_baseIfSaIfEEC2EmRKS0_.exit.thread.i.i
  %.sroa.02.2.i.i.i = phi ptr [ %i.qg, %_ZNSt12_Vector_baseIfSaIfEEC2EmRKS0_.exit.thread.i.i ], [ %spec.select.i.i.i, %.lr.ph.i.i.i ]
  %i.qr = load float, ptr %.sroa.02.2.i.i.i, align 4, !tbaa !18 ; 3 uses
  %i.qs = load float, ptr %6, align 4, !tbaa !18
  %i.qt = call float @llvm.fmuladd.f32(float %i.qr, float 3.000000e+00, float %i.qs)
  %i.qu = load float, ptr %i.oc, align 4, !tbaa !18
  %i.qv = call float @llvm.fmuladd.f32(float %i.qr, float 3.000000e+00, float %i.qu)
  %i.qw = load float, ptr %i.ok, align 4, !tbaa !18
  %i.qx = call float @llvm.fmuladd.f32(float %i.qr, float 3.000000e+00, float %i.qw)
  %i.qy = getelementptr inbounds nuw i8, ptr %i.ah, i64 8 ; 5 uses
  %i.qz = getelementptr inbounds nuw i8, ptr %i.ah, i64 48 ; 3 uses
  %.pre.i94 = load i32, ptr %i.ah, align 8, !tbaa !103 ; 3 uses
  br label %.lr.ph190.us.us.i

.lr.ph190.us.us.i:                                ; preds = %._crit_edge191.split.us.us.us.i, %.lr.ph190.us.us.preheader.i
  %i.ra = phi i32 [ %i.uh, %._crit_edge191.split.us.us.us.i ], [ %.pre.i94, %.lr.ph190.us.us.preheader.i ] ; 2 uses
  %i.rb = phi i32 [ %i.ui, %._crit_edge191.split.us.us.us.i ], [ %.pre.i94, %.lr.ph190.us.us.preheader.i ] ; 2 uses
  %i.rc = phi i32 [ %i.uj, %._crit_edge191.split.us.us.us.i ], [ %.pre.i94, %.lr.ph190.us.us.preheader.i ] ; 2 uses
  %.0109203.us.us.i = phi i32 [ %i.uk, %._crit_edge191.split.us.us.us.i ], [ 0, %.lr.ph190.us.us.preheader.i ] ; 2 uses
  %i.rd = uitofp nneg i32 %.0109203.us.us.i to float
  %i.re = load float, ptr %i.c, align 16, !tbaa !18
  %i.rf = fmul float %i.re, %i.rd
  %i.rg = icmp sgt i32 %i.rc, 0
  br i1 %i.rg, label %.lr.ph185.us.us208.us.i, label %._crit_edge191.split.us.us.us.i

.lr.ph185.us.us208.us.i:                          ; preds = %.lr.ph190.us.us.i, %._crit_edge186.us.us.us.i
  %i.rh = phi i32 [ %i.ue, %._crit_edge186.us.us.us.i ], [ %i.ra, %.lr.ph190.us.us.i ] ; 2 uses
  %i.ri = phi i32 [ %i.uf, %._crit_edge186.us.us.us.i ], [ %i.rb, %.lr.ph190.us.us.i ] ; 2 uses
  %.0108188.us.us209.us.i = phi i32 [ %i.ug, %._crit_edge186.us.us.us.i ], [ 0, %.lr.ph190.us.us.i ] ; 2 uses
  %i.rj = uitofp nneg i32 %.0108188.us.us209.us.i to float
  %i.rk = load float, ptr %i.oa, align 16, !tbaa !18
  %i.rl = fmul float %i.rk, %i.rj
  %i.rm = icmp sgt i32 %i.ri, 0
  br i1 %i.rm, label %.lr.ph185.split.us192.us.us.i, label %._crit_edge186.us.us.us.i

.lr.ph185.split.us192.us.us.i:                    ; preds = %.lr.ph185.us.us208.us.i, %._crit_edge.us.us.us.i
  %i.rn = phi i32 [ %i.uc, %._crit_edge.us.us.us.i ], [ %i.rh, %.lr.ph185.us.us208.us.i ] ; 2 uses
  %.0107183.us193.us.us.i = phi i32 [ %i.ud, %._crit_edge.us.us.us.i ], [ 0, %.lr.ph185.us.us208.us.i ] ; 2 uses
  %i.ro = uitofp nneg i32 %.0107183.us193.us.us.i to float
  %i.rp = load float, ptr %i.oi, align 16, !tbaa !18
  %i.rq = fmul float %i.rp, %i.ro                 ; 2 uses
  %i.rr = icmp sgt i32 %i.rn, 0
  br i1 %i.rr, label %.lr.ph.us.us.us.i, label %._crit_edge.us.us.us.i

.lr.ph.us.us.us.i:                                ; preds = %.lr.ph185.split.us192.us.us.i, %bb.bz
  %indvars.iv.i96 = phi i64 [ %indvars.iv.next.i97, %bb.bz ], [ 0, %.lr.ph185.split.us192.us.us.i ] ; 8 uses
  %.0106181.us.us.us.i = phi i1 [ %.1.us.us.us.i, %bb.bz ], [ false, %.lr.ph185.split.us192.us.us.i ]
  %i.rs = invoke noundef i32 @_ZNK3gmx12AtomsBuilder16currentAtomCountEv(ptr noundef nonnull align 8 dereferenceable(32) %36)
          to label %bb.bp unwind label %.split.us.split.us.split.us.i

bb.bp:                                            ; preds = %.lr.ph.us.us.us.i
  %i.rt = load ptr, ptr %38, align 8, !tbaa !107
  %i.ru = getelementptr inbounds nuw [12 x i8], ptr %i.rt, i64 %indvars.iv.i96 ; 4 uses
  %i.rv = sext i32 %i.rs to i64                   ; 3 uses
  %i.rw = getelementptr inbounds nuw [12 x i8], ptr %i.pe, i64 %i.rv ; 4 uses
  %i.rx = load float, ptr %i.ru, align 4, !tbaa !18
  %i.ry = fadd float %i.rf, %i.rx                 ; 2 uses
  %i.rz = fcmp olt float %i.ry, %i.qt
  store float %i.ry, ptr %i.rw, align 4, !tbaa !18
  %i.sa = getelementptr inbounds nuw i8, ptr %i.ru, i64 4
  %i.sb = load float, ptr %i.sa, align 4, !tbaa !18
  %i.sc = fadd float %i.rl, %i.sb                 ; 3 uses
  br i1 %i.rz, label %bb.bq, label %.thread.i

.thread.i:                                        ; preds = %bb.bp
  %i.sd = getelementptr inbounds nuw i8, ptr %i.rw, i64 4
  store float %i.sc, ptr %i.sd, align 4, !tbaa !18
  %i.se = getelementptr inbounds nuw i8, ptr %i.ru, i64 8
  %i.sf = load float, ptr %i.se, align 4, !tbaa !18
  %i.sg = fadd float %i.rq, %i.sf
  br label %bb.br

bb.bq:                                            ; preds = %bb.bp
  %i.sh = fcmp olt float %i.sc, %i.qv
  %i.si = getelementptr inbounds nuw i8, ptr %i.rw, i64 4
  store float %i.sc, ptr %i.si, align 4, !tbaa !18
  %i.sj = getelementptr inbounds nuw i8, ptr %i.ru, i64 8
  %i.sk = load float, ptr %i.sj, align 4, !tbaa !18
  %i.sl = fadd float %i.rq, %i.sk                 ; 2 uses
  %i.sm = fcmp olt float %i.sl, %i.qx
  %spec.select282.i.a = select i1 %i.sh, i1 %i.sm, i1 false
  br label %bb.br

bb.br:                                            ; preds = %bb.bq, %.thread.i
  %i.sn = phi float [ %i.sl, %bb.bq ], [ %i.sg, %.thread.i ]
  %i.so = phi i1 [ %spec.select282.i.a, %bb.bq ], [ false, %.thread.i ]
  %i.sp = getelementptr inbounds nuw i8, ptr %i.rw, i64 8
  store float %i.sn, ptr %i.sp, align 4, !tbaa !18
  %i.sq = select i1 %.0106181.us.us.us.i, i1 true, i1 %i.so ; 2 uses
  %i.sr = load ptr, ptr %39, align 8, !tbaa !108  ; 2 uses
  %i.ss = load ptr, ptr %i.ph, align 8, !tbaa !108
  %i.st = icmp eq ptr %i.sr, %i.ss
  br i1 %i.st, label %bb.bt, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.su = getelementptr inbounds nuw [12 x i8], ptr %i.sr, i64 %indvars.iv.i96 ; 3 uses
  %i.sv = getelementptr inbounds nuw [12 x i8], ptr %i.qd, i64 %i.rv ; 3 uses
  %i.sw = load float, ptr %i.su, align 4, !tbaa !18
  store float %i.sw, ptr %i.sv, align 4, !tbaa !18
  %i.sx = getelementptr inbounds nuw i8, ptr %i.su, i64 4
  %i.sy = load float, ptr %i.sx, align 4, !tbaa !18
  %i.sz = getelementptr inbounds nuw i8, ptr %i.sv, i64 4
  store float %i.sy, ptr %i.sz, align 4, !tbaa !18
  %i.ta = getelementptr inbounds nuw i8, ptr %i.su, i64 8
  %i.tb = load float, ptr %i.ta, align 4, !tbaa !18
  %i.tc = getelementptr inbounds nuw i8, ptr %i.sv, i64 8
  store float %i.tb, ptr %i.tc, align 4, !tbaa !18
  br label %bb.bt

bb.bt:                                            ; preds = %bb.bs, %bb.br
  %i.td = load ptr, ptr %47, align 8, !tbaa !246
  %i.te = getelementptr inbounds nuw [4 x i8], ptr %i.td, i64 %indvars.iv.i96
  %i.tf = load float, ptr %i.te, align 4, !tbaa !18
  %i.tg = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0218.0, i64 %i.rv
  store float %i.tf, ptr %i.tg, align 4, !tbaa !18
  %i.th = trunc nuw nsw i64 %indvars.iv.i96 to i32
  invoke void @_ZN3gmx12AtomsBuilder7addAtomERK7t_atomsi(ptr noundef nonnull align 8 dereferenceable(32) %36, ptr noundef nonnull align 8 dereferenceable(72) %i.ah, i32 noundef %i.th)
          to label %bb.bu unwind label %.thread271.i

bb.bu:                                            ; preds = %bb.bt
  %i.ti = load i32, ptr %i.ah, align 8, !tbaa !103
  %i.tj = add nsw i32 %i.ti, -1
  %i.tk = zext i32 %i.tj to i64
  %i.tl = icmp eq i64 %indvars.iv.i96, %i.tk
  br i1 %i.tl, label %bb.bw, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %i.tm = load ptr, ptr %i.qy, align 8, !tbaa !110
  %i.tn = getelementptr inbounds nuw [36 x i8], ptr %i.tm, i64 %indvars.iv.i96 ; 2 uses
  %i.to = getelementptr inbounds nuw i8, ptr %i.tn, i64 60
  %i.tp = load i32, ptr %i.to, align 4, !tbaa !114
  %i.tq = getelementptr inbounds nuw i8, ptr %i.tn, i64 24
  %i.tr = load i32, ptr %i.tq, align 4, !tbaa !114
  %.not.us.us.us.i = icmp eq i32 %i.tp, %i.tr
  br i1 %.not.us.us.us.i, label %bb.bz, label %bb.bw

bb.bw:                                            ; preds = %bb.bv, %bb.bu
  br i1 %i.sq, label %bb.by, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  invoke void @_ZN3gmx12AtomsBuilder21discardCurrentResidueEv(ptr noundef nonnull align 8 dereferenceable(32) %36)
          to label %bb.bz unwind label %.thread271.i

bb.by:                                            ; preds = %bb.bw
  %i.ts = load ptr, ptr %i.qz, align 8, !tbaa !109
  %i.tt = load ptr, ptr %i.qy, align 8, !tbaa !110
  %i.tu = getelementptr inbounds nuw [36 x i8], ptr %i.tt, i64 %indvars.iv.i96
  %i.tv = getelementptr inbounds nuw i8, ptr %i.tu, i64 24
  %i.tw = load i32, ptr %i.tv, align 4, !tbaa !114
  %i.tx = sext i32 %i.tw to i64
  %i.ty = getelementptr inbounds [32 x i8], ptr %i.ts, i64 %i.tx
  invoke void @_ZN3gmx12AtomsBuilder13finishResidueERK9t_resinfo(ptr noundef nonnull align 8 dereferenceable(32) %36, ptr noundef nonnull align 8 dereferenceable(32) %i.ty)
          to label %bb.bz unwind label %.thread271.i

bb.bz:                                            ; preds = %bb.by, %bb.bx, %bb.bv
  %.1.us.us.us.i = phi i1 [ %i.sq, %bb.bv ], [ false, %bb.bx ], [ false, %bb.by ]
  %indvars.iv.next.i97 = add nuw nsw i64 %indvars.iv.i96, 1 ; 2 uses
  %i.tz = load i32, ptr %i.ah, align 8, !tbaa !103 ; 2 uses
  %i.ua = sext i32 %i.tz to i64
  %i.ub = icmp slt i64 %indvars.iv.next.i97, %i.ua
  br i1 %i.ub, label %.lr.ph.us.us.us.i, label %._crit_edge.us.us.us.i, !llvm.loop !211

._crit_edge.us.us.us.i:                           ; preds = %bb.bz, %.lr.ph185.split.us192.us.us.i
  %i.uc = phi i32 [ %i.rn, %.lr.ph185.split.us192.us.us.i ], [ %i.tz, %bb.bz ] ; 3 uses
  %i.ud = add nuw nsw i32 %.0107183.us193.us.us.i, 1 ; 2 uses
  %exitcond224.not.i = icmp eq i32 %i.ud, %storemerge.2.i
  br i1 %exitcond224.not.i, label %._crit_edge186.us.us.us.i, label %.lr.ph185.split.us192.us.us.i, !llvm.loop !212

._crit_edge186.us.us.us.i:                        ; preds = %._crit_edge.us.us.us.i, %.lr.ph185.us.us208.us.i
  %i.ue = phi i32 [ %i.rh, %.lr.ph185.us.us208.us.i ], [ %i.uc, %._crit_edge.us.us.us.i ] ; 2 uses
  %i.uf = phi i32 [ %i.ri, %.lr.ph185.us.us208.us.i ], [ %i.uc, %._crit_edge.us.us.us.i ] ; 3 uses
  %i.ug = add nuw nsw i32 %.0108188.us.us209.us.i, 1 ; 2 uses
  %exitcond225.not.i = icmp eq i32 %i.ug, %storemerge.1.i
  br i1 %exitcond225.not.i, label %._crit_edge191.split.us.us.us.i, label %.lr.ph185.us.us208.us.i, !llvm.loop !213

._crit_edge191.split.us.us.us.i:                  ; preds = %._crit_edge186.us.us.us.i, %.lr.ph190.us.us.i
  %i.uh = phi i32 [ %i.ra, %.lr.ph190.us.us.i ], [ %i.ue, %._crit_edge186.us.us.us.i ]
  %i.ui = phi i32 [ %i.rb, %.lr.ph190.us.us.i ], [ %i.uf, %._crit_edge186.us.us.us.i ]
  %i.uj = phi i32 [ %i.rc, %.lr.ph190.us.us.i ], [ %i.uf, %._crit_edge186.us.us.us.i ]
  %i.uk = add nuw nsw i32 %.0109203.us.us.i, 1    ; 2 uses
  %exitcond226.not.i = icmp eq i32 %i.uk, %storemerge.i
  br i1 %exitcond226.not.i, label %._crit_edge.i95, label %.lr.ph190.us.us.i, !llvm.loop !214

.split.us.split.us.split.us.i:                    ; preds = %.lr.ph.us.us.us.i
  %i.ul = landingpad { ptr, i32 }
          cleanup
  br label %bb.di

.thread271.i:                                     ; preds = %bb.by, %bb.bx, %bb.bt
  %i.um = landingpad { ptr, i32 }
          cleanup
  br label %bb.dj

bb.ca:                                            ; preds = %.noexc99
  %i.un = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIN3gmx11BasicVectorIfEESaIS2_EED2Ev.exit158.i

bb.cb:                                            ; preds = %_ZNSt15__new_allocatorIN3gmx11BasicVectorIfEEE8allocateEmPKv.exit.i.i.i.i.i, %bb.bk
  %i.uo = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIN3gmx11BasicVectorIfEESaIS2_EED2Ev.exit158.i

bb.cc:                                            ; preds = %_ZNSt15__new_allocatorIN3gmx11BasicVectorIfEEE8allocateEmPKv.exit.i.i.i.i132.i, %bb.bm
  %i.up = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIN3gmx11BasicVectorIfEESaIS2_EED2Ev.exit156.i

bb.cd:                                            ; preds = %bb.bo, %bb.bn
  %i.uq = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit154.i

._crit_edge.i95:                                  ; preds = %._crit_edge191.split.us.us.us.i
  %i.ur = load ptr, ptr %i.qy, align 8, !tbaa !110
  invoke void @_Z9save_freePKcS0_iPv(ptr noundef nonnull @.str.89, ptr noundef nonnull @.str.63, i32 noundef 359, ptr noundef %i.ur)
          to label %_ZL14gmx_sfree_implI6t_atomEvPKcS2_iPT_.exit.i unwind label %bb.cf

_ZL14gmx_sfree_implI6t_atomEvPKcS2_iPT_.exit.i:   ; preds = %._crit_edge.i95
  %i.us = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  %i.ut = load ptr, ptr %i.us, align 8, !tbaa !120
  invoke void @_Z9save_freePKcS0_iPv(ptr noundef nonnull @.str.90, ptr noundef nonnull @.str.63, i32 noundef 360, ptr noundef %i.ut)
          to label %_ZL14gmx_sfree_implIPPcEvPKcS3_iPT_.exit.i unwind label %bb.cf

_ZL14gmx_sfree_implIPPcEvPKcS3_iPT_.exit.i:       ; preds = %_ZL14gmx_sfree_implI6t_atomEvPKcS2_iPT_.exit.i
  %i.uu = load ptr, ptr %i.qz, align 8, !tbaa !109
  invoke void @_Z9save_freePKcS0_iPv(ptr noundef nonnull @.str.91, ptr noundef nonnull @.str.63, i32 noundef 361, ptr noundef %i.uu)
          to label %_ZL14gmx_sfree_implI9t_resinfoEvPKcS2_iPT_.exit.i unwind label %bb.cf

_ZL14gmx_sfree_implI9t_resinfoEvPKcS2_iPT_.exit.i: ; preds = %_ZL14gmx_sfree_implIPPcEvPKcS3_iPT_.exit.i
  %i.uv = load i32, ptr %35, align 8, !tbaa !103  ; 2 uses
  store i32 %i.uv, ptr %i.ah, align 8, !tbaa !103
  %i.uw = getelementptr inbounds nuw i8, ptr %35, i64 40
  %i.ux = load i32, ptr %i.uw, align 8, !tbaa !104
  store i32 %i.ux, ptr %i.ow, align 8, !tbaa !104
  %i.uy = getelementptr inbounds nuw i8, ptr %35, i64 8
  %i.uz = load <2 x ptr>, ptr %i.uy, align 8, !tbaa !247
  store <2 x ptr> %i.uz, ptr %i.qy, align 8, !tbaa !247
  %i.va = getelementptr inbounds nuw i8, ptr %35, i64 48
  %i.vb = load ptr, ptr %i.va, align 8, !tbaa !109
  store ptr %i.vb, ptr %i.qz, align 8, !tbaa !109
  %i.vc = getelementptr inbounds nuw i8, ptr %i.ah, i64 68 ; 2 uses
  %i.vd = load i8, ptr %i.vc, align 4, !tbaa !248, !range !26, !noundef !27
  %i.ve = trunc nuw i8 %i.vd to i1
  br i1 %i.ve, label %bb.ce, label %bb.cg

bb.ce:                                            ; preds = %_ZL14gmx_sfree_implI9t_resinfoEvPKcS2_iPT_.exit.i
  %i.vf = getelementptr inbounds nuw i8, ptr %i.ah, i64 56 ; 2 uses
  %i.vg = load ptr, ptr %i.vf, align 8, !tbaa !249
  invoke void @_Z9save_freePKcS0_iPv(ptr noundef nonnull @.str.92, ptr noundef nonnull @.str.63, i32 noundef 369, ptr noundef %i.vg)
          to label %_ZL14gmx_sfree_implI9t_pdbinfoEvPKcS2_iPT_.exit.i unwind label %bb.cf

_ZL14gmx_sfree_implI9t_pdbinfoEvPKcS2_iPT_.exit.i: ; preds = %bb.ce
  %i.vh = getelementptr inbounds nuw i8, ptr %35, i64 56
  %i.vi = load ptr, ptr %i.vh, align 8, !tbaa !249
  store ptr %i.vi, ptr %i.vf, align 8, !tbaa !249
  %i.vj = getelementptr inbounds nuw i8, ptr %35, i64 68
  %i.vk = load i8, ptr %i.vj, align 4, !tbaa !248, !range !26, !noundef !27
  store i8 %i.vk, ptr %i.vc, align 4, !tbaa !248
  %.pre231.i = load i32, ptr %i.ah, align 8, !tbaa !103
  br label %bb.cg

bb.cf:                                            ; preds = %_ZNKSt6vectorIN3gmx11BasicVectorIfEESaIS2_EE12_M_check_lenEmPKc.exit.i.i, %bb.cs, %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i, %bb.da, %_ZNKSt6vectorIN3gmx11BasicVectorIfEESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i, %bb.ck, %bb.ce, %_ZL14gmx_sfree_implIPPcEvPKcS3_iPT_.exit.i, %_ZL14gmx_sfree_implI6t_atomEvPKcS2_iPT_.exit.i, %._crit_edge.i95
  %.sroa.0223.1 = phi ptr [ %i.qd, %bb.ck ], [ %.sroa.0223.4, %bb.da ], [ %.sroa.0223.4, %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i ], [ %i.qd, %bb.cs ], [ %i.qd, %_ZNKSt6vectorIN3gmx11BasicVectorIfEESaIS2_EE12_M_check_lenEmPKc.exit.i.i ], [ %i.qd, %_ZNKSt6vectorIN3gmx11BasicVectorIfEESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i ], [ %i.qd, %bb.ce ], [ %i.qd, %_ZL14gmx_sfree_implIPPcEvPKcS3_iPT_.exit.i ], [ %i.qd, %_ZL14gmx_sfree_implI6t_atomEvPKcS2_iPT_.exit.i ], [ %i.qd, %._crit_edge.i95 ]
  %.sroa.17228.1 = phi ptr [ %i.qe, %bb.ck ], [ %.sroa.17228.4, %bb.da ], [ %.sroa.17228.4, %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i ], [ %i.qe, %bb.cs ], [ %i.qe, %_ZNKSt6vectorIN3gmx11BasicVectorIfEESaIS2_EE12_M_check_lenEmPKc.exit.i.i ], [ %i.qe, %_ZNKSt6vectorIN3gmx11BasicVectorIfEESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i ], [ %i.qe, %bb.ce ], [ %i.qe, %_ZL14gmx_sfree_implIPPcEvPKcS3_iPT_.exit.i ], [ %i.qe, %_ZL14gmx_sfree_implI6t_atomEvPKcS2_iPT_.exit.i ], [ %i.qe, %._crit_edge.i95 ]
  %.sroa.19.0.i = phi ptr [ %i.pf, %bb.ck ], [ %i.wl, %bb.da ], [ %i.wl, %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i ], [ %i.wl, %bb.cs ], [ %i.wl, %_ZNKSt6vectorIN3gmx11BasicVectorIfEESaIS2_EE12_M_check_lenEmPKc.exit.i.i ], [ %i.pf, %_ZNKSt6vectorIN3gmx11BasicVectorIfEESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i ], [ %i.pf, %bb.ce ], [ %i.pf, %_ZL14gmx_sfree_implIPPcEvPKcS3_iPT_.exit.i ], [ %i.pf, %_ZL14gmx_sfree_implI6t_atomEvPKcS2_iPT_.exit.i ], [ %i.pf, %._crit_edge.i95 ]
  %.sroa.0162.0.i = phi ptr [ %i.pe, %bb.ck ], [ %i.wi, %bb.da ], [ %i.wi, %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i ], [ %i.wi, %bb.cs ], [ %i.wi, %_ZNKSt6vectorIN3gmx11BasicVectorIfEESaIS2_EE12_M_check_lenEmPKc.exit.i.i ], [ %i.pe, %_ZNKSt6vectorIN3gmx11BasicVectorIfEESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i ], [ %i.pe, %bb.ce ], [ %i.pe, %_ZL14gmx_sfree_implIPPcEvPKcS3_iPT_.exit.i ], [ %i.pe, %_ZL14gmx_sfree_implI6t_atomEvPKcS2_iPT_.exit.i ], [ %i.pe, %._crit_edge.i95 ]
  %i.vl = landingpad { ptr, i32 }
          cleanup
  br label %bb.di

bb.cg:                                            ; preds = %_ZL14gmx_sfree_implI9t_pdbinfoEvPKcS2_iPT_.exit.i, %_ZL14gmx_sfree_implI9t_resinfoEvPKcS2_iPT_.exit.i
  %i.vm = phi i32 [ %.pre231.i, %_ZL14gmx_sfree_implI9t_pdbinfoEvPKcS2_iPT_.exit.i ], [ %i.uv, %_ZL14gmx_sfree_implI9t_resinfoEvPKcS2_iPT_.exit.i ] ; 5 uses
  %i.vn = sext i32 %i.vm to i64                   ; 4 uses
  %i.vo = udiv exact i64 %.pre-phi.i.i, 12        ; 6 uses
  %i.vp = icmp ult i64 %i.vo, %i.vn
  br i1 %i.vp, label %bb.ch, label %bb.cm

bb.ch:                                            ; preds = %bb.cg
  %i.vq = sub nuw nsw i64 %i.vn, %i.vo            ; 4 uses
  %gepdiff.i = sub nsw i64 %.pre240.i, %.pre-phi.i.i
  %i.vr = sdiv exact i64 %gepdiff.i, 12           ; 2 uses
  %i.vs = sub nuw nsw i64 768614336404564650, %i.vo
  %i.vt = icmp ule i64 %i.vr, %i.vs
  call void @llvm.assume(i1 %i.vt)
  %.not28.i.i.i = icmp ult i64 %i.vr, %i.vq
  br i1 %.not28.i.i.i, label %bb.cj, label %bb.ci

bb.ci:                                            ; preds = %bb.ch
  %i.vu = mul nuw nsw i64 %i.vq, 12
  %scevgep.i.i.i.i.i145.i = getelementptr i8, ptr %scevgep.i.i.i.i.i.i, i64 %i.vu
  br label %_ZNSt6vectorIN3gmx11BasicVectorIfEESaIS2_EE6resizeEm.exit.i

bb.cj:                                            ; preds = %bb.ch
  %i.vv = icmp slt i32 %i.vm, 0
  br i1 %i.vv, label %bb.ck, label %_ZNKSt6vectorIN3gmx11BasicVectorIfEESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i

bb.ck:                                            ; preds = %bb.cj
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.94) #23
          to label %.noexc146.i unwind label %bb.cf

.noexc146.i:                                      ; preds = %bb.ck
  unreachable

_ZNKSt6vectorIN3gmx11BasicVectorIfEESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.cj
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.vo, i64 %i.vq)
  %i.vw = add nuw nsw i64 %.sroa.speculated.i.i.i.i, %i.vo
  %i.vx = call i64 @llvm.umin.i64(i64 %i.vw, i64 768614336404564650) ; 2 uses
  %i.vy = mul nuw nsw i64 %i.vx, 12
  %i.vz = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.vy) #28
          to label %.noexc147.i unwind label %bb.cf ; 4 uses

.noexc147.i:                                      ; preds = %_ZNKSt6vectorIN3gmx11BasicVectorIfEESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.wa = getelementptr inbounds nuw i8, ptr %i.vz, i64 %.pre-phi.i.i
  %.not10.i.i.i.i.i.i = icmp eq i64 %.pre-phi.i.i, 0
  br i1 %.not10.i.i.i.i.i.i, label %_ZNSt6vectorIN3gmx11BasicVectorIfEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit.i.i.i, label %.lr.ph.i.i.i.i.i.preheader.i

.lr.ph.i.i.i.i.i.preheader.i:                     ; preds = %.noexc147.i
  %i.wb = add nsw i64 %.pre-phi.i.i, -12
  %i.wc = urem i64 %i.wb, 12
  %i.wd = sub nsw i64 %.pre-phi.i.i, %i.wc
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.vz, ptr align 4 %i.pe, i64 %i.wd, i1 false), !alias.scope !250
  br label %_ZNSt6vectorIN3gmx11BasicVectorIfEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit.i.i.i

_ZNSt6vectorIN3gmx11BasicVectorIfEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.preheader.i, %.noexc147.i
  %.not.i31.i.i.i = icmp eq ptr %i.pe, null
  br i1 %.not.i31.i.i.i, label %_ZNSt12_Vector_baseIN3gmx11BasicVectorIfEESaIS2_EE13_M_deallocateEPS2_m.exit32.i.i.i, label %bb.cl

bb.cl:                                            ; preds = %_ZNSt6vectorIN3gmx11BasicVectorIfEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.pe, i64 noundef %.pre240.i) #25
  br label %_ZNSt12_Vector_baseIN3gmx11BasicVectorIfEESaIS2_EE13_M_deallocateEPS2_m.exit32.i.i.i

_ZNSt12_Vector_baseIN3gmx11BasicVectorIfEESaIS2_EE13_M_deallocateEPS2_m.exit32.i.i.i: ; preds = %bb.cl, %_ZNSt6vectorIN3gmx11BasicVectorIfEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit.i.i.i
  %i.we = getelementptr inbounds nuw [12 x i8], ptr %i.wa, i64 %i.vq
  %i.wf = getelementptr inbounds nuw [12 x i8], ptr %i.vz, i64 %i.vx
  %.pre233.pre.i = load i32, ptr %i.ah, align 8, !tbaa !103
  br label %_ZNSt6vectorIN3gmx11BasicVectorIfEESaIS2_EE6resizeEm.exit.i

bb.cm:                                            ; preds = %bb.cg
  %i.wg = icmp samesign ugt i64 %i.vo, %i.vn
  br i1 %i.wg, label %bb.cn, label %_ZNSt6vectorIN3gmx11BasicVectorIfEESaIS2_EE6resizeEm.exit.i

bb.cn:                                            ; preds = %bb.cm
  %.idx.i = mul nuw nsw i64 %i.vn, 12
  %i.wh = getelementptr inbounds nuw i8, ptr %i.pe, i64 %.idx.i
  br label %_ZNSt6vectorIN3gmx11BasicVectorIfEESaIS2_EE6resizeEm.exit.i

_ZNSt6vectorIN3gmx11BasicVectorIfEESaIS2_EE6resizeEm.exit.i: ; preds = %bb.cn, %bb.cm, %_ZNSt12_Vector_baseIN3gmx11BasicVectorIfEESaIS2_EE13_M_deallocateEPS2_m.exit32.i.i.i, %bb.ci
  %.pre233.i = phi i32 [ %.pre233.pre.i, %_ZNSt12_Vector_baseIN3gmx11BasicVectorIfEESaIS2_EE13_M_deallocateEPS2_m.exit32.i.i.i ], [ %i.vm, %bb.ci ], [ %i.vm, %bb.cn ], [ %i.vm, %bb.cm ] ; 6 uses
  %.sroa.19.4.i = phi ptr [ %i.wf, %_ZNSt12_Vector_baseIN3gmx11BasicVectorIfEESaIS2_EE13_M_deallocateEPS2_m.exit32.i.i.i ], [ %i.pf, %bb.ci ], [ %i.pf, %bb.cn ], [ %i.pf, %bb.cm ]
  %.sroa.12.0.i = phi ptr [ %i.we, %_ZNSt12_Vector_baseIN3gmx11BasicVectorIfEESaIS2_EE13_M_deallocateEPS2_m.exit32.i.i.i ], [ %scevgep.i.i.i.i.i145.i, %bb.ci ], [ %i.wh, %bb.cn ], [ %scevgep.i.i.i.i.i.i, %bb.cm ]
  %.sroa.0162.4.i = phi ptr [ %i.vz, %_ZNSt12_Vector_baseIN3gmx11BasicVectorIfEESaIS2_EE13_M_deallocateEPS2_m.exit32.i.i.i ], [ %i.pe, %bb.ci ], [ %i.pe, %bb.cn ], [ %i.pe, %bb.cm ]
  %i.wi = load ptr, ptr %38, align 8, !tbaa !107  ; 7 uses
  %i.wj = getelementptr inbounds nuw i8, ptr %38, i64 8 ; 2 uses
  %i.wk = getelementptr inbounds nuw i8, ptr %38, i64 16 ; 2 uses
  %i.wl = load ptr, ptr %i.wk, align 8, !tbaa !123 ; 5 uses
  store ptr %.sroa.0162.4.i, ptr %38, align 8, !tbaa !107
  store ptr %.sroa.12.0.i, ptr %i.wj, align 8, !tbaa !130
  store ptr %.sroa.19.4.i, ptr %i.wk, align 8, !tbaa !123
  %i.wm = load ptr, ptr %39, align 8, !tbaa !108  ; 4 uses
  %i.wn = load ptr, ptr %i.ph, align 8, !tbaa !108
  %i.wo = icmp eq ptr %i.wm, %i.wn
  br i1 %i.wo, label %bb.cw, label %bb.co

bb.co:                                            ; preds = %_ZNSt6vectorIN3gmx11BasicVectorIfEESaIS2_EE6resizeEm.exit.i
  %i.wp = sext i32 %.pre233.i to i64              ; 4 uses
  %i.wq = udiv exact i64 %.pre-phi.i133.i366373, 12 ; 6 uses
  %i.wr = icmp ult i64 %i.wq, %i.wp
  br i1 %i.wr, label %bb.cp, label %bb.cu

bb.cp:                                            ; preds = %bb.co
  %i.ws = sub nuw nsw i64 %i.wp, %i.wq            ; 4 uses
  %gepdiff = sub nsw i64 %.idx233365374, %.pre-phi.i133.i366373
  %i.wt = sdiv exact i64 %gepdiff, 12             ; 2 uses
  %i.wu = sub nuw nsw i64 768614336404564650, %i.wq
  %i.wv = icmp ule i64 %i.wt, %i.wu
  call void @llvm.assume(i1 %i.wv)
  %.not28.i.i = icmp ult i64 %i.wt, %i.ws
  br i1 %.not28.i.i, label %bb.cr, label %bb.cq

bb.cq:                                            ; preds = %bb.cp
  %i.ww = mul nuw nsw i64 %i.ws, 12
  %scevgep.i.i.i.i.i = getelementptr i8, ptr %scevgep.i.i.i.i.i134.i367372, i64 %i.ww
  br label %_ZNSt6vectorIN3gmx11BasicVectorIfEESaIS2_EE6resizeEm.exit

bb.cr:                                            ; preds = %bb.cp
  %i.wx = icmp slt i32 %.pre233.i, 0
  br i1 %i.wx, label %bb.cs, label %_ZNKSt6vectorIN3gmx11BasicVectorIfEESaIS2_EE12_M_check_lenEmPKc.exit.i.i

bb.cs:                                            ; preds = %bb.cr
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.94) #23
          to label %.noexc201 unwind label %bb.cf

.noexc201:                                        ; preds = %bb.cs
  unreachable

_ZNKSt6vectorIN3gmx11BasicVectorIfEESaIS2_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.cr
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.wq, i64 %i.ws)
  %i.wy = add nuw nsw i64 %.sroa.speculated.i.i.i, %i.wq
  %i.wz = call i64 @llvm.umin.i64(i64 %i.wy, i64 768614336404564650) ; 2 uses
  %i.xa = mul nuw nsw i64 %i.wz, 12
  %i.xb = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.xa) #28
          to label %.noexc202 unwind label %bb.cf ; 4 uses

.noexc202:                                        ; preds = %_ZNKSt6vectorIN3gmx11BasicVectorIfEESaIS2_EE12_M_check_lenEmPKc.exit.i.i
  %i.xc = getelementptr inbounds nuw i8, ptr %i.xb, i64 %.pre-phi.i133.i366373
  %.not10.i.i.i.i.i = icmp eq i64 %.pre-phi.i133.i366373, 0
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorIN3gmx11BasicVectorIfEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit.i.i, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %.noexc202
  %i.xd = add nsw i64 %.pre-phi.i133.i366373, -12 ; 2 uses
  %i.xe = urem i64 %i.xd, 12
  %i.xf = sub nuw nsw i64 %i.xd, %i.xe
  %i.xg = add nsw i64 %i.xf, 12
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.xb, ptr align 4 %i.qd, i64 %i.xg, i1 false), !alias.scope !251
  br label %_ZNSt6vectorIN3gmx11BasicVectorIfEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit.i.i

_ZNSt6vectorIN3gmx11BasicVectorIfEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit.i.i: ; preds = %.lr.ph.i.i.i.i.i.preheader, %.noexc202
  %.not.i31.i.i = icmp eq ptr %i.qd, null
  br i1 %.not.i31.i.i, label %_ZNSt12_Vector_baseIN3gmx11BasicVectorIfEESaIS2_EE13_M_deallocateEPS2_m.exit32.i.i, label %bb.ct

bb.ct:                                            ; preds = %_ZNSt6vectorIN3gmx11BasicVectorIfEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.qd, i64 noundef %.idx233365374) #25
  br label %_ZNSt12_Vector_baseIN3gmx11BasicVectorIfEESaIS2_EE13_M_deallocateEPS2_m.exit32.i.i

_ZNSt12_Vector_baseIN3gmx11BasicVectorIfEESaIS2_EE13_M_deallocateEPS2_m.exit32.i.i: ; preds = %bb.ct, %_ZNSt6vectorIN3gmx11BasicVectorIfEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit.i.i
  %i.xh = getelementptr inbounds nuw [12 x i8], ptr %i.xc, i64 %i.ws
  %i.xi = getelementptr inbounds nuw [12 x i8], ptr %i.xb, i64 %i.wz
  %.pre261 = load ptr, ptr %39, align 8, !tbaa !107
  %.pre232.i.pre = load i32, ptr %i.ah, align 8, !tbaa !103
  br label %_ZNSt6vectorIN3gmx11BasicVectorIfEESaIS2_EE6resizeEm.exit

bb.cu:                                            ; preds = %bb.co
  %i.xj = icmp samesign ugt i64 %i.wq, %i.wp
  br i1 %i.xj, label %bb.cv, label %_ZNSt6vectorIN3gmx11BasicVectorIfEESaIS2_EE6resizeEm.exit

bb.cv:                                            ; preds = %bb.cu
  %.idx = mul nuw nsw i64 %i.wp, 12
  %i.xk = getelementptr inbounds nuw i8, ptr %i.qd, i64 %.idx
  br label %_ZNSt6vectorIN3gmx11BasicVectorIfEESaIS2_EE6resizeEm.exit

_ZNSt6vectorIN3gmx11BasicVectorIfEESaIS2_EE6resizeEm.exit: ; preds = %bb.cv, %bb.cu, %_ZNSt12_Vector_baseIN3gmx11BasicVectorIfEESaIS2_EE13_M_deallocateEPS2_m.exit32.i.i, %bb.cq
  %.pre232.i = phi i32 [ %.pre232.i.pre, %_ZNSt12_Vector_baseIN3gmx11BasicVectorIfEESaIS2_EE13_M_deallocateEPS2_m.exit32.i.i ], [ %.pre233.i, %bb.cq ], [ %.pre233.i, %bb.cv ], [ %.pre233.i, %bb.cu ]
  %i.xl = phi ptr [ %.pre261, %_ZNSt12_Vector_baseIN3gmx11BasicVectorIfEESaIS2_EE13_M_deallocateEPS2_m.exit32.i.i ], [ %i.wm, %bb.cq ], [ %i.wm, %bb.cv ], [ %i.wm, %bb.cu ]
  %.sroa.0223.5 = phi ptr [ %i.xb, %_ZNSt12_Vector_baseIN3gmx11BasicVectorIfEESaIS2_EE13_M_deallocateEPS2_m.exit32.i.i ], [ %i.qd, %bb.cq ], [ %i.qd, %bb.cv ], [ %i.qd, %bb.cu ]
  %.sroa.10.0 = phi ptr [ %i.xh, %_ZNSt12_Vector_baseIN3gmx11BasicVectorIfEESaIS2_EE13_M_deallocateEPS2_m.exit32.i.i ], [ %scevgep.i.i.i.i.i, %bb.cq ], [ %i.xk, %bb.cv ], [ %scevgep.i.i.i.i.i134.i367372, %bb.cu ]
  %.sroa.17228.5 = phi ptr [ %i.xi, %_ZNSt12_Vector_baseIN3gmx11BasicVectorIfEESaIS2_EE13_M_deallocateEPS2_m.exit32.i.i ], [ %i.qe, %bb.cq ], [ %i.qe, %bb.cv ], [ %i.qe, %bb.cu ]
  %i.xm = getelementptr inbounds nuw i8, ptr %39, i64 16 ; 2 uses
  %i.xn = load ptr, ptr %i.xm, align 8, !tbaa !123
  store ptr %.sroa.0223.5, ptr %39, align 8, !tbaa !107
  store ptr %.sroa.10.0, ptr %i.ph, align 8, !tbaa !130
  store ptr %.sroa.17228.5, ptr %i.xm, align 8, !tbaa !123
  br label %bb.cw

bb.cw:                                            ; preds = %_ZNSt6vectorIN3gmx11BasicVectorIfEESaIS2_EE6resizeEm.exit, %_ZNSt6vectorIN3gmx11BasicVectorIfEESaIS2_EE6resizeEm.exit.i
  %.sroa.0223.4 = phi ptr [ %i.qd, %_ZNSt6vectorIN3gmx11BasicVectorIfEESaIS2_EE6resizeEm.exit.i ], [ %i.xl, %_ZNSt6vectorIN3gmx11BasicVectorIfEESaIS2_EE6resizeEm.exit ] ; 5 uses
  %.sroa.17228.4 = phi ptr [ %i.qe, %_ZNSt6vectorIN3gmx11BasicVectorIfEESaIS2_EE6resizeEm.exit.i ], [ %i.xn, %_ZNSt6vectorIN3gmx11BasicVectorIfEESaIS2_EE6resizeEm.exit ] ; 3 uses
  %i.xo = phi i32 [ %.pre233.i, %_ZNSt6vectorIN3gmx11BasicVectorIfEESaIS2_EE6resizeEm.exit.i ], [ %.pre232.i, %_ZNSt6vectorIN3gmx11BasicVectorIfEESaIS2_EE6resizeEm.exit ] ; 5 uses
  %i.xp = sext i32 %i.xo to i64                   ; 4 uses
  %i.xq = ptrtoint ptr %i.qf to i64               ; 2 uses
  %i.xr = ptrtoint ptr %.sroa.0218.0 to i64       ; 2 uses
  %i.xs = sub i64 %i.xq, %i.xr                    ; 4 uses
  %i.xt = ashr exact i64 %i.xs, 2                 ; 7 uses
  %i.xu = icmp ult i64 %i.xt, %i.xp
  br i1 %i.xu, label %bb.cx, label %bb.dd

bb.cx:                                            ; preds = %bb.cw
  %i.xv = sub nuw nsw i64 %i.xp, %i.xt            ; 6 uses
  %i.xw = ptrtoint ptr %.sroa.17.0 to i64         ; 2 uses
  %i.xx = sub i64 %i.xw, %i.xq
  %i.xy = ashr exact i64 %i.xx, 2                 ; 2 uses
  %i.xz = icmp ult i64 %i.xt, 2305843009213693952
  call void @llvm.assume(i1 %i.xz)
  %i.ya = xor i64 %i.xt, 2305843009213693951      ; 2 uses
  %i.yb = icmp ule i64 %i.xy, %i.ya
  call void @llvm.assume(i1 %i.yb)
  %.not28.i = icmp ult i64 %i.xy, %i.xv
  br i1 %.not28.i, label %bb.cz, label %bb.cy

bb.cy:                                            ; preds = %bb.cx
  store float 0.000000e+00, ptr %i.qf, align 4, !tbaa !18
  %i.yc = getelementptr i8, ptr %i.qf, i64 4      ; 3 uses
  %i.yd = add nsw i64 %i.xv, -1                   ; 2 uses
  %i.ye = icmp eq i64 %i.yd, 0
  br i1 %i.ye, label %_ZNSt6vectorIfSaIfEE6resizeEm.exit.i, label %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i

_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i: ; preds = %bb.cy
  %.idx.i.i.i.i.i.i = shl nuw nsw i64 %i.yd, 2    ; 2 uses
  call void @llvm.memset.p0.i64(ptr align 4 %i.yc, i8 0, i64 %.idx.i.i.i.i.i.i, i1 false), !tbaa !18
  %i.yf = getelementptr inbounds nuw i8, ptr %i.yc, i64 %.idx.i.i.i.i.i.i
  br label %_ZNSt6vectorIfSaIfEE6resizeEm.exit.i

bb.cz:                                            ; preds = %bb.cx
  %i.yg = icmp ult i64 %i.ya, %i.xv
  br i1 %i.yg, label %bb.da, label %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i

bb.da:                                            ; preds = %bb.cz
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.94) #23
          to label %.noexc198 unwind label %bb.cf

.noexc198:                                        ; preds = %bb.da
  unreachable

_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i:  ; preds = %bb.cz
  %.sroa.speculated.i.i = call i64 @llvm.umax.i64(i64 %i.xt, i64 %i.xv)
  %i.yh = add nuw nsw i64 %.sroa.speculated.i.i, %i.xt
  %i.yi = call i64 @llvm.umin.i64(i64 %i.yh, i64 2305843009213693951) ; 2 uses
  %i.yj = shl nuw nsw i64 %i.yi, 2
  %i.yk = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.yj) #28
          to label %.noexc199 unwind label %bb.cf ; 4 uses

.noexc199:                                        ; preds = %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i
  %i.yl = getelementptr inbounds nuw i8, ptr %i.yk, i64 %i.xs ; 3 uses
  store float 0.000000e+00, ptr %i.yl, align 4, !tbaa !18
  %i.ym = add nsw i64 %i.xv, -1                   ; 2 uses
  %i.yn = icmp eq i64 %i.ym, 0
  br i1 %i.yn, label %_ZSt27__uninitialized_default_n_aIPfmfET_S1_T0_RSaIT1_E.exit33.i, label %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i30.i

_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i30.i: ; preds = %.noexc199
  %i.yo = getelementptr i8, ptr %i.yl, i64 4
  %.idx.i.i.i.i.i31.i = shl nuw nsw i64 %i.ym, 2
  call void @llvm.memset.p0.i64(ptr align 4 %i.yo, i8 0, i64 %.idx.i.i.i.i.i31.i, i1 false), !tbaa !18
  br label %_ZSt27__uninitialized_default_n_aIPfmfET_S1_T0_RSaIT1_E.exit33.i

_ZSt27__uninitialized_default_n_aIPfmfET_S1_T0_RSaIT1_E.exit33.i: ; preds = %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i30.i, %.noexc199
  %i.yp = icmp sgt i64 %i.xs, 0
  br i1 %i.yp, label %bb.db, label %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit.i

bb.db:                                            ; preds = %_ZSt27__uninitialized_default_n_aIPfmfET_S1_T0_RSaIT1_E.exit33.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.yk, ptr align 4 %.sroa.0218.0, i64 %i.xs, i1 false)
  br label %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit.i

_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit.i: ; preds = %bb.db, %_ZSt27__uninitialized_default_n_aIPfmfET_S1_T0_RSaIT1_E.exit33.i
  %.not.i35.i = icmp eq ptr %.sroa.0218.0, null
  br i1 %.not.i35.i, label %_ZNSt12_Vector_baseIfSaIfEE13_M_deallocateEPfm.exit36.i, label %bb.dc

bb.dc:                                            ; preds = %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit.i
  %i.yq = sub i64 %i.xw, %i.xr
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0218.0, i64 noundef %i.yq) #25
  br label %_ZNSt12_Vector_baseIfSaIfEE13_M_deallocateEPfm.exit36.i

_ZNSt12_Vector_baseIfSaIfEE13_M_deallocateEPfm.exit36.i: ; preds = %bb.dc, %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit.i
  %i.yr = getelementptr inbounds nuw [4 x i8], ptr %i.yl, i64 %i.xv
  %i.ys = getelementptr inbounds nuw [4 x i8], ptr %i.yk, i64 %i.yi
  %.pre237.i.pre = load i32, ptr %i.ah, align 8, !tbaa !103
  br label %_ZNSt6vectorIfSaIfEE6resizeEm.exit.i

bb.dd:                                            ; preds = %bb.cw
  %i.yt = icmp ugt i64 %i.xt, %i.xp
  br i1 %i.yt, label %bb.de, label %_ZNSt6vectorIfSaIfEE6resizeEm.exit.i

bb.de:                                            ; preds = %bb.dd
  %i.yu = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0218.0, i64 %i.xp ; 2 uses
  %.not.i.i148.i = icmp eq ptr %i.qf, %i.yu
  %spec.select283.i = select i1 %.not.i.i148.i, ptr %i.qf, ptr %i.yu
  br label %_ZNSt6vectorIfSaIfEE6resizeEm.exit.i

_ZNSt6vectorIfSaIfEE6resizeEm.exit.i:             ; preds = %bb.cy, %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i, %_ZNSt12_Vector_baseIfSaIfEE13_M_deallocateEPfm.exit36.i, %bb.de, %bb.dd
  %i.yv = phi i32 [ %i.xo, %bb.de ], [ %i.xo, %bb.dd ], [ %i.xo, %bb.cy ], [ %.pre237.i.pre, %_ZNSt12_Vector_baseIfSaIfEE13_M_deallocateEPfm.exit36.i ], [ %i.xo, %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i ]
  %i.yw = phi ptr [ %.sroa.17.0, %bb.de ], [ %.sroa.17.0, %bb.dd ], [ %.sroa.17.0, %bb.cy ], [ %i.ys, %_ZNSt12_Vector_baseIfSaIfEE13_M_deallocateEPfm.exit36.i ], [ %.sroa.17.0, %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i ]
  %i.yx = phi ptr [ %spec.select283.i, %bb.de ], [ %i.qf, %bb.dd ], [ %i.yc, %bb.cy ], [ %i.yr, %_ZNSt12_Vector_baseIfSaIfEE13_M_deallocateEPfm.exit36.i ], [ %i.yf, %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i ]
  %i.yy = phi ptr [ %.sroa.0218.0, %bb.de ], [ %.sroa.0218.0, %bb.dd ], [ %.sroa.0218.0, %bb.cy ], [ %i.yk, %_ZNSt12_Vector_baseIfSaIfEE13_M_deallocateEPfm.exit36.i ], [ %.sroa.0218.0, %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i ]
  %i.yz = load ptr, ptr %47, align 8, !tbaa !246  ; 3 uses
  %i.za = getelementptr inbounds nuw i8, ptr %47, i64 16 ; 2 uses
  %i.zb = load ptr, ptr %i.za, align 8, !tbaa !252
  store ptr %i.yy, ptr %47, align 8, !tbaa !246
  store ptr %i.yx, ptr %i.qh, align 8, !tbaa !253
  store ptr %i.yw, ptr %i.za, align 8, !tbaa !252
  %i.zc = load ptr, ptr @stderr, align 8, !tbaa !25
  %i.zd = load i32, ptr %i.ow, align 8, !tbaa !104
  %i.ze = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.zc, ptr noundef nonnull @.str.93, i32 noundef %i.yv, i32 noundef %i.zd) #24 ; 0 uses
  %.not.i.i.i.i = icmp eq ptr %i.yz, null
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIfSaIfEED2Ev.exit.i, label %bb.df

bb.df:                                            ; preds = %_ZNSt6vectorIfSaIfEE6resizeEm.exit.i
  %i.zf = ptrtoint ptr %i.zb to i64
  %i.zg = ptrtoint ptr %i.yz to i64
  %i.zh = sub i64 %i.zf, %i.zg
  call void @_ZdlPvm(ptr noundef nonnull %i.yz, i64 noundef %i.zh) #25
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit.i

_ZNSt6vectorIfSaIfEED2Ev.exit.i:                  ; preds = %bb.df, %_ZNSt6vectorIfSaIfEE6resizeEm.exit.i
  %.not.i.i.i150.i = icmp eq ptr %.sroa.0223.4, null
  br i1 %.not.i.i.i150.i, label %_ZNSt6vectorIN3gmx11BasicVectorIfEESaIS2_EED2Ev.exit.i, label %bb.dg

bb.dg:                                            ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit.i
  %i.zi = ptrtoint ptr %.sroa.17228.4 to i64
  %i.zj = ptrtoint ptr %.sroa.0223.4 to i64
  %i.zk = sub i64 %i.zi, %i.zj
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0223.4, i64 noundef %i.zk) #25
  br label %_ZNSt6vectorIN3gmx11BasicVectorIfEESaIS2_EED2Ev.exit.i

_ZNSt6vectorIN3gmx11BasicVectorIfEESaIS2_EED2Ev.exit.i: ; preds = %bb.dg, %_ZNSt6vectorIfSaIfEED2Ev.exit.i
  %.not.i.i.i151.i = icmp eq ptr %i.wi, null
  br i1 %.not.i.i.i151.i, label %bb.dm, label %bb.dh

bb.dh:                                            ; preds = %_ZNSt6vectorIN3gmx11BasicVectorIfEESaIS2_EED2Ev.exit.i
  %i.zl = ptrtoint ptr %i.wl to i64
  %i.zm = ptrtoint ptr %i.wi to i64
  %i.zn = sub i64 %i.zl, %i.zm
  call void @_ZdlPvm(ptr noundef nonnull %i.wi, i64 noundef %i.zn) #25
  br label %bb.dm

bb.di:                                            ; preds = %bb.cf, %.split.us.split.us.split.us.i
  %.sroa.0223.2 = phi ptr [ %.sroa.0223.1, %bb.cf ], [ %i.qd, %.split.us.split.us.split.us.i ] ; 2 uses
  %.sroa.17228.2 = phi ptr [ %.sroa.17228.1, %bb.cf ], [ %i.qe, %.split.us.split.us.split.us.i ] ; 2 uses
  %.sroa.19.1.i = phi ptr [ %.sroa.19.0.i, %bb.cf ], [ %i.pf, %.split.us.split.us.split.us.i ] ; 2 uses
  %.sroa.0162.1.i = phi ptr [ %.sroa.0162.0.i, %bb.cf ], [ %i.pe, %.split.us.split.us.split.us.i ] ; 2 uses
  %.pn.pn.i = phi { ptr, i32 } [ %i.vl, %bb.cf ], [ %i.ul, %.split.us.split.us.split.us.i ] ; 2 uses
  %.not.i.i.i153.i = icmp eq ptr %.sroa.0218.0, null
  br i1 %.not.i.i.i153.i, label %_ZNSt6vectorIfSaIfEED2Ev.exit154.i, label %bb.dj

bb.dj:                                            ; preds = %bb.di, %.thread271.i
  %.sroa.0223.3 = phi ptr [ %.sroa.0223.2, %bb.di ], [ %i.qd, %.thread271.i ]
  %.sroa.17228.3 = phi ptr [ %.sroa.17228.2, %bb.di ], [ %i.qe, %.thread271.i ]
  %.pn.pn278.i = phi { ptr, i32 } [ %.pn.pn.i, %bb.di ], [ %i.um, %.thread271.i ]
  %.sroa.0162.1277.i = phi ptr [ %.sroa.0162.1.i, %bb.di ], [ %i.pe, %.thread271.i ]
  %.sroa.19.1276.i = phi ptr [ %.sroa.19.1.i, %bb.di ], [ %i.pf, %.thread271.i ]
  %i.zo = ptrtoint ptr %.sroa.17.0 to i64
  %i.zp = ptrtoint ptr %.sroa.0218.0 to i64
  %i.zq = sub i64 %i.zo, %i.zp
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0218.0, i64 noundef %i.zq) #25
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit154.i

_ZNSt6vectorIfSaIfEED2Ev.exit154.i:               ; preds = %bb.dj, %bb.di, %bb.cd
  %.sroa.0223.0 = phi ptr [ %i.pr, %bb.cd ], [ %.sroa.0223.2, %bb.di ], [ %.sroa.0223.3, %bb.dj ] ; 3 uses
  %.sroa.17228.0 = phi ptr [ %i.ps, %bb.cd ], [ %.sroa.17228.2, %bb.di ], [ %.sroa.17228.3, %bb.dj ]
  %.sroa.19.2.i = phi ptr [ %i.pf, %bb.cd ], [ %.sroa.19.1.i, %bb.di ], [ %.sroa.19.1276.i, %bb.dj ] ; 2 uses
  %.sroa.0162.2.i = phi ptr [ %i.pe, %bb.cd ], [ %.sroa.0162.1.i, %bb.di ], [ %.sroa.0162.1277.i, %bb.dj ] ; 2 uses
  %.pn.pn.pn.pn.i = phi { ptr, i32 } [ %i.uq, %bb.cd ], [ %.pn.pn.i, %bb.di ], [ %.pn.pn278.i, %bb.dj ] ; 2 uses
  %.not.i.i.i155.i = icmp eq ptr %.sroa.0223.0, null
  br i1 %.not.i.i.i155.i, label %_ZNSt6vectorIN3gmx11BasicVectorIfEESaIS2_EED2Ev.exit156.i, label %bb.dk

bb.dk:                                            ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit154.i
  %i.zr = ptrtoint ptr %.sroa.17228.0 to i64
  %i.zs = ptrtoint ptr %.sroa.0223.0 to i64
  %i.zt = sub i64 %i.zr, %i.zs
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0223.0, i64 noundef %i.zt) #25
  br label %_ZNSt6vectorIN3gmx11BasicVectorIfEESaIS2_EED2Ev.exit156.i

_ZNSt6vectorIN3gmx11BasicVectorIfEESaIS2_EED2Ev.exit156.i: ; preds = %bb.dk, %_ZNSt6vectorIfSaIfEED2Ev.exit154.i, %bb.cc
  %.sroa.19.3.i = phi ptr [ %i.pf, %bb.cc ], [ %.sroa.19.2.i, %_ZNSt6vectorIfSaIfEED2Ev.exit154.i ], [ %.sroa.19.2.i, %bb.dk ]
  %.sroa.0162.3.i = phi ptr [ %i.pe, %bb.cc ], [ %.sroa.0162.2.i, %_ZNSt6vectorIfSaIfEED2Ev.exit154.i ], [ %.sroa.0162.2.i, %bb.dk ] ; 3 uses
  %.pn.pn.pn.pn.pn.i = phi { ptr, i32 } [ %i.up, %bb.cc ], [ %.pn.pn.pn.pn.i, %_ZNSt6vectorIfSaIfEED2Ev.exit154.i ], [ %.pn.pn.pn.pn.i, %bb.dk ] ; 2 uses
  %.not.i.i.i157.i = icmp eq ptr %.sroa.0162.3.i, null
  br i1 %.not.i.i.i157.i, label %_ZNSt6vectorIN3gmx11BasicVectorIfEESaIS2_EED2Ev.exit158.i, label %bb.dl
end_hunk_0
