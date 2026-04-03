begin_hunk_0
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %5 = alloca %"class.arrow::Status", align 8     ; 6 uses
  %6 = alloca %"class.std::vector.78", align 8    ; 17 uses
  %7 = alloca %"class.std::vector.83", align 8    ; 16 uses
  %8 = alloca %"class.arrow::Result.89", align 8  ; 14 uses
  %9 = alloca %"struct.arrow::Field::MergeOptions", align 1 ; 2 uses
  %10 = alloca %"class.std::shared_ptr", align 16 ; 7 uses
  %11 = alloca %"class.arrow::Result", align 8    ; 10 uses
end_hunk_0
begin_hunk_1

.critedge.a:                                      ; preds = %bb.o
  call void @_ZN5arrow6ResultISt10shared_ptrINS_5TableEEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(8) %8) #24
  call void @_ZN5arrow6ResultISt10shared_ptrINS_6SchemaEEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %8) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #24
  call void @_ZNSt6vectorISt10shared_ptrIN5arrow6SchemaEESaIS3_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %7) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #24
  br label %bb.el

bb.p:                                             ; preds = %._crit_edge
  %i.al = landingpad { ptr, i32 }
end_hunk_1
begin_hunk_2
  call void @llvm.experimental.noalias.scope.decl(metadata !259)
  %i.am = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.ao = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 3 uses
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !18, !noalias !262
  %i.aq = load <2 x ptr>, ptr %i.am, align 8, !tbaa !19, !noalias !262
  store ptr null, ptr %i.ao, align 8, !tbaa !18, !noalias !262
end_hunk_2
begin_hunk_3
  %.not275.lcssa = phi i1 [ true, %_ZNSt6vectorISt10shared_ptrIN5arrow5TableEESaIS3_EE7reserveEm.exit ], [ %i.cb, %._crit_edge290.loopexit ]
  %spec.select = phi ptr [ %6, %_ZNSt6vectorISt10shared_ptrIN5arrow5TableEESaIS3_EE7reserveEm.exit ], [ %spec.select.ph, %._crit_edge290.loopexit ]
  %.not.i.i115 = icmp eq ptr %i.dq, null
  br i1 %.not.i.i115, label %_ZNSt12__shared_ptrIN5arrow6SchemaELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.ar

bb.ar:                                            ; preds = %._crit_edge290
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 8 ; 4 uses
end_hunk_3
begin_hunk_4
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 24
  %i.eb = load ptr, ptr %i.ea, align 8
  call void %i.eb(ptr noundef nonnull align 8 dereferenceable(16) %i.dq) #24
  br label %_ZNSt12__shared_ptrIN5arrow6SchemaELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.at:                                            ; preds = %bb.ar
  %i.ec = load i8, ptr @__libc_single_threaded, align 1, !tbaa !20
end_hunk_4
begin_hunk_5
_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i117: ; preds = %bb.av, %bb.au
  %.0.i.i.i.i118 = phi i32 [ %i.du, %bb.au ], [ %i.ee, %bb.av ]
  %i.ef = icmp eq i32 %.0.i.i.i.i118, 1
  br i1 %i.ef, label %bb.aw, label %_ZNSt12__shared_ptrIN5arrow6SchemaELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !31

bb.aw:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i117
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.dq) #24
  br label %_ZNSt12__shared_ptrIN5arrow6SchemaELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5arrow6SchemaELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %._crit_edge290, %bb.as, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i117, %bb.aw
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #24
  %i.eg = load ptr, ptr %8, align 8, !tbaa !77
  %i.eh = icmp eq ptr %i.eg, null
  br i1 %i.eh, label %bb.ax, label %_ZN5arrow6ResultISt10shared_ptrINS_6SchemaEEE7DestroyEv.exit.thread.i, !prof !80

bb.ax:                                            ; preds = %_ZNSt12__shared_ptrIN5arrow6SchemaELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.ei = load ptr, ptr %i.ao, align 8, !tbaa !18 ; 8 uses
  %.not.i.i.i.i.i119 = icmp eq ptr %i.ei, null
  br i1 %.not.i.i.i.i.i119, label %_ZN5arrow6ResultISt10shared_ptrINS_6SchemaEEED2Ev.exit, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 8 ; 4 uses
end_hunk_5
begin_hunk_6
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ei) #24
  br label %_ZN5arrow6ResultISt10shared_ptrINS_6SchemaEEE7DestroyEv.exit.i

_ZN5arrow6ResultISt10shared_ptrINS_6SchemaEEE7DestroyEv.exit.i: ; preds = %bb.bd, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i121, %bb.az
  %.pr.i123.pr = load ptr, ptr %8, align 8, !tbaa !77
  %.not.i.i124 = icmp eq ptr %.pr.i123.pr, null
  br i1 %.not.i.i124, label %_ZN5arrow6ResultISt10shared_ptrINS_6SchemaEEED2Ev.exit, label %_ZN5arrow6ResultISt10shared_ptrINS_6SchemaEEE7DestroyEv.exit.thread.i, !prof !86
end_hunk_6
begin_hunk_7
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(24) %8)
  br label %_ZN5arrow6ResultISt10shared_ptrINS_6SchemaEEED2Ev.exit

_ZN5arrow6ResultISt10shared_ptrINS_6SchemaEEED2Ev.exit: ; preds = %bb.ax, %_ZN5arrow6ResultISt10shared_ptrINS_6SchemaEEE7DestroyEv.exit.i, %_ZN5arrow6ResultISt10shared_ptrINS_6SchemaEEE7DestroyEv.exit.thread.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #24
  %i.ey = load ptr, ptr %7, align 8, !tbaa !251   ; 3 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %7, i64 8
end_hunk_7
begin_hunk_8

_ZNSt6vectorISt10shared_ptrIN5arrow6SchemaEESaIS3_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN5arrow6SchemaEES3_EvT_S5_RSaIT0_E.exit.i, %bb.bk
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #24
  br i1 %.not275.lcssa, label %bb.cq, label %bb.el

bb.bl:                                            ; preds = %bb.ab, %bb.ac, %bb.v
  %.pn79.pn.pn = phi { ptr, i32 } [ %i.bv, %bb.v ], [ %i.cc, %bb.ab ], [ %i.cd, %bb.ac ]
end_hunk_8
begin_hunk_9
  br label %bb.cq

bb.cq:                                            ; preds = %_ZNSt12__shared_ptrIN5arrow6SchemaELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit151, %_ZNSt6vectorISt10shared_ptrIN5arrow6SchemaEESaIS3_EED2Ev.exit
  %.2 = phi ptr [ %spec.select, %_ZNSt6vectorISt10shared_ptrIN5arrow6SchemaEESaIS3_EED2Ev.exit ], [ %1, %_ZNSt12__shared_ptrIN5arrow6SchemaELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit151 ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #24
  %i.ju = load ptr, ptr %.2, align 8, !tbaa !270
  %i.jv = load ptr, ptr %i.ju, align 8, !tbaa !69 ; 2 uses
end_hunk_9
begin_hunk_10
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #24
  br label %bb.et

bb.el:                                            ; preds = %_ZNSt12__shared_ptrIN5arrow6SchemaELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit140, %.critedge.a, %_ZNSt6vectorISt10shared_ptrIN5arrow6SchemaEESaIS3_EED2Ev.exit, %_ZNSt12__shared_ptrIN5arrow6SchemaELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit228
  %i.qq = load ptr, ptr %6, align 8, !tbaa !245   ; 3 uses
  %i.qr = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.qs = load ptr, ptr %i.qr, align 8, !tbaa !242 ; 2 uses
end_hunk_10
