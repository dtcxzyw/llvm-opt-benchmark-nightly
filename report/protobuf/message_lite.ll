inline.NumInlined: 704
inline.NumDeleted: 344
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZNK6google8protobuf11MessageLite23SerializePartialToArrayEPvi:bb.a
  %i.y = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN4absl12lts_2025051212log_internal10LogMessagelsImEERS2_RKT_(ptr noundef nonnull align 8 dereferenceable(16) %i.x, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi41EEERS2_RAT__Kc.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessage5FlushEv(ptr noundef nonnull align 8 dereferenceable(16) %i.y)
          to label %_ZNKO4absl12lts_2025051212log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit unwind label %bb.g

_ZNKO4absl12lts_2025051212log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit: ; preds = %bb.f
  call void @_ZN4absl12lts_2025051212log_internal10LogMessageD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %4) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  br label %bb.j

bb.g:                                             ; preds = %bb.f, %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi41EEERS2_RAT__Kc.exit, %bb.e, %bb.c, %bb.b, %_ZNK6google8protobuf11MessageLite11GetTypeNameEv.exit
  %i.z = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4absl12lts_2025051212log_internal10LogMessageD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %4) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  resume { ptr, i32 } %i.z

bb.h:                                             ; preds = %bb.a
  %i.aa = sext i32 %2 to i64
  %i.ab = icmp sgt i64 %i.e, %i.aa
  br i1 %i.ab, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #27
  %i.ac = load atomic i8, ptr @_ZN6google8protobuf2io17CodedOutputStream36default_serialization_deterministic_E monotonic, align 1, !range !71, !noundef !72
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 %i.e
  store ptr %i.ad, ptr %3, align 8, !tbaa !168
  %i.ae = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr null, ptr %i.ae, align 8, !tbaa !171
  %i.af = getelementptr inbounds nuw i8, ptr %3, i64 48
  store ptr null, ptr %i.af, align 8, !tbaa !172
  %i.ag = getelementptr inbounds nuw i8, ptr %3, i64 56
  store i8 0, ptr %i.ag, align 8, !tbaa !173
  %i.ah = getelementptr inbounds nuw i8, ptr %3, i64 57
  store i8 0, ptr %i.ah, align 1, !tbaa !174
  %i.ai = getelementptr inbounds nuw i8, ptr %3, i64 58
  store i8 %i.ac, ptr %i.ai, align 2, !tbaa !175
  %i.aj = getelementptr inbounds nuw i8, ptr %3, i64 59
  store i8 0, ptr %i.aj, align 1, !tbaa !176
  %i.ak = load ptr, ptr %0, align 8, !tbaa !41
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 40
  %i.am = load ptr, ptr %i.al, align 8
  %i.an = call noundef ptr %i.am(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, ptr noundef nonnull %3), !inline_history !177 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  br label %bb.j

bb.j:                                             ; preds = %bb.h, %bb.i, %_ZNKO4absl12lts_2025051212log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit
  %.0 = phi i1 [ false, %_ZNKO4absl12lts_2025051212log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit ], [ true, %bb.i ], [ false, %bb.h ]
  ret i1 %.0
}

; Function Attrs: mustprogress uwtable
define void @_ZNK6google8protobuf11MessageLite17SerializeAsStringB5cxx11Ev(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  store ptr %i.a, ptr %0, align 8, !tbaa !84
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store i64 0, ptr %i.b, align 8, !tbaa !89
  store i8 0, ptr %i.a, align 8, !tbaa !30
  %i.c = invoke noundef zeroext i1 @_ZNK6google8protobuf11MessageLite21AppendPartialToStringEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %0)
          to label %_ZNK6google8protobuf11MessageLite14AppendToStringEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit unwind label %bb.c

_ZNK6google8protobuf11MessageLite14AppendToStringEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %bb.a
  br i1 %i.c, label %bb.d, label %bb.b

bb.b:                                             ; preds = %_ZNK6google8protobuf11MessageLite14AppendToStringEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  store i64 0, ptr %i.b, align 8, !tbaa !89
  %i.d = load ptr, ptr %0, align 8, !tbaa !87
  store i8 0, ptr %i.d, align 1, !tbaa !30
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.e = landingpad { ptr, i32 }
          cleanup
  %i.f = load ptr, ptr %0, align 8, !tbaa !87     ; 2 uses
  %i.g = icmp eq ptr %i.f, %i.a
  br i1 %i.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.c
  %i.h = load i64, ptr %i.a, align 8, !tbaa !30
  %i.i = add i64 %i.h, 1
  tail call void @_ZdlPvm(ptr noundef %i.f, i64 noundef %i.i) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  resume { ptr, i32 } %i.e

bb.d:                                             ; preds = %_ZNK6google8protobuf11MessageLite14AppendToStringEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZNK6google8protobuf11MessageLite24SerializePartialAsStringB5cxx11Ev(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  store ptr %i.a, ptr %0, align 8, !tbaa !84
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store i64 0, ptr %i.b, align 8, !tbaa !89
  store i8 0, ptr %i.a, align 8, !tbaa !30
  %i.c = invoke noundef zeroext i1 @_ZNK6google8protobuf11MessageLite21AppendPartialToStringEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %0)
          to label %bb.b unwind label %bb.d

bb.b:                                             ; preds = %bb.a
  br i1 %i.c, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i64 0, ptr %i.b, align 8, !tbaa !89
  %i.d = load ptr, ptr %0, align 8, !tbaa !87
  store i8 0, ptr %i.d, align 1, !tbaa !30
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  %i.e = landingpad { ptr, i32 }
          cleanup
  %i.f = load ptr, ptr %0, align 8, !tbaa !87     ; 2 uses
  %i.g = icmp eq ptr %i.f, %i.a
  br i1 %i.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.d
  %i.h = load i64, ptr %i.a, align 8, !tbaa !30
  %i.i = add i64 %i.h, 1
  tail call void @_ZdlPvm(ptr noundef %i.f, i64 noundef %i.i) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  resume { ptr, i32 } %i.e

bb.e:                                             ; preds = %bb.b, %bb.c
  ret void
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZNK6google8protobuf11MessageLite14AppendToStringEPN4absl12lts_202505124CordE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_ZNK6google8protobuf11MessageLite21AppendPartialToStringEPN4absl12lts_202505124CordE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1)
  ret i1 %i.a
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZNK6google8protobuf11MessageLite21AppendPartialToStringEPN4absl12lts_202505124CordE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %2 = alloca %"class.absl::lts_20250512::log_internal::LogMessage", align 8 ; 8 uses
  %3 = alloca %"class.absl::lts_20250512::CordBuffer", align 8 ; 22 uses
  %4 = alloca %"class.google::protobuf::io::EpsCopyOutputStream", align 8 ; 11 uses
  %5 = alloca %"class.absl::lts_20250512::CordBuffer", align 8 ; 11 uses
  %6 = alloca %"class.google::protobuf::io::CordOutputStream", align 8 ; 9 uses
  %7 = alloca %"class.absl::lts_20250512::Cord", align 8 ; 5 uses
  %8 = alloca %"class.absl::lts_20250512::CordBuffer", align 8 ; 5 uses
  %9 = alloca %"class.google::protobuf::io::EpsCopyOutputStream", align 8 ; 13 uses
  %10 = alloca %"class.absl::lts_20250512::Cord", align 8 ; 5 uses
  %i.b = load ptr, ptr %0, align 8, !tbaa !41
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = tail call noundef i64 %i.d(ptr noundef nonnull align 8 dereferenceable(16) %0) ; 11 uses
  %i.f = load i8, ptr %1, align 1, !tbaa !30      ; 2 uses
  %i.g = trunc i8 %i.f to i1
  %i.h = icmp ugt i64 %i.e, 2147483647            ; 2 uses
  br i1 %i.g, label %_ZNK4absl12lts_202505124Cord4sizeEv.exit, label %_ZNK4absl12lts_202505124Cord4sizeEv.exit.thread

_ZNK4absl12lts_202505124Cord4sizeEv.exit:         ; preds = %bb.a
  br i1 %i.h, label %bb.b, label %bb.e

_ZNK4absl12lts_202505124Cord4sizeEv.exit.thread:  ; preds = %bb.a
  br i1 %i.h, label %bb.b, label %bb.f

bb.b:                                             ; preds = %_ZNK4absl12lts_202505124Cord4sizeEv.exit.thread, %_ZNK4absl12lts_202505124Cord4sizeEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #27
  call void @_ZN4absl12lts_2025051212log_internal10LogMessageC1EPKciNS2_8ErrorTagE(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull @.str.1, i32 noundef 663) #29
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessage19CopyToEncodedBufferILNS2_10StringTypeE0EEEvSt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(16) %2, i64 39, ptr nonnull @.str.11)
          to label %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi40EEERS2_RAT__Kc.exit unwind label %bb.d

_ZN4absl12lts_2025051212log_internal10LogMessagelsILi40EEERS2_RAT__Kc.exit: ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 %i.e, ptr %i.a, align 8, !tbaa !86
  %i.i = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN4absl12lts_2025051212log_internal10LogMessagelsImEERS2_RKT_(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi40EEERS2_RAT__Kc.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessage5FlushEv(ptr noundef nonnull align 8 dereferenceable(16) %i.i)
          to label %_ZNKO4absl12lts_2025051212log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit unwind label %bb.d

_ZNKO4absl12lts_2025051212log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit: ; preds = %bb.c
  call void @_ZN4absl12lts_2025051212log_internal10LogMessageD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %2) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  br label %bb.az

bb.d:                                             ; preds = %bb.c, %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi40EEERS2_RAT__Kc.exit, %bb.b
  %i.j = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4absl12lts_2025051212log_internal10LogMessageD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %2) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  br label %bb.ba

bb.e:                                             ; preds = %_ZNK4absl12lts_202505124Cord4sizeEv.exit
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !30
  %i.m = load i64, ptr %i.l, align 8, !tbaa !152
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #27
  tail call void @llvm.experimental.noalias.scope.decl(metadata !182)
  br label %_ZNK4absl12lts_202505124Cord5emptyEv.exit.i

bb.f:                                             ; preds = %_ZNK4absl12lts_202505124Cord4sizeEv.exit.thread
  %i.n = sext i8 %i.f to i64
  %i.o = lshr exact i64 %i.n, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #27
  br label %_ZNK4absl12lts_202505124Cord5emptyEv.exit.i

_ZNK4absl12lts_202505124Cord5emptyEv.exit.i:      ; preds = %bb.f, %bb.e
  %.pn80 = phi i64 [ %i.m, %bb.e ], [ %i.o, %bb.f ] ; 2 uses
  %i.p = add i64 %.pn80, %i.e
  %i.q = icmp eq i64 %.pn80, 0
  br i1 %i.q, label %bb.g, label %bb.i

bb.g:                                             ; preds = %_ZNK4absl12lts_202505124Cord5emptyEv.exit.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !185)
  %i.r = icmp samesign ugt i64 %i.e, 15
  br i1 %i.r, label %bb.h, label %_ZN4absl12lts_202505124Cord15GetAppendBufferEmm.exit.thread

bb.h:                                             ; preds = %bb.g
  %i.s = icmp samesign ult i64 %i.e, 20
  %spec.store.select.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.e, i64 4083)
  %i.t = add nuw nsw i64 %spec.store.select.i.i.i.i, 13
  %.0.i.i.i.i = select i1 %i.s, i64 32, i64 %i.t  ; 2 uses
  %i.u = icmp samesign ult i64 %.0.i.i.i.i, 513   ; 2 uses
  %.neg.i.i.i.i = select i1 %i.u, i64 -8, i64 -64
  %i.v = select i1 %i.u, i64 8, i64 64
  %i.w = add nsw i64 %.0.i.i.i.i, -1
  %i.x = add nuw nsw i64 %i.w, %i.v
  %i.y = and i64 %i.x, %.neg.i.i.i.i              ; 3 uses
  %i.z = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.y) #34, !noalias !188 ; 5 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  store i64 2, ptr %i.aa, align 8, !noalias !188
  %i.ab = icmp samesign ult i64 %i.y, 513         ; 2 uses
  %.sink6.i.i.i.i.i.i = select i1 %i.ab, i64 3, i64 6
  %.sink5.i.i.i.i.i.i = select i1 %i.ab, i64 2, i64 58
  %i.ac = lshr i64 %i.y, %.sink6.i.i.i.i.i.i
  %i.ad = add nuw nsw i64 %i.ac, %.sink5.i.i.i.i.i.i
  %i.ae = trunc nuw nsw i64 %i.ad to i8
  %i.af = getelementptr inbounds nuw i8, ptr %i.z, i64 12
  store i8 %i.ae, ptr %i.af, align 4, !tbaa !189, !noalias !188
  store i64 0, ptr %i.z, align 8, !tbaa !152, !noalias !188
  store ptr %i.z, ptr %3, align 8, !tbaa !190, !alias.scope !188
  %i.ag = ptrtoint ptr %i.z to i64
  %i.ah = trunc i64 %i.ag to i8
  br label %_ZN4absl12lts_202505124Cord15GetAppendBufferEmm.exit

_ZN4absl12lts_202505124Cord15GetAppendBufferEmm.exit.thread: ; preds = %bb.g
  store i8 1, ptr %3, align 8, !tbaa !193, !alias.scope !188
  %i.ai = getelementptr inbounds nuw i8, ptr %3, i64 1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(15) %i.ai, i8 0, i64 15, i1 false), !alias.scope !188
  br label %bb.j

bb.i:                                             ; preds = %_ZNK4absl12lts_202505124Cord5emptyEv.exit.i
  call void @_ZN4absl12lts_202505124Cord23GetAppendBufferSlowPathEmmm(ptr dead_on_unwind nonnull writable sret(%"class.absl::lts_20250512::CordBuffer") align 8 %3, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 noundef 0, i64 noundef %i.e, i64 noundef 16)
  %.pre = load i8, ptr %3, align 8, !tbaa !30
  br label %_ZN4absl12lts_202505124Cord15GetAppendBufferEmm.exit

_ZN4absl12lts_202505124Cord15GetAppendBufferEmm.exit: ; preds = %bb.h, %bb.i
  %i.aj = phi i8 [ %i.ah, %bb.h ], [ %.pre, %bb.i ] ; 2 uses
  %i.ak = trunc i8 %i.aj to i1
  br i1 %i.ak, label %bb.j, label %.thread57

bb.j:                                             ; preds = %_ZN4absl12lts_202505124Cord15GetAppendBufferEmm.exit.thread, %_ZN4absl12lts_202505124Cord15GetAppendBufferEmm.exit
  %i.al = phi i8 [ 1, %_ZN4absl12lts_202505124Cord15GetAppendBufferEmm.exit.thread ], [ %i.aj, %_ZN4absl12lts_202505124Cord15GetAppendBufferEmm.exit ]
  %i.am = ashr i8 %i.al, 1
  %i.an = sext i8 %i.am to i64                    ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %3, i64 1
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.an ; 2 uses
  %i.aq = sub nsw i64 15, %i.an                   ; 3 uses
  %.not = icmp ult i64 %i.aq, %i.e
  br i1 %.not, label %bb.ab, label %bb.k

.thread57:                                        ; preds = %_ZN4absl12lts_202505124Cord15GetAppendBufferEmm.exit
  %i.ar = load ptr, ptr %3, align 8, !tbaa !30    ; 4 uses
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !152 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.ar, i64 13
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 %i.as ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.ar, i64 12
  %i.aw = load i8, ptr %i.av, align 4, !tbaa !189 ; 3 uses
  %i.ax = zext i8 %i.aw to i32
  %i.ay = icmp ult i8 %i.aw, 67                   ; 2 uses
  %i.az = icmp ult i8 %i.aw, -69                  ; 2 uses
  %..i.i.i.i.i = select i1 %i.az, i32 6, i32 12
  %.sink6.i.i.i.i.i = select i1 %i.ay, i32 3, i32 %..i.i.i.i.i
  %i.ba = shl nuw nsw i32 %i.ax, %.sink6.i.i.i.i.i
  %i.bb = select i1 %i.az, i32 -3725, i32 -753677
  %i.bc = select i1 %i.ay, i32 -29, i32 %i.bb
  %narrow.i.i.i.i = add nsw i32 %i.ba, %i.bc
  %i.bd = sext i32 %narrow.i.i.i.i to i64         ; 2 uses
  %i.be = sub i64 %i.bd, %i.as                    ; 3 uses
  %.not62 = icmp ult i64 %i.be, %i.e
  br i1 %.not62, label %.thread67, label %bb.k

bb.k:                                             ; preds = %.thread57, %bb.j
  %.pn4.i65 = phi i64 [ %i.be, %.thread57 ], [ %i.aq, %bb.j ]
  %.pn6.i63 = phi ptr [ %i.au, %.thread57 ], [ %i.ap, %bb.j ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #27
  %i.bf = load atomic i8, ptr @_ZN6google8protobuf2io17CodedOutputStream36default_serialization_deterministic_E monotonic, align 1, !range !71, !noundef !72
  %sext = shl i64 %.pn4.i65, 32
  %i.bg = ashr exact i64 %sext, 32
  %i.bh = getelementptr inbounds i8, ptr %.pn6.i63, i64 %i.bg
  store ptr %i.bh, ptr %4, align 8, !tbaa !168
  %i.bi = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr null, ptr %i.bi, align 8, !tbaa !171
  %i.bj = getelementptr inbounds nuw i8, ptr %4, i64 48
  store ptr null, ptr %i.bj, align 8, !tbaa !172
  %i.bk = getelementptr inbounds nuw i8, ptr %4, i64 56
  store i8 0, ptr %i.bk, align 8, !tbaa !173
  %i.bl = getelementptr inbounds nuw i8, ptr %4, i64 57
  store i8 0, ptr %i.bl, align 1, !tbaa !174
  %i.bm = getelementptr inbounds nuw i8, ptr %4, i64 58
  store i8 %i.bf, ptr %i.bm, align 2, !tbaa !175
  %i.bn = getelementptr inbounds nuw i8, ptr %4, i64 59
  store i8 0, ptr %i.bn, align 1, !tbaa !176
  %i.bo = load ptr, ptr %0, align 8, !tbaa !41
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 40
  %i.bq = load ptr, ptr %i.bp, align 8
  %i.br = invoke noundef ptr %i.bq(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %.pn6.i63, ptr noundef nonnull %4)
          to label %bb.l unwind label %bb.o       ; 0 uses

bb.l:                                             ; preds = %bb.k
  %i.bs = load i8, ptr %3, align 8, !tbaa !30     ; 2 uses
  %i.bt = trunc i8 %i.bs to i1
  br i1 %i.bt, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %.tr.i.i = trunc i64 %i.e to i8
  %i.bu = shl i8 %.tr.i.i, 1
  %i.bv = add i8 %i.bs, %i.bu
  store i8 %i.bv, ptr %3, align 8, !tbaa !30
  br label %_ZN4absl12lts_2025051210CordBuffer16IncreaseLengthByEm.exit

bb.n:                                             ; preds = %bb.l
  %i.bw = load ptr, ptr %3, align 8, !tbaa !30    ; 2 uses
  %i.bx = load i64, ptr %i.bw, align 8, !tbaa !152
  %i.by = add i64 %i.bx, %i.e
  store i64 %i.by, ptr %i.bw, align 8, !tbaa !152
  br label %_ZN4absl12lts_2025051210CordBuffer16IncreaseLengthByEm.exit

bb.o:                                             ; preds = %bb.k
  %i.bz = landingpad { ptr, i32 }
          cleanup
  br label %bb.aa

_ZN4absl12lts_2025051210CordBuffer16IncreaseLengthByEm.exit: ; preds = %bb.n, %bb.m
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(16) %3, i64 16, i1 false), !tbaa.struct !195
  store i8 1, ptr %3, align 8, !tbaa !30
  %i.ca = load i8, ptr %5, align 8, !tbaa !30     ; 3 uses
  %i.cb = trunc i8 %i.ca to i1
  br i1 %i.cb, label %bb.p, label %bb.q

bb.p:                                             ; preds = %_ZN4absl12lts_2025051210CordBuffer16IncreaseLengthByEm.exit
  %i.cc = ashr i8 %i.ca, 1
  %i.cd = sext i8 %i.cc to i64
  br label %_ZNK4absl12lts_2025051210CordBuffer6lengthEv.exit.i

bb.q:                                             ; preds = %_ZN4absl12lts_2025051210CordBuffer16IncreaseLengthByEm.exit
  %i.ce = load ptr, ptr %5, align 8               ; 2 uses
  %i.cf = load i64, ptr %i.ce, align 8, !tbaa !152
  %i.cg = ptrtoint ptr %i.ce to i64
  %i.ch = trunc i64 %i.cg to i8
  br label %_ZNK4absl12lts_2025051210CordBuffer6lengthEv.exit.i

_ZNK4absl12lts_2025051210CordBuffer6lengthEv.exit.i: ; preds = %bb.q, %bb.p
  %i.ci = phi i8 [ %i.ca, %bb.p ], [ %i.ch, %bb.q ] ; 2 uses
  %i.cj = phi i64 [ %i.cd, %bb.p ], [ %i.cf, %bb.q ]
  %i.ck = icmp eq i64 %i.cj, 0
  br i1 %i.ck, label %_ZN4absl12lts_202505124Cord6AppendENS0_10CordBufferE.exit, label %bb.r, !prof !51

bb.r:                                             ; preds = %_ZNK4absl12lts_2025051210CordBuffer6lengthEv.exit.i
  %i.cl = load i8, ptr %1, align 1, !tbaa !30
  %i.cm = trunc i8 %i.cl to i1
  %i.cn = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.co = load ptr, ptr %i.cn, align 8            ; 4 uses
  %i.cp = icmp ne ptr %i.co, null
  %.not6.i.i = select i1 %i.cm, i1 %i.cp, i1 false
  br i1 %.not6.i.i, label %bb.s, label %_ZN4absl12lts_202505124Cord9InlineRep23MaybeRemoveEmptyCrcNodeEv.exit.i

bb.s:                                             ; preds = %bb.r
  %i.cq = load i64, ptr %i.co, align 8, !tbaa !152
  %.not.i.i = icmp eq i64 %i.cq, 0
  br i1 %.not.i.i, label %bb.t, label %_ZN4absl12lts_202505124Cord9InlineRep23MaybeRemoveEmptyCrcNodeEv.exit.i, !prof !51

bb.t:                                             ; preds = %bb.s
  %i.cr = load i64, ptr %1, align 8, !tbaa !30
  %i.cs = add nsw i64 %i.cr, -1                   ; 2 uses
  %.not.i.i.i = icmp eq i64 %i.cs, 0
  br i1 %.not.i.i.i, label %_ZN4absl12lts_2025051213cord_internal9CordzInfo16MaybeUntrackCordEPS2_.exit.i.i, label %bb.u, !prof !24

bb.u:                                             ; preds = %bb.t
  %i.ct = inttoptr i64 %i.cs to ptr
  invoke void @_ZN4absl12lts_2025051213cord_internal9CordzInfo7UntrackEv(ptr noundef nonnull align 8 dereferenceable(1344) %i.ct)
          to label %_ZN4absl12lts_2025051213cord_internal9CordzInfo16MaybeUntrackCordEPS2_.exit.i.i unwind label %bb.z

_ZN4absl12lts_2025051213cord_internal9CordzInfo16MaybeUntrackCordEPS2_.exit.i.i: ; preds = %bb.u, %bb.t
  %i.cu = getelementptr inbounds nuw i8, ptr %i.co, i64 8
  %i.cv = atomicrmw sub ptr %i.cu, i32 2 acq_rel, align 4
  %.not.i4.i.i = icmp eq i32 %i.cv, 2
  br i1 %.not.i4.i.i, label %bb.v, label %_ZN4absl12lts_2025051213cord_internal7CordRep5UnrefEPS2_.exit.i.i, !prof !51

bb.v:                                             ; preds = %_ZN4absl12lts_2025051213cord_internal9CordzInfo16MaybeUntrackCordEPS2_.exit.i.i
  invoke void @_ZN4absl12lts_2025051213cord_internal7CordRep7DestroyEPS2_(ptr noundef nonnull %i.co)
          to label %_ZN4absl12lts_2025051213cord_internal7CordRep5UnrefEPS2_.exit.i.i unwind label %bb.z

_ZN4absl12lts_2025051213cord_internal7CordRep5UnrefEPS2_.exit.i.i: ; preds = %bb.v, %_ZN4absl12lts_2025051213cord_internal9CordzInfo16MaybeUntrackCordEPS2_.exit.i.i
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %1, i8 0, i64 16, i1 false)
  %.pre.i = load i8, ptr %5, align 8, !tbaa !30
  br label %_ZN4absl12lts_202505124Cord9InlineRep23MaybeRemoveEmptyCrcNodeEv.exit.i

_ZN4absl12lts_202505124Cord9InlineRep23MaybeRemoveEmptyCrcNodeEv.exit.i: ; preds = %_ZN4absl12lts_2025051213cord_internal7CordRep5UnrefEPS2_.exit.i.i, %bb.s, %bb.r
  %i.cw = phi i8 [ %i.ci, %bb.r ], [ %i.ci, %bb.s ], [ %.pre.i, %_ZN4absl12lts_2025051213cord_internal7CordRep5UnrefEPS2_.exit.i.i ] ; 2 uses
end_hunk_0
