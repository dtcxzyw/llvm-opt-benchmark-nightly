Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/jpeg2000_boxes?download=true
inline.NumInlined: 1785
inline.NumDeleted: 997
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZN8Box_cdef5parseER14BitstreamRangePK20heif_security_limits:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #21
  call void @llvm.experimental.noalias.scope.decl(metadata !159)
  call void @llvm.experimental.noalias.scope.decl(metadata !160)
  call void @llvm.experimental.noalias.scope.decl(metadata !161)
  %i.cj = getelementptr inbounds nuw i8, ptr %6, i64 120
  %i.ck = load i32, ptr %i.cj, align 8, !tbaa !20, !noalias !162 ; 2 uses
  %i.cl = and i32 %i.ck, 16
  %.not.i.i.i.i48 = icmp eq i32 %i.cl, 0
  br i1 %.not.i.i.i.i48, label %bb.ad, label %bb.aa

bb.aa:                                            ; preds = %_ZNSt3__1lsB8ne180100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc.exit47
  %i.cm = getelementptr inbounds nuw i8, ptr %6, i64 112 ; 2 uses
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !21, !noalias !162 ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %6, i64 72
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !22, !noalias !162 ; 3 uses
  %i.cq = icmp ult ptr %i.cn, %i.cp
  br i1 %i.cq, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  store ptr %i.cp, ptr %i.cm, align 8, !tbaa !21, !noalias !162
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %i.cr = phi ptr [ %i.cp, %bb.ab ], [ %i.cn, %bb.aa ]
  %i.cs = getelementptr inbounds nuw i8, ptr %6, i64 64
  br label %_ZNKSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE4viewB8ne180100Ev.exit.i.i.i49

bb.ad:                                            ; preds = %_ZNSt3__1lsB8ne180100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc.exit47
  %i.ct = and i32 %i.ck, 8
  %.not1.i.i.i.i58 = icmp eq i32 %i.ct, 0
  br i1 %.not1.i.i.i.i58, label %.thread15.i.i.i59, label %bb.ae

.thread15.i.i.i59:                                ; preds = %bb.ad
  store i8 0, ptr %7, align 8, !alias.scope !162
  %i.cu = getelementptr inbounds nuw i8, ptr %7, i64 1
  br label %bb.aj

bb.ae:                                            ; preds = %bb.ad
  %i.cv = getelementptr inbounds nuw i8, ptr %6, i64 40
  %i.cw = getelementptr inbounds nuw i8, ptr %6, i64 56
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !23, !noalias !162
  br label %_ZNKSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE4viewB8ne180100Ev.exit.i.i.i49

_ZNKSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE4viewB8ne180100Ev.exit.i.i.i49: ; preds = %bb.ae, %bb.ac
  %.sink22.i.i.i50 = phi ptr [ %i.cr, %bb.ac ], [ %i.cx, %bb.ae ]
  %.sink21.in.i.i.i51 = phi ptr [ %i.cs, %bb.ac ], [ %i.cv, %bb.ae ]
  %.sink21.i.i.i52 = load ptr, ptr %.sink21.in.i.i.i51, align 8, !tbaa !24, !noalias !162 ; 2 uses
  %i.cy = ptrtoint ptr %.sink22.i.i.i50 to i64
  %i.cz = ptrtoint ptr %.sink21.i.i.i52 to i64
  %i.da = sub i64 %i.cy, %i.cz                    ; 8 uses
  %i.db = icmp ugt i64 %i.da, -9
  br i1 %i.db, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %_ZNKSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE4viewB8ne180100Ev.exit.i.i.i49
  invoke void @_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE20__throw_length_errorB8ne180100Ev(ptr noundef nonnull align 8 dereferenceable(24) %7) #22
          to label %.noexc60 unwind label %bb.ao

.noexc60:                                         ; preds = %bb.af
  unreachable

bb.ag:                                            ; preds = %_ZNKSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE4viewB8ne180100Ev.exit.i.i.i49
  %i.dc = icmp ult i64 %i.da, 23
  br i1 %i.dc, label %bb.ah, label %.thread.i.i.i.i.i53

.thread.i.i.i.i.i53:                              ; preds = %bb.ag
  %i.dd = or i64 %i.da, 7                         ; 2 uses
  %i.de = icmp eq i64 %i.dd, 23
  %i.df = add nuw i64 %i.dd, 1
  %i.dg = select i1 %i.de, i64 25, i64 %i.df      ; 2 uses
  %i.dh = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.dg) #23
          to label %.noexc61 unwind label %bb.ao  ; 2 uses

.noexc61:                                         ; preds = %.thread.i.i.i.i.i53
  %i.di = getelementptr inbounds nuw i8, ptr %7, i64 16
  store ptr %i.dh, ptr %i.di, align 8, !tbaa !25, !alias.scope !162
  %i.dj = or i64 %i.dg, 1
  store i64 %i.dj, ptr %7, align 8, !alias.scope !162
  %i.dk = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 %i.da, ptr %i.dk, align 8, !tbaa !25, !alias.scope !162
  br label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  %i.dl = trunc nuw nsw i64 %i.da to i8
  %i.dm = shl nuw nsw i8 %i.dl, 1
  store i8 %i.dm, ptr %7, align 8, !alias.scope !162
  %i.dn = getelementptr inbounds nuw i8, ptr %7, i64 1 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i57 = icmp eq i64 %i.da, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i57, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %.noexc61
  %.017.i.i.i.i.i54 = phi ptr [ %i.dh, %.noexc61 ], [ %i.dn, %bb.ah ] ; 2 uses
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %.017.i.i.i.i.i54, ptr align 1 %.sink21.i.i.i52, i64 %i.da, i1 false)
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ah, %.thread15.i.i.i59
  %.sroa.4.0.i712.i.i.i55 = phi i64 [ 0, %bb.ah ], [ %i.da, %bb.ai ], [ 0, %.thread15.i.i.i59 ]
  %.018.i.i.i.i.i56 = phi ptr [ %i.dn, %bb.ah ], [ %.017.i.i.i.i.i54, %bb.ai ], [ %i.cu, %.thread15.i.i.i59 ]
  %i.do = getelementptr inbounds nuw i8, ptr %.018.i.i.i.i.i56, i64 %.sroa.4.0.i712.i.i.i55
  store i8 0, ptr %i.do, align 1, !tbaa !25
  invoke void @_ZN5ErrorC1E15heif_error_code18heif_suberror_codeRKNSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEE(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef 2, i32 noundef 100, ptr noundef nonnull align 8 dereferenceable(24) %7)
          to label %bb.ak unwind label %bb.ap

bb.ak:                                            ; preds = %bb.aj
  %i.dp = load i8, ptr %7, align 8
  %i.dq = trunc i8 %i.dp to i1
  br i1 %i.dq, label %bb.al, label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit63

bb.al:                                            ; preds = %bb.ak
  %i.dr = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.ds = load ptr, ptr %i.dr, align 8, !tbaa !25
  %i.dt = load i64, ptr %7, align 8
  %i.du = and i64 %i.dt, -2
  call void @_ZdlPvm(ptr noundef %i.ds, i64 noundef %i.du) #24
  br label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit63

_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit63: ; preds = %bb.ak, %bb.al
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #21
  %i.dv = load ptr, ptr @_ZTTNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE, align 8 ; 2 uses
  store ptr %i.dv, ptr %6, align 8, !tbaa !27
  %i.dw = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE, i64 64), align 8
  %i.dx = getelementptr i8, ptr %i.dv, i64 -24
  %i.dy = load i64, ptr %i.dx, align 8
  %i.dz = getelementptr inbounds i8, ptr %6, i64 %i.dy
  store ptr %i.dw, ptr %i.dz, align 8, !tbaa !27
  %i.ea = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE, i64 72), align 8
  store ptr %i.ea, ptr %i.cb, align 8, !tbaa !27
  %i.eb = getelementptr inbounds nuw i8, ptr %6, i64 24 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEEE, i64 16), ptr %i.eb, align 8, !tbaa !27
  %i.ec = getelementptr inbounds nuw i8, ptr %6, i64 88 ; 2 uses
  %i.ed = load i8, ptr %i.ec, align 8
  %i.ee = trunc i8 %i.ed to i1
  br i1 %i.ee, label %bb.am, label %_ZNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev.exit64

bb.am:                                            ; preds = %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit63
  %i.ef = getelementptr inbounds nuw i8, ptr %6, i64 104
  %i.eg = load ptr, ptr %i.ef, align 8, !tbaa !25
  %i.eh = load i64, ptr %i.ec, align 8
  %i.ei = and i64 %i.eh, -2
  call void @_ZdlPvm(ptr noundef %i.eg, i64 noundef %i.ei) #24
  br label %_ZNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev.exit64

_ZNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev.exit64: ; preds = %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit63, %bb.am
  call void @_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEED2Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(100) %i.eb) #21
  call void @_ZNSt3__114basic_iostreamIcNS_11char_traitsIcEEED2Ev(ptr noundef nonnull align 8 dereferenceable(128) %6, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_ZTTNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE, i64 8)) #21
  %i.ej = getelementptr inbounds nuw i8, ptr %6, i64 128
  call void @_ZNSt3__19basic_iosIcNS_11char_traitsIcEEED2Ev(ptr noundef nonnull align 8 dead_on_return(148) dereferenceable(148) %i.ej) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21
  br label %bb.az

bb.an:                                            ; preds = %bb.z, %bb.y, %bb.x, %_ZNSt3__1lsB8ne180100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc.exit45, %_ZNSt3__1lsB8ne180100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc.exit43
  %i.ek = landingpad { ptr, i32 }
          cleanup
  br label %bb.ar

bb.ao:                                            ; preds = %.thread.i.i.i.i.i53, %bb.af
  %i.el = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit65

bb.ap:                                            ; preds = %bb.aj
  %i.em = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.en = load i8, ptr %7, align 8
  %i.eo = trunc i8 %i.en to i1
  br i1 %i.eo, label %bb.aq, label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit65

bb.aq:                                            ; preds = %bb.ap
  %i.ep = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.eq = load ptr, ptr %i.ep, align 8, !tbaa !25
  %i.er = load i64, ptr %7, align 8
  %i.es = and i64 %i.er, -2
  call void @_ZdlPvm(ptr noundef %i.eq, i64 noundef %i.es) #24
  br label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit65

_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit65: ; preds = %bb.aq, %bb.ap, %bb.ao
  %.pn = phi { ptr, i32 } [ %i.el, %bb.ao ], [ %i.em, %bb.ap ], [ %i.em, %bb.aq ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #21
  br label %bb.ar

bb.ar:                                            ; preds = %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit65, %bb.an
  %.pn.pn = phi { ptr, i32 } [ %.pn, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit65 ], [ %i.ek, %bb.an ]
  call void @_ZNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev(ptr noundef nonnull align 8 dereferenceable(128) %6) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21
  br label %bb.ba

bb.as:                                            ; preds = %bb.w
  %i.et = getelementptr inbounds nuw i8, ptr %1, i64 160 ; 3 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %1, i64 168 ; 2 uses
  %i.ev = load ptr, ptr %i.eu, align 8, !tbaa !39
  %i.ew = load ptr, ptr %i.et, align 8, !tbaa !40 ; 2 uses
  %i.ex = ptrtoint ptr %i.ev to i64
  %i.ey = ptrtoint ptr %i.ew to i64
  %i.ez = sub i64 %i.ex, %i.ey
  %i.fa = sdiv exact i64 %i.ez, 6                 ; 3 uses
  %i.fb = icmp ult i64 %i.fa, %i.bw
  br i1 %i.fb, label %bb.at, label %bb.au

bb.at:                                            ; preds = %bb.as
  %i.fc = sub nuw nsw i64 %i.bw, %i.fa
  tail call void @_ZNSt3__16vectorIN8Box_cdef7ChannelENS_9allocatorIS2_EEE8__appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.et, i64 noundef %i.fc)
  br label %.lr.ph.a

bb.au:                                            ; preds = %bb.as
  %i.fd = icmp ugt i64 %i.fa, %i.bw
  br i1 %i.fd, label %bb.av, label %.lr.ph.a

bb.av:                                            ; preds = %bb.au
  %i.fe = getelementptr inbounds nuw [6 x i8], ptr %i.ew, i64 %i.bw
  store ptr %i.fe, ptr %i.eu, align 8, !tbaa !39
  br label %.lr.ph.a

.lr.ph.a:                                         ; preds = %bb.at, %bb.au, %bb.av
  %i.ff = getelementptr inbounds nuw i8, ptr %2, i64 40
  %.not69 = icmp eq i16 %i.a, 0
  br i1 %.not69, label %.critedge, label %bb.aw

bb.aw:                                            ; preds = %.lr.ph.a, %bb.ay
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.ay ], [ 0, %.lr.ph.a ] ; 2 uses
  %i.fg = load i8, ptr %i.ff, align 8, !tbaa !41, !range !42, !noundef !43
  %i.fh = trunc nuw i8 %i.fg to i1
  br i1 %i.fh, label %.critedge, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.fi = load i64, ptr %i.bx, align 8, !tbaa !34
  %i.fj = icmp eq i64 %i.fi, 0
  br i1 %i.fj, label %.critedge, label %bb.ay

.critedge:                                        ; preds = %bb.ax, %bb.ay, %bb.aw, %.lr.ph.a
  tail call void @_ZNK14BitstreamRange9get_errorEv(ptr dead_on_unwind writable sret(%class.Error) align 8 %0, ptr noundef nonnull align 8 dereferenceable(41) %2)
  br label %bb.az

bb.ay:                                            ; preds = %bb.ax
  %i.fk = tail call noundef zeroext i16 @_ZN14BitstreamRange6read16Ev(ptr noundef nonnull align 8 dereferenceable(41) %2)
  %i.fl = tail call noundef zeroext i16 @_ZN14BitstreamRange6read16Ev(ptr noundef nonnull align 8 dereferenceable(41) %2)
  %i.fm = tail call noundef zeroext i16 @_ZN14BitstreamRange6read16Ev(ptr noundef nonnull align 8 dereferenceable(41) %2)
  %i.fn = load ptr, ptr %i.et, align 8, !tbaa !40
  %i.fo = getelementptr inbounds nuw [6 x i8], ptr %i.fn, i64 %indvars.iv ; 3 uses
  store i16 %i.fk, ptr %i.fo, align 2, !tbaa !45
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fo, i64 2
  store i16 %i.fl, ptr %.sroa.4.0..sroa_idx, align 2, !tbaa !45
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fo, i64 4
  store i16 %i.fm, ptr %.sroa.5.0..sroa_idx, align 2, !tbaa !45
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.bw
  br i1 %exitcond.not, label %.critedge, label %bb.aw, !llvm.loop !151

bb.az:                                            ; preds = %.critedge, %_ZNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev.exit64, %_ZNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev.exit
  ret void

bb.ba:                                            ; preds = %bb.ar, %bb.v
  %.pn33.pn.pn = phi { ptr, i32 } [ %.pn33.pn, %bb.v ], [ %.pn.pn, %bb.ar ]
  resume { ptr, i32 } %.pn33.pn.pn
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare noundef zeroext i16 @_ZN14BitstreamRange6read16Ev(ptr noundef nonnull align 8 dereferenceable(41)) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEC1B8ne180100Ev(ptr noundef nonnull align 8 dereferenceable(128) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE, i64 104), ptr %i.a, align 8, !tbaa !27
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE, i64 64), ptr %i.b, align 8, !tbaa !27
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.d = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE, i64 16), align 8 ; 2 uses
  store ptr %i.d, ptr %0, align 8, !tbaa !27
  %i.e = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE, i64 24), align 8
  %i.f = getelementptr i8, ptr %i.d, i64 -24
  %i.g = load i64, ptr %i.f, align 8
  %i.h = getelementptr inbounds i8, ptr %0, i64 %i.g
  store ptr %i.e, ptr %i.h, align 8, !tbaa !27
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.i, align 8, !tbaa !164
  %i.j = load ptr, ptr %0, align 8, !tbaa !27
  %i.k = getelementptr i8, ptr %i.j, i64 -24
  %i.l = load i64, ptr %i.k, align 8
  %i.m = getelementptr inbounds i8, ptr %0, i64 %i.l ; 3 uses
  invoke void @_ZNSt3__18ios_base4initEPv(ptr noundef nonnull align 8 dereferenceable(148) %i.m, ptr noundef nonnull %i.c)
          to label %bb.b unwind label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 136
  store ptr null, ptr %i.n, align 8, !tbaa !53
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 144
  store i32 -1, ptr %i.o, align 8, !tbaa !54
  %i.p = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE, i64 32), align 8 ; 2 uses
  store ptr %i.p, ptr %i.b, align 8, !tbaa !27
  %i.q = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE, i64 40), align 8
  %i.r = getelementptr i8, ptr %i.p, i64 -24
  %i.s = load i64, ptr %i.r, align 8
  %i.t = getelementptr inbounds i8, ptr %i.b, i64 %i.s
  store ptr %i.q, ptr %i.t, align 8, !tbaa !27
  %i.u = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE, i64 8), align 8 ; 2 uses
  store ptr %i.u, ptr %0, align 8, !tbaa !27
  %i.v = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE, i64 48), align 8
  %i.w = getelementptr i8, ptr %i.u, i64 -24
  %i.x = load i64, ptr %i.w, align 8
  %i.y = getelementptr inbounds i8, ptr %0, i64 %i.x
  store ptr %i.v, ptr %i.y, align 8, !tbaa !27
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE, i64 24), ptr %0, align 8, !tbaa !27
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE, i64 104), ptr %i.a, align 8, !tbaa !27
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE, i64 64), ptr %i.b, align 8, !tbaa !27
  invoke void @_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEEC2Ev(ptr noundef nonnull align 8 dereferenceable(100) %i.c)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %bb.b
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEEE, i64 16), ptr %i.c, align 8, !tbaa !27
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 120
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.z, i8 0, i64 32, i1 false)
  store i32 24, ptr %i.aa, align 8, !tbaa !20
  ret void

bb.d:                                             ; preds = %bb.a
  %i.ab = landingpad { ptr, i32 }
          cleanup
  br label %bb.f

bb.e:                                             ; preds = %bb.b
  %i.ac = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZNSt3__114basic_iostreamIcNS_11char_traitsIcEEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_ZTTNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE, i64 8)) #21
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.pn = phi { ptr, i32 } [ %i.ac, %bb.e ], [ %i.ab, %bb.d ]
  tail call void @_ZNSt3__19basic_iosIcNS_11char_traitsIcEEED2Ev(ptr noundef nonnull align 8 dead_on_return(148) dereferenceable(148) %i.a) #21
  resume { ptr, i32 } %.pn
}

declare i32 @__gxx_personality_v0(...)

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEt(ptr noundef nonnull align 8 dereferenceable(8), i16 noundef zeroext) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEj(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #2

declare void @_ZN5ErrorC1E15heif_error_code18heif_suberror_codeRKNSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEE(ptr noundef nonnull align 8 dereferenceable(32), i32 noundef, i32 noundef, ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev(ptr noundef nonnull align 8 dereferenceable(128) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr @_ZTTNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE, align 8 ; 2 uses
  store ptr %i.a, ptr %0, align 8, !tbaa !27
  %i.b = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE, i64 64), align 8
  %i.c = getelementptr i8, ptr %i.a, i64 -24
  %i.d = load i64, ptr %i.c, align 8
  %i.e = getelementptr inbounds i8, ptr %0, i64 %i.d
  store ptr %i.b, ptr %i.e, align 8, !tbaa !27
  %i.f = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE, i64 72), align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.f, ptr %i.g, align 8, !tbaa !27
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEEE, i64 16), ptr %i.h, align 8, !tbaa !27
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.j = load i8, ptr %i.i, align 8
  %i.k = trunc i8 %i.j to i1
  br i1 %i.k, label %bb.b, label %_ZNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit

bb.b:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !25
  %i.n = load i64, ptr %i.i, align 8
  %i.o = and i64 %i.n, -2
  tail call void @_ZdlPvm(ptr noundef %i.m, i64 noundef %i.o) #24
  br label %_ZNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit

_ZNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit: ; preds = %bb.a, %bb.b
  tail call void @_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEED2Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(100) %i.h) #21
  tail call void @_ZNSt3__114basic_iostreamIcNS_11char_traitsIcEEED2Ev(ptr noundef nonnull align 8 dereferenceable(128) %0, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_ZTTNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE, i64 8)) #21
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 128
  tail call void @_ZNSt3__19basic_iosIcNS_11char_traitsIcEEED2Ev(ptr noundef nonnull align 8 dead_on_return(148) dereferenceable(148) %i.p) #21
  ret void
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEm(ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNK14BitstreamRange9get_errorEv(ptr dead_on_unwind noalias writable sret(%class.Error) align 8 %0, ptr noundef nonnull align 8 dereferenceable(41) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__1::basic_string", align 8 ; 12 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.b = load i8, ptr %i.a, align 8, !tbaa !41, !range !42, !noundef !43
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2B8ne180100ILi0EEEPKc.exit, label %bb.f

_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2B8ne180100ILi0EEEPKc.exit: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #21
  store i8 0, ptr %2, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 1
  store i8 0, ptr %i.d, align 1, !tbaa !25
  invoke void @_ZN5ErrorC1E15heif_error_code18heif_suberror_codeRKNSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEE(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef 2, i32 noundef 100, ptr noundef nonnull align 8 dereferenceable(24) %2)
          to label %bb.b unwind label %bb.d

bb.b:                                             ; preds = %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2B8ne180100ILi0EEEPKc.exit
  %i.e = load i8, ptr %2, align 8
  %i.f = trunc i8 %i.e to i1
  br i1 %i.f, label %bb.c, label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !25
  %i.i = load i64, ptr %2, align 8
  %i.j = and i64 %i.i, -2
  call void @_ZdlPvm(ptr noundef %i.h, i64 noundef %i.j) #24
  br label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit

_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit: ; preds = %bb.b, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  br label %_ZN5ErrorC2ERKS_.exit

bb.d:                                             ; preds = %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2B8ne180100ILi0EEEPKc.exit
  %i.k = landingpad { ptr, i32 }
          cleanup
  %i.l = load i8, ptr %2, align 8
  %i.m = trunc i8 %i.l to i1
  br i1 %i.m, label %bb.e, label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit2

bb.e:                                             ; preds = %bb.d
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 16
end_hunk_0
begin_hunk_1_@_ZN8Box_j2kL5parseER14BitstreamRangePK20heif_security_limits:bb.a
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !21, !noalias !310 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 72
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !22, !noalias !310 ; 3 uses
  %i.v = icmp ult ptr %i.s, %i.u
  br i1 %i.v, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  store ptr %i.u, ptr %i.r, align 8, !tbaa !21, !noalias !310
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.w = phi ptr [ %i.u, %bb.f ], [ %i.s, %bb.e ]
  %i.x = getelementptr inbounds nuw i8, ptr %4, i64 64
  br label %_ZNKSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE4viewB8ne180100Ev.exit.i.i.i

bb.h:                                             ; preds = %_ZNSt3__1lsB8ne180100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc.exit27
  %i.y = and i32 %i.p, 8
  %.not1.i.i.i.i = icmp eq i32 %i.y, 0
  br i1 %.not1.i.i.i.i, label %.thread15.i.i.i, label %bb.i

.thread15.i.i.i:                                  ; preds = %bb.h
  store i8 0, ptr %5, align 8, !alias.scope !310
  %i.z = getelementptr inbounds nuw i8, ptr %5, i64 1
  br label %bb.n

bb.i:                                             ; preds = %bb.h
  %i.aa = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.ab = getelementptr inbounds nuw i8, ptr %4, i64 56
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !23, !noalias !310
  br label %_ZNKSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE4viewB8ne180100Ev.exit.i.i.i

_ZNKSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE4viewB8ne180100Ev.exit.i.i.i: ; preds = %bb.i, %bb.g
  %.sink22.i.i.i = phi ptr [ %i.w, %bb.g ], [ %i.ac, %bb.i ]
  %.sink21.in.i.i.i = phi ptr [ %i.x, %bb.g ], [ %i.aa, %bb.i ]
  %.sink21.i.i.i = load ptr, ptr %.sink21.in.i.i.i, align 8, !tbaa !24, !noalias !310 ; 2 uses
  %i.ad = ptrtoint ptr %.sink22.i.i.i to i64
  %i.ae = ptrtoint ptr %.sink21.i.i.i to i64
  %i.af = sub i64 %i.ad, %i.ae                    ; 8 uses
  %i.ag = icmp ugt i64 %i.af, -9
  br i1 %i.ag, label %bb.j, label %bb.k

bb.j:                                             ; preds = %_ZNKSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE4viewB8ne180100Ev.exit.i.i.i
  invoke void @_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE20__throw_length_errorB8ne180100Ev(ptr noundef nonnull align 8 dereferenceable(24) %5) #22
          to label %.noexc unwind label %bb.s

.noexc:                                           ; preds = %bb.j
  unreachable

bb.k:                                             ; preds = %_ZNKSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE4viewB8ne180100Ev.exit.i.i.i
  %i.ah = icmp ult i64 %i.af, 23
  br i1 %i.ah, label %bb.l, label %.thread.i.i.i.i.i

.thread.i.i.i.i.i:                                ; preds = %bb.k
  %i.ai = or i64 %i.af, 7                         ; 2 uses
  %i.aj = icmp eq i64 %i.ai, 23
  %i.ak = add nuw i64 %i.ai, 1
  %i.al = select i1 %i.aj, i64 25, i64 %i.ak      ; 2 uses
  %i.am = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.al) #23
          to label %.noexc28 unwind label %bb.s   ; 2 uses

.noexc28:                                         ; preds = %.thread.i.i.i.i.i
  %i.an = getelementptr inbounds nuw i8, ptr %5, i64 16
  store ptr %i.am, ptr %i.an, align 8, !tbaa !25, !alias.scope !310
  %i.ao = or i64 %i.al, 1
  store i64 %i.ao, ptr %5, align 8, !alias.scope !310
  %i.ap = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %i.af, ptr %i.ap, align 8, !tbaa !25, !alias.scope !310
  br label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.aq = trunc nuw nsw i64 %i.af to i8
  %i.ar = shl nuw nsw i8 %i.aq, 1
  store i8 %i.ar, ptr %5, align 8, !alias.scope !310
  %i.as = getelementptr inbounds nuw i8, ptr %5, i64 1 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.af, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l, %.noexc28
  %.017.i.i.i.i.i = phi ptr [ %i.am, %.noexc28 ], [ %i.as, %bb.l ] ; 2 uses
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %.017.i.i.i.i.i, ptr align 1 %.sink21.i.i.i, i64 %i.af, i1 false)
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l, %.thread15.i.i.i
  %.sroa.4.0.i712.i.i.i = phi i64 [ 0, %bb.l ], [ %i.af, %bb.m ], [ 0, %.thread15.i.i.i ]
  %.018.i.i.i.i.i = phi ptr [ %i.as, %bb.l ], [ %.017.i.i.i.i.i, %bb.m ], [ %i.z, %.thread15.i.i.i ]
  %i.at = getelementptr inbounds nuw i8, ptr %.018.i.i.i.i.i, i64 %.sroa.4.0.i712.i.i.i
  store i8 0, ptr %i.at, align 1, !tbaa !25
  invoke void @_ZN5ErrorC1E15heif_error_code18heif_suberror_codeRKNSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEE(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef 2, i32 noundef 100, ptr noundef nonnull align 8 dereferenceable(24) %5)
          to label %bb.o unwind label %bb.t

bb.o:                                             ; preds = %bb.n
  %i.au = load i8, ptr %5, align 8
  %i.av = trunc i8 %i.au to i1
  br i1 %i.av, label %bb.p, label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit

bb.p:                                             ; preds = %bb.o
  %i.aw = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !25
  %i.ay = load i64, ptr %5, align 8
  %i.az = and i64 %i.ay, -2
  call void @_ZdlPvm(ptr noundef %i.ax, i64 noundef %i.az) #24
  br label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit

_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit: ; preds = %bb.o, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  %i.ba = load ptr, ptr @_ZTTNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE, align 8 ; 2 uses
  store ptr %i.ba, ptr %4, align 8, !tbaa !27
  %i.bb = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE, i64 64), align 8
  %i.bc = getelementptr i8, ptr %i.ba, i64 -24
  %i.bd = load i64, ptr %i.bc, align 8
  %i.be = getelementptr inbounds i8, ptr %4, i64 %i.bd
  store ptr %i.bb, ptr %i.be, align 8, !tbaa !27
  %i.bf = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE, i64 72), align 8
  store ptr %i.bf, ptr %i.g, align 8, !tbaa !27
  %i.bg = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEEE, i64 16), ptr %i.bg, align 8, !tbaa !27
  %i.bh = getelementptr inbounds nuw i8, ptr %4, i64 88 ; 2 uses
  %i.bi = load i8, ptr %i.bh, align 8
  %i.bj = trunc i8 %i.bi to i1
  br i1 %i.bj, label %bb.q, label %_ZNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev.exit

bb.q:                                             ; preds = %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit
  %i.bk = getelementptr inbounds nuw i8, ptr %4, i64 104
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !25
  %i.bm = load i64, ptr %i.bh, align 8
  %i.bn = and i64 %i.bm, -2
  call void @_ZdlPvm(ptr noundef %i.bl, i64 noundef %i.bn) #24
  br label %_ZNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev.exit

_ZNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev.exit: ; preds = %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit, %bb.q
  call void @_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEED2Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(100) %i.bg) #21
  call void @_ZNSt3__114basic_iostreamIcNS_11char_traitsIcEEED2Ev(ptr noundef nonnull align 8 dereferenceable(128) %4, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_ZTTNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE, i64 8)) #21
  %i.bo = getelementptr inbounds nuw i8, ptr %4, i64 128
  call void @_ZNSt3__19basic_iosIcNS_11char_traitsIcEEED2Ev(ptr noundef nonnull align 8 dead_on_return(148) dereferenceable(148) %i.bo) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  br label %bb.ag

bb.r:                                             ; preds = %bb.d, %bb.c, %bb.b, %_ZNSt3__1lsB8ne180100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc.exit26, %_ZNSt3__1lsB8ne180100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc.exit
  %i.bp = landingpad { ptr, i32 }
          cleanup
  br label %bb.v

bb.s:                                             ; preds = %.thread.i.i.i.i.i, %bb.j
  %i.bq = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit29

bb.t:                                             ; preds = %bb.n
  %i.br = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bs = load i8, ptr %5, align 8
  %i.bt = trunc i8 %i.bs to i1
  br i1 %i.bt, label %bb.u, label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit29

bb.u:                                             ; preds = %bb.t
  %i.bu = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !25
  %i.bw = load i64, ptr %5, align 8
  %i.bx = and i64 %i.bw, -2
  call void @_ZdlPvm(ptr noundef %i.bv, i64 noundef %i.bx) #24
  br label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit29

_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit29: ; preds = %bb.u, %bb.t, %bb.s
  %.pn = phi { ptr, i32 } [ %i.bq, %bb.s ], [ %i.br, %bb.t ], [ %i.br, %bb.u ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  br label %bb.v

bb.v:                                             ; preds = %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit29, %bb.r
  %.pn.pn = phi { ptr, i32 } [ %.pn, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit29 ], [ %i.bp, %bb.r ]
  call void @_ZNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev(ptr noundef nonnull align 8 dereferenceable(128) %4) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  resume { ptr, i32 } %.pn.pn

bb.w:                                             ; preds = %bb.a
  %i.by = getelementptr inbounds nuw i8, ptr %1, i64 160 ; 4 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %1, i64 168 ; 3 uses
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !100
  %i.cb = load ptr, ptr %i.by, align 8, !tbaa !101 ; 2 uses
  %i.cc = ptrtoint ptr %i.ca to i64
  %i.cd = ptrtoint ptr %i.cb to i64
  %i.ce = sub i64 %i.cc, %i.cd
  %i.cf = sdiv exact i64 %i.ce, 6                 ; 3 uses
  %i.cg = icmp ult i64 %i.cf, %i.b
  br i1 %i.cg, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.ch = sub nuw nsw i64 %i.b, %i.cf
  tail call void @_ZNSt3__16vectorIN8Box_j2kL5LayerENS_9allocatorIS2_EEE8__appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.by, i64 noundef %i.ch)
  br label %_ZNSt3__16vectorIN8Box_j2kL5LayerENS_9allocatorIS2_EEE6resizeEm.exit

bb.y:                                             ; preds = %bb.w
  %i.ci = icmp ugt i64 %i.cf, %i.b
  br i1 %i.ci, label %bb.z, label %_ZNSt3__16vectorIN8Box_j2kL5LayerENS_9allocatorIS2_EEE6resizeEm.exit

bb.z:                                             ; preds = %bb.y
  %i.cj = getelementptr inbounds nuw [6 x i8], ptr %i.cb, i64 %i.b
  store ptr %i.cj, ptr %i.bz, align 8, !tbaa !100
  br label %_ZNSt3__16vectorIN8Box_j2kL5LayerENS_9allocatorIS2_EEE6resizeEm.exit

_ZNSt3__16vectorIN8Box_j2kL5LayerENS_9allocatorIS2_EEE6resizeEm.exit: ; preds = %bb.x, %bb.y, %bb.z
  %7 = getelementptr inbounds nuw i8, ptr %2, i64 40
  %.not33 = icmp eq i16 %i.a, 0
  br i1 %.not33, label %.critedge, label %.lr.ph.a

.lr.ph.a:                                         ; preds = %_ZNSt3__16vectorIN8Box_j2kL5LayerENS_9allocatorIS2_EEE6resizeEm.exit
  %wide.trip.count = zext i16 %i.a to i64
  br label %bb.aa

bb.aa:                                            ; preds = %.lr.ph.a, %bb.ad
  %indvars.iv = phi i64 [ 0, %.lr.ph.a ], [ %indvars.iv.next, %bb.ad ] ; 2 uses
  %i.ck = load i8, ptr %7, align 8, !tbaa !41, !range !42, !noundef !43
  %i.cl = trunc nuw i8 %i.ck to i1
  br i1 %i.cl, label %.critedge, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.cm = load i64, ptr %i.c, align 8, !tbaa !34
  %i.cn = icmp eq i64 %i.cm, 0
  br i1 %i.cn, label %.critedge, label %bb.ad

.critedge:                                        ; preds = %bb.ab, %bb.ad, %bb.aa, %_ZNSt3__16vectorIN8Box_j2kL5LayerENS_9allocatorIS2_EEE6resizeEm.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #21
  call void @_ZNK14BitstreamRange9get_errorEv(ptr dead_on_unwind nonnull writable sret(%class.Error) align 8 %6, ptr noundef nonnull align 8 dereferenceable(41) %2)
  %i.co = load i32, ptr %6, align 8, !tbaa !105
  %.not = icmp eq i32 %i.co, 0
  %i.cp = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.cq = load i8, ptr %i.cp, align 8
  %i.cr = trunc i8 %i.cq to i1
  br i1 %i.cr, label %bb.ac, label %_ZN5ErrorD2Ev.exit

bb.ac:                                            ; preds = %.critedge
  %i.cs = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !25
  %i.cu = load i64, ptr %i.cp, align 8
  %i.cv = and i64 %i.cu, -2
  call void @_ZdlPvm(ptr noundef %i.ct, i64 noundef %i.cv) #24
  br label %_ZN5ErrorD2Ev.exit

_ZN5ErrorD2Ev.exit:                               ; preds = %.critedge, %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21
  br i1 %.not, label %bb.af, label %bb.ae

bb.ad:                                            ; preds = %bb.ab
  %i.cw = tail call noundef zeroext i16 @_ZN14BitstreamRange6read16Ev(ptr noundef nonnull align 8 dereferenceable(41) %2)
  %i.cx = tail call noundef zeroext i8 @_ZN14BitstreamRange5read8Ev(ptr noundef nonnull align 8 dereferenceable(41) %2)
  %i.cy = tail call noundef zeroext i16 @_ZN14BitstreamRange6read16Ev(ptr noundef nonnull align 8 dereferenceable(41) %2)
  %i.cz = load ptr, ptr %i.by, align 8, !tbaa !101
  %i.da = getelementptr inbounds nuw [6 x i8], ptr %i.cz, i64 %indvars.iv ; 3 uses
  store i16 %i.cw, ptr %i.da, align 2, !tbaa !45
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.da, i64 2
  store i8 %i.cx, ptr %.sroa.4.0..sroa_idx, align 2, !tbaa !25
  %.sroa.51.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.da, i64 4
  store i16 %i.cy, ptr %.sroa.51.0..sroa_idx, align 2, !tbaa !45
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.critedge, label %bb.aa, !llvm.loop !306

bb.ae:                                            ; preds = %_ZN5ErrorD2Ev.exit
  %i.db = load ptr, ptr %i.by, align 8, !tbaa !101
  store ptr %i.db, ptr %i.bz, align 8, !tbaa !100
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %_ZN5ErrorD2Ev.exit
  call void @_ZNK14BitstreamRange9get_errorEv(ptr dead_on_unwind writable sret(%class.Error) align 8 %0, ptr noundef nonnull align 8 dereferenceable(41) %2)
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %_ZNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZNK8Box_j2kL4dumpER6Indent(ptr dead_on_unwind noalias writable sret(%"class.std::__1::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(184) %1, ptr noundef nonnull align 4 dereferenceable(4) %2) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::__1::basic_string", align 8 ; 12 uses
  %4 = alloca %"class.std::__1::basic_ostringstream", align 8 ; 26 uses
  %5 = alloca %"class.std::__1::basic_string", align 8 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #21
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 112 ; 4 uses
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVNSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE, i64 64), ptr %i.a, align 8, !tbaa !27
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 5 uses
  %i.c = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE, i64 8), align 8 ; 2 uses
  store ptr %i.c, ptr %4, align 8, !tbaa !27
  %i.d = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE, i64 16), align 8
  %i.e = getelementptr i8, ptr %i.c, i64 -24
  %i.f = load i64, ptr %i.e, align 8
  %i.g = getelementptr inbounds i8, ptr %4, i64 %i.f
  store ptr %i.d, ptr %i.g, align 8, !tbaa !27
  %i.h = load ptr, ptr %4, align 8, !tbaa !27
  %i.i = getelementptr i8, ptr %i.h, i64 -24
  %i.j = load i64, ptr %i.i, align 8
  %i.k = getelementptr inbounds i8, ptr %4, i64 %i.j ; 3 uses
  invoke void @_ZNSt3__18ios_base4initEPv(ptr noundef nonnull align 8 dereferenceable(148) %i.k, ptr noundef nonnull %i.b)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 136
  store ptr null, ptr %i.l, align 8, !tbaa !53
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 144
  store i32 -1, ptr %i.m, align 8, !tbaa !54
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVNSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE, i64 24), ptr %4, align 8, !tbaa !27
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVNSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE, i64 64), ptr %i.a, align 8, !tbaa !27
  invoke void @_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEEC2Ev(ptr noundef nonnull align 8 dereferenceable(100) %i.b)
          to label %_ZNSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEC1B8ne180100Ev.exit unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.n = landingpad { ptr, i32 }
          cleanup
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.o = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEED2Ev(ptr noundef nonnull align 8 dereferenceable(112) %4, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_ZTTNSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE, i64 8)) #21
  br label %bb.e

common.resume:                                    ; preds = %.body, %bb.e
  %common.resume.op = phi { ptr, i32 } [ %.pn.i, %bb.e ], [ %.pn12, %.body ]
  resume { ptr, i32 } %common.resume.op

bb.e:                                             ; preds = %bb.d, %bb.c
  %.pn.i = phi { ptr, i32 } [ %i.o, %bb.d ], [ %i.n, %bb.c ]
  call void @_ZNSt3__19basic_iosIcNS_11char_traitsIcEEED2Ev(ptr noundef nonnull align 8 dead_on_return(148) dereferenceable(148) %i.a) #21
  br label %common.resume

_ZNSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEC1B8ne180100Ev.exit: ; preds = %bb.b
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEEE, i64 16), ptr %i.b, align 8, !tbaa !27
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 72 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 104 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.p, i8 0, i64 32, i1 false)
  store i32 16, ptr %i.q, align 8, !tbaa !20
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #21
  invoke void @_ZNK3Box4dumpER6Indent(ptr dead_on_unwind nonnull writable sret(%"class.std::__1::basic_string") align 8 %5, ptr noundef nonnull align 8 dereferenceable(153) %1, ptr noundef nonnull align 4 dereferenceable(4) %2)
          to label %bb.f unwind label %bb.q

bb.f:                                             ; preds = %_ZNSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEC1B8ne180100Ev.exit
  %i.r = load i8, ptr %5, align 8                 ; 2 uses
  %i.s = trunc i8 %i.r to i1                      ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 3 uses
  %i.u = load ptr, ptr %i.t, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %5, i64 1
  %i.w = select i1 %i.s, ptr %i.u, ptr %i.v
  %i.x = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.y = load i64, ptr %i.x, align 8
  %i.z = lshr i8 %i.r, 1
  %i.aa = zext nneg i8 %i.z to i64
  %i.ab = select i1 %i.s, i64 %i.y, i64 %i.aa
  %i.ac = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__124__put_character_sequenceB8ne180100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef %i.w, i64 noundef %i.ab)
          to label %_ZNSt3__1lsB8ne180100IcNS_11char_traitsIcEENS_9allocatorIcEEEERNS_13basic_ostreamIT_T0_EES9_RKNS_12basic_stringIS6_S7_T1_EE.exit unwind label %bb.r ; 0 uses

_ZNSt3__1lsB8ne180100IcNS_11char_traitsIcEENS_9allocatorIcEEEERNS_13basic_ostreamIT_T0_EES9_RKNS_12basic_stringIS6_S7_T1_EE.exit: ; preds = %bb.f
  %i.ad = load i8, ptr %5, align 8
  %i.ae = trunc i8 %i.ad to i1
  br i1 %i.ae, label %bb.g, label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit

bb.g:                                             ; preds = %_ZNSt3__1lsB8ne180100IcNS_11char_traitsIcEENS_9allocatorIcEEEERNS_13basic_ostreamIT_T0_EES9_RKNS_12basic_stringIS6_S7_T1_EE.exit
  %i.af = load ptr, ptr %i.t, align 8, !tbaa !25
  %i.ag = load i64, ptr %5, align 8
  %i.ah = and i64 %i.ag, -2
  call void @_ZdlPvm(ptr noundef %i.af, i64 noundef %i.ah) #24
  br label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit

_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit: ; preds = %_ZNSt3__1lsB8ne180100IcNS_11char_traitsIcEENS_9allocatorIcEEEERNS_13basic_ostreamIT_T0_EES9_RKNS_12basic_stringIS6_S7_T1_EE.exit, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 160
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !101 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 168
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !100 ; 2 uses
  %.not27 = icmp eq ptr %i.aj, %i.al
  br i1 %.not27, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit
  %i.am = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %3, i64 1
  %i.ao = getelementptr inbounds nuw i8, ptr %3, i64 8
  br label %bb.t

._crit_edge:                                      ; preds = %_ZNSt3__1lsB8ne180100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc.exit23, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit
  call void @llvm.experimental.noalias.scope.decl(metadata !317)
  call void @llvm.experimental.noalias.scope.decl(metadata !318)
  call void @llvm.experimental.noalias.scope.decl(metadata !319)
  %i.ap = load i32, ptr %i.q, align 8, !tbaa !20, !noalias !320 ; 2 uses
  %i.aq = and i32 %i.ap, 16
  %.not.i.i.i.i = icmp eq i32 %i.aq, 0
  br i1 %.not.i.i.i.i, label %bb.k, label %bb.h

bb.h:                                             ; preds = %._crit_edge
  %i.ar = getelementptr inbounds nuw i8, ptr %4, i64 96 ; 2 uses
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !21, !noalias !320 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %4, i64 56
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !22, !noalias !320 ; 3 uses
  %i.av = icmp ult ptr %i.as, %i.au
  br i1 %i.av, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store ptr %i.au, ptr %i.ar, align 8, !tbaa !21, !noalias !320
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.aw = phi ptr [ %i.au, %bb.i ], [ %i.as, %bb.h ]
  %i.ax = getelementptr inbounds nuw i8, ptr %4, i64 48
  br label %_ZNKSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE4viewB8ne180100Ev.exit.i.i.i

bb.k:                                             ; preds = %._crit_edge
  %i.ay = and i32 %i.ap, 8
  %.not1.i.i.i.i = icmp eq i32 %i.ay, 0
  br i1 %.not1.i.i.i.i, label %.thread15.i.i.i, label %bb.l
end_hunk_1
