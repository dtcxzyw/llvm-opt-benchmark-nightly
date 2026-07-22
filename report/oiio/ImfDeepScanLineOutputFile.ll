inline.NumInlined: 720
inline.NumDeleted: 346
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_ZN27OpenImageIO_v3_1_Imf__3_3_522DeepScanLineOutputFile10copyPixelsERNS_21DeepScanLineInputFileE:bb.a

bb.bp:                                            ; preds = %bb.bo
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #23
  invoke void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128) %6)
          to label %bb.bq unwind label %bb.bv

bb.bq:                                            ; preds = %bb.bp
  %i.dl = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.dm = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.dl, ptr noundef nonnull @.str.24, i64 noundef 34)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit87 unwind label %bb.bw ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit87: ; preds = %bb.bq
  %i.dn = invoke noundef ptr @_ZNK27OpenImageIO_v3_1_Imf__3_3_521DeepScanLineInputFile8fileNameEv(ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.br unwind label %bb.bw

bb.br:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit87
  %i.do = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %i.dl, ptr noundef %i.dn)
          to label %bb.bs unwind label %bb.bw     ; 2 uses

bb.bs:                                            ; preds = %bb.br
  %i.dp = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.do, ptr noundef nonnull @.str.21, i64 noundef 17)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit88 unwind label %bb.bw ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit88: ; preds = %bb.bs
  %i.dq = load ptr, ptr %i.b, align 8, !tbaa !92
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 368
  %i.ds = load ptr, ptr %i.dr, align 8, !tbaa !58
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 40
  %i.du = load ptr, ptr %i.dt, align 8, !tbaa !96
  %i.dv = invoke noundef ptr @_ZNK27OpenImageIO_v3_1_Imf__3_3_57OStream8fileNameEv(ptr noundef nonnull align 8 dereferenceable(40) %i.du)
          to label %_ZNK27OpenImageIO_v3_1_Imf__3_3_522DeepScanLineOutputFile8fileNameEv.exit89 unwind label %bb.bw

_ZNK27OpenImageIO_v3_1_Imf__3_3_522DeepScanLineOutputFile8fileNameEv.exit89: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit88
  %i.dw = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %i.do, ptr noundef %i.dv)
          to label %bb.bt unwind label %bb.bw

bb.bt:                                            ; preds = %_ZNK27OpenImageIO_v3_1_Imf__3_3_522DeepScanLineOutputFile8fileNameEv.exit89
  %i.dx = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.dw, ptr noundef nonnull @.str.27, i64 noundef 50)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit90 unwind label %bb.bw ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit90: ; preds = %bb.bt
  %i.dy = call ptr @__cxa_allocate_exception(i64 72) #23 ; 3 uses
  invoke void @_ZN7Iex_3_36ArgExcC1ERNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(72) %i.dy, ptr noundef nonnull align 8 dereferenceable(128) %6)
          to label %bb.bu unwind label %bb.bx

bb.bu:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit90
  invoke void @__cxa_throw(ptr nonnull %i.dy, ptr nonnull @_ZTIN7Iex_3_36ArgExcE, ptr nonnull @_ZN7Iex_3_36ArgExcD1Ev) #27
          to label %bb.dg unwind label %bb.bw

bb.bv:                                            ; preds = %bb.bp
  %i.dz = landingpad { ptr, i32 }
          cleanup
  br label %bb.bz

bb.bw:                                            ; preds = %bb.bt, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit88, %bb.bs, %bb.bq, %bb.bu, %_ZNK27OpenImageIO_v3_1_Imf__3_3_522DeepScanLineOutputFile8fileNameEv.exit89, %bb.br, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit87
  %i.ea = landingpad { ptr, i32 }
          cleanup
  br label %bb.by

bb.bx:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit90
  %i.eb = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.dy) #23
  br label %bb.by

bb.by:                                            ; preds = %bb.bx, %bb.bw
  %.pn59 = phi { ptr, i32 } [ %i.ea, %bb.bw ], [ %i.eb, %bb.bx ]
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128) %6) #23
  br label %bb.bz

bb.bz:                                            ; preds = %bb.by, %bb.bv
  %.pn59.pn = phi { ptr, i32 } [ %.pn59, %bb.by ], [ %i.dz, %bb.bv ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  br label %bb.df

bb.ca:                                            ; preds = %bb.bn
  %i.ec = invoke noundef nonnull align 4 dereferenceable(16) ptr @_ZNK27OpenImageIO_v3_1_Imf__3_3_56Header10dataWindowEv(ptr noundef nonnull align 8 dereferenceable(49) %i.g)
          to label %bb.cb unwind label %bb.ck     ; 2 uses

bb.cb:                                            ; preds = %bb.ca
  %i.ed = load ptr, ptr %i.b, align 8, !tbaa !92  ; 2 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 180
  %i.ef = load i32, ptr %i.ee, align 4, !tbaa !111 ; 2 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ec, i64 12
  %i.eh = load i32, ptr %i.eg, align 4, !tbaa !107
  %i.ei = getelementptr inbounds nuw i8, ptr %i.ec, i64 4
  %i.ej = load i32, ptr %i.ei, align 4, !tbaa !110
  %i.ek = add i32 %i.eh, 1
  %i.el = sub i32 %i.ek, %i.ej
  %.not = icmp eq i32 %i.ef, %i.el
  br i1 %.not, label %bb.cq, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  invoke void @_Z13iex_debugTrapv()
          to label %bb.cd unwind label %bb.ck

bb.cd:                                            ; preds = %bb.cc
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #23
  invoke void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128) %7)
          to label %bb.ce unwind label %bb.cl

bb.ce:                                            ; preds = %bb.cd
  %i.em = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.en = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.em, ptr noundef nonnull @.str.24, i64 noundef 34)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit91 unwind label %bb.cm ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit91: ; preds = %bb.ce
  %i.eo = invoke noundef ptr @_ZNK27OpenImageIO_v3_1_Imf__3_3_521DeepScanLineInputFile8fileNameEv(ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.cf unwind label %bb.cm

bb.cf:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit91
  %i.ep = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %i.em, ptr noundef %i.eo)
          to label %bb.cg unwind label %bb.cm     ; 2 uses

bb.cg:                                            ; preds = %bb.cf
  %i.eq = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ep, ptr noundef nonnull @.str.21, i64 noundef 17)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit92 unwind label %bb.cm ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit92: ; preds = %bb.cg
  %i.er = load ptr, ptr %i.b, align 8, !tbaa !92
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 368
  %i.et = load ptr, ptr %i.es, align 8, !tbaa !58
  %i.eu = getelementptr inbounds nuw i8, ptr %i.et, i64 40
  %i.ev = load ptr, ptr %i.eu, align 8, !tbaa !96
  %i.ew = invoke noundef ptr @_ZNK27OpenImageIO_v3_1_Imf__3_3_57OStream8fileNameEv(ptr noundef nonnull align 8 dereferenceable(40) %i.ev)
          to label %_ZNK27OpenImageIO_v3_1_Imf__3_3_522DeepScanLineOutputFile8fileNameEv.exit93 unwind label %bb.cm

_ZNK27OpenImageIO_v3_1_Imf__3_3_522DeepScanLineOutputFile8fileNameEv.exit93: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit92
  %i.ex = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %i.ep, ptr noundef %i.ew)
          to label %bb.ch unwind label %bb.cm     ; 2 uses

bb.ch:                                            ; preds = %_ZNK27OpenImageIO_v3_1_Imf__3_3_522DeepScanLineOutputFile8fileNameEv.exit93
  %i.ey = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ex, ptr noundef nonnull @.str.28, i64 noundef 11)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit94 unwind label %bb.cm ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit94: ; preds = %bb.ch
  %i.ez = load ptr, ptr %i.b, align 8, !tbaa !92
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ez, i64 368
  %i.fb = load ptr, ptr %i.fa, align 8, !tbaa !58
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fb, i64 40
  %i.fd = load ptr, ptr %i.fc, align 8, !tbaa !96
  %i.fe = invoke noundef ptr @_ZNK27OpenImageIO_v3_1_Imf__3_3_57OStream8fileNameEv(ptr noundef nonnull align 8 dereferenceable(40) %i.fd)
          to label %_ZNK27OpenImageIO_v3_1_Imf__3_3_522DeepScanLineOutputFile8fileNameEv.exit95 unwind label %bb.cm

_ZNK27OpenImageIO_v3_1_Imf__3_3_522DeepScanLineOutputFile8fileNameEv.exit95: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit94
  %i.ff = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %i.ex, ptr noundef %i.fe)
          to label %bb.ci unwind label %bb.cm

bb.ci:                                            ; preds = %_ZNK27OpenImageIO_v3_1_Imf__3_3_522DeepScanLineOutputFile8fileNameEv.exit95
  %i.fg = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ff, ptr noundef nonnull @.str.29, i64 noundef 30)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit96 unwind label %bb.cm ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit96: ; preds = %bb.ci
  %i.fh = call ptr @__cxa_allocate_exception(i64 72) #23 ; 3 uses
  invoke void @_ZN7Iex_3_38LogicExcC1ERNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(72) %i.fh, ptr noundef nonnull align 8 dereferenceable(128) %7)
          to label %bb.cj unwind label %bb.cn

bb.cj:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit96
  invoke void @__cxa_throw(ptr nonnull %i.fh, ptr nonnull @_ZTIN7Iex_3_38LogicExcE, ptr nonnull @_ZN7Iex_3_38LogicExcD1Ev) #27
          to label %bb.dg unwind label %bb.cm

bb.ck:                                            ; preds = %bb.cc, %bb.ca
  %i.fi = landingpad { ptr, i32 }
          cleanup
  br label %bb.df

bb.cl:                                            ; preds = %bb.cd
  %i.fj = landingpad { ptr, i32 }
          cleanup
  br label %bb.cp

bb.cm:                                            ; preds = %bb.ci, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit94, %bb.ch, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit92, %bb.cg, %bb.ce, %bb.cj, %_ZNK27OpenImageIO_v3_1_Imf__3_3_522DeepScanLineOutputFile8fileNameEv.exit95, %_ZNK27OpenImageIO_v3_1_Imf__3_3_522DeepScanLineOutputFile8fileNameEv.exit93, %bb.cf, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit91
  %i.fk = landingpad { ptr, i32 }
          cleanup
  br label %bb.co

bb.cn:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit96
  %i.fl = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.fh) #23
  br label %bb.co

bb.co:                                            ; preds = %bb.cn, %bb.cm
  %.pn65 = phi { ptr, i32 } [ %i.fk, %bb.cm ], [ %i.fl, %bb.cn ]
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128) %7) #23
  br label %bb.cp

bb.cp:                                            ; preds = %bb.co, %bb.cl
  %.pn65.pn = phi { ptr, i32 } [ %.pn65, %bb.co ], [ %i.fj, %bb.cl ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  br label %bb.df

bb.cq:                                            ; preds = %bb.cb
  %i.fm = invoke noalias noundef nonnull dereferenceable(4096) ptr @_Znwm(i64 noundef 4096) #24
          to label %bb.cr unwind label %bb.da     ; 4 uses

bb.cr:                                            ; preds = %bb.cq
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fm, i64 4096 ; 3 uses
  %i.fo = icmp sgt i32 %i.ef, 0
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(4096) %i.fm, i8 0, i64 4096, i1 false)
  br i1 %i.fo, label %.lr.ph.preheader, label %_ZNSt6vectorIcSaIcEED2Ev.exit99

.lr.ph.preheader:                                 ; preds = %bb.cr
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.ed, i64 176
  %.pre = load i32, ptr %.phi.trans.insert, align 8, !tbaa !106
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.dd
  %8 = phi i32 [ %i.hs, %bb.dd ], [ %.pre, %.lr.ph.preheader ]
  %.sroa.0100.0127 = phi ptr [ %.sroa.0100.2, %bb.dd ], [ %i.fm, %.lr.ph.preheader ] ; 11 uses
  %.sroa.24.0126 = phi ptr [ %.sroa.24.2, %bb.dd ], [ %i.fn, %.lr.ph.preheader ] ; 7 uses
  %.sroa.17.0125 = phi ptr [ %.sroa.17.1, %bb.dd ], [ %i.fn, %.lr.ph.preheader ] ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  %i.fp = ptrtoint ptr %.sroa.17.0125 to i64      ; 2 uses
  %i.fq = ptrtoint ptr %.sroa.0100.0127 to i64    ; 2 uses
  %i.fr = sub i64 %i.fp, %i.fq                    ; 9 uses
  store i64 %i.fr, ptr %i.a, align 8, !tbaa !131
  invoke void @_ZN27OpenImageIO_v3_1_Imf__3_3_521DeepScanLineInputFile12rawPixelDataEiPcRm(ptr noundef nonnull align 8 dereferenceable(32) %1, i32 noundef %8, ptr noundef nonnull %.sroa.0100.0127, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %bb.cs unwind label %.loopexit

bb.cs:                                            ; preds = %.lr.ph
  %i.fs = load i64, ptr %i.a, align 8, !tbaa !131 ; 3 uses
  %i.ft = icmp ugt i64 %i.fs, %i.fr
  br i1 %i.ft, label %bb.ct, label %bb.db

bb.ct:                                            ; preds = %bb.cs
  %i.fu = sub nuw i64 %i.fs, %i.fr                ; 6 uses
  %i.fv = ptrtoint ptr %.sroa.24.0126 to i64      ; 2 uses
  %i.fw = sub i64 %i.fv, %i.fp                    ; 2 uses
  %i.fx = icmp sgt i64 %i.fr, -1
  call void @llvm.assume(i1 %i.fx)
  %i.fy = xor i64 %i.fr, 9223372036854775807      ; 2 uses
  %i.fz = icmp ule i64 %i.fw, %i.fy
  call void @llvm.assume(i1 %i.fz)
  %.not28.i.i = icmp ult i64 %i.fw, %i.fu
  br i1 %.not28.i.i, label %bb.cw, label %bb.cu

bb.cu:                                            ; preds = %bb.ct
  store i8 0, ptr %.sroa.17.0125, align 1, !tbaa !81
  %i.ga = getelementptr inbounds nuw i8, ptr %.sroa.17.0125, i64 1 ; 2 uses
  %i.gb = add nsw i64 %i.fu, -1                   ; 2 uses
  %i.gc = icmp eq i64 %i.gb, 0
  br i1 %i.gc, label %_ZNSt6vectorIcSaIcEE6resizeEm.exit, label %bb.cv

bb.cv:                                            ; preds = %bb.cu
  %i.gd = getelementptr i8, ptr %.sroa.17.0125, i64 %i.fu
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.ga, i8 0, i64 %i.gb, i1 false)
  br label %_ZNSt6vectorIcSaIcEE6resizeEm.exit

bb.cw:                                            ; preds = %bb.ct
  %i.ge = icmp ult i64 %i.fy, %i.fu
  br i1 %i.ge, label %bb.cx, label %_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i.i

bb.cx:                                            ; preds = %bb.cw
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.37) #27
          to label %.noexc unwind label %.loopexit.split-lp

.noexc:                                           ; preds = %bb.cx
  unreachable

_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.cw
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.fr, i64 %i.fu)
  %i.gf = add nuw i64 %.sroa.speculated.i.i.i, %i.fr
  %i.gg = call i64 @llvm.umin.i64(i64 %i.gf, i64 9223372036854775807) ; 2 uses
  %i.gh = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.gg) #24
          to label %.noexc97 unwind label %.loopexit ; 5 uses

.noexc97:                                         ; preds = %_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i.i
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gh, i64 %i.fr ; 2 uses
  store i8 0, ptr %i.gi, align 1, !tbaa !81
  %i.gj = add nsw i64 %i.fu, -1                   ; 2 uses
  %i.gk = icmp eq i64 %i.gj, 0
  br i1 %i.gk, label %_ZSt27__uninitialized_default_n_aIPcmcET_S1_T0_RSaIT1_E.exit31.i.i, label %bb.cy

bb.cy:                                            ; preds = %.noexc97
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gi, i64 1
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.gl, i8 0, i64 %i.gj, i1 false)
  br label %_ZSt27__uninitialized_default_n_aIPcmcET_S1_T0_RSaIT1_E.exit31.i.i

_ZSt27__uninitialized_default_n_aIPcmcET_S1_T0_RSaIT1_E.exit31.i.i: ; preds = %bb.cy, %.noexc97
  %.not35.i.i = icmp eq ptr %.sroa.17.0125, %.sroa.0100.0127
  br i1 %.not35.i.i, label %_ZNSt12_Vector_baseIcSaIcEE13_M_deallocateEPcm.exit34.i.i, label %bb.cz

bb.cz:                                            ; preds = %_ZSt27__uninitialized_default_n_aIPcmcET_S1_T0_RSaIT1_E.exit31.i.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.gh, ptr nonnull align 1 %.sroa.0100.0127, i64 %i.fr, i1 false)
  br label %_ZNSt12_Vector_baseIcSaIcEE13_M_deallocateEPcm.exit34.i.i

_ZNSt12_Vector_baseIcSaIcEE13_M_deallocateEPcm.exit34.i.i: ; preds = %bb.cz, %_ZSt27__uninitialized_default_n_aIPcmcET_S1_T0_RSaIT1_E.exit31.i.i
  %i.gm = sub i64 %i.fv, %i.fq
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0100.0127, i64 noundef %i.gm) #26
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gh, i64 %i.fs
  %i.go = getelementptr inbounds nuw i8, ptr %i.gh, i64 %i.gg
  br label %_ZNSt6vectorIcSaIcEE6resizeEm.exit

_ZNSt6vectorIcSaIcEE6resizeEm.exit:               ; preds = %_ZNSt12_Vector_baseIcSaIcEE13_M_deallocateEPcm.exit34.i.i, %bb.cv, %bb.cu
  %.sroa.17.2 = phi ptr [ %i.gn, %_ZNSt12_Vector_baseIcSaIcEE13_M_deallocateEPcm.exit34.i.i ], [ %i.ga, %bb.cu ], [ %i.gd, %bb.cv ]
  %.sroa.24.4 = phi ptr [ %i.go, %_ZNSt12_Vector_baseIcSaIcEE13_M_deallocateEPcm.exit34.i.i ], [ %.sroa.24.0126, %bb.cu ], [ %.sroa.24.0126, %bb.cv ] ; 2 uses
  %.sroa.0100.4 = phi ptr [ %i.gh, %_ZNSt12_Vector_baseIcSaIcEE13_M_deallocateEPcm.exit34.i.i ], [ %.sroa.0100.0127, %bb.cu ], [ %.sroa.0100.0127, %bb.cv ] ; 3 uses
  %i.gp = load ptr, ptr %i.b, align 8, !tbaa !92
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gp, i64 176
  %i.gr = load i32, ptr %i.gq, align 8, !tbaa !106
  invoke void @_ZN27OpenImageIO_v3_1_Imf__3_3_521DeepScanLineInputFile12rawPixelDataEiPcRm(ptr noundef nonnull align 8 dereferenceable(32) %1, i32 noundef %i.gr, ptr noundef nonnull %.sroa.0100.4, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %bb.db unwind label %.loopexit

bb.da:                                            ; preds = %bb.cq
  %i.gs = landingpad { ptr, i32 }
          cleanup
  br label %bb.df

.loopexit:                                        ; preds = %.lr.ph, %_ZNSt6vectorIcSaIcEE6resizeEm.exit, %_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i.i
  %.sroa.24.1.ph = phi ptr [ %.sroa.24.0126, %.lr.ph ], [ %.sroa.24.0126, %_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i.i ], [ %.sroa.24.4, %_ZNSt6vectorIcSaIcEE6resizeEm.exit ]
  %.sroa.0100.1.ph = phi ptr [ %.sroa.0100.0127, %.lr.ph ], [ %.sroa.0100.0127, %_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i.i ], [ %.sroa.0100.4, %_ZNSt6vectorIcSaIcEE6resizeEm.exit ]
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIcSaIcEED2Ev.exit

.loopexit.split-lp:                               ; preds = %bb.cx
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIcSaIcEED2Ev.exit

bb.db:                                            ; preds = %_ZNSt6vectorIcSaIcEE6resizeEm.exit, %bb.cs
  %.sroa.17.1 = phi ptr [ %.sroa.17.2, %_ZNSt6vectorIcSaIcEE6resizeEm.exit ], [ %.sroa.17.0125, %bb.cs ]
  %.sroa.24.2 = phi ptr [ %.sroa.24.4, %_ZNSt6vectorIcSaIcEE6resizeEm.exit ], [ %.sroa.24.0126, %bb.cs ] ; 3 uses
  %.sroa.0100.2 = phi ptr [ %.sroa.0100.4, %_ZNSt6vectorIcSaIcEE6resizeEm.exit ], [ %.sroa.0100.0127, %bb.cs ] ; 7 uses
  %i.gt = getelementptr inbounds nuw i8, ptr %.sroa.0100.2, i64 4
  %.sroa.0.0.copyload = load i64, ptr %i.gt, align 1 ; 2 uses
  %i.gu = getelementptr inbounds nuw i8, ptr %.sroa.0100.2, i64 12
  %.sroa.0.0.copyload6 = load i64, ptr %i.gu, align 1
  %i.gv = getelementptr inbounds nuw i8, ptr %.sroa.0100.2, i64 20
  %.sroa.0.0.copyload8 = load i64, ptr %i.gv, align 1
  %i.gw = load ptr, ptr %i.b, align 8, !tbaa !92  ; 5 uses
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gw, i64 368
  %i.gy = load ptr, ptr %i.gx, align 8, !tbaa !58
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gw, i64 176
  %i.ha = load i32, ptr %i.gz, align 8, !tbaa !106
  %i.hb = getelementptr inbounds nuw i8, ptr %i.gw, i64 196
  %i.hc = load i32, ptr %i.hb, align 4, !tbaa !119
  %i.hd = getelementptr inbounds nuw i8, ptr %i.gw, i64 320
  %i.he = load i32, ptr %i.hd, align 8, !tbaa !117
  %i.hf = invoke noundef i32 @_ZN27OpenImageIO_v3_1_Imf__3_3_514lineBufferMinYEiii(i32 noundef %i.ha, i32 noundef %i.hc, i32 noundef %i.he)
          to label %bb.dc unwind label %bb.de

bb.dc:                                            ; preds = %bb.db
  %i.hg = getelementptr inbounds nuw i8, ptr %.sroa.0100.2, i64 28 ; 2 uses
  %i.hh = getelementptr inbounds nuw i8, ptr %i.hg, i64 %.sroa.0.0.copyload
  invoke fastcc void @_ZN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_114writePixelDataEPNS_17OutputStreamMutexEPNS_22DeepScanLineOutputFile4DataEiPKcmmS7_m(ptr noundef %i.gy, ptr noundef nonnull %i.gw, i32 noundef %i.hf, ptr noundef nonnull %i.hh, i64 noundef %.sroa.0.0.copyload6, i64 noundef %.sroa.0.0.copyload8, ptr noundef nonnull %i.hg, i64 noundef %.sroa.0.0.copyload)
          to label %bb.dd unwind label %bb.de

bb.dd:                                            ; preds = %bb.dc
  %i.hi = load ptr, ptr %i.b, align 8, !tbaa !92  ; 4 uses
  %i.hj = getelementptr inbounds nuw i8, ptr %i.hi, i64 184
  %i.hk = load i32, ptr %i.hj, align 8, !tbaa !112
  %i.hl = icmp eq i32 %i.hk, 0
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hi, i64 320
  %i.hn = load i32, ptr %i.hm, align 8, !tbaa !117 ; 3 uses
  %i.ho = sub nsw i32 0, %i.hn
  %i.hp = select i1 %i.hl, i32 %i.hn, i32 %i.ho
  %i.hq = getelementptr inbounds nuw i8, ptr %i.hi, i64 176 ; 2 uses
  %i.hr = load i32, ptr %i.hq, align 8, !tbaa !106
  %i.hs = add nsw i32 %i.hr, %i.hp                ; 2 uses
  store i32 %i.hs, ptr %i.hq, align 8, !tbaa !106
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hi, i64 180 ; 2 uses
  %i.hu = load i32, ptr %i.ht, align 4, !tbaa !111
  %i.hv = sub nsw i32 %i.hu, %i.hn                ; 2 uses
  store i32 %i.hv, ptr %i.ht, align 4, !tbaa !111
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  %i.hw = icmp sgt i32 %i.hv, 0
  br i1 %i.hw, label %.lr.ph, label %_ZNSt6vectorIcSaIcEED2Ev.exit99, !llvm.loop !191

bb.de:                                            ; preds = %bb.dc, %bb.db
  %i.hx = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIcSaIcEED2Ev.exit

_ZNSt6vectorIcSaIcEED2Ev.exit:                    ; preds = %.loopexit, %.loopexit.split-lp, %bb.de
  %.sroa.24.3 = phi ptr [ %.sroa.24.2, %bb.de ], [ %.sroa.24.1.ph, %.loopexit ], [ %.sroa.24.0126, %.loopexit.split-lp ]
  %.sroa.0100.3 = phi ptr [ %.sroa.0100.2, %bb.de ], [ %.sroa.0100.1.ph, %.loopexit ], [ %.sroa.0100.0127, %.loopexit.split-lp ] ; 2 uses
  %.pn62 = phi { ptr, i32 } [ %i.hx, %bb.de ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  %i.hy = ptrtoint ptr %.sroa.24.3 to i64
  %i.hz = ptrtoint ptr %.sroa.0100.3 to i64
  %i.ia = sub i64 %i.hy, %i.hz
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0100.3, i64 noundef %i.ia) #26
  br label %bb.df

_ZNSt6vectorIcSaIcEED2Ev.exit99:                  ; preds = %bb.dd, %bb.cr
  %.sroa.24.0.lcssa = phi ptr [ %i.fn, %bb.cr ], [ %.sroa.24.2, %bb.dd ]
  %.sroa.0100.0.lcssa = phi ptr [ %i.fm, %bb.cr ], [ %.sroa.0100.2, %bb.dd ] ; 2 uses
  %i.ib = ptrtoint ptr %.sroa.24.0.lcssa to i64
  %i.ic = ptrtoint ptr %.sroa.0100.0.lcssa to i64
  %i.id = sub i64 %i.ib, %i.ic
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0100.0.lcssa, i64 noundef %i.id) #26
  %i.ie = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.e) #23 ; 0 uses
  ret void

bb.df:                                            ; preds = %bb.da, %_ZNSt6vectorIcSaIcEED2Ev.exit, %bb.ck, %bb.cp, %bb.bz, %bb.bj, %bb.au, %bb.af, %bb.s, %bb.n
  %.pn69.pn.pn = phi { ptr, i32 } [ %.pn69.pn, %bb.s ], [ %i.af, %bb.n ], [ %.pn.pn, %bb.af ], [ %.pn59.pn, %bb.bz ], [ %.pn56.pn, %bb.bj ], [ %.pn53.pn, %bb.au ], [ %.pn65.pn, %bb.cp ], [ %i.fi, %bb.ck ], [ %.pn62, %_ZNSt6vectorIcSaIcEED2Ev.exit ], [ %i.gs, %bb.da ]
  %i.if = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.e) #23 ; 0 uses
  resume { ptr, i32 } %.pn69.pn.pn

bb.dg:                                            ; preds = %bb.cj, %bb.bu, %bb.be, %bb.ap, %bb.aa, %bb.m
  unreachable
}

declare noundef nonnull align 8 dereferenceable(49) ptr @_ZNK27OpenImageIO_v3_1_Imf__3_3_521DeepScanLineInputFile6headerEv(ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #4

declare noundef zeroext i1 @_ZNK27OpenImageIO_v3_1_Imf__3_3_56Header7hasTypeEv(ptr noundef nonnull align 8 dereferenceable(49)) local_unnamed_addr #4

declare noundef ptr @_ZNK27OpenImageIO_v3_1_Imf__3_3_521DeepScanLineInputFile8fileNameEv(ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #4

declare noundef nonnull align 4 dereferenceable(4) ptr @_ZNK27OpenImageIO_v3_1_Imf__3_3_56Header11compressionEv(ptr noundef nonnull align 8 dereferenceable(49)) local_unnamed_addr #4

declare noundef nonnull align 8 dereferenceable(48) ptr @_ZNK27OpenImageIO_v3_1_Imf__3_3_56Header8channelsEv(ptr noundef nonnull align 8 dereferenceable(49)) local_unnamed_addr #4

declare noundef zeroext i1 @_ZNK27OpenImageIO_v3_1_Imf__3_3_511ChannelListeqERKS0_(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef nonnull align 8 dereferenceable(48)) local_unnamed_addr #4

declare void @_ZN7Iex_3_38LogicExcC1ERNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(128)) unnamed_addr #4

; Function Attrs: nounwind
declare void @_ZN7Iex_3_38LogicExcD1Ev(ptr noundef nonnull align 8 dereferenceable(72)) unnamed_addr #6

declare void @_ZN27OpenImageIO_v3_1_Imf__3_3_521DeepScanLineInputFile12rawPixelDataEiPcRm(ptr noundef nonnull align 8 dereferenceable(32), i32 noundef, ptr noundef, ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #0

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_114writePixelDataEPNS_17OutputStreamMutexEPNS_22DeepScanLineOutputFile4DataEiPKcmmS7_m(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, ptr noundef %3, i64 noundef %4, i64 noundef %5, ptr noundef %6, i64 noundef %7) unnamed_addr #3 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [4 x i8], align 4                 ; 4 uses
  %i.e = alloca [4 x i8], align 4                 ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 4 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !101  ; 2 uses
  store i64 0, ptr %i.f, align 8, !tbaa !101
  %i.h = icmp eq i64 %i.g, 0
  br i1 %i.h, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !96   ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !76
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  %i.n = tail call noundef i64 %i.m(ptr noundef nonnull align 8 dereferenceable(40) %i.j)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0 = phi i64 [ %i.n, %bb.b ], [ %i.g, %bb.a ]  ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 208
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 176
  %i.q = load i32, ptr %i.p, align 8, !tbaa !106
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 196
  %i.s = load i32, ptr %i.r, align 4, !tbaa !119
  %i.t = sub nsw i32 %i.q, %i.s
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 320
  %i.v = load i32, ptr %i.u, align 8, !tbaa !117
  %i.w = sdiv i32 %i.t, %i.v
  %i.x = sext i32 %i.w to i64
  %i.y = load ptr, ptr %i.o, align 8, !tbaa !87
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %i.x
  store i64 %.0, ptr %i.z, align 8, !tbaa !131
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 60 ; 2 uses
  %i.ab = load i8, ptr %i.aa, align 4, !tbaa !104, !range !141, !noundef !142
  %i.ac = trunc nuw i8 %i.ab to i1
  br i1 %i.ac, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !96 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 324
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #23
  store i32 %i.ag, ptr %i.e, align 4
  %i.ah = load ptr, ptr %i.ae, align 8, !tbaa !76
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  %i.aj = load ptr, ptr %i.ai, align 8
  call void %i.aj(ptr noundef nonnull align 8 dereferenceable(40) %i.ae, ptr noundef nonnull %i.e, i32 noundef 4), !inline_history !192
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #23
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 6 uses
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !96 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #23
  store i32 %2, ptr %i.d, align 4
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !76
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  %i.ao = load ptr, ptr %i.an, align 8
  call void %i.ao(ptr noundef nonnull align 8 dereferenceable(40) %i.al, ptr noundef nonnull %i.d, i32 noundef 4), !inline_history !192
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #23
  %i.ap = load ptr, ptr %i.ak, align 8, !tbaa !96 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #23
  store i64 %7, ptr %i.c, align 8
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !76
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  %i.as = load ptr, ptr %i.ar, align 8
  call void %i.as(ptr noundef nonnull align 8 dereferenceable(40) %i.ap, ptr noundef nonnull %i.c, i32 noundef 8), !inline_history !132
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #23
  %i.at = load ptr, ptr %i.ak, align 8, !tbaa !96 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #23
  store i64 %4, ptr %i.b, align 8
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !76
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 16
  %i.aw = load ptr, ptr %i.av, align 8
  call void %i.aw(ptr noundef nonnull align 8 dereferenceable(40) %i.at, ptr noundef nonnull %i.b, i32 noundef 8), !inline_history !132
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  %i.ax = load ptr, ptr %i.ak, align 8, !tbaa !96 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  store i64 %5, ptr %i.a, align 8
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !76
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  %i.ba = load ptr, ptr %i.az, align 8
  call void %i.ba(ptr noundef nonnull align 8 dereferenceable(40) %i.ax, ptr noundef nonnull %i.a, i32 noundef 8), !inline_history !132
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  %i.bb = load ptr, ptr %i.ak, align 8, !tbaa !96 ; 2 uses
  %i.bc = trunc i64 %7 to i32
  %i.bd = load ptr, ptr %i.bb, align 8, !tbaa !76
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 16
  %i.bf = load ptr, ptr %i.be, align 8
  call void %i.bf(ptr noundef nonnull align 8 dereferenceable(40) %i.bb, ptr noundef %6, i32 noundef %i.bc)
  %i.bg = load ptr, ptr %i.ak, align 8, !tbaa !96 ; 2 uses
  %i.bh = trunc i64 %4 to i32
  %i.bi = load ptr, ptr %i.bg, align 8, !tbaa !76
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 16
  %i.bk = load ptr, ptr %i.bj, align 8
  call void %i.bk(ptr noundef nonnull align 8 dereferenceable(40) %i.bg, ptr noundef %3, i32 noundef %i.bh)
  %i.bl = add i64 %4, 28
  %i.bm = add i64 %i.bl, %7
  %i.bn = add i64 %i.bm, %.0                      ; 2 uses
  store i64 %i.bn, ptr %i.f, align 8, !tbaa !101
  %i.bo = load i8, ptr %i.aa, align 4, !tbaa !104, !range !141, !noundef !142
  %i.bp = trunc nuw i8 %i.bo to i1
  br i1 %i.bp, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.bq = add i64 %i.bn, 4
  store i64 %i.bq, ptr %i.f, align 8, !tbaa !101
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  ret void
}

declare noundef i32 @_ZN27OpenImageIO_v3_1_Imf__3_3_514lineBufferMinYEiii(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define void @_ZN27OpenImageIO_v3_1_Imf__3_3_522DeepScanLineOutputFile18updatePreviewImageEPKNS_11PreviewRgbaE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = ptrtoaddr ptr %1 to i64
  %2 = alloca %"class.std::__cxx11::basic_stringstream", align 8 ; 6 uses
  %3 = alloca %"class.std::__cxx11::basic_stringstream", align 8 ; 8 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 8 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !92
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 368
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !58   ; 3 uses
  %i.f = tail call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.e) #23 ; 2 uses
  %.not.i.i = icmp eq i32 %i.f, 0
end_hunk_0
