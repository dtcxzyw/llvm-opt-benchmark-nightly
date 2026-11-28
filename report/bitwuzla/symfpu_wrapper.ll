Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/bitwuzla/original/symfpu_wrapper?download=true
inline.NumInlined: 744
inline.NumDeleted: 80
loop-unroll.NumCompletelyUnrolled: 141
loop-unroll.NumUnrolled: 141
begin_hunk_0_@_ZNK4bzla2fp11SymFpuSymBVILb0EE7extractEjj:bb.a

bb.m:                                             ; preds = %bb.h
  %i.ai = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4bzla4NodeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %4) #13
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %.pn = phi { ptr, i32 } [ %i.ai, %bb.m ], [ %i.ah, %bb.l ] ; 2 uses
  %i.aj = load ptr, ptr %7, align 8, !tbaa !30    ; 3 uses
  %.not.i.i.i21 = icmp eq ptr %i.aj, null
  br i1 %.not.i.i.i21, label %.body15, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ak = load ptr, ptr %i.s, align 8, !tbaa !31
  %i.al = ptrtoint ptr %i.ak to i64
  %i.am = ptrtoint ptr %i.aj to i64
  %i.an = sub i64 %i.al, %i.am
  call void @_ZdlPvm(ptr noundef nonnull %i.aj, i64 noundef %i.an) #17
  br label %.body15

.body15:                                          ; preds = %bb.f, %bb.o, %bb.n
  %.pn.pn = phi { ptr, i32 } [ %i.o, %bb.f ], [ %.pn, %bb.o ], [ %.pn, %bb.n ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #13
  call void @_ZNSt6vectorIN4bzla4NodeESaIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %5) #13
  br label %.body

.body:                                            ; preds = %.body25.thread, %.body25, %.body15
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %.body15 ], [ %i.n, %.body25.thread ], [ %i.k, %.body25 ]
  call void @_ZN4bzla4NodeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %6) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #13
  resume { ptr, i32 } %.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define weak_odr noundef zeroext i1 @_ZNK4bzla2fp11SymFpuSymBVILb0EE10check_nodeERKNS_4NodeE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK4bzla4Node4typeEv(ptr noundef nonnull align 8 dereferenceable(8) %1)
  %i.b = tail call noundef zeroext i1 @_ZNK4bzla4Type5is_bvEv(ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  ret i1 %i.b
}

; Function Attrs: mustprogress uwtable
define weak_odr noundef zeroext i1 @_ZNK4bzla2fp11SymFpuSymBVILb0EE15check_bool_nodeERKNS_4NodeE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK4bzla4Node4typeEv(ptr noundef nonnull align 8 dereferenceable(8) %1)
  %i.b = tail call noundef zeroext i1 @_ZNK4bzla4Type7is_boolEv(ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  ret i1 %i.b
}

; Function Attrs: mustprogress uwtable
define noundef nonnull align 8 dereferenceable(8) ptr @_ZN4bzla2fplsERSoRKNS0_8SymFpuBVILb1EEE(ptr noundef nonnull returned align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #13
  call void @_ZNK4bzla9BitVector3strB5cxx11Ej(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %2, ptr noundef nonnull align 8 dereferenceable(24) %1, i32 noundef 2)
  %i.a = load ptr, ptr %2, align 8, !tbaa !38
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.c = load i64, ptr %i.b, align 8, !tbaa !39
  %i.d = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %i.a, i64 noundef %i.c)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit unwind label %bb.b ; 0 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit: ; preds = %bb.a
  %i.e = load ptr, ptr %2, align 8, !tbaa !38     ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
  %i.h = load i64, ptr %i.f, align 8, !tbaa !40
  %i.i = add i64 %i.h, 1
  call void @_ZdlPvm(ptr noundef %i.e, i64 noundef %i.i) #17
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #13
  ret ptr %0

bb.b:                                             ; preds = %bb.a
  %i.j = landingpad { ptr, i32 }
          cleanup
  %i.k = load ptr, ptr %2, align 8, !tbaa !38     ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.m = icmp eq ptr %i.k, %i.l
  br i1 %i.m, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4: ; preds = %bb.b
  %i.n = load i64, ptr %i.l, align 8, !tbaa !40
  %i.o = add i64 %i.n, 1
  call void @_ZdlPvm(ptr noundef %i.k, i64 noundef %i.o) #17
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #13
  resume { ptr, i32 } %i.j
}

; Function Attrs: mustprogress uwtable
define noundef nonnull align 8 dereferenceable(8) ptr @_ZN4bzla2fplsERSoRKNS0_8SymFpuBVILb0EEE(ptr noundef nonnull returned align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #13
  call void @_ZNK4bzla9BitVector3strB5cxx11Ej(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %2, ptr noundef nonnull align 8 dereferenceable(24) %1, i32 noundef 2)
  %i.a = load ptr, ptr %2, align 8, !tbaa !38
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.c = load i64, ptr %i.b, align 8, !tbaa !39
  %i.d = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %i.a, i64 noundef %i.c)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit unwind label %bb.b ; 0 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit: ; preds = %bb.a
  %i.e = load ptr, ptr %2, align 8, !tbaa !38     ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
  %i.h = load i64, ptr %i.f, align 8, !tbaa !40
  %i.i = add i64 %i.h, 1
  call void @_ZdlPvm(ptr noundef %i.e, i64 noundef %i.i) #17
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #13
  ret ptr %0

bb.b:                                             ; preds = %bb.a
  %i.j = landingpad { ptr, i32 }
          cleanup
  %i.k = load ptr, ptr %2, align 8, !tbaa !38     ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.m = icmp eq ptr %i.k, %i.l
  br i1 %i.m, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4: ; preds = %bb.b
  %i.n = load i64, ptr %i.l, align 8, !tbaa !40
  %i.o = add i64 %i.n, 1
  call void @_ZdlPvm(ptr noundef %i.k, i64 noundef %i.o) #17
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #13
  resume { ptr, i32 } %i.j
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef i32 @_ZN4bzla2fp12SymFpuTraits3RNEEv() local_unnamed_addr #7 align 2 {
bb.a:
  ret i32 1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef i32 @_ZN4bzla2fp12SymFpuTraits3RNAEv() local_unnamed_addr #7 align 2 {
bb.a:
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef i32 @_ZN4bzla2fp12SymFpuTraits3RTPEv() local_unnamed_addr #7 align 2 {
bb.a:
  ret i32 3
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef i32 @_ZN4bzla2fp12SymFpuTraits3RTNEv() local_unnamed_addr #7 align 2 {
bb.a:
  ret i32 2
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef i32 @_ZN4bzla2fp12SymFpuTraits3RTZEv() local_unnamed_addr #7 align 2 {
bb.a:
  ret i32 4
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define void @_ZN4bzla2fp12SymFpuTraits12preconditionERKb(ptr nofree noundef nonnull readnone align 1 captures(none) dereferenceable(1) %0) local_unnamed_addr #7 align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define void @_ZN4bzla2fp12SymFpuTraits13postconditionERKb(ptr nofree noundef nonnull readnone align 1 captures(none) dereferenceable(1) %0) local_unnamed_addr #7 align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define void @_ZN4bzla2fp12SymFpuTraits9invariantERKb(ptr nofree noundef nonnull readnone align 1 captures(none) dereferenceable(1) %0) local_unnamed_addr #7 align 2 {
bb.a:
  ret void
}

; Function Attrs: uwtable
define void @_ZN4bzla2fp13SymFpuSymPropC2ERKNS_4NodeE(ptr noundef nonnull align 8 dereferenceable(8) initializes((0, 8)) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.bzla::Node", align 8        ; 7 uses
  %3 = alloca %"class.std::vector.32", align 8    ; 11 uses
  %4 = alloca [3 x %"class.bzla::Node"], align 8  ; 14 uses
  %5 = alloca %"class.bzla::BitVector", align 8   ; 9 uses
  %6 = alloca %"class.bzla::BitVector", align 8   ; 8 uses
  %7 = alloca %"class.std::vector.37", align 8    ; 9 uses
  store ptr null, ptr %0, align 8, !tbaa !22
  %i.a = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNK4bzla4Node4typeEv(ptr noundef nonnull align 8 dereferenceable(8) %1)
          to label %bb.b unwind label %bb.t

bb.b:                                             ; preds = %bb.a
  %i.b = invoke noundef zeroext i1 @_ZNK4bzla4Type7is_boolEv(ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %bb.c unwind label %bb.t

bb.c:                                             ; preds = %bb.b
  br i1 %i.b, label %bb.d, label %bb.aa

bb.d:                                             ; preds = %bb.c
  %.not.i.i = icmp eq ptr @_ZTHN4bzla2fp8SymFpuNM4s_nmE, null
  br i1 %.not.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  invoke void @_ZTHN4bzla2fp8SymFpuNM4s_nmE()
          to label %bb.f unwind label %bb.t

bb.f:                                             ; preds = %bb.d, %bb.e
  %i.c = tail call noundef align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZN4bzla2fp8SymFpuNM4s_nmE)
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !19   ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #13
  invoke void @_ZN4bzla4NodeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %1)
          to label %bb.g unwind label %.thread

bb.g:                                             ; preds = %bb.f
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #13
  invoke void @_ZN4bzla9BitVector7mk_trueEv(ptr dead_on_unwind nonnull writable sret(%"class.bzla::BitVector") align 8 %5)
          to label %bb.h unwind label %.thread68

bb.h:                                             ; preds = %bb.g
  invoke void @_ZN4bzla11NodeManager8mk_valueERKNS_9BitVectorE(ptr dead_on_unwind nonnull writable sret(%"class.bzla::Node") align 8 %i.e, ptr noundef nonnull align 8 dereferenceable(216) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %5)
          to label %bb.i unwind label %.thread74

bb.i:                                             ; preds = %bb.h
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #13
  invoke void @_ZN4bzla9BitVector8mk_falseEv(ptr dead_on_unwind nonnull writable sret(%"class.bzla::BitVector") align 8 %6)
          to label %bb.j unwind label %.thread78

bb.j:                                             ; preds = %bb.i
  invoke void @_ZN4bzla11NodeManager8mk_valueERKNS_9BitVectorE(ptr dead_on_unwind nonnull writable sret(%"class.bzla::Node") align 8 %i.f, ptr noundef nonnull align 8 dereferenceable(216) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %6)
          to label %bb.k unwind label %bb.u

bb.k:                                             ; preds = %bb.j
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false)
  %i.g = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #14
          to label %.noexc43 unwind label %.body44.thread ; 8 uses

.noexc43:                                         ; preds = %bb.k
  store ptr %i.g, ptr %3, align 8, !tbaa !25
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  store ptr %i.h, ptr %i.i, align 8, !tbaa !26
  invoke void @_ZN4bzla4NodeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %i.g, ptr noundef nonnull align 8 dereferenceable(8) %4)
          to label %_ZSt10_ConstructIN4bzla4NodeEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i unwind label %bb.l

_ZSt10_ConstructIN4bzla4NodeEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i: ; preds = %.noexc43
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 2 uses
  invoke void @_ZN4bzla4NodeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %i.j, ptr noundef nonnull align 8 dereferenceable(8) %i.e)
          to label %_ZSt10_ConstructIN4bzla4NodeEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i.1 unwind label %.thread61

_ZSt10_ConstructIN4bzla4NodeEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i.1: ; preds = %_ZSt10_ConstructIN4bzla4NodeEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 2 uses
  invoke void @_ZN4bzla4NodeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %i.k, ptr noundef nonnull align 8 dereferenceable(8) %i.f)
          to label %_ZSt10_ConstructIN4bzla4NodeEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i.2 unwind label %.thread61

_ZSt10_ConstructIN4bzla4NodeEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i.2: ; preds = %_ZSt10_ConstructIN4bzla4NodeEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i.1
  %i.l = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store ptr %i.l, ptr %i.m, align 8, !tbaa !27
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #13
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, i8 0, i64 24, i1 false)
  invoke void @_ZN4bzla11NodeManager7mk_nodeENS_4node4KindERKSt6vectorINS_4NodeESaIS4_EERKS3_ImSaImEE(ptr dead_on_unwind nonnull writable sret(%"class.bzla::Node") align 8 %2, ptr noundef nonnull align 8 dereferenceable(216) %i.d, i8 noundef zeroext 6, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %7)
          to label %bb.p unwind label %bb.v

.thread61:                                        ; preds = %_ZSt10_ConstructIN4bzla4NodeEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i, %_ZSt10_ConstructIN4bzla4NodeEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i.1
  %.016.i.i.i.i.i.lcssa.ph = phi ptr [ %i.k, %_ZSt10_ConstructIN4bzla4NodeEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i.1 ], [ %i.j, %_ZSt10_ConstructIN4bzla4NodeEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i ]
  %lpad.thr_comm = landingpad { ptr, i32 }
          catch ptr null
  %i.n = extractvalue { ptr, i32 } %lpad.thr_comm, 0
  %i.o = call ptr @__cxa_begin_catch(ptr %i.n) #13 ; 0 uses
  br label %.lr.ph.i.i.i.i.i.i.i

bb.l:                                             ; preds = %.noexc43
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          catch ptr null
  %i.p = extractvalue { ptr, i32 } %lpad.thr_comm.split-lp, 0
  %i.q = call ptr @__cxa_begin_catch(ptr %i.p) #13 ; 0 uses
  br label %_ZSt8_DestroyIPN4bzla4NodeEEvT_S3_.exit.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.thread61, %.lr.ph.i.i.i.i.i.i.i
  %.05.i.i.i.i.i.i.i = phi ptr [ %i.r, %.lr.ph.i.i.i.i.i.i.i ], [ %i.g, %.thread61 ] ; 2 uses
  call void @_ZN4bzla4NodeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %.05.i.i.i.i.i.i.i) #13
  %i.r = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.r, %.016.i.i.i.i.i.lcssa.ph
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt8_DestroyIPN4bzla4NodeEEvT_S3_.exit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !0

_ZSt8_DestroyIPN4bzla4NodeEEvT_S3_.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %bb.l
  invoke void @__cxa_rethrow() #15
          to label %bb.o unwind label %bb.m

bb.m:                                             ; preds = %_ZSt8_DestroyIPN4bzla4NodeEEvT_S3_.exit.i.i.i.i.i
  %i.s = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %.body44 unwind label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.t = landingpad { ptr, i32 }
          catch ptr null
  %i.u = extractvalue { ptr, i32 } %i.t, 0
  call void @__clang_call_terminate(ptr %i.u) #16
  unreachable

bb.o:                                             ; preds = %_ZSt8_DestroyIPN4bzla4NodeEEvT_S3_.exit.i.i.i.i.i
  unreachable

.body44.thread:                                   ; preds = %bb.k
  %i.v = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body44:                                          ; preds = %bb.m
  call void @_ZdlPvm(ptr noundef nonnull %i.g, i64 noundef 24) #17
  br label %.body

bb.p:                                             ; preds = %_ZSt10_ConstructIN4bzla4NodeEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i.2
  %i.w = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4bzla4NodeaSEOS0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %bb.q unwind label %bb.w       ; 0 uses

bb.q:                                             ; preds = %bb.p
  call void @_ZN4bzla4NodeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %2) #13
  %i.x = load ptr, ptr %7, align 8, !tbaa !30     ; 3 uses
  %.not.i.i.i37 = icmp eq ptr %i.x, null
  br i1 %.not.i.i.i37, label %_ZNSt6vectorImSaImEED2Ev.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.y = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !31
  %i.aa = ptrtoint ptr %i.z to i64
  %i.ab = ptrtoint ptr %i.x to i64
  %i.ac = sub i64 %i.aa, %i.ab
  call void @_ZdlPvm(ptr noundef nonnull %i.x, i64 noundef %i.ac) #17
  br label %_ZNSt6vectorImSaImEED2Ev.exit

_ZNSt6vectorImSaImEED2Ev.exit:                    ; preds = %bb.q, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #13
  %i.ad = load ptr, ptr %3, align 8, !tbaa !25    ; 3 uses
  %i.ae = load ptr, ptr %i.m, align 8, !tbaa !27  ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.ad, %i.ae
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPN4bzla4NodeES1_EvT_S3_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt6vectorImSaImEED2Ev.exit, %.lr.ph.i.i.i
  %.05.i.i.i = phi ptr [ %i.af, %.lr.ph.i.i.i ], [ %i.ad, %_ZNSt6vectorImSaImEED2Ev.exit ] ; 2 uses
  call void @_ZN4bzla4NodeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %.05.i.i.i) #13
  %i.af = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i38 = icmp eq ptr %i.af, %i.ae
  br i1 %.not.i.i.i38, label %_ZSt8_DestroyIPN4bzla4NodeES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !0

_ZSt8_DestroyIPN4bzla4NodeES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i: ; preds = %.lr.ph.i.i.i
  %.pr.i = load ptr, ptr %3, align 8, !tbaa !25
  br label %_ZSt8_DestroyIPN4bzla4NodeES1_EvT_S3_RSaIT0_E.exit.i

_ZSt8_DestroyIPN4bzla4NodeES1_EvT_S3_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPN4bzla4NodeES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i, %_ZNSt6vectorImSaImEED2Ev.exit
  %i.ag = phi ptr [ %.pr.i, %_ZSt8_DestroyIPN4bzla4NodeES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i ], [ %i.ad, %_ZNSt6vectorImSaImEED2Ev.exit ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.ag, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIN4bzla4NodeESaIS1_EED2Ev.exit, label %bb.s

bb.s:                                             ; preds = %_ZSt8_DestroyIPN4bzla4NodeES1_EvT_S3_RSaIT0_E.exit.i
  %i.ah = load ptr, ptr %i.i, align 8, !tbaa !26
  %i.ai = ptrtoint ptr %i.ah to i64
  %i.aj = ptrtoint ptr %i.ag to i64
  %i.ak = sub i64 %i.ai, %i.aj
  call void @_ZdlPvm(ptr noundef nonnull %i.ag, i64 noundef %i.ak) #17
  br label %_ZNSt6vectorIN4bzla4NodeESaIS1_EED2Ev.exit

_ZNSt6vectorIN4bzla4NodeESaIS1_EED2Ev.exit:       ; preds = %_ZSt8_DestroyIPN4bzla4NodeES1_EvT_S3_RSaIT0_E.exit.i, %bb.s
  %i.al = getelementptr inbounds nuw i8, ptr %4, i64 16
  call void @_ZN4bzla4NodeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.al) #13
  %i.am = getelementptr inbounds nuw i8, ptr %4, i64 8
  call void @_ZN4bzla4NodeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.am) #13
  call void @_ZN4bzla4NodeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %4) #13
  call void @_ZN4bzla9BitVectorD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %6) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #13
  call void @_ZN4bzla9BitVectorD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %5) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #13
  br label %bb.ab

bb.t:                                             ; preds = %bb.e, %bb.a, %bb.b, %bb.aa
  %i.an = landingpad { ptr, i32 }
          cleanup
  br label %bb.ac

.thread:                                          ; preds = %bb.f
  %i.ao = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit

.thread68:                                        ; preds = %bb.g
  %i.ap = landingpad { ptr, i32 }
          cleanup
  br label %.preheader.preheader.sink.split

.thread74:                                        ; preds = %bb.h
  %i.aq = landingpad { ptr, i32 }
          cleanup
  br label %.preheader.preheader.sink.split.sink.split

.thread78:                                        ; preds = %bb.i
  %i.ar = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #13
  br label %.preheader.preheader.sink.split.sink.split

bb.u:                                             ; preds = %bb.j
  %i.as = landingpad { ptr, i32 }
          cleanup
  br label %bb.z

bb.v:                                             ; preds = %_ZSt10_ConstructIN4bzla4NodeEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i.2
  %i.at = landingpad { ptr, i32 }
          cleanup
  br label %bb.x

bb.w:                                             ; preds = %bb.p
  %i.au = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4bzla4NodeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %2) #13
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %.pn = phi { ptr, i32 } [ %i.au, %bb.w ], [ %i.at, %bb.v ]
  %i.av = load ptr, ptr %7, align 8, !tbaa !30    ; 3 uses
  %.not.i.i.i40 = icmp eq ptr %i.av, null
  br i1 %.not.i.i.i40, label %_ZNSt6vectorImSaImEED2Ev.exit41, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.aw = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !31
  %i.ay = ptrtoint ptr %i.ax to i64
  %i.az = ptrtoint ptr %i.av to i64
  %i.ba = sub i64 %i.ay, %i.az
  call void @_ZdlPvm(ptr noundef nonnull %i.av, i64 noundef %i.ba) #17
  br label %_ZNSt6vectorImSaImEED2Ev.exit41

_ZNSt6vectorImSaImEED2Ev.exit41:                  ; preds = %bb.x, %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #13
  call void @_ZNSt6vectorIN4bzla4NodeESaIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %3) #13
  br label %.body

.body:                                            ; preds = %.body44.thread, %.body44, %_ZNSt6vectorImSaImEED2Ev.exit41
  %.pn.pn = phi { ptr, i32 } [ %.pn, %_ZNSt6vectorImSaImEED2Ev.exit41 ], [ %i.v, %.body44.thread ], [ %i.s, %.body44 ]
  %i.bb = getelementptr inbounds nuw i8, ptr %4, i64 16
  call void @_ZN4bzla4NodeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.bb) #13
  %i.bc = getelementptr inbounds nuw i8, ptr %4, i64 8
  call void @_ZN4bzla4NodeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.bc) #13
  call void @_ZN4bzla4NodeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %4) #13
  br label %bb.z

bb.z:                                             ; preds = %bb.u, %.body
  %.pn.pn.pn = phi { ptr, i32 } [ %i.as, %bb.u ], [ %.pn.pn, %.body ] ; 2 uses
  %i.bd = phi i1 [ false, %bb.u ], [ true, %.body ]
  call void @_ZN4bzla9BitVectorD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %6) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #13
  call void @_ZN4bzla9BitVectorD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %5) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #13
  br i1 %i.bd, label %.loopexit, label %.preheader.preheader

.preheader.preheader.sink.split.sink.split:       ; preds = %.thread78, %.thread74
  %.11273.ph.ph = phi ptr [ %i.e, %.thread74 ], [ %i.f, %.thread78 ]
  %.pn.pn.pn.pn.pn.pn72.ph.ph = phi { ptr, i32 } [ %i.aq, %.thread74 ], [ %i.ar, %.thread78 ]
  call void @_ZN4bzla9BitVectorD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %5) #13
  br label %.preheader.preheader.sink.split

.preheader.preheader.sink.split:                  ; preds = %.preheader.preheader.sink.split.sink.split, %.thread68
  %.11273.ph = phi ptr [ %i.e, %.thread68 ], [ %.11273.ph.ph, %.preheader.preheader.sink.split.sink.split ]
  %.pn.pn.pn.pn.pn.pn72.ph = phi { ptr, i32 } [ %i.ap, %.thread68 ], [ %.pn.pn.pn.pn.pn.pn72.ph.ph, %.preheader.preheader.sink.split.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #13
  br label %.preheader.preheader

.preheader.preheader:                             ; preds = %.preheader.preheader.sink.split, %bb.z
  %.11273 = phi ptr [ %i.f, %bb.z ], [ %.11273.ph, %.preheader.preheader.sink.split ]
  %.pn.pn.pn.pn.pn.pn72 = phi { ptr, i32 } [ %.pn.pn.pn, %bb.z ], [ %.pn.pn.pn.pn.pn.pn72.ph, %.preheader.preheader.sink.split ]
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %.preheader
  %i.be = phi ptr [ %i.bf, %.preheader ], [ %.11273, %.preheader.preheader ]
  %i.bf = getelementptr inbounds i8, ptr %i.be, i64 -8 ; 3 uses
  call void @_ZN4bzla4NodeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.bf) #13
  %i.bg = icmp eq ptr %i.bf, %4
  br i1 %i.bg, label %.loopexit, label %.preheader

.loopexit:                                        ; preds = %.preheader, %.thread, %bb.z
  %.pn.pn.pn.pn.pn.pn.pn50 = phi { ptr, i32 } [ %i.ao, %.thread ], [ %.pn.pn.pn, %bb.z ], [ %.pn.pn.pn.pn.pn.pn72, %.preheader ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #13
  br label %bb.ac

bb.aa:                                            ; preds = %bb.c
  %i.bh = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4bzla4NodeaSERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1)
          to label %bb.ab unwind label %bb.t      ; 0 uses

bb.ab:                                            ; preds = %bb.aa, %_ZNSt6vectorIN4bzla4NodeESaIS1_EED2Ev.exit
  ret void

bb.ac:                                            ; preds = %bb.t, %.loopexit
  %.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.an, %bb.t ], [ %.pn.pn.pn.pn.pn.pn.pn50, %.loopexit ]
  call void @_ZN4bzla4NodeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) #13
  resume { ptr, i32 } %.pn.pn.pn.pn.pn.pn.pn.pn.pn
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZN4bzla4NodeaSEOS0_(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #1

; Function Attrs: uwtable
define void @_ZN4bzla2fp13SymFpuSymPropC2Eb(ptr noundef nonnull align 8 dereferenceable(8) %0, i1 noundef zeroext %1) unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.bzla::BitVector", align 8   ; 8 uses
  %.not.i.i = icmp eq ptr @_ZTHN4bzla2fp8SymFpuNM4s_nmE, null
  br i1 %.not.i.i, label %_ZN4bzla2fp8SymFpuNM3getEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZTHN4bzla2fp8SymFpuNM4s_nmE()
  br label %_ZN4bzla2fp8SymFpuNM3getEv.exit

_ZN4bzla2fp8SymFpuNM3getEv.exit:                  ; preds = %bb.a, %bb.b
  %i.a = tail call noundef align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZN4bzla2fp8SymFpuNM4s_nmE)
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #13
  br i1 %1, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_ZN4bzla2fp8SymFpuNM3getEv.exit
  call void @_ZN4bzla9BitVector7mk_trueEv(ptr dead_on_unwind nonnull writable sret(%"class.bzla::BitVector") align 8 %2)
  br label %bb.e

bb.d:                                             ; preds = %_ZN4bzla2fp8SymFpuNM3getEv.exit
  call void @_ZN4bzla9BitVector8mk_falseEv(ptr dead_on_unwind nonnull writable sret(%"class.bzla::BitVector") align 8 %2)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  invoke void @_ZN4bzla11NodeManager8mk_valueERKNS_9BitVectorE(ptr dead_on_unwind nonnull writable sret(%"class.bzla::Node") align 8 %0, ptr noundef nonnull align 8 dereferenceable(216) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %2)
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %bb.e
  call void @_ZN4bzla9BitVectorD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %2) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #13
  ret void

bb.g:                                             ; preds = %bb.e
  %i.c = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4bzla9BitVectorD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %2) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #13
  resume { ptr, i32 } %i.c
}

; Function Attrs: mustprogress uwtable
define void @_ZN4bzla2fp13SymFpuSymPropC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #0 align 2 {
bb.a:
  tail call void @_ZN4bzla4NodeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN4bzla2fp13SymFpuSymPropD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #4 align 2 {
bb.a:
  tail call void @_ZN4bzla4NodeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) #13
  ret void
}

; Function Attrs: mustprogress uwtable
define noundef nonnull align 8 dereferenceable(8) ptr @_ZN4bzla2fp13SymFpuSymPropaSERKS1_(ptr noundef nonnull returned align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN4bzla4NodeaSERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) ; 0 uses
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define void @_ZNK4bzla2fp13SymFpuSymProp3strB5cxx11Ev(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #0 align 2 {
bb.a:
  tail call void @_ZNK4bzla4Node3strB5cxx11Eh(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %1, i8 noundef zeroext 2)
  ret void
}

; Function Attrs: uwtable
define void @_ZNK4bzla2fp13SymFpuSymPropntEv(ptr dead_on_unwind noalias writable sret(%"class.bzla::fp::SymFpuSymProp") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.bzla::Node", align 8        ; 7 uses
  %3 = alloca %"class.std::vector.32", align 8    ; 11 uses
  %4 = alloca [1 x %"class.bzla::Node"], align 8  ; 7 uses
  %5 = alloca %"class.std::vector.37", align 8    ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #13
  %.not.i.i = icmp eq ptr @_ZTHN4bzla2fp8SymFpuNM4s_nmE, null
  br i1 %.not.i.i, label %_ZN4bzla2fp8SymFpuNM3getEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZTHN4bzla2fp8SymFpuNM4s_nmE()
  br label %_ZN4bzla2fp8SymFpuNM3getEv.exit

_ZN4bzla2fp8SymFpuNM3getEv.exit:                  ; preds = %bb.a, %bb.b
  %i.a = tail call noundef align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZN4bzla2fp8SymFpuNM4s_nmE)
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #13
  call void @_ZN4bzla4NodeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %1)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false)
  %i.c = invoke noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #14
          to label %.noexc unwind label %.body15.thread ; 4 uses

.noexc:                                           ; preds = %_ZN4bzla2fp8SymFpuNM3getEv.exit
  store ptr %i.c, ptr %3, align 8, !tbaa !25
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  store ptr %i.d, ptr %i.e, align 8, !tbaa !26
  invoke void @_ZN4bzla4NodeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef nonnull align 8 dereferenceable(8) %4)
          to label %_ZSt10_ConstructIN4bzla4NodeEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i unwind label %_ZSt8_DestroyIPN4bzla4NodeEEvT_S3_.exit.i.i.i.i.i

_ZSt10_ConstructIN4bzla4NodeEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i: ; preds = %.noexc
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store ptr %i.d, ptr %i.f, align 8, !tbaa !27
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #13
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, i8 0, i64 24, i1 false)
  invoke void @_ZN4bzla11NodeManager7mk_nodeENS_4node4KindERKSt6vectorINS_4NodeESaIS4_EERKS3_ImSaImEE(ptr dead_on_unwind nonnull writable sret(%"class.bzla::Node") align 8 %2, ptr noundef nonnull align 8 dereferenceable(216) %i.b, i8 noundef zeroext 26, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %5)
          to label %bb.f unwind label %bb.j

_ZSt8_DestroyIPN4bzla4NodeEEvT_S3_.exit.i.i.i.i.i: ; preds = %.noexc
  %i.g = landingpad { ptr, i32 }
          catch ptr null
  %i.h = extractvalue { ptr, i32 } %i.g, 0
  %i.i = call ptr @__cxa_begin_catch(ptr %i.h) #13 ; 0 uses
  invoke void @__cxa_rethrow() #15
          to label %bb.e unwind label %bb.c

bb.c:                                             ; preds = %_ZSt8_DestroyIPN4bzla4NodeEEvT_S3_.exit.i.i.i.i.i
  %i.j = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %.body15 unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = landingpad { ptr, i32 }
          catch ptr null
  %i.l = extractvalue { ptr, i32 } %i.k, 0
  call void @__clang_call_terminate(ptr %i.l) #16
  unreachable

bb.e:                                             ; preds = %_ZSt8_DestroyIPN4bzla4NodeEEvT_S3_.exit.i.i.i.i.i
  unreachable

.body15.thread:                                   ; preds = %_ZN4bzla2fp8SymFpuNM3getEv.exit
  %i.m = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body15:                                          ; preds = %bb.c
  call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef 8) #17
  br label %.body

bb.f:                                             ; preds = %_ZSt10_ConstructIN4bzla4NodeEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i
  invoke void @_ZN4bzla2fp13SymFpuSymPropC1ERKNS_4NodeE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %bb.g unwind label %bb.k

bb.g:                                             ; preds = %bb.f
  call void @_ZN4bzla4NodeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %2) #13
  %i.n = load ptr, ptr %5, align 8, !tbaa !30     ; 3 uses
  %.not.i.i.i9 = icmp eq ptr %i.n, null
  br i1 %.not.i.i.i9, label %_ZNSt6vectorImSaImEED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.o = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !31
  %i.q = ptrtoint ptr %i.p to i64
  %i.r = ptrtoint ptr %i.n to i64
  %i.s = sub i64 %i.q, %i.r
  call void @_ZdlPvm(ptr noundef nonnull %i.n, i64 noundef %i.s) #17
  br label %_ZNSt6vectorImSaImEED2Ev.exit

end_hunk_0
