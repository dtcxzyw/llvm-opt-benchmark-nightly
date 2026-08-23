Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/velox/original/decimal?download=true
inline.NumInlined: 1474
inline.NumDeleted: 558
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 10
begin_hunk_0_@_ZN5arrow10Decimal256C2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:bb.a
.thread8:                                         ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24, !noalias !267
  %i.g = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.g, ptr noundef nonnull align 8 dereferenceable(32) %2, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24, !noalias !267
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.g, i64 32, i1 false)
  br label %_ZN5arrow6ResultINS_10Decimal256EED2Ev.exit

_ZN5arrow10Decimal25610FromStringERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %bb.b, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24, !noalias !267
  %.pr = load ptr, ptr %5, align 8, !tbaa !26
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24, !noalias !267
  %i.h = icmp eq ptr %.pr, null
  br i1 %i.h, label %.thread, label %bb.d, !prof !31

.thread:                                          ; preds = %_ZN5arrow10Decimal25610FromStringERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.i, i64 32, i1 false)
  br label %_ZN5arrow6ResultINS_10Decimal256EED2Ev.exit

bb.d:                                             ; preds = %_ZN5arrow10Decimal25610FromStringERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  invoke void @_ZN5arrow8internal17InvalidValueOrDieERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(40) %5)
          to label %bb.e unwind label %bb.g

bb.e:                                             ; preds = %bb.d
  %.pr5.pr = load ptr, ptr %5, align 8, !tbaa !26
  %i.j = getelementptr inbounds nuw i8, ptr %5, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.j, i64 32, i1 false)
  %.not.i.i = icmp eq ptr %.pr5.pr, null
  br i1 %.not.i.i, label %_ZN5arrow6ResultINS_10Decimal256EED2Ev.exit, label %bb.f, !prof !31

bb.f:                                             ; preds = %bb.e
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(40) %5)
  br label %_ZN5arrow6ResultINS_10Decimal256EED2Ev.exit

_ZN5arrow6ResultINS_10Decimal256EED2Ev.exit:      ; preds = %.thread8, %.thread, %bb.e, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  ret void

bb.g:                                             ; preds = %bb.d
  %i.k = landingpad { ptr, i32 }
          cleanup
  %i.l = load ptr, ptr %5, align 8, !tbaa !26
  %.not.i.i3 = icmp eq ptr %i.l, null
  br i1 %.not.i.i3, label %_ZN5arrow6ResultINS_10Decimal256EED2Ev.exit4, label %bb.h, !prof !30

bb.h:                                             ; preds = %bb.g
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(40) %5)
  br label %_ZN5arrow6ResultINS_10Decimal256EED2Ev.exit4

_ZN5arrow6ResultINS_10Decimal256EED2Ev.exit4:     ; preds = %bb.g, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  resume { ptr, i32 } %i.k
}

; Function Attrs: mustprogress uwtable
define void @_ZN5arrow10Decimal25610FromStringERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind noalias writable sret(%"class.arrow::Result.19") align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.arrow::Decimal256", align 8 ; 5 uses
  %3 = alloca %"class.arrow::Status", align 8     ; 7 uses
  %4 = alloca %"class.arrow::Status", align 8     ; 4 uses
  %i.a = load ptr, ptr %1, align 8, !tbaa !10
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load i64, ptr %i.b, align 8, !tbaa !19
  tail call void @llvm.experimental.noalias.scope.decl(metadata !274)
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24, !noalias !274
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %2, i8 0, i64 32, i1 false), !noalias !274
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24, !noalias !274
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24, !noalias !274
  call void @_ZN5arrow10Decimal25610FromStringESt17basic_string_viewIcSt11char_traitsIcEEPS0_PiS6_(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %4, i64 %i.c, ptr %i.a, ptr noundef nonnull %2, ptr noundef null, ptr noundef null), !noalias !274
  call void @llvm.experimental.noalias.scope.decl(metadata !277)
  %i.d = load ptr, ptr %4, align 8, !tbaa !26, !noalias !280 ; 2 uses
  store ptr %i.d, ptr %3, align 8, !tbaa !26, !alias.scope !277, !noalias !274
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24, !noalias !274
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %_ZN5arrow6StatusD2Ev.exit6.i, label %bb.b, !prof !30

bb.b:                                             ; preds = %bb.a
  call void @_ZN5arrow6ResultINS_10Decimal256EEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(8) %3) #24
  %i.f = load ptr, ptr %3, align 8, !tbaa !26, !noalias !274
  %.not.i3.i = icmp eq ptr %i.f, null
  br i1 %.not.i3.i, label %_ZN5arrow6StatusD2Ev.exit4.i, label %bb.c, !prof !30

bb.c:                                             ; preds = %bb.b
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %3)
  br label %_ZN5arrow6StatusD2Ev.exit4.i

_ZN5arrow6StatusD2Ev.exit4.i:                     ; preds = %bb.c, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24, !noalias !274
  br label %_ZN5arrow10Decimal25610FromStringESt17basic_string_viewIcSt11char_traitsIcEE.exit

_ZN5arrow6StatusD2Ev.exit6.i:                     ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24, !noalias !274
  store ptr null, ptr %0, align 8, !tbaa !26, !alias.scope !274
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.g, ptr noundef nonnull align 8 dereferenceable(32) %2, i64 32, i1 false)
  br label %_ZN5arrow10Decimal25610FromStringESt17basic_string_viewIcSt11char_traitsIcEE.exit

_ZN5arrow10Decimal25610FromStringESt17basic_string_viewIcSt11char_traitsIcEE.exit: ; preds = %_ZN5arrow6StatusD2Ev.exit4.i, %_ZN5arrow6StatusD2Ev.exit6.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24, !noalias !274
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZNK5arrow10Decimal25615ToIntegerStringB5cxx11Ev(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.arrow::Decimal256", align 8 ; 6 uses
  %3 = alloca %"struct.std::array.18", align 8    ; 5 uses
  %4 = alloca %"struct.std::array.18", align 8    ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  store ptr %i.a, ptr %0, align 8, !tbaa !60
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store i64 0, ptr %i.b, align 8, !tbaa !19
  store i8 0, ptr %i.a, align 8, !tbaa !49
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.d = load i64, ptr %i.c, align 8, !tbaa !132
  %i.e = icmp slt i64 %i.d, 0
  br i1 %i.e, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  store i8 45, ptr %i.a, align 8, !tbaa !49
  store i64 1, ptr %i.b, align 8, !tbaa !19
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 17
  store i8 0, ptr %i.f, align 1, !tbaa !49
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false)
  %i.g = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZN5arrow15BasicDecimal2566NegateEv(ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.c unwind label %bb.e       ; 0 uses

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %2, i64 32, i1 false)
  invoke fastcc void @_ZN5arrowL31AppendLittleEndianArrayToStringILm4EEEvRKSt5arrayImXT_EEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull %0)
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  br label %bb.k

bb.e:                                             ; preds = %bb.b
  %i.h = landingpad { ptr, i32 }
          cleanup
  br label %bb.g

bb.f:                                             ; preds = %bb.c
  %i.i = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.pn = phi { ptr, i32 } [ %i.i, %bb.f ], [ %i.h, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  br label %bb.l

bb.h:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false)
  invoke fastcc void @_ZN5arrowL31AppendLittleEndianArrayToStringILm4EEEvRKSt5arrayImXT_EEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull %0)
          to label %bb.i unwind label %bb.j

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  br label %bb.k

bb.j:                                             ; preds = %bb.h
  %i.j = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  br label %bb.l

bb.k:                                             ; preds = %bb.d, %bb.i
  ret void

bb.l:                                             ; preds = %bb.j, %bb.g
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.g ], [ %i.j, %bb.j ]
  %i.k = load ptr, ptr %0, align 8, !tbaa !10     ; 2 uses
  %i.l = icmp eq ptr %i.k, %i.a
  br i1 %i.l, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7: ; preds = %bb.l
  %i.m = load i64, ptr %i.a, align 8, !tbaa !49
  %i.n = add i64 %i.m, 1
  call void @_ZdlPvm(ptr noundef %i.k, i64 noundef %i.n) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7
  resume { ptr, i32 } %.pn.pn
}

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZN5arrow15BasicDecimal2566NegateEv(ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN5arrowL31AppendLittleEndianArrayToStringILm4EEEvRKSt5arrayImXT_EEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1) unnamed_addr #0 personality ptr @__gxx_personality_v0 {
.lr.ph.i.preheader.i.i:
  %2 = alloca %"struct.std::array.26", align 1    ; 3 uses
  %3 = alloca %"struct.std::array.26", align 1    ; 3 uses
  %4 = alloca %"struct.std::array.18", align 8    ; 6 uses
  %5 = alloca %"struct.std::array.53", align 4    ; 5 uses
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.a = ptrtoint ptr %0 to i64
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %.val7.val.i.i.i = load i64, ptr %i.b, align 8, !tbaa !132, !noalias !281
  %.not16.i.i.i = icmp eq i64 %.val7.val.i.i.i, 0
  br i1 %.not16.i.i.i, label %bb.a, label %_ZSt7find_ifISt16reverse_iteratorIPKmEZN5arrowL31AppendLittleEndianArrayToStringILm4EEEvRKSt5arrayImXT_EEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEUlmE_ET_SI_SI_T0_.exit

bb.a:                                             ; preds = %.lr.ph.i.preheader.i.i
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.val6.val.i.i.i = load i64, ptr %i.c, align 8, !tbaa !132, !noalias !281
  %.not17.i.i.i = icmp eq i64 %.val6.val.i.i.i, 0
  br i1 %.not17.i.i.i, label %bb.b, label %_ZSt7find_ifISt16reverse_iteratorIPKmEZN5arrowL31AppendLittleEndianArrayToStringILm4EEEvRKSt5arrayImXT_EEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEUlmE_ET_SI_SI_T0_.exit

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.val5.val.i.i.i = load i64, ptr %i.d, align 8, !tbaa !132, !noalias !281
  %.not18.i.i.i = icmp eq i64 %.val5.val.i.i.i, 0
  br i1 %.not18.i.i.i, label %bb.c, label %_ZSt7find_ifISt16reverse_iteratorIPKmEZN5arrowL31AppendLittleEndianArrayToStringILm4EEEvRKSt5arrayImXT_EEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEUlmE_ET_SI_SI_T0_.exit

bb.c:                                             ; preds = %bb.b
  %.val4.val.i.i.i = load i64, ptr %0, align 8, !tbaa !132, !noalias !281
  %.not19.i.i.i = icmp eq i64 %.val4.val.i.i.i, 0
  br i1 %.not19.i.i.i, label %_ZSt7find_ifISt16reverse_iteratorIPKmEZN5arrowL31AppendLittleEndianArrayToStringILm4EEEvRKSt5arrayImXT_EEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEUlmE_ET_SI_SI_T0_.exit.thread, label %_ZSt7find_ifISt16reverse_iteratorIPKmEZN5arrowL31AppendLittleEndianArrayToStringILm4EEEvRKSt5arrayImXT_EEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEUlmE_ET_SI_SI_T0_.exit

_ZSt7find_ifISt16reverse_iteratorIPKmEZN5arrowL31AppendLittleEndianArrayToStringILm4EEEvRKSt5arrayImXT_EEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEUlmE_ET_SI_SI_T0_.exit.thread: ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !19   ; 4 uses
  %i.g = add i64 %i.f, 1                          ; 3 uses
  %i.h = load ptr, ptr %1, align 8, !tbaa !10     ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i: ; preds = %_ZSt7find_ifISt16reverse_iteratorIPKmEZN5arrowL31AppendLittleEndianArrayToStringILm4EEEvRKSt5arrayImXT_EEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEUlmE_ET_SI_SI_T0_.exit.thread
  %i.k = icmp ult i64 %i.f, 16
  tail call void @llvm.assume(i1 %i.k)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZSt7find_ifISt16reverse_iteratorIPKmEZN5arrowL31AppendLittleEndianArrayToStringILm4EEEvRKSt5arrayImXT_EEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEUlmE_ET_SI_SI_T0_.exit.thread
  %i.l = load i64, ptr %i.i, align 8, !tbaa !49
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i
  %i.m = phi i64 [ %i.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i ]
  %i.n = icmp ugt i64 %i.g, %i.m
  br i1 %i.n, label %bb.d, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit

bb.d:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %1, i64 noundef %i.f, i64 noundef 0, ptr noundef null, i64 noundef 1)
  %.pre.i = load ptr, ptr %1, align 8, !tbaa !10
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i, %bb.d
  %i.o = phi ptr [ %.pre.i, %bb.d ], [ %i.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i ]
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.f
  store i8 48, ptr %i.p, align 1, !tbaa !49
  store i64 %i.g, ptr %i.e, align 8, !tbaa !19
  %i.q = load ptr, ptr %1, align 8, !tbaa !10
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.g
  store i8 0, ptr %i.r, align 1, !tbaa !49
  br label %bb.o

_ZSt7find_ifISt16reverse_iteratorIPKmEZN5arrowL31AppendLittleEndianArrayToStringILm4EEEvRKSt5arrayImXT_EEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEUlmE_ET_SI_SI_T0_.exit: ; preds = %.lr.ph.i.preheader.i.i, %bb.c, %bb.b, %bb.a
  %.sink.i.i.i = phi ptr [ %6, %.lr.ph.i.preheader.i.i ], [ %i.d, %bb.c ], [ %i.c, %bb.b ], [ %i.b, %bb.a ]
  %i.s = getelementptr inbounds i8, ptr %.sink.i.i.i, i64 -8
  %i.t = ptrtoint ptr %i.s to i64
  %i.u = sub i64 %i.t, %i.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %0, i64 32, i1 false), !tbaa.struct !288
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 %i.u
  br label %.critedge.outer

.critedge.outer:                                  ; preds = %bb.g, %_ZSt7find_ifISt16reverse_iteratorIPKmEZN5arrowL31AppendLittleEndianArrayToStringILm4EEEvRKSt5arrayImXT_EEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEUlmE_ET_SI_SI_T0_.exit
  %.040.ph = phi ptr [ %i.am, %bb.g ], [ %i.v, %_ZSt7find_ifISt16reverse_iteratorIPKmEZN5arrowL31AppendLittleEndianArrayToStringILm4EEEvRKSt5arrayImXT_EEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEUlmE_ET_SI_SI_T0_.exit ] ; 4 uses
  %.039.ph = phi i64 [ %i.aj, %bb.g ], [ 0, %_ZSt7find_ifISt16reverse_iteratorIPKmEZN5arrowL31AppendLittleEndianArrayToStringILm4EEEvRKSt5arrayImXT_EEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEUlmE_ET_SI_SI_T0_.exit ]
  br label %.critedge

.critedge:                                        ; preds = %.critedge.outer, %bb.f
  %.039 = phi i64 [ %i.aj, %bb.f ], [ %.039.ph, %.critedge.outer ] ; 4 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %.critedge
  %.042 = phi i64 [ 0, %.critedge ], [ %i.ae, %bb.e ]
  %.041 = phi ptr [ %.040.ph, %.critedge ], [ %i.ah, %bb.e ] ; 4 uses
  %i.w = load i64, ptr %.041, align 8, !tbaa !132 ; 2 uses
  %i.x = and i64 %i.w, 4294967295
  %i.y = call i64 @llvm.fshl.i64(i64 %.042, i64 %i.w, i64 32) ; 2 uses
  %i.z = udiv i64 %i.y, 1000000000
  %i.aa = urem i64 %i.y, 1000000000
  %i.ab = shl nuw nsw i64 %i.aa, 32
  %i.ac = or disjoint i64 %i.ab, %i.x             ; 2 uses
  %i.ad = udiv i64 %i.ac, 1000000000
  %i.ae = urem i64 %i.ac, 1000000000              ; 3 uses
  %i.af = shl nuw i64 %i.z, 32
  %i.ag = or i64 %i.ad, %i.af
  store i64 %i.ag, ptr %.041, align 8, !tbaa !132
  %i.ah = getelementptr inbounds i8, ptr %.041, i64 -8
  %.not = icmp eq ptr %.041, %4
  br i1 %.not, label %bb.f, label %bb.e, !llvm.loop !289

bb.f:                                             ; preds = %bb.e
  %i.ai = trunc nuw nsw i64 %i.ae to i32          ; 3 uses
  %i.aj = add i64 %.039, 1                        ; 3 uses
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %.039
  store i32 %i.ai, ptr %i.ak, align 4, !tbaa !142
  %i.al = load i64, ptr %.040.ph, align 8, !tbaa !132
  %.not44 = icmp eq i64 %i.al, 0
  br i1 %.not44, label %bb.g, label %.critedge

bb.g:                                             ; preds = %bb.f
  %i.am = getelementptr inbounds i8, ptr %.040.ph, i64 -8
  %.not45 = icmp eq ptr %.040.ph, %4
  br i1 %.not45, label %bb.h, label %.critedge.outer, !llvm.loop !290

bb.h:                                             ; preds = %bb.g
  %.idx = shl nuw nsw i64 %.039, 2
  %i.an = getelementptr inbounds nuw i8, ptr %5, i64 %.idx
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !19 ; 4 uses
  %i.aq = mul i64 %i.aj, 9
  %i.ar = add i64 %i.ap, %i.aq
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEmc(ptr noundef nonnull align 8 dereferenceable(32) %1, i64 noundef %i.ar, i8 noundef signext 48)
  %i.as = load i64, ptr %i.ao, align 8, !tbaa !19 ; 2 uses
  %.not.i = icmp ult i64 %i.ap, %i.as
  br i1 %.not.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE2atEm.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.19, i64 noundef %i.ap, i64 noundef %i.as) #26
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE2atEm.exit: ; preds = %bb.h
  %i.at = load ptr, ptr %1, align 8, !tbaa !10
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 %i.ap ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  %i.av = getelementptr inbounds nuw i8, ptr %3, i64 11 ; 3 uses
  %i.aw = icmp samesign ugt i64 %i.ae, 99
  br i1 %i.aw, label %.lr.ph.i.i, label %._crit_edge.i.i

.lr.ph.i.i:                                       ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE2atEm.exit, %.lr.ph.i.i
  %.0.i = phi ptr [ %i.bf, %.lr.ph.i.i ], [ %i.av, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE2atEm.exit ] ; 2 uses
  %.08.i.i = phi i32 [ %i.bg, %.lr.ph.i.i ], [ %i.ai, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE2atEm.exit ] ; 3 uses
  %i.ax = urem i32 %.08.i.i, 100
  %i.ay = shl nuw nsw i32 %i.ax, 1
  %i.az = zext nneg i32 %i.ay to i64
  %i.ba = getelementptr inbounds nuw i8, ptr @_ZN5arrow8internal6detail11digit_pairsE, i64 %i.az ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 1
  %i.bc = load i8, ptr %i.bb, align 1, !tbaa !49
  %i.bd = getelementptr inbounds i8, ptr %.0.i, i64 -1
  store i8 %i.bc, ptr %i.bd, align 1, !tbaa !49
  %i.be = load i8, ptr %i.ba, align 1, !tbaa !49
  %i.bf = getelementptr inbounds i8, ptr %.0.i, i64 -2 ; 3 uses
  store i8 %i.be, ptr %i.bf, align 1, !tbaa !49
  %i.bg = udiv i32 %.08.i.i, 100                  ; 2 uses
  %i.bh = icmp samesign ugt i32 %.08.i.i, 9999
  br i1 %i.bh, label %.lr.ph.i.i, label %._crit_edge.i.i, !llvm.loop !61

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE2atEm.exit
  %.1.i = phi ptr [ %i.av, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE2atEm.exit ], [ %i.bf, %.lr.ph.i.i ] ; 2 uses
  %.0.lcssa.i.i = phi i32 [ %i.ai, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE2atEm.exit ], [ %i.bg, %.lr.ph.i.i ] ; 3 uses
  %i.bi = icmp samesign ugt i32 %.0.lcssa.i.i, 9
  br i1 %i.bi, label %bb.j, label %bb.k

bb.j:                                             ; preds = %._crit_edge.i.i
  %i.bj = shl nuw nsw i32 %.0.lcssa.i.i, 1
  %i.bk = zext nneg i32 %i.bj to i64
  %i.bl = getelementptr inbounds nuw i8, ptr @_ZN5arrow8internal6detail11digit_pairsE, i64 %i.bk ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 1
  %i.bn = load i8, ptr %i.bm, align 1, !tbaa !49
  %i.bo = getelementptr inbounds i8, ptr %.1.i, i64 -1 ; 2 uses
  store i8 %i.bn, ptr %i.bo, align 1, !tbaa !49
  %i.bp = load i8, ptr %i.bl, align 1, !tbaa !49
  br label %_ZN5arrow8internal25IntToStringFormatterMixinINS_10UInt32TypeEEclIZNS_L31AppendLittleEndianArrayToStringILm4EEEvRKSt5arrayImXT_EEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEUlSt17basic_string_viewIcSD_EE_EEDTclclsr3stdE7declvalIT_EEtlSI_EEEjOSK_.exit

bb.k:                                             ; preds = %._crit_edge.i.i
  %i.bq = trunc nuw nsw i32 %.0.lcssa.i.i to i8
  %i.br = or disjoint i8 %i.bq, 48
  br label %_ZN5arrow8internal25IntToStringFormatterMixinINS_10UInt32TypeEEclIZNS_L31AppendLittleEndianArrayToStringILm4EEEvRKSt5arrayImXT_EEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEUlSt17basic_string_viewIcSD_EE_EEDTclclsr3stdE7declvalIT_EEtlSI_EEEjOSK_.exit

_ZN5arrow8internal25IntToStringFormatterMixinINS_10UInt32TypeEEclIZNS_L31AppendLittleEndianArrayToStringILm4EEEvRKSt5arrayImXT_EEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEUlSt17basic_string_viewIcSD_EE_EEDTclclsr3stdE7declvalIT_EEtlSI_EEEjOSK_.exit: ; preds = %bb.j, %bb.k
  %.2.i = phi ptr [ %i.bo, %bb.j ], [ %.1.i, %bb.k ]
  %.sink.i.i = phi i8 [ %i.bp, %bb.j ], [ %i.br, %bb.k ]
  %i.bs = getelementptr inbounds i8, ptr %.2.i, i64 -1 ; 3 uses
  store i8 %.sink.i.i, ptr %i.bs, align 1, !tbaa !49
  %i.bt = ptrtoint ptr %i.av to i64
  %i.bu = ptrtoint ptr %i.bs to i64
  %i.bv = sub i64 %i.bt, %i.bu                    ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.au, ptr nonnull readonly align 1 %i.bs, i64 %i.bv, i1 false)
  %i.bw = getelementptr inbounds nuw i8, ptr %i.au, i64 %i.bv ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  %.not4686 = icmp eq i64 %.039, 0
  br i1 %.not4686, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN5arrow8internal25IntToStringFormatterMixinINS_10UInt32TypeEEclIZNS_L31AppendLittleEndianArrayToStringILm4EEEvRKSt5arrayImXT_EEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEUlSt17basic_string_viewIcSD_EE_EEDTclclsr3stdE7declvalIT_EEtlSI_EEEjOSK_.exit
  %i.bx = getelementptr inbounds nuw i8, ptr %2, i64 11 ; 3 uses
  %i.by = ptrtoint ptr %i.bx to i64
  br label %bb.l

bb.l:                                             ; preds = %.lr.ph, %_ZN5arrow8internal25IntToStringFormatterMixinINS_10UInt32TypeEEclIZNS_L31AppendLittleEndianArrayToStringILm4EEEvRKSt5arrayImXT_EEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEUlSt17basic_string_viewIcSD_EE0_EEDTclclsr3stdE7declvalIT_EEtlSI_EEEjOSK_.exit
  %.088 = phi ptr [ %i.an, %.lr.ph ], [ %i.bz, %_ZN5arrow8internal25IntToStringFormatterMixinINS_10UInt32TypeEEclIZNS_L31AppendLittleEndianArrayToStringILm4EEEvRKSt5arrayImXT_EEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEUlSt17basic_string_viewIcSD_EE0_EEDTclclsr3stdE7declvalIT_EEtlSI_EEEjOSK_.exit ]
  %.06887 = phi ptr [ %i.bw, %.lr.ph ], [ %i.ca, %_ZN5arrow8internal25IntToStringFormatterMixinINS_10UInt32TypeEEclIZNS_L31AppendLittleEndianArrayToStringILm4EEEvRKSt5arrayImXT_EEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEUlSt17basic_string_viewIcSD_EE0_EEDTclclsr3stdE7declvalIT_EEtlSI_EEEjOSK_.exit ]
  %i.bz = getelementptr inbounds i8, ptr %.088, i64 -4 ; 3 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %.06887, i64 9 ; 3 uses
  %i.cb = load i32, ptr %i.bz, align 4, !tbaa !142 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  %i.cc = icmp ugt i32 %i.cb, 99
  br i1 %i.cc, label %.lr.ph.i.i55, label %._crit_edge.i.i50

.lr.ph.i.i55:                                     ; preds = %bb.l, %.lr.ph.i.i55
  %.0.i56 = phi ptr [ %i.cl, %.lr.ph.i.i55 ], [ %i.bx, %bb.l ] ; 2 uses
  %.08.i.i57 = phi i32 [ %i.cm, %.lr.ph.i.i55 ], [ %i.cb, %bb.l ] ; 3 uses
  %i.cd = urem i32 %.08.i.i57, 100
  %i.ce = shl nuw nsw i32 %i.cd, 1
  %i.cf = zext nneg i32 %i.ce to i64
  %i.cg = getelementptr inbounds nuw i8, ptr @_ZN5arrow8internal6detail11digit_pairsE, i64 %i.cf ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 1
  %i.ci = load i8, ptr %i.ch, align 1, !tbaa !49
  %i.cj = getelementptr inbounds i8, ptr %.0.i56, i64 -1
  store i8 %i.ci, ptr %i.cj, align 1, !tbaa !49
  %i.ck = load i8, ptr %i.cg, align 1, !tbaa !49
  %i.cl = getelementptr inbounds i8, ptr %.0.i56, i64 -2 ; 3 uses
  store i8 %i.ck, ptr %i.cl, align 1, !tbaa !49
  %i.cm = udiv i32 %.08.i.i57, 100                ; 2 uses
  %i.cn = icmp ugt i32 %.08.i.i57, 9999
  br i1 %i.cn, label %.lr.ph.i.i55, label %._crit_edge.i.i50, !llvm.loop !61

._crit_edge.i.i50:                                ; preds = %.lr.ph.i.i55, %bb.l
  %.1.i51 = phi ptr [ %i.bx, %bb.l ], [ %i.cl, %.lr.ph.i.i55 ] ; 2 uses
  %.0.lcssa.i.i52 = phi i32 [ %i.cb, %bb.l ], [ %i.cm, %.lr.ph.i.i55 ] ; 3 uses
  %i.co = icmp samesign ugt i32 %.0.lcssa.i.i52, 9
  br i1 %i.co, label %bb.m, label %bb.n

bb.m:                                             ; preds = %._crit_edge.i.i50
  %i.cp = shl nuw nsw i32 %.0.lcssa.i.i52, 1
  %i.cq = zext nneg i32 %i.cp to i64
  %i.cr = getelementptr inbounds nuw i8, ptr @_ZN5arrow8internal6detail11digit_pairsE, i64 %i.cq ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 1
  %i.ct = load i8, ptr %i.cs, align 1, !tbaa !49
  %i.cu = getelementptr inbounds i8, ptr %.1.i51, i64 -1 ; 2 uses
  store i8 %i.ct, ptr %i.cu, align 1, !tbaa !49
  %i.cv = load i8, ptr %i.cr, align 1, !tbaa !49
  br label %_ZN5arrow8internal25IntToStringFormatterMixinINS_10UInt32TypeEEclIZNS_L31AppendLittleEndianArrayToStringILm4EEEvRKSt5arrayImXT_EEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEUlSt17basic_string_viewIcSD_EE0_EEDTclclsr3stdE7declvalIT_EEtlSI_EEEjOSK_.exit

bb.n:                                             ; preds = %._crit_edge.i.i50
  %i.cw = trunc nuw nsw i32 %.0.lcssa.i.i52 to i8
  %i.cx = or disjoint i8 %i.cw, 48
  br label %_ZN5arrow8internal25IntToStringFormatterMixinINS_10UInt32TypeEEclIZNS_L31AppendLittleEndianArrayToStringILm4EEEvRKSt5arrayImXT_EEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEUlSt17basic_string_viewIcSD_EE0_EEDTclclsr3stdE7declvalIT_EEtlSI_EEEjOSK_.exit

_ZN5arrow8internal25IntToStringFormatterMixinINS_10UInt32TypeEEclIZNS_L31AppendLittleEndianArrayToStringILm4EEEvRKSt5arrayImXT_EEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEUlSt17basic_string_viewIcSD_EE0_EEDTclclsr3stdE7declvalIT_EEtlSI_EEEjOSK_.exit: ; preds = %bb.m, %bb.n
  %.2.i53 = phi ptr [ %i.cu, %bb.m ], [ %.1.i51, %bb.n ]
  %.sink.i.i54 = phi i8 [ %i.cv, %bb.m ], [ %i.cx, %bb.n ]
  %i.cy = getelementptr inbounds i8, ptr %.2.i53, i64 -1 ; 3 uses
  store i8 %.sink.i.i54, ptr %i.cy, align 1, !tbaa !49
  %i.cz = ptrtoint ptr %i.cy to i64
  %i.da = sub i64 %i.by, %i.cz                    ; 2 uses
  %i.db = sub i64 0, %i.da
  %i.dc = getelementptr inbounds i8, ptr %i.ca, i64 %i.db
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.dc, ptr nonnull readonly align 1 %i.cy, i64 %i.da, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  %.not46 = icmp eq ptr %i.bz, %5
  br i1 %.not46, label %._crit_edge, label %bb.l, !llvm.loop !291

._crit_edge:                                      ; preds = %_ZN5arrow8internal25IntToStringFormatterMixinINS_10UInt32TypeEEclIZNS_L31AppendLittleEndianArrayToStringILm4EEEvRKSt5arrayImXT_EEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEUlSt17basic_string_viewIcSD_EE0_EEDTclclsr3stdE7declvalIT_EEtlSI_EEEjOSK_.exit, %_ZN5arrow8internal25IntToStringFormatterMixinINS_10UInt32TypeEEclIZNS_L31AppendLittleEndianArrayToStringILm4EEEvRKSt5arrayImXT_EEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEUlSt17basic_string_viewIcSD_EE_EEDTclclsr3stdE7declvalIT_EEtlSI_EEEjOSK_.exit
  %.068.lcssa = phi ptr [ %i.bw, %_ZN5arrow8internal25IntToStringFormatterMixinINS_10UInt32TypeEEclIZNS_L31AppendLittleEndianArrayToStringILm4EEEvRKSt5arrayImXT_EEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEUlSt17basic_string_viewIcSD_EE_EEDTclclsr3stdE7declvalIT_EEtlSI_EEEjOSK_.exit ], [ %i.ca, %_ZN5arrow8internal25IntToStringFormatterMixinINS_10UInt32TypeEEclIZNS_L31AppendLittleEndianArrayToStringILm4EEEvRKSt5arrayImXT_EEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEUlSt17basic_string_viewIcSD_EE0_EEDTclclsr3stdE7declvalIT_EEtlSI_EEEjOSK_.exit ]
end_hunk_0
