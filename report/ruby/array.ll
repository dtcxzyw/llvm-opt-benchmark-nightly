Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruby/original/array?download=true
inline.NumInlined: 1444
inline.NumDeleted: 143
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 5
begin_hunk_0_@ary_sample:bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bm, i8 0, i64 24, i1 false)
  %i.bn = tail call noalias nonnull ptr @ruby_xmalloc2(i64 noundef 0, i64 noundef 8) #25
  %i.bo = getelementptr i8, ptr %i.bl, i64 32
  store ptr %i.bn, ptr %i.bo, align 8, !tbaa !26
  store i64 0, ptr %i.bm, align 8, !tbaa !26
  br label %rb_ary_elt.exit

.loopexit:                                        ; preds = %bb.t, %rb_array_len.exit220
  %spec.select209 = tail call i64 @llvm.smin.i64(i64 %spec.select, i64 %.0.i219) ; 19 uses
  switch i64 %spec.select209, label %bb.aj [
    i64 0, label %bb.x
    i64 1, label %bb.aa
    i64 2, label %bb.ad
    i64 3, label %bb.ag
  ]

bb.x:                                             ; preds = %.loopexit
  %i.bp = load i64, ptr @rb_cArray, align 8, !tbaa !27 ; 2 uses
  %i.bq = tail call zeroext i1 @rb_gc_size_allocatable_p(i64 noundef 40) #24
  %i.br = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @ruby_current_ec) ; 2 uses
  br i1 %i.bq, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !37
  store volatile ptr %i.bs, ptr %i.b, align 8, !tbaa !37
  %.0..0..0..0..0..0..0..0..0..0..i.i.i263 = load volatile ptr, ptr %i.b, align 8, !tbaa !37
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.bt = tail call i64 @rb_wb_protected_newobj_of(ptr noundef %.0..0..0..0..0..0..0..0..0..0..i.i.i263, i64 noundef %i.bp, i64 noundef 8199, i32 noundef 0, i64 noundef 40) #24
  br label %rb_ary_elt.exit

bb.z:                                             ; preds = %bb.x
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.bu = load ptr, ptr %i.br, align 8, !tbaa !37
  store volatile ptr %i.bu, ptr %i.a, align 8, !tbaa !37
  %.0..0..0..0..0..0..0..0..0..0..i.i14.i261 = load volatile ptr, ptr %i.a, align 8, !tbaa !37
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.bv = tail call i64 @rb_wb_protected_newobj_of(ptr noundef %.0..0..0..0..0..0..0..0..0..0..i.i14.i261, i64 noundef %i.bp, i64 noundef 7, i32 noundef 0, i64 noundef 40) #24 ; 2 uses
  %i.bw = inttoptr i64 %i.bv to ptr               ; 2 uses
  %i.bx = getelementptr i8, ptr %i.bw, i64 16     ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bx, i8 0, i64 24, i1 false)
  %i.by = tail call noalias nonnull ptr @ruby_xmalloc2(i64 noundef 0, i64 noundef 8) #25
  %i.bz = getelementptr i8, ptr %i.bw, i64 32
  store ptr %i.by, ptr %i.bz, align 8, !tbaa !26
  store i64 0, ptr %i.bx, align 8, !tbaa !26
  br label %rb_ary_elt.exit

bb.aa:                                            ; preds = %.loopexit
  %i.ca = load i64, ptr %i.g, align 16, !tbaa !27
  br i1 %.not.i218, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.cb = getelementptr i8, ptr %i.m, i64 16
  br label %RARRAY_AREF.exit

bb.ac:                                            ; preds = %bb.aa
  %i.cc = getelementptr i8, ptr %i.m, i64 32
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !26
  br label %RARRAY_AREF.exit

RARRAY_AREF.exit:                                 ; preds = %bb.ab, %bb.ac
  %.0.i.i222 = phi ptr [ %i.cb, %bb.ab ], [ %i.cd, %bb.ac ]
  %i.ce = getelementptr [8 x i8], ptr %.0.i.i222, i64 %i.ca
  %i.cf = load i64, ptr %i.ce, align 8, !tbaa !27
  %i.cg = tail call i64 (i64, ...) @rb_ary_new_from_args(i64 noundef 1, i64 noundef %i.cf)
  br label %rb_ary_elt.exit

bb.ad:                                            ; preds = %.loopexit
  %i.ch = load i64, ptr %i.g, align 16, !tbaa !27 ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.cj = load i64, ptr %i.ci, align 8, !tbaa !27 ; 2 uses
  %.not203 = icmp sge i64 %i.cj, %i.ch
  %i.ck = zext i1 %.not203 to i64
  br i1 %.not.i218, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.cl = getelementptr i8, ptr %i.m, i64 16
  br label %RARRAY_AREF.exit228

bb.af:                                            ; preds = %bb.ad
  %i.cm = getelementptr i8, ptr %i.m, i64 32
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !26
  br label %RARRAY_AREF.exit228

RARRAY_AREF.exit228:                              ; preds = %bb.ae, %bb.af
  %.pn277 = phi ptr [ %i.cl, %bb.ae ], [ %i.cn, %bb.af ] ; 2 uses
  %.in276 = getelementptr [8 x i8], ptr %.pn277, i64 %i.ch
  %i.co = load i64, ptr %.in276, align 8, !tbaa !27
  %i.cp = getelementptr [8 x i8], ptr %.pn277, i64 %i.cj
  %i.cq = getelementptr [8 x i8], ptr %i.cp, i64 %i.ck
  %i.cr = load i64, ptr %i.cq, align 8, !tbaa !27
  %i.cs = tail call i64 (i64, ...) @rb_ary_new_from_args(i64 noundef 2, i64 noundef %i.co, i64 noundef %i.cr)
  br label %rb_ary_elt.exit

bb.ag:                                            ; preds = %.loopexit
  %i.ct = load i64, ptr %i.g, align 16, !tbaa !27 ; 4 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.cv = load i64, ptr %i.cu, align 8, !tbaa !27 ; 4 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.cx = load i64, ptr %i.cw, align 16, !tbaa !27 ; 4 uses
  %.not200 = icmp slt i64 %i.cv, %i.ct            ; 2 uses
  %i.cy = add i64 %i.cv, 1                        ; 2 uses
  %.1173 = select i1 %.not200, i64 %i.cv, i64 %i.cy
  %.0169 = tail call i64 @llvm.smin.i64(i64 %i.cv, i64 %i.ct)
  %.0168 = select i1 %.not200, i64 %i.ct, i64 %i.cy
  %.not201 = icmp slt i64 %i.cx, %.0169
  %i.cz = add i64 %i.cx, 1                        ; 2 uses
  %.not202 = icmp slt i64 %i.cz, %.0168
  %i.da = add i64 %i.cx, 2
  %spec.select211 = select i1 %.not202, i64 %i.cz, i64 %i.da
  %.0170 = select i1 %.not201, i64 %i.cx, i64 %spec.select211
  br i1 %.not.i218, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.db = getelementptr i8, ptr %i.m, i64 16
  br label %RARRAY_AREF.exit237

bb.ai:                                            ; preds = %bb.ag
  %i.dc = getelementptr i8, ptr %i.m, i64 32
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !26
  br label %RARRAY_AREF.exit237

RARRAY_AREF.exit237:                              ; preds = %bb.ah, %bb.ai
  %.pn = phi ptr [ %i.db, %bb.ah ], [ %i.dd, %bb.ai ] ; 3 uses
  %.in274 = getelementptr [8 x i8], ptr %.pn, i64 %i.ct
  %i.de = load i64, ptr %.in274, align 8, !tbaa !27
  %.in = getelementptr [8 x i8], ptr %.pn, i64 %.1173
  %i.df = load i64, ptr %.in, align 8, !tbaa !27
  %i.dg = getelementptr [8 x i8], ptr %.pn, i64 %.0170
  %i.dh = load i64, ptr %i.dg, align 8, !tbaa !27
  %i.di = tail call i64 (i64, ...) @rb_ary_new_from_args(i64 noundef 3, i64 noundef %i.de, i64 noundef %i.df, i64 noundef %i.dh)
  br label %rb_ary_elt.exit

bb.aj:                                            ; preds = %.loopexit
  %i.dj = icmp slt i64 %.0.i219, 2560
  br i1 %i.dj, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  %i.dk = sdiv i64 %.0.i219, 128
  br label %bb.aq

bb.al:                                            ; preds = %bb.aj
  %i.dl = icmp samesign ult i64 %.0.i219, 5120
  br i1 %i.dl, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al
  %i.dm = lshr i64 %.0.i219, 6
  br label %bb.aq

bb.an:                                            ; preds = %bb.al
  %i.dn = icmp samesign ult i64 %.0.i219, 10240
  br i1 %i.dn, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %bb.an
  %i.do = lshr i64 %.0.i219, 5
  br label %bb.aq

bb.ap:                                            ; preds = %bb.an
  %i.dp = lshr i64 %.0.i219, 4
  br label %bb.aq

bb.aq:                                            ; preds = %bb.am, %bb.ap, %bb.ao, %bb.ak
  %i.dq = phi i64 [ %i.dk, %bb.ak ], [ %i.dm, %bb.am ], [ %i.do, %bb.ao ], [ %i.dp, %bb.ap ]
  %i.dr = icmp slt i64 %spec.select209, 11
  br i1 %i.dr, label %bb.ar, label %bb.ba

bb.ar:                                            ; preds = %bb.aq
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #24
  %i.ds = load i64, ptr %i.g, align 16, !tbaa !27 ; 2 uses
  store i64 %i.ds, ptr %i.f, align 16, !tbaa !27
  store i64 %i.ds, ptr %i.h, align 16, !tbaa !27
  %i.dt = icmp sgt i64 %spec.select209, 1
  br i1 %i.dt, label %.lr.ph297, label %._crit_edge298

.lr.ph297:                                        ; preds = %bb.ar, %bb.au
  %.3295 = phi i64 [ %i.eh, %bb.au ], [ 1, %bb.ar ] ; 7 uses
  %i.du = getelementptr [8 x i8], ptr %i.g, i64 %.3295
  %i.dv = load i64, ptr %i.du, align 8, !tbaa !27 ; 2 uses
  %i.dw = add i64 %i.dv, %.3295
  br label %bb.as

bb.as:                                            ; preds = %.lr.ph297, %bb.at
  %.1171294 = phi i64 [ %i.dv, %.lr.ph297 ], [ %i.ea, %bb.at ] ; 3 uses
  %.2293 = phi i64 [ 0, %.lr.ph297 ], [ %i.eb, %bb.at ] ; 3 uses
  %i.dx = getelementptr [8 x i8], ptr %i.h, i64 %.2293
  %i.dy = load i64, ptr %i.dx, align 8, !tbaa !27
  %i.dz = icmp slt i64 %.1171294, %i.dy
  br i1 %i.dz, label %bb.au, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.ea = add i64 %.1171294, 1
  %i.eb = add nuw nsw i64 %.2293, 1               ; 2 uses
  %exitcond309.not = icmp eq i64 %i.eb, %.3295
  br i1 %exitcond309.not, label %bb.au, label %bb.as, !llvm.loop !220

bb.au:                                            ; preds = %bb.as, %bb.at
  %.2.lcssa = phi i64 [ %.2293, %bb.as ], [ %.3295, %bb.at ] ; 2 uses
  %.1171.lcssa = phi i64 [ %.1171294, %bb.as ], [ %i.dw, %bb.at ] ; 2 uses
  %i.ec = getelementptr [8 x i8], ptr %i.h, i64 %.2.lcssa ; 3 uses
  %i.ed = getelementptr i8, ptr %i.ec, i64 8
  %i.ee = sub nuw nsw i64 %.3295, %.2.lcssa
  %i.ef = shl nuw nsw i64 %i.ee, 3
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 %i.ed, ptr noundef nonnull align 8 %i.ec, i64 noundef %i.ef, i1 noundef false) #24
  %i.eg = getelementptr [8 x i8], ptr %i.f, i64 %.3295
  store i64 %.1171.lcssa, ptr %i.eg, align 8, !tbaa !27
  store i64 %.1171.lcssa, ptr %i.ec, align 8, !tbaa !27
  %i.eh = add nuw nsw i64 %.3295, 1               ; 2 uses
  %exitcond310.not = icmp eq i64 %i.eh, %spec.select209
  br i1 %exitcond310.not, label %._crit_edge298, label %.lr.ph297, !llvm.loop !221

._crit_edge298:                                   ; preds = %bb.au, %bb.ar
  %i.ei = load i64, ptr @rb_cArray, align 8, !tbaa !27
  %i.ej = tail call fastcc i64 @ary_new(i64 noundef %i.ei, i64 noundef %spec.select209) ; 2 uses
  %i.ek = inttoptr i64 %i.ej to ptr               ; 4 uses
  %i.el = load i64, ptr %i.ek, align 8, !tbaa !25
  %i.em = and i64 %i.el, 8192
  %.not.i.i238 = icmp eq i64 %i.em, 0
  br i1 %.not.i.i238, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %._crit_edge298
  %i.en = getelementptr i8, ptr %i.ek, i64 16
  br label %rb_ary_ptr_use_start.exit

bb.aw:                                            ; preds = %._crit_edge298
  %i.eo = getelementptr i8, ptr %i.ek, i64 32
  %i.ep = load ptr, ptr %i.eo, align 8, !tbaa !26
  br label %rb_ary_ptr_use_start.exit

rb_ary_ptr_use_start.exit:                        ; preds = %bb.av, %bb.aw
  %.0.i.i239 = phi ptr [ %i.en, %bb.av ], [ %i.ep, %bb.aw ] ; 3 uses
  %i.eq = icmp sgt i64 %spec.select209, 0
  br i1 %i.eq, label %.lr.ph300.preheader, label %._crit_edge301

.lr.ph300.preheader:                              ; preds = %rb_ary_ptr_use_start.exit
  %i.er = getelementptr i8, ptr %i.m, i64 16      ; 3 uses
  %i.es = getelementptr i8, ptr %i.m, i64 32      ; 3 uses
  %xtraiter = and i64 %spec.select209, 1
  %i.et = icmp eq i64 %spec.select209, 1
  br i1 %i.et, label %.lr.ph300.epil.preheader, label %.lr.ph300.preheader.new

.lr.ph300.preheader.new:                          ; preds = %.lr.ph300.preheader
  %unroll_iter = and i64 %spec.select209, 9223372036854775806
  br label %.lr.ph300

.lr.ph300:                                        ; preds = %RARRAY_AREF.exit242.1, %.lr.ph300.preheader.new
  %.4299 = phi i64 [ 0, %.lr.ph300.preheader.new ], [ %i.fl, %RARRAY_AREF.exit242.1 ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph300.preheader.new ], [ %niter.next.1, %RARRAY_AREF.exit242.1 ]
  %i.eu = getelementptr [8 x i8], ptr %i.f, i64 %.4299
  %i.ev = load i64, ptr %i.eu, align 16, !tbaa !27
  %i.ew = load i64, ptr %i.m, align 8, !tbaa !25
  %i.ex = and i64 %i.ew, 8192
  %.not.i.i240 = icmp eq i64 %i.ex, 0
  br i1 %.not.i.i240, label %bb.ax, label %RARRAY_AREF.exit242

bb.ax:                                            ; preds = %.lr.ph300
  %i.ey = load ptr, ptr %i.es, align 8, !tbaa !26
  br label %RARRAY_AREF.exit242

RARRAY_AREF.exit242:                              ; preds = %.lr.ph300, %bb.ax
  %.0.i.i241 = phi ptr [ %i.ey, %bb.ax ], [ %i.er, %.lr.ph300 ]
  %i.ez = getelementptr [8 x i8], ptr %.0.i.i241, i64 %i.ev
  %i.fa = load i64, ptr %i.ez, align 8, !tbaa !27
  %i.fb = getelementptr [8 x i8], ptr %.0.i.i239, i64 %.4299
  store i64 %i.fa, ptr %i.fb, align 8, !tbaa !27
  %i.fc = or disjoint i64 %.4299, 1               ; 2 uses
  %i.fd = getelementptr [8 x i8], ptr %i.f, i64 %i.fc
  %i.fe = load i64, ptr %i.fd, align 8, !tbaa !27
  %i.ff = load i64, ptr %i.m, align 8, !tbaa !25
  %i.fg = and i64 %i.ff, 8192
  %.not.i.i240.1 = icmp eq i64 %i.fg, 0
  br i1 %.not.i.i240.1, label %bb.ay, label %RARRAY_AREF.exit242.1

bb.ay:                                            ; preds = %RARRAY_AREF.exit242
  %i.fh = load ptr, ptr %i.es, align 8, !tbaa !26
  br label %RARRAY_AREF.exit242.1

RARRAY_AREF.exit242.1:                            ; preds = %bb.ay, %RARRAY_AREF.exit242
  %.0.i.i241.1 = phi ptr [ %i.fh, %bb.ay ], [ %i.er, %RARRAY_AREF.exit242 ]
  %i.fi = getelementptr [8 x i8], ptr %.0.i.i241.1, i64 %i.fe
  %i.fj = load i64, ptr %i.fi, align 8, !tbaa !27
  %i.fk = getelementptr [8 x i8], ptr %.0.i.i239, i64 %i.fc
  store i64 %i.fj, ptr %i.fk, align 8, !tbaa !27
  %i.fl = add nuw nsw i64 %.4299, 2               ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge301.loopexit.unr-lcssa, label %.lr.ph300, !llvm.loop !222

._crit_edge301.loopexit.unr-lcssa:                ; preds = %RARRAY_AREF.exit242.1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge301, label %.lr.ph300.epil.preheader

.lr.ph300.epil.preheader:                         ; preds = %._crit_edge301.loopexit.unr-lcssa, %.lr.ph300.preheader
  %.4299.epil.init = phi i64 [ 0, %.lr.ph300.preheader ], [ %i.fl, %._crit_edge301.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod320 = trunc i64 %spec.select209 to i1
  tail call void @llvm.assume(i1 %lcmp.mod320)
  %i.fm = getelementptr [8 x i8], ptr %i.f, i64 %.4299.epil.init
  %i.fn = load i64, ptr %i.fm, align 8, !tbaa !27
  %i.fo = load i64, ptr %i.m, align 8, !tbaa !25
  %i.fp = and i64 %i.fo, 8192
  %.not.i.i240.epil = icmp eq i64 %i.fp, 0
  br i1 %.not.i.i240.epil, label %bb.az, label %RARRAY_AREF.exit242.epil

bb.az:                                            ; preds = %.lr.ph300.epil.preheader
  %i.fq = load ptr, ptr %i.es, align 8, !tbaa !26
  br label %RARRAY_AREF.exit242.epil

RARRAY_AREF.exit242.epil:                         ; preds = %bb.az, %.lr.ph300.epil.preheader
  %.0.i.i241.epil = phi ptr [ %i.fq, %bb.az ], [ %i.er, %.lr.ph300.epil.preheader ]
  %i.fr = getelementptr [8 x i8], ptr %.0.i.i241.epil, i64 %i.fn
  %i.fs = load i64, ptr %i.fr, align 8, !tbaa !27
  %i.ft = getelementptr [8 x i8], ptr %.0.i.i239, i64 %.4299.epil.init
  store i64 %i.fs, ptr %i.ft, align 8, !tbaa !27
  br label %._crit_edge301

._crit_edge301:                                   ; preds = %RARRAY_AREF.exit242.epil, %._crit_edge301.loopexit.unr-lcssa, %rb_ary_ptr_use_start.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #24
  br label %bb.bp

bb.ba:                                            ; preds = %bb.aq
  %i.fu = sdiv i64 %i.dq, 2
  %.not204 = icmp sgt i64 %spec.select209, %i.fu
  br i1 %.not204, label %bb.bg, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #24
  %i.fv = tail call i64 @rb_data_typed_object_wrap(i64 noundef 0, ptr noundef null, ptr noundef nonnull @ary_sample_memo_type) #24 ; 2 uses
  store i64 %i.fv, ptr %i.i, align 8, !tbaa !27
  %i.fw = tail call ptr @rb_st_init_numtable_with_size(i64 noundef %spec.select209) #24 ; 5 uses
  %i.fx = inttoptr i64 %i.fv to ptr
  %i.fy = getelementptr i8, ptr %i.fx, i64 32     ; 2 uses
  store ptr %i.fw, ptr %i.fy, align 8, !tbaa !227
  %i.fz = load i64, ptr @rb_cArray, align 8, !tbaa !27
  %i.ga = tail call fastcc i64 @ary_new(i64 noundef %i.fz, i64 noundef %spec.select209) ; 2 uses
  %i.gb = inttoptr i64 %i.ga to ptr               ; 4 uses
  %i.gc = load i64, ptr %i.gb, align 8, !tbaa !25
  %i.gd = and i64 %i.gc, 8192
  %.not.i.i243 = icmp eq i64 %i.gd, 0
  br i1 %.not.i.i243, label %bb.bd, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.ge = getelementptr i8, ptr %i.gb, i64 16
  br label %.lr.ph286.preheader

bb.bd:                                            ; preds = %bb.bb
  %i.gf = getelementptr i8, ptr %i.gb, i64 32
  %i.gg = load ptr, ptr %i.gf, align 8, !tbaa !26
  br label %.lr.ph286.preheader

.lr.ph286.preheader:                              ; preds = %bb.bd, %bb.bc
  %.0.i.i244 = phi ptr [ %i.ge, %bb.bc ], [ %i.gg, %bb.bd ] ; 2 uses
  br label %.lr.ph286

.lr.ph286:                                        ; preds = %.lr.ph286.preheader, %.lr.ph286
  %.0167285 = phi i64 [ %spec.select212, %.lr.ph286 ], [ 0, %.lr.ph286.preheader ]
  %.5284 = phi i64 [ %i.gm, %.lr.ph286 ], [ 0, %.lr.ph286.preheader ] ; 4 uses
  %i.gh = xor i64 %.5284, -1
  %i.gi = add i64 %.0.i219, %i.gh
  %i.gj = tail call i64 @rb_random_ulong_limited(i64 noundef %2, i64 noundef %i.gi) #24
  %i.gk = add i64 %i.gj, %.5284                   ; 2 uses
  %i.gl = getelementptr [8 x i8], ptr %.0.i.i244, i64 %.5284
  store i64 %i.gk, ptr %i.gl, align 8, !tbaa !27
  %spec.select212 = tail call i64 @llvm.smax.i64(i64 %i.gk, i64 %.0167285) ; 3 uses
  %i.gm = add nuw nsw i64 %.5284, 1               ; 2 uses
  %exitcond305.not = icmp eq i64 %i.gm, %spec.select209
  br i1 %exitcond305.not, label %._crit_edge, label %.lr.ph286, !llvm.loop !223

._crit_edge:                                      ; preds = %.lr.ph286
  %i.gn = load i64, ptr %i.m, align 8, !tbaa !25  ; 2 uses
  %i.go = and i64 %i.gn, 8192
  %.not.i246 = icmp eq i64 %i.go, 0
  br i1 %.not.i246, label %bb.bf, label %bb.be

bb.be:                                            ; preds = %._crit_edge
  %i.gp = lshr i64 %i.gn, 15
  %i.gq = and i64 %i.gp, 127                      ; 2 uses
  %.not205 = icmp sgt i64 %i.gq, %spec.select212
  %i.gr = tail call i64 @llvm.umin.i64(i64 %spec.select209, i64 %i.gq)
  %i.gs = getelementptr i8, ptr %i.m, i64 16
  br i1 %.not205, label %rb_ary_ptr_use_start.exit251, label %._crit_edge289

bb.bf:                                            ; preds = %._crit_edge
  %i.gt = getelementptr i8, ptr %i.m, i64 16
  %i.gu = load i64, ptr %i.gt, align 8, !tbaa !26 ; 2 uses
  %.not205269 = icmp sgt i64 %i.gu, %spec.select212
  %spec.select213270 = tail call i64 @llvm.smin.i64(i64 %spec.select209, i64 %i.gu)
  %i.gv = getelementptr i8, ptr %i.m, i64 32
  %i.gw = load ptr, ptr %i.gv, align 8, !tbaa !26
  br i1 %.not205269, label %rb_ary_ptr_use_start.exit251, label %._crit_edge289

rb_ary_ptr_use_start.exit251:                     ; preds = %bb.bf, %bb.be
  %.2179272 = phi i64 [ %i.gr, %bb.be ], [ %spec.select213270, %bb.bf ] ; 4 uses
  %.0.i.i250 = phi ptr [ %i.gs, %bb.be ], [ %i.gw, %bb.bf ]
  %i.gx = icmp sgt i64 %.2179272, 0
  br i1 %i.gx, label %.lr.ph288, label %._crit_edge289

.lr.ph288:                                        ; preds = %rb_ary_ptr_use_start.exit251, %.lr.ph288
  %.6287 = phi i64 [ %i.hh, %.lr.ph288 ], [ 0, %rb_ary_ptr_use_start.exit251 ] ; 4 uses
  %i.gy = getelementptr [8 x i8], ptr %.0.i.i244, i64 %.6287 ; 2 uses
  %i.gz = load i64, ptr %i.gy, align 8, !tbaa !27 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #24
  %i.ha = call i32 @rb_st_lookup(ptr noundef %i.fw, i64 noundef %.6287, ptr noundef nonnull %i.j) #24
  %.not206 = icmp eq i32 %i.ha, 0
end_hunk_0
