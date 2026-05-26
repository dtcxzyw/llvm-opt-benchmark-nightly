inline.NumInlined: 3741
inline.NumDeleted: 859
begin_hunk_0_@_ZN6Assimp15ColladaExporter15WriteControllerEm:bb.a
  %i.mx = ptrtoint ptr %i.mw to i64
  %i.my = ptrtoint ptr %i.mu to i64
  %i.mz = sub i64 %i.mx, %i.my
  %i.na = ashr exact i64 %i.mz, 2
  %i.nb = lshr i64 %i.na, 4
  invoke void @_ZN6Assimp15ColladaExporter15WriteFloatArrayERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_13FloatDataTypeEPKfm(ptr noundef nonnull align 8 dereferenceable(1248) %0, ptr noundef nonnull align 8 dereferenceable(32) %6, i32 noundef 4, ptr noundef %i.mu, i64 noundef %i.nb)
          to label %bb.aa unwind label %bb.ad

bb.aa:                                            ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit
  %i.nc = load ptr, ptr %6, align 8               ; 2 uses
  %i.nd = icmp eq ptr %i.nc, %i.kj
  br i1 %i.nd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit350, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i348

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i348: ; preds = %bb.aa
  %i.ne = load i64, ptr %i.kj, align 8
  %i.nf = add i64 %i.ne, 1
  call void @_ZdlPvm(ptr noundef %i.nc, i64 noundef %i.nf) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit350

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit350: ; preds = %bb.aa, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i348
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  %i.ng = load ptr, ptr %5, align 8               ; 2 uses
  %i.nh = load ptr, ptr %i.mv, align 8
  %.not.i.i = icmp eq ptr %i.nh, %i.ng
  br i1 %.not.i.i, label %_ZNSt6vectorIfSaIfEE5clearEv.exit, label %_ZSt8_DestroyIPffEvT_S1_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPffEvT_S1_RSaIT0_E.exit.i.i:        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit350
  store ptr %i.ng, ptr %i.mv, align 8
  br label %_ZNSt6vectorIfSaIfEE5clearEv.exit

_ZNSt6vectorIfSaIfEE5clearEv.exit:                ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit350, %_ZSt8_DestroyIPffEvT_S1_RSaIT0_E.exit.i.i
  %i.ni = load i32, ptr %i.n, align 4
  %i.nj = load i32, ptr %i.h, align 8             ; 2 uses
  %i.nk = mul i32 %i.nj, %i.ni                    ; 2 uses
  %i.nl = zext i32 %i.nk to i64                   ; 2 uses
  %.not638 = icmp eq i32 %i.nk, 0
  br i1 %.not638, label %_ZNSt6vectorIfSaIfEE7reserveEm.exit356, label %_ZNSt12_Vector_baseIfSaIfEE11_M_allocateEm.exit.i351

_ZNSt12_Vector_baseIfSaIfEE11_M_allocateEm.exit.i351: ; preds = %_ZNSt6vectorIfSaIfEE5clearEv.exit
  %i.nm = shl nuw nsw i64 %i.nl, 2
  %i.nn = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.nm) #30
          to label %_ZNSt12_Vector_baseIfSaIfEE13_M_deallocateEPfm.exit.i354 unwind label %bb.ae ; 2 uses

_ZNSt12_Vector_baseIfSaIfEE13_M_deallocateEPfm.exit.i354: ; preds = %_ZNSt12_Vector_baseIfSaIfEE11_M_allocateEm.exit.i351
  %i.no = getelementptr inbounds nuw [4 x i8], ptr %i.nn, i64 %i.nl
  %.pre777 = load i32, ptr %i.h, align 8
  br label %_ZNSt6vectorIfSaIfEE7reserveEm.exit356

_ZNSt6vectorIfSaIfEE7reserveEm.exit356:           ; preds = %_ZNSt6vectorIfSaIfEE5clearEv.exit, %_ZNSt12_Vector_baseIfSaIfEE13_M_deallocateEPfm.exit.i354
  %i.np = phi i32 [ %.pre777, %_ZNSt12_Vector_baseIfSaIfEE13_M_deallocateEPfm.exit.i354 ], [ %i.nj, %_ZNSt6vectorIfSaIfEE5clearEv.exit ] ; 2 uses
  %.sroa.22606.4 = phi ptr [ %i.no, %_ZNSt12_Vector_baseIfSaIfEE13_M_deallocateEPfm.exit.i354 ], [ null, %_ZNSt6vectorIfSaIfEE5clearEv.exit ] ; 2 uses
  %.sroa.13.2 = phi ptr [ %i.nn, %_ZNSt12_Vector_baseIfSaIfEE13_M_deallocateEPfm.exit.i354 ], [ null, %_ZNSt6vectorIfSaIfEE5clearEv.exit ] ; 4 uses
  %.not741 = icmp eq i32 %i.np, 0
  br i1 %.not741, label %._crit_edge703, label %.preheader646.lr.ph

.preheader646.lr.ph:                              ; preds = %_ZNSt6vectorIfSaIfEE7reserveEm.exit356
  %i.nq = getelementptr inbounds nuw i8, ptr %i.g, i64 224 ; 2 uses
  %.pre778 = load ptr, ptr %i.nq, align 8
  br label %.preheader646

.preheader646:                                    ; preds = %.preheader646.lr.ph, %._crit_edge696
  %i.nr = phi i32 [ %i.np, %.preheader646.lr.ph ], [ %i.ot, %._crit_edge696 ]
  %i.ns = phi ptr [ %.pre778, %.preheader646.lr.ph ], [ %i.ou, %._crit_edge696 ] ; 2 uses
  %.093702 = phi i64 [ 0, %.preheader646.lr.ph ], [ %i.ov, %._crit_edge696 ] ; 3 uses
  %.sroa.0595.0701 = phi ptr [ %.sroa.13.2, %.preheader646.lr.ph ], [ %.sroa.0595.2.lcssa, %._crit_edge696 ] ; 2 uses
  %.sroa.13.0700 = phi ptr [ %.sroa.13.2, %.preheader646.lr.ph ], [ %.sroa.13.1.lcssa, %._crit_edge696 ] ; 2 uses
  %.sroa.22606.0699 = phi ptr [ %.sroa.22606.4, %.preheader646.lr.ph ], [ %.sroa.22606.2.lcssa, %._crit_edge696 ] ; 2 uses
  %i.nt = getelementptr inbounds nuw [8 x i8], ptr %i.ns, i64 %.093702
  %i.nu = load ptr, ptr %i.nt, align 8            ; 2 uses
  %i.nv = getelementptr inbounds nuw i8, ptr %i.nu, i64 1028
  %i.nw = load i32, ptr %i.nv, align 4
  %.not742 = icmp eq i32 %i.nw, 0
  br i1 %.not742, label %._crit_edge696, label %.lr.ph695

._crit_edge703:                                   ; preds = %._crit_edge696, %_ZNSt6vectorIfSaIfEE7reserveEm.exit356
  %.sroa.22606.0.lcssa = phi ptr [ %.sroa.22606.4, %_ZNSt6vectorIfSaIfEE7reserveEm.exit356 ], [ %.sroa.22606.2.lcssa, %._crit_edge696 ] ; 42 uses
  %.sroa.13.0.lcssa = phi ptr [ %.sroa.13.2, %_ZNSt6vectorIfSaIfEE7reserveEm.exit356 ], [ %.sroa.13.1.lcssa, %._crit_edge696 ]
  %.sroa.0595.0.lcssa = phi ptr [ %.sroa.13.2, %_ZNSt6vectorIfSaIfEE7reserveEm.exit356 ], [ %.sroa.0595.2.lcssa, %._crit_edge696 ] ; 45 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #25
  call void @llvm.experimental.noalias.scope.decl(metadata !204)
  %i.nx = load ptr, ptr %2, align 8, !noalias !204
  %i.ny = load i64, ptr %i.y, align 8, !noalias !204 ; 3 uses
  %i.nz = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 7 uses
  store ptr %i.nz, ptr %7, align 8, !alias.scope !207
  %i.oa = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 3 uses
  store i64 0, ptr %i.oa, align 8, !alias.scope !207
  store i8 0, ptr %i.nz, align 8, !alias.scope !207
  %i.ob = add i64 %i.ny, 13
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %7, i64 noundef %i.ob)
          to label %bb.ab unwind label %bb.ac

bb.ab:                                            ; preds = %._crit_edge703
  %i.oc = load i64, ptr %i.oa, align 8, !alias.scope !207
  %i.od = sub i64 4611686018427387903, %i.oc
  %i.oe = icmp ult i64 %i.od, %i.ny
  br i1 %i.oe, label %.invoke.i.i363, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i360

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i360: ; preds = %bb.ab
  %i.of = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef %i.nx, i64 noundef %i.ny)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i361 unwind label %bb.ac ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i361: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i360
  %i.og = load i64, ptr %i.oa, align 8, !alias.scope !207
  %i.oh = add i64 %i.og, -4611686018427387891
  %i.oi = icmp ult i64 %i.oh, 13
  br i1 %i.oi, label %.invoke.i.i363, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i362

.invoke.i.i363:                                   ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i361, %bb.ab
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.355) #26
          to label %.cont.i.i364 unwind label %bb.ac

.cont.i.i364:                                     ; preds = %.invoke.i.i363
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i362: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i361
  %i.oj = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull @.str.217, i64 noundef 13)
          to label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit367 unwind label %bb.ac ; 0 uses

bb.ac:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i362, %.invoke.i.i363, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i360, %._crit_edge703
  %i.ok = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ol = load ptr, ptr %7, align 8, !alias.scope !207 ; 2 uses
  %i.om = icmp eq ptr %i.ol, %i.nz
  br i1 %i.om, label %.body365, label %.body365.sink.split

bb.ad:                                            ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit
  %i.on = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.oo = load ptr, ptr %6, align 8               ; 2 uses
  %i.op = icmp eq ptr %i.oo, %i.kj
  br i1 %i.op, label %.body, label %.body.sink.split

.body.sink.split:                                 ; preds = %bb.ad, %bb.w
  %.sink = phi ptr [ %i.kv, %bb.w ], [ %i.oo, %bb.ad ]
  %.pn.ph = phi { ptr, i32 } [ %i.ku, %bb.w ], [ %i.on, %bb.ad ]
  %i.oq = load i64, ptr %i.kj, align 8
  %i.or = add i64 %i.oq, 1
  call void @_ZdlPvm(ptr noundef %.sink, i64 noundef %i.or) #27
  br label %.body

.body:                                            ; preds = %.body.sink.split, %bb.ad, %bb.w
  %.pn = phi { ptr, i32 } [ %i.ku, %bb.w ], [ %i.on, %bb.ad ], [ %.pn.ph, %.body.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit542

bb.ae:                                            ; preds = %.invoke860, %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit453, %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit451, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit449, %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit447, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit445, %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit443, %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit441, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit439, %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit437, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit435, %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit433, %_ZN6Assimp15ColladaExporter7PushTagEv.exit431, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i428, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit425, %_ZNSolsEj.exit423, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit421, %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit419, %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit417, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit415, %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit413, %bb.am, %bb.al, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit407, %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit405, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit403, %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit401, %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit399, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit397, %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit395, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit393, %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit391, %_ZN6Assimp15ColladaExporter7PushTagEv.exit389, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i386, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit383, %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit381, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit376, %_ZNSt12_Vector_baseIfSaIfEE11_M_allocateEm.exit.i351
  %.sroa.22606.1 = phi ptr [ null, %_ZNSt12_Vector_baseIfSaIfEE11_M_allocateEm.exit.i351 ], [ %.sroa.22606.0.lcssa, %bb.al ], [ %.sroa.22606.0.lcssa, %.invoke860 ], [ %.sroa.22606.0.lcssa, %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit453 ], [ %.sroa.22606.0.lcssa, %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit451 ], [ %.sroa.22606.0.lcssa, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit449 ], [ %.sroa.22606.0.lcssa, %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit447 ], [ %.sroa.22606.0.lcssa, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit445 ], [ %.sroa.22606.0.lcssa, %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit443 ], [ %.sroa.22606.0.lcssa, %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit441 ], [ %.sroa.22606.0.lcssa, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit439 ], [ %.sroa.22606.0.lcssa, %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit437 ], [ %.sroa.22606.0.lcssa, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit435 ], [ %.sroa.22606.0.lcssa, %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit433 ], [ %.sroa.22606.0.lcssa, %_ZN6Assimp15ColladaExporter7PushTagEv.exit431 ], [ %.sroa.22606.0.lcssa, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i428 ], [ %.sroa.22606.0.lcssa, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit425 ], [ %.sroa.22606.0.lcssa, %_ZNSolsEj.exit423 ], [ %.sroa.22606.0.lcssa, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit421 ], [ %.sroa.22606.0.lcssa, %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit419 ], [ %.sroa.22606.0.lcssa, %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit417 ], [ %.sroa.22606.0.lcssa, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit415 ], [ %.sroa.22606.0.lcssa, %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit413 ], [ %.sroa.22606.0.lcssa, %bb.am ], [ %.sroa.22606.0.lcssa, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit407 ], [ %.sroa.22606.0.lcssa, %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit405 ], [ %.sroa.22606.0.lcssa, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit403 ], [ %.sroa.22606.0.lcssa, %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit401 ], [ %.sroa.22606.0.lcssa, %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit399 ], [ %.sroa.22606.0.lcssa, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit397 ], [ %.sroa.22606.0.lcssa, %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit395 ], [ %.sroa.22606.0.lcssa, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit393 ], [ %.sroa.22606.0.lcssa, %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit391 ], [ %.sroa.22606.0.lcssa, %_ZN6Assimp15ColladaExporter7PushTagEv.exit389 ], [ %.sroa.22606.0.lcssa, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i386 ], [ %.sroa.22606.0.lcssa, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit383 ], [ %.sroa.22606.0.lcssa, %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit381 ], [ %.sroa.22606.0.lcssa, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit376 ]
  %.sroa.0595.1 = phi ptr [ null, %_ZNSt12_Vector_baseIfSaIfEE11_M_allocateEm.exit.i351 ], [ %.sroa.0595.0.lcssa, %bb.al ], [ %.sroa.0595.0.lcssa, %.invoke860 ], [ %.sroa.0595.0.lcssa, %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit453 ], [ %.sroa.0595.0.lcssa, %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit451 ], [ %.sroa.0595.0.lcssa, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit449 ], [ %.sroa.0595.0.lcssa, %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit447 ], [ %.sroa.0595.0.lcssa, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit445 ], [ %.sroa.0595.0.lcssa, %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit443 ], [ %.sroa.0595.0.lcssa, %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit441 ], [ %.sroa.0595.0.lcssa, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit439 ], [ %.sroa.0595.0.lcssa, %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit437 ], [ %.sroa.0595.0.lcssa, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit435 ], [ %.sroa.0595.0.lcssa, %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit433 ], [ %.sroa.0595.0.lcssa, %_ZN6Assimp15ColladaExporter7PushTagEv.exit431 ], [ %.sroa.0595.0.lcssa, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i428 ], [ %.sroa.0595.0.lcssa, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit425 ], [ %.sroa.0595.0.lcssa, %_ZNSolsEj.exit423 ], [ %.sroa.0595.0.lcssa, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit421 ], [ %.sroa.0595.0.lcssa, %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit419 ], [ %.sroa.0595.0.lcssa, %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit417 ], [ %.sroa.0595.0.lcssa, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit415 ], [ %.sroa.0595.0.lcssa, %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit413 ], [ %.sroa.0595.0.lcssa, %bb.am ], [ %.sroa.0595.0.lcssa, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit407 ], [ %.sroa.0595.0.lcssa, %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit405 ], [ %.sroa.0595.0.lcssa, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit403 ], [ %.sroa.0595.0.lcssa, %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit401 ], [ %.sroa.0595.0.lcssa, %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit399 ], [ %.sroa.0595.0.lcssa, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit397 ], [ %.sroa.0595.0.lcssa, %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit395 ], [ %.sroa.0595.0.lcssa, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit393 ], [ %.sroa.0595.0.lcssa, %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit391 ], [ %.sroa.0595.0.lcssa, %_ZN6Assimp15ColladaExporter7PushTagEv.exit389 ], [ %.sroa.0595.0.lcssa, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i386 ], [ %.sroa.0595.0.lcssa, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit383 ], [ %.sroa.0595.0.lcssa, %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit381 ], [ %.sroa.0595.0.lcssa, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit376 ]
  %i.os = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit540

._crit_edge696.loopexit:                          ; preds = %_ZNSt6vectorIfSaIfEE9push_backERKf.exit
  %.pre779 = load i32, ptr %i.h, align 8
  br label %._crit_edge696

._crit_edge696:                                   ; preds = %._crit_edge696.loopexit, %.preheader646
  %i.ot = phi i32 [ %i.nr, %.preheader646 ], [ %.pre779, %._crit_edge696.loopexit ] ; 2 uses
  %i.ou = phi ptr [ %i.ns, %.preheader646 ], [ %i.ps, %._crit_edge696.loopexit ]
  %.sroa.22606.2.lcssa = phi ptr [ %.sroa.22606.0699, %.preheader646 ], [ %.sroa.22606.5, %._crit_edge696.loopexit ] ; 2 uses
  %.sroa.13.1.lcssa = phi ptr [ %.sroa.13.0700, %.preheader646 ], [ %.sroa.13.3, %._crit_edge696.loopexit ] ; 2 uses
  %.sroa.0595.2.lcssa = phi ptr [ %.sroa.0595.0701, %.preheader646 ], [ %.sroa.0595.5, %._crit_edge696.loopexit ] ; 2 uses
  %i.ov = add nuw nsw i64 %.093702, 1             ; 2 uses
  %i.ow = zext i32 %i.ot to i64
  %i.ox = icmp samesign ult i64 %i.ov, %i.ow
  br i1 %i.ox, label %.preheader646, label %._crit_edge703, !llvm.loop !210

.lr.ph695:                                        ; preds = %.preheader646, %_ZNSt6vectorIfSaIfEE9push_backERKf.exit
  %i.oy = phi ptr [ %i.pu, %_ZNSt6vectorIfSaIfEE9push_backERKf.exit ], [ %i.nu, %.preheader646 ]
  %.092694 = phi i64 [ %i.pr, %_ZNSt6vectorIfSaIfEE9push_backERKf.exit ], [ 0, %.preheader646 ] ; 2 uses
  %.sroa.0595.2693 = phi ptr [ %.sroa.0595.5, %_ZNSt6vectorIfSaIfEE9push_backERKf.exit ], [ %.sroa.0595.0701, %.preheader646 ] ; 7 uses
  %.sroa.13.1692 = phi ptr [ %.sroa.13.3, %_ZNSt6vectorIfSaIfEE9push_backERKf.exit ], [ %.sroa.13.0700, %.preheader646 ] ; 6 uses
  %.sroa.22606.2691 = phi ptr [ %.sroa.22606.5, %_ZNSt6vectorIfSaIfEE9push_backERKf.exit ], [ %.sroa.22606.0699, %.preheader646 ] ; 2 uses
  %i.oz = getelementptr inbounds nuw i8, ptr %i.oy, i64 1048
  %i.pa = load ptr, ptr %i.oz, align 8
  %i.pb = getelementptr inbounds nuw [8 x i8], ptr %i.pa, i64 %.092694
  %i.pc = getelementptr inbounds nuw i8, ptr %i.pb, i64 4 ; 2 uses
  %.not.i371 = icmp eq ptr %.sroa.13.1692, %.sroa.22606.2691
  br i1 %.not.i371, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %.lr.ph695
  %i.pd = load float, ptr %i.pc, align 4
  store float %i.pd, ptr %.sroa.13.1692, align 4
  br label %_ZNSt6vectorIfSaIfEE9push_backERKf.exit

bb.ag:                                            ; preds = %.lr.ph695
  %i.pe = ptrtoint ptr %.sroa.13.1692 to i64
  %i.pf = ptrtoint ptr %.sroa.0595.2693 to i64
  %i.pg = sub i64 %i.pe, %i.pf                    ; 6 uses
  %i.ph = icmp eq i64 %i.pg, 9223372036854775804
  br i1 %i.ph, label %bb.ah, label %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i

bb.ah:                                            ; preds = %bb.ag
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.365) #26
          to label %.noexc372 unwind label %.loopexit.split-lp648

.noexc372:                                        ; preds = %bb.ah
  unreachable

_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.ag
  %i.pi = ashr exact i64 %i.pg, 2                 ; 2 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.pi, i64 1)
  %i.pj = add nsw i64 %.sroa.speculated.i.i.i, %i.pi ; 2 uses
  %i.pk = call i64 @llvm.umin.i64(i64 %i.pj, i64 2305843009213693951) ; 2 uses
  %.not.i.i.i = icmp ne i64 %i.pj, 0
  call void @llvm.assume(i1 %.not.i.i.i)
  %i.pl = shl nuw nsw i64 %i.pk, 2
  %i.pm = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.pl) #30
          to label %.noexc373 unwind label %.loopexit647 ; 4 uses

.noexc373:                                        ; preds = %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i
  %i.pn = getelementptr inbounds i8, ptr %i.pm, i64 %i.pg ; 2 uses
  %i.po = load float, ptr %i.pc, align 4
  store float %i.po, ptr %i.pn, align 4
  %i.pp = icmp sgt i64 %i.pg, 0
  br i1 %i.pp, label %bb.ai, label %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i

bb.ai:                                            ; preds = %.noexc373
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.pm, ptr align 4 %.sroa.0595.2693, i64 %i.pg, i1 false)
  br label %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i

_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i: ; preds = %bb.ai, %.noexc373
  %.not.i17.i.i = icmp eq ptr %.sroa.0595.2693, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i, label %bb.aj

bb.aj:                                            ; preds = %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0595.2693, i64 noundef %i.pg) #27
  br label %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i

_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i: ; preds = %bb.aj, %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i
  %i.pq = getelementptr inbounds nuw [4 x i8], ptr %i.pm, i64 %i.pk
  br label %_ZNSt6vectorIfSaIfEE9push_backERKf.exit

_ZNSt6vectorIfSaIfEE9push_backERKf.exit:          ; preds = %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i, %bb.af
  %.sroa.22606.5 = phi ptr [ %i.pq, %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i ], [ %.sroa.22606.2691, %bb.af ] ; 2 uses
  %.pn641 = phi ptr [ %i.pn, %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i ], [ %.sroa.13.1692, %bb.af ]
  %.sroa.0595.5 = phi ptr [ %i.pm, %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i ], [ %.sroa.0595.2693, %bb.af ] ; 2 uses
  %.sroa.13.3 = getelementptr inbounds nuw i8, ptr %.pn641, i64 4 ; 2 uses
  %i.pr = add nuw nsw i64 %.092694, 1             ; 2 uses
  %i.ps = load ptr, ptr %i.nq, align 8            ; 2 uses
  %i.pt = getelementptr inbounds nuw [8 x i8], ptr %i.ps, i64 %.093702
  %i.pu = load ptr, ptr %i.pt, align 8            ; 2 uses
  %i.pv = getelementptr inbounds nuw i8, ptr %i.pu, i64 1028
  %i.pw = load i32, ptr %i.pv, align 4
  %i.px = zext i32 %i.pw to i64
  %i.py = icmp samesign ult i64 %i.pr, %i.px
  br i1 %i.py, label %.lr.ph695, label %._crit_edge696.loopexit, !llvm.loop !211

.loopexit647:                                     ; preds = %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i
  %lpad.loopexit649 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit540

.loopexit.split-lp648:                            ; preds = %bb.ah
  %lpad.loopexit.split-lp650 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit540

_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit367: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i362
  %i.pz = ptrtoint ptr %.sroa.13.0.lcssa to i64
  %i.qa = ptrtoint ptr %.sroa.0595.0.lcssa to i64 ; 2 uses
  %i.qb = sub i64 %i.pz, %i.qa
  %i.qc = ashr exact i64 %i.qb, 2
  invoke void @_ZN6Assimp15ColladaExporter15WriteFloatArrayERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_13FloatDataTypeEPKfm(ptr noundef nonnull align 8 dereferenceable(1248) %0, ptr noundef nonnull align 8 dereferenceable(32) %7, i32 noundef 5, ptr noundef %.sroa.0595.0.lcssa, i64 noundef %i.qc)
          to label %bb.ak unwind label %bb.ao

bb.ak:                                            ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit367
  %i.qd = load ptr, ptr %7, align 8               ; 2 uses
  %i.qe = icmp eq ptr %i.qd, %i.nz
  br i1 %i.qe, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit376, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i374

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i374: ; preds = %bb.ak
  %i.qf = load i64, ptr %i.nz, align 8
  %i.qg = add i64 %i.qf, 1
  call void @_ZdlPvm(ptr noundef %i.qd, i64 noundef %i.qg) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit376

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit376: ; preds = %bb.ak, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i374
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  %i.qh = load ptr, ptr %i.r, align 8
  %i.qi = load i64, ptr %i.t, align 8
  %i.qj = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.q, ptr noundef %i.qh, i64 noundef %i.qi)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit381 unwind label %bb.ae ; 2 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit381: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit376
  %i.qk = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.qj, ptr noundef nonnull @.str.218, i64 noundef 8)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit383 unwind label %bb.ae ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit383: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit381
  %i.ql = load ptr, ptr %i.af, align 8
  %i.qm = load i64, ptr %i.ah, align 8
  %i.qn = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.qj, ptr noundef %i.ql, i64 noundef %i.qm)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit385 unwind label %bb.ae ; 0 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit385: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit383
  %i.qo = load i64, ptr %i.t, align 8
  %i.qp = and i64 %i.qo, -2
  %i.qq = icmp eq i64 %i.qp, 4611686018427387902
  br i1 %i.qq, label %.invoke860, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i386

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i386: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit385
  %i.qr = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.r, ptr noundef nonnull @.str.349, i64 noundef 2)
          to label %_ZN6Assimp15ColladaExporter7PushTagEv.exit389 unwind label %bb.ae ; 0 uses

_ZN6Assimp15ColladaExporter7PushTagEv.exit389:    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i386
  %i.qs = load ptr, ptr %i.r, align 8
  %i.qt = load i64, ptr %i.t, align 8
  %i.qu = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.q, ptr noundef %i.qs, i64 noundef %i.qt)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit391 unwind label %bb.ae ; 2 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit391: ; preds = %_ZN6Assimp15ColladaExporter7PushTagEv.exit389
  %i.qv = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.qu, ptr noundef nonnull @.str.219, i64 noundef 33)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit393 unwind label %bb.ae ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit393: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit391
  %i.qw = load ptr, ptr %2, align 8
  %i.qx = load i64, ptr %i.y, align 8
  %i.qy = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.qu, ptr noundef %i.qw, i64 noundef %i.qx)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit395 unwind label %bb.ae ; 2 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit395: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit393
  %i.qz = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.qy, ptr noundef nonnull @.str.220, i64 noundef 22)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit397 unwind label %bb.ae ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit397: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit395
  %i.ra = load ptr, ptr %i.af, align 8
  %i.rb = load i64, ptr %i.ah, align 8
  %i.rc = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.qy, ptr noundef %i.ra, i64 noundef %i.rb)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit399 unwind label %bb.ae ; 0 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit399: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit397
  %i.rd = load ptr, ptr %i.r, align 8
  %i.re = load i64, ptr %i.t, align 8
  %i.rf = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.q, ptr noundef %i.rd, i64 noundef %i.re)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit401 unwind label %bb.ae ; 2 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit401: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit399
  %i.rg = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.rf, ptr noundef nonnull @.str.221, i64 noundef 43)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit403 unwind label %bb.ae ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit403: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit401
  %i.rh = load ptr, ptr %2, align 8
  %i.ri = load i64, ptr %i.y, align 8
  %i.rj = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.rf, ptr noundef %i.rh, i64 noundef %i.ri)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit405 unwind label %bb.ae ; 2 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit405: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit403
  %i.rk = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.rj, ptr noundef nonnull @.str.222, i64 noundef 26)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit407 unwind label %bb.ae ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit407: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit405
  %i.rl = load ptr, ptr %i.af, align 8
  %i.rm = load i64, ptr %i.ah, align 8
  %i.rn = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.rj, ptr noundef %i.rl, i64 noundef %i.rm)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit409 unwind label %bb.ae ; 0 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit409: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit407
  %i.ro = load i64, ptr %i.t, align 8             ; 3 uses
  %i.rp = add i64 %i.ro, -2                       ; 3 uses
  %i.rq = icmp ult i64 %i.ro, 2
  br i1 %i.rq, label %bb.al, label %bb.am

bb.al:                                            ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit409
  invoke void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.351, ptr noundef nonnull @.str.350, i64 noundef %i.rp, i64 noundef %i.ro) #26
          to label %.noexc410 unwind label %bb.ae

.noexc410:                                        ; preds = %bb.al
  unreachable

bb.am:                                            ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit409
  store i64 %i.rp, ptr %i.t, align 8
  %i.rr = load ptr, ptr %i.r, align 8
  %i.rs = getelementptr inbounds nuw i8, ptr %i.rr, i64 %i.rp
  store i8 0, ptr %i.rs, align 1
  %i.rt = load ptr, ptr %i.r, align 8
  %i.ru = load i64, ptr %i.t, align 8
  %i.rv = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.q, ptr noundef %i.rt, i64 noundef %i.ru)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit413 unwind label %bb.ae ; 2 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit413: ; preds = %bb.am
  %i.rw = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.rv, ptr noundef nonnull @.str.223, i64 noundef 9)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit415 unwind label %bb.ae ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit415: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit413
  %i.rx = load ptr, ptr %i.af, align 8
  %i.ry = load i64, ptr %i.ah, align 8
  %i.rz = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.rv, ptr noundef %i.rx, i64 noundef %i.ry)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit417 unwind label %bb.ae ; 0 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit417: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit415
  %i.sa = load ptr, ptr %i.r, align 8
  %i.sb = load i64, ptr %i.t, align 8
  %i.sc = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.q, ptr noundef %i.sa, i64 noundef %i.sb)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit419 unwind label %bb.ae ; 2 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit419: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit417
  %i.sd = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.sc, ptr noundef nonnull @.str.224, i64 noundef 23)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit421 unwind label %bb.ae ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit421: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit419
  %i.se = load i32, ptr %i.n, align 4
  %i.sf = zext i32 %i.se to i64
  %i.sg = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.sc, i64 noundef %i.sf)
          to label %_ZNSolsEj.exit423 unwind label %bb.ae ; 2 uses

_ZNSolsEj.exit423:                                ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit421
  %i.sh = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.sg, ptr noundef nonnull @.str.116, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit425 unwind label %bb.ae ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit425: ; preds = %_ZNSolsEj.exit423
  %i.si = load ptr, ptr %i.af, align 8
  %i.sj = load i64, ptr %i.ah, align 8
  %i.sk = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.sg, ptr noundef %i.si, i64 noundef %i.sj)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit427 unwind label %bb.ae ; 0 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit427: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit425
  %i.sl = load i64, ptr %i.t, align 8
  %i.sm = and i64 %i.sl, -2
  %i.sn = icmp eq i64 %i.sm, 4611686018427387902
  br i1 %i.sn, label %.invoke860, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i428

.invoke860:                                       ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit427, %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit385
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.355) #26
          to label %.cont861 unwind label %bb.ae

.cont861:                                         ; preds = %.invoke860
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i428: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit427
  %i.so = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.r, ptr noundef nonnull @.str.349, i64 noundef 2)
          to label %_ZN6Assimp15ColladaExporter7PushTagEv.exit431 unwind label %bb.ae ; 0 uses
end_hunk_0
begin_hunk_1_@_ZN6Assimp15ColladaExporter15WriteControllerEm:bb.a

.preheader645.lr.ph:                              ; preds = %_ZNSt6vectorIjSaIjEEC2EmRKjRKS0_.exit
  %i.tx = getelementptr inbounds nuw i8, ptr %i.g, i64 224
  %.pre780 = load ptr, ptr %i.tx, align 8         ; 2 uses
  %i.ty = zext i32 %i.tw to i64
  br label %.preheader645

.preheader645:                                    ; preds = %.preheader645.lr.ph, %._crit_edge709
  %.091710 = phi i64 [ 0, %.preheader645.lr.ph ], [ %i.uk, %._crit_edge709 ] ; 3 uses
  %i.tz = getelementptr inbounds nuw [8 x i8], ptr %.pre780, i64 %.091710
  %i.ua = load ptr, ptr %i.tz, align 8            ; 2 uses
  %i.ub = getelementptr inbounds nuw i8, ptr %i.ua, i64 1028
  %i.uc = load i32, ptr %i.ub, align 4
  %.not744 = icmp eq i32 %i.uc, 0
  br i1 %.not744, label %._crit_edge709, label %.lr.ph708.preheader

.lr.ph708.preheader:                              ; preds = %.preheader645
  %i.ud = getelementptr inbounds nuw [8 x i8], ptr %.pre780, i64 %.091710
  br label %.lr.ph708

.preheader644:                                    ; preds = %._crit_edge709, %_ZNSt6vectorIjSaIjEEC2EmRKjRKS0_.exit
  br i1 %.not.i.i.i.i, label %._crit_edge713, label %.lr.ph712

bb.ao:                                            ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit367
  %i.ue = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.uf = load ptr, ptr %7, align 8               ; 2 uses
  %i.ug = icmp eq ptr %i.uf, %i.nz
  br i1 %i.ug, label %.body365, label %.body365.sink.split

.body365.sink.split:                              ; preds = %bb.ao, %bb.ac
  %.sink880 = phi ptr [ %i.ol, %bb.ac ], [ %i.uf, %bb.ao ]
  %.pn113.ph = phi { ptr, i32 } [ %i.ok, %bb.ac ], [ %i.ue, %bb.ao ]
  %i.uh = load i64, ptr %i.nz, align 8
  %i.ui = add i64 %i.uh, 1
  call void @_ZdlPvm(ptr noundef %.sink880, i64 noundef %i.ui) #27
  br label %.body365

.body365:                                         ; preds = %.body365.sink.split, %bb.ao, %bb.ac
  %.pn113 = phi { ptr, i32 } [ %i.ok, %bb.ac ], [ %i.ue, %bb.ao ], [ %.pn113.ph, %.body365.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit540

bb.ap:                                            ; preds = %bb.an
  %i.uj = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit540

._crit_edge709:                                   ; preds = %.lr.ph708, %.preheader645
  %i.uk = add nuw nsw i64 %.091710, 1             ; 2 uses
  %i.ul = icmp samesign ult i64 %i.uk, %i.ty
  br i1 %i.ul, label %.preheader645, label %.preheader644, !llvm.loop !212

.lr.ph708:                                        ; preds = %.lr.ph708.preheader, %.lr.ph708
  %i.um = phi ptr [ %i.uw, %.lr.ph708 ], [ %i.ua, %.lr.ph708.preheader ]
  %.090707 = phi i64 [ %i.uv, %.lr.ph708 ], [ 0, %.lr.ph708.preheader ] ; 2 uses
  %i.un = getelementptr inbounds nuw i8, ptr %i.um, i64 1048
  %i.uo = load ptr, ptr %i.un, align 8
  %i.up = getelementptr inbounds nuw [8 x i8], ptr %i.uo, i64 %.090707
  %i.uq = load i32, ptr %i.up, align 4
  %i.ur = zext i32 %i.uq to i64
  %i.us = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0582.0, i64 %i.ur ; 2 uses
  %i.ut = load i32, ptr %i.us, align 4
  %i.uu = add i32 %i.ut, 1
  store i32 %i.uu, ptr %i.us, align 4
  %i.uv = add nuw nsw i64 %.090707, 1             ; 2 uses
  %i.uw = load ptr, ptr %i.ud, align 8            ; 2 uses
  %i.ux = getelementptr inbounds nuw i8, ptr %i.uw, i64 1028
  %i.uy = load i32, ptr %i.ux, align 4
  %i.uz = zext i32 %i.uy to i64
  %i.va = icmp samesign ult i64 %i.uv, %i.uz
  br i1 %i.va, label %.lr.ph708, label %._crit_edge709, !llvm.loop !213

._crit_edge713:                                   ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit465, %.preheader644
  %i.vb = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.q, ptr noundef nonnull @.str.229, i64 noundef 9)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit461 unwind label %bb.at ; 0 uses

.lr.ph712:                                        ; preds = %.preheader644, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit465
  %.089711 = phi i64 [ %i.vh, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit465 ], [ 0, %.preheader644 ] ; 2 uses
  %i.vc = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0582.0, i64 %.089711
  %i.vd = load i32, ptr %i.vc, align 4
  %i.ve = zext i32 %i.vd to i64
  %i.vf = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.q, i64 noundef %i.ve)
          to label %_ZNSolsEj.exit463 unwind label %_ZNSt6vectorIjSaIjEED2Ev.exit538.thread

_ZNSolsEj.exit463:                                ; preds = %.lr.ph712
  %i.vg = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.vf, ptr noundef nonnull @.str.95, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit465 unwind label %_ZNSt6vectorIjSaIjEED2Ev.exit538.thread ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit465: ; preds = %_ZNSolsEj.exit463
  %i.vh = add nuw nsw i64 %.089711, 1             ; 2 uses
  %i.vi = load i32, ptr %i.n, align 4
  %i.vj = zext i32 %i.vi to i64
  %i.vk = icmp samesign ult i64 %i.vh, %i.vj
  br i1 %i.vk, label %.lr.ph712, label %._crit_edge713, !llvm.loop !214

_ZNSt6vectorIjSaIjEED2Ev.exit538.thread:          ; preds = %.lr.ph712, %_ZNSolsEj.exit463
  %i.vl = landingpad { ptr, i32 }
          cleanup
  br label %bb.bq

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit461: ; preds = %._crit_edge713
  %i.vm = load ptr, ptr %i.af, align 8
  %i.vn = load i64, ptr %i.ah, align 8
  %i.vo = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.q, ptr noundef %i.vm, i64 noundef %i.vn)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit467 unwind label %bb.at ; 0 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit467: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit461
  %i.vp = load ptr, ptr %i.r, align 8
  %i.vq = load i64, ptr %i.t, align 8
  %i.vr = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.q, ptr noundef %i.vp, i64 noundef %i.vq)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit469 unwind label %bb.at

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit469: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit467
  %i.vs = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.vr, ptr noundef nonnull @.str.230, i64 noundef 3)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit471 unwind label %bb.at ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit471: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit469
  %i.vt = ptrtoint ptr %.0.i.i.i.i.i.i.i to i64
  %i.vu = ptrtoint ptr %.sroa.0582.0 to i64       ; 2 uses
  %i.vv = sub i64 %i.vt, %i.vu                    ; 3 uses
  %i.vw = ashr exact i64 %i.vv, 2                 ; 2 uses
  %i.vx = icmp ugt i64 %i.vw, 2305843009213693951
  br i1 %i.vx, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit471
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.363) #26
          to label %.noexc473 unwind label %_ZNSt6vectorIiSaIiEED2Ev.exit536.thread

.noexc473:                                        ; preds = %bb.aq
  unreachable

bb.ar:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit471
  %.not639 = icmp eq ptr %.0.i.i.i.i.i.i.i, %.sroa.0582.0
  br i1 %.not639, label %_ZNSt6vectorIiSaIiEEC2EmRKiRKS0_.exit, label %_ZNSt12_Vector_baseIjSaIjEE11_M_allocateEm.exit.i

_ZNSt12_Vector_baseIjSaIjEE11_M_allocateEm.exit.i: ; preds = %bb.ar
  %i.vy = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.vv) #30
          to label %.lr.ph719.preheader unwind label %_ZNSt6vectorIiSaIiEED2Ev.exit536.thread ; 3 uses

.lr.ph719.preheader:                              ; preds = %_ZNSt12_Vector_baseIjSaIjEE11_M_allocateEm.exit.i
  %i.vz = getelementptr inbounds nuw i8, ptr %i.vy, i64 %i.vv
  br label %.lr.ph719

._crit_edge720:                                   ; preds = %_ZNSt6vectorIjSaIjEE9push_backERKj.exit
  %i.wa = shl i32 %i.wx, 1                        ; 2 uses
  %i.wb = zext i32 %i.wa to i64                   ; 2 uses
  %.not.i.i.i.i475 = icmp eq i32 %i.wa, 0
  br i1 %.not.i.i.i.i475, label %_ZNSt6vectorIiSaIiEEC2EmRKiRKS0_.exit, label %bb.as

bb.as:                                            ; preds = %._crit_edge720
  %i.wc = shl nuw nsw i64 %i.wb, 2                ; 3 uses
  %i.wd = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.wc) #30
          to label %.noexc480 unwind label %bb.az ; 4 uses

.noexc480:                                        ; preds = %bb.as
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.wd, i8 -1, i64 %i.wc, i1 false)
  %i.we = getelementptr inbounds nuw [4 x i8], ptr %i.wd, i64 %i.wb
  %i.wf = getelementptr inbounds nuw i8, ptr %i.wd, i64 %i.wc
  %i.wg = ptrtoint ptr %i.we to i64
  br label %_ZNSt6vectorIiSaIiEEC2EmRKiRKS0_.exit

bb.at:                                            ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit469, %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit467, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit461, %._crit_edge713
  %i.wh = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit538

_ZNSt6vectorIiSaIiEED2Ev.exit536.thread:          ; preds = %bb.aq, %_ZNSt12_Vector_baseIjSaIjEE11_M_allocateEm.exit.i
  %i.wi = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit538

.lr.ph719:                                        ; preds = %.lr.ph719.preheader, %_ZNSt6vectorIjSaIjEE9push_backERKj.exit
  %.088718 = phi i64 [ %i.wy, %_ZNSt6vectorIjSaIjEE9push_backERKj.exit ], [ 0, %.lr.ph719.preheader ] ; 2 uses
  %.sroa.22.0717 = phi ptr [ %.sroa.22.3, %_ZNSt6vectorIjSaIjEE9push_backERKj.exit ], [ %i.vz, %.lr.ph719.preheader ] ; 5 uses
  %.sroa.14569.0716 = phi ptr [ %.sroa.14569.2, %_ZNSt6vectorIjSaIjEE9push_backERKj.exit ], [ %i.vy, %.lr.ph719.preheader ] ; 3 uses
  %.sroa.0561.0715 = phi ptr [ %.sroa.0561.3, %_ZNSt6vectorIjSaIjEE9push_backERKj.exit ], [ %i.vy, %.lr.ph719.preheader ] ; 7 uses
  %.0616714 = phi i32 [ %i.wx, %_ZNSt6vectorIjSaIjEE9push_backERKj.exit ], [ 0, %.lr.ph719.preheader ] ; 3 uses
  %.not.i481 = icmp eq ptr %.sroa.14569.0716, %.sroa.22.0717
  br i1 %.not.i481, label %bb.av, label %bb.au

bb.au:                                            ; preds = %.lr.ph719
  store i32 %.0616714, ptr %.sroa.14569.0716, align 4
  br label %_ZNSt6vectorIjSaIjEE9push_backERKj.exit

bb.av:                                            ; preds = %.lr.ph719
  %i.wj = ptrtoint ptr %.sroa.22.0717 to i64
  %i.wk = ptrtoint ptr %.sroa.0561.0715 to i64
  %i.wl = sub i64 %i.wj, %i.wk                    ; 6 uses
  %i.wm = icmp eq i64 %i.wl, 9223372036854775804
  br i1 %i.wm, label %bb.aw, label %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i

bb.aw:                                            ; preds = %bb.av
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.365) #26
          to label %.noexc485 unwind label %.loopexit.split-lp

.noexc485:                                        ; preds = %bb.aw
  unreachable

_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.av
  %i.wn = ashr exact i64 %i.wl, 2                 ; 2 uses
  %.sroa.speculated.i.i.i482 = call i64 @llvm.umax.i64(i64 %i.wn, i64 1)
  %i.wo = add nsw i64 %.sroa.speculated.i.i.i482, %i.wn ; 2 uses
  %i.wp = call i64 @llvm.umin.i64(i64 %i.wo, i64 2305843009213693951) ; 2 uses
  %.not.i.i.i483 = icmp ne i64 %i.wo, 0
  call void @llvm.assume(i1 %.not.i.i.i483)
  %i.wq = shl nuw nsw i64 %i.wp, 2
  %i.wr = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.wq) #30
          to label %.noexc486 unwind label %.loopexit643 ; 4 uses

.noexc486:                                        ; preds = %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i
  %i.ws = getelementptr inbounds i8, ptr %i.wr, i64 %i.wl ; 2 uses
  store i32 %.0616714, ptr %i.ws, align 4
  %i.wt = icmp sgt i64 %i.wl, 0
  br i1 %i.wt, label %bb.ax, label %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i

bb.ax:                                            ; preds = %.noexc486
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.wr, ptr align 4 %.sroa.0561.0715, i64 %i.wl, i1 false)
  br label %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i

_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i: ; preds = %bb.ax, %.noexc486
  %.not.i17.i.i484 = icmp eq ptr %.sroa.0561.0715, null
  br i1 %.not.i17.i.i484, label %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i, label %bb.ay

bb.ay:                                            ; preds = %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0561.0715, i64 noundef %i.wl) #27
  br label %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i

_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i: ; preds = %bb.ay, %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i
  %i.wu = getelementptr inbounds nuw [4 x i8], ptr %i.wr, i64 %i.wp
  br label %_ZNSt6vectorIjSaIjEE9push_backERKj.exit

_ZNSt6vectorIjSaIjEE9push_backERKj.exit:          ; preds = %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i, %bb.au
  %.sroa.0561.3 = phi ptr [ %i.wr, %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i ], [ %.sroa.0561.0715, %bb.au ] ; 4 uses
  %.pn640 = phi ptr [ %i.ws, %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i ], [ %.sroa.14569.0716, %bb.au ]
  %.sroa.22.3 = phi ptr [ %i.wu, %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i ], [ %.sroa.22.0717, %bb.au ] ; 4 uses
  %.sroa.14569.2 = getelementptr inbounds nuw i8, ptr %.pn640, i64 4
  %i.wv = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0582.0, i64 %.088718
  %i.ww = load i32, ptr %i.wv, align 4
  %i.wx = add i32 %i.ww, %.0616714                ; 2 uses
  %i.wy = add nuw i64 %.088718, 1                 ; 2 uses
  %exitcond.not = icmp eq i64 %i.wy, %i.vw
  br i1 %exitcond.not, label %._crit_edge720, label %.lr.ph719, !llvm.loop !215

.loopexit643:                                     ; preds = %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit536

.loopexit.split-lp:                               ; preds = %bb.aw
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit536

_ZNSt6vectorIiSaIiEEC2EmRKiRKS0_.exit:            ; preds = %bb.ar, %.noexc480, %._crit_edge720
  %.sroa.22.0.lcssa839 = phi ptr [ %.sroa.22.3, %._crit_edge720 ], [ %.sroa.22.3, %.noexc480 ], [ null, %bb.ar ] ; 3 uses
  %.sroa.0561.0.lcssa837 = phi ptr [ %.sroa.0561.3, %._crit_edge720 ], [ %.sroa.0561.3, %.noexc480 ], [ null, %bb.ar ] ; 6 uses
  %.sroa.0551.0 = phi ptr [ null, %._crit_edge720 ], [ %i.wd, %.noexc480 ], [ null, %bb.ar ] ; 10 uses
  %.sroa.20.0 = phi i64 [ 0, %._crit_edge720 ], [ %i.wg, %.noexc480 ], [ 0, %bb.ar ] ; 2 uses
  %.0.i.i.i.i.i.i.i479 = phi ptr [ null, %._crit_edge720 ], [ %i.wf, %.noexc480 ], [ null, %bb.ar ] ; 2 uses
  %i.wz = load i32, ptr %i.h, align 8             ; 2 uses
  %.not747 = icmp eq i32 %i.wz, 0
  br i1 %.not747, label %.preheader, label %.preheader642.lr.ph

.preheader642.lr.ph:                              ; preds = %_ZNSt6vectorIiSaIiEEC2EmRKiRKS0_.exit
  %i.xa = getelementptr inbounds nuw i8, ptr %i.g, i64 224
  %.pre781 = load ptr, ptr %i.xa, align 8         ; 2 uses
  %i.xb = zext i32 %i.wz to i64
  br label %.preheader642

.preheader642:                                    ; preds = %.preheader642.lr.ph, %._crit_edge732
  %indvars.iv771 = phi i64 [ 0, %.preheader642.lr.ph ], [ %indvars.iv.next772, %._crit_edge732 ] ; 4 uses
  %.087734 = phi i32 [ 0, %.preheader642.lr.ph ], [ %.1.lcssa, %._crit_edge732 ] ; 2 uses
  %i.xc = getelementptr inbounds nuw [8 x i8], ptr %.pre781, i64 %indvars.iv771
  %i.xd = load ptr, ptr %i.xc, align 8            ; 2 uses
  %i.xe = getelementptr inbounds nuw i8, ptr %i.xd, i64 1028
  %i.xf = load i32, ptr %i.xe, align 4
  %.not748 = icmp eq i32 %i.xf, 0
  br i1 %.not748, label %._crit_edge732, label %.lr.ph731.preheader

.lr.ph731.preheader:                              ; preds = %.preheader642
  %i.xg = trunc nuw i64 %indvars.iv771 to i32
  %i.xh = getelementptr inbounds nuw [8 x i8], ptr %.pre781, i64 %indvars.iv771
  br label %.lr.ph731

.preheader:                                       ; preds = %._crit_edge732, %_ZNSt6vectorIiSaIiEEC2EmRKiRKS0_.exit
  %i.xi = ptrtoint ptr %.sroa.0551.0 to i64       ; 3 uses
  %.not750 = icmp eq ptr %.0.i.i.i.i.i.i.i479, %.sroa.0551.0
  br i1 %.not750, label %_ZNSt6vectorIiSaIiEE5clearEv.exit, label %.lr.ph737.preheader

.lr.ph737.preheader:                              ; preds = %.preheader
  %i.xj = ptrtoint ptr %.0.i.i.i.i.i.i.i479 to i64
  %i.xk = sub i64 %i.xj, %i.xi
  %i.xl = ashr exact i64 %i.xk, 2
  br label %.lr.ph737

bb.az:                                            ; preds = %bb.as
  %i.xm = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit536

._crit_edge732:                                   ; preds = %.loopexit, %.preheader642
  %.1.lcssa = phi i32 [ %.087734, %.preheader642 ], [ %i.ym, %.loopexit ]
  %indvars.iv.next772 = add nuw nsw i64 %indvars.iv771, 1 ; 2 uses
  %i.xn = icmp samesign ult i64 %indvars.iv.next772, %i.xb
  br i1 %i.xn, label %.preheader642, label %.preheader, !llvm.loop !216

.lr.ph731:                                        ; preds = %.lr.ph731.preheader, %.loopexit
  %indvars.iv768 = phi i64 [ 0, %.lr.ph731.preheader ], [ %indvars.iv.next769, %.loopexit ] ; 2 uses
  %i.xo = phi ptr [ %i.xd, %.lr.ph731.preheader ], [ %i.yn, %.loopexit ]
  %.1729 = phi i32 [ %.087734, %.lr.ph731.preheader ], [ %i.ym, %.loopexit ] ; 2 uses
  %i.xp = getelementptr inbounds nuw i8, ptr %i.xo, i64 1048
  %i.xq = load ptr, ptr %i.xp, align 8
  %i.xr = getelementptr inbounds nuw [8 x i8], ptr %i.xq, i64 %indvars.iv768
  %i.xs = load i32, ptr %i.xr, align 4
  %i.xt = zext i32 %i.xs to i64                   ; 2 uses
  %i.xu = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0582.0, i64 %i.xt
  %i.xv = load i32, ptr %i.xu, align 4            ; 2 uses
  %.not749 = icmp eq i32 %i.xv, 0
  br i1 %.not749, label %.loopexit, label %.lr.ph728

.lr.ph728:                                        ; preds = %.lr.ph731
  %i.xw = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0561.0.lcssa837, i64 %i.xt ; 2 uses
  %i.xx = load i32, ptr %i.xw, align 4
  %wide.trip.count = zext i32 %i.xv to i64
  br label %bb.ba

bb.ba:                                            ; preds = %.lr.ph728, %bb.bc
  %indvars.iv764 = phi i64 [ 0, %.lr.ph728 ], [ %indvars.iv.next765, %bb.bc ] ; 2 uses
  %i.xy = trunc nuw i64 %indvars.iv764 to i32     ; 2 uses
  %i.xz = add i32 %i.xx, %i.xy
  %i.ya = shl i32 %i.xz, 1
  %i.yb = zext i32 %i.ya to i64                   ; 2 uses
  %i.yc = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0551.0, i64 %i.yb
  %i.yd = load i32, ptr %i.yc, align 4
  %i.ye = icmp eq i32 %i.yd, -1
  br i1 %i.ye, label %bb.bb, label %bb.bc

bb.bb:                                            ; preds = %bb.ba
  %i.yf = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0551.0, i64 %i.yb
  store i32 %i.xg, ptr %i.yf, align 4
  %i.yg = load i32, ptr %i.xw, align 4
  %i.yh = add i32 %i.yg, %i.xy
  %i.yi = shl i32 %i.yh, 1
  %i.yj = or disjoint i32 %i.yi, 1
  %i.yk = zext i32 %i.yj to i64
  %i.yl = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0551.0, i64 %i.yk
  store i32 %.1729, ptr %i.yl, align 4
  br label %.loopexit

bb.bc:                                            ; preds = %bb.ba
  %indvars.iv.next765 = add nuw nsw i64 %indvars.iv764, 1 ; 2 uses
  %exitcond767.not = icmp eq i64 %indvars.iv.next765, %wide.trip.count
  br i1 %exitcond767.not, label %.loopexit, label %bb.ba, !llvm.loop !217

.loopexit:                                        ; preds = %bb.bc, %.lr.ph731, %bb.bb
  %i.ym = add i32 %.1729, 1                       ; 2 uses
  %indvars.iv.next769 = add nuw nsw i64 %indvars.iv768, 1 ; 2 uses
  %i.yn = load ptr, ptr %i.xh, align 8            ; 2 uses
  %i.yo = getelementptr inbounds nuw i8, ptr %i.yn, i64 1028
  %i.yp = load i32, ptr %i.yo, align 4
  %i.yq = zext i32 %i.yp to i64
  %i.yr = icmp samesign ult i64 %indvars.iv.next769, %i.yq
  br i1 %i.yr, label %.lr.ph731, label %._crit_edge732, !llvm.loop !218

_ZNSt6vectorIiSaIiEE5clearEv.exit:                ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit495, %.preheader
  %i.ys = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.q, ptr noundef nonnull @.str.231, i64 noundef 4)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit493 unwind label %bb.bn ; 0 uses

.lr.ph737:                                        ; preds = %.lr.ph737.preheader, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit495
  %.0736 = phi i64 [ %i.yx, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit495 ], [ 0, %.lr.ph737.preheader ] ; 2 uses
  %i.yt = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0551.0, i64 %.0736
  %i.yu = load i32, ptr %i.yt, align 4
  %i.yv = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %i.q, i32 noundef %i.yu)
          to label %bb.bd unwind label %.thread

bb.bd:                                            ; preds = %.lr.ph737
  %i.yw = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.yv, ptr noundef nonnull @.str.95, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit495 unwind label %.thread ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit495: ; preds = %bb.bd
  %i.yx = add nuw i64 %.0736, 1                   ; 2 uses
  %exitcond775.not = icmp eq i64 %i.yx, %i.xl
  br i1 %exitcond775.not, label %_ZNSt6vectorIiSaIiEE5clearEv.exit, label %.lr.ph737, !llvm.loop !219

.thread:                                          ; preds = %.lr.ph737, %bb.bd
  %i.yy = landingpad { ptr, i32 }
          cleanup
  br label %bb.bo

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit493: ; preds = %_ZNSt6vectorIiSaIiEE5clearEv.exit
  %i.yz = load ptr, ptr %i.af, align 8
  %i.za = load i64, ptr %i.ah, align 8
  %i.zb = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.q, ptr noundef %i.yz, i64 noundef %i.za)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit497 unwind label %bb.bn ; 0 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit497: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit493
  %i.zc = load i64, ptr %i.t, align 8             ; 3 uses
  %i.zd = add i64 %i.zc, -2                       ; 3 uses
  %i.ze = icmp ult i64 %i.zc, 2
  br i1 %i.ze, label %.invoke862, label %bb.be

.invoke862:                                       ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit513, %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit505, %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit497
  %i.zf = phi i64 [ %i.zr, %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit505 ], [ %i.zd, %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit497 ], [ %i.aad, %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit513 ]
  %i.zg = phi i64 [ %i.zq, %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit505 ], [ %i.zc, %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit497 ], [ %i.aac, %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit513 ]
  invoke void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.351, ptr noundef nonnull @.str.350, i64 noundef %i.zf, i64 noundef %i.zg) #26
          to label %.cont863 unwind label %bb.bn

.cont863:                                         ; preds = %.invoke862
  unreachable

bb.be:                                            ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit497
  store i64 %i.zd, ptr %i.t, align 8
  %i.zh = load ptr, ptr %i.r, align 8
  %i.zi = getelementptr inbounds nuw i8, ptr %i.zh, i64 %i.zd
  store i8 0, ptr %i.zi, align 1
  %i.zj = load ptr, ptr %i.r, align 8
  %i.zk = load i64, ptr %i.t, align 8
  %i.zl = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.q, ptr noundef %i.zj, i64 noundef %i.zk)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit501 unwind label %bb.bn ; 2 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit501: ; preds = %bb.be
  %i.zm = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.zl, ptr noundef nonnull @.str.232, i64 noundef 17)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit503 unwind label %bb.bn ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit503: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit501
  %i.zn = load ptr, ptr %i.af, align 8
  %i.zo = load i64, ptr %i.ah, align 8
  %i.zp = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.zl, ptr noundef %i.zn, i64 noundef %i.zo)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit505 unwind label %bb.bn ; 0 uses
end_hunk_1
begin_hunk_2_@_ZN6Assimp15ColladaExporter21WriteAnimationLibraryEm:bb.a
  %i.gk = icmp eq ptr %i.gj, %i.au
  br i1 %i.gk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit222, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i220

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i220: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit219
  %i.gl = load i64, ptr %i.au, align 8
  %i.gm = add i64 %i.gl, 1
  call void @_ZdlPvm(ptr noundef %i.gj, i64 noundef %i.gm) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit222

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit222: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit219, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i220, %bb.u
  %.pn.pn.pn = phi { ptr, i32 } [ %i.fx, %bb.u ], [ %.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i220 ], [ %.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit219 ] ; 2 uses
  %i.gn = load ptr, ptr %7, align 8               ; 2 uses
  %i.go = icmp eq ptr %i.gn, %i.ac
  br i1 %i.go, label %.body, label %.body.sink.split

.body.sink.split:                                 ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit222, %bb.h
  %.sink = phi ptr [ %i.ao, %bb.h ], [ %i.gn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit222 ]
  %.pn.pn.pn.pn.ph = phi { ptr, i32 } [ %i.an, %bb.h ], [ %.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit222 ]
  %i.gp = load i64, ptr %i.ac, align 8
  %i.gq = add i64 %i.gp, 1
  call void @_ZdlPvm(ptr noundef %.sink, i64 noundef %i.gq) #27
  br label %.body

.body:                                            ; preds = %.body.sink.split, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit222, %bb.h
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %i.an, %bb.h ], [ %.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit222 ], [ %.pn.pn.pn.pn.ph, %.body.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  br label %bb.dz

bb.y:                                             ; preds = %.lr.ph1332, %bb.bv
  %i.gr = phi i32 [ %i.dt, %.lr.ph1332 ], [ %i.aay, %bb.bv ] ; 3 uses
  %.01181331 = phi i64 [ 0, %.lr.ph1332 ], [ %i.aaz, %bb.bv ] ; 2 uses
  %i.gs = load ptr, ptr %i.du, align 8
  %i.gt = getelementptr inbounds nuw [8 x i8], ptr %i.gs, i64 %.01181331
  %i.gu = load ptr, ptr %i.gt, align 8            ; 11 uses
  %i.gv = icmp eq ptr %i.gu, null
  br i1 %i.gv, label %bb.bv, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gu, i64 1028 ; 8 uses
  %i.gx = load i32, ptr %i.gw, align 4            ; 2 uses
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gu, i64 1056
  %i.gz = load i32, ptr %i.gy, align 8
  %.not = icmp eq i32 %i.gx, %i.gz
  br i1 %.not, label %bb.aa, label %bb.bv

bb.aa:                                            ; preds = %bb.z
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gu, i64 1040
  %i.hb = load i32, ptr %i.ha, align 8
  %.not158 = icmp eq i32 %i.gx, %i.hb
  br i1 %.not158, label %bb.ab, label %bb.bv

bb.ab:                                            ; preds = %bb.aa
  store i64 0, ptr %i.ds, align 8
  %i.hc = load ptr, ptr %8, align 8
  store i8 0, ptr %i.hc, align 1
  %i.hd = getelementptr inbounds nuw i8, ptr %i.gu, i64 4 ; 6 uses
  %i.he = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.hd) #25 ; 2 uses
  %i.hf = load i64, ptr %i.ds, align 8
  %i.hg = sub i64 4611686018427387903, %i.hf
  %i.hh = icmp ult i64 %i.hg, %i.he
  br i1 %i.hh, label %.invoke, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i226

.invoke:                                          ; preds = %bb.ab, %_ZNSt6vectorIfSaIfEED2Ev.exit
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.355) #26
          to label %.cont unwind label %.loopexit.split-lp801

.cont:                                            ; preds = %.invoke
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i226: ; preds = %bb.ab
  %i.hi = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull %i.hd, i64 noundef %i.he)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit unwind label %.loopexit800 ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i226
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #25
  store ptr %i.dv, ptr %9, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(13) %i.dv, ptr noundef nonnull align 1 dereferenceable(13) @.str.295, i64 13, i1 false)
  store i64 13, ptr %i.dw, align 8
  store i8 0, ptr %i.en, align 1
  %i.hj = load i64, ptr %i.ds, align 8
  %i.hk = add i64 %i.hj, -4611686018427387891
  %i.hl = icmp ult i64 %i.hk, 13
  br i1 %i.hl, label %bb.ac, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i230

bb.ac:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.355) #26
          to label %.noexc231 unwind label %.loopexit.split-lp806

.noexc231:                                        ; preds = %bb.ac
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i230: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit
  %i.hm = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull %i.dv, i64 noundef 13)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit unwind label %.loopexit805 ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i230
  %i.hn = load ptr, ptr %9, align 8               ; 2 uses
  %i.ho = icmp eq ptr %i.hn, %i.dv
  br i1 %i.ho, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit235, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i233

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i233: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit
  %i.hp = load i64, ptr %i.dv, align 8
  %i.hq = add i64 %i.hp, 1
  call void @_ZdlPvm(ptr noundef %i.hn, i64 noundef %i.hq) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit235

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit235: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i233
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25
  %i.hr = load i32, ptr %i.gw, align 4
  %.not1339 = icmp eq i32 %i.hr, 0
  br i1 %.not1339, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit235
  %i.hs = getelementptr inbounds nuw i8, ptr %i.gu, i64 1032
  br label %bb.ae

._crit_edge.loopexit:                             ; preds = %_ZNSt6vectorIfSaIfEE9push_backEOf.exit
  %i.ht = ptrtoint ptr %.sroa.11776.1 to i64
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit235
  %.sroa.18780.0.lcssa = phi ptr [ null, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit235 ], [ %.sroa.18780.1, %._crit_edge.loopexit ] ; 2 uses
  %.sroa.11776.0.lcssa = phi i64 [ 0, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit235 ], [ %i.ht, %._crit_edge.loopexit ]
  %.sroa.0770.0.lcssa = phi ptr [ null, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit235 ], [ %.sroa.0770.1, %._crit_edge.loopexit ] ; 5 uses
  %i.hu = ptrtoint ptr %.sroa.0770.0.lcssa to i64 ; 2 uses
  %i.hv = sub i64 %.sroa.11776.0.lcssa, %i.hu
  %i.hw = ashr exact i64 %i.hv, 2
  invoke void @_ZN6Assimp15ColladaExporter15WriteFloatArrayERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_13FloatDataTypeEPKfm(ptr noundef nonnull align 8 dereferenceable(1248) %0, ptr noundef nonnull align 8 dereferenceable(32) %8, i32 noundef 6, ptr noundef %.sroa.0770.0.lcssa, i64 noundef %i.hw)
          to label %_ZNSt6vectorIfSaIfEE5clearEv.exit unwind label %bb.am

.loopexit800:                                     ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i226, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i242
  %lpad.loopexit802 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit259

.loopexit.split-lp801:                            ; preds = %.invoke
  %lpad.loopexit.split-lp803 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit259

.loopexit805:                                     ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i230
  %lpad.loopexit807 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ad

.loopexit.split-lp806:                            ; preds = %bb.ac
  %lpad.loopexit.split-lp808 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ad

bb.ad:                                            ; preds = %.loopexit.split-lp806, %.loopexit805
  %lpad.phi809 = phi { ptr, i32 } [ %lpad.loopexit807, %.loopexit805 ], [ %lpad.loopexit.split-lp808, %.loopexit.split-lp806 ]
  %i.hx = load ptr, ptr %9, align 8               ; 2 uses
  %i.hy = icmp eq ptr %i.hx, %i.dv
  br i1 %i.hy, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit238, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i236

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i236: ; preds = %bb.ad
  %i.hz = load i64, ptr %i.dv, align 8
  %i.ia = add i64 %i.hz, 1
  call void @_ZdlPvm(ptr noundef %i.hx, i64 noundef %i.ia) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit238

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit238: ; preds = %bb.ad, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i236
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit259

bb.ae:                                            ; preds = %.lr.ph, %_ZNSt6vectorIfSaIfEE9push_backEOf.exit
  %.01191320 = phi i64 [ 0, %.lr.ph ], [ %i.ir, %_ZNSt6vectorIfSaIfEE9push_backEOf.exit ] ; 2 uses
  %.sroa.0770.01319 = phi ptr [ null, %.lr.ph ], [ %.sroa.0770.1, %_ZNSt6vectorIfSaIfEE9push_backEOf.exit ] ; 7 uses
  %.sroa.11776.01318 = phi ptr [ null, %.lr.ph ], [ %.sroa.11776.1, %_ZNSt6vectorIfSaIfEE9push_backEOf.exit ] ; 6 uses
  %.sroa.18780.01317 = phi ptr [ null, %.lr.ph ], [ %.sroa.18780.1, %_ZNSt6vectorIfSaIfEE9push_backEOf.exit ] ; 2 uses
  %i.ib = load ptr, ptr %i.hs, align 8
  %i.ic = getelementptr inbounds nuw [24 x i8], ptr %i.ib, i64 %.01191320
  %i.id = load double, ptr %i.ic, align 8
  %i.ie = fptrunc double %i.id to float           ; 2 uses
  %.not.i.i = icmp eq ptr %.sroa.11776.01318, %.sroa.18780.01317
  br i1 %.not.i.i, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  store float %i.ie, ptr %.sroa.11776.01318, align 4
  br label %_ZNSt6vectorIfSaIfEE9push_backEOf.exit

bb.ag:                                            ; preds = %bb.ae
  %i.if = ptrtoint ptr %.sroa.11776.01318 to i64
  %i.ig = ptrtoint ptr %.sroa.0770.01319 to i64
  %i.ih = sub i64 %i.if, %i.ig                    ; 6 uses
  %i.ii = icmp eq i64 %i.ih, 9223372036854775804
  br i1 %i.ii, label %bb.ah, label %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i.i

bb.ah:                                            ; preds = %bb.ag
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.365) #26
          to label %.noexc239 unwind label %.loopexit.split-lp796

.noexc239:                                        ; preds = %bb.ah
  unreachable

_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.ag
  %i.ij = ashr exact i64 %i.ih, 2                 ; 2 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.ij, i64 1)
  %i.ik = add nsw i64 %.sroa.speculated.i.i.i.i, %i.ij ; 2 uses
  %i.il = call i64 @llvm.umin.i64(i64 %i.ik, i64 2305843009213693951) ; 2 uses
  %.not.i.i.i.i = icmp ne i64 %i.ik, 0
  call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.im = shl nuw nsw i64 %i.il, 2
  %i.in = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.im) #30
          to label %.noexc240 unwind label %.loopexit795 ; 4 uses

.noexc240:                                        ; preds = %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i.i
  %i.io = getelementptr inbounds i8, ptr %i.in, i64 %i.ih ; 2 uses
  store float %i.ie, ptr %i.io, align 4
  %i.ip = icmp sgt i64 %i.ih, 0
  br i1 %i.ip, label %bb.ai, label %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i.i

bb.ai:                                            ; preds = %.noexc240
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.in, ptr align 4 %.sroa.0770.01319, i64 %i.ih, i1 false)
  br label %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i.i

_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i.i: ; preds = %bb.ai, %.noexc240
  %.not.i17.i.i.i = icmp eq ptr %.sroa.0770.01319, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i.i, label %bb.aj

bb.aj:                                            ; preds = %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0770.01319, i64 noundef %i.ih) #27
  br label %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i.i

_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i.i: ; preds = %bb.aj, %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i.i
  %i.iq = getelementptr inbounds nuw [4 x i8], ptr %i.in, i64 %i.il
  br label %_ZNSt6vectorIfSaIfEE9push_backEOf.exit

_ZNSt6vectorIfSaIfEE9push_backEOf.exit:           ; preds = %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i.i, %bb.af
  %.sroa.18780.1 = phi ptr [ %i.iq, %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i.i ], [ %.sroa.18780.01317, %bb.af ] ; 2 uses
  %.pn793 = phi ptr [ %i.io, %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i.i ], [ %.sroa.11776.01318, %bb.af ]
  %.sroa.0770.1 = phi ptr [ %i.in, %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i.i ], [ %.sroa.0770.01319, %bb.af ] ; 2 uses
  %.sroa.11776.1 = getelementptr inbounds nuw i8, ptr %.pn793, i64 4 ; 2 uses
  %i.ir = add nuw nsw i64 %.01191320, 1           ; 2 uses
  %i.is = load i32, ptr %i.gw, align 4
  %i.it = zext i32 %i.is to i64
  %i.iu = icmp samesign ult i64 %i.ir, %i.it
  br i1 %i.iu, label %bb.ae, label %._crit_edge.loopexit, !llvm.loop !346

.loopexit795:                                     ; preds = %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i.i
  %lpad.loopexit797 = landingpad { ptr, i32 }
          cleanup
  br label %bb.an

.loopexit.split-lp796:                            ; preds = %bb.ah
  %lpad.loopexit.split-lp798 = landingpad { ptr, i32 }
          cleanup
  br label %bb.an

_ZNSt6vectorIfSaIfEE5clearEv.exit:                ; preds = %._crit_edge
  %.not.i.i.i = icmp eq ptr %.sroa.0770.0.lcssa, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIfSaIfEED2Ev.exit, label %bb.ak

bb.ak:                                            ; preds = %_ZNSt6vectorIfSaIfEE5clearEv.exit
  %i.iv = ptrtoint ptr %.sroa.18780.0.lcssa to i64
  %i.iw = sub i64 %i.iv, %i.hu
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0770.0.lcssa, i64 noundef %i.iw) #27
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit

_ZNSt6vectorIfSaIfEED2Ev.exit:                    ; preds = %_ZNSt6vectorIfSaIfEE5clearEv.exit, %bb.ak
  store i64 0, ptr %i.ds, align 8
  %i.ix = load ptr, ptr %8, align 8
  store i8 0, ptr %i.ix, align 1
  %i.iy = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.hd) #25 ; 2 uses
  %i.iz = load i64, ptr %i.ds, align 8
  %i.ja = sub i64 4611686018427387903, %i.iz
  %i.jb = icmp ult i64 %i.ja, %i.iy
  br i1 %i.jb, label %.invoke, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i242

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i242: ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit
  %i.jc = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull %i.hd, i64 noundef %i.iy)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit245 unwind label %.loopexit800 ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit245: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i242
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #25
  store ptr %i.dx, ptr %10, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(14) %i.dx, ptr noundef nonnull align 1 dereferenceable(14) @.str.296, i64 14, i1 false)
  store i64 14, ptr %i.dy, align 8
  store i8 0, ptr %i.eo, align 2
  %i.jd = load i64, ptr %i.ds, align 8
  %i.je = add i64 %i.jd, -4611686018427387890
  %i.jf = icmp ult i64 %i.je, 14
  br i1 %i.jf, label %bb.al, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i250

bb.al:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit245
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.355) #26
          to label %.noexc251 unwind label %.loopexit.split-lp811

.noexc251:                                        ; preds = %bb.al
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i250: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit245
  %i.jg = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull %i.dx, i64 noundef 14)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit253 unwind label %.loopexit810 ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit253: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i250
  %i.jh = load ptr, ptr %10, align 8              ; 2 uses
  %i.ji = icmp eq ptr %i.jh, %i.dx
  br i1 %i.ji, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit256, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i254

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i254: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit253
  %i.jj = load i64, ptr %i.dx, align 8
  %i.jk = add i64 %i.jj, 1
  call void @_ZdlPvm(ptr noundef %i.jh, i64 noundef %i.jk) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit256

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit256: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit253, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i254
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #25
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %11, i8 0, i64 24, i1 false)
  %i.jl = load i32, ptr %i.gw, align 4            ; 2 uses
  %i.jm = shl i32 %i.jl, 4                        ; 2 uses
  %i.jn = zext i32 %i.jm to i64                   ; 2 uses
  %.not792 = icmp eq i32 %i.jm, 0
  br i1 %.not792, label %_ZNSt6vectorIfSaIfEE7reserveEm.exit, label %_ZNSt12_Vector_baseIfSaIfEE11_M_allocateEm.exit.i

_ZNSt12_Vector_baseIfSaIfEE11_M_allocateEm.exit.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit256
  %i.jo = shl nuw nsw i64 %i.jn, 2
  %i.jp = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.jo) #30
          to label %.noexc257 unwind label %bb.aq ; 4 uses

.noexc257:                                        ; preds = %_ZNSt12_Vector_baseIfSaIfEE11_M_allocateEm.exit.i
  store ptr %i.jp, ptr %11, align 8
  store ptr %i.jp, ptr %i.ea, align 8
  %i.jq = getelementptr inbounds nuw [4 x i8], ptr %i.jp, i64 %i.jn
  store ptr %i.jq, ptr %i.dz, align 8
  %.pre = load i32, ptr %i.gw, align 4
  br label %_ZNSt6vectorIfSaIfEE7reserveEm.exit

_ZNSt6vectorIfSaIfEE7reserveEm.exit:              ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit256, %.noexc257
  %i.jr = phi ptr [ null, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit256 ], [ %i.jp, %.noexc257 ] ; 2 uses
  %i.js = phi i32 [ %i.jl, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit256 ], [ %.pre, %.noexc257 ]
  %.not1340 = icmp eq i32 %i.js, 0
  br i1 %.not1340, label %._crit_edge1326, label %.lr.ph1325

.lr.ph1325:                                       ; preds = %_ZNSt6vectorIfSaIfEE7reserveEm.exit
  %i.jt = getelementptr inbounds nuw i8, ptr %i.gu, i64 1064
  %i.ju = getelementptr inbounds nuw i8, ptr %i.gu, i64 1048
  %i.jv = getelementptr inbounds nuw i8, ptr %i.gu, i64 1032
  br label %_ZN12aiMatrix4x4tIfEixEj.exit268

._crit_edge1326.loopexit:                         ; preds = %bb.ar
  %.pre1406 = load ptr, ptr %11, align 8
  %.pre1407 = load ptr, ptr %i.ea, align 8
  br label %._crit_edge1326

._crit_edge1326:                                  ; preds = %._crit_edge1326.loopexit, %_ZNSt6vectorIfSaIfEE7reserveEm.exit
  %i.jw = phi ptr [ %.pre1407, %._crit_edge1326.loopexit ], [ %i.jr, %_ZNSt6vectorIfSaIfEE7reserveEm.exit ]
  %i.jx = phi ptr [ %.pre1406, %._crit_edge1326.loopexit ], [ %i.jr, %_ZNSt6vectorIfSaIfEE7reserveEm.exit ] ; 2 uses
  %i.jy = ptrtoint ptr %i.jw to i64
  %i.jz = ptrtoint ptr %i.jx to i64
  %i.ka = sub i64 %i.jy, %i.jz
  %i.kb = ashr exact i64 %i.ka, 2
  %i.kc = lshr i64 %i.kb, 4
  invoke void @_ZN6Assimp15ColladaExporter15WriteFloatArrayERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_13FloatDataTypeEPKfm(ptr noundef nonnull align 8 dereferenceable(1248) %0, ptr noundef nonnull align 8 dereferenceable(32) %8, i32 noundef 4, ptr noundef %i.jx, i64 noundef %i.kc)
          to label %bb.at unwind label %bb.aq

bb.am:                                            ; preds = %._crit_edge
  %i.kd = landingpad { ptr, i32 }
          cleanup
  br label %bb.an

bb.an:                                            ; preds = %.loopexit795, %.loopexit.split-lp796, %bb.am
  %.sroa.18780.01067 = phi ptr [ %.sroa.18780.0.lcssa, %bb.am ], [ %.sroa.11776.01318, %.loopexit795 ], [ %.sroa.11776.01318, %.loopexit.split-lp796 ]
  %.sroa.0770.01039 = phi ptr [ %.sroa.0770.0.lcssa, %bb.am ], [ %.sroa.0770.01319, %.loopexit795 ], [ %.sroa.0770.01319, %.loopexit.split-lp796 ] ; 3 uses
  %.pn178 = phi { ptr, i32 } [ %i.kd, %bb.am ], [ %lpad.loopexit797, %.loopexit795 ], [ %lpad.loopexit.split-lp798, %.loopexit.split-lp796 ] ; 2 uses
  %.not.i.i.i258 = icmp eq ptr %.sroa.0770.01039, null
  br i1 %.not.i.i.i258, label %_ZNSt6vectorIfSaIfEED2Ev.exit259, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.ke = ptrtoint ptr %.sroa.18780.01067 to i64
  %i.kf = ptrtoint ptr %.sroa.0770.01039 to i64
  %i.kg = sub i64 %i.ke, %i.kf
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0770.01039, i64 noundef %i.kg) #27
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit259

.loopexit810:                                     ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i250
  %lpad.loopexit812 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ap

.loopexit.split-lp811:                            ; preds = %bb.al
  %lpad.loopexit.split-lp813 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ap

bb.ap:                                            ; preds = %.loopexit.split-lp811, %.loopexit810
  %lpad.phi814 = phi { ptr, i32 } [ %lpad.loopexit812, %.loopexit810 ], [ %lpad.loopexit.split-lp813, %.loopexit.split-lp811 ]
  %i.kh = load ptr, ptr %10, align 8              ; 2 uses
  %i.ki = icmp eq ptr %i.kh, %i.dx
  br i1 %i.ki, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit262, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i260

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i260: ; preds = %bb.ap
  %i.kj = load i64, ptr %i.dx, align 8
  %i.kk = add i64 %i.kj, 1
  call void @_ZdlPvm(ptr noundef %i.kh, i64 noundef %i.kk) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit262

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit262: ; preds = %bb.ap, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i260
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #25
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit259

bb.aq:                                            ; preds = %_ZNSt12_Vector_baseIfSaIfEE11_M_allocateEm.exit.i, %._crit_edge1326
  %i.kl = landingpad { ptr, i32 }
          cleanup
  br label %bb.av

_ZN12aiMatrix4x4tIfEixEj.exit268:                 ; preds = %.lr.ph1325, %bb.ar
  %.01201324 = phi i64 [ 0, %.lr.ph1325 ], [ %i.rf, %bb.ar ] ; 4 uses
  %i.km = load ptr, ptr %i.jt, align 8
  %i.kn = getelementptr inbounds nuw [24 x i8], ptr %i.km, i64 %.01201324 ; 3 uses
  %i.ko = getelementptr inbounds nuw i8, ptr %i.kn, i64 8
  %.sroa.023.0.copyload = load float, ptr %i.ko, align 8 ; 4 uses
  %.sroa.524.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.kn, i64 12
  %.sroa.524.0.copyload = load float, ptr %.sroa.524.0..sroa_idx, align 4 ; 4 uses
  %.sroa.625.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.kn, i64 16
  %.sroa.625.0.copyload = load float, ptr %.sroa.625.0..sroa_idx, align 8 ; 4 uses
  %i.kp = load ptr, ptr %i.ju, align 8
  %i.kq = getelementptr inbounds nuw [32 x i8], ptr %i.kp, i64 %.01201324 ; 4 uses
  %i.kr = getelementptr inbounds nuw i8, ptr %i.kq, i64 8
  %.sroa.0749.0.copyload = load float, ptr %i.kr, align 8 ; 4 uses
  %.sroa.5750.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.kq, i64 12
  %.sroa.5750.0.copyload = load float, ptr %.sroa.5750.0..sroa_idx, align 4 ; 10 uses
  %.sroa.6751.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.kq, i64 16
  %.sroa.6751.0.copyload = load float, ptr %.sroa.6751.0..sroa_idx, align 8 ; 10 uses
  %.sroa.7752.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.kq, i64 20
end_hunk_2
begin_hunk_3_@_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1EEEEE16_M_allocate_nodeIJRKS7_EEEPS8_DpOT_
define linkonce_odr noundef ptr @_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1EEEEE16_M_allocate_nodeIJRKS7_EEEPS8_DpOT_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = tail call noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #30 ; 6 uses
  store ptr null, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 3 uses
  store ptr %i.d, ptr %i.c, align 8
  %i.e = load ptr, ptr %1, align 8                ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load i64, ptr %i.f, align 8              ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  store i64 %i.g, ptr %i.a, align 8
  %i.h = icmp ugt i64 %i.g, 15
  br i1 %i.h, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.a
  %i.i = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc unwind label %bb.e     ; 2 uses

.noexc:                                           ; preds = %.noexc.i
  store ptr %i.i, ptr %i.c, align 8
  %i.j = load i64, ptr %i.a, align 8
  store i64 %i.j, ptr %i.d, align 8
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc, %bb.a
  %i.k = phi ptr [ %i.i, %.noexc ], [ %i.d, %bb.a ] ; 2 uses
  switch i64 %i.g, label %bb.c [
    i64 1, label %bb.b
    i64 0, label %bb.d
  ]

bb.b:                                             ; preds = %._crit_edge.i.i
  %i.l = load i8, ptr %i.e, align 1
  store i8 %i.l, ptr %i.k, align 1
  br label %bb.d

bb.c:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.k, ptr align 1 %i.e, i64 %i.g, i1 false)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %._crit_edge.i.i
  %i.m = load i64, ptr %i.a, align 8              ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 %i.m, ptr %i.n, align 8
  %i.o = load ptr, ptr %i.c, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.m
  store i8 0, ptr %i.p, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  ret ptr %i.b

bb.e:                                             ; preds = %.noexc.i
  %i.q = landingpad { ptr, i32 }
          catch ptr null
  %i.r = extractvalue { ptr, i32 } %i.q, 0
  %i.s = call ptr @__cxa_begin_catch(ptr %i.r) #25 ; 0 uses
  call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef 48) #27
  invoke void @__cxa_rethrow() #26
          to label %bb.i unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.t = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.g unwind label %bb.h

bb.g:                                             ; preds = %bb.f
  resume { ptr, i32 } %i.t

bb.h:                                             ; preds = %bb.f
  %i.u = landingpad { ptr, i32 }
          catch ptr null
  %i.v = extractvalue { ptr, i32 } %i.u, 0
  call void @__clang_call_terminate(ptr %i.v) #28
  unreachable

bb.i:                                             ; preds = %bb.e
  unreachable
}

declare { i8, i64 } @_ZNKSt8__detail20_Prime_rehash_policy14_M_need_rehashEmmm(ptr noundef nonnull align 8 dereferenceable(16), i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityESt8equal_toIS5_ESt4hashIS5_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE13_M_rehash_auxEmSt17integral_constantIbLb1EE(ptr noundef nonnull align 8 dereferenceable(56) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp eq i64 %1, 1
  br i1 %i.a, label %bb.b, label %bb.c, !prof !68

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  store ptr null, ptr %i.b, align 8
  br label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityESt8equal_toIS5_ESt4hashIS5_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE19_M_allocate_bucketsEm.exit

bb.c:                                             ; preds = %bb.a
  %i.c = icmp ugt i64 %1, 1152921504606846975
  br i1 %i.c, label %bb.d, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1EEEEE19_M_allocate_bucketsEm.exit.i, !prof !68

bb.d:                                             ; preds = %bb.c
  %i.d = icmp ugt i64 %1, 2305843009213693951
  br i1 %i.d, label %.noexc.i.i, label %.noexc7.i.i

.noexc.i.i:                                       ; preds = %bb.d
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #26
  unreachable

.noexc7.i.i:                                      ; preds = %bb.d
  tail call void @_ZSt17__throw_bad_allocv() #26
  unreachable

_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1EEEEE19_M_allocate_bucketsEm.exit.i: ; preds = %bb.c
  %i.e = shl nuw nsw i64 %1, 3                    ; 2 uses
  %i.f = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.e) #30 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.f, i8 0, i64 %i.e, i1 false)
  br label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityESt8equal_toIS5_ESt4hashIS5_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE19_M_allocate_bucketsEm.exit

_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityESt8equal_toIS5_ESt4hashIS5_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE19_M_allocate_bucketsEm.exit: ; preds = %bb.b, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1EEEEE19_M_allocate_bucketsEm.exit.i
  %.0.i = phi ptr [ %i.b, %bb.b ], [ %i.f, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1EEEEE19_M_allocate_bucketsEm.exit.i ] ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.h = load ptr, ptr %i.g, align 8              ; 2 uses
  store ptr null, ptr %i.g, align 8
  %.not29 = icmp eq ptr %i.h, null
  br i1 %.not29, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityESt8equal_toIS5_ESt4hashIS5_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE19_M_allocate_bucketsEm.exit, %bb.h
  %.031 = phi ptr [ %i.i, %bb.h ], [ %i.h, %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityESt8equal_toIS5_ESt4hashIS5_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE19_M_allocate_bucketsEm.exit ] ; 8 uses
  %.02530 = phi i64 [ %.1, %bb.h ], [ 0, %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityESt8equal_toIS5_ESt4hashIS5_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE19_M_allocate_bucketsEm.exit ] ; 2 uses
  %i.i = load ptr, ptr %.031, align 8             ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.031, i64 40
  %i.k = load i64, ptr %i.j, align 8
  %i.l = urem i64 %i.k, %1                        ; 3 uses
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %.0.i, i64 %i.l ; 3 uses
  %i.n = load ptr, ptr %i.m, align 8              ; 2 uses
  %.not27 = icmp eq ptr %i.n, null
  br i1 %.not27, label %bb.e, label %bb.g

bb.e:                                             ; preds = %.lr.ph
  %i.o = load ptr, ptr %i.g, align 8
  store ptr %i.o, ptr %.031, align 8
  store ptr %.031, ptr %i.g, align 8
  store ptr %i.g, ptr %i.m, align 8
  %i.p = load ptr, ptr %.031, align 8
  %.not28 = icmp eq ptr %i.p, null
  br i1 %.not28, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %.0.i, i64 %.02530
  store ptr %.031, ptr %i.q, align 8
  br label %bb.h

bb.g:                                             ; preds = %.lr.ph
  %i.r = load ptr, ptr %i.n, align 8
  store ptr %i.r, ptr %.031, align 8
  %i.s = load ptr, ptr %i.m, align 8
  store ptr %.031, ptr %i.s, align 8
  br label %bb.h

bb.h:                                             ; preds = %bb.e, %bb.f, %bb.g
  %.1 = phi i64 [ %.02530, %bb.g ], [ %i.l, %bb.f ], [ %i.l, %bb.e ]
  %.not = icmp eq ptr %i.i, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !424

._crit_edge:                                      ; preds = %bb.h, %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityESt8equal_toIS5_ESt4hashIS5_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE19_M_allocate_bucketsEm.exit
  %i.t = load ptr, ptr %0, align 8                ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.v = icmp eq ptr %i.t, %i.u
  br i1 %i.v, label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityESt8equal_toIS5_ESt4hashIS5_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE21_M_deallocate_bucketsEv.exit, label %bb.i

bb.i:                                             ; preds = %._crit_edge
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.x = load i64, ptr %i.w, align 8
  %i.y = shl i64 %i.x, 3
  tail call void @_ZdlPvm(ptr noundef %i.t, i64 noundef %i.y) #27
  br label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityESt8equal_toIS5_ESt4hashIS5_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE21_M_deallocate_bucketsEv.exit

_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityESt8equal_toIS5_ESt4hashIS5_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE21_M_deallocate_bucketsEv.exit: ; preds = %._crit_edge, %bb.i
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %1, ptr %i.z, align 8
  store ptr %.0.i, ptr %0, align 8
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJRA7_KcEEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 1 dereferenceable(7) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8              ; 3 uses
  %i.d = load ptr, ptr %0, align 8                ; 5 uses
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64                 ; 3 uses
  %i.g = sub i64 %i.e, %i.f                       ; 2 uses
  %i.h = icmp eq i64 %i.g, 9223372036854775776
  br i1 %i.h, label %bb.b, label %_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.365) #26
  unreachable

_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.i = ashr exact i64 %i.g, 5                   ; 2 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.i, i64 1)
  %i.j = add nsw i64 %.sroa.speculated.i, %i.i    ; 2 uses
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.j, i64 288230376151711743) ; 3 uses
  %i.l = ptrtoint ptr %1 to i64
  %i.m = sub i64 %i.l, %i.f
  %.not.i = icmp eq i64 %i.j, 0
  br i1 %.not.i, label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit, label %bb.c

bb.c:                                             ; preds = %_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_M_check_lenEmPKc.exit
  %i.n = shl nuw nsw i64 %i.k, 5
  %i.o = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.n) #30
  br label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit

_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit: ; preds = %_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_M_check_lenEmPKc.exit, %bb.c
  %i.p = phi ptr [ %i.o, %bb.c ], [ null, %_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_M_check_lenEmPKc.exit ] ; 6 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.m ; 6 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 16 ; 3 uses
  store ptr %i.r, ptr %i.q, align 8
  %i.s = tail call noundef i64 @strlen(ptr noundef nonnull align 1 dereferenceable(7) %2) #25 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  store i64 %i.s, ptr %i.a, align 8
  %i.t = icmp ugt i64 %i.s, 15
  br i1 %i.t, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit
  %i.u = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.q, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ; 2 uses

.noexc:                                           ; preds = %.noexc.i
  store ptr %i.u, ptr %i.q, align 8
  %i.v = load i64, ptr %i.a, align 8
  store i64 %i.v, ptr %i.r, align 8
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc, %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit
  %i.w = phi ptr [ %i.u, %.noexc ], [ %i.r, %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit ] ; 2 uses
  switch i64 %i.s, label %bb.e [
    i64 1, label %bb.d
    i64 0, label %bb.f
  ]

bb.d:                                             ; preds = %._crit_edge.i.i
  %i.x = load i8, ptr %2, align 1
  store i8 %i.x, ptr %i.w, align 1
  br label %bb.f

bb.e:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.w, ptr nonnull align 1 dereferenceable(7) %2, i64 %i.s, i1 false)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %._crit_edge.i.i
  %i.y = load i64, ptr %i.a, align 8              ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store i64 %i.y, ptr %i.z, align 8
  %i.aa = load ptr, ptr %i.q, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.y
  store i8 0, ptr %i.ab, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  %.not10.i.i.i = icmp eq ptr %i.d, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.f, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i
  %.012.i.i.i = phi ptr [ %i.ap, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.p, %bb.f ] ; 5 uses
  %.0911.i.i.i = phi ptr [ %i.ao, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.d, %bb.f ] ; 7 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !425)
  call void @llvm.experimental.noalias.scope.decl(metadata !428)
  %i.ac = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 16 ; 3 uses
  store ptr %i.ac, ptr %.012.i.i.i, align 8, !alias.scope !425, !noalias !428
  %i.ad = load ptr, ptr %.0911.i.i.i, align 8, !alias.scope !428, !noalias !425 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16 ; 5 uses
  %i.af = icmp eq ptr %i.ad, %i.ae
  br i1 %i.af, label %bb.g, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

bb.g:                                             ; preds = %.lr.ph.i.i.i
  %i.ag = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %i.ah = load i64, ptr %i.ag, align 8, !alias.scope !428, !noalias !425 ; 3 uses
  %i.ai = icmp ult i64 %i.ah, 16
  call void @llvm.assume(i1 %i.ai)
  %i.aj = add nuw nsw i64 %i.ah, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ac, ptr noundef nonnull align 8 dereferenceable(1) %i.ae, i64 %i.aj, i1 false), !alias.scope !430
  br label %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  store ptr %i.ad, ptr %.012.i.i.i, align 8, !alias.scope !425, !noalias !428
  %i.ak = load i64, ptr %i.ae, align 8, !alias.scope !428, !noalias !425
  store i64 %i.ak, ptr %i.ac, align 8, !alias.scope !425, !noalias !428
  %.phi.trans.insert.i.i.i.i = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %.pre.i.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i.i, align 8, !alias.scope !428, !noalias !425
  br label %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i

_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i, %bb.g
  %i.al = phi i64 [ %i.ah, %bb.g ], [ %.pre.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i ]
  %i.am = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %i.an = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 8
  store i64 %i.al, ptr %i.an, align 8, !alias.scope !425, !noalias !428
  store ptr %i.ae, ptr %.0911.i.i.i, align 8, !alias.scope !428, !noalias !425
  store i64 0, ptr %i.am, align 8, !alias.scope !428, !noalias !425
  store i8 0, ptr %i.ae, align 8, !alias.scope !428, !noalias !425
  %i.ao = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 32 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ao, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit, label %.lr.ph.i.i.i, !llvm.loop !431

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit: ; preds = %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i, %bb.f
  %.0.lcssa.i.i.i = phi ptr [ %i.p, %bb.f ], [ %i.ap, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i ]
  %i.aq = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 32 ; 2 uses
  %.not10.i.i.i26 = icmp eq ptr %1, %i.c
  br i1 %.not10.i.i.i26, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit36, label %.lr.ph.i.i.i27

.lr.ph.i.i.i27:                                   ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i33
  %.012.i.i.i28 = phi ptr [ %i.be, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i33 ], [ %i.aq, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit ] ; 5 uses
  %.0911.i.i.i29 = phi ptr [ %i.bd, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i33 ], [ %1, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit ] ; 7 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !432)
  call void @llvm.experimental.noalias.scope.decl(metadata !435)
  %i.ar = getelementptr inbounds nuw i8, ptr %.012.i.i.i28, i64 16 ; 3 uses
  store ptr %i.ar, ptr %.012.i.i.i28, align 8, !alias.scope !432, !noalias !435
  %i.as = load ptr, ptr %.0911.i.i.i29, align 8, !alias.scope !435, !noalias !432 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %.0911.i.i.i29, i64 16 ; 5 uses
  %i.au = icmp eq ptr %i.as, %i.at
  br i1 %i.au, label %bb.h, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i30

bb.h:                                             ; preds = %.lr.ph.i.i.i27
  %i.av = getelementptr inbounds nuw i8, ptr %.0911.i.i.i29, i64 8
  %i.aw = load i64, ptr %i.av, align 8, !alias.scope !435, !noalias !432 ; 3 uses
  %i.ax = icmp ult i64 %i.aw, 16
  call void @llvm.assume(i1 %i.ax)
  %i.ay = add nuw nsw i64 %i.aw, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ar, ptr noundef nonnull align 8 dereferenceable(1) %i.at, i64 %i.ay, i1 false), !alias.scope !437
  br label %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i33

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i30: ; preds = %.lr.ph.i.i.i27
  store ptr %i.as, ptr %.012.i.i.i28, align 8, !alias.scope !432, !noalias !435
  %i.az = load i64, ptr %i.at, align 8, !alias.scope !435, !noalias !432
  store i64 %i.az, ptr %i.ar, align 8, !alias.scope !432, !noalias !435
  %.phi.trans.insert.i.i.i.i31 = getelementptr inbounds nuw i8, ptr %.0911.i.i.i29, i64 8
  %.pre.i.i.i.i32 = load i64, ptr %.phi.trans.insert.i.i.i.i31, align 8, !alias.scope !435, !noalias !432
  br label %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i33

_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i33: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i30, %bb.h
  %i.ba = phi i64 [ %i.aw, %bb.h ], [ %.pre.i.i.i.i32, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i30 ]
  %i.bb = getelementptr inbounds nuw i8, ptr %.0911.i.i.i29, i64 8
  %i.bc = getelementptr inbounds nuw i8, ptr %.012.i.i.i28, i64 8
  store i64 %i.ba, ptr %i.bc, align 8, !alias.scope !432, !noalias !435
  store ptr %i.at, ptr %.0911.i.i.i29, align 8, !alias.scope !435, !noalias !432
  store i64 0, ptr %i.bb, align 8, !alias.scope !435, !noalias !432
  store i8 0, ptr %i.at, align 8, !alias.scope !435, !noalias !432
  %i.bd = getelementptr inbounds nuw i8, ptr %.0911.i.i.i29, i64 32 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %.012.i.i.i28, i64 32 ; 2 uses
  %.not.i.i.i34 = icmp eq ptr %i.bd, %i.c
  br i1 %.not.i.i.i34, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit36, label %.lr.ph.i.i.i27, !llvm.loop !431

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit36: ; preds = %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i33, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit
  %.0.lcssa.i.i.i35 = phi ptr [ %i.aq, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit ], [ %i.be, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i33 ]
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i37 = icmp eq ptr %i.d, null
  br i1 %.not.i37, label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE13_M_deallocateEPS5_m.exit, label %bb.i

bb.i:                                             ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit36
  %i.bg = load ptr, ptr %i.bf, align 8
  %i.bh = ptrtoint ptr %i.bg to i64
  %i.bi = sub i64 %i.bh, %i.f
  call void @_ZdlPvm(ptr noundef nonnull %i.d, i64 noundef %i.bi) #27
  br label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE13_M_deallocateEPS5_m.exit

_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE13_M_deallocateEPS5_m.exit: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit36, %bb.i
  store ptr %i.p, ptr %0, align 8
  store ptr %.0.lcssa.i.i.i35, ptr %i.b, align 8
  %i.bj = getelementptr inbounds nuw [32 x i8], ptr %i.p, i64 %i.k
  store ptr %i.bj, ptr %i.bf, align 8
  ret void

bb.j:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.bk = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.k unwind label %bb.l

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %.noexc.i
  %i.bl = landingpad { ptr, i32 }
          catch ptr null
  %i.bm = extractvalue { ptr, i32 } %i.bl, 0
  %i.bn = call ptr @__cxa_begin_catch(ptr %i.bm) #25 ; 0 uses
  %i.bo = shl nuw nsw i64 %i.k, 5
  call void @_ZdlPvm(ptr noundef nonnull %i.p, i64 noundef %i.bo) #27
  invoke void @__cxa_rethrow() #26
          to label %bb.m unwind label %bb.j

bb.k:                                             ; preds = %bb.j
  resume { ptr, i32 } %i.bk

bb.l:                                             ; preds = %bb.j
  %i.bp = landingpad { ptr, i32 }
          catch ptr null
  %i.bq = extractvalue { ptr, i32 } %i.bp, 0
  call void @__clang_call_terminate(ptr %i.bq) #28
  unreachable

bb.m:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJRA5_KcEEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 1 dereferenceable(5) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8              ; 3 uses
  %i.d = load ptr, ptr %0, align 8                ; 5 uses
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64                 ; 3 uses
  %i.g = sub i64 %i.e, %i.f                       ; 2 uses
  %i.h = icmp eq i64 %i.g, 9223372036854775776
  br i1 %i.h, label %bb.b, label %_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.365) #26
  unreachable

_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.i = ashr exact i64 %i.g, 5                   ; 2 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.i, i64 1)
  %i.j = add nsw i64 %.sroa.speculated.i, %i.i    ; 2 uses
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.j, i64 288230376151711743) ; 3 uses
  %i.l = ptrtoint ptr %1 to i64
  %i.m = sub i64 %i.l, %i.f
  %.not.i = icmp eq i64 %i.j, 0
  br i1 %.not.i, label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit, label %bb.c

bb.c:                                             ; preds = %_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_M_check_lenEmPKc.exit
  %i.n = shl nuw nsw i64 %i.k, 5
  %i.o = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.n) #30
  br label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit

_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit: ; preds = %_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_M_check_lenEmPKc.exit, %bb.c
  %i.p = phi ptr [ %i.o, %bb.c ], [ null, %_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_M_check_lenEmPKc.exit ] ; 6 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.m ; 6 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 16 ; 3 uses
  store ptr %i.r, ptr %i.q, align 8
  %i.s = tail call noundef i64 @strlen(ptr noundef nonnull align 1 dereferenceable(5) %2) #25 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  store i64 %i.s, ptr %i.a, align 8
  %i.t = icmp ugt i64 %i.s, 15
  br i1 %i.t, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit
  %i.u = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.q, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ; 2 uses

.noexc:                                           ; preds = %.noexc.i
  store ptr %i.u, ptr %i.q, align 8
  %i.v = load i64, ptr %i.a, align 8
  store i64 %i.v, ptr %i.r, align 8
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc, %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit
  %i.w = phi ptr [ %i.u, %.noexc ], [ %i.r, %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit ] ; 2 uses
  switch i64 %i.s, label %bb.e [
    i64 1, label %bb.d
    i64 0, label %bb.f
  ]

bb.d:                                             ; preds = %._crit_edge.i.i
  %i.x = load i8, ptr %2, align 1
  store i8 %i.x, ptr %i.w, align 1
  br label %bb.f

bb.e:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.w, ptr nonnull align 1 dereferenceable(5) %2, i64 %i.s, i1 false)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %._crit_edge.i.i
  %i.y = load i64, ptr %i.a, align 8              ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store i64 %i.y, ptr %i.z, align 8
  %i.aa = load ptr, ptr %i.q, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.y
  store i8 0, ptr %i.ab, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  %.not10.i.i.i = icmp eq ptr %i.d, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.f, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i
  %.012.i.i.i = phi ptr [ %i.ap, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.p, %bb.f ] ; 5 uses
  %.0911.i.i.i = phi ptr [ %i.ao, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.d, %bb.f ] ; 7 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !438)
  call void @llvm.experimental.noalias.scope.decl(metadata !441)
  %i.ac = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 16 ; 3 uses
  store ptr %i.ac, ptr %.012.i.i.i, align 8, !alias.scope !438, !noalias !441
  %i.ad = load ptr, ptr %.0911.i.i.i, align 8, !alias.scope !441, !noalias !438 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16 ; 5 uses
  %i.af = icmp eq ptr %i.ad, %i.ae
  br i1 %i.af, label %bb.g, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

bb.g:                                             ; preds = %.lr.ph.i.i.i
  %i.ag = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %i.ah = load i64, ptr %i.ag, align 8, !alias.scope !441, !noalias !438 ; 3 uses
  %i.ai = icmp ult i64 %i.ah, 16
  call void @llvm.assume(i1 %i.ai)
  %i.aj = add nuw nsw i64 %i.ah, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ac, ptr noundef nonnull align 8 dereferenceable(1) %i.ae, i64 %i.aj, i1 false), !alias.scope !443
  br label %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  store ptr %i.ad, ptr %.012.i.i.i, align 8, !alias.scope !438, !noalias !441
  %i.ak = load i64, ptr %i.ae, align 8, !alias.scope !441, !noalias !438
  store i64 %i.ak, ptr %i.ac, align 8, !alias.scope !438, !noalias !441
  %.phi.trans.insert.i.i.i.i = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %.pre.i.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i.i, align 8, !alias.scope !441, !noalias !438
  br label %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i

_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i, %bb.g
  %i.al = phi i64 [ %i.ah, %bb.g ], [ %.pre.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i ]
  %i.am = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %i.an = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 8
  store i64 %i.al, ptr %i.an, align 8, !alias.scope !438, !noalias !441
  store ptr %i.ae, ptr %.0911.i.i.i, align 8, !alias.scope !441, !noalias !438
  store i64 0, ptr %i.am, align 8, !alias.scope !441, !noalias !438
  store i8 0, ptr %i.ae, align 8, !alias.scope !441, !noalias !438
  %i.ao = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 32 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ao, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit, label %.lr.ph.i.i.i, !llvm.loop !431

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit: ; preds = %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i, %bb.f
  %.0.lcssa.i.i.i = phi ptr [ %i.p, %bb.f ], [ %i.ap, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i ]
  %i.aq = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 32 ; 2 uses
  %.not10.i.i.i26 = icmp eq ptr %1, %i.c
  br i1 %.not10.i.i.i26, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit36, label %.lr.ph.i.i.i27

.lr.ph.i.i.i27:                                   ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i33
  %.012.i.i.i28 = phi ptr [ %i.be, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i33 ], [ %i.aq, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit ] ; 5 uses
  %.0911.i.i.i29 = phi ptr [ %i.bd, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i33 ], [ %1, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit ] ; 7 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !444)
  call void @llvm.experimental.noalias.scope.decl(metadata !447)
  %i.ar = getelementptr inbounds nuw i8, ptr %.012.i.i.i28, i64 16 ; 3 uses
  store ptr %i.ar, ptr %.012.i.i.i28, align 8, !alias.scope !444, !noalias !447
  %i.as = load ptr, ptr %.0911.i.i.i29, align 8, !alias.scope !447, !noalias !444 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %.0911.i.i.i29, i64 16 ; 5 uses
  %i.au = icmp eq ptr %i.as, %i.at
  br i1 %i.au, label %bb.h, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i30

bb.h:                                             ; preds = %.lr.ph.i.i.i27
  %i.av = getelementptr inbounds nuw i8, ptr %.0911.i.i.i29, i64 8
  %i.aw = load i64, ptr %i.av, align 8, !alias.scope !447, !noalias !444 ; 3 uses
  %i.ax = icmp ult i64 %i.aw, 16
  call void @llvm.assume(i1 %i.ax)
  %i.ay = add nuw nsw i64 %i.aw, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ar, ptr noundef nonnull align 8 dereferenceable(1) %i.at, i64 %i.ay, i1 false), !alias.scope !449
  br label %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i33

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i30: ; preds = %.lr.ph.i.i.i27
  store ptr %i.as, ptr %.012.i.i.i28, align 8, !alias.scope !444, !noalias !447
  %i.az = load i64, ptr %i.at, align 8, !alias.scope !447, !noalias !444
  store i64 %i.az, ptr %i.ar, align 8, !alias.scope !444, !noalias !447
  %.phi.trans.insert.i.i.i.i31 = getelementptr inbounds nuw i8, ptr %.0911.i.i.i29, i64 8
  %.pre.i.i.i.i32 = load i64, ptr %.phi.trans.insert.i.i.i.i31, align 8, !alias.scope !447, !noalias !444
  br label %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i33

_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i33: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i30, %bb.h
  %i.ba = phi i64 [ %i.aw, %bb.h ], [ %.pre.i.i.i.i32, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i30 ]
  %i.bb = getelementptr inbounds nuw i8, ptr %.0911.i.i.i29, i64 8
  %i.bc = getelementptr inbounds nuw i8, ptr %.012.i.i.i28, i64 8
  store i64 %i.ba, ptr %i.bc, align 8, !alias.scope !444, !noalias !447
  store ptr %i.at, ptr %.0911.i.i.i29, align 8, !alias.scope !447, !noalias !444
  store i64 0, ptr %i.bb, align 8, !alias.scope !447, !noalias !444
  store i8 0, ptr %i.at, align 8, !alias.scope !447, !noalias !444
  %i.bd = getelementptr inbounds nuw i8, ptr %.0911.i.i.i29, i64 32 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %.012.i.i.i28, i64 32 ; 2 uses
  %.not.i.i.i34 = icmp eq ptr %i.bd, %i.c
  br i1 %.not.i.i.i34, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit36, label %.lr.ph.i.i.i27, !llvm.loop !431

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit36: ; preds = %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i33, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit
  %.0.lcssa.i.i.i35 = phi ptr [ %i.aq, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit ], [ %i.be, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i33 ]
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i37 = icmp eq ptr %i.d, null
  br i1 %.not.i37, label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE13_M_deallocateEPS5_m.exit, label %bb.i

bb.i:                                             ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit36
  %i.bg = load ptr, ptr %i.bf, align 8
  %i.bh = ptrtoint ptr %i.bg to i64
  %i.bi = sub i64 %i.bh, %i.f
  call void @_ZdlPvm(ptr noundef nonnull %i.d, i64 noundef %i.bi) #27
  br label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE13_M_deallocateEPS5_m.exit

_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE13_M_deallocateEPS5_m.exit: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit36, %bb.i
  store ptr %i.p, ptr %0, align 8
  store ptr %.0.lcssa.i.i.i35, ptr %i.b, align 8
  %i.bj = getelementptr inbounds nuw [32 x i8], ptr %i.p, i64 %i.k
  store ptr %i.bj, ptr %i.bf, align 8
  ret void

bb.j:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.bk = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.k unwind label %bb.l

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %.noexc.i
  %i.bl = landingpad { ptr, i32 }
          catch ptr null
  %i.bm = extractvalue { ptr, i32 } %i.bl, 0
  %i.bn = call ptr @__cxa_begin_catch(ptr %i.bm) #25 ; 0 uses
  %i.bo = shl nuw nsw i64 %i.k, 5
  call void @_ZdlPvm(ptr noundef nonnull %i.p, i64 noundef %i.bo) #27
  invoke void @__cxa_rethrow() #26
          to label %bb.m unwind label %bb.j

bb.k:                                             ; preds = %bb.j
  resume { ptr, i32 } %i.bk

bb.l:                                             ; preds = %bb.j
  %i.bp = landingpad { ptr, i32 }
          catch ptr null
  %i.bq = extractvalue { ptr, i32 } %i.bp, 0
  call void @__clang_call_terminate(ptr %i.bq) #28
  unreachable

bb.m:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr ptr @_ZNSt8_Rb_treeIPKvSt4pairIKS1_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt10_Select1stISA_ESt4lessIS1_ESaISA_EE22_M_emplace_hint_uniqueIJS2_IPK6aiNodeS9_EEEESt17_Rb_tree_iteratorISA_ESt23_Rb_tree_const_iteratorISA_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(40) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.std::_Rb_tree<const void *, std::pair<const void *const, std::__cxx11::basic_string<char>>, std::_Select1st<std::pair<const void *const, std::__cxx11::basic_string<char>>>, std::less<const void *>>::_Auto_node", align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  store ptr %0, ptr %3, align 8
  %i.a = tail call noalias noundef nonnull dereferenceable(72) ptr @_Znwm(i64 noundef 72) #30 ; 8 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 3 uses
  %i.c = load ptr, ptr %2, align 8
  store ptr %i.c, ptr %i.b, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 40 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 56 ; 5 uses
  store ptr %i.f, ptr %i.d, align 8
  %i.g = load ptr, ptr %i.e, align 8              ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 5 uses
  %i.i = icmp eq ptr %i.g, %i.h
  br i1 %i.i, label %bb.b, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.k = load i64, ptr %i.j, align 8              ; 3 uses
  %i.l = icmp ult i64 %i.k, 16
  tail call void @llvm.assume(i1 %i.l)
  %i.m = add nuw nsw i64 %i.k, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.f, ptr noundef nonnull align 8 dereferenceable(1) %i.h, i64 %i.m, i1 false)
  br label %bb.c

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.a
  store ptr %i.g, ptr %i.d, align 8
  %i.n = load i64, ptr %i.h, align 8
  store i64 %i.n, ptr %i.f, align 8
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.pre.i.i = load i64, ptr %.phi.trans.insert.i.i, align 8
  br label %bb.c

bb.c:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i, %bb.b
  %i.o = phi i64 [ %i.k, %bb.b ], [ %.pre.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i ]
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store i64 %i.o, ptr %i.r, align 8
  store ptr %i.h, ptr %i.e, align 8
  store i64 0, ptr %i.q, align 8
  store i8 0, ptr %i.h, align 8
  store ptr %i.a, ptr %i.p, align 8
  %i.s = invoke { ptr, ptr } @_ZNSt8_Rb_treeIPKvSt4pairIKS1_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt10_Select1stISA_ESt4lessIS1_ESaISA_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorISA_ERS3_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %bb.d unwind label %bb.g       ; 2 uses

bb.d:                                             ; preds = %bb.c
  %i.t = extractvalue { ptr, ptr } %i.s, 0        ; 2 uses
  %i.u = extractvalue { ptr, ptr } %i.s, 1        ; 4 uses
  %.not = icmp eq ptr %i.u, null
  br i1 %.not, label %bb.h, label %bb.e

bb.e:                                             ; preds = %bb.d
  %.not.i.i = icmp ne ptr %i.t, null
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.w = icmp eq ptr %i.u, %i.v
  %or.cond.i.i = select i1 %.not.i.i, i1 true, i1 %i.w
  br i1 %or.cond.i.i, label %.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.x = load ptr, ptr %i.b, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %i.u, i64 32
  %i.z = load ptr, ptr %i.y, align 8
  %i.aa = icmp ult ptr %i.x, %i.z
  br label %.thread

.thread:                                          ; preds = %bb.e, %bb.f
  %i.ab = phi i1 [ %i.aa, %bb.f ], [ true, %bb.e ]
  tail call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.ab, ptr noundef nonnull %i.a, ptr noundef nonnull %i.u, ptr noundef nonnull align 8 dereferenceable(32) %i.v) #25
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.ad = load i64, ptr %i.ac, align 8
  %i.ae = add i64 %i.ad, 1
  store i64 %i.ae, ptr %i.ac, align 8
  br label %_ZNSt8_Rb_treeIPKvSt4pairIKS1_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt10_Select1stISA_ESt4lessIS1_ESaISA_EE10_Auto_nodeD2Ev.exit

bb.g:                                             ; preds = %bb.c
  %i.af = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt8_Rb_treeIPKvSt4pairIKS1_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt10_Select1stISA_ESt4lessIS1_ESaISA_EE10_Auto_nodeD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %3) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  resume { ptr, i32 } %i.af

bb.h:                                             ; preds = %bb.d
  %i.ag = load ptr, ptr %i.d, align 8             ; 2 uses
  %i.ah = icmp eq ptr %i.ag, %i.f
  br i1 %i.ah, label %_ZNSt8_Rb_treeIPKvSt4pairIKS1_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt10_Select1stISA_ESt4lessIS1_ESaISA_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISA_E.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %bb.h
  %i.ai = load i64, ptr %i.f, align 8
  %i.aj = add i64 %i.ai, 1
  tail call void @_ZdlPvm(ptr noundef %i.ag, i64 noundef %i.aj) #27
  br label %_ZNSt8_Rb_treeIPKvSt4pairIKS1_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt10_Select1stISA_ESt4lessIS1_ESaISA_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISA_E.exit.i

_ZNSt8_Rb_treeIPKvSt4pairIKS1_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt10_Select1stISA_ESt4lessIS1_ESaISA_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISA_E.exit.i: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 72) #27
  br label %_ZNSt8_Rb_treeIPKvSt4pairIKS1_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt10_Select1stISA_ESt4lessIS1_ESaISA_EE10_Auto_nodeD2Ev.exit

_ZNSt8_Rb_treeIPKvSt4pairIKS1_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt10_Select1stISA_ESt4lessIS1_ESaISA_EE10_Auto_nodeD2Ev.exit: ; preds = %.thread, %_ZNSt8_Rb_treeIPKvSt4pairIKS1_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt10_Select1stISA_ESt4lessIS1_ESaISA_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISA_E.exit.i
  %.sroa.0.08 = phi ptr [ %i.a, %.thread ], [ %i.t, %_ZNSt8_Rb_treeIPKvSt4pairIKS1_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt10_Select1stISA_ESt4lessIS1_ESaISA_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISA_E.exit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  ret ptr %.sroa.0.08
}

; Function Attrs: mustprogress uwtable
define linkonce_odr { ptr, ptr } @_ZNSt8_Rb_treeIPKvSt4pairIKS1_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt10_Select1stISA_ESt4lessIS1_ESaISA_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorISA_ERS3_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = icmp eq ptr %1, %i.a
  br i1 %i.b, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.d = load i64, ptr %i.c, align 8
  %.not = icmp eq i64 %i.d, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.f = load ptr, ptr %i.e, align 8              ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = load ptr, ptr %2, align 8
  %i.j = icmp ult ptr %i.h, %i.i
  br i1 %i.j, label %_ZNSt8_Rb_treeIPKvSt4pairIKS1_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt10_Select1stISA_ESt4lessIS1_ESaISA_EE24_M_get_insert_unique_posERS3_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.02022.i = load ptr, ptr %i.k, align 8         ; 2 uses
  %.not23.i = icmp eq ptr %.02022.i, null
  br i1 %.not23.i, label %._crit_edge.thread.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.d
  %i.l = load ptr, ptr %2, align 8                ; 2 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %.lr.ph.i
  %.02024.i = phi ptr [ %.02022.i, %.lr.ph.i ], [ %.020.i, %bb.e ] ; 5 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.02024.i, i64 32
  %i.n = load ptr, ptr %i.m, align 8              ; 2 uses
  %i.o = icmp ult ptr %i.l, %i.n                  ; 2 uses
  %.in.v.i = select i1 %i.o, i64 16, i64 24
  %.in.i = getelementptr inbounds nuw i8, ptr %.02024.i, i64 %.in.v.i
  %.020.i = load ptr, ptr %.in.i, align 8         ; 2 uses
  %.not.i = icmp eq ptr %.020.i, null
  br i1 %.not.i, label %._crit_edge.i, label %bb.e, !llvm.loop !450

._crit_edge.i:                                    ; preds = %bb.e
  br i1 %i.o, label %._crit_edge.thread.i, label %bb.g

._crit_edge.thread.i:                             ; preds = %._crit_edge.i, %bb.d
  %.019.lcssa29.i = phi ptr [ %.02024.i, %._crit_edge.i ], [ %i.a, %bb.d ] ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.q = load ptr, ptr %i.p, align 8
  %i.r = icmp eq ptr %.019.lcssa29.i, %i.q
  br i1 %i.r, label %_ZNSt8_Rb_treeIPKvSt4pairIKS1_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt10_Select1stISA_ESt4lessIS1_ESaISA_EE24_M_get_insert_unique_posERS3_.exit, label %bb.f

bb.f:                                             ; preds = %._crit_edge.thread.i
  %i.s = tail call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.019.lcssa29.i) #29 ; 2 uses
  %.phi.trans.insert80 = getelementptr inbounds nuw i8, ptr %i.s, i64 32
  %.pre81 = load ptr, ptr %.phi.trans.insert80, align 8
  %.pre82 = load ptr, ptr %2, align 8
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %._crit_edge.i
  %i.t = phi ptr [ %.pre82, %bb.f ], [ %i.l, %._crit_edge.i ]
  %i.u = phi ptr [ %.pre81, %bb.f ], [ %i.n, %._crit_edge.i ]
  %.019.lcssa28.i = phi ptr [ %.019.lcssa29.i, %bb.f ], [ %.02024.i, %._crit_edge.i ]
  %.sroa.05.0.i = phi ptr [ %i.s, %bb.f ], [ %.02024.i, %._crit_edge.i ]
  %i.v = icmp ult ptr %i.u, %i.t                  ; 2 uses
  %spec.select.i = select i1 %i.v, ptr null, ptr %.sroa.05.0.i
  %spec.select21.i = select i1 %i.v, ptr %.019.lcssa28.i, ptr null
  br label %_ZNSt8_Rb_treeIPKvSt4pairIKS1_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt10_Select1stISA_ESt4lessIS1_ESaISA_EE24_M_get_insert_unique_posERS3_.exit

bb.h:                                             ; preds = %bb.a
  %i.w = load ptr, ptr %2, align 8                ; 8 uses
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.y = load ptr, ptr %i.x, align 8              ; 2 uses
  %i.z = icmp ult ptr %i.w, %i.y
  br i1 %i.z, label %bb.i, label %bb.o
end_hunk_3
