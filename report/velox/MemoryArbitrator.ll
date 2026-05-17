inline.NumInlined: 2914
inline.NumDeleted: 1522
begin_hunk_0_@_ZNK8facebook5velox6memory16MemoryArbitrator5Stats8toStringB5cxx11Ev:bb.a
  %i.by = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44

bb.g:                                             ; preds = %bb.b
  %i.bz = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41

bb.h:                                             ; preds = %bb.c
  %i.ca = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38

bb.i:                                             ; preds = %bb.d
  %i.cb = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35

bb.j:                                             ; preds = %.noexc19
  %i.cc = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cd = load ptr, ptr %7, align 8, !tbaa !32    ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.cf = icmp eq ptr %i.cd, %i.ce
  br i1 %i.cf, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i33

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i33: ; preds = %bb.j
  %i.cg = load i64, ptr %i.ce, align 8, !tbaa !33
  %i.ch = add i64 %i.cg, 1
  call void @_ZdlPvm(ptr noundef %i.cd, i64 noundef %i.ch) #42
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35: ; preds = %bb.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i33, %bb.i
  %.pn = phi { ptr, i32 } [ %i.cb, %bb.i ], [ %i.cc, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i33 ], [ %i.cc, %bb.j ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #33
  %i.ci = load ptr, ptr %6, align 8, !tbaa !32    ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.ck = icmp eq ptr %i.ci, %i.cj
  br i1 %i.ck, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i36

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i36: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35
  %i.cl = load i64, ptr %i.cj, align 8, !tbaa !33
  %i.cm = add i64 %i.cl, 1
  call void @_ZdlPvm(ptr noundef %i.ci, i64 noundef %i.cm) #42
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i36, %bb.h
  %.pn.pn = phi { ptr, i32 } [ %i.ca, %bb.h ], [ %.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i36 ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #33
  %i.cn = load ptr, ptr %5, align 8, !tbaa !32    ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.cp = icmp eq ptr %i.cn, %i.co
  br i1 %i.cp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i39

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i39: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38
  %i.cq = load i64, ptr %i.co, align 8, !tbaa !33
  %i.cr = add i64 %i.cq, 1
  call void @_ZdlPvm(ptr noundef %i.cn, i64 noundef %i.cr) #42
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i39, %bb.g
  %.pn.pn.pn = phi { ptr, i32 } [ %i.bz, %bb.g ], [ %.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i39 ], [ %.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #33
  %i.cs = load ptr, ptr %4, align 8, !tbaa !32    ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.cu = icmp eq ptr %i.cs, %i.ct
  br i1 %i.cu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i42

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i42: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41
  %i.cv = load i64, ptr %i.ct, align 8, !tbaa !33
  %i.cw = add i64 %i.cv, 1
  call void @_ZdlPvm(ptr noundef %i.cs, i64 noundef %i.cw) #42
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i42, %bb.f
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %i.by, %bb.f ], [ %.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i42 ], [ %.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #33
  %i.cx = load ptr, ptr %3, align 8, !tbaa !32    ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.cz = icmp eq ptr %i.cx, %i.cy
  br i1 %i.cz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i45

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i45: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44
  %i.da = load i64, ptr %i.cy, align 8, !tbaa !33
  %i.db = add i64 %i.da, 1
  call void @_ZdlPvm(ptr noundef %i.cx, i64 noundef %i.db) #42
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i45
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #33
  resume { ptr, i32 } %.pn.pn.pn.pn
}

declare void @_ZN8facebook5velox13succinctBytesB5cxx11Emi(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, i64 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @_ZNK8facebook5velox6memory16MemoryArbitrator5StatsmiERKS3_(ptr dead_on_unwind noalias writable writeonly sret(%"struct.facebook::velox::memory::MemoryArbitrator::Stats") align 8 captures(none) initializes((0, 88)) %0, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(88) %1, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(88) %2) local_unnamed_addr #10 align 2 {
bb.a:
  %i.a = load i64, ptr %1, align 8, !tbaa !193
  %i.b = load i64, ptr %2, align 8, !tbaa !193
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.e = load <4 x i64>, ptr %i.c, align 8
  %i.f = load <4 x i64>, ptr %i.d, align 8
  %i.g = insertelement <4 x i64> <i64 poison, i64 0, i64 poison, i64 poison>, i64 %i.a, i64 0
  %i.h = shufflevector <4 x i64> %i.g, <4 x i64> %i.e, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.i = insertelement <4 x i64> <i64 poison, i64 0, i64 poison, i64 poison>, i64 %i.b, i64 0
  %i.j = shufflevector <4 x i64> %i.i, <4 x i64> %i.f, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.k = sub <4 x i64> %i.h, %i.j
  store <4 x i64> %i.k, ptr %0, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.p = load i64, ptr %i.o, align 8, !tbaa !200
  %i.q = load <4 x i64>, ptr %i.m, align 8
  %i.r = load <4 x i64>, ptr %i.l, align 8, !tbaa !73
  %i.s = insertelement <4 x i64> <i64 poison, i64 poison, i64 poison, i64 0>, i64 %i.p, i64 2
  %i.t = shufflevector <4 x i64> %i.q, <4 x i64> %i.s, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.u = sub <4 x i64> %i.r, %i.t
  store <4 x i64> %i.u, ptr %i.n, align 8, !tbaa !73
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.x = load <2 x i64>, ptr %i.v, align 8, !tbaa !73
  store <2 x i64> %i.x, ptr %i.w, align 8, !tbaa !73
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.z = load i64, ptr %i.y, align 8, !tbaa !204
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !204
  %i.ac = sub i64 %i.z, %i.ab
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i64 %i.ac, ptr %i.ad, align 8, !tbaa !204
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef zeroext i1 @_ZNK8facebook5velox6memory16MemoryArbitrator5StatseqERKS3_(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(88) %0, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(88) %1) local_unnamed_addr #11 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 0 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 0 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 0 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 0 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 0 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 0 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 0 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 0 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 0 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 0 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 0 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 0 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 0 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 0 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 0 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 0 uses
  %i.q = load i64, ptr %0, align 8, !tbaa !73
  %i.r = load i64, ptr %1, align 8, !tbaa !73
  %i.s = icmp eq i64 %i.q, %i.r
  br i1 %i.s, label %bb.b, label %_ZNSt15__tuple_compareISt5tupleIJRKmS2_S2_S2_S2_S2_S2_S2_S2_S2_EES3_Lm0ELm10EE4__eqERKS3_S6_.exit

bb.b:                                             ; preds = %bb.a
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 16
  %memcmp = tail call i32 @memcmp(ptr %i.t, ptr %i.u, i64 72)
  %i.v = icmp eq i32 %memcmp, 0
  br label %_ZNSt15__tuple_compareISt5tupleIJRKmS2_S2_S2_S2_S2_S2_S2_S2_S2_EES3_Lm0ELm10EE4__eqERKS3_S6_.exit

_ZNSt15__tuple_compareISt5tupleIJRKmS2_S2_S2_S2_S2_S2_S2_S2_S2_EES3_Lm0ELm10EE4__eqERKS3_S6_.exit: ; preds = %bb.a, %bb.b
  %i.w = phi i1 [ false, %bb.a ], [ %i.v, %bb.b ]
  ret i1 %i.w
}

; Function Attrs: mustprogress uwtable
define range(i8 -1, 2) i8 @_ZNK8facebook5velox6memory16MemoryArbitrator5StatsssERKS3_(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(88) %0, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(88) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.fmt::v11::detail::format_arg_store.503", align 16 ; 5 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %i.a = load i64, ptr %0, align 8, !tbaa !193    ; 2 uses
  %i.b = load i64, ptr %1, align 8, !tbaa !193    ; 2 uses
  %i.c = icmp ult i64 %i.a, %i.b                  ; 2 uses
  %i.d = icmp ugt i64 %i.a, %i.b                  ; 2 uses
  %.046 = zext i1 %i.c to i32
  %.0 = zext i1 %i.d to i32
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load i64, ptr %i.e, align 8, !tbaa !196  ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.h = load i64, ptr %i.g, align 8, !tbaa !196  ; 2 uses
  %i.i = icmp ult i64 %i.f, %i.h
  %i.j = select i1 %i.c, i32 2, i32 1
  %.not = icmp ugt i64 %i.f, %i.h
  %i.k = select i1 %i.d, i32 2, i32 1
  %.147 = select i1 %i.i, i32 %i.j, i32 %.046
  %.1 = select i1 %.not, i32 %i.k, i32 %.0
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.m = load i64, ptr %i.l, align 8, !tbaa !197  ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.o = load i64, ptr %i.n, align 8, !tbaa !197  ; 2 uses
  %i.p = icmp ult i64 %i.m, %i.o
  %i.q = icmp ugt i64 %i.m, %i.o
  %i.r = zext i1 %i.p to i32
  %.248 = add nuw nsw i32 %.147, %i.r
  %spec.select54 = zext i1 %i.q to i32
  %.2 = add nuw nsw i32 %.1, %spec.select54
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 32
  %4 = load i64, ptr %i.s, align 8, !tbaa !198    ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.u = load i64, ptr %i.t, align 8, !tbaa !198  ; 2 uses
  %5 = icmp ult i64 %4, %i.u
  %6 = icmp ugt i64 %4, %i.u
  %7 = zext i1 %5 to i32
  %.349 = add nuw nsw i32 %.248, %7
  %spec.select55 = zext i1 %6 to i32
  %.3 = add nuw nsw i32 %.2, %spec.select55
  %8 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %9 = load i64, ptr %8, align 8, !tbaa !199      ; 2 uses
  %10 = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.v = load i64, ptr %10, align 8, !tbaa !199   ; 2 uses
  %11 = icmp ult i64 %9, %i.v
  %12 = icmp ugt i64 %9, %i.v
  %13 = zext i1 %11 to i32
  %.450 = add nuw nsw i32 %.349, %13
  %spec.select56 = zext i1 %12 to i32
  %.4 = add nuw nsw i32 %.3, %spec.select56
  %14 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %15 = load i64, ptr %14, align 8, !tbaa !200    ; 2 uses
  %16 = getelementptr inbounds nuw i8, ptr %1, i64 48
  %17 = load i64, ptr %16, align 8, !tbaa !200    ; 2 uses
  %18 = icmp ult i64 %15, %17
  %i.w = icmp ugt i64 %15, %17
  %19 = zext i1 %18 to i32
  %.551 = add nuw nsw i32 %.450, %19
  %spec.select57 = zext i1 %i.w to i32
  %.5 = add nuw nsw i32 %.4, %spec.select57
  %20 = getelementptr inbounds nuw i8, ptr %0, i64 80
  %21 = load i64, ptr %20, align 8, !tbaa !204    ; 2 uses
  %22 = getelementptr inbounds nuw i8, ptr %1, i64 80
  %23 = load i64, ptr %22, align 8, !tbaa !204    ; 2 uses
  %24 = icmp ult i64 %21, %23
  %25 = icmp ugt i64 %21, %23
  %26 = zext i1 %24 to i32
  %.652 = add nuw nsw i32 %.551, %26              ; 2 uses
  %spec.select58 = zext i1 %25 to i32
  %.6 = add nuw nsw i32 %.5, %spec.select58       ; 2 uses
  %i.x = icmp ne i32 %.6, 0                       ; 2 uses
  %i.y = icmp ne i32 %.652, 0                     ; 2 uses
  %i.z = select i1 %i.x, i1 %i.y, i1 false
  br i1 %i.z, label %bb.b, label %bb.e, !prof !42

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #33, !noalias !208
  store i32 %.6, ptr %2, align 16, !tbaa !33, !noalias !208
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i32 %.652, ptr %i.aa, align 16, !tbaa !33, !noalias !208
  call void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr nonnull @.str.18, i64 21, i64 34, ptr nonnull %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #33, !noalias !208
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKNS1_18VeloxCheckFailArgsET0_NS0_24CompileTimeStringLiteralE(ptr noundef nonnull align 8 dereferenceable(56) @_ZZNK8facebook5velox6memory16MemoryArbitrator5StatsssERKS3_E18veloxCheckFailArgs, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr nonnull @.str.18) #41
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.ab = landingpad { ptr, i32 }
          cleanup
  %i.ac = load ptr, ptr %3, align 8, !tbaa !32    ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.ae = icmp eq ptr %i.ac, %i.ad
  br i1 %i.ae, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.d
  %i.af = load i64, ptr %i.ad, align 8, !tbaa !33
  %i.ag = add i64 %i.af, 1
  call void @_ZdlPvm(ptr noundef %i.ac, i64 noundef %i.ag) #42
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #33
  resume { ptr, i32 } %i.ab

bb.e:                                             ; preds = %bb.a
  %_ZNSt15strong_ordering7greaterE._ZNSt15strong_ordering5equalE.val = zext i1 %i.x to i8
  %.sroa.0.0.copyload = select i1 %i.y, i8 -1, i8 %_ZNSt15strong_ordering7greaterE._ZNSt15strong_ordering5equalE.val
  ret i8 %.sroa.0.0.copyload
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress uwtable
define void @_ZN8facebook5velox6memory24MemoryArbitrationContextC2EPKNS1_10MemoryPoolE(ptr noundef nonnull align 8 dereferenceable(40) initializes((0, 4)) %0, ptr noundef %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store i32 0, ptr %0, align 8, !tbaa !211
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %1, align 8, !tbaa !16
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = tail call noundef nonnull align 8 dereferenceable(32) ptr %i.d(ptr noundef nonnull align 8 dereferenceable(264) %1) ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  store ptr %i.f, ptr %i.a, align 8, !tbaa !214
  %i.g = load ptr, ptr %i.e, align 8, !tbaa !32   ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.i = load i64, ptr %i.h, align 8, !tbaa !7    ; 8 uses
  %i.j = icmp ugt i64 %i.i, 15
  br i1 %i.j, label %bb.b, label %._crit_edge.i.i

bb.b:                                             ; preds = %bb.a
  %i.k = icmp slt i64 %i.i, 0
  br i1 %i.k, label %.noexc.i, label %bb.c

.noexc.i:                                         ; preds = %bb.b
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.44) #41
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.l = add nuw i64 %i.i, 1                      ; 2 uses
  %i.m = icmp slt i64 %i.l, 0
  br i1 %i.m, label %.noexc6.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i, !prof !42

.noexc6.i:                                        ; preds = %bb.c
  tail call void @_ZSt17__throw_bad_allocv() #41
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i: ; preds = %bb.c
  %i.n = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.l) #40 ; 2 uses
  store ptr %i.n, ptr %i.a, align 8, !tbaa !32
  store i64 %i.i, ptr %i.f, align 8, !tbaa !33
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i, %bb.a
  %i.o = phi ptr [ %i.n, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i ], [ %i.f, %bb.a ] ; 3 uses
  switch i64 %i.i, label %bb.e [
    i64 1, label %bb.d
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  ]

bb.d:                                             ; preds = %._crit_edge.i.i
  %i.p = load i8, ptr %i.g, align 1, !tbaa !33
  store i8 %i.p, ptr %i.o, align 1, !tbaa !33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

bb.e:                                             ; preds = %._crit_edge.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.o, ptr align 1 %i.g, i64 %i.i, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit: ; preds = %._crit_edge.i.i, %bb.d, %bb.e
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.i, ptr %i.q, align 8, !tbaa !7
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.i
  store i8 0, ptr %i.r, align 1, !tbaa !33
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN8facebook5velox6memory24MemoryArbitrationContext8typeNameB5cxx11ENS2_4TypeE(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, i32 noundef %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.fmt::v11::detail::format_arg_store.504", align 16 ; 4 uses
  switch i32 %1, label %bb.b [
    i32 0, label %._crit_edge.i.i
    i32 1, label %._crit_edge.i.i7
  ]

._crit_edge.i.i:                                  ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.a, ptr %0, align 8, !tbaa !214
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(5) %i.a, ptr noundef nonnull align 1 dereferenceable(5) @.str.19, i64 5, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 5, ptr %i.b, align 8, !tbaa !7
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 21
  store i8 0, ptr %i.c, align 1, !tbaa !33
  br label %bb.c

._crit_edge.i.i7:                                 ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.d, ptr %0, align 8, !tbaa !214
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(6) %i.d, ptr noundef nonnull align 1 dereferenceable(6) @.str.20, i64 6, i1 false)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 6, ptr %i.e, align 8, !tbaa !7
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 22
  store i8 0, ptr %i.f, align 2, !tbaa !33
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #33, !noalias !215
  store i32 %1, ptr %2, align 16, !tbaa !33, !noalias !215
  call void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr nonnull @.str.21, i64 10, i64 1, ptr nonnull %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #33, !noalias !215
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %._crit_edge.i.i7, %._crit_edge.i.i
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN8facebook5velox6memory30ScopedMemoryArbitrationContextC2EPKNS1_10MemoryPoolE(ptr noundef nonnull align 8 dereferenceable(48) initializes((0, 8)) %0, ptr noundef %1) unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZN8facebook5velox6memory12_GLOBAL__N_114arbitrationCtxE) ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !65
  store ptr %i.b, ptr %0, align 8, !tbaa !218
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  tail call void @_ZN8facebook5velox6memory24MemoryArbitrationContextC1EPKNS1_10MemoryPoolE(ptr noundef nonnull align 8 dereferenceable(40) %i.c, ptr noundef %1)
  store ptr %i.c, ptr %i.a, align 8, !tbaa !65
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare nonnull ptr @llvm.threadlocal.address.p0(ptr nonnull) #12

; Function Attrs: mustprogress uwtable
define void @_ZN8facebook5velox6memory30ScopedMemoryArbitrationContextC2EPKNS1_24MemoryArbitrationContextE(ptr noundef nonnull align 8 dereferenceable(48) initializes((0, 12)) %0, ptr noundef readonly captures(none) %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZN8facebook5velox6memory12_GLOBAL__N_114arbitrationCtxE) ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !65
  store ptr %i.b, ptr %0, align 8, !tbaa !218
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = load i32, ptr %1, align 8, !tbaa !211
  store i32 %i.d, ptr %i.c, align 8, !tbaa !211
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  store ptr %i.g, ptr %i.e, align 8, !tbaa !214
  %i.h = load ptr, ptr %i.f, align 8, !tbaa !32   ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.j = load i64, ptr %i.i, align 8, !tbaa !7    ; 8 uses
  %i.k = icmp ugt i64 %i.j, 15
  br i1 %i.k, label %bb.b, label %._crit_edge.i.i.i

bb.b:                                             ; preds = %bb.a
  %i.l = icmp slt i64 %i.j, 0
  br i1 %i.l, label %.noexc.i.i, label %bb.c

.noexc.i.i:                                       ; preds = %bb.b
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.44) #41
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.m = add nuw i64 %i.j, 1                      ; 2 uses
  %i.n = icmp slt i64 %i.m, 0
  br i1 %i.n, label %.noexc6.i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i, !prof !42

.noexc6.i.i:                                      ; preds = %bb.c
  tail call void @_ZSt17__throw_bad_allocv() #41
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i: ; preds = %bb.c
  %i.o = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.m) #40 ; 2 uses
  store ptr %i.o, ptr %i.e, align 8, !tbaa !32
  store i64 %i.j, ptr %i.g, align 8, !tbaa !33
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i, %bb.a
  %i.p = phi ptr [ %i.o, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i ], [ %i.g, %bb.a ] ; 3 uses
  switch i64 %i.j, label %bb.e [
    i64 1, label %bb.d
end_hunk_0
begin_hunk_1_@_ZN5folly6detail11MemoryIdler16futexWaitPreIdleISt6atomicIjENSt6chrono10time_pointINS5_3_V212steady_clockENS5_8durationIlSt5ratioILl1ELl1000000000EEEEEESC_EEbRNS0_11FutexResultERT_jRKT0_jT1_mf:bb.a
bb.c:                                             ; preds = %bb.b
  %i.c = tail call noundef i64 @_ZN5folly18getCurrentThreadIDEv() ; 2 uses
  %i.d = tail call i64 @_ZNSt6chrono3_V212system_clock3nowEv() #33
  %i.e = xor i64 %i.d, %i.c
  %i.f = mul i64 %i.e, -7070675565921424023       ; 2 uses
  %i.g = lshr i64 %i.f, 47
  %i.h = xor i64 %i.c, %i.g
  %i.i = xor i64 %i.h, %i.f
  %i.j = mul i64 %i.i, -7070675565921424023       ; 2 uses
  %i.k = lshr i64 %i.j, 47
  %i.l = xor i64 %i.k, %i.j                       ; 2 uses
  %i.m = mul i64 %i.l, -7070675565921424023
  %i.n = xor i64 %i.m, -1
  %i.o = mul i64 %i.l, 4692019660866977792
  %i.p = add i64 %i.o, %i.n                       ; 2 uses
  %i.q = lshr i64 %i.p, 24
  %i.r = xor i64 %i.q, %i.p
  %i.s = mul i64 %i.r, 265                        ; 2 uses
  %i.t = lshr i64 %i.s, 14
  %i.u = xor i64 %i.t, %i.s
  %i.v = mul i64 %i.u, 21                         ; 2 uses
  %i.w = lshr i64 %i.v, 28
  %i.x = xor i64 %i.w, %i.v
  %i.y = mul i64 %i.x, 2147483649
  %i.z = fmul float %7, f0x1F800000
  %i.aa = uitofp i64 %i.y to float
  %i.ab = fmul float %i.z, %i.aa
  %i.ac = uitofp nneg i64 %5 to float
  %i.ad = fadd float %i.ab, 1.000000e+00
  %i.ae = fmul float %i.ad, %i.ac
  %i.af = fptoui float %i.ae to i64
  %i.ag = tail call i64 @llvm.smax.i64(i64 %i.af, i64 0)
  br label %_ZN5folly6detail11MemoryIdler19getVariationTimeoutINSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEEEET_RKS8_f.exit

_ZN5folly6detail11MemoryIdler19getVariationTimeoutINSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEEEET_RKS8_f.exit: ; preds = %bb.c, %bb.b
  %.sroa.031.0 = phi i64 [ %5, %bb.b ], [ %i.ag, %bb.c ] ; 2 uses
  %.not42 = icmp eq i64 %.sroa.031.0, 0
  br i1 %.not42, label %bb.f, label %bb.d

bb.d:                                             ; preds = %_ZN5folly6detail11MemoryIdler19getVariationTimeoutINSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEEEET_RKS8_f.exit
  %i.ah = tail call i64 @_ZNSt6chrono3_V212steady_clock3nowEv() #33
  %i.ai = add nsw i64 %i.ah, %.sroa.031.0         ; 2 uses
  %.sroa.0.0.copyload.i2.i = load i64, ptr %3, align 8, !tbaa !73
  %i.aj = icmp slt i64 %i.ai, %.sroa.0.0.copyload.i2.i
  br i1 %i.aj, label %_ZN5folly6detail14futexWaitUntilISt6atomicIjENSt6chrono3_V212steady_clockENS4_8durationIlSt5ratioILl1ELl1000000000EEEEEENS0_11FutexResultEPKT_jRKNS4_10time_pointIT0_T1_EEj.exit, label %.thread

_ZN5folly6detail14futexWaitUntilISt6atomicIjENSt6chrono3_V212steady_clockENS4_8durationIlSt5ratioILl1ELl1000000000EEEEEENS0_11FutexResultEPKT_jRKNS4_10time_pointIT0_T1_EEj.exit: ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #33
  store i64 %i.ai, ptr %8, align 8
  %i.ak = call noundef i32 @_ZN5folly6detail13futexWaitImplEPKSt6atomicIjEjPKNSt6chrono10time_pointINS5_3_V212system_clockENS5_8durationIlSt5ratioILl1ELl1000000000EEEEEEPKNS6_INS7_12steady_clockESC_EEj(ptr noundef nonnull %1, i32 noundef %2, ptr noundef null, ptr noundef nonnull align 8 dereferenceable(8) %8, i32 noundef %4) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #33
  %.not = icmp eq i32 %i.ak, 3
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_ZN5folly6detail14futexWaitUntilISt6atomicIjENSt6chrono3_V212steady_clockENS4_8durationIlSt5ratioILl1ELl1000000000EEEEEENS0_11FutexResultEPKT_jRKNS4_10time_pointIT0_T1_EEj.exit
  store i32 %i.ak, ptr %0, align 4, !tbaa !819
  br label %.thread

bb.f:                                             ; preds = %_ZN5folly6detail14futexWaitUntilISt6atomicIjENSt6chrono3_V212steady_clockENS4_8durationIlSt5ratioILl1ELl1000000000EEEEEENS0_11FutexResultEPKT_jRKNS4_10time_pointIT0_T1_EEj.exit, %_ZN5folly6detail11MemoryIdler19getVariationTimeoutINSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEEEET_RKS8_f.exit
  call void @_ZN5folly6detail11MemoryIdler22flushLocalMallocCachesEv()
  call void @_ZN5folly6detail11MemoryIdler16unmapUnusedStackEm(i64 noundef %6)
  br label %.thread

.thread:                                          ; preds = %bb.d, %bb.e, %bb.a, %bb.f
  %.2 = phi i1 [ false, %bb.a ], [ false, %bb.f ], [ true, %bb.e ], [ false, %bb.d ]
  ret i1 %.2
}

declare void @_ZN5folly6detail11MemoryIdler22flushLocalMallocCachesEv() local_unnamed_addr #7

declare void @_ZN5folly6detail11MemoryIdler16unmapUnusedStackEm(i64 noundef) local_unnamed_addr #7

declare noundef i64 @_ZN5folly18getCurrentThreadIDEv() local_unnamed_addr #7

; Function Attrs: nounwind
declare i64 @_ZNSt6chrono3_V212system_clock3nowEv() local_unnamed_addr #17

; Function Attrs: mustprogress uwtable
define internal noundef zeroext i1 @"_ZNSt17_Function_handlerIFbPN8facebook5velox6memory10MemoryPoolEEZNKS2_15MemoryReclaimer16reclaimableBytesERKS3_RmE3$_0E9_M_invokeERKSt9_Any_dataOS4_"(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(8) %1) #0 align 2 {
bb.a:
  %.val = load ptr, ptr %1, align 8, !tbaa !822   ; 2 uses
  %i.a = load ptr, ptr %.val, align 8, !tbaa !16
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 304
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call { i64, i8 } %i.c(ptr noundef nonnull align 8 dereferenceable(264) %.val), !inline_history !823 ; 2 uses
  %i.e = extractvalue { i64, i8 } %i.d, 0
  %i.f = extractvalue { i64, i8 } %i.d, 1         ; 2 uses
  %i.g = trunc nuw i8 %i.f to i1
  %i.h = load ptr, ptr %0, align 8, !tbaa !824, !nonnull !77 ; 2 uses
  %i.i = load i8, ptr %i.h, align 1, !tbaa !74, !range !76, !noundef !77
  %i.j = and i8 %i.f, 1
  %i.k = or i8 %i.i, %i.j
  store i8 %i.k, ptr %i.h, align 1, !tbaa !74
  %.0.i.i.i.i = select i1 %i.g, i64 %i.e, i64 0
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !826, !nonnull !77, !align !373 ; 2 uses
  %i.n = load i64, ptr %i.m, align 8, !tbaa !73
  %i.o = add i64 %i.n, %.0.i.i.i.i
  store i64 %i.o, ptr %i.m, align 8, !tbaa !73
  ret i1 true
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal noundef zeroext i1 @"_ZNSt17_Function_handlerIFbPN8facebook5velox6memory10MemoryPoolEEZNKS2_15MemoryReclaimer16reclaimableBytesERKS3_RmE3$_0E10_M_managerERSt9_Any_dataRKSC_St18_Manager_operation"(ptr noundef nonnull writeonly align 8 captures(none) dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) #10 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  switch i32 %2, label %"_ZNSt14_Function_base13_Base_managerIZNK8facebook5velox6memory15MemoryReclaimer16reclaimableBytesERKNS3_10MemoryPoolERmE3$_0E10_M_managerERSt9_Any_dataRKSB_St18_Manager_operation.exit" [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  store ptr @"_ZTIZNK8facebook5velox6memory15MemoryReclaimer16reclaimableBytesERKNS1_10MemoryPoolERmE3$_0", ptr %0, align 8, !tbaa !337
  br label %"_ZNSt14_Function_base13_Base_managerIZNK8facebook5velox6memory15MemoryReclaimer16reclaimableBytesERKNS3_10MemoryPoolERmE3$_0E10_M_managerERSt9_Any_dataRKSB_St18_Manager_operation.exit"

bb.c:                                             ; preds = %bb.a
  store ptr %1, ptr %0, align 8, !tbaa !57
  br label %"_ZNSt14_Function_base13_Base_managerIZNK8facebook5velox6memory15MemoryReclaimer16reclaimableBytesERKNS3_10MemoryPoolERmE3$_0E10_M_managerERSt9_Any_dataRKSB_St18_Manager_operation.exit"

bb.d:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull readonly align 8 dereferenceable(16) %1, i64 16, i1 false), !tbaa.struct !827
  br label %"_ZNSt14_Function_base13_Base_managerIZNK8facebook5velox6memory15MemoryReclaimer16reclaimableBytesERKNS3_10MemoryPoolERmE3$_0E10_M_managerERSt9_Any_dataRKSB_St18_Manager_operation.exit"

"_ZNSt14_Function_base13_Base_managerIZNK8facebook5velox6memory15MemoryReclaimer16reclaimableBytesERKNS3_10MemoryPoolERmE3$_0E10_M_managerERSt9_Any_dataRKSB_St18_Manager_operation.exit": ; preds = %bb.a, %bb.d, %bb.c, %bb.b
  ret i1 false
}

; Function Attrs: mustprogress uwtable
define internal noundef zeroext i1 @"_ZNSt17_Function_handlerIFbPN8facebook5velox6memory10MemoryPoolEEZNS2_15MemoryReclaimer5abortES4_RKNSt15__exception_ptr13exception_ptrEE3$_0E9_M_invokeERKSt9_Any_dataOS4_"(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(8) %1) #0 align 2 {
bb.a:
  %.val = load ptr, ptr %1, align 8, !tbaa !822   ; 3 uses
  %i.a = load ptr, ptr %.val, align 8, !tbaa !16
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 296
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call noundef ptr %i.c(ptr noundef nonnull align 8 dereferenceable(264) %.val), !inline_history !828 ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i, label %"_ZSt10__invoke_rIbRZN8facebook5velox6memory15MemoryReclaimer5abortEPNS2_10MemoryPoolERKNSt15__exception_ptr13exception_ptrEE3$_0JS5_EENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESD_E4typeEOSE_DpOSF_.exit", label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %0, align 8, !tbaa !829, !nonnull !77, !align !373
  %i.f = load ptr, ptr %i.d, align 8, !tbaa !16
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 56
  %i.h = load ptr, ptr %i.g, align 8
  tail call void %i.h(ptr noundef nonnull align 8 dereferenceable(12) %i.d, ptr noundef nonnull %.val, ptr noundef nonnull align 8 dereferenceable(8) %i.e), !inline_history !828
  br label %"_ZSt10__invoke_rIbRZN8facebook5velox6memory15MemoryReclaimer5abortEPNS2_10MemoryPoolERKNSt15__exception_ptr13exception_ptrEE3$_0JS5_EENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESD_E4typeEOSE_DpOSF_.exit"

"_ZSt10__invoke_rIbRZN8facebook5velox6memory15MemoryReclaimer5abortEPNS2_10MemoryPoolERKNSt15__exception_ptr13exception_ptrEE3$_0JS5_EENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESD_E4typeEOSE_DpOSF_.exit": ; preds = %bb.a, %bb.b
  ret i1 true
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal noundef zeroext i1 @"_ZNSt17_Function_handlerIFbPN8facebook5velox6memory10MemoryPoolEEZNS2_15MemoryReclaimer5abortES4_RKNSt15__exception_ptr13exception_ptrEE3$_0E10_M_managerERSt9_Any_dataRKSD_St18_Manager_operation"(ptr noundef nonnull writeonly align 8 captures(none) dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) #10 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  switch i32 %2, label %"_ZNSt14_Function_base13_Base_managerIZN8facebook5velox6memory15MemoryReclaimer5abortEPNS3_10MemoryPoolERKNSt15__exception_ptr13exception_ptrEE3$_0E10_M_managerERSt9_Any_dataRKSD_St18_Manager_operation.exit" [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  store ptr @"_ZTIZN8facebook5velox6memory15MemoryReclaimer5abortEPNS1_10MemoryPoolERKNSt15__exception_ptr13exception_ptrEE3$_0", ptr %0, align 8, !tbaa !337
  br label %"_ZNSt14_Function_base13_Base_managerIZN8facebook5velox6memory15MemoryReclaimer5abortEPNS3_10MemoryPoolERKNSt15__exception_ptr13exception_ptrEE3$_0E10_M_managerERSt9_Any_dataRKSD_St18_Manager_operation.exit"

bb.c:                                             ; preds = %bb.a
  store ptr %1, ptr %0, align 8, !tbaa !57
  br label %"_ZNSt14_Function_base13_Base_managerIZN8facebook5velox6memory15MemoryReclaimer5abortEPNS3_10MemoryPoolERKNSt15__exception_ptr13exception_ptrEE3$_0E10_M_managerERSt9_Any_dataRKSD_St18_Manager_operation.exit"

bb.d:                                             ; preds = %bb.a
  %.val.i = load i64, ptr %1, align 8, !tbaa !191
  store i64 %.val.i, ptr %0, align 8, !tbaa !191
  br label %"_ZNSt14_Function_base13_Base_managerIZN8facebook5velox6memory15MemoryReclaimer5abortEPNS3_10MemoryPoolERKNSt15__exception_ptr13exception_ptrEE3$_0E10_M_managerERSt9_Any_dataRKSD_St18_Manager_operation.exit"

"_ZNSt14_Function_base13_Base_managerIZN8facebook5velox6memory15MemoryReclaimer5abortEPNS3_10MemoryPoolERKNSt15__exception_ptr13exception_ptrEE3$_0E10_M_managerERSt9_Any_dataRKSD_St18_Manager_operation.exit": ; preds = %bb.a, %bb.d, %bb.c, %bb.b
  ret i1 false
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #37

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #38

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #39

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #38

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #38

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #38

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #38

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: read)
declare i32 @memcmp(ptr captures(none), ptr captures(none), i64) #39

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #3 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #5 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #6 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #7 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #8 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #12 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #13 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: write, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #14 = { mustprogress nofree nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #15 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #16 = { cold nofree noreturn }
attributes #17 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #18 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #19 = { nofree nounwind }
attributes #20 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #21 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #22 = { cold noreturn }
attributes #23 = { mustprogress noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #24 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #25 = { mustprogress noreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #26 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #27 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #28 = { mustprogress noinline uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #29 = { inlinehint mustprogress noreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #30 = { cold mustprogress noinline noreturn optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #31 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #32 = { cold "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #33 = { nounwind }
attributes #34 = { cold nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #35 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #36 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #37 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #38 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #39 = { nocallback nofree nounwind willreturn memory(argmem: read) }
attributes #40 = { builtin allocsize(0) }
attributes #41 = { noreturn }
attributes #42 = { builtin nounwind }
attributes #43 = { noreturn nounwind }
attributes #44 = { nounwind willreturn memory(read) }
attributes #45 = { nounwind willreturn memory(none) }
attributes #46 = { cold }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!3 = !{!4, !4, i64 0}
!4 = !{!"int", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C++ TBAA"}
!7 = !{!8, !12, i64 8}
!8 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !9, i64 0, !12, i64 8, !5, i64 16}
!9 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !10, i64 0}
!10 = !{!"p1 omnipotent char", !11, i64 0}
!11 = !{!"any pointer", !5, i64 0}
!12 = !{!"long", !5, i64 0}
!13 = !{!14}
!14 = distinct !{!14, !15, !"_ZSt11make_uniqueIN8facebook5velox6memory12_GLOBAL__N_114NoopArbitratorEJRKNS2_16MemoryArbitrator6ConfigEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_: argument 0"}
!15 = distinct !{!15, !"_ZSt11make_uniqueIN8facebook5velox6memory12_GLOBAL__N_114NoopArbitratorEJRKNS2_16MemoryArbitrator6ConfigEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_"}
!16 = !{!17, !17, i64 0}
!17 = !{!"vtable pointer", !6, i64 0}
!18 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!19 = !{!20, !12, i64 40}
!20 = !{!"_ZTSN8facebook5velox6memory16MemoryArbitratorE", !21, i64 8}
!21 = !{!"_ZTSN8facebook5velox6memory16MemoryArbitrator6ConfigE", !8, i64 0, !12, i64 32, !22, i64 40, !24, i64 72}
!22 = !{!"_ZTSSt8functionIFvRN8facebook5velox6memory10MemoryPoolEEE", !23, i64 0, !11, i64 24}
!23 = !{!"_ZTSSt14_Function_base", !5, i64 0, !11, i64 16}
!24 = !{!"_ZTSSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_S5_EEE", !25, i64 0}
!25 = !{!"_ZTSSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE", !26, i64 0, !12, i64 8, !28, i64 16, !12, i64 24, !30, i64 32, !29, i64 48}
!26 = !{!"p2 _ZTSNSt8__detail15_Hash_node_baseE", !27, i64 0}
!27 = !{!"any p2 pointer", !11, i64 0}
!28 = !{!"_ZTSNSt8__detail15_Hash_node_baseE", !29, i64 0}
!29 = !{!"p1 _ZTSNSt8__detail15_Hash_node_baseE", !11, i64 0}
!30 = !{!"_ZTSNSt8__detail20_Prime_rehash_policyE", !31, i64 0, !12, i64 8}
!31 = !{!"float", !5, i64 0}
!32 = !{!8, !10, i64 0}
!33 = !{!5, !5, i64 0}
!34 = !{!35, !36, i64 0}
!35 = !{!"_ZTSSt10_Head_baseILm0EPN8facebook5velox6memory16MemoryArbitratorELb0EE", !36, i64 0}
!36 = !{!"p1 _ZTSN8facebook5velox6memory16MemoryArbitratorE", !11, i64 0}
!37 = !{!"branch_weights", i32 1, i32 1048575}
!38 = !{!39, !26, i64 0}
!39 = !{!"_ZTSSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St8functionIFSt10unique_ptrIN8facebook5velox6memory16MemoryArbitratorESt14default_deleteISD_EERKNSD_6ConfigEEEESaISM_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSO_18_Mod_range_hashingENSO_20_Default_ranged_hashENSO_20_Prime_rehash_policyENSO_17_Hashtable_traitsILb1ELb0ELb1EEEE", !26, i64 0, !12, i64 8, !28, i64 16, !12, i64 24, !30, i64 32, !29, i64 48}
!40 = !{!39, !12, i64 8}
!41 = !{!30, !31, i64 0}
!42 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!43 = !{!44}
!44 = distinct !{!44, !45, !"_ZN8facebook5velox12errorMessageIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEES7_N3fmt3v1117basic_string_viewIcEEDpRKT_: argument 0"}
!45 = distinct !{!45, !"_ZN8facebook5velox12errorMessageIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEES7_N3fmt3v1117basic_string_viewIcEEDpRKT_"}
!46 = !{!23, !11, i64 16}
!47 = !{!48}
!48 = distinct !{!48, !49, !"_ZNKSt8functionIFSt10unique_ptrIN8facebook5velox6memory16MemoryArbitratorESt14default_deleteIS4_EERKNS4_6ConfigEEEclESA_: argument 0"}
!49 = distinct !{!49, !"_ZNKSt8functionIFSt10unique_ptrIN8facebook5velox6memory16MemoryArbitratorESt14default_deleteIS4_EERKNS4_6ConfigEEEclESA_"}
!50 = !{!51, !11, i64 24}
!51 = !{!"_ZTSSt8functionIFSt10unique_ptrIN8facebook5velox6memory16MemoryArbitratorESt14default_deleteIS4_EERKNS4_6ConfigEEE", !23, i64 0, !11, i64 24}
!52 = distinct !{null}
!53 = !{i64 0, i64 16, !33}
!54 = !{!55}
!55 = distinct !{!55, !56, !"_ZN8facebook5velox12errorMessageIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEES7_N3fmt3v1117basic_string_viewIcEEDpRKT_: argument 0"}
!56 = distinct !{!56, !"_ZN8facebook5velox12errorMessageIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEES7_N3fmt3v1117basic_string_viewIcEEDpRKT_"}
!57 = !{!11, !11, i64 0}
!58 = !{!59}
!59 = distinct !{!59, !60, !"_ZN8facebook5velox12errorMessageIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEES7_N3fmt3v1117basic_string_viewIcEEDpRKT_: argument 0"}
!60 = distinct !{!60, !"_ZN8facebook5velox12errorMessageIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEES7_N3fmt3v1117basic_string_viewIcEEDpRKT_"}
!61 = !{!62, !4, i64 8}
!62 = !{!"_ZTSN8facebook5velox6memory15MemoryReclaimerE", !4, i64 8}
!63 = !{!64, !64, i64 0}
!64 = !{!"p1 _ZTSN8facebook5velox6memory15MemoryReclaimerE", !11, i64 0}
!65 = !{!66, !66, i64 0}
!66 = !{!"p1 _ZTSN8facebook5velox6memory24MemoryArbitrationContextE", !11, i64 0}
!67 = !{!68, !11, i64 24}
!68 = !{!"_ZTSSt8functionIFlvEE", !23, i64 0, !11, i64 24}
!69 = distinct !{null}
!70 = !{!71}
!71 = distinct !{!71, !72, !"_ZN8facebook5velox12errorMessageIJliEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN3fmt3v1117basic_string_viewIcEEDpRKT_: argument 0"}
!72 = distinct !{!72, !"_ZN8facebook5velox12errorMessageIJliEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN3fmt3v1117basic_string_viewIcEEDpRKT_"}
!73 = !{!12, !12, i64 0}
!74 = !{!75, !75, i64 0}
!75 = !{!"bool", !5, i64 0}
!76 = !{i8 0, i8 2}
!77 = !{}
!78 = !{!79}
!79 = distinct !{!79, !80, !"_ZN5folly9SingletonIN8facebook5velox17BaseStatsReporterENS_6detail10DefaultTagES5_E12try_get_fastEv: argument 0"}
!80 = distinct !{!80, !"_ZN5folly9SingletonIN8facebook5velox17BaseStatsReporterENS_6detail10DefaultTagES5_E12try_get_fastEv"}
!81 = !{!82}
!82 = distinct !{!82, !83, !"_ZN5folly6detail15SingletonHolderIN8facebook5velox17BaseStatsReporterEE12try_get_fastEv: argument 0"}
!83 = distinct !{!83, !"_ZN5folly6detail15SingletonHolderIN8facebook5velox17BaseStatsReporterEE12try_get_fastEv"}
!84 = !{!82, !79}
!85 = distinct !{null, null}
!86 = !{!87}
!87 = distinct !{!87, !88, !"_ZN5folly17ReadMostlyWeakPtrIN8facebook5velox17BaseStatsReporterENS_10TLRefCountEE4lockEv: argument 0"}
!88 = distinct !{!88, !"_ZN5folly17ReadMostlyWeakPtrIN8facebook5velox17BaseStatsReporterENS_10TLRefCountEE4lockEv"}
!89 = !{!87, !82, !79}
!90 = !{!91, !92, i64 0}
!91 = !{!"_ZTSN5folly17ReadMostlyWeakPtrIN8facebook5velox17BaseStatsReporterENS_10TLRefCountEEE", !92, i64 0, !93, i64 8}
!92 = !{!"p1 _ZTSN5folly6detail23ReadMostlySharedPtrCoreINS_10TLRefCountEEE", !11, i64 0}
!93 = !{!"p1 _ZTSN8facebook5velox17BaseStatsReporterE", !11, i64 0}
!94 = !{!91, !93, i64 8}
!95 = !{!96, !93, i64 0}
!96 = !{!"_ZTSN5folly19ReadMostlySharedPtrIN8facebook5velox17BaseStatsReporterENS_10TLRefCountEEE", !93, i64 0, !92, i64 8}
!97 = !{!96, !92, i64 8}
!98 = !{!99, !100, i64 0}
!99 = !{!"_ZTSSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE", !100, i64 0}
!100 = !{!"p1 _ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !11, i64 0}
!101 = !{!102, !4, i64 8}
!102 = !{!"_ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !4, i64 8, !4, i64 12}
!103 = !{!102, !4, i64 12}
!104 = distinct !{ptr @_ZN5folly19ReadMostlySharedPtrIN8facebook5velox17BaseStatsReporterENS_10TLRefCountEED2Ev, ptr @_ZN5folly19ReadMostlySharedPtrIN8facebook5velox17BaseStatsReporterENS_10TLRefCountEE5resetEPNS_6detail23ReadMostlySharedPtrCoreIS4_EEPS3_, null, null, ptr @_ZNSt12__shared_ptrIKvLN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!105 = !{!106}
!106 = distinct !{!106, !107, !"_ZN5folly9SingletonIN8facebook5velox17BaseStatsReporterENS_6detail10DefaultTagES5_E12try_get_fastEv: argument 0"}
!107 = distinct !{!107, !"_ZN5folly9SingletonIN8facebook5velox17BaseStatsReporterENS_6detail10DefaultTagES5_E12try_get_fastEv"}
!108 = !{!109}
!109 = distinct !{!109, !110, !"_ZN5folly6detail15SingletonHolderIN8facebook5velox17BaseStatsReporterEE12try_get_fastEv: argument 0"}
!110 = distinct !{!110, !"_ZN5folly6detail15SingletonHolderIN8facebook5velox17BaseStatsReporterEE12try_get_fastEv"}
!111 = !{!109, !106}
!112 = !{!113}
!113 = distinct !{!113, !114, !"_ZN5folly17ReadMostlyWeakPtrIN8facebook5velox17BaseStatsReporterENS_10TLRefCountEE4lockEv: argument 0"}
!114 = distinct !{!114, !"_ZN5folly17ReadMostlyWeakPtrIN8facebook5velox17BaseStatsReporterENS_10TLRefCountEE4lockEv"}
!115 = !{!113, !109, !106}
!116 = !{!117}
!117 = distinct !{!117, !118, !"_ZN5folly9SingletonIN8facebook5velox17BaseStatsReporterENS_6detail10DefaultTagES5_E12try_get_fastEv: argument 0"}
!118 = distinct !{!118, !"_ZN5folly9SingletonIN8facebook5velox17BaseStatsReporterENS_6detail10DefaultTagES5_E12try_get_fastEv"}
!119 = !{!120}
!120 = distinct !{!120, !121, !"_ZN5folly6detail15SingletonHolderIN8facebook5velox17BaseStatsReporterEE12try_get_fastEv: argument 0"}
!121 = distinct !{!121, !"_ZN5folly6detail15SingletonHolderIN8facebook5velox17BaseStatsReporterEE12try_get_fastEv"}
!122 = !{!120, !117}
!123 = !{!124}
!124 = distinct !{!124, !125, !"_ZN5folly17ReadMostlyWeakPtrIN8facebook5velox17BaseStatsReporterENS_10TLRefCountEE4lockEv: argument 0"}
!125 = distinct !{!125, !"_ZN5folly17ReadMostlyWeakPtrIN8facebook5velox17BaseStatsReporterENS_10TLRefCountEE4lockEv"}
!126 = !{!124, !120, !117}
!127 = !{!128, !12, i64 0}
!128 = !{!"_ZTSN8facebook5velox14RuntimeCounterE", !12, i64 0, !129, i64 8}
!129 = !{!"_ZTSN8facebook5velox14RuntimeCounter4UnitE", !5, i64 0}
!130 = !{!128, !129, i64 8}
!131 = distinct !{ptr @_ZN5folly19ReadMostlySharedPtrIN8facebook5velox17BaseStatsReporterENS_10TLRefCountEE5resetEPNS_6detail23ReadMostlySharedPtrCoreIS4_EEPS3_, null, null, ptr @_ZNSt12__shared_ptrIKvLN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!132 = !{!133, !133, i64 0}
!133 = !{!"p1 bool", !11, i64 0}
!134 = !{!135, !135, i64 0}
!135 = !{!"p1 long", !11, i64 0}
!136 = !{!137, !11, i64 24}
!137 = !{!"_ZTSSt8functionIFbPN8facebook5velox6memory10MemoryPoolEEE", !23, i64 0, !11, i64 24}
!138 = !{!139, !140, i64 0}
!139 = !{!"_ZTSSt11shared_lockIN5folly15SharedMutexImplILb0EvSt6atomicNS0_24SharedMutexPolicyDefaultEEEE", !140, i64 0, !141, i64 8}
!140 = !{!"p1 _ZTSN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEE", !11, i64 0}
!141 = !{!"_ZTSN5folly16SharedMutexTokenE", !142, i64 0, !143, i64 2}
!142 = !{!"_ZTSN5folly16SharedMutexToken5StateE", !5, i64 0}
!143 = !{!"short", !5, i64 0}
!144 = !{!141, !142, i64 0}
!145 = !{!141, !143, i64 2}
!146 = !{!147, !12, i64 24}
!147 = !{!"_ZTSSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St8weak_ptrIN8facebook5velox6memory10MemoryPoolEEESaISE_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSG_18_Mod_range_hashingENSG_20_Default_ranged_hashENSG_20_Prime_rehash_policyENSG_17_Hashtable_traitsILb1ELb0ELb1EEEE", !26, i64 0, !12, i64 8, !28, i64 16, !12, i64 24, !30, i64 32, !29, i64 48}
end_hunk_1
