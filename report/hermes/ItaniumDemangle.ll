Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/hermes/original/ItaniumDemangle?download=true
inline.NumInlined: 2019
inline.NumDeleted: 419
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumUnrolled: 9
begin_hunk_0_@_ZNK4llvh16itanium_demangle8BoolExpr9printLeftER12OutputStream:bb.a

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.i = load i64, ptr %i.h, align 8, !tbaa !53   ; 2 uses
  %i.j = add i64 %i.i, %i.f                       ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.l = load i64, ptr %i.k, align 8, !tbaa !55   ; 2 uses
  %.not.i.i = icmp ult i64 %i.j, %i.l
  %.pre.i = load ptr, ptr %1, align 8, !tbaa !54  ; 2 uses
  br i1 %.not.i.i, label %_ZN12OutputStream4growEm.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = shl i64 %i.l, 1
  %spec.store.select.i.i = tail call i64 @llvm.umax.i64(i64 %i.m, i64 %i.j) ; 2 uses
  store i64 %spec.store.select.i.i, ptr %i.k, align 8
  %i.n = tail call ptr @realloc(ptr noundef %.pre.i, i64 noundef %spec.store.select.i.i) #22 ; 3 uses
  store ptr %i.n, ptr %1, align 8, !tbaa !54
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %bb.d, label %._ZN12OutputStream4growEm.exit_crit_edge.i

._ZN12OutputStream4growEm.exit_crit_edge.i:       ; preds = %bb.c
  %.pre6.i = load i64, ptr %i.h, align 8, !tbaa !53
  br label %_ZN12OutputStream4growEm.exit.i

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt9terminatev() #23
  unreachable

_ZN12OutputStream4growEm.exit.i:                  ; preds = %._ZN12OutputStream4growEm.exit_crit_edge.i, %bb.b
  %i.p = phi i64 [ %i.i, %bb.b ], [ %.pre6.i, %._ZN12OutputStream4growEm.exit_crit_edge.i ]
  %i.q = phi ptr [ %.pre.i, %bb.b ], [ %i.n, %._ZN12OutputStream4growEm.exit_crit_edge.i ]
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.p
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.r, ptr nonnull align 1 %.str.94..str.95, i64 %i.f, i1 false)
  %i.s = load i64, ptr %i.h, align 8, !tbaa !53
  %i.t = add i64 %i.s, %i.f
  store i64 %i.t, ptr %i.h, align 8, !tbaa !53
  br label %_ZN12OutputStreampLE10StringView.exit

_ZN12OutputStreampLE10StringView.exit:            ; preds = %bb.a, %_ZN12OutputStream4growEm.exit.i
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvh16itanium_demangle8BoolExprD0Ev(ptr noundef nonnull align 8 dereferenceable(13) %0) unnamed_addr #14 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #25
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare i32 @isxdigit(i32 noundef) local_unnamed_addr #15

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNK4llvh16itanium_demangle16FloatLiteralImplIfE9printLeftER12OutputStream(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = alloca [24 x i8], align 16               ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !197  ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !196
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 1
  %i.g = ptrtoint ptr %i.f to i64
  %i.h = ptrtoint ptr %i.c to i64
  %i.i = sub i64 %i.g, %i.h
  %i.j = icmp ugt i64 %i.i, 8
  br i1 %i.j, label %_ZSt7reverseIPcEvT_S1_.exit, label %bb.e

_ZSt7reverseIPcEvT_S1_.exit:                      ; preds = %bb.a
  %i.k = load <8 x i8>, ptr %i.c, align 1, !tbaa !18 ; 2 uses
  %i.l = shufflevector <8 x i8> %i.k, <8 x i8> poison, <4 x i32> <i32 7, i32 5, i32 3, i32 1> ; 2 uses
  %i.m = sext <4 x i8> %i.l to <4 x i32>
  %i.n = add nsw <4 x i32> %i.m, splat (i32 -48)
  %i.o = icmp ult <4 x i32> %i.n, splat (i32 10)
  %i.p = select <4 x i1> %i.o, <4 x i8> splat (i8 -48), <4 x i8> splat (i8 -87)
  %i.q = add <4 x i8> %i.p, %i.l
  %i.r = shufflevector <8 x i8> %i.k, <8 x i8> poison, <4 x i32> <i32 6, i32 4, i32 2, i32 0> ; 2 uses
  %i.s = sext <4 x i8> %i.r to <4 x i16>
  %i.t = add nsw <4 x i16> %i.s, splat (i16 -48)
  %i.u = icmp ult <4 x i16> %i.t, splat (i16 10)
  %i.v = select <4 x i1> %i.u, <4 x i8> zeroinitializer, <4 x i8> splat (i8 9)
  %i.w = add <4 x i8> %i.v, %i.r
  %i.x = shl <4 x i8> %i.w, splat (i8 4)
  %i.y = add <4 x i8> %i.q, %i.x
  %i.z = bitcast <4 x i8> %i.y to float
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.a, i8 0, i64 24, i1 false)
  %i.aa = fpext float %i.z to double
  %i.ab = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.a, i64 noundef 24, ptr noundef nonnull @.str.2, double noundef %i.aa) #19 ; 2 uses
  %i.ac = sext i32 %i.ab to i64                   ; 3 uses
  %i.ad = icmp eq i32 %i.ab, 0
  br i1 %i.ad, label %_ZN12OutputStreampLE10StringView.exit, label %bb.b

bb.b:                                             ; preds = %_ZSt7reverseIPcEvT_S1_.exit
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !53 ; 2 uses
  %i.ag = add i64 %i.af, %i.ac                    ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !55 ; 2 uses
  %.not.i.i = icmp ult i64 %i.ag, %i.ai
  %.pre.i = load ptr, ptr %1, align 8, !tbaa !54  ; 2 uses
  br i1 %.not.i.i, label %_ZN12OutputStream4growEm.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.aj = shl i64 %i.ai, 1
  %spec.store.select.i.i = tail call i64 @llvm.umax.i64(i64 %i.aj, i64 %i.ag) ; 2 uses
  store i64 %spec.store.select.i.i, ptr %i.ah, align 8
  %i.ak = tail call ptr @realloc(ptr noundef %.pre.i, i64 noundef %spec.store.select.i.i) #22 ; 3 uses
  store ptr %i.ak, ptr %1, align 8, !tbaa !54
  %i.al = icmp eq ptr %i.ak, null
  br i1 %i.al, label %bb.d, label %._ZN12OutputStream4growEm.exit_crit_edge.i

._ZN12OutputStream4growEm.exit_crit_edge.i:       ; preds = %bb.c
  %.pre6.i = load i64, ptr %i.ae, align 8, !tbaa !53
  br label %_ZN12OutputStream4growEm.exit.i

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt9terminatev() #23
  unreachable

_ZN12OutputStream4growEm.exit.i:                  ; preds = %._ZN12OutputStream4growEm.exit_crit_edge.i, %bb.b
  %i.am = phi i64 [ %i.af, %bb.b ], [ %.pre6.i, %._ZN12OutputStream4growEm.exit_crit_edge.i ]
  %i.an = phi ptr [ %.pre.i, %bb.b ], [ %i.ak, %._ZN12OutputStream4growEm.exit_crit_edge.i ]
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 %i.am
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ao, ptr nonnull align 16 %i.a, i64 %i.ac, i1 false)
  %i.ap = load i64, ptr %i.ae, align 8, !tbaa !53
  %i.aq = add i64 %i.ap, %i.ac
  store i64 %i.aq, ptr %i.ae, align 8, !tbaa !53
  br label %_ZN12OutputStreampLE10StringView.exit

_ZN12OutputStreampLE10StringView.exit:            ; preds = %_ZSt7reverseIPcEvT_S1_.exit, %_ZN12OutputStream4growEm.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  br label %bb.e

bb.e:                                             ; preds = %_ZN12OutputStreampLE10StringView.exit, %bb.a
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvh16itanium_demangle16FloatLiteralImplIfED0Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #14 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 32) #25
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #16

; Function Attrs: nofree nounwind
declare noundef i32 @snprintf(ptr noalias noundef writeonly captures(none), i64 noundef, ptr noundef readonly captures(none), ...) local_unnamed_addr #17

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNK4llvh16itanium_demangle16FloatLiteralImplIdE9printLeftER12OutputStream(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = alloca [32 x i8], align 16               ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !197  ; 10 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !196
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 1
  %i.g = ptrtoint ptr %i.f to i64
  %i.h = ptrtoint ptr %i.c to i64
  %i.i = sub i64 %i.g, %i.h
  %i.j = icmp ugt i64 %i.i, 16
  br i1 %i.j, label %_ZSt7reverseIPcEvT_S1_.exit, label %bb.e

_ZSt7reverseIPcEvT_S1_.exit:                      ; preds = %bb.a
  %.ptr.4 = getelementptr inbounds nuw i8, ptr %i.c, i64 9
  %i.k = load i8, ptr %.ptr.4, align 1, !tbaa !18 ; 2 uses
  %i.l = sext i8 %i.k to i32
  %isdigittmp23.4 = add nsw i32 %i.l, -48
  %isdigit24.4 = icmp ult i32 %isdigittmp23.4, 10
  %.v25.4 = select i1 %isdigit24.4, i8 -48, i8 -87
  %i.m = add i8 %.v25.4, %i.k
  %.021.ptr.4 = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.n = load i8, ptr %.021.ptr.4, align 1, !tbaa !18 ; 2 uses
  %i.o = sext i8 %i.n to i32
  %isdigittmp.4 = add nsw i32 %i.o, -48
  %isdigit.4 = icmp ult i32 %isdigittmp.4, 10
  %.v.4 = select i1 %isdigit.4, i8 0, i8 9
  %i.p = add i8 %.v.4, %i.n
  %i.q = shl i8 %i.p, 4
  %i.r = add i8 %i.m, %i.q
  %.sroa.0.4.insert.ext = zext i8 %i.r to i64
  %.sroa.0.4.insert.shift = shl nuw nsw i64 %.sroa.0.4.insert.ext, 24
  %.ptr.5 = getelementptr inbounds nuw i8, ptr %i.c, i64 11
  %i.s = load i8, ptr %.ptr.5, align 1, !tbaa !18 ; 2 uses
  %i.t = sext i8 %i.s to i32
  %isdigittmp23.5 = add nsw i32 %i.t, -48
  %isdigit24.5 = icmp ult i32 %isdigittmp23.5, 10
  %.v25.5 = select i1 %isdigit24.5, i8 -48, i8 -87
  %i.u = add i8 %.v25.5, %i.s
  %.021.ptr.5 = getelementptr inbounds nuw i8, ptr %i.c, i64 10
  %i.v = load i8, ptr %.021.ptr.5, align 1, !tbaa !18 ; 2 uses
  %i.w = sext i8 %i.v to i32
  %isdigittmp.5 = add nsw i32 %i.w, -48
  %isdigit.5 = icmp ult i32 %isdigittmp.5, 10
  %.v.5 = select i1 %isdigit.5, i8 0, i8 9
  %i.x = add i8 %.v.5, %i.v
  %i.y = shl i8 %i.x, 4
  %i.z = add i8 %i.u, %i.y
  %.sroa.0.5.insert.ext = zext i8 %i.z to i64
  %2 = load <8 x i8>, ptr %i.c, align 1, !tbaa !18 ; 2 uses
  %3 = shufflevector <8 x i8> %2, <8 x i8> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7> ; 2 uses
  %4 = sext <4 x i8> %3 to <4 x i32>
  %5 = add nsw <4 x i32> %4, splat (i32 -48)
  %6 = icmp ult <4 x i32> %5, splat (i32 10)
  %7 = select <4 x i1> %6, <4 x i8> splat (i8 -48), <4 x i8> splat (i8 -87)
  %8 = add <4 x i8> %7, %3
  %9 = shufflevector <8 x i8> %2, <8 x i8> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6> ; 2 uses
  %10 = sext <4 x i8> %9 to <4 x i32>
  %11 = add nsw <4 x i32> %10, splat (i32 -48)
  %12 = icmp ult <4 x i32> %11, splat (i32 10)
  %13 = select <4 x i1> %12, <4 x i8> zeroinitializer, <4 x i8> splat (i8 9)
  %14 = add <4 x i8> %13, %9
  %15 = shl <4 x i8> %14, splat (i8 4)
  %16 = add <4 x i8> %8, %15                      ; 4 uses
  %17 = shl nuw nsw i64 %.sroa.0.5.insert.ext, 16
  %18 = extractelement <4 x i8> %16, i64 2
  %.sroa.0.5.insert.ext53 = zext i8 %18 to i64
  %.sroa.0.5.insert.shift54 = shl nuw nsw i64 %.sroa.0.5.insert.ext53, 40
  %19 = or disjoint i64 %17, %.sroa.0.5.insert.shift54
  %.ptr.6 = getelementptr inbounds nuw i8, ptr %i.c, i64 13
  %i.aa = load i8, ptr %.ptr.6, align 1, !tbaa !18 ; 2 uses
  %i.ab = sext i8 %i.aa to i32
  %isdigittmp23.6 = add nsw i32 %i.ab, -48
  %isdigit24.6 = icmp ult i32 %isdigittmp23.6, 10
  %.v25.6 = select i1 %isdigit24.6, i8 -48, i8 -87
  %i.ac = add i8 %.v25.6, %i.aa
  %.021.ptr.6 = getelementptr inbounds nuw i8, ptr %i.c, i64 12
  %i.ad = load i8, ptr %.021.ptr.6, align 1, !tbaa !18 ; 2 uses
  %i.ae = sext i8 %i.ad to i32
  %isdigittmp.6 = add nsw i32 %i.ae, -48
  %isdigit.6 = icmp ult i32 %isdigittmp.6, 10
  %.v.6 = select i1 %isdigit.6, i8 0, i8 9
  %i.af = add i8 %.v.6, %i.ad
  %i.ag = shl i8 %i.af, 4
  %i.ah = add i8 %i.ac, %i.ag
  %.sroa.0.6.insert.ext = zext i8 %i.ah to i64
  %.ptr.7 = getelementptr inbounds nuw i8, ptr %i.c, i64 15
  %i.ai = load i8, ptr %.ptr.7, align 1, !tbaa !18 ; 2 uses
  %i.aj = sext i8 %i.ai to i32
  %isdigittmp23.7 = add nsw i32 %i.aj, -48
  %isdigit24.7 = icmp ult i32 %isdigittmp23.7, 10
  %.v25.7 = select i1 %isdigit24.7, i8 -48, i8 -87
  %i.ak = add i8 %.v25.7, %i.ai
  %.021.ptr.7 = getelementptr inbounds nuw i8, ptr %i.c, i64 14
  %i.al = load i8, ptr %.021.ptr.7, align 1, !tbaa !18 ; 2 uses
  %i.am = sext i8 %i.al to i32
  %isdigittmp.7 = add nsw i32 %i.am, -48
  %isdigit.7 = icmp ult i32 %isdigittmp.7, 10
  %.v.7 = select i1 %isdigit.7, i8 0, i8 9
  %i.an = add i8 %.v.7, %i.al
  %i.ao = shl i8 %i.an, 4
  %i.ap = add i8 %i.ak, %i.ao
  %.sroa.0.7.insert.ext = zext i8 %i.ap to i64
  %20 = shl nuw nsw i64 %.sroa.0.6.insert.ext, 8
  %21 = extractelement <4 x i8> %16, i64 1
  %.sroa.0.6.insert.ext58 = zext i8 %21 to i64
  %.sroa.0.6.insert.shift59 = shl nuw nsw i64 %.sroa.0.6.insert.ext58, 48
  %22 = or disjoint i64 %20, %.sroa.0.6.insert.shift59
  %23 = extractelement <4 x i8> %16, i64 0
  %.sroa.0.7.insert.ext63 = zext i8 %23 to i64
  %.sroa.0.7.insert.shift64 = shl nuw i64 %.sroa.0.7.insert.ext63, 56
  %24 = or disjoint i64 %.sroa.0.7.insert.shift64, %.sroa.0.7.insert.ext
  %.sroa.0.6.insert.insert61 = or disjoint i64 %22, %24
  %.sroa.0.5.insert.insert56 = or disjoint i64 %19, %.sroa.0.6.insert.insert61
  %.sroa.0.3.insert.insert46 = or disjoint i64 %.sroa.0.5.insert.insert56, %.sroa.0.4.insert.shift
  %25 = extractelement <4 x i8> %16, i64 3
  %.sroa.0.4.insert.ext48 = zext i8 %25 to i64
  %.sroa.0.4.insert.shift49 = shl nuw nsw i64 %.sroa.0.4.insert.ext48, 32
  %.sroa.0.4.insert.insert51 = or disjoint i64 %.sroa.0.3.insert.insert46, %.sroa.0.4.insert.shift49
  %i.aq = bitcast i64 %.sroa.0.4.insert.insert51 to double
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.a, i8 0, i64 32, i1 false)
  %i.ar = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.a, i64 noundef 32, ptr noundef nonnull @.str.3, double noundef %i.aq) #19 ; 2 uses
  %i.as = sext i32 %i.ar to i64                   ; 3 uses
  %i.at = icmp eq i32 %i.ar, 0
  br i1 %i.at, label %_ZN12OutputStreampLE10StringView.exit, label %bb.b

bb.b:                                             ; preds = %_ZSt7reverseIPcEvT_S1_.exit
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.av = load i64, ptr %i.au, align 8, !tbaa !53 ; 2 uses
  %i.aw = add i64 %i.av, %i.as                    ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.ay = load i64, ptr %i.ax, align 8, !tbaa !55 ; 2 uses
  %.not.i.i = icmp ult i64 %i.aw, %i.ay
  %.pre.i = load ptr, ptr %1, align 8, !tbaa !54  ; 2 uses
  br i1 %.not.i.i, label %_ZN12OutputStream4growEm.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.az = shl i64 %i.ay, 1
  %spec.store.select.i.i = tail call i64 @llvm.umax.i64(i64 %i.az, i64 %i.aw) ; 2 uses
  store i64 %spec.store.select.i.i, ptr %i.ax, align 8
  %i.ba = tail call ptr @realloc(ptr noundef %.pre.i, i64 noundef %spec.store.select.i.i) #22 ; 3 uses
  store ptr %i.ba, ptr %1, align 8, !tbaa !54
  %i.bb = icmp eq ptr %i.ba, null
  br i1 %i.bb, label %bb.d, label %._ZN12OutputStream4growEm.exit_crit_edge.i

._ZN12OutputStream4growEm.exit_crit_edge.i:       ; preds = %bb.c
  %.pre6.i = load i64, ptr %i.au, align 8, !tbaa !53
  br label %_ZN12OutputStream4growEm.exit.i

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt9terminatev() #23
  unreachable

_ZN12OutputStream4growEm.exit.i:                  ; preds = %._ZN12OutputStream4growEm.exit_crit_edge.i, %bb.b
  %i.bc = phi i64 [ %i.av, %bb.b ], [ %.pre6.i, %._ZN12OutputStream4growEm.exit_crit_edge.i ]
  %i.bd = phi ptr [ %.pre.i, %bb.b ], [ %i.ba, %._ZN12OutputStream4growEm.exit_crit_edge.i ]
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 %i.bc
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.be, ptr nonnull align 16 %i.a, i64 %i.as, i1 false)
  %i.bf = load i64, ptr %i.au, align 8, !tbaa !53
  %i.bg = add i64 %i.bf, %i.as
  store i64 %i.bg, ptr %i.au, align 8, !tbaa !53
  br label %_ZN12OutputStreampLE10StringView.exit

_ZN12OutputStreampLE10StringView.exit:            ; preds = %_ZSt7reverseIPcEvT_S1_.exit, %_ZN12OutputStream4growEm.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  br label %bb.e

bb.e:                                             ; preds = %_ZN12OutputStreampLE10StringView.exit, %bb.a
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvh16itanium_demangle16FloatLiteralImplIdED0Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #14 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 32) #25
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNK4llvh16itanium_demangle16FloatLiteralImplIeE9printLeftER12OutputStream(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = alloca [40 x i8], align 16               ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !197  ; 14 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !196
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 1
  %i.g = ptrtoint ptr %i.f to i64
  %i.h = ptrtoint ptr %i.c to i64
  %i.i = sub i64 %i.g, %i.h
  %i.j = icmp ugt i64 %i.i, 20
  br i1 %i.j, label %_ZSt7reverseIPcEvT_S1_.exit, label %bb.e

_ZSt7reverseIPcEvT_S1_.exit:                      ; preds = %bb.a
  %.ptr.6 = getelementptr inbounds nuw i8, ptr %i.c, i64 13
  %i.k = load i8, ptr %.ptr.6, align 1, !tbaa !18 ; 2 uses
  %i.l = sext i8 %i.k to i32
  %isdigittmp23.6 = add nsw i32 %i.l, -48
  %isdigit24.6 = icmp ult i32 %isdigittmp23.6, 10
  %.v25.6 = select i1 %isdigit24.6, i8 -48, i8 -87
  %i.m = add i8 %.v25.6, %i.k
  %.021.ptr.6 = getelementptr inbounds nuw i8, ptr %i.c, i64 12
  %i.n = load i8, ptr %.021.ptr.6, align 1, !tbaa !18 ; 2 uses
  %i.o = sext i8 %i.n to i32
  %isdigittmp.6 = add nsw i32 %i.o, -48
  %isdigit.6 = icmp ult i32 %isdigittmp.6, 10
  %.v.6 = select i1 %isdigit.6, i8 0, i8 9
  %i.p = add i8 %.v.6, %i.n
  %i.q = shl i8 %i.p, 4
  %i.r = add i8 %i.m, %i.q
  %.sroa.0.6.insert.ext = zext i8 %i.r to i80
  %.sroa.0.6.insert.shift = shl nuw nsw i80 %.sroa.0.6.insert.ext, 48
  %.ptr.7 = getelementptr inbounds nuw i8, ptr %i.c, i64 15
  %i.s = load i8, ptr %.ptr.7, align 1, !tbaa !18 ; 2 uses
  %i.t = sext i8 %i.s to i32
  %isdigittmp23.7 = add nsw i32 %i.t, -48
  %isdigit24.7 = icmp ult i32 %isdigittmp23.7, 10
  %.v25.7 = select i1 %isdigit24.7, i8 -48, i8 -87
  %i.u = add i8 %.v25.7, %i.s
  %.021.ptr.7 = getelementptr inbounds nuw i8, ptr %i.c, i64 14
  %i.v = load i8, ptr %.021.ptr.7, align 1, !tbaa !18 ; 2 uses
  %i.w = sext i8 %i.v to i32
  %isdigittmp.7 = add nsw i32 %i.w, -48
  %isdigit.7 = icmp ult i32 %isdigittmp.7, 10
  %.v.7 = select i1 %isdigit.7, i8 0, i8 9
  %i.x = add i8 %.v.7, %i.v
  %i.y = shl i8 %i.x, 4
  %i.z = add i8 %i.u, %i.y
  %.sroa.0.7.insert.ext = zext i8 %i.z to i80
  %.sroa.0.7.insert.shift = shl nuw nsw i80 %.sroa.0.7.insert.ext, 56
  %i.aa = or disjoint i80 %.sroa.0.6.insert.shift, %.sroa.0.7.insert.shift
  %.ptr.4 = getelementptr inbounds nuw i8, ptr %i.c, i64 9
  %i.ab = load i8, ptr %.ptr.4, align 1, !tbaa !18 ; 2 uses
  %i.ac = sext i8 %i.ab to i32
  %isdigittmp23.4 = add nsw i32 %i.ac, -48
  %isdigit24.4 = icmp ult i32 %isdigittmp23.4, 10
  %.v25.4 = select i1 %isdigit24.4, i8 -48, i8 -87
  %i.ad = add i8 %.v25.4, %i.ab
  %.021.ptr.4 = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.ae = load i8, ptr %.021.ptr.4, align 1, !tbaa !18 ; 2 uses
  %i.af = sext i8 %i.ae to i32
  %isdigittmp.4 = add nsw i32 %i.af, -48
  %isdigit.4 = icmp ult i32 %isdigittmp.4, 10
  %.v.4 = select i1 %isdigit.4, i8 0, i8 9
  %i.ag = add i8 %.v.4, %i.ae
  %i.ah = shl i8 %i.ag, 4
  %i.ai = add i8 %i.ad, %i.ah
  %.sroa.0.4.insert.ext = zext i8 %i.ai to i80    ; 2 uses
  %.sroa.0.4.insert.shift = shl nuw nsw i80 %.sroa.0.4.insert.ext, 32
  %.ptr.5 = getelementptr inbounds nuw i8, ptr %i.c, i64 11
  %i.aj = load i8, ptr %.ptr.5, align 1, !tbaa !18 ; 2 uses
  %i.ak = sext i8 %i.aj to i32
  %isdigittmp23.5 = add nsw i32 %i.ak, -48
  %isdigit24.5 = icmp ult i32 %isdigittmp23.5, 10
  %.v25.5 = select i1 %isdigit24.5, i8 -48, i8 -87
  %i.al = add i8 %.v25.5, %i.aj
  %.021.ptr.5 = getelementptr inbounds nuw i8, ptr %i.c, i64 10
  %i.am = load i8, ptr %.021.ptr.5, align 1, !tbaa !18 ; 2 uses
  %i.an = sext i8 %i.am to i32
  %isdigittmp.5 = add nsw i32 %i.an, -48
  %isdigit.5 = icmp ult i32 %isdigittmp.5, 10
  %.v.5 = select i1 %isdigit.5, i8 0, i8 9
  %i.ao = add i8 %.v.5, %i.am
  %i.ap = shl i8 %i.ao, 4
  %i.aq = add i8 %i.al, %i.ap
  %.sroa.0.5.insert.ext = zext i8 %i.aq to i80    ; 2 uses
  %.sroa.0.5.insert.shift = shl nuw nsw i80 %.sroa.0.5.insert.ext, 40
  %.ptr.8 = getelementptr inbounds nuw i8, ptr %i.c, i64 17
  %i.ar = load i8, ptr %.ptr.8, align 1, !tbaa !18 ; 2 uses
  %i.as = sext i8 %i.ar to i32
  %isdigittmp23.8 = add nsw i32 %i.as, -48
  %isdigit24.8 = icmp ult i32 %isdigittmp23.8, 10
  %.v25.8 = select i1 %isdigit24.8, i8 -48, i8 -87
  %i.at = add i8 %.v25.8, %i.ar
  %.021.ptr.8 = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.au = load i8, ptr %.021.ptr.8, align 1, !tbaa !18 ; 2 uses
  %i.av = sext i8 %i.au to i32
  %isdigittmp.8 = add nsw i32 %i.av, -48
  %isdigit.8 = icmp ult i32 %isdigittmp.8, 10
  %.v.8 = select i1 %isdigit.8, i8 0, i8 9
  %i.aw = add i8 %.v.8, %i.au
  %i.ax = shl i8 %i.aw, 4
  %i.ay = add i8 %i.at, %i.ax
  %.sroa.0.8.insert.ext = zext i8 %i.ay to i80
  %.sroa.0.8.insert.shift = shl nuw nsw i80 %.sroa.0.8.insert.ext, 64
  %.ptr.9 = getelementptr inbounds nuw i8, ptr %i.c, i64 19
  %i.az = load i8, ptr %.ptr.9, align 1, !tbaa !18 ; 2 uses
  %i.ba = sext i8 %i.az to i32
  %isdigittmp23.9 = add nsw i32 %i.ba, -48
  %isdigit24.9 = icmp ult i32 %isdigittmp23.9, 10
  %.v25.9 = select i1 %isdigit24.9, i8 -48, i8 -87
  %i.bb = add i8 %.v25.9, %i.az
  %.021.ptr.9 = getelementptr inbounds nuw i8, ptr %i.c, i64 18
  %i.bc = load i8, ptr %.021.ptr.9, align 1, !tbaa !18 ; 2 uses
  %i.bd = sext i8 %i.bc to i32
  %isdigittmp.9 = add nsw i32 %i.bd, -48
  %isdigit.9 = icmp ult i32 %isdigittmp.9, 10
  %.v.9 = select i1 %isdigit.9, i8 0, i8 9
  %i.be = add i8 %.v.9, %i.bc
  %i.bf = shl i8 %i.be, 4
  %i.bg = add i8 %i.bb, %i.bf
  %.sroa.0.9.insert.ext = zext i8 %i.bg to i80
  %.sroa.0.9.insert.shift = shl nuw i80 %.sroa.0.9.insert.ext, 72
  %i.bh = or disjoint i80 %.sroa.0.8.insert.shift, %.sroa.0.9.insert.shift
  %i.bi = load <8 x i8>, ptr %i.c, align 1, !tbaa !18 ; 2 uses
  %i.bj = shufflevector <8 x i8> %i.bi, <8 x i8> poison, <4 x i32> <i32 7, i32 5, i32 3, i32 1> ; 2 uses
  %i.bk = sext <4 x i8> %i.bj to <4 x i32>
  %i.bl = add nsw <4 x i32> %i.bk, splat (i32 -48)
  %i.bm = icmp ult <4 x i32> %i.bl, splat (i32 10)
  %i.bn = select <4 x i1> %i.bm, <4 x i8> splat (i8 -48), <4 x i8> splat (i8 -87)
  %i.bo = add <4 x i8> %i.bn, %i.bj
  %i.bp = shufflevector <8 x i8> %i.bi, <8 x i8> poison, <4 x i32> <i32 6, i32 4, i32 2, i32 0> ; 2 uses
  %i.bq = sext <4 x i8> %i.bp to <4 x i32>
  %i.br = add nsw <4 x i32> %i.bq, splat (i32 -48)
  %i.bs = icmp ult <4 x i32> %i.br, splat (i32 10)
  %i.bt = select <4 x i1> %i.bs, <4 x i8> zeroinitializer, <4 x i8> splat (i8 9)
  %i.bu = add <4 x i8> %i.bt, %i.bp
  %i.bv = shl <4 x i8> %i.bu, splat (i8 4)
end_hunk_0
