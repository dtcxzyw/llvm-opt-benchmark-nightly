Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/DWARFDebugInfoEntry?download=true
inline.NumInlined: 1388
inline.NumDeleted: 824
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_ZNK12lldb_private6plugin5dwarf19DWARFDebugInfoEntry27GetAttributeValueAsUnsignedEPKNS1_9DWARFUnitEN4llvm5dwarf9AttributeEmb:bb.a
  %i.d = load i64, ptr %i.b, align 8
  %spec.select = select i1 %.not, i64 %3, i64 %i.d
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  ret i64 %spec.select
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local { i64, i8 } @_ZNK12lldb_private6plugin5dwarf19DWARFDebugInfoEntry35GetAttributeValueAsOptionalUnsignedEPKNS1_9DWARFUnitEN4llvm5dwarf9AttributeEb(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr noundef %1, i16 noundef zeroext %2, i1 noundef zeroext %3) local_unnamed_addr #0 align 2 {
bb.a:
  %4 = alloca %"class.lldb_private::plugin::dwarf::DWARFFormValue", align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #18
  store ptr null, ptr %4, align 8, !tbaa !129
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i16 0, ptr %i.a, align 8, !tbaa !132
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, i8 0, i64 16, i1 false)
  %i.c = call noundef i64 @_ZNK12lldb_private6plugin5dwarf19DWARFDebugInfoEntry17GetAttributeValueEPKNS1_9DWARFUnitEN4llvm5dwarf9AttributeERNS1_14DWARFFormValueEPmb(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, i16 noundef zeroext %2, ptr noundef nonnull align 8 dereferenceable(40) %4, ptr noundef null, i1 noundef zeroext %3)
  %.not = icmp ne i64 %i.c, 0                     ; 2 uses
  %i.d = load i64, ptr %i.b, align 8
  %spec.select = select i1 %.not, i64 %i.d, i64 undef
  %spec.select3 = zext i1 %.not to i8
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  %.fca.0.insert = insertvalue { i64, i8 } poison, i64 %spec.select, 0
  %.fca.1.insert = insertvalue { i64, i8 } %.fca.0.insert, i8 %spec.select3, 1
  ret { i64, i8 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local { ptr, ptr } @_ZNK12lldb_private6plugin5dwarf19DWARFDebugInfoEntry28GetAttributeValueAsReferenceEPKNS1_9DWARFUnitEN4llvm5dwarf9AttributeEb(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr noundef %1, i16 noundef zeroext %2, i1 noundef zeroext %3) local_unnamed_addr #0 align 2 {
bb.a:
  %4 = alloca %"class.lldb_private::plugin::dwarf::DWARFFormValue", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #18
  store ptr null, ptr %4, align 8, !tbaa !129
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i16 0, ptr %i.a, align 8, !tbaa !132
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, i8 0, i64 16, i1 false)
  %i.c = call noundef i64 @_ZNK12lldb_private6plugin5dwarf19DWARFDebugInfoEntry17GetAttributeValueEPKNS1_9DWARFUnitEN4llvm5dwarf9AttributeERNS1_14DWARFFormValueEPmb(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, i16 noundef zeroext %2, ptr noundef nonnull align 8 dereferenceable(40) %4, ptr noundef null, i1 noundef zeroext %3)
  %.not = icmp eq i64 %i.c, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = call { ptr, ptr } @_ZNK12lldb_private6plugin5dwarf14DWARFFormValue9ReferenceEv(ptr noundef nonnull align 8 dereferenceable(40) %4) #18 ; 2 uses
  %i.e = extractvalue { ptr, ptr } %i.d, 0
  %i.f = extractvalue { ptr, ptr } %i.d, 1
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.0.0 = phi ptr [ %i.e, %bb.b ], [ null, %bb.a ]
  %.sroa.4.0 = phi ptr [ %i.f, %bb.b ], [ null, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  %.fca.0.insert = insertvalue { ptr, ptr } poison, ptr %.sroa.0.0, 0
  %.fca.1.insert = insertvalue { ptr, ptr } %.fca.0.insert, ptr %.sroa.4.0, 1
  ret { ptr, ptr } %.fca.1.insert
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #5

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef i64 @_ZNK12lldb_private6plugin5dwarf19DWARFDebugInfoEntry26GetAttributeValueAsAddressEPKNS1_9DWARFUnitEN4llvm5dwarf9AttributeEmb(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr noundef %1, i16 noundef zeroext %2, i64 noundef %3, i1 noundef zeroext %4) local_unnamed_addr #0 align 2 {
bb.a:
  %5 = alloca %"class.lldb_private::plugin::dwarf::DWARFFormValue", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #18
  store ptr null, ptr %5, align 8, !tbaa !129
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i16 0, ptr %i.a, align 8, !tbaa !132
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, i8 0, i64 16, i1 false)
  %i.c = call noundef i64 @_ZNK12lldb_private6plugin5dwarf19DWARFDebugInfoEntry17GetAttributeValueEPKNS1_9DWARFUnitEN4llvm5dwarf9AttributeERNS1_14DWARFFormValueEPmb(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, i16 noundef zeroext %2, ptr noundef nonnull align 8 dereferenceable(40) %5, ptr noundef null, i1 noundef zeroext %4)
  %.not = icmp eq i64 %i.c, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = call noundef i64 @_ZNK12lldb_private6plugin5dwarf14DWARFFormValue7AddressEv(ptr noundef nonnull align 8 dereferenceable(40) %5) #18
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i64 [ %i.d, %bb.b ], [ %3, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  ret i64 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef i64 @_ZNK12lldb_private6plugin5dwarf19DWARFDebugInfoEntry18GetAttributeHighPCEPKNS1_9DWARFUnitEmmb(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr noundef %1, i64 noundef %2, i64 noundef %3, i1 noundef zeroext %4) local_unnamed_addr #0 align 2 {
bb.a:
  %5 = alloca %"class.lldb_private::plugin::dwarf::DWARFFormValue", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #18
  store ptr null, ptr %5, align 8, !tbaa !129
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  store i16 0, ptr %i.a, align 8, !tbaa !132
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, i8 0, i64 16, i1 false)
  %i.c = call noundef i64 @_ZNK12lldb_private6plugin5dwarf19DWARFDebugInfoEntry17GetAttributeValueEPKNS1_9DWARFUnitEN4llvm5dwarf9AttributeERNS1_14DWARFFormValueEPmb(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, i16 noundef zeroext 18, ptr noundef nonnull align 8 dereferenceable(40) %5, ptr noundef null, i1 noundef zeroext %4)
  %.not = icmp eq i64 %i.c, 0
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load i16, ptr %i.a, align 8, !tbaa !132
  switch i16 %i.d, label %bb.d [
    i16 7937, label %bb.c
    i16 27, label %bb.c
    i16 1, label %bb.c
  ]

bb.c:                                             ; preds = %bb.b, %bb.b, %bb.b
  %i.e = call noundef i64 @_ZNK12lldb_private6plugin5dwarf14DWARFFormValue7AddressEv(ptr noundef nonnull align 8 dereferenceable(40) %5) #18
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.f = load i64, ptr %i.b, align 8, !tbaa !116
  %i.g = add i64 %i.f, %2
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.c, %bb.d
  %.1 = phi i64 [ %i.g, %bb.d ], [ %i.e, %bb.c ], [ %3, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  ret i64 %.1
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef zeroext i1 @_ZNK12lldb_private6plugin5dwarf19DWARFDebugInfoEntry24GetAttributeAddressRangeEPKNS1_9DWARFUnitERmS6_mb(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr noundef %1, ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(8) initializes((0, 8)) %2, ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(8) initializes((0, 8)) %3, i64 noundef %4, i1 noundef zeroext %5) local_unnamed_addr #0 align 2 {
bb.a:
  %6 = alloca %"class.lldb_private::plugin::dwarf::DWARFFormValue", align 8 ; 8 uses
  %7 = alloca %"class.lldb_private::plugin::dwarf::DWARFFormValue", align 8 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #18
  store ptr null, ptr %7, align 8, !tbaa !129
  %i.a = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i16 0, ptr %i.a, align 8, !tbaa !132
  %i.b = getelementptr inbounds nuw i8, ptr %7, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, i8 0, i64 16, i1 false)
  %i.c = call noundef i64 @_ZNK12lldb_private6plugin5dwarf19DWARFDebugInfoEntry17GetAttributeValueEPKNS1_9DWARFUnitEN4llvm5dwarf9AttributeERNS1_14DWARFFormValueEPmb(ptr noundef nonnull readonly align 8 dereferenceable(16) %0, ptr noundef %1, i16 noundef zeroext 17, ptr noundef nonnull align 8 dereferenceable(40) %7, ptr noundef null, i1 noundef zeroext %5)
  %.not.i = icmp eq i64 %i.c, 0
  br i1 %.not.i, label %_ZNK12lldb_private6plugin5dwarf19DWARFDebugInfoEntry26GetAttributeValueAsAddressEPKNS1_9DWARFUnitEN4llvm5dwarf9AttributeEmb.exit.thread, label %_ZNK12lldb_private6plugin5dwarf19DWARFDebugInfoEntry26GetAttributeValueAsAddressEPKNS1_9DWARFUnitEN4llvm5dwarf9AttributeEmb.exit

_ZNK12lldb_private6plugin5dwarf19DWARFDebugInfoEntry26GetAttributeValueAsAddressEPKNS1_9DWARFUnitEN4llvm5dwarf9AttributeEmb.exit.thread: ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #18
  br label %bb.f

_ZNK12lldb_private6plugin5dwarf19DWARFDebugInfoEntry26GetAttributeValueAsAddressEPKNS1_9DWARFUnitEN4llvm5dwarf9AttributeEmb.exit: ; preds = %bb.a
  %i.d = call noundef i64 @_ZNK12lldb_private6plugin5dwarf14DWARFFormValue7AddressEv(ptr noundef nonnull align 8 dereferenceable(40) %7) #18 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #18
  store i64 %i.d, ptr %2, align 8, !tbaa !17
  %.not = icmp eq i64 %i.d, %4
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %_ZNK12lldb_private6plugin5dwarf19DWARFDebugInfoEntry26GetAttributeValueAsAddressEPKNS1_9DWARFUnitEN4llvm5dwarf9AttributeEmb.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #18
  store ptr null, ptr %6, align 8, !tbaa !129
  %i.e = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  store i16 0, ptr %i.e, align 8, !tbaa !132
  %i.f = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.f, i8 0, i64 16, i1 false)
  %i.g = call noundef i64 @_ZNK12lldb_private6plugin5dwarf19DWARFDebugInfoEntry17GetAttributeValueEPKNS1_9DWARFUnitEN4llvm5dwarf9AttributeERNS1_14DWARFFormValueEPmb(ptr noundef nonnull readonly align 8 dereferenceable(16) %0, ptr noundef %1, i16 noundef zeroext 18, ptr noundef nonnull align 8 dereferenceable(40) %6, ptr noundef null, i1 noundef zeroext %5)
  %.not.i21 = icmp eq i64 %i.g, 0
  br i1 %.not.i21, label %_ZNK12lldb_private6plugin5dwarf19DWARFDebugInfoEntry18GetAttributeHighPCEPKNS1_9DWARFUnitEmmb.exit.thread, label %bb.c

_ZNK12lldb_private6plugin5dwarf19DWARFDebugInfoEntry18GetAttributeHighPCEPKNS1_9DWARFUnitEmmb.exit.thread: ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #18
  br label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.h = load i16, ptr %i.e, align 8, !tbaa !132
  switch i16 %i.h, label %bb.e [
    i16 7937, label %bb.d
    i16 27, label %bb.d
    i16 1, label %bb.d
  ]

bb.d:                                             ; preds = %bb.c, %bb.c, %bb.c
  %i.i = call noundef i64 @_ZNK12lldb_private6plugin5dwarf14DWARFFormValue7AddressEv(ptr noundef nonnull align 8 dereferenceable(40) %6) #18
  br label %_ZNK12lldb_private6plugin5dwarf19DWARFDebugInfoEntry18GetAttributeHighPCEPKNS1_9DWARFUnitEmmb.exit

bb.e:                                             ; preds = %bb.c
  %i.j = load i64, ptr %i.f, align 8, !tbaa !116
  %i.k = add i64 %i.j, %i.d
  br label %_ZNK12lldb_private6plugin5dwarf19DWARFDebugInfoEntry18GetAttributeHighPCEPKNS1_9DWARFUnitEmmb.exit

_ZNK12lldb_private6plugin5dwarf19DWARFDebugInfoEntry18GetAttributeHighPCEPKNS1_9DWARFUnitEmmb.exit: ; preds = %bb.d, %bb.e
  %.1.i = phi i64 [ %i.k, %bb.e ], [ %i.i, %bb.d ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #18
  store i64 %.1.i, ptr %3, align 8, !tbaa !17
  %.not20 = icmp eq i64 %.1.i, %4
  br i1 %.not20, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZNK12lldb_private6plugin5dwarf19DWARFDebugInfoEntry18GetAttributeHighPCEPKNS1_9DWARFUnitEmmb.exit.thread, %_ZNK12lldb_private6plugin5dwarf19DWARFDebugInfoEntry26GetAttributeValueAsAddressEPKNS1_9DWARFUnitEN4llvm5dwarf9AttributeEmb.exit.thread, %_ZNK12lldb_private6plugin5dwarf19DWARFDebugInfoEntry18GetAttributeHighPCEPKNS1_9DWARFUnitEmmb.exit, %_ZNK12lldb_private6plugin5dwarf19DWARFDebugInfoEntry26GetAttributeValueAsAddressEPKNS1_9DWARFUnitEN4llvm5dwarf9AttributeEmb.exit
  store i64 %4, ptr %2, align 8, !tbaa !17
  store i64 %4, ptr %3, align 8, !tbaa !17
  br label %bb.g

bb.g:                                             ; preds = %_ZNK12lldb_private6plugin5dwarf19DWARFDebugInfoEntry18GetAttributeHighPCEPKNS1_9DWARFUnitEmmb.exit, %bb.f
  %.0 = phi i1 [ false, %bb.f ], [ true, %_ZNK12lldb_private6plugin5dwarf19DWARFDebugInfoEntry18GetAttributeHighPCEPKNS1_9DWARFUnitEmmb.exit ]
  ret i1 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZNK12lldb_private6plugin5dwarf19DWARFDebugInfoEntry25GetAttributeAddressRangesEPNS1_9DWARFUnitEbb(ptr dead_on_unwind noalias writable sret(%"class.llvm::Expected") align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1, ptr noundef %2, i1 noundef zeroext %3, i1 noundef zeroext %4) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %6 = alloca %"class.lldb_private::plugin::dwarf::DWARFFormValue", align 8 ; 8 uses
  %7 = alloca %"class.lldb_private::plugin::dwarf::DWARFFormValue", align 8 ; 8 uses
  %8 = alloca %"class.lldb_private::plugin::dwarf::DWARFFormValue", align 8 ; 6 uses
  %9 = alloca %"class.llvm::Error", align 8       ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #18
  store ptr null, ptr %8, align 8, !tbaa !129
  %i.b = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  store i16 0, ptr %i.b, align 8, !tbaa !132
  %i.c = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, i8 0, i64 16, i1 false)
  %i.d = call noundef i64 @_ZNK12lldb_private6plugin5dwarf19DWARFDebugInfoEntry17GetAttributeValueEPKNS1_9DWARFUnitEN4llvm5dwarf9AttributeERNS1_14DWARFFormValueEPmb(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef %2, i16 noundef zeroext 85, ptr noundef nonnull align 8 dereferenceable(40) %8, ptr noundef null, i1 noundef zeroext false)
  %.not = icmp eq i64 %i.d, 0
  br i1 %.not, label %10, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.val = load i16, ptr %i.b, align 8, !tbaa !132
  %.val6 = load i64, ptr %i.c, align 8            ; 2 uses
  %i.e = icmp eq i16 %.val, 35
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.f = trunc i64 %.val6 to i32
  call void @_ZN12lldb_private6plugin5dwarf9DWARFUnit20FindRnglistFromIndexEj(ptr dead_on_unwind writable sret(%"class.llvm::Expected") align 8 %0, ptr noundef nonnull align 8 dereferenceable(864) %2, i32 noundef %i.f) #18
  br label %_ZL9GetRangesRN12lldb_private6plugin5dwarf9DWARFUnitERKNS1_14DWARFFormValueE.exit

bb.d:                                             ; preds = %bb.b
  call void @_ZN12lldb_private6plugin5dwarf9DWARFUnit21FindRnglistFromOffsetEm(ptr dead_on_unwind writable sret(%"class.llvm::Expected") align 8 %0, ptr noundef nonnull align 8 dereferenceable(864) %2, i64 noundef %.val6) #18
  br label %_ZL9GetRangesRN12lldb_private6plugin5dwarf9DWARFUnitERKNS1_14DWARFFormValueE.exit

10:                                               ; preds = %bb.a
  br i1 %3, label %11, label %._crit_edge.i.i.i.i

11:                                               ; preds = %10
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #18
  store ptr null, ptr %7, align 8, !tbaa !129
  %12 = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i16 0, ptr %12, align 8, !tbaa !132
  %13 = getelementptr inbounds nuw i8, ptr %7, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %13, i8 0, i64 16, i1 false)
  %14 = call noundef i64 @_ZNK12lldb_private6plugin5dwarf19DWARFDebugInfoEntry17GetAttributeValueEPKNS1_9DWARFUnitEN4llvm5dwarf9AttributeERNS1_14DWARFFormValueEPmb(ptr noundef nonnull readonly align 8 dereferenceable(16) %1, ptr noundef %2, i16 noundef zeroext 17, ptr noundef nonnull align 8 dereferenceable(40) %7, ptr noundef null, i1 noundef zeroext %4)
  %.not.i.i = icmp eq i64 %14, 0
  br i1 %.not.i.i, label %_ZNK12lldb_private6plugin5dwarf19DWARFDebugInfoEntry26GetAttributeValueAsAddressEPKNS1_9DWARFUnitEN4llvm5dwarf9AttributeEmb.exit.thread.i, label %bb.e

_ZNK12lldb_private6plugin5dwarf19DWARFDebugInfoEntry26GetAttributeValueAsAddressEPKNS1_9DWARFUnitEN4llvm5dwarf9AttributeEmb.exit.thread.i: ; preds = %11
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #18
  br label %._crit_edge.i.i.i.i

bb.e:                                             ; preds = %11
  %15 = call noundef i64 @_ZNK12lldb_private6plugin5dwarf14DWARFFormValue7AddressEv(ptr noundef nonnull align 8 dereferenceable(40) %7) #18 ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #18
  %.not.i = icmp eq i64 %15, -1
  br i1 %.not.i, label %._crit_edge.i.i.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #18
  store ptr null, ptr %6, align 8, !tbaa !129
  %16 = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  store i16 0, ptr %16, align 8, !tbaa !132
  %17 = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %17, i8 0, i64 16, i1 false)
  %18 = call noundef i64 @_ZNK12lldb_private6plugin5dwarf19DWARFDebugInfoEntry17GetAttributeValueEPKNS1_9DWARFUnitEN4llvm5dwarf9AttributeERNS1_14DWARFFormValueEPmb(ptr noundef nonnull readonly align 8 dereferenceable(16) %1, ptr noundef %2, i16 noundef zeroext 18, ptr noundef nonnull align 8 dereferenceable(40) %6, ptr noundef null, i1 noundef zeroext %4)
  %.not.i21.i = icmp eq i64 %18, 0
  br i1 %.not.i21.i, label %_ZNK12lldb_private6plugin5dwarf19DWARFDebugInfoEntry18GetAttributeHighPCEPKNS1_9DWARFUnitEmmb.exit.thread.i, label %19

_ZNK12lldb_private6plugin5dwarf19DWARFDebugInfoEntry18GetAttributeHighPCEPKNS1_9DWARFUnitEmmb.exit.thread.i: ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #18
  br label %._crit_edge.i.i.i.i

19:                                               ; preds = %bb.f
  %20 = load i16, ptr %16, align 8, !tbaa !132
  switch i16 %20, label %23 [
    i16 7937, label %21
    i16 27, label %21
    i16 1, label %21
  ]

21:                                               ; preds = %19, %19, %19
  %22 = call noundef i64 @_ZNK12lldb_private6plugin5dwarf14DWARFFormValue7AddressEv(ptr noundef nonnull align 8 dereferenceable(40) %6) #18
  br label %bb.g

23:                                               ; preds = %19
  %24 = load i64, ptr %17, align 8, !tbaa !116
  %25 = add i64 %24, %15
  br label %bb.g

bb.g:                                             ; preds = %23, %21
  %.1.i.i = phi i64 [ %25, %23 ], [ %22, %21 ]    ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #18
  %.not20.i = icmp ne i64 %.1.i.i, -1
  %i.g = icmp ult i64 %15, %.1.i.i
  %or.cond = and i1 %.not20.i, %i.g
  br i1 %or.cond, label %_ZNSt6vectorIN4llvm17DWARFAddressRangeESaIS1_EED2Ev.exit, label %._crit_edge.i.i.i.i

_ZNSt6vectorIN4llvm17DWARFAddressRangeESaIS1_EED2Ev.exit: ; preds = %bb.g
  %i.h = call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #21 ; 5 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 24 ; 2 uses
  store i64 %15, ptr %i.h, align 8, !tbaa !17
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store i64 %.1.i.i, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !17
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  store i64 -1, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !17
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.k = load i8, ptr %i.j, align 8
  %i.l = and i8 %i.k, -2
  store i8 %i.l, ptr %i.j, align 8
  store ptr %i.h, ptr %0, align 8, !tbaa !134
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.i, ptr %i.m, align 8, !tbaa !151
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.i, ptr %i.n, align 8, !tbaa !135
  br label %_ZL9GetRangesRN12lldb_private6plugin5dwarf9DWARFUnitERKNS1_14DWARFFormValueE.exit

._crit_edge.i.i.i.i:                              ; preds = %_ZNK12lldb_private6plugin5dwarf19DWARFDebugInfoEntry26GetAttributeValueAsAddressEPKNS1_9DWARFUnitEN4llvm5dwarf9AttributeEmb.exit.thread.i, %bb.e, %_ZNK12lldb_private6plugin5dwarf19DWARFDebugInfoEntry18GetAttributeHighPCEPKNS1_9DWARFUnitEmmb.exit.thread.i, %bb.g, %10
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #18
  %i.o = call { i32, ptr } @_ZN4llvm22inconvertibleErrorCodeEv() #18, !noalias !308 ; 2 uses
  %i.p = extractvalue { i32, ptr } %i.o, 0
  %i.q = extractvalue { i32, ptr } %i.o, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #18, !noalias !309
  %i.r = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 4 uses
  store ptr %i.r, ptr %5, align 8, !tbaa !154, !noalias !309
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18, !noalias !309
  store i64 36, ptr %i.a, align 8, !tbaa !17, !noalias !309
  %i.s = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) #18, !noalias !309 ; 3 uses
  store ptr %i.s, ptr %5, align 8, !tbaa !155, !noalias !309
  %i.t = load i64, ptr %i.a, align 8, !tbaa !17, !noalias !309 ; 3 uses
  store i64 %i.t, ptr %i.r, align 8, !tbaa !116, !noalias !309
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(36) %i.s, ptr noundef nonnull align 1 dereferenceable(36) @.str.4, i64 36, i1 false), !noalias !309
  %i.u = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %i.t, ptr %i.u, align 8, !tbaa !156, !noalias !309
  %i.v = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.t
  store i8 0, ptr %i.v, align 1, !tbaa !116, !noalias !309
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18, !noalias !309
  call void @_ZN4llvm17createStringErrorEONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10error_code(ptr dead_on_unwind nonnull writable sret(%"class.llvm::Error") align 8 %9, ptr noundef nonnull align 8 dereferenceable(32) %5, i32 %i.p, ptr %i.q) #18
  %i.w = load ptr, ptr %5, align 8, !tbaa !155, !noalias !309 ; 2 uses
  %i.x = icmp eq ptr %i.w, %i.r
  br i1 %i.x, label %_ZN4llvm5ErrorD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %._crit_edge.i.i.i.i
  %i.y = load i64, ptr %i.r, align 8, !tbaa !116, !noalias !309
  %i.z = add i64 %i.y, 1
  call void @_ZdlPvm(ptr noundef %i.w, i64 noundef %i.z) #19
  br label %_ZN4llvm5ErrorD2Ev.exit

_ZN4llvm5ErrorD2Ev.exit:                          ; preds = %._crit_edge.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18, !noalias !309
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.ab = load i8, ptr %i.aa, align 8
  %i.ac = or i8 %i.ab, 1
  store i8 %i.ac, ptr %i.aa, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !310)
  %i.ad = load ptr, ptr %9, align 8, !tbaa !137, !noalias !310
  store ptr %i.ad, ptr %0, align 8, !tbaa !136, !alias.scope !310
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #18
  br label %_ZL9GetRangesRN12lldb_private6plugin5dwarf9DWARFUnitERKNS1_14DWARFFormValueE.exit

_ZL9GetRangesRN12lldb_private6plugin5dwarf9DWARFUnitERKNS1_14DWARFFormValueE.exit: ; preds = %bb.d, %bb.c, %_ZNSt6vectorIN4llvm17DWARFAddressRangeESaIS1_EED2Ev.exit, %_ZN4llvm5ErrorD2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #18
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef ptr @_ZNK12lldb_private6plugin5dwarf19DWARFDebugInfoEntry7GetNameEPKNS1_9DWARFUnitE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %"class.lldb_private::plugin::dwarf::DWARFFormValue", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #18
  store ptr null, ptr %2, align 8, !tbaa !129
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i16 0, ptr %i.a, align 8, !tbaa !132
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, i8 0, i64 16, i1 false)
  %i.c = call noundef i64 @_ZNK12lldb_private6plugin5dwarf19DWARFDebugInfoEntry17GetAttributeValueEPKNS1_9DWARFUnitEN4llvm5dwarf9AttributeERNS1_14DWARFFormValueEPmb(ptr noundef nonnull readonly align 8 dereferenceable(16) %0, ptr noundef %1, i16 noundef zeroext 3, ptr noundef nonnull align 8 dereferenceable(40) %2, ptr noundef null, i1 noundef zeroext true)
  %.not.i = icmp eq i64 %i.c, 0
  br i1 %.not.i, label %_ZNK12lldb_private6plugin5dwarf19DWARFDebugInfoEntry25GetAttributeValueAsStringEPKNS1_9DWARFUnitEN4llvm5dwarf9AttributeEPKcb.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = call noundef ptr @_ZNK12lldb_private6plugin5dwarf14DWARFFormValue9AsCStringEv(ptr noundef nonnull align 8 dereferenceable(40) %2) #18
  br label %_ZNK12lldb_private6plugin5dwarf19DWARFDebugInfoEntry25GetAttributeValueAsStringEPKNS1_9DWARFUnitEN4llvm5dwarf9AttributeEPKcb.exit

_ZNK12lldb_private6plugin5dwarf19DWARFDebugInfoEntry25GetAttributeValueAsStringEPKNS1_9DWARFUnitEN4llvm5dwarf9AttributeEPKcb.exit: ; preds = %bb.a, %bb.b
  %.0.i = phi ptr [ %i.d, %bb.b ], [ null, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #18
  ret ptr %.0.i
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef ptr @_ZNK12lldb_private6plugin5dwarf19DWARFDebugInfoEntry14GetMangledNameEPKNS1_9DWARFUnitEb(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr noundef %1, i1 noundef zeroext %2) local_unnamed_addr #0 align 2 {
bb.a:
  %3 = alloca %"class.lldb_private::plugin::dwarf::DWARFFormValue", align 8 ; 7 uses
  %4 = alloca %"class.lldb_private::plugin::dwarf::DWARFFormValue", align 8 ; 7 uses
  %5 = alloca %"class.lldb_private::plugin::dwarf::DWARFFormValue", align 8 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #18
  store ptr null, ptr %5, align 8, !tbaa !129
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i16 0, ptr %i.a, align 8, !tbaa !132
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, i8 0, i64 16, i1 false)
  %i.c = call noundef i64 @_ZNK12lldb_private6plugin5dwarf19DWARFDebugInfoEntry17GetAttributeValueEPKNS1_9DWARFUnitEN4llvm5dwarf9AttributeERNS1_14DWARFFormValueEPmb(ptr noundef nonnull readonly align 8 dereferenceable(16) %0, ptr noundef %1, i16 noundef zeroext 8199, ptr noundef nonnull align 8 dereferenceable(40) %5, ptr noundef null, i1 noundef zeroext true)
  %.not.i = icmp eq i64 %i.c, 0
  br i1 %.not.i, label %_ZNK12lldb_private6plugin5dwarf19DWARFDebugInfoEntry25GetAttributeValueAsStringEPKNS1_9DWARFUnitEN4llvm5dwarf9AttributeEPKcb.exit.thread, label %_ZNK12lldb_private6plugin5dwarf19DWARFDebugInfoEntry25GetAttributeValueAsStringEPKNS1_9DWARFUnitEN4llvm5dwarf9AttributeEPKcb.exit

_ZNK12lldb_private6plugin5dwarf19DWARFDebugInfoEntry25GetAttributeValueAsStringEPKNS1_9DWARFUnitEN4llvm5dwarf9AttributeEPKcb.exit.thread: ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  br label %bb.b

_ZNK12lldb_private6plugin5dwarf19DWARFDebugInfoEntry25GetAttributeValueAsStringEPKNS1_9DWARFUnitEN4llvm5dwarf9AttributeEPKcb.exit: ; preds = %bb.a
  %i.d = call noundef ptr @_ZNK12lldb_private6plugin5dwarf14DWARFFormValue9AsCStringEv(ptr noundef nonnull align 8 dereferenceable(40) %5) #18 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %bb.b, label %bb.f

bb.b:                                             ; preds = %_ZNK12lldb_private6plugin5dwarf19DWARFDebugInfoEntry25GetAttributeValueAsStringEPKNS1_9DWARFUnitEN4llvm5dwarf9AttributeEPKcb.exit.thread, %_ZNK12lldb_private6plugin5dwarf19DWARFDebugInfoEntry25GetAttributeValueAsStringEPKNS1_9DWARFUnitEN4llvm5dwarf9AttributeEPKcb.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #18
  store ptr null, ptr %4, align 8, !tbaa !129
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i16 0, ptr %i.e, align 8, !tbaa !132
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.f, i8 0, i64 16, i1 false)
  %i.g = call noundef i64 @_ZNK12lldb_private6plugin5dwarf19DWARFDebugInfoEntry17GetAttributeValueEPKNS1_9DWARFUnitEN4llvm5dwarf9AttributeERNS1_14DWARFFormValueEPmb(ptr noundef nonnull readonly align 8 dereferenceable(16) %0, ptr noundef %1, i16 noundef zeroext 110, ptr noundef nonnull align 8 dereferenceable(40) %4, ptr noundef null, i1 noundef zeroext true)
  %.not.i14 = icmp eq i64 %i.g, 0
  br i1 %.not.i14, label %_ZNK12lldb_private6plugin5dwarf19DWARFDebugInfoEntry25GetAttributeValueAsStringEPKNS1_9DWARFUnitEN4llvm5dwarf9AttributeEPKcb.exit16, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = call noundef ptr @_ZNK12lldb_private6plugin5dwarf14DWARFFormValue9AsCStringEv(ptr noundef nonnull align 8 dereferenceable(40) %4) #18
  br label %_ZNK12lldb_private6plugin5dwarf19DWARFDebugInfoEntry25GetAttributeValueAsStringEPKNS1_9DWARFUnitEN4llvm5dwarf9AttributeEPKcb.exit16

_ZNK12lldb_private6plugin5dwarf19DWARFDebugInfoEntry25GetAttributeValueAsStringEPKNS1_9DWARFUnitEN4llvm5dwarf9AttributeEPKcb.exit16: ; preds = %bb.b, %bb.c
  %.0.i15 = phi ptr [ %i.h, %bb.c ], [ null, %bb.b ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  %.not12 = icmp eq ptr %.0.i15, null
  %brmerge.not = and i1 %2, %.not12
  br i1 %brmerge.not, label %bb.d, label %bb.f

bb.d:                                             ; preds = %_ZNK12lldb_private6plugin5dwarf19DWARFDebugInfoEntry25GetAttributeValueAsStringEPKNS1_9DWARFUnitEN4llvm5dwarf9AttributeEPKcb.exit16
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #18
  store ptr null, ptr %3, align 8, !tbaa !129
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i16 0, ptr %i.i, align 8, !tbaa !132
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.j, i8 0, i64 16, i1 false)
  %i.k = call noundef i64 @_ZNK12lldb_private6plugin5dwarf19DWARFDebugInfoEntry17GetAttributeValueEPKNS1_9DWARFUnitEN4llvm5dwarf9AttributeERNS1_14DWARFFormValueEPmb(ptr noundef nonnull readonly align 8 dereferenceable(16) %0, ptr noundef %1, i16 noundef zeroext 3, ptr noundef nonnull align 8 dereferenceable(40) %3, ptr noundef null, i1 noundef zeroext true)
  %.not.i17 = icmp eq i64 %i.k, 0
  br i1 %.not.i17, label %_ZNK12lldb_private6plugin5dwarf19DWARFDebugInfoEntry25GetAttributeValueAsStringEPKNS1_9DWARFUnitEN4llvm5dwarf9AttributeEPKcb.exit19, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.l = call noundef ptr @_ZNK12lldb_private6plugin5dwarf14DWARFFormValue9AsCStringEv(ptr noundef nonnull align 8 dereferenceable(40) %3) #18
  br label %_ZNK12lldb_private6plugin5dwarf19DWARFDebugInfoEntry25GetAttributeValueAsStringEPKNS1_9DWARFUnitEN4llvm5dwarf9AttributeEPKcb.exit19

_ZNK12lldb_private6plugin5dwarf19DWARFDebugInfoEntry25GetAttributeValueAsStringEPKNS1_9DWARFUnitEN4llvm5dwarf9AttributeEPKcb.exit19: ; preds = %bb.d, %bb.e
  %.0.i18 = phi ptr [ %i.l, %bb.e ], [ null, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  br label %bb.f

bb.f:                                             ; preds = %_ZNK12lldb_private6plugin5dwarf19DWARFDebugInfoEntry25GetAttributeValueAsStringEPKNS1_9DWARFUnitEN4llvm5dwarf9AttributeEPKcb.exit16, %_ZNK12lldb_private6plugin5dwarf19DWARFDebugInfoEntry25GetAttributeValueAsStringEPKNS1_9DWARFUnitEN4llvm5dwarf9AttributeEPKcb.exit, %_ZNK12lldb_private6plugin5dwarf19DWARFDebugInfoEntry25GetAttributeValueAsStringEPKNS1_9DWARFUnitEN4llvm5dwarf9AttributeEPKcb.exit19
  %.0 = phi ptr [ %.0.i15, %_ZNK12lldb_private6plugin5dwarf19DWARFDebugInfoEntry25GetAttributeValueAsStringEPKNS1_9DWARFUnitEN4llvm5dwarf9AttributeEPKcb.exit16 ], [ %i.d, %_ZNK12lldb_private6plugin5dwarf19DWARFDebugInfoEntry25GetAttributeValueAsStringEPKNS1_9DWARFUnitEN4llvm5dwarf9AttributeEPKcb.exit ], [ %.0.i18, %_ZNK12lldb_private6plugin5dwarf19DWARFDebugInfoEntry25GetAttributeValueAsStringEPKNS1_9DWARFUnitEN4llvm5dwarf9AttributeEPKcb.exit19 ]
  ret ptr %.0
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef ptr @_ZNK12lldb_private6plugin5dwarf19DWARFDebugInfoEntry10GetPubnameEPKNS1_9DWARFUnitE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %"class.lldb_private::plugin::dwarf::DWARFFormValue", align 8 ; 7 uses
  %3 = alloca %"class.lldb_private::plugin::dwarf::DWARFFormValue", align 8 ; 8 uses
  %4 = alloca %"class.lldb_private::plugin::dwarf::DWARFFormValue", align 8 ; 8 uses
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #18
  store ptr null, ptr %4, align 8, !tbaa !129
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i16 0, ptr %i.a, align 8, !tbaa !132
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, i8 0, i64 16, i1 false)
  %i.c = call noundef i64 @_ZNK12lldb_private6plugin5dwarf19DWARFDebugInfoEntry17GetAttributeValueEPKNS1_9DWARFUnitEN4llvm5dwarf9AttributeERNS1_14DWARFFormValueEPmb(ptr noundef nonnull readonly align 8 dereferenceable(16) %0, ptr noundef nonnull %1, i16 noundef zeroext 8199, ptr noundef nonnull align 8 dereferenceable(40) %4, ptr noundef null, i1 noundef zeroext true)
  %.not.i = icmp eq i64 %i.c, 0
  br i1 %.not.i, label %_ZNK12lldb_private6plugin5dwarf19DWARFDebugInfoEntry25GetAttributeValueAsStringEPKNS1_9DWARFUnitEN4llvm5dwarf9AttributeEPKcb.exit.thread, label %_ZNK12lldb_private6plugin5dwarf19DWARFDebugInfoEntry25GetAttributeValueAsStringEPKNS1_9DWARFUnitEN4llvm5dwarf9AttributeEPKcb.exit

_ZNK12lldb_private6plugin5dwarf19DWARFDebugInfoEntry25GetAttributeValueAsStringEPKNS1_9DWARFUnitEN4llvm5dwarf9AttributeEPKcb.exit.thread: ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  br label %bb.c

_ZNK12lldb_private6plugin5dwarf19DWARFDebugInfoEntry25GetAttributeValueAsStringEPKNS1_9DWARFUnitEN4llvm5dwarf9AttributeEPKcb.exit: ; preds = %bb.b
  %i.d = call noundef ptr @_ZNK12lldb_private6plugin5dwarf14DWARFFormValue9AsCStringEv(ptr noundef nonnull align 8 dereferenceable(40) %4) #18 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  %.not15 = icmp eq ptr %i.d, null
  br i1 %.not15, label %bb.c, label %bb.f

bb.c:                                             ; preds = %_ZNK12lldb_private6plugin5dwarf19DWARFDebugInfoEntry25GetAttributeValueAsStringEPKNS1_9DWARFUnitEN4llvm5dwarf9AttributeEPKcb.exit.thread, %_ZNK12lldb_private6plugin5dwarf19DWARFDebugInfoEntry25GetAttributeValueAsStringEPKNS1_9DWARFUnitEN4llvm5dwarf9AttributeEPKcb.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #18
  store ptr null, ptr %3, align 8, !tbaa !129
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i16 0, ptr %i.e, align 8, !tbaa !132
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.f, i8 0, i64 16, i1 false)
  %i.g = call noundef i64 @_ZNK12lldb_private6plugin5dwarf19DWARFDebugInfoEntry17GetAttributeValueEPKNS1_9DWARFUnitEN4llvm5dwarf9AttributeERNS1_14DWARFFormValueEPmb(ptr noundef nonnull readonly align 8 dereferenceable(16) %0, ptr noundef nonnull %1, i16 noundef zeroext 110, ptr noundef nonnull align 8 dereferenceable(40) %3, ptr noundef null, i1 noundef zeroext true)
  %.not.i17 = icmp eq i64 %i.g, 0
  br i1 %.not.i17, label %_ZNK12lldb_private6plugin5dwarf19DWARFDebugInfoEntry25GetAttributeValueAsStringEPKNS1_9DWARFUnitEN4llvm5dwarf9AttributeEPKcb.exit19.thread, label %_ZNK12lldb_private6plugin5dwarf19DWARFDebugInfoEntry25GetAttributeValueAsStringEPKNS1_9DWARFUnitEN4llvm5dwarf9AttributeEPKcb.exit19

_ZNK12lldb_private6plugin5dwarf19DWARFDebugInfoEntry25GetAttributeValueAsStringEPKNS1_9DWARFUnitEN4llvm5dwarf9AttributeEPKcb.exit19.thread: ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  br label %bb.d

_ZNK12lldb_private6plugin5dwarf19DWARFDebugInfoEntry25GetAttributeValueAsStringEPKNS1_9DWARFUnitEN4llvm5dwarf9AttributeEPKcb.exit19: ; preds = %bb.c
  %i.h = call noundef ptr @_ZNK12lldb_private6plugin5dwarf14DWARFFormValue9AsCStringEv(ptr noundef nonnull align 8 dereferenceable(40) %3) #18 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  %.not16 = icmp eq ptr %i.h, null
  br i1 %.not16, label %bb.d, label %bb.f

bb.d:                                             ; preds = %_ZNK12lldb_private6plugin5dwarf19DWARFDebugInfoEntry25GetAttributeValueAsStringEPKNS1_9DWARFUnitEN4llvm5dwarf9AttributeEPKcb.exit19.thread, %_ZNK12lldb_private6plugin5dwarf19DWARFDebugInfoEntry25GetAttributeValueAsStringEPKNS1_9DWARFUnitEN4llvm5dwarf9AttributeEPKcb.exit19
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #18
  store ptr null, ptr %2, align 8, !tbaa !129
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i16 0, ptr %i.i, align 8, !tbaa !132
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.j, i8 0, i64 16, i1 false)
  %i.k = call noundef i64 @_ZNK12lldb_private6plugin5dwarf19DWARFDebugInfoEntry17GetAttributeValueEPKNS1_9DWARFUnitEN4llvm5dwarf9AttributeERNS1_14DWARFFormValueEPmb(ptr noundef nonnull readonly align 8 dereferenceable(16) %0, ptr noundef nonnull %1, i16 noundef zeroext 3, ptr noundef nonnull align 8 dereferenceable(40) %2, ptr noundef null, i1 noundef zeroext true)
  %.not.i20 = icmp eq i64 %i.k, 0
  br i1 %.not.i20, label %_ZNK12lldb_private6plugin5dwarf19DWARFDebugInfoEntry25GetAttributeValueAsStringEPKNS1_9DWARFUnitEN4llvm5dwarf9AttributeEPKcb.exit22, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.l = call noundef ptr @_ZNK12lldb_private6plugin5dwarf14DWARFFormValue9AsCStringEv(ptr noundef nonnull align 8 dereferenceable(40) %2) #18
  br label %_ZNK12lldb_private6plugin5dwarf19DWARFDebugInfoEntry25GetAttributeValueAsStringEPKNS1_9DWARFUnitEN4llvm5dwarf9AttributeEPKcb.exit22

_ZNK12lldb_private6plugin5dwarf19DWARFDebugInfoEntry25GetAttributeValueAsStringEPKNS1_9DWARFUnitEN4llvm5dwarf9AttributeEPKcb.exit22: ; preds = %bb.d, %bb.e
  %.0.i21 = phi ptr [ %i.l, %bb.e ], [ null, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #18
  br label %bb.f

bb.f:                                             ; preds = %_ZNK12lldb_private6plugin5dwarf19DWARFDebugInfoEntry25GetAttributeValueAsStringEPKNS1_9DWARFUnitEN4llvm5dwarf9AttributeEPKcb.exit19, %_ZNK12lldb_private6plugin5dwarf19DWARFDebugInfoEntry25GetAttributeValueAsStringEPKNS1_9DWARFUnitEN4llvm5dwarf9AttributeEPKcb.exit, %bb.a, %_ZNK12lldb_private6plugin5dwarf19DWARFDebugInfoEntry25GetAttributeValueAsStringEPKNS1_9DWARFUnitEN4llvm5dwarf9AttributeEPKcb.exit22
  %.0 = phi ptr [ null, %bb.a ], [ %i.d, %_ZNK12lldb_private6plugin5dwarf19DWARFDebugInfoEntry25GetAttributeValueAsStringEPKNS1_9DWARFUnitEN4llvm5dwarf9AttributeEPKcb.exit ], [ %.0.i21, %_ZNK12lldb_private6plugin5dwarf19DWARFDebugInfoEntry25GetAttributeValueAsStringEPKNS1_9DWARFUnitEN4llvm5dwarf9AttributeEPKcb.exit22 ], [ %i.h, %_ZNK12lldb_private6plugin5dwarf19DWARFDebugInfoEntry25GetAttributeValueAsStringEPKNS1_9DWARFUnitEN4llvm5dwarf9AttributeEPKcb.exit19 ]
  ret ptr %.0
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZNK12lldb_private6plugin5dwarf19DWARFDebugInfoEntry30BuildFunctionAddressRangeTableEPNS1_9DWARFUnitEPNS1_17DWARFDebugArangesE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 align 2 {
bb.a:
  %3 = alloca %"class.llvm::Error", align 8       ; 3 uses
  %4 = alloca %"class.llvm::Error", align 8       ; 5 uses
  %5 = alloca %class.anon.362, align 1            ; 3 uses
  %6 = alloca %"class.lldb_private::plugin::dwarf::DWARFFormValue", align 8 ; 6 uses
  %7 = alloca %"class.llvm::Expected", align 8    ; 10 uses
  %8 = alloca %"class.llvm::Error", align 8       ; 3 uses
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZN12lldb_private13LogChannelForINS_8DWARFLogEEERNS_3Log7ChannelEv() #18
  %i.c = load atomic ptr, ptr %i.b monotonic, align 8 ; 3 uses
  %.not.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = tail call noundef i64 @_ZNK12lldb_private3Log7GetMaskEv(ptr noundef nonnull align 8 dereferenceable(104) %i.c) #18
  %i.e = and i64 %i.d, 1
  %.not6.i.i = icmp eq i64 %i.e, 0
  br i1 %.not6.i.i, label %bb.c, label %_ZN12lldb_private6GetLogINS_8DWARFLogEEEPNS_3LogET_.exit

bb.c:                                             ; preds = %bb.b, %bb.a
  br label %_ZN12lldb_private6GetLogINS_8DWARFLogEEEPNS_3LogET_.exit

end_hunk_0
