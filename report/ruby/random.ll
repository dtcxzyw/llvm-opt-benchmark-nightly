Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruby/original/random?download=true
inline.NumInlined: 245
inline.NumDeleted: 86
loop-unroll.NumCompletelyUnrolled: 13
loop-unroll.NumUnrolled: 16
begin_hunk_0_@ruby_sip_hash13:bb.a
  %i.y = xor i64 %i.x, %.0203212                  ; 3 uses
  %i.z = add i64 %.0205210, %.0206209             ; 3 uses
  %i.aa = add i64 %i.y, %.0204211                 ; 2 uses
  %i.ab = tail call i64 @llvm.fshl.i64(i64 %.0205210, i64 %.0205210, i64 13)
  %i.ac = tail call i64 @llvm.fshl.i64(i64 %i.y, i64 %i.y, i64 16)
  %i.ad = xor i64 %i.ab, %i.z                     ; 3 uses
  %i.ae = xor i64 %i.ac, %i.aa                    ; 3 uses
  %i.af = tail call i64 @llvm.fshl.i64(i64 %i.z, i64 %i.z, i64 32)
  %i.ag = add i64 %i.aa, %i.ad                    ; 3 uses
  %i.ah = add i64 %i.ae, %i.af                    ; 2 uses
  %i.ai = tail call i64 @llvm.fshl.i64(i64 %i.ad, i64 %i.ad, i64 17)
  %i.aj = tail call i64 @llvm.fshl.i64(i64 %i.ae, i64 %i.ae, i64 21)
  %i.ak = xor i64 %i.ag, %i.ai                    ; 2 uses
  %i.al = xor i64 %i.aj, %i.ah                    ; 2 uses
  %i.am = tail call i64 @llvm.fshl.i64(i64 %i.ag, i64 %i.ag, i64 32) ; 2 uses
  %i.an = xor i64 %i.ah, %i.x                     ; 2 uses
  %.not = icmp eq ptr %i.w, %i.c
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !142

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %.0206.lcssa = phi i64 [ %i.s, %bb.a ], [ %i.an, %.lr.ph ]
  %.0205.lcssa = phi i64 [ %i.t, %bb.a ], [ %i.ak, %.lr.ph ] ; 3 uses
  %.0204.lcssa = phi i64 [ %i.u, %bb.a ], [ %i.am, %.lr.ph ]
  %.0203.lcssa = phi i64 [ %i.v, %bb.a ], [ %i.al, %.lr.ph ]
  %i.ao = shl i64 %2, 56                          ; 8 uses
  switch i64 %i.a, label %default.unreachable220 [
    i64 7, label %bb.b
    i64 6, label %bb.c
    i64 5, label %bb.d
    i64 4, label %bb.e
    i64 3, label %bb.f
    i64 2, label %bb.g
    i64 1, label %bb.h
    i64 0, label %bb.i
  ]

bb.b:                                             ; preds = %._crit_edge
  %i.ap = getelementptr i8, ptr %i.c, i64 6
  %i.aq = load i8, ptr %i.ap, align 1, !tbaa !100
  %i.ar = zext i8 %i.aq to i64
  %i.as = shl nuw nsw i64 %i.ar, 48
  %i.at = or disjoint i64 %i.as, %i.ao
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %._crit_edge
  %.0202 = phi i64 [ %i.at, %bb.b ], [ %i.ao, %._crit_edge ]
  %i.au = getelementptr i8, ptr %i.c, i64 5
  %i.av = load i8, ptr %i.au, align 1, !tbaa !100
  %i.aw = zext i8 %i.av to i64
  %i.ax = shl nuw nsw i64 %i.aw, 40
  %i.ay = or i64 %i.ax, %.0202
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %._crit_edge
  %.1 = phi i64 [ %i.ay, %bb.c ], [ %i.ao, %._crit_edge ]
  %i.az = getelementptr i8, ptr %i.c, i64 4
  %i.ba = load i8, ptr %i.az, align 1, !tbaa !100
  %i.bb = zext i8 %i.ba to i64
  %i.bc = shl nuw nsw i64 %i.bb, 32
  %i.bd = or i64 %i.bc, %.1
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %._crit_edge
  %.2 = phi i64 [ %i.bd, %bb.d ], [ %i.ao, %._crit_edge ]
  %i.be = load i32, ptr %i.c, align 4, !tbaa !19
  %i.bf = zext i32 %i.be to i64
  %i.bg = or i64 %.2, %i.bf
  br label %bb.i

bb.f:                                             ; preds = %._crit_edge
  %i.bh = getelementptr i8, ptr %i.c, i64 2
  %i.bi = load i8, ptr %i.bh, align 1, !tbaa !100
  %i.bj = zext i8 %i.bi to i64
  %i.bk = shl nuw nsw i64 %i.bj, 16
  %i.bl = or disjoint i64 %i.bk, %i.ao
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %._crit_edge
  %.3 = phi i64 [ %i.bl, %bb.f ], [ %i.ao, %._crit_edge ]
  %i.bm = getelementptr i8, ptr %i.c, i64 1
  %i.bn = load i8, ptr %i.bm, align 1, !tbaa !100
  %i.bo = zext i8 %i.bn to i64
  %i.bp = shl nuw nsw i64 %i.bo, 8
  %i.bq = or i64 %i.bp, %.3
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %._crit_edge
  %.4 = phi i64 [ %i.bq, %bb.g ], [ %i.ao, %._crit_edge ]
  %i.br = load i8, ptr %i.c, align 1, !tbaa !100
  %i.bs = zext i8 %i.br to i64
  %i.bt = or i64 %.4, %i.bs
  br label %bb.i

default.unreachable220:                           ; preds = %._crit_edge
  unreachable

bb.i:                                             ; preds = %bb.e, %bb.h, %._crit_edge
  %.5 = phi i64 [ %i.bg, %bb.e ], [ %i.bt, %bb.h ], [ %i.ao, %._crit_edge ] ; 2 uses
  %i.bu = xor i64 %.5, %.0203.lcssa               ; 3 uses
  %i.bv = add i64 %.0205.lcssa, %.0206.lcssa      ; 3 uses
  %i.bw = add i64 %i.bu, %.0204.lcssa             ; 2 uses
  %i.bx = tail call i64 @llvm.fshl.i64(i64 %.0205.lcssa, i64 %.0205.lcssa, i64 13)
  %i.by = tail call i64 @llvm.fshl.i64(i64 %i.bu, i64 %i.bu, i64 16)
  %i.bz = xor i64 %i.bx, %i.bv                    ; 3 uses
  %i.ca = xor i64 %i.by, %i.bw                    ; 3 uses
  %i.cb = tail call i64 @llvm.fshl.i64(i64 %i.bv, i64 %i.bv, i64 32)
  %i.cc = add i64 %i.bw, %i.bz                    ; 3 uses
  %i.cd = add i64 %i.ca, %i.cb                    ; 2 uses
  %i.ce = tail call i64 @llvm.fshl.i64(i64 %i.bz, i64 %i.bz, i64 17)
  %i.cf = tail call i64 @llvm.fshl.i64(i64 %i.ca, i64 %i.ca, i64 21)
  %i.cg = xor i64 %i.cc, %i.ce                    ; 3 uses
  %i.ch = xor i64 %i.cf, %i.cd                    ; 3 uses
  %i.ci = tail call i64 @llvm.fshl.i64(i64 %i.cc, i64 %i.cc, i64 32)
  %i.cj = xor i64 %i.cd, %.5
  %i.ck = xor i64 %i.ci, 255
  %i.cl = add i64 %i.cj, %i.cg                    ; 3 uses
  %i.cm = add i64 %i.ck, %i.ch                    ; 2 uses
  %i.cn = tail call i64 @llvm.fshl.i64(i64 %i.cg, i64 %i.cg, i64 13)
  %i.co = tail call i64 @llvm.fshl.i64(i64 %i.ch, i64 %i.ch, i64 16)
  %i.cp = xor i64 %i.cl, %i.cn                    ; 3 uses
  %i.cq = xor i64 %i.co, %i.cm                    ; 3 uses
  %i.cr = tail call i64 @llvm.fshl.i64(i64 %i.cl, i64 %i.cl, i64 32)
  %i.cs = add i64 %i.cp, %i.cm                    ; 3 uses
  %i.ct = add i64 %i.cr, %i.cq                    ; 2 uses
  %i.cu = tail call i64 @llvm.fshl.i64(i64 %i.cp, i64 %i.cp, i64 17)
  %i.cv = tail call i64 @llvm.fshl.i64(i64 %i.cq, i64 %i.cq, i64 21)
  %i.cw = xor i64 %i.cu, %i.cs                    ; 3 uses
  %i.cx = xor i64 %i.cv, %i.ct                    ; 3 uses
  %i.cy = tail call i64 @llvm.fshl.i64(i64 %i.cs, i64 %i.cs, i64 32)
  %i.cz = add i64 %i.cw, %i.ct                    ; 3 uses
  %i.da = add i64 %i.cy, %i.cx                    ; 2 uses
  %i.db = tail call i64 @llvm.fshl.i64(i64 %i.cw, i64 %i.cw, i64 13)
  %i.dc = tail call i64 @llvm.fshl.i64(i64 %i.cx, i64 %i.cx, i64 16)
  %i.dd = xor i64 %i.db, %i.cz                    ; 3 uses
  %i.de = xor i64 %i.dc, %i.da                    ; 3 uses
  %i.df = tail call i64 @llvm.fshl.i64(i64 %i.cz, i64 %i.cz, i64 32)
  %i.dg = add i64 %i.dd, %i.da                    ; 3 uses
  %i.dh = add i64 %i.df, %i.de                    ; 2 uses
  %i.di = tail call i64 @llvm.fshl.i64(i64 %i.dd, i64 %i.dd, i64 17)
  %i.dj = tail call i64 @llvm.fshl.i64(i64 %i.de, i64 %i.de, i64 21)
  %i.dk = xor i64 %i.di, %i.dg                    ; 3 uses
  %i.dl = xor i64 %i.dj, %i.dh                    ; 3 uses
  %i.dm = tail call i64 @llvm.fshl.i64(i64 %i.dg, i64 %i.dg, i64 32)
  %i.dn = add i64 %i.dk, %i.dh
  %i.do = add i64 %i.dm, %i.dl                    ; 2 uses
  %i.dp = tail call i64 @llvm.fshl.i64(i64 %i.dk, i64 %i.dk, i64 13)
  %i.dq = tail call i64 @llvm.fshl.i64(i64 %i.dl, i64 %i.dl, i64 16)
  %i.dr = xor i64 %i.dp, %i.dn                    ; 3 uses
  %i.ds = xor i64 %i.dq, %i.do                    ; 2 uses
  %i.dt = add i64 %i.dr, %i.do                    ; 3 uses
  %i.du = tail call i64 @llvm.fshl.i64(i64 %i.dr, i64 %i.dr, i64 17)
  %i.dv = tail call i64 @llvm.fshl.i64(i64 %i.ds, i64 %i.ds, i64 21)
  %i.dw = tail call i64 @llvm.fshl.i64(i64 %i.dt, i64 %i.dt, i64 32)
  %i.dx = xor i64 %i.dv, %i.du
  %i.dy = xor i64 %i.dx, %i.dw
  %i.dz = xor i64 %i.dy, %i.dt
  ret i64 %i.dz
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(read, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define dso_local i64 @rb_hash_start(i64 noundef %0) local_unnamed_addr #8 !guid !144 {
bb.a:
  %i.a = load i64, ptr @hash_salt, align 8, !tbaa !100
  %i.b = add i64 %i.a, %0
  ret i64 %i.b
}

; Function Attrs: nofree norecurse nosync nounwind sspstrong memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local i64 @rb_memhash(ptr nofree noundef readonly captures(address) %0, i64 noundef %1) local_unnamed_addr #9 !guid !145 {
bb.a:
  %i.a = tail call i64 @ruby_sip_hash13(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @hash_salt, i64 8), ptr noundef %0, i64 noundef %1)
  ret i64 %i.a
}

; Function Attrs: nounwind sspstrong uwtable
define hidden void @Init_RandomSeedCore() local_unnamed_addr #0 !guid !158 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %0 = alloca %struct.timespec, align 8           ; 5 uses
  %1 = alloca %struct.MT, align 8                 ; 94 uses
  %i.b = alloca [4 x i32], align 16               ; 9 uses
  %i.c = tail call i32 @ruby_fill_random_bytes(ptr noundef nonnull @hash_salt, i64 noundef 24, i32 noundef 0)
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.i, label %.critedge

.critedge:                                        ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.b, ptr %i.a, align 8, !tbaa !103
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #23
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.b, i8 noundef 0, i64 noundef range(i64 0, 2305843009213693949) 16, i1 noundef false) #23
  %i.d = call i32 @clock_gettime(i32 noundef 0, ptr noundef nonnull %0) #23 ; 0 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !159
  %i.g = load i32, ptr %i.b, align 16, !tbaa !19
  %i.h = trunc i64 %i.f to i32
  %i.i = xor i32 %i.g, %i.h
  %i.j = load i64, ptr %0, align 8, !tbaa !160    ; 2 uses
  %i.k = trunc i64 %i.j to i32
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 4 ; 2 uses
  %i.m = load i32, ptr %i.l, align 4, !tbaa !19
  %i.n = xor i32 %i.m, %i.k
  store i32 %i.n, ptr %i.l, align 4, !tbaa !19
  %i.o = lshr i64 %i.j, 32
  %i.p = trunc nuw i64 %i.o to i32
  %i.q = xor i32 %i.i, %i.p
  store i32 %i.q, ptr %i.b, align 16, !tbaa !19
  %i.r = call i32 @getpid() #23
  %i.s = atomicrmw volatile add ptr @fill_random_seed.n, i32 1 seq_cst, align 4
  %i.t = shl i32 %i.s, 16
  %i.u = load ptr, ptr %i.a, align 8, !tbaa !103  ; 2 uses
  %i.v = getelementptr i8, ptr %i.u, i64 8        ; 2 uses
  %i.w = load i32, ptr %i.v, align 4, !tbaa !19
  %i.x = ptrtoint ptr %i.a to i64                 ; 2 uses
  %i.y = trunc i64 %i.x to i32
  %i.z = getelementptr i8, ptr %i.u, i64 12       ; 2 uses
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !19
  %i.ab = xor i32 %i.aa, %i.y
  store i32 %i.ab, ptr %i.z, align 4, !tbaa !19
  %i.ac = lshr i64 %i.x, 32
  %i.ad = trunc nuw i64 %i.ac to i32
  %i.ae = xor i32 %i.r, %i.ad
  %i.af = xor i32 %i.ae, %i.t
  %i.ag = xor i32 %i.af, %i.w
  store i32 %i.ag, ptr %i.v, align 4, !tbaa !19
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store i32 19650218, ptr %1, align 8, !tbaa !19
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %.critedge
  %store_forwarded = phi i32 [ 19650218, %.critedge ], [ %i.as, %bb.c ] ; 2 uses
  %indvars.iv.i.i = phi i64 [ 1, %.critedge ], [ %indvars.iv.next.i.i.1, %bb.c ] ; 4 uses
  %i.ah = getelementptr [4 x i8], ptr %1, i64 %indvars.iv.i.i
  %i.ai = lshr i32 %store_forwarded, 30
  %i.aj = xor i32 %i.ai, %store_forwarded
  %i.ak = mul i32 %i.aj, 1812433253
  %i.al = trunc nuw nsw i64 %indvars.iv.i.i to i32
  %i.am = add i32 %i.ak, %i.al                    ; 3 uses
  store i32 %i.am, ptr %i.ah, align 4, !tbaa !19
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 3 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, 624
  br i1 %exitcond.not.i.i, label %init_genrand.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.an = getelementptr [4 x i8], ptr %1, i64 %indvars.iv.next.i.i
  %i.ao = lshr i32 %i.am, 30
  %i.ap = xor i32 %i.ao, %i.am
  %i.aq = mul i32 %i.ap, 1812433253
  %i.ar = trunc nuw nsw i64 %indvars.iv.next.i.i to i32
  %i.as = add i32 %i.aq, %i.ar                    ; 2 uses
  store i32 %i.as, ptr %i.an, align 4, !tbaa !19
  %indvars.iv.next.i.i.1 = add nuw nsw i64 %indvars.iv.i.i, 2
  br label %bb.b

init_genrand.exit.i:                              ; preds = %bb.b
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 2504 ; 19 uses
  store i32 1, ptr %i.at, align 8, !tbaa !74
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 2496 ; 5 uses
  store ptr %i.au, ptr %i.au, align 8, !tbaa !75
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 2492 ; 2 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.f, %init_genrand.exit.i
  %.051.i = phi i32 [ 624, %init_genrand.exit.i ], [ %i.bq, %bb.f ]
  %.04250.i = phi i32 [ 0, %init_genrand.exit.i ], [ %spec.store.select.i, %bb.f ] ; 3 uses
  %.04349.i = phi i32 [ 1, %init_genrand.exit.i ], [ %.144.i, %bb.f ] ; 3 uses
  %i.aw = sext i32 %.04349.i to i64
  %i.ax = getelementptr [4 x i8], ptr %1, i64 %i.aw ; 2 uses
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !19
  %i.az = add i32 %.04349.i, -1
  %i.ba = sext i32 %i.az to i64
  %i.bb = getelementptr [4 x i8], ptr %1, i64 %i.ba
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !19 ; 2 uses
  %i.bd = lshr i32 %i.bc, 30
  %i.be = xor i32 %i.bd, %i.bc
  %i.bf = mul i32 %i.be, 1664525
  %i.bg = xor i32 %i.bf, %i.ay
  %i.bh = sext i32 %.04250.i to i64
  %i.bi = getelementptr [4 x i8], ptr %i.b, i64 %i.bh
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !19
  %i.bk = add i32 %i.bj, %.04250.i
  %i.bl = add i32 %i.bk, %i.bg
  store i32 %i.bl, ptr %i.ax, align 4, !tbaa !19
  %i.bm = add i32 %.04349.i, 1                    ; 2 uses
  %i.bn = add i32 %.04250.i, 1                    ; 2 uses
  %i.bo = icmp sgt i32 %i.bm, 623
  br i1 %i.bo, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.bp = load i32, ptr %i.av, align 4, !tbaa !19
  store i32 %i.bp, ptr %1, align 8, !tbaa !19
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.144.i = phi i32 [ 1, %bb.e ], [ %i.bm, %bb.d ] ; 2 uses
  %.not48.i = icmp slt i32 %i.bn, 4
  %spec.store.select.i = select i1 %.not48.i, i32 %i.bn, i32 0
  %i.bq = add nsw i32 %.051.i, -1                 ; 2 uses
  %.not.i = icmp eq i32 %i.bq, 0
  br i1 %.not.i, label %.preheader.i, label %bb.d, !llvm.loop !6

.preheader.i:                                     ; preds = %bb.f, %bb.h
  %.153.i = phi i32 [ %i.cg, %bb.h ], [ 623, %bb.f ]
  %.252.i = phi i32 [ %.3.i, %bb.h ], [ %.144.i, %bb.f ] ; 4 uses
  %i.br = sext i32 %.252.i to i64
  %i.bs = getelementptr [4 x i8], ptr %1, i64 %i.br ; 2 uses
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !19
  %i.bu = add i32 %.252.i, -1
  %i.bv = sext i32 %i.bu to i64
  %i.bw = getelementptr [4 x i8], ptr %1, i64 %i.bv
  %i.bx = load i32, ptr %i.bw, align 4, !tbaa !19 ; 2 uses
  %i.by = lshr i32 %i.bx, 30
  %i.bz = xor i32 %i.by, %i.bx
  %i.ca = mul i32 %i.bz, 1566083941
  %i.cb = xor i32 %i.ca, %i.bt
  %i.cc = sub i32 %i.cb, %.252.i
  store i32 %i.cc, ptr %i.bs, align 4, !tbaa !19
  %i.cd = add i32 %.252.i, 1                      ; 2 uses
  %i.ce = icmp sgt i32 %i.cd, 623
  br i1 %i.ce, label %bb.g, label %bb.h

bb.g:                                             ; preds = %.preheader.i
  %i.cf = load i32, ptr %i.av, align 4, !tbaa !19
  store i32 %i.cf, ptr %1, align 8, !tbaa !19
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %.preheader.i
  %.3.i = phi i32 [ 1, %bb.g ], [ %i.cd, %.preheader.i ]
  %i.cg = add nsw i32 %.153.i, -1                 ; 2 uses
  %.not47.i = icmp eq i32 %i.cg, 0
  br i1 %.not47.i, label %init_by_array.exit, label %.preheader.i, !llvm.loop !7

init_by_array.exit:                               ; preds = %bb.h
  store i32 -2147483648, ptr %1, align 8, !tbaa !19
  call void @__explicit_bzero_chk(ptr noundef nonnull %i.b, i64 noundef 16, i64 noundef 16) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  %i.ch = load i32, ptr %i.at, align 8, !tbaa !74
  %i.ci = add i32 %i.ch, -1                       ; 3 uses
  store i32 %i.ci, ptr %i.at, align 8, !tbaa !74
  %i.cj = icmp slt i32 %i.ci, 1
  br i1 %i.cj, label %vector.ph, label %._crit_edge.i58

._crit_edge.i58:                                  ; preds = %init_by_array.exit
  %.pre.i60 = load ptr, ptr %i.au, align 8, !tbaa !75
  br label %genrand_int32.exit71

vector.ph:                                        ; preds = %init_by_array.exit
  store i32 624, ptr %i.at, align 8, !tbaa !74
  %.pre.i.i61 = load i32, ptr %1, align 8, !tbaa !19
  %i.ck = getelementptr inbounds nuw i8, ptr %1, i64 896
  %vector.recur.init = insertelement <4 x i32> poison, i32 %.pre.i.i61, i64 3
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vector.recur = phi <4 x i32> [ %vector.recur.init, %vector.ph ], [ %wide.load178, %vector.body ]
  %i.cl = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %1, i64 %i.cl ; 6 uses
  %i.cm = getelementptr i8, ptr %next.gep, i64 1588
  %i.cn = getelementptr i8, ptr %next.gep, i64 1604
  %wide.load = load <4 x i32>, ptr %i.cm, align 4, !tbaa !19
  %wide.load176 = load <4 x i32>, ptr %i.cn, align 4, !tbaa !19
  %i.co = getelementptr i8, ptr %next.gep, i64 4
  %i.cp = getelementptr i8, ptr %next.gep, i64 20
  %wide.load177 = load <4 x i32>, ptr %i.co, align 4, !tbaa !19 ; 4 uses
  %wide.load178 = load <4 x i32>, ptr %i.cp, align 4, !tbaa !19 ; 5 uses
  %i.cq = shufflevector <4 x i32> %vector.recur, <4 x i32> %wide.load177, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %i.cr = shufflevector <4 x i32> %wide.load177, <4 x i32> %wide.load178, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %i.cs = and <4 x i32> %i.cq, splat (i32 -2147483648)
  %i.ct = and <4 x i32> %i.cr, splat (i32 -2147483648)
  %i.cu = and <4 x i32> %wide.load177, splat (i32 2147483646)
  %i.cv = and <4 x i32> %wide.load178, splat (i32 2147483646)
  %i.cw = or disjoint <4 x i32> %i.cu, %i.cs
  %i.cx = or disjoint <4 x i32> %i.cv, %i.ct
  %i.cy = lshr exact <4 x i32> %i.cw, splat (i32 1)
  %i.cz = lshr exact <4 x i32> %i.cx, splat (i32 1)
  %i.da = and <4 x i32> %wide.load177, splat (i32 1)
  %i.db = and <4 x i32> %wide.load178, splat (i32 1)
  %i.dc = icmp eq <4 x i32> %i.da, zeroinitializer
  %i.dd = icmp eq <4 x i32> %i.db, zeroinitializer
  %i.de = select <4 x i1> %i.dc, <4 x i32> zeroinitializer, <4 x i32> splat (i32 -1727483681)
  %i.df = select <4 x i1> %i.dd, <4 x i32> zeroinitializer, <4 x i32> splat (i32 -1727483681)
  %i.dg = xor <4 x i32> %i.de, %wide.load
  %i.dh = xor <4 x i32> %i.df, %wide.load176
  %i.di = xor <4 x i32> %i.dg, %i.cy
  %i.dj = xor <4 x i32> %i.dh, %i.cz
  %i.dk = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %i.di, ptr %next.gep, align 8, !tbaa !19
  store <4 x i32> %i.dj, ptr %i.dk, align 8, !tbaa !19
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.dl = icmp eq i64 %index.next, 224
  br i1 %i.dl, label %vector.ph180, label %vector.body, !llvm.loop !146

vector.ph180:                                     ; preds = %vector.body
  %vector.recur.extract = extractelement <4 x i32> %wide.load178, i64 3
  %i.dm = getelementptr inbounds nuw i8, ptr %1, i64 2484
  %i.dn = load i32, ptr %i.dm, align 4, !tbaa !19
  %i.do = and i32 %vector.recur.extract, -2147483648
  %i.dp = getelementptr inbounds nuw i8, ptr %1, i64 900 ; 2 uses
  %i.dq = load i32, ptr %i.dp, align 4, !tbaa !19 ; 3 uses
  %i.dr = and i32 %i.dq, 2147483646
  %i.ds = or disjoint i32 %i.dr, %i.do
  %i.dt = lshr exact i32 %i.ds, 1
  %i.du = and i32 %i.dq, 1
  %.not29.i.i63 = icmp eq i32 %i.du, 0
  %i.dv = select i1 %.not29.i.i63, i32 0, i32 -1727483681
end_hunk_0
