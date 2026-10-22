Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cmake/original/cmCTestCoverageHandler?download=true
inline.NumInlined: 4920
inline.NumDeleted: 1039
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN22cmCTestCoverageHandler25RunBullseyeCoverageBranchEP31cmCTestCoverageHandlerContainerRSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS8_ESaIS8_EERSt6vectorIS8_SB_ESG_:bb.a
  invoke void @_ZN7cmCTest18GetShortPathToFileERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %32, ptr noundef nonnull align 8 dereferenceable(8) %i.ue, ptr noundef nonnull align 8 dereferenceable(32) %.19.i.i.i249.lcssa.sroa.gep619)
          to label %bb.du unwind label %bb.eb

bb.du:                                            ; preds = %bb.dt
  invoke void @_ZN11cmXMLWriter9AttributeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvPKcRKT_(ptr noundef nonnull align 8 dereferenceable(83) %12, ptr noundef nonnull @.str.40, ptr noundef nonnull align 8 dereferenceable(32) %32)
          to label %bb.dv unwind label %bb.ec

bb.dv:                                            ; preds = %bb.du
  %i.uf = load ptr, ptr %32, align 8, !tbaa !55   ; 2 uses
  %i.ug = icmp eq ptr %i.uf, %i.mo
  br i1 %i.ug, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit299, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i297

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i297: ; preds = %bb.dv
  %i.uh = load i64, ptr %i.mo, align 8, !tbaa !48
  %i.ui = add i64 %i.uh, 1
  call void @_ZdlPvm(ptr noundef %i.uf, i64 noundef %i.ui) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit299

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit299: ; preds = %bb.dv, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i297
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %33) #22
  store ptr %i.mp, ptr %33, align 8, !tbaa !45
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(6) %i.mp, ptr noundef nonnull align 1 dereferenceable(6) @.str.41, i64 6, i1 false)
  store i64 6, ptr %i.mq, align 8, !tbaa !47
  store i8 0, ptr %i.mw, align 2, !tbaa !48
  invoke void @_ZN11cmXMLWriter12StartElementERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(83) %12, ptr noundef nonnull align 8 dereferenceable(32) %33)
          to label %bb.dw unwind label %bb.ed

bb.dw:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit299
  %i.uj = load ptr, ptr %33, align 8, !tbaa !55   ; 2 uses
  %i.uk = icmp eq ptr %i.uj, %i.mp
  br i1 %i.uk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit306, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i304

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i304: ; preds = %bb.dw
  %i.ul = load i64, ptr %i.mp, align 8, !tbaa !48
  %i.um = add i64 %i.ul, 1
  call void @_ZdlPvm(ptr noundef %i.uj, i64 noundef %i.um) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit306

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit306: ; preds = %bb.dw, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i304
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #22
  store i32 0, ptr %i.b, align 4, !tbaa !123
  br label %._crit_edge.i.i319

bb.dx:                                            ; preds = %bb.di
  %i.un = landingpad { ptr, i32 }
          cleanup
  br label %bb.dz

.loopexit.split-lp451.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.noexc412, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i407, %.noexc410, %bb.dn, %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit272, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit270, %bb.dj, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit274, %bb.dl
  %lpad.loopexit.split-lp840 = landingpad { ptr, i32 }
          cleanup
  br label %.body284

bb.dy:                                            ; preds = %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit286
  %i.uo = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.up = load ptr, ptr %30, align 8, !tbaa !55   ; 2 uses
  %i.uq = icmp eq ptr %i.up, %i.mc
  br i1 %i.uq, label %.body284, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i307

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i307: ; preds = %bb.dy
  %i.ur = load i64, ptr %i.mc, align 8, !tbaa !48
  %i.us = add i64 %i.ur, 1
  call void @_ZdlPvm(ptr noundef %i.up, i64 noundef %i.us) #23
  br label %.body284

.body284:                                         ; preds = %bb.dy, %bb.dp, %.loopexit.split-lp451.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i307, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i281
  %.pn97 = phi { ptr, i32 } [ %lpad.loopexit.split-lp840, %.loopexit.split-lp451.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %i.uo, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i307 ], [ %i.tj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i281 ], [ %i.tj, %bb.dp ], [ %i.uo, %bb.dy ]
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %29) #22
  br label %bb.dz

bb.dz:                                            ; preds = %.body284, %bb.dx
  %.pn97.pn = phi { ptr, i32 } [ %.pn97, %.body284 ], [ %i.un, %bb.dx ]
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #22
  br label %.loopexit.split-lp.loopexit.split-lp

bb.ea:                                            ; preds = %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit292
  %i.ut = landingpad { ptr, i32 }
          cleanup
  %i.uu = load ptr, ptr %31, align 8, !tbaa !55   ; 2 uses
  %i.uv = icmp eq ptr %i.uu, %i.mm
  br i1 %i.uv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit312, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i310

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i310: ; preds = %bb.ea
  %i.uw = load i64, ptr %i.mm, align 8, !tbaa !48
  %i.ux = add i64 %i.uw, 1
  call void @_ZdlPvm(ptr noundef %i.uu, i64 noundef %i.ux) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit312

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit312: ; preds = %bb.ea, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i310
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #22
  br label %.loopexit.split-lp.loopexit.split-lp

bb.eb:                                            ; preds = %bb.dt
  %i.uy = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit315

bb.ec:                                            ; preds = %bb.du
  %i.uz = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.va = load ptr, ptr %32, align 8, !tbaa !55   ; 2 uses
  %i.vb = icmp eq ptr %i.va, %i.mo
  br i1 %i.vb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit315, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i313

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i313: ; preds = %bb.ec
  %i.vc = load i64, ptr %i.mo, align 8, !tbaa !48
  %i.vd = add i64 %i.vc, 1
  call void @_ZdlPvm(ptr noundef %i.va, i64 noundef %i.vd) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit315

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit315: ; preds = %bb.ec, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i313, %bb.eb
  %.pn102 = phi { ptr, i32 } [ %i.uy, %bb.eb ], [ %i.uz, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i313 ], [ %i.uz, %bb.ec ]
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #22
  br label %.loopexit.split-lp.loopexit.split-lp

bb.ed:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit299
  %i.ve = landingpad { ptr, i32 }
          cleanup
  %i.vf = load ptr, ptr %33, align 8, !tbaa !55   ; 2 uses
  %i.vg = icmp eq ptr %i.vf, %i.mp
  br i1 %i.vg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit318, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i316

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i316: ; preds = %bb.ed
  %i.vh = load i64, ptr %i.mp, align 8, !tbaa !48
  %i.vi = add i64 %i.vh, 1
  call void @_ZdlPvm(ptr noundef %i.vf, i64 noundef %i.vi) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit318

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit318: ; preds = %bb.ed, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i316
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #22
  br label %.loopexit.split-lp.loopexit.split-lp

._crit_edge.i.i319:                               ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit306, %bb.ei
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.ei ], [ 0, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit306 ] ; 2 uses
  %i.vj = getelementptr inbounds nuw [8 x i8], ptr @_ZN12_GLOBAL__N_112bullseyeHelpE, i64 %indvars.iv
  call void @llvm.lifetime.start.p0(ptr nonnull %34) #22
  store ptr %i.mr, ptr %34, align 8, !tbaa !45
  store i32 1701734732, ptr %i.mr, align 8
  store i64 4, ptr %i.ms, align 8, !tbaa !47
  store i8 0, ptr %i.mx, align 4, !tbaa !48
  invoke void @_ZN11cmXMLWriter12StartElementERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(83) %12, ptr noundef nonnull align 8 dereferenceable(32) %34)
          to label %bb.ee unwind label %bb.ej

bb.ee:                                            ; preds = %._crit_edge.i.i319
  %i.vk = load ptr, ptr %34, align 8, !tbaa !55   ; 2 uses
  %i.vl = icmp eq ptr %i.vk, %i.mr
  br i1 %i.vl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit325, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i323

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i323: ; preds = %bb.ee
  %i.vm = load i64, ptr %i.mr, align 8, !tbaa !48
  %i.vn = add i64 %i.vm, 1
  call void @_ZdlPvm(ptr noundef %i.vk, i64 noundef %i.vn) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit325

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit325: ; preds = %bb.ee, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i323
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #22
  invoke void @_ZN11cmXMLWriter9AttributeIiEEvPKcRKT_(ptr noundef nonnull align 8 dereferenceable(83) %12, ptr noundef nonnull @.str.48, ptr noundef nonnull align 4 dereferenceable(4) %i.b)
          to label %bb.ef unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ef:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit325
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #22
  store i32 -1, ptr %i.c, align 4, !tbaa !123
  invoke void @_ZN11cmXMLWriter9AttributeIiEEvPKcRKT_(ptr noundef nonnull align 8 dereferenceable(83) %12, ptr noundef nonnull @.str.49, ptr noundef nonnull align 4 dereferenceable(4) %i.c)
          to label %bb.eg unwind label %bb.ek

bb.eg:                                            ; preds = %bb.ef
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #22
  invoke void @_ZN11cmXMLWriter10PreContentEv(ptr noundef nonnull align 8 dereferenceable(83) %12)
          to label %.noexc326 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc326:                                        ; preds = %bb.eg
  %i.vo = load ptr, ptr %12, align 8, !tbaa !92, !nonnull !83, !align !93
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #22
  %i.vp = load ptr, ptr %i.vj, align 8, !tbaa !49
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #22, !noalias !1345
  invoke void @_ZN9cmXMLSafeC1EPKc(ptr noundef nonnull align 8 dereferenceable(17) %7, ptr noundef %i.vp)
          to label %.noexc327 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc327:                                        ; preds = %.noexc326
  %i.vq = invoke noundef nonnull align 8 dereferenceable(17) ptr @_ZN9cmXMLSafe6QuotesEb(ptr noundef nonnull align 8 dereferenceable(17) %7, i1 noundef zeroext false)
          to label %.noexc328 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc328:                                        ; preds = %.noexc327
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %8, ptr noundef nonnull align 8 dereferenceable(24) %i.vq, i64 24, i1 false), !tbaa.struct !95
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22, !noalias !1345
  %i.vr = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZlsRSoRK9cmXMLSafe(ptr noundef nonnull align 8 dereferenceable(8) %i.vo, ptr noundef nonnull align 8 dereferenceable(17) %8)
          to label %bb.eh unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

bb.eh:                                            ; preds = %.noexc328
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #22
  invoke void @_ZN11cmXMLWriter10EndElementEv(ptr noundef nonnull align 8 dereferenceable(83) %12)
          to label %bb.ei unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ei:                                            ; preds = %bb.eh
  %i.vs = load i32, ptr %i.b, align 4, !tbaa !123
  %i.vt = add nsw i32 %i.vs, 1
  store i32 %i.vt, ptr %i.b, align 4, !tbaa !123
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %36 = getelementptr inbounds nuw [8 x i8], ptr @_ZN12_GLOBAL__N_112bullseyeHelpE, i64 %indvars.iv.next
  %37 = load ptr, ptr %36, align 8, !tbaa !49
  %.not106 = icmp eq ptr %37, null
  br i1 %.not106, label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4lessIS5_ESaISt4pairIKS5_S5_EEE4findERS9_.exit.thread, label %._crit_edge.i.i319, !llvm.loop !1319

bb.ej:                                            ; preds = %._crit_edge.i.i319
  %i.vu = landingpad { ptr, i32 }
          cleanup
  %i.vv = load ptr, ptr %34, align 8, !tbaa !55   ; 2 uses
  %i.vw = icmp eq ptr %i.vv, %i.mr
  br i1 %i.vw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit332, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i330

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i330: ; preds = %bb.ej
  %i.vx = load i64, ptr %i.mr, align 8, !tbaa !48
  %i.vy = add i64 %i.vx, 1
  call void @_ZdlPvm(ptr noundef %i.vv, i64 noundef %i.vy) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit332

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit332: ; preds = %bb.ej, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i330
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #22
  br label %.loopexit.split-lp.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.noexc328, %.noexc327, %.noexc326, %bb.eg, %bb.eh, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit325, %bb.cj, %bb.ck, %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit236, %bb.cx, %bb.cy, %bb.dd, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit339, %bb.eo, %bb.bs, %bb.en, %.noexc340, %.noexc341, %.noexc342, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit296, %bb.ew, %bb.ev, %bb.eu, %bb.et
  %lpad.loopexit.split-lp835 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.loopexit.split-lp

bb.ek:                                            ; preds = %bb.ef
  %i.vz = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #22
  br label %.loopexit.split-lp.loopexit.split-lp

.critedge:                                        ; preds = %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS5_EPSt18_Rb_tree_node_baseRKS5_.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit216, %bb.bu, %bb.bv, %_ZNSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EE4findERKS5_.exit
  %i.wa = trunc nuw i8 %.031 to i1
  br i1 %i.wa, label %._crit_edge.i.i333, label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4lessIS5_ESaISt4pairIKS5_S5_EEE4findERS9_.exit.thread

._crit_edge.i.i333:                               ; preds = %.critedge
  call void @llvm.lifetime.start.p0(ptr nonnull %35) #22
  store ptr %i.mt, ptr %35, align 8, !tbaa !45
  store i32 1701734732, ptr %i.mt, align 8
  store i64 4, ptr %i.mu, align 8, !tbaa !47
  store i8 0, ptr %i.my, align 4, !tbaa !48
  invoke void @_ZN11cmXMLWriter12StartElementERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(83) %12, ptr noundef nonnull align 8 dereferenceable(32) %35)
          to label %bb.el unwind label %bb.eq

bb.el:                                            ; preds = %._crit_edge.i.i333
  %i.wb = load ptr, ptr %35, align 8, !tbaa !55   ; 2 uses
  %i.wc = icmp eq ptr %i.wb, %i.mt
  br i1 %i.wc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit339, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i337

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i337: ; preds = %bb.el
  %i.wd = load i64, ptr %i.mt, align 8, !tbaa !48
  %i.we = add i64 %i.wd, 1
  call void @_ZdlPvm(ptr noundef %i.wb, i64 noundef %i.we) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit339

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit339: ; preds = %bb.el, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i337
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #22
  invoke void @_ZN11cmXMLWriter9AttributeIiEEvPKcRKT_(ptr noundef nonnull align 8 dereferenceable(83) %12, ptr noundef nonnull @.str.48, ptr noundef nonnull align 4 dereferenceable(4) %i.b)
          to label %bb.em unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.em:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit339
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #22
  store i32 -1, ptr %i.d, align 4, !tbaa !123
  invoke void @_ZN11cmXMLWriter9AttributeIiEEvPKcRKT_(ptr noundef nonnull align 8 dereferenceable(83) %12, ptr noundef nonnull @.str.49, ptr noundef nonnull align 4 dereferenceable(4) %i.d)
          to label %bb.en unwind label %bb.er

bb.en:                                            ; preds = %bb.em
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #22
  invoke void @_ZN11cmXMLWriter10PreContentEv(ptr noundef nonnull align 8 dereferenceable(83) %12)
          to label %.noexc340 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc340:                                        ; preds = %bb.en
  %i.wf = load ptr, ptr %12, align 8, !tbaa !92, !nonnull !83, !align !93
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22, !noalias !1346
  invoke void @_ZN9cmXMLSafeC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(17) %5, ptr noundef nonnull align 8 dereferenceable(32) %24)
          to label %.noexc341 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc341:                                        ; preds = %.noexc340
  %i.wg = invoke noundef nonnull align 8 dereferenceable(17) ptr @_ZN9cmXMLSafe6QuotesEb(ptr noundef nonnull align 8 dereferenceable(17) %5, i1 noundef zeroext false)
          to label %.noexc342 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc342:                                        ; preds = %.noexc341
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(24) %i.wg, i64 24, i1 false), !tbaa.struct !95
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22, !noalias !1346
  %i.wh = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZlsRSoRK9cmXMLSafe(ptr noundef nonnull align 8 dereferenceable(8) %i.wf, ptr noundef nonnull align 8 dereferenceable(17) %6)
          to label %bb.eo unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

bb.eo:                                            ; preds = %.noexc342
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  invoke void @_ZN11cmXMLWriter10EndElementEv(ptr noundef nonnull align 8 dereferenceable(83) %12)
          to label %bb.ep unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ep:                                            ; preds = %bb.eo
  %i.wi = load i32, ptr %i.b, align 4, !tbaa !123
  %i.wj = add nsw i32 %i.wi, 1
  store i32 %i.wj, ptr %i.b, align 4, !tbaa !123
  br label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4lessIS5_ESaISt4pairIKS5_S5_EEE4findERS9_.exit.thread

bb.eq:                                            ; preds = %._crit_edge.i.i333
  %i.wk = landingpad { ptr, i32 }
          cleanup
  %i.wl = load ptr, ptr %35, align 8, !tbaa !55   ; 2 uses
  %i.wm = icmp eq ptr %i.wl, %i.mt
  br i1 %i.wm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit346, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i344

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i344: ; preds = %bb.eq
  %i.wn = load i64, ptr %i.mt, align 8, !tbaa !48
  %i.wo = add i64 %i.wn, 1
  call void @_ZdlPvm(ptr noundef %i.wl, i64 noundef %i.wo) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit346

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit346: ; preds = %bb.eq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i344
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #22
  br label %.loopexit.split-lp.loopexit.split-lp

bb.er:                                            ; preds = %bb.em
  %i.wp = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #22
  br label %.loopexit.split-lp.loopexit.split-lp

_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4lessIS5_ESaISt4pairIKS5_S5_EEE4findERS9_.exit.thread: ; preds = %bb.ei, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS8_EPSt18_Rb_tree_node_baseRS7_.exit.i.i, %bb.df, %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4lessIS5_ESaISt4pairIKS5_S5_EEE4findERS9_.exit, %bb.ep, %.critedge
  %.340 = phi i32 [ %.138, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS8_EPSt18_Rb_tree_node_baseRS7_.exit.i.i ], [ %.037, %.critedge ], [ %.037, %bb.ep ], [ %.138, %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4lessIS5_ESaISt4pairIKS5_S5_EEE4findERS9_.exit ], [ %.138, %bb.df ], [ %.138, %bb.ei ]
  %.4 = phi i32 [ %.133, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS8_EPSt18_Rb_tree_node_baseRS7_.exit.i.i ], [ %.032, %.critedge ], [ %.032, %bb.ep ], [ %.133, %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4lessIS5_ESaISt4pairIKS5_S5_EEE4findERS9_.exit ], [ %.133, %bb.df ], [ %i.sd, %bb.ei ]
  %.3 = phi i8 [ 0, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS8_EPSt18_Rb_tree_node_baseRS7_.exit.i.i ], [ 0, %.critedge ], [ 1, %bb.ep ], [ 0, %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4lessIS5_ESaISt4pairIKS5_S5_EEE4findERS9_.exit ], [ 0, %bb.df ], [ 1, %bb.ei ]
  br label %bb.bs, !llvm.loop !1322

bb.es:                                            ; preds = %bb.bt
  %i.wq = trunc nuw i8 %.031 to i1
  br i1 %i.wq, label %bb.et, label %bb.ev

bb.et:                                            ; preds = %bb.es
  invoke void @_ZN11cmXMLWriter10EndElementEv(ptr noundef nonnull align 8 dereferenceable(83) %12)
          to label %bb.eu unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.eu:                                            ; preds = %bb.et
  invoke void @_ZN11cmXMLWriter10EndElementEv(ptr noundef nonnull align 8 dereferenceable(83) %12)
          to label %bb.ev unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ev:                                            ; preds = %bb.eu, %bb.es
  invoke void @_ZN22cmCTestCoverageHandler17EndCoverageLogXMLER11cmXMLWriter(ptr noundef nonnull align 8 dereferenceable(344) %0, ptr noundef nonnull align 8 dereferenceable(83) %12)
          to label %bb.ew unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ew:                                            ; preds = %bb.ev
  invoke void @_ZN22cmCTestCoverageHandler18EndCoverageLogFileER21cmGeneratedFileStreami(ptr noundef nonnull align 8 dereferenceable(344) %0, ptr noundef nonnull align 8 dereferenceable(348) %11, i32 noundef %.037)
          to label %.thread unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.thread:                                          ; preds = %bb.cz, %bb.ew
  %.277 = phi i32 [ 1, %bb.ew ], [ -1, %bb.cz ]
  %i.wr = load ptr, ptr %25, align 8, !tbaa !55   ; 2 uses
  %i.ws = icmp eq ptr %i.wr, %i.lm
  br i1 %i.ws, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit349, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i347

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i347: ; preds = %.thread
  %i.wt = load i64, ptr %i.lm, align 8, !tbaa !48
  %i.wu = add i64 %i.wt, 1
  call void @_ZdlPvm(ptr noundef %i.wr, i64 noundef %i.wu) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit349

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit349: ; preds = %.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i347
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #22
  %i.wv = load ptr, ptr %24, align 8, !tbaa !55   ; 2 uses
  %i.ww = icmp eq ptr %i.wv, %i.lk
  br i1 %i.ww, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit352, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i350

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i350: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit349
  %i.wx = load i64, ptr %i.lk, align 8, !tbaa !48
  %i.wy = add i64 %i.wx, 1
  call void @_ZdlPvm(ptr noundef %i.wv, i64 noundef %i.wy) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit352

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit352: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit349, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i350
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #22
  %i.wz = load ptr, ptr %i.ld, align 8, !tbaa !33
  invoke void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE8_M_eraseEPSt13_Rb_tree_nodeIS8_E(ptr noundef nonnull align 8 dereferenceable(48) %23, ptr noundef %i.wz)
          to label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4lessIS5_ESaISt4pairIKS5_S5_EEED2Ev.exit unwind label %bb.ex

bb.ex:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit352
  %i.xa = landingpad { ptr, i32 }
          catch ptr null
  %i.xb = extractvalue { ptr, i32 } %i.xa, 0
  call void @__clang_call_terminate(ptr %i.xb) #26
  unreachable

_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4lessIS5_ESaISt4pairIKS5_S5_EEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit352
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #22
  br label %bb.ez

.loopexit.split-lp.loopexit.split-lp:             ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.dz, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit312, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit315, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit318, %bb.ek, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit332, %bb.ch, %bb.dc, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit346, %bb.er
  %.pn109.pn.pn.pn = phi { ptr, i32 } [ %i.pg, %bb.ch ], [ %i.vz, %bb.ek ], [ %i.ut, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit312 ], [ %.pn94.pn, %bb.dc ], [ %i.wp, %bb.er ], [ %i.wk, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit346 ], [ %.pn97.pn, %bb.dz ], [ %i.ve, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit318 ], [ %.pn102, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit315 ], [ %i.vu, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit332 ], [ %lpad.loopexit.split-lp835, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  %i.xc = load ptr, ptr %25, align 8, !tbaa !55   ; 2 uses
  %i.xd = icmp eq ptr %i.xc, %i.lm
  br i1 %i.xd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit355, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i353

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i353: ; preds = %.loopexit.split-lp.loopexit.split-lp
  %i.xe = load i64, ptr %i.lm, align 8, !tbaa !48
  %i.xf = add i64 %i.xe, 1
  call void @_ZdlPvm(ptr noundef %i.xc, i64 noundef %i.xf) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit355
end_hunk_0
