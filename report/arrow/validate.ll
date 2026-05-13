inline.NumInlined: 3472
inline.NumDeleted: 1065
begin_hunk_0_@_ZNK5arrow18TypedChunkLocationIsEeqES1_:bb.a
  %sext = shl i32 %1, 16
  %i.c = ashr exact i32 %sext, 16
  %i.d = icmp eq i32 %i.c, %i.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.f = load i16, ptr %i.e, align 2
  %i.g = sext i16 %i.f to i32
  %i.h = ashr i32 %1, 16
  %i.i = icmp eq i32 %i.h, %i.g
  %i.j = select i1 %i.d, i1 %i.i, i1 false
  ret i1 %i.j
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr void @_ZN5arrow18TypedChunkLocationIaEC2Eaa(ptr noundef nonnull align 1 dereferenceable(2) %0, i8 noundef signext %1, i8 noundef signext %2) unnamed_addr #0 comdat($_ZN5arrow18TypedChunkLocationIaEC5Eaa) align 2 {
bb.a:
  store i8 %1, ptr %0, align 1, !tbaa !14
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %2, ptr %i.a, align 1, !tbaa !16
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr noundef zeroext i1 @_ZNK5arrow18TypedChunkLocationIaEeqES1_(ptr noundef nonnull align 1 dereferenceable(2) %0, i16 %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %.sroa.0.0.extract.trunc = zext i16 %1 to i32
  %i.a = load i8, ptr %0, align 1, !tbaa !14
  %i.b = sext i8 %i.a to i32
  %sext = shl i32 %.sroa.0.0.extract.trunc, 24
  %i.c = ashr exact i32 %sext, 24
  %i.d = icmp eq i32 %i.c, %i.b
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %.sroa.2.0.extract.shift = lshr i16 %1, 8
  %.sroa.2.0.extract.trunc = zext nneg i16 %.sroa.2.0.extract.shift to i32
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.f = load i8, ptr %i.e, align 1, !tbaa !16
  %i.g = sext i8 %i.f to i32
  %sext1 = shl nuw i32 %.sroa.2.0.extract.trunc, 24
  %i.h = ashr exact i32 %sext1, 24
  %i.i = icmp eq i32 %i.h, %i.g
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.j = phi i1 [ false, %bb.a ], [ %i.i, %bb.b ]
  ret i1 %i.j
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr void @_ZN5arrow18TypedChunkLocationIhEC2Ehh(ptr noundef nonnull align 1 dereferenceable(2) %0, i8 noundef zeroext %1, i8 noundef zeroext %2) unnamed_addr #0 comdat($_ZN5arrow18TypedChunkLocationIhEC5Ehh) align 2 {
bb.a:
  store i8 %1, ptr %0, align 1, !tbaa !17
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %2, ptr %i.a, align 1, !tbaa !19
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr noundef zeroext i1 @_ZNK5arrow18TypedChunkLocationIhEeqES1_(ptr noundef nonnull align 1 dereferenceable(2) %0, i16 %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load i8, ptr %0, align 1, !tbaa !17
  %i.b = trunc i16 %1 to i8
  %i.c = icmp eq i8 %i.a, %i.b
  %.sroa.2.0.extract.shift = lshr i16 %1, 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.e = load i8, ptr %i.d, align 1
  %i.f = zext i8 %i.e to i16
  %i.g = icmp eq i16 %.sroa.2.0.extract.shift, %i.f
  %i.h = select i1 %i.c, i1 %i.g, i1 false
  ret i1 %i.h
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr void @_ZN5arrow18TypedChunkLocationItEC2Ett(ptr noundef nonnull align 2 dereferenceable(4) %0, i16 noundef zeroext %1, i16 noundef zeroext %2) unnamed_addr #0 comdat($_ZN5arrow18TypedChunkLocationItEC5Ett) align 2 {
bb.a:
  store i16 %1, ptr %0, align 2, !tbaa !20
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 2
  store i16 %2, ptr %i.a, align 2, !tbaa !22
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr noundef zeroext i1 @_ZNK5arrow18TypedChunkLocationItEeqES1_(ptr noundef nonnull align 2 dereferenceable(4) %0, i32 %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load i16, ptr %0, align 2, !tbaa !20
  %i.b = trunc i32 %1 to i16
  %i.c = icmp eq i16 %i.a, %i.b
  %.sroa.2.0.extract.shift = lshr i32 %1, 16
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.e = load i16, ptr %i.d, align 2
  %i.f = zext i16 %i.e to i32
  %i.g = icmp eq i32 %.sroa.2.0.extract.shift, %i.f
  %i.h = select i1 %i.c, i1 %i.g, i1 false
  ret i1 %i.h
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr void @_ZN5arrow18TypedChunkLocationIjEC2Ejj(ptr noundef nonnull align 4 dereferenceable(8) %0, i32 noundef %1, i32 noundef %2) unnamed_addr #0 comdat($_ZN5arrow18TypedChunkLocationIjEC5Ejj) align 2 {
bb.a:
  store i32 %1, ptr %0, align 4, !tbaa !23
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %2, ptr %i.a, align 4, !tbaa !25
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr noundef zeroext i1 @_ZNK5arrow18TypedChunkLocationIjEeqES1_(ptr noundef nonnull align 4 dereferenceable(8) %0, i64 %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %.sroa.0.0.extract.trunc = trunc i64 %1 to i32
  %i.a = load i32, ptr %0, align 4, !tbaa !23
  %i.b = icmp eq i32 %i.a, %.sroa.0.0.extract.trunc
  %.sroa.2.0.extract.shift = lshr i64 %1, 32
  %.sroa.2.0.extract.trunc = trunc nuw i64 %.sroa.2.0.extract.shift to i32
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.d = load i32, ptr %i.c, align 4
  %i.e = icmp eq i32 %i.d, %.sroa.2.0.extract.trunc
  %i.f = select i1 %i.b, i1 %i.e, i1 false
  ret i1 %i.f
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr void @_ZN5arrow18TypedChunkLocationIlEC2Ell(ptr noundef nonnull align 8 dereferenceable(16) %0, i64 noundef %1, i64 noundef %2) unnamed_addr #0 comdat($_ZN5arrow18TypedChunkLocationIlEC5Ell) align 2 {
bb.a:
  store i64 %1, ptr %0, align 8, !tbaa !26
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %2, ptr %i.a, align 8, !tbaa !29
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr noundef zeroext i1 @_ZNK5arrow18TypedChunkLocationIlEeqES1_(ptr noundef nonnull align 8 dereferenceable(16) %0, i64 %1, i64 %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !tbaa !26
  %i.b = icmp eq i64 %i.a, %1
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load i64, ptr %i.c, align 8
  %i.e = icmp eq i64 %i.d, %2
  %i.f = select i1 %i.b, i1 %i.e, i1 false
  ret i1 %i.f
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr void @_ZN5arrow18TypedChunkLocationImEC2Emm(ptr noundef nonnull align 8 dereferenceable(16) %0, i64 noundef %1, i64 noundef %2) unnamed_addr #0 comdat($_ZN5arrow18TypedChunkLocationImEC5Emm) align 2 {
bb.a:
  store i64 %1, ptr %0, align 8, !tbaa !30
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %2, ptr %i.a, align 8, !tbaa !32
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr noundef zeroext i1 @_ZNK5arrow18TypedChunkLocationImEeqES1_(ptr noundef nonnull align 8 dereferenceable(16) %0, i64 %1, i64 %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !tbaa !30
  %i.b = icmp eq i64 %i.a, %1
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load i64, ptr %i.c, align 8
  %i.e = icmp eq i64 %i.d, %2
  %i.f = select i1 %i.b, i1 %i.e, i1 false
  ret i1 %i.f
}

; Function Attrs: mustprogress uwtable
define void @_ZN5arrow8internal13ValidateArrayERKNS_9ArrayDataE(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(120) %1) local_unnamed_addr #1 {
bb.a:
  %2 = alloca %"struct.arrow::internal::(anonymous namespace)::ValidateArrayImpl", align 8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #18
  store ptr %1, ptr %2, align 8, !tbaa !33
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i8 0, ptr %i.a, align 8, !tbaa !36
  call fastcc void @_ZN5arrow8internal12_GLOBAL__N_117ValidateArrayImpl8ValidateEv(ptr dead_on_unwind noalias writable align 8 %0, ptr noundef nonnull align 8 dereferenceable(9) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #18
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN5arrow8internal12_GLOBAL__N_117ValidateArrayImpl8ValidateEv(ptr dead_on_unwind noalias writable align 8 %0, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(9) %1) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %i.a = alloca i64, align 8                      ; 5 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %12 = alloca %"struct.arrow::DataTypeLayout", align 8 ; 14 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %i.c = alloca i64, align 8                      ; 5 uses
  %i.d = alloca i64, align 8                      ; 5 uses
  %14 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %i.e = alloca i64, align 8                      ; 5 uses
  %15 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %i.f = alloca i32, align 4                      ; 7 uses
  %i.g = alloca i64, align 8                      ; 10 uses
  %16 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %17 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %i.h = alloca i64, align 8                      ; 5 uses
  %18 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %19 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %20 = alloca %"class.arrow::Status", align 8    ; 12 uses
  %21 = alloca %"class.arrow::Status", align 8    ; 8 uses
  %i.i = load ptr, ptr %1, align 8, !tbaa !39, !nonnull !40, !align !41
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !42   ; 17 uses
  %.not.i = icmp eq ptr %i.j, null
  br i1 %.not.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN5arrow6Status8FromArgsIJRA21_KcEEES0_NS_10StatusCodeEDpOT_(ptr dead_on_unwind writable sret(%"class.arrow::Status") align 8 %0, i8 noundef signext 4, ptr noundef nonnull align 1 dereferenceable(21) @.str)
  br label %bb.ci

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #18
  tail call void @llvm.experimental.noalias.scope.decl(metadata !47)
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #18, !noalias !47
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !50, !noalias !47
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 48
  %i.m = load ptr, ptr %i.l, align 8, !noalias !47
  call void %i.m(ptr dead_on_unwind nonnull writable sret(%"struct.arrow::DataTypeLayout") align 8 %12, ptr noundef nonnull align 8 dereferenceable(72) %i.j), !noalias !47, !inline_history !52
  %i.n = load ptr, ptr %1, align 8, !tbaa !39, !noalias !47, !nonnull !40, !align !41 ; 5 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.p = load i64, ptr %i.o, align 8, !tbaa !53, !noalias !47
  %.fr = freeze i64 %i.p                          ; 3 uses
  %i.q = icmp slt i64 %.fr, 0
  br i1 %i.q, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  invoke void @_ZN5arrow6Status8FromArgsIJRA25_KcEEES0_NS_10StatusCodeEDpOT_(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %20, i8 noundef signext 4, ptr noundef nonnull align 1 dereferenceable(25) @.str.1)
          to label %_ZN5arrow6Status7InvalidIJRA25_KcEEES0_DpOT_.exit.i unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.r = landingpad { ptr, i32 }
          cleanup
  br label %bb.bj

bb.f:                                             ; preds = %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %12, i64 32 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %12, i64 48
  %i.u = load i8, ptr %i.t, align 8, !tbaa !73, !range !75, !noalias !47, !noundef !40
  %i.v = trunc nuw i8 %i.u to i1
  %i.w = getelementptr inbounds nuw i8, ptr %i.n, i64 40
  %i.x = getelementptr inbounds nuw i8, ptr %i.n, i64 48
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !76, !noalias !47
  %i.z = load ptr, ptr %i.w, align 8, !tbaa !77, !noalias !47 ; 3 uses
  %i.aa = ptrtoint ptr %i.y to i64
  %i.ab = ptrtoint ptr %i.z to i64
  %i.ac = sub i64 %i.aa, %i.ab                    ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !78, !noalias !47
  %i.af = load ptr, ptr %12, align 8, !tbaa !81, !noalias !47 ; 3 uses
  %i.ag = ptrtoint ptr %i.ae to i64
  %i.ah = ptrtoint ptr %i.af to i64
  %i.ai = sub i64 %i.ag, %i.ah                    ; 5 uses
  br i1 %i.v, label %bb.g, label %bb.n

bb.g:                                             ; preds = %bb.f
  %i.aj = icmp ult i64 %i.ac, %i.ai
  br i1 %i.aj, label %bb.h, label %bb.u

bb.h:                                             ; preds = %bb.g
  %i.ak = ashr exact i64 %i.ai, 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #18, !noalias !47
  store i64 %i.ak, ptr %i.b, align 8, !tbaa !82, !noalias !47
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #18, !noalias !47
  %i.al = load ptr, ptr %i.j, align 8, !tbaa !50, !noalias !47
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 32
  %i.an = load ptr, ptr %i.am, align 8, !noalias !47
  invoke void %i.an(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %13, ptr noundef nonnull align 8 dereferenceable(72) %i.j, i1 noundef zeroext false)
          to label %bb.i unwind label %bb.l, !noalias !47

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #18, !noalias !47
  %i.ao = load ptr, ptr %1, align 8, !tbaa !39, !noalias !47, !nonnull !40, !align !41 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 40
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ao, i64 48
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !76, !noalias !47
  %i.as = load ptr, ptr %i.ap, align 8, !tbaa !77, !noalias !47
  %i.at = ptrtoint ptr %i.ar to i64
  %i.au = ptrtoint ptr %i.as to i64
  %i.av = sub i64 %i.at, %i.au
  %i.aw = ashr exact i64 %i.av, 4
  store i64 %i.aw, ptr %i.c, align 8, !tbaa !82, !noalias !47
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #18, !noalias !83
  invoke void @_ZN5arrow8internal12JoinToStringIJRA19_KcmRA27_S2_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA7_S2_mEEESC_DpOT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %11, ptr noundef nonnull align 1 dereferenceable(19) @.str.2, ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 1 dereferenceable(27) @.str.3, ptr noundef nonnull align 8 dereferenceable(32) %13, ptr noundef nonnull align 1 dereferenceable(7) @.str.4, ptr noundef nonnull align 8 dereferenceable(8) %i.c)
          to label %.noexc.i unwind label %bb.m, !noalias !47

.noexc.i:                                         ; preds = %bb.i
  invoke void @_ZN5arrow6StatusC1ENS_10StatusCodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8) %20, i8 noundef signext 4, ptr noundef nonnull align 8 dereferenceable(32) %11)
          to label %bb.j unwind label %bb.k

bb.j:                                             ; preds = %.noexc.i
  %i.ax = load ptr, ptr %11, align 8, !tbaa !88, !noalias !83 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  %i.az = icmp eq ptr %i.ax, %i.ay
  br i1 %i.az, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.j
  %i.ba = load i64, ptr %i.ay, align 8, !tbaa !92, !noalias !83
  %i.bb = add i64 %i.ba, 1
  call void @_ZdlPvm(ptr noundef %i.ax, i64 noundef %i.bb) #19
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i

bb.k:                                             ; preds = %.noexc.i
  %i.bc = landingpad { ptr, i32 }
          cleanup
  %i.bd = load ptr, ptr %11, align 8, !tbaa !88, !noalias !83 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  %i.bf = icmp eq ptr %i.bd, %i.be
  br i1 %i.bf, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i8.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i8.i.i.i: ; preds = %bb.k
  %i.bg = load i64, ptr %i.be, align 8, !tbaa !92, !noalias !83
  %i.bh = add i64 %i.bg, 1
  call void @_ZdlPvm(ptr noundef %i.bd, i64 noundef %i.bh) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10.i.i.i: ; preds = %bb.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i8.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #18, !noalias !83
  br label %.body.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i: ; preds = %bb.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #18, !noalias !83
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #18, !noalias !47
  %i.bi = load ptr, ptr %13, align 8, !tbaa !88, !noalias !47 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 2 uses
  %i.bk = icmp eq ptr %i.bi, %i.bj
  br i1 %i.bk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i
  %i.bl = load i64, ptr %i.bj, align 8, !tbaa !92, !noalias !47
  %i.bm = add i64 %i.bl, 1
  call void @_ZdlPvm(ptr noundef %i.bi, i64 noundef %i.bm) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #18, !noalias !47
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #18, !noalias !47
  br label %_ZN5arrow6Status7InvalidIJRA25_KcEEES0_DpOT_.exit.i

bb.l:                                             ; preds = %bb.h
  %i.bn = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50.i

bb.m:                                             ; preds = %bb.i
  %i.bo = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %bb.m, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10.i.i.i
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.bo, %bb.m ], [ %i.bc, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10.i.i.i ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #18, !noalias !47
  %i.bp = load ptr, ptr %13, align 8, !tbaa !88, !noalias !47 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 2 uses
  %i.br = icmp eq ptr %i.bp, %i.bq
  br i1 %i.br, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i48.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i48.i: ; preds = %.body.i
  %i.bs = load i64, ptr %i.bq, align 8, !tbaa !92, !noalias !47
  %i.bt = add i64 %i.bs, 1
  call void @_ZdlPvm(ptr noundef %i.bp, i64 noundef %i.bt) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50.i: ; preds = %.body.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i48.i, %bb.l
  %.pn44.i = phi { ptr, i32 } [ %i.bn, %bb.l ], [ %eh.lpad-body.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i48.i ], [ %eh.lpad-body.i, %.body.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #18, !noalias !47
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #18, !noalias !47
  br label %bb.bj

bb.n:                                             ; preds = %bb.f
  %.not.i12 = icmp eq i64 %i.ac, %i.ai
  br i1 %.not.i12, label %bb.u, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bu = ashr exact i64 %i.ai, 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #18, !noalias !47
  store i64 %i.bu, ptr %i.d, align 8, !tbaa !82, !noalias !47
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #18, !noalias !47
  %i.bv = load ptr, ptr %i.j, align 8, !tbaa !50, !noalias !47
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 32
  %i.bx = load ptr, ptr %i.bw, align 8, !noalias !47
  invoke void %i.bx(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %14, ptr noundef nonnull align 8 dereferenceable(72) %i.j, i1 noundef zeroext false)
          to label %bb.p unwind label %bb.s, !noalias !47

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #18, !noalias !47
  %i.by = load ptr, ptr %1, align 8, !tbaa !39, !noalias !47, !nonnull !40, !align !41 ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 40
  %i.ca = getelementptr inbounds nuw i8, ptr %i.by, i64 48
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !76, !noalias !47
  %i.cc = load ptr, ptr %i.bz, align 8, !tbaa !77, !noalias !47
  %i.cd = ptrtoint ptr %i.cb to i64
  %i.ce = ptrtoint ptr %i.cc to i64
  %i.cf = sub i64 %i.cd, %i.ce
end_hunk_0
begin_hunk_1_@_ZN5arrow8internal12_GLOBAL__N_117ValidateArrayImpl8ValidateEv:bb.a
  %i.cu = icmp eq ptr %i.cs, %i.ct
  br i1 %i.cu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i59.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i59.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i55.i
  %i.cv = load i64, ptr %i.ct, align 8, !tbaa !92, !noalias !47
  %i.cw = add i64 %i.cv, 1
  call void @_ZdlPvm(ptr noundef %i.cs, i64 noundef %i.cw) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i55.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i59.i
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #18, !noalias !47
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #18, !noalias !47
  br label %_ZN5arrow6Status7InvalidIJRA25_KcEEES0_DpOT_.exit.i

bb.s:                                             ; preds = %bb.o
  %i.cx = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit64.i

bb.t:                                             ; preds = %bb.p
  %i.cy = landingpad { ptr, i32 }
          cleanup
  br label %.body57.i

.body57.i:                                        ; preds = %bb.t, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10.i.i52.i
  %eh.lpad-body58.i = phi { ptr, i32 } [ %i.cy, %bb.t ], [ %i.cm, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10.i.i52.i ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #18, !noalias !47
  %i.cz = load ptr, ptr %14, align 8, !tbaa !88, !noalias !47 ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 2 uses
  %i.db = icmp eq ptr %i.cz, %i.da
  br i1 %i.db, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit64.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i62.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i62.i: ; preds = %.body57.i
  %i.dc = load i64, ptr %i.da, align 8, !tbaa !92, !noalias !47
  %i.dd = add i64 %i.dc, 1
  call void @_ZdlPvm(ptr noundef %i.cz, i64 noundef %i.dd) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit64.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit64.i: ; preds = %.body57.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i62.i, %bb.s
  %.pn.i = phi { ptr, i32 } [ %i.cx, %bb.s ], [ %eh.lpad-body58.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i62.i ], [ %eh.lpad-body58.i, %.body57.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #18, !noalias !47
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #18, !noalias !47
  br label %bb.bj

bb.u:                                             ; preds = %bb.n, %bb.g
  %i.de = getelementptr inbounds nuw i8, ptr %i.n, i64 32
  %i.df = load i64, ptr %i.de, align 8, !tbaa !98, !noalias !47
  %i.dg = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %.fr, i64 %i.df) ; 2 uses
  %i.dh = extractvalue { i64, i1 } %i.dg, 1
  %i.di = extractvalue { i64, i1 } %i.dg, 0       ; 3 uses
  br i1 %i.dh, label %bb.v, label %bb.ab

bb.v:                                             ; preds = %bb.u
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #18, !noalias !47
  %i.dj = load ptr, ptr %i.j, align 8, !tbaa !50, !noalias !47
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 32
  %i.dl = load ptr, ptr %i.dk, align 8, !noalias !47
  invoke void %i.dl(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %15, ptr noundef nonnull align 8 dereferenceable(72) %i.j, i1 noundef zeroext false)
          to label %bb.w unwind label %bb.z, !noalias !47

bb.w:                                             ; preds = %bb.v
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #18, !noalias !99
  invoke void @_ZN5arrow8internal12JoinToStringIJRA15_KcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA40_S2_EEESA_DpOT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %9, ptr noundef nonnull align 1 dereferenceable(15) @.str.6, ptr noundef nonnull align 8 dereferenceable(32) %15, ptr noundef nonnull align 1 dereferenceable(40) @.str.7)
          to label %.noexc67.i unwind label %bb.aa, !noalias !47

.noexc67.i:                                       ; preds = %bb.w
  invoke void @_ZN5arrow6StatusC1ENS_10StatusCodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8) %20, i8 noundef signext 4, ptr noundef nonnull align 8 dereferenceable(32) %9)
          to label %bb.x unwind label %bb.y

bb.x:                                             ; preds = %.noexc67.i
  %i.dm = load ptr, ptr %9, align 8, !tbaa !88, !noalias !99 ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.do = icmp eq ptr %i.dm, %i.dn
  br i1 %i.do, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i66.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i65.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i65.i: ; preds = %bb.x
  %i.dp = load i64, ptr %i.dn, align 8, !tbaa !92, !noalias !99
  %i.dq = add i64 %i.dp, 1
  call void @_ZdlPvm(ptr noundef %i.dm, i64 noundef %i.dq) #19
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i66.i

bb.y:                                             ; preds = %.noexc67.i
  %i.dr = landingpad { ptr, i32 }
          cleanup
  %i.ds = load ptr, ptr %9, align 8, !tbaa !88, !noalias !99 ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.du = icmp eq ptr %i.ds, %i.dt
  br i1 %i.du, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5.i.i.i: ; preds = %bb.y
  %i.dv = load i64, ptr %i.dt, align 8, !tbaa !92, !noalias !99
  %i.dw = add i64 %i.dv, 1
  call void @_ZdlPvm(ptr noundef %i.ds, i64 noundef %i.dw) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7.i.i.i: ; preds = %bb.y, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #18, !noalias !99
  br label %.body68.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i66.i: ; preds = %bb.x, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i65.i
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #18, !noalias !99
  %i.dx = load ptr, ptr %15, align 8, !tbaa !88, !noalias !47 ; 2 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 2 uses
  %i.dz = icmp eq ptr %i.dx, %i.dy
  br i1 %i.dz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit72.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i70.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i70.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i66.i
  %i.ea = load i64, ptr %i.dy, align 8, !tbaa !92, !noalias !47
  %i.eb = add i64 %i.ea, 1
  call void @_ZdlPvm(ptr noundef %i.dx, i64 noundef %i.eb) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit72.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit72.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i66.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i70.i
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #18, !noalias !47
  br label %_ZN5arrow6Status7InvalidIJRA25_KcEEES0_DpOT_.exit.i

bb.z:                                             ; preds = %bb.v
  %i.ec = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit75.i

bb.aa:                                            ; preds = %bb.w
  %i.ed = landingpad { ptr, i32 }
          cleanup
  br label %.body68.i

.body68.i:                                        ; preds = %bb.aa, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7.i.i.i
  %eh.lpad-body69.i = phi { ptr, i32 } [ %i.ed, %bb.aa ], [ %i.dr, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7.i.i.i ] ; 2 uses
  %i.ee = load ptr, ptr %15, align 8, !tbaa !88, !noalias !47 ; 2 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 2 uses
  %i.eg = icmp eq ptr %i.ee, %i.ef
  br i1 %i.eg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit75.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i73.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i73.i: ; preds = %.body68.i
  %i.eh = load i64, ptr %i.ef, align 8, !tbaa !92, !noalias !47
  %i.ei = add i64 %i.eh, 1
  call void @_ZdlPvm(ptr noundef %i.ee, i64 noundef %i.ei) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit75.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit75.i: ; preds = %.body68.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i73.i, %bb.z
  %.pn41.i = phi { ptr, i32 } [ %i.ec, %bb.z ], [ %eh.lpad-body69.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i73.i ], [ %eh.lpad-body69.i, %.body68.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #18, !noalias !47
  br label %bb.bj

bb.ab:                                            ; preds = %bb.u
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #18, !noalias !47
  %i.ej = lshr exact i64 %i.ac, 4                 ; 2 uses
  %i.ek = trunc i64 %i.ej to i32
  %.not36139.i = icmp sgt i32 %i.ek, 0
  br i1 %.not36139.i, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.ab
  %i.el = ashr i64 %i.di, 3
  %i.em = and i64 %i.di, 7
  %i.en = icmp ne i64 %i.em, 0
  %i.eo = zext i1 %i.en to i64
  %i.ep = add nsw i64 %i.el, %i.eo                ; 2 uses
  %sext.i = shl i64 %i.ai, 28
  %i.eq = ashr i64 %sext.i, 32                    ; 2 uses
  %.sroa.gep148.i = getelementptr inbounds nuw i8, ptr %12, i64 40
  %.not213.i = icmp eq i64 %.fr, 0
  %i.er = and i64 %i.ej, 2147483647
  %umax54 = call i64 @llvm.umax.i64(i64 %i.er, i64 1) ; 2 uses
  br i1 %.not213.i, label %.lr.ph.i.split.us, label %.lr.ph.i.split

.lr.ph.i.split.us:                                ; preds = %.lr.ph.i, %.thread.i.us
  %indvars.iv.i.us = phi i64 [ %indvars.iv.next.i.us, %.thread.i.us ], [ 0, %.lr.ph.i ] ; 5 uses
  %i.es = getelementptr inbounds nuw [16 x i8], ptr %i.z, i64 %indvars.iv.i.us ; 2 uses
  %i.et = load ptr, ptr %i.es, align 8, !tbaa !104, !noalias !47 ; 2 uses
  %.not.i.i.us = icmp eq ptr %i.et, null
  br i1 %.not.i.i.us, label %.thread.i.us, label %bb.ac

bb.ac:                                            ; preds = %.lr.ph.i.split.us
  %i.eu = getelementptr inbounds nuw [16 x i8], ptr %i.af, i64 %indvars.iv.i.us
  %i.ev = icmp slt i64 %indvars.iv.i.us, %i.eq
  %spec.select.i.us = select i1 %i.ev, ptr %i.eu, ptr %i.s
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #18, !noalias !47
  store i64 0, ptr %i.g, align 8, !tbaa !82, !noalias !47
  %i.ew = load i32, ptr %spec.select.i.us, align 8, !tbaa !107, !noalias !47
  switch i32 %i.ew, label %bb.ad [
    i32 2, label %._crit_edge149.i.us
    i32 0, label %._crit_edge149.i.us
  ]

._crit_edge149.i.us:                              ; preds = %bb.ac, %bb.ac
  %i.ex = getelementptr inbounds nuw i8, ptr %i.et, i64 24
  %i.ey = load i64, ptr %i.ex, align 8, !tbaa !110, !noalias !47
  %i.ez = icmp slt i64 %i.ey, 0
  br i1 %i.ez, label %.split41.us, label %bb.ad

bb.ad:                                            ; preds = %._crit_edge149.i.us, %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #18, !noalias !47
  br label %.thread.i.us

.thread.i.us:                                     ; preds = %bb.ad, %.lr.ph.i.split.us
  %indvars.iv.next.i.us = add nuw nsw i64 %indvars.iv.i.us, 1 ; 2 uses
  %exitcond55.not = icmp eq i64 %indvars.iv.next.i.us, %umax54
  br i1 %exitcond55.not, label %._crit_edge.i, label %.lr.ph.i.split.us, !llvm.loop !117

.lr.ph.i.split:                                   ; preds = %.lr.ph.i, %.thread.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.thread.i ], [ 0, %.lr.ph.i ] ; 6 uses
  %i.fa = getelementptr inbounds nuw [16 x i8], ptr %i.z, i64 %indvars.iv.i ; 2 uses
  %i.fb = icmp slt i64 %indvars.iv.i, %i.eq       ; 2 uses
  %i.fc = getelementptr inbounds nuw [16 x i8], ptr %i.af, i64 %indvars.iv.i ; 2 uses
  %i.fd = load ptr, ptr %i.fa, align 8, !tbaa !104, !noalias !47 ; 2 uses
  %.not.i.i = icmp eq ptr %i.fd, null
  br i1 %.not.i.i, label %.thread.i, label %bb.ae

bb.ae:                                            ; preds = %.lr.ph.i.split
  %spec.select.i = select i1 %i.fb, ptr %i.fc, ptr %i.s
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #18, !noalias !47
  %i.fe = load i32, ptr %spec.select.i, align 8, !tbaa !107, !noalias !47
  switch i32 %i.fe, label %bb.ar [
    i32 2, label %bb.af
    i32 0, label %bb.ag
  ]

bb.af:                                            ; preds = %bb.ae
  store i64 %i.ep, ptr %i.g, align 8, !tbaa !82, !noalias !47
  br label %._crit_edge149.i

bb.ag:                                            ; preds = %bb.ae
  %.sroa.gep.i = getelementptr inbounds nuw i8, ptr %i.fc, i64 8
  %spec.select.sroa.sel.i = select i1 %i.fb, ptr %.sroa.gep.i, ptr %.sroa.gep148.i
  %i.ff = load i64, ptr %spec.select.sroa.sel.i, align 8, !tbaa !119, !noalias !47
  %i.fg = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %i.di, i64 %i.ff) ; 2 uses
  %i.fh = extractvalue { i64, i1 } %i.fg, 1
  %i.fi = extractvalue { i64, i1 } %i.fg, 0       ; 2 uses
  store i64 %i.fi, ptr %i.g, align 8, !noalias !47
  br i1 %i.fh, label %.split.us, label %._crit_edge149.i

.split.us:                                        ; preds = %bb.ag
  %22 = trunc nuw nsw i64 %indvars.iv.i to i32
  store i32 %22, ptr %i.f, align 4, !tbaa !3, !noalias !47
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #18, !noalias !47
  %i.fj = load ptr, ptr %i.j, align 8, !tbaa !50, !noalias !47
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fj, i64 32
  %i.fl = load ptr, ptr %i.fk, align 8, !noalias !47
  invoke void %i.fl(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %16, ptr noundef nonnull align 8 dereferenceable(72) %i.j, i1 noundef zeroext false)
          to label %bb.ah unwind label %bb.ak, !noalias !47

bb.ah:                                            ; preds = %.split.us
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #18, !noalias !120
  invoke void @_ZN5arrow8internal12JoinToStringIJRA15_KcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA40_S2_EEESA_DpOT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %8, ptr noundef nonnull align 1 dereferenceable(15) @.str.6, ptr noundef nonnull align 8 dereferenceable(32) %16, ptr noundef nonnull align 1 dereferenceable(40) @.str.7)
          to label %.noexc81.i unwind label %bb.al, !noalias !47

.noexc81.i:                                       ; preds = %bb.ah
  invoke void @_ZN5arrow6StatusC1ENS_10StatusCodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8) %20, i8 noundef signext 4, ptr noundef nonnull align 8 dereferenceable(32) %8)
          to label %bb.ai unwind label %bb.aj

bb.ai:                                            ; preds = %.noexc81.i
  %i.fm = load ptr, ptr %8, align 8, !tbaa !88, !noalias !120 ; 2 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.fo = icmp eq ptr %i.fm, %i.fn
  br i1 %i.fo, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i80.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i79.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i79.i: ; preds = %bb.ai
  %i.fp = load i64, ptr %i.fn, align 8, !tbaa !92, !noalias !120
  %i.fq = add i64 %i.fp, 1
  call void @_ZdlPvm(ptr noundef %i.fm, i64 noundef %i.fq) #19
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i80.i

bb.aj:                                            ; preds = %.noexc81.i
  %i.fr = landingpad { ptr, i32 }
          cleanup
  %i.fs = load ptr, ptr %8, align 8, !tbaa !88, !noalias !120 ; 2 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.fu = icmp eq ptr %i.fs, %i.ft
  br i1 %i.fu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7.i.i77.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5.i.i76.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5.i.i76.i: ; preds = %bb.aj
  %i.fv = load i64, ptr %i.ft, align 8, !tbaa !92, !noalias !120
  %i.fw = add i64 %i.fv, 1
  call void @_ZdlPvm(ptr noundef %i.fs, i64 noundef %i.fw) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7.i.i77.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7.i.i77.i: ; preds = %bb.aj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5.i.i76.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #18, !noalias !120
  br label %.body82.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i80.i: ; preds = %bb.ai, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i79.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #18, !noalias !120
  %i.fx = load ptr, ptr %16, align 8, !tbaa !88, !noalias !47 ; 2 uses
  %i.fy = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 2 uses
  %i.fz = icmp eq ptr %i.fx, %i.fy
  br i1 %i.fz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit87.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i85.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i85.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i80.i
  %i.ga = load i64, ptr %i.fy, align 8, !tbaa !92, !noalias !47
  %i.gb = add i64 %i.ga, 1
  call void @_ZdlPvm(ptr noundef %i.fx, i64 noundef %i.gb) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit87.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit87.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i80.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i85.i
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #18, !noalias !47
  br label %bb.at

bb.ak:                                            ; preds = %.split.us
  %i.gc = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit90.i

bb.al:                                            ; preds = %bb.ah
  %i.gd = landingpad { ptr, i32 }
          cleanup
  br label %.body82.i

.body82.i:                                        ; preds = %bb.al, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7.i.i77.i
  %eh.lpad-body83.i = phi { ptr, i32 } [ %i.gd, %bb.al ], [ %i.fr, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7.i.i77.i ] ; 2 uses
  %i.ge = load ptr, ptr %16, align 8, !tbaa !88, !noalias !47 ; 2 uses
  %i.gf = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 2 uses
  %i.gg = icmp eq ptr %i.ge, %i.gf
  br i1 %i.gg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit90.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i88.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i88.i: ; preds = %.body82.i
  %i.gh = load i64, ptr %i.gf, align 8, !tbaa !92, !noalias !47
  %i.gi = add i64 %i.gh, 1
  call void @_ZdlPvm(ptr noundef %i.ge, i64 noundef %i.gi) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit90.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit90.i: ; preds = %.body82.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i88.i, %bb.ak
  %.pn31.i = phi { ptr, i32 } [ %i.gc, %bb.ak ], [ %eh.lpad-body83.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i88.i ], [ %eh.lpad-body83.i, %.body82.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #18, !noalias !47
  br label %bb.as

._crit_edge149.i:                                 ; preds = %bb.ag, %bb.af
  %i.gj = phi i64 [ %i.fi, %bb.ag ], [ %i.ep, %bb.af ]
  %i.gk = getelementptr inbounds nuw i8, ptr %i.fd, i64 24
  %i.gl = load i64, ptr %i.gk, align 8, !tbaa !110, !noalias !47
  %i.gm = icmp slt i64 %i.gl, %i.gj
  br i1 %i.gm, label %.split41.us, label %bb.ar

.split41.us:                                      ; preds = %._crit_edge149.i, %._crit_edge149.i.us
  %.us-phi = phi i64 [ %indvars.iv.i.us, %._crit_edge149.i.us ], [ %indvars.iv.i, %._crit_edge149.i ]
  %.us-phi42 = phi ptr [ %i.es, %._crit_edge149.i.us ], [ %i.fa, %._crit_edge149.i ]
  %i.gn = trunc nuw nsw i64 %.us-phi to i32
  store i32 %i.gn, ptr %i.f, align 4, !tbaa !3, !noalias !47
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #18, !noalias !47
  %i.go = load ptr, ptr %i.j, align 8, !tbaa !50, !noalias !47
  %i.gp = getelementptr inbounds nuw i8, ptr %i.go, i64 32
  %i.gq = load ptr, ptr %i.gp, align 8, !noalias !47
  invoke void %i.gq(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %17, ptr noundef nonnull align 8 dereferenceable(72) %i.j, i1 noundef zeroext false)
          to label %bb.am unwind label %bb.ap, !noalias !47

bb.am:                                            ; preds = %.split41.us
  %i.gr = load ptr, ptr %1, align 8, !tbaa !39, !noalias !47, !nonnull !40, !align !41
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gr, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #18, !noalias !47
  %i.gt = load ptr, ptr %.us-phi42, align 8, !tbaa !104, !noalias !47
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gt, i64 24
  %i.gv = load i64, ptr %i.gu, align 8, !tbaa !110, !noalias !47
  store i64 %i.gv, ptr %i.h, align 8, !tbaa !82, !noalias !47
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #18, !noalias !125
  invoke void @_ZN5arrow8internal12JoinToStringIJRA9_KcRiRA29_S2_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA13_S2_RKlRA21_S2_RlRA15_S2_lEEESD_DpOT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %7, ptr noundef nonnull align 1 dereferenceable(9) @.str.8, ptr noundef nonnull align 4 dereferenceable(4) %i.f, ptr noundef nonnull align 1 dereferenceable(29) @.str.9, ptr noundef nonnull align 8 dereferenceable(32) %17, ptr noundef nonnull align 1 dereferenceable(13) @.str.10, ptr noundef nonnull align 8 dereferenceable(8) %i.gs, ptr noundef nonnull align 1 dereferenceable(21) @.str.11, ptr noundef nonnull align 8 dereferenceable(8) %i.g, ptr noundef nonnull align 1 dereferenceable(15) @.str.12, ptr noundef nonnull align 8 dereferenceable(8) %i.h)
          to label %.noexc93.i unwind label %bb.aq, !noalias !47

.noexc93.i:                                       ; preds = %bb.am
  invoke void @_ZN5arrow6StatusC1ENS_10StatusCodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8) %20, i8 noundef signext 4, ptr noundef nonnull align 8 dereferenceable(32) %7)
          to label %bb.an unwind label %bb.ao

bb.an:                                            ; preds = %.noexc93.i
  %i.gw = load ptr, ptr %7, align 8, !tbaa !88, !noalias !125 ; 2 uses
  %i.gx = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.gy = icmp eq ptr %i.gw, %i.gx
  br i1 %i.gy, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i92.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i91.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i91.i: ; preds = %bb.an
  %i.gz = load i64, ptr %i.gx, align 8, !tbaa !92, !noalias !125
  %i.ha = add i64 %i.gz, 1
  call void @_ZdlPvm(ptr noundef %i.gw, i64 noundef %i.ha) #19
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i92.i

bb.ao:                                            ; preds = %.noexc93.i
  %i.hb = landingpad { ptr, i32 }
          cleanup
  %i.hc = load ptr, ptr %7, align 8, !tbaa !88, !noalias !125 ; 2 uses
  %i.hd = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.he = icmp eq ptr %i.hc, %i.hd
  br i1 %i.he, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12.i.i.i: ; preds = %bb.ao
  %i.hf = load i64, ptr %i.hd, align 8, !tbaa !92, !noalias !125
  %i.hg = add i64 %i.hf, 1
  call void @_ZdlPvm(ptr noundef %i.hc, i64 noundef %i.hg) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14.i.i.i: ; preds = %bb.ao, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #18, !noalias !125
  br label %.body94.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i92.i: ; preds = %bb.an, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i91.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #18, !noalias !125
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #18, !noalias !47
  %i.hh = load ptr, ptr %17, align 8, !tbaa !88, !noalias !47 ; 2 uses
  %i.hi = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 2 uses
  %i.hj = icmp eq ptr %i.hh, %i.hi
  br i1 %i.hj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit98.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i96.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i96.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i92.i
  %i.hk = load i64, ptr %i.hi, align 8, !tbaa !92, !noalias !47
  %i.hl = add i64 %i.hk, 1
  call void @_ZdlPvm(ptr noundef %i.hh, i64 noundef %i.hl) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit98.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit98.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i92.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i96.i
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #18, !noalias !47
  br label %bb.at

bb.ap:                                            ; preds = %.split41.us
  %i.hm = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit101.i

bb.aq:                                            ; preds = %bb.am
  %i.hn = landingpad { ptr, i32 }
          cleanup
  br label %.body94.i

.body94.i:                                        ; preds = %bb.aq, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14.i.i.i
  %eh.lpad-body95.i = phi { ptr, i32 } [ %i.hn, %bb.aq ], [ %i.hb, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14.i.i.i ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #18, !noalias !47
  %i.ho = load ptr, ptr %17, align 8, !tbaa !88, !noalias !47 ; 2 uses
  %i.hp = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 2 uses
  %i.hq = icmp eq ptr %i.ho, %i.hp
  br i1 %i.hq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit101.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i99.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i99.i: ; preds = %.body94.i
  %i.hr = load i64, ptr %i.hp, align 8, !tbaa !92, !noalias !47
  %i.hs = add i64 %i.hr, 1
  call void @_ZdlPvm(ptr noundef %i.ho, i64 noundef %i.hs) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit101.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit101.i: ; preds = %.body94.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i99.i, %bb.ap
  %.pn33.i = phi { ptr, i32 } [ %i.hm, %bb.ap ], [ %eh.lpad-body95.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i99.i ], [ %eh.lpad-body95.i, %.body94.i ]
end_hunk_1
