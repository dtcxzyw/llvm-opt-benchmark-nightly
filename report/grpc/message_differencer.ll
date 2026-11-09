Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/grpc/original/message_differencer?download=true
inline.NumInlined: 4930
inline.NumDeleted: 2063
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 31
loop-unroll.NumUnrolled: 34
begin_hunk_0_@_ZNK6google8protobuf16MapValueConstRef15GetMessageValueEv:bb.a
  %i.f = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  call void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %1) #43
  unreachable

_ZNK6google8protobuf16MapValueConstRef4typeEv.exit: ; preds = %bb.a
  %.not = icmp eq i32 %i.b, 10
  br i1 %.not, label %bb.i, label %bb.d

bb.d:                                             ; preds = %_ZNK6google8protobuf16MapValueConstRef4typeEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #40
  call void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalC1EPKci(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull @.str.54, i32 noundef 729) #44
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessage19CopyToEncodedBufferILNS2_10StringTypeE0EEEvSt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(16) %2, i64 33, ptr nonnull @.str.55)
          to label %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi34EEERS2_RAT__Kc.exit unwind label %bb.h

_ZN4absl12lts_2025051212log_internal10LogMessagelsILi34EEERS2_RAT__Kc.exit: ; preds = %bb.d
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessage19CopyToEncodedBufferILNS2_10StringTypeE0EEEvSt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(16) %2, i64 33, ptr nonnull @.str.69)
          to label %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi34EEERS2_RAT__Kc.exit3 unwind label %bb.h

_ZN4absl12lts_2025051212log_internal10LogMessagelsILi34EEERS2_RAT__Kc.exit3: ; preds = %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi34EEERS2_RAT__Kc.exit
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessage19CopyToEncodedBufferILNS2_10StringTypeE0EEEvSt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(16) %2, i64 21, ptr nonnull @.str.57)
          to label %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi22EEERS2_RAT__Kc.exit unwind label %bb.h

_ZN4absl12lts_2025051212log_internal10LogMessagelsILi22EEERS2_RAT__Kc.exit: ; preds = %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi34EEERS2_RAT__Kc.exit3
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessage19CopyToEncodedBufferILNS2_10StringTypeE0EEEvSt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(16) %2, i64 13, ptr nonnull @.str.58)
          to label %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi14EEERS2_RAT__Kc.exit unwind label %bb.h

_ZN4absl12lts_2025051212log_internal10LogMessagelsILi14EEERS2_RAT__Kc.exit: ; preds = %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi22EEERS2_RAT__Kc.exit
  %i.g = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN6google8protobuf15FieldDescriptor14kCppTypeToNameE, i64 80), align 16, !tbaa !242 ; 2 uses
  %i.h = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.g) #40
  %i.i = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN4absl12lts_2025051212log_internal10LogMessagelsESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(16) %2, i64 %i.h, ptr nonnull %i.g)
          to label %bb.e unwind label %bb.h       ; 3 uses

bb.e:                                             ; preds = %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi14EEERS2_RAT__Kc.exit
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessage19CopyToEncodedBufferILNS2_10StringTypeE0EEEvSt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(16) %i.i, i64 1, ptr nonnull @.str.43)
          to label %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi2EEERS2_RAT__Kc.exit unwind label %bb.h

_ZN4absl12lts_2025051212log_internal10LogMessagelsILi2EEERS2_RAT__Kc.exit: ; preds = %bb.e
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessage19CopyToEncodedBufferILNS2_10StringTypeE0EEEvSt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(16) %i.i, i64 13, ptr nonnull @.str.59)
          to label %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi14EEERS2_RAT__Kc.exit4 unwind label %bb.h

_ZN4absl12lts_2025051212log_internal10LogMessagelsILi14EEERS2_RAT__Kc.exit4: ; preds = %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi2EEERS2_RAT__Kc.exit
  %i.j = invoke noundef i32 @_ZNK6google8protobuf16MapValueConstRef4typeEv(ptr noundef nonnull align 8 dereferenceable(12) %0)
          to label %bb.f unwind label %bb.h

bb.f:                                             ; preds = %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi14EEERS2_RAT__Kc.exit4
  %i.k = zext i32 %i.j to i64
  %i.l = getelementptr inbounds nuw [8 x i8], ptr @_ZN6google8protobuf15FieldDescriptor14kCppTypeToNameE, i64 %i.k
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !242  ; 2 uses
  %i.n = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.m) #40
  %i.o = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN4absl12lts_2025051212log_internal10LogMessagelsESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(16) %i.i, i64 %i.n, ptr nonnull %i.m)
          to label %bb.g unwind label %bb.h

bb.g:                                             ; preds = %bb.f
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessage5FlushEv(ptr noundef nonnull align 8 dereferenceable(16) %i.o)
          to label %_ZNKO4absl12lts_2025051212log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit unwind label %bb.h

_ZNKO4absl12lts_2025051212log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit: ; preds = %bb.g
  call void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %2) #43
  unreachable

bb.h:                                             ; preds = %bb.g, %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi2EEERS2_RAT__Kc.exit, %bb.e, %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi22EEERS2_RAT__Kc.exit, %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi34EEERS2_RAT__Kc.exit3, %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi34EEERS2_RAT__Kc.exit, %bb.d, %bb.f, %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi14EEERS2_RAT__Kc.exit4, %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi14EEERS2_RAT__Kc.exit
  %i.p = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  call void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %2) #43
  unreachable

bb.i:                                             ; preds = %_ZNK6google8protobuf16MapValueConstRef4typeEv.exit
  ret ptr %i.d
}

declare noundef ptr @_ZNK6google8protobuf10Reflection10GetMapDataERKNS0_7MessageEPKNS0_15FieldDescriptorE(ptr noundef nonnull align 8 dereferenceable(96), ptr noundef nonnull align 8 dereferenceable(16), ptr noundef) local_unnamed_addr #2

declare noundef zeroext i1 @_ZNK6google8protobuf8internal12MapFieldBase10IsMapValidEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

declare noundef ptr @_ZNK6google8protobuf10Descriptor7map_keyEv(ptr noundef nonnull align 8 dereferenceable(160)) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN6google8protobuf4util18MessageDifferencer18CompareRepeatedRepERKNS0_7MessageES5_iPKNS0_15FieldDescriptorEPSt6vectorINS2_13SpecificFieldESaISA_EE(ptr noundef nonnull align 8 dereferenceable(408) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, i32 noundef %3, ptr noundef %4, ptr noundef %5) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"class.std::vector", align 8       ; 16 uses
  %7 = alloca %"class.std::vector", align 8       ; 11 uses
  %8 = alloca %"class.absl::lts_20250512::log_internal::LogMessageFatal", align 8 ; 6 uses
  %i.a = tail call { ptr, ptr } @_ZNK6google8protobuf7Message11GetMetadataEv(ptr noundef nonnull align 8 dereferenceable(16) %1)
  %i.b = extractvalue { ptr, ptr } %i.a, 1
  %i.c = tail call { ptr, ptr } @_ZNK6google8protobuf7Message11GetMetadataEv(ptr noundef nonnull align 8 dereferenceable(16) %2)
  %i.d = extractvalue { ptr, ptr } %i.c, 1
  %i.e = tail call noundef i32 @_ZNK6google8protobuf10Reflection9FieldSizeERKNS0_7MessageEPKNS0_15FieldDescriptorE(ptr noundef nonnull align 8 dereferenceable(96) %i.b, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef %4) ; 7 uses
  %i.f = tail call noundef i32 @_ZNK6google8protobuf10Reflection9FieldSizeERKNS0_7MessageEPKNS0_15FieldDescriptorE(ptr noundef nonnull align 8 dereferenceable(96) %i.d, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef %4) ; 7 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 76
  %i.h = load i32, ptr %i.g, align 4, !tbaa !105
  %i.i = icmp eq i32 %i.h, 1
  br i1 %i.i, label %bb.b, label %_ZN6google8protobuf4util18MessageDifferencer17IsTreatedAsSubsetEPKNS0_15FieldDescriptorE.exit

bb.b:                                             ; preds = %bb.a
  %i.j = tail call noundef zeroext i1 @_ZN6google8protobuf4util18MessageDifferencer14IsTreatedAsSetEPKNS0_15FieldDescriptorE(ptr noundef nonnull align 8 dereferenceable(408) %0, ptr noundef %4)
  br i1 %i.j, label %_ZN6google8protobuf4util18MessageDifferencer17IsTreatedAsSubsetEPKNS0_15FieldDescriptorE.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = tail call noundef ptr @_ZNK6google8protobuf4util18MessageDifferencer19GetMapKeyComparatorEPKNS0_15FieldDescriptorE(ptr noundef nonnull align 8 dereferenceable(408) %0, ptr noundef %4)
  %i.l = icmp ne ptr %i.k, null
  br label %_ZN6google8protobuf4util18MessageDifferencer17IsTreatedAsSubsetEPKNS0_15FieldDescriptorE.exit

_ZN6google8protobuf4util18MessageDifferencer17IsTreatedAsSubsetEPKNS0_15FieldDescriptorE.exit: ; preds = %bb.a, %bb.b, %bb.c
  %i.m = phi i1 [ false, %bb.a ], [ true, %bb.b ], [ %i.l, %bb.c ] ; 2 uses
  %.not = icmp eq i32 %i.e, %i.f
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_ZN6google8protobuf4util18MessageDifferencer17IsTreatedAsSubsetEPKNS0_15FieldDescriptorE.exit
  %i.n = load ptr, ptr %0, align 8, !tbaa !130
  %i.o = icmp ne ptr %i.n, null
  %or.cond = or i1 %i.m, %i.o
  br i1 %or.cond, label %bb.e, label %bb.ci

bb.e:                                             ; preds = %bb.d, %_ZN6google8protobuf4util18MessageDifferencer17IsTreatedAsSubsetEPKNS0_15FieldDescriptorE.exit
  %i.p = icmp sgt i32 %i.e, %i.f
  br i1 %i.p, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.q = load ptr, ptr %0, align 8, !tbaa !130
  %i.r = icmp eq ptr %i.q, null
  br i1 %i.r, label %bb.ci, label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, i8 0, i64 24, i1 false)
  %i.s = tail call noundef ptr @_ZNK6google8protobuf4util18MessageDifferencer19GetMapKeyComparatorEPKNS0_15FieldDescriptorE(ptr noundef nonnull align 8 dereferenceable(408) %0, ptr noundef %4) ; 2 uses
  %i.t = invoke noundef zeroext i1 @_ZN6google8protobuf4util18MessageDifferencer20IsTreatedAsSmartListEPKNS0_15FieldDescriptorE(ptr noundef nonnull align 8 dereferenceable(408) %0, ptr noundef %4)
          to label %bb.h unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 3 uses

bb.h:                                             ; preds = %bb.g
  %i.u = icmp eq ptr %i.s, null
  br i1 %i.u, label %bb.i, label %.thread

bb.i:                                             ; preds = %bb.h
  %i.v = invoke noundef zeroext i1 @_ZN6google8protobuf4util18MessageDifferencer14IsTreatedAsSetEPKNS0_15FieldDescriptorE(ptr noundef nonnull align 8 dereferenceable(408) %0, ptr noundef %4)
          to label %bb.j unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.j:                                             ; preds = %bb.i
  br i1 %i.v, label %.thread, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.w = invoke noundef zeroext i1 @_ZN6google8protobuf4util18MessageDifferencer19IsTreatedAsSmartSetEPKNS0_15FieldDescriptorE(ptr noundef nonnull align 8 dereferenceable(408) %0, ptr noundef %4)
          to label %bb.l unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.l:                                             ; preds = %bb.k
  %spec.select.demorgan = or i1 %i.t, %i.w
  br i1 %spec.select.demorgan, label %.thread, label %bb.o

.thread:                                          ; preds = %bb.h, %bb.j, %bb.l
  %i.x = invoke noundef zeroext i1 @_ZN6google8protobuf4util18MessageDifferencer25MatchRepeatedFieldIndicesERKNS0_7MessageES5_iPKNS0_15FieldDescriptorEPKNS2_16MapKeyComparatorERKSt6vectorINS2_13SpecificFieldESaISD_EEPSC_IiSaIiEESK_(ptr noundef nonnull align 8 dereferenceable(408) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, i32 noundef %3, ptr noundef %4, ptr noundef %i.s, ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull %6, ptr noundef nonnull %7)
          to label %bb.m unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.m:                                             ; preds = %.thread
  br i1 %i.x, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.y = load ptr, ptr %0, align 8, !tbaa !130
  %i.z = icmp eq ptr %i.y, null
  br i1 %i.z, label %.critedge198, label %bb.o

bb.o:                                             ; preds = %bb.m, %bb.n, %bb.l
  %i.aa = phi i1 [ false, %bb.m ], [ false, %bb.n ], [ true, %bb.l ] ; 6 uses
  %i.ab = icmp slt i32 %i.e, 1
  %.not179827 = icmp slt i32 %i.f, 1
  %or.cond196.not828 = and i1 %i.aa, %.not179827
  %or.cond745829 = or i1 %i.ab, %or.cond196.not828
  br i1 %or.cond745829, label %.preheader746, label %.lr.ph839

.lr.ph839:                                        ; preds = %bb.o
  %i.ac = getelementptr inbounds nuw i8, ptr %4, i64 3 ; 6 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 30 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 15 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 357
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 356
  %i.ah = sext i32 %i.f to i64
  %i.ai = zext nneg i32 %i.e to i64
  br label %bb.p

.preheader746:                                    ; preds = %.thread741, %bb.o
  %.sroa.40.0.lcssa = phi ptr [ null, %bb.o ], [ %.sroa.40.1, %.thread741 ] ; 3 uses
  %.sroa.44.0.lcssa = phi ptr [ null, %bb.o ], [ %.sroa.44.4, %.thread741 ] ; 2 uses
  %.sroa.33.0.lcssa = phi i32 [ -1, %bb.o ], [ %.sroa.33.2, %.thread741 ] ; 2 uses
  %.0148.lcssa = phi i1 [ false, %bb.o ], [ %.5, %.thread741 ] ; 2 uses
  %i.aj = icmp sgt i32 %i.f, 0
  br i1 %i.aj, label %.lr.ph848, label %.preheader

.lr.ph848:                                        ; preds = %.preheader746
  %i.ak = getelementptr inbounds nuw i8, ptr %4, i64 3
  %i.al = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 6 uses
  %i.am = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 3 uses
  %i.an = sext i32 %i.e to i64
  %wide.trip.count = zext nneg i32 %i.f to i64
  %not. = xor i1 %i.m, true
  br label %bb.bl

bb.p:                                             ; preds = %.lr.ph839, %.thread741
  %indvars.iv879 = phi i64 [ 0, %.lr.ph839 ], [ %indvars.iv.next880, %.thread741 ] ; 14 uses
  %.0147835 = phi i32 [ 0, %.lr.ph839 ], [ %.2, %.thread741 ] ; 7 uses
  %.0148834 = phi i1 [ false, %.lr.ph839 ], [ %.5, %.thread741 ] ; 3 uses
  %.sroa.33.0833 = phi i32 [ -1, %.lr.ph839 ], [ %.sroa.33.2, %.thread741 ] ; 4 uses
  %.sroa.44.0832 = phi ptr [ null, %.lr.ph839 ], [ %.sroa.44.4, %.thread741 ] ; 7 uses
  %.sroa.40.0830 = phi ptr [ null, %.lr.ph839 ], [ %.sroa.40.1, %.thread741 ] ; 5 uses
  br i1 %i.aa, label %bb.z, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ao = load ptr, ptr %6, align 8, !tbaa !26
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %i.ao, i64 %indvars.iv879
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !27
  %i.ar = icmp eq i32 %i.aq, -1
  br i1 %i.ar, label %bb.r, label %bb.z

bb.r:                                             ; preds = %bb.q
  br i1 %i.t, label %bb.s, label %.thread741

bb.s:                                             ; preds = %bb.r
  %i.as = load ptr, ptr %0, align 8, !tbaa !130
  %i.at = icmp eq ptr %i.as, null
  br i1 %i.at, label %.critedge198, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.au = load i8, ptr %i.ac, align 1
  %i.av = and i8 %i.au, 16
  %.not.i = icmp eq i8 %i.av, 0
  br i1 %.not.i, label %_ZN6google8protobuf4util16AddSpecificIndexEPNS1_18MessageDifferencer13SpecificFieldERKNS0_7MessageEPKNS0_15FieldDescriptorEi.exit, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.aw = invoke { ptr, ptr } @_ZNK6google8protobuf7Message11GetMetadataEv(ptr noundef nonnull align 8 dereferenceable(16) %1)
          to label %.noexc unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc:                                           ; preds = %bb.u
  %i.ax = extractvalue { ptr, ptr } %i.aw, 1
  %i.ay = trunc nuw nsw i64 %indvars.iv879 to i32
  %i.az = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNK6google8protobuf10Reflection18GetRepeatedMessageERKNS0_7MessageEPKNS0_15FieldDescriptorEi(ptr noundef nonnull align 8 dereferenceable(96) %i.ax, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %4, i32 noundef %i.ay)
          to label %_ZN6google8protobuf4util16AddSpecificIndexEPNS1_18MessageDifferencer13SpecificFieldERKNS0_7MessageEPKNS0_15FieldDescriptorEi.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZN6google8protobuf4util16AddSpecificIndexEPNS1_18MessageDifferencer13SpecificFieldERKNS0_7MessageEPKNS0_15FieldDescriptorEi.exit: ; preds = %bb.t, %.noexc
  %.sroa.40.4 = phi ptr [ %.sroa.40.0830, %bb.t ], [ %i.az, %.noexc ] ; 3 uses
  %i.ba = load ptr, ptr %i.ad, align 8, !tbaa !108 ; 18 uses
  %i.bb = load ptr, ptr %i.ae, align 8, !tbaa !112
  %.not.i212 = icmp eq ptr %i.ba, %i.bb
  br i1 %.not.i212, label %bb.w, label %bb.v

bb.v:                                             ; preds = %_ZN6google8protobuf4util16AddSpecificIndexEPNS1_18MessageDifferencer13SpecificFieldERKNS0_7MessageEPKNS0_15FieldDescriptorEi.exit
  store ptr %1, ptr %i.ba, align 8, !tbaa !113
  %.sroa.19.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  store ptr %2, ptr %.sroa.19.0..sroa_idx, align 8, !tbaa !113
  %.sroa.20.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ba, i64 16
  store i32 %3, ptr %.sroa.20.0..sroa_idx, align 8, !tbaa !27
  %.sroa.21435.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ba, i64 24
  store ptr %4, ptr %.sroa.21435.0..sroa_idx, align 8, !tbaa !114
  %.sroa.24.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ba, i64 32
  store i32 -1, ptr %.sroa.24.0..sroa_idx, align 8, !tbaa !27
  %.sroa.25.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ba, i64 36
  store i32 0, ptr %.sroa.25.0..sroa_idx, align 4, !tbaa !115
  %.sroa.26.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ba, i64 40
  %i.bc = trunc nuw nsw i64 %indvars.iv879 to i32
  store i32 %i.bc, ptr %.sroa.26.0..sroa_idx, align 8, !tbaa !27
  %.sroa.33.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ba, i64 44
  store i32 %.sroa.33.0833, ptr %.sroa.33.0..sroa_idx, align 4, !tbaa !27
  %.sroa.40.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ba, i64 48
  store ptr %.sroa.40.4, ptr %.sroa.40.0..sroa_idx, align 8, !tbaa !113
  %.sroa.44.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ba, i64 56
  store ptr %.sroa.44.0832, ptr %.sroa.44.0..sroa_idx, align 8, !tbaa !113
  %.sroa.48.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ba, i64 64
  store <2 x ptr> splat (ptr null), ptr %.sroa.48.0..sroa_idx, align 8, !tbaa !116
  %.sroa.48632.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ba, i64 80
  store i32 -1, ptr %.sroa.48632.0..sroa_idx, align 8, !tbaa !27
  %.sroa.49.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ba, i64 84
  store i32 -1, ptr %.sroa.49.0..sroa_idx, align 4, !tbaa !27
  %.sroa.50.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ba, i64 88
  store i8 0, ptr %.sroa.50.0..sroa_idx, align 8, !tbaa !117
  %i.bd = load ptr, ptr %i.ad, align 8, !tbaa !108
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 96
  store ptr %i.be, ptr %i.ad, align 8, !tbaa !108
  br label %_ZNSt6vectorIN6google8protobuf4util18MessageDifferencer13SpecificFieldESaIS4_EE9push_backERKS4_.exit

bb.w:                                             ; preds = %_ZN6google8protobuf4util16AddSpecificIndexEPNS1_18MessageDifferencer13SpecificFieldERKNS0_7MessageEPKNS0_15FieldDescriptorEi.exit
  %i.bf = load ptr, ptr %5, align 8, !tbaa !109   ; 5 uses
  %i.bg = ptrtoint ptr %i.ba to i64
  %i.bh = ptrtoint ptr %i.bf to i64               ; 2 uses
  %i.bi = sub i64 %i.bg, %i.bh                    ; 3 uses
  %i.bj = icmp eq i64 %i.bi, 9223372036854775776
  br i1 %i.bj, label %.invoke, label %_ZNKSt6vectorIN6google8protobuf4util18MessageDifferencer13SpecificFieldESaIS4_EE12_M_check_lenEmPKc.exit.i.i

_ZNKSt6vectorIN6google8protobuf4util18MessageDifferencer13SpecificFieldESaIS4_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.w
  %i.bk = sdiv exact i64 %i.bi, 96                ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.bk, i64 1)
  %i.bl = add nsw i64 %.sroa.speculated.i.i.i, %i.bk ; 2 uses
  %i.bm = icmp ult i64 %i.bl, %i.bk
  %i.bn = call i64 @llvm.umin.i64(i64 %i.bl, i64 96076792050570581)
  %i.bo = select i1 %i.bm, i64 96076792050570581, i64 %i.bn ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.bo, 0
  call void @llvm.assume(i1 %.not.i.i.i)
  %i.bp = mul nuw nsw i64 %i.bo, 96
  %i.bq = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bp) #41
          to label %.noexc214 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 5 uses

.noexc214:                                        ; preds = %_ZNKSt6vectorIN6google8protobuf4util18MessageDifferencer13SpecificFieldESaIS4_EE12_M_check_lenEmPKc.exit.i.i
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 %i.bi ; 14 uses
  store ptr %1, ptr %i.br, align 8, !tbaa !113
  %.sroa.19.0..sroa_idx357 = getelementptr inbounds nuw i8, ptr %i.br, i64 8
  store ptr %2, ptr %.sroa.19.0..sroa_idx357, align 8, !tbaa !113
  %.sroa.20.0..sroa_idx383 = getelementptr inbounds nuw i8, ptr %i.br, i64 16
  store i32 %3, ptr %.sroa.20.0..sroa_idx383, align 8, !tbaa !27
  %.sroa.21435.0..sroa_idx436 = getelementptr inbounds nuw i8, ptr %i.br, i64 24
  store ptr %4, ptr %.sroa.21435.0..sroa_idx436, align 8, !tbaa !114
  %.sroa.24.0..sroa_idx462 = getelementptr inbounds nuw i8, ptr %i.br, i64 32
  store i32 -1, ptr %.sroa.24.0..sroa_idx462, align 8, !tbaa !27
  %.sroa.25.0..sroa_idx488 = getelementptr inbounds nuw i8, ptr %i.br, i64 36
  store i32 0, ptr %.sroa.25.0..sroa_idx488, align 4, !tbaa !115
  %.sroa.26.0..sroa_idx514 = getelementptr inbounds nuw i8, ptr %i.br, i64 40
  %i.bs = trunc nuw nsw i64 %indvars.iv879 to i32
  store i32 %i.bs, ptr %.sroa.26.0..sroa_idx514, align 8, !tbaa !27
  %.sroa.33.0..sroa_idx540 = getelementptr inbounds nuw i8, ptr %i.br, i64 44
  store i32 %.sroa.33.0833, ptr %.sroa.33.0..sroa_idx540, align 4, !tbaa !27
  %.sroa.40.0..sroa_idx567 = getelementptr inbounds nuw i8, ptr %i.br, i64 48
  store ptr %.sroa.40.4, ptr %.sroa.40.0..sroa_idx567, align 8, !tbaa !113
  %.sroa.44.0..sroa_idx593 = getelementptr inbounds nuw i8, ptr %i.br, i64 56
  store ptr %.sroa.44.0832, ptr %.sroa.44.0..sroa_idx593, align 8, !tbaa !113
  %.sroa.48.0..sroa_idx619 = getelementptr inbounds nuw i8, ptr %i.br, i64 64
  store <2 x ptr> splat (ptr null), ptr %.sroa.48.0..sroa_idx619, align 8, !tbaa !116
  %.sroa.48632.0..sroa_idx633 = getelementptr inbounds nuw i8, ptr %i.br, i64 80
  store i32 -1, ptr %.sroa.48632.0..sroa_idx633, align 8, !tbaa !27
  %.sroa.49.0..sroa_idx659 = getelementptr inbounds nuw i8, ptr %i.br, i64 84
  store i32 -1, ptr %.sroa.49.0..sroa_idx659, align 4, !tbaa !27
  %.sroa.50.0..sroa_idx685 = getelementptr inbounds nuw i8, ptr %i.br, i64 88
  store i8 0, ptr %.sroa.50.0..sroa_idx685, align 8, !tbaa !117
  %.not10.i.i.i.i.i = icmp eq ptr %i.bf, %i.ba
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorIN6google8protobuf4util18MessageDifferencer13SpecificFieldESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.noexc214, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.bu, %.lr.ph.i.i.i.i.i ], [ %i.bq, %.noexc214 ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.bt, %.lr.ph.i.i.i.i.i ], [ %i.bf, %.noexc214 ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %.012.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(96) %.0911.i.i.i.i.i, i64 96, i1 false), !tbaa.struct !118, !alias.scope !639
  %i.bt = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 96 ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 96 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.bt, %i.ba
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorIN6google8protobuf4util18MessageDifferencer13SpecificFieldESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !5

_ZNSt6vectorIN6google8protobuf4util18MessageDifferencer13SpecificFieldESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i.i, %.noexc214
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.bq, %.noexc214 ], [ %i.bu, %.lr.ph.i.i.i.i.i ]
  %i.bv = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 96
  %.not.i23.i.i = icmp eq ptr %i.bf, null
  br i1 %.not.i23.i.i, label %_ZNSt6vectorIN6google8protobuf4util18MessageDifferencer13SpecificFieldESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i, label %bb.x

bb.x:                                             ; preds = %_ZNSt6vectorIN6google8protobuf4util18MessageDifferencer13SpecificFieldESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i
  %i.bw = load ptr, ptr %i.ae, align 8, !tbaa !112
  %i.bx = ptrtoint ptr %i.bw to i64
  %i.by = sub i64 %i.bx, %i.bh
  call void @_ZdlPvm(ptr noundef nonnull %i.bf, i64 noundef %i.by) #42
  br label %_ZNSt6vectorIN6google8protobuf4util18MessageDifferencer13SpecificFieldESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i

_ZNSt6vectorIN6google8protobuf4util18MessageDifferencer13SpecificFieldESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i: ; preds = %bb.x, %_ZNSt6vectorIN6google8protobuf4util18MessageDifferencer13SpecificFieldESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i
  store ptr %i.bq, ptr %5, align 8, !tbaa !109
  store ptr %i.bv, ptr %i.ad, align 8, !tbaa !108
  %i.bz = getelementptr inbounds nuw [96 x i8], ptr %i.bq, i64 %i.bo
  store ptr %i.bz, ptr %i.ae, align 8, !tbaa !112
  br label %_ZNSt6vectorIN6google8protobuf4util18MessageDifferencer13SpecificFieldESaIS4_EE9push_backERKS4_.exit

_ZNSt6vectorIN6google8protobuf4util18MessageDifferencer13SpecificFieldESaIS4_EE9push_backERKS4_.exit: ; preds = %_ZNSt6vectorIN6google8protobuf4util18MessageDifferencer13SpecificFieldESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i, %bb.v
  %i.ca = load ptr, ptr %0, align 8, !tbaa !130   ; 2 uses
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !40
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 24
  %i.cd = load ptr, ptr %i.cc, align 8
  invoke void %i.cd(ptr noundef nonnull align 8 dereferenceable(8) %i.ca, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(24) %5)
          to label %bb.y unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.y:                                             ; preds = %_ZNSt6vectorIN6google8protobuf4util18MessageDifferencer13SpecificFieldESaIS4_EE9push_backERKS4_.exit
  %i.ce = load ptr, ptr %i.ad, align 8, !tbaa !108
  %i.cf = getelementptr inbounds i8, ptr %i.ce, i64 -96
  store ptr %i.cf, ptr %i.ad, align 8, !tbaa !108
  %i.cg = load ptr, ptr %6, align 8, !tbaa !26
  %i.ch = getelementptr inbounds nuw [4 x i8], ptr %i.cg, i64 %indvars.iv879
  store i32 -2, ptr %i.ch, align 4, !tbaa !27
  br label %.thread741

bb.z:                                             ; preds = %bb.q, %bb.p
  br i1 %i.t, label %.preheader750, label %.critedge

.preheader750:                                    ; preds = %bb.z
  %i.ci = load ptr, ptr %6, align 8, !tbaa !26
  %i.cj = getelementptr inbounds nuw [4 x i8], ptr %i.ci, i64 %indvars.iv879
  %i.ck = load i32, ptr %i.cj, align 4, !tbaa !27
  %.not181823 = icmp slt i32 %.0147835, %i.ck
  br i1 %.not181823, label %.lr.ph.preheader.a, label %.critedge

.lr.ph.preheader.a:                               ; preds = %.preheader750
  %i.cl = zext i32 %.0147835 to i64
  %.not.i.i = icmp slt i32 %.0147835, 0
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader.a, %bb.aj
  %indvars.iv = phi i64 [ %i.cl, %.lr.ph.preheader.a ], [ %indvars.iv.next, %bb.aj ] ; 6 uses
  %.sroa.44.1824 = phi ptr [ %.sroa.44.0832, %.lr.ph.preheader.a ], [ %.sroa.44.7, %bb.aj ]
  br i1 %.not.i.i, label %bb.aa, label %11, !prof !110

bb.aa:                                            ; preds = %.lr.ph
  %9 = shl i64 %indvars.iv, 32
  %10 = ashr exact i64 %9, 32
  %i.cm = invoke noundef nonnull ptr @_ZN4absl12lts_2025051212log_internal17MakeCheckOpStringIllEEPKcT_T0_S4_(i64 noundef 0, i64 noundef %10, ptr noundef nonnull @.str.22)
          to label %_ZN4absl12lts_2025051212log_internal12Check_LEImplEiiPKc.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

11:                                               ; preds = %.lr.ph
  %12 = load ptr, ptr %0, align 8, !tbaa !130
  %13 = icmp eq ptr %12, null
  br i1 %13, label %.critedge198, label %bb.ae

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZNKSt6vectorIN6google8protobuf4util18MessageDifferencer13SpecificFieldESaIS4_EE12_M_check_lenEmPKc.exit.i.i221, %.noexc218, %bb.af, %_ZNSt6vectorIN6google8protobuf4util18MessageDifferencer13SpecificFieldESaIS4_EE9push_backERKS4_.exit235, %_ZNSt6vectorIN6google8protobuf4util18MessageDifferencer13SpecificFieldESaIS4_EE9push_backERKS4_.exit315, %bb.bp, %.noexc297, %_ZNKSt6vectorIN6google8protobuf4util18MessageDifferencer13SpecificFieldESaIS4_EE12_M_check_lenEmPKc.exit.i.i301, %bb.g, %.thread, %bb.k, %bb.i, %_ZNKSt6vectorIN6google8protobuf4util18MessageDifferencer13SpecificFieldESaIS4_EE12_M_check_lenEmPKc.exit.i.i321, %.noexc317, %bb.by, %_ZNSt6vectorIN6google8protobuf4util18MessageDifferencer13SpecificFieldESaIS4_EE9push_backERKS4_.exit335, %_ZNKSt6vectorIN6google8protobuf4util18MessageDifferencer13SpecificFieldESaIS4_EE12_M_check_lenEmPKc.exit.i.i281, %_ZNKSt6vectorIN6google8protobuf4util18MessageDifferencer13SpecificFieldESaIS4_EE12_M_check_lenEmPKc.exit.i.i265, %_ZNKSt6vectorIN6google8protobuf4util18MessageDifferencer13SpecificFieldESaIS4_EE12_M_check_lenEmPKc.exit.i.i249, %.noexc245, %bb.ao, %.noexc241, %bb.am, %.noexc237, %bb.ak, %_ZNKSt6vectorIN6google8protobuf4util18MessageDifferencer13SpecificFieldESaIS4_EE12_M_check_lenEmPKc.exit.i.i, %.noexc, %bb.u, %_ZN6google8protobuf4util19AddSpecificNewIndexEPNS1_18MessageDifferencer13SpecificFieldERKNS0_7MessageEPKNS0_15FieldDescriptorEi.exit243, %_ZNSt6vectorIN6google8protobuf4util18MessageDifferencer13SpecificFieldESaIS4_EE9push_backERKS4_.exit263, %_ZNSt6vectorIN6google8protobuf4util18MessageDifferencer13SpecificFieldESaIS4_EE9push_backERKS4_.exit279, %_ZNSt6vectorIN6google8protobuf4util18MessageDifferencer13SpecificFieldESaIS4_EE9push_backERKS4_.exit295, %_ZNSt6vectorIN6google8protobuf4util18MessageDifferencer13SpecificFieldESaIS4_EE9push_backERKS4_.exit, %.invoke, %bb.aa
  %lpad.loopexit.split-lp975 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

_ZN4absl12lts_2025051212log_internal12Check_LEImplEiiPKc.exit: ; preds = %bb.aa
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #40
  invoke void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalC1EPKciS4_(ptr noundef nonnull align 8 dereferenceable(16) %8, ptr noundef nonnull @.str, i32 noundef 1292, ptr noundef nonnull %i.cm) #44
          to label %bb.ab unwind label %bb.ac

bb.ab:                                            ; preds = %_ZN4absl12lts_2025051212log_internal12Check_LEImplEiiPKc.exit
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessage5FlushEv(ptr noundef nonnull align 8 dereferenceable(16) %8)
          to label %_ZNKO4absl12lts_2025051212log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit unwind label %bb.ad

_ZNKO4absl12lts_2025051212log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit: ; preds = %bb.ab
  call void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %8) #43
  unreachable

bb.ac:                                            ; preds = %_ZN4absl12lts_2025051212log_internal12Check_LEImplEiiPKc.exit
  %i.cn = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #40
  br label %.loopexit.split-lp

bb.ad:                                            ; preds = %bb.ab
  %i.co = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  call void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %8) #43
  unreachable

bb.ae:                                            ; preds = %11
  %i.cp = load i8, ptr %i.ac, align 1
  %i.cq = and i8 %i.cp, 16
  %.not.i217 = icmp eq i8 %i.cq, 0
  br i1 %.not.i217, label %_ZN6google8protobuf4util19AddSpecificNewIndexEPNS1_18MessageDifferencer13SpecificFieldERKNS0_7MessageEPKNS0_15FieldDescriptorEi.exit, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.cr = invoke { ptr, ptr } @_ZNK6google8protobuf7Message11GetMetadataEv(ptr noundef nonnull align 8 dereferenceable(16) %2)
          to label %.noexc218 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc218:                                        ; preds = %bb.af
  %i.cs = extractvalue { ptr, ptr } %i.cr, 1
  %i.ct = trunc nuw i64 %indvars.iv to i32
  %i.cu = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNK6google8protobuf10Reflection18GetRepeatedMessageERKNS0_7MessageEPKNS0_15FieldDescriptorEi(ptr noundef nonnull align 8 dereferenceable(96) %i.cs, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull %4, i32 noundef %i.ct)
          to label %_ZN6google8protobuf4util19AddSpecificNewIndexEPNS1_18MessageDifferencer13SpecificFieldERKNS0_7MessageEPKNS0_15FieldDescriptorEi.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZN6google8protobuf4util19AddSpecificNewIndexEPNS1_18MessageDifferencer13SpecificFieldERKNS0_7MessageEPKNS0_15FieldDescriptorEi.exit: ; preds = %bb.ae, %.noexc218
  %.sroa.44.7 = phi ptr [ %.sroa.44.1824, %bb.ae ], [ %i.cu, %.noexc218 ] ; 4 uses
  %i.cv = load ptr, ptr %i.ad, align 8, !tbaa !108 ; 18 uses
  %i.cw = load ptr, ptr %i.ae, align 8, !tbaa !112
  %.not.i220 = icmp eq ptr %i.cv, %i.cw
  br i1 %.not.i220, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %_ZN6google8protobuf4util19AddSpecificNewIndexEPNS1_18MessageDifferencer13SpecificFieldERKNS0_7MessageEPKNS0_15FieldDescriptorEi.exit
  store ptr %1, ptr %i.cv, align 8, !tbaa !113
  %.sroa.19.0..sroa_idx359 = getelementptr inbounds nuw i8, ptr %i.cv, i64 8
  store ptr %2, ptr %.sroa.19.0..sroa_idx359, align 8, !tbaa !113
  %.sroa.20.0..sroa_idx385 = getelementptr inbounds nuw i8, ptr %i.cv, i64 16
  store i32 %3, ptr %.sroa.20.0..sroa_idx385, align 8, !tbaa !27
  %.sroa.21435.0..sroa_idx438 = getelementptr inbounds nuw i8, ptr %i.cv, i64 24
  store ptr %4, ptr %.sroa.21435.0..sroa_idx438, align 8, !tbaa !114
  %.sroa.24.0..sroa_idx464 = getelementptr inbounds nuw i8, ptr %i.cv, i64 32
  store i32 -1, ptr %.sroa.24.0..sroa_idx464, align 8, !tbaa !27
  %.sroa.25.0..sroa_idx490 = getelementptr inbounds nuw i8, ptr %i.cv, i64 36
  store i32 0, ptr %.sroa.25.0..sroa_idx490, align 4, !tbaa !115
  %.sroa.26.0..sroa_idx516 = getelementptr inbounds nuw i8, ptr %i.cv, i64 40
  %i.cx = trunc nuw i64 %indvars.iv to i32        ; 2 uses
  store i32 %i.cx, ptr %.sroa.26.0..sroa_idx516, align 8, !tbaa !27
  %.sroa.33.0..sroa_idx542 = getelementptr inbounds nuw i8, ptr %i.cv, i64 44
  store i32 %i.cx, ptr %.sroa.33.0..sroa_idx542, align 4, !tbaa !27
  %.sroa.40.0..sroa_idx569 = getelementptr inbounds nuw i8, ptr %i.cv, i64 48
  store ptr %.sroa.40.0830, ptr %.sroa.40.0..sroa_idx569, align 8, !tbaa !113
  %.sroa.44.0..sroa_idx595 = getelementptr inbounds nuw i8, ptr %i.cv, i64 56
  store ptr %.sroa.44.7, ptr %.sroa.44.0..sroa_idx595, align 8, !tbaa !113
  %.sroa.48.0..sroa_idx620 = getelementptr inbounds nuw i8, ptr %i.cv, i64 64
  store <2 x ptr> splat (ptr null), ptr %.sroa.48.0..sroa_idx620, align 8, !tbaa !116
  %.sroa.48632.0..sroa_idx635 = getelementptr inbounds nuw i8, ptr %i.cv, i64 80
  store i32 -1, ptr %.sroa.48632.0..sroa_idx635, align 8, !tbaa !27
  %.sroa.49.0..sroa_idx661 = getelementptr inbounds nuw i8, ptr %i.cv, i64 84
  store i32 -1, ptr %.sroa.49.0..sroa_idx661, align 4, !tbaa !27
  %.sroa.50.0..sroa_idx687 = getelementptr inbounds nuw i8, ptr %i.cv, i64 88
  store i8 0, ptr %.sroa.50.0..sroa_idx687, align 8, !tbaa !117
  %i.cy = load ptr, ptr %i.ad, align 8, !tbaa !108
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 96
  store ptr %i.cz, ptr %i.ad, align 8, !tbaa !108
  br label %_ZNSt6vectorIN6google8protobuf4util18MessageDifferencer13SpecificFieldESaIS4_EE9push_backERKS4_.exit235

bb.ah:                                            ; preds = %_ZN6google8protobuf4util19AddSpecificNewIndexEPNS1_18MessageDifferencer13SpecificFieldERKNS0_7MessageEPKNS0_15FieldDescriptorEi.exit
  %i.da = load ptr, ptr %5, align 8, !tbaa !109   ; 5 uses
  %i.db = ptrtoint ptr %i.cv to i64
  %i.dc = ptrtoint ptr %i.da to i64               ; 2 uses
  %i.dd = sub i64 %i.db, %i.dc                    ; 3 uses
  %i.de = icmp eq i64 %i.dd, 9223372036854775776
  br i1 %i.de, label %.invoke, label %_ZNKSt6vectorIN6google8protobuf4util18MessageDifferencer13SpecificFieldESaIS4_EE12_M_check_lenEmPKc.exit.i.i221

_ZNKSt6vectorIN6google8protobuf4util18MessageDifferencer13SpecificFieldESaIS4_EE12_M_check_lenEmPKc.exit.i.i221: ; preds = %bb.ah
  %i.df = sdiv exact i64 %i.dd, 96                ; 3 uses
  %.sroa.speculated.i.i.i222 = call i64 @llvm.umax.i64(i64 %i.df, i64 1)
  %i.dg = add nsw i64 %.sroa.speculated.i.i.i222, %i.df ; 2 uses
  %i.dh = icmp ult i64 %i.dg, %i.df
  %i.di = call i64 @llvm.umin.i64(i64 %i.dg, i64 96076792050570581)
  %i.dj = select i1 %i.dh, i64 96076792050570581, i64 %i.di ; 3 uses
  %.not.i.i.i223 = icmp ne i64 %i.dj, 0
  call void @llvm.assume(i1 %.not.i.i.i223)
  %i.dk = mul nuw nsw i64 %i.dj, 96
  %i.dl = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.dk) #41
          to label %.noexc234 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 5 uses

.noexc234:                                        ; preds = %_ZNKSt6vectorIN6google8protobuf4util18MessageDifferencer13SpecificFieldESaIS4_EE12_M_check_lenEmPKc.exit.i.i221
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 %i.dd ; 14 uses
  store ptr %1, ptr %i.dm, align 8, !tbaa !113
  %.sroa.19.0..sroa_idx361 = getelementptr inbounds nuw i8, ptr %i.dm, i64 8
  store ptr %2, ptr %.sroa.19.0..sroa_idx361, align 8, !tbaa !113
  %.sroa.20.0..sroa_idx387 = getelementptr inbounds nuw i8, ptr %i.dm, i64 16
  store i32 %3, ptr %.sroa.20.0..sroa_idx387, align 8, !tbaa !27
  %.sroa.21435.0..sroa_idx440 = getelementptr inbounds nuw i8, ptr %i.dm, i64 24
  store ptr %4, ptr %.sroa.21435.0..sroa_idx440, align 8, !tbaa !114
  %.sroa.24.0..sroa_idx466 = getelementptr inbounds nuw i8, ptr %i.dm, i64 32
  store i32 -1, ptr %.sroa.24.0..sroa_idx466, align 8, !tbaa !27
  %.sroa.25.0..sroa_idx492 = getelementptr inbounds nuw i8, ptr %i.dm, i64 36
  store i32 0, ptr %.sroa.25.0..sroa_idx492, align 4, !tbaa !115
  %.sroa.26.0..sroa_idx518 = getelementptr inbounds nuw i8, ptr %i.dm, i64 40
  %i.dn = trunc nuw i64 %indvars.iv to i32        ; 2 uses
  store i32 %i.dn, ptr %.sroa.26.0..sroa_idx518, align 8, !tbaa !27
  %.sroa.33.0..sroa_idx544 = getelementptr inbounds nuw i8, ptr %i.dm, i64 44
  store i32 %i.dn, ptr %.sroa.33.0..sroa_idx544, align 4, !tbaa !27
  %.sroa.40.0..sroa_idx571 = getelementptr inbounds nuw i8, ptr %i.dm, i64 48
  store ptr %.sroa.40.0830, ptr %.sroa.40.0..sroa_idx571, align 8, !tbaa !113
  %.sroa.44.0..sroa_idx597 = getelementptr inbounds nuw i8, ptr %i.dm, i64 56
  store ptr %.sroa.44.7, ptr %.sroa.44.0..sroa_idx597, align 8, !tbaa !113
  %.sroa.48.0..sroa_idx621 = getelementptr inbounds nuw i8, ptr %i.dm, i64 64
  store <2 x ptr> splat (ptr null), ptr %.sroa.48.0..sroa_idx621, align 8, !tbaa !116
  %.sroa.48632.0..sroa_idx637 = getelementptr inbounds nuw i8, ptr %i.dm, i64 80
  store i32 -1, ptr %.sroa.48632.0..sroa_idx637, align 8, !tbaa !27
  %.sroa.49.0..sroa_idx663 = getelementptr inbounds nuw i8, ptr %i.dm, i64 84
  store i32 -1, ptr %.sroa.49.0..sroa_idx663, align 4, !tbaa !27
  %.sroa.50.0..sroa_idx689 = getelementptr inbounds nuw i8, ptr %i.dm, i64 88
  store i8 0, ptr %.sroa.50.0..sroa_idx689, align 8, !tbaa !117
  %.not10.i.i.i.i.i224 = icmp eq ptr %i.da, %i.cv
  br i1 %.not10.i.i.i.i.i224, label %_ZNSt6vectorIN6google8protobuf4util18MessageDifferencer13SpecificFieldESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i229, label %.lr.ph.i.i.i.i.i225

.lr.ph.i.i.i.i.i225:                              ; preds = %.noexc234, %.lr.ph.i.i.i.i.i225
  %.012.i.i.i.i.i226 = phi ptr [ %i.dp, %.lr.ph.i.i.i.i.i225 ], [ %i.dl, %.noexc234 ] ; 2 uses
  %.0911.i.i.i.i.i227 = phi ptr [ %i.do, %.lr.ph.i.i.i.i.i225 ], [ %i.da, %.noexc234 ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %.012.i.i.i.i.i226, ptr noundef nonnull align 8 dereferenceable(96) %.0911.i.i.i.i.i227, i64 96, i1 false), !tbaa.struct !118, !alias.scope !640
  %i.do = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i227, i64 96 ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i226, i64 96 ; 2 uses
  %.not.i.i.i.i.i228 = icmp eq ptr %i.do, %i.cv
  br i1 %.not.i.i.i.i.i228, label %_ZNSt6vectorIN6google8protobuf4util18MessageDifferencer13SpecificFieldESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i229, label %.lr.ph.i.i.i.i.i225, !llvm.loop !5

_ZNSt6vectorIN6google8protobuf4util18MessageDifferencer13SpecificFieldESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i229: ; preds = %.lr.ph.i.i.i.i.i225, %.noexc234
  %.0.lcssa.i.i.i.i.i230 = phi ptr [ %i.dl, %.noexc234 ], [ %i.dp, %.lr.ph.i.i.i.i.i225 ]
  %i.dq = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i230, i64 96
  %.not.i23.i.i231 = icmp eq ptr %i.da, null
  br i1 %.not.i23.i.i231, label %_ZNSt6vectorIN6google8protobuf4util18MessageDifferencer13SpecificFieldESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i232, label %bb.ai

bb.ai:                                            ; preds = %_ZNSt6vectorIN6google8protobuf4util18MessageDifferencer13SpecificFieldESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i229
  %i.dr = load ptr, ptr %i.ae, align 8, !tbaa !112
  %i.ds = ptrtoint ptr %i.dr to i64
  %i.dt = sub i64 %i.ds, %i.dc
  call void @_ZdlPvm(ptr noundef nonnull %i.da, i64 noundef %i.dt) #42
  br label %_ZNSt6vectorIN6google8protobuf4util18MessageDifferencer13SpecificFieldESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i232

_ZNSt6vectorIN6google8protobuf4util18MessageDifferencer13SpecificFieldESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i232: ; preds = %bb.ai, %_ZNSt6vectorIN6google8protobuf4util18MessageDifferencer13SpecificFieldESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i229
  store ptr %i.dl, ptr %5, align 8, !tbaa !109
  store ptr %i.dq, ptr %i.ad, align 8, !tbaa !108
  %i.du = getelementptr inbounds nuw [96 x i8], ptr %i.dl, i64 %i.dj
  store ptr %i.du, ptr %i.ae, align 8, !tbaa !112
  br label %_ZNSt6vectorIN6google8protobuf4util18MessageDifferencer13SpecificFieldESaIS4_EE9push_backERKS4_.exit235

_ZNSt6vectorIN6google8protobuf4util18MessageDifferencer13SpecificFieldESaIS4_EE9push_backERKS4_.exit235: ; preds = %_ZNSt6vectorIN6google8protobuf4util18MessageDifferencer13SpecificFieldESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i232, %bb.ag
  %i.dv = load ptr, ptr %0, align 8, !tbaa !130   ; 2 uses
  %i.dw = load ptr, ptr %i.dv, align 8, !tbaa !40
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 16
  %i.dy = load ptr, ptr %i.dx, align 8
  invoke void %i.dy(ptr noundef nonnull align 8 dereferenceable(8) %i.dv, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(24) %5)
          to label %bb.aj unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.aj:                                            ; preds = %_ZNSt6vectorIN6google8protobuf4util18MessageDifferencer13SpecificFieldESaIS4_EE9push_backERKS4_.exit235
  %i.dz = load ptr, ptr %i.ad, align 8, !tbaa !108
  %i.ea = getelementptr inbounds i8, ptr %i.dz, i64 -96
  store ptr %i.ea, ptr %i.ad, align 8, !tbaa !108
  %i.eb = load ptr, ptr %7, align 8, !tbaa !26
  %i.ec = getelementptr inbounds nuw [4 x i8], ptr %i.eb, i64 %indvars.iv
  store i32 -2, ptr %i.ec, align 4, !tbaa !27
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ed = load ptr, ptr %6, align 8, !tbaa !26
  %i.ee = getelementptr inbounds nuw [4 x i8], ptr %i.ed, i64 %indvars.iv879
  %i.ef = load i32, ptr %i.ee, align 4, !tbaa !27
  %i.eg = trunc nuw i64 %indvars.iv.next to i32
  %.not181 = icmp sgt i32 %i.ef, %i.eg
  br i1 %.not181, label %.lr.ph, label %.critedge, !llvm.loop !620

.critedge:                                        ; preds = %bb.aj, %.preheader750, %bb.z
  %.sroa.44.2 = phi ptr [ %.sroa.44.0832, %bb.z ], [ %.sroa.44.0832, %.preheader750 ], [ %.sroa.44.7, %bb.aj ] ; 2 uses
  %.2150 = phi i1 [ %.0148834, %bb.z ], [ %.0148834, %.preheader750 ], [ true, %bb.aj ] ; 4 uses
  %i.eh = load i8, ptr %i.ac, align 1
  %i.ei = and i8 %i.eh, 16
  %.not.i236 = icmp eq i8 %i.ei, 0
  br i1 %.not.i236, label %_ZN6google8protobuf4util16AddSpecificIndexEPNS1_18MessageDifferencer13SpecificFieldERKNS0_7MessageEPKNS0_15FieldDescriptorEi.exit239, label %bb.ak

bb.ak:                                            ; preds = %.critedge
  %i.ej = invoke { ptr, ptr } @_ZNK6google8protobuf7Message11GetMetadataEv(ptr noundef nonnull align 8 dereferenceable(16) %1)
          to label %.noexc237 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc237:                                        ; preds = %bb.ak
  %i.ek = extractvalue { ptr, ptr } %i.ej, 1
  %i.el = trunc nuw nsw i64 %indvars.iv879 to i32
  %i.em = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNK6google8protobuf10Reflection18GetRepeatedMessageERKNS0_7MessageEPKNS0_15FieldDescriptorEi(ptr noundef nonnull align 8 dereferenceable(96) %i.ek, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %4, i32 noundef %i.el)
          to label %_ZN6google8protobuf4util16AddSpecificIndexEPNS1_18MessageDifferencer13SpecificFieldERKNS0_7MessageEPKNS0_15FieldDescriptorEi.exit239 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZN6google8protobuf4util16AddSpecificIndexEPNS1_18MessageDifferencer13SpecificFieldERKNS0_7MessageEPKNS0_15FieldDescriptorEi.exit239: ; preds = %.critedge, %.noexc237
  %.sroa.40.5 = phi ptr [ %.sroa.40.0830, %.critedge ], [ %i.em, %.noexc237 ] ; 11 uses
  br i1 %i.aa, label %bb.al, label %bb.an

bb.al:                                            ; preds = %_ZN6google8protobuf4util16AddSpecificIndexEPNS1_18MessageDifferencer13SpecificFieldERKNS0_7MessageEPKNS0_15FieldDescriptorEi.exit239
  %i.en = load i8, ptr %i.ac, align 1
  %i.eo = and i8 %i.en, 16
  %.not.i240 = icmp eq i8 %i.eo, 0
  %i.ep = trunc nuw nsw i64 %indvars.iv879 to i32 ; 5 uses
  br i1 %.not.i240, label %_ZN6google8protobuf4util19AddSpecificNewIndexEPNS1_18MessageDifferencer13SpecificFieldERKNS0_7MessageEPKNS0_15FieldDescriptorEi.exit243, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.eq = invoke { ptr, ptr } @_ZNK6google8protobuf7Message11GetMetadataEv(ptr noundef nonnull align 8 dereferenceable(16) %2)
          to label %.noexc241 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc241:                                        ; preds = %bb.am
  %i.er = extractvalue { ptr, ptr } %i.eq, 1
  %i.es = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNK6google8protobuf10Reflection18GetRepeatedMessageERKNS0_7MessageEPKNS0_15FieldDescriptorEi(ptr noundef nonnull align 8 dereferenceable(96) %i.er, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull %4, i32 noundef %i.ep)
          to label %_ZN6google8protobuf4util19AddSpecificNewIndexEPNS1_18MessageDifferencer13SpecificFieldERKNS0_7MessageEPKNS0_15FieldDescriptorEi.exit243 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

end_hunk_0
begin_hunk_1_@_ZN6google8protobuf4util18MessageDifferencer18CompareRepeatedRepERKNS0_7MessageES5_iPKNS0_15FieldDescriptorEPSt6vectorINS2_13SpecificFieldESaISA_EE:bb.a
  br label %bb.bu

bb.bu:                                            ; preds = %bb.bn, %.critedge200, %bb.bm, %bb.bt
  %.sroa.44.6 = phi ptr [ %.sroa.44.5844, %.critedge200 ], [ %.sroa.44.5844, %bb.bn ], [ %.sroa.44.10, %bb.bt ], [ %.sroa.44.5844, %bb.bm ] ; 2 uses
  %.sroa.33.4 = phi i32 [ %.sroa.33.3845, %.critedge200 ], [ %.sroa.33.3845, %bb.bn ], [ %i.kv, %bb.bt ], [ %.sroa.33.3845, %bb.bm ] ; 2 uses
  %.9 = phi i1 [ %.7846, %.critedge200 ], [ %spec.select202, %bb.bn ], [ %spec.select202, %bb.bt ], [ %.7846, %bb.bm ] ; 2 uses
  %indvars.iv.next882 = add nuw nsw i64 %indvars.iv881, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next882, %wide.trip.count
  br i1 %exitcond.not, label %.preheader, label %bb.bl, !llvm.loop !634

._crit_edge:                                      ; preds = %bb.cd, %.preheader
  %.10.lcssa = phi i1 [ %.7.lcssa, %.preheader ], [ %.11, %bb.cd ]
  %i.kw = xor i1 %.10.lcssa, true
  br label %.critedge198

bb.bv:                                            ; preds = %.lr.ph856, %bb.cd
  %indvars.iv883 = phi i64 [ 0, %.lr.ph856 ], [ %indvars.iv.next884, %bb.cd ] ; 6 uses
  %.10853 = phi i1 [ %.7.lcssa, %.lr.ph856 ], [ %.11, %bb.cd ] ; 2 uses
  %.sroa.40.2852 = phi ptr [ %.sroa.40.0.lcssa, %.lr.ph856 ], [ %.sroa.40.3, %bb.cd ] ; 3 uses
  br i1 %i.aa, label %.critedge204, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.kx = load ptr, ptr %6, align 8, !tbaa !26
  %i.ky = getelementptr inbounds nuw [4 x i8], ptr %i.kx, i64 %indvars.iv883
  %i.kz = load i32, ptr %i.ky, align 4, !tbaa !27
  %.not188.not = icmp eq i32 %i.kz, -1
  br i1 %.not188.not, label %bb.bx, label %bb.cd

.critedge204:                                     ; preds = %bb.bv
  %.old205 = icmp slt i64 %indvars.iv883, %i.jd
  br i1 %.old205, label %bb.cd, label %bb.bx

bb.bx:                                            ; preds = %bb.bw, %.critedge204
  %i.la = load i8, ptr %i.ja, align 1
  %i.lb = and i8 %i.la, 16
  %.not.i316 = icmp eq i8 %i.lb, 0
  br i1 %.not.i316, label %_ZN6google8protobuf4util16AddSpecificIndexEPNS1_18MessageDifferencer13SpecificFieldERKNS0_7MessageEPKNS0_15FieldDescriptorEi.exit319, label %bb.by

bb.by:                                            ; preds = %bb.bx
  %i.lc = invoke { ptr, ptr } @_ZNK6google8protobuf7Message11GetMetadataEv(ptr noundef nonnull align 8 dereferenceable(16) %1)
          to label %.noexc317 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc317:                                        ; preds = %bb.by
  %i.ld = extractvalue { ptr, ptr } %i.lc, 1
  %i.le = trunc nuw nsw i64 %indvars.iv883 to i32
  %i.lf = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNK6google8protobuf10Reflection18GetRepeatedMessageERKNS0_7MessageEPKNS0_15FieldDescriptorEi(ptr noundef nonnull align 8 dereferenceable(96) %i.ld, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %4, i32 noundef %i.le)
          to label %_ZN6google8protobuf4util16AddSpecificIndexEPNS1_18MessageDifferencer13SpecificFieldERKNS0_7MessageEPKNS0_15FieldDescriptorEi.exit319 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZN6google8protobuf4util16AddSpecificIndexEPNS1_18MessageDifferencer13SpecificFieldERKNS0_7MessageEPKNS0_15FieldDescriptorEi.exit319: ; preds = %bb.bx, %.noexc317
  %.sroa.40.6 = phi ptr [ %.sroa.40.2852, %bb.bx ], [ %i.lf, %.noexc317 ] ; 3 uses
  %i.lg = load ptr, ptr %i.jb, align 8, !tbaa !108 ; 18 uses
  %i.lh = load ptr, ptr %i.jc, align 8, !tbaa !112
  %.not.i320 = icmp eq ptr %i.lg, %i.lh
  br i1 %.not.i320, label %bb.ca, label %bb.bz

bb.bz:                                            ; preds = %_ZN6google8protobuf4util16AddSpecificIndexEPNS1_18MessageDifferencer13SpecificFieldERKNS0_7MessageEPKNS0_15FieldDescriptorEi.exit319
  store ptr %1, ptr %i.lg, align 8, !tbaa !113
  %.sroa.19.0..sroa_idx379 = getelementptr inbounds nuw i8, ptr %i.lg, i64 8
  store ptr %2, ptr %.sroa.19.0..sroa_idx379, align 8, !tbaa !113
  %.sroa.20.0..sroa_idx405 = getelementptr inbounds nuw i8, ptr %i.lg, i64 16
  store i32 %3, ptr %.sroa.20.0..sroa_idx405, align 8, !tbaa !27
  %.sroa.21435.0..sroa_idx458 = getelementptr inbounds nuw i8, ptr %i.lg, i64 24
  store ptr %4, ptr %.sroa.21435.0..sroa_idx458, align 8, !tbaa !114
  %.sroa.24.0..sroa_idx484 = getelementptr inbounds nuw i8, ptr %i.lg, i64 32
  store i32 -1, ptr %.sroa.24.0..sroa_idx484, align 8, !tbaa !27
  %.sroa.25.0..sroa_idx510 = getelementptr inbounds nuw i8, ptr %i.lg, i64 36
  store i32 0, ptr %.sroa.25.0..sroa_idx510, align 4, !tbaa !115
  %.sroa.26.0..sroa_idx536 = getelementptr inbounds nuw i8, ptr %i.lg, i64 40
  %i.li = trunc nuw nsw i64 %indvars.iv883 to i32
  store i32 %i.li, ptr %.sroa.26.0..sroa_idx536, align 8, !tbaa !27
  %.sroa.33.0..sroa_idx562 = getelementptr inbounds nuw i8, ptr %i.lg, i64 44
  store i32 %.sroa.33.3.lcssa, ptr %.sroa.33.0..sroa_idx562, align 4, !tbaa !27
  %.sroa.40.0..sroa_idx589 = getelementptr inbounds nuw i8, ptr %i.lg, i64 48
  store ptr %.sroa.40.6, ptr %.sroa.40.0..sroa_idx589, align 8, !tbaa !113
  %.sroa.44.0..sroa_idx615 = getelementptr inbounds nuw i8, ptr %i.lg, i64 56
  store ptr %.sroa.44.5.lcssa, ptr %.sroa.44.0..sroa_idx615, align 8, !tbaa !113
  %.sroa.48.0..sroa_idx630 = getelementptr inbounds nuw i8, ptr %i.lg, i64 64
  store <2 x ptr> splat (ptr null), ptr %.sroa.48.0..sroa_idx630, align 8, !tbaa !116
  %.sroa.48632.0..sroa_idx655 = getelementptr inbounds nuw i8, ptr %i.lg, i64 80
  store i32 -1, ptr %.sroa.48632.0..sroa_idx655, align 8, !tbaa !27
  %.sroa.49.0..sroa_idx681 = getelementptr inbounds nuw i8, ptr %i.lg, i64 84
  store i32 -1, ptr %.sroa.49.0..sroa_idx681, align 4, !tbaa !27
  %.sroa.50.0..sroa_idx707 = getelementptr inbounds nuw i8, ptr %i.lg, i64 88
  store i8 0, ptr %.sroa.50.0..sroa_idx707, align 8, !tbaa !117
  %i.lj = load ptr, ptr %i.jb, align 8, !tbaa !108
  %i.lk = getelementptr inbounds nuw i8, ptr %i.lj, i64 96
  store ptr %i.lk, ptr %i.jb, align 8, !tbaa !108
  br label %_ZNSt6vectorIN6google8protobuf4util18MessageDifferencer13SpecificFieldESaIS4_EE9push_backERKS4_.exit335

bb.ca:                                            ; preds = %_ZN6google8protobuf4util16AddSpecificIndexEPNS1_18MessageDifferencer13SpecificFieldERKNS0_7MessageEPKNS0_15FieldDescriptorEi.exit319
  %i.ll = load ptr, ptr %5, align 8, !tbaa !109   ; 5 uses
  %i.lm = ptrtoint ptr %i.lg to i64
  %i.ln = ptrtoint ptr %i.ll to i64               ; 2 uses
  %i.lo = sub i64 %i.lm, %i.ln                    ; 3 uses
  %i.lp = icmp eq i64 %i.lo, 9223372036854775776
  br i1 %i.lp, label %.invoke, label %_ZNKSt6vectorIN6google8protobuf4util18MessageDifferencer13SpecificFieldESaIS4_EE12_M_check_lenEmPKc.exit.i.i321

.invoke:                                          ; preds = %bb.w, %bb.bi, %bb.bc, %bb.at, %bb.ah, %bb.br, %bb.ca
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.53) #39
          to label %.cont unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.cont:                                            ; preds = %.invoke
  unreachable

_ZNKSt6vectorIN6google8protobuf4util18MessageDifferencer13SpecificFieldESaIS4_EE12_M_check_lenEmPKc.exit.i.i321: ; preds = %bb.ca
  %i.lq = sdiv exact i64 %i.lo, 96                ; 3 uses
  %.sroa.speculated.i.i.i322 = call i64 @llvm.umax.i64(i64 %i.lq, i64 1)
  %i.lr = add nsw i64 %.sroa.speculated.i.i.i322, %i.lq ; 2 uses
  %i.ls = icmp ult i64 %i.lr, %i.lq
  %i.lt = call i64 @llvm.umin.i64(i64 %i.lr, i64 96076792050570581)
  %i.lu = select i1 %i.ls, i64 96076792050570581, i64 %i.lt ; 3 uses
  %.not.i.i.i323 = icmp ne i64 %i.lu, 0
  call void @llvm.assume(i1 %.not.i.i.i323)
  %i.lv = mul nuw nsw i64 %i.lu, 96
  %i.lw = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.lv) #41
          to label %.noexc334 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 5 uses

.noexc334:                                        ; preds = %_ZNKSt6vectorIN6google8protobuf4util18MessageDifferencer13SpecificFieldESaIS4_EE12_M_check_lenEmPKc.exit.i.i321
  %i.lx = getelementptr inbounds nuw i8, ptr %i.lw, i64 %i.lo ; 14 uses
  store ptr %1, ptr %i.lx, align 8, !tbaa !113
  %.sroa.19.0..sroa_idx381 = getelementptr inbounds nuw i8, ptr %i.lx, i64 8
  store ptr %2, ptr %.sroa.19.0..sroa_idx381, align 8, !tbaa !113
  %.sroa.20.0..sroa_idx407 = getelementptr inbounds nuw i8, ptr %i.lx, i64 16
  store i32 %3, ptr %.sroa.20.0..sroa_idx407, align 8, !tbaa !27
  %.sroa.21435.0..sroa_idx460 = getelementptr inbounds nuw i8, ptr %i.lx, i64 24
  store ptr %4, ptr %.sroa.21435.0..sroa_idx460, align 8, !tbaa !114
  %.sroa.24.0..sroa_idx486 = getelementptr inbounds nuw i8, ptr %i.lx, i64 32
  store i32 -1, ptr %.sroa.24.0..sroa_idx486, align 8, !tbaa !27
  %.sroa.25.0..sroa_idx512 = getelementptr inbounds nuw i8, ptr %i.lx, i64 36
  store i32 0, ptr %.sroa.25.0..sroa_idx512, align 4, !tbaa !115
  %.sroa.26.0..sroa_idx538 = getelementptr inbounds nuw i8, ptr %i.lx, i64 40
  %i.ly = trunc nuw nsw i64 %indvars.iv883 to i32
  store i32 %i.ly, ptr %.sroa.26.0..sroa_idx538, align 8, !tbaa !27
  %.sroa.33.0..sroa_idx564 = getelementptr inbounds nuw i8, ptr %i.lx, i64 44
  store i32 %.sroa.33.3.lcssa, ptr %.sroa.33.0..sroa_idx564, align 4, !tbaa !27
  %.sroa.40.0..sroa_idx591 = getelementptr inbounds nuw i8, ptr %i.lx, i64 48
  store ptr %.sroa.40.6, ptr %.sroa.40.0..sroa_idx591, align 8, !tbaa !113
  %.sroa.44.0..sroa_idx617 = getelementptr inbounds nuw i8, ptr %i.lx, i64 56
  store ptr %.sroa.44.5.lcssa, ptr %.sroa.44.0..sroa_idx617, align 8, !tbaa !113
  %.sroa.48.0..sroa_idx631 = getelementptr inbounds nuw i8, ptr %i.lx, i64 64
  store <2 x ptr> splat (ptr null), ptr %.sroa.48.0..sroa_idx631, align 8, !tbaa !116
  %.sroa.48632.0..sroa_idx657 = getelementptr inbounds nuw i8, ptr %i.lx, i64 80
  store i32 -1, ptr %.sroa.48632.0..sroa_idx657, align 8, !tbaa !27
  %.sroa.49.0..sroa_idx683 = getelementptr inbounds nuw i8, ptr %i.lx, i64 84
  store i32 -1, ptr %.sroa.49.0..sroa_idx683, align 4, !tbaa !27
  %.sroa.50.0..sroa_idx709 = getelementptr inbounds nuw i8, ptr %i.lx, i64 88
  store i8 0, ptr %.sroa.50.0..sroa_idx709, align 8, !tbaa !117
  %.not10.i.i.i.i.i324 = icmp eq ptr %i.ll, %i.lg
  br i1 %.not10.i.i.i.i.i324, label %_ZNSt6vectorIN6google8protobuf4util18MessageDifferencer13SpecificFieldESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i329, label %.lr.ph.i.i.i.i.i325

.lr.ph.i.i.i.i.i325:                              ; preds = %.noexc334, %.lr.ph.i.i.i.i.i325
  %.012.i.i.i.i.i326 = phi ptr [ %i.ma, %.lr.ph.i.i.i.i.i325 ], [ %i.lw, %.noexc334 ] ; 2 uses
  %.0911.i.i.i.i.i327 = phi ptr [ %i.lz, %.lr.ph.i.i.i.i.i325 ], [ %i.ll, %.noexc334 ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %.012.i.i.i.i.i326, ptr noundef nonnull align 8 dereferenceable(96) %.0911.i.i.i.i.i327, i64 96, i1 false), !tbaa.struct !118, !alias.scope !646
  %i.lz = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i327, i64 96 ; 2 uses
  %i.ma = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i326, i64 96 ; 2 uses
  %.not.i.i.i.i.i328 = icmp eq ptr %i.lz, %i.lg
  br i1 %.not.i.i.i.i.i328, label %_ZNSt6vectorIN6google8protobuf4util18MessageDifferencer13SpecificFieldESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i329, label %.lr.ph.i.i.i.i.i325, !llvm.loop !5

_ZNSt6vectorIN6google8protobuf4util18MessageDifferencer13SpecificFieldESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i329: ; preds = %.lr.ph.i.i.i.i.i325, %.noexc334
  %.0.lcssa.i.i.i.i.i330 = phi ptr [ %i.lw, %.noexc334 ], [ %i.ma, %.lr.ph.i.i.i.i.i325 ]
  %i.mb = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i330, i64 96
  %.not.i23.i.i331 = icmp eq ptr %i.ll, null
  br i1 %.not.i23.i.i331, label %_ZNSt6vectorIN6google8protobuf4util18MessageDifferencer13SpecificFieldESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i332, label %bb.cb

bb.cb:                                            ; preds = %_ZNSt6vectorIN6google8protobuf4util18MessageDifferencer13SpecificFieldESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i329
  %i.mc = load ptr, ptr %i.jc, align 8, !tbaa !112
  %i.md = ptrtoint ptr %i.mc to i64
  %i.me = sub i64 %i.md, %i.ln
  call void @_ZdlPvm(ptr noundef nonnull %i.ll, i64 noundef %i.me) #42
  br label %_ZNSt6vectorIN6google8protobuf4util18MessageDifferencer13SpecificFieldESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i332

_ZNSt6vectorIN6google8protobuf4util18MessageDifferencer13SpecificFieldESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i332: ; preds = %bb.cb, %_ZNSt6vectorIN6google8protobuf4util18MessageDifferencer13SpecificFieldESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i329
  store ptr %i.lw, ptr %5, align 8, !tbaa !109
  store ptr %i.mb, ptr %i.jb, align 8, !tbaa !108
  %i.mf = getelementptr inbounds nuw [96 x i8], ptr %i.lw, i64 %i.lu
  store ptr %i.mf, ptr %i.jc, align 8, !tbaa !112
  br label %_ZNSt6vectorIN6google8protobuf4util18MessageDifferencer13SpecificFieldESaIS4_EE9push_backERKS4_.exit335

_ZNSt6vectorIN6google8protobuf4util18MessageDifferencer13SpecificFieldESaIS4_EE9push_backERKS4_.exit335: ; preds = %_ZNSt6vectorIN6google8protobuf4util18MessageDifferencer13SpecificFieldESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i332, %bb.bz
  %i.mg = load ptr, ptr %0, align 8, !tbaa !130   ; 2 uses
  %i.mh = load ptr, ptr %i.mg, align 8, !tbaa !40
  %i.mi = getelementptr inbounds nuw i8, ptr %i.mh, i64 24
  %i.mj = load ptr, ptr %i.mi, align 8
  invoke void %i.mj(ptr noundef nonnull align 8 dereferenceable(8) %i.mg, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(24) %5)
          to label %bb.cc unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.cc:                                            ; preds = %_ZNSt6vectorIN6google8protobuf4util18MessageDifferencer13SpecificFieldESaIS4_EE9push_backERKS4_.exit335
  %i.mk = load ptr, ptr %i.jb, align 8, !tbaa !108
  %i.ml = getelementptr inbounds i8, ptr %i.mk, i64 -96
  store ptr %i.ml, ptr %i.jb, align 8, !tbaa !108
  br label %bb.cd

bb.cd:                                            ; preds = %.critedge204, %bb.bw, %bb.cc
  %.sroa.40.3 = phi ptr [ %.sroa.40.2852, %.critedge204 ], [ %.sroa.40.6, %bb.cc ], [ %.sroa.40.2852, %bb.bw ]
  %.11 = phi i1 [ %.10853, %.critedge204 ], [ true, %bb.cc ], [ %.10853, %bb.bw ] ; 2 uses
  %indvars.iv.next884 = add nuw nsw i64 %indvars.iv883, 1 ; 2 uses
  %exitcond886.not = icmp eq i64 %indvars.iv.next884, %wide.trip.count885
  br i1 %exitcond886.not, label %._crit_edge, label %bb.bv, !llvm.loop !638

.critedge198:                                     ; preds = %._crit_edge, %11, %bb.s, %bb.aq, %bb.n
  %.7175 = phi i1 [ false, %bb.n ], [ %i.kw, %._crit_edge ], [ false, %11 ], [ false, %bb.s ], [ false, %bb.aq ]
  %i.mm = load ptr, ptr %7, align 8, !tbaa !26    ; 3 uses
  %.not.i.i.i336 = icmp eq ptr %i.mm, null
  br i1 %.not.i.i.i336, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %bb.ce

bb.ce:                                            ; preds = %.critedge198
  %i.mn = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.mo = load ptr, ptr %i.mn, align 8, !tbaa !246
  %i.mp = ptrtoint ptr %i.mo to i64
  %i.mq = ptrtoint ptr %i.mm to i64
  %i.mr = sub i64 %i.mp, %i.mq
  call void @_ZdlPvm(ptr noundef nonnull %i.mm, i64 noundef %i.mr) #42
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

_ZNSt6vectorIiSaIiEED2Ev.exit:                    ; preds = %.critedge198, %bb.ce
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #40
  %i.ms = load ptr, ptr %6, align 8, !tbaa !26    ; 3 uses
  %.not.i.i.i337 = icmp eq ptr %i.ms, null
  br i1 %.not.i.i.i337, label %_ZNSt6vectorIiSaIiEED2Ev.exit338, label %bb.cf

bb.cf:                                            ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit
  %i.mt = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.mu = load ptr, ptr %i.mt, align 8, !tbaa !246
  %i.mv = ptrtoint ptr %i.mu to i64
  %i.mw = ptrtoint ptr %i.ms to i64
  %i.mx = sub i64 %i.mv, %i.mw
  call void @_ZdlPvm(ptr noundef nonnull %i.ms, i64 noundef %i.mx) #42
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit338

_ZNSt6vectorIiSaIiEED2Ev.exit338:                 ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit, %bb.cf
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #40
  br label %bb.ci

.loopexit.split-lp:                               ; preds = %bb.ac, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %.pn190.pn.pn.pn = phi { ptr, i32 } [ %lpad.loopexit.split-lp975, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %i.cn, %bb.ac ]
  %i.my = load ptr, ptr %7, align 8, !tbaa !26    ; 3 uses
  %.not.i.i.i339 = icmp eq ptr %i.my, null
  br i1 %.not.i.i.i339, label %_ZNSt6vectorIiSaIiEED2Ev.exit340, label %bb.cg

bb.cg:                                            ; preds = %.loopexit.split-lp
  %i.mz = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.na = load ptr, ptr %i.mz, align 8, !tbaa !246
  %i.nb = ptrtoint ptr %i.na to i64
  %i.nc = ptrtoint ptr %i.my to i64
  %i.nd = sub i64 %i.nb, %i.nc
  call void @_ZdlPvm(ptr noundef nonnull %i.my, i64 noundef %i.nd) #42
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit340

_ZNSt6vectorIiSaIiEED2Ev.exit340:                 ; preds = %.loopexit.split-lp, %bb.cg
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #40
  %i.ne = load ptr, ptr %6, align 8, !tbaa !26    ; 3 uses
  %.not.i.i.i341 = icmp eq ptr %i.ne, null
  br i1 %.not.i.i.i341, label %_ZNSt6vectorIiSaIiEED2Ev.exit342, label %bb.ch

bb.ch:                                            ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit340
  %i.nf = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.ng = load ptr, ptr %i.nf, align 8, !tbaa !246
  %i.nh = ptrtoint ptr %i.ng to i64
  %i.ni = ptrtoint ptr %i.ne to i64
  %i.nj = sub i64 %i.nh, %i.ni
  call void @_ZdlPvm(ptr noundef nonnull %i.ne, i64 noundef %i.nj) #42
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit342

_ZNSt6vectorIiSaIiEED2Ev.exit342:                 ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit340, %bb.ch
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #40
  resume { ptr, i32 } %.pn190.pn.pn.pn

bb.ci:                                            ; preds = %bb.f, %bb.d, %_ZNSt6vectorIiSaIiEED2Ev.exit338
  %.8176 = phi i1 [ false, %bb.d ], [ %.7175, %_ZNSt6vectorIiSaIiEED2Ev.exit338 ], [ false, %bb.f ]
  ret i1 %.8176
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN6google8protobuf4util18MessageDifferencer20IsTreatedAsSmartListEPKNS0_15FieldDescriptorE(ptr noundef nonnull align 8 dereferenceable(408) %0, ptr noundef %1) local_unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.std::pair.341", align 8    ; 8 uses
  %i.a = alloca ptr, align 8                      ; 3 uses
  store ptr %1, ptr %i.a, align 8, !tbaa !114
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.c = load i8, ptr %i.b, align 1
  %i.d = and i8 %i.c, 32
  %.not = icmp eq i8 %i.d, 0
  br i1 %.not, label %bb.j, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !119  ; 4 uses
  %i.g = icmp ne i64 %i.f, 0
  tail call void @llvm.assume(i1 %i.g)
  %i.h = icmp ult i64 %i.f, 2
  br i1 %i.h, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.j = load i64, ptr %i.i, align 8, !tbaa !120
  %.not.i.i.i.i.i = icmp ugt i64 %i.j, 131071
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = icmp eq ptr %i.l, %1
  %or.cond = select i1 %.not.i.i.i.i.i, i1 %i.m, i1 false
  br i1 %or.cond, label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf15FieldDescriptorENS5_4util18MessageDifferencer23RepeatedFieldComparisonEEENS1_6HashEqIS8_vE4HashENSE_2EqESaISt4pairIKS8_SB_EEE22find_or_prepare_insertIS8_EESH_INSL_8iteratorEbERKT_.exit.i.i.i.thread, label %_ZNK4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf15FieldDescriptorENS5_4util18MessageDifferencer23RepeatedFieldComparisonEEENS1_6HashEqIS8_vE4HashENSE_2EqESaISt4pairIKS8_SB_EEE8containsIS8_EEbRKT_.exit.thread

bb.d:                                             ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !121  ; 3 uses
  tail call void @llvm.prefetch.p0(ptr %i.o, i32 0, i32 1, i32 1)
  %i.p = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.q = xor i64 %i.p, ptrtoint (ptr @_ZN4absl12lts_2025051213hash_internal15MixingHashState5kSeedE to i64)
  %i.r = mul i64 %i.q, -2543921745674291987
  %i.s = tail call noundef i64 @llvm.bswap.i64(i64 %i.r)
  %i.t = xor i64 %i.s, %i.p
  %i.u = mul i64 %i.t, -2543921745674291987
  %i.v = tail call noundef i64 @llvm.bswap.i64(i64 %i.u) ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.x = load i64, ptr %i.w, align 8, !tbaa !120, !noalias !657
  %i.y = and i64 %i.x, 65535
  %i.z = lshr i64 %i.v, 7
  %i.aa = xor i64 %i.y, %i.z
  %i.ab = trunc i64 %i.v to i8
  %i.ac = and i8 %i.ab, 127
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 208
  %.sroa.0.0.copyload.i.i.i.i.i.i.i = load ptr, ptr %i.ad, align 8, !tbaa !121 ; 2 uses
  %i.ae = insertelement <16 x i8> poison, i8 %i.ac, i64 0
  %i.af = shufflevector <16 x i8> %i.ae, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.e

bb.e:                                             ; preds = %bb.g, %bb.d
  %.pn.i6.i.i.i = phi i64 [ %i.aa, %bb.d ], [ %i.ax, %bb.g ]
  %.sroa.13.0.i.i.i.i = phi i64 [ 0, %bb.d ], [ %i.aw, %bb.g ]
  %.sroa.6.0.i.i.i.i = and i64 %.pn.i6.i.i.i, %i.f ; 4 uses
  %i.ag = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i, i64 %.sroa.6.0.i.i.i.i
  tail call void @llvm.prefetch.p0(ptr %i.ag, i32 0, i32 3, i32 1)
  %i.ah = getelementptr inbounds nuw i8, ptr %i.o, i64 %.sroa.6.0.i.i.i.i
  %i.ai = load <16 x i8>, ptr %i.ah, align 1, !tbaa !121 ; 2 uses
  %i.aj = icmp eq <16 x i8> %i.af, %i.ai
  %i.ak = bitcast <16 x i1> %i.aj to i16          ; 2 uses
  %.not45.i.i.i.i = icmp eq i16 %i.ak, 0
  br i1 %.not45.i.i.i.i, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.e, %bb.f
  %.sroa.017.046.i.i.i.i = phi i16 [ %i.at, %bb.f ], [ %i.ak, %bb.e ] ; 3 uses
  %i.al = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.017.046.i.i.i.i, i1 true)
  %i.am = zext nneg i16 %i.al to i64
  %i.an = add i64 %.sroa.6.0.i.i.i.i, %i.am
  %i.ao = and i64 %i.an, %i.f
  %i.ap = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i, i64 %i.ao
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !114
  %i.ar = icmp eq ptr %i.aq, %1
  br i1 %i.ar, label %_ZNK4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf15FieldDescriptorENS5_4util18MessageDifferencer23RepeatedFieldComparisonEEENS1_6HashEqIS8_vE4HashENSE_2EqESaISt4pairIKS8_SB_EEE8containsIS8_EEbRKT_.exit, label %bb.f, !prof !122

bb.f:                                             ; preds = %.lr.ph.i.i.i.i
  %i.as = add i16 %.sroa.017.046.i.i.i.i, -1
  %i.at = and i16 %i.as, %.sroa.017.046.i.i.i.i   ; 2 uses
  %.not.i.i.i.i = icmp eq i16 %i.at, 0
  br i1 %.not.i.i.i.i, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %bb.f, %bb.e
  %i.au = icmp eq <16 x i8> %i.ai, splat (i8 -128)
  %i.av = bitcast <16 x i1> %i.au to i16
  %.not43.i.i.i.i = icmp eq i16 %i.av, 0
  br i1 %.not43.i.i.i.i, label %bb.g, label %_ZNK4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf15FieldDescriptorENS5_4util18MessageDifferencer23RepeatedFieldComparisonEEENS1_6HashEqIS8_vE4HashENSE_2EqESaISt4pairIKS8_SB_EEE8containsIS8_EEbRKT_.exit.thread, !prof !110

bb.g:                                             ; preds = %._crit_edge.i.i.i.i
  %i.aw = add i64 %.sroa.13.0.i.i.i.i, 16         ; 2 uses
  %i.ax = add i64 %i.aw, %.sroa.6.0.i.i.i.i
  br label %bb.e, !llvm.loop !3

_ZNK4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf15FieldDescriptorENS5_4util18MessageDifferencer23RepeatedFieldComparisonEEENS1_6HashEqIS8_vE4HashENSE_2EqESaISt4pairIKS8_SB_EEE8containsIS8_EEbRKT_.exit: ; preds = %.lr.ph.i.i.i.i
  %.not5 = icmp eq ptr %i.o, null
  br i1 %.not5, label %_ZNK4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf15FieldDescriptorENS5_4util18MessageDifferencer23RepeatedFieldComparisonEEENS1_6HashEqIS8_vE4HashENSE_2EqESaISt4pairIKS8_SB_EEE8containsIS8_EEbRKT_.exit.thread, label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf15FieldDescriptorENS5_4util18MessageDifferencer23RepeatedFieldComparisonEEENS1_6HashEqIS8_vE4HashENSE_2EqESaISt4pairIKS8_SB_EEE22find_or_prepare_insertIS8_EESH_INSL_8iteratorEbERKT_.exit.i.i.i

_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf15FieldDescriptorENS5_4util18MessageDifferencer23RepeatedFieldComparisonEEENS1_6HashEqIS8_vE4HashENSE_2EqESaISt4pairIKS8_SB_EEE22find_or_prepare_insertIS8_EESH_INSL_8iteratorEbERKT_.exit.i.i.i.thread: ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #40
  %.sroa.4.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %i.k, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i, align 8, !alias.scope !658
  br label %_ZN4absl12lts_2025051218container_internal12raw_hash_mapINS1_17FlatHashMapPolicyIPKN6google8protobuf15FieldDescriptorENS5_4util18MessageDifferencer23RepeatedFieldComparisonEEENS1_6HashEqIS8_vE4HashENSE_2EqESaISt4pairIKS8_SB_EEEixIS8_SC_Li0EEEDTclsrT0_5valueclL_ZSt9addressofISJ_EPT_RSP_EclL_ZSt7declvalIRSJ_EDTcl9__declvalISP_ELi0EEEvEEEEERKSP_.exit

_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf15FieldDescriptorENS5_4util18MessageDifferencer23RepeatedFieldComparisonEEENS1_6HashEqIS8_vE4HashENSE_2EqESaISt4pairIKS8_SB_EEE22find_or_prepare_insertIS8_EESH_INSL_8iteratorEbERKT_.exit.i.i.i: ; preds = %_ZNK4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf15FieldDescriptorENS5_4util18MessageDifferencer23RepeatedFieldComparisonEEENS1_6HashEqIS8_vE4HashENSE_2EqESaISt4pairIKS8_SB_EEE8containsIS8_EEbRKT_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #40
  tail call void @llvm.experimental.noalias.scope.decl(metadata !659)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !660)
  call void @_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf15FieldDescriptorENS5_4util18MessageDifferencer23RepeatedFieldComparisonEEENS1_6HashEqIS8_vE4HashENSE_2EqESaISt4pairIKS8_SB_EEE30find_or_prepare_insert_non_sooIS8_EESH_INSL_8iteratorEbERKT_(ptr dead_on_unwind nonnull writable sret(%"struct.std::pair.341") align 8 %2, ptr noundef nonnull align 8 dereferenceable(32) %i.e, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  %.phi.trans.insert.i.i.i = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.pre.i.i.i = load i8, ptr %.phi.trans.insert.i.i.i, align 8, !tbaa !179, !range !180, !alias.scope !661
  %i.ay = trunc nuw i8 %.pre.i.i.i to i1
  br i1 %i.ay, label %bb.h, label %_ZN4absl12lts_2025051218container_internal12raw_hash_mapINS1_17FlatHashMapPolicyIPKN6google8protobuf15FieldDescriptorENS5_4util18MessageDifferencer23RepeatedFieldComparisonEEENS1_6HashEqIS8_vE4HashENSE_2EqESaISt4pairIKS8_SB_EEEixIS8_SC_Li0EEEDTclsrT0_5valueclL_ZSt9addressofISJ_EPT_RSP_EclL_ZSt7declvalIRSJ_EDTcl9__declvalISP_ELi0EEEvEEEEERKSP_.exit

bb.h:                                             ; preds = %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf15FieldDescriptorENS5_4util18MessageDifferencer23RepeatedFieldComparisonEEENS1_6HashEqIS8_vE4HashENSE_2EqESaISt4pairIKS8_SB_EEE22find_or_prepare_insertIS8_EESH_INSL_8iteratorEbERKT_.exit.i.i.i
  %.sroa.2.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.2.0.copyload.i.i.i = load ptr, ptr %.sroa.2.0..sroa_idx.i.i.i, align 8, !alias.scope !661 ; 2 uses
  %i.az = load ptr, ptr %i.a, align 8, !tbaa !114, !noalias !661
  store ptr %i.az, ptr %.sroa.2.0.copyload.i.i.i, align 8, !tbaa !182
  %i.ba = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload.i.i.i, i64 8
  store i32 0, ptr %i.ba, align 8, !tbaa !183
  br label %_ZN4absl12lts_2025051218container_internal12raw_hash_mapINS1_17FlatHashMapPolicyIPKN6google8protobuf15FieldDescriptorENS5_4util18MessageDifferencer23RepeatedFieldComparisonEEENS1_6HashEqIS8_vE4HashENSE_2EqESaISt4pairIKS8_SB_EEEixIS8_SC_Li0EEEDTclsrT0_5valueclL_ZSt9addressofISJ_EPT_RSP_EclL_ZSt7declvalIRSJ_EDTcl9__declvalISP_ELi0EEEvEEEEERKSP_.exit

_ZN4absl12lts_2025051218container_internal12raw_hash_mapINS1_17FlatHashMapPolicyIPKN6google8protobuf15FieldDescriptorENS5_4util18MessageDifferencer23RepeatedFieldComparisonEEENS1_6HashEqIS8_vE4HashENSE_2EqESaISt4pairIKS8_SB_EEEixIS8_SC_Li0EEEDTclsrT0_5valueclL_ZSt9addressofISJ_EPT_RSP_EclL_ZSt7declvalIRSJ_EDTcl9__declvalISP_ELi0EEEvEEEEERKSP_.exit: ; preds = %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf15FieldDescriptorENS5_4util18MessageDifferencer23RepeatedFieldComparisonEEENS1_6HashEqIS8_vE4HashENSE_2EqESaISt4pairIKS8_SB_EEE22find_or_prepare_insertIS8_EESH_INSL_8iteratorEbERKT_.exit.i.i.i.thread, %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf15FieldDescriptorENS5_4util18MessageDifferencer23RepeatedFieldComparisonEEENS1_6HashEqIS8_vE4HashENSE_2EqESaISt4pairIKS8_SB_EEE22find_or_prepare_insertIS8_EESH_INSL_8iteratorEbERKT_.exit.i.i.i, %bb.h
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.2.0.copyload.i = load ptr, ptr %.sroa.2.0..sroa_idx.i, align 8
  %i.bb = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload.i, i64 8
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #40
end_hunk_1
