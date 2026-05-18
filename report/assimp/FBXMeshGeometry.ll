inline.NumInlined: 1883
inline.NumDeleted: 548
begin_hunk_0_@_ZN6Assimp3FBX22ResolveVertexDataArrayI10aiVector3tIfEEEvRSt6vectorIT_SaIS5_EERKNS0_5ScopeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESJ_PKcSL_mRKS4_IjSaIjEESP_SP_:bb.a
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %26, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #25
  %i.qo = getelementptr inbounds nuw i8, ptr %27, i64 16 ; 7 uses
  store ptr %i.qo, ptr %27, align 8
  %i.qp = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %5) #25 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #25
  store i64 %i.qp, ptr %i.b, align 8
  %i.qq = icmp ugt i64 %i.qp, 15
  br i1 %i.qq, label %.noexc.i309, label %._crit_edge.i.i308

.noexc.i309:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit307
  %i.qr = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %27, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %.noexc311 unwind label %bb.dy ; 2 uses

.noexc311:                                        ; preds = %.noexc.i309
  store ptr %i.qr, ptr %27, align 8
  %i.qs = load i64, ptr %i.b, align 8
  store i64 %i.qs, ptr %i.qo, align 8
  br label %._crit_edge.i.i308

._crit_edge.i.i308:                               ; preds = %.noexc311, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit307
  %i.qt = phi ptr [ %i.qr, %.noexc311 ], [ %i.qo, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit307 ] ; 2 uses
  switch i64 %i.qp, label %bb.dq [
    i64 1, label %bb.dp
    i64 0, label %bb.dr
  ]

bb.dp:                                            ; preds = %._crit_edge.i.i308
  %i.qu = load i8, ptr %5, align 1
  store i8 %i.qu, ptr %i.qt, align 1
  br label %bb.dr

bb.dq:                                            ; preds = %._crit_edge.i.i308
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.qt, ptr nonnull align 1 %5, i64 %i.qp, i1 false)
  br label %bb.dr

bb.dr:                                            ; preds = %bb.dq, %bb.dp, %._crit_edge.i.i308
  %i.qv = load i64, ptr %i.b, align 8             ; 2 uses
  %i.qw = getelementptr inbounds nuw i8, ptr %27, i64 8
  store i64 %i.qv, ptr %i.qw, align 8
  %i.qx = load ptr, ptr %27, align 8
  %i.qy = getelementptr inbounds nuw i8, ptr %i.qx, i64 %i.qv
  store i8 0, ptr %i.qy, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #25
  %i.qz = invoke noundef nonnull align 8 dereferenceable(40) ptr @_ZN6Assimp3FBX18GetRequiredElementERKNS0_5ScopeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKNS0_7ElementE(ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull align 8 dereferenceable(32) %27, ptr noundef null)
          to label %bb.ds unwind label %bb.dz

bb.ds:                                            ; preds = %bb.dr
  invoke void @_ZN6Assimp3FBX20ParseVectorDataArrayERSt6vectorIiSaIiEERKNS0_7ElementE(ptr noundef nonnull align 8 dereferenceable(24) %26, ptr noundef nonnull align 8 dereferenceable(40) %i.qz)
          to label %bb.dt unwind label %bb.dz

bb.dt:                                            ; preds = %bb.ds
  %i.ra = load ptr, ptr %27, align 8              ; 2 uses
  %i.rb = icmp eq ptr %i.ra, %i.qo
  br i1 %i.rb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit315, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i313

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i313: ; preds = %bb.dt
  %i.rc = load i64, ptr %i.qo, align 8
  %i.rd = add i64 %i.rc, 1
  call void @_ZdlPvm(ptr noundef %i.ra, i64 noundef %i.rd) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit315

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit315: ; preds = %bb.dt, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i313
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #25
  %i.re = getelementptr inbounds nuw i8, ptr %26, i64 8 ; 3 uses
  %i.rf = load ptr, ptr %i.re, align 8
  %i.rg = load ptr, ptr %26, align 8
  %i.rh = ptrtoint ptr %i.rf to i64
  %i.ri = ptrtoint ptr %i.rg to i64
  %i.rj = sub i64 %i.rh, %i.ri
  %i.rk = ashr exact i64 %i.rj, 2                 ; 3 uses
  %i.rl = load i64, ptr %i.q, align 8             ; 2 uses
  %i.rm = icmp ugt i64 %i.rk, %i.rl
  br i1 %i.rm, label %bb.du, label %bb.ec

bb.du:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit315
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w) #25
  store i64 %i.rk, ptr %i.w, align 8
  invoke void @_ZN6Assimp12LogFunctionsINS_11FBXImporterEE7LogWarnIJRA61_KcmRA12_S4_RmEEEvDpOT_(ptr noundef nonnull align 1 dereferenceable(61) @.str.85, ptr noundef nonnull align 8 dereferenceable(8) %i.w, ptr noundef nonnull align 1 dereferenceable(12) @.str.53, ptr noundef nonnull align 8 dereferenceable(8) %i.q)
          to label %bb.dv unwind label %bb.ea

bb.dv:                                            ; preds = %bb.du
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w) #25
  %i.rn = load i64, ptr %i.q, align 8
  invoke void @_ZNSt6vectorIiSaIiEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(24) %26, i64 noundef %i.rn)
          to label %._crit_edge394 unwind label %bb.eb

._crit_edge394:                                   ; preds = %bb.dv
  %.pre395 = load ptr, ptr %i.re, align 8
  %.pre396 = load ptr, ptr %26, align 8
  %.pre397 = load i64, ptr %i.q, align 8
  %.pre418 = ptrtoint ptr %.pre395 to i64
  %.pre420 = ptrtoint ptr %.pre396 to i64
  %.pre422 = sub i64 %.pre418, %.pre420
  %.pre424 = ashr exact i64 %.pre422, 2
  br label %bb.ec

bb.dw:                                            ; preds = %.noexc.i301, %bb.di
  %i.ro = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit318

bb.dx:                                            ; preds = %bb.dn, %bb.dm
  %i.rp = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.rq = load ptr, ptr %25, align 8              ; 2 uses
  %i.rr = icmp eq ptr %i.rq, %i.px
  br i1 %i.rr, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit318, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i316

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i316: ; preds = %bb.dx
  %i.rs = load i64, ptr %i.px, align 8
  %i.rt = add i64 %i.rs, 1
  call void @_ZdlPvm(ptr noundef %i.rq, i64 noundef %i.rt) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit318

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit318: ; preds = %bb.dx, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i316, %bb.dw
  %.pn145 = phi { ptr, i32 } [ %i.ro, %bb.dw ], [ %i.rp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i316 ], [ %i.rp, %bb.dx ]
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #25
  br label %bb.ez

bb.dy:                                            ; preds = %.noexc.i309
  %i.ru = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit321

bb.dz:                                            ; preds = %bb.ds, %bb.dr
  %i.rv = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.rw = load ptr, ptr %27, align 8              ; 2 uses
  %i.rx = icmp eq ptr %i.rw, %i.qo
  br i1 %i.rx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit321, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i319

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i319: ; preds = %bb.dz
  %i.ry = load i64, ptr %i.qo, align 8
  %i.rz = add i64 %i.ry, 1
  call void @_ZdlPvm(ptr noundef %i.rw, i64 noundef %i.rz) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit321

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit321: ; preds = %bb.dz, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i319, %bb.dy
  %.pn147 = phi { ptr, i32 } [ %i.ru, %bb.dy ], [ %i.rv, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i319 ], [ %i.rv, %bb.dz ]
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #25
  br label %bb.ex

bb.ea:                                            ; preds = %bb.du
  %i.sa = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w) #25
  br label %bb.ex

bb.eb:                                            ; preds = %bb.eg, %bb.dv
  %i.sb = landingpad { ptr, i32 }
          cleanup
  br label %bb.ex

bb.ec:                                            ; preds = %._crit_edge394, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit315
  %.pre-phi425 = phi i64 [ %.pre424, %._crit_edge394 ], [ %i.rk, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit315 ] ; 2 uses
  %i.sc = phi i64 [ %.pre397, %._crit_edge394 ], [ %i.rl, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit315 ] ; 2 uses
  %.not149 = icmp eq i64 %.pre-phi425, %i.sc
  br i1 %.not149, label %bb.eg, label %bb.ed

bb.ed:                                            ; preds = %bb.ec
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x) #25
  store i64 %.pre-phi425, ptr %i.x, align 8
  invoke void @_ZN6Assimp12LogFunctionsINS_11FBXImporterEE8LogErrorIJRA62_KcmRA12_S4_RmEEEvDpOT_(ptr noundef nonnull align 1 dereferenceable(62) @.str.86, ptr noundef nonnull align 8 dereferenceable(8) %i.x, ptr noundef nonnull align 1 dereferenceable(12) @.str.53, ptr noundef nonnull align 8 dereferenceable(8) %i.q)
          to label %bb.ee unwind label %bb.ef

bb.ee:                                            ; preds = %bb.ed
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x) #25
  br label %.loopexit367thread-pre-split

bb.ef:                                            ; preds = %bb.ed
  %i.sd = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x) #25
  br label %bb.ex

bb.eg:                                            ; preds = %bb.ec
  invoke void @_ZNSt6vectorI10aiVector3tIfESaIS1_EE6resizeEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.sc)
          to label %bb.eh unwind label %bb.eb

bb.eh:                                            ; preds = %bb.eg
  %i.se = load ptr, ptr %26, align 8              ; 3 uses
  %i.sf = load ptr, ptr %i.re, align 8            ; 2 uses
  %.not368 = icmp eq ptr %i.se, %i.sf
  br i1 %.not368, label %.loopexit367, label %.lr.ph

.lr.ph:                                           ; preds = %bb.eh
  %i.sg = getelementptr inbounds nuw i8, ptr %24, i64 8
  br label %bb.ei

bb.ei:                                            ; preds = %.lr.ph, %bb.eu
  %.0106370 = phi i32 [ 0, %.lr.ph ], [ %.1, %bb.eu ] ; 3 uses
  %.sroa.0340.0369 = phi ptr [ %i.se, %.lr.ph ], [ %i.tl, %bb.eu ] ; 2 uses
  %i.sh = load i32, ptr %.sroa.0340.0369, align 4 ; 2 uses
  %i.si = icmp eq i32 %i.sh, -1
  br i1 %i.si, label %bb.ej, label %bb.ek

bb.ej:                                            ; preds = %bb.ei
  %i.sj = zext i32 %.0106370 to i64
  %i.sk = load ptr, ptr %0, align 8
  %i.sl = getelementptr inbounds nuw [12 x i8], ptr %i.sk, i64 %i.sj ; 2 uses
  store <2 x float> zeroinitializer, ptr %i.sl, align 4
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.sl, i64 8
  store float 0.000000e+00, ptr %.sroa.6.0..sroa_idx, align 4
  br label %bb.eu

bb.ek:                                            ; preds = %bb.ei
  %i.sm = sext i32 %i.sh to i64                   ; 2 uses
  %i.sn = load ptr, ptr %i.sg, align 8
  %i.so = load ptr, ptr %24, align 8              ; 2 uses
  %i.sp = ptrtoint ptr %i.sn to i64
  %i.sq = ptrtoint ptr %i.so to i64
  %i.sr = sub i64 %i.sp, %i.sq
  %i.ss = sdiv exact i64 %i.sr, 12
  %.not150 = icmp ugt i64 %i.ss, %i.sm
  br i1 %.not150, label %bb.et, label %bb.el

bb.el:                                            ; preds = %bb.ek
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #25
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %28, ptr noundef nonnull @.str.83, ptr noundef nonnull align 1 dereferenceable(1) %29)
          to label %bb.em unwind label %bb.eq

bb.em:                                            ; preds = %bb.el
  call void @llvm.lifetime.start.p0(ptr nonnull %30) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %31) #25
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %30, ptr noundef nonnull %5, ptr noundef nonnull align 1 dereferenceable(1) %31)
          to label %bb.en unwind label %bb.er

bb.en:                                            ; preds = %bb.em
  %i.st = invoke noundef nonnull align 8 dereferenceable(40) ptr @_ZN6Assimp3FBX18GetRequiredElementERKNS0_5ScopeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKNS0_7ElementE(ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull align 8 dereferenceable(32) %30, ptr noundef null)
          to label %bb.eo unwind label %bb.es

bb.eo:                                            ; preds = %bb.en
  invoke void @_ZN6Assimp3FBX4Util8DOMErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKNS0_7ElementE(ptr noundef nonnull align 8 dereferenceable(32) %28, ptr noundef nonnull %i.st) #27
          to label %bb.ep unwind label %bb.es

bb.ep:                                            ; preds = %bb.eo
  unreachable

bb.eq:                                            ; preds = %bb.el
  %i.su = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit327

bb.er:                                            ; preds = %bb.em
  %i.sv = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit324

bb.es:                                            ; preds = %bb.eo, %bb.en
  %i.sw = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.sx = load ptr, ptr %30, align 8              ; 2 uses
  %i.sy = getelementptr inbounds nuw i8, ptr %30, i64 16 ; 2 uses
  %i.sz = icmp eq ptr %i.sx, %i.sy
  br i1 %i.sz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit324, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i322

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i322: ; preds = %bb.es
  %i.ta = load i64, ptr %i.sy, align 8
  %i.tb = add i64 %i.ta, 1
  call void @_ZdlPvm(ptr noundef %i.sx, i64 noundef %i.tb) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit324

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit324: ; preds = %bb.es, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i322, %bb.er
  %.pn151 = phi { ptr, i32 } [ %i.sv, %bb.er ], [ %i.sw, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i322 ], [ %i.sw, %bb.es ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #25
  %i.tc = load ptr, ptr %28, align 8              ; 2 uses
  %i.td = getelementptr inbounds nuw i8, ptr %28, i64 16 ; 2 uses
  %i.te = icmp eq ptr %i.tc, %i.td
  br i1 %i.te, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit327, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i325

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i325: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit324
  %i.tf = load i64, ptr %i.td, align 8
  %i.tg = add i64 %i.tf, 1
  call void @_ZdlPvm(ptr noundef %i.tc, i64 noundef %i.tg) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit327

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit327: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit324, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i325, %bb.eq
  %.pn151.pn = phi { ptr, i32 } [ %i.su, %bb.eq ], [ %.pn151, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i325 ], [ %.pn151, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit324 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #25
  br label %bb.ex

bb.et:                                            ; preds = %bb.ek
  %i.th = getelementptr inbounds nuw [12 x i8], ptr %i.so, i64 %i.sm
  %i.ti = zext i32 %.0106370 to i64
  %i.tj = load ptr, ptr %0, align 8
  %i.tk = getelementptr inbounds nuw [12 x i8], ptr %i.tj, i64 %i.ti
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.tk, ptr noundef nonnull align 4 dereferenceable(12) %i.th, i64 12, i1 false)
  br label %bb.eu

bb.eu:                                            ; preds = %bb.et, %bb.ej
  %.1 = add i32 %.0106370, 1
  %i.tl = getelementptr inbounds nuw i8, ptr %.sroa.0340.0369, i64 4 ; 2 uses
  %.not = icmp eq ptr %i.tl, %i.sf
  br i1 %.not, label %.loopexit367thread-pre-split, label %bb.ei

.loopexit367thread-pre-split:                     ; preds = %bb.eu, %bb.ee
  %.pr520 = load ptr, ptr %26, align 8
  br label %.loopexit367

.loopexit367:                                     ; preds = %.loopexit367thread-pre-split, %bb.eh
  %i.tm = phi ptr [ %.pr520, %.loopexit367thread-pre-split ], [ %i.se, %bb.eh ] ; 3 uses
  %.not.i.i.i328 = icmp eq ptr %i.tm, null
  br i1 %.not.i.i.i328, label %_ZNSt6vectorIiSaIiEED2Ev.exit329, label %bb.ev

bb.ev:                                            ; preds = %.loopexit367
  %i.tn = getelementptr inbounds nuw i8, ptr %26, i64 16
  %i.to = load ptr, ptr %i.tn, align 8
  %i.tp = ptrtoint ptr %i.to to i64
  %i.tq = ptrtoint ptr %i.tm to i64
  %i.tr = sub i64 %i.tp, %i.tq
  call void @_ZdlPvm(ptr noundef nonnull %i.tm, i64 noundef %i.tr) #26
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit329

_ZNSt6vectorIiSaIiEED2Ev.exit329:                 ; preds = %.loopexit367, %bb.ev
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #25
  %i.ts = load ptr, ptr %24, align 8              ; 3 uses
  %.not.i.i.i330 = icmp eq ptr %i.ts, null
  br i1 %.not.i.i.i330, label %_ZNSt6vectorI10aiVector3tIfESaIS1_EED2Ev.exit331, label %bb.ew

bb.ew:                                            ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit329
  %i.tt = getelementptr inbounds nuw i8, ptr %24, i64 16
  %i.tu = load ptr, ptr %i.tt, align 8
  %i.tv = ptrtoint ptr %i.tu to i64
  %i.tw = ptrtoint ptr %i.ts to i64
  %i.tx = sub i64 %i.tv, %i.tw
  call void @_ZdlPvm(ptr noundef nonnull %i.ts, i64 noundef %i.tx) #26
  br label %_ZNSt6vectorI10aiVector3tIfESaIS1_EED2Ev.exit331

_ZNSt6vectorI10aiVector3tIfESaIS1_EED2Ev.exit331: ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit329, %bb.ew
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #25
  br label %_ZN6Assimp12LogFunctionsINS_11FBXImporterEE7LogWarnIJRA23_KcRPS4_EEEvDpOT_.exit

bb.ex:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit327, %bb.ef, %bb.eb, %bb.ea, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit321
  %.pn154 = phi { ptr, i32 } [ %i.sd, %bb.ef ], [ %.pn151.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit327 ], [ %i.sb, %bb.eb ], [ %i.sa, %bb.ea ], [ %.pn147, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit321 ]
  %i.ty = load ptr, ptr %26, align 8              ; 3 uses
  %.not.i.i.i332 = icmp eq ptr %i.ty, null
  br i1 %.not.i.i.i332, label %_ZNSt6vectorIiSaIiEED2Ev.exit333, label %bb.ey

bb.ey:                                            ; preds = %bb.ex
  %i.tz = getelementptr inbounds nuw i8, ptr %26, i64 16
  %i.ua = load ptr, ptr %i.tz, align 8
  %i.ub = ptrtoint ptr %i.ua to i64
  %i.uc = ptrtoint ptr %i.ty to i64
  %i.ud = sub i64 %i.ub, %i.uc
  call void @_ZdlPvm(ptr noundef nonnull %i.ty, i64 noundef %i.ud) #26
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit333

_ZNSt6vectorIiSaIiEED2Ev.exit333:                 ; preds = %bb.ex, %bb.ey
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #25
  br label %bb.ez

bb.ez:                                            ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit333, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit318, %bb.dg
  %.pn154.pn = phi { ptr, i32 } [ %.pn154, %_ZNSt6vectorIiSaIiEED2Ev.exit333 ], [ %.pn145, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit318 ], [ %i.pv, %bb.dg ]
  %i.ue = load ptr, ptr %24, align 8              ; 3 uses
  %.not.i.i.i334 = icmp eq ptr %i.ue, null
  br i1 %.not.i.i.i334, label %_ZNSt6vectorI10aiVector3tIfESaIS1_EED2Ev.exit335, label %bb.fa

bb.fa:                                            ; preds = %bb.ez
  %i.uf = getelementptr inbounds nuw i8, ptr %24, i64 16
  %i.ug = load ptr, ptr %i.uf, align 8
  %i.uh = ptrtoint ptr %i.ug to i64
  %i.ui = ptrtoint ptr %i.ue to i64
  %i.uj = sub i64 %i.uh, %i.ui
  call void @_ZdlPvm(ptr noundef nonnull %i.ue, i64 noundef %i.uj) #26
  br label %_ZNSt6vectorI10aiVector3tIfESaIS1_EED2Ev.exit335

_ZNSt6vectorI10aiVector3tIfESaIS1_EED2Ev.exit335: ; preds = %bb.ez, %bb.fa
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #25
  br label %bb.fe

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit299.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit222, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit194, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit299
  %i.uk = call noundef zeroext i1 @_ZN6Assimp13DefaultLogger12isNullLoggerEv()
  br i1 %i.uk, label %_ZN6Assimp12LogFunctionsINS_11FBXImporterEE7LogWarnIJRA23_KcRPS4_EEEvDpOT_.exit, label %bb.fb

bb.fb:                                            ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit299.thread
  %i.ul = call noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  %i.um = call noundef ptr @_ZN6Assimp12LogFunctionsINS_11FBXImporterEE6PrefixEv()
  store ptr %i.um, ptr %i.a, align 8
  call void @_ZN6Assimp6Logger5errorIJPKcRA60_S2_RKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA2_S2_SD_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(12) %i.ul, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 1 dereferenceable(60) @.str.87, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 1 dereferenceable(2) @.str.55, ptr noundef nonnull align 8 dereferenceable(32) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  br label %_ZN6Assimp12LogFunctionsINS_11FBXImporterEE7LogWarnIJRA23_KcRPS4_EEEvDpOT_.exit

.critedge:                                        ; preds = %.noexc226, %.noexc223
  %.pre398 = load ptr, ptr %14, align 8           ; 3 uses
  %.not.i.i.i336 = icmp eq ptr %.pre398, null
  br i1 %.not.i.i.i336, label %_ZNSt6vectorI10aiVector3tIfESaIS1_EED2Ev.exit337, label %bb.fc

bb.fc:                                            ; preds = %.critedge
  %i.un = getelementptr inbounds nuw i8, ptr %14, i64 16
  %i.uo = load ptr, ptr %i.un, align 8
  %i.up = ptrtoint ptr %i.uo to i64
  %i.uq = ptrtoint ptr %.pre398 to i64
  %i.ur = sub i64 %i.up, %i.uq
  call void @_ZdlPvm(ptr noundef nonnull %.pre398, i64 noundef %i.ur) #26
  br label %_ZNSt6vectorI10aiVector3tIfESaIS1_EED2Ev.exit337

_ZNSt6vectorI10aiVector3tIfESaIS1_EED2Ev.exit337: ; preds = %.critedge, %bb.fc
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #25
  br label %_ZN6Assimp12LogFunctionsINS_11FBXImporterEE7LogWarnIJRA23_KcRPS4_EEEvDpOT_.exit
end_hunk_0
