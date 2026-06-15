inline.NumInlined: 777
inline.NumDeleted: 367
begin_hunk_0_@_ZN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_111TileProcess10run_decodeEPK19_priv_exr_context_tiPKNS_15DeepFrameBufferERKSt6vectorINS_9DeepSliceESaIS9_EE:bb.a
  %i.au = load i8, ptr %i.at, align 1, !tbaa !164, !range !81, !noundef !82
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 90 ; 2 uses
  %i.aw = load i16, ptr %i.av, align 2, !tbaa !214
  %i.ax = and i16 %i.aw, -5
  %i.ay = shl nuw nsw i8 %i.au, 2
  %masksel = zext nneg i8 %i.ay to i16
  %.sink = or disjoint i16 %i.ax, %masksel        ; 2 uses
  store i16 %.sink, ptr %i.av, align 2, !tbaa !214
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 168
  store i32 0, ptr %i.az, align 8, !tbaa !223
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 172
  store i32 0, ptr %i.ba, align 4, !tbaa !224
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.bc = load i16, ptr %i.bb, align 8, !tbaa !225
  %i.bd = icmp sgt i16 %i.bc, 0
  br i1 %i.bd, label %.lr.ph.i, label %_ZN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_111TileProcess15update_pointersEPKNS_15DeepFrameBufferEiiii.exit

.lr.ph.i:                                         ; preds = %bb.t
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.bf = sext i32 %i.al to i64
  %i.bg = sext i32 %i.as to i64
  br label %bb.u

bb.u:                                             ; preds = %bb.ac, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.ac ] ; 2 uses
  %i.bh = load ptr, ptr %i.be, align 8, !tbaa !226
  %i.bi = getelementptr inbounds nuw [48 x i8], ptr %i.bh, i64 %indvars.iv.i ; 8 uses
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !227
  %i.bk = call noundef ptr @_ZNK27OpenImageIO_v3_1_Imf__3_3_515DeepFrameBuffer9findSliceEPKc(ptr noundef nonnull align 8 dereferenceable(104) %3, ptr noundef %i.bj) ; 10 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  %i.bm = load i32, ptr %i.bl, align 8, !tbaa !229
  %i.bn = icmp ne i32 %i.bm, 0
  %i.bo = icmp ne ptr %i.bk, null
  %or.cond.i = and i1 %i.bo, %i.bn
  br i1 %or.cond.i, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bi, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bp, i8 0, i64 16, i1 false)
  br label %bb.ac

bb.w:                                             ; preds = %bb.u
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bk, i64 32
  %i.br = load i32, ptr %i.bq, align 8, !tbaa !96
  %.not.i = icmp eq i32 %i.br, 1
  br i1 %.not.i, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bk, i64 36
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !98
  %.not37.i = icmp eq i32 %i.bt, 1
  br i1 %.not37.i, label %bb.ab, label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %i.bu = call ptr @__cxa_allocate_exception(i64 72) #26 ; 3 uses
  invoke void @_ZN7Iex_3_36ArgExcC1EPKc(ptr noundef nonnull align 8 dereferenceable(72) %i.bu, ptr noundef nonnull @.str.40)
          to label %bb.z unwind label %bb.aa

bb.z:                                             ; preds = %bb.y
  call void @__cxa_throw(ptr nonnull %i.bu, ptr nonnull @_ZTIN7Iex_3_36ArgExcE, ptr nonnull @_ZN7Iex_3_36ArgExcD1Ev) #27
  unreachable

common.resume:                                    ; preds = %bb.bs, %bb.br, %bb.as, %bb.aa
  %common.resume.op = phi { ptr, i32 } [ %i.bv, %bb.aa ], [ %i.dw, %bb.as ], [ %.pn72.i, %bb.br ], [ %.pn35, %bb.bs ]
  resume { ptr, i32 } %common.resume.op

bb.aa:                                            ; preds = %bb.y
  %i.bv = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.bu) #26
  br label %common.resume

bb.ab:                                            ; preds = %bb.x
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bk, i64 48
  %i.bx = load i8, ptr %i.bw, align 8, !tbaa !230, !range !81, !noundef !82
  %i.by = trunc nuw i8 %i.bx to i1
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bk, i64 49
  %i.ca = load i8, ptr %i.bz, align 1, !tbaa !231, !range !81, !noundef !82
  %i.cb = trunc nuw i8 %i.ca to i1
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bk, i64 52
  %i.cd = load i32, ptr %i.cc, align 4, !tbaa !232
  %i.ce = trunc i32 %i.cd to i16
  %i.cf = getelementptr inbounds nuw i8, ptr %i.bi, i64 28
  store i16 %i.ce, ptr %i.cf, align 4, !tbaa !234
  %i.cg = load i32, ptr %i.bk, align 8, !tbaa !235
  %i.ch = trunc i32 %i.cg to i16
  %i.ci = getelementptr inbounds nuw i8, ptr %i.bi, i64 30
  store i16 %i.ch, ptr %i.ci, align 2, !tbaa !236
  %i.cj = getelementptr inbounds nuw i8, ptr %i.bk, i64 16
  %i.ck = load i64, ptr %i.cj, align 8, !tbaa !237 ; 2 uses
  %i.cl = trunc i64 %i.ck to i32
  %i.cm = getelementptr inbounds nuw i8, ptr %i.bi, i64 32
  store i32 %i.cl, ptr %i.cm, align 8, !tbaa !238
  %i.cn = getelementptr inbounds nuw i8, ptr %i.bk, i64 24
  %i.co = load i64, ptr %i.cn, align 8, !tbaa !239 ; 2 uses
  %i.cp = trunc i64 %i.co to i32
  %i.cq = getelementptr inbounds nuw i8, ptr %i.bi, i64 36
  store i32 %i.cp, ptr %i.cq, align 4, !tbaa !240
  %i.cr = getelementptr inbounds nuw i8, ptr %i.bk, i64 8
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !241
  %i.ct = select i1 %i.by, i64 0, i64 %i.bf
  %i.cu = mul nsw i64 %i.ck, %i.ct
  %i.cv = getelementptr inbounds i8, ptr %i.cs, i64 %i.cu
  %i.cw = select i1 %i.cb, i64 0, i64 %i.bg
  %i.cx = mul nsw i64 %i.co, %i.cw
  %i.cy = getelementptr inbounds i8, ptr %i.cv, i64 %i.cx
  %i.cz = getelementptr inbounds nuw i8, ptr %i.bi, i64 40
  store ptr %i.cy, ptr %i.cz, align 8, !tbaa !63
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.v
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.da = load i16, ptr %i.bb, align 8, !tbaa !225
  %i.db = sext i16 %i.da to i64
  %i.dc = icmp slt i64 %indvars.iv.next.i, %i.db
  br i1 %i.dc, label %bb.u, label %_ZN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_111TileProcess15update_pointersEPKNS_15DeepFrameBufferEiiii.exit.loopexit, !llvm.loop !242

_ZN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_111TileProcess15update_pointersEPKNS_15DeepFrameBufferEiiii.exit.loopexit: ; preds = %bb.ac
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 90
  %.pre = load i16, ptr %.phi.trans.insert, align 2, !tbaa !214
  br label %_ZN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_111TileProcess15update_pointersEPKNS_15DeepFrameBufferEiiii.exit

_ZN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_111TileProcess15update_pointersEPKNS_15DeepFrameBufferEiiii.exit: ; preds = %_ZN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_111TileProcess15update_pointersEPKNS_15DeepFrameBufferEiiii.exit.loopexit, %bb.t
  %i.dd = phi i16 [ %.pre, %_ZN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_111TileProcess15update_pointersEPKNS_15DeepFrameBufferEiiii.exit.loopexit ], [ %.sink, %bb.t ]
  %i.de = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.df = zext i16 %i.dd to i32
  %.not31 = icmp eq i32 %.027, %i.df
  br i1 %.not31, label %bb.ah, label %bb.ad

bb.ad:                                            ; preds = %_ZN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_111TileProcess15update_pointersEPKNS_15DeepFrameBufferEiiii.exit
  %i.dg = call i32 @exr_decoding_choose_default_routines(ptr noundef %1, i32 noundef %2, ptr noundef nonnull %i.de)
  %.not32 = icmp eq i32 %i.dg, 0
  br i1 %.not32, label %bb.ah, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.dh = call ptr @__cxa_allocate_exception(i64 72) #26 ; 3 uses
  invoke void @_ZN7Iex_3_35IoExcC1EPKc(ptr noundef nonnull align 8 dereferenceable(72) %i.dh, ptr noundef nonnull @.str.38)
          to label %bb.af unwind label %bb.ag

bb.af:                                            ; preds = %bb.ae
  call void @__cxa_throw(ptr nonnull %i.dh, ptr nonnull @_ZTIN7Iex_3_35IoExcE, ptr nonnull @_ZN7Iex_3_35IoExcD1Ev) #27
  unreachable

bb.ag:                                            ; preds = %bb.ae
  %i.di = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.dh) #26
  br label %bb.bs

bb.ah:                                            ; preds = %bb.ad, %_ZN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_111TileProcess15update_pointersEPKNS_15DeepFrameBufferEiiii.exit
  %i.dj = call i32 @exr_decoding_run(ptr noundef %1, i32 noundef %2, ptr noundef nonnull %i.de) ; 2 uses
  store i32 %i.dj, ptr %0, align 8, !tbaa !111
  %.not33 = icmp eq i32 %i.dj, 0
  br i1 %.not33, label %bb.ap, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  call void @_Z13iex_debugTrapv()
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #26
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128) %6)
  %i.dk = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.dl = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.dk, ptr noundef nonnull @.str.39, i64 noundef 23)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.am ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.ai
  %i.dm = load i32, ptr %0, align 8, !tbaa !111
  %i.dn = invoke ptr @exr_get_error_code_as_string(i32 noundef %i.dm)
          to label %bb.aj unwind label %bb.am

bb.aj:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.do = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %i.dk, ptr noundef %i.dn)
          to label %bb.ak unwind label %bb.am     ; 0 uses

bb.ak:                                            ; preds = %bb.aj
  %i.dp = call ptr @__cxa_allocate_exception(i64 72) #26 ; 3 uses
  invoke void @_ZN7Iex_3_35IoExcC1ERNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(72) %i.dp, ptr noundef nonnull align 8 dereferenceable(128) %6)
          to label %bb.al unwind label %bb.an

bb.al:                                            ; preds = %bb.ak
  invoke void @__cxa_throw(ptr nonnull %i.dp, ptr nonnull @_ZTIN7Iex_3_35IoExcE, ptr nonnull @_ZN7Iex_3_35IoExcD1Ev) #27
          to label %bb.bt unwind label %bb.am

bb.am:                                            ; preds = %bb.ai, %bb.al, %bb.aj, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.dq = landingpad { ptr, i32 }
          cleanup
  br label %bb.ao

bb.an:                                            ; preds = %bb.ak
  %i.dr = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.dp) #26
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.am
  %.pn = phi { ptr, i32 } [ %i.dq, %bb.am ], [ %i.dr, %bb.an ]
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128) %6) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  br label %bb.bs

bb.ap:                                            ; preds = %bb.ah
  %i.ds = call noundef nonnull align 8 dereferenceable(50) ptr @_ZNK27OpenImageIO_v3_1_Imf__3_3_515DeepFrameBuffer19getSampleCountSliceEv(ptr noundef nonnull align 8 dereferenceable(104) %3) ; 7 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 32
  %i.du = load i32, ptr %i.dt, align 8, !tbaa !96
  %.not.i38.a = icmp eq i32 %i.du, 1
  br i1 %.not.i38.a, label %7, label %bb.aq

7:                                                ; preds = %bb.ap
  %8 = getelementptr inbounds nuw i8, ptr %i.ds, i64 36
  %9 = load i32, ptr %8, align 4, !tbaa !98
  %.not38.i = icmp eq i32 %9, 1
  br i1 %.not38.i, label %bb.at, label %bb.aq

bb.aq:                                            ; preds = %7, %bb.ap
  %i.dv = call ptr @__cxa_allocate_exception(i64 72) #26 ; 3 uses
  invoke void @_ZN7Iex_3_36ArgExcC1EPKc(ptr noundef nonnull align 8 dereferenceable(72) %i.dv, ptr noundef nonnull @.str.40)
          to label %bb.ar unwind label %bb.as

bb.ar:                                            ; preds = %bb.aq
  call void @__cxa_throw(ptr nonnull %i.dv, ptr nonnull @_ZTIN7Iex_3_36ArgExcE, ptr nonnull @_ZN7Iex_3_36ArgExcD1Ev) #27
  unreachable

bb.as:                                            ; preds = %bb.aq
  %i.dw = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.dv) #26
  br label %common.resume

bb.at:                                            ; preds = %7
  %i.dx = getelementptr inbounds nuw i8, ptr %i.ds, i64 48
  %i.dy = load i8, ptr %i.dx, align 8, !tbaa !230, !range !81, !noundef !82
  %i.dz = trunc nuw i8 %i.dy to i1
  %i.ea = getelementptr inbounds nuw i8, ptr %i.ds, i64 49
  %i.eb = load i8, ptr %i.ea, align 1, !tbaa !231, !range !81, !noundef !82
  %i.ec = trunc nuw i8 %i.eb to i1
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ds, i64 8
  %i.ee = load ptr, ptr %i.ed, align 8, !tbaa !241
  %i.ef = sext i32 %i.al to i64                   ; 2 uses
  %i.eg = select i1 %i.dz, i64 0, i64 %i.ef
  %i.eh = getelementptr inbounds nuw i8, ptr %i.ds, i64 16
  %i.ei = load i64, ptr %i.eh, align 8, !tbaa !237 ; 3 uses
  %i.ej = mul nsw i64 %i.ei, %i.eg
  %i.ek = getelementptr inbounds i8, ptr %i.ee, i64 %i.ej
  %i.el = sext i32 %i.as to i64                   ; 2 uses
  %i.em = select i1 %i.ec, i64 0, i64 %i.el
  %i.en = getelementptr inbounds nuw i8, ptr %i.ds, i64 24
  %i.eo = load i64, ptr %i.en, align 8, !tbaa !239 ; 3 uses
  %i.ep = mul nsw i64 %i.eo, %i.em
  %i.eq = getelementptr inbounds i8, ptr %i.ek, i64 %i.ep ; 2 uses
  %i.er = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 4 uses
  %i.es = load i32, ptr %i.er, align 4, !tbaa !243 ; 4 uses
  %i.et = icmp sgt i32 %i.es, 0
  br i1 %i.et, label %.lr.ph44.i, label %_ZN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_111TileProcess17copy_sample_countEPKNS_15DeepFrameBufferEiiii.exit

.lr.ph44.i:                                       ; preds = %bb.at
  %i.eu = getelementptr inbounds nuw i8, ptr %0, i64 240 ; 2 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.ew = icmp eq i64 %i.ei, 4
  br i1 %i.ew, label %.lr.ph44.split.us.i, label %.lr.ph44.split.i

.lr.ph44.split.us.i:                              ; preds = %.lr.ph44.i, %.lr.ph44.split.us.i
  %.03542.us.i = phi ptr [ %i.fe, %.lr.ph44.split.us.i ], [ %i.eq, %.lr.ph44.i ] ; 2 uses
  %.03641.us.i = phi i32 [ %i.ff, %.lr.ph44.split.us.i ], [ 0, %.lr.ph44.i ] ; 2 uses
  %i.ex = load ptr, ptr %i.eu, align 8, !tbaa !244
  %i.ey = load i32, ptr %i.ev, align 8, !tbaa !245 ; 2 uses
  %i.ez = mul nsw i32 %i.ey, %.03641.us.i
  %i.fa = sext i32 %i.ez to i64
  %i.fb = getelementptr inbounds [4 x i8], ptr %i.ex, i64 %i.fa
  %i.fc = sext i32 %i.ey to i64
  %i.fd = shl nsw i64 %i.fc, 2
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.03542.us.i, ptr align 4 %i.fb, i64 %i.fd, i1 false)
  %i.fe = getelementptr inbounds i8, ptr %.03542.us.i, i64 %i.eo
  %i.ff = add nuw nsw i32 %.03641.us.i, 1         ; 2 uses
  %i.fg = load i32, ptr %i.er, align 4, !tbaa !243 ; 2 uses
  %i.fh = icmp slt i32 %i.ff, %i.fg
  br i1 %i.fh, label %.lr.ph44.split.us.i, label %_ZN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_111TileProcess17copy_sample_countEPKNS_15DeepFrameBufferEiiii.exit, !llvm.loop !246

.lr.ph44.split.i:                                 ; preds = %.lr.ph44.i
  %i.fi = load i32, ptr %i.ev, align 8, !tbaa !245 ; 2 uses
  %i.fj = icmp sgt i32 %i.fi, 0
  br i1 %i.fj, label %.preheader.preheader.i, label %_ZN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_111TileProcess17copy_sample_countEPKNS_15DeepFrameBufferEiiii.exit

.preheader.preheader.i:                           ; preds = %.lr.ph44.split.i
  %.pre.i = load ptr, ptr %i.eu, align 8, !tbaa !244
  br label %.preheader.i

.preheader.i:                                     ; preds = %.loopexit.i, %.preheader.preheader.i
  %i.fk = phi i32 [ %i.fw, %.loopexit.i ], [ %i.es, %.preheader.preheader.i ]
  %i.fl = phi i32 [ %i.fx, %.loopexit.i ], [ %i.fi, %.preheader.preheader.i ] ; 3 uses
  %.03542.i = phi ptr [ %i.fy, %.loopexit.i ], [ %i.eq, %.preheader.preheader.i ] ; 2 uses
  %.03641.i = phi i32 [ %i.fz, %.loopexit.i ], [ 0, %.preheader.preheader.i ] ; 2 uses
  %i.fm = mul nsw i32 %.03641.i, %i.fl
  %i.fn = sext i32 %i.fm to i64
  %i.fo = getelementptr inbounds [4 x i8], ptr %.pre.i, i64 %i.fn
  %i.fp = icmp sgt i32 %i.fl, 0
  br i1 %i.fp, label %.lr.ph.i39, label %.loopexit.i

.lr.ph.i39:                                       ; preds = %.preheader.i, %.lr.ph.i39
  %indvars.iv.i40 = phi i64 [ %indvars.iv.next.i41, %.lr.ph.i39 ], [ 0, %.preheader.i ] ; 2 uses
  %.03439.i = phi ptr [ %i.fs, %.lr.ph.i39 ], [ %.03542.i, %.preheader.i ] ; 2 uses
  %i.fq = getelementptr inbounds nuw [4 x i8], ptr %i.fo, i64 %indvars.iv.i40
  %i.fr = load i32, ptr %i.fq, align 4, !tbaa !3
  store i32 %i.fr, ptr %.03439.i, align 4, !tbaa !3
  %i.fs = getelementptr inbounds i8, ptr %.03439.i, i64 %i.ei
  %indvars.iv.next.i41 = add nuw nsw i64 %indvars.iv.i40, 1 ; 2 uses
  %i.ft = load i32, ptr %i.ev, align 8, !tbaa !245 ; 2 uses
  %i.fu = sext i32 %i.ft to i64
  %i.fv = icmp slt i64 %indvars.iv.next.i41, %i.fu
  br i1 %i.fv, label %.lr.ph.i39, label %.loopexit.loopexit.i, !llvm.loop !247

.loopexit.loopexit.i:                             ; preds = %.lr.ph.i39
  %.pre50.i = load i32, ptr %i.er, align 4, !tbaa !243
  br label %.loopexit.i

.loopexit.i:                                      ; preds = %.loopexit.loopexit.i, %.preheader.i
  %i.fw = phi i32 [ %.pre50.i, %.loopexit.loopexit.i ], [ %i.fk, %.preheader.i ] ; 3 uses
  %i.fx = phi i32 [ %i.ft, %.loopexit.loopexit.i ], [ %i.fl, %.preheader.i ]
  %i.fy = getelementptr inbounds i8, ptr %.03542.i, i64 %i.eo
  %i.fz = add nuw nsw i32 %.03641.i, 1            ; 2 uses
  %i.ga = icmp slt i32 %i.fz, %i.fw
  br i1 %i.ga, label %.preheader.i, label %_ZN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_111TileProcess17copy_sample_countEPKNS_15DeepFrameBufferEiiii.exit, !llvm.loop !248

_ZN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_111TileProcess17copy_sample_countEPKNS_15DeepFrameBufferEiiii.exit: ; preds = %.loopexit.i, %.lr.ph44.split.us.i, %bb.at, %.lr.ph44.split.i
  %i.gb = phi i32 [ %i.fg, %.lr.ph44.split.us.i ], [ %i.es, %.lr.ph44.split.i ], [ %i.es, %bb.at ], [ %i.fw, %.loopexit.i ]
  %i.gc = load i8, ptr %i.at, align 1, !tbaa !164, !range !81, !noundef !82
  %i.gd = trunc nuw i8 %i.gc to i1
  br i1 %i.gd, label %_ZN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_111TileProcess8run_fillEPKNS_15DeepFrameBufferEiiiiRKSt6vectorINS_9DeepSliceESaIS6_EE.exit, label %bb.au

bb.au:                                            ; preds = %_ZN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_111TileProcess17copy_sample_countEPKNS_15DeepFrameBufferEiiii.exit
  %.val = load ptr, ptr %4, align 8, !tbaa !249   ; 2 uses
  %i.ge = getelementptr inbounds nuw i8, ptr %4, i64 8
  %.val37 = load ptr, ptr %i.ge, align 8, !tbaa !249 ; 2 uses
  %.not521.i = icmp eq ptr %.val, %.val37
  br i1 %.not521.i, label %_ZN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_111TileProcess8run_fillEPKNS_15DeepFrameBufferEiiiiRKSt6vectorINS_9DeepSliceESaIS6_EE.exit, label %.lr.ph24.i

.lr.ph24.i:                                       ; preds = %bb.au
  %i.gf = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.gg = load ptr, ptr %i.gf, align 8
  %i.gh = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  br label %bb.av

bb.av:                                            ; preds = %._crit_edge20.i, %.lr.ph24.i
  %i.gi = phi i32 [ %i.gb, %.lr.ph24.i ], [ %i.hj, %._crit_edge20.i ] ; 5 uses
  %.sroa.02.022.i = phi ptr [ %.val, %.lr.ph24.i ], [ %i.hk, %._crit_edge20.i ] ; 10 uses
  %i.gj = getelementptr inbounds nuw i8, ptr %.sroa.02.022.i, i64 32
  %i.gk = load i32, ptr %i.gj, align 8, !tbaa !96
  %.not.i42 = icmp eq i32 %i.gk, 1
  br i1 %.not.i42, label %10, label %bb.aw

10:                                               ; preds = %bb.av
  %11 = getelementptr inbounds nuw i8, ptr %.sroa.02.022.i, i64 36
  %12 = load i32, ptr %11, align 4, !tbaa !98
  %.not71.i = icmp eq i32 %12, 1
  br i1 %.not71.i, label %bb.az, label %bb.aw

bb.aw:                                            ; preds = %10, %bb.av
  %i.gl = call ptr @__cxa_allocate_exception(i64 72) #26 ; 3 uses
  invoke void @_ZN7Iex_3_36ArgExcC1EPKc(ptr noundef nonnull align 8 dereferenceable(72) %i.gl, ptr noundef nonnull @.str.40)
          to label %bb.ax unwind label %bb.ay

bb.ax:                                            ; preds = %bb.aw
  call void @__cxa_throw(ptr nonnull %i.gl, ptr nonnull @_ZTIN7Iex_3_36ArgExcE, ptr nonnull @_ZN7Iex_3_36ArgExcD1Ev) #27
  unreachable

bb.ay:                                            ; preds = %bb.aw
  %i.gm = landingpad { ptr, i32 }
          cleanup
  br label %bb.br

bb.az:                                            ; preds = %10
  %i.gn = getelementptr inbounds nuw i8, ptr %.sroa.02.022.i, i64 16
  %i.go = load i64, ptr %i.gn, align 8, !tbaa !237 ; 2 uses
  %i.gp = getelementptr inbounds nuw i8, ptr %.sroa.02.022.i, i64 24
  %i.gq = load i64, ptr %i.gp, align 8, !tbaa !239 ; 2 uses
  %i.gr = icmp sgt i32 %i.gi, 0
  br i1 %i.gr, label %.lr.ph19.i, label %._crit_edge20.i

.lr.ph19.i:                                       ; preds = %bb.az
  %i.gs = getelementptr inbounds nuw i8, ptr %.sroa.02.022.i, i64 40 ; 3 uses
  %i.gt = load i32, ptr %i.gh, align 8, !tbaa !245 ; 3 uses
  %i.gu = icmp sgt i32 %i.gt, 0
  br i1 %i.gu, label %.lr.ph19.split.preheader.i, label %._crit_edge20.i

.lr.ph19.split.preheader.i:                       ; preds = %.lr.ph19.i
  %i.gv = getelementptr inbounds nuw i8, ptr %.sroa.02.022.i, i64 8
  %i.gw = load ptr, ptr %i.gv, align 8, !tbaa !241
  %i.gx = getelementptr inbounds nuw i8, ptr %.sroa.02.022.i, i64 48
  %i.gy = load i8, ptr %i.gx, align 8, !tbaa !230, !range !81, !noundef !82
  %i.gz = trunc nuw i8 %i.gy to i1
  %i.ha = select i1 %i.gz, i64 0, i64 %i.ef
  %i.hb = mul nsw i64 %i.ha, %i.go
  %i.hc = getelementptr inbounds i8, ptr %i.gw, i64 %i.hb
  %i.hd = getelementptr inbounds nuw i8, ptr %.sroa.02.022.i, i64 49
  %i.he = load i8, ptr %i.hd, align 1, !tbaa !231, !range !81, !noundef !82
  %i.hf = trunc nuw i8 %i.he to i1
  %i.hg = select i1 %i.hf, i64 0, i64 %i.el
  %i.hh = mul nsw i64 %i.hg, %i.gq
  %i.hi = getelementptr inbounds i8, ptr %i.hc, i64 %i.hh
  br label %.lr.ph19.split.i

._crit_edge20.i:                                  ; preds = %._crit_edge.i, %.lr.ph19.i, %bb.az
  %i.hj = phi i32 [ %i.gi, %bb.az ], [ %i.gi, %.lr.ph19.i ], [ %i.ht, %._crit_edge.i ]
  %i.hk = getelementptr inbounds nuw i8, ptr %.sroa.02.022.i, i64 56 ; 2 uses
  %.not5.i = icmp eq ptr %i.hk, %.val37
  br i1 %.not5.i, label %_ZN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_111TileProcess8run_fillEPKNS_15DeepFrameBufferEiiiiRKSt6vectorINS_9DeepSliceESaIS6_EE.exit, label %bb.av

.lr.ph19.split.i:                                 ; preds = %._crit_edge.i, %.lr.ph19.split.preheader.i
  %i.hl = phi i32 [ %i.gi, %.lr.ph19.split.preheader.i ], [ %i.ht, %._crit_edge.i ]
  %i.hm = phi i32 [ %i.gi, %.lr.ph19.split.preheader.i ], [ %i.hu, %._crit_edge.i ]
  %i.hn = phi i32 [ %i.gt, %.lr.ph19.split.preheader.i ], [ %i.hv, %._crit_edge.i ] ; 2 uses
  %i.ho = phi i32 [ %i.gt, %.lr.ph19.split.preheader.i ], [ %i.hw, %._crit_edge.i ] ; 3 uses
  %indvars.iv43.i = phi i64 [ 0, %.lr.ph19.split.preheader.i ], [ %indvars.iv.next44.i, %._crit_edge.i ] ; 2 uses
  %.06117.i = phi ptr [ %i.hi, %.lr.ph19.split.preheader.i ], [ %i.hx, %._crit_edge.i ] ; 2 uses
  %i.hp = sext i32 %i.ho to i64
  %i.hq = mul nsw i64 %indvars.iv43.i, %i.hp
  %i.hr = getelementptr inbounds [4 x i8], ptr %i.gg, i64 %i.hq
  %i.hs = icmp sgt i32 %i.ho, 0
  br i1 %i.hs, label %.lr.ph15.i, label %._crit_edge.i

._crit_edge.loopexit.i:                           ; preds = %.loopexit.i44
  %.pre46.i = load i32, ptr %i.er, align 4, !tbaa !243 ; 2 uses
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.loopexit.i, %.lr.ph19.split.i
  %i.ht = phi i32 [ %.pre46.i, %._crit_edge.loopexit.i ], [ %i.hl, %.lr.ph19.split.i ] ; 2 uses
  %i.hu = phi i32 [ %.pre46.i, %._crit_edge.loopexit.i ], [ %i.hm, %.lr.ph19.split.i ] ; 2 uses
  %i.hv = phi i32 [ %i.kw, %._crit_edge.loopexit.i ], [ %i.hn, %.lr.ph19.split.i ]
  %i.hw = phi i32 [ %i.kw, %._crit_edge.loopexit.i ], [ %i.ho, %.lr.ph19.split.i ]
  %i.hx = getelementptr inbounds nuw i8, ptr %.06117.i, i64 %i.gq
  %indvars.iv.next44.i = add nuw nsw i64 %indvars.iv43.i, 1 ; 2 uses
  %i.hy = sext i32 %i.hu to i64
  %i.hz = icmp slt i64 %indvars.iv.next44.i, %i.hy
  br i1 %i.hz, label %.lr.ph19.split.i, label %._crit_edge20.i, !llvm.loop !250

.lr.ph15.i:                                       ; preds = %.lr.ph19.split.i, %.loopexit.i44
  %i.ia = phi i32 [ %i.kw, %.loopexit.i44 ], [ %i.hn, %.lr.ph19.split.i ] ; 9 uses
  %indvars.iv40.i = phi i64 [ %indvars.iv.next41.i, %.loopexit.i44 ], [ 0, %.lr.ph19.split.i ] ; 2 uses
  %.06714.i = phi ptr [ %.1.i, %.loopexit.i44 ], [ %.06117.i, %.lr.ph19.split.i ] ; 2 uses
  %i.ib = getelementptr inbounds nuw [4 x i8], ptr %i.hr, i64 %indvars.iv40.i
  %i.ic = load i32, ptr %i.ib, align 4, !tbaa !3  ; 11 uses
  %i.id = load ptr, ptr %.06714.i, align 8, !tbaa !76 ; 8 uses
  %i.ie = icmp eq i32 %i.ic, 0
  %i.if = icmp eq ptr %i.id, null
  %or.cond.i43 = select i1 %i.ie, i1 true, i1 %i.if
  br i1 %or.cond.i43, label %.loopexit.i44, label %bb.ba

bb.ba:                                            ; preds = %.lr.ph15.i
  %i.ig = load i32, ptr %.sroa.02.022.i, align 8, !tbaa !235
  switch i32 %i.ig, label %bb.bo [
    i32 0, label %bb.bb
    i32 1, label %bb.bc
    i32 2, label %bb.bn
  ]

bb.bb:                                            ; preds = %bb.ba
  %i.ih = load double, ptr %i.gs, align 8, !tbaa !251
  %i.ii = fptoui double %i.ih to i32              ; 2 uses
  %i.ij = icmp sgt i32 %i.ic, 0
  br i1 %i.ij, label %.lr.ph12.preheader.i, label %.loopexit.i44

.lr.ph12.preheader.i:                             ; preds = %bb.bb
  %wide.trip.count38.i = zext nneg i32 %i.ic to i64 ; 3 uses
  %min.iters.check = icmp ult i32 %i.ic, 8
  br i1 %min.iters.check, label %.lr.ph12.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph12.preheader.i
  %n.vec = and i64 %wide.trip.count38.i, 2147483640 ; 3 uses
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.ii, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ik = getelementptr inbounds nuw [4 x i8], ptr %i.id, i64 %index ; 2 uses
  %i.il = getelementptr inbounds nuw i8, ptr %i.ik, i64 16
  store <4 x i32> %broadcast.splat, ptr %i.ik, align 4, !tbaa !3
  store <4 x i32> %broadcast.splat, ptr %i.il, align 4, !tbaa !3
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.im = icmp eq i64 %index.next, %n.vec
  br i1 %i.im, label %middle.block, label %vector.body, !llvm.loop !252

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count38.i
  br i1 %cmp.n, label %.loopexit.loopexit.i48, label %.lr.ph12.i.preheader

.lr.ph12.i.preheader:                             ; preds = %.lr.ph12.preheader.i, %middle.block
  %indvars.iv35.i.ph = phi i64 [ 0, %.lr.ph12.preheader.i ], [ %n.vec, %middle.block ]
  br label %.lr.ph12.i

.lr.ph12.i:                                       ; preds = %.lr.ph12.i.preheader, %.lr.ph12.i
  %indvars.iv35.i = phi i64 [ %indvars.iv.next36.i, %.lr.ph12.i ], [ %indvars.iv35.i.ph, %.lr.ph12.i.preheader ] ; 2 uses
  %i.in = getelementptr inbounds nuw [4 x i8], ptr %i.id, i64 %indvars.iv35.i
  store i32 %i.ii, ptr %i.in, align 4, !tbaa !3
  %indvars.iv.next36.i = add nuw nsw i64 %indvars.iv35.i, 1 ; 2 uses
  %exitcond39.not.i = icmp eq i64 %indvars.iv.next36.i, %wide.trip.count38.i
  br i1 %exitcond39.not.i, label %.loopexit.loopexit.i48, label %.lr.ph12.i, !llvm.loop !255

bb.bc:                                            ; preds = %bb.ba
  %i.io = load double, ptr %i.gs, align 8, !tbaa !251
  %i.ip = fptrunc double %i.io to float           ; 2 uses
  %i.iq = bitcast float %i.ip to i32
  %i.ir = call float @llvm.fabs.f32(float %i.ip)
  %i.is = bitcast float %i.ir to i32              ; 10 uses
  %i.it = lshr i32 %i.iq, 16                      ; 3 uses
  %i.iu = trunc nuw i32 %i.it to i16
  %i.iv = and i16 %i.iu, -32768                   ; 3 uses
  %i.iw = icmp samesign ugt i32 %i.is, 947912703
  br i1 %i.iw, label %bb.bd, label %bb.bj

bb.bd:                                            ; preds = %bb.bc
  %i.ix = icmp samesign ugt i32 %i.is, 2139095039
  br i1 %i.ix, label %bb.be, label %bb.bg, !prof !64

bb.be:                                            ; preds = %bb.bd
  %i.iy = or disjoint i16 %i.iv, 31744            ; 2 uses
  %i.iz = icmp eq i32 %i.is, 2139095040
  br i1 %i.iz, label %_ZN9Imath_3_14halfC2Ef.exit.i, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.ja = lshr i32 %i.is, 13
  %i.jb = and i32 %i.ja, 1023                     ; 2 uses
  %i.jc = icmp eq i32 %i.jb, 0
  %i.jd = zext i1 %i.jc to i16
  %i.je = trunc nuw nsw i32 %i.jb to i16
  %i.jf = or i16 %i.je, %i.jd
  %i.jg = or disjoint i16 %i.jf, %i.iy
  br label %_ZN9Imath_3_14halfC2Ef.exit.i

bb.bg:                                            ; preds = %bb.bd
  %i.jh = icmp samesign ugt i32 %i.is, 1199566847
  br i1 %i.jh, label %bb.bh, label %bb.bi, !prof !64

bb.bh:                                            ; preds = %bb.bg
  %i.ji = or disjoint i16 %i.iv, 31744
  br label %_ZN9Imath_3_14halfC2Ef.exit.i

bb.bi:                                            ; preds = %bb.bg
  %i.jj = add nuw nsw i32 %i.is, 134221823
  %i.jk = lshr i32 %i.is, 13
  %i.jl = and i32 %i.jk, 1
  %i.jm = add nuw nsw i32 %i.jj, %i.jl
  %i.jn = lshr i32 %i.jm, 13
  %i.jo = and i32 %i.it, 32768
  %i.jp = or i32 %i.jn, %i.jo
  %i.jq = trunc i32 %i.jp to i16
  br label %_ZN9Imath_3_14halfC2Ef.exit.i

bb.bj:                                            ; preds = %bb.bc
  %i.jr = icmp samesign ult i32 %i.is, 855638017
  br i1 %i.jr, label %_ZN9Imath_3_14halfC2Ef.exit.i, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.js = lshr i32 %i.is, 23                      ; 2 uses
  %i.jt = sub nuw nsw i32 126, %i.js
  %i.ju = and i32 %i.is, 8388607
  %i.jv = or disjoint i32 %i.ju, 8388608          ; 2 uses
  %i.jw = add nsw i32 %i.js, -94
  %i.jx = shl i32 %i.jv, %i.jw                    ; 2 uses
  %i.jy = lshr i32 %i.jv, %i.jt                   ; 2 uses
  %i.jz = and i32 %i.it, 32768
  %i.ka = or i32 %i.jy, %i.jz
  %i.kb = trunc nuw i32 %i.ka to i16              ; 2 uses
  %i.kc = icmp ugt i32 %i.jx, -2147483648
  br i1 %i.kc, label %bb.bm, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.kd = icmp ne i32 %i.jx, -2147483648
  %i.ke = and i32 %i.jy, 1
  %.not.i.i.i = icmp eq i32 %i.ke, 0
  %or.cond.i.i.i = select i1 %i.kd, i1 true, i1 %.not.i.i.i
end_hunk_0
