inline.NumInlined: 11461
inline.NumDeleted: 4051
begin_hunk_0_@_RNvMNtCsjHlmExTLNuX_14datafusion_sql5queryINtNtB4_7planner8SqlToRelNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion4expr20DeltaContextProviderE13pipe_operatorB19_:bb.a
bb.bo:                                            ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af)
  br label %bb.ap

.sink.split:                                      ; preds = %bb.z, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEECs14kWLkQVSKO_14deltalake_core.exit.thread.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !28309
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !28309
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !28309
  br label %bb.bp

bb.bp:                                            ; preds = %.sink.split, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtNtCs4lawaffTVVK_9sqlparser3ast5query23ExprWithAliasAndOrderByEECs14kWLkQVSKO_14deltalake_core.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  br label %bb.ap

bb.bq:                                            ; preds = %bb.ah
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac)
  br label %bb.ap

bb.br:                                            ; preds = %bb.ai
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa)
  br label %bb.ap

bb.bs:                                            ; preds = %bb.aj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y)
  br label %bb.ap

bb.bt:                                            ; preds = %bb.ak
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  br label %bb.ap

bb.bu:                                            ; preds = %bb.ap
  call fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs4lawaffTVVK_9sqlparser3ast5query12PipeOperatorECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(1280) %3)
  br label %bb.bn

.body168:                                         ; preds = %bb.cd, %bb.bv, %.body163
  %.pn150.pn = phi { ptr, i32 } [ %.pn150, %.body163 ], [ %i.el, %bb.bv ], [ %i.ey, %bb.cd ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs4lawaffTVVK_9sqlparser3ast5query12PipeOperatorECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(1280) %i.s) #42
          to label %.thread225 unwind label %bb.aq

bb.bv:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs14kWLkQVSKO_14deltalake_core.exit.i167, %bb.b
  %i.el = landingpad { ptr, i32 }
          cleanup
  br label %.body168

_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs6Po7BT7Nknu_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.q, ptr noundef nonnull align 8 dereferenceable(24) %i.p, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  invoke void @_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.l, i64 noundef 0, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %bb.bx unwind label %bb.bw

.body163:                                         ; preds = %bb.cb, %bb.bw, %bb.ca
  %.pn150 = phi { ptr, i32 } [ %i.ev, %bb.ca ], [ %i.em, %bb.bw ], [ %i.ew, %bb.cb ]
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.q) #42
          to label %.body168 unwind label %bb.aq

bb.bw:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs14kWLkQVSKO_14deltalake_core.exit.i, %bb.by, %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs6Po7BT7Nknu_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs14kWLkQVSKO_14deltalake_core.exit
  %i.em = landingpad { ptr, i32 }
          cleanup
  br label %.body163

bb.bx:                                            ; preds = %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs6Po7BT7Nknu_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs14kWLkQVSKO_14deltalake_core.exit
  %i.en = load i64, ptr %i.l, align 8, !range !64, !noundef !8
  %i.eo = trunc nuw i64 %i.en to i1
  %i.ep = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.eq = load i64, ptr %i.ep, align 8, !range !65, !noundef !8 ; 2 uses
  %i.er = getelementptr inbounds nuw i8, ptr %i.l, i64 16 ; 2 uses
  br i1 %i.eo, label %bb.by, label %bb.bz, !prof !3

bb.by:                                            ; preds = %bb.bx
  %i.es = load i64, ptr %i.er, align 8
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc7raw_vec12handle_error(i64 noundef %i.eq, i64 %i.es) #41
          to label %bb.cf unwind label %bb.bw

bb.bz:                                            ; preds = %bb.bx
  %i.et = load ptr, ptr %i.er, align 8, !nonnull !8, !noundef !8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  store i64 %i.eq, ptr %i.n, align 8
  %.sroa.4133.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store ptr %i.et, ptr %.sroa.4133.0..sroa_idx, align 8
  %.sroa.5134.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  store i64 0, ptr %.sroa.5134.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  store ptr %i.q, ptr %i.m, align 8
  %.sroa.4138.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store ptr @_RNvXsq_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core3fmt7Display3fmt, ptr %.sroa.4138.0..sroa_idx, align 8
  %i.eu = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  store ptr %i.n, ptr %i.eu, align 8
  %.sroa.4142.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  store ptr @_RNvXsq_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core3fmt7Display3fmt, ptr %.sroa.4142.0..sroa_idx, align 8
  invoke void @_RNvNvNtCs6Po7BT7Nknu_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.r, ptr noundef nonnull @52, ptr noundef nonnull %i.m)
          to label %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs6Po7BT7Nknu_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs14kWLkQVSKO_14deltalake_core.exit162 unwind label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  %i.ev = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.n) #42
          to label %.body163 unwind label %bb.aq

_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs6Po7BT7Nknu_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs14kWLkQVSKO_14deltalake_core.exit162: ; preds = %bb.bz
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.n)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs14kWLkQVSKO_14deltalake_core.exit.i unwind label %bb.cb

bb.cb:                                            ; preds = %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs6Po7BT7Nknu_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs14kWLkQVSKO_14deltalake_core.exit162
  %i.ew = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.n)
          to label %.body163 unwind label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  %i.ex = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #43
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs6Po7BT7Nknu_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs14kWLkQVSKO_14deltalake_core.exit162
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.n)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit unwind label %bb.bw

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs14kWLkQVSKO_14deltalake_core.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.q)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs14kWLkQVSKO_14deltalake_core.exit.i167 unwind label %bb.cd

bb.cd:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit
  %i.ey = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.q)
          to label %.body168 unwind label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  %i.ez = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #43
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs14kWLkQVSKO_14deltalake_core.exit.i167: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.q)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit171 unwind label %bb.bv

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit171: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs14kWLkQVSKO_14deltalake_core.exit.i167
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  %.sroa.246.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %.sroa.246.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.r, i64 24, i1 false)
  %i.fa = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 5, ptr %i.fa, align 8
  store i64 36, ptr %0, align 16
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs4lawaffTVVK_9sqlparser3ast5query12PipeOperatorECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(1280) %i.s)
          to label %.critedge unwind label %bb.ar

.critedge:                                        ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit171
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  call void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4plan11LogicalPlanECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 16 dereferenceable(320) %2)
  br label %bb.bn

bb.cf:                                            ; preds = %bb.by
  unreachable

.thread202:                                       ; preds = %bb.af, %.thread124.i, %bb.at, %bb.ba, %bb.an, %.thread218
  %.pn150.pn.pn207 = phi { ptr, i32 } [ %.pn83122128.i, %.thread124.i ], [ %lpad.thr_comm, %.thread218 ], [ %i.dq, %bb.at ], [ %i.ea, %bb.ba ], [ %i.dk, %bb.an ], [ %.pn.ph.i, %bb.af ] ; 2 uses
  %.sroa.049.1206 = phi i1 [ false, %.thread124.i ], [ %.sroa.049.2.ph, %.thread218 ], [ true, %bb.at ], [ true, %bb.ba ], [ false, %bb.an ], [ false, %bb.af ]
  %i.fb = load i64, ptr %3, align 8, !range !8129, !noundef !8 ; 2 uses
  %i.fc = add nsw i64 %i.fb, -15
  %i.fd = icmp samesign ugt i64 %i.fb, 14
  %i.fe = select i1 %i.fd, i64 %i.fc, i64 17
  switch i64 %i.fe, label %bb.cg [
    i64 0, label %bb.bm
    i64 1, label %bb.bm
    i64 2, label %bb.bm
    i64 3, label %bb.bm
    i64 4, label %bb.bm
    i64 7, label %bb.bm
    i64 8, label %bb.bm
    i64 11, label %bb.bm
    i64 12, label %bb.bm
    i64 13, label %bb.bm
    i64 17, label %bb.bm
  ]

bb.cg:                                            ; preds = %.thread202
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs4lawaffTVVK_9sqlparser3ast5query12PipeOperatorECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(1280) %3) #42
          to label %bb.bm unwind label %bb.aq

bb.ch:                                            ; preds = %.thread225, %bb.bm
  %.pn150.pn.pn.pn228 = phi { ptr, i32 } [ %.pn150.pn.pn.pn229, %.thread225 ], [ %.pn150.pn.pn207, %bb.bm ]
  resume { ptr, i32 } %.pn150.pn.pn.pn228

.thread225:                                       ; preds = %.body168, %bb.ar, %.thread230, %bb.bm
  %.pn150.pn.pn.pn229 = phi { ptr, i32 } [ %i.ek, %.thread230 ], [ %.pn150.pn.pn207, %bb.bm ], [ %lpad.thr_comm.split-lp, %bb.ar ], [ %.pn150.pn, %.body168 ]
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4plan11LogicalPlanECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 16 dereferenceable(320) %2) #42
          to label %bb.ch unwind label %bb.aq
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMNtCsjHlmExTLNuX_14datafusion_sql5queryINtNtB4_7planner8SqlToRelNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion4expr20DeltaContextProviderE13query_to_planB19_(ptr dead_on_unwind noalias noundef nonnull writable writeonly align 16 captures(none) dereferenceable(320) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %1, ptr noalias noundef nonnull align 8 captures(address) dead_on_return dereferenceable(1400) %2, ptr noalias noundef nonnull align 8 captures(address, read_provenance) dereferenceable(80) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [24 x i8], align 8                ; 6 uses
  %i.e = alloca [24 x i8], align 8                ; 6 uses
  %i.f = alloca [24 x i8], align 8                ; 6 uses
  %i.g = alloca [320 x i8], align 16              ; 4 uses
  %i.h = alloca [24 x i8], align 8                ; 4 uses
  %i.i = alloca [320 x i8], align 16              ; 4 uses
  %i.j = alloca [40 x i8], align 8                ; 8 uses
  %i.k = alloca [320 x i8], align 16              ; 4 uses
  %i.l = alloca [320 x i8], align 16              ; 4 uses
  %i.m = alloca [2696 x i8], align 8              ; 4 uses
  %i.n = alloca [320 x i8], align 16              ; 7 uses
  %.sroa.644.i320 = alloca [40 x i8], align 8     ; 6 uses
  %i.o = alloca [320 x i8], align 16              ; 11 uses
  %i.p = alloca [320 x i8], align 16              ; 4 uses
  %i.q = alloca [24 x i8], align 8                ; 6 uses
  %i.r = alloca [24 x i8], align 8                ; 9 uses
  %i.s = alloca [24 x i8], align 8                ; 4 uses
  %i.t = alloca [24 x i8], align 8                ; 6 uses
  %i.u = alloca [40 x i8], align 8                ; 8 uses
  %i.v = alloca [320 x i8], align 16              ; 8 uses
  %.sroa.621.i = alloca [40 x i8], align 8        ; 6 uses
  %i.w = alloca [320 x i8], align 16              ; 9 uses
  %i.x = alloca [40 x i8], align 8                ; 8 uses
  %i.y = alloca [16 x i8], align 8                ; 17 uses
  %i.z = alloca [2696 x i8], align 8              ; 4 uses
  %i.aa = alloca [320 x i8], align 16             ; 7 uses
  %.sroa.6.i = alloca [40 x i8], align 8          ; 6 uses
  %i.ab = alloca [320 x i8], align 16             ; 13 uses
  %i.ac = alloca [1400 x i8], align 8             ; 4 uses
  %i.ad = alloca [32 x i8], align 8               ; 7 uses
  %i.ae = alloca [24 x i8], align 8               ; 10 uses
  %i.af = alloca [24 x i8], align 8               ; 10 uses
  %i.ag = alloca [24 x i8], align 8               ; 4 uses
  %i.ah = alloca [320 x i8], align 16             ; 4 uses
  %i.ai = alloca [320 x i8], align 16             ; 7 uses
  %.sroa.63.i = alloca [40 x i8], align 8         ; 6 uses
  %i.aj = alloca [1280 x i8], align 8             ; 5 uses
  %i.ak = alloca [32 x i8], align 8               ; 10 uses
  %i.al = alloca [336 x i8], align 16             ; 6 uses
  %i.am = alloca [24 x i8], align 8               ; 7 uses
  %i.an = alloca [56 x i8], align 8               ; 7 uses
  %.sroa.67.i = alloca [40 x i8], align 8         ; 6 uses
  %i.ao = alloca [56 x i8], align 8               ; 8 uses
  %.sroa.04.sroa.0.i = alloca [80 x i8], align 8  ; 5 uses
  %i.ap = alloca [24 x i8], align 8               ; 5 uses
  %.sroa.5.i = alloca [16 x i8], align 8          ; 4 uses
  %i.aq = alloca [24 x i8], align 8               ; 8 uses
  %i.ar = alloca [24 x i8], align 8               ; 6 uses
  %i.as = alloca [24 x i8], align 8               ; 4 uses
  %i.at = alloca [24 x i8], align 8               ; 4 uses
  %i.au = alloca [320 x i8], align 16             ; 9 uses
  %i.av = alloca [88 x i8], align 8               ; 4 uses
  %i.aw = alloca [320 x i8], align 16             ; 9 uses
  %.sroa.615.i.sroa.7 = alloca [24 x i8], align 8 ; 6 uses
  %i.ax = alloca [320 x i8], align 16             ; 10 uses
  %i.ay = alloca [1400 x i8], align 8             ; 4 uses
  %i.az = alloca [320 x i8], align 16             ; 9 uses
  %.sroa.69.i.sroa.7 = alloca [24 x i8], align 8  ; 6 uses
  %i.ba = alloca [1400 x i8], align 8             ; 18 uses
  %i.bb = alloca [320 x i8], align 16             ; 21 uses
  %.sroa.64.i.sroa.7 = alloca [24 x i8], align 8  ; 6 uses
  %i.bc = alloca [32 x i8], align 8               ; 7 uses
  %i.bd = alloca [24 x i8], align 8               ; 10 uses
  %i.be = alloca [16 x i8], align 8               ; 5 uses
  %i.bf = alloca [24 x i8], align 8               ; 4 uses
  %i.bg = alloca [24 x i8], align 8               ; 8 uses
  %i.bh = alloca [24 x i8], align 8               ; 5 uses
  %i.bi = alloca [64 x i8], align 8               ; 6 uses
  %i.bj = alloca [24 x i8], align 8               ; 16 uses
  %i.bk = alloca [256 x i8], align 8              ; 14 uses
  %.sroa.8401 = alloca [248 x i8], align 8        ; 7 uses
  %i.bl = alloca [32 x i8], align 8               ; 10 uses
  %i.bm = alloca [24 x i8], align 8               ; 6 uses
  %i.bn = alloca [48 x i8], align 8               ; 4 uses
  %i.bo = alloca [48 x i8], align 8               ; 4 uses
  %i.bp = alloca [8 x i8], align 8                ; 4 uses
  %i.bq = alloca [688 x i8], align 8              ; 4 uses
  %i.br = alloca [24 x i8], align 8               ; 6 uses
  %i.bs = alloca [320 x i8], align 16             ; 7 uses
  %i.bt = alloca [688 x i8], align 8              ; 4 uses
  %i.bu = alloca [320 x i8], align 16             ; 4 uses
  %i.bv = alloca [320 x i8], align 16             ; 4 uses
  %i.bw = alloca [320 x i8], align 16             ; 7 uses
  %.sroa.666 = alloca [40 x i8], align 8          ; 6 uses
  %i.bx = alloca [24 x i8], align 8               ; 2 uses
  %i.by = alloca [24 x i8], align 8               ; 5 uses
  %i.bz = alloca [40 x i8], align 8               ; 7 uses
  %.sroa.656 = alloca [24 x i8], align 8          ; 6 uses
  %i.ca = alloca [48 x i8], align 8               ; 4 uses
  %i.cb = alloca [40 x i8], align 8               ; 7 uses
  %.sroa.646 = alloca [24 x i8], align 8          ; 6 uses
  %i.cc = alloca [2696 x i8], align 8             ; 4 uses
  %i.cd = alloca [8 x i8], align 8                ; 5 uses
  %i.ce = alloca [320 x i8], align 16             ; 7 uses
  %.sroa.639 = alloca [40 x i8], align 8          ; 6 uses
  %i.cf = alloca [320 x i8], align 16             ; 10 uses
  %i.cg = alloca [2696 x i8], align 8             ; 6 uses
  %i.ch = alloca [32 x i8], align 8               ; 5 uses
  %i.ci = alloca [320 x i8], align 16             ; 7 uses
  %i.cj = alloca [688 x i8], align 8              ; 5 uses
  %i.ck = alloca [320 x i8], align 16             ; 7 uses
  %i.cl = alloca [320 x i8], align 16             ; 7 uses
  %.sroa.633 = alloca [40 x i8], align 8          ; 6 uses
  %i.cm = alloca [48 x i8], align 8               ; 7 uses
  %i.cn = alloca [2432 x i8], align 8             ; 5 uses
  %i.co = alloca [320 x i8], align 16             ; 7 uses
  %.sroa.6 = alloca [40 x i8], align 8            ; 6 uses
  %i.cp = alloca [32 x i8], align 8               ; 10 uses
  %i.cq = alloca [320 x i8], align 16             ; 21 uses
  %.sroa.8 = alloca [40 x i8], align 8            ; 8 uses
  %i.cr = alloca [2696 x i8], align 8             ; 13 uses
  %.sroa.10365 = alloca [24 x i8], align 8        ; 8 uses
  %i.cs = alloca [120 x i8], align 8              ; 8 uses
  %i.ct = alloca [32 x i8], align 8               ; 7 uses
  %i.cu = alloca [24 x i8], align 8               ; 10 uses
  %i.cv = alloca [24 x i8], align 8               ; 10 uses
  %i.cw = alloca [24 x i8], align 8               ; 2 uses
  %i.cx = alloca [24 x i8], align 8               ; 11 uses
  %i.cy = alloca [336 x i8], align 8              ; 11 uses
  %i.cz = alloca [688 x i8], align 8              ; 14 uses
  %i.da = alloca [48 x i8], align 8               ; 13 uses
  %i.db = alloca [120 x i8], align 8              ; 13 uses
  %i.dc = alloca [80 x i8], align 8               ; 25 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dc)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !28325)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !28328)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bp), !noalias !28330
  %i.dd = load ptr, ptr %3, align 8, !alias.scope !28328, !noalias !28325, !nonnull !8, !noundef !8 ; 4 uses
  %i.de = atomicrmw add ptr %i.dd, i64 1 monotonic, align 8, !noalias !28330
  %i.df = icmp slt i64 %i.de, 0
  br i1 %i.df, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store ptr %i.dd, ptr %i.bp, align 8, !noalias !28330
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bo)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bn), !noalias !28330
  %i.dg = getelementptr inbounds nuw i8, ptr %3, i64 8
  invoke void @_RNvXNtCs3gpiEk3WpjL_9hashbrown3mapINtB2_7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtBO_4sync3ArcNtNtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4plan11LogicalPlanENtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.bn, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.dg)
          to label %bb.f unwind label %bb.d, !noalias !28325

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.trap()
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.dh = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.di = atomicrmw sub ptr %i.dd, i64 1 release, align 8, !noalias !28331
  %i.dj = icmp eq i64 %i.di, 1
  br i1 %i.dj, label %bb.e, label %bb.ot

bb.e:                                             ; preds = %bb.d
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcINtNtB7_3vec3VecIBx_NtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEEE9drop_slowCs2xb0BKvnu80_21datafusion_datasource(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.bp) #45
          to label %bb.ot unwind label %bb.o, !noalias !28325

bb.f:                                             ; preds = %bb.b
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.bo, ptr noundef nonnull align 8 dereferenceable(48) %i.bn, i64 48, i1 false), !noalias !28330
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bn), !noalias !28330
  %i.dk = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.dl = load ptr, ptr %i.dk, align 8, !alias.scope !28328, !noalias !28325, !noundef !8 ; 3 uses
  %.not.i = icmp eq ptr %i.dl, null
  br i1 %.not.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.dm = atomicrmw add ptr %i.dl, i64 1 monotonic, align 8, !noalias !28325
  %i.dn = icmp slt i64 %i.dm, 0
  br i1 %i.dn, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.do = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.dp = load ptr, ptr %i.do, align 8, !alias.scope !28328, !noalias !28325, !noundef !8 ; 3 uses
  %.not8.i = icmp eq ptr %i.dp, null
  br i1 %.not8.i, label %bb.k, label %bb.j

bb.i:                                             ; preds = %bb.g
  tail call void @llvm.trap()
  unreachable

bb.j:                                             ; preds = %bb.h
  %i.dq = atomicrmw add ptr %i.dp, i64 1 monotonic, align 8, !noalias !28325
  %i.dr = icmp slt i64 %i.dq, 0
  br i1 %i.dr, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.h
  %i.ds = getelementptr inbounds nuw i8, ptr %3, i64 72
  %i.dt = load ptr, ptr %i.ds, align 8, !alias.scope !28328, !noalias !28325, !noundef !8 ; 3 uses
  %.not9.i = icmp eq ptr %i.dt, null
  br i1 %.not9.i, label %bb.q, label %bb.m

bb.l:                                             ; preds = %bb.j
  tail call void @llvm.trap()
  unreachable

bb.m:                                             ; preds = %bb.k
  %i.du = atomicrmw add ptr %i.dt, i64 1 monotonic, align 8, !noalias !28325
end_hunk_0
begin_hunk_1_@_RNvMNtCsjHlmExTLNuX_14datafusion_sql8set_exprINtNtB4_7planner8SqlToRelNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion4expr20DeltaContextProviderE21set_operation_to_planB1c_:bb.a
  %i.bv = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.bw = load i64, ptr %i.bv, align 8, !range !65, !noundef !8 ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.bu, label %bb.ad, label %bb.ae, !prof !3

bb.ad:                                            ; preds = %bb.ac
  %i.by = load i64, ptr %i.bx, align 8
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc7raw_vec12handle_error(i64 noundef %i.bw, i64 %i.by) #41
          to label %bb.an unwind label %bb.ab

bb.ae:                                            ; preds = %bb.ac
  %i.bz = load ptr, ptr %i.bx, align 8, !nonnull !8, !noundef !8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store i64 %i.bw, ptr %i.c, align 8
  %.sroa.4112.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.bz, ptr %.sroa.4112.0..sroa_idx, align 8
  %.sroa.5113.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 0, ptr %.sroa.5113.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.f, ptr %i.b, align 8
  %.sroa.4117.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @_RNvXsq_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core3fmt7Display3fmt, ptr %.sroa.4117.0..sroa_idx, align 8
  %i.ca = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.c, ptr %i.ca, align 8
  %.sroa.4121.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store ptr @_RNvXsq_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core3fmt7Display3fmt, ptr %.sroa.4121.0..sroa_idx, align 8
  invoke void @_RNvNvNtCs6Po7BT7Nknu_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.g, ptr noundef nonnull @52, ptr noundef nonnull %i.b)
          to label %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs6Po7BT7Nknu_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs14kWLkQVSKO_14deltalake_core.exit136 unwind label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.cb = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c) #42
          to label %.body unwind label %bb.am

_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs6Po7BT7Nknu_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs14kWLkQVSKO_14deltalake_core.exit136: ; preds = %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs14kWLkQVSKO_14deltalake_core.exit.i unwind label %bb.ag

bb.ag:                                            ; preds = %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs6Po7BT7Nknu_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs14kWLkQVSKO_14deltalake_core.exit136
  %i.cc = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %.body unwind label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.cd = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #43
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs6Po7BT7Nknu_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs14kWLkQVSKO_14deltalake_core.exit136
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit unwind label %bb.ab

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs14kWLkQVSKO_14deltalake_core.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs14kWLkQVSKO_14deltalake_core.exit.i138 unwind label %bb.ai

bb.ai:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit
  %i.ce = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %.thread unwind label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.cf = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #43
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs14kWLkQVSKO_14deltalake_core.exit.i138: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit141 unwind label %bb.j

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit141: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs14kWLkQVSKO_14deltalake_core.exit.i138
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %.sroa.251.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %.sroa.251.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.g, i64 24, i1 false)
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 5, ptr %i.cg, align 8
  store i64 36, ptr %0, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4plan11LogicalPlanECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 16 dereferenceable(320) %3)
          to label %bb.al unwind label %.thread16

bb.ak:                                            ; preds = %.thread
  br i1 %.sroa.054.06, label %bb.ap, label %bb.ao

.thread16:                                        ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit141
  %i.ch = landingpad { ptr, i32 }
          cleanup
  br label %bb.ap

bb.al:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit141
  call void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4plan11LogicalPlanECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 16 dereferenceable(320) %2)
  br label %bb.n

bb.am:                                            ; preds = %bb.ap, %.thread, %bb.af, %.body
  %i.ci = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #43
  unreachable

bb.an:                                            ; preds = %bb.ad
  unreachable

.thread:                                          ; preds = %bb.ai, %.body, %bb.j
  %.pn1307 = phi { ptr, i32 } [ %.pn, %.body ], [ %lpad.thr_comm.split-lp, %bb.j ], [ %i.ce, %bb.ai ] ; 2 uses
  %.sroa.054.06 = phi i1 [ true, %.body ], [ %.sroa.054.1.ph, %bb.j ], [ true, %bb.ai ]
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4plan11LogicalPlanECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 16 dereferenceable(320) %3) #42
          to label %bb.ak unwind label %bb.am

bb.ao:                                            ; preds = %bb.ap, %bb.ak
  %.pn130.pn19 = phi { ptr, i32 } [ %.pn130.pn20, %bb.ap ], [ %.pn1307, %bb.ak ]
  resume { ptr, i32 } %.pn130.pn19

bb.ap:                                            ; preds = %.thread16, %bb.ak
  %.pn130.pn20 = phi { ptr, i32 } [ %i.ch, %.thread16 ], [ %.pn1307, %bb.ak ]
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4plan11LogicalPlanECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 16 dereferenceable(320) %2) #42
          to label %bb.ao unwind label %bb.am
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMNtNtCs14kWLkQVSKO_14deltalake_core10test_utils9factoriesNtB2_9FileStats3new(ptr dead_on_unwind noalias noundef writable writeonly sret([152 x i8]) align 8 captures(none) dereferenceable(152) %0, i64 noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 7 uses
  %i.b = alloca [48 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.c = tail call { i64, i64 } @_RINvMs2_NtNtCs2pqxYH9ZEk8_3std6thread5localINtB6_8LocalKeyINtNtCsbvkFyIu7lgC_4core4cell4CellTyyEEE4withNCNvMNtNtBa_4hash6randomNtB1I_11RandomState3new0B21_ECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) @308) ; 2 uses
  %i.d = extractvalue { i64, i64 } %i.c, 0
  %i.e = extractvalue { i64, i64 } %i.c, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.b, ptr noundef nonnull align 8 dereferenceable(32) @305, i64 32, i1 false)
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store i64 %i.d, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  store i64 %i.e, ptr %.sroa.5.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.f = invoke { i64, i64 } @_RINvMs2_NtNtCs2pqxYH9ZEk8_3std6thread5localINtB6_8LocalKeyINtNtCsbvkFyIu7lgC_4core4cell4CellTyyEEE4withNCNvMNtNtBa_4hash6randomNtB1I_11RandomState3new0B21_ECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) @308)
          to label %bb.c unwind label %bb.b       ; 2 uses

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCseqDwI8vvjGQ_10serde_json5value5ValueEECs14kWLkQVSKO_14deltalake_core.exit12: ; preds = %bb.d, %bb.b
  %.pn = phi { ptr, i32 } [ %i.g, %bb.b ], [ %i.k, %bb.d ]
  invoke void @_RNvXsg_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCseqDwI8vvjGQ_10serde_json5value5ValueEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.b)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCseqDwI8vvjGQ_10serde_json5value5ValueEECs14kWLkQVSKO_14deltalake_core.exit unwind label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.g = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCseqDwI8vvjGQ_10serde_json5value5ValueEECs14kWLkQVSKO_14deltalake_core.exit12

bb.c:                                             ; preds = %bb.a
  %i.h = extractvalue { i64, i64 } %i.f, 0
  %i.i = extractvalue { i64, i64 } %i.f, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) @305, i64 32, i1 false)
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store i64 %i.h, ptr %.sroa.42.0..sroa_idx, align 8
  %.sroa.53.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store i64 %i.i, ptr %.sroa.53.0..sroa_idx, align 8
  %i.j = invoke { i64, i64 } @_RINvMs2_NtNtCs2pqxYH9ZEk8_3std6thread5localINtB6_8LocalKeyINtNtCsbvkFyIu7lgC_4core4cell4CellTyyEEE4withNCNvMNtNtBa_4hash6randomNtB1I_11RandomState3new0B21_ECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) @308)
          to label %bb.e unwind label %bb.d       ; 2 uses

bb.d:                                             ; preds = %bb.c
  %i.k = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXsg_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCseqDwI8vvjGQ_10serde_json5value5ValueEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.a)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCseqDwI8vvjGQ_10serde_json5value5ValueEECs14kWLkQVSKO_14deltalake_core.exit12 unwind label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.l = extractvalue { i64, i64 } %i.j, 0
  %i.m = extractvalue { i64, i64 } %i.j, 1
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 144
  store i64 %1, ptr %i.n, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %i.b, i64 48, i1 false)
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.o, ptr noundef nonnull align 8 dereferenceable(48) %i.a, i64 48, i1 false)
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 96
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.p, ptr noundef nonnull align 8 dereferenceable(32) @305, i64 32, i1 false)
  %.sroa.48.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 128
  store i64 %i.l, ptr %.sroa.48.0..sroa_idx, align 8
  %.sroa.59.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 136
  store i64 %i.m, ptr %.sroa.59.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void

bb.f:                                             ; preds = %bb.d, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCseqDwI8vvjGQ_10serde_json5value5ValueEECs14kWLkQVSKO_14deltalake_core.exit12
  %i.q = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #43
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCseqDwI8vvjGQ_10serde_json5value5ValueEECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCseqDwI8vvjGQ_10serde_json5value5ValueEECs14kWLkQVSKO_14deltalake_core.exit12
  resume { ptr, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMNtNtCsjHlmExTLNuX_14datafusion_sql4expr10identifierINtNtB6_7planner8SqlToRelNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion4expr20DeltaContextProviderE22sql_identifier_to_exprB1m_(ptr dead_on_unwind noalias noundef nonnull writable writeonly align 16 captures(none) dereferenceable(112) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %1, ptr noalias noundef nonnull align 8 captures(address) dead_on_return dereferenceable(64) %2, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %3, ptr captures(address, read_provenance) %.56.val) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [32 x i8], align 8                ; 7 uses
  %i.c = alloca [24 x i8], align 8                ; 10 uses
  %i.d = alloca [16 x i8], align 8                ; 5 uses
  %i.e = alloca [24 x i8], align 8                ; 8 uses
  %i.f = alloca [24 x i8], align 8                ; 5 uses
  %i.g = alloca [24 x i8], align 8                ; 5 uses
  %i.h = alloca [24 x i8], align 8                ; 6 uses
  %i.i = alloca [8 x i8], align 8                 ; 8 uses
  %i.j = alloca [56 x i8], align 8                ; 8 uses
  %i.k = alloca [4 x i8], align 4                 ; 4 uses
  %i.l = alloca [32 x i8], align 8                ; 5 uses
  %i.m = alloca [24 x i8], align 8                ; 4 uses
  %i.n = alloca [104 x i8], align 8               ; 6 uses
  %i.o = alloca [104 x i8], align 8               ; 4 uses
  %i.p = alloca [8 x i8], align 8                 ; 4 uses
  %i.q = alloca [40 x i8], align 8                ; 12 uses
  %i.r = alloca [32 x i8], align 8                ; 5 uses
  %i.s = alloca [24 x i8], align 8                ; 4 uses
  %i.t = alloca [104 x i8], align 8               ; 6 uses
  %i.u = alloca [40 x i8], align 8                ; 11 uses
  %i.v = alloca [64 x i8], align 8                ; 4 uses
  %i.w = alloca [24 x i8], align 8                ; 12 uses
  %i.x = alloca [24 x i8], align 8                ; 12 uses
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.z = load i64, ptr %i.y, align 8, !noundef !8 ; 4 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.ab = load i64, ptr %i.aa, align 8, !noundef !8 ; 4 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.ad = load i64, ptr %i.ac, align 8, !noundef !8 ; 4 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.af = load i64, ptr %i.ae, align 8, !noundef !8 ; 4 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ah = load ptr, ptr %i.ag, align 8, !nonnull !8, !noundef !8
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.aj = load i64, ptr %i.ai, align 8, !noundef !8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  store i32 64, ptr %i.k, align 4
  %.sink18.i.sroa.gep = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %.sink18.i.sroa.gep2 = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 2 uses
  %.sink15.i.sroa.gep = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  %.sink15.i.sroa.gep3 = getelementptr inbounds nuw i8, ptr %i.j, i64 16 ; 2 uses
  %i.ak = invoke noundef zeroext i1 @_RNvMNtCsbvkFyIu7lgC_4core5sliceSh11starts_withCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.ah, i64 noundef %i.aj, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.k, i64 noundef 1)
          to label %bb.b unwind label %bb.cc

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  br i1 %i.ak, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w)
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.v, ptr noundef nonnull align 8 dereferenceable(64) %2, i64 64, i1 false)
  call void @_RNvMs5_NtCsjHlmExTLNuX_14datafusion_sql7plannerNtB5_15IdentNormalizer9normalize(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.w, ptr noalias noundef nonnull readonly captures(address, read_provenance) dereferenceable(1) %i.al, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(64) %i.v)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u)
  %i.am = getelementptr inbounds nuw i8, ptr %i.w, i64 8 ; 2 uses
  %i.an = load ptr, ptr %i.am, align 8, !nonnull !8, !noundef !8
  %i.ao = getelementptr inbounds nuw i8, ptr %i.w, i64 16 ; 2 uses
  %i.ap = load i64, ptr %i.ao, align 8, !noundef !8
  invoke void @_RNvMNtCsjhHCjzi9uUI_17datafusion_common8dfschemaNtB2_8DFSchema37qualified_field_with_unqualified_name(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.u, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %3, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.an, i64 noundef %i.ap)
          to label %bb.f unwind label %.thread28

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x)
  call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #46
  %i.aq = call noundef align 8 dereferenceable_or_null(24) ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef range(i64 0, 7409) 24, i64 noundef range(i64 8, 17) 8) #46 ; 4 uses
  %i.ar = icmp eq ptr %i.aq, null
  br i1 %i.ar, label %bb.e, label %_RNvNtCs6Po7BT7Nknu_5alloc5boxed14box_new_uninit.exit, !prof !308

bb.e:                                             ; preds = %bb.d
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 24) #41
          to label %.noexc unwind label %bb.cc

.noexc:                                           ; preds = %bb.e
  unreachable

.thread28:                                        ; preds = %bb.al, %bb.as, %bb.ai, %bb.g, %bb.c
  %lpad.thr_comm26 = landingpad { ptr, i32 }
          cleanup
  br label %.thread21

bb.f:                                             ; preds = %bb.c
  %i.as = load i64, ptr %i.u, align 8, !range !43, !noundef !8
  %.not = icmp eq i64 %i.as, 20
  br i1 %.not, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.u)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultTINtNtB4_6option6OptionRNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceERINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEENtNtB1u_5error15DataFusionErrorEECs14kWLkQVSKO_14deltalake_core.exit unwind label %.thread28

bb.h:                                             ; preds = %bb.f
  %i.at = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.au = load ptr, ptr %i.at, align 8, !align !216, !noundef !8 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t)
  call void @llvm.experimental.noalias.scope.decl(metadata !29185)
  %.not.i = icmp eq ptr %i.au, null
  br i1 %.not.i, label %bb.z, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.av = load i64, ptr %i.au, align 8, !range !3023, !alias.scope !29185, !noundef !8 ; 3 uses
  %switch.idx.mult.i.i = shl nuw nsw i64 %i.av, 4
  %i.aw = getelementptr inbounds nuw i8, ptr %i.au, i64 %switch.idx.mult.i.i ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  %i.ay = load i64, ptr %i.ax, align 8, !alias.scope !29185, !noundef !8
  %i.az = icmp eq i64 %i.ay, 7
  br i1 %i.az, label %_RNCNvMNtNtCsjHlmExTLNuX_14datafusion_sql4expr10identifierINtNtB8_7planner8SqlToRelNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion4expr20DeltaContextProviderE22sql_identifier_to_exprs0_0B1o_.exit.i, label %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionRNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceE6filterNCNvMNtNtCsjHlmExTLNuX_14datafusion_sql4expr10identifierINtNtB28_7planner8SqlToRelNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion4expr20DeltaContextProviderE22sql_identifier_to_exprs0_0EB3p_.exit

_RNCNvMNtNtCsjHlmExTLNuX_14datafusion_sql4expr10identifierINtNtB8_7planner8SqlToRelNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion4expr20DeltaContextProviderE22sql_identifier_to_exprs0_0B1o_.exit.i: ; preds = %bb.i
  %i.ba = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  %i.bb = load ptr, ptr %i.ba, align 8, !alias.scope !29185, !nonnull !8, !noundef !8
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 16 ; 2 uses
  %i.bd = load i32, ptr %i.bc, align 1
  %i.be = xor i32 %i.bd, 1650553919
  %i.bf = getelementptr i8, ptr %i.bc, i64 3
  %i.bg = load i32, ptr %i.bf, align 1
  %i.bh = xor i32 %i.bg, 1063611490
  %i.bi = or i32 %i.be, %i.bh
  %i.bj = icmp ne i32 %i.bi, 0
  %i.bk = zext i1 %i.bj to i32
  %bcmp.i.fr.i = freeze i32 %i.bk
  %.not6.i = icmp eq i32 %bcmp.i.fr.i, 0
  br i1 %.not6.i, label %bb.z, label %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionRNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceE6filterNCNvMNtNtCsjHlmExTLNuX_14datafusion_sql4expr10identifierINtNtB28_7planner8SqlToRelNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion4expr20DeltaContextProviderE22sql_identifier_to_exprs0_0EB3p_.exit

bb.j:                                             ; preds = %bb.ag, %bb.l
  %.pn = phi { ptr, i32 } [ %i.cx, %bb.ag ], [ %i.bn, %bb.l ] ; 2 uses
  %i.bl = load i64, ptr %i.u, align 8, !range !43, !alias.scope !29188, !noundef !8
  %i.bm = icmp eq i64 %i.bl, 20
  br i1 %i.bm, label %.thread, label %bb.k

bb.k:                                             ; preds = %bb.j
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.u)
          to label %.thread unwind label %bb.ah

bb.l:                                             ; preds = %bb.z
  %i.bn = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionRNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceE6filterNCNvMNtNtCsjHlmExTLNuX_14datafusion_sql4expr10identifierINtNtB28_7planner8SqlToRelNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion4expr20DeltaContextProviderE22sql_identifier_to_exprs0_0EB3p_.exit: ; preds = %_RNCNvMNtNtCsjHlmExTLNuX_14datafusion_sql4expr10identifierINtNtB8_7planner8SqlToRelNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion4expr20DeltaContextProviderE22sql_identifier_to_exprs0_0B1o_.exit.i, %bb.i
  call void @llvm.experimental.noalias.scope.decl(metadata !29191)
  %i.bo = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  %i.bp = load ptr, ptr %i.bo, align 8, !alias.scope !29191, !noalias !29194, !nonnull !8, !noundef !8 ; 4 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.au, i64 16
  %i.br = load i64, ptr %i.bq, align 8, !alias.scope !29191, !noalias !29194, !noundef !8 ; 3 uses
  %i.bs = atomicrmw add ptr %i.bp, i64 1 monotonic, align 8, !noalias !29196
  %i.bt = icmp slt i64 %i.bs, 0                   ; 3 uses
  switch i64 %i.av, label %default.unreachable [
    i64 0, label %bb.m
    i64 1, label %bb.n
    i64 2, label %bb.o
  ]

default.unreachable:                              ; preds = %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionRNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceE6filterNCNvMNtNtCsjHlmExTLNuX_14datafusion_sql4expr10identifierINtNtB28_7planner8SqlToRelNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion4expr20DeltaContextProviderE22sql_identifier_to_exprs0_0EB3p_.exit
  unreachable

bb.m:                                             ; preds = %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionRNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceE6filterNCNvMNtNtCsjHlmExTLNuX_14datafusion_sql4expr10identifierINtNtB28_7planner8SqlToRelNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion4expr20DeltaContextProviderE22sql_identifier_to_exprs0_0EB3p_.exit
  br i1 %i.bt, label %bb.p, label %bb.aa

bb.n:                                             ; preds = %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionRNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceE6filterNCNvMNtNtCsjHlmExTLNuX_14datafusion_sql4expr10identifierINtNtB28_7planner8SqlToRelNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion4expr20DeltaContextProviderE22sql_identifier_to_exprs0_0EB3p_.exit
  br i1 %i.bt, label %bb.r, label %bb.q

bb.o:                                             ; preds = %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionRNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceE6filterNCNvMNtNtCsjHlmExTLNuX_14datafusion_sql4expr10identifierINtNtB28_7planner8SqlToRelNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion4expr20DeltaContextProviderE22sql_identifier_to_exprs0_0EB3p_.exit
  br i1 %i.bt, label %bb.u, label %bb.t

bb.p:                                             ; preds = %bb.m
  call void @llvm.trap()
  unreachable

.sink.split.i:                                    ; preds = %bb.x, %bb.q
  %.sink18.i.sroa.phi = phi ptr [ %.sink18.i.sroa.gep, %bb.x ], [ %.sink18.i.sroa.gep2, %bb.q ]
  %.sink16.i = phi ptr [ %i.cb, %bb.x ], [ %i.bp, %bb.q ]
  %.sink15.i.sroa.phi = phi ptr [ %.sink15.i.sroa.gep, %bb.x ], [ %.sink15.i.sroa.gep3, %bb.q ]
  %.sink13.i = phi i64 [ %i.cd, %bb.x ], [ %i.br, %bb.q ]
  %.sink12.ph.i = phi i64 [ 40, %bb.x ], [ 24, %bb.q ]
  %.sink10.ph.i = phi ptr [ %i.ch, %bb.x ], [ %i.bv, %bb.q ]
  %.sink9.ph.i = phi i64 [ 48, %bb.x ], [ 32, %bb.q ]
  %.sink7.ph.i = phi i64 [ %i.cj, %bb.x ], [ %i.bx, %bb.q ]
  store ptr %.sink16.i, ptr %.sink18.i.sroa.phi, align 8
  store i64 %.sink13.i, ptr %.sink15.i.sroa.phi, align 8
  br label %bb.aa

bb.q:                                             ; preds = %bb.n
  %i.bu = getelementptr inbounds nuw i8, ptr %i.au, i64 24
  %i.bv = load ptr, ptr %i.bu, align 8, !alias.scope !29191, !noalias !29194, !nonnull !8, !noundef !8 ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.au, i64 32
  %i.bx = load i64, ptr %i.bw, align 8, !alias.scope !29191, !noalias !29194, !noundef !8
  %i.by = atomicrmw add ptr %i.bv, i64 1 monotonic, align 8, !noalias !29196
  %i.bz = icmp slt i64 %i.by, 0
  br i1 %i.bz, label %bb.s, label %.sink.split.i

bb.r:                                             ; preds = %bb.n
  call void @llvm.trap()
  unreachable

bb.s:                                             ; preds = %bb.q
  call void @llvm.trap()
  unreachable
end_hunk_1
begin_hunk_2_@_RNvMNtNtCsjHlmExTLNuX_14datafusion_sql4expr10identifierINtNtB6_7planner8SqlToRelNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion4expr20DeltaContextProviderE22sql_identifier_to_exprB1m_:bb.a
  %.pre.i = load ptr, ptr %i.i, align 8, !alias.scope !29225, !noalias !29211 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !29214
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !29211
  call void @llvm.experimental.noalias.scope.decl(metadata !29225)
  %i.en = icmp eq ptr %.pre.i, null
  br i1 %i.en, label %bb.bl, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.eo = atomicrmw sub ptr %.pre.i, i64 1 release, align 8, !noalias !29228
  %i.ep = icmp eq i64 %i.eo, 1
  br i1 %i.ep, label %bb.bj, label %bb.bl

bb.bj:                                            ; preds = %bb.bi
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.i) #45
          to label %bb.bl unwind label %bb.ba

bb.bk:                                            ; preds = %bb.bg
  %i.eq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #43
  unreachable

bb.bl:                                            ; preds = %bb.bb, %bb.bh, %bb.bi, %bb.bj
  %.sroa.0.0.i.ph = phi ptr [ %i.eh, %bb.bj ], [ %i.eh, %bb.bi ], [ %i.eh, %bb.bh ], [ %i.ee, %bb.bb ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.4.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.x, i64 24, i1 false)
  store i64 6, ptr %0, align 16
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %.sroa.0.0.i.ph, ptr %.sroa.5.0..sroa_idx, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x)
  br label %bb.cb

bb.bm:                                            ; preds = %.noexc.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !29214
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !29211
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !29233
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !29233
  store ptr %i.x, ptr %i.d, align 8, !noalias !29233
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr @_RNvXsq_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmtCs14kWLkQVSKO_14deltalake_core, ptr %.sroa.42.0..sroa_idx.i, align 8, !noalias !29233
  invoke void @_RNvNvNtCs6Po7BT7Nknu_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.e, ptr noundef nonnull @372, ptr noundef nonnull %i.d)
          to label %.noexc82 unwind label %bb.ba

.noexc82:                                         ; preds = %bb.bm
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !29233
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !29233
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !29233
  invoke void @_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef 0, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %bb.bo unwind label %bb.bn, !noalias !29237

.body.i:                                          ; preds = %bb.bs, %bb.br, %bb.bn
  %.pn.i = phi { ptr, i32 } [ %i.fa, %bb.br ], [ %i.er, %bb.bn ], [ %i.fb, %bb.bs ]
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e) #42
          to label %.body80 unwind label %bb.bw, !noalias !29237

bb.bn:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs14kWLkQVSKO_14deltalake_core.exit.i.i, %bb.bp, %.noexc82
  %i.er = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

bb.bo:                                            ; preds = %.noexc82
  %i.es = load i64, ptr %i.a, align 8, !range !64, !noalias !29233, !noundef !8
  %i.et = trunc nuw i64 %i.es to i1
  %i.eu = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.ev = load i64, ptr %i.eu, align 8, !range !65, !noalias !29233, !noundef !8 ; 2 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.et, label %bb.bp, label %bb.bq, !prof !3

bb.bp:                                            ; preds = %bb.bo
  %i.ex = load i64, ptr %i.ew, align 8, !noalias !29233
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc7raw_vec12handle_error(i64 noundef %i.ev, i64 %i.ex) #41
          to label %bb.bx unwind label %bb.bn, !noalias !29237

bb.bq:                                            ; preds = %bb.bo
  %i.ey = load ptr, ptr %i.ew, align 8, !noalias !29233, !nonnull !8, !noundef !8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !29233
  store i64 %i.ev, ptr %i.c, align 8, !noalias !29233
  %.sroa.45.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.ey, ptr %.sroa.45.0..sroa_idx.i, align 8, !noalias !29233
  %.sroa.56.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 0, ptr %.sroa.56.0..sroa_idx.i, align 8, !noalias !29233
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !29233
  store ptr %i.e, ptr %i.b, align 8, !noalias !29233
  %.sroa.410.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @_RNvXsq_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core3fmt7Display3fmt, ptr %.sroa.410.0..sroa_idx.i, align 8, !noalias !29233
  %i.ez = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.c, ptr %i.ez, align 8, !noalias !29233
  %.sroa.414.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store ptr @_RNvXsq_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core3fmt7Display3fmt, ptr %.sroa.414.0..sroa_idx.i, align 8, !noalias !29233
  invoke void @_RNvNvNtCs6Po7BT7Nknu_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.f, ptr noundef nonnull @52, ptr noundef nonnull %i.b)
          to label %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs6Po7BT7Nknu_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs14kWLkQVSKO_14deltalake_core.exit.i unwind label %bb.br, !noalias !29237

bb.br:                                            ; preds = %bb.bq
  %i.fa = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c) #42
          to label %.body.i unwind label %bb.bw, !noalias !29237

_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs6Po7BT7Nknu_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %bb.bq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !29233
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs14kWLkQVSKO_14deltalake_core.exit.i.i unwind label %bb.bs, !noalias !29237

bb.bs:                                            ; preds = %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs6Po7BT7Nknu_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs14kWLkQVSKO_14deltalake_core.exit.i
  %i.fb = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %.body.i unwind label %bb.bt, !noalias !29237

bb.bt:                                            ; preds = %bb.bs
  %i.fc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #43, !noalias !29237
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs14kWLkQVSKO_14deltalake_core.exit.i.i: ; preds = %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs6Po7BT7Nknu_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs14kWLkQVSKO_14deltalake_core.exit.i
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit.i unwind label %bb.bn, !noalias !29237

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs14kWLkQVSKO_14deltalake_core.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !29233
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit26.i unwind label %bb.bu, !noalias !29237

bb.bu:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit.i
  %i.fd = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %.body80 unwind label %bb.bv, !noalias !29237

bb.bv:                                            ; preds = %bb.bu
  %i.fe = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #43, !noalias !29237
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit26.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit.i
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %bb.by unwind label %bb.ba

bb.bw:                                            ; preds = %bb.br, %.body.i
  %i.ff = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #43, !noalias !29237
  unreachable

bb.bx:                                            ; preds = %bb.bp
  unreachable

bb.by:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit26.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !29233
  %.sroa.41.8.copyload = load ptr, ptr %i.f, align 8, !noalias !29238
  %.sroa.6.8..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.sroa.344.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.344.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.8..sroa_idx, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %i.fg = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 7, ptr %i.fg, align 8
  %.sroa.243.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.41.8.copyload, ptr %.sroa.243.0..sroa_idx, align 16
  store i64 37, ptr %0, align 16
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.x)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtBL_6string6StringEECs14kWLkQVSKO_14deltalake_core.exit unwind label %bb.bz

bb.bz:                                            ; preds = %bb.by
  %i.fh = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtB7_6string6StringENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.x)
          to label %.thread unwind label %bb.ca

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtBL_6string6StringEECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.by
  call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtB7_6string6StringENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.x)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x)
  br label %bb.cb

bb.ca:                                            ; preds = %bb.bz
  %i.fi = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #43
  unreachable

bb.cb:                                            ; preds = %bb.aw, %bb.bl, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtBL_6string6StringEECs14kWLkQVSKO_14deltalake_core.exit
  ret void

.thread:                                          ; preds = %bb.j, %bb.k, %bb.az, %bb.bz, %bb.at, %.thread21, %.body80, %bb.cc
  %.pn626 = phi { ptr, i32 } [ %i.ds, %bb.at ], [ %lpad.thr_comm.split-lp, %bb.cc ], [ %.pn, %bb.j ], [ %i.fh, %bb.bz ], [ %.pn, %bb.k ], [ %.pn5924, %.thread21 ], [ %eh.lpad-body81, %.body80 ], [ %i.ea, %bb.az ]
  resume { ptr, i32 } %.pn626

bb.cc:                                            ; preds = %bb.e, %bb.a
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %2) #42
          to label %.thread unwind label %bb.ah
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMNtNtCsjHlmExTLNuX_14datafusion_sql4expr10identifierINtNtB6_7planner8SqlToRelNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion4expr20DeltaContextProviderE31sql_compound_identifier_to_exprB1m_(ptr dead_on_unwind noalias noundef nonnull writable writeonly align 16 captures(none) dereferenceable(112) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %1, ptr noalias noundef nonnull align 8 captures(address) dead_on_return dereferenceable(24) %2, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %3, ptr captures(address, read_provenance) %.56.val) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [32 x i8], align 8                ; 7 uses
  %i.c = alloca [24 x i8], align 8                ; 10 uses
  %i.d = alloca [16 x i8], align 8                ; 5 uses
  %i.e = alloca [24 x i8], align 8                ; 8 uses
  %i.f = alloca [24 x i8], align 8                ; 5 uses
  %i.g = alloca [24 x i8], align 8                ; 5 uses
  %i.h = alloca [24 x i8], align 8                ; 6 uses
  %i.i = alloca [8 x i8], align 8                 ; 8 uses
  %i.j = alloca [64 x i8], align 8                ; 8 uses
  %i.k = alloca [32 x i8], align 8                ; 7 uses
  %i.l = alloca [32 x i8], align 8                ; 5 uses
  %i.m = alloca [8 x i8], align 8                 ; 5 uses
  %i.n = alloca [40 x i8], align 8                ; 6 uses
  %i.o = alloca [16 x i8], align 8                ; 6 uses
  %i.p = alloca [40 x i8], align 8                ; 4 uses
  %i.q = alloca [40 x i8], align 8                ; 4 uses
  %i.r = alloca [24 x i8], align 8                ; 6 uses
  %i.s = alloca [24 x i8], align 8                ; 6 uses
  %i.t = alloca [24 x i8], align 8                ; 6 uses
  %i.u = alloca [4 x i8], align 4                 ; 4 uses
  %i.v = alloca [32 x i8], align 8                ; 2 uses
  %i.w = alloca [104 x i8], align 8               ; 6 uses
  %i.x = alloca [64 x i8], align 8                ; 7 uses
  %i.y = alloca [56 x i8], align 8                ; 2 uses
  %i.z = alloca [104 x i8], align 8               ; 4 uses
  %i.aa = alloca [64 x i8], align 8               ; 7 uses
  %i.ab = alloca [56 x i8], align 8               ; 2 uses
  %i.ac = alloca [104 x i8], align 8              ; 4 uses
  %i.ad = alloca [8 x i8], align 8                ; 4 uses
  %i.ae = alloca [32 x i8], align 8               ; 7 uses
  %i.af = alloca [24 x i8], align 8               ; 8 uses
  %i.ag = alloca [16 x i8], align 8               ; 5 uses
  %i.ah = alloca [104 x i8], align 8              ; 6 uses
  %i.ai = alloca [24 x i8], align 8               ; 6 uses
  %i.aj = alloca [24 x i8], align 8               ; 4 uses
  %i.ak = alloca [24 x i8], align 8               ; 6 uses
  %i.al = alloca [24 x i8], align 8               ; 2 uses
  %i.am = alloca [32 x i8], align 8               ; 6 uses
  %i.an = alloca [32 x i8], align 8               ; 7 uses
  %i.ao = alloca [24 x i8], align 8               ; 10 uses
  %i.ap = alloca [16 x i8], align 8               ; 5 uses
  %i.aq = alloca [24 x i8], align 8               ; 4 uses
  %i.ar = alloca [24 x i8], align 8               ; 8 uses
  %i.as = alloca [24 x i8], align 8               ; 2 uses
  %i.at = alloca [32 x i8], align 8               ; 2 uses
  %i.au = alloca [104 x i8], align 8              ; 6 uses
  %i.av = alloca [32 x i8], align 8               ; 7 uses
  %i.aw = alloca [24 x i8], align 8               ; 10 uses
  %i.ax = alloca [16 x i8], align 8               ; 5 uses
  %i.ay = alloca [24 x i8], align 8               ; 4 uses
  %i.az = alloca [24 x i8], align 8               ; 8 uses
  %i.ba = alloca [24 x i8], align 8               ; 2 uses
  %i.bb = alloca [24 x i8], align 8               ; 6 uses
  %i.bc = alloca [112 x i8], align 16             ; 10 uses
  %i.bd = alloca [32 x i8], align 8               ; 8 uses
  %i.be = alloca [40 x i8], align 8               ; 6 uses
  %i.bf = alloca [24 x i8], align 8               ; 15 uses
  %i.bg = alloca [40 x i8], align 8               ; 6 uses
  %i.bh = alloca [24 x i8], align 8               ; 12 uses
  %.sroa.76 = alloca [32 x i8], align 8           ; 7 uses
  %i.bi = alloca [16 x i8], align 8               ; 5 uses
  %i.bj = alloca [16 x i8], align 8               ; 5 uses
  %i.bk = alloca [24 x i8], align 8               ; 4 uses
  %i.bl = alloca [24 x i8], align 8               ; 8 uses
  %i.bm = alloca [24 x i8], align 8               ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 4 uses
  %i.bo = load i64, ptr %i.bn, align 8, !noundef !8 ; 3 uses
  %i.bp = icmp ult i64 %i.bo, 144115188075855872
  tail call void @llvm.assume(i1 %i.bp)
  %i.bq = icmp samesign ugt i64 %i.bo, 1
  br i1 %i.bq, label %.lr.ph98, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bl)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bk)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bj)
  store ptr %2, ptr %i.bj, align 8
  %.sroa.467.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  store ptr @_RNvXsq_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtCs4lawaffTVVK_9sqlparser3ast5IdentENtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmtCs14kWLkQVSKO_14deltalake_core, ptr %.sroa.467.0..sroa_idx, align 8
  invoke void @_RNvNvNtCs6Po7BT7Nknu_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.bk, ptr noundef nonnull @574, ptr noundef nonnull %i.bj)
          to label %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs6Po7BT7Nknu_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs14kWLkQVSKO_14deltalake_core.exit unwind label %.thread45.loopexit.split-lp.loopexit.split-lp

.lr.ph98:                                         ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.76)
  %i.br = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 4 uses
  %i.bs = load ptr, ptr %i.br, align 8, !nonnull !8, !noundef !8 ; 2 uses
  %.idx100 = shl nuw nsw i64 %i.bo, 6
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 %.idx100 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  %i.bu = getelementptr inbounds nuw i8, ptr %i.o, i64 8 ; 2 uses
  store ptr %i.bt, ptr %i.bu, align 8, !noalias !29239
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !29239
  tail call void @llvm.experimental.noalias.scope.decl(metadata !29242)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !29245)
  %i.bv = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  tail call void @llvm.experimental.noalias.scope.decl(metadata !29247)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !29250)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !29252
  store ptr %i.bv, ptr %i.m, align 8, !noalias !29253
  br label %bb.d

bb.c:                                             ; preds = %.noexc
  %.not.i.not.not.not.not = icmp eq ptr %i.bx, %i.bt
  br i1 %.not.i.not.not.not.not, label %._crit_edge99, label %bb.d

bb.d:                                             ; preds = %.lr.ph98, %bb.c
  %i.bw = phi ptr [ %i.bs, %.lr.ph98 ], [ %i.bx, %bb.c ] ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 64 ; 3 uses
  store ptr %i.bx, ptr %i.o, align 8, !alias.scope !29255, !noalias !29256
  invoke void @_RNvXs1_NtNtNtCsbvkFyIu7lgC_4core3ops8function5implsQNCNvMNtNtCsjHlmExTLNuX_14datafusion_sql4expr10identifierINtNtBX_7planner8SqlToRelNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion4expr20DeltaContextProviderE31sql_compound_identifier_to_expr0INtB7_5FnMutTRNtNtCs4lawaffTVVK_9sqlparser3ast5IdentEE8call_mutB2d_(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.n, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.m, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.bw)
          to label %.noexc unwind label %.thread45.loopexit.split-lp.loopexit

.noexc:                                           ; preds = %bb.d
  %i.by = load i64, ptr %i.n, align 8, !range !64, !alias.scope !29257, !noalias !29258, !noundef !8
  %i.bz = trunc nuw i64 %i.by to i1               ; 3 uses
  br i1 %i.bz, label %bb.e, label %bb.c

bb.e:                                             ; preds = %.noexc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !29252
  %i.ca = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.k, ptr noundef nonnull align 8 dereferenceable(32) %i.ca, i64 32, i1 false), !noalias !29239
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !29239
  %i.cb = load ptr, ptr %i.o, align 8, !noalias !29239, !nonnull !8, !noundef !8 ; 3 uses
  %i.cc = load ptr, ptr %i.bu, align 8, !noalias !29239, !nonnull !8, !noundef !8 ; 2 uses
  %i.cd = icmp eq ptr %i.cb, %i.cc
  br i1 %i.cd, label %_RINvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters10filter_mapINtB6_9FilterMapINtNtNtBc_5slice4iter4IterNtNtCs4lawaffTVVK_9sqlparser3ast5IdentENCNvMNtNtCsjHlmExTLNuX_14datafusion_sql4expr10identifierINtNtB2n_7planner8SqlToRelNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion4expr20DeltaContextProviderE31sql_compound_identifier_to_expr0ENtNtNtBa_6traits8iterator8Iterator4foldNtNtCsjhHCjzi9uUI_17datafusion_common5spans4SpanNCINvMs1_B66_B64_10union_iterBV_E0EB3E_.exit.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ce = ptrtoint ptr %i.cc to i64
  %i.cf = ptrtoint ptr %i.cb to i64
  %i.cg = sub nuw i64 %i.ce, %i.cf
  %i.ch = lshr exact i64 %i.cg, 6
  %i.ci = getelementptr inbounds nuw i8, ptr %i.j, i64 32 ; 2 uses
  %.sroa.2.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 40
  %.sroa.3.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 48
  %.sroa.42.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 56
  br label %bb.g

bb.g:                                             ; preds = %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters10filter_map15filter_map_foldRNtNtCs4lawaffTVVK_9sqlparser3ast5IdentNtNtCsjhHCjzi9uUI_17datafusion_common5spans4SpanB1N_NCNvMNtNtCsjHlmExTLNuX_14datafusion_sql4expr10identifierINtNtB2M_7planner8SqlToRelNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion4expr20DeltaContextProviderE31sql_compound_identifier_to_expr0NCINvMs1_B1P_B1N_10union_iterINtB4_9FilterMapINtNtNtBa_5slice4iter4IterB1b_EB2D_EE0E0B43_.exit.i.i.i, %bb.f
  %.sroa.01.0.i.i.i = phi i64 [ 0, %bb.f ], [ %i.cv, %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters10filter_map15filter_map_foldRNtNtCs4lawaffTVVK_9sqlparser3ast5IdentNtNtCsjhHCjzi9uUI_17datafusion_common5spans4SpanB1N_NCNvMNtNtCsjHlmExTLNuX_14datafusion_sql4expr10identifierINtNtB2M_7planner8SqlToRelNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion4expr20DeltaContextProviderE31sql_compound_identifier_to_expr0NCINvMs1_B1P_B1N_10union_iterINtB4_9FilterMapINtNtNtBa_5slice4iter4IterB1b_EB2D_EE0E0B43_.exit.i.i.i ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !29259
  %i.cj = getelementptr inbounds nuw [64 x i8], ptr %i.cb, i64 %.sroa.01.0.i.i.i ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !29266)
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 24
  %i.cl = load i64, ptr %i.ck, align 8, !alias.scope !29269, !noalias !29272, !noundef !8 ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cj, i64 32
  %i.cn = load i64, ptr %i.cm, align 8, !alias.scope !29269, !noalias !29272, !noundef !8 ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.cj, i64 40
  %i.cp = load i64, ptr %i.co, align 8, !alias.scope !29269, !noalias !29272, !noundef !8 ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cj, i64 48
  %i.cr = load i64, ptr %i.cq, align 8, !alias.scope !29269, !noalias !29272, !noundef !8 ; 2 uses
  %i.cs = or i64 %i.cn, %i.cl
  %i.ct = or i64 %i.cs, %i.cp
  %i.cu = or i64 %i.ct, %i.cr
  %or.cond2.i.i.i.i.i = icmp eq i64 %i.cu, 0
  br i1 %or.cond2.i.i.i.i.i, label %_RNCNvMNtNtCsjHlmExTLNuX_14datafusion_sql4expr10identifierINtNtB8_7planner8SqlToRelNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion4expr20DeltaContextProviderE31sql_compound_identifier_to_expr0B1o_.exit.i.i.i.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !29276
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.j, ptr noundef nonnull align 8 dereferenceable(32) %i.k, i64 32, i1 false), !noalias !29239
  store i64 %i.cl, ptr %i.ci, align 8, !noalias !29276
  store i64 %i.cn, ptr %.sroa.2.0..sroa_idx.i.i.i.i, align 8, !noalias !29276
  store i64 %i.cp, ptr %.sroa.3.0..sroa_idx.i.i.i.i, align 8, !noalias !29276
  store i64 %i.cr, ptr %.sroa.42.0..sroa_idx.i.i.i.i, align 8, !noalias !29276
  invoke void @_RNvMs1_NtCsjhHCjzi9uUI_17datafusion_common5spansNtB5_4Span5union(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.l, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.j, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.ci)
          to label %.noexc182 unwind label %.thread45.loopexit

.noexc182:                                        ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !29276
  br label %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters10filter_map15filter_map_foldRNtNtCs4lawaffTVVK_9sqlparser3ast5IdentNtNtCsjhHCjzi9uUI_17datafusion_common5spans4SpanB1N_NCNvMNtNtCsjHlmExTLNuX_14datafusion_sql4expr10identifierINtNtB2M_7planner8SqlToRelNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion4expr20DeltaContextProviderE31sql_compound_identifier_to_expr0NCINvMs1_B1P_B1N_10union_iterINtB4_9FilterMapINtNtNtBa_5slice4iter4IterB1b_EB2D_EE0E0B43_.exit.i.i.i

_RNCNvMNtNtCsjHlmExTLNuX_14datafusion_sql4expr10identifierINtNtB8_7planner8SqlToRelNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion4expr20DeltaContextProviderE31sql_compound_identifier_to_expr0B1o_.exit.i.i.i.i: ; preds = %bb.g
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.l, ptr noundef nonnull align 8 dereferenceable(32) %i.k, i64 32, i1 false), !noalias !29239
  br label %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters10filter_map15filter_map_foldRNtNtCs4lawaffTVVK_9sqlparser3ast5IdentNtNtCsjhHCjzi9uUI_17datafusion_common5spans4SpanB1N_NCNvMNtNtCsjHlmExTLNuX_14datafusion_sql4expr10identifierINtNtB2M_7planner8SqlToRelNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion4expr20DeltaContextProviderE31sql_compound_identifier_to_expr0NCINvMs1_B1P_B1N_10union_iterINtB4_9FilterMapINtNtNtBa_5slice4iter4IterB1b_EB2D_EE0E0B43_.exit.i.i.i

_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters10filter_map15filter_map_foldRNtNtCs4lawaffTVVK_9sqlparser3ast5IdentNtNtCsjhHCjzi9uUI_17datafusion_common5spans4SpanB1N_NCNvMNtNtCsjHlmExTLNuX_14datafusion_sql4expr10identifierINtNtB2M_7planner8SqlToRelNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion4expr20DeltaContextProviderE31sql_compound_identifier_to_expr0NCINvMs1_B1P_B1N_10union_iterINtB4_9FilterMapINtNtNtBa_5slice4iter4IterB1b_EB2D_EE0E0B43_.exit.i.i.i: ; preds = %_RNCNvMNtNtCsjHlmExTLNuX_14datafusion_sql4expr10identifierINtNtB8_7planner8SqlToRelNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion4expr20DeltaContextProviderE31sql_compound_identifier_to_expr0B1o_.exit.i.i.i.i, %.noexc182
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.k, ptr noundef nonnull align 8 dereferenceable(32) %i.l, i64 32, i1 false), !noalias !29239
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !29259
  %i.cv = add nuw i64 %.sroa.01.0.i.i.i, 1        ; 2 uses
  %i.cw = icmp eq i64 %i.cv, %i.ch
  br i1 %i.cw, label %_RINvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters10filter_mapINtB6_9FilterMapINtNtNtBc_5slice4iter4IterNtNtCs4lawaffTVVK_9sqlparser3ast5IdentENCNvMNtNtCsjHlmExTLNuX_14datafusion_sql4expr10identifierINtNtB2n_7planner8SqlToRelNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion4expr20DeltaContextProviderE31sql_compound_identifier_to_expr0ENtNtNtBa_6traits8iterator8Iterator4foldNtNtCsjhHCjzi9uUI_17datafusion_common5spans4SpanNCINvMs1_B66_B64_10union_iterBV_E0EB3E_.exit.i, label %bb.g

_RINvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters10filter_mapINtB6_9FilterMapINtNtNtBc_5slice4iter4IterNtNtCs4lawaffTVVK_9sqlparser3ast5IdentENCNvMNtNtCsjHlmExTLNuX_14datafusion_sql4expr10identifierINtNtB2n_7planner8SqlToRelNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion4expr20DeltaContextProviderE31sql_compound_identifier_to_expr0ENtNtNtBa_6traits8iterator8Iterator4foldNtNtCsjhHCjzi9uUI_17datafusion_common5spans4SpanNCINvMs1_B66_B64_10union_iterBV_E0EB3E_.exit.i: ; preds = %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters10filter_map15filter_map_foldRNtNtCs4lawaffTVVK_9sqlparser3ast5IdentNtNtCsjhHCjzi9uUI_17datafusion_common5spans4SpanB1N_NCNvMNtNtCsjHlmExTLNuX_14datafusion_sql4expr10identifierINtNtB2M_7planner8SqlToRelNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion4expr20DeltaContextProviderE31sql_compound_identifier_to_expr0NCINvMs1_B1P_B1N_10union_iterINtB4_9FilterMapINtNtNtBa_5slice4iter4IterB1b_EB2D_EE0E0B43_.exit.i.i.i, %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.76, ptr noundef nonnull align 8 dereferenceable(32) %i.k, i64 32, i1 false)
  br label %bb.o

._crit_edge99:                                    ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !29252
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !29239
  br label %bb.o

.thread45.loopexit:                               ; preds = %bb.h
  %lpad.loopexit53 = landingpad { ptr, i32 }
          cleanup
  br label %.thread28

.thread45.loopexit.split-lp.loopexit:             ; preds = %bb.d
end_hunk_2
begin_hunk_3_@_RNvMNtNtCsjHlmExTLNuX_14datafusion_sql4expr8subqueryINtNtB6_7planner8SqlToRelNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion4expr20DeltaContextProviderE17parse_in_subqueryB1j_:bb.a

bb.bc:                                            ; preds = %bb.bb
  %i.cz = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtCsjhHCjzi9uUI_17datafusion_common5spans4SpanENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.q)
          to label %.thread120 unwind label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.da = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #43
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCsjhHCjzi9uUI_17datafusion_common5spans4SpanEECs14kWLkQVSKO_14deltalake_core.exit.i81: ; preds = %bb.bb
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtCsjhHCjzi9uUI_17datafusion_common5spans4SpanENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.q)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjhHCjzi9uUI_17datafusion_common5spans5SpansECs14kWLkQVSKO_14deltalake_core.exit86 unwind label %.body68

bb.be:                                            ; preds = %bb.v
  br i1 %.sroa.026.0, label %.body68.thread, label %bb.j

.body68:                                          ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCsjhHCjzi9uUI_17datafusion_common5spans4SpanEECs14kWLkQVSKO_14deltalake_core.exit.i81
  %i.db = landingpad { ptr, i32 }
          cleanup
  br label %.thread120

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjhHCjzi9uUI_17datafusion_common5spans5SpansECs14kWLkQVSKO_14deltalake_core.exit86: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCsjhHCjzi9uUI_17datafusion_common5spans4SpanEECs14kWLkQVSKO_14deltalake_core.exit.i81
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  %i.dc = trunc nuw i8 %.sroa.028.7 to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  br i1 %i.dc, label %bb.bh, label %bb.av

.thread:                                          ; preds = %bb.ay, %bb.ac, %bb.ab
  %.pn51104 = phi { ptr, i32 } [ %.pn, %bb.ab ], [ %i.by, %bb.ac ], [ %i.cx, %bb.ay ]
  %.sroa.028.3103 = phi i8 [ %.sroa.028.5, %bb.ab ], [ %.sroa.028.4, %bb.ac ], [ %.sroa.028.7, %bb.ay ]
  %.sroa.026.2102 = phi i1 [ false, %bb.ab ], [ %.sroa.026.3, %bb.ac ], [ false, %bb.ay ]
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4plan11LogicalPlanECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 16 dereferenceable(320) %i.o) #42
          to label %bb.v unwind label %bb.aw

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjhHCjzi9uUI_17datafusion_common5spans5SpansECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCsjhHCjzi9uUI_17datafusion_common5spans4SpanEECs14kWLkQVSKO_14deltalake_core.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  call void @llvm.experimental.noalias.scope.decl(metadata !29466)
  %i.dd = load ptr, ptr %i.r, align 8, !alias.scope !29466, !noundef !8 ; 2 uses
  %i.de = icmp eq ptr %i.dd, null
  br i1 %i.de, label %.critedge, label %bb.bf

bb.bf:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjhHCjzi9uUI_17datafusion_common5spans5SpansECs14kWLkQVSKO_14deltalake_core.exit
  %i.df = atomicrmw sub ptr %i.dd, i64 1 release, align 8, !noalias !29469
  %i.dg = icmp eq i64 %i.df, 1
  br i1 %i.dg, label %bb.bg, label %.critedge

bb.bg:                                            ; preds = %bb.bf
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsjhHCjzi9uUI_17datafusion_common8dfschema8DFSchemaE9drop_slowCs8VI8w5SIoU4_15datafusion_expr(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.r) #45
          to label %.critedge unwind label %.thread115

.critedge:                                        ; preds = %bb.bf, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjhHCjzi9uUI_17datafusion_common5spans5SpansECs14kWLkQVSKO_14deltalake_core.exit, %bb.bg
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  br label %bb.bh

bb.bh:                                            ; preds = %.critedge, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjhHCjzi9uUI_17datafusion_common5spans5SpansECs14kWLkQVSKO_14deltalake_core.exit86
  call void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs4lawaffTVVK_9sqlparser3ast4ExprECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(328) %2)
  br label %bb.av

.body68.thread:                                   ; preds = %bb.y, %.body68.thread113, %bb.be
  %.pn55107 = phi { ptr, i32 } [ %i.bx, %.body68.thread113 ], [ %.pn53, %bb.be ], [ %i.bv, %bb.y ] ; 2 uses
  %.sroa.031.4106 = phi i1 [ false, %.body68.thread113 ], [ %.sroa.031.2, %bb.be ], [ false, %bb.y ]
  %.sroa.028.8105 = phi i8 [ 1, %.body68.thread113 ], [ %.sroa.028.1, %bb.be ], [ 1, %bb.y ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !29474)
  %i.dh = load ptr, ptr %i.r, align 8, !alias.scope !29474, !noundef !8 ; 2 uses
  %i.di = icmp eq ptr %i.dh, null
  br i1 %i.di, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsjhHCjzi9uUI_17datafusion_common8dfschema8DFSchemaEEECs14kWLkQVSKO_14deltalake_core.exit90, label %bb.bi

bb.bi:                                            ; preds = %.body68.thread
  %i.dj = atomicrmw sub ptr %i.dh, i64 1 release, align 8, !noalias !29477
  %i.dk = icmp eq i64 %i.dj, 1
  br i1 %i.dk, label %bb.bj, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsjhHCjzi9uUI_17datafusion_common8dfschema8DFSchemaEEECs14kWLkQVSKO_14deltalake_core.exit90

bb.bj:                                            ; preds = %bb.bi
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsjhHCjzi9uUI_17datafusion_common8dfschema8DFSchemaE9drop_slowCs8VI8w5SIoU4_15datafusion_expr(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.r) #45
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsjhHCjzi9uUI_17datafusion_common8dfschema8DFSchemaEEECs14kWLkQVSKO_14deltalake_core.exit90 unwind label %bb.aw

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsjhHCjzi9uUI_17datafusion_common8dfschema8DFSchemaEEECs14kWLkQVSKO_14deltalake_core.exit90: ; preds = %bb.bj, %.body68.thread, %bb.bi
  br i1 %.sroa.031.4106, label %.body.thread, label %.thread120

.thread120:                                       ; preds = %bb.bc, %.body68, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsjhHCjzi9uUI_17datafusion_common8dfschema8DFSchemaEEECs14kWLkQVSKO_14deltalake_core.exit90, %.body.thread, %bb.j
  %.pn5794 = phi { ptr, i32 } [ %.pn55107, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsjhHCjzi9uUI_17datafusion_common8dfschema8DFSchemaEEECs14kWLkQVSKO_14deltalake_core.exit90 ], [ %.pn5795, %.body.thread ], [ %.pn53, %bb.j ], [ %i.db, %.body68 ], [ %i.cz, %bb.bc ] ; 2 uses
  %.sroa.028.092 = phi i8 [ %.sroa.028.8105, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsjhHCjzi9uUI_17datafusion_common8dfschema8DFSchemaEEECs14kWLkQVSKO_14deltalake_core.exit90 ], [ %.sroa.028.093, %.body.thread ], [ %.sroa.028.1, %bb.j ], [ %.sroa.028.7, %.body68 ], [ %.sroa.028.7, %bb.bc ]
  %i.dl = trunc nuw i8 %.sroa.028.092 to i1
  br i1 %i.dl, label %bb.bl, label %bb.bk

.body.thread:                                     ; preds = %bb.m, %bb.d, %bb.e, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsjhHCjzi9uUI_17datafusion_common8dfschema8DFSchemaEEECs14kWLkQVSKO_14deltalake_core.exit90, %bb.j
  %.pn5795 = phi { ptr, i32 } [ %.pn55107, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsjhHCjzi9uUI_17datafusion_common8dfschema8DFSchemaEEECs14kWLkQVSKO_14deltalake_core.exit90 ], [ %.pn53, %bb.j ], [ %.pn.i, %bb.d ], [ %.pn.i, %bb.e ], [ %i.ah, %bb.m ]
  %.sroa.028.093 = phi i8 [ %.sroa.028.8105, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsjhHCjzi9uUI_17datafusion_common8dfschema8DFSchemaEEECs14kWLkQVSKO_14deltalake_core.exit90 ], [ %.sroa.028.1, %bb.j ], [ 1, %bb.d ], [ 1, %bb.e ], [ 1, %bb.m ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs4lawaffTVVK_9sqlparser3ast5query5QueryECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(1400) %3) #42
          to label %.thread120 unwind label %bb.aw

bb.bk:                                            ; preds = %bb.bl, %.thread120
  %.pn5794118 = phi { ptr, i32 } [ %.pn5794119, %bb.bl ], [ %.pn5794, %.thread120 ]
  resume { ptr, i32 } %.pn5794118

bb.bl:                                            ; preds = %.thread115, %.thread120
  %.pn5794119 = phi { ptr, i32 } [ %i.ac, %.thread115 ], [ %.pn5794, %.thread120 ]
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs4lawaffTVVK_9sqlparser3ast4ExprECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(328) %2) #42
          to label %bb.bk unwind label %bb.aw
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMNtNtCsjHlmExTLNuX_14datafusion_sql4expr8subqueryINtNtB6_7planner8SqlToRelNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion4expr20DeltaContextProviderE21parse_scalar_subqueryB1j_(ptr dead_on_unwind noalias noundef nonnull writable writeonly align 16 captures(none) dereferenceable(112) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %1, ptr noalias noundef nonnull align 8 captures(address) dead_on_return dereferenceable(1400) %2, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %3, ptr noalias noundef nonnull align 8 dereferenceable(80) %4) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 5 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [336 x i8], align 16              ; 6 uses
  %i.e = alloca [72 x i8], align 8                ; 7 uses
  %.sroa.014 = alloca [48 x i8], align 8          ; 3 uses
  %i.f = alloca [40 x i8], align 8                ; 6 uses
  %i.g = alloca [8 x i8], align 8                 ; 4 uses
  %i.h = alloca [24 x i8], align 8                ; 9 uses
  %i.i = alloca [1400 x i8], align 8              ; 4 uses
  %i.j = alloca [320 x i8], align 16              ; 7 uses
  %.sroa.6 = alloca [40 x i8], align 8            ; 6 uses
  %i.k = alloca [320 x i8], align 16              ; 12 uses
  %i.l = alloca [32 x i8], align 8                ; 5 uses
  %i.m = alloca [24 x i8], align 8                ; 16 uses
  %.sroa.0 = alloca [48 x i8], align 8            ; 5 uses
  %i.n = alloca [8 x i8], align 8                 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !29482)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !29485
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.p = load ptr, ptr %i.o, align 8, !alias.scope !29482, !noalias !29487, !nonnull !8, !noundef !8 ; 4 uses
  %i.q = atomicrmw add ptr %i.p, i64 1 monotonic, align 8, !noalias !29485
  %i.r = icmp slt i64 %i.q, 0
  br i1 %i.r, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store ptr %i.p, ptr %i.c, align 8, !noalias !29485
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !29485
  invoke void @_RNvXsa_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecINtNtCsbvkFyIu7lgC_4core6option6OptionNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceEENtNtBK_5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %3)
          to label %bb.g unwind label %bb.f, !noalias !29487

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.trap()
  unreachable

bb.d:                                             ; preds = %bb.h, %bb.f
  %.pn.i = phi { ptr, i32 } [ %i.w, %bb.h ], [ %i.u, %bb.f ] ; 2 uses
  %i.s = atomicrmw sub ptr %i.p, i64 1 release, align 8, !noalias !29488
  %i.t = icmp eq i64 %i.s, 1
  br i1 %i.t, label %bb.e, label %.body.thread

bb.e:                                             ; preds = %bb.d
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaE9drop_slowCs1N9T06jgEdt_11arrow_array(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.c) #45
          to label %.body.thread unwind label %bb.i, !noalias !29487

bb.f:                                             ; preds = %bb.b
  %i.u = landingpad { ptr, i32 }
          cleanup
  br label %bb.d

bb.g:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !29485
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 24
  invoke void @_RNvXsa_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtCsjhHCjzi9uUI_17datafusion_common23functional_dependencies20FunctionalDependenceENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.v)
          to label %bb.k unwind label %bb.h, !noalias !29487

bb.h:                                             ; preds = %bb.g
  %i.w = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecINtNtB4_6option6OptionNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceEEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b) #42
          to label %bb.d unwind label %bb.i, !noalias !29487

bb.i:                                             ; preds = %bb.h, %bb.e
  %i.x = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #43, !noalias !29487
  unreachable

bb.j:                                             ; preds = %bb.as
  br i1 %.sroa.019.2, label %.body.thread, label %.thread85

bb.k:                                             ; preds = %bb.g
  %.sroa.0.24..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.24..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false), !noalias !29482
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !29485
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false), !noalias !29482
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !29485
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !29485
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store i64 1, ptr %i.e, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i64 1, ptr %i.y, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.z, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.0, i64 48, i1 false)
  %.sroa.569.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 64
  store ptr %i.p, ptr %.sroa.569.0..sroa_idx, align 8
  call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #46, !noalias !29493
  %i.aa = call noundef align 8 dereferenceable_or_null(72) ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef range(i64 0, 7409) 72, i64 noundef range(i64 8, 17) 8) #46, !noalias !29493 ; 3 uses
  %i.ab = icmp eq ptr %i.aa, null
  br i1 %i.ab, label %bb.l, label %bb.o, !prof !308

bb.l:                                             ; preds = %bb.k
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 72) #41
          to label %.noexc unwind label %bb.m

.noexc:                                           ; preds = %bb.l
  unreachable

bb.m:                                             ; preds = %bb.l
  %i.ac = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjhHCjzi9uUI_17datafusion_common8dfschema8DFSchemaECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.z)
          to label %.body.thread unwind label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ad = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #43
  unreachable

bb.o:                                             ; preds = %bb.k
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.aa, ptr noundef nonnull align 8 dereferenceable(72) %i.e, i64 72, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0)
  %i.ae = getelementptr inbounds nuw i8, ptr %4, i64 56 ; 4 uses
  %i.af = load ptr, ptr %i.ae, align 8, !alias.scope !29496, !noundef !8
  store ptr %i.aa, ptr %i.ae, align 8, !alias.scope !29496
  store ptr %i.af, ptr %i.n, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  store i64 0, ptr %i.m, align 8
  %.sroa.425.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 8 ; 2 uses
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.425.0..sroa_idx, align 8
  %.sroa.526.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 16 ; 2 uses
  store i64 0, ptr %.sroa.526.0..sroa_idx, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 1392
  %i.ah = load ptr, ptr %i.ag, align 8, !nonnull !8, !noundef !8 ; 2 uses
  %i.ai = load i8, ptr %i.ah, align 8, !range !4670, !noundef !8
  %i.aj = icmp eq i8 %i.ai, 0
  br i1 %i.aj, label %bb.p, label %.loopexit

bb.p:                                             ; preds = %bb.o
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %i.al = load ptr, ptr %i.ak, align 8, !nonnull !8, !noundef !8 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 2008
  %i.an = load ptr, ptr %i.am, align 8, !nonnull !8, !noundef !8 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.al, i64 2016
  %i.ap = load i64, ptr %i.ao, align 8, !noundef !8 ; 2 uses
  %.idx = mul nuw nsw i64 %i.ap, 744
  %i.aq = getelementptr inbounds nuw i8, ptr %i.an, i64 %.idx
  %i.ar = icmp eq i64 %i.ap, 0
  br i1 %i.ar, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.p
  %.sroa.4.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %.sroa.4.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %.sroa.4.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  br label %bb.q

.loopexit:                                        ; preds = %bb.s, %bb.p, %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1400) %i.i, ptr noundef nonnull align 8 dereferenceable(1400) %2, i64 1400, i1 false)
  invoke fastcc void @_RNvMNtCsjHlmExTLNuX_14datafusion_sql5queryINtNtB4_7planner8SqlToRelNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion4expr20DeltaContextProviderE13query_to_planB19_(ptr noalias noundef align 16 captures(address) dereferenceable(320) %i.j, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %1, ptr noalias noundef align 8 captures(address) dereferenceable(1400) %i.i, ptr noalias noundef align 8 dereferenceable(80) %4)
          to label %bb.v unwind label %.loopexit.split-lp

bb.q:                                             ; preds = %.lr.ph, %bb.s
  %.sroa.0.089 = phi ptr [ %i.an, %.lr.ph ], [ %i.as, %bb.s ] ; 6 uses
  %i.as = getelementptr inbounds nuw i8, ptr %.sroa.0.089, i64 744 ; 2 uses
  %i.at = load i64, ptr %.sroa.0.089, align 8, !range !3088, !noundef !8 ; 2 uses
  %i.au = icmp ne i64 %i.at, 72
  call void @llvm.assume(i1 %i.au)
  %i.av = icmp eq i64 %i.at, 71
  br i1 %i.av, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.aw = getelementptr inbounds nuw i8, ptr %.sroa.0.089, i64 360
  %i.ax = load i64, ptr %i.aw, align 8, !noundef !8 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %.sroa.0.089, i64 368
  %i.az = load i64, ptr %i.ay, align 8, !noundef !8 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %.sroa.0.089, i64 376
  %i.bb = load i64, ptr %i.ba, align 8, !noundef !8 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %.sroa.0.089, i64 384
  %i.bd = load i64, ptr %i.bc, align 8, !noundef !8 ; 2 uses
  %i.be = or i64 %i.az, %i.ax
  %i.bf = or i64 %i.be, %i.bb
  %i.bg = or i64 %i.bf, %i.bd
  %or.cond2 = icmp eq i64 %i.bg, 0
  br i1 %or.cond2, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.t, %bb.r, %bb.q
  %i.bh = icmp eq ptr %i.as, %i.aq
  br i1 %i.bh, label %.loopexit, label %bb.q

bb.t:                                             ; preds = %bb.r
  store i64 %i.ax, ptr %i.l, align 8
  store i64 %i.az, ptr %.sroa.4.sroa.5.0..sroa_idx, align 8
  store i64 %i.bb, ptr %.sroa.4.sroa.6.0..sroa_idx, align 8
  store i64 %i.bd, ptr %.sroa.4.sroa.7.0..sroa_idx, align 8
  invoke void @_RNvMs2_NtCsjhHCjzi9uUI_17datafusion_common5spansNtB5_5Spans8add_span(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.m, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.l)
          to label %bb.s unwind label %.loopexit88

bb.u:                                             ; preds = %.loopexit88, %.loopexit.split-lp, %.thread, %bb.aa
  %.sroa.016.0 = phi i1 [ false, %bb.aa ], [ %.sroa.016.277, %.thread ], [ true, %.loopexit88 ], [ %.sroa.016.1.ph, %.loopexit.split-lp ]
  %.sroa.019.2 = phi i1 [ false, %bb.aa ], [ false, %.thread ], [ true, %.loopexit88 ], [ false, %.loopexit.split-lp ] ; 2 uses
  %.pn36 = phi { ptr, i32 } [ %eh.lpad-body43, %bb.aa ], [ %.pn78, %.thread ], [ %lpad.loopexit, %.loopexit88 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ] ; 3 uses
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjhHCjzi9uUI_17datafusion_common5spans5SpansECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(24) %i.m) #42
          to label %bb.as unwind label %bb.at

.loopexit88:                                      ; preds = %bb.t
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.u

.loopexit.split-lp:                               ; preds = %.loopexit, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEECs14kWLkQVSKO_14deltalake_core.exit
  %.sroa.016.1.ph = phi i1 [ true, %.loopexit ], [ false, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEECs14kWLkQVSKO_14deltalake_core.exit ]
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.u

bb.v:                                             ; preds = %.loopexit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  %i.bi = load i64, ptr %i.j, align 16, !range !289, !noundef !8 ; 2 uses
  %i.bj = icmp eq i64 %i.bi, 36
  %i.bk = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.6, ptr noundef nonnull align 8 dereferenceable(40) %i.bk, i64 40, i1 false)
  br i1 %i.bj, label %bb.w, label %bb.z

bb.w:                                             ; preds = %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.bl, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.6, i64 40, i1 false)
  store i64 37, ptr %0, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtCsjhHCjzi9uUI_17datafusion_common5spans4SpanENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.m)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCsjhHCjzi9uUI_17datafusion_common5spans4SpanEECs14kWLkQVSKO_14deltalake_core.exit.i unwind label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.bm = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtCsjhHCjzi9uUI_17datafusion_common5spans4SpanENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.m)
          to label %.body49.thread unwind label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.bn = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #43
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCsjhHCjzi9uUI_17datafusion_common5spans4SpanEECs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %bb.w
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtCsjhHCjzi9uUI_17datafusion_common5spans4SpanENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.m)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjhHCjzi9uUI_17datafusion_common5spans5SpansECs14kWLkQVSKO_14deltalake_core.exit unwind label %.body49.thread84

.body49.thread84:                                 ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCsjhHCjzi9uUI_17datafusion_common5spans4SpanEECs14kWLkQVSKO_14deltalake_core.exit.i
  %i.bo = landingpad { ptr, i32 }
          cleanup
  br label %.body49.thread

bb.z:                                             ; preds = %bb.v
  %.sroa.633.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 48
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(272) %.sroa.5.0..sroa_idx, ptr noundef nonnull align 16 dereferenceable(272) %.sroa.633.0..sroa_idx, i64 272, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  %.sroa.410.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.410.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.6, i64 40, i1 false)
  store i64 %i.bi, ptr %i.k, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  invoke void @_RNvMs0_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB5_11LogicalPlan17all_out_ref_exprs(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.h, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(320) %i.k)
          to label %bb.ad unwind label %bb.ab

bb.aa:                                            ; preds = %.body42
  br i1 %.sroa.018.1.lpad-body, label %.thread, label %bb.u

bb.ab:                                            ; preds = %bb.ai, %bb.z
  %.sroa.016.3 = phi i1 [ false, %bb.ai ], [ true, %bb.z ]
  %i.bp = landingpad { ptr, i32 }
          cleanup
  br label %.thread

bb.ac:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsjhHCjzi9uUI_17datafusion_common8dfschema8DFSchemaEEECs14kWLkQVSKO_14deltalake_core.exit, %bb.ae
  %i.bq = landingpad { ptr, i32 }
          cleanup
  br label %.body42

.body42:                                          ; preds = %bb.am, %bb.ac
  %.sroa.018.1.lpad-body = phi i1 [ true, %bb.ac ], [ false, %bb.am ]
  %eh.lpad-body43 = phi { ptr, i32 } [ %i.bq, %bb.ac ], [ %i.cb, %bb.am ] ; 2 uses
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.h) #42
          to label %bb.aa unwind label %bb.at

bb.ad:                                            ; preds = %bb.z
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  %i.br = load ptr, ptr %i.n, align 8, !noundef !8
  %5 = load ptr, ptr %i.ae, align 8, !alias.scope !29499, !noundef !8 ; 3 uses
  store ptr %i.br, ptr %i.ae, align 8, !alias.scope !29499
  store ptr %5, ptr %i.g, align 8
  %i.bs = icmp eq ptr %5, null
  br i1 %i.bs, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsjhHCjzi9uUI_17datafusion_common8dfschema8DFSchemaEEECs14kWLkQVSKO_14deltalake_core.exit, label %6

6:                                                ; preds = %bb.ad
  %7 = atomicrmw sub ptr %5, i64 1 release, align 8, !noalias !29502
  %8 = icmp eq i64 %7, 1
  br i1 %8, label %bb.ae, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsjhHCjzi9uUI_17datafusion_common8dfschema8DFSchemaEEECs14kWLkQVSKO_14deltalake_core.exit

bb.ae:                                            ; preds = %6
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsjhHCjzi9uUI_17datafusion_common8dfschema8DFSchemaE9drop_slowCs8VI8w5SIoU4_15datafusion_expr(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.g) #45
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsjhHCjzi9uUI_17datafusion_common8dfschema8DFSchemaEEECs14kWLkQVSKO_14deltalake_core.exit unwind label %bb.ac

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsjhHCjzi9uUI_17datafusion_common8dfschema8DFSchemaEEECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %6, %bb.ad, %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %.val = load ptr, ptr %.sroa.425.0..sroa_idx, align 8
  %.val44 = load i64, ptr %.sroa.526.0..sroa_idx, align 8
  invoke fastcc void @_RNvMNtNtCsjHlmExTLNuX_14datafusion_sql4expr8subqueryINtNtB6_7planner8SqlToRelNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion4expr20DeltaContextProviderE22validate_single_columnB1j_(ptr noalias noundef align 8 captures(none) dereferenceable(40) %i.f, ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(320) %i.k, ptr %.val, i64 %.val44)
          to label %bb.af unwind label %bb.ac

bb.af:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsjhHCjzi9uUI_17datafusion_common8dfschema8DFSchemaEEECs14kWLkQVSKO_14deltalake_core.exit
  %i.bt = load i64, ptr %i.f, align 8, !range !43, !noundef !8
  %.not = icmp eq i64 %i.bt, 20
  br i1 %.not, label %bb.ak, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.bu, ptr noundef nonnull align 8 dereferenceable(40) %i.f, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  store i64 37, ptr %0, align 16
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %bb.ai unwind label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.bv = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %.thread unwind label %bb.aj

bb.ai:                                            ; preds = %bb.ag
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEECs14kWLkQVSKO_14deltalake_core.exit unwind label %bb.ab

bb.aj:                                            ; preds = %bb.ah
  %i.bw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #43
  unreachable

bb.ak:                                            ; preds = %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %i.bx = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(320) %i.bx, ptr noundef nonnull align 16 dereferenceable(320) %i.k, i64 320, i1 false)
  store i64 1, ptr %i.d, align 16
  %i.by = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 1, ptr %i.by, align 8
  call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #46, !noalias !29509
  %i.bz = call noundef align 16 dereferenceable_or_null(336) ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef range(i64 0, 7409) 336, i64 noundef range(i64 8, 17) 16) #46, !noalias !29509 ; 3 uses
  %i.ca = icmp eq ptr %i.bz, null
  br i1 %i.ca, label %bb.al, label %bb.ao, !prof !308

bb.al:                                            ; preds = %bb.ak
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 16, i64 noundef 336) #41
          to label %.noexc56 unwind label %bb.am

.noexc56:                                         ; preds = %bb.al
  unreachable

bb.am:                                            ; preds = %bb.al
  %i.cb = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4plan11LogicalPlanECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 16 dereferenceable(320) %i.bx)
          to label %.body42 unwind label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.cc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #43
  unreachable

bb.ao:                                            ; preds = %bb.ak
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(336) %i.bz, ptr noundef nonnull align 16 dereferenceable(336) %i.d, i64 336, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.014, ptr noundef nonnull align 8 dereferenceable(24) %i.h, i64 24, i1 false)
  %.sroa.014.24..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.014, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.014.24..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.m, i64 24, i1 false)
  store i64 31, ptr %0, align 16
  %.sroa.412.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.412.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.014, i64 48, i1 false)
  %.sroa.412.sroa.4.0..sroa.412.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %i.bz, ptr %.sroa.412.sroa.4.0..sroa.412.0..sroa_idx.sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsjhHCjzi9uUI_17datafusion_common8dfschema8DFSchemaEEECs14kWLkQVSKO_14deltalake_core.exit66

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsjhHCjzi9uUI_17datafusion_common8dfschema8DFSchemaEEECs14kWLkQVSKO_14deltalake_core.exit66: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCsjhHCjzi9uUI_17datafusion_common5spans4SpanEECs14kWLkQVSKO_14deltalake_core.exit.i60, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjhHCjzi9uUI_17datafusion_common5spans5SpansECs14kWLkQVSKO_14deltalake_core.exit, %bb.au, %bb.av, %bb.ao
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  ret void

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.ai
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4plan11LogicalPlanECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 16 dereferenceable(320) %i.k)
          to label %bb.ap unwind label %.loopexit.split-lp

bb.ap:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEECs14kWLkQVSKO_14deltalake_core.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtCsjhHCjzi9uUI_17datafusion_common5spans4SpanENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.m)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCsjhHCjzi9uUI_17datafusion_common5spans4SpanEECs14kWLkQVSKO_14deltalake_core.exit.i60 unwind label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.cd = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtCsjhHCjzi9uUI_17datafusion_common5spans4SpanENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.m)
          to label %.thread85 unwind label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.ce = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #43
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCsjhHCjzi9uUI_17datafusion_common5spans4SpanEECs14kWLkQVSKO_14deltalake_core.exit.i60: ; preds = %bb.ap
  call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtCsjhHCjzi9uUI_17datafusion_common5spans4SpanENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.m)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsjhHCjzi9uUI_17datafusion_common8dfschema8DFSchemaEEECs14kWLkQVSKO_14deltalake_core.exit66

bb.as:                                            ; preds = %bb.u
  br i1 %.sroa.016.0, label %.body49.thread, label %bb.j

bb.at:                                            ; preds = %bb.ax, %.body.thread, %.thread, %.body42, %bb.u
  %i.cf = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #43
  unreachable

.thread:                                          ; preds = %bb.ah, %bb.ab, %bb.aa
  %.pn78 = phi { ptr, i32 } [ %eh.lpad-body43, %bb.aa ], [ %i.bp, %bb.ab ], [ %i.bv, %bb.ah ]
  %.sroa.016.277 = phi i1 [ false, %bb.aa ], [ %.sroa.016.3, %bb.ab ], [ false, %bb.ah ]
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4plan11LogicalPlanECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 16 dereferenceable(320) %i.k) #42
          to label %bb.u unwind label %bb.at

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjhHCjzi9uUI_17datafusion_common5spans5SpansECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCsjhHCjzi9uUI_17datafusion_common5spans4SpanEECs14kWLkQVSKO_14deltalake_core.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  call void @llvm.experimental.noalias.scope.decl(metadata !29512)
  %i.cg = load ptr, ptr %i.n, align 8, !alias.scope !29512, !noundef !8 ; 2 uses
  %i.ch = icmp eq ptr %i.cg, null
  br i1 %i.ch, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsjhHCjzi9uUI_17datafusion_common8dfschema8DFSchemaEEECs14kWLkQVSKO_14deltalake_core.exit66, label %bb.au

bb.au:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjhHCjzi9uUI_17datafusion_common5spans5SpansECs14kWLkQVSKO_14deltalake_core.exit
  %i.ci = atomicrmw sub ptr %i.cg, i64 1 release, align 8, !noalias !29515
  %i.cj = icmp eq i64 %i.ci, 1
  br i1 %i.cj, label %bb.av, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsjhHCjzi9uUI_17datafusion_common8dfschema8DFSchemaEEECs14kWLkQVSKO_14deltalake_core.exit66

bb.av:                                            ; preds = %bb.au
  fence acquire
  call void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsjhHCjzi9uUI_17datafusion_common8dfschema8DFSchemaE9drop_slowCs8VI8w5SIoU4_15datafusion_expr(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.n) #45
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsjhHCjzi9uUI_17datafusion_common8dfschema8DFSchemaEEECs14kWLkQVSKO_14deltalake_core.exit66

.body49.thread:                                   ; preds = %bb.x, %.body49.thread84, %bb.as
  %.pn3880 = phi { ptr, i32 } [ %i.bo, %.body49.thread84 ], [ %.pn36, %bb.as ], [ %i.bm, %bb.x ] ; 2 uses
  %.sroa.019.479 = phi i1 [ false, %.body49.thread84 ], [ %.sroa.019.2, %bb.as ], [ false, %bb.x ]
  call void @llvm.experimental.noalias.scope.decl(metadata !29520)
  %i.ck = load ptr, ptr %i.n, align 8, !alias.scope !29520, !noundef !8 ; 2 uses
  %i.cl = icmp eq ptr %i.ck, null
  br i1 %i.cl, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsjhHCjzi9uUI_17datafusion_common8dfschema8DFSchemaEEECs14kWLkQVSKO_14deltalake_core.exit68, label %bb.aw

bb.aw:                                            ; preds = %.body49.thread
  %i.cm = atomicrmw sub ptr %i.ck, i64 1 release, align 8, !noalias !29523
  %i.cn = icmp eq i64 %i.cm, 1
  br i1 %i.cn, label %bb.ax, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsjhHCjzi9uUI_17datafusion_common8dfschema8DFSchemaEEECs14kWLkQVSKO_14deltalake_core.exit68

bb.ax:                                            ; preds = %bb.aw
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsjhHCjzi9uUI_17datafusion_common8dfschema8DFSchemaE9drop_slowCs8VI8w5SIoU4_15datafusion_expr(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.n) #45
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsjhHCjzi9uUI_17datafusion_common8dfschema8DFSchemaEEECs14kWLkQVSKO_14deltalake_core.exit68 unwind label %bb.at

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsjhHCjzi9uUI_17datafusion_common8dfschema8DFSchemaEEECs14kWLkQVSKO_14deltalake_core.exit68: ; preds = %bb.ax, %.body49.thread, %bb.aw
  br i1 %.sroa.019.479, label %.body.thread, label %.thread85

.thread85:                                        ; preds = %bb.aq, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsjhHCjzi9uUI_17datafusion_common8dfschema8DFSchemaEEECs14kWLkQVSKO_14deltalake_core.exit68, %.body.thread, %bb.j
  %.pn4070 = phi { ptr, i32 } [ %i.cd, %bb.aq ], [ %.pn4071, %.body.thread ], [ %.pn36, %bb.j ], [ %.pn3880, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsjhHCjzi9uUI_17datafusion_common8dfschema8DFSchemaEEECs14kWLkQVSKO_14deltalake_core.exit68 ]
  resume { ptr, i32 } %.pn4070

.body.thread:                                     ; preds = %bb.m, %bb.d, %bb.e, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsjhHCjzi9uUI_17datafusion_common8dfschema8DFSchemaEEECs14kWLkQVSKO_14deltalake_core.exit68, %bb.j
  %.pn4071 = phi { ptr, i32 } [ %.pn3880, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsjhHCjzi9uUI_17datafusion_common8dfschema8DFSchemaEEECs14kWLkQVSKO_14deltalake_core.exit68 ], [ %.pn36, %bb.j ], [ %.pn.i, %bb.d ], [ %.pn.i, %bb.e ], [ %i.ac, %bb.m ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs4lawaffTVVK_9sqlparser3ast5query5QueryECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(1400) %2) #42
          to label %.thread85 unwind label %bb.at
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMNtNtCsjHlmExTLNuX_14datafusion_sql4expr8subqueryINtNtB6_7planner8SqlToRelNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion4expr20DeltaContextProviderE22validate_single_columnB1j_(ptr dead_on_unwind noalias noundef nonnull writable writeonly align 8 captures(none) dereferenceable(40) %0, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(320) %1, ptr %.8.val, i64 %.16.val) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 4 uses
  %i.b = alloca [40 x i8], align 8                ; 6 uses
  %i.c = alloca [16 x i8], align 8                ; 6 uses
  %i.d = alloca [64 x i8], align 8                ; 11 uses
  %i.e = alloca [24 x i8], align 8                ; 6 uses
  %i.f = alloca [64 x i8], align 8                ; 8 uses
  %i.g = alloca [24 x i8], align 8                ; 6 uses
  %i.h = alloca [16 x i8], align 8                ; 9 uses
  %i.i = alloca [8 x i8], align 8                 ; 8 uses
  %i.j = alloca [24 x i8], align 8                ; 6 uses
  %i.k = alloca [120 x i8], align 8               ; 15 uses
  %i.l = alloca [40 x i8], align 8                ; 5 uses
  %i.m = alloca [24 x i8], align 8                ; 6 uses
  %i.n = alloca [24 x i8], align 8                ; 4 uses
  %i.o = alloca [120 x i8], align 8               ; 4 uses
  %i.p = alloca [40 x i8], align 8                ; 2 uses
  %i.q = alloca [32 x i8], align 8                ; 7 uses
  %i.r = alloca [24 x i8], align 8                ; 10 uses
  %i.s = alloca [32 x i8], align 8                ; 7 uses
end_hunk_3
