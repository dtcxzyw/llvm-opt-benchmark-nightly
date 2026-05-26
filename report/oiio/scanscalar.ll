inline.NumInlined: 329
inline.NumDeleted: 141
begin_hunk_0_@_ZN4YAML10ScanScalarB5cxx11ERNS_6StreamERNS_16ScanScalarParamsE:bb.a
  br i1 %i.gg, label %bb.di, label %.critedge6

bb.di:                                            ; preds = %bb.dh
  %i.gh = load i32, ptr %i.p, align 8, !tbaa !29
  %i.gi = load i32, ptr %i.z, align 4, !tbaa !53
  %i.gj = icmp slt i32 %i.gh, %i.gi
  br i1 %i.gj, label %bb.dk, label %bb.dj

bb.dj:                                            ; preds = %bb.di
  %i.gk = load i8, ptr %i.aa, align 8, !tbaa !54, !range !51, !noundef !52
  %i.gl = trunc nuw i8 %i.gk to i1
  %.not = xor i1 %i.gl, true
  %or.cond4 = select i1 %.not, i1 true, i1 %i.ge
  br i1 %or.cond4, label %.critedge6, label %bb.dk

bb.dk:                                            ; preds = %bb.dj, %bb.di
  %i.gm = load ptr, ptr %2, align 8, !tbaa !23
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #15
  store i64 0, ptr %7, align 8, !tbaa !25
  store ptr %1, ptr %i.ab, align 8, !tbaa !28
  %i.gn = invoke noundef i32 @_ZNK4YAML5RegEx5MatchINS_16StreamCharSourceEEEiRKT_(ptr noundef nonnull align 8 dereferenceable(32) %i.gm, ptr noundef nonnull align 8 dereferenceable(16) %7)
          to label %bb.dl unwind label %.loopexit.split-lp.loopexit

bb.dl:                                            ; preds = %bb.dk
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #15
  %i.go = icmp sgt i32 %i.gn, -1
  br i1 %i.go, label %.critedge6, label %bb.dm

bb.dm:                                            ; preds = %bb.dl
  invoke void @_ZN4YAML6Stream3eatEi(ptr noundef nonnull align 8 dereferenceable(128) %1, i32 noundef 1)
          to label %bb.dg unwind label %.loopexit.split-lp.loopexit, !llvm.loop !55

.critedge6:                                       ; preds = %bb.dj, %bb.dh, %bb.dl
  %i.gp = load i8, ptr %i.aa, align 8, !tbaa !54, !range !51, !noundef !52
  %i.gq = trunc nuw i8 %i.gp to i1
  %.not7 = xor i1 %i.gq, true
  %or.cond9 = select i1 %.not7, i1 true, i1 %i.ge
  br i1 %or.cond9, label %.preheader937, label %bb.dn

bb.dn:                                            ; preds = %.critedge6
  %i.gr = load i32, ptr %i.p, align 8, !tbaa !29
  %i.gs = load i32, ptr %i.z, align 4, !tbaa !3
  %.sroa.speculated = call i32 @llvm.smax.i32(i32 %i.gs, i32 %i.gr)
  store i32 %.sroa.speculated, ptr %i.z, align 4, !tbaa !53
  br label %.preheader937

.preheader937:                                    ; preds = %bb.dn, %.critedge6
  br label %bb.do

bb.do:                                            ; preds = %.preheader937, %bb.eh
  %i.gt = load atomic i8, ptr @_ZGVZN4YAML3Exp5BlankEvE1e acquire, align 8
  %i.gu = icmp eq i8 %i.gt, 0
  br i1 %i.gu, label %bb.dp, label %_ZN4YAML3Exp5BlankEv.exit, !prof !24

bb.dp:                                            ; preds = %bb.do
  %i.gv = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4YAML3Exp5BlankEvE1e) #15
  %.not.i292 = icmp eq i32 %i.gv, 0
  br i1 %.not.i292, label %_ZN4YAML3Exp5BlankEv.exit, label %bb.dq

bb.dq:                                            ; preds = %bb.dp
  %i.gw = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZN4YAML3Exp5SpaceEv()
          to label %bb.dr unwind label %bb.du

bb.dr:                                            ; preds = %bb.dq
  %i.gx = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZN4YAML3Exp3TabEv()
          to label %bb.ds unwind label %bb.du

bb.ds:                                            ; preds = %bb.dr
  invoke void @_ZN4YAMLorERKNS_5RegExES2_(ptr dead_on_unwind nonnull writable sret(%"class.YAML::RegEx") align 8 @_ZZN4YAML3Exp5BlankEvE1e, ptr noundef nonnull align 8 dereferenceable(32) %i.gw, ptr noundef nonnull align 8 dereferenceable(32) %i.gx)
          to label %bb.dt unwind label %bb.du

bb.dt:                                            ; preds = %bb.ds
  %i.gy = call i32 @__cxa_atexit(ptr nonnull @_ZN4YAML5RegExD2Ev, ptr nonnull @_ZZN4YAML3Exp5BlankEvE1e, ptr nonnull @__dso_handle) #15 ; 0 uses
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN4YAML3Exp5BlankEvE1e) #15
  br label %_ZN4YAML3Exp5BlankEv.exit

bb.du:                                            ; preds = %bb.ds, %bb.dr, %bb.dq
  %i.gz = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_guard_abort(ptr nonnull @_ZGVZN4YAML3Exp5BlankEvE1e) #15
  br label %.body

_ZN4YAML3Exp5BlankEv.exit:                        ; preds = %bb.dt, %bb.dp, %bb.do
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #15
  store i64 0, ptr %6, align 8, !tbaa !25
  store ptr %1, ptr %i.ac, align 8, !tbaa !28
  %i.ha = invoke noundef i32 @_ZNK4YAML5RegEx5MatchINS_16StreamCharSourceEEEiRKT_(ptr noundef nonnull align 8 dereferenceable(32) @_ZZN4YAML3Exp5BlankEvE1e, ptr noundef nonnull align 8 dereferenceable(16) %6)
          to label %bb.dv unwind label %.loopexit

bb.dv:                                            ; preds = %_ZN4YAML3Exp5BlankEv.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #15
  %i.hb = icmp sgt i32 %i.ha, -1
  br i1 %i.hb, label %bb.dw, label %bb.ei

bb.dw:                                            ; preds = %bb.dv
  %i.hc = invoke noundef signext i8 @_ZNK4YAML6Stream4peekEv(ptr noundef nonnull align 8 dereferenceable(128) %1)
          to label %bb.dx unwind label %.loopexit

bb.dx:                                            ; preds = %bb.dw
  %i.hd = icmp eq i8 %i.hc, 9
  br i1 %i.hd, label %bb.dy, label %bb.ee

bb.dy:                                            ; preds = %bb.dx
  %i.he = load i32, ptr %i.p, align 8, !tbaa !29
  %i.hf = load i32, ptr %i.z, align 4, !tbaa !53
  %i.hg = icmp slt i32 %i.he, %i.hf
  %i.hh = load i32, ptr %i.ad, align 4
  %i.hi = icmp eq i32 %i.hh, 2
  %or.cond = select i1 %i.hg, i1 %i.hi, i1 false
  br i1 %or.cond, label %bb.dz, label %bb.ee

bb.dz:                                            ; preds = %bb.dy
  %i.hj = call ptr @__cxa_allocate_exception(i64 64) #15 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #15
  %i.hk = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.01.0.copyload.i297 = load i64, ptr %i.hk, align 8
  %.sroa.22.0.copyload.i299 = load i32, ptr %i.p, align 8, !tbaa !3
  store i64 %.sroa.01.0.copyload.i297, ptr %23, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %23, i64 8
  store i32 %.sroa.22.0.copyload.i299, ptr %.sroa.2.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #15
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %24, ptr noundef nonnull @.str.2, ptr noundef nonnull align 1 dereferenceable(1) %25)
          to label %bb.ea unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit306.thread

bb.ea:                                            ; preds = %bb.dz
  invoke void @_ZN4YAML9ExceptionC2ERKNS_4MarkERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(64) %i.hj, ptr noundef nonnull align 4 dereferenceable(12) %23, ptr noundef nonnull align 8 dereferenceable(32) %24)
          to label %bb.eb unwind label %bb.ec

bb.eb:                                            ; preds = %bb.ea
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4YAML15ParserExceptionE, i64 16), ptr %i.hj, align 8, !tbaa !44
  invoke void @__cxa_throw(ptr nonnull %i.hj, ptr nonnull @_ZTIN4YAML15ParserExceptionE, ptr nonnull @_ZN4YAML15ParserExceptionD1Ev) #16
          to label %bb.fs unwind label %bb.ec

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit306.thread: ; preds = %bb.dz
  %i.hl = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #15
  br label %bb.ed

bb.ec:                                            ; preds = %bb.ea, %bb.eb
  %.0170 = phi i1 [ false, %bb.eb ], [ true, %bb.ea ] ; 2 uses
  %i.hm = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.hn = load ptr, ptr %24, align 8, !tbaa !43   ; 2 uses
  %i.ho = getelementptr inbounds nuw i8, ptr %24, i64 16
  %i.hp = icmp eq ptr %i.hn, %i.ho
  br i1 %i.hp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit306, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i304

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i304: ; preds = %bb.ec
  call void @_ZdlPv(ptr noundef %i.hn) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #15
  br i1 %.0170, label %bb.ed, label %.body

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit306: ; preds = %bb.ec
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #15
  br i1 %.0170, label %bb.ed, label %.body

bb.ed:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i304, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit306.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit306
  %.pn233368 = phi { ptr, i32 } [ %i.hl, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit306.thread ], [ %i.hm, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit306 ], [ %i.hm, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i304 ]
  call void @__cxa_free_exception(ptr %i.hj) #15
  br label %.body

bb.ee:                                            ; preds = %bb.dy, %bb.dx
  %i.hq = load i8, ptr %i.ae, align 1, !tbaa !56, !range !51, !noundef !52
  %i.hr = trunc nuw i8 %i.hq to i1
  br i1 %i.hr, label %bb.ef, label %bb.ei

bb.ef:                                            ; preds = %bb.ee
  %i.hs = load ptr, ptr %2, align 8, !tbaa !23
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #15
  store i64 0, ptr %5, align 8, !tbaa !25
  store ptr %1, ptr %i.af, align 8, !tbaa !28
  %i.ht = invoke noundef i32 @_ZNK4YAML5RegEx5MatchINS_16StreamCharSourceEEEiRKT_(ptr noundef nonnull align 8 dereferenceable(32) %i.hs, ptr noundef nonnull align 8 dereferenceable(16) %5)
          to label %bb.eg unwind label %.loopexit

bb.eg:                                            ; preds = %bb.ef
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #15
  %i.hu = icmp sgt i32 %i.ht, -1
  br i1 %i.hu, label %bb.ei, label %bb.eh

bb.eh:                                            ; preds = %bb.eg
  invoke void @_ZN4YAML6Stream3eatEi(ptr noundef nonnull align 8 dereferenceable(128) %1, i32 noundef 1)
          to label %bb.do unwind label %.loopexit, !llvm.loop !57

bb.ei:                                            ; preds = %bb.eg, %bb.ee, %bb.dv
  %i.hv = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZN4YAML3Exp5BreakEv()
          to label %bb.ej unwind label %bb.es

bb.ej:                                            ; preds = %bb.ei
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #15
  store i64 0, ptr %4, align 8, !tbaa !25
  store ptr %1, ptr %i.ag, align 8, !tbaa !28
  %i.hw = invoke noundef i32 @_ZNK4YAML5RegEx5MatchINS_16StreamCharSourceEEEiRKT_(ptr noundef nonnull align 8 dereferenceable(32) %i.hv, ptr noundef nonnull align 8 dereferenceable(16) %4)
          to label %bb.ek unwind label %bb.es     ; 2 uses

bb.ek:                                            ; preds = %bb.ej
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #15
  %i.hx = icmp sgt i32 %i.hw, -1                  ; 7 uses
  %i.hy = load atomic i8, ptr @_ZGVZN4YAML3Exp5BlankEvE1e acquire, align 8
  %i.hz = icmp eq i8 %i.hy, 0
  br i1 %i.hz, label %bb.el, label %_ZN4YAML3Exp5BlankEv.exit314, !prof !24

bb.el:                                            ; preds = %bb.ek
  %i.ia = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4YAML3Exp5BlankEvE1e) #15
  %.not.i311 = icmp eq i32 %i.ia, 0
  br i1 %.not.i311, label %_ZN4YAML3Exp5BlankEv.exit314, label %bb.em

bb.em:                                            ; preds = %bb.el
  %i.ib = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZN4YAML3Exp5SpaceEv()
          to label %bb.en unwind label %bb.eq

bb.en:                                            ; preds = %bb.em
  %i.ic = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZN4YAML3Exp3TabEv()
          to label %bb.eo unwind label %bb.eq

bb.eo:                                            ; preds = %bb.en
  invoke void @_ZN4YAMLorERKNS_5RegExES2_(ptr dead_on_unwind nonnull writable sret(%"class.YAML::RegEx") align 8 @_ZZN4YAML3Exp5BlankEvE1e, ptr noundef nonnull align 8 dereferenceable(32) %i.ib, ptr noundef nonnull align 8 dereferenceable(32) %i.ic)
          to label %bb.ep unwind label %bb.eq

bb.ep:                                            ; preds = %bb.eo
  %i.id = call i32 @__cxa_atexit(ptr nonnull @_ZN4YAML5RegExD2Ev, ptr nonnull @_ZZN4YAML3Exp5BlankEvE1e, ptr nonnull @__dso_handle) #15 ; 0 uses
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN4YAML3Exp5BlankEvE1e) #15
  br label %_ZN4YAML3Exp5BlankEv.exit314

bb.eq:                                            ; preds = %bb.eo, %bb.en, %bb.em
  %i.ie = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_guard_abort(ptr nonnull @_ZGVZN4YAML3Exp5BlankEvE1e) #15
  br label %.body

_ZN4YAML3Exp5BlankEv.exit314:                     ; preds = %bb.ep, %bb.el, %bb.ek
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #15
  store i64 0, ptr %3, align 8, !tbaa !25
  store ptr %1, ptr %i.ah, align 8, !tbaa !28
  %i.if = invoke noundef i32 @_ZNK4YAML5RegEx5MatchINS_16StreamCharSourceEEEiRKT_(ptr noundef nonnull align 8 dereferenceable(32) @_ZZN4YAML3Exp5BlankEvE1e, ptr noundef nonnull align 8 dereferenceable(16) %3)
          to label %bb.er unwind label %.loopexit402.loopexit ; 2 uses

bb.er:                                            ; preds = %_ZN4YAML3Exp5BlankEv.exit314
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #15
  %i.ig = icmp sgt i32 %i.if, -1                  ; 3 uses
  %i.ih = load i32, ptr %i.a, align 4, !tbaa !7   ; 2 uses
  %i.ii = icmp eq i32 %i.ih, 1
  %or.cond11 = select i1 %i.ii, i1 %i.ak, i1 false
  %or.cond13 = and i1 %i.hx, %or.cond11
  %spec.select = select i1 %or.cond13, i8 %.0175, i8 %.0188 ; 3 uses
  br i1 %.2169, label %bb.et, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit

bb.es:                                            ; preds = %bb.ej, %bb.ei
  %i.ij = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit402.loopexit:                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i342, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i, %_ZN4YAML3Exp5BlankEv.exit314
  %lpad.loopexit941 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit402.loopexit.split-lp:                   ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i346, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i335, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i319.invoke
  %lpad.loopexit.split-lp942 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp403:                            ; preds = %.invoke
  %lpad.loopexit.split-lp405 = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.et:                                            ; preds = %bb.er
  switch i32 %i.ih, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit [
    i32 0, label %bb.eu
    i32 1, label %bb.ev
    i32 2, label %bb.fe
  ]

bb.eu:                                            ; preds = %bb.et
  %i.ik = load i64, ptr %i.e, align 8, !tbaa !18
  %i.il = icmp eq i64 %i.ik, 4611686018427387903
  br i1 %i.il, label %.invoke, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i

.invoke:                                          ; preds = %bb.fh, %bb.fb, %.thread, %bb.ex, %bb.ff, %bb.eu
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.15) #16
          to label %.cont unwind label %.loopexit.split-lp403

.cont:                                            ; preds = %.invoke
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i: ; preds = %bb.eu
  %i.im = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull @.str.3, i64 noundef 1)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit unwind label %.loopexit402.loopexit ; 0 uses

bb.ev:                                            ; preds = %bb.et
  %27 = and i32 %i.if, %i.hw
  %28 = icmp sgt i32 %27, -1
  %i.in = or i1 %.0175.shrunk, %28
  %or.cond19 = or i1 %i.in, %.0172.shrunk
  br i1 %or.cond19, label %bb.ey, label %bb.ew

bb.ew:                                            ; preds = %bb.ev
  %i.io = load i32, ptr %i.p, align 8, !tbaa !29
  %i.ip = load i32, ptr %i.z, align 4, !tbaa !53
  %.not226 = icmp slt i32 %i.io, %i.ip
  br i1 %.not226, label %.thread, label %bb.ex

bb.ex:                                            ; preds = %bb.ew
  %i.iq = load i64, ptr %i.e, align 8, !tbaa !18
  %i.ir = icmp eq i64 %i.iq, 4611686018427387903
  br i1 %i.ir, label %.invoke, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i319.invoke

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i319.invoke: ; preds = %.thread, %bb.ex
  %i.is = phi ptr [ @.str.4, %bb.ex ], [ @.str.3, %.thread ]
  %i.it = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %i.is, i64 noundef 1)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit322 unwind label %.loopexit402.loopexit.split-lp ; 0 uses

bb.ey:                                            ; preds = %bb.ev
  br i1 %i.hx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit322.thread, label %.thread

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit322.thread: ; preds = %bb.ey
  %i.iu = add nsw i32 %.0183.ph, 1
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit.thread375.outer.backedge

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit.thread375.outer.backedge: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit322.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit.thread
  %.0183.ph.be = phi i32 [ %.2185372, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit.thread ], [ %i.iu, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit322.thread ]
  %.0172.shrunk.ph.be = phi i1 [ %i.jx, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit.thread ], [ true, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit322.thread ]
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit.thread375.outer

.thread:                                          ; preds = %bb.ew, %bb.ey
  %i.iv = load i64, ptr %i.e, align 8, !tbaa !18
  %i.iw = icmp eq i64 %i.iv, 4611686018427387903
  br i1 %i.iw, label %.invoke, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i319.invoke

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit322: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i319.invoke
  %i.ix = icmp slt i32 %.0183.ph, 1
  br i1 %i.ix, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit.thread, label %bb.ez

bb.ez:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit322
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #15
  %i.iy = add nsw i32 %.0183.ph, -1
  %i.iz = zext nneg i32 %i.iy to i64
  store ptr %i.ai, ptr %26, align 8, !tbaa !15
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructEmc(ptr noundef nonnull align 8 dereferenceable(32) %26, i64 noundef %i.iz, i8 noundef signext 10)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EmcRKS3_.exit unwind label %bb.fc

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EmcRKS3_.exit: ; preds = %bb.ez
  %i.ja = load i64, ptr %i.aj, align 8, !tbaa !18 ; 2 uses
  %i.jb = load i64, ptr %i.e, align 8, !tbaa !18
  %i.jc = sub i64 4611686018427387903, %i.jb
  %i.jd = icmp ult i64 %i.jc, %i.ja
  br i1 %i.jd, label %bb.fa, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i328

bb.fa:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EmcRKS3_.exit
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.15) #16
          to label %.noexc329 unwind label %.loopexit.split-lp408

.noexc329:                                        ; preds = %bb.fa
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i328: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EmcRKS3_.exit
  %i.je = load ptr, ptr %26, align 8, !tbaa !43
  %i.jf = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.je, i64 noundef %i.ja)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit331 unwind label %.loopexit407 ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit331: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i328
  %i.jg = load ptr, ptr %26, align 8, !tbaa !43   ; 2 uses
  %i.jh = icmp eq ptr %i.jg, %i.ai
  br i1 %i.jh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit334, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i332

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i332: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit331
  call void @_ZdlPv(ptr noundef %i.jg) #17
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit334

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit334: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit331, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i332
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #15
  %i.ji = trunc nuw i8 %spec.select to i1
  %i.jj = xor i1 %i.ge, true
  %i.jk = or i1 %i.ig, %i.jj
  %or.cond247 = select i1 %i.ji, i1 true, i1 %i.jk
  br i1 %or.cond247, label %bb.fb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit.thread

bb.fb:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit334
  %i.jl = load i64, ptr %i.e, align 8, !tbaa !18
  %i.jm = icmp eq i64 %i.jl, 4611686018427387903
  br i1 %i.jm, label %.invoke, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i335

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i335: ; preds = %bb.fb
  %i.jn = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull @.str.3, i64 noundef 1)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit.thread unwind label %.loopexit402.loopexit.split-lp ; 0 uses

bb.fc:                                            ; preds = %bb.ez
  %i.jo = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit341

.loopexit407:                                     ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i328
  %lpad.loopexit409 = landingpad { ptr, i32 }
          cleanup
  br label %bb.fd

.loopexit.split-lp408:                            ; preds = %bb.fa
  %lpad.loopexit.split-lp410 = landingpad { ptr, i32 }
          cleanup
  br label %bb.fd

bb.fd:                                            ; preds = %.loopexit.split-lp408, %.loopexit407
  %lpad.phi411 = phi { ptr, i32 } [ %lpad.loopexit409, %.loopexit407 ], [ %lpad.loopexit.split-lp410, %.loopexit.split-lp408 ] ; 2 uses
  %i.jp = load ptr, ptr %26, align 8, !tbaa !43   ; 2 uses
  %i.jq = icmp eq ptr %i.jp, %i.ai
  br i1 %i.jq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit341, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i339

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i339: ; preds = %bb.fd
  call void @_ZdlPv(ptr noundef %i.jp) #17
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit341

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit341: ; preds = %bb.fd, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i339, %bb.fc
  %.pn228 = phi { ptr, i32 } [ %i.jo, %bb.fc ], [ %lpad.phi411, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i339 ], [ %lpad.phi411, %bb.fd ]
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #15
  br label %.body

bb.fe:                                            ; preds = %bb.et
  br i1 %i.hx, label %bb.ff, label %bb.fg

bb.ff:                                            ; preds = %bb.fe
  %i.jr = load i64, ptr %i.e, align 8, !tbaa !18
  %i.js = icmp eq i64 %i.jr, 4611686018427387903
  br i1 %i.js, label %.invoke, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i342

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i342: ; preds = %bb.ff
  %i.jt = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull @.str.3, i64 noundef 1)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit.thread375.backedge unwind label %.loopexit402.loopexit ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit.thread375.backedge: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i342, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit.thread375

bb.fg:                                            ; preds = %bb.fe
  br i1 %.0203, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit.thread, label %bb.fh

bb.fh:                                            ; preds = %bb.fg
  %i.ju = load i64, ptr %i.e, align 8, !tbaa !18
  %i.jv = icmp eq i64 %i.ju, 4611686018427387903
  br i1 %i.jv, label %.invoke, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i346

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i346: ; preds = %bb.fh
  %i.jw = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull @.str.4, i64 noundef 1)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit.thread unwind label %.loopexit402.loopexit.split-lp ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i, %bb.et, %bb.er
  br i1 %i.hx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit.thread375.backedge, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit.thread

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit.thread: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit, %bb.fg, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit322, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit334, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i335, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i346
  %i.jx = phi i1 [ %i.hx, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit322 ], [ false, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i346 ], [ %i.hx, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit334 ], [ false, %bb.fg ], [ %i.hx, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i335 ], [ false, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit ]
  %.2185372 = phi i32 [ %.0183.ph, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit322 ], [ %.0183.ph, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i346 ], [ 0, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit334 ], [ %.0183.ph, %bb.fg ], [ 0, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i335 ], [ %.0183.ph, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit ]
  %i.jy = load i32, ptr %i.p, align 8, !tbaa !29
  %i.jz = load i32, ptr %i.z, align 4, !tbaa !53
  %i.ka = icmp slt i32 %i.jy, %i.jz
  br i1 %i.ka, label %bb.fi, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit.thread375.outer.backedge

bb.fi:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit.thread
  store i8 1, ptr %i.f, align 8, !tbaa !22
  br label %.thread377

.thread377:                                       ; preds = %bb.cv, %bb.i, %bb.fi, %bb.cz, %bb.cy, %bb.ch
  %.3195 = phi i64 [ %.2194, %bb.cz ], [ %.2194, %bb.fi ], [ %.2194, %bb.ch ], [ %.2194, %bb.cy ], [ %.2194, %bb.cv ], [ %.0192, %bb.i ] ; 9 uses
  %i.kb = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.kc = load i8, ptr %i.kb, align 8, !tbaa !58, !range !51, !noundef !52
  %i.kd = trunc nuw i8 %i.kc to i1
  br i1 %i.kd, label %bb.fj, label %bb.fk

bb.fj:                                            ; preds = %.thread377
  %i.ke = call noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE16find_last_not_ofEPKcmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull @.str.5, i64 noundef -1, i64 noundef 2) #15 ; 3 uses
  %.not237 = icmp eq i64 %.3195, -1
  %i.kf = icmp eq i64 %i.ke, -1
  %i.kg = call i64 @llvm.umax.i64(i64 %i.ke, i64 %.3195)
  %spec.select248 = select i1 %i.kf, i64 %.3195, i64 %i.kg
  %.0165 = select i1 %.not237, i64 %i.ke, i64 %spec.select248 ; 2 uses
  %i.kh = load i64, ptr %i.e, align 8, !tbaa !18
  %i.ki = icmp ult i64 %.0165, %i.kh
  br i1 %i.ki, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5eraseEmm.exit351, label %bb.fk

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5eraseEmm.exit351: ; preds = %bb.fj
  %i.kj = add nuw i64 %.0165, 1                   ; 2 uses
  store i64 %i.kj, ptr %i.e, align 8, !tbaa !18
  %i.kk = load ptr, ptr %0, align 8, !tbaa !43
  %i.kl = getelementptr inbounds nuw i8, ptr %i.kk, i64 %i.kj
  store i8 0, ptr %i.kl, align 1, !tbaa !21
  br label %bb.fk

bb.fk:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5eraseEmm.exit351, %bb.fj, %.thread377
  %i.km = getelementptr inbounds nuw i8, ptr %2, i64 28
  %i.kn = load i32, ptr %i.km, align 4, !tbaa !59
  switch i32 %i.kn, label %bb.fr [
    i32 0, label %bb.fl
    i32 -1, label %bb.fo
  ]

bb.fl:                                            ; preds = %bb.fk
  %i.ko = call noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE16find_last_not_ofEcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i8 noundef signext 10, i64 noundef -1) #15 ; 3 uses
end_hunk_0
