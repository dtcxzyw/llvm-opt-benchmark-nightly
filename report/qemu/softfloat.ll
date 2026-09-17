Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qemu/original/softfloat?download=true
inline.NumInlined: 1649
inline.NumDeleted: 185
begin_hunk_0_@soft_f32_sqrt:bb.a
  br label %parts64_sqrt.exit

bb.i:                                             ; preds = %bb.g
  %i.bn = add nsw i32 %i.bl, 1
  store i32 %i.bn, ptr %i.q, align 4
  br label %parts64_sqrt.exit

.thread:                                          ; preds = %bb.b, %bb.f, %bb.d
  %i.bo = load i64, ptr %1, align 4
  %i.bp = or i64 %i.bo, 2049
  store i64 %i.bp, ptr %1, align 4
  %i.bq = tail call { i64, i64 } @parts64_default_nan(ptr noundef nonnull %1) ; 2 uses
  %i.br = extractvalue { i64, i64 } %i.bq, 0
  %i.bs = extractvalue { i64, i64 } %i.bq, 1
  store i64 %i.br, ptr %3, align 8
  store i64 %i.bs, ptr %i.e, align 8
  br label %parts64_sqrt.exit

parts64_sqrt.exit:                                ; preds = %bb.a, %bb.c, %bb.d, %bb.h, %bb.i, %.thread
  call fastcc void @parts64_uncanon(ptr noundef nonnull %3, ptr noundef %1, ptr noundef nonnull @float32_params, i1 noundef zeroext false)
  %i.bt = getelementptr inbounds nuw i8, ptr %3, i64 1
  %i.bu = load i8, ptr %i.bt, align 1, !range !12, !noundef !13
  %i.bv = zext nneg i8 %i.bu to i64
  %i.bw = shl nuw nsw i64 %i.bv, 31
  %i.bx = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.by = load i32, ptr %i.bx, align 4
  %i.bz = shl i32 %i.by, 23
  %i.ca = and i32 %i.bz, 2139095040
  %i.cb = zext nneg i32 %i.ca to i64
  %i.cc = or disjoint i64 %i.bw, %i.cb
  %i.cd = load i64, ptr %i.e, align 8
  %i.ce = and i64 %i.cd, 8388607
  %i.cf = or disjoint i64 %i.cc, %i.ce
  %i.cg = trunc nuw i64 %i.cf to i32
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #16
  ret i32 %i.cg
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @float64_sqrt(i64 noundef %0, ptr nofree noundef captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = load i64, ptr %1, align 4                ; 3 uses
  %i.b = and i64 %i.a, 458768
  %or.cond23 = icmp eq i64 %i.b, 16
  br i1 %or.cond23, label %bb.b, label %.critedge11, !prof !30

bb.b:                                             ; preds = %bb.a
  %i.c = and i64 %i.a, 4194304
  %.not = icmp eq i64 %i.c, 0
  br i1 %.not, label %float64_input_flush1.exit, label %bb.c, !prof !14

bb.c:                                             ; preds = %bb.b
  %i.d = and i64 %0, 9218868437227405312
  %i.e = icmp eq i64 %i.d, 0
  %i.f = and i64 %0, 4503599627370495
  %i.g = icmp ne i64 %i.f, 0
  %i.h = and i1 %i.e, %i.g
  br i1 %i.h, label %bb.d, label %float64_input_flush1.exit, !prof !17

bb.d:                                             ; preds = %bb.c
  %.lobit.i = and i64 %0, -9223372036854775808
  %i.i = or i64 %i.a, 32
  store i64 %i.i, ptr %1, align 4
  br label %float64_input_flush1.exit

float64_input_flush1.exit:                        ; preds = %bb.d, %bb.c, %bb.b
  %.sroa.0.1 = phi i64 [ %0, %bb.b ], [ %.lobit.i, %bb.d ], [ %0, %bb.c ] ; 5 uses
  %i.j = bitcast i64 %.sroa.0.1 to double         ; 4 uses
  %i.k = fcmp oeq double %i.j, 0.000000e+00       ; 2 uses
  %or.cond = fcmp ueq double %i.j, 0.000000e+00
  br i1 %or.cond, label %.critedge, label %bb.e

.critedge:                                        ; preds = %float64_input_flush1.exit
  %.old15.old = icmp sgt i64 %.sroa.0.1, -1
  %or.cond26.not = and i1 %.old15.old, %i.k
  br i1 %or.cond26.not, label %bb.f, label %.critedge11, !prof !227

bb.e:                                             ; preds = %float64_input_flush1.exit
  %or.cond14 = tail call i1 @llvm.is.fpclass.f64(double %i.j, /* (norm) */ i32 264)
  %brmerge = or i1 %or.cond14, %i.k
  %.old15 = icmp sgt i64 %.sroa.0.1, -1
  %or.cond24.not = and i1 %.old15, %brmerge
  br i1 %or.cond24.not, label %bb.f, label %.critedge11, !prof !227

bb.f:                                             ; preds = %.critedge, %bb.e
  %i.l = tail call double @sqrt(double noundef %i.j) #19
  %i.m = bitcast double %i.l to i64
  br label %bb.g

.critedge11:                                      ; preds = %.critedge, %bb.e, %bb.a
  %.sroa.0.0 = phi i64 [ %.sroa.0.1, %.critedge ], [ %0, %bb.a ], [ %.sroa.0.1, %bb.e ]
  %i.n = tail call fastcc i64 @soft_f64_sqrt(i64 noundef %.sroa.0.0, ptr noundef nonnull %1)
  br label %bb.g

bb.g:                                             ; preds = %.critedge11, %bb.f
  %.0 = phi i64 [ %i.n, %.critedge11 ], [ %i.m, %bb.f ]
  ret i64 %.0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @sqrt(double noundef) local_unnamed_addr #9

; Function Attrs: noinline nounwind sspstrong uwtable
define internal fastcc i64 @soft_f64_sqrt(i64 noundef %0, ptr nofree noundef captures(none) %1) unnamed_addr #7 {
bb.a:
  %2 = alloca %struct.FloatParts64, align 8       ; 6 uses
  %3 = alloca %struct.FloatParts64, align 8       ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  %i.a = and i64 %0, 4503599627370495
  %i.b = lshr i64 %0, 20
  %.sroa.4.0.insert.ext.i.i = and i64 %i.b, 8791798054912
  %i.c = lshr i64 %0, 55
  %.sroa.2.0.insert.shift.i.i = and i64 %i.c, 256
  %.sroa.2.0.insert.insert.i.i = or disjoint i64 %.sroa.4.0.insert.ext.i.i, %.sroa.2.0.insert.shift.i.i
  store i64 %.sroa.2.0.insert.insert.i.i, ptr %2, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  store i64 %i.a, ptr %i.d, align 8
  call fastcc void @parts64_canonicalize(ptr noundef %2, ptr noundef %1, ptr noundef nonnull @float64_params)
  %.fca.0.load.i = load i64, ptr %2, align 8      ; 4 uses
  %.fca.1.load.i = load i64, ptr %i.d, align 8    ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  store i64 %.fca.0.load.i, ptr %3, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 6 uses
  store i64 %.fca.1.load.i, ptr %i.e, align 8
  %i.f = trunc i64 %.fca.0.load.i to i8
  %i.g = lshr i64 %.fca.0.load.i, 8               ; 3 uses
  %i.h = lshr i64 %.fca.0.load.i, 32              ; 3 uses
  %i.i = trunc nuw i64 %i.h to i32
  switch i8 %i.f, label %bb.e [
    i8 2, label %bb.f
    i8 3, label %bb.b
    i8 6, label %bb.c
    i8 5, label %bb.c
    i8 1, label %parts64_sqrt.exit
    i8 4, label %bb.d
  ], !prof !32

bb.b:                                             ; preds = %bb.a
  %i.j = trunc i64 %i.g to i1
  br i1 %i.j, label %.thread, label %.thread8, !prof !33

.thread8:                                         ; preds = %bb.b
  %i.k = load i64, ptr %1, align 4
  %i.l = or i64 %i.k, 16384
  store i64 %i.l, ptr %1, align 4
  br label %bb.g

bb.c:                                             ; preds = %bb.a, %bb.a
  %i.m = call { i64, i64 } @parts64_return_nan(ptr noundef nonnull %3, ptr noundef %1) ; 2 uses
  %i.n = extractvalue { i64, i64 } %i.m, 0
  %i.o = extractvalue { i64, i64 } %i.m, 1
  store i64 %i.n, ptr %3, align 8
  store i64 %i.o, ptr %i.e, align 8
  br label %parts64_sqrt.exit

bb.d:                                             ; preds = %bb.a
  %i.p = trunc i64 %i.g to i1
  br i1 %i.p, label %.thread, label %parts64_sqrt.exit, !prof !17

bb.e:                                             ; preds = %bb.a
  tail call void @g_assertion_message_expr(ptr noundef null, ptr noundef nonnull @.str.3, i32 noundef 936, ptr noundef nonnull @__func__.parts64_sqrt, ptr noundef null) #15
  unreachable

bb.f:                                             ; preds = %bb.a
  %.pre = trunc i64 %i.g to i1
  br i1 %.pre, label %.thread, label %bb.g, !prof !34

bb.g:                                             ; preds = %.thread8, %bb.f
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 2 uses
  %i.r = lshr i64 %.fca.1.load.i, 57
  %i.s = and i64 %i.r, 63
  %i.t = shl nuw nsw i64 %i.h, 6
  %i.u = and i64 %i.t, 64
  %i.v = xor i64 %i.u, 64
  %i.w = and i64 %i.h, 1
  %i.x = xor i64 %i.w, 1
  %spec.select = lshr i64 %.fca.1.load.i, %i.x    ; 3 uses
  %i.y = lshr i64 %spec.select, 32                ; 2 uses
  %i.z = getelementptr inbounds nuw [2 x i8], ptr @rsqrt_tab, i64 %i.s
  %i.aa = getelementptr inbounds nuw [2 x i8], ptr %i.z, i64 %i.v
  %i.ab = load i16, ptr %i.aa, align 2
  %i.ac = zext i16 %i.ab to i64
  %i.ad = shl nuw nsw i64 %i.ac, 16               ; 3 uses
  %i.ae = mul nuw i64 %i.ad, %i.y
  %i.af = lshr i64 %i.ae, 32
  %i.ag = mul nuw i64 %i.af, %i.ad
  %i.ah = lshr i64 %i.ag, 32
  %i.ai = sub nsw i64 3221225472, %i.ah
  %i.aj = and i64 %i.ai, 4294967295
  %i.ak = mul nuw i64 %i.aj, %i.ad
  %i.al = lshr i64 %i.ak, 31
  %i.am = and i64 %i.al, 4294967295               ; 3 uses
  %i.an = mul nuw i64 %i.am, %i.y
  %i.ao = lshr i64 %i.an, 32
  %i.ap = mul nuw i64 %i.ao, %i.am
  %i.aq = lshr i64 %i.ap, 32
  %i.ar = sub nsw i64 3221225472, %i.aq
  %i.as = and i64 %i.ar, 4294967295
  %i.at = shl nuw nsw i64 %i.am, 1
  %i.au = mul i64 %i.at, %i.as
  %4 = zext i64 %spec.select to i128
  %5 = zext i64 %i.au to i128                     ; 2 uses
  %6 = mul nuw i128 %5, %4
  %7 = lshr i128 %6, 64                           ; 2 uses
  %8 = mul nuw i128 %7, %5
  %9 = lshr i128 %8, 64
  %10 = trunc nuw i128 %9 to i64
  %i.av = sub i64 -4611686018427387904, %10
  %11 = zext i64 %i.av to i128
  %12 = mul nuw i128 %7, %11
  %13 = lshr i128 %12, 64
  %14 = trunc nuw i128 %13 to i64
  %i.aw = add i64 %14, -2
  %i.ax = lshr i64 %i.aw, 9                       ; 5 uses
  %i.ay = shl i64 %spec.select, 42
  %i.az = mul i64 %i.ax, %i.ax
  %.neg.i = sub i64 %i.az, %i.ay
  %i.ba = add i64 %.neg.i, %i.ax                  ; 3 uses
  %i.bb = add nuw nsw i64 %i.ax, 1
  %i.bc = add i64 %i.bb, %i.ba                    ; 2 uses
  %i.bd = lshr i64 %i.ba, 63
  %i.be = add nuw nsw i64 %i.bd, %i.ax
  %i.bf = shl i64 %i.be, 10
  %.not79.i = icmp eq i64 %i.bc, 0
  %i.bg = xor i64 %i.bc, %i.ba
  %.inv.i = icmp sgt i64 %i.bg, -1
  %i.bh = select i1 %.inv.i, i64 1, i64 -1
  %i.bi = select i1 %.not79.i, i64 0, i64 %i.bh
  %storemerge.i = add i64 %i.bi, %i.bf            ; 3 uses
  store i64 %storemerge.i, ptr %i.e, align 8
  %i.bj = ashr i32 %i.i, 1                        ; 2 uses
  store i32 %i.bj, ptr %i.q, align 4
  %.not85.i = icmp sgt i64 %storemerge.i, -1
  br i1 %.not85.i, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.bk = shl nuw i64 %storemerge.i, 1
  store i64 %i.bk, ptr %i.e, align 8
  br label %parts64_sqrt.exit

bb.i:                                             ; preds = %bb.g
  %i.bl = add nsw i32 %i.bj, 1
  store i32 %i.bl, ptr %i.q, align 4
  br label %parts64_sqrt.exit

.thread:                                          ; preds = %bb.b, %bb.f, %bb.d
  %i.bm = load i64, ptr %1, align 4
  %i.bn = or i64 %i.bm, 2049
  store i64 %i.bn, ptr %1, align 4
  %i.bo = tail call { i64, i64 } @parts64_default_nan(ptr noundef nonnull %1) ; 2 uses
  %i.bp = extractvalue { i64, i64 } %i.bo, 0
  %i.bq = extractvalue { i64, i64 } %i.bo, 1
  store i64 %i.bp, ptr %3, align 8
  store i64 %i.bq, ptr %i.e, align 8
  br label %parts64_sqrt.exit

parts64_sqrt.exit:                                ; preds = %bb.a, %bb.c, %bb.d, %bb.h, %bb.i, %.thread
  call fastcc void @parts64_uncanon(ptr noundef nonnull %3, ptr noundef %1, ptr noundef nonnull @float64_params, i1 noundef zeroext false)
  %i.br = getelementptr inbounds nuw i8, ptr %3, i64 1
  %i.bs = load i8, ptr %i.br, align 1, !range !12, !noundef !13
  %i.bt = zext nneg i8 %i.bs to i64
  %i.bu = shl nuw i64 %i.bt, 63
  %i.bv = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.bw = load i32, ptr %i.bv, align 4
  %i.bx = and i32 %i.bw, 2047
  %i.by = zext nneg i32 %i.bx to i64
  %i.bz = shl nuw nsw i64 %i.by, 52
  %i.ca = or disjoint i64 %i.bz, %i.bu
  %i.cb = load i64, ptr %i.e, align 8
  %i.cc = and i64 %i.cb, 4503599627370495
  %i.cd = or disjoint i64 %i.ca, %i.cc
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #16
  ret i64 %i.cd
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @float64r32_sqrt(i64 noundef %0, ptr nofree noundef captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %2 = alloca %struct.FloatParts64, align 8       ; 6 uses
  %3 = alloca %struct.FloatParts64, align 8       ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  %i.a = and i64 %0, 4503599627370495
  %i.b = lshr i64 %0, 20
  %.sroa.4.0.insert.ext.i.i = and i64 %i.b, 8791798054912
  %i.c = lshr i64 %0, 55
  %.sroa.2.0.insert.shift.i.i = and i64 %i.c, 256
  %.sroa.2.0.insert.insert.i.i = or disjoint i64 %.sroa.4.0.insert.ext.i.i, %.sroa.2.0.insert.shift.i.i
  store i64 %.sroa.2.0.insert.insert.i.i, ptr %2, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  store i64 %i.a, ptr %i.d, align 8
  call fastcc void @parts64_canonicalize(ptr noundef %2, ptr noundef %1, ptr noundef nonnull @float64_params)
  %.fca.0.load.i = load i64, ptr %2, align 8      ; 4 uses
  %.fca.1.load.i = load i64, ptr %i.d, align 8    ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  store i64 %.fca.0.load.i, ptr %3, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 5 uses
  store i64 %.fca.1.load.i, ptr %i.e, align 8
  %i.f = trunc i64 %.fca.0.load.i to i8
  %i.g = lshr i64 %.fca.0.load.i, 8               ; 3 uses
  %i.h = lshr i64 %.fca.0.load.i, 32
  %i.i = trunc nuw i64 %i.h to i32                ; 2 uses
  switch i8 %i.f, label %bb.e [
    i8 2, label %bb.f
    i8 3, label %bb.b
    i8 6, label %bb.c
    i8 5, label %bb.c
    i8 1, label %parts64_sqrt.exit
    i8 4, label %bb.d
  ], !prof !32

bb.b:                                             ; preds = %bb.a
  %i.j = trunc i64 %i.g to i1
  br i1 %i.j, label %.thread, label %.thread4, !prof !33

.thread4:                                         ; preds = %bb.b
  %i.k = load i64, ptr %1, align 4
  %i.l = or i64 %i.k, 16384
  store i64 %i.l, ptr %1, align 4
  br label %bb.g

bb.c:                                             ; preds = %bb.a, %bb.a
  %i.m = call { i64, i64 } @parts64_return_nan(ptr noundef nonnull %3, ptr noundef %1) ; 2 uses
  %i.n = extractvalue { i64, i64 } %i.m, 0
  %i.o = extractvalue { i64, i64 } %i.m, 1
  store i64 %i.n, ptr %3, align 8
  store i64 %i.o, ptr %i.e, align 8
  br label %parts64_sqrt.exit

bb.d:                                             ; preds = %bb.a
  %i.p = trunc i64 %i.g to i1
  br i1 %i.p, label %.thread, label %parts64_sqrt.exit, !prof !17

bb.e:                                             ; preds = %bb.a
  tail call void @g_assertion_message_expr(ptr noundef null, ptr noundef nonnull @.str.3, i32 noundef 936, ptr noundef nonnull @__func__.parts64_sqrt, ptr noundef null) #15
  unreachable

bb.f:                                             ; preds = %bb.a
  %.pre = trunc i64 %i.g to i1
  br i1 %.pre, label %.thread, label %bb.g, !prof !34

bb.g:                                             ; preds = %.thread4, %bb.f
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 2 uses
  %i.r = and i32 %i.i, 1                          ; 2 uses
  %i.s = lshr i64 %.fca.1.load.i, 57
  %i.t = and i64 %i.s, 63
  %i.u = shl nuw nsw i32 %i.r, 6
  %i.v = xor i32 %i.u, 64
  %i.w = zext nneg i32 %i.v to i64
  %i.x = xor i32 %i.r, 1
  %i.y = zext nneg i32 %i.x to i64
  %spec.select.i = lshr i64 %.fca.1.load.i, %i.y  ; 3 uses
  %i.z = lshr i64 %spec.select.i, 32              ; 2 uses
  %i.aa = getelementptr inbounds nuw [2 x i8], ptr @rsqrt_tab, i64 %i.t
  %i.ab = getelementptr inbounds nuw [2 x i8], ptr %i.aa, i64 %i.w
  %i.ac = load i16, ptr %i.ab, align 2
  %i.ad = zext i16 %i.ac to i64
  %i.ae = shl nuw nsw i64 %i.ad, 16               ; 3 uses
  %i.af = mul nuw i64 %i.z, %i.ae
  %i.ag = lshr i64 %i.af, 32
  %i.ah = mul nuw i64 %i.ag, %i.ae
  %i.ai = lshr i64 %i.ah, 32
  %i.aj = sub nsw i64 3221225472, %i.ai
  %i.ak = and i64 %i.aj, 4294967295
  %i.al = mul nuw i64 %i.ak, %i.ae
  %i.am = lshr i64 %i.al, 31
  %i.an = and i64 %i.am, 4294967295               ; 3 uses
  %i.ao = mul nuw i64 %i.an, %i.z
  %i.ap = lshr i64 %i.ao, 32
  %i.aq = mul nuw i64 %i.ap, %i.an
  %i.ar = lshr i64 %i.aq, 32
  %i.as = sub nsw i64 3221225472, %i.ar
  %i.at = and i64 %i.as, 4294967295
  %i.au = shl nuw nsw i64 %i.an, 1
  %i.av = mul i64 %i.au, %i.at
  %4 = zext i64 %spec.select.i to i128
  %5 = zext i64 %i.av to i128                     ; 2 uses
  %6 = mul nuw i128 %5, %4
  %7 = lshr i128 %6, 64                           ; 2 uses
  %8 = mul nuw i128 %7, %5
  %9 = lshr i128 %8, 64
  %10 = trunc nuw i128 %9 to i64
  %i.aw = sub i64 -4611686018427387904, %10
  %11 = zext i64 %i.aw to i128
  %12 = mul nuw i128 %7, %11
  %13 = lshr i128 %12, 64
  %14 = trunc nuw i128 %13 to i64
  %i.ax = add i64 %14, -2
  %i.ay = lshr i64 %i.ax, 9                       ; 5 uses
  %i.az = shl i64 %spec.select.i, 42
  %i.ba = mul i64 %i.ay, %i.ay
  %.neg.i = sub i64 %i.ba, %i.az
  %i.bb = add i64 %.neg.i, %i.ay                  ; 3 uses
  %i.bc = add nuw nsw i64 %i.ay, 1
  %i.bd = add i64 %i.bc, %i.bb                    ; 2 uses
  %i.be = lshr i64 %i.bb, 63
  %i.bf = add nuw nsw i64 %i.be, %i.ay
  %i.bg = shl i64 %i.bf, 10
  %.not79.i = icmp eq i64 %i.bd, 0
  %i.bh = xor i64 %i.bd, %i.bb
  %.inv.i = icmp sgt i64 %i.bh, -1
  %i.bi = select i1 %.inv.i, i64 1, i64 -1
  %i.bj = select i1 %.not79.i, i64 0, i64 %i.bi
  %storemerge.i = add i64 %i.bj, %i.bg            ; 3 uses
  store i64 %storemerge.i, ptr %i.e, align 8
  %i.bk = ashr i32 %i.i, 1                        ; 2 uses
  store i32 %i.bk, ptr %i.q, align 4
  %.not85.i = icmp sgt i64 %storemerge.i, -1
  br i1 %.not85.i, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.bl = shl nuw i64 %storemerge.i, 1
  store i64 %i.bl, ptr %i.e, align 8
  br label %parts64_sqrt.exit

bb.i:                                             ; preds = %bb.g
  %i.bm = add nsw i32 %i.bk, 1
  store i32 %i.bm, ptr %i.q, align 4
  br label %parts64_sqrt.exit

.thread:                                          ; preds = %bb.b, %bb.f, %bb.d
  %i.bn = load i64, ptr %1, align 4
  %i.bo = or i64 %i.bn, 2049
  store i64 %i.bo, ptr %1, align 4
  %i.bp = tail call { i64, i64 } @parts64_default_nan(ptr noundef nonnull %1) ; 2 uses
  %i.bq = extractvalue { i64, i64 } %i.bp, 0
  %i.br = extractvalue { i64, i64 } %i.bp, 1
  store i64 %i.bq, ptr %3, align 8
  store i64 %i.br, ptr %i.e, align 8
  br label %parts64_sqrt.exit

parts64_sqrt.exit:                                ; preds = %bb.a, %bb.c, %bb.d, %bb.h, %bb.i, %.thread
  %i.bs = call fastcc i64 @float64r32_round_pack_canonical(ptr noundef %3, ptr noundef %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #16
  ret i64 %i.bs
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local zeroext i16 @bfloat16_sqrt(i16 noundef zeroext %0, ptr nofree noundef captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %2 = alloca %struct.FloatParts64, align 8       ; 6 uses
  %3 = alloca %struct.FloatParts64, align 8       ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  %i.a = zext i16 %0 to i64                       ; 2 uses
  %.not.i.i = icmp sgt i16 %0, -1
  %i.b = and i64 %i.a, 127
  %i.c = shl nuw nsw i64 %i.a, 25
  %.sroa.4.0.insert.ext.i.i = and i64 %i.c, 1095216660480
  %.sroa.2.0.insert.shift.i.i = select i1 %.not.i.i, i64 0, i64 256
  %.sroa.2.0.insert.insert.i.i = or disjoint i64 %.sroa.4.0.insert.ext.i.i, %.sroa.2.0.insert.shift.i.i
  store i64 %.sroa.2.0.insert.insert.i.i, ptr %2, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  store i64 %i.b, ptr %i.d, align 8
  call fastcc void @parts64_canonicalize(ptr noundef %2, ptr noundef %1, ptr noundef nonnull @bfloat16_params)
  %.fca.0.load.i = load i64, ptr %2, align 8      ; 4 uses
  %.fca.1.load.i = load i64, ptr %i.d, align 8    ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  store i64 %.fca.0.load.i, ptr %3, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 6 uses
  store i64 %.fca.1.load.i, ptr %i.e, align 8
  %i.f = trunc i64 %.fca.0.load.i to i8
  %i.g = lshr i64 %.fca.0.load.i, 8               ; 3 uses
  %i.h = lshr i64 %.fca.0.load.i, 32              ; 3 uses
  %i.i = trunc nuw i64 %i.h to i32
  switch i8 %i.f, label %bb.e [
    i8 2, label %bb.f
    i8 3, label %bb.b
    i8 6, label %bb.c
    i8 5, label %bb.c
    i8 1, label %parts64_sqrt.exit
    i8 4, label %bb.d
  ], !prof !32

bb.b:                                             ; preds = %bb.a
  %i.j = trunc i64 %i.g to i1
  br i1 %i.j, label %.thread, label %.thread5, !prof !33

.thread5:                                         ; preds = %bb.b
  %i.k = load i64, ptr %1, align 4
  %i.l = or i64 %i.k, 16384
  store i64 %i.l, ptr %1, align 4
  br label %bb.g

bb.c:                                             ; preds = %bb.a, %bb.a
  %i.m = call { i64, i64 } @parts64_return_nan(ptr noundef nonnull %3, ptr noundef %1) ; 2 uses
  %i.n = extractvalue { i64, i64 } %i.m, 0
  %i.o = extractvalue { i64, i64 } %i.m, 1
  store i64 %i.n, ptr %3, align 8
  store i64 %i.o, ptr %i.e, align 8
  br label %parts64_sqrt.exit

bb.d:                                             ; preds = %bb.a
  %i.p = trunc i64 %i.g to i1
  br i1 %i.p, label %.thread, label %parts64_sqrt.exit, !prof !17

bb.e:                                             ; preds = %bb.a
  tail call void @g_assertion_message_expr(ptr noundef null, ptr noundef nonnull @.str.3, i32 noundef 936, ptr noundef nonnull @__func__.parts64_sqrt, ptr noundef null) #15
  unreachable

bb.f:                                             ; preds = %bb.a
  %.pre = trunc i64 %i.g to i1
  br i1 %.pre, label %.thread, label %bb.g, !prof !34

bb.g:                                             ; preds = %.thread5, %bb.f
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 2 uses
  %i.r = lshr i64 %.fca.1.load.i, 57
  %i.s = and i64 %i.r, 63
  %i.t = shl nuw nsw i64 %i.h, 6
  %i.u = and i64 %i.t, 64
  %i.v = xor i64 %i.u, 64
  %i.w = and i64 %i.h, 1
  %i.x = xor i64 %i.w, 1
  %spec.select = lshr i64 %.fca.1.load.i, %i.x
  %i.y = lshr i64 %spec.select, 32                ; 3 uses
  %i.z = getelementptr inbounds nuw [2 x i8], ptr @rsqrt_tab, i64 %i.s
  %i.aa = getelementptr inbounds nuw [2 x i8], ptr %i.z, i64 %i.v
  %i.ab = load i16, ptr %i.aa, align 2
  %i.ac = zext i16 %i.ab to i64
  %i.ad = shl nuw nsw i64 %i.ac, 16               ; 3 uses
  %i.ae = mul nuw i64 %i.ad, %i.y
  %i.af = lshr i64 %i.ae, 32
  %i.ag = mul nuw i64 %i.af, %i.ad
  %i.ah = lshr i64 %i.ag, 32
  %i.ai = sub nsw i64 3221225472, %i.ah
  %i.aj = and i64 %i.ai, 4294967295
  %i.ak = mul nuw i64 %i.aj, %i.ad
  %i.al = lshr i64 %i.ak, 31
  %i.am = and i64 %i.al, 4294967295               ; 2 uses
  %i.an = mul nuw i64 %i.am, %i.y
  %i.ao = lshr i64 %i.an, 32                      ; 2 uses
  %i.ap = mul nuw i64 %i.ao, %i.am
  %i.aq = lshr i64 %i.ap, 32
  %i.ar = sub nsw i64 3221225472, %i.aq
  %i.as = trunc nuw i64 %i.y to i32
  %i.at = and i64 %i.ar, 4294967295
  %i.au = mul nuw i64 %i.at, %i.ao
  %i.av = lshr i64 %i.au, 32
  %i.aw = trunc nuw i64 %i.av to i32
  %i.ax = add i32 %i.aw, -1
  %i.ay = lshr i32 %i.ax, 6                       ; 5 uses
  %i.az = shl i32 %i.as, 16
  %i.ba = mul i32 %i.ay, %i.ay
  %.neg80.i = sub i32 %i.ba, %i.az
  %i.bb = add i32 %.neg80.i, %i.ay                ; 3 uses
  %i.bc = add nuw nsw i32 %i.ay, 1
  %i.bd = add i32 %i.bc, %i.bb                    ; 2 uses
  %i.be = lshr i32 %i.bb, 31
  %i.bf = add nuw nsw i32 %i.be, %i.ay
  %i.bg = zext nneg i32 %i.bf to i64
  %i.bh = shl i64 %i.bg, 39
  %.not81.i = icmp eq i32 %i.bd, 0
  %i.bi = xor i32 %i.bd, %i.bb
  %.inv82.i = icmp sgt i32 %i.bi, -1
  %i.bj = select i1 %.inv82.i, i64 1, i64 -1
  %i.bk = select i1 %.not81.i, i64 0, i64 %i.bj
  %storemerge83.i = add i64 %i.bk, %i.bh          ; 3 uses
  store i64 %storemerge83.i, ptr %i.e, align 8
  %i.bl = ashr i32 %i.i, 1                        ; 2 uses
  store i32 %i.bl, ptr %i.q, align 4
  %.not85.i = icmp sgt i64 %storemerge83.i, -1
  br i1 %.not85.i, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.bm = shl nuw i64 %storemerge83.i, 1
  store i64 %i.bm, ptr %i.e, align 8
  br label %parts64_sqrt.exit

bb.i:                                             ; preds = %bb.g
  %i.bn = add nsw i32 %i.bl, 1
  store i32 %i.bn, ptr %i.q, align 4
  br label %parts64_sqrt.exit

.thread:                                          ; preds = %bb.b, %bb.f, %bb.d
  %i.bo = load i64, ptr %1, align 4
  %i.bp = or i64 %i.bo, 2049
  store i64 %i.bp, ptr %1, align 4
  %i.bq = tail call { i64, i64 } @parts64_default_nan(ptr noundef nonnull %1) ; 2 uses
  %i.br = extractvalue { i64, i64 } %i.bq, 0
  %i.bs = extractvalue { i64, i64 } %i.bq, 1
  store i64 %i.br, ptr %3, align 8
  store i64 %i.bs, ptr %i.e, align 8
  br label %parts64_sqrt.exit

parts64_sqrt.exit:                                ; preds = %bb.a, %bb.c, %bb.d, %bb.h, %bb.i, %.thread
  call fastcc void @parts64_uncanon(ptr noundef nonnull %3, ptr noundef %1, ptr noundef nonnull @bfloat16_params, i1 noundef zeroext false)
  %i.bt = getelementptr inbounds nuw i8, ptr %3, i64 1
  %i.bu = load i8, ptr %i.bt, align 1, !range !12, !noundef !13
  %i.bv = zext nneg i8 %i.bu to i64
  %i.bw = shl nuw nsw i64 %i.bv, 15
  %i.bx = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.by = load i32, ptr %i.bx, align 4
  %i.bz = shl i32 %i.by, 7
  %i.ca = and i32 %i.bz, 32640
  %i.cb = zext nneg i32 %i.ca to i64
  %i.cc = or disjoint i64 %i.bw, %i.cb
  %i.cd = load i64, ptr %i.e, align 8
  %i.ce = and i64 %i.cd, 127
  %i.cf = or disjoint i64 %i.cc, %i.ce
  %i.cg = trunc nuw i64 %i.cf to i16
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #16
  ret i16 %i.cg
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local { i64, i64 } @float128_sqrt(i64 %0, i64 %1, ptr nofree noundef captures(none) %2) local_unnamed_addr #0 {
bb.a:
  %3 = alloca %struct.FloatParts128, align 8      ; 4 uses
  %4 = alloca %struct.FloatParts128, align 8      ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #16
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 1 ; 5 uses
  %.lobit.i = lshr i64 %1, 63
  %i.b = trunc nuw nsw i64 %.lobit.i to i8
  store i64 0, ptr %4, align 8
  store i8 %i.b, ptr %i.a, align 1, !alias.scope !230
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 4 ; 5 uses
  %i.d = lshr i64 %1, 48
  %i.e = trunc nuw nsw i64 %i.d to i32
  %i.f = and i32 %i.e, 32767
  store i32 %i.f, ptr %i.c, align 4, !alias.scope !230
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 6 uses
  %i.h = and i64 %1, 281474976710655
  store i64 %i.h, ptr %i.g, align 8, !alias.scope !230
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 6 uses
  store i64 %0, ptr %i.i, align 8, !alias.scope !230
  call fastcc void @parts128_canonicalize(ptr noundef nonnull align 8 %4, ptr noundef %2, ptr noundef nonnull @float128_params)
  %i.j = load i8, ptr %4, align 8                 ; 2 uses
  switch i8 %i.j, label %bb.e [
    i8 2, label %bb.f
    i8 3, label %bb.b
    i8 6, label %bb.c
    i8 5, label %bb.c
    i8 1, label %parts128_sqrt.exit
    i8 4, label %bb.d
  ], !prof !32

bb.b:                                             ; preds = %bb.a
  %i.k = load i8, ptr %i.a, align 1, !range !12, !noundef !13
  %i.l = trunc nuw i8 %i.k to i1
  br i1 %i.l, label %.thread, label %.thread81, !prof !33

.thread81:                                        ; preds = %bb.b
  %i.m = load i64, ptr %2, align 4
  %i.n = or i64 %i.m, 16384
  store i64 %i.n, ptr %2, align 4
  br label %bb.g

bb.c:                                             ; preds = %bb.a, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #16
  call void @parts128_return_nan(ptr dead_on_unwind nonnull writable sret(%struct.FloatParts128) align 8 %3, ptr noundef nonnull %4, ptr noundef %2)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #16
  br label %parts128_sqrt.exitthread-pre-split

bb.d:                                             ; preds = %bb.a
  %i.o = load i8, ptr %i.a, align 1, !range !12, !noundef !13
  %i.p = trunc nuw i8 %i.o to i1
  br i1 %i.p, label %.thread, label %parts128_sqrt.exit, !prof !17

bb.e:                                             ; preds = %bb.a
  tail call void @g_assertion_message_expr(ptr noundef null, ptr noundef nonnull @.str.3, i32 noundef 936, ptr noundef nonnull @__func__.parts128_sqrt, ptr noundef null) #15
  unreachable

bb.f:                                             ; preds = %bb.a
  %.pre = load i8, ptr %i.a, align 1, !range !12
  %i.q = trunc nuw i8 %.pre to i1
  br i1 %i.q, label %.thread, label %bb.g, !prof !34

bb.g:                                             ; preds = %.thread81, %bb.f
  %i.r = load i32, ptr %i.c, align 4              ; 2 uses
  %i.s = and i32 %i.r, 1                          ; 2 uses
  %.not41.i = icmp eq i32 %i.s, 0
  %i.t = load i64, ptr %i.g, align 8              ; 4 uses
  %i.u = lshr i64 %i.t, 57
  %i.v = and i64 %i.u, 63
  %i.w = shl nuw nsw i32 %i.s, 6
  %i.x = xor i32 %i.w, 64
  %i.y = zext nneg i32 %i.x to i64
  %.pre77.a = load i64, ptr %i.i, align 8         ; 2 uses
  br i1 %.not41.i, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.z = tail call i64 asm "shrd ${2:b}, $1, $0", "=r,r,{cx}i,0,~{dirflag},~{fpsr},~{flags}"(i64 %i.t, i32 range(i32 1, -2147483646) 1, i64 %.pre77.a) #17, !srcloc !15
  %i.aa = lshr i64 %i.t, 1
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.ab = phi i64 [ %i.z, %bb.h ], [ %.pre77.a, %bb.g ] ; 2 uses
  %i.ac = phi i64 [ %i.aa, %bb.h ], [ %i.t, %bb.g ] ; 2 uses
  %i.ad = lshr i64 %i.ac, 32
  %i.ae = getelementptr inbounds nuw [2 x i8], ptr @rsqrt_tab, i64 %i.v
  %i.af = getelementptr inbounds nuw [2 x i8], ptr %i.ae, i64 %i.y
  %i.ag = load i16, ptr %i.af, align 2
  %i.ah = zext i16 %i.ag to i64                   ; 2 uses
  %i.ai = shl nuw nsw i64 %i.ah, 16               ; 2 uses
  %i.aj = mul nuw i64 %i.ai, %i.ad
  %i.ak = lshr i64 %i.aj, 32
  %i.al = mul nuw i64 %i.ak, %i.ai
  %i.am = lshr i64 %i.al, 32
  %i.an = sub nsw i64 3221225472, %i.am
  %i.ao = and i64 %i.an, 4294967295
  %i.ap = shl nuw nsw i64 %i.ah, 17
  %i.aq = mul i64 %i.ap, %i.ao
  %5 = zext i64 %i.ac to i128                     ; 4 uses
  %i.ar = zext i64 %i.aq to i128                  ; 3 uses
  %6 = mul nuw i128 %i.ar, %5
  %7 = lshr i128 %6, 64
  %8 = mul nuw i128 %7, %i.ar
  %9 = lshr i128 %8, 64
  %10 = trunc nuw i128 %9 to i64
  %i.as = sub i64 -4611686018427387904, %10
  %11 = zext i64 %i.as to i128
  %12 = mul nuw i128 %11, %i.ar
  %sh.diff = lshr i128 %12, 63
  %13 = and i128 %sh.diff, 18446744073709551614   ; 3 uses
  %14 = mul nuw i128 %13, %5
  %15 = lshr i128 %14, 64
  %16 = mul nuw i128 %15, %13
  %17 = lshr i128 %16, 64
  %18 = trunc nuw i128 %17 to i64
  %i.at = sub i64 -4611686018427387904, %18
  %i.au = zext i64 %i.at to i128
  %i.av = mul nuw i128 %13, %i.au                 ; 2 uses
  %i.aw = trunc i128 %i.av to i64                 ; 2 uses
  %i.ax = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.aw, i64 %i.aw) ; 2 uses
  %i.ay = extractvalue { i64, i1 } %i.ax, 1
  %i.az = extractvalue { i64, i1 } %i.ax, 0
  %i.ba = zext i1 %i.ay to i64
  %sh.diff65 = lshr i128 %i.av, 63
  %tr.sh.diff = trunc i128 %sh.diff65 to i64
  %i.bb = and i64 %tr.sh.diff, -2
  %i.bc = or disjoint i64 %i.bb, %i.ba
  %i.bd = zext i64 %i.ab to i128                  ; 2 uses
  %i.be = zext i64 %i.bc to i128                  ; 4 uses
  %i.bf = mul nuw i128 %i.be, %i.bd               ; 2 uses
  %i.bg = trunc i128 %i.bf to i64
  %i.bh = lshr i128 %i.bf, 64
  %i.bi = trunc nuw i128 %i.bh to i64
  %i.bj = zext i64 %i.az to i128                  ; 4 uses
  %i.bk = mul nuw i128 %i.bj, %5                  ; 2 uses
  %i.bl = trunc i128 %i.bk to i64
  %i.bm = lshr i128 %i.bk, 64
  %i.bn = trunc nuw i128 %i.bm to i64
  %19 = mul nuw i128 %i.bj, %i.bd
  %20 = lshr i128 %19, 64
  %21 = trunc nuw i128 %20 to i64
  %i.bo = mul nuw i128 %i.be, %5                  ; 2 uses
  %i.bp = trunc i128 %i.bo to i64
  %i.bq = lshr i128 %i.bo, 64
  %i.br = trunc nuw i128 %i.bq to i64
  %i.bs = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.bg, i64 %i.bl) ; 2 uses
  %i.bt = extractvalue { i64, i1 } %i.bs, 1
  %i.bu = extractvalue { i64, i1 } %i.bs, 0
  %i.bv = zext i1 %i.bt to i64
  %i.bw = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.bi, i64 %i.bn) ; 2 uses
  %i.bx = extractvalue { i64, i1 } %i.bw, 1
  %i.by = extractvalue { i64, i1 } %i.bw, 0
  %i.bz = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.by, i64 %i.bv) ; 2 uses
  %i.ca = extractvalue { i64, i1 } %i.bz, 1
  %i.cb = extractvalue { i64, i1 } %i.bz, 0
  %i.cc = or i1 %i.bx, %i.ca
  %i.cd = zext i1 %i.cc to i64
  %i.ce = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.bu, i64 %21)
  %i.cf = extractvalue { i64, i1 } %i.ce, 1
  %i.cg = zext i1 %i.cf to i64
  %i.ch = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.cb, i64 %i.bp) ; 2 uses
  %i.ci = extractvalue { i64, i1 } %i.ch, 1
  %i.cj = extractvalue { i64, i1 } %i.ch, 0
  %i.ck = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.cj, i64 %i.cg) ; 2 uses
  %i.cl = extractvalue { i64, i1 } %i.ck, 1
  %i.cm = extractvalue { i64, i1 } %i.ck, 0
  %i.cn = or i1 %i.ci, %i.cl
  %i.co = zext i1 %i.cn to i64
  %i.cp = add nuw i64 %i.cd, %i.br
  %i.cq = add i64 %i.cp, %i.co
  %i.cr = zext i64 %i.cm to i128                  ; 4 uses
  %i.cs = mul nuw i128 %i.cr, %i.be               ; 2 uses
  %i.ct = trunc i128 %i.cs to i64
  %i.cu = lshr i128 %i.cs, 64
  %i.cv = trunc nuw i128 %i.cu to i64
  %i.cw = zext i64 %i.cq to i128                  ; 4 uses
  %i.cx = mul nuw i128 %i.cw, %i.bj               ; 2 uses
  %i.cy = trunc i128 %i.cx to i64
  %i.cz = lshr i128 %i.cx, 64
  %i.da = trunc nuw i128 %i.cz to i64
  %22 = mul nuw i128 %i.cr, %i.bj
  %23 = lshr i128 %22, 64
  %24 = trunc nuw i128 %23 to i64
  %i.db = mul nuw i128 %i.cw, %i.be               ; 2 uses
  %i.dc = trunc i128 %i.db to i64
  %i.dd = lshr i128 %i.db, 64
  %i.de = trunc nuw i128 %i.dd to i64
  %i.df = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.ct, i64 %i.cy) ; 2 uses
  %i.dg = extractvalue { i64, i1 } %i.df, 1
  %i.dh = extractvalue { i64, i1 } %i.df, 0
  %i.di = zext i1 %i.dg to i64
  %i.dj = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.cv, i64 %i.da) ; 2 uses
  %i.dk = extractvalue { i64, i1 } %i.dj, 1
  %i.dl = extractvalue { i64, i1 } %i.dj, 0
  %i.dm = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.dl, i64 %i.di) ; 2 uses
  %i.dn = extractvalue { i64, i1 } %i.dm, 1
  %i.do = extractvalue { i64, i1 } %i.dm, 0
  %i.dp = or i1 %i.dk, %i.dn
  %.neg73.a = sext i1 %i.dp to i64
  %i.dq = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.dh, i64 %24)
  %i.dr = extractvalue { i64, i1 } %i.dq, 1
  %i.ds = zext i1 %i.dr to i64
  %i.dt = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.do, i64 %i.dc) ; 2 uses
  %i.du = extractvalue { i64, i1 } %i.dt, 1
  %i.dv = extractvalue { i64, i1 } %i.dt, 0
  %i.dw = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.dv, i64 %i.ds) ; 2 uses
  %i.dx = extractvalue { i64, i1 } %i.dw, 1
  %i.dy = extractvalue { i64, i1 } %i.dw, 0
  %i.dz = or i1 %i.du, %i.dx
  %.neg74 = sext i1 %i.dz to i64
  %i.ea = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 0, i64 %i.dy) ; 2 uses
  %i.eb = extractvalue { i64, i1 } %i.ea, 1
  %i.ec = extractvalue { i64, i1 } %i.ea, 0
  %.neg.i = sext i1 %i.eb to i64
  %reass.sub75 = sub i64 %.neg73.a, %i.de
  %.neg71 = add i64 %reass.sub75, -4611686018427387904
  %reass.sub = add i64 %.neg71, %.neg74
  %i.ed = add i64 %reass.sub, %.neg.i
  %i.ee = zext i64 %i.ec to i128                  ; 2 uses
  %i.ef = mul nuw i128 %i.ee, %i.cw               ; 2 uses
  %i.eg = trunc i128 %i.ef to i64
  %i.eh = lshr i128 %i.ef, 64
  %i.ei = trunc nuw i128 %i.eh to i64
  %i.ej = zext i64 %i.ed to i128                  ; 2 uses
  %i.ek = mul nuw i128 %i.ej, %i.cr               ; 2 uses
  %i.el = trunc i128 %i.ek to i64
  %i.em = lshr i128 %i.ek, 64
  %i.en = trunc nuw i128 %i.em to i64
  %25 = mul nuw i128 %i.ee, %i.cr
  %26 = lshr i128 %25, 64
  %27 = trunc nuw i128 %26 to i64
  %i.eo = mul nuw i128 %i.ej, %i.cw               ; 2 uses
  %i.ep = trunc i128 %i.eo to i64
  %i.eq = lshr i128 %i.eo, 64
  %i.er = trunc nuw i128 %i.eq to i64
  %i.es = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.eg, i64 %i.el) ; 2 uses
  %i.et = extractvalue { i64, i1 } %i.es, 1
  %i.eu = extractvalue { i64, i1 } %i.es, 0
  %i.ev = zext i1 %i.et to i64
  %i.ew = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.ei, i64 %i.en) ; 2 uses
  %i.ex = extractvalue { i64, i1 } %i.ew, 1
  %i.ey = extractvalue { i64, i1 } %i.ew, 0
  %i.ez = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.ey, i64 %i.ev) ; 2 uses
  %i.fa = extractvalue { i64, i1 } %i.ez, 1
  %i.fb = extractvalue { i64, i1 } %i.ez, 0
  %i.fc = or i1 %i.ex, %i.fa
  %i.fd = zext i1 %i.fc to i64
  %i.fe = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.eu, i64 %27)
  %i.ff = extractvalue { i64, i1 } %i.fe, 1
  %i.fg = zext i1 %i.ff to i64
  %i.fh = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.fb, i64 %i.ep) ; 2 uses
  %i.fi = extractvalue { i64, i1 } %i.fh, 1
  %i.fj = extractvalue { i64, i1 } %i.fh, 0
  %i.fk = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.fj, i64 %i.fg) ; 2 uses
  %i.fl = extractvalue { i64, i1 } %i.fk, 1
  %i.fm = extractvalue { i64, i1 } %i.fk, 0
  %i.fn = or i1 %i.fi, %i.fl
  %i.fo = zext i1 %i.fn to i64
  %i.fp = add nuw i64 %i.fd, %i.er
  %i.fq = add i64 %i.fp, %i.fo
  %i.fr = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %i.fm, i64 4) ; 2 uses
  %i.fs = extractvalue { i64, i1 } %i.fr, 1
  %i.ft = extractvalue { i64, i1 } %i.fr, 0
  %.neg.i5 = sext i1 %i.fs to i64
  %i.fu = add i64 %i.fq, %.neg.i5                 ; 2 uses
  %i.fv = lshr i64 %i.fu, 13                      ; 4 uses
  %i.fw = tail call i64 @llvm.fshl.i64(i64 %i.fu, i64 %i.ft, i64 51) ; 5 uses
  %i.fx = zext i64 %i.fw to i128                  ; 2 uses
  %i.fy = mul nuw i128 %i.fx, %i.fx               ; 2 uses
  %i.fz = trunc i128 %i.fy to i64
  %i.ga = lshr i128 %i.fy, 64
  %i.gb = trunc nuw i128 %i.ga to i64
  %i.gc = shl nuw nsw i64 %i.fv, 1
  %i.gd = mul i64 %i.gc, %i.fw
  %i.ge = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 0, i64 %i.fz) ; 2 uses
  %i.gf = extractvalue { i64, i1 } %i.ge, 1
  %i.gg = extractvalue { i64, i1 } %i.ge, 0
  %.neg.i6.neg = zext i1 %i.gf to i64
  %i.gh = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %i.fw, i64 %i.gg) ; 2 uses
  %i.gi = extractvalue { i64, i1 } %i.gh, 1
  %i.gj = extractvalue { i64, i1 } %i.gh, 0
  %.neg.i7 = sext i1 %i.gi to i64
  %i.gk = shl i64 %i.ab, 34
  %i.gl = sub i64 %i.fv, %i.gk
  %.neg = add i64 %i.gl, %i.gd
  %.neg66 = add i64 %.neg, %i.gb
  %i.gm = add i64 %.neg66, %.neg.i6.neg
  %i.gn = add i64 %i.gm, %.neg.i7                 ; 3 uses
  %i.go = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.fw, i64 1) ; 2 uses
  %i.gp = extractvalue { i64, i1 } %i.go, 1
  %i.gq = extractvalue { i64, i1 } %i.go, 0
  %i.gr = zext i1 %i.gp to i64
  %i.gs = add nuw nsw i64 %i.fv, %i.gr
  %i.gt = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.gq, i64 %i.gj) ; 2 uses
  %i.gu = extractvalue { i64, i1 } %i.gt, 1
  %i.gv = extractvalue { i64, i1 } %i.gt, 0
  %i.gw = zext i1 %i.gu to i64
  %i.gx = add i64 %i.gs, %i.gn
  %i.gy = add i64 %i.gx, %i.gw                    ; 2 uses
  %i.gz = lshr i64 %i.gn, 63
  %i.ha = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.fw, i64 %i.gz) ; 2 uses
  %i.hb = extractvalue { i64, i1 } %i.ha, 1
  %i.hc = extractvalue { i64, i1 } %i.ha, 0       ; 2 uses
  %i.hd = zext i1 %i.hb to i64
  %i.he = add nuw nsw i64 %i.fv, %i.hd
  %i.hf = shl i64 %i.hc, 14                       ; 3 uses
  %i.hg = tail call i64 @llvm.fshl.i64(i64 %i.he, i64 %i.hc, i64 14) ; 3 uses
  %i.hh = or i64 %i.gy, %i.gv
  %.not42.i = icmp eq i64 %i.hh, 0
  br i1 %.not42.i, label %bb.m, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.hi = xor i64 %i.gy, %i.gn
  %i.hj = icmp slt i64 %i.hi, 0
  br i1 %i.hj, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.hk = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %i.hf, i64 1) ; 2 uses
  %i.hl = extractvalue { i64, i1 } %i.hk, 1
  %i.hm = extractvalue { i64, i1 } %i.hk, 0
  %.neg.i8 = sext i1 %i.hl to i64
  %i.hn = add i64 %i.hg, %.neg.i8
  br label %bb.m

bb.l:                                             ; preds = %bb.j
  %i.ho = or disjoint i64 %i.hf, 1
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k, %bb.i
  %.064 = phi i64 [ %i.hg, %bb.i ], [ %i.hn, %bb.k ], [ %i.hg, %bb.l ] ; 3 uses
  %.0 = phi i64 [ %i.hf, %bb.i ], [ %i.hm, %bb.k ], [ %i.ho, %bb.l ] ; 3 uses
  store i64 %.0, ptr %i.i, align 8
  store i64 %.064, ptr %i.g, align 8
  %i.hp = ashr i32 %i.r, 1                        ; 2 uses
  store i32 %i.hp, ptr %i.c, align 4
  %.not43.i = icmp sgt i64 %.064, -1
  br i1 %.not43.i, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.hq = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %.0, i64 %.0) ; 2 uses
  %i.hr = extractvalue { i64, i1 } %i.hq, 1
  %i.hs = extractvalue { i64, i1 } %i.hq, 0
  store i64 %i.hs, ptr %i.i, align 8
  %i.ht = zext i1 %i.hr to i64
  %i.hu = shl nuw i64 %.064, 1
  %i.hv = or disjoint i64 %i.hu, %i.ht
  store i64 %i.hv, ptr %i.g, align 8
  br label %parts128_sqrt.exitthread-pre-split

bb.o:                                             ; preds = %bb.m
  %i.hw = add nsw i32 %i.hp, 1
  store i32 %i.hw, ptr %i.c, align 4
  br label %parts128_sqrt.exitthread-pre-split

.thread:                                          ; preds = %bb.b, %bb.f, %bb.d
  %i.hx = load i64, ptr %2, align 4
  %i.hy = or i64 %i.hx, 2049
  store i64 %i.hy, ptr %2, align 4
  call void @parts128_default_nan(ptr dead_on_unwind nonnull writable sret(%struct.FloatParts128) align 8 %4, ptr noundef nonnull %2)
  br label %parts128_sqrt.exitthread-pre-split

parts128_sqrt.exitthread-pre-split:               ; preds = %.thread, %bb.o, %bb.n, %bb.c
  %.pr = load i8, ptr %4, align 8
  br label %parts128_sqrt.exit

parts128_sqrt.exit:                               ; preds = %parts128_sqrt.exitthread-pre-split, %bb.a, %bb.d
  %i.hz = phi i8 [ %.pr, %parts128_sqrt.exitthread-pre-split ], [ %i.j, %bb.a ], [ 4, %bb.d ] ; 2 uses
  %i.ia = zext nneg i8 %i.hz to i32
  %i.ib = shl nuw i32 1, %i.ia
  %i.ic = and i32 %i.ib, 12
  %.not.i = icmp eq i32 %i.ic, 0
  br i1 %.not.i, label %bb.q, label %bb.p, !prof !17

bb.p:                                             ; preds = %parts128_sqrt.exit
  call fastcc void @parts128_uncanon_normal(ptr noundef nonnull %4, ptr noundef %2, ptr noundef nonnull @float128_params)
  %.pre78.a = load i32, ptr %i.c, align 4
  %.pre79.a = load i64, ptr %i.g, align 8
  %.pre80 = load i64, ptr %i.i, align 8
  %i.id = and i32 %.pre78.a, 32767
  %i.ie = zext nneg i32 %i.id to i64
  %i.if = shl nuw nsw i64 %i.ie, 48
  br label %parts128_uncanon.exit

bb.q:                                             ; preds = %parts128_sqrt.exit
  switch i8 %i.hz, label %bb.t [
    i8 1, label %parts128_uncanon.exit
    i8 4, label %bb.r
    i8 5, label %bb.s
    i8 6, label %bb.s
  ]

bb.r:                                             ; preds = %bb.q
  br label %parts128_uncanon.exit

bb.s:                                             ; preds = %bb.q, %bb.q
  %i.ig = load i64, ptr %i.g, align 8             ; 2 uses
  %i.ih = load i64, ptr %i.i, align 8
  %i.ii = tail call i64 asm "shrd ${2:b}, $1, $0", "=r,r,{cx}i,0,~{dirflag},~{fpsr},~{flags}"(i64 %i.ig, i32 range(i32 1, -2147483646) 15, i64 %i.ih) #17, !srcloc !15
  %i.ij = lshr i64 %i.ig, 15
  br label %parts128_uncanon.exit

bb.t:                                             ; preds = %bb.q
  tail call void @g_assertion_message_expr(ptr noundef null, ptr noundef nonnull @.str.3, i32 noundef 538, ptr noundef nonnull @__func__.parts128_uncanon, ptr noundef null) #15
  unreachable

parts128_uncanon.exit:                            ; preds = %bb.q, %bb.p, %bb.r, %bb.s
  %i.ik = phi i64 [ %.pre80, %bb.p ], [ %i.ii, %bb.s ], [ 0, %bb.r ], [ 0, %bb.q ]
  %i.il = phi i64 [ %.pre79.a, %bb.p ], [ %i.ij, %bb.s ], [ 0, %bb.r ], [ 0, %bb.q ]
  %i.im = phi i64 [ %i.if, %bb.p ], [ 9223090561878065152, %bb.s ], [ 9223090561878065152, %bb.r ], [ 0, %bb.q ]
  %i.in = load i8, ptr %i.a, align 1, !range !12, !noundef !13
  %i.io = zext nneg i8 %i.in to i64
  %i.ip = shl nuw i64 %i.io, 63
  %i.iq = or disjoint i64 %i.im, %i.ip
  %i.ir = and i64 %i.il, 281474976710655
  %i.is = or disjoint i64 %i.iq, %i.ir
  %.fca.0.insert.i = insertvalue { i64, i64 } poison, i64 %i.ik, 0
  %.fca.1.insert.i = insertvalue { i64, i64 } %.fca.0.insert.i, i64 %i.is, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #16
  ret { i64, i64 } %.fca.1.insert.i
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local { i64, i16 } @floatx80_sqrt(i64 %0, i16 %1, ptr nofree noundef captures(none) %2) local_unnamed_addr #0 {
bb.a:
  %3 = alloca %struct.FloatParts128, align 8      ; 4 uses
  %4 = alloca %struct.FloatParts128, align 8      ; 15 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 0, i64 24, i1 false), !annotation !23
  %i.a = call zeroext i1 @floatx80_unpack_canonical(ptr noundef nonnull %4, i64 %0, i16 %1, ptr noundef %2)
  br i1 %i.a, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.val.i.i = load i64, ptr %2, align 4           ; 4 uses
  %.not.i.i = icmp ult i64 %.val.i.i, 72057594037927936
  br i1 %.not.i.i, label %bb.c, label %floatx80_default_nan.exit

bb.c:                                             ; preds = %bb.b
  tail call void @__assert_fail(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 146, ptr noundef nonnull @__PRETTY_FUNCTION__.parts64_default_nan) #15
  unreachable

floatx80_default_nan.exit:                        ; preds = %bb.b
  %i.b = and i64 %.val.i.i, 9151314442816847872
  %i.c = and i64 %.val.i.i, 72057594037927936
  %i.d = icmp eq i64 %i.c, 0
  %i.e = select i1 %i.d, i64 0, i64 72057594037927935
  %i.f = or disjoint i64 %i.b, %i.e
  %i.g = or disjoint i64 %i.f, -9223372036854775808
  %sh.diff.i = lshr i64 %.val.i.i, 48
  %tr.sh.diff.i = trunc nuw i64 %sh.diff.i to i16
  %i.h = or i16 %tr.sh.diff.i, 32767
  %.fca.0.insert.i = insertvalue { i64, i16 } poison, i64 %i.g, 0
  %.fca.1.insert.i = insertvalue { i64, i16 } %.fca.0.insert.i, i16 %i.h, 1
  br label %bb.r

bb.d:                                             ; preds = %bb.a
  %i.i = load i8, ptr %4, align 8
  switch i8 %i.i, label %bb.h [
    i8 2, label %bb.i
    i8 3, label %bb.e
    i8 6, label %bb.f
    i8 5, label %bb.f
    i8 1, label %parts128_sqrt.exit
    i8 4, label %bb.g
  ], !prof !32

bb.e:                                             ; preds = %bb.d
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 1
  %i.k = load i8, ptr %i.j, align 1, !range !12, !noundef !13
  %i.l = trunc nuw i8 %i.k to i1
  br i1 %i.l, label %.thread, label %.thread10, !prof !33

.thread10:                                        ; preds = %bb.e
  %i.m = load i64, ptr %2, align 4
  %i.n = or i64 %i.m, 16384
  store i64 %i.n, ptr %2, align 4
  br label %bb.j

bb.f:                                             ; preds = %bb.d, %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #16
  call void @parts128_return_nan(ptr dead_on_unwind nonnull writable sret(%struct.FloatParts128) align 8 %3, ptr noundef nonnull %4, ptr noundef %2)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #16
  br label %parts128_sqrt.exit

bb.g:                                             ; preds = %bb.d
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 1
  %i.p = load i8, ptr %i.o, align 1, !range !12, !noundef !13
  %i.q = trunc nuw i8 %i.p to i1
  br i1 %i.q, label %.thread, label %parts128_sqrt.exit, !prof !17

bb.h:                                             ; preds = %bb.d
  tail call void @g_assertion_message_expr(ptr noundef null, ptr noundef nonnull @.str.3, i32 noundef 936, ptr noundef nonnull @__func__.parts128_sqrt, ptr noundef null) #15
  unreachable

bb.i:                                             ; preds = %bb.d
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %4, i64 1
  %.pre = load i8, ptr %.phi.trans.insert, align 1, !range !12
  %i.r = trunc nuw i8 %.pre to i1
  br i1 %i.r, label %.thread, label %bb.j, !prof !34

bb.j:                                             ; preds = %.thread10, %bb.i
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 4 ; 3 uses
  %i.t = load i32, ptr %i.s, align 4              ; 2 uses
  %i.u = and i32 %i.t, 1                          ; 2 uses
  %.not41.i = icmp eq i32 %i.u, 0
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  %i.w = load i64, ptr %i.v, align 8              ; 4 uses
  %i.x = lshr i64 %i.w, 57
  %i.y = and i64 %i.x, 63
  %i.z = shl nuw nsw i32 %i.u, 6
  %i.aa = xor i32 %i.z, 64
  %i.ab = zext nneg i32 %i.aa to i64
  %i.ac = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 3 uses
  %i.ad = load i64, ptr %i.ac, align 8            ; 2 uses
  br i1 %.not41.i, label %bb.k, label %._crit_edge.i

bb.k:                                             ; preds = %bb.j
  %i.ae = tail call i64 asm "shrd ${2:b}, $1, $0", "=r,r,{cx}i,0,~{dirflag},~{fpsr},~{flags}"(i64 %i.w, i32 range(i32 1, -2147483646) 1, i64 %i.ad) #17, !srcloc !15
  %i.af = lshr i64 %i.w, 1
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.k, %bb.j
  %i.ag = phi i64 [ %i.ae, %bb.k ], [ %i.ad, %bb.j ] ; 2 uses
  %i.ah = phi i64 [ %i.af, %bb.k ], [ %i.w, %bb.j ] ; 2 uses
  %i.ai = lshr i64 %i.ah, 32
  %i.aj = getelementptr inbounds nuw [2 x i8], ptr @rsqrt_tab, i64 %i.y
  %i.ak = getelementptr inbounds nuw [2 x i8], ptr %i.aj, i64 %i.ab
  %i.al = load i16, ptr %i.ak, align 2
  %i.am = zext i16 %i.al to i64                   ; 2 uses
  %i.an = shl nuw nsw i64 %i.am, 16               ; 2 uses
  %i.ao = mul nuw i64 %i.an, %i.ai
  %i.ap = lshr i64 %i.ao, 32
  %i.aq = mul nuw i64 %i.ap, %i.an
  %i.ar = lshr i64 %i.aq, 32
  %i.as = sub nsw i64 3221225472, %i.ar
  %i.at = and i64 %i.as, 4294967295
  %i.au = shl nuw nsw i64 %i.am, 17
  %i.av = mul i64 %i.au, %i.at
  %5 = zext i64 %i.ah to i128                     ; 4 uses
  %i.aw = zext i64 %i.av to i128                  ; 3 uses
  %6 = mul nuw i128 %i.aw, %5
  %7 = lshr i128 %6, 64
  %8 = mul nuw i128 %7, %i.aw
  %9 = lshr i128 %8, 64
  %10 = trunc nuw i128 %9 to i64
  %i.ax = sub i64 -4611686018427387904, %10
  %11 = zext i64 %i.ax to i128
  %12 = mul nuw i128 %11, %i.aw
  %sh.diff.i7 = lshr i128 %12, 63
  %13 = and i128 %sh.diff.i7, 18446744073709551614 ; 3 uses
  %14 = mul nuw i128 %13, %5
  %15 = lshr i128 %14, 64
  %16 = mul nuw i128 %15, %13
  %17 = lshr i128 %16, 64
  %18 = trunc nuw i128 %17 to i64
  %i.ay = sub i64 -4611686018427387904, %18
  %i.az = zext i64 %i.ay to i128
  %i.ba = mul nuw i128 %13, %i.az                 ; 2 uses
  %i.bb = trunc i128 %i.ba to i64                 ; 2 uses
  %i.bc = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.bb, i64 %i.bb) ; 2 uses
  %i.bd = extractvalue { i64, i1 } %i.bc, 1
  %i.be = extractvalue { i64, i1 } %i.bc, 0
  %i.bf = zext i1 %i.bd to i64
  %sh.diff57.i = lshr i128 %i.ba, 63
  %tr.sh.diff.i8 = trunc i128 %sh.diff57.i to i64
  %i.bg = and i64 %tr.sh.diff.i8, -2
  %i.bh = or disjoint i64 %i.bg, %i.bf
  %i.bi = zext i64 %i.ag to i128                  ; 2 uses
  %i.bj = zext i64 %i.bh to i128                  ; 4 uses
  %i.bk = mul nuw i128 %i.bj, %i.bi               ; 2 uses
  %i.bl = trunc i128 %i.bk to i64
  %i.bm = lshr i128 %i.bk, 64
  %i.bn = trunc nuw i128 %i.bm to i64
  %i.bo = zext i64 %i.be to i128                  ; 4 uses
  %i.bp = mul nuw i128 %i.bo, %5                  ; 2 uses
  %i.bq = trunc i128 %i.bp to i64
  %i.br = lshr i128 %i.bp, 64
  %i.bs = trunc nuw i128 %i.br to i64
  %19 = mul nuw i128 %i.bo, %i.bi
  %20 = lshr i128 %19, 64
  %21 = trunc nuw i128 %20 to i64
  %i.bt = mul nuw i128 %i.bj, %5                  ; 2 uses
  %i.bu = trunc i128 %i.bt to i64
  %i.bv = lshr i128 %i.bt, 64
  %i.bw = trunc nuw i128 %i.bv to i64
  %i.bx = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.bl, i64 %i.bq) ; 2 uses
  %i.by = extractvalue { i64, i1 } %i.bx, 1
  %i.bz = extractvalue { i64, i1 } %i.bx, 0
  %i.ca = zext i1 %i.by to i64
  %i.cb = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.bn, i64 %i.bs) ; 2 uses
  %i.cc = extractvalue { i64, i1 } %i.cb, 1
  %i.cd = extractvalue { i64, i1 } %i.cb, 0
  %i.ce = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.cd, i64 %i.ca) ; 2 uses
  %i.cf = extractvalue { i64, i1 } %i.ce, 1
  %i.cg = extractvalue { i64, i1 } %i.ce, 0
  %i.ch = or i1 %i.cc, %i.cf
  %i.ci = zext i1 %i.ch to i64
  %i.cj = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.bz, i64 %21)
  %i.ck = extractvalue { i64, i1 } %i.cj, 1
  %i.cl = zext i1 %i.ck to i64
  %i.cm = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.cg, i64 %i.bu) ; 2 uses
  %i.cn = extractvalue { i64, i1 } %i.cm, 1
  %i.co = extractvalue { i64, i1 } %i.cm, 0
  %i.cp = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.co, i64 %i.cl) ; 2 uses
  %i.cq = extractvalue { i64, i1 } %i.cp, 1
  %i.cr = extractvalue { i64, i1 } %i.cp, 0
  %i.cs = or i1 %i.cn, %i.cq
  %i.ct = zext i1 %i.cs to i64
  %i.cu = add nuw i64 %i.ci, %i.bw
  %i.cv = add i64 %i.cu, %i.ct
  %i.cw = zext i64 %i.cr to i128                  ; 4 uses
  %i.cx = mul nuw i128 %i.cw, %i.bj               ; 2 uses
  %i.cy = trunc i128 %i.cx to i64
  %i.cz = lshr i128 %i.cx, 64
  %i.da = trunc nuw i128 %i.cz to i64
  %i.db = zext i64 %i.cv to i128                  ; 4 uses
  %i.dc = mul nuw i128 %i.db, %i.bo               ; 2 uses
  %i.dd = trunc i128 %i.dc to i64
  %i.de = lshr i128 %i.dc, 64
  %i.df = trunc nuw i128 %i.de to i64
  %22 = mul nuw i128 %i.cw, %i.bo
  %23 = lshr i128 %22, 64
  %24 = trunc nuw i128 %23 to i64
  %i.dg = mul nuw i128 %i.db, %i.bj               ; 2 uses
  %i.dh = trunc i128 %i.dg to i64
  %i.di = lshr i128 %i.dg, 64
  %i.dj = trunc nuw i128 %i.di to i64
  %i.dk = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.cy, i64 %i.dd) ; 2 uses
  %i.dl = extractvalue { i64, i1 } %i.dk, 1
  %i.dm = extractvalue { i64, i1 } %i.dk, 0
  %i.dn = zext i1 %i.dl to i64
  %i.do = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.da, i64 %i.df) ; 2 uses
  %i.dp = extractvalue { i64, i1 } %i.do, 1
  %i.dq = extractvalue { i64, i1 } %i.do, 0
  %i.dr = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.dq, i64 %i.dn) ; 2 uses
  %i.ds = extractvalue { i64, i1 } %i.dr, 1
  %i.dt = extractvalue { i64, i1 } %i.dr, 0
  %i.du = or i1 %i.dp, %i.ds
  %.neg65.i.a = sext i1 %i.du to i64
  %i.dv = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.dm, i64 %24)
  %i.dw = extractvalue { i64, i1 } %i.dv, 1
  %i.dx = zext i1 %i.dw to i64
  %i.dy = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.dt, i64 %i.dh) ; 2 uses
  %i.dz = extractvalue { i64, i1 } %i.dy, 1
  %i.ea = extractvalue { i64, i1 } %i.dy, 0
  %i.eb = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.ea, i64 %i.dx) ; 2 uses
  %i.ec = extractvalue { i64, i1 } %i.eb, 1
  %i.ed = extractvalue { i64, i1 } %i.eb, 0
  %i.ee = or i1 %i.dz, %i.ec
  %.neg66.i = sext i1 %i.ee to i64
  %i.ef = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 0, i64 %i.ed) ; 2 uses
  %i.eg = extractvalue { i64, i1 } %i.ef, 1
  %i.eh = extractvalue { i64, i1 } %i.ef, 0
  %.neg.i.i = sext i1 %i.eg to i64
  %reass.sub = sub i64 %.neg65.i.a, %i.dj
  %.neg63.i = add i64 %reass.sub, -4611686018427387904
  %reass.sub.i = add i64 %.neg63.i, %.neg66.i
  %i.ei = add i64 %reass.sub.i, %.neg.i.i
  %i.ej = zext i64 %i.eh to i128                  ; 2 uses
  %i.ek = mul nuw i128 %i.ej, %i.db               ; 2 uses
  %i.el = trunc i128 %i.ek to i64
  %i.em = lshr i128 %i.ek, 64
  %i.en = trunc nuw i128 %i.em to i64
  %i.eo = zext i64 %i.ei to i128                  ; 2 uses
  %i.ep = mul nuw i128 %i.eo, %i.cw               ; 2 uses
  %i.eq = trunc i128 %i.ep to i64
  %i.er = lshr i128 %i.ep, 64
  %i.es = trunc nuw i128 %i.er to i64
  %25 = mul nuw i128 %i.ej, %i.cw
  %26 = lshr i128 %25, 64
  %27 = trunc nuw i128 %26 to i64
  %i.et = mul nuw i128 %i.eo, %i.db               ; 2 uses
  %i.eu = trunc i128 %i.et to i64
  %i.ev = lshr i128 %i.et, 64
  %i.ew = trunc nuw i128 %i.ev to i64
  %i.ex = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.el, i64 %i.eq) ; 2 uses
  %i.ey = extractvalue { i64, i1 } %i.ex, 1
  %i.ez = extractvalue { i64, i1 } %i.ex, 0
  %i.fa = zext i1 %i.ey to i64
  %i.fb = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.en, i64 %i.es) ; 2 uses
  %i.fc = extractvalue { i64, i1 } %i.fb, 1
  %i.fd = extractvalue { i64, i1 } %i.fb, 0
  %i.fe = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.fd, i64 %i.fa) ; 2 uses
  %i.ff = extractvalue { i64, i1 } %i.fe, 1
  %i.fg = extractvalue { i64, i1 } %i.fe, 0
  %i.fh = or i1 %i.fc, %i.ff
  %i.fi = zext i1 %i.fh to i64
  %i.fj = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.ez, i64 %27)
  %i.fk = extractvalue { i64, i1 } %i.fj, 1
  %i.fl = zext i1 %i.fk to i64
  %i.fm = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.fg, i64 %i.eu) ; 2 uses
  %i.fn = extractvalue { i64, i1 } %i.fm, 1
  %i.fo = extractvalue { i64, i1 } %i.fm, 0
  %i.fp = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.fo, i64 %i.fl) ; 2 uses
  %i.fq = extractvalue { i64, i1 } %i.fp, 1
  %i.fr = extractvalue { i64, i1 } %i.fp, 0
  %i.fs = or i1 %i.fn, %i.fq
  %i.ft = zext i1 %i.fs to i64
  %i.fu = add nuw i64 %i.fi, %i.ew
  %i.fv = add i64 %i.fu, %i.ft
  %i.fw = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %i.fr, i64 4) ; 2 uses
  %i.fx = extractvalue { i64, i1 } %i.fw, 1
  %i.fy = extractvalue { i64, i1 } %i.fw, 0
  %.neg.i44.i = sext i1 %i.fx to i64
  %i.fz = add i64 %i.fv, %.neg.i44.i              ; 2 uses
  %i.ga = lshr i64 %i.fz, 13                      ; 4 uses
  %i.gb = tail call i64 @llvm.fshl.i64(i64 %i.fz, i64 %i.fy, i64 51) ; 5 uses
  %i.gc = zext i64 %i.gb to i128                  ; 2 uses
  %i.gd = mul nuw i128 %i.gc, %i.gc               ; 2 uses
  %i.ge = trunc i128 %i.gd to i64
  %i.gf = lshr i128 %i.gd, 64
  %i.gg = trunc nuw i128 %i.gf to i64
  %i.gh = shl nuw nsw i64 %i.ga, 1
  %i.gi = mul i64 %i.gh, %i.gb
  %i.gj = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 0, i64 %i.ge) ; 2 uses
  %i.gk = extractvalue { i64, i1 } %i.gj, 1
  %i.gl = extractvalue { i64, i1 } %i.gj, 0
  %.neg.i45.neg.i = zext i1 %i.gk to i64
  %i.gm = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %i.gb, i64 %i.gl) ; 2 uses
  %i.gn = extractvalue { i64, i1 } %i.gm, 1
  %i.go = extractvalue { i64, i1 } %i.gm, 0
  %.neg.i46.i = sext i1 %i.gn to i64
  %i.gp = shl i64 %i.ag, 34
  %i.gq = sub i64 %i.ga, %i.gp
  %.neg.i = add i64 %i.gq, %i.gi
  %.neg58.i = add i64 %.neg.i, %i.gg
  %i.gr = add i64 %.neg58.i, %.neg.i45.neg.i
  %i.gs = add i64 %i.gr, %.neg.i46.i              ; 3 uses
  %i.gt = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.gb, i64 1) ; 2 uses
  %i.gu = extractvalue { i64, i1 } %i.gt, 1
  %i.gv = extractvalue { i64, i1 } %i.gt, 0
  %i.gw = zext i1 %i.gu to i64
  %i.gx = add nuw nsw i64 %i.ga, %i.gw
  %i.gy = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.gv, i64 %i.go) ; 2 uses
  %i.gz = extractvalue { i64, i1 } %i.gy, 1
  %i.ha = extractvalue { i64, i1 } %i.gy, 0
  %i.hb = zext i1 %i.gz to i64
  %i.hc = add i64 %i.gx, %i.gs
  %i.hd = add i64 %i.hc, %i.hb                    ; 2 uses
  %i.he = lshr i64 %i.gs, 63
  %i.hf = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.gb, i64 %i.he) ; 2 uses
  %i.hg = extractvalue { i64, i1 } %i.hf, 1
  %i.hh = extractvalue { i64, i1 } %i.hf, 0       ; 2 uses
  %i.hi = zext i1 %i.hg to i64
  %i.hj = add nuw nsw i64 %i.ga, %i.hi
  %i.hk = shl i64 %i.hh, 14                       ; 3 uses
  %i.hl = tail call i64 @llvm.fshl.i64(i64 %i.hj, i64 %i.hh, i64 14) ; 3 uses
  %i.hm = or i64 %i.hd, %i.ha
  %.not42.i = icmp eq i64 %i.hm, 0
  br i1 %.not42.i, label %bb.o, label %bb.l

bb.l:                                             ; preds = %._crit_edge.i
  %i.hn = xor i64 %i.hd, %i.gs
  %i.ho = icmp slt i64 %i.hn, 0
  br i1 %i.ho, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.hp = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %i.hk, i64 1) ; 2 uses
  %i.hq = extractvalue { i64, i1 } %i.hp, 1
  %i.hr = extractvalue { i64, i1 } %i.hp, 0
  %.neg.i47.i = sext i1 %i.hq to i64
  %i.hs = add i64 %i.hl, %.neg.i47.i
  br label %bb.o

bb.n:                                             ; preds = %bb.l
  %i.ht = or disjoint i64 %i.hk, 1
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m, %._crit_edge.i
  %.056.i = phi i64 [ %i.hl, %._crit_edge.i ], [ %i.hs, %bb.m ], [ %i.hl, %bb.n ] ; 3 uses
  %.0.i = phi i64 [ %i.hk, %._crit_edge.i ], [ %i.hr, %bb.m ], [ %i.ht, %bb.n ] ; 3 uses
  store i64 %.0.i, ptr %i.ac, align 8
  store i64 %.056.i, ptr %i.v, align 8
  %i.hu = ashr i32 %i.t, 1                        ; 2 uses
  store i32 %i.hu, ptr %i.s, align 4
  %.not43.i = icmp sgt i64 %.056.i, -1
  br i1 %.not43.i, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.hv = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %.0.i, i64 %.0.i) ; 2 uses
  %i.hw = extractvalue { i64, i1 } %i.hv, 1
  %i.hx = extractvalue { i64, i1 } %i.hv, 0
  store i64 %i.hx, ptr %i.ac, align 8
  %i.hy = zext i1 %i.hw to i64
  %i.hz = shl nuw i64 %.056.i, 1
  %i.ia = or disjoint i64 %i.hz, %i.hy
  store i64 %i.ia, ptr %i.v, align 8
  br label %parts128_sqrt.exit

bb.q:                                             ; preds = %bb.o
  %i.ib = add nsw i32 %i.hu, 1
  store i32 %i.ib, ptr %i.s, align 4
  br label %parts128_sqrt.exit

.thread:                                          ; preds = %bb.e, %bb.i, %bb.g
  %i.ic = load i64, ptr %2, align 4
  %i.id = or i64 %i.ic, 2049
  store i64 %i.id, ptr %2, align 4
  call void @parts128_default_nan(ptr dead_on_unwind nonnull writable sret(%struct.FloatParts128) align 8 %4, ptr noundef nonnull %2)
  br label %parts128_sqrt.exit

parts128_sqrt.exit:                               ; preds = %bb.d, %bb.f, %bb.g, %bb.p, %bb.q, %.thread
  %i.ie = call { i64, i16 } @floatx80_round_pack_canonical(ptr noundef nonnull %4, ptr noundef %2)
  br label %bb.r

bb.r:                                             ; preds = %parts128_sqrt.exit, %floatx80_default_nan.exit
  %.pn = phi { i64, i16 } [ %i.ie, %parts128_sqrt.exit ], [ %.fca.1.insert.i, %floatx80_default_nan.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #16
  ret { i64, i16 } %.pn
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @float32_log2(i32 noundef %0, ptr nofree noundef captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %2 = alloca %struct.FloatParts64, align 16      ; 6 uses
  %3 = alloca %struct.FloatParts64, align 16      ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  %i.a = zext i32 %0 to i64                       ; 2 uses
  %.not.i.i = icmp sgt i32 %0, -1
  %i.b = and i64 %i.a, 8388607
  %i.c = shl nuw nsw i64 %i.a, 9
  %.sroa.4.0.insert.ext.i.i = and i64 %i.c, 1095216660480
  %.sroa.2.0.insert.shift.i.i = select i1 %.not.i.i, i64 0, i64 256
  %.sroa.2.0.insert.insert.i.i = or disjoint i64 %.sroa.4.0.insert.ext.i.i, %.sroa.2.0.insert.shift.i.i
  store i64 %.sroa.2.0.insert.insert.i.i, ptr %2, align 16
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %i.b, ptr %i.d, align 8
  call fastcc void @parts64_canonicalize(ptr noundef %2, ptr noundef %1, ptr noundef nonnull @float32_params)
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.f = load <2 x i64>, ptr %2, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  store <2 x i64> %i.f, ptr %3, align 16
  call fastcc void @parts64_log2(ptr noundef %3, ptr noundef %1, i32 23)
  call fastcc void @parts64_uncanon(ptr noundef nonnull %3, ptr noundef %1, ptr noundef nonnull @float32_params, i1 noundef zeroext false)
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 1
  %i.h = load i8, ptr %i.g, align 1, !range !12, !noundef !13
  %i.i = zext nneg i8 %i.h to i64
  %i.j = shl nuw nsw i64 %i.i, 31
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.l = load i32, ptr %i.k, align 4
  %i.m = shl i32 %i.l, 23
  %i.n = and i32 %i.m, 2139095040
  %i.o = zext nneg i32 %i.n to i64
  %i.p = or disjoint i64 %i.j, %i.o
  %i.q = load i64, ptr %i.e, align 8
  %i.r = and i64 %i.q, 8388607
  %i.s = or disjoint i64 %i.p, %i.r
  %i.t = trunc nuw i64 %i.s to i32
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #16
  ret i32 %i.t
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @parts64_log2(ptr noundef nonnull %0, ptr nofree noundef captures(none) %1, i32 %.16.val) unnamed_addr #0 {
bb.a:
  %i.a = load i8, ptr %0, align 8
  switch i8 %i.a, label %bb.g [
    i8 2, label %bb.h
    i8 3, label %bb.b
    i8 6, label %bb.d
    i8 5, label %bb.d
    i8 1, label %bb.e
    i8 4, label %bb.f
  ], !prof !32

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.c = load i8, ptr %i.b, align 1, !range !12, !noundef !13
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %bb.h, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = load i64, ptr %1, align 4
  %i.f = or i64 %i.e, 16384
  store i64 %i.f, ptr %1, align 4
  br label %bb.h

bb.d:                                             ; preds = %bb.a, %bb.a
  %i.g = tail call { i64, i64 } @parts64_return_nan(ptr noundef nonnull %0, ptr noundef %1) ; 2 uses
  %i.h = extractvalue { i64, i64 } %i.g, 0
  %i.i = extractvalue { i64, i64 } %i.g, 1
  store i64 %i.h, ptr %0, align 8
  %.sroa.46.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.i, ptr %.sroa.46.0..sroa_idx, align 8
  br label %parts64_sub_normal.exit

bb.e:                                             ; preds = %bb.a
  %i.j = load i64, ptr %1, align 4
  %i.k = or i64 %i.j, 2
  store i64 %i.k, ptr %1, align 4
  store i8 4, ptr %0, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 1, ptr %i.l, align 1
  br label %parts64_sub_normal.exit

bb.f:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.n = load i8, ptr %i.m, align 1, !range !12, !noundef !13
  %i.o = trunc nuw i8 %i.n to i1
  br i1 %i.o, label %bb.av, label %parts64_sub_normal.exit, !prof !17

bb.g:                                             ; preds = %bb.a
  tail call void @g_assertion_message_expr(ptr noundef null, ptr noundef nonnull @.str.9, i32 noundef 4505, ptr noundef nonnull @__func__.parts64_log2, ptr noundef null) #15
  unreachable

bb.h:                                             ; preds = %bb.a, %bb.c, %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 7 uses
  %i.q = load i8, ptr %i.p, align 1, !range !12, !noundef !13
  %i.r = trunc nuw i8 %i.q to i1
  br i1 %i.r, label %bb.av, label %bb.i, !prof !17

bb.i:                                             ; preds = %bb.h
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 8 uses
  %i.t = load i32, ptr %i.s, align 4              ; 6 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 16 uses
  %i.v = load i64, ptr %i.u, align 8              ; 2 uses
  %i.w = add i32 %.16.val, 2
  %i.x = icmp eq i32 %i.t, -1
  br i1 %i.x, label %bb.j, label %bb.k, !prof !17

bb.j:                                             ; preds = %bb.i
  %i.y = shl i32 %.16.val, 1
  %i.z = add i32 %i.y, 2
  %i.aa = tail call i32 @llvm.smin.i32(i32 %i.z, i32 62)
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.053 = phi i32 [ %i.aa, %bb.j ], [ %i.w, %bb.i ] ; 2 uses
  %i.ab = icmp sgt i32 %.053, 0
  br i1 %i.ab, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.k
  %i.ac = icmp eq i32 %i.t, 0
  br label %bb.l

bb.l:                                             ; preds = %.lr.ph, %bb.w
  %.033 = phi i64 [ 0, %.lr.ph ], [ %.1, %bb.w ]  ; 4 uses
  %.04932 = phi i64 [ -9223372036854775808, %.lr.ph ], [ %i.cf, %bb.w ] ; 3 uses
  %.05131 = phi i32 [ 0, %.lr.ph ], [ %i.cg, %bb.w ] ; 3 uses
  %.05430 = phi i32 [ -1, %.lr.ph ], [ %.155, %bb.w ] ; 4 uses
  %.01729 = phi i64 [ 0, %.lr.ph ], [ %.219, %bb.w ] ; 2 uses
  %.02028 = phi i64 [ %i.v, %.lr.ph ], [ %.222, %bb.w ] ; 5 uses
  %.not59 = icmp eq i64 %.01729, 0
  br i1 %.not59, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ad = zext i64 %.01729 to i128                ; 3 uses
  %i.ae = zext i64 %.02028 to i128                ; 3 uses
  %i.af = mul nuw i128 %i.ad, %i.ae               ; 2 uses
  %i.ag = trunc i128 %i.af to i64                 ; 2 uses
  %i.ah = lshr i128 %i.af, 64
  %i.ai = trunc nuw i128 %i.ah to i64             ; 2 uses
  %2 = mul nuw i128 %i.ad, %i.ad
  %3 = lshr i128 %2, 64
  %4 = trunc nuw i128 %3 to i64
  %i.aj = mul nuw i128 %i.ae, %i.ae               ; 2 uses
  %i.ak = trunc i128 %i.aj to i64
  %i.al = lshr i128 %i.aj, 64
  %i.am = trunc nuw i128 %i.al to i64
  %i.an = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.ag, i64 %i.ag) ; 2 uses
  %i.ao = extractvalue { i64, i1 } %i.an, 1
  %i.ap = extractvalue { i64, i1 } %i.an, 0
  %i.aq = zext i1 %i.ao to i64
  %i.ar = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.ai, i64 %i.ai) ; 2 uses
  %i.as = extractvalue { i64, i1 } %i.ar, 1
  %i.at = extractvalue { i64, i1 } %i.ar, 0
  %i.au = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.at, i64 %i.aq) ; 2 uses
  %i.av = extractvalue { i64, i1 } %i.au, 1
  %i.aw = extractvalue { i64, i1 } %i.au, 0
  %i.ax = or i1 %i.as, %i.av
  %i.ay = zext i1 %i.ax to i64
  %i.az = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.ap, i64 %4)
  %i.ba = extractvalue { i64, i1 } %i.az, 1
  %i.bb = zext i1 %i.ba to i64
  %i.bc = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.aw, i64 %i.ak) ; 2 uses
  %i.bd = extractvalue { i64, i1 } %i.bc, 1
  %i.be = extractvalue { i64, i1 } %i.bc, 0
  %i.bf = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.be, i64 %i.bb) ; 2 uses
  %i.bg = extractvalue { i64, i1 } %i.bf, 1
  %i.bh = extractvalue { i64, i1 } %i.bf, 0
  %i.bi = or i1 %i.bd, %i.bg
  %i.bj = zext i1 %i.bi to i64
  %i.bk = add nuw i64 %i.ay, %i.am
  %i.bl = add i64 %i.bk, %i.bj
  br label %bb.r

bb.n:                                             ; preds = %bb.l
  %i.bm = and i64 %.02028, 4294967295
  %.not60 = icmp eq i64 %i.bm, 0
  br i1 %.not60, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bn = zext i64 %.02028 to i128                ; 2 uses
  %i.bo = mul nuw i128 %i.bn, %i.bn               ; 2 uses
  %i.bp = trunc i128 %i.bo to i64
  %i.bq = lshr i128 %i.bo, 64
  %i.br = trunc nuw i128 %i.bq to i64
  br label %bb.r

bb.p:                                             ; preds = %bb.n
  %i.bs = and i64 %.02028, 9223372032559808512
  %.not61 = icmp eq i64 %i.bs, 0
  br i1 %.not61, label %.loopexit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bt = lshr exact i64 %.02028, 32              ; 2 uses
  %i.bu = mul nuw i64 %i.bt, %i.bt
  br label %bb.r

bb.r:                                             ; preds = %bb.o, %bb.q, %bb.m
  %.121 = phi i64 [ %i.bu, %bb.q ], [ %i.br, %bb.o ], [ %i.bl, %bb.m ] ; 4 uses
  %.118 = phi i64 [ 0, %bb.q ], [ %i.bp, %bb.o ], [ %i.bh, %bb.m ] ; 4 uses
  %.not64 = icmp sgt i64 %.121, -1
  br i1 %.not64, label %bb.v, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bv = icmp eq i64 %.033, 0
  %i.bw = select i1 %i.ac, i1 %i.bv, i1 false
  br i1 %i.bw, label %bb.t, label %bb.u, !prof !17

bb.t:                                             ; preds = %bb.s
  %i.bx = sub i32 %.05430, %.05131
  br label %bb.w

bb.u:                                             ; preds = %bb.s
  %i.by = or i64 %.033, %.04932
  br label %bb.w

bb.v:                                             ; preds = %bb.r
  %i.bz = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %.118, i64 %.118) ; 2 uses
  %i.ca = extractvalue { i64, i1 } %i.bz, 1
  %i.cb = extractvalue { i64, i1 } %i.bz, 0
  %i.cc = zext i1 %i.ca to i64
  %i.cd = shl nuw i64 %.121, 1
  %i.ce = or disjoint i64 %i.cd, %i.cc
  br label %bb.w

bb.w:                                             ; preds = %bb.t, %bb.u, %bb.v
  %.222 = phi i64 [ %i.ce, %bb.v ], [ %.121, %bb.t ], [ %.121, %bb.u ] ; 2 uses
  %.219 = phi i64 [ %i.cb, %bb.v ], [ %.118, %bb.t ], [ %.118, %bb.u ] ; 2 uses
  %.155 = phi i32 [ %.05430, %bb.v ], [ %i.bx, %bb.t ], [ %.05430, %bb.u ] ; 2 uses
  %.152 = phi i32 [ %.05131, %bb.v ], [ 0, %bb.t ], [ %.05131, %bb.u ]
  %.150 = phi i64 [ %.04932, %bb.v ], [ -9223372036854775808, %bb.t ], [ %.04932, %bb.u ]
  %.1 = phi i64 [ %.033, %bb.v ], [ -9223372036854775808, %bb.t ], [ %i.by, %bb.u ] ; 2 uses
  %i.cf = lshr i64 %.150, 1
  %i.cg = add nsw i32 %.152, 1                    ; 2 uses
  %i.ch = icmp slt i32 %i.cg, %.053
  br i1 %i.ch, label %bb.l, label %._crit_edge.loopexit, !llvm.loop !231

._crit_edge.loopexit:                             ; preds = %bb.w
  %i.ci = icmp ne i64 %.219, 0
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.k
  %.020.lcssa = phi i64 [ %i.v, %bb.k ], [ %.222, %._crit_edge.loopexit ]
  %.017.lcssa = phi i1 [ false, %bb.k ], [ %i.ci, %._crit_edge.loopexit ]
  %.054.lcssa = phi i32 [ -1, %bb.k ], [ %.155, %._crit_edge.loopexit ]
  %.0.lcssa = phi i64 [ 0, %bb.k ], [ %.1, %._crit_edge.loopexit ]
  %i.cj = and i64 %.020.lcssa, 9223372036854775807
  %i.ck = icmp ne i64 %i.cj, 0
  %i.cl = select i1 %.017.lcssa, i1 true, i1 %i.ck
  %i.cm = zext i1 %i.cl to i64
  %i.cn = or i64 %.0.lcssa, %i.cm
  br label %.loopexit

.loopexit:                                        ; preds = %bb.p, %._crit_edge
  %.05425 = phi i32 [ %.054.lcssa, %._crit_edge ], [ %.05430, %bb.p ] ; 2 uses
  %.2 = phi i64 [ %i.cn, %._crit_edge ], [ %.033, %bb.p ] ; 6 uses
  %i.co = sext i32 %i.t to i64                    ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 noundef 0, i64 noundef 16, i1 noundef false) #16
  %i.cp = icmp eq i32 %i.t, 0
  br i1 %i.cp, label %parts64_sint_to_float.exit.thread, label %bb.x

bb.x:                                             ; preds = %.loopexit
  store i8 2, ptr %0, align 8
  %i.cq = icmp slt i32 %i.t, 0
  br i1 %i.cq, label %bb.y, label %parts64_sint_to_float.exit

bb.y:                                             ; preds = %bb.x
  %i.cr = sub nsw i64 0, %i.co
  store i8 1, ptr %i.p, align 1
  br label %parts64_sint_to_float.exit

parts64_sint_to_float.exit:                       ; preds = %bb.x, %bb.y
  %.0.i = phi i64 [ %i.cr, %bb.y ], [ %i.co, %bb.x ] ; 2 uses
  %i.cs = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %.0.i, i1 false) ; 2 uses
  %i.ct = trunc nuw nsw i64 %i.cs to i32
  %i.cu = sub nsw i32 63, %i.ct
  store i32 %i.cu, ptr %i.s, align 4
  %i.cv = shl i64 %.0.i, %i.cs
  store i64 %i.cv, ptr %i.u, align 8
  %.not62 = icmp eq i64 %.2, 0
  br i1 %.not62, label %parts64_sub_normal.exit, label %frac64_normalize.exit

parts64_sint_to_float.exit.thread:                ; preds = %.loopexit
  store i8 1, ptr %0, align 8
  %.not6247 = icmp eq i64 %.2, 0
  br i1 %.not6247, label %parts64_sub_normal.exit, label %bb.au

frac64_normalize.exit:                            ; preds = %parts64_sint_to_float.exit
  %i.cw = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %.2, i1 true) ; 2 uses
  %i.cx = trunc nuw nsw i64 %i.cw to i32
  %i.cy = shl i64 %.2, %i.cw                      ; 10 uses
  %i.cz = sub i32 %.05425, %i.cx                  ; 5 uses
  %i.da = icmp slt i32 %i.t, 0
  %i.db = load i32, ptr %i.s, align 4             ; 7 uses
  %i.dc = sub i32 %i.db, %i.cz                    ; 11 uses
  %i.dd = icmp sgt i32 %i.dc, 0                   ; 2 uses
  br i1 %i.da, label %bb.z, label %bb.al

bb.z:                                             ; preds = %frac64_normalize.exit
  br i1 %i.dd, label %bb.aa, label %bb.ad

bb.aa:                                            ; preds = %bb.z
  %i.de = icmp samesign ult i32 %i.dc, 64
  br i1 %i.de, label %bb.ab, label %bb.ac, !prof !14

bb.ab:                                            ; preds = %bb.aa
  %i.df = zext nneg i32 %i.dc to i64
  %i.dg = lshr i64 %i.cy, %i.df
  %i.dh = tail call i64 asm "shrd ${2:b}, $1, $0", "=r,r,{cx}i,0,~{dirflag},~{fpsr},~{flags}"(i64 %i.cy, i32 range(i32 1, -2147483646) %i.dc, i64 0) #17, !srcloc !15
  %i.di = icmp ne i64 %i.dh, 0
  %i.dj = zext i1 %i.di to i64
  %i.dk = or i64 %i.dg, %i.dj
  br label %frac64_shrjam.exit.i

bb.ac:                                            ; preds = %bb.aa
  %i.dl = icmp ne i64 %i.cy, 0
  %i.dm = zext i1 %i.dl to i64
  br label %frac64_shrjam.exit.i

frac64_shrjam.exit.i:                             ; preds = %bb.ac, %bb.ab
  %.0.i.i = phi i64 [ %i.dk, %bb.ab ], [ %i.dm, %bb.ac ]
  %.val32.i = load i64, ptr %i.u, align 8
  %i.dn = sub i64 %.val32.i, %.0.i.i              ; 2 uses
  store i64 %i.dn, ptr %i.u, align 8
  br label %bb.aj

bb.ad:                                            ; preds = %bb.z
  %i.do = icmp slt i32 %i.dc, 0
  br i1 %i.do, label %bb.ae, label %bb.ah

bb.ae:                                            ; preds = %bb.ad
  store i32 %i.cz, ptr %i.s, align 4
  %i.dp = load i8, ptr %i.p, align 1, !range !12, !noundef !13
  %i.dq = xor i8 %i.dp, 1
  store i8 %i.dq, ptr %i.p, align 1
  %i.dr = sub i32 0, %i.dc                        ; 3 uses
  %i.ds = load i64, ptr %i.u, align 8             ; 3 uses
  %i.dt = icmp slt i32 %i.dr, 64
  br i1 %i.dt, label %bb.af, label %bb.ag, !prof !14

bb.af:                                            ; preds = %bb.ae
  %i.du = zext nneg i32 %i.dr to i64
  %i.dv = lshr i64 %i.ds, %i.du
  %i.dw = tail call i64 asm "shrd ${2:b}, $1, $0", "=r,r,{cx}i,0,~{dirflag},~{fpsr},~{flags}"(i64 %i.ds, i32 range(i32 1, -2147483646) %i.dr, i64 0) #17, !srcloc !15
  %i.dx = icmp ne i64 %i.dw, 0
  %i.dy = zext i1 %i.dx to i64
  %i.dz = or i64 %i.dv, %i.dy
  br label %frac64_shrjam.exit36.i

bb.ag:                                            ; preds = %bb.ae
  %i.ea = icmp ne i64 %i.ds, 0
  %i.eb = zext i1 %i.ea to i64
  br label %frac64_shrjam.exit36.i

frac64_shrjam.exit36.i:                           ; preds = %bb.ag, %bb.af
  %.0.i35.i = phi i64 [ %i.dz, %bb.af ], [ %i.eb, %bb.ag ]
  %i.ec = sub i64 %i.cy, %.0.i35.i                ; 2 uses
  store i64 %i.ec, ptr %i.u, align 8
  br label %bb.aj

end_hunk_0
begin_hunk_1_@float32_do_compare:bb.a
  %.1.i = phi i32 [ %i.ao, %bb.u ], [ %spec.select.i, %.thread ], [ 0, %bb.n ], [ 2, %bb.i ], [ %i.aq, %bb.v ], [ 2, %bb.j ], [ 2, %bb.k ], [ 0, %bb.q ]
  ret i32 %.1.i
}

; Function Attrs: noinline nounwind sspstrong uwtable
define internal fastcc range(i32 -1, 3) i32 @float64_do_compare(i64 noundef %0, i64 noundef %1, ptr nofree noundef captures(none) %2, i1 noundef zeroext %3) unnamed_addr #7 {
bb.a:
  %4 = alloca %struct.FloatParts64, align 8       ; 6 uses
  %5 = alloca %struct.FloatParts64, align 8       ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  %i.a = and i64 %0, 4503599627370495
  %i.b = lshr i64 %0, 20
  %.sroa.4.0.insert.ext.i.i6 = and i64 %i.b, 8791798054912
  %i.c = lshr i64 %0, 55
  %.sroa.2.0.insert.shift.i.i7 = and i64 %i.c, 256
  %.sroa.2.0.insert.insert.i.i8 = or disjoint i64 %.sroa.4.0.insert.ext.i.i6, %.sroa.2.0.insert.shift.i.i7
  store i64 %.sroa.2.0.insert.insert.i.i8, ptr %4, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store i64 %i.a, ptr %i.d, align 8
  call fastcc void @parts64_canonicalize(ptr noundef %4, ptr noundef %2, ptr noundef nonnull @float64_params)
  %.fca.0.load.i11 = load i64, ptr %4, align 8    ; 4 uses
  %.fca.1.load.i13 = load i64, ptr %i.d, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  %.sroa.0.sroa.037.0.extract.trunc = trunc i64 %.fca.0.load.i11 to i8 ; 2 uses
  %.sroa.0.sroa.7.0.extract.shift = lshr i64 %.fca.0.load.i11, 8 ; 3 uses
  %.sroa.0.sroa.7.0.extract.trunc = trunc i64 %.sroa.0.sroa.7.0.extract.shift to i8 ; 2 uses
  %.sroa.0.sroa.1138.0.extract.shift = lshr i64 %.fca.0.load.i11, 32 ; 2 uses
  %.sroa.0.sroa.1138.0.extract.trunc = trunc nuw i64 %.sroa.0.sroa.1138.0.extract.shift to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  %i.e = and i64 %1, 4503599627370495
  %i.f = lshr i64 %1, 20
  %.sroa.4.0.insert.ext.i.i = and i64 %i.f, 8791798054912
  %i.g = lshr i64 %1, 55
  %.sroa.2.0.insert.shift.i.i = and i64 %i.g, 256
  %.sroa.2.0.insert.insert.i.i = or disjoint i64 %.sroa.4.0.insert.ext.i.i, %.sroa.2.0.insert.shift.i.i
  store i64 %.sroa.2.0.insert.insert.i.i, ptr %5, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  store i64 %i.e, ptr %i.h, align 8
  call fastcc void @parts64_canonicalize(ptr noundef %5, ptr noundef %2, ptr noundef nonnull @float64_params)
  %.fca.0.load.i = load i64, ptr %5, align 8      ; 4 uses
  %.fca.1.load.i = load i64, ptr %i.h, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  %.sroa.0.sroa.6.0.extract.shift = lshr i64 %.fca.0.load.i, 8 ; 2 uses
  %.sroa.0.sroa.6.0.extract.trunc = trunc i64 %.sroa.0.sroa.6.0.extract.shift to i8 ; 2 uses
  %.sroa.0.sroa.925.0.extract.shift = lshr i64 %.fca.0.load.i, 32 ; 2 uses
  %.sroa.0.sroa.925.0.extract.trunc = trunc nuw i64 %.sroa.0.sroa.925.0.extract.shift to i32
  %i.i = trunc i64 %.fca.0.load.i11 to i32
  %i.j = and i32 %i.i, 255
  %i.k = shl nuw i32 1, %i.j
  %i.l = trunc i64 %.fca.0.load.i to i32
  %i.m = and i32 %i.l, 255
  %i.n = shl nuw i32 1, %i.m
  %i.o = or i32 %i.n, %i.k                        ; 8 uses
  %i.p = and i32 %i.o, -13
  %.not.i16 = icmp eq i32 %i.p, 0
  br i1 %.not.i16, label %bb.b, label %bb.g, !prof !14

bb.b:                                             ; preds = %bb.a
  %.not.i17 = icmp samesign ult i32 %i.o, 8
  br i1 %.not.i17, label %record_denormals_used.exit, label %bb.c, !prof !14

bb.c:                                             ; preds = %bb.b
  %i.q = load i64, ptr %2, align 4
  %i.r = or i64 %i.q, 16384
  store i64 %i.r, ptr %2, align 4
  br label %record_denormals_used.exit

record_denormals_used.exit:                       ; preds = %bb.b, %bb.c
  %.not46.not.i = icmp eq i8 %.sroa.0.sroa.7.0.extract.trunc, %.sroa.0.sroa.6.0.extract.trunc
  br i1 %.not46.not.i, label %bb.d, label %bb.u

bb.d:                                             ; preds = %record_denormals_used.exit
  %i.s = icmp eq i64 %.sroa.0.sroa.1138.0.extract.shift, %.sroa.0.sroa.925.0.extract.shift
  br i1 %i.s, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.t = tail call range(i32 -1, 2) i32 @llvm.ucmp.i32.i64(i64 %.fca.1.load.i13, i64 %.fca.1.load.i)
  br label %.thread

bb.f:                                             ; preds = %bb.d
  %i.u = icmp slt i32 %.sroa.0.sroa.1138.0.extract.trunc, %.sroa.0.sroa.925.0.extract.trunc
  %..i = select i1 %i.u, i32 -1, i32 1
  br label %.thread

.thread:                                          ; preds = %bb.e, %bb.f
  %.038.i = phi i32 [ %i.t, %bb.e ], [ %..i, %bb.f ] ; 2 uses
  %i.v = trunc i64 %.sroa.0.sroa.7.0.extract.shift to i1
  %i.w = sub nsw i32 0, %.038.i
  %spec.select.i = select i1 %i.v, i32 %i.w, i32 %.038.i
  br label %parts64_compare.exit

bb.g:                                             ; preds = %bb.a
  %i.x = and i32 %i.o, 96
  %.not.i = icmp eq i32 %i.x, 0
  br i1 %.not.i, label %bb.l, label %bb.h, !prof !14

bb.h:                                             ; preds = %bb.g
  %i.y = and i32 %i.o, 64
  %.not45.i = icmp eq i32 %i.y, 0
  br i1 %.not45.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.z = load i64, ptr %2, align 4
  %i.aa = or i64 %i.z, 8193
  store i64 %i.aa, ptr %2, align 4
  br label %parts64_compare.exit

bb.j:                                             ; preds = %bb.h
  br i1 %3, label %parts64_compare.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ab = load i64, ptr %2, align 4
  %i.ac = or i64 %i.ab, 1
  store i64 %i.ac, ptr %2, align 4
  br label %parts64_compare.exit

bb.l:                                             ; preds = %bb.g
  %i.ad = and i32 %i.o, 8
  %.not.i18 = icmp eq i32 %i.ad, 0
  br i1 %.not.i18, label %record_denormals_used.exit19, label %bb.m, !prof !14

bb.m:                                             ; preds = %bb.l
  %i.ae = load i64, ptr %2, align 4
  %i.af = or i64 %i.ae, 16384
  store i64 %i.af, ptr %2, align 4
  br label %record_denormals_used.exit19

record_denormals_used.exit19:                     ; preds = %bb.l, %bb.m
  %i.ag = and i32 %i.o, 2
  %.not42.i = icmp eq i32 %i.ag, 0
  br i1 %.not42.i, label %bb.p, label %bb.n

bb.n:                                             ; preds = %record_denormals_used.exit19
  %i.ah = icmp eq i32 %i.o, 2
  br i1 %i.ah, label %parts64_compare.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ai = icmp eq i8 %.sroa.0.sroa.037.0.extract.trunc, 1
  br i1 %i.ai, label %bb.v, label %bb.u

bb.p:                                             ; preds = %record_denormals_used.exit19
  %i.aj = icmp eq i32 %i.o, 16
  br i1 %i.aj, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.ak = icmp eq i8 %.sroa.0.sroa.7.0.extract.trunc, %.sroa.0.sroa.6.0.extract.trunc
  br i1 %i.ak, label %parts64_compare.exit, label %bb.u

bb.r:                                             ; preds = %bb.p
  %i.al = and i64 %.fca.0.load.i, 255
  %i.am = icmp eq i64 %i.al, 4
  br i1 %i.am, label %bb.v, label %bb.s

bb.s:                                             ; preds = %bb.r
  %.not44.i = icmp eq i8 %.sroa.0.sroa.037.0.extract.trunc, 4
  br i1 %.not44.i, label %bb.u, label %bb.t, !prof !14

bb.t:                                             ; preds = %bb.s
  tail call void @g_assertion_message_expr(ptr noundef null, ptr noundef nonnull @.str.3, i32 noundef 1623, ptr noundef nonnull @__func__.parts64_compare, ptr noundef nonnull @.str.8) #15
  unreachable

bb.u:                                             ; preds = %record_denormals_used.exit, %bb.s, %bb.q, %bb.o
  %i.an = trunc i64 %.sroa.0.sroa.7.0.extract.shift to i1
  %i.ao = select i1 %i.an, i32 -1, i32 1
  br label %parts64_compare.exit

bb.v:                                             ; preds = %bb.r, %bb.o
  %i.ap = trunc i64 %.sroa.0.sroa.6.0.extract.shift to i1
  %i.aq = select i1 %i.ap, i32 1, i32 -1
  br label %parts64_compare.exit

parts64_compare.exit:                             ; preds = %.thread, %bb.i, %bb.j, %bb.k, %bb.n, %bb.q, %bb.u, %bb.v
  %.1.i = phi i32 [ %i.ao, %bb.u ], [ %spec.select.i, %.thread ], [ 0, %bb.n ], [ 2, %bb.i ], [ %i.aq, %bb.v ], [ 2, %bb.j ], [ 2, %bb.k ], [ 0, %bb.q ]
  ret i32 %.1.i
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.fshl.i64(i64, i64, i64) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.usub.sat.i64(i64, i64) #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare range(i32 -1, 2) i32 @llvm.ucmp.i32.i64(i64, i64) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i1 @llvm.is.fpclass.f64(double, i32 immarg) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #8

attributes #0 = { nounwind sspstrong uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #4 = { mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #5 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #6 = { nounwind sspstrong memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #7 = { noinline nounwind sspstrong uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #8 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #10 = { mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #11 = { mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #12 = { cold nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #13 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #14 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #15 = { noreturn nounwind }
attributes #16 = { nounwind }
attributes #17 = { nounwind memory(none) }
attributes #18 = { nounwind memory(read) }
attributes #19 = { alwaysinline nounwind }

!llvm.module.flags = !{!5, !6, !7, !8, !9, !10}
!llvm.ident = !{!11}

!0 = distinct !{!0, !18}
!1 = distinct !{null, ptr @soft_f32_div, ptr @soft_f32_mul, null}
!2 = distinct !{null}
!3 = distinct !{null, ptr @soft_f64_div, ptr @soft_f64_mul, null}
!4 = distinct !{null}
!5 = !{i32 7, !"Dwarf Version", i32 5}
!6 = !{i32 2, !"Debug Info Version", i32 3}
!7 = !{i32 8, !"PIC Level", i32 2}
!8 = !{i32 7, !"PIE Level", i32 2}
!9 = !{i32 7, !"uwtable", i32 2}
!10 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!11 = !{!"Ubuntu clang version 24.0.0 (++20260815081758+83e1178daa12-1~exp1~20260815201912.1788)"}
!12 = !{i8 0, i8 2}
!13 = !{}
!14 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!15 = !{i64 3800519}
!16 = !{i64 3800085}
!17 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!18 = !{!"llvm.loop.mustprogress"}
!19 = !{!"branch_weights", i32 4000000, i32 2001, i32 2000}
!20 = !{!"branch_weights", i32 4001, i32 1}
!21 = !{i64 3644597}
!22 = !{!"branch_weights", !"expected", i32 2575691, i32 2144907957}
!23 = !{!"auto-init"}
!24 = !{!"branch_weights", i32 2146410443, i32 1073205}
!25 = !{!"branch_weights", !"expected", i32 -2147483648, i32 0}
!26 = !{!"branch_weights", i32 -2147483648, i32 0}
!27 = !{!"branch_weights", !"expected", i32 2575692, i32 2144907956}
!28 = !{!"branch_weights", i32 4001, i32 4000000}
!29 = !{!"branch_weights", i32 6003000, i32 -294967296}
!30 = !{!"branch_weights", i32 -100663296, i32 2097152}
!31 = !{!"branch_weights", i32 -2861880, i32 2861880}
!32 = !{!"branch_weights", i32 1, i32 12000, i32 1, i32 1, i32 1, i32 1, i32 1}
!33 = !{!"branch_weights", i32 1073205, i32 2146410443}
!34 = !{!"branch_weights", !"expected", i32 1073204, i32 2146410444}
!35 = distinct !{!35, !"parts128_default_nan"}
!36 = distinct !{!36, !35, !"parts128_default_nan: argument 0"}
!37 = distinct !{!37, !"parts128_silence_nan"}
!38 = distinct !{!38, !37, !"parts128_silence_nan: argument 0"}
!39 = distinct !{!39, !"parts128_default_nan"}
!40 = distinct !{!40, !39, !"parts128_default_nan: argument 0"}
!41 = !{!36}
!42 = !{!38}
!43 = !{!40}
!44 = distinct !{!44, !"parts128_default_nan"}
!45 = distinct !{!45, !44, !"parts128_default_nan: argument 0"}
!46 = distinct !{!46, !"parts128_silence_nan"}
!47 = distinct !{!47, !46, !"parts128_silence_nan: argument 0"}
!48 = !{!45}
!49 = !{!47}
!50 = distinct !{!50, !18}
!51 = distinct !{!51, !18}
!52 = distinct !{!52, !"parts128_silence_nan"}
!53 = distinct !{!53, !52, !"parts128_silence_nan: argument 0"}
!54 = distinct !{!54, !"parts128_default_nan"}
!55 = distinct !{!55, !54, !"parts128_default_nan: argument 0"}
!56 = !{!53}
!57 = !{!55}
!58 = distinct !{!58, !18}
!59 = distinct !{!59, !18}
!60 = distinct !{!60, !18}
!61 = distinct !{!61, !18}
!62 = distinct !{!62, !"float128_unpack_raw"}
!63 = distinct !{!63, !62, !"float128_unpack_raw: argument 0"}
!64 = !{!63}
!65 = distinct !{!65, !"float128_unpack_raw"}
!66 = distinct !{!66, !65, !"float128_unpack_raw: argument 0"}
!67 = distinct !{!67, !"float128_unpack_raw"}
!68 = distinct !{!68, !67, !"float128_unpack_raw: argument 0"}
!69 = distinct !{!69, !"parts128_addsub"}
!70 = distinct !{!70, !69, !"parts128_addsub: argument 0"}
!71 = !{!66}
!72 = !{!68}
!73 = !{!70}
!74 = distinct !{!74, !"parts128_addsub"}
!75 = distinct !{!75, !74, !"parts128_addsub: argument 0"}
!76 = !{!75}
!77 = distinct !{!77, !"float128_unpack_raw"}
!78 = distinct !{!78, !77, !"float128_unpack_raw: argument 0"}
!79 = distinct !{!79, !"float128_unpack_raw"}
!80 = distinct !{!80, !79, !"float128_unpack_raw: argument 0"}
!81 = distinct !{!81, !"parts128_mul"}
!82 = distinct !{!82, !81, !"parts128_mul: argument 0"}
!83 = !{!78}
!84 = !{!80}
!85 = !{!82}
!86 = distinct !{!86, !"parts128_mul"}
!87 = distinct !{!87, !86, !"parts128_mul: argument 0"}
!88 = !{!87}
!89 = distinct !{!89, !"float128_unpack_canonical"}
!90 = distinct !{!90, !89, !"float128_unpack_canonical: argument 0"}
!91 = distinct !{!91, !"float128_unpack_raw"}
!92 = distinct !{!92, !91, !"float128_unpack_raw: argument 0"}
!93 = distinct !{!93, !"float128_unpack_canonical"}
!94 = distinct !{!94, !93, !"float128_unpack_canonical: argument 0"}
!95 = distinct !{!95, !"float128_unpack_raw"}
!96 = distinct !{!96, !95, !"float128_unpack_raw: argument 0"}
!97 = distinct !{!97, !"float128_unpack_canonical"}
!98 = distinct !{!98, !97, !"float128_unpack_canonical: argument 0"}
!99 = distinct !{!99, !"float128_unpack_raw"}
!100 = distinct !{!100, !99, !"float128_unpack_raw: argument 0"}
!101 = !{!92, !90}
!102 = !{!96, !94}
!103 = !{!100, !98}
!104 = !{!"branch_weights", !"expected", i32 0, i32 -2147483648}
!105 = distinct !{!105, !"float128_unpack_raw"}
!106 = distinct !{!106, !105, !"float128_unpack_raw: argument 0"}
!107 = distinct !{!107, !"float128_unpack_raw"}
!108 = distinct !{!108, !107, !"float128_unpack_raw: argument 0"}
!109 = distinct !{!109, !"parts128_div"}
!110 = distinct !{!110, !109, !"parts128_div: argument 0"}
!111 = !{!106}
!112 = !{!108}
!113 = !{!110}
!114 = distinct !{!114, !18}
!115 = distinct !{!115, !18}
!116 = distinct !{!116, !"float128_unpack_canonical"}
!117 = distinct !{!117, !116, !"float128_unpack_canonical: argument 0"}
!118 = distinct !{!118, !"float128_unpack_raw"}
!119 = distinct !{!119, !118, !"float128_unpack_raw: argument 0"}
!120 = distinct !{!120, !"float128_unpack_canonical"}
!121 = distinct !{!121, !120, !"float128_unpack_canonical: argument 0"}
!122 = distinct !{!122, !"float128_unpack_raw"}
!123 = distinct !{!123, !122, !"float128_unpack_raw: argument 0"}
!124 = !{!119, !117}
!125 = !{!123, !121}
!126 = distinct !{!126, !18}
!127 = distinct !{!127, !18}
!128 = distinct !{!128, !"float128_unpack_canonical"}
!129 = distinct !{!129, !128, !"float128_unpack_canonical: argument 0"}
!130 = distinct !{!130, !"float128_unpack_raw"}
!131 = distinct !{!131, !130, !"float128_unpack_raw: argument 0"}
!132 = !{!131, !129}
!133 = distinct !{!133, !"float128_unpack_canonical"}
!134 = distinct !{!134, !133, !"float128_unpack_canonical: argument 0"}
!135 = distinct !{!135, !"float128_unpack_raw"}
!136 = distinct !{!136, !135, !"float128_unpack_raw: argument 0"}
!137 = !{!136, !134}
!138 = distinct !{!138, !"parts64_to_parts128"}
!139 = distinct !{!139, !138, !"parts64_to_parts128: argument 0"}
!140 = !{!139}
!141 = distinct !{!141, !"parts64_to_parts128"}
!142 = distinct !{!142, !141, !"parts64_to_parts128: argument 0"}
!143 = !{!142}
!144 = distinct !{!144, !"parts128_default_nan"}
!145 = distinct !{!145, !144, !"parts128_default_nan: argument 0"}
!146 = !{!145}
!147 = distinct !{!147, !"parts64_to_parts128"}
!148 = distinct !{!148, !147, !"parts64_to_parts128: argument 0"}
!149 = !{!148}
!150 = distinct !{!150, !"parts64_to_parts128"}
!151 = distinct !{!151, !150, !"parts64_to_parts128: argument 0"}
!152 = !{!151}
!153 = distinct !{!153, !"float128_unpack_canonical"}
!154 = distinct !{!154, !153, !"float128_unpack_canonical: argument 0"}
!155 = distinct !{!155, !"float128_unpack_raw"}
!156 = distinct !{!156, !155, !"float128_unpack_raw: argument 0"}
!157 = !{!156, !154}
!158 = distinct !{!158, !"float128_unpack_canonical"}
!159 = distinct !{!159, !158, !"float128_unpack_canonical: argument 0"}
!160 = distinct !{!160, !"float128_unpack_raw"}
!161 = distinct !{!161, !160, !"float128_unpack_raw: argument 0"}
!162 = distinct !{!162, !"parts128_round_to_int"}
!163 = distinct !{!163, !162, !"parts128_round_to_int: argument 0"}
!164 = !{!161, !159}
!165 = !{!163}
!166 = distinct !{!166, !"parts128_round_to_int"}
!167 = distinct !{!167, !166, !"parts128_round_to_int: argument 0"}
!168 = !{!167}
!169 = distinct !{!169, !"float128_unpack_canonical"}
!170 = distinct !{!170, !169, !"float128_unpack_canonical: argument 0"}
!171 = distinct !{!171, !"float128_unpack_raw"}
!172 = distinct !{!172, !171, !"float128_unpack_raw: argument 0"}
!173 = !{!172, !170}
!174 = distinct !{!174, !"float128_unpack_canonical"}
!175 = distinct !{!175, !174, !"float128_unpack_canonical: argument 0"}
end_hunk_1
