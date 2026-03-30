begin_hunk_0
@_ZL15PrintAllOptions = internal global %"class.llvh::cl::opt.33" zeroinitializer, align 8
@.str.58 = private unnamed_addr constant [18 x i8] c"print-all-options\00", align 1
@.str.59 = private unnamed_addr constant [51 x i8] c"Print all option values after command line parsing\00", align 1
@_ZL22OverrideVersionPrinter = internal global %"class.std::function" zeroinitializer, align 8
@_ZL6VersOp = internal global %"class.llvh::cl::opt.115" zeroinitializer, align 8
@.str.62 = private unnamed_addr constant [8 x i8] c"version\00", align 1
@.str.63 = private unnamed_addr constant [36 x i8] c"Display the version of this program\00", align 1
end_hunk_0
begin_hunk_1
; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN4llvh2cl17SetVersionPrinterESt8functionIFvRNS_11raw_ostreamEEE(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %.sroa.0.i.i.i = alloca { i64, i64 }, align 8   ; 4 uses
  %1 = alloca %"class.std::function", align 8     ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #29
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %1, i8 0, i64 32, i1 false)
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !346  ; 2 uses
  %.not.i.i.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.not.i.i, label %_ZNSt8functionIFvRN4llvh11raw_ostreamEEEC2ERKS4_.exit.i, label %bb.b
end_hunk_1
begin_hunk_2
bb.b:                                             ; preds = %bb.a
  %i.c = call noundef zeroext i1 %i.b(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef 2) #29 ; 0 uses
  %i.d = load <2 x ptr>, ptr %i.a, align 8, !tbaa !64
  br label %_ZNSt8functionIFvRN4llvh11raw_ostreamEEEC2ERKS4_.exit.i

_ZNSt8functionIFvRN4llvh11raw_ostreamEEEC2ERKS4_.exit.i: ; preds = %bb.b, %bb.a
  %2 = phi <2 x ptr> [ zeroinitializer, %bb.a ], [ %i.d, %bb.b ]
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.i.i.i, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 16, i1 false), !tbaa.struct !356
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) @_ZL22OverrideVersionPrinter, i64 16, i1 false), !tbaa.struct !356
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) @_ZL22OverrideVersionPrinter, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.i.i.i, i64 16, i1 false), !tbaa.struct !356
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i.i)
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.f = load <2 x ptr>, ptr getelementptr inbounds nuw (i8, ptr @_ZL22OverrideVersionPrinter, i64 16), align 8, !tbaa !64
  %i.g = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZL22OverrideVersionPrinter, i64 16), align 8, !tbaa !64 ; 2 uses
  store <2 x ptr> %i.f, ptr %i.e, align 8, !tbaa !64
  store <2 x ptr> %2, ptr getelementptr inbounds nuw (i8, ptr @_ZL22OverrideVersionPrinter, i64 16), align 8, !tbaa !64
  %.not.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i, label %_ZNSt8functionIFvRN4llvh11raw_ostreamEEEaSERKS4_.exit, label %bb.c

end_hunk_2
begin_hunk_3
  br i1 %i.c, label %bb.c, label %_ZN4llvh2cl11opt_storageIN12_GLOBAL__N_114VersionPrinterELb1ELb1EE8setValueIbEEvRKT_b.exit

bb.c:                                             ; preds = %bb.b
  %i.d = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZL22OverrideVersionPrinter, i64 16), align 8, !tbaa !346
  %.not.i.i.i.not.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i.not.i.i, label %bb.e, label %bb.d

end_hunk_3
begin_hunk_4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #29
  %i.dw = call i32 @__cxa_atexit(ptr nonnull @_ZN4llvh2cl6OptionD2Ev, ptr nonnull @_ZL15PrintAllOptions, ptr nonnull @__dso_handle) #29 ; 0 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) @_ZL22OverrideVersionPrinter, i8 0, i64 32, i1 false)
  %i.dx = call i32 @__cxa_atexit(ptr nonnull @_ZNSt14_Function_baseD2Ev, ptr nonnull @_ZL22OverrideVersionPrinter, ptr nonnull @__dso_handle) #29 ; 0 uses
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @_ZL6VersOp, i64 8), align 8, !tbaa !279
  %i.dy = load i16, ptr getelementptr inbounds nuw (i8, ptr @_ZL6VersOp, i64 12), align 4
end_hunk_4
