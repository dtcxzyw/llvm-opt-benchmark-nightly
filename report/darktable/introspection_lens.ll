Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/introspection_lens?download=true
inline.NumInlined: 229
inline.NumDeleted: 69
loop-unroll.NumCompletelyUnrolled: 33
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 38
begin_hunk_0_@commit_params:bb.a
bb.g:                                             ; preds = %bb.f
  tail call void @_ZN6lfLensD1Ev(ptr noundef nonnull align 8 dead_on_return(116) dereferenceable(116) %i.as) #30
  tail call void @_ZdlPvm(ptr noundef nonnull %i.as, i64 noundef 120) #33
  store ptr null, ptr %i.ar, align 8, !tbaa !115
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.at = tail call noalias noundef nonnull dereferenceable(120) ptr @_Znwm(i64 noundef 120) #34 ; 3 uses
  invoke void @_ZN6lfLensC1Ev(ptr noundef nonnull align 8 dereferenceable(116) %i.at)
          to label %bb.i unwind label %bb.l

bb.i:                                             ; preds = %bb.h
  store ptr %i.at, ptr %i.ar, align 8, !tbaa !115
  %i.au = getelementptr inbounds nuw i8, ptr %.0, i64 36 ; 2 uses
  %i.av = load i8, ptr %i.au, align 4, !tbaa !25
  %.not71.i = icmp eq i8 %i.av, 0
  br i1 %.not71.i, label %bb.n, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.aw = tail call noundef i32 @pthread_mutex_lock(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @darktable, i64 2832)) #30 ; 0 uses
  %i.ax = tail call noundef ptr @_ZNK10lfDatabase14FindCamerasExtEPKcS1_i(ptr noundef nonnull align 8 dereferenceable(40) %i.aq, ptr noundef null, ptr noundef nonnull %i.au, i32 noundef 0) ; 3 uses
  %.not72.i = icmp eq ptr %i.ax, null
  br i1 %.not72.i, label %bb.m, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !169 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 32
  %i.ba = load float, ptr %i.az, align 8, !tbaa !171
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ak, i64 24
  store float %i.ba, ptr %i.bb, align 8, !tbaa !125
  br label %bb.m

bb.l:                                             ; preds = %bb.h
  %i.bc = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.at, i64 noundef 120) #33
  resume { ptr, i32 } %i.bc

bb.m:                                             ; preds = %bb.k, %bb.j
  %.065.i = phi ptr [ %i.ay, %bb.k ], [ null, %bb.j ]
  %i.bd = tail call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @darktable, i64 2832)) #30 ; 0 uses
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.i
  %.1.i = phi ptr [ %.065.i, %bb.m ], [ null, %bb.i ]
  %.0.i37 = phi ptr [ %i.ax, %bb.m ], [ null, %bb.i ]
  %i.be = getelementptr inbounds nuw i8, ptr %.0, i64 164 ; 2 uses
  %i.bf = load i8, ptr %i.be, align 4, !tbaa !25
  %.not73.i = icmp eq i8 %i.bf, 0
  br i1 %.not73.i, label %bb.s, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bg = tail call noundef i32 @pthread_mutex_lock(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @darktable, i64 2832)) #30 ; 0 uses
  %i.bh = tail call noundef ptr @_ZNK10lfDatabase10FindLensesEPK8lfCameraPKcS4_i(ptr noundef nonnull align 8 dereferenceable(40) %i.aq, ptr noundef %.1.i, ptr noundef null, ptr noundef nonnull %i.be, i32 noundef 0) ; 3 uses
  %i.bi = tail call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @darktable, i64 2832)) #30 ; 0 uses
  %.not74.i = icmp eq ptr %i.bh, null
  br i1 %.not74.i, label %bb.s, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bj = load ptr, ptr %i.bh, align 8, !tbaa !172
  %i.bk = load ptr, ptr %i.ar, align 8, !tbaa !115
  %i.bl = tail call noundef nonnull align 8 dereferenceable(116) ptr @_ZN6lfLensaSERKS_(ptr noundef nonnull align 8 dereferenceable(116) %i.bk, ptr noundef nonnull align 8 dereferenceable(116) %i.bj) ; 0 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %.0, i64 292
  %i.bn = load i32, ptr %i.bm, align 4, !tbaa !173
  %.not75.i = icmp eq i32 %i.bn, 0
  br i1 %.not75.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #30
  %i.bo = getelementptr inbounds nuw i8, ptr %4, i64 4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %i.bo, i8 0, i64 28, i1 false)
  store i32 1, ptr %4, align 4, !tbaa !397
  %i.bp = getelementptr inbounds nuw i8, ptr %.0, i64 296
  %i.bq = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.br = load <2 x float>, ptr %i.bp, align 4, !tbaa !21
  store <2 x float> %i.br, ptr %i.bq, align 4, !tbaa !21
  %i.bs = load ptr, ptr %i.ar, align 8, !tbaa !115 ; 4 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 72
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !398 ; 2 uses
  %.not76.i = icmp eq ptr %i.bu, null
  br i1 %.not76.i, label %.loopexit.i, label %.preheader.i

.preheader.i:                                     ; preds = %bb.q
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !400
  %.not771.i = icmp eq ptr %i.bv, null
  br i1 %.not771.i, label %.loopexit.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader.i, %.lr.ph.i
  %i.bw = phi ptr [ %i.by, %.lr.ph.i ], [ %i.bs, %.preheader.i ]
  %i.bx = tail call noundef zeroext i1 @_ZN6lfLens14RemoveCalibTCAEi(ptr noundef nonnull align 8 dereferenceable(116) %i.bw, i32 noundef 0) ; 0 uses
  %i.by = load ptr, ptr %i.ar, align 8, !tbaa !115 ; 3 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 72
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !398
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !400
  %.not77.i = icmp eq ptr %i.cb, null
  br i1 %.not77.i, label %.loopexit.i, label %.lr.ph.i, !llvm.loop !374

.loopexit.i:                                      ; preds = %.lr.ph.i, %.preheader.i, %bb.q
  %i.cc = phi ptr [ %i.bs, %bb.q ], [ %i.bs, %.preheader.i ], [ %i.by, %.lr.ph.i ]
  call void @_ZN6lfLens11AddCalibTCAEPK14lfLensCalibTCA(ptr noundef nonnull align 8 dereferenceable(116) %i.cc, ptr noundef nonnull %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  br label %bb.r

bb.r:                                             ; preds = %.loopexit.i, %bb.p
  call void @lf_free(ptr noundef nonnull %i.bh)
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.o, %bb.n
  call void @lf_free(ptr noundef %.0.i37)
  %i.cd = getelementptr inbounds nuw i8, ptr %.0, i64 8
  %i.ce = load i32, ptr %i.cd, align 4, !tbaa !174
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  store i32 %i.ce, ptr %i.cf, align 8, !tbaa !127
  %i.cg = getelementptr inbounds nuw i8, ptr %.0, i64 12
  %i.ch = load float, ptr %i.cg, align 4, !tbaa !175
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ak, i64 20
  store float %i.ch, ptr %i.ci, align 4, !tbaa !136
  %i.cj = getelementptr inbounds nuw i8, ptr %.0, i64 20
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ak, i64 28
  %i.cl = load <2 x float>, ptr %i.cj, align 4, !tbaa !21
  store <2 x float> %i.cl, ptr %i.ck, align 4, !tbaa !21
  %i.cm = getelementptr inbounds nuw i8, ptr %.0, i64 28
  %i.cn = load float, ptr %i.cm, align 4, !tbaa !176
  %i.co = getelementptr inbounds nuw i8, ptr %i.ak, i64 36
  store float %i.cn, ptr %i.co, align 4, !tbaa !135
  %i.cp = getelementptr inbounds nuw i8, ptr %.0, i64 32
  %i.cq = load i32, ptr %i.cp, align 4, !tbaa !177 ; 2 uses
  %switch.tableidx.i.i = add i32 %i.cq, -1
  %i.cr = icmp ult i32 %switch.tableidx.i.i, 8
  %.0.i.i = select i1 %i.cr, i32 %i.cq, i32 0     ; 3 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.ak, i64 40
  store i32 %.0.i.i, ptr %i.cs, align 8, !tbaa !137
  %i.ct = getelementptr inbounds nuw i8, ptr %i.ak, i64 44 ; 2 uses
  store i32 1, ptr %i.ct, align 4, !tbaa !128
  %i.cu = getelementptr inbounds nuw i8, ptr %.0, i64 292
  %i.cv = load i32, ptr %i.cu, align 4, !tbaa !173
  %i.cw = getelementptr inbounds nuw i8, ptr %i.ak, i64 48
  store i32 %i.cv, ptr %i.cw, align 8, !tbaa !401
  %i.cx = icmp eq i32 %.0.i.i, 1
  br i1 %i.cx, label %.sink.split.i, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.cy = load ptr, ptr %i.ar, align 8, !tbaa !115
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 56
  %i.da = load i32, ptr %i.cz, align 8, !tbaa !178
  %i.db = icmp eq i32 %.0.i.i, %i.da
  br i1 %i.db, label %.sink.split.i, label %bb.u

.sink.split.i:                                    ; preds = %bb.t, %bb.s
  store i32 0, ptr %i.ct, align 4, !tbaa !128
  br label %bb.u

bb.u:                                             ; preds = %.sink.split.i, %bb.t
  %i.dc = load ptr, ptr %i.w, align 8, !tbaa !126 ; 2 uses
  %i.dd = load i32, ptr %i.dc, align 16, !tbaa !402
  %i.de = icmp ne i32 %i.dd, 0
  %i.df = icmp ne ptr %i.am, null
  %or.cond.i = select i1 %i.de, i1 %i.df, i1 false
  br i1 %or.cond.i, label %bb.v, label %_ZL17_commit_params_lfP15dt_iop_module_tP20dt_iop_lens_params_tP18dt_dev_pixelpipe_tP22dt_dev_pixelpipe_iop_t.exit

bb.v:                                             ; preds = %bb.u
  %i.dg = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !69
  %i.di = getelementptr i8, ptr %i.dh, i64 644
  %.val.i38 = load i32, ptr %i.di, align 4, !tbaa !100
  %i.dj = and i32 %.val.i38, 4
  %.not78.i = icmp eq i32 %i.dj, 0
  br i1 %.not78.i, label %_ZL17_commit_params_lfP15dt_iop_module_tP20dt_iop_lens_params_tP18dt_dev_pixelpipe_tP22dt_dev_pixelpipe_iop_t.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dc, i64 112
  %i.dl = call i32 @dt_image_is_monochrome(ptr noundef nonnull %i.dk)
  %.not79.i = icmp eq i32 %i.dl, 0
  %i.dm = select i1 %.not79.i, i32 -1, i32 -2
  %i.dn = call noundef i32 @pthread_mutex_lock(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @darktable, i64 2832)) #30 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #30
  %i.do = load ptr, ptr %i.w, align 8, !tbaa !126 ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 1492
  %i.dq = load i32, ptr %i.dp, align 4, !tbaa !403
  %i.dr = getelementptr inbounds nuw i8, ptr %i.do, i64 1496
  %i.ds = load i32, ptr %i.dr, align 8, !tbaa !404
  %i.dt = call fastcc noundef ptr @_ZL13_get_modifierPiiiPK18dt_iop_lens_data_tii(ptr noundef nonnull %i.h, i32 noundef %i.dq, i32 noundef %i.ds, ptr noundef nonnull %i.ak, i32 noundef %i.dm, i32 noundef 0) ; 0 uses
  %i.du = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @darktable, i64 2832)) #30 ; 0 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %0, i64 712 ; 2 uses
  %i.dw = call noundef i32 @pthread_mutex_lock(ptr noundef nonnull %i.dv) #30 ; 0 uses
  %i.dx = load i32, ptr %i.h, align 4, !tbaa !24  ; 2 uses
  %i.dy = lshr i32 %i.dx, 1
  %i.dz = and i32 %i.dy, 4
  %i.ea = and i32 %i.dx, 3
  %i.eb = or disjoint i32 %i.dz, %i.ea
  %i.ec = getelementptr inbounds nuw i8, ptr %i.am, i64 328
  store i32 %i.eb, ptr %i.ec, align 8, !tbaa !179
  %i.ed = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull %i.dv) #30 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #30
  br label %_ZL17_commit_params_lfP15dt_iop_module_tP20dt_iop_lens_params_tP18dt_dev_pixelpipe_tP22dt_dev_pixelpipe_iop_t.exit

bb.x:                                             ; preds = %bb.e
  %i.ee = load ptr, ptr %i.i, align 16, !tbaa !44 ; 34 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %0, i64 704
  %i.eg = load ptr, ptr %i.ef, align 16, !tbaa !60 ; 2 uses
  %i.eh = load ptr, ptr %i.w, align 8, !tbaa !126 ; 29 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eh, i64 112 ; 2 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ee, i64 104 ; 4 uses
  store i32 0, ptr %i.ej, align 8, !tbaa !129
  %i.ek = getelementptr i8, ptr %i.eh, i64 680
  %.val.val.i39 = load i32, ptr %i.ek, align 8, !tbaa !159 ; 3 uses
  %.not.i40 = icmp eq i32 %.val.val.i39, 0
  br i1 %.not.i40, label %_ZL17_commit_params_lfP15dt_iop_module_tP20dt_iop_lens_params_tP18dt_dev_pixelpipe_tP22dt_dev_pixelpipe_iop_t.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.el = getelementptr inbounds nuw i8, ptr %.0, i64 304 ; 9 uses
  %i.em = getelementptr inbounds nuw i8, ptr %i.ee, i64 84
  %i.en = getelementptr inbounds nuw i8, ptr %.0, i64 308 ; 4 uses
  %i.eo = load <2 x float>, ptr %i.el, align 4, !tbaa !21
  store <2 x float> %i.eo, ptr %i.em, align 4, !tbaa !21
  %i.ep = getelementptr inbounds nuw i8, ptr %.0, i64 324
  %i.eq = load i32, ptr %i.ep, align 4, !tbaa !180 ; 2 uses
  %i.er = getelementptr inbounds nuw i8, ptr %i.ee, i64 100
  store i32 %i.eq, ptr %i.er, align 4, !tbaa !405
  switch i32 %i.eq, label %bb.co [
    i32 0, label %bb.z
    i32 1, label %bb.aw
  ]

bb.z:                                             ; preds = %bb.y
  %i.es = getelementptr inbounds nuw i8, ptr %.0, i64 320
  %i.et = load float, ptr %i.es, align 4, !tbaa !181 ; 4 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %i.ee, i64 92 ; 2 uses
  store float %i.et, ptr %i.eu, align 4, !tbaa !406
  %i.ev = fcmp reassoc nsz arcp contract afn olt float %i.et, f0x3F666666
  %i.ew = fcmp reassoc nsz arcp contract afn ogt float %i.et, 1.100000e+00
  %or.cond52.i = or i1 %i.ev, %i.ew
  br i1 %or.cond52.i, label %bb.aa, label %bb.av

bb.aa:                                            ; preds = %bb.z
  %i.ex = icmp eq i32 %.val.val.i39, 3
  br i1 %i.ex, label %_ZL20_get_autoscale_md_v1P15dt_iop_module_tP20dt_iop_lens_params_t.exit.i, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #30
  %i.ey = call fastcc noundef i32 @_ZL18_init_coeffs_md_v1PK10dt_image_tPK20dt_iop_lens_params_tfPfS5_PA16_fS5_(ptr noundef nonnull readonly %i.ei, ptr noundef nonnull readonly %.0, float noundef 1.000000e+00, ptr noundef nonnull %i.e, ptr noundef nonnull %i.f, ptr noundef nonnull %i.g, ptr noundef null) ; 3 uses
  %i.ez = load float, ptr %i.e, align 16, !tbaa !21
  %i.fa = icmp sgt i32 %i.ey, 1                   ; 6 uses
  %wide.trip.count.i.i.i = zext nneg i32 %i.ey to i64 ; 6 uses
  %i.fb = sext i32 %i.ey to i64                   ; 3 uses
  %i.fc = getelementptr [4 x i8], ptr %i.g, i64 %i.fb
  %i.fd = getelementptr i8, ptr %i.fc, i64 -4     ; 2 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %i.g, i64 64 ; 6 uses
  %i.ff = getelementptr [4 x i8], ptr %i.fe, i64 %i.fb
  %i.fg = getelementptr i8, ptr %i.ff, i64 -4     ; 2 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %i.g, i64 128 ; 6 uses
  %i.fi = getelementptr [4 x i8], ptr %i.fh, i64 %i.fb
  %i.fj = getelementptr i8, ptr %i.fi, i64 -4     ; 2 uses
  %i.fk = load float, ptr %i.g, align 16          ; 2 uses
  %i.fl = load float, ptr %i.fe, align 16         ; 2 uses
  %i.fm = load float, ptr %i.fh, align 16         ; 2 uses
  br label %.preheader.i.i

.preheader.i.i:                                   ; preds = %.split.us.i.i, %bb.ab
  %.01716.int.i.i = phi i32 [ 0, %bb.ab ], [ %.int.i.i, %.split.us.i.i ] ; 2 uses
  %.01815.i.i = phi float [ 0.000000e+00, %bb.ab ], [ %.us-phi.i.i, %.split.us.i.i ] ; 4 uses
  %indvar.conv.i.i = uitofp nneg i32 %.01716.int.i.i to float
  %i.fn = fmul reassoc nnan nsz arcp contract afn float %indvar.conv.i.i, f0x3B24A9CF
  %i.fo = fadd reassoc nsz arcp contract afn float %i.fn, 5.000000e-01 ; 19 uses
  %i.fp = fcmp reassoc nsz arcp contract afn olt float %i.fo, %i.ez
  br i1 %i.fp, label %_ZL26_interpolate_linear_splinePKfS0_if.exit.thread.us.preheader.i.i, label %.preheader.i.preheader.i.i

.preheader.i.preheader.i.i:                       ; preds = %.preheader.i.i
  br i1 %i.fa, label %.lr.ph.i.i.i, label %._crit_edge.i.i.i

_ZL26_interpolate_linear_splinePKfS0_if.exit.thread.us.preheader.i.i: ; preds = %.preheader.i.i
  %i.fq = fcmp reassoc nsz arcp contract afn ogt float %.01815.i.i, %i.fk
  %spec.select.i.i = select reassoc nsz arcp contract afn i1 %i.fq, float %.01815.i.i, float %i.fk ; 2 uses
  %i.fr = fcmp reassoc nsz arcp contract afn ogt float %spec.select.i.i, %i.fl
  %i.fs = select reassoc nsz arcp contract afn i1 %i.fr, float %spec.select.i.i, float %i.fl ; 2 uses
  %i.ft = fcmp reassoc nsz arcp contract afn ogt float %i.fs, %i.fm
  %spec.select87.i.i = select i1 %i.ft, float %i.fs, float %i.fm
  br label %.split.us.i.i

bb.ac:                                            ; preds = %.split.us.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #30
  br label %_ZL20_get_autoscale_md_v1P15dt_iop_module_tP20dt_iop_lens_params_t.exit.i

.split.us.i.i:                                    ; preds = %._crit_edge.i21.2.i.i, %bb.at, %_ZL26_interpolate_linear_splinePKfS0_if.exit.2.i.i, %_ZL26_interpolate_linear_splinePKfS0_if.exit.thread.us.preheader.i.i
  %.us-phi.i.i = phi float [ %i.kb, %bb.at ], [ %spec.select87.i.i, %_ZL26_interpolate_linear_splinePKfS0_if.exit.thread.us.preheader.i.i ], [ %i.kc, %._crit_edge.i21.2.i.i ], [ %i.ir, %_ZL26_interpolate_linear_splinePKfS0_if.exit.2.i.i ] ; 2 uses
  %.int.i.i = add nuw nsw i32 %.01716.int.i.i, 1  ; 2 uses
  %exitcond.not.i.i = icmp eq i32 %.int.i.i, 200
  br i1 %exitcond.not.i.i, label %bb.ac, label %.preheader.i.i, !llvm.loop !375

.lr.ph.i.i.i:                                     ; preds = %.preheader.i.preheader.i.i, %bb.ae
  %indvars.iv.i.i.i = phi i64 [ %indvars.iv.next.i.i.i, %bb.ae ], [ 1, %.preheader.i.preheader.i.i ] ; 4 uses
  %i.fu = add nsw i64 %indvars.iv.i.i.i, -1       ; 2 uses
  %i.fv = getelementptr inbounds [4 x i8], ptr %i.e, i64 %i.fu
  %i.fw = load float, ptr %i.fv, align 4, !tbaa !21 ; 3 uses
  %i.fx = fcmp reassoc nsz arcp contract afn ult float %i.fo, %i.fw
  br i1 %i.fx, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %.lr.ph.i.i.i
  %i.fy = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %indvars.iv.i.i.i
  %i.fz = load float, ptr %i.fy, align 4, !tbaa !21 ; 2 uses
  %i.ga = fcmp reassoc nsz arcp contract afn ugt float %i.fo, %i.fz
  br i1 %i.ga, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad, %.lr.ph.i.i.i
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i, %wide.trip.count.i.i.i
  br i1 %exitcond.not.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i, !llvm.loop !0

bb.af:                                            ; preds = %bb.ad
  %i.gb = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %indvars.iv.i.i.i
  %i.gc = load float, ptr %i.gb, align 4, !tbaa !21
  %i.gd = getelementptr inbounds [4 x i8], ptr %i.g, i64 %i.fu
  %i.ge = load float, ptr %i.gd, align 4, !tbaa !21 ; 2 uses
  %i.gf = fsub reassoc nsz arcp contract afn float %i.gc, %i.ge
  %i.gg = fsub reassoc nsz arcp contract afn float %i.fz, %i.fw
  %i.gh = fsub reassoc nsz arcp contract afn float %i.fo, %i.fw
  %i.gi = fmul reassoc nsz arcp contract afn float %i.gf, %i.gh
  %i.gj = fdiv reassoc nsz arcp contract afn float %i.gi, %i.gg
  %i.gk = fadd reassoc nsz arcp contract afn float %i.gj, %i.ge
  br label %_ZL26_interpolate_linear_splinePKfS0_if.exit.i.i

._crit_edge.i.i.i:                                ; preds = %bb.ae, %.preheader.i.preheader.i.i
  %i.gl = load float, ptr %i.fd, align 4, !tbaa !21
  br label %_ZL26_interpolate_linear_splinePKfS0_if.exit.i.i

_ZL26_interpolate_linear_splinePKfS0_if.exit.i.i: ; preds = %._crit_edge.i.i.i, %bb.af
  %.1.i.i.i = phi nsz float [ %i.gk, %bb.af ], [ %i.gl, %._crit_edge.i.i.i ]
  %i.gm = fcmp reassoc nsz arcp contract afn ogt float %.01815.i.i, %.1.i.i.i
  br i1 %i.gm, label %_ZL26_interpolate_linear_splinePKfS0_if.exit29.i.i, label %.preheader.i20.i.i

.preheader.i20.i.i:                               ; preds = %_ZL26_interpolate_linear_splinePKfS0_if.exit.i.i
  br i1 %i.fa, label %.lr.ph.i25.i.i, label %._crit_edge.i21.i.i

.lr.ph.i25.i.i:                                   ; preds = %.preheader.i20.i.i, %bb.ah
  %indvars.iv.i26.i.i = phi i64 [ %indvars.iv.next.i27.i.i, %bb.ah ], [ 1, %.preheader.i20.i.i ] ; 4 uses
  %i.gn = add nsw i64 %indvars.iv.i26.i.i, -1     ; 2 uses
  %i.go = getelementptr inbounds [4 x i8], ptr %i.e, i64 %i.gn
  %i.gp = load float, ptr %i.go, align 4, !tbaa !21 ; 3 uses
  %i.gq = fcmp reassoc nsz arcp contract afn ult float %i.fo, %i.gp
  br i1 %i.gq, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %.lr.ph.i25.i.i
  %i.gr = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %indvars.iv.i26.i.i
  %i.gs = load float, ptr %i.gr, align 4, !tbaa !21 ; 2 uses
  %i.gt = fcmp reassoc nsz arcp contract afn ugt float %i.fo, %i.gs
  br i1 %i.gt, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag, %.lr.ph.i25.i.i
  %indvars.iv.next.i27.i.i = add nuw nsw i64 %indvars.iv.i26.i.i, 1 ; 2 uses
  %exitcond.not.i28.i.i = icmp eq i64 %indvars.iv.next.i27.i.i, %wide.trip.count.i.i.i
  br i1 %exitcond.not.i28.i.i, label %._crit_edge.i21.i.i, label %.lr.ph.i25.i.i, !llvm.loop !0

bb.ai:                                            ; preds = %bb.ag
  %i.gu = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %indvars.iv.i26.i.i
  %i.gv = load float, ptr %i.gu, align 4, !tbaa !21
  %i.gw = getelementptr inbounds [4 x i8], ptr %i.g, i64 %i.gn
  %i.gx = load float, ptr %i.gw, align 4, !tbaa !21 ; 2 uses
  %i.gy = fsub reassoc nsz arcp contract afn float %i.gv, %i.gx
  %i.gz = fsub reassoc nsz arcp contract afn float %i.gs, %i.gp
  %i.ha = fsub reassoc nsz arcp contract afn float %i.fo, %i.gp
  %i.hb = fmul reassoc nsz arcp contract afn float %i.gy, %i.ha
  %i.hc = fdiv reassoc nsz arcp contract afn float %i.hb, %i.gz
  %i.hd = fadd reassoc nsz arcp contract afn float %i.hc, %i.gx
  br label %_ZL26_interpolate_linear_splinePKfS0_if.exit29.i.i

._crit_edge.i21.i.i:                              ; preds = %bb.ah, %.preheader.i20.i.i
  %i.he = load float, ptr %i.fd, align 4, !tbaa !21
  br label %_ZL26_interpolate_linear_splinePKfS0_if.exit29.i.i

_ZL26_interpolate_linear_splinePKfS0_if.exit29.i.i: ; preds = %._crit_edge.i21.i.i, %bb.ai, %_ZL26_interpolate_linear_splinePKfS0_if.exit.i.i
  %i.hf = phi reassoc nsz arcp contract afn float [ %i.he, %._crit_edge.i21.i.i ], [ %.01815.i.i, %_ZL26_interpolate_linear_splinePKfS0_if.exit.i.i ], [ %i.hd, %bb.ai ] ; 2 uses
  br i1 %i.fa, label %.lr.ph.i.1.i.i, label %._crit_edge.i.1.i.i

.lr.ph.i.1.i.i:                                   ; preds = %_ZL26_interpolate_linear_splinePKfS0_if.exit29.i.i, %bb.al
  %indvars.iv.i.1.i.i = phi i64 [ %indvars.iv.next.i.1.i.i, %bb.al ], [ 1, %_ZL26_interpolate_linear_splinePKfS0_if.exit29.i.i ] ; 4 uses
  %i.hg = add nsw i64 %indvars.iv.i.1.i.i, -1     ; 2 uses
  %i.hh = getelementptr inbounds [4 x i8], ptr %i.e, i64 %i.hg
  %i.hi = load float, ptr %i.hh, align 4, !tbaa !21 ; 3 uses
  %i.hj = fcmp reassoc nsz arcp contract afn ult float %i.fo, %i.hi
  br i1 %i.hj, label %bb.al, label %bb.aj

bb.aj:                                            ; preds = %.lr.ph.i.1.i.i
  %i.hk = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %indvars.iv.i.1.i.i
  %i.hl = load float, ptr %i.hk, align 4, !tbaa !21 ; 2 uses
  %i.hm = fcmp reassoc nsz arcp contract afn ugt float %i.fo, %i.hl
  br i1 %i.hm, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.hn = getelementptr inbounds nuw [4 x i8], ptr %i.fe, i64 %indvars.iv.i.1.i.i
  %i.ho = load float, ptr %i.hn, align 4, !tbaa !21
  %i.hp = getelementptr inbounds [4 x i8], ptr %i.fe, i64 %i.hg
  %i.hq = load float, ptr %i.hp, align 4, !tbaa !21 ; 2 uses
  %i.hr = fsub reassoc nsz arcp contract afn float %i.ho, %i.hq
  %i.hs = fsub reassoc nsz arcp contract afn float %i.hl, %i.hi
  %i.ht = fsub reassoc nsz arcp contract afn float %i.fo, %i.hi
  %i.hu = fmul reassoc nsz arcp contract afn float %i.hr, %i.ht
  %i.hv = fdiv reassoc nsz arcp contract afn float %i.hu, %i.hs
end_hunk_0
begin_hunk_1_@commit_params:bb.a
  %i.tc = load float, ptr %i.tb, align 4, !tbaa !21 ; 2 uses
  %i.td = fsub reassoc nsz arcp contract afn float %i.ta, %i.tc
  %i.te = fsub reassoc nsz arcp contract afn float %i.sx, %i.su
  %i.tf = fsub reassoc nsz arcp contract afn float %i.rs, %i.su
  %i.tg = fmul reassoc nsz arcp contract afn float %i.td, %i.tf
  %i.th = fdiv reassoc nsz arcp contract afn float %i.tg, %i.te
  %i.ti = fadd reassoc nsz arcp contract afn float %i.th, %i.tc
  br label %.preheader.i411.i.i

._crit_edge.i402.i.i:                             ; preds = %bb.bo, %.preheader.i401.i.i
  %i.tj = load float, ptr %i.qd, align 4, !tbaa !21
  br label %.preheader.i411.i.i

.preheader.i411.i.i:                              ; preds = %._crit_edge.i402.i.i, %bb.bp
  %.1.i403.i.i = phi nsz float [ %i.ti, %bb.bp ], [ %i.tj, %._crit_edge.i402.i.i ] ; 2 uses
  br i1 %i.px, label %.lr.ph.i416.i.i, label %._crit_edge.i412.i.i

.lr.ph.i416.i.i:                                  ; preds = %.preheader.i411.i.i, %bb.br
  %indvars.iv.i417.i.i = phi i64 [ %indvars.iv.next.i418.i.i, %bb.br ], [ 1, %.preheader.i411.i.i ] ; 4 uses
  %i.tk = add nsw i64 %indvars.iv.i417.i.i, -1    ; 2 uses
  %i.tl = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.tk
  %i.tm = load float, ptr %i.tl, align 4, !tbaa !21 ; 3 uses
  %i.tn = fcmp reassoc nsz arcp contract afn ult float %i.rs, %i.tm
  br i1 %i.tn, label %bb.br, label %bb.bq

bb.bq:                                            ; preds = %.lr.ph.i416.i.i
  %i.to = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.i417.i.i
  %i.tp = load float, ptr %i.to, align 4, !tbaa !21 ; 2 uses
  %i.tq = fcmp reassoc nsz arcp contract afn ugt float %i.rs, %i.tp
  br i1 %i.tq, label %bb.br, label %bb.bs

bb.br:                                            ; preds = %bb.bq, %.lr.ph.i416.i.i
  %indvars.iv.next.i418.i.i = add nuw nsw i64 %indvars.iv.i417.i.i, 1 ; 2 uses
  %exitcond.not.i419.i.i = icmp eq i64 %indvars.iv.next.i418.i.i, %wide.trip.count.i.i62.i
  br i1 %exitcond.not.i419.i.i, label %._crit_edge.i412.i.i, label %.lr.ph.i416.i.i, !llvm.loop !0

bb.bs:                                            ; preds = %bb.bq
  %i.tr = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv.i417.i.i
  %i.ts = load float, ptr %i.tr, align 4, !tbaa !21
  %i.tt = getelementptr inbounds [4 x i8], ptr %i.d, i64 %i.tk
  %i.tu = load float, ptr %i.tt, align 4, !tbaa !21 ; 2 uses
  %i.tv = fsub reassoc nsz arcp contract afn float %i.ts, %i.tu
  %i.tw = fsub reassoc nsz arcp contract afn float %i.tp, %i.tm
  %i.tx = fsub reassoc nsz arcp contract afn float %i.rs, %i.tm
  %i.ty = fmul reassoc nsz arcp contract afn float %i.tv, %i.tx
  %i.tz = fdiv reassoc nsz arcp contract afn float %i.ty, %i.tw
  %i.ua = fadd reassoc nsz arcp contract afn float %i.tz, %i.tu
  br label %_ZL26_interpolate_linear_splinePKfS0_if.exit420.i.i

._crit_edge.i412.i.i:                             ; preds = %bb.br, %.preheader.i411.i.i
  %i.ub = load float, ptr %i.qf, align 4, !tbaa !21
  br label %_ZL26_interpolate_linear_splinePKfS0_if.exit420.i.i

_ZL26_interpolate_linear_splinePKfS0_if.exit420.i.i: ; preds = %._crit_edge.i412.i.i, %bb.bs, %bb.bm
  %.1.i403432.i.i = phi float [ %.1.i403.i.i, %bb.bs ], [ %.1.i403.i.i, %._crit_edge.i412.i.i ], [ %i.pu, %bb.bm ]
  %.1.i413.i.i = phi nsz float [ %i.ua, %bb.bs ], [ %i.ub, %._crit_edge.i412.i.i ], [ %i.pt, %bb.bm ]
  %i.uc = fadd reassoc nsz arcp contract afn float %.1.i403432.i.i, 1.000000e+00
  %i.ud = getelementptr inbounds nuw [4 x i8], ptr %i.km, i64 %indvars.iv564.i.i
  %i.ue = fmul reassoc nsz arcp contract afn float %i.uc, %i.sr
  store float %i.ue, ptr %i.ud, align 4, !tbaa !21
  %i.uf = fadd reassoc nsz arcp contract afn float %.1.i413.i.i, 1.000000e+00
  %i.ug = getelementptr inbounds nuw [4 x i8], ptr %i.qa, i64 %indvars.iv564.i.i
  %i.uh = fmul reassoc nsz arcp contract afn float %i.uf, %i.sr
  store float %i.uh, ptr %i.ug, align 4, !tbaa !21
  br label %.critedge397.i.i

.critedge397.i.i:                                 ; preds = %_ZL26_interpolate_linear_splinePKfS0_if.exit420.i.i, %.critedge396.i.i
  %indvars.iv.next565.i.i = add nuw nsw i64 %indvars.iv564.i.i, 1 ; 2 uses
  %exitcond567.not.i.i = icmp eq i64 %indvars.iv.next565.i.i, 16
  br i1 %exitcond567.not.i.i, label %bb.bg, label %bb.bh, !llvm.loop !383

bb.bt:                                            ; preds = %bb.by, %.preheader438.i.i
  %indvars.iv547.i.i = phi i64 [ 0, %.preheader438.i.i ], [ %indvars.iv.next548.i.i, %bb.by ] ; 8 uses
  %i.ui = trunc nuw nsw i64 %indvars.iv547.i.i to i32
  %i.uj = uitofp nsz nneg i32 %i.ui to float
  %i.uk = fmul reassoc nnan nsz arcp contract afn float %i.uj, f0x3D888889 ; 8 uses
  %i.ul = getelementptr inbounds nuw [4 x i8], ptr %i.kl, i64 %indvars.iv547.i.i
  store float %i.uk, ptr %i.ul, align 4, !tbaa !21
  %i.um = getelementptr inbounds nuw [4 x i8], ptr %i.kk, i64 %indvars.iv547.i.i
  store float %i.uk, ptr %i.um, align 4, !tbaa !21
  %i.un = getelementptr inbounds nuw [4 x i8], ptr %i.kp, i64 %indvars.iv547.i.i ; 2 uses
  store float 1.000000e+00, ptr %i.un, align 4, !tbaa !21
  %i.uo = getelementptr inbounds nuw [4 x i8], ptr %i.kq, i64 %indvars.iv547.i.i ; 2 uses
  store float 1.000000e+00, ptr %i.uo, align 4, !tbaa !21
  %i.up = getelementptr inbounds nuw [4 x i8], ptr %i.km, i64 %indvars.iv547.i.i ; 3 uses
  store float 1.000000e+00, ptr %i.up, align 4, !tbaa !21
  %i.uq = getelementptr inbounds nuw [4 x i8], ptr %i.kn, i64 %indvars.iv547.i.i ; 2 uses
  store float 1.000000e+00, ptr %i.uq, align 4, !tbaa !21
  %square374.i.i = fmul reassoc nnan nsz arcp contract afn float %i.uk, %i.uk ; 2 uses
  %i.ur = tail call reassoc nsz arcp contract afn float @llvm.powi.f32.i32(float %i.uk, i32 4) ; 2 uses
  %i.us = tail call reassoc nsz arcp contract afn float @llvm.powi.f32.i32(float %i.uk, i32 6) ; 2 uses
  %i.ut = load i32, ptr %i.kr, align 4, !tbaa !25
  %.not375.i.i = icmp eq i32 %i.ut, 0
  br i1 %.not375.i.i, label %._crit_edge.thread.i.i, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  %i.uu = load i32, ptr %i.t, align 4, !tbaa !164
  %i.uv = and i32 %i.uu, 5
  %.not376.i.i = icmp eq i32 %i.uv, 0
  br i1 %.not376.i.i, label %._crit_edge.thread.i.i, label %.preheader437.i.i

.preheader437.i.i:                                ; preds = %bb.bu
  %i.uw = load i32, ptr %i.ko, align 4, !tbaa !25
  %i.ux = icmp sgt i32 %i.uw, 0
  br i1 %i.ux, label %.lr.ph.i.i.preheader, label %._crit_edge.thread.i.i

.lr.ph.i.i.preheader:                             ; preds = %.preheader437.i.i
  %i.uy = insertelement <4 x float> <float 1.000000e+00, float poison, float poison, float poison>, float %square374.i.i, i64 1
  %i.uz = insertelement <4 x float> %i.uy, float %i.ur, i64 2
  %i.va = insertelement <4 x float> %i.uz, float %i.us, i64 3
  br label %.lr.ph.i.i

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i
  %i.vb = icmp eq i32 %i.vi, 1
  br i1 %i.vb, label %bb.bv, label %._crit_edge.thread.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i
  %indvars.iv544.i.i = phi i64 [ %indvars.iv.next545.i.i, %.lr.ph.i.i ], [ 0, %.lr.ph.i.i.preheader ] ; 3 uses
  %i.vc = getelementptr inbounds nuw [24 x i8], ptr %i.ks, i64 %indvars.iv544.i.i
  %i.vd = load <4 x float>, ptr %i.vc, align 4, !tbaa !25
  %i.ve = fmul reassoc arcp contract afn <4 x float> %i.vd, %i.va
  %i.vf = load float, ptr %i.el, align 4, !tbaa !182
  %op.rdx = tail call reassoc nsz arcp contract afn float @llvm.vector.reduce.fadd.v4f32(float -1.000000e+00, <4 x float> %i.ve)
  %i.vg = fmul reassoc nsz arcp contract afn float %op.rdx, %i.vf
  %i.vh = fadd reassoc nsz arcp contract afn float %i.vg, 1.000000e+00
  %gep.i.i = getelementptr inbounds nuw [64 x i8], ptr %i.up, i64 %indvars.iv544.i.i
  store float %i.vh, ptr %gep.i.i, align 4, !tbaa !21
  %indvars.iv.next545.i.i = add nuw nsw i64 %indvars.iv544.i.i, 1 ; 2 uses
  %i.vi = load i32, ptr %i.ko, align 4, !tbaa !25 ; 2 uses
  %i.vj = sext i32 %i.vi to i64
  %i.vk = icmp slt i64 %indvars.iv.next545.i.i, %i.vj
  br i1 %i.vk, label %.lr.ph.i.i, label %._crit_edge.i.i, !llvm.loop !384

bb.bv:                                            ; preds = %._crit_edge.i.i
  %i.vl = load float, ptr %i.up, align 4, !tbaa !21 ; 2 uses
  store float %i.vl, ptr %i.uo, align 4, !tbaa !21
  store float %i.vl, ptr %i.un, align 4, !tbaa !21
  br label %._crit_edge.thread.i.i

._crit_edge.thread.i.i:                           ; preds = %bb.bv, %._crit_edge.i.i, %.preheader437.i.i, %bb.bu, %bb.bt
  %i.vm = load i32, ptr %i.kt, align 8, !tbaa !25
  %.not377.i.i = icmp eq i32 %i.vm, 0
  br i1 %.not377.i.i, label %bb.by, label %bb.bw

bb.bw:                                            ; preds = %._crit_edge.thread.i.i
  %i.vn = load i32, ptr %i.t, align 4, !tbaa !164
  %i.vo = and i32 %i.vn, 2
  %.not378.i.i = icmp eq i32 %i.vo, 0
  br i1 %.not378.i.i, label %bb.by, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %i.vp = load float, ptr %i.ku, align 8, !tbaa !25
  %i.vq = fmul reassoc nsz arcp contract afn float %i.vp, %square374.i.i
  %i.vr = load float, ptr %i.kv, align 4, !tbaa !25
  %i.vs = fmul reassoc nsz arcp contract afn float %i.vr, %i.ur
  %i.vt = fadd reassoc nsz arcp contract afn float %i.vs, %i.vq
  %i.vu = load float, ptr %i.kw, align 8, !tbaa !25
  %i.vv = fmul reassoc nsz arcp contract afn float %i.vu, %i.us
  %i.vw = fadd reassoc nsz arcp contract afn float %i.vt, %i.vv
  %i.vx = load float, ptr %i.kx, align 4, !tbaa !25
  %i.vy = tail call reassoc nsz arcp contract afn float @llvm.powi.f32.i32(float %i.uk, i32 8)
  %i.vz = fmul reassoc nsz arcp contract afn float %i.vx, %i.vy
  %i.wa = fadd reassoc nsz arcp contract afn float %i.vw, %i.vz
  %i.wb = load float, ptr %i.ky, align 8, !tbaa !25
  %i.wc = tail call reassoc nsz arcp contract afn float @llvm.powi.f32.i32(float %i.uk, i32 10)
  %i.wd = fmul reassoc nsz arcp contract afn float %i.wb, %i.wc
  %i.we = fadd reassoc nsz arcp contract afn float %i.wa, %i.wd
  %i.wf = load float, ptr %i.en, align 4, !tbaa !183
  %i.wg = fmul reassoc nsz arcp contract afn float %i.we, %i.wf
  %i.wh = fadd reassoc nsz arcp contract afn float %i.wg, 1.000000e+00
  %i.wi = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %i.wh
  store float %i.wi, ptr %i.uq, align 4, !tbaa !21
  br label %bb.by

bb.by:                                            ; preds = %bb.bx, %bb.bw, %._crit_edge.thread.i.i
  %indvars.iv.next548.i.i = add nuw nsw i64 %indvars.iv547.i.i, 1 ; 2 uses
  %exitcond550.not.i.i = icmp eq i64 %indvars.iv.next548.i.i, 16
  br i1 %exitcond550.not.i.i, label %.loopexit.i.i, label %bb.bt, !llvm.loop !385

bb.bz:                                            ; preds = %bb.aw
  %i.wj = load i32, ptr %i.ko, align 4, !tbaa !25
  %.not.i.i = icmp eq i32 %i.wj, 0
  br i1 %.not.i.i, label %bb.cb, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  %i.wk = getelementptr inbounds nuw i8, ptr %i.eh, i64 688
  %i.wl = load <4 x float>, ptr %i.wk, align 8, !tbaa !25
  br label %bb.cb

bb.cb:                                            ; preds = %bb.ca, %bb.bz
  %i.wm = phi <4 x float> [ %i.wl, %bb.ca ], [ <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00>, %bb.bz ] ; 8 uses
  %i.wn = getelementptr inbounds nuw i8, ptr %i.eh, i64 704
  %i.wo = load i32, ptr %i.wn, align 8, !tbaa !25
  %.not366.i.i = icmp eq i32 %i.wo, 0
  br i1 %.not366.i.i, label %vector.memcheck, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  %i.wp = getelementptr inbounds nuw i8, ptr %i.eh, i64 708
  %i.wq = load <4 x float>, ptr %i.wp, align 4, !tbaa !25
  %i.wr = getelementptr inbounds nuw i8, ptr %i.eh, i64 724
  %5 = load <2 x float>, ptr %i.wr, align 4, !tbaa !25
  br label %vector.memcheck

vector.memcheck:                                  ; preds = %bb.cc, %bb.cb
  %6 = phi <4 x float> [ %i.wq, %bb.cc ], [ zeroinitializer, %bb.cb ] ; 8 uses
  %7 = phi <2 x float> [ %5, %bb.cc ], [ zeroinitializer, %bb.cb ] ; 4 uses
  %i.ws = getelementptr inbounds nuw i8, ptr %i.ee, i64 364 ; 3 uses
  %i.wt = getelementptr inbounds nuw i8, ptr %i.ee, i64 300 ; 2 uses
  %i.wu = getelementptr inbounds nuw i8, ptr %.0, i64 312 ; 2 uses
  %i.wv = getelementptr inbounds nuw i8, ptr %.0, i64 316 ; 2 uses
  %i.ww = load i32, ptr %i.t, align 4, !tbaa !164 ; 2 uses
  %i.wx = and i32 %i.ww, 4
  %.not368.i.i = icmp ne i32 %i.wx, 0             ; 4 uses
  %.not369.i.i = trunc i32 %i.ww to i1            ; 3 uses
  %i.wy = getelementptr i8, ptr %i.ee, i64 492
  %i.wz = getelementptr i8, ptr %.0, i64 320
  %bound0 = icmp ult ptr %i.kk, %i.wz
  %bound1 = icmp ult ptr %i.el, %i.wy
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.body

scalar.ph.preheader:                              ; preds = %vector.memcheck
  %i.xa = extractelement <4 x float> %i.wm, i64 3 ; 2 uses
  %i.xb = extractelement <4 x float> %i.wm, i64 2
  %i.xc = extractelement <4 x float> %i.wm, i64 1
  %i.xd = extractelement <4 x float> %i.wm, i64 0
  %8 = extractelement <4 x float> %6, i64 2
  %9 = extractelement <4 x float> %6, i64 1
  %i.xe = extractelement <4 x float> %6, i64 0
  %i.xf = extractelement <2 x float> %7, i64 1
  %i.xg = extractelement <2 x float> %7, i64 0
  %i.xh = extractelement <4 x float> %6, i64 3
  br label %scalar.ph

vector.body:                                      ; preds = %vector.memcheck
  %broadcast.splatinsert413 = insertelement <8 x ptr> poison, ptr %i.el, i64 0
  %broadcast.splat414 = shufflevector <8 x ptr> %broadcast.splatinsert413, <8 x ptr> poison, <8 x i32> zeroinitializer ; 2 uses
  %broadcast.splat412 = shufflevector <4 x float> %i.wm, <4 x float> poison, <8 x i32> zeroinitializer ; 2 uses
  %broadcast.splat410 = shufflevector <4 x float> %i.wm, <4 x float> poison, <8 x i32> <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1> ; 2 uses
  %broadcast.splat408 = shufflevector <4 x float> %i.wm, <4 x float> poison, <8 x i32> <i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2> ; 2 uses
  %broadcast.splat406 = shufflevector <4 x float> %i.wm, <4 x float> poison, <8 x i32> <i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3> ; 4 uses
  %broadcast.splatinsert403 = insertelement <8 x ptr> poison, ptr %i.wv, i64 0
  %broadcast.splat404 = shufflevector <8 x ptr> %broadcast.splatinsert403, <8 x ptr> poison, <8 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert401 = insertelement <8 x ptr> poison, ptr %i.wu, i64 0
  %broadcast.splat402 = shufflevector <8 x ptr> %broadcast.splatinsert401, <8 x ptr> poison, <8 x i32> zeroinitializer ; 2 uses
  %broadcast.splat400 = shufflevector <2 x float> %7, <2 x float> poison, <8 x i32> <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1> ; 2 uses
  %broadcast.splat398 = shufflevector <2 x float> %7, <2 x float> poison, <8 x i32> zeroinitializer ; 2 uses
  %broadcast.splat396 = shufflevector <4 x float> %6, <4 x float> poison, <8 x i32> <i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3> ; 2 uses
  %broadcast.splat394 = shufflevector <4 x float> %6, <4 x float> poison, <8 x i32> <i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2> ; 2 uses
  %broadcast.splat392 = shufflevector <4 x float> %6, <4 x float> poison, <8 x i32> <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1> ; 2 uses
  %broadcast.splat390 = shufflevector <4 x float> %6, <4 x float> poison, <8 x i32> zeroinitializer ; 2 uses
  %i.xi = insertelement <8 x i1> poison, i1 %.not368.i.i, i64 0
  %i.xj = shufflevector <8 x i1> %i.xi, <8 x i1> poison, <8 x i32> zeroinitializer ; 2 uses
  store <8 x float> <float 0.000000e+00, float f0x3D888889, float f0x3E088889, float f0x3E4CCCCE, float f0x3E888889, float f0x3EAAAAAB, float f0x3ECCCCCE, float f0x3EEEEEF0>, ptr %i.kl, align 4, !tbaa !21, !alias.scope !413, !noalias !414
  store <8 x float> <float 0.000000e+00, float f0x3D888889, float f0x3E088889, float f0x3E4CCCCE, float f0x3E888889, float f0x3EAAAAAB, float f0x3ECCCCCE, float f0x3EEEEEF0>, ptr %i.kk, align 4, !tbaa !21, !alias.scope !413, !noalias !414
  %i.xk = fmul reassoc nsz arcp contract afn <8 x float> %broadcast.splat406, <float 0.000000e+00, float f0x3D888889, float f0x3E088889, float f0x3E4CCCCE, float f0x3E888889, float f0x3EAAAAAB, float f0x3ECCCCCE, float f0x3EEEEEF0> ; 2 uses
  %i.xl = fmul reassoc nsz arcp contract afn <8 x float> %i.xk, %i.xk ; 3 uses
  %i.xm = fmul reassoc nsz arcp contract afn <8 x float> %i.xl, %broadcast.splat408
  %i.xn = fadd reassoc nsz arcp contract afn <8 x float> %i.xm, %broadcast.splat410
  %i.xo = fmul reassoc nsz arcp contract afn <8 x float> %i.xn, %i.xl
  %i.xp = fadd reassoc nsz arcp contract afn <8 x float> %i.xo, %broadcast.splat412
  %i.xq = fmul reassoc nsz arcp contract afn <8 x float> %i.xp, %i.xl
  %i.xr = fadd reassoc nsz arcp contract afn <8 x float> %i.xq, splat (float 1.000000e+00)
  %i.xs = fmul reassoc nsz arcp contract afn <8 x float> %i.xr, %broadcast.splat406
  %wide.masked.gather = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %broadcast.splat414, <8 x i1> %i.xj, <8 x float> poison), !tbaa !182, !alias.scope !414
  %i.xt = fadd reassoc nsz arcp contract afn <8 x float> %i.xs, splat (float -1.000000e+00)
  %i.xu = fmul reassoc nsz arcp contract afn <8 x float> %wide.masked.gather, %i.xt
  %i.xv = fadd reassoc nsz arcp contract afn <8 x float> %i.xu, splat (float 1.000000e+00)
  %predphi = select i1 %.not368.i.i, <8 x float> %i.xv, <8 x float> splat (float 1.000000e+00) ; 6 uses
  store <8 x float> %predphi, ptr %i.ws, align 4, !tbaa !21, !alias.scope !413, !noalias !414
  store <8 x float> %predphi, ptr %i.wt, align 4, !tbaa !21, !alias.scope !413, !noalias !414
  store <8 x float> %predphi, ptr %i.km, align 4, !tbaa !21, !alias.scope !413, !noalias !414
  %i.xw = select i1 %.not369.i.i, <8 x i1> <i1 false, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true>, <8 x i1> zeroinitializer ; 4 uses
  %i.xx = fmul reassoc nsz arcp contract afn <8 x float> %predphi, <float 0.000000e+00, float f0x3D888889, float f0x3E088889, float f0x3E4CCCCE, float f0x3E888889, float f0x3EAAAAAB, float f0x3ECCCCCE, float f0x3EEEEEF0> ; 4 uses
  %i.xy = fmul reassoc nsz arcp contract afn <8 x float> %i.xx, %i.xx ; 4 uses
  %wide.masked.gather415 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %broadcast.splat402, <8 x i1> %i.xw, <8 x float> poison), !tbaa !408, !alias.scope !414
  %i.xz = fmul reassoc nsz arcp contract afn <8 x float> %i.xy, %broadcast.splat394
  %i.ya = fadd reassoc nsz arcp contract afn <8 x float> %i.xz, %broadcast.splat392
  %i.yb = fmul reassoc nsz arcp contract afn <8 x float> %i.ya, %i.xy
  %i.yc = fadd reassoc nsz arcp contract afn <8 x float> %i.yb, %broadcast.splat390
  %i.yd = fmul reassoc nsz arcp contract afn <8 x float> %i.yc, %i.xx
  %i.ye = fmul reassoc nsz arcp contract afn <8 x float> %i.yd, %wide.masked.gather415
  %i.yf = fdiv reassoc nsz arcp contract afn <8 x float> %i.ye, <float 0.000000e+00, float f0x3D888889, float f0x3E088889, float f0x3E4CCCCE, float f0x3E888889, float f0x3EAAAAAB, float f0x3ECCCCCE, float f0x3EEEEEF0>
  %i.yg = fadd reassoc nsz arcp contract afn <8 x float> %i.yf, %predphi
  tail call void @llvm.masked.store.v8f32.p0(<8 x float> %i.yg, ptr align 4 %i.km, <8 x i1> %i.xw), !tbaa !21, !alias.scope !413, !noalias !414
  %wide.masked.gather416 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %broadcast.splat404, <8 x i1> %i.xw, <8 x float> poison), !tbaa !409, !alias.scope !414
  %i.yh = fmul reassoc nsz arcp contract afn <8 x float> %i.xy, %broadcast.splat400
  %i.yi = fadd reassoc nsz arcp contract afn <8 x float> %i.yh, %broadcast.splat398
  %i.yj = fmul reassoc nsz arcp contract afn <8 x float> %i.yi, %i.xy
  %i.yk = fadd reassoc nsz arcp contract afn <8 x float> %i.yj, %broadcast.splat396
  %i.yl = fmul reassoc nsz arcp contract afn <8 x float> %i.yk, %i.xx
  %i.ym = fmul reassoc nsz arcp contract afn <8 x float> %i.yl, %wide.masked.gather416
  %i.yn = fdiv reassoc nsz arcp contract afn <8 x float> %i.ym, <float 0.000000e+00, float f0x3D888889, float f0x3E088889, float f0x3E4CCCCE, float f0x3E888889, float f0x3EAAAAAB, float f0x3ECCCCCE, float f0x3EEEEEF0>
  %i.yo = fadd reassoc nsz arcp contract afn <8 x float> %i.yn, %predphi
  tail call void @llvm.masked.store.v8f32.p0(<8 x float> %i.yo, ptr align 4 %i.ws, <8 x i1> %i.xw), !tbaa !21, !alias.scope !413, !noalias !414
  store <8 x float> splat (float 1.000000e+00), ptr %i.kn, align 4, !tbaa !21, !alias.scope !413, !noalias !414
  %i.yp = getelementptr inbounds nuw i8, ptr %i.ee, i64 204
  store <8 x float> <float f0x3F088889, float 6.000000e-01, float f0x3F2AAAAB, float f0x3F3BBBBC, float f0x3F4CCCCE, float f0x3F5DDDDF, float f0x3F6EEEF0, float 1.000000e+00>, ptr %i.yp, align 4, !tbaa !21, !alias.scope !413, !noalias !414
  %i.yq = getelementptr i8, ptr %i.ee, i64 140
  store <8 x float> <float f0x3F088889, float 6.000000e-01, float f0x3F2AAAAB, float f0x3F3BBBBC, float f0x3F4CCCCE, float f0x3F5DDDDF, float f0x3F6EEEF0, float 1.000000e+00>, ptr %i.yq, align 4, !tbaa !21, !alias.scope !413, !noalias !414
  %i.yr = fmul reassoc nsz arcp contract afn <8 x float> %broadcast.splat406, <float f0x3F088889, float 6.000000e-01, float f0x3F2AAAAB, float f0x3F3BBBBC, float f0x3F4CCCCE, float f0x3F5DDDDF, float f0x3F6EEEF0, float 1.000000e+00> ; 2 uses
  %i.ys = fmul reassoc nsz arcp contract afn <8 x float> %i.yr, %i.yr ; 3 uses
  %i.yt = fmul reassoc nsz arcp contract afn <8 x float> %i.ys, %broadcast.splat408
  %i.yu = fadd reassoc nsz arcp contract afn <8 x float> %i.yt, %broadcast.splat410
  %i.yv = fmul reassoc nsz arcp contract afn <8 x float> %i.yu, %i.ys
  %i.yw = fadd reassoc nsz arcp contract afn <8 x float> %i.yv, %broadcast.splat412
  %i.yx = fmul reassoc nsz arcp contract afn <8 x float> %i.yw, %i.ys
  %i.yy = fadd reassoc nsz arcp contract afn <8 x float> %i.yx, splat (float 1.000000e+00)
  %i.yz = fmul reassoc nsz arcp contract afn <8 x float> %i.yy, %broadcast.splat406
  %wide.masked.gather.1 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %broadcast.splat414, <8 x i1> %i.xj, <8 x float> poison), !tbaa !182, !alias.scope !414
  %i.za = fadd reassoc nsz arcp contract afn <8 x float> %i.yz, splat (float -1.000000e+00)
  %i.zb = fmul reassoc nsz arcp contract afn <8 x float> %wide.masked.gather.1, %i.za
  %i.zc = fadd reassoc nsz arcp contract afn <8 x float> %i.zb, splat (float 1.000000e+00)
  %predphi.1 = select i1 %.not368.i.i, <8 x float> %i.zc, <8 x float> splat (float 1.000000e+00) ; 6 uses
  %i.zd = getelementptr i8, ptr %i.ee, i64 396    ; 2 uses
  store <8 x float> %predphi.1, ptr %i.zd, align 4, !tbaa !21, !alias.scope !413, !noalias !414
  %i.ze = getelementptr inbounds nuw i8, ptr %i.ee, i64 332
  store <8 x float> %predphi.1, ptr %i.ze, align 4, !tbaa !21, !alias.scope !413, !noalias !414
  %i.zf = getelementptr i8, ptr %i.ee, i64 268    ; 2 uses
  store <8 x float> %predphi.1, ptr %i.zf, align 4, !tbaa !21, !alias.scope !413, !noalias !414
  %i.zg = select i1 %.not369.i.i, <8 x i1> splat (i1 true), <8 x i1> zeroinitializer ; 4 uses
  %i.zh = fmul reassoc nsz arcp contract afn <8 x float> %predphi.1, <float f0x3F088889, float 6.000000e-01, float f0x3F2AAAAB, float f0x3F3BBBBC, float f0x3F4CCCCE, float f0x3F5DDDDF, float f0x3F6EEEF0, float 1.000000e+00> ; 4 uses
  %i.zi = fmul reassoc nsz arcp contract afn <8 x float> %i.zh, %i.zh ; 4 uses
  %wide.masked.gather415.1 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %broadcast.splat402, <8 x i1> %i.zg, <8 x float> poison), !tbaa !408, !alias.scope !414
  %i.zj = fmul reassoc nsz arcp contract afn <8 x float> %i.zi, %broadcast.splat394
  %i.zk = fadd reassoc nsz arcp contract afn <8 x float> %i.zj, %broadcast.splat392
  %i.zl = fmul reassoc nsz arcp contract afn <8 x float> %i.zk, %i.zi
  %i.zm = fadd reassoc nsz arcp contract afn <8 x float> %i.zl, %broadcast.splat390
  %i.zn = fmul reassoc nsz arcp contract afn <8 x float> %i.zm, %i.zh
  %i.zo = fmul reassoc nsz arcp contract afn <8 x float> %i.zn, %wide.masked.gather415.1
  %i.zp = fmul reassoc nsz arcp contract afn <8 x float> %i.zo, <float f0x3FEFFFFF, float f0x3FD55555, float 1.500000e+00, float f0x3FAE8BA3, float f0x3F9FFFFF, float f0x3F93B13A, float f0x3F892492, float 1.000000e+00>
  %i.zq = fadd reassoc nsz arcp contract afn <8 x float> %i.zp, %predphi.1
  tail call void @llvm.masked.store.v8f32.p0(<8 x float> %i.zq, ptr align 4 %i.zf, <8 x i1> %i.zg), !tbaa !21, !alias.scope !413, !noalias !414
  %wide.masked.gather416.1 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %broadcast.splat404, <8 x i1> %i.zg, <8 x float> poison), !tbaa !409, !alias.scope !414
  %i.zr = fmul reassoc nsz arcp contract afn <8 x float> %i.zi, %broadcast.splat400
  %i.zs = fadd reassoc nsz arcp contract afn <8 x float> %i.zr, %broadcast.splat398
  %i.zt = fmul reassoc nsz arcp contract afn <8 x float> %i.zs, %i.zi
  %i.zu = fadd reassoc nsz arcp contract afn <8 x float> %i.zt, %broadcast.splat396
  %i.zv = fmul reassoc nsz arcp contract afn <8 x float> %i.zu, %i.zh
  %i.zw = fmul reassoc nsz arcp contract afn <8 x float> %i.zv, %wide.masked.gather416.1
  %i.zx = fmul reassoc nsz arcp contract afn <8 x float> %i.zw, <float f0x3FEFFFFF, float f0x3FD55555, float 1.500000e+00, float f0x3FAE8BA3, float f0x3F9FFFFF, float f0x3F93B13A, float f0x3F892492, float 1.000000e+00>
  %i.zy = fadd reassoc nsz arcp contract afn <8 x float> %i.zx, %predphi.1
  tail call void @llvm.masked.store.v8f32.p0(<8 x float> %i.zy, ptr align 4 %i.zd, <8 x i1> %i.zg), !tbaa !21, !alias.scope !413, !noalias !414
  %i.zz = getelementptr inbounds nuw i8, ptr %i.ee, i64 460
  store <8 x float> splat (float 1.000000e+00), ptr %i.zz, align 4, !tbaa !21, !alias.scope !413, !noalias !414
  br label %.loopexit.i.i

scalar.ph:                                        ; preds = %scalar.ph.preheader, %.critedge400.i.i
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %.critedge400.i.i ], [ 0, %scalar.ph.preheader ] ; 8 uses
  %i.aaa = trunc nuw nsw i64 %indvars.iv.i.i to i32
  %i.aab = uitofp nsz nneg i32 %i.aaa to float
  %i.aac = fmul reassoc nnan nsz arcp contract afn float %i.aab, f0x3D888889 ; 7 uses
  %i.aad = getelementptr inbounds nuw [4 x i8], ptr %i.kl, i64 %indvars.iv.i.i
  store float %i.aac, ptr %i.aad, align 4, !tbaa !21
  %i.aae = getelementptr inbounds nuw [4 x i8], ptr %i.kk, i64 %indvars.iv.i.i
  store float %i.aac, ptr %i.aae, align 4, !tbaa !21
  br i1 %.not368.i.i, label %bb.cd, label %.critedge399.i.i

bb.cd:                                            ; preds = %scalar.ph
  %i.aaf = fmul reassoc nsz arcp contract afn float %i.aac, %i.xa ; 2 uses
  %square.i.i = fmul reassoc nsz arcp contract afn float %i.aaf, %i.aaf ; 3 uses
  %i.aag = fmul reassoc nsz arcp contract afn float %square.i.i, %i.xb
  %i.aah = fadd reassoc nsz arcp contract afn float %i.aag, %i.xc
  %i.aai = fmul reassoc nsz arcp contract afn float %i.aah, %square.i.i
  %i.aaj = fadd reassoc nsz arcp contract afn float %i.aai, %i.xd
  %i.aak = fmul reassoc nsz arcp contract afn float %i.aaj, %square.i.i
  %i.aal = fadd reassoc nsz arcp contract afn float %i.aak, 1.000000e+00
  %i.aam = fmul reassoc nsz arcp contract afn float %i.aal, %i.xa
  %i.aan = load float, ptr %i.el, align 4, !tbaa !182
  %i.aao = fadd reassoc nsz arcp contract afn float %i.aam, -1.000000e+00
  %i.aap = fmul reassoc nsz arcp contract afn float %i.aan, %i.aao
  %i.aaq = fadd reassoc nsz arcp contract afn float %i.aap, 1.000000e+00
  br label %.critedge399.i.i

.critedge399.i.i:                                 ; preds = %bb.cd, %scalar.ph
  %.sink669.i.i = phi float [ %i.aaq, %bb.cd ], [ 1.000000e+00, %scalar.ph ] ; 6 uses
  %i.aar = getelementptr inbounds nuw [4 x i8], ptr %i.ws, i64 %indvars.iv.i.i ; 2 uses
  store float %.sink669.i.i, ptr %i.aar, align 4, !tbaa !21
  %i.aas = getelementptr inbounds nuw [4 x i8], ptr %i.wt, i64 %indvars.iv.i.i
  store float %.sink669.i.i, ptr %i.aas, align 4, !tbaa !21
  %i.aat = getelementptr inbounds nuw [4 x i8], ptr %i.km, i64 %indvars.iv.i.i ; 2 uses
  store float %.sink669.i.i, ptr %i.aat, align 4, !tbaa !21
  %i.aau = fcmp reassoc nsz arcp contract afn ogt float %i.aac, 0.000000e+00
  %or.cond.i.i = select i1 %.not369.i.i, i1 %i.aau, i1 false
  br i1 %or.cond.i.i, label %bb.ce, label %.critedge400.i.i

bb.ce:                                            ; preds = %.critedge399.i.i
  %i.aav = fmul reassoc nsz arcp contract afn float %.sink669.i.i, %i.aac ; 4 uses
  %square370.i.i = fmul reassoc nsz arcp contract afn float %i.aav, %i.aav ; 4 uses
  %i.aaw = load float, ptr %i.wu, align 4, !tbaa !408
  %i.aax = fmul reassoc nsz arcp contract afn float %square370.i.i, %8
  %i.aay = fadd reassoc nsz arcp contract afn float %i.aax, %9
  %i.aaz = fmul reassoc nsz arcp contract afn float %i.aay, %square370.i.i
  %i.aba = fadd reassoc nsz arcp contract afn float %i.aaz, %i.xe
  %i.abb = fmul reassoc nsz arcp contract afn float %i.aba, %i.aav
  %i.abc = fmul reassoc nsz arcp contract afn float %i.abb, %i.aaw
  %i.abd = fdiv reassoc nsz arcp contract afn float %i.abc, %i.aac
  %i.abe = fadd reassoc nsz arcp contract afn float %i.abd, %.sink669.i.i
  store float %i.abe, ptr %i.aat, align 4, !tbaa !21
  %i.abf = load float, ptr %i.wv, align 4, !tbaa !409
  %i.abg = fmul reassoc nsz arcp contract afn float %square370.i.i, %i.xf
  %i.abh = fadd reassoc nsz arcp contract afn float %i.abg, %i.xg
  %i.abi = fmul reassoc nsz arcp contract afn float %i.abh, %square370.i.i
  %i.abj = fadd reassoc nsz arcp contract afn float %i.abi, %i.xh
  %i.abk = fmul reassoc nsz arcp contract afn float %i.abj, %i.aav
  %i.abl = fmul reassoc nsz arcp contract afn float %i.abk, %i.abf
  %i.abm = fdiv reassoc nsz arcp contract afn float %i.abl, %i.aac
  %i.abn = fadd reassoc nsz arcp contract afn float %i.abm, %.sink669.i.i
  store float %i.abn, ptr %i.aar, align 4, !tbaa !21
  br label %.critedge400.i.i

.critedge400.i.i:                                 ; preds = %bb.ce, %.critedge399.i.i
  %i.abo = getelementptr inbounds nuw [4 x i8], ptr %i.kn, i64 %indvars.iv.i.i
  store float 1.000000e+00, ptr %i.abo, align 4, !tbaa !21
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i56.i = icmp eq i64 %indvars.iv.next.i.i, 16
  br i1 %exitcond.not.i56.i, label %.loopexit.i.i, label %scalar.ph, !llvm.loop !389

.loopexit.i.i:                                    ; preds = %.critedge400.i.i, %bb.by, %.critedge392.sink.split.i.i, %vector.body, %middle.block465, %bb.bg, %bb.ax, %bb.aw
  %.0327.i.i = phi i32 [ 0, %bb.aw ], [ 16, %bb.bg ], [ %i.kz, %bb.ax ], [ 16, %vector.body ], [ %i.kz, %middle.block465 ], [ 16, %bb.by ], [ %i.kz, %.critedge392.sink.split.i.i ], [ 16, %.critedge400.i.i ] ; 6 uses
  %i.abp = getelementptr inbounds nuw i8, ptr %i.eh, i64 1508
  %i.abq = load <2 x i32>, ptr %i.abp, align 4, !tbaa !24
  %i.abr = sitofp reassoc nsz arcp contract afn <2 x i32> %i.abq to <2 x float>
  %i.abs = fmul reassoc nnan nsz arcp contract afn <2 x float> %i.abr, splat (float 5.000000e-01) ; 2 uses
  %i.abt = extractelement <2 x float> %i.abs, i64 0 ; 3 uses
  %i.abu = extractelement <2 x float> %i.abs, i64 1 ; 3 uses
  %i.abv = tail call reassoc nsz arcp contract afn noundef float @hypotf(float noundef %i.abt, float noundef %i.abu) #32
  %i.abw = fcmp reassoc nsz arcp contract afn olt float %i.abt, %i.abu
  %i.abx = select reassoc nsz arcp contract afn i1 %i.abw, float %i.abt, float %i.abu
  %i.aby = fdiv reassoc nsz arcp contract afn float %i.abx, %i.abv ; 2 uses
  %i.abz = fmul reassoc nsz arcp contract afn float %i.aby, f0x3BA4A9CF
  %i.aca = fsub reassoc nsz arcp contract afn float f0x3BA4A9CF, %i.abz
  %i.acb = load float, ptr %i.kk, align 4, !tbaa !21
  %i.acc = icmp sgt i32 %.0327.i.i, 1
  %wide.trip.count.i425.i.i = zext i32 %.0327.i.i to i64 ; 6 uses
  %i.acd = sext i32 %.0327.i.i to i64             ; 3 uses
  %invariant.gep491.i.i = getelementptr [4 x i8], ptr %i.km, i64 %i.acd ; 3 uses
  %i.ace = getelementptr i8, ptr %invariant.gep491.i.i, i64 -4 ; 2 uses
  %i.acf = getelementptr i8, ptr %invariant.gep491.i.i, i64 60
  %i.acg = getelementptr i8, ptr %invariant.gep491.i.i, i64 124
  %i.ach = getelementptr inbounds nuw i8, ptr %i.ee, i64 300 ; 4 uses
  %i.aci = getelementptr [4 x i8], ptr %i.ach, i64 %i.acd
  %i.acj = getelementptr i8, ptr %i.aci, i64 -4
  %i.ack = getelementptr inbounds nuw i8, ptr %i.ee, i64 364 ; 4 uses
  %i.acl = getelementptr [4 x i8], ptr %i.ack, i64 %i.acd
  %i.acm = getelementptr i8, ptr %i.acl, i64 -4
  br label %.preheader434.i.i

.preheader434.i.i:                                ; preds = %.split484.us.i.i, %.loopexit.i.i
  %.0329494.int.i.i = phi i32 [ 0, %.loopexit.i.i ], [ %.int.i59.i, %.split484.us.i.i ] ; 2 uses
  %.0330493.i.i = phi float [ 0.000000e+00, %.loopexit.i.i ], [ %.us-phi.i58.i, %.split484.us.i.i ] ; 6 uses
  %indvar.conv.i57.i = uitofp nneg i32 %.0329494.int.i.i to float
  %i.acn = fmul reassoc nsz arcp contract afn float %i.aca, %indvar.conv.i57.i
  %i.aco = fadd reassoc nsz arcp contract afn float %i.acn, %i.aby ; 10 uses
  %i.acp = fcmp reassoc nsz arcp contract afn olt float %i.aco, %i.acb
  br i1 %i.acp, label %_ZL26_interpolate_linear_splinePKfS0_if.exit430.us.preheader.i.i, label %.preheader434.split.i.i

_ZL26_interpolate_linear_splinePKfS0_if.exit430.us.preheader.i.i: ; preds = %.preheader434.i.i
  %i.acq = load float, ptr %i.km, align 4, !tbaa !21 ; 2 uses
  %i.acr = fcmp reassoc nsz arcp contract afn ogt float %.0330493.i.i, %i.acq
  %i.acs = select reassoc nsz arcp contract afn i1 %i.acr, float %.0330493.i.i, float %i.acq ; 2 uses
  %i.act = load float, ptr %i.ach, align 4, !tbaa !21 ; 2 uses
  %i.acu = fcmp reassoc nsz arcp contract afn ogt float %i.acs, %i.act
  %i.acv = select reassoc nsz arcp contract afn i1 %i.acu, float %i.acs, float %i.act ; 2 uses
  %i.acw = load float, ptr %i.ack, align 4, !tbaa !21 ; 2 uses
  %i.acx = fcmp reassoc nsz arcp contract afn ogt float %i.acv, %i.acw
  %i.acy = select reassoc nsz arcp contract afn i1 %i.acx, float %i.acv, float %i.acw
  br label %.split484.us.i.i

.preheader434.split.i.i:                          ; preds = %.preheader434.i.i
  br i1 %i.acc, label %.lr.ph.i426.us.i.i, label %.preheader.i421.preheader.i.i

.preheader.i421.preheader.i.i:                    ; preds = %.preheader434.split.i.i
  %i.acz = load float, ptr %i.ace, align 4, !tbaa !21 ; 2 uses
  %i.ada = fcmp reassoc nsz arcp contract afn ogt float %.0330493.i.i, %i.acz
  %i.adb = select reassoc nsz arcp contract afn i1 %i.ada, float %.0330493.i.i, float %i.acz ; 2 uses
  %i.adc = load float, ptr %i.acf, align 4, !tbaa !21 ; 2 uses
  %i.add = fcmp reassoc nsz arcp contract afn ogt float %i.adb, %i.adc
  %i.ade = select reassoc nsz arcp contract afn i1 %i.add, float %i.adb, float %i.adc ; 2 uses
  %i.adf = load float, ptr %i.acg, align 4, !tbaa !21 ; 2 uses
  %i.adg = fcmp reassoc nsz arcp contract afn ogt float %i.ade, %i.adf
  %i.adh = select reassoc nsz arcp contract afn i1 %i.adg, float %i.ade, float %i.adf
  br label %.split484.us.i.i

.lr.ph.i426.us.i.i:                               ; preds = %.preheader434.split.i.i, %bb.cg
  %indvars.iv.i427.us.i.i = phi i64 [ %indvars.iv.next.i428.us.i.i, %bb.cg ], [ 1, %.preheader434.split.i.i ] ; 4 uses
  %i.adi = add nsw i64 %indvars.iv.i427.us.i.i, -1 ; 2 uses
  %i.adj = getelementptr inbounds [4 x i8], ptr %i.kk, i64 %i.adi
  %i.adk = load float, ptr %i.adj, align 4, !tbaa !21 ; 3 uses
  %i.adl = fcmp reassoc nsz arcp contract afn ult float %i.aco, %i.adk
  br i1 %i.adl, label %bb.cg, label %bb.cf

bb.cf:                                            ; preds = %.lr.ph.i426.us.i.i
  %i.adm = getelementptr inbounds nuw [4 x i8], ptr %i.kk, i64 %indvars.iv.i427.us.i.i
  %i.adn = load float, ptr %i.adm, align 4, !tbaa !21 ; 2 uses
  %i.ado = fcmp reassoc nsz arcp contract afn ugt float %i.aco, %i.adn
  br i1 %i.ado, label %bb.cg, label %bb.ch

bb.cg:                                            ; preds = %bb.cf, %.lr.ph.i426.us.i.i
  %indvars.iv.next.i428.us.i.i = add nuw nsw i64 %indvars.iv.i427.us.i.i, 1 ; 2 uses
  %exitcond.not.i429.us.i.i = icmp eq i64 %indvars.iv.next.i428.us.i.i, %wide.trip.count.i425.i.i
  br i1 %exitcond.not.i429.us.i.i, label %._crit_edge.i422.loopexit.us.i.i, label %.lr.ph.i426.us.i.i, !llvm.loop !0

bb.ch:                                            ; preds = %bb.cf
  %i.adp = getelementptr inbounds nuw [4 x i8], ptr %i.km, i64 %indvars.iv.i427.us.i.i
  %i.adq = load float, ptr %i.adp, align 4, !tbaa !21
  %i.adr = getelementptr inbounds [4 x i8], ptr %i.km, i64 %i.adi
  %i.ads = load float, ptr %i.adr, align 4, !tbaa !21 ; 2 uses
  %i.adt = fsub reassoc nsz arcp contract afn float %i.adq, %i.ads
  %i.adu = fsub reassoc nsz arcp contract afn float %i.adn, %i.adk
  %i.adv = fsub reassoc nsz arcp contract afn float %i.aco, %i.adk
  %i.adw = fmul reassoc nsz arcp contract afn float %i.adt, %i.adv
  %i.adx = fdiv reassoc nsz arcp contract afn float %i.adw, %i.adu
  %i.ady = fadd reassoc nsz arcp contract afn float %i.adx, %i.ads
  br label %_ZL26_interpolate_linear_splinePKfS0_if.exit430.us487.i.i

._crit_edge.i422.loopexit.us.i.i:                 ; preds = %bb.cg
  %i.adz = load float, ptr %i.ace, align 4, !tbaa !21
  br label %_ZL26_interpolate_linear_splinePKfS0_if.exit430.us487.i.i

_ZL26_interpolate_linear_splinePKfS0_if.exit430.us487.i.i: ; preds = %._crit_edge.i422.loopexit.us.i.i, %bb.ch
  %.1.i423.us488.i.i = phi nsz float [ %i.ady, %bb.ch ], [ %i.adz, %._crit_edge.i422.loopexit.us.i.i ] ; 2 uses
  %i.aea = fcmp reassoc nsz arcp contract afn ogt float %.0330493.i.i, %.1.i423.us488.i.i
  %i.aeb = select reassoc nsz arcp contract afn i1 %i.aea, float %.0330493.i.i, float %.1.i423.us488.i.i ; 2 uses
  br label %.lr.ph.i426.us.1.i.i

.lr.ph.i426.us.1.i.i:                             ; preds = %bb.ck, %_ZL26_interpolate_linear_splinePKfS0_if.exit430.us487.i.i
  %indvars.iv.i427.us.1.i.i = phi i64 [ 1, %_ZL26_interpolate_linear_splinePKfS0_if.exit430.us487.i.i ], [ %indvars.iv.next.i428.us.1.i.i, %bb.ck ] ; 4 uses
  %i.aec = add nsw i64 %indvars.iv.i427.us.1.i.i, -1 ; 2 uses
  %i.aed = getelementptr inbounds [4 x i8], ptr %i.kk, i64 %i.aec
  %i.aee = load float, ptr %i.aed, align 4, !tbaa !21 ; 3 uses
  %i.aef = fcmp reassoc nsz arcp contract afn ult float %i.aco, %i.aee
  br i1 %i.aef, label %bb.ck, label %bb.ci

bb.ci:                                            ; preds = %.lr.ph.i426.us.1.i.i
  %i.aeg = getelementptr inbounds nuw [4 x i8], ptr %i.kk, i64 %indvars.iv.i427.us.1.i.i
  %i.aeh = load float, ptr %i.aeg, align 4, !tbaa !21 ; 2 uses
  %i.aei = fcmp reassoc nsz arcp contract afn ugt float %i.aco, %i.aeh
  br i1 %i.aei, label %bb.ck, label %bb.cj

bb.cj:                                            ; preds = %bb.ci
  %i.aej = getelementptr inbounds nuw [4 x i8], ptr %i.ach, i64 %indvars.iv.i427.us.1.i.i
  %i.aek = load float, ptr %i.aej, align 4, !tbaa !21
  %i.ael = getelementptr inbounds [4 x i8], ptr %i.ach, i64 %i.aec
  %i.aem = load float, ptr %i.ael, align 4, !tbaa !21 ; 2 uses
  %i.aen = fsub reassoc nsz arcp contract afn float %i.aek, %i.aem
  %i.aeo = fsub reassoc nsz arcp contract afn float %i.aeh, %i.aee
  %i.aep = fsub reassoc nsz arcp contract afn float %i.aco, %i.aee
  %i.aeq = fmul reassoc nsz arcp contract afn float %i.aen, %i.aep
  %i.aer = fdiv reassoc nsz arcp contract afn float %i.aeq, %i.aeo
  %i.aes = fadd reassoc nsz arcp contract afn float %i.aer, %i.aem
  br label %_ZL26_interpolate_linear_splinePKfS0_if.exit430.us487.1.i.i

bb.ck:                                            ; preds = %bb.ci, %.lr.ph.i426.us.1.i.i
  %indvars.iv.next.i428.us.1.i.i = add nuw nsw i64 %indvars.iv.i427.us.1.i.i, 1 ; 2 uses
  %exitcond.not.i429.us.1.i.i = icmp eq i64 %indvars.iv.next.i428.us.1.i.i, %wide.trip.count.i425.i.i
  br i1 %exitcond.not.i429.us.1.i.i, label %._crit_edge.i422.loopexit.us.1.i.i, label %.lr.ph.i426.us.1.i.i, !llvm.loop !0

._crit_edge.i422.loopexit.us.1.i.i:               ; preds = %bb.ck
  %i.aet = load float, ptr %i.acj, align 4, !tbaa !21
  br label %_ZL26_interpolate_linear_splinePKfS0_if.exit430.us487.1.i.i

_ZL26_interpolate_linear_splinePKfS0_if.exit430.us487.1.i.i: ; preds = %._crit_edge.i422.loopexit.us.1.i.i, %bb.cj
  %.1.i423.us488.1.i.i = phi nsz float [ %i.aes, %bb.cj ], [ %i.aet, %._crit_edge.i422.loopexit.us.1.i.i ] ; 2 uses
  %i.aeu = fcmp reassoc nsz arcp contract afn ogt float %i.aeb, %.1.i423.us488.1.i.i
  %i.aev = select reassoc nsz arcp contract afn i1 %i.aeu, float %i.aeb, float %.1.i423.us488.1.i.i ; 2 uses
  br label %.lr.ph.i426.us.2.i.i

.lr.ph.i426.us.2.i.i:                             ; preds = %bb.cn, %_ZL26_interpolate_linear_splinePKfS0_if.exit430.us487.1.i.i
  %indvars.iv.i427.us.2.i.i = phi i64 [ 1, %_ZL26_interpolate_linear_splinePKfS0_if.exit430.us487.1.i.i ], [ %indvars.iv.next.i428.us.2.i.i, %bb.cn ] ; 4 uses
  %i.aew = add nsw i64 %indvars.iv.i427.us.2.i.i, -1 ; 2 uses
  %i.aex = getelementptr inbounds [4 x i8], ptr %i.kk, i64 %i.aew
  %i.aey = load float, ptr %i.aex, align 4, !tbaa !21 ; 3 uses
  %i.aez = fcmp reassoc nsz arcp contract afn ult float %i.aco, %i.aey
  br i1 %i.aez, label %bb.cn, label %bb.cl

bb.cl:                                            ; preds = %.lr.ph.i426.us.2.i.i
  %i.afa = getelementptr inbounds nuw [4 x i8], ptr %i.kk, i64 %indvars.iv.i427.us.2.i.i
  %i.afb = load float, ptr %i.afa, align 4, !tbaa !21 ; 2 uses
  %i.afc = fcmp reassoc nsz arcp contract afn ugt float %i.aco, %i.afb
  br i1 %i.afc, label %bb.cn, label %bb.cm

bb.cm:                                            ; preds = %bb.cl
  %i.afd = getelementptr inbounds nuw [4 x i8], ptr %i.ack, i64 %indvars.iv.i427.us.2.i.i
  %i.afe = load float, ptr %i.afd, align 4, !tbaa !21
  %i.aff = getelementptr inbounds [4 x i8], ptr %i.ack, i64 %i.aew
  %i.afg = load float, ptr %i.aff, align 4, !tbaa !21 ; 2 uses
  %i.afh = fsub reassoc nsz arcp contract afn float %i.afe, %i.afg
  %i.afi = fsub reassoc nsz arcp contract afn float %i.afb, %i.aey
  %i.afj = fsub reassoc nsz arcp contract afn float %i.aco, %i.aey
  %i.afk = fmul reassoc nsz arcp contract afn float %i.afh, %i.afj
  %i.afl = fdiv reassoc nsz arcp contract afn float %i.afk, %i.afi
  %i.afm = fadd reassoc nsz arcp contract afn float %i.afl, %i.afg
  br label %_ZL26_interpolate_linear_splinePKfS0_if.exit430.us487.2.i.i

bb.cn:                                            ; preds = %bb.cl, %.lr.ph.i426.us.2.i.i
  %indvars.iv.next.i428.us.2.i.i = add nuw nsw i64 %indvars.iv.i427.us.2.i.i, 1 ; 2 uses
  %exitcond.not.i429.us.2.i.i = icmp eq i64 %indvars.iv.next.i428.us.2.i.i, %wide.trip.count.i425.i.i
  br i1 %exitcond.not.i429.us.2.i.i, label %._crit_edge.i422.loopexit.us.2.i.i, label %.lr.ph.i426.us.2.i.i, !llvm.loop !0

._crit_edge.i422.loopexit.us.2.i.i:               ; preds = %bb.cn
  %i.afn = load float, ptr %i.acm, align 4, !tbaa !21
end_hunk_1
