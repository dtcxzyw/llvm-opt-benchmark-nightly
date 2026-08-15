inline.NumInlined: 7707
inline.NumDeleted: 2228
loop-unroll.NumCompletelyUnrolled: 18
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 22
begin_hunk_0_@_ZNK7xgboost3obj17MeanAbsoluteError10SaveConfigEPNS_4JsonE:.noexc.i
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 11 uses
  store ptr %i.b, ptr %3, align 8, !tbaa !16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  store i64 17, ptr %i.a, align 8, !tbaa !17
  %i.c = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.c, ptr %3, align 8, !tbaa !9
  %i.d = load i64, ptr %i.a, align 8, !tbaa !17   ; 3 uses
  store i64 %i.d, ptr %i.b, align 8, !tbaa !15
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(17) %i.c, ptr noundef nonnull align 1 dereferenceable(17) @.str.35, i64 17, i1 false)
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 4 uses
  store i64 %i.d, ptr %i.e, align 8, !tbaa !18
  %i.f = load ptr, ptr %3, align 8, !tbaa !9
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.d
  store i8 0, ptr %i.g, align 1, !tbaa !15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i32 0, ptr %i.h, align 8, !tbaa !208
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i64 0, ptr %i.i, align 8, !tbaa !210
  store ptr getelementptr inbounds nuw inrange(-16, 56) (i8, ptr @_ZTVN7xgboost10JsonStringE, i64 16), ptr %2, align 8, !tbaa !57
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 5 uses
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 7 uses
  store ptr %i.k, ptr %i.j, align 8, !tbaa !16
  %i.l = load ptr, ptr %3, align 8, !tbaa !9      ; 2 uses
  %i.m = icmp eq ptr %i.l, %i.b
  br i1 %i.m, label %bb.a, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.a:                                             ; preds = %.noexc.i
  %i.n = load i64, ptr %i.e, align 8, !tbaa !18   ; 3 uses
  %i.o = icmp ult i64 %i.n, 16
  call void @llvm.assume(i1 %i.o)
  %i.p = add nuw nsw i64 %i.n, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.k, ptr noundef nonnull align 8 dereferenceable(1) %i.b, i64 %i.p, i1 false)
  br label %_ZN7xgboost10JsonStringC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %.noexc.i
  store ptr %i.l, ptr %i.j, align 8, !tbaa !9
  %i.q = load i64, ptr %i.b, align 8, !tbaa !15
  store i64 %i.q, ptr %i.k, align 8, !tbaa !15
  %.pre = load i64, ptr %i.e, align 8, !tbaa !18
  br label %_ZN7xgboost10JsonStringC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

_ZN7xgboost10JsonStringC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.r = phi i64 [ %i.n, %bb.a ], [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 32
  store i64 %i.r, ptr %i.s, align 8, !tbaa !18
  store ptr %i.b, ptr %3, align 8, !tbaa !9
  store i64 0, ptr %i.e, align 8, !tbaa !18
  store i8 0, ptr %i.b, align 8, !tbaa !15
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #21
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 6 uses
  store ptr %i.t, ptr %4, align 8, !tbaa !16
  store i32 1701667182, ptr %i.t, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 4, ptr %i.u, align 8, !tbaa !18
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 20
  store i8 0, ptr %i.v, align 4, !tbaa !15
  %i.w = load ptr, ptr %1, align 8, !tbaa !195    ; 2 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !57
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 24
  %i.z = load ptr, ptr %i.y, align 8
  %i.aa = invoke noundef nonnull align 8 dereferenceable(8) ptr %i.z(ptr noundef nonnull align 8 dereferenceable(24) %i.w, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %_ZNK7xgboost4JsonixERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit unwind label %bb.d, !inline_history !215 ; 2 uses

_ZNK7xgboost4JsonixERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %_ZN7xgboost10JsonStringC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %i.ab = invoke noalias noundef nonnull dereferenceable(56) ptr @_Znwm(i64 noundef 56) #38
          to label %.noexc12 unwind label %bb.d   ; 7 uses

.noexc12:                                         ; preds = %_ZNK7xgboost4JsonixERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 8 ; 2 uses
  store i32 0, ptr %i.ac, align 4, !tbaa !208
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  store i64 0, ptr %i.ad, align 8, !tbaa !210
  store ptr getelementptr inbounds nuw inrange(-16, 56) (i8, ptr @_ZTVN7xgboost10JsonStringE, i64 16), ptr %i.ab, align 8, !tbaa !57
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ab, i64 24 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ab, i64 40 ; 2 uses
  store ptr %i.af, ptr %i.ae, align 8, !tbaa !16
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ab, i64 32
  store i64 0, ptr %i.ag, align 8, !tbaa !18
  store i8 0, ptr %i.af, align 8, !tbaa !15
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4swapERS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.j, ptr noundef nonnull align 8 dereferenceable(32) %i.ae) #21
  %i.ah = atomicrmw add ptr %i.ac, i32 1 monotonic, align 4 ; 0 uses
  %i.ai = load ptr, ptr %i.aa, align 8, !tbaa !216 ; 4 uses
  store ptr %i.ab, ptr %i.aa, align 8, !tbaa !216
  %.not.i.i.i.i = icmp eq ptr %i.ai, null
  br i1 %.not.i.i.i.i, label %_ZN7xgboost4JsonaSEONS_10JsonStringE.exit, label %bb.b

bb.b:                                             ; preds = %.noexc12
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %i.ak = atomicrmw sub ptr %i.aj, i32 1 release, align 4
  %i.al = icmp eq i32 %i.ak, 1
  br i1 %i.al, label %bb.c, label %_ZN7xgboost4JsonaSEONS_10JsonStringE.exit

bb.c:                                             ; preds = %bb.b
  fence acquire
  %i.am = load ptr, ptr %i.ai, align 8, !tbaa !57
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %i.ao = load ptr, ptr %i.an, align 8
  call void %i.ao(ptr noundef nonnull align 8 dereferenceable(24) %i.ai) #21, !inline_history !217
  br label %_ZN7xgboost4JsonaSEONS_10JsonStringE.exit

_ZN7xgboost4JsonaSEONS_10JsonStringE.exit:        ; preds = %bb.c, %bb.b, %.noexc12
  %i.ap = load ptr, ptr %4, align 8, !tbaa !9     ; 2 uses
  %i.aq = icmp eq ptr %i.ap, %i.t
  br i1 %i.aq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13: ; preds = %_ZN7xgboost4JsonaSEONS_10JsonStringE.exit
  %i.ar = load i64, ptr %i.t, align 8, !tbaa !15
  %i.as = add i64 %i.ar, 1
  call void @_ZdlPvm(ptr noundef %i.ap, i64 noundef %i.as) #36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN7xgboost4JsonaSEONS_10JsonStringE.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  store ptr getelementptr inbounds nuw inrange(-16, 56) (i8, ptr @_ZTVN7xgboost10JsonStringE, i64 16), ptr %2, align 8, !tbaa !57
  %i.at = load ptr, ptr %i.j, align 8, !tbaa !9   ; 2 uses
  %i.au = icmp eq ptr %i.at, %i.k
  br i1 %i.au, label %_ZN7xgboost10JsonStringD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.av = load i64, ptr %i.k, align 8, !tbaa !15
  %i.aw = add i64 %i.av, 1
  call void @_ZdlPvm(ptr noundef %i.at, i64 noundef %i.aw) #36
  br label %_ZN7xgboost10JsonStringD2Ev.exit

_ZN7xgboost10JsonStringD2Ev.exit:                 ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.ax = load ptr, ptr %3, align 8, !tbaa !9     ; 2 uses
  %i.ay = icmp eq ptr %i.ax, %i.b
  br i1 %i.ay, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i14

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i14: ; preds = %_ZN7xgboost10JsonStringD2Ev.exit
  %i.az = load i64, ptr %i.b, align 8, !tbaa !15
  %i.ba = add i64 %i.az, 1
  call void @_ZdlPvm(ptr noundef %i.ax, i64 noundef %i.ba) #36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16: ; preds = %_ZN7xgboost10JsonStringD2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i14
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  ret void

bb.d:                                             ; preds = %_ZNK7xgboost4JsonixERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, %_ZN7xgboost10JsonStringC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %i.bb = landingpad { ptr, i32 }
          cleanup
  %i.bc = load ptr, ptr %4, align 8, !tbaa !9     ; 2 uses
  %i.bd = icmp eq ptr %i.bc, %i.t
  br i1 %i.bd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i17

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i17: ; preds = %bb.d
  %i.be = load i64, ptr %i.t, align 8, !tbaa !15
  %i.bf = add i64 %i.be, 1
  call void @_ZdlPvm(ptr noundef %i.bc, i64 noundef %i.bf) #36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i17
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  store ptr getelementptr inbounds nuw inrange(-16, 56) (i8, ptr @_ZTVN7xgboost10JsonStringE, i64 16), ptr %2, align 8, !tbaa !57
  %i.bg = load ptr, ptr %i.j, align 8, !tbaa !9   ; 2 uses
  %i.bh = icmp eq ptr %i.bg, %i.k
  br i1 %i.bh, label %_ZN7xgboost10JsonStringD2Ev.exit22, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i20

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i20: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19
  %i.bi = load i64, ptr %i.k, align 8, !tbaa !15
  %i.bj = add i64 %i.bi, 1
  call void @_ZdlPvm(ptr noundef %i.bg, i64 noundef %i.bj) #36
  br label %_ZN7xgboost10JsonStringD2Ev.exit22

_ZN7xgboost10JsonStringD2Ev.exit22:               ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i20
  %i.bk = load ptr, ptr %3, align 8, !tbaa !9     ; 2 uses
  %i.bl = icmp eq ptr %i.bk, %i.b
  br i1 %i.bl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i23

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i23: ; preds = %_ZN7xgboost10JsonStringD2Ev.exit22
  %i.bm = load i64, ptr %i.b, align 8, !tbaa !15
  %i.bn = add i64 %i.bm, 1
  call void @_ZdlPvm(ptr noundef %i.bk, i64 noundef %i.bn) #36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25: ; preds = %_ZN7xgboost10JsonStringD2Ev.exit22, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i23
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  resume { ptr, i32 } %i.bb
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN7xgboost3obj17MeanAbsoluteError9ConfigureERKSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_ESaISA_EE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) unnamed_addr #7 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN7xgboost3obj17MeanAbsoluteError11GetGradientERKNS_16HostDeviceVectorIfEERKNS_8MetaInfoEiPNS_6linalg6TensorINS_6detail20GradientPairInternalIfEELi2EEE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(248) %2, i32 noundef %3, ptr noundef %4) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.xgboost::linalg::TensorView.541", align 8 ; 10 uses
  %6 = alloca %"class.xgboost::linalg::TensorView", align 8 ; 7 uses
  %7 = alloca %"class.xgboost::linalg::TensorView.379", align 8 ; 5 uses
  %8 = alloca %"struct.xgboost::common::OptionalWeights", align 8 ; 9 uses
  %9 = alloca %"class.xgboost::HostDeviceVector", align 8 ; 8 uses
  %10 = alloca %"struct.xgboost::common::Transform<>::Evaluator.531", align 8 ; 22 uses
  %.sroa.291 = alloca [72 x i8], align 4          ; 2 uses
  %.sroa.493 = alloca [24 x i8], align 4          ; 2 uses
  %11 = alloca %"struct.xgboost::Context", align 8 ; 9 uses
  %12 = alloca %"struct.xgboost::collective::Result", align 8 ; 7 uses
  %13 = alloca %"class.xgboost::HostDeviceVector", align 8 ; 9 uses
  %14 = alloca %class.anon.544, align 8           ; 18 uses
  tail call fastcc void @_ZN7xgboost3obj12_GLOBAL__N_114CheckRegInputsERKNS_8MetaInfoERKNS_16HostDeviceVectorIfEE(ptr noundef nonnull align 8 dereferenceable(248) %2, ptr noundef nonnull align 8 dereferenceable(8) %1)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #21
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 15 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !190
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %.sroa.0.0.copyload.i = load i32, ptr %i.d, align 8
  call void @_ZNK7xgboost6linalg6TensorIfLi2EE4ViewENS_9DeviceOrdE(ptr dead_on_unwind nonnull writable sret(%"class.xgboost::linalg::TensorView") align 8 %6, ptr noundef nonnull align 8 dereferenceable(25) %i.a, i32 %.sroa.0.0.copyload.i)
  %i.e = load ptr, ptr %0, align 8, !tbaa !57
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 104
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = call noundef i32 %i.g(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(248) %2) ; 3 uses
  %i.i = load ptr, ptr %i.b, align 8, !tbaa !190
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 40
  %.sroa.0.0.copyload.i60 = load i32, ptr %i.j, align 8
  call void @_ZNK7xgboost16HostDeviceVectorINS_6detail20GradientPairInternalIfEEE9SetDeviceENS_9DeviceOrdE(ptr noundef nonnull align 8 dereferenceable(25) %4, i32 %.sroa.0.0.copyload.i60)
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.l = load i64, ptr %2, align 8, !tbaa !17     ; 2 uses
  store i64 %i.l, ptr %i.k, align 8, !tbaa !17
  %i.m = zext i32 %i.h to i64                     ; 12 uses
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i64 %i.m, ptr %i.n, align 8, !tbaa !17
  %i.o = mul i64 %i.l, %i.m
  call void @_ZN7xgboost16HostDeviceVectorINS_6detail20GradientPairInternalIfEEE6ResizeEm(ptr noundef nonnull align 8 dereferenceable(25) %4, i64 noundef %i.o)
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #21
  %i.p = load ptr, ptr %i.b, align 8, !tbaa !190
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 40
  %.sroa.0.0.copyload.i61 = load i32, ptr %i.q, align 8
  call void @_ZN7xgboost6linalg6TensorINS_6detail20GradientPairInternalIfEELi2EE4ViewENS_9DeviceOrdE(ptr dead_on_unwind nonnull writable sret(%"class.xgboost::linalg::TensorView.379") align 8 %7, ptr noundef nonnull align 8 dereferenceable(25) %4, i32 %.sroa.0.0.copyload.i61)
  %i.r = load ptr, ptr %i.b, align 8, !tbaa !190
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 40
  %.sroa.0.0.copyload.i62 = load i32, ptr %i.s, align 8
  call void @_ZNK7xgboost16HostDeviceVectorIfE9SetDeviceENS_9DeviceOrdE(ptr noundef nonnull align 8 dereferenceable(8) %1, i32 %.sroa.0.0.copyload.i62)
  %i.t = load ptr, ptr %i.b, align 8, !tbaa !190
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 40 ; 2 uses
  %.sroa.0.0.copyload.i.i.i = load i32, ptr %i.u, align 8, !noalias !1683
  %i.v = and i32 %.sroa.0.0.copyload.i.i.i, 65535
  %i.w = icmp eq i32 %i.v, 0
  br i1 %i.w, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.x = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNK7xgboost16HostDeviceVectorIfE15ConstHostVectorEv(ptr noundef nonnull align 8 dereferenceable(8) %1), !noalias !1683 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !266, !noalias !1683
  %i.aa = load ptr, ptr %i.x, align 8, !tbaa !268, !noalias !1683 ; 2 uses
  %i.ab = ptrtoint ptr %i.z to i64
  %i.ac = ptrtoint ptr %i.aa to i64
  %i.ad = sub i64 %i.ab, %i.ac
  %i.ae = ashr exact i64 %i.ad, 2
  %.fca.0.insert.i.i.i = insertvalue { i64, ptr } poison, i64 %i.ae, 0
  %.fca.1.insert.i.i.i = insertvalue { i64, ptr } %.fca.0.insert.i.i.i, ptr %i.aa, 1
  br label %_ZN7xgboost6linalg14MakeTensorViewIfJRKmRKjEEEDaPKNS_7ContextEPKNS_16HostDeviceVectorIT_EEDpOT0_.exit

bb.c:                                             ; preds = %bb.a
  %i.af = call { i64, ptr } @_ZNK7xgboost16HostDeviceVectorIfE15ConstDeviceSpanEv(ptr noundef nonnull align 8 dereferenceable(8) %1), !noalias !1683
  br label %_ZN7xgboost6linalg14MakeTensorViewIfJRKmRKjEEEDaPKNS_7ContextEPKNS_16HostDeviceVectorIT_EEDpOT0_.exit

_ZN7xgboost6linalg14MakeTensorViewIfJRKmRKjEEEDaPKNS_7ContextEPKNS_16HostDeviceVectorIT_EEDpOT0_.exit: ; preds = %bb.b, %bb.c
  %.pn.i = phi { i64, ptr } [ %.fca.1.insert.i.i.i, %bb.b ], [ %i.af, %bb.c ] ; 2 uses
  %.sroa.5.0.i = extractvalue { i64, ptr } %.pn.i, 1 ; 4 uses
  %.sroa.02.0.i = extractvalue { i64, ptr } %.pn.i, 0 ; 3 uses
  %.sroa.0.0.copyload.i.i = load i32, ptr %i.u, align 8, !noalias !1683 ; 2 uses
  %i.ag = load i64, ptr %2, align 8, !tbaa !17, !noalias !1686 ; 3 uses
  %i.ah = icmp eq i64 %.sroa.02.0.i, 0
  %i.ai = mul i64 %i.ag, %i.m
  %.sink.i.i.i.i.i = select i1 %i.ah, i64 0, i64 %i.ai ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #21
  %i.aj = load ptr, ptr %i.b, align 8, !tbaa !190
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 40
  %.sroa.0.0.copyload.i63 = load i32, ptr %i.ak, align 8 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 80 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1689)
  %i.am = and i32 %.sroa.0.0.copyload.i63, 65535
  %i.an = icmp eq i32 %i.am, 0
  br i1 %i.an, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_ZN7xgboost6linalg14MakeTensorViewIfJRKmRKjEEEDaPKNS_7ContextEPKNS_16HostDeviceVectorIT_EEDpOT0_.exit
  %i.ao = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNK7xgboost16HostDeviceVectorIfE15ConstHostVectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.al), !noalias !1689 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !266, !noalias !1689
  %i.ar = load ptr, ptr %i.ao, align 8, !tbaa !268, !noalias !1689 ; 2 uses
  %i.as = ptrtoint ptr %i.aq to i64
  %i.at = ptrtoint ptr %i.ar to i64
  %i.au = sub i64 %i.as, %i.at
  %i.av = ashr exact i64 %i.au, 2
  %.fca.0.insert.i.i.i65 = insertvalue { i64, ptr } poison, i64 %i.av, 0
  %.fca.1.insert.i.i.i66 = insertvalue { i64, ptr } %.fca.0.insert.i.i.i65, ptr %i.ar, 1
  br label %_ZN7xgboost6common19MakeOptionalWeightsENS_9DeviceOrdERKNS_16HostDeviceVectorIfEE.exit

bb.e:                                             ; preds = %_ZN7xgboost6linalg14MakeTensorViewIfJRKmRKjEEEDaPKNS_7ContextEPKNS_16HostDeviceVectorIT_EEDpOT0_.exit
  call void @_ZNK7xgboost16HostDeviceVectorIfE9SetDeviceENS_9DeviceOrdE(ptr noundef nonnull align 8 dereferenceable(8) %i.al, i32 %.sroa.0.0.copyload.i63), !noalias !1689
  %i.aw = call { i64, ptr } @_ZNK7xgboost16HostDeviceVectorIfE15ConstDeviceSpanEv(ptr noundef nonnull align 8 dereferenceable(8) %i.al), !noalias !1689
  br label %_ZN7xgboost6common19MakeOptionalWeightsENS_9DeviceOrdERKNS_16HostDeviceVectorIfEE.exit

_ZN7xgboost6common19MakeOptionalWeightsENS_9DeviceOrdERKNS_16HostDeviceVectorIfEE.exit: ; preds = %bb.d, %bb.e
  %.pn.i64 = phi { i64, ptr } [ %.fca.1.insert.i.i.i66, %bb.d ], [ %i.aw, %bb.e ] ; 2 uses
  %.sroa.0.0.i = extractvalue { i64, ptr } %.pn.i64, 0
  %.sroa.3.0.i = extractvalue { i64, ptr } %.pn.i64, 1
  store i64 %.sroa.0.0.i, ptr %8, align 8, !tbaa !17, !alias.scope !1689
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %8, i64 8
  store ptr %.sroa.3.0.i, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !tbaa !241, !alias.scope !1689
  %i.ax = getelementptr inbounds nuw i8, ptr %8, i64 16
  store float 1.000000e+00, ptr %i.ax, align 8, !tbaa !1692, !alias.scope !1689
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #21
  %i.ay = load i64, ptr %2, align 8, !tbaa !1106
  %i.az = load ptr, ptr %i.b, align 8, !tbaa !190
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 40
  %.sroa.0.0.copyload.i67 = load i32, ptr %i.ba, align 8
  call void @_ZN7xgboost16HostDeviceVectorIfEC1EmfNS_9DeviceOrdE(ptr noundef nonnull align 8 dereferenceable(8) %9, i64 noundef %i.ay, float noundef 0.000000e+00, i32 %.sroa.0.0.copyload.i67)
  %i.bb = add i32 %i.h, 1                         ; 2 uses
  %i.bc = zext i32 %i.bb to i64                   ; 2 uses
  %.not.i.i.i.i = icmp eq i32 %i.bb, 0
  br i1 %.not.i.i.i.i, label %.lr.ph, label %bb.f

bb.f:                                             ; preds = %_ZN7xgboost6common19MakeOptionalWeightsENS_9DeviceOrdERKNS_16HostDeviceVectorIfEE.exit
  %i.bd = shl nuw nsw i64 %i.bc, 3                ; 3 uses
  %i.be = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bd) #38
          to label %_ZNSt6vectorIdSaIdEEC2EmRKdRKS0_.exit unwind label %bb.g ; 5 uses

_ZNSt6vectorIdSaIdEEC2EmRKdRKS0_.exit:            ; preds = %bb.f
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.be, i8 0, i64 %i.bd, i1 false), !tbaa !999
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %i.be, i64 %i.bc
  %i.bg = getelementptr inbounds nuw i8, ptr %i.be, i64 %i.bd ; 2 uses
  %i.bh = ptrtoint ptr %i.bf to i64               ; 2 uses
  %.not = icmp eq i32 %i.h, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN7xgboost6common19MakeOptionalWeightsENS_9DeviceOrdERKNS_16HostDeviceVectorIfEE.exit, %_ZNSt6vectorIdSaIdEEC2EmRKdRKS0_.exit
  %.0.i.i.i.i.i.i.i179 = phi ptr [ %i.bg, %_ZNSt6vectorIdSaIdEEC2EmRKdRKS0_.exit ], [ null, %_ZN7xgboost6common19MakeOptionalWeightsENS_9DeviceOrdERKNS_16HostDeviceVectorIfEE.exit ]
  %.sroa.096.0176 = phi ptr [ %i.be, %_ZNSt6vectorIdSaIdEEC2EmRKdRKS0_.exit ], [ null, %_ZN7xgboost6common19MakeOptionalWeightsENS_9DeviceOrdERKNS_16HostDeviceVectorIfEE.exit ] ; 4 uses
  %.sroa.17.0168 = phi i64 [ %i.bh, %_ZNSt6vectorIdSaIdEEC2EmRKdRKS0_.exit ], [ 0, %_ZN7xgboost6common19MakeOptionalWeightsENS_9DeviceOrdERKNS_16HostDeviceVectorIfEE.exit ] ; 3 uses
  %.sroa.291.8..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.291, i64 4
  %.sroa.493.152..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.493, i64 4
  %.sroa.4126.0..sroa_idx = getelementptr inbounds nuw i8, ptr %10, i64 4
  %.sroa.6128.0..sroa_idx = getelementptr inbounds nuw i8, ptr %10, i64 80
  %.sroa.7129.0..sroa_idx = getelementptr inbounds nuw i8, ptr %10, i64 88
  %.sroa.8130.0..sroa_idx = getelementptr inbounds nuw i8, ptr %10, i64 96
  %.sroa.9131.0..sroa_idx = getelementptr inbounds nuw i8, ptr %10, i64 104
  %.sroa.10132.0..sroa_idx = getelementptr inbounds nuw i8, ptr %10, i64 112
  %.sroa.11133.0..sroa_idx = getelementptr inbounds nuw i8, ptr %10, i64 120
  %.sroa.12134.0..sroa_idx = getelementptr inbounds nuw i8, ptr %10, i64 128
  %.sroa.13135.0..sroa_idx = getelementptr inbounds nuw i8, ptr %10, i64 136
  %.sroa.14136.0..sroa_idx = getelementptr inbounds nuw i8, ptr %10, i64 144
  %.sroa.15.0..sroa_idx = getelementptr inbounds nuw i8, ptr %10, i64 148
  %i.bi = getelementptr inbounds nuw i8, ptr %10, i64 176
  %.sroa.4138.0..sroa_idx = getelementptr inbounds nuw i8, ptr %10, i64 184
  %.sroa.5139.0..sroa_idx = getelementptr inbounds nuw i8, ptr %10, i64 192
  %.sroa.6140.0..sroa_idx = getelementptr inbounds nuw i8, ptr %10, i64 200
  %i.bj = getelementptr inbounds nuw i8, ptr %10, i64 208
  %i.bk = getelementptr inbounds nuw i8, ptr %10, i64 212
  br label %bb.h

._crit_edge:                                      ; preds = %bb.k, %_ZNSt6vectorIdSaIdEEC2EmRKdRKS0_.exit
  %.not182 = phi i1 [ true, %_ZNSt6vectorIdSaIdEEC2EmRKdRKS0_.exit ], [ false, %bb.k ]
  %.0.i.i.i.i.i.i.i180 = phi ptr [ %i.bg, %_ZNSt6vectorIdSaIdEEC2EmRKdRKS0_.exit ], [ %.0.i.i.i.i.i.i.i179, %bb.k ] ; 2 uses
  %.sroa.096.0178 = phi ptr [ %i.be, %_ZNSt6vectorIdSaIdEEC2EmRKdRKS0_.exit ], [ %.sroa.096.0176, %bb.k ] ; 9 uses
  %.sroa.17.0169 = phi i64 [ %i.bh, %_ZNSt6vectorIdSaIdEEC2EmRKdRKS0_.exit ], [ %.sroa.17.0168, %bb.k ] ; 3 uses
  %i.bl = load ptr, ptr %i.b, align 8, !tbaa !190
  %i.bm = load i64, ptr %2, align 8, !tbaa !1106
  %i.bn = invoke noundef double @_ZN7xgboost6common18SumOptionalWeightsEPKNS_7ContextERKNS0_15OptionalWeightsEm(ptr noundef %i.bl, ptr noundef nonnull align 8 dereferenceable(20) %8, i64 noundef %i.bm)
          to label %bb.n unwind label %.thread

bb.g:                                             ; preds = %bb.f
  %i.bo = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit79

bb.h:                                             ; preds = %.lr.ph, %bb.k
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.k ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #21
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(68) %.sroa.291.8..sroa_idx, ptr noundef nonnull align 8 dereferenceable(68) %6, i64 68, i1 false), !tbaa.struct !908
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %.sroa.493.152..sroa_idx, ptr noundef nonnull align 8 dereferenceable(20) %8, i64 20, i1 false), !tbaa.struct !1693
  %i.bp = load i64, ptr %2, align 8, !tbaa !1106
  %i.bq = load ptr, ptr %i.b, align 8, !tbaa !190
  %i.br = invoke noundef i32 @_ZNK7xgboost7Context7ThreadsEv(ptr noundef nonnull align 8 dereferenceable(5084) %i.bq)
          to label %bb.i unwind label %bb.l

bb.i:                                             ; preds = %bb.h
  %i.bs = load ptr, ptr %i.b, align 8, !tbaa !190
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 40
  %.sroa.0.0.copyload.i68 = load i32, ptr %i.bt, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(72) %.sroa.4126.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(72) %.sroa.291, i64 72, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %.sroa.15.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(24) %.sroa.493, i64 24, i1 false)
  %i.bu = trunc nuw i64 %indvars.iv to i32
  store i32 %i.bu, ptr %10, align 8
  store i64 %i.m, ptr %.sroa.6128.0..sroa_idx, align 8
  store i64 1, ptr %.sroa.7129.0..sroa_idx, align 8
  store i64 %i.ag, ptr %.sroa.8130.0..sroa_idx, align 8
  store i64 %i.m, ptr %.sroa.9131.0..sroa_idx, align 8
  store i64 %.sroa.02.0.i, ptr %.sroa.10132.0..sroa_idx, align 8
  store ptr %.sroa.5.0.i, ptr %.sroa.11133.0..sroa_idx, align 8
  store ptr %.sroa.5.0.i, ptr %.sroa.12134.0..sroa_idx, align 8
  store i64 %.sink.i.i.i.i.i, ptr %.sroa.13135.0..sroa_idx, align 8
  store i32 %.sroa.0.0.copyload.i.i, ptr %.sroa.14136.0..sroa_idx, align 8
  store i64 0, ptr %i.bi, align 8
  store i64 1, ptr %.sroa.4138.0..sroa_idx, align 8
  store i64 %i.bp, ptr %.sroa.5139.0..sroa_idx, align 8
  store i64 1, ptr %.sroa.6140.0..sroa_idx, align 8
  store i32 %i.br, ptr %i.bj, align 8, !tbaa !1694, !alias.scope !1697
  store i32 %.sroa.0.0.copyload.i68, ptr %i.bk, align 4, !alias.scope !1697
  invoke void @_ZNK7xgboost6common9TransformILb0EE9EvaluatorIZNS_3obj17MeanAbsoluteError11GetGradientERKNS_16HostDeviceVectorIfEERKNS_8MetaInfoEiPNS_6linalg6TensorINS_6detail20GradientPairInternalIfEELi2EEEEUlmNS0_4SpanIfLm18446744073709551615EEEE_E4EvalIJPS7_EEEvDpT_(ptr noundef nonnull align 8 dereferenceable(216) %10, ptr noundef nonnull %9)
          to label %bb.j unwind label %bb.l

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #21
  %i.bv = load ptr, ptr %i.b, align 8, !tbaa !190
  %i.bw = invoke noundef double @_ZN7xgboost6common6ReduceEPKNS_7ContextERKNS_16HostDeviceVectorIfEE(ptr noundef %i.bv, ptr noundef nonnull align 8 dereferenceable(8) %9)
          to label %bb.k unwind label %bb.m

bb.k:                                             ; preds = %bb.j
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %.sroa.096.0176, i64 %indvars.iv
  store double %i.bw, ptr %i.bx, align 8, !tbaa !999
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.m
  br i1 %exitcond.not, label %._crit_edge, label %bb.h, !llvm.loop !1700

bb.l:                                             ; preds = %bb.i, %bb.h
  %i.by = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #21
  br label %bb.aq

bb.m:                                             ; preds = %bb.j
  %i.bz = landingpad { ptr, i32 }
          cleanup
  br label %bb.aq

bb.n:                                             ; preds = %._crit_edge
  %i.ca = getelementptr inbounds i8, ptr %.0.i.i.i.i.i.i.i180, i64 -8 ; 2 uses
  store double %i.bn, ptr %i.ca, align 8, !tbaa !999
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #21
  %i.cb = load ptr, ptr %i.b, align 8, !tbaa !190
  invoke void @_ZNK7xgboost7Context7MakeCPUEv(ptr dead_on_unwind nonnull writable sret(%"struct.xgboost::Context") align 8 %11, ptr noundef nonnull align 8 dereferenceable(5084) %i.cb)
          to label %_ZN7xgboost6linalg7MakeVecIdEEDaPT_mNS_9DeviceOrdE.exit unwind label %bb.s

_ZN7xgboost6linalg7MakeVecIdEEDaPT_mNS_9DeviceOrdE.exit: ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #21
  %i.cc = ptrtoint ptr %.sroa.096.0178 to i64     ; 2 uses
  %i.cd = ptrtoint ptr %.0.i.i.i.i.i.i.i180 to i64
  %i.ce = sub i64 %i.cd, %i.cc
  %i.cf = ashr exact i64 %i.ce, 3                 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  store i64 1, ptr %5, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %i.cf, ptr %.sroa.2.0..sroa_idx, align 8
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i64 %i.cf, ptr %.sroa.3.0..sroa_idx, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 24
  store ptr %.sroa.096.0178, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.584.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 32
  store ptr %.sroa.096.0178, ptr %.sroa.584.0..sroa_idx, align 8
  %.sroa.685.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 40
  store i64 %i.cf, ptr %.sroa.685.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 48
  store i32 -65536, ptr %.sroa.7.0..sroa_idx, align 8
  %i.cg = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN7xgboost10collective15GlobalCommGroupEv()
          to label %.noexc69 unwind label %bb.t

.noexc69:                                         ; preds = %_ZN7xgboost6linalg7MakeVecIdEEDaPT_mNS_9DeviceOrdE.exit
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !1701, !noalias !1703
  invoke void @_ZN7xgboost10collective9AllreduceIdLi1EEENS0_6ResultEPKNS_7ContextERKNS0_9CommGroupENS_6linalg10TensorViewIT_XT0_EEENS0_2OpE(ptr dead_on_unwind nonnull writable sret(%"struct.xgboost::collective::Result") align 8 %12, ptr noundef nonnull %11, ptr noundef nonnull align 8 dereferenceable(64) %i.ch, ptr noundef nonnull byval(%"class.xgboost::linalg::TensorView.541") align 8 %5, i32 noundef 2)
          to label %bb.o unwind label %bb.t

bb.o:                                             ; preds = %.noexc69
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  invoke void @_ZN7xgboost10collective8SafeCollERKNS0_6ResultEPKci(ptr noundef nonnull align 8 dereferenceable(8) %12, ptr noundef nonnull @.str.109, i32 noundef 905)
          to label %bb.p unwind label %bb.u

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #21
  %i.ci = load ptr, ptr %i.b, align 8, !tbaa !190
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 40
  %.sroa.0.0.copyload.i71 = load i32, ptr %i.cj, align 8
  invoke void @_ZN7xgboost16HostDeviceVectorIfEC1EmfNS_9DeviceOrdE(ptr noundef nonnull align 8 dereferenceable(8) %13, i64 noundef %i.m, float noundef 0.000000e+00, i32 %.sroa.0.0.copyload.i71)
          to label %bb.q unwind label %bb.v

bb.q:                                             ; preds = %bb.p
  %i.ck = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZN7xgboost16HostDeviceVectorIfE10HostVectorEv(ptr noundef nonnull align 8 dereferenceable(8) %13)
          to label %bb.r unwind label %bb.w       ; 2 uses

bb.r:                                             ; preds = %bb.q
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 8
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !266
  %i.cn = load ptr, ptr %i.ck, align 8, !tbaa !268 ; 5 uses
  %i.co = ptrtoint ptr %i.cm to i64
  %i.cp = ptrtoint ptr %i.cn to i64
  %i.cq = sub i64 %i.co, %i.cp
  %i.cr = ashr exact i64 %i.cq, 2                 ; 3 uses
  br i1 %.not182, label %._crit_edge145, label %.lr.ph144

.lr.ph144:                                        ; preds = %bb.r
  %i.cs = load double, ptr %i.ca, align 8, !tbaa !999 ; 3 uses
  %i.ct = call noundef double @llvm.fabs.f64(double %i.cs)
  %i.cu = fcmp olt double %i.ct, f0x3EB0C6F7A0B5ED8D
  %i.cv = add nsw i64 %i.m, -1
  %i.cw = call i64 @llvm.umin.i64(i64 %i.cr, i64 %i.cv) ; 2 uses
  %i.cx = add nsw i64 %i.cw, 1                    ; 4 uses
  br i1 %i.cu, label %.lr.ph144.split.us.preheader, label %.lr.ph144.split.preheader

.lr.ph144.split.preheader:                        ; preds = %.lr.ph144
  %min.iters.check = icmp ult i64 %i.cx, 3
  br i1 %min.iters.check, label %.lr.ph144.split.preheader203, label %vector.ph

.lr.ph144.split.preheader203:                     ; preds = %vector.body, %.lr.ph144.split.preheader
  %indvars.iv149.ph = phi i64 [ 0, %.lr.ph144.split.preheader ], [ %n.vec, %vector.body ]
  br label %.lr.ph144.split

vector.ph:                                        ; preds = %.lr.ph144.split.preheader
  %n.vec = and i64 %i.cw, -2                      ; 2 uses
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.cs, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.cy = getelementptr inbounds nuw [8 x i8], ptr %.sroa.096.0178, i64 %index
  %wide.load = load <2 x double>, ptr %i.cy, align 8, !tbaa !999
  %i.cz = fdiv <2 x double> %wide.load, %broadcast.splat ; 2 uses
  %i.da = fmul <2 x double> %i.cz, %i.cz
  %i.db = fptrunc <2 x double> %i.da to <2 x float>
  %i.dc = getelementptr inbounds nuw [4 x i8], ptr %i.cn, i64 %index
  store <2 x float> %i.db, ptr %i.dc, align 4, !tbaa !81
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.dd = icmp eq i64 %index.next, %n.vec
  br i1 %i.dd, label %.lr.ph144.split.preheader203, label %vector.body, !llvm.loop !1708

.lr.ph144.split.us.preheader:                     ; preds = %.lr.ph144
  %min.iters.check193 = icmp ult i64 %i.cx, 9
  br i1 %min.iters.check193, label %.lr.ph144.split.us.preheader202, label %vector.ph194

vector.ph194:                                     ; preds = %.lr.ph144.split.us.preheader
  %i.de = and i64 %i.cx, 7                        ; 2 uses
  %i.df = icmp eq i64 %i.de, 0
  %i.dg = select i1 %i.df, i64 8, i64 %i.de
  %n.vec195 = sub i64 %i.cx, %i.dg                ; 2 uses
  br label %vector.body196

vector.body196:                                   ; preds = %vector.body196, %vector.ph194
  %index197 = phi i64 [ 0, %vector.ph194 ], [ %index.next198, %vector.body196 ] ; 2 uses
  %i.dh = getelementptr inbounds nuw [4 x i8], ptr %i.cn, i64 %index197 ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 16
  store <4 x float> zeroinitializer, ptr %i.dh, align 4, !tbaa !81
  store <4 x float> zeroinitializer, ptr %i.di, align 4, !tbaa !81
  %index.next198 = add nuw i64 %index197, 8       ; 2 uses
  %i.dj = icmp eq i64 %index.next198, %n.vec195
  br i1 %i.dj, label %.lr.ph144.split.us.preheader202, label %vector.body196, !llvm.loop !1709

.lr.ph144.split.us.preheader202:                  ; preds = %vector.body196, %.lr.ph144.split.us.preheader
  %indvars.iv155.ph = phi i64 [ 0, %.lr.ph144.split.us.preheader ], [ %n.vec195, %vector.body196 ]
  br label %.lr.ph144.split.us

.lr.ph144.split.us:                               ; preds = %.lr.ph144.split.us.preheader202, %_ZNK7xgboost6common4SpanIfLm18446744073709551615EEixEm.exit.us
  %indvars.iv155 = phi i64 [ %indvars.iv.next156, %_ZNK7xgboost6common4SpanIfLm18446744073709551615EEixEm.exit.us ], [ %indvars.iv155.ph, %.lr.ph144.split.us.preheader202 ] ; 3 uses
  %exitcond158.not = icmp eq i64 %indvars.iv155, %i.cr
  br i1 %exitcond158.not, label %.split.us, label %_ZNK7xgboost6common4SpanIfLm18446744073709551615EEixEm.exit.us, !prof !116

_ZNK7xgboost6common4SpanIfLm18446744073709551615EEixEm.exit.us: ; preds = %.lr.ph144.split.us
  %i.dk = getelementptr inbounds nuw [4 x i8], ptr %i.cn, i64 %indvars.iv155
  store float 0.000000e+00, ptr %i.dk, align 4, !tbaa !81
  %indvars.iv.next156 = add nuw nsw i64 %indvars.iv155, 1 ; 2 uses
  %exitcond160.not = icmp eq i64 %indvars.iv.next156, %i.m
  br i1 %exitcond160.not, label %._crit_edge145, label %.lr.ph144.split.us, !llvm.loop !1710

._crit_edge145:                                   ; preds = %_ZNK7xgboost6common4SpanIfLm18446744073709551615EEixEm.exit74, %_ZNK7xgboost6common4SpanIfLm18446744073709551615EEixEm.exit.us, %bb.r
  %i.dl = load ptr, ptr %i.b, align 8, !tbaa !190
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 40
  %.sroa.0.0.copyload.i73 = load i32, ptr %i.dm, align 8
  %i.dn = and i32 %.sroa.0.0.copyload.i73, 65535
  %i.do = icmp eq i32 %i.dn, 0
  br i1 %i.do, label %bb.y, label %bb.z

.thread:                                          ; preds = %._crit_edge
  %i.dp = landingpad { ptr, i32 }
          cleanup
  br label %bb.ar

bb.s:                                             ; preds = %bb.n
  %i.dq = landingpad { ptr, i32 }
          cleanup
  br label %bb.ap

bb.t:                                             ; preds = %.noexc69, %_ZN7xgboost6linalg7MakeVecIdEEDaPT_mNS_9DeviceOrdE.exit
  %i.dr = landingpad { ptr, i32 }
          cleanup
  br label %bb.ao

bb.u:                                             ; preds = %bb.o
  %i.ds = landingpad { ptr, i32 }
          cleanup
  br label %bb.an

bb.v:                                             ; preds = %bb.p
  %i.dt = landingpad { ptr, i32 }
          cleanup
  br label %bb.am

bb.w:                                             ; preds = %bb.q
  %i.du = landingpad { ptr, i32 }
          cleanup
  br label %bb.al

.lr.ph144.split:                                  ; preds = %.lr.ph144.split.preheader203, %_ZNK7xgboost6common4SpanIfLm18446744073709551615EEixEm.exit74
  %indvars.iv149 = phi i64 [ %indvars.iv.next150, %_ZNK7xgboost6common4SpanIfLm18446744073709551615EEixEm.exit74 ], [ %indvars.iv149.ph, %.lr.ph144.split.preheader203 ] ; 4 uses
  %exitcond152.not = icmp eq i64 %indvars.iv149, %i.cr
  br i1 %exitcond152.not, label %bb.x, label %_ZNK7xgboost6common4SpanIfLm18446744073709551615EEixEm.exit74, !prof !116

.split.us:                                        ; preds = %.lr.ph144.split.us
  call void @_ZSt9terminatev() #39
  unreachable

bb.x:                                             ; preds = %.lr.ph144.split
  call void @_ZSt9terminatev() #39
  unreachable

_ZNK7xgboost6common4SpanIfLm18446744073709551615EEixEm.exit74: ; preds = %.lr.ph144.split
  %i.dv = getelementptr inbounds nuw [8 x i8], ptr %.sroa.096.0178, i64 %indvars.iv149
  %i.dw = load double, ptr %i.dv, align 8, !tbaa !999
  %i.dx = fdiv double %i.dw, %i.cs                ; 2 uses
  %i.dy = fmul double %i.dx, %i.dx
  %i.dz = fptrunc double %i.dy to float
  %i.ea = getelementptr inbounds nuw [4 x i8], ptr %i.cn, i64 %indvars.iv149
  store float %i.dz, ptr %i.ea, align 4, !tbaa !81
  %indvars.iv.next150 = add nuw nsw i64 %indvars.iv149, 1 ; 2 uses
  %exitcond154.not = icmp eq i64 %indvars.iv.next150, %i.m
  br i1 %exitcond154.not, label %._crit_edge145, label %.lr.ph144.split, !llvm.loop !1711

bb.y:                                             ; preds = %._crit_edge145
  %i.eb = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNK7xgboost16HostDeviceVectorIfE15ConstHostVectorEv(ptr noundef nonnull align 8 dereferenceable(8) %13)
          to label %_ZNK7xgboost16HostDeviceVectorIfE13ConstHostSpanEv.exit unwind label %bb.aj ; 2 uses

_ZNK7xgboost16HostDeviceVectorIfE13ConstHostSpanEv.exit: ; preds = %bb.y
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 8
  %i.ed = load ptr, ptr %i.ec, align 8, !tbaa !266
  %i.ee = load ptr, ptr %i.eb, align 8, !tbaa !268 ; 2 uses
  %i.ef = ptrtoint ptr %i.ed to i64
  %i.eg = ptrtoint ptr %i.ee to i64
  %i.eh = sub i64 %i.ef, %i.eg
  %i.ei = ashr exact i64 %i.eh, 2
  %.fca.0.insert.i.i = insertvalue { i64, ptr } poison, i64 %i.ei, 0
  %.fca.1.insert.i.i = insertvalue { i64, ptr } %.fca.0.insert.i.i, ptr %i.ee, 1
  br label %bb.aa

bb.z:                                             ; preds = %._crit_edge145
  %i.ej = invoke { i64, ptr } @_ZNK7xgboost16HostDeviceVectorIfE15ConstDeviceSpanEv(ptr noundef nonnull align 8 dereferenceable(8) %13)
          to label %bb.aa unwind label %bb.aj

bb.aa:                                            ; preds = %_ZNK7xgboost16HostDeviceVectorIfE13ConstHostSpanEv.exit, %bb.z
  %.pn = phi { i64, ptr } [ %.fca.1.insert.i.i, %_ZNK7xgboost16HostDeviceVectorIfE13ConstHostSpanEv.exit ], [ %i.ej, %bb.z ] ; 2 uses
  %.sroa.0.0 = extractvalue { i64, ptr } %.pn, 0
  %.sroa.6.0 = extractvalue { i64, ptr } %.pn, 1
  %i.ek = load ptr, ptr %i.b, align 8, !tbaa !190
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #21
  store i64 %i.m, ptr %14, align 8
  %.sroa.6108.0..sroa_idx = getelementptr inbounds nuw i8, ptr %14, i64 8
  store i64 1, ptr %.sroa.6108.0..sroa_idx, align 8, !tbaa !15
  %.sroa.7110.0..sroa_idx = getelementptr inbounds nuw i8, ptr %14, i64 16
  store i64 %i.ag, ptr %.sroa.7110.0..sroa_idx, align 8
  %.sroa.8112.0..sroa_idx = getelementptr inbounds nuw i8, ptr %14, i64 24
  store i64 %i.m, ptr %.sroa.8112.0..sroa_idx, align 8, !tbaa !15
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %14, i64 32
  store i64 %.sroa.02.0.i, ptr %.sroa.9.0..sroa_idx, align 8, !tbaa !17
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %14, i64 40
  store ptr %.sroa.5.0.i, ptr %.sroa.10.0..sroa_idx, align 8, !tbaa !241
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %14, i64 48
  store ptr %.sroa.5.0.i, ptr %.sroa.11.0..sroa_idx, align 8, !tbaa !241
  %.sroa.12117.0..sroa_idx = getelementptr inbounds nuw i8, ptr %14, i64 56
  store i64 %.sink.i.i.i.i.i, ptr %.sroa.12117.0..sroa_idx, align 8, !tbaa !17
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %14, i64 64
  store i32 %.sroa.0.0.copyload.i.i, ptr %.sroa.13.0..sroa_idx, align 8
  %i.el = getelementptr inbounds nuw i8, ptr %14, i64 72
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(68) %i.el, ptr noundef nonnull align 8 dereferenceable(68) %6, i64 68, i1 false), !tbaa.struct !908
  %i.em = getelementptr inbounds nuw i8, ptr %14, i64 144
  store i64 %.sroa.0.0, ptr %i.em, align 8, !tbaa !17
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %14, i64 152
  store ptr %.sroa.6.0, ptr %.sroa.6.0..sroa_idx, align 8, !tbaa !241
  %i.en = getelementptr inbounds nuw i8, ptr %14, i64 160
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.en, ptr noundef nonnull align 8 dereferenceable(20) %8, i64 20, i1 false), !tbaa.struct !1693
  %i.eo = getelementptr inbounds nuw i8, ptr %14, i64 184
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(68) %i.eo, ptr noundef nonnull align 8 dereferenceable(68) %7, i64 68, i1 false), !tbaa.struct !909
  invoke void @_ZN7xgboost6linalg17ElementWiseKernelIKfLi2EZNS_3obj17MeanAbsoluteError11GetGradientERKNS_16HostDeviceVectorIfEERKNS_8MetaInfoEiPNS0_6TensorINS_6detail20GradientPairInternalIfEELi2EEEEUlmmE_TnDaLi2EEEvPKNS_7ContextENS0_10TensorViewIT_XT0_EEEOT1_(ptr noundef %i.ek, ptr noundef nonnull byval(%"class.xgboost::linalg::TensorView") align 8 %6, ptr noundef nonnull align 8 dereferenceable(256) %14)
          to label %bb.ab unwind label %bb.ak

bb.ab:                                            ; preds = %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #21
  call void @_ZN7xgboost16HostDeviceVectorIfED1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %13) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #21
  %i.ep = load ptr, ptr %12, align 8, !tbaa !1712 ; 3 uses
  %.not.i.i = icmp eq ptr %i.ep, null
  br i1 %.not.i.i, label %_ZN7xgboost10collective6ResultD2Ev.exit, label %_ZNKSt14default_deleteIN7xgboost10collective6detail10ResultImplEEclEPS3_.exit.i.i

_ZNKSt14default_deleteIN7xgboost10collective6detail10ResultImplEEclEPS3_.exit.i.i: ; preds = %bb.ab
  call void @_ZN7xgboost10collective6detail10ResultImplD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %i.ep) #21, !inline_history !1714
  call void @_ZdlPvm(ptr noundef nonnull %i.ep, i64 noundef 56) #36, !inline_history !1714
  br label %_ZN7xgboost10collective6ResultD2Ev.exit

_ZN7xgboost10collective6ResultD2Ev.exit:          ; preds = %bb.ab, %_ZNKSt14default_deleteIN7xgboost10collective6detail10ResultImplEEclEPS3_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #21
  %i.eq = getelementptr inbounds nuw i8, ptr %11, i64 72
  %i.er = load ptr, ptr %i.eq, align 8, !tbaa !1715 ; 8 uses
  %.not.i.i.i = icmp eq ptr %i.er, null
  br i1 %.not.i.i.i, label %_ZNSt12__shared_ptrIN7xgboost11CUDAContextELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, label %bb.ac

bb.ac:                                            ; preds = %_ZN7xgboost10collective6ResultD2Ev.exit
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 8 ; 4 uses
  %i.et = load atomic i64, ptr %i.es acquire, align 8 ; 2 uses
  %i.eu = icmp eq i64 %i.et, 4294967297
  %i.ev = trunc i64 %i.et to i32                  ; 2 uses
  br i1 %i.eu, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  store i32 0, ptr %i.es, align 8, !tbaa !1716
  %i.ew = getelementptr inbounds nuw i8, ptr %i.er, i64 12
  store i32 0, ptr %i.ew, align 4, !tbaa !1718
  %i.ex = load ptr, ptr %i.er, align 8, !tbaa !57
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ex, i64 16
  %i.ez = load ptr, ptr %i.ey, align 8
  call void %i.ez(ptr noundef nonnull align 8 dereferenceable(16) %i.er) #21, !inline_history !1719
  %i.fa = load ptr, ptr %i.er, align 8, !tbaa !57
  %i.fb = getelementptr inbounds nuw i8, ptr %i.fa, i64 24
  %i.fc = load ptr, ptr %i.fb, align 8
  call void %i.fc(ptr noundef nonnull align 8 dereferenceable(16) %i.er) #21, !inline_history !1719
  br label %_ZNSt12__shared_ptrIN7xgboost11CUDAContextELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i

bb.ae:                                            ; preds = %bb.ac
  %i.fd = load i8, ptr @__libc_single_threaded, align 1, !tbaa !15
  %.not.i.i.i.i76 = icmp eq i8 %i.fd, 0
  br i1 %.not.i.i.i.i76, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.fe = add nsw i32 %i.ev, -1
  store i32 %i.fe, ptr %i.es, align 8, !tbaa !118
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.ag:                                            ; preds = %bb.ae
  %i.ff = atomicrmw volatile add ptr %i.es, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.ag, %bb.af
  %.0.i.i.i.i.i = phi i32 [ %i.ev, %bb.af ], [ %i.ff, %bb.ag ]
  %i.fg = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.fg, label %bb.ah, label %_ZNSt12__shared_ptrIN7xgboost11CUDAContextELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, !prof !116

bb.ah:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.er) #21
  br label %_ZNSt12__shared_ptrIN7xgboost11CUDAContextELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i

_ZNSt12__shared_ptrIN7xgboost11CUDAContextELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i: ; preds = %bb.ah, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.ad, %_ZN7xgboost10collective6ResultD2Ev.exit
  %i.fh = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.fi = load ptr, ptr %i.fh, align 8, !tbaa !9  ; 2 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %11, i64 24 ; 2 uses
  %i.fk = icmp eq ptr %i.fi, %i.fj
  br i1 %i.fk, label %_ZN7xgboost7ContextD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNSt12__shared_ptrIN7xgboost11CUDAContextELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i
  %i.fl = load i64, ptr %i.fj, align 8, !tbaa !15
  %i.fm = add i64 %i.fl, 1
  call void @_ZdlPvm(ptr noundef %i.fi, i64 noundef %i.fm) #36
  br label %_ZN7xgboost7ContextD2Ev.exit

_ZN7xgboost7ContextD2Ev.exit:                     ; preds = %_ZNSt12__shared_ptrIN7xgboost11CUDAContextELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #21
  %.not.i.i.i77 = icmp eq ptr %.sroa.096.0178, null
  br i1 %.not.i.i.i77, label %_ZNSt6vectorIdSaIdEED2Ev.exit, label %bb.ai

bb.ai:                                            ; preds = %_ZN7xgboost7ContextD2Ev.exit
  %i.fn = sub i64 %.sroa.17.0169, %i.cc
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.096.0178, i64 noundef %i.fn) #36
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit

_ZNSt6vectorIdSaIdEED2Ev.exit:                    ; preds = %_ZN7xgboost7ContextD2Ev.exit, %bb.ai
  call void @_ZN7xgboost16HostDeviceVectorIfED1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %9) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21
  ret void

bb.aj:                                            ; preds = %bb.y, %bb.z
  %i.fo = landingpad { ptr, i32 }
          cleanup
  br label %bb.al

bb.ak:                                            ; preds = %bb.aa
  %i.fp = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #21
  br label %bb.al

bb.al:                                            ; preds = %bb.aj, %bb.ak, %bb.w
  %.pn49.pn = phi { ptr, i32 } [ %i.du, %bb.w ], [ %i.fp, %bb.ak ], [ %i.fo, %bb.aj ]
  call void @_ZN7xgboost16HostDeviceVectorIfED1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %13) #21
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.v
  %.pn49.pn.pn = phi { ptr, i32 } [ %.pn49.pn, %bb.al ], [ %i.dt, %bb.v ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #21
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.u
  %.pn49.pn.pn.pn = phi { ptr, i32 } [ %.pn49.pn.pn, %bb.am ], [ %i.ds, %bb.u ]
  call void @_ZN7xgboost10collective6ResultD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %12) #21
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.t
  %.pn49.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn49.pn.pn.pn, %bb.an ], [ %i.dr, %bb.t ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #21
  call void @_ZN7xgboost7ContextD2Ev(ptr noundef nonnull align 8 dead_on_return(5084) dereferenceable(5084) %11) #21
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %bb.s
  %.pn49.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn49.pn.pn.pn.pn, %bb.ao ], [ %i.dq, %bb.s ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #21
  br label %bb.aq

bb.aq:                                            ; preds = %bb.l, %bb.m, %bb.ap
  %.sroa.096.0177 = phi ptr [ %.sroa.096.0176, %bb.l ], [ %.sroa.096.0178, %bb.ap ], [ %.sroa.096.0176, %bb.m ] ; 2 uses
  %.sroa.17.0170 = phi i64 [ %.sroa.17.0168, %bb.l ], [ %.sroa.17.0169, %bb.ap ], [ %.sroa.17.0168, %bb.m ]
  %.pn56.pn = phi { ptr, i32 } [ %i.by, %bb.l ], [ %.pn49.pn.pn.pn.pn.pn, %bb.ap ], [ %i.bz, %bb.m ] ; 2 uses
  %.not.i.i.i78 = icmp eq ptr %.sroa.096.0177, null
  br i1 %.not.i.i.i78, label %_ZNSt6vectorIdSaIdEED2Ev.exit79, label %bb.ar

bb.ar:                                            ; preds = %.thread, %bb.aq
  %.pn56.pn189 = phi { ptr, i32 } [ %i.dp, %.thread ], [ %.pn56.pn, %bb.aq ]
  %.sroa.17.0170188 = phi i64 [ %.sroa.17.0169, %.thread ], [ %.sroa.17.0170, %bb.aq ]
  %.sroa.096.0177187 = phi ptr [ %.sroa.096.0178, %.thread ], [ %.sroa.096.0177, %bb.aq ] ; 2 uses
  %i.fq = ptrtoint ptr %.sroa.096.0177187 to i64
  %i.fr = sub i64 %.sroa.17.0170188, %i.fq
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.096.0177187, i64 noundef %i.fr) #36
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit79

_ZNSt6vectorIdSaIdEED2Ev.exit79:                  ; preds = %bb.ar, %bb.aq, %bb.g
  %.pn56.pn.pn = phi { ptr, i32 } [ %i.bo, %bb.g ], [ %.pn56.pn, %bb.aq ], [ %.pn56.pn189, %bb.ar ]
  call void @_ZN7xgboost16HostDeviceVectorIfED1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %9) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21
  resume { ptr, i32 } %.pn56.pn.pn
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef ptr @_ZNK7xgboost3obj17MeanAbsoluteError17DefaultEvalMetricEv(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #7 comdat align 2 {
bb.a:
  ret ptr @.str.205
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNK7xgboost3obj17MeanAbsoluteError14InitEstimationERKNS_8MetaInfoEPNS_6linalg6TensorIfLi1EEE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(248) %1, ptr noundef %2) unnamed_addr #31 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %3 = alloca %"class.xgboost::linalg::TensorView.541", align 8 ; 10 uses
  %i.b = alloca i32, align 4                      ; 9 uses
  %i.c = alloca double, align 8                   ; 7 uses
  %4 = alloca %"struct.xgboost::Context", align 8 ; 9 uses
  %5 = alloca %"struct.xgboost::collective::Result", align 8 ; 7 uses
  %6 = alloca %"class.xgboost::ConsoleLogger", align 8 ; 7 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %8 = alloca %"class.xgboost::linalg::Tensor.212", align 8 ; 8 uses
  %i.d = alloca i64, align 8                      ; 5 uses
  %9 = alloca %"class.xgboost::linalg::Tensor.212", align 8 ; 16 uses
  %10 = alloca %"class.std::unique_ptr", align 8  ; 8 uses
  %i.e = alloca i64, align 8                      ; 6 uses
  %11 = alloca %"class.dmlc::LogMessageFatal", align 1 ; 7 uses
  %12 = alloca %"class.xgboost::HostDeviceVector", align 8 ; 9 uses
  %13 = alloca %"class.xgboost::linalg::TensorView.428", align 8 ; 10 uses
  %14 = alloca %class.anon.587, align 8           ; 20 uses
  %15 = alloca %"class.xgboost::Json", align 8    ; 9 uses
  %16 = alloca %"class.xgboost::JsonObject", align 8 ; 15 uses
  %17 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %18 = alloca %"class.xgboost::linalg::Tensor.163", align 8 ; 9 uses
  tail call void @_ZN7xgboost3obj15CheckInitInputsERKNS_8MetaInfoE(ptr noundef nonnull align 8 dereferenceable(248) %1)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #21
  %i.f = load ptr, ptr %0, align 8, !tbaa !57
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 104
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = tail call noundef i32 %i.h(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(248) %1) ; 2 uses
  store i32 %i.i, ptr %i.b, align 4, !tbaa !118
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 12 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !190
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 40
  %.sroa.0.0.copyload.i = load i32, ptr %i.l, align 8
  tail call void @_ZNK7xgboost16HostDeviceVectorIfE9SetDeviceENS_9DeviceOrdE(ptr noundef nonnull align 8 dereferenceable(17) %2, i32 %.sroa.0.0.copyload.i)
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.n = zext i32 %i.i to i64                     ; 2 uses
  store i64 %i.n, ptr %i.m, align 8, !tbaa !17
  tail call void @_ZN7xgboost16HostDeviceVectorIfE6ResizeEm(ptr noundef nonnull align 8 dereferenceable(17) %2, i64 noundef %i.n)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #21
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 4 uses
  %i.p = tail call noundef i64 @_ZNK7xgboost16HostDeviceVectorIfE4SizeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.o)
  %i.q = icmp eq i64 %i.p, 0
  br i1 %i.q, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.r = load i64, ptr %1, align 8, !tbaa !1106
  %i.s = uitofp i64 %i.r to double
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.t = load ptr, ptr %i.j, align 8, !tbaa !190
  %i.u = tail call noundef double @_ZN7xgboost6common6ReduceEPKNS_7ContextERKNS_16HostDeviceVectorIfEE(ptr noundef %i.t, ptr noundef nonnull align 8 dereferenceable(8) %i.o)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %storemerge = phi double [ %i.u, %bb.c ], [ %i.s, %bb.b ]
  store double %storemerge, ptr %i.c, align 8, !tbaa !999
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #21
  %i.v = load ptr, ptr %i.j, align 8, !tbaa !190
  call void @_ZNK7xgboost7Context7MakeCPUEv(ptr dead_on_unwind nonnull writable sret(%"struct.xgboost::Context") align 8 %4, ptr noundef nonnull align 8 dereferenceable(5084) %i.v)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  store i64 1, ptr %3, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 1, ptr %.sroa.2.0..sroa_idx, align 8
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i64 1, ptr %.sroa.3.0..sroa_idx, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 24
  store ptr %i.c, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5182.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 32
  store ptr %i.c, ptr %.sroa.5182.0..sroa_idx, align 8
  %.sroa.6183.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 40
  store i64 1, ptr %.sroa.6183.0..sroa_idx, align 8
  %.sroa.7184.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 48
  store i32 -65536, ptr %.sroa.7184.0..sroa_idx, align 8
  %i.w = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN7xgboost10collective15GlobalCommGroupEv()
          to label %.noexc75 unwind label %bb.j

.noexc75:                                         ; preds = %bb.d
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !1701, !noalias !1720
  invoke void @_ZN7xgboost10collective9AllreduceIdLi1EEENS0_6ResultEPKNS_7ContextERKNS0_9CommGroupENS_6linalg10TensorViewIT_XT0_EEENS0_2OpE(ptr dead_on_unwind nonnull writable sret(%"struct.xgboost::collective::Result") align 8 %5, ptr noundef nonnull %4, ptr noundef nonnull align 8 dereferenceable(64) %i.x, ptr noundef nonnull byval(%"class.xgboost::linalg::TensorView.541") align 8 %3, i32 noundef 2)
          to label %bb.e unwind label %bb.j

bb.e:                                             ; preds = %.noexc75
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  invoke void @_ZN7xgboost10collective8SafeCollERKNS0_6ResultEPKci(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull @.str.109, i32 noundef 943)
          to label %bb.f unwind label %bb.k

bb.f:                                             ; preds = %bb.e
  %i.y = load ptr, ptr %5, align 8, !tbaa !1712   ; 3 uses
  %.not.i.i = icmp eq ptr %i.y, null
  br i1 %.not.i.i, label %_ZN7xgboost10collective6ResultD2Ev.exit, label %_ZNKSt14default_deleteIN7xgboost10collective6detail10ResultImplEEclEPS3_.exit.i.i

_ZNKSt14default_deleteIN7xgboost10collective6detail10ResultImplEEclEPS3_.exit.i.i: ; preds = %bb.f
  call void @_ZN7xgboost10collective6detail10ResultImplD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %i.y) #21, !inline_history !1714
  call void @_ZdlPvm(ptr noundef nonnull %i.y, i64 noundef 56) #36, !inline_history !1714
  br label %_ZN7xgboost10collective6ResultD2Ev.exit

_ZN7xgboost10collective6ResultD2Ev.exit:          ; preds = %bb.f, %_ZNKSt14default_deleteIN7xgboost10collective6detail10ResultImplEEclEPS3_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  %i.z = load double, ptr %i.c, align 8, !tbaa !999
  %i.aa = call noundef double @llvm.fabs.f64(double %i.z)
  %i.ab = fcmp olt double %i.aa, f0x3EB0C6F7A0B5ED8D
  br i1 %i.ab, label %bb.g, label %bb.w

bb.g:                                             ; preds = %_ZN7xgboost10collective6ResultD2Ev.exit
  %i.ac = invoke noundef zeroext i1 @_ZN7xgboost13ConsoleLogger9ShouldLogENS0_12LogVerbosityE(i32 noundef 1)
          to label %bb.h unwind label %bb.m

bb.h:                                             ; preds = %bb.g
  br i1 %i.ac, label %.noexc.i, label %bb.r

.noexc.i:                                         ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #21
  %i.ad = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 6 uses
  store ptr %i.ad, ptr %7, align 8, !tbaa !16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  store i64 63, ptr %i.a, align 8, !tbaa !17
  %i.ae = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc77 unwind label %bb.n   ; 3 uses

.noexc77:                                         ; preds = %.noexc.i
  store ptr %i.ae, ptr %7, align 8, !tbaa !9
  %i.af = load i64, ptr %i.a, align 8, !tbaa !17  ; 3 uses
  store i64 %i.af, ptr %i.ad, align 8, !tbaa !15
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(63) %i.ae, ptr noundef nonnull align 1 dereferenceable(63) @.str.109, i64 63, i1 false)
  %i.ag = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 %i.af, ptr %i.ag, align 8, !tbaa !18
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ae, i64 %i.af
  store i8 0, ptr %i.ah, align 1, !tbaa !15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  invoke void @_ZN7xgboost13ConsoleLoggerC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiNS0_12LogVerbosityE(ptr noundef nonnull align 8 dereferenceable(380) %6, ptr noundef nonnull align 8 dereferenceable(32) %7, i32 noundef 947, i32 noundef 1)
          to label %bb.i unwind label %bb.o

bb.i:                                             ; preds = %.noexc77
  %i.ai = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull @.str.206, i64 noundef 63)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.p ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.i
  call void @_ZN7xgboost13ConsoleLoggerD1Ev(ptr noundef nonnull align 8 dead_on_return(380) dereferenceable(380) %6) #21
  %i.aj = load ptr, ptr %7, align 8, !tbaa !9     ; 2 uses
  %i.ak = icmp eq ptr %i.aj, %i.ad
  br i1 %i.ak, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.al = load i64, ptr %i.ad, align 8, !tbaa !15
  %i.am = add i64 %i.al, 1
  call void @_ZdlPvm(ptr noundef %i.aj, i64 noundef %i.am) #36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21
  br label %bb.r

bb.j:                                             ; preds = %.noexc75, %bb.d
  %i.an = landingpad { ptr, i32 }
          cleanup
  br label %bb.l

bb.k:                                             ; preds = %bb.e
  %i.ao = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7xgboost10collective6ResultD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %5) #21
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.pn = phi { ptr, i32 } [ %i.ao, %bb.k ], [ %i.an, %bb.j ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  br label %bb.cl

bb.m:                                             ; preds = %bb.g
  %i.ap = landingpad { ptr, i32 }
          cleanup
  br label %bb.cl

bb.n:                                             ; preds = %.noexc.i
  %i.aq = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit81

bb.o:                                             ; preds = %.noexc77
  %i.ar = landingpad { ptr, i32 }
          cleanup
  br label %bb.q

bb.p:                                             ; preds = %bb.i
  %i.as = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7xgboost13ConsoleLoggerD1Ev(ptr noundef nonnull align 8 dead_on_return(380) dereferenceable(380) %6) #21
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %.pn69 = phi { ptr, i32 } [ %i.as, %bb.p ], [ %i.ar, %bb.o ] ; 2 uses
  %i.at = load ptr, ptr %7, align 8, !tbaa !9     ; 2 uses
  %i.au = icmp eq ptr %i.at, %i.ad
  br i1 %i.au, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit81, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i79

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i79: ; preds = %bb.q
  %i.av = load i64, ptr %i.ad, align 8, !tbaa !15
  %i.aw = add i64 %i.av, 1
  call void @_ZdlPvm(ptr noundef %i.at, i64 noundef %i.aw) #36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit81

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit81: ; preds = %bb.q, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i79, %bb.n
  %.pn69.pn = phi { ptr, i32 } [ %i.aq, %bb.n ], [ %.pn69, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i79 ], [ %.pn69, %bb.q ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21
  br label %bb.cl

bb.r:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #21
  %i.ax = load ptr, ptr %i.j, align 8, !tbaa !190
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #21
  %i.ay = load i64, ptr %i.m, align 8, !tbaa !17
  store i64 %i.ay, ptr %i.d, align 8, !tbaa !17
  invoke void @_ZN7xgboost6linalg8ConstantIfJRmEEEDaPKNS_7ContextET_DpOT0_(ptr dead_on_unwind nonnull writable sret(%"class.xgboost::linalg::Tensor.212") align 8 %8, ptr noundef %i.ax, float noundef 0.000000e+00, ptr noundef nonnull align 8 dereferenceable(8) %i.d)
          to label %_ZN7xgboost6linalg5ZerosIfJmEEEDaPKNS_7ContextEDpOT0_.exit unwind label %bb.t

_ZN7xgboost6linalg5ZerosIfJmEEEDaPKNS_7ContextEDpOT0_.exit: ; preds = %bb.r
  %i.az = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN7xgboost16HostDeviceVectorIfEaSEOS1_(ptr noundef nonnull align 8 dereferenceable(17) %2, ptr noundef nonnull align 8 dereferenceable(17) %8)
          to label %bb.s unwind label %bb.u       ; 0 uses

bb.s:                                             ; preds = %_ZN7xgboost6linalg5ZerosIfJmEEEDaPKNS_7ContextEDpOT0_.exit
  %i.ba = getelementptr inbounds nuw i8, ptr %8, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(9) %i.m, ptr noundef nonnull align 8 dereferenceable(9) %i.ba, i64 9, i1 false)
  call void @_ZN7xgboost16HostDeviceVectorIfED1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(17) %8) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #21
  br label %bb.bv

bb.t:                                             ; preds = %bb.r
  %i.bb = landingpad { ptr, i32 }
          cleanup
  br label %bb.v

bb.u:                                             ; preds = %_ZN7xgboost6linalg5ZerosIfJmEEEDaPKNS_7ContextEDpOT0_.exit
  %i.bc = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7xgboost16HostDeviceVectorIfED1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(17) %8) #21
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %.pn72 = phi { ptr, i32 } [ %i.bc, %bb.u ], [ %i.bb, %bb.t ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #21
  br label %bb.cl

bb.w:                                             ; preds = %_ZN7xgboost10collective6ResultD2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #21
  invoke void @_ZN7xgboost16HostDeviceVectorIfEC1EmfNS_9DeviceOrdE(ptr noundef nonnull align 8 dereferenceable(17) %9, i64 noundef 0, float noundef 0.000000e+00, i32 -65536)
          to label %bb.x unwind label %bb.aa

bb.x:                                             ; preds = %bb.w
  %i.bd = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 3 uses
  store i64 0, ptr %i.bd, align 8, !tbaa !17
  %i.be = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 4 uses
  store i8 0, ptr %i.be, align 8, !tbaa !263
  %i.bf = invoke noundef i64 @_ZNK7xgboost16HostDeviceVectorIfE4SizeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.o)
          to label %bb.y unwind label %bb.ab

bb.y:                                             ; preds = %bb.x
  %i.bg = icmp eq i64 %i.bf, 0
  %i.bh = load ptr, ptr %i.j, align 8, !tbaa !190 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  br i1 %i.bg, label %bb.z, label %bb.ac

bb.z:                                             ; preds = %bb.y
  invoke void @_ZN7xgboost6common10SampleMeanEPKNS_7ContextERKNS_6linalg6TensorIfLi2EEEPNS5_IfLi1EEE(ptr noundef %i.bh, ptr noundef nonnull align 8 dereferenceable(25) %i.bi, ptr noundef nonnull %9)
          to label %bb.ad unwind label %bb.ab

bb.aa:                                            ; preds = %bb.w
  %i.bj = landingpad { ptr, i32 }
          cleanup
  br label %bb.ck

bb.ab:                                            ; preds = %bb.x, %bb.ac, %bb.z
  %i.bk = landingpad { ptr, i32 }
          cleanup
end_hunk_0
begin_hunk_1_@_ZN4dmlc14LogCheckFormatIN7xgboost10StringViewES2_EESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS9_EERKT_RKT0_:bb.a
  %i.f = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull @.str.70, i64 noundef 5)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit8 unwind label %.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit8: ; preds = %_ZN7xgboostlsERSoNS_10StringViewE.exit
  %.sroa.0.0.copyload = load ptr, ptr %2, align 8, !tbaa !119 ; 2 uses
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.2.0.copyload = load i64, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !17 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 %.sroa.2.0.copyload
  %.not9.i9 = icmp samesign eq i64 %.sroa.2.0.copyload, 0
  br i1 %.not9.i9, label %_ZN7xgboostlsERSoNS_10StringViewE.exit14, label %.lr.ph.i10

.lr.ph.i10:                                       ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit8, %.noexc13
  %.010.i11 = phi ptr [ %i.j, %.noexc13 ], [ %.sroa.0.0.copyload, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit8 ] ; 2 uses
  %i.h = load i8, ptr %.010.i11, align 1, !tbaa !15
  %i.i = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %3, i8 noundef signext %i.h)
          to label %.noexc13 unwind label %.loopexit ; 0 uses

.noexc13:                                         ; preds = %.lr.ph.i10
  %i.j = getelementptr inbounds nuw i8, ptr %.010.i11, i64 1 ; 2 uses
  %.not.i12 = icmp eq ptr %i.j, %i.g
  br i1 %.not.i12, label %_ZN7xgboostlsERSoNS_10StringViewE.exit14, label %.lr.ph.i10

_ZN7xgboostlsERSoNS_10StringViewE.exit14:         ; preds = %.noexc13, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit8
  %i.k = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull @.str.71, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit16 unwind label %.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit16: ; preds = %_ZN7xgboostlsERSoNS_10StringViewE.exit14
  %i.l = invoke noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #38
          to label %bb.b unwind label %.loopexit.split-lp.loopexit.split-lp ; 8 uses

bb.b:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit16
  call void @llvm.experimental.noalias.scope.decl(metadata !1757)
  call void @llvm.experimental.noalias.scope.decl(metadata !1760)
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 16 ; 4 uses
  store ptr %i.m, ptr %i.l, align 8, !tbaa !16, !alias.scope !1763
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store i64 0, ptr %i.n, align 8, !tbaa !18, !alias.scope !1763
  store i8 0, ptr %i.m, align 8, !tbaa !15, !alias.scope !1763
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !97, !noalias !1763 ; 3 uses
  %.not.i.not.i.i = icmp eq ptr %i.p, null
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.r = load ptr, ptr %i.q, align 8, !noalias !1763 ; 2 uses
  %i.s = icmp ugt ptr %i.p, %i.r
  %.08.i.i.i = select i1 %i.s, ptr %i.p, ptr %i.r ; 2 uses
  %.not5.i.i = icmp eq ptr %.08.i.i.i, null
  %.not.i.i = select i1 %.not.i.not.i.i, i1 true, i1 %.not5.i.i
  br i1 %.not.i.i, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !101, !noalias !1763 ; 2 uses
  %i.v = ptrtoint ptr %.08.i.i.i to i64
  %i.w = ptrtoint ptr %i.u to i64
  %i.x = sub i64 %i.v, %i.w
  %i.y = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.l, i64 noundef 0, i64 noundef 0, ptr noundef %i.u, i64 noundef %i.x)
          to label %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.d ; 0 uses

bb.d:                                             ; preds = %bb.e, %bb.c
  %i.z = landingpad { ptr, i32 }
          cleanup
  %i.aa = load ptr, ptr %i.l, align 8, !tbaa !9, !alias.scope !1763 ; 2 uses
  %i.ab = icmp eq ptr %i.aa, %i.m
  br i1 %i.ab, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.d
  %i.ac = load i64, ptr %i.m, align 8, !tbaa !15, !alias.scope !1763
  %i.ad = add i64 %i.ac, 1
  call void @_ZdlPvm(ptr noundef %i.aa, i64 noundef %i.ad) #36
  br label %.body

bb.e:                                             ; preds = %bb.b
  %i.ae = getelementptr inbounds nuw i8, ptr %3, i64 80
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.l, ptr noundef nonnull align 8 dereferenceable(32) %i.ae)
          to label %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.d

_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit: ; preds = %bb.e, %bb.c
  store ptr %i.l, ptr %0, align 8, !tbaa !85
  %i.af = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.af, ptr %3, align 8, !tbaa !57
  %i.ag = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.ah = getelementptr i8, ptr %i.af, i64 -24
  %i.ai = load i64, ptr %i.ah, align 8
  %i.aj = getelementptr inbounds i8, ptr %3, i64 %i.ai
  store ptr %i.ag, ptr %i.aj, align 8, !tbaa !57
  %i.ak = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.ak, align 8, !tbaa !57
  %i.al = getelementptr inbounds nuw i8, ptr %3, i64 80
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !9  ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %3, i64 96 ; 2 uses
  %i.ao = icmp eq ptr %i.am, %i.an
  br i1 %i.ao, label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.ap = load i64, ptr %i.an, align 8, !tbaa !15
  %i.aq = add i64 %i.ap, 1
  call void @_ZdlPvm(ptr noundef %i.am, i64 noundef %i.aq) #36
  br label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.ak, align 8, !tbaa !57
  %i.ar = getelementptr inbounds nuw i8, ptr %3, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.ar) #21
  %i.as = getelementptr inbounds nuw i8, ptr %3, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %i.as) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  ret void

.loopexit:                                        ; preds = %.lr.ph.i10
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit:                      ; preds = %.lr.ph.i
  %lpad.loopexit17 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp:             ; preds = %_ZN7xgboostlsERSoNS_10StringViewE.exit14, %_ZN7xgboostlsERSoNS_10StringViewE.exit, %bb.a, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit16
  %lpad.loopexit.split-lp18 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.body:                                            ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.l, i64 noundef 32) #36
  br label %.loopexit.split-lp

.loopexit.split-lp:                               ; preds = %.loopexit, %.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp.loopexit, %.body
  %.pn = phi { ptr, i32 } [ %i.z, %.body ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit17, %.loopexit.split-lp.loopexit ], [ %lpad.loopexit.split-lp18, %.loopexit.split-lp.loopexit.split-lp ]
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %3) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNK7xgboost6common9TransformILb0EE9EvaluatorIZNS_3obj17MeanAbsoluteError11GetGradientERKNS_16HostDeviceVectorIfEERKNS_8MetaInfoEiPNS_6linalg6TensorINS_6detail20GradientPairInternalIfEELi2EEEEUlmNS0_4SpanIfLm18446744073709551615EEEE_E4EvalIJPS7_EEEvDpT_(ptr noundef nonnull align 8 dereferenceable(216) %0, ptr noundef %1) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %2 = alloca %class.anon.545, align 8            ; 6 uses
  %3 = alloca %class.anon.532, align 8            ; 4 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %4 = alloca %class.anon.545, align 8            ; 6 uses
  %5 = alloca %class.anon.532, align 8            ; 4 uses
  %6 = alloca %"class.dmlc::LogMessageFatal", align 1 ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 212
  %i.d = load i16, ptr %i.c, align 4, !tbaa !358  ; 2 uses
  %i.e = icmp eq i16 %i.d, 1
  br i1 %i.e, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #21
  %i.f = call noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %6)
  call void @_ZN4dmlc15LogMessageFatal5Entry4InitEPKci(ptr noundef nonnull align 8 dereferenceable(376) %i.f, ptr noundef nonnull @.str.124, i32 noundef 163)
  %i.g = invoke noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %6)
          to label %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit.i unwind label %bb.c ; 2 uses

_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit.i: ; preds = %bb.b
  %i.h = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.g, ptr noundef nonnull @.str.125, i64 noundef 36)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i unwind label %bb.c ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i: ; preds = %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit.i
  %i.i = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIbEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.g, i1 noundef zeroext false)
          to label %_ZNK7xgboost6common9TransformILb0EE9EvaluatorIZNS_3obj17MeanAbsoluteError11GetGradientERKNS_16HostDeviceVectorIfEERKNS_8MetaInfoEiPNS_6linalg6TensorINS_6detail20GradientPairInternalIfEELi2EEEEUlmNS0_4SpanIfLm18446744073709551615EEEE_E10LaunchCUDAILPv0EJS7_EEEvSM_DpPT0_.exit unwind label %bb.c ; 0 uses

bb.c:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i, %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit.i, %bb.b
  %i.j = landingpad { ptr, i32 }
          cleanup
  invoke void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %6)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21
  resume { ptr, i32 } %i.j

bb.e:                                             ; preds = %bb.c
  %i.k = landingpad { ptr, i32 }
          catch ptr null
  %i.l = extractvalue { ptr, i32 } %i.k, 0
  call void @__clang_call_terminate(ptr %i.l) #39
  unreachable

_ZNK7xgboost6common9TransformILb0EE9EvaluatorIZNS_3obj17MeanAbsoluteError11GetGradientERKNS_16HostDeviceVectorIfEERKNS_8MetaInfoEiPNS_6linalg6TensorINS_6detail20GradientPairInternalIfEELi2EEEEUlmNS0_4SpanIfLm18446744073709551615EEEE_E10LaunchCUDAILPv0EJS7_EEEvSM_DpPT0_.exit: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i
  call void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21
  br label %bb.i

bb.f:                                             ; preds = %bb.a
  %.off.i = add i16 %i.d, -2
  %switch.i = icmp ult i16 %.off.i, 3
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 2 uses
  br i1 %switch.i, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(176) %5, ptr noundef nonnull align 8 dereferenceable(176) %0, i64 176, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %1, ptr %i.b, align 8, !tbaa !359
  %.sroa.0.0.copyload.i.i.i = load i64, ptr %i.m, align 8, !tbaa !17
  %i.o = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNK7xgboost16HostDeviceVectorIfE15ConstHostVectorEv(ptr noundef nonnull align 8 dereferenceable(8) %1) ; 0 uses
  %i.p = load i32, ptr %i.n, align 8, !tbaa !1694
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #21
  store ptr %5, ptr %4, align 8, !tbaa !149
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %i.b, ptr %i.q, align 8, !tbaa !363
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr %0, ptr %i.r, align 8, !tbaa !1764
  call void @_ZN7xgboost6common11ParallelForImZNKS0_9TransformILb0EE9EvaluatorIZNS_3obj17MeanAbsoluteError11GetGradientERKNS_16HostDeviceVectorIfEERKNS_8MetaInfoEiPNS_6linalg6TensorINS_6detail20GradientPairInternalIfEELi2EEEEUlmNS0_4SpanIfLm18446744073709551615EEEE_E9LaunchCPUIJS8_EEEvSN_DpPT_EUlmE_EEvT_iNS0_5SchedEOT0_(i64 noundef %.sroa.0.0.copyload.i.i.i, i32 noundef %i.p, i32 2, i64 0, ptr noundef nonnull align 8 dereferenceable(24) %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(176) %3, ptr noundef nonnull align 8 dereferenceable(176) %0, i64 176, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %1, ptr %i.a, align 8, !tbaa !359
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.m, align 8, !tbaa !17
  %i.s = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNK7xgboost16HostDeviceVectorIfE15ConstHostVectorEv(ptr noundef nonnull align 8 dereferenceable(8) %1) ; 0 uses
  %i.t = load i32, ptr %i.n, align 8, !tbaa !1694
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #21
  store ptr %3, ptr %2, align 8, !tbaa !149
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %i.a, ptr %i.u, align 8, !tbaa !363
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 16
  store ptr %0, ptr %i.v, align 8, !tbaa !1764
  call void @_ZN7xgboost6common11ParallelForImZNKS0_9TransformILb0EE9EvaluatorIZNS_3obj17MeanAbsoluteError11GetGradientERKNS_16HostDeviceVectorIfEERKNS_8MetaInfoEiPNS_6linalg6TensorINS_6detail20GradientPairInternalIfEELi2EEEEUlmNS0_4SpanIfLm18446744073709551615EEEE_E9LaunchCPUIJS8_EEEvSN_DpPT_EUlmE_EEvT_iNS0_5SchedEOT0_(i64 noundef %.sroa.0.0.copyload.i.i, i32 noundef %i.t, i32 2, i64 0, ptr noundef nonnull align 8 dereferenceable(24) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h, %_ZNK7xgboost6common9TransformILb0EE9EvaluatorIZNS_3obj17MeanAbsoluteError11GetGradientERKNS_16HostDeviceVectorIfEERKNS_8MetaInfoEiPNS_6linalg6TensorINS_6detail20GradientPairInternalIfEELi2EEEEUlmNS0_4SpanIfLm18446744073709551615EEEE_E10LaunchCUDAILPv0EJS7_EEEvSM_DpPT0_.exit
  ret void
}

declare noundef double @_ZN7xgboost6common6ReduceEPKNS_7ContextERKNS_16HostDeviceVectorIfEE(ptr noundef, ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #5

declare noundef double @_ZN7xgboost6common18SumOptionalWeightsEPKNS_7ContextERKNS0_15OptionalWeightsEm(ptr noundef, ptr noundef nonnull align 8 dereferenceable(20), i64 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNK7xgboost7Context7MakeCPUEv(ptr dead_on_unwind noalias writable sret(%"struct.xgboost::Context") align 8 %0, ptr noundef nonnull align 8 dereferenceable(5084) %1) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %2 = alloca %"struct.xgboost::Context", align 8 ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #21
  %i.c = load i8, ptr %1, align 8
  store i8 %i.c, ptr %2, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 5 uses
  store ptr %i.f, ptr %i.d, align 8, !tbaa !16
  %i.g = load ptr, ptr %i.e, align 8, !tbaa !9    ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.i = load i64, ptr %i.h, align 8, !tbaa !18   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #21
  store i64 %i.i, ptr %i.b, align 8, !tbaa !17
  %i.j = icmp ugt i64 %i.i, 15
  br i1 %i.j, label %.noexc.i.i, label %._crit_edge.i.i.i

.noexc.i.i:                                       ; preds = %bb.a
  %i.k = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.d, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0) ; 2 uses
  store ptr %i.k, ptr %i.d, align 8, !tbaa !9
  %i.l = load i64, ptr %i.b, align 8, !tbaa !17
  store i64 %i.l, ptr %i.f, align 8, !tbaa !15
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc.i.i, %bb.a
  %i.m = phi ptr [ %i.k, %.noexc.i.i ], [ %i.f, %bb.a ] ; 2 uses
  switch i64 %i.i, label %bb.c [
    i64 1, label %bb.b
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i
  ]

bb.b:                                             ; preds = %._crit_edge.i.i.i
  %i.n = load i8, ptr %i.g, align 1, !tbaa !15
  store i8 %i.n, ptr %i.m, align 1, !tbaa !15
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i

bb.c:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.m, ptr align 1 %i.g, i64 %i.i, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i: ; preds = %bb.c, %bb.b, %._crit_edge.i.i.i
  %i.o = load i64, ptr %i.b, align 8, !tbaa !17   ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i64 %i.o, ptr %i.p, align 8, !tbaa !18
  %i.q = load ptr, ptr %i.d, align 8, !tbaa !9
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.o
  store i8 0, ptr %i.r, align 1, !tbaa !15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #21
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(19) %i.s, ptr noundef nonnull align 8 dereferenceable(19) %i.t, i64 19, i1 false)
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 72
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !1715 ; 2 uses
  %i.z = load <2 x ptr>, ptr %i.v, align 8, !tbaa !149
  store <2 x ptr> %i.z, ptr %i.u, align 8, !tbaa !149
  %.not.i.i.i.i = icmp eq ptr %i.y, null
  br i1 %.not.i.i.i.i, label %bb.g, label %bb.d

bb.d:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i
  %i.aa = getelementptr inbounds nuw i8, ptr %i.y, i64 8 ; 3 uses
  %i.ab = load i8, ptr @__libc_single_threaded, align 1, !tbaa !15
  %.not.i.i.i.i.i = icmp eq i8 %i.ab, 0
  br i1 %.not.i.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ac = load i32, ptr %i.aa, align 4, !tbaa !118
  %i.ad = add nsw i32 %i.ac, 1
  store i32 %i.ad, ptr %i.aa, align 4, !tbaa !118
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.ae = atomicrmw volatile add ptr %i.aa, i32 1 acq_rel, align 4 ; 0 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 80
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(5004) %i.af, ptr noundef nonnull align 8 dereferenceable(5004) %i.ag, i64 5004, i1 false)
  %i.ah = invoke noundef nonnull align 8 dereferenceable(5084) ptr @_ZN7xgboost7Context9SetDeviceENS_9DeviceOrdE(ptr noundef nonnull align 8 dereferenceable(5084) %2, i32 -65536)
          to label %bb.h unwind label %bb.u       ; 7 uses

bb.h:                                             ; preds = %bb.g
  %i.ai = load i8, ptr %i.ah, align 8
  store i8 %i.ai, ptr %0, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  store ptr %i.al, ptr %i.aj, align 8, !tbaa !16
  %i.am = load ptr, ptr %i.ak, align 8, !tbaa !9  ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !18 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  store i64 %i.ao, ptr %i.a, align 8, !tbaa !17
  %i.ap = icmp ugt i64 %i.ao, 15
  br i1 %i.ap, label %.noexc.i.i6, label %._crit_edge.i.i.i2

.noexc.i.i6:                                      ; preds = %bb.h
  %i.aq = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.aj, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc unwind label %bb.u     ; 2 uses

.noexc:                                           ; preds = %.noexc.i.i6
  store ptr %i.aq, ptr %i.aj, align 8, !tbaa !9
  %i.ar = load i64, ptr %i.a, align 8, !tbaa !17
  store i64 %i.ar, ptr %i.al, align 8, !tbaa !15
  br label %._crit_edge.i.i.i2

._crit_edge.i.i.i2:                               ; preds = %.noexc, %bb.h
  %i.as = phi ptr [ %i.aq, %.noexc ], [ %i.al, %bb.h ] ; 2 uses
  switch i64 %i.ao, label %bb.j [
    i64 1, label %bb.i
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i3
  ]

bb.i:                                             ; preds = %._crit_edge.i.i.i2
  %i.at = load i8, ptr %i.am, align 1, !tbaa !15
  store i8 %i.at, ptr %i.as, align 1, !tbaa !15
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i3

bb.j:                                             ; preds = %._crit_edge.i.i.i2
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.as, ptr align 1 %i.am, i64 %i.ao, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i3

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i3: ; preds = %bb.j, %bb.i, %._crit_edge.i.i.i2
  %i.au = load i64, ptr %i.a, align 8, !tbaa !17  ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.au, ptr %i.av, align 8, !tbaa !18
  %i.aw = load ptr, ptr %i.aj, align 8, !tbaa !9
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 %i.au
  store i8 0, ptr %i.ax, align 1, !tbaa !15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.az = getelementptr inbounds nuw i8, ptr %i.ah, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(19) %i.ay, ptr noundef nonnull align 8 dereferenceable(19) %i.az, i64 19, i1 false)
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ah, i64 64
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ah, i64 72
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !1715 ; 2 uses
  %i.be = load <2 x ptr>, ptr %i.bb, align 8, !tbaa !149
  store <2 x ptr> %i.be, ptr %i.ba, align 8, !tbaa !149
  %.not.i.i.i.i4 = icmp eq ptr %i.bd, null
  br i1 %.not.i.i.i.i4, label %bb.n, label %bb.k

bb.k:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i3
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bd, i64 8 ; 3 uses
  %i.bg = load i8, ptr @__libc_single_threaded, align 1, !tbaa !15
  %.not.i.i.i.i.i5 = icmp eq i8 %i.bg, 0
  br i1 %.not.i.i.i.i.i5, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bh = load i32, ptr %i.bf, align 4, !tbaa !118
  %i.bi = add nsw i32 %i.bh, 1
  store i32 %i.bi, ptr %i.bf, align 4, !tbaa !118
  br label %bb.n

bb.m:                                             ; preds = %bb.k
  %i.bj = atomicrmw volatile add ptr %i.bf, i32 1 acq_rel, align 4 ; 0 uses
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i3
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.bl = getelementptr inbounds nuw i8, ptr %i.ah, i64 80
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(5004) %i.bk, ptr noundef nonnull align 8 dereferenceable(5004) %i.bl, i64 5004, i1 false)
  %i.bm = load ptr, ptr %i.w, align 8, !tbaa !1715 ; 8 uses
  %.not.i.i.i = icmp eq ptr %i.bm, null
  br i1 %.not.i.i.i, label %_ZNSt12__shared_ptrIN7xgboost11CUDAContextELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 8 ; 4 uses
  %i.bo = load atomic i64, ptr %i.bn acquire, align 8 ; 2 uses
  %i.bp = icmp eq i64 %i.bo, 4294967297
  %i.bq = trunc i64 %i.bo to i32                  ; 2 uses
  br i1 %i.bp, label %bb.p, label %bb.q

end_hunk_1
begin_hunk_2_@llvm.fmuladd.v2f64
!1493 = !{!1494}
!1494 = distinct !{!1494, !1495, !"_ZN4dmlc11LogCheck_EQImmEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_: argument 0"}
!1495 = distinct !{!1495, !"_ZN4dmlc11LogCheck_EQImmEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_"}
!1496 = !{!1122, !927, i64 0}
!1497 = !{!1498, !1500}
!1498 = distinct !{!1498, !1499, !"_ZNK7xgboost6linalg6TensorIfLi2EE4ViewENS_9DeviceOrdE: argument 0"}
!1499 = distinct !{!1499, !"_ZNK7xgboost6linalg6TensorIfLi2EE4ViewENS_9DeviceOrdE"}
!1500 = distinct !{!1500, !1501, !"_ZNK7xgboost6linalg6TensorIfLi2EE8HostViewEv: argument 0"}
!1501 = distinct !{!1501, !"_ZNK7xgboost6linalg6TensorIfLi2EE8HostViewEv"}
!1502 = distinct !{!1502, !33}
!1503 = distinct !{!1503, !33}
!1504 = !{!1505, !1505, i64 0}
!1505 = !{!"p1 _ZTSSt6vectorIfSaIfEE", !13, i64 0}
!1506 = !{!1507}
!1507 = distinct !{!1507, !1508, !"_ZN7xgboost6linalg6TensorIfLi1EE4ViewENS_9DeviceOrdE: argument 0"}
!1508 = distinct !{!1508, !"_ZN7xgboost6linalg6TensorIfLi1EE4ViewENS_9DeviceOrdE"}
!1509 = !{!1510}
!1510 = distinct !{!1510, !1511, !"_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!1511 = distinct !{!1511, !"_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv"}
!1512 = !{!1513}
!1513 = distinct !{!1513, !1514, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!1514 = distinct !{!1514, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv"}
!1515 = !{!1513, !1510}
!1516 = !{!1517, !1505, i64 0}
!1517 = !{!"_ZTSZNK7xgboost3obj13CoxRegression13PredTransformEPNS_16HostDeviceVectorIfEEEUllE_", !1505, i64 0}
!1518 = distinct !{!1518, !33}
!1519 = !{!1520}
!1520 = distinct !{!1520, !1521, !"_ZN4dmlc11LogCheck_GEB5cxx11Eii: argument 0"}
!1521 = distinct !{!1521, !"_ZN4dmlc11LogCheck_GEB5cxx11Eii"}
!1522 = distinct !{!1522, !33}
!1523 = distinct !{!1523, !33}
!1524 = distinct !{!1524, !33}
!1525 = distinct !{!1525, !33}
!1526 = distinct !{!1526, !33}
!1527 = distinct !{!1527, !33}
!1528 = !{!1529, !273, i64 0}
!1529 = !{!"_ZTSZN7xgboost6linalg17ElementWiseKernelIfLi1EZNS_3obj12_GLOBAL__N_116ProbToMarginImplIZNKS2_13CoxRegression12ProbToMarginEPNS0_6TensorIfLi1EEEEUlfE_NS_6common4NoOpIbEENSB_INS_10StringViewEEEEEvPKNS_7ContextES8_OT_T0_T1_EUlmE_TnDaLi2EEEvSH_NS0_10TensorViewISI_XT0_EEEOSL_EUlvE_", !273, i64 0, !275, i64 8, !13, i64 16}
!1530 = !{!1529, !275, i64 8}
!1531 = !{!1529, !13, i64 16}
!1532 = distinct !{!1532, !33}
!1533 = distinct !{!1533, !33}
!1534 = !{!1535}
!1535 = distinct !{!1535, !1536, !"_ZN4dmlc11LogCheck_GEB5cxx11Eii: argument 0"}
!1536 = distinct !{!1536, !"_ZN4dmlc11LogCheck_GEB5cxx11Eii"}
!1537 = distinct !{!1537, !33}
!1538 = !{!1539, !1541}
!1539 = distinct !{!1539, !1540, !"_ZN4dmlc16type_name_helperIfE5valueB5cxx11Ev: argument 0"}
!1540 = distinct !{!1540, !"_ZN4dmlc16type_name_helperIfE5valueB5cxx11Ev"}
!1541 = distinct !{!1541, !1542, !"_ZN4dmlc9type_nameIfEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEv: argument 0"}
!1542 = distinct !{!1542, !"_ZN4dmlc9type_nameIfEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEv"}
!1543 = !{ptr @_ZN7xgboost3obj17TweedieRegressionD2Ev}
!1544 = !{!1545}
!1545 = distinct !{!1545, !1546, !"_ZN7xgboost16XGBoostParameterINS_3obj22TweedieRegressionParamEE18UpdateAllowUnknownISt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESC_ESaISD_EEEESF_RKT_: argument 0"}
!1546 = distinct !{!1546, !"_ZN7xgboost16XGBoostParameterINS_3obj22TweedieRegressionParamEE18UpdateAllowUnknownISt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESC_ESaISD_EEEESF_RKT_"}
!1547 = !{!1548}
!1548 = distinct !{!1548, !1549, !"_ZN4dmlc9ParameterIN7xgboost3obj22TweedieRegressionParamEE18UpdateAllowUnknownISt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESD_ESaISE_EEEESG_RKT_: argument 0"}
!1549 = distinct !{!1549, !"_ZN4dmlc9ParameterIN7xgboost3obj22TweedieRegressionParamEE18UpdateAllowUnknownISt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESD_ESaISE_EEEESG_RKT_"}
!1550 = !{!1548, !1545}
!1551 = !{!1552}
!1552 = distinct !{!1552, !1553, !"_ZN4dmlc9ParameterIN7xgboost3obj22TweedieRegressionParamEE16InitAllowUnknownISt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESD_ESaISE_EEEESG_RKT_: argument 0"}
!1553 = distinct !{!1553, !"_ZN4dmlc9ParameterIN7xgboost3obj22TweedieRegressionParamEE16InitAllowUnknownISt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESD_ESaISE_EEEESG_RKT_"}
!1554 = !{!1552, !1545}
!1555 = !{!1556, !67, i64 52}
!1556 = !{!"_ZTSN7xgboost3obj17TweedieRegressionE", !236, i64 0, !10, i64 16, !1557, i64 48}
!1557 = !{!"_ZTSN7xgboost3obj22TweedieRegressionParamE", !49, i64 0, !67, i64 4}
!1558 = !{!1559}
!1559 = distinct !{!1559, !1560, !"_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!1560 = distinct !{!1560, !"_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv"}
!1561 = !{!1562}
!1562 = distinct !{!1562, !1563, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!1563 = distinct !{!1563, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv"}
!1564 = !{!1562, !1559}
!1565 = !{!1566}
!1566 = distinct !{!1566, !1567, !"_ZN7xgboost6linalg14MakeTensorViewIfJRKmRKjEEEDaPKNS_7ContextEPKNS_16HostDeviceVectorIT_EEDpOT0_: argument 0"}
!1567 = distinct !{!1567, !"_ZN7xgboost6linalg14MakeTensorViewIfJRKmRKjEEEDaPKNS_7ContextEPKNS_16HostDeviceVectorIT_EEDpOT0_"}
!1568 = !{!1569, !1566}
!1569 = distinct !{!1569, !1570, !"_ZN7xgboost6linalg14MakeTensorViewIKfLm18446744073709551615EJRKmRKjEEEDaNS_9DeviceOrdENS_6common4SpanIT_XT0_EEEDpOT1_: argument 0"}
!1570 = distinct !{!1570, !"_ZN7xgboost6linalg14MakeTensorViewIKfLm18446744073709551615EJRKmRKjEEEDaNS_9DeviceOrdENS_6common4SpanIT_XT0_EEEDpOT1_"}
!1571 = !{!1572}
!1572 = distinct !{!1572, !1573, !"_ZN7xgboost6common19MakeOptionalWeightsENS_9DeviceOrdERKNS_16HostDeviceVectorIfEE: argument 0"}
!1573 = distinct !{!1573, !"_ZN7xgboost6common19MakeOptionalWeightsENS_9DeviceOrdERKNS_16HostDeviceVectorIfEE"}
!1574 = !{!1575, !67, i64 168}
!1575 = !{!"_ZTSZN7xgboost3obj17TweedieRegression11GetGradientERKNS_16HostDeviceVectorIfEERKNS_8MetaInfoEiPNS_6linalg6TensorINS_6detail20GradientPairInternalIfEELi2EEEEUlmmE_", !379, i64 0, !379, i64 72, !1012, i64 144, !67, i64 168, !917, i64 176}
!1576 = !{!1577, !5, i64 40}
!1577 = !{!"_ZTSN7xgboost6common9TransformILb0EE9EvaluatorIZNKS_3obj17TweedieRegression13PredTransformEPNS_16HostDeviceVectorIfEEEUlmNS0_4SpanIfLm18446744073709551615EEEE_EE", !1578, i64 0, !246, i64 8, !5, i64 40, !248, i64 44}
!1578 = !{!"_ZTSZNK7xgboost3obj17TweedieRegression13PredTransformEPNS_16HostDeviceVectorIfEEEUlmNS_6common4SpanIfLm18446744073709551615EEEE_"}
!1579 = !{!1580}
!1580 = distinct !{!1580, !1581, !"_ZN7xgboost6common9TransformILb0EE4InitIZNKS_3obj17TweedieRegression13PredTransformEPNS_16HostDeviceVectorIfEEEUlmNS0_4SpanIfLm18446744073709551615EEEE_EENS2_9EvaluatorIT_EESD_NS0_5RangeEiNS_9DeviceOrdE: argument 0"}
!1581 = distinct !{!1581, !"_ZN7xgboost6common9TransformILb0EE4InitIZNKS_3obj17TweedieRegression13PredTransformEPNS_16HostDeviceVectorIfEEEUlmNS0_4SpanIfLm18446744073709551615EEEE_EENS2_9EvaluatorIT_EESD_NS0_5RangeEiNS_9DeviceOrdE"}
!1582 = !{!1583}
!1583 = distinct !{!1583, !1584, !"_ZN7xgboost6linalg6TensorIfLi1EE4ViewENS_9DeviceOrdE: argument 0"}
!1584 = distinct !{!1584, !"_ZN7xgboost6linalg6TensorIfLi1EE4ViewENS_9DeviceOrdE"}
!1585 = !{!1586}
!1586 = distinct !{!1586, !1587, !"_ZN7xgboost16XGBoostParameterINS_3obj22TweedieRegressionParamEE18UpdateAllowUnknownISt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESC_ESaISD_EEEESF_RKT_: argument 0"}
!1587 = distinct !{!1587, !"_ZN7xgboost16XGBoostParameterINS_3obj22TweedieRegressionParamEE18UpdateAllowUnknownISt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESC_ESaISD_EEEESF_RKT_"}
!1588 = !{!1589}
!1589 = distinct !{!1589, !1590, !"_ZN4dmlc9ParameterIN7xgboost3obj22TweedieRegressionParamEE18UpdateAllowUnknownISt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESD_ESaISE_EEEESG_RKT_: argument 0"}
!1590 = distinct !{!1590, !"_ZN4dmlc9ParameterIN7xgboost3obj22TweedieRegressionParamEE18UpdateAllowUnknownISt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESD_ESaISE_EEEESG_RKT_"}
!1591 = !{!1589, !1586}
!1592 = !{!1593}
!1593 = distinct !{!1593, !1594, !"_ZN4dmlc9ParameterIN7xgboost3obj22TweedieRegressionParamEE16InitAllowUnknownISt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESD_ESaISE_EEEESG_RKT_: argument 0"}
!1594 = distinct !{!1594, !"_ZN4dmlc9ParameterIN7xgboost3obj22TweedieRegressionParamEE16InitAllowUnknownISt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESD_ESaISE_EEEESG_RKT_"}
!1595 = !{!1593, !1586}
!1596 = !{!1597, !921, i64 0}
!1597 = !{!"_ZTSZN7xgboost6linalg17ElementWiseKernelIKfLi2EZNS_3obj17TweedieRegression11GetGradientERKNS_16HostDeviceVectorIfEERKNS_8MetaInfoEiPNS0_6TensorINS_6detail20GradientPairInternalIfEELi2EEEEUlmmE_TnDaLi2EEEvPKNS_7ContextENS0_10TensorViewIT_XT0_EEEOT1_EUlvE_", !921, i64 0, !275, i64 8, !13, i64 16}
!1598 = !{!1597, !275, i64 8}
!1599 = !{!1597, !13, i64 16}
!1600 = !{!1601, !927, i64 0}
!1601 = !{!"_ZTSZN7xgboost6common13ParallelFor1dILm2048EmZNS_6linalg8cpu_impl17ElementWiseKernelIKfLi2EZNS_3obj17TweedieRegression11GetGradientERKNS_16HostDeviceVectorIfEERKNS_8MetaInfoEiPNS2_6TensorINS_6detail20GradientPairInternalIfEELi2EEEEUlmmE_EEvNS2_10TensorViewIT_XT0_EEEiOT1_EUlOSN_E_EEvT0_iSQ_EUlSN_E_", !927, i64 0, !13, i64 8}
!1602 = !{!1601, !13, i64 8}
!1603 = distinct !{!1603, !33}
!1604 = !{!1605}
!1605 = distinct !{!1605, !1606, !"_ZN4dmlc11LogCheck_GEB5cxx11Eii: argument 0"}
!1606 = distinct !{!1606, !"_ZN4dmlc11LogCheck_GEB5cxx11Eii"}
!1607 = distinct !{!1607, !33}
!1608 = distinct !{!1608, !33}
!1609 = distinct !{!1609, !33}
!1610 = distinct !{!1610, !33}
!1611 = distinct !{!1611, !33}
!1612 = distinct !{!1612, !33}
!1613 = !{!1614, !927, i64 0}
!1614 = !{!"_ZTSZN7xgboost6linalg8cpu_impl17ElementWiseKernelIKfLi2EZNS_3obj17TweedieRegression11GetGradientERKNS_16HostDeviceVectorIfEERKNS_8MetaInfoEiPNS0_6TensorINS_6detail20GradientPairInternalIfEELi2EEEEUlmmE_EEvNS0_10TensorViewIT_XT0_EEEiOT1_EUlOSL_E_", !927, i64 0, !13, i64 8}
!1615 = distinct !{!1615, !33, !944}
!1616 = !{!1614, !13, i64 8}
!1617 = distinct !{!1617, !33}
!1618 = !{!1619, !927, i64 0}
!1619 = !{!"_ZTSZN7xgboost6common13ParallelFor1dILm2048EmZNS_6linalg8cpu_impl17ElementWiseKernelIKfLi2EZNS_3obj17TweedieRegression11GetGradientERKNS_16HostDeviceVectorIfEERKNS_8MetaInfoEiPNS2_6TensorINS_6detail20GradientPairInternalIfEELi2EEEEUlmmE_EEvNS2_10TensorViewIT_XT0_EEEiOT1_EUlOSN_E0_EEvT0_iSQ_EUlSN_E_", !927, i64 0, !13, i64 8}
!1620 = !{!1619, !13, i64 8}
!1621 = !{!1622, !13, i64 0}
!1622 = !{!"_ZTSZN7xgboost6linalg8cpu_impl17ElementWiseKernelIKfLi2EZNS_3obj17TweedieRegression11GetGradientERKNS_16HostDeviceVectorIfEERKNS_8MetaInfoEiPNS0_6TensorINS_6detail20GradientPairInternalIfEELi2EEEEUlmmE_EEvNS0_10TensorViewIT_XT0_EEEiOT1_EUlOSL_E0_", !13, i64 0, !921, i64 8}
!1623 = !{!1622, !921, i64 8}
!1624 = !{!1625, !1627}
!1625 = distinct !{!1625, !1626, !"_ZN7xgboost6linalg6detail11UnravelImplImLi2EEEDaT_NS_6common4SpanIKmXT0_EEE: argument 0"}
!1626 = distinct !{!1626, !"_ZN7xgboost6linalg6detail11UnravelImplImLi2EEEDaT_NS_6common4SpanIKmXT0_EEE"}
!1627 = distinct !{!1627, !1628, !"_ZN7xgboost6linalg12UnravelIndexILm2EEEDamNS_6common4SpanIKmXT_EEE: argument 0"}
!1628 = distinct !{!1628, !"_ZN7xgboost6linalg12UnravelIndexILm2EEEDamNS_6common4SpanIKmXT_EEE"}
!1629 = !{!1630, !1627}
!1630 = distinct !{!1630, !1631, !"_ZN7xgboost6linalg6detail11UnravelImplIjLi2EEEDaT_NS_6common4SpanIKmXT0_EEE: argument 0"}
!1631 = distinct !{!1631, !"_ZN7xgboost6linalg6detail11UnravelImplIjLi2EEEDaT_NS_6common4SpanIKmXT0_EEE"}
!1632 = distinct !{!1632, !33}
!1633 = distinct !{!1633, !33}
!1634 = !{!1635}
!1635 = distinct !{!1635, !1636, !"_ZN4dmlc11LogCheck_GEB5cxx11Eii: argument 0"}
!1636 = distinct !{!1636, !"_ZN4dmlc11LogCheck_GEB5cxx11Eii"}
!1637 = distinct !{!1637, !33}
!1638 = distinct !{!1638, !33}
!1639 = distinct !{!1639, !33}
!1640 = distinct !{!1640, !33}
!1641 = distinct !{!1641, !33}
!1642 = distinct !{!1642, !33}
!1643 = !{!1644}
!1644 = distinct !{!1644, !1645, !"_ZN7xgboost6linalg12UnravelIndexILm2EEEDamNS_6common4SpanIKmXT_EEE: argument 0"}
!1645 = distinct !{!1645, !"_ZN7xgboost6linalg12UnravelIndexILm2EEEDamNS_6common4SpanIKmXT_EEE"}
!1646 = !{!1647, !1644}
!1647 = distinct !{!1647, !1648, !"_ZN7xgboost6linalg6detail11UnravelImplImLi2EEEDaT_NS_6common4SpanIKmXT0_EEE: argument 0"}
!1648 = distinct !{!1648, !"_ZN7xgboost6linalg6detail11UnravelImplImLi2EEEDaT_NS_6common4SpanIKmXT0_EEE"}
!1649 = !{!1650, !1644}
!1650 = distinct !{!1650, !1651, !"_ZN7xgboost6linalg6detail11UnravelImplIjLi2EEEDaT_NS_6common4SpanIKmXT0_EEE: argument 0"}
!1651 = distinct !{!1651, !"_ZN7xgboost6linalg6detail11UnravelImplIjLi2EEEDaT_NS_6common4SpanIKmXT0_EEE"}
!1652 = !{!1653, !14, i64 0}
!1653 = !{!"_ZTSSt10_Head_baseILm1EmLb0EE", !14, i64 0}
!1654 = !{!1655, !14, i64 0}
!1655 = !{!"_ZTSSt10_Head_baseILm0EmLb0EE", !14, i64 0}
!1656 = !{!1657, !1658, i64 16}
!1657 = !{!"_ZTSZNK7xgboost6common9TransformILb0EE9EvaluatorIZNKS_3obj17TweedieRegression13PredTransformEPNS_16HostDeviceVectorIfEEEUlmNS0_4SpanIfLm18446744073709551615EEEE_E9LaunchCPUIJS7_EEEvSB_DpPT_EUlmE_", !13, i64 0, !364, i64 8, !1658, i64 16}
!1658 = !{!"p1 _ZTSN7xgboost6common9TransformILb0EE9EvaluatorIZNKS_3obj17TweedieRegression13PredTransformEPNS_16HostDeviceVectorIfEEEUlmNS0_4SpanIfLm18446744073709551615EEEE_EE", !13, i64 0}
!1659 = !{!1657, !364, i64 8}
!1660 = distinct !{!1660, !33}
!1661 = !{!1662}
!1662 = distinct !{!1662, !1663, !"_ZN4dmlc11LogCheck_GEB5cxx11Eii: argument 0"}
!1663 = distinct !{!1663, !"_ZN4dmlc11LogCheck_GEB5cxx11Eii"}
!1664 = distinct !{!1664, !33}
!1665 = distinct !{!1665, !33}
!1666 = distinct !{!1666, !33}
!1667 = distinct !{!1667, !33}
!1668 = distinct !{!1668, !33}
!1669 = distinct !{!1669, !33}
!1670 = !{!1671, !273, i64 0}
!1671 = !{!"_ZTSZN7xgboost6linalg17ElementWiseKernelIfLi1EZNS_3obj12_GLOBAL__N_116ProbToMarginImplIZNKS2_17TweedieRegression12ProbToMarginEPNS0_6TensorIfLi1EEEEUlfE_NS_6common4NoOpIbEENSB_INS_10StringViewEEEEEvPKNS_7ContextES8_OT_T0_T1_EUlmE_TnDaLi2EEEvSH_NS0_10TensorViewISI_XT0_EEEOSL_EUlvE_", !273, i64 0, !275, i64 8, !13, i64 16}
!1672 = !{!1671, !275, i64 8}
!1673 = !{!1671, !13, i64 16}
!1674 = distinct !{!1674, !33}
!1675 = distinct !{!1675, !33}
!1676 = !{!1677}
!1677 = distinct !{!1677, !1678, !"_ZN4dmlc11LogCheck_GEB5cxx11Eii: argument 0"}
!1678 = distinct !{!1678, !"_ZN4dmlc11LogCheck_GEB5cxx11Eii"}
!1679 = distinct !{!1679, !33}
!1680 = !{!1681, !12, i64 0}
!1681 = !{!"_ZTSN7xgboost10StringViewE", !12, i64 0, !14, i64 8}
!1682 = !{!1681, !14, i64 8}
!1683 = !{!1684}
!1684 = distinct !{!1684, !1685, !"_ZN7xgboost6linalg14MakeTensorViewIfJRKmRKjEEEDaPKNS_7ContextEPKNS_16HostDeviceVectorIT_EEDpOT0_: argument 0"}
!1685 = distinct !{!1685, !"_ZN7xgboost6linalg14MakeTensorViewIfJRKmRKjEEEDaPKNS_7ContextEPKNS_16HostDeviceVectorIT_EEDpOT0_"}
!1686 = !{!1687, !1684}
!1687 = distinct !{!1687, !1688, !"_ZN7xgboost6linalg14MakeTensorViewIKfLm18446744073709551615EJRKmRKjEEEDaNS_9DeviceOrdENS_6common4SpanIT_XT0_EEEDpOT1_: argument 0"}
!1688 = distinct !{!1688, !"_ZN7xgboost6linalg14MakeTensorViewIKfLm18446744073709551615EJRKmRKjEEEDaNS_9DeviceOrdENS_6common4SpanIT_XT0_EEEDpOT1_"}
!1689 = !{!1690}
!1690 = distinct !{!1690, !1691, !"_ZN7xgboost6common19MakeOptionalWeightsENS_9DeviceOrdERKNS_16HostDeviceVectorIfEE: argument 0"}
!1691 = distinct !{!1691, !"_ZN7xgboost6common19MakeOptionalWeightsENS_9DeviceOrdERKNS_16HostDeviceVectorIfEE"}
!1692 = !{!1012, !67, i64 16}
!1693 = !{i64 0, i64 8, !17, i64 8, i64 8, !241, i64 16, i64 4, !81}
!1694 = !{!1695, !5, i64 208}
!1695 = !{!"_ZTSN7xgboost6common9TransformILb0EE9EvaluatorIZNS_3obj17MeanAbsoluteError11GetGradientERKNS_16HostDeviceVectorIfEERKNS_8MetaInfoEiPNS_6linalg6TensorINS_6detail20GradientPairInternalIfEELi2EEEEUlmNS0_4SpanIfLm18446744073709551615EEEE_EE", !1696, i64 0, !246, i64 176, !5, i64 208, !248, i64 212}
!1696 = !{!"_ZTSZN7xgboost3obj17MeanAbsoluteError11GetGradientERKNS_16HostDeviceVectorIfEERKNS_8MetaInfoEiPNS_6linalg6TensorINS_6detail20GradientPairInternalIfEELi2EEEEUlmNS_6common4SpanIfLm18446744073709551615EEEE_", !5, i64 0, !379, i64 8, !379, i64 80, !1012, i64 152}
!1697 = !{!1698}
!1698 = distinct !{!1698, !1699, !"_ZN7xgboost6common9TransformILb0EE4InitIZNS_3obj17MeanAbsoluteError11GetGradientERKNS_16HostDeviceVectorIfEERKNS_8MetaInfoEiPNS_6linalg6TensorINS_6detail20GradientPairInternalIfEELi2EEEEUlmNS0_4SpanIfLm18446744073709551615EEEE_EENS2_9EvaluatorIT_EESO_NS0_5RangeEiNS_9DeviceOrdE: argument 0"}
!1699 = distinct !{!1699, !"_ZN7xgboost6common9TransformILb0EE4InitIZNS_3obj17MeanAbsoluteError11GetGradientERKNS_16HostDeviceVectorIfEERKNS_8MetaInfoEiPNS_6linalg6TensorINS_6detail20GradientPairInternalIfEELi2EEEEUlmNS0_4SpanIfLm18446744073709551615EEEE_EENS2_9EvaluatorIT_EESO_NS0_5RangeEiNS_9DeviceOrdE"}
!1700 = distinct !{!1700, !33}
!1701 = !{!1702, !1702, i64 0}
!1702 = !{!"p1 _ZTSN7xgboost10collective9CommGroupE", !13, i64 0}
!1703 = !{!1704, !1706}
!1704 = distinct !{!1704, !1705, !"_ZN7xgboost10collective9AllreduceIdLi1EEENS0_6ResultEPKNS_7ContextENS_6linalg10TensorViewIT_XT0_EEENS0_2OpE: argument 0"}
!1705 = distinct !{!1705, !"_ZN7xgboost10collective9AllreduceIdLi1EEENS0_6ResultEPKNS_7ContextENS_6linalg10TensorViewIT_XT0_EEENS0_2OpE"}
!1706 = distinct !{!1706, !1707, !"_ZN7xgboost10collective9GlobalSumIdLi1EEENS0_6ResultEPKNS_7ContextENS_6linalg10TensorViewIT_XT0_EEE: argument 0"}
!1707 = distinct !{!1707, !"_ZN7xgboost10collective9GlobalSumIdLi1EEENS0_6ResultEPKNS_7ContextENS_6linalg10TensorViewIT_XT0_EEE"}
!1708 = distinct !{!1708, !33, !413, !414}
!1709 = distinct !{!1709, !33, !413, !414}
!1710 = distinct !{!1710, !33, !414, !413}
!1711 = distinct !{!1711, !33, !414, !413}
!1712 = !{!1713, !1713, i64 0}
!1713 = !{!"p1 _ZTSN7xgboost10collective6detail10ResultImplE", !13, i64 0}
!1714 = distinct !{null, null}
!1715 = !{!1126, !1127, i64 0}
!1716 = !{!1717, !5, i64 8}
!1717 = !{!"_ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !5, i64 8, !5, i64 12}
!1718 = !{!1717, !5, i64 12}
!1719 = distinct !{ptr @_ZN7xgboost7ContextD2Ev, null, null, null}
!1720 = !{!1721, !1723}
!1721 = distinct !{!1721, !1722, !"_ZN7xgboost10collective9AllreduceIdLi1EEENS0_6ResultEPKNS_7ContextENS_6linalg10TensorViewIT_XT0_EEENS0_2OpE: argument 0"}
!1722 = distinct !{!1722, !"_ZN7xgboost10collective9AllreduceIdLi1EEENS0_6ResultEPKNS_7ContextENS_6linalg10TensorViewIT_XT0_EEENS0_2OpE"}
!1723 = distinct !{!1723, !1724, !"_ZN7xgboost10collective9GlobalSumIdLi1EEENS0_6ResultEPKNS_7ContextENS_6linalg10TensorViewIT_XT0_EEE: argument 0"}
!1724 = distinct !{!1724, !"_ZN7xgboost10collective9GlobalSumIdLi1EEENS0_6ResultEPKNS_7ContextENS_6linalg10TensorViewIT_XT0_EEE"}
!1725 = !{!1726}
!1726 = distinct !{!1726, !1727, !"_ZN4dmlc11LogCheck_EQImjEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_: argument 0"}
!1727 = distinct !{!1727, !"_ZN4dmlc11LogCheck_EQImjEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_"}
!1728 = !{!1729}
!1729 = distinct !{!1729, !1730, !"_ZN7xgboost6linalg14MakeTensorViewIfJRKmRKjEEEDaPKNS_7ContextEPNS_16HostDeviceVectorIT_EEDpOT0_: argument 0"}
!1730 = distinct !{!1730, !"_ZN7xgboost6linalg14MakeTensorViewIfJRKmRKjEEEDaPKNS_7ContextEPNS_16HostDeviceVectorIT_EEDpOT0_"}
!1731 = !{!1732, !1729}
!1732 = distinct !{!1732, !1733, !"_ZN7xgboost6linalg14MakeTensorViewIfLm18446744073709551615EJRKmRKjEEEDaNS_9DeviceOrdENS_6common4SpanIT_XT0_EEEDpOT1_: argument 0"}
!1733 = distinct !{!1733, !"_ZN7xgboost6linalg14MakeTensorViewIfLm18446744073709551615EJRKmRKjEEEDaNS_9DeviceOrdENS_6common4SpanIT_XT0_EEEDpOT1_"}
!1734 = !{!1735}
!1735 = distinct !{!1735, !1736, !"_ZN7xgboost6linalg6TensorIfLi1EE4ViewENS_9DeviceOrdE: argument 0"}
!1736 = distinct !{!1736, !"_ZN7xgboost6linalg6TensorIfLi1EE4ViewENS_9DeviceOrdE"}
!1737 = !{!1738, !1740}
!1738 = distinct !{!1738, !1739, !"_ZN7xgboost6linalg6TensorIfLi1EE4ViewENS_9DeviceOrdE: argument 0"}
!1739 = distinct !{!1739, !"_ZN7xgboost6linalg6TensorIfLi1EE4ViewENS_9DeviceOrdE"}
!1740 = distinct !{!1740, !1741, !"_ZN7xgboost6linalg6TensorIfLi1EE8HostViewEv: argument 0"}
!1741 = distinct !{!1741, !"_ZN7xgboost6linalg6TensorIfLi1EE8HostViewEv"}
!1742 = !{!1743, !1745}
!1743 = distinct !{!1743, !1744, !"_ZN7xgboost6linalg6TensorIfLi1EE4ViewENS_9DeviceOrdE: argument 0"}
!1744 = distinct !{!1744, !"_ZN7xgboost6linalg6TensorIfLi1EE4ViewENS_9DeviceOrdE"}
!1745 = distinct !{!1745, !1746, !"_ZN7xgboost6linalg6TensorIfLi1EE8HostViewEv: argument 0"}
!1746 = distinct !{!1746, !"_ZN7xgboost6linalg6TensorIfLi1EE8HostViewEv"}
!1747 = !{!1748}
!1748 = distinct !{!1748, !1749}
!1749 = distinct !{!1749, !"LVerDomain"}
!1750 = !{!1751}
!1751 = distinct !{!1751, !1749}
!1752 = distinct !{!1752, !33, !413, !414}
!1753 = distinct !{!1753, !1754}
!1754 = !{!"llvm.loop.unroll.disable"}
!1755 = distinct !{null, null}
!1756 = distinct !{!1756, !33, !413}
!1757 = !{!1758}
!1758 = distinct !{!1758, !1759, !"_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!1759 = distinct !{!1759, !"_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv"}
!1760 = !{!1761}
!1761 = distinct !{!1761, !1762, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!1762 = distinct !{!1762, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv"}
!1763 = !{!1761, !1758}
!1764 = !{!1765, !1766, i64 16}
!1765 = !{!"_ZTSZNK7xgboost6common9TransformILb0EE9EvaluatorIZNS_3obj17MeanAbsoluteError11GetGradientERKNS_16HostDeviceVectorIfEERKNS_8MetaInfoEiPNS_6linalg6TensorINS_6detail20GradientPairInternalIfEELi2EEEEUlmNS0_4SpanIfLm18446744073709551615EEEE_E9LaunchCPUIJS7_EEEvSM_DpPT_EUlmE_", !13, i64 0, !364, i64 8, !1766, i64 16}
!1766 = !{!"p1 _ZTSN7xgboost6common9TransformILb0EE9EvaluatorIZNS_3obj17MeanAbsoluteError11GetGradientERKNS_16HostDeviceVectorIfEERKNS_8MetaInfoEiPNS_6linalg6TensorINS_6detail20GradientPairInternalIfEELi2EEEEUlmNS0_4SpanIfLm18446744073709551615EEEE_EE", !13, i64 0}
!1767 = distinct !{null, null, null}
!1768 = !{!1765, !13, i64 0}
!1769 = !{!1765, !364, i64 8}
!1770 = distinct !{!1770, !33}
!1771 = !{!1772}
!1772 = distinct !{!1772, !1773, !"_ZN4dmlc11LogCheck_GEB5cxx11Eii: argument 0"}
!1773 = distinct !{!1773, !"_ZN4dmlc11LogCheck_GEB5cxx11Eii"}
!1774 = distinct !{!1774, !33}
!1775 = distinct !{!1775, !33}
!1776 = distinct !{!1776, !33}
!1777 = distinct !{!1777, !33}
!1778 = distinct !{!1778, !33}
!1779 = distinct !{!1779, !33}
!1780 = !{!248, !250, i64 2}
!1781 = !{!1782}
!1782 = distinct !{!1782, !1783, !"_ZNSt7__cxx119to_stringEi: argument 0"}
!1783 = distinct !{!1783, !"_ZNSt7__cxx119to_stringEi"}
!1784 = distinct !{!1784, !33}
!1785 = !{!1786}
!1786 = distinct !{!1786, !1787, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EES5_OS8_: argument 0"}
!1787 = distinct !{!1787, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EES5_OS8_"}
!1788 = !{!1789}
!1789 = distinct !{!1789, !1790, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_: argument 0"}
!1790 = distinct !{!1790, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_"}
!1791 = !{!1792}
!1792 = distinct !{!1792, !1793, !"_ZNSt7__cxx119to_stringEi: argument 0"}
!1793 = distinct !{!1793, !"_ZNSt7__cxx119to_stringEi"}
!1794 = !{!1795}
!1795 = distinct !{!1795, !1796, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EES5_OS8_: argument 0"}
!1796 = distinct !{!1796, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EES5_OS8_"}
!1797 = !{!1798}
!1798 = distinct !{!1798, !1799, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_: argument 0"}
!1799 = distinct !{!1799, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_"}
!1800 = !{!1801}
!1801 = distinct !{!1801, !1802, !"_ZNSt7__cxx119to_stringEi: argument 0"}
!1802 = distinct !{!1802, !"_ZNSt7__cxx119to_stringEi"}
!1803 = !{!1804}
!1804 = distinct !{!1804, !1805, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EES5_OS8_: argument 0"}
!1805 = distinct !{!1805, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EES5_OS8_"}
!1806 = !{!1807}
!1807 = distinct !{!1807, !1808, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_: argument 0"}
!1808 = distinct !{!1808, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_"}
!1809 = !{!1810}
!1810 = distinct !{!1810, !1811, !"_ZNSt7__cxx119to_stringEi: argument 0"}
!1811 = distinct !{!1811, !"_ZNSt7__cxx119to_stringEi"}
!1812 = !{!1813}
!1813 = distinct !{!1813, !1814, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EES5_OS8_: argument 0"}
!1814 = distinct !{!1814, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EES5_OS8_"}
!1815 = !{!1816}
!1816 = distinct !{!1816, !1817, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_: argument 0"}
!1817 = distinct !{!1817, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_"}
!1818 = !{!1819, !1820, i64 0}
!1819 = !{!"_ZTSSt12__shared_ptrIN7xgboost10collective8HostCommELN9__gnu_cxx12_Lock_policyE2EE", !1820, i64 0, !1126, i64 8}
!1820 = !{!"p1 _ZTSN7xgboost10collective8HostCommE", !13, i64 0}
!1821 = !{!1822, !5, i64 24}
!1822 = !{!"_ZTSN7xgboost10collective4CommE", !1823, i64 8, !5, i64 24, !5, i64 28, !1828, i64 32, !5, i64 40, !1829, i64 48, !1830, i64 88, !1831, i64 96, !5, i64 104, !10, i64 112, !1833, i64 144, !1838, i64 168}
!1823 = !{!"_ZTSSt23enable_shared_from_thisIN7xgboost10collective4CommEE", !1824, i64 0}
!1824 = !{!"_ZTSSt8weak_ptrIN7xgboost10collective4CommEE", !1825, i64 0}
!1825 = !{!"_ZTSSt10__weak_ptrIN7xgboost10collective4CommELN9__gnu_cxx12_Lock_policyE2EE", !1826, i64 0, !1827, i64 8}
!1826 = !{!"p1 _ZTSN7xgboost10collective4CommE", !13, i64 0}
!1827 = !{!"_ZTSSt12__weak_countILN9__gnu_cxx12_Lock_policyE2EE", !1127, i64 0}
!1828 = !{!"_ZTSNSt6chrono8durationIlSt5ratioILl1ELl1EEEE", !14, i64 0}
!1829 = !{!"_ZTSN7xgboost10collective5proto8PeerInfoE", !10, i64 0, !5, i64 32, !5, i64 36}
!1830 = !{!"_ZTSN7xgboost10collective10SockDomainE", !6, i64 0}
!1831 = !{!"_ZTSSt6thread", !1832, i64 0}
!1832 = !{!"_ZTSNSt6thread2idE", !14, i64 0}
!1833 = !{!"_ZTSSt6vectorISt10shared_ptrIN7xgboost10collective7ChannelEESaIS4_EE", !1834, i64 0}
!1834 = !{!"_ZTSSt12_Vector_baseISt10shared_ptrIN7xgboost10collective7ChannelEESaIS4_EE", !1835, i64 0}
!1835 = !{!"_ZTSNSt12_Vector_baseISt10shared_ptrIN7xgboost10collective7ChannelEESaIS4_EE12_Vector_implE", !1836, i64 0}
!1836 = !{!"_ZTSNSt12_Vector_baseISt10shared_ptrIN7xgboost10collective7ChannelEESaIS4_EE17_Vector_impl_dataE", !1837, i64 0, !1837, i64 8, !1837, i64 16}
!1837 = !{!"p1 _ZTSSt10shared_ptrIN7xgboost10collective7ChannelEE", !13, i64 0}
!1838 = !{!"_ZTSSt10shared_ptrIN7xgboost10collective4LoopEE", !1839, i64 0}
!1839 = !{!"_ZTSSt12__shared_ptrIN7xgboost10collective4LoopELN9__gnu_cxx12_Lock_policyE2EE", !1840, i64 0, !1126, i64 8}
!1840 = !{!"p1 _ZTSN7xgboost10collective4LoopE", !13, i64 0}
!1841 = !{!1842, !1713, i64 0}
!1842 = !{!"_ZTSSt10_Head_baseILm0EPN7xgboost10collective6detail10ResultImplELb0EE", !1713, i64 0}
!1843 = !{!1844}
!1844 = distinct !{!1844, !1845, !"_ZN7xgboost10collective7SuccessEv: argument 0"}
!1845 = distinct !{!1845, !"_ZN7xgboost10collective7SuccessEv"}
!1846 = !{!1847, !14, i64 0}
!1847 = !{!"_ZTSN7xgboost6common4SpanIdLm18446744073709551615EEE", !14, i64 0, !1848, i64 8}
!1848 = !{!"p1 double", !13, i64 0}
!1849 = !{!1850, !14, i64 40}
!1850 = !{!"_ZTSN7xgboost6linalg10TensorViewIdLi1EEE", !6, i64 0, !6, i64 8, !1847, i64 16, !1848, i64 32, !14, i64 40, !248, i64 48}
!1851 = !{!1848, !1848, i64 0}
!1852 = !{!1853, !1854, i64 0}
!1853 = !{!"_ZTSSt12__shared_ptrIN7xgboost10collective4CollELN9__gnu_cxx12_Lock_policyE2EE", !1854, i64 0, !1126, i64 8}
!1854 = !{!"p1 _ZTSN7xgboost10collective4CollE", !13, i64 0}
!1855 = distinct !{ptr @_ZNSt12__shared_ptrIN7xgboost10collective4CollELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!1856 = distinct !{null, null}
!1857 = distinct !{null}
!1858 = !{!1859, !921, i64 0}
!1859 = !{!"_ZTSZN7xgboost6linalg17ElementWiseKernelIKfLi2EZNS_3obj17MeanAbsoluteError11GetGradientERKNS_16HostDeviceVectorIfEERKNS_8MetaInfoEiPNS0_6TensorINS_6detail20GradientPairInternalIfEELi2EEEEUlmmE_TnDaLi2EEEvPKNS_7ContextENS0_10TensorViewIT_XT0_EEEOT1_EUlvE_", !921, i64 0, !275, i64 8, !13, i64 16}
!1860 = !{!1859, !275, i64 8}
!1861 = !{!1859, !13, i64 16}
!1862 = !{!1863, !927, i64 0}
!1863 = !{!"_ZTSZN7xgboost6common13ParallelFor1dILm2048EmZNS_6linalg8cpu_impl17ElementWiseKernelIKfLi2EZNS_3obj17MeanAbsoluteError11GetGradientERKNS_16HostDeviceVectorIfEERKNS_8MetaInfoEiPNS2_6TensorINS_6detail20GradientPairInternalIfEELi2EEEEUlmmE_EEvNS2_10TensorViewIT_XT0_EEEiOT1_EUlOSN_E_EEvT0_iSQ_EUlSN_E_", !927, i64 0, !13, i64 8}
!1864 = !{!1863, !13, i64 8}
!1865 = distinct !{!1865, !33}
!1866 = !{!1867}
!1867 = distinct !{!1867, !1868, !"_ZN4dmlc11LogCheck_GEB5cxx11Eii: argument 0"}
!1868 = distinct !{!1868, !"_ZN4dmlc11LogCheck_GEB5cxx11Eii"}
!1869 = distinct !{!1869, !33}
!1870 = distinct !{!1870, !33}
!1871 = distinct !{!1871, !33}
!1872 = distinct !{!1872, !33}
!1873 = distinct !{!1873, !33}
!1874 = distinct !{!1874, !33}
!1875 = !{!1876, !927, i64 0}
!1876 = !{!"_ZTSZN7xgboost6linalg8cpu_impl17ElementWiseKernelIKfLi2EZNS_3obj17MeanAbsoluteError11GetGradientERKNS_16HostDeviceVectorIfEERKNS_8MetaInfoEiPNS0_6TensorINS_6detail20GradientPairInternalIfEELi2EEEEUlmmE_EEvNS0_10TensorViewIT_XT0_EEEiOT1_EUlOSL_E_", !927, i64 0, !13, i64 8}
!1877 = distinct !{!1877, !33, !944}
!1878 = !{!1876, !13, i64 8}
!1879 = distinct !{!1879, !33}
!1880 = !{!1881, !927, i64 0}
!1881 = !{!"_ZTSZN7xgboost6common13ParallelFor1dILm2048EmZNS_6linalg8cpu_impl17ElementWiseKernelIKfLi2EZNS_3obj17MeanAbsoluteError11GetGradientERKNS_16HostDeviceVectorIfEERKNS_8MetaInfoEiPNS2_6TensorINS_6detail20GradientPairInternalIfEELi2EEEEUlmmE_EEvNS2_10TensorViewIT_XT0_EEEiOT1_EUlOSN_E0_EEvT0_iSQ_EUlSN_E_", !927, i64 0, !13, i64 8}
!1882 = !{!1881, !13, i64 8}
!1883 = distinct !{!1883, !33}
!1884 = !{!1885}
!1885 = distinct !{!1885, !1886, !"_ZN4dmlc11LogCheck_GEB5cxx11Eii: argument 0"}
!1886 = distinct !{!1886, !"_ZN4dmlc11LogCheck_GEB5cxx11Eii"}
!1887 = distinct !{!1887, !33}
!1888 = distinct !{!1888, !33}
!1889 = distinct !{!1889, !33}
!1890 = distinct !{!1890, !33}
!1891 = distinct !{!1891, !33}
!1892 = distinct !{!1892, !33}
!1893 = !{!1894, !13, i64 0}
!1894 = !{!"_ZTSZN7xgboost6linalg8cpu_impl17ElementWiseKernelIKfLi2EZNS_3obj17MeanAbsoluteError11GetGradientERKNS_16HostDeviceVectorIfEERKNS_8MetaInfoEiPNS0_6TensorINS_6detail20GradientPairInternalIfEELi2EEEEUlmmE_EEvNS0_10TensorViewIT_XT0_EEEiOT1_EUlOSL_E0_", !13, i64 0, !921, i64 8}
!1895 = !{!1894, !921, i64 8}
!1896 = !{!1897, !1899}
!1897 = distinct !{!1897, !1898, !"_ZN7xgboost6linalg6detail11UnravelImplImLi2EEEDaT_NS_6common4SpanIKmXT0_EEE: argument 0"}
!1898 = distinct !{!1898, !"_ZN7xgboost6linalg6detail11UnravelImplImLi2EEEDaT_NS_6common4SpanIKmXT0_EEE"}
!1899 = distinct !{!1899, !1900, !"_ZN7xgboost6linalg12UnravelIndexILm2EEEDamNS_6common4SpanIKmXT_EEE: argument 0"}
!1900 = distinct !{!1900, !"_ZN7xgboost6linalg12UnravelIndexILm2EEEDamNS_6common4SpanIKmXT_EEE"}
!1901 = !{!1902, !1899}
!1902 = distinct !{!1902, !1903, !"_ZN7xgboost6linalg6detail11UnravelImplIjLi2EEEDaT_NS_6common4SpanIKmXT0_EEE: argument 0"}
!1903 = distinct !{!1903, !"_ZN7xgboost6linalg6detail11UnravelImplIjLi2EEEDaT_NS_6common4SpanIKmXT0_EEE"}
!1904 = distinct !{!1904, !33}
!1905 = !{!1906, !1906, i64 0}
!1906 = !{!"p1 _ZTSN7xgboost6linalg10TensorViewIfLi2EEE", !13, i64 0}
!1907 = !{!1908, !1906, i64 0}
!1908 = !{!"_ZTSZN7xgboost6linalg17ElementWiseKernelIfLi2EZNKS_3obj17MeanAbsoluteError14InitEstimationERKNS_8MetaInfoEPNS0_6TensorIfLi1EEEEUlmmE_TnDaLi2EEEvPKNS_7ContextENS0_10TensorViewIT_XT0_EEEOT1_EUlvE_", !1906, i64 0, !275, i64 8, !13, i64 16}
!1909 = !{!1908, !275, i64 8}
!1910 = !{!1908, !13, i64 16}
!1911 = !{!1147, !14, i64 56}
end_hunk_2
