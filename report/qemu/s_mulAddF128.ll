Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qemu/original/s_mulAddF128?download=true
inline.NumInlined: 12
inline.NumDeleted: 4
begin_hunk_0_@softfloat_mulAddF128:bb.a

bb.g:                                             ; preds = %bb.f
  %i.y = or i64 %1, %i.e
  %i.z = or i64 %i.y, %i.d
  br label %bb.bf

bb.h:                                             ; preds = %bb.e
  %i.aa = icmp eq i64 %i.m, 32767
  br i1 %i.aa, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ab = or i64 %i.n, %5
  %.not295 = icmp eq i64 %i.ab, 0
  br i1 %.not295, label %bb.bn, label %bb.bk

bb.j:                                             ; preds = %bb.h
  %.not = icmp eq i64 %i.d, 0
  br i1 %.not, label %bb.k, label %bb.m

bb.k:                                             ; preds = %bb.j
  %i.ac = or i64 %i.e, %1
  %.not270 = icmp eq i64 %i.ac, 0
  br i1 %.not270, label %bb.bl, label %bb.l

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #5
  call void @softfloat_normSubnormalF128Sig(ptr dead_on_unwind nonnull writable sret(%struct.exp32_sig128) align 8 %7, i64 noundef %i.e, i64 noundef %1) #5
  %.sroa.0121.0.copyload = load i64, ptr %7, align 8, !tbaa !13
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 8
  %.sroa.8.sroa.0.0.copyload = load i64, ptr %.sroa.8.0..sroa_idx, align 8, !tbaa !13
  %.sroa.8.sroa.8.0..sroa.8.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 16
  %.sroa.8.sroa.8.0.copyload = load i64, ptr %.sroa.8.sroa.8.0..sroa.8.0..sroa_idx.sroa_idx, align 8, !tbaa !13
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #5
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.j
  %.sroa.0200.0 = phi i64 [ %1, %bb.j ], [ %.sroa.8.sroa.0.0.copyload, %bb.l ] ; 2 uses
  %.sroa.11.0 = phi i64 [ %i.e, %bb.j ], [ %.sroa.8.sroa.8.0.copyload, %bb.l ]
  %.0 = phi i64 [ %i.d, %bb.j ], [ %.sroa.0121.0.copyload, %bb.l ]
  %.not271 = icmp eq i64 %i.g, 0
  br i1 %.not271, label %bb.n, label %bb.p

bb.n:                                             ; preds = %bb.m
  %i.ad = or i64 %i.h, %3
  %.not272 = icmp eq i64 %i.ad, 0
  br i1 %.not272, label %bb.bl, label %bb.o

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #5
  call void @softfloat_normSubnormalF128Sig(ptr dead_on_unwind nonnull writable sret(%struct.exp32_sig128) align 8 %8, i64 noundef %i.h, i64 noundef %3) #5
  %.sroa.0121.0.copyload124 = load i64, ptr %8, align 8, !tbaa !13
  %.sroa.8.0..sroa_idx126 = getelementptr inbounds nuw i8, ptr %8, i64 8
  %.sroa.8.sroa.0.0.copyload159 = load i64, ptr %.sroa.8.0..sroa_idx126, align 8, !tbaa !13
  %.sroa.8.sroa.8.0..sroa.8.0..sroa_idx126.sroa_idx = getelementptr inbounds nuw i8, ptr %8, i64 16
  %.sroa.8.sroa.8.0.copyload163 = load i64, ptr %.sroa.8.sroa.8.0..sroa.8.0..sroa_idx126.sroa_idx, align 8, !tbaa !13
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #5
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.m
  %.sroa.0179.0 = phi i64 [ %3, %bb.m ], [ %.sroa.8.sroa.0.0.copyload159, %bb.o ] ; 2 uses
  %.sroa.12186.0 = phi i64 [ %i.h, %bb.m ], [ %.sroa.8.sroa.8.0.copyload163, %bb.o ]
  %.0242 = phi i64 [ %i.g, %bb.m ], [ %.sroa.0121.0.copyload124, %bb.o ]
  %i.ae = add nsw i64 %.0242, %.0
  %i.af = call i64 @llvm.fshl.i64(i64 %.sroa.11.0, i64 %.sroa.0200.0, i64 8)
  %i.ag = or i64 %i.af, 72057594037927936
  %i.ah = shl i64 %.sroa.0200.0, 8
  %i.ai = call i64 @llvm.fshl.i64(i64 %.sroa.12186.0, i64 %.sroa.0179.0, i64 15)
  %i.aj = or i64 %i.ai, -9223372036854775808
  %i.ak = shl i64 %.sroa.0179.0, 15
  call void @softfloat_mul128To256M(i64 noundef %i.ag, i64 noundef %i.ah, i64 noundef %i.aj, i64 noundef %i.ak, ptr noundef nonnull %i.a) #5
  %i.al = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 7 uses
  %i.am = load i64, ptr %i.al, align 8, !tbaa !13 ; 8 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 7 uses
  %i.ao = load i64, ptr %i.an, align 16, !tbaa !13 ; 7 uses
  %i.ap = and i64 %i.am, 72057594037927936
  %.not275.not.not = icmp eq i64 %i.ap, 0         ; 5 uses
  %spec.select = sext i1 %.not275.not.not to i64  ; 2 uses
  %spec.select302.v = select i1 %.not275.not.not, i64 -16383, i64 -16382
  %spec.select302 = add nsw i64 %i.ae, %spec.select302.v ; 6 uses
  %.not276 = icmp eq i64 %i.m, 0
  br i1 %.not276, label %bb.q, label %bb.t

bb.q:                                             ; preds = %bb.p
  %i.aq = or i64 %i.n, %5
  %.not277 = icmp eq i64 %i.aq, 0
  br i1 %.not277, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.ar = select i1 %.not275.not.not, i64 7, i64 8
  br label %bb.bb

bb.s:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #5
  call void @softfloat_normSubnormalF128Sig(ptr dead_on_unwind nonnull writable sret(%struct.exp32_sig128) align 8 %9, i64 noundef %i.n, i64 noundef %5) #5
  %.sroa.0121.0.copyload125 = load i64, ptr %9, align 8, !tbaa !13
  %.sroa.8.0..sroa_idx127 = getelementptr inbounds nuw i8, ptr %9, i64 8
  %.sroa.8.sroa.0.0.copyload160 = load i64, ptr %.sroa.8.0..sroa_idx127, align 8, !tbaa !13
  %.sroa.8.sroa.8.0..sroa.8.0..sroa_idx127.sroa_idx = getelementptr inbounds nuw i8, ptr %9, i64 16
  %.sroa.8.sroa.8.0.copyload164 = load i64, ptr %.sroa.8.sroa.8.0..sroa.8.0..sroa_idx127.sroa_idx, align 8, !tbaa !13
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #5
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.p
  %.sroa.0137.0 = phi i64 [ %5, %bb.p ], [ %.sroa.8.sroa.0.0.copyload160, %bb.s ] ; 2 uses
  %.sroa.16.0 = phi i64 [ %i.n, %bb.p ], [ %.sroa.8.sroa.8.0.copyload164, %bb.s ]
  %.0243 = phi i64 [ %i.m, %bb.p ], [ %.sroa.0121.0.copyload125, %bb.s ] ; 7 uses
  %i.as = call i64 @llvm.fshl.i64(i64 %.sroa.16.0, i64 %.sroa.0137.0, i64 8)
  %i.at = or i64 %i.as, 72057594037927936         ; 5 uses
  %i.au = shl i64 %.sroa.0137.0, 8                ; 9 uses
  %i.av = sub nsw i64 %spec.select302, %.0243     ; 8 uses
  %i.aw = icmp slt i64 %i.av, 0                   ; 2 uses
  br i1 %i.aw, label %bb.u, label %bb.z

bb.u:                                             ; preds = %bb.t
  %i.ax = xor i1 %i.q, %i.k
  %i.ay = icmp eq i64 %i.av, -1
  %or.cond.not = and i1 %i.ax, %i.ay
  br i1 %or.cond.not, label %bb.x, label %bb.v

bb.v:                                             ; preds = %bb.u
  %.not282 = icmp eq i64 %i.av, %spec.select
  br i1 %.not282, label %bb.ae, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.az = sub nsw i64 %spec.select, %i.av
  %i.ba = call { i64, i64 } @softfloat_shiftRightJam128(i64 noundef %i.am, i64 noundef %i.ao, i64 noundef %i.az) #5 ; 2 uses
  %i.bb = extractvalue { i64, i64 } %i.ba, 0
  %i.bc = extractvalue { i64, i64 } %i.ba, 1
  br label %bb.ae

bb.x:                                             ; preds = %bb.u
  br i1 %.not275.not.not, label %bb.ae, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.bd = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.be = load i64, ptr %i.bd, align 8, !tbaa !13 ; 2 uses
  %i.bf = load i64, ptr %i.a, align 16, !tbaa !13
  %i.bg = call i64 @llvm.fshl.i64(i64 %i.be, i64 %i.bf, i64 63)
  %i.bh = call i64 @llvm.fshl.i64(i64 %i.ao, i64 %i.be, i64 63)
  store i64 %i.bh, ptr %i.bd, align 8, !tbaa !13
  store i64 %i.bg, ptr %i.a, align 16, !tbaa !13
  %i.bi = lshr i64 %i.am, 1                       ; 2 uses
  %i.bj = call i64 @llvm.fshl.i64(i64 %i.am, i64 %i.ao, i64 63) ; 2 uses
  store i64 %i.bi, ptr %i.al, align 8, !tbaa !13
  store i64 %i.bj, ptr %i.an, align 16, !tbaa !13
  br label %bb.ae

bb.z:                                             ; preds = %bb.t
  br i1 %.not275.not.not, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  call void @softfloat_add256M(ptr noundef nonnull %i.a, ptr noundef nonnull %i.a, ptr noundef nonnull %i.a) #5
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %.not279 = icmp eq i64 %spec.select302, %.0243
  br i1 %.not279, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.bk = load i64, ptr %i.al, align 8, !tbaa !13
  %i.bl = load i64, ptr %i.an, align 16, !tbaa !13
  br label %bb.ae

bb.ad:                                            ; preds = %bb.ab
  %i.bm = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i64 %i.at, ptr %i.bm, align 8, !tbaa !13
  %i.bn = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 %i.au, ptr %i.bn, align 16, !tbaa !13
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.b, i8 0, i64 16, i1 false)
  call void @softfloat_shiftRightJam256M(ptr noundef nonnull %i.b, i64 noundef %i.av, ptr noundef nonnull %i.b) #5
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ac, %bb.ad, %bb.w, %bb.v, %bb.y, %bb.x
  %.sroa.073.0 = phi i64 [ %i.bb, %bb.w ], [ %i.ao, %bb.v ], [ %i.ao, %bb.x ], [ %i.bj, %bb.y ], [ %i.ao, %bb.ad ], [ %i.bl, %bb.ac ] ; 6 uses
  %.sroa.37.0 = phi i64 [ %i.bc, %bb.w ], [ %i.am, %bb.v ], [ %i.am, %bb.x ], [ %i.bi, %bb.y ], [ %i.am, %bb.ad ], [ %i.bk, %bb.ac ] ; 3 uses
  %.1247 = phi i64 [ %.0243, %bb.w ], [ %.0243, %bb.v ], [ %.0243, %bb.x ], [ %.0243, %bb.y ], [ %spec.select302, %bb.ad ], [ %spec.select302, %bb.ac ] ; 7 uses
  %i.bo = xor i1 %i.q, %i.k
  br i1 %i.bo, label %bb.aj, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.bp = icmp slt i64 %i.av, 1
  br i1 %i.bp, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.bq = add i64 %.sroa.073.0, %i.au             ; 2 uses
  %i.br = add i64 %.sroa.37.0, %i.at
  %i.bs = icmp ult i64 %i.bq, %i.au
  %i.bt = zext i1 %i.bs to i64
  %i.bu = add i64 %i.br, %i.bt
  br label %bb.ai

bb.ah:                                            ; preds = %bb.af
  call void @softfloat_add256M(ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef nonnull %i.a) #5
  %i.bv = load i64, ptr %i.al, align 8, !tbaa !13
  %i.bw = load i64, ptr %i.an, align 16, !tbaa !13
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag
  %.sroa.073.1 = phi i64 [ %i.bq, %bb.ag ], [ %i.bw, %bb.ah ]
  %.sroa.37.1 = phi i64 [ %i.bu, %bb.ag ], [ %i.bv, %bb.ah ] ; 2 uses
  %10 = lshr i64 %.sroa.37.1, 57
  %11 = and i64 %10, 1                            ; 2 uses
  %spec.select303 = or disjoint i64 %11, 8
  %spec.select304 = add nsw i64 %11, %.1247
  br label %bb.bb

bb.aj:                                            ; preds = %bb.ae
  br i1 %i.aw, label %bb.ak, label %bb.an

bb.ak:                                            ; preds = %bb.aj
  %.not286 = icmp eq i64 %i.av, -1
  br i1 %.not286, label %bb.am, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.bx = sub i64 %i.au, %.sroa.073.0
  %i.by = sub i64 %i.at, %.sroa.37.0
  %i.bz = icmp ult i64 %i.au, %.sroa.073.0
  %.neg.i = sext i1 %i.bz to i64
  %i.ca = add i64 %i.by, %.neg.i
  %i.cb = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.cc = load i64, ptr %i.cb, align 8, !tbaa !13
  %i.cd = load i64, ptr %i.a, align 16, !tbaa !13
  %i.ce = or i64 %i.cd, %i.cc                     ; 2 uses
  %.not292 = icmp ne i64 %i.ce, 0                 ; 2 uses
  %i.cf = icmp eq i64 %i.au, %.sroa.073.0
  %i.cg = sext i1 %.not292 to i64
  %.sroa.073.2 = add i64 %i.bx, %i.cg
  %narrow = select i1 %.not292, i1 %i.cf, i1 false
  %i.ch = sext i1 %narrow to i64
  %.sroa.37.2 = add i64 %i.ca, %i.ch              ; 2 uses
  %i.ci = and i64 %.sroa.37.2, 72057594037927936
  %.not293 = icmp eq i64 %i.ci, 0                 ; 2 uses
  %spec.select305 = select i1 %.not293, i64 7, i64 8
  %i.cj = sext i1 %.not293 to i64
  %spec.select306 = add nsw i64 %.1247, %i.cj
  br label %bb.bc

bb.am:                                            ; preds = %bb.ak
  %i.ck = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i64 %i.at, ptr %i.ck, align 8, !tbaa !13
  %i.cl = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 %i.au, ptr %i.cl, align 16, !tbaa !13
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.b, i8 0, i64 16, i1 false)
  br label %thread-pre-split.sink.split

bb.an:                                            ; preds = %bb.aj
  %.not283 = icmp eq i64 %spec.select302, %.0243
  br i1 %.not283, label %bb.ao, label %bb.ar

bb.ao:                                            ; preds = %bb.an
  %i.cm = sub i64 %.sroa.073.0, %i.au             ; 3 uses
  %i.cn = sub i64 %.sroa.37.0, %i.at
  %i.co = icmp ult i64 %.sroa.073.0, %i.au
  %.neg.i326 = sext i1 %i.co to i64
  %i.cp = add i64 %i.cn, %.neg.i326               ; 4 uses
  %i.cq = or i64 %i.cp, %i.cm
  %i.cr = icmp ne i64 %i.cq, 0
  %i.cs = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.ct = load i64, ptr %i.cs, align 8            ; 2 uses
  %i.cu = icmp ne i64 %i.ct, 0
  %or.cond4 = select i1 %i.cr, i1 true, i1 %i.cu
  %i.cv = load i64, ptr %i.a, align 16            ; 2 uses
  %i.cw = icmp ne i64 %i.cv, 0
  %or.cond7 = select i1 %or.cond4, i1 true, i1 %i.cw
  br i1 %or.cond7, label %bb.ap, label %bb.bm

bb.ap:                                            ; preds = %bb.ao
  store i64 %i.cp, ptr %i.al, align 8, !tbaa !13
  store i64 %i.cm, ptr %i.an, align 16, !tbaa !13
  %.not284 = icmp sgt i64 %i.cp, -1
  br i1 %.not284, label %bb.at, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.cx = xor i1 %i.q, true
  br label %thread-pre-split.sink.split

bb.ar:                                            ; preds = %bb.an
  call void @softfloat_sub256M(ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef nonnull %i.a) #5
  %i.cy = icmp samesign ugt i64 %i.av, 1
  br i1 %i.cy, label %bb.as, label %thread-pre-split

bb.as:                                            ; preds = %bb.ar
  %i.cz = load i64, ptr %i.al, align 8, !tbaa !13 ; 2 uses
  %i.da = load i64, ptr %i.an, align 16, !tbaa !13
  %i.db = and i64 %i.cz, 72057594037927936
  %.not285 = icmp eq i64 %i.db, 0                 ; 2 uses
  %spec.select307 = select i1 %.not285, i64 7, i64 8
  %i.dc = sext i1 %.not285 to i64
  %spec.select308 = add nsw i64 %.1247, %i.dc
  br label %bb.bb

thread-pre-split.sink.split:                      ; preds = %bb.aq, %bb.am
  %.sink = phi ptr [ %i.b, %bb.am ], [ @softfloat_mulAddF128.zero256, %bb.aq ]
  %.0244.ph.ph = phi i1 [ %i.k, %bb.am ], [ %i.cx, %bb.aq ]
  call void @softfloat_sub256M(ptr noundef nonnull %.sink, ptr noundef nonnull %i.a, ptr noundef nonnull %i.a) #5
  br label %thread-pre-split

thread-pre-split:                                 ; preds = %thread-pre-split.sink.split, %bb.ar
  %.0244.ph = phi i1 [ %i.q, %bb.ar ], [ %.0244.ph.ph, %thread-pre-split.sink.split ]
  %.pr = load i64, ptr %i.al, align 8, !tbaa !13
  %.pr335 = load i64, ptr %i.an, align 16, !tbaa !13
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !13
  %.pre336 = load i64, ptr %i.a, align 16, !tbaa !13
  br label %bb.at

bb.at:                                            ; preds = %thread-pre-split, %bb.ap
  %i.dd = phi i64 [ %.pre336, %thread-pre-split ], [ %i.cv, %bb.ap ] ; 4 uses
  %i.de = phi i64 [ %.pre, %thread-pre-split ], [ %i.ct, %bb.ap ] ; 4 uses
  %i.df = phi i64 [ %.pr335, %thread-pre-split ], [ %i.cm, %bb.ap ] ; 3 uses
  %i.dg = phi i64 [ %.pr, %thread-pre-split ], [ %i.cp, %bb.ap ] ; 2 uses
  %.0244 = phi i1 [ %.0244.ph, %thread-pre-split ], [ %i.q, %bb.ap ] ; 3 uses
  %.not287 = icmp eq i64 %i.dg, 0
  br i1 %.not287, label %bb.av, label %bb.au

bb.au:                                            ; preds = %bb.at
  %.not290 = icmp ne i64 %i.dd, 0
  %i.dh = zext i1 %.not290 to i64
  %spec.select309 = or i64 %i.de, %i.dh
  br label %bb.ay

bb.av:                                            ; preds = %bb.at
  %i.di = add nsw i64 %.1247, -64
  %.not288 = icmp eq i64 %i.df, 0
  br i1 %.not288, label %bb.aw, label %bb.ay

bb.aw:                                            ; preds = %bb.av
  %i.dj = add nsw i64 %.1247, -128
  %.not289 = icmp eq i64 %i.de, 0
  br i1 %.not289, label %bb.ax, label %bb.ay

bb.ax:                                            ; preds = %bb.aw
  %i.dk = add nsw i64 %.1247, -192
  br label %bb.ay

bb.ay:                                            ; preds = %bb.au, %bb.av, %bb.ax, %bb.aw
  %.0252 = phi i64 [ 0, %bb.ax ], [ %spec.select309, %bb.au ], [ %i.dd, %bb.av ], [ 0, %bb.aw ] ; 4 uses
  %.sroa.073.3 = phi i64 [ 0, %bb.ax ], [ %i.df, %bb.au ], [ %i.de, %bb.av ], [ %i.dd, %bb.aw ] ; 4 uses
  %.sroa.37.3 = phi i64 [ %i.dd, %bb.ax ], [ %i.dg, %bb.au ], [ %i.df, %bb.av ], [ %i.de, %bb.aw ] ; 4 uses
  %.2248 = phi i64 [ %i.dk, %bb.ax ], [ %.1247, %bb.au ], [ %i.di, %bb.av ], [ %i.dj, %bb.aw ]
  %i.dl = call zeroext i8 @softfloat_countLeadingZeros64(i64 noundef %.sroa.37.3) #5 ; 5 uses
  %i.dm = zext i8 %i.dl to i64                    ; 2 uses
  %reass.sub = sub i64 %.2248, %i.dm
  %i.dn = add i64 %reass.sub, 7                   ; 3 uses
  %.neg = add i8 %i.dl, -15
  %i.do = sub nuw nsw i64 15, %i.dm
  %i.dp = icmp ult i8 %i.dl, 15
  br i1 %i.dp, label %bb.bc, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %.not291 = icmp eq i8 %i.dl, 15
  br i1 %.not291, label %bb.bd, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.dq = zext i8 %.neg to i64                    ; 3 uses
  %i.dr = shl i64 %.sroa.37.3, %i.dq
  %i.ds = sub i8 15, %i.dl
  %i.dt = and i8 %i.ds, 63
  %i.du = zext nneg i8 %i.dt to i64               ; 2 uses
  %i.dv = lshr i64 %.sroa.073.3, %i.du
  %i.dw = or i64 %i.dv, %i.dr
  %i.dx = shl i64 %.sroa.073.3, %i.dq
  %i.dy = lshr i64 %.0252, %i.du
  %i.dz = shl i64 %.0252, %i.dq
  %i.ea = or i64 %i.dy, %i.dx
  br label %bb.bd

bb.bb:                                            ; preds = %bb.as, %bb.ai, %bb.r
  %.1250 = phi i64 [ %i.ar, %bb.r ], [ %spec.select303, %bb.ai ], [ %spec.select307, %bb.as ]
  %.sroa.073.4 = phi i64 [ %i.ao, %bb.r ], [ %.sroa.073.1, %bb.ai ], [ %i.da, %bb.as ]
  %.sroa.37.4 = phi i64 [ %i.am, %bb.r ], [ %.sroa.37.1, %bb.ai ], [ %i.cz, %bb.as ]
  %.3 = phi i64 [ %spec.select302, %bb.r ], [ %spec.select304, %bb.ai ], [ %spec.select308, %bb.as ]
  %i.eb = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.ec = load i64, ptr %i.eb, align 8, !tbaa !13
  %i.ed = load i64, ptr %i.a, align 16, !tbaa !13
  %i.ee = or i64 %i.ed, %i.ec
  br label %bb.bc

bb.bc:                                            ; preds = %bb.al, %bb.ay, %bb.bb
  %.1253 = phi i64 [ %i.ee, %bb.bb ], [ %i.ce, %bb.al ], [ %.0252, %bb.ay ]
  %.2251 = phi i64 [ %.1250, %bb.bb ], [ %spec.select305, %bb.al ], [ %i.do, %bb.ay ] ; 4 uses
  %.sroa.073.5 = phi i64 [ %.sroa.073.4, %bb.bb ], [ %.sroa.073.2, %bb.al ], [ %.sroa.073.3, %bb.ay ] ; 2 uses
  %.sroa.37.5 = phi i64 [ %.sroa.37.4, %bb.bb ], [ %.sroa.37.2, %bb.al ], [ %.sroa.37.3, %bb.ay ] ; 2 uses
  %.4 = phi i64 [ %.3, %bb.bb ], [ %spec.select306, %bb.al ], [ %i.dn, %bb.ay ]
  %.1 = phi i1 [ %i.q, %bb.bb ], [ %i.k, %bb.al ], [ %.0244, %bb.ay ]
  %i.ef = sub nuw nsw i64 64, %.2251
  %i.eg = shl i64 %.sroa.073.5, %i.ef
  %i.eh = icmp ne i64 %.1253, 0
  %i.ei = zext i1 %i.eh to i64
  %i.ej = or i64 %i.eg, %i.ei
  %i.ek = lshr i64 %.sroa.37.5, %.2251
  %i.el = sub nsw i64 0, %.2251
  %i.em = and i64 %i.el, 63
  %i.en = shl i64 %.sroa.37.5, %i.em
  %i.eo = lshr i64 %.sroa.073.5, %.2251
  %i.ep = or i64 %i.en, %i.eo
  br label %bb.bd

bb.bd:                                            ; preds = %bb.az, %bb.ba, %bb.bc
  %.2254 = phi i64 [ %i.ej, %bb.bc ], [ %i.dz, %bb.ba ], [ %.0252, %bb.az ]
  %.sroa.073.6 = phi i64 [ %i.ep, %bb.bc ], [ %i.ea, %bb.ba ], [ %.sroa.073.3, %bb.az ]
  %.sroa.37.6 = phi i64 [ %i.ek, %bb.bc ], [ %i.dw, %bb.ba ], [ %.sroa.37.3, %bb.az ]
  %.5 = phi i64 [ %.4, %bb.bc ], [ %i.dn, %bb.ba ], [ %i.dn, %bb.az ]
end_hunk_0
