Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/gdcmJPEGCodec?download=true
inline.NumInlined: 1148
inline.NumDeleted: 527
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZN4gdcm9JPEGCodec12DecodeExtentEPcjjjjjjRNSt3__113basic_istreamIcNS2_11char_traitsIcEEEE:bb.a
bb.ap:                                            ; preds = %_ZNSt3__19basic_iosIcNS_11char_traitsIcEEE5clearB8ne180100Ej.exit
  %i.ci = landingpad { ptr, i32 }
          cleanup
  br label %bb.ck

bb.aq:                                            ; preds = %bb.af, %bb.ag, %bb.ah, %bb.al, %bb.am, %bb.ac, %bb.y
  %.pn185 = phi { ptr, i32 } [ %i.ay, %bb.y ], [ %i.bb, %bb.ac ], [ %i.br, %bb.af ], [ %i.bt, %bb.ah ], [ %i.cf, %bb.am ], [ %i.ce, %bb.al ], [ %i.bs, %bb.ag ]
  invoke void @__cxa_end_catch()
          to label %bb.ck unwind label %bb.fw

bb.ar:                                            ; preds = %bb.ao
  %i.cj = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.ch) #26
  br label %bb.ck

bb.as:                                            ; preds = %.invoke445
  %i.ck = landingpad { ptr, i32 }
          cleanup
  br label %bb.ck

bb.at:                                            ; preds = %bb.an
  %i.cl = icmp eq i32 %6, 0
  br i1 %i.cl, label %bb.aw, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.cm = call ptr @__cxa_allocate_exception(i64 40) #26 ; 3 uses
  invoke void @_ZN4gdcm9ExceptionC2EPKcS2_jS2_(ptr noundef nonnull align 8 dereferenceable(40) %i.cm, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.1, i32 noundef 575, ptr noundef nonnull @.str.2)
          to label %.invoke445 unwind label %bb.av

.invoke445:                                       ; preds = %bb.ao, %bb.au
  %i.cn = phi ptr [ %i.cm, %bb.au ], [ %i.ch, %bb.ao ]
  invoke void @__cxa_throw(ptr nonnull %i.cn, ptr nonnull @_ZTIN4gdcm9ExceptionE, ptr nonnull @_ZN4gdcm9ExceptionD2Ev) #29
          to label %.cont446 unwind label %bb.as

.cont446:                                         ; preds = %.invoke445
  unreachable

bb.av:                                            ; preds = %bb.au
  %i.co = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.cm) #26
  br label %bb.ck

bb.aw:                                            ; preds = %bb.at
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #26
  invoke void @_ZNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEC1B8ne180100Ev(ptr noundef nonnull align 8 dereferenceable(128) %12)
          to label %bb.ax unwind label %bb.bb

bb.ax:                                            ; preds = %bb.aw
  %i.cp = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 3 uses
  %i.cq = load ptr, ptr %10, align 8, !tbaa !85   ; 2 uses
  %i.cr = load ptr, ptr %i.m, align 8, !tbaa !86
  %i.cs = ptrtoint ptr %i.cr to i64
  %i.ct = ptrtoint ptr %i.cq to i64
  %i.cu = sub i64 %i.cs, %i.ct
  %i.cv = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE5writeEPKcl(ptr noundef nonnull align 8 dereferenceable(8) %i.cp, ptr noundef %i.cq, i64 noundef %i.cu)
          to label %bb.ay unwind label %bb.bc     ; 0 uses

bb.ay:                                            ; preds = %bb.ax
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #26
  invoke void @_ZNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEC1B8ne180100Ev(ptr noundef nonnull align 8 dereferenceable(128) %13)
          to label %bb.az unwind label %bb.bd

bb.az:                                            ; preds = %bb.ay
  %i.cw = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 3 uses
  %i.cx = load ptr, ptr %0, align 8, !tbaa !14
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 72
  %i.cz = load ptr, ptr %i.cy, align 8
  %i.da = invoke noundef zeroext i1 %i.cz(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef nonnull align 8 dereferenceable(16) %12, ptr noundef nonnull align 8 dereferenceable(8) %i.cw)
          to label %bb.ba unwind label %bb.be

bb.ba:                                            ; preds = %bb.az
  br i1 %i.da, label %bb.bf, label %.critedge202

bb.bb:                                            ; preds = %bb.aw
  %i.db = landingpad { ptr, i32 }
          cleanup
  br label %bb.cj

bb.bc:                                            ; preds = %bb.ax
  %i.dc = landingpad { ptr, i32 }
          cleanup
  br label %bb.ci

bb.bd:                                            ; preds = %bb.ay
  %i.dd = landingpad { ptr, i32 }
          cleanup
  br label %bb.ch

bb.be:                                            ; preds = %bb.az
  %i.de = landingpad { ptr, i32 }
          cleanup
  br label %bb.cg

bb.bf:                                            ; preds = %bb.ba
  %i.df = sub i32 %3, %2
  %i.dg = add i32 %i.df, 1
  %i.dh = invoke noundef zeroext i8 @_ZNK4gdcm11PixelFormat12GetPixelSizeEv(ptr noundef nonnull align 2 dereferenceable(10) %i.d)
          to label %bb.bg unwind label %bb.bk

bb.bg:                                            ; preds = %bb.bf
  %i.di = zext i8 %i.dh to i32                    ; 2 uses
  %i.dj = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNSt3__113basic_istreamIcNS_11char_traitsIcEEE5seekgExNS_8ios_base7seekdirE(ptr noundef nonnull align 8 dereferenceable(16) %13, i64 noundef 0, i32 noundef 0)
          to label %bb.bh unwind label %bb.bk     ; 0 uses

bb.bh:                                            ; preds = %bb.bg
  %i.dk = load ptr, ptr %13, align 8, !tbaa !14
  %i.dl = getelementptr i8, ptr %i.dk, i64 -24
  %i.dm = load i64, ptr %i.dl, align 8
  %i.dn = getelementptr inbounds i8, ptr %13, i64 %i.dm
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 32
  %i.dp = load i32, ptr %i.do, align 8, !tbaa !66
  %i.dq = icmp eq i32 %i.dp, 0
  br i1 %i.dq, label %bb.bm, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.dr = call ptr @__cxa_allocate_exception(i64 40) #26 ; 3 uses
  invoke void @_ZN4gdcm9ExceptionC2EPKcS2_jS2_(ptr noundef nonnull align 8 dereferenceable(40) %i.dr, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.1, i32 noundef 588, ptr noundef nonnull @.str.2)
          to label %bb.bj unwind label %bb.bl

bb.bj:                                            ; preds = %bb.bi
  invoke void @__cxa_throw(ptr nonnull %i.dr, ptr nonnull @_ZTIN4gdcm9ExceptionE, ptr nonnull @_ZN4gdcm9ExceptionD2Ev) #29
          to label %bb.fx unwind label %bb.bk

bb.bk:                                            ; preds = %bb.bj, %bb.bg, %bb.bf
  %i.ds = landingpad { ptr, i32 }
          cleanup
  br label %bb.cg

bb.bl:                                            ; preds = %bb.bi
  %i.dt = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.dr) #26
  br label %bb.cg

bb.bm:                                            ; preds = %bb.bh
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #26
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %14, i8 0, i64 24, i1 false)
  %i.du = mul i32 %i.dg, %i.di                    ; 3 uses
  %i.dv = zext i32 %i.du to i64                   ; 3 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %14, i64 8 ; 2 uses
  %.not309 = icmp eq i32 %i.du, 0
  br i1 %.not309, label %_ZNSt3__16vectorIcNS_9allocatorIcEEE6resizeEm.exit208, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  invoke void @_ZNSt3__16vectorIcNS_9allocatorIcEEE8__appendEm(ptr noundef nonnull align 8 dereferenceable(24) %14, i64 noundef %i.dv)
          to label %._ZNSt3__16vectorIcNS_9allocatorIcEEE6resizeEm.exit208_crit_edge unwind label %bb.br

._ZNSt3__16vectorIcNS_9allocatorIcEEE6resizeEm.exit208_crit_edge: ; preds = %bb.bn
  %.pre377.a = load ptr, ptr %14, align 8, !tbaa !85
  br label %_ZNSt3__16vectorIcNS_9allocatorIcEEE6resizeEm.exit208

_ZNSt3__16vectorIcNS_9allocatorIcEEE6resizeEm.exit208: ; preds = %._ZNSt3__16vectorIcNS_9allocatorIcEEE6resizeEm.exit208_crit_edge, %bb.bm
  %i.dx = phi ptr [ %.pre377.a, %._ZNSt3__16vectorIcNS_9allocatorIcEEE6resizeEm.exit208_crit_edge ], [ null, %bb.bm ] ; 3 uses
  %.not190350 = icmp ugt i32 %4, %5
  br i1 %.not190350, label %.split.us, label %.preheader

.preheader:                                       ; preds = %_ZNSt3__16vectorIcNS_9allocatorIcEEE6resizeEm.exit208, %bb.bq
  %.0136351 = phi i32 [ %i.ej, %bb.bq ], [ %4, %_ZNSt3__16vectorIcNS_9allocatorIcEEE6resizeEm.exit208 ] ; 3 uses
  %i.dy = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNSt3__113basic_istreamIcNS_11char_traitsIcEEE5seekgENS_4fposI11__mbstate_tEE(ptr noundef nonnull align 8 dereferenceable(16) %13, i64 0, i64 0)
          to label %bb.bo unwind label %bb.bs     ; 0 uses

bb.bo:                                            ; preds = %.preheader
  %i.dz = load i32, ptr %i.c, align 8, !tbaa !50
  %i.ea = mul i32 %.0136351, %i.dz
  %i.eb = add i32 %i.ea, %2
  %i.ec = mul i32 %i.eb, %i.di
  %i.ed = zext i32 %i.ec to i64
  %i.ee = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNSt3__113basic_istreamIcNS_11char_traitsIcEEE5seekgENS_4fposI11__mbstate_tEE(ptr noundef nonnull align 8 dereferenceable(16) %13, i64 0, i64 %i.ed)
          to label %bb.bp unwind label %bb.bs     ; 0 uses

bb.bp:                                            ; preds = %bb.bo
  %i.ef = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNSt3__113basic_istreamIcNS_11char_traitsIcEEE4readEPcl(ptr noundef nonnull align 8 dereferenceable(16) %13, ptr noundef %i.dx, i64 noundef %i.dv)
          to label %bb.bq unwind label %bb.bs     ; 0 uses

bb.bq:                                            ; preds = %bb.bp
  %reass.add310.reass = sub i32 %.0136351, %4
  %i.eg = mul i32 %i.du, %reass.add310.reass
  %i.eh = zext i32 %i.eg to i64
  %i.ei = getelementptr inbounds nuw i8, ptr %1, i64 %i.eh
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ei, ptr align 1 %i.dx, i64 %i.dv, i1 false)
  %i.ej = add i32 %.0136351, 1                    ; 2 uses
  %.not190 = icmp ugt i32 %i.ej, %5
  br i1 %.not190, label %.split.us.loopexit357, label %.preheader, !llvm.loop !134

bb.br:                                            ; preds = %bb.bn
  %i.ek = landingpad { ptr, i32 }
          cleanup
  br label %bb.ce

bb.bs:                                            ; preds = %bb.bp, %bb.bo, %.preheader
  %i.el = landingpad { ptr, i32 }
          cleanup
  br label %bb.ce

.split.us.loopexit357:                            ; preds = %bb.bq
  %.pre378 = load ptr, ptr %14, align 8, !tbaa !85
  br label %.split.us

.split.us:                                        ; preds = %.split.us.loopexit357, %_ZNSt3__16vectorIcNS_9allocatorIcEEE6resizeEm.exit208
  %i.em = phi ptr [ %.pre378, %.split.us.loopexit357 ], [ %i.dx, %_ZNSt3__16vectorIcNS_9allocatorIcEEE6resizeEm.exit208 ] ; 4 uses
  %.not.i.i = icmp eq ptr %i.em, null
  br i1 %.not.i.i, label %_ZNSt3__16vectorIcNS_9allocatorIcEEED2B8ne180100Ev.exit, label %bb.bt

bb.bt:                                            ; preds = %.split.us
  store ptr %i.em, ptr %i.dw, align 8, !tbaa !86
  %i.en = getelementptr inbounds nuw i8, ptr %14, i64 16
  %i.eo = load ptr, ptr %i.en, align 8, !tbaa !97
  %i.ep = ptrtoint ptr %i.eo to i64
  %i.eq = ptrtoint ptr %i.em to i64
  %i.er = sub i64 %i.ep, %i.eq
  call void @_ZdlPvm(ptr noundef nonnull %i.em, i64 noundef %i.er) #27
  br label %_ZNSt3__16vectorIcNS_9allocatorIcEEED2B8ne180100Ev.exit

_ZNSt3__16vectorIcNS_9allocatorIcEEED2B8ne180100Ev.exit: ; preds = %.split.us, %bb.bt
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #26
  %i.es = load ptr, ptr @_ZTTNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE, align 8 ; 3 uses
  store ptr %i.es, ptr %13, align 8, !tbaa !14
  %i.et = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE, i64 64), align 8 ; 2 uses
  %i.eu = getelementptr i8, ptr %i.es, i64 -24    ; 2 uses
  %i.ev = load i64, ptr %i.eu, align 8
  %i.ew = getelementptr inbounds i8, ptr %13, i64 %i.ev
  store ptr %i.et, ptr %i.ew, align 8, !tbaa !14
  %i.ex = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE, i64 72), align 8 ; 2 uses
  store ptr %i.ex, ptr %i.cw, align 8, !tbaa !14
  %i.ey = getelementptr inbounds nuw i8, ptr %13, i64 24 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEEE, i64 16), ptr %i.ey, align 8, !tbaa !14
  %i.ez = getelementptr inbounds nuw i8, ptr %13, i64 88 ; 2 uses
  %i.fa = load i8, ptr %i.ez, align 8
  %i.fb = trunc i8 %i.fa to i1
  br i1 %i.fb, label %bb.bu, label %_ZNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev.exit

bb.bu:                                            ; preds = %_ZNSt3__16vectorIcNS_9allocatorIcEEED2B8ne180100Ev.exit
  %i.fc = getelementptr inbounds nuw i8, ptr %13, i64 104
  %i.fd = load ptr, ptr %i.fc, align 8, !tbaa !44
  %i.fe = load i64, ptr %i.ez, align 8
  %i.ff = and i64 %i.fe, -2
  call void @_ZdlPvm(ptr noundef %i.fd, i64 noundef %i.ff) #27
  br label %_ZNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev.exit

_ZNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev.exit: ; preds = %_ZNSt3__16vectorIcNS_9allocatorIcEEED2B8ne180100Ev.exit, %bb.bu
  call void @_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEED2Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(100) %i.ey) #26
  call void @_ZNSt3__114basic_iostreamIcNS_11char_traitsIcEEED2Ev(ptr noundef nonnull align 8 dereferenceable(128) %13, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_ZTTNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE, i64 8)) #26
  %i.fg = getelementptr inbounds nuw i8, ptr %13, i64 128
  call void @_ZNSt3__19basic_iosIcNS_11char_traitsIcEEED2Ev(ptr noundef nonnull align 8 dead_on_return(148) dereferenceable(148) %i.fg) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #26
  store ptr %i.es, ptr %12, align 8, !tbaa !14
  %i.fh = load i64, ptr %i.eu, align 8
  %i.fi = getelementptr inbounds i8, ptr %12, i64 %i.fh
  store ptr %i.et, ptr %i.fi, align 8, !tbaa !14
  store ptr %i.ex, ptr %i.cp, align 8, !tbaa !14
  %i.fj = getelementptr inbounds nuw i8, ptr %12, i64 24 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEEE, i64 16), ptr %i.fj, align 8, !tbaa !14
  %i.fk = getelementptr inbounds nuw i8, ptr %12, i64 88 ; 2 uses
  %i.fl = load i8, ptr %i.fk, align 8
  %i.fm = trunc i8 %i.fl to i1
  br i1 %i.fm, label %bb.bv, label %_ZNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev.exit209

bb.bv:                                            ; preds = %_ZNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev.exit
  %i.fn = getelementptr inbounds nuw i8, ptr %12, i64 104
  %i.fo = load ptr, ptr %i.fn, align 8, !tbaa !44
  %i.fp = load i64, ptr %i.fk, align 8
  %i.fq = and i64 %i.fp, -2
  call void @_ZdlPvm(ptr noundef %i.fo, i64 noundef %i.fq) #27
  br label %_ZNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev.exit209

_ZNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev.exit209: ; preds = %_ZNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev.exit, %bb.bv
  call void @_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEED2Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(100) %i.fj) #26
  call void @_ZNSt3__114basic_iostreamIcNS_11char_traitsIcEEED2Ev(ptr noundef nonnull align 8 dereferenceable(128) %12, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_ZTTNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE, i64 8)) #26
  %i.fr = getelementptr inbounds nuw i8, ptr %12, i64 128
  call void @_ZNSt3__19basic_iosIcNS_11char_traitsIcEEED2Ev(ptr noundef nonnull align 8 dead_on_return(148) dereferenceable(148) %i.fr) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #26
  %i.fs = getelementptr inbounds nuw i8, ptr %11, i64 16
  %i.ft = load ptr, ptr %i.fs, align 8, !tbaa !47 ; 4 uses
  %.not.i.i237 = icmp eq ptr %i.ft, null
  br i1 %.not.i.i237, label %_ZN4gdcm12SmartPointerINS_5ValueEED2Ev.exit, label %bb.bw

bb.bw:                                            ; preds = %_ZNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev.exit209
  %i.fu = getelementptr inbounds nuw i8, ptr %i.ft, i64 8 ; 2 uses
  %i.fv = load i64, ptr %i.fu, align 8, !tbaa !54 ; 2 uses
  %i.fw = icmp sgt i64 %i.fv, 0
  br i1 %i.fw, label %bb.ca, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %i.fx = call ptr @__cxa_allocate_exception(i64 40) #26 ; 3 uses
  invoke void @_ZN4gdcm9ExceptionC2EPKcS2_jS2_(ptr noundef nonnull align 8 dereferenceable(40) %i.fx, ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.25, i32 noundef 77, ptr noundef nonnull @.str.2)
          to label %bb.by unwind label %bb.bz

bb.by:                                            ; preds = %bb.bx
  invoke void @__cxa_throw(ptr nonnull %i.fx, ptr nonnull @_ZTIN4gdcm9ExceptionE, ptr nonnull @_ZN4gdcm9ExceptionD2Ev) #29
          to label %.noexc.i unwind label %bb.cc

.noexc.i:                                         ; preds = %bb.by
  unreachable

bb.bz:                                            ; preds = %bb.bx
  %i.fy = landingpad { ptr, i32 }
          catch ptr null
  call void @__cxa_free_exception(ptr nonnull %i.fx) #26
  br label %.body.i

bb.ca:                                            ; preds = %bb.bw
  %i.fz = add nsw i64 %i.fv, -1                   ; 2 uses
  store i64 %i.fz, ptr %i.fu, align 8, !tbaa !54
  %.not.i.i.i238 = icmp eq i64 %i.fz, 0
  br i1 %.not.i.i.i238, label %bb.cb, label %_ZN4gdcm12SmartPointerINS_5ValueEED2Ev.exit

bb.cb:                                            ; preds = %bb.ca
  %i.ga = load ptr, ptr %i.ft, align 8, !tbaa !14
  %i.gb = getelementptr inbounds nuw i8, ptr %i.ga, i64 8
  %i.gc = load ptr, ptr %i.gb, align 8
  call void %i.gc(ptr noundef nonnull align 8 dereferenceable(16) %i.ft) #26, !inline_history !0
  br label %_ZN4gdcm12SmartPointerINS_5ValueEED2Ev.exit

bb.cc:                                            ; preds = %bb.by
  %i.gd = landingpad { ptr, i32 }
          catch ptr null
  br label %.body.i

.body.i:                                          ; preds = %bb.cc, %bb.bz
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.gd, %bb.cc ], [ %i.fy, %bb.bz ]
  %i.ge = extractvalue { ptr, i32 } %eh.lpad-body.i, 0
  call void @__clang_call_terminate(ptr %i.ge) #30
  unreachable

_ZN4gdcm12SmartPointerINS_5ValueEED2Ev.exit:      ; preds = %_ZNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev.exit209, %bb.ca, %bb.cb
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #26
  %i.gf = load ptr, ptr %10, align 8, !tbaa !85   ; 4 uses
  %.not.i.i210 = icmp eq ptr %i.gf, null
  br i1 %.not.i.i210, label %_ZNSt3__16vectorIcNS_9allocatorIcEEED2B8ne180100Ev.exit211, label %bb.cd

bb.cd:                                            ; preds = %_ZN4gdcm12SmartPointerINS_5ValueEED2Ev.exit
  store ptr %i.gf, ptr %i.m, align 8, !tbaa !86
  %i.gg = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.gh = load ptr, ptr %i.gg, align 8, !tbaa !97
  %i.gi = ptrtoint ptr %i.gh to i64
  %i.gj = ptrtoint ptr %i.gf to i64
  %i.gk = sub i64 %i.gi, %i.gj
  call void @_ZdlPvm(ptr noundef nonnull %i.gf, i64 noundef %i.gk) #27
  br label %_ZNSt3__16vectorIcNS_9allocatorIcEEED2B8ne180100Ev.exit211

_ZNSt3__16vectorIcNS_9allocatorIcEEED2B8ne180100Ev.exit211: ; preds = %_ZN4gdcm12SmartPointerINS_5ValueEED2Ev.exit, %bb.cd
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #26
  br label %bb.fn

bb.ce:                                            ; preds = %bb.bs, %bb.br
  %.pn191 = phi { ptr, i32 } [ %i.el, %bb.bs ], [ %i.ek, %bb.br ]
  %i.gl = load ptr, ptr %14, align 8, !tbaa !85   ; 4 uses
  %.not.i.i212 = icmp eq ptr %i.gl, null
  br i1 %.not.i.i212, label %_ZNSt3__16vectorIcNS_9allocatorIcEEED2B8ne180100Ev.exit213, label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  store ptr %i.gl, ptr %i.dw, align 8, !tbaa !86
  %i.gm = getelementptr inbounds nuw i8, ptr %14, i64 16
  %i.gn = load ptr, ptr %i.gm, align 8, !tbaa !97
  %i.go = ptrtoint ptr %i.gn to i64
  %i.gp = ptrtoint ptr %i.gl to i64
  %i.gq = sub i64 %i.go, %i.gp
  call void @_ZdlPvm(ptr noundef nonnull %i.gl, i64 noundef %i.gq) #27
  br label %_ZNSt3__16vectorIcNS_9allocatorIcEEED2B8ne180100Ev.exit213

_ZNSt3__16vectorIcNS_9allocatorIcEEED2B8ne180100Ev.exit213: ; preds = %bb.ce, %bb.cf
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #26
  br label %bb.cg

bb.cg:                                            ; preds = %bb.bk, %bb.bl, %_ZNSt3__16vectorIcNS_9allocatorIcEEED2B8ne180100Ev.exit213, %bb.be
  %.pn191.pn.pn = phi { ptr, i32 } [ %i.de, %bb.be ], [ %.pn191, %_ZNSt3__16vectorIcNS_9allocatorIcEEED2B8ne180100Ev.exit213 ], [ %i.ds, %bb.bk ], [ %i.dt, %bb.bl ]
  call void @_ZNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev(ptr noundef nonnull align 8 dereferenceable(128) %13) #26
  br label %bb.ch

bb.ch:                                            ; preds = %bb.cg, %bb.bd
  %.pn191.pn.pn.pn = phi { ptr, i32 } [ %.pn191.pn.pn, %bb.cg ], [ %i.dd, %bb.bd ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #26
  br label %bb.ci

bb.ci:                                            ; preds = %bb.ch, %bb.bc
  %.pn191.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn191.pn.pn.pn, %bb.ch ], [ %i.dc, %bb.bc ]
  call void @_ZNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev(ptr noundef nonnull align 8 dereferenceable(128) %12) #26
  br label %bb.cj

bb.cj:                                            ; preds = %bb.ci, %bb.bb
  %.pn191.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn191.pn.pn.pn.pn, %bb.ci ], [ %i.db, %bb.bb ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #26
  br label %bb.ck

bb.ck:                                            ; preds = %bb.ap, %bb.aq, %bb.cj, %bb.av, %bb.as, %bb.ar, %bb.v
  %.merged200 = phi { ptr, i32 } [ %.pn191.pn.pn.pn.pn.pn, %bb.cj ], [ %i.ck, %bb.as ], [ %i.co, %bb.av ], [ %i.cj, %bb.ar ], [ %.pn180, %bb.v ], [ %i.ci, %bb.ap ], [ %.pn185, %bb.aq ]
  %i.gr = getelementptr inbounds nuw i8, ptr %11, i64 16
  call void @_ZN4gdcm12SmartPointerINS_5ValueEED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.gr) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #26
  %i.gs = load ptr, ptr %10, align 8, !tbaa !85   ; 4 uses
  %.not.i.i214 = icmp eq ptr %i.gs, null
  br i1 %.not.i.i214, label %_ZNSt3__16vectorIcNS_9allocatorIcEEED2B8ne180100Ev.exit215, label %bb.cl

bb.cl:                                            ; preds = %bb.ck
  store ptr %i.gs, ptr %i.m, align 8, !tbaa !86
  %i.gt = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.gu = load ptr, ptr %i.gt, align 8, !tbaa !97
  %i.gv = ptrtoint ptr %i.gu to i64
  %i.gw = ptrtoint ptr %i.gs to i64
end_hunk_0
