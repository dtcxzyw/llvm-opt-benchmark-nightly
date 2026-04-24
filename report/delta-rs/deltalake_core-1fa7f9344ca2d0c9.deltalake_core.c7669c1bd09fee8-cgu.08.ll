inline.NumInlined: 16156
inline.NumDeleted: 5265
begin_hunk_0_@_RNCNvNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7default7parquet23read_parquet_files_impl0Cs14kWLkQVSKO_14deltalake_core:bb.a
  %i.g = alloca [56 x i8], align 8                ; 10 uses
  %i.h = alloca [48 x i8], align 8                ; 6 uses
  %i.i = alloca [8 x i8], align 8                 ; 10 uses
  %i.j = alloca [8 x i8], align 8                 ; 16 uses
  %i.k = alloca [24 x i8], align 8                ; 12 uses
  %i.l = alloca [16 x i8], align 16               ; 10 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 3 uses
end_hunk_0
begin_hunk_1_@_RNCNvNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7default7parquet23read_parquet_files_impl0Cs14kWLkQVSKO_14deltalake_core:bb.a
  %i.x = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %.val40 = load ptr, ptr %i.x, align 8, !nonnull !4, !noundef !4
  %i.y = invoke noundef zeroext i1 @_RNvXs2_NtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7defaultNtCseo6ZV82fEK1_3url3UrlNtB5_6UrlExt12is_presigned(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(88) %.val40)
          to label %bb.d unwind label %.thread44  ; 2 uses

.thread44:                                        ; preds = %bb.c
  %i.z = landingpad { ptr, i32 }
end_hunk_1
begin_hunk_2_@_RNCNvNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7default7parquet23read_parquet_files_impl0Cs14kWLkQVSKO_14deltalake_core:bb.a
  br label %bb.t

bb.t:                                             ; preds = %bb.m, %bb.s
  %.sroa.01.1 = phi i8 [ 1, %bb.s ], [ 0, %bb.m ] ; 9 uses
  %.sroa.3.0 = phi ptr [ @256, %bb.s ], [ @255, %bb.m ] ; 7 uses
  %.sroa.0.0 = phi ptr [ %i.as, %bb.s ], [ %i.am, %bb.m ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
end_hunk_2
begin_hunk_3_@_RNCNvNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7default7parquet23read_parquet_files_impl0Cs14kWLkQVSKO_14deltalake_core:bb.a
bb.ak:                                            ; preds = %bb.aj
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema10StructTypeE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.j) #43
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema10StructTypeEECs14kWLkQVSKO_14deltalake_core.exit unwind label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema10StructTypeEECs14kWLkQVSKO_14deltalake_core.exit65.a

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema10StructTypeEECs14kWLkQVSKO_14deltalake_core.exit65.a: ; preds = %bb.ak
  %2 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  br label %.body67

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema10StructTypeEECs14kWLkQVSKO_14deltalake_core.exit65: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions9PredicateEEECs14kWLkQVSKO_14deltalake_core.exit72, %bb.bb
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  br i1 %.sroa.08.7, label %bb.bl, label %.body67

bb.al:                                            ; preds = %bb.ax
  %3 = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  br i1 %.sroa.08.524, label %bb.bl, label %.body67

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema10StructTypeEECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.aj, %bb.ak
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  br i1 %i.y, label %bb.am, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EECs14kWLkQVSKO_14deltalake_core.exit70

bb.am:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema10StructTypeEECs14kWLkQVSKO_14deltalake_core.exit
  call void @llvm.experimental.noalias.scope.decl(metadata !30459)
end_hunk_3
begin_hunk_4_@_RNCNvNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7default7parquet23read_parquet_files_impl0Cs14kWLkQVSKO_14deltalake_core:bb.a
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions9PredicateEEECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.ao, %bb.ar, %bb.as, %bb.az, %bb.ay, %bb.ba
  %.sroa.01.529 = phi i8 [ 1, %bb.az ], [ 1, %bb.ba ], [ 1, %bb.ay ], [ %.sroa.01.1, %bb.as ], [ %.sroa.01.1, %bb.ar ], [ %.sroa.01.1, %bb.ao ] ; 5 uses
  %.sroa.08.524 = phi i1 [ true, %bb.az ], [ true, %bb.ba ], [ true, %bb.ay ], [ true, %bb.as ], [ true, %bb.ar ], [ false, %bb.ao ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.experimental.noalias.scope.decl(metadata !30466)
  call void @llvm.experimental.noalias.scope.decl(metadata !30469)
end_hunk_4
begin_hunk_5_@_RNCNvNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7default7parquet23read_parquet_files_impl0Cs14kWLkQVSKO_14deltalake_core:bb.a

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions9PredicateEEECs14kWLkQVSKO_14deltalake_core.exit72: ; preds = %.body35, %.body37, %bb.ah, %bb.ad, %bb.au, %bb.at, %bb.av, %bb.bj, %.thread44, %bb.bk, %bb.bc
  %.pn27 = phi { ptr, i32 } [ %i.cx, %bb.bc ], [ %i.z, %bb.bj ], [ %i.bn, %bb.ah ], [ %i.z, %bb.bk ], [ %i.z, %.thread44 ], [ %i.cf, %bb.at ], [ %i.cf, %bb.au ], [ %i.bi, %bb.ad ], [ %.pn20, %bb.av ], [ %i.ao, %.body35 ], [ %.pn12, %.body37 ] ; 2 uses
  %.sroa.08.7 = phi i1 [ true, %bb.bc ], [ true, %bb.bj ], [ false, %bb.ah ], [ true, %bb.bk ], [ true, %.thread44 ], [ true, %bb.at ], [ true, %bb.au ], [ false, %bb.ad ], [ true, %bb.av ], [ true, %.body35 ], [ true, %.body37 ]
  %.sroa.01.7 = phi i8 [ 1, %bb.bc ], [ 1, %bb.bj ], [ %.sroa.01.1, %bb.ah ], [ 1, %bb.bk ], [ 1, %.thread44 ], [ %.sroa.01.1, %bb.at ], [ %.sroa.01.1, %bb.au ], [ %.sroa.01.1, %bb.ad ], [ %.sroa.01.1, %bb.av ], [ 0, %.body35 ], [ 1, %.body37 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.experimental.noalias.scope.decl(metadata !30480)
end_hunk_5
begin_hunk_6_@_RNCNvNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7default7parquet23read_parquet_files_impl0Cs14kWLkQVSKO_14deltalake_core:bb.a
  %i.cu = load ptr, ptr %i.j, align 8, !alias.scope !30486, !nonnull !4, !noundef !4
  %i.cv = atomicrmw sub ptr %i.cu, i64 1 release, align 8, !noalias !30486
  %i.cw = icmp eq i64 %i.cv, 1
  br i1 %i.cw, label %bb.bb, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema10StructTypeEECs14kWLkQVSKO_14deltalake_core.exit65

bb.bb:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions9PredicateEEECs14kWLkQVSKO_14deltalake_core.exit72
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema10StructTypeE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.j) #43
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema10StructTypeEECs14kWLkQVSKO_14deltalake_core.exit65 unwind label %bb.aw

bb.bc:                                            ; preds = %bb.ba
  %i.cx = landingpad { ptr, i32 }
end_hunk_6
begin_hunk_7_@_RNCNvNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7default7parquet23read_parquet_files_impl0Cs14kWLkQVSKO_14deltalake_core:bb.a

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema10StructTypeEECs14kWLkQVSKO_14deltalake_core.exit62: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions9PredicateEEECs14kWLkQVSKO_14deltalake_core.exit, %bb.ax
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  br i1 %.sroa.08.524, label %bb.bd, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaEECs14kWLkQVSKO_14deltalake_core.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaEECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.bf, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema10StructTypeEECs14kWLkQVSKO_14deltalake_core.exit62
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
end_hunk_7
begin_hunk_8_@_RNCNvNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7default7parquet23read_parquet_files_impl0Cs14kWLkQVSKO_14deltalake_core:bb.a
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #39
  unreachable

.body67:                                          ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema10StructTypeEECs14kWLkQVSKO_14deltalake_core.exit65.a, %bb.al, %bb.bh, %bb.be, %bb.bl, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema10StructTypeEECs14kWLkQVSKO_14deltalake_core.exit65
  %.pn31 = phi { ptr, i32 } [ %.pn27, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema10StructTypeEECs14kWLkQVSKO_14deltalake_core.exit65 ], [ %.pn2956, %bb.bl ], [ %i.dc, %bb.bh ], [ %i.cz, %bb.be ], [ %3, %bb.al ], [ %2, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema10StructTypeEECs14kWLkQVSKO_14deltalake_core.exit65.a ] ; 3 uses
  %.sroa.01.8 = phi i8 [ %.sroa.01.7, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema10StructTypeEECs14kWLkQVSKO_14deltalake_core.exit65 ], [ %.sroa.01.257, %bb.bl ], [ %.sroa.01.529, %bb.bh ], [ %.sroa.01.529, %bb.be ], [ %.sroa.01.529, %bb.al ], [ %.sroa.01.1, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema10StructTypeEECs14kWLkQVSKO_14deltalake_core.exit65.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  %i.db = trunc nuw i8 %.sroa.01.8 to i1
  br i1 %i.db, label %bb.bm, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EECs14kWLkQVSKO_14deltalake_core.exit74
end_hunk_8
begin_hunk_9_@_RNCNvNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7default7parquet23read_parquet_files_impl0Cs14kWLkQVSKO_14deltalake_core:bb.a
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions9PredicateE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.i) #43
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions9PredicateEEECs14kWLkQVSKO_14deltalake_core.exit72 unwind label %bb.aw

bb.bl:                                            ; preds = %bb.al, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema10StructTypeEECs14kWLkQVSKO_14deltalake_core.exit65
  %.sroa.01.257 = phi i8 [ %.sroa.01.529, %bb.al ], [ %.sroa.01.7, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema10StructTypeEECs14kWLkQVSKO_14deltalake_core.exit65 ]
  %.pn2956 = phi { ptr, i32 } [ %3, %bb.al ], [ %.pn27, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema10StructTypeEECs14kWLkQVSKO_14deltalake_core.exit65 ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(24) %i.k) #41
          to label %.body67 unwind label %bb.aw

end_hunk_9
begin_hunk_10_@_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4zeroINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB11_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIBX_IB1Q_DNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB3t_5error5ErrorENtNtB11_6marker4SendEL_EEB4o_EE4sendCs14kWLkQVSKO_14deltalake_core:bb.a
          to label %.body.thread unwind label %bb.ag

.body.thread67:                                   ; preds = %.body.i, %.body.thread, %.body.a
  %.pn.pn63 = phi { ptr, i32 } [ %eh.lpad-body.i, %.body.i ], [ %.pn.pn64, %.body.thread ], [ %eh.lpad-body21, %.body.a ]
  resume { ptr, i32 } %.pn.pn63

.body.thread:                                     ; preds = %bb.bi, %bb.e, %bb.b, %.body.a
  %.pn.pn64 = phi { ptr, i32 } [ %lpad.thr_comm.split-lp, %bb.b ], [ %eh.lpad-body21, %.body.a ], [ %i.y, %bb.e ], [ %lpad.thr_comm, %bb.bi ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIBH_IB1j_DNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB2W_5error5ErrorENtNtB4_6marker4SendEL_EEB3R_EECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 16 dereferenceable(96) %2) #41
          to label %.body.thread67 unwind label %bb.ag
}
end_hunk_10
begin_hunk_11_@_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4zeroINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB11_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIBX_NtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB3l_5error5ErrorENtNtB11_6marker4SendEL_EEB3W_EE4sendCs14kWLkQVSKO_14deltalake_core:bb.a
          to label %.body.thread unwind label %bb.ag

.body.thread67:                                   ; preds = %.body.i, %.body.thread, %.body.a
  %.pn.pn63 = phi { ptr, i32 } [ %eh.lpad-body.i, %.body.i ], [ %.pn.pn64, %.body.thread ], [ %eh.lpad-body21, %.body.a ]
  resume { ptr, i32 } %.pn.pn63

.body.thread:                                     ; preds = %bb.bi, %bb.e, %bb.b, %.body.a
  %.pn.pn64 = phi { ptr, i32 } [ %lpad.thr_comm.split-lp, %bb.b ], [ %eh.lpad-body21, %.body.a ], [ %i.y, %bb.e ], [ %lpad.thr_comm, %bb.bi ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIBH_NtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB2O_5error5ErrorENtNtB4_6marker4SendEL_EEB3p_EECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 16 dereferenceable(96) %2) #41
          to label %.body.thread67 unwind label %bb.ag
}
end_hunk_11
begin_hunk_12_@_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4zeroINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB11_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIBX_NtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorENtNtB11_6marker4SendEL_EEB3T_EE4sendCs14kWLkQVSKO_14deltalake_core:bb.a
          to label %.body.thread unwind label %bb.ag

.body.thread67:                                   ; preds = %.body.i, %.body.thread, %.body.a
  %.pn.pn63 = phi { ptr, i32 } [ %eh.lpad-body.i, %.body.i ], [ %.pn.pn64, %.body.thread ], [ %eh.lpad-body21, %.body.a ]
  resume { ptr, i32 } %.pn.pn63

.body.thread:                                     ; preds = %bb.bi, %bb.e, %bb.b, %.body.a
  %.pn.pn64 = phi { ptr, i32 } [ %lpad.thr_comm.split-lp, %bb.b ], [ %eh.lpad-body21, %.body.a ], [ %i.y, %bb.e ], [ %lpad.thr_comm, %bb.bi ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIBH_NtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorENtNtB4_6marker4SendEL_EEB3m_EECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 16 dereferenceable(96) %2) #41
          to label %.body.thread67 unwind label %bb.ag
}
end_hunk_12
begin_hunk_13_@_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4zeroINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel13ParquetFooterNtNtB1A_5error5ErrorEE4sendCs14kWLkQVSKO_14deltalake_core:bb.a
          to label %.body.thread unwind label %bb.ac

.body.thread66:                                   ; preds = %.body.i, %.body.thread, %.body.a
  %.pn.pn62 = phi { ptr, i32 } [ %eh.lpad-body.i, %.body.i ], [ %.pn.pn63, %.body.thread ], [ %i.bx, %.body.a ]
  resume { ptr, i32 } %.pn.pn62

.body.thread:                                     ; preds = %bb.be, %bb.e, %bb.b, %.body.a
  %.pn.pn63 = phi { ptr, i32 } [ %lpad.thr_comm.split-lp, %bb.b ], [ %i.bx, %.body.a ], [ %i.y, %bb.e ], [ %lpad.thr_comm, %bb.be ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel13ParquetFooterNtNtB14_5error5ErrorEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 16 dereferenceable(96) %2) #41
          to label %.body.thread66 unwind label %bb.ac
}
end_hunk_13
begin_hunk_14_@_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4zeroINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB1A_5error5ErrorEE4sendCs14kWLkQVSKO_14deltalake_core:bb.a
          to label %.body.thread unwind label %bb.ac

.body.thread68:                                   ; preds = %.body.i, %.body.thread, %.body.a
  %.pn.pn64 = phi { ptr, i32 } [ %eh.lpad-body.i, %.body.i ], [ %.pn.pn65, %.body.thread ], [ %eh.lpad-body21, %.body.a ]
  resume { ptr, i32 } %.pn.pn64

.body.thread:                                     ; preds = %bb.be, %bb.e, %bb.b, %.body.a
  %.pn.pn65 = phi { ptr, i32 } [ %lpad.thr_comm.split-lp, %bb.b ], [ %eh.lpad-body21, %.body.a ], [ %i.y, %bb.e ], [ %lpad.thr_comm, %bb.be ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB14_5error5ErrorEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 16 dereferenceable(112) %2) #41
          to label %.body.thread68 unwind label %bb.ac
}
end_hunk_14
begin_hunk_15_@_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4zeroINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultuNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorEE4sendCs14kWLkQVSKO_14deltalake_core:bb.a
          to label %.body.thread66 unwind label %bb.aa

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultuNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorEECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.ba, %.body.i, %.body.thread66, %bb.bm, %.body.a
  %.pn.pn63 = phi { ptr, i32 } [ %i.ds, %bb.ba ], [ %i.bx, %.body.a ], [ %.pn.pn69, %bb.bm ], [ %.pn.pn69, %.body.thread66 ], [ %eh.lpad-body.i, %.body.i ]
  resume { ptr, i32 } %.pn.pn63

.body.thread66:                                   ; preds = %bb.bl, %bb.e, %bb.b, %.body.a
  %.pn.pn69 = phi { ptr, i32 } [ %lpad.thr_comm.split-lp, %bb.b ], [ %i.bx, %.body.a ], [ %i.y, %bb.e ], [ %lpad.thr_comm, %bb.bl ] ; 2 uses
  %i.ek = load i64, ptr %2, align 16, !range !1237, !alias.scope !35169, !noundef !4
  %i.el = icmp eq i64 %i.ek, -9223372036854775743
  br i1 %i.el, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultuNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorEECs14kWLkQVSKO_14deltalake_core.exit, label %bb.bm
end_hunk_15
begin_hunk_16_@_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4zeroINtB5_7ChannelTINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtB12_6result6ResultINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB2A_5error5ErrorEEINtNtB12_3pin3PinIB1X_DNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB1z_NtNtB12_6marker4SendEL_EEEE4sendCs14kWLkQVSKO_14deltalake_core:bb.a
          to label %.body.thread65 unwind label %bb.z

.body.thread.a:                                   ; preds = %bb.ay, %.body.i, %.body.thread65, %.body.a
  %.pn.pn62 = phi { ptr, i32 } [ %i.do, %bb.ay ], [ %.pn.pn68, %.body.thread65 ], [ %i.bx, %.body.a ], [ %eh.lpad-body.i, %.body.i ]
  resume { ptr, i32 } %.pn.pn62

.body.thread65:                                   ; preds = %bb.bk, %bb.e, %bb.b, %.body.a
  %.pn.pn68 = phi { ptr, i32 } [ %lpad.thr_comm.split-lp, %bb.b ], [ %i.bx, %.body.a ], [ %i.y, %bb.e ], [ %lpad.thr_comm, %bb.bk ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTINtNtB4_6option6OptionINtNtB4_6result6ResultINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB23_5error5ErrorEEINtNtB4_3pin3PinIB1q_DNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB13_NtNtB4_6marker4SendEL_EEEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 16 dereferenceable(112) %2) #41
          to label %.body.thread.a unwind label %bb.z
}
end_hunk_16
begin_hunk_17_@_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4zeroINtB5_7ChannelTINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtB12_6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB1Y_5error5ErrorEEINtNtB12_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB1z_NtNtB12_6marker4SendEL_EEEE4sendCs14kWLkQVSKO_14deltalake_core:bb.a
          to label %.body.thread65 unwind label %bb.z

.body.thread.a:                                   ; preds = %bb.ay, %.body.i, %.body.thread65, %.body.a
  %.pn.pn62 = phi { ptr, i32 } [ %i.do, %bb.ay ], [ %.pn.pn68, %.body.thread65 ], [ %i.bx, %.body.a ], [ %eh.lpad-body.i, %.body.i ]
  resume { ptr, i32 } %.pn.pn62

.body.thread65:                                   ; preds = %bb.bk, %bb.e, %bb.b, %.body.a
  %.pn.pn68 = phi { ptr, i32 } [ %lpad.thr_comm.split-lp, %bb.b ], [ %i.bx, %.body.a ], [ %i.y, %bb.e ], [ %lpad.thr_comm, %bb.bk ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTINtNtB4_6option6OptionINtNtB4_6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB1r_5error5ErrorEEINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB13_NtNtB4_6marker4SendEL_EEEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 16 dereferenceable(128) %2) #41
          to label %.body.thread.a unwind label %bb.z
}
end_hunk_17
begin_hunk_18_@_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4zeroINtB5_7ChannelTINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtB12_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorEEINtNtB12_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB1z_NtNtB12_6marker4SendEL_EEEE4sendCs14kWLkQVSKO_14deltalake_core:bb.a
          to label %.body.thread65 unwind label %bb.z

.body.thread.a:                                   ; preds = %bb.ay, %.body.i, %.body.thread65, %.body.a
  %.pn.pn62 = phi { ptr, i32 } [ %i.do, %bb.ay ], [ %.pn.pn68, %.body.thread65 ], [ %i.bx, %.body.a ], [ %eh.lpad-body.i, %.body.i ]
  resume { ptr, i32 } %.pn.pn62

.body.thread65:                                   ; preds = %bb.bk, %bb.e, %bb.b, %.body.a
  %.pn.pn68 = phi { ptr, i32 } [ %lpad.thr_comm.split-lp, %bb.b ], [ %i.bx, %.body.a ], [ %i.y, %bb.e ], [ %lpad.thr_comm, %bb.bk ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorEEINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB13_NtNtB4_6marker4SendEL_EEEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 16 dereferenceable(112) %2) #41
          to label %.body.thread.a unwind label %bb.z
}
end_hunk_18
