Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/faiss/original/IndexIVFSpectralHash?download=true
inline.NumInlined: 808
inline.NumDeleted: 313
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_ZN5faiss20IndexIVFSpectralHash13train_encoderElPKfPKl:bb.a
  %i.lf = load i32, ptr %i.gp, align 4, !tbaa !64 ; 9 uses
  %i.lg = icmp sgt i32 %i.lf, 0
  br i1 %i.lg, label %.lr.ph191, label %._crit_edge192

.lr.ph191:                                        ; preds = %.split90
  %i.lh = load i64, ptr %phi.call, align 8, !tbaa !66 ; 3 uses
  %i.li = getelementptr inbounds nuw [4 x i8], ptr %i.gw, i64 %i.le ; 8 uses
  %i.lj = icmp eq i64 %i.le, %i.lh
  %i.lk = sub i64 %i.lh, %i.le                    ; 4 uses
  %.idx.i = shl nuw nsw i64 %i.lk, 2
  %i.ll = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.lk, i1 true)
  %i.lm = shl nuw nsw i64 %i.ll, 1
  %i.ln = xor i64 %i.lm, 126
  %i.lo = and i64 %i.lk, 1
  %.not.i127 = icmp eq i64 %i.lo, 0
  %i.lp = lshr i64 %i.lk, 1
  br i1 %i.lj, label %.lr.ph191.split.us, label %.lr.ph191.split

.lr.ph191.split.us:                               ; preds = %.lr.ph191
  %i.lq = load ptr, ptr %i.jd, align 8, !tbaa !70
  %wide.trip.count222 = zext nneg i32 %i.lf to i64 ; 2 uses
  %i.lr = zext nneg i32 %i.lf to i64
  %i.ls = mul nsw i64 %.073195, %i.lr
  %i.lt = getelementptr [4 x i8], ptr %i.lq, i64 %i.ls ; 3 uses
  store float 0.000000e+00, ptr %i.lt, align 4, !tbaa !65
  %exitcond223.peel.not = icmp eq i32 %i.lf, 1
  br i1 %exitcond223.peel.not, label %._crit_edge192, label %.peel.next225.preheader

.peel.next225.preheader:                          ; preds = %.lr.ph191.split.us
  %i.lu = add nsw i64 %wide.trip.count222, -1     ; 2 uses
  %min.iters.check286 = icmp ult i32 %i.lf, 9
  br i1 %min.iters.check286, label %.peel.next225.preheader312, label %vector.ph287

vector.ph287:                                     ; preds = %.peel.next225.preheader
  %n.vec288 = and i64 %i.lu, -8                   ; 3 uses
  %i.lv = or disjoint i64 %n.vec288, 1
  br label %vector.body289

vector.body289:                                   ; preds = %vector.body289, %vector.ph287
  %index290 = phi i64 [ 0, %vector.ph287 ], [ %index.next291, %vector.body289 ] ; 2 uses
  %i.lw = getelementptr [4 x i8], ptr %i.lt, i64 %index290 ; 2 uses
  %i.lx = getelementptr i8, ptr %i.lw, i64 4
  %i.ly = getelementptr i8, ptr %i.lw, i64 20
  store <4 x float> zeroinitializer, ptr %i.lx, align 4, !tbaa !65
  store <4 x float> zeroinitializer, ptr %i.ly, align 4, !tbaa !65
  %index.next291 = add nuw i64 %index290, 8       ; 2 uses
  %i.lz = icmp eq i64 %index.next291, %n.vec288
  br i1 %i.lz, label %middle.block292, label %vector.body289, !llvm.loop !173

middle.block292:                                  ; preds = %vector.body289
  %cmp.n293 = icmp eq i64 %i.lu, %n.vec288
  br i1 %cmp.n293, label %._crit_edge192, label %.peel.next225.preheader312

.peel.next225.preheader312:                       ; preds = %.peel.next225.preheader, %middle.block292
  %indvars.iv218.ph = phi i64 [ 1, %.peel.next225.preheader ], [ %i.lv, %middle.block292 ]
  br label %.peel.next225

.peel.next225:                                    ; preds = %.peel.next225.preheader312, %.peel.next225
  %indvars.iv218 = phi i64 [ %indvars.iv.next219, %.peel.next225 ], [ %indvars.iv218.ph, %.peel.next225.preheader312 ] ; 2 uses
  %i.ma = getelementptr [4 x i8], ptr %i.lt, i64 %indvars.iv218
  store float 0.000000e+00, ptr %i.ma, align 4, !tbaa !65
  %indvars.iv.next219 = add nuw nsw i64 %indvars.iv218, 1 ; 2 uses
  %exitcond223.not = icmp eq i64 %indvars.iv.next219, %wide.trip.count222
  br i1 %exitcond223.not, label %._crit_edge192, label %.peel.next225, !llvm.loop !174

.lr.ph191.split:                                  ; preds = %.lr.ph191
  %i.mb = add i64 %i.le, 1
  %i.mc = icmp eq i64 %i.lh, %i.mb
  br i1 %i.mc, label %.lr.ph191.split.split.us, label %_ZSt4sortIPfEvT_S1_.exit.i

.lr.ph191.split.split.us:                         ; preds = %.lr.ph191.split
  %i.md = load ptr, ptr %i.jd, align 8, !tbaa !70 ; 2 uses
  %i.me = ptrtoaddr ptr %i.md to i64
  %wide.trip.count = zext nneg i32 %i.lf to i64   ; 5 uses
  %i.mf = load float, ptr %i.li, align 4, !tbaa !65
  %i.mg = zext nneg i32 %i.lf to i64
  %i.mh = mul nsw i64 %.073195, %i.mg
  %i.mi = getelementptr [4 x i8], ptr %i.md, i64 %i.mh ; 7 uses
  store float %i.mf, ptr %i.mi, align 4, !tbaa !65
  %exitcond216.peel.not = icmp eq i32 %i.lf, 1
  br i1 %exitcond216.peel.not, label %._crit_edge192, label %.peel.next.preheader

.peel.next.preheader:                             ; preds = %.lr.ph191.split.split.us
  %i.mj = add nsw i64 %wide.trip.count, -1        ; 2 uses
  %min.iters.check300 = icmp ugt i32 %i.lf, 16
  %or.cond311 = and i1 %min.iters.check300, %ident.check296.not
  br i1 %or.cond311, label %vector.memcheck297, label %.peel.next.preheader313

vector.memcheck297:                               ; preds = %.peel.next.preheader
  %i.mk = mul i64 %i.kz, %wide.trip.count
  %i.ml = shl i64 %i.le, 2
  %i.mm = add i64 %i.mk, %i.me
  %i.mn = add i64 %i.ml, %i.gx
  %i.mo = sub i64 %i.mn, %i.mm
  %diff.check298 = icmp ugt i64 %i.mo, -32
  br i1 %diff.check298, label %.peel.next.preheader313, label %vector.ph301

vector.ph301:                                     ; preds = %vector.memcheck297
  %n.vec302 = and i64 %i.mj, -8                   ; 3 uses
  %i.mp = or disjoint i64 %n.vec302, 1
  br label %vector.body303

vector.body303:                                   ; preds = %vector.body303, %vector.ph301
  %index304 = phi i64 [ 0, %vector.ph301 ], [ %index.next307, %vector.body303 ] ; 2 uses
  %i.mq = or disjoint i64 %index304, 1            ; 2 uses
  %i.mr = getelementptr inbounds [4 x i8], ptr %i.li, i64 %i.mq ; 2 uses
  %i.ms = getelementptr inbounds nuw i8, ptr %i.mr, i64 16
  %wide.load305 = load <4 x float>, ptr %i.mr, align 4, !tbaa !65
  %wide.load306 = load <4 x float>, ptr %i.ms, align 4, !tbaa !65
  %i.mt = getelementptr [4 x i8], ptr %i.mi, i64 %i.mq ; 2 uses
  %i.mu = getelementptr i8, ptr %i.mt, i64 16
  store <4 x float> %wide.load305, ptr %i.mt, align 4, !tbaa !65
  store <4 x float> %wide.load306, ptr %i.mu, align 4, !tbaa !65
  %index.next307 = add nuw i64 %index304, 8       ; 2 uses
  %i.mv = icmp eq i64 %index.next307, %n.vec302
  br i1 %i.mv, label %middle.block308, label %vector.body303, !llvm.loop !175

middle.block308:                                  ; preds = %vector.body303
  %cmp.n309 = icmp eq i64 %i.mj, %n.vec302
  br i1 %cmp.n309, label %._crit_edge192, label %.peel.next.preheader313

.peel.next.preheader313:                          ; preds = %vector.memcheck297, %.peel.next.preheader, %middle.block308
  %indvars.iv213.ph = phi i64 [ 1, %vector.memcheck297 ], [ 1, %.peel.next.preheader ], [ %i.mp, %middle.block308 ] ; 4 uses
  %i.mw = sub nsw i64 %wide.trip.count, %indvars.iv213.ph
  %xtraiter327 = and i64 %i.mw, 3                 ; 2 uses
  %lcmp.mod328.not = icmp eq i64 %xtraiter327, 0
  br i1 %lcmp.mod328.not, label %.peel.next.prol.loopexit, label %.peel.next.prol

.peel.next.prol:                                  ; preds = %.peel.next.preheader313, %.peel.next.prol
  %indvars.iv213.prol = phi i64 [ %indvars.iv.next214.prol, %.peel.next.prol ], [ %indvars.iv213.ph, %.peel.next.preheader313 ] ; 3 uses
  %prol.iter329 = phi i64 [ %prol.iter329.next, %.peel.next.prol ], [ 0, %.peel.next.preheader313 ]
  %i.mx = mul nsw i64 %1, %indvars.iv213.prol
  %i.my = getelementptr inbounds [4 x i8], ptr %i.li, i64 %i.mx
  %i.mz = load float, ptr %i.my, align 4, !tbaa !65
  %i.na = getelementptr [4 x i8], ptr %i.mi, i64 %indvars.iv213.prol
  store float %i.mz, ptr %i.na, align 4, !tbaa !65
  %indvars.iv.next214.prol = add nuw nsw i64 %indvars.iv213.prol, 1 ; 2 uses
  %prol.iter329.next = add i64 %prol.iter329, 1   ; 2 uses
  %prol.iter329.cmp.not = icmp eq i64 %prol.iter329.next, %xtraiter327
  br i1 %prol.iter329.cmp.not, label %.peel.next.prol.loopexit, label %.peel.next.prol, !llvm.loop !176

.peel.next.prol.loopexit:                         ; preds = %.peel.next.prol, %.peel.next.preheader313
  %indvars.iv213.unr = phi i64 [ %indvars.iv213.ph, %.peel.next.preheader313 ], [ %indvars.iv.next214.prol, %.peel.next.prol ]
  %i.nb = sub nsw i64 %indvars.iv213.ph, %wide.trip.count
  %i.nc = icmp ugt i64 %i.nb, -4
  br i1 %i.nc, label %._crit_edge192, label %.peel.next

.peel.next:                                       ; preds = %.peel.next.prol.loopexit, %.peel.next
  %indvars.iv213 = phi i64 [ %indvars.iv.next214.3, %.peel.next ], [ %indvars.iv213.unr, %.peel.next.prol.loopexit ] ; 6 uses
  %i.nd = mul nsw i64 %1, %indvars.iv213
  %i.ne = getelementptr inbounds [4 x i8], ptr %i.li, i64 %i.nd
  %i.nf = load float, ptr %i.ne, align 4, !tbaa !65
  %i.ng = getelementptr [4 x i8], ptr %i.mi, i64 %indvars.iv213
  store float %i.nf, ptr %i.ng, align 4, !tbaa !65
  %indvars.iv.next214 = add nuw nsw i64 %indvars.iv213, 1 ; 2 uses
  %i.nh = mul nsw i64 %1, %indvars.iv.next214
  %i.ni = getelementptr inbounds [4 x i8], ptr %i.li, i64 %i.nh
  %i.nj = load float, ptr %i.ni, align 4, !tbaa !65
  %i.nk = getelementptr [4 x i8], ptr %i.mi, i64 %indvars.iv.next214
  store float %i.nj, ptr %i.nk, align 4, !tbaa !65
  %indvars.iv.next214.1 = add nuw nsw i64 %indvars.iv213, 2 ; 2 uses
  %i.nl = mul nsw i64 %1, %indvars.iv.next214.1
  %i.nm = getelementptr inbounds [4 x i8], ptr %i.li, i64 %i.nl
  %i.nn = load float, ptr %i.nm, align 4, !tbaa !65
  %i.no = getelementptr [4 x i8], ptr %i.mi, i64 %indvars.iv.next214.1
  store float %i.nn, ptr %i.no, align 4, !tbaa !65
  %indvars.iv.next214.2 = add nuw nsw i64 %indvars.iv213, 3 ; 2 uses
  %i.np = mul nsw i64 %1, %indvars.iv.next214.2
  %i.nq = getelementptr inbounds [4 x i8], ptr %i.li, i64 %i.np
  %i.nr = load float, ptr %i.nq, align 4, !tbaa !65
  %i.ns = getelementptr [4 x i8], ptr %i.mi, i64 %indvars.iv.next214.2
  store float %i.nr, ptr %i.ns, align 4, !tbaa !65
  %indvars.iv.next214.3 = add nuw nsw i64 %indvars.iv213, 4 ; 2 uses
  %exitcond216.not.3 = icmp eq i64 %indvars.iv.next214.3, %wide.trip.count
  br i1 %exitcond216.not.3, label %._crit_edge192, label %.peel.next, !llvm.loop !177

._crit_edge192.loopexit205:                       ; preds = %_ZN5faiss12_GLOBAL__N_16medianEmPf.exit
  %.pre229 = load i64, ptr %i.b, align 8, !tbaa !66
  br label %._crit_edge192

._crit_edge192:                                   ; preds = %.peel.next.prol.loopexit, %.peel.next, %.peel.next225, %middle.block308, %middle.block292, %.lr.ph191.split.split.us, %.lr.ph191.split.us, %._crit_edge192.loopexit205, %.split90
  %i.nt = phi i64 [ %.pre229, %._crit_edge192.loopexit205 ], [ %i.kx, %.lr.ph191.split.us ], [ %i.kx, %.split90 ], [ %i.kx, %.lr.ph191.split.split.us ], [ %i.kx, %middle.block292 ], [ %i.kx, %middle.block308 ], [ %i.kx, %.peel.next225 ], [ %i.kx, %.peel.next ], [ %i.kx, %.peel.next.prol.loopexit ] ; 2 uses
  %i.nu = add nsw i64 %.073195, 1
  %.not.not = icmp slt i64 %.073195, %i.nt
  %indvar.next = add i64 %indvar, 1
  br i1 %.not.not, label %.lr.ph199, label %._crit_edge200

_ZSt4sortIPfEvT_S1_.exit.i:                       ; preds = %.lr.ph191.split, %_ZN5faiss12_GLOBAL__N_16medianEmPf.exit
  %indvars.iv = phi i64 [ %indvars.iv.next, %_ZN5faiss12_GLOBAL__N_16medianEmPf.exit ], [ 0, %.lr.ph191.split ] ; 3 uses
  %i.nv = mul nsw i64 %1, %indvars.iv
  %i.nw = getelementptr inbounds [4 x i8], ptr %i.li, i64 %i.nv ; 4 uses
  %i.nx = getelementptr inbounds nuw i8, ptr %i.nw, i64 %.idx.i ; 2 uses
  invoke void @_ZSt16__introsort_loopIPflN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_T1_(ptr noundef nonnull %i.nw, ptr noundef nonnull %i.nx, i64 noundef %i.ln)
          to label %.noexc128 unwind label %bb.av

.noexc128:                                        ; preds = %_ZSt4sortIPfEvT_S1_.exit.i
  invoke void @_ZSt22__final_insertion_sortIPfN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_(ptr noundef nonnull %i.nw, ptr noundef nonnull %i.nx)
          to label %.noexc129 unwind label %bb.av

.noexc129:                                        ; preds = %.noexc128
  %i.ny = getelementptr [4 x i8], ptr %i.nw, i64 %i.lp ; 3 uses
  br i1 %.not.i127, label %_ZSt4sortIPfEvT_S1_.exit.thread.i, label %bb.ar

bb.ar:                                            ; preds = %.noexc129
  %i.nz = load float, ptr %i.ny, align 4, !tbaa !65
  br label %_ZN5faiss12_GLOBAL__N_16medianEmPf.exit

_ZSt4sortIPfEvT_S1_.exit.thread.i:                ; preds = %.noexc129
  %i.oa = getelementptr i8, ptr %i.ny, i64 -4
  %6 = load float, ptr %i.oa, align 4, !tbaa !65
  %7 = load float, ptr %i.ny, align 4, !tbaa !65
  %8 = fadd float %6, %7
  %i.ob = fmul float %8, 5.000000e-01
  br label %_ZN5faiss12_GLOBAL__N_16medianEmPf.exit

_ZN5faiss12_GLOBAL__N_16medianEmPf.exit:          ; preds = %_ZSt4sortIPfEvT_S1_.exit.thread.i, %bb.ar
  %.0.i = phi float [ %i.nz, %bb.ar ], [ %i.ob, %_ZSt4sortIPfEvT_S1_.exit.thread.i ]
  %i.oc = load i32, ptr %i.gp, align 4, !tbaa !64
  %i.od = sext i32 %i.oc to i64                   ; 2 uses
  %i.oe = mul nsw i64 %.073195, %i.od
  %i.of = load ptr, ptr %i.jd, align 8, !tbaa !70
  %i.og = getelementptr [4 x i8], ptr %i.of, i64 %i.oe
  %i.oh = getelementptr [4 x i8], ptr %i.og, i64 %indvars.iv
  store float %.0.i, ptr %i.oh, align 4, !tbaa !65
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.oi = icmp slt i64 %indvars.iv.next, %i.od
  br i1 %i.oi, label %_ZSt4sortIPfEvT_S1_.exit.i, label %._crit_edge192.loopexit205, !llvm.loop !178

._crit_edge200:                                   ; preds = %._crit_edge192, %bb.aq
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  br label %_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EED2Ev.exit132

_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EED2Ev.exit132: ; preds = %._crit_edge200, %_ZNSt6vectorIfSaIfEE6resizeEm.exit125
  call void @__kmpc_barrier(ptr nonnull @3, i32 %i.e)
  call void @_ZdaPv(ptr noundef nonnull %i.gw) #26
  %.not.i133 = icmp eq ptr %i.fx, null
  br i1 %.not.i133, label %_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EED2Ev.exit135, label %_ZNKSt14default_deleteIA_fEclIfEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i134

_ZNKSt14default_deleteIA_fEclIfEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i134: ; preds = %_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EED2Ev.exit132
  call void @_ZdaPv(ptr noundef nonnull %i.fx) #26
  br label %_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EED2Ev.exit135

_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EED2Ev.exit135: ; preds = %_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EED2Ev.exit132, %_ZNKSt14default_deleteIA_fEclIfEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i134
  %.not.i.i.i136 = icmp eq ptr %.sroa.0153.0, null
  br i1 %.not.i.i.i136, label %_ZNSt10unique_ptrIA_lSt14default_deleteIS0_EED2Ev.exit, label %bb.as

bb.as:                                            ; preds = %_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EED2Ev.exit135
  %i.oj = ptrtoint ptr %.sroa.16.0 to i64
  %i.ok = ptrtoint ptr %.sroa.0153.0 to i64
  %i.ol = sub i64 %i.oj, %i.ok
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0153.0, i64 noundef %i.ol) #26
  br label %_ZNSt10unique_ptrIA_lSt14default_deleteIS0_EED2Ev.exit

_ZNSt10unique_ptrIA_lSt14default_deleteIS0_EED2Ev.exit: ; preds = %_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EED2Ev.exit135, %bb.as
  call void @_ZdaPv(ptr noundef nonnull %i.eb) #26
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit113

_ZNSt6vectorIfSaIfEED2Ev.exit113:                 ; preds = %bb.u, %.loopexit, %bb.l, %_ZNSt10unique_ptrIA_lSt14default_deleteIS0_EED2Ev.exit
  ret void

bb.at:                                            ; preds = %_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EED2Ev.exit, %bb.ap
  %.pn = phi { ptr, i32 } [ %i.kw, %_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EED2Ev.exit ], [ %i.jr, %bb.ap ] ; 2 uses
  %.not.i138 = icmp eq ptr %i.fx, null
  br i1 %.not.i138, label %_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EED2Ev.exit140, label %_ZNKSt14default_deleteIA_fEclIfEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i139

_ZNKSt14default_deleteIA_fEclIfEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i139: ; preds = %bb.at
  tail call void @_ZdaPv(ptr noundef nonnull %i.fx) #26
  br label %_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EED2Ev.exit140

_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EED2Ev.exit140: ; preds = %bb.ao, %bb.at, %_ZNKSt14default_deleteIA_fEclIfEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i139, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit121
  %.pn100.pn = phi { ptr, i32 } [ %.pn100, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit121 ], [ %i.jq, %bb.ao ], [ %.pn, %bb.at ], [ %.pn, %_ZNKSt14default_deleteIA_fEclIfEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i139 ] ; 2 uses
  %.not.i.i.i141 = icmp eq ptr %.sroa.0153.0, null
  br i1 %.not.i.i.i141, label %_ZNSt10unique_ptrIA_lSt14default_deleteIS0_EED2Ev.exit145, label %bb.au

bb.au:                                            ; preds = %_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EED2Ev.exit140
  %i.om = ptrtoint ptr %.sroa.16.0 to i64
  %i.on = ptrtoint ptr %.sroa.0153.0 to i64
  %i.oo = sub i64 %i.om, %i.on
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0153.0, i64 noundef %i.oo) #26
  br label %_ZNSt10unique_ptrIA_lSt14default_deleteIS0_EED2Ev.exit145

_ZNSt10unique_ptrIA_lSt14default_deleteIS0_EED2Ev.exit145: ; preds = %bb.aa, %_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EED2Ev.exit140, %bb.au, %bb.z
  %.pn100.pn.pn.pn = phi { ptr, i32 } [ %i.et, %bb.z ], [ %i.eu, %bb.aa ], [ %.pn100.pn, %_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EED2Ev.exit140 ], [ %.pn100.pn, %bb.au ]
  call void @_ZdaPv(ptr noundef nonnull %i.eb) #26
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit

_ZNSt6vectorIfSaIfEED2Ev.exit:                    ; preds = %bb.s, %bb.t, %_ZNSt10unique_ptrIA_lSt14default_deleteIS0_EED2Ev.exit145, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn107.pn = phi { ptr, i32 } [ %.pn107, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.pn100.pn.pn.pn, %_ZNSt10unique_ptrIA_lSt14default_deleteIS0_EED2Ev.exit145 ], [ %i.db, %bb.t ], [ %i.db, %bb.s ]
  resume { ptr, i32 } %.pn107.pn

bb.av:                                            ; preds = %.noexc128, %_ZSt4sortIPfEvT_S1_.exit.i
  %i.op = landingpad { ptr, i32 }
          catch ptr null
  %i.oq = extractvalue { ptr, i32 } %i.op, 0
  call void @__clang_call_terminate(ptr %i.oq) #29
  unreachable

bb.aw:                                            ; preds = %bb.ag, %bb.i
  unreachable
}

declare noundef i64 @_ZNK5faiss8IndexIVF25train_encoder_num_vectorsEv(ptr noundef nonnull align 8 dereferenceable(273)) unnamed_addr #1

declare void @_ZNK5faiss8IndexIVF18search_preassignedElPKflPKlS2_PfPlbPKNS_19SearchParametersIVFEPNS_13IndexIVFStatsE(ptr noundef nonnull align 8 dereferenceable(273), i64 noundef, ptr noundef, i64 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext, ptr noundef, ptr noundef) unnamed_addr #1

declare void @_ZNK5faiss8IndexIVF24range_search_preassignedElPKffPKlS2_PNS_17RangeSearchResultEbPKNS_19SearchParametersIVFEPNS_13IndexIVFStatsE(ptr noundef nonnull align 8 dereferenceable(273), i64 noundef, ptr noundef, float noundef, ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext, ptr noundef, ptr noundef) unnamed_addr #1

; Function Attrs: mustprogress uwtable
define noundef nonnull ptr @_ZNK5faiss20IndexIVFSpectralHash23get_InvertedListScannerEbPKNS_10IDSelectorEPKNS_19SearchParametersIVFE(ptr noundef nonnull align 8 dereferenceable(328) %0, i1 noundef zeroext %1, ptr nofree noundef readnone captures(address_is_null) %2, ptr nofree readnone captures(none) %3) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %.not = icmp eq ptr %2, null
  br i1 %.not, label %bb.j, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 4 uses
  store ptr %i.a, ptr %4, align 8, !tbaa !28
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store i64 0, ptr %i.b, align 8, !tbaa !29
  store i8 0, ptr %i.a, align 8, !tbaa !20
  %i.c = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef null, i64 noundef 0, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.14) #20 ; 2 uses
  %i.d = icmp sgt i32 %i.c, 0
  br i1 %i.d, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.e = zext nneg i32 %i.c to i64                ; 2 uses
  %i.f = add nuw nsw i64 %i.e, 1
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(32) %4, i64 noundef %i.f)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.g = load ptr, ptr %4, align 8, !tbaa !19
  %i.h = load i64, ptr %i.b, align 8, !tbaa !29
  %i.i = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull %i.g, i64 noundef %i.h, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.14) #20 ; 0 uses
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(32) %4, i64 noundef %i.e)
          to label %bb.f unwind label %bb.e

bb.e:                                             ; preds = %bb.g, %bb.d, %bb.c
  %i.j = landingpad { ptr, i32 }
          cleanup
  br label %bb.i

bb.f:                                             ; preds = %bb.d, %bb.b
  %i.k = call ptr @__cxa_allocate_exception(i64 40) #20 ; 3 uses
  invoke void @_ZN5faiss14FaissExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSA_i(ptr noundef nonnull align 8 dereferenceable(40) %i.k, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull @__PRETTY_FUNCTION__._ZNK5faiss20IndexIVFSpectralHash23get_InvertedListScannerEbPKNS_10IDSelectorEPKNS_19SearchParametersIVFE, ptr noundef nonnull @.str.9, i32 noundef 224)
          to label %bb.g unwind label %bb.h

bb.g:                                             ; preds = %bb.f
  invoke void @__cxa_throw(ptr nonnull %i.k, ptr nonnull @_ZTIN5faiss14FaissExceptionE, ptr nonnull @_ZN5faiss14FaissExceptionD2Ev) #27
          to label %bb.k unwind label %bb.e

bb.h:                                             ; preds = %bb.f
  %i.l = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.k) #20
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.e
  %.pn = phi { ptr, i32 } [ %i.j, %bb.e ], [ %i.l, %bb.h ]
  %i.m = load ptr, ptr %4, align 8, !tbaa !19     ; 2 uses
  %i.n = icmp eq ptr %i.m, %i.a
  br i1 %i.n, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.i
  %i.o = load i64, ptr %i.a, align 8, !tbaa !20
  %i.p = add i64 %i.o, 1
  call void @_ZdlPvm(ptr noundef %i.m, i64 noundef %i.p) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  resume { ptr, i32 } %.pn

bb.j:                                             ; preds = %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.r = load i64, ptr %i.q, align 8, !tbaa !68
  %i.s = trunc i64 %i.r to i32
  %i.t = tail call noundef nonnull ptr @_ZN5faiss32make_spectral_hash_scanner_fixSLILNS_9SIMDLevelE0EEEPNS_19InvertedListScannerEiPKNS_20IndexIVFSpectralHashEb(i32 noundef %i.s, ptr noundef nonnull %0, i1 noundef zeroext %1)
  ret ptr %i.t

bb.k:                                             ; preds = %bb.g
  unreachable
}

declare void @_ZN5faiss8IndexIVF14update_vectorsEiPKlPKf(ptr noundef nonnull align 8 dereferenceable(273), i32 noundef, ptr noundef, ptr noundef) unnamed_addr #1

declare void @_ZNK5faiss8IndexIVF23reconstruct_from_offsetEllPf(ptr noundef nonnull align 8 dereferenceable(273), i64 noundef, i64 noundef, ptr noundef) unnamed_addr #1

declare noundef ptr @_ZNK5faiss8IndexIVF14get_CodePackerEv(ptr noundef nonnull align 8 dereferenceable(273)) unnamed_addr #1

declare void @_ZNK5faiss8IndexIVF14copy_subset_toERS0_NS_13InvertedLists13subset_type_tEll(ptr noundef nonnull align 8 dereferenceable(273), ptr noundef nonnull align 8 dereferenceable(273), i32 noundef, i64 noundef, i64 noundef) unnamed_addr #1

; Function Attrs: uwtable
declare void @_ZThn40_NK5faiss8IndexIVF18search_preassignedElPKflPKlS2_PfPlbPKNS_19SearchParametersIVFEPNS_13IndexIVFStatsE(ptr noundef, i64 noundef, ptr noundef, i64 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext, ptr noundef, ptr noundef) unnamed_addr #3 align 2

; Function Attrs: uwtable
declare void @_ZThn40_NK5faiss8IndexIVF24range_search_preassignedElPKffPKlS2_PNS_17RangeSearchResultEbPKNS_19SearchParametersIVFEPNS_13IndexIVFStatsE(ptr noundef, i64 noundef, ptr noundef, float noundef, ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext, ptr noundef, ptr noundef) unnamed_addr #3 align 2

; Function Attrs: nounwind uwtable
define void @_ZThn40_N5faiss20IndexIVFSpectralHashD1Ev(ptr noundef %0) unnamed_addr #4 align 2 {
bb.a:
  %i.a = getelementptr inbounds i8, ptr %0, i64 -40
  tail call void @_ZN5faiss20IndexIVFSpectralHashD1Ev(ptr noundef nonnull align 8 dead_on_return(328) dereferenceable(328) %i.a) #20
  ret void
}

; Function Attrs: nounwind uwtable
define void @_ZThn40_N5faiss20IndexIVFSpectralHashD0Ev(ptr noundef %0) unnamed_addr #4 align 2 {
end_hunk_0
begin_hunk_1_@_ZN5faiss20IndexIVFSpectralHash10replace_vtEPNS_17IndexPreTransformEb:bb.a

bb.ai:                                            ; preds = %bb.ag
  %i.cb = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.ca) #20
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.af
  %.pn46 = phi { ptr, i32 } [ %i.bz, %bb.af ], [ %i.cb, %bb.ai ]
  %i.cc = load ptr, ptr %6, align 8, !tbaa !19    ; 2 uses
  %i.cd = icmp eq ptr %i.cc, %i.bq
  br i1 %i.cd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit58, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i56

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i56: ; preds = %bb.aj
  %i.ce = load i64, ptr %i.bq, align 8, !tbaa !20
  %i.cf = add i64 %i.ce, 1
  call void @_ZdlPvm(ptr noundef %i.cc, i64 noundef %i.cf) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit58

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit58: ; preds = %bb.aj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i56
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20
  br label %bb.au

bb.ak:                                            ; preds = %bb.ab
  %i.cg = getelementptr inbounds nuw i8, ptr %i.ab, i64 133
  %i.ch = load i8, ptr %i.cg, align 1, !tbaa !257, !range !26, !noundef !27
  %i.ci = trunc nuw i8 %i.ch to i1
  br i1 %i.ci, label %bb.al, label %bb.at

bb.al:                                            ; preds = %bb.ak
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #20
  %i.cj = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 4 uses
  store ptr %i.cj, ptr %7, align 8, !tbaa !28
  %i.ck = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  store i64 0, ptr %i.ck, align 8, !tbaa !29
  store i8 0, ptr %i.cj, align 8, !tbaa !20
  %i.cl = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef null, i64 noundef 0, ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.24) #20 ; 2 uses
  %i.cm = icmp sgt i32 %i.cl, 0
  br i1 %i.cm, label %bb.am, label %bb.ap

bb.am:                                            ; preds = %bb.al
  %i.cn = zext nneg i32 %i.cl to i64              ; 2 uses
  %i.co = add nuw nsw i64 %i.cn, 1
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(32) %7, i64 noundef %i.co)
          to label %bb.an unwind label %bb.ao

bb.an:                                            ; preds = %bb.am
  %i.cp = load ptr, ptr %7, align 8, !tbaa !19
  %i.cq = load i64, ptr %i.ck, align 8, !tbaa !29
  %i.cr = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull %i.cp, i64 noundef %i.cq, ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.24) #20 ; 0 uses
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(32) %7, i64 noundef %i.cn)
          to label %bb.ap unwind label %bb.ao

bb.ao:                                            ; preds = %bb.aq, %bb.an, %bb.am
  %i.cs = landingpad { ptr, i32 }
          cleanup
  br label %bb.as

bb.ap:                                            ; preds = %bb.an, %bb.al
  %i.ct = call ptr @__cxa_allocate_exception(i64 40) #20 ; 3 uses
  invoke void @_ZN5faiss14FaissExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSA_i(ptr noundef nonnull align 8 dereferenceable(40) %i.ct, ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN5faiss20IndexIVFSpectralHash10replace_vtEPNS_17IndexPreTransformEb, ptr noundef nonnull @.str.9, i32 noundef 260)
          to label %bb.aq unwind label %bb.ar

bb.aq:                                            ; preds = %bb.ap
  invoke void @__cxa_throw(ptr nonnull %i.ct, ptr nonnull @_ZTIN5faiss14FaissExceptionE, ptr nonnull @_ZN5faiss14FaissExceptionD2Ev) #27
          to label %bb.av unwind label %bb.ao

bb.ar:                                            ; preds = %bb.ap
  %i.cu = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.ct) #20
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %bb.ao
  %.pn44 = phi { ptr, i32 } [ %i.cs, %bb.ao ], [ %i.cu, %bb.ar ]
  %i.cv = load ptr, ptr %7, align 8, !tbaa !19    ; 2 uses
  %i.cw = icmp eq ptr %i.cv, %i.cj
  br i1 %i.cw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i59

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i59: ; preds = %bb.as
  %i.cx = load i64, ptr %i.cj, align 8, !tbaa !20
  %i.cy = add i64 %i.cx, 1
  call void @_ZdlPvm(ptr noundef %i.cv, i64 noundef %i.cy) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61: ; preds = %bb.as, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i59
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #20
  br label %bb.au

bb.at:                                            ; preds = %bb.ak
  %i.cz = load ptr, ptr %i.d, align 8, !tbaa !258
  tail call void @_ZN5faiss20IndexIVFSpectralHash10replace_vtEPNS_15VectorTransformEb(ptr noundef nonnull align 8 dereferenceable(328) %0, ptr noundef %i.cz, i1 noundef zeroext %2)
  ret void

bb.au:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit55, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit58, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn46.pn.pn = phi { ptr, i32 } [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.pn46, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit58 ], [ %.pn44, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61 ], [ %.pn42, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit55 ], [ %.pn40, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52 ]
  resume { ptr, i32 } %.pn46.pn.pn

bb.av:                                            ; preds = %bb.aq, %bb.ah, %bb.y, %bb.p, %bb.g
  unreachable
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare ptr @__dynamic_cast(ptr, ptr, ptr, i64) local_unnamed_addr #23

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.a, ptr %0, align 8, !tbaa !28
  %i.b = icmp eq ptr %1, null
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.27) #27
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.c = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #20 ; 8 uses
  %i.d = icmp ugt i64 %i.c, 15
  br i1 %i.d, label %bb.d, label %._crit_edge.i

bb.d:                                             ; preds = %bb.c
  %i.e = icmp slt i64 %i.c, 0
  br i1 %i.e, label %.noexc, label %bb.e

.noexc:                                           ; preds = %bb.d
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.6) #27
  unreachable

bb.e:                                             ; preds = %bb.d
  %i.f = add nuw i64 %i.c, 1                      ; 2 uses
  %i.g = icmp slt i64 %i.f, 0
  br i1 %i.g, label %.noexc11, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i, !prof !149

.noexc11:                                         ; preds = %bb.e
  tail call void @_ZSt17__throw_bad_allocv() #27
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i: ; preds = %bb.e
  %i.h = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #28 ; 2 uses
  store ptr %i.h, ptr %0, align 8, !tbaa !19
  store i64 %i.c, ptr %i.a, align 8, !tbaa !20
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.c, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i
  %i.i = phi ptr [ %i.h, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i ], [ %i.a, %bb.c ] ; 3 uses
  switch i64 %i.c, label %bb.g [
    i64 1, label %bb.f
    i64 0, label %bb.h
  ]

bb.f:                                             ; preds = %._crit_edge.i
  %i.j = load i8, ptr %1, align 1, !tbaa !20
  store i8 %i.j, ptr %i.i, align 1, !tbaa !20
  br label %bb.h

bb.g:                                             ; preds = %._crit_edge.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.i, ptr nonnull align 1 %1, i64 %i.c, i1 false)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %._crit_edge.i
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.c, ptr %i.k, align 8, !tbaa !29
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.c
  store i8 0, ptr %i.l, align 1, !tbaa !20
  ret void
}

; Function Attrs: noreturn
declare void @_ZSt19__throw_logic_errorPKc(ptr noundef) local_unnamed_addr #11

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #24

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.fshl.i32(i32, i32, i32) #18

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #25

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.ctpop.i16(i16) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.ctpop.i8(i8) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x double> @llvm.fmuladd.v4f64(<4 x double>, <4 x double>, <4 x double>) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x i64> @llvm.ctpop.v2i64(<2 x i64>) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.vector.reduce.add.v2i64(<2 x i64>) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i64> @llvm.ctpop.v4i64(<4 x i64>) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.vector.reduce.add.v4i64(<4 x i64>) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x i64> @llvm.ctpop.v8i64(<8 x i64>) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.vector.reduce.add.v8i64(<8 x i64>) #18

attributes #0 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { cold nofree noreturn }
attributes #14 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #15 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { cold noreturn }
attributes #17 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #19 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { nounwind }
attributes #21 = { convergent nounwind }
attributes #22 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #23 = { mustprogress nofree nounwind willreturn memory(read) }
attributes #24 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #25 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #26 = { builtin nounwind }
attributes #27 = { noreturn }
attributes #28 = { builtin allocsize(0) }
attributes #29 = { noreturn nounwind }

!llvm.module.flags = !{!3, !4, !5}
!llvm.ident = !{!6}
!llvm.errno.tbaa = !{!11}

!0 = distinct !{!0, !71}
!1 = distinct !{!1, !71}
!2 = distinct !{!2, !71}
!3 = !{i32 7, !"openmp", i32 51}
!4 = !{i32 8, !"PIC Level", i32 2}
!5 = !{i32 7, !"uwtable", i32 2}
!6 = !{!"Ubuntu clang version 24.0.0 (++20260804081852+44c6aed9bd9b-1~exp1~20260804202019.1766)"}
!7 = !{!"Simple C++ TBAA"}
!8 = !{!"omnipotent char", !7, i64 0}
!9 = !{!"int", !8, i64 0}
!10 = !{!"__libc_errno", !9, i64 0}
!11 = !{!10, !9, i64 0}
!12 = !{!"vtable pointer", !7, i64 0}
!13 = !{!12, !12, i64 0}
!14 = !{!"any pointer", !8, i64 0}
!15 = !{!"p1 omnipotent char", !14, i64 0}
!16 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !15, i64 0}
!17 = !{!"long", !8, i64 0}
!18 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !16, i64 0, !17, i64 8, !8, i64 16}
!19 = !{!18, !15, i64 0}
!20 = !{!8, !8, i64 0}
!21 = !{!"bool", !8, i64 0}
!22 = !{!"_ZTSN5faiss10MetricTypeE", !8, i64 0}
!23 = !{!"float", !8, i64 0}
!24 = !{!"_ZTSN5faiss5IndexE", !9, i64 8, !17, i64 16, !21, i64 24, !21, i64 25, !22, i64 28, !23, i64 32}
!25 = !{!24, !21, i64 25}
!26 = !{i8 0, i8 2}
!27 = !{}
!28 = !{!16, !15, i64 0}
!29 = !{!18, !17, i64 8}
!30 = !{!"p1 _ZTSN5faiss5IndexE", !14, i64 0}
!31 = !{!"_ZTSN5faiss20ClusteringInitMethodE", !8, i64 0}
!32 = !{!"short", !8, i64 0}
!33 = !{!"double", !8, i64 0}
!34 = !{!"_ZTSN5faiss20ClusteringParametersE", !9, i64 0, !9, i64 4, !21, i64 8, !21, i64 9, !21, i64 10, !21, i64 11, !21, i64 12, !9, i64 16, !9, i64 20, !9, i64 24, !17, i64 32, !21, i64 40, !21, i64 41, !31, i64 42, !32, i64 44, !33, i64 48}
!35 = !{!"_ZTSN5faiss15Level1QuantizerE", !30, i64 0, !17, i64 8, !8, i64 16, !21, i64 17, !34, i64 24, !30, i64 80}
!36 = !{!"_ZTSN5faiss17IndexIVFInterfaceE", !35, i64 8, !17, i64 96, !17, i64 104}
!37 = !{!"p1 _ZTSN5faiss13InvertedListsE", !14, i64 0}
!38 = !{!"_ZTSN5faiss9DirectMap4TypeE", !8, i64 0}
!39 = !{!"p1 long", !14, i64 0}
!40 = !{!"_ZTSNSt12_Vector_baseIlSaIlEE17_Vector_impl_dataE", !39, i64 0, !39, i64 8, !39, i64 16}
!41 = !{!"_ZTSNSt12_Vector_baseIlSaIlEE12_Vector_implE", !40, i64 0}
!42 = !{!"_ZTSSt12_Vector_baseIlSaIlEE", !41, i64 0}
!43 = !{!"_ZTSSt6vectorIlSaIlEE", !42, i64 0}
!44 = !{!"any p2 pointer", !14, i64 0}
!45 = !{!"p2 _ZTSNSt8__detail15_Hash_node_baseE", !44, i64 0}
!46 = !{!"p1 _ZTSNSt8__detail15_Hash_node_baseE", !14, i64 0}
!47 = !{!"_ZTSNSt8__detail15_Hash_node_baseE", !46, i64 0}
!48 = !{!"_ZTSNSt8__detail20_Prime_rehash_policyE", !23, i64 0, !17, i64 8}
!49 = !{!"_ZTSSt10_HashtableIlSt4pairIKllESaIS2_ENSt8__detail10_Select1stESt8equal_toIlESt4hashIlENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE", !45, i64 0, !17, i64 8, !47, i64 16, !17, i64 24, !48, i64 32, !46, i64 48}
!50 = !{!"_ZTSSt13unordered_mapIllSt4hashIlESt8equal_toIlESaISt4pairIKllEEE", !49, i64 0}
!51 = !{!"_ZTSN5faiss9DirectMapE", !38, i64 0, !43, i64 8, !50, i64 32}
!52 = !{!"_ZTSN5faiss8IndexIVFE", !24, i64 0, !36, i64 40, !37, i64 152, !21, i64 160, !17, i64 168, !9, i64 176, !9, i64 180, !51, i64 184, !21, i64 272}
!53 = !{!52, !21, i64 272}
!54 = !{!"p1 _ZTSN5faiss15VectorTransformE", !14, i64 0}
!55 = !{!"_ZTSN5faiss20IndexIVFSpectralHash13ThresholdTypeE", !8, i64 0}
!56 = !{!"p1 float", !14, i64 0}
!57 = !{!"_ZTSNSt12_Vector_baseIfSaIfEE17_Vector_impl_dataE", !56, i64 0, !56, i64 8, !56, i64 16}
!58 = !{!"_ZTSNSt12_Vector_baseIfSaIfEE12_Vector_implE", !57, i64 0}
!59 = !{!"_ZTSSt12_Vector_baseIfSaIfEE", !58, i64 0}
!60 = !{!"_ZTSSt6vectorIfSaIfEE", !59, i64 0}
!61 = !{!"_ZTSN5faiss20IndexIVFSpectralHashE", !52, i64 0, !54, i64 280, !21, i64 288, !9, i64 292, !23, i64 296, !55, i64 300, !60, i64 304}
!62 = !{!61, !23, i64 296}
!63 = !{!61, !54, i64 280}
!64 = !{!61, !9, i64 292}
!65 = !{!23, !23, i64 0}
!66 = !{!17, !17, i64 0}
!67 = !{!9, !9, i64 0}
!68 = !{!52, !17, i64 168}
!69 = !{!61, !55, i64 300}
!70 = !{!57, !56, i64 0}
!71 = !{!"llvm.loop.mustprogress"}
!72 = !{!"_ZTSN5faiss15VectorTransformE", !9, i64 8, !9, i64 12, !21, i64 16}
!73 = !{!72, !21, i64 16}
!74 = !{!35, !17, i64 8}
!75 = !{!24, !9, i64 8}
!76 = !{!35, !30, i64 0}
!77 = !{!57, !56, i64 8}
!78 = !{!"p1 _ZTSN5faiss10IDSelectorE", !14, i64 0}
!79 = !{!"_ZTSN5faiss19InvertedListScannerE", !17, i64 8, !21, i64 16, !21, i64 17, !78, i64 24, !17, i64 32}
!80 = !{!79, !17, i64 8}
!81 = !{!79, !21, i64 17}
!82 = !{!"p1 _ZTSN5faiss20IndexIVFSpectralHashE", !14, i64 0}
!83 = !{!"_ZTSNSt12_Vector_baseIhSaIhEE17_Vector_impl_dataE", !15, i64 0, !15, i64 8, !15, i64 16}
!84 = !{!"_ZTSNSt12_Vector_baseIhSaIhEE12_Vector_implE", !83, i64 0}
!85 = !{!"_ZTSSt12_Vector_baseIhSaIhEE", !84, i64 0}
!86 = !{!"_ZTSSt6vectorIhSaIhEE", !85, i64 0}
!87 = !{!"_ZTSN5faiss16HammingComputer4E", !9, i64 0}
!88 = !{!"_ZTSN5faiss12_GLOBAL__N_110IVFScannerINS_16HammingComputer4EEE", !79, i64 0, !82, i64 40, !17, i64 48, !23, i64 56, !23, i64 60, !60, i64 64, !60, i64 88, !86, i64 112, !87, i64 136}
!89 = !{!88, !82, i64 40}
!90 = !{!88, !17, i64 48}
!91 = !{!88, !23, i64 60}
!92 = !{!57, !56, i64 16}
!93 = !{!83, !15, i64 0}
!94 = !{!83, !15, i64 16}
!95 = !{!87, !9, i64 0}
!96 = !{!79, !17, i64 32}
!97 = !{!"_ZTSN5faiss16HammingComputer8E", !17, i64 0}
!98 = !{!"_ZTSN5faiss12_GLOBAL__N_110IVFScannerINS_16HammingComputer8EEE", !79, i64 0, !82, i64 40, !17, i64 48, !23, i64 56, !23, i64 60, !60, i64 64, !60, i64 88, !86, i64 112, !97, i64 136}
!99 = !{!98, !82, i64 40}
!100 = !{!98, !17, i64 48}
!101 = !{!98, !23, i64 60}
!102 = !{!97, !17, i64 0}
!103 = !{!"_ZTSN5faiss21HammingComputer16_tplILNS_9SIMDLevelE0EEE", !17, i64 0, !17, i64 8}
!104 = !{!"_ZTSN5faiss12_GLOBAL__N_110IVFScannerINS_21HammingComputer16_tplILNS_9SIMDLevelE0EEEEE", !79, i64 0, !82, i64 40, !17, i64 48, !23, i64 56, !23, i64 60, !60, i64 64, !60, i64 88, !86, i64 112, !103, i64 136}
!105 = !{!104, !82, i64 40}
!106 = !{!104, !17, i64 48}
!107 = !{!104, !23, i64 60}
!108 = !{!103, !17, i64 0}
!109 = !{!103, !17, i64 8}
!110 = !{!"_ZTSN5faiss21HammingComputer20_tplILNS_9SIMDLevelE0EEE", !17, i64 0, !17, i64 8, !9, i64 16}
!111 = !{!"_ZTSN5faiss12_GLOBAL__N_110IVFScannerINS_21HammingComputer20_tplILNS_9SIMDLevelE0EEEEE", !79, i64 0, !82, i64 40, !17, i64 48, !23, i64 56, !23, i64 60, !60, i64 64, !60, i64 88, !86, i64 112, !110, i64 136}
!112 = !{!111, !82, i64 40}
!113 = !{!111, !17, i64 48}
!114 = !{!111, !23, i64 60}
!115 = !{!110, !17, i64 0}
!116 = !{!110, !17, i64 8}
!117 = !{!110, !9, i64 16}
!118 = !{!"_ZTSN5faiss21HammingComputer32_tplILNS_9SIMDLevelE0EEE", !17, i64 0, !17, i64 8, !17, i64 16, !17, i64 24}
!119 = !{!"_ZTSN5faiss12_GLOBAL__N_110IVFScannerINS_21HammingComputer32_tplILNS_9SIMDLevelE0EEEEE", !79, i64 0, !82, i64 40, !17, i64 48, !23, i64 56, !23, i64 60, !60, i64 64, !60, i64 88, !86, i64 112, !118, i64 136}
!120 = !{!119, !82, i64 40}
!121 = !{!119, !17, i64 48}
!122 = !{!119, !23, i64 60}
!123 = !{!118, !17, i64 0}
!124 = !{!118, !17, i64 24}
!125 = !{!"_ZTSN5faiss21HammingComputer64_tplILNS_9SIMDLevelE0EEE", !17, i64 0, !17, i64 8, !17, i64 16, !17, i64 24, !17, i64 32, !17, i64 40, !17, i64 48, !17, i64 56}
!126 = !{!"_ZTSN5faiss12_GLOBAL__N_110IVFScannerINS_21HammingComputer64_tplILNS_9SIMDLevelE0EEEEE", !79, i64 0, !82, i64 40, !17, i64 48, !23, i64 56, !23, i64 60, !60, i64 64, !60, i64 88, !86, i64 112, !125, i64 136}
!127 = !{!126, !82, i64 40}
!128 = !{!126, !17, i64 48}
!129 = !{!126, !23, i64 60}
!130 = !{!125, !17, i64 0}
!131 = !{!125, !17, i64 56}
!132 = !{!"_ZTSN5faiss26HammingComputerDefault_tplILNS_9SIMDLevelE0EEE", !15, i64 0, !9, i64 8, !9, i64 12}
!133 = !{!"_ZTSN5faiss12_GLOBAL__N_110IVFScannerINS_26HammingComputerDefault_tplILNS_9SIMDLevelE0EEEEE", !79, i64 0, !82, i64 40, !17, i64 48, !23, i64 56, !23, i64 60, !60, i64 64, !60, i64 88, !86, i64 112, !132, i64 136}
!134 = !{!133, !82, i64 40}
!135 = !{!133, !17, i64 48}
!136 = !{!133, !23, i64 60}
!137 = !{!132, !15, i64 0}
!138 = !{!132, !9, i64 8}
!139 = !{!132, !9, i64 12}
!140 = !{!"p1 _ZTSN5faiss24RangeSearchPartialResultE", !14, i64 0}
!141 = !{!"_ZTSN5faiss24InvertedListScannerStatsE", !17, i64 0, !17, i64 8}
!142 = !{!"_ZTSN5faiss16RangeQueryResultE", !17, i64 0, !17, i64 8, !140, i64 16, !141, i64 24}
!143 = !{!142, !17, i64 24}
!144 = !{!142, !17, i64 32}
!145 = !{!"_ZTSN5faiss22ResultHandlerUnorderedIflEE", !23, i64 8, !141, i64 16}
!146 = !{!145, !17, i64 16}
!147 = !{!145, !23, i64 8}
end_hunk_1
