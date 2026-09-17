Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/CPlusPlusLanguage?download=true
inline.NumInlined: 8510
inline.NumDeleted: 2274
loop-unroll.NumCompletelyUnrolled: 13
loop-unroll.NumUnrolled: 13
begin_hunk_0_@_ZNK4llvm16itanium_demangle8BoolExpr9printLeftERNS0_12OutputBufferE:bb.a
  %i.b = load i8, ptr %i.a, align 1, !tbaa !521, !range !90, !noundef !91
  %i.c = trunc nuw i8 %i.b to i1                  ; 2 uses
  %. = select i1 %i.c, i64 4, i64 5               ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !421  ; 2 uses
  %i.f = add i64 %., %i.e                         ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.h = load i64, ptr %i.g, align 8, !tbaa !422  ; 2 uses
  %i.i = icmp ugt i64 %i.f, %i.h
  br i1 %i.i, label %bb.b, label %._ZN4llvm16itanium_demangle12OutputBuffer4growEm.exit_crit_edge.i

._ZN4llvm16itanium_demangle12OutputBuffer4growEm.exit_crit_edge.i: ; preds = %bb.a
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.pre.i = load ptr, ptr %.phi.trans.insert.i, align 8, !tbaa !423
  br label %_ZN4llvm16itanium_demangle12OutputBuffer4growEm.exit.i

bb.b:                                             ; preds = %bb.a
  %i.j = add i64 %i.f, 992
  %i.k = shl i64 %i.h, 1
  %spec.select.i.i = tail call i64 @llvm.umax.i64(i64 %i.k, i64 %i.j) ; 2 uses
  store i64 %spec.select.i.i, ptr %i.g, align 8, !tbaa !422
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !423
  %i.n = tail call ptr @realloc(ptr noundef %i.m, i64 noundef %spec.select.i.i) #34 ; 3 uses
  store ptr %i.n, ptr %i.l, align 8, !tbaa !423
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %bb.c, label %._ZN4llvm16itanium_demangle12OutputBuffer4growEm.exit_crit_edge4.i

._ZN4llvm16itanium_demangle12OutputBuffer4growEm.exit_crit_edge4.i: ; preds = %bb.b
  %.pre5.i = load i64, ptr %i.d, align 8, !tbaa !421
  br label %_ZN4llvm16itanium_demangle12OutputBuffer4growEm.exit.i

bb.c:                                             ; preds = %bb.b
  tail call void @abort() #30
  unreachable

_ZN4llvm16itanium_demangle12OutputBuffer4growEm.exit.i: ; preds = %._ZN4llvm16itanium_demangle12OutputBuffer4growEm.exit_crit_edge4.i, %._ZN4llvm16itanium_demangle12OutputBuffer4growEm.exit_crit_edge.i
  %i.p = phi i64 [ %i.e, %._ZN4llvm16itanium_demangle12OutputBuffer4growEm.exit_crit_edge.i ], [ %.pre5.i, %._ZN4llvm16itanium_demangle12OutputBuffer4growEm.exit_crit_edge4.i ]
  %i.q = phi ptr [ %.pre.i, %._ZN4llvm16itanium_demangle12OutputBuffer4growEm.exit_crit_edge.i ], [ %i.n, %._ZN4llvm16itanium_demangle12OutputBuffer4growEm.exit_crit_edge4.i ]
  %.str.514..str.515 = select i1 %i.c, ptr @.str.514, ptr @.str.515
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.p
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(4) %i.r, ptr noundef nonnull align 1 dereferenceable(4) %.str.514..str.515, i64 %., i1 false)
  %i.s = load i64, ptr %i.d, align 8, !tbaa !421
  %i.t = add i64 %i.s, %.
  store i64 %i.t, ptr %i.d, align 8, !tbaa !421
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm16itanium_demangle16FloatLiteralImplIfED0Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #3 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 32) #29
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNK4llvm16itanium_demangle16FloatLiteralImplIfE9printLeftERNS0_12OutputBufferE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = alloca [24 x i8], align 16               ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = load i64, ptr %i.b, align 8, !tbaa !531
  %i.d = icmp ugt i64 %i.c, 7
  br i1 %i.d, label %_ZSt7reverseIPcEvT_S1_.exit, label %bb.e

_ZSt7reverseIPcEvT_S1_.exit:                      ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !532
  %i.g = load <8 x i8>, ptr %i.f, align 1, !tbaa !58 ; 2 uses
  %i.h = shufflevector <8 x i8> %i.g, <8 x i8> poison, <4 x i32> <i32 7, i32 5, i32 3, i32 1> ; 2 uses
  %i.i = sext <4 x i8> %i.h to <4 x i32>
  %i.j = add nsw <4 x i32> %i.i, splat (i32 -48)
  %i.k = icmp ult <4 x i32> %i.j, splat (i32 10)
  %i.l = select <4 x i1> %i.k, <4 x i8> splat (i8 -48), <4 x i8> splat (i8 -87)
  %i.m = add <4 x i8> %i.l, %i.h
  %i.n = shufflevector <8 x i8> %i.g, <8 x i8> poison, <4 x i32> <i32 6, i32 4, i32 2, i32 0> ; 2 uses
  %i.o = sext <4 x i8> %i.n to <4 x i16>
  %i.p = add nsw <4 x i16> %i.o, splat (i16 -48)
  %i.q = icmp ult <4 x i16> %i.p, splat (i16 10)
  %i.r = select <4 x i1> %i.q, <4 x i8> zeroinitializer, <4 x i8> splat (i8 9)
  %i.s = add <4 x i8> %i.r, %i.n
  %i.t = shl <4 x i8> %i.s, splat (i8 4)
  %i.u = add <4 x i8> %i.m, %i.t
  %i.v = bitcast <4 x i8> %i.u to float
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #27
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.a, i8 0, i64 24, i1 false)
  %i.w = fpext float %i.v to double
  %i.x = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.a, i64 noundef 24, ptr noundef nonnull @.str.516, double noundef %i.w) #27 ; 2 uses
  %i.y = sext i32 %i.x to i64                     ; 3 uses
  %.not.i = icmp eq i32 %i.x, 0
  br i1 %.not.i, label %_ZN4llvm16itanium_demangle12OutputBufferpLESt17basic_string_viewIcSt11char_traitsIcEE.exit, label %bb.b

bb.b:                                             ; preds = %_ZSt7reverseIPcEvT_S1_.exit
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !421 ; 2 uses
  %i.ab = add i64 %i.aa, %i.y                     ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !422 ; 2 uses
  %i.ae = icmp ugt i64 %i.ab, %i.ad
  br i1 %i.ae, label %bb.c, label %._ZN4llvm16itanium_demangle12OutputBuffer4growEm.exit_crit_edge.i

._ZN4llvm16itanium_demangle12OutputBuffer4growEm.exit_crit_edge.i: ; preds = %bb.b
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.pre.i = load ptr, ptr %.phi.trans.insert.i, align 8, !tbaa !423
  br label %_ZN4llvm16itanium_demangle12OutputBuffer4growEm.exit.i

bb.c:                                             ; preds = %bb.b
  %i.af = add i64 %i.ab, 992
  %i.ag = shl i64 %i.ad, 1
  %spec.select.i.i = tail call i64 @llvm.umax.i64(i64 %i.ag, i64 %i.af) ; 2 uses
  store i64 %spec.select.i.i, ptr %i.ac, align 8, !tbaa !422
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !423
  %i.aj = tail call ptr @realloc(ptr noundef %i.ai, i64 noundef %spec.select.i.i) #34 ; 3 uses
  store ptr %i.aj, ptr %i.ah, align 8, !tbaa !423
  %i.ak = icmp eq ptr %i.aj, null
  br i1 %i.ak, label %bb.d, label %._ZN4llvm16itanium_demangle12OutputBuffer4growEm.exit_crit_edge4.i

._ZN4llvm16itanium_demangle12OutputBuffer4growEm.exit_crit_edge4.i: ; preds = %bb.c
  %.pre5.i = load i64, ptr %i.z, align 8, !tbaa !421
  br label %_ZN4llvm16itanium_demangle12OutputBuffer4growEm.exit.i

bb.d:                                             ; preds = %bb.c
  tail call void @abort() #30
  unreachable

_ZN4llvm16itanium_demangle12OutputBuffer4growEm.exit.i: ; preds = %._ZN4llvm16itanium_demangle12OutputBuffer4growEm.exit_crit_edge4.i, %._ZN4llvm16itanium_demangle12OutputBuffer4growEm.exit_crit_edge.i
  %i.al = phi i64 [ %i.aa, %._ZN4llvm16itanium_demangle12OutputBuffer4growEm.exit_crit_edge.i ], [ %.pre5.i, %._ZN4llvm16itanium_demangle12OutputBuffer4growEm.exit_crit_edge4.i ]
  %i.am = phi ptr [ %.pre.i, %._ZN4llvm16itanium_demangle12OutputBuffer4growEm.exit_crit_edge.i ], [ %i.aj, %._ZN4llvm16itanium_demangle12OutputBuffer4growEm.exit_crit_edge4.i ]
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 %i.al
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.an, ptr nonnull align 16 %i.a, i64 %i.y, i1 false)
  %i.ao = load i64, ptr %i.z, align 8, !tbaa !421
  %i.ap = add i64 %i.ao, %i.y
  store i64 %i.ap, ptr %i.z, align 8, !tbaa !421
  br label %_ZN4llvm16itanium_demangle12OutputBufferpLESt17basic_string_viewIcSt11char_traitsIcEE.exit

_ZN4llvm16itanium_demangle12OutputBufferpLESt17basic_string_viewIcSt11char_traitsIcEE.exit: ; preds = %_ZSt7reverseIPcEvT_S1_.exit, %_ZN4llvm16itanium_demangle12OutputBuffer4growEm.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27
  br label %bb.e

bb.e:                                             ; preds = %_ZN4llvm16itanium_demangle12OutputBufferpLESt17basic_string_viewIcSt11char_traitsIcEE.exit, %bb.a
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @snprintf(ptr noalias noundef writeonly captures(none), i64 noundef, ptr noundef readonly captures(none), ...) local_unnamed_addr #22

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm16itanium_demangle16FloatLiteralImplIdED0Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #3 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 32) #29
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNK4llvm16itanium_demangle16FloatLiteralImplIdE9printLeftERNS0_12OutputBufferE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = alloca [32 x i8], align 16               ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = load i64, ptr %i.b, align 8, !tbaa !531
  %i.d = icmp ugt i64 %i.c, 15
  br i1 %i.d, label %_ZSt7reverseIPcEvT_S1_.exit, label %bb.e

_ZSt7reverseIPcEvT_S1_.exit:                      ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !532  ; 9 uses
  %.ptr.4 = getelementptr inbounds nuw i8, ptr %i.f, i64 9
  %i.g = load i8, ptr %.ptr.4, align 1, !tbaa !58 ; 2 uses
  %i.h = sext i8 %i.g to i32
  %isdigittmp20.4 = add nsw i32 %i.h, -48
  %isdigit21.4 = icmp ult i32 %isdigittmp20.4, 10
  %.v22.4 = select i1 %isdigit21.4, i8 -48, i8 -87
  %i.i = add i8 %.v22.4, %i.g
  %.018.ptr.4 = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.j = load i8, ptr %.018.ptr.4, align 1, !tbaa !58 ; 2 uses
  %i.k = sext i8 %i.j to i32
  %isdigittmp.4 = add nsw i32 %i.k, -48
  %isdigit.4 = icmp ult i32 %isdigittmp.4, 10
  %.v.4 = select i1 %isdigit.4, i8 0, i8 9
  %i.l = add i8 %.v.4, %i.j
  %i.m = shl i8 %i.l, 4
  %i.n = add i8 %i.i, %i.m
  %.sroa.0.4.insert.ext = zext i8 %i.n to i64
  %.sroa.0.4.insert.shift = shl nuw nsw i64 %.sroa.0.4.insert.ext, 24
  %.ptr.5 = getelementptr inbounds nuw i8, ptr %i.f, i64 11
  %i.o = load i8, ptr %.ptr.5, align 1, !tbaa !58 ; 2 uses
  %i.p = sext i8 %i.o to i32
  %isdigittmp20.5 = add nsw i32 %i.p, -48
  %isdigit21.5 = icmp ult i32 %isdigittmp20.5, 10
  %.v22.5 = select i1 %isdigit21.5, i8 -48, i8 -87
  %i.q = add i8 %.v22.5, %i.o
  %.018.ptr.5 = getelementptr inbounds nuw i8, ptr %i.f, i64 10
  %i.r = load i8, ptr %.018.ptr.5, align 1, !tbaa !58 ; 2 uses
  %i.s = sext i8 %i.r to i32
  %isdigittmp.5 = add nsw i32 %i.s, -48
  %isdigit.5 = icmp ult i32 %isdigittmp.5, 10
  %.v.5 = select i1 %isdigit.5, i8 0, i8 9
  %i.t = add i8 %.v.5, %i.r
  %i.u = shl i8 %i.t, 4
  %i.v = add i8 %i.q, %i.u
  %.sroa.0.5.insert.ext = zext i8 %i.v to i64
  %.ptr.6 = getelementptr inbounds nuw i8, ptr %i.f, i64 13
  %2 = load i8, ptr %.ptr.6, align 1, !tbaa !58   ; 2 uses
  %3 = sext i8 %2 to i32
  %isdigittmp20.6 = add nsw i32 %3, -48
  %isdigit21.6 = icmp ult i32 %isdigittmp20.6, 10
  %.v22.6 = select i1 %isdigit21.6, i8 -48, i8 -87
  %4 = add i8 %.v22.6, %2
  %.018.ptr.6 = getelementptr inbounds nuw i8, ptr %i.f, i64 12
  %5 = load i8, ptr %.018.ptr.6, align 1, !tbaa !58 ; 2 uses
  %6 = sext i8 %5 to i32
  %isdigittmp.6 = add nsw i32 %6, -48
  %isdigit.6 = icmp ult i32 %isdigittmp.6, 10
  %.v.6 = select i1 %isdigit.6, i8 0, i8 9
  %7 = add i8 %.v.6, %5
  %8 = shl i8 %7, 4
  %9 = add i8 %4, %8
  %.sroa.0.5.insert.ext50 = zext i8 %9 to i64
  %.ptr.6.a = getelementptr inbounds nuw i8, ptr %i.f, i64 15
  %i.w = load i8, ptr %.ptr.6.a, align 1, !tbaa !58 ; 2 uses
  %i.x = sext i8 %i.w to i32
  %isdigittmp20.6.a = add nsw i32 %i.x, -48
  %isdigit21.6.a = icmp ult i32 %isdigittmp20.6.a, 10
  %.v22.6.a = select i1 %isdigit21.6.a, i8 -48, i8 -87
  %i.y = add i8 %.v22.6.a, %i.w
  %.018.ptr.6.a = getelementptr inbounds nuw i8, ptr %i.f, i64 14
  %i.z = load i8, ptr %.018.ptr.6.a, align 1, !tbaa !58 ; 2 uses
  %i.aa = sext i8 %i.z to i32
  %isdigittmp.6.a = add nsw i32 %i.aa, -48
  %isdigit.6.a = icmp ult i32 %isdigittmp.6.a, 10
  %.v.6.a = select i1 %isdigit.6.a, i8 0, i8 9
  %i.ab = add i8 %.v.6.a, %i.z
  %i.ac = shl i8 %i.ab, 4
  %i.ad = add i8 %i.y, %i.ac
  %.sroa.0.6.insert.ext = zext i8 %i.ad to i64
  %10 = load <8 x i8>, ptr %i.f, align 1, !tbaa !58 ; 2 uses
  %11 = shufflevector <8 x i8> %10, <8 x i8> poison, <4 x i32> <i32 5, i32 3, i32 1, i32 7> ; 2 uses
  %12 = sext <4 x i8> %11 to <4 x i32>
  %13 = add nsw <4 x i32> %12, splat (i32 -48)
  %14 = icmp ult <4 x i32> %13, splat (i32 10)
  %15 = select <4 x i1> %14, <4 x i8> splat (i8 -48), <4 x i8> splat (i8 -87)
  %16 = add <4 x i8> %15, %11
  %17 = shufflevector <8 x i8> %10, <8 x i8> poison, <4 x i32> <i32 4, i32 2, i32 0, i32 6> ; 2 uses
  %18 = sext <4 x i8> %17 to <4 x i32>
  %19 = add nsw <4 x i32> %18, splat (i32 -48)
  %20 = icmp ult <4 x i32> %19, splat (i32 10)
  %21 = select <4 x i1> %20, <4 x i8> zeroinitializer, <4 x i8> splat (i8 9)
  %22 = add <4 x i8> %21, %17
  %23 = shl <4 x i8> %22, splat (i8 4)
  %24 = add <4 x i8> %16, %23
  %.sroa.0.6.insert.shift56 = shl nuw nsw i64 %.sroa.0.5.insert.ext, 16
  %25 = shufflevector <4 x i8> %24, <4 x i8> <i8 0, i8 poison, i8 poison, i8 poison>, <8 x i32> <i32 4, i32 4, i32 4, i32 4, i32 3, i32 0, i32 1, i32 2>
  %26 = bitcast <8 x i8> %25 to i64
  %.sroa.0.7.insert.shift61 = shl nuw nsw i64 %.sroa.0.5.insert.ext50, 8
  %.sroa.0.6.insert.insert58 = or disjoint i64 %.sroa.0.6.insert.shift56, %26
  %.sroa.0.5.insert.insert53 = or disjoint i64 %.sroa.0.7.insert.shift61, %.sroa.0.4.insert.shift
  %.sroa.0.3.insert.insert43 = or disjoint i64 %.sroa.0.6.insert.insert58, %.sroa.0.5.insert.insert53
  %.sroa.0.4.insert.insert48 = or disjoint i64 %.sroa.0.3.insert.insert43, %.sroa.0.6.insert.ext
  %i.ae = bitcast i64 %.sroa.0.4.insert.insert48 to double
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #27
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.a, i8 0, i64 32, i1 false)
  %i.af = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.a, i64 noundef 32, ptr noundef nonnull @.str.517, double noundef %i.ae) #27 ; 2 uses
  %i.ag = sext i32 %i.af to i64                   ; 3 uses
  %.not.i = icmp eq i32 %i.af, 0
  br i1 %.not.i, label %_ZN4llvm16itanium_demangle12OutputBufferpLESt17basic_string_viewIcSt11char_traitsIcEE.exit, label %bb.b

bb.b:                                             ; preds = %_ZSt7reverseIPcEvT_S1_.exit
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !421 ; 2 uses
  %i.aj = add i64 %i.ai, %i.ag                    ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !422 ; 2 uses
  %i.am = icmp ugt i64 %i.aj, %i.al
  br i1 %i.am, label %bb.c, label %._ZN4llvm16itanium_demangle12OutputBuffer4growEm.exit_crit_edge.i

._ZN4llvm16itanium_demangle12OutputBuffer4growEm.exit_crit_edge.i: ; preds = %bb.b
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.pre.i = load ptr, ptr %.phi.trans.insert.i, align 8, !tbaa !423
  br label %_ZN4llvm16itanium_demangle12OutputBuffer4growEm.exit.i

bb.c:                                             ; preds = %bb.b
  %i.an = add i64 %i.aj, 992
  %i.ao = shl i64 %i.al, 1
  %spec.select.i.i = tail call i64 @llvm.umax.i64(i64 %i.ao, i64 %i.an) ; 2 uses
  store i64 %spec.select.i.i, ptr %i.ak, align 8, !tbaa !422
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !423
  %i.ar = tail call ptr @realloc(ptr noundef %i.aq, i64 noundef %spec.select.i.i) #34 ; 3 uses
  store ptr %i.ar, ptr %i.ap, align 8, !tbaa !423
  %i.as = icmp eq ptr %i.ar, null
  br i1 %i.as, label %bb.d, label %._ZN4llvm16itanium_demangle12OutputBuffer4growEm.exit_crit_edge4.i

._ZN4llvm16itanium_demangle12OutputBuffer4growEm.exit_crit_edge4.i: ; preds = %bb.c
  %.pre5.i = load i64, ptr %i.ah, align 8, !tbaa !421
  br label %_ZN4llvm16itanium_demangle12OutputBuffer4growEm.exit.i

bb.d:                                             ; preds = %bb.c
  tail call void @abort() #30
  unreachable

_ZN4llvm16itanium_demangle12OutputBuffer4growEm.exit.i: ; preds = %._ZN4llvm16itanium_demangle12OutputBuffer4growEm.exit_crit_edge4.i, %._ZN4llvm16itanium_demangle12OutputBuffer4growEm.exit_crit_edge.i
  %i.at = phi i64 [ %i.ai, %._ZN4llvm16itanium_demangle12OutputBuffer4growEm.exit_crit_edge.i ], [ %.pre5.i, %._ZN4llvm16itanium_demangle12OutputBuffer4growEm.exit_crit_edge4.i ]
  %i.au = phi ptr [ %.pre.i, %._ZN4llvm16itanium_demangle12OutputBuffer4growEm.exit_crit_edge.i ], [ %i.ar, %._ZN4llvm16itanium_demangle12OutputBuffer4growEm.exit_crit_edge4.i ]
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 %i.at
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.av, ptr nonnull align 16 %i.a, i64 %i.ag, i1 false)
  %i.aw = load i64, ptr %i.ah, align 8, !tbaa !421
  %i.ax = add i64 %i.aw, %i.ag
  store i64 %i.ax, ptr %i.ah, align 8, !tbaa !421
  br label %_ZN4llvm16itanium_demangle12OutputBufferpLESt17basic_string_viewIcSt11char_traitsIcEE.exit

_ZN4llvm16itanium_demangle12OutputBufferpLESt17basic_string_viewIcSt11char_traitsIcEE.exit: ; preds = %_ZSt7reverseIPcEvT_S1_.exit, %_ZN4llvm16itanium_demangle12OutputBuffer4growEm.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27
  br label %bb.e

bb.e:                                             ; preds = %_ZN4llvm16itanium_demangle12OutputBufferpLESt17basic_string_viewIcSt11char_traitsIcEE.exit, %bb.a
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm16itanium_demangle16FloatLiteralImplIeED0Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #3 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 32) #29
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNK4llvm16itanium_demangle16FloatLiteralImplIeE9printLeftERNS0_12OutputBufferE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = alloca [42 x i8], align 16               ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = load i64, ptr %i.b, align 8, !tbaa !531
  %i.d = icmp ugt i64 %i.c, 19
  br i1 %i.d, label %_ZSt7reverseIPcEvT_S1_.exit, label %bb.e

_ZSt7reverseIPcEvT_S1_.exit:                      ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !532  ; 13 uses
  %.ptr.6 = getelementptr inbounds nuw i8, ptr %i.f, i64 13
  %i.g = load i8, ptr %.ptr.6, align 1, !tbaa !58 ; 2 uses
  %i.h = sext i8 %i.g to i32
  %isdigittmp20.6 = add nsw i32 %i.h, -48
  %isdigit21.6 = icmp ult i32 %isdigittmp20.6, 10
  %.v22.6 = select i1 %isdigit21.6, i8 -48, i8 -87
  %i.i = add i8 %.v22.6, %i.g
  %.018.ptr.6 = getelementptr inbounds nuw i8, ptr %i.f, i64 12
  %i.j = load i8, ptr %.018.ptr.6, align 1, !tbaa !58 ; 2 uses
  %i.k = sext i8 %i.j to i32
  %isdigittmp.6 = add nsw i32 %i.k, -48
  %isdigit.6 = icmp ult i32 %isdigittmp.6, 10
  %.v.6 = select i1 %isdigit.6, i8 0, i8 9
  %i.l = add i8 %.v.6, %i.j
  %i.m = shl i8 %i.l, 4
  %i.n = add i8 %i.i, %i.m
  %.sroa.0.6.insert.ext = zext i8 %i.n to i80
  %.sroa.0.6.insert.shift = shl nuw nsw i80 %.sroa.0.6.insert.ext, 48
  %.ptr.7 = getelementptr inbounds nuw i8, ptr %i.f, i64 15
  %i.o = load i8, ptr %.ptr.7, align 1, !tbaa !58 ; 2 uses
  %i.p = sext i8 %i.o to i32
  %isdigittmp20.7 = add nsw i32 %i.p, -48
  %isdigit21.7 = icmp ult i32 %isdigittmp20.7, 10
  %.v22.7 = select i1 %isdigit21.7, i8 -48, i8 -87
  %i.q = add i8 %.v22.7, %i.o
  %.018.ptr.7 = getelementptr inbounds nuw i8, ptr %i.f, i64 14
  %i.r = load i8, ptr %.018.ptr.7, align 1, !tbaa !58 ; 2 uses
  %i.s = sext i8 %i.r to i32
  %isdigittmp.7 = add nsw i32 %i.s, -48
  %isdigit.7 = icmp ult i32 %isdigittmp.7, 10
  %.v.7 = select i1 %isdigit.7, i8 0, i8 9
  %i.t = add i8 %.v.7, %i.r
  %i.u = shl i8 %i.t, 4
  %i.v = add i8 %i.q, %i.u
  %.sroa.0.7.insert.ext = zext i8 %i.v to i80
  %.sroa.0.7.insert.shift = shl nuw nsw i80 %.sroa.0.7.insert.ext, 56
  %i.w = or disjoint i80 %.sroa.0.6.insert.shift, %.sroa.0.7.insert.shift
  %.ptr.4 = getelementptr inbounds nuw i8, ptr %i.f, i64 9
  %i.x = load i8, ptr %.ptr.4, align 1, !tbaa !58 ; 2 uses
  %i.y = sext i8 %i.x to i32
  %isdigittmp20.4 = add nsw i32 %i.y, -48
  %isdigit21.4 = icmp ult i32 %isdigittmp20.4, 10
  %.v22.4 = select i1 %isdigit21.4, i8 -48, i8 -87
  %i.z = add i8 %.v22.4, %i.x
  %.018.ptr.4 = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.aa = load i8, ptr %.018.ptr.4, align 1, !tbaa !58 ; 2 uses
  %i.ab = sext i8 %i.aa to i32
  %isdigittmp.4 = add nsw i32 %i.ab, -48
  %isdigit.4 = icmp ult i32 %isdigittmp.4, 10
  %.v.4 = select i1 %isdigit.4, i8 0, i8 9
  %i.ac = add i8 %.v.4, %i.aa
  %i.ad = shl i8 %i.ac, 4
  %i.ae = add i8 %i.z, %i.ad
  %.sroa.0.4.insert.ext = zext i8 %i.ae to i80    ; 2 uses
  %.sroa.0.4.insert.shift = shl nuw nsw i80 %.sroa.0.4.insert.ext, 32
  %.ptr.5 = getelementptr inbounds nuw i8, ptr %i.f, i64 11
  %i.af = load i8, ptr %.ptr.5, align 1, !tbaa !58 ; 2 uses
  %i.ag = sext i8 %i.af to i32
  %isdigittmp20.5 = add nsw i32 %i.ag, -48
  %isdigit21.5 = icmp ult i32 %isdigittmp20.5, 10
  %.v22.5 = select i1 %isdigit21.5, i8 -48, i8 -87
  %i.ah = add i8 %.v22.5, %i.af
  %.018.ptr.5 = getelementptr inbounds nuw i8, ptr %i.f, i64 10
  %i.ai = load i8, ptr %.018.ptr.5, align 1, !tbaa !58 ; 2 uses
  %i.aj = sext i8 %i.ai to i32
  %isdigittmp.5 = add nsw i32 %i.aj, -48
  %isdigit.5 = icmp ult i32 %isdigittmp.5, 10
  %.v.5 = select i1 %isdigit.5, i8 0, i8 9
  %i.ak = add i8 %.v.5, %i.ai
  %i.al = shl i8 %i.ak, 4
  %i.am = add i8 %i.ah, %i.al
  %.sroa.0.5.insert.ext = zext i8 %i.am to i80    ; 2 uses
  %.sroa.0.5.insert.shift = shl nuw nsw i80 %.sroa.0.5.insert.ext, 40
  %.ptr.8 = getelementptr inbounds nuw i8, ptr %i.f, i64 17
  %i.an = load i8, ptr %.ptr.8, align 1, !tbaa !58 ; 2 uses
  %i.ao = sext i8 %i.an to i32
  %isdigittmp20.8 = add nsw i32 %i.ao, -48
  %isdigit21.8 = icmp ult i32 %isdigittmp20.8, 10
  %.v22.8 = select i1 %isdigit21.8, i8 -48, i8 -87
  %i.ap = add i8 %.v22.8, %i.an
  %.018.ptr.8 = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.aq = load i8, ptr %.018.ptr.8, align 1, !tbaa !58 ; 2 uses
  %i.ar = sext i8 %i.aq to i32
  %isdigittmp.8 = add nsw i32 %i.ar, -48
  %isdigit.8 = icmp ult i32 %isdigittmp.8, 10
  %.v.8 = select i1 %isdigit.8, i8 0, i8 9
  %i.as = add i8 %.v.8, %i.aq
  %i.at = shl i8 %i.as, 4
  %i.au = add i8 %i.ap, %i.at
  %.sroa.0.8.insert.ext = zext i8 %i.au to i80
  %.sroa.0.8.insert.shift = shl nuw nsw i80 %.sroa.0.8.insert.ext, 64
  %.ptr.9 = getelementptr inbounds nuw i8, ptr %i.f, i64 19
  %i.av = load i8, ptr %.ptr.9, align 1, !tbaa !58 ; 2 uses
  %i.aw = sext i8 %i.av to i32
  %isdigittmp20.9 = add nsw i32 %i.aw, -48
  %isdigit21.9 = icmp ult i32 %isdigittmp20.9, 10
  %.v22.9 = select i1 %isdigit21.9, i8 -48, i8 -87
  %i.ax = add i8 %.v22.9, %i.av
  %.018.ptr.9 = getelementptr inbounds nuw i8, ptr %i.f, i64 18
  %i.ay = load i8, ptr %.018.ptr.9, align 1, !tbaa !58 ; 2 uses
  %i.az = sext i8 %i.ay to i32
  %isdigittmp.9 = add nsw i32 %i.az, -48
  %isdigit.9 = icmp ult i32 %isdigittmp.9, 10
  %.v.9 = select i1 %isdigit.9, i8 0, i8 9
  %i.ba = add i8 %.v.9, %i.ay
  %i.bb = shl i8 %i.ba, 4
  %i.bc = add i8 %i.ax, %i.bb
  %.sroa.0.9.insert.ext = zext i8 %i.bc to i80
  %.sroa.0.9.insert.shift = shl nuw i80 %.sroa.0.9.insert.ext, 72
  %i.bd = or disjoint i80 %.sroa.0.8.insert.shift, %.sroa.0.9.insert.shift
  %i.be = load <8 x i8>, ptr %i.f, align 1, !tbaa !58 ; 2 uses
  %i.bf = shufflevector <8 x i8> %i.be, <8 x i8> poison, <4 x i32> <i32 7, i32 5, i32 3, i32 1> ; 2 uses
  %i.bg = sext <4 x i8> %i.bf to <4 x i32>
  %i.bh = add nsw <4 x i32> %i.bg, splat (i32 -48)
  %i.bi = icmp ult <4 x i32> %i.bh, splat (i32 10)
  %i.bj = select <4 x i1> %i.bi, <4 x i8> splat (i8 -48), <4 x i8> splat (i8 -87)
  %i.bk = add <4 x i8> %i.bj, %i.bf
  %i.bl = shufflevector <8 x i8> %i.be, <8 x i8> poison, <4 x i32> <i32 6, i32 4, i32 2, i32 0> ; 2 uses
  %i.bm = sext <4 x i8> %i.bl to <4 x i32>
  %i.bn = add nsw <4 x i32> %i.bm, splat (i32 -48)
  %i.bo = icmp ult <4 x i32> %i.bn, splat (i32 10)
end_hunk_0
