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
  %i.eh = load ptr, ptr %i.w, align 8, !tbaa !126 ; 30 uses
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
  %i.hw = fadd reassoc nsz arcp contract afn float %i.hv, %i.hq
  br label %_ZL26_interpolate_linear_splinePKfS0_if.exit.1.i.i

bb.al:                                            ; preds = %bb.aj, %.lr.ph.i.1.i.i
  %indvars.iv.next.i.1.i.i = add nuw nsw i64 %indvars.iv.i.1.i.i, 1 ; 2 uses
  %exitcond.not.i.1.i.i = icmp eq i64 %indvars.iv.next.i.1.i.i, %wide.trip.count.i.i.i
  br i1 %exitcond.not.i.1.i.i, label %._crit_edge.i.1.i.i, label %.lr.ph.i.1.i.i, !llvm.loop !0

._crit_edge.i.1.i.i:                              ; preds = %bb.al, %_ZL26_interpolate_linear_splinePKfS0_if.exit29.i.i
  %i.hx = load float, ptr %i.fg, align 4, !tbaa !21
  br label %_ZL26_interpolate_linear_splinePKfS0_if.exit.1.i.i

_ZL26_interpolate_linear_splinePKfS0_if.exit.1.i.i: ; preds = %._crit_edge.i.1.i.i, %bb.ak
  %.1.i.1.i.i = phi nsz float [ %i.hw, %bb.ak ], [ %i.hx, %._crit_edge.i.1.i.i ]
  %i.hy = fcmp reassoc nsz arcp contract afn ogt float %i.hf, %.1.i.1.i.i
  br i1 %i.hy, label %_ZL26_interpolate_linear_splinePKfS0_if.exit29.1.i.i, label %.preheader.i20.1.i.i

.preheader.i20.1.i.i:                             ; preds = %_ZL26_interpolate_linear_splinePKfS0_if.exit.1.i.i
  br i1 %i.fa, label %.lr.ph.i25.1.i.i, label %._crit_edge.i21.1.i.i

.lr.ph.i25.1.i.i:                                 ; preds = %.preheader.i20.1.i.i, %bb.ao
  %indvars.iv.i26.1.i.i = phi i64 [ %indvars.iv.next.i27.1.i.i, %bb.ao ], [ 1, %.preheader.i20.1.i.i ] ; 4 uses
  %i.hz = add nsw i64 %indvars.iv.i26.1.i.i, -1   ; 2 uses
  %i.ia = getelementptr inbounds [4 x i8], ptr %i.e, i64 %i.hz
  %i.ib = load float, ptr %i.ia, align 4, !tbaa !21 ; 3 uses
  %i.ic = fcmp reassoc nsz arcp contract afn ult float %i.fo, %i.ib
  br i1 %i.ic, label %bb.ao, label %bb.am

bb.am:                                            ; preds = %.lr.ph.i25.1.i.i
  %i.id = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %indvars.iv.i26.1.i.i
  %i.ie = load float, ptr %i.id, align 4, !tbaa !21 ; 2 uses
  %i.if = fcmp reassoc nsz arcp contract afn ugt float %i.fo, %i.ie
  br i1 %i.if, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.ig = getelementptr inbounds nuw [4 x i8], ptr %i.fe, i64 %indvars.iv.i26.1.i.i
  %i.ih = load float, ptr %i.ig, align 4, !tbaa !21
  %i.ii = getelementptr inbounds [4 x i8], ptr %i.fe, i64 %i.hz
  %i.ij = load float, ptr %i.ii, align 4, !tbaa !21 ; 2 uses
  %i.ik = fsub reassoc nsz arcp contract afn float %i.ih, %i.ij
  %i.il = fsub reassoc nsz arcp contract afn float %i.ie, %i.ib
  %i.im = fsub reassoc nsz arcp contract afn float %i.fo, %i.ib
  %i.in = fmul reassoc nsz arcp contract afn float %i.ik, %i.im
  %i.io = fdiv reassoc nsz arcp contract afn float %i.in, %i.il
  %i.ip = fadd reassoc nsz arcp contract afn float %i.io, %i.ij
  br label %_ZL26_interpolate_linear_splinePKfS0_if.exit29.1.i.i

bb.ao:                                            ; preds = %bb.am, %.lr.ph.i25.1.i.i
  %indvars.iv.next.i27.1.i.i = add nuw nsw i64 %indvars.iv.i26.1.i.i, 1 ; 2 uses
  %exitcond.not.i28.1.i.i = icmp eq i64 %indvars.iv.next.i27.1.i.i, %wide.trip.count.i.i.i
  br i1 %exitcond.not.i28.1.i.i, label %._crit_edge.i21.1.i.i, label %.lr.ph.i25.1.i.i, !llvm.loop !0

._crit_edge.i21.1.i.i:                            ; preds = %bb.ao, %.preheader.i20.1.i.i
  %i.iq = load float, ptr %i.fg, align 4, !tbaa !21
  br label %_ZL26_interpolate_linear_splinePKfS0_if.exit29.1.i.i

_ZL26_interpolate_linear_splinePKfS0_if.exit29.1.i.i: ; preds = %._crit_edge.i21.1.i.i, %bb.an, %_ZL26_interpolate_linear_splinePKfS0_if.exit.1.i.i
  %i.ir = phi reassoc nsz arcp contract afn float [ %i.iq, %._crit_edge.i21.1.i.i ], [ %i.hf, %_ZL26_interpolate_linear_splinePKfS0_if.exit.1.i.i ], [ %i.ip, %bb.an ] ; 2 uses
  br i1 %i.fa, label %.lr.ph.i.2.i.i, label %._crit_edge.i.2.i.i

.lr.ph.i.2.i.i:                                   ; preds = %_ZL26_interpolate_linear_splinePKfS0_if.exit29.1.i.i, %bb.ar
  %indvars.iv.i.2.i.i = phi i64 [ %indvars.iv.next.i.2.i.i, %bb.ar ], [ 1, %_ZL26_interpolate_linear_splinePKfS0_if.exit29.1.i.i ] ; 4 uses
  %i.is = add nsw i64 %indvars.iv.i.2.i.i, -1     ; 2 uses
  %i.it = getelementptr inbounds [4 x i8], ptr %i.e, i64 %i.is
  %i.iu = load float, ptr %i.it, align 4, !tbaa !21 ; 3 uses
  %i.iv = fcmp reassoc nsz arcp contract afn ult float %i.fo, %i.iu
  br i1 %i.iv, label %bb.ar, label %bb.ap

bb.ap:                                            ; preds = %.lr.ph.i.2.i.i
  %i.iw = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %indvars.iv.i.2.i.i
  %i.ix = load float, ptr %i.iw, align 4, !tbaa !21 ; 2 uses
  %i.iy = fcmp reassoc nsz arcp contract afn ugt float %i.fo, %i.ix
  br i1 %i.iy, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.iz = getelementptr inbounds nuw [4 x i8], ptr %i.fh, i64 %indvars.iv.i.2.i.i
  %i.ja = load float, ptr %i.iz, align 4, !tbaa !21
  %i.jb = getelementptr inbounds [4 x i8], ptr %i.fh, i64 %i.is
  %i.jc = load float, ptr %i.jb, align 4, !tbaa !21 ; 2 uses
  %i.jd = fsub reassoc nsz arcp contract afn float %i.ja, %i.jc
  %i.je = fsub reassoc nsz arcp contract afn float %i.ix, %i.iu
  %i.jf = fsub reassoc nsz arcp contract afn float %i.fo, %i.iu
  %i.jg = fmul reassoc nsz arcp contract afn float %i.jd, %i.jf
  %i.jh = fdiv reassoc nsz arcp contract afn float %i.jg, %i.je
  %i.ji = fadd reassoc nsz arcp contract afn float %i.jh, %i.jc
  br label %_ZL26_interpolate_linear_splinePKfS0_if.exit.2.i.i

bb.ar:                                            ; preds = %bb.ap, %.lr.ph.i.2.i.i
  %indvars.iv.next.i.2.i.i = add nuw nsw i64 %indvars.iv.i.2.i.i, 1 ; 2 uses
  %exitcond.not.i.2.i.i = icmp eq i64 %indvars.iv.next.i.2.i.i, %wide.trip.count.i.i.i
  br i1 %exitcond.not.i.2.i.i, label %._crit_edge.i.2.i.i, label %.lr.ph.i.2.i.i, !llvm.loop !0

._crit_edge.i.2.i.i:                              ; preds = %bb.ar, %_ZL26_interpolate_linear_splinePKfS0_if.exit29.1.i.i
  %i.jj = load float, ptr %i.fj, align 4, !tbaa !21
  br label %_ZL26_interpolate_linear_splinePKfS0_if.exit.2.i.i

_ZL26_interpolate_linear_splinePKfS0_if.exit.2.i.i: ; preds = %._crit_edge.i.2.i.i, %bb.aq
  %.1.i.2.i.i = phi nsz float [ %i.ji, %bb.aq ], [ %i.jj, %._crit_edge.i.2.i.i ]
  %i.jk = fcmp reassoc nsz arcp contract afn ogt float %i.ir, %.1.i.2.i.i
  br i1 %i.jk, label %.split.us.i.i, label %.preheader.i20.2.i.i

.preheader.i20.2.i.i:                             ; preds = %_ZL26_interpolate_linear_splinePKfS0_if.exit.2.i.i
  br i1 %i.fa, label %.lr.ph.i25.2.i.i, label %._crit_edge.i21.2.i.i

.lr.ph.i25.2.i.i:                                 ; preds = %.preheader.i20.2.i.i, %bb.au
  %indvars.iv.i26.2.i.i = phi i64 [ %indvars.iv.next.i27.2.i.i, %bb.au ], [ 1, %.preheader.i20.2.i.i ] ; 4 uses
  %i.jl = add nsw i64 %indvars.iv.i26.2.i.i, -1   ; 2 uses
  %i.jm = getelementptr inbounds [4 x i8], ptr %i.e, i64 %i.jl
  %i.jn = load float, ptr %i.jm, align 4, !tbaa !21 ; 3 uses
  %i.jo = fcmp reassoc nsz arcp contract afn ult float %i.fo, %i.jn
  br i1 %i.jo, label %bb.au, label %bb.as

bb.as:                                            ; preds = %.lr.ph.i25.2.i.i
  %i.jp = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %indvars.iv.i26.2.i.i
  %i.jq = load float, ptr %i.jp, align 4, !tbaa !21 ; 2 uses
  %i.jr = fcmp reassoc nsz arcp contract afn ugt float %i.fo, %i.jq
  br i1 %i.jr, label %bb.au, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.js = getelementptr inbounds nuw [4 x i8], ptr %i.fh, i64 %indvars.iv.i26.2.i.i
  %i.jt = load float, ptr %i.js, align 4, !tbaa !21
  %i.ju = getelementptr inbounds [4 x i8], ptr %i.fh, i64 %i.jl
  %i.jv = load float, ptr %i.ju, align 4, !tbaa !21 ; 2 uses
  %i.jw = fsub reassoc nsz arcp contract afn float %i.jt, %i.jv
  %i.jx = fsub reassoc nsz arcp contract afn float %i.jq, %i.jn
  %i.jy = fsub reassoc nsz arcp contract afn float %i.fo, %i.jn
  %i.jz = fmul reassoc nsz arcp contract afn float %i.jw, %i.jy
  %i.ka = fdiv reassoc nsz arcp contract afn float %i.jz, %i.jx
  %i.kb = fadd reassoc nsz arcp contract afn float %i.ka, %i.jv
  br label %.split.us.i.i

bb.au:                                            ; preds = %bb.as, %.lr.ph.i25.2.i.i
  %indvars.iv.next.i27.2.i.i = add nuw nsw i64 %indvars.iv.i26.2.i.i, 1 ; 2 uses
  %exitcond.not.i28.2.i.i = icmp eq i64 %indvars.iv.next.i27.2.i.i, %wide.trip.count.i.i.i
  br i1 %exitcond.not.i28.2.i.i, label %._crit_edge.i21.2.i.i, label %.lr.ph.i25.2.i.i, !llvm.loop !0

._crit_edge.i21.2.i.i:                            ; preds = %bb.au, %.preheader.i20.2.i.i
  %i.kc = load float, ptr %i.fj, align 4, !tbaa !21
  br label %.split.us.i.i

_ZL20_get_autoscale_md_v1P15dt_iop_module_tP20dt_iop_lens_params_t.exit.i: ; preds = %bb.ac, %bb.aa
  %.019.i.i = phi nsz float [ %.us-phi.i.i, %bb.ac ], [ 1.000000e+00, %bb.aa ] ; 2 uses
  store float %.019.i.i, ptr %i.eu, align 4, !tbaa !406
  br label %bb.av

bb.av:                                            ; preds = %_ZL20_get_autoscale_md_v1P15dt_iop_module_tP20dt_iop_lens_params_t.exit.i, %bb.z
  %i.kd = phi float [ %i.et, %bb.z ], [ %.019.i.i, %_ZL20_get_autoscale_md_v1P15dt_iop_module_tP20dt_iop_lens_params_t.exit.i ]
  %i.ke = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %i.kd
  %i.kf = getelementptr inbounds nuw i8, ptr %i.ee, i64 108
  %i.kg = getelementptr inbounds nuw i8, ptr %i.ee, i64 172
  %i.kh = getelementptr inbounds nuw i8, ptr %i.ee, i64 236
  %i.ki = getelementptr inbounds nuw i8, ptr %i.ee, i64 428
  %i.kj = call fastcc noundef i32 @_ZL18_init_coeffs_md_v1PK10dt_image_tPK20dt_iop_lens_params_tfPfS5_PA16_fS5_(ptr noundef nonnull %i.ei, ptr noundef nonnull readonly %.0, float noundef %i.ke, ptr noundef nonnull %i.kf, ptr noundef nonnull %i.kg, ptr noundef nonnull %i.kh, ptr noundef nonnull %i.ki)
  store i32 %i.kj, ptr %i.ej, align 8, !tbaa !129
  %.pre149.i = load ptr, ptr %i.w, align 8, !tbaa !126
  br label %bb.co

bb.aw:                                            ; preds = %bb.y
  %i.kk = getelementptr i8, ptr %i.ee, i64 108    ; 18 uses
  %i.kl = getelementptr inbounds nuw i8, ptr %i.ee, i64 172 ; 7 uses
  %i.km = getelementptr inbounds nuw i8, ptr %i.ee, i64 236 ; 15 uses
  %i.kn = getelementptr inbounds nuw i8, ptr %i.ee, i64 428 ; 7 uses
  %i.ko = getelementptr inbounds nuw i8, ptr %i.eh, i64 684 ; 6 uses
  switch i32 %.val.val.i39, label %.loopexit.i.i [
    i32 1, label %bb.ax
    i32 2, label %bb.bb
    i32 3, label %.preheader438.i.i
    i32 4, label %bb.bz
  ]

.preheader438.i.i:                                ; preds = %bb.aw
  %i.kp = getelementptr inbounds nuw i8, ptr %i.ee, i64 364
  %i.kq = getelementptr inbounds nuw i8, ptr %i.ee, i64 300
  %i.kr = getelementptr inbounds nuw i8, ptr %i.eh, i64 796
  %i.ks = getelementptr inbounds nuw i8, ptr %i.eh, i64 688
  %i.kt = getelementptr inbounds nuw i8, ptr %i.eh, i64 800
  %i.ku = getelementptr inbounds nuw i8, ptr %i.eh, i64 768
  %i.kv = getelementptr inbounds nuw i8, ptr %i.eh, i64 772
  %i.kw = getelementptr inbounds nuw i8, ptr %i.eh, i64 776
  %i.kx = getelementptr inbounds nuw i8, ptr %i.eh, i64 780
  %i.ky = getelementptr inbounds nuw i8, ptr %i.eh, i64 784
  br label %bb.bt

bb.ax:                                            ; preds = %bb.aw
  %i.kz = load i32, ptr %i.ko, align 4, !tbaa !25 ; 7 uses
  %i.la = icmp sgt i32 %i.kz, 0
  br i1 %i.la, label %.lr.ph480.i.i, label %.loopexit.i.i

.lr.ph480.i.i:                                    ; preds = %bb.ax
  %i.lb = add nsw i32 %i.kz, -1
  %i.lc = uitofp nneg i32 %i.lb to float          ; 2 uses
  %i.ld = getelementptr i8, ptr %i.eh, i64 688    ; 3 uses
  %i.le = getelementptr inbounds nuw i8, ptr %i.ee, i64 364 ; 2 uses
  %i.lf = getelementptr inbounds nuw i8, ptr %i.ee, i64 300 ; 2 uses
  %i.lg = getelementptr inbounds nuw i8, ptr %.0, i64 312 ; 2 uses
  %i.lh = getelementptr inbounds nuw i8, ptr %i.eh, i64 720 ; 2 uses
  %i.li = getelementptr inbounds nuw i8, ptr %.0, i64 316 ; 2 uses
  %i.lj = getelementptr inbounds nuw i8, ptr %i.eh, i64 752 ; 2 uses
  %i.lk = getelementptr inbounds nuw i8, ptr %i.eh, i64 784 ; 2 uses
  %wide.trip.count.i.i = zext nneg i32 %i.kz to i64 ; 5 uses
  %i.ll = load i32, ptr %i.t, align 4, !tbaa !164 ; 3 uses
  %i.lm = and i32 %i.ll, 4
  %.not385.i.i = icmp ne i32 %i.lm, 0             ; 3 uses
  %.not386.i.i = trunc i32 %i.ll to i1            ; 2 uses
  %i.ln = and i32 %i.ll, 2
  %.not388.i.i = icmp ne i32 %i.ln, 0             ; 3 uses
  %min.iters.check = icmp ult i32 %i.kz, 8
  br i1 %min.iters.check, label %scalar.ph427.preheader, label %vector.memcheck428

vector.memcheck428:                               ; preds = %.lr.ph480.i.i
  %i.lo = shl nuw nsw i64 %wide.trip.count.i.i, 2
  %i.lp = getelementptr i8, ptr %i.ee, i64 %i.lo
  %i.lq = getelementptr i8, ptr %i.lp, i64 428    ; 2 uses
  %i.lr = getelementptr i8, ptr %.0, i64 320
  %i.ls = shl nuw nsw i64 %wide.trip.count.i.i, 1
  %i.lt = getelementptr i8, ptr %i.eh, i64 %i.ls
  %i.lu = getelementptr i8, ptr %i.lt, i64 784
  %bound0429 = icmp ult ptr %i.kk, %i.lr
  %bound1430 = icmp ult ptr %i.el, %i.lq
  %found.conflict431 = and i1 %bound0429, %bound1430
  %bound0432 = icmp ult ptr %i.kk, %i.lu
  %bound1433 = icmp ult ptr %i.ld, %i.lq
  %found.conflict434 = and i1 %bound0432, %bound1433
  %conflict.rdx = or i1 %found.conflict431, %found.conflict434
  br i1 %conflict.rdx, label %scalar.ph427.preheader, label %vector.ph435

vector.ph435:                                     ; preds = %vector.memcheck428
  %n.vec = and i64 %wide.trip.count.i.i, 2147483640 ; 3 uses
  %i.lv = insertelement <8 x i1> poison, i1 %.not385.i.i, i64 0
  %i.lw = shufflevector <8 x i1> %i.lv, <8 x i1> poison, <8 x i32> zeroinitializer ; 2 uses
  %i.lx = insertelement <8 x i1> poison, i1 %.not386.i.i, i64 0
  %i.ly = shufflevector <8 x i1> %i.lx, <8 x i1> poison, <8 x i32> zeroinitializer ; 6 uses
  %i.lz = insertelement <8 x i1> poison, i1 %.not388.i.i, i64 0
  %i.ma = shufflevector <8 x i1> %i.lz, <8 x i1> poison, <8 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert442 = insertelement <8 x float> poison, float %i.lc, i64 0
  %broadcast.splat443 = shufflevector <8 x float> %broadcast.splatinsert442, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert444 = insertelement <8 x ptr> poison, ptr %i.lg, i64 0
  %broadcast.splat445 = shufflevector <8 x ptr> %broadcast.splatinsert444, <8 x ptr> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert446 = insertelement <8 x ptr> poison, ptr %i.li, i64 0
  %broadcast.splat447 = shufflevector <8 x ptr> %broadcast.splatinsert446, <8 x ptr> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert448 = insertelement <8 x ptr> poison, ptr %i.el, i64 0
  %broadcast.splat449 = shufflevector <8 x ptr> %broadcast.splatinsert448, <8 x ptr> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert450 = insertelement <8 x ptr> poison, ptr %i.en, i64 0
  %broadcast.splat451 = shufflevector <8 x ptr> %broadcast.splatinsert450, <8 x ptr> poison, <8 x i32> zeroinitializer
  %i.mb = fdiv reassoc nsz arcp contract afn <8 x float> splat (float 1.000000e+00), %broadcast.splat443
  %wide.masked.gather455 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %broadcast.splat449, <8 x i1> %i.lw, <8 x float> poison), !tbaa !182, !alias.scope !407
  %i.mc = fmul reassoc nsz arcp contract afn <8 x float> %wide.masked.gather455, splat (float f0x38800000)
  %wide.masked.gather457 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %broadcast.splat445, <8 x i1> %i.ly, <8 x float> poison), !tbaa !408, !alias.scope !407
  %i.md = fmul reassoc nsz arcp contract afn <8 x float> %wide.masked.gather457, splat (float f0x35000000)
  %wide.masked.gather459 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %broadcast.splat447, <8 x i1> %i.ly, <8 x float> poison), !tbaa !409, !alias.scope !407
  %i.me = fmul reassoc nsz arcp contract afn <8 x float> %wide.masked.gather459, splat (float f0x35000000)
  %wide.masked.gather461 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %broadcast.splat451, <8 x i1> %i.ma, <8 x float> poison), !tbaa !183, !alias.scope !407
  %i.mf = fmul reassoc nsz arcp contract afn <8 x float> %wide.masked.gather461, splat (float f0x39000000)
  br label %vector.body452

vector.body452:                                   ; preds = %vector.body452, %vector.ph435
  %index453 = phi i64 [ 0, %vector.ph435 ], [ %index.next464, %vector.body452 ] ; 11 uses
  %vec.ind454 = phi <8 x i32> [ <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, %vector.ph435 ], [ %vec.ind.next465, %vector.body452 ] ; 2 uses
  %i.mg = uitofp nneg <8 x i32> %vec.ind454 to <8 x double>
  %i.mh = fadd reassoc nsz arcp contract afn <8 x double> %i.mg, splat (double 5.000000e-01)
  %i.mi = fptrunc reassoc nsz arcp contract afn <8 x double> %i.mh to <8 x float>
  %i.mj = fmul reassoc nsz arcp contract afn <8 x float> %i.mi, %i.mb ; 2 uses
  %i.mk = getelementptr inbounds nuw [4 x i8], ptr %i.kl, i64 %index453
  store <8 x float> %i.mj, ptr %i.mk, align 4, !tbaa !21, !alias.scope !410, !noalias !411
  %i.ml = getelementptr inbounds nuw [4 x i8], ptr %i.kk, i64 %index453
  store <8 x float> %i.mj, ptr %i.ml, align 4, !tbaa !21, !alias.scope !410, !noalias !411
  %i.mm = getelementptr [2 x i8], ptr %i.ld, i64 %index453
  %wide.masked.load = tail call <8 x i16> @llvm.masked.load.v8i16.p0(ptr align 2 %i.mm, <8 x i1> %i.lw, <8 x i16> poison), !tbaa !25, !alias.scope !412
  %i.mn = sitofp <8 x i16> %wide.masked.load to <8 x float>
  %i.mo = fmul reassoc nsz arcp contract afn <8 x float> %i.mc, %i.mn
  %i.mp = fadd reassoc nsz arcp contract afn <8 x float> %i.mo, splat (float 1.000000e+00)
  %predphi456 = select i1 %.not385.i.i, <8 x float> %i.mp, <8 x float> splat (float 1.000000e+00) ; 5 uses
  %i.mq = getelementptr [4 x i8], ptr %i.le, i64 %index453 ; 2 uses
  store <8 x float> %predphi456, ptr %i.mq, align 4, !tbaa !21, !alias.scope !410, !noalias !411
  %i.mr = getelementptr inbounds nuw [4 x i8], ptr %i.lf, i64 %index453
  store <8 x float> %predphi456, ptr %i.mr, align 4, !tbaa !21, !alias.scope !410, !noalias !411
  %i.ms = getelementptr [4 x i8], ptr %i.km, i64 %index453 ; 2 uses
  store <8 x float> %predphi456, ptr %i.ms, align 4, !tbaa !21, !alias.scope !410, !noalias !411
  %i.mt = getelementptr [2 x i8], ptr %i.lh, i64 %index453
  %wide.masked.load458 = tail call <8 x i16> @llvm.masked.load.v8i16.p0(ptr align 2 %i.mt, <8 x i1> %i.ly, <8 x i16> poison), !tbaa !25, !alias.scope !412
  %i.mu = sitofp <8 x i16> %wide.masked.load458 to <8 x float>
  %i.mv = fmul reassoc nsz arcp contract afn <8 x float> %i.md, %i.mu
  %i.mw = fadd reassoc nsz arcp contract afn <8 x float> %i.mv, splat (float 1.000000e+00)
  %i.mx = fmul reassoc nsz arcp contract afn <8 x float> %i.mw, %predphi456
  tail call void @llvm.masked.store.v8f32.p0(<8 x float> %i.mx, ptr align 4 %i.ms, <8 x i1> %i.ly), !tbaa !21, !alias.scope !410, !noalias !411
  %i.my = getelementptr [2 x i8], ptr %i.lj, i64 %index453
  %wide.masked.load460 = tail call <8 x i16> @llvm.masked.load.v8i16.p0(ptr align 2 %i.my, <8 x i1> %i.ly, <8 x i16> poison), !tbaa !25, !alias.scope !412
  %i.mz = sitofp <8 x i16> %wide.masked.load460 to <8 x float>
  %i.na = fmul reassoc nsz arcp contract afn <8 x float> %i.me, %i.mz
  %i.nb = fadd reassoc nsz arcp contract afn <8 x float> %i.na, splat (float 1.000000e+00)
  %i.nc = fmul reassoc nsz arcp contract afn <8 x float> %i.nb, %predphi456
  tail call void @llvm.masked.store.v8f32.p0(<8 x float> %i.nc, ptr align 4 %i.mq, <8 x i1> %i.ly), !tbaa !21, !alias.scope !410, !noalias !411
  %i.nd = getelementptr [2 x i8], ptr %i.lk, i64 %index453
  %wide.masked.load462 = tail call <8 x i16> @llvm.masked.load.v8i16.p0(ptr align 2 %i.nd, <8 x i1> %i.ma, <8 x i16> poison), !tbaa !25, !alias.scope !412
  %i.ne = sitofp <8 x i16> %wide.masked.load462 to <8 x float>
  %i.nf = fmul reassoc nsz arcp contract afn <8 x float> %i.mf, %i.ne
  %i.ng = fadd reassoc nsz arcp contract afn <8 x float> %i.nf, splat (float -1.000000e+00)
  %i.nh = tail call reassoc nsz arcp contract afn <8 x float> @llvm.exp2.v8f32(<8 x float> %i.ng)
  %i.ni = fsub reassoc nsz arcp contract afn <8 x float> splat (float 5.000000e-01), %i.nh
  %i.nj = tail call reassoc nsz arcp contract afn <8 x float> @llvm.exp2.v8f32(<8 x float> %i.ni)
  %predphi463 = select i1 %.not388.i.i, <8 x float> %i.nj, <8 x float> splat (float 1.000000e+00)
  %i.nk = getelementptr inbounds nuw [4 x i8], ptr %i.kn, i64 %index453
  store <8 x float> %predphi463, ptr %i.nk, align 4, !tbaa !21, !alias.scope !410, !noalias !411
  %index.next464 = add nuw i64 %index453, 8       ; 2 uses
  %vec.ind.next465 = add <8 x i32> %vec.ind454, splat (i32 8)
  %i.nl = icmp eq i64 %index.next464, %n.vec
  br i1 %i.nl, label %middle.block466, label %vector.body452, !llvm.loop !380

middle.block466:                                  ; preds = %vector.body452
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i.i
  br i1 %cmp.n, label %.loopexit.i.i, label %scalar.ph427.preheader

scalar.ph427.preheader:                           ; preds = %vector.memcheck428, %.lr.ph480.i.i, %middle.block466
  %indvars.iv568.i.i.ph = phi i64 [ 0, %vector.memcheck428 ], [ 0, %.lr.ph480.i.i ], [ %n.vec, %middle.block466 ]
  %i.nm = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %i.lc
  br label %scalar.ph427

scalar.ph427:                                     ; preds = %scalar.ph427.preheader, %.critedge392.sink.split.i.i
  %indvars.iv568.i.i = phi i64 [ %indvars.iv.next569.i.i, %.critedge392.sink.split.i.i ], [ %indvars.iv568.i.i.ph, %scalar.ph427.preheader ] ; 12 uses
  %i.nn = trunc nuw nsw i64 %indvars.iv568.i.i to i32
  %i.no = uitofp nsz nneg i32 %i.nn to double
  %i.np = fadd reassoc nsz arcp contract afn double %i.no, 5.000000e-01
  %i.nq = fptrunc reassoc nsz arcp contract afn double %i.np to float
  %i.nr = fmul reassoc nsz arcp contract afn float %i.nq, %i.nm ; 2 uses
  %i.ns = getelementptr inbounds nuw [4 x i8], ptr %i.kl, i64 %indvars.iv568.i.i
  store float %i.nr, ptr %i.ns, align 4, !tbaa !21
  %i.nt = getelementptr inbounds nuw [4 x i8], ptr %i.kk, i64 %indvars.iv568.i.i
  store float %i.nr, ptr %i.nt, align 4, !tbaa !21
  br i1 %.not385.i.i, label %bb.ay, label %.critedge.i.i

bb.ay:                                            ; preds = %scalar.ph427
  %i.nu = load float, ptr %i.el, align 4, !tbaa !182
  %i.nv = getelementptr inbounds nuw [2 x i8], ptr %i.ld, i64 %indvars.iv568.i.i
  %i.nw = load i16, ptr %i.nv, align 2, !tbaa !25
  %i.nx = sitofp i16 %i.nw to float
  %i.ny = fmul reassoc nsz arcp contract afn float %i.nu, f0x38800000
  %i.nz = fmul reassoc nsz arcp contract afn float %i.ny, %i.nx
  %i.oa = fadd reassoc nsz arcp contract afn float %i.nz, 1.000000e+00
  br label %.critedge.i.i

.critedge.i.i:                                    ; preds = %bb.ay, %scalar.ph427
  %.sink662.i.i = phi float [ %i.oa, %bb.ay ], [ 1.000000e+00, %scalar.ph427 ] ; 5 uses
  %i.ob = getelementptr inbounds nuw [4 x i8], ptr %i.le, i64 %indvars.iv568.i.i ; 2 uses
  store float %.sink662.i.i, ptr %i.ob, align 4, !tbaa !21
  %i.oc = getelementptr inbounds nuw [4 x i8], ptr %i.lf, i64 %indvars.iv568.i.i
  store float %.sink662.i.i, ptr %i.oc, align 4, !tbaa !21
  %i.od = getelementptr inbounds nuw [4 x i8], ptr %i.km, i64 %indvars.iv568.i.i ; 2 uses
  store float %.sink662.i.i, ptr %i.od, align 4, !tbaa !21
  br i1 %.not386.i.i, label %bb.az, label %.critedge390.i.i

bb.az:                                            ; preds = %.critedge.i.i
  %i.oe = load float, ptr %i.lg, align 4, !tbaa !408
  %i.of = getelementptr inbounds nuw [2 x i8], ptr %i.lh, i64 %indvars.iv568.i.i
  %i.og = load i16, ptr %i.of, align 2, !tbaa !25
  %i.oh = sitofp i16 %i.og to float
  %i.oi = fmul reassoc nsz arcp contract afn float %i.oe, f0x35000000
end_hunk_0
begin_hunk_1_@commit_params:bb.a
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.body

scalar.ph.preheader:                              ; preds = %vector.memcheck
  %i.xe = extractelement <4 x float> %i.wm, i64 3 ; 2 uses
  %i.xf = extractelement <4 x float> %i.wm, i64 2
  %i.xg = extractelement <4 x float> %i.wm, i64 1
  %i.xh = extractelement <4 x float> %i.wm, i64 0
  %i.xi = extractelement <4 x float> %i.wv, i64 2
  %i.xj = extractelement <4 x float> %i.wv, i64 1
  %i.xk = extractelement <4 x float> %i.wv, i64 0
  %i.xl = extractelement <4 x float> %i.wv, i64 3
  br label %scalar.ph

vector.body:                                      ; preds = %vector.memcheck
  %broadcast.splatinsert414 = insertelement <8 x ptr> poison, ptr %i.el, i64 0
  %broadcast.splat415 = shufflevector <8 x ptr> %broadcast.splatinsert414, <8 x ptr> poison, <8 x i32> zeroinitializer ; 2 uses
  %broadcast.splat413 = shufflevector <4 x float> %i.wm, <4 x float> poison, <8 x i32> zeroinitializer ; 2 uses
  %broadcast.splat411 = shufflevector <4 x float> %i.wm, <4 x float> poison, <8 x i32> <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1> ; 2 uses
  %broadcast.splat409 = shufflevector <4 x float> %i.wm, <4 x float> poison, <8 x i32> <i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2> ; 2 uses
  %broadcast.splat407 = shufflevector <4 x float> %i.wm, <4 x float> poison, <8 x i32> <i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3> ; 4 uses
  %broadcast.splatinsert404 = insertelement <8 x ptr> poison, ptr %i.wz, i64 0
  %broadcast.splat405 = shufflevector <8 x ptr> %broadcast.splatinsert404, <8 x ptr> poison, <8 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert402 = insertelement <8 x ptr> poison, ptr %i.wy, i64 0
  %broadcast.splat403 = shufflevector <8 x ptr> %broadcast.splatinsert402, <8 x ptr> poison, <8 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert400 = insertelement <8 x float> poison, float %.0335.i.i, i64 0
  %broadcast.splat401 = shufflevector <8 x float> %broadcast.splatinsert400, <8 x float> poison, <8 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert398 = insertelement <8 x float> poison, float %.0336.i.i, i64 0
  %broadcast.splat399 = shufflevector <8 x float> %broadcast.splatinsert398, <8 x float> poison, <8 x i32> zeroinitializer ; 2 uses
  %broadcast.splat397 = shufflevector <4 x float> %i.wv, <4 x float> poison, <8 x i32> <i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3> ; 2 uses
  %broadcast.splat395 = shufflevector <4 x float> %i.wv, <4 x float> poison, <8 x i32> <i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2> ; 2 uses
  %broadcast.splat393 = shufflevector <4 x float> %i.wv, <4 x float> poison, <8 x i32> <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1> ; 2 uses
  %broadcast.splat391 = shufflevector <4 x float> %i.wv, <4 x float> poison, <8 x i32> zeroinitializer ; 2 uses
  %i.xm = insertelement <8 x i1> poison, i1 %.not368.i.i, i64 0
  %i.xn = shufflevector <8 x i1> %i.xm, <8 x i1> poison, <8 x i32> zeroinitializer ; 2 uses
  store <8 x float> <float 0.000000e+00, float f0x3D888889, float f0x3E088889, float f0x3E4CCCCE, float f0x3E888889, float f0x3EAAAAAB, float f0x3ECCCCCE, float f0x3EEEEEF0>, ptr %i.kl, align 4, !tbaa !21, !alias.scope !413, !noalias !414
  store <8 x float> <float 0.000000e+00, float f0x3D888889, float f0x3E088889, float f0x3E4CCCCE, float f0x3E888889, float f0x3EAAAAAB, float f0x3ECCCCCE, float f0x3EEEEEF0>, ptr %i.kk, align 4, !tbaa !21, !alias.scope !413, !noalias !414
  %i.xo = fmul reassoc nsz arcp contract afn <8 x float> %broadcast.splat407, <float 0.000000e+00, float f0x3D888889, float f0x3E088889, float f0x3E4CCCCE, float f0x3E888889, float f0x3EAAAAAB, float f0x3ECCCCCE, float f0x3EEEEEF0> ; 2 uses
  %i.xp = fmul reassoc nsz arcp contract afn <8 x float> %i.xo, %i.xo ; 3 uses
  %i.xq = fmul reassoc nsz arcp contract afn <8 x float> %i.xp, %broadcast.splat409
  %i.xr = fadd reassoc nsz arcp contract afn <8 x float> %i.xq, %broadcast.splat411
  %i.xs = fmul reassoc nsz arcp contract afn <8 x float> %i.xr, %i.xp
  %i.xt = fadd reassoc nsz arcp contract afn <8 x float> %i.xs, %broadcast.splat413
  %i.xu = fmul reassoc nsz arcp contract afn <8 x float> %i.xt, %i.xp
  %i.xv = fadd reassoc nsz arcp contract afn <8 x float> %i.xu, splat (float 1.000000e+00)
  %i.xw = fmul reassoc nsz arcp contract afn <8 x float> %i.xv, %broadcast.splat407
  %wide.masked.gather = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %broadcast.splat415, <8 x i1> %i.xn, <8 x float> poison), !tbaa !182, !alias.scope !414
  %i.xx = fadd reassoc nsz arcp contract afn <8 x float> %i.xw, splat (float -1.000000e+00)
  %i.xy = fmul reassoc nsz arcp contract afn <8 x float> %wide.masked.gather, %i.xx
  %i.xz = fadd reassoc nsz arcp contract afn <8 x float> %i.xy, splat (float 1.000000e+00)
  %predphi = select i1 %.not368.i.i, <8 x float> %i.xz, <8 x float> splat (float 1.000000e+00) ; 6 uses
  store <8 x float> %predphi, ptr %i.ww, align 4, !tbaa !21, !alias.scope !413, !noalias !414
  store <8 x float> %predphi, ptr %i.wx, align 4, !tbaa !21, !alias.scope !413, !noalias !414
  store <8 x float> %predphi, ptr %i.km, align 4, !tbaa !21, !alias.scope !413, !noalias !414
  %i.ya = select i1 %.not369.i.i, <8 x i1> <i1 false, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true>, <8 x i1> zeroinitializer ; 4 uses
  %i.yb = fmul reassoc nsz arcp contract afn <8 x float> %predphi, <float 0.000000e+00, float f0x3D888889, float f0x3E088889, float f0x3E4CCCCE, float f0x3E888889, float f0x3EAAAAAB, float f0x3ECCCCCE, float f0x3EEEEEF0> ; 4 uses
  %i.yc = fmul reassoc nsz arcp contract afn <8 x float> %i.yb, %i.yb ; 4 uses
  %wide.masked.gather416.a = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %broadcast.splat403, <8 x i1> %i.ya, <8 x float> poison), !tbaa !408, !alias.scope !414
  %i.yd = fmul reassoc nsz arcp contract afn <8 x float> %i.yc, %broadcast.splat395
  %i.ye = fadd reassoc nsz arcp contract afn <8 x float> %i.yd, %broadcast.splat393
  %i.yf = fmul reassoc nsz arcp contract afn <8 x float> %i.ye, %i.yc
  %i.yg = fadd reassoc nsz arcp contract afn <8 x float> %i.yf, %broadcast.splat391
  %i.yh = fmul reassoc nsz arcp contract afn <8 x float> %i.yg, %i.yb
  %i.yi = fmul reassoc nsz arcp contract afn <8 x float> %i.yh, %wide.masked.gather416.a
  %i.yj = fdiv reassoc nsz arcp contract afn <8 x float> %i.yi, <float 0.000000e+00, float f0x3D888889, float f0x3E088889, float f0x3E4CCCCE, float f0x3E888889, float f0x3EAAAAAB, float f0x3ECCCCCE, float f0x3EEEEEF0>
  %i.yk = fadd reassoc nsz arcp contract afn <8 x float> %i.yj, %predphi
  tail call void @llvm.masked.store.v8f32.p0(<8 x float> %i.yk, ptr align 4 %i.km, <8 x i1> %i.ya), !tbaa !21, !alias.scope !413, !noalias !414
  %wide.masked.gather417 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %broadcast.splat405, <8 x i1> %i.ya, <8 x float> poison), !tbaa !409, !alias.scope !414
  %i.yl = fmul reassoc nsz arcp contract afn <8 x float> %i.yc, %broadcast.splat401
  %i.ym = fadd reassoc nsz arcp contract afn <8 x float> %i.yl, %broadcast.splat399
  %i.yn = fmul reassoc nsz arcp contract afn <8 x float> %i.ym, %i.yc
  %i.yo = fadd reassoc nsz arcp contract afn <8 x float> %i.yn, %broadcast.splat397
  %i.yp = fmul reassoc nsz arcp contract afn <8 x float> %i.yo, %i.yb
  %i.yq = fmul reassoc nsz arcp contract afn <8 x float> %i.yp, %wide.masked.gather417
  %i.yr = fdiv reassoc nsz arcp contract afn <8 x float> %i.yq, <float 0.000000e+00, float f0x3D888889, float f0x3E088889, float f0x3E4CCCCE, float f0x3E888889, float f0x3EAAAAAB, float f0x3ECCCCCE, float f0x3EEEEEF0>
  %i.ys = fadd reassoc nsz arcp contract afn <8 x float> %i.yr, %predphi
  tail call void @llvm.masked.store.v8f32.p0(<8 x float> %i.ys, ptr align 4 %i.ww, <8 x i1> %i.ya), !tbaa !21, !alias.scope !413, !noalias !414
  store <8 x float> splat (float 1.000000e+00), ptr %i.kn, align 4, !tbaa !21, !alias.scope !413, !noalias !414
  %i.yt = getelementptr inbounds nuw i8, ptr %i.ee, i64 204
  store <8 x float> <float f0x3F088889, float 6.000000e-01, float f0x3F2AAAAB, float f0x3F3BBBBC, float f0x3F4CCCCE, float f0x3F5DDDDF, float f0x3F6EEEF0, float 1.000000e+00>, ptr %i.yt, align 4, !tbaa !21, !alias.scope !413, !noalias !414
  %i.yu = getelementptr i8, ptr %i.ee, i64 140
  store <8 x float> <float f0x3F088889, float 6.000000e-01, float f0x3F2AAAAB, float f0x3F3BBBBC, float f0x3F4CCCCE, float f0x3F5DDDDF, float f0x3F6EEEF0, float 1.000000e+00>, ptr %i.yu, align 4, !tbaa !21, !alias.scope !413, !noalias !414
  %i.yv = fmul reassoc nsz arcp contract afn <8 x float> %broadcast.splat407, <float f0x3F088889, float 6.000000e-01, float f0x3F2AAAAB, float f0x3F3BBBBC, float f0x3F4CCCCE, float f0x3F5DDDDF, float f0x3F6EEEF0, float 1.000000e+00> ; 2 uses
  %i.yw = fmul reassoc nsz arcp contract afn <8 x float> %i.yv, %i.yv ; 3 uses
  %i.yx = fmul reassoc nsz arcp contract afn <8 x float> %i.yw, %broadcast.splat409
  %i.yy = fadd reassoc nsz arcp contract afn <8 x float> %i.yx, %broadcast.splat411
  %i.yz = fmul reassoc nsz arcp contract afn <8 x float> %i.yy, %i.yw
  %i.za = fadd reassoc nsz arcp contract afn <8 x float> %i.yz, %broadcast.splat413
  %i.zb = fmul reassoc nsz arcp contract afn <8 x float> %i.za, %i.yw
  %i.zc = fadd reassoc nsz arcp contract afn <8 x float> %i.zb, splat (float 1.000000e+00)
  %i.zd = fmul reassoc nsz arcp contract afn <8 x float> %i.zc, %broadcast.splat407
  %wide.masked.gather.1 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %broadcast.splat415, <8 x i1> %i.xn, <8 x float> poison), !tbaa !182, !alias.scope !414
  %i.ze = fadd reassoc nsz arcp contract afn <8 x float> %i.zd, splat (float -1.000000e+00)
  %i.zf = fmul reassoc nsz arcp contract afn <8 x float> %wide.masked.gather.1, %i.ze
  %i.zg = fadd reassoc nsz arcp contract afn <8 x float> %i.zf, splat (float 1.000000e+00)
  %predphi.1 = select i1 %.not368.i.i, <8 x float> %i.zg, <8 x float> splat (float 1.000000e+00) ; 6 uses
  %i.zh = getelementptr i8, ptr %i.ee, i64 396    ; 2 uses
  store <8 x float> %predphi.1, ptr %i.zh, align 4, !tbaa !21, !alias.scope !413, !noalias !414
  %i.zi = getelementptr inbounds nuw i8, ptr %i.ee, i64 332
  store <8 x float> %predphi.1, ptr %i.zi, align 4, !tbaa !21, !alias.scope !413, !noalias !414
  %i.zj = getelementptr i8, ptr %i.ee, i64 268    ; 2 uses
  store <8 x float> %predphi.1, ptr %i.zj, align 4, !tbaa !21, !alias.scope !413, !noalias !414
  %i.zk = select i1 %.not369.i.i, <8 x i1> splat (i1 true), <8 x i1> zeroinitializer ; 4 uses
  %i.zl = fmul reassoc nsz arcp contract afn <8 x float> %predphi.1, <float f0x3F088889, float 6.000000e-01, float f0x3F2AAAAB, float f0x3F3BBBBC, float f0x3F4CCCCE, float f0x3F5DDDDF, float f0x3F6EEEF0, float 1.000000e+00> ; 4 uses
  %i.zm = fmul reassoc nsz arcp contract afn <8 x float> %i.zl, %i.zl ; 4 uses
  %wide.masked.gather416.1.a = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %broadcast.splat403, <8 x i1> %i.zk, <8 x float> poison), !tbaa !408, !alias.scope !414
  %i.zn = fmul reassoc nsz arcp contract afn <8 x float> %i.zm, %broadcast.splat395
  %i.zo = fadd reassoc nsz arcp contract afn <8 x float> %i.zn, %broadcast.splat393
  %i.zp = fmul reassoc nsz arcp contract afn <8 x float> %i.zo, %i.zm
  %i.zq = fadd reassoc nsz arcp contract afn <8 x float> %i.zp, %broadcast.splat391
  %i.zr = fmul reassoc nsz arcp contract afn <8 x float> %i.zq, %i.zl
  %i.zs = fmul reassoc nsz arcp contract afn <8 x float> %i.zr, %wide.masked.gather416.1.a
  %i.zt = fmul reassoc nsz arcp contract afn <8 x float> %i.zs, <float f0x3FEFFFFF, float f0x3FD55555, float 1.500000e+00, float f0x3FAE8BA3, float f0x3F9FFFFF, float f0x3F93B13A, float f0x3F892492, float 1.000000e+00>
  %i.zu = fadd reassoc nsz arcp contract afn <8 x float> %i.zt, %predphi.1
  tail call void @llvm.masked.store.v8f32.p0(<8 x float> %i.zu, ptr align 4 %i.zj, <8 x i1> %i.zk), !tbaa !21, !alias.scope !413, !noalias !414
  %wide.masked.gather417.1 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %broadcast.splat405, <8 x i1> %i.zk, <8 x float> poison), !tbaa !409, !alias.scope !414
  %i.zv = fmul reassoc nsz arcp contract afn <8 x float> %i.zm, %broadcast.splat401
  %i.zw = fadd reassoc nsz arcp contract afn <8 x float> %i.zv, %broadcast.splat399
  %i.zx = fmul reassoc nsz arcp contract afn <8 x float> %i.zw, %i.zm
  %i.zy = fadd reassoc nsz arcp contract afn <8 x float> %i.zx, %broadcast.splat397
  %i.zz = fmul reassoc nsz arcp contract afn <8 x float> %i.zy, %i.zl
  %i.aaa = fmul reassoc nsz arcp contract afn <8 x float> %i.zz, %wide.masked.gather417.1
  %i.aab = fmul reassoc nsz arcp contract afn <8 x float> %i.aaa, <float f0x3FEFFFFF, float f0x3FD55555, float 1.500000e+00, float f0x3FAE8BA3, float f0x3F9FFFFF, float f0x3F93B13A, float f0x3F892492, float 1.000000e+00>
  %i.aac = fadd reassoc nsz arcp contract afn <8 x float> %i.aab, %predphi.1
  tail call void @llvm.masked.store.v8f32.p0(<8 x float> %i.aac, ptr align 4 %i.zh, <8 x i1> %i.zk), !tbaa !21, !alias.scope !413, !noalias !414
  %i.aad = getelementptr inbounds nuw i8, ptr %i.ee, i64 460
  store <8 x float> splat (float 1.000000e+00), ptr %i.aad, align 4, !tbaa !21, !alias.scope !413, !noalias !414
  br label %.loopexit.i.i

scalar.ph:                                        ; preds = %scalar.ph.preheader, %.critedge400.i.i
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %.critedge400.i.i ], [ 0, %scalar.ph.preheader ] ; 8 uses
  %i.aae = trunc nuw nsw i64 %indvars.iv.i.i to i32
  %i.aaf = uitofp nsz nneg i32 %i.aae to float
  %i.aag = fmul reassoc nnan nsz arcp contract afn float %i.aaf, f0x3D888889 ; 7 uses
  %i.aah = getelementptr inbounds nuw [4 x i8], ptr %i.kl, i64 %indvars.iv.i.i
  store float %i.aag, ptr %i.aah, align 4, !tbaa !21
  %i.aai = getelementptr inbounds nuw [4 x i8], ptr %i.kk, i64 %indvars.iv.i.i
  store float %i.aag, ptr %i.aai, align 4, !tbaa !21
  br i1 %.not368.i.i, label %bb.cd, label %.critedge399.i.i

bb.cd:                                            ; preds = %scalar.ph
  %i.aaj = fmul reassoc nsz arcp contract afn float %i.aag, %i.xe ; 2 uses
  %square.i.i = fmul reassoc nsz arcp contract afn float %i.aaj, %i.aaj ; 3 uses
  %i.aak = fmul reassoc nsz arcp contract afn float %square.i.i, %i.xf
  %i.aal = fadd reassoc nsz arcp contract afn float %i.aak, %i.xg
  %i.aam = fmul reassoc nsz arcp contract afn float %i.aal, %square.i.i
  %i.aan = fadd reassoc nsz arcp contract afn float %i.aam, %i.xh
  %i.aao = fmul reassoc nsz arcp contract afn float %i.aan, %square.i.i
  %i.aap = fadd reassoc nsz arcp contract afn float %i.aao, 1.000000e+00
  %i.aaq = fmul reassoc nsz arcp contract afn float %i.aap, %i.xe
  %i.aar = load float, ptr %i.el, align 4, !tbaa !182
  %i.aas = fadd reassoc nsz arcp contract afn float %i.aaq, -1.000000e+00
  %i.aat = fmul reassoc nsz arcp contract afn float %i.aar, %i.aas
  %i.aau = fadd reassoc nsz arcp contract afn float %i.aat, 1.000000e+00
  br label %.critedge399.i.i

.critedge399.i.i:                                 ; preds = %bb.cd, %scalar.ph
  %.sink669.i.i = phi float [ %i.aau, %bb.cd ], [ 1.000000e+00, %scalar.ph ] ; 6 uses
  %i.aav = getelementptr inbounds nuw [4 x i8], ptr %i.ww, i64 %indvars.iv.i.i ; 2 uses
  store float %.sink669.i.i, ptr %i.aav, align 4, !tbaa !21
  %i.aaw = getelementptr inbounds nuw [4 x i8], ptr %i.wx, i64 %indvars.iv.i.i
  store float %.sink669.i.i, ptr %i.aaw, align 4, !tbaa !21
  %i.aax = getelementptr inbounds nuw [4 x i8], ptr %i.km, i64 %indvars.iv.i.i ; 2 uses
  store float %.sink669.i.i, ptr %i.aax, align 4, !tbaa !21
  %i.aay = fcmp reassoc nsz arcp contract afn ogt float %i.aag, 0.000000e+00
  %or.cond.i.i = select i1 %.not369.i.i, i1 %i.aay, i1 false
  br i1 %or.cond.i.i, label %bb.ce, label %.critedge400.i.i

bb.ce:                                            ; preds = %.critedge399.i.i
  %i.aaz = fmul reassoc nsz arcp contract afn float %.sink669.i.i, %i.aag ; 4 uses
  %square370.i.i = fmul reassoc nsz arcp contract afn float %i.aaz, %i.aaz ; 4 uses
  %i.aba = load float, ptr %i.wy, align 4, !tbaa !408
  %i.abb = fmul reassoc nsz arcp contract afn float %square370.i.i, %i.xi
  %i.abc = fadd reassoc nsz arcp contract afn float %i.abb, %i.xj
  %i.abd = fmul reassoc nsz arcp contract afn float %i.abc, %square370.i.i
  %i.abe = fadd reassoc nsz arcp contract afn float %i.abd, %i.xk
  %i.abf = fmul reassoc nsz arcp contract afn float %i.abe, %i.aaz
  %i.abg = fmul reassoc nsz arcp contract afn float %i.abf, %i.aba
  %i.abh = fdiv reassoc nsz arcp contract afn float %i.abg, %i.aag
  %i.abi = fadd reassoc nsz arcp contract afn float %i.abh, %.sink669.i.i
  store float %i.abi, ptr %i.aax, align 4, !tbaa !21
  %i.abj = load float, ptr %i.wz, align 4, !tbaa !409
  %i.abk = fmul reassoc nsz arcp contract afn float %square370.i.i, %.0335.i.i
  %i.abl = fadd reassoc nsz arcp contract afn float %i.abk, %.0336.i.i
  %i.abm = fmul reassoc nsz arcp contract afn float %i.abl, %square370.i.i
  %i.abn = fadd reassoc nsz arcp contract afn float %i.abm, %i.xl
  %i.abo = fmul reassoc nsz arcp contract afn float %i.abn, %i.aaz
  %i.abp = fmul reassoc nsz arcp contract afn float %i.abo, %i.abj
  %i.abq = fdiv reassoc nsz arcp contract afn float %i.abp, %i.aag
  %i.abr = fadd reassoc nsz arcp contract afn float %i.abq, %.sink669.i.i
  store float %i.abr, ptr %i.aav, align 4, !tbaa !21
  br label %.critedge400.i.i

.critedge400.i.i:                                 ; preds = %bb.ce, %.critedge399.i.i
  %i.abs = getelementptr inbounds nuw [4 x i8], ptr %i.kn, i64 %indvars.iv.i.i
  store float 1.000000e+00, ptr %i.abs, align 4, !tbaa !21
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i56.i = icmp eq i64 %indvars.iv.next.i.i, 16
  br i1 %exitcond.not.i56.i, label %.loopexit.i.i, label %scalar.ph, !llvm.loop !389

.loopexit.i.i:                                    ; preds = %.critedge400.i.i, %bb.by, %.critedge392.sink.split.i.i, %vector.body, %middle.block466, %bb.bg, %bb.ax, %bb.aw
  %.0327.i.i = phi i32 [ 0, %bb.aw ], [ 16, %bb.bg ], [ %i.kz, %bb.ax ], [ 16, %vector.body ], [ %i.kz, %middle.block466 ], [ 16, %bb.by ], [ %i.kz, %.critedge392.sink.split.i.i ], [ 16, %.critedge400.i.i ] ; 6 uses
  %i.abt = getelementptr inbounds nuw i8, ptr %i.eh, i64 1508
  %i.abu = load <2 x i32>, ptr %i.abt, align 4, !tbaa !24
  %i.abv = sitofp <2 x i32> %i.abu to <2 x float>
  %i.abw = fmul reassoc nnan nsz arcp contract afn <2 x float> %i.abv, splat (float 5.000000e-01) ; 2 uses
  %i.abx = extractelement <2 x float> %i.abw, i64 0 ; 3 uses
  %i.aby = extractelement <2 x float> %i.abw, i64 1 ; 3 uses
  %i.abz = tail call reassoc nsz arcp contract afn noundef float @hypotf(float noundef %i.abx, float noundef %i.aby) #32
  %i.aca = fcmp reassoc nsz arcp contract afn olt float %i.abx, %i.aby
  %i.acb = select reassoc nsz arcp contract afn i1 %i.aca, float %i.abx, float %i.aby
  %i.acc = fdiv reassoc nsz arcp contract afn float %i.acb, %i.abz ; 2 uses
  %i.acd = fmul reassoc nsz arcp contract afn float %i.acc, f0x3BA4A9CF
  %i.ace = fsub reassoc nsz arcp contract afn float f0x3BA4A9CF, %i.acd
  %i.acf = load float, ptr %i.kk, align 4, !tbaa !21
  %i.acg = icmp sgt i32 %.0327.i.i, 1
  %wide.trip.count.i425.i.i = zext i32 %.0327.i.i to i64 ; 6 uses
  %i.ach = sext i32 %.0327.i.i to i64             ; 3 uses
  %invariant.gep491.i.i = getelementptr [4 x i8], ptr %i.km, i64 %i.ach ; 3 uses
  %i.aci = getelementptr i8, ptr %invariant.gep491.i.i, i64 -4 ; 2 uses
  %i.acj = getelementptr i8, ptr %invariant.gep491.i.i, i64 60
  %i.ack = getelementptr i8, ptr %invariant.gep491.i.i, i64 124
  %i.acl = getelementptr inbounds nuw i8, ptr %i.ee, i64 300 ; 4 uses
  %i.acm = getelementptr [4 x i8], ptr %i.acl, i64 %i.ach
  %i.acn = getelementptr i8, ptr %i.acm, i64 -4
  %i.aco = getelementptr inbounds nuw i8, ptr %i.ee, i64 364 ; 4 uses
  %i.acp = getelementptr [4 x i8], ptr %i.aco, i64 %i.ach
  %i.acq = getelementptr i8, ptr %i.acp, i64 -4
  br label %.preheader434.i.i

.preheader434.i.i:                                ; preds = %.split484.us.i.i, %.loopexit.i.i
  %.0329494.int.i.i = phi i32 [ 0, %.loopexit.i.i ], [ %.int.i59.i, %.split484.us.i.i ] ; 2 uses
  %.0330493.i.i = phi float [ 0.000000e+00, %.loopexit.i.i ], [ %.us-phi.i58.i, %.split484.us.i.i ] ; 6 uses
  %indvar.conv.i57.i = uitofp nneg i32 %.0329494.int.i.i to float
  %i.acr = fmul reassoc nsz arcp contract afn float %i.ace, %indvar.conv.i57.i
  %i.acs = fadd reassoc nsz arcp contract afn float %i.acr, %i.acc ; 10 uses
  %i.act = fcmp reassoc nsz arcp contract afn olt float %i.acs, %i.acf
  br i1 %i.act, label %_ZL26_interpolate_linear_splinePKfS0_if.exit430.us.preheader.i.i, label %.preheader434.split.i.i

_ZL26_interpolate_linear_splinePKfS0_if.exit430.us.preheader.i.i: ; preds = %.preheader434.i.i
  %i.acu = load float, ptr %i.km, align 4, !tbaa !21 ; 2 uses
  %i.acv = fcmp reassoc nsz arcp contract afn ogt float %.0330493.i.i, %i.acu
  %i.acw = select reassoc nsz arcp contract afn i1 %i.acv, float %.0330493.i.i, float %i.acu ; 2 uses
  %i.acx = load float, ptr %i.acl, align 4, !tbaa !21 ; 2 uses
  %i.acy = fcmp reassoc nsz arcp contract afn ogt float %i.acw, %i.acx
  %i.acz = select reassoc nsz arcp contract afn i1 %i.acy, float %i.acw, float %i.acx ; 2 uses
  %i.ada = load float, ptr %i.aco, align 4, !tbaa !21 ; 2 uses
  %i.adb = fcmp reassoc nsz arcp contract afn ogt float %i.acz, %i.ada
  %i.adc = select reassoc nsz arcp contract afn i1 %i.adb, float %i.acz, float %i.ada
  br label %.split484.us.i.i

.preheader434.split.i.i:                          ; preds = %.preheader434.i.i
  br i1 %i.acg, label %.lr.ph.i426.us.i.i, label %.preheader.i421.preheader.i.i

.preheader.i421.preheader.i.i:                    ; preds = %.preheader434.split.i.i
  %i.add = load float, ptr %i.aci, align 4, !tbaa !21 ; 2 uses
  %i.ade = fcmp reassoc nsz arcp contract afn ogt float %.0330493.i.i, %i.add
  %i.adf = select reassoc nsz arcp contract afn i1 %i.ade, float %.0330493.i.i, float %i.add ; 2 uses
  %i.adg = load float, ptr %i.acj, align 4, !tbaa !21 ; 2 uses
  %i.adh = fcmp reassoc nsz arcp contract afn ogt float %i.adf, %i.adg
  %i.adi = select reassoc nsz arcp contract afn i1 %i.adh, float %i.adf, float %i.adg ; 2 uses
  %i.adj = load float, ptr %i.ack, align 4, !tbaa !21 ; 2 uses
  %i.adk = fcmp reassoc nsz arcp contract afn ogt float %i.adi, %i.adj
  %i.adl = select reassoc nsz arcp contract afn i1 %i.adk, float %i.adi, float %i.adj
  br label %.split484.us.i.i

.lr.ph.i426.us.i.i:                               ; preds = %.preheader434.split.i.i, %bb.cg
  %indvars.iv.i427.us.i.i = phi i64 [ %indvars.iv.next.i428.us.i.i, %bb.cg ], [ 1, %.preheader434.split.i.i ] ; 4 uses
  %i.adm = add nsw i64 %indvars.iv.i427.us.i.i, -1 ; 2 uses
  %i.adn = getelementptr inbounds [4 x i8], ptr %i.kk, i64 %i.adm
  %i.ado = load float, ptr %i.adn, align 4, !tbaa !21 ; 3 uses
  %i.adp = fcmp reassoc nsz arcp contract afn ult float %i.acs, %i.ado
  br i1 %i.adp, label %bb.cg, label %bb.cf

bb.cf:                                            ; preds = %.lr.ph.i426.us.i.i
  %i.adq = getelementptr inbounds nuw [4 x i8], ptr %i.kk, i64 %indvars.iv.i427.us.i.i
  %i.adr = load float, ptr %i.adq, align 4, !tbaa !21 ; 2 uses
  %i.ads = fcmp reassoc nsz arcp contract afn ugt float %i.acs, %i.adr
  br i1 %i.ads, label %bb.cg, label %bb.ch

bb.cg:                                            ; preds = %bb.cf, %.lr.ph.i426.us.i.i
  %indvars.iv.next.i428.us.i.i = add nuw nsw i64 %indvars.iv.i427.us.i.i, 1 ; 2 uses
  %exitcond.not.i429.us.i.i = icmp eq i64 %indvars.iv.next.i428.us.i.i, %wide.trip.count.i425.i.i
  br i1 %exitcond.not.i429.us.i.i, label %._crit_edge.i422.loopexit.us.i.i, label %.lr.ph.i426.us.i.i, !llvm.loop !0

bb.ch:                                            ; preds = %bb.cf
  %i.adt = getelementptr inbounds nuw [4 x i8], ptr %i.km, i64 %indvars.iv.i427.us.i.i
  %i.adu = load float, ptr %i.adt, align 4, !tbaa !21
  %i.adv = getelementptr inbounds [4 x i8], ptr %i.km, i64 %i.adm
  %i.adw = load float, ptr %i.adv, align 4, !tbaa !21 ; 2 uses
  %i.adx = fsub reassoc nsz arcp contract afn float %i.adu, %i.adw
  %i.ady = fsub reassoc nsz arcp contract afn float %i.adr, %i.ado
  %i.adz = fsub reassoc nsz arcp contract afn float %i.acs, %i.ado
  %i.aea = fmul reassoc nsz arcp contract afn float %i.adx, %i.adz
  %i.aeb = fdiv reassoc nsz arcp contract afn float %i.aea, %i.ady
  %i.aec = fadd reassoc nsz arcp contract afn float %i.aeb, %i.adw
  br label %_ZL26_interpolate_linear_splinePKfS0_if.exit430.us487.i.i

._crit_edge.i422.loopexit.us.i.i:                 ; preds = %bb.cg
  %i.aed = load float, ptr %i.aci, align 4, !tbaa !21
  br label %_ZL26_interpolate_linear_splinePKfS0_if.exit430.us487.i.i

_ZL26_interpolate_linear_splinePKfS0_if.exit430.us487.i.i: ; preds = %._crit_edge.i422.loopexit.us.i.i, %bb.ch
  %.1.i423.us488.i.i = phi nsz float [ %i.aec, %bb.ch ], [ %i.aed, %._crit_edge.i422.loopexit.us.i.i ] ; 2 uses
  %i.aee = fcmp reassoc nsz arcp contract afn ogt float %.0330493.i.i, %.1.i423.us488.i.i
  %i.aef = select reassoc nsz arcp contract afn i1 %i.aee, float %.0330493.i.i, float %.1.i423.us488.i.i ; 2 uses
  br label %.lr.ph.i426.us.1.i.i

.lr.ph.i426.us.1.i.i:                             ; preds = %bb.ck, %_ZL26_interpolate_linear_splinePKfS0_if.exit430.us487.i.i
  %indvars.iv.i427.us.1.i.i = phi i64 [ 1, %_ZL26_interpolate_linear_splinePKfS0_if.exit430.us487.i.i ], [ %indvars.iv.next.i428.us.1.i.i, %bb.ck ] ; 4 uses
  %i.aeg = add nsw i64 %indvars.iv.i427.us.1.i.i, -1 ; 2 uses
  %i.aeh = getelementptr inbounds [4 x i8], ptr %i.kk, i64 %i.aeg
  %i.aei = load float, ptr %i.aeh, align 4, !tbaa !21 ; 3 uses
  %i.aej = fcmp reassoc nsz arcp contract afn ult float %i.acs, %i.aei
  br i1 %i.aej, label %bb.ck, label %bb.ci

bb.ci:                                            ; preds = %.lr.ph.i426.us.1.i.i
  %i.aek = getelementptr inbounds nuw [4 x i8], ptr %i.kk, i64 %indvars.iv.i427.us.1.i.i
  %i.ael = load float, ptr %i.aek, align 4, !tbaa !21 ; 2 uses
  %i.aem = fcmp reassoc nsz arcp contract afn ugt float %i.acs, %i.ael
  br i1 %i.aem, label %bb.ck, label %bb.cj

bb.cj:                                            ; preds = %bb.ci
  %i.aen = getelementptr inbounds nuw [4 x i8], ptr %i.acl, i64 %indvars.iv.i427.us.1.i.i
  %i.aeo = load float, ptr %i.aen, align 4, !tbaa !21
  %i.aep = getelementptr inbounds [4 x i8], ptr %i.acl, i64 %i.aeg
  %i.aeq = load float, ptr %i.aep, align 4, !tbaa !21 ; 2 uses
  %i.aer = fsub reassoc nsz arcp contract afn float %i.aeo, %i.aeq
  %i.aes = fsub reassoc nsz arcp contract afn float %i.ael, %i.aei
  %i.aet = fsub reassoc nsz arcp contract afn float %i.acs, %i.aei
  %i.aeu = fmul reassoc nsz arcp contract afn float %i.aer, %i.aet
  %i.aev = fdiv reassoc nsz arcp contract afn float %i.aeu, %i.aes
  %i.aew = fadd reassoc nsz arcp contract afn float %i.aev, %i.aeq
  br label %_ZL26_interpolate_linear_splinePKfS0_if.exit430.us487.1.i.i

bb.ck:                                            ; preds = %bb.ci, %.lr.ph.i426.us.1.i.i
  %indvars.iv.next.i428.us.1.i.i = add nuw nsw i64 %indvars.iv.i427.us.1.i.i, 1 ; 2 uses
  %exitcond.not.i429.us.1.i.i = icmp eq i64 %indvars.iv.next.i428.us.1.i.i, %wide.trip.count.i425.i.i
  br i1 %exitcond.not.i429.us.1.i.i, label %._crit_edge.i422.loopexit.us.1.i.i, label %.lr.ph.i426.us.1.i.i, !llvm.loop !0

._crit_edge.i422.loopexit.us.1.i.i:               ; preds = %bb.ck
  %i.aex = load float, ptr %i.acn, align 4, !tbaa !21
  br label %_ZL26_interpolate_linear_splinePKfS0_if.exit430.us487.1.i.i

_ZL26_interpolate_linear_splinePKfS0_if.exit430.us487.1.i.i: ; preds = %._crit_edge.i422.loopexit.us.1.i.i, %bb.cj
  %.1.i423.us488.1.i.i = phi nsz float [ %i.aew, %bb.cj ], [ %i.aex, %._crit_edge.i422.loopexit.us.1.i.i ] ; 2 uses
  %i.aey = fcmp reassoc nsz arcp contract afn ogt float %i.aef, %.1.i423.us488.1.i.i
  %i.aez = select reassoc nsz arcp contract afn i1 %i.aey, float %i.aef, float %.1.i423.us488.1.i.i ; 2 uses
  br label %.lr.ph.i426.us.2.i.i

.lr.ph.i426.us.2.i.i:                             ; preds = %bb.cn, %_ZL26_interpolate_linear_splinePKfS0_if.exit430.us487.1.i.i
  %indvars.iv.i427.us.2.i.i = phi i64 [ 1, %_ZL26_interpolate_linear_splinePKfS0_if.exit430.us487.1.i.i ], [ %indvars.iv.next.i428.us.2.i.i, %bb.cn ] ; 4 uses
  %i.afa = add nsw i64 %indvars.iv.i427.us.2.i.i, -1 ; 2 uses
  %i.afb = getelementptr inbounds [4 x i8], ptr %i.kk, i64 %i.afa
  %i.afc = load float, ptr %i.afb, align 4, !tbaa !21 ; 3 uses
  %i.afd = fcmp reassoc nsz arcp contract afn ult float %i.acs, %i.afc
  br i1 %i.afd, label %bb.cn, label %bb.cl

bb.cl:                                            ; preds = %.lr.ph.i426.us.2.i.i
  %i.afe = getelementptr inbounds nuw [4 x i8], ptr %i.kk, i64 %indvars.iv.i427.us.2.i.i
  %i.aff = load float, ptr %i.afe, align 4, !tbaa !21 ; 2 uses
  %i.afg = fcmp reassoc nsz arcp contract afn ugt float %i.acs, %i.aff
  br i1 %i.afg, label %bb.cn, label %bb.cm

bb.cm:                                            ; preds = %bb.cl
  %i.afh = getelementptr inbounds nuw [4 x i8], ptr %i.aco, i64 %indvars.iv.i427.us.2.i.i
  %i.afi = load float, ptr %i.afh, align 4, !tbaa !21
  %i.afj = getelementptr inbounds [4 x i8], ptr %i.aco, i64 %i.afa
  %i.afk = load float, ptr %i.afj, align 4, !tbaa !21 ; 2 uses
  %i.afl = fsub reassoc nsz arcp contract afn float %i.afi, %i.afk
  %i.afm = fsub reassoc nsz arcp contract afn float %i.aff, %i.afc
  %i.afn = fsub reassoc nsz arcp contract afn float %i.acs, %i.afc
  %i.afo = fmul reassoc nsz arcp contract afn float %i.afl, %i.afn
  %i.afp = fdiv reassoc nsz arcp contract afn float %i.afo, %i.afm
  %i.afq = fadd reassoc nsz arcp contract afn float %i.afp, %i.afk
  br label %_ZL26_interpolate_linear_splinePKfS0_if.exit430.us487.2.i.i

bb.cn:                                            ; preds = %bb.cl, %.lr.ph.i426.us.2.i.i
  %indvars.iv.next.i428.us.2.i.i = add nuw nsw i64 %indvars.iv.i427.us.2.i.i, 1 ; 2 uses
  %exitcond.not.i429.us.2.i.i = icmp eq i64 %indvars.iv.next.i428.us.2.i.i, %wide.trip.count.i425.i.i
  br i1 %exitcond.not.i429.us.2.i.i, label %._crit_edge.i422.loopexit.us.2.i.i, label %.lr.ph.i426.us.2.i.i, !llvm.loop !0

._crit_edge.i422.loopexit.us.2.i.i:               ; preds = %bb.cn
  %i.afr = load float, ptr %i.acq, align 4, !tbaa !21
  br label %_ZL26_interpolate_linear_splinePKfS0_if.exit430.us487.2.i.i

_ZL26_interpolate_linear_splinePKfS0_if.exit430.us487.2.i.i: ; preds = %._crit_edge.i422.loopexit.us.2.i.i, %bb.cm
  %.1.i423.us488.2.i.i = phi nsz float [ %i.afq, %bb.cm ], [ %i.afr, %._crit_edge.i422.loopexit.us.2.i.i ] ; 2 uses
  %i.afs = fcmp reassoc nsz arcp contract afn ogt float %i.aez, %.1.i423.us488.2.i.i
  %i.aft = select reassoc nsz arcp contract afn i1 %i.afs, float %i.aez, float %.1.i423.us488.2.i.i
  br label %.split484.us.i.i

.preheader.i60.i:                                 ; preds = %.split484.us.i.i
  %i.afu = icmp sgt i32 %.0327.i.i, 0
  br i1 %i.afu, label %.lr.ph499.i.i.preheader, label %.sink.split.i41

.lr.ph499.i.i.preheader:                          ; preds = %.preheader.i60.i
  %min.iters.check468 = icmp ult i32 %.0327.i.i, 8
  br i1 %min.iters.check468, label %.lr.ph499.i.i.preheader522, label %vector.ph469

vector.ph469:                                     ; preds = %.lr.ph499.i.i.preheader
  %n.vec470 = and i64 %wide.trip.count.i425.i.i, 2147483640 ; 3 uses
  %broadcast.splatinsert471 = insertelement <8 x float> poison, float %.us-phi.i58.i, i64 0
  %broadcast.splat472 = shufflevector <8 x float> %broadcast.splatinsert471, <8 x float> poison, <8 x i32> zeroinitializer ; 4 uses
  %i.afv = fdiv reassoc nsz arcp contract afn <8 x float> splat (float 1.000000e+00), %broadcast.splat472
  %i.afw = fdiv reassoc nsz arcp contract afn <8 x float> splat (float 1.000000e+00), %broadcast.splat472
  %i.afx = fdiv reassoc nsz arcp contract afn <8 x float> splat (float 1.000000e+00), %broadcast.splat472
  br label %vector.body473

vector.body473:                                   ; preds = %vector.body473, %vector.ph469
  %index474 = phi i64 [ 0, %vector.ph469 ], [ %index.next478, %vector.body473 ] ; 3 uses
  %i.afy = getelementptr inbounds nuw [4 x i8], ptr %i.kk, i64 %index474 ; 2 uses
  %wide.load = load <8 x float>, ptr %i.afy, align 4, !tbaa !21
  %i.afz = fmul reassoc nsz arcp contract afn <8 x float> %wide.load, %broadcast.splat472
  store <8 x float> %i.afz, ptr %i.afy, align 4, !tbaa !21
  %i.aga = getelementptr inbounds nuw [4 x i8], ptr %i.km, i64 %index474 ; 4 uses
  %wide.load475.a = load <8 x float>, ptr %i.aga, align 4, !tbaa !21
  %i.agb = fmul reassoc nsz arcp contract afn <8 x float> %wide.load475.a, %i.afv
  store <8 x float> %i.agb, ptr %i.aga, align 4, !tbaa !21
  %i.agc = getelementptr inbounds nuw i8, ptr %i.aga, i64 64 ; 2 uses
  %wide.load476.a = load <8 x float>, ptr %i.agc, align 4, !tbaa !21
  %i.agd = fmul reassoc nsz arcp contract afn <8 x float> %wide.load476.a, %i.afw
  store <8 x float> %i.agd, ptr %i.agc, align 4, !tbaa !21
  %i.age = getelementptr inbounds nuw i8, ptr %i.aga, i64 128 ; 2 uses
  %wide.load477 = load <8 x float>, ptr %i.age, align 4, !tbaa !21
  %i.agf = fmul reassoc nsz arcp contract afn <8 x float> %wide.load477, %i.afx
  store <8 x float> %i.agf, ptr %i.age, align 4, !tbaa !21
  %index.next478 = add nuw i64 %index474, 8       ; 2 uses
  %i.agg = icmp eq i64 %index.next478, %n.vec470
  br i1 %i.agg, label %middle.block479, label %vector.body473, !llvm.loop !390

middle.block479:                                  ; preds = %vector.body473
  %cmp.n480 = icmp eq i64 %n.vec470, %wide.trip.count.i425.i.i
  br i1 %cmp.n480, label %.sink.split.i41, label %.lr.ph499.i.i.preheader522

.lr.ph499.i.i.preheader522:                       ; preds = %.lr.ph499.i.i.preheader, %middle.block479
  %indvars.iv589.i.i.ph = phi i64 [ 0, %.lr.ph499.i.i.preheader ], [ %n.vec470, %middle.block479 ]
  %i.agh = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %.us-phi.i58.i
  %i.agi = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %.us-phi.i58.i
  %i.agj = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %.us-phi.i58.i
  br label %.lr.ph499.i.i

.split484.us.i.i:                                 ; preds = %_ZL26_interpolate_linear_splinePKfS0_if.exit430.us487.2.i.i, %.preheader.i421.preheader.i.i, %_ZL26_interpolate_linear_splinePKfS0_if.exit430.us.preheader.i.i
  %.us-phi.i58.i = phi float [ %i.aft, %_ZL26_interpolate_linear_splinePKfS0_if.exit430.us487.2.i.i ], [ %i.adc, %_ZL26_interpolate_linear_splinePKfS0_if.exit430.us.preheader.i.i ], [ %i.adl, %.preheader.i421.preheader.i.i ] ; 6 uses
  %.int.i59.i = add nuw nsw i32 %.0329494.int.i.i, 1 ; 2 uses
  %exitcond584.not.i.i = icmp eq i32 %.int.i59.i, 200
  br i1 %exitcond584.not.i.i, label %.preheader.i60.i, label %.preheader434.i.i, !llvm.loop !391

.lr.ph499.i.i:                                    ; preds = %.lr.ph499.i.i.preheader522, %.lr.ph499.i.i
  %indvars.iv589.i.i = phi i64 [ %indvars.iv.next590.i.i, %.lr.ph499.i.i ], [ %indvars.iv589.i.i.ph, %.lr.ph499.i.i.preheader522 ] ; 3 uses
  %i.agk = getelementptr inbounds nuw [4 x i8], ptr %i.kk, i64 %indvars.iv589.i.i ; 2 uses
  %i.agl = load float, ptr %i.agk, align 4, !tbaa !21
  %i.agm = fmul reassoc nsz arcp contract afn float %i.agl, %.us-phi.i58.i
  store float %i.agm, ptr %i.agk, align 4, !tbaa !21
  %invariant.gep495.i.i = getelementptr inbounds nuw [4 x i8], ptr %i.km, i64 %indvars.iv589.i.i ; 4 uses
  %i.agn = load float, ptr %invariant.gep495.i.i, align 4, !tbaa !21
  %i.ago = fmul reassoc nsz arcp contract afn float %i.agn, %i.agh
  store float %i.ago, ptr %invariant.gep495.i.i, align 4, !tbaa !21
  %gep496.1.i.i = getelementptr inbounds nuw i8, ptr %invariant.gep495.i.i, i64 64 ; 2 uses
  %i.agp = load float, ptr %gep496.1.i.i, align 4, !tbaa !21
  %i.agq = fmul reassoc nsz arcp contract afn float %i.agp, %i.agi
  store float %i.agq, ptr %gep496.1.i.i, align 4, !tbaa !21
  %gep496.2.i.i = getelementptr inbounds nuw i8, ptr %invariant.gep495.i.i, i64 128 ; 2 uses
  %i.agr = load float, ptr %gep496.2.i.i, align 4, !tbaa !21
  %i.ags = fmul reassoc nsz arcp contract afn float %i.agr, %i.agj
  store float %i.ags, ptr %gep496.2.i.i, align 4, !tbaa !21
  %indvars.iv.next590.i.i = add nuw nsw i64 %indvars.iv589.i.i, 1 ; 2 uses
  %exitcond593.not.i.i = icmp eq i64 %indvars.iv.next590.i.i, %wide.trip.count.i425.i.i
  br i1 %exitcond593.not.i.i, label %.sink.split.i41, label %.lr.ph499.i.i, !llvm.loop !392

.sink.split.i41:                                  ; preds = %.lr.ph499.i.i, %middle.block479, %.preheader.i60.i
  store i32 %.0327.i.i, ptr %i.ej, align 8, !tbaa !129
  br label %bb.co

bb.co:                                            ; preds = %.sink.split.i41, %bb.av, %bb.y
  %5 = phi ptr [ %i.eh, %bb.y ], [ %i.eh, %.sink.split.i41 ], [ %.pre149.i, %bb.av ]
  %i.agt = getelementptr inbounds nuw i8, ptr %.0, i64 328
  %i.agu = load float, ptr %i.agt, align 4, !tbaa !184 ; 3 uses
  %i.agv = getelementptr inbounds nuw i8, ptr %i.ee, i64 96
  %i.agw = fcmp reassoc nsz arcp contract afn olt float %i.agu, 1.000000e-01
  %i.agx = fcmp reassoc nsz arcp contract afn ogt float %i.agu, 2.000000e+00
  %or.cond53.i = or i1 %i.agw, %i.agx
  %spec.store.select.i = select i1 %or.cond53.i, float 1.000000e+00, float %i.agu
  store float %spec.store.select.i, ptr %i.agv, align 8, !tbaa !131
  %i.agy = load i32, ptr %5, align 16, !tbaa !402
  %i.agz = icmp ne i32 %i.agy, 0
  %i.aha = icmp ne ptr %i.eg, null
  %or.cond.i42.a = select i1 %i.agz, i1 %i.aha, i1 false
  br i1 %or.cond.i42.a, label %bb.cp, label %_ZL17_commit_params_lfP15dt_iop_module_tP20dt_iop_lens_params_tP18dt_dev_pixelpipe_tP22dt_dev_pixelpipe_iop_t.exit

bb.cp:                                            ; preds = %bb.co
  %i.ahb = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ahc = load ptr, ptr %i.ahb, align 8, !tbaa !69
  %i.ahd = getelementptr i8, ptr %i.ahc, i64 644
  %.val54.i = load i32, ptr %i.ahd, align 4, !tbaa !100
  %i.ahe = and i32 %.val54.i, 4
  %.not51.i = icmp eq i32 %i.ahe, 0
  br i1 %.not51.i, label %_ZL17_commit_params_lfP15dt_iop_module_tP20dt_iop_lens_params_tP18dt_dev_pixelpipe_tP22dt_dev_pixelpipe_iop_t.exit, label %bb.cq

bb.cq:                                            ; preds = %bb.cp
  %i.ahf = getelementptr inbounds nuw i8, ptr %0, i64 712 ; 2 uses
  %i.ahg = call noundef i32 @pthread_mutex_lock(ptr noundef nonnull %i.ahf) #30 ; 0 uses
  %i.ahh = load i32, ptr %i.ej, align 8, !tbaa !129 ; 2 uses
  %i.ahi = icmp sgt i32 %i.ahh, 0
  br i1 %i.ahi, label %.lr.ph.i71.i, label %_ZL21_check_corrections_mdP18dt_iop_lens_data_t.exit.i

.lr.ph.i71.i:                                     ; preds = %bb.cq
  %i.ahj = getelementptr inbounds nuw i8, ptr %i.ee, i64 428
  %i.ahk = getelementptr inbounds nuw i8, ptr %i.ee, i64 236
  %wide.trip.count.i72.i = zext nneg i32 %i.ahh to i64
  br label %bb.cr

._crit_edge.loopexit.i.i:                         ; preds = %bb.cu
  %i.ahl = icmp ne i32 %.1.i.i, 0
  %i.ahm = icmp ne <2 x i32> %i.aii, zeroinitializer
  br label %_ZL21_check_corrections_mdP18dt_iop_lens_data_t.exit.i

bb.cr:                                            ; preds = %bb.cu, %.lr.ph.i71.i
  %indvars.iv.i73.i = phi i64 [ 0, %.lr.ph.i71.i ], [ %indvars.iv.next.i77.i, %bb.cu ] ; 3 uses
  %.03145.i.i = phi i32 [ 0, %.lr.ph.i71.i ], [ %.1.i.i, %bb.cu ]
  %i.ahn = phi <2 x i32> [ zeroinitializer, %.lr.ph.i71.i ], [ %i.aii, %bb.cu ]
  %i.aho = getelementptr inbounds nuw [4 x i8], ptr %i.ahj, i64 %indvars.iv.i73.i
  %i.ahp = load float, ptr %i.aho, align 4, !tbaa !21
  %invariant.gep.i74.i = getelementptr inbounds nuw [4 x i8], ptr %i.ahk, i64 %indvars.iv.i73.i ; 3 uses
  %i.ahq = load float, ptr %invariant.gep.i74.i, align 4, !tbaa !21 ; 3 uses
  %gep.1.i.i = getelementptr inbounds nuw i8, ptr %invariant.gep.i74.i, i64 64
  %i.ahr = load float, ptr %gep.1.i.i, align 4, !tbaa !21 ; 3 uses
  %i.ahs = insertelement <2 x float> poison, float %i.ahq, i64 0
  %i.aht = insertelement <2 x float> %i.ahs, float %i.ahr, i64 1
  %i.ahu = fadd reassoc nsz arcp contract afn <2 x float> %i.aht, splat (float -1.000000e+00)
  %i.ahv = call reassoc nsz arcp contract afn <2 x float> @llvm.fabs.v2f32(<2 x float> %i.ahu)
  %i.ahw = fcmp reassoc nsz arcp contract afn uge <2 x float> %i.ahv, splat (float 1.000000e-07)
  %i.ahx = bitcast <2 x i1> %i.ahw to i2
  %i.ahy = icmp ne i2 %i.ahx, 0
  %gep.2.i.i = getelementptr inbounds nuw i8, ptr %invariant.gep.i74.i, i64 128
  %i.ahz = load float, ptr %gep.2.i.i, align 4, !tbaa !21 ; 3 uses
  %i.aia = insertelement <2 x float> poison, float %i.ahp, i64 0
  %i.aib = insertelement <2 x float> %i.aia, float %i.ahz, i64 1
  %i.aic = fadd reassoc nsz arcp contract afn <2 x float> %i.aib, splat (float -1.000000e+00)
  %i.aid = call reassoc nsz arcp contract afn <2 x float> @llvm.fabs.v2f32(<2 x float> %i.aic)
  %i.aie = fcmp reassoc nsz arcp contract afn uge <2 x float> %i.aid, splat (float 1.000000e-07) ; 2 uses
  %i.aif = extractelement <2 x i1> %i.aie, i64 1
  %i.aig = or i1 %i.aif, %i.ahy
  %i.aih = insertelement <2 x i1> %i.aie, i1 %i.aig, i64 1
  %i.aii = select <2 x i1> %i.aih, <2 x i32> splat (i32 1), <2 x i32> %i.ahn ; 2 uses
  %i.aij = fcmp reassoc nsz arcp contract afn une float %i.ahq, %i.ahr
  br i1 %i.aij, label %bb.ct, label %bb.cs

bb.cs:                                            ; preds = %bb.cr
  %i.aik = fcmp reassoc nsz arcp contract afn une float %i.ahq, %i.ahz
  %i.ail = fcmp reassoc nsz arcp contract afn une float %i.ahr, %i.ahz
  %or.cond.i76.i = or i1 %i.aik, %i.ail
  br i1 %or.cond.i76.i, label %bb.ct, label %bb.cu

bb.ct:                                            ; preds = %bb.cs, %bb.cr
  br label %bb.cu

bb.cu:                                            ; preds = %bb.ct, %bb.cs
  %.1.i.i = phi i32 [ 1, %bb.ct ], [ %.03145.i.i, %bb.cs ] ; 2 uses
  %indvars.iv.next.i77.i = add nuw nsw i64 %indvars.iv.i73.i, 1 ; 2 uses
  %exitcond.not.i78.i = icmp eq i64 %indvars.iv.next.i77.i, %wide.trip.count.i72.i
  br i1 %exitcond.not.i78.i, label %._crit_edge.loopexit.i.i, label %bb.cr, !llvm.loop !393

_ZL21_check_corrections_mdP18dt_iop_lens_data_t.exit.i: ; preds = %._crit_edge.loopexit.i.i, %bb.cq
  %.031.lcssa.i.i = phi i1 [ false, %bb.cq ], [ %i.ahl, %._crit_edge.loopexit.i.i ]
  %i.aim = phi <2 x i1> [ zeroinitializer, %bb.cq ], [ %i.ahm, %._crit_edge.loopexit.i.i ]
  %i.ain = getelementptr inbounds nuw i8, ptr %i.ee, i64 4
  %i.aio = load i32, ptr %i.ain, align 4, !tbaa !130 ; 2 uses
  %i.aip = trunc i32 %i.aio to i1
  %i.aiq = select i1 %i.aip, i1 %.031.lcssa.i.i, i1 false
  %i.air = zext i1 %i.aiq to i32
  %i.ais = insertelement <2 x i32> poison, i32 %i.aio, i64 0
  %i.ait = shufflevector <2 x i32> %i.ais, <2 x i32> poison, <2 x i32> zeroinitializer
  %i.aiu = and <2 x i32> %i.ait, <i32 2, i32 4>
  %i.aiv = icmp ne <2 x i32> %i.aiu, zeroinitializer
  %i.aiw = select <2 x i1> %i.aiv, <2 x i1> %i.aim, <2 x i1> zeroinitializer
  %i.aix = select <2 x i1> %i.aiw, <2 x i32> <i32 2, i32 4>, <2 x i32> zeroinitializer ; 2 uses
  %i.aiy = extractelement <2 x i32> %i.aix, i64 0
  %i.aiz = or disjoint i32 %i.aiy, %i.air
  %i.aja = extractelement <2 x i32> %i.aix, i64 1
  %i.ajb = or disjoint i32 %i.aiz, %i.aja
  %i.ajc = getelementptr inbounds nuw i8, ptr %i.eg, i64 328
  store i32 %i.ajb, ptr %i.ajc, align 8, !tbaa !179
  %i.ajd = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull %i.ahf) #30 ; 0 uses
  br label %_ZL17_commit_params_lfP15dt_iop_module_tP20dt_iop_lens_params_tP18dt_dev_pixelpipe_tP22dt_dev_pixelpipe_iop_t.exit

bb.cv:                                            ; preds = %bb.e
  %i.aje = getelementptr inbounds nuw i8, ptr %0, i64 704
  %i.ajf = load ptr, ptr %i.aje, align 16, !tbaa !60 ; 2 uses
  %i.ajg = load ptr, ptr %i.w, align 8, !tbaa !126
  %i.ajh = load i32, ptr %i.ajg, align 16, !tbaa !402
  %i.aji = icmp ne i32 %i.ajh, 0
  %i.ajj = icmp ne ptr %i.ajf, null
  %or.cond.i43 = select i1 %i.aji, i1 %i.ajj, i1 false
  br i1 %or.cond.i43, label %bb.cw, label %_ZL17_commit_params_lfP15dt_iop_module_tP20dt_iop_lens_params_tP18dt_dev_pixelpipe_tP22dt_dev_pixelpipe_iop_t.exit

bb.cw:                                            ; preds = %bb.cv
  %i.ajk = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ajl = load ptr, ptr %i.ajk, align 8, !tbaa !69
  %i.ajm = getelementptr i8, ptr %i.ajl, i64 644
  %.val.i44 = load i32, ptr %i.ajm, align 4, !tbaa !100
  %i.ajn = and i32 %.val.i44, 4
  %.not.i45 = icmp eq i32 %i.ajn, 0
  br i1 %.not.i45, label %_ZL17_commit_params_lfP15dt_iop_module_tP20dt_iop_lens_params_tP18dt_dev_pixelpipe_tP22dt_dev_pixelpipe_iop_t.exit, label %bb.cx

bb.cx:                                            ; preds = %bb.cw
  %i.ajo = getelementptr inbounds nuw i8, ptr %0, i64 712 ; 2 uses
  %i.ajp = tail call noundef i32 @pthread_mutex_lock(ptr noundef nonnull %i.ajo) #30 ; 0 uses
  %i.ajq = getelementptr inbounds nuw i8, ptr %i.ajf, i64 328
  store i32 0, ptr %i.ajq, align 8, !tbaa !179
  %i.ajr = tail call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull %i.ajo) #30 ; 0 uses
  br label %_ZL17_commit_params_lfP15dt_iop_module_tP20dt_iop_lens_params_tP18dt_dev_pixelpipe_tP22dt_dev_pixelpipe_iop_t.exit

_ZL17_commit_params_lfP15dt_iop_module_tP20dt_iop_lens_params_tP18dt_dev_pixelpipe_tP22dt_dev_pixelpipe_iop_t.exit: ; preds = %bb.cx, %bb.cw, %bb.cv, %_ZL21_check_corrections_mdP18dt_iop_lens_data_t.exit.i, %bb.cp, %bb.co, %bb.x, %bb.w, %bb.v, %bb.u
  ret void
}

declare i32 @dt_image_is_monochrome(ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: write, inaccessiblemem: readwrite, errnomem: write) uwtable
define void @init_pipe(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef readnone captures(none) %1, ptr nofree noundef writeonly captures(none) initializes((16, 24)) %2) local_unnamed_addr #10 {
bb.a:
  %i.a = tail call noalias dereferenceable_or_null(2568) ptr @calloc(i64 noundef 1, i64 noundef 2568) #31
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 16
  store ptr %i.a, ptr %i.b, align 16, !tbaa !44
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define void @cleanup_pipe(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef readnone captures(none) %1, ptr nofree noundef captures(none) %2) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 16, !tbaa !44  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !115  ; 3 uses
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN6lfLensD1Ev(ptr noundef nonnull align 8 dead_on_return(116) dereferenceable(116) %i.d) #30
  tail call void @_ZdlPvm(ptr noundef nonnull %i.d, i64 noundef 120) #33
  store ptr null, ptr %i.c, align 8, !tbaa !115
  %.pre = load ptr, ptr %i.a, align 16, !tbaa !44
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.e = phi ptr [ %.pre, %bb.b ], [ %i.b, %bb.a ]
  tail call void @free(ptr noundef %i.e) #30
  store ptr null, ptr %i.a, align 16, !tbaa !44
  ret void
}

; Function Attrs: nounwind
declare void @_ZN6lfLensD1Ev(ptr noundef nonnull align 8 dead_on_return(116) dereferenceable(116)) unnamed_addr #2

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #11

; Function Attrs: mustprogress uwtable
define void @init_global(ptr nofree noundef writeonly captures(none) initializes((520, 528)) %0) local_unnamed_addr #3 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca [4096 x i8], align 16             ; 5 uses
  %i.b = tail call noalias dereferenceable_or_null(40) ptr @calloc(i64 noundef 1, i64 noundef 40) #31 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 520
  store ptr %i.b, ptr %i.c, align 8, !tbaa !188
  store <8 x i32> splat (i32 -999), ptr %i.b, align 8, !tbaa !24
  %i.d = tail call noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #34 ; 11 uses
  invoke void @_ZN10lfDatabaseC1Ev(ptr noundef nonnull align 8 dereferenceable(40) %i.d)
          to label %bb.b unwind label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store ptr %i.d, ptr %i.e, align 8, !tbaa !168
  %i.f = tail call noundef i32 @_ZN10lfDatabase4LoadEv(ptr noundef nonnull align 8 dereferenceable(40) %i.d)
  %.not = icmp eq i32 %i.f, 0
  br i1 %.not, label %bb.g, label %_ZL15g_strdup_inlinePKc.exit

_ZL15g_strdup_inlinePKc.exit:                     ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #30
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(4096) %i.a, i8 0, i64 4096, i1 false)
  call void @dt_loc_get_datadir(ptr noundef nonnull %i.a, i64 noundef 4096)
  %i.g = call ptr @g_file_parse_name(ptr noundef nonnull %i.a) ; 2 uses
  %i.h = call ptr @g_file_get_parent(ptr noundef %i.g)
  %i.i = call ptr @g_file_get_path(ptr noundef %i.h) ; 3 uses
end_hunk_1
