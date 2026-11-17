Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/duckdb/original/ub_duckdb_common_types?download=true
inline.NumInlined: 41209
inline.NumDeleted: 6301
loop-unroll.NumCompletelyUnrolled: 156
loop-unroll.NumRuntimeUnrolled: 69
loop-unroll.NumUnrolled: 229
begin_hunk_0_@_ZN6duckdb6UUIDv718GenerateRandomUUIDEv:bb.a

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define { i64, i64 } @_ZN6duckdb8BaseUUID8FromBlobEPKh(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #10 align 2 !guid !2637 {
.preheader:
  %i.a = load i8, ptr %0, align 1, !tbaa !871
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.c = load i8, ptr %i.b, align 1, !tbaa !871
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.e = load i8, ptr %i.d, align 1, !tbaa !871
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 3
  %i.g = load i8, ptr %i.f, align 1, !tbaa !871
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.i = load i8, ptr %i.h, align 1, !tbaa !871
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 5
  %i.k = load i8, ptr %i.j, align 1, !tbaa !871
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 6
  %i.m = load i8, ptr %i.l, align 1, !tbaa !871
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 7
  %i.o = load i8, ptr %i.n, align 1, !tbaa !871
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.q = load i8, ptr %i.p, align 1, !tbaa !871
  %i.r = zext i8 %i.q to i64
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 9
  %i.t = load i8, ptr %i.s, align 1, !tbaa !871
  %i.u = zext i8 %i.t to i64
  %i.v = shl nuw nsw i64 %i.r, 16
  %i.w = shl nuw nsw i64 %i.u, 8
  %i.x = or disjoint i64 %i.v, %i.w
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 10
  %i.z = load i8, ptr %i.y, align 1, !tbaa !871
  %i.aa = zext i8 %i.z to i64
  %i.ab = or disjoint i64 %i.x, %i.aa
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 11
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !871
  %i.ae = zext i8 %i.ad to i64
  %i.af = shl nuw nsw i64 %i.ab, 16
  %i.ag = shl nuw nsw i64 %i.ae, 8
  %i.ah = or disjoint i64 %i.af, %i.ag
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !871
  %i.ak = zext i8 %i.aj to i64
  %i.al = or disjoint i64 %i.ah, %i.ak
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 13
  %i.an = load i8, ptr %i.am, align 1, !tbaa !871
  %i.ao = zext i8 %i.an to i64
  %i.ap = shl nuw nsw i64 %i.al, 16
  %i.aq = shl nuw nsw i64 %i.ao, 8
  %i.ar = or disjoint i64 %i.ap, %i.aq
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 14
  %i.at = load i8, ptr %i.as, align 1, !tbaa !871
  %i.au = zext i8 %i.at to i64
  %i.av = or disjoint i64 %i.ar, %i.au
  %i.aw = shl nuw i64 %i.av, 8
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 15
  %i.ay = load i8, ptr %i.ax, align 1, !tbaa !871
  %i.az = zext i8 %i.ay to i64
  %i.ba = or disjoint i64 %i.aw, %i.az
  %i.bb = zext i8 %i.a to i64
  %i.bc = zext i8 %i.c to i64
  %i.bd = shl nuw nsw i64 %i.bb, 16
  %i.be = shl nuw nsw i64 %i.bc, 8
  %i.bf = or disjoint i64 %i.bd, %i.be
  %i.bg = zext i8 %i.e to i64
  %i.bh = or disjoint i64 %i.bf, %i.bg
  %i.bi = zext i8 %i.g to i64
  %i.bj = shl nuw nsw i64 %i.bh, 16
  %i.bk = shl nuw nsw i64 %i.bi, 8
  %i.bl = or disjoint i64 %i.bj, %i.bk
  %i.bm = zext i8 %i.i to i64
  %i.bn = or disjoint i64 %i.bl, %i.bm
  %i.bo = zext i8 %i.k to i64
  %i.bp = shl nuw nsw i64 %i.bn, 16
  %i.bq = shl nuw nsw i64 %i.bo, 8
  %i.br = or disjoint i64 %i.bp, %i.bq
  %i.bs = zext i8 %i.m to i64
  %i.bt = or disjoint i64 %i.br, %i.bs
  %i.bu = shl nuw i64 %i.bt, 8
  %i.bv = zext i8 %i.o to i64
  %i.bw = or disjoint i64 %i.bu, %i.bv
  %i.bx = xor i64 %i.bw, -9223372036854775808
  %.fca.0.insert = insertvalue { i64, i64 } poison, i64 %i.ba, 0
  %.fca.1.insert = insertvalue { i64, i64 } %.fca.0.insert, i64 %i.bx, 1
  ret { i64, i64 } %.fca.1.insert
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @_ZN6duckdb8BaseUUID6ToBlobENS_9hugeint_tEPh(i64 %0, i64 %1, ptr nofree noundef writeonly captures(none) initializes((0, 16)) %2) local_unnamed_addr #19 align 2 !guid !2638 {
.preheader.preheader:
  %i.a = xor i64 %1, -9223372036854775808
  %.inner = tail call i64 @llvm.bswap.i64(i64 %i.a)
  store i64 %.inner, ptr %2, align 1, !tbaa !871
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.c = tail call i64 @llvm.bswap.i64(i64 %0)
  store i64 %i.c, ptr %i.b, align 1, !tbaa !871
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define noundef i64 @_ZNK6duckdb11HyperLogLog5CountEv(ptr nofree noundef nonnull readonly align 1 captures(none) dereferenceable(64) %0) local_unnamed_addr #1 align 2 !guid !2639 {
bb.a:
  %i.a = alloca [60 x i32], align 16              ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #46
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(240) %i.a, i8 0, i64 240, i1 false)
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %bb.a
  %.04.i = phi i64 [ 0, %bb.a ], [ %i.ac, %bb.b ] ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 %.04.i
  %i.c = load i8, ptr %i.b, align 1, !tbaa !871
  %i.d = zext i8 %i.c to i64
  %i.e = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.d ; 2 uses
  %i.f = load i32, ptr %i.e, align 4, !tbaa !165
  %i.g = add i32 %i.f, 1
  store i32 %i.g, ptr %i.e, align 4, !tbaa !165
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 %.04.i
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 1
  %i.j = load i8, ptr %i.i, align 1, !tbaa !871
  %i.k = zext i8 %i.j to i64
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.k ; 2 uses
  %i.m = load i32, ptr %i.l, align 4, !tbaa !165
  %i.n = add i32 %i.m, 1
  store i32 %i.n, ptr %i.l, align 4, !tbaa !165
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 %.04.i
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 2
  %i.q = load i8, ptr %i.p, align 1, !tbaa !871
  %i.r = zext i8 %i.q to i64
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.r ; 2 uses
  %i.t = load i32, ptr %i.s, align 4, !tbaa !165
  %i.u = add i32 %i.t, 1
  store i32 %i.u, ptr %i.s, align 4, !tbaa !165
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 %.04.i
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 3
  %i.x = load i8, ptr %i.w, align 1, !tbaa !871
  %i.y = zext i8 %i.x to i64
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.y ; 2 uses
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !165
  %i.ab = add i32 %i.aa, 1
  store i32 %i.ab, ptr %i.z, align 4, !tbaa !165
  %i.ac = add nuw nsw i64 %.04.i, 4               ; 2 uses
  %exitcond.not.i.3 = icmp eq i64 %i.ac, 64
  br i1 %exitcond.not.i.3, label %_ZNK6duckdb11HyperLogLog13ExtractCountsEPj.exit, label %bb.b, !llvm.loop !39

_ZNK6duckdb11HyperLogLog13ExtractCountsEPj.exit:  ; preds = %bb.b
  %i.ad = call noundef i64 @_ZN6duckdb11HyperLogLog19EstimateCardinalityEPj(ptr noundef nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #46
  ret i64 %i.ad
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define void @_ZNK6duckdb11HyperLogLog13ExtractCountsEPj(ptr nofree noundef nonnull readonly align 1 captures(none) dereferenceable(64) %0, ptr nofree noundef captures(none) %1) local_unnamed_addr #21 align 2 !guid !2640 {
bb.a:
  br label %bb.c

bb.b:                                             ; preds = %bb.c
  ret void

bb.c:                                             ; preds = %bb.c, %bb.a
  %.04 = phi i64 [ 0, %bb.a ], [ %i.ab, %bb.c ]   ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 %.04
  %i.b = load i8, ptr %i.a, align 1, !tbaa !871
  %i.c = zext i8 %i.b to i64
  %i.d = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.c ; 2 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !165
  %i.f = add i32 %i.e, 1
  store i32 %i.f, ptr %i.d, align 4, !tbaa !165
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 %.04
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 1
  %i.i = load i8, ptr %i.h, align 1, !tbaa !871
  %i.j = zext i8 %i.i to i64
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.j ; 2 uses
  %i.l = load i32, ptr %i.k, align 4, !tbaa !165
  %i.m = add i32 %i.l, 1
  store i32 %i.m, ptr %i.k, align 4, !tbaa !165
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 %.04
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 2
  %i.p = load i8, ptr %i.o, align 1, !tbaa !871
  %i.q = zext i8 %i.p to i64
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.q ; 2 uses
  %i.s = load i32, ptr %i.r, align 4, !tbaa !165
  %i.t = add i32 %i.s, 1
  store i32 %i.t, ptr %i.r, align 4, !tbaa !165
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 %.04
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 3
  %i.w = load i8, ptr %i.v, align 1, !tbaa !871
  %i.x = zext i8 %i.w to i64
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.x ; 2 uses
  %i.z = load i32, ptr %i.y, align 4, !tbaa !165
  %i.aa = add i32 %i.z, 1
  store i32 %i.aa, ptr %i.y, align 4, !tbaa !165
  %i.ab = add nuw nsw i64 %.04, 4                 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %i.ab, 64
  br i1 %exitcond.not.3, label %bb.b, label %bb.c, !llvm.loop !39
}

; Function Attrs: mustprogress nounwind uwtable
define noundef i64 @_ZN6duckdb11HyperLogLog19EstimateCardinalityEPj(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #1 align 2 !guid !2643 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 232 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !165
  %i.c = uitofp i32 %i.b to double                ; 2 uses
  %i.d = fsub nnan ninf double 6.400000e+01, %i.c
  %i.e = fmul nnan double %i.d, 1.562500e-02      ; 4 uses
  %i.f = fcmp oeq double %i.e, 0.000000e+00
  %i.g = fcmp oeq double %i.e, 1.000000e+00
  %or.cond.i = or i1 %i.f, %i.g
  br i1 %or.cond.i, label %_ZN6duckdbL6HLLTauEd.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = fsub double 1.000000e+00, %i.e
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %bb.b
  %.015.i = phi double [ %i.e, %bb.b ], [ %i.i, %bb.c ]
  %.014.i = phi double [ 1.000000e+00, %bb.b ], [ %i.j, %bb.c ]
  %.0.i = phi double [ %i.h, %bb.b ], [ %i.n, %bb.c ] ; 2 uses
  %i.i = tail call double @sqrt(double noundef %.015.i) #46, !tbaa !165 ; 2 uses
  %i.j = fmul double %.014.i, 5.000000e-01        ; 2 uses
  %i.k = fsub double 1.000000e+00, %i.i
  %i.l = tail call noundef double @pow(double noundef %i.k, double noundef 2.000000e+00) #46, !tbaa !165
  %i.m = fneg double %i.l
  %i.n = tail call double @llvm.fmuladd.f64(double %i.m, double %i.j, double %.0.i) ; 3 uses
  %i.o = fcmp une double %.0.i, %i.n
  br i1 %i.o, label %bb.c, label %bb.d, !llvm.loop !2641

bb.d:                                             ; preds = %bb.c
  %i.p = fdiv double %i.n, 3.000000e+00
  %i.q = fmul double %i.p, 6.400000e+01
  %.pre = load i32, ptr %i.a, align 4, !tbaa !165
  %.pre19 = uitofp i32 %.pre to double
  %i.r = fadd double %i.q, %.pre19
  br label %_ZN6duckdbL6HLLTauEd.exit

_ZN6duckdbL6HLLTauEd.exit:                        ; preds = %bb.a, %bb.d
  %.016.i = phi double [ %i.c, %bb.a ], [ %i.r, %bb.d ]
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 228
  %i.t = load i32, ptr %i.s, align 4, !tbaa !165
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.v = load i32, ptr %i.u, align 4, !tbaa !165
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 220
  %i.x = load i32, ptr %i.w, align 4, !tbaa !165
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.z = load i32, ptr %i.y, align 4, !tbaa !165
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 212
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !165
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !165
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 204
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !165
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !165
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 196
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !165
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !165
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 188
  %i.an = load i32, ptr %i.am, align 4, !tbaa !165
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !165
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 180
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !165
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.at = load i32, ptr %i.as, align 4, !tbaa !165
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 172
  %i.av = load i32, ptr %i.au, align 4, !tbaa !165
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !165
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 164
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !165
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !165
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 156
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !165
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !165
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 148
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !165
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !165
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 140
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !165
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.bn = load i32, ptr %i.bm, align 4, !tbaa !165
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 132
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !165
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !165
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 124
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !165
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !165
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 116
  %i.bx = load i32, ptr %i.bw, align 4, !tbaa !165
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.bz = load i32, ptr %i.by, align 4, !tbaa !165
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 108
  %i.cb = load i32, ptr %i.ca, align 4, !tbaa !165
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.cd = load i32, ptr %i.cc, align 4, !tbaa !165
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 100
  %i.cf = load i32, ptr %i.ce, align 4, !tbaa !165
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.ch = load i32, ptr %i.cg, align 4, !tbaa !165
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 92
  %i.cj = load i32, ptr %i.ci, align 4, !tbaa !165
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.cl = load i32, ptr %i.ck, align 4, !tbaa !165
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 84
  %i.cn = load i32, ptr %i.cm, align 4, !tbaa !165
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.cp = load i32, ptr %i.co, align 4, !tbaa !165
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 76
  %i.cr = load i32, ptr %i.cq, align 4, !tbaa !165
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.ct = load i32, ptr %i.cs, align 4, !tbaa !165
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 68
  %i.cv = load i32, ptr %i.cu, align 4, !tbaa !165
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.cx = load i32, ptr %i.cw, align 4, !tbaa !165
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.cz = load i32, ptr %i.cy, align 4, !tbaa !165
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.db = load i32, ptr %i.da, align 4, !tbaa !165
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.dd = load i32, ptr %i.dc, align 4, !tbaa !165
  %i.de = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.df = load i32, ptr %i.de, align 4, !tbaa !165
  %i.dg = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.dh = load i32, ptr %i.dg, align 4, !tbaa !165
  %i.di = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.dj = load i32, ptr %i.di, align 4, !tbaa !165
  %i.dk = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.dl = load i32, ptr %i.dk, align 4, !tbaa !165
  %i.dm = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.dn = load i32, ptr %i.dm, align 4, !tbaa !165
  %i.do = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.dp = load i32, ptr %i.do, align 4, !tbaa !165
  %i.dq = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.dr = load i32, ptr %i.dq, align 4, !tbaa !165
  %i.ds = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.dt = load i32, ptr %i.ds, align 4, !tbaa !165
  %i.du = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.dv = load i32, ptr %i.du, align 4, !tbaa !165
  %i.dw = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.dx = load i32, ptr %i.dw, align 4, !tbaa !165
  %i.dy = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.dz = load i32, ptr %i.dy, align 4, !tbaa !165
  %i.ea = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.eb = load i32, ptr %i.ea, align 4, !tbaa !165
  %i.ec = load i32, ptr %0, align 4, !tbaa !165
  %i.ed = uitofp i32 %i.ec to double
  %i.ee = fmul nnan double %i.ed, 1.562500e-02    ; 3 uses
  %i.ef = fcmp oeq double %i.ee, 1.000000e+00
  br i1 %i.ef, label %_ZN6duckdbL8HLLSigmaEd.exit, label %.preheader.i

.preheader.i:                                     ; preds = %_ZN6duckdbL6HLLTauEd.exit, %.preheader.i
  %.015.i10 = phi double [ %i.eg, %.preheader.i ], [ %i.ee, %_ZN6duckdbL6HLLTauEd.exit ] ; 2 uses
  %.014.i11 = phi double [ %i.ei, %.preheader.i ], [ 1.000000e+00, %_ZN6duckdbL6HLLTauEd.exit ] ; 3 uses
  %.0.i12 = phi double [ %i.eh, %.preheader.i ], [ %i.ee, %_ZN6duckdbL6HLLTauEd.exit ] ; 2 uses
  %i.eg = fmul double %.015.i10, %.015.i10        ; 2 uses
  %i.eh = tail call double @llvm.fmuladd.f64(double %i.eg, double %.014.i11, double %.0.i12) ; 3 uses
  %i.ei = fadd double %.014.i11, %.014.i11
  %i.ej = fcmp une double %.0.i12, %i.eh
  br i1 %i.ej, label %.preheader.i, label %_ZN6duckdbL8HLLSigmaEd.exit, !llvm.loop !2642

_ZN6duckdbL8HLLSigmaEd.exit:                      ; preds = %.preheader.i, %_ZN6duckdbL6HLLTauEd.exit
  %.016.i13 = phi double [ +inf, %_ZN6duckdbL6HLLTauEd.exit ], [ %i.eh, %.preheader.i ]
  %i.ek = fmul double %.016.i, 5.000000e-01
  %i.el = uitofp i32 %i.t to double
  %i.em = fadd double %i.ek, %i.el
  %i.en = fmul double %i.em, 5.000000e-01
  %i.eo = uitofp i32 %i.v to double
  %i.ep = fadd double %i.en, %i.eo
  %i.eq = fmul double %i.ep, 5.000000e-01
  %i.er = uitofp i32 %i.x to double
  %i.es = fadd double %i.eq, %i.er
  %i.et = fmul double %i.es, 5.000000e-01
  %i.eu = uitofp i32 %i.z to double
  %i.ev = fadd double %i.et, %i.eu
  %i.ew = fmul double %i.ev, 5.000000e-01
  %i.ex = uitofp i32 %i.ab to double
  %i.ey = fadd double %i.ew, %i.ex
  %i.ez = fmul double %i.ey, 5.000000e-01
  %i.fa = uitofp i32 %i.ad to double
  %i.fb = fadd double %i.ez, %i.fa
  %i.fc = fmul double %i.fb, 5.000000e-01
  %i.fd = uitofp i32 %i.af to double
  %i.fe = fadd double %i.fc, %i.fd
  %i.ff = fmul double %i.fe, 5.000000e-01
  %i.fg = uitofp i32 %i.ah to double
  %i.fh = fadd double %i.ff, %i.fg
  %i.fi = fmul double %i.fh, 5.000000e-01
  %i.fj = uitofp i32 %i.aj to double
  %i.fk = fadd double %i.fi, %i.fj
  %i.fl = fmul double %i.fk, 5.000000e-01
  %i.fm = uitofp i32 %i.al to double
  %i.fn = fadd double %i.fl, %i.fm
  %i.fo = fmul double %i.fn, 5.000000e-01
  %i.fp = uitofp i32 %i.an to double
  %i.fq = fadd double %i.fo, %i.fp
  %i.fr = fmul double %i.fq, 5.000000e-01
  %i.fs = uitofp i32 %i.ap to double
end_hunk_0
