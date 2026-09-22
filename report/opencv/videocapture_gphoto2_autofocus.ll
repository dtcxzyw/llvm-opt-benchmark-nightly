Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/videocapture_gphoto2_autofocus?download=true
inline.NumInlined: 286
inline.NumDeleted: 82
begin_hunk_0_@main:bb.a

bb.ed:                                            ; preds = %bb.eb
  %i.uf = inttoptr i64 %i.tx to ptr               ; 2 uses
  %i.ug = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.uf) #17
  %i.uh = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.tv, ptr noundef nonnull %i.uf, i64 noundef %i.ug)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit137 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit137: ; preds = %bb.ec, %bb.ed
  %i.ui = load ptr, ptr %i.tv, align 8, !tbaa !20
  %i.uj = getelementptr i8, ptr %i.ui, i64 -24
  %i.uk = load i64, ptr %i.uj, align 8
  %i.ul = getelementptr inbounds i8, ptr %i.tv, i64 %i.uk
  %i.um = getelementptr inbounds nuw i8, ptr %i.ul, i64 240
  %i.un = load ptr, ptr %i.um, align 8, !tbaa !77 ; 6 uses
  %.not.i.i.i246 = icmp eq ptr %i.un, null
  br i1 %.not.i.i.i246, label %.invoke460, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i247

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i247: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit137
  %i.uo = getelementptr inbounds nuw i8, ptr %i.un, i64 56
  %i.up = load i8, ptr %i.uo, align 8, !tbaa !83
  %.not.i1.i.i248 = icmp eq i8 %i.up, 0
  br i1 %.not.i1.i.i248, label %bb.ef, label %bb.ee

bb.ee:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i247
  %i.uq = getelementptr inbounds nuw i8, ptr %i.un, i64 67
  %i.ur = load i8, ptr %i.uq, align 1, !tbaa !15
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i249

bb.ef:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i247
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.un)
          to label %.noexc252 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc252:                                        ; preds = %bb.ef
  %i.us = load ptr, ptr %i.un, align 8, !tbaa !20
  %i.ut = getelementptr inbounds nuw i8, ptr %i.us, i64 48
  %i.uu = load ptr, ptr %i.ut, align 8
  %i.uv = invoke noundef signext i8 %i.uu(ptr noundef nonnull align 8 dereferenceable(570) %i.un, i8 noundef signext 10)
          to label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i249 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit, !inline_history !53

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i249: ; preds = %.noexc252, %bb.ee
  %.0.i.i.i250 = phi i8 [ %i.ur, %bb.ee ], [ %i.uv, %.noexc252 ]
  %i.uw = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.tv, i8 noundef signext %.0.i.i.i250)
          to label %.noexc254 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc254:                                        ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i249
  %i.ux = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.uw)
          to label %_ZNSolsEPFRSoS_E.exit139 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit ; 0 uses

_ZNSolsEPFRSoS_E.exit139:                         ; preds = %.noexc254, %_ZNSolsEPFRSoS_E.exit115
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #17
  %i.uy = load ptr, ptr @windowOriginal, align 8, !tbaa !29 ; 4 uses
  store ptr %i.nw, ptr %19, align 8, !tbaa !16
  %i.uz = icmp eq ptr %i.uy, null
  br i1 %i.uz, label %bb.eg, label %bb.eh

bb.eg:                                            ; preds = %_ZNSolsEPFRSoS_E.exit139
  invoke void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.37) #18
          to label %.noexc142 unwind label %.loopexit.split-lp343

.noexc142:                                        ; preds = %bb.eg
  unreachable

bb.eh:                                            ; preds = %_ZNSolsEPFRSoS_E.exit139
  %i.va = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.uy) #17 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  store i64 %i.va, ptr %i.a, align 8, !tbaa !17
  %i.vb = icmp ugt i64 %i.va, 15
  br i1 %i.vb, label %.noexc.i141, label %._crit_edge.i.i140

.noexc.i141:                                      ; preds = %bb.eh
  %i.vc = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %19, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc143 unwind label %.loopexit342 ; 2 uses

.noexc143:                                        ; preds = %.noexc.i141
  store ptr %i.vc, ptr %19, align 8, !tbaa !14
  %i.vd = load i64, ptr %i.a, align 8, !tbaa !17
  store i64 %i.vd, ptr %i.nw, align 8, !tbaa !15
  br label %._crit_edge.i.i140

._crit_edge.i.i140:                               ; preds = %.noexc143, %bb.eh
  %i.ve = phi ptr [ %i.vc, %.noexc143 ], [ %i.nw, %bb.eh ] ; 2 uses
  switch i64 %i.va, label %bb.ej [
    i64 1, label %bb.ei
    i64 0, label %bb.ek
  ]

bb.ei:                                            ; preds = %._crit_edge.i.i140
  %i.vf = load i8, ptr %i.uy, align 1, !tbaa !15
  store i8 %i.vf, ptr %i.ve, align 1, !tbaa !15
  br label %bb.ek

bb.ej:                                            ; preds = %._crit_edge.i.i140
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ve, ptr nonnull align 1 %i.uy, i64 %i.va, i1 false)
  br label %bb.ek

bb.ek:                                            ; preds = %._crit_edge.i.i140, %bb.ei, %bb.ej
  %i.vg = load i64, ptr %i.a, align 8, !tbaa !17  ; 2 uses
  store i64 %i.vg, ptr %i.nx, align 8, !tbaa !18
  %i.vh = load ptr, ptr %19, align 8, !tbaa !14
  %i.vi = getelementptr inbounds nuw i8, ptr %i.vh, i64 %i.vg
  store i8 0, ptr %i.vi, align 1, !tbaa !15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #17
  store i32 0, ptr %i.ny, align 8, !tbaa !32
  store i32 0, ptr %i.nz, align 4, !tbaa !33
  store i32 16842752, ptr %20, align 8, !tbaa !35
  store ptr %17, ptr %i.oa, align 8, !tbaa !36
  invoke void @_ZN2cv6imshowERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS_11_InputArrayE(ptr noundef nonnull align 8 dereferenceable(32) %19, ptr noundef nonnull align 8 dereferenceable(24) %20)
          to label %bb.el unwind label %bb.en

bb.el:                                            ; preds = %bb.ek
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #17
  %i.vj = load ptr, ptr %19, align 8, !tbaa !14   ; 2 uses
  %i.vk = icmp eq ptr %i.vj, %i.nw
  br i1 %i.vk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit147, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i145

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i145: ; preds = %bb.el
  %i.vl = load i64, ptr %i.nw, align 8, !tbaa !15
  %i.vm = add i64 %i.vl, 1
  call void @_ZdlPvm(ptr noundef %i.vj, i64 noundef %i.vm) #16
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit147

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit147: ; preds = %bb.el, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i145
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #17
  %i.vn = invoke noundef i32 @_ZN2cv7waitKeyEi(i32 noundef 30)
          to label %bb.em unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit ; 2 uses

bb.em:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit147
  %sext52 = shl i32 %i.vn, 24
  %i.vo = ashr exact i32 %sext52, 24
  switch i32 %i.vo, label %_ZL13focusDriveEndRN2cv12VideoCaptureEi.exit152 [
    i32 107, label %.invoke459
    i32 106, label %bb.eo
    i32 44, label %.preheader
    i32 46, label %.preheader325
    i32 114, label %bb.ep
    i32 102, label %bb.eq
  ]

.loopexit342:                                     ; preds = %.noexc.i141
  %lpad.loopexit344 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit150

.loopexit.split-lp343:                            ; preds = %bb.eg
  %lpad.loopexit.split-lp345 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit150

bb.en:                                            ; preds = %bb.ek
  %i.vp = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #17
  %i.vq = load ptr, ptr %19, align 8, !tbaa !14   ; 2 uses
  %i.vr = icmp eq ptr %i.vq, %i.nw
  br i1 %i.vr, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit150, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i148

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i148: ; preds = %bb.en
  %i.vs = load i64, ptr %i.nw, align 8, !tbaa !15
  %i.vt = add i64 %i.vs, 1
  call void @_ZdlPvm(ptr noundef %i.vq, i64 noundef %i.vt) #16
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit150

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit150: ; preds = %bb.en, %.loopexit342, %.loopexit.split-lp343, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i148
  %.pn49.pn = phi { ptr, i32 } [ %i.vp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i148 ], [ %lpad.loopexit.split-lp345, %.loopexit.split-lp343 ], [ %lpad.loopexit344, %.loopexit342 ], [ %i.vp, %bb.en ]
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #17
  br label %.loopexit.split-lp348

.invoke459:                                       ; preds = %bb.em, %bb.eo
  %i.vu = phi double [ -1.000000e+02, %bb.eo ], [ 1.000000e+02, %bb.em ]
  %i.vv = invoke noundef zeroext i1 @_ZN2cv12VideoCapture3setEid(ptr noundef nonnull align 8 dereferenceable(25) %15, i32 noundef 27, double noundef %i.vu)
          to label %_ZL13focusDriveEndRN2cv12VideoCaptureEi.exit152 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit ; 0 uses

bb.eo:                                            ; preds = %bb.em
  br label %.invoke459

.preheader:                                       ; preds = %bb.em, %.noexc151
  %i.vw = load ptr, ptr %15, align 8, !tbaa !20
  %i.vx = getelementptr inbounds nuw i8, ptr %i.vw, i64 112
  %i.vy = load ptr, ptr %i.vx, align 8
  %i.vz = invoke noundef zeroext i1 %i.vy(ptr noundef nonnull align 8 dereferenceable(25) %15, i32 noundef 27, double noundef -3.276700e+04)
          to label %.noexc151 unwind label %.loopexit, !inline_history !58

.noexc151:                                        ; preds = %.preheader
  br i1 %i.vz, label %.preheader, label %_ZL13focusDriveEndRN2cv12VideoCaptureEi.exit152, !llvm.loop !56

.preheader325:                                    ; preds = %bb.em, %.noexc153
  %i.wa = load ptr, ptr %15, align 8, !tbaa !20
  %i.wb = getelementptr inbounds nuw i8, ptr %i.wa, i64 112
  %i.wc = load ptr, ptr %i.wb, align 8
  %i.wd = invoke noundef zeroext i1 %i.wc(ptr noundef nonnull align 8 dereferenceable(25) %15, i32 noundef 27, double noundef 3.276700e+04)
          to label %.noexc153 unwind label %.loopexit.split-lp.loopexit, !inline_history !58

.noexc153:                                        ; preds = %.preheader325
  br i1 %i.wd, label %.preheader325, label %_ZL13focusDriveEndRN2cv12VideoCaptureEi.exit152, !llvm.loop !56

bb.ep:                                            ; preds = %bb.em
  br label %_ZL13focusDriveEndRN2cv12VideoCaptureEi.exit152

bb.eq:                                            ; preds = %bb.em
  %21 = icmp ne i8 %.229, 1
  %22 = zext i1 %21 to i8
  br label %_ZL13focusDriveEndRN2cv12VideoCaptureEi.exit152

_ZL13focusDriveEndRN2cv12VideoCaptureEi.exit152:  ; preds = %.noexc153, %.noexc151, %.invoke459, %bb.eq, %bb.ep, %bb.em
  %.sroa.0298.3 = phi i32 [ %.sroa.0298.2, %bb.em ], [ %.sroa.0298.2, %.invoke459 ], [ %.sroa.0298.2, %.noexc151 ], [ %.sroa.0298.2, %bb.eq ], [ 1024, %bb.ep ], [ %.sroa.0298.2, %.noexc153 ]
  %.sroa.16.2 = phi i32 [ %.sroa.16.1, %bb.em ], [ %.sroa.16.1, %.invoke459 ], [ %.sroa.16.1, %.noexc151 ], [ %.sroa.16.1, %bb.eq ], [ 1, %bb.ep ], [ %.sroa.16.1, %.noexc153 ]
  %.sroa.26.2 = phi i32 [ %.sroa.26.1, %bb.em ], [ %.sroa.26.1, %.invoke459 ], [ %.sroa.26.1, %.noexc151 ], [ %.sroa.26.1, %bb.eq ], [ 0, %bb.ep ], [ %.sroa.26.1, %.noexc153 ]
  %.sroa.36.2 = phi i32 [ %.sroa.36.1, %bb.em ], [ %.sroa.36.1, %.invoke459 ], [ %.sroa.36.1, %.noexc151 ], [ %.sroa.36.1, %bb.eq ], [ 0, %bb.ep ], [ %.sroa.36.1, %.noexc153 ]
  %.sroa.45.2 = phi i32 [ %.sroa.45.1, %bb.em ], [ %.sroa.45.1, %.invoke459 ], [ %.sroa.45.1, %.noexc151 ], [ %.sroa.45.1, %bb.eq ], [ 0, %bb.ep ], [ %.sroa.45.1, %.noexc153 ]
  %.sroa.60.2 = phi double [ %.sroa.60.1, %bb.em ], [ %.sroa.60.1, %.invoke459 ], [ %.sroa.60.1, %.noexc151 ], [ %.sroa.60.1, %bb.eq ], [ 0.000000e+00, %bb.ep ], [ %.sroa.60.1, %.noexc153 ]
  %.sroa.55.2 = phi double [ %.sroa.55.1, %bb.em ], [ %.sroa.55.1, %.invoke459 ], [ %.sroa.55.1, %.noexc151 ], [ %.sroa.55.1, %bb.eq ], [ 0.000000e+00, %bb.ep ], [ %.sroa.55.1, %.noexc153 ]
  %.330 = phi i8 [ %.229, %bb.em ], [ %.229, %.invoke459 ], [ %.229, %.noexc151 ], [ %22, %bb.eq ], [ 1, %bb.ep ], [ %.229, %.noexc153 ]
  br label %_ZL13focusDriveEndRN2cv12VideoCaptureEi.exit, !llvm.loop !60

bb.er:                                            ; preds = %bb.dr, %_ZL13focusDriveEndRN2cv12VideoCaptureEi.exit, %_ZL13focusDriveEndRN2cv12VideoCaptureEi.exit, %bb.cr
  %i.we = load i8, ptr getelementptr inbounds nuw (i8, ptr @GlobalArgs, i64 77), align 1, !tbaa !68, !range !84, !noundef !85
  %i.wf = trunc nuw i8 %i.we to i1
  br i1 %i.wf, label %bb.es, label %_ZNSolsEPFRSoS_E.exit66

bb.es:                                            ; preds = %bb.er
  %i.wg = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.8, i64 noundef 9)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit156 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit156: ; preds = %bb.es
  %i.wh = invoke noundef double @_ZNK2cv12VideoCapture3getEi(ptr noundef nonnull align 8 dereferenceable(25) %15, i32 noundef 7)
          to label %bb.et unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.et:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit156
  %i.wi = fptosi double %i.wh to i32
  %i.wj = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %i.wi)
          to label %bb.eu unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 4 uses

bb.eu:                                            ; preds = %bb.et
  %i.wk = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.wj, ptr noundef nonnull @.str.9, i64 noundef 7)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit158 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit158: ; preds = %bb.eu
  %i.wl = load ptr, ptr %i.wj, align 8, !tbaa !20
  %i.wm = getelementptr i8, ptr %i.wl, i64 -24
  %i.wn = load i64, ptr %i.wm, align 8
  %i.wo = getelementptr inbounds i8, ptr %i.wj, i64 %i.wn
  %i.wp = getelementptr inbounds nuw i8, ptr %i.wo, i64 240
  %i.wq = load ptr, ptr %i.wp, align 8, !tbaa !77 ; 6 uses
  %.not.i.i.i257 = icmp eq ptr %i.wq, null
  br i1 %.not.i.i.i257, label %.invoke460, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i258

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i258: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit158
  %i.wr = getelementptr inbounds nuw i8, ptr %i.wq, i64 56
  %i.ws = load i8, ptr %i.wr, align 8, !tbaa !83
  %.not.i1.i.i259 = icmp eq i8 %i.ws, 0
  br i1 %.not.i1.i.i259, label %bb.ew, label %bb.ev

bb.ev:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i258
  %i.wt = getelementptr inbounds nuw i8, ptr %i.wq, i64 67
  %i.wu = load i8, ptr %i.wt, align 1, !tbaa !15
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i260

bb.ew:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i258
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.wq)
          to label %.noexc263 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc263:                                        ; preds = %bb.ew
  %i.wv = load ptr, ptr %i.wq, align 8, !tbaa !20
  %i.ww = getelementptr inbounds nuw i8, ptr %i.wv, i64 48
  %i.wx = load ptr, ptr %i.ww, align 8
  %i.wy = invoke noundef signext i8 %i.wx(ptr noundef nonnull align 8 dereferenceable(570) %i.wq, i8 noundef signext 10)
          to label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i260 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !53

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i260: ; preds = %.noexc263, %bb.ev
  %.0.i.i.i261 = phi i8 [ %i.wu, %bb.ev ], [ %i.wy, %.noexc263 ]
  %i.wz = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.wj, i8 noundef signext %.0.i.i.i261)
          to label %.noexc265 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc265:                                        ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i260
  %i.xa = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.wz)
          to label %_ZNSolsEPFRSoS_E.exit160 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

_ZNSolsEPFRSoS_E.exit160:                         ; preds = %.noexc265
  %i.xb = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.xa, ptr noundef nonnull @.str.10, i64 noundef 3)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit162 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit162: ; preds = %_ZNSolsEPFRSoS_E.exit160
  %i.xc = invoke noundef double @_ZNK2cv12VideoCapture3getEi(ptr noundef nonnull align 8 dereferenceable(25) %15, i32 noundef 0)
          to label %bb.ex unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ex:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit162
  %i.xd = fdiv double %i.xc, 1.000000e+02
  %i.xe = fptosi double %i.xd to i32
  %i.xf = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %i.xa, i32 noundef %i.xe)
          to label %bb.ey unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 4 uses

bb.ey:                                            ; preds = %bb.ex
  %i.xg = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.xf, ptr noundef nonnull @.str.11, i64 noundef 9)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit164 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit164: ; preds = %bb.ey
  %i.xh = load ptr, ptr %i.xf, align 8, !tbaa !20
  %i.xi = getelementptr i8, ptr %i.xh, i64 -24
  %i.xj = load i64, ptr %i.xi, align 8
  %i.xk = getelementptr inbounds i8, ptr %i.xf, i64 %i.xj
  %i.xl = getelementptr inbounds nuw i8, ptr %i.xk, i64 240
  %i.xm = load ptr, ptr %i.xl, align 8, !tbaa !77 ; 6 uses
  %.not.i.i.i268 = icmp eq ptr %i.xm, null
  br i1 %.not.i.i.i268, label %.invoke460, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i269

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i269: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit164
  %i.xn = getelementptr inbounds nuw i8, ptr %i.xm, i64 56
  %i.xo = load i8, ptr %i.xn, align 8, !tbaa !83
  %.not.i1.i.i270 = icmp eq i8 %i.xo, 0
  br i1 %.not.i1.i.i270, label %bb.fa, label %bb.ez

bb.ez:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i269
  %i.xp = getelementptr inbounds nuw i8, ptr %i.xm, i64 67
  %i.xq = load i8, ptr %i.xp, align 1, !tbaa !15
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i271

bb.fa:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i269
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.xm)
          to label %.noexc274 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc274:                                        ; preds = %bb.fa
  %i.xr = load ptr, ptr %i.xm, align 8, !tbaa !20
  %i.xs = getelementptr inbounds nuw i8, ptr %i.xr, i64 48
  %i.xt = load ptr, ptr %i.xs, align 8
  %i.xu = invoke noundef signext i8 %i.xt(ptr noundef nonnull align 8 dereferenceable(570) %i.xm, i8 noundef signext 10)
          to label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i271 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !53

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i271: ; preds = %.noexc274, %bb.ez
  %.0.i.i.i272 = phi i8 [ %i.xq, %bb.ez ], [ %i.xu, %.noexc274 ]
  %i.xv = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.xf, i8 noundef signext %.0.i.i.i272)
          to label %.noexc276 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc276:                                        ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i271
  %i.xw = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.xv)
          to label %_ZNSolsEPFRSoS_E.exit166 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

_ZNSolsEPFRSoS_E.exit166:                         ; preds = %.noexc276
  %i.xx = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.xw, ptr noundef nonnull @.str.12, i64 noundef 13)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit168 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit168: ; preds = %_ZNSolsEPFRSoS_E.exit166
  %i.xy = invoke noundef double @_ZNK2cv12VideoCapture3getEi(ptr noundef nonnull align 8 dereferenceable(25) %15, i32 noundef 5)
          to label %bb.fb unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.fb:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit168
  %i.xz = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.xw, double noundef %i.xy)
          to label %_ZNSolsEd.exit170 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 4 uses

_ZNSolsEd.exit170:                                ; preds = %bb.fb
  %i.ya = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.xz, ptr noundef nonnull @.str.13, i64 noundef 5)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit172 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit172: ; preds = %_ZNSolsEd.exit170
  %i.yb = load ptr, ptr %i.xz, align 8, !tbaa !20
  %i.yc = getelementptr i8, ptr %i.yb, i64 -24
  %i.yd = load i64, ptr %i.yc, align 8
  %i.ye = getelementptr inbounds i8, ptr %i.xz, i64 %i.yd
  %i.yf = getelementptr inbounds nuw i8, ptr %i.ye, i64 240
  %i.yg = load ptr, ptr %i.yf, align 8, !tbaa !77 ; 6 uses
  %.not.i.i.i279 = icmp eq ptr %i.yg, null
  br i1 %.not.i.i.i279, label %.invoke460, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i280

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i280: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit172
  %i.yh = getelementptr inbounds nuw i8, ptr %i.yg, i64 56
  %i.yi = load i8, ptr %i.yh, align 8, !tbaa !83
  %.not.i1.i.i281 = icmp eq i8 %i.yi, 0
  br i1 %.not.i1.i.i281, label %bb.fd, label %bb.fc

bb.fc:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i280
  %i.yj = getelementptr inbounds nuw i8, ptr %i.yg, i64 67
  %i.yk = load i8, ptr %i.yj, align 1, !tbaa !15
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i282

bb.fd:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i280
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.yg)
          to label %.noexc285 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc285:                                        ; preds = %bb.fd
  %i.yl = load ptr, ptr %i.yg, align 8, !tbaa !20
  %i.ym = getelementptr inbounds nuw i8, ptr %i.yl, i64 48
  %i.yn = load ptr, ptr %i.ym, align 8
  %i.yo = invoke noundef signext i8 %i.yn(ptr noundef nonnull align 8 dereferenceable(570) %i.yg, i8 noundef signext 10)
          to label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i282 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !53

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i282: ; preds = %.noexc285, %bb.fc
  %.0.i.i.i283 = phi i8 [ %i.yk, %bb.fc ], [ %i.yo, %.noexc285 ]
  %i.yp = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.xz, i8 noundef signext %.0.i.i.i283)
          to label %.noexc287 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc287:                                        ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i282
  %i.yq = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.yp)
          to label %_ZNSolsEPFRSoS_E.exit66 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZNSolsEPFRSoS_E.exit66:                          ; preds = %.noexc287, %_ZNSolsEPFRSoS_E.exit81, %.noexc188, %bb.er
  %.1 = phi i32 [ -2, %.noexc188 ], [ 0, %bb.er ], [ -1, %_ZNSolsEPFRSoS_E.exit81 ], [ 0, %.noexc287 ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %17) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #17
  call void @_ZN2cv11VideoWriterD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %16) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #17
  br label %bb.ff

.loopexit.split-lp348:                            ; preds = %.loopexit337, %.loopexit.split-lp338, %.loopexit332, %.loopexit.split-lp333, %.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp.loopexit, %.loopexit347, %.loopexit.split-lp348.loopexit.split-lp.loopexit, %.loopexit.split-lp348.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp348.loopexit, %bb.ci, %bb.cj, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit150, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit69
  %.pn55 = phi { ptr, i32 } [ %i.lw, %bb.ci ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit69 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %lpad.loopexit.split-lp357, %.loopexit.split-lp348.loopexit.split-lp.loopexit.split-lp ], [ %.pn49.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit150 ], [ %lpad.loopexit.split-lp335, %.loopexit.split-lp333 ], [ %i.lx, %bb.cj ], [ %lpad.loopexit349, %.loopexit347 ], [ %lpad.loopexit352, %.loopexit.split-lp348.loopexit ], [ %lpad.loopexit356, %.loopexit.split-lp348.loopexit.split-lp.loopexit ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit326, %.loopexit.split-lp.loopexit ], [ %lpad.loopexit330, %.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit334, %.loopexit332 ], [ %lpad.loopexit339, %.loopexit337 ], [ %lpad.loopexit.split-lp340, %.loopexit.split-lp338 ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %17) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #17
  call void @_ZN2cv11VideoWriterD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %16) #17
  br label %bb.fe

bb.fe:                                            ; preds = %.loopexit.split-lp348, %bb.bo
  %.pn55.pn = phi { ptr, i32 } [ %.pn55, %.loopexit.split-lp348 ], [ %i.jy, %bb.bo ]
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #17
  br label %bb.fg
end_hunk_0
