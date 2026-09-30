Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/grfmt_gif?download=true
inline.NumInlined: 1655
inline.NumDeleted: 675
loop-unroll.NumCompletelyUnrolled: 15
loop-unroll.NumUnrolled: 15
begin_hunk_0_@_ZN2cv10GifDecoder14getFrameCount_Ev:bb.a
  invoke void @_ZNSt9basic_iosIcSt11char_traitsIcEE4initEPSt15basic_streambufIcS1_E(ptr noundef nonnull align 8 dereferenceable(264) %i.cx, ptr noundef null)
          to label %bb.p unwind label %bb.o

bb.o:                                             ; preds = %.noexc.i
  %i.cy = landingpad { ptr, i32 }
          cleanup
  store ptr %i.k, ptr %2, align 8, !tbaa !18
  %i.cz = load i64, ptr %i.m, align 8
  %i.da = getelementptr inbounds i8, ptr %2, i64 %i.cz
  store ptr %i.l, ptr %i.da, align 8, !tbaa !18
  store i64 0, ptr %i.n, align 8, !tbaa !105
  br label %.body.i

bb.p:                                             ; preds = %.noexc.i
  %i.db = load i64, ptr %i.u, align 8
  %i.dc = getelementptr inbounds i8, ptr %2, i64 %i.db
  store ptr %i.t, ptr %i.dc, align 8, !tbaa !18
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 24), ptr %2, align 8, !tbaa !18
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 104), ptr %i.f, align 8, !tbaa !18
  store <2 x ptr> <ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 64), ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16)>, ptr %i.o, align 8, !tbaa !18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.w, i8 0, i64 48, i1 false)
  call void @_ZNSt6localeC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %i.x) #21
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.v, align 8, !tbaa !18
  store i32 24, ptr %i.y, align 8, !tbaa !244
  store ptr %i.aa, ptr %i.z, align 8, !tbaa !95
  store i64 0, ptr %i.ab, align 8, !tbaa !24
  store i8 0, ptr %i.aa, align 8, !tbaa !93
  %i.dd = load ptr, ptr %2, align 8, !tbaa !18
  %i.de = getelementptr i8, ptr %i.dd, i64 -24
  %i.df = load i64, ptr %i.de, align 8
  %i.dg = getelementptr inbounds i8, ptr %2, i64 %i.df
  invoke void @_ZNSt9basic_iosIcSt11char_traitsIcEE4initEPSt15basic_streambufIcS1_E(ptr noundef nonnull align 8 dereferenceable(264) %i.dg, ptr noundef nonnull %i.v)
          to label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev.exit unwind label %bb.r

bb.q:                                             ; preds = %bb.n
  %i.dh = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

bb.r:                                             ; preds = %bb.p
  %i.di = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dead_on_return(104) dereferenceable(104) %i.v) #21
  store ptr %i.k, ptr %2, align 8, !tbaa !18
  %i.dj = load i64, ptr %i.m, align 8
  %i.dk = getelementptr inbounds i8, ptr %2, i64 %i.dj
  store ptr %i.l, ptr %i.dk, align 8, !tbaa !18
  store i64 0, ptr %i.n, align 8, !tbaa !105
  br label %.body.i

common.resume:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit135, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit93, %bb.aa, %bb.bd, %.body.i
  %common.resume.op = phi { ptr, i32 } [ %.pn.pn.i, %.body.i ], [ %.pn88, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit135 ], [ %.pn70.pn, %bb.bd ], [ %.pn81, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit93 ], [ %.pn78.pn, %bb.aa ]
  resume { ptr, i32 } %common.resume.op

.body.i:                                          ; preds = %bb.r, %bb.q, %bb.o
  %.pn.pn.i = phi { ptr, i32 } [ %i.di, %bb.r ], [ %i.dh, %bb.q ], [ %i.cy, %bb.o ]
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %i.f) #21
  br label %common.resume

_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev.exit: ; preds = %bb.p
  %i.dl = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.o, ptr noundef nonnull @.str.31, i64 noundef 35)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.y ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev.exit
  br i1 %.not77, label %bb.t, label %bb.s

bb.s:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.dm = load ptr, ptr %i.ci, align 8, !tbaa !107
  br label %bb.t

bb.t:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %bb.s
  %i.dn = phi ptr [ %i.dm, %bb.s ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit ]
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
  call void @llvm.experimental.noalias.scope.decl(metadata !245)
  call void @llvm.experimental.noalias.scope.decl(metadata !246)
  store ptr %i.ac, ptr %3, align 8, !tbaa !95, !alias.scope !247
  store i64 0, ptr %i.ad, align 8, !tbaa !24, !alias.scope !247
  store i8 0, ptr %i.ac, align 8, !tbaa !93, !alias.scope !247
  %i.do = load ptr, ptr %i.ae, align 8, !tbaa !108, !noalias !247 ; 3 uses
  %.not.i.not.i.i = icmp eq ptr %i.do, null
  %i.dp = load ptr, ptr %i.af, align 8, !noalias !247 ; 2 uses
  %i.dq = icmp ugt ptr %i.do, %i.dp
  %.08.i.i.i = select i1 %i.dq, ptr %i.do, ptr %i.dp ; 2 uses
  %.not5.i.i = icmp eq ptr %.08.i.i.i, null
  %.not.i.i = select i1 %.not.i.not.i.i, i1 true, i1 %.not5.i.i
  br i1 %.not.i.i, label %bb.w, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.dr = load ptr, ptr %i.ag, align 8, !tbaa !109, !noalias !247 ; 2 uses
  %i.ds = ptrtoint ptr %.08.i.i.i to i64
  %i.dt = ptrtoint ptr %i.dr to i64
  %i.du = sub i64 %i.ds, %i.dt
  %i.dv = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef 0, i64 noundef 0, ptr noundef %i.dr, i64 noundef %i.du)
          to label %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.v ; 0 uses

bb.v:                                             ; preds = %bb.w, %bb.u
  %i.dw = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.dx = load ptr, ptr %3, align 8, !tbaa !92, !alias.scope !247 ; 2 uses
  %i.dy = icmp eq ptr %i.dx, %i.ac
  br i1 %i.dy, label %.body, label %.body.sink.split

bb.w:                                             ; preds = %bb.t
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %i.z)
          to label %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.v

_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit: ; preds = %bb.w, %bb.u
  %i.dz = load ptr, ptr %3, align 8, !tbaa !92
  invoke void @_ZN2cv5utils7logging8internal17writeLogMessageExENS1_8LogLevelEPKcS5_iS5_S5_(i32 noundef 3, ptr noundef %i.dn, ptr noundef nonnull @.str.4, i32 noundef 457, ptr noundef nonnull @__func__._ZN2cv10GifDecoder14getFrameCount_Ev, ptr noundef %i.dz)
          to label %bb.x unwind label %bb.z

bb.x:                                             ; preds = %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.ea = load ptr, ptr %3, align 8, !tbaa !92    ; 2 uses
  %i.eb = icmp eq ptr %i.ea, %i.ac
  br i1 %i.eb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit96, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i94

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i94: ; preds = %bb.x
  %i.ec = load i64, ptr %i.ac, align 8, !tbaa !93
  %i.ed = add i64 %i.ec, 1
  call void @_ZdlPvm(ptr noundef %i.ea, i64 noundef %i.ed) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit96

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit96: ; preds = %bb.x, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i94
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  store ptr %i.ah, ptr %2, align 8, !tbaa !18
  %i.ee = load i64, ptr %i.aj, align 8
  %i.ef = getelementptr inbounds i8, ptr %2, i64 %i.ee
  store ptr %i.ai, ptr %i.ef, align 8, !tbaa !18
  store ptr %i.ak, ptr %i.o, align 8, !tbaa !18
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.v, align 8, !tbaa !18
  %i.eg = load ptr, ptr %i.z, align 8, !tbaa !92  ; 2 uses
  %i.eh = icmp eq ptr %i.eg, %i.aa
  br i1 %i.eh, label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit96
  %i.ei = load i64, ptr %i.aa, align 8, !tbaa !93
  %i.ej = add i64 %i.ei, 1
  call void @_ZdlPvm(ptr noundef %i.eg, i64 noundef %i.ej) #22
  br label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit96, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.v, align 8, !tbaa !18
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.x) #21
  store ptr %i.k, ptr %2, align 8, !tbaa !18
  %i.ek = load i64, ptr %i.m, align 8
  %i.el = getelementptr inbounds i8, ptr %2, i64 %i.ek
  store ptr %i.l, ptr %i.el, align 8, !tbaa !18
  store i64 0, ptr %i.n, align 8, !tbaa !105
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %i.f) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  br label %.preheader.backedge

.preheader.backedge:                              ; preds = %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, %bb.m, %bb.ab
  br label %.preheader, !llvm.loop !207

bb.y:                                             ; preds = %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev.exit
  %i.em = landingpad { ptr, i32 }
          cleanup
  br label %bb.aa

bb.z:                                             ; preds = %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.en = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.eo = load ptr, ptr %3, align 8, !tbaa !92    ; 2 uses
  %i.ep = icmp eq ptr %i.eo, %i.ac
  br i1 %i.ep, label %.body, label %.body.sink.split

.body.sink.split:                                 ; preds = %bb.z, %bb.v
  %.sink262 = phi ptr [ %i.dx, %bb.v ], [ %i.eo, %bb.z ]
  %.pn78.ph = phi { ptr, i32 } [ %i.dw, %bb.v ], [ %i.en, %bb.z ]
  %i.eq = load i64, ptr %i.ac, align 8, !tbaa !93
  %i.er = add i64 %i.eq, 1
  call void @_ZdlPvm(ptr noundef %.sink262, i64 noundef %i.er) #22
  br label %.body

.body:                                            ; preds = %.body.sink.split, %bb.z, %bb.v
  %.pn78 = phi { ptr, i32 } [ %i.dw, %bb.v ], [ %i.en, %bb.z ], [ %.pn78.ph, %.body.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  br label %bb.aa

bb.aa:                                            ; preds = %.body, %bb.y
  %.pn78.pn = phi { ptr, i32 } [ %.pn78, %.body ], [ %i.em, %bb.y ]
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128) %2) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  br label %common.resume

bb.ab:                                            ; preds = %.preheader
  %i.es = sext i32 %i.bd to i64
  call void @_ZN2cv11RBaseStream4skipEl(ptr noundef nonnull align 8 dereferenceable(65) %i.c, i64 noundef %i.es)
  br label %.preheader.backedge

.preheader255:                                    ; preds = %bb.c, %bb.ae
  %i.et = call noundef i32 @_ZN2cv12RLByteStream7getByteEv(ptr noundef nonnull align 8 dereferenceable(65) %i.c) ; 2 uses
  switch i32 %i.et, label %bb.ad [
    i32 0, label %.loopexit
    i32 4, label %bb.ac
  ]

bb.ac:                                            ; preds = %.preheader255
  %i.eu = call noundef i32 @_ZN2cv12RLByteStream7getByteEv(ptr noundef nonnull align 8 dereferenceable(65) %i.c)
  %10 = shl i32 %i.eu, 5
  %11 = and i32 %10, 32
  %12 = or disjoint i32 %11, 64
  store i32 %12, ptr %i.e, align 8, !tbaa !67
  call void @_ZN2cv11RBaseStream4skipEl(ptr noundef nonnull align 8 dereferenceable(65) %i.c, i64 noundef 2)
  br label %bb.ae

bb.ad:                                            ; preds = %.preheader255
  %i.ev = sext i32 %i.et to i64
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  %.sink = phi i64 [ %i.ev, %bb.ad ], [ 1, %bb.ac ]
  call void @_ZN2cv11RBaseStream4skipEl(ptr noundef nonnull align 8 dereferenceable(65) %i.c, i64 noundef %.sink)
  br label %.preheader255, !llvm.loop !212

bb.af:                                            ; preds = %bb.c
  %i.ew = call noundef ptr @_ZN2cv5utils7logging8internal15getGlobalLogTagEv() ; 3 uses
  %.not68 = icmp eq ptr %i.ew, null               ; 2 uses
  br i1 %.not68, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ew, i64 8
  %i.ey = load i32, ptr %i.ex, align 8, !tbaa !101
  %i.ez = icmp slt i32 %i.ey, 3
  br i1 %i.ez, label %bb.be, label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #21
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128) %4)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #21
  call void @llvm.experimental.noalias.scope.decl(metadata !248)
  %i.fa = call i32 @llvm.abs.i32(i32 %i.bc, i1 false) ; 5 uses
  %i.fb = icmp ult i32 %i.fa, 10
  br i1 %i.fb, label %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.ah, %bb.an
  %.030.i.i = phi i32 [ %i.fj, %bb.an ], [ 1, %bb.ah ] ; 4 uses
  %.02329.i.i = phi i32 [ %i.fi, %bb.an ], [ %i.fa, %bb.ah ] ; 5 uses
  %i.fc = icmp ult i32 %.02329.i.i, 100
  br i1 %i.fc, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %.lr.ph.i.i
  %i.fd = add i32 %.030.i.i, 1
  br label %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i

bb.aj:                                            ; preds = %.lr.ph.i.i
  %i.fe = icmp ult i32 %.02329.i.i, 1000
  br i1 %i.fe, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  %i.ff = add i32 %.030.i.i, 2
  br label %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i

bb.al:                                            ; preds = %bb.aj
  %i.fg = icmp ult i32 %.02329.i.i, 10000
  br i1 %i.fg, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al
  %i.fh = add i32 %.030.i.i, 3
  br label %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i

bb.an:                                            ; preds = %bb.al
  %i.fi = udiv i32 %.02329.i.i, 10000
  %i.fj = add i32 %.030.i.i, 4                    ; 2 uses
  %i.fk = icmp ult i32 %.02329.i.i, 100000
  br i1 %i.fk, label %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i, label %.lr.ph.i.i, !llvm.loop !215

_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i:    ; preds = %bb.an, %bb.am, %bb.ak, %bb.ai, %bb.ah
  %.022.i.i = phi i32 [ %i.fh, %bb.am ], [ %i.fd, %bb.ai ], [ %i.ff, %bb.ak ], [ 1, %bb.ah ], [ %i.fj, %bb.an ] ; 2 uses
  %.lobit.i = lshr i32 %i.bc, 31                  ; 2 uses
  %i.fl = add i32 %.022.i.i, %.lobit.i
  %i.fm = zext i32 %i.fl to i64
  store ptr %i.an, ptr %6, align 8, !tbaa !95, !alias.scope !248
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructEmc(ptr noundef nonnull align 8 dereferenceable(32) %6, i64 noundef %i.fm, i8 noundef signext 45)
          to label %bb.ao unwind label %bb.ar

bb.ao:                                            ; preds = %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i
  %i.fn = zext nneg i32 %.lobit.i to i64
  %i.fo = load ptr, ptr %6, align 8, !tbaa !92, !alias.scope !248
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fo, i64 %i.fn ; 4 uses
  %i.fq = icmp ugt i32 %i.fa, 99
  br i1 %i.fq, label %.lr.ph.preheader.i.i, label %._crit_edge.i.i

.lr.ph.preheader.i.i:                             ; preds = %bb.ao
  %i.fr = add i32 %.022.i.i, -1
  br label %.lr.ph.i11.i

.lr.ph.i11.i:                                     ; preds = %.lr.ph.i11.i, %.lr.ph.preheader.i.i
  %.020.i.i = phi i32 [ %i.fu, %.lr.ph.i11.i ], [ %i.fa, %.lr.ph.preheader.i.i ] ; 3 uses
  %.01819.i.i = phi i32 [ %i.gf, %.lr.ph.i11.i ], [ %i.fr, %.lr.ph.preheader.i.i ] ; 3 uses
  %i.fs = urem i32 %.020.i.i, 100
  %i.ft = shl nuw nsw i32 %i.fs, 1
  %i.fu = udiv i32 %.020.i.i, 100                 ; 2 uses
  %i.fv = zext nneg i32 %i.ft to i64
  %i.fw = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail18__to_chars_10_implIjEEvPcjT_.__digits, i64 %i.fv ; 2 uses
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fw, i64 1
  %i.fy = load i8, ptr %i.fx, align 1, !tbaa !93, !noalias !248
  %i.fz = zext i32 %.01819.i.i to i64
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fp, i64 %i.fz
  store i8 %i.fy, ptr %i.ga, align 1, !tbaa !93
  %i.gb = load i8, ptr %i.fw, align 2, !tbaa !93, !noalias !248
  %i.gc = add i32 %.01819.i.i, -1
  %i.gd = zext i32 %i.gc to i64
  %i.ge = getelementptr inbounds nuw i8, ptr %i.fp, i64 %i.gd
  store i8 %i.gb, ptr %i.ge, align 1, !tbaa !93
  %i.gf = add i32 %.01819.i.i, -2
  %i.gg = icmp ugt i32 %.020.i.i, 9999
  br i1 %i.gg, label %.lr.ph.i11.i, label %._crit_edge.i.i, !llvm.loop !216

._crit_edge.i.i:                                  ; preds = %.lr.ph.i11.i, %bb.ao
  %.0.lcssa.i.i = phi i32 [ %i.fa, %bb.ao ], [ %i.fu, %.lr.ph.i11.i ] ; 3 uses
  %i.gh = icmp samesign ugt i32 %.0.lcssa.i.i, 9
  br i1 %i.gh, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %._crit_edge.i.i
  %i.gi = shl nuw nsw i32 %.0.lcssa.i.i, 1
  %i.gj = zext nneg i32 %i.gi to i64
  %i.gk = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail18__to_chars_10_implIjEEvPcjT_.__digits, i64 %i.gj ; 2 uses
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gk, i64 1
  %i.gm = load i8, ptr %i.gl, align 1, !tbaa !93, !noalias !248
  %i.gn = getelementptr inbounds nuw i8, ptr %i.fp, i64 1
  store i8 %i.gm, ptr %i.gn, align 1, !tbaa !93
  %i.go = load i8, ptr %i.gk, align 2, !tbaa !93, !noalias !248
  br label %_ZNSt7__cxx119to_stringEi.exit

bb.aq:                                            ; preds = %._crit_edge.i.i
  %i.gp = trunc nuw nsw i32 %.0.lcssa.i.i to i8
  %i.gq = or disjoint i8 %i.gp, 48
  br label %_ZNSt7__cxx119to_stringEi.exit

bb.ar:                                            ; preds = %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i
  %i.gr = landingpad { ptr, i32 }
          catch ptr null
  %i.gs = extractvalue { ptr, i32 } %i.gr, 0
  call void @__clang_call_terminate(ptr %i.gs) #23
  unreachable

_ZNSt7__cxx119to_stringEi.exit:                   ; preds = %bb.ap, %bb.aq
  %storemerge.i.i = phi i8 [ %i.gq, %bb.aq ], [ %i.go, %bb.ap ]
  store i8 %storemerge.i.i, ptr %i.fp, align 1, !tbaa !93
  %i.gt = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %6, i64 noundef 0, i64 noundef 0, ptr noundef nonnull @.str.33, i64 noundef 30)
          to label %.noexc unwind label %bb.ba    ; 6 uses

.noexc:                                           ; preds = %_ZNSt7__cxx119to_stringEi.exit
  store ptr %i.ao, ptr %5, align 8, !tbaa !95, !alias.scope !249
  %i.gu = load ptr, ptr %i.gt, align 8, !tbaa !92 ; 2 uses
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gt, i64 16 ; 5 uses
  %i.gw = icmp eq ptr %i.gu, %i.gv
  br i1 %i.gw, label %bb.as, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i100

bb.as:                                            ; preds = %.noexc
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gt, i64 8
  %i.gy = load i64, ptr %i.gx, align 8, !tbaa !24 ; 3 uses
  %i.gz = icmp ult i64 %i.gy, 16
  call void @llvm.assume(i1 %i.gz)
  %i.ha = add nuw nsw i64 %i.gy, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ao, ptr noundef nonnull align 8 dereferenceable(1) %i.gv, i64 %i.ha, i1 false)
  br label %bb.at

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i100: ; preds = %.noexc
  store ptr %i.gu, ptr %5, align 8, !tbaa !92, !alias.scope !249
  %i.hb = load i64, ptr %i.gv, align 8, !tbaa !93
  store i64 %i.hb, ptr %i.ao, align 8, !tbaa !93, !alias.scope !249
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.gt, i64 8
  %.pre.i = load i64, ptr %.phi.trans.insert.i, align 8, !tbaa !24
  br label %bb.at

bb.at:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i100, %bb.as
  %i.hc = phi i64 [ %i.gy, %bb.as ], [ %.pre.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i100 ]
  %i.hd = getelementptr inbounds nuw i8, ptr %i.gt, i64 8
  store i64 %i.hc, ptr %i.ap, align 8, !tbaa !24, !alias.scope !249
  store ptr %i.gv, ptr %i.gt, align 8, !tbaa !92
  store i64 0, ptr %i.hd, align 8, !tbaa !24
  store i8 0, ptr %i.gv, align 8, !tbaa !93
  %i.he = load ptr, ptr %5, align 8, !tbaa !92
  %i.hf = load i64, ptr %i.ap, align 8, !tbaa !24
  %i.hg = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.aq, ptr noundef %i.he, i64 noundef %i.hf)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit unwind label %bb.bb ; 0 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit: ; preds = %bb.at
  %i.hh = load ptr, ptr %5, align 8, !tbaa !92    ; 2 uses
  %i.hi = icmp eq ptr %i.hh, %i.ao
  br i1 %i.hi, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit104, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i102

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i102: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
  %i.hj = load i64, ptr %i.ao, align 8, !tbaa !93
  %i.hk = add i64 %i.hj, 1
  call void @_ZdlPvm(ptr noundef %i.hh, i64 noundef %i.hk) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit104

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit104: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i102
  %i.hl = load ptr, ptr %6, align 8, !tbaa !92    ; 2 uses
  %i.hm = icmp eq ptr %i.hl, %i.an
  br i1 %i.hm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit107, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i105

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i105: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit104
  %i.hn = load i64, ptr %i.an, align 8, !tbaa !93
  %i.ho = add i64 %i.hn, 1
  call void @_ZdlPvm(ptr noundef %i.hl, i64 noundef %i.ho) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit107

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit107: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit104, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i105
end_hunk_0
