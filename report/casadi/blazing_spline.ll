Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/casadi/original/blazing_spline?download=true
inline.NumInlined: 2450
inline.NumDeleted: 866
loop-unroll.NumCompletelyUnrolled: 20
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 24
begin_hunk_0_@_ZN6casadi21BlazingSplineFunction12get_name_outB5cxx11Ex:bb.a
          cleanup                                 ; 2 uses
  %i.j = load ptr, ptr %3, align 8, !tbaa !104    ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.l = icmp eq ptr %i.j, %i.k
  br i1 %i.l, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.p
  %i.m = load i64, ptr %i.k, align 8, !tbaa !105
  %i.n = add i64 %i.m, 1
  call void @_ZdlPvm(ptr noundef %i.j, i64 noundef %i.n) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.p, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.o
  %.pn = phi { ptr, i32 } [ %i.h, %bb.o ], [ %i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.i, %bb.p ] ; 2 uses
  %.1 = phi i1 [ true, %bb.o ], [ %.0, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %.0, %bb.p ] ; 2 uses
  %i.o = load ptr, ptr %8, align 8, !tbaa !104    ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.q = icmp eq ptr %i.o, %i.p
  br i1 %i.q, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i39

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i39: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.r = load i64, ptr %i.p, align 8, !tbaa !105
  %i.s = add i64 %i.r, 1
  call void @_ZdlPvm(ptr noundef %i.o, i64 noundef %i.s) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i39, %bb.n
  %.pn.pn = phi { ptr, i32 } [ %i.g, %bb.n ], [ %.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i39 ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ] ; 2 uses
  %.2 = phi i1 [ true, %bb.n ], [ %.1, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i39 ], [ %.1, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ] ; 2 uses
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %12) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #26
  %i.t = load ptr, ptr %9, align 8, !tbaa !104    ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.v = icmp eq ptr %i.t, %i.u
  br i1 %i.v, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i42

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i42: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41
  %i.w = load i64, ptr %i.u, align 8, !tbaa !105
  %i.x = add i64 %i.w, 1
  call void @_ZdlPvm(ptr noundef %i.t, i64 noundef %i.x) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i42, %bb.m
  %.pn.pn.pn = phi { ptr, i32 } [ %i.f, %bb.m ], [ %.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i42 ], [ %.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41 ] ; 2 uses
  %.3 = phi i1 [ true, %bb.m ], [ %.2, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i42 ], [ %.2, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41 ] ; 2 uses
  %i.y = load ptr, ptr %10, align 8, !tbaa !104   ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  %i.aa = icmp eq ptr %i.y, %i.z
  br i1 %i.aa, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i45

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i45: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44
  %i.ab = load i64, ptr %i.z, align 8, !tbaa !105
  %i.ac = add i64 %i.ab, 1
  call void @_ZdlPvm(ptr noundef %i.y, i64 noundef %i.ac) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i45, %bb.l
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %i.e, %bb.l ], [ %.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i45 ], [ %.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44 ] ; 2 uses
  %.4 = phi i1 [ true, %bb.l ], [ %.3, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i45 ], [ %.3, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #26
  %i.ad = load ptr, ptr %4, align 8, !tbaa !104   ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.af = icmp eq ptr %i.ad, %i.ae
  br i1 %i.af, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i48

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i48: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47
  %i.ag = load i64, ptr %i.ae, align 8, !tbaa !105
  %i.ah = add i64 %i.ag, 1
  call void @_ZdlPvm(ptr noundef %i.ad, i64 noundef %i.ah) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i48, %bb.k
  %.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.d, %bb.k ], [ %.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i48 ], [ %.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47 ] ; 4 uses
  %.5 = phi i1 [ true, %bb.k ], [ %.4, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i48 ], [ %.4, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47 ] ; 2 uses
  %i.ai = load ptr, ptr %5, align 8, !tbaa !104   ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.ak = icmp eq ptr %i.ai, %i.aj
  br i1 %i.ak, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i51

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i51: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50
  %i.al = load i64, ptr %i.aj, align 8, !tbaa !105
  %i.am = add i64 %i.al, 1
  call void @_ZdlPvm(ptr noundef %i.ai, i64 noundef %i.am) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i51
  %i.an = load ptr, ptr %6, align 8, !tbaa !104   ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.ap = icmp eq ptr %i.an, %i.ao
  br i1 %i.ap, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i54

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53.thread: ; preds = %bb.c
  %i.aq = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ar = load ptr, ptr %6, align 8, !tbaa !104   ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.at = icmp eq ptr %i.ar, %i.as
  br i1 %i.at, label %.sink.split, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i54.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i54.thread: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53.thread
  %i.au = load i64, ptr %i.as, align 8, !tbaa !105
  %i.av = add i64 %i.au, 1
  call void @_ZdlPvm(ptr noundef %i.ar, i64 noundef %i.av) #25
  br label %.sink.split

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i54: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53
  %i.aw = load i64, ptr %i.ao, align 8, !tbaa !105
  %i.ax = add i64 %i.aw, 1
  call void @_ZdlPvm(ptr noundef %i.an, i64 noundef %i.ax) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  br i1 %.5, label %bb.q, label %bb.r

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  br i1 %.5, label %bb.q, label %bb.r

.sink.split:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i54.thread
  %.pn.pn.pn.pn.pn.pn.pn61.ph = phi { ptr, i32 } [ %i.aq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i54.thread ], [ %i.c, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56.thread ], [ %i.aq, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  br label %bb.q

bb.q:                                             ; preds = %.sink.split, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i54, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56
  %.pn.pn.pn.pn.pn.pn.pn61 = phi { ptr, i32 } [ %.pn.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i54 ], [ %.pn.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56 ], [ %.pn.pn.pn.pn.pn.pn.pn61.ph, %.sink.split ]
  call void @__cxa_free_exception(ptr %i.b) #26
  br label %bb.r

switch.lookup:                                    ; preds = %bb.a
  %switch.idx.cast = trunc nuw i64 %2 to i8
  %switch.offset = add nuw nsw i8 %switch.idx.cast, 102
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.ay, ptr %0, align 8, !tbaa !107
  store i8 %switch.offset, ptr %i.ay, align 8, !tbaa !105
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 1, ptr %i.az, align 8, !tbaa !106
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 17
  store i8 0, ptr %i.ba, align 1, !tbaa !105
  ret void

bb.r:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i54, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56, %bb.q
  %.pn29 = phi { ptr, i32 } [ %.pn.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i54 ], [ %.pn.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56 ], [ %.pn.pn.pn.pn.pn.pn.pn61, %bb.q ]
  resume { ptr, i32 } %.pn29

bb.s:                                             ; preds = %bb.j
  unreachable
}

; Function Attrs: mustprogress uwtable
define void @_ZN6casadi21BlazingSplineFunctionC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorIS9_IdSaIdEESaISB_EEx(ptr noundef nonnull align 8 dereferenceable(1416) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %2, i64 noundef %3) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %8 = alloca %"class.std::allocator", align 1    ; 5 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %12 = alloca %"class.std::allocator", align 1   ; 3 uses
  %13 = alloca %"class.std::vector.15", align 8   ; 5 uses
  %14 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %15 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %16 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %17 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %18 = alloca %"class.std::allocator", align 1   ; 5 uses
  %19 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %20 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %21 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %22 = alloca %"class.std::allocator", align 1   ; 3 uses
  %23 = alloca %"class.std::vector.15", align 8   ; 5 uses
  tail call void @_ZN6casadi16FunctionInternalC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(1312) %0, ptr noundef nonnull align 8 dereferenceable(32) %1)
  store ptr getelementptr inbounds nuw inrange(-16, 928) (i8, ptr @_ZTVN6casadi21BlazingSplineFunctionE, i64 16), ptr %0, align 8, !tbaa !111
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1312
  store i64 %3, ptr %i.a, align 8, !tbaa !98
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1320 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !99   ; 2 uses
  %i.e = load ptr, ptr %2, align 8, !tbaa !100    ; 2 uses
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = sub i64 %i.f, %i.g                       ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, i8 0, i64 24, i1 false)
  %.not.i.i.i.i = icmp eq ptr %i.d, %i.e
  br i1 %.not.i.i.i.i, label %.noexc58, label %bb.b

bb.b:                                             ; preds = %bb.a
  %24 = sdiv exact i64 %i.h, 24
  %i.i = icmp ugt i64 %24, 384307168202282325
  br i1 %i.i, label %.noexc.i.i, label %_ZNSt15__new_allocatorISt6vectorIdSaIdEEE8allocateEmPKv.exit.i.i.i.i, !prof !116

.noexc.i.i:                                       ; preds = %bb.b
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #27
          to label %.noexc unwind label %bb.p

.noexc:                                           ; preds = %.noexc.i.i
  unreachable

_ZNSt15__new_allocatorISt6vectorIdSaIdEEE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.b
  %i.j = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.h) #24
          to label %.noexc58 unwind label %bb.p

.noexc58:                                         ; preds = %_ZNSt15__new_allocatorISt6vectorIdSaIdEEE8allocateEmPKv.exit.i.i.i.i, %bb.a
  %i.k = phi ptr [ null, %bb.a ], [ %i.j, %_ZNSt15__new_allocatorISt6vectorIdSaIdEEE8allocateEmPKv.exit.i.i.i.i ] ; 4 uses
  store ptr %i.k, ptr %i.b, align 8, !tbaa !100
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 1328 ; 2 uses
  store ptr %i.k, ptr %i.l, align 8, !tbaa !99
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.h
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 1336 ; 2 uses
  store ptr %i.m, ptr %i.n, align 8, !tbaa !117
  %i.o = load ptr, ptr %2, align 8, !tbaa !118
  %i.p = load ptr, ptr %i.c, align 8, !tbaa !118
  %i.q = invoke noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKSt6vectorIdSaIdEES2_IS4_SaIS4_EEEEPS4_ET0_T_SC_SB_(ptr %i.o, ptr %i.p, ptr noundef %i.k)
          to label %bb.e unwind label %bb.c

bb.c:                                             ; preds = %.noexc58
  %i.r = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.s = load ptr, ptr %i.b, align 8, !tbaa !100  ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.s, null
  br i1 %.not.i.i.i, label %.body, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.t = load ptr, ptr %i.n, align 8, !tbaa !117
  %i.u = ptrtoint ptr %i.t to i64
  %i.v = ptrtoint ptr %i.s to i64
  %i.w = sub i64 %i.u, %i.v
  tail call void @_ZdlPvm(ptr noundef nonnull %i.s, i64 noundef %i.w) #25
  br label %.body

bb.e:                                             ; preds = %.noexc58
  store ptr %i.q, ptr %i.l, align 8, !tbaa !99
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 1344 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 1368
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.x, i8 0, i64 48, i1 false)
  invoke void @_ZN6casadi21BlazingSplineFunction20init_derived_membersEv(ptr noundef nonnull align 8 dereferenceable(1416) %0)
          to label %bb.f unwind label %bb.q

bb.f:                                             ; preds = %bb.e
  %i.z = load ptr, ptr %i.c, align 8, !tbaa !99   ; 2 uses
  %i.aa = load ptr, ptr %2, align 8, !tbaa !100   ; 2 uses
  %.not = icmp eq ptr %i.z, %i.aa
  br i1 %.not, label %bb.g, label %bb.y

bb.g:                                             ; preds = %bb.f
  %i.ab = tail call ptr @__cxa_allocate_exception(i64 40) #26 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #26
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull @.str.14, ptr noundef nonnull align 1 dereferenceable(1) %8)
          to label %bb.h unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit76.thread

bb.h:                                             ; preds = %bb.g
  invoke void @_ZN6casadi9trim_pathERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %6, ptr noundef nonnull align 8 dereferenceable(32) %7)
          to label %bb.i unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit73.thread

bb.i:                                             ; preds = %bb.h
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull @.str.1)
          to label %bb.j unwind label %bb.r

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #26
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull @.str.16, ptr noundef nonnull align 1 dereferenceable(1) %12)
          to label %bb.k unwind label %bb.s

bb.k:                                             ; preds = %bb.j
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %10, ptr noundef nonnull @.str.15, ptr noundef nonnull align 8 dereferenceable(32) %11)
          to label %bb.l unwind label %bb.t

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #26
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %13, i8 0, i64 24, i1 false), !alias.scope !225
  invoke void @_ZN6casadi6fmtstrERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorIS5_SaIS5_EE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %9, ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull align 8 dereferenceable(24) %13)
          to label %bb.m unwind label %bb.u

bb.m:                                             ; preds = %bb.l
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %9)
          to label %bb.n unwind label %bb.v

bb.n:                                             ; preds = %bb.m
  invoke void @_ZN6casadi15CasadiExceptionC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(40) %i.ab, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %bb.o unwind label %bb.w

bb.o:                                             ; preds = %bb.n
  invoke void @__cxa_throw(ptr nonnull %i.ab, ptr nonnull @_ZTIN6casadi15CasadiExceptionE, ptr nonnull @_ZN6casadi15CasadiExceptionD2Ev) #27
          to label %bb.at unwind label %bb.w

bb.p:                                             ; preds = %_ZNSt15__new_allocatorISt6vectorIdSaIdEEE8allocateEmPKv.exit.i.i.i.i, %.noexc.i.i
  %i.ac = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.q:                                             ; preds = %bb.e
  %i.ad = landingpad { ptr, i32 }
          cleanup
  br label %bb.aq

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit76.thread: ; preds = %bb.g
  %i.ae = landingpad { ptr, i32 }
          cleanup
  br label %.sink.split

bb.r:                                             ; preds = %bb.i
  %i.af = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70

bb.s:                                             ; preds = %bb.j
  %i.ag = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit67

bb.t:                                             ; preds = %bb.k
  %i.ah = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit64

bb.u:                                             ; preds = %bb.l
  %i.ai = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61

bb.v:                                             ; preds = %bb.m
  %i.aj = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.w:                                             ; preds = %bb.o, %bb.n
  %.09 = phi i1 [ false, %bb.o ], [ true, %bb.n ] ; 2 uses
  %i.ak = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.al = load ptr, ptr %4, align 8, !tbaa !104   ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.an = icmp eq ptr %i.al, %i.am
  br i1 %i.an, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.w
  %i.ao = load i64, ptr %i.am, align 8, !tbaa !105
  %i.ap = add i64 %i.ao, 1
  call void @_ZdlPvm(ptr noundef %i.al, i64 noundef %i.ap) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.w, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.v
  %.pn = phi { ptr, i32 } [ %i.aj, %bb.v ], [ %i.ak, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.ak, %bb.w ] ; 2 uses
  %.110 = phi i1 [ true, %bb.v ], [ %.09, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %.09, %bb.w ] ; 2 uses
  %i.aq = load ptr, ptr %9, align 8, !tbaa !104   ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.as = icmp eq ptr %i.aq, %i.ar
  br i1 %i.as, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i59

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i59: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.at = load i64, ptr %i.ar, align 8, !tbaa !105
  %i.au = add i64 %i.at, 1
  call void @_ZdlPvm(ptr noundef %i.aq, i64 noundef %i.au) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i59, %bb.u
  %.pn.pn = phi { ptr, i32 } [ %i.ai, %bb.u ], [ %.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i59 ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ] ; 2 uses
  %.211 = phi i1 [ true, %bb.u ], [ %.110, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i59 ], [ %.110, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ] ; 2 uses
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %13) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #26
  %i.av = load ptr, ptr %10, align 8, !tbaa !104  ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  %i.ax = icmp eq ptr %i.av, %i.aw
  br i1 %i.ax, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit64, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i62

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i62: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61
  %i.ay = load i64, ptr %i.aw, align 8, !tbaa !105
  %i.az = add i64 %i.ay, 1
  call void @_ZdlPvm(ptr noundef %i.av, i64 noundef %i.az) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit64

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit64: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i62, %bb.t
  %.pn.pn.pn = phi { ptr, i32 } [ %i.ah, %bb.t ], [ %.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i62 ], [ %.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61 ] ; 2 uses
  %.312 = phi i1 [ true, %bb.t ], [ %.211, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i62 ], [ %.211, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61 ] ; 2 uses
  %i.ba = load ptr, ptr %11, align 8, !tbaa !104  ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  %i.bc = icmp eq ptr %i.ba, %i.bb
  br i1 %i.bc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit67, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i65

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i65: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit64
  %i.bd = load i64, ptr %i.bb, align 8, !tbaa !105
  %i.be = add i64 %i.bd, 1
  call void @_ZdlPvm(ptr noundef %i.ba, i64 noundef %i.be) #25
end_hunk_0
begin_hunk_1_@_ZN6casadi3strImEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_:bb.a
  %i.aa = getelementptr inbounds i8, ptr %2, i64 %i.z
  store ptr %i.x, ptr %i.aa, align 8, !tbaa !111
  %i.ab = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 72), align 8
  store ptr %i.ab, ptr %i.a, align 8, !tbaa !111
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.ac, align 8, !tbaa !111
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 96
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !104 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 112 ; 2 uses
  %i.ag = icmp eq ptr %i.ae, %i.af
  br i1 %i.ag, label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.ah = load i64, ptr %i.af, align 8, !tbaa !105
  %i.ai = add i64 %i.ah, 1
  call void @_ZdlPvm(ptr noundef %i.ae, i64 noundef %i.ai) #25
  br label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.ac, align 8, !tbaa !111
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 80
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.aj) #26
  %i.ak = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 16), align 8 ; 2 uses
  store ptr %i.ak, ptr %2, align 8, !tbaa !111
  %i.al = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.am = getelementptr i8, ptr %i.ak, i64 -24
  %i.an = load i64, ptr %i.am, align 8
  %i.ao = getelementptr inbounds i8, ptr %2, i64 %i.an
  store ptr %i.al, ptr %i.ao, align 8, !tbaa !111
  %i.ap = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 0, ptr %i.ap, align 8, !tbaa !137
  %i.aq = getelementptr inbounds nuw i8, ptr %2, i64 128
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %i.aq) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  ret void

bb.e:                                             ; preds = %bb.a
  %i.ar = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %bb.e
  %eh.lpad-body = phi { ptr, i32 } [ %i.ar, %bb.e ], [ %i.q, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %i.q, %bb.c ]
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128) %2) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  resume { ptr, i32 } %eh.lpad-body
}

declare noundef nonnull align 8 dereferenceable(3289) ptr @_ZN6casadi13CodeGeneratorlsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(3289), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #1

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_RKS8_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #7 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !106  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !106
  %i.e = sub i64 4611686018427387903, %i.d
  %i.f = icmp ult i64 %i.e, %i.b
  br i1 %i.f, label %bb.b, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.50) #27
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit: ; preds = %bb.a
  %i.g = load ptr, ptr %2, align 8, !tbaa !104
  %i.h = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef %i.g, i64 noundef %i.b) ; 6 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.i, ptr %0, align 8, !tbaa !107
  %i.j = load ptr, ptr %i.h, align 8, !tbaa !104  ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 5 uses
  %i.l = icmp eq ptr %i.j, %i.k
  br i1 %i.l, label %bb.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i

bb.c:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit
  %i.m = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.n = load i64, ptr %i.m, align 8, !tbaa !106  ; 3 uses
  %i.o = icmp ult i64 %i.n, 16
  tail call void @llvm.assume(i1 %i.o)
  %i.p = add nuw nsw i64 %i.n, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.i, ptr noundef nonnull align 8 dereferenceable(1) %i.k, i64 %i.p, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit
  store ptr %i.j, ptr %0, align 8, !tbaa !104
  %i.q = load i64, ptr %i.k, align 8, !tbaa !105
  store i64 %i.q, ptr %i.i, align 8, !tbaa !105
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !106
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.r = phi i64 [ %i.n, %bb.c ], [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i ]
  %i.s = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.r, ptr %i.t, align 8, !tbaa !106
  store ptr %i.k, ptr %i.h, align 8, !tbaa !104
  store i64 0, ptr %i.s, align 8, !tbaa !106
  store i8 0, ptr %i.k, align 8, !tbaa !105
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef zeroext i1 @_ZNK6casadi21BlazingSplineFunction12has_jacobianEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(1416) %0) unnamed_addr #4 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1312
  %i.b = load i64, ptr %i.a, align 8, !tbaa !98
  %i.c = icmp slt i64 %i.b, 2
  ret i1 %i.c
}

; Function Attrs: mustprogress uwtable
define void @_ZNK6casadi21BlazingSplineFunction12get_jacobianERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorIS6_SaIS6_EESD_RKSt3mapIS6_NS_11GenericTypeESt4lessIS6_ESaISt4pairIS7_SF_EEE(ptr dead_on_unwind noalias writable sret(%"class.casadi::Function") align 8 %0, ptr noundef nonnull align 8 dereferenceable(1416) %1, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(48) %5) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
._crit_edge.i.i:
  %6 = alloca %"struct.std::_Rb_tree<std::__cxx11::basic_string<char>, std::pair<const std::__cxx11::basic_string<char>, casadi::GenericType>, std::_Select1st<std::pair<const std::__cxx11::basic_string<char>, casadi::GenericType>>, std::less<std::__cxx11::basic_string<char>>>::_Alloc_node", align 8 ; 4 uses
  %7 = alloca %"struct.std::_Rb_tree<std::__cxx11::basic_string<char>, std::pair<const std::__cxx11::basic_string<char>, casadi::GenericType>, std::_Select1st<std::pair<const std::__cxx11::basic_string<char>, casadi::GenericType>>, std::less<std::__cxx11::basic_string<char>>>::_Alloc_node", align 8 ; 4 uses
  %8 = alloca %"class.casadi::Sparsity", align 8  ; 7 uses
  %9 = alloca %"class.casadi::Sparsity", align 8  ; 7 uses
  %10 = alloca %"class.casadi::MX", align 8       ; 11 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %12 = alloca %"class.casadi::MX", align 8       ; 10 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %14 = alloca %"class.std::vector.34", align 8   ; 12 uses
  %15 = alloca %"class.std::vector.34", align 8   ; 14 uses
  %16 = alloca %"class.std::vector.119", align 8  ; 12 uses
  %17 = alloca %"class.std::vector.101", align 8  ; 12 uses
  %18 = alloca %"class.std::vector.124", align 8  ; 25 uses
  %19 = alloca %"class.casadi::MX", align 8       ; 8 uses
  %20 = alloca %"class.casadi::MX", align 8       ; 8 uses
  %21 = alloca %"class.std::map", align 8         ; 17 uses
  %22 = alloca %"class.std::map", align 8         ; 10 uses
  %23 = alloca %"class.std::map", align 8         ; 10 uses
  %24 = alloca %"class.std::map", align 8         ; 8 uses
  %25 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %26 = alloca %"class.casadi::GenericType", align 8 ; 7 uses
  %27 = alloca %"class.casadi::Function", align 8 ; 7 uses
  %28 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %29 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %30 = alloca %"class.casadi::Function", align 8 ; 11 uses
  %31 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %32 = alloca %"class.casadi::Function", align 8 ; 7 uses
  %33 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %34 = alloca %"class.std::vector.124", align 8  ; 10 uses
  %35 = alloca %"class.std::vector.124", align 8  ; 13 uses
  %36 = alloca [3 x %"class.casadi::MX"], align 8 ; 16 uses
  %37 = alloca [3 x %"class.casadi::MX"], align 8 ; 15 uses
  %38 = alloca [2 x %"class.casadi::MX"], align 8 ; 12 uses
  %39 = alloca %"class.std::map", align 8         ; 14 uses
  %40 = alloca [1 x %"struct.std::pair"], align 8 ; 9 uses
  %i.a = alloca i8, align 1                       ; 5 uses
  %41 = alloca %"class.casadi::MX", align 8       ; 10 uses
  %42 = alloca %"class.std::vector.34", align 8   ; 20 uses
  %43 = alloca %"class.std::vector.39", align 8   ; 20 uses
  %44 = alloca %"class.std::vector.29", align 8   ; 15 uses
  %45 = alloca %"class.std::vector.34", align 8   ; 14 uses
  %46 = alloca %"class.casadi::MX", align 8       ; 7 uses
  %47 = alloca %"class.std::vector.34", align 8   ; 12 uses
  %48 = alloca %"class.casadi::MX", align 8       ; 7 uses
  %49 = alloca %"class.std::vector.34", align 8   ; 12 uses
  %50 = alloca %"class.casadi::MX", align 8       ; 7 uses
  %51 = alloca %"class.std::vector.34", align 8   ; 12 uses
  %52 = alloca %"class.casadi::MX", align 8       ; 7 uses
  %53 = alloca %"class.std::vector.34", align 8   ; 12 uses
  %54 = alloca %"class.casadi::MX", align 8       ; 7 uses
  %55 = alloca %"class.std::vector.34", align 8   ; 12 uses
  %56 = alloca %"class.casadi::MX", align 8       ; 7 uses
  %57 = alloca %"class.std::vector.34", align 8   ; 12 uses
  %58 = alloca %"class.casadi::MX", align 8       ; 7 uses
  %59 = alloca %"class.std::vector.34", align 8   ; 14 uses
  %60 = alloca %"class.std::vector.39", align 8   ; 14 uses
  %61 = alloca %"class.std::vector.29", align 8   ; 12 uses
  %62 = alloca %"class.std::vector.34", align 8   ; 11 uses
  %63 = alloca %"class.casadi::MX", align 8       ; 7 uses
  %64 = alloca %"class.std::vector.34", align 8   ; 12 uses
  %65 = alloca %"class.casadi::MX", align 8       ; 7 uses
  %66 = alloca %"class.std::vector.34", align 8   ; 12 uses
  %67 = alloca %"class.casadi::MX", align 8       ; 7 uses
  %68 = alloca %"class.std::vector.34", align 8   ; 12 uses
  %69 = alloca %"class.casadi::MX", align 8       ; 7 uses
  %70 = alloca %"class.std::vector.34", align 8   ; 10 uses
  %71 = alloca %"class.std::vector.39", align 8   ; 10 uses
  %72 = alloca %"class.std::vector.29", align 8   ; 10 uses
  %73 = alloca %"class.std::vector.34", align 8   ; 9 uses
  %74 = alloca %"class.casadi::MX", align 8       ; 7 uses
  %75 = alloca %"class.std::vector.34", align 8   ; 12 uses
  %76 = alloca %"class.std::vector.124", align 8  ; 11 uses
  %77 = alloca %"class.std::vector.124", align 8  ; 13 uses
  %78 = alloca [4 x %"class.casadi::MX"], align 8 ; 19 uses
  %79 = alloca [5 x %"class.casadi::MX"], align 8 ; 21 uses
  %80 = alloca [6 x %"class.casadi::MX"], align 8 ; 24 uses
  %81 = alloca %"class.std::map", align 8         ; 14 uses
  %82 = alloca [1 x %"struct.std::pair"], align 8 ; 9 uses
  %i.b = alloca i8, align 1                       ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 1320 ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 1328
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !99   ; 3 uses
  %i.f = load ptr, ptr %i.c, align 8, !tbaa !100  ; 3 uses
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = sub i64 %i.g, %i.h                       ; 8 uses
  %i.j = sdiv exact i64 %i.i, 24                  ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #26
  %i.k = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 6 uses
  store ptr %i.k, ptr %11, align 8, !tbaa !107
  store i8 67, ptr %i.k, align 8, !tbaa !105
  %i.l = getelementptr inbounds nuw i8, ptr %11, i64 8
  store i64 1, ptr %i.l, align 8, !tbaa !106
  %i.m = getelementptr inbounds nuw i8, ptr %11, i64 17
  store i8 0, ptr %i.m, align 1, !tbaa !105
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 1392 ; 4 uses
  %i.o = load i64, ptr %i.n, align 8, !tbaa !101
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #26, !noalias !359
  invoke void @_ZN6casadi8Sparsity5denseExx(ptr dead_on_unwind nonnull writable sret(%"class.casadi::Sparsity") align 8 %9, i64 noundef %i.o, i64 noundef 1)
          to label %.noexc294 unwind label %bb.k

.noexc294:                                        ; preds = %._crit_edge.i.i
  invoke void @_ZN6casadi2MX4_symERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS_8SparsityE(ptr dead_on_unwind nonnull writable sret(%"class.casadi::MX") align 8 %10, ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull align 8 dereferenceable(8) %9)
          to label %_ZN6casadi13GenericMatrixINS_2MXEE3symERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS_8SparsityE.exit.i unwind label %bb.b

_ZN6casadi13GenericMatrixINS_2MXEE3symERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS_8SparsityE.exit.i: ; preds = %.noexc294
  invoke void @_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEE10count_downEv(ptr noundef nonnull align 8 dereferenceable(8) %9)
          to label %bb.d unwind label %bb.a

bb.a:                                             ; preds = %_ZN6casadi13GenericMatrixINS_2MXEE3symERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS_8SparsityE.exit.i
  %i.p = landingpad { ptr, i32 }
          catch ptr null
  %i.q = extractvalue { ptr, i32 } %i.p, 0
  call void @__clang_call_terminate(ptr %i.q) #28
  unreachable

bb.b:                                             ; preds = %.noexc294
  %i.r = landingpad { ptr, i32 }
          cleanup
  invoke void @_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEE10count_downEv(ptr noundef nonnull align 8 dereferenceable(8) %9)
          to label %_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEED2Ev.exit4.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.s = landingpad { ptr, i32 }
          catch ptr null
  %i.t = extractvalue { ptr, i32 } %i.s, 0
  call void @__clang_call_terminate(ptr %i.t) #28
  unreachable

_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEED2Ev.exit4.i: ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #26, !noalias !359
  br label %.body

bb.d:                                             ; preds = %_ZN6casadi13GenericMatrixINS_2MXEE3symERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS_8SparsityE.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #26, !noalias !359
  %i.u = load ptr, ptr %11, align 8, !tbaa !104   ; 2 uses
  %i.v = icmp eq ptr %i.u, %i.k
  br i1 %i.v, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.d
  %i.w = load i64, ptr %i.k, align 8, !tbaa !105
  %i.x = add i64 %i.w, 1
  call void @_ZdlPvm(ptr noundef %i.u, i64 noundef %i.x) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #26
  %i.y = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 6 uses
  store ptr %i.y, ptr %13, align 8, !tbaa !107
  store i8 120, ptr %i.y, align 8, !tbaa !105
  %i.z = getelementptr inbounds nuw i8, ptr %13, i64 8
  store i64 1, ptr %i.z, align 8, !tbaa !106
  %i.aa = getelementptr inbounds nuw i8, ptr %13, i64 17
  store i8 0, ptr %i.aa, align 1, !tbaa !105
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #26, !noalias !360
  invoke void @_ZN6casadi8Sparsity5denseExx(ptr dead_on_unwind nonnull writable sret(%"class.casadi::Sparsity") align 8 %8, i64 noundef %i.j, i64 noundef 1)
          to label %.noexc301 unwind label %bb.l

.noexc301:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  invoke void @_ZN6casadi2MX4_symERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS_8SparsityE(ptr dead_on_unwind nonnull writable sret(%"class.casadi::MX") align 8 %12, ptr noundef nonnull align 8 dereferenceable(32) %13, ptr noundef nonnull align 8 dereferenceable(8) %8)
          to label %_ZN6casadi13GenericMatrixINS_2MXEE3symERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS_8SparsityE.exit.i300 unwind label %bb.f

_ZN6casadi13GenericMatrixINS_2MXEE3symERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS_8SparsityE.exit.i300: ; preds = %.noexc301
  invoke void @_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEE10count_downEv(ptr noundef nonnull align 8 dereferenceable(8) %8)
          to label %bb.h unwind label %bb.e

bb.e:                                             ; preds = %_ZN6casadi13GenericMatrixINS_2MXEE3symERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS_8SparsityE.exit.i300
  %i.ab = landingpad { ptr, i32 }
          catch ptr null
  %i.ac = extractvalue { ptr, i32 } %i.ab, 0
  call void @__clang_call_terminate(ptr %i.ac) #28
  unreachable

bb.f:                                             ; preds = %.noexc301
  %i.ad = landingpad { ptr, i32 }
          cleanup
  invoke void @_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEE10count_downEv(ptr noundef nonnull align 8 dereferenceable(8) %8)
          to label %_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEED2Ev.exit4.i299 unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ae = landingpad { ptr, i32 }
          catch ptr null
  %i.af = extractvalue { ptr, i32 } %i.ae, 0
  call void @__clang_call_terminate(ptr %i.af) #28
  unreachable

_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEED2Ev.exit4.i299: ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #26, !noalias !360
  br label %.body302

bb.h:                                             ; preds = %_ZN6casadi13GenericMatrixINS_2MXEE3symERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS_8SparsityE.exit.i300
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #26, !noalias !360
  %i.ag = load ptr, ptr %13, align 8, !tbaa !104  ; 2 uses
  %i.ah = icmp eq ptr %i.ag, %i.y
  br i1 %i.ah, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit307, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i305

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i305: ; preds = %bb.h
  %i.ai = load i64, ptr %i.y, align 8, !tbaa !105
  %i.aj = add i64 %i.ai, 1
  call void @_ZdlPvm(ptr noundef %i.ag, i64 noundef %i.aj) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit307

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit307: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i305
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #26
  %i.ak = add nsw i64 %i.j, 1                     ; 4 uses
  %i.al = icmp ugt i64 %i.ak, 1152921504606846975
  br i1 %i.al, label %bb.i, label %_ZNSt6vectorIxSaIxEE17_S_check_init_lenEmRKS0_.exit.i

bb.i:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit307
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.55) #27
          to label %.noexc308 unwind label %bb.m

.noexc308:                                        ; preds = %bb.i
  unreachable

_ZNSt6vectorIxSaIxEE17_S_check_init_lenEmRKS0_.exit.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit307
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %14, i8 0, i64 24, i1 false)
  %.not.i.i.i.i = icmp ne i64 %i.ak, 0
  call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.am = shl nuw nsw i64 %i.ak, 3
  %i.an = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.am) #24
          to label %.noexc309 unwind label %bb.m  ; 8 uses

.noexc309:                                        ; preds = %_ZNSt6vectorIxSaIxEE17_S_check_init_lenEmRKS0_.exit.i
  store ptr %i.an, ptr %14, align 8, !tbaa !121
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %i.ak
  %i.ap = getelementptr inbounds nuw i8, ptr %14, i64 16
  store ptr %i.ao, ptr %i.ap, align 8, !tbaa !122
  store i64 0, ptr %i.an, align 8, !tbaa !129
  %i.aq = getelementptr i8, ptr %i.an, i64 8      ; 3 uses
  %i.ar = icmp eq ptr %i.e, %i.f
  br i1 %i.ar, label %_ZNSt12_Vector_baseIxSaIxEEC2EmRKS0_.exit.thread.i, label %_ZSt6fill_nIPxmxET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i

_ZSt6fill_nIPxmxET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i: ; preds = %.noexc309
  %.idx.i.i.i.i.i.i.i = shl nuw nsw i64 %i.j, 3   ; 2 uses
  call void @llvm.memset.p0.i64(ptr align 8 %i.aq, i8 0, i64 %.idx.i.i.i.i.i.i.i, i1 false), !tbaa !129
  %i.as = getelementptr inbounds nuw i8, ptr %i.aq, i64 %.idx.i.i.i.i.i.i.i
  br label %_ZNSt12_Vector_baseIxSaIxEEC2EmRKS0_.exit.thread.i

_ZNSt12_Vector_baseIxSaIxEEC2EmRKS0_.exit.thread.i: ; preds = %_ZSt6fill_nIPxmxET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i, %.noexc309
  %.0.i.i.i.i.i = phi ptr [ %i.as, %_ZSt6fill_nIPxmxET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i ], [ %i.aq, %.noexc309 ]
  %i.at = getelementptr inbounds nuw i8, ptr %14, i64 8
  store ptr %.0.i.i.i.i.i, ptr %i.at, align 8, !tbaa !130
  store i64 1, ptr %i.an, align 8, !tbaa !129
  %.not = icmp eq ptr %i.e, %i.f
  br i1 %.not, label %.thread, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt12_Vector_baseIxSaIxEEC2EmRKS0_.exit.thread.i
  %i.au = load ptr, ptr %i.c, align 8, !tbaa !100 ; 3 uses
  %xtraiter = and i64 %i.j, 1
  %i.av = icmp eq i64 %i.i, 24
  br i1 %i.av, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %i.j, -2
  br label %bb.n

.unr-lcssa.a:                                     ; preds = %bb.n
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %bb.j, label %.epil.preheader

.epil.preheader:                                  ; preds = %.unr-lcssa.a, %.lr.ph
  %.0180783.epil.init = phi i64 [ 0, %.lr.ph ], [ %i.de, %.unr-lcssa.a ] ; 2 uses
  %lcmp.mod1005 = trunc i64 %i.j to i1
  call void @llvm.assume(i1 %lcmp.mod1005)
  %i.aw = getelementptr inbounds nuw [24 x i8], ptr %i.au, i64 %.0180783.epil.init ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !123
  %i.az = load ptr, ptr %i.aw, align 8, !tbaa !119
  %i.ba = ptrtoint ptr %i.ay to i64
  %i.bb = ptrtoint ptr %i.az to i64
  %i.bc = sub i64 %i.ba, %i.bb
  %i.bd = ashr exact i64 %i.bc, 3
  %i.be = add nsw i64 %i.bd, -4
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %.0180783.epil.init
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  store i64 %i.be, ptr %i.bg, align 8, !tbaa !129
  br label %bb.j

bb.j:                                             ; preds = %.unr-lcssa.a, %.epil.preheader
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #26
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %15, i8 0, i64 24, i1 false)
  %i.bh = shl nuw nsw i64 %i.j, 3                 ; 3 uses
  %i.bi = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bh) #24
          to label %.noexc314 unwind label %bb.p  ; 5 uses

.noexc314:                                        ; preds = %bb.j
  store ptr %i.bi, ptr %15, align 8, !tbaa !121
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %i.bi, i64 %i.j
  %i.bk = getelementptr inbounds nuw i8, ptr %15, i64 16
  store ptr %i.bj, ptr %i.bk, align 8, !tbaa !122
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bi, i64 %i.bh ; 2 uses
  %i.bm = add nsw i64 %i.bh, -8                   ; 2 uses
  %i.bn = lshr exact i64 %i.bm, 3
  %i.bo = add nuw nsw i64 %i.bn, 1
  %xtraiter1006 = and i64 %i.bo, 7                ; 2 uses
  %lcmp.mod1007.not = icmp eq i64 %xtraiter1006, 0
  br i1 %lcmp.mod1007.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.i.i.i.prol:                    ; preds = %.noexc314, %.lr.ph.i.i.i.i.i.i.i.i.i.prol
  %.06.i.i.i.i.i.i.i.i.i.prol = phi ptr [ %i.bp, %.lr.ph.i.i.i.i.i.i.i.i.i.prol ], [ %i.bi, %.noexc314 ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.i.i.i.i.prol ], [ 0, %.noexc314 ]
  store i64 3, ptr %.06.i.i.i.i.i.i.i.i.i.prol, align 8, !tbaa !129
  %i.bp = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i.i.i.prol, i64 8 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter1006
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.prol, !llvm.loop !351

.lr.ph.i.i.i.i.i.i.i.i.i.prol.loopexit:           ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.prol, %.noexc314
  %.06.i.i.i.i.i.i.i.i.i.unr = phi ptr [ %i.bi, %.noexc314 ], [ %i.bp, %.lr.ph.i.i.i.i.i.i.i.i.i.prol ]
  %i.bq = icmp ult i64 %i.bm, 56
  br i1 %i.bq, label %.unr-lcssa1008, label %.lr.ph.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i:                         ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i
  %.06.i.i.i.i.i.i.i.i.i = phi ptr [ %i.by, %.lr.ph.i.i.i.i.i.i.i.i.i ], [ %.06.i.i.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.i.i.i.prol.loopexit ] ; 9 uses
  store i64 3, ptr %.06.i.i.i.i.i.i.i.i.i, align 8, !tbaa !129
  %i.br = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i.i.i, i64 8
  store i64 3, ptr %i.br, align 8, !tbaa !129
  %i.bs = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i.i.i, i64 16
  store i64 3, ptr %i.bs, align 8, !tbaa !129
  %i.bt = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i.i.i, i64 24
  store i64 3, ptr %i.bt, align 8, !tbaa !129
  %i.bu = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i.i.i, i64 32
  store i64 3, ptr %i.bu, align 8, !tbaa !129
  %i.bv = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i.i.i, i64 40
  store i64 3, ptr %i.bv, align 8, !tbaa !129
  %i.bw = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i.i.i, i64 48
  store i64 3, ptr %i.bw, align 8, !tbaa !129
  %i.bx = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i.i.i, i64 56
  store i64 3, ptr %i.bx, align 8, !tbaa !129
  %i.by = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i.i.i, i64 64 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.7 = icmp eq ptr %i.by, %i.bl
  br i1 %.not.i.i.i.i.i.i.i.i.i.7, label %.unr-lcssa1008, label %.lr.ph.i.i.i.i.i.i.i.i.i, !llvm.loop !352

bb.k:                                             ; preds = %._crit_edge.i.i
  %i.bz = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEED2Ev.exit4.i, %bb.k
  %eh.lpad-body = phi { ptr, i32 } [ %i.bz, %bb.k ], [ %i.r, %_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEED2Ev.exit4.i ]
  %i.ca = load ptr, ptr %11, align 8, !tbaa !104  ; 2 uses
  %i.cb = icmp eq ptr %i.ca, %i.k
  br i1 %i.cb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit317, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i315

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i315: ; preds = %.body
  %i.cc = load i64, ptr %i.k, align 8, !tbaa !105
  %i.cd = add i64 %i.cc, 1
  call void @_ZdlPvm(ptr noundef %i.ca, i64 noundef %i.cd) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit317

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit317: ; preds = %.body, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i315
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #26
  br label %bb.jy

bb.l:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ce = landingpad { ptr, i32 }
          cleanup
  br label %.body302

.body302:                                         ; preds = %_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEED2Ev.exit4.i299, %bb.l
  %eh.lpad-body303 = phi { ptr, i32 } [ %i.ce, %bb.l ], [ %i.ad, %_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEED2Ev.exit4.i299 ]
  %i.cf = load ptr, ptr %13, align 8, !tbaa !104  ; 2 uses
  %i.cg = icmp eq ptr %i.cf, %i.y
  br i1 %i.cg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit320, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i318

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i318: ; preds = %.body302
  %i.ch = load i64, ptr %i.y, align 8, !tbaa !105
  %i.ci = add i64 %i.ch, 1
  call void @_ZdlPvm(ptr noundef %i.cf, i64 noundef %i.ci) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit320

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit320: ; preds = %.body302, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i318
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #26
  br label %bb.jx

bb.m:                                             ; preds = %_ZNSt6vectorIxSaIxEE17_S_check_init_lenEmRKS0_.exit.i, %bb.i
  %i.cj = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIxSaIxEED2Ev.exit697

bb.n:                                             ; preds = %bb.n, %.lr.ph.new
  %.0180783 = phi i64 [ 0, %.lr.ph.new ], [ %i.de, %bb.n ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.1, %bb.n ]
  %i.ck = getelementptr inbounds nuw [24 x i8], ptr %i.au, i64 %.0180783 ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 8
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !123
  %i.cn = load ptr, ptr %i.ck, align 8, !tbaa !119
  %i.co = ptrtoint ptr %i.cm to i64
  %i.cp = ptrtoint ptr %i.cn to i64
  %i.cq = sub i64 %i.co, %i.cp
  %i.cr = ashr exact i64 %i.cq, 3
  %i.cs = add nsw i64 %i.cr, -4
  %i.ct = or disjoint i64 %.0180783, 1            ; 2 uses
  %i.cu = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %i.ct
  store i64 %i.cs, ptr %i.cu, align 8, !tbaa !129
  %i.cv = getelementptr inbounds nuw [24 x i8], ptr %i.au, i64 %i.ct ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 8
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !123
  %i.cy = load ptr, ptr %i.cv, align 8, !tbaa !119
  %i.cz = ptrtoint ptr %i.cx to i64
  %i.da = ptrtoint ptr %i.cy to i64
  %i.db = sub i64 %i.cz, %i.da
  %i.dc = ashr exact i64 %i.db, 3
  %i.dd = add nsw i64 %i.dc, -4
  %i.de = add nuw nsw i64 %.0180783, 2            ; 3 uses
  %i.df = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %i.de
  store i64 %i.dd, ptr %i.df, align 8, !tbaa !129
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.unr-lcssa.a, label %bb.n, !llvm.loop !353

.unr-lcssa1008:                                   ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.prol.loopexit
  %i.dg = getelementptr inbounds nuw i8, ptr %15, i64 8
  store ptr %i.bl, ptr %i.dg, align 8, !tbaa !130
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #26
  %i.dh = icmp samesign ugt i64 %i.j, 384307168202282325
  br i1 %i.dh, label %bb.o, label %.lr.ph.preheader.i.i.i.i.i

bb.o:                                             ; preds = %.unr-lcssa1008
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.55) #27
          to label %.noexc322 unwind label %bb.q

.noexc322:                                        ; preds = %bb.o
  unreachable

.lr.ph.preheader.i.i.i.i.i:                       ; preds = %.unr-lcssa1008
  %i.di = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.i) #24
          to label %.lr.ph.preheader.i.i.i.i.i325 unwind label %bb.q ; 5 uses

.thread:                                          ; preds = %_ZNSt12_Vector_baseIxSaIxEEC2EmRKS0_.exit.thread.i
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #26
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %15, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #26
  %i.dj = getelementptr inbounds nuw i8, ptr %16, i64 8
  %i.dk = getelementptr inbounds nuw i8, ptr %16, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %16, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #26
  %i.dl = getelementptr inbounds nuw i8, ptr %17, i64 8
  %i.dm = getelementptr inbounds nuw i8, ptr %17, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %17, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #26
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %18, i8 0, i64 24, i1 false)
  br label %._crit_edge787

.lr.ph.preheader.i.i.i.i.i325:                    ; preds = %.lr.ph.preheader.i.i.i.i.i
  store ptr %i.di, ptr %16, align 8, !tbaa !140
  %i.dn = getelementptr i8, ptr %i.di, i64 %i.i   ; 2 uses
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.di, i8 0, i64 %i.i, i1 false)
  %i.do = getelementptr inbounds nuw i8, ptr %16, i64 8 ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 2 uses
  store ptr %i.dn, ptr %i.dp, align 8, !tbaa !141
  store ptr %i.dn, ptr %i.do, align 8, !tbaa !142
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #26
  %i.dq = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.i) #24
          to label %.lr.ph786 unwind label %bb.r  ; 5 uses

.lr.ph786:                                        ; preds = %.lr.ph.preheader.i.i.i.i.i325
  store ptr %i.dq, ptr %17, align 8, !tbaa !145
  %i.dr = getelementptr i8, ptr %i.dq, i64 %i.i   ; 2 uses
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.dq, i8 0, i64 %i.i, i1 false)
  %i.ds = getelementptr inbounds nuw i8, ptr %17, i64 8 ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 2 uses
  store ptr %i.dr, ptr %i.dt, align 8, !tbaa !146
  store ptr %i.dr, ptr %i.ds, align 8, !tbaa !147
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #26
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %18, i8 0, i64 24, i1 false)
  %i.du = getelementptr inbounds nuw i8, ptr %1, i64 1368
  %i.dv = getelementptr inbounds nuw i8, ptr %1, i64 1344
  %i.dw = getelementptr inbounds nuw i8, ptr %18, i64 8 ; 3 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %18, i64 16
  br label %bb.s

._crit_edge787:                                   ; preds = %_ZNSt6vectorIN6casadi2MXESaIS1_EE9push_backEOS1_.exit, %.thread
  %i.dy = phi ptr [ %i.dm, %.thread ], [ %i.dt, %_ZNSt6vectorIN6casadi2MXESaIS1_EE9push_backEOS1_.exit ]
  %i.dz = phi ptr [ %i.dl, %.thread ], [ %i.ds, %_ZNSt6vectorIN6casadi2MXESaIS1_EE9push_backEOS1_.exit ]
  %i.ea = phi ptr [ %i.dj, %.thread ], [ %i.do, %_ZNSt6vectorIN6casadi2MXESaIS1_EE9push_backEOS1_.exit ]
  %i.eb = phi ptr [ %i.dk, %.thread ], [ %i.dp, %_ZNSt6vectorIN6casadi2MXESaIS1_EE9push_backEOS1_.exit ]
  %i.ec = phi ptr [ null, %.thread ], [ %i.di, %_ZNSt6vectorIN6casadi2MXESaIS1_EE9push_backEOS1_.exit ] ; 8 uses
  %i.ed = phi ptr [ null, %.thread ], [ %i.dq, %_ZNSt6vectorIN6casadi2MXESaIS1_EE9push_backEOS1_.exit ] ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #26
  invoke void @_ZN6casadi2MX7vertcatERKSt6vectorIS0_SaIS0_EE(ptr dead_on_unwind nonnull writable sret(%"class.casadi::MX") align 8 %20, ptr noundef nonnull align 8 dereferenceable(24) %18)
          to label %_ZN6casadi7vertcatERKSt6vectorINS_2MXESaIS1_EE.exit unwind label %bb.au

bb.p:                                             ; preds = %bb.j
  %i.ee = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIxSaIxEED2Ev.exit694

bb.q:                                             ; preds = %.lr.ph.preheader.i.i.i.i.i, %bb.o
  %i.ef = landingpad { ptr, i32 }
          cleanup
  br label %bb.ju

bb.r:                                             ; preds = %.lr.ph.preheader.i.i.i.i.i325
  %i.eg = landingpad { ptr, i32 }
          cleanup
  br label %bb.jt

bb.s:                                             ; preds = %.lr.ph786, %_ZNSt6vectorIN6casadi2MXESaIS1_EE9push_backEOS1_.exit
  %.0181784 = phi i64 [ 0, %.lr.ph786 ], [ %i.eo, %_ZNSt6vectorIN6casadi2MXESaIS1_EE9push_backEOS1_.exit ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #26
  %i.eh = getelementptr inbounds nuw [24 x i8], ptr %i.di, i64 %.0181784
  %i.ei = getelementptr inbounds nuw [24 x i8], ptr %i.dq, i64 %.0181784
  invoke void @_ZN6casadi13BSplineCommon16derivative_coeffINS_2MXEEET_xRKSt6vectorIdSaIdEERKS4_IxSaIxEESC_SC_RKS3_RS4_IS6_SaIS6_EERSA_(ptr dead_on_unwind nonnull writable sret(%"class.casadi::MX") align 8 %19, i64 noundef %.0181784, ptr noundef nonnull align 8 dereferenceable(24) %i.du, ptr noundef nonnull align 8 dereferenceable(24) %i.dv, ptr noundef nonnull align 8 dereferenceable(24) %15, ptr noundef nonnull align 8 dereferenceable(24) %14, ptr noundef nonnull align 8 dereferenceable(8) %10, ptr noundef nonnull align 8 dereferenceable(24) %i.eh, ptr noundef nonnull align 8 dereferenceable(24) %i.ei)
          to label %bb.t unwind label %bb.w

bb.t:                                             ; preds = %bb.s
  %i.ej = load ptr, ptr %i.dw, align 8, !tbaa !150 ; 4 uses
  %i.ek = load ptr, ptr %i.dx, align 8, !tbaa !151
  %.not.i.i = icmp eq ptr %i.ej, %i.ek
  br i1 %.not.i.i, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.el = load ptr, ptr %19, align 8, !tbaa !152
  store ptr %i.el, ptr %i.ej, align 8, !tbaa !152
  invoke void @_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEE8count_upEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ej)
          to label %.noexc332 unwind label %bb.x

.noexc332:                                        ; preds = %bb.u
  %i.em = load ptr, ptr %i.dw, align 8, !tbaa !150
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 8
  store ptr %i.en, ptr %i.dw, align 8, !tbaa !150
  br label %_ZNSt6vectorIN6casadi2MXESaIS1_EE9push_backEOS1_.exit

bb.v:                                             ; preds = %bb.t
  invoke void @_ZNSt6vectorIN6casadi2MXESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %18, ptr %i.ej, ptr noundef nonnull align 8 dereferenceable(8) %19)
          to label %_ZNSt6vectorIN6casadi2MXESaIS1_EE9push_backEOS1_.exit unwind label %bb.x

_ZNSt6vectorIN6casadi2MXESaIS1_EE9push_backEOS1_.exit: ; preds = %.noexc332, %bb.v
  call void @_ZN6casadi2MXD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %19) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #26
  %i.eo = add nuw i64 %.0181784, 1                ; 2 uses
  %exitcond796.not = icmp eq i64 %i.eo, %i.j
  br i1 %exitcond796.not, label %._crit_edge787, label %bb.s, !llvm.loop !354

bb.w:                                             ; preds = %bb.s
  %i.ep = landingpad { ptr, i32 }
          cleanup
  br label %bb.y

bb.x:                                             ; preds = %bb.v, %bb.u
  %i.eq = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6casadi2MXD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %19) #26
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %.pn285 = phi { ptr, i32 } [ %i.eq, %bb.x ], [ %i.ep, %bb.w ]
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #26
  br label %bb.js

_ZN6casadi7vertcatERKSt6vectorINS_2MXESaIS1_EE.exit: ; preds = %._crit_edge787
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #26
  %i.er = getelementptr inbounds nuw i8, ptr %1, i64 1136
  %i.es = getelementptr inbounds nuw i8, ptr %1, i64 1184
  invoke void @_ZN6casadi7combineERKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_11GenericTypeESt4lessIS6_ESaISt4pairIKS6_S7_EEESG_b(ptr dead_on_unwind nonnull writable sret(%"class.std::map") align 8 %21, ptr noundef nonnull align 8 dereferenceable(48) %i.er, ptr noundef nonnull align 8 dereferenceable(48) %i.es, i1 noundef zeroext false)
          to label %bb.z unwind label %bb.av

bb.z:                                             ; preds = %_ZN6casadi7vertcatERKSt6vectorINS_2MXESaIS1_EE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #26
  invoke void @_ZN6casadi7combineERKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_11GenericTypeESt4lessIS6_ESaISt4pairIKS6_S7_EEESG_b(ptr dead_on_unwind nonnull writable sret(%"class.std::map") align 8 %22, ptr noundef nonnull align 8 dereferenceable(48) %5, ptr noundef nonnull align 8 dereferenceable(48) %21, i1 noundef zeroext false)
          to label %bb.aa unwind label %bb.aw

bb.aa:                                            ; preds = %bb.z
  %i.et = getelementptr inbounds nuw i8, ptr %21, i64 16 ; 7 uses
  %i.eu = load ptr, ptr %i.et, align 8, !tbaa !124
  invoke void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N6casadi11GenericTypeEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE8_M_eraseEPSt13_Rb_tree_nodeISA_E(ptr noundef nonnull align 8 dereferenceable(48) %21, ptr noundef %i.eu)
          to label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N6casadi11GenericTypeEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE5clearEv.exit.i.i.i unwind label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.ev = landingpad { ptr, i32 }
          catch ptr null
  %i.ew = extractvalue { ptr, i32 } %i.ev, 0
  call void @__clang_call_terminate(ptr %i.ew) #28
  unreachable

_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N6casadi11GenericTypeEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE5clearEv.exit.i.i.i: ; preds = %bb.aa
  %i.ex = getelementptr inbounds nuw i8, ptr %21, i64 8 ; 8 uses
  store ptr null, ptr %i.et, align 8, !tbaa !124
  %i.ey = getelementptr inbounds nuw i8, ptr %21, i64 24 ; 4 uses
  store ptr %i.ex, ptr %i.ey, align 8, !tbaa !153
  %i.ez = getelementptr inbounds nuw i8, ptr %21, i64 32 ; 2 uses
  store ptr %i.ex, ptr %i.ez, align 8, !tbaa !154
  %i.fa = getelementptr inbounds nuw i8, ptr %21, i64 40 ; 4 uses
  store i64 0, ptr %i.fa, align 8, !tbaa !155
  %i.fb = getelementptr inbounds nuw i8, ptr %22, i64 16 ; 2 uses
  %i.fc = load ptr, ptr %i.fb, align 8, !tbaa !156 ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.fc, null
  br i1 %.not.i.i.i, label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6casadi11GenericTypeESt4lessIS5_ESaISt4pairIKS5_S7_EEEaSEOSE_.exit, label %bb.ac

bb.ac:                                            ; preds = %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N6casadi11GenericTypeEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE5clearEv.exit.i.i.i
  %i.fd = getelementptr inbounds nuw i8, ptr %22, i64 8 ; 3 uses
  %i.fe = load i32, ptr %i.fd, align 8, !tbaa !157
  store i32 %i.fe, ptr %i.ex, align 8, !tbaa !157
  store ptr %i.fc, ptr %i.et, align 8, !tbaa !124
  %i.ff = getelementptr inbounds nuw i8, ptr %22, i64 24 ; 2 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %22, i64 32
  %i.fh = load <2 x ptr>, ptr %i.ff, align 8, !tbaa !156
  store <2 x ptr> %i.fh, ptr %i.ey, align 8, !tbaa !156
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fc, i64 8
  store ptr %i.ex, ptr %i.fi, align 8, !tbaa !362
  %i.fj = getelementptr inbounds nuw i8, ptr %22, i64 40 ; 2 uses
  %i.fk = load i64, ptr %i.fj, align 8, !tbaa !155
  store i64 %i.fk, ptr %i.fa, align 8, !tbaa !155
  store ptr null, ptr %i.fb, align 8, !tbaa !124
  store ptr %i.fd, ptr %i.ff, align 8, !tbaa !153
  store ptr %i.fd, ptr %i.fg, align 8, !tbaa !154
  store i64 0, ptr %i.fj, align 8, !tbaa !155
  br label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6casadi11GenericTypeESt4lessIS5_ESaISt4pairIKS5_S7_EEEaSEOSE_.exit

_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6casadi11GenericTypeESt4lessIS5_ESaISt4pairIKS5_S7_EEEaSEOSE_.exit: ; preds = %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N6casadi11GenericTypeEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE5clearEv.exit.i.i.i, %bb.ac
  invoke void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N6casadi11GenericTypeEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE8_M_eraseEPSt13_Rb_tree_nodeISA_E(ptr noundef nonnull align 8 dereferenceable(48) %22, ptr noundef null)
          to label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6casadi11GenericTypeESt4lessIS5_ESaISt4pairIKS5_S7_EEED2Ev.exit unwind label %bb.ad

bb.ad:                                            ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6casadi11GenericTypeESt4lessIS5_ESaISt4pairIKS5_S7_EEEaSEOSE_.exit
  %i.fl = landingpad { ptr, i32 }
          catch ptr null
  %i.fm = extractvalue { ptr, i32 } %i.fl, 0
  call void @__clang_call_terminate(ptr %i.fm) #28
  unreachable

_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6casadi11GenericTypeESt4lessIS5_ESaISt4pairIKS5_S7_EEED2Ev.exit: ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6casadi11GenericTypeESt4lessIS5_ESaISt4pairIKS5_S7_EEEaSEOSE_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #26
  %i.fn = getelementptr inbounds nuw i8, ptr %25, i64 16 ; 6 uses
  store ptr %i.fn, ptr %25, align 8, !tbaa !107
  store i64 7953754288409502058, ptr %i.fn, align 8
  %i.fo = getelementptr inbounds nuw i8, ptr %25, i64 8
  store i64 8, ptr %i.fo, align 8, !tbaa !106
  %i.fp = getelementptr inbounds nuw i8, ptr %25, i64 24
  store i8 0, ptr %i.fp, align 8, !tbaa !105
  %i.fq = load ptr, ptr %1, align 8, !tbaa !111
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fq, i64 40
  %i.fs = load ptr, ptr %i.fr, align 8
  invoke void %i.fs(ptr dead_on_unwind nonnull writable sret(%"class.std::map") align 8 %24, ptr noundef nonnull align 8 dereferenceable(1312) %1, ptr noundef nonnull align 8 dereferenceable(32) %25)
          to label %bb.ae unwind label %bb.ax

bb.ae:                                            ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6casadi11GenericTypeESt4lessIS5_ESaISt4pairIKS5_S7_EEED2Ev.exit
  invoke void @_ZN6casadi7combineERKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_11GenericTypeESt4lessIS6_ESaISt4pairIKS6_S7_EEESG_b(ptr dead_on_unwind nonnull writable sret(%"class.std::map") align 8 %23, ptr noundef nonnull align 8 dereferenceable(48) %21, ptr noundef nonnull align 8 dereferenceable(48) %24, i1 noundef zeroext false)
          to label %bb.af unwind label %bb.ay

bb.af:                                            ; preds = %bb.ae
  %i.ft = load ptr, ptr %i.et, align 8, !tbaa !124
  invoke void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N6casadi11GenericTypeEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE8_M_eraseEPSt13_Rb_tree_nodeISA_E(ptr noundef nonnull align 8 dereferenceable(48) %21, ptr noundef %i.ft)
          to label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N6casadi11GenericTypeEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE5clearEv.exit.i.i.i338 unwind label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.fu = landingpad { ptr, i32 }
          catch ptr null
  %i.fv = extractvalue { ptr, i32 } %i.fu, 0
  call void @__clang_call_terminate(ptr %i.fv) #28
  unreachable

_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N6casadi11GenericTypeEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE5clearEv.exit.i.i.i338: ; preds = %bb.af
  store ptr null, ptr %i.et, align 8, !tbaa !124
  store ptr %i.ex, ptr %i.ey, align 8, !tbaa !153
  store ptr %i.ex, ptr %i.ez, align 8, !tbaa !154
  store i64 0, ptr %i.fa, align 8, !tbaa !155
  %i.fw = getelementptr inbounds nuw i8, ptr %23, i64 16 ; 2 uses
  %i.fx = load ptr, ptr %i.fw, align 8, !tbaa !156 ; 3 uses
  %.not.i.i.i339 = icmp eq ptr %i.fx, null
  br i1 %.not.i.i.i339, label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6casadi11GenericTypeESt4lessIS5_ESaISt4pairIKS5_S7_EEEaSEOSE_.exit340, label %bb.ah

bb.ah:                                            ; preds = %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N6casadi11GenericTypeEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE5clearEv.exit.i.i.i338
  %i.fy = getelementptr inbounds nuw i8, ptr %23, i64 8 ; 3 uses
  %i.fz = load i32, ptr %i.fy, align 8, !tbaa !157
  store i32 %i.fz, ptr %i.ex, align 8, !tbaa !157
  store ptr %i.fx, ptr %i.et, align 8, !tbaa !124
  %i.ga = getelementptr inbounds nuw i8, ptr %23, i64 24 ; 2 uses
  %i.gb = getelementptr inbounds nuw i8, ptr %23, i64 32
  %i.gc = load <2 x ptr>, ptr %i.ga, align 8, !tbaa !156
  store <2 x ptr> %i.gc, ptr %i.ey, align 8, !tbaa !156
  %i.gd = getelementptr inbounds nuw i8, ptr %i.fx, i64 8
  store ptr %i.ex, ptr %i.gd, align 8, !tbaa !362
  %i.ge = getelementptr inbounds nuw i8, ptr %23, i64 40 ; 2 uses
  %i.gf = load i64, ptr %i.ge, align 8, !tbaa !155
  store i64 %i.gf, ptr %i.fa, align 8, !tbaa !155
  store ptr null, ptr %i.fw, align 8, !tbaa !124
  store ptr %i.fy, ptr %i.ga, align 8, !tbaa !153
  store ptr %i.fy, ptr %i.gb, align 8, !tbaa !154
  store i64 0, ptr %i.ge, align 8, !tbaa !155
  br label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6casadi11GenericTypeESt4lessIS5_ESaISt4pairIKS5_S7_EEEaSEOSE_.exit340
end_hunk_1
