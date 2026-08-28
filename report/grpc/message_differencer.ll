Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/grpc/original/message_differencer?download=true
inline.NumInlined: 4930
inline.NumDeleted: 2063
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 31
loop-unroll.NumUnrolled: 34
begin_hunk_0_@_ZNK6google8protobuf16MapValueConstRef15GetMessageValueEv:bb.a
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
  %i.g = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN6google8protobuf15FieldDescriptor14kCppTypeToNameE, i64 80), align 16, !tbaa !511 ; 2 uses
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
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !511  ; 2 uses
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
  %i.h = load i32, ptr %i.g, align 4, !tbaa !32
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
  %i.n = load ptr, ptr %0, align 8, !tbaa !125
  %i.o = icmp ne ptr %i.n, null
  %or.cond = or i1 %i.m, %i.o
  br i1 %or.cond, label %bb.e, label %bb.cq

bb.e:                                             ; preds = %bb.d, %_ZN6google8protobuf4util18MessageDifferencer17IsTreatedAsSubsetEPKNS0_15FieldDescriptorE.exit
  %i.p = icmp sgt i32 %i.e, %i.f
  br i1 %i.p, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.q = load ptr, ptr %0, align 8, !tbaa !125
  %i.r = icmp eq ptr %i.q, null
  br i1 %i.r, label %bb.cq, label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, i8 0, i64 24, i1 false)
  %i.s = tail call noundef ptr @_ZNK6google8protobuf4util18MessageDifferencer19GetMapKeyComparatorEPKNS0_15FieldDescriptorE(ptr noundef nonnull align 8 dereferenceable(408) %0, ptr noundef %4) ; 2 uses
  %i.t = invoke noundef zeroext i1 @_ZN6google8protobuf4util18MessageDifferencer20IsTreatedAsSmartListEPKNS0_15FieldDescriptorE(ptr noundef nonnull align 8 dereferenceable(408) %0, ptr noundef %4)
          to label %bb.h unwind label %bb.o       ; 3 uses

bb.h:                                             ; preds = %bb.g
  %i.u = icmp eq ptr %i.s, null
  br i1 %i.u, label %bb.i, label %.thread

bb.i:                                             ; preds = %bb.h
  %i.v = invoke noundef zeroext i1 @_ZN6google8protobuf4util18MessageDifferencer14IsTreatedAsSetEPKNS0_15FieldDescriptorE(ptr noundef nonnull align 8 dereferenceable(408) %0, ptr noundef %4)
          to label %bb.j unwind label %bb.p

bb.j:                                             ; preds = %bb.i
  br i1 %i.v, label %.thread, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.w = invoke noundef zeroext i1 @_ZN6google8protobuf4util18MessageDifferencer19IsTreatedAsSmartSetEPKNS0_15FieldDescriptorE(ptr noundef nonnull align 8 dereferenceable(408) %0, ptr noundef %4)
          to label %bb.l unwind label %bb.p

bb.l:                                             ; preds = %bb.k
  %spec.select.demorgan = or i1 %i.t, %i.w
  br i1 %spec.select.demorgan, label %.thread, label %bb.q

.thread:                                          ; preds = %bb.h, %bb.j, %bb.l
  %i.x = invoke noundef zeroext i1 @_ZN6google8protobuf4util18MessageDifferencer25MatchRepeatedFieldIndicesERKNS0_7MessageES5_iPKNS0_15FieldDescriptorEPKNS2_16MapKeyComparatorERKSt6vectorINS2_13SpecificFieldESaISD_EEPSC_IiSaIiEESK_(ptr noundef nonnull align 8 dereferenceable(408) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, i32 noundef %3, ptr noundef %4, ptr noundef %i.s, ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull %6, ptr noundef nonnull %7)
          to label %bb.m unwind label %bb.p

bb.m:                                             ; preds = %.thread
  br i1 %i.x, label %bb.q, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.y = load ptr, ptr %0, align 8, !tbaa !125
  %i.z = icmp eq ptr %i.y, null
  br i1 %i.z, label %.critedge198, label %bb.q

bb.o:                                             ; preds = %bb.g
  %i.aa = landingpad { ptr, i32 }
          cleanup
  br label %bb.cn

bb.p:                                             ; preds = %.thread, %bb.k, %bb.i
  %i.ab = landingpad { ptr, i32 }
          cleanup
  br label %bb.cn

bb.q:                                             ; preds = %bb.m, %bb.n, %bb.l
  %i.ac = phi i1 [ false, %bb.m ], [ false, %bb.n ], [ true, %bb.l ] ; 6 uses
  %i.ad = icmp slt i32 %i.e, 1
  %.not179843 = icmp slt i32 %i.f, 1
  %or.cond196.not844 = and i1 %i.ac, %.not179843
  %or.cond745845 = or i1 %i.ad, %or.cond196.not844
  br i1 %or.cond745845, label %.preheader746, label %.lr.ph855

.lr.ph855:                                        ; preds = %bb.q
  %i.ae = getelementptr inbounds nuw i8, ptr %4, i64 3 ; 6 uses
  %i.af = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 30 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 15 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 357
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 356
  %i.aj = sext i32 %i.f to i64
  %i.ak = zext nneg i32 %i.e to i64
  br label %bb.r

.preheader746:                                    ; preds = %.thread741, %bb.q
  %.sroa.40.0.lcssa = phi ptr [ null, %bb.q ], [ %.sroa.40.1, %.thread741 ] ; 3 uses
  %.sroa.44.0.lcssa = phi ptr [ null, %bb.q ], [ %.sroa.44.4, %.thread741 ] ; 2 uses
  %.sroa.33.0.lcssa = phi i32 [ -1, %bb.q ], [ %.sroa.33.2, %.thread741 ] ; 2 uses
  %.0148.lcssa = phi i1 [ false, %bb.q ], [ %.5, %.thread741 ] ; 2 uses
  %i.al = icmp sgt i32 %i.f, 0
  br i1 %i.al, label %.lr.ph864, label %.preheader

.lr.ph864:                                        ; preds = %.preheader746
  %i.am = getelementptr inbounds nuw i8, ptr %4, i64 3
  %i.an = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 6 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 3 uses
  %i.ap = sext i32 %i.e to i64
  %wide.trip.count = zext nneg i32 %i.f to i64
  %not. = xor i1 %i.m, true
  br label %bb.bq

bb.r:                                             ; preds = %.lr.ph855, %.thread741
  %indvars.iv887 = phi i64 [ 0, %.lr.ph855 ], [ %indvars.iv.next888, %.thread741 ] ; 14 uses
  %.0147851 = phi i32 [ 0, %.lr.ph855 ], [ %.2, %.thread741 ] ; 7 uses
  %.0148850 = phi i1 [ false, %.lr.ph855 ], [ %.5, %.thread741 ] ; 3 uses
  %.sroa.33.0849 = phi i32 [ -1, %.lr.ph855 ], [ %.sroa.33.2, %.thread741 ] ; 4 uses
  %.sroa.44.0848 = phi ptr [ null, %.lr.ph855 ], [ %.sroa.44.4, %.thread741 ] ; 7 uses
  %.sroa.40.0846 = phi ptr [ null, %.lr.ph855 ], [ %.sroa.40.1, %.thread741 ] ; 5 uses
  br i1 %i.ac, label %bb.ac, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.aq = load ptr, ptr %6, align 8, !tbaa !12
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %i.aq, i64 %indvars.iv887
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !13
  %i.at = icmp eq i32 %i.as, -1
  br i1 %i.at, label %bb.t, label %bb.ac

bb.t:                                             ; preds = %bb.s
  br i1 %i.t, label %bb.u, label %.thread741

bb.u:                                             ; preds = %bb.t
  %i.au = load ptr, ptr %0, align 8, !tbaa !125
  %i.av = icmp eq ptr %i.au, null
  br i1 %i.av, label %.critedge198, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.aw = load i8, ptr %i.ae, align 1
  %i.ax = and i8 %i.aw, 16
  %.not.i = icmp eq i8 %i.ax, 0
  br i1 %.not.i, label %_ZN6google8protobuf4util16AddSpecificIndexEPNS1_18MessageDifferencer13SpecificFieldERKNS0_7MessageEPKNS0_15FieldDescriptorEi.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ay = invoke { ptr, ptr } @_ZNK6google8protobuf7Message11GetMetadataEv(ptr noundef nonnull align 8 dereferenceable(16) %1)
          to label %.noexc unwind label %.loopexit759

.noexc:                                           ; preds = %bb.w
  %i.az = extractvalue { ptr, ptr } %i.ay, 1
  %i.ba = trunc nuw nsw i64 %indvars.iv887 to i32
  %i.bb = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNK6google8protobuf10Reflection18GetRepeatedMessageERKNS0_7MessageEPKNS0_15FieldDescriptorEi(ptr noundef nonnull align 8 dereferenceable(96) %i.az, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %4, i32 noundef %i.ba)
          to label %_ZN6google8protobuf4util16AddSpecificIndexEPNS1_18MessageDifferencer13SpecificFieldERKNS0_7MessageEPKNS0_15FieldDescriptorEi.exit unwind label %.loopexit759

_ZN6google8protobuf4util16AddSpecificIndexEPNS1_18MessageDifferencer13SpecificFieldERKNS0_7MessageEPKNS0_15FieldDescriptorEi.exit: ; preds = %bb.v, %.noexc
  %.sroa.40.4 = phi ptr [ %.sroa.40.0846, %bb.v ], [ %i.bb, %.noexc ] ; 3 uses
  %i.bc = load ptr, ptr %i.af, align 8, !tbaa !93 ; 18 uses
  %i.bd = load ptr, ptr %i.ag, align 8, !tbaa !99
  %.not.i212 = icmp eq ptr %i.bc, %i.bd
  br i1 %.not.i212, label %bb.y, label %bb.x

bb.x:                                             ; preds = %_ZN6google8protobuf4util16AddSpecificIndexEPNS1_18MessageDifferencer13SpecificFieldERKNS0_7MessageEPKNS0_15FieldDescriptorEi.exit
  store ptr %1, ptr %i.bc, align 8, !tbaa !101
  %.sroa.19.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  store ptr %2, ptr %.sroa.19.0..sroa_idx, align 8, !tbaa !101
  %.sroa.20.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bc, i64 16
  store i32 %3, ptr %.sroa.20.0..sroa_idx, align 8, !tbaa !13
  %.sroa.21435.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bc, i64 24
  store ptr %4, ptr %.sroa.21435.0..sroa_idx, align 8, !tbaa !102
  %.sroa.24.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bc, i64 32
  store i32 -1, ptr %.sroa.24.0..sroa_idx, align 8, !tbaa !13
  %.sroa.25.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bc, i64 36
  store i32 0, ptr %.sroa.25.0..sroa_idx, align 4, !tbaa !103
  %.sroa.26.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bc, i64 40
  %i.be = trunc nuw nsw i64 %indvars.iv887 to i32
  store i32 %i.be, ptr %.sroa.26.0..sroa_idx, align 8, !tbaa !13
  %.sroa.33.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bc, i64 44
  store i32 %.sroa.33.0849, ptr %.sroa.33.0..sroa_idx, align 4, !tbaa !13
  %.sroa.40.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bc, i64 48
  store ptr %.sroa.40.4, ptr %.sroa.40.0..sroa_idx, align 8, !tbaa !101
  %.sroa.44.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bc, i64 56
  store ptr %.sroa.44.0848, ptr %.sroa.44.0..sroa_idx, align 8, !tbaa !101
  %.sroa.48.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bc, i64 64
  store <2 x ptr> splat (ptr null), ptr %.sroa.48.0..sroa_idx, align 8
  %.sroa.48632.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bc, i64 80
  store i32 -1, ptr %.sroa.48632.0..sroa_idx, align 8, !tbaa !13
  %.sroa.49.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bc, i64 84
  store i32 -1, ptr %.sroa.49.0..sroa_idx, align 4, !tbaa !13
  %.sroa.50.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bc, i64 88
  store i8 0, ptr %.sroa.50.0..sroa_idx, align 8, !tbaa !105
  %i.bf = load ptr, ptr %i.af, align 8, !tbaa !93
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 96
  store ptr %i.bg, ptr %i.af, align 8, !tbaa !93
  br label %_ZNSt6vectorIN6google8protobuf4util18MessageDifferencer13SpecificFieldESaIS4_EE9push_backERKS4_.exit

bb.y:                                             ; preds = %_ZN6google8protobuf4util16AddSpecificIndexEPNS1_18MessageDifferencer13SpecificFieldERKNS0_7MessageEPKNS0_15FieldDescriptorEi.exit
  %i.bh = load ptr, ptr %5, align 8, !tbaa !96    ; 5 uses
  %i.bi = ptrtoint ptr %i.bc to i64
  %i.bj = ptrtoint ptr %i.bh to i64               ; 2 uses
  %i.bk = sub i64 %i.bi, %i.bj                    ; 3 uses
  %i.bl = icmp eq i64 %i.bk, 9223372036854775776
  br i1 %i.bl, label %bb.z, label %_ZNKSt6vectorIN6google8protobuf4util18MessageDifferencer13SpecificFieldESaIS4_EE12_M_check_lenEmPKc.exit.i.i

bb.z:                                             ; preds = %bb.y
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.53) #39
          to label %.noexc213 unwind label %.loopexit.split-lp760

.noexc213:                                        ; preds = %bb.z
  unreachable

_ZNKSt6vectorIN6google8protobuf4util18MessageDifferencer13SpecificFieldESaIS4_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.y
  %i.bm = sdiv exact i64 %i.bk, 96                ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.bm, i64 1)
  %i.bn = add nsw i64 %.sroa.speculated.i.i.i, %i.bm ; 2 uses
  %i.bo = icmp ult i64 %i.bn, %i.bm
  %i.bp = call i64 @llvm.umin.i64(i64 %i.bn, i64 96076792050570581)
  %i.bq = select i1 %i.bo, i64 96076792050570581, i64 %i.bp ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.bq, 0
  call void @llvm.assume(i1 %.not.i.i.i)
  %i.br = mul nuw nsw i64 %i.bq, 96
  %i.bs = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.br) #41
          to label %.noexc214 unwind label %.loopexit759 ; 5 uses

.noexc214:                                        ; preds = %_ZNKSt6vectorIN6google8protobuf4util18MessageDifferencer13SpecificFieldESaIS4_EE12_M_check_lenEmPKc.exit.i.i
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 %i.bk ; 14 uses
  store ptr %1, ptr %i.bt, align 8, !tbaa !101
  %.sroa.19.0..sroa_idx357 = getelementptr inbounds nuw i8, ptr %i.bt, i64 8
  store ptr %2, ptr %.sroa.19.0..sroa_idx357, align 8, !tbaa !101
  %.sroa.20.0..sroa_idx383 = getelementptr inbounds nuw i8, ptr %i.bt, i64 16
  store i32 %3, ptr %.sroa.20.0..sroa_idx383, align 8, !tbaa !13
  %.sroa.21435.0..sroa_idx436 = getelementptr inbounds nuw i8, ptr %i.bt, i64 24
  store ptr %4, ptr %.sroa.21435.0..sroa_idx436, align 8, !tbaa !102
  %.sroa.24.0..sroa_idx462 = getelementptr inbounds nuw i8, ptr %i.bt, i64 32
  store i32 -1, ptr %.sroa.24.0..sroa_idx462, align 8, !tbaa !13
  %.sroa.25.0..sroa_idx488 = getelementptr inbounds nuw i8, ptr %i.bt, i64 36
  store i32 0, ptr %.sroa.25.0..sroa_idx488, align 4, !tbaa !103
  %.sroa.26.0..sroa_idx514 = getelementptr inbounds nuw i8, ptr %i.bt, i64 40
  %i.bu = trunc nuw nsw i64 %indvars.iv887 to i32
  store i32 %i.bu, ptr %.sroa.26.0..sroa_idx514, align 8, !tbaa !13
  %.sroa.33.0..sroa_idx540 = getelementptr inbounds nuw i8, ptr %i.bt, i64 44
  store i32 %.sroa.33.0849, ptr %.sroa.33.0..sroa_idx540, align 4, !tbaa !13
  %.sroa.40.0..sroa_idx567 = getelementptr inbounds nuw i8, ptr %i.bt, i64 48
  store ptr %.sroa.40.4, ptr %.sroa.40.0..sroa_idx567, align 8, !tbaa !101
  %.sroa.44.0..sroa_idx593 = getelementptr inbounds nuw i8, ptr %i.bt, i64 56
  store ptr %.sroa.44.0848, ptr %.sroa.44.0..sroa_idx593, align 8, !tbaa !101
  %.sroa.48.0..sroa_idx619 = getelementptr inbounds nuw i8, ptr %i.bt, i64 64
  store <2 x ptr> splat (ptr null), ptr %.sroa.48.0..sroa_idx619, align 8
  %.sroa.48632.0..sroa_idx633 = getelementptr inbounds nuw i8, ptr %i.bt, i64 80
  store i32 -1, ptr %.sroa.48632.0..sroa_idx633, align 8, !tbaa !13
  %.sroa.49.0..sroa_idx659 = getelementptr inbounds nuw i8, ptr %i.bt, i64 84
  store i32 -1, ptr %.sroa.49.0..sroa_idx659, align 4, !tbaa !13
  %.sroa.50.0..sroa_idx685 = getelementptr inbounds nuw i8, ptr %i.bt, i64 88
  store i8 0, ptr %.sroa.50.0..sroa_idx685, align 8, !tbaa !105
  %.not10.i.i.i.i.i = icmp eq ptr %i.bh, %i.bc
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorIN6google8protobuf4util18MessageDifferencer13SpecificFieldESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.noexc214, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.bw, %.lr.ph.i.i.i.i.i ], [ %i.bs, %.noexc214 ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.bv, %.lr.ph.i.i.i.i.i ], [ %i.bh, %.noexc214 ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %.012.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(96) %.0911.i.i.i.i.i, i64 96, i1 false), !tbaa.struct !100, !alias.scope !545
  %i.bv = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 96 ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 96 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.bv, %i.bc
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorIN6google8protobuf4util18MessageDifferencer13SpecificFieldESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !444

_ZNSt6vectorIN6google8protobuf4util18MessageDifferencer13SpecificFieldESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i.i, %.noexc214
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.bs, %.noexc214 ], [ %i.bw, %.lr.ph.i.i.i.i.i ]
  %i.bx = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 96
  %.not.i23.i.i = icmp eq ptr %i.bh, null
  br i1 %.not.i23.i.i, label %_ZNSt6vectorIN6google8protobuf4util18MessageDifferencer13SpecificFieldESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i, label %bb.aa

bb.aa:                                            ; preds = %_ZNSt6vectorIN6google8protobuf4util18MessageDifferencer13SpecificFieldESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i
  %i.by = load ptr, ptr %i.ag, align 8, !tbaa !99
  %i.bz = ptrtoint ptr %i.by to i64
  %i.ca = sub i64 %i.bz, %i.bj
  call void @_ZdlPvm(ptr noundef nonnull %i.bh, i64 noundef %i.ca) #42
  br label %_ZNSt6vectorIN6google8protobuf4util18MessageDifferencer13SpecificFieldESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i

_ZNSt6vectorIN6google8protobuf4util18MessageDifferencer13SpecificFieldESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i: ; preds = %bb.aa, %_ZNSt6vectorIN6google8protobuf4util18MessageDifferencer13SpecificFieldESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i
  store ptr %i.bs, ptr %5, align 8, !tbaa !96
  store ptr %i.bx, ptr %i.af, align 8, !tbaa !93
  %i.cb = getelementptr inbounds nuw [96 x i8], ptr %i.bs, i64 %i.bq
  store ptr %i.cb, ptr %i.ag, align 8, !tbaa !99
  br label %_ZNSt6vectorIN6google8protobuf4util18MessageDifferencer13SpecificFieldESaIS4_EE9push_backERKS4_.exit

_ZNSt6vectorIN6google8protobuf4util18MessageDifferencer13SpecificFieldESaIS4_EE9push_backERKS4_.exit: ; preds = %_ZNSt6vectorIN6google8protobuf4util18MessageDifferencer13SpecificFieldESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i, %bb.x
  %i.cc = load ptr, ptr %0, align 8, !tbaa !125   ; 2 uses
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !26
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 24
  %i.cf = load ptr, ptr %i.ce, align 8
  invoke void %i.cf(ptr noundef nonnull align 8 dereferenceable(8) %i.cc, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(24) %5)
          to label %bb.ab unwind label %.loopexit759

bb.ab:                                            ; preds = %_ZNSt6vectorIN6google8protobuf4util18MessageDifferencer13SpecificFieldESaIS4_EE9push_backERKS4_.exit
  %i.cg = load ptr, ptr %i.af, align 8, !tbaa !93
  %i.ch = getelementptr inbounds i8, ptr %i.cg, i64 -96
  store ptr %i.ch, ptr %i.af, align 8, !tbaa !93
  %i.ci = load ptr, ptr %6, align 8, !tbaa !12
  %i.cj = getelementptr inbounds nuw [4 x i8], ptr %i.ci, i64 %indvars.iv887
  store i32 -2, ptr %i.cj, align 4, !tbaa !13
  br label %.thread741

.loopexit759:                                     ; preds = %_ZNSt6vectorIN6google8protobuf4util18MessageDifferencer13SpecificFieldESaIS4_EE9push_backERKS4_.exit, %bb.w, %.noexc, %_ZNKSt6vectorIN6google8protobuf4util18MessageDifferencer13SpecificFieldESaIS4_EE12_M_check_lenEmPKc.exit.i.i, %bb.ap, %.noexc237, %bb.ar, %.noexc241, %bb.at, %.noexc245
  %lpad.loopexit761 = landingpad { ptr, i32 }
          cleanup
  br label %bb.cn

.loopexit.split-lp760:                            ; preds = %bb.z
  %lpad.loopexit.split-lp762 = landingpad { ptr, i32 }
          cleanup
  br label %bb.cn

bb.ac:                                            ; preds = %bb.s, %bb.r
  br i1 %i.t, label %.preheader752, label %.critedge

.preheader752:                                    ; preds = %bb.ac
  %i.ck = load ptr, ptr %6, align 8, !tbaa !12
  %i.cl = getelementptr inbounds nuw [4 x i8], ptr %i.ck, i64 %indvars.iv887
  %i.cm = load i32, ptr %i.cl, align 4, !tbaa !13
  %.not181839 = icmp slt i32 %.0147851, %i.cm
  br i1 %.not181839, label %.lr.ph.preheader.a, label %.critedge

.lr.ph.preheader.a:                               ; preds = %.preheader752
  %i.cn = zext i32 %.0147851 to i64
  %.not.i.i = icmp slt i32 %.0147851, 0
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader.a, %bb.ao
  %indvars.iv = phi i64 [ %i.cn, %.lr.ph.preheader.a ], [ %indvars.iv.next, %bb.ao ] ; 6 uses
  %.sroa.44.1840 = phi ptr [ %.sroa.44.0848, %.lr.ph.preheader.a ], [ %.sroa.44.7, %bb.ao ]
  br i1 %.not.i.i, label %bb.ad, label %10, !prof !97

bb.ad:                                            ; preds = %.lr.ph
  %sext = shl i64 %indvars.iv, 32
  %9 = ashr exact i64 %sext, 32
  %i.co = invoke noundef nonnull ptr @_ZN4absl12lts_2025051212log_internal17MakeCheckOpStringIllEEPKcT_T0_S4_(i64 noundef 0, i64 noundef %9, ptr noundef nonnull @.str.22)
          to label %_ZN4absl12lts_2025051212log_internal12Check_LEImplEiiPKc.exit unwind label %bb.ae

10:                                               ; preds = %.lr.ph
  %11 = load ptr, ptr %0, align 8, !tbaa !125
  %12 = icmp eq ptr %11, null
  br i1 %12, label %.critedge198, label %bb.ai

bb.ae:                                            ; preds = %bb.ad
  %i.cp = landingpad { ptr, i32 }
          cleanup
  br label %bb.cn

_ZN4absl12lts_2025051212log_internal12Check_LEImplEiiPKc.exit: ; preds = %bb.ad
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #40
  invoke void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalC1EPKciS4_(ptr noundef nonnull align 8 dereferenceable(16) %8, ptr noundef nonnull @.str, i32 noundef 1292, ptr noundef nonnull %i.co) #44
          to label %bb.af unwind label %bb.ag

bb.af:                                            ; preds = %_ZN4absl12lts_2025051212log_internal12Check_LEImplEiiPKc.exit
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessage5FlushEv(ptr noundef nonnull align 8 dereferenceable(16) %8)
          to label %_ZNKO4absl12lts_2025051212log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit unwind label %bb.ah

_ZNKO4absl12lts_2025051212log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit: ; preds = %bb.af
  call void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %8) #43
  unreachable

bb.ag:                                            ; preds = %_ZN4absl12lts_2025051212log_internal12Check_LEImplEiiPKc.exit
  %i.cq = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #40
  br label %bb.cn

bb.ah:                                            ; preds = %bb.af
  %i.cr = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  call void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %8) #43
  unreachable

bb.ai:                                            ; preds = %10
  %i.cs = load i8, ptr %i.ae, align 1
  %i.ct = and i8 %i.cs, 16
  %.not.i217 = icmp eq i8 %i.ct, 0
  br i1 %.not.i217, label %_ZN6google8protobuf4util19AddSpecificNewIndexEPNS1_18MessageDifferencer13SpecificFieldERKNS0_7MessageEPKNS0_15FieldDescriptorEi.exit, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.cu = invoke { ptr, ptr } @_ZNK6google8protobuf7Message11GetMetadataEv(ptr noundef nonnull align 8 dereferenceable(16) %2)
          to label %.noexc218 unwind label %.loopexit753

.noexc218:                                        ; preds = %bb.aj
  %i.cv = extractvalue { ptr, ptr } %i.cu, 1
  %i.cw = trunc nuw i64 %indvars.iv to i32
  %i.cx = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNK6google8protobuf10Reflection18GetRepeatedMessageERKNS0_7MessageEPKNS0_15FieldDescriptorEi(ptr noundef nonnull align 8 dereferenceable(96) %i.cv, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull %4, i32 noundef %i.cw)
          to label %_ZN6google8protobuf4util19AddSpecificNewIndexEPNS1_18MessageDifferencer13SpecificFieldERKNS0_7MessageEPKNS0_15FieldDescriptorEi.exit unwind label %.loopexit753

_ZN6google8protobuf4util19AddSpecificNewIndexEPNS1_18MessageDifferencer13SpecificFieldERKNS0_7MessageEPKNS0_15FieldDescriptorEi.exit: ; preds = %bb.ai, %.noexc218
  %.sroa.44.7 = phi ptr [ %.sroa.44.1840, %bb.ai ], [ %i.cx, %.noexc218 ] ; 4 uses
  %i.cy = load ptr, ptr %i.af, align 8, !tbaa !93 ; 18 uses
  %i.cz = load ptr, ptr %i.ag, align 8, !tbaa !99
  %.not.i220 = icmp eq ptr %i.cy, %i.cz
  br i1 %.not.i220, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %_ZN6google8protobuf4util19AddSpecificNewIndexEPNS1_18MessageDifferencer13SpecificFieldERKNS0_7MessageEPKNS0_15FieldDescriptorEi.exit
  store ptr %1, ptr %i.cy, align 8, !tbaa !101
  %.sroa.19.0..sroa_idx359 = getelementptr inbounds nuw i8, ptr %i.cy, i64 8
  store ptr %2, ptr %.sroa.19.0..sroa_idx359, align 8, !tbaa !101
  %.sroa.20.0..sroa_idx385 = getelementptr inbounds nuw i8, ptr %i.cy, i64 16
  store i32 %3, ptr %.sroa.20.0..sroa_idx385, align 8, !tbaa !13
  %.sroa.21435.0..sroa_idx438 = getelementptr inbounds nuw i8, ptr %i.cy, i64 24
  store ptr %4, ptr %.sroa.21435.0..sroa_idx438, align 8, !tbaa !102
  %.sroa.24.0..sroa_idx464 = getelementptr inbounds nuw i8, ptr %i.cy, i64 32
  store i32 -1, ptr %.sroa.24.0..sroa_idx464, align 8, !tbaa !13
  %.sroa.25.0..sroa_idx490 = getelementptr inbounds nuw i8, ptr %i.cy, i64 36
  store i32 0, ptr %.sroa.25.0..sroa_idx490, align 4, !tbaa !103
  %.sroa.26.0..sroa_idx516 = getelementptr inbounds nuw i8, ptr %i.cy, i64 40
  %i.da = trunc nuw i64 %indvars.iv to i32        ; 2 uses
  store i32 %i.da, ptr %.sroa.26.0..sroa_idx516, align 8, !tbaa !13
  %.sroa.33.0..sroa_idx542 = getelementptr inbounds nuw i8, ptr %i.cy, i64 44
  store i32 %i.da, ptr %.sroa.33.0..sroa_idx542, align 4, !tbaa !13
  %.sroa.40.0..sroa_idx569 = getelementptr inbounds nuw i8, ptr %i.cy, i64 48
  store ptr %.sroa.40.0846, ptr %.sroa.40.0..sroa_idx569, align 8, !tbaa !101
  %.sroa.44.0..sroa_idx595 = getelementptr inbounds nuw i8, ptr %i.cy, i64 56
  store ptr %.sroa.44.7, ptr %.sroa.44.0..sroa_idx595, align 8, !tbaa !101
  %.sroa.48.0..sroa_idx620 = getelementptr inbounds nuw i8, ptr %i.cy, i64 64
  store <2 x ptr> splat (ptr null), ptr %.sroa.48.0..sroa_idx620, align 8
  %.sroa.48632.0..sroa_idx635 = getelementptr inbounds nuw i8, ptr %i.cy, i64 80
  store i32 -1, ptr %.sroa.48632.0..sroa_idx635, align 8, !tbaa !13
  %.sroa.49.0..sroa_idx661 = getelementptr inbounds nuw i8, ptr %i.cy, i64 84
  store i32 -1, ptr %.sroa.49.0..sroa_idx661, align 4, !tbaa !13
  %.sroa.50.0..sroa_idx687 = getelementptr inbounds nuw i8, ptr %i.cy, i64 88
  store i8 0, ptr %.sroa.50.0..sroa_idx687, align 8, !tbaa !105
  %i.db = load ptr, ptr %i.af, align 8, !tbaa !93
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 96
  store ptr %i.dc, ptr %i.af, align 8, !tbaa !93
  br label %_ZNSt6vectorIN6google8protobuf4util18MessageDifferencer13SpecificFieldESaIS4_EE9push_backERKS4_.exit235

bb.al:                                            ; preds = %_ZN6google8protobuf4util19AddSpecificNewIndexEPNS1_18MessageDifferencer13SpecificFieldERKNS0_7MessageEPKNS0_15FieldDescriptorEi.exit
  %i.dd = load ptr, ptr %5, align 8, !tbaa !96    ; 5 uses
  %i.de = ptrtoint ptr %i.cy to i64
  %i.df = ptrtoint ptr %i.dd to i64               ; 2 uses
  %i.dg = sub i64 %i.de, %i.df                    ; 3 uses
  %i.dh = icmp eq i64 %i.dg, 9223372036854775776
  br i1 %i.dh, label %bb.am, label %_ZNKSt6vectorIN6google8protobuf4util18MessageDifferencer13SpecificFieldESaIS4_EE12_M_check_lenEmPKc.exit.i.i221

bb.am:                                            ; preds = %bb.al
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.53) #39
          to label %.noexc233 unwind label %.loopexit.split-lp754

.noexc233:                                        ; preds = %bb.am
  unreachable

_ZNKSt6vectorIN6google8protobuf4util18MessageDifferencer13SpecificFieldESaIS4_EE12_M_check_lenEmPKc.exit.i.i221: ; preds = %bb.al
  %i.di = sdiv exact i64 %i.dg, 96                ; 3 uses
  %.sroa.speculated.i.i.i222 = call i64 @llvm.umax.i64(i64 %i.di, i64 1)
  %i.dj = add nsw i64 %.sroa.speculated.i.i.i222, %i.di ; 2 uses
  %i.dk = icmp ult i64 %i.dj, %i.di
  %i.dl = call i64 @llvm.umin.i64(i64 %i.dj, i64 96076792050570581)
  %i.dm = select i1 %i.dk, i64 96076792050570581, i64 %i.dl ; 3 uses
  %.not.i.i.i223 = icmp ne i64 %i.dm, 0
  call void @llvm.assume(i1 %.not.i.i.i223)
  %i.dn = mul nuw nsw i64 %i.dm, 96
  %i.do = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.dn) #41
          to label %.noexc234 unwind label %.loopexit753 ; 5 uses

.noexc234:                                        ; preds = %_ZNKSt6vectorIN6google8protobuf4util18MessageDifferencer13SpecificFieldESaIS4_EE12_M_check_lenEmPKc.exit.i.i221
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 %i.dg ; 14 uses
  store ptr %1, ptr %i.dp, align 8, !tbaa !101
  %.sroa.19.0..sroa_idx361 = getelementptr inbounds nuw i8, ptr %i.dp, i64 8
  store ptr %2, ptr %.sroa.19.0..sroa_idx361, align 8, !tbaa !101
  %.sroa.20.0..sroa_idx387 = getelementptr inbounds nuw i8, ptr %i.dp, i64 16
  store i32 %3, ptr %.sroa.20.0..sroa_idx387, align 8, !tbaa !13
  %.sroa.21435.0..sroa_idx440 = getelementptr inbounds nuw i8, ptr %i.dp, i64 24
  store ptr %4, ptr %.sroa.21435.0..sroa_idx440, align 8, !tbaa !102
  %.sroa.24.0..sroa_idx466 = getelementptr inbounds nuw i8, ptr %i.dp, i64 32
  store i32 -1, ptr %.sroa.24.0..sroa_idx466, align 8, !tbaa !13
  %.sroa.25.0..sroa_idx492 = getelementptr inbounds nuw i8, ptr %i.dp, i64 36
  store i32 0, ptr %.sroa.25.0..sroa_idx492, align 4, !tbaa !103
  %.sroa.26.0..sroa_idx518 = getelementptr inbounds nuw i8, ptr %i.dp, i64 40
  %i.dq = trunc nuw i64 %indvars.iv to i32        ; 2 uses
  store i32 %i.dq, ptr %.sroa.26.0..sroa_idx518, align 8, !tbaa !13
  %.sroa.33.0..sroa_idx544 = getelementptr inbounds nuw i8, ptr %i.dp, i64 44
  store i32 %i.dq, ptr %.sroa.33.0..sroa_idx544, align 4, !tbaa !13
  %.sroa.40.0..sroa_idx571 = getelementptr inbounds nuw i8, ptr %i.dp, i64 48
  store ptr %.sroa.40.0846, ptr %.sroa.40.0..sroa_idx571, align 8, !tbaa !101
  %.sroa.44.0..sroa_idx597 = getelementptr inbounds nuw i8, ptr %i.dp, i64 56
  store ptr %.sroa.44.7, ptr %.sroa.44.0..sroa_idx597, align 8, !tbaa !101
  %.sroa.48.0..sroa_idx621 = getelementptr inbounds nuw i8, ptr %i.dp, i64 64
  store <2 x ptr> splat (ptr null), ptr %.sroa.48.0..sroa_idx621, align 8
  %.sroa.48632.0..sroa_idx637 = getelementptr inbounds nuw i8, ptr %i.dp, i64 80
  store i32 -1, ptr %.sroa.48632.0..sroa_idx637, align 8, !tbaa !13
  %.sroa.49.0..sroa_idx663 = getelementptr inbounds nuw i8, ptr %i.dp, i64 84
  store i32 -1, ptr %.sroa.49.0..sroa_idx663, align 4, !tbaa !13
  %.sroa.50.0..sroa_idx689 = getelementptr inbounds nuw i8, ptr %i.dp, i64 88
  store i8 0, ptr %.sroa.50.0..sroa_idx689, align 8, !tbaa !105
  %.not10.i.i.i.i.i224 = icmp eq ptr %i.dd, %i.cy
  br i1 %.not10.i.i.i.i.i224, label %_ZNSt6vectorIN6google8protobuf4util18MessageDifferencer13SpecificFieldESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i229, label %.lr.ph.i.i.i.i.i225

.lr.ph.i.i.i.i.i225:                              ; preds = %.noexc234, %.lr.ph.i.i.i.i.i225
  %.012.i.i.i.i.i226 = phi ptr [ %i.ds, %.lr.ph.i.i.i.i.i225 ], [ %i.do, %.noexc234 ] ; 2 uses
  %.0911.i.i.i.i.i227 = phi ptr [ %i.dr, %.lr.ph.i.i.i.i.i225 ], [ %i.dd, %.noexc234 ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %.012.i.i.i.i.i226, ptr noundef nonnull align 8 dereferenceable(96) %.0911.i.i.i.i.i227, i64 96, i1 false), !tbaa.struct !100, !alias.scope !549
  %i.dr = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i227, i64 96 ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i226, i64 96 ; 2 uses
  %.not.i.i.i.i.i228 = icmp eq ptr %i.dr, %i.cy
  br i1 %.not.i.i.i.i.i228, label %_ZNSt6vectorIN6google8protobuf4util18MessageDifferencer13SpecificFieldESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i229, label %.lr.ph.i.i.i.i.i225, !llvm.loop !444

_ZNSt6vectorIN6google8protobuf4util18MessageDifferencer13SpecificFieldESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i229: ; preds = %.lr.ph.i.i.i.i.i225, %.noexc234
  %.0.lcssa.i.i.i.i.i230 = phi ptr [ %i.do, %.noexc234 ], [ %i.ds, %.lr.ph.i.i.i.i.i225 ]
  %i.dt = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i230, i64 96
  %.not.i23.i.i231 = icmp eq ptr %i.dd, null
  br i1 %.not.i23.i.i231, label %_ZNSt6vectorIN6google8protobuf4util18MessageDifferencer13SpecificFieldESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i232, label %bb.an

bb.an:                                            ; preds = %_ZNSt6vectorIN6google8protobuf4util18MessageDifferencer13SpecificFieldESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i229
  %i.du = load ptr, ptr %i.ag, align 8, !tbaa !99
  %i.dv = ptrtoint ptr %i.du to i64
  %i.dw = sub i64 %i.dv, %i.df
  call void @_ZdlPvm(ptr noundef nonnull %i.dd, i64 noundef %i.dw) #42
  br label %_ZNSt6vectorIN6google8protobuf4util18MessageDifferencer13SpecificFieldESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i232

_ZNSt6vectorIN6google8protobuf4util18MessageDifferencer13SpecificFieldESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i232: ; preds = %bb.an, %_ZNSt6vectorIN6google8protobuf4util18MessageDifferencer13SpecificFieldESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i229
  store ptr %i.do, ptr %5, align 8, !tbaa !96
  store ptr %i.dt, ptr %i.af, align 8, !tbaa !93
  %i.dx = getelementptr inbounds nuw [96 x i8], ptr %i.do, i64 %i.dm
  store ptr %i.dx, ptr %i.ag, align 8, !tbaa !99
  br label %_ZNSt6vectorIN6google8protobuf4util18MessageDifferencer13SpecificFieldESaIS4_EE9push_backERKS4_.exit235

_ZNSt6vectorIN6google8protobuf4util18MessageDifferencer13SpecificFieldESaIS4_EE9push_backERKS4_.exit235: ; preds = %_ZNSt6vectorIN6google8protobuf4util18MessageDifferencer13SpecificFieldESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i232, %bb.ak
  %i.dy = load ptr, ptr %0, align 8, !tbaa !125   ; 2 uses
  %i.dz = load ptr, ptr %i.dy, align 8, !tbaa !26
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 16
  %i.eb = load ptr, ptr %i.ea, align 8
  invoke void %i.eb(ptr noundef nonnull align 8 dereferenceable(8) %i.dy, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(24) %5)
          to label %bb.ao unwind label %.loopexit753

bb.ao:                                            ; preds = %_ZNSt6vectorIN6google8protobuf4util18MessageDifferencer13SpecificFieldESaIS4_EE9push_backERKS4_.exit235
  %i.ec = load ptr, ptr %i.af, align 8, !tbaa !93
  %i.ed = getelementptr inbounds i8, ptr %i.ec, i64 -96
  store ptr %i.ed, ptr %i.af, align 8, !tbaa !93
  %i.ee = load ptr, ptr %7, align 8, !tbaa !12
  %i.ef = getelementptr inbounds nuw [4 x i8], ptr %i.ee, i64 %indvars.iv
  store i32 -2, ptr %i.ef, align 4, !tbaa !13
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.eg = load ptr, ptr %6, align 8, !tbaa !12
  %i.eh = getelementptr inbounds nuw [4 x i8], ptr %i.eg, i64 %indvars.iv887
  %i.ei = load i32, ptr %i.eh, align 4, !tbaa !13
  %i.ej = trunc nuw i64 %indvars.iv.next to i32
  %.not181 = icmp sgt i32 %i.ei, %i.ej
  br i1 %.not181, label %.lr.ph, label %.critedge, !llvm.loop !553

.loopexit753:                                     ; preds = %_ZNSt6vectorIN6google8protobuf4util18MessageDifferencer13SpecificFieldESaIS4_EE9push_backERKS4_.exit235, %bb.aj, %.noexc218, %_ZNKSt6vectorIN6google8protobuf4util18MessageDifferencer13SpecificFieldESaIS4_EE12_M_check_lenEmPKc.exit.i.i221
  %lpad.loopexit755 = landingpad { ptr, i32 }
          cleanup
  br label %bb.cn

.loopexit.split-lp754:                            ; preds = %bb.am
  %lpad.loopexit.split-lp756 = landingpad { ptr, i32 }
          cleanup
  br label %bb.cn

.critedge:                                        ; preds = %bb.ao, %.preheader752, %bb.ac
  %.sroa.44.2 = phi ptr [ %.sroa.44.0848, %bb.ac ], [ %.sroa.44.0848, %.preheader752 ], [ %.sroa.44.7, %bb.ao ] ; 2 uses
  %.2150 = phi i1 [ %.0148850, %bb.ac ], [ %.0148850, %.preheader752 ], [ true, %bb.ao ] ; 4 uses
  %i.ek = load i8, ptr %i.ae, align 1
  %i.el = and i8 %i.ek, 16
  %.not.i236 = icmp eq i8 %i.el, 0
  br i1 %.not.i236, label %_ZN6google8protobuf4util16AddSpecificIndexEPNS1_18MessageDifferencer13SpecificFieldERKNS0_7MessageEPKNS0_15FieldDescriptorEi.exit239, label %bb.ap

bb.ap:                                            ; preds = %.critedge
  %i.em = invoke { ptr, ptr } @_ZNK6google8protobuf7Message11GetMetadataEv(ptr noundef nonnull align 8 dereferenceable(16) %1)
          to label %.noexc237 unwind label %.loopexit759

.noexc237:                                        ; preds = %bb.ap
  %i.en = extractvalue { ptr, ptr } %i.em, 1
  %i.eo = trunc nuw nsw i64 %indvars.iv887 to i32
  %i.ep = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNK6google8protobuf10Reflection18GetRepeatedMessageERKNS0_7MessageEPKNS0_15FieldDescriptorEi(ptr noundef nonnull align 8 dereferenceable(96) %i.en, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %4, i32 noundef %i.eo)
          to label %_ZN6google8protobuf4util16AddSpecificIndexEPNS1_18MessageDifferencer13SpecificFieldERKNS0_7MessageEPKNS0_15FieldDescriptorEi.exit239 unwind label %.loopexit759

_ZN6google8protobuf4util16AddSpecificIndexEPNS1_18MessageDifferencer13SpecificFieldERKNS0_7MessageEPKNS0_15FieldDescriptorEi.exit239: ; preds = %.critedge, %.noexc237
  %.sroa.40.5 = phi ptr [ %.sroa.40.0846, %.critedge ], [ %i.ep, %.noexc237 ] ; 11 uses
  br i1 %i.ac, label %bb.aq, label %bb.as
end_hunk_0
begin_hunk_1_@_ZN6google8protobuf4util18MessageDifferencer18CompareRepeatedRepERKNS0_7MessageES5_iPKNS0_15FieldDescriptorEPSt6vectorINS2_13SpecificFieldESaISA_EE:bb.a
._crit_edge:                                      ; preds = %bb.ck, %.preheader
  %.10.lcssa = phi i1 [ %.7.lcssa, %.preheader ], [ %.11, %bb.ck ]
  %i.kz = xor i1 %.10.lcssa, true
  br label %.critedge198

bb.cb:                                            ; preds = %.lr.ph872, %bb.ck
  %indvars.iv891 = phi i64 [ 0, %.lr.ph872 ], [ %indvars.iv.next892, %bb.ck ] ; 6 uses
  %.10869 = phi i1 [ %.7.lcssa, %.lr.ph872 ], [ %.11, %bb.ck ] ; 2 uses
  %.sroa.40.2868 = phi ptr [ %.sroa.40.0.lcssa, %.lr.ph872 ], [ %.sroa.40.3, %bb.ck ] ; 3 uses
  br i1 %i.ac, label %.critedge204, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  %i.la = load ptr, ptr %6, align 8, !tbaa !12
  %i.lb = getelementptr inbounds nuw [4 x i8], ptr %i.la, i64 %indvars.iv891
  %i.lc = load i32, ptr %i.lb, align 4, !tbaa !13
  %.not188.not = icmp eq i32 %i.lc, -1
  br i1 %.not188.not, label %bb.cd, label %bb.ck

.critedge204:                                     ; preds = %bb.cb
  %.old205 = icmp slt i64 %indvars.iv891, %i.jg
  br i1 %.old205, label %bb.ck, label %bb.cd

bb.cd:                                            ; preds = %bb.cc, %.critedge204
  %i.ld = load i8, ptr %i.jd, align 1
  %i.le = and i8 %i.ld, 16
  %.not.i316 = icmp eq i8 %i.le, 0
  br i1 %.not.i316, label %_ZN6google8protobuf4util16AddSpecificIndexEPNS1_18MessageDifferencer13SpecificFieldERKNS0_7MessageEPKNS0_15FieldDescriptorEi.exit319, label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  %i.lf = invoke { ptr, ptr } @_ZNK6google8protobuf7Message11GetMetadataEv(ptr noundef nonnull align 8 dereferenceable(16) %1)
          to label %.noexc317 unwind label %.loopexit

.noexc317:                                        ; preds = %bb.ce
  %i.lg = extractvalue { ptr, ptr } %i.lf, 1
  %i.lh = trunc nuw nsw i64 %indvars.iv891 to i32
  %i.li = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNK6google8protobuf10Reflection18GetRepeatedMessageERKNS0_7MessageEPKNS0_15FieldDescriptorEi(ptr noundef nonnull align 8 dereferenceable(96) %i.lg, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %4, i32 noundef %i.lh)
          to label %_ZN6google8protobuf4util16AddSpecificIndexEPNS1_18MessageDifferencer13SpecificFieldERKNS0_7MessageEPKNS0_15FieldDescriptorEi.exit319 unwind label %.loopexit

_ZN6google8protobuf4util16AddSpecificIndexEPNS1_18MessageDifferencer13SpecificFieldERKNS0_7MessageEPKNS0_15FieldDescriptorEi.exit319: ; preds = %bb.cd, %.noexc317
  %.sroa.40.6 = phi ptr [ %.sroa.40.2868, %bb.cd ], [ %i.li, %.noexc317 ] ; 3 uses
  %i.lj = load ptr, ptr %i.je, align 8, !tbaa !93 ; 18 uses
  %i.lk = load ptr, ptr %i.jf, align 8, !tbaa !99
  %.not.i320 = icmp eq ptr %i.lj, %i.lk
  br i1 %.not.i320, label %bb.cg, label %bb.cf

bb.cf:                                            ; preds = %_ZN6google8protobuf4util16AddSpecificIndexEPNS1_18MessageDifferencer13SpecificFieldERKNS0_7MessageEPKNS0_15FieldDescriptorEi.exit319
  store ptr %1, ptr %i.lj, align 8, !tbaa !101
  %.sroa.19.0..sroa_idx379 = getelementptr inbounds nuw i8, ptr %i.lj, i64 8
  store ptr %2, ptr %.sroa.19.0..sroa_idx379, align 8, !tbaa !101
  %.sroa.20.0..sroa_idx405 = getelementptr inbounds nuw i8, ptr %i.lj, i64 16
  store i32 %3, ptr %.sroa.20.0..sroa_idx405, align 8, !tbaa !13
  %.sroa.21435.0..sroa_idx458 = getelementptr inbounds nuw i8, ptr %i.lj, i64 24
  store ptr %4, ptr %.sroa.21435.0..sroa_idx458, align 8, !tbaa !102
  %.sroa.24.0..sroa_idx484 = getelementptr inbounds nuw i8, ptr %i.lj, i64 32
  store i32 -1, ptr %.sroa.24.0..sroa_idx484, align 8, !tbaa !13
  %.sroa.25.0..sroa_idx510 = getelementptr inbounds nuw i8, ptr %i.lj, i64 36
  store i32 0, ptr %.sroa.25.0..sroa_idx510, align 4, !tbaa !103
  %.sroa.26.0..sroa_idx536 = getelementptr inbounds nuw i8, ptr %i.lj, i64 40
  %i.ll = trunc nuw nsw i64 %indvars.iv891 to i32
  store i32 %i.ll, ptr %.sroa.26.0..sroa_idx536, align 8, !tbaa !13
  %.sroa.33.0..sroa_idx562 = getelementptr inbounds nuw i8, ptr %i.lj, i64 44
  store i32 %.sroa.33.3.lcssa, ptr %.sroa.33.0..sroa_idx562, align 4, !tbaa !13
  %.sroa.40.0..sroa_idx589 = getelementptr inbounds nuw i8, ptr %i.lj, i64 48
  store ptr %.sroa.40.6, ptr %.sroa.40.0..sroa_idx589, align 8, !tbaa !101
  %.sroa.44.0..sroa_idx615 = getelementptr inbounds nuw i8, ptr %i.lj, i64 56
  store ptr %.sroa.44.5.lcssa, ptr %.sroa.44.0..sroa_idx615, align 8, !tbaa !101
  %.sroa.48.0..sroa_idx630 = getelementptr inbounds nuw i8, ptr %i.lj, i64 64
  store <2 x ptr> splat (ptr null), ptr %.sroa.48.0..sroa_idx630, align 8
  %.sroa.48632.0..sroa_idx655 = getelementptr inbounds nuw i8, ptr %i.lj, i64 80
  store i32 -1, ptr %.sroa.48632.0..sroa_idx655, align 8, !tbaa !13
  %.sroa.49.0..sroa_idx681 = getelementptr inbounds nuw i8, ptr %i.lj, i64 84
  store i32 -1, ptr %.sroa.49.0..sroa_idx681, align 4, !tbaa !13
  %.sroa.50.0..sroa_idx707 = getelementptr inbounds nuw i8, ptr %i.lj, i64 88
  store i8 0, ptr %.sroa.50.0..sroa_idx707, align 8, !tbaa !105
  %i.lm = load ptr, ptr %i.je, align 8, !tbaa !93
  %i.ln = getelementptr inbounds nuw i8, ptr %i.lm, i64 96
  store ptr %i.ln, ptr %i.je, align 8, !tbaa !93
  br label %_ZNSt6vectorIN6google8protobuf4util18MessageDifferencer13SpecificFieldESaIS4_EE9push_backERKS4_.exit335

bb.cg:                                            ; preds = %_ZN6google8protobuf4util16AddSpecificIndexEPNS1_18MessageDifferencer13SpecificFieldERKNS0_7MessageEPKNS0_15FieldDescriptorEi.exit319
  %i.lo = load ptr, ptr %5, align 8, !tbaa !96    ; 5 uses
  %i.lp = ptrtoint ptr %i.lj to i64
  %i.lq = ptrtoint ptr %i.lo to i64               ; 2 uses
  %i.lr = sub i64 %i.lp, %i.lq                    ; 3 uses
  %i.ls = icmp eq i64 %i.lr, 9223372036854775776
  br i1 %i.ls, label %bb.ch, label %_ZNKSt6vectorIN6google8protobuf4util18MessageDifferencer13SpecificFieldESaIS4_EE12_M_check_lenEmPKc.exit.i.i321

bb.ch:                                            ; preds = %bb.cg
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.53) #39
          to label %.noexc333 unwind label %.loopexit.split-lp

.noexc333:                                        ; preds = %bb.ch
  unreachable

_ZNKSt6vectorIN6google8protobuf4util18MessageDifferencer13SpecificFieldESaIS4_EE12_M_check_lenEmPKc.exit.i.i321: ; preds = %bb.cg
  %i.lt = sdiv exact i64 %i.lr, 96                ; 3 uses
  %.sroa.speculated.i.i.i322 = call i64 @llvm.umax.i64(i64 %i.lt, i64 1)
  %i.lu = add nsw i64 %.sroa.speculated.i.i.i322, %i.lt ; 2 uses
  %i.lv = icmp ult i64 %i.lu, %i.lt
  %i.lw = call i64 @llvm.umin.i64(i64 %i.lu, i64 96076792050570581)
  %i.lx = select i1 %i.lv, i64 96076792050570581, i64 %i.lw ; 3 uses
  %.not.i.i.i323 = icmp ne i64 %i.lx, 0
  call void @llvm.assume(i1 %.not.i.i.i323)
  %i.ly = mul nuw nsw i64 %i.lx, 96
  %i.lz = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ly) #41
          to label %.noexc334 unwind label %.loopexit ; 5 uses

.noexc334:                                        ; preds = %_ZNKSt6vectorIN6google8protobuf4util18MessageDifferencer13SpecificFieldESaIS4_EE12_M_check_lenEmPKc.exit.i.i321
  %i.ma = getelementptr inbounds nuw i8, ptr %i.lz, i64 %i.lr ; 14 uses
  store ptr %1, ptr %i.ma, align 8, !tbaa !101
  %.sroa.19.0..sroa_idx381 = getelementptr inbounds nuw i8, ptr %i.ma, i64 8
  store ptr %2, ptr %.sroa.19.0..sroa_idx381, align 8, !tbaa !101
  %.sroa.20.0..sroa_idx407 = getelementptr inbounds nuw i8, ptr %i.ma, i64 16
  store i32 %3, ptr %.sroa.20.0..sroa_idx407, align 8, !tbaa !13
  %.sroa.21435.0..sroa_idx460 = getelementptr inbounds nuw i8, ptr %i.ma, i64 24
  store ptr %4, ptr %.sroa.21435.0..sroa_idx460, align 8, !tbaa !102
  %.sroa.24.0..sroa_idx486 = getelementptr inbounds nuw i8, ptr %i.ma, i64 32
  store i32 -1, ptr %.sroa.24.0..sroa_idx486, align 8, !tbaa !13
  %.sroa.25.0..sroa_idx512 = getelementptr inbounds nuw i8, ptr %i.ma, i64 36
  store i32 0, ptr %.sroa.25.0..sroa_idx512, align 4, !tbaa !103
  %.sroa.26.0..sroa_idx538 = getelementptr inbounds nuw i8, ptr %i.ma, i64 40
  %i.mb = trunc nuw nsw i64 %indvars.iv891 to i32
  store i32 %i.mb, ptr %.sroa.26.0..sroa_idx538, align 8, !tbaa !13
  %.sroa.33.0..sroa_idx564 = getelementptr inbounds nuw i8, ptr %i.ma, i64 44
  store i32 %.sroa.33.3.lcssa, ptr %.sroa.33.0..sroa_idx564, align 4, !tbaa !13
  %.sroa.40.0..sroa_idx591 = getelementptr inbounds nuw i8, ptr %i.ma, i64 48
  store ptr %.sroa.40.6, ptr %.sroa.40.0..sroa_idx591, align 8, !tbaa !101
  %.sroa.44.0..sroa_idx617 = getelementptr inbounds nuw i8, ptr %i.ma, i64 56
  store ptr %.sroa.44.5.lcssa, ptr %.sroa.44.0..sroa_idx617, align 8, !tbaa !101
  %.sroa.48.0..sroa_idx631 = getelementptr inbounds nuw i8, ptr %i.ma, i64 64
  store <2 x ptr> splat (ptr null), ptr %.sroa.48.0..sroa_idx631, align 8
  %.sroa.48632.0..sroa_idx657 = getelementptr inbounds nuw i8, ptr %i.ma, i64 80
  store i32 -1, ptr %.sroa.48632.0..sroa_idx657, align 8, !tbaa !13
  %.sroa.49.0..sroa_idx683 = getelementptr inbounds nuw i8, ptr %i.ma, i64 84
  store i32 -1, ptr %.sroa.49.0..sroa_idx683, align 4, !tbaa !13
  %.sroa.50.0..sroa_idx709 = getelementptr inbounds nuw i8, ptr %i.ma, i64 88
  store i8 0, ptr %.sroa.50.0..sroa_idx709, align 8, !tbaa !105
  %.not10.i.i.i.i.i324 = icmp eq ptr %i.lo, %i.lj
  br i1 %.not10.i.i.i.i.i324, label %_ZNSt6vectorIN6google8protobuf4util18MessageDifferencer13SpecificFieldESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i329, label %.lr.ph.i.i.i.i.i325

.lr.ph.i.i.i.i.i325:                              ; preds = %.noexc334, %.lr.ph.i.i.i.i.i325
  %.012.i.i.i.i.i326 = phi ptr [ %i.md, %.lr.ph.i.i.i.i.i325 ], [ %i.lz, %.noexc334 ] ; 2 uses
  %.0911.i.i.i.i.i327 = phi ptr [ %i.mc, %.lr.ph.i.i.i.i.i325 ], [ %i.lo, %.noexc334 ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %.012.i.i.i.i.i326, ptr noundef nonnull align 8 dereferenceable(96) %.0911.i.i.i.i.i327, i64 96, i1 false), !tbaa.struct !100, !alias.scope !573
  %i.mc = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i327, i64 96 ; 2 uses
  %i.md = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i326, i64 96 ; 2 uses
  %.not.i.i.i.i.i328 = icmp eq ptr %i.mc, %i.lj
  br i1 %.not.i.i.i.i.i328, label %_ZNSt6vectorIN6google8protobuf4util18MessageDifferencer13SpecificFieldESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i329, label %.lr.ph.i.i.i.i.i325, !llvm.loop !444

_ZNSt6vectorIN6google8protobuf4util18MessageDifferencer13SpecificFieldESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i329: ; preds = %.lr.ph.i.i.i.i.i325, %.noexc334
  %.0.lcssa.i.i.i.i.i330 = phi ptr [ %i.lz, %.noexc334 ], [ %i.md, %.lr.ph.i.i.i.i.i325 ]
  %i.me = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i330, i64 96
  %.not.i23.i.i331 = icmp eq ptr %i.lo, null
  br i1 %.not.i23.i.i331, label %_ZNSt6vectorIN6google8protobuf4util18MessageDifferencer13SpecificFieldESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i332, label %bb.ci

bb.ci:                                            ; preds = %_ZNSt6vectorIN6google8protobuf4util18MessageDifferencer13SpecificFieldESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i329
  %i.mf = load ptr, ptr %i.jf, align 8, !tbaa !99
  %i.mg = ptrtoint ptr %i.mf to i64
  %i.mh = sub i64 %i.mg, %i.lq
  call void @_ZdlPvm(ptr noundef nonnull %i.lo, i64 noundef %i.mh) #42
  br label %_ZNSt6vectorIN6google8protobuf4util18MessageDifferencer13SpecificFieldESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i332

_ZNSt6vectorIN6google8protobuf4util18MessageDifferencer13SpecificFieldESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i332: ; preds = %bb.ci, %_ZNSt6vectorIN6google8protobuf4util18MessageDifferencer13SpecificFieldESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i329
  store ptr %i.lz, ptr %5, align 8, !tbaa !96
  store ptr %i.me, ptr %i.je, align 8, !tbaa !93
  %i.mi = getelementptr inbounds nuw [96 x i8], ptr %i.lz, i64 %i.lx
  store ptr %i.mi, ptr %i.jf, align 8, !tbaa !99
  br label %_ZNSt6vectorIN6google8protobuf4util18MessageDifferencer13SpecificFieldESaIS4_EE9push_backERKS4_.exit335

_ZNSt6vectorIN6google8protobuf4util18MessageDifferencer13SpecificFieldESaIS4_EE9push_backERKS4_.exit335: ; preds = %_ZNSt6vectorIN6google8protobuf4util18MessageDifferencer13SpecificFieldESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i332, %bb.cf
  %i.mj = load ptr, ptr %0, align 8, !tbaa !125   ; 2 uses
  %i.mk = load ptr, ptr %i.mj, align 8, !tbaa !26
  %i.ml = getelementptr inbounds nuw i8, ptr %i.mk, i64 24
  %i.mm = load ptr, ptr %i.ml, align 8
  invoke void %i.mm(ptr noundef nonnull align 8 dereferenceable(8) %i.mj, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(24) %5)
          to label %bb.cj unwind label %.loopexit

bb.cj:                                            ; preds = %_ZNSt6vectorIN6google8protobuf4util18MessageDifferencer13SpecificFieldESaIS4_EE9push_backERKS4_.exit335
  %i.mn = load ptr, ptr %i.je, align 8, !tbaa !93
  %i.mo = getelementptr inbounds i8, ptr %i.mn, i64 -96
  store ptr %i.mo, ptr %i.je, align 8, !tbaa !93
  br label %bb.ck

bb.ck:                                            ; preds = %.critedge204, %bb.cc, %bb.cj
  %.sroa.40.3 = phi ptr [ %.sroa.40.2868, %.critedge204 ], [ %.sroa.40.6, %bb.cj ], [ %.sroa.40.2868, %bb.cc ]
  %.11 = phi i1 [ %.10869, %.critedge204 ], [ true, %bb.cj ], [ %.10869, %bb.cc ] ; 2 uses
  %indvars.iv.next892 = add nuw nsw i64 %indvars.iv891, 1 ; 2 uses
  %exitcond894.not = icmp eq i64 %indvars.iv.next892, %wide.trip.count893
  br i1 %exitcond894.not, label %._crit_edge, label %bb.cb, !llvm.loop !577

.loopexit:                                        ; preds = %_ZNSt6vectorIN6google8protobuf4util18MessageDifferencer13SpecificFieldESaIS4_EE9push_backERKS4_.exit335, %bb.ce, %.noexc317, %_ZNKSt6vectorIN6google8protobuf4util18MessageDifferencer13SpecificFieldESaIS4_EE12_M_check_lenEmPKc.exit.i.i321
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.cn

.loopexit.split-lp:                               ; preds = %bb.ch
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.cn

.critedge198:                                     ; preds = %._crit_edge, %10, %bb.u, %bb.av, %bb.n
  %.7175 = phi i1 [ false, %bb.n ], [ %i.kz, %._crit_edge ], [ false, %10 ], [ false, %bb.u ], [ false, %bb.av ]
  %i.mp = load ptr, ptr %7, align 8, !tbaa !12    ; 3 uses
  %.not.i.i.i336 = icmp eq ptr %i.mp, null
  br i1 %.not.i.i.i336, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %bb.cl

bb.cl:                                            ; preds = %.critedge198
  %i.mq = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.mr = load ptr, ptr %i.mq, align 8, !tbaa !578
  %i.ms = ptrtoint ptr %i.mr to i64
  %i.mt = ptrtoint ptr %i.mp to i64
  %i.mu = sub i64 %i.ms, %i.mt
  call void @_ZdlPvm(ptr noundef nonnull %i.mp, i64 noundef %i.mu) #42
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

_ZNSt6vectorIiSaIiEED2Ev.exit:                    ; preds = %.critedge198, %bb.cl
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #40
  %i.mv = load ptr, ptr %6, align 8, !tbaa !12    ; 3 uses
  %.not.i.i.i337 = icmp eq ptr %i.mv, null
  br i1 %.not.i.i.i337, label %_ZNSt6vectorIiSaIiEED2Ev.exit338, label %bb.cm

bb.cm:                                            ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit
  %i.mw = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.mx = load ptr, ptr %i.mw, align 8, !tbaa !578
  %i.my = ptrtoint ptr %i.mx to i64
  %i.mz = ptrtoint ptr %i.mv to i64
  %i.na = sub i64 %i.my, %i.mz
  call void @_ZdlPvm(ptr noundef nonnull %i.mv, i64 noundef %i.na) #42
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit338

_ZNSt6vectorIiSaIiEED2Ev.exit338:                 ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit, %bb.cm
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #40
  br label %bb.cq

bb.cn:                                            ; preds = %bb.ag, %bb.ae, %.loopexit.split-lp760, %.loopexit759, %.loopexit.split-lp754, %.loopexit753, %.loopexit.split-lp765, %.loopexit764, %.loopexit.split-lp748, %.loopexit747, %.loopexit.split-lp, %.loopexit, %bb.o, %bb.p
  %.pn190.pn.pn.pn = phi { ptr, i32 } [ %i.ab, %bb.p ], [ %i.aa, %bb.o ], [ %lpad.loopexit.split-lp767, %.loopexit.split-lp765 ], [ %lpad.loopexit.split-lp750, %.loopexit.split-lp748 ], [ %i.cp, %bb.ae ], [ %lpad.loopexit.split-lp756, %.loopexit.split-lp754 ], [ %lpad.loopexit.split-lp762, %.loopexit.split-lp760 ], [ %i.cq, %bb.ag ], [ %lpad.loopexit761, %.loopexit759 ], [ %lpad.loopexit755, %.loopexit753 ], [ %lpad.loopexit766, %.loopexit764 ], [ %lpad.loopexit749, %.loopexit747 ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %i.nb = load ptr, ptr %7, align 8, !tbaa !12    ; 3 uses
  %.not.i.i.i339 = icmp eq ptr %i.nb, null
  br i1 %.not.i.i.i339, label %_ZNSt6vectorIiSaIiEED2Ev.exit340, label %bb.co

bb.co:                                            ; preds = %bb.cn
  %i.nc = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.nd = load ptr, ptr %i.nc, align 8, !tbaa !578
  %i.ne = ptrtoint ptr %i.nd to i64
  %i.nf = ptrtoint ptr %i.nb to i64
  %i.ng = sub i64 %i.ne, %i.nf
  call void @_ZdlPvm(ptr noundef nonnull %i.nb, i64 noundef %i.ng) #42
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit340

_ZNSt6vectorIiSaIiEED2Ev.exit340:                 ; preds = %bb.cn, %bb.co
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #40
  %i.nh = load ptr, ptr %6, align 8, !tbaa !12    ; 3 uses
  %.not.i.i.i341 = icmp eq ptr %i.nh, null
  br i1 %.not.i.i.i341, label %_ZNSt6vectorIiSaIiEED2Ev.exit342, label %bb.cp

bb.cp:                                            ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit340
  %i.ni = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.nj = load ptr, ptr %i.ni, align 8, !tbaa !578
  %i.nk = ptrtoint ptr %i.nj to i64
  %i.nl = ptrtoint ptr %i.nh to i64
  %i.nm = sub i64 %i.nk, %i.nl
  call void @_ZdlPvm(ptr noundef nonnull %i.nh, i64 noundef %i.nm) #42
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit342

_ZNSt6vectorIiSaIiEED2Ev.exit342:                 ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit340, %bb.cp
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #40
  resume { ptr, i32 } %.pn190.pn.pn.pn

bb.cq:                                            ; preds = %bb.f, %bb.d, %_ZNSt6vectorIiSaIiEED2Ev.exit338
  %.8176 = phi i1 [ false, %bb.d ], [ %.7175, %_ZNSt6vectorIiSaIiEED2Ev.exit338 ], [ false, %bb.f ]
  ret i1 %.8176
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN6google8protobuf4util18MessageDifferencer20IsTreatedAsSmartListEPKNS0_15FieldDescriptorE(ptr noundef nonnull align 8 dereferenceable(408) %0, ptr noundef %1) local_unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.std::pair.341", align 8    ; 8 uses
  %i.a = alloca ptr, align 8                      ; 3 uses
  store ptr %1, ptr %i.a, align 8, !tbaa !102
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.c = load i8, ptr %i.b, align 1
  %i.d = and i8 %i.c, 32
  %.not = icmp eq i8 %i.d, 0
  br i1 %.not, label %bb.j, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !107  ; 4 uses
  %i.g = icmp ne i64 %i.f, 0
  tail call void @llvm.assume(i1 %i.g)
  %i.h = icmp ult i64 %i.f, 2
  br i1 %i.h, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.j = load i64, ptr %i.i, align 8, !tbaa !108
  %.not.i.i.i.i.i = icmp ugt i64 %i.j, 131071
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = icmp eq ptr %i.l, %1
  %or.cond = select i1 %.not.i.i.i.i.i, i1 %i.m, i1 false
  br i1 %or.cond, label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf15FieldDescriptorENS5_4util18MessageDifferencer23RepeatedFieldComparisonEEENS1_6HashEqIS8_vE4HashENSE_2EqESaISt4pairIKS8_SB_EEE22find_or_prepare_insertIS8_EESH_INSL_8iteratorEbERKT_.exit.i.i.i.thread, label %_ZNK4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf15FieldDescriptorENS5_4util18MessageDifferencer23RepeatedFieldComparisonEEENS1_6HashEqIS8_vE4HashENSE_2EqESaISt4pairIKS8_SB_EEE8containsIS8_EEbRKT_.exit.thread

bb.d:                                             ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !109  ; 3 uses
  tail call void @llvm.prefetch.p0(ptr %i.o, i32 0, i32 1, i32 1)
  %i.p = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.q = xor i64 %i.p, ptrtoint (ptr @_ZN4absl12lts_2025051213hash_internal15MixingHashState5kSeedE to i64)
  %i.r = mul i64 %i.q, -2543921745674291987
  %i.s = tail call noundef i64 @llvm.bswap.i64(i64 %i.r)
  %i.t = xor i64 %i.s, %i.p
  %i.u = mul i64 %i.t, -2543921745674291987
  %i.v = tail call noundef i64 @llvm.bswap.i64(i64 %i.u) ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.x = load i64, ptr %i.w, align 8, !tbaa !108, !noalias !579
  %i.y = and i64 %i.x, 65535
  %i.z = lshr i64 %i.v, 7
  %i.aa = xor i64 %i.y, %i.z
  %i.ab = trunc i64 %i.v to i8
  %i.ac = and i8 %i.ab, 127
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 208
  %.sroa.0.0.copyload.i.i.i.i.i.i.i = load ptr, ptr %i.ad, align 8, !tbaa !109 ; 2 uses
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
  %i.ai = load <16 x i8>, ptr %i.ah, align 1, !tbaa !109 ; 2 uses
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
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !102
  %i.ar = icmp eq ptr %i.aq, %1
  br i1 %i.ar, label %_ZNK4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf15FieldDescriptorENS5_4util18MessageDifferencer23RepeatedFieldComparisonEEENS1_6HashEqIS8_vE4HashENSE_2EqESaISt4pairIKS8_SB_EEE8containsIS8_EEbRKT_.exit, label %bb.f, !prof !113

bb.f:                                             ; preds = %.lr.ph.i.i.i.i
  %i.as = add i16 %.sroa.017.046.i.i.i.i, -1
  %i.at = and i16 %i.as, %.sroa.017.046.i.i.i.i   ; 2 uses
  %.not.i.i.i.i = icmp eq i16 %i.at, 0
  br i1 %.not.i.i.i.i, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %bb.f, %bb.e
  %i.au = icmp eq <16 x i8> %i.ai, splat (i8 -128)
  %i.av = bitcast <16 x i1> %i.au to i16
  %.not43.i.i.i.i = icmp eq i16 %i.av, 0
  br i1 %.not43.i.i.i.i, label %bb.g, label %_ZNK4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf15FieldDescriptorENS5_4util18MessageDifferencer23RepeatedFieldComparisonEEENS1_6HashEqIS8_vE4HashENSE_2EqESaISt4pairIKS8_SB_EEE8containsIS8_EEbRKT_.exit.thread, !prof !97

bb.g:                                             ; preds = %._crit_edge.i.i.i.i
  %i.aw = add i64 %.sroa.13.0.i.i.i.i, 16         ; 2 uses
  %i.ax = add i64 %i.aw, %.sroa.6.0.i.i.i.i
  br label %bb.e, !llvm.loop !275

_ZNK4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf15FieldDescriptorENS5_4util18MessageDifferencer23RepeatedFieldComparisonEEENS1_6HashEqIS8_vE4HashENSE_2EqESaISt4pairIKS8_SB_EEE8containsIS8_EEbRKT_.exit: ; preds = %.lr.ph.i.i.i.i
  %.not5 = icmp eq ptr %i.o, null
  br i1 %.not5, label %_ZNK4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf15FieldDescriptorENS5_4util18MessageDifferencer23RepeatedFieldComparisonEEENS1_6HashEqIS8_vE4HashENSE_2EqESaISt4pairIKS8_SB_EEE8containsIS8_EEbRKT_.exit.thread, label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf15FieldDescriptorENS5_4util18MessageDifferencer23RepeatedFieldComparisonEEENS1_6HashEqIS8_vE4HashENSE_2EqESaISt4pairIKS8_SB_EEE22find_or_prepare_insertIS8_EESH_INSL_8iteratorEbERKT_.exit.i.i.i

_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf15FieldDescriptorENS5_4util18MessageDifferencer23RepeatedFieldComparisonEEENS1_6HashEqIS8_vE4HashENSE_2EqESaISt4pairIKS8_SB_EEE22find_or_prepare_insertIS8_EESH_INSL_8iteratorEbERKT_.exit.i.i.i.thread: ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #40
  %.sroa.4.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %i.k, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i, align 8, !alias.scope !582
  br label %_ZN4absl12lts_2025051218container_internal12raw_hash_mapINS1_17FlatHashMapPolicyIPKN6google8protobuf15FieldDescriptorENS5_4util18MessageDifferencer23RepeatedFieldComparisonEEENS1_6HashEqIS8_vE4HashENSE_2EqESaISt4pairIKS8_SB_EEEixIS8_SC_Li0EEEDTclsrT0_5valueclL_ZSt9addressofISJ_EPT_RSP_EclL_ZSt7declvalIRSJ_EDTcl9__declvalISP_ELi0EEEvEEEEERKSP_.exit

_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf15FieldDescriptorENS5_4util18MessageDifferencer23RepeatedFieldComparisonEEENS1_6HashEqIS8_vE4HashENSE_2EqESaISt4pairIKS8_SB_EEE22find_or_prepare_insertIS8_EESH_INSL_8iteratorEbERKT_.exit.i.i.i: ; preds = %_ZNK4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf15FieldDescriptorENS5_4util18MessageDifferencer23RepeatedFieldComparisonEEENS1_6HashEqIS8_vE4HashENSE_2EqESaISt4pairIKS8_SB_EEE8containsIS8_EEbRKT_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #40
  tail call void @llvm.experimental.noalias.scope.decl(metadata !591)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !592)
  call void @_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf15FieldDescriptorENS5_4util18MessageDifferencer23RepeatedFieldComparisonEEENS1_6HashEqIS8_vE4HashENSE_2EqESaISt4pairIKS8_SB_EEE30find_or_prepare_insert_non_sooIS8_EESH_INSL_8iteratorEbERKT_(ptr dead_on_unwind nonnull writable sret(%"struct.std::pair.341") align 8 %2, ptr noundef nonnull align 8 dereferenceable(32) %i.e, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  %.phi.trans.insert.i.i.i = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.pre.i.i.i = load i8, ptr %.phi.trans.insert.i.i.i, align 8, !tbaa !201, !range !204, !alias.scope !593
  %i.ay = trunc nuw i8 %.pre.i.i.i to i1
  br i1 %i.ay, label %bb.h, label %_ZN4absl12lts_2025051218container_internal12raw_hash_mapINS1_17FlatHashMapPolicyIPKN6google8protobuf15FieldDescriptorENS5_4util18MessageDifferencer23RepeatedFieldComparisonEEENS1_6HashEqIS8_vE4HashENSE_2EqESaISt4pairIKS8_SB_EEEixIS8_SC_Li0EEEDTclsrT0_5valueclL_ZSt9addressofISJ_EPT_RSP_EclL_ZSt7declvalIRSJ_EDTcl9__declvalISP_ELi0EEEvEEEEERKSP_.exit

bb.h:                                             ; preds = %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf15FieldDescriptorENS5_4util18MessageDifferencer23RepeatedFieldComparisonEEENS1_6HashEqIS8_vE4HashENSE_2EqESaISt4pairIKS8_SB_EEE22find_or_prepare_insertIS8_EESH_INSL_8iteratorEbERKT_.exit.i.i.i
  %.sroa.2.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.2.0.copyload.i.i.i = load ptr, ptr %.sroa.2.0..sroa_idx.i.i.i, align 8, !alias.scope !593 ; 2 uses
  %i.az = load ptr, ptr %i.a, align 8, !tbaa !102, !noalias !593
  store ptr %i.az, ptr %.sroa.2.0.copyload.i.i.i, align 8, !tbaa !206
  %i.ba = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload.i.i.i, i64 8
  store i32 0, ptr %i.ba, align 8, !tbaa !208
  br label %_ZN4absl12lts_2025051218container_internal12raw_hash_mapINS1_17FlatHashMapPolicyIPKN6google8protobuf15FieldDescriptorENS5_4util18MessageDifferencer23RepeatedFieldComparisonEEENS1_6HashEqIS8_vE4HashENSE_2EqESaISt4pairIKS8_SB_EEEixIS8_SC_Li0EEEDTclsrT0_5valueclL_ZSt9addressofISJ_EPT_RSP_EclL_ZSt7declvalIRSJ_EDTcl9__declvalISP_ELi0EEEvEEEEERKSP_.exit

_ZN4absl12lts_2025051218container_internal12raw_hash_mapINS1_17FlatHashMapPolicyIPKN6google8protobuf15FieldDescriptorENS5_4util18MessageDifferencer23RepeatedFieldComparisonEEENS1_6HashEqIS8_vE4HashENSE_2EqESaISt4pairIKS8_SB_EEEixIS8_SC_Li0EEEDTclsrT0_5valueclL_ZSt9addressofISJ_EPT_RSP_EclL_ZSt7declvalIRSJ_EDTcl9__declvalISP_ELi0EEEvEEEEERKSP_.exit: ; preds = %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf15FieldDescriptorENS5_4util18MessageDifferencer23RepeatedFieldComparisonEEENS1_6HashEqIS8_vE4HashENSE_2EqESaISt4pairIKS8_SB_EEE22find_or_prepare_insertIS8_EESH_INSL_8iteratorEbERKT_.exit.i.i.i.thread, %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf15FieldDescriptorENS5_4util18MessageDifferencer23RepeatedFieldComparisonEEENS1_6HashEqIS8_vE4HashENSE_2EqESaISt4pairIKS8_SB_EEE22find_or_prepare_insertIS8_EESH_INSL_8iteratorEbERKT_.exit.i.i.i, %bb.h
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.2.0.copyload.i = load ptr, ptr %.sroa.2.0..sroa_idx.i, align 8
  %i.bb = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload.i, i64 8
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #40
end_hunk_1
