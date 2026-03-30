begin_hunk_0
define internal void @_ZN5arrow3ipc12_GLOBAL__N_125RecordBatchFileReaderImpl33ReadRecordBatchWithCustomMetadataEi(ptr dead_on_unwind noalias writable sret(%"class.arrow::Result.13") align 8 %0, ptr noundef nonnull align 8 dereferenceable(513) %1, i32 noundef %2) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %.sroa.0.i.i.i = alloca { i64, i64 }, align 8   ; 4 uses
  %4 = alloca %"class.std::function.855", align 8 ; 9 uses
  %5 = alloca %"class.arrow::Status", align 8     ; 4 uses
  %6 = alloca %"class.arrow::Result", align 8     ; 16 uses
  %7 = alloca %"class.arrow::Future.843", align 8 ; 8 uses
end_hunk_0
begin_hunk_1
  %14 = alloca %"class.arrow::Status", align 8    ; 5 uses
  %15 = alloca %"class.arrow::Status", align 8    ; 8 uses
  %16 = alloca %"class.arrow::Status", align 8    ; 7 uses
  %17 = alloca %"class.std::function.855", align 8 ; 15 uses
  %18 = alloca %class.anon.858, align 16          ; 21 uses
  %19 = alloca %"class.arrow::Result.859", align 8 ; 11 uses
  %20 = alloca %"struct.arrow::ipc::internal::FileBlock", align 8 ; 5 uses
end_hunk_1
begin_hunk_2
_ZN5arrow6StatusD2Ev.exit128:                     ; preds = %_ZN5arrow6StatusD2Ev.exit122, %_ZN5arrow6StatusD2Ev.exit122.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #39
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #39
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %17, i8 0, i64 32, i1 false)
  %i.ib = getelementptr inbounds nuw i8, ptr %1, i64 120 ; 3 uses
  %i.ic = load ptr, ptr %i.ib, align 8, !tbaa !33 ; 3 uses
  %i.id = getelementptr inbounds nuw i8, ptr %1, i64 136 ; 2 uses
end_hunk_2
begin_hunk_3
  store ptr %i.ln, ptr %i.lz, align 8, !tbaa !356
  %i.ma = getelementptr inbounds nuw i8, ptr %i.ls, i64 96
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.ma, ptr noundef nonnull align 8 dereferenceable(48) %i.lq, i64 48, i1 false)
  store ptr %i.ls, ptr %4, align 8, !tbaa !75
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.i.i.i, ptr noundef nonnull align 8 dereferenceable(32) %4, i64 16, i1 false), !tbaa.struct !2244
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %17, i64 16, i1 false), !tbaa.struct !2244
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %17, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.i.i.i, i64 16, i1 false), !tbaa.struct !2244
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i.i)
  %i.mb = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 3 uses
  %i.mc = getelementptr inbounds nuw i8, ptr %17, i64 24
  %i.md = load <2 x ptr>, ptr %i.mb, align 8, !tbaa !75
  %i.me = load ptr, ptr %i.mb, align 8, !tbaa !75 ; 2 uses
  store ptr @_ZNSt17_Function_handlerIFN5arrow6StatusEPKvPNS0_2io16RandomAccessFileEEZNS0_3ipc12_GLOBAL__N_125RecordBatchFileReaderImpl33ReadRecordBatchWithCustomMetadataEiEUlS3_S6_E_E10_M_managerERSt9_Any_dataRKSD_St18_Manager_operation, ptr %i.mb, align 8, !tbaa !75
  store <2 x ptr> %i.md, ptr %i.lt, align 8, !tbaa !75
  store ptr @_ZNSt17_Function_handlerIFN5arrow6StatusEPKvPNS0_2io16RandomAccessFileEEZNS0_3ipc12_GLOBAL__N_125RecordBatchFileReaderImpl33ReadRecordBatchWithCustomMetadataEiEUlS3_S6_E_E9_M_invokeERKSt9_Any_dataOS3_OS6_, ptr %i.mc, align 8, !tbaa !75
  %.not.i.i136 = icmp eq ptr %i.me, null
  br i1 %.not.i.i136, label %_ZZN5arrow3ipc12_GLOBAL__N_125RecordBatchFileReaderImpl33ReadRecordBatchWithCustomMetadataEiENUlPKvPNS_2io16RandomAccessFileEE_D2Ev.exit, label %bb.dc
end_hunk_3
begin_hunk_4
_ZN5arrow6ResultINS_3ipc8internal9FileBlockEED2Ev.exit200: ; preds = %bb.gf, %bb.gg, %bb.gh
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #39
  %i.um = getelementptr inbounds nuw i8, ptr %17, i64 16
  %i.un = load ptr, ptr %i.um, align 8, !tbaa !1758 ; 2 uses
  %.not.i201 = icmp eq ptr %i.un, null
  br i1 %.not.i201, label %_ZNSt14_Function_baseD2Ev.exit, label %bb.gi

end_hunk_4
begin_hunk_5
bb.gk:                                            ; preds = %bb.dl, %_ZN5arrow6ResultINS_3ipc8internal9FileBlockEED2Ev.exit, %bb.di
  %.pn61.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn55, %bb.di ], [ %.pn61.pn.pn.pn.pn, %_ZN5arrow6ResultINS_3ipc8internal9FileBlockEED2Ev.exit ], [ %i.nk, %bb.dl ]
  %i.ur = getelementptr inbounds nuw i8, ptr %17, i64 16
  %i.us = load ptr, ptr %i.ur, align 8, !tbaa !1758 ; 2 uses
  %.not.i202 = icmp eq ptr %i.us, null
  br i1 %.not.i202, label %_ZNSt14_Function_baseD2Ev.exit203, label %bb.gl

end_hunk_5
