Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/loadsave?download=true
inline.NumInlined: 3168
inline.NumDeleted: 1271
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN2cvL8imwrite_ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorINS_3MatESaIS9_EERKS8_IiSaIiEERKNS_11_InputArrayESH_b:bb.a
bb.dv:                                            ; preds = %bb.du
  %i.mi = invoke noundef ptr @_ZN2cv5utils7logging8internal15getGlobalLogTagEv()
          to label %bb.dx unwind label %bb.dw     ; 3 uses

bb.dw:                                            ; preds = %bb.dv
  %i.mj = landingpad { ptr, i32 }
          catch ptr @_ZTIN2cv9ExceptionE
          catch ptr null
  br label %bb.en

bb.dx:                                            ; preds = %bb.dv
  %.not141 = icmp eq ptr %i.mi, null              ; 2 uses
  br i1 %.not141, label %bb.dz, label %bb.dy

bb.dy:                                            ; preds = %bb.dx
  %i.mk = getelementptr inbounds nuw i8, ptr %i.mi, i64 8
  %i.ml = load i32, ptr %i.mk, align 8, !tbaa !36
  %i.mm = icmp slt i32 %i.ml, 3
  br i1 %i.mm, label %bb.ga, label %bb.dz

bb.dz:                                            ; preds = %bb.dy, %bb.dx
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #28
  invoke void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128) %26)
          to label %bb.ea unwind label %bb.eh

bb.ea:                                            ; preds = %bb.dz
  %i.mn = getelementptr inbounds nuw i8, ptr %26, i64 16 ; 3 uses
  %i.mo = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.mn, ptr noundef nonnull @.str.96, i64 noundef 10)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit272 unwind label %bb.ei ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit272: ; preds = %bb.ea
  %i.mp = load ptr, ptr %0, align 8, !tbaa !40
  %i.mq = load i64, ptr %i.i, align 8, !tbaa !44
  %i.mr = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.mn, ptr noundef %i.mp, i64 noundef %i.mq)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit274 unwind label %bb.ei

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit274: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit272
  %i.ms = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.mr, ptr noundef nonnull @.str.97, i64 noundef 50)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit276 unwind label %bb.ei ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit276: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit274
  br i1 %.not141, label %bb.ec, label %bb.eb

bb.eb:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit276
  %i.mt = load ptr, ptr %i.mi, align 8, !tbaa !45
  br label %bb.ec

bb.ec:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit276, %bb.eb
  %i.mu = phi ptr [ %i.mt, %bb.eb ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit276 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #28
  call void @llvm.experimental.noalias.scope.decl(metadata !209)
  call void @llvm.experimental.noalias.scope.decl(metadata !212)
  %i.mv = getelementptr inbounds nuw i8, ptr %27, i64 16 ; 7 uses
  store ptr %i.mv, ptr %27, align 8, !tbaa !116, !alias.scope !215
  %i.mw = getelementptr inbounds nuw i8, ptr %27, i64 8
  store i64 0, ptr %i.mw, align 8, !tbaa !44, !alias.scope !215
  store i8 0, ptr %i.mv, align 8, !tbaa !22, !alias.scope !215
  %i.mx = getelementptr inbounds nuw i8, ptr %26, i64 64
  %i.my = load ptr, ptr %i.mx, align 8, !tbaa !118, !noalias !215 ; 3 uses
  %.not.i.not.i.i277 = icmp eq ptr %i.my, null
  %i.mz = getelementptr inbounds nuw i8, ptr %26, i64 48
  %i.na = load ptr, ptr %i.mz, align 8, !noalias !215 ; 2 uses
  %i.nb = icmp ugt ptr %i.my, %i.na
  %.08.i.i.i278 = select i1 %i.nb, ptr %i.my, ptr %i.na ; 2 uses
  %.not5.i.i279 = icmp eq ptr %.08.i.i.i278, null
  %.not.i.i280 = select i1 %.not.i.not.i.i277, i1 true, i1 %.not5.i.i279
  br i1 %.not.i.i280, label %bb.ef, label %bb.ed

bb.ed:                                            ; preds = %bb.ec
  %i.nc = getelementptr inbounds nuw i8, ptr %26, i64 56
  %i.nd = load ptr, ptr %i.nc, align 8, !tbaa !122, !noalias !215 ; 2 uses
  %i.ne = ptrtoint ptr %.08.i.i.i278 to i64
  %i.nf = ptrtoint ptr %i.nd to i64
  %i.ng = sub i64 %i.ne, %i.nf
  %i.nh = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %27, i64 noundef 0, i64 noundef 0, ptr noundef %i.nd, i64 noundef %i.ng)
          to label %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit286 unwind label %bb.ee ; 0 uses

bb.ee:                                            ; preds = %bb.ef, %bb.ed
  %i.ni = landingpad { ptr, i32 }
          catch ptr @_ZTIN2cv9ExceptionE
          catch ptr null                          ; 2 uses
  %i.nj = load ptr, ptr %27, align 8, !tbaa !40, !alias.scope !215 ; 2 uses
  %i.nk = icmp eq ptr %i.nj, %i.mv
  br i1 %i.nk, label %.body284, label %.body284.sink.split

bb.ef:                                            ; preds = %bb.ec
  %i.nl = getelementptr inbounds nuw i8, ptr %26, i64 96
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %27, ptr noundef nonnull align 8 dereferenceable(32) %i.nl)
          to label %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit286 unwind label %bb.ee

_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit286: ; preds = %bb.ef, %bb.ed
  %i.nm = load ptr, ptr %27, align 8, !tbaa !40
  invoke void @_ZN2cv5utils7logging8internal17writeLogMessageExENS1_8LogLevelEPKcS5_iS5_S5_(i32 noundef 3, ptr noundef %i.mu, ptr noundef nonnull @.str.8, i32 noundef 1145, ptr noundef nonnull @__func__._ZN2cvL8imwrite_ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorINS_3MatESaIS9_EERKS8_IiSaIiEERKNS_11_InputArrayESH_b, ptr noundef %i.nm)
          to label %bb.eg unwind label %bb.ej

bb.eg:                                            ; preds = %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit286
  %i.nn = load ptr, ptr %27, align 8, !tbaa !40   ; 2 uses
  %i.no = icmp eq ptr %i.nn, %i.mv
  br i1 %i.no, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit289, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i287

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i287: ; preds = %bb.eg
  %i.np = load i64, ptr %i.mv, align 8, !tbaa !22
  %i.nq = add i64 %i.np, 1
  call void @_ZdlPvm(ptr noundef %i.nn, i64 noundef %i.nq) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit289

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit289: ; preds = %bb.eg, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i287
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #28
  %i.nr = load ptr, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.nr, ptr %26, align 8, !tbaa !27
  %i.ns = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 64), align 8
  %i.nt = getelementptr i8, ptr %i.nr, i64 -24
  %i.nu = load i64, ptr %i.nt, align 8
  %i.nv = getelementptr inbounds i8, ptr %26, i64 %i.nu
  store ptr %i.ns, ptr %i.nv, align 8, !tbaa !27
  %i.nw = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 72), align 8
  store ptr %i.nw, ptr %i.mn, align 8, !tbaa !27
  %i.nx = getelementptr inbounds nuw i8, ptr %26, i64 24 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.nx, align 8, !tbaa !27
  %i.ny = getelementptr inbounds nuw i8, ptr %26, i64 96
  %i.nz = load ptr, ptr %i.ny, align 8, !tbaa !40 ; 2 uses
  %i.oa = getelementptr inbounds nuw i8, ptr %26, i64 112 ; 2 uses
  %i.ob = icmp eq ptr %i.nz, %i.oa
  br i1 %i.ob, label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit292, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i290

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i290: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit289
  %i.oc = load i64, ptr %i.oa, align 8, !tbaa !22
  %i.od = add i64 %i.oc, 1
  call void @_ZdlPvm(ptr noundef %i.nz, i64 noundef %i.od) #30
  br label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit292

_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit292: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit289, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i290
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.nx, align 8, !tbaa !27
  %i.oe = getelementptr inbounds nuw i8, ptr %26, i64 80
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.oe) #28
  %i.of = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 16), align 8 ; 2 uses
  store ptr %i.of, ptr %26, align 8, !tbaa !27
  %i.og = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.oh = getelementptr i8, ptr %i.of, i64 -24
  %i.oi = load i64, ptr %i.oh, align 8
  %i.oj = getelementptr inbounds i8, ptr %26, i64 %i.oi
  store ptr %i.og, ptr %i.oj, align 8, !tbaa !27
  %i.ok = getelementptr inbounds nuw i8, ptr %26, i64 8
  store i64 0, ptr %i.ok, align 8, !tbaa !123
  %i.ol = getelementptr inbounds nuw i8, ptr %26, i64 128
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %i.ol) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #28
  br label %bb.ga

bb.eh:                                            ; preds = %bb.dz
  %i.om = landingpad { ptr, i32 }
          catch ptr @_ZTIN2cv9ExceptionE
          catch ptr null
  br label %bb.el

bb.ei:                                            ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit274, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit272, %bb.ea
  %i.on = landingpad { ptr, i32 }
          catch ptr @_ZTIN2cv9ExceptionE
          catch ptr null
  br label %bb.ek

bb.ej:                                            ; preds = %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit286
  %i.oo = landingpad { ptr, i32 }
          catch ptr @_ZTIN2cv9ExceptionE
          catch ptr null                          ; 2 uses
  %i.op = load ptr, ptr %27, align 8, !tbaa !40   ; 2 uses
  %i.oq = icmp eq ptr %i.op, %i.mv
  br i1 %i.oq, label %.body284, label %.body284.sink.split

.body284.sink.split:                              ; preds = %bb.ej, %bb.ee
  %.sink9 = phi ptr [ %i.nj, %bb.ee ], [ %i.op, %bb.ej ]
  %.pn142.ph = phi { ptr, i32 } [ %i.ni, %bb.ee ], [ %i.oo, %bb.ej ]
  %i.or = load i64, ptr %i.mv, align 8, !tbaa !22
  %i.os = add i64 %i.or, 1
  call void @_ZdlPvm(ptr noundef %.sink9, i64 noundef %i.os) #30
  br label %.body284

.body284:                                         ; preds = %.body284.sink.split, %bb.ej, %bb.ee
  %.pn142 = phi { ptr, i32 } [ %i.ni, %bb.ee ], [ %i.oo, %bb.ej ], [ %.pn142.ph, %.body284.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #28
  br label %bb.ek

bb.ek:                                            ; preds = %.body284, %bb.ei
  %.pn142.pn = phi { ptr, i32 } [ %.pn142, %.body284 ], [ %i.on, %bb.ei ]
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128) %26) #28
  br label %bb.el

bb.el:                                            ; preds = %bb.ek, %bb.eh
  %.pn142.pn.pn = phi { ptr, i32 } [ %.pn142.pn, %bb.ek ], [ %i.om, %bb.eh ]
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #28
  br label %bb.en

bb.em:                                            ; preds = %bb.dt
  %i.ot = call i32 @fclose(ptr noundef nonnull %i.me) ; 0 uses
  %i.ou = load ptr, ptr %0, align 8, !tbaa !40
  %i.ov = call i32 @remove(ptr noundef %i.ou) #28 ; 0 uses
  br label %bb.ga

bb.en:                                            ; preds = %bb.dw, %bb.el, %bb.dr
  %.pn142.pn.pn.pn.pn = phi { ptr, i32 } [ %i.mc, %bb.dr ], [ %.pn142.pn.pn, %bb.el ], [ %i.mj, %bb.dw ] ; 2 uses
  %.29 = extractvalue { ptr, i32 } %.pn142.pn.pn.pn.pn, 1
  %.29125 = extractvalue { ptr, i32 } %.pn142.pn.pn.pn.pn, 0
  %i.ow = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTIN2cv9ExceptionE) #28
  %i.ox = icmp eq i32 %.29, %i.ow
  %i.oy = call ptr @__cxa_begin_catch(ptr %.29125) #28 ; 2 uses
  br i1 %i.ox, label %bb.eo, label %bb.ep

bb.eo:                                            ; preds = %bb.en
  %i.oz = invoke noundef ptr @_ZN2cv5utils7logging8internal15getGlobalLogTagEv()
          to label %bb.fj unwind label %bb.fi     ; 3 uses

bb.ep:                                            ; preds = %bb.en
  %i.pa = invoke noundef ptr @_ZN2cv5utils7logging8internal15getGlobalLogTagEv()
          to label %bb.er unwind label %bb.eq     ; 3 uses

bb.eq:                                            ; preds = %bb.ep
  %i.pb = landingpad { ptr, i32 }
          cleanup
  br label %bb.fg

bb.er:                                            ; preds = %bb.ep
  %.not148 = icmp eq ptr %i.pa, null              ; 2 uses
  br i1 %.not148, label %bb.et, label %bb.es

bb.es:                                            ; preds = %bb.er
  %i.pc = getelementptr inbounds nuw i8, ptr %i.pa, i64 8
  %i.pd = load i32, ptr %i.pc, align 8, !tbaa !36
  %i.pe = icmp slt i32 %i.pd, 2
  br i1 %i.pe, label %bb.ff, label %bb.et

bb.et:                                            ; preds = %bb.es, %bb.er
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #28
  invoke void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128) %28)
          to label %bb.eu unwind label %bb.ez

bb.eu:                                            ; preds = %bb.et
  %i.pf = getelementptr inbounds nuw i8, ptr %28, i64 16 ; 2 uses
  %i.pg = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.pf, ptr noundef nonnull @.str.96, i64 noundef 10)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit297 unwind label %bb.fa ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit297: ; preds = %bb.eu
  %i.ph = load ptr, ptr %0, align 8, !tbaa !40
  %i.pi = load i64, ptr %i.i, align 8, !tbaa !44
  %i.pj = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.pf, ptr noundef %i.ph, i64 noundef %i.pi)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit299 unwind label %bb.fa

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit299: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit297
  %i.pk = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.pj, ptr noundef nonnull @.str.98, i64 noundef 39)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit301 unwind label %bb.fa ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit301: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit299
  br i1 %.not148, label %bb.ew, label %bb.ev

bb.ev:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit301
  %i.pl = load ptr, ptr %i.pa, align 8, !tbaa !45
  br label %bb.ew

bb.ew:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit301, %bb.ev
  %i.pm = phi ptr [ %i.pl, %bb.ev ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit301 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #28
  invoke void @_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %29, ptr noundef nonnull align 8 dereferenceable(128) %28)
          to label %bb.ex unwind label %bb.fb

bb.ex:                                            ; preds = %bb.ew
  %i.pn = load ptr, ptr %29, align 8, !tbaa !40
  invoke void @_ZN2cv5utils7logging8internal17writeLogMessageExENS1_8LogLevelEPKcS5_iS5_S5_(i32 noundef 2, ptr noundef %i.pm, ptr noundef nonnull @.str.8, i32 noundef 1162, ptr noundef nonnull @__func__._ZN2cvL8imwrite_ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorINS_3MatESaIS9_EERKS8_IiSaIiEERKNS_11_InputArrayESH_b, ptr noundef %i.pn)
          to label %bb.ey unwind label %bb.fc

bb.ey:                                            ; preds = %bb.ex
  %i.po = load ptr, ptr %29, align 8, !tbaa !40   ; 2 uses
  %i.pp = getelementptr inbounds nuw i8, ptr %29, i64 16 ; 2 uses
  %i.pq = icmp eq ptr %i.po, %i.pp
  br i1 %i.pq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit304, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i302

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i302: ; preds = %bb.ey
  %i.pr = load i64, ptr %i.pp, align 8, !tbaa !22
  %i.ps = add i64 %i.pr, 1
  call void @_ZdlPvm(ptr noundef %i.po, i64 noundef %i.ps) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit304

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit304: ; preds = %bb.ey, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i302
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #28
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128) %28) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #28
  br label %bb.ff

bb.ez:                                            ; preds = %bb.et
  %i.pt = landingpad { ptr, i32 }
          cleanup
  br label %bb.fe

bb.fa:                                            ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit299, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit297, %bb.eu
  %i.pu = landingpad { ptr, i32 }
          cleanup
  br label %bb.fd

bb.fb:                                            ; preds = %bb.ew
  %i.pv = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit307

bb.fc:                                            ; preds = %bb.ex
  %i.pw = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.px = load ptr, ptr %29, align 8, !tbaa !40   ; 2 uses
  %i.py = getelementptr inbounds nuw i8, ptr %29, i64 16 ; 2 uses
  %i.pz = icmp eq ptr %i.px, %i.py
  br i1 %i.pz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit307, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i305

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i305: ; preds = %bb.fc
  %i.qa = load i64, ptr %i.py, align 8, !tbaa !22
  %i.qb = add i64 %i.qa, 1
  call void @_ZdlPvm(ptr noundef %i.px, i64 noundef %i.qb) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit307

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit307: ; preds = %bb.fc, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i305, %bb.fb
  %.pn149 = phi { ptr, i32 } [ %i.pv, %bb.fb ], [ %i.pw, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i305 ], [ %i.pw, %bb.fc ]
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #28
  br label %bb.fd

bb.fd:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit307, %bb.fa
  %.pn149.pn = phi { ptr, i32 } [ %.pn149, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit307 ], [ %i.pu, %bb.fa ]
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128) %28) #28
  br label %bb.fe

bb.fe:                                            ; preds = %bb.fd, %bb.ez
  %.pn149.pn.pn = phi { ptr, i32 } [ %.pn149.pn, %bb.fd ], [ %i.pt, %bb.ez ]
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #28
  br label %bb.fg

bb.ff:                                            ; preds = %bb.es, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit304
  invoke void @__cxa_end_catch()
          to label %bb.ga unwind label %bb.fh

bb.fg:                                            ; preds = %bb.fe, %bb.eq
  %.pn149.pn.pn.pn = phi { ptr, i32 } [ %.pn149.pn.pn, %bb.fe ], [ %i.pb, %bb.eq ]
  invoke void @__cxa_end_catch()
          to label %bb.gj unwind label %bb.gl

bb.fh:                                            ; preds = %bb.ff
  %i.qc = landingpad { ptr, i32 }
          cleanup
  br label %bb.gj

bb.fi:                                            ; preds = %bb.eo
  %i.qd = landingpad { ptr, i32 }
          cleanup
  br label %bb.fz

bb.fj:                                            ; preds = %bb.eo
  %.not154 = icmp eq ptr %i.oz, null              ; 2 uses
  br i1 %.not154, label %bb.fl, label %bb.fk

bb.fk:                                            ; preds = %bb.fj
  %i.qe = getelementptr inbounds nuw i8, ptr %i.oz, i64 8
  %i.qf = load i32, ptr %i.qe, align 8, !tbaa !36
  %i.qg = icmp slt i32 %i.qf, 2
  br i1 %i.qg, label %bb.fy, label %bb.fl

bb.fl:                                            ; preds = %bb.fk, %bb.fj
  call void @llvm.lifetime.start.p0(ptr nonnull %30) #28
  invoke void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128) %30)
          to label %bb.fm unwind label %bb.fs

bb.fm:                                            ; preds = %bb.fl
  %i.qh = getelementptr inbounds nuw i8, ptr %30, i64 16 ; 2 uses
  %i.qi = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.qh, ptr noundef nonnull @.str.96, i64 noundef 10)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit309 unwind label %bb.ft ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit309: ; preds = %bb.fm
  %i.qj = load ptr, ptr %0, align 8, !tbaa !40
  %i.qk = load i64, ptr %i.i, align 8, !tbaa !44
  %i.ql = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.qh, ptr noundef %i.qj, i64 noundef %i.qk)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit311 unwind label %bb.ft ; 2 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit311: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit309
  %i.qm = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ql, ptr noundef nonnull @.str.99, i64 noundef 22)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit313 unwind label %bb.ft ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit313: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit311
  %i.qn = load ptr, ptr %i.oy, align 8, !tbaa !27
  %i.qo = getelementptr inbounds nuw i8, ptr %i.qn, i64 16
  %i.qp = load ptr, ptr %i.qo, align 8
  %i.qq = call noundef ptr %i.qp(ptr noundef nonnull align 8 dereferenceable(148) %i.oy) #28
  %i.qr = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %i.ql, ptr noundef %i.qq)
          to label %bb.fn unwind label %bb.ft     ; 0 uses

bb.fn:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit313
  br i1 %.not154, label %bb.fp, label %bb.fo

bb.fo:                                            ; preds = %bb.fn
  %i.qs = load ptr, ptr %i.oz, align 8, !tbaa !45
  br label %bb.fp

bb.fp:                                            ; preds = %bb.fn, %bb.fo
  %i.qt = phi ptr [ %i.qs, %bb.fo ], [ null, %bb.fn ]
  call void @llvm.lifetime.start.p0(ptr nonnull %31) #28
  invoke void @_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %31, ptr noundef nonnull align 8 dereferenceable(128) %30)
          to label %bb.fq unwind label %bb.fu

bb.fq:                                            ; preds = %bb.fp
  %i.qu = load ptr, ptr %31, align 8, !tbaa !40
  invoke void @_ZN2cv5utils7logging8internal17writeLogMessageExENS1_8LogLevelEPKcS5_iS5_S5_(i32 noundef 2, ptr noundef %i.qt, ptr noundef nonnull @.str.8, i32 noundef 1157, ptr noundef nonnull @__func__._ZN2cvL8imwrite_ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorINS_3MatESaIS9_EERKS8_IiSaIiEERKNS_11_InputArrayESH_b, ptr noundef %i.qu)
          to label %bb.fr unwind label %bb.fv

end_hunk_0
begin_hunk_1_@_ZN2cv16imwriteanimationERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS_9AnimationERKSt6vectorIiSaIiEE:bb.a
bb.z:                                             ; preds = %bb.w
  %i.bf = invoke noundef ptr @_ZN2cv5utils7logging8internal15getGlobalLogTagEv()
          to label %bb.ab unwind label %bb.aa     ; 3 uses

bb.aa:                                            ; preds = %bb.z
  %i.bg = landingpad { ptr, i32 }
          catch ptr @_ZTIN2cv9ExceptionE
          catch ptr null
  br label %bb.ar

bb.ab:                                            ; preds = %bb.z
  %.not62.i = icmp eq ptr %i.bf, null             ; 2 uses
  br i1 %.not62.i, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  %i.bi = load i32, ptr %i.bh, align 8, !tbaa !36
  %i.bj = icmp slt i32 %i.bi, 2
  br i1 %i.bj, label %bb.ce, label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #28
  invoke void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128) %6)
          to label %bb.ae unwind label %bb.al

bb.ae:                                            ; preds = %bb.ad
  %i.bk = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 3 uses
  %i.bl = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bk, ptr noundef nonnull @.str.100, i64 noundef 19)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i unwind label %bb.am ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i: ; preds = %bb.ae
  %i.bm = load ptr, ptr %0, align 8, !tbaa !40
  %i.bn = load i64, ptr %i.ag, align 8, !tbaa !44
  %i.bo = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bk, ptr noundef %i.bm, i64 noundef %i.bn)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i unwind label %bb.am

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i
  %i.bp = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bo, ptr noundef nonnull @.str.97, i64 noundef 50)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit86.i unwind label %bb.am ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit86.i: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i
  br i1 %.not62.i, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit86.i
  %i.bq = load ptr, ptr %i.bf, align 8, !tbaa !45
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit86.i
  %i.br = phi ptr [ %i.bq, %bb.af ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit86.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #28
  call void @llvm.experimental.noalias.scope.decl(metadata !220)
  call void @llvm.experimental.noalias.scope.decl(metadata !223)
  %i.bs = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 7 uses
  store ptr %i.bs, ptr %7, align 8, !tbaa !116, !alias.scope !226
  %i.bt = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 0, ptr %i.bt, align 8, !tbaa !44, !alias.scope !226
  store i8 0, ptr %i.bs, align 8, !tbaa !22, !alias.scope !226
  %i.bu = getelementptr inbounds nuw i8, ptr %6, i64 64
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !118, !noalias !226 ; 3 uses
  %.not.i.not.i.i.i = icmp eq ptr %i.bv, null
  %i.bw = getelementptr inbounds nuw i8, ptr %6, i64 48
  %i.bx = load ptr, ptr %i.bw, align 8, !noalias !226 ; 2 uses
  %i.by = icmp ugt ptr %i.bv, %i.bx
  %.08.i.i.i.i = select i1 %i.by, ptr %i.bv, ptr %i.bx ; 2 uses
  %.not5.i.i.i = icmp eq ptr %.08.i.i.i.i, null
  %.not.i.i.i = select i1 %.not.i.not.i.i.i, i1 true, i1 %.not5.i.i.i
  br i1 %.not.i.i.i, label %bb.aj, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.bz = getelementptr inbounds nuw i8, ptr %6, i64 56
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !122, !noalias !226 ; 2 uses
  %i.cb = ptrtoint ptr %.08.i.i.i.i to i64
  %i.cc = ptrtoint ptr %i.ca to i64
  %i.cd = sub i64 %i.cb, %i.cc
  %i.ce = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %7, i64 noundef 0, i64 noundef 0, ptr noundef %i.ca, i64 noundef %i.cd)
          to label %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit.i unwind label %bb.ai ; 0 uses

bb.ai:                                            ; preds = %bb.aj, %bb.ah
  %i.cf = landingpad { ptr, i32 }
          catch ptr @_ZTIN2cv9ExceptionE
          catch ptr null                          ; 2 uses
  %i.cg = load ptr, ptr %7, align 8, !tbaa !40, !alias.scope !226 ; 2 uses
  %i.ch = icmp eq ptr %i.cg, %i.bs
  br i1 %i.ch, label %.body.i, label %.body.i.sink.split

bb.aj:                                            ; preds = %bb.ag
  %i.ci = getelementptr inbounds nuw i8, ptr %6, i64 96
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(32) %i.ci)
          to label %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit.i unwind label %bb.ai

_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit.i: ; preds = %bb.aj, %bb.ah
  %i.cj = load ptr, ptr %7, align 8, !tbaa !40
  invoke void @_ZN2cv5utils7logging8internal17writeLogMessageExENS1_8LogLevelEPKcS5_iS5_S5_(i32 noundef 2, ptr noundef %i.br, ptr noundef nonnull @.str.8, i32 noundef 1225, ptr noundef nonnull @__func__._ZN2cvL17imwriteanimation_ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS_9AnimationERKSt6vectorIiSaIiEE, ptr noundef %i.cj)
          to label %bb.ak unwind label %bb.an

bb.ak:                                            ; preds = %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit.i
  %i.ck = load ptr, ptr %7, align 8, !tbaa !40    ; 2 uses
  %i.cl = icmp eq ptr %i.ck, %i.bs
  br i1 %i.cl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit89.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i87.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i87.i: ; preds = %bb.ak
  %i.cm = load i64, ptr %i.bs, align 8, !tbaa !22
  %i.cn = add i64 %i.cm, 1
  call void @_ZdlPvm(ptr noundef %i.ck, i64 noundef %i.cn) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit89.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit89.i: ; preds = %bb.ak, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i87.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #28
  %i.co = load ptr, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.co, ptr %6, align 8, !tbaa !27
  %i.cp = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 64), align 8
  %i.cq = getelementptr i8, ptr %i.co, i64 -24
  %i.cr = load i64, ptr %i.cq, align 8
  %i.cs = getelementptr inbounds i8, ptr %6, i64 %i.cr
  store ptr %i.cp, ptr %i.cs, align 8, !tbaa !27
  %i.ct = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 72), align 8
  store ptr %i.ct, ptr %i.bk, align 8, !tbaa !27
  %i.cu = getelementptr inbounds nuw i8, ptr %6, i64 24 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.cu, align 8, !tbaa !27
  %i.cv = getelementptr inbounds nuw i8, ptr %6, i64 96
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !40 ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %6, i64 112 ; 2 uses
  %i.cy = icmp eq ptr %i.cw, %i.cx
  br i1 %i.cy, label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit89.i
  %i.cz = load i64, ptr %i.cx, align 8, !tbaa !22
  %i.da = add i64 %i.cz, 1
  call void @_ZdlPvm(ptr noundef %i.cw, i64 noundef %i.da) #30
  br label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit.i

_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit89.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.cu, align 8, !tbaa !27
  %i.db = getelementptr inbounds nuw i8, ptr %6, i64 80
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.db) #28
  %i.dc = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 16), align 8 ; 2 uses
  store ptr %i.dc, ptr %6, align 8, !tbaa !27
  %i.dd = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.de = getelementptr i8, ptr %i.dc, i64 -24
  %i.df = load i64, ptr %i.de, align 8
  %i.dg = getelementptr inbounds i8, ptr %6, i64 %i.df
  store ptr %i.dd, ptr %i.dg, align 8, !tbaa !27
  %i.dh = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 0, ptr %i.dh, align 8, !tbaa !123
  %i.di = getelementptr inbounds nuw i8, ptr %6, i64 128
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %i.di) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28
  br label %bb.ce

bb.al:                                            ; preds = %bb.ad
  %i.dj = landingpad { ptr, i32 }
          catch ptr @_ZTIN2cv9ExceptionE
          catch ptr null
  br label %bb.ap

bb.am:                                            ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i, %bb.ae
  %i.dk = landingpad { ptr, i32 }
          catch ptr @_ZTIN2cv9ExceptionE
          catch ptr null
  br label %bb.ao

bb.an:                                            ; preds = %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit.i
  %i.dl = landingpad { ptr, i32 }
          catch ptr @_ZTIN2cv9ExceptionE
          catch ptr null                          ; 2 uses
  %i.dm = load ptr, ptr %7, align 8, !tbaa !40    ; 2 uses
  %i.dn = icmp eq ptr %i.dm, %i.bs
  br i1 %i.dn, label %.body.i, label %.body.i.sink.split

.body.i.sink.split:                               ; preds = %bb.an, %bb.ai
  %.sink = phi ptr [ %i.cg, %bb.ai ], [ %i.dm, %bb.an ]
  %.pn63.i.ph = phi { ptr, i32 } [ %i.cf, %bb.ai ], [ %i.dl, %bb.an ]
  %i.do = load i64, ptr %i.bs, align 8, !tbaa !22
  %i.dp = add i64 %i.do, 1
  call void @_ZdlPvm(ptr noundef %.sink, i64 noundef %i.dp) #30
  br label %.body.i

.body.i:                                          ; preds = %.body.i.sink.split, %bb.an, %bb.ai
  %.pn63.i = phi { ptr, i32 } [ %i.cf, %bb.ai ], [ %i.dl, %bb.an ], [ %.pn63.i.ph, %.body.i.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #28
  br label %bb.ao

bb.ao:                                            ; preds = %.body.i, %bb.am
  %.pn63.pn.i = phi { ptr, i32 } [ %.pn63.i, %.body.i ], [ %i.dk, %bb.am ]
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128) %6) #28
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %bb.al
  %.pn63.pn.pn.i = phi { ptr, i32 } [ %.pn63.pn.i, %bb.ao ], [ %i.dj, %bb.al ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28
  br label %bb.ar

bb.aq:                                            ; preds = %bb.v
  %i.dq = call i32 @fclose(ptr noundef nonnull %i.az) ; 0 uses
  %i.dr = load ptr, ptr %0, align 8, !tbaa !40
  %i.ds = call i32 @remove(ptr noundef %i.dr) #28 ; 0 uses
  br label %bb.ce

bb.ar:                                            ; preds = %bb.ap, %bb.aa, %bb.y
  %.pn63.pn.pn.pn.pn.i = phi { ptr, i32 } [ %i.be, %bb.y ], [ %.pn63.pn.pn.i, %bb.ap ], [ %i.bg, %bb.aa ] ; 2 uses
  %.5.i = extractvalue { ptr, i32 } %.pn63.pn.pn.pn.pn.i, 1
  %.548.i = extractvalue { ptr, i32 } %.pn63.pn.pn.pn.pn.i, 0
  %i.dt = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTIN2cv9ExceptionE) #28
  %i.du = icmp eq i32 %.5.i, %i.dt
  %i.dv = call ptr @__cxa_begin_catch(ptr %.548.i) #28 ; 2 uses
  br i1 %i.du, label %bb.as, label %bb.at

bb.as:                                            ; preds = %bb.ar
  %i.dw = invoke noundef ptr @_ZN2cv5utils7logging8internal15getGlobalLogTagEv()
          to label %bb.bn unwind label %bb.bm     ; 3 uses

bb.at:                                            ; preds = %bb.ar
  %i.dx = invoke noundef ptr @_ZN2cv5utils7logging8internal15getGlobalLogTagEv()
          to label %bb.av unwind label %bb.au     ; 3 uses

bb.au:                                            ; preds = %bb.at
  %i.dy = landingpad { ptr, i32 }
          cleanup
  br label %bb.bk

bb.av:                                            ; preds = %bb.at
  %.not69.i = icmp eq ptr %i.dx, null             ; 2 uses
  br i1 %.not69.i, label %bb.ax, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dx, i64 8
  %i.ea = load i32, ptr %i.dz, align 8, !tbaa !36
  %i.eb = icmp slt i32 %i.ea, 2
  br i1 %i.eb, label %bb.bj, label %bb.ax

bb.ax:                                            ; preds = %bb.aw, %bb.av
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #28
  invoke void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128) %8)
          to label %bb.ay unwind label %bb.bd

bb.ay:                                            ; preds = %bb.ax
  %i.ec = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.ed = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ec, ptr noundef nonnull @.str.100, i64 noundef 19)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit93.i unwind label %bb.be ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit93.i: ; preds = %bb.ay
  %i.ee = load ptr, ptr %0, align 8, !tbaa !40
  %i.ef = load i64, ptr %i.ag, align 8, !tbaa !44
  %i.eg = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ec, ptr noundef %i.ee, i64 noundef %i.ef)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit94.i unwind label %bb.be

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit94.i: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit93.i
  %i.eh = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.eg, ptr noundef nonnull @.str.98, i64 noundef 39)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit95.i unwind label %bb.be ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit95.i: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit94.i
  br i1 %.not69.i, label %bb.ba, label %bb.az

bb.az:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit95.i
  %i.ei = load ptr, ptr %i.dx, align 8, !tbaa !45
  br label %bb.ba

bb.ba:                                            ; preds = %bb.az, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit95.i
  %i.ej = phi ptr [ %i.ei, %bb.az ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit95.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #28
  invoke void @_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %9, ptr noundef nonnull align 8 dereferenceable(128) %8)
          to label %bb.bb unwind label %bb.bf

bb.bb:                                            ; preds = %bb.ba
  %i.ek = load ptr, ptr %9, align 8, !tbaa !40
  invoke void @_ZN2cv5utils7logging8internal17writeLogMessageExENS1_8LogLevelEPKcS5_iS5_S5_(i32 noundef 2, ptr noundef %i.ej, ptr noundef nonnull @.str.8, i32 noundef 1241, ptr noundef nonnull @__func__._ZN2cvL17imwriteanimation_ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS_9AnimationERKSt6vectorIiSaIiEE, ptr noundef %i.ek)
          to label %bb.bc unwind label %bb.bg

bb.bc:                                            ; preds = %bb.bb
  %i.el = load ptr, ptr %9, align 8, !tbaa !40    ; 2 uses
  %i.em = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.en = icmp eq ptr %i.el, %i.em
  br i1 %i.en, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit98.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i96.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i96.i: ; preds = %bb.bc
  %i.eo = load i64, ptr %i.em, align 8, !tbaa !22
  %i.ep = add i64 %i.eo, 1
  call void @_ZdlPvm(ptr noundef %i.el, i64 noundef %i.ep) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit98.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit98.i: ; preds = %bb.bc, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i96.i
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #28
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128) %8) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #28
  br label %bb.bj

bb.bd:                                            ; preds = %bb.ax
  %i.eq = landingpad { ptr, i32 }
          cleanup
  br label %bb.bi

bb.be:                                            ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit94.i, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit93.i, %bb.ay
  %i.er = landingpad { ptr, i32 }
          cleanup
  br label %bb.bh

bb.bf:                                            ; preds = %bb.ba
  %i.es = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit101.i

bb.bg:                                            ; preds = %bb.bb
  %i.et = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.eu = load ptr, ptr %9, align 8, !tbaa !40    ; 2 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.ew = icmp eq ptr %i.eu, %i.ev
  br i1 %i.ew, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit101.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i99.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i99.i: ; preds = %bb.bg
  %i.ex = load i64, ptr %i.ev, align 8, !tbaa !22
  %i.ey = add i64 %i.ex, 1
  call void @_ZdlPvm(ptr noundef %i.eu, i64 noundef %i.ey) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit101.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit101.i: ; preds = %bb.bg, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i99.i, %bb.bf
  %.pn70.i = phi { ptr, i32 } [ %i.es, %bb.bf ], [ %i.et, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i99.i ], [ %i.et, %bb.bg ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #28
  br label %bb.bh

bb.bh:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit101.i, %bb.be
  %.pn70.pn.i = phi { ptr, i32 } [ %.pn70.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit101.i ], [ %i.er, %bb.be ]
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128) %8) #28
  br label %bb.bi

bb.bi:                                            ; preds = %bb.bh, %bb.bd
  %.pn70.pn.pn.i = phi { ptr, i32 } [ %.pn70.pn.i, %bb.bh ], [ %i.eq, %bb.bd ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #28
  br label %bb.bk

bb.bj:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit98.i, %bb.aw
  invoke void @__cxa_end_catch()
          to label %bb.ce unwind label %bb.bl

bb.bk:                                            ; preds = %bb.bi, %bb.au
  %.pn70.pn.pn.pn.i = phi { ptr, i32 } [ %.pn70.pn.pn.i, %bb.bi ], [ %i.dy, %bb.au ]
  invoke void @__cxa_end_catch()
          to label %bb.cm unwind label %bb.cn

bb.bl:                                            ; preds = %bb.bj
  %i.ez = landingpad { ptr, i32 }
          cleanup
  br label %bb.cm

bb.bm:                                            ; preds = %bb.as
  %i.fa = landingpad { ptr, i32 }
          cleanup
  br label %bb.cd

bb.bn:                                            ; preds = %bb.as
  %.not75.i = icmp eq ptr %i.dw, null             ; 2 uses
  br i1 %.not75.i, label %bb.bp, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.fb = getelementptr inbounds nuw i8, ptr %i.dw, i64 8
  %i.fc = load i32, ptr %i.fb, align 8, !tbaa !36
  %i.fd = icmp slt i32 %i.fc, 2
  br i1 %i.fd, label %bb.cc, label %bb.bp

bb.bp:                                            ; preds = %bb.bo, %bb.bn
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #28
  invoke void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128) %10)
          to label %bb.bq unwind label %bb.bw

bb.bq:                                            ; preds = %bb.bp
  %i.fe = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  %i.ff = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.fe, ptr noundef nonnull @.str.100, i64 noundef 19)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit102.i unwind label %bb.bx ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit102.i: ; preds = %bb.bq
  %i.fg = load ptr, ptr %0, align 8, !tbaa !40
  %i.fh = load i64, ptr %i.ag, align 8, !tbaa !44
  %i.fi = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.fe, ptr noundef %i.fg, i64 noundef %i.fh)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit103.i unwind label %bb.bx ; 2 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit103.i: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit102.i
  %i.fj = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.fi, ptr noundef nonnull @.str.99, i64 noundef 22)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit104.i unwind label %bb.bx ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit104.i: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit103.i
  %i.fk = load ptr, ptr %i.dv, align 8, !tbaa !27
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fk, i64 16
  %i.fm = load ptr, ptr %i.fl, align 8
  %i.fn = call noundef ptr %i.fm(ptr noundef nonnull align 8 dereferenceable(148) %i.dv) #28, !inline_history !227
  %i.fo = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %i.fi, ptr noundef %i.fn)
          to label %bb.br unwind label %bb.bx     ; 0 uses

bb.br:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit104.i
  br i1 %.not75.i, label %bb.bt, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.fp = load ptr, ptr %i.dw, align 8, !tbaa !45
  br label %bb.bt

bb.bt:                                            ; preds = %bb.bs, %bb.br
  %i.fq = phi ptr [ %i.fp, %bb.bs ], [ null, %bb.br ]
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #28
  invoke void @_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %11, ptr noundef nonnull align 8 dereferenceable(128) %10)
          to label %bb.bu unwind label %bb.by

bb.bu:                                            ; preds = %bb.bt
  %i.fr = load ptr, ptr %11, align 8, !tbaa !40
  invoke void @_ZN2cv5utils7logging8internal17writeLogMessageExENS1_8LogLevelEPKcS5_iS5_S5_(i32 noundef 2, ptr noundef %i.fq, ptr noundef nonnull @.str.8, i32 noundef 1237, ptr noundef nonnull @__func__._ZN2cvL17imwriteanimation_ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS_9AnimationERKSt6vectorIiSaIiEE, ptr noundef %i.fr)
          to label %bb.bv unwind label %bb.bz

end_hunk_1
begin_hunk_2_@_ZN2cv20imencodeWithMetadataERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS_11_InputArrayERKSt6vectorIiSaIiEESA_RSB_IhSaIhEESF_:bb.a
  unreachable

bb.o:                                             ; preds = %bb.l
  %i.m = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit227

bb.p:                                             ; preds = %bb.m
  %i.n = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.o = load ptr, ptr %11, align 8, !tbaa !40    ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  %i.q = icmp eq ptr %i.o, %i.p
  br i1 %i.q, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit227, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i225

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i225: ; preds = %bb.p
  %i.r = load i64, ptr %i.p, align 8, !tbaa !22
  %i.s = add i64 %i.r, 1
  call void @_ZdlPvm(ptr noundef %i.o, i64 noundef %i.s) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit227

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit227: ; preds = %bb.p, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i225, %bb.o
  %.pn219 = phi { ptr, i32 } [ %i.m, %bb.o ], [ %i.n, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i225 ], [ %i.n, %bb.p ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #28
  br label %bb.ii

bb.q:                                             ; preds = %bb.j
  %i.t = invoke noundef i32 @_ZNK2cv11_InputArray4kindEv(ptr noundef nonnull align 8 dereferenceable(24) %1)
          to label %bb.r unwind label %bb.k

bb.r:                                             ; preds = %bb.q
  %i.u = icmp eq i32 %i.t, 327680
  br i1 %i.u, label %bb.u, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.v = invoke noundef i32 @_ZNK2cv11_InputArray4kindEv(ptr noundef nonnull align 8 dereferenceable(24) %1)
          to label %bb.t unwind label %bb.k

bb.t:                                             ; preds = %bb.s
  %i.w = icmp eq i32 %i.v, 720896
  br i1 %i.w, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t, %bb.r
  invoke void @_ZNK2cv11_InputArray12getMatVectorERSt6vectorINS_3MatESaIS2_EE(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %10)
          to label %bb.ad unwind label %bb.k

bb.v:                                             ; preds = %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #28
  %i.x = invoke noundef i32 @_ZNK2cv11_InputArray4kindEv(ptr noundef nonnull align 8 dereferenceable(24) %1)
          to label %.noexc unwind label %bb.aa

.noexc:                                           ; preds = %bb.v
  %i.y = icmp eq i32 %i.x, 65536
  br i1 %i.y, label %bb.w, label %bb.x

bb.w:                                             ; preds = %.noexc
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !12, !noalias !278
  invoke void @_ZN2cv3MatC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(208) %13, ptr noundef nonnull align 8 dereferenceable(208) %i.aa)
          to label %_ZNK2cv11_InputArray6getMatEi.exit unwind label %bb.aa

bb.x:                                             ; preds = %.noexc
  invoke void @_ZNK2cv11_InputArray7getMat_Ei(ptr dead_on_unwind nonnull writable sret(%"class.cv::Mat") align 8 %13, ptr noundef nonnull align 8 dereferenceable(24) %1, i32 noundef -1)
          to label %_ZNK2cv11_InputArray6getMatEi.exit unwind label %bb.aa

_ZNK2cv11_InputArray6getMatEi.exit:               ; preds = %bb.w, %bb.x
  %i.ab = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 3 uses
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !105 ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !106
  %.not.i.i = icmp eq ptr %i.ac, %i.ae
  br i1 %.not.i.i, label %bb.z, label %bb.y

bb.y:                                             ; preds = %_ZNK2cv11_InputArray6getMatEi.exit
  call void @_ZN2cv3MatC1EOS0_(ptr noundef nonnull align 8 dereferenceable(208) %i.ac, ptr noundef nonnull align 8 dereferenceable(208) %13) #28
  %i.af = load ptr, ptr %i.ab, align 8, !tbaa !105
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 208
  store ptr %i.ag, ptr %i.ab, align 8, !tbaa !105
  br label %_ZNSt6vectorIN2cv3MatESaIS1_EE9push_backEOS1_.exit

bb.z:                                             ; preds = %_ZNK2cv11_InputArray6getMatEi.exit
  invoke void @_ZNSt6vectorIN2cv3MatESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %10, ptr %i.ac, ptr noundef nonnull align 8 dereferenceable(208) %13)
          to label %_ZNSt6vectorIN2cv3MatESaIS1_EE9push_backEOS1_.exit unwind label %bb.ab

_ZNSt6vectorIN2cv3MatESaIS1_EE9push_backEOS1_.exit: ; preds = %bb.y, %bb.z
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %13) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #28
  br label %bb.ad

bb.aa:                                            ; preds = %bb.x, %bb.w, %bb.v
  %i.ah = landingpad { ptr, i32 }
          cleanup
  br label %bb.ac

bb.ab:                                            ; preds = %bb.z
  %i.ai = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %13) #28
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %.pn151 = phi { ptr, i32 } [ %i.ai, %bb.ab ], [ %i.ah, %bb.aa ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #28
  br label %bb.ii

bb.ad:                                            ; preds = %_ZNSt6vectorIN2cv3MatESaIS1_EE9push_backEOS1_.exit, %bb.u
  %i.aj = load ptr, ptr %10, align 8, !tbaa !107  ; 3 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 3 uses
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !107 ; 2 uses
  %i.am = icmp eq ptr %i.aj, %i.al
  br i1 %i.am, label %bb.ae, label %.lr.ph

bb.ae:                                            ; preds = %bb.ad
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #28
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %14, ptr noundef nonnull @.str.18, ptr noundef nonnull align 1 dereferenceable(1) %15)
          to label %bb.af unwind label %bb.ah

bb.af:                                            ; preds = %bb.ae
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %14, ptr noundef nonnull @__func__._ZN2cv20imencodeWithMetadataERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS_11_InputArrayERKSt6vectorIiSaIiEESA_RSB_IhSaIhEESF_, ptr noundef nonnull @.str.8, i32 noundef 1633) #31
          to label %bb.ag unwind label %bb.ai

bb.ag:                                            ; preds = %bb.af
  unreachable

bb.ah:                                            ; preds = %bb.ae
  %i.an = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit233

bb.ai:                                            ; preds = %bb.af
  %i.ao = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ap = load ptr, ptr %14, align 8, !tbaa !40   ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 2 uses
  %i.ar = icmp eq ptr %i.ap, %i.aq
  br i1 %i.ar, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit233, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i231

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i231: ; preds = %bb.ai
  %i.as = load i64, ptr %i.aq, align 8, !tbaa !22
  %i.at = add i64 %i.as, 1
  call void @_ZdlPvm(ptr noundef %i.ap, i64 noundef %i.at) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit233

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit233: ; preds = %bb.ai, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i231, %bb.ah
  %.pn217 = phi { ptr, i32 } [ %i.an, %bb.ah ], [ %i.ao, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i231 ], [ %i.ao, %bb.ai ]
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #28
  br label %bb.ii

.lr.ph:                                           ; preds = %bb.ad
  %i.au = ptrtoint ptr %i.al to i64
  %i.av = ptrtoint ptr %i.aj to i64
  %i.aw = sub i64 %i.au, %i.av
  %i.ax = sdiv exact i64 %i.aw, 208
  %i.ay = icmp ugt i64 %i.ax, 1                   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #28
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %16, i8 0, i64 24, i1 false)
  %i.az = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.ba = getelementptr inbounds nuw i8, ptr %23, i64 16 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %24, i64 16 ; 7 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %24, i64 8
  %i.bd = getelementptr inbounds nuw i8, ptr %23, i64 64
  %i.be = getelementptr inbounds nuw i8, ptr %23, i64 48
  %i.bf = getelementptr inbounds nuw i8, ptr %23, i64 56
  %i.bg = getelementptr inbounds nuw i8, ptr %23, i64 96 ; 2 uses
  %i.bh = load ptr, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  %i.bi = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 64), align 8
  %i.bj = getelementptr i8, ptr %i.bh, i64 -24
  %i.bk = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 72), align 8
  %i.bl = getelementptr inbounds nuw i8, ptr %23, i64 24 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %23, i64 112 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %23, i64 80
  %i.bo = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 16), align 8 ; 2 uses
  %i.bp = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.bq = getelementptr i8, ptr %i.bo, i64 -24
  %i.br = getelementptr inbounds nuw i8, ptr %23, i64 8
  %i.bs = getelementptr inbounds nuw i8, ptr %23, i64 128
  %i.bt = getelementptr inbounds nuw i8, ptr %27, i64 8
  %i.bu = getelementptr inbounds nuw i8, ptr %27, i64 16
  %i.bv = getelementptr inbounds nuw i8, ptr %16, i64 8 ; 3 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %16, i64 16
  br label %bb.aj

._crit_edge:                                      ; preds = %_ZNSt6vectorIN2cv3MatESaIS1_EE9push_backERKS1_.exit
  %i.bx = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !35 ; 2 uses
  %i.bz = load ptr, ptr %5, align 8, !tbaa !32    ; 3 uses
  %i.ca = ptrtoint ptr %i.by to i64
  %i.cb = ptrtoint ptr %i.bz to i64
  %i.cc = sub i64 %i.ca, %i.cb                    ; 2 uses
  %i.cd = ashr exact i64 %i.cc, 2                 ; 3 uses
  %i.ce = and i64 %i.cc, 4
  %i.cf = icmp eq i64 %i.ce, 0
  br i1 %i.cf, label %bb.da, label %bb.cx

bb.aj:                                            ; preds = %.lr.ph, %_ZNSt6vectorIN2cv3MatESaIS1_EE9push_backERKS1_.exit
  %i.cg = phi ptr [ %i.aj, %.lr.ph ], [ %i.gs, %_ZNSt6vectorIN2cv3MatESaIS1_EE9push_backERKS1_.exit ]
  %.0139387 = phi i64 [ 0, %.lr.ph ], [ %i.gq, %_ZNSt6vectorIN2cv3MatESaIS1_EE9push_backERKS1_.exit ] ; 2 uses
  %.sroa.4.0386 = phi ptr [ undef, %.lr.ph ], [ %.sroa.4.2, %_ZNSt6vectorIN2cv3MatESaIS1_EE9push_backERKS1_.exit ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #28
  %i.ch = getelementptr inbounds nuw [208 x i8], ptr %i.cg, i64 %.0139387
  invoke void @_ZN2cv3MatC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(208) %17, ptr noundef nonnull align 8 dereferenceable(208) %i.ch)
          to label %bb.ak unwind label %bb.am

bb.ak:                                            ; preds = %bb.aj
  %i.ci = invoke noundef zeroext i1 @_ZNK2cv3Mat5emptyEv(ptr noundef nonnull align 8 dereferenceable(208) %17)
          to label %bb.al unwind label %bb.an

bb.al:                                            ; preds = %bb.ak
  br i1 %i.ci, label %bb.ao, label %bb.at

bb.am:                                            ; preds = %bb.aj
  %i.cj = landingpad { ptr, i32 }
          cleanup
  br label %bb.cw

bb.an:                                            ; preds = %bb.ak
  %i.ck = landingpad { ptr, i32 }
          cleanup
  br label %bb.cv

bb.ao:                                            ; preds = %bb.al
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #28
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %18, ptr noundef nonnull @.str.33, ptr noundef nonnull align 1 dereferenceable(1) %19)
          to label %bb.ap unwind label %bb.ar

bb.ap:                                            ; preds = %bb.ao
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %18, ptr noundef nonnull @__func__._ZN2cv20imencodeWithMetadataERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS_11_InputArrayERKSt6vectorIiSaIiEESA_RSB_IhSaIhEESF_, ptr noundef nonnull @.str.8, i32 noundef 1640) #31
          to label %bb.aq unwind label %bb.as

bb.aq:                                            ; preds = %bb.ap
  unreachable

bb.ar:                                            ; preds = %bb.ao
  %i.cl = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit236

bb.as:                                            ; preds = %bb.ap
  %i.cm = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cn = load ptr, ptr %18, align 8, !tbaa !40   ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %18, i64 16 ; 2 uses
  %i.cp = icmp eq ptr %i.cn, %i.co
  br i1 %i.cp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit236, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i234

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i234: ; preds = %bb.as
  %i.cq = load i64, ptr %i.co, align 8, !tbaa !22
  %i.cr = add i64 %i.cq, 1
  call void @_ZdlPvm(ptr noundef %i.cn, i64 noundef %i.cr) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit236

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit236: ; preds = %bb.as, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i234, %bb.ar
  %.pn212 = phi { ptr, i32 } [ %i.cl, %bb.ar ], [ %i.cm, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i234 ], [ %i.cm, %bb.as ]
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #28
  br label %bb.cv

bb.at:                                            ; preds = %bb.al
  %i.cs = load i32, ptr %17, align 8, !tbaa !179
  %i.ct = lshr i32 %i.cs, 5
  %i.cu = trunc i32 %i.ct to i8
  %i.cv = and i8 %i.cu, 127
  %trunc = add nuw i8 %i.cv, 1                    ; 2 uses
  switch i8 %trunc, label %bb.au [
    i8 4, label %_ZNK2cv3PtrINS_16BaseImageEncoderEE11dynamicCastINS_10ExrEncoderEEENS0_IT_EEv.exit
    i8 3, label %_ZNK2cv3PtrINS_16BaseImageEncoderEE11dynamicCastINS_10ExrEncoderEEENS0_IT_EEv.exit
    i8 1, label %_ZNK2cv3PtrINS_16BaseImageEncoderEE11dynamicCastINS_10ExrEncoderEEENS0_IT_EEv.exit
  ]

bb.au:                                            ; preds = %bb.at
  %i.cw = load ptr, ptr %7, align 8, !tbaa !176, !noalias !281 ; 2 uses
  %i.cx = icmp eq ptr %i.cw, null
  br i1 %i.cx, label %_ZNK2cv3PtrINS_16BaseImageEncoderEE11dynamicCastINS_10ExrEncoderEEENS0_IT_EEv.exit, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.cy = load ptr, ptr %i.cw, align 8, !tbaa !27, !noalias !281
  %i.cz = icmp eq ptr %i.cy, getelementptr inbounds nuw inrange(-16, 104) (i8, ptr @_ZTVN2cv10ExrEncoderE, i64 16)
  br i1 %i.cz, label %bb.aw, label %_ZNK2cv3PtrINS_16BaseImageEncoderEE11dynamicCastINS_10ExrEncoderEEENS0_IT_EEv.exit

bb.aw:                                            ; preds = %bb.av
  %i.da = load ptr, ptr %i.az, align 8, !tbaa !21, !noalias !281 ; 4 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.da, null
  br i1 %.not.i.i.i.i.i, label %_ZNK2cv3PtrINS_16BaseImageEncoderEE11dynamicCastINS_10ExrEncoderEEENS0_IT_EEv.exit, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 8 ; 3 uses
  %i.dc = load i8, ptr @__libc_single_threaded, align 1, !tbaa !22, !noalias !281
  %.not.i.i.i.i.i.i = icmp eq i8 %i.dc, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.az, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.dd = load i32, ptr %i.db, align 4, !tbaa !23, !noalias !281
  %i.de = add nsw i32 %i.dd, 1
  store i32 %i.de, ptr %i.db, align 4, !tbaa !23, !noalias !281
  br label %_ZNK2cv3PtrINS_16BaseImageEncoderEE11dynamicCastINS_10ExrEncoderEEENS0_IT_EEv.exit

bb.az:                                            ; preds = %bb.ax
  %i.df = atomicrmw volatile add ptr %i.db, i32 1 acq_rel, align 4, !noalias !281 ; 0 uses
  br label %_ZNK2cv3PtrINS_16BaseImageEncoderEE11dynamicCastINS_10ExrEncoderEEENS0_IT_EEv.exit

_ZNK2cv3PtrINS_16BaseImageEncoderEE11dynamicCastINS_10ExrEncoderEEENS0_IT_EEv.exit: ; preds = %bb.az, %bb.ay, %bb.aw, %bb.av, %bb.au, %bb.at, %bb.at, %bb.at
  %.sroa.4.1 = phi ptr [ %.sroa.4.0386, %bb.at ], [ %.sroa.4.0386, %bb.at ], [ %.sroa.4.0386, %bb.at ], [ %i.da, %bb.ay ], [ null, %bb.aw ], [ %i.da, %bb.az ], [ null, %bb.av ], [ null, %bb.au ] ; 11 uses
  %i.dg = phi i1 [ true, %bb.at ], [ true, %bb.at ], [ true, %bb.at ], [ true, %bb.ay ], [ true, %bb.aw ], [ true, %bb.az ], [ false, %bb.av ], [ false, %bb.au ]
  switch i8 %trunc, label %bb.ba [
    i8 4, label %_ZNSt12__shared_ptrIN2cv10ExrEncoderELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
    i8 3, label %_ZNSt12__shared_ptrIN2cv10ExrEncoderELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
    i8 1, label %_ZNSt12__shared_ptrIN2cv10ExrEncoderELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  ]

bb.ba:                                            ; preds = %_ZNK2cv3PtrINS_16BaseImageEncoderEE11dynamicCastINS_10ExrEncoderEEENS0_IT_EEv.exit
  %.not.i.i237 = icmp eq ptr %.sroa.4.1, null
  br i1 %.not.i.i237, label %_ZNSt12__shared_ptrIN2cv10ExrEncoderELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.dh = getelementptr inbounds nuw i8, ptr %.sroa.4.1, i64 8 ; 4 uses
  %i.di = load atomic i64, ptr %i.dh acquire, align 8 ; 2 uses
  %i.dj = icmp eq i64 %i.di, 4294967297
  %i.dk = trunc i64 %i.di to i32                  ; 2 uses
  br i1 %i.dj, label %bb.bc, label %bb.bd

bb.bc:                                            ; preds = %bb.bb
  store i32 0, ptr %i.dh, align 8, !tbaa !24
  %i.dl = getelementptr inbounds nuw i8, ptr %.sroa.4.1, i64 12
  store i32 0, ptr %i.dl, align 4, !tbaa !26
  %i.dm = load ptr, ptr %.sroa.4.1, align 8, !tbaa !27
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 16
  %i.do = load ptr, ptr %i.dn, align 8
  call void %i.do(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.1) #28, !inline_history !185
  %i.dp = load ptr, ptr %.sroa.4.1, align 8, !tbaa !27
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 24
  %i.dr = load ptr, ptr %i.dq, align 8
  call void %i.dr(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.1) #28, !inline_history !185
  br label %_ZNSt12__shared_ptrIN2cv10ExrEncoderELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.bd:                                            ; preds = %bb.bb
  %i.ds = load i8, ptr @__libc_single_threaded, align 1, !tbaa !22
  %.not.i.i.i = icmp eq i8 %i.ds, 0
  br i1 %.not.i.i.i, label %bb.bf, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.dt = add nsw i32 %i.dk, -1
  store i32 %i.dt, ptr %i.dh, align 8, !tbaa !23
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.bf:                                            ; preds = %bb.bd
  %i.du = atomicrmw volatile add ptr %i.dh, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.bf, %bb.be
  %.0.i.i.i.i = phi i32 [ %i.dk, %bb.be ], [ %i.du, %bb.bf ]
  %i.dv = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.dv, label %bb.bg, label %_ZNSt12__shared_ptrIN2cv10ExrEncoderELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !30

bb.bg:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.1) #28
  br label %_ZNSt12__shared_ptrIN2cv10ExrEncoderELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN2cv10ExrEncoderELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.bg, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.bc, %bb.ba, %_ZNK2cv3PtrINS_16BaseImageEncoderEE11dynamicCastINS_10ExrEncoderEEENS0_IT_EEv.exit, %_ZNK2cv3PtrINS_16BaseImageEncoderEE11dynamicCastINS_10ExrEncoderEEENS0_IT_EEv.exit, %_ZNK2cv3PtrINS_16BaseImageEncoderEE11dynamicCastINS_10ExrEncoderEEENS0_IT_EEv.exit
  %.sroa.4.2 = phi ptr [ %.sroa.4.1, %_ZNK2cv3PtrINS_16BaseImageEncoderEE11dynamicCastINS_10ExrEncoderEEENS0_IT_EEv.exit ], [ %.sroa.4.1, %_ZNK2cv3PtrINS_16BaseImageEncoderEE11dynamicCastINS_10ExrEncoderEEENS0_IT_EEv.exit ], [ %.sroa.4.1, %_ZNK2cv3PtrINS_16BaseImageEncoderEE11dynamicCastINS_10ExrEncoderEEENS0_IT_EEv.exit ], [ undef, %bb.ba ], [ undef, %bb.bc ], [ undef, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i ], [ undef, %bb.bg ]
  br i1 %i.dg, label %bb.bm, label %bb.bh

bb.bh:                                            ; preds = %_ZNSt12__shared_ptrIN2cv10ExrEncoderELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #28
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %20, ptr noundef nonnull @.str.34, ptr noundef nonnull align 1 dereferenceable(1) %21)
          to label %bb.bi unwind label %bb.bk

bb.bi:                                            ; preds = %bb.bh
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %20, ptr noundef nonnull @__func__._ZN2cv20imencodeWithMetadataERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS_11_InputArrayERKSt6vectorIiSaIiEESA_RSB_IhSaIhEESF_, ptr noundef nonnull @.str.8, i32 noundef 1644) #31
          to label %bb.bj unwind label %bb.bl

bb.bj:                                            ; preds = %bb.bi
  unreachable

bb.bk:                                            ; preds = %bb.bh
  %i.dw = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit240

bb.bl:                                            ; preds = %bb.bi
  %i.dx = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.dy = load ptr, ptr %20, align 8, !tbaa !40   ; 2 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %20, i64 16 ; 2 uses
  %i.ea = icmp eq ptr %i.dy, %i.dz
  br i1 %i.ea, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit240, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i238

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i238: ; preds = %bb.bl
  %i.eb = load i64, ptr %i.dz, align 8, !tbaa !22
  %i.ec = add i64 %i.eb, 1
  call void @_ZdlPvm(ptr noundef %i.dy, i64 noundef %i.ec) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit240

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit240: ; preds = %bb.bl, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i238, %bb.bk
  %.pn197 = phi { ptr, i32 } [ %i.dw, %bb.bk ], [ %i.dx, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i238 ], [ %i.dx, %bb.bl ]
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #28
  br label %bb.cv

bb.bm:                                            ; preds = %_ZNSt12__shared_ptrIN2cv10ExrEncoderELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #28
  call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %22) #28
  %i.ed = load ptr, ptr %7, align 8, !tbaa !176   ; 2 uses
  %i.ee = load i32, ptr %17, align 8, !tbaa !179
  %i.ef = and i32 %i.ee, 31
  %i.eg = load ptr, ptr %i.ed, align 8, !tbaa !27
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 16
  %i.ei = load ptr, ptr %i.eh, align 8
  %i.ej = invoke noundef zeroext i1 %i.ei(ptr noundef nonnull align 8 dereferenceable(208) %i.ed, i32 noundef %i.ef)
          to label %bb.bn unwind label %bb.bp

bb.bn:                                            ; preds = %bb.bm
  br i1 %i.ej, label %bb.cr, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %.b = load i1, ptr @_ZZN2cv20imencodeWithMetadataERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS_11_InputArrayERKSt6vectorIiSaIiEESA_RSB_IhSaIhEESF_E21_cv_log_once___LINE__, align 1
  br i1 %.b, label %bb.ch, label %bb.bq

bb.bp:                                            ; preds = %bb.ct, %bb.cs, %bb.cp, %bb.ch, %bb.bm
  %i.ek = landingpad { ptr, i32 }
          cleanup
  br label %bb.cu

bb.bq:                                            ; preds = %bb.bo
  %i.el = invoke noundef ptr @_ZN2cv5utils7logging8internal15getGlobalLogTagEv()
          to label %bb.bs unwind label %bb.br     ; 3 uses

bb.br:                                            ; preds = %bb.bq
  %i.em = landingpad { ptr, i32 }
          cleanup
  br label %bb.cu

bb.bs:                                            ; preds = %bb.bq
  %.not199 = icmp eq ptr %i.el, null              ; 2 uses
  br i1 %.not199, label %bb.bu, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %i.en = getelementptr inbounds nuw i8, ptr %i.el, i64 8
  %i.eo = load i32, ptr %i.en, align 8, !tbaa !36
  %i.ep = icmp slt i32 %i.eo, 3
  br i1 %i.ep, label %bb.ch, label %bb.bu

bb.bu:                                            ; preds = %bb.bt, %bb.bs
  store i1 true, ptr @_ZZN2cv20imencodeWithMetadataERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS_11_InputArrayERKSt6vectorIiSaIiEESA_RSB_IhSaIhEESF_E21_cv_log_once___LINE__, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #28
  invoke void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128) %23)
          to label %bb.bv unwind label %bb.cc

bb.bv:                                            ; preds = %bb.bu
  %i.eq = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ba, ptr noundef nonnull @.str.35, i64 noundef 68)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.cd ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.bv
  br i1 %.not199, label %bb.bx, label %bb.bw

bb.bw:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.er = load ptr, ptr %i.el, align 8, !tbaa !45
  br label %bb.bx

bb.bx:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %bb.bw
  %i.es = phi ptr [ %i.er, %bb.bw ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit ]
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #28
  call void @llvm.experimental.noalias.scope.decl(metadata !286)
  call void @llvm.experimental.noalias.scope.decl(metadata !289)
  store ptr %i.bb, ptr %24, align 8, !tbaa !116, !alias.scope !292
  store i64 0, ptr %i.bc, align 8, !tbaa !44, !alias.scope !292
  store i8 0, ptr %i.bb, align 8, !tbaa !22, !alias.scope !292
  %i.et = load ptr, ptr %i.bd, align 8, !tbaa !118, !noalias !292 ; 3 uses
  %.not.i.not.i.i = icmp eq ptr %i.et, null
  %i.eu = load ptr, ptr %i.be, align 8, !noalias !292 ; 2 uses
  %i.ev = icmp ugt ptr %i.et, %i.eu
  %.08.i.i.i = select i1 %i.ev, ptr %i.et, ptr %i.eu ; 2 uses
  %.not5.i.i = icmp eq ptr %.08.i.i.i, null
  %.not.i.i242 = select i1 %.not.i.not.i.i, i1 true, i1 %.not5.i.i
  br i1 %.not.i.i242, label %bb.ca, label %bb.by

bb.by:                                            ; preds = %bb.bx
  %i.ew = load ptr, ptr %i.bf, align 8, !tbaa !122, !noalias !292 ; 2 uses
  %i.ex = ptrtoint ptr %.08.i.i.i to i64
  %i.ey = ptrtoint ptr %i.ew to i64
  %i.ez = sub i64 %i.ex, %i.ey
  %i.fa = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %24, i64 noundef 0, i64 noundef 0, ptr noundef %i.ew, i64 noundef %i.ez)
          to label %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.bz ; 0 uses

bb.bz:                                            ; preds = %bb.ca, %bb.by
  %i.fb = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.fc = load ptr, ptr %24, align 8, !tbaa !40, !alias.scope !292 ; 2 uses
  %i.fd = icmp eq ptr %i.fc, %i.bb
  br i1 %i.fd, label %.body, label %.body.sink.split

bb.ca:                                            ; preds = %bb.bx
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %24, ptr noundef nonnull align 8 dereferenceable(32) %i.bg)
          to label %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.bz

_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit: ; preds = %bb.ca, %bb.by
  %i.fe = load ptr, ptr %24, align 8, !tbaa !40
  invoke void @_ZN2cv5utils7logging8internal17writeLogMessageExENS1_8LogLevelEPKcS5_iS5_S5_(i32 noundef 3, ptr noundef %i.es, ptr noundef nonnull @.str.8, i32 noundef 1652, ptr noundef nonnull @__func__._ZN2cv20imencodeWithMetadataERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS_11_InputArrayERKSt6vectorIiSaIiEESA_RSB_IhSaIhEESF_, ptr noundef %i.fe)
          to label %bb.cb unwind label %bb.ce

bb.cb:                                            ; preds = %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.ff = load ptr, ptr %24, align 8, !tbaa !40   ; 2 uses
  %i.fg = icmp eq ptr %i.ff, %i.bb
  br i1 %i.fg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit245, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i243

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i243: ; preds = %bb.cb
  %i.fh = load i64, ptr %i.bb, align 8, !tbaa !22
  %i.fi = add i64 %i.fh, 1
  call void @_ZdlPvm(ptr noundef %i.ff, i64 noundef %i.fi) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit245

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit245: ; preds = %bb.cb, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i243
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #28
  store ptr %i.bh, ptr %23, align 8, !tbaa !27
  %i.fj = load i64, ptr %i.bj, align 8
  %i.fk = getelementptr inbounds i8, ptr %23, i64 %i.fj
  store ptr %i.bi, ptr %i.fk, align 8, !tbaa !27
  store ptr %i.bk, ptr %i.ba, align 8, !tbaa !27
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.bl, align 8, !tbaa !27
  %i.fl = load ptr, ptr %i.bg, align 8, !tbaa !40 ; 2 uses
  %i.fm = icmp eq ptr %i.fl, %i.bm
  br i1 %i.fm, label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit245
  %i.fn = load i64, ptr %i.bm, align 8, !tbaa !22
  %i.fo = add i64 %i.fn, 1
  call void @_ZdlPvm(ptr noundef %i.fl, i64 noundef %i.fo) #30
  br label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit245, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.bl, align 8, !tbaa !27
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.bn) #28
  store ptr %i.bo, ptr %23, align 8, !tbaa !27
  %i.fp = load i64, ptr %i.bq, align 8
  %i.fq = getelementptr inbounds i8, ptr %23, i64 %i.fp
  store ptr %i.bp, ptr %i.fq, align 8, !tbaa !27
  store i64 0, ptr %i.br, align 8, !tbaa !123
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %i.bs) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #28
  br label %bb.ch

bb.cc:                                            ; preds = %bb.bu
  %i.fr = landingpad { ptr, i32 }
          cleanup
  br label %bb.cg

bb.cd:                                            ; preds = %bb.bv
  %i.fs = landingpad { ptr, i32 }
          cleanup
  br label %bb.cf

bb.ce:                                            ; preds = %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.ft = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.fu = load ptr, ptr %24, align 8, !tbaa !40   ; 2 uses
  %i.fv = icmp eq ptr %i.fu, %i.bb
  br i1 %i.fv, label %.body, label %.body.sink.split

.body.sink.split:                                 ; preds = %bb.ce, %bb.bz
end_hunk_2
begin_hunk_3_@_ZN2cv20imencodeWithMetadataERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS_11_InputArrayERKSt6vectorIiSaIiEESA_RSB_IhSaIhEESF_:bb.a
  call void @llvm.assume(i1 %i.nm)
  switch i64 %i.nl, label %bb.fa [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i
    i64 1, label %bb.ez
  ]

bb.ez:                                            ; preds = %bb.ey
  %i.nn = load i8, ptr %i.nh, align 1, !tbaa !22
  store i8 %i.nn, ptr %i.nf, align 1, !tbaa !22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

bb.fa:                                            ; preds = %bb.ey
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.nf, ptr align 1 %i.nh, i64 %i.nl, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i: ; preds = %bb.fa, %bb.ez, %bb.ey
  %i.no = load i64, ptr %i.nk, align 8, !tbaa !44 ; 2 uses
  store i64 %i.no, ptr %i.il, align 8, !tbaa !44
  %i.np = load ptr, ptr %34, align 8, !tbaa !40
  %i.nq = getelementptr inbounds nuw i8, ptr %i.np, i64 %i.no
  store i8 0, ptr %i.nq, align 1, !tbaa !22
  %.pre.i = load ptr, ptr %35, align 8, !tbaa !40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

.thread.i:                                        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  store ptr %i.nh, ptr %34, align 8, !tbaa !40
  %i.nr = getelementptr inbounds nuw i8, ptr %35, i64 8
  %i.ns = load <2 x i64>, ptr %i.nr, align 8, !tbaa !22
  store <2 x i64> %i.ns, ptr %i.il, align 8, !tbaa !22
  br label %bb.fc

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i
  %i.nt = load i64, ptr %i.ik, align 8, !tbaa !22
  store ptr %i.nh, ptr %34, align 8, !tbaa !40
  %i.nu = getelementptr inbounds nuw i8, ptr %35, i64 8
  %i.nv = load <2 x i64>, ptr %i.nu, align 8, !tbaa !22
  store <2 x i64> %i.nv, ptr %i.il, align 8, !tbaa !22
  %.not.i307 = icmp eq ptr %i.nf, null
  br i1 %.not.i307, label %bb.fc, label %bb.fb

bb.fb:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i
  store ptr %i.nf, ptr %35, align 8, !tbaa !40
  store i64 %i.nt, ptr %i.ni, align 8, !tbaa !22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

bb.fc:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i, %.thread.i
  store ptr %i.ni, ptr %35, align 8, !tbaa !40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i, %bb.fb, %bb.fc
  %i.nw = phi ptr [ %.pre.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i ], [ %i.nf, %bb.fb ], [ %i.ni, %bb.fc ]
  %i.nx = getelementptr inbounds nuw i8, ptr %35, i64 8
  store i64 0, ptr %i.nx, align 8, !tbaa !44
  store i8 0, ptr %i.nw, align 1, !tbaa !22
  %i.ny = load ptr, ptr %35, align 8, !tbaa !40   ; 2 uses
  %i.nz = getelementptr inbounds nuw i8, ptr %35, i64 16 ; 2 uses
  %i.oa = icmp eq ptr %i.ny, %i.nz
  br i1 %i.oa, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit310, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i308

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i308: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit
  %i.ob = load i64, ptr %i.nz, align 8, !tbaa !22
  %i.oc = add i64 %i.ob, 1
  call void @_ZdlPvm(ptr noundef %i.ny, i64 noundef %i.oc) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit310

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit310: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i308
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #28
  %i.od = load ptr, ptr %7, align 8, !tbaa !176   ; 2 uses
  %i.oe = load ptr, ptr %i.od, align 8, !tbaa !27
  %i.of = getelementptr inbounds nuw i8, ptr %i.oe, i64 32
  %i.og = load ptr, ptr %i.of, align 8
  %i.oh = invoke noundef zeroext i1 %i.og(ptr noundef nonnull align 8 dereferenceable(208) %i.od, ptr noundef nonnull align 8 dereferenceable(32) %34)
          to label %bb.fd unwind label %bb.fe

bb.fd:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit310
  br i1 %i.oh, label %bb.fl, label %bb.fg

bb.fe:                                            ; preds = %bb.gm, %bb.fl, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit310, %._crit_edge390
  %i.oi = landingpad { ptr, i32 }
          cleanup
  br label %bb.ig

bb.ff:                                            ; preds = %bb.ew
  %i.oj = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #28
  br label %bb.ig

bb.fg:                                            ; preds = %bb.fd
  call void @llvm.lifetime.start.p0(ptr nonnull %36) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %37) #28
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %36, ptr noundef nonnull @.str.44, ptr noundef nonnull align 1 dereferenceable(1) %37)
          to label %bb.fh unwind label %bb.fj

bb.fh:                                            ; preds = %bb.fg
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %36, ptr noundef nonnull @__func__._ZN2cv20imencodeWithMetadataERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS_11_InputArrayERKSt6vectorIiSaIiEESA_RSB_IhSaIhEESF_, ptr noundef nonnull @.str.8, i32 noundef 1690) #31
          to label %bb.fi unwind label %bb.fk

bb.fi:                                            ; preds = %bb.fh
  unreachable

bb.fj:                                            ; preds = %bb.fg
  %i.ok = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit313

bb.fk:                                            ; preds = %bb.fh
  %i.ol = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.om = load ptr, ptr %36, align 8, !tbaa !40   ; 2 uses
  %i.on = getelementptr inbounds nuw i8, ptr %36, i64 16 ; 2 uses
  %i.oo = icmp eq ptr %i.om, %i.on
  br i1 %i.oo, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit313, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i311

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i311: ; preds = %bb.fk
  %i.op = load i64, ptr %i.on, align 8, !tbaa !22
  %i.oq = add i64 %i.op, 1
  call void @_ZdlPvm(ptr noundef %i.om, i64 noundef %i.oq) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit313

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit313: ; preds = %bb.fk, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i311, %bb.fj
  %.pn154 = phi { ptr, i32 } [ %i.ok, %bb.fj ], [ %i.ol, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i311 ], [ %i.ol, %bb.fk ]
  call void @llvm.lifetime.end.p0(ptr nonnull %37) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #28
  br label %bb.ig

bb.fl:                                            ; preds = %bb.fd, %bb.ev
  invoke fastcc void @_ZN2cvL11addMetadataERNS_3PtrINS_16BaseImageEncoderEEERKSt6vectorIiSaIiEERKNS_11_InputArrayE(ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %3)
          to label %.invoke unwind label %bb.fe

.invoke:                                          ; preds = %bb.fl
  %i.or = load ptr, ptr %7, align 8, !tbaa !176   ; 2 uses
  %i.os = load ptr, ptr %16, align 8
  %.sink506 = select i1 %i.ay, i64 64, i64 56
  %i.ot = select i1 %i.ay, ptr %16, ptr %i.os
  %i.ou = load ptr, ptr %i.or, align 8, !tbaa !27
  %i.ov = getelementptr inbounds nuw i8, ptr %i.ou, i64 %.sink506
  %i.ow = load ptr, ptr %i.ov, align 8
  %i.ox = invoke noundef zeroext i1 %i.ow(ptr noundef nonnull align 8 dereferenceable(208) %i.or, ptr noundef nonnull align 8 dereferenceable(24) %i.ot, ptr noundef nonnull align 8 dereferenceable(24) %5)
          to label %bb.fn unwind label %bb.fm

bb.fm:                                            ; preds = %.invoke, %bb.fn
  %i.oy = landingpad { ptr, i32 }
          catch ptr @_ZTIN2cv9ExceptionE
          catch ptr null
  br label %bb.fu

bb.fn:                                            ; preds = %.invoke
  %i.oz = load ptr, ptr %7, align 8, !tbaa !176   ; 2 uses
  %i.pa = load ptr, ptr %i.oz, align 8, !tbaa !27
  %i.pb = getelementptr inbounds nuw i8, ptr %i.pa, i64 96
  %i.pc = load ptr, ptr %i.pb, align 8
  invoke void %i.pc(ptr noundef nonnull align 8 dereferenceable(208) %i.oz)
          to label %bb.fo unwind label %bb.fm

bb.fo:                                            ; preds = %bb.fn
  br i1 %i.ox, label %bb.hg, label %bb.fp

bb.fp:                                            ; preds = %bb.fo
  call void @llvm.lifetime.start.p0(ptr nonnull %38) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %39) #28
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %38, ptr noundef nonnull @.str.44, ptr noundef nonnull align 1 dereferenceable(1) %39)
          to label %bb.fq unwind label %bb.fs

bb.fq:                                            ; preds = %bb.fp
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %38, ptr noundef nonnull @__func__._ZN2cv20imencodeWithMetadataERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS_11_InputArrayERKSt6vectorIiSaIiEESA_RSB_IhSaIhEESF_, ptr noundef nonnull @.str.8, i32 noundef 1701) #31
          to label %bb.fr unwind label %bb.ft

bb.fr:                                            ; preds = %bb.fq
  unreachable

bb.fs:                                            ; preds = %bb.fp
  %i.pd = landingpad { ptr, i32 }
          catch ptr @_ZTIN2cv9ExceptionE
          catch ptr null
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit316

bb.ft:                                            ; preds = %bb.fq
  %i.pe = landingpad { ptr, i32 }
          catch ptr @_ZTIN2cv9ExceptionE
          catch ptr null                          ; 2 uses
  %i.pf = load ptr, ptr %38, align 8, !tbaa !40   ; 2 uses
  %i.pg = getelementptr inbounds nuw i8, ptr %38, i64 16 ; 2 uses
  %i.ph = icmp eq ptr %i.pf, %i.pg
  br i1 %i.ph, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit316, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i314

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i314: ; preds = %bb.ft
  %i.pi = load i64, ptr %i.pg, align 8, !tbaa !22
  %i.pj = add i64 %i.pi, 1
  call void @_ZdlPvm(ptr noundef %i.pf, i64 noundef %i.pj) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit316

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit316: ; preds = %bb.ft, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i314, %bb.fs
  %.pn156 = phi { ptr, i32 } [ %i.pd, %bb.fs ], [ %i.pe, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i314 ], [ %i.pe, %bb.ft ]
  call void @llvm.lifetime.end.p0(ptr nonnull %39) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %38) #28
  br label %bb.fu

bb.fu:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit316, %bb.fm
  %.pn156.pn = phi { ptr, i32 } [ %.pn156, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit316 ], [ %i.oy, %bb.fm ] ; 2 uses
  %.29 = extractvalue { ptr, i32 } %.pn156.pn, 1
  %.29132 = extractvalue { ptr, i32 } %.pn156.pn, 0
  %i.pk = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTIN2cv9ExceptionE) #28
  %i.pl = icmp eq i32 %.29, %i.pk
  %i.pm = call ptr @__cxa_begin_catch(ptr %.29132) #28 ; 2 uses
  br i1 %i.pl, label %bb.fv, label %bb.fw

bb.fv:                                            ; preds = %bb.fu
  %i.pn = invoke noundef ptr @_ZN2cv5utils7logging8internal15getGlobalLogTagEv()
          to label %bb.gp unwind label %bb.go     ; 3 uses

bb.fw:                                            ; preds = %bb.fu
  %i.po = invoke noundef ptr @_ZN2cv5utils7logging8internal15getGlobalLogTagEv()
          to label %bb.fy unwind label %bb.fx     ; 3 uses

bb.fx:                                            ; preds = %bb.fw
  %i.pp = landingpad { ptr, i32 }
          cleanup
  br label %bb.gn

bb.fy:                                            ; preds = %bb.fw
  %.not159 = icmp eq ptr %i.po, null              ; 2 uses
  br i1 %.not159, label %bb.ga, label %bb.fz

bb.fz:                                            ; preds = %bb.fy
  %i.pq = getelementptr inbounds nuw i8, ptr %i.po, i64 8
  %i.pr = load i32, ptr %i.pq, align 8, !tbaa !36
  %i.ps = icmp slt i32 %i.pr, 2
  br i1 %i.ps, label %bb.gm, label %bb.ga

bb.ga:                                            ; preds = %bb.fz, %bb.fy
  call void @llvm.lifetime.start.p0(ptr nonnull %40) #28
  invoke void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128) %40)
          to label %bb.gb unwind label %bb.gg

bb.gb:                                            ; preds = %bb.ga
  %i.pt = getelementptr inbounds nuw i8, ptr %40, i64 16
  %i.pu = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.pt, ptr noundef nonnull @.str.45, i64 noundef 48)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit318 unwind label %bb.gh ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit318: ; preds = %bb.gb
  br i1 %.not159, label %bb.gd, label %bb.gc

bb.gc:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit318
  %i.pv = load ptr, ptr %i.po, align 8, !tbaa !45
  br label %bb.gd

bb.gd:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit318, %bb.gc
  %i.pw = phi ptr [ %i.pv, %bb.gc ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit318 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %41) #28
  invoke void @_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %41, ptr noundef nonnull align 8 dereferenceable(128) %40)
          to label %bb.ge unwind label %bb.gi

bb.ge:                                            ; preds = %bb.gd
  %i.px = load ptr, ptr %41, align 8, !tbaa !40
  invoke void @_ZN2cv5utils7logging8internal17writeLogMessageExENS1_8LogLevelEPKcS5_iS5_S5_(i32 noundef 2, ptr noundef %i.pw, ptr noundef nonnull @.str.8, i32 noundef 1710, ptr noundef nonnull @__func__._ZN2cv20imencodeWithMetadataERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS_11_InputArrayERKSt6vectorIiSaIiEESA_RSB_IhSaIhEESF_, ptr noundef %i.px)
          to label %bb.gf unwind label %bb.gj

bb.gf:                                            ; preds = %bb.ge
  %i.py = load ptr, ptr %41, align 8, !tbaa !40   ; 2 uses
  %i.pz = getelementptr inbounds nuw i8, ptr %41, i64 16 ; 2 uses
  %i.qa = icmp eq ptr %i.py, %i.pz
  br i1 %i.qa, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit321, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i319

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i319: ; preds = %bb.gf
  %i.qb = load i64, ptr %i.pz, align 8, !tbaa !22
  %i.qc = add i64 %i.qb, 1
  call void @_ZdlPvm(ptr noundef %i.py, i64 noundef %i.qc) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit321

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit321: ; preds = %bb.gf, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i319
  call void @llvm.lifetime.end.p0(ptr nonnull %41) #28
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128) %40) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %40) #28
  br label %bb.gm

bb.gg:                                            ; preds = %bb.ga
  %i.qd = landingpad { ptr, i32 }
          cleanup
  br label %bb.gl

bb.gh:                                            ; preds = %bb.gb
  %i.qe = landingpad { ptr, i32 }
          cleanup
  br label %bb.gk

bb.gi:                                            ; preds = %bb.gd
  %i.qf = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit324

bb.gj:                                            ; preds = %bb.ge
  %i.qg = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.qh = load ptr, ptr %41, align 8, !tbaa !40   ; 2 uses
  %i.qi = getelementptr inbounds nuw i8, ptr %41, i64 16 ; 2 uses
  %i.qj = icmp eq ptr %i.qh, %i.qi
  br i1 %i.qj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit324, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i322

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i322: ; preds = %bb.gj
  %i.qk = load i64, ptr %i.qi, align 8, !tbaa !22
  %i.ql = add i64 %i.qk, 1
  call void @_ZdlPvm(ptr noundef %i.qh, i64 noundef %i.ql) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit324

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit324: ; preds = %bb.gj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i322, %bb.gi
  %.pn160 = phi { ptr, i32 } [ %i.qf, %bb.gi ], [ %i.qg, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i322 ], [ %i.qg, %bb.gj ]
  call void @llvm.lifetime.end.p0(ptr nonnull %41) #28
  br label %bb.gk

bb.gk:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit324, %bb.gh
  %.pn160.pn = phi { ptr, i32 } [ %.pn160, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit324 ], [ %i.qe, %bb.gh ]
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128) %40) #28
  br label %bb.gl

bb.gl:                                            ; preds = %bb.gk, %bb.gg
  %.pn160.pn.pn = phi { ptr, i32 } [ %.pn160.pn, %bb.gk ], [ %i.qd, %bb.gg ]
  call void @llvm.lifetime.end.p0(ptr nonnull %40) #28
  br label %bb.gn

bb.gm:                                            ; preds = %bb.fz, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit321
  invoke void @__cxa_end_catch()
          to label %.thread unwind label %bb.fe

bb.gn:                                            ; preds = %bb.gl, %bb.fx
  %.pn160.pn.pn.pn = phi { ptr, i32 } [ %.pn160.pn.pn, %bb.gl ], [ %i.pp, %bb.fx ]
  invoke void @__cxa_end_catch()
          to label %bb.ig unwind label %bb.il

bb.go:                                            ; preds = %bb.fv
  %i.qm = landingpad { ptr, i32 }
          cleanup
  br label %bb.hf

bb.gp:                                            ; preds = %bb.fv
  %.not165 = icmp eq ptr %i.pn, null              ; 2 uses
  br i1 %.not165, label %bb.gr, label %bb.gq

bb.gq:                                            ; preds = %bb.gp
  %i.qn = getelementptr inbounds nuw i8, ptr %i.pn, i64 8
  %i.qo = load i32, ptr %i.qn, align 8, !tbaa !36
  %i.qp = icmp slt i32 %i.qo, 2
  br i1 %i.qp, label %bb.he, label %bb.gr

bb.gr:                                            ; preds = %bb.gq, %bb.gp
  call void @llvm.lifetime.start.p0(ptr nonnull %42) #28
  invoke void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128) %42)
          to label %bb.gs unwind label %bb.gy

bb.gs:                                            ; preds = %bb.gr
  %i.qq = getelementptr inbounds nuw i8, ptr %42, i64 16 ; 2 uses
  %i.qr = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.qq, ptr noundef nonnull @.str.46, i64 noundef 31)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit326 unwind label %bb.gz ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit326: ; preds = %bb.gs
  %i.qs = load ptr, ptr %i.pm, align 8, !tbaa !27
  %i.qt = getelementptr inbounds nuw i8, ptr %i.qs, i64 16
  %i.qu = load ptr, ptr %i.qt, align 8
  %i.qv = call noundef ptr %i.qu(ptr noundef nonnull align 8 dereferenceable(148) %i.pm) #28
  %i.qw = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %i.qq, ptr noundef %i.qv)
          to label %bb.gt unwind label %bb.gz     ; 0 uses

bb.gt:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit326
  br i1 %.not165, label %bb.gv, label %bb.gu

bb.gu:                                            ; preds = %bb.gt
  %i.qx = load ptr, ptr %i.pn, align 8, !tbaa !45
  br label %bb.gv

bb.gv:                                            ; preds = %bb.gt, %bb.gu
  %i.qy = phi ptr [ %i.qx, %bb.gu ], [ null, %bb.gt ]
  call void @llvm.lifetime.start.p0(ptr nonnull %43) #28
  invoke void @_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %43, ptr noundef nonnull align 8 dereferenceable(128) %42)
          to label %bb.gw unwind label %bb.ha

bb.gw:                                            ; preds = %bb.gv
  %i.qz = load ptr, ptr %43, align 8, !tbaa !40
  invoke void @_ZN2cv5utils7logging8internal17writeLogMessageExENS1_8LogLevelEPKcS5_iS5_S5_(i32 noundef 2, ptr noundef %i.qy, ptr noundef nonnull @.str.8, i32 noundef 1705, ptr noundef nonnull @__func__._ZN2cv20imencodeWithMetadataERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS_11_InputArrayERKSt6vectorIiSaIiEESA_RSB_IhSaIhEESF_, ptr noundef %i.qz)
          to label %bb.gx unwind label %bb.hb

bb.gx:                                            ; preds = %bb.gw
  %i.ra = load ptr, ptr %43, align 8, !tbaa !40   ; 2 uses
  %i.rb = getelementptr inbounds nuw i8, ptr %43, i64 16 ; 2 uses
  %i.rc = icmp eq ptr %i.ra, %i.rb
  br i1 %i.rc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit329, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i327

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i327: ; preds = %bb.gx
  %i.rd = load i64, ptr %i.rb, align 8, !tbaa !22
  %i.re = add i64 %i.rd, 1
  call void @_ZdlPvm(ptr noundef %i.ra, i64 noundef %i.re) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit329

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit329: ; preds = %bb.gx, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i327
  call void @llvm.lifetime.end.p0(ptr nonnull %43) #28
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128) %42) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %42) #28
  br label %bb.he

bb.gy:                                            ; preds = %bb.gr
  %i.rf = landingpad { ptr, i32 }
          cleanup
  br label %bb.hd

bb.gz:                                            ; preds = %bb.gs, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit326
  %i.rg = landingpad { ptr, i32 }
end_hunk_3
begin_hunk_4_@_ZN2cv15ImageCollection8iteratorppEv:bb.a
  store i32 %i.p, ptr %i.e, align 8, !tbaa !363
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define { ptr, i32 } @_ZN2cv15ImageCollection8iteratorppEi(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(12) %0, i32 noundef %1) local_unnamed_addr #2 align 2 {
bb.a:
  %.sroa.0.0.copyload = load ptr, ptr %0, align 8, !tbaa !371 ; 2 uses
  %.sroa.2.0..0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %.sroa.2.0.copyload = load i32, ptr %.sroa.2.0..0..sroa_idx, align 8, !tbaa !23 ; 4 uses
  %i.a = load ptr, ptr %.sroa.0.0.copyload, align 8, !tbaa !162 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 56 ; 2 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !352
  %i.d = icmp eq i32 %i.c, %.sroa.2.0.copyload
  br i1 %i.d, label %bb.b, label %_ZN2cv15ImageCollection8iteratorppEv.exit

bb.b:                                             ; preds = %bb.a
  %i.e = add nsw i32 %.sroa.2.0.copyload, 1
  store i32 %i.e, ptr %i.b, align 8, !tbaa !352
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 88
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !16   ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !27
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 80
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = tail call noundef zeroext i1 %i.j(ptr noundef nonnull align 8 dereferenceable(720) %i.g), !inline_history !372 ; 0 uses
  %.pre.i = load i32, ptr %.sroa.2.0..0..sroa_idx, align 8, !tbaa !363
  br label %_ZN2cv15ImageCollection8iteratorppEv.exit

_ZN2cv15ImageCollection8iteratorppEv.exit:        ; preds = %bb.a, %bb.b
  %i.l = phi i32 [ %.pre.i, %bb.b ], [ %.sroa.2.0.copyload, %bb.a ]
  %i.m = add nsw i32 %i.l, 1
  store i32 %i.m, ptr %.sroa.2.0..0..sroa_idx, align 8, !tbaa !363
  %.fca.0.insert = insertvalue { ptr, i32 } poison, ptr %.sroa.0.0.copyload, 0
  %.fca.1.insert = insertvalue { ptr, i32 } %.fca.0.insert, i32 %.sroa.2.0.copyload, 1
  ret { ptr, i32 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN2cv9AnimationC2EiNS_7Scalar_IdEE(ptr noundef nonnull align 8 dereferenceable(296) initializes((0, 4), (8, 88)) %0, i32 noundef %1, ptr nofree noundef readonly align 8 captures(none) dead_on_return %2) unnamed_addr #7 align 2 {
bb.a:
  store i32 %1, ptr %0, align 8, !tbaa !138
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load double, ptr %2, align 8, !tbaa !137
  store double %i.b, ptr %i.a, align 8, !tbaa !137
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.d = load double, ptr %i.c, align 8, !tbaa !137
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  store double %i.d, ptr %i.e, align 8, !tbaa !137
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.g = load double, ptr %i.f, align 8, !tbaa !137
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  store double %i.g, ptr %i.h, align 8, !tbaa !137
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.j = load double, ptr %i.i, align 8, !tbaa !137
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 32
  store double %i.j, ptr %i.k, align 8, !tbaa !137
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 88
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.l, i8 0, i64 48, i1 false)
  tail call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %i.m) #28
  %or.cond = icmp ugt i32 %1, 65535
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i32 0, ptr %0, align 8, !tbaa !138
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

declare noundef i32 @_ZN2cv16BaseImageDecoder8setScaleERKi(ptr noundef nonnull align 8 dereferenceable(720), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #0

declare noundef i32 @_ZN2cv16BaseImageDecoder14setReadOptionsEi(ptr noundef nonnull align 8 dereferenceable(720), i32 noundef) local_unnamed_addr #0

declare void @_ZNK2cv12_OutputArray6createEiiiibNS0_9DepthMaskE(ptr noundef nonnull align 8 dereferenceable(24), i32 noundef, i32 noundef, i32 noundef, i32 noundef, i1 noundef zeroext, i32 noundef) local_unnamed_addr #0

declare i64 @_ZNK2cv11_InputArray4sizeEi(ptr noundef nonnull align 8 dereferenceable(24), i32 noundef) local_unnamed_addr #0

; Function Attrs: noreturn
declare void @_ZN2cv6detail17check_failed_autoENS_5Size_IiEES2_RKNS0_12CheckContextE(i64, i64, ptr noundef nonnull align 8 dereferenceable(48)) local_unnamed_addr #5

declare noundef i32 @_ZNK2cv11_InputArray4typeEi(ptr noundef nonnull align 8 dereferenceable(24), i32 noundef) local_unnamed_addr #0

; Function Attrs: noreturn
declare void @_ZN2cv6detail20check_failed_MatTypeEiiRKNS0_12CheckContextE(i32 noundef, i32 noundef, ptr noundef nonnull align 8 dereferenceable(48)) local_unnamed_addr #5

declare noundef zeroext i1 @_ZNK2cv11_InputArray12isContinuousEi(ptr noundef nonnull align 8 dereferenceable(24), i32 noundef) local_unnamed_addr #0

; Function Attrs: noreturn
declare void @_ZN2cv6detail17check_failed_trueEbRKNS0_12CheckContextE(i1 noundef zeroext, ptr noundef nonnull align 8 dereferenceable(48)) local_unnamed_addr #5

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN2cvL12readMetadataERNS_3PtrINS_16BaseImageDecoderEEEPSt6vectorIiSaIiEERKNS_12_OutputArrayE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef captures(address_is_null) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) unnamed_addr #2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %4 = alloca %"class.std::allocator", align 1    ; 3 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %6 = alloca %"class.std::allocator", align 1    ; 3 uses
  %7 = alloca %"class.std::vector.3", align 8     ; 12 uses
  %8 = alloca %"class.cv::Mat", align 8           ; 10 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %10 = alloca %"class.std::allocator", align 1   ; 3 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %12 = alloca %"class.std::allocator", align 1   ; 3 uses
  %13 = alloca %"class.cv::_OutputArray", align 8 ; 7 uses
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.bk, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = tail call noundef i32 @_ZNK2cv11_InputArray4kindEv(ptr noundef nonnull align 8 dereferenceable(24) %2)
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !12   ; 2 uses
  switch i32 %i.a, label %bb.i [
    i32 327680, label %bb.n
    i32 262144, label %bb.c
  ]

bb.c:                                             ; preds = %bb.b
  %i.d = tail call noundef i32 @_ZNK2cv11_InputArray4typeEi(ptr noundef nonnull align 8 dereferenceable(24) %2, i32 noundef 0)
  %or.cond = icmp ult i32 %i.d, 2
  br i1 %or.cond, label %bb.n, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #28
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull @.str.68, ptr noundef nonnull align 1 dereferenceable(1) %4)
          to label %bb.e unwind label %bb.g

bb.e:                                             ; preds = %bb.d
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull @__func__._ZN2cvL12readMetadataERNS_3PtrINS_16BaseImageDecoderEEEPSt6vectorIiSaIiEERKNS_12_OutputArrayE, ptr noundef nonnull @.str.8, i32 noundef 444) #31
          to label %bb.f unwind label %bb.h

bb.f:                                             ; preds = %bb.e
  unreachable

bb.g:                                             ; preds = %bb.d
  %i.e = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.h:                                             ; preds = %bb.e
  %i.f = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.g = load ptr, ptr %3, align 8, !tbaa !40     ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.i = icmp eq ptr %i.g, %i.h
  br i1 %i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.h
  %i.j = load i64, ptr %i.h, align 8, !tbaa !22
  %i.k = add i64 %i.j, 1
  call void @_ZdlPvm(ptr noundef %i.g, i64 noundef %i.k) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.g
  %.pn53 = phi { ptr, i32 } [ %i.e, %bb.g ], [ %i.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.f, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  br label %bb.bm

bb.i:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #28
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @.str.69, ptr noundef nonnull align 1 dereferenceable(1) %6)
          to label %bb.j unwind label %bb.l

bb.j:                                             ; preds = %bb.i
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -5, ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @__func__._ZN2cvL12readMetadataERNS_3PtrINS_16BaseImageDecoderEEEPSt6vectorIiSaIiEERKNS_12_OutputArrayE, ptr noundef nonnull @.str.8, i32 noundef 448) #31
          to label %bb.k unwind label %bb.m

bb.k:                                             ; preds = %bb.j
  unreachable

bb.l:                                             ; preds = %bb.i
  %i.l = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70

bb.m:                                             ; preds = %bb.j
  %i.m = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.n = load ptr, ptr %5, align 8, !tbaa !40     ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.p = icmp eq ptr %i.n, %i.o
  br i1 %i.p, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i68

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i68: ; preds = %bb.m
  %i.q = load i64, ptr %i.o, align 8, !tbaa !22
  %i.r = add i64 %i.q, 1
  call void @_ZdlPvm(ptr noundef %i.n, i64 noundef %i.r) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70: ; preds = %bb.m, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i68, %bb.l
  %.pn = phi { ptr, i32 } [ %i.l, %bb.l ], [ %i.m, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i68 ], [ %i.m, %bb.m ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  br label %bb.bm

bb.n:                                             ; preds = %bb.c, %bb.b
  %.036 = phi ptr [ %i.c, %bb.b ], [ null, %bb.c ] ; 5 uses
  %.0 = phi ptr [ null, %bb.b ], [ %i.c, %bb.c ]  ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #28
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, i8 0, i64 24, i1 false)
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 4 uses
  %i.v = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  br label %bb.p

bb.o:                                             ; preds = %_ZNSt6vectorIN2cv3MatESaIS1_EE9push_backERKS1_.exit
  %i.w = load ptr, ptr %i.s, align 8, !tbaa !35   ; 3 uses
  %i.x = load ptr, ptr %1, align 8, !tbaa !32     ; 3 uses
  %i.y = ptrtoint ptr %i.w to i64
  %i.z = ptrtoint ptr %i.x to i64
  %i.aa = sub i64 %i.y, %i.z
  %i.ab = ashr exact i64 %i.aa, 2                 ; 10 uses
  %.not55 = icmp eq ptr %.036, null
  br i1 %.not55, label %bb.bb, label %bb.ap

bb.p:                                             ; preds = %bb.n, %_ZNSt6vectorIN2cv3MatESaIS1_EE9push_backERKS1_.exit
  %storemerge111 = phi i32 [ 0, %bb.n ], [ %i.cj, %_ZNSt6vectorIN2cv3MatESaIS1_EE9push_backERKS1_.exit ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #28
  %i.ac = load ptr, ptr %0, align 8, !tbaa !16    ; 2 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !27
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 32
  %i.af = load ptr, ptr %i.ae, align 8
  invoke void %i.af(ptr dead_on_unwind nonnull writable sret(%"class.cv::Mat") align 8 %8, ptr noundef nonnull align 8 dereferenceable(720) %i.ac, i32 noundef %storemerge111)
          to label %bb.q unwind label %bb.t

bb.q:                                             ; preds = %bb.p
  %i.ag = invoke noundef zeroext i1 @_ZNK2cv3Mat5emptyEv(ptr noundef nonnull align 8 dereferenceable(208) %8)
          to label %bb.r unwind label %.loopexit99

bb.r:                                             ; preds = %bb.q
  br i1 %i.ag, label %_ZNSt6vectorIN2cv3MatESaIS1_EE9push_backERKS1_.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ah = load i32, ptr %8, align 8, !tbaa !179   ; 3 uses
  %i.ai = and i32 %i.ah, 16384
  %.not96 = icmp eq i32 %i.ai, 0
  br i1 %.not96, label %bb.u, label %bb.z

bb.t:                                             ; preds = %bb.p
  %i.aj = landingpad { ptr, i32 }
          cleanup
  br label %bb.ao

.loopexit99:                                      ; preds = %bb.q, %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i, %bb.al, %bb.am
  %lpad.loopexit101 = landingpad { ptr, i32 }
          cleanup
  br label %bb.an

.loopexit.split-lp100:                            ; preds = %bb.ai
  %lpad.loopexit.split-lp102 = landingpad { ptr, i32 }
          cleanup
  br label %bb.an

bb.u:                                             ; preds = %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #28
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull @.str.70, ptr noundef nonnull align 1 dereferenceable(1) %10)
          to label %bb.v unwind label %bb.x

bb.v:                                             ; preds = %bb.u
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull @__func__._ZN2cvL12readMetadataERNS_3PtrINS_16BaseImageDecoderEEEPSt6vectorIiSaIiEERKNS_12_OutputArrayE, ptr noundef nonnull @.str.8, i32 noundef 454) #31
          to label %bb.w unwind label %bb.y

bb.w:                                             ; preds = %bb.v
  unreachable

bb.x:                                             ; preds = %bb.u
  %i.ak = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit73

bb.y:                                             ; preds = %bb.v
  %i.al = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.am = load ptr, ptr %9, align 8, !tbaa !40    ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.ao = icmp eq ptr %i.am, %i.an
  br i1 %i.ao, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit73, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i71

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i71: ; preds = %bb.y
  %i.ap = load i64, ptr %i.an, align 8, !tbaa !22
  %i.aq = add i64 %i.ap, 1
  call void @_ZdlPvm(ptr noundef %i.am, i64 noundef %i.aq) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit73

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit73: ; preds = %bb.y, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i71, %bb.x
  %.pn59 = phi { ptr, i32 } [ %i.ak, %bb.x ], [ %i.al, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i71 ], [ %i.al, %bb.y ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #28
  br label %bb.an

bb.z:                                             ; preds = %bb.s
  %i.ar = lshr i32 %i.ah, 5
  %i.as = and i32 %i.ar, 127
  %i.at = add nuw nsw i32 %i.as, 1
  %i.au = shl i32 %i.ah, 2
  %i.av = and i32 %i.au, 124
  %i.aw = zext nneg i32 %i.av to i64
  %i.ax = lshr i64 1275511473185297, %i.aw
  %i.ay = trunc i64 %i.ax to i32
  %i.az = and i32 %i.ay, 15
  %i.ba = mul nuw nsw i32 %i.az, %i.at
  %i.bb = icmp eq i32 %i.ba, 1
  br i1 %i.bb, label %bb.af, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #28
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull @.str.71, ptr noundef nonnull align 1 dereferenceable(1) %12)
          to label %bb.ab unwind label %bb.ad

bb.ab:                                            ; preds = %bb.aa
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull @__func__._ZN2cvL12readMetadataERNS_3PtrINS_16BaseImageDecoderEEEPSt6vectorIiSaIiEERKNS_12_OutputArrayE, ptr noundef nonnull @.str.8, i32 noundef 455) #31
          to label %bb.ac unwind label %bb.ae

bb.ac:                                            ; preds = %bb.ab
  unreachable

bb.ad:                                            ; preds = %bb.aa
  %i.bc = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit76

bb.ae:                                            ; preds = %bb.ab
  %i.bd = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.be = load ptr, ptr %11, align 8, !tbaa !40   ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  %i.bg = icmp eq ptr %i.be, %i.bf
  br i1 %i.bg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit76, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i74

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i74: ; preds = %bb.ae
  %i.bh = load i64, ptr %i.bf, align 8, !tbaa !22
  %i.bi = add i64 %i.bh, 1
  call void @_ZdlPvm(ptr noundef %i.be, i64 noundef %i.bi) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit76

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit76: ; preds = %bb.ae, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i74, %bb.ad
  %.pn61 = phi { ptr, i32 } [ %i.bc, %bb.ad ], [ %i.bd, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i74 ], [ %i.bd, %bb.ae ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #28
  br label %bb.an

bb.af:                                            ; preds = %bb.z
  %i.bj = load ptr, ptr %i.s, align 8, !tbaa !35  ; 4 uses
  %i.bk = load ptr, ptr %i.t, align 8, !tbaa !136
  %.not.i = icmp eq ptr %i.bj, %i.bk
  br i1 %.not.i, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  store i32 %storemerge111, ptr %i.bj, align 4, !tbaa !23
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bj, i64 4
  store ptr %i.bl, ptr %i.s, align 8, !tbaa !35
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit

bb.ah:                                            ; preds = %bb.af
  %i.bm = load ptr, ptr %1, align 8, !tbaa !32    ; 4 uses
  %i.bn = ptrtoint ptr %i.bj to i64
  %i.bo = ptrtoint ptr %i.bm to i64               ; 2 uses
  %i.bp = sub i64 %i.bn, %i.bo                    ; 5 uses
  %i.bq = icmp eq i64 %i.bp, 9223372036854775804
  br i1 %i.bq, label %bb.ai, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i

bb.ai:                                            ; preds = %bb.ah
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.72) #31
          to label %.noexc unwind label %.loopexit.split-lp100

.noexc:                                           ; preds = %bb.ai
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.ah
  %i.br = ashr exact i64 %i.bp, 2                 ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.br, i64 1)
  %i.bs = add nsw i64 %.sroa.speculated.i.i.i, %i.br ; 2 uses
  %i.bt = icmp ult i64 %i.bs, %i.br
  %i.bu = call i64 @llvm.umin.i64(i64 %i.bs, i64 2305843009213693951)
  %i.bv = select i1 %i.bt, i64 2305843009213693951, i64 %i.bu ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.bv, 0
  call void @llvm.assume(i1 %.not.i.i.i)
  %i.bw = shl nuw nsw i64 %i.bv, 2
  %i.bx = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bw) #32
          to label %.noexc77 unwind label %.loopexit99 ; 4 uses

.noexc77:                                         ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i
  %i.by = getelementptr inbounds i8, ptr %i.bx, i64 %i.bp ; 2 uses
  store i32 %storemerge111, ptr %i.by, align 4, !tbaa !23
  %i.bz = icmp sgt i64 %i.bp, 0
  br i1 %i.bz, label %bb.aj, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i

bb.aj:                                            ; preds = %.noexc77
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.bx, ptr align 4 %i.bm, i64 %i.bp, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i: ; preds = %bb.aj, %.noexc77
  %i.ca = getelementptr inbounds nuw i8, ptr %i.by, i64 4
  %.not.i17.i.i = icmp eq ptr %i.bm, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i, label %bb.ak

bb.ak:                                            ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i
  %i.cb = load ptr, ptr %i.t, align 8, !tbaa !136
  %i.cc = ptrtoint ptr %i.cb to i64
  %i.cd = sub i64 %i.cc, %i.bo
  call void @_ZdlPvm(ptr noundef nonnull %i.bm, i64 noundef %i.cd) #30
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i: ; preds = %bb.ak, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i
  store ptr %i.bx, ptr %1, align 8, !tbaa !32
  store ptr %i.ca, ptr %i.s, align 8, !tbaa !35
  %i.ce = getelementptr inbounds nuw [4 x i8], ptr %i.bx, i64 %i.bv
  store ptr %i.ce, ptr %i.t, align 8, !tbaa !136
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit

_ZNSt6vectorIiSaIiEE9push_backERKi.exit:          ; preds = %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i, %bb.ag
  %i.cf = load ptr, ptr %i.u, align 8, !tbaa !105 ; 3 uses
  %i.cg = load ptr, ptr %i.v, align 8, !tbaa !106
  %.not.i78 = icmp eq ptr %i.cf, %i.cg
  br i1 %.not.i78, label %bb.am, label %bb.al

bb.al:                                            ; preds = %_ZNSt6vectorIiSaIiEE9push_backERKi.exit
  invoke void @_ZN2cv3MatC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(208) %i.cf, ptr noundef nonnull align 8 dereferenceable(208) %8)
          to label %.noexc79 unwind label %.loopexit99

.noexc79:                                         ; preds = %bb.al
  %i.ch = load ptr, ptr %i.u, align 8, !tbaa !105
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 208
  store ptr %i.ci, ptr %i.u, align 8, !tbaa !105
  br label %_ZNSt6vectorIN2cv3MatESaIS1_EE9push_backERKS1_.exit

bb.am:                                            ; preds = %_ZNSt6vectorIiSaIiEE9push_backERKi.exit
  invoke void @_ZNSt6vectorIN2cv3MatESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr %i.cf, ptr noundef nonnull align 8 dereferenceable(208) %8)
          to label %_ZNSt6vectorIN2cv3MatESaIS1_EE9push_backERKS1_.exit unwind label %.loopexit99

_ZNSt6vectorIN2cv3MatESaIS1_EE9push_backERKS1_.exit: ; preds = %.noexc79, %bb.am, %bb.r
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %8) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #28
  %i.cj = add nuw nsw i32 %storemerge111, 1       ; 2 uses
  %exitcond.not = icmp eq i32 %i.cj, 4
  br i1 %exitcond.not, label %bb.o, label %bb.p, !llvm.loop !373

bb.an:                                            ; preds = %.loopexit99, %.loopexit.split-lp100, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit76, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit73
  %.pn63 = phi { ptr, i32 } [ %.pn59, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit73 ], [ %.pn61, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit76 ], [ %lpad.loopexit101, %.loopexit99 ], [ %lpad.loopexit.split-lp102, %.loopexit.split-lp100 ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %8) #28
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.t
  %.pn63.pn = phi { ptr, i32 } [ %.pn63, %bb.an ], [ %i.aj, %bb.t ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #28
  br label %bb.bl

bb.ap:                                            ; preds = %bb.o
  %i.ck = getelementptr inbounds nuw i8, ptr %.036, i64 8 ; 3 uses
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !105 ; 3 uses
  %i.cm = load ptr, ptr %.036, align 8, !tbaa !174 ; 2 uses
  %i.cn = ptrtoint ptr %i.cl to i64
  %i.co = ptrtoint ptr %i.cm to i64
  %i.cp = sub i64 %i.cn, %i.co
  %i.cq = sdiv exact i64 %i.cp, 208               ; 3 uses
  %i.cr = icmp ugt i64 %i.ab, %i.cq
  br i1 %i.cr, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %bb.ap
  %i.cs = sub nuw nsw i64 %i.ab, %i.cq
  invoke void @_ZNSt6vectorIN2cv3MatESaIS1_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %.036, i64 noundef %i.cs)
          to label %_ZNSt6vectorIN2cv3MatESaIS1_EE6resizeEm.exit unwind label %bb.at

bb.ar:                                            ; preds = %bb.ap
  %i.ct = icmp ult i64 %i.ab, %i.cq
  br i1 %i.ct, label %bb.as, label %_ZNSt6vectorIN2cv3MatESaIS1_EE6resizeEm.exit

bb.as:                                            ; preds = %bb.ar
  %i.cu = getelementptr inbounds nuw [208 x i8], ptr %i.cm, i64 %i.ab ; 3 uses
  %.not.i.i = icmp eq ptr %i.cl, %i.cu
  br i1 %.not.i.i, label %_ZNSt6vectorIN2cv3MatESaIS1_EE6resizeEm.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.as, %.lr.ph.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.cv, %.lr.ph.i.i.i.i ], [ %i.cu, %bb.as ] ; 2 uses
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %.05.i.i.i.i) #28
  %i.cv = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 208 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.cv, %i.cl
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !175

_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exit.i.i: ; preds = %.lr.ph.i.i.i.i
  store ptr %i.cu, ptr %i.ck, align 8, !tbaa !105
  br label %_ZNSt6vectorIN2cv3MatESaIS1_EE6resizeEm.exit

_ZNSt6vectorIN2cv3MatESaIS1_EE6resizeEm.exit:     ; preds = %bb.aq, %bb.ar, %bb.as, %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exit.i.i
  %.not115 = icmp eq ptr %i.w, %i.x
  br i1 %.not115, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt6vectorIN2cv3MatESaIS1_EE6resizeEm.exit
  %i.cw = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.cx = getelementptr inbounds nuw i8, ptr %13, i64 16
  br label %bb.au

bb.at:                                            ; preds = %bb.bc, %bb.aq
  %i.cy = landingpad { ptr, i32 }
          cleanup
  br label %bb.bl

bb.au:                                            ; preds = %.lr.ph, %bb.ax
  %.038112 = phi i64 [ 0, %.lr.ph ], [ %i.di, %bb.ax ] ; 5 uses
  %i.cz = load ptr, ptr %7, align 8, !tbaa !174
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #28
  %i.da = load ptr, ptr %i.ck, align 8, !tbaa !105
  %i.db = load ptr, ptr %.036, align 8, !tbaa !174 ; 2 uses
  %i.dc = ptrtoint ptr %i.da to i64
  %i.dd = ptrtoint ptr %i.db to i64
  %i.de = sub i64 %i.dc, %i.dd
  %i.df = sdiv exact i64 %i.de, 208               ; 2 uses
  %.not.i.i82 = icmp ult i64 %.038112, %i.df
  br i1 %.not.i.i82, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %bb.au
  invoke void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.74, i64 noundef %.038112, i64 noundef %i.df) #31
          to label %.noexc83 unwind label %bb.ay

.noexc83:                                         ; preds = %bb.av
  unreachable

bb.aw:                                            ; preds = %bb.au
  %i.dg = getelementptr inbounds nuw [208 x i8], ptr %i.cz, i64 %.038112
  %i.dh = getelementptr inbounds nuw [208 x i8], ptr %i.db, i64 %.038112
  store i64 0, ptr %i.cx, align 8
  store i32 33619968, ptr %13, align 8, !tbaa !8
  store ptr %i.dh, ptr %i.cw, align 8, !tbaa !12
  invoke void @_ZNK2cv3Mat6copyToERKNS_12_OutputArrayE(ptr noundef nonnull align 8 dereferenceable(208) %i.dg, ptr noundef nonnull align 8 dereferenceable(24) %13)
          to label %bb.ax unwind label %bb.az

bb.ax:                                            ; preds = %bb.aw
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #28
  %i.di = add nuw i64 %.038112, 1                 ; 2 uses
  %exitcond127.not = icmp eq i64 %i.di, %i.ab
  br i1 %exitcond127.not, label %.loopexit, label %bb.au, !llvm.loop !374

bb.ay:                                            ; preds = %bb.av
  %i.dj = landingpad { ptr, i32 }
          cleanup
  br label %bb.ba

bb.az:                                            ; preds = %bb.aw
  %i.dk = landingpad { ptr, i32 }
          cleanup
  br label %bb.ba

bb.ba:                                            ; preds = %bb.az, %bb.ay
  %.pn56 = phi { ptr, i32 } [ %i.dk, %bb.az ], [ %i.dj, %bb.ay ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #28
  br label %bb.bl

bb.bb:                                            ; preds = %bb.o
  %i.dl = getelementptr inbounds nuw i8, ptr %.0, i64 8 ; 3 uses
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !375 ; 3 uses
  %i.dn = load ptr, ptr %.0, align 8, !tbaa !376  ; 2 uses
  %i.do = ptrtoint ptr %i.dm to i64
  %i.dp = ptrtoint ptr %i.dn to i64
  %i.dq = sub i64 %i.do, %i.dp
  %i.dr = sdiv exact i64 %i.dq, 24                ; 3 uses
  %i.ds = icmp ugt i64 %i.ab, %i.dr
  br i1 %i.ds, label %bb.bc, label %bb.bd

bb.bc:                                            ; preds = %bb.bb
  %i.dt = sub nuw nsw i64 %i.ab, %i.dr
  invoke void @_ZNSt6vectorIS_IhSaIhEESaIS1_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %.0, i64 noundef %i.dt)
          to label %_ZNSt6vectorIS_IhSaIhEESaIS1_EE6resizeEm.exit unwind label %bb.at

bb.bd:                                            ; preds = %bb.bb
  %i.du = icmp ult i64 %i.ab, %i.dr
  br i1 %i.du, label %bb.be, label %_ZNSt6vectorIS_IhSaIhEESaIS1_EE6resizeEm.exit

bb.be:                                            ; preds = %bb.bd
  %i.dv = getelementptr inbounds nuw [24 x i8], ptr %i.dn, i64 %i.ab ; 3 uses
  %.not.i.i84 = icmp eq ptr %i.dm, %i.dv
  br i1 %.not.i.i84, label %_ZNSt6vectorIS_IhSaIhEESaIS1_EE6resizeEm.exit, label %.lr.ph.i.i.i.i85

.lr.ph.i.i.i.i85:                                 ; preds = %bb.be, %_ZSt8_DestroyISt6vectorIhSaIhEEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i86 = phi ptr [ %i.ec, %_ZSt8_DestroyISt6vectorIhSaIhEEEvPT_.exit.i.i.i.i ], [ %i.dv, %bb.be ] ; 3 uses
  %i.dw = load ptr, ptr %.05.i.i.i.i86, align 8, !tbaa !310 ; 3 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.dw, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyISt6vectorIhSaIhEEEvPT_.exit.i.i.i.i, label %bb.bf

bb.bf:                                            ; preds = %.lr.ph.i.i.i.i85
  %i.dx = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i86, i64 16
  %i.dy = load ptr, ptr %i.dx, align 8, !tbaa !377
  %i.dz = ptrtoint ptr %i.dy to i64
  %i.ea = ptrtoint ptr %i.dw to i64
  %i.eb = sub i64 %i.dz, %i.ea
  call void @_ZdlPvm(ptr noundef nonnull %i.dw, i64 noundef %i.eb) #30
  br label %_ZSt8_DestroyISt6vectorIhSaIhEEEvPT_.exit.i.i.i.i

_ZSt8_DestroyISt6vectorIhSaIhEEEvPT_.exit.i.i.i.i: ; preds = %bb.bf, %.lr.ph.i.i.i.i85
  %i.ec = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i86, i64 24 ; 2 uses
  %.not.i.i.i.i87 = icmp eq ptr %i.ec, %i.dm
  br i1 %.not.i.i.i.i87, label %_ZSt8_DestroyIPSt6vectorIhSaIhEES2_EvT_S4_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i85, !llvm.loop !378

_ZSt8_DestroyIPSt6vectorIhSaIhEES2_EvT_S4_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyISt6vectorIhSaIhEEEvPT_.exit.i.i.i.i
  store ptr %i.dv, ptr %i.dl, align 8, !tbaa !375
  br label %_ZNSt6vectorIS_IhSaIhEESaIS1_EE6resizeEm.exit

_ZNSt6vectorIS_IhSaIhEESaIS1_EE6resizeEm.exit:    ; preds = %bb.bc, %bb.bd, %bb.be, %_ZSt8_DestroyIPSt6vectorIhSaIhEES2_EvT_S4_RSaIT0_E.exit.i.i
  %.not116 = icmp eq ptr %i.w, %i.x
  br i1 %.not116, label %.loopexit, label %.lr.ph114

.lr.ph114:                                        ; preds = %_ZNSt6vectorIS_IhSaIhEESaIS1_EE6resizeEm.exit, %_ZNSt6vectorIhSaIhEE6assignIPKhvEEvT_S5_.exit
  %.037113 = phi i64 [ %i.eq, %_ZNSt6vectorIhSaIhEE6assignIPKhvEEvT_S5_.exit ], [ 0, %_ZNSt6vectorIS_IhSaIhEESaIS1_EE6resizeEm.exit ] ; 5 uses
  %i.ed = load ptr, ptr %7, align 8, !tbaa !174
  %i.ee = getelementptr inbounds nuw [208 x i8], ptr %i.ed, i64 %.037113 ; 2 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 24
  %i.eg = load ptr, ptr %i.ef, align 8, !tbaa !49 ; 2 uses
  %i.eh = load ptr, ptr %i.dl, align 8, !tbaa !375
  %i.ei = load ptr, ptr %.0, align 8, !tbaa !376  ; 2 uses
  %i.ej = ptrtoint ptr %i.eh to i64
  %i.ek = ptrtoint ptr %i.ei to i64
  %i.el = sub i64 %i.ej, %i.ek
  %i.em = sdiv exact i64 %i.el, 24                ; 2 uses
  %.not.i.i89 = icmp ult i64 %.037113, %i.em
  br i1 %.not.i.i89, label %bb.bh, label %bb.bg

bb.bg:                                            ; preds = %.lr.ph114
  invoke void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.74, i64 noundef %.037113, i64 noundef %i.em) #31
          to label %.noexc90 unwind label %.loopexit.split-lp

.noexc90:                                         ; preds = %bb.bg
  unreachable

bb.bh:                                            ; preds = %.lr.ph114
  %i.en = invoke noundef i64 @_ZNK2cv3Mat5totalEv(ptr noundef nonnull align 8 dereferenceable(208) %i.ee)
          to label %bb.bi unwind label %.loopexit97

bb.bi:                                            ; preds = %bb.bh
  %i.eo = getelementptr inbounds nuw [24 x i8], ptr %i.ei, i64 %.037113
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eg, i64 %i.en
  invoke void @_ZNSt6vectorIhSaIhEE13_M_assign_auxIPKhEEvT_S5_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %i.eo, ptr noundef %i.eg, ptr noundef %i.ep)
          to label %_ZNSt6vectorIhSaIhEE6assignIPKhvEEvT_S5_.exit unwind label %.loopexit97

_ZNSt6vectorIhSaIhEE6assignIPKhvEEvT_S5_.exit:    ; preds = %bb.bi
  %i.eq = add nuw i64 %.037113, 1                 ; 2 uses
  %exitcond129.not = icmp eq i64 %i.eq, %i.ab
  br i1 %exitcond129.not, label %.loopexit, label %.lr.ph114, !llvm.loop !379

.loopexit97:                                      ; preds = %bb.bh, %bb.bi
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.bl

.loopexit.split-lp:                               ; preds = %bb.bg
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.bl

.loopexit:                                        ; preds = %bb.ax, %_ZNSt6vectorIhSaIhEE6assignIPKhvEEvT_S5_.exit, %_ZNSt6vectorIN2cv3MatESaIS1_EE6resizeEm.exit, %_ZNSt6vectorIS_IhSaIhEESaIS1_EE6resizeEm.exit
  %i.er = load ptr, ptr %7, align 8, !tbaa !174   ; 3 uses
  %i.es = load ptr, ptr %i.u, align 8, !tbaa !105 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.er, %i.es
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.loopexit, %.lr.ph.i.i.i
  %.05.i.i.i = phi ptr [ %i.et, %.lr.ph.i.i.i ], [ %i.er, %.loopexit ] ; 2 uses
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %.05.i.i.i) #28
  %i.et = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 208 ; 2 uses
  %.not.i.i.i92 = icmp eq ptr %i.et, %i.es
  br i1 %.not.i.i.i92, label %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !175

_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i: ; preds = %.lr.ph.i.i.i
  %.pr.i = load ptr, ptr %7, align 8, !tbaa !174
  br label %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exit.i

_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i, %.loopexit
  %i.eu = phi ptr [ %.pr.i, %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i ], [ %i.er, %.loopexit ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.eu, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIN2cv3MatESaIS1_EED2Ev.exit, label %bb.bj

bb.bj:                                            ; preds = %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exit.i
  %i.ev = load ptr, ptr %i.v, align 8, !tbaa !106
  %i.ew = ptrtoint ptr %i.ev to i64
  %i.ex = ptrtoint ptr %i.eu to i64
  %i.ey = sub i64 %i.ew, %i.ex
  call void @_ZdlPvm(ptr noundef nonnull %i.eu, i64 noundef %i.ey) #30
  br label %_ZNSt6vectorIN2cv3MatESaIS1_EED2Ev.exit

_ZNSt6vectorIN2cv3MatESaIS1_EED2Ev.exit:          ; preds = %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exit.i, %bb.bj
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #28
  br label %bb.bk

bb.bk:                                            ; preds = %bb.a, %_ZNSt6vectorIN2cv3MatESaIS1_EED2Ev.exit
  ret void

bb.bl:                                            ; preds = %.loopexit97, %.loopexit.split-lp, %bb.at, %bb.ba, %bb.ao
  %.pn63.pn.pn = phi { ptr, i32 } [ %.pn63.pn, %bb.ao ], [ %.pn56, %bb.ba ], [ %i.cy, %bb.at ], [ %lpad.loopexit, %.loopexit97 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @_ZNSt6vectorIN2cv3MatESaIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %7) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #28
  br label %bb.bm

bb.bm:                                            ; preds = %bb.bl, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn63.pn.pn.pn = phi { ptr, i32 } [ %.pn63.pn.pn, %bb.bl ], [ %.pn53, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70 ]
  resume { ptr, i32 } %.pn63.pn.pn.pn
}

declare void @_ZNK2cv12_OutputArray7releaseEv(ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #0

declare void @_ZN2cv6resizeERKNS_11_InputArrayERKNS_12_OutputArrayENS_5Size_IiEEddi(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24), i64, double noundef, double noundef, i32 noundef) local_unnamed_addr #0

declare noundef i32 @_ZNK2cv11_InputArray4kindEv(ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #0

declare void @_ZNK2cv3Mat6copyToERKNS_12_OutputArrayE(ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #0

declare noundef i64 @_ZNK2cv3Mat5totalEv(ptr noundef nonnull align 8 dereferenceable(208)) local_unnamed_addr #0

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIS_IhSaIhEESaIS1_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !375  ; 5 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !376    ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = sdiv exact i64 %i.f, 24                  ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !380
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = sub i64 %i.j, %i.d
  %i.l = sdiv exact i64 %i.k, 24                  ; 2 uses
  %i.m = icmp ult i64 %i.g, 384307168202282326
  tail call void @llvm.assume(i1 %i.m)
  %i.n = sub nuw nsw i64 384307168202282325, %i.g ; 2 uses
  %i.o = icmp ule i64 %i.l, %i.n
  tail call void @llvm.assume(i1 %i.o)
  %.not28 = icmp ult i64 %i.l, %1
  br i1 %.not28, label %bb.c, label %_ZSt27__uninitialized_default_n_aIPSt6vectorIhSaIhEEmS2_ET_S4_T0_RSaIT1_E.exit

_ZSt27__uninitialized_default_n_aIPSt6vectorIhSaIhEEmS2_ET_S4_T0_RSaIT1_E.exit: ; preds = %bb.b
  %i.p = mul nuw nsw i64 %1, 24                   ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.b, i8 0, i64 %i.p, i1 false)
  %scevgep.i.i.i = getelementptr i8, ptr %i.b, i64 %i.p
  store ptr %scevgep.i.i.i, ptr %i.a, align 8, !tbaa !375
  br label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.q = icmp ult i64 %i.n, %1
  br i1 %i.q, label %bb.d, label %_ZNKSt6vectorIS_IhSaIhEESaIS1_EE12_M_check_lenEmPKc.exit

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.73) #31
  unreachable

_ZNKSt6vectorIS_IhSaIhEESaIS1_EE12_M_check_lenEmPKc.exit: ; preds = %bb.c
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.g, i64 %1)
  %i.r = add nuw nsw i64 %.sroa.speculated.i, %i.g
  %i.s = tail call i64 @llvm.umin.i64(i64 %i.r, i64 384307168202282325) ; 2 uses
  %i.t = mul nuw nsw i64 %i.s, 24
  %i.u = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.t) #32 ; 4 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.f ; 2 uses
  %i.w = mul nuw nsw i64 %1, 24
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.v, i8 0, i64 %i.w, i1 false)
  %.not10.i.i.i = icmp eq ptr %i.c, %i.b
  br i1 %.not10.i.i.i, label %_ZNSt6vectorIS_IhSaIhEESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNKSt6vectorIS_IhSaIhEESaIS1_EE12_M_check_lenEmPKc.exit, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.ac, %.lr.ph.i.i.i ], [ %i.u, %_ZNKSt6vectorIS_IhSaIhEESaIS1_EE12_M_check_lenEmPKc.exit ] ; 3 uses
  %.0911.i.i.i = phi ptr [ %i.ab, %.lr.ph.i.i.i ], [ %i.c, %_ZNKSt6vectorIS_IhSaIhEESaIS1_EE12_M_check_lenEmPKc.exit ] ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !381)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !384)
  %i.x = load <2 x ptr>, ptr %.0911.i.i.i, align 8, !tbaa !386, !alias.scope !384, !noalias !381
  store <2 x ptr> %i.x, ptr %.012.i.i.i, align 8, !tbaa !386, !alias.scope !381, !noalias !384
  %i.y = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 16
  %i.z = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !377, !alias.scope !384, !noalias !381
  store ptr %i.aa, ptr %i.y, align 8, !tbaa !377, !alias.scope !381, !noalias !384
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.0911.i.i.i, i8 0, i64 24, i1 false), !alias.scope !384, !noalias !381
  %i.ab = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 24 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 24
  %.not.i.i.i = icmp eq ptr %i.ab, %i.b
  br i1 %.not.i.i.i, label %_ZNSt6vectorIS_IhSaIhEESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit, label %.lr.ph.i.i.i, !llvm.loop !387

_ZNSt6vectorIS_IhSaIhEESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit: ; preds = %.lr.ph.i.i.i, %_ZNKSt6vectorIS_IhSaIhEESaIS1_EE12_M_check_lenEmPKc.exit
  %.not.i36 = icmp eq ptr %i.c, null
  br i1 %.not.i36, label %_ZNSt12_Vector_baseISt6vectorIhSaIhEESaIS2_EE13_M_deallocateEPS2_m.exit37, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorIS_IhSaIhEESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit
  %i.ad = load ptr, ptr %i.h, align 8, !tbaa !380
  %i.ae = ptrtoint ptr %i.ad to i64
  %i.af = sub i64 %i.ae, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.af) #30
  br label %_ZNSt12_Vector_baseISt6vectorIhSaIhEESaIS2_EE13_M_deallocateEPS2_m.exit37

_ZNSt12_Vector_baseISt6vectorIhSaIhEESaIS2_EE13_M_deallocateEPS2_m.exit37: ; preds = %_ZNSt6vectorIS_IhSaIhEESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit, %bb.e
  store ptr %i.u, ptr %0, align 8, !tbaa !376
  %i.ag = getelementptr inbounds nuw [24 x i8], ptr %i.v, i64 %1
  store ptr %i.ag, ptr %i.a, align 8, !tbaa !375
  %i.ah = getelementptr inbounds nuw [24 x i8], ptr %i.u, i64 %i.s
  store ptr %i.ah, ptr %i.h, align 8, !tbaa !380
  br label %bb.f

bb.f:                                             ; preds = %_ZSt27__uninitialized_default_n_aIPSt6vectorIhSaIhEEmS2_ET_S4_T0_RSaIT1_E.exit, %_ZNSt12_Vector_baseISt6vectorIhSaIhEESaIS2_EE13_M_deallocateEPS2_m.exit37, %bb.a
  ret void
}

declare void @__cxa_rethrow() local_unnamed_addr

; Function Attrs: noreturn
end_hunk_4
