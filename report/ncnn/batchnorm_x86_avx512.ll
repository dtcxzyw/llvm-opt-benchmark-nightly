Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ncnn/original/batchnorm_x86_avx512?download=true
inline.NumInlined: 1
inline.NumDeleted: 1
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN4ncnnL31batchnorm_bf16s_per_element_sseEPtPKfS2_ii.omp_outlined.7:bb.a
  store i32 %i.g, ptr %i.b, align 4, !tbaa !25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #5
  store i32 1, ptr %i.c, align 4, !tbaa !25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #5
  store i32 0, ptr %i.d, align 4, !tbaa !25
  %i.h = load i32, ptr %0, align 4, !tbaa !25     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !25
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 3 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !25
  %i.k = load i32, ptr %i.a, align 4, !tbaa !25   ; 2 uses
  %.not24 = icmp sgt i32 %i.k, %i.j
  br i1 %.not24, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b, %.lr.ph
  %.025 = phi i32 [ %i.ai, %.lr.ph ], [ %i.k, %bb.b ] ; 3 uses
  %i.l = load i32, ptr %3, align 4, !tbaa !25
  %i.m = shl nsw i32 %.025, 3
  %i.n = add nsw i32 %i.l, %i.m
  %i.o = load ptr, ptr %4, align 8, !tbaa !32
  %i.p = sext i32 %i.n to i64                     ; 3 uses
  %i.q = getelementptr inbounds [2 x i8], ptr %i.o, i64 %i.p ; 2 uses
  %i.r = load <8 x i16>, ptr %i.q, align 1, !tbaa !33 ; 2 uses
  %i.s = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.r, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.t = shufflevector <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <8 x i16> %i.r, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.u = shufflevector <8 x i16> %i.s, <8 x i16> %i.t, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.v = bitcast <16 x i16> %i.u to <8 x float>
  %i.w = load ptr, ptr %5, align 8, !tbaa !29
  %i.x = getelementptr inbounds [4 x i8], ptr %i.w, i64 %i.p
  %i.y = load <8 x float>, ptr %i.x, align 1, !tbaa !33
  %i.z = load ptr, ptr %6, align 8, !tbaa !29
  %i.aa = getelementptr inbounds [4 x i8], ptr %i.z, i64 %i.p
  %i.ab = load <8 x float>, ptr %i.aa, align 1, !tbaa !33
  %i.ac = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.v, <8 x float> nofpclass(nan inf) %i.ab, <8 x float> nofpclass(nan inf) %i.y)
  %i.ad = bitcast <8 x float> %i.ac to <8 x i32>
  %i.ae = lshr <8 x i32> %i.ad, splat (i32 16)    ; 2 uses
  %i.af = shufflevector <8 x i32> %i.ae, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.ag = shufflevector <8 x i32> %i.ae, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.ah = call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.af, <4 x i32> %i.ag)
  store <8 x i16> %i.ah, ptr %i.q, align 1, !tbaa !33
  %i.ai = add i32 %.025, 1
  %exitcond.not = icmp eq i32 %.025, %i.j
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge, %bb.a
  ret void
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZN4ncnnL31batchnorm_bf16s_per_element_sseEPtPKfS2_ii.omp_outlined.8(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %4, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %5, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %6) #9 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !25     ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #5
  store i32 0, ptr %i.a, align 4, !tbaa !25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #5
  store i32 %i.g, ptr %i.b, align 4, !tbaa !25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #5
  store i32 1, ptr %i.c, align 4, !tbaa !25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #5
  store i32 0, ptr %i.d, align 4, !tbaa !25
  %i.h = load i32, ptr %0, align 4, !tbaa !25     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !25
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 3 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !25
  %i.k = load i32, ptr %i.a, align 4, !tbaa !25   ; 2 uses
  %.not24 = icmp sgt i32 %i.k, %i.j
  br i1 %.not24, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b, %.lr.ph
  %.025 = phi i32 [ %i.ai, %.lr.ph ], [ %i.k, %bb.b ] ; 3 uses
  %i.l = load i32, ptr %3, align 4, !tbaa !25
  %i.m = shl nsw i32 %.025, 2
  %i.n = add nsw i32 %i.l, %i.m
  %i.o = load ptr, ptr %4, align 8, !tbaa !32
  %i.p = sext i32 %i.n to i64                     ; 3 uses
  %i.q = getelementptr inbounds [2 x i8], ptr %i.o, i64 %i.p ; 2 uses
  %i.r = load i64, ptr %i.q, align 1, !tbaa !33
  %i.s = insertelement <2 x i64> poison, i64 %i.r, i64 0
  %i.t = bitcast <2 x i64> %i.s to <8 x i16>
  %i.u = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.t, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.v = bitcast <8 x i16> %i.u to <4 x float>
  %i.w = load ptr, ptr %5, align 8, !tbaa !29
  %i.x = getelementptr inbounds [4 x i8], ptr %i.w, i64 %i.p
  %i.y = load <4 x float>, ptr %i.x, align 1, !tbaa !33
  %i.z = load ptr, ptr %6, align 8, !tbaa !29
  %i.aa = getelementptr inbounds [4 x i8], ptr %i.z, i64 %i.p
  %i.ab = load <4 x float>, ptr %i.aa, align 1, !tbaa !33
  %i.ac = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.v, <4 x float> nofpclass(nan inf) %i.ab, <4 x float> nofpclass(nan inf) %i.y)
  %i.ad = bitcast <4 x float> %i.ac to <4 x i32>
  %i.ae = lshr <4 x i32> %i.ad, splat (i32 16)
  %i.af = call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.ae, <4 x i32> poison)
  %i.ag = bitcast <8 x i16> %i.af to <2 x i64>
  %i.ah = extractelement <2 x i64> %i.ag, i64 0
  store i64 %i.ah, ptr %i.q, align 1, !tbaa !33
  %i.ai = add i32 %.025, 1
  %exitcond.not = icmp eq i32 %.025, %i.j
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge, %bb.a
  ret void
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZN4ncnnL31batchnorm_bf16s_per_element_sseEPtPKfS2_ii.omp_outlined.9(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %4, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %5, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %6) #10 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i32, ptr %3, align 4, !tbaa !25     ; 7 uses
  %i.f = load i32, ptr %2, align 4, !tbaa !25     ; 2 uses
  %i.g = icmp slt i32 %i.e, %i.f
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.h = xor i32 %i.e, -1
  %i.i = add i32 %i.f, %i.h                       ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #5
  store i32 0, ptr %i.a, align 4, !tbaa !25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #5
  store i32 %i.i, ptr %i.b, align 4, !tbaa !25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #5
  store i32 1, ptr %i.c, align 4, !tbaa !25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #5
  store i32 0, ptr %i.d, align 4, !tbaa !25
  %i.j = load i32, ptr %0, align 4, !tbaa !25     ; 2 uses
  call void @__kmpc_for_static_init_4u(ptr nonnull @1, i32 %i.j, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.k = load i32, ptr %i.b, align 4, !tbaa !25
  %i.l = call i32 @llvm.umin.i32(i32 %i.k, i32 %i.i) ; 5 uses
  store i32 %i.l, ptr %i.b, align 4, !tbaa !25
  %i.m = load i32, ptr %i.a, align 4, !tbaa !25   ; 9 uses
  %i.n = add i32 %i.l, 1
  %i.o = icmp ult i32 %i.m, %i.n
  br i1 %i.o, label %iter.check, label %._crit_edge

iter.check:                                       ; preds = %bb.b
  %i.p = load ptr, ptr %5, align 8, !tbaa !29     ; 3 uses
  %i.q = load ptr, ptr %4, align 8, !tbaa !32     ; 3 uses
  %i.r = load ptr, ptr %6, align 8, !tbaa !29     ; 3 uses
  %i.s = add i32 %i.l, 1
  %i.t = sub i32 %i.s, %i.m                       ; 7 uses
  %min.iters.check = icmp ult i32 %i.t, 8
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %iter.check
  %i.u = add i32 %i.m, %i.e
  %i.v = add i32 %i.l, %i.e
  %i.w = icmp slt i32 %i.v, %i.u
  br i1 %i.w, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.scevcheck
  %min.iters.check27 = icmp ult i32 %i.t, 64
  br i1 %min.iters.check27, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.x = and i32 %i.t, 56
  %n.vec = and i32 %i.t, -64                      ; 4 uses
  %i.y = add i32 %i.m, %n.vec
  %invariant.op = add i32 %i.m, %i.e
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i32 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %.reass = add i32 %index, %invariant.op
  %i.z = sext i32 %.reass to i64                  ; 3 uses
  %i.aa = getelementptr inbounds [4 x i8], ptr %i.p, i64 %i.z ; 4 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 64
  %i.ac = getelementptr inbounds nuw i8, ptr %i.aa, i64 128
  %i.ad = getelementptr inbounds nuw i8, ptr %i.aa, i64 192
  %wide.load = load <16 x float>, ptr %i.aa, align 4, !tbaa !37
  %wide.load28 = load <16 x float>, ptr %i.ab, align 4, !tbaa !37
  %wide.load29 = load <16 x float>, ptr %i.ac, align 4, !tbaa !37
  %wide.load30 = load <16 x float>, ptr %i.ad, align 4, !tbaa !37
  %i.ae = getelementptr inbounds [2 x i8], ptr %i.q, i64 %i.z ; 5 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 32 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ae, i64 64 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ae, i64 96 ; 2 uses
  %wide.load31 = load <16 x i16>, ptr %i.ae, align 2, !tbaa !43
  %wide.load32 = load <16 x i16>, ptr %i.af, align 2, !tbaa !43
  %wide.load33 = load <16 x i16>, ptr %i.ag, align 2, !tbaa !43
  %wide.load34 = load <16 x i16>, ptr %i.ah, align 2, !tbaa !43
  %i.ai = zext <16 x i16> %wide.load31 to <16 x i32>
  %i.aj = zext <16 x i16> %wide.load32 to <16 x i32>
  %i.ak = zext <16 x i16> %wide.load33 to <16 x i32>
  %i.al = zext <16 x i16> %wide.load34 to <16 x i32>
  %i.am = shl nuw <16 x i32> %i.ai, splat (i32 16)
  %i.an = shl nuw <16 x i32> %i.aj, splat (i32 16)
  %i.ao = shl nuw <16 x i32> %i.ak, splat (i32 16)
  %i.ap = shl nuw <16 x i32> %i.al, splat (i32 16)
  %i.aq = bitcast <16 x i32> %i.am to <16 x float>
  %i.ar = bitcast <16 x i32> %i.an to <16 x float>
  %i.as = bitcast <16 x i32> %i.ao to <16 x float>
  %i.at = bitcast <16 x i32> %i.ap to <16 x float>
  %i.au = fmul fast <16 x float> %wide.load, %i.aq
  %i.av = fmul fast <16 x float> %wide.load28, %i.ar
  %i.aw = fmul fast <16 x float> %wide.load29, %i.as
  %i.ax = fmul fast <16 x float> %wide.load30, %i.at
  %i.ay = getelementptr inbounds [4 x i8], ptr %i.r, i64 %i.z ; 4 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 64
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ay, i64 128
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ay, i64 192
  %wide.load35 = load <16 x float>, ptr %i.ay, align 4, !tbaa !37
  %wide.load36 = load <16 x float>, ptr %i.az, align 4, !tbaa !37
  %wide.load37 = load <16 x float>, ptr %i.ba, align 4, !tbaa !37
  %wide.load38 = load <16 x float>, ptr %i.bb, align 4, !tbaa !37
  %i.bc = fadd fast <16 x float> %i.au, %wide.load35
  %i.bd = fadd fast <16 x float> %i.av, %wide.load36
  %i.be = fadd fast <16 x float> %i.aw, %wide.load37
  %i.bf = fadd fast <16 x float> %i.ax, %wide.load38
  %7 = bitcast <16 x float> %i.bc to <16 x i32>
  %8 = bitcast <16 x float> %i.bd to <16 x i32>
  %9 = bitcast <16 x float> %i.be to <16 x i32>
  %10 = bitcast <16 x float> %i.bf to <16 x i32>
  %11 = lshr <16 x i32> %7, splat (i32 16)
  %12 = lshr <16 x i32> %8, splat (i32 16)
  %13 = lshr <16 x i32> %9, splat (i32 16)
  %14 = lshr <16 x i32> %10, splat (i32 16)
  %15 = trunc nuw <16 x i32> %11 to <16 x i16>
  %16 = trunc nuw <16 x i32> %12 to <16 x i16>
  %17 = trunc nuw <16 x i32> %13 to <16 x i16>
  %18 = trunc nuw <16 x i32> %14 to <16 x i16>
  store <16 x i16> %15, ptr %i.ae, align 2, !tbaa !43
  store <16 x i16> %16, ptr %i.af, align 2, !tbaa !43
  store <16 x i16> %17, ptr %i.ag, align 2, !tbaa !43
  store <16 x i16> %18, ptr %i.ah, align 2, !tbaa !43
  %index.next = add nuw i32 %index, 64            ; 2 uses
  %i.bg = icmp eq i32 %index.next, %n.vec
  br i1 %i.bg, label %middle.block, label %vector.body, !llvm.loop !101

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i32 %i.t, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i32 %i.x, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !40

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i32 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec39 = and i32 %i.t, -8                     ; 3 uses
  %i.bh = add i32 %i.m, %n.vec39
  %invariant.op47 = add i32 %i.m, %i.e
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index40 = phi i32 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next44, %vec.epilog.vector.body ] ; 2 uses
  %.reass48 = add i32 %index40, %invariant.op47
  %i.bi = sext i32 %.reass48 to i64               ; 3 uses
  %i.bj = getelementptr inbounds [4 x i8], ptr %i.p, i64 %i.bi
  %wide.load41 = load <8 x float>, ptr %i.bj, align 4, !tbaa !37
  %i.bk = getelementptr inbounds [2 x i8], ptr %i.q, i64 %i.bi ; 2 uses
  %wide.load42 = load <8 x i16>, ptr %i.bk, align 2, !tbaa !43
  %i.bl = zext <8 x i16> %wide.load42 to <8 x i32>
  %i.bm = shl nuw <8 x i32> %i.bl, splat (i32 16)
  %i.bn = bitcast <8 x i32> %i.bm to <8 x float>
  %i.bo = fmul fast <8 x float> %wide.load41, %i.bn
  %i.bp = getelementptr inbounds [4 x i8], ptr %i.r, i64 %i.bi
  %wide.load43 = load <8 x float>, ptr %i.bp, align 4, !tbaa !37
  %i.bq = fadd fast <8 x float> %i.bo, %wide.load43
  %i.br = bitcast <8 x float> %i.bq to <8 x i32>
  %i.bs = lshr <8 x i32> %i.br, splat (i32 16)
  %i.bt = trunc nuw <8 x i32> %i.bs to <8 x i16>
  store <8 x i16> %i.bt, ptr %i.bk, align 2, !tbaa !43
  %index.next44 = add nuw i32 %index40, 8         ; 2 uses
  %i.bu = icmp eq i32 %index.next44, %n.vec39
  br i1 %i.bu, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !102

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n45 = icmp eq i32 %i.t, %n.vec39
  br i1 %cmp.n45, label %._crit_edge, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vector.scevcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.023.ph = phi i32 [ %i.m, %iter.check ], [ %i.m, %vector.scevcheck ], [ %i.y, %vec.epilog.iter.check ], [ %i.bh, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %.023 = phi i32 [ %i.cl, %vec.epilog.scalar.ph ], [ %.023.ph, %vec.epilog.scalar.ph.preheader ] ; 3 uses
  %i.bv = add i32 %.023, %i.e
  %i.bw = sext i32 %i.bv to i64                   ; 3 uses
  %i.bx = getelementptr inbounds [4 x i8], ptr %i.p, i64 %i.bw
  %i.by = load float, ptr %i.bx, align 4, !tbaa !37
  %i.bz = getelementptr inbounds [2 x i8], ptr %i.q, i64 %i.bw ; 2 uses
  %i.ca = load i16, ptr %i.bz, align 2, !tbaa !43
  %i.cb = zext i16 %i.ca to i32
  %i.cc = shl nuw i32 %i.cb, 16
  %i.cd = bitcast i32 %i.cc to float
  %i.ce = fmul fast float %i.by, %i.cd
  %i.cf = getelementptr inbounds [4 x i8], ptr %i.r, i64 %i.bw
  %i.cg = load float, ptr %i.cf, align 4, !tbaa !37
  %i.ch = fadd fast float %i.ce, %i.cg
  %i.ci = bitcast float %i.ch to i32
  %i.cj = lshr i32 %i.ci, 16
  %i.ck = trunc nuw i32 %i.cj to i16
  store i16 %i.ck, ptr %i.bz, align 2, !tbaa !43
  %i.cl = add nuw i32 %.023, 1
  %exitcond.not = icmp eq i32 %.023, %i.l
  br i1 %exitcond.not, label %._crit_edge, label %vec.epilog.scalar.ph, !llvm.loop !103

._crit_edge:                                      ; preds = %vec.epilog.scalar.ph, %middle.block, %vec.epilog.middle.block, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <16 x i16> @llvm.x86.avx2.packusdw(<8 x i32>, <8 x i32>) #14

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32>, <4 x i32>) #14

declare void @_ZN4ncnn30batchnorm_bf16s_sse_avx512bf16EPtPKfS2_ii(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @_ZN4ncnn5LayerD2Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208)) unnamed_addr #15

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #11

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #17

attributes #0 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #1 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #2 = { mustprogress uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { alwaysinline norecurse nounwind uwtable "min-legal-vector-width"="512" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #5 = { nounwind }
attributes #6 = { noinline noreturn nounwind uwtable "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #7 = { cold nofree noreturn }
attributes #8 = { alwaysinline norecurse nounwind uwtable "min-legal-vector-width"="256" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #9 = { alwaysinline norecurse nounwind uwtable "min-legal-vector-width"="128" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #10 = { alwaysinline norecurse nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #11 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #12 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #13 = { mustprogress norecurse uwtable "min-legal-vector-width"="512" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #14 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #15 = { nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #16 = { nobuiltin nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #17 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #18 = { noreturn nounwind }
attributes #19 = { builtin nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = !{i32 7, !"openmp", i32 51}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!4 = !{!"Simple C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = !{!"vtable pointer", !4, i64 0}
!10 = !{!9, !9, i64 0}
!11 = !{!"any pointer", !5, i64 0}
!12 = !{!"p1 int", !11, i64 0}
!13 = !{!"long", !5, i64 0}
!14 = !{!"p1 _ZTSN4ncnn9AllocatorE", !11, i64 0}
!15 = !{!"_ZTSN4ncnn3MatE", !11, i64 0, !12, i64 8, !13, i64 16, !6, i64 24, !14, i64 32, !6, i64 40, !6, i64 44, !6, i64 48, !6, i64 52, !6, i64 56, !13, i64 64}
!16 = !{!15, !11, i64 0}
!17 = !{!15, !13, i64 64}
!18 = !{!"bool", !5, i64 0}
!19 = !{!"_ZTSN4ncnn6OptionE", !18, i64 0, !18, i64 1, !18, i64 2, !18, i64 3, !6, i64 4, !14, i64 8, !14, i64 16, !6, i64 24, !18, i64 28, !18, i64 29, !18, i64 30, !18, i64 31, !18, i64 32, !18, i64 33, !18, i64 34, !18, i64 35, !18, i64 36, !18, i64 37, !18, i64 38, !18, i64 39, !6, i64 40, !18, i64 44, !18, i64 45, !18, i64 46, !18, i64 47, !5, i64 48, !18, i64 49, !18, i64 50, !18, i64 51, !18, i64 52, !18, i64 53, !18, i64 54, !18, i64 55, !18, i64 56, !18, i64 57, !18, i64 58, !18, i64 59, !18, i64 60, !18, i64 61, !18, i64 62, !18, i64 63}
!20 = !{!15, !6, i64 24}
!21 = !{!15, !13, i64 16}
!22 = !{!15, !6, i64 40}
!23 = !{!15, !6, i64 44}
!24 = !{!15, !6, i64 48}
!25 = !{!6, !6, i64 0}
!26 = !{!15, !6, i64 52}
!27 = !{!15, !6, i64 56}
!28 = !{!"p1 float", !11, i64 0}
!29 = !{!28, !28, i64 0}
!30 = !{!19, !6, i64 4}
!31 = !{!"p1 short", !11, i64 0}
!32 = !{!31, !31, i64 0}
!33 = !{!5, !5, i64 0}
!34 = !{i64 2, i64 -1, i64 -1, i1 true}
!35 = !{!34}
!36 = !{!"float", !5, i64 0}
!37 = !{!36, !36, i64 0}
!38 = !{!"llvm.loop.isvectorized", i32 1}
!39 = !{!"llvm.loop.unroll.runtime.disable"}
!40 = !{!"branch_weights", i32 8, i32 56}
!41 = !{!"llvm.loop.mustprogress"}
!42 = !{!"short", !5, i64 0}
!43 = !{!42, !42, i64 0}
!44 = distinct !{null}
!45 = !{!15, !12, i64 8}
!46 = !{!15, !14, i64 32}
!47 = !{!19, !18, i64 32}
!48 = !{i8 0, i8 2}
!49 = !{}
!50 = !{!"p1 omnipotent char", !11, i64 0}
!51 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !50, i64 0}
!52 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !51, i64 0, !13, i64 8, !5, i64 16}
!53 = !{!"_ZTSNSt12_Vector_baseIiSaIiEE17_Vector_impl_dataE", !12, i64 0, !12, i64 8, !12, i64 16}
!54 = !{!"_ZTSNSt12_Vector_baseIiSaIiEE12_Vector_implE", !53, i64 0}
!55 = !{!"_ZTSSt12_Vector_baseIiSaIiEE", !54, i64 0}
!56 = !{!"_ZTSSt6vectorIiSaIiEE", !55, i64 0}
!57 = !{!"p1 _ZTSN4ncnn3MatE", !11, i64 0}
!58 = !{!"_ZTSNSt12_Vector_baseIN4ncnn3MatESaIS1_EE17_Vector_impl_dataE", !57, i64 0, !57, i64 8, !57, i64 16}
!59 = !{!"_ZTSNSt12_Vector_baseIN4ncnn3MatESaIS1_EE12_Vector_implE", !58, i64 0}
!60 = !{!"_ZTSSt12_Vector_baseIN4ncnn3MatESaIS1_EE", !59, i64 0}
!61 = !{!"_ZTSSt6vectorIN4ncnn3MatESaIS1_EE", !60, i64 0}
!62 = !{!"_ZTSN4ncnn5LayerE", !18, i64 8, !18, i64 9, !18, i64 10, !18, i64 11, !18, i64 12, !18, i64 13, !18, i64 14, !18, i64 15, !18, i64 16, !18, i64 17, !18, i64 18, !18, i64 19, !18, i64 20, !18, i64 21, !18, i64 22, !18, i64 23, !18, i64 24, !18, i64 25, !18, i64 26, !18, i64 27, !6, i64 28, !11, i64 32, !6, i64 40, !52, i64 48, !52, i64 80, !56, i64 112, !56, i64 136, !61, i64 160, !61, i64 184}
!63 = !{!62, !18, i64 11}
!64 = !{!62, !18, i64 12}
!65 = distinct !{!65, i1 false, !"LVerDomain"}
!66 = distinct !{!66, !65}
end_hunk_0
