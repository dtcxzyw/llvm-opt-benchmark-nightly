Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ipopt/original/IpEquilibrationScaling?download=true
inline.NumInlined: 293
inline.NumDeleted: 84
begin_hunk_0_@_ZN5Ipopt20EquilibrationScaling14InitializeImplERKNS_11OptionsListERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:bb.a
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !27
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #15
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 6 uses
  store ptr %i.g, ptr %3, align 8, !tbaa !28
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(6) %i.g, ptr noundef nonnull align 1 dereferenceable(6) @.str, i64 6, i1 false)
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 6, ptr %i.h, align 8, !tbaa !31
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 22
  store i8 0, ptr %i.i, align 2, !tbaa !34
  %i.j = invoke noundef ptr @_ZN5Ipopt13LibraryLoader10loadSymbolERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(56) %i.f, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %._crit_edge.i.i
  store ptr %i.j, ptr %i.c, align 8, !tbaa !8
  %i.k = load ptr, ptr %3, align 8, !tbaa !35     ; 2 uses
  %i.l = icmp eq ptr %i.k, %i.g
  br i1 %i.l, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.b
  %i.m = load i64, ptr %i.g, align 8, !tbaa !34
  %i.n = add i64 %i.m, 1
  call void @_ZdlPvm(ptr noundef %i.k, i64 noundef %i.n) #16
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #15
  br label %.noexc.i17

bb.c:                                             ; preds = %._crit_edge.i.i
  %i.o = landingpad { ptr, i32 }
          cleanup
  %i.p = load ptr, ptr %3, align 8, !tbaa !35     ; 2 uses
  %i.q = icmp eq ptr %i.p, %i.g
  br i1 %i.q, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13: ; preds = %bb.c
  %i.r = load i64, ptr %i.g, align 8, !tbaa !34
  %i.s = add i64 %i.r, 1
  call void @_ZdlPvm(ptr noundef %i.p, i64 noundef %i.s) #16
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #15
  br label %bb.g

.noexc.i17:                                       ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #15
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 6 uses
  store ptr %i.t, ptr %4, align 8, !tbaa !28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  store i64 25, ptr %i.a, align 8, !tbaa !36
  %i.u = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc18 unwind label %bb.e   ; 2 uses

.noexc18:                                         ; preds = %.noexc.i17
  store ptr %i.u, ptr %4, align 8, !tbaa !35
  %i.v = load i64, ptr %i.a, align 8, !tbaa !36   ; 3 uses
  store i64 %i.v, ptr %i.t, align 8, !tbaa !34
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(25) %i.u, ptr noundef nonnull align 1 dereferenceable(25) @.str.1, i64 25, i1 false)
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %i.v, ptr %i.w, align 8, !tbaa !31
  %i.x = load ptr, ptr %4, align 8, !tbaa !35
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.v
  store i8 0, ptr %i.y, align 1, !tbaa !34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.aa = load ptr, ptr %1, align 8, !tbaa !37
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 144
  %i.ac = load ptr, ptr %i.ab, align 8
  %i.ad = invoke noundef zeroext i1 %i.ac(ptr noundef nonnull align 8 dereferenceable(112) %1, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.z, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.d unwind label %bb.f       ; 0 uses

bb.d:                                             ; preds = %.noexc18
  %i.ae = load ptr, ptr %4, align 8, !tbaa !35    ; 2 uses
  %i.af = icmp eq ptr %i.ae, %i.t
  br i1 %i.af, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit22, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i20

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i20: ; preds = %bb.d
  %i.ag = load i64, ptr %i.t, align 8, !tbaa !34
  %i.ah = add i64 %i.ag, 1
  call void @_ZdlPvm(ptr noundef %i.ae, i64 noundef %i.ah) #16
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit22

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit22: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i20
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #15
  %i.ai = call noundef zeroext i1 @_ZN5Ipopt19StandardScalingBase14InitializeImplERKNS_11OptionsListERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(112) %1, ptr noundef nonnull align 8 dereferenceable(32) %2)
  ret i1 %i.ai

bb.e:                                             ; preds = %.noexc.i17
  %i.aj = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25

bb.f:                                             ; preds = %.noexc18
  %i.ak = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.al = load ptr, ptr %4, align 8, !tbaa !35    ; 2 uses
  %i.am = icmp eq ptr %i.al, %i.t
  br i1 %i.am, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i23

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i23: ; preds = %bb.f
  %i.an = load i64, ptr %i.t, align 8, !tbaa !34
  %i.ao = add i64 %i.an, 1
  call void @_ZdlPvm(ptr noundef %i.al, i64 noundef %i.ao) #16
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i23, %bb.e
  %.pn10 = phi { ptr, i32 } [ %i.aj, %bb.e ], [ %i.ak, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i23 ], [ %i.ak, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #15
  br label %bb.g

bb.g:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15
  %.pn10.pn = phi { ptr, i32 } [ %.pn10, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25 ], [ %i.o, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15 ]
  resume { ptr, i32 } %.pn10.pn
}

declare noundef ptr @_ZN5Ipopt21Mc19TSymScalingMethod8GetMC19AEv() local_unnamed_addr #2

declare noundef ptr @_ZN5Ipopt13LibraryLoader10loadSymbolERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(56), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #3

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.b, ptr %0, align 8, !tbaa !28
  %i.c = icmp eq ptr %1, null
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.7) #17
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.d = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #15 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  store i64 %i.d, ptr %i.a, align 8, !tbaa !36
  %i.e = icmp ugt i64 %i.d, 15
  br i1 %i.e, label %.noexc, label %._crit_edge.i

.noexc:                                           ; preds = %bb.c
  %i.f = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.f, ptr %0, align 8, !tbaa !35
  %i.g = load i64, ptr %i.a, align 8, !tbaa !36
  store i64 %i.g, ptr %i.b, align 8, !tbaa !34
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.c, %.noexc
  %i.h = phi ptr [ %i.f, %.noexc ], [ %i.b, %bb.c ] ; 2 uses
  switch i64 %i.d, label %bb.e [
    i64 1, label %bb.d
    i64 0, label %bb.f
  ]

bb.d:                                             ; preds = %._crit_edge.i
  %i.i = load i8, ptr %1, align 1, !tbaa !34
  store i8 %i.i, ptr %i.h, align 1, !tbaa !34
  br label %bb.f

bb.e:                                             ; preds = %._crit_edge.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.h, ptr nonnull align 1 %1, i64 %i.d, i1 false)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %._crit_edge.i
  %i.j = load i64, ptr %i.a, align 8, !tbaa !36   ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.j, ptr %i.k, align 8, !tbaa !31
  %i.l = load ptr, ptr %0, align 8, !tbaa !35
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.j
  store i8 0, ptr %i.m, align 1, !tbaa !34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  ret void
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #3

declare noundef zeroext i1 @_ZN5Ipopt19StandardScalingBase14InitializeImplERKNS_11OptionsListERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(112), ptr noundef nonnull align 8 dereferenceable(32)) unnamed_addr #2

; Function Attrs: mustprogress uwtable
define void @_ZN5Ipopt20EquilibrationScaling30DetermineScalingParametersImplENS_8SmartPtrIKNS_11VectorSpaceEEES4_S4_NS1_IKNS_11MatrixSpaceEEES7_NS1_IKNS_14SymMatrixSpaceEEERKNS_6MatrixERKNS_6VectorESD_SG_RdRNS1_ISE_EESJ_SJ_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(104) %0, ptr nofree noundef readonly align 8 captures(none) %1, ptr nofree noundef readonly align 8 captures(none) %2, ptr nofree noundef readonly align 8 captures(none) %3, ptr nofree noundef readonly align 8 captures(none) %4, ptr nofree noundef readonly align 8 captures(none) %5, ptr nofree readnone align 8 captures(none) %6, ptr noundef nonnull align 8 dereferenceable(69) %7, ptr noundef nonnull align 8 dereferenceable(205) %8, ptr noundef nonnull align 8 dereferenceable(69) %9, ptr noundef nonnull align 8 dereferenceable(205) %10, ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(8) %11, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(8) %12, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(8) %13, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(8) %14) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %15 = alloca %"class.Ipopt::SmartPtr.0", align 8 ; 4 uses
  %16 = alloca %"class.Ipopt::SmartPtr.0", align 8 ; 4 uses
  %17 = alloca %"class.Ipopt::SmartPtr.0", align 8 ; 4 uses
  %18 = alloca %"class.Ipopt::SmartPtr.0", align 8 ; 4 uses
  %19 = alloca %"class.Ipopt::SmartPtr.0", align 8 ; 4 uses
  %20 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %21 = alloca %"class.std::allocator", align 1   ; 5 uses
  %22 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %23 = alloca %"class.std::allocator", align 1   ; 4 uses
  %24 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %25 = alloca %"class.std::allocator", align 1   ; 5 uses
  %26 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %27 = alloca %"class.std::allocator", align 1   ; 4 uses
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %i.c = load ptr, ptr %1, align 8, !tbaa !39     ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !37
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = tail call noundef ptr %i.f(ptr noundef nonnull align 8 dereferenceable(16) %i.c) ; 10 uses
  %.not.i.i = icmp eq ptr %i.g, null              ; 2 uses
  br i1 %.not.i.i, label %_ZN5Ipopt8SmartPtrINS_6VectorEEC2EPS1_.exit.thread, label %bb.b

_ZN5Ipopt8SmartPtrINS_6VectorEEC2EPS1_.exit.thread: ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !42
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 2 uses
  %i.k = load i32, ptr %i.j, align 8, !tbaa !43
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !42
  %i.n = add nsw i32 %i.k, 2
  store i32 %i.n, ptr %i.j, align 8, !tbaa !43
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %_ZN5Ipopt8SmartPtrINS_6VectorEEC2EPS1_.exit.thread
  %i.o = phi ptr [ %i.i, %_ZN5Ipopt8SmartPtrINS_6VectorEEC2EPS1_.exit.thread ], [ %i.m, %bb.b ] ; 2 uses
  %i.p = phi ptr [ %i.h, %_ZN5Ipopt8SmartPtrINS_6VectorEEC2EPS1_.exit.thread ], [ %i.l, %bb.b ] ; 3 uses
  store ptr %i.g, ptr %15, align 8, !tbaa !44
  store ptr null, ptr %16, align 8, !tbaa !44
  store ptr null, ptr %17, align 8, !tbaa !44
  store ptr null, ptr %18, align 8, !tbaa !44
  store ptr null, ptr %19, align 8, !tbaa !44
  %i.q = load ptr, ptr %i.o, align 8, !tbaa !37
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 40
  %i.s = load ptr, ptr %i.r, align 8
  %i.t = invoke noundef zeroext i1 %i.s(ptr noundef nonnull align 8 dereferenceable(12) %i.o, ptr noundef nonnull align 8 %15, i1 noundef zeroext true, ptr noundef nonnull align 8 %16, i1 noundef zeroext false, ptr noundef nonnull align 8 %17, i1 noundef zeroext false, ptr noundef nonnull align 8 %18, i1 noundef zeroext false, ptr noundef nonnull align 8 %19, i1 noundef zeroext false)
          to label %bb.d unwind label %bb.s

bb.d:                                             ; preds = %bb.c
  %i.u = load ptr, ptr %19, align 8, !tbaa !44    ; 4 uses
  %.not.i.i266 = icmp eq ptr %i.u, null
  br i1 %.not.i.i266, label %_ZN5Ipopt8SmartPtrINS_6VectorEED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 8 ; 2 uses
  %i.w = load i32, ptr %i.v, align 8, !tbaa !43
  %i.x = add nsw i32 %i.w, -1                     ; 2 uses
  store i32 %i.x, ptr %i.v, align 8, !tbaa !43
  %i.y = icmp eq i32 %i.x, 0
  br i1 %i.y, label %bb.f, label %_ZN5Ipopt8SmartPtrINS_6VectorEED2Ev.exit

bb.f:                                             ; preds = %bb.e
  %i.z = load ptr, ptr %i.u, align 8, !tbaa !37
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8
  call void %i.ab(ptr noundef nonnull align 8 dereferenceable(205) %i.u) #15, !inline_history !45
  br label %_ZN5Ipopt8SmartPtrINS_6VectorEED2Ev.exit

_ZN5Ipopt8SmartPtrINS_6VectorEED2Ev.exit:         ; preds = %bb.d, %bb.e, %bb.f
  %i.ac = load ptr, ptr %18, align 8, !tbaa !44   ; 4 uses
  %.not.i.i267 = icmp eq ptr %i.ac, null
  br i1 %.not.i.i267, label %_ZN5Ipopt8SmartPtrINS_6VectorEED2Ev.exit268, label %bb.g

bb.g:                                             ; preds = %_ZN5Ipopt8SmartPtrINS_6VectorEED2Ev.exit
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 8 ; 2 uses
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !43
  %i.af = add nsw i32 %i.ae, -1                   ; 2 uses
  store i32 %i.af, ptr %i.ad, align 8, !tbaa !43
  %i.ag = icmp eq i32 %i.af, 0
  br i1 %i.ag, label %bb.h, label %_ZN5Ipopt8SmartPtrINS_6VectorEED2Ev.exit268

bb.h:                                             ; preds = %bb.g
  %i.ah = load ptr, ptr %i.ac, align 8, !tbaa !37
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %i.aj = load ptr, ptr %i.ai, align 8
  call void %i.aj(ptr noundef nonnull align 8 dereferenceable(205) %i.ac) #15, !inline_history !45
  br label %_ZN5Ipopt8SmartPtrINS_6VectorEED2Ev.exit268

_ZN5Ipopt8SmartPtrINS_6VectorEED2Ev.exit268:      ; preds = %_ZN5Ipopt8SmartPtrINS_6VectorEED2Ev.exit, %bb.g, %bb.h
  %i.ak = load ptr, ptr %17, align 8, !tbaa !44   ; 4 uses
  %.not.i.i269 = icmp eq ptr %i.ak, null
  br i1 %.not.i.i269, label %_ZN5Ipopt8SmartPtrINS_6VectorEED2Ev.exit270, label %bb.i

bb.i:                                             ; preds = %_ZN5Ipopt8SmartPtrINS_6VectorEED2Ev.exit268
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 8 ; 2 uses
  %i.am = load i32, ptr %i.al, align 8, !tbaa !43
  %i.an = add nsw i32 %i.am, -1                   ; 2 uses
  store i32 %i.an, ptr %i.al, align 8, !tbaa !43
  %i.ao = icmp eq i32 %i.an, 0
  br i1 %i.ao, label %bb.j, label %_ZN5Ipopt8SmartPtrINS_6VectorEED2Ev.exit270

bb.j:                                             ; preds = %bb.i
  %i.ap = load ptr, ptr %i.ak, align 8, !tbaa !37
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  %i.ar = load ptr, ptr %i.aq, align 8
  call void %i.ar(ptr noundef nonnull align 8 dereferenceable(205) %i.ak) #15, !inline_history !45
  br label %_ZN5Ipopt8SmartPtrINS_6VectorEED2Ev.exit270

_ZN5Ipopt8SmartPtrINS_6VectorEED2Ev.exit270:      ; preds = %_ZN5Ipopt8SmartPtrINS_6VectorEED2Ev.exit268, %bb.i, %bb.j
  %i.as = load ptr, ptr %16, align 8, !tbaa !44   ; 4 uses
  %.not.i.i271 = icmp eq ptr %i.as, null
  br i1 %.not.i.i271, label %_ZN5Ipopt8SmartPtrINS_6VectorEED2Ev.exit272, label %bb.k

bb.k:                                             ; preds = %_ZN5Ipopt8SmartPtrINS_6VectorEED2Ev.exit270
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 8 ; 2 uses
  %i.au = load i32, ptr %i.at, align 8, !tbaa !43
  %i.av = add nsw i32 %i.au, -1                   ; 2 uses
  store i32 %i.av, ptr %i.at, align 8, !tbaa !43
  %i.aw = icmp eq i32 %i.av, 0
  br i1 %i.aw, label %bb.l, label %_ZN5Ipopt8SmartPtrINS_6VectorEED2Ev.exit272

bb.l:                                             ; preds = %bb.k
  %i.ax = load ptr, ptr %i.as, align 8, !tbaa !37
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  %i.az = load ptr, ptr %i.ay, align 8
  call void %i.az(ptr noundef nonnull align 8 dereferenceable(205) %i.as) #15, !inline_history !45
  br label %_ZN5Ipopt8SmartPtrINS_6VectorEED2Ev.exit272

_ZN5Ipopt8SmartPtrINS_6VectorEED2Ev.exit272:      ; preds = %_ZN5Ipopt8SmartPtrINS_6VectorEED2Ev.exit270, %bb.k, %bb.l
  %i.ba = load ptr, ptr %15, align 8, !tbaa !44   ; 4 uses
  %.not.i.i273 = icmp eq ptr %i.ba, null
  br i1 %.not.i.i273, label %_ZN5Ipopt8SmartPtrINS_6VectorEED2Ev.exit274, label %bb.m

bb.m:                                             ; preds = %_ZN5Ipopt8SmartPtrINS_6VectorEED2Ev.exit272
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 8 ; 2 uses
  %i.bc = load i32, ptr %i.bb, align 8, !tbaa !43
  %i.bd = add nsw i32 %i.bc, -1                   ; 2 uses
  store i32 %i.bd, ptr %i.bb, align 8, !tbaa !43
  %i.be = icmp eq i32 %i.bd, 0
  br i1 %i.be, label %bb.n, label %_ZN5Ipopt8SmartPtrINS_6VectorEED2Ev.exit274

bb.n:                                             ; preds = %bb.m
  %i.bf = load ptr, ptr %i.ba, align 8, !tbaa !37
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  %i.bh = load ptr, ptr %i.bg, align 8
  call void %i.bh(ptr noundef nonnull align 8 dereferenceable(205) %i.ba) #15, !inline_history !45
  br label %_ZN5Ipopt8SmartPtrINS_6VectorEED2Ev.exit274

_ZN5Ipopt8SmartPtrINS_6VectorEED2Ev.exit274:      ; preds = %_ZN5Ipopt8SmartPtrINS_6VectorEED2Ev.exit272, %bb.m, %bb.n
  br i1 %i.t, label %bb.af, label %bb.o

bb.o:                                             ; preds = %_ZN5Ipopt8SmartPtrINS_6VectorEED2Ev.exit274
  %i.bi = call ptr @__cxa_allocate_exception(i64 112) #15 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #15
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %20, ptr noundef nonnull @.str.2, ptr noundef nonnull align 1 dereferenceable(1) %21)
          to label %bb.p unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit287.thread

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #15
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %22, ptr noundef nonnull @.str.3, ptr noundef nonnull align 1 dereferenceable(1) %23)
          to label %bb.q unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.q:                                             ; preds = %bb.p
  invoke void @_ZN5Ipopt21FAILED_INITIALIZATIONC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_i(ptr noundef nonnull align 8 dereferenceable(112) %i.bi, ptr noundef nonnull align 8 dereferenceable(32) %20, ptr noundef nonnull align 8 dereferenceable(32) %22, i32 noundef 104)
          to label %bb.r unwind label %bb.ad

bb.r:                                             ; preds = %bb.q
  invoke void @__cxa_throw(ptr nonnull %i.bi, ptr nonnull @_ZTIN5Ipopt21FAILED_INITIALIZATIONE, ptr nonnull @_ZN5Ipopt14IpoptExceptionD2Ev) #17
          to label %bb.ej unwind label %bb.ad

bb.s:                                             ; preds = %bb.c
  %i.bj = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %i.bk = load ptr, ptr %19, align 8, !tbaa !44   ; 4 uses
  %.not.i.i275 = icmp eq ptr %i.bk, null
  br i1 %.not.i.i275, label %_ZN5Ipopt8SmartPtrINS_6VectorEED2Ev.exit276, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 8 ; 2 uses
  %i.bm = load i32, ptr %i.bl, align 8, !tbaa !43
  %i.bn = add nsw i32 %i.bm, -1                   ; 2 uses
  store i32 %i.bn, ptr %i.bl, align 8, !tbaa !43
  %i.bo = icmp eq i32 %i.bn, 0
  br i1 %i.bo, label %bb.u, label %_ZN5Ipopt8SmartPtrINS_6VectorEED2Ev.exit276

bb.u:                                             ; preds = %bb.t
  %i.bp = load ptr, ptr %i.bk, align 8, !tbaa !37
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 8
  %i.br = load ptr, ptr %i.bq, align 8
  call void %i.br(ptr noundef nonnull align 8 dereferenceable(205) %i.bk) #15, !inline_history !45
  br label %_ZN5Ipopt8SmartPtrINS_6VectorEED2Ev.exit276

_ZN5Ipopt8SmartPtrINS_6VectorEED2Ev.exit276:      ; preds = %bb.u, %bb.t, %bb.s
  %i.bs = load ptr, ptr %18, align 8, !tbaa !44   ; 4 uses
  %.not.i.i277 = icmp eq ptr %i.bs, null
  br i1 %.not.i.i277, label %_ZN5Ipopt8SmartPtrINS_6VectorEED2Ev.exit278, label %bb.v

bb.v:                                             ; preds = %_ZN5Ipopt8SmartPtrINS_6VectorEED2Ev.exit276
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 8 ; 2 uses
  %i.bu = load i32, ptr %i.bt, align 8, !tbaa !43
  %i.bv = add nsw i32 %i.bu, -1                   ; 2 uses
  store i32 %i.bv, ptr %i.bt, align 8, !tbaa !43
  %i.bw = icmp eq i32 %i.bv, 0
  br i1 %i.bw, label %bb.w, label %_ZN5Ipopt8SmartPtrINS_6VectorEED2Ev.exit278

bb.w:                                             ; preds = %bb.v
  %i.bx = load ptr, ptr %i.bs, align 8, !tbaa !37
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 8
  %i.bz = load ptr, ptr %i.by, align 8
end_hunk_0
begin_hunk_1_@_ZN5Ipopt20EquilibrationScaling30DetermineScalingParametersImplENS_8SmartPtrIKNS_11VectorSpaceEEES4_S4_NS1_IKNS_11MatrixSpaceEEES7_NS1_IKNS_14SymMatrixSpaceEEERKNS_6MatrixERKNS_6VectorESD_SG_RdRNS1_ISE_EESJ_SJ_:bb.a
  call void %i.cp(ptr noundef nonnull align 8 dereferenceable(205) %i.ci) #15, !inline_history !45
  br label %_ZN5Ipopt8SmartPtrINS_6VectorEED2Ev.exit282

_ZN5Ipopt8SmartPtrINS_6VectorEED2Ev.exit282:      ; preds = %bb.aa, %bb.z, %_ZN5Ipopt8SmartPtrINS_6VectorEED2Ev.exit280
  %i.cq = load ptr, ptr %15, align 8, !tbaa !44   ; 4 uses
  %.not.i.i283 = icmp eq ptr %i.cq, null
  br i1 %.not.i.i283, label %_ZN5Ipopt8SmartPtrINS_6VectorEED2Ev.exit284, label %bb.ab

bb.ab:                                            ; preds = %_ZN5Ipopt8SmartPtrINS_6VectorEED2Ev.exit282
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 8 ; 2 uses
  %i.cs = load i32, ptr %i.cr, align 8, !tbaa !43
  %i.ct = add nsw i32 %i.cs, -1                   ; 2 uses
  store i32 %i.ct, ptr %i.cr, align 8, !tbaa !43
  %i.cu = icmp eq i32 %i.ct, 0
  br i1 %i.cu, label %bb.ac, label %_ZN5Ipopt8SmartPtrINS_6VectorEED2Ev.exit284

bb.ac:                                            ; preds = %bb.ab
  %i.cv = load ptr, ptr %i.cq, align 8, !tbaa !37
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 8
  %i.cx = load ptr, ptr %i.cw, align 8
  call void %i.cx(ptr noundef nonnull align 8 dereferenceable(205) %i.cq) #15, !inline_history !45
  br label %_ZN5Ipopt8SmartPtrINS_6VectorEED2Ev.exit284

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit287.thread: ; preds = %bb.o
  %i.cy = landingpad { ptr, i32 }
          cleanup
  br label %.sink.split

bb.ad:                                            ; preds = %bb.r, %bb.q
  %.0198 = phi i1 [ false, %bb.r ], [ true, %bb.q ] ; 2 uses
  %i.cz = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.da = load ptr, ptr %22, align 8, !tbaa !35   ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %22, i64 16 ; 2 uses
  %i.dc = icmp eq ptr %i.da, %i.db
  br i1 %i.dc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.ad
  %i.dd = load i64, ptr %i.db, align 8, !tbaa !34
  %i.de = add i64 %i.dd, 1
  call void @_ZdlPvm(ptr noundef %i.da, i64 noundef %i.de) #16
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.ad, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #15
  %i.df = load ptr, ptr %20, align 8, !tbaa !35   ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %20, i64 16 ; 2 uses
  %i.dh = icmp eq ptr %i.df, %i.dg
  br i1 %i.dh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit287, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i285

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.p
  %i.di = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #15
  %i.dj = load ptr, ptr %20, align 8, !tbaa !35   ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %20, i64 16 ; 2 uses
  %i.dl = icmp eq ptr %i.dj, %i.dk
  br i1 %i.dl, label %.sink.split, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i285.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i285.thread: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread
  %i.dm = load i64, ptr %i.dk, align 8, !tbaa !34
  %i.dn = add i64 %i.dm, 1
  call void @_ZdlPvm(ptr noundef %i.dj, i64 noundef %i.dn) #16
  br label %.sink.split

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i285: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.do = load i64, ptr %i.dg, align 8, !tbaa !34
  %i.dp = add i64 %i.do, 1
  call void @_ZdlPvm(ptr noundef %i.df, i64 noundef %i.dp) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #15
  br i1 %.0198, label %bb.ae, label %_ZN5Ipopt8SmartPtrINS_6VectorEED2Ev.exit284

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit287: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #15
  br i1 %.0198, label %bb.ae, label %_ZN5Ipopt8SmartPtrINS_6VectorEED2Ev.exit284

.sink.split:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit287.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i285.thread
  %.pn260.pn365.ph = phi { ptr, i32 } [ %i.di, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i285.thread ], [ %i.cy, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit287.thread ], [ %i.di, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #15
  br label %bb.ae

bb.ae:                                            ; preds = %.sink.split, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i285, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit287
  %.pn260.pn365 = phi { ptr, i32 } [ %i.cz, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i285 ], [ %i.cz, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit287 ], [ %.pn260.pn365.ph, %.sink.split ]
  call void @__cxa_free_exception(ptr %i.bi) #15
  br label %_ZN5Ipopt8SmartPtrINS_6VectorEED2Ev.exit284

bb.af:                                            ; preds = %_ZN5Ipopt8SmartPtrINS_6VectorEED2Ev.exit274
  %i.dq = load ptr, ptr %4, align 8, !tbaa !46    ; 2 uses
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !37
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 16
  %i.dt = load ptr, ptr %i.ds, align 8
  %i.du = invoke noundef ptr %i.dt(ptr noundef nonnull align 8 dereferenceable(20) %i.dq)
          to label %bb.ag unwind label %bb.as     ; 12 uses

bb.ag:                                            ; preds = %bb.af
  %.not.i.i288 = icmp eq ptr %i.du, null          ; 2 uses
  br i1 %.not.i.i288, label %_ZN5Ipopt8SmartPtrINS_6MatrixEEC2EPS1_.exit, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 8 ; 2 uses
  %i.dw = load i32, ptr %i.dv, align 8, !tbaa !43
  %i.dx = add nsw i32 %i.dw, 1
  store i32 %i.dx, ptr %i.dv, align 8, !tbaa !43
  br label %_ZN5Ipopt8SmartPtrINS_6MatrixEEC2EPS1_.exit

_ZN5Ipopt8SmartPtrINS_6MatrixEEC2EPS1_.exit:      ; preds = %bb.ah, %bb.ag
  %i.dy = load ptr, ptr %5, align 8, !tbaa !46    ; 2 uses
  %i.dz = load ptr, ptr %i.dy, align 8, !tbaa !37
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 16
  %i.eb = load ptr, ptr %i.ea, align 8
  %i.ec = invoke noundef ptr %i.eb(ptr noundef nonnull align 8 dereferenceable(20) %i.dy)
          to label %bb.ai unwind label %bb.at     ; 12 uses

bb.ai:                                            ; preds = %_ZN5Ipopt8SmartPtrINS_6MatrixEEC2EPS1_.exit
  %.not.i.i289 = icmp eq ptr %i.ec, null          ; 2 uses
  br i1 %.not.i.i289, label %_ZN5Ipopt8SmartPtrINS_6MatrixEEC2EPS1_.exit290, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 8 ; 2 uses
  %i.ee = load i32, ptr %i.ed, align 8, !tbaa !43
  %i.ef = add nsw i32 %i.ee, 1
  store i32 %i.ef, ptr %i.ed, align 8, !tbaa !43
  br label %_ZN5Ipopt8SmartPtrINS_6MatrixEEC2EPS1_.exit290

_ZN5Ipopt8SmartPtrINS_6MatrixEEC2EPS1_.exit290:   ; preds = %bb.aj, %bb.ai
  %i.eg = load ptr, ptr %1, align 8, !tbaa !39    ; 2 uses
  %i.eh = load ptr, ptr %i.eg, align 8, !tbaa !37
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eh, i64 16
  %i.ej = load ptr, ptr %i.ei, align 8
  %i.ek = invoke noundef ptr %i.ej(ptr noundef nonnull align 8 dereferenceable(16) %i.eg)
          to label %bb.ak unwind label %bb.au     ; 10 uses

bb.ak:                                            ; preds = %_ZN5Ipopt8SmartPtrINS_6MatrixEEC2EPS1_.exit290
  %.not.i.i291 = icmp eq ptr %i.ek, null          ; 3 uses
  br i1 %.not.i.i291, label %_ZN5Ipopt8SmartPtrINS_6VectorEEC2EPS1_.exit292, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 8 ; 2 uses
  %i.em = load i32, ptr %i.el, align 8, !tbaa !43
  %i.en = add nsw i32 %i.em, 1
  store i32 %i.en, ptr %i.el, align 8, !tbaa !43
  br label %_ZN5Ipopt8SmartPtrINS_6VectorEEC2EPS1_.exit292

_ZN5Ipopt8SmartPtrINS_6VectorEEC2EPS1_.exit292:   ; preds = %bb.al, %bb.ak
  %i.eo = invoke noundef i32 @_ZN5Ipopt13TripletHelper16GetNumberEntriesERKNS_6MatrixE(ptr noundef nonnull align 8 dereferenceable(69) %i.du)
          to label %bb.am unwind label %bb.av     ; 10 uses

bb.am:                                            ; preds = %_ZN5Ipopt8SmartPtrINS_6VectorEEC2EPS1_.exit292
  %i.ep = invoke noundef i32 @_ZN5Ipopt13TripletHelper16GetNumberEntriesERKNS_6MatrixE(ptr noundef nonnull align 8 dereferenceable(69) %i.ec)
          to label %bb.an unwind label %bb.aw     ; 9 uses

bb.an:                                            ; preds = %bb.am
  %i.eq = load ptr, ptr %4, align 8, !tbaa !46
  %i.er = getelementptr inbounds nuw i8, ptr %i.eq, i64 12
  %i.es = load i32, ptr %i.er, align 4, !tbaa !49 ; 4 uses
  %i.et = load ptr, ptr %5, align 8, !tbaa !46
  %i.eu = getelementptr inbounds nuw i8, ptr %i.et, i64 12
  %i.ev = load i32, ptr %i.eu, align 4, !tbaa !49 ; 2 uses
  %i.ew = load ptr, ptr %1, align 8, !tbaa !39
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ew, i64 12
  %i.ey = load i32, ptr %i.ex, align 4, !tbaa !51 ; 14 uses
  %i.ez = add nsw i32 %i.ep, %i.eo                ; 4 uses
  %i.fa = add nsw i32 %i.ey, %i.ez                ; 5 uses
  %i.fb = sext i32 %i.fa to i64                   ; 2 uses
  %i.fc = icmp slt i32 %i.fa, 0                   ; 2 uses
  %i.fd = shl nsw i64 %i.fb, 3
  %i.fe = select i1 %i.fc, i64 -1, i64 %i.fd
  %i.ff = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.fe) #18
          to label %bb.ao unwind label %bb.ax     ; 15 uses

bb.ao:                                            ; preds = %bb.an
  %.sroa.speculated3.i = call i32 @llvm.smax.i32(i32 %i.eo, i32 %i.ep)
  %.sroa.speculated.i = call noundef i32 @llvm.smax.i32(i32 %.sroa.speculated3.i, i32 %i.ey) ; 2 uses
  %i.fg = zext nneg i32 %.sroa.speculated.i to i64
  %i.fh = icmp slt i32 %.sroa.speculated.i, 0
  %i.fi = shl nuw nsw i64 %i.fg, 3
  %i.fj = select i1 %i.fh, i64 -1, i64 %i.fi
  %i.fk = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.fj) #18
          to label %bb.ap unwind label %bb.ay     ; 17 uses

bb.ap:                                            ; preds = %bb.ao
  %i.fl = invoke noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #18
          to label %bb.aq unwind label %bb.az     ; 9 uses

bb.aq:                                            ; preds = %bb.ap
  %i.fm = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.fn = load double, ptr %i.fm, align 8, !tbaa !53
  invoke void @_ZN5Ipopt14PointPerturberC1ERKNS_6VectorEdRKNS_6MatrixES3_S6_S3_(ptr noundef nonnull align 8 dereferenceable(32) %i.fl, ptr noundef nonnull align 8 dereferenceable(205) %i.g, double noundef %i.fn, ptr noundef nonnull align 8 dereferenceable(69) %7, ptr noundef nonnull align 8 dereferenceable(205) %8, ptr noundef nonnull align 8 dereferenceable(69) %9, ptr noundef nonnull align 8 dereferenceable(205) %10)
          to label %bb.ar unwind label %bb.ba

bb.ar:                                            ; preds = %bb.aq
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fl, i64 8 ; 6 uses
  %i.fp = load i32, ptr %i.fo, align 8, !tbaa !43
  %i.fq = add nsw i32 %i.fp, 1
  store i32 %i.fq, ptr %i.fo, align 8, !tbaa !43
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fl, i64 16 ; 2 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fl, i64 24
  %i.ft = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.fu = icmp sgt i32 %i.eo, 0                   ; 2 uses
  %i.fv = icmp sgt i32 %i.ep, 0                   ; 2 uses
  %i.fw = icmp sgt i32 %i.ey, 0                   ; 4 uses
  %i.fx = sext i32 %i.eo to i64                   ; 4 uses
  %i.fy = sext i32 %i.ez to i64                   ; 3 uses
  %wide.trip.count = zext i32 %i.eo to i64        ; 5 uses
  %wide.trip.count450 = zext nneg i32 %i.eo to i64
  %wide.trip.count455 = zext i32 %i.ep to i64     ; 5 uses
  %invariant.gep = getelementptr [8 x i8], ptr %i.ff, i64 %i.fx ; 2 uses
  %wide.trip.count460 = zext nneg i32 %i.ep to i64
  %invariant.gep551 = getelementptr [8 x i8], ptr %i.ff, i64 %i.fx ; 2 uses
  %wide.trip.count465 = zext i32 %i.ey to i64     ; 5 uses
  %invariant.gep553 = getelementptr [8 x i8], ptr %i.ff, i64 %i.fy ; 2 uses
  %wide.trip.count470 = zext nneg i32 %i.ey to i64
  %invariant.gep555 = getelementptr [8 x i8], ptr %i.ff, i64 %i.fy ; 2 uses
  %min.iters.check621 = icmp ult i32 %i.eo, 4
  %n.vec623 = and i64 %wide.trip.count, 2147483644 ; 3 uses
  %cmp.n632 = icmp eq i64 %n.vec623, %wide.trip.count
  %min.iters.check609 = icmp ult i32 %i.eo, 4
  %n.vec611 = and i64 %wide.trip.count, 2147483644 ; 3 uses
  %cmp.n618 = icmp eq i64 %n.vec611, %wide.trip.count
  %min.iters.check595 = icmp ult i32 %i.ep, 4
  %n.vec597 = and i64 %wide.trip.count455, 2147483644 ; 3 uses
  %cmp.n606 = icmp eq i64 %n.vec597, %wide.trip.count455
  %min.iters.check583 = icmp ult i32 %i.ep, 4
  %n.vec585 = and i64 %wide.trip.count455, 2147483644 ; 3 uses
  %cmp.n592 = icmp eq i64 %n.vec585, %wide.trip.count455
  %min.iters.check569 = icmp ult i32 %i.ey, 4
  %n.vec571 = and i64 %wide.trip.count465, 2147483644 ; 3 uses
  %cmp.n580 = icmp eq i64 %n.vec571, %wide.trip.count465
  %min.iters.check = icmp ult i32 %i.ey, 4
  %n.vec = and i64 %wide.trip.count465, 2147483644 ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count465
  br label %.preheader405

.preheader405:                                    ; preds = %bb.ar, %.loopexit394
  %.0194426 = phi i32 [ 0, %bb.ar ], [ %i.mx, %.loopexit394 ] ; 2 uses
  %.0195425 = phi i32 [ 0, %bb.ar ], [ %.2197, %.loopexit394 ]
  br label %bb.bb

bb.as:                                            ; preds = %bb.af
  %i.fz = landingpad { ptr, i32 }
          cleanup
  br label %_ZN5Ipopt8SmartPtrINS_6VectorEED2Ev.exit284

bb.at:                                            ; preds = %_ZN5Ipopt8SmartPtrINS_6MatrixEEC2EPS1_.exit
  %i.ga = landingpad { ptr, i32 }
          cleanup
  br label %_ZN5Ipopt8SmartPtrINS_6MatrixEED2Ev.exit331

bb.au:                                            ; preds = %_ZN5Ipopt8SmartPtrINS_6MatrixEEC2EPS1_.exit290
  %i.gb = landingpad { ptr, i32 }
          cleanup
  br label %_ZN5Ipopt8SmartPtrINS_6VectorEED2Ev.exit329

bb.av:                                            ; preds = %_ZN5Ipopt8SmartPtrINS_6VectorEEC2EPS1_.exit292
  %i.gc = landingpad { ptr, i32 }
          cleanup
  br label %_ZN5Ipopt8SmartPtrINS_14PointPerturberEED2Ev.exit327

bb.aw:                                            ; preds = %bb.am
  %i.gd = landingpad { ptr, i32 }
          cleanup
  br label %_ZN5Ipopt8SmartPtrINS_14PointPerturberEED2Ev.exit327

bb.ax:                                            ; preds = %bb.an
  %i.ge = landingpad { ptr, i32 }
          cleanup
  br label %_ZN5Ipopt8SmartPtrINS_14PointPerturberEED2Ev.exit327

bb.ay:                                            ; preds = %bb.ao
  %i.gf = landingpad { ptr, i32 }
          cleanup
  br label %_ZN5Ipopt8SmartPtrINS_14PointPerturberEED2Ev.exit327

bb.az:                                            ; preds = %bb.ap
  %i.gg = landingpad { ptr, i32 }
          cleanup
  br label %_ZN5Ipopt8SmartPtrINS_14PointPerturberEED2Ev.exit327

bb.ba:                                            ; preds = %bb.aq
  %i.gh = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.fl, i64 noundef 32) #16
  br label %_ZN5Ipopt8SmartPtrINS_14PointPerturberEED2Ev.exit327

bb.bb:                                            ; preds = %.preheader405, %_ZN5Ipopt8SmartPtrINS_6VectorEED2Ev.exit306
  %.1196413 = phi i32 [ %.0195425, %.preheader405 ], [ %.2197, %_ZN5Ipopt8SmartPtrINS_6VectorEED2Ev.exit306 ] ; 2 uses
  %i.gi = load ptr, ptr %i.fr, align 8, !tbaa !44, !noalias !54 ; 2 uses
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gi, i64 56
  %i.gk = load ptr, ptr %i.gj, align 8, !tbaa !39, !noalias !54
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gk, i64 12
  %i.gm = load i32, ptr %i.gl, align 4, !tbaa !51, !noalias !54 ; 7 uses
  %i.gn = sext i32 %i.gm to i64
  %i.go = icmp slt i32 %i.gm, 0
  %i.gp = shl nsw i64 %i.gn, 3
  %i.gq = select i1 %i.go, i64 -1, i64 %i.gp      ; 2 uses
  %i.gr = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.gq) #18
          to label %.noexc unwind label %.loopexit.split-lp ; 4 uses

.noexc:                                           ; preds = %bb.bb
  invoke void @_ZN5Ipopt13TripletHelper20FillValuesFromVectorEiRKNS_6VectorEPd(i32 noundef %i.gm, ptr noundef nonnull align 8 dereferenceable(205) %i.gi, ptr noundef nonnull %i.gr)
          to label %.noexc294 unwind label %.loopexit.split-lp

.noexc294:                                        ; preds = %.noexc
  %i.gs = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.gq) #18
          to label %.noexc295 unwind label %.loopexit.split-lp ; 3 uses

.noexc295:                                        ; preds = %.noexc294
  %i.gt = load ptr, ptr %i.fs, align 8, !tbaa !44, !noalias !54
  invoke void @_ZN5Ipopt13TripletHelper20FillValuesFromVectorEiRKNS_6VectorEPd(i32 noundef %i.gm, ptr noundef nonnull align 8 dereferenceable(205) %i.gt, ptr noundef nonnull %i.gs)
          to label %.noexc296 unwind label %.loopexit.split-lp

.noexc296:                                        ; preds = %.noexc295
  %i.gu = icmp sgt i32 %i.gm, 0
  br i1 %i.gu, label %.lr.ph.preheader.i, label %._crit_edge.i

.lr.ph.preheader.i:                               ; preds = %.noexc296
  %wide.trip.count.i = zext nneg i32 %i.gm to i64
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.noexc297, %.lr.ph.preheader.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i, %.noexc297 ] ; 3 uses
  %i.gv = invoke noundef double @_ZN5Ipopt10IpRandom01Ev()
          to label %.noexc297 unwind label %.loopexit

.noexc297:                                        ; preds = %.lr.ph.i
  %i.gw = fadd double %i.gv, -5.000000e-01
  %i.gx = fmul double %i.gw, 2.000000e+00
  %i.gy = getelementptr inbounds nuw [8 x i8], ptr %i.gs, i64 %indvars.iv.i
  %i.gz = load double, ptr %i.gy, align 8, !tbaa !57, !noalias !54
  %i.ha = getelementptr inbounds nuw [8 x i8], ptr %i.gr, i64 %indvars.iv.i ; 2 uses
  %i.hb = load double, ptr %i.ha, align 8, !tbaa !57, !noalias !54
  %i.hc = call double @llvm.fmuladd.f64(double %i.gx, double %i.gz, double %i.hb)
  store double %i.hc, ptr %i.ha, align 8, !tbaa !57, !noalias !54
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !58

._crit_edge.i:                                    ; preds = %.noexc297, %.noexc296
  call void @_ZdaPv(ptr noundef nonnull %i.gs) #16, !noalias !54
  %i.hd = load ptr, ptr %i.fr, align 8, !tbaa !44, !noalias !54
  %i.he = getelementptr inbounds nuw i8, ptr %i.hd, i64 56
  %i.hf = load ptr, ptr %i.he, align 8, !tbaa !39, !noalias !54 ; 2 uses
  %i.hg = load ptr, ptr %i.hf, align 8, !tbaa !37, !noalias !54
  %i.hh = getelementptr inbounds nuw i8, ptr %i.hg, i64 16
  %i.hi = load ptr, ptr %i.hh, align 8, !noalias !54
  %i.hj = invoke noundef ptr %i.hi(ptr noundef nonnull align 8 dereferenceable(16) %i.hf)
          to label %.noexc298 unwind label %.loopexit.split-lp, !inline_history !60 ; 15 uses

.noexc298:                                        ; preds = %._crit_edge.i
  %.not.i.i.i = icmp eq ptr %i.hj, null
  br i1 %.not.i.i.i, label %_ZN5Ipopt8SmartPtrINS_6VectorEEC2EPS1_.exit.i, label %bb.bc

bb.bc:                                            ; preds = %.noexc298
  %i.hk = getelementptr inbounds nuw i8, ptr %i.hj, i64 8 ; 2 uses
  %i.hl = load i32, ptr %i.hk, align 8, !tbaa !43, !noalias !54
  %i.hm = add nsw i32 %i.hl, 1
  store i32 %i.hm, ptr %i.hk, align 8, !tbaa !43, !noalias !54
  br label %_ZN5Ipopt8SmartPtrINS_6VectorEEC2EPS1_.exit.i

_ZN5Ipopt8SmartPtrINS_6VectorEEC2EPS1_.exit.i:    ; preds = %bb.bc, %.noexc298
  invoke void @_ZN5Ipopt13TripletHelper17PutValuesInVectorEiPKdRNS_6VectorE(i32 noundef %i.gm, ptr noundef nonnull %i.gr, ptr noundef nonnull align 8 dereferenceable(205) %i.hj)
          to label %bb.bf unwind label %bb.bd, !noalias !54

bb.bd:                                            ; preds = %_ZN5Ipopt8SmartPtrINS_6VectorEEC2EPS1_.exit.i
  %i.hn = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hj, i64 8 ; 2 uses
  %i.hp = load i32, ptr %i.ho, align 8, !tbaa !43, !noalias !54
  %i.hq = add nsw i32 %i.hp, -1                   ; 2 uses
  store i32 %i.hq, ptr %i.ho, align 8, !tbaa !43, !noalias !54
  %i.hr = icmp eq i32 %i.hq, 0
  br i1 %i.hr, label %bb.be, label %.body

bb.be:                                            ; preds = %bb.bd
  %i.hs = load ptr, ptr %i.hj, align 8, !tbaa !37, !noalias !54
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hs, i64 8
  %i.hu = load ptr, ptr %i.ht, align 8, !noalias !54
  call void %i.hu(ptr noundef nonnull align 8 dereferenceable(205) %i.hj) #15, !noalias !54, !inline_history !61
  br label %.body

bb.bf:                                            ; preds = %_ZN5Ipopt8SmartPtrINS_6VectorEEC2EPS1_.exit.i
  call void @_ZdaPv(ptr noundef nonnull %i.gr) #16, !noalias !54
  %i.hv = load ptr, ptr %i.p, align 8, !tbaa !42  ; 2 uses
  %i.hw = load ptr, ptr %i.hv, align 8, !tbaa !37
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hw, i64 64
  %i.hy = load ptr, ptr %i.hx, align 8
  %i.hz = invoke noundef zeroext i1 %i.hy(ptr noundef nonnull align 8 dereferenceable(12) %i.hv, ptr noundef nonnull align 8 dereferenceable(205) %i.hj, ptr noundef nonnull align 8 dereferenceable(205) %i.ek)
          to label %bb.bg unwind label %bb.bm

bb.bg:                                            ; preds = %bb.bf
  br i1 %i.hz, label %bb.bh, label %.thread

bb.bh:                                            ; preds = %bb.bg
  %i.ia = load ptr, ptr %i.p, align 8, !tbaa !42  ; 2 uses
  %i.ib = load ptr, ptr %i.ia, align 8, !tbaa !37
  %i.ic = getelementptr inbounds nuw i8, ptr %i.ib, i64 80
  %i.id = load ptr, ptr %i.ic, align 8
  %i.ie = invoke noundef zeroext i1 %i.id(ptr noundef nonnull align 8 dereferenceable(12) %i.ia, ptr noundef nonnull align 8 dereferenceable(205) %i.hj, ptr noundef nonnull align 8 dereferenceable(69) %i.du)
          to label %bb.bi unwind label %bb.bm

bb.bi:                                            ; preds = %bb.bh
  br i1 %i.ie, label %bb.bj, label %.thread

bb.bj:                                            ; preds = %bb.bi
  %i.if = load ptr, ptr %i.p, align 8, !tbaa !42  ; 2 uses
  %i.ig = load ptr, ptr %i.if, align 8, !tbaa !37
  %i.ih = getelementptr inbounds nuw i8, ptr %i.ig, i64 96
  %i.ii = load ptr, ptr %i.ih, align 8
  %i.ij = invoke noundef zeroext i1 %i.ii(ptr noundef nonnull align 8 dereferenceable(12) %i.if, ptr noundef nonnull align 8 dereferenceable(205) %i.hj, ptr noundef nonnull align 8 dereferenceable(69) %i.ec)
          to label %bb.bk unwind label %bb.bm

bb.bk:                                            ; preds = %bb.bj
  br i1 %i.ij, label %bb.bn, label %.thread

.thread:                                          ; preds = %bb.bg, %bb.bi, %bb.bk
  %i.ik = load ptr, ptr %i.ft, align 8, !tbaa !62 ; 2 uses
  %i.il = load ptr, ptr %i.ik, align 8, !tbaa !37
  %i.im = getelementptr inbounds nuw i8, ptr %i.il, i64 16
  %i.in = load ptr, ptr %i.im, align 8
  invoke void (ptr, i32, i32, ptr, ...) %i.in(ptr noundef nonnull align 8 dereferenceable(40) %i.ik, i32 noundef 4, i32 noundef 3, ptr noundef nonnull @.str.4)
          to label %bb.bl unwind label %bb.bm

bb.bl:                                            ; preds = %.thread
  %i.io = add nsw i32 %.1196413, 1
  br label %bb.bn

.loopexit:                                        ; preds = %.lr.ph.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp:                               ; preds = %bb.bb, %.noexc, %.noexc294, %.noexc295, %._crit_edge.i
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.bm:                                            ; preds = %.thread, %bb.bj, %bb.bh, %bb.bf
  %i.ip = landingpad { ptr, i32 }
          cleanup
  br label %bb.bw

bb.bn:                                            ; preds = %bb.bl, %bb.bk
  %i.iq = phi i1 [ true, %bb.bk ], [ false, %bb.bl ]
  %.2197 = phi i32 [ %.1196413, %bb.bk ], [ %i.io, %bb.bl ] ; 3 uses
  %i.ir = icmp sgt i32 %.2197, 10
  br i1 %i.ir, label %bb.bo, label %bb.bu

bb.bo:                                            ; preds = %bb.bn
  call void @_ZdaPv(ptr noundef nonnull %i.fk) #16
  call void @_ZdaPv(ptr noundef nonnull %i.ff) #16
  %i.is = call ptr @__cxa_allocate_exception(i64 112) #15 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #15
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %24, ptr noundef nonnull @.str.5, ptr noundef nonnull align 1 dereferenceable(1) %25)
          to label %bb.bp unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit304.thread

bb.bp:                                            ; preds = %bb.bo
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #15
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %26, ptr noundef nonnull @.str.3, ptr noundef nonnull align 1 dereferenceable(1) %27)
          to label %bb.bq unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit301.thread

bb.bq:                                            ; preds = %bb.bp
  invoke void @_ZN5Ipopt21FAILED_INITIALIZATIONC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_i(ptr noundef nonnull align 8 dereferenceable(112) %i.is, ptr noundef nonnull align 8 dereferenceable(32) %24, ptr noundef nonnull align 8 dereferenceable(32) %26, i32 noundef 145)
          to label %bb.br unwind label %bb.bs

bb.br:                                            ; preds = %bb.bq
  invoke void @__cxa_throw(ptr nonnull %i.is, ptr nonnull @_ZTIN5Ipopt21FAILED_INITIALIZATIONE, ptr nonnull @_ZN5Ipopt14IpoptExceptionD2Ev) #17
          to label %bb.ej unwind label %bb.bs

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit304.thread: ; preds = %bb.bo
  %i.it = landingpad { ptr, i32 }
          cleanup
  br label %.sink.split559

bb.bs:                                            ; preds = %bb.br, %bb.bq
  %.0191 = phi i1 [ false, %bb.br ], [ true, %bb.bq ] ; 2 uses
  %i.iu = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.iv = load ptr, ptr %26, align 8, !tbaa !35   ; 2 uses
  %i.iw = getelementptr inbounds nuw i8, ptr %26, i64 16 ; 2 uses
  %i.ix = icmp eq ptr %i.iv, %i.iw
  br i1 %i.ix, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit301, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i299

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i299: ; preds = %bb.bs
  %i.iy = load i64, ptr %i.iw, align 8, !tbaa !34
  %i.iz = add i64 %i.iy, 1
  call void @_ZdlPvm(ptr noundef %i.iv, i64 noundef %i.iz) #16
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit301

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit301: ; preds = %bb.bs, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i299
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #15
  %i.ja = load ptr, ptr %24, align 8, !tbaa !35   ; 2 uses
  %i.jb = getelementptr inbounds nuw i8, ptr %24, i64 16 ; 2 uses
  %i.jc = icmp eq ptr %i.ja, %i.jb
  br i1 %i.jc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit304, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i302

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit301.thread: ; preds = %bb.bp
  %i.jd = landingpad { ptr, i32 }
end_hunk_1
begin_hunk_2_@_ZN5Ipopt20EquilibrationScaling30DetermineScalingParametersImplENS_8SmartPtrIKNS_11VectorSpaceEEES4_S4_NS1_IKNS_11MatrixSpaceEEES7_NS1_IKNS_14SymMatrixSpaceEEERKNS_6MatrixERKNS_6VectorESD_SG_RdRNS1_ISE_EESJ_SJ_:bb.a
  %indvars.iv457 = phi i64 [ %indvars.iv.next458, %.lr.ph420 ], [ %indvars.iv457.ph, %.lr.ph420.preheader650 ] ; 3 uses
  %i.lr = getelementptr inbounds nuw [8 x i8], ptr %i.fk, i64 %indvars.iv457
  %i.ls = load double, ptr %i.lr, align 8, !tbaa !57
  %i.lt = call noundef double @llvm.fabs.f64(double %i.ls)
  %gep552 = getelementptr [8 x i8], ptr %invariant.gep551, i64 %indvars.iv457
  store double %i.lt, ptr %gep552, align 8, !tbaa !57
  %indvars.iv.next458 = add nuw nsw i64 %indvars.iv457, 1 ; 2 uses
  %exitcond461.not = icmp eq i64 %indvars.iv.next458, %wide.trip.count460
  br i1 %exitcond461.not, label %.loopexit398, label %.lr.ph420, !llvm.loop !72

.lr.ph418:                                        ; preds = %.lr.ph418.preheader651, %.lr.ph418
  %indvars.iv452 = phi i64 [ %indvars.iv.next453, %.lr.ph418 ], [ %indvars.iv452.ph, %.lr.ph418.preheader651 ] ; 3 uses
  %i.lu = getelementptr inbounds nuw [8 x i8], ptr %i.fk, i64 %indvars.iv452
  %i.lv = load double, ptr %i.lu, align 8, !tbaa !57
  %i.lw = call noundef double @llvm.fabs.f64(double %i.lv)
  %gep = getelementptr [8 x i8], ptr %invariant.gep, i64 %indvars.iv452 ; 2 uses
  %i.lx = load double, ptr %gep, align 8, !tbaa !57
  %i.ly = fadd double %i.lx, %i.lw
  store double %i.ly, ptr %gep, align 8, !tbaa !57
  %indvars.iv.next453 = add nuw nsw i64 %indvars.iv452, 1 ; 2 uses
  %exitcond456.not = icmp eq i64 %indvars.iv.next453, %wide.trip.count455
  br i1 %exitcond456.not, label %.loopexit398, label %.lr.ph418, !llvm.loop !73

.loopexit398:                                     ; preds = %.lr.ph418, %.lr.ph420, %middle.block605, %middle.block591, %.preheader399, %.preheader397
  invoke void @_ZN5Ipopt13TripletHelper20FillValuesFromVectorEiRKNS_6VectorEPd(i32 noundef %i.ey, ptr noundef nonnull align 8 dereferenceable(205) %i.ek, ptr noundef nonnull %i.fk)
          to label %bb.cc unwind label %bb.ca

bb.cc:                                            ; preds = %.loopexit398
  br i1 %i.jz, label %.preheader393, label %.preheader395

.preheader395:                                    ; preds = %bb.cc
  br i1 %i.fw, label %.lr.ph422.preheader, label %.loopexit394

.lr.ph422.preheader:                              ; preds = %.preheader395
  br i1 %min.iters.check569, label %.lr.ph422.preheader648, label %vector.body572

vector.body572:                                   ; preds = %.lr.ph422.preheader, %vector.body572
  %index573 = phi i64 [ %index.next578, %vector.body572 ], [ 0, %.lr.ph422.preheader ] ; 3 uses
  %i.lz = getelementptr inbounds nuw [8 x i8], ptr %i.fk, i64 %index573 ; 2 uses
  %i.ma = getelementptr inbounds nuw i8, ptr %i.lz, i64 16
  %wide.load574 = load <2 x double>, ptr %i.lz, align 8, !tbaa !57
  %wide.load575 = load <2 x double>, ptr %i.ma, align 8, !tbaa !57
  %i.mb = call <2 x double> @llvm.fabs.v2f64(<2 x double> %wide.load574)
  %i.mc = call <2 x double> @llvm.fabs.v2f64(<2 x double> %wide.load575)
  %i.md = getelementptr [8 x i8], ptr %invariant.gep553, i64 %index573 ; 3 uses
  %i.me = getelementptr i8, ptr %i.md, i64 16     ; 2 uses
  %wide.load576 = load <2 x double>, ptr %i.md, align 8, !tbaa !57
  %wide.load577 = load <2 x double>, ptr %i.me, align 8, !tbaa !57
  %i.mf = fadd <2 x double> %wide.load576, %i.mb
  %i.mg = fadd <2 x double> %wide.load577, %i.mc
  store <2 x double> %i.mf, ptr %i.md, align 8, !tbaa !57
  store <2 x double> %i.mg, ptr %i.me, align 8, !tbaa !57
  %index.next578 = add nuw i64 %index573, 4       ; 2 uses
  %i.mh = icmp eq i64 %index.next578, %n.vec571
  br i1 %i.mh, label %middle.block579, label %vector.body572, !llvm.loop !74

middle.block579:                                  ; preds = %vector.body572
  br i1 %cmp.n580, label %.loopexit394, label %.lr.ph422.preheader648

.lr.ph422.preheader648:                           ; preds = %.lr.ph422.preheader, %middle.block579
  %indvars.iv462.ph = phi i64 [ 0, %.lr.ph422.preheader ], [ %n.vec571, %middle.block579 ]
  br label %.lr.ph422

.preheader393:                                    ; preds = %bb.cc
  br i1 %i.fw, label %.lr.ph424.preheader, label %.loopexit394

.lr.ph424.preheader:                              ; preds = %.preheader393
  br i1 %min.iters.check, label %.lr.ph424.preheader647, label %vector.body

vector.body:                                      ; preds = %.lr.ph424.preheader, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.lr.ph424.preheader ] ; 3 uses
  %i.mi = getelementptr inbounds nuw [8 x i8], ptr %i.fk, i64 %index ; 2 uses
  %i.mj = getelementptr inbounds nuw i8, ptr %i.mi, i64 16
  %wide.load = load <2 x double>, ptr %i.mi, align 8, !tbaa !57
  %wide.load567 = load <2 x double>, ptr %i.mj, align 8, !tbaa !57
  %i.mk = call <2 x double> @llvm.fabs.v2f64(<2 x double> %wide.load)
  %i.ml = call <2 x double> @llvm.fabs.v2f64(<2 x double> %wide.load567)
  %i.mm = getelementptr [8 x i8], ptr %invariant.gep555, i64 %index ; 2 uses
  %i.mn = getelementptr i8, ptr %i.mm, i64 16
  store <2 x double> %i.mk, ptr %i.mm, align 8, !tbaa !57
  store <2 x double> %i.ml, ptr %i.mn, align 8, !tbaa !57
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.mo = icmp eq i64 %index.next, %n.vec
  br i1 %i.mo, label %middle.block, label %vector.body, !llvm.loop !75

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %.loopexit394, label %.lr.ph424.preheader647

.lr.ph424.preheader647:                           ; preds = %.lr.ph424.preheader, %middle.block
  %indvars.iv467.ph = phi i64 [ 0, %.lr.ph424.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph424

.lr.ph424:                                        ; preds = %.lr.ph424.preheader647, %.lr.ph424
  %indvars.iv467 = phi i64 [ %indvars.iv.next468, %.lr.ph424 ], [ %indvars.iv467.ph, %.lr.ph424.preheader647 ] ; 3 uses
  %i.mp = getelementptr inbounds nuw [8 x i8], ptr %i.fk, i64 %indvars.iv467
  %i.mq = load double, ptr %i.mp, align 8, !tbaa !57
  %i.mr = call noundef double @llvm.fabs.f64(double %i.mq)
  %gep556 = getelementptr [8 x i8], ptr %invariant.gep555, i64 %indvars.iv467
  store double %i.mr, ptr %gep556, align 8, !tbaa !57
  %indvars.iv.next468 = add nuw nsw i64 %indvars.iv467, 1 ; 2 uses
  %exitcond471.not = icmp eq i64 %indvars.iv.next468, %wide.trip.count470
  br i1 %exitcond471.not, label %.loopexit394, label %.lr.ph424, !llvm.loop !76

.lr.ph422:                                        ; preds = %.lr.ph422.preheader648, %.lr.ph422
  %indvars.iv462 = phi i64 [ %indvars.iv.next463, %.lr.ph422 ], [ %indvars.iv462.ph, %.lr.ph422.preheader648 ] ; 3 uses
  %i.ms = getelementptr inbounds nuw [8 x i8], ptr %i.fk, i64 %indvars.iv462
  %i.mt = load double, ptr %i.ms, align 8, !tbaa !57
  %i.mu = call noundef double @llvm.fabs.f64(double %i.mt)
  %gep554 = getelementptr [8 x i8], ptr %invariant.gep553, i64 %indvars.iv462 ; 2 uses
  %i.mv = load double, ptr %gep554, align 8, !tbaa !57
  %i.mw = fadd double %i.mv, %i.mu
  store double %i.mw, ptr %gep554, align 8, !tbaa !57
  %indvars.iv.next463 = add nuw nsw i64 %indvars.iv462, 1 ; 2 uses
  %exitcond466.not = icmp eq i64 %indvars.iv.next463, %wide.trip.count465
  br i1 %exitcond466.not, label %.loopexit394, label %.lr.ph422, !llvm.loop !77

.loopexit394:                                     ; preds = %.lr.ph422, %.lr.ph424, %middle.block579, %middle.block, %.preheader395, %.preheader393
  %i.mx = add nuw nsw i32 %.0194426, 1            ; 2 uses
  %exitcond472.not = icmp eq i32 %i.mx, 4
  br i1 %exitcond472.not, label %bb.cd, label %.preheader405, !llvm.loop !78

bb.cd:                                            ; preds = %.loopexit394
  call void @_ZdaPv(ptr noundef nonnull %i.fk) #16
  %i.my = icmp sgt i32 %i.fa, 0
  br i1 %i.my, label %.lr.ph428.preheader, label %._crit_edge

.lr.ph428.preheader:                              ; preds = %bb.cd
  %wide.trip.count476 = zext nneg i32 %i.fa to i64 ; 3 uses
  %min.iters.check635 = icmp ult i32 %i.fa, 4
  br i1 %min.iters.check635, label %.lr.ph428.preheader646, label %vector.ph636

vector.ph636:                                     ; preds = %.lr.ph428.preheader
  %n.vec637 = and i64 %wide.trip.count476, 2147483644 ; 3 uses
  br label %vector.body638

vector.body638:                                   ; preds = %vector.body638, %vector.ph636
  %index639 = phi i64 [ 0, %vector.ph636 ], [ %index.next642, %vector.body638 ] ; 2 uses
  %i.mz = getelementptr inbounds nuw [8 x i8], ptr %i.ff, i64 %index639 ; 3 uses
  %i.na = getelementptr inbounds nuw i8, ptr %i.mz, i64 16 ; 2 uses
  %wide.load640 = load <2 x double>, ptr %i.mz, align 8, !tbaa !57
  %wide.load641 = load <2 x double>, ptr %i.na, align 8, !tbaa !57
  %i.nb = fmul <2 x double> %wide.load640, splat (double 2.500000e-01)
  %i.nc = fmul <2 x double> %wide.load641, splat (double 2.500000e-01)
  store <2 x double> %i.nb, ptr %i.mz, align 8, !tbaa !57
  store <2 x double> %i.nc, ptr %i.na, align 8, !tbaa !57
  %index.next642 = add nuw i64 %index639, 4       ; 2 uses
  %i.nd = icmp eq i64 %index.next642, %n.vec637
  br i1 %i.nd, label %middle.block643, label %vector.body638, !llvm.loop !79

middle.block643:                                  ; preds = %vector.body638
  %cmp.n644 = icmp eq i64 %n.vec637, %wide.trip.count476
  br i1 %cmp.n644, label %._crit_edge, label %.lr.ph428.preheader646

.lr.ph428.preheader646:                           ; preds = %.lr.ph428.preheader, %middle.block643
  %indvars.iv473.ph = phi i64 [ 0, %.lr.ph428.preheader ], [ %n.vec637, %middle.block643 ]
  br label %.lr.ph428

._crit_edge:                                      ; preds = %.lr.ph428, %middle.block643, %bb.cd
  %i.ne = shl nsw i64 %i.fb, 2
  %i.nf = select i1 %i.fc, i64 -1, i64 %i.ne      ; 2 uses
  %i.ng = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.nf) #18
          to label %bb.ce unwind label %bb.ch     ; 5 uses

.lr.ph428:                                        ; preds = %.lr.ph428.preheader646, %.lr.ph428
  %indvars.iv473 = phi i64 [ %indvars.iv.next474, %.lr.ph428 ], [ %indvars.iv473.ph, %.lr.ph428.preheader646 ] ; 2 uses
  %i.nh = getelementptr inbounds nuw [8 x i8], ptr %i.ff, i64 %indvars.iv473 ; 2 uses
  %i.ni = load double, ptr %i.nh, align 8, !tbaa !57
  %i.nj = fmul double %i.ni, 2.500000e-01
  store double %i.nj, ptr %i.nh, align 8, !tbaa !57
  %indvars.iv.next474 = add nuw nsw i64 %indvars.iv473, 1 ; 2 uses
  %exitcond477.not = icmp eq i64 %indvars.iv.next474, %wide.trip.count476
  br i1 %exitcond477.not, label %._crit_edge, label %.lr.ph428, !llvm.loop !80

bb.ce:                                            ; preds = %._crit_edge
  %i.nk = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.nf) #18
          to label %bb.cf unwind label %bb.ci     ; 5 uses

bb.cf:                                            ; preds = %bb.ce
  invoke void @_ZN5Ipopt13TripletHelper10FillRowColEiRKNS_6MatrixEPiS4_ii(i32 noundef %i.eo, ptr noundef nonnull align 8 dereferenceable(69) %i.du, ptr noundef nonnull %i.ng, ptr noundef nonnull %i.nk, i32 noundef 0, i32 noundef 0)
          to label %bb.cg unwind label %bb.ci

bb.cg:                                            ; preds = %bb.cf
  %i.nl = getelementptr inbounds [4 x i8], ptr %i.ng, i64 %i.fx
  %i.nm = getelementptr inbounds [4 x i8], ptr %i.nk, i64 %i.fx
  invoke void @_ZN5Ipopt13TripletHelper10FillRowColEiRKNS_6MatrixEPiS4_ii(i32 noundef %i.ep, ptr noundef nonnull align 8 dereferenceable(69) %i.ec, ptr noundef nonnull %i.nl, ptr noundef nonnull %i.nm, i32 noundef %i.es, i32 noundef 0)
          to label %.preheader392 unwind label %bb.ci

.preheader392:                                    ; preds = %bb.cg
  %i.nn = add i32 %i.ev, %i.es                    ; 4 uses
  %i.no = add i32 %i.nn, 1                        ; 4 uses
  br i1 %i.fw, label %.lr.ph431, label %._crit_edge432

.lr.ph431:                                        ; preds = %.preheader392
  %wide.trip.count481 = zext nneg i32 %i.ey to i64
  %invariant.gep557 = getelementptr [8 x i8], ptr %i.ff, i64 %i.fy
  br label %bb.cj

._crit_edge432:                                   ; preds = %bb.cl, %.preheader392
  %.0183.lcssa = phi i32 [ 0, %.preheader392 ], [ %.1, %bb.cl ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  %.sroa.speculated.i309 = call noundef i32 @llvm.smax.i32(i32 %i.no, i32 %i.ey) ; 4 uses
  store i32 %.sroa.speculated.i309, ptr %i.a, align 4, !tbaa !81
  %i.np = zext nneg i32 %.sroa.speculated.i309 to i64
  %i.nq = icmp slt i32 %.sroa.speculated.i309, 0  ; 2 uses
  %i.nr = shl nuw nsw i64 %i.np, 2
  %i.ns = select i1 %i.nq, i64 -1, i64 %i.nr      ; 2 uses
  %i.nt = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.ns) #18
          to label %bb.cm unwind label %bb.cr     ; 3 uses

bb.ch:                                            ; preds = %._crit_edge
  %i.nu = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.ci:                                            ; preds = %bb.cg, %bb.cf, %bb.ce
  %i.nv = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.cj:                                            ; preds = %.lr.ph431, %bb.cl
  %indvars.iv478 = phi i64 [ 0, %.lr.ph431 ], [ %indvars.iv.next479.pre-phi, %bb.cl ] ; 3 uses
  %.0183429 = phi i32 [ 0, %.lr.ph431 ], [ %.1, %bb.cl ] ; 3 uses
  %gep558 = getelementptr [8 x i8], ptr %invariant.gep557, i64 %indvars.iv478
  %i.nw = load double, ptr %gep558, align 8, !tbaa !57 ; 2 uses
  %i.nx = fcmp une double %i.nw, 0.000000e+00
  br i1 %i.nx, label %bb.ck, label %._crit_edge493

._crit_edge493:                                   ; preds = %bb.cj
  %.pre = add nuw nsw i64 %indvars.iv478, 1
  br label %bb.cl

bb.ck:                                            ; preds = %bb.cj
  %i.ny = add nsw i32 %.0183429, %i.ez
  %i.nz = sext i32 %i.ny to i64                   ; 3 uses
  %i.oa = getelementptr inbounds [4 x i8], ptr %i.ng, i64 %i.nz
  store i32 %i.no, ptr %i.oa, align 4, !tbaa !81
  %i.ob = add nuw nsw i64 %indvars.iv478, 1       ; 2 uses
  %i.oc = getelementptr inbounds [4 x i8], ptr %i.nk, i64 %i.nz
  %i.od = trunc nuw nsw i64 %i.ob to i32
  store i32 %i.od, ptr %i.oc, align 4, !tbaa !81
  %i.oe = getelementptr inbounds [8 x i8], ptr %i.ff, i64 %i.nz
  store double %i.nw, ptr %i.oe, align 8, !tbaa !57
  %i.of = add nsw i32 %.0183429, 1
  br label %bb.cl

bb.cl:                                            ; preds = %._crit_edge493, %bb.ck
  %indvars.iv.next479.pre-phi = phi i64 [ %.pre, %._crit_edge493 ], [ %i.ob, %bb.ck ] ; 2 uses
  %.1 = phi i32 [ %.0183429, %._crit_edge493 ], [ %i.of, %bb.ck ] ; 2 uses
  %exitcond482.not = icmp eq i64 %indvars.iv.next479.pre-phi, %wide.trip.count481
  br i1 %exitcond482.not, label %._crit_edge432, label %bb.cj, !llvm.loop !82

bb.cm:                                            ; preds = %._crit_edge432
  %i.og = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.ns) #18
          to label %bb.cn unwind label %bb.cs     ; 3 uses

bb.cn:                                            ; preds = %bb.cm
  %i.oh = mul nsw i32 %.sroa.speculated.i309, 5
  %i.oi = sext i32 %i.oh to i64
  %i.oj = shl nsw i64 %i.oi, 2
  %i.ok = select i1 %i.nq, i64 -1, i64 %i.oj
  %i.ol = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.ok) #18
          to label %bb.co unwind label %bb.ct     ; 2 uses

bb.co:                                            ; preds = %bb.cn
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #15
  %i.om = add nsw i32 %.0183.lcssa, %i.ez
  store i32 %i.om, ptr %i.b, align 4, !tbaa !81
  %i.on = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.oo = load ptr, ptr %i.on, align 8, !tbaa !8
  invoke void %i.oo(ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef nonnull %i.ff, ptr noundef nonnull %i.nk, ptr noundef nonnull %i.ng, ptr noundef nonnull %i.og, ptr noundef nonnull %i.nt, ptr noundef nonnull %i.ol)
          to label %bb.cp unwind label %bb.cu

bb.cp:                                            ; preds = %bb.co
  call void @_ZdaPv(ptr noundef nonnull %i.ol) #16
  call void @_ZdaPv(ptr noundef nonnull %i.ff) #16
  call void @_ZdaPv(ptr noundef nonnull %i.ng) #16
  call void @_ZdaPv(ptr noundef nonnull %i.nk) #16
  %i.op = sext i32 %i.no to i64
  %i.oq = icmp slt i32 %i.nn, -1
  %i.or = shl nsw i64 %i.op, 3
  %i.os = select i1 %i.oq, i64 -1, i64 %i.or
  %i.ot = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.os) #18
          to label %bb.cq unwind label %bb.cv     ; 5 uses

bb.cq:                                            ; preds = %bb.cp
  %i.ou = sext i32 %i.ey to i64
  %i.ov = icmp slt i32 %i.ey, 0
  %i.ow = shl nsw i64 %i.ou, 3
  %i.ox = select i1 %i.ov, i64 -1, i64 %i.ow
  %i.oy = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.ox) #18
          to label %.preheader391 unwind label %bb.cw ; 3 uses

.preheader391:                                    ; preds = %bb.cq
  %.not433 = icmp slt i32 %i.nn, 0
  br i1 %.not433, label %.preheader, label %.lr.ph435.preheader

.lr.ph435.preheader:                              ; preds = %.preheader391
  %wide.trip.count486 = zext i32 %i.no to i64
  br label %.lr.ph435

.preheader:                                       ; preds = %.lr.ph435, %.preheader391
  br i1 %i.fw, label %.lr.ph437.preheader, label %._crit_edge438

.lr.ph437.preheader:                              ; preds = %.preheader
  %wide.trip.count491 = zext nneg i32 %i.ey to i64
  br label %.lr.ph437

bb.cr:                                            ; preds = %._crit_edge432
  %i.oz = landingpad { ptr, i32 }
          cleanup
  br label %bb.dz

bb.cs:                                            ; preds = %bb.cm
  %i.pa = landingpad { ptr, i32 }
          cleanup
  br label %bb.dz

bb.ct:                                            ; preds = %bb.cn
  %i.pb = landingpad { ptr, i32 }
          cleanup
  br label %bb.dz

bb.cu:                                            ; preds = %bb.co
  %i.pc = landingpad { ptr, i32 }
          cleanup
  br label %bb.dy

bb.cv:                                            ; preds = %bb.cp
  %i.pd = landingpad { ptr, i32 }
          cleanup
  br label %bb.dy

bb.cw:                                            ; preds = %bb.dq, %bb.dk, %bb.dj, %bb.dd, %bb.dc, %._crit_edge438, %bb.cq
  %i.pe = landingpad { ptr, i32 }
          cleanup
  br label %bb.dy

.lr.ph435:                                        ; preds = %.lr.ph435.preheader, %.lr.ph435
  %indvars.iv483 = phi i64 [ 0, %.lr.ph435.preheader ], [ %indvars.iv.next484, %.lr.ph435 ] ; 3 uses
  %i.pf = getelementptr inbounds nuw [4 x i8], ptr %i.nt, i64 %indvars.iv483
  %i.pg = load float, ptr %i.pf, align 4, !tbaa !83
  %i.ph = fpext float %i.pg to double
  %i.pi = call double @exp(double noundef %i.ph) #15
  %i.pj = getelementptr inbounds nuw [8 x i8], ptr %i.ot, i64 %indvars.iv483
  store double %i.pi, ptr %i.pj, align 8, !tbaa !57
  %indvars.iv.next484 = add nuw nsw i64 %indvars.iv483, 1 ; 2 uses
  %exitcond487.not = icmp eq i64 %indvars.iv.next484, %wide.trip.count486
  br i1 %exitcond487.not, label %.preheader, label %.lr.ph435, !llvm.loop !85

.lr.ph437:                                        ; preds = %.lr.ph437.preheader, %.lr.ph437
  %indvars.iv488 = phi i64 [ 0, %.lr.ph437.preheader ], [ %indvars.iv.next489, %.lr.ph437 ] ; 3 uses
  %i.pk = getelementptr inbounds nuw [4 x i8], ptr %i.og, i64 %indvars.iv488
  %i.pl = load float, ptr %i.pk, align 4, !tbaa !83
  %i.pm = fpext float %i.pl to double
  %i.pn = call double @exp(double noundef %i.pm) #15
  %i.po = getelementptr inbounds nuw [8 x i8], ptr %i.oy, i64 %indvars.iv488
  store double %i.pn, ptr %i.po, align 8, !tbaa !57
  %indvars.iv.next489 = add nuw nsw i64 %indvars.iv488, 1 ; 2 uses
  %exitcond492.not = icmp eq i64 %indvars.iv.next489, %wide.trip.count491
  br i1 %exitcond492.not, label %._crit_edge438, label %.lr.ph437, !llvm.loop !86

._crit_edge438:                                   ; preds = %.lr.ph437, %.preheader
  call void @_ZdaPv(ptr noundef nonnull %i.nt) #16
  call void @_ZdaPv(ptr noundef nonnull %i.og) #16
  %i.pp = sext i32 %i.nn to i64
  %i.pq = getelementptr inbounds [8 x i8], ptr %i.ot, i64 %i.pp
  %i.pr = load double, ptr %i.pq, align 8, !tbaa !57
  store double %i.pr, ptr %11, align 8, !tbaa !57
  %i.ps = load ptr, ptr %2, align 8, !tbaa !39    ; 2 uses
  %i.pt = load ptr, ptr %i.ps, align 8, !tbaa !37
  %i.pu = getelementptr inbounds nuw i8, ptr %i.pt, i64 16
  %i.pv = load ptr, ptr %i.pu, align 8
  %i.pw = invoke noundef ptr %i.pv(ptr noundef nonnull align 8 dereferenceable(16) %i.ps)
          to label %bb.cx unwind label %bb.cw     ; 4 uses

bb.cx:                                            ; preds = %._crit_edge438
  %.not.i.i310 = icmp eq ptr %i.pw, null
  br i1 %.not.i.i310, label %bb.cz, label %bb.cy

bb.cy:                                            ; preds = %bb.cx
  %i.px = getelementptr inbounds nuw i8, ptr %i.pw, i64 8 ; 2 uses
  %i.py = load i32, ptr %i.px, align 8, !tbaa !43
  %i.pz = add nsw i32 %i.py, 1
  store i32 %i.pz, ptr %i.px, align 8, !tbaa !43
  br label %bb.cz

bb.cz:                                            ; preds = %bb.cy, %bb.cx
  %i.qa = load ptr, ptr %13, align 8, !tbaa !44   ; 4 uses
  %.not.i.i.i311 = icmp eq ptr %i.qa, null
  br i1 %.not.i.i.i311, label %bb.dc, label %bb.da

bb.da:                                            ; preds = %bb.cz
  %i.qb = getelementptr inbounds nuw i8, ptr %i.qa, i64 8 ; 2 uses
  %i.qc = load i32, ptr %i.qb, align 8, !tbaa !43
  %i.qd = add nsw i32 %i.qc, -1                   ; 2 uses
  store i32 %i.qd, ptr %i.qb, align 8, !tbaa !43
  %i.qe = icmp eq i32 %i.qd, 0
  br i1 %i.qe, label %bb.db, label %bb.dc

bb.db:                                            ; preds = %bb.da
  %i.qf = load ptr, ptr %i.qa, align 8, !tbaa !37
  %i.qg = getelementptr inbounds nuw i8, ptr %i.qf, i64 8
  %i.qh = load ptr, ptr %i.qg, align 8
  call void %i.qh(ptr noundef nonnull align 8 dereferenceable(205) %i.qa) #15, !inline_history !87
  br label %bb.dc

bb.dc:                                            ; preds = %bb.db, %bb.da, %bb.cz
  store ptr %i.pw, ptr %13, align 8, !tbaa !44
  invoke void @_ZN5Ipopt13TripletHelper17PutValuesInVectorEiPKdRNS_6VectorE(i32 noundef %i.es, ptr noundef nonnull %i.ot, ptr noundef nonnull align 8 dereferenceable(205) %i.pw)
          to label %bb.dd unwind label %bb.cw

bb.dd:                                            ; preds = %bb.dc
  %i.qi = load ptr, ptr %3, align 8, !tbaa !39    ; 2 uses
  %i.qj = load ptr, ptr %i.qi, align 8, !tbaa !37
  %i.qk = getelementptr inbounds nuw i8, ptr %i.qj, i64 16
  %i.ql = load ptr, ptr %i.qk, align 8
  %i.qm = invoke noundef ptr %i.ql(ptr noundef nonnull align 8 dereferenceable(16) %i.qi)
          to label %bb.de unwind label %bb.cw     ; 4 uses

bb.de:                                            ; preds = %bb.dd
  %.not.i.i312 = icmp eq ptr %i.qm, null
  br i1 %.not.i.i312, label %bb.dg, label %bb.df

bb.df:                                            ; preds = %bb.de
  %i.qn = getelementptr inbounds nuw i8, ptr %i.qm, i64 8 ; 2 uses
  %i.qo = load i32, ptr %i.qn, align 8, !tbaa !43
  %i.qp = add nsw i32 %i.qo, 1
  store i32 %i.qp, ptr %i.qn, align 8, !tbaa !43
  br label %bb.dg

bb.dg:                                            ; preds = %bb.df, %bb.de
  %i.qq = load ptr, ptr %14, align 8, !tbaa !44   ; 4 uses
  %.not.i.i.i313 = icmp eq ptr %i.qq, null
  br i1 %.not.i.i.i313, label %bb.dj, label %bb.dh

bb.dh:                                            ; preds = %bb.dg
  %i.qr = getelementptr inbounds nuw i8, ptr %i.qq, i64 8 ; 2 uses
  %i.qs = load i32, ptr %i.qr, align 8, !tbaa !43
  %i.qt = add nsw i32 %i.qs, -1                   ; 2 uses
  store i32 %i.qt, ptr %i.qr, align 8, !tbaa !43
  %i.qu = icmp eq i32 %i.qt, 0
  br i1 %i.qu, label %bb.di, label %bb.dj

bb.di:                                            ; preds = %bb.dh
  %i.qv = load ptr, ptr %i.qq, align 8, !tbaa !37
  %i.qw = getelementptr inbounds nuw i8, ptr %i.qv, i64 8
  %i.qx = load ptr, ptr %i.qw, align 8
  call void %i.qx(ptr noundef nonnull align 8 dereferenceable(205) %i.qq) #15, !inline_history !87
  br label %bb.dj

bb.dj:                                            ; preds = %bb.di, %bb.dh, %bb.dg
  store ptr %i.qm, ptr %14, align 8, !tbaa !44
  %i.qy = sext i32 %i.es to i64
  %i.qz = getelementptr inbounds [8 x i8], ptr %i.ot, i64 %i.qy
  invoke void @_ZN5Ipopt13TripletHelper17PutValuesInVectorEiPKdRNS_6VectorE(i32 noundef %i.ev, ptr noundef nonnull %i.qz, ptr noundef nonnull align 8 dereferenceable(205) %i.qm)
          to label %bb.dk unwind label %bb.cw

bb.dk:                                            ; preds = %bb.dj
  %i.ra = load ptr, ptr %1, align 8, !tbaa !39    ; 2 uses
  %i.rb = load ptr, ptr %i.ra, align 8, !tbaa !37
end_hunk_2
begin_hunk_3_@_ZN5Ipopt20EquilibrationScaling30DetermineScalingParametersImplENS_8SmartPtrIKNS_11VectorSpaceEEES4_S4_NS1_IKNS_11MatrixSpaceEEES7_NS1_IKNS_14SymMatrixSpaceEEERKNS_6MatrixERKNS_6VectorESD_SG_RdRNS1_ISE_EESJ_SJ_:bb.a
  store i32 %i.tg, ptr %i.te, align 8, !tbaa !43
  %i.th = icmp eq i32 %i.tg, 0
  br i1 %i.th, label %bb.ec, label %_ZN5Ipopt8SmartPtrINS_6VectorEED2Ev.exit329

bb.ec:                                            ; preds = %bb.eb
  %i.ti = load ptr, ptr %i.ek, align 8, !tbaa !37
  %i.tj = getelementptr inbounds nuw i8, ptr %i.ti, i64 8
  %i.tk = load ptr, ptr %i.tj, align 8
  call void %i.tk(ptr noundef nonnull align 8 dereferenceable(205) %i.ek) #15, !inline_history !45
  br label %_ZN5Ipopt8SmartPtrINS_6VectorEED2Ev.exit329

_ZN5Ipopt8SmartPtrINS_6VectorEED2Ev.exit329:      ; preds = %bb.ec, %bb.eb, %_ZN5Ipopt8SmartPtrINS_14PointPerturberEED2Ev.exit327, %bb.au
  %.pn245.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.gb, %bb.au ], [ %.pn245.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %_ZN5Ipopt8SmartPtrINS_14PointPerturberEED2Ev.exit327 ], [ %.pn245.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %bb.eb ], [ %.pn245.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %bb.ec ] ; 3 uses
  br i1 %.not.i.i289, label %_ZN5Ipopt8SmartPtrINS_6MatrixEED2Ev.exit331, label %bb.ed

bb.ed:                                            ; preds = %_ZN5Ipopt8SmartPtrINS_6VectorEED2Ev.exit329
  %i.tl = getelementptr inbounds nuw i8, ptr %i.ec, i64 8 ; 2 uses
  %i.tm = load i32, ptr %i.tl, align 8, !tbaa !43
  %i.tn = add nsw i32 %i.tm, -1                   ; 2 uses
  store i32 %i.tn, ptr %i.tl, align 8, !tbaa !43
  %i.to = icmp eq i32 %i.tn, 0
  br i1 %i.to, label %bb.ee, label %_ZN5Ipopt8SmartPtrINS_6MatrixEED2Ev.exit331

bb.ee:                                            ; preds = %bb.ed
  %i.tp = load ptr, ptr %i.ec, align 8, !tbaa !37
  %i.tq = getelementptr inbounds nuw i8, ptr %i.tp, i64 8
  %i.tr = load ptr, ptr %i.tq, align 8
  call void %i.tr(ptr noundef nonnull align 8 dereferenceable(69) %i.ec) #15, !inline_history !89
  br label %_ZN5Ipopt8SmartPtrINS_6MatrixEED2Ev.exit331

_ZN5Ipopt8SmartPtrINS_6MatrixEED2Ev.exit331:      ; preds = %bb.ee, %bb.ed, %_ZN5Ipopt8SmartPtrINS_6VectorEED2Ev.exit329, %bb.at
  %.pn245.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.ga, %bb.at ], [ %.pn245.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %_ZN5Ipopt8SmartPtrINS_6VectorEED2Ev.exit329 ], [ %.pn245.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %bb.ed ], [ %.pn245.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %bb.ee ] ; 3 uses
  br i1 %.not.i.i288, label %_ZN5Ipopt8SmartPtrINS_6VectorEED2Ev.exit284, label %bb.ef

bb.ef:                                            ; preds = %_ZN5Ipopt8SmartPtrINS_6MatrixEED2Ev.exit331
  %i.ts = getelementptr inbounds nuw i8, ptr %i.du, i64 8 ; 2 uses
  %i.tt = load i32, ptr %i.ts, align 8, !tbaa !43
  %i.tu = add nsw i32 %i.tt, -1                   ; 2 uses
  store i32 %i.tu, ptr %i.ts, align 8, !tbaa !43
  %i.tv = icmp eq i32 %i.tu, 0
  br i1 %i.tv, label %bb.eg, label %_ZN5Ipopt8SmartPtrINS_6VectorEED2Ev.exit284

bb.eg:                                            ; preds = %bb.ef
  %i.tw = load ptr, ptr %i.du, align 8, !tbaa !37
  %i.tx = getelementptr inbounds nuw i8, ptr %i.tw, i64 8
  %i.ty = load ptr, ptr %i.tx, align 8
  call void %i.ty(ptr noundef nonnull align 8 dereferenceable(69) %i.du) #15, !inline_history !89
  br label %_ZN5Ipopt8SmartPtrINS_6VectorEED2Ev.exit284

_ZN5Ipopt8SmartPtrINS_6VectorEED2Ev.exit284:      ; preds = %bb.as, %_ZN5Ipopt8SmartPtrINS_6MatrixEED2Ev.exit331, %bb.ef, %bb.eg, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i285, %bb.ac, %bb.ab, %_ZN5Ipopt8SmartPtrINS_6VectorEED2Ev.exit282, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit287, %bb.ae
  %.pn260.pn.pn = phi { ptr, i32 } [ %.pn260.pn365, %bb.ae ], [ %i.cz, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit287 ], [ %i.cz, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i285 ], [ %.pn245.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %bb.eg ], [ %i.bj, %_ZN5Ipopt8SmartPtrINS_6VectorEED2Ev.exit282 ], [ %i.bj, %bb.ab ], [ %i.bj, %bb.ac ], [ %i.fz, %bb.as ], [ %.pn245.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %_ZN5Ipopt8SmartPtrINS_6MatrixEED2Ev.exit331 ], [ %.pn245.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %bb.ef ]
  br i1 %.not.i.i, label %_ZN5Ipopt8SmartPtrINS_6VectorEED2Ev.exit335, label %bb.eh

bb.eh:                                            ; preds = %_ZN5Ipopt8SmartPtrINS_6VectorEED2Ev.exit284
  %i.tz = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 2 uses
  %i.ua = load i32, ptr %i.tz, align 8, !tbaa !43
  %i.ub = add nsw i32 %i.ua, -1                   ; 2 uses
  store i32 %i.ub, ptr %i.tz, align 8, !tbaa !43
  %i.uc = icmp eq i32 %i.ub, 0
  br i1 %i.uc, label %bb.ei, label %_ZN5Ipopt8SmartPtrINS_6VectorEED2Ev.exit335

bb.ei:                                            ; preds = %bb.eh
  %i.ud = load ptr, ptr %i.g, align 8, !tbaa !37
  %i.ue = getelementptr inbounds nuw i8, ptr %i.ud, i64 8
  %i.uf = load ptr, ptr %i.ue, align 8
  call void %i.uf(ptr noundef nonnull align 8 dereferenceable(205) %i.g) #15, !inline_history !45
  br label %_ZN5Ipopt8SmartPtrINS_6VectorEED2Ev.exit335

_ZN5Ipopt8SmartPtrINS_6VectorEED2Ev.exit335:      ; preds = %_ZN5Ipopt8SmartPtrINS_6VectorEED2Ev.exit284, %bb.eh, %bb.ei
  resume { ptr, i32 } %.pn260.pn.pn

bb.ej:                                            ; preds = %bb.br, %bb.r
  unreachable
}

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5Ipopt21FAILED_INITIALIZATIONC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_i(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %2, i32 noundef %3) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
.noexc.i:
  %i.a = alloca i64, align 8                      ; 5 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #15
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 6 uses
  store ptr %i.b, ptr %4, align 8, !tbaa !28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  store i64 21, ptr %i.a, align 8, !tbaa !36
  %i.c = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.c, ptr %4, align 8, !tbaa !35
  %i.d = load i64, ptr %i.a, align 8, !tbaa !36   ; 3 uses
  store i64 %i.d, ptr %i.b, align 8, !tbaa !34
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(21) %i.c, ptr noundef nonnull align 1 dereferenceable(21) @.str.6, i64 21, i1 false)
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %i.d, ptr %i.e, align 8, !tbaa !31
  %i.f = load ptr, ptr %4, align 8, !tbaa !35
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.d
  store i8 0, ptr %i.g, align 1, !tbaa !34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  invoke void @_ZN5Ipopt14IpoptExceptionC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_iS8_(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %2, i32 noundef %3, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %bb.a unwind label %bb.b

bb.a:                                             ; preds = %.noexc.i
  %i.h = load ptr, ptr %4, align 8, !tbaa !35     ; 2 uses
  %i.i = icmp eq ptr %i.h, %i.b
  br i1 %i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.a
  %i.j = load i64, ptr %i.b, align 8, !tbaa !34
  %i.k = add i64 %i.j, 1
  call void @_ZdlPvm(ptr noundef %i.h, i64 noundef %i.k) #16
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #15
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN5Ipopt21FAILED_INITIALIZATIONE, i64 16), ptr %0, align 8, !tbaa !37
  ret void

bb.b:                                             ; preds = %.noexc.i
  %i.l = landingpad { ptr, i32 }
          cleanup
  %i.m = load ptr, ptr %4, align 8, !tbaa !35     ; 2 uses
  %i.n = icmp eq ptr %i.m, %i.b
  br i1 %i.n, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7: ; preds = %bb.b
  %i.o = load i64, ptr %i.b, align 8, !tbaa !34
  %i.p = add i64 %i.o, 1
  call void @_ZdlPvm(ptr noundef %i.m, i64 noundef %i.p) #16
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #15
  resume { ptr, i32 } %i.l
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5Ipopt14IpoptExceptionD2Ev(ptr noundef nonnull align 8 dead_on_return(112) dereferenceable(112) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN5Ipopt14IpoptExceptionE, i64 16), ptr %0, align 8, !tbaa !37
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !35   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.a
  %i.e = load i64, ptr %i.c, align 8, !tbaa !34
  %i.f = add i64 %i.e, 1
  tail call void @_ZdlPvm(ptr noundef %i.b, i64 noundef %i.f) #16
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !35   ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.k = load i64, ptr %i.i, align 8, !tbaa !34
  %i.l = add i64 %i.k, 1
  tail call void @_ZdlPvm(ptr noundef %i.h, i64 noundef %i.l) #16
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !35   ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.p = icmp eq ptr %i.n, %i.o
  br i1 %i.p, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3
  %i.q = load i64, ptr %i.o, align 8, !tbaa !34
  %i.r = add i64 %i.q, 1
  tail call void @_ZdlPvm(ptr noundef %i.n, i64 noundef %i.r) #16
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4
  ret void
}

; Function Attrs: cold noreturn
declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr #5

declare void @__cxa_free_exception(ptr) local_unnamed_addr

declare noundef i32 @_ZN5Ipopt13TripletHelper16GetNumberEntriesERKNS_6MatrixE(ptr noundef nonnull align 8 dereferenceable(69)) local_unnamed_addr #2

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znam(i64 noundef) local_unnamed_addr #6

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #6

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #7

; Function Attrs: mustprogress uwtable
define void @_ZNK5Ipopt14PointPerturber21MakeNewPerturbedPointEv(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.Ipopt::SmartPtr.0") align 8 captures(none) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !44   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !39
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 12
  %i.f = load i32, ptr %i.e, align 4, !tbaa !51   ; 7 uses
  %i.g = sext i32 %i.f to i64
  %i.h = icmp slt i32 %i.f, 0
  %i.i = shl nsw i64 %i.g, 3
  %i.j = select i1 %i.h, i64 -1, i64 %i.i         ; 2 uses
  %i.k = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.j) #18 ; 4 uses
  tail call void @_ZN5Ipopt13TripletHelper20FillValuesFromVectorEiRKNS_6VectorEPd(i32 noundef %i.f, ptr noundef nonnull align 8 dereferenceable(205) %i.b, ptr noundef nonnull %i.k)
  %i.l = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.j) #18 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !44
  tail call void @_ZN5Ipopt13TripletHelper20FillValuesFromVectorEiRKNS_6VectorEPd(i32 noundef %i.f, ptr noundef nonnull align 8 dereferenceable(205) %i.n, ptr noundef nonnull %i.l)
  %i.o = icmp sgt i32 %i.f, 0
  br i1 %i.o, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count = zext nneg i32 %i.f to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ] ; 3 uses
  %i.p = tail call noundef double @_ZN5Ipopt10IpRandom01Ev()
  %i.q = fadd double %i.p, -5.000000e-01
  %i.r = fmul double %i.q, 2.000000e+00
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %indvars.iv
  %i.t = load double, ptr %i.s, align 8, !tbaa !57
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %indvars.iv ; 2 uses
  %i.v = load double, ptr %i.u, align 8, !tbaa !57
  %i.w = tail call double @llvm.fmuladd.f64(double %i.r, double %i.t, double %i.v)
  store double %i.w, ptr %i.u, align 8, !tbaa !57
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !58

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  tail call void @_ZdaPv(ptr noundef nonnull %i.l) #16
  %i.x = load ptr, ptr %i.a, align 8, !tbaa !44
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 56
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !39   ; 2 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !37
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %i.ac = load ptr, ptr %i.ab, align 8
  %i.ad = tail call noundef ptr %i.ac(ptr noundef nonnull align 8 dereferenceable(16) %i.z), !inline_history !90 ; 7 uses
  %.not.i.i = icmp eq ptr %i.ad, null
  br i1 %.not.i.i, label %_ZN5Ipopt8SmartPtrINS_6VectorEEC2EPS1_.exit, label %bb.b

bb.b:                                             ; preds = %._crit_edge
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 8 ; 2 uses
  %i.af = load i32, ptr %i.ae, align 8, !tbaa !43
  %i.ag = add nsw i32 %i.af, 1
  store i32 %i.ag, ptr %i.ae, align 8, !tbaa !43
  br label %_ZN5Ipopt8SmartPtrINS_6VectorEEC2EPS1_.exit

_ZN5Ipopt8SmartPtrINS_6VectorEEC2EPS1_.exit:      ; preds = %._crit_edge, %bb.b
  store ptr %i.ad, ptr %0, align 8, !tbaa !44
  invoke void @_ZN5Ipopt13TripletHelper17PutValuesInVectorEiPKdRNS_6VectorE(i32 noundef %i.f, ptr noundef nonnull %i.k, ptr noundef nonnull align 8 dereferenceable(205) %i.ad)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %_ZN5Ipopt8SmartPtrINS_6VectorEEC2EPS1_.exit
  tail call void @_ZdaPv(ptr noundef nonnull %i.k) #16
  ret void

bb.d:                                             ; preds = %_ZN5Ipopt8SmartPtrINS_6VectorEEC2EPS1_.exit
  %i.ah = landingpad { ptr, i32 }
          cleanup
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ad, i64 8 ; 2 uses
  %i.aj = load i32, ptr %i.ai, align 8, !tbaa !43
  %i.ak = add nsw i32 %i.aj, -1                   ; 2 uses
  store i32 %i.ak, ptr %i.ai, align 8, !tbaa !43
  %i.al = icmp eq i32 %i.ak, 0
  br i1 %i.al, label %bb.e, label %_ZN5Ipopt8SmartPtrINS_6VectorEED2Ev.exit

bb.e:                                             ; preds = %bb.d
  %i.am = load ptr, ptr %i.ad, align 8, !tbaa !37
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %i.ao = load ptr, ptr %i.an, align 8
  tail call void %i.ao(ptr noundef nonnull align 8 dereferenceable(205) %i.ad) #15, !inline_history !45
  br label %_ZN5Ipopt8SmartPtrINS_6VectorEED2Ev.exit

_ZN5Ipopt8SmartPtrINS_6VectorEED2Ev.exit:         ; preds = %bb.d, %bb.e
  resume { ptr, i32 } %i.ah
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdaPv(ptr noundef) local_unnamed_addr #7

declare void @_ZN5Ipopt13TripletHelper10FillValuesEiRKNS_6MatrixEPd(i32 noundef, ptr noundef nonnull align 8 dereferenceable(69), ptr noundef) local_unnamed_addr #2

declare void @_ZN5Ipopt13TripletHelper20FillValuesFromVectorEiRKNS_6VectorEPd(i32 noundef, ptr noundef nonnull align 8 dereferenceable(205), ptr noundef) local_unnamed_addr #2

declare void @_ZN5Ipopt13TripletHelper10FillRowColEiRKNS_6MatrixEPiS4_ii(i32 noundef, ptr noundef nonnull align 8 dereferenceable(69), ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @exp(double noundef) local_unnamed_addr #8

declare void @_ZN5Ipopt13TripletHelper17PutValuesInVectorEiPKdRNS_6VectorE(i32 noundef, ptr noundef, ptr noundef nonnull align 8 dereferenceable(205)) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define void @_ZN5Ipopt14PointPerturberC2ERKNS_6VectorEdRKNS_6MatrixES3_S6_S3_(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(32) initializes((0, 12), (16, 32)) %0, ptr noundef nonnull align 8 dereferenceable(205) %1, double noundef %2, ptr noundef nonnull align 8 dereferenceable(69) %3, ptr noundef nonnull align 8 dereferenceable(205) %4, ptr noundef nonnull align 8 dereferenceable(69) %5, ptr noundef nonnull align 8 dereferenceable(205) %6) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 0, ptr %i.a, align 8, !tbaa !43
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN5Ipopt14PointPerturberE, i64 16), ptr %0, align 8, !tbaa !37
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.b, i8 0, i64 16, i1 false)
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !39   ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !37
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = invoke noundef ptr %i.h(ptr noundef nonnull align 8 dereferenceable(16) %i.e)
          to label %_ZNK5Ipopt6Vector7MakeNewEv.exit unwind label %bb.aj, !inline_history !90 ; 18 uses

_ZNK5Ipopt6Vector7MakeNewEv.exit:                 ; preds = %bb.a
  %.not.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i, label %_ZN5Ipopt8SmartPtrINS_6VectorEEC2EPS1_.exit, label %bb.b

bb.b:                                             ; preds = %_ZNK5Ipopt6Vector7MakeNewEv.exit
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 2 uses
  %i.k = load i32, ptr %i.j, align 8, !tbaa !43
  %i.l = add nsw i32 %i.k, 1
  store i32 %i.l, ptr %i.j, align 8, !tbaa !43
  br label %_ZN5Ipopt8SmartPtrINS_6VectorEEC2EPS1_.exit

_ZN5Ipopt8SmartPtrINS_6VectorEEC2EPS1_.exit:      ; preds = %bb.b, %_ZNK5Ipopt6Vector7MakeNewEv.exit
  %i.m = load ptr, ptr %i.i, align 8, !tbaa !37
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 72
  %i.o = load ptr, ptr %i.n, align 8
  invoke void %i.o(ptr noundef nonnull align 8 dereferenceable(205) %i.i, double noundef -1.000000e+300)
          to label %.noexc unwind label %bb.ak, !inline_history !91

.noexc:                                           ; preds = %_ZN5Ipopt8SmartPtrINS_6VectorEEC2EPS1_.exit
  invoke void @_ZN5Ipopt12TaggedObject13ObjectChangedEv(ptr noundef nonnull align 8 dereferenceable(205) %i.i)
          to label %_ZN5Ipopt6Vector3SetEd.exit unwind label %bb.ak

_ZN5Ipopt6Vector3SetEd.exit:                      ; preds = %.noexc
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 56
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !39   ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !37
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %i.t = load ptr, ptr %i.s, align 8
  %i.u = invoke noundef ptr %i.t(ptr noundef nonnull align 8 dereferenceable(16) %i.q)
          to label %_ZNK5Ipopt6Vector7MakeNewEv.exit26 unwind label %bb.al, !inline_history !90 ; 14 uses

_ZNK5Ipopt6Vector7MakeNewEv.exit26:               ; preds = %_ZN5Ipopt6Vector3SetEd.exit
  %.not.i.i27 = icmp eq ptr %i.u, null
  br i1 %.not.i.i27, label %_ZN5Ipopt8SmartPtrINS_6VectorEEC2EPS1_.exit28, label %bb.c

bb.c:                                             ; preds = %_ZNK5Ipopt6Vector7MakeNewEv.exit26
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 8 ; 2 uses
  %i.w = load i32, ptr %i.v, align 8, !tbaa !43
  %i.x = add nsw i32 %i.w, 1
  store i32 %i.x, ptr %i.v, align 8, !tbaa !43
  br label %_ZN5Ipopt8SmartPtrINS_6VectorEEC2EPS1_.exit28

_ZN5Ipopt8SmartPtrINS_6VectorEEC2EPS1_.exit28:    ; preds = %bb.c, %_ZNK5Ipopt6Vector7MakeNewEv.exit26
  %i.y = load ptr, ptr %i.u, align 8, !tbaa !37
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 72
  %i.aa = load ptr, ptr %i.z, align 8
  invoke void %i.aa(ptr noundef nonnull align 8 dereferenceable(205) %i.u, double noundef 1.000000e+300)
          to label %.noexc29 unwind label %bb.am, !inline_history !91

.noexc29:                                         ; preds = %_ZN5Ipopt8SmartPtrINS_6VectorEEC2EPS1_.exit28
  invoke void @_ZN5Ipopt12TaggedObject13ObjectChangedEv(ptr noundef nonnull align 8 dereferenceable(205) %i.u)
          to label %_ZN5Ipopt6Vector3SetEd.exit31 unwind label %bb.am

_ZN5Ipopt6Vector3SetEd.exit31:                    ; preds = %.noexc29
  %i.ab = load ptr, ptr %3, align 8, !tbaa !37
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 32
  %i.ad = load ptr, ptr %i.ac, align 8
  invoke void %i.ad(ptr noundef nonnull align 8 dereferenceable(69) %3, double noundef 1.000000e+00, ptr noundef nonnull align 8 dereferenceable(205) %i.u, double noundef 1.000000e+00, ptr noundef nonnull align 8 dereferenceable(205) %i.i)
          to label %_ZNK5Ipopt6Matrix10MultVectorEdRKNS_6VectorEdRS1_.exit unwind label %bb.am, !inline_history !92

_ZNK5Ipopt6Matrix10MultVectorEdRKNS_6VectorEdRS1_.exit: ; preds = %_ZN5Ipopt6Vector3SetEd.exit31
  %i.ae = load ptr, ptr %3, align 8, !tbaa !37
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 32
  %i.ag = load ptr, ptr %i.af, align 8
  invoke void %i.ag(ptr noundef nonnull align 8 dereferenceable(69) %3, double noundef 1.000000e+00, ptr noundef nonnull align 8 dereferenceable(205) %4, double noundef 1.000000e+00, ptr noundef nonnull align 8 dereferenceable(205) %i.i)
          to label %_ZNK5Ipopt6Matrix10MultVectorEdRKNS_6VectorEdRS1_.exit34 unwind label %bb.am, !inline_history !92

_ZNK5Ipopt6Matrix10MultVectorEdRKNS_6VectorEdRS1_.exit34: ; preds = %_ZNK5Ipopt6Matrix10MultVectorEdRKNS_6VectorEdRS1_.exit
  %i.ah = load ptr, ptr %i.d, align 8, !tbaa !39  ; 2 uses
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !37
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  %i.ak = load ptr, ptr %i.aj, align 8
  %i.al = invoke noundef ptr %i.ak(ptr noundef nonnull align 8 dereferenceable(16) %i.ah)
          to label %_ZNK5Ipopt6Vector7MakeNewEv.exit36 unwind label %bb.an, !inline_history !90 ; 19 uses

_ZNK5Ipopt6Vector7MakeNewEv.exit36:               ; preds = %_ZNK5Ipopt6Matrix10MultVectorEdRKNS_6VectorEdRS1_.exit34
  %.not.i.i37 = icmp eq ptr %i.al, null
  br i1 %.not.i.i37, label %_ZN5Ipopt8SmartPtrINS_6VectorEEC2EPS1_.exit38, label %bb.d

bb.d:                                             ; preds = %_ZNK5Ipopt6Vector7MakeNewEv.exit36
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 8 ; 2 uses
  %i.an = load i32, ptr %i.am, align 8, !tbaa !43
  %i.ao = add nsw i32 %i.an, 1
  store i32 %i.ao, ptr %i.am, align 8, !tbaa !43
  br label %_ZN5Ipopt8SmartPtrINS_6VectorEEC2EPS1_.exit38

_ZN5Ipopt8SmartPtrINS_6VectorEEC2EPS1_.exit38:    ; preds = %bb.d, %_ZNK5Ipopt6Vector7MakeNewEv.exit36
  %i.ap = load ptr, ptr %i.al, align 8, !tbaa !37
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 72
  %i.ar = load ptr, ptr %i.aq, align 8
  invoke void %i.ar(ptr noundef nonnull align 8 dereferenceable(205) %i.al, double noundef 1.000000e+300)
          to label %.noexc39 unwind label %bb.ao, !inline_history !91

.noexc39:                                         ; preds = %_ZN5Ipopt8SmartPtrINS_6VectorEEC2EPS1_.exit38
end_hunk_3
