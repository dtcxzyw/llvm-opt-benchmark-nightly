Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/folly/original/TcpInfo?download=true
inline.NumInlined: 378
inline.NumDeleted: 188
begin_hunk_0_@_ZNK5folly7TcpInfo15ccNameEnumAsStrEv:bb.a
  %3 = alloca %"class.google::LogMessageFatal", align 8 ; 5 uses
  %4 = alloca %"struct.google::CheckOpString", align 8 ; 4 uses
  %i.c = alloca i64, align 8                      ; 5 uses
  %i.d = alloca i32, align 4                      ; 5 uses
  %5 = alloca %"class.google::LogMessageFatal", align 8 ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 280
  %i.f = load i64, ptr %i.e, align 8, !noalias !3071 ; 3 uses
  %.sroa.0.0.extract.trunc = trunc i64 %i.f to i32 ; 3 uses
  %i.g = and i64 %i.f, 4294967296
  %.not = icmp eq i64 %i.g, 0
  br i1 %.not, label %bb.b, label %_ZNKR5folly8OptionalINS_7TcpInfo21CongestionControlNameEE5valueEv.exit

bb.b:                                             ; preds = %bb.a
  store i8 0, ptr %0, align 8, !tbaa !16
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 0, ptr %i.h, align 8, !tbaa !3073
  br label %bb.k

_ZNKR5folly8OptionalINS_7TcpInfo21CongestionControlNameEE5valueEv.exit: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i32 9, ptr %i.a, align 4, !tbaa !17
  store i32 %.sroa.0.0.extract.trunc, ptr %i.b, align 4, !tbaa !17
  %.not.i.i = icmp sgt i32 %.sroa.0.0.extract.trunc, 9
  br i1 %.not.i.i, label %_ZN6google12Check_GEImplB5cxx11EiiPKc.exit, label %_ZN6google12Check_GEImplB5cxx11EiiPKc.exit.thread, !prof !103

_ZN6google12Check_GEImplB5cxx11EiiPKc.exit.thread: ; preds = %_ZNKR5folly8OptionalINS_7TcpInfo21CongestionControlNameEE5valueEv.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.c

_ZN6google12Check_GEImplB5cxx11EiiPKc.exit:       ; preds = %_ZNKR5folly8OptionalINS_7TcpInfo21CongestionControlNameEE5valueEv.exit
  %i.i = call noundef ptr @_ZN6google17MakeCheckOpStringIiiEEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_PKc(ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull align 4 dereferenceable(4) %i.b, ptr noundef nonnull @.str.6) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  store ptr %i.i, ptr %2, align 8, !tbaa !3076
  %.not6 = icmp eq ptr %i.i, null
  br i1 %.not6, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_ZN6google12Check_GEImplB5cxx11EiiPKc.exit.thread, %_ZN6google12Check_GEImplB5cxx11EiiPKc.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #21
  store i64 9, ptr %i.c, align 8, !tbaa !94
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #21
  store i32 %.sroa.0.0.extract.trunc, ptr %i.d, align 4, !tbaa !17
  %sext = shl i64 %i.f, 32
  %i.j = ashr exact i64 %sext, 32                 ; 2 uses
  %.not.i = icmp ugt i64 %i.j, 9
  br i1 %.not.i, label %_ZN6google12Check_GEImplImiEEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_PKc.exit, label %_ZN6google12Check_GEImplImiEEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_PKc.exit.thread, !prof !103

_ZN6google12Check_GEImplImiEEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_PKc.exit.thread: ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #21
  br label %bb.g

_ZN6google12Check_GEImplImiEEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_PKc.exit: ; preds = %bb.c
  %i.k = call noundef ptr @_ZN6google17MakeCheckOpStringImiEEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_PKc(ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef nonnull align 4 dereferenceable(4) %i.d, ptr noundef nonnull @.str.7) ; 2 uses
  store ptr %i.k, ptr %4, align 8, !tbaa !3076
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #21
  %.not7 = icmp eq ptr %i.k, null
  br i1 %.not7, label %bb.g, label %bb.h

bb.d:                                             ; preds = %_ZN6google12Check_GEImplB5cxx11EiiPKc.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
  call void @_ZN6google15LogMessageFatalC1EPKciRKNS_13CheckOpStringE(ptr noundef nonnull align 8 dereferenceable(96) %3, ptr noundef nonnull @.str, i32 noundef 440, ptr noundef nonnull align 8 dereferenceable(8) %2)
  %i.l = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6google10LogMessage6streamEv(ptr noundef nonnull align 8 dereferenceable(96) %3)
          to label %bb.e unwind label %bb.f       ; 0 uses

bb.e:                                             ; preds = %bb.d
  call void @_ZN6google15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %3) #26
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.m = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  call void @_ZN6google15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %3) #26
  unreachable

bb.g:                                             ; preds = %_ZN6google12Check_GEImplImiEEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_PKc.exit.thread, %_ZN6google12Check_GEImplImiEEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_PKc.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  %i.n = getelementptr inbounds nuw [16 x i8], ptr @_ZN5folly12_GLOBAL__N_18kCcNamesE, i64 %i.j
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(16) %i.n, i64 16, i1 false), !tbaa.struct !3078
  store i8 1, ptr %i.o, align 8, !tbaa !3080
  br label %bb.k

bb.h:                                             ; preds = %_ZN6google12Check_GEImplImiEEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_PKc.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #21
  call void @_ZN6google15LogMessageFatalC1EPKciRKNS_13CheckOpStringE(ptr noundef nonnull align 8 dereferenceable(96) %5, ptr noundef nonnull @.str, i32 noundef 441, ptr noundef nonnull align 8 dereferenceable(8) %4)
  %i.p = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6google10LogMessage6streamEv(ptr noundef nonnull align 8 dereferenceable(96) %5)
          to label %bb.i unwind label %bb.j       ; 0 uses

bb.i:                                             ; preds = %bb.h
  call void @_ZN6google15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %5) #26
  unreachable

bb.j:                                             ; preds = %bb.h
  %i.q = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  call void @_ZN6google15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %5) #26
  unreachable

bb.k:                                             ; preds = %bb.g, %bb.b
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr noundef ptr @_ZN6google17MakeCheckOpStringIiiEEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_PKc(ptr noundef nonnull align 4 dereferenceable(4) %0, ptr noundef nonnull align 4 dereferenceable(4) %1, ptr noundef %2) local_unnamed_addr #17 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.google::base::CheckOpMessageBuilder", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
  call void @_ZN6google4base21CheckOpMessageBuilderC1EPKc(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef %2)
  %i.a = load ptr, ptr %3, align 8, !tbaa !110
  %i.b = load i32, ptr %0, align 4, !tbaa !17
  %i.c = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %i.a, i32 noundef %i.b)
          to label %_ZN6google22MakeCheckOpValueStringIiEEvPSoRKT_.exit unwind label %bb.d ; 0 uses

_ZN6google22MakeCheckOpValueStringIiEEvPSoRKT_.exit: ; preds = %bb.a
  %i.d = invoke noundef ptr @_ZN6google4base21CheckOpMessageBuilder7ForVar2Ev(ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %bb.b unwind label %bb.d

bb.b:                                             ; preds = %_ZN6google22MakeCheckOpValueStringIiEEvPSoRKT_.exit
  %i.e = load i32, ptr %1, align 4, !tbaa !17
  %i.f = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %i.d, i32 noundef %i.e)
          to label %_ZN6google22MakeCheckOpValueStringIiEEvPSoRKT_.exit4 unwind label %bb.d ; 0 uses

_ZN6google22MakeCheckOpValueStringIiEEvPSoRKT_.exit4: ; preds = %bb.b
  %i.g = invoke noundef ptr @_ZN6google4base21CheckOpMessageBuilder9NewStringB5cxx11Ev(ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %_ZN6google22MakeCheckOpValueStringIiEEvPSoRKT_.exit4
  call void @_ZN6google4base21CheckOpMessageBuilderD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %3) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  ret ptr %i.g

bb.d:                                             ; preds = %bb.b, %bb.a, %_ZN6google22MakeCheckOpValueStringIiEEvPSoRKT_.exit4, %_ZN6google22MakeCheckOpValueStringIiEEvPSoRKT_.exit
  %i.h = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6google4base21CheckOpMessageBuilderD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %3) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  resume { ptr, i32 } %i.h
}

declare void @_ZN6google4base21CheckOpMessageBuilderC1EPKc(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) unnamed_addr #7

declare noundef ptr @_ZN6google4base21CheckOpMessageBuilder7ForVar2Ev(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #7

declare noundef ptr @_ZN6google4base21CheckOpMessageBuilder9NewStringB5cxx11Ev(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #7

; Function Attrs: nounwind
declare void @_ZN6google4base21CheckOpMessageBuilderD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #7

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr noundef ptr @_ZN6google17MakeCheckOpStringImiEEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_PKc(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 4 dereferenceable(4) %1, ptr noundef %2) local_unnamed_addr #17 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.google::base::CheckOpMessageBuilder", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
  call void @_ZN6google4base21CheckOpMessageBuilderC1EPKc(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef %2)
  %i.a = load ptr, ptr %3, align 8, !tbaa !110
  %i.b = load i64, ptr %0, align 8, !tbaa !94
  %i.c = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef %i.b)
          to label %_ZN6google22MakeCheckOpValueStringImEEvPSoRKT_.exit unwind label %bb.d ; 0 uses

_ZN6google22MakeCheckOpValueStringImEEvPSoRKT_.exit: ; preds = %bb.a
  %i.d = invoke noundef ptr @_ZN6google4base21CheckOpMessageBuilder7ForVar2Ev(ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %bb.b unwind label %bb.d

bb.b:                                             ; preds = %_ZN6google22MakeCheckOpValueStringImEEvPSoRKT_.exit
  %i.e = load i32, ptr %1, align 4, !tbaa !17
  %i.f = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %i.d, i32 noundef %i.e)
          to label %_ZN6google22MakeCheckOpValueStringIiEEvPSoRKT_.exit unwind label %bb.d ; 0 uses

_ZN6google22MakeCheckOpValueStringIiEEvPSoRKT_.exit: ; preds = %bb.b
  %i.g = invoke noundef ptr @_ZN6google4base21CheckOpMessageBuilder9NewStringB5cxx11Ev(ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %_ZN6google22MakeCheckOpValueStringIiEEvPSoRKT_.exit
  call void @_ZN6google4base21CheckOpMessageBuilderD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %3) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  ret ptr %i.g

bb.d:                                             ; preds = %bb.b, %bb.a, %_ZN6google22MakeCheckOpValueStringIiEEvPSoRKT_.exit, %_ZN6google22MakeCheckOpValueStringImEEvPSoRKT_.exit
  %i.h = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6google4base21CheckOpMessageBuilderD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %3) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  resume { ptr, i32 } %i.h
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @_ZNK5folly7TcpInfo18bbrBwBitsPerSecondEv(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.folly::Optional.14") align 8 captures(none) initializes((0, 1), (8, 9)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(352) %1) local_unnamed_addr #12 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 308
  %i.b = load i8, ptr %i.a, align 4, !tbaa !100, !range !92, !noalias !3091, !noundef !93
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 280
  %i.e = load i64, ptr %i.d, align 8, !noalias !3092
  %i.f = and i64 %i.e, 8589934591
  %2 = icmp ne i64 %i.f, 4294967301
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 312
  %i.h = load i32, ptr %i.g, align 8, !noalias !3093
  %or.cond.i.i4.i = icmp slt i32 %i.h, 8
  %or.cond32.i = select i1 %2, i1 true, i1 %or.cond.i.i4.i
  br i1 %or.cond32.i, label %bb.c, label %_ZNKR5folly8OptionalImE5valueEv.exit.i

_ZNKR5folly8OptionalImE5valueEv.exit.i:           ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 288
  %i.j = load i64, ptr %i.i, align 8, !noalias !3093
  %i.k = shl i64 %i.j, 3
  store i64 %i.k, ptr %0, align 8, !tbaa !94, !alias.scope !3094
  br label %_ZN5folly7TcpInfo29bytesPerSecondToBitsPerSecondERKNS_8OptionalImEE.exit

bb.c:                                             ; preds = %bb.b, %bb.a
  store i8 0, ptr %0, align 8, !tbaa !16, !alias.scope !3094
  br label %_ZN5folly7TcpInfo29bytesPerSecondToBitsPerSecondERKNS_8OptionalImEE.exit

_ZN5folly7TcpInfo29bytesPerSecondToBitsPerSecondERKNS_8OptionalImEE.exit: ; preds = %_ZNKR5folly8OptionalImE5valueEv.exit.i, %bb.c
  %.sink.i = phi i8 [ 1, %_ZNKR5folly8OptionalImE5valueEv.exit.i ], [ 0, %bb.c ]
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 %.sink.i, ptr %i.l, align 8, !tbaa !102, !alias.scope !3094
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @_ZNK5folly7TcpInfo19bbrBwBytesPerSecondEv(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.folly::Optional.14") align 8 captures(none) initializes((0, 1), (8, 9)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(352) %1) local_unnamed_addr #12 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 308
  %i.b = load i8, ptr %i.a, align 4, !tbaa !100, !range !92, !noalias !3103, !noundef !93
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %_ZNK5folly7TcpInfo19getFieldAsOptUInt64IjEENS_8OptionalImEEMNS_6detail12tcp_bbr_infoET_.exit5.thread

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 280
  %i.e = load i64, ptr %i.d, align 8, !noalias !3104
  %i.f = and i64 %i.e, 8589934591
  %2 = icmp ne i64 %i.f, 4294967301
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 312
  %i.h = load i32, ptr %i.g, align 8
  %or.cond.i.i4 = icmp slt i32 %i.h, 8
  %or.cond32 = select i1 %2, i1 true, i1 %or.cond.i.i4
  br i1 %or.cond32, label %_ZNK5folly7TcpInfo19getFieldAsOptUInt64IjEENS_8OptionalImEEMNS_6detail12tcp_bbr_infoET_.exit5.thread, label %_ZNR5folly8OptionalImEdeEv.exit6

_ZNR5folly8OptionalImEdeEv.exit6:                 ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 292
  %i.j = load i32, ptr %i.i, align 4, !tbaa !17, !noalias !3105
  %i.k = zext i32 %i.j to i64
  %3 = shl nuw i64 %i.k, 32
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 288
  %i.m = load i32, ptr %i.l, align 8
  %i.n = zext i32 %i.m to i64
  %i.o = or disjoint i64 %3, %i.n
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.o, ptr %0, align 8, !tbaa !94
  store i8 1, ptr %i.p, align 8, !tbaa !95
  br label %bb.c

_ZNK5folly7TcpInfo19getFieldAsOptUInt64IjEENS_8OptionalImEEMNS_6detail12tcp_bbr_infoET_.exit5.thread: ; preds = %bb.b, %bb.a
  store i8 0, ptr %0, align 8, !tbaa !16
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 0, ptr %i.q, align 8, !tbaa !102
  br label %bb.c

bb.c:                                             ; preds = %_ZNK5folly7TcpInfo19getFieldAsOptUInt64IjEENS_8OptionalImEEMNS_6detail12tcp_bbr_infoET_.exit5.thread, %_ZNR5folly8OptionalImEdeEv.exit6
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @_ZNK5folly7TcpInfo9bbrMinrttEv(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.folly::Optional.22") align 8 captures(none) initializes((0, 1), (8, 9)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(352) %1) local_unnamed_addr #12 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 308
  %i.b = load i8, ptr %i.a, align 4, !tbaa !100, !range !92, !noalias !3112, !noundef !93
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 280
  %i.e = load i64, ptr %i.d, align 8, !noalias !3113
  %i.f = and i64 %i.e, 8589934591
  %i.g = icmp ne i64 %i.f, 4294967301
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 312
  %i.i = load i32, ptr %i.h, align 8
  %or.cond.i.i = icmp slt i32 %i.i, 12
  %or.cond = select i1 %i.g, i1 true, i1 %or.cond.i.i
  br i1 %or.cond, label %bb.c, label %_ZNR5folly8OptionalImEdeEv.exit

_ZNR5folly8OptionalImEdeEv.exit:                  ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 296
  %i.k = load i32, ptr %i.j, align 8, !tbaa !17, !noalias !3114
  %i.l = zext i32 %i.k to i64
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.l, ptr %0, align 8, !tbaa !94
  store i8 1, ptr %i.m, align 8, !tbaa !3116
  br label %bb.d

bb.c:                                             ; preds = %bb.b, %bb.a
  store i8 0, ptr %0, align 8, !tbaa !16
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 0, ptr %i.n, align 8, !tbaa !105
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %_ZNR5folly8OptionalImEdeEv.exit
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define void @_ZNK5folly7TcpInfo13bbrPacingGainEv(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.folly::Optional.14") align 8 captures(none) initializes((0, 1), (8, 9)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(352) %1) local_unnamed_addr #16 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3123)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 308
  %i.b = load i8, ptr %i.a, align 4, !tbaa !100, !range !92, !noalias !3123, !noundef !93
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %.critedge.i

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 280
  %i.e = load i64, ptr %i.d, align 8, !noalias !3124
  %i.f = and i64 %i.e, 8589934591
  %i.g = icmp eq i64 %i.f, 4294967301
  br i1 %i.g, label %_ZNKR5folly8OptionalINS_6detail11tcp_cc_infoEE5valueEv.exit.i, label %.critedge.i

_ZNKR5folly8OptionalINS_6detail11tcp_cc_infoEE5valueEv.exit.i: ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3125)
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 312
  %i.i = load i32, ptr %i.h, align 8, !tbaa !101, !noalias !3126
  %or.cond.i.i = icmp slt i32 %i.i, 16
  br i1 %or.cond.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_ZNKR5folly8OptionalINS_6detail11tcp_cc_infoEE5valueEv.exit.i
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 300
  %i.k = load i32, ptr %i.j, align 4, !tbaa !17, !noalias !3126
  %i.l = zext i32 %i.k to i64
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.l, ptr %0, align 8, !tbaa !94, !alias.scope !3126
  store i8 1, ptr %i.m, align 8, !tbaa !95, !alias.scope !3126
  br label %_ZNK5folly7TcpInfo19getFieldAsOptUInt64IjEENS_8OptionalImEEMNS_6detail12tcp_bbr_infoET_.exit

bb.d:                                             ; preds = %_ZNKR5folly8OptionalINS_6detail11tcp_cc_infoEE5valueEv.exit.i
  store i8 0, ptr %0, align 8, !tbaa !16, !alias.scope !3126
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 0, ptr %i.n, align 8, !tbaa !102, !alias.scope !3126
  br label %_ZNK5folly7TcpInfo19getFieldAsOptUInt64IjEENS_8OptionalImEEMNS_6detail12tcp_bbr_infoET_.exit

.critedge.i:                                      ; preds = %bb.b, %bb.a
  store i8 0, ptr %0, align 8, !tbaa !16, !alias.scope !3123
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 0, ptr %i.o, align 8, !tbaa !102, !alias.scope !3123
  br label %_ZNK5folly7TcpInfo19getFieldAsOptUInt64IjEENS_8OptionalImEEMNS_6detail12tcp_bbr_infoET_.exit

_ZNK5folly7TcpInfo19getFieldAsOptUInt64IjEENS_8OptionalImEEMNS_6detail12tcp_bbr_infoET_.exit: ; preds = %bb.c, %bb.d, %.critedge.i
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define void @_ZNK5folly7TcpInfo11bbrCwndGainEv(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.folly::Optional.14") align 8 captures(none) initializes((0, 1), (8, 9)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(352) %1) local_unnamed_addr #16 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3133)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 308
  %i.b = load i8, ptr %i.a, align 4, !tbaa !100, !range !92, !noalias !3133, !noundef !93
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %.critedge.i

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 280
  %i.e = load i64, ptr %i.d, align 8, !noalias !3134
  %i.f = and i64 %i.e, 8589934591
  %i.g = icmp eq i64 %i.f, 4294967301
  br i1 %i.g, label %_ZNKR5folly8OptionalINS_6detail11tcp_cc_infoEE5valueEv.exit.i, label %.critedge.i

_ZNKR5folly8OptionalINS_6detail11tcp_cc_infoEE5valueEv.exit.i: ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3135)
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 312
  %i.i = load i32, ptr %i.h, align 8, !tbaa !101, !noalias !3136
  %or.cond.i.i = icmp slt i32 %i.i, 20
  br i1 %or.cond.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_ZNKR5folly8OptionalINS_6detail11tcp_cc_infoEE5valueEv.exit.i
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 304
  %i.k = load i32, ptr %i.j, align 8, !tbaa !17, !noalias !3136
  %i.l = zext i32 %i.k to i64
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.l, ptr %0, align 8, !tbaa !94, !alias.scope !3136
  store i8 1, ptr %i.m, align 8, !tbaa !95, !alias.scope !3136
  br label %_ZNK5folly7TcpInfo19getFieldAsOptUInt64IjEENS_8OptionalImEEMNS_6detail12tcp_bbr_infoET_.exit

bb.d:                                             ; preds = %_ZNKR5folly8OptionalINS_6detail11tcp_cc_infoEE5valueEv.exit.i
  store i8 0, ptr %0, align 8, !tbaa !16, !alias.scope !3136
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 0, ptr %i.n, align 8, !tbaa !102, !alias.scope !3136
  br label %_ZNK5folly7TcpInfo19getFieldAsOptUInt64IjEENS_8OptionalImEEMNS_6detail12tcp_bbr_infoET_.exit

.critedge.i:                                      ; preds = %bb.b, %bb.a
  store i8 0, ptr %0, align 8, !tbaa !16, !alias.scope !3133
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 0, ptr %i.o, align 8, !tbaa !102, !alias.scope !3133
  br label %_ZNK5folly7TcpInfo19getFieldAsOptUInt64IjEENS_8OptionalImEEMNS_6detail12tcp_bbr_infoET_.exit

_ZNK5folly7TcpInfo19getFieldAsOptUInt64IjEENS_8OptionalImEEMNS_6detail12tcp_bbr_infoET_.exit: ; preds = %bb.c, %bb.d, %.critedge.i
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @_ZNK5folly7TcpInfo17sendBufInUseBytesEv(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.folly::Optional.14") align 8 captures(none) initializes((0, 16)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(352) %1) local_unnamed_addr #12 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 320
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %i.a, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @_ZNK5folly7TcpInfo17recvBufInUseBytesEv(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.folly::Optional.14") align 8 captures(none) initializes((0, 16)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(352) %1) local_unnamed_addr #12 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 336
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %i.a, i64 16, i1 false)
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1) local_unnamed_addr #8 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !66   ; 3 uses
  %i.c = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #21
  %i.d = icmp eq i64 %i.b, %i.c
  br i1 %i.d, label %bb.b, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit

bb.b:                                             ; preds = %bb.a
  %i.e = icmp eq i64 %i.b, 0
  br i1 %i.e, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load ptr, ptr %0, align 8, !tbaa !65
  %bcmp = tail call i32 @bcmp(ptr %i.f, ptr nonnull %1, i64 %i.b)
  %i.g = icmp eq i32 %bcmp, 0
  br label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit:       ; preds = %bb.c, %bb.b, %bb.a
  %i.h = phi i1 [ false, %bb.a ], [ %i.g, %bb.c ], [ true, %bb.b ]
  ret i1 %i.h
}

declare void @_ZN6google15LogMessageFatalC1EPKci(ptr noundef nonnull align 8 dereferenceable(96), ptr noundef, i32 noundef) unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #18

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #19

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #20

attributes #0 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #6 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { mustprogress noinline uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #19 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #20 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #21 = { nounwind }
attributes #22 = { builtin nounwind }
attributes #23 = { nounwind willreturn memory(none) }
attributes #24 = { noreturn }
attributes #25 = { builtin allocsize(0) }
attributes #26 = { noreturn nounwind }

!llvm.module.flags = !{!2, !3, !4, !5, !6, !7}
!llvm.ident = !{!8}
!llvm.errno.tbaa = !{!13}

!0 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "NetworkSocket", scope: !34, file: !33, line: 32, size: 32, flags: DIFlagTypePassByValue | DIFlagNonTrivial, elements: !54, identifier: "_ZTSN5folly13NetworkSocketE")
!1 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "Dispatcher", scope: !55, file: !20, line: 32, size: 64, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: "_ZTSN5folly6netops10DispatcherE")
!2 = !{i32 7, !"Dwarf Version", i32 5}
!3 = !{i32 2, !"Debug Info Version", i32 3}
!4 = !{i32 7, !"openmp", i32 51}
!5 = !{i32 8, !"PIC Level", i32 2}
!6 = !{i32 7, !"uwtable", i32 2}
!7 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!8 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!9 = !{!"Simple C++ TBAA"}
!10 = !{!"omnipotent char", !9, i64 0}
!11 = !{!"int", !10, i64 0}
!12 = !{!"__libc_errno", !11, i64 0}
!13 = !{!12, !11, i64 0}
!14 = !{!"_ZTSN5folly13NetworkSocketE", !11, i64 0}
!15 = !{!14, !11, i64 0}
!16 = !{!10, !10, i64 0}
!17 = !{!11, !11, i64 0}
!18 = !{!"vtable pointer", !9, i64 0}
!19 = !{!18, !18, i64 0}
!20 = !DIFile(filename: "folly/net/NetOpsDispatcher.h", directory: "/opt-bench/work/folly/folly", checksumkind: CSK_MD5, checksum: "81deae0f9b22f681808156afa7512bfc")
!21 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!22 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!23 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!24 = !DIFile(filename: "/usr/include/unistd.h", directory: "", checksumkind: CSK_MD5, checksum: "877e832a8bb8424f9180387a13787475")
!25 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "e1865d9fe29fe1b5ced550b7ba458f9e")
!26 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!27 = !DIDerivedType(tag: DW_TAG_typedef, name: "__socklen_t", file: !25, line: 210, baseType: !26)
!28 = !DIDerivedType(tag: DW_TAG_typedef, name: "socklen_t", file: !24, line: 274, baseType: !27)
!29 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !28, size: 64)
!30 = !{!21, !22, !0, !21, !21, !23, !29}
!31 = !DISubroutineType(types: !30)
!32 = !DISubprogram(name: "getsockopt", linkageName: "_ZN5folly6netops10Dispatcher10getsockoptENS_13NetworkSocketEiiPvPj", scope: !1, file: !20, line: 43, type: !31, scopeLine: 43, containingType: !1, virtualIndex: 6, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagVirtual | DISPFlagOptimized)
!33 = !DIFile(filename: "folly/net/NetworkSocket.h", directory: "/opt-bench/work/folly/folly", checksumkind: CSK_MD5, checksum: "24217577b0aacb88dcd6d777a2ae7996")
!34 = !DINamespace(name: "folly", scope: null)
!35 = !DIDerivedType(tag: DW_TAG_typedef, name: "native_handle_type", scope: !0, file: !33, line: 37, baseType: !21)
!36 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !35)
!37 = !DIDerivedType(tag: DW_TAG_variable, name: "invalid_handle_value", scope: !0, file: !33, line: 38, baseType: !36, flags: DIFlagStaticMember, extraData: i32 -1)
!38 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !0, file: !33, line: 41, baseType: !35, size: 32)
!39 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !0, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!40 = !{null, !39}
!41 = !DISubroutineType(types: !40)
!42 = !DISubprogram(name: "NetworkSocket", linkageName: "_ZN5folly13NetworkSocketC4Ev", scope: !0, file: !33, line: 43, type: !41, scopeLine: 43, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!43 = !{null, !39, !35}
!44 = !DISubroutineType(types: !43)
!45 = !DISubprogram(name: "NetworkSocket", linkageName: "_ZN5folly13NetworkSocketC4Ei", scope: !0, file: !33, line: 44, type: !44, scopeLine: 44, flags: DIFlagExplicit | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!46 = !{!0, !21}
!47 = !DISubroutineType(types: !46)
!48 = !DISubprogram(name: "fromFd", linkageName: "_ZN5folly13NetworkSocket6fromFdEi", scope: !0, file: !33, line: 56, type: !47, scopeLine: 56, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: DISPFlagOptimized)
!49 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !0)
!50 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !49, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!51 = !{!21, !50}
!52 = !DISubroutineType(types: !51)
!53 = !DISubprogram(name: "toFd", linkageName: "_ZNK5folly13NetworkSocket4toFdEv", scope: !0, file: !33, line: 66, type: !52, scopeLine: 66, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!54 = !{!37, !38, !42, !45, !48, !53}
!55 = !DINamespace(name: "netops", scope: !34)
!56 = !{!"any pointer", !10, i64 0}
!57 = !{!"p1 int", !56, i64 0}
!58 = !{!"p1 omnipotent char", !56, i64 0}
!59 = !{!"long", !10, i64 0}
!60 = !{!"p1 _ZTSN6google8SiteFlagE", !56, i64 0}
!61 = !{!"_ZTSN6google8SiteFlagE", !57, i64 0, !58, i64 8, !59, i64 16, !60, i64 24}
!62 = !{!61, !57, i64 0}
!63 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !58, i64 0}
!64 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !63, i64 0, !59, i64 8, !10, i64 16}
!65 = !{!64, !58, i64 0}
!66 = !{!64, !59, i64 8}
!67 = !{!"long long", !10, i64 0}
!68 = !{!"_ZTSN5folly6detail8tcp_infoE", !10, i64 0, !10, i64 1, !10, i64 2, !10, i64 3, !10, i64 4, !10, i64 5, !10, i64 6, !10, i64 6, !10, i64 7, !11, i64 8, !11, i64 12, !11, i64 16, !11, i64 20, !11, i64 24, !11, i64 28, !11, i64 32, !11, i64 36, !11, i64 40, !11, i64 44, !11, i64 48, !11, i64 52, !11, i64 56, !11, i64 60, !11, i64 64, !11, i64 68, !11, i64 72, !11, i64 76, !11, i64 80, !11, i64 84, !11, i64 88, !11, i64 92, !11, i64 96, !11, i64 100, !67, i64 104, !67, i64 112, !67, i64 120, !67, i64 128, !11, i64 136, !11, i64 140, !11, i64 144, !11, i64 148, !11, i64 152, !11, i64 156, !67, i64 160, !67, i64 168, !67, i64 176, !67, i64 184, !11, i64 192, !11, i64 196, !67, i64 200, !67, i64 208, !11, i64 216, !11, i64 220, !11, i64 224, !11, i64 228}
!69 = !{!"bool", !10, i64 0}
!70 = !{!"_ZTSN5folly6detail39OptionalStorageNonTriviallyDestructibleINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE", !10, i64 0, !69, i64 32}
!71 = !{!"_ZTSN5folly6detail15OptionalStorageINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE", !70, i64 0}
!72 = !{!"_ZTSN5folly6detail16OptionalCopyBaseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0EEE", !71, i64 0}
!73 = !{!"_ZTSN5folly6detail22OptionalCopyAssignBaseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0EEE", !72, i64 0}
!74 = !{!"_ZTSN5folly8OptionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE", !73, i64 0}
!75 = !{!"_ZTSN5folly6detail36OptionalStorageTriviallyDestructibleINS_7TcpInfo21CongestionControlNameEEE", !10, i64 0, !69, i64 4}
!76 = !{!"_ZTSN5folly6detail15OptionalStorageINS_7TcpInfo21CongestionControlNameEEE", !75, i64 0}
!77 = !{!"_ZTSN5folly6detail16OptionalCopyBaseINS_7TcpInfo21CongestionControlNameELb1EEE", !76, i64 0}
!78 = !{!"_ZTSN5folly6detail22OptionalCopyAssignBaseINS_7TcpInfo21CongestionControlNameELb1EEE", !77, i64 0}
!79 = !{!"_ZTSN5folly8OptionalINS_7TcpInfo21CongestionControlNameEEE", !78, i64 0}
!80 = !{!"_ZTSN5folly6detail36OptionalStorageTriviallyDestructibleINS0_11tcp_cc_infoEEE", !10, i64 0, !69, i64 20}
!81 = !{!"_ZTSN5folly6detail15OptionalStorageINS0_11tcp_cc_infoEEE", !80, i64 0}
!82 = !{!"_ZTSN5folly6detail16OptionalCopyBaseINS0_11tcp_cc_infoELb1EEE", !81, i64 0}
!83 = !{!"_ZTSN5folly6detail22OptionalCopyAssignBaseINS0_11tcp_cc_infoELb1EEE", !82, i64 0}
!84 = !{!"_ZTSN5folly8OptionalINS_6detail11tcp_cc_infoEEE", !83, i64 0}
!85 = !{!"_ZTSN5folly6detail36OptionalStorageTriviallyDestructibleImEE", !10, i64 0, !69, i64 8}
!86 = !{!"_ZTSN5folly6detail15OptionalStorageImEE", !85, i64 0}
!87 = !{!"_ZTSN5folly6detail16OptionalCopyBaseImLb1EEE", !86, i64 0}
!88 = !{!"_ZTSN5folly6detail22OptionalCopyAssignBaseImLb1EEE", !87, i64 0}
!89 = !{!"_ZTSN5folly8OptionalImEE", !88, i64 0}
!90 = !{!"_ZTSN5folly7TcpInfoE", !68, i64 0, !11, i64 232, !74, i64 240, !79, i64 280, !84, i64 288, !11, i64 312, !89, i64 320, !89, i64 336}
!91 = !{!90, !11, i64 232}
!92 = !{i8 0, i8 2}
!93 = !{}
!94 = !{!59, !59, i64 0}
!95 = !{!86, !69, i64 8}
!96 = !{!70, !69, i64 32}
!97 = !{!71, !69, i64 32}
!98 = !{!63, !58, i64 0}
!99 = !{!76, !69, i64 4}
!100 = !{!81, !69, i64 20}
!101 = !{!90, !11, i64 312}
!102 = !{!85, !69, i64 8}
!103 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!104 = !{!"_ZTSN5folly6detail36OptionalStorageTriviallyDestructibleINSt6chrono8durationIlSt5ratioILl1ELl1000000EEEEEE", !10, i64 0, !69, i64 8}
!105 = !{!104, !69, i64 8}
!106 = !{!67, !67, i64 0}
!107 = !{!90, !11, i64 16}
!108 = !{!"p1 _ZTSNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE", !56, i64 0}
!109 = !{!"_ZTSN6google4base21CheckOpMessageBuilderE", !108, i64 0}
!110 = !{!109, !108, i64 0}
end_hunk_0
begin_hunk_1_@bcmp
!2885 = !DISubprogram(name: "OptionalStorage", linkageName: "_ZN5folly6detail15OptionalStorageINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC4Ev", scope: !237, file: !341, line: 144, type: !2884, scopeLine: 144, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2886 = !{!2881, !2885}
!2887 = !DIDerivedType(tag: DW_TAG_member, scope: !234, file: !341, line: 106, baseType: !233, size: 256)
!2888 = !DIDerivedType(tag: DW_TAG_member, name: "hasValue", scope: !234, file: !341, line: 110, baseType: !428, size: 8, offset: 256)
!2889 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !234, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!2890 = !{null, !2889}
!2891 = !DISubroutineType(types: !2890)
!2892 = !DISubprogram(name: "OptionalStorageNonTriviallyDestructible", linkageName: "_ZN5folly6detail39OptionalStorageNonTriviallyDestructibleINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC4Ev", scope: !234, file: !341, line: 112, type: !2891, scopeLine: 112, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2893 = !DISubprogram(name: "~OptionalStorageNonTriviallyDestructible", linkageName: "_ZN5folly6detail39OptionalStorageNonTriviallyDestructibleINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED4Ev", scope: !234, file: !341, line: 113, type: !2891, scopeLine: 113, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2894 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !234)
!2895 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !2894, size: 64)
!2896 = !{null, !2889, !2895}
!2897 = !DISubroutineType(types: !2896)
!2898 = !DISubprogram(name: "OptionalStorageNonTriviallyDestructible", linkageName: "_ZN5folly6detail39OptionalStorageNonTriviallyDestructibleINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC4ERKS8_", scope: !234, file: !341, line: 114, type: !2897, scopeLine: 114, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized | DISPFlagDeleted)
!2899 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !234, size: 64)
!2900 = !{!2899, !2889, !2895}
!2901 = !DISubroutineType(types: !2900)
!2902 = !DISubprogram(name: "operator=", linkageName: "_ZN5folly6detail39OptionalStorageNonTriviallyDestructibleINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEaSERKS8_", scope: !234, file: !341, line: 116, type: !2901, scopeLine: 116, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized | DISPFlagDeleted)
!2903 = !DIDerivedType(tag: DW_TAG_rvalue_reference_type, baseType: !234, size: 64)
!2904 = !{null, !2889, !2903}
!2905 = !DISubroutineType(types: !2904)
!2906 = !DISubprogram(name: "OptionalStorageNonTriviallyDestructible", linkageName: "_ZN5folly6detail39OptionalStorageNonTriviallyDestructibleINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC4EOS8_", scope: !234, file: !341, line: 118, type: !2905, scopeLine: 118, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized | DISPFlagDeleted)
!2907 = !{!2899, !2889, !2903}
!2908 = !DISubroutineType(types: !2907)
!2909 = !DISubprogram(name: "operator=", linkageName: "_ZN5folly6detail39OptionalStorageNonTriviallyDestructibleINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEaSEOS8_", scope: !234, file: !341, line: 120, type: !2908, scopeLine: 120, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized | DISPFlagDeleted)
!2910 = !DISubprogram(name: "clear", linkageName: "_ZN5folly6detail39OptionalStorageNonTriviallyDestructibleINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE5clearEv", scope: !234, file: !341, line: 123, type: !2891, scopeLine: 123, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2911 = !{!2887, !2888, !2892, !2893, !2898, !2902, !2906, !2909, !2910}
!2912 = !DIDerivedType(tag: DW_TAG_member, name: "emptyState", scope: !233, file: !341, line: 107, baseType: !460, size: 8)
!2913 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !233, file: !341, line: 108, baseType: !145, size: 256)
!2914 = !{!2912, !2913}
!2915 = !DITemplateTypeParameter(name: "Value", type: !145)
!2916 = !{!2915}
!2917 = !DITemplateTypeParameter(name: "_Iftrue", type: !235)
!2918 = !DITemplateTypeParameter(name: "_Iffalse", type: !234)
!2919 = !{!661, !2917, !2918}
!2920 = !DITemplateValueParameter(type: !428, defaulted: true, value: i1 false)
!2921 = !{!2915, !2920}
!2922 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !2535, line: 21, baseType: !2015)
!2923 = !DIDerivedType(tag: DW_TAG_member, name: "tcpi_state", scope: !241, file: !2530, line: 54, baseType: !2922, size: 8)
!2924 = !DIDerivedType(tag: DW_TAG_member, name: "tcpi_ca_state", scope: !241, file: !2530, line: 55, baseType: !2922, size: 8, offset: 8)
!2925 = !DIDerivedType(tag: DW_TAG_member, name: "tcpi_retransmits", scope: !241, file: !2530, line: 56, baseType: !2922, size: 8, offset: 16)
!2926 = !DIDerivedType(tag: DW_TAG_member, name: "tcpi_probes", scope: !241, file: !2530, line: 57, baseType: !2922, size: 8, offset: 24)
!2927 = !DIDerivedType(tag: DW_TAG_member, name: "tcpi_backoff", scope: !241, file: !2530, line: 58, baseType: !2922, size: 8, offset: 32)
!2928 = !DIDerivedType(tag: DW_TAG_member, name: "tcpi_options", scope: !241, file: !2530, line: 59, baseType: !2922, size: 8, offset: 40)
!2929 = !DIDerivedType(tag: DW_TAG_member, name: "tcpi_snd_wscale", scope: !241, file: !2530, line: 60, baseType: !2922, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 48)
!2930 = !DIDerivedType(tag: DW_TAG_member, name: "tcpi_rcv_wscale", scope: !241, file: !2530, line: 60, baseType: !2922, size: 4, offset: 52, flags: DIFlagBitField, extraData: i64 48)
!2931 = !DIDerivedType(tag: DW_TAG_member, name: "tcpi_delivery_rate_app_limited", scope: !241, file: !2530, line: 61, baseType: !2922, size: 1, offset: 56, flags: DIFlagBitField, extraData: i64 48)
!2932 = !DIDerivedType(tag: DW_TAG_member, name: "tcpi_rto", scope: !241, file: !2530, line: 63, baseType: !2536, size: 32, offset: 64)
!2933 = !DIDerivedType(tag: DW_TAG_member, name: "tcpi_ato", scope: !241, file: !2530, line: 64, baseType: !2536, size: 32, offset: 96)
!2934 = !DIDerivedType(tag: DW_TAG_member, name: "tcpi_snd_mss", scope: !241, file: !2530, line: 65, baseType: !2536, size: 32, offset: 128)
!2935 = !DIDerivedType(tag: DW_TAG_member, name: "tcpi_rcv_mss", scope: !241, file: !2530, line: 66, baseType: !2536, size: 32, offset: 160)
!2936 = !DIDerivedType(tag: DW_TAG_member, name: "tcpi_unacked", scope: !241, file: !2530, line: 68, baseType: !2536, size: 32, offset: 192)
!2937 = !DIDerivedType(tag: DW_TAG_member, name: "tcpi_sacked", scope: !241, file: !2530, line: 69, baseType: !2536, size: 32, offset: 224)
!2938 = !DIDerivedType(tag: DW_TAG_member, name: "tcpi_lost", scope: !241, file: !2530, line: 70, baseType: !2536, size: 32, offset: 256)
!2939 = !DIDerivedType(tag: DW_TAG_member, name: "tcpi_retrans", scope: !241, file: !2530, line: 71, baseType: !2536, size: 32, offset: 288)
!2940 = !DIDerivedType(tag: DW_TAG_member, name: "tcpi_fackets", scope: !241, file: !2530, line: 72, baseType: !2536, size: 32, offset: 320)
!2941 = !DIDerivedType(tag: DW_TAG_member, name: "tcpi_last_data_sent", scope: !241, file: !2530, line: 75, baseType: !2536, size: 32, offset: 352)
!2942 = !DIDerivedType(tag: DW_TAG_member, name: "tcpi_last_ack_sent", scope: !241, file: !2530, line: 76, baseType: !2536, size: 32, offset: 384)
!2943 = !DIDerivedType(tag: DW_TAG_member, name: "tcpi_last_data_recv", scope: !241, file: !2530, line: 77, baseType: !2536, size: 32, offset: 416)
!2944 = !DIDerivedType(tag: DW_TAG_member, name: "tcpi_last_ack_recv", scope: !241, file: !2530, line: 78, baseType: !2536, size: 32, offset: 448)
!2945 = !DIDerivedType(tag: DW_TAG_member, name: "tcpi_pmtu", scope: !241, file: !2530, line: 81, baseType: !2536, size: 32, offset: 480)
!2946 = !DIDerivedType(tag: DW_TAG_member, name: "tcpi_rcv_ssthresh", scope: !241, file: !2530, line: 82, baseType: !2536, size: 32, offset: 512)
!2947 = !DIDerivedType(tag: DW_TAG_member, name: "tcpi_rtt", scope: !241, file: !2530, line: 83, baseType: !2536, size: 32, offset: 544)
!2948 = !DIDerivedType(tag: DW_TAG_member, name: "tcpi_rttvar", scope: !241, file: !2530, line: 84, baseType: !2536, size: 32, offset: 576)
!2949 = !DIDerivedType(tag: DW_TAG_member, name: "tcpi_snd_ssthresh", scope: !241, file: !2530, line: 85, baseType: !2536, size: 32, offset: 608)
!2950 = !DIDerivedType(tag: DW_TAG_member, name: "tcpi_snd_cwnd", scope: !241, file: !2530, line: 86, baseType: !2536, size: 32, offset: 640)
!2951 = !DIDerivedType(tag: DW_TAG_member, name: "tcpi_advmss", scope: !241, file: !2530, line: 87, baseType: !2536, size: 32, offset: 672)
!2952 = !DIDerivedType(tag: DW_TAG_member, name: "tcpi_reordering", scope: !241, file: !2530, line: 88, baseType: !2536, size: 32, offset: 704)
!2953 = !DIDerivedType(tag: DW_TAG_member, name: "tcpi_rcv_rtt", scope: !241, file: !2530, line: 90, baseType: !2536, size: 32, offset: 736)
!2954 = !DIDerivedType(tag: DW_TAG_member, name: "tcpi_rcv_space", scope: !241, file: !2530, line: 91, baseType: !2536, size: 32, offset: 768)
!2955 = !DIDerivedType(tag: DW_TAG_member, name: "tcpi_total_retrans", scope: !241, file: !2530, line: 93, baseType: !2536, size: 32, offset: 800)
!2956 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!2957 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !2535, line: 31, baseType: !2956)
!2958 = !DIDerivedType(tag: DW_TAG_member, name: "tcpi_pacing_rate", scope: !241, file: !2530, line: 95, baseType: !2957, size: 64, offset: 832)
!2959 = !DIDerivedType(tag: DW_TAG_member, name: "tcpi_max_pacing_rate", scope: !241, file: !2530, line: 96, baseType: !2957, size: 64, offset: 896)
!2960 = !DIDerivedType(tag: DW_TAG_member, name: "tcpi_bytes_acked", scope: !241, file: !2530, line: 97, baseType: !2957, size: 64, offset: 960)
!2961 = !DIDerivedType(tag: DW_TAG_member, name: "tcpi_bytes_received", scope: !241, file: !2530, line: 98, baseType: !2957, size: 64, offset: 1024)
!2962 = !DIDerivedType(tag: DW_TAG_member, name: "tcpi_segs_out", scope: !241, file: !2530, line: 99, baseType: !2536, size: 32, offset: 1088)
!2963 = !DIDerivedType(tag: DW_TAG_member, name: "tcpi_segs_in", scope: !241, file: !2530, line: 100, baseType: !2536, size: 32, offset: 1120)
!2964 = !DIDerivedType(tag: DW_TAG_member, name: "tcpi_notsent_bytes", scope: !241, file: !2530, line: 102, baseType: !2536, size: 32, offset: 1152)
!2965 = !DIDerivedType(tag: DW_TAG_member, name: "tcpi_min_rtt", scope: !241, file: !2530, line: 103, baseType: !2536, size: 32, offset: 1184)
!2966 = !DIDerivedType(tag: DW_TAG_member, name: "tcpi_data_segs_in", scope: !241, file: !2530, line: 104, baseType: !2536, size: 32, offset: 1216)
!2967 = !DIDerivedType(tag: DW_TAG_member, name: "tcpi_data_segs_out", scope: !241, file: !2530, line: 105, baseType: !2536, size: 32, offset: 1248)
!2968 = !DIDerivedType(tag: DW_TAG_member, name: "tcpi_delivery_rate", scope: !241, file: !2530, line: 107, baseType: !2957, size: 64, offset: 1280)
!2969 = !DIDerivedType(tag: DW_TAG_member, name: "tcpi_busy_time", scope: !241, file: !2530, line: 109, baseType: !2957, size: 64, offset: 1344)
!2970 = !DIDerivedType(tag: DW_TAG_member, name: "tcpi_rwnd_limited", scope: !241, file: !2530, line: 110, baseType: !2957, size: 64, offset: 1408)
!2971 = !DIDerivedType(tag: DW_TAG_member, name: "tcpi_sndbuf_limited", scope: !241, file: !2530, line: 111, baseType: !2957, size: 64, offset: 1472)
!2972 = !DIDerivedType(tag: DW_TAG_member, name: "tcpi_delivered", scope: !241, file: !2530, line: 113, baseType: !2536, size: 32, offset: 1536)
!2973 = !DIDerivedType(tag: DW_TAG_member, name: "tcpi_delivered_ce", scope: !241, file: !2530, line: 114, baseType: !2536, size: 32, offset: 1568)
!2974 = !DIDerivedType(tag: DW_TAG_member, name: "tcpi_bytes_sent", scope: !241, file: !2530, line: 116, baseType: !2957, size: 64, offset: 1600)
!2975 = !DIDerivedType(tag: DW_TAG_member, name: "tcpi_bytes_retrans", scope: !241, file: !2530, line: 117, baseType: !2957, size: 64, offset: 1664)
!2976 = !DIDerivedType(tag: DW_TAG_member, name: "tcpi_dsack_dups", scope: !241, file: !2530, line: 118, baseType: !2536, size: 32, offset: 1728)
!2977 = !DIDerivedType(tag: DW_TAG_member, name: "tcpi_reord_seen", scope: !241, file: !2530, line: 119, baseType: !2536, size: 32, offset: 1760)
!2978 = !DIDerivedType(tag: DW_TAG_member, name: "tcpi_rcv_ooopack", scope: !241, file: !2530, line: 121, baseType: !2536, size: 32, offset: 1792)
!2979 = !DIDerivedType(tag: DW_TAG_member, name: "tcpi_snd_wnd", scope: !241, file: !2530, line: 123, baseType: !2536, size: 32, offset: 1824)
!2980 = !{!2923, !2924, !2925, !2926, !2927, !2928, !2929, !2930, !2931, !2932, !2933, !2934, !2935, !2936, !2937, !2938, !2939, !2940, !2941, !2942, !2943, !2944, !2945, !2946, !2947, !2948, !2949, !2950, !2951, !2952, !2953, !2954, !2955, !2958, !2959, !2960, !2961, !2962, !2963, !2964, !2965, !2966, !2967, !2968, !2969, !2970, !2971, !2972, !2973, !2974, !2975, !2976, !2977, !2978, !2979}
!2981 = !{!21}
!2982 = !DISubroutineType(types: !2981)
!2983 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "__vtbl_ptr_type", baseType: !2982, size: 64)
!2984 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2983, size: 64)
!2985 = !DIDerivedType(tag: DW_TAG_member, name: "_vptr$IoctlDispatcher", scope: !244, file: !244, baseType: !2984, size: 64, flags: DIFlagArtificial)
!2986 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !243, size: 64)
!2987 = !{!2986}
!2988 = !DISubroutineType(types: !2987)
!2989 = !DISubprogram(name: "getDefaultInstance", linkageName: "_ZN5folly7TcpInfo15IoctlDispatcher18getDefaultInstanceEv", scope: !243, file: !244, line: 123, type: !2988, scopeLine: 123, flags: DIFlagPublic | DIFlagPrototyped | DIFlagStaticMember, spFlags: DISPFlagOptimized)
!2990 = !{null, !245}
!2991 = !DISubroutineType(types: !2990)
!2992 = !DISubprogram(name: "IoctlDispatcher", linkageName: "_ZN5folly7TcpInfo15IoctlDispatcherC4Ev", scope: !243, file: !244, line: 127, type: !2991, scopeLine: 127, flags: DIFlagProtected | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2993 = !DISubprogram(name: "~IoctlDispatcher", linkageName: "_ZN5folly7TcpInfo15IoctlDispatcherD4Ev", scope: !243, file: !244, line: 128, type: !2991, scopeLine: 128, containingType: !243, virtualIndex: 0, flags: DIFlagProtected | DIFlagPrototyped, spFlags: DISPFlagVirtual | DISPFlagOptimized)
!2994 = !{!2985, !2989, !249, !2992, !2993}
!2995 = distinct !{!2995, i1 true, !"_ZNK5folly7TcpInfo19getFieldAsOptUInt64IyEENS_8OptionalImEEMNS_6detail8tcp_infoET_"}
!2996 = distinct !{!2996, !2995, !"_ZNK5folly7TcpInfo19getFieldAsOptUInt64IyEENS_8OptionalImEEMNS_6detail8tcp_infoET_: argument 0"}
!2997 = !{!2996}
!2998 = distinct !{!2998, i1 true, !"_ZNK5folly7TcpInfo19getFieldAsOptUInt64IyEENS_8OptionalImEEMNS_6detail8tcp_infoET_"}
!2999 = distinct !{!2999, !2998, !"_ZNK5folly7TcpInfo19getFieldAsOptUInt64IyEENS_8OptionalImEEMNS_6detail8tcp_infoET_: argument 0"}
!3000 = !{!2999}
!3001 = distinct !{!3001, i1 true, !"_ZNK5folly7TcpInfo19getFieldAsOptUInt64IyEENS_8OptionalImEEMNS_6detail8tcp_infoET_"}
!3002 = distinct !{!3002, !3001, !"_ZNK5folly7TcpInfo19getFieldAsOptUInt64IyEENS_8OptionalImEEMNS_6detail8tcp_infoET_: argument 0"}
!3003 = !{!3002}
!3004 = distinct !{!3004, i1 true, !"_ZNK5folly7TcpInfo19getFieldAsOptUInt64IjEENS_8OptionalImEEMNS_6detail8tcp_infoET_"}
!3005 = distinct !{!3005, !3004, !"_ZNK5folly7TcpInfo19getFieldAsOptUInt64IjEENS_8OptionalImEEMNS_6detail8tcp_infoET_: argument 0"}
!3006 = !{!3005}
!3007 = distinct !{!3007, i1 true, !"_ZNK5folly7TcpInfo19getFieldAsOptUInt64IyEENS_8OptionalImEEMNS_6detail8tcp_infoET_"}
!3008 = distinct !{!3008, !3007, !"_ZNK5folly7TcpInfo19getFieldAsOptUInt64IyEENS_8OptionalImEEMNS_6detail8tcp_infoET_: argument 0"}
!3009 = !{!3008}
!3010 = distinct !{!3010, i1 true, !"_ZNK5folly7TcpInfo19getFieldAsOptUInt64IjEENS_8OptionalImEEMNS_6detail8tcp_infoET_"}
!3011 = distinct !{!3011, !3010, !"_ZNK5folly7TcpInfo19getFieldAsOptUInt64IjEENS_8OptionalImEEMNS_6detail8tcp_infoET_: argument 0"}
!3012 = !{!3011}
!3013 = distinct !{!3013, i1 true, !"_ZNK5folly7TcpInfo19getFieldAsOptUInt64IjEENS_8OptionalImEEMNS_6detail8tcp_infoET_"}
!3014 = distinct !{!3014, !3013, !"_ZNK5folly7TcpInfo19getFieldAsOptUInt64IjEENS_8OptionalImEEMNS_6detail8tcp_infoET_: argument 0"}
!3015 = !{!3014}
!3016 = distinct !{!3016, i1 true, !"_ZNK5folly7TcpInfo19getFieldAsOptUInt64IjEENS_8OptionalImEEMNS_6detail8tcp_infoET_"}
!3017 = distinct !{!3017, !3016, !"_ZNK5folly7TcpInfo19getFieldAsOptUInt64IjEENS_8OptionalImEEMNS_6detail8tcp_infoET_: argument 0"}
!3018 = !{!3017}
!3019 = distinct !{!3019, i1 true, !"_ZNK5folly7TcpInfo19getFieldAsOptUInt64IjEENS_8OptionalImEEMNS_6detail8tcp_infoET_"}
!3020 = distinct !{!3020, !3019, !"_ZNK5folly7TcpInfo19getFieldAsOptUInt64IjEENS_8OptionalImEEMNS_6detail8tcp_infoET_: argument 0"}
!3021 = !{!3020}
!3022 = distinct !{!3022, i1 true, !"_ZNK5folly7TcpInfo19getFieldAsOptUInt64IjEENS_8OptionalImEEMNS_6detail8tcp_infoET_"}
!3023 = distinct !{!3023, !3022, !"_ZNK5folly7TcpInfo19getFieldAsOptUInt64IjEENS_8OptionalImEEMNS_6detail8tcp_infoET_: argument 0"}
!3024 = !{!3023}
!3025 = distinct !{!3025, i1 true, !"_ZNK5folly7TcpInfo19getFieldAsOptUInt64IjEENS_8OptionalImEEMNS_6detail8tcp_infoET_"}
!3026 = distinct !{!3026, !3025, !"_ZNK5folly7TcpInfo19getFieldAsOptUInt64IjEENS_8OptionalImEEMNS_6detail8tcp_infoET_: argument 0"}
!3027 = !{!3026}
!3028 = distinct !{!3028, i1 true, !"_ZNK5folly7TcpInfo19getFieldAsOptUInt64IjEENS_8OptionalImEEMNS_6detail8tcp_infoET_"}
!3029 = distinct !{!3029, !3028, !"_ZNK5folly7TcpInfo19getFieldAsOptUInt64IjEENS_8OptionalImEEMNS_6detail8tcp_infoET_: argument 0"}
!3030 = !{!3029}
!3031 = distinct !{!3031, i1 true, !"_ZNK5folly7TcpInfo19getFieldAsOptUInt64IjEENS_8OptionalImEEMNS_6detail8tcp_infoET_"}
!3032 = distinct !{!3032, !3031, !"_ZNK5folly7TcpInfo19getFieldAsOptUInt64IjEENS_8OptionalImEEMNS_6detail8tcp_infoET_: argument 0"}
!3033 = !{!3032}
!3034 = distinct !{!3034, i1 true, !"_ZNK5folly7TcpInfo19getFieldAsOptUInt64IjEENS_8OptionalImEEMNS_6detail8tcp_infoET_"}
!3035 = distinct !{!3035, !3034, !"_ZNK5folly7TcpInfo19getFieldAsOptUInt64IjEENS_8OptionalImEEMNS_6detail8tcp_infoET_: argument 0"}
!3036 = !{!3035}
!3037 = distinct !{!3037, i1 true, !"_ZNK5folly7TcpInfo13cwndInPacketsEv"}
!3038 = distinct !{!3038, !3037, !"_ZNK5folly7TcpInfo13cwndInPacketsEv: argument 0"}
!3039 = distinct !{!3039, i1 true, !"_ZNK5folly7TcpInfo19getFieldAsOptUInt64IjEENS_8OptionalImEEMNS_6detail8tcp_infoET_"}
!3040 = distinct !{!3040, !3039, !"_ZNK5folly7TcpInfo19getFieldAsOptUInt64IjEENS_8OptionalImEEMNS_6detail8tcp_infoET_: argument 0"}
!3041 = distinct !{!3041, i1 true, !"_ZNK5folly7TcpInfo3mssEv"}
!3042 = distinct !{!3042, !3041, !"_ZNK5folly7TcpInfo3mssEv: argument 0:thread"}
!3043 = !{!3040, !3038}
!3044 = !{!3042}
!3045 = distinct !{!3045, i1 true, !"_ZNK5folly7TcpInfo19getFieldAsOptUInt64IjEENS_8OptionalImEEMNS_6detail8tcp_infoET_"}
!3046 = distinct !{!3046, !3045, !"_ZNK5folly7TcpInfo19getFieldAsOptUInt64IjEENS_8OptionalImEEMNS_6detail8tcp_infoET_: argument 0"}
!3047 = !{!3046}
!3048 = distinct !{!3048, i1 true, !"_ZNK5folly7TcpInfo26deliveryRateBytesPerSecondEv"}
!3049 = distinct !{!3049, !3048, !"_ZNK5folly7TcpInfo26deliveryRateBytesPerSecondEv: argument 0"}
!3050 = distinct !{!3050, i1 true, !"_ZNK5folly7TcpInfo19getFieldAsOptUInt64IyEENS_8OptionalImEEMNS_6detail8tcp_infoET_"}
!3051 = distinct !{!3051, !3050, !"_ZNK5folly7TcpInfo19getFieldAsOptUInt64IyEENS_8OptionalImEEMNS_6detail8tcp_infoET_: argument 0"}
!3052 = distinct !{!3052, i1 true, !"_ZN5folly7TcpInfo29bytesPerSecondToBitsPerSecondERKNS_8OptionalImEE"}
!3053 = distinct !{!3053, !3052, !"_ZN5folly7TcpInfo29bytesPerSecondToBitsPerSecondERKNS_8OptionalImEE: argument 0"}
!3054 = !{!3051, !3049}
!3055 = !{!3053}
!3056 = distinct !{!3056, i1 true, !"_ZNK5folly7TcpInfo19getFieldAsOptUInt64IyEENS_8OptionalImEEMNS_6detail8tcp_infoET_"}
!3057 = distinct !{!3057, !3056, !"_ZNK5folly7TcpInfo19getFieldAsOptUInt64IyEENS_8OptionalImEEMNS_6detail8tcp_infoET_: argument 0"}
!3058 = !{!3057}
!3059 = distinct !{!3059, i1 true, !"_ZNK5folly7TcpInfo26deliveryRateBytesPerSecondEv"}
!3060 = distinct !{!3060, !3059, !"_ZNK5folly7TcpInfo26deliveryRateBytesPerSecondEv: argument 0"}
!3061 = distinct !{!3061, i1 true, !"_ZNK5folly7TcpInfo19getFieldAsOptUInt64IyEENS_8OptionalImEEMNS_6detail8tcp_infoET_"}
!3062 = distinct !{!3062, !3061, !"_ZNK5folly7TcpInfo19getFieldAsOptUInt64IyEENS_8OptionalImEEMNS_6detail8tcp_infoET_: argument 0"}
!3063 = !{!3062, !3060}
!3064 = !{!69, !69, i64 0}
!3065 = !{!"_ZTSN5folly6detail36OptionalStorageTriviallyDestructibleIbEE", !10, i64 0, !69, i64 1}
!3066 = !{!"_ZTSN5folly6detail15OptionalStorageIbEE", !3065, i64 0}
!3067 = !{!3066, !69, i64 1}
!3068 = !{!3065, !69, i64 1}
!3069 = distinct !{!3069, i1 true, !"_ZNK5folly7TcpInfo10ccNameEnumEv"}
!3070 = distinct !{!3070, !3069, !"_ZNK5folly7TcpInfo10ccNameEnumEv: argument 0"}
!3071 = !{!3070}
!3072 = !{!"_ZTSN5folly6detail36OptionalStorageTriviallyDestructibleINS_5RangeIPKcEEEE", !10, i64 0, !69, i64 16}
!3073 = !{!3072, !69, i64 16}
!3074 = !{!"p1 _ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !56, i64 0}
!3075 = !{!"_ZTSN6google13CheckOpStringE", !3074, i64 0}
!3076 = !{!3075, !3074, i64 0}
!3077 = !{!58, !58, i64 0}
!3078 = !{i64 0, i64 8, !3077, i64 8, i64 8, !3077}
!3079 = !{!"_ZTSN5folly6detail15OptionalStorageINS_5RangeIPKcEEEE", !3072, i64 0}
!3080 = !{!3079, !69, i64 16}
!3081 = distinct !{!3081, i1 true, !"_ZNK5folly7TcpInfo19bbrBwBytesPerSecondEv"}
!3082 = distinct !{!3082, !3081, !"_ZNK5folly7TcpInfo19bbrBwBytesPerSecondEv: argument 0"}
!3083 = distinct !{!3083, i1 true, !"_ZNK5folly7TcpInfo19getFieldAsOptUInt64IjEENS_8OptionalImEEMNS_6detail12tcp_bbr_infoET_"}
!3084 = distinct !{!3084, !3083, !"_ZNK5folly7TcpInfo19getFieldAsOptUInt64IjEENS_8OptionalImEEMNS_6detail12tcp_bbr_infoET_: argument 0"}
!3085 = distinct !{!3085, i1 true, !"_ZNK5folly7TcpInfo19getFieldAsOptUInt64IjEENS_8OptionalImEEMNS_6detail12tcp_bbr_infoET_"}
!3086 = distinct !{!3086, !3085, !"_ZNK5folly7TcpInfo19getFieldAsOptUInt64IjEENS_8OptionalImEEMNS_6detail12tcp_bbr_infoET_: argument 0"}
!3087 = distinct !{!3087, i1 true, !"_ZNK5folly7TcpInfo10ccNameEnumEv"}
!3088 = distinct !{!3088, !3087, !"_ZNK5folly7TcpInfo10ccNameEnumEv: argument 0"}
!3089 = distinct !{!3089, i1 true, !"_ZN5folly7TcpInfo29bytesPerSecondToBitsPerSecondERKNS_8OptionalImEE"}
!3090 = distinct !{!3090, !3089, !"_ZN5folly7TcpInfo29bytesPerSecondToBitsPerSecondERKNS_8OptionalImEE: argument 0"}
!3091 = !{!3084, !3082}
!3092 = !{!3088, !3086, !3082}
!3093 = !{!3082}
!3094 = !{!3090}
!3095 = distinct !{!3095, i1 true, !"_ZNK5folly7TcpInfo19getFieldAsOptUInt64IjEENS_8OptionalImEEMNS_6detail12tcp_bbr_infoET_"}
!3096 = distinct !{!3096, !3095, !"_ZNK5folly7TcpInfo19getFieldAsOptUInt64IjEENS_8OptionalImEEMNS_6detail12tcp_bbr_infoET_: argument 0"}
!3097 = distinct !{!3097, i1 true, !"_ZNK5folly7TcpInfo19getFieldAsOptUInt64IjEENS_8OptionalImEEMNS_6detail12tcp_bbr_infoET_"}
!3098 = distinct !{!3098, !3097, !"_ZNK5folly7TcpInfo19getFieldAsOptUInt64IjEENS_8OptionalImEEMNS_6detail12tcp_bbr_infoET_: argument 0"}
!3099 = distinct !{!3099, i1 true, !"_ZNK5folly7TcpInfo10ccNameEnumEv"}
!3100 = distinct !{!3100, !3099, !"_ZNK5folly7TcpInfo10ccNameEnumEv: argument 0"}
!3101 = distinct !{!3101, i1 true, !"_ZNK5folly7TcpInfo19getFieldAsOptUInt64IjNS_6detail12tcp_bbr_infoEEENS_8OptionalImEERKT0_MS6_T_"}
!3102 = distinct !{!3102, !3101, !"_ZNK5folly7TcpInfo19getFieldAsOptUInt64IjNS_6detail12tcp_bbr_infoEEENS_8OptionalImEERKT0_MS6_T_: argument 0"}
!3103 = !{!3096}
!3104 = !{!3100, !3098}
!3105 = !{!3102, !3098}
!3106 = distinct !{!3106, i1 true, !"_ZNK5folly7TcpInfo19getFieldAsOptUInt64IjEENS_8OptionalImEEMNS_6detail12tcp_bbr_infoET_"}
!3107 = distinct !{!3107, !3106, !"_ZNK5folly7TcpInfo19getFieldAsOptUInt64IjEENS_8OptionalImEEMNS_6detail12tcp_bbr_infoET_: argument 0"}
!3108 = distinct !{!3108, i1 true, !"_ZNK5folly7TcpInfo10ccNameEnumEv"}
!3109 = distinct !{!3109, !3108, !"_ZNK5folly7TcpInfo10ccNameEnumEv: argument 0"}
!3110 = distinct !{!3110, i1 true, !"_ZNK5folly7TcpInfo19getFieldAsOptUInt64IjNS_6detail12tcp_bbr_infoEEENS_8OptionalImEERKT0_MS6_T_"}
!3111 = distinct !{!3111, !3110, !"_ZNK5folly7TcpInfo19getFieldAsOptUInt64IjNS_6detail12tcp_bbr_infoEEENS_8OptionalImEERKT0_MS6_T_: argument 0"}
!3112 = !{!3107}
!3113 = !{!3109, !3107}
!3114 = !{!3111, !3107}
!3115 = !{!"_ZTSN5folly6detail15OptionalStorageINSt6chrono8durationIlSt5ratioILl1ELl1000000EEEEEE", !104, i64 0}
!3116 = !{!3115, !69, i64 8}
!3117 = distinct !{!3117, i1 true, !"_ZNK5folly7TcpInfo19getFieldAsOptUInt64IjEENS_8OptionalImEEMNS_6detail12tcp_bbr_infoET_"}
!3118 = distinct !{!3118, !3117, !"_ZNK5folly7TcpInfo19getFieldAsOptUInt64IjEENS_8OptionalImEEMNS_6detail12tcp_bbr_infoET_: argument 0"}
!3119 = distinct !{!3119, i1 true, !"_ZNK5folly7TcpInfo10ccNameEnumEv"}
!3120 = distinct !{!3120, !3119, !"_ZNK5folly7TcpInfo10ccNameEnumEv: argument 0"}
!3121 = distinct !{!3121, i1 true, !"_ZNK5folly7TcpInfo19getFieldAsOptUInt64IjNS_6detail12tcp_bbr_infoEEENS_8OptionalImEERKT0_MS6_T_"}
!3122 = distinct !{!3122, !3121, !"_ZNK5folly7TcpInfo19getFieldAsOptUInt64IjNS_6detail12tcp_bbr_infoEEENS_8OptionalImEERKT0_MS6_T_: argument 0"}
!3123 = !{!3118}
!3124 = !{!3120, !3118}
!3125 = !{!3122}
!3126 = !{!3122, !3118}
!3127 = distinct !{!3127, i1 true, !"_ZNK5folly7TcpInfo19getFieldAsOptUInt64IjEENS_8OptionalImEEMNS_6detail12tcp_bbr_infoET_"}
!3128 = distinct !{!3128, !3127, !"_ZNK5folly7TcpInfo19getFieldAsOptUInt64IjEENS_8OptionalImEEMNS_6detail12tcp_bbr_infoET_: argument 0"}
!3129 = distinct !{!3129, i1 true, !"_ZNK5folly7TcpInfo10ccNameEnumEv"}
!3130 = distinct !{!3130, !3129, !"_ZNK5folly7TcpInfo10ccNameEnumEv: argument 0"}
!3131 = distinct !{!3131, i1 true, !"_ZNK5folly7TcpInfo19getFieldAsOptUInt64IjNS_6detail12tcp_bbr_infoEEENS_8OptionalImEERKT0_MS6_T_"}
!3132 = distinct !{!3132, !3131, !"_ZNK5folly7TcpInfo19getFieldAsOptUInt64IjNS_6detail12tcp_bbr_infoEEENS_8OptionalImEERKT0_MS6_T_: argument 0"}
!3133 = !{!3128}
!3134 = !{!3130, !3128}
!3135 = !{!3132}
!3136 = !{!3132, !3128}
end_hunk_1
