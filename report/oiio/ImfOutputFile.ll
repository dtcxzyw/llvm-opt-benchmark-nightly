inline.NumInlined: 605
inline.NumDeleted: 305
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZN27OpenImageIO_v3_1_Imf__3_3_510OutputFile10copyPixelsERNS_9InputFileE:bb.a
bb.ay:                                            ; preds = %bb.ax
  %i.cj = load i32, ptr %i.ci, align 4, !tbaa !101
  %i.ck = invoke noundef nonnull align 4 dereferenceable(4) ptr @_ZNK27OpenImageIO_v3_1_Imf__3_3_56Header11compressionEv(ptr noundef nonnull align 8 dereferenceable(49) %i.i)
          to label %bb.az unwind label %bb.m

bb.az:                                            ; preds = %bb.ay
  %i.cl = load i32, ptr %i.ck, align 4, !tbaa !101
  %i.cm = icmp eq i32 %i.cj, %i.cl
  br i1 %i.cm, label %bb.bm, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  invoke void @_Z13iex_debugTrapv()
          to label %bb.bb unwind label %bb.m

bb.bb:                                            ; preds = %bb.ba
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  invoke void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128) %5)
          to label %bb.bc unwind label %bb.bh

bb.bc:                                            ; preds = %bb.bb
  %i.cn = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.co = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.cn, ptr noundef nonnull @.str.24, i64 noundef 34)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit69 unwind label %bb.bi ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit69: ; preds = %bb.bc
  %i.cp = invoke noundef ptr @_ZNK27OpenImageIO_v3_1_Imf__3_3_59InputFile8fileNameEv(ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.bd unwind label %bb.bi

bb.bd:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit69
  %i.cq = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %i.cn, ptr noundef %i.cp)
          to label %bb.be unwind label %bb.bi     ; 2 uses

bb.be:                                            ; preds = %bb.bd
  %i.cr = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.cq, ptr noundef nonnull @.str.21, i64 noundef 17)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit70 unwind label %bb.bi ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit70: ; preds = %bb.be
  %i.cs = load ptr, ptr %i.c, align 8, !tbaa !77
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 312
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !52
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 40
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !81
  %i.cx = invoke noundef ptr @_ZNK27OpenImageIO_v3_1_Imf__3_3_57OStream8fileNameEv(ptr noundef nonnull align 8 dereferenceable(40) %i.cw)
          to label %_ZNK27OpenImageIO_v3_1_Imf__3_3_510OutputFile8fileNameEv.exit71 unwind label %bb.bi

_ZNK27OpenImageIO_v3_1_Imf__3_3_510OutputFile8fileNameEv.exit71: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit70
  %i.cy = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %i.cq, ptr noundef %i.cx)
          to label %bb.bf unwind label %bb.bi

bb.bf:                                            ; preds = %_ZNK27OpenImageIO_v3_1_Imf__3_3_510OutputFile8fileNameEv.exit71
  %i.cz = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.cy, ptr noundef nonnull @.str.26, i64 noundef 54)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit72 unwind label %bb.bi ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit72: ; preds = %bb.bf
  %i.da = call ptr @__cxa_allocate_exception(i64 72) #23 ; 3 uses
  invoke void @_ZN7Iex_3_36ArgExcC1ERNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(72) %i.da, ptr noundef nonnull align 8 dereferenceable(128) %5)
          to label %bb.bg unwind label %bb.bj

bb.bg:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit72
  invoke void @__cxa_throw(ptr nonnull %i.da, ptr nonnull @_ZTIN7Iex_3_36ArgExcE, ptr nonnull @_ZN7Iex_3_36ArgExcD1Ev) #27
          to label %bb.cx unwind label %bb.bi

bb.bh:                                            ; preds = %bb.bb
  %i.db = landingpad { ptr, i32 }
          cleanup
  br label %bb.bl

bb.bi:                                            ; preds = %bb.bf, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit70, %bb.be, %bb.bc, %bb.bg, %_ZNK27OpenImageIO_v3_1_Imf__3_3_510OutputFile8fileNameEv.exit71, %bb.bd, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit69
  %i.dc = landingpad { ptr, i32 }
          cleanup
  br label %bb.bk

bb.bj:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit72
  %i.dd = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.da) #23
  br label %bb.bk

bb.bk:                                            ; preds = %bb.bj, %bb.bi
  %.pn45 = phi { ptr, i32 } [ %i.dc, %bb.bi ], [ %i.dd, %bb.bj ]
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128) %5) #23
  br label %bb.bl

bb.bl:                                            ; preds = %bb.bk, %bb.bh
  %.pn45.pn = phi { ptr, i32 } [ %.pn45, %bb.bk ], [ %i.db, %bb.bh ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  br label %bb.cw

bb.bm:                                            ; preds = %bb.az
  %i.de = invoke noundef nonnull align 8 dereferenceable(48) ptr @_ZNK27OpenImageIO_v3_1_Imf__3_3_56Header8channelsEv(ptr noundef nonnull align 8 dereferenceable(49) %i.h)
          to label %bb.bn unwind label %bb.m

bb.bn:                                            ; preds = %bb.bm
  %i.df = invoke noundef nonnull align 8 dereferenceable(48) ptr @_ZNK27OpenImageIO_v3_1_Imf__3_3_56Header8channelsEv(ptr noundef nonnull align 8 dereferenceable(49) %i.i)
          to label %bb.bo unwind label %bb.m

bb.bo:                                            ; preds = %bb.bn
  %i.dg = invoke noundef zeroext i1 @_ZNK27OpenImageIO_v3_1_Imf__3_3_511ChannelListeqERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %i.de, ptr noundef nonnull align 8 dereferenceable(48) %i.df)
          to label %bb.bp unwind label %bb.m

bb.bp:                                            ; preds = %bb.bo
  br i1 %i.dg, label %bb.cc, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  invoke void @_Z13iex_debugTrapv()
          to label %bb.br unwind label %bb.m

bb.br:                                            ; preds = %bb.bq
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #23
  invoke void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128) %6)
          to label %bb.bs unwind label %bb.bx

bb.bs:                                            ; preds = %bb.br
  %i.dh = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.di = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.dh, ptr noundef nonnull @.str.24, i64 noundef 34)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit73 unwind label %bb.by ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit73: ; preds = %bb.bs
  %i.dj = invoke noundef ptr @_ZNK27OpenImageIO_v3_1_Imf__3_3_59InputFile8fileNameEv(ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.bt unwind label %bb.by

bb.bt:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit73
  %i.dk = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %i.dh, ptr noundef %i.dj)
          to label %bb.bu unwind label %bb.by     ; 2 uses

bb.bu:                                            ; preds = %bb.bt
  %i.dl = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.dk, ptr noundef nonnull @.str.21, i64 noundef 17)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit74 unwind label %bb.by ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit74: ; preds = %bb.bu
  %i.dm = load ptr, ptr %i.c, align 8, !tbaa !77
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 312
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !52
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 40
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !81
  %i.dr = invoke noundef ptr @_ZNK27OpenImageIO_v3_1_Imf__3_3_57OStream8fileNameEv(ptr noundef nonnull align 8 dereferenceable(40) %i.dq)
          to label %_ZNK27OpenImageIO_v3_1_Imf__3_3_510OutputFile8fileNameEv.exit75 unwind label %bb.by

_ZNK27OpenImageIO_v3_1_Imf__3_3_510OutputFile8fileNameEv.exit75: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit74
  %i.ds = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %i.dk, ptr noundef %i.dr)
          to label %bb.bv unwind label %bb.by

bb.bv:                                            ; preds = %_ZNK27OpenImageIO_v3_1_Imf__3_3_510OutputFile8fileNameEv.exit75
  %i.dt = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ds, ptr noundef nonnull @.str.27, i64 noundef 50)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit76 unwind label %bb.by ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit76: ; preds = %bb.bv
  %i.du = call ptr @__cxa_allocate_exception(i64 72) #23 ; 3 uses
  invoke void @_ZN7Iex_3_36ArgExcC1ERNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(72) %i.du, ptr noundef nonnull align 8 dereferenceable(128) %6)
          to label %bb.bw unwind label %bb.bz

bb.bw:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit76
  invoke void @__cxa_throw(ptr nonnull %i.du, ptr nonnull @_ZTIN7Iex_3_36ArgExcE, ptr nonnull @_ZN7Iex_3_36ArgExcD1Ev) #27
          to label %bb.cx unwind label %bb.by

bb.bx:                                            ; preds = %bb.br
  %i.dv = landingpad { ptr, i32 }
          cleanup
  br label %bb.cb

bb.by:                                            ; preds = %bb.bv, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit74, %bb.bu, %bb.bs, %bb.bw, %_ZNK27OpenImageIO_v3_1_Imf__3_3_510OutputFile8fileNameEv.exit75, %bb.bt, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit73
  %i.dw = landingpad { ptr, i32 }
          cleanup
  br label %bb.ca

bb.bz:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit76
  %i.dx = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.du) #23
  br label %bb.ca

bb.ca:                                            ; preds = %bb.bz, %bb.by
  %.pn48 = phi { ptr, i32 } [ %i.dw, %bb.by ], [ %i.dx, %bb.bz ]
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128) %6) #23
  br label %bb.cb

bb.cb:                                            ; preds = %bb.ca, %bb.bx
  %.pn48.pn = phi { ptr, i32 } [ %.pn48, %bb.ca ], [ %i.dv, %bb.bx ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  br label %bb.cw

bb.cc:                                            ; preds = %bb.bp
  %i.dy = invoke noundef nonnull align 4 dereferenceable(16) ptr @_ZNK27OpenImageIO_v3_1_Imf__3_3_56Header10dataWindowEv(ptr noundef nonnull align 8 dereferenceable(49) %i.h)
          to label %bb.cd unwind label %bb.cm     ; 2 uses

bb.cd:                                            ; preds = %bb.cc
  %i.dz = load ptr, ptr %i.c, align 8, !tbaa !77  ; 2 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 124
  %i.eb = load i32, ptr %i.ea, align 4, !tbaa !96 ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %i.dy, i64 12
  %i.ed = load i32, ptr %i.ec, align 4, !tbaa !92
  %i.ee = getelementptr inbounds nuw i8, ptr %i.dy, i64 4
  %i.ef = load i32, ptr %i.ee, align 4, !tbaa !95
  %i.eg = add i32 %i.ed, 1
  %i.eh = sub i32 %i.eg, %i.ef
  %.not = icmp eq i32 %i.eb, %i.eh
  br i1 %.not, label %.preheader, label %bb.ce

.preheader:                                       ; preds = %bb.cd
  %i.ei = icmp sgt i32 %i.eb, 0
  br i1 %i.ei, label %.lr.ph, label %._crit_edge

bb.ce:                                            ; preds = %bb.cd
  invoke void @_Z13iex_debugTrapv()
          to label %bb.cf unwind label %bb.cm

bb.cf:                                            ; preds = %bb.ce
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #23
  invoke void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128) %7)
          to label %bb.cg unwind label %bb.cn

bb.cg:                                            ; preds = %bb.cf
  %i.ej = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.ek = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ej, ptr noundef nonnull @.str.24, i64 noundef 34)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit77 unwind label %bb.co ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit77: ; preds = %bb.cg
  %i.el = invoke noundef ptr @_ZNK27OpenImageIO_v3_1_Imf__3_3_59InputFile8fileNameEv(ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.ch unwind label %bb.co

bb.ch:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit77
  %i.em = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %i.ej, ptr noundef %i.el)
          to label %bb.ci unwind label %bb.co     ; 2 uses

bb.ci:                                            ; preds = %bb.ch
  %i.en = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.em, ptr noundef nonnull @.str.21, i64 noundef 17)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit78 unwind label %bb.co ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit78: ; preds = %bb.ci
  %i.eo = load ptr, ptr %i.c, align 8, !tbaa !77
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 312
  %i.eq = load ptr, ptr %i.ep, align 8, !tbaa !52
  %i.er = getelementptr inbounds nuw i8, ptr %i.eq, i64 40
  %i.es = load ptr, ptr %i.er, align 8, !tbaa !81
  %i.et = invoke noundef ptr @_ZNK27OpenImageIO_v3_1_Imf__3_3_57OStream8fileNameEv(ptr noundef nonnull align 8 dereferenceable(40) %i.es)
          to label %_ZNK27OpenImageIO_v3_1_Imf__3_3_510OutputFile8fileNameEv.exit79 unwind label %bb.co

_ZNK27OpenImageIO_v3_1_Imf__3_3_510OutputFile8fileNameEv.exit79: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit78
  %i.eu = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %i.em, ptr noundef %i.et)
          to label %bb.cj unwind label %bb.co     ; 2 uses

bb.cj:                                            ; preds = %_ZNK27OpenImageIO_v3_1_Imf__3_3_510OutputFile8fileNameEv.exit79
  %i.ev = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.eu, ptr noundef nonnull @.str.28, i64 noundef 11)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit80 unwind label %bb.co ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit80: ; preds = %bb.cj
  %i.ew = load ptr, ptr %i.c, align 8, !tbaa !77
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ew, i64 312
  %i.ey = load ptr, ptr %i.ex, align 8, !tbaa !52
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 40
  %i.fa = load ptr, ptr %i.ez, align 8, !tbaa !81
  %i.fb = invoke noundef ptr @_ZNK27OpenImageIO_v3_1_Imf__3_3_57OStream8fileNameEv(ptr noundef nonnull align 8 dereferenceable(40) %i.fa)
          to label %_ZNK27OpenImageIO_v3_1_Imf__3_3_510OutputFile8fileNameEv.exit81 unwind label %bb.co

_ZNK27OpenImageIO_v3_1_Imf__3_3_510OutputFile8fileNameEv.exit81: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit80
  %i.fc = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %i.eu, ptr noundef %i.fb)
          to label %bb.ck unwind label %bb.co

bb.ck:                                            ; preds = %_ZNK27OpenImageIO_v3_1_Imf__3_3_510OutputFile8fileNameEv.exit81
  %i.fd = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.fc, ptr noundef nonnull @.str.29, i64 noundef 30)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit82 unwind label %bb.co ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit82: ; preds = %bb.ck
  %i.fe = call ptr @__cxa_allocate_exception(i64 72) #23 ; 3 uses
  invoke void @_ZN7Iex_3_38LogicExcC1ERNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(72) %i.fe, ptr noundef nonnull align 8 dereferenceable(128) %7)
          to label %bb.cl unwind label %bb.cp

bb.cl:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit82
  invoke void @__cxa_throw(ptr nonnull %i.fe, ptr nonnull @_ZTIN7Iex_3_38LogicExcE, ptr nonnull @_ZN7Iex_3_38LogicExcD1Ev) #27
          to label %bb.cx unwind label %bb.co

bb.cm:                                            ; preds = %bb.ce, %bb.cc
  %i.ff = landingpad { ptr, i32 }
          cleanup
  br label %bb.cw

bb.cn:                                            ; preds = %bb.cf
  %i.fg = landingpad { ptr, i32 }
          cleanup
  br label %bb.cr

bb.co:                                            ; preds = %bb.ck, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit80, %bb.cj, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit78, %bb.ci, %bb.cg, %bb.cl, %_ZNK27OpenImageIO_v3_1_Imf__3_3_510OutputFile8fileNameEv.exit81, %_ZNK27OpenImageIO_v3_1_Imf__3_3_510OutputFile8fileNameEv.exit79, %bb.ch, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit77
  %i.fh = landingpad { ptr, i32 }
          cleanup
  br label %bb.cq

bb.cp:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit82
  %i.fi = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.fe) #23
  br label %bb.cq

bb.cq:                                            ; preds = %bb.cp, %bb.co
  %.pn51 = phi { ptr, i32 } [ %i.fh, %bb.co ], [ %i.fi, %bb.cp ]
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128) %7) #23
  br label %bb.cr

bb.cr:                                            ; preds = %bb.cq, %bb.cn
  %.pn51.pn = phi { ptr, i32 } [ %.pn51, %bb.cq ], [ %i.fg, %bb.cn ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  br label %bb.cw

.lr.ph:                                           ; preds = %.preheader, %bb.cu
  %8 = phi ptr [ %i.fv, %bb.cu ], [ %i.dz, %.preheader ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #23
  %9 = getelementptr inbounds nuw i8, ptr %8, i64 120
  %10 = load i32, ptr %9, align 8, !tbaa !91
  invoke void @_ZN27OpenImageIO_v3_1_Imf__3_3_59InputFile12rawPixelDataEiRPKcRi(ptr noundef nonnull align 8 dereferenceable(32) %1, i32 noundef %10, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 4 dereferenceable(4) %i.b)
          to label %bb.cs unwind label %bb.cv

bb.cs:                                            ; preds = %.lr.ph
  %i.fj = load ptr, ptr %i.c, align 8, !tbaa !77  ; 5 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fj, i64 312
  %i.fl = load ptr, ptr %i.fk, align 8, !tbaa !52
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fj, i64 120
  %i.fn = load i32, ptr %i.fm, align 8, !tbaa !91
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fj, i64 140
  %i.fp = load i32, ptr %i.fo, align 4, !tbaa !157
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fj, i64 288
  %i.fr = load i32, ptr %i.fq, align 8, !tbaa !99
  %i.fs = invoke noundef i32 @_ZN27OpenImageIO_v3_1_Imf__3_3_514lineBufferMinYEiii(i32 noundef %i.fn, i32 noundef %i.fp, i32 noundef %i.fr)
          to label %bb.ct unwind label %bb.cv

bb.ct:                                            ; preds = %bb.cs
  %i.ft = load ptr, ptr %i.a, align 8, !tbaa !137
  %i.fu = load i32, ptr %i.b, align 4, !tbaa !3
  invoke fastcc void @_ZN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_114writePixelDataEPNS_17OutputStreamMutexEPNS_10OutputFile4DataEiPKci(ptr noundef %i.fl, ptr noundef nonnull %i.fj, i32 noundef %i.fs, ptr noundef %i.ft, i32 noundef %i.fu)
          to label %bb.cu unwind label %bb.cv

bb.cu:                                            ; preds = %bb.ct
  %i.fv = load ptr, ptr %i.c, align 8, !tbaa !77  ; 5 uses
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fv, i64 128
  %i.fx = load i32, ptr %i.fw, align 8, !tbaa !97
  %i.fy = icmp eq i32 %i.fx, 0
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fv, i64 288
  %i.ga = load i32, ptr %i.fz, align 8, !tbaa !99 ; 3 uses
  %i.gb = sub nsw i32 0, %i.ga
  %i.gc = select i1 %i.fy, i32 %i.ga, i32 %i.gb
  %i.gd = getelementptr inbounds nuw i8, ptr %i.fv, i64 120 ; 2 uses
  %i.ge = load i32, ptr %i.gd, align 8, !tbaa !91
  %i.gf = add nsw i32 %i.ge, %i.gc
  store i32 %i.gf, ptr %i.gd, align 8, !tbaa !91
  %i.gg = getelementptr inbounds nuw i8, ptr %i.fv, i64 124 ; 2 uses
  %i.gh = load i32, ptr %i.gg, align 4, !tbaa !96
  %i.gi = sub nsw i32 %i.gh, %i.ga                ; 2 uses
  store i32 %i.gi, ptr %i.gg, align 4, !tbaa !96
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  %i.gj = icmp sgt i32 %i.gi, 0
  br i1 %i.gj, label %.lr.ph, label %._crit_edge, !llvm.loop !174

bb.cv:                                            ; preds = %bb.ct, %bb.cs, %.lr.ph
  %i.gk = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  br label %bb.cw

._crit_edge:                                      ; preds = %bb.cu, %.preheader
  %i.gl = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.f) #23 ; 0 uses
  ret void

bb.cw:                                            ; preds = %bb.n, %bb.o, %bb.cm, %bb.cr, %bb.cv, %bb.cb, %bb.bl, %bb.aw, %bb.ah, %bb.t, %bb.m
  %.pn55.pn.pn = phi { ptr, i32 } [ %.pn55.pn, %bb.t ], [ %i.z, %bb.m ], [ %i.gk, %bb.cv ], [ %.pn48.pn, %bb.cb ], [ %.pn45.pn, %bb.bl ], [ %.pn42.pn, %bb.aw ], [ %.pn39.pn, %bb.ah ], [ %.pn51.pn, %bb.cr ], [ %i.ff, %bb.cm ], [ %i.ab, %bb.o ], [ %i.aa, %bb.n ]
  %i.gm = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.f) #23 ; 0 uses
  resume { ptr, i32 } %.pn55.pn.pn

bb.cx:                                            ; preds = %bb.cl, %bb.bw, %bb.bg, %bb.ar, %bb.ac, %bb.l
  unreachable
}

declare noundef nonnull align 8 dereferenceable(49) ptr @_ZNK27OpenImageIO_v3_1_Imf__3_3_59InputFile6headerEv(ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #4

declare ptr @_ZNK27OpenImageIO_v3_1_Imf__3_3_56Header4findEPKc(ptr noundef nonnull align 8 dereferenceable(49), ptr noundef) local_unnamed_addr #4

declare ptr @_ZNK27OpenImageIO_v3_1_Imf__3_3_56Header3endEv(ptr noundef nonnull align 8 dereferenceable(49)) local_unnamed_addr #4

declare noundef ptr @_ZNK27OpenImageIO_v3_1_Imf__3_3_59InputFile8fileNameEv(ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #4

declare noundef nonnull align 4 dereferenceable(4) ptr @_ZNK27OpenImageIO_v3_1_Imf__3_3_56Header11compressionEv(ptr noundef nonnull align 8 dereferenceable(49)) local_unnamed_addr #4

declare noundef nonnull align 8 dereferenceable(48) ptr @_ZNK27OpenImageIO_v3_1_Imf__3_3_56Header8channelsEv(ptr noundef nonnull align 8 dereferenceable(49)) local_unnamed_addr #4

declare noundef zeroext i1 @_ZNK27OpenImageIO_v3_1_Imf__3_3_511ChannelListeqERKS0_(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef nonnull align 8 dereferenceable(48)) local_unnamed_addr #4

declare void @_ZN7Iex_3_38LogicExcC1ERNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(128)) unnamed_addr #4

; Function Attrs: nounwind
declare void @_ZN7Iex_3_38LogicExcD1Ev(ptr noundef nonnull align 8 dereferenceable(72)) unnamed_addr #6

declare void @_ZN27OpenImageIO_v3_1_Imf__3_3_59InputFile12rawPixelDataEiRPKcRi(ptr noundef nonnull align 8 dereferenceable(32), i32 noundef, ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_114writePixelDataEPNS_17OutputStreamMutexEPNS_10OutputFile4DataEiPKci(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, ptr noundef %3, i32 noundef %4) unnamed_addr #3 {
bb.a:
  %i.a = alloca [4 x i8], align 4                 ; 4 uses
  %i.b = alloca [4 x i8], align 4                 ; 4 uses
  %i.c = alloca [4 x i8], align 4                 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 4 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !87   ; 2 uses
  store i64 0, ptr %i.d, align 8, !tbaa !87
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !81   ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !69
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = tail call noundef i64 %i.k(ptr noundef nonnull align 8 dereferenceable(40) %i.h)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0 = phi i64 [ %i.l, %bb.b ], [ %i.e, %bb.a ]  ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 152
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.o = load i32, ptr %i.n, align 8, !tbaa !91
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 140
  %i.q = load i32, ptr %i.p, align 4, !tbaa !157
  %i.r = sub nsw i32 %i.o, %i.q
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 288
  %i.t = load i32, ptr %i.s, align 8, !tbaa !99
  %i.u = sdiv i32 %i.r, %i.t
  %i.v = sext i32 %i.u to i64
  %i.w = load ptr, ptr %i.m, align 8, !tbaa !59
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %i.v
  store i64 %.0, ptr %i.x, align 8, !tbaa !111
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.z = load i8, ptr %i.y, align 8, !tbaa !86, !range !118, !noundef !119
  %i.aa = trunc nuw i8 %i.z to i1
  br i1 %i.aa, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !81 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 304
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #23
  store i32 %i.ae, ptr %i.c, align 4
  %i.af = load ptr, ptr %i.ac, align 8, !tbaa !69
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  %i.ah = load ptr, ptr %i.ag, align 8
  call void %i.ah(ptr noundef nonnull align 8 dereferenceable(40) %i.ac, ptr noundef nonnull %i.c, i32 noundef 4), !inline_history !175
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #23
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !81 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #23
  store i32 %2, ptr %i.b, align 4
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !69
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  %i.am = load ptr, ptr %i.al, align 8
  call void %i.am(ptr noundef nonnull align 8 dereferenceable(40) %i.aj, ptr noundef nonnull %i.b, i32 noundef 4), !inline_history !175
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  %i.an = load ptr, ptr %i.ai, align 8, !tbaa !81 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  store i32 %4, ptr %i.a, align 4
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !69
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  %i.aq = load ptr, ptr %i.ap, align 8
  call void %i.aq(ptr noundef nonnull align 8 dereferenceable(40) %i.an, ptr noundef nonnull %i.a, i32 noundef 4), !inline_history !175
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  %i.ar = load ptr, ptr %i.ai, align 8, !tbaa !81 ; 2 uses
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !69
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 16
  %i.au = load ptr, ptr %i.at, align 8
  call void %i.au(ptr noundef nonnull align 8 dereferenceable(40) %i.ar, ptr noundef %3, i32 noundef %4)
  %i.av = sext i32 %4 to i64
  %i.aw = add nsw i64 %i.av, 8
  %i.ax = add i64 %i.aw, %.0                      ; 2 uses
  store i64 %i.ax, ptr %i.d, align 8, !tbaa !87
  %i.ay = load i8, ptr %i.y, align 8, !tbaa !86, !range !118, !noundef !119
  %i.az = trunc nuw i8 %i.ay to i1
  br i1 %i.az, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ba = add i64 %i.ax, 4
  store i64 %i.ba, ptr %i.d, align 8, !tbaa !87
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  ret void
}

declare noundef i32 @_ZN27OpenImageIO_v3_1_Imf__3_3_514lineBufferMinYEiii(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define void @_ZN27OpenImageIO_v3_1_Imf__3_3_510OutputFile10copyPixelsERNS_9InputPartE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %1) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !176
  tail call void @_ZN27OpenImageIO_v3_1_Imf__3_3_510OutputFile10copyPixelsERNS_9InputFileE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.a)
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN27OpenImageIO_v3_1_Imf__3_3_510OutputFile18updatePreviewImageEPKNS_11PreviewRgbaE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = ptrtoaddr ptr %1 to i64
  %2 = alloca %"class.std::__cxx11::basic_stringstream", align 8 ; 6 uses
  %3 = alloca %"class.std::__cxx11::basic_stringstream", align 8 ; 8 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 8 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !77
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 312
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !52   ; 3 uses
  %i.f = tail call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.e) #23 ; 2 uses
  %.not.i.i = icmp eq i32 %i.f, 0
  br i1 %.not.i.i, label %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_system_errori(i32 noundef %i.f) #27
  unreachable

_ZNSt10lock_guardISt5mutexEC2ERS0_.exit:          ; preds = %bb.a
  %i.g = load ptr, ptr %i.b, align 8, !tbaa !77   ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 64
  %i.i = load i64, ptr %i.h, align 8, !tbaa !88
  %i.j = icmp eq i64 %i.i, 0
  br i1 %i.j, label %bb.c, label %bb.n

bb.c:                                             ; preds = %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit
  invoke void @_Z13iex_debugTrapv()
          to label %bb.d unwind label %bb.h

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  invoke void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128) %2)
          to label %bb.e unwind label %bb.i

bb.e:                                             ; preds = %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.l = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.k, ptr noundef nonnull @.str.30, i64 noundef 42)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.j ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.e
  %i.m = load ptr, ptr %i.b, align 8, !tbaa !77
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 312
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !52
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 40
end_hunk_0
