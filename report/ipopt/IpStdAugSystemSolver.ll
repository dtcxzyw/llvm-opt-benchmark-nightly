Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ipopt/original/IpStdAugSystemSolver?download=true
inline.NumInlined: 776
inline.NumDeleted: 262
begin_hunk_0_@_ZN5Ipopt17INVALID_WARMSTARTC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_i:.noexc.i
  %i.m = load ptr, ptr %4, align 8, !tbaa !74     ; 2 uses
  %i.n = icmp eq ptr %i.m, %i.b
  br i1 %i.n, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7: ; preds = %bb.b
  %i.o = load i64, ptr %i.b, align 8, !tbaa !76
  %i.p = add i64 %i.o, 1
  call void @_ZdlPvm(ptr noundef %i.m, i64 noundef %i.p) #15
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #14
  resume { ptr, i32 } %i.l
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5Ipopt14IpoptExceptionD2Ev(ptr noundef nonnull align 8 dead_on_return(112) dereferenceable(112) %0) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN5Ipopt14IpoptExceptionE, i64 16), ptr %0, align 8, !tbaa !10
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !74   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.a
  %i.e = load i64, ptr %i.c, align 8, !tbaa !76
  %i.f = add i64 %i.e, 1
  tail call void @_ZdlPvm(ptr noundef %i.b, i64 noundef %i.f) #15
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !74   ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.k = load i64, ptr %i.i, align 8, !tbaa !76
  %i.l = add i64 %i.k, 1
  tail call void @_ZdlPvm(ptr noundef %i.h, i64 noundef %i.l) #15
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !74   ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.p = icmp eq ptr %i.n, %i.o
  br i1 %i.p, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3
  %i.q = load i64, ptr %i.o, align 8, !tbaa !76
  %i.r = add i64 %i.q, 1
  tail call void @_ZdlPvm(ptr noundef %i.n, i64 noundef %i.r) #15
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4
  ret void
}

; Function Attrs: cold noreturn
declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr #5

declare void @__cxa_free_exception(ptr) local_unnamed_addr

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZN5Ipopt23AlgorithmStrategyObject10InitializeERKNS_10JournalistERNS_8IpoptNLPERNS_9IpoptDataERNS_25IpoptCalculatedQuantitiesERKNS_11OptionsListERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(49) %0, ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(2232) %3, ptr noundef nonnull align 8 dereferenceable(2185) %4, ptr noundef nonnull align 8 dereferenceable(112) %5, ptr noundef nonnull align 8 dereferenceable(32) %6) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  store i8 1, ptr %i.a, align 8, !tbaa !83
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !8
  %i.e = add nsw i32 %i.d, 1
  store i32 %i.e, ptr %i.c, align 8, !tbaa !8
  %i.f = load ptr, ptr %i.b, align 8, !tbaa !67   ; 4 uses
  %.not.i.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i.i, label %_ZN5Ipopt8SmartPtrIKNS_10JournalistEEaSEPS2_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  %i.h = load i32, ptr %i.g, align 8, !tbaa !8
  %i.i = add nsw i32 %i.h, -1                     ; 2 uses
  store i32 %i.i, ptr %i.g, align 8, !tbaa !8
  %i.j = icmp eq i32 %i.i, 0
  br i1 %i.j, label %bb.c, label %_ZN5Ipopt8SmartPtrIKNS_10JournalistEEaSEPS2_.exit

bb.c:                                             ; preds = %bb.b
  %i.k = load ptr, ptr %i.f, align 8, !tbaa !10
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(40) %i.f) #14, !inline_history !84
  br label %_ZN5Ipopt8SmartPtrIKNS_10JournalistEEaSEPS2_.exit

_ZN5Ipopt8SmartPtrIKNS_10JournalistEEaSEPS2_.exit: ; preds = %bb.a, %bb.b, %bb.c
  store ptr %1, ptr %i.b, align 8, !tbaa !67
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.p = load i32, ptr %i.o, align 8, !tbaa !8
  %i.q = add nsw i32 %i.p, 1
  store i32 %i.q, ptr %i.o, align 8, !tbaa !8
  %i.r = load ptr, ptr %i.n, align 8, !tbaa !65   ; 4 uses
  %.not.i.i.i8 = icmp eq ptr %i.r, null
  br i1 %.not.i.i.i8, label %_ZN5Ipopt8SmartPtrINS_8IpoptNLPEEaSEPS1_.exit, label %bb.d

bb.d:                                             ; preds = %_ZN5Ipopt8SmartPtrIKNS_10JournalistEEaSEPS2_.exit
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 8 ; 2 uses
  %i.t = load i32, ptr %i.s, align 8, !tbaa !8
  %i.u = add nsw i32 %i.t, -1                     ; 2 uses
  store i32 %i.u, ptr %i.s, align 8, !tbaa !8
  %i.v = icmp eq i32 %i.u, 0
  br i1 %i.v, label %bb.e, label %_ZN5Ipopt8SmartPtrINS_8IpoptNLPEEaSEPS1_.exit

bb.e:                                             ; preds = %bb.d
  %i.w = load ptr, ptr %i.r, align 8, !tbaa !10
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.y = load ptr, ptr %i.x, align 8
  tail call void %i.y(ptr noundef nonnull align 8 dereferenceable(24) %i.r) #14, !inline_history !85
  br label %_ZN5Ipopt8SmartPtrINS_8IpoptNLPEEaSEPS1_.exit

_ZN5Ipopt8SmartPtrINS_8IpoptNLPEEaSEPS1_.exit:    ; preds = %_ZN5Ipopt8SmartPtrIKNS_10JournalistEEaSEPS2_.exit, %bb.d, %bb.e
  store ptr %2, ptr %i.n, align 8, !tbaa !65
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.ab = load i32, ptr %i.aa, align 8, !tbaa !8
  %i.ac = add nsw i32 %i.ab, 1
  store i32 %i.ac, ptr %i.aa, align 8, !tbaa !8
  %i.ad = load ptr, ptr %i.z, align 8, !tbaa !63  ; 4 uses
  %.not.i.i.i9 = icmp eq ptr %i.ad, null
  br i1 %.not.i.i.i9, label %_ZN5Ipopt8SmartPtrINS_9IpoptDataEEaSEPS1_.exit, label %bb.f

bb.f:                                             ; preds = %_ZN5Ipopt8SmartPtrINS_8IpoptNLPEEaSEPS1_.exit
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 8 ; 2 uses
  %i.af = load i32, ptr %i.ae, align 8, !tbaa !8
  %i.ag = add nsw i32 %i.af, -1                   ; 2 uses
  store i32 %i.ag, ptr %i.ae, align 8, !tbaa !8
  %i.ah = icmp eq i32 %i.ag, 0
  br i1 %i.ah, label %bb.g, label %_ZN5Ipopt8SmartPtrINS_9IpoptDataEEaSEPS1_.exit

bb.g:                                             ; preds = %bb.f
  %i.ai = load ptr, ptr %i.ad, align 8, !tbaa !10
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %i.ak = load ptr, ptr %i.aj, align 8
  tail call void %i.ak(ptr noundef nonnull align 8 dereferenceable(2232) %i.ad) #14, !inline_history !86
  br label %_ZN5Ipopt8SmartPtrINS_9IpoptDataEEaSEPS1_.exit

_ZN5Ipopt8SmartPtrINS_9IpoptDataEEaSEPS1_.exit:   ; preds = %_ZN5Ipopt8SmartPtrINS_8IpoptNLPEEaSEPS1_.exit, %bb.f, %bb.g
  store ptr %3, ptr %i.z, align 8, !tbaa !63
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.an = load i32, ptr %i.am, align 8, !tbaa !8
  %i.ao = add nsw i32 %i.an, 1
  store i32 %i.ao, ptr %i.am, align 8, !tbaa !8
  %i.ap = load ptr, ptr %i.al, align 8, !tbaa !61 ; 4 uses
  %.not.i.i.i10 = icmp eq ptr %i.ap, null
  br i1 %.not.i.i.i10, label %_ZN5Ipopt8SmartPtrINS_25IpoptCalculatedQuantitiesEEaSEPS1_.exit, label %bb.h

bb.h:                                             ; preds = %_ZN5Ipopt8SmartPtrINS_9IpoptDataEEaSEPS1_.exit
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 8 ; 2 uses
  %i.ar = load i32, ptr %i.aq, align 8, !tbaa !8
  %i.as = add nsw i32 %i.ar, -1                   ; 2 uses
  store i32 %i.as, ptr %i.aq, align 8, !tbaa !8
  %i.at = icmp eq i32 %i.as, 0
  br i1 %i.at, label %bb.i, label %_ZN5Ipopt8SmartPtrINS_25IpoptCalculatedQuantitiesEEaSEPS1_.exit

bb.i:                                             ; preds = %bb.h
  %i.au = load ptr, ptr %i.ap, align 8, !tbaa !10
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  %i.aw = load ptr, ptr %i.av, align 8
  tail call void %i.aw(ptr noundef nonnull align 8 dereferenceable(2185) %i.ap) #14, !inline_history !87
  br label %_ZN5Ipopt8SmartPtrINS_25IpoptCalculatedQuantitiesEEaSEPS1_.exit

_ZN5Ipopt8SmartPtrINS_25IpoptCalculatedQuantitiesEEaSEPS1_.exit: ; preds = %_ZN5Ipopt8SmartPtrINS_9IpoptDataEEaSEPS1_.exit, %bb.h, %bb.i
  store ptr %4, ptr %i.al, align 8, !tbaa !61
  %i.ax = load ptr, ptr %0, align 8, !tbaa !10
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  %i.az = load ptr, ptr %i.ay, align 8
  %i.ba = tail call noundef zeroext i1 %i.az(ptr noundef nonnull align 8 dereferenceable(49) %0, ptr noundef nonnull align 8 dereferenceable(112) %5, ptr noundef nonnull align 8 dereferenceable(32) %6) ; 2 uses
  br i1 %i.ba, label %bb.k, label %bb.j

bb.j:                                             ; preds = %_ZN5Ipopt8SmartPtrINS_25IpoptCalculatedQuantitiesEEaSEPS1_.exit
  store i8 0, ptr %i.a, align 8, !tbaa !83
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %_ZN5Ipopt8SmartPtrINS_25IpoptCalculatedQuantitiesEEaSEPS1_.exit
  ret i1 %i.ba
}

; Function Attrs: mustprogress uwtable
define noundef i32 @_ZN5Ipopt18StdAugSystemSolver10MultiSolveEPKNS_9SymMatrixEdPKNS_6VectorEdS6_dPKNS_6MatrixES6_dS9_S6_dRSt6vectorINS_8SmartPtrIS5_EESaISC_EESF_SF_SF_RSA_INSB_IS4_EESaISG_EESJ_SJ_SJ_bi(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(233) %0, ptr noundef %1, double noundef %2, ptr noundef %3, double noundef %4, ptr noundef %5, double noundef %6, ptr noundef %7, ptr noundef %8, double noundef %9, ptr noundef %10, ptr noundef %11, double noundef %12, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %13, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %14, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %15, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %16, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %17, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %18, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %19, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %20, i1 noundef zeroext %21, i32 noundef %22) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %23 = alloca %"class.std::vector.30", align 8   ; 12 uses
  %i.c = alloca [16 x i8], align 16               ; 7 uses
  %24 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %25 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %26 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %27 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %28 = alloca %"class.std::vector.49", align 8   ; 13 uses
  %i.d = alloca [16 x i8], align 16               ; 7 uses
  %29 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %30 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !63   ; 6 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 1008
  %i.h = load i8, ptr %i.g, align 8, !tbaa !88, !range !79, !noundef !80
  %i.i = trunc nuw i8 %i.h to i1
  br i1 %i.i, label %bb.b, label %_ZN5Ipopt9TimedTask5StartEv.exit

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 960
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 1010
  store i8 0, ptr %i.k, align 2, !tbaa !90
  %i.l = getelementptr inbounds nuw i8, ptr %i.f, i64 1009
  store i8 1, ptr %i.l, align 1, !tbaa !91
  %i.m = tail call noundef double @_ZN5Ipopt7CpuTimeEv()
  store double %i.m, ptr %i.j, align 8, !tbaa !92
  %i.n = tail call noundef double @_ZN5Ipopt7SysTimeEv()
  %i.o = getelementptr inbounds nuw i8, ptr %i.f, i64 976
  store double %i.n, ptr %i.o, align 8, !tbaa !93
  %i.p = tail call noundef double @_ZN5Ipopt13WallclockTimeEv()
  %i.q = getelementptr inbounds nuw i8, ptr %i.f, i64 992
  store double %i.p, ptr %i.q, align 8, !tbaa !94
  br label %_ZN5Ipopt9TimedTask5StartEv.exit

_ZN5Ipopt9TimedTask5StartEv.exit:                 ; preds = %bb.a, %bb.b
  %i.r = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !95
  %i.t = load ptr, ptr %13, align 8, !tbaa !98    ; 2 uses
  %i.u = ptrtoint ptr %i.s to i64
  %i.v = ptrtoint ptr %i.t to i64
  %i.w = sub i64 %i.u, %i.v                       ; 2 uses
  %i.x = lshr i64 %i.w, 3                         ; 4 uses
  %i.y = trunc i64 %i.x to i32
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 3 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !48
  %.not = icmp eq ptr %i.aa, null
  br i1 %.not, label %.thread, label %bb.c

.thread:                                          ; preds = %_ZN5Ipopt9TimedTask5StartEv.exit
  %i.ab = load ptr, ptr %i.t, align 8, !tbaa !99
  %i.ac = load ptr, ptr %14, align 8, !tbaa !98
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !99
  %i.ae = load ptr, ptr %15, align 8, !tbaa !98
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !99
  %i.ag = load ptr, ptr %16, align 8, !tbaa !98
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !99
  tail call void @_ZN5Ipopt18StdAugSystemSolver20CreateAugmentedSpaceERKNS_9SymMatrixERKNS_6MatrixES6_RKNS_6VectorES9_S9_S9_(ptr noundef nonnull align 8 dereferenceable(233) %0, ptr noundef nonnull align 8 dereferenceable(80) %1, ptr noundef nonnull align 8 dereferenceable(69) %7, ptr noundef nonnull align 8 dereferenceable(69) %10, ptr noundef nonnull align 8 dereferenceable(205) %i.ab, ptr noundef nonnull align 8 dereferenceable(205) %i.ad, ptr noundef nonnull align 8 dereferenceable(205) %i.af, ptr noundef nonnull align 8 dereferenceable(205) %i.ah)
  %i.ai = load ptr, ptr %13, align 8, !tbaa !98
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !99
  %i.ak = load ptr, ptr %14, align 8, !tbaa !98
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !99
  %i.am = load ptr, ptr %15, align 8, !tbaa !98
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !99
  %i.ao = load ptr, ptr %16, align 8, !tbaa !98
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !99
  tail call void @_ZN5Ipopt18StdAugSystemSolver21CreateAugmentedSystemEPKNS_9SymMatrixEdPKNS_6VectorEdS6_dRKNS_6MatrixES6_dS9_S6_dRS5_SA_SA_SA_(ptr noundef nonnull align 8 dereferenceable(233) %0, ptr noundef nonnull %1, double noundef %2, ptr noundef %3, double noundef %4, ptr noundef %5, double noundef %6, ptr noundef nonnull align 8 dereferenceable(69) %7, ptr noundef %8, double noundef %9, ptr noundef nonnull align 8 dereferenceable(69) %10, ptr noundef %11, double noundef %12, ptr noundef nonnull align 8 dereferenceable(205) %i.aj, ptr noundef nonnull align 8 dereferenceable(205) %i.al, ptr noundef nonnull align 8 dereferenceable(205) %i.an, ptr noundef nonnull align 8 dereferenceable(205) %i.ap)
  br label %bb.d

bb.c:                                             ; preds = %_ZN5Ipopt9TimedTask5StartEv.exit
  %.not.i = icmp eq ptr %1, null
  br i1 %.not.i, label %.critedge.i, label %bb.d

bb.d:                                             ; preds = %.thread, %bb.c
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.ar = load i32, ptr %i.aq, align 8, !tbaa !102
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.at = load i32, ptr %i.as, align 8, !tbaa !111
  %.not29.i = icmp eq i32 %i.ar, %i.at
  br i1 %.not29.i, label %bb.e, label %bb.t

.critedge.i:                                      ; preds = %bb.c
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.av = load i32, ptr %i.au, align 8, !tbaa !111
  %.not30.i = icmp eq i32 %i.av, 0
  br i1 %.not30.i, label %bb.e, label %bb.t

bb.e:                                             ; preds = %.critedge.i, %bb.d
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.ax = load double, ptr %i.aw, align 8, !tbaa !112
  %i.ay = fcmp une double %2, %i.ax
  br i1 %i.ay, label %bb.t, label %bb.f

bb.f:                                             ; preds = %bb.e
  %.not31.i = icmp eq ptr %3, null
  br i1 %.not31.i, label %.critedge46.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.az = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.ba = load i32, ptr %i.az, align 8, !tbaa !102
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.bc = load i32, ptr %i.bb, align 8, !tbaa !16
  %.not32.i = icmp eq i32 %i.ba, %i.bc
  br i1 %.not32.i, label %bb.h, label %bb.t

.critedge46.i:                                    ; preds = %bb.f
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.be = load i32, ptr %i.bd, align 8, !tbaa !16
  %.not33.i = icmp eq i32 %i.be, 0
  br i1 %.not33.i, label %bb.h, label %bb.t

bb.h:                                             ; preds = %.critedge46.i, %bb.g
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.bg = load double, ptr %i.bf, align 8, !tbaa !44
  %i.bh = fcmp une double %4, %i.bg
  br i1 %i.bh, label %bb.t, label %bb.i

bb.i:                                             ; preds = %bb.h
  %.not34.i = icmp eq ptr %5, null
  br i1 %.not34.i, label %.critedge48.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bi = getelementptr inbounds nuw i8, ptr %5, i64 48
  %i.bj = load i32, ptr %i.bi, align 8, !tbaa !102
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.bl = load i32, ptr %i.bk, align 8, !tbaa !45
  %.not35.i = icmp eq i32 %i.bj, %i.bl
  br i1 %.not35.i, label %bb.k, label %bb.t

.critedge48.i:                                    ; preds = %bb.i
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.bn = load i32, ptr %i.bm, align 8, !tbaa !45
  %.not36.i = icmp eq i32 %i.bn, 0
  br i1 %.not36.i, label %bb.k, label %bb.t

bb.k:                                             ; preds = %.critedge48.i, %bb.j
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.bp = load double, ptr %i.bo, align 8, !tbaa !113
  %i.bq = fcmp une double %6, %i.bp
  br i1 %i.bq, label %bb.t, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.br = getelementptr inbounds nuw i8, ptr %7, i64 48
  %i.bs = load i32, ptr %i.br, align 8, !tbaa !102
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.bu = load i32, ptr %i.bt, align 8, !tbaa !114
  %.not37.i = icmp eq i32 %i.bs, %i.bu
  br i1 %.not37.i, label %bb.m, label %bb.t

bb.m:                                             ; preds = %bb.l
  %.not38.i = icmp eq ptr %8, null
  br i1 %.not38.i, label %.critedge50.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bv = getelementptr inbounds nuw i8, ptr %8, i64 48
  %i.bw = load i32, ptr %i.bv, align 8, !tbaa !102
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 180
  %i.by = load i32, ptr %i.bx, align 4, !tbaa !115
  %.not39.i = icmp eq i32 %i.bw, %i.by
  br i1 %.not39.i, label %bb.o, label %bb.t

.critedge50.i:                                    ; preds = %bb.m
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 180
  %i.ca = load i32, ptr %i.bz, align 4, !tbaa !115
  %.not40.i = icmp eq i32 %i.ca, 0
  br i1 %.not40.i, label %bb.o, label %bb.t

bb.o:                                             ; preds = %.critedge50.i, %bb.n
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.cc = load double, ptr %i.cb, align 8, !tbaa !116
  %i.cd = fcmp une double %9, %i.cc
  br i1 %i.cd, label %bb.t, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ce = getelementptr inbounds nuw i8, ptr %10, i64 48
  %i.cf = load i32, ptr %i.ce, align 8, !tbaa !102
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.ch = load i32, ptr %i.cg, align 8, !tbaa !117
  %.not41.i = icmp eq i32 %i.cf, %i.ch
  br i1 %.not41.i, label %bb.q, label %bb.t

bb.q:                                             ; preds = %bb.p
  %.not42.i = icmp eq ptr %11, null
  br i1 %.not42.i, label %.critedge52.i, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ci = getelementptr inbounds nuw i8, ptr %11, i64 48
  %i.cj = load i32, ptr %i.ci, align 8, !tbaa !102
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 196
  %i.cl = load i32, ptr %i.ck, align 4, !tbaa !118
  %.not43.i = icmp eq i32 %i.cj, %i.cl
  br i1 %.not43.i, label %bb.s, label %bb.t

.critedge52.i:                                    ; preds = %bb.q
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 196
  %i.cn = load i32, ptr %i.cm, align 4, !tbaa !118
  %.not44.i = icmp eq i32 %i.cn, 0
  br i1 %.not44.i, label %bb.s, label %bb.t

bb.s:                                             ; preds = %.critedge52.i, %bb.r
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.cp = load double, ptr %i.co, align 8, !tbaa !119
  %i.cq = fcmp une double %12, %i.cp
  br i1 %i.cq, label %bb.t, label %_ZN5Ipopt18StdAugSystemSolver29AugmentedSystemRequiresChangeEPKNS_9SymMatrixEdPKNS_6VectorEdS6_dRKNS_6MatrixES6_dS9_S6_d.exit

bb.t:                                             ; preds = %bb.s, %.critedge52.i, %bb.r, %bb.p, %bb.o, %.critedge50.i, %bb.n, %bb.l, %bb.k, %.critedge48.i, %bb.j, %bb.h, %.critedge46.i, %bb.g, %bb.e, %.critedge.i, %bb.d
  %i.cr = load ptr, ptr %13, align 8, !tbaa !98
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !99
  %i.ct = load ptr, ptr %14, align 8, !tbaa !98
end_hunk_0
begin_hunk_1_@_ZN5Ipopt18StdAugSystemSolver10MultiSolveEPKNS_9SymMatrixEdPKNS_6VectorEdS6_dPKNS_6MatrixES6_dS9_S6_dRSt6vectorINS_8SmartPtrIS5_EESaISC_EESF_SF_SF_RSA_INSB_IS4_EESaISG_EESJ_SJ_SJ_bi:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #14
  store ptr %i.dl, ptr %25, align 8, !tbaa !69
  store i64 0, ptr %i.dm, align 8, !tbaa !77
  store i8 0, ptr %i.dl, align 8, !tbaa !76
  invoke void @_ZNK5Ipopt6Vector5PrintERKNS_10JournalistENS_13EJournalLevelENS_16EJournalCategoryERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiSD_(ptr noundef nonnull align 8 dereferenceable(205) %i.dr, ptr noundef nonnull align 8 dereferenceable(40) %i.ej, i32 noundef 9, i32 noundef 7, ptr noundef nonnull align 8 dereferenceable(32) %24, i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(32) %25)
          to label %bb.ae unwind label %bb.an

bb.ae:                                            ; preds = %._crit_edge.i.i134
  %i.et = load ptr, ptr %25, align 8, !tbaa !74   ; 2 uses
  %i.eu = icmp eq ptr %i.et, %i.dl
  br i1 %i.eu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.ae
  %i.ev = load i64, ptr %i.dl, align 8, !tbaa !76
  %i.ew = add i64 %i.ev, 1
  call void @_ZdlPvm(ptr noundef %i.et, i64 noundef %i.ew) #15
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.ae, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #14
  %i.ex = load ptr, ptr %24, align 8, !tbaa !74   ; 2 uses
  %i.ey = icmp eq ptr %i.ex, %i.dj
  br i1 %i.ey, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i139, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i138

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i138: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ez = load i64, ptr %i.dj, align 8, !tbaa !76
  %i.fa = add i64 %i.ez, 1
  call void @_ZdlPvm(ptr noundef %i.ex, i64 noundef %i.fa) #15
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i139

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i139: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i138
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #14
  %i.fb = load ptr, ptr %23, align 8, !tbaa !98
  %i.fc = getelementptr inbounds nuw [8 x i8], ptr %i.fb, i64 %indvars.iv ; 2 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %i.dr, i64 8 ; 4 uses
  %i.fe = load i32, ptr %i.fd, align 8, !tbaa !8
  %i.ff = add nsw i32 %i.fe, 1
  store i32 %i.ff, ptr %i.fd, align 8, !tbaa !8
  %i.fg = load ptr, ptr %i.fc, align 8, !tbaa !99 ; 4 uses
  %.not.i.i.i = icmp eq ptr %i.fg, null
  br i1 %.not.i.i.i, label %bb.ah, label %bb.af

bb.af:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i139
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fg, i64 8 ; 2 uses
  %i.fi = load i32, ptr %i.fh, align 8, !tbaa !8
  %i.fj = add nsw i32 %i.fi, -1                   ; 2 uses
  store i32 %i.fj, ptr %i.fh, align 8, !tbaa !8
  %i.fk = icmp eq i32 %i.fj, 0
  br i1 %i.fk, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.fl = load ptr, ptr %i.fg, align 8, !tbaa !10
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fl, i64 8
  %i.fn = load ptr, ptr %i.fm, align 8
  call void %i.fn(ptr noundef nonnull align 8 dereferenceable(205) %i.fg) #14, !inline_history !121
  br label %bb.ah

bb.ah:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i139, %bb.af, %bb.ag
  store ptr %i.dr, ptr %i.fc, align 8, !tbaa !99
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #14
  %i.fo = load i32, ptr %i.fd, align 8, !tbaa !8
  %i.fp = add nsw i32 %i.fo, -1                   ; 2 uses
  store i32 %i.fp, ptr %i.fd, align 8, !tbaa !8
  %i.fq = icmp eq i32 %i.fp, 0
  br i1 %i.fq, label %bb.ai, label %_ZN5Ipopt8SmartPtrINS_14CompoundVectorEED2Ev.exit

bb.ai:                                            ; preds = %bb.ah
  %i.fr = load ptr, ptr %i.dr, align 8, !tbaa !10
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fr, i64 8
  %i.ft = load ptr, ptr %i.fs, align 8
  call void %i.ft(ptr noundef nonnull align 8 dereferenceable(265) %i.dr) #14, !inline_history !122
  br label %_ZN5Ipopt8SmartPtrINS_14CompoundVectorEED2Ev.exit

_ZN5Ipopt8SmartPtrINS_14CompoundVectorEED2Ev.exit: ; preds = %bb.ah, %bb.ai
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge.i.i151, label %bb.u, !llvm.loop !123

bb.aj:                                            ; preds = %bb.u
  %i.fu = landingpad { ptr, i32 }
          cleanup
  br label %_ZN5Ipopt8SmartPtrINS_14CompoundVectorEED2Ev.exit150

bb.ak:                                            ; preds = %bb.z, %bb.y, %bb.x, %_ZN5Ipopt8SmartPtrINS_14CompoundVectorEEC2EPS1_.exit
  %i.fv = landingpad { ptr, i32 }
          cleanup
  br label %bb.ap

bb.al:                                            ; preds = %bb.aa
  %i.fw = landingpad { ptr, i32 }
          cleanup
  br label %bb.ao

bb.am:                                            ; preds = %.noexc.i
  %i.fx = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit148

bb.an:                                            ; preds = %._crit_edge.i.i134
  %i.fy = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.fz = load ptr, ptr %25, align 8, !tbaa !74   ; 2 uses
  %i.ga = icmp eq ptr %i.fz, %i.dl
  br i1 %i.ga, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit145, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i143

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i143: ; preds = %bb.an
  %i.gb = load i64, ptr %i.dl, align 8, !tbaa !76
  %i.gc = add i64 %i.gb, 1
  call void @_ZdlPvm(ptr noundef %i.fz, i64 noundef %i.gc) #15
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit145

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit145: ; preds = %bb.an, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i143
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #14
  %i.gd = load ptr, ptr %24, align 8, !tbaa !74   ; 2 uses
  %i.ge = icmp eq ptr %i.gd, %i.dj
  br i1 %i.ge, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit148, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i146

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i146: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit145
  %i.gf = load i64, ptr %i.dj, align 8, !tbaa !76
  %i.gg = add i64 %i.gf, 1
  call void @_ZdlPvm(ptr noundef %i.gd, i64 noundef %i.gg) #15
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit148

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit148: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit145, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i146, %bb.am
  %.pn123.pn = phi { ptr, i32 } [ %i.fx, %bb.am ], [ %i.fy, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i146 ], [ %i.fy, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit145 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #14
  br label %bb.ao

bb.ao:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit148, %bb.al
  %.pn126 = phi { ptr, i32 } [ %i.fw, %bb.al ], [ %.pn123.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit148 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #14
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ak, %bb.ao
  %.pn126.pn = phi { ptr, i32 } [ %.pn126, %bb.ao ], [ %i.fv, %bb.ak ] ; 2 uses
  %i.gh = getelementptr inbounds nuw i8, ptr %i.dr, i64 8 ; 2 uses
  %i.gi = load i32, ptr %i.gh, align 8, !tbaa !8
  %i.gj = add nsw i32 %i.gi, -1                   ; 2 uses
  store i32 %i.gj, ptr %i.gh, align 8, !tbaa !8
  %i.gk = icmp eq i32 %i.gj, 0
  br i1 %i.gk, label %bb.aq, label %_ZN5Ipopt8SmartPtrINS_14CompoundVectorEED2Ev.exit150

bb.aq:                                            ; preds = %bb.ap
  %i.gl = load ptr, ptr %i.dr, align 8, !tbaa !10
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gl, i64 8
  %i.gn = load ptr, ptr %i.gm, align 8
  call void %i.gn(ptr noundef nonnull align 8 dereferenceable(265) %i.dr) #14, !inline_history !122
  br label %_ZN5Ipopt8SmartPtrINS_14CompoundVectorEED2Ev.exit150

._crit_edge.i.i151:                               ; preds = %_ZN5Ipopt8SmartPtrINS_14CompoundVectorEED2Ev.exit, %_ZNSt12_Vector_baseIN5Ipopt8SmartPtrIKNS0_6VectorEEESaIS4_EEC2EmRKS5_.exit.thread.i
  %i.go = load ptr, ptr %i.z, align 8, !tbaa !48  ; 2 uses
  %i.gp = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.gq = load ptr, ptr %i.gp, align 8, !tbaa !67
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #14
  %i.gr = getelementptr inbounds nuw i8, ptr %26, i64 16 ; 6 uses
  store ptr %i.gr, ptr %26, align 8, !tbaa !69
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(3) %i.gr, ptr noundef nonnull align 1 dereferenceable(3) @.str.7, i64 3, i1 false)
  %i.gs = getelementptr inbounds nuw i8, ptr %26, i64 8
  store i64 3, ptr %i.gs, align 8, !tbaa !77
  %i.gt = getelementptr inbounds nuw i8, ptr %26, i64 19
  store i8 0, ptr %i.gt, align 1, !tbaa !76
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #14
  %i.gu = getelementptr inbounds nuw i8, ptr %27, i64 16 ; 6 uses
  store ptr %i.gu, ptr %27, align 8, !tbaa !69
  %i.gv = getelementptr inbounds nuw i8, ptr %27, i64 8
  store i64 0, ptr %i.gv, align 8, !tbaa !77
  store i8 0, ptr %i.gu, align 8, !tbaa !76
  %i.gw = load ptr, ptr %i.go, align 8, !tbaa !10
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gw, i64 24
  %i.gy = load ptr, ptr %i.gx, align 8
  invoke void %i.gy(ptr noundef nonnull align 8 dereferenceable(69) %i.go, ptr noundef nonnull align 8 dereferenceable(40) %i.gq, i32 noundef 10, i32 noundef 7, ptr noundef nonnull align 8 dereferenceable(32) %26, i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(32) %27)
          to label %bb.ar unwind label %bb.as

bb.ar:                                            ; preds = %._crit_edge.i.i151
  %i.gz = load ptr, ptr %27, align 8, !tbaa !74   ; 2 uses
  %i.ha = icmp eq ptr %i.gz, %i.gu
  br i1 %i.ha, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit161, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i159

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i159: ; preds = %bb.ar
  %i.hb = load i64, ptr %i.gu, align 8, !tbaa !76
  %i.hc = add i64 %i.hb, 1
  call void @_ZdlPvm(ptr noundef %i.gz, i64 noundef %i.hc) #15
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit161

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit161: ; preds = %bb.ar, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i159
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #14
  %i.hd = load ptr, ptr %26, align 8, !tbaa !74   ; 2 uses
  %i.he = icmp eq ptr %i.hd, %i.gr
  br i1 %i.he, label %_ZNSt6vectorIN5Ipopt8SmartPtrINS0_6VectorEEESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i162

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i162: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit161
  %i.hf = load i64, ptr %i.gr, align 8, !tbaa !76
  %i.hg = add i64 %i.hf, 1
  call void @_ZdlPvm(ptr noundef %i.hd, i64 noundef %i.hg) #15
  br label %_ZNSt6vectorIN5Ipopt8SmartPtrINS0_6VectorEEESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i

_ZNSt6vectorIN5Ipopt8SmartPtrINS0_6VectorEEESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit161, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i162
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #14
  store i64 0, ptr %28, align 8
  br i1 %.not.i.i.i.i, label %_ZNSt12_Vector_baseIN5Ipopt8SmartPtrINS0_6VectorEEESaIS3_EEC2EmRKS4_.exit.thread.i.a, label %.lr.ph.preheader.i.i.i.i.i166

.lr.ph.preheader.i.i.i.i.i166:                    ; preds = %_ZNSt6vectorIN5Ipopt8SmartPtrINS0_6VectorEEESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i
  %i.hh = ashr exact i64 %sext, 29                ; 3 uses
  %i.hi = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.hh) #17
          to label %.noexc171 unwind label %bb.at ; 4 uses

.noexc171:                                        ; preds = %.lr.ph.preheader.i.i.i.i.i166
  store ptr %i.hi, ptr %28, align 8, !tbaa !125
  %i.hj = getelementptr inbounds nuw [8 x i8], ptr %i.hi, i64 %i.cz
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.hi, i8 0, i64 %i.hh, i1 false), !tbaa !128
  %scevgep.i.i.i.i.i167 = getelementptr i8, ptr %i.hi, i64 %i.hh
  br label %_ZNSt12_Vector_baseIN5Ipopt8SmartPtrINS0_6VectorEEESaIS3_EEC2EmRKS4_.exit.thread.i.a

_ZNSt12_Vector_baseIN5Ipopt8SmartPtrINS0_6VectorEEESaIS3_EEC2EmRKS4_.exit.thread.i.a: ; preds = %_ZNSt6vectorIN5Ipopt8SmartPtrINS0_6VectorEEESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i, %.noexc171
  %.sink.i168 = phi ptr [ %i.hj, %.noexc171 ], [ null, %_ZNSt6vectorIN5Ipopt8SmartPtrINS0_6VectorEEESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i ]
  %.0.lcssa.i.i.i.i.i169 = phi ptr [ %scevgep.i.i.i.i.i167, %.noexc171 ], [ null, %_ZNSt6vectorIN5Ipopt8SmartPtrINS0_6VectorEEESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i ]
  %i.hk = getelementptr inbounds nuw i8, ptr %28, i64 8 ; 2 uses
  %i.hl = getelementptr inbounds nuw i8, ptr %28, i64 16 ; 2 uses
  store ptr %.sink.i168, ptr %i.hl, align 8, !tbaa !130
  store ptr %.0.lcssa.i.i.i.i.i169, ptr %i.hk, align 8, !tbaa !131
  br i1 %i.dg, label %.lr.ph256, label %._crit_edge

.lr.ph256:                                        ; preds = %_ZNSt12_Vector_baseIN5Ipopt8SmartPtrINS0_6VectorEEESaIS3_EEC2EmRKS4_.exit.thread.i.a
  %i.hm = getelementptr inbounds nuw i8, ptr %0, i64 120
  %wide.trip.count269 = and i64 %i.x, 2147483647
  br label %bb.au

._crit_edge:                                      ; preds = %_ZN5Ipopt8SmartPtrINS_14CompoundVectorEED2Ev.exit183, %_ZNSt12_Vector_baseIN5Ipopt8SmartPtrINS0_6VectorEEESaIS3_EEC2EmRKS4_.exit.thread.i.a
  %i.hn = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ho = load ptr, ptr %i.hn, align 8, !tbaa !12 ; 2 uses
  %i.hp = load ptr, ptr %i.z, align 8, !tbaa !48
  %i.hq = load ptr, ptr %i.ho, align 8, !tbaa !10
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hq, i64 24
  %i.hs = load ptr, ptr %i.hr, align 8
  %i.ht = invoke noundef i32 %i.hs(ptr noundef nonnull align 8 dereferenceable(49) %i.ho, ptr noundef nonnull align 8 dereferenceable(80) %i.hp, ptr noundef nonnull align 8 dereferenceable(24) %23, ptr noundef nonnull align 8 dereferenceable(24) %28, i1 noundef zeroext %21, i32 noundef %22)
          to label %bb.bi unwind label %bb.bk     ; 3 uses

bb.as:                                            ; preds = %._crit_edge.i.i151
  %i.hu = landingpad { ptr, i32 }
          cleanup
  %i.hv = load ptr, ptr %27, align 8, !tbaa !74   ; 2 uses
  %i.hw = icmp eq ptr %i.hv, %i.gu
  br i1 %i.hw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit174, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i172

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i172: ; preds = %bb.as
  %i.hx = load i64, ptr %i.gu, align 8, !tbaa !76
  %i.hy = add i64 %i.hx, 1
  call void @_ZdlPvm(ptr noundef %i.hv, i64 noundef %i.hy) #15
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit174

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit174: ; preds = %bb.as, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i172
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #14
  %i.hz = load ptr, ptr %26, align 8, !tbaa !74   ; 2 uses
  %i.ia = icmp eq ptr %i.hz, %i.gr
  br i1 %i.ia, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit177, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i175

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i175: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit174
  %i.ib = load i64, ptr %i.gr, align 8, !tbaa !76
  %i.ic = add i64 %i.ib, 1
  call void @_ZdlPvm(ptr noundef %i.hz, i64 noundef %i.ic) #15
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit177

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit177: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit174, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i175
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #14
  br label %_ZN5Ipopt8SmartPtrINS_14CompoundVectorEED2Ev.exit150

bb.at:                                            ; preds = %.lr.ph.preheader.i.i.i.i.i166
  %i.id = landingpad { ptr, i32 }
          cleanup
  br label %bb.cc

bb.au:                                            ; preds = %.lr.ph256, %_ZN5Ipopt8SmartPtrINS_14CompoundVectorEED2Ev.exit183
  %indvars.iv266 = phi i64 [ 0, %.lr.ph256 ], [ %indvars.iv.next267, %_ZN5Ipopt8SmartPtrINS_14CompoundVectorEED2Ev.exit183 ] ; 6 uses
  %i.ie = load ptr, ptr %i.hm, align 8, !tbaa !50 ; 2 uses
  %i.if = load ptr, ptr %i.ie, align 8, !tbaa !10
  %i.ig = getelementptr inbounds nuw i8, ptr %i.if, i64 32
  %i.ih = load ptr, ptr %i.ig, align 8
  %i.ii = invoke noundef ptr %i.ih(ptr noundef nonnull align 8 dereferenceable(48) %i.ie, i1 noundef zeroext true)
          to label %bb.av unwind label %bb.bf     ; 13 uses

bb.av:                                            ; preds = %bb.au
  %.not.i.i178 = icmp eq ptr %i.ii, null
  br i1 %.not.i.i178, label %_ZN5Ipopt8SmartPtrINS_14CompoundVectorEEC2EPS1_.exit179, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.ij = getelementptr inbounds nuw i8, ptr %i.ii, i64 8 ; 2 uses
  %i.ik = load i32, ptr %i.ij, align 8, !tbaa !8
  %i.il = add nsw i32 %i.ik, 1
  store i32 %i.il, ptr %i.ij, align 8, !tbaa !8
  br label %_ZN5Ipopt8SmartPtrINS_14CompoundVectorEEC2EPS1_.exit179

_ZN5Ipopt8SmartPtrINS_14CompoundVectorEEC2EPS1_.exit179: ; preds = %bb.aw, %bb.av
  %i.im = load ptr, ptr %17, align 8, !tbaa !125
  %i.in = getelementptr inbounds nuw [8 x i8], ptr %i.im, i64 %indvars.iv266
  %i.io = load ptr, ptr %i.in, align 8, !tbaa !128
  invoke void @_ZN5Ipopt14CompoundVector15SetCompNonConstEiRNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(265) %i.ii, i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(205) %i.io)
          to label %bb.ax unwind label %bb.bg

bb.ax:                                            ; preds = %_ZN5Ipopt8SmartPtrINS_14CompoundVectorEEC2EPS1_.exit179
  %i.ip = load ptr, ptr %18, align 8, !tbaa !125
  %i.iq = getelementptr inbounds nuw [8 x i8], ptr %i.ip, i64 %indvars.iv266
  %i.ir = load ptr, ptr %i.iq, align 8, !tbaa !128
  invoke void @_ZN5Ipopt14CompoundVector15SetCompNonConstEiRNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(265) %i.ii, i32 noundef 1, ptr noundef nonnull align 8 dereferenceable(205) %i.ir)
          to label %bb.ay unwind label %bb.bg

bb.ay:                                            ; preds = %bb.ax
  %i.is = load ptr, ptr %19, align 8, !tbaa !125
  %i.it = getelementptr inbounds nuw [8 x i8], ptr %i.is, i64 %indvars.iv266
  %i.iu = load ptr, ptr %i.it, align 8, !tbaa !128
  invoke void @_ZN5Ipopt14CompoundVector15SetCompNonConstEiRNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(265) %i.ii, i32 noundef 2, ptr noundef nonnull align 8 dereferenceable(205) %i.iu)
          to label %bb.az unwind label %bb.bg

bb.az:                                            ; preds = %bb.ay
  %i.iv = load ptr, ptr %20, align 8, !tbaa !125
  %i.iw = getelementptr inbounds nuw [8 x i8], ptr %i.iv, i64 %indvars.iv266
  %i.ix = load ptr, ptr %i.iw, align 8, !tbaa !128
  invoke void @_ZN5Ipopt14CompoundVector15SetCompNonConstEiRNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(265) %i.ii, i32 noundef 3, ptr noundef nonnull align 8 dereferenceable(205) %i.ix)
          to label %bb.ba unwind label %bb.bg

bb.ba:                                            ; preds = %bb.az
  %i.iy = load ptr, ptr %28, align 8, !tbaa !125
  %i.iz = getelementptr inbounds nuw [8 x i8], ptr %i.iy, i64 %indvars.iv266 ; 2 uses
  %i.ja = getelementptr inbounds nuw i8, ptr %i.ii, i64 8 ; 4 uses
  %i.jb = load i32, ptr %i.ja, align 8, !tbaa !8
  %i.jc = add nsw i32 %i.jb, 1
  store i32 %i.jc, ptr %i.ja, align 8, !tbaa !8
  %i.jd = load ptr, ptr %i.iz, align 8, !tbaa !128 ; 4 uses
  %.not.i.i.i181 = icmp eq ptr %i.jd, null
  br i1 %.not.i.i.i181, label %bb.bd, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.je = getelementptr inbounds nuw i8, ptr %i.jd, i64 8 ; 2 uses
  %i.jf = load i32, ptr %i.je, align 8, !tbaa !8
  %i.jg = add nsw i32 %i.jf, -1                   ; 2 uses
  store i32 %i.jg, ptr %i.je, align 8, !tbaa !8
  %i.jh = icmp eq i32 %i.jg, 0
  br i1 %i.jh, label %bb.bc, label %bb.bd

bb.bc:                                            ; preds = %bb.bb
  %i.ji = load ptr, ptr %i.jd, align 8, !tbaa !10
  %i.jj = getelementptr inbounds nuw i8, ptr %i.ji, i64 8
  %i.jk = load ptr, ptr %i.jj, align 8
  call void %i.jk(ptr noundef nonnull align 8 dereferenceable(205) %i.jd) #14, !inline_history !132
  br label %bb.bd

bb.bd:                                            ; preds = %bb.ba, %bb.bb, %bb.bc
  store ptr %i.ii, ptr %i.iz, align 8, !tbaa !128
  %i.jl = load i32, ptr %i.ja, align 8, !tbaa !8
  %i.jm = add nsw i32 %i.jl, -1                   ; 2 uses
  store i32 %i.jm, ptr %i.ja, align 8, !tbaa !8
  %i.jn = icmp eq i32 %i.jm, 0
  br i1 %i.jn, label %bb.be, label %_ZN5Ipopt8SmartPtrINS_14CompoundVectorEED2Ev.exit183

bb.be:                                            ; preds = %bb.bd
  %i.jo = load ptr, ptr %i.ii, align 8, !tbaa !10
  %i.jp = getelementptr inbounds nuw i8, ptr %i.jo, i64 8
  %i.jq = load ptr, ptr %i.jp, align 8
  call void %i.jq(ptr noundef nonnull align 8 dereferenceable(265) %i.ii) #14, !inline_history !122
  br label %_ZN5Ipopt8SmartPtrINS_14CompoundVectorEED2Ev.exit183

_ZN5Ipopt8SmartPtrINS_14CompoundVectorEED2Ev.exit183: ; preds = %bb.bd, %bb.be
  %indvars.iv.next267 = add nuw nsw i64 %indvars.iv266, 1 ; 2 uses
  %exitcond270.not = icmp eq i64 %indvars.iv.next267, %wide.trip.count269
  br i1 %exitcond270.not, label %._crit_edge, label %bb.au, !llvm.loop !133

bb.bf:                                            ; preds = %bb.au
  %i.jr = landingpad { ptr, i32 }
          cleanup
  br label %_ZN5Ipopt8SmartPtrINS_14CompoundVectorEED2Ev.exit185

bb.bg:                                            ; preds = %_ZN5Ipopt8SmartPtrINS_14CompoundVectorEEC2EPS1_.exit179, %bb.ax, %bb.ay, %bb.az
  %i.js = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.jt = getelementptr inbounds nuw i8, ptr %i.ii, i64 8 ; 2 uses
  %i.ju = load i32, ptr %i.jt, align 8, !tbaa !8
  %i.jv = add nsw i32 %i.ju, -1                   ; 2 uses
  store i32 %i.jv, ptr %i.jt, align 8, !tbaa !8
  %i.jw = icmp eq i32 %i.jv, 0
  br i1 %i.jw, label %bb.bh, label %_ZN5Ipopt8SmartPtrINS_14CompoundVectorEED2Ev.exit185

bb.bh:                                            ; preds = %bb.bg
  %i.jx = load ptr, ptr %i.ii, align 8, !tbaa !10
  %i.jy = getelementptr inbounds nuw i8, ptr %i.jx, i64 8
  %i.jz = load ptr, ptr %i.jy, align 8
  call void %i.jz(ptr noundef nonnull align 8 dereferenceable(265) %i.ii) #14, !inline_history !122
  br label %_ZN5Ipopt8SmartPtrINS_14CompoundVectorEED2Ev.exit185

bb.bi:                                            ; preds = %._crit_edge
  %i.ka = icmp eq i32 %i.ht, 0
  %i.kb = load ptr, ptr %i.gp, align 8, !tbaa !67 ; 3 uses
  %i.kc = load ptr, ptr %i.kb, align 8, !tbaa !10
  %i.kd = getelementptr inbounds nuw i8, ptr %i.kc, i64 16
  %i.ke = load ptr, ptr %i.kd, align 8            ; 2 uses
  br i1 %i.ka, label %bb.bj, label %bb.bu

bb.bj:                                            ; preds = %bb.bi
  invoke void (ptr, i32, i32, ptr, ...) %i.ke(ptr noundef nonnull align 8 dereferenceable(40) %i.kb, i32 noundef 6, i32 noundef 7, ptr noundef nonnull @.str.8)
          to label %.preheader unwind label %bb.bk

.preheader:                                       ; preds = %bb.bj
  br i1 %i.dg, label %.lr.ph258, label %.loopexit

.lr.ph258:                                        ; preds = %.preheader
  %i.kf = getelementptr inbounds nuw i8, ptr %29, i64 16 ; 7 uses
  %i.kg = getelementptr inbounds nuw i8, ptr %29, i64 8
  %i.kh = getelementptr inbounds nuw i8, ptr %30, i64 16 ; 6 uses
  %i.ki = getelementptr inbounds nuw i8, ptr %30, i64 8
  %wide.trip.count274 = and i64 %i.x, 2147483647
  br label %bb.bl

bb.bk:                                            ; preds = %.noexc207, %.noexc206, %bb.bv, %bb.bu, %bb.bj, %._crit_edge
  %i.kj = landingpad { ptr, i32 }
          cleanup
  br label %_ZN5Ipopt8SmartPtrINS_14CompoundVectorEED2Ev.exit185

bb.bl:                                            ; preds = %.lr.ph258, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit199
end_hunk_1
