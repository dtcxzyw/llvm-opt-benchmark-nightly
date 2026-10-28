Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/duckdb/original/ub_duckdb_common_types?download=true
inline.NumInlined: 41209
inline.NumDeleted: 6301
loop-unroll.NumCompletelyUnrolled: 156
loop-unroll.NumRuntimeUnrolled: 69
loop-unroll.NumUnrolled: 229
begin_hunk_0_@_ZN6duckdb7Hugeint14DivModPositiveENS_9hugeint_tEmRm:bb.a
  %spec.select = or disjoint i64 %i.f, %i.k       ; 2 uses
  %.not28 = icmp uge i64 %spec.select, %2         ; 2 uses
  %i.l = select i1 %.not28, i64 %2, i64 0
  %spec.select30 = sub nuw i64 %spec.select, %i.l ; 2 uses
  %i.m = zext i1 %.not28 to i64
  %.sroa.018.1 = or disjoint i64 %i.d, %i.m       ; 2 uses
  %.not.wide = icmp eq i64 %i.g, 0
  br i1 %.not.wide, label %._crit_edge, label %.lr.ph, !llvm.loop !9
}

; Function Attrs: mustprogress uwtable
define { i64, i64 } @_ZN6duckdb7Hugeint6DivModENS_9hugeint_tES1_RS1_(i64 %0, i64 %1, i64 %2, i64 %3, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(16) %4) local_unnamed_addr #3 align 2 {
bb.a:
  %5 = alloca %"struct.duckdb::hugeint_t", align 8 ; 5 uses
  %6 = alloca %"struct.duckdb::hugeint_t", align 8 ; 5 uses
  %7 = alloca %"struct.duckdb::hugeint_t", align 8 ; 11 uses
  %8 = alloca %"struct.duckdb::hugeint_t", align 8 ; 4 uses
  %9 = alloca %"struct.duckdb::hugeint_t", align 8 ; 5 uses
  %10 = alloca %"struct.duckdb::hugeint_t", align 8 ; 5 uses
  %11 = alloca %"struct.duckdb::hugeint_t", align 8 ; 5 uses
  %12 = alloca %"struct.duckdb::hugeint_t", align 8 ; 4 uses
  %13 = alloca %"struct.duckdb::hugeint_t", align 8 ; 5 uses
  %14 = alloca %"struct.duckdb::hugeint_t", align 8 ; 3 uses
  %15 = alloca %"struct.duckdb::hugeint_t", align 8 ; 5 uses
  %16 = alloca %"struct.duckdb::hugeint_t", align 8 ; 5 uses
  %17 = alloca %"struct.duckdb::hugeint_t", align 8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #46
  call void @_ZN6duckdb9hugeint_tC1El(ptr noundef nonnull align 8 dereferenceable(16) %15, i64 noundef 0)
  %i.a = load i64, ptr %15, align 8, !tbaa !293
  %i.b = icmp eq i64 %2, %i.a
  %i.c = getelementptr inbounds nuw i8, ptr %15, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !292
  %i.e = icmp eq i64 %3, %i.d
  %i.f = select i1 %i.b, i1 %i.e, i1 false
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #46
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i64 %0, ptr %4, align 8, !tbaa !245
  %.sroa.861.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %1, ptr %.sroa.861.0..sroa_idx, align 8, !tbaa !245
  call void @_ZN6duckdb9hugeint_tC1El(ptr noundef nonnull align 8 dereferenceable(16) %14, i64 noundef 0)
  %.fca.0.load.pre = load i64, ptr %14, align 8
  %.fca.1.gep.phi.trans.insert = getelementptr inbounds nuw i8, ptr %14, i64 8
  %.fca.1.load.pre = load i64, ptr %.fca.1.gep.phi.trans.insert, align 8
  br label %bb.s

bb.c:                                             ; preds = %bb.a
  %i.g = icmp eq i64 %0, 0                        ; 2 uses
  %i.h = icmp eq i64 %1, -9223372036854775808
  %i.i = select i1 %i.g, i1 %i.h, i1 false
  br i1 %i.i, label %.critedge, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = icmp eq i64 %2, 0                        ; 2 uses
  %i.k = icmp eq i64 %3, -9223372036854775808
  %i.l = select i1 %i.j, i1 %i.k, i1 false
  br i1 %i.l, label %bb.f, label %bb.j

.critedge:                                        ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  %i.m = icmp eq i64 %2, 0
  %i.n = icmp eq i64 %3, -9223372036854775808
  %i.o = select i1 %i.m, i1 %i.n, i1 false
  br i1 %i.o, label %bb.e, label %bb.g

bb.e:                                             ; preds = %.critedge
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #46
  call void @_ZN6duckdb9hugeint_tC1El(ptr noundef nonnull align 8 dereferenceable(16) %8, i64 noundef 0), !inline_history !1374
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(16) %8, i64 16, i1 false), !tbaa.struct !296
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #46
  call void @_ZN6duckdb9hugeint_tC1El(ptr noundef nonnull align 8 dereferenceable(16) %7, i64 noundef 1), !inline_history !1374
  br label %_ZN6duckdbL13DivModMinimumENS_9hugeint_tES0_RS0_.exit

bb.f:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  store i64 %0, ptr %4, align 8, !tbaa !245
  %.sroa.586.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %1, ptr %.sroa.586.0..sroa_idx, align 8, !tbaa !245
  call void @_ZN6duckdb9hugeint_tC1El(ptr noundef nonnull align 8 dereferenceable(16) %7, i64 noundef 0), !inline_history !1374
  br label %_ZN6duckdbL13DivModMinimumENS_9hugeint_tES0_RS0_.exit

bb.g:                                             ; preds = %.critedge
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #46
  call void @_ZN6duckdb9hugeint_tC1El(ptr noundef nonnull align 8 dereferenceable(16) %9, i64 noundef 1), !inline_history !1374
  %i.p = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.q = load i64, ptr %i.p, align 8, !tbaa !292
  %i.r = or disjoint i64 %i.q, -9223372036854775808
  %i.s = load i64, ptr %9, align 8, !tbaa !293
  %i.t = call { i64, i64 } @_ZN6duckdb7Hugeint6DivModENS_9hugeint_tES1_RS1_(i64 %i.s, i64 %i.r, i64 %2, i64 %3, ptr noundef nonnull align 8 dereferenceable(16) %4), !inline_history !1374 ; 2 uses
  %i.u = extractvalue { i64, i64 } %i.t, 0
  store i64 %i.u, ptr %7, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 3 uses
  %i.w = extractvalue { i64, i64 } %i.t, 1
  store i64 %i.w, ptr %i.v, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #46
  %.sroa.03.0.copyload.i = load i64, ptr %4, align 8, !tbaa !245
  %.sroa.24.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  %.sroa.24.0.copyload.i = load i64, ptr %.sroa.24.0..sroa_idx.i, align 8, !tbaa !245
  %i.x = call { i64, i64 } @_ZN6duckdb3AbsENS_9hugeint_tE(i64 %.sroa.03.0.copyload.i, i64 %.sroa.24.0.copyload.i), !inline_history !1374 ; 2 uses
  %i.y = extractvalue { i64, i64 } %i.x, 0        ; 2 uses
  %i.z = extractvalue { i64, i64 } %i.x, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #46
  call void @_ZN6duckdb9hugeint_tC1El(ptr noundef nonnull align 8 dereferenceable(16) %10, i64 noundef 1), !inline_history !1374
  %i.aa = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !292
  %i.ac = add nsw i64 %i.ab, %i.z
  %i.ad = load i64, ptr %10, align 8, !tbaa !293
  %i.ae = add i64 %i.ad, %i.y                     ; 2 uses
  %i.af = icmp ult i64 %i.ae, %i.y
  %i.ag = zext i1 %i.af to i64
  %i.ah = add nsw i64 %i.ac, %i.ag
  %i.ai = call { i64, i64 } @_ZN6duckdb3AbsENS_9hugeint_tE(i64 %2, i64 %3), !inline_history !1374 ; 2 uses
  %i.aj = extractvalue { i64, i64 } %i.ai, 0
  %i.ak = extractvalue { i64, i64 } %i.ai, 1
  %i.al = icmp eq i64 %i.ae, %i.aj
  %i.am = icmp eq i64 %i.ah, %i.ak
  %i.an = select i1 %i.al, i1 %i.am, i1 false
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #46
  br i1 %i.an, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #46
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #46
  call void @_ZN6duckdb9hugeint_tC1El(ptr noundef nonnull align 8 dereferenceable(16) %5, i64 noundef 0)
  %i.ao = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !292 ; 2 uses
  %i.aq = icmp sgt i64 %3, %i.ap
  %i.ar = icmp eq i64 %3, %i.ap
  %i.as = load i64, ptr %5, align 8, !tbaa !293
  %i.at = icmp ugt i64 %2, %i.as
  %i.au = select i1 %i.ar, i1 %i.at, i1 false
  %i.av = select i1 %i.aq, i1 true, i1 %i.au
  %i.aw = zext i1 %i.av to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #46
  call void @_ZN6duckdb9hugeint_tC1El(ptr noundef nonnull align 8 dereferenceable(16) %6, i64 noundef 0)
  %i.ax = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.ay = load i64, ptr %i.ax, align 8, !tbaa !292 ; 2 uses
  %i.az = icmp slt i64 %3, %i.ay
  %i.ba = icmp eq i64 %3, %i.ay
  %i.bb = load i64, ptr %6, align 8, !tbaa !293
  %i.bc = icmp ult i64 %2, %i.bb
  %i.bd = select i1 %i.ba, i1 %i.bc, i1 false
  %i.be = select i1 %i.az, i1 true, i1 %i.bd
  %.neg.i = sext i1 %i.be to i64
  %i.bf = add nsw i64 %.neg.i, %i.aw
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #46
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #46
  call void @_ZN6duckdb9hugeint_tC1El(ptr noundef nonnull align 8 dereferenceable(16) %11, i64 noundef %i.bf), !inline_history !1374
  %i.bg = load i64, ptr %i.v, align 8, !tbaa !292
  %i.bh = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.bi = load i64, ptr %i.bh, align 8, !tbaa !292
  %i.bj = sub i64 %i.bg, %i.bi
  %i.bk = load i64, ptr %7, align 8, !tbaa !293   ; 2 uses
  %i.bl = load i64, ptr %11, align 8, !tbaa !293  ; 2 uses
  %i.bm = sub i64 %i.bk, %i.bl
  %i.bn = icmp ugt i64 %i.bl, %i.bk
  %.neg.i.i40 = sext i1 %i.bn to i64
  %i.bo = add i64 %i.bj, %.neg.i.i40
  store i64 %i.bm, ptr %7, align 8, !tbaa !245
  store i64 %i.bo, ptr %i.v, align 8, !tbaa !245
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #46
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #46
  call void @_ZN6duckdb9hugeint_tC1El(ptr noundef nonnull align 8 dereferenceable(16) %12, i64 noundef 0), !inline_history !1374
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(16) %12, i64 16, i1 false), !tbaa.struct !296
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #46
  br label %_ZN6duckdbL13DivModMinimumENS_9hugeint_tES0_RS0_.exit

bb.i:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #46
  call void @_ZN6duckdb9hugeint_tC1El(ptr noundef nonnull align 8 dereferenceable(16) %13, i64 noundef 1), !inline_history !1374
  %i.bp = load i64, ptr %.sroa.24.0..sroa_idx.i, align 8, !tbaa !292
  %i.bq = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.br = load i64, ptr %i.bq, align 8, !tbaa !292
  %i.bs = sub i64 %i.bp, %i.br
  %i.bt = load i64, ptr %4, align 8, !tbaa !293   ; 2 uses
  %i.bu = load i64, ptr %13, align 8, !tbaa !293  ; 2 uses
  %i.bv = sub i64 %i.bt, %i.bu
  %i.bw = icmp ugt i64 %i.bu, %i.bt
  %.neg.i.i39 = sext i1 %i.bw to i64
  %i.bx = add i64 %i.bs, %.neg.i.i39
  store i64 %i.bv, ptr %4, align 8, !tbaa !245
  store i64 %i.bx, ptr %.sroa.24.0..sroa_idx.i, align 8, !tbaa !245
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #46
  br label %_ZN6duckdbL13DivModMinimumENS_9hugeint_tES0_RS0_.exit

_ZN6duckdbL13DivModMinimumENS_9hugeint_tES0_RS0_.exit: ; preds = %bb.e, %bb.f, %bb.h, %bb.i
  %.fca.0.load.i = load i64, ptr %7, align 8
  %.fca.1.gep.i = getelementptr inbounds nuw i8, ptr %7, i64 8
  %.fca.1.load.i = load i64, ptr %.fca.1.gep.i, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  br label %bb.s

bb.j:                                             ; preds = %bb.d
  %i.by = icmp slt i64 %1, 0                      ; 3 uses
  %i.bz = icmp slt i64 %3, 0                      ; 2 uses
  %i.ca = sub i64 0, %0
  %i.cb = xor i64 %1, -1
  %i.cc = zext i1 %i.g to i64
  %i.cd = add nuw nsw i64 %i.cc, %i.cb
  %.sroa.861.0 = select i1 %i.by, i64 %i.cd, i64 %1 ; 3 uses
  %.sroa.059.0 = select i1 %i.by, i64 %i.ca, i64 %0 ; 3 uses
  %i.ce = sub i64 0, %2
  %i.cf = xor i64 %3, -1
  %i.cg = zext i1 %i.j to i64
  %i.ch = add nuw nsw i64 %i.cg, %i.cf
  %.sroa.8.0 = select i1 %i.bz, i64 %i.ch, i64 %3 ; 3 uses
  %.sroa.047.0 = select i1 %i.bz, i64 %i.ce, i64 %2 ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 7 uses
  %.not.i = icmp eq i64 %.sroa.861.0, 0
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, i8 0, i64 16, i1 false)
  br i1 %.not.i, label %.preheader.i, label %.lr.ph

.preheader.i:                                     ; preds = %bb.j
  %.not1117.i = icmp eq i64 %.sroa.059.0, 0
  br i1 %.not1117.i, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader.i, %bb.j
  %.sroa.059.0.sink = phi i64 [ %.sroa.861.0, %bb.j ], [ %.sroa.059.0, %.preheader.i ]
  %.sink = phi i64 [ 128, %bb.j ], [ 64, %.preheader.i ]
  %i.cj = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %.sroa.059.0.sink, i1 true)
  %i.ck = sub nsw i64 %.sink, %i.cj
  %i.cl = getelementptr inbounds nuw i8, ptr %16, i64 8
  %i.cm = getelementptr inbounds nuw i8, ptr %17, i64 8
  %18 = and i64 %i.ck, 255
  br label %bb.k

._crit_edge:                                      ; preds = %bb.o, %.preheader.i
  %i.cn = phi i64 [ 0, %.preheader.i ], [ %.sroa.25.0.copyload93, %bb.o ] ; 2 uses
  %i.co = phi i64 [ 0, %.preheader.i ], [ %.sroa.04.0.copyload91, %bb.o ] ; 3 uses
  %.lobit33 = xor i64 %3, %1
  %.not34 = icmp sgt i64 %.lobit33, -1
  br i1 %.not34, label %bb.q, label %bb.p

bb.k:                                             ; preds = %.lr.ph, %bb.o
  %.sroa.25.0.copyload = phi i64 [ 0, %.lr.ph ], [ %.sroa.25.0.copyload93, %bb.o ]
  %.sroa.04.0.copyload = phi i64 [ 0, %.lr.ph ], [ %.sroa.04.0.copyload91, %bb.o ] ; 2 uses
  %indvars.iv = phi i64 [ %18, %.lr.ph ], [ %i.ct, %bb.o ] ; 3 uses
  %i.cp = shl i64 %.sroa.04.0.copyload, 1         ; 3 uses
  %i.cq = call i64 @llvm.fshl.i64(i64 %.sroa.25.0.copyload, i64 %.sroa.04.0.copyload, i64 1) ; 2 uses
  %.sroa.01.0.copyload = load i64, ptr %4, align 8, !tbaa !245 ; 2 uses
  %.sroa.22.0.copyload = load i64, ptr %i.ci, align 8, !tbaa !245
  %i.cr = shl i64 %.sroa.01.0.copyload, 1         ; 2 uses
  %i.cs = call i64 @llvm.fshl.i64(i64 %.sroa.22.0.copyload, i64 %.sroa.01.0.copyload, i64 1) ; 2 uses
  store i64 %i.cr, ptr %4, align 8, !tbaa !245
  store i64 %i.cs, ptr %i.ci, align 8, !tbaa !245
  %i.ct = add nsw i64 %indvars.iv, -1             ; 3 uses
  %i.cu = icmp ult i64 %indvars.iv, 65            ; 2 uses
  %i.cv = add nsw i64 %indvars.iv, -65
  %.sink6.i = select i1 %i.cu, i64 %i.ct, i64 %i.cv
  %.sink5.i = select i1 %i.cu, i64 %.sroa.059.0, i64 %.sroa.861.0
  %i.cw = shl nuw i64 1, %.sink6.i
  %i.cx = and i64 %i.cw, %.sink5.i
  %.0.i.not = icmp eq i64 %i.cx, 0
  br i1 %.0.i.not, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #46
  call void @_ZN6duckdb9hugeint_tC1El(ptr noundef nonnull align 8 dereferenceable(16) %16, i64 noundef 1)
  %i.cy = load i64, ptr %i.ci, align 8, !tbaa !292
  %i.cz = load i64, ptr %i.cl, align 8, !tbaa !292
  %i.da = add nsw i64 %i.cz, %i.cy
  %i.db = load i64, ptr %4, align 8, !tbaa !293   ; 2 uses
  %i.dc = load i64, ptr %16, align 8, !tbaa !293
  %i.dd = add i64 %i.dc, %i.db                    ; 3 uses
  %i.de = icmp ult i64 %i.dd, %i.db
  %i.df = zext i1 %i.de to i64
  %i.dg = add nsw i64 %i.da, %i.df                ; 2 uses
  store i64 %i.dd, ptr %4, align 8, !tbaa !245
  store i64 %i.dg, ptr %i.ci, align 8, !tbaa !245
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #46
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.dh = phi i64 [ %i.dd, %bb.l ], [ %i.cr, %bb.k ] ; 2 uses
  %i.di = phi i64 [ %i.dg, %bb.l ], [ %i.cs, %bb.k ] ; 3 uses
  %i.dj = icmp sgt i64 %i.di, %.sroa.8.0
  %i.dk = icmp eq i64 %i.di, %.sroa.8.0
  %i.dl = icmp uge i64 %i.dh, %.sroa.047.0        ; 2 uses
  %i.dm = select i1 %i.dk, i1 %i.dl, i1 false
  %i.dn = select i1 %i.dj, i1 true, i1 %i.dm
  br i1 %i.dn, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.do = sub i64 %i.di, %.sroa.8.0
  %i.dp = sub i64 %i.dh, %.sroa.047.0
  %.not = xor i1 %i.dl, true
  %.neg.i.i = sext i1 %.not to i64
  %i.dq = add i64 %i.do, %.neg.i.i
  store i64 %i.dp, ptr %4, align 8, !tbaa !245
  store i64 %i.dq, ptr %i.ci, align 8, !tbaa !245
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #46
  call void @_ZN6duckdb9hugeint_tC1El(ptr noundef nonnull align 8 dereferenceable(16) %17, i64 noundef 1)
  %i.dr = load i64, ptr %i.cm, align 8, !tbaa !292
  %i.ds = add nsw i64 %i.dr, %i.cq
  %i.dt = load i64, ptr %17, align 8, !tbaa !293
  %i.du = add i64 %i.dt, %i.cp                    ; 2 uses
  %i.dv = icmp ult i64 %i.du, %i.cp
  %i.dw = zext i1 %i.dv to i64
  %i.dx = add nsw i64 %i.ds, %i.dw
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #46
  br label %bb.o

bb.o:                                             ; preds = %bb.m, %bb.n
  %.sroa.25.0.copyload93 = phi i64 [ %i.cq, %bb.m ], [ %i.dx, %bb.n ] ; 2 uses
  %.sroa.04.0.copyload91 = phi i64 [ %i.cp, %bb.m ], [ %i.du, %bb.n ] ; 2 uses
  %.not.wide = icmp eq i64 %i.ct, 0
  br i1 %.not.wide, label %._crit_edge, label %bb.k, !llvm.loop !1375

bb.p:                                             ; preds = %._crit_edge
  %i.dy = sub i64 0, %i.co
  %i.dz = xor i64 %i.cn, -1
  %i.ea = icmp eq i64 %i.co, 0
  %i.eb = zext i1 %i.ea to i64
  %i.ec = add nsw i64 %i.dz, %i.eb
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %._crit_edge
  %.fca.1.load98 = phi i64 [ %i.ec, %bb.p ], [ %i.cn, %._crit_edge ] ; 2 uses
  %.fca.0.load96 = phi i64 [ %i.dy, %bb.p ], [ %i.co, %._crit_edge ] ; 2 uses
  br i1 %i.by, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.ed = load i64, ptr %4, align 8, !tbaa !293   ; 2 uses
  %i.ee = sub i64 0, %i.ed
  store i64 %i.ee, ptr %4, align 8, !tbaa !293
  %i.ef = load i64, ptr %i.ci, align 8, !tbaa !292
  %i.eg = xor i64 %i.ef, -1
  %i.eh = icmp eq i64 %i.ed, 0
  %i.ei = zext i1 %i.eh to i64
  %i.ej = add nsw i64 %i.eg, %i.ei
  store i64 %i.ej, ptr %i.ci, align 8, !tbaa !292
  br label %bb.s

bb.s:                                             ; preds = %bb.q, %bb.r, %_ZN6duckdbL13DivModMinimumENS_9hugeint_tES0_RS0_.exit, %bb.b
  %.fca.1.load = phi i64 [ %.fca.1.load98, %bb.q ], [ %.fca.1.load98, %bb.r ], [ %.fca.1.load.i, %_ZN6duckdbL13DivModMinimumENS_9hugeint_tES0_RS0_.exit ], [ %.fca.1.load.pre, %bb.b ]
  %.fca.0.load = phi i64 [ %.fca.0.load96, %bb.q ], [ %.fca.0.load96, %bb.r ], [ %.fca.0.load.i, %_ZN6duckdbL13DivModMinimumENS_9hugeint_tES0_RS0_.exit ], [ %.fca.0.load.pre, %bb.b ]
  %.fca.0.insert = insertvalue { i64, i64 } poison, i64 %.fca.0.load, 0
  %.fca.1.insert = insertvalue { i64, i64 } %.fca.0.insert, i64 %.fca.1.load, 1
  ret { i64, i64 } %.fca.1.insert
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @_ZN6duckdb15ConflictManagerC2ENS_19VerifyExistenceTypeEmNS_12optional_ptrINS_12ConflictInfoELb1EEE(ptr noundef nonnull align 8 dereferenceable(328) initializes((0, 1), (8, 25), (32, 80)) %0, i8 noundef zeroext %1, i64 noundef %2, ptr %3) unnamed_addr #19 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store i8 %1, ptr %0, align 8, !tbaa !319
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %2, ptr %i.a, align 8, !tbaa !320
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %3, ptr %i.b, align 8, !tbaa !1376
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 1, ptr %i.c, align 8, !tbaa !321
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 128
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.d, i8 0, i64 48, i1 false)
  store ptr %i.f, ptr %i.e, align 8, !tbaa !1377
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i64 1, ptr %i.g, align 8, !tbaa !1378
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 112
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.h, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.i, align 8, !tbaa !220
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 120
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.j, i8 0, i64 16, i1 false)
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 184
  store ptr %i.l, ptr %i.k, align 8, !tbaa !322
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 144
  store i64 1, ptr %i.m, align 8, !tbaa !323
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 168
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.n, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.o, align 8, !tbaa !220
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 240
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %i.q, i8 0, i64 32, i1 false)
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 304
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.s, i8 0, i64 24, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.r, i8 0, i64 56, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(17) %i.p, i8 0, i64 17, i1 false)
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb15ConflictManager12FinishLookupEv(ptr noundef nonnull align 8 dereferenceable(328) %0) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load i8, ptr %i.a, align 8, !tbaa !321
  %i.c = icmp eq i8 %i.b, 1
  br i1 %i.c, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  tail call void @_ZNK6duckdb12optional_ptrINS_12ConflictInfoELb1EE10CheckValidEv(ptr noundef nonnull align 8 dereferenceable(8) %i.d)
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !324
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !327, !nonnull !227, !align !228
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.h = load i64, ptr %i.g, align 8, !tbaa !328
  %.not = icmp eq i64 %i.h, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !330
  %i.k = icmp ne ptr %i.j, null
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.m = zext i1 %i.k to i8
  store i8 %i.m, ptr %i.l, align 8, !tbaa !331
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.a, %bb.c
  ret void
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN6duckdb15ConflictManager10IsConflictENS_16LookupResultTypeE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(328) %0, i8 noundef zeroext %1) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %3 = alloca %"class.std::allocator.20", align 1 ; 5 uses
  switch i8 %1, label %bb.d [
    i8 2, label %bb.b
    i8 1, label %bb.i
    i8 0, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  %i.a = tail call noundef zeroext i1 @_ZNK6duckdb15ConflictManager11IgnoreNullsEv(ptr noundef nonnull align 8 dereferenceable(328) %0)
  %not. = xor i1 %i.a, true
  br label %bb.i

bb.c:                                             ; preds = %bb.a
  br label %bb.i

bb.d:                                             ; preds = %bb.a
  %i.b = tail call ptr @__cxa_allocate_exception(i64 16) #46 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #46
end_hunk_0
begin_hunk_1_@_ZN6duckdb4Date14TryConvertDateEPKcmRmRNS_6date_tERbb:bb.a

.lr.ph.i.4:                                       ; preds = %bb.j
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 %i.ah
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !273 ; 3 uses
  %i.ak = add i8 %i.aj, -65
  %or.cond.i.i.4 = icmp ult i8 %i.ak, 26
  %i.al = or disjoint i8 %i.aj, 32
  %spec.select.i.i.4 = select i1 %or.cond.i.i.4, i8 %i.al, i8 %i.aj
  %.not24.i.4 = icmp eq i8 %spec.select.i.i.4, 110
  br i1 %.not24.i.4, label %bb.k, label %.lr.ph.preheader.i144

bb.k:                                             ; preds = %.lr.ph.i.4
  %i.am = add i64 %.promoted186, 5                ; 2 uses
  %exitcond.not.i.4 = icmp eq i64 %i.am, %1
  br i1 %exitcond.not.i.4, label %.critedge.i, label %.lr.ph.i.5

.lr.ph.i.5:                                       ; preds = %bb.k
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 %i.am
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !273 ; 3 uses
  %i.ap = add i8 %i.ao, -65
  %or.cond.i.i.5 = icmp ult i8 %i.ap, 26
  %i.aq = or disjoint i8 %i.ao, 32
  %spec.select.i.i.5 = select i1 %or.cond.i.i.5, i8 %i.aq, i8 %i.ao
  %.not24.i.5 = icmp eq i8 %spec.select.i.i.5, 105
  br i1 %.not24.i.5, label %bb.l, label %.lr.ph.preheader.i144

bb.l:                                             ; preds = %.lr.ph.i.5
  %i.ar = add i64 %.promoted186, 6                ; 2 uses
  %exitcond.not.i.5 = icmp eq i64 %i.ar, %1
  br i1 %exitcond.not.i.5, label %.critedge.i, label %.lr.ph.i.6

.lr.ph.i.6:                                       ; preds = %bb.l
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 %i.ar
  %i.at = load i8, ptr %i.as, align 1, !tbaa !273 ; 3 uses
  %i.au = add i8 %i.at, -65
  %or.cond.i.i.6 = icmp ult i8 %i.au, 26
  %i.av = or disjoint i8 %i.at, 32
  %spec.select.i.i.6 = select i1 %or.cond.i.i.6, i8 %i.av, i8 %i.at
  %.not24.i.6 = icmp eq i8 %spec.select.i.i.6, 116
  br i1 %.not24.i.6, label %bb.m, label %.lr.ph.preheader.i144

bb.m:                                             ; preds = %.lr.ph.i.6
  %i.aw = add i64 %.promoted186, 7                ; 2 uses
  %exitcond.not.i.6 = icmp eq i64 %i.aw, %1
  br i1 %exitcond.not.i.6, label %.critedge.i, label %.lr.ph.i.7

.lr.ph.i.7:                                       ; preds = %bb.m
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 %i.aw
  %i.ay = load i8, ptr %i.ax, align 1, !tbaa !273 ; 3 uses
  %i.az = add i8 %i.ay, -65
  %or.cond.i.i.7 = icmp ult i8 %i.az, 26
  %i.ba = or disjoint i8 %i.ay, 32
  %spec.select.i.i.7 = select i1 %or.cond.i.i.7, i8 %i.ba, i8 %i.ay
  %.not24.i.7 = icmp eq i8 %spec.select.i.i.7, 121
  br i1 %.not24.i.7, label %bb.n, label %.lr.ph.preheader.i144

bb.n:                                             ; preds = %.lr.ph.i.7
  %exitcond.not.i.7 = icmp eq i64 %i.p, %1
  br i1 %exitcond.not.i.7, label %.critedge.i, label %.loopexit170

.critedge.i:                                      ; preds = %bb.g, %bb.h, %bb.i, %bb.j, %bb.k, %bb.l, %bb.m, %bb.n
  switch i64 %i.o, label %.lr.ph.preheader.i144 [
    i64 8, label %.loopexit170
    i64 3, label %.loopexit170
  ]

.loopexit170:                                     ; preds = %.critedge.i, %.critedge.i, %bb.n
  %.01930.i = phi i64 [ %1, %.critedge.i ], [ %i.p, %bb.n ], [ %1, %.critedge.i ] ; 2 uses
  store i64 %.01930.i, ptr %2, align 8, !tbaa !245
  %spec.select165 = select i1 %i.h, i32 -2147483647, i32 2147483647
  br label %bb.t

.lr.ph.preheader.i144:                            ; preds = %.critedge.i, %.lr.ph.i.7, %.lr.ph.i.6, %.lr.ph.i.5, %.lr.ph.i.4, %.lr.ph.i.3, %.lr.ph.i.2, %.lr.ph.i.1, %.lr.ph.preheader.i
  %i.bb = sub nuw i64 %1, %.promoted186           ; 2 uses
  %scevgep.i145 = getelementptr i8, ptr @.str.34, i64 %i.bb
  %i.bc = add i64 %.promoted186, 5                ; 2 uses
  %i.bd = add i8 %i.j, -65
  %or.cond.i.i150 = icmp ult i8 %i.bd, 26
  %i.be = or disjoint i8 %i.j, 32
  %spec.select.i.i151 = select i1 %or.cond.i.i150, i8 %i.be, i8 %i.j
  %.not24.i152 = icmp eq i8 %spec.select.i.i151, 101
  br i1 %.not24.i152, label %bb.o, label %.critedge

bb.o:                                             ; preds = %.lr.ph.preheader.i144
  %i.bf = add nuw i64 %.promoted186, 1            ; 2 uses
  %exitcond.not.i153 = icmp eq i64 %i.bf, %1
  br i1 %exitcond.not.i153, label %.critedge.i135.loopexit, label %.lr.ph.i146.1

.lr.ph.i146.1:                                    ; preds = %bb.o
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 %i.bf
  %i.bh = load i8, ptr %i.bg, align 1, !tbaa !273 ; 3 uses
  %i.bi = add i8 %i.bh, -65
  %or.cond.i.i150.1 = icmp ult i8 %i.bi, 26
  %i.bj = or disjoint i8 %i.bh, 32
  %spec.select.i.i151.1 = select i1 %or.cond.i.i150.1, i8 %i.bj, i8 %i.bh
  %.not24.i152.1 = icmp eq i8 %spec.select.i.i151.1, 112
  br i1 %.not24.i152.1, label %bb.p, label %.critedge

bb.p:                                             ; preds = %.lr.ph.i146.1
  %i.bk = add i64 %.promoted186, 2                ; 2 uses
  %exitcond.not.i153.1 = icmp eq i64 %i.bk, %1
  br i1 %exitcond.not.i153.1, label %.critedge.i135.loopexit, label %.lr.ph.i146.2

.lr.ph.i146.2:                                    ; preds = %bb.p
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 %i.bk
  %i.bm = load i8, ptr %i.bl, align 1, !tbaa !273 ; 3 uses
  %i.bn = add i8 %i.bm, -65
  %or.cond.i.i150.2 = icmp ult i8 %i.bn, 26
  %i.bo = or disjoint i8 %i.bm, 32
  %spec.select.i.i151.2 = select i1 %or.cond.i.i150.2, i8 %i.bo, i8 %i.bm
  %.not24.i152.2 = icmp eq i8 %spec.select.i.i151.2, 111
  br i1 %.not24.i152.2, label %bb.q, label %.critedge

bb.q:                                             ; preds = %.lr.ph.i146.2
  %i.bp = add i64 %.promoted186, 3                ; 2 uses
  %exitcond.not.i153.2 = icmp eq i64 %i.bp, %1
  br i1 %exitcond.not.i153.2, label %.critedge.i135.loopexit, label %.lr.ph.i146.3

.lr.ph.i146.3:                                    ; preds = %bb.q
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 %i.bp
  %i.br = load i8, ptr %i.bq, align 1, !tbaa !273 ; 3 uses
  %i.bs = add i8 %i.br, -65
  %or.cond.i.i150.3 = icmp ult i8 %i.bs, 26
  %i.bt = or disjoint i8 %i.br, 32
  %spec.select.i.i151.3 = select i1 %or.cond.i.i150.3, i8 %i.bt, i8 %i.br
  %.not24.i152.3 = icmp eq i8 %spec.select.i.i151.3, 99
  br i1 %.not24.i152.3, label %bb.r, label %.critedge

bb.r:                                             ; preds = %.lr.ph.i146.3
  %i.bu = add i64 %.promoted186, 4                ; 2 uses
  %exitcond.not.i153.3 = icmp eq i64 %i.bu, %1
  br i1 %exitcond.not.i153.3, label %.critedge.i135.loopexit, label %.lr.ph.i146.4

.lr.ph.i146.4:                                    ; preds = %bb.r
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 %i.bu
  %i.bw = load i8, ptr %i.bv, align 1, !tbaa !273 ; 3 uses
  %i.bx = add i8 %i.bw, -65
  %or.cond.i.i150.4 = icmp ult i8 %i.bx, 26
  %i.by = or disjoint i8 %i.bw, 32
  %spec.select.i.i151.4 = select i1 %or.cond.i.i150.4, i8 %i.by, i8 %i.bw
  %.not24.i152.4 = icmp eq i8 %spec.select.i.i151.4, 104
  br i1 %.not24.i152.4, label %bb.s, label %.critedge

bb.s:                                             ; preds = %.lr.ph.i146.4
  %exitcond.not.i153.4 = icmp eq i64 %i.bc, %1
  br i1 %exitcond.not.i153.4, label %.critedge.i135.loopexit, label %.loopexit

.critedge.i135.loopexit:                          ; preds = %bb.s, %bb.r, %bb.q, %bb.p, %bb.o
  %i.bz = icmp eq i64 %i.bb, 5
  br label %.critedge.i135

.critedge.i135:                                   ; preds = %bb.f, %.critedge.i135.loopexit
  %.pre-phi216 = phi i1 [ %i.bz, %.critedge.i135.loopexit ], [ false, %bb.f ]
  %.019.lcssa.i136 = phi i64 [ %1, %.critedge.i135.loopexit ], [ %.promoted186, %bb.f ]
  %.018.lcssa.i137 = phi ptr [ %scevgep.i145, %.critedge.i135.loopexit ], [ @.str.34, %bb.f ]
  %.pr.i138 = load i8, ptr %.018.lcssa.i137, align 1, !tbaa !273
  %.not22.i139 = icmp eq i8 %.pr.i138, 0
  %or.cond166 = select i1 %.not22.i139, i1 true, i1 %.pre-phi216
  br i1 %or.cond166, label %.loopexit, label %.critedge

.loopexit:                                        ; preds = %bb.s, %.critedge.i135
  %.01930.i143 = phi i64 [ %.019.lcssa.i136, %.critedge.i135 ], [ %i.bc, %bb.s ] ; 2 uses
  store i64 %.01930.i143, ptr %2, align 8, !tbaa !245
  br label %bb.t

bb.t:                                             ; preds = %.loopexit170, %.loopexit
  %.promoted182 = phi i64 [ %.01930.i143, %.loopexit ], [ %.01930.i, %.loopexit170 ] ; 3 uses
  %storemerge = phi i32 [ 0, %.loopexit ], [ %spec.select165, %.loopexit170 ]
  store i32 %storemerge, ptr %3, align 4, !tbaa !165
  %i.ca = icmp ult i64 %.promoted182, %1
  br i1 %i.ca, label %.lr.ph183, label %.critedge2

.lr.ph183:                                        ; preds = %bb.t, %bb.u
  %i.cb = phi i64 [ %i.ce, %bb.u ], [ %.promoted182, %bb.t ] ; 3 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 %i.cb
  %i.cd = load i8, ptr %i.cc, align 1, !tbaa !273
  switch i8 %i.cd, label %.critedge2 [
    i8 32, label %bb.u
    i8 12, label %bb.u
    i8 11, label %bb.u
    i8 10, label %bb.u
    i8 9, label %bb.u
    i8 13, label %bb.u
  ]

bb.u:                                             ; preds = %.lr.ph183, %.lr.ph183, %.lr.ph183, %.lr.ph183, %.lr.ph183, %.lr.ph183
  %i.ce = add i64 %i.cb, 1                        ; 3 uses
  store i64 %i.ce, ptr %2, align 8, !tbaa !245
  %exitcond210.not = icmp eq i64 %i.ce, %1
  br i1 %exitcond210.not, label %.critedge2, label %.lr.ph183, !llvm.loop !1597

.critedge2:                                       ; preds = %bb.u, %.lr.ph183, %bb.t
  %.lcssa = phi i64 [ %.promoted182, %bb.t ], [ %i.cb, %.lr.ph183 ], [ %1, %bb.u ]
  store i8 1, ptr %4, align 1, !tbaa !375
  %i.cf = icmp ne i64 %.lcssa, %1
  %i.cg = zext i1 %i.cf to i8
  br label %.critedge

.lr.ph189:                                        ; preds = %.lr.ph189.preheader, %bb.w
  %.0188 = phi i64 [ %i.cr, %bb.w ], [ 0, %.lr.ph189.preheader ] ; 2 uses
  %.0117187 = phi i32 [ %i.cq, %bb.w ], [ 0, %.lr.ph189.preheader ] ; 5 uses
  %i.ch = phi i64 [ %i.cs, %bb.w ], [ %.promoted186, %.lr.ph189.preheader ] ; 4 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 %i.ch
  %i.cj = load i8, ptr %i.ci, align 1, !tbaa !273 ; 2 uses
  %i.ck = add i8 %i.cj, -48
  %i.cl = icmp ult i8 %i.ck, 10
  br i1 %i.cl, label %bb.v, label %.critedge4

bb.v:                                             ; preds = %.lr.ph189
  %i.cm = icmp sgt i32 %.0117187, 99999999
  br i1 %i.cm, label %.critedge, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.cn = zext nneg i8 %i.cj to i32
  %i.co = mul nsw i32 %.0117187, 10
  %i.cp = add i32 %i.co, -48
  %i.cq = add i32 %i.cp, %i.cn
  %i.cr = add i64 %.0188, 1                       ; 2 uses
  %i.cs = add nuw i64 %i.ch, 1                    ; 2 uses
  store i64 %i.cs, ptr %2, align 8, !tbaa !245
  %exitcond211.not = icmp eq i64 %i.cr, %i.n
  br i1 %exitcond211.not, label %.critedge, label %.lr.ph189, !llvm.loop !1598

.critedge4:                                       ; preds = %.lr.ph189
  %i.ct = icmp ult i64 %.0188, 2
  %or.cond = and i1 %5, %i.ct
  br i1 %or.cond, label %.critedge, label %bb.x

bb.x:                                             ; preds = %.critedge4
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 %i.ch
  %i.cv = sub nsw i32 0, %.0117187
  %spec.select = select i1 %i.h, i32 %i.cv, i32 %.0117187 ; 7 uses
  %i.cw = add nuw i64 %i.ch, 1
  store i64 %i.cw, ptr %2, align 8, !tbaa !245
  %i.cx = load i8, ptr %i.cu, align 1, !tbaa !273 ; 2 uses
  switch i8 %i.cx, label %.critedge [
    i8 92, label %bb.y
    i8 47, label %bb.y
    i8 45, label %bb.y
    i8 32, label %bb.y
  ]

bb.y:                                             ; preds = %bb.x, %bb.x, %bb.x, %bb.x
  %i.cy = call noundef zeroext i1 @_ZN6duckdb4Date16ParseDoubleDigitEPKcmRmRi(ptr noundef nonnull %0, i64 noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 4 dereferenceable(4) %i.b)
  br i1 %i.cy, label %bb.z, label %.critedge

bb.z:                                             ; preds = %bb.y
  %i.cz = load i64, ptr %2, align 8, !tbaa !245   ; 3 uses
  %.not131 = icmp ult i64 %i.cz, %1
  br i1 %.not131, label %bb.aa, label %.critedge

bb.aa:                                            ; preds = %bb.z
  %i.da = add nuw i64 %i.cz, 1                    ; 2 uses
  store i64 %i.da, ptr %2, align 8, !tbaa !245
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 %i.cz
  %i.dc = load i8, ptr %i.db, align 1, !tbaa !273
  %.not132 = icmp eq i8 %i.dc, %i.cx
  %.not133 = icmp ult i64 %i.da, %1
  %or.cond134 = select i1 %.not132, i1 %.not133, i1 false
  br i1 %or.cond134, label %bb.ab, label %.critedge

bb.ab:                                            ; preds = %bb.aa
  %i.dd = call noundef zeroext i1 @_ZN6duckdb4Date16ParseDoubleDigitEPKcmRmRi(ptr noundef nonnull %0, i64 noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
  br i1 %i.dd, label %bb.ac, label %.critedge

bb.ac:                                            ; preds = %bb.ab
  %i.de = load i64, ptr %2, align 8, !tbaa !245   ; 9 uses
  %i.df = sub i64 %1, %i.de
  %i.dg = icmp ugt i64 %i.df, 4
  br i1 %i.dg, label %bb.ad, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit156

bb.ad:                                            ; preds = %bb.ac
  %i.dh = getelementptr inbounds nuw i8, ptr %0, i64 %i.de ; 5 uses
  %i.di = load i8, ptr %i.dh, align 1, !tbaa !273
  switch i8 %i.di, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit156 [
    i8 32, label %bb.ae
    i8 12, label %bb.ae
    i8 11, label %bb.ae
    i8 10, label %bb.ae
    i8 9, label %bb.ae
    i8 13, label %bb.ae
  ]

bb.ae:                                            ; preds = %bb.ad, %bb.ad, %bb.ad, %bb.ad, %bb.ad, %bb.ad
  %i.dj = getelementptr i8, ptr %i.dh, i64 1
  %i.dk = load i8, ptr %i.dj, align 1, !tbaa !273
  %i.dl = icmp eq i8 %i.dk, 40
  br i1 %i.dl, label %bb.af, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit156

bb.af:                                            ; preds = %bb.ae
  %i.dm = getelementptr i8, ptr %i.dh, i64 2
  %i.dn = load i8, ptr %i.dm, align 1, !tbaa !273 ; 3 uses
  %i.do = add i8 %i.dn, -65
  %or.cond.i = icmp ult i8 %i.do, 26
  %i.dp = or disjoint i8 %i.dn, 32
  %spec.select.i = select i1 %or.cond.i, i8 %i.dp, i8 %i.dn
  %i.dq = icmp eq i8 %spec.select.i, 98
  br i1 %i.dq, label %bb.ag, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit156

bb.ag:                                            ; preds = %bb.af
  %i.dr = getelementptr i8, ptr %i.dh, i64 3
  %i.ds = load i8, ptr %i.dr, align 1, !tbaa !273 ; 3 uses
  %i.dt = add i8 %i.ds, -65
  %or.cond.i157 = icmp ult i8 %i.dt, 26
  %i.du = or disjoint i8 %i.ds, 32
  %spec.select.i158 = select i1 %or.cond.i157, i8 %i.du, i8 %i.ds
  %i.dv = icmp eq i8 %spec.select.i158, 99
  br i1 %i.dv, label %bb.ah, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit156

bb.ah:                                            ; preds = %bb.ag
  %i.dw = getelementptr i8, ptr %i.dh, i64 4
  %i.dx = load i8, ptr %i.dw, align 1, !tbaa !273
  %i.dy = icmp eq i8 %i.dx, 41
  br i1 %i.dy, label %bb.ai, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit156

bb.ai:                                            ; preds = %bb.ah
  %i.dz = icmp eq i32 %spec.select, 0
  %or.cond13 = select i1 %i.h, i1 true, i1 %i.dz
  br i1 %or.cond13, label %.critedge, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.ea = sub i32 1, %.0117187
  %i.eb = add i64 %i.de, 5                        ; 2 uses
  store i64 %i.eb, ptr %2, align 8, !tbaa !245
  br label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit156

_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit156: ; preds = %bb.ad, %bb.aj, %bb.ah, %bb.ag, %bb.af, %bb.ae, %bb.ac
  %.promoted193 = phi i64 [ %i.eb, %bb.aj ], [ %i.de, %bb.ah ], [ %i.de, %bb.ag ], [ %i.de, %bb.af ], [ %i.de, %bb.ae ], [ %i.de, %bb.ac ], [ %i.de, %bb.ad ] ; 3 uses
  %.2119 = phi i32 [ %i.ea, %bb.aj ], [ %spec.select, %bb.ah ], [ %spec.select, %bb.ag ], [ %spec.select, %bb.af ], [ %spec.select, %bb.ae ], [ %spec.select, %bb.ac ], [ %spec.select, %bb.ad ]
  %i.ec = icmp ult i64 %.promoted193, %1          ; 2 uses
  br i1 %5, label %.preheader, label %bb.al

.preheader:                                       ; preds = %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit156
  br i1 %i.ec, label %.lr.ph194, label %.critedge15

.lr.ph194:                                        ; preds = %.preheader, %bb.ak
  %i.ed = phi i64 [ %i.eg, %bb.ak ], [ %.promoted193, %.preheader ] ; 2 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %0, i64 %i.ed
  %i.ef = load i8, ptr %i.ee, align 1, !tbaa !273
  switch i8 %i.ef, label %.critedge [
    i8 32, label %bb.ak
    i8 12, label %bb.ak
    i8 11, label %bb.ak
    i8 10, label %bb.ak
    i8 9, label %bb.ak
    i8 13, label %bb.ak
  ]

bb.ak:                                            ; preds = %.lr.ph194, %.lr.ph194, %.lr.ph194, %.lr.ph194, %.lr.ph194, %.lr.ph194
  %i.eg = add i64 %i.ed, 1                        ; 3 uses
  store i64 %i.eg, ptr %2, align 8, !tbaa !245
  %exitcond212.not = icmp eq i64 %i.eg, %1
  br i1 %exitcond212.not, label %.critedge15, label %.lr.ph194, !llvm.loop !1599

bb.al:                                            ; preds = %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit156
  br i1 %i.ec, label %bb.am, label %.critedge15

bb.am:                                            ; preds = %bb.al
  %i.eh = getelementptr inbounds nuw i8, ptr %0, i64 %.promoted193
  %i.ei = load i8, ptr %i.eh, align 1, !tbaa !273
  %i.ej = add i8 %i.ei, -48
  %i.ek = icmp ult i8 %i.ej, 10
  br i1 %i.ek, label %.critedge, label %.critedge15

.critedge15:                                      ; preds = %bb.ak, %.preheader, %bb.al, %bb.am
  %i.el = load i32, ptr %i.b, align 4, !tbaa !165
  %i.em = load i32, ptr %i.a, align 4, !tbaa !165
  %i.en = tail call noundef zeroext i1 @_ZN6duckdb4Date11TryFromDateEiiiRNS_6date_tE(i32 noundef %.2119, i32 noundef %i.el, i32 noundef %i.em, ptr noundef nonnull align 4 dereferenceable(4) %3)
  %i.eo = select i1 %i.en, i8 0, i8 2
  br label %.critedge

.critedge:                                        ; preds = %bb.b, %bb.v, %bb.w, %.lr.ph194, %.lr.ph.preheader.i144, %.lr.ph.i146.1, %.lr.ph.i146.2, %.lr.ph.i146.3, %.lr.ph.i146.4, %.preheader167, %.critedge.i135, %.critedge15, %.critedge4, %bb.x, %bb.y, %bb.z, %bb.aa, %bb.ab, %bb.ai, %bb.am, %bb.d, %.critedge2
  %.1 = phi i8 [ 1, %bb.d ], [ 1, %bb.am ], [ 1, %.lr.ph.i146.1 ], [ %i.cg, %.critedge2 ], [ 1, %bb.x ], [ 1, %.lr.ph194 ], [ 1, %.critedge4 ], [ 1, %.lr.ph.preheader.i144 ], [ 1, %bb.y ], [ 1, %bb.z ], [ 1, %bb.aa ], [ 1, %bb.ab ], [ 1, %bb.ai ], [ %i.eo, %.critedge15 ], [ 1, %.critedge.i135 ], [ 1, %.preheader167 ], [ 1, %bb.w ], [ 1, %.lr.ph.i146.4 ], [ 1, %.lr.ph.i146.3 ], [ 1, %.lr.ph.i146.2 ], [ 2, %bb.v ], [ 1, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #46
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #46
  br label %bb.an

bb.an:                                            ; preds = %bb.a, %.critedge
  %.2 = phi i8 [ %.1, %.critedge ], [ 1, %bb.a ]
  ret i8 %.2
}

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb4Date11FormatErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
.noexc.i:
  %2 = alloca %"class.std::vector.1077", align 8  ; 9 uses
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 4 uses
  store ptr %i.c, ptr %3, align 8, !tbaa !271
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #46
  store i64 64, ptr %i.b, align 8, !tbaa !245
  %i.d = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0) ; 3 uses
  store ptr %i.d, ptr %3, align 8, !tbaa !235
  %i.e = load i64, ptr %i.b, align 8, !tbaa !245  ; 3 uses
  store i64 %i.e, ptr %i.c, align 8, !tbaa !273
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(64) %i.d, ptr noundef nonnull align 1 dereferenceable(64) @.str.76, i64 64, i1 false)
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %i.e, ptr %i.f, align 8, !tbaa !272
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.e
  store i8 0, ptr %i.g, align 1, !tbaa !273
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #46
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 5 uses
  store ptr %i.h, ptr %4, align 8, !tbaa !271
  %i.i = load ptr, ptr %1, align 8, !tbaa !235    ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.k = load i64, ptr %i.j, align 8, !tbaa !272  ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #46
  store i64 %i.k, ptr %i.a, align 8, !tbaa !245
  %i.l = icmp ugt i64 %i.k, 15
  br i1 %i.l, label %.noexc.i7, label %._crit_edge.i.i6

.noexc.i7:                                        ; preds = %.noexc.i
  %i.m = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc8 unwind label %bb.g    ; 2 uses

.noexc8:                                          ; preds = %.noexc.i7
  store ptr %i.m, ptr %4, align 8, !tbaa !235
  %i.n = load i64, ptr %i.a, align 8, !tbaa !245
  store i64 %i.n, ptr %i.h, align 8, !tbaa !273
  br label %._crit_edge.i.i6

._crit_edge.i.i6:                                 ; preds = %.noexc8, %.noexc.i
  %i.o = phi ptr [ %i.m, %.noexc8 ], [ %i.h, %.noexc.i ] ; 2 uses
  switch i64 %i.k, label %bb.b [
    i64 1, label %bb.a
    i64 0, label %bb.c
  ]

bb.a:                                             ; preds = %._crit_edge.i.i6
  %i.p = load i8, ptr %i.i, align 1, !tbaa !273
  store i8 %i.p, ptr %i.o, align 1, !tbaa !273
  br label %bb.c

bb.b:                                             ; preds = %._crit_edge.i.i6
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.o, ptr align 1 %i.i, i64 %i.k, i1 false)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a, %._crit_edge.i.i6
  %i.q = load i64, ptr %i.a, align 8, !tbaa !245  ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %i.q, ptr %i.r, align 8, !tbaa !272
  %i.s = load ptr, ptr %4, align 8, !tbaa !235
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.q
  store i8 0, ptr %i.t, align 1, !tbaa !273
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #46
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #46, !noalias !1604
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, i8 0, i64 24, i1 false), !noalias !1604
  invoke void @_ZN6duckdb9Exception25ConstructMessageRecursiveINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJEEES7_RKS7_RSt6vectorINS_20ExceptionFormatValueESaISB_EERKT_DpOT0_(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %bb.d unwind label %.body

bb.d:                                             ; preds = %bb.c
  %i.u = load ptr, ptr %2, align 8, !tbaa !250, !noalias !1604 ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !251, !noalias !1604 ; 2 uses
  %.not4.i.i.i.i.i = icmp eq ptr %i.u, %i.w
  br i1 %.not4.i.i.i.i.i, label %_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exit.i.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.d, %_ZSt8_DestroyIN6duckdb20ExceptionFormatValueEEvPT_.exit.i.i.i.i.i
  %.05.i.i.i.i.i = phi ptr [ %i.ab, %_ZSt8_DestroyIN6duckdb20ExceptionFormatValueEEvPT_.exit.i.i.i.i.i ], [ %i.u, %bb.d ] ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 32
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !235  ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 48
  %i.aa = icmp eq ptr %i.y, %i.z
  br i1 %i.aa, label %_ZSt8_DestroyIN6duckdb20ExceptionFormatValueEEvPT_.exit.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i
  call void @_ZdlPv(ptr noundef %i.y) #47
  br label %_ZSt8_DestroyIN6duckdb20ExceptionFormatValueEEvPT_.exit.i.i.i.i.i

_ZSt8_DestroyIN6duckdb20ExceptionFormatValueEEvPT_.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i
  %i.ab = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 64 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.ab, %i.w
  br i1 %.not.i.i.i.i.i, label %_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !1

_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i.i: ; preds = %_ZSt8_DestroyIN6duckdb20ExceptionFormatValueEEvPT_.exit.i.i.i.i.i
  %.pr.i.i.i = load ptr, ptr %2, align 8, !tbaa !250, !noalias !1604
  br label %_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exit.i.i.i

_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exit.i.i.i: ; preds = %_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i.i, %bb.d
  %i.ac = phi ptr [ %.pr.i.i.i, %_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i.i ], [ %i.u, %bb.d ] ; 2 uses
  %.not.i.i1.i.i.i = icmp eq ptr %i.ac, null
  br i1 %.not.i.i1.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exit.i.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.ac) #47
  br label %bb.f

.body:                                            ; preds = %bb.c
  %i.ad = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @_ZNSt6vectorIN6duckdb20ExceptionFormatValueESaIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %2) #46
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #46, !noalias !1604
  %i.ae = load ptr, ptr %4, align 8, !tbaa !235   ; 2 uses
  %i.af = icmp eq ptr %i.ae, %i.h
  br i1 %i.af, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12

bb.f:                                             ; preds = %bb.e, %_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #46, !noalias !1604
  %i.ag = load ptr, ptr %4, align 8, !tbaa !235   ; 2 uses
  %i.ah = icmp eq ptr %i.ag, %i.h
  br i1 %i.ah, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.f
  call void @_ZdlPv(ptr noundef %i.ag) #47
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.ai = load ptr, ptr %3, align 8, !tbaa !235   ; 2 uses
  %i.aj = icmp eq ptr %i.ai, %i.c
  br i1 %i.aj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  call void @_ZdlPv(ptr noundef %i.ai) #47
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11
end_hunk_1
