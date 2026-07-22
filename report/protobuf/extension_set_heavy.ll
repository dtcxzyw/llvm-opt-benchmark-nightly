inline.NumInlined: 1229
inline.NumDeleted: 578
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN6google8protobuf8internal29DescriptorPoolExtensionFinder4FindEiPNS1_13ExtensionInfoE:bb.a
  %i.bb = getelementptr inbounds i8, ptr %i.ax, i64 %i.ba
  %i.bc = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN4absl12lts_2025051212log_internal10LogMessagelsESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(16) %3, i64 %i.az, ptr nonnull %i.bb)
          to label %bb.g unwind label %bb.h

bb.g:                                             ; preds = %bb.f
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessage5FlushEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bc)
          to label %_ZNKO4absl12lts_2025051212log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit unwind label %bb.h

_ZNKO4absl12lts_2025051212log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit: ; preds = %bb.g
  call void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dereferenceable(16) %3) #19
  unreachable

bb.h:                                             ; preds = %bb.g, %bb.e, %bb.f
  %i.bd = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  call void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dereferenceable(16) %3) #19
  unreachable

bb.i:                                             ; preds = %bb.b
  %i.be = getelementptr inbounds nuw i8, ptr %2, i64 16
  store ptr @_ZN6google8protobuf8internalL27ValidateEnumUsingDescriptorEPKvi, ptr %i.be, align 8, !tbaa !22
  %i.bf = tail call noundef ptr @_ZNK6google8protobuf15FieldDescriptor9enum_typeEv(ptr noundef nonnull align 8 dereferenceable(88) %i.d)
  %i.bg = getelementptr inbounds nuw i8, ptr %2, i64 24
  store ptr %i.bf, ptr %i.bg, align 8, !tbaa !22
  br label %.critedge

.critedge:                                        ; preds = %bb.b, %_ZNK6google8protobuf11MessageLite15GetTcParseTableEv.exit, %bb.i, %bb.a
  ret i1 %i.e
}

declare noundef ptr @_ZNK6google8protobuf14DescriptorPool21FindExtensionByNumberEPKNS0_10DescriptorEi(ptr noundef nonnull align 8 dereferenceable(120), ptr noundef, i32 noundef) local_unnamed_addr #2

declare noundef zeroext i1 @_ZNK6google8protobuf15FieldDescriptor9is_packedEv(ptr noundef nonnull align 8 dereferenceable(88)) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZN4absl12lts_2025051212log_internal10LogMessagelsESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(16), i64, ptr) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define internal noundef zeroext i1 @_ZN6google8protobuf8internalL27ValidateEnumUsingDescriptorEPKvi(ptr noundef nonnull %0, i32 noundef %1) #0 {
bb.a:
  %i.a = tail call noundef ptr @_ZNK6google8protobuf14EnumDescriptor17FindValueByNumberEi(ptr noundef nonnull align 8 dereferenceable(88) %0, i32 noundef %1)
  %i.b = icmp ne ptr %i.a, null
  ret i1 %i.b
}

declare noundef ptr @_ZNK6google8protobuf15FieldDescriptor9enum_typeEv(ptr noundef nonnull align 8 dereferenceable(88)) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN6google8protobuf8internal12ExtensionSet13FindExtensionEijPKNS0_7MessageEPKNS1_12ParseContextEPNS1_13ExtensionInfoEPb(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr nofree noundef readonly captures(none) %3, ptr noundef %4, ptr nofree noundef writeonly captures(none) %5) local_unnamed_addr #0 align 2 {
bb.a:
  %6 = alloca %"class.google::protobuf::internal::GeneratedExtensionFinder", align 8 ; 6 uses
  %7 = alloca %"class.google::protobuf::internal::DescriptorPoolExtensionFinder", align 8 ; 8 uses
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 96
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !96   ; 2 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #16
  store ptr %2, ptr %6, align 8, !tbaa !98
  %i.d = call noundef zeroext i1 @_ZN6google8protobuf8internal24GeneratedExtensionFinder4FindEiPNS1_13ExtensionInfoE(ptr noundef nonnull align 8 dereferenceable(8) %6, i32 noundef %1, ptr noundef %4)
  br i1 %i.d, label %bb.c, label %_ZN6google8protobuf8internal12ExtensionSet32FindExtensionInfoFromFieldNumberINS1_24GeneratedExtensionFinderEEEbiiPT_PNS1_13ExtensionInfoEPb.exit.thread24

_ZN6google8protobuf8internal12ExtensionSet32FindExtensionInfoFromFieldNumberINS1_24GeneratedExtensionFinderEEEbiiPT_PNS1_13ExtensionInfoEPb.exit.thread24: ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #16
  br label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 12
  %i.f = load i8, ptr %i.e, align 4, !tbaa !80
  %i.g = zext i8 %i.f to i64
  %i.h = getelementptr inbounds nuw [4 x i8], ptr @_ZN6google8protobuf8internal14WireFormatLite21kWireTypeForFieldTypeE, i64 %i.g
  %i.i = load i32, ptr %i.h, align 4, !tbaa !100  ; 2 uses
  store i8 0, ptr %5, align 1, !tbaa !102
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 13
  %i.k = load i8, ptr %i.j, align 1, !tbaa !81, !range !103, !noundef !104
  %i.l = trunc nuw i8 %i.k to i1
  %i.m = icmp eq i32 %0, 2
  %or.cond.i = and i1 %i.m, %i.l
  %i.n = add i32 %i.i, -5
  %switch.i.i = icmp ult i32 %i.n, -3
  %or.cond13.i = select i1 %or.cond.i, i1 %switch.i.i, i1 false
  br i1 %or.cond13.i, label %_ZN6google8protobuf8internal12ExtensionSet32FindExtensionInfoFromFieldNumberINS1_24GeneratedExtensionFinderEEEbiiPT_PNS1_13ExtensionInfoEPb.exit.thread, label %_ZN6google8protobuf8internal12ExtensionSet32FindExtensionInfoFromFieldNumberINS1_24GeneratedExtensionFinderEEEbiiPT_PNS1_13ExtensionInfoEPb.exit

_ZN6google8protobuf8internal12ExtensionSet32FindExtensionInfoFromFieldNumberINS1_24GeneratedExtensionFinderEEEbiiPT_PNS1_13ExtensionInfoEPb.exit.thread: ; preds = %bb.c
  store i8 1, ptr %5, align 1, !tbaa !102
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #16
  br label %bb.f

_ZN6google8protobuf8internal12ExtensionSet32FindExtensionInfoFromFieldNumberINS1_24GeneratedExtensionFinderEEEbiiPT_PNS1_13ExtensionInfoEPb.exit: ; preds = %bb.c
  %i.o = icmp eq i32 %i.i, %0
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #16
  br i1 %i.o, label %bb.f, label %bb.g

bb.d:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #16
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 104
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !105
  %i.r = tail call { ptr, ptr } @_ZNK6google8protobuf7Message11GetMetadataEv(ptr noundef nonnull align 8 dereferenceable(16) %2)
  %i.s = extractvalue { ptr, ptr } %i.r, 0
  store ptr %i.b, ptr %7, align 8, !tbaa !72
  %i.t = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr %i.q, ptr %i.t, align 8, !tbaa !85
  %i.u = getelementptr inbounds nuw i8, ptr %7, i64 16
  store ptr %i.s, ptr %i.u, align 8, !tbaa !76
  %i.v = call noundef zeroext i1 @_ZN6google8protobuf8internal29DescriptorPoolExtensionFinder4FindEiPNS1_13ExtensionInfoE(ptr noundef nonnull align 8 dereferenceable(24) %7, i32 noundef %1, ptr noundef %4)
  br i1 %i.v, label %bb.e, label %_ZN6google8protobuf8internal12ExtensionSet32FindExtensionInfoFromFieldNumberINS1_29DescriptorPoolExtensionFinderEEEbiiPT_PNS1_13ExtensionInfoEPb.exit.thread29

_ZN6google8protobuf8internal12ExtensionSet32FindExtensionInfoFromFieldNumberINS1_29DescriptorPoolExtensionFinderEEEbiiPT_PNS1_13ExtensionInfoEPb.exit.thread29: ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #16
  br label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 12
  %i.x = load i8, ptr %i.w, align 4, !tbaa !80
  %i.y = zext i8 %i.x to i64
  %i.z = getelementptr inbounds nuw [4 x i8], ptr @_ZN6google8protobuf8internal14WireFormatLite21kWireTypeForFieldTypeE, i64 %i.y
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !100 ; 2 uses
  store i8 0, ptr %5, align 1, !tbaa !102
  %i.ab = getelementptr inbounds nuw i8, ptr %4, i64 13
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !81, !range !103, !noundef !104
  %i.ad = trunc nuw i8 %i.ac to i1
  %i.ae = icmp eq i32 %0, 2
  %or.cond.i19 = and i1 %i.ae, %i.ad
  %i.af = add i32 %i.aa, -5
  %switch.i.i20 = icmp ult i32 %i.af, -3
  %or.cond13.i21 = select i1 %or.cond.i19, i1 %switch.i.i20, i1 false
  br i1 %or.cond13.i21, label %_ZN6google8protobuf8internal12ExtensionSet32FindExtensionInfoFromFieldNumberINS1_29DescriptorPoolExtensionFinderEEEbiiPT_PNS1_13ExtensionInfoEPb.exit.thread, label %_ZN6google8protobuf8internal12ExtensionSet32FindExtensionInfoFromFieldNumberINS1_29DescriptorPoolExtensionFinderEEEbiiPT_PNS1_13ExtensionInfoEPb.exit

_ZN6google8protobuf8internal12ExtensionSet32FindExtensionInfoFromFieldNumberINS1_29DescriptorPoolExtensionFinderEEEbiiPT_PNS1_13ExtensionInfoEPb.exit.thread: ; preds = %bb.e
  store i8 1, ptr %5, align 1, !tbaa !102
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #16
  br label %bb.f

_ZN6google8protobuf8internal12ExtensionSet32FindExtensionInfoFromFieldNumberINS1_29DescriptorPoolExtensionFinderEEEbiiPT_PNS1_13ExtensionInfoEPb.exit: ; preds = %bb.e
  %i.ag = icmp eq i32 %i.aa, %0
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #16
  br i1 %i.ag, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZN6google8protobuf8internal12ExtensionSet32FindExtensionInfoFromFieldNumberINS1_29DescriptorPoolExtensionFinderEEEbiiPT_PNS1_13ExtensionInfoEPb.exit.thread, %_ZN6google8protobuf8internal12ExtensionSet32FindExtensionInfoFromFieldNumberINS1_24GeneratedExtensionFinderEEEbiiPT_PNS1_13ExtensionInfoEPb.exit.thread, %_ZN6google8protobuf8internal12ExtensionSet32FindExtensionInfoFromFieldNumberINS1_29DescriptorPoolExtensionFinderEEEbiiPT_PNS1_13ExtensionInfoEPb.exit, %_ZN6google8protobuf8internal12ExtensionSet32FindExtensionInfoFromFieldNumberINS1_24GeneratedExtensionFinderEEEbiiPT_PNS1_13ExtensionInfoEPb.exit
  br label %bb.g

bb.g:                                             ; preds = %_ZN6google8protobuf8internal12ExtensionSet32FindExtensionInfoFromFieldNumberINS1_29DescriptorPoolExtensionFinderEEEbiiPT_PNS1_13ExtensionInfoEPb.exit.thread29, %_ZN6google8protobuf8internal12ExtensionSet32FindExtensionInfoFromFieldNumberINS1_24GeneratedExtensionFinderEEEbiiPT_PNS1_13ExtensionInfoEPb.exit.thread24, %_ZN6google8protobuf8internal12ExtensionSet32FindExtensionInfoFromFieldNumberINS1_29DescriptorPoolExtensionFinderEEEbiiPT_PNS1_13ExtensionInfoEPb.exit, %_ZN6google8protobuf8internal12ExtensionSet32FindExtensionInfoFromFieldNumberINS1_24GeneratedExtensionFinderEEEbiiPT_PNS1_13ExtensionInfoEPb.exit, %bb.f
  %.2 = phi i1 [ true, %bb.f ], [ false, %_ZN6google8protobuf8internal12ExtensionSet32FindExtensionInfoFromFieldNumberINS1_24GeneratedExtensionFinderEEEbiiPT_PNS1_13ExtensionInfoEPb.exit ], [ false, %_ZN6google8protobuf8internal12ExtensionSet32FindExtensionInfoFromFieldNumberINS1_29DescriptorPoolExtensionFinderEEEbiiPT_PNS1_13ExtensionInfoEPb.exit ], [ false, %_ZN6google8protobuf8internal12ExtensionSet32FindExtensionInfoFromFieldNumberINS1_24GeneratedExtensionFinderEEEbiiPT_PNS1_13ExtensionInfoEPb.exit.thread24 ], [ false, %_ZN6google8protobuf8internal12ExtensionSet32FindExtensionInfoFromFieldNumberINS1_29DescriptorPoolExtensionFinderEEEbiiPT_PNS1_13ExtensionInfoEPb.exit.thread29 ]
  ret i1 %.2
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN6google8protobuf8internal12ExtensionSet13MoveExtensionEPNS0_5ArenaEiRS2_i(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, i32 noundef %2, ptr noundef nonnull align 8 dereferenceable(16) %3, i32 noundef %4) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call noundef ptr @_ZN6google8protobuf8internal12ExtensionSet10FindOrNullEi(ptr noundef nonnull align 8 dereferenceable(16) %3, i32 noundef %4) ; 3 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN6google8protobuf8internal12ExtensionSet14ClearExtensionEi(ptr noundef nonnull align 8 dereferenceable(16) %0, i32 noundef %2)
  br label %bb.g

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !106
  %.not17 = icmp eq ptr %i.d, null
  br i1 %.not17, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.e = tail call { ptr, i8 } @_ZN6google8protobuf8internal12ExtensionSet6InsertEPNS0_5ArenaEi(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, i32 noundef %2) ; 2 uses
  %.fca.0.extract = extractvalue { ptr, i8 } %i.e, 0 ; 2 uses
  %.fca.1.extract = extractvalue { ptr, i8 } %i.e, 1
  %i.f = trunc nuw i8 %.fca.1.extract to i1
  %i.g = icmp ne ptr %1, null
  %or.cond.not = or i1 %i.g, %i.f
  br i1 %or.cond.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @_ZN6google8protobuf8internal12ExtensionSet9Extension4FreeEv(ptr noundef nonnull align 8 dereferenceable(24) %.fca.0.extract)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.fca.0.extract, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false), !tbaa.struct !107
  tail call void @_ZN6google8protobuf8internal12ExtensionSet5EraseEi(ptr noundef nonnull align 8 dereferenceable(16) %3, i32 noundef %4)
  br label %bb.g

bb.g:                                             ; preds = %bb.c, %bb.f, %bb.b
  %.0 = phi i1 [ true, %bb.b ], [ true, %bb.f ], [ false, %bb.c ]
  ret i1 %.0
}

declare void @_ZN6google8protobuf8internal12ExtensionSet14ClearExtensionEi(ptr noundef nonnull align 8 dereferenceable(16), i32 noundef) local_unnamed_addr #2

declare { ptr, i8 } @_ZN6google8protobuf8internal12ExtensionSet6InsertEPNS0_5ArenaEi(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

declare void @_ZN6google8protobuf8internal12ExtensionSet9Extension4FreeEv(ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define noundef ptr @_ZN6google8protobuf8internal12ExtensionSet10ParseFieldEmPKcPKNS0_7MessageEPNS1_16InternalMetadataEPNS1_12ParseContextE(ptr noundef nonnull align 8 dereferenceable(16) %0, i64 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5) local_unnamed_addr #0 align 2 {
bb.a:
  %6 = alloca %"class.google::protobuf::internal::GeneratedExtensionFinder", align 8 ; 6 uses
  %7 = alloca %"class.google::protobuf::internal::DescriptorPoolExtensionFinder", align 8 ; 8 uses
  %8 = alloca %"struct.google::protobuf::internal::ExtensionInfo", align 8 ; 12 uses
  %i.a = lshr i64 %1, 3
  %i.b = trunc i64 %i.a to i32                    ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #16
  %9 = getelementptr inbounds nuw i8, ptr %8, i64 14 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %8, i8 0, i64 14, i1 false)
  %10 = load i8, ptr %9, align 2
  %11 = and i8 %10, -4
  store i8 %11, ptr %9, align 2
  %12 = getelementptr inbounds nuw i8, ptr %8, i64 15
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(33) %12, i8 0, i64 33, i1 false)
  %i.c = trunc i64 %1 to i32
  %i.d = and i32 %i.c, 7                          ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 96
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !96   ; 2 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #16
  store ptr %3, ptr %6, align 8, !tbaa !98
  %i.h = call noundef zeroext i1 @_ZN6google8protobuf8internal24GeneratedExtensionFinder4FindEiPNS1_13ExtensionInfoE(ptr noundef nonnull align 8 dereferenceable(8) %6, i32 noundef %i.b, ptr noundef nonnull %8)
  br i1 %i.h, label %bb.c, label %_ZN6google8protobuf8internal12ExtensionSet32FindExtensionInfoFromFieldNumberINS1_24GeneratedExtensionFinderEEEbiiPT_PNS1_13ExtensionInfoEPb.exit.thread24.i

_ZN6google8protobuf8internal12ExtensionSet32FindExtensionInfoFromFieldNumberINS1_24GeneratedExtensionFinderEEEbiiPT_PNS1_13ExtensionInfoEPb.exit.thread24.i: ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #16
  br label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %8, i64 12
  %i.j = load i8, ptr %i.i, align 4, !tbaa !80
  %i.k = zext i8 %i.j to i64
  %i.l = getelementptr inbounds nuw [4 x i8], ptr @_ZN6google8protobuf8internal14WireFormatLite21kWireTypeForFieldTypeE, i64 %i.k
  %i.m = load i32, ptr %i.l, align 4, !tbaa !100  ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %8, i64 13
  %i.o = load i8, ptr %i.n, align 1, !tbaa !81, !range !103, !noundef !104
  %i.p = trunc nuw i8 %i.o to i1
  %i.q = icmp eq i32 %i.d, 2
  %or.cond.i.i = and i1 %i.q, %i.p
  %i.r = add i32 %i.m, -5
  %switch.i.i.i = icmp ult i32 %i.r, -3
  %or.cond13.i.i = select i1 %or.cond.i.i, i1 %switch.i.i.i, i1 false
  br i1 %or.cond13.i.i, label %_ZN6google8protobuf8internal12ExtensionSet32FindExtensionInfoFromFieldNumberINS1_24GeneratedExtensionFinderEEEbiiPT_PNS1_13ExtensionInfoEPb.exit.thread.i, label %_ZN6google8protobuf8internal12ExtensionSet32FindExtensionInfoFromFieldNumberINS1_24GeneratedExtensionFinderEEEbiiPT_PNS1_13ExtensionInfoEPb.exit.i

_ZN6google8protobuf8internal12ExtensionSet32FindExtensionInfoFromFieldNumberINS1_24GeneratedExtensionFinderEEEbiiPT_PNS1_13ExtensionInfoEPb.exit.thread.i: ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #16
  br label %_ZN6google8protobuf8internal12ExtensionSet13FindExtensionEijPKNS0_7MessageEPKNS1_12ParseContextEPNS1_13ExtensionInfoEPb.exit

_ZN6google8protobuf8internal12ExtensionSet32FindExtensionInfoFromFieldNumberINS1_24GeneratedExtensionFinderEEEbiiPT_PNS1_13ExtensionInfoEPb.exit.i: ; preds = %bb.c
  %i.s = icmp eq i32 %i.m, %i.d
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #16
  br i1 %i.s, label %_ZN6google8protobuf8internal12ExtensionSet13FindExtensionEijPKNS0_7MessageEPKNS1_12ParseContextEPNS1_13ExtensionInfoEPb.exit, label %bb.f

bb.d:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #16
  %i.t = getelementptr inbounds nuw i8, ptr %5, i64 104
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !105
  %i.v = tail call { ptr, ptr } @_ZNK6google8protobuf7Message11GetMetadataEv(ptr noundef nonnull align 8 dereferenceable(16) %3)
  %i.w = extractvalue { ptr, ptr } %i.v, 0
  store ptr %i.f, ptr %7, align 8, !tbaa !72
  %i.x = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr %i.u, ptr %i.x, align 8, !tbaa !85
  %i.y = getelementptr inbounds nuw i8, ptr %7, i64 16
  store ptr %i.w, ptr %i.y, align 8, !tbaa !76
  %i.z = call noundef zeroext i1 @_ZN6google8protobuf8internal29DescriptorPoolExtensionFinder4FindEiPNS1_13ExtensionInfoE(ptr noundef nonnull align 8 dereferenceable(24) %7, i32 noundef %i.b, ptr noundef nonnull %8)
  br i1 %i.z, label %bb.e, label %_ZN6google8protobuf8internal12ExtensionSet32FindExtensionInfoFromFieldNumberINS1_29DescriptorPoolExtensionFinderEEEbiiPT_PNS1_13ExtensionInfoEPb.exit.thread29.i

_ZN6google8protobuf8internal12ExtensionSet32FindExtensionInfoFromFieldNumberINS1_29DescriptorPoolExtensionFinderEEEbiiPT_PNS1_13ExtensionInfoEPb.exit.thread29.i: ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #16
  br label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.aa = getelementptr inbounds nuw i8, ptr %8, i64 12
  %i.ab = load i8, ptr %i.aa, align 4, !tbaa !80
  %i.ac = zext i8 %i.ab to i64
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr @_ZN6google8protobuf8internal14WireFormatLite21kWireTypeForFieldTypeE, i64 %i.ac
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !100 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %8, i64 13
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !81, !range !103, !noundef !104
  %i.ah = trunc nuw i8 %i.ag to i1
  %i.ai = icmp eq i32 %i.d, 2
  %or.cond.i19.i = and i1 %i.ai, %i.ah
  %i.aj = add i32 %i.ae, -5
  %switch.i.i20.i = icmp ult i32 %i.aj, -3
  %or.cond13.i21.i = select i1 %or.cond.i19.i, i1 %switch.i.i20.i, i1 false
  br i1 %or.cond13.i21.i, label %_ZN6google8protobuf8internal12ExtensionSet32FindExtensionInfoFromFieldNumberINS1_29DescriptorPoolExtensionFinderEEEbiiPT_PNS1_13ExtensionInfoEPb.exit.thread.i, label %_ZN6google8protobuf8internal12ExtensionSet32FindExtensionInfoFromFieldNumberINS1_29DescriptorPoolExtensionFinderEEEbiiPT_PNS1_13ExtensionInfoEPb.exit.i

_ZN6google8protobuf8internal12ExtensionSet32FindExtensionInfoFromFieldNumberINS1_29DescriptorPoolExtensionFinderEEEbiiPT_PNS1_13ExtensionInfoEPb.exit.thread.i: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #16
  br label %_ZN6google8protobuf8internal12ExtensionSet13FindExtensionEijPKNS0_7MessageEPKNS1_12ParseContextEPNS1_13ExtensionInfoEPb.exit

_ZN6google8protobuf8internal12ExtensionSet32FindExtensionInfoFromFieldNumberINS1_29DescriptorPoolExtensionFinderEEEbiiPT_PNS1_13ExtensionInfoEPb.exit.i: ; preds = %bb.e
  %i.ak = icmp eq i32 %i.ae, %i.d
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #16
  br i1 %i.ak, label %_ZN6google8protobuf8internal12ExtensionSet13FindExtensionEijPKNS0_7MessageEPKNS1_12ParseContextEPNS1_13ExtensionInfoEPb.exit, label %bb.f

bb.f:                                             ; preds = %_ZN6google8protobuf8internal12ExtensionSet32FindExtensionInfoFromFieldNumberINS1_24GeneratedExtensionFinderEEEbiiPT_PNS1_13ExtensionInfoEPb.exit.i, %_ZN6google8protobuf8internal12ExtensionSet32FindExtensionInfoFromFieldNumberINS1_29DescriptorPoolExtensionFinderEEEbiiPT_PNS1_13ExtensionInfoEPb.exit.i, %_ZN6google8protobuf8internal12ExtensionSet32FindExtensionInfoFromFieldNumberINS1_24GeneratedExtensionFinderEEEbiiPT_PNS1_13ExtensionInfoEPb.exit.thread24.i, %_ZN6google8protobuf8internal12ExtensionSet32FindExtensionInfoFromFieldNumberINS1_29DescriptorPoolExtensionFinderEEEbiiPT_PNS1_13ExtensionInfoEPb.exit.thread29.i
  %i.al = load i64, ptr %4, align 8, !tbaa !51    ; 2 uses
  %i.am = trunc i64 %i.al to i1
  br i1 %i.am, label %bb.g, label %bb.h, !prof !109

bb.g:                                             ; preds = %bb.f
  %i.an = add nsw i64 %i.al, -1
  %i.ao = inttoptr i64 %i.an to ptr
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  br label %_ZN6google8protobuf8internal16InternalMetadata22mutable_unknown_fieldsINS0_15UnknownFieldSetEEEPT_v.exit

bb.h:                                             ; preds = %bb.f
  %i.aq = call noundef ptr @_ZN6google8protobuf8internal16InternalMetadata27mutable_unknown_fields_slowINS0_15UnknownFieldSetEEEPT_v(ptr noundef nonnull align 8 dereferenceable(8) %4)
  br label %_ZN6google8protobuf8internal16InternalMetadata22mutable_unknown_fieldsINS0_15UnknownFieldSetEEEPT_v.exit

_ZN6google8protobuf8internal16InternalMetadata22mutable_unknown_fieldsINS0_15UnknownFieldSetEEEPT_v.exit: ; preds = %bb.g, %bb.h
  %.0.i = phi ptr [ %i.ap, %bb.g ], [ %i.aq, %bb.h ]
  %i.ar = call noundef ptr @_ZN6google8protobuf8internal17UnknownFieldParseEmPNS0_15UnknownFieldSetEPKcPNS1_12ParseContextE(i64 noundef %1, ptr noundef %.0.i, ptr noundef %2, ptr noundef nonnull %5)
  br label %bb.i

_ZN6google8protobuf8internal12ExtensionSet13FindExtensionEijPKNS0_7MessageEPKNS1_12ParseContextEPNS1_13ExtensionInfoEPb.exit: ; preds = %_ZN6google8protobuf8internal12ExtensionSet32FindExtensionInfoFromFieldNumberINS1_29DescriptorPoolExtensionFinderEEEbiiPT_PNS1_13ExtensionInfoEPb.exit.i, %_ZN6google8protobuf8internal12ExtensionSet32FindExtensionInfoFromFieldNumberINS1_29DescriptorPoolExtensionFinderEEEbiiPT_PNS1_13ExtensionInfoEPb.exit.thread.i, %_ZN6google8protobuf8internal12ExtensionSet32FindExtensionInfoFromFieldNumberINS1_24GeneratedExtensionFinderEEEbiiPT_PNS1_13ExtensionInfoEPb.exit.i, %_ZN6google8protobuf8internal12ExtensionSet32FindExtensionInfoFromFieldNumberINS1_24GeneratedExtensionFinderEEEbiiPT_PNS1_13ExtensionInfoEPb.exit.thread.i
  %.014 = phi i1 [ true, %_ZN6google8protobuf8internal12ExtensionSet32FindExtensionInfoFromFieldNumberINS1_24GeneratedExtensionFinderEEEbiiPT_PNS1_13ExtensionInfoEPb.exit.thread.i ], [ false, %_ZN6google8protobuf8internal12ExtensionSet32FindExtensionInfoFromFieldNumberINS1_24GeneratedExtensionFinderEEEbiiPT_PNS1_13ExtensionInfoEPb.exit.i ], [ true, %_ZN6google8protobuf8internal12ExtensionSet32FindExtensionInfoFromFieldNumberINS1_29DescriptorPoolExtensionFinderEEEbiiPT_PNS1_13ExtensionInfoEPb.exit.thread.i ], [ false, %_ZN6google8protobuf8internal12ExtensionSet32FindExtensionInfoFromFieldNumberINS1_29DescriptorPoolExtensionFinderEEEbiiPT_PNS1_13ExtensionInfoEPb.exit.i ]
  %i.as = call noundef ptr @_ZN6google8protobuf8internal12ExtensionSet27ParseFieldWithExtensionInfoINS0_15UnknownFieldSetEEEPKcibRKNS1_13ExtensionInfoEPNS1_16InternalMetadataES6_PNS1_12ParseContextE(ptr noundef nonnull align 8 dereferenceable(16) %0, i32 noundef %i.b, i1 noundef zeroext %.014, ptr noundef nonnull align 8 dereferenceable(48) %8, ptr noundef %4, ptr noundef %2, ptr noundef nonnull %5)
  br label %bb.i

bb.i:                                             ; preds = %_ZN6google8protobuf8internal12ExtensionSet13FindExtensionEijPKNS0_7MessageEPKNS1_12ParseContextEPNS1_13ExtensionInfoEPb.exit, %_ZN6google8protobuf8internal16InternalMetadata22mutable_unknown_fieldsINS0_15UnknownFieldSetEEEPT_v.exit
  %.0 = phi ptr [ %i.as, %_ZN6google8protobuf8internal12ExtensionSet13FindExtensionEijPKNS0_7MessageEPKNS1_12ParseContextEPNS1_13ExtensionInfoEPb.exit ], [ %i.ar, %_ZN6google8protobuf8internal16InternalMetadata22mutable_unknown_fieldsINS0_15UnknownFieldSetEEEPT_v.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #16
  ret ptr %.0
}

declare noundef ptr @_ZN6google8protobuf8internal17UnknownFieldParseEmPNS0_15UnknownFieldSetEPKcPNS1_12ParseContextE(i64 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef ptr @_ZN6google8protobuf8internal12ExtensionSet27ParseFieldWithExtensionInfoINS0_15UnknownFieldSetEEEPKcibRKNS1_13ExtensionInfoEPNS1_16InternalMetadataES6_PNS1_12ParseContextE(ptr noundef nonnull align 8 dereferenceable(16) %0, i32 noundef %1, i1 noundef zeroext %2, ptr noundef nonnull align 8 dereferenceable(48) %3, ptr noundef %4, ptr noundef %5, ptr noundef %6) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %7 = alloca %class.anon.100, align 8            ; 7 uses
  %8 = alloca %"class.absl::lts_20250512::log_internal::LogMessageFatal", align 8 ; 6 uses
  %i.a = load i64, ptr %4, align 8, !tbaa !51     ; 3 uses
  %i.b = trunc i64 %i.a to i1
  br i1 %i.b, label %bb.b, label %bb.c, !prof !13

bb.b:                                             ; preds = %bb.a
  %i.c = add nsw i64 %i.a, -1
  %i.d = inttoptr i64 %i.c to ptr
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !69
  br label %_ZNK6google8protobuf8internal16InternalMetadata5arenaEv.exit

bb.c:                                             ; preds = %bb.a
  %i.f = inttoptr i64 %i.a to ptr
  br label %_ZNK6google8protobuf8internal16InternalMetadata5arenaEv.exit

_ZNK6google8protobuf8internal16InternalMetadata5arenaEv.exit: ; preds = %bb.b, %bb.c
  %.0.i307 = phi ptr [ %i.e, %bb.b ], [ %i.f, %bb.c ] ; 61 uses
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 12
  %i.h = load i8, ptr %i.g, align 4, !tbaa !80    ; 2 uses
  br i1 %2, label %bb.d, label %bb.u

bb.d:                                             ; preds = %_ZNK6google8protobuf8internal16InternalMetadata5arenaEv.exit
  switch i8 %i.h, label %_ZN6google8protobuf8internal12ParseContext10ParseGroupEPNS0_11MessageLiteEPKcj.exit [
    i8 5, label %bb.e
    i8 3, label %bb.f
    i8 13, label %bb.g
    i8 4, label %bb.h
    i8 17, label %bb.i
    i8 18, label %bb.j
    i8 7, label %bb.k
    i8 6, label %bb.l
    i8 15, label %bb.m
    i8 16, label %bb.n
    i8 2, label %bb.o
    i8 1, label %bb.p
    i8 8, label %bb.q
    i8 14, label %bb.r
    i8 9, label %bb.s
    i8 12, label %bb.s
    i8 10, label %bb.s
    i8 11, label %bb.s
  ]

bb.e:                                             ; preds = %bb.d
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 14
  %i.j = load i8, ptr %i.i, align 2
  %i.k = trunc i8 %i.j to i1
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !82
  %i.n = tail call noundef ptr @_ZN6google8protobuf8internal12ExtensionSet23MutableRawRepeatedFieldEPNS0_5ArenaEihbPKNS0_15FieldDescriptorE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %.0.i307, i32 noundef %1, i8 noundef zeroext 5, i1 noundef zeroext %i.k, ptr noundef %i.m)
  %i.o = tail call noundef ptr @_ZN6google8protobuf8internal17PackedInt32ParserEPvPNS0_5ArenaEPKcPNS1_12ParseContextE(ptr noundef %i.n, ptr noundef %.0.i307, ptr noundef %5, ptr noundef %6)
  br label %_ZN6google8protobuf8internal12ParseContext10ParseGroupEPNS0_11MessageLiteEPKcj.exit

bb.f:                                             ; preds = %bb.d
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 14
  %i.q = load i8, ptr %i.p, align 2
  %i.r = trunc i8 %i.q to i1
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !82
  %i.u = tail call noundef ptr @_ZN6google8protobuf8internal12ExtensionSet23MutableRawRepeatedFieldEPNS0_5ArenaEihbPKNS0_15FieldDescriptorE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %.0.i307, i32 noundef %1, i8 noundef zeroext 3, i1 noundef zeroext %i.r, ptr noundef %i.t)
  %i.v = tail call noundef ptr @_ZN6google8protobuf8internal17PackedInt64ParserEPvPNS0_5ArenaEPKcPNS1_12ParseContextE(ptr noundef %i.u, ptr noundef %.0.i307, ptr noundef %5, ptr noundef %6)
  br label %_ZN6google8protobuf8internal12ParseContext10ParseGroupEPNS0_11MessageLiteEPKcj.exit

bb.g:                                             ; preds = %bb.d
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 14
  %i.x = load i8, ptr %i.w, align 2
  %i.y = trunc i8 %i.x to i1
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !82
  %i.ab = tail call noundef ptr @_ZN6google8protobuf8internal12ExtensionSet23MutableRawRepeatedFieldEPNS0_5ArenaEihbPKNS0_15FieldDescriptorE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %.0.i307, i32 noundef %1, i8 noundef zeroext 13, i1 noundef zeroext %i.y, ptr noundef %i.aa)
  %i.ac = tail call noundef ptr @_ZN6google8protobuf8internal18PackedUInt32ParserEPvPNS0_5ArenaEPKcPNS1_12ParseContextE(ptr noundef %i.ab, ptr noundef %.0.i307, ptr noundef %5, ptr noundef %6)
  br label %_ZN6google8protobuf8internal12ParseContext10ParseGroupEPNS0_11MessageLiteEPKcj.exit

bb.h:                                             ; preds = %bb.d
  %i.ad = getelementptr inbounds nuw i8, ptr %3, i64 14
  %i.ae = load i8, ptr %i.ad, align 2
  %i.af = trunc i8 %i.ae to i1
  %i.ag = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !82
  %i.ai = tail call noundef ptr @_ZN6google8protobuf8internal12ExtensionSet23MutableRawRepeatedFieldEPNS0_5ArenaEihbPKNS0_15FieldDescriptorE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %.0.i307, i32 noundef %1, i8 noundef zeroext 4, i1 noundef zeroext %i.af, ptr noundef %i.ah)
  %i.aj = tail call noundef ptr @_ZN6google8protobuf8internal18PackedUInt64ParserEPvPNS0_5ArenaEPKcPNS1_12ParseContextE(ptr noundef %i.ai, ptr noundef %.0.i307, ptr noundef %5, ptr noundef %6)
end_hunk_0
