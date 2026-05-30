inline.NumInlined: 1707
inline.NumDeleted: 606
begin_hunk_0_@_ZNK16OpenColorIO_v2_512_GLOBAL__N_115LocalFileFormat4readERSiRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_13InterpolationE:bb.a
_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit552: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit549, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i550
  call void @llvm.lifetime.end.p0(ptr nonnull %48) #26
  %.not942 = icmp eq ptr %i.tl, %i.ti
  br i1 %.not942, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %_ZNSt6vectorIiSaIiEE9push_backERKi.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit552
  %.sroa.15.0.lcssa = phi ptr [ null, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit552 ], [ %.sroa.15.2, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit ] ; 4 uses
  %.sroa.0829.0.lcssa = phi ptr [ null, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit552 ], [ %.sroa.0829.2, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit ] ; 10 uses
  %i.tz = load i64, ptr %i.ag, align 8, !tbaa !16 ; 2 uses
  switch i64 %i.tz, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit574.thread869 [
    i64 2, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
    i64 5, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit574
  ]

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit: ; preds = %._crit_edge
  %i.ua = load ptr, ptr %i.ae, align 8, !tbaa !29
  %i.ub = load i16, ptr %i.ua, align 1
  %i.uc = icmp ne i16 %i.ub, 25651
  %i.ud = zext i1 %i.uc to i32
  %i.ue = icmp eq i32 %i.ud, 0
  br i1 %i.ue, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit584.thread871

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i553: ; preds = %bb.dq
  %i.uf = load i64, ptr %i.rn, align 8, !tbaa !19
  %i.ug = add i64 %i.uf, 1
  call void @_ZdlPvm(ptr noundef %i.sv, i64 noundef %i.ug) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit555

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit555: ; preds = %bb.dq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i553, %bb.dk
  %.pn209.pn.pn.pn.pn = phi { ptr, i32 } [ %i.sl, %bb.dk ], [ %.pn209.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i553 ], [ %.pn209.pn.pn, %bb.dq ]
  call void @llvm.lifetime.end.p0(ptr nonnull %45) #26
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit629

bb.dt:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit523
  %i.uh = landingpad { ptr, i32 }
          cleanup
  %i.ui = load ptr, ptr %49, align 8, !tbaa !29   ; 2 uses
  %i.uj = icmp eq ptr %i.ui, %i.tc
  br i1 %i.uj, label %.body576.thread885, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i556

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i556: ; preds = %bb.dt
  %i.uk = load i64, ptr %i.tc, align 8, !tbaa !19
  %i.ul = add i64 %i.uk, 1
  call void @_ZdlPvm(ptr noundef %i.ui, i64 noundef %i.ul) #28
  br label %.body576.thread885

.body576.thread885:                               ; preds = %bb.dt, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i556
  call void @llvm.lifetime.end.p0(ptr nonnull %48) #26
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit629

.lr.ph:                                           ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit552, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit
  %.pre961968 = phi ptr [ %.pre961969, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit ], [ %i.ti, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit552 ] ; 2 uses
  %.pre960965 = phi ptr [ %.pre960966, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit ], [ %i.tl, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit552 ] ; 2 uses
  %i.um = phi ptr [ %i.wa, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit ], [ %i.ti, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit552 ] ; 4 uses
  %i.un = phi ptr [ %i.wb, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit ], [ %i.tl, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit552 ]
  %i.uo = phi i64 [ %i.wd, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit ], [ 0, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit552 ]
  %.0123937 = phi i32 [ %i.wc, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit ], [ 0, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit552 ]
  %.sroa.0829.0936 = phi ptr [ %.sroa.0829.2, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit ], [ null, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit552 ] ; 7 uses
  %.sroa.12.0935 = phi ptr [ %.sroa.12.1, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit ], [ null, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit552 ] ; 6 uses
  %.sroa.15.0934 = phi ptr [ %.sroa.15.2, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit ], [ null, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit552 ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l) #26
  store i32 -1, ptr %i.l, align 4, !tbaa !3
  %i.up = getelementptr inbounds nuw [32 x i8], ptr %i.um, i64 %i.uo
  %i.uq = load ptr, ptr %i.up, align 8, !tbaa !29
  %i.ur = invoke noundef zeroext i1 @_ZN16OpenColorIO_v2_511StringToIntEPiPKcb(ptr noundef nonnull %i.l, ptr noundef %i.uq, i1 noundef zeroext false)
          to label %bb.du unwind label %.loopexit

bb.du:                                            ; preds = %.lr.ph
  br i1 %i.ur, label %bb.ef, label %bb.dv

bb.dv:                                            ; preds = %bb.du
  call void @llvm.lifetime.start.p0(ptr nonnull %50) #26
  invoke void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %50)
          to label %bb.dw unwind label %bb.dz

bb.dw:                                            ; preds = %bb.dv
  %i.us = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %50, ptr noundef nonnull @.str.23, i64 noundef 34)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit560 unwind label %bb.ea ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit560: ; preds = %bb.dw
  %i.ut = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %50, ptr noundef nonnull @.str.11, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit562 unwind label %bb.ea ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit562: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit560
  %i.uu = load ptr, ptr %i.um, align 8, !tbaa !29
  %i.uv = getelementptr inbounds nuw i8, ptr %i.um, i64 8
  %i.uw = load i64, ptr %i.uv, align 8, !tbaa !16
  %i.ux = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %50, ptr noundef %i.uu, i64 noundef %i.uw)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit564 unwind label %bb.ea

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit564: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit562
  %i.uy = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ux, ptr noundef nonnull @.str.11, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit566 unwind label %bb.ea ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit566: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit564
  %i.uz = call ptr @__cxa_allocate_exception(i64 16) #26 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %51) #26
  invoke void @_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %51, ptr noundef nonnull align 8 dereferenceable(112) %50)
          to label %bb.dx unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit569.thread

bb.dx:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit566
  %i.va = load ptr, ptr %51, align 8, !tbaa !29
  invoke void @_ZN16OpenColorIO_v2_59ExceptionC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.uz, ptr noundef %i.va)
          to label %bb.dy unwind label %bb.eb

bb.dy:                                            ; preds = %bb.dx
  invoke void @__cxa_throw(ptr nonnull %i.uz, ptr nonnull @_ZTIN16OpenColorIO_v2_59ExceptionE, ptr nonnull @_ZN16OpenColorIO_v2_59ExceptionD1Ev) #29
          to label %bb.kn unwind label %bb.eb

.loopexit:                                        ; preds = %.lr.ph, %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i
  %.sroa.15.0934.lcssa = phi ptr [ %.sroa.15.0934, %.lr.ph ], [ %.sroa.12.0935, %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i ]
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body576

.loopexit.split-lp:                               ; preds = %bb.ei
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body576

bb.dz:                                            ; preds = %bb.dv
  %i.vb = landingpad { ptr, i32 }
          cleanup
  br label %bb.ee

bb.ea:                                            ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit564, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit562, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit560, %bb.dw
  %i.vc = landingpad { ptr, i32 }
          cleanup
  br label %bb.ed

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit569.thread: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit566
  %i.vd = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %51) #26
  br label %bb.ec

bb.eb:                                            ; preds = %bb.dy, %bb.dx
  %.0121 = phi i1 [ false, %bb.dy ], [ true, %bb.dx ] ; 2 uses
  %i.ve = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.vf = load ptr, ptr %51, align 8, !tbaa !29   ; 2 uses
  %i.vg = getelementptr inbounds nuw i8, ptr %51, i64 16 ; 2 uses
  %i.vh = icmp eq ptr %i.vf, %i.vg
  br i1 %i.vh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit569, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i567

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i567: ; preds = %bb.eb
  %i.vi = load i64, ptr %i.vg, align 8, !tbaa !19
  %i.vj = add i64 %i.vi, 1
  call void @_ZdlPvm(ptr noundef %i.vf, i64 noundef %i.vj) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %51) #26
  br i1 %.0121, label %bb.ec, label %bb.ed

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit569: ; preds = %bb.eb
  call void @llvm.lifetime.end.p0(ptr nonnull %51) #26
  br i1 %.0121, label %bb.ec, label %bb.ed

bb.ec:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i567, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit569.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit569
  %.pn201868 = phi { ptr, i32 } [ %i.vd, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit569.thread ], [ %i.ve, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit569 ], [ %i.ve, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i567 ]
  call void @__cxa_free_exception(ptr %i.uz) #26
  br label %bb.ed

bb.ed:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i567, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit569, %bb.ec, %bb.ea
  %.pn201.pn = phi { ptr, i32 } [ %.pn201868, %bb.ec ], [ %i.ve, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit569 ], [ %i.vc, %bb.ea ], [ %i.ve, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i567 ]
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %50) #26
  br label %bb.ee

bb.ee:                                            ; preds = %bb.ed, %bb.dz
  %.pn201.pn.pn = phi { ptr, i32 } [ %.pn201.pn, %bb.ed ], [ %i.vb, %bb.dz ]
  call void @llvm.lifetime.end.p0(ptr nonnull %50) #26
  br label %.body576

bb.ef:                                            ; preds = %bb.du
  %.not.i = icmp eq ptr %.sroa.12.0935, %.sroa.15.0934
  br i1 %.not.i, label %bb.eh, label %bb.eg

bb.eg:                                            ; preds = %bb.ef
  %i.vk = load i32, ptr %i.l, align 4, !tbaa !3
  store i32 %i.vk, ptr %.sroa.12.0935, align 4, !tbaa !3
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit

bb.eh:                                            ; preds = %bb.ef
  %i.vl = ptrtoint ptr %.sroa.12.0935 to i64
  %i.vm = ptrtoint ptr %.sroa.0829.0936 to i64
  %i.vn = sub i64 %i.vl, %i.vm                    ; 6 uses
  %i.vo = icmp eq i64 %i.vn, 9223372036854775804
  br i1 %i.vo, label %bb.ei, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i

bb.ei:                                            ; preds = %bb.eh
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.3) #29
          to label %.noexc571.a unwind label %.loopexit.split-lp

.noexc571.a:                                      ; preds = %bb.ei
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.eh
  %i.vp = ashr exact i64 %i.vn, 2                 ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.vp, i64 1)
  %i.vq = add nsw i64 %.sroa.speculated.i.i.i, %i.vp ; 2 uses
  %i.vr = icmp ult i64 %i.vq, %i.vp
  %i.vs = call i64 @llvm.umin.i64(i64 %i.vq, i64 2305843009213693951)
  %i.vt = select i1 %i.vr, i64 2305843009213693951, i64 %i.vs ; 2 uses
  %i.vu = shl nuw nsw i64 %i.vt, 2
  %i.vv = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.vu) #27
          to label %.noexc572 unwind label %.loopexit ; 4 uses

.noexc572:                                        ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i
  %i.vw = getelementptr inbounds i8, ptr %i.vv, i64 %i.vn ; 2 uses
  %i.vx = load i32, ptr %i.l, align 4, !tbaa !3
  store i32 %i.vx, ptr %i.vw, align 4, !tbaa !3
  %i.vy = icmp sgt i64 %i.vn, 0
  br i1 %i.vy, label %bb.ej, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i

bb.ej:                                            ; preds = %.noexc572
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.vv, ptr align 4 %.sroa.0829.0936, i64 %i.vn, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i: ; preds = %bb.ej, %.noexc572
  %.not.i17.i.i = icmp eq ptr %.sroa.0829.0936, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i, label %bb.ek

bb.ek:                                            ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0829.0936, i64 noundef %i.vn) #28
  %.pre960.pre = load ptr, ptr %i.gx, align 8, !tbaa !73
  %.pre961.pre = load ptr, ptr %22, align 16, !tbaa !71
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i: ; preds = %bb.ek, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i
  %.pre961.a = phi ptr [ %.pre961.pre, %bb.ek ], [ %.pre961968, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i ] ; 2 uses
  %.pre960.a = phi ptr [ %.pre960.pre, %bb.ek ], [ %.pre960965, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i ] ; 2 uses
  %i.vz = getelementptr inbounds nuw [4 x i8], ptr %i.vv, i64 %i.vt
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit

_ZNSt6vectorIiSaIiEE9push_backERKi.exit:          ; preds = %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i, %bb.eg
  %.pre961969 = phi ptr [ %.pre961.a, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i ], [ %.pre961968, %bb.eg ]
  %.pre960966 = phi ptr [ %.pre960.a, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i ], [ %.pre960965, %bb.eg ]
  %i.wa = phi ptr [ %.pre961.a, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i ], [ %i.um, %bb.eg ] ; 2 uses
  %i.wb = phi ptr [ %.pre960.a, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i ], [ %i.un, %bb.eg ] ; 2 uses
  %.sroa.15.2 = phi ptr [ %i.vz, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i ], [ %.sroa.15.0934, %bb.eg ] ; 2 uses
  %.pn915 = phi ptr [ %i.vw, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i ], [ %.sroa.12.0935, %bb.eg ]
  %.sroa.0829.2 = phi ptr [ %i.vv, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i ], [ %.sroa.0829.0936, %bb.eg ] ; 2 uses
  %.sroa.12.1 = getelementptr inbounds nuw i8, ptr %.pn915, i64 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #26
  %i.wc = add i32 %.0123937, 1                    ; 2 uses
  %i.wd = zext i32 %i.wc to i64                   ; 2 uses
  %i.we = ptrtoint ptr %i.wb to i64
  %i.wf = ptrtoint ptr %i.wa to i64
  %i.wg = sub i64 %i.we, %i.wf
  %i.wh = ashr exact i64 %i.wg, 5
  %i.wi = icmp ugt i64 %i.wh, %i.wd
  br i1 %i.wi, label %.lr.ph, label %._crit_edge, !llvm.loop !92

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit574: ; preds = %._crit_edge
  %i.wj = load ptr, ptr %i.ae, align 8, !tbaa !29 ; 2 uses
  %i.wk = load i32, ptr %i.wj, align 1
  %i.wl = xor i32 %i.wk, 824927283
  %i.wm = getelementptr i8, ptr %i.wj, i64 4
  %i.wn = load i8, ptr %i.wm, align 1
  %i.wo = zext i8 %i.wn to i32
  %i.wp = xor i32 %i.wo, 100
  %i.wq = or i32 %i.wl, %i.wp
  %i.wr = icmp ne i32 %i.wq, 0
  %i.ws = zext i1 %i.wr to i32
  %i.wt = icmp eq i32 %i.ws, 0
  br i1 %i.wt, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit584

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit574, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  %i.wu = load i32, ptr %.sroa.0829.0.lcssa, align 4, !tbaa !3
  %i.wv = invoke noalias noundef nonnull dereferenceable(248) ptr @_Znwm(i64 noundef 248) #27
          to label %.noexc575 unwind label %bb.eu ; 6 uses

.noexc575:                                        ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread
  %i.ww = getelementptr inbounds nuw i8, ptr %i.wv, i64 8
  store i32 1, ptr %i.ww, align 8, !tbaa !42, !noalias !93
  %i.wx = getelementptr inbounds nuw i8, ptr %i.wv, i64 12
  store i32 1, ptr %i.wx, align 4, !tbaa !44, !noalias !93
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_511Lut3DOpDataESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.wv, align 8, !tbaa !11, !noalias !93
  %i.wy = getelementptr inbounds nuw i8, ptr %i.wv, i64 16 ; 2 uses
  %i.wz = load i32, ptr %.sroa.0829.0.lcssa, align 4, !tbaa !3, !noalias !93
  %i.xa = sext i32 %i.wz to i64
  invoke void @_ZN16OpenColorIO_v2_511Lut3DOpDataC1Em(ptr noundef nonnull align 8 dereferenceable(232) %i.wy, i64 noundef %i.xa)
          to label %_ZSt11make_sharedIN16OpenColorIO_v2_511Lut3DOpDataEJRiEESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueES5_E4typeEEDpOT0_.exit unwind label %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_511Lut3DOpDataESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit10.i.i.i.i, !noalias !93

_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_511Lut3DOpDataESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit10.i.i.i.i: ; preds = %.noexc575
  %i.xb = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.wv, i64 noundef 248) #28, !noalias !93
  br label %.body576.thread

_ZSt11make_sharedIN16OpenColorIO_v2_511Lut3DOpDataEJRiEESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueES5_E4typeEEDpOT0_.exit: ; preds = %.noexc575
  store ptr %i.wy, ptr %20, align 8, !tbaa !96
  %i.xc = getelementptr inbounds nuw i8, ptr %20, i64 8 ; 2 uses
  %i.xd = load ptr, ptr %i.xc, align 8, !tbaa !97 ; 8 uses
  store ptr %i.wv, ptr %i.xc, align 8, !tbaa !97
  %.not.i.i.i.i578 = icmp eq ptr %i.xd, null
  br i1 %.not.i.i.i.i578, label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_511Lut3DOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.el

bb.el:                                            ; preds = %_ZSt11make_sharedIN16OpenColorIO_v2_511Lut3DOpDataEJRiEESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueES5_E4typeEEDpOT0_.exit
  %i.xe = getelementptr inbounds nuw i8, ptr %i.xd, i64 8 ; 4 uses
  %i.xf = load atomic i64, ptr %i.xe acquire, align 8 ; 2 uses
  %i.xg = icmp eq i64 %i.xf, 4294967297
  %i.xh = trunc i64 %i.xf to i32                  ; 2 uses
  br i1 %i.xg, label %bb.em, label %bb.en

bb.em:                                            ; preds = %bb.el
  store i32 0, ptr %i.xe, align 8, !tbaa !42
  %i.xi = getelementptr inbounds nuw i8, ptr %i.xd, i64 12
  store i32 0, ptr %i.xi, align 4, !tbaa !44
  %i.xj = load ptr, ptr %i.xd, align 8, !tbaa !11
  %i.xk = getelementptr inbounds nuw i8, ptr %i.xj, i64 16
  %i.xl = load ptr, ptr %i.xk, align 8
  call void %i.xl(ptr noundef nonnull align 8 dereferenceable(16) %i.xd) #26, !inline_history !98
  %i.xm = load ptr, ptr %i.xd, align 8, !tbaa !11
  %i.xn = getelementptr inbounds nuw i8, ptr %i.xm, i64 24
  %i.xo = load ptr, ptr %i.xn, align 8
  call void %i.xo(ptr noundef nonnull align 8 dereferenceable(16) %i.xd) #26, !inline_history !98
  br label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_511Lut3DOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.en:                                            ; preds = %bb.el
  %i.xp = load i8, ptr @__libc_single_threaded, align 1, !tbaa !19
  %.not.i.i.i.i.i579 = icmp eq i8 %i.xp, 0
  br i1 %.not.i.i.i.i.i579, label %bb.ep, label %bb.eo

bb.eo:                                            ; preds = %bb.en
  %i.xq = add nsw i32 %i.xh, -1
  store i32 %i.xq, ptr %i.xe, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.ep:                                            ; preds = %bb.en
  %i.xr = atomicrmw volatile add ptr %i.xe, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.ep, %bb.eo
  %.0.i.i.i.i.i.i = phi i32 [ %i.xh, %bb.eo ], [ %i.xr, %bb.ep ]
  %i.xs = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.xs, label %bb.eq, label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_511Lut3DOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !99

bb.eq:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.xd) #26
  br label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_511Lut3DOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN16OpenColorIO_v2_511Lut3DOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.eq, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.em, %_ZSt11make_sharedIN16OpenColorIO_v2_511Lut3DOpDataEJRiEESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueES5_E4typeEEDpOT0_.exit
  %i.xt = invoke noundef zeroext i1 @_ZN16OpenColorIO_v2_511Lut3DOpData20IsValidInterpolationENS_13InterpolationE(i32 noundef %4)
          to label %bb.er unwind label %bb.et

bb.er:                                            ; preds = %_ZNSt12__shared_ptrIN16OpenColorIO_v2_511Lut3DOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %.pre962 = load ptr, ptr %20, align 8, !tbaa !100 ; 2 uses
  br i1 %i.xt, label %bb.es, label %bb.ev

bb.es:                                            ; preds = %bb.er
  invoke void @_ZN16OpenColorIO_v2_511Lut3DOpData16setInterpolationENS_13InterpolationE(ptr noundef nonnull align 8 dereferenceable(232) %.pre962, i32 noundef %4)
          to label %bb.ev unwind label %bb.et

bb.et:                                            ; preds = %bb.es, %_ZNSt12__shared_ptrIN16OpenColorIO_v2_511Lut3DOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.xu = landingpad { ptr, i32 }
          cleanup
  br label %.body576.thread

bb.eu:                                            ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread
  %i.xv = landingpad { ptr, i32 }
          cleanup
  br label %.body576.thread

bb.ev:                                            ; preds = %bb.es, %bb.er
  %i.xw = getelementptr inbounds nuw i8, ptr %.pre962, i64 228
  store i32 8, ptr %i.xw, align 4, !tbaa !101
  %.pre963 = load i64, ptr %i.ag, align 8, !tbaa !16
  br label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit574.thread869

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit574.thread869: ; preds = %._crit_edge, %bb.ev
  %i.xx = phi i64 [ %.pre963, %bb.ev ], [ %i.tz, %._crit_edge ]
  %.0126 = phi i32 [ %i.wu, %bb.ev ], [ -1, %._crit_edge ] ; 4 uses
  switch i64 %i.xx, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit584.thread871 [
    i64 1, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit582
    i64 5, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit584
  ]

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit582: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit574.thread869
  %i.xy = load ptr, ptr %i.ae, align 8, !tbaa !29
  %lhsc = load i8, ptr %i.xy, align 1
  %i.xz = icmp eq i8 %lhsc, 99
  br i1 %i.xz, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit584.thread871.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit584.thread871

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit584.thread871.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit582
  %i.ya = load i32, ptr %.sroa.0829.0.lcssa, align 4, !tbaa !3
  br label %bb.ew

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit584: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit574.thread869, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit574
  %.012611931208 = phi i32 [ %.0126, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit574.thread869 ], [ -1, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit574 ] ; 2 uses
  %i.yb = load ptr, ptr %i.ae, align 8, !tbaa !29 ; 2 uses
  %i.yc = load i32, ptr %i.yb, align 1
  %i.yd = xor i32 %i.yc, 824927283
  %i.ye = getelementptr i8, ptr %i.yb, i64 4
  %i.yf = load i8, ptr %i.ye, align 1
  %i.yg = zext i8 %i.yf to i32
  %i.yh = xor i32 %i.yg, 100
  %i.yi = or i32 %i.yd, %i.yh
  %i.yj = icmp ne i32 %i.yi, 0
  %i.yk = zext i1 %i.yj to i32
  %i.yl = icmp eq i32 %i.yk, 0
  br i1 %i.yl, label %.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit584.thread871

end_hunk_0
begin_hunk_1_@_ZNK16OpenColorIO_v2_512_GLOBAL__N_115LocalFileFormat4readERSiRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_13InterpolationE:bb.a

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit54.i: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i
  %i.acl = load ptr, ptr %9, align 8, !tbaa !29
  %i.acm = load i64, ptr %i.zf, align 8, !tbaa !16
  %i.acn = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %10, ptr noundef %i.acl, i64 noundef %i.acm)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit56.i unwind label %bb.fs

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit56.i: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit54.i
  %i.aco = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.acn, ptr noundef nonnull @.str.11, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit58.i unwind label %bb.fs ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit58.i: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit56.i
  %i.acp = call ptr @__cxa_allocate_exception(i64 16) #26 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #26
  invoke void @_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %11, ptr noundef nonnull align 8 dereferenceable(112) %10)
          to label %bb.fn unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit64.thread.i

bb.fn:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit58.i
  %i.acq = load ptr, ptr %11, align 8, !tbaa !29
  invoke void @_ZN16OpenColorIO_v2_59ExceptionC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.acp, ptr noundef %i.acq)
          to label %bb.fo unwind label %bb.ft

bb.fo:                                            ; preds = %bb.fn
  invoke void @__cxa_throw(ptr nonnull %i.acp, ptr nonnull @_ZTIN16OpenColorIO_v2_59ExceptionE, ptr nonnull @_ZN16OpenColorIO_v2_59ExceptionD1Ev) #29
          to label %bb.gt unwind label %bb.ft

bb.fp:                                            ; preds = %.noexc.i.i604
  %i.acr = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26
  br label %bb.gs

bb.fq:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50.i
  %i.acs = landingpad { ptr, i32 }
          cleanup
  br label %bb.fx

bb.fr:                                            ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread.i
  %i.act = landingpad { ptr, i32 }
          cleanup
  br label %bb.fw

bb.fs:                                            ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit56.i, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit54.i, %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i, %bb.fm
  %i.acu = landingpad { ptr, i32 }
          cleanup
  br label %bb.fv

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit64.thread.i: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit58.i
  %i.acv = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #26
  br label %bb.fu

bb.ft:                                            ; preds = %bb.fo, %bb.fn
  %.028.i = phi i1 [ false, %bb.fo ], [ true, %bb.fn ] ; 2 uses
  %i.acw = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.acx = load ptr, ptr %11, align 8, !tbaa !29  ; 2 uses
  %i.acy = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  %i.acz = icmp eq ptr %i.acx, %i.acy
  br i1 %i.acz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit64.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i62.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i62.i: ; preds = %bb.ft
  %i.ada = load i64, ptr %i.acy, align 8, !tbaa !19
  %i.adb = add i64 %i.ada, 1
  call void @_ZdlPvm(ptr noundef %i.acx, i64 noundef %i.adb) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #26
  br i1 %.028.i, label %bb.fu, label %bb.fv

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit64.i: ; preds = %bb.ft
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #26
  br i1 %.028.i, label %bb.fu, label %bb.fv

bb.fu:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit64.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i62.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit64.thread.i
  %.pn31108.i = phi { ptr, i32 } [ %i.acv, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit64.thread.i ], [ %i.acw, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit64.i ], [ %i.acw, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i62.i ]
  call void @__cxa_free_exception(ptr %i.acp) #26
  br label %bb.fv

bb.fv:                                            ; preds = %bb.fu, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit64.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i62.i, %bb.fs
  %.pn31.pn.i = phi { ptr, i32 } [ %.pn31108.i, %bb.fu ], [ %i.acw, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit64.i ], [ %i.acu, %bb.fs ], [ %i.acw, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i62.i ]
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %10) #26
  br label %bb.fw

bb.fw:                                            ; preds = %bb.fv, %bb.fr
  %.pn31.pn.pn.i = phi { ptr, i32 } [ %.pn31.pn.i, %bb.fv ], [ %i.act, %bb.fr ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #26
  br label %bb.fx

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread105.i: ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i
  %i.adc = icmp eq ptr %i.acf, %i.ze
  br i1 %i.adc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit67.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i65.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i65.i: ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread105.i
  %i.add = load i64, ptr %i.ze, align 8, !tbaa !19
  %i.ade = add i64 %i.add, 1
  call void @_ZdlPvm(ptr noundef nonnull %i.acf, i64 noundef %i.ade) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit67.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit67.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i65.i, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread105.i
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit.i.backedge

bb.fx:                                            ; preds = %bb.fw, %bb.fq
  %.pn31.pn.pn.pn.i = phi { ptr, i32 } [ %.pn31.pn.pn.i, %bb.fw ], [ %i.acs, %bb.fq ]
  %i.adf = load ptr, ptr %9, align 8, !tbaa !29   ; 2 uses
  %i.adg = icmp eq ptr %i.adf, %i.ze
  br i1 %i.adg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i68.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i68.i: ; preds = %bb.fx
  %i.adh = load i64, ptr %i.ze, align 8, !tbaa !19
  %i.adi = add i64 %i.adh, 1
  call void @_ZdlPvm(ptr noundef %i.adf, i64 noundef %i.adi) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70.i: ; preds = %bb.fx, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i68.i
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #26
  br label %bb.gs

bb.fy:                                            ; preds = %bb.ey
  br i1 %i.zp, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit72.i, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit72.thread109.i

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit72.i: ; preds = %bb.fy
  %lhsc160.i = load i8, ptr %.pre128.i, align 1
  %i.adj = icmp eq i8 %lhsc160.i, 125
  br i1 %i.adj, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit72.thread.i, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit72.thread109.i

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit72.thread.i: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit72.i
  %i.adk = load i64, ptr %i.yx, align 8, !tbaa !16
  %i.adl = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %5, i64 noundef 0, i64 noundef %i.adk, ptr noundef nonnull @.str.56, i64 noundef 0)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit.i.backedge unwind label %bb.fa ; 0 uses

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit72.thread109.i: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit72.i, %bb.fy
  %i.adm = getelementptr inbounds nuw i8, ptr %.pre128.i, i64 %i.zo
  %.not124.i = icmp eq ptr %.pre128.i, null
  %i.adn = icmp samesign eq i64 %i.zo, 0
  %or.cond20.i.i = or i1 %i.adn, %.not124.i
  br i1 %or.cond20.i.i, label %_ZN16OpenColorIO_v2_511NumberUtils10from_charsEPKcS2_Rf.exit.thread.i, label %bb.fz

bb.fz:                                            ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit72.thread109.i
  %i.ado = tail call ptr @__errno_location() #31  ; 2 uses
  store i32 0, ptr %i.ado, align 4, !tbaa !3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #26
  store ptr null, ptr %i.b, align 8, !tbaa !135
  %i.adp = load ptr, ptr @_ZN16OpenColorIO_v2_511NumberUtilsL3locE, align 8, !tbaa !7
  %i.adq = call float @strtof_l(ptr noundef nonnull %.pre128.i, ptr noundef nonnull %i.b, ptr noundef %i.adp) #26 ; 2 uses
  %i.adr = load i32, ptr %i.ado, align 4, !tbaa !3
  %.not.i.i608 = icmp eq i32 %i.adr, 0
  br i1 %.not.i.i608, label %bb.ga, label %_ZN16OpenColorIO_v2_511NumberUtils10from_charsEPKcS2_Rf.exit.thread115.i

bb.ga:                                            ; preds = %bb.fz
  %i.ads = load ptr, ptr %i.b, align 8, !tbaa !135 ; 2 uses
  %i.adt = icmp eq ptr %i.ads, %.pre128.i
  %.not19.i.i = icmp ugt ptr %i.ads, %i.adm
  %or.cond.i = or i1 %i.adt, %.not19.i.i
  br i1 %or.cond.i, label %_ZN16OpenColorIO_v2_511NumberUtils10from_charsEPKcS2_Rf.exit.thread115.i, label %bb.gb

_ZN16OpenColorIO_v2_511NumberUtils10from_charsEPKcS2_Rf.exit.thread115.i: ; preds = %bb.ga, %bb.fz
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #26
  br label %_ZN16OpenColorIO_v2_511NumberUtils10from_charsEPKcS2_Rf.exit.thread.i

bb.gb:                                            ; preds = %bb.ga
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #26
  %i.adu = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIfSaIfEESt4lessIS5_ESaISt4pairIKS5_S8_EEEixERSC_(ptr noundef nonnull align 8 dereferenceable(48) %52, ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %bb.gc unwind label %.loopexit.i ; 4 uses

bb.gc:                                            ; preds = %bb.gb
  %i.adv = getelementptr inbounds nuw i8, ptr %i.adu, i64 8 ; 3 uses
  %i.adw = load ptr, ptr %i.adv, align 8, !tbaa !136 ; 4 uses
  %i.adx = getelementptr inbounds nuw i8, ptr %i.adu, i64 16 ; 2 uses
  %i.ady = load ptr, ptr %i.adx, align 8, !tbaa !137
  %.not.i75.i = icmp eq ptr %i.adw, %i.ady
  br i1 %.not.i75.i, label %bb.ge, label %bb.gd

bb.gd:                                            ; preds = %bb.gc
  store float %i.adq, ptr %i.adw, align 4, !tbaa !39
  %i.adz = getelementptr inbounds nuw i8, ptr %i.adw, i64 4
  store ptr %i.adz, ptr %i.adv, align 8, !tbaa !136
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit.i.backedge

bb.ge:                                            ; preds = %bb.gc
  %i.aea = load ptr, ptr %i.adu, align 8, !tbaa !138 ; 4 uses
  %i.aeb = ptrtoint ptr %i.adw to i64
  %i.aec = ptrtoint ptr %i.aea to i64
  %i.aed = sub i64 %i.aeb, %i.aec                 ; 6 uses
  %i.aee = icmp eq i64 %i.aed, 9223372036854775804
  br i1 %i.aee, label %bb.gf, label %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i.i

bb.gf:                                            ; preds = %bb.ge
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.3) #29
          to label %.noexc76.i unwind label %.loopexit.split-lp.i

.noexc76.i:                                       ; preds = %bb.gf
  unreachable

_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.ge
  %i.aef = ashr exact i64 %i.aed, 2               ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.aef, i64 1)
  %i.aeg = add nsw i64 %.sroa.speculated.i.i.i.i, %i.aef ; 2 uses
  %i.aeh = icmp ult i64 %i.aeg, %i.aef
  %i.aei = call i64 @llvm.umin.i64(i64 %i.aeg, i64 2305843009213693951)
  %i.aej = select i1 %i.aeh, i64 2305843009213693951, i64 %i.aei ; 2 uses
  %i.aek = shl nuw nsw i64 %i.aej, 2
  %i.ael = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.aek) #27
          to label %.noexc77.i unwind label %.loopexit.i ; 4 uses

.noexc77.i:                                       ; preds = %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i.i
  %i.aem = getelementptr inbounds i8, ptr %i.ael, i64 %i.aed ; 2 uses
  store float %i.adq, ptr %i.aem, align 4, !tbaa !39
  %i.aen = icmp sgt i64 %i.aed, 0
  br i1 %i.aen, label %bb.gg, label %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i.i

bb.gg:                                            ; preds = %.noexc77.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.ael, ptr align 4 %i.aea, i64 %i.aed, i1 false)
  br label %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i.i

_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i.i: ; preds = %bb.gg, %.noexc77.i
  %i.aeo = getelementptr inbounds nuw i8, ptr %i.aem, i64 4
  %.not.i17.i.i.i = icmp eq ptr %i.aea, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i.i, label %bb.gh

bb.gh:                                            ; preds = %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.aea, i64 noundef %i.aed) #28
  br label %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i.i

_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i.i: ; preds = %bb.gh, %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i.i
  store ptr %i.ael, ptr %i.adu, align 8, !tbaa !138
  store ptr %i.aeo, ptr %i.adv, align 8, !tbaa !136
  %i.aep = getelementptr inbounds nuw [4 x i8], ptr %i.ael, i64 %i.aej
  store ptr %i.aep, ptr %i.adx, align 8, !tbaa !137
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit.i.backedge

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit.i.backedge: ; preds = %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i.i, %bb.gd, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit72.thread.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit67.i, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread.i607
  %.011.i.be = phi i1 [ true, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread.i607 ], [ false, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit72.thread.i ], [ true, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit67.i ], [ true, %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i.i ], [ true, %bb.gd ]
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit.i, !llvm.loop !139

.loopexit.i:                                      ; preds = %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i.i, %bb.gb
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.gs

.loopexit.split-lp.i:                             ; preds = %bb.gf
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.gs

_ZN16OpenColorIO_v2_511NumberUtils10from_charsEPKcS2_Rf.exit.thread.i: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit72.thread109.i, %_ZN16OpenColorIO_v2_511NumberUtils10from_charsEPKcS2_Rf.exit.thread115.i
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #26
  invoke void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %12)
          to label %bb.gi unwind label %bb.gl

bb.gi:                                            ; preds = %_ZN16OpenColorIO_v2_511NumberUtils10from_charsEPKcS2_Rf.exit.thread.i
  %i.aeq = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %12, ptr noundef nonnull @.str.57, i64 noundef 23)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit79.i unwind label %bb.gm ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit79.i: ; preds = %bb.gi
  %i.aer = load ptr, ptr %5, align 8, !tbaa !29
  %i.aes = load i64, ptr %i.yx, align 8, !tbaa !16
  %i.aet = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %12, ptr noundef %i.aer, i64 noundef %i.aes)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit81.i unwind label %bb.gm ; 0 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit81.i: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit79.i
  %i.aeu = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %12, ptr noundef nonnull @.str.58, i64 noundef 7)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit83.i unwind label %bb.gm ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit83.i: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit81.i
  %i.aev = load ptr, ptr %6, align 8, !tbaa !29
  %i.aew = load i64, ptr %i.yz, align 8, !tbaa !16
  %i.aex = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %12, ptr noundef %i.aev, i64 noundef %i.aew)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit85.i unwind label %bb.gm

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit85.i: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit83.i
  %i.aey = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.aex, ptr noundef nonnull @.str.11, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit87.i unwind label %bb.gm ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit87.i: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit85.i
  %i.aez = call ptr @__cxa_allocate_exception(i64 16) #26 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #26
  invoke void @_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %13, ptr noundef nonnull align 8 dereferenceable(112) %12)
          to label %bb.gj unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit90.thread.i

bb.gj:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit87.i
  %i.afa = load ptr, ptr %13, align 8, !tbaa !29
  invoke void @_ZN16OpenColorIO_v2_59ExceptionC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.aez, ptr noundef %i.afa)
          to label %bb.gk unwind label %bb.gn

bb.gk:                                            ; preds = %bb.gj
  invoke void @__cxa_throw(ptr nonnull %i.aez, ptr nonnull @_ZTIN16OpenColorIO_v2_59ExceptionE, ptr nonnull @_ZN16OpenColorIO_v2_59ExceptionD1Ev) #29
          to label %bb.gt unwind label %bb.gn

bb.gl:                                            ; preds = %_ZN16OpenColorIO_v2_511NumberUtils10from_charsEPKcS2_Rf.exit.thread.i
  %i.afb = landingpad { ptr, i32 }
          cleanup
  br label %bb.gq

bb.gm:                                            ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit85.i, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit83.i, %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit81.i, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit79.i, %bb.gi
  %i.afc = landingpad { ptr, i32 }
          cleanup
  br label %bb.gp

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit90.thread.i: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit87.i
  %i.afd = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #26
  br label %bb.go

bb.gn:                                            ; preds = %bb.gk, %bb.gj
  %.09.i = phi i1 [ false, %bb.gk ], [ true, %bb.gj ] ; 2 uses
  %i.afe = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.aff = load ptr, ptr %13, align 8, !tbaa !29  ; 2 uses
  %i.afg = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 2 uses
  %i.afh = icmp eq ptr %i.aff, %i.afg
  br i1 %i.afh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit90.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i88.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i88.i: ; preds = %bb.gn
  %i.afi = load i64, ptr %i.afg, align 8, !tbaa !19
  %i.afj = add i64 %i.afi, 1
  call void @_ZdlPvm(ptr noundef %i.aff, i64 noundef %i.afj) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #26
  br i1 %.09.i, label %bb.go, label %bb.gp

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit90.i: ; preds = %bb.gn
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #26
  br i1 %.09.i, label %bb.go, label %bb.gp

bb.go:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit90.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i88.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit90.thread.i
  %.pn36123.i = phi { ptr, i32 } [ %i.afd, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit90.thread.i ], [ %i.afe, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit90.i ], [ %i.afe, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i88.i ]
  call void @__cxa_free_exception(ptr %i.aez) #26
  br label %bb.gp

bb.gp:                                            ; preds = %bb.go, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit90.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i88.i, %bb.gm
  %.pn36.pn.i = phi { ptr, i32 } [ %.pn36123.i, %bb.go ], [ %i.afe, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit90.i ], [ %i.afc, %bb.gm ], [ %i.afe, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i88.i ]
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %12) #26
  br label %bb.gq

bb.gq:                                            ; preds = %bb.gp, %bb.gl
  %.pn36.pn.pn.i = phi { ptr, i32 } [ %.pn36.pn.i, %bb.gp ], [ %i.afb, %bb.gl ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #26
  br label %bb.gs

bb.gr:                                            ; preds = %bb.ex
  %i.afk = load ptr, ptr %6, align 8, !tbaa !29   ; 2 uses
  %i.afl = icmp eq ptr %i.afk, %i.yy
  br i1 %i.afl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit93.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i91.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i91.i: ; preds = %bb.gr
  %i.afm = load i64, ptr %i.yy, align 8, !tbaa !19
  %i.afn = add i64 %i.afm, 1
  call void @_ZdlPvm(ptr noundef %i.afk, i64 noundef %i.afn) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit93.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit93.i: ; preds = %bb.gr, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i91.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  %i.afo = load ptr, ptr %5, align 8, !tbaa !29   ; 2 uses
  %i.afp = icmp eq ptr %i.afo, %i.yw
  br i1 %i.afp, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i95.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i94.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i94.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit93.i
  %i.afq = load i64, ptr %i.yw, align 8, !tbaa !19
  %i.afr = add i64 %i.afq, 1
  call void @_ZdlPvm(ptr noundef %i.afo, i64 noundef %i.afr) #28
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i95.i

bb.gs:                                            ; preds = %bb.gq, %.loopexit.split-lp.i, %.loopexit.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70.i, %bb.fp, %bb.fa
  %.pn42.i = phi { ptr, i32 } [ %i.zt, %bb.fa ], [ %.pn31.pn.pn.pn.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70.i ], [ %i.acr, %bb.fp ], [ %.pn36.pn.pn.i, %bb.gq ], [ %lpad.loopexit.i, %.loopexit.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ]
  %i.afs = load ptr, ptr %6, align 8, !tbaa !29   ; 2 uses
  %i.aft = icmp eq ptr %i.afs, %i.yy
  br i1 %i.aft, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit99.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i97.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i97.i: ; preds = %bb.gs
  %i.afu = load i64, ptr %i.yy, align 8, !tbaa !19
  %i.afv = add i64 %i.afu, 1
  call void @_ZdlPvm(ptr noundef %i.afs, i64 noundef %i.afv) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit99.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit99.i: ; preds = %bb.gs, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i97.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  %i.afw = load ptr, ptr %5, align 8, !tbaa !29   ; 2 uses
  %i.afx = icmp eq ptr %i.afw, %i.yw
  br i1 %i.afx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit102.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i100.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i100.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit99.i
  %i.afy = load i64, ptr %i.yw, align 8, !tbaa !19
  %i.afz = add i64 %i.afy, 1
  call void @_ZdlPvm(ptr noundef %i.afw, i64 noundef %i.afz) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit102.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit102.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit99.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i100.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  br label %.body610

bb.gt:                                            ; preds = %bb.gk, %bb.fo
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i95.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit93.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i94.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  %i.aga = load i64, ptr %i.ag, align 8, !tbaa !16 ; 2 uses
  %i.agb = icmp eq i64 %i.aga, 5
  br i1 %i.agb, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit613, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit613.thread876

end_hunk_1
begin_hunk_2_@_ZNK16OpenColorIO_v2_512_GLOBAL__N_115LocalFileFormat12buildFileOpsERNS_10OpRcPtrVecERKNS_6ConfigERKSt10shared_ptrIKNS_7ContextEES7_INS_10CachedFileEERKNS_13FileTransformENS_18TransformDirectionE:bb.a
  %i.cq = load ptr, ptr %i.ck, align 8, !tbaa !11
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 16
  %i.cs = load ptr, ptr %i.cr, align 8
  call void %i.cs(ptr noundef nonnull align 8 dereferenceable(16) %i.ck) #26, !inline_history !171
  %i.ct = load ptr, ptr %i.ck, align 8, !tbaa !11
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 24
  %i.cv = load ptr, ptr %i.cu, align 8
  call void %i.cv(ptr noundef nonnull align 8 dereferenceable(16) %i.ck) #26, !inline_history !171
  br label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_511Lut1DOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.as:                                            ; preds = %bb.aq
  %i.cw = load i8, ptr @__libc_single_threaded, align 1, !tbaa !19
  %.not.i.i.i90 = icmp eq i8 %i.cw, 0
  br i1 %.not.i.i.i90, label %bb.au, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.cx = add nsw i32 %i.co, -1
  store i32 %i.cx, ptr %i.cl, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i91

bb.au:                                            ; preds = %bb.as
  %i.cy = atomicrmw volatile add ptr %i.cl, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i91

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i91: ; preds = %bb.au, %bb.at
  %.0.i.i.i.i92 = phi i32 [ %i.co, %bb.at ], [ %i.cy, %bb.au ]
  %i.cz = icmp eq i32 %.0.i.i.i.i92, 1
  br i1 %i.cz, label %bb.av, label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_511Lut1DOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !99

bb.av:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i91
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ck) #26
  br label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_511Lut1DOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN16OpenColorIO_v2_511Lut1DOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNSt12__shared_ptrIN16OpenColorIO_v2_511Lut3DOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.ar, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i91, %bb.av
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  br i1 %.not.i.i.i.i.i, label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_512_GLOBAL__N_113CachedFileHDLELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.aw

bb.aw:                                            ; preds = %_ZNSt12__shared_ptrIN16OpenColorIO_v2_511Lut1DOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.da = getelementptr inbounds nuw i8, ptr %.val57, i64 8 ; 4 uses
  %i.db = load atomic i64, ptr %i.da acquire, align 8 ; 2 uses
  %i.dc = icmp eq i64 %i.db, 4294967297
  %i.dd = trunc i64 %i.db to i32                  ; 2 uses
  br i1 %i.dc, label %bb.ax, label %bb.ay

bb.ax:                                            ; preds = %bb.aw
  store i32 0, ptr %i.da, align 8, !tbaa !42
  %i.de = getelementptr inbounds nuw i8, ptr %.val57, i64 12
  store i32 0, ptr %i.de, align 4, !tbaa !44
  %i.df = load ptr, ptr %.val57, align 8, !tbaa !11
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 16
  %i.dh = load ptr, ptr %i.dg, align 8
  call void %i.dh(ptr noundef nonnull align 8 dereferenceable(16) %.val57) #26, !inline_history !172
  %i.di = load ptr, ptr %.val57, align 8, !tbaa !11
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 24
  %i.dk = load ptr, ptr %i.dj, align 8
  call void %i.dk(ptr noundef nonnull align 8 dereferenceable(16) %.val57) #26, !inline_history !172
  br label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_512_GLOBAL__N_113CachedFileHDLELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.ay:                                            ; preds = %bb.aw
  %i.dl = load i8, ptr @__libc_single_threaded, align 1, !tbaa !19
  %.not.i.i.i94 = icmp eq i8 %i.dl, 0
  br i1 %.not.i.i.i94, label %bb.ba, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.dm = add nsw i32 %i.dd, -1
  store i32 %i.dm, ptr %i.da, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i95

bb.ba:                                            ; preds = %bb.ay
  %i.dn = atomicrmw volatile add ptr %i.da, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i95

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i95: ; preds = %bb.ba, %bb.az
  %.0.i.i.i.i96 = phi i32 [ %i.dd, %bb.az ], [ %i.dn, %bb.ba ]
  %i.do = icmp eq i32 %.0.i.i.i.i96, 1
  br i1 %i.do, label %bb.bb, label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_512_GLOBAL__N_113CachedFileHDLELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !99

bb.bb:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i95
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %.val57) #26
  br label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_512_GLOBAL__N_113CachedFileHDLELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN16OpenColorIO_v2_512_GLOBAL__N_113CachedFileHDLELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNSt12__shared_ptrIN16OpenColorIO_v2_511Lut1DOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.ax, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i95, %bb.bb
  ret void

bb.bc:                                            ; preds = %bb.ai, %bb.ag, %bb.ab
  %.pn50 = phi { ptr, i32 } [ %i.am, %bb.ab ], [ %i.bd, %bb.ag ], [ %i.br, %bb.ai ]
  call void @_ZNSt12__shared_ptrIN16OpenColorIO_v2_511Lut3DOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %10) #26
  br label %bb.bd

bb.bd:                                            ; preds = %bb.bc, %bb.aa
  %.pn50.pn = phi { ptr, i32 } [ %.pn50, %bb.bc ], [ %i.al, %bb.aa ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #26
  call void @_ZNSt12__shared_ptrIN16OpenColorIO_v2_511Lut1DOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %9) #26
  br label %bb.be

bb.be:                                            ; preds = %bb.bd, %bb.z
  %.pn50.pn.pn = phi { ptr, i32 } [ %.pn50.pn, %bb.bd ], [ %i.ak, %bb.z ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  br label %bb.bf

bb.bf:                                            ; preds = %bb.x, %bb.be, %bb.y, %bb.q
  %.sroa.24.0101 = phi ptr [ %.sroa.24.0105, %bb.q ], [ %.val57, %bb.x ], [ %.val57, %bb.be ], [ %.val57, %bb.y ]
  %.pn50.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn, %bb.q ], [ %i.ai, %bb.x ], [ %.pn50.pn.pn, %bb.be ], [ %i.aj, %bb.y ]
  call fastcc void @_ZNSt12__shared_ptrIN16OpenColorIO_v2_512_GLOBAL__N_113CachedFileHDLELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr %.sroa.24.0101) #26
  resume { ptr, i32 } %.pn50.pn.pn.pn.pn.pn

bb.bg:                                            ; preds = %bb.k
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK16OpenColorIO_v2_510FileFormat8isBinaryEv(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #0 align 2 {
bb.a:
  ret i1 false
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #8

declare i32 @__gxx_personality_v0(...)

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN16OpenColorIO_v2_510FormatInfoD2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %0) unnamed_addr #9 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !29   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.a
  %i.e = load i64, ptr %i.c, align 8, !tbaa !19
  %i.f = add i64 %i.e, 1
  tail call void @_ZdlPvm(ptr noundef %i.b, i64 noundef %i.f) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.g = load ptr, ptr %0, align 8, !tbaa !29     ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.i = icmp eq ptr %i.g, %i.h
  br i1 %i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.j = load i64, ptr %i.h, align 8, !tbaa !19
  %i.k = add i64 %i.j, 1
  tail call void @_ZdlPvm(ptr noundef %i.g, i64 noundef %i.k) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #8

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #10 {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #26 ; 0 uses
  tail call void @_ZSt9terminatev() #30
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #11

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #12

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt6vectorIN16OpenColorIO_v2_510FormatInfoESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(72) %2) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !25   ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !173    ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775800
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorIN16OpenColorIO_v2_510FormatInfoESaIS1_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.3) #29
  unreachable

_ZNKSt6vectorIN16OpenColorIO_v2_510FormatInfoESaIS1_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = sdiv exact i64 %i.f, 72                  ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.h
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.i, i64 128102389400760775)
  %i.l = select i1 %i.j, i64 128102389400760775, i64 %i.k ; 2 uses
  %i.m = ptrtoint ptr %1 to i64
  %i.n = sub i64 %i.m, %i.e
  %i.o = mul nuw nsw i64 %i.l, 72                 ; 2 uses
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #27 ; 6 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n
  invoke void @_ZN16OpenColorIO_v2_510FormatInfoC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(72) %i.q, ptr noundef nonnull align 8 dereferenceable(72) %2)
          to label %_ZNSt16allocator_traitsISaIN16OpenColorIO_v2_510FormatInfoEEE9constructIS1_JRKS1_EEEvRS2_PT_DpOT0_.exit unwind label %bb.i

_ZNSt16allocator_traitsISaIN16OpenColorIO_v2_510FormatInfoEEE9constructIS1_JRKS1_EEEvRS2_PT_DpOT0_.exit: ; preds = %_ZNKSt6vectorIN16OpenColorIO_v2_510FormatInfoESaIS1_EE12_M_check_lenEmPKc.exit
  %.not10.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorIN16OpenColorIO_v2_510FormatInfoESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt16allocator_traitsISaIN16OpenColorIO_v2_510FormatInfoEEE9constructIS1_JRKS1_EEEvRS2_PT_DpOT0_.exit, %_ZSt19__relocate_object_aIN16OpenColorIO_v2_510FormatInfoES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i
  %.012.i.i.i = phi ptr [ %i.av, %_ZSt19__relocate_object_aIN16OpenColorIO_v2_510FormatInfoES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.p, %_ZNSt16allocator_traitsISaIN16OpenColorIO_v2_510FormatInfoEEE9constructIS1_JRKS1_EEEvRS2_PT_DpOT0_.exit ] ; 9 uses
  %.0911.i.i.i = phi ptr [ %i.au, %_ZSt19__relocate_object_aIN16OpenColorIO_v2_510FormatInfoES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.c, %_ZNSt16allocator_traitsISaIN16OpenColorIO_v2_510FormatInfoEEE9constructIS1_JRKS1_EEEvRS2_PT_DpOT0_.exit ] ; 13 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !174)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !177)
  %i.r = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 16 ; 3 uses
  store ptr %i.r, ptr %.012.i.i.i, align 8, !tbaa !13, !alias.scope !174, !noalias !177
  %i.s = load ptr, ptr %.0911.i.i.i, align 8, !tbaa !29, !alias.scope !177, !noalias !174 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16 ; 5 uses
  %i.u = icmp eq ptr %i.s, %i.t
  br i1 %i.u, label %bb.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

bb.c:                                             ; preds = %.lr.ph.i.i.i
  %i.v = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %i.w = load i64, ptr %i.v, align 8, !tbaa !16, !alias.scope !177, !noalias !174 ; 3 uses
  %i.x = icmp ult i64 %i.w, 16
  tail call void @llvm.assume(i1 %i.x)
  %i.y = add nuw nsw i64 %i.w, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.r, ptr noundef nonnull align 8 dereferenceable(1) %i.t, i64 %i.y, i1 false), !alias.scope !179
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  store ptr %i.s, ptr %.012.i.i.i, align 8, !tbaa !29, !alias.scope !174, !noalias !177
  %i.z = load i64, ptr %i.t, align 8, !tbaa !19, !alias.scope !177, !noalias !174
  store i64 %i.z, ptr %i.r, align 8, !tbaa !19, !alias.scope !174, !noalias !177
  %.phi.trans.insert.i.i.i.i = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %.pre.i.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i.i, align 8, !tbaa !16, !alias.scope !177, !noalias !174
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i, %bb.c
  %i.aa = phi i64 [ %.pre.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i ], [ %i.w, %bb.c ]
  %i.ab = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %i.ac = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 8
  store i64 %i.aa, ptr %i.ac, align 8, !tbaa !16, !alias.scope !174, !noalias !177
  store ptr %i.t, ptr %.0911.i.i.i, align 8, !tbaa !29, !alias.scope !177, !noalias !174
  store i64 0, ptr %i.ab, align 8, !tbaa !16, !alias.scope !177, !noalias !174
  store i8 0, ptr %i.t, align 8, !tbaa !19, !alias.scope !177, !noalias !174
  %i.ad = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 32 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 48 ; 3 uses
  store ptr %i.af, ptr %i.ad, align 8, !tbaa !13, !alias.scope !174, !noalias !177
  %i.ag = load ptr, ptr %i.ae, align 8, !tbaa !29, !alias.scope !177, !noalias !174 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 48 ; 5 uses
  %i.ai = icmp eq ptr %i.ag, %i.ah
  br i1 %i.ai, label %bb.d, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i4.i.i.i.i.i

bb.d:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i.i
  %i.aj = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 40
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !16, !alias.scope !177, !noalias !174 ; 3 uses
  %i.al = icmp ult i64 %i.ak, 16
  tail call void @llvm.assume(i1 %i.al)
  %i.am = add nuw nsw i64 %i.ak, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.af, ptr noundef nonnull align 8 dereferenceable(1) %i.ah, i64 %i.am, i1 false), !alias.scope !179
  br label %_ZSt19__relocate_object_aIN16OpenColorIO_v2_510FormatInfoES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i4.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i.i
  store ptr %i.ag, ptr %i.ad, align 8, !tbaa !29, !alias.scope !174, !noalias !177
  %i.an = load i64, ptr %i.ah, align 8, !tbaa !19, !alias.scope !177, !noalias !174
  store i64 %i.an, ptr %i.af, align 8, !tbaa !19, !alias.scope !174, !noalias !177
  %.phi.trans.insert5.i.i.i.i = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 40
  %.pre6.i.i.i.i = load i64, ptr %.phi.trans.insert5.i.i.i.i, align 8, !tbaa !16, !alias.scope !177, !noalias !174
  br label %_ZSt19__relocate_object_aIN16OpenColorIO_v2_510FormatInfoES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i

_ZSt19__relocate_object_aIN16OpenColorIO_v2_510FormatInfoES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i4.i.i.i.i.i, %bb.d
  %i.ao = phi i64 [ %i.ak, %bb.d ], [ %.pre6.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i4.i.i.i.i.i ]
  %i.ap = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 40
  %i.aq = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 40
  store i64 %i.ao, ptr %i.aq, align 8, !tbaa !16, !alias.scope !174, !noalias !177
  store ptr %i.ah, ptr %i.ae, align 8, !tbaa !29, !alias.scope !177, !noalias !174
  store i64 0, ptr %i.ap, align 8, !tbaa !16, !alias.scope !177, !noalias !174
  store i8 0, ptr %i.ah, align 8, !tbaa !19, !alias.scope !177, !noalias !174
  %i.ar = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 64
  %i.as = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 64
  %i.at = load i64, ptr %i.as, align 8, !alias.scope !177, !noalias !174
  store i64 %i.at, ptr %i.ar, align 8, !alias.scope !174, !noalias !177
  %i.au = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 72 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 72 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.au, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN16OpenColorIO_v2_510FormatInfoESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit, label %.lr.ph.i.i.i, !llvm.loop !180

_ZNSt6vectorIN16OpenColorIO_v2_510FormatInfoESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit: ; preds = %_ZSt19__relocate_object_aIN16OpenColorIO_v2_510FormatInfoES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i, %_ZNSt16allocator_traitsISaIN16OpenColorIO_v2_510FormatInfoEEE9constructIS1_JRKS1_EEEvRS2_PT_DpOT0_.exit
  %.0.lcssa.i.i.i = phi ptr [ %i.p, %_ZNSt16allocator_traitsISaIN16OpenColorIO_v2_510FormatInfoEEE9constructIS1_JRKS1_EEEvRS2_PT_DpOT0_.exit ], [ %i.av, %_ZSt19__relocate_object_aIN16OpenColorIO_v2_510FormatInfoES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i ]
  %i.aw = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 72 ; 2 uses
  %.not10.i.i.i26 = icmp eq ptr %1, %i.b
  br i1 %.not10.i.i.i26, label %_ZNSt6vectorIN16OpenColorIO_v2_510FormatInfoESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit40, label %.lr.ph.i.i.i27

.lr.ph.i.i.i27:                                   ; preds = %_ZNSt6vectorIN16OpenColorIO_v2_510FormatInfoESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit, %_ZSt19__relocate_object_aIN16OpenColorIO_v2_510FormatInfoES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i37
  %.012.i.i.i28 = phi ptr [ %i.cb, %_ZSt19__relocate_object_aIN16OpenColorIO_v2_510FormatInfoES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i37 ], [ %i.aw, %_ZNSt6vectorIN16OpenColorIO_v2_510FormatInfoESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit ] ; 9 uses
  %.0911.i.i.i29 = phi ptr [ %i.ca, %_ZSt19__relocate_object_aIN16OpenColorIO_v2_510FormatInfoES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i37 ], [ %1, %_ZNSt6vectorIN16OpenColorIO_v2_510FormatInfoESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit ] ; 13 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !181)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !184)
  %i.ax = getelementptr inbounds nuw i8, ptr %.012.i.i.i28, i64 16 ; 3 uses
  store ptr %i.ax, ptr %.012.i.i.i28, align 8, !tbaa !13, !alias.scope !181, !noalias !184
  %i.ay = load ptr, ptr %.0911.i.i.i29, align 8, !tbaa !29, !alias.scope !184, !noalias !181 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %.0911.i.i.i29, i64 16 ; 5 uses
  %i.ba = icmp eq ptr %i.ay, %i.az
  br i1 %i.ba, label %bb.e, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i30

bb.e:                                             ; preds = %.lr.ph.i.i.i27
  %i.bb = getelementptr inbounds nuw i8, ptr %.0911.i.i.i29, i64 8
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !16, !alias.scope !184, !noalias !181 ; 3 uses
  %i.bd = icmp ult i64 %i.bc, 16
  tail call void @llvm.assume(i1 %i.bd)
  %i.be = add nuw nsw i64 %i.bc, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ax, ptr noundef nonnull align 8 dereferenceable(1) %i.az, i64 %i.be, i1 false), !alias.scope !186
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i.i33

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i30: ; preds = %.lr.ph.i.i.i27
  store ptr %i.ay, ptr %.012.i.i.i28, align 8, !tbaa !29, !alias.scope !181, !noalias !184
  %i.bf = load i64, ptr %i.az, align 8, !tbaa !19, !alias.scope !184, !noalias !181
  store i64 %i.bf, ptr %i.ax, align 8, !tbaa !19, !alias.scope !181, !noalias !184
  %.phi.trans.insert.i.i.i.i31 = getelementptr inbounds nuw i8, ptr %.0911.i.i.i29, i64 8
  %.pre.i.i.i.i32 = load i64, ptr %.phi.trans.insert.i.i.i.i31, align 8, !tbaa !16, !alias.scope !184, !noalias !181
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i.i33

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i.i33: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i30, %bb.e
  %i.bg = phi i64 [ %.pre.i.i.i.i32, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i30 ], [ %i.bc, %bb.e ]
  %i.bh = getelementptr inbounds nuw i8, ptr %.0911.i.i.i29, i64 8
  %i.bi = getelementptr inbounds nuw i8, ptr %.012.i.i.i28, i64 8
  store i64 %i.bg, ptr %i.bi, align 8, !tbaa !16, !alias.scope !181, !noalias !184
  store ptr %i.az, ptr %.0911.i.i.i29, align 8, !tbaa !29, !alias.scope !184, !noalias !181
  store i64 0, ptr %i.bh, align 8, !tbaa !16, !alias.scope !184, !noalias !181
  store i8 0, ptr %i.az, align 8, !tbaa !19, !alias.scope !184, !noalias !181
  %i.bj = getelementptr inbounds nuw i8, ptr %.012.i.i.i28, i64 32 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %.0911.i.i.i29, i64 32 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %.012.i.i.i28, i64 48 ; 3 uses
  store ptr %i.bl, ptr %i.bj, align 8, !tbaa !13, !alias.scope !181, !noalias !184
  %i.bm = load ptr, ptr %i.bk, align 8, !tbaa !29, !alias.scope !184, !noalias !181 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %.0911.i.i.i29, i64 48 ; 5 uses
  %i.bo = icmp eq ptr %i.bm, %i.bn
  br i1 %i.bo, label %bb.f, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i4.i.i.i.i.i34

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i.i33
  %i.bp = getelementptr inbounds nuw i8, ptr %.0911.i.i.i29, i64 40
  %i.bq = load i64, ptr %i.bp, align 8, !tbaa !16, !alias.scope !184, !noalias !181 ; 3 uses
  %i.br = icmp ult i64 %i.bq, 16
  tail call void @llvm.assume(i1 %i.br)
  %i.bs = add nuw nsw i64 %i.bq, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.bl, ptr noundef nonnull align 8 dereferenceable(1) %i.bn, i64 %i.bs, i1 false), !alias.scope !186
  br label %_ZSt19__relocate_object_aIN16OpenColorIO_v2_510FormatInfoES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i37

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i4.i.i.i.i.i34: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i.i33
  store ptr %i.bm, ptr %i.bj, align 8, !tbaa !29, !alias.scope !181, !noalias !184
  %i.bt = load i64, ptr %i.bn, align 8, !tbaa !19, !alias.scope !184, !noalias !181
  store i64 %i.bt, ptr %i.bl, align 8, !tbaa !19, !alias.scope !181, !noalias !184
  %.phi.trans.insert5.i.i.i.i35 = getelementptr inbounds nuw i8, ptr %.0911.i.i.i29, i64 40
  %.pre6.i.i.i.i36 = load i64, ptr %.phi.trans.insert5.i.i.i.i35, align 8, !tbaa !16, !alias.scope !184, !noalias !181
  br label %_ZSt19__relocate_object_aIN16OpenColorIO_v2_510FormatInfoES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i37

_ZSt19__relocate_object_aIN16OpenColorIO_v2_510FormatInfoES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i37: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i4.i.i.i.i.i34, %bb.f
  %i.bu = phi i64 [ %i.bq, %bb.f ], [ %.pre6.i.i.i.i36, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i4.i.i.i.i.i34 ]
  %i.bv = getelementptr inbounds nuw i8, ptr %.0911.i.i.i29, i64 40
  %i.bw = getelementptr inbounds nuw i8, ptr %.012.i.i.i28, i64 40
  store i64 %i.bu, ptr %i.bw, align 8, !tbaa !16, !alias.scope !181, !noalias !184
  store ptr %i.bn, ptr %i.bk, align 8, !tbaa !29, !alias.scope !184, !noalias !181
  store i64 0, ptr %i.bv, align 8, !tbaa !16, !alias.scope !184, !noalias !181
  store i8 0, ptr %i.bn, align 8, !tbaa !19, !alias.scope !184, !noalias !181
  %i.bx = getelementptr inbounds nuw i8, ptr %.012.i.i.i28, i64 64
  %i.by = getelementptr inbounds nuw i8, ptr %.0911.i.i.i29, i64 64
  %i.bz = load i64, ptr %i.by, align 8, !alias.scope !184, !noalias !181
  store i64 %i.bz, ptr %i.bx, align 8, !alias.scope !181, !noalias !184
  %i.ca = getelementptr inbounds nuw i8, ptr %.0911.i.i.i29, i64 72 ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %.012.i.i.i28, i64 72 ; 2 uses
  %.not.i.i.i38 = icmp eq ptr %i.ca, %i.b
  br i1 %.not.i.i.i38, label %_ZNSt6vectorIN16OpenColorIO_v2_510FormatInfoESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit40, label %.lr.ph.i.i.i27, !llvm.loop !180

_ZNSt6vectorIN16OpenColorIO_v2_510FormatInfoESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit40: ; preds = %_ZSt19__relocate_object_aIN16OpenColorIO_v2_510FormatInfoES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i37, %_ZNSt6vectorIN16OpenColorIO_v2_510FormatInfoESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit
  %.0.lcssa.i.i.i39 = phi ptr [ %i.aw, %_ZNSt6vectorIN16OpenColorIO_v2_510FormatInfoESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit ], [ %i.cb, %_ZSt19__relocate_object_aIN16OpenColorIO_v2_510FormatInfoES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i37 ]
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i41 = icmp eq ptr %i.c, null
  br i1 %.not.i41, label %_ZNSt12_Vector_baseIN16OpenColorIO_v2_510FormatInfoESaIS1_EE13_M_deallocateEPS1_m.exit, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIN16OpenColorIO_v2_510FormatInfoESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit40
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !28
  %i.ce = ptrtoint ptr %i.cd to i64
  %i.cf = sub i64 %i.ce, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.cf) #28
  br label %_ZNSt12_Vector_baseIN16OpenColorIO_v2_510FormatInfoESaIS1_EE13_M_deallocateEPS1_m.exit

_ZNSt12_Vector_baseIN16OpenColorIO_v2_510FormatInfoESaIS1_EE13_M_deallocateEPS1_m.exit: ; preds = %_ZNSt6vectorIN16OpenColorIO_v2_510FormatInfoESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit40, %bb.g
  store ptr %i.p, ptr %0, align 8, !tbaa !173
  store ptr %.0.lcssa.i.i.i39, ptr %i.a, align 8, !tbaa !25
  %i.cg = getelementptr inbounds nuw [72 x i8], ptr %i.p, i64 %i.l
  store ptr %i.cg, ptr %i.cc, align 8, !tbaa !28
  ret void

bb.h:                                             ; preds = %bb.i
  %i.ch = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
end_hunk_2
begin_hunk_3_@_ZSt19__throw_logic_errorPKc
declare void @_ZSt19__throw_logic_errorPKc(ptr noundef) local_unnamed_addr #14

; Function Attrs: nounwind
declare void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #5

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZStrsIcSt11char_traitsIcESaIcEERSt13basic_istreamIT_T0_ES7_RNSt7__cxx1112basic_stringIS4_S5_T1_EE(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #6

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE19_M_range_initializeISt16istream_iteratorIS5_cS3_lEEEvT_SB_St18input_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16
  br label %_ZNSt16istream_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEcS3_lEppEv.exit

_ZNSt16istream_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEcS3_lEppEv.exit: ; preds = %_ZNSt16istream_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEcS3_lEppEv.exit.backedge, %bb.a
  %i.h = load i8, ptr %i.b, align 8, !tbaa !210, !range !169, !noundef !170 ; 2 uses
  %i.i = load i8, ptr %i.c, align 8, !tbaa !210, !range !169, !noundef !170
  %i.j = icmp eq i8 %i.h, %i.i
  br i1 %i.j, label %bb.b, label %_ZStneRKSt16istream_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEcS3_lES8_.exit.thread

bb.b:                                             ; preds = %_ZNSt16istream_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEcS3_lEppEv.exit
  %i.k = trunc nuw i8 %i.h to i1
  br i1 %i.k, label %_ZStneRKSt16istream_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEcS3_lES8_.exit, label %_ZStneRKSt16istream_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEcS3_lES8_.exit.thread5

_ZStneRKSt16istream_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEcS3_lES8_.exit: ; preds = %bb.b
  %i.l = load ptr, ptr %1, align 8, !tbaa !207
  %i.m = load ptr, ptr %2, align 8, !tbaa !207
  %.not = icmp eq ptr %i.l, %i.m
  br i1 %.not, label %_ZStneRKSt16istream_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEcS3_lES8_.exit.thread5, label %_ZStneRKSt16istream_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEcS3_lES8_.exit.thread

_ZStneRKSt16istream_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEcS3_lES8_.exit.thread: ; preds = %_ZNSt16istream_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEcS3_lEppEv.exit, %_ZStneRKSt16istream_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEcS3_lES8_.exit
  %i.n = load ptr, ptr %i.e, align 8, !tbaa !73   ; 8 uses
  %i.o = load ptr, ptr %i.f, align 8, !tbaa !75
  %.not.i = icmp eq ptr %i.n, %i.o
  br i1 %.not.i, label %bb.f, label %bb.c

bb.c:                                             ; preds = %_ZStneRKSt16istream_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEcS3_lES8_.exit.thread
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 16 ; 3 uses
  store ptr %i.p, ptr %i.n, align 8, !tbaa !13
  %i.q = load ptr, ptr %i.d, align 8, !tbaa !29   ; 2 uses
  %i.r = load i64, ptr %i.g, align 8, !tbaa !16   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  store i64 %i.r, ptr %i.a, align 8, !tbaa !57
  %i.s = icmp ugt i64 %i.r, 15
  br i1 %i.s, label %.noexc.i.i, label %._crit_edge.i.i.i

.noexc.i.i:                                       ; preds = %bb.c
  %i.t = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.n, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc unwind label %bb.i     ; 2 uses

.noexc:                                           ; preds = %.noexc.i.i
  store ptr %i.t, ptr %i.n, align 8, !tbaa !29
  %i.u = load i64, ptr %i.a, align 8, !tbaa !57
  store i64 %i.u, ptr %i.p, align 8, !tbaa !19
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc, %bb.c
  %i.v = phi ptr [ %i.t, %.noexc ], [ %i.p, %bb.c ] ; 2 uses
  switch i64 %i.r, label %bb.e [
    i64 1, label %bb.d
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i
  ]

bb.d:                                             ; preds = %._crit_edge.i.i.i
  %i.w = load i8, ptr %i.q, align 1, !tbaa !19
  store i8 %i.w, ptr %i.v, align 1, !tbaa !19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i

bb.e:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.v, ptr align 1 %i.q, i64 %i.r, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i: ; preds = %bb.e, %bb.d, %._crit_edge.i.i.i
  %i.x = load i64, ptr %i.a, align 8, !tbaa !57   ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store i64 %i.x, ptr %i.y, align 8, !tbaa !16
  %i.z = load ptr, ptr %i.n, align 8, !tbaa !29
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.x
  store i8 0, ptr %i.aa, align 1, !tbaa !19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  %i.ab = load ptr, ptr %i.e, align 8, !tbaa !73
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 32
  store ptr %i.ac, ptr %i.e, align 8, !tbaa !73
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRKS5_EEERS5_DpOT_.exit

bb.f:                                             ; preds = %_ZStneRKSt16istream_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEcS3_lES8_.exit.thread
  invoke void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJRKS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %i.n, ptr noundef nonnull align 8 dereferenceable(32) %i.d)
          to label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRKS5_EEERS5_DpOT_.exit unwind label %bb.i

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRKS5_EEERS5_DpOT_.exit: ; preds = %bb.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i
  %i.ad = load ptr, ptr %1, align 8, !tbaa !207   ; 2 uses
  %.not.i.i = icmp eq ptr %i.ad, null
  br i1 %.not.i.i, label %_ZNSt16istream_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEcS3_lEppEv.exit.backedge, label %bb.g

_ZNSt16istream_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEcS3_lEppEv.exit.backedge: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRKS5_EEERS5_DpOT_.exit, %.noexc4, %bb.h
  br label %_ZNSt16istream_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEcS3_lEppEv.exit

bb.g:                                             ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRKS5_EEERS5_DpOT_.exit
  %i.ae = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZStrsIcSt11char_traitsIcESaIcEERSt13basic_istreamIT_T0_ES7_RNSt7__cxx1112basic_stringIS4_S5_T1_EE(ptr noundef nonnull align 8 dereferenceable(16) %i.ad, ptr noundef nonnull align 8 dereferenceable(32) %i.d)
          to label %.noexc4 unwind label %bb.i    ; 2 uses

.noexc4:                                          ; preds = %bb.g
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !11
  %i.ag = getelementptr i8, ptr %i.af, i64 -24
  %i.ah = load i64, ptr %i.ag, align 8
  %i.ai = getelementptr inbounds i8, ptr %i.ae, i64 %i.ah
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 32
  %i.ak = load i32, ptr %i.aj, align 8, !tbaa !30
  %i.al = and i32 %i.ak, 5
  %.not1.i.i = icmp eq i32 %i.al, 0
  br i1 %.not1.i.i, label %_ZNSt16istream_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEcS3_lEppEv.exit.backedge, label %bb.h

bb.h:                                             ; preds = %.noexc4
  store ptr null, ptr %1, align 8, !tbaa !207
  store i8 0, ptr %i.b, align 8, !tbaa !210
  br label %_ZNSt16istream_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEcS3_lEppEv.exit.backedge

bb.i:                                             ; preds = %bb.g, %bb.f, %.noexc.i.i
  %i.am = landingpad { ptr, i32 }
          catch ptr null
  %i.an = extractvalue { ptr, i32 } %i.am, 0
  %i.ao = call ptr @__cxa_begin_catch(ptr %i.an) #26 ; 0 uses
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5clearEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #26
  invoke void @__cxa_rethrow() #29
          to label %bb.m unwind label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ap = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.k unwind label %bb.l

_ZStneRKSt16istream_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEcS3_lES8_.exit.thread5: ; preds = %bb.b, %_ZStneRKSt16istream_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEcS3_lES8_.exit
  ret void

bb.k:                                             ; preds = %bb.j
  resume { ptr, i32 } %i.ap

bb.l:                                             ; preds = %bb.j
  %i.aq = landingpad { ptr, i32 }
          catch ptr null
  %i.ar = extractvalue { ptr, i32 } %i.aq, 0
  call void @__clang_call_terminate(ptr %i.ar) #30
  unreachable

bb.m:                                             ; preds = %bb.i
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5clearEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !71     ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !73   ; 2 uses
  %.not.i = icmp eq ptr %i.c, %i.a
  br i1 %.not.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE15_M_erase_at_endEPS5_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.i, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i ], [ %i.a, %bb.a ] ; 3 uses
  %i.d = load ptr, ptr %.05.i.i.i, align 8, !tbaa !29 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16 ; 2 uses
  %i.f = icmp eq ptr %i.d, %i.e
  br i1 %i.f, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.g = load i64, ptr %i.e, align 8, !tbaa !19
  %i.h = add i64 %i.g, 1
  tail call void @_ZdlPvm(ptr noundef %i.d, i64 noundef %i.h) #28
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i: ; preds = %.lr.ph.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  %i.i = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.i, %i.c
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, label %.lr.ph.i.i.i, !llvm.loop !74

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  store ptr %i.a, ptr %i.b, align 8, !tbaa !73
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE15_M_erase_at_endEPS5_.exit

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE15_M_erase_at_endEPS5_.exit: ; preds = %bb.a, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJRKS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !73   ; 3 uses
  %i.d = load ptr, ptr %0, align 8, !tbaa !71     ; 5 uses
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64                 ; 3 uses
  %i.g = sub i64 %i.e, %i.f                       ; 2 uses
  %i.h = icmp eq i64 %i.g, 9223372036854775776
  br i1 %i.h, label %bb.b, label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.3) #29
  unreachable

_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit: ; preds = %bb.a
  %3 = ashr exact i64 %i.g, 5                     ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %3, i64 1)
  %4 = add nsw i64 %.sroa.speculated.i, %3        ; 2 uses
  %5 = icmp ult i64 %4, %3
  %6 = tail call i64 @llvm.umin.i64(i64 %4, i64 288230376151711743)
  %7 = select i1 %5, i64 288230376151711743, i64 %6 ; 2 uses
  %8 = ptrtoint ptr %1 to i64
  %9 = sub i64 %8, %i.f
  %10 = shl nuw nsw i64 %7, 5                     ; 2 uses
  %11 = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %10) #27 ; 6 uses
  %i.i = getelementptr inbounds nuw i8, ptr %11, i64 %9 ; 6 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 16 ; 3 uses
  store ptr %i.j, ptr %i.i, align 8, !tbaa !13
  %i.k = load ptr, ptr %2, align 8, !tbaa !29     ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.m = load i64, ptr %i.l, align 8, !tbaa !16   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  store i64 %i.m, ptr %i.a, align 8, !tbaa !57
  %i.n = icmp ugt i64 %i.m, 15
  br i1 %i.n, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit
  %i.o = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.i, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc unwind label %bb.j     ; 2 uses

.noexc:                                           ; preds = %.noexc.i
  store ptr %i.o, ptr %i.i, align 8, !tbaa !29
  %i.p = load i64, ptr %i.a, align 8, !tbaa !57
  store i64 %i.p, ptr %i.j, align 8, !tbaa !19
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc, %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit
  %i.q = phi ptr [ %i.o, %.noexc ], [ %i.j, %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit ] ; 2 uses
  switch i64 %i.m, label %bb.d [
    i64 1, label %bb.c
    i64 0, label %bb.e
  ]

bb.c:                                             ; preds = %._crit_edge.i.i
  %i.r = load i8, ptr %i.k, align 1, !tbaa !19
  store i8 %i.r, ptr %i.q, align 1, !tbaa !19
  br label %bb.e

bb.d:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.q, ptr align 1 %i.k, i64 %i.m, i1 false)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %._crit_edge.i.i
  %i.s = load i64, ptr %i.a, align 8, !tbaa !57   ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store i64 %i.s, ptr %i.t, align 8, !tbaa !16
  %i.u = load ptr, ptr %i.i, align 8, !tbaa !29
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.s
  store i8 0, ptr %i.v, align 1, !tbaa !19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  %.not10.i.i.i = icmp eq ptr %i.d, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.e, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i
  %.012.i.i.i = phi ptr [ %i.aj, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i ], [ %11, %bb.e ] ; 5 uses
  %.0911.i.i.i = phi ptr [ %i.ai, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.d, %bb.e ] ; 7 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !234)
  call void @llvm.experimental.noalias.scope.decl(metadata !237)
  %i.w = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 16 ; 3 uses
  store ptr %i.w, ptr %.012.i.i.i, align 8, !tbaa !13, !alias.scope !234, !noalias !237
  %i.x = load ptr, ptr %.0911.i.i.i, align 8, !tbaa !29, !alias.scope !237, !noalias !234 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16 ; 5 uses
  %i.z = icmp eq ptr %i.x, %i.y
  br i1 %i.z, label %bb.f, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

bb.f:                                             ; preds = %.lr.ph.i.i.i
  %i.aa = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !16, !alias.scope !237, !noalias !234 ; 3 uses
  %i.ac = icmp ult i64 %i.ab, 16
  call void @llvm.assume(i1 %i.ac)
  %i.ad = add nuw nsw i64 %i.ab, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.w, ptr noundef nonnull align 8 dereferenceable(1) %i.y, i64 %i.ad, i1 false), !alias.scope !239
  br label %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  store ptr %i.x, ptr %.012.i.i.i, align 8, !tbaa !29, !alias.scope !234, !noalias !237
  %i.ae = load i64, ptr %i.y, align 8, !tbaa !19, !alias.scope !237, !noalias !234
  store i64 %i.ae, ptr %i.w, align 8, !tbaa !19, !alias.scope !234, !noalias !237
  %.phi.trans.insert.i.i.i.i = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %.pre.i.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i.i, align 8, !tbaa !16, !alias.scope !237, !noalias !234
  br label %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i

_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i, %bb.f
  %i.af = phi i64 [ %i.ab, %bb.f ], [ %.pre.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i ]
  %i.ag = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %i.ah = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 8
  store i64 %i.af, ptr %i.ah, align 8, !tbaa !16, !alias.scope !234, !noalias !237
  store ptr %i.y, ptr %.0911.i.i.i, align 8, !tbaa !29, !alias.scope !237, !noalias !234
  store i64 0, ptr %i.ag, align 8, !tbaa !16, !alias.scope !237, !noalias !234
  store i8 0, ptr %i.y, align 8, !tbaa !19, !alias.scope !237, !noalias !234
  %i.ai = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 32 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ai, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit, label %.lr.ph.i.i.i, !llvm.loop !240

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit: ; preds = %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i, %bb.e
  %.0.lcssa.i.i.i = phi ptr [ %11, %bb.e ], [ %i.aj, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i ]
  %i.ak = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 32 ; 2 uses
  %.not10.i.i.i26 = icmp eq ptr %1, %i.c
  br i1 %.not10.i.i.i26, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit36, label %.lr.ph.i.i.i27

.lr.ph.i.i.i27:                                   ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i33
  %.012.i.i.i28 = phi ptr [ %i.ay, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i33 ], [ %i.ak, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit ] ; 5 uses
  %.0911.i.i.i29 = phi ptr [ %i.ax, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i33 ], [ %1, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit ] ; 7 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !241)
  call void @llvm.experimental.noalias.scope.decl(metadata !244)
  %i.al = getelementptr inbounds nuw i8, ptr %.012.i.i.i28, i64 16 ; 3 uses
  store ptr %i.al, ptr %.012.i.i.i28, align 8, !tbaa !13, !alias.scope !241, !noalias !244
  %i.am = load ptr, ptr %.0911.i.i.i29, align 8, !tbaa !29, !alias.scope !244, !noalias !241 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.0911.i.i.i29, i64 16 ; 5 uses
  %i.ao = icmp eq ptr %i.am, %i.an
  br i1 %i.ao, label %bb.g, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i30

bb.g:                                             ; preds = %.lr.ph.i.i.i27
  %i.ap = getelementptr inbounds nuw i8, ptr %.0911.i.i.i29, i64 8
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !16, !alias.scope !244, !noalias !241 ; 3 uses
  %i.ar = icmp ult i64 %i.aq, 16
  call void @llvm.assume(i1 %i.ar)
  %i.as = add nuw nsw i64 %i.aq, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.al, ptr noundef nonnull align 8 dereferenceable(1) %i.an, i64 %i.as, i1 false), !alias.scope !246
  br label %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i33

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i30: ; preds = %.lr.ph.i.i.i27
  store ptr %i.am, ptr %.012.i.i.i28, align 8, !tbaa !29, !alias.scope !241, !noalias !244
  %i.at = load i64, ptr %i.an, align 8, !tbaa !19, !alias.scope !244, !noalias !241
  store i64 %i.at, ptr %i.al, align 8, !tbaa !19, !alias.scope !241, !noalias !244
  %.phi.trans.insert.i.i.i.i31 = getelementptr inbounds nuw i8, ptr %.0911.i.i.i29, i64 8
  %.pre.i.i.i.i32 = load i64, ptr %.phi.trans.insert.i.i.i.i31, align 8, !tbaa !16, !alias.scope !244, !noalias !241
  br label %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i33

_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i33: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i30, %bb.g
  %i.au = phi i64 [ %i.aq, %bb.g ], [ %.pre.i.i.i.i32, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i30 ]
  %i.av = getelementptr inbounds nuw i8, ptr %.0911.i.i.i29, i64 8
  %i.aw = getelementptr inbounds nuw i8, ptr %.012.i.i.i28, i64 8
  store i64 %i.au, ptr %i.aw, align 8, !tbaa !16, !alias.scope !241, !noalias !244
  store ptr %i.an, ptr %.0911.i.i.i29, align 8, !tbaa !29, !alias.scope !244, !noalias !241
  store i64 0, ptr %i.av, align 8, !tbaa !16, !alias.scope !244, !noalias !241
  store i8 0, ptr %i.an, align 8, !tbaa !19, !alias.scope !244, !noalias !241
  %i.ax = getelementptr inbounds nuw i8, ptr %.0911.i.i.i29, i64 32 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %.012.i.i.i28, i64 32 ; 2 uses
  %.not.i.i.i34 = icmp eq ptr %i.ax, %i.c
  br i1 %.not.i.i.i34, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit36, label %.lr.ph.i.i.i27, !llvm.loop !240

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit36: ; preds = %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i33, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit
  %.0.lcssa.i.i.i35 = phi ptr [ %i.ak, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit ], [ %i.ay, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i33 ]
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i37 = icmp eq ptr %i.d, null
  br i1 %.not.i37, label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE13_M_deallocateEPS5_m.exit, label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit36
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !75
  %i.bb = ptrtoint ptr %i.ba to i64
  %i.bc = sub i64 %i.bb, %i.f
  call void @_ZdlPvm(ptr noundef nonnull %i.d, i64 noundef %i.bc) #28
  br label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE13_M_deallocateEPS5_m.exit

_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE13_M_deallocateEPS5_m.exit: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit36, %bb.h
  store ptr %11, ptr %0, align 8, !tbaa !71
  store ptr %.0.lcssa.i.i.i35, ptr %i.b, align 8, !tbaa !73
  %i.bd = getelementptr inbounds nuw [32 x i8], ptr %11, i64 %7
  store ptr %i.bd, ptr %i.az, align 8, !tbaa !75
  ret void

bb.i:                                             ; preds = %bb.j
  %i.be = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.k unwind label %bb.l

bb.j:                                             ; preds = %.noexc.i
  %i.bf = landingpad { ptr, i32 }
          catch ptr null
  %i.bg = extractvalue { ptr, i32 } %i.bf, 0
  %i.bh = call ptr @__cxa_begin_catch(ptr %i.bg) #26 ; 0 uses
  call void @_ZdlPvm(ptr noundef nonnull %11, i64 noundef %10) #28
  invoke void @__cxa_rethrow() #29
          to label %bb.m unwind label %bb.i

bb.k:                                             ; preds = %bb.i
  resume { ptr, i32 } %i.be

bb.l:                                             ; preds = %bb.i
  %i.bi = landingpad { ptr, i32 }
          catch ptr null
  %i.bj = extractvalue { ptr, i32 } %i.bi, 0
  call void @__clang_call_terminate(ptr %i.bj) #30
  unreachable

bb.m:                                             ; preds = %bb.j
  unreachable
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #13 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not4.i = icmp eq ptr %0, %1
  br i1 %.not4.i, label %_ZNSt12_Destroy_auxILb0EE9__destroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvT_S9_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i
  %.05.i = phi ptr [ %i.f, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i ], [ %0, %bb.a ] ; 3 uses
  %i.a = load ptr, ptr %.05.i, align 8, !tbaa !29 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %.05.i, i64 16 ; 2 uses
  %i.c = icmp eq ptr %i.a, %i.b
  br i1 %i.c, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %.lr.ph.i
  %i.d = load i64, ptr %i.b, align 8, !tbaa !19
  %i.e = add i64 %i.d, 1
  tail call void @_ZdlPvm(ptr noundef %i.a, i64 noundef %i.e) #28
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i: ; preds = %.lr.ph.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  %i.f = getelementptr inbounds nuw i8, ptr %.05.i, i64 32 ; 2 uses
  %.not.i = icmp eq ptr %i.f, %1
  br i1 %.not.i, label %_ZNSt12_Destroy_auxILb0EE9__destroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvT_S9_.exit, label %.lr.ph.i, !llvm.loop !74

_ZNSt12_Destroy_auxILb0EE9__destroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvT_S9_.exit: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i, %bb.a
  ret void
}

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_eraseEmm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress uwtable
define linkonce_odr ptr @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE8_M_eraseEN9__gnu_cxx17__normal_iteratorIPS5_S7_EE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !68   ; 4 uses
  %.not = icmp eq ptr %i.a, %i.c
  br i1 %.not, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEESC_ET0_T_SE_SD_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = ptrtoint ptr %i.c to i64
  %i.e = ptrtoint ptr %i.a to i64
  %i.f = sub i64 %i.d, %i.e
  %i.g = ashr exact i64 %i.f, 5                   ; 2 uses
  %i.h = icmp sgt i64 %i.g, 0
  br i1 %i.h, label %.lr.ph.i.i.i.i.i, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEESC_ET0_T_SE_SD_.exit

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.b, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i.i.i.i.i
  %.013.i.i.i.i.i = phi i64 [ %i.aj, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i.i.i.i.i ], [ %i.g, %bb.b ] ; 2 uses
  %.0811.i.i.i.i.i = phi ptr [ %i.ai, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i.i.i.i.i ], [ %1, %bb.b ] ; 9 uses
  %.0910.i.i.i.i.i = phi ptr [ %i.ah, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i.i.i.i.i ], [ %i.a, %bb.b ] ; 10 uses
  %i.i = load ptr, ptr %.0811.i.i.i.i.i, align 8, !tbaa !29 ; 6 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 16 ; 4 uses
  %i.k = icmp eq ptr %i.i, %i.j
  %i.l = load ptr, ptr %.0910.i.i.i.i.i, align 8, !tbaa !29 ; 5 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 16 ; 6 uses
  %i.n = icmp eq ptr %i.l, %i.m                   ; 2 uses
  br i1 %i.k, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i
  br i1 %i.n, label %bb.c, label %.thread.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i
  br i1 %i.n, label %bb.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i.i.i.i.i

bb.c:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i
  %i.o = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 8 ; 2 uses
  %i.p = load i64, ptr %i.o, align 8, !tbaa !16   ; 3 uses
  %i.q = icmp ult i64 %i.p, 16
  tail call void @llvm.assume(i1 %i.q)
  switch i64 %i.p, label %bb.e [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i.i.i.i
    i64 1, label %bb.d
  ]

bb.d:                                             ; preds = %bb.c
  %i.r = load i8, ptr %i.l, align 1, !tbaa !19
  store i8 %i.r, ptr %i.i, align 1, !tbaa !19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i.i.i.i

bb.e:                                             ; preds = %bb.c
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.i, ptr align 1 %i.l, i64 %i.p, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i.i.i.i: ; preds = %bb.e, %bb.d, %bb.c
  %i.s = load i64, ptr %i.o, align 8, !tbaa !16   ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 8
  store i64 %i.s, ptr %i.t, align 8, !tbaa !16
  %i.u = load ptr, ptr %.0811.i.i.i.i.i, align 8, !tbaa !29
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.s
  store i8 0, ptr %i.v, align 1, !tbaa !19
  %.pre.i.i.i.i.i.i = load ptr, ptr %.0910.i.i.i.i.i, align 8, !tbaa !29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i.i.i.i.i

.thread.i.i.i.i.i.i:                              ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  %i.w = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 8
  store ptr %i.l, ptr %.0811.i.i.i.i.i, align 8, !tbaa !29
  %i.x = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 8
  %i.y = load i64, ptr %i.x, align 8, !tbaa !16
  store i64 %i.y, ptr %i.w, align 8, !tbaa !16
  %i.z = load i64, ptr %i.m, align 8, !tbaa !19
  store i64 %i.z, ptr %i.j, align 8, !tbaa !19
  br label %bb.g

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i
  %i.aa = load i64, ptr %i.j, align 8, !tbaa !19
  store ptr %i.l, ptr %.0811.i.i.i.i.i, align 8, !tbaa !29
  %i.ab = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 8
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !16
  %i.ad = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 8
  store i64 %i.ac, ptr %i.ad, align 8, !tbaa !16
  %i.ae = load i64, ptr %i.m, align 8, !tbaa !19
  store i64 %i.ae, ptr %i.j, align 8, !tbaa !19
  %.not.i.i.i.i.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i.i.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i.i.i.i.i
  store ptr %i.i, ptr %.0910.i.i.i.i.i, align 8, !tbaa !29
  store i64 %i.aa, ptr %i.m, align 8, !tbaa !19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i.i.i.i.i

bb.g:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i.i.i.i.i, %.thread.i.i.i.i.i.i
  store ptr %i.m, ptr %.0910.i.i.i.i.i, align 8, !tbaa !29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i.i.i.i.i: ; preds = %bb.g, %bb.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i.i.i.i
  %i.af = phi ptr [ %.pre.i.i.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i.i.i.i ], [ %i.i, %bb.f ], [ %i.m, %bb.g ]
  %i.ag = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 8
  store i64 0, ptr %i.ag, align 8, !tbaa !16
  store i8 0, ptr %i.af, align 1, !tbaa !19
  %i.ah = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 32
  %i.ai = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 32
  %i.aj = add nsw i64 %.013.i.i.i.i.i, -1
  %i.ak = icmp sgt i64 %.013.i.i.i.i.i, 1
  br i1 %i.ak, label %.lr.ph.i.i.i.i.i, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEESC_ET0_T_SE_SD_.exit.loopexit, !llvm.loop !247

_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEESC_ET0_T_SE_SD_.exit.loopexit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i.i.i.i.i
  %.pre = load ptr, ptr %i.b, align 8, !tbaa !73
  br label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEESC_ET0_T_SE_SD_.exit

_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEESC_ET0_T_SE_SD_.exit: ; preds = %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEESC_ET0_T_SE_SD_.exit.loopexit, %bb.b, %bb.a
  %i.al = phi ptr [ %.pre, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEESC_ET0_T_SE_SD_.exit.loopexit ], [ %i.c, %bb.b ], [ %i.c, %bb.a ] ; 2 uses
  %i.am = getelementptr inbounds i8, ptr %i.al, i64 -32 ; 2 uses
  store ptr %i.am, ptr %i.b, align 8, !tbaa !73
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !29 ; 2 uses
  %i.ao = getelementptr inbounds i8, ptr %i.al, i64 -16 ; 2 uses
  %i.ap = icmp eq ptr %i.an, %i.ao
  br i1 %i.ap, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEESC_ET0_T_SE_SD_.exit
  %i.aq = load i64, ptr %i.ao, align 8, !tbaa !19
  %i.ar = add i64 %i.aq, 1
  tail call void @_ZdlPvm(ptr noundef %i.an, i64 noundef %i.ar) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEESC_ET0_T_SE_SD_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  ret ptr %1
}

; Function Attrs: mustprogress uwtable
define linkonce_odr ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St6vectorIS5_SaIS5_EEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJRS7_EESM_IJEEEEESt17_Rb_tree_iteratorISB_ESt23_Rb_tree_const_iteratorISB_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %1, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 1 dereferenceable(1) %4) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"struct.std::_Rb_tree<std::__cxx11::basic_string<char>, std::pair<const std::__cxx11::basic_string<char>, std::vector<std::__cxx11::basic_string<char>>>, std::_Select1st<std::pair<const std::__cxx11::basic_string<char>, std::vector<std::__cxx11::basic_string<char>>>>, std::less<std::__cxx11::basic_string<char>>>::_Auto_node", align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26
  store ptr %0, ptr %5, align 8, !tbaa !248
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.b = tail call noalias noundef nonnull dereferenceable(88) ptr @_Znwm(i64 noundef 88) #27 ; 11 uses
  tail call void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St6vectorIS5_SaIS5_EEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE17_M_construct_nodeIJRKSt21piecewise_construct_tSt5tupleIJRS7_EESM_IJEEEEEvPSt13_Rb_tree_nodeISB_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull %i.b, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 1 dereferenceable(1) %4)
  store ptr %i.b, ptr %i.a, align 8, !tbaa !250
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 3 uses
  %i.d = invoke { ptr, ptr } @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St6vectorIS5_SaIS5_EEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorISB_ERS7_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(32) %i.c)
          to label %bb.b unwind label %bb.e       ; 2 uses

bb.b:                                             ; preds = %bb.a
  %i.e = extractvalue { ptr, ptr } %i.d, 0        ; 2 uses
  %i.f = extractvalue { ptr, ptr } %i.d, 1        ; 5 uses
  %.not = icmp eq ptr %i.f, null
  br i1 %.not, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.not.i.i = icmp ne ptr %i.e, null
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.h = icmp eq ptr %i.f, %i.g
end_hunk_3
