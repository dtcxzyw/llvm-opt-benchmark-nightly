inline.NumInlined: 245
inline.NumDeleted: 86
begin_hunk_0_@ruby_sip_hash13:bb.a
  %i.w = getelementptr i8, ptr %.0213, i64 8      ; 2 uses
  %i.x = load i64, ptr %.0213, align 8, !tbaa !35 ; 2 uses
  %i.y = xor i64 %i.x, %.0205210                  ; 3 uses
  %i.z = add i64 %.0202212, %.0204211             ; 3 uses
  %i.aa = add i64 %i.y, %.0206209                 ; 2 uses
  %i.ab = tail call i64 @llvm.fshl.i64(i64 %.0204211, i64 %.0204211, i64 13)
  %i.ac = tail call i64 @llvm.fshl.i64(i64 %i.y, i64 %i.y, i64 16)
  %i.ad = xor i64 %i.z, %i.ab                     ; 3 uses
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
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !66

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %.0206.lcssa = phi i64 [ %i.u, %bb.a ], [ %i.am, %.lr.ph ]
  %.0205.lcssa = phi i64 [ %i.v, %bb.a ], [ %i.al, %.lr.ph ]
  %.0204.lcssa = phi i64 [ %i.t, %bb.a ], [ %i.ak, %.lr.ph ] ; 3 uses
  %.0202.lcssa = phi i64 [ %i.s, %bb.a ], [ %i.an, %.lr.ph ]
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
  %i.aq = load i8, ptr %i.ap, align 1, !tbaa !57
  %i.ar = zext i8 %i.aq to i64
  %i.as = shl nuw nsw i64 %i.ar, 48
  %i.at = or disjoint i64 %i.as, %i.ao
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %._crit_edge
  %.0203 = phi i64 [ %i.at, %bb.b ], [ %i.ao, %._crit_edge ]
  %i.au = getelementptr i8, ptr %i.c, i64 5
  %i.av = load i8, ptr %i.au, align 1, !tbaa !57
  %i.aw = zext i8 %i.av to i64
  %i.ax = shl nuw nsw i64 %i.aw, 40
  %i.ay = or i64 %i.ax, %.0203
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %._crit_edge
  %.1 = phi i64 [ %i.ay, %bb.c ], [ %i.ao, %._crit_edge ]
  %i.az = getelementptr i8, ptr %i.c, i64 4
  %i.ba = load i8, ptr %i.az, align 1, !tbaa !57
  %i.bb = zext i8 %i.ba to i64
  %i.bc = shl nuw nsw i64 %i.bb, 32
  %i.bd = or i64 %i.bc, %.1
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %._crit_edge
  %.2 = phi i64 [ %i.bd, %bb.d ], [ %i.ao, %._crit_edge ]
  %i.be = load i32, ptr %i.c, align 4, !tbaa !7
  %i.bf = zext i32 %i.be to i64
  %i.bg = or i64 %.2, %i.bf
  br label %bb.i

bb.f:                                             ; preds = %._crit_edge
  %i.bh = getelementptr i8, ptr %i.c, i64 2
  %i.bi = load i8, ptr %i.bh, align 1, !tbaa !57
  %i.bj = zext i8 %i.bi to i64
  %i.bk = shl nuw nsw i64 %i.bj, 16
  %i.bl = or disjoint i64 %i.bk, %i.ao
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %._crit_edge
  %.3 = phi i64 [ %i.bl, %bb.f ], [ %i.ao, %._crit_edge ]
  %i.bm = getelementptr i8, ptr %i.c, i64 1
  %i.bn = load i8, ptr %i.bm, align 1, !tbaa !57
  %i.bo = zext i8 %i.bn to i64
  %i.bp = shl nuw nsw i64 %i.bo, 8
  %i.bq = or i64 %i.bp, %.3
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %._crit_edge
  %.4 = phi i64 [ %i.bq, %bb.g ], [ %i.ao, %._crit_edge ]
  %i.br = load i8, ptr %i.c, align 1, !tbaa !57
  %i.bs = zext i8 %i.br to i64
  %i.bt = or i64 %.4, %i.bs
  br label %bb.i

default.unreachable220:                           ; preds = %._crit_edge
  unreachable

bb.i:                                             ; preds = %bb.e, %bb.h, %._crit_edge
  %.5 = phi i64 [ %i.bg, %bb.e ], [ %i.bt, %bb.h ], [ %i.ao, %._crit_edge ] ; 2 uses
  %i.bu = xor i64 %.5, %.0205.lcssa               ; 3 uses
  %i.bv = add i64 %.0202.lcssa, %.0204.lcssa      ; 3 uses
  %i.bw = add i64 %i.bu, %.0206.lcssa             ; 2 uses
  %i.bx = tail call i64 @llvm.fshl.i64(i64 %.0204.lcssa, i64 %.0204.lcssa, i64 13)
  %i.by = tail call i64 @llvm.fshl.i64(i64 %i.bu, i64 %i.bu, i64 16)
  %i.bz = xor i64 %i.bv, %i.bx                    ; 3 uses
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
define dso_local i64 @rb_hash_start(i64 noundef %0) local_unnamed_addr #8 {
bb.a:
  %i.a = load i64, ptr @hash_salt, align 8, !tbaa !57
  %i.b = add i64 %i.a, %0
  ret i64 %i.b
}

; Function Attrs: nofree norecurse nosync nounwind sspstrong memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local i64 @rb_memhash(ptr noundef readonly captures(address) %0, i64 noundef %1) local_unnamed_addr #9 {
bb.a:
  %i.a = tail call i64 @ruby_sip_hash13(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @hash_salt, i64 8), ptr noundef %0, i64 noundef %1)
  ret i64 %i.a
}

; Function Attrs: nounwind sspstrong uwtable
define hidden void @Init_RandomSeedCore() local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %0 = alloca %struct.timespec, align 8           ; 5 uses
  %1 = alloca %struct.MT, align 8                 ; 94 uses
  %i.b = alloca [4 x i32], align 16               ; 9 uses
  %i.c = tail call i32 @ruby_fill_random_bytes(ptr noundef nonnull @hash_salt, i64 noundef 24, i32 noundef 0)
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.j, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.b, ptr %i.a, align 8, !tbaa !67
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #23
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.b, i8 noundef 0, i64 noundef range(i64 0, 2305843009213693949) 16, i1 noundef false) #23
  %i.d = call i32 @clock_gettime(i32 noundef 0, ptr noundef nonnull %0) #23 ; 0 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !68
  %i.g = load i32, ptr %i.b, align 16, !tbaa !7
  %i.h = trunc i64 %i.f to i32
  %i.i = xor i32 %i.g, %i.h
  %i.j = load i64, ptr %0, align 8                ; 2 uses
  %i.k = trunc i64 %i.j to i32
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 4 ; 2 uses
  %i.m = load i32, ptr %i.l, align 4, !tbaa !7
  %i.n = xor i32 %i.m, %i.k
  store i32 %i.n, ptr %i.l, align 4, !tbaa !7
  %i.o = lshr i64 %i.j, 32
  %i.p = trunc nuw i64 %i.o to i32
  %i.q = xor i32 %i.i, %i.p
  store i32 %i.q, ptr %i.b, align 16, !tbaa !7
  %i.r = call i32 @getpid() #23
  %i.s = atomicrmw volatile add ptr @fill_random_seed.n, i32 1 seq_cst, align 4
  %i.t = shl i32 %i.s, 16
  %i.u = load ptr, ptr %i.a, align 8, !tbaa !67   ; 2 uses
  %i.v = getelementptr i8, ptr %i.u, i64 8        ; 2 uses
  %i.w = load i32, ptr %i.v, align 4, !tbaa !7
  %i.x = ptrtoint ptr %i.a to i64                 ; 2 uses
  %i.y = trunc i64 %i.x to i32
  %i.z = getelementptr i8, ptr %i.u, i64 12       ; 2 uses
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !7
  %i.ab = xor i32 %i.aa, %i.y
  store i32 %i.ab, ptr %i.z, align 4, !tbaa !7
  %i.ac = lshr i64 %i.x, 32
  %i.ad = trunc nuw i64 %i.ac to i32
  %i.ae = xor i32 %i.r, %i.ad
  %i.af = xor i32 %i.ae, %i.t
  %i.ag = xor i32 %i.af, %i.w
  store i32 %i.ag, ptr %i.v, align 4, !tbaa !7
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store i32 19650218, ptr %1, align 8, !tbaa !7
  br label %bb.c

._crit_edge.i58:                                  ; preds = %init_by_array.exit
  %.pre.i60 = load ptr, ptr %i.zj, align 8, !tbaa !22
  br label %genrand_int32.exit71

vector.ph:                                        ; preds = %init_by_array.exit
  store i32 624, ptr %i.zi, align 8, !tbaa !21
  %.pre.i.i61 = load i32, ptr %1, align 8, !tbaa !7
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 896
  %vector.recur.init = insertelement <4 x i32> poison, i32 %.pre.i.i61, i64 3
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vector.recur = phi <4 x i32> [ %vector.recur.init, %vector.ph ], [ %wide.load178, %vector.body ]
  %i.ai = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %1, i64 %i.ai ; 6 uses
  %i.aj = getelementptr i8, ptr %next.gep, i64 1588
  %i.ak = getelementptr i8, ptr %next.gep, i64 1604
  %wide.load = load <4 x i32>, ptr %i.aj, align 4, !tbaa !7
  %wide.load176 = load <4 x i32>, ptr %i.ak, align 4, !tbaa !7
  %i.al = getelementptr i8, ptr %next.gep, i64 4
  %i.am = getelementptr i8, ptr %next.gep, i64 20
  %wide.load177 = load <4 x i32>, ptr %i.al, align 4, !tbaa !7 ; 4 uses
  %wide.load178 = load <4 x i32>, ptr %i.am, align 4, !tbaa !7 ; 5 uses
  %i.an = shufflevector <4 x i32> %vector.recur, <4 x i32> %wide.load177, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %i.ao = shufflevector <4 x i32> %wide.load177, <4 x i32> %wide.load178, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %i.ap = and <4 x i32> %i.an, splat (i32 -2147483648)
  %i.aq = and <4 x i32> %i.ao, splat (i32 -2147483648)
  %i.ar = and <4 x i32> %wide.load177, splat (i32 2147483646)
  %i.as = and <4 x i32> %wide.load178, splat (i32 2147483646)
  %i.at = or disjoint <4 x i32> %i.ar, %i.ap
  %i.au = or disjoint <4 x i32> %i.as, %i.aq
  %i.av = lshr exact <4 x i32> %i.at, splat (i32 1)
  %i.aw = lshr exact <4 x i32> %i.au, splat (i32 1)
  %i.ax = and <4 x i32> %wide.load177, splat (i32 1)
  %i.ay = and <4 x i32> %wide.load178, splat (i32 1)
  %i.az = icmp eq <4 x i32> %i.ax, zeroinitializer
  %i.ba = icmp eq <4 x i32> %i.ay, zeroinitializer
  %i.bb = select <4 x i1> %i.az, <4 x i32> zeroinitializer, <4 x i32> splat (i32 -1727483681)
  %i.bc = select <4 x i1> %i.ba, <4 x i32> zeroinitializer, <4 x i32> splat (i32 -1727483681)
  %i.bd = xor <4 x i32> %i.bb, %wide.load
  %i.be = xor <4 x i32> %i.bc, %wide.load176
  %i.bf = xor <4 x i32> %i.bd, %i.av
  %i.bg = xor <4 x i32> %i.be, %i.aw
  %i.bh = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %i.bf, ptr %next.gep, align 8, !tbaa !7
  store <4 x i32> %i.bg, ptr %i.bh, align 8, !tbaa !7
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.bi = icmp eq i64 %index.next, 224
  br i1 %i.bi, label %vector.ph180, label %vector.body, !llvm.loop !69

vector.ph180:                                     ; preds = %vector.body
  %vector.recur.extract = extractelement <4 x i32> %wide.load178, i64 3
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 2484
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !7
  %i.bl = and i32 %vector.recur.extract, -2147483648
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 900 ; 2 uses
  %i.bn = load i32, ptr %i.bm, align 4, !tbaa !7  ; 3 uses
  %i.bo = and i32 %i.bn, 2147483646
  %i.bp = or disjoint i32 %i.bo, %i.bl
  %i.bq = lshr exact i32 %i.bp, 1
  %i.br = and i32 %i.bn, 1
  %.not29.i.i63 = icmp eq i32 %i.br, 0
  %i.bs = select i1 %.not29.i.i63, i32 0, i32 -1727483681
  %i.bt = xor i32 %i.bs, %i.bk
  %i.bu = xor i32 %i.bt, %i.bq
  store i32 %i.bu, ptr %i.ah, align 8, !tbaa !7
  %i.bv = getelementptr inbounds nuw i8, ptr %1, i64 2488
  %i.bw = load i32, ptr %i.bv, align 8, !tbaa !7
  %i.bx = and i32 %i.bn, -2147483648
  %i.by = getelementptr inbounds nuw i8, ptr %1, i64 904 ; 2 uses
  %i.bz = load i32, ptr %i.by, align 8, !tbaa !7  ; 3 uses
  %i.ca = and i32 %i.bz, 2147483646
  %i.cb = or disjoint i32 %i.ca, %i.bx
  %i.cc = lshr exact i32 %i.cb, 1
  %i.cd = and i32 %i.bz, 1
  %.not29.i.i63.1 = icmp eq i32 %i.cd, 0
  %i.ce = select i1 %.not29.i.i63.1, i32 0, i32 -1727483681
  %i.cf = xor i32 %i.ce, %i.bw
  %i.cg = xor i32 %i.cf, %i.cc
  store i32 %i.cg, ptr %i.bm, align 4, !tbaa !7
  %i.ch = getelementptr inbounds nuw i8, ptr %1, i64 2492
  %i.ci = load i32, ptr %i.ch, align 4, !tbaa !7
  %i.cj = and i32 %i.bz, -2147483648
  %i.ck = getelementptr inbounds nuw i8, ptr %1, i64 908 ; 2 uses
  %i.cl = load i32, ptr %i.ck, align 4, !tbaa !7  ; 3 uses
  %i.cm = and i32 %i.cl, 2147483646
  %i.cn = or disjoint i32 %i.cm, %i.cj
  %i.co = lshr exact i32 %i.cn, 1
  %i.cp = and i32 %i.cl, 1
  %.not29.i.i63.2 = icmp eq i32 %i.cp, 0
  %i.cq = select i1 %.not29.i.i63.2, i32 0, i32 -1727483681
  %i.cr = xor i32 %i.cq, %i.ci
  %i.cs = xor i32 %i.cr, %i.co
  store i32 %i.cs, ptr %i.by, align 8, !tbaa !7
  %i.ct = getelementptr inbounds nuw i8, ptr %1, i64 2492
  %vector.recur.init183 = insertelement <4 x i32> poison, i32 %i.cl, i64 3
  br label %vector.body181

vector.body181:                                   ; preds = %vector.body181, %vector.ph180
  %index182 = phi i64 [ 0, %vector.ph180 ], [ %index.next188, %vector.body181 ] ; 2 uses
  %vector.recur184 = phi <4 x i32> [ %vector.recur.init183, %vector.ph180 ], [ %wide.load187, %vector.body181 ]
  %i.cu = shl i64 %index182, 2
  %next.gep185 = getelementptr i8, ptr %i.ck, i64 %i.cu ; 3 uses
  %i.cv = getelementptr i8, ptr %next.gep185, i64 -908
  %wide.load186 = load <4 x i32>, ptr %i.cv, align 4, !tbaa !7
  %i.cw = getelementptr i8, ptr %next.gep185, i64 4
  %wide.load187 = load <4 x i32>, ptr %i.cw, align 4, !tbaa !7 ; 5 uses
  %i.cx = shufflevector <4 x i32> %vector.recur184, <4 x i32> %wide.load187, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %i.cy = and <4 x i32> %i.cx, splat (i32 -2147483648)
  %i.cz = and <4 x i32> %wide.load187, splat (i32 2147483646)
  %i.da = or disjoint <4 x i32> %i.cz, %i.cy
  %i.db = lshr exact <4 x i32> %i.da, splat (i32 1)
  %i.dc = and <4 x i32> %wide.load187, splat (i32 1)
  %i.dd = icmp eq <4 x i32> %i.dc, zeroinitializer
  %i.de = select <4 x i1> %i.dd, <4 x i32> zeroinitializer, <4 x i32> splat (i32 -1727483681)
  %i.df = xor <4 x i32> %i.de, %wide.load186
  %i.dg = xor <4 x i32> %i.df, %i.db
  store <4 x i32> %i.dg, ptr %next.gep185, align 4, !tbaa !7
  %index.next188 = add nuw i64 %index182, 4       ; 2 uses
  %i.dh = icmp eq i64 %index.next188, 396
  br i1 %i.dh, label %next_state.exit.i69, label %vector.body181, !llvm.loop !70

next_state.exit.i69:                              ; preds = %vector.body181
  %i.di = extractelement <4 x i32> %wide.load187, i64 3
  %i.dj = getelementptr inbounds nuw i8, ptr %1, i64 1584
  %i.dk = load i32, ptr %i.dj, align 8, !tbaa !7
  %i.dl = and i32 %i.di, -2147483648
  %i.dm = load i32, ptr %1, align 8, !tbaa !7     ; 2 uses
  %i.dn = and i32 %i.dm, 2147483646
  %i.do = or disjoint i32 %i.dn, %i.dl
  %i.dp = lshr exact i32 %i.do, 1
  %i.dq = and i32 %i.dm, 1
  %.not27.i.i70 = icmp eq i32 %i.dq, 0
  %i.dr = select i1 %.not27.i.i70, i32 0, i32 -1727483681
  %i.ds = xor i32 %i.dr, %i.dk
  %i.dt = xor i32 %i.ds, %i.dp
  store i32 %i.dt, ptr %i.ct, align 4, !tbaa !7
  %.pre = load i32, ptr %i.zi, align 8, !tbaa !21
  br label %genrand_int32.exit71

genrand_int32.exit71:                             ; preds = %._crit_edge.i58, %next_state.exit.i69
  %i.du = phi i32 [ %i.aax, %._crit_edge.i58 ], [ %.pre, %next_state.exit.i69 ]
  %i.dv = phi ptr [ %.pre.i60, %._crit_edge.i58 ], [ %1, %next_state.exit.i69 ] ; 2 uses
  %i.dw = getelementptr i8, ptr %i.dv, i64 4
  %i.dx = load i32, ptr %i.dv, align 4, !tbaa !7  ; 2 uses
  %i.dy = lshr i32 %i.dx, 11
  %i.dz = xor i32 %i.dy, %i.dx                    ; 2 uses
  %i.ea = shl i32 %i.dz, 7
  %i.eb = and i32 %i.ea, -1658038656
  %i.ec = xor i32 %i.eb, %i.dz                    ; 2 uses
  %i.ed = shl i32 %i.ec, 15
  %i.ee = and i32 %i.ed, -272236544
  %i.ef = xor i32 %i.ee, %i.ec                    ; 2 uses
  %i.eg = lshr i32 %i.ef, 18
  %i.eh = xor i32 %i.eg, %i.ef
  store i32 %i.eh, ptr @hash_salt, align 8, !tbaa !57
  %i.ei = add i32 %i.du, -1                       ; 3 uses
  store i32 %i.ei, ptr %i.zi, align 8, !tbaa !21
  %i.ej = icmp slt i32 %i.ei, 1
  br i1 %i.ej, label %vector.ph191, label %genrand_int32.exit57

vector.ph191:                                     ; preds = %genrand_int32.exit71
  store i32 624, ptr %i.zi, align 8, !tbaa !21
  %.pre.i.i47 = load i32, ptr %1, align 8, !tbaa !7
  %i.ek = getelementptr inbounds nuw i8, ptr %1, i64 896
  %vector.recur.init194 = insertelement <4 x i32> poison, i32 %.pre.i.i47, i64 3
  br label %vector.body192

vector.body192:                                   ; preds = %vector.body192, %vector.ph191
  %index193 = phi i64 [ 0, %vector.ph191 ], [ %index.next201, %vector.body192 ] ; 2 uses
  %vector.recur195 = phi <4 x i32> [ %vector.recur.init194, %vector.ph191 ], [ %wide.load200, %vector.body192 ]
  %i.el = shl i64 %index193, 2
  %next.gep196 = getelementptr i8, ptr %1, i64 %i.el ; 6 uses
  %i.em = getelementptr i8, ptr %next.gep196, i64 1588
  %i.en = getelementptr i8, ptr %next.gep196, i64 1604
  %wide.load197 = load <4 x i32>, ptr %i.em, align 4, !tbaa !7
  %wide.load198 = load <4 x i32>, ptr %i.en, align 4, !tbaa !7
  %i.eo = getelementptr i8, ptr %next.gep196, i64 4
  %i.ep = getelementptr i8, ptr %next.gep196, i64 20
  %wide.load199 = load <4 x i32>, ptr %i.eo, align 4, !tbaa !7 ; 4 uses
  %wide.load200 = load <4 x i32>, ptr %i.ep, align 4, !tbaa !7 ; 5 uses
  %i.eq = shufflevector <4 x i32> %vector.recur195, <4 x i32> %wide.load199, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %i.er = shufflevector <4 x i32> %wide.load199, <4 x i32> %wide.load200, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %i.es = and <4 x i32> %i.eq, splat (i32 -2147483648)
  %i.et = and <4 x i32> %i.er, splat (i32 -2147483648)
  %i.eu = and <4 x i32> %wide.load199, splat (i32 2147483646)
  %i.ev = and <4 x i32> %wide.load200, splat (i32 2147483646)
  %i.ew = or disjoint <4 x i32> %i.eu, %i.es
  %i.ex = or disjoint <4 x i32> %i.ev, %i.et
  %i.ey = lshr exact <4 x i32> %i.ew, splat (i32 1)
  %i.ez = lshr exact <4 x i32> %i.ex, splat (i32 1)
  %i.fa = and <4 x i32> %wide.load199, splat (i32 1)
  %i.fb = and <4 x i32> %wide.load200, splat (i32 1)
  %i.fc = icmp eq <4 x i32> %i.fa, zeroinitializer
  %i.fd = icmp eq <4 x i32> %i.fb, zeroinitializer
  %i.fe = select <4 x i1> %i.fc, <4 x i32> zeroinitializer, <4 x i32> splat (i32 -1727483681)
  %i.ff = select <4 x i1> %i.fd, <4 x i32> zeroinitializer, <4 x i32> splat (i32 -1727483681)
  %i.fg = xor <4 x i32> %i.fe, %wide.load197
  %i.fh = xor <4 x i32> %i.ff, %wide.load198
  %i.fi = xor <4 x i32> %i.fg, %i.ey
  %i.fj = xor <4 x i32> %i.fh, %i.ez
  %i.fk = getelementptr i8, ptr %next.gep196, i64 16
  store <4 x i32> %i.fi, ptr %next.gep196, align 8, !tbaa !7
  store <4 x i32> %i.fj, ptr %i.fk, align 8, !tbaa !7
  %index.next201 = add nuw i64 %index193, 8       ; 2 uses
  %i.fl = icmp eq i64 %index.next201, 224
  br i1 %i.fl, label %vector.ph205, label %vector.body192, !llvm.loop !71

vector.ph205:                                     ; preds = %vector.body192
  %vector.recur.extract203 = extractelement <4 x i32> %wide.load200, i64 3
  %i.fm = getelementptr inbounds nuw i8, ptr %1, i64 2484
  %i.fn = load i32, ptr %i.fm, align 4, !tbaa !7
  %i.fo = and i32 %vector.recur.extract203, -2147483648
  %i.fp = getelementptr inbounds nuw i8, ptr %1, i64 900 ; 2 uses
  %i.fq = load i32, ptr %i.fp, align 4, !tbaa !7  ; 3 uses
  %i.fr = and i32 %i.fq, 2147483646
  %i.fs = or disjoint i32 %i.fr, %i.fo
  %i.ft = lshr exact i32 %i.fs, 1
  %i.fu = and i32 %i.fq, 1
  %.not29.i.i49 = icmp eq i32 %i.fu, 0
  %i.fv = select i1 %.not29.i.i49, i32 0, i32 -1727483681
  %i.fw = xor i32 %i.fv, %i.fn
  %i.fx = xor i32 %i.fw, %i.ft
  store i32 %i.fx, ptr %i.ek, align 8, !tbaa !7
  %i.fy = getelementptr inbounds nuw i8, ptr %1, i64 2488
  %i.fz = load i32, ptr %i.fy, align 8, !tbaa !7
  %i.ga = and i32 %i.fq, -2147483648
  %i.gb = getelementptr inbounds nuw i8, ptr %1, i64 904 ; 2 uses
  %i.gc = load i32, ptr %i.gb, align 8, !tbaa !7  ; 3 uses
  %i.gd = and i32 %i.gc, 2147483646
  %i.ge = or disjoint i32 %i.gd, %i.ga
  %i.gf = lshr exact i32 %i.ge, 1
  %i.gg = and i32 %i.gc, 1
  %.not29.i.i49.1 = icmp eq i32 %i.gg, 0
  %i.gh = select i1 %.not29.i.i49.1, i32 0, i32 -1727483681
  %i.gi = xor i32 %i.gh, %i.fz
  %i.gj = xor i32 %i.gi, %i.gf
  store i32 %i.gj, ptr %i.fp, align 4, !tbaa !7
  %i.gk = getelementptr inbounds nuw i8, ptr %1, i64 2492
  %i.gl = load i32, ptr %i.gk, align 4, !tbaa !7
  %i.gm = and i32 %i.gc, -2147483648
  %i.gn = getelementptr inbounds nuw i8, ptr %1, i64 908 ; 2 uses
  %i.go = load i32, ptr %i.gn, align 4, !tbaa !7  ; 3 uses
  %i.gp = and i32 %i.go, 2147483646
  %i.gq = or disjoint i32 %i.gp, %i.gm
  %i.gr = lshr exact i32 %i.gq, 1
  %i.gs = and i32 %i.go, 1
  %.not29.i.i49.2 = icmp eq i32 %i.gs, 0
  %i.gt = select i1 %.not29.i.i49.2, i32 0, i32 -1727483681
  %i.gu = xor i32 %i.gt, %i.gl
  %i.gv = xor i32 %i.gu, %i.gr
  store i32 %i.gv, ptr %i.gb, align 8, !tbaa !7
  %i.gw = getelementptr inbounds nuw i8, ptr %1, i64 2492
  %vector.recur.init208 = insertelement <4 x i32> poison, i32 %i.go, i64 3
  br label %vector.body206

vector.body206:                                   ; preds = %vector.body206, %vector.ph205
  %index207 = phi i64 [ 0, %vector.ph205 ], [ %index.next213, %vector.body206 ] ; 2 uses
  %vector.recur209 = phi <4 x i32> [ %vector.recur.init208, %vector.ph205 ], [ %wide.load212, %vector.body206 ]
  %i.gx = shl i64 %index207, 2
  %next.gep210 = getelementptr i8, ptr %i.gn, i64 %i.gx ; 3 uses
  %i.gy = getelementptr i8, ptr %next.gep210, i64 -908
  %wide.load211 = load <4 x i32>, ptr %i.gy, align 4, !tbaa !7
  %i.gz = getelementptr i8, ptr %next.gep210, i64 4
  %wide.load212 = load <4 x i32>, ptr %i.gz, align 4, !tbaa !7 ; 5 uses
  %i.ha = shufflevector <4 x i32> %vector.recur209, <4 x i32> %wide.load212, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %i.hb = and <4 x i32> %i.ha, splat (i32 -2147483648)
  %i.hc = and <4 x i32> %wide.load212, splat (i32 2147483646)
  %i.hd = or disjoint <4 x i32> %i.hc, %i.hb
  %i.he = lshr exact <4 x i32> %i.hd, splat (i32 1)
  %i.hf = and <4 x i32> %wide.load212, splat (i32 1)
  %i.hg = icmp eq <4 x i32> %i.hf, zeroinitializer
  %i.hh = select <4 x i1> %i.hg, <4 x i32> zeroinitializer, <4 x i32> splat (i32 -1727483681)
  %i.hi = xor <4 x i32> %i.hh, %wide.load211
  %i.hj = xor <4 x i32> %i.hi, %i.he
  store <4 x i32> %i.hj, ptr %next.gep210, align 4, !tbaa !7
  %index.next213 = add nuw i64 %index207, 4       ; 2 uses
  %i.hk = icmp eq i64 %index.next213, 396
  br i1 %i.hk, label %next_state.exit.i55, label %vector.body206, !llvm.loop !72

next_state.exit.i55:                              ; preds = %vector.body206
  %i.hl = extractelement <4 x i32> %wide.load212, i64 3
  %i.hm = getelementptr inbounds nuw i8, ptr %1, i64 1584
  %i.hn = load i32, ptr %i.hm, align 8, !tbaa !7
  %i.ho = and i32 %i.hl, -2147483648
  %i.hp = load i32, ptr %1, align 8, !tbaa !7     ; 2 uses
  %i.hq = and i32 %i.hp, 2147483646
  %i.hr = or disjoint i32 %i.hq, %i.ho
  %i.hs = lshr exact i32 %i.hr, 1
  %i.ht = and i32 %i.hp, 1
  %.not27.i.i56 = icmp eq i32 %i.ht, 0
  %i.hu = select i1 %.not27.i.i56, i32 0, i32 -1727483681
  %i.hv = xor i32 %i.hu, %i.hn
  %i.hw = xor i32 %i.hv, %i.hs
  store i32 %i.hw, ptr %i.gw, align 4, !tbaa !7
  %.pre118 = load i32, ptr %i.zi, align 8, !tbaa !21
  br label %genrand_int32.exit57

genrand_int32.exit57:                             ; preds = %genrand_int32.exit71, %next_state.exit.i55
  %i.hx = phi i32 [ %.pre118, %next_state.exit.i55 ], [ %i.ei, %genrand_int32.exit71 ]
  %i.hy = phi ptr [ %1, %next_state.exit.i55 ], [ %i.dw, %genrand_int32.exit71 ] ; 2 uses
  %i.hz = getelementptr i8, ptr %i.hy, i64 4
  %i.ia = load i32, ptr %i.hy, align 4, !tbaa !7  ; 2 uses
  %i.ib = lshr i32 %i.ia, 11
  %i.ic = xor i32 %i.ib, %i.ia                    ; 2 uses
  %i.id = shl i32 %i.ic, 7
  %i.ie = and i32 %i.id, -1658038656
  %i.if = xor i32 %i.ie, %i.ic                    ; 2 uses
  %i.ig = shl i32 %i.if, 15
  %i.ih = and i32 %i.ig, -272236544
  %i.ii = xor i32 %i.ih, %i.if                    ; 2 uses
  %i.ij = lshr i32 %i.ii, 18
  %i.ik = xor i32 %i.ij, %i.ii
  store i32 %i.ik, ptr getelementptr inbounds nuw (i8, ptr @hash_salt, i64 4), align 4, !tbaa !57
  %i.il = add i32 %i.hx, -1                       ; 3 uses
  store i32 %i.il, ptr %i.zi, align 8, !tbaa !21
  %i.im = icmp slt i32 %i.il, 1
  br i1 %i.im, label %vector.ph217, label %genrand_int32.exit43

vector.ph217:                                     ; preds = %genrand_int32.exit57
  store i32 624, ptr %i.zi, align 8, !tbaa !21
  %.pre.i.i33 = load i32, ptr %1, align 8, !tbaa !7
  %i.in = getelementptr inbounds nuw i8, ptr %1, i64 896
  %vector.recur.init220 = insertelement <4 x i32> poison, i32 %.pre.i.i33, i64 3
  br label %vector.body218

vector.body218:                                   ; preds = %vector.body218, %vector.ph217
  %index219 = phi i64 [ 0, %vector.ph217 ], [ %index.next227, %vector.body218 ] ; 2 uses
  %vector.recur221 = phi <4 x i32> [ %vector.recur.init220, %vector.ph217 ], [ %wide.load226, %vector.body218 ]
  %i.io = shl i64 %index219, 2
  %next.gep222 = getelementptr i8, ptr %1, i64 %i.io ; 6 uses
  %i.ip = getelementptr i8, ptr %next.gep222, i64 1588
  %i.iq = getelementptr i8, ptr %next.gep222, i64 1604
  %wide.load223 = load <4 x i32>, ptr %i.ip, align 4, !tbaa !7
  %wide.load224 = load <4 x i32>, ptr %i.iq, align 4, !tbaa !7
  %i.ir = getelementptr i8, ptr %next.gep222, i64 4
  %i.is = getelementptr i8, ptr %next.gep222, i64 20
  %wide.load225 = load <4 x i32>, ptr %i.ir, align 4, !tbaa !7 ; 4 uses
  %wide.load226 = load <4 x i32>, ptr %i.is, align 4, !tbaa !7 ; 5 uses
  %i.it = shufflevector <4 x i32> %vector.recur221, <4 x i32> %wide.load225, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %i.iu = shufflevector <4 x i32> %wide.load225, <4 x i32> %wide.load226, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %i.iv = and <4 x i32> %i.it, splat (i32 -2147483648)
  %i.iw = and <4 x i32> %i.iu, splat (i32 -2147483648)
  %i.ix = and <4 x i32> %wide.load225, splat (i32 2147483646)
  %i.iy = and <4 x i32> %wide.load226, splat (i32 2147483646)
  %i.iz = or disjoint <4 x i32> %i.ix, %i.iv
  %i.ja = or disjoint <4 x i32> %i.iy, %i.iw
  %i.jb = lshr exact <4 x i32> %i.iz, splat (i32 1)
  %i.jc = lshr exact <4 x i32> %i.ja, splat (i32 1)
  %i.jd = and <4 x i32> %wide.load225, splat (i32 1)
  %i.je = and <4 x i32> %wide.load226, splat (i32 1)
  %i.jf = icmp eq <4 x i32> %i.jd, zeroinitializer
  %i.jg = icmp eq <4 x i32> %i.je, zeroinitializer
  %i.jh = select <4 x i1> %i.jf, <4 x i32> zeroinitializer, <4 x i32> splat (i32 -1727483681)
  %i.ji = select <4 x i1> %i.jg, <4 x i32> zeroinitializer, <4 x i32> splat (i32 -1727483681)
  %i.jj = xor <4 x i32> %i.jh, %wide.load223
  %i.jk = xor <4 x i32> %i.ji, %wide.load224
  %i.jl = xor <4 x i32> %i.jj, %i.jb
  %i.jm = xor <4 x i32> %i.jk, %i.jc
  %i.jn = getelementptr i8, ptr %next.gep222, i64 16
  store <4 x i32> %i.jl, ptr %next.gep222, align 8, !tbaa !7
  store <4 x i32> %i.jm, ptr %i.jn, align 8, !tbaa !7
  %index.next227 = add nuw i64 %index219, 8       ; 2 uses
  %i.jo = icmp eq i64 %index.next227, 224
  br i1 %i.jo, label %vector.ph231, label %vector.body218, !llvm.loop !73

vector.ph231:                                     ; preds = %vector.body218
  %vector.recur.extract229 = extractelement <4 x i32> %wide.load226, i64 3
  %i.jp = getelementptr inbounds nuw i8, ptr %1, i64 2484
  %i.jq = load i32, ptr %i.jp, align 4, !tbaa !7
  %i.jr = and i32 %vector.recur.extract229, -2147483648
  %i.js = getelementptr inbounds nuw i8, ptr %1, i64 900 ; 2 uses
  %i.jt = load i32, ptr %i.js, align 4, !tbaa !7  ; 3 uses
  %i.ju = and i32 %i.jt, 2147483646
  %i.jv = or disjoint i32 %i.ju, %i.jr
  %i.jw = lshr exact i32 %i.jv, 1
  %i.jx = and i32 %i.jt, 1
  %.not29.i.i35 = icmp eq i32 %i.jx, 0
  %i.jy = select i1 %.not29.i.i35, i32 0, i32 -1727483681
  %i.jz = xor i32 %i.jy, %i.jq
  %i.ka = xor i32 %i.jz, %i.jw
  store i32 %i.ka, ptr %i.in, align 8, !tbaa !7
  %i.kb = getelementptr inbounds nuw i8, ptr %1, i64 2488
  %i.kc = load i32, ptr %i.kb, align 8, !tbaa !7
  %i.kd = and i32 %i.jt, -2147483648
  %i.ke = getelementptr inbounds nuw i8, ptr %1, i64 904 ; 2 uses
  %i.kf = load i32, ptr %i.ke, align 8, !tbaa !7  ; 3 uses
  %i.kg = and i32 %i.kf, 2147483646
  %i.kh = or disjoint i32 %i.kg, %i.kd
  %i.ki = lshr exact i32 %i.kh, 1
  %i.kj = and i32 %i.kf, 1
  %.not29.i.i35.1 = icmp eq i32 %i.kj, 0
  %i.kk = select i1 %.not29.i.i35.1, i32 0, i32 -1727483681
  %i.kl = xor i32 %i.kk, %i.kc
  %i.km = xor i32 %i.kl, %i.ki
  store i32 %i.km, ptr %i.js, align 4, !tbaa !7
  %i.kn = getelementptr inbounds nuw i8, ptr %1, i64 2492
  %i.ko = load i32, ptr %i.kn, align 4, !tbaa !7
  %i.kp = and i32 %i.kf, -2147483648
  %i.kq = getelementptr inbounds nuw i8, ptr %1, i64 908 ; 2 uses
  %i.kr = load i32, ptr %i.kq, align 4, !tbaa !7  ; 3 uses
  %i.ks = and i32 %i.kr, 2147483646
  %i.kt = or disjoint i32 %i.ks, %i.kp
  %i.ku = lshr exact i32 %i.kt, 1
  %i.kv = and i32 %i.kr, 1
  %.not29.i.i35.2 = icmp eq i32 %i.kv, 0
  %i.kw = select i1 %.not29.i.i35.2, i32 0, i32 -1727483681
  %i.kx = xor i32 %i.kw, %i.ko
  %i.ky = xor i32 %i.kx, %i.ku
  store i32 %i.ky, ptr %i.ke, align 8, !tbaa !7
  %i.kz = getelementptr inbounds nuw i8, ptr %1, i64 2492
  %vector.recur.init234 = insertelement <4 x i32> poison, i32 %i.kr, i64 3
  br label %vector.body232

vector.body232:                                   ; preds = %vector.body232, %vector.ph231
  %index233 = phi i64 [ 0, %vector.ph231 ], [ %index.next239, %vector.body232 ] ; 2 uses
  %vector.recur235 = phi <4 x i32> [ %vector.recur.init234, %vector.ph231 ], [ %wide.load238, %vector.body232 ]
  %i.la = shl i64 %index233, 2
  %next.gep236 = getelementptr i8, ptr %i.kq, i64 %i.la ; 3 uses
  %i.lb = getelementptr i8, ptr %next.gep236, i64 -908
  %wide.load237 = load <4 x i32>, ptr %i.lb, align 4, !tbaa !7
  %i.lc = getelementptr i8, ptr %next.gep236, i64 4
  %wide.load238 = load <4 x i32>, ptr %i.lc, align 4, !tbaa !7 ; 5 uses
  %i.ld = shufflevector <4 x i32> %vector.recur235, <4 x i32> %wide.load238, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %i.le = and <4 x i32> %i.ld, splat (i32 -2147483648)
  %i.lf = and <4 x i32> %wide.load238, splat (i32 2147483646)
  %i.lg = or disjoint <4 x i32> %i.lf, %i.le
  %i.lh = lshr exact <4 x i32> %i.lg, splat (i32 1)
  %i.li = and <4 x i32> %wide.load238, splat (i32 1)
  %i.lj = icmp eq <4 x i32> %i.li, zeroinitializer
  %i.lk = select <4 x i1> %i.lj, <4 x i32> zeroinitializer, <4 x i32> splat (i32 -1727483681)
  %i.ll = xor <4 x i32> %i.lk, %wide.load237
  %i.lm = xor <4 x i32> %i.ll, %i.lh
  store <4 x i32> %i.lm, ptr %next.gep236, align 4, !tbaa !7
  %index.next239 = add nuw i64 %index233, 4       ; 2 uses
  %i.ln = icmp eq i64 %index.next239, 396
  br i1 %i.ln, label %next_state.exit.i41, label %vector.body232, !llvm.loop !74

next_state.exit.i41:                              ; preds = %vector.body232
  %i.lo = extractelement <4 x i32> %wide.load238, i64 3
  %i.lp = getelementptr inbounds nuw i8, ptr %1, i64 1584
  %i.lq = load i32, ptr %i.lp, align 8, !tbaa !7
  %i.lr = and i32 %i.lo, -2147483648
  %i.ls = load i32, ptr %1, align 8, !tbaa !7     ; 2 uses
  %i.lt = and i32 %i.ls, 2147483646
  %i.lu = or disjoint i32 %i.lt, %i.lr
  %i.lv = lshr exact i32 %i.lu, 1
  %i.lw = and i32 %i.ls, 1
  %.not27.i.i42 = icmp eq i32 %i.lw, 0
  %i.lx = select i1 %.not27.i.i42, i32 0, i32 -1727483681
  %i.ly = xor i32 %i.lx, %i.lq
  %i.lz = xor i32 %i.ly, %i.lv
  store i32 %i.lz, ptr %i.kz, align 4, !tbaa !7
  %.pre119 = load i32, ptr %i.zi, align 8, !tbaa !21
  br label %genrand_int32.exit43

genrand_int32.exit43:                             ; preds = %genrand_int32.exit57, %next_state.exit.i41
  %i.ma = phi i32 [ %.pre119, %next_state.exit.i41 ], [ %i.il, %genrand_int32.exit57 ]
  %i.mb = phi ptr [ %1, %next_state.exit.i41 ], [ %i.hz, %genrand_int32.exit57 ] ; 2 uses
  %i.mc = getelementptr i8, ptr %i.mb, i64 4      ; 2 uses
  store ptr %i.mc, ptr %i.zj, align 8, !tbaa !22
  %i.md = load i32, ptr %i.mb, align 4, !tbaa !7  ; 2 uses
  %i.me = lshr i32 %i.md, 11
  %i.mf = xor i32 %i.me, %i.md                    ; 2 uses
  %i.mg = shl i32 %i.mf, 7
  %i.mh = and i32 %i.mg, -1658038656
  %i.mi = xor i32 %i.mh, %i.mf                    ; 2 uses
  %i.mj = shl i32 %i.mi, 15
  %i.mk = and i32 %i.mj, -272236544
  %i.ml = xor i32 %i.mk, %i.mi                    ; 2 uses
  %i.mm = lshr i32 %i.ml, 18
  %i.mn = xor i32 %i.mm, %i.ml
  store i32 %i.mn, ptr getelementptr inbounds nuw (i8, ptr @hash_salt, i64 8), align 8, !tbaa !57
  %i.mo = add i32 %i.ma, -1                       ; 3 uses
  store i32 %i.mo, ptr %i.zi, align 8, !tbaa !21
  %i.mp = icmp slt i32 %i.mo, 1
  br i1 %i.mp, label %vector.ph243, label %genrand_int32.exit29

vector.ph243:                                     ; preds = %genrand_int32.exit43
  store i32 624, ptr %i.zi, align 8, !tbaa !21
  %.pre.i.i19 = load i32, ptr %1, align 8, !tbaa !7
  %i.mq = getelementptr inbounds nuw i8, ptr %1, i64 896
  %vector.recur.init246 = insertelement <4 x i32> poison, i32 %.pre.i.i19, i64 3
  br label %vector.body244

vector.body244:                                   ; preds = %vector.body244, %vector.ph243
  %index245 = phi i64 [ 0, %vector.ph243 ], [ %index.next253, %vector.body244 ] ; 2 uses
  %vector.recur247 = phi <4 x i32> [ %vector.recur.init246, %vector.ph243 ], [ %wide.load252, %vector.body244 ]
  %i.mr = shl i64 %index245, 2
  %next.gep248 = getelementptr i8, ptr %1, i64 %i.mr ; 6 uses
  %i.ms = getelementptr i8, ptr %next.gep248, i64 1588
  %i.mt = getelementptr i8, ptr %next.gep248, i64 1604
  %wide.load249 = load <4 x i32>, ptr %i.ms, align 4, !tbaa !7
  %wide.load250 = load <4 x i32>, ptr %i.mt, align 4, !tbaa !7
  %i.mu = getelementptr i8, ptr %next.gep248, i64 4
  %i.mv = getelementptr i8, ptr %next.gep248, i64 20
  %wide.load251 = load <4 x i32>, ptr %i.mu, align 4, !tbaa !7 ; 4 uses
  %wide.load252 = load <4 x i32>, ptr %i.mv, align 4, !tbaa !7 ; 5 uses
  %i.mw = shufflevector <4 x i32> %vector.recur247, <4 x i32> %wide.load251, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %i.mx = shufflevector <4 x i32> %wide.load251, <4 x i32> %wide.load252, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %i.my = and <4 x i32> %i.mw, splat (i32 -2147483648)
  %i.mz = and <4 x i32> %i.mx, splat (i32 -2147483648)
  %i.na = and <4 x i32> %wide.load251, splat (i32 2147483646)
  %i.nb = and <4 x i32> %wide.load252, splat (i32 2147483646)
  %i.nc = or disjoint <4 x i32> %i.na, %i.my
  %i.nd = or disjoint <4 x i32> %i.nb, %i.mz
  %i.ne = lshr exact <4 x i32> %i.nc, splat (i32 1)
  %i.nf = lshr exact <4 x i32> %i.nd, splat (i32 1)
  %i.ng = and <4 x i32> %wide.load251, splat (i32 1)
  %i.nh = and <4 x i32> %wide.load252, splat (i32 1)
  %i.ni = icmp eq <4 x i32> %i.ng, zeroinitializer
  %i.nj = icmp eq <4 x i32> %i.nh, zeroinitializer
  %i.nk = select <4 x i1> %i.ni, <4 x i32> zeroinitializer, <4 x i32> splat (i32 -1727483681)
  %i.nl = select <4 x i1> %i.nj, <4 x i32> zeroinitializer, <4 x i32> splat (i32 -1727483681)
  %i.nm = xor <4 x i32> %i.nk, %wide.load249
  %i.nn = xor <4 x i32> %i.nl, %wide.load250
  %i.no = xor <4 x i32> %i.nm, %i.ne
  %i.np = xor <4 x i32> %i.nn, %i.nf
  %i.nq = getelementptr i8, ptr %next.gep248, i64 16
  store <4 x i32> %i.no, ptr %next.gep248, align 8, !tbaa !7
  store <4 x i32> %i.np, ptr %i.nq, align 8, !tbaa !7
  %index.next253 = add nuw i64 %index245, 8       ; 2 uses
  %i.nr = icmp eq i64 %index.next253, 224
  br i1 %i.nr, label %vector.ph257, label %vector.body244, !llvm.loop !75

vector.ph257:                                     ; preds = %vector.body244
  %vector.recur.extract255 = extractelement <4 x i32> %wide.load252, i64 3
  %i.ns = getelementptr inbounds nuw i8, ptr %1, i64 2484
  %i.nt = load i32, ptr %i.ns, align 4, !tbaa !7
  %i.nu = and i32 %vector.recur.extract255, -2147483648
  %i.nv = getelementptr inbounds nuw i8, ptr %1, i64 900 ; 2 uses
  %i.nw = load i32, ptr %i.nv, align 4, !tbaa !7  ; 3 uses
  %i.nx = and i32 %i.nw, 2147483646
  %i.ny = or disjoint i32 %i.nx, %i.nu
  %i.nz = lshr exact i32 %i.ny, 1
  %i.oa = and i32 %i.nw, 1
  %.not29.i.i21 = icmp eq i32 %i.oa, 0
  %i.ob = select i1 %.not29.i.i21, i32 0, i32 -1727483681
  %i.oc = xor i32 %i.ob, %i.nt
  %i.od = xor i32 %i.oc, %i.nz
  store i32 %i.od, ptr %i.mq, align 8, !tbaa !7
  %i.oe = getelementptr inbounds nuw i8, ptr %1, i64 2488
  %i.of = load i32, ptr %i.oe, align 8, !tbaa !7
  %i.og = and i32 %i.nw, -2147483648
  %i.oh = getelementptr inbounds nuw i8, ptr %1, i64 904 ; 2 uses
  %i.oi = load i32, ptr %i.oh, align 8, !tbaa !7  ; 3 uses
  %i.oj = and i32 %i.oi, 2147483646
  %i.ok = or disjoint i32 %i.oj, %i.og
  %i.ol = lshr exact i32 %i.ok, 1
  %i.om = and i32 %i.oi, 1
  %.not29.i.i21.1 = icmp eq i32 %i.om, 0
  %i.on = select i1 %.not29.i.i21.1, i32 0, i32 -1727483681
  %i.oo = xor i32 %i.on, %i.of
  %i.op = xor i32 %i.oo, %i.ol
  store i32 %i.op, ptr %i.nv, align 4, !tbaa !7
  %i.oq = getelementptr inbounds nuw i8, ptr %1, i64 2492
  %i.or = load i32, ptr %i.oq, align 4, !tbaa !7
  %i.os = and i32 %i.oi, -2147483648
  %i.ot = getelementptr inbounds nuw i8, ptr %1, i64 908 ; 2 uses
  %i.ou = load i32, ptr %i.ot, align 4, !tbaa !7  ; 3 uses
  %i.ov = and i32 %i.ou, 2147483646
  %i.ow = or disjoint i32 %i.ov, %i.os
  %i.ox = lshr exact i32 %i.ow, 1
  %i.oy = and i32 %i.ou, 1
  %.not29.i.i21.2 = icmp eq i32 %i.oy, 0
  %i.oz = select i1 %.not29.i.i21.2, i32 0, i32 -1727483681
  %i.pa = xor i32 %i.oz, %i.or
  %i.pb = xor i32 %i.pa, %i.ox
  store i32 %i.pb, ptr %i.oh, align 8, !tbaa !7
  %i.pc = getelementptr inbounds nuw i8, ptr %1, i64 2492
  %vector.recur.init260 = insertelement <4 x i32> poison, i32 %i.ou, i64 3
  br label %vector.body258

vector.body258:                                   ; preds = %vector.body258, %vector.ph257
  %index259 = phi i64 [ 0, %vector.ph257 ], [ %index.next265, %vector.body258 ] ; 2 uses
  %vector.recur261 = phi <4 x i32> [ %vector.recur.init260, %vector.ph257 ], [ %wide.load264, %vector.body258 ]
  %i.pd = shl i64 %index259, 2
  %next.gep262 = getelementptr i8, ptr %i.ot, i64 %i.pd ; 3 uses
  %i.pe = getelementptr i8, ptr %next.gep262, i64 -908
  %wide.load263 = load <4 x i32>, ptr %i.pe, align 4, !tbaa !7
  %i.pf = getelementptr i8, ptr %next.gep262, i64 4
  %wide.load264 = load <4 x i32>, ptr %i.pf, align 4, !tbaa !7 ; 5 uses
  %i.pg = shufflevector <4 x i32> %vector.recur261, <4 x i32> %wide.load264, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %i.ph = and <4 x i32> %i.pg, splat (i32 -2147483648)
  %i.pi = and <4 x i32> %wide.load264, splat (i32 2147483646)
  %i.pj = or disjoint <4 x i32> %i.pi, %i.ph
  %i.pk = lshr exact <4 x i32> %i.pj, splat (i32 1)
  %i.pl = and <4 x i32> %wide.load264, splat (i32 1)
  %i.pm = icmp eq <4 x i32> %i.pl, zeroinitializer
  %i.pn = select <4 x i1> %i.pm, <4 x i32> zeroinitializer, <4 x i32> splat (i32 -1727483681)
  %i.po = xor <4 x i32> %i.pn, %wide.load263
  %i.pp = xor <4 x i32> %i.po, %i.pk
  store <4 x i32> %i.pp, ptr %next.gep262, align 4, !tbaa !7
  %index.next265 = add nuw i64 %index259, 4       ; 2 uses
  %i.pq = icmp eq i64 %index.next265, 396
  br i1 %i.pq, label %next_state.exit.i27, label %vector.body258, !llvm.loop !76

next_state.exit.i27:                              ; preds = %vector.body258
  %i.pr = extractelement <4 x i32> %wide.load264, i64 3
  %i.ps = getelementptr inbounds nuw i8, ptr %1, i64 1584
  %i.pt = load i32, ptr %i.ps, align 8, !tbaa !7
  %i.pu = and i32 %i.pr, -2147483648
  %i.pv = load i32, ptr %1, align 8, !tbaa !7     ; 2 uses
  %i.pw = and i32 %i.pv, 2147483646
  %i.px = or disjoint i32 %i.pw, %i.pu
  %i.py = lshr exact i32 %i.px, 1
  %i.pz = and i32 %i.pv, 1
  %.not27.i.i28 = icmp eq i32 %i.pz, 0
  %i.qa = select i1 %.not27.i.i28, i32 0, i32 -1727483681
  %i.qb = xor i32 %i.qa, %i.pt
  %i.qc = xor i32 %i.qb, %i.py
  store i32 %i.qc, ptr %i.pc, align 4, !tbaa !7
  %.pre120 = load i32, ptr %i.zi, align 8, !tbaa !21
  br label %genrand_int32.exit29

genrand_int32.exit29:                             ; preds = %genrand_int32.exit43, %next_state.exit.i27
  %i.qd = phi i32 [ %.pre120, %next_state.exit.i27 ], [ %i.mo, %genrand_int32.exit43 ]
  %i.qe = phi ptr [ %1, %next_state.exit.i27 ], [ %i.mc, %genrand_int32.exit43 ] ; 2 uses
  %i.qf = getelementptr i8, ptr %i.qe, i64 4
  %i.qg = load i32, ptr %i.qe, align 4, !tbaa !7  ; 2 uses
  %i.qh = lshr i32 %i.qg, 11
  %i.qi = xor i32 %i.qh, %i.qg                    ; 2 uses
  %i.qj = shl i32 %i.qi, 7
  %i.qk = and i32 %i.qj, -1658038656
  %i.ql = xor i32 %i.qk, %i.qi                    ; 2 uses
  %i.qm = shl i32 %i.ql, 15
  %i.qn = and i32 %i.qm, -272236544
  %i.qo = xor i32 %i.qn, %i.ql                    ; 2 uses
  %i.qp = lshr i32 %i.qo, 18
  %i.qq = xor i32 %i.qp, %i.qo
  store i32 %i.qq, ptr getelementptr inbounds nuw (i8, ptr @hash_salt, i64 12), align 4, !tbaa !57
  %i.qr = add i32 %i.qd, -1                       ; 3 uses
  store i32 %i.qr, ptr %i.zi, align 8, !tbaa !21
  %i.qs = icmp slt i32 %i.qr, 1
  br i1 %i.qs, label %vector.ph269, label %genrand_int32.exit15

vector.ph269:                                     ; preds = %genrand_int32.exit29
  store i32 624, ptr %i.zi, align 8, !tbaa !21
  %.pre.i.i5 = load i32, ptr %1, align 8, !tbaa !7
  %i.qt = getelementptr inbounds nuw i8, ptr %1, i64 896
  %vector.recur.init272 = insertelement <4 x i32> poison, i32 %.pre.i.i5, i64 3
  br label %vector.body270

vector.body270:                                   ; preds = %vector.body270, %vector.ph269
  %index271 = phi i64 [ 0, %vector.ph269 ], [ %index.next279, %vector.body270 ] ; 2 uses
  %vector.recur273 = phi <4 x i32> [ %vector.recur.init272, %vector.ph269 ], [ %wide.load278, %vector.body270 ]
  %i.qu = shl i64 %index271, 2
  %next.gep274 = getelementptr i8, ptr %1, i64 %i.qu ; 6 uses
  %i.qv = getelementptr i8, ptr %next.gep274, i64 1588
  %i.qw = getelementptr i8, ptr %next.gep274, i64 1604
  %wide.load275 = load <4 x i32>, ptr %i.qv, align 4, !tbaa !7
  %wide.load276 = load <4 x i32>, ptr %i.qw, align 4, !tbaa !7
  %i.qx = getelementptr i8, ptr %next.gep274, i64 4
  %i.qy = getelementptr i8, ptr %next.gep274, i64 20
  %wide.load277 = load <4 x i32>, ptr %i.qx, align 4, !tbaa !7 ; 4 uses
  %wide.load278 = load <4 x i32>, ptr %i.qy, align 4, !tbaa !7 ; 5 uses
  %i.qz = shufflevector <4 x i32> %vector.recur273, <4 x i32> %wide.load277, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %i.ra = shufflevector <4 x i32> %wide.load277, <4 x i32> %wide.load278, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %i.rb = and <4 x i32> %i.qz, splat (i32 -2147483648)
  %i.rc = and <4 x i32> %i.ra, splat (i32 -2147483648)
  %i.rd = and <4 x i32> %wide.load277, splat (i32 2147483646)
  %i.re = and <4 x i32> %wide.load278, splat (i32 2147483646)
  %i.rf = or disjoint <4 x i32> %i.rd, %i.rb
  %i.rg = or disjoint <4 x i32> %i.re, %i.rc
  %i.rh = lshr exact <4 x i32> %i.rf, splat (i32 1)
  %i.ri = lshr exact <4 x i32> %i.rg, splat (i32 1)
  %i.rj = and <4 x i32> %wide.load277, splat (i32 1)
  %i.rk = and <4 x i32> %wide.load278, splat (i32 1)
  %i.rl = icmp eq <4 x i32> %i.rj, zeroinitializer
  %i.rm = icmp eq <4 x i32> %i.rk, zeroinitializer
  %i.rn = select <4 x i1> %i.rl, <4 x i32> zeroinitializer, <4 x i32> splat (i32 -1727483681)
  %i.ro = select <4 x i1> %i.rm, <4 x i32> zeroinitializer, <4 x i32> splat (i32 -1727483681)
  %i.rp = xor <4 x i32> %i.rn, %wide.load275
  %i.rq = xor <4 x i32> %i.ro, %wide.load276
  %i.rr = xor <4 x i32> %i.rp, %i.rh
  %i.rs = xor <4 x i32> %i.rq, %i.ri
  %i.rt = getelementptr i8, ptr %next.gep274, i64 16
  store <4 x i32> %i.rr, ptr %next.gep274, align 8, !tbaa !7
  store <4 x i32> %i.rs, ptr %i.rt, align 8, !tbaa !7
  %index.next279 = add nuw i64 %index271, 8       ; 2 uses
  %i.ru = icmp eq i64 %index.next279, 224
  br i1 %i.ru, label %vector.ph283, label %vector.body270, !llvm.loop !77

vector.ph283:                                     ; preds = %vector.body270
  %vector.recur.extract281 = extractelement <4 x i32> %wide.load278, i64 3
  %i.rv = getelementptr inbounds nuw i8, ptr %1, i64 2484
  %i.rw = load i32, ptr %i.rv, align 4, !tbaa !7
  %i.rx = and i32 %vector.recur.extract281, -2147483648
  %i.ry = getelementptr inbounds nuw i8, ptr %1, i64 900 ; 2 uses
  %i.rz = load i32, ptr %i.ry, align 4, !tbaa !7  ; 3 uses
  %i.sa = and i32 %i.rz, 2147483646
  %i.sb = or disjoint i32 %i.sa, %i.rx
  %i.sc = lshr exact i32 %i.sb, 1
  %i.sd = and i32 %i.rz, 1
  %.not29.i.i7 = icmp eq i32 %i.sd, 0
  %i.se = select i1 %.not29.i.i7, i32 0, i32 -1727483681
  %i.sf = xor i32 %i.se, %i.rw
  %i.sg = xor i32 %i.sf, %i.sc
  store i32 %i.sg, ptr %i.qt, align 8, !tbaa !7
  %i.sh = getelementptr inbounds nuw i8, ptr %1, i64 2488
  %i.si = load i32, ptr %i.sh, align 8, !tbaa !7
  %i.sj = and i32 %i.rz, -2147483648
  %i.sk = getelementptr inbounds nuw i8, ptr %1, i64 904 ; 2 uses
  %i.sl = load i32, ptr %i.sk, align 8, !tbaa !7  ; 3 uses
  %i.sm = and i32 %i.sl, 2147483646
  %i.sn = or disjoint i32 %i.sm, %i.sj
  %i.so = lshr exact i32 %i.sn, 1
  %i.sp = and i32 %i.sl, 1
  %.not29.i.i7.1 = icmp eq i32 %i.sp, 0
  %i.sq = select i1 %.not29.i.i7.1, i32 0, i32 -1727483681
  %i.sr = xor i32 %i.sq, %i.si
  %i.ss = xor i32 %i.sr, %i.so
  store i32 %i.ss, ptr %i.ry, align 4, !tbaa !7
  %i.st = getelementptr inbounds nuw i8, ptr %1, i64 2492
  %i.su = load i32, ptr %i.st, align 4, !tbaa !7
  %i.sv = and i32 %i.sl, -2147483648
  %i.sw = getelementptr inbounds nuw i8, ptr %1, i64 908 ; 2 uses
  %i.sx = load i32, ptr %i.sw, align 4, !tbaa !7  ; 3 uses
  %i.sy = and i32 %i.sx, 2147483646
  %i.sz = or disjoint i32 %i.sy, %i.sv
  %i.ta = lshr exact i32 %i.sz, 1
  %i.tb = and i32 %i.sx, 1
  %.not29.i.i7.2 = icmp eq i32 %i.tb, 0
  %i.tc = select i1 %.not29.i.i7.2, i32 0, i32 -1727483681
  %i.td = xor i32 %i.tc, %i.su
  %i.te = xor i32 %i.td, %i.ta
  store i32 %i.te, ptr %i.sk, align 8, !tbaa !7
  %i.tf = getelementptr inbounds nuw i8, ptr %1, i64 2492
  %vector.recur.init286 = insertelement <4 x i32> poison, i32 %i.sx, i64 3
  br label %vector.body284

vector.body284:                                   ; preds = %vector.body284, %vector.ph283
  %index285 = phi i64 [ 0, %vector.ph283 ], [ %index.next291, %vector.body284 ] ; 2 uses
  %vector.recur287 = phi <4 x i32> [ %vector.recur.init286, %vector.ph283 ], [ %wide.load290, %vector.body284 ]
  %i.tg = shl i64 %index285, 2
  %next.gep288 = getelementptr i8, ptr %i.sw, i64 %i.tg ; 3 uses
  %i.th = getelementptr i8, ptr %next.gep288, i64 -908
  %wide.load289 = load <4 x i32>, ptr %i.th, align 4, !tbaa !7
  %i.ti = getelementptr i8, ptr %next.gep288, i64 4
  %wide.load290 = load <4 x i32>, ptr %i.ti, align 4, !tbaa !7 ; 5 uses
  %i.tj = shufflevector <4 x i32> %vector.recur287, <4 x i32> %wide.load290, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %i.tk = and <4 x i32> %i.tj, splat (i32 -2147483648)
  %i.tl = and <4 x i32> %wide.load290, splat (i32 2147483646)
  %i.tm = or disjoint <4 x i32> %i.tl, %i.tk
  %i.tn = lshr exact <4 x i32> %i.tm, splat (i32 1)
  %i.to = and <4 x i32> %wide.load290, splat (i32 1)
  %i.tp = icmp eq <4 x i32> %i.to, zeroinitializer
  %i.tq = select <4 x i1> %i.tp, <4 x i32> zeroinitializer, <4 x i32> splat (i32 -1727483681)
  %i.tr = xor <4 x i32> %i.tq, %wide.load289
  %i.ts = xor <4 x i32> %i.tr, %i.tn
  store <4 x i32> %i.ts, ptr %next.gep288, align 4, !tbaa !7
  %index.next291 = add nuw i64 %index285, 4       ; 2 uses
  %i.tt = icmp eq i64 %index.next291, 396
  br i1 %i.tt, label %next_state.exit.i13, label %vector.body284, !llvm.loop !78

next_state.exit.i13:                              ; preds = %vector.body284
  %i.tu = extractelement <4 x i32> %wide.load290, i64 3
  %i.tv = getelementptr inbounds nuw i8, ptr %1, i64 1584
  %i.tw = load i32, ptr %i.tv, align 8, !tbaa !7
  %i.tx = and i32 %i.tu, -2147483648
  %i.ty = load i32, ptr %1, align 8, !tbaa !7     ; 2 uses
  %i.tz = and i32 %i.ty, 2147483646
  %i.ua = or disjoint i32 %i.tz, %i.tx
  %i.ub = lshr exact i32 %i.ua, 1
  %i.uc = and i32 %i.ty, 1
  %.not27.i.i14 = icmp eq i32 %i.uc, 0
  %i.ud = select i1 %.not27.i.i14, i32 0, i32 -1727483681
  %i.ue = xor i32 %i.ud, %i.tw
  %i.uf = xor i32 %i.ue, %i.ub
  store i32 %i.uf, ptr %i.tf, align 4, !tbaa !7
  %.pre121 = load i32, ptr %i.zi, align 8, !tbaa !21
  br label %genrand_int32.exit15

genrand_int32.exit15:                             ; preds = %genrand_int32.exit29, %next_state.exit.i13
  %i.ug = phi i32 [ %.pre121, %next_state.exit.i13 ], [ %i.qr, %genrand_int32.exit29 ]
  %i.uh = phi ptr [ %1, %next_state.exit.i13 ], [ %i.qf, %genrand_int32.exit29 ] ; 2 uses
  %i.ui = getelementptr i8, ptr %i.uh, i64 4
  %i.uj = load i32, ptr %i.uh, align 4, !tbaa !7  ; 2 uses
  %i.uk = lshr i32 %i.uj, 11
  %i.ul = xor i32 %i.uk, %i.uj                    ; 2 uses
  %i.um = shl i32 %i.ul, 7
  %i.un = and i32 %i.um, -1658038656
  %i.uo = xor i32 %i.un, %i.ul                    ; 2 uses
  %i.up = shl i32 %i.uo, 15
  %i.uq = and i32 %i.up, -272236544
  %i.ur = xor i32 %i.uq, %i.uo                    ; 2 uses
  %i.us = lshr i32 %i.ur, 18
  %i.ut = xor i32 %i.us, %i.ur
  store i32 %i.ut, ptr getelementptr inbounds nuw (i8, ptr @hash_salt, i64 16), align 8, !tbaa !57
  %i.uu = add i32 %i.ug, -1                       ; 2 uses
  store i32 %i.uu, ptr %i.zi, align 8, !tbaa !21
  %i.uv = icmp slt i32 %i.uu, 1
  br i1 %i.uv, label %vector.ph295, label %genrand_int32.exit

vector.ph295:                                     ; preds = %genrand_int32.exit15
  store i32 624, ptr %i.zi, align 8, !tbaa !21
  %.pre.i.i = load i32, ptr %1, align 8, !tbaa !7
  %i.uw = getelementptr inbounds nuw i8, ptr %1, i64 896
  %vector.recur.init298 = insertelement <4 x i32> poison, i32 %.pre.i.i, i64 3
  br label %vector.body296

vector.body296:                                   ; preds = %vector.body296, %vector.ph295
  %index297 = phi i64 [ 0, %vector.ph295 ], [ %index.next305, %vector.body296 ] ; 2 uses
  %vector.recur299 = phi <4 x i32> [ %vector.recur.init298, %vector.ph295 ], [ %wide.load304, %vector.body296 ]
  %i.ux = shl i64 %index297, 2
  %next.gep300 = getelementptr i8, ptr %1, i64 %i.ux ; 6 uses
  %i.uy = getelementptr i8, ptr %next.gep300, i64 1588
  %i.uz = getelementptr i8, ptr %next.gep300, i64 1604
  %wide.load301 = load <4 x i32>, ptr %i.uy, align 4, !tbaa !7
  %wide.load302 = load <4 x i32>, ptr %i.uz, align 4, !tbaa !7
  %i.va = getelementptr i8, ptr %next.gep300, i64 4
  %i.vb = getelementptr i8, ptr %next.gep300, i64 20
  %wide.load303 = load <4 x i32>, ptr %i.va, align 4, !tbaa !7 ; 4 uses
  %wide.load304 = load <4 x i32>, ptr %i.vb, align 4, !tbaa !7 ; 5 uses
  %i.vc = shufflevector <4 x i32> %vector.recur299, <4 x i32> %wide.load303, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %i.vd = shufflevector <4 x i32> %wide.load303, <4 x i32> %wide.load304, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %i.ve = and <4 x i32> %i.vc, splat (i32 -2147483648)
  %i.vf = and <4 x i32> %i.vd, splat (i32 -2147483648)
  %i.vg = and <4 x i32> %wide.load303, splat (i32 2147483646)
  %i.vh = and <4 x i32> %wide.load304, splat (i32 2147483646)
  %i.vi = or disjoint <4 x i32> %i.vg, %i.ve
  %i.vj = or disjoint <4 x i32> %i.vh, %i.vf
  %i.vk = lshr exact <4 x i32> %i.vi, splat (i32 1)
  %i.vl = lshr exact <4 x i32> %i.vj, splat (i32 1)
  %i.vm = and <4 x i32> %wide.load303, splat (i32 1)
  %i.vn = and <4 x i32> %wide.load304, splat (i32 1)
  %i.vo = icmp eq <4 x i32> %i.vm, zeroinitializer
  %i.vp = icmp eq <4 x i32> %i.vn, zeroinitializer
  %i.vq = select <4 x i1> %i.vo, <4 x i32> zeroinitializer, <4 x i32> splat (i32 -1727483681)
  %i.vr = select <4 x i1> %i.vp, <4 x i32> zeroinitializer, <4 x i32> splat (i32 -1727483681)
  %i.vs = xor <4 x i32> %i.vq, %wide.load301
  %i.vt = xor <4 x i32> %i.vr, %wide.load302
  %i.vu = xor <4 x i32> %i.vs, %i.vk
  %i.vv = xor <4 x i32> %i.vt, %i.vl
  %i.vw = getelementptr i8, ptr %next.gep300, i64 16
  store <4 x i32> %i.vu, ptr %next.gep300, align 8, !tbaa !7
  store <4 x i32> %i.vv, ptr %i.vw, align 8, !tbaa !7
  %index.next305 = add nuw i64 %index297, 8       ; 2 uses
  %i.vx = icmp eq i64 %index.next305, 224
  br i1 %i.vx, label %vector.ph309, label %vector.body296, !llvm.loop !79

vector.ph309:                                     ; preds = %vector.body296
  %vector.recur.extract307 = extractelement <4 x i32> %wide.load304, i64 3
  %i.vy = getelementptr inbounds nuw i8, ptr %1, i64 2484
  %i.vz = load i32, ptr %i.vy, align 4, !tbaa !7
  %i.wa = and i32 %vector.recur.extract307, -2147483648
  %i.wb = getelementptr inbounds nuw i8, ptr %1, i64 900 ; 2 uses
  %i.wc = load i32, ptr %i.wb, align 4, !tbaa !7  ; 3 uses
  %i.wd = and i32 %i.wc, 2147483646
  %i.we = or disjoint i32 %i.wd, %i.wa
  %i.wf = lshr exact i32 %i.we, 1
  %i.wg = and i32 %i.wc, 1
  %.not29.i.i = icmp eq i32 %i.wg, 0
  %i.wh = select i1 %.not29.i.i, i32 0, i32 -1727483681
  %i.wi = xor i32 %i.wh, %i.vz
  %i.wj = xor i32 %i.wi, %i.wf
  store i32 %i.wj, ptr %i.uw, align 8, !tbaa !7
  %i.wk = getelementptr inbounds nuw i8, ptr %1, i64 2488
  %i.wl = load i32, ptr %i.wk, align 8, !tbaa !7
  %i.wm = and i32 %i.wc, -2147483648
  %i.wn = getelementptr inbounds nuw i8, ptr %1, i64 904 ; 2 uses
  %i.wo = load i32, ptr %i.wn, align 8, !tbaa !7  ; 3 uses
  %i.wp = and i32 %i.wo, 2147483646
  %i.wq = or disjoint i32 %i.wp, %i.wm
  %i.wr = lshr exact i32 %i.wq, 1
  %i.ws = and i32 %i.wo, 1
  %.not29.i.i.1 = icmp eq i32 %i.ws, 0
  %i.wt = select i1 %.not29.i.i.1, i32 0, i32 -1727483681
  %i.wu = xor i32 %i.wt, %i.wl
  %i.wv = xor i32 %i.wu, %i.wr
  store i32 %i.wv, ptr %i.wb, align 4, !tbaa !7
  %i.ww = getelementptr inbounds nuw i8, ptr %1, i64 2492
  %i.wx = load i32, ptr %i.ww, align 4, !tbaa !7
  %i.wy = and i32 %i.wo, -2147483648
  %i.wz = getelementptr inbounds nuw i8, ptr %1, i64 908 ; 2 uses
  %i.xa = load i32, ptr %i.wz, align 4, !tbaa !7  ; 3 uses
  %i.xb = and i32 %i.xa, 2147483646
  %i.xc = or disjoint i32 %i.xb, %i.wy
  %i.xd = lshr exact i32 %i.xc, 1
  %i.xe = and i32 %i.xa, 1
  %.not29.i.i.2 = icmp eq i32 %i.xe, 0
  %i.xf = select i1 %.not29.i.i.2, i32 0, i32 -1727483681
  %i.xg = xor i32 %i.xf, %i.wx
  %i.xh = xor i32 %i.xg, %i.xd
  store i32 %i.xh, ptr %i.wn, align 8, !tbaa !7
  %i.xi = getelementptr inbounds nuw i8, ptr %1, i64 2492
  %vector.recur.init312 = insertelement <4 x i32> poison, i32 %i.xa, i64 3
  br label %vector.body310

vector.body310:                                   ; preds = %vector.body310, %vector.ph309
  %index311 = phi i64 [ 0, %vector.ph309 ], [ %index.next317, %vector.body310 ] ; 2 uses
  %vector.recur313 = phi <4 x i32> [ %vector.recur.init312, %vector.ph309 ], [ %wide.load316, %vector.body310 ]
  %i.xj = shl i64 %index311, 2
  %next.gep314 = getelementptr i8, ptr %i.wz, i64 %i.xj ; 3 uses
  %i.xk = getelementptr i8, ptr %next.gep314, i64 -908
  %wide.load315 = load <4 x i32>, ptr %i.xk, align 4, !tbaa !7
  %i.xl = getelementptr i8, ptr %next.gep314, i64 4
  %wide.load316 = load <4 x i32>, ptr %i.xl, align 4, !tbaa !7 ; 5 uses
  %i.xm = shufflevector <4 x i32> %vector.recur313, <4 x i32> %wide.load316, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %i.xn = and <4 x i32> %i.xm, splat (i32 -2147483648)
  %i.xo = and <4 x i32> %wide.load316, splat (i32 2147483646)
  %i.xp = or disjoint <4 x i32> %i.xo, %i.xn
  %i.xq = lshr exact <4 x i32> %i.xp, splat (i32 1)
  %i.xr = and <4 x i32> %wide.load316, splat (i32 1)
  %i.xs = icmp eq <4 x i32> %i.xr, zeroinitializer
  %i.xt = select <4 x i1> %i.xs, <4 x i32> zeroinitializer, <4 x i32> splat (i32 -1727483681)
  %i.xu = xor <4 x i32> %i.xt, %wide.load315
  %i.xv = xor <4 x i32> %i.xu, %i.xq
  store <4 x i32> %i.xv, ptr %next.gep314, align 4, !tbaa !7
  %index.next317 = add nuw i64 %index311, 4       ; 2 uses
  %i.xw = icmp eq i64 %index.next317, 396
  br i1 %i.xw, label %next_state.exit.i, label %vector.body310, !llvm.loop !80

next_state.exit.i:                                ; preds = %vector.body310
  %i.xx = extractelement <4 x i32> %wide.load316, i64 3
  %i.xy = getelementptr inbounds nuw i8, ptr %1, i64 1584
  %i.xz = load i32, ptr %i.xy, align 8, !tbaa !7
  %i.ya = and i32 %i.xx, -2147483648
  %i.yb = load i32, ptr %1, align 8, !tbaa !7     ; 2 uses
  %i.yc = and i32 %i.yb, 2147483646
  %i.yd = or disjoint i32 %i.yc, %i.ya
  %i.ye = lshr exact i32 %i.yd, 1
  %i.yf = and i32 %i.yb, 1
  %.not27.i.i = icmp eq i32 %i.yf, 0
  %i.yg = select i1 %.not27.i.i, i32 0, i32 -1727483681
  %i.yh = xor i32 %i.yg, %i.xz
  %i.yi = xor i32 %i.yh, %i.ye
  store i32 %i.yi, ptr %i.xi, align 4, !tbaa !7
  br label %genrand_int32.exit

genrand_int32.exit:                               ; preds = %genrand_int32.exit15, %next_state.exit.i
  %i.yj = phi ptr [ %1, %next_state.exit.i ], [ %i.ui, %genrand_int32.exit15 ] ; 2 uses
  %i.yk = getelementptr i8, ptr %i.yj, i64 4
  store ptr %i.yk, ptr %i.zj, align 8, !tbaa !22
  %i.yl = load i32, ptr %i.yj, align 4, !tbaa !7  ; 2 uses
  %i.ym = lshr i32 %i.yl, 11
  %i.yn = xor i32 %i.ym, %i.yl                    ; 2 uses
  %i.yo = shl i32 %i.yn, 7
  %i.yp = and i32 %i.yo, -1658038656
  %i.yq = xor i32 %i.yp, %i.yn                    ; 2 uses
  %i.yr = shl i32 %i.yq, 15
  %i.ys = and i32 %i.yr, -272236544
  %i.yt = xor i32 %i.ys, %i.yq                    ; 2 uses
  %i.yu = lshr i32 %i.yt, 18
  %i.yv = xor i32 %i.yu, %i.yt
  store i32 %i.yv, ptr getelementptr inbounds nuw (i8, ptr @hash_salt, i64 20), align 4, !tbaa !57
  call void @__explicit_bzero_chk(ptr noundef nonnull %1, i64 noundef 2512, i64 noundef 2512) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #23
  br label %bb.j

bb.c:                                             ; preds = %bb.d, %bb.b
  %store_forwarded = phi i32 [ 19650218, %bb.b ], [ %i.zh, %bb.d ] ; 2 uses
  %indvars.iv.i.i = phi i64 [ 1, %bb.b ], [ %indvars.iv.next.i.i.1, %bb.d ] ; 4 uses
  %i.yw = getelementptr [4 x i8], ptr %1, i64 %indvars.iv.i.i
  %i.yx = lshr i32 %store_forwarded, 30
  %i.yy = xor i32 %i.yx, %store_forwarded
  %i.yz = mul i32 %i.yy, 1812433253
  %i.za = trunc nuw nsw i64 %indvars.iv.i.i to i32
  %i.zb = add i32 %i.yz, %i.za                    ; 3 uses
  store i32 %i.zb, ptr %i.yw, align 4, !tbaa !7
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 3 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, 624
  br i1 %exitcond.not.i.i, label %init_genrand.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.zc = getelementptr [4 x i8], ptr %1, i64 %indvars.iv.next.i.i
  %i.zd = lshr i32 %i.zb, 30
  %i.ze = xor i32 %i.zd, %i.zb
  %i.zf = mul i32 %i.ze, 1812433253
  %i.zg = trunc nuw nsw i64 %indvars.iv.next.i.i to i32
  %i.zh = add i32 %i.zf, %i.zg                    ; 2 uses
  store i32 %i.zh, ptr %i.zc, align 4, !tbaa !7
  %indvars.iv.next.i.i.1 = add nuw nsw i64 %indvars.iv.i.i, 2
  br label %bb.c

init_genrand.exit.i:                              ; preds = %bb.c
  %i.zi = getelementptr inbounds nuw i8, ptr %1, i64 2504 ; 19 uses
  %i.zj = getelementptr inbounds nuw i8, ptr %1, i64 2496 ; 5 uses
  %i.zk = getelementptr inbounds nuw i8, ptr %1, i64 2492 ; 2 uses
  store i32 1, ptr %i.zi, align 8, !tbaa !21
  store ptr %i.zj, ptr %i.zj, align 8, !tbaa !22
  br label %bb.e

bb.e:                                             ; preds = %bb.g, %init_genrand.exit.i
  %.051.i = phi i32 [ 624, %init_genrand.exit.i ], [ %i.aaf, %bb.g ]
  %.04250.i = phi i32 [ 0, %init_genrand.exit.i ], [ %spec.store.select.i, %bb.g ] ; 3 uses
  %.04349.i = phi i32 [ 1, %init_genrand.exit.i ], [ %.144.i, %bb.g ] ; 3 uses
  %i.zl = sext i32 %.04349.i to i64
  %i.zm = getelementptr [4 x i8], ptr %1, i64 %i.zl ; 2 uses
  %i.zn = load i32, ptr %i.zm, align 4, !tbaa !7
  %i.zo = add i32 %.04349.i, -1
  %i.zp = sext i32 %i.zo to i64
  %i.zq = getelementptr [4 x i8], ptr %1, i64 %i.zp
  %i.zr = load i32, ptr %i.zq, align 4, !tbaa !7  ; 2 uses
  %i.zs = lshr i32 %i.zr, 30
  %i.zt = xor i32 %i.zs, %i.zr
  %i.zu = mul i32 %i.zt, 1664525
  %i.zv = xor i32 %i.zu, %i.zn
  %i.zw = sext i32 %.04250.i to i64
  %i.zx = getelementptr [4 x i8], ptr %i.b, i64 %i.zw
  %i.zy = load i32, ptr %i.zx, align 4, !tbaa !7
  %i.zz = add i32 %i.zy, %.04250.i
  %i.aaa = add i32 %i.zz, %i.zv
  store i32 %i.aaa, ptr %i.zm, align 4, !tbaa !7
  %i.aab = add i32 %.04349.i, 1                   ; 2 uses
  %i.aac = add i32 %.04250.i, 1                   ; 2 uses
  %i.aad = icmp sgt i32 %i.aab, 623
  br i1 %i.aad, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.aae = load i32, ptr %i.zk, align 4, !tbaa !7
  store i32 %i.aae, ptr %1, align 8, !tbaa !7
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.144.i = phi i32 [ 1, %bb.f ], [ %i.aab, %bb.e ] ; 2 uses
  %.not48.i = icmp slt i32 %i.aac, 4
  %spec.store.select.i = select i1 %.not48.i, i32 %i.aac, i32 0
  %i.aaf = add nsw i32 %.051.i, -1                ; 2 uses
  %.not.i = icmp eq i32 %i.aaf, 0
  br i1 %.not.i, label %.preheader.i, label %bb.e, !llvm.loop !81

.preheader.i:                                     ; preds = %bb.g, %bb.i
  %.153.i = phi i32 [ %i.aav, %bb.i ], [ 623, %bb.g ]
  %.252.i = phi i32 [ %.3.i, %bb.i ], [ %.144.i, %bb.g ] ; 4 uses
  %i.aag = sext i32 %.252.i to i64
  %i.aah = getelementptr [4 x i8], ptr %1, i64 %i.aag ; 2 uses
  %i.aai = load i32, ptr %i.aah, align 4, !tbaa !7
  %i.aaj = add i32 %.252.i, -1
  %i.aak = sext i32 %i.aaj to i64
  %i.aal = getelementptr [4 x i8], ptr %1, i64 %i.aak
  %i.aam = load i32, ptr %i.aal, align 4, !tbaa !7 ; 2 uses
  %i.aan = lshr i32 %i.aam, 30
  %i.aao = xor i32 %i.aan, %i.aam
  %i.aap = mul i32 %i.aao, 1566083941
  %i.aaq = xor i32 %i.aap, %i.aai
  %i.aar = sub i32 %i.aaq, %.252.i
  store i32 %i.aar, ptr %i.aah, align 4, !tbaa !7
  %i.aas = add i32 %.252.i, 1                     ; 2 uses
  %i.aat = icmp sgt i32 %i.aas, 623
  br i1 %i.aat, label %bb.h, label %bb.i

bb.h:                                             ; preds = %.preheader.i
  %i.aau = load i32, ptr %i.zk, align 4, !tbaa !7
  store i32 %i.aau, ptr %1, align 8, !tbaa !7
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %.preheader.i
  %.3.i = phi i32 [ 1, %bb.h ], [ %i.aas, %.preheader.i ]
  %i.aav = add nsw i32 %.153.i, -1                ; 2 uses
  %.not47.i = icmp eq i32 %i.aav, 0
  br i1 %.not47.i, label %init_by_array.exit, label %.preheader.i, !llvm.loop !82

init_by_array.exit:                               ; preds = %bb.i
  store i32 -2147483648, ptr %1, align 8, !tbaa !7
  call void @__explicit_bzero_chk(ptr noundef nonnull %i.b, i64 noundef 16, i64 noundef 16) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  %i.aaw = load i32, ptr %i.zi, align 8, !tbaa !21
  %i.aax = add i32 %i.aaw, -1                     ; 3 uses
  store i32 %i.aax, ptr %i.zi, align 8, !tbaa !21
  %i.aay = icmp slt i32 %i.aax, 1
  br i1 %i.aay, label %vector.ph, label %._crit_edge.i58

bb.j:                                             ; preds = %bb.a, %genrand_int32.exit
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @rb_reset_random_seed() local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr @default_rand_key, align 8, !tbaa !11
  %i.b = tail call ptr @rb_ractor_local_storage_ptr(ptr noundef %i.a) #23 ; 2 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.b, label %default_rand.exit

bb.b:                                             ; preds = %bb.a
  %i.d = tail call noalias nonnull dereferenceable(2520) ptr @ruby_xcalloc(i64 noundef 1, i64 noundef 2520) #24 ; 2 uses
  %i.e = load ptr, ptr @default_rand_key, align 8, !tbaa !11
  tail call void @rb_ractor_local_storage_ptr_set(ptr noundef %i.e, ptr noundef nonnull %i.d) #23
  br label %default_rand.exit

default_rand.exit:                                ; preds = %bb.a, %bb.b
  %.0.i = phi ptr [ %i.d, %bb.b ], [ %i.b, %bb.a ] ; 2 uses
  %i.f = getelementptr i8, ptr %.0.i, i64 2504
  store ptr null, ptr %i.f, align 8, !tbaa !14
  store i64 1, ptr %.0.i, align 8, !tbaa !20
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define hidden void @InitVM_Random() local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i64 @rb_intern2(ptr noundef nonnull @.str.5, i64 noundef 4) #23 ; 2 uses
  tail call void @rb_define_global_function(ptr noundef nonnull @.str.6, ptr noundef nonnull @rb_f_srand, i32 noundef -1) #23
  tail call void @rb_define_global_function(ptr noundef nonnull @.str.7, ptr noundef nonnull @rb_f_rand, i32 noundef -1) #23
  %i.b = load i64, ptr @rb_cObject, align 8, !tbaa !35
  %i.c = tail call i64 @rb_define_class_id(i64 noundef %i.a, i64 noundef %i.b) #23 ; 9 uses
  tail call void @rb_undef_alloc_func(i64 noundef %i.c) #23
  %i.d = tail call i64 @rb_define_class(ptr noundef nonnull @.str.8, i64 noundef %i.c) #23 ; 2 uses
  store i64 %i.d, ptr @rb_cRandom, align 8, !tbaa !35
  tail call void @rb_const_set(i64 noundef %i.d, i64 noundef %i.a, i64 noundef %i.c) #23
  %i.e = load i64, ptr @rb_cRandom, align 8, !tbaa !35
  tail call void @rb_define_alloc_func(i64 noundef %i.e, ptr noundef nonnull @random_alloc) #23
  tail call void @rb_define_method(i64 noundef %i.c, ptr noundef nonnull @.str.9, ptr noundef nonnull @random_init, i32 noundef -1) #23
  tail call void @rb_define_method(i64 noundef %i.c, ptr noundef nonnull @.str.7, ptr noundef nonnull @random_rand, i32 noundef -1) #23
  tail call void @rb_define_method(i64 noundef %i.c, ptr noundef nonnull @.str.10, ptr noundef nonnull @random_bytes, i32 noundef 1) #23
  tail call void @rb_define_method(i64 noundef %i.c, ptr noundef nonnull @.str.11, ptr noundef nonnull @random_get_seed, i32 noundef 0) #23
  %i.f = load i64, ptr @rb_cRandom, align 8, !tbaa !35
  tail call void @rb_define_method(i64 noundef %i.f, ptr noundef nonnull @.str.12, ptr noundef nonnull @rand_mt_copy, i32 noundef 1) #23
  %i.g = load i64, ptr @rb_cRandom, align 8, !tbaa !35
  tail call void @rb_define_private_method(i64 noundef %i.g, ptr noundef nonnull @.str.13, ptr noundef nonnull @rand_mt_dump, i32 noundef 0) #23
  %i.h = load i64, ptr @rb_cRandom, align 8, !tbaa !35
  tail call void @rb_define_private_method(i64 noundef %i.h, ptr noundef nonnull @.str.14, ptr noundef nonnull @rand_mt_load, i32 noundef 1) #23
  %i.i = load i64, ptr @rb_cRandom, align 8, !tbaa !35
  tail call void @rb_define_private_method(i64 noundef %i.i, ptr noundef nonnull @.str.15, ptr noundef nonnull @rand_mt_state, i32 noundef 0) #23
  %i.j = load i64, ptr @rb_cRandom, align 8, !tbaa !35
  tail call void @rb_define_private_method(i64 noundef %i.j, ptr noundef nonnull @.str.16, ptr noundef nonnull @rand_mt_left, i32 noundef 0) #23
  %i.k = load i64, ptr @rb_cRandom, align 8, !tbaa !35
  tail call void @rb_define_method(i64 noundef %i.k, ptr noundef nonnull @.str.17, ptr noundef nonnull @rand_mt_equal, i32 noundef 1) #23
  %i.l = load i64, ptr @rb_cRandom, align 8, !tbaa !35
  tail call void @rb_define_singleton_method(i64 noundef %i.l, ptr noundef nonnull @.str.6, ptr noundef nonnull @rb_f_srand, i32 noundef -1) #23
  %i.m = load i64, ptr @rb_cRandom, align 8, !tbaa !35
  tail call void @rb_define_singleton_method(i64 noundef %i.m, ptr noundef nonnull @.str.7, ptr noundef nonnull @random_s_rand, i32 noundef -1) #23
  %i.n = load i64, ptr @rb_cRandom, align 8, !tbaa !35
  tail call void @rb_define_singleton_method(i64 noundef %i.n, ptr noundef nonnull @.str.10, ptr noundef nonnull @random_s_bytes, i32 noundef 1) #23
  %i.o = load i64, ptr @rb_cRandom, align 8, !tbaa !35
  tail call void @rb_define_singleton_method(i64 noundef %i.o, ptr noundef nonnull @.str.11, ptr noundef nonnull @random_s_seed, i32 noundef 0) #23
  %i.p = load i64, ptr @rb_cRandom, align 8, !tbaa !35
  tail call void @rb_define_singleton_method(i64 noundef %i.p, ptr noundef nonnull @.str.18, ptr noundef nonnull @random_seed, i32 noundef 0) #23
  %i.q = load i64, ptr @rb_cRandom, align 8, !tbaa !35
  tail call void @rb_define_singleton_method(i64 noundef %i.q, ptr noundef nonnull @.str.19, ptr noundef nonnull @random_raw_seed, i32 noundef 1) #23
  %i.r = load i64, ptr @rb_cRandom, align 8, !tbaa !35 ; 6 uses
  %i.s = icmp eq i64 %i.r, 0
  %i.t = and i64 %i.r, 7
  %i.u = icmp ne i64 %i.t, 0
  %i.v = or i1 %i.s, %i.u
  br i1 %i.v, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.w = inttoptr i64 %i.r to ptr
  %i.x = getelementptr i8, ptr %i.w, i64 8
  br label %rb_class_of.exit

bb.c:                                             ; preds = %bb.a
  switch i64 %i.r, label %bb.f [
    i64 0, label %rb_class_of.exit
    i64 4, label %bb.d
    i64 20, label %bb.e
  ]

bb.d:                                             ; preds = %bb.c
  br label %rb_class_of.exit

bb.e:                                             ; preds = %bb.c
  br label %rb_class_of.exit

bb.f:                                             ; preds = %bb.c
  %i.y = trunc i64 %i.r to i1
  br i1 %i.y, label %rb_class_of.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.z = and i64 %i.r, 254
  %i.aa = icmp eq i64 %i.z, 12
  %spec.select.i = select i1 %i.aa, ptr @rb_cSymbol, ptr @rb_cFloat
  br label %rb_class_of.exit

rb_class_of.exit:                                 ; preds = %bb.b, %bb.c, %bb.d, %bb.e, %bb.f, %bb.g
  %.0.in.i = phi ptr [ %i.x, %bb.b ], [ @rb_cNilClass, %bb.d ], [ @rb_cTrueClass, %bb.e ], [ @rb_cFalseClass, %bb.c ], [ @rb_cInteger, %bb.f ], [ %spec.select.i, %bb.g ]
  %.0.i = load i64, ptr %.0.in.i, align 8, !tbaa !35
  tail call void @rb_define_private_method(i64 noundef %.0.i, ptr noundef nonnull @.str.15, ptr noundef nonnull @random_s_state, i32 noundef 0) #23
  %i.ab = load i64, ptr @rb_cRandom, align 8, !tbaa !35 ; 6 uses
  %i.ac = icmp eq i64 %i.ab, 0
  %i.ad = and i64 %i.ab, 7
  %i.ae = icmp ne i64 %i.ad, 0
  %i.af = or i1 %i.ac, %i.ae
  br i1 %i.af, label %bb.i, label %bb.h

bb.h:                                             ; preds = %rb_class_of.exit
  %i.ag = inttoptr i64 %i.ab to ptr
  %i.ah = getelementptr i8, ptr %i.ag, i64 8
  br label %rb_class_of.exit18

bb.i:                                             ; preds = %rb_class_of.exit
  switch i64 %i.ab, label %bb.l [
    i64 0, label %rb_class_of.exit18
    i64 4, label %bb.j
    i64 20, label %bb.k
  ]

bb.j:                                             ; preds = %bb.i
  br label %rb_class_of.exit18

bb.k:                                             ; preds = %bb.i
  br label %rb_class_of.exit18

bb.l:                                             ; preds = %bb.i
  %i.ai = trunc i64 %i.ab to i1
  br i1 %i.ai, label %rb_class_of.exit18, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.aj = and i64 %i.ab, 254
  %i.ak = icmp eq i64 %i.aj, 12
  %spec.select.i17 = select i1 %i.ak, ptr @rb_cSymbol, ptr @rb_cFloat
  br label %rb_class_of.exit18

rb_class_of.exit18:                               ; preds = %bb.h, %bb.i, %bb.j, %bb.k, %bb.l, %bb.m
  %.0.in.i15 = phi ptr [ %i.ah, %bb.h ], [ @rb_cNilClass, %bb.j ], [ @rb_cTrueClass, %bb.k ], [ @rb_cFalseClass, %bb.i ], [ @rb_cInteger, %bb.l ], [ %spec.select.i17, %bb.m ]
  %.0.i16 = load i64, ptr %.0.in.i15, align 8, !tbaa !35
  tail call void @rb_define_private_method(i64 noundef %.0.i16, ptr noundef nonnull @.str.16, ptr noundef nonnull @random_s_left, i32 noundef 0) #23
  %i.al = load i64, ptr @rb_cRandom, align 8, !tbaa !35
  %i.am = tail call i64 @rb_define_module_under(i64 noundef %i.al, ptr noundef nonnull @.str.20) #23 ; 4 uses
  tail call void @rb_include_module(i64 noundef %i.c, i64 noundef %i.am) #23
  tail call void @rb_extend_object(i64 noundef %i.c, i64 noundef %i.am) #23
  tail call void @rb_define_method(i64 noundef %i.am, ptr noundef nonnull @.str.21, ptr noundef nonnull @rand_random_number, i32 noundef -1) #23
  tail call void @rb_define_method(i64 noundef %i.am, ptr noundef nonnull @.str.7, ptr noundef nonnull @rand_random_number, i32 noundef -1) #23
  %i.an = tail call ptr @rb_ractor_local_storage_ptr_newkey(ptr noundef nonnull @default_rand_key_storage_type) #23
  store ptr %i.an, ptr @default_rand_key, align 8, !tbaa !11
  ret void
}

declare extern_weak void @rb_define_global_function(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind sspstrong uwtable
define internal i64 @rb_f_srand(i32 noundef %0, ptr noundef readonly captures(none) %1, i64 %2) #0 {
bb.a:
  %i.a = alloca [5 x i32], align 16               ; 7 uses
  %i.b = tail call fastcc ptr @default_mt()       ; 3 uses
  %or.cond.i = icmp ugt i32 %0, 1
  br i1 %or.cond.i, label %bb.b, label %rb_check_arity.exit

bb.b:                                             ; preds = %bb.a
  tail call void @rb_error_arity(i32 noundef %0, i32 noundef 0, i32 noundef 1) #25
  unreachable

rb_check_arity.exit:                              ; preds = %bb.a
  %i.c = icmp eq i32 %0, 0
  br i1 %i.c, label %bb.c, label %bb.e

bb.c:                                             ; preds = %rb_check_arity.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  %i.d = call i32 @ruby_fill_random_bytes(ptr noundef nonnull %i.a, i64 noundef 16, i32 noundef 0) ; 0 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  %i.f = load i32, ptr %i.e, align 4, !tbaa !7
  %i.g = icmp ult i32 %i.f, 2
  br i1 %i.g, label %bb.d, label %random_seed.exit

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i32 1, ptr %i.h, align 16, !tbaa !7
  br label %random_seed.exit

random_seed.exit:                                 ; preds = %bb.c, %bb.d
  %.0.i.i = phi i64 [ 5, %bb.d ], [ 4, %bb.c ]
  %i.i = call i64 @rb_integer_unpack(ptr noundef nonnull %i.a, i64 noundef %.0.i.i, i64 noundef 4, i64 noundef 0, i32 noundef 66) #23
  call void @__explicit_bzero_chk(ptr noundef nonnull %i.a, i64 noundef 16, i64 noundef 20) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  br label %bb.f

bb.e:                                             ; preds = %rb_check_arity.exit
  %i.j = load i64, ptr %1, align 8, !tbaa !35
  %i.k = tail call i64 @rb_to_int(i64 noundef %i.j) #23
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %random_seed.exit
  %.0 = phi i64 [ %i.i, %random_seed.exit ], [ %i.k, %bb.e ] ; 2 uses
  %i.l = load i64, ptr %i.b, align 8, !tbaa !20
  %i.m = call fastcc i64 @rand_init(ptr noundef nonnull @random_mt_if, ptr noundef nonnull %i.b, i64 noundef %.0) ; 0 uses
  store i64 %.0, ptr %i.b, align 8, !tbaa !20
  ret i64 %i.l
}

; Function Attrs: nounwind sspstrong uwtable
define internal i64 @rb_f_rand(i32 noundef %0, ptr noundef readonly captures(none) %1, i64 noundef %2) #0 {
bb.a:
  %i.a = tail call fastcc nonnull ptr @default_mt() ; 3 uses
  %or.cond.i = icmp ugt i32 %0, 1
  br i1 %or.cond.i, label %bb.b, label %rb_check_arity.exit

bb.b:                                             ; preds = %bb.a
  tail call void @rb_error_arity(i32 noundef %0, i32 noundef 0, i32 noundef 1) #25
  unreachable

rb_check_arity.exit:                              ; preds = %bb.a
  %.not = icmp eq i32 %0, 0
  br i1 %.not, label %bb.g, label %bb.c

bb.c:                                             ; preds = %rb_check_arity.exit
  %i.b = load i64, ptr %1, align 8, !tbaa !35     ; 3 uses
  %i.c = icmp eq i64 %i.b, 4
  br i1 %i.c, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = tail call fastcc i64 @rand_range(i64 noundef %2, ptr noundef nonnull %i.a, i64 noundef %i.b) ; 2 uses
  %.not20 = icmp eq i64 %i.d, 0
  br i1 %.not20, label %bb.e, label %rb_float_new_inline.exit

bb.e:                                             ; preds = %bb.d
  %i.e = tail call i64 @rb_to_int(i64 noundef %i.b) #23 ; 2 uses
  %.not21 = icmp eq i64 %i.e, 1
  br i1 %.not21, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.f = tail call fastcc i64 @rand_int(i64 noundef %2, ptr noundef nonnull %i.a, i64 noundef %i.e, i32 noundef 0) ; 2 uses
  %i.g = icmp eq i64 %i.f, 4
  br i1 %i.g, label %bb.g, label %rb_float_new_inline.exit

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.c, %rb_check_arity.exit
  %i.h = tail call fastcc double @random_real(i64 noundef %2, ptr noundef nonnull %i.a, i32 noundef 1) ; 2 uses
  %i.i = bitcast double %i.h to i64               ; 5 uses
  %cond.i = icmp eq i64 %i.i, 3458764513820540928
  br i1 %cond.i, label %bb.k, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.j = lshr i64 %i.i, 60
  %i.k = trunc nuw nsw i64 %i.j to i32
  %i.l = and i32 %i.k, 7
  %i.m = add nsw i32 %i.l, -5
  %i.n = icmp ult i32 %i.m, -2
  br i1 %i.n, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.o = tail call noundef i64 @llvm.fshl.i64(i64 range(i64 3458764513820540929, 3458764513820540928) %i.i, i64 range(i64 3458764513820540929, 3458764513820540928) %i.i, i64 3)
  %i.p = and i64 %i.o, -4
  %i.q = or disjoint i64 %i.p, 2
  br label %rb_float_new_inline.exit

bb.j:                                             ; preds = %bb.h
  %i.r = icmp eq i64 %i.i, 0
  br i1 %i.r, label %rb_float_new_inline.exit, label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.g
  %i.s = tail call i64 @rb_float_new_in_heap(double noundef %i.h) #23
  br label %rb_float_new_inline.exit

rb_float_new_inline.exit:                         ; preds = %bb.f, %bb.d, %bb.k, %bb.j, %bb.i
  %.1 = phi i64 [ -9223372036854775806, %bb.j ], [ %i.q, %bb.i ], [ %i.s, %bb.k ], [ %i.f, %bb.f ], [ %i.d, %bb.d ]
  ret i64 %.1
}

declare i64 @rb_define_class_id(i64 noundef, i64 noundef) local_unnamed_addr #1

declare void @rb_undef_alloc_func(i64 noundef) local_unnamed_addr #1

declare i64 @rb_define_class(ptr noundef, i64 noundef) local_unnamed_addr #1

declare void @rb_const_set(i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

declare void @rb_define_alloc_func(i64 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind sspstrong uwtable
define internal i64 @random_alloc(i64 noundef %0) #0 {
bb.a:
  %i.a = tail call i64 @rb_data_typed_object_zalloc(i64 noundef %0, i64 noundef 2520, ptr noundef nonnull @random_mt_type) #23 ; 2 uses
  %i.b = inttoptr i64 %i.a to ptr                 ; 2 uses
  %i.c = getelementptr i8, ptr %i.b, i64 24
  %i.d = load i64, ptr %i.c, align 8, !tbaa !36
  %i.e = trunc i64 %i.d to i1
  %i.f = getelementptr i8, ptr %i.b, i64 32       ; 2 uses
  br i1 %i.e, label %RTYPEDDATA_GET_DATA.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !83
  br label %RTYPEDDATA_GET_DATA.exit

RTYPEDDATA_GET_DATA.exit:                         ; preds = %bb.a, %bb.b
  %i.h = phi ptr [ %i.g, %bb.b ], [ %i.f, %bb.a ]
  store i64 1, ptr %i.h, align 8, !tbaa !28
  ret i64 %i.a
}

declare extern_weak void @rb_define_method(i64 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind sspstrong uwtable
define internal range(i64 1, -7) i64 @random_init(i32 noundef %0, ptr noundef readonly captures(none) %1, i64 noundef returned %2) #0 {
bb.a:
  %i.a = load i64, ptr @rb_cRandom, align 8, !tbaa !35
  %i.b = icmp eq i64 %2, %i.a
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = tail call fastcc nonnull ptr @default_mt()
  br label %try_get_rnd.exit

bb.c:                                             ; preds = %bb.a
  %i.d = tail call i32 @rb_typeddata_is_kind_of(i64 noundef %2, ptr noundef nonnull @rb_random_data_type_1_0) #23
  %.not.i = icmp eq i32 %i.d, 0
  br i1 %.not.i, label %try_get_rnd.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = inttoptr i64 %2 to ptr                   ; 2 uses
  %i.f = getelementptr i8, ptr %i.e, i64 24
  %i.g = load i64, ptr %i.f, align 8, !tbaa !36
  %i.h = and i64 %i.g, -2                         ; 2 uses
  %i.i = icmp eq i64 %i.h, ptrtoint (ptr @random_mt_type to i64)
  %i.j = getelementptr i8, ptr %i.e, i64 32
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !39   ; 4 uses
  br i1 %i.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.l = tail call fastcc ptr @rand_start(ptr noundef %i.k, i64 noundef %2) ; 0 uses
  br label %try_get_rnd.exit

bb.f:                                             ; preds = %bb.d
  %.not12.i = icmp eq ptr %i.k, null
  br i1 %.not12.i, label %bb.g, label %try_get_rnd.exit

bb.g:                                             ; preds = %bb.f
  %i.m = inttoptr i64 %i.h to ptr
  %i.n = load i64, ptr @rb_eArgError, align 8, !tbaa !35
  %i.o = load ptr, ptr %i.m, align 8, !tbaa !41
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.n, ptr noundef nonnull @.str.25, ptr noundef %i.o) #25
  unreachable

try_get_rnd.exit:                                 ; preds = %bb.b, %bb.c, %bb.e, %bb.f
  %.0.i = phi ptr [ %i.c, %bb.b ], [ %i.k, %bb.e ], [ null, %bb.c ], [ %i.k, %bb.f ] ; 4 uses
  %i.p = inttoptr i64 %2 to ptr                   ; 2 uses
  %i.q = getelementptr i8, ptr %i.p, i64 24
  %i.r = load i64, ptr %i.q, align 8, !tbaa !36
  %i.s = and i64 %i.r, -2
  %i.t = inttoptr i64 %i.s to ptr                 ; 2 uses
  %i.u = getelementptr i8, ptr %i.t, i64 56
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !46   ; 5 uses
  %.not = icmp eq ptr %i.v, null
  br i1 %.not, label %bb.h, label %bb.i

bb.h:                                             ; preds = %try_get_rnd.exit
  %i.w = load i64, ptr @rb_eTypeError, align 8, !tbaa !35
  %i.x = load ptr, ptr %i.t, align 8, !tbaa !41
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.w, ptr noundef nonnull @.str.30, ptr noundef %i.x) #25
  unreachable

bb.i:                                             ; preds = %try_get_rnd.exit
  %i.y = getelementptr i8, ptr %i.v, i64 8
  %i.z = load i8, ptr %i.y, align 8, !tbaa !84    ; 2 uses
  %.not22 = icmp eq i8 %i.z, 1
  br i1 %.not22, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.aa = zext i8 %i.z to i32
  %i.ab = getelementptr i8, ptr %i.v, i64 9
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !85
  %i.ad = zext i8 %i.ac to i32
  %i.ae = load i64, ptr @rb_eTypeError, align 8, !tbaa !35
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.ae, ptr noundef nonnull @.str.31, i32 noundef %i.aa, i32 noundef %i.ad) #25
  unreachable

bb.k:                                             ; preds = %bb.i
  %or.cond.i = icmp ugt i32 %0, 1
  br i1 %or.cond.i, label %bb.l, label %rb_check_arity.exit

bb.l:                                             ; preds = %bb.k
  tail call void @rb_error_arity(i32 noundef %0, i32 noundef 0, i32 noundef 1) #25
  unreachable

rb_check_arity.exit:                              ; preds = %bb.k
  %i.af = icmp ne i64 %2, 0
  %i.ag = and i64 %2, 7
  %i.ah = icmp eq i64 %i.ag, 0
  %.not3.i.i = and i1 %i.af, %i.ah
  br i1 %.not3.i.i, label %RB_OBJ_FROZEN.exit.i, label %RB_OBJ_FROZEN.exit.thread.i, !prof !86

RB_OBJ_FROZEN.exit.i:                             ; preds = %rb_check_arity.exit
  %i.ai = load i64, ptr %i.p, align 8, !tbaa !53  ; 3 uses
  %i.aj = and i64 %i.ai, 2048
  %.not.i23 = icmp eq i64 %i.aj, 0
  br i1 %.not.i23, label %rbimpl_RB_TYPE_P_fastpath.exit.i, label %RB_OBJ_FROZEN.exit.thread.i, !prof !54

RB_OBJ_FROZEN.exit.thread.i:                      ; preds = %RB_OBJ_FROZEN.exit.i, %rb_check_arity.exit
  tail call void @rb_error_frozen_object(i64 noundef %2) #25
  unreachable

rbimpl_RB_TYPE_P_fastpath.exit.i:                 ; preds = %RB_OBJ_FROZEN.exit.i
  %i.ak = and i64 %i.ai, 31
  %i.al = icmp ne i64 %i.ak, 5
  %i.am = and i64 %i.ai, 49152
  %.not8.i = icmp eq i64 %i.am, 0
  %or.cond.i24 = or i1 %i.al, %.not8.i
  br i1 %or.cond.i24, label %rb_check_frozen_inline.exit, label %bb.m, !prof !87

bb.m:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i
  tail call void @rb_str_modify(i64 noundef %2) #23
  br label %rb_check_frozen_inline.exit

rb_check_frozen_inline.exit:                      ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i, %bb.m
  %i.an = icmp eq i32 %0, 0
  br i1 %i.an, label %bb.n, label %bb.o

bb.n:                                             ; preds = %rb_check_frozen_inline.exit
  %i.ao = tail call fastcc i64 @rand_init_default(ptr noundef %i.v, ptr noundef %.0.i) ; 4 uses
  store i64 %i.ao, ptr %.0.i, align 8, !tbaa !35
  %i.ap = icmp eq i64 %i.ao, 0
  %i.aq = and i64 %i.ao, 7
  %i.ar = icmp ne i64 %i.aq, 0
  %i.as = or i1 %i.ap, %i.ar
  br i1 %i.as, label %rb_obj_write.exit, label %rb_obj_write.exit.sink.split

bb.o:                                             ; preds = %rb_check_frozen_inline.exit
  %i.at = load i64, ptr %1, align 8, !tbaa !35
  %i.au = tail call i64 @rb_to_int(i64 noundef %i.at) #23 ; 5 uses
  %i.av = tail call fastcc i64 @rand_init(ptr noundef nonnull %i.v, ptr noundef %.0.i, i64 noundef %i.au) ; 0 uses
  store i64 %i.au, ptr %.0.i, align 8, !tbaa !35
  %i.aw = icmp eq i64 %i.au, 0
  %i.ax = and i64 %i.au, 7
  %i.ay = icmp ne i64 %i.ax, 0
  %i.az = or i1 %i.aw, %i.ay
  br i1 %i.az, label %rb_obj_write.exit, label %rb_obj_write.exit.sink.split

rb_obj_write.exit.sink.split:                     ; preds = %bb.o, %bb.n
  %.sink = phi i64 [ %i.ao, %bb.n ], [ %i.au, %bb.o ]
  tail call void @rb_gc_writebarrier(i64 noundef %2, i64 noundef %.sink) #23
  br label %rb_obj_write.exit

rb_obj_write.exit:                                ; preds = %rb_obj_write.exit.sink.split, %bb.o, %bb.n
  ret i64 %2
}

; Function Attrs: nounwind sspstrong uwtable
define internal range(i64 5, 4) i64 @random_rand(i32 noundef %0, ptr noundef readonly captures(none) %1, i64 noundef %2) #0 {
bb.a:
  %i.a = load i64, ptr @rb_cRandom, align 8, !tbaa !35
  %i.b = icmp eq i64 %2, %i.a
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = tail call fastcc nonnull ptr @default_mt()
  br label %try_get_rnd.exit

bb.c:                                             ; preds = %bb.a
  %i.d = tail call i32 @rb_typeddata_is_kind_of(i64 noundef %2, ptr noundef nonnull @rb_random_data_type_1_0) #23
  %.not.i = icmp eq i32 %i.d, 0
  br i1 %.not.i, label %try_get_rnd.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = inttoptr i64 %2 to ptr                   ; 2 uses
  %i.f = getelementptr i8, ptr %i.e, i64 24
  %i.g = load i64, ptr %i.f, align 8, !tbaa !36
  %i.h = and i64 %i.g, -2                         ; 2 uses
  %i.i = icmp eq i64 %i.h, ptrtoint (ptr @random_mt_type to i64)
  %i.j = getelementptr i8, ptr %i.e, i64 32
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !39   ; 4 uses
  br i1 %i.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.l = tail call fastcc ptr @rand_start(ptr noundef %i.k, i64 noundef %2) ; 0 uses
  br label %try_get_rnd.exit

bb.f:                                             ; preds = %bb.d
  %.not12.i = icmp eq ptr %i.k, null
  br i1 %.not12.i, label %bb.g, label %try_get_rnd.exit

bb.g:                                             ; preds = %bb.f
  %i.m = inttoptr i64 %i.h to ptr
  %i.n = load i64, ptr @rb_eArgError, align 8, !tbaa !35
  %i.o = load ptr, ptr %i.m, align 8, !tbaa !41
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.n, ptr noundef nonnull @.str.25, ptr noundef %i.o) #25
  unreachable

try_get_rnd.exit:                                 ; preds = %bb.b, %bb.c, %bb.e, %bb.f
  %.0.i = phi ptr [ %i.c, %bb.b ], [ %i.k, %bb.e ], [ null, %bb.c ], [ %i.k, %bb.f ]
  %i.p = tail call fastcc i64 @rand_random(i32 noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %.0.i) ; 2 uses
  switch i64 %i.p, label %check_random_number.exit [
    i64 0, label %bb.h
    i64 4, label %bb.j
  ]

bb.h:                                             ; preds = %try_get_rnd.exit
  %i.q = load i64, ptr %1, align 8, !tbaa !35     ; 2 uses
  %i.r = trunc i64 %i.q to i1
  br i1 %i.r, label %check_random_number.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.s = tail call i64 @rb_num2long(i64 noundef %i.q) #23 ; 0 uses
  br label %check_random_number.exit

bb.j:                                             ; preds = %try_get_rnd.exit
  %i.t = load i64, ptr %1, align 8, !tbaa !35
  tail call fastcc void @invalid_argument(i64 noundef %i.t) #27
  unreachable

check_random_number.exit:                         ; preds = %try_get_rnd.exit, %bb.h, %bb.i
  ret i64 %i.p
}

; Function Attrs: nounwind sspstrong uwtable
define internal i64 @random_bytes(i64 noundef %0, i64 noundef %1) #0 {
bb.a:
  %i.a = load i64, ptr @rb_cRandom, align 8, !tbaa !35
  %i.b = icmp eq i64 %0, %i.a
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = tail call fastcc nonnull ptr @default_mt()
  br label %try_get_rnd.exit

bb.c:                                             ; preds = %bb.a
  %i.d = tail call i32 @rb_typeddata_is_kind_of(i64 noundef %0, ptr noundef nonnull @rb_random_data_type_1_0) #23
  %.not.i = icmp eq i32 %i.d, 0
  br i1 %.not.i, label %try_get_rnd.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = inttoptr i64 %0 to ptr                   ; 2 uses
  %i.f = getelementptr i8, ptr %i.e, i64 24
  %i.g = load i64, ptr %i.f, align 8, !tbaa !36
  %i.h = and i64 %i.g, -2                         ; 2 uses
  %i.i = icmp eq i64 %i.h, ptrtoint (ptr @random_mt_type to i64)
  %i.j = getelementptr i8, ptr %i.e, i64 32
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !39   ; 4 uses
  br i1 %i.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.l = tail call fastcc ptr @rand_start(ptr noundef %i.k, i64 noundef %0) ; 0 uses
  br label %try_get_rnd.exit

bb.f:                                             ; preds = %bb.d
  %.not12.i = icmp eq ptr %i.k, null
  br i1 %.not12.i, label %bb.g, label %try_get_rnd.exit

bb.g:                                             ; preds = %bb.f
  %i.m = inttoptr i64 %i.h to ptr
  %i.n = load i64, ptr @rb_eArgError, align 8, !tbaa !35
  %i.o = load ptr, ptr %i.m, align 8, !tbaa !41
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.n, ptr noundef nonnull @.str.25, ptr noundef %i.o) #25
  unreachable

try_get_rnd.exit:                                 ; preds = %bb.b, %bb.c, %bb.e, %bb.f
  %.0.i = phi ptr [ %i.c, %bb.b ], [ %i.k, %bb.e ], [ null, %bb.c ], [ %i.k, %bb.f ]
  %i.p = inttoptr i64 %0 to ptr
  %i.q = getelementptr i8, ptr %i.p, i64 24
  %i.r = load i64, ptr %i.q, align 8, !tbaa !36
  %i.s = and i64 %i.r, -2
  %i.t = inttoptr i64 %i.s to ptr
  %i.u = getelementptr i8, ptr %i.t, i64 56
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !46
  %i.w = tail call i64 @rb_to_int(i64 noundef %1) #23 ; 3 uses
  %i.x = trunc i64 %i.w to i1
  br i1 %i.x, label %bb.h, label %bb.i

bb.h:                                             ; preds = %try_get_rnd.exit
  %i.y = ashr i64 %i.w, 1
  br label %rb_num2long_inline.exit

bb.i:                                             ; preds = %try_get_rnd.exit
  %i.z = tail call i64 @rb_num2long(i64 noundef %i.w) #23
  br label %rb_num2long_inline.exit

rb_num2long_inline.exit:                          ; preds = %bb.h, %bb.i
  %.0.i3 = phi i64 [ %i.y, %bb.h ], [ %i.z, %bb.i ] ; 2 uses
  %i.aa = tail call i64 @rb_str_new(ptr noundef null, i64 noundef %.0.i3) #23, !callees !63, !inline_history !64 ; 2 uses
  %i.ab = inttoptr i64 %i.aa to ptr               ; 2 uses
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !53
  %i.ad = and i64 %i.ac, 8192
  %.not.i.i = icmp eq i64 %i.ad, 0
  %i.ae = getelementptr i8, ptr %i.ab, i64 24     ; 2 uses
  br i1 %.not.i.i, label %rand_bytes.exit, label %bb.j

bb.j:                                             ; preds = %rb_num2long_inline.exit
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !57
  br label %rand_bytes.exit

rand_bytes.exit:                                  ; preds = %rb_num2long_inline.exit, %bb.j
  %i.ag = phi ptr [ %i.af, %bb.j ], [ %i.ae, %rb_num2long_inline.exit ]
  %i.ah = getelementptr i8, ptr %i.v, i64 40
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !65
  tail call void %i.ai(ptr noundef %.0.i, ptr noundef %i.ag, i64 noundef %.0.i3) #23, !inline_history !64
  ret i64 %i.aa
}

; Function Attrs: nounwind sspstrong uwtable
define internal i64 @random_get_seed(i64 noundef %0) #0 {
bb.a:
  %i.a = icmp eq i64 %0, 0
  %i.b = and i64 %0, 7
  %i.c = icmp ne i64 %i.b, 0
  %i.d = or i1 %i.a, %i.c
  %.pre5.i = inttoptr i64 %0 to ptr               ; 4 uses
  br i1 %i.d, label %.critedge.i.i, label %rbimpl_RB_TYPE_P_fastpath.exit.i.i, !prof !52

rbimpl_RB_TYPE_P_fastpath.exit.i.i:               ; preds = %bb.a
  %i.e = load i64, ptr %.pre5.i, align 8, !tbaa !53
  %i.f = and i64 %i.e, 95
  %or.cond.not.i.i = icmp eq i64 %i.f, 76
  br i1 %or.cond.not.i.i, label %bb.b, label %.critedge.i.i, !prof !88

bb.b:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i.i
  %i.g = getelementptr i8, ptr %.pre5.i, i64 24
  %i.h = load i64, ptr %i.g, align 8, !tbaa !36   ; 4 uses
  %i.i = and i64 %i.h, -2                         ; 2 uses
  %i.j = inttoptr i64 %i.i to ptr
  %i.k = trunc i64 %i.h to i1
  %i.l = getelementptr i8, ptr %.pre5.i, i64 32   ; 2 uses
  br i1 %i.k, label %RTYPEDDATA_GET_DATA.exit.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !83
  br label %RTYPEDDATA_GET_DATA.exit.i.i

RTYPEDDATA_GET_DATA.exit.i.i:                     ; preds = %bb.c, %bb.b
  %i.n = phi ptr [ %i.m, %bb.c ], [ %i.l, %bb.b ] ; 2 uses
  %i.o = icmp eq i64 %i.i, ptrtoint (ptr @rb_random_data_type_1_0 to i64)
  br i1 %i.o, label %rbimpl_check_typeddata.exit.i, label %.preheader.i.i, !prof !89

.preheader.i.i:                                   ; preds = %RTYPEDDATA_GET_DATA.exit.i.i, %bb.d
  %.016.i.i = phi ptr [ %i.q, %bb.d ], [ %i.j, %RTYPEDDATA_GET_DATA.exit.i.i ] ; 2 uses
  %.not.i.i = icmp eq ptr %.016.i.i, null
  br i1 %.not.i.i, label %.critedge.i.i, label %bb.d

bb.d:                                             ; preds = %.preheader.i.i
  %i.p = getelementptr i8, ptr %.016.i.i, i64 48
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !90   ; 2 uses
  %i.r = icmp eq ptr %i.q, @rb_random_data_type_1_0
  br i1 %i.r, label %rbimpl_check_typeddata.exit.i, label %.preheader.i.i, !llvm.loop !91

.critedge.i.i:                                    ; preds = %.preheader.i.i, %rbimpl_RB_TYPE_P_fastpath.exit.i.i, %bb.a
  %i.s = tail call ptr @rb_check_typeddata(i64 noundef %0, ptr noundef nonnull @rb_random_data_type_1_0) #23
  %.phi.trans.insert = getelementptr i8, ptr %.pre5.i, i64 24
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !36
  br label %rbimpl_check_typeddata.exit.i

rbimpl_check_typeddata.exit.i:                    ; preds = %bb.d, %.critedge.i.i, %RTYPEDDATA_GET_DATA.exit.i.i
  %i.t = phi i64 [ %.pre, %.critedge.i.i ], [ %i.h, %RTYPEDDATA_GET_DATA.exit.i.i ], [ %i.h, %bb.d ]
  %.1.i.i = phi ptr [ %i.s, %.critedge.i.i ], [ %i.n, %RTYPEDDATA_GET_DATA.exit.i.i ], [ %i.n, %bb.d ] ; 2 uses
  %i.u = and i64 %i.t, -2
  %i.v = icmp eq i64 %i.u, ptrtoint (ptr @random_mt_type to i64)
  br i1 %i.v, label %bb.e, label %get_rnd.exit

bb.e:                                             ; preds = %rbimpl_check_typeddata.exit.i
  %i.w = tail call fastcc ptr @rand_start(ptr noundef %.1.i.i, i64 noundef %0) ; 0 uses
  br label %get_rnd.exit

get_rnd.exit:                                     ; preds = %rbimpl_check_typeddata.exit.i, %bb.e
  %i.x = load i64, ptr %.1.i.i, align 8, !tbaa !28
  ret i64 %i.x
}

; Function Attrs: nounwind sspstrong uwtable
define internal noundef i64 @rand_mt_copy(i64 noundef returned %0, i64 noundef %1) #0 {
bb.a:
  %.not = icmp eq i64 %0, %1
  br i1 %.not, label %bb.j, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = tail call i64 @rb_obj_init_copy(i64 noundef %0, i64 noundef %1) #23 ; 0 uses
  %i.b = icmp eq i64 %0, 0
  %i.c = and i64 %0, 7
  %i.d = icmp ne i64 %i.c, 0
  %i.e = or i1 %i.b, %i.d
  br i1 %i.e, label %.critedge.i.i, label %rbimpl_RB_TYPE_P_fastpath.exit.i.i, !prof !52

rbimpl_RB_TYPE_P_fastpath.exit.i.i:               ; preds = %bb.b
  %i.f = inttoptr i64 %0 to ptr                   ; 3 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !53
  %i.h = and i64 %i.g, 95
  %or.cond.not.i.i = icmp eq i64 %i.h, 76
  br i1 %or.cond.not.i.i, label %bb.c, label %.critedge.i.i, !prof !88

bb.c:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i.i
  %i.i = getelementptr i8, ptr %i.f, i64 24
  %i.j = load i64, ptr %i.i, align 8, !tbaa !36   ; 2 uses
  %i.k = and i64 %i.j, -2                         ; 2 uses
  %i.l = inttoptr i64 %i.k to ptr
  %i.m = trunc i64 %i.j to i1
  %i.n = getelementptr i8, ptr %i.f, i64 32       ; 2 uses
  br i1 %i.m, label %RTYPEDDATA_GET_DATA.exit.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !83
  br label %RTYPEDDATA_GET_DATA.exit.i.i

RTYPEDDATA_GET_DATA.exit.i.i:                     ; preds = %bb.d, %bb.c
  %i.p = phi ptr [ %i.o, %bb.d ], [ %i.n, %bb.c ] ; 2 uses
  %i.q = icmp eq i64 %i.k, ptrtoint (ptr @random_mt_type to i64)
  br i1 %i.q, label %get_rnd_mt.exit, label %.preheader.i.i, !prof !89

.preheader.i.i:                                   ; preds = %RTYPEDDATA_GET_DATA.exit.i.i, %bb.e
  %.016.i.i = phi ptr [ %i.s, %bb.e ], [ %i.l, %RTYPEDDATA_GET_DATA.exit.i.i ] ; 2 uses
  %.not.i.i = icmp eq ptr %.016.i.i, null
  br i1 %.not.i.i, label %.critedge.i.i, label %bb.e

bb.e:                                             ; preds = %.preheader.i.i
  %i.r = getelementptr i8, ptr %.016.i.i, i64 48
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !90   ; 2 uses
  %i.t = icmp eq ptr %i.s, @random_mt_type
  br i1 %i.t, label %get_rnd_mt.exit, label %.preheader.i.i, !llvm.loop !91

.critedge.i.i:                                    ; preds = %.preheader.i.i, %rbimpl_RB_TYPE_P_fastpath.exit.i.i, %bb.b
  %i.u = tail call ptr @rb_check_typeddata(i64 noundef %0, ptr noundef nonnull @random_mt_type) #23
  br label %get_rnd_mt.exit

get_rnd_mt.exit:                                  ; preds = %bb.e, %RTYPEDDATA_GET_DATA.exit.i.i, %.critedge.i.i
  %.1.i.i = phi ptr [ %i.u, %.critedge.i.i ], [ %i.p, %RTYPEDDATA_GET_DATA.exit.i.i ], [ %i.p, %bb.e ] ; 4 uses
  %i.v = icmp eq i64 %1, 0
  %i.w = and i64 %1, 7
  %i.x = icmp ne i64 %i.w, 0
  %i.y = or i1 %i.v, %i.x
  br i1 %i.y, label %.critedge.i.i19, label %rbimpl_RB_TYPE_P_fastpath.exit.i.i17, !prof !52

rbimpl_RB_TYPE_P_fastpath.exit.i.i17:             ; preds = %get_rnd_mt.exit
  %i.z = inttoptr i64 %1 to ptr                   ; 3 uses
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !53
  %i.ab = and i64 %i.aa, 95
  %or.cond.not.i.i18 = icmp eq i64 %i.ab, 76
  br i1 %or.cond.not.i.i18, label %bb.f, label %.critedge.i.i19, !prof !88

bb.f:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i.i17
  %i.ac = getelementptr i8, ptr %i.z, i64 24
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !36 ; 2 uses
  %i.ae = and i64 %i.ad, -2                       ; 2 uses
  %i.af = inttoptr i64 %i.ae to ptr
  %i.ag = trunc i64 %i.ad to i1
  %i.ah = getelementptr i8, ptr %i.z, i64 32      ; 2 uses
  br i1 %i.ag, label %RTYPEDDATA_GET_DATA.exit.i.i21, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !83
  br label %RTYPEDDATA_GET_DATA.exit.i.i21

RTYPEDDATA_GET_DATA.exit.i.i21:                   ; preds = %bb.g, %bb.f
  %i.aj = phi ptr [ %i.ai, %bb.g ], [ %i.ah, %bb.f ] ; 2 uses
  %i.ak = icmp eq i64 %i.ae, ptrtoint (ptr @random_mt_type to i64)
  br i1 %i.ak, label %get_rnd_mt.exit25, label %.preheader.i.i22, !prof !89

.preheader.i.i22:                                 ; preds = %RTYPEDDATA_GET_DATA.exit.i.i21, %bb.h
  %.016.i.i23 = phi ptr [ %i.am, %bb.h ], [ %i.af, %RTYPEDDATA_GET_DATA.exit.i.i21 ] ; 2 uses
  %.not.i.i24 = icmp eq ptr %.016.i.i23, null
  br i1 %.not.i.i24, label %.critedge.i.i19, label %bb.h

bb.h:                                             ; preds = %.preheader.i.i22
  %i.al = getelementptr i8, ptr %.016.i.i23, i64 48
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !90 ; 2 uses
  %i.an = icmp eq ptr %i.am, @random_mt_type
  br i1 %i.an, label %get_rnd_mt.exit25, label %.preheader.i.i22, !llvm.loop !91

.critedge.i.i19:                                  ; preds = %.preheader.i.i22, %rbimpl_RB_TYPE_P_fastpath.exit.i.i17, %get_rnd_mt.exit
  %i.ao = tail call ptr @rb_check_typeddata(i64 noundef %1, ptr noundef nonnull @random_mt_type) #23
  br label %get_rnd_mt.exit25

get_rnd_mt.exit25:                                ; preds = %bb.h, %RTYPEDDATA_GET_DATA.exit.i.i21, %.critedge.i.i19
  %.1.i.i20 = phi ptr [ %i.ao, %.critedge.i.i19 ], [ %i.aj, %RTYPEDDATA_GET_DATA.exit.i.i21 ], [ %i.aj, %bb.h ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(2520) %.1.i.i, ptr noundef nonnull align 8 dereferenceable(2520) %.1.i.i20, i64 2520, i1 false), !tbaa.struct !92
  %i.ap = load i64, ptr %.1.i.i, align 8, !tbaa !20 ; 3 uses
  %i.aq = icmp eq i64 %i.ap, 0
  %i.ar = and i64 %i.ap, 7
  %i.as = icmp ne i64 %i.ar, 0
  %i.at = or i1 %i.aq, %i.as
  br i1 %i.at, label %rb_obj_written.exit, label %bb.i

bb.i:                                             ; preds = %get_rnd_mt.exit25
  tail call void @rb_gc_writebarrier(i64 noundef %0, i64 noundef %i.ap) #23
  br label %rb_obj_written.exit

rb_obj_written.exit:                              ; preds = %get_rnd_mt.exit25, %bb.i
  %i.au = getelementptr i8, ptr %.1.i.i, i64 2504 ; 2 uses
  %i.av = getelementptr i8, ptr %.1.i.i, i64 2512
  %i.aw = load i32, ptr %i.av, align 8, !tbaa !21
  %i.ax = sext i32 %i.aw to i64
  %i.ay = sub nsw i64 0, %i.ax
  %i.az = getelementptr [4 x i8], ptr %i.au, i64 %i.ay
  %i.ba = getelementptr i8, ptr %i.az, i64 4
  store ptr %i.ba, ptr %i.au, align 8, !tbaa !22
  br label %bb.j

bb.j:                                             ; preds = %bb.a, %rb_obj_written.exit
  ret i64 %0
}

declare extern_weak void @rb_define_private_method(i64 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind sspstrong uwtable
define internal i64 @rand_mt_dump(i64 noundef %0) #0 {
bb.a:
  %i.a = tail call ptr @rb_check_typeddata(i64 noundef %0, ptr noundef nonnull @random_mt_type) #23 ; 3 uses
  %i.b = tail call i64 @rb_ary_new_capa(i64 noundef 3) #23 ; 4 uses
  %i.c = getelementptr i8, ptr %i.a, i64 8
  %i.d = tail call i64 @rb_integer_unpack(ptr noundef %i.c, i64 noundef 624, i64 noundef 4, i64 noundef 0, i32 noundef 66) #23
  %i.e = tail call i64 @rb_ary_push(i64 noundef %i.b, i64 noundef %i.d) #23 ; 0 uses
  %i.f = getelementptr i8, ptr %i.a, i64 2512
  %i.g = load i32, ptr %i.f, align 8, !tbaa !93
  %i.h = sext i32 %i.g to i64
  %i.i = shl nsw i64 %i.h, 1
  %i.j = or disjoint i64 %i.i, 1
  %i.k = tail call i64 @rb_ary_push(i64 noundef %i.b, i64 noundef %i.j) #23 ; 0 uses
  %i.l = load i64, ptr %i.a, align 8, !tbaa !20
  %i.m = tail call i64 @rb_ary_push(i64 noundef %i.b, i64 noundef %i.l) #23 ; 0 uses
  ret i64 %i.b
}

; Function Attrs: nounwind sspstrong uwtable
define internal noundef i64 @rand_mt_load(i64 noundef returned %0, i64 noundef %1) #0 {
bb.a:
  %i.a = tail call ptr @rb_check_typeddata(i64 noundef %0, ptr noundef nonnull @random_mt_type) #23 ; 4 uses
  %i.b = getelementptr i8, ptr %i.a, i64 8
  tail call void @rb_check_copyable(i64 noundef %0, i64 noundef %1) #23
  %i.c = icmp eq i64 %1, 0
  %i.d = and i64 %1, 7
  %i.e = icmp ne i64 %i.d, 0
  %i.f = or i1 %i.c, %i.e
  br i1 %i.f, label %rbimpl_RB_TYPE_P_fastpath.exit.thread.i, label %bb.b, !prof !52

bb.b:                                             ; preds = %bb.a
  %i.g = inttoptr i64 %1 to ptr                   ; 8 uses
  %i.h = load i64, ptr %i.g, align 8, !tbaa !53   ; 3 uses
  %i.i = and i64 %i.h, 31
  %i.j = icmp eq i64 %i.i, 7
  br i1 %i.j, label %Check_Type.exit, label %rbimpl_RB_TYPE_P_fastpath.exit.thread.i, !prof !54

rbimpl_RB_TYPE_P_fastpath.exit.thread.i:          ; preds = %bb.b, %bb.a
  tail call void @rb_unexpected_type(i64 noundef %1, i32 noundef 7) #26
  unreachable

Check_Type.exit:                                  ; preds = %bb.b
  %i.k = and i64 %i.h, 8192
  %.not.i = icmp eq i64 %i.k, 0                   ; 4 uses
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %Check_Type.exit
  %i.l = lshr i64 %i.h, 15
  %i.m = and i64 %i.l, 127
  br label %rb_array_len.exit

bb.d:                                             ; preds = %Check_Type.exit
  %i.n = getelementptr i8, ptr %i.g, i64 16
  %i.o = load i64, ptr %i.n, align 8, !tbaa !57
  br label %rb_array_len.exit

rb_array_len.exit:                                ; preds = %bb.c, %bb.d
  %.0.i = phi i64 [ %i.m, %bb.c ], [ %i.o, %bb.d ] ; 2 uses
  switch i64 %.0.i, label %bb.p [
    i64 3, label %bb.e
    i64 2, label %bb.h
    i64 1, label %bb.k
  ]

bb.e:                                             ; preds = %rb_array_len.exit
  br i1 %.not.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.p = getelementptr i8, ptr %i.g, i64 16
  br label %RARRAY_AREF.exit

bb.g:                                             ; preds = %bb.e
  %i.q = getelementptr i8, ptr %i.g, i64 32
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !57
  br label %RARRAY_AREF.exit

RARRAY_AREF.exit:                                 ; preds = %bb.f, %bb.g
  %.0.i.i = phi ptr [ %i.p, %bb.f ], [ %i.r, %bb.g ]
  %i.s = getelementptr i8, ptr %.0.i.i, i64 16
  %i.t = load i64, ptr %i.s, align 8, !tbaa !35
  br label %bb.h

bb.h:                                             ; preds = %RARRAY_AREF.exit, %rb_array_len.exit
  %.023 = phi i64 [ %i.t, %RARRAY_AREF.exit ], [ 1, %rb_array_len.exit ]
  br i1 %.not.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.u = getelementptr i8, ptr %i.g, i64 16
  br label %RARRAY_AREF.exit27

bb.j:                                             ; preds = %bb.h
  %i.v = getelementptr i8, ptr %i.g, i64 32
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !57
  br label %RARRAY_AREF.exit27

RARRAY_AREF.exit27:                               ; preds = %bb.i, %bb.j
  %.0.i.i26 = phi ptr [ %i.u, %bb.i ], [ %i.w, %bb.j ]
  %i.x = getelementptr i8, ptr %.0.i.i26, i64 8
  %i.y = load i64, ptr %i.x, align 8, !tbaa !35
  br label %bb.k

bb.k:                                             ; preds = %RARRAY_AREF.exit27, %rb_array_len.exit
  %.1 = phi i64 [ %.023, %RARRAY_AREF.exit27 ], [ %.0.i, %rb_array_len.exit ]
  %.0 = phi i64 [ %i.y, %RARRAY_AREF.exit27 ], [ 3, %rb_array_len.exit ] ; 3 uses
  br i1 %.not.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.z = getelementptr i8, ptr %i.g, i64 16
  br label %RARRAY_AREF.exit30

bb.m:                                             ; preds = %bb.k
  %i.aa = getelementptr i8, ptr %i.g, i64 32
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !57
  br label %RARRAY_AREF.exit30

RARRAY_AREF.exit30:                               ; preds = %bb.l, %bb.m
  %.0.i.i29 = phi ptr [ %i.z, %bb.l ], [ %i.ab, %bb.m ]
  %i.ac = load i64, ptr %.0.i.i29, align 8, !tbaa !35
  %i.ad = tail call i32 @rb_integer_pack(i64 noundef %i.ac, ptr noundef %i.b, i64 noundef 624, i64 noundef 4, i64 noundef 0, i32 noundef 66) #23 ; 0 uses
  %i.ae = trunc i64 %.0 to i1
  br i1 %i.ae, label %bb.n, label %bb.o

bb.n:                                             ; preds = %RARRAY_AREF.exit30
  %i.af = ashr i64 %.0, 1
  br label %rb_num2ulong_inline.exit

bb.o:                                             ; preds = %RARRAY_AREF.exit30
  %i.ag = tail call i64 @rb_num2ulong(i64 noundef %.0) #23
  br label %rb_num2ulong_inline.exit

rb_num2ulong_inline.exit:                         ; preds = %bb.n, %bb.o
  %.0.i31 = phi i64 [ %i.af, %bb.n ], [ %i.ag, %bb.o ] ; 3 uses
  %i.ah = add i64 %.0.i31, -625
  %or.cond = icmp ult i64 %i.ah, -624
  br i1 %or.cond, label %bb.q, label %bb.r

bb.p:                                             ; preds = %rb_array_len.exit
  %i.ai = load i64, ptr @rb_eArgError, align 8, !tbaa !35
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.ai, ptr noundef nonnull @.str.33) #25
  unreachable

bb.q:                                             ; preds = %rb_num2ulong_inline.exit
  %i.aj = load i64, ptr @rb_eArgError, align 8, !tbaa !35
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.aj, ptr noundef nonnull @.str.34) #25
  unreachable

bb.r:                                             ; preds = %rb_num2ulong_inline.exit
  %i.ak = trunc nuw nsw i64 %.0.i31 to i32
  %i.al = getelementptr i8, ptr %i.a, i64 2512
  store i32 %i.ak, ptr %i.al, align 8, !tbaa !21
  %i.am = getelementptr i8, ptr %i.a, i64 2504    ; 2 uses
  %i.an = sub nsw i64 0, %.0.i31
  %i.ao = getelementptr [4 x i8], ptr %i.am, i64 %i.an
  %i.ap = getelementptr i8, ptr %i.ao, i64 4
  store ptr %i.ap, ptr %i.am, align 8, !tbaa !22
  %i.aq = tail call i64 @rb_to_int(i64 noundef %.1) #23 ; 4 uses
  store i64 %i.aq, ptr %i.a, align 8, !tbaa !35
  %i.ar = icmp eq i64 %i.aq, 0
  %i.as = and i64 %i.aq, 7
  %i.at = icmp ne i64 %i.as, 0
  %i.au = or i1 %i.ar, %i.at
  br i1 %i.au, label %rb_obj_write.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  tail call void @rb_gc_writebarrier(i64 noundef %0, i64 noundef %i.aq) #23
  br label %rb_obj_write.exit

rb_obj_write.exit:                                ; preds = %bb.r, %bb.s
  ret i64 %0
}

; Function Attrs: nounwind sspstrong uwtable
define internal i64 @rand_mt_state(i64 noundef %0) #0 {
bb.a:
  %i.a = icmp eq i64 %0, 0
  %i.b = and i64 %0, 7
  %i.c = icmp ne i64 %i.b, 0
  %i.d = or i1 %i.a, %i.c
  br i1 %i.d, label %.critedge.i.i, label %rbimpl_RB_TYPE_P_fastpath.exit.i.i, !prof !52

rbimpl_RB_TYPE_P_fastpath.exit.i.i:               ; preds = %bb.a
  %i.e = inttoptr i64 %0 to ptr                   ; 3 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !53
  %i.g = and i64 %i.f, 95
  %or.cond.not.i.i = icmp eq i64 %i.g, 76
  br i1 %or.cond.not.i.i, label %bb.b, label %.critedge.i.i, !prof !88

bb.b:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i.i
  %i.h = getelementptr i8, ptr %i.e, i64 24
  %i.i = load i64, ptr %i.h, align 8, !tbaa !36   ; 2 uses
  %i.j = and i64 %i.i, -2                         ; 2 uses
  %i.k = inttoptr i64 %i.j to ptr
  %i.l = trunc i64 %i.i to i1
  %i.m = getelementptr i8, ptr %i.e, i64 32       ; 2 uses
  br i1 %i.l, label %RTYPEDDATA_GET_DATA.exit.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !83
  br label %RTYPEDDATA_GET_DATA.exit.i.i

RTYPEDDATA_GET_DATA.exit.i.i:                     ; preds = %bb.c, %bb.b
  %i.o = phi ptr [ %i.n, %bb.c ], [ %i.m, %bb.b ] ; 2 uses
  %i.p = icmp eq i64 %i.j, ptrtoint (ptr @random_mt_type to i64)
  br i1 %i.p, label %get_rnd_mt.exit, label %.preheader.i.i, !prof !89

.preheader.i.i:                                   ; preds = %RTYPEDDATA_GET_DATA.exit.i.i, %bb.d
  %.016.i.i = phi ptr [ %i.r, %bb.d ], [ %i.k, %RTYPEDDATA_GET_DATA.exit.i.i ] ; 2 uses
  %.not.i.i = icmp eq ptr %.016.i.i, null
  br i1 %.not.i.i, label %.critedge.i.i, label %bb.d

bb.d:                                             ; preds = %.preheader.i.i
  %i.q = getelementptr i8, ptr %.016.i.i, i64 48
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !90   ; 2 uses
  %i.s = icmp eq ptr %i.r, @random_mt_type
  br i1 %i.s, label %get_rnd_mt.exit, label %.preheader.i.i, !llvm.loop !91

.critedge.i.i:                                    ; preds = %.preheader.i.i, %rbimpl_RB_TYPE_P_fastpath.exit.i.i, %bb.a
  %i.t = tail call ptr @rb_check_typeddata(i64 noundef %0, ptr noundef nonnull @random_mt_type) #23
  br label %get_rnd_mt.exit

get_rnd_mt.exit:                                  ; preds = %bb.d, %RTYPEDDATA_GET_DATA.exit.i.i, %.critedge.i.i
  %.1.i.i = phi ptr [ %i.t, %.critedge.i.i ], [ %i.o, %RTYPEDDATA_GET_DATA.exit.i.i ], [ %i.o, %bb.d ]
  %i.u = getelementptr i8, ptr %.1.i.i, i64 8
  %i.v = tail call i64 @rb_integer_unpack(ptr noundef %i.u, i64 noundef 624, i64 noundef 4, i64 noundef 0, i32 noundef 66) #23
  ret i64 %i.v
}

; Function Attrs: nounwind sspstrong uwtable
define internal range(i64 1, 0) i64 @rand_mt_left(i64 noundef %0) #0 {
bb.a:
  %i.a = icmp eq i64 %0, 0
  %i.b = and i64 %0, 7
  %i.c = icmp ne i64 %i.b, 0
  %i.d = or i1 %i.a, %i.c
  br i1 %i.d, label %.critedge.i.i, label %rbimpl_RB_TYPE_P_fastpath.exit.i.i, !prof !52

rbimpl_RB_TYPE_P_fastpath.exit.i.i:               ; preds = %bb.a
  %i.e = inttoptr i64 %0 to ptr                   ; 3 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !53
  %i.g = and i64 %i.f, 95
  %or.cond.not.i.i = icmp eq i64 %i.g, 76
  br i1 %or.cond.not.i.i, label %bb.b, label %.critedge.i.i, !prof !88

bb.b:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i.i
  %i.h = getelementptr i8, ptr %i.e, i64 24
  %i.i = load i64, ptr %i.h, align 8, !tbaa !36   ; 2 uses
  %i.j = and i64 %i.i, -2                         ; 2 uses
  %i.k = inttoptr i64 %i.j to ptr
  %i.l = trunc i64 %i.i to i1
  %i.m = getelementptr i8, ptr %i.e, i64 32       ; 2 uses
  br i1 %i.l, label %RTYPEDDATA_GET_DATA.exit.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !83
  br label %RTYPEDDATA_GET_DATA.exit.i.i

RTYPEDDATA_GET_DATA.exit.i.i:                     ; preds = %bb.c, %bb.b
  %i.o = phi ptr [ %i.n, %bb.c ], [ %i.m, %bb.b ] ; 2 uses
  %i.p = icmp eq i64 %i.j, ptrtoint (ptr @random_mt_type to i64)
  br i1 %i.p, label %get_rnd_mt.exit, label %.preheader.i.i, !prof !89

.preheader.i.i:                                   ; preds = %RTYPEDDATA_GET_DATA.exit.i.i, %bb.d
  %.016.i.i = phi ptr [ %i.r, %bb.d ], [ %i.k, %RTYPEDDATA_GET_DATA.exit.i.i ] ; 2 uses
  %.not.i.i = icmp eq ptr %.016.i.i, null
  br i1 %.not.i.i, label %.critedge.i.i, label %bb.d

bb.d:                                             ; preds = %.preheader.i.i
  %i.q = getelementptr i8, ptr %.016.i.i, i64 48
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !90   ; 2 uses
  %i.s = icmp eq ptr %i.r, @random_mt_type
  br i1 %i.s, label %get_rnd_mt.exit, label %.preheader.i.i, !llvm.loop !91

.critedge.i.i:                                    ; preds = %.preheader.i.i, %rbimpl_RB_TYPE_P_fastpath.exit.i.i, %bb.a
  %i.t = tail call ptr @rb_check_typeddata(i64 noundef %0, ptr noundef nonnull @random_mt_type) #23
  br label %get_rnd_mt.exit

get_rnd_mt.exit:                                  ; preds = %bb.d, %RTYPEDDATA_GET_DATA.exit.i.i, %.critedge.i.i
  %.1.i.i = phi ptr [ %i.t, %.critedge.i.i ], [ %i.o, %RTYPEDDATA_GET_DATA.exit.i.i ], [ %i.o, %bb.d ]
  %i.u = getelementptr i8, ptr %.1.i.i, i64 2512
  %i.v = load i32, ptr %i.u, align 8, !tbaa !93
  %i.w = sext i32 %i.v to i64
  %i.x = shl nsw i64 %i.w, 1
  %i.y = or disjoint i64 %i.x, 1
  ret i64 %i.y
}

; Function Attrs: nounwind sspstrong uwtable
define internal i64 @rand_mt_equal(i64 noundef %0, i64 noundef %1) #0 {
bb.a:
  %i.a = tail call i64 @rb_obj_class(i64 noundef %0) #23
  %i.b = tail call i64 @rb_obj_class(i64 noundef %1) #23
  %.not = icmp eq i64 %i.a, %i.b
  br i1 %.not, label %bb.b, label %bb.l

bb.b:                                             ; preds = %bb.a
  %i.c = icmp eq i64 %0, 0
  %i.d = and i64 %0, 7
  %i.e = icmp ne i64 %i.d, 0
  %i.f = or i1 %i.c, %i.e
  br i1 %i.f, label %.critedge.i.i, label %rbimpl_RB_TYPE_P_fastpath.exit.i.i, !prof !52

rbimpl_RB_TYPE_P_fastpath.exit.i.i:               ; preds = %bb.b
  %i.g = inttoptr i64 %0 to ptr                   ; 3 uses
  %i.h = load i64, ptr %i.g, align 8, !tbaa !53
  %i.i = and i64 %i.h, 95
  %or.cond.not.i.i = icmp eq i64 %i.i, 76
  br i1 %or.cond.not.i.i, label %bb.c, label %.critedge.i.i, !prof !88

bb.c:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i.i
  %i.j = getelementptr i8, ptr %i.g, i64 24
  %i.k = load i64, ptr %i.j, align 8, !tbaa !36   ; 2 uses
  %i.l = and i64 %i.k, -2                         ; 2 uses
  %i.m = inttoptr i64 %i.l to ptr
  %i.n = trunc i64 %i.k to i1
  %i.o = getelementptr i8, ptr %i.g, i64 32       ; 2 uses
  br i1 %i.n, label %RTYPEDDATA_GET_DATA.exit.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !83
  br label %RTYPEDDATA_GET_DATA.exit.i.i

RTYPEDDATA_GET_DATA.exit.i.i:                     ; preds = %bb.d, %bb.c
  %i.q = phi ptr [ %i.p, %bb.d ], [ %i.o, %bb.c ] ; 2 uses
  %i.r = icmp eq i64 %i.l, ptrtoint (ptr @random_mt_type to i64)
  br i1 %i.r, label %get_rnd_mt.exit, label %.preheader.i.i, !prof !89

.preheader.i.i:                                   ; preds = %RTYPEDDATA_GET_DATA.exit.i.i, %bb.e
  %.016.i.i = phi ptr [ %i.t, %bb.e ], [ %i.m, %RTYPEDDATA_GET_DATA.exit.i.i ] ; 2 uses
  %.not.i.i = icmp eq ptr %.016.i.i, null
  br i1 %.not.i.i, label %.critedge.i.i, label %bb.e

bb.e:                                             ; preds = %.preheader.i.i
  %i.s = getelementptr i8, ptr %.016.i.i, i64 48
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !90   ; 2 uses
  %i.u = icmp eq ptr %i.t, @random_mt_type
  br i1 %i.u, label %get_rnd_mt.exit, label %.preheader.i.i, !llvm.loop !91

.critedge.i.i:                                    ; preds = %.preheader.i.i, %rbimpl_RB_TYPE_P_fastpath.exit.i.i, %bb.b
  %i.v = tail call ptr @rb_check_typeddata(i64 noundef %0, ptr noundef nonnull @random_mt_type) #23
  br label %get_rnd_mt.exit

get_rnd_mt.exit:                                  ; preds = %bb.e, %RTYPEDDATA_GET_DATA.exit.i.i, %.critedge.i.i
  %.1.i.i = phi ptr [ %i.v, %.critedge.i.i ], [ %i.q, %RTYPEDDATA_GET_DATA.exit.i.i ], [ %i.q, %bb.e ] ; 4 uses
  %i.w = icmp eq i64 %1, 0
  %i.x = and i64 %1, 7
  %i.y = icmp ne i64 %i.x, 0
  %i.z = or i1 %i.w, %i.y
  br i1 %i.z, label %.critedge.i.i19, label %rbimpl_RB_TYPE_P_fastpath.exit.i.i17, !prof !52

rbimpl_RB_TYPE_P_fastpath.exit.i.i17:             ; preds = %get_rnd_mt.exit
  %i.aa = inttoptr i64 %1 to ptr                  ; 3 uses
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !53
  %i.ac = and i64 %i.ab, 95
  %or.cond.not.i.i18 = icmp eq i64 %i.ac, 76
  br i1 %or.cond.not.i.i18, label %bb.f, label %.critedge.i.i19, !prof !88

bb.f:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i.i17
  %i.ad = getelementptr i8, ptr %i.aa, i64 24
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !36 ; 2 uses
  %i.af = and i64 %i.ae, -2                       ; 2 uses
  %i.ag = inttoptr i64 %i.af to ptr
  %i.ah = trunc i64 %i.ae to i1
  %i.ai = getelementptr i8, ptr %i.aa, i64 32     ; 2 uses
  br i1 %i.ah, label %RTYPEDDATA_GET_DATA.exit.i.i21, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !83
  br label %RTYPEDDATA_GET_DATA.exit.i.i21

RTYPEDDATA_GET_DATA.exit.i.i21:                   ; preds = %bb.g, %bb.f
  %i.ak = phi ptr [ %i.aj, %bb.g ], [ %i.ai, %bb.f ] ; 2 uses
  %i.al = icmp eq i64 %i.af, ptrtoint (ptr @random_mt_type to i64)
  br i1 %i.al, label %get_rnd_mt.exit25, label %.preheader.i.i22, !prof !89

.preheader.i.i22:                                 ; preds = %RTYPEDDATA_GET_DATA.exit.i.i21, %bb.h
  %.016.i.i23 = phi ptr [ %i.an, %bb.h ], [ %i.ag, %RTYPEDDATA_GET_DATA.exit.i.i21 ] ; 2 uses
  %.not.i.i24 = icmp eq ptr %.016.i.i23, null
  br i1 %.not.i.i24, label %.critedge.i.i19, label %bb.h

bb.h:                                             ; preds = %.preheader.i.i22
  %i.am = getelementptr i8, ptr %.016.i.i23, i64 48
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !90 ; 2 uses
  %i.ao = icmp eq ptr %i.an, @random_mt_type
  br i1 %i.ao, label %get_rnd_mt.exit25, label %.preheader.i.i22, !llvm.loop !91

.critedge.i.i19:                                  ; preds = %.preheader.i.i22, %rbimpl_RB_TYPE_P_fastpath.exit.i.i17, %get_rnd_mt.exit
  %i.ap = tail call ptr @rb_check_typeddata(i64 noundef %1, ptr noundef nonnull @random_mt_type) #23
  br label %get_rnd_mt.exit25

get_rnd_mt.exit25:                                ; preds = %bb.h, %RTYPEDDATA_GET_DATA.exit.i.i21, %.critedge.i.i19
  %.1.i.i20 = phi ptr [ %i.ap, %.critedge.i.i19 ], [ %i.ak, %RTYPEDDATA_GET_DATA.exit.i.i21 ], [ %i.ak, %bb.h ] ; 4 uses
  %i.aq = getelementptr i8, ptr %.1.i.i, i64 8    ; 2 uses
  %i.ar = getelementptr i8, ptr %.1.i.i20, i64 8  ; 2 uses
  %bcmp = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(2496) %i.aq, ptr noundef nonnull dereferenceable(2496) %i.ar, i64 2496)
  %.not14 = icmp eq i32 %bcmp, 0
  br i1 %.not14, label %bb.i, label %bb.l

bb.i:                                             ; preds = %get_rnd_mt.exit25
  %i.as = getelementptr i8, ptr %.1.i.i, i64 2504
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !14
  %i.au = ptrtoint ptr %i.at to i64
  %i.av = ptrtoint ptr %i.aq to i64
  %i.aw = sub i64 %i.au, %i.av
  %i.ax = getelementptr i8, ptr %.1.i.i20, i64 2504
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !14
  %i.az = ptrtoint ptr %i.ay to i64
  %i.ba = ptrtoint ptr %i.ar to i64
  %i.bb = sub i64 %i.az, %i.ba
  %.not15 = icmp eq i64 %i.aw, %i.bb
  br i1 %.not15, label %bb.j, label %bb.l

bb.j:                                             ; preds = %bb.i
  %i.bc = getelementptr i8, ptr %.1.i.i, i64 2512
  %i.bd = load i32, ptr %i.bc, align 8, !tbaa !93
  %i.be = getelementptr i8, ptr %.1.i.i20, i64 2512
  %i.bf = load i32, ptr %i.be, align 8, !tbaa !93
  %.not16 = icmp eq i32 %i.bd, %i.bf
  br i1 %.not16, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.bg = load i64, ptr %.1.i.i, align 8, !tbaa !20
  %i.bh = load i64, ptr %.1.i.i20, align 8, !tbaa !20
  %i.bi = tail call i64 @rb_equal(i64 noundef %i.bg, i64 noundef %i.bh) #23
  br label %bb.l

bb.l:                                             ; preds = %bb.j, %bb.i, %get_rnd_mt.exit25, %bb.a, %bb.k
  %.0 = phi i64 [ %i.bi, %bb.k ], [ 0, %bb.a ], [ 0, %get_rnd_mt.exit25 ], [ 0, %bb.i ], [ 0, %bb.j ]
  ret i64 %.0
}

declare extern_weak void @rb_define_singleton_method(i64 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind sspstrong uwtable
define internal range(i64 5, 4) i64 @random_s_rand(i32 noundef %0, ptr noundef readonly captures(none) %1, i64 %2) #0 {
bb.a:
  %i.a = tail call fastcc nonnull ptr @default_mt()
  %i.b = tail call fastcc i64 @rand_random(i32 noundef %0, ptr noundef %1, i64 noundef 4, ptr noundef nonnull %i.a) ; 2 uses
  switch i64 %i.b, label %check_random_number.exit [
    i64 0, label %bb.b
    i64 4, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  %i.c = load i64, ptr %1, align 8, !tbaa !35     ; 2 uses
  %i.d = trunc i64 %i.c to i1
  br i1 %i.d, label %check_random_number.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = tail call i64 @rb_num2long(i64 noundef %i.c) #23 ; 0 uses
  br label %check_random_number.exit

bb.d:                                             ; preds = %bb.a
  %i.f = load i64, ptr %1, align 8, !tbaa !35
  tail call fastcc void @invalid_argument(i64 noundef %i.f) #27
  unreachable

check_random_number.exit:                         ; preds = %bb.a, %bb.b, %bb.c
  ret i64 %i.b
}

; Function Attrs: nounwind sspstrong uwtable
define internal i64 @random_s_bytes(i64 %0, i64 noundef %1) #0 {
bb.a:
  %i.a = tail call fastcc nonnull ptr @default_mt() ; 2 uses
  %i.b = tail call i64 @rb_to_int(i64 noundef %1) #23 ; 3 uses
  %i.c = trunc i64 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = ashr i64 %i.b, 1
  br label %rb_num2long_inline.exit

bb.c:                                             ; preds = %bb.a
  %i.e = tail call i64 @rb_num2long(i64 noundef %i.b) #23
  br label %rb_num2long_inline.exit

rb_num2long_inline.exit:                          ; preds = %bb.b, %bb.c
  %.0.i = phi i64 [ %i.d, %bb.b ], [ %i.e, %bb.c ] ; 4 uses
  %i.f = tail call i64 @rb_str_new(ptr noundef null, i64 noundef %.0.i) #23, !callees !63, !inline_history !64 ; 2 uses
  %i.g = inttoptr i64 %i.f to ptr                 ; 2 uses
  %i.h = load i64, ptr %i.g, align 8, !tbaa !53
  %i.i = and i64 %i.h, 8192
  %.not.i.i = icmp eq i64 %i.i, 0
  %i.j = getelementptr i8, ptr %i.g, i64 24       ; 2 uses
  br i1 %.not.i.i, label %rand_bytes.exit, label %bb.d

bb.d:                                             ; preds = %rb_num2long_inline.exit
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !57
  br label %rand_bytes.exit

rand_bytes.exit:                                  ; preds = %rb_num2long_inline.exit, %bb.d
  %i.l = phi ptr [ %i.k, %bb.d ], [ %i.j, %rb_num2long_inline.exit ] ; 2 uses
  %i.m = icmp ugt i64 %.0.i, 3
  br i1 %i.m, label %.lr.ph.i.preheader.i, label %._crit_edge.i.i

.lr.ph.i.preheader.i:                             ; preds = %rand_bytes.exit
  %i.n = getelementptr i8, ptr %i.a, i64 8
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.i.preheader.i
  %.01623.i.i = phi ptr [ %i.p, %.lr.ph.i.i ], [ %i.l, %.lr.ph.i.preheader.i ] ; 2 uses
  %.01822.i.i = phi i64 [ %i.q, %.lr.ph.i.i ], [ %.0.i, %.lr.ph.i.preheader.i ]
  %i.o = tail call fastcc i32 @genrand_int32(ptr noundef %i.n)
  store i32 %i.o, ptr %.01623.i.i, align 1
  %i.p = getelementptr i8, ptr %.01623.i.i, i64 4 ; 2 uses
  %i.q = add i64 %.01822.i.i, -4                  ; 3 uses
  %i.r = icmp ugt i64 %i.q, 3
  br i1 %i.r, label %.lr.ph.i.i, label %._crit_edge.i.i, !llvm.loop !62

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i, %rand_bytes.exit
  %.018.lcssa.i.i = phi i64 [ %.0.i, %rand_bytes.exit ], [ %i.q, %.lr.ph.i.i ] ; 3 uses
  %.016.lcssa.i.i = phi ptr [ %i.l, %rand_bytes.exit ], [ %i.p, %.lr.ph.i.i ] ; 3 uses
  %.not.i.i1 = icmp eq i64 %.018.lcssa.i.i, 0
  br i1 %.not.i.i1, label %rand_mt_get_bytes.exit, label %bb.e

bb.e:                                             ; preds = %._crit_edge.i.i
  %i.s = getelementptr i8, ptr %i.a, i64 8
  %i.t = tail call fastcc i32 @genrand_int32(ptr noundef %i.s) ; 3 uses
  %i.u = trunc i32 %i.t to i8
  store i8 %i.u, ptr %.016.lcssa.i.i, align 1, !tbaa !57
  %.not20.i.i = icmp eq i64 %.018.lcssa.i.i, 1
  br i1 %.not20.i.i, label %rand_mt_get_bytes.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.v = lshr i32 %i.t, 8
  %i.w = getelementptr i8, ptr %.016.lcssa.i.i, i64 1
  %i.x = trunc i32 %i.v to i8
  store i8 %i.x, ptr %i.w, align 1, !tbaa !57
  %.not20.i.i.1 = icmp eq i64 %.018.lcssa.i.i, 2
  br i1 %.not20.i.i.1, label %rand_mt_get_bytes.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.y = lshr i32 %i.t, 16
  %i.z = getelementptr i8, ptr %.016.lcssa.i.i, i64 2
  %i.aa = trunc i32 %i.y to i8
  store i8 %i.aa, ptr %i.z, align 1, !tbaa !57
  br label %rand_mt_get_bytes.exit

rand_mt_get_bytes.exit:                           ; preds = %bb.e, %bb.f, %bb.g, %._crit_edge.i.i
  ret i64 %i.f
}

; Function Attrs: nounwind sspstrong uwtable
define internal i64 @random_s_seed(i64 %0) #0 {
bb.a:
  %i.a = tail call fastcc ptr @default_mt()
  %i.b = load i64, ptr %i.a, align 8, !tbaa !20
  ret i64 %i.b
}

; Function Attrs: nounwind sspstrong uwtable
define internal i64 @random_seed(i64 %0) #0 {
bb.a:
  %i.a = alloca [5 x i32], align 16               ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  %i.b = call i32 @ruby_fill_random_bytes(ptr noundef nonnull %i.a, i64 noundef 16, i32 noundef 0) ; 0 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  %i.d = load i32, ptr %i.c, align 4, !tbaa !7
  %i.e = icmp ult i32 %i.d, 2
  br i1 %i.e, label %bb.b, label %make_seed_value.exit

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i32 1, ptr %i.f, align 16, !tbaa !7
  br label %make_seed_value.exit

make_seed_value.exit:                             ; preds = %bb.a, %bb.b
  %.0.i = phi i64 [ 5, %bb.b ], [ 4, %bb.a ]
  %i.g = call i64 @rb_integer_unpack(ptr noundef nonnull %i.a, i64 noundef %.0.i, i64 noundef 4, i64 noundef 0, i32 noundef 66) #23
  call void @__explicit_bzero_chk(ptr noundef nonnull %i.a, i64 noundef 16, i64 noundef 20) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  ret i64 %i.g
}

; Function Attrs: nounwind sspstrong uwtable
define internal i64 @random_raw_seed(i64 %0, i64 noundef %1) #0 {
bb.a:
  %i.a = trunc i64 %1 to i1
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = ashr i64 %1, 1
  br label %rb_num2ulong_inline.exit

bb.c:                                             ; preds = %bb.a
  %i.c = tail call i64 @rb_num2ulong(i64 noundef %1) #23
  br label %rb_num2ulong_inline.exit

rb_num2ulong_inline.exit:                         ; preds = %bb.b, %bb.c
  %.0.i = phi i64 [ %i.b, %bb.b ], [ %i.c, %bb.c ] ; 3 uses
  %i.d = tail call i64 @rb_str_new(ptr noundef null, i64 noundef %.0.i) #23, !callees !63 ; 2 uses
  %i.e = icmp eq i64 %.0.i, 0
  br i1 %i.e, label %bb.g, label %bb.d

bb.d:                                             ; preds = %rb_num2ulong_inline.exit
  %i.f = inttoptr i64 %i.d to ptr                 ; 2 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !53
  %i.h = and i64 %i.g, 8192
  %.not.i = icmp eq i64 %i.h, 0
  %i.i = getelementptr i8, ptr %i.f, i64 24       ; 2 uses
  br i1 %.not.i, label %RSTRING_PTR.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !57
  br label %RSTRING_PTR.exit

RSTRING_PTR.exit:                                 ; preds = %bb.d, %bb.e
  %i.k = phi ptr [ %i.j, %bb.e ], [ %i.i, %bb.d ]
  %i.l = tail call i32 @ruby_fill_random_bytes(ptr noundef %i.k, i64 noundef %.0.i, i32 noundef 1)
  %.not = icmp eq i32 %i.l, 0
  br i1 %.not, label %bb.g, label %bb.f

bb.f:                                             ; preds = %RSTRING_PTR.exit
  %i.m = load i64, ptr @rb_eRuntimeError, align 8, !tbaa !35
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.m, ptr noundef nonnull @.str.35) #25
  unreachable

bb.g:                                             ; preds = %RSTRING_PTR.exit, %rb_num2ulong_inline.exit
  ret i64 %i.d
}

; Function Attrs: nounwind sspstrong uwtable
define internal i64 @random_s_state(i64 %0) #0 {
bb.a:
  %i.a = load ptr, ptr @default_rand_key, align 8, !tbaa !11
  %i.b = tail call ptr @rb_ractor_local_storage_ptr(ptr noundef %i.a) #23 ; 2 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.b, label %default_rand.exit

bb.b:                                             ; preds = %bb.a
  %i.d = tail call noalias nonnull dereferenceable(2520) ptr @ruby_xcalloc(i64 noundef 1, i64 noundef 2520) #24 ; 2 uses
  %i.e = load ptr, ptr @default_rand_key, align 8, !tbaa !11
  tail call void @rb_ractor_local_storage_ptr_set(ptr noundef %i.e, ptr noundef nonnull %i.d) #23
  br label %default_rand.exit

default_rand.exit:                                ; preds = %bb.a, %bb.b
  %.0.i = phi ptr [ %i.d, %bb.b ], [ %i.b, %bb.a ]
  %i.f = getelementptr i8, ptr %.0.i, i64 8
  %i.g = tail call i64 @rb_integer_unpack(ptr noundef %i.f, i64 noundef 624, i64 noundef 4, i64 noundef 0, i32 noundef 66) #23
  ret i64 %i.g
}

; Function Attrs: nounwind sspstrong uwtable
define internal range(i64 1, 0) i64 @random_s_left(i64 %0) #0 {
bb.a:
  %i.a = load ptr, ptr @default_rand_key, align 8, !tbaa !11
  %i.b = tail call ptr @rb_ractor_local_storage_ptr(ptr noundef %i.a) #23 ; 2 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.b, label %default_rand.exit

bb.b:                                             ; preds = %bb.a
  %i.d = tail call noalias nonnull dereferenceable(2520) ptr @ruby_xcalloc(i64 noundef 1, i64 noundef 2520) #24 ; 2 uses
  %i.e = load ptr, ptr @default_rand_key, align 8, !tbaa !11
  tail call void @rb_ractor_local_storage_ptr_set(ptr noundef %i.e, ptr noundef nonnull %i.d) #23
  br label %default_rand.exit

default_rand.exit:                                ; preds = %bb.a, %bb.b
  %.0.i = phi ptr [ %i.d, %bb.b ], [ %i.b, %bb.a ]
  %i.f = getelementptr i8, ptr %.0.i, i64 2512
  %i.g = load i32, ptr %i.f, align 8, !tbaa !93
  %i.h = sext i32 %i.g to i64
  %i.i = shl nsw i64 %i.h, 1
  %i.j = or disjoint i64 %i.i, 1
  ret i64 %i.j
}

declare i64 @rb_define_module_under(i64 noundef, ptr noundef) local_unnamed_addr #1

declare void @rb_include_module(i64 noundef, i64 noundef) local_unnamed_addr #1

declare void @rb_extend_object(i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nounwind sspstrong uwtable
define internal i64 @rand_random_number(i32 noundef %0, ptr noundef readonly captures(none) %1, i64 noundef %2) #0 {
bb.a:
  %i.a = load i64, ptr @rb_cRandom, align 8, !tbaa !35
  %i.b = icmp eq i64 %2, %i.a
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = tail call fastcc nonnull ptr @default_mt()
  br label %try_get_rnd.exit

bb.c:                                             ; preds = %bb.a
  %i.d = tail call i32 @rb_typeddata_is_kind_of(i64 noundef %2, ptr noundef nonnull @rb_random_data_type_1_0) #23
  %.not.i = icmp eq i32 %i.d, 0
  br i1 %.not.i, label %try_get_rnd.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = inttoptr i64 %2 to ptr                   ; 2 uses
  %i.f = getelementptr i8, ptr %i.e, i64 24
  %i.g = load i64, ptr %i.f, align 8, !tbaa !36
  %i.h = and i64 %i.g, -2                         ; 2 uses
  %i.i = icmp eq i64 %i.h, ptrtoint (ptr @random_mt_type to i64)
  %i.j = getelementptr i8, ptr %i.e, i64 32
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !39   ; 4 uses
  br i1 %i.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.l = tail call fastcc ptr @rand_start(ptr noundef %i.k, i64 noundef %2) ; 0 uses
  br label %try_get_rnd.exit

bb.f:                                             ; preds = %bb.d
  %.not12.i = icmp eq ptr %i.k, null
  br i1 %.not12.i, label %bb.g, label %try_get_rnd.exit

bb.g:                                             ; preds = %bb.f
  %i.m = inttoptr i64 %i.h to ptr
  %i.n = load i64, ptr @rb_eArgError, align 8, !tbaa !35
  %i.o = load ptr, ptr %i.m, align 8, !tbaa !41
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.n, ptr noundef nonnull @.str.25, ptr noundef %i.o) #25
  unreachable

try_get_rnd.exit:                                 ; preds = %bb.b, %bb.c, %bb.e, %bb.f
  %.0.i = phi ptr [ %i.c, %bb.b ], [ %i.k, %bb.e ], [ null, %bb.c ], [ %i.k, %bb.f ] ; 2 uses
  %i.p = tail call fastcc i64 @rand_random(i32 noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %.0.i) ; 2 uses
  switch i64 %i.p, label %rand_random.exit [
    i64 4, label %bb.h
    i64 0, label %bb.m
  ]

bb.h:                                             ; preds = %try_get_rnd.exit
  %i.q = tail call fastcc double @random_real(i64 noundef %2, ptr noundef %.0.i, i32 noundef 1) ; 2 uses
  %i.r = bitcast double %i.q to i64               ; 5 uses
  %cond.i.i = icmp eq i64 %i.r, 3458764513820540928
  br i1 %cond.i.i, label %bb.l, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.s = lshr i64 %i.r, 60
  %i.t = trunc nuw nsw i64 %i.s to i32
  %i.u = and i32 %i.t, 7
  %i.v = add nsw i32 %i.u, -5
  %i.w = icmp ult i32 %i.v, -2
  br i1 %i.w, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.x = tail call noundef i64 @llvm.fshl.i64(i64 range(i64 3458764513820540929, 3458764513820540928) %i.r, i64 range(i64 3458764513820540929, 3458764513820540928) %i.r, i64 3)
  %i.y = and i64 %i.x, -4
  %i.z = or disjoint i64 %i.y, 2
  br label %rand_random.exit

bb.k:                                             ; preds = %bb.i
  %i.aa = icmp eq i64 %i.r, 0
  br i1 %i.aa, label %rand_random.exit, label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.h
  %i.ab = tail call i64 @rb_float_new_in_heap(double noundef %i.q) #23
  br label %rand_random.exit

bb.m:                                             ; preds = %try_get_rnd.exit
  %i.ac = load i64, ptr %1, align 8, !tbaa !35
  tail call fastcc void @invalid_argument(i64 noundef %i.ac) #27
  unreachable

rand_random.exit:                                 ; preds = %try_get_rnd.exit, %bb.l, %bb.k, %bb.j
  %.0 = phi i64 [ %i.p, %try_get_rnd.exit ], [ %i.ab, %bb.l ], [ -9223372036854775806, %bb.k ], [ %i.z, %bb.j ]
  ret i64 %.0
}

declare ptr @rb_ractor_local_storage_ptr_newkey(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind sspstrong uwtable
define hidden void @Init_Random() local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i64 @rb_intern(ptr noundef nonnull @.str.7) #23
  store i64 %i.a, ptr @id_rand, align 8, !tbaa !35
  %i.b = tail call i64 @rb_intern(ptr noundef nonnull @.str.10) #23
  store i64 %i.b, ptr @id_bytes, align 8, !tbaa !35
  tail call void @InitVM_Random()
  ret void
}

declare i64 @rb_intern(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc noundef i64 @rand_init(ptr noundef readonly captures(none) %0, ptr noundef %1, i64 noundef returned %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  store i64 0, ptr %i.a, align 8, !tbaa !35
  %i.b = tail call i64 @rb_absint_numwords(i64 noundef %2, i64 noundef 32, ptr noundef null) #23 ; 4 uses
  %spec.store.select = tail call i64 @llvm.umax.i64(i64 %i.b, i64 1) ; 8 uses
  %i.c = icmp ult i64 %i.b, 256
  br i1 %i.c, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = icmp ugt i64 %i.b, 4611686018427387903
  br i1 %i.d, label %bb.c, label %.thread, !prof !94

bb.c:                                             ; preds = %bb.b
  tail call void @ruby_malloc_size_overflow(i64 noundef range(i64 256, 0) %spec.store.select, i64 noundef 4) #25
  unreachable

.thread:                                          ; preds = %bb.b
  %i.e = shl nuw i64 %spec.store.select, 2        ; 2 uses
  %i.f = add i64 %i.e, 4
  %i.g = lshr i64 %i.f, 3
  %i.h = call noalias nonnull ptr @rb_alloc_tmp_buffer_with_count(ptr noundef nonnull %i.a, i64 noundef %i.e, i64 noundef %i.g) #28 ; 2 uses
  %i.i = call i32 @rb_integer_pack(i64 noundef %2, ptr noundef nonnull %i.h, i64 noundef %spec.store.select, i64 noundef 4, i64 noundef 0, i32 noundef 66) #23
  br label %bb.f

bb.d:                                             ; preds = %bb.a
  store i64 0, ptr %i.a, align 8, !tbaa !35
  %i.j = shl nuw nsw i64 %spec.store.select, 2
  %i.k = alloca i8, i64 %i.j, align 16            ; 4 uses
  %i.l = call i32 @rb_integer_pack(i64 noundef %2, ptr noundef nonnull %i.k, i64 noundef %spec.store.select, i64 noundef 4, i64 noundef 0, i32 noundef 66) #23
  %i.m = icmp samesign ult i64 %i.b, 2
  br i1 %i.m, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.n = getelementptr i8, ptr %0, i64 24
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !95
  %i.p = load i32, ptr %i.k, align 16, !tbaa !7
  call void %i.o(ptr noundef %1, i32 noundef %i.p) #23
  br label %bb.i

bb.f:                                             ; preds = %.thread, %bb.d
  %i.q = phi i32 [ %i.i, %.thread ], [ %i.l, %bb.d ]
  %i.r = phi ptr [ %i.h, %.thread ], [ %i.k, %bb.d ] ; 3 uses
  %spec.select = call i32 @llvm.abs.i32(i32 %i.q, i1 false)
  %.not = icmp eq i32 %spec.select, 2
  br i1 %.not, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.s = getelementptr [4 x i8], ptr %i.r, i64 %spec.store.select
  %i.t = getelementptr i8, ptr %i.s, i64 -4
  %i.u = load i32, ptr %i.t, align 4, !tbaa !7
  %i.v = icmp eq i32 %i.u, 1
  %i.w = sext i1 %i.v to i64
  %spec.select27 = add i64 %spec.store.select, %i.w
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.024 = phi i64 [ %spec.store.select, %bb.f ], [ %spec.select27, %bb.g ] ; 2 uses
  %i.x = getelementptr i8, ptr %0, i64 16
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !96
  call void %i.y(ptr noundef %1, ptr noundef nonnull %i.r, i64 noundef %.024) #23
  %i.z = shl i64 %.024, 2
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.e
  %i.aa = phi ptr [ %i.k, %bb.e ], [ %i.r, %bb.h ]
  %.1 = phi i64 [ 4, %bb.e ], [ %i.z, %bb.h ]
  call void @__explicit_bzero_chk(ptr noundef nonnull %i.aa, i64 noundef %.1, i64 noundef -1) #23
  call void @rb_free_tmp_buffer(ptr noundef nonnull %i.a) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  ret i64 %2
}

declare i64 @rb_absint_numwords(i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #1

declare i32 @rb_integer_pack(i64 noundef, ptr noundef, i64 noundef, i64 noundef, i64 noundef, i32 noundef) local_unnamed_addr #1

declare void @rb_free_tmp_buffer(ptr noundef) local_unnamed_addr #1

; Function Attrs: allocsize(1,2)
declare noalias nonnull ptr @rb_alloc_tmp_buffer_with_count(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #10

; Function Attrs: noreturn
declare void @ruby_malloc_size_overflow(i64 noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #11

declare void @rb_gc_writebarrier(i64 noundef, i64 noundef) local_unnamed_addr #1

declare ptr @rb_errno_ptr() local_unnamed_addr #1

declare i64 @getrandom(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #1

declare i32 @rb_cloexec_open(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare void @rb_update_max_fd(i32 noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind
declare noundef i32 @fstat(i32 noundef, ptr noundef captures(none)) local_unnamed_addr #12

; Function Attrs: nofree
declare noundef i64 @read(i32 noundef, ptr noundef captures(none), i64 noundef) local_unnamed_addr #13

declare i32 @close(i32 noundef) local_unnamed_addr #1

; Function Attrs: nofree norecurse nosync nounwind sspstrong memory(argmem: readwrite) uwtable
define internal void @rand_mt_init(ptr noundef initializes((8, 12)) %0, ptr noundef readonly captures(none) %1, i64 noundef %2) #14 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 8          ; 10 uses
  store i32 19650218, ptr %i.a, align 8, !tbaa !7
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %bb.a
  %store_forwarded = phi i32 [ 19650218, %bb.a ], [ %i.m, %bb.c ] ; 2 uses
  %indvars.iv.i.i = phi i64 [ 1, %bb.a ], [ %indvars.iv.next.i.i.1, %bb.c ] ; 4 uses
  %i.b = getelementptr [4 x i8], ptr %i.a, i64 %indvars.iv.i.i
  %i.c = lshr i32 %store_forwarded, 30
  %i.d = xor i32 %i.c, %store_forwarded
  %i.e = mul i32 %i.d, 1812433253
  %i.f = trunc nuw nsw i64 %indvars.iv.i.i to i32
  %i.g = add i32 %i.e, %i.f                       ; 3 uses
  store i32 %i.g, ptr %i.b, align 4, !tbaa !7
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 3 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, 624
  br i1 %exitcond.not.i.i, label %init_genrand.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr [4 x i8], ptr %i.a, i64 %indvars.iv.next.i.i
  %i.i = lshr i32 %i.g, 30
  %i.j = xor i32 %i.i, %i.g
  %i.k = mul i32 %i.j, 1812433253
  %i.l = trunc nuw nsw i64 %indvars.iv.next.i.i to i32
  %i.m = add i32 %i.k, %i.l                       ; 2 uses
  store i32 %i.m, ptr %i.h, align 4, !tbaa !7
  %indvars.iv.next.i.i.1 = add nuw nsw i64 %indvars.iv.i.i, 2
  br label %bb.b

init_genrand.exit.i:                              ; preds = %bb.b
  %i.n = trunc i64 %2 to i32                      ; 2 uses
  %i.o = getelementptr i8, ptr %0, i64 2512
  store i32 1, ptr %i.o, align 8, !tbaa !21
  %i.p = getelementptr i8, ptr %0, i64 2504       ; 2 uses
  store ptr %i.p, ptr %i.p, align 8, !tbaa !22
  %i.q = tail call i32 @llvm.smax.i32(i32 %i.n, i32 624)
  %i.r = getelementptr i8, ptr %0, i64 2500       ; 2 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.f, %init_genrand.exit.i
  %.051.i = phi i32 [ %i.q, %init_genrand.exit.i ], [ %i.am, %bb.f ]
  %.04250.i = phi i32 [ 0, %init_genrand.exit.i ], [ %spec.store.select.i, %bb.f ] ; 3 uses
  %.04349.i = phi i32 [ 1, %init_genrand.exit.i ], [ %.144.i, %bb.f ] ; 3 uses
  %i.s = sext i32 %.04349.i to i64
  %i.t = getelementptr [4 x i8], ptr %i.a, i64 %i.s ; 2 uses
  %i.u = load i32, ptr %i.t, align 4, !tbaa !7
  %i.v = add i32 %.04349.i, -1
  %i.w = sext i32 %i.v to i64
  %i.x = getelementptr [4 x i8], ptr %i.a, i64 %i.w
  %i.y = load i32, ptr %i.x, align 4, !tbaa !7    ; 2 uses
  %i.z = lshr i32 %i.y, 30
  %i.aa = xor i32 %i.z, %i.y
  %i.ab = mul i32 %i.aa, 1664525
  %i.ac = xor i32 %i.ab, %i.u
  %i.ad = sext i32 %.04250.i to i64
  %i.ae = getelementptr [4 x i8], ptr %1, i64 %i.ad
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !7
  %i.ag = add i32 %i.af, %.04250.i
  %i.ah = add i32 %i.ag, %i.ac
  store i32 %i.ah, ptr %i.t, align 4, !tbaa !7
  %i.ai = add i32 %.04349.i, 1                    ; 2 uses
  %i.aj = add i32 %.04250.i, 1                    ; 2 uses
  %i.ak = icmp sgt i32 %i.ai, 623
  br i1 %i.ak, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.al = load i32, ptr %i.r, align 4, !tbaa !7
  store i32 %i.al, ptr %i.a, align 8, !tbaa !7
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.144.i = phi i32 [ 1, %bb.e ], [ %i.ai, %bb.d ] ; 2 uses
  %.not48.i = icmp slt i32 %i.aj, %i.n
  %spec.store.select.i = select i1 %.not48.i, i32 %i.aj, i32 0
  %i.am = add nsw i32 %.051.i, -1                 ; 2 uses
  %.not.i = icmp eq i32 %i.am, 0
  br i1 %.not.i, label %.preheader.i, label %bb.d, !llvm.loop !81

.preheader.i:                                     ; preds = %bb.f, %bb.h
  %.153.i = phi i32 [ %i.bc, %bb.h ], [ 623, %bb.f ]
  %.252.i = phi i32 [ %.3.i, %bb.h ], [ %.144.i, %bb.f ] ; 4 uses
  %i.an = sext i32 %.252.i to i64
  %i.ao = getelementptr [4 x i8], ptr %i.a, i64 %i.an ; 2 uses
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !7
  %i.aq = add i32 %.252.i, -1
  %i.ar = sext i32 %i.aq to i64
  %i.as = getelementptr [4 x i8], ptr %i.a, i64 %i.ar
  %i.at = load i32, ptr %i.as, align 4, !tbaa !7  ; 2 uses
  %i.au = lshr i32 %i.at, 30
  %i.av = xor i32 %i.au, %i.at
  %i.aw = mul i32 %i.av, 1566083941
  %i.ax = xor i32 %i.aw, %i.ap
  %i.ay = sub i32 %i.ax, %.252.i
  store i32 %i.ay, ptr %i.ao, align 4, !tbaa !7
  %i.az = add i32 %.252.i, 1                      ; 2 uses
  %i.ba = icmp sgt i32 %i.az, 623
  br i1 %i.ba, label %bb.g, label %bb.h

bb.g:                                             ; preds = %.preheader.i
  %i.bb = load i32, ptr %i.r, align 4, !tbaa !7
  store i32 %i.bb, ptr %i.a, align 8, !tbaa !7
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %.preheader.i
  %.3.i = phi i32 [ 1, %bb.g ], [ %i.az, %.preheader.i ]
  %i.bc = add nsw i32 %.153.i, -1                 ; 2 uses
  %.not47.i = icmp eq i32 %i.bc, 0
  br i1 %.not47.i, label %init_by_array.exit, label %.preheader.i, !llvm.loop !82

init_by_array.exit:                               ; preds = %bb.h
  store i32 -2147483648, ptr %i.a, align 8, !tbaa !7
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind sspstrong memory(argmem: readwrite) uwtable
define internal void @rand_mt_init_int32(ptr noundef initializes((8, 12)) %0, i32 noundef %1) #14 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 8          ; 3 uses
  store i32 %1, ptr %i.a, align 8, !tbaa !7
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %bb.a
  %store_forwarded = phi i32 [ %1, %bb.a ], [ %i.m, %bb.c ] ; 2 uses
  %indvars.iv.i = phi i64 [ 1, %bb.a ], [ %indvars.iv.next.i.1, %bb.c ] ; 4 uses
  %i.b = getelementptr [4 x i8], ptr %i.a, i64 %indvars.iv.i
  %i.c = lshr i32 %store_forwarded, 30
  %i.d = xor i32 %i.c, %store_forwarded
  %i.e = mul i32 %i.d, 1812433253
  %i.f = trunc nuw nsw i64 %indvars.iv.i to i32
  %i.g = add i32 %i.e, %i.f                       ; 3 uses
  store i32 %i.g, ptr %i.b, align 4, !tbaa !7
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 3 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, 624
  br i1 %exitcond.not.i, label %init_genrand.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr [4 x i8], ptr %i.a, i64 %indvars.iv.next.i
  %i.i = lshr i32 %i.g, 30
  %i.j = xor i32 %i.i, %i.g
  %i.k = mul i32 %i.j, 1812433253
  %i.l = trunc nuw nsw i64 %indvars.iv.next.i to i32
  %i.m = add i32 %i.k, %i.l                       ; 2 uses
  store i32 %i.m, ptr %i.h, align 4, !tbaa !7
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2
  br label %bb.b

init_genrand.exit:                                ; preds = %bb.b
  %i.n = getelementptr i8, ptr %0, i64 2512
  store i32 1, ptr %i.n, align 8, !tbaa !21
  %i.o = getelementptr i8, ptr %0, i64 2504       ; 2 uses
  store ptr %i.o, ptr %i.o, align 8, !tbaa !22
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind sspstrong memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal i32 @rand_mt_get_int32(ptr noundef %0) #3 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 8
  %i.b = tail call fastcc i32 @genrand_int32(ptr noundef %i.a)
  ret i32 %i.b
}

; Function Attrs: nofree norecurse nosync nounwind sspstrong memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @rand_mt_get_bytes(ptr noundef %0, ptr noundef writeonly captures(none) %1, i64 noundef %2) #3 {
bb.a:
  %i.a = icmp ugt i64 %2, 3
  br i1 %i.a, label %.lr.ph.i.preheader, label %._crit_edge.i

.lr.ph.i.preheader:                               ; preds = %bb.a
  %i.b = getelementptr i8, ptr %0, i64 8
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %.01623.i = phi ptr [ %i.d, %.lr.ph.i ], [ %1, %.lr.ph.i.preheader ] ; 2 uses
  %.01822.i = phi i64 [ %i.e, %.lr.ph.i ], [ %2, %.lr.ph.i.preheader ]
  %i.c = tail call fastcc i32 @genrand_int32(ptr noundef %i.b)
  store i32 %i.c, ptr %.01623.i, align 1
  %i.d = getelementptr i8, ptr %.01623.i, i64 4   ; 2 uses
  %i.e = add i64 %.01822.i, -4                    ; 3 uses
  %i.f = icmp ugt i64 %i.e, 3
  br i1 %i.f, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !62

._crit_edge.i:                                    ; preds = %.lr.ph.i, %bb.a
  %.018.lcssa.i = phi i64 [ %2, %bb.a ], [ %i.e, %.lr.ph.i ] ; 3 uses
  %.016.lcssa.i = phi ptr [ %1, %bb.a ], [ %i.d, %.lr.ph.i ] ; 3 uses
  %.not.i = icmp eq i64 %.018.lcssa.i, 0
  br i1 %.not.i, label %rb_rand_bytes_int32.exit, label %bb.b

bb.b:                                             ; preds = %._crit_edge.i
  %i.g = getelementptr i8, ptr %0, i64 8
  %i.h = tail call fastcc i32 @genrand_int32(ptr noundef %i.g) ; 3 uses
  %i.i = trunc i32 %i.h to i8
  store i8 %i.i, ptr %.016.lcssa.i, align 1, !tbaa !57
  %.not20.i = icmp eq i64 %.018.lcssa.i, 1
  br i1 %.not20.i, label %rb_rand_bytes_int32.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = lshr i32 %i.h, 8
  %i.k = getelementptr i8, ptr %.016.lcssa.i, i64 1
  %i.l = trunc i32 %i.j to i8
  store i8 %i.l, ptr %i.k, align 1, !tbaa !57
  %.not20.i.1 = icmp eq i64 %.018.lcssa.i, 2
  br i1 %.not20.i.1, label %rb_rand_bytes_int32.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = lshr i32 %i.h, 16
  %i.n = getelementptr i8, ptr %.016.lcssa.i, i64 2
  %i.o = trunc i32 %i.m to i8
  store i8 %i.o, ptr %i.n, align 1, !tbaa !57
  br label %rb_rand_bytes_int32.exit

rb_rand_bytes_int32.exit:                         ; preds = %bb.b, %bb.c, %bb.d, %._crit_edge.i
  ret void
}

declare i32 @rb_typeddata_is_kind_of(i64 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc noundef ptr @rand_start(ptr noundef returned %0, i64 noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [5 x i32], align 16               ; 7 uses
  %i.b = getelementptr i8, ptr %0, i64 2504
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !14
  %.not.i = icmp eq ptr %i.c, null
  br i1 %.not.i, label %bb.b, label %rand_mt_start.exit

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  %i.d = call i32 @ruby_fill_random_bytes(ptr noundef nonnull %i.a, i64 noundef 16, i32 noundef 0) ; 0 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  %i.f = load i32, ptr %i.e, align 4, !tbaa !7
  %i.g = icmp ult i32 %i.f, 2
  br i1 %i.g, label %bb.c, label %random_seed.exit.i

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i32 1, ptr %i.h, align 16, !tbaa !7
  br label %random_seed.exit.i

random_seed.exit.i:                               ; preds = %bb.c, %bb.b
  %.0.i.i.i = phi i64 [ 5, %bb.c ], [ 4, %bb.b ]
  %i.i = call i64 @rb_integer_unpack(ptr noundef nonnull %i.a, i64 noundef %.0.i.i.i, i64 noundef 4, i64 noundef 0, i32 noundef 66) #23 ; 5 uses
  call void @__explicit_bzero_chk(ptr noundef nonnull %i.a, i64 noundef 16, i64 noundef 20) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  %i.j = call fastcc i64 @rand_init(ptr noundef nonnull @random_mt_if, ptr noundef nonnull %0, i64 noundef %i.i) ; 0 uses
  store i64 %i.i, ptr %0, align 8, !tbaa !20
  %.not6.i = icmp eq i64 %1, 0
  br i1 %.not6.i, label %rand_mt_start.exit, label %bb.d

bb.d:                                             ; preds = %random_seed.exit.i
  %i.k = icmp eq i64 %i.i, 0
  %i.l = and i64 %i.i, 7
  %i.m = icmp ne i64 %i.l, 0
  %i.n = or i1 %i.k, %i.m
  br i1 %i.n, label %rand_mt_start.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @rb_gc_writebarrier(i64 noundef %1, i64 noundef %i.i) #23
  br label %rand_mt_start.exit

rand_mt_start.exit:                               ; preds = %bb.a, %random_seed.exit.i, %bb.d, %bb.e
  ret ptr %0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(none) uwtable
define internal noundef i64 @random_mt_memsize(ptr readnone captures(none) %0) #4 {
bb.a:
  ret i64 2520
}

declare i64 @rb_int2big(i64 noundef) local_unnamed_addr #1

; Function Attrs: cold noreturn
declare void @rb_unexpected_type(i64 noundef, i32 noundef) local_unnamed_addr #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #16

declare i64 @rb_ull2inum(i64 noundef) local_unnamed_addr #1

declare i64 @rb_num2ulong(i64 noundef) local_unnamed_addr #1

declare i64 @rb_str_new(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare i32 @clock_gettime(i32 noundef, ptr noundef) local_unnamed_addr #17

; Function Attrs: nounwind
declare i32 @getpid() local_unnamed_addr #17

; Function Attrs: nounwind
declare void @__explicit_bzero_chk(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #17

declare ptr @rb_ractor_local_storage_ptr(ptr noundef) local_unnamed_addr #1

; Function Attrs: allocsize(0,1)
declare noalias nonnull ptr @ruby_xcalloc(i64 noundef, i64 noundef) local_unnamed_addr #18

declare void @rb_ractor_local_storage_ptr_set(ptr noundef, ptr noundef) local_unnamed_addr #1

declare i64 @rb_intern2(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: noreturn
declare void @rb_error_arity(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: inlinehint nounwind sspstrong uwtable
define internal fastcc i64 @rand_range(i64 noundef %0, ptr noundef %1, i64 noundef %2) unnamed_addr #19 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %i.c = alloca i64, align 8                      ; 7 uses
  %i.d = alloca i64, align 8                      ; 8 uses
  %i.e = alloca i32, align 4                      ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #23
  store i32 0, ptr %i.e, align 4, !tbaa !7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #23
  %i.f = call i32 @rb_range_values(i64 noundef %2, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef nonnull %i.e) #23
  %.not.i = icmp eq i32 %i.f, 0
  br i1 %.not.i, label %range_values.exit.thread83, label %bb.b

range_values.exit.thread83:                       ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  br label %rb_float_new_inline.exit

bb.b:                                             ; preds = %bb.a
  %i.g = load i64, ptr %i.a, align 8, !tbaa !35   ; 2 uses
  store i64 %i.g, ptr %i.c, align 8, !tbaa !35
  %i.h = icmp eq i64 %i.g, 4
  br i1 %i.h, label %.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = load i64, ptr %i.b, align 8, !tbaa !35   ; 3 uses
  %i.j = icmp eq i64 %i.i, 4
  br i1 %i.j, label %.thread, label %range_values.exit

.thread:                                          ; preds = %bb.c, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  br label %bb.d

range_values.exit:                                ; preds = %bb.c
  %i.k = call i64 @rb_check_funcall_default(i64 noundef %i.i, i64 noundef 45, i32 noundef 1, ptr noundef nonnull %i.c, i64 noundef 0) #23 ; 7 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  switch i64 %i.k, label %bb.e [
    i64 0, label %rb_float_new_inline.exit
    i64 4, label %bb.d
  ]

bb.d:                                             ; preds = %range_values.exit, %.thread
  call fastcc void @domain_error() #27
  unreachable

bb.e:                                             ; preds = %range_values.exit
  %i.l = and i64 %i.k, 3
  %i.m = icmp eq i64 %i.l, 2
  br i1 %i.m, label %RB_FLOAT_TYPE_P.exit.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.n = and i64 %i.k, 7
  %.not111 = icmp eq i64 %i.n, 0
  br i1 %.not111, label %RB_FLOAT_TYPE_P.exit, label %RB_FLOAT_TYPE_P.exit.thread89

RB_FLOAT_TYPE_P.exit:                             ; preds = %bb.f
  %i.o = inttoptr i64 %i.k to ptr
  %i.p = load i64, ptr %i.o, align 8, !tbaa !53
  %i.q = and i64 %i.p, 31
  %i.r = icmp eq i64 %i.q, 4
  br i1 %i.r, label %RB_FLOAT_TYPE_P.exit.thread, label %RB_FLOAT_TYPE_P.exit.thread89

RB_FLOAT_TYPE_P.exit.thread89:                    ; preds = %bb.f, %RB_FLOAT_TYPE_P.exit
  %i.s = call i64 @rb_check_to_int(i64 noundef %i.k) #23 ; 7 uses
  %i.t = icmp eq i64 %i.s, 4
  br i1 %i.t, label %RB_FLOAT_TYPE_P.exit.thread, label %bb.g

bb.g:                                             ; preds = %RB_FLOAT_TYPE_P.exit.thread89
  store i64 4, ptr %i.d, align 8, !tbaa !35
  %i.u = trunc i64 %i.s to i1
  br i1 %i.u, label %.._crit_edge_crit_edge, label %.lr.ph.preheader

.._crit_edge_crit_edge:                           ; preds = %bb.g
  %.pre = load i32, ptr %i.e, align 4, !tbaa !7
  %i.v = sext i32 %.pre to i64
  br label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.g
  %i.w = inttoptr i64 %i.s to ptr
  %i.x = load i64, ptr %i.w, align 8, !tbaa !53
  %i.y = and i64 %i.x, 8223
  %or.cond108 = icmp eq i64 %i.y, 8202
  br i1 %or.cond108, label %bb.k, label %rb_float_new_inline.exit.thread

._crit_edge:                                      ; preds = %.._crit_edge_crit_edge, %._crit_edge.loopexit
  %i.z = phi i64 [ %i.v, %.._crit_edge_crit_edge ], [ 0, %._crit_edge.loopexit ]
  %.043.lcssa = phi i64 [ %i.s, %.._crit_edge_crit_edge ], [ %i.am, %._crit_edge.loopexit ]
  %i.aa = ashr i64 %.043.lcssa, 1
  %i.ab = sub nsw i64 %i.aa, %i.z                 ; 2 uses
  %i.ac = icmp sgt i64 %i.ab, -1
  br i1 %i.ac, label %bb.h, label %rb_float_new_inline.exit.thread

bb.h:                                             ; preds = %._crit_edge
  %i.ad = call fastcc i64 @random_ulong_limited(i64 noundef %0, ptr noundef %1, i64 noundef %i.ab) ; 3 uses
  %i.ae = icmp ult i64 %i.ad, 4611686018427387904
  br i1 %i.ae, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.af = shl nuw nsw i64 %i.ad, 1
  %i.ag = or disjoint i64 %i.af, 1
  br label %rb_float_new_inline.exit.thread.sink.split

bb.j:                                             ; preds = %bb.h
  %i.ah = call i64 @rb_uint2big(i64 noundef %i.ad) #23
  br label %rb_float_new_inline.exit.thread.sink.split

bb.k:                                             ; preds = %.lr.ph.preheader
  %i.ai = call i32 @rb_bigzero_p(i64 noundef %i.s) #23
  %.not = icmp eq i32 %i.ai, 0
  br i1 %.not, label %bb.l, label %rb_float_new_inline.exit.thread

bb.l:                                             ; preds = %bb.k
  %i.aj = load i32, ptr %i.e, align 4, !tbaa !7
  %.not51 = icmp eq i32 %i.aj, 0
  br i1 %.not51, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ak = call i64 @rb_big_minus(i64 noundef %i.s, i64 noundef 3) #23
  br label %bb.o

bb.n:                                             ; preds = %bb.l
  %i.al = call i64 @rb_big_norm(i64 noundef %i.s) #23
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.am = phi i64 [ %i.ak, %bb.m ], [ %i.al, %bb.n ] ; 3 uses
  %i.an = trunc i64 %i.am to i1
  br i1 %i.an, label %._crit_edge.loopexit, label %bb.p

._crit_edge.loopexit:                             ; preds = %bb.o
  store i32 0, ptr %i.e, align 4, !tbaa !7
  br label %._crit_edge

bb.p:                                             ; preds = %bb.o
  %i.ao = call fastcc i64 @random_ulong_limited_big(i64 noundef %0, ptr noundef %1, i64 noundef %i.am)
  br label %rb_float_new_inline.exit.thread.sink.split

RB_FLOAT_TYPE_P.exit.thread:                      ; preds = %bb.e, %RB_FLOAT_TYPE_P.exit.thread89, %RB_FLOAT_TYPE_P.exit
  %i.ap = call i64 @rb_check_to_float(i64 noundef %i.k) #23 ; 7 uses
  store i64 %i.ap, ptr %i.d, align 8, !tbaa !35
  %i.aq = icmp eq i64 %i.ap, 4
  br i1 %i.aq, label %rb_float_new_inline.exit.thread, label %bb.q

bb.q:                                             ; preds = %RB_FLOAT_TYPE_P.exit.thread
  %i.ar = and i64 %i.ap, 3
  %i.as = icmp eq i64 %i.ar, 2
  br i1 %i.as, label %bb.r, label %bb.t

bb.r:                                             ; preds = %bb.q
  %.not.i.i = icmp eq i64 %i.ap, -9223372036854775806
  br i1 %.not.i.i, label %.thread95, label %bb.s

bb.s:                                             ; preds = %bb.r
  %.neg.i.i = ashr i64 %i.ap, 63
  %i.at = add nsw i64 %.neg.i.i, 2
  %i.au = and i64 %i.ap, -4
  %i.av = or i64 %i.at, %i.au                     ; 2 uses
  %i.aw = call noundef i64 @llvm.fshl.i64(i64 range(i64 1, 0) %i.av, i64 range(i64 1, 0) %i.av, i64 61)
  %i.ax = bitcast i64 %i.aw to double
  br label %rb_float_value_inline.exit

bb.t:                                             ; preds = %bb.q
  %i.ay = inttoptr i64 %i.ap to ptr
  %i.az = getelementptr i8, ptr %i.ay, i64 16
  %i.ba = load double, ptr %i.az, align 8, !tbaa !97
  br label %rb_float_value_inline.exit

rb_float_value_inline.exit:                       ; preds = %bb.s, %bb.t
  %.0.i54 = phi double [ %i.ba, %bb.t ], [ %i.ax, %bb.s ] ; 3 uses
  %i.bb = call double @llvm.fabs.f64(double %.0.i54) #29
  %i.bc = fcmp oeq double %i.bb, +inf             ; 2 uses
  br i1 %i.bc, label %bb.u, label %bb.ad

.thread95:                                        ; preds = %bb.r
  store i64 4, ptr %i.d, align 8, !tbaa !35
  br label %bb.ar

bb.u:                                             ; preds = %rb_float_value_inline.exit
  %i.bd = load i64, ptr %i.c, align 8, !tbaa !35
  %i.be = call i64 @rb_to_float(i64 noundef %i.bd) #23 ; 5 uses
  %i.bf = and i64 %i.be, 3
  %i.bg = icmp eq i64 %i.bf, 2
  br i1 %i.bg, label %bb.v, label %bb.x

bb.v:                                             ; preds = %bb.u
  %.not.i.i.i = icmp eq i64 %i.be, -9223372036854775806
  br i1 %.not.i.i.i, label %rb_float_value_inline.exit.i, label %bb.w

bb.w:                                             ; preds = %bb.v
  %.neg.i.i.i = ashr i64 %i.be, 63
  %i.bh = add nsw i64 %.neg.i.i.i, 2
  %i.bi = and i64 %i.be, -4
  %i.bj = or i64 %i.bh, %i.bi                     ; 2 uses
  %i.bk = call noundef i64 @llvm.fshl.i64(i64 range(i64 1, 0) %i.bj, i64 range(i64 1, 0) %i.bj, i64 61)
  %i.bl = bitcast i64 %i.bk to double
  br label %rb_float_value_inline.exit.i

bb.x:                                             ; preds = %bb.u
  %i.bm = inttoptr i64 %i.be to ptr
  %i.bn = getelementptr i8, ptr %i.bm, i64 16
  %i.bo = load double, ptr %i.bn, align 8, !tbaa !97
  br label %rb_float_value_inline.exit.i

rb_float_value_inline.exit.i:                     ; preds = %bb.x, %bb.w, %bb.v
  %.0.i.i = phi double [ %i.bo, %bb.x ], [ %i.bl, %bb.w ], [ 0.000000e+00, %bb.v ] ; 2 uses
  %i.bp = call double @llvm.fabs.f64(double %.0.i.i)
  %i.bq = fcmp ueq double %i.bp, +inf
  br i1 %i.bq, label %bb.y, label %float_value.exit

bb.y:                                             ; preds = %rb_float_value_inline.exit.i
  call fastcc void @domain_error() #27
  unreachable

float_value.exit:                                 ; preds = %rb_float_value_inline.exit.i
  %i.br = fmul nnan double %.0.i.i, 5.000000e-01  ; 2 uses
  %i.bs = call i64 @rb_to_float(i64 noundef %i.i) #23 ; 5 uses
  %i.bt = and i64 %i.bs, 3
  %i.bu = icmp eq i64 %i.bt, 2
  br i1 %i.bu, label %bb.z, label %bb.ab

bb.z:                                             ; preds = %float_value.exit
  %.not.i.i.i57 = icmp eq i64 %i.bs, -9223372036854775806
  br i1 %.not.i.i.i57, label %rb_float_value_inline.exit.i55, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %.neg.i.i.i58 = ashr i64 %i.bs, 63
  %i.bv = add nsw i64 %.neg.i.i.i58, 2
  %i.bw = and i64 %i.bs, -4
  %i.bx = or i64 %i.bv, %i.bw                     ; 2 uses
  %i.by = call noundef i64 @llvm.fshl.i64(i64 range(i64 1, 0) %i.bx, i64 range(i64 1, 0) %i.bx, i64 61)
  %i.bz = bitcast i64 %i.by to double
  br label %rb_float_value_inline.exit.i55

bb.ab:                                            ; preds = %float_value.exit
  %i.ca = inttoptr i64 %i.bs to ptr
  %i.cb = getelementptr i8, ptr %i.ca, i64 16
  %i.cc = load double, ptr %i.cb, align 8, !tbaa !97
  br label %rb_float_value_inline.exit.i55

rb_float_value_inline.exit.i55:                   ; preds = %bb.ab, %bb.aa, %bb.z
  %.0.i.i56 = phi double [ %i.cc, %bb.ab ], [ %i.bz, %bb.aa ], [ 0.000000e+00, %bb.z ] ; 2 uses
  %i.cd = call double @llvm.fabs.f64(double %.0.i.i56)
  %i.ce = fcmp ueq double %i.cd, +inf
  br i1 %i.ce, label %bb.ac, label %float_value.exit59

bb.ac:                                            ; preds = %rb_float_value_inline.exit.i55
  call fastcc void @domain_error() #27
  unreachable

float_value.exit59:                               ; preds = %rb_float_value_inline.exit.i55
  %i.cf = fmul nnan double %.0.i.i56, 5.000000e-01 ; 2 uses
  %i.cg = fadd double %i.br, %i.cf
  %i.ch = fsub double %i.cf, %i.br
  br label %bb.af

bb.ad:                                            ; preds = %rb_float_value_inline.exit
  %i.ci = fcmp uno double %.0.i54, 0.000000e+00
  br i1 %i.ci, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  call fastcc void @domain_error() #27
  unreachable

bb.af:                                            ; preds = %bb.ad, %float_value.exit59
  %.048 = phi double [ %i.ch, %float_value.exit59 ], [ %.0.i54, %bb.ad ] ; 4 uses
  %.047 = phi double [ %i.cg, %float_value.exit59 ], [ 5.000000e-01, %bb.ad ]
  store i64 4, ptr %i.d, align 8, !tbaa !35
  %i.cj = fcmp ogt double %.048, 0.000000e+00
  br i1 %i.cj, label %bb.ag, label %bb.ar

bb.ag:                                            ; preds = %bb.af
  %i.ck = load i32, ptr %i.e, align 4, !tbaa !7
  %i.cl = call fastcc double @random_real(i64 noundef %0, ptr noundef %1, i32 noundef %i.ck) ; 2 uses
  br i1 %i.bc, label %bb.ah, label %bb.am

bb.ah:                                            ; preds = %bb.ag
  %i.cm = fadd double %i.cl, -5.000000e-01
  %i.cn = fmul double %.048, %i.cm
  %i.co = call double @llvm.fmuladd.f64(double %i.cn, double 2.000000e+00, double %.047) ; 2 uses
  %i.cp = bitcast double %i.co to i64             ; 5 uses
  %cond.i = icmp eq i64 %i.cp, 3458764513820540928
  br i1 %cond.i, label %bb.al, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.cq = lshr i64 %i.cp, 60
  %i.cr = trunc nuw nsw i64 %i.cq to i32
  %i.cs = and i32 %i.cr, 7
  %i.ct = add nsw i32 %i.cs, -5
  %i.cu = icmp ult i32 %i.ct, -2
  br i1 %i.cu, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.cv = call noundef i64 @llvm.fshl.i64(i64 range(i64 3458764513820540929, 3458764513820540928) %i.cp, i64 range(i64 3458764513820540929, 3458764513820540928) %i.cp, i64 3)
  %i.cw = and i64 %i.cv, -4
  %i.cx = or disjoint i64 %i.cw, 2
  br label %rb_float_new_inline.exit

bb.ak:                                            ; preds = %bb.ai
  %i.cy = icmp eq i64 %i.cp, 0
  br i1 %i.cy, label %rb_float_new_inline.exit, label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.ah
  %i.cz = call i64 @rb_float_new_in_heap(double noundef %i.co) #23
  br label %rb_float_new_inline.exit

bb.am:                                            ; preds = %bb.ag
  %i.da = fmul double %.048, %i.cl                ; 2 uses
  %i.db = bitcast double %i.da to i64             ; 5 uses
  %cond.i61 = icmp eq i64 %i.db, 3458764513820540928
  br i1 %cond.i61, label %bb.aq, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.dc = lshr i64 %i.db, 60
  %i.dd = trunc nuw nsw i64 %i.dc to i32
  %i.de = and i32 %i.dd, 7
  %i.df = add nsw i32 %i.de, -5
  %i.dg = icmp ult i32 %i.df, -2
  br i1 %i.dg, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.dh = call noundef i64 @llvm.fshl.i64(i64 range(i64 3458764513820540929, 3458764513820540928) %i.db, i64 range(i64 3458764513820540929, 3458764513820540928) %i.db, i64 3)
  %i.di = and i64 %i.dh, -4
  %i.dj = or disjoint i64 %i.di, 2
  br label %rb_float_new_inline.exit.thread.sink.split

bb.ap:                                            ; preds = %bb.an
  %i.dk = icmp eq i64 %i.db, 0
  br i1 %i.dk, label %rb_float_new_inline.exit.thread.sink.split, label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %bb.am
  %i.dl = call i64 @rb_float_new_in_heap(double noundef %i.da) #23
  br label %rb_float_new_inline.exit.thread.sink.split

bb.ar:                                            ; preds = %.thread95, %bb.af
  %.04898 = phi double [ 0.000000e+00, %.thread95 ], [ %.048, %bb.af ]
  %i.dm = fcmp une double %.04898, 0.000000e+00
  %i.dn = load i32, ptr %i.e, align 4
  %i.do = icmp ne i32 %i.dn, 0
  %or.cond = select i1 %i.dm, i1 true, i1 %i.do
  br i1 %or.cond, label %rb_float_new_inline.exit.thread, label %rb_float_new_inline.exit.thread.sink.split

rb_float_new_inline.exit.thread.sink.split:       ; preds = %bb.ar, %bb.aq, %bb.ap, %bb.ao, %bb.j, %bb.i, %bb.p
  %.sink = phi i64 [ -9223372036854775806, %bb.ap ], [ %i.ah, %bb.j ], [ %i.ao, %bb.p ], [ %i.ag, %bb.i ], [ %i.dj, %bb.ao ], [ %i.dl, %bb.aq ], [ -9223372036854775806, %bb.ar ] ; 2 uses
  store i64 %.sink, ptr %i.d, align 8, !tbaa !35
  br label %rb_float_new_inline.exit.thread

rb_float_new_inline.exit.thread:                  ; preds = %rb_float_new_inline.exit.thread.sink.split, %bb.k, %.lr.ph.preheader, %bb.ar, %._crit_edge, %RB_FLOAT_TYPE_P.exit.thread
  %i.dp = phi i64 [ 4, %RB_FLOAT_TYPE_P.exit.thread ], [ 4, %._crit_edge ], [ 4, %bb.ar ], [ 4, %bb.k ], [ 4, %.lr.ph.preheader ], [ %.sink, %rb_float_new_inline.exit.thread.sink.split ] ; 17 uses
  %i.dq = load i64, ptr %i.c, align 8, !tbaa !35  ; 9 uses
  %i.dr = trunc i64 %i.dq to i1
  %i.ds = trunc i64 %i.dp to i1
  %or.cond129 = select i1 %i.dr, i1 %i.ds, i1 false
  br i1 %or.cond129, label %bb.as, label %bb.av

bb.as:                                            ; preds = %rb_float_new_inline.exit.thread
  %i.dt = ashr i64 %i.dq, 1
  %i.du = ashr i64 %i.dp, 1
  %i.dv = add nsw i64 %i.du, %i.dt                ; 3 uses
  %i.dw = add i64 %i.dv, 4611686018427387904
  %or.cond.i = icmp sgt i64 %i.dw, -1
  br i1 %or.cond.i, label %bb.at, label %bb.au

bb.at:                                            ; preds = %bb.as
  %i.dx = shl nsw i64 %i.dv, 1
  %i.dy = or disjoint i64 %i.dx, 1
  br label %rb_float_new_inline.exit

bb.au:                                            ; preds = %bb.as
  %i.dz = call i64 @rb_int2big(i64 noundef %i.dv) #23
  br label %rb_float_new_inline.exit

bb.av:                                            ; preds = %rb_float_new_inline.exit.thread
  %i.ea = icmp eq i64 %i.dp, 0
  %i.eb = and i64 %i.dp, 7
  %i.ec = icmp ne i64 %i.eb, 0
  %i.ed = or i1 %i.ea, %i.ec
  br i1 %i.ed, label %bb.aw, label %rb_type.exit

bb.aw:                                            ; preds = %bb.av
  %i.ee = call i64 @llvm.fshl.i64(i64 %i.dp, i64 %i.dp, i64 62)
  switch i64 %i.ee, label %bb.ax [
    i64 0, label %rb_float_new_inline.exit77
    i64 1, label %rb_float_new_inline.exit
    i64 5, label %rb_float_new_inline.exit77
    i64 9, label %rb_float_new_inline.exit77
  ]

bb.ax:                                            ; preds = %bb.aw
  %i.ef = trunc i64 %i.dp to i1
  %i.eg = and i64 %i.dp, 254
  %i.eh = icmp eq i64 %i.eg, 12
  %or.cond110 = or i1 %i.eh, %i.ef
  br i1 %or.cond110, label %rb_float_new_inline.exit77, label %rb_type.exit.thread104

rb_type.exit:                                     ; preds = %bb.av
  %i.ei = inttoptr i64 %i.dp to ptr
  %i.ej = load i64, ptr %i.ei, align 8, !tbaa !53
  %i.ek = trunc i64 %i.ej to i32
  %i.el = and i32 %i.ek, 31
  switch i32 %i.el, label %rb_float_new_inline.exit77 [
    i32 17, label %rb_float_new_inline.exit
    i32 10, label %bb.ay
    i32 4, label %rb_type.exit.thread104
  ]

bb.ay:                                            ; preds = %rb_type.exit
  %i.em = call i64 @rb_big_plus(i64 noundef %i.dp, i64 noundef %i.dq) #23
  br label %rb_float_new_inline.exit

rb_type.exit.thread104:                           ; preds = %bb.ax, %rb_type.exit
  %i.en = call i64 @rb_check_to_float(i64 noundef %i.dq) #23 ; 6 uses
  %i.eo = icmp eq i64 %i.en, 4
  br i1 %i.eo, label %rb_type.exit.thread104.rb_float_new_inline.exit77_crit_edge, label %bb.az

rb_type.exit.thread104.rb_float_new_inline.exit77_crit_edge: ; preds = %rb_type.exit.thread104
  %.pre116 = load i64, ptr %i.c, align 8, !tbaa !35
  br label %rb_float_new_inline.exit77

bb.az:                                            ; preds = %rb_type.exit.thread104
  %i.ep = and i64 %i.dp, 3
  %i.eq = icmp eq i64 %i.ep, 2
  br i1 %i.eq, label %bb.ba, label %bb.bc

bb.ba:                                            ; preds = %bb.az
  %.not.i.i68 = icmp eq i64 %i.dp, -9223372036854775806
  br i1 %.not.i.i68, label %rb_float_value_inline.exit70, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %.neg.i.i69 = ashr i64 %i.dp, 63
  %i.er = add nsw i64 %.neg.i.i69, 2
  %i.es = and i64 %i.dp, -4
  %i.et = or i64 %i.er, %i.es                     ; 2 uses
  %i.eu = call noundef i64 @llvm.fshl.i64(i64 range(i64 1, 0) %i.et, i64 range(i64 1, 0) %i.et, i64 61)
  %i.ev = bitcast i64 %i.eu to double
  br label %rb_float_value_inline.exit70

bb.bc:                                            ; preds = %bb.az
  %i.ew = inttoptr i64 %i.dp to ptr
  %i.ex = getelementptr i8, ptr %i.ew, i64 16
  %i.ey = load double, ptr %i.ex, align 8, !tbaa !97
  br label %rb_float_value_inline.exit70

rb_float_value_inline.exit70:                     ; preds = %bb.ba, %bb.bb, %bb.bc
  %.0.i67 = phi double [ %i.ey, %bb.bc ], [ %i.ev, %bb.bb ], [ 0.000000e+00, %bb.ba ]
  %i.ez = and i64 %i.en, 3
  %i.fa = icmp eq i64 %i.ez, 2
  br i1 %i.fa, label %bb.bd, label %bb.bf

bb.bd:                                            ; preds = %rb_float_value_inline.exit70
  %.not.i.i72 = icmp eq i64 %i.en, -9223372036854775806
  br i1 %.not.i.i72, label %rb_float_value_inline.exit74, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %.neg.i.i73 = ashr i64 %i.en, 63
  %i.fb = add nsw i64 %.neg.i.i73, 2
  %i.fc = and i64 %i.en, -4
  %i.fd = or i64 %i.fb, %i.fc                     ; 2 uses
  %i.fe = call noundef i64 @llvm.fshl.i64(i64 range(i64 1, 0) %i.fd, i64 range(i64 1, 0) %i.fd, i64 61)
  %i.ff = bitcast i64 %i.fe to double
  br label %rb_float_value_inline.exit74

bb.bf:                                            ; preds = %rb_float_value_inline.exit70
  %i.fg = inttoptr i64 %i.en to ptr
  %i.fh = getelementptr i8, ptr %i.fg, i64 16
  %i.fi = load double, ptr %i.fh, align 8, !tbaa !97
  br label %rb_float_value_inline.exit74

rb_float_value_inline.exit74:                     ; preds = %bb.bd, %bb.be, %bb.bf
  %.0.i71 = phi double [ %i.fi, %bb.bf ], [ %i.ff, %bb.be ], [ 0.000000e+00, %bb.bd ]
  %i.fj = fadd double %.0.i67, %.0.i71            ; 2 uses
  %i.fk = bitcast double %i.fj to i64             ; 5 uses
  %cond.i75 = icmp eq i64 %i.fk, 3458764513820540928
  br i1 %cond.i75, label %bb.bj, label %bb.bg

bb.bg:                                            ; preds = %rb_float_value_inline.exit74
  %i.fl = lshr i64 %i.fk, 60
  %i.fm = trunc nuw nsw i64 %i.fl to i32
  %i.fn = and i32 %i.fm, 7
  %i.fo = add nsw i32 %i.fn, -5
  %i.fp = icmp ult i32 %i.fo, -2
  br i1 %i.fp, label %bb.bi, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.fq = call noundef i64 @llvm.fshl.i64(i64 range(i64 3458764513820540929, 3458764513820540928) %i.fk, i64 range(i64 3458764513820540929, 3458764513820540928) %i.fk, i64 3)
  %i.fr = and i64 %i.fq, -4
  %i.fs = or disjoint i64 %i.fr, 2
  br label %rb_float_new_inline.exit

bb.bi:                                            ; preds = %bb.bg
  %i.ft = icmp eq i64 %i.fk, 0
  br i1 %i.ft, label %rb_float_new_inline.exit, label %bb.bj

bb.bj:                                            ; preds = %bb.bi, %rb_float_value_inline.exit74
  %i.fu = call i64 @rb_float_new_in_heap(double noundef %i.fj) #23
  br label %rb_float_new_inline.exit

rb_float_new_inline.exit77:                       ; preds = %rb_type.exit.thread104.rb_float_new_inline.exit77_crit_edge, %bb.aw, %bb.aw, %bb.ax, %bb.aw, %rb_type.exit
  %i.fv = phi i64 [ %.pre116, %rb_type.exit.thread104.rb_float_new_inline.exit77_crit_edge ], [ %i.dq, %bb.aw ], [ %i.dq, %bb.aw ], [ %i.dq, %bb.ax ], [ %i.dq, %bb.aw ], [ %i.dq, %rb_type.exit ]
  %i.fw = call i64 @rb_funcallv(i64 noundef %i.fv, i64 noundef 43, i32 noundef 1, ptr noundef nonnull %i.d) #23
  br label %rb_float_new_inline.exit

rb_float_new_inline.exit:                         ; preds = %range_values.exit, %bb.bh, %bb.bi, %bb.bj, %bb.aw, %bb.au, %bb.at, %bb.aj, %bb.ak, %bb.al, %range_values.exit.thread83, %rb_type.exit, %rb_float_new_inline.exit77, %bb.ay
  %.3 = phi i64 [ 0, %range_values.exit.thread83 ], [ -9223372036854775806, %bb.ak ], [ %i.fw, %rb_float_new_inline.exit77 ], [ %i.k, %range_values.exit ], [ %i.em, %bb.ay ], [ %i.dp, %bb.aw ], [ %i.dp, %rb_type.exit ], [ %i.cx, %bb.aj ], [ %i.cz, %bb.al ], [ %i.dy, %bb.at ], [ %i.dz, %bb.au ], [ -9223372036854775806, %bb.bi ], [ %i.fu, %bb.bj ], [ %i.fs, %bb.bh ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #23
  ret i64 %.3
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i64 @rand_int(i64 noundef %0, ptr noundef %1, i64 noundef %2, i32 noundef range(i32 0, 2) %3) unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 2 uses
  %i.b = alloca ptr, align 8                      ; 5 uses
  %i.c = trunc i64 %2 to i1
  br i1 %i.c, label %bb.b, label %bb.i

bb.b:                                             ; preds = %bb.a
  %i.d = ashr i64 %2, 1                           ; 4 uses
  %.not22 = icmp eq i64 %i.d, 0
  br i1 %.not22, label %rb_ulong2num_inline.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = icmp slt i64 %i.d, 0
  br i1 %i.e, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %.not23 = icmp eq i32 %3, 0
  br i1 %.not23, label %bb.e, label %rb_ulong2num_inline.exit

bb.e:                                             ; preds = %bb.d
  %i.f = sub nsw i64 0, %i.d
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.c
  %.018 = phi i64 [ %i.f, %bb.e ], [ %i.d, %bb.c ]
  %i.g = add nsw i64 %.018, -1
  %i.h = tail call fastcc i64 @random_ulong_limited(i64 noundef %0, ptr noundef %1, i64 noundef %i.g) ; 3 uses
  %i.i = icmp ult i64 %i.h, 4611686018427387904
  br i1 %i.i, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.j = shl nuw nsw i64 %i.h, 1
  %i.k = or disjoint i64 %i.j, 1
  br label %rb_ulong2num_inline.exit

bb.h:                                             ; preds = %bb.f
  %i.l = tail call i64 @rb_uint2big(i64 noundef %i.h) #23
  br label %rb_ulong2num_inline.exit

bb.i:                                             ; preds = %bb.a
  %i.m = tail call i32 @rb_bigzero_p(i64 noundef %2) #23
  %.not = icmp eq i32 %i.m, 0
  br i1 %.not, label %bb.j, label %rb_ulong2num_inline.exit

bb.j:                                             ; preds = %bb.i
  %i.n = inttoptr i64 %2 to ptr
  %i.o = load i64, ptr %i.n, align 8, !tbaa !53
  %i.p = and i64 %i.o, 8192
  %.not25 = icmp eq i64 %i.p, 0
  br i1 %.not25, label %bb.k, label %bb.m

bb.k:                                             ; preds = %bb.j
  %.not21 = icmp eq i32 %3, 0
  br i1 %.not21, label %bb.l, label %rb_ulong2num_inline.exit

bb.l:                                             ; preds = %bb.k
  %i.q = tail call i64 @rb_big_uminus(i64 noundef %2) #23
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.j
  %i.r = phi i64 [ %i.q, %bb.l ], [ %2, %bb.j ]
  %i.s = tail call i64 @rb_big_minus(i64 noundef %i.r, i64 noundef 3) #23 ; 4 uses
  store i64 %i.s, ptr %i.a, align 8, !tbaa !35
  %i.t = trunc i64 %i.s to i1
  br i1 %i.t, label %bb.n, label %bb.r

bb.n:                                             ; preds = %bb.m
  %i.u = ashr i64 %i.s, 1                         ; 2 uses
  %i.v = icmp eq i64 %i.u, -1
  br i1 %i.v, label %rb_ulong2num_inline.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.w = tail call fastcc i64 @random_ulong_limited(i64 noundef %0, ptr noundef %1, i64 noundef %i.u) ; 3 uses
  %i.x = add i64 %i.w, 4611686018427387904
  %or.cond.i = icmp sgt i64 %i.x, -1
  br i1 %or.cond.i, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.y = shl nsw i64 %i.w, 1
  %i.z = or disjoint i64 %i.y, 1
  br label %rb_ulong2num_inline.exit

bb.q:                                             ; preds = %bb.o
  %i.aa = tail call i64 @rb_int2big(i64 noundef %i.w) #23
  br label %rb_ulong2num_inline.exit

bb.r:                                             ; preds = %bb.m
  %i.ab = tail call fastcc i64 @random_ulong_limited_big(i64 noundef %0, ptr noundef %1, i64 noundef %i.s)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #23
  store ptr %i.a, ptr %i.b, align 8, !tbaa !100
  call void asm sideeffect "", "*m,~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(ptr) %i.b) #23, !srcloc !102
  %i.ac = load ptr, ptr %i.b, align 8, !tbaa !100
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  %i.ad = load volatile i64, ptr %i.ac, align 8, !tbaa !35 ; 0 uses
  br label %rb_ulong2num_inline.exit

rb_ulong2num_inline.exit:                         ; preds = %bb.q, %bb.p, %bb.h, %bb.g, %bb.r, %bb.i, %bb.k, %bb.n, %bb.b, %bb.d
  %.3 = phi i64 [ 4, %bb.d ], [ 4, %bb.b ], [ 4, %bb.n ], [ 4, %bb.i ], [ 4, %bb.k ], [ %i.ab, %bb.r ], [ %i.l, %bb.h ], [ %i.k, %bb.g ], [ %i.z, %bb.p ], [ %i.aa, %bb.q ]
  ret i64 %.3
}

; Function Attrs: noreturn nounwind sspstrong uwtable
define internal fastcc void @domain_error() unnamed_addr #20 {
bb.a:
  %i.a = alloca i64, align 8                      ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  store i64 67, ptr %i.a, align 8, !tbaa !35
  %i.b = load i64, ptr @rb_eSystemCallError, align 8, !tbaa !35
  %i.c = call i64 @rb_class_new_instance(i32 noundef 1, ptr noundef nonnull %i.a, i64 noundef %i.b) #23
  call void @rb_exc_raise(i64 noundef %i.c) #25
  unreachable
}

declare i64 @rb_check_to_int(i64 noundef) local_unnamed_addr #1

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i64 @random_ulong_limited(i64 noundef %0, ptr noundef %1, i64 noundef range(i64 -4611686018427387904, 4611686020574871552) %2) unnamed_addr #0 {
bb.a:
  %3 = alloca %union.anon.21, align 8             ; 8 uses
  %.not = icmp eq i64 %2, 0
  br i1 %.not, label %limited_rand.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not33 = icmp eq ptr %1, null
  br i1 %.not33, label %bb.c, label %bb.h

bb.c:                                             ; preds = %bb.b
  %i.a = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 -4611686018427387904, 4611686020574871552) %2, i1 true)
  %narrow = sub nuw nsw i64 64, %i.a              ; 5 uses
  %i.b = icmp ult i64 %2, 4294967296              ; 3 uses
  %i.c = select i1 %i.b, i32 4, i32 8             ; 2 uses
  %i.d = shl nsw i64 -1, %narrow                  ; 3 uses
  %i.e = xor i64 %i.d, -1                         ; 2 uses
  %i.f = zext nneg i32 %i.c to i64                ; 2 uses
  %i.g = shl nuw nsw i32 %i.c, 3
  %i.h = zext nneg i32 %i.g to i64
  %i.i = shl nsw i64 -1, %i.h
  %i.j = xor i64 %i.i, -1
  %i.k = select i1 %i.b, i64 %i.j, i64 -1         ; 2 uses
  br i1 %i.b, label %.split.us, label %.split

.split.us:                                        ; preds = %bb.c, %bb.e
  %.027.us = phi i64 [ %i.p, %bb.e ], [ 0, %bb.c ]
  %.0.us = phi i64 [ %i.q, %bb.e ], [ 0, %bb.c ]  ; 2 uses
  %i.l = or i64 %.0.us, %i.d
  %.not34.us = icmp eq i64 %i.l, -1
  br i1 %.not34.us, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.split.us
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  %i.m = call fastcc i64 @obj_random_bytes(i64 noundef %0, ptr noundef nonnull %3, i64 noundef %i.f) ; 0 uses
  %i.n = load i32, ptr %3, align 8
  %i.o = zext i32 %i.n to i64
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %.split.us
  %.128.us = phi i64 [ %i.o, %bb.d ], [ %.027.us, %.split.us ] ; 2 uses
  %.1.us = phi i64 [ %i.k, %bb.d ], [ %.0.us, %.split.us ]
  %i.p = lshr i64 %.128.us, %narrow
  %i.q = lshr i64 %.1.us, %narrow
  %i.r = and i64 %.128.us, %i.e                   ; 2 uses
  %i.s = icmp ult i64 %2, %i.r
  br i1 %i.s, label %.split.us, label %limited_rand.exit, !llvm.loop !103

.split:                                           ; preds = %bb.c, %bb.g
  %.027 = phi i64 [ %i.w, %bb.g ], [ 0, %bb.c ]
  %.0 = phi i64 [ %i.x, %bb.g ], [ 0, %bb.c ]     ; 2 uses
  %i.t = or i64 %.0, %i.d
  %.not34 = icmp eq i64 %i.t, -1
  br i1 %.not34, label %bb.g, label %bb.f

bb.f:                                             ; preds = %.split
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  %i.u = call fastcc i64 @obj_random_bytes(i64 noundef %0, ptr noundef nonnull %3, i64 noundef %i.f) ; 0 uses
  %i.v = load i64, ptr %3, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %.split
  %.128 = phi i64 [ %i.v, %bb.f ], [ %.027, %.split ] ; 2 uses
  %.1 = phi i64 [ %i.k, %bb.f ], [ %.0, %.split ]
  %i.w = lshr i64 %.128, %narrow
  %i.x = lshr i64 %.1, %narrow
  %i.y = and i64 %.128, %i.e                      ; 2 uses
  %i.z = icmp ult i64 %2, %i.y
  br i1 %i.z, label %.split, label %limited_rand.exit, !llvm.loop !103

bb.h:                                             ; preds = %bb.b
  %i.aa = load ptr, ptr @default_rand_key, align 8, !tbaa !11
  %i.ab = tail call ptr @rb_ractor_local_storage_ptr(ptr noundef %i.aa) #23 ; 2 uses
  %i.ac = icmp eq ptr %i.ab, null
  br i1 %i.ac, label %bb.i, label %default_rand.exit.i

bb.i:                                             ; preds = %bb.h
  %i.ad = tail call noalias nonnull dereferenceable(2520) ptr @ruby_xcalloc(i64 noundef 1, i64 noundef 2520) #24 ; 2 uses
  %i.ae = load ptr, ptr @default_rand_key, align 8, !tbaa !11
  tail call void @rb_ractor_local_storage_ptr_set(ptr noundef %i.ae, ptr noundef nonnull %i.ad) #23
  br label %default_rand.exit.i

default_rand.exit.i:                              ; preds = %bb.i, %bb.h
  %.0.i.i = phi ptr [ %i.ad, %bb.i ], [ %i.ab, %bb.h ]
  %i.af = icmp eq ptr %1, %.0.i.i
  br i1 %i.af, label %try_rand_if.exit, label %bb.j

bb.j:                                             ; preds = %default_rand.exit.i
  %i.ag = inttoptr i64 %0 to ptr
  %i.ah = getelementptr i8, ptr %i.ag, i64 24
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !36
  %i.aj = and i64 %i.ai, -2
  %i.ak = inttoptr i64 %i.aj to ptr
  %i.al = getelementptr i8, ptr %i.ak, i64 56
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !46
  br label %try_rand_if.exit

try_rand_if.exit:                                 ; preds = %bb.j, %default_rand.exit.i
  %.0.i = phi ptr [ %i.am, %bb.j ], [ @random_mt_if, %default_rand.exit.i ]
  %i.an = lshr i64 %2, 1
  %i.ao = or i64 %i.an, %2                        ; 2 uses
  %i.ap = lshr i64 %i.ao, 2
  %i.aq = or i64 %i.ap, %i.ao                     ; 2 uses
  %i.ar = lshr i64 %i.aq, 4
  %i.as = or i64 %i.ar, %i.aq                     ; 2 uses
  %i.at = lshr i64 %i.as, 8
  %i.au = or i64 %i.at, %i.as                     ; 2 uses
  %i.av = lshr i64 %i.au, 16
  %i.aw = or i64 %i.av, %i.au                     ; 3 uses
  %i.ax = lshr i64 %i.aw, 32
  %i.ay = or i64 %i.ax, %i.aw
  %.fr47 = freeze i64 %i.ay                       ; 6 uses
  %i.az = icmp ugt i64 %2, 4294967295
  %i.ba = getelementptr i8, ptr %.0.i, i64 32     ; 5 uses
  br i1 %i.az, label %.preheader.i, label %.preheader29.i

.preheader.i:                                     ; preds = %try_rand_if.exit
  %.not27.i = icmp ult i64 %i.aw, 4294967296
  %i.bb = and i64 %.fr47, 4294967295
  %.not27.1.i = icmp eq i64 %i.bb, 0              ; 2 uses
  br i1 %.not27.i, label %.preheader.i.split.us, label %.preheader.i.split

.preheader.i.split.us:                            ; preds = %.preheader.i
  br i1 %.not27.1.i, label %limited_rand.exit, label %.loopexit28.loopexit.i.us

.loopexit28.loopexit.i.us:                        ; preds = %.preheader.i.split.us, %.loopexit28.loopexit.i.us
  %i.bc = load ptr, ptr %i.ba, align 8, !tbaa !47
  %i.bd = tail call i32 %i.bc(ptr noundef nonnull %1) #23, !inline_history !61
  %i.be = zext i32 %i.bd to i64
  %i.bf = and i64 %.fr47, %i.be                   ; 2 uses
  %i.bg = icmp ult i64 %2, %i.bf
  br i1 %i.bg, label %.loopexit28.loopexit.i.us, label %limited_rand.exit

.preheader.i.split:                               ; preds = %.preheader.i
  br i1 %.not27.1.i, label %.loopexit28.i.us38, label %.loopexit28.i

.loopexit28.i.us38:                               ; preds = %.preheader.i.split, %.loopexit28.i.us38
  %i.bh = load ptr, ptr %i.ba, align 8, !tbaa !47
  %i.bi = tail call i32 %i.bh(ptr noundef nonnull %1) #23, !inline_history !61
  %i.bj = zext i32 %i.bi to i64
  %i.bk = shl nuw i64 %i.bj, 32
  %i.bl = and i64 %i.bk, %.fr47                   ; 2 uses
  %i.bm = icmp ult i64 %2, %i.bl
  br i1 %i.bm, label %.loopexit28.i.us38, label %limited_rand.exit

.loopexit28.i:                                    ; preds = %.preheader.i.split, %.loopexit28.i.backedge
  %i.bn = load ptr, ptr %i.ba, align 8, !tbaa !47
  %i.bo = tail call i32 %i.bn(ptr noundef nonnull %1) #23, !inline_history !61
  %i.bp = zext i32 %i.bo to i64
  %i.bq = shl nuw i64 %i.bp, 32                   ; 2 uses
  %i.br = and i64 %i.bq, %.fr47
  %i.bs = icmp ult i64 %2, %i.br
  br i1 %i.bs, label %.loopexit28.i.backedge, label %bb.k

bb.k:                                             ; preds = %.loopexit28.i
  %i.bt = load ptr, ptr %i.ba, align 8, !tbaa !47
  %i.bu = tail call i32 %i.bt(ptr noundef nonnull %1) #23, !inline_history !61
  %i.bv = zext i32 %i.bu to i64
  %i.bw = or disjoint i64 %i.bq, %i.bv
  %i.bx = and i64 %i.bw, %.fr47                   ; 2 uses
  %i.by = icmp ult i64 %2, %i.bx
  br i1 %i.by, label %.loopexit28.i.backedge, label %limited_rand.exit

.loopexit28.i.backedge:                           ; preds = %bb.k, %.loopexit28.i
  br label %.loopexit28.i

.preheader29.i:                                   ; preds = %try_rand_if.exit, %.preheader29.i
  %i.bz = load ptr, ptr %i.ba, align 8, !tbaa !47
  %i.ca = tail call i32 %i.bz(ptr noundef nonnull %1) #23, !inline_history !61
  %i.cb = zext i32 %i.ca to i64
  %i.cc = and i64 %.fr47, %i.cb                   ; 2 uses
  %i.cd = icmp samesign ult i64 %2, %i.cc
  br i1 %i.cd, label %.preheader29.i, label %limited_rand.exit, !llvm.loop !34

limited_rand.exit:                                ; preds = %.preheader29.i, %bb.k, %.loopexit28.i.us38, %.loopexit28.loopexit.i.us, %bb.g, %bb.e, %.preheader.i.split.us, %bb.a
  %.029 = phi i64 [ %i.y, %bb.g ], [ 0, %bb.a ], [ %i.bl, %.loopexit28.i.us38 ], [ %i.bf, %.loopexit28.loopexit.i.us ], [ 0, %.preheader.i.split.us ], [ %i.bx, %bb.k ], [ %i.r, %bb.e ], [ %i.cc, %.preheader29.i ]
  ret i64 %.029
}

declare i32 @rb_bigzero_p(i64 noundef) local_unnamed_addr #1

declare i64 @rb_big_minus(i64 noundef, i64 noundef) local_unnamed_addr #1

declare i64 @rb_big_norm(i64 noundef) local_unnamed_addr #1

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i64 @random_ulong_limited_big(i64 noundef %0, ptr noundef %1, i64 noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #23
  %i.c = call i64 @rb_absint_numwords(i64 noundef %2, i64 noundef 32, ptr noundef nonnull %i.b) #23 ; 10 uses
  %i.d = shl i64 %i.c, 1                          ; 3 uses
  %i.e = icmp ult i64 %i.d, 256
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i64 0, ptr %i.a, align 8, !tbaa !35
  %i.f = shl i64 %i.c, 3
  %i.g = alloca i8, i64 %i.f, align 16
  br label %bb.f

bb.d:                                             ; preds = %bb.b
  %i.h = icmp ugt i64 %i.d, 4611686018427387903
  br i1 %i.h, label %bb.e, label %rb_alloc_tmp_buffer2.exit, !prof !94

bb.e:                                             ; preds = %bb.d
  call void @ruby_malloc_size_overflow(i64 noundef range(i64 256, 0) %i.d, i64 noundef 4) #25
  unreachable

rb_alloc_tmp_buffer2.exit:                        ; preds = %bb.d
  %i.i = shl i64 %i.c, 3
  %i.j = and i64 %i.c, 2305843009213693951
  %i.k = call noalias nonnull ptr @rb_alloc_tmp_buffer_with_count(ptr noundef nonnull %i.a, i64 noundef %i.i, i64 noundef %i.j) #28
  br label %bb.f

bb.f:                                             ; preds = %rb_alloc_tmp_buffer2.exit, %bb.c
  %i.l = phi ptr [ %i.g, %bb.c ], [ %i.k, %rb_alloc_tmp_buffer2.exit ] ; 3 uses
  %i.m = load i64, ptr %i.b, align 8, !tbaa !35
  %i.n = trunc i64 %i.m to i32
  %i.o = lshr i32 -1, %i.n                        ; 2 uses
  %i.p = getelementptr [4 x i8], ptr %i.l, i64 %i.c ; 8 uses
  %i.q = call i32 @rb_integer_pack(i64 noundef %2, ptr noundef nonnull %i.l, i64 noundef %i.c, i64 noundef 4, i64 noundef 0, i32 noundef 65) #23 ; 0 uses
  %i.r = shl i64 %i.c, 2                          ; 2 uses
  %i.s = call fastcc i64 @obj_random_bytes(i64 noundef %0, ptr noundef %i.p, i64 noundef %i.r) ; 0 uses
  %i.t = load i32, ptr %i.p, align 4, !tbaa !7
  %i.u = and i32 %i.t, %i.o
  store i32 %i.u, ptr %i.p, align 4, !tbaa !7
  %.not45 = icmp eq i64 %i.c, 0
  br i1 %.not45, label %._crit_edge, label %.lr.ph.us

.lr.ph.us:                                        ; preds = %bb.f, %.lr.ph.us.backedge
  %.03641.us = phi i64 [ %.03641.us.be, %.lr.ph.us.backedge ], [ 0, %bb.f ] ; 3 uses
  %i.v = getelementptr [4 x i8], ptr %i.l, i64 %.03641.us
  %i.w = load i32, ptr %i.v, align 4, !tbaa !7    ; 2 uses
  %i.x = getelementptr [4 x i8], ptr %i.p, i64 %.03641.us
  %i.y = load i32, ptr %i.x, align 4, !tbaa !7    ; 2 uses
  %i.z = icmp ult i32 %i.w, %i.y
  br i1 %i.z, label %.loopexit.us, label %bb.g

bb.g:                                             ; preds = %.lr.ph.us
  %i.aa = icmp uge i32 %i.y, %i.w
  %i.ab = add nuw i64 %.03641.us, 1               ; 2 uses
  %i.ac = icmp ult i64 %i.ab, %i.c
  %or.cond = select i1 %i.aa, i1 %i.ac, i1 false
  br i1 %or.cond, label %.lr.ph.us.backedge, label %._crit_edge

.lr.ph.us.backedge:                               ; preds = %bb.g, %.loopexit.us
  %.03641.us.be = phi i64 [ %i.ab, %bb.g ], [ 0, %.loopexit.us ]
  br label %.lr.ph.us, !llvm.loop !104

.loopexit.us:                                     ; preds = %.lr.ph.us
  %i.ad = call fastcc i64 @obj_random_bytes(i64 noundef %0, ptr noundef nonnull %i.p, i64 noundef %i.r) ; 0 uses
  %i.ae = load i32, ptr %i.p, align 4, !tbaa !7
  %i.af = and i32 %i.ae, %i.o
  store i32 %i.af, ptr %i.p, align 4, !tbaa !7
  br label %.lr.ph.us.backedge

._crit_edge:                                      ; preds = %bb.g, %bb.f
  %i.ag = call i64 @rb_integer_unpack(ptr noundef nonnull %i.p, i64 noundef %i.c, i64 noundef 4, i64 noundef 0, i32 noundef 65) #23
  call void @rb_free_tmp_buffer(ptr noundef nonnull %i.a) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  br label %bb.k

bb.h:                                             ; preds = %bb.a
  %i.ah = load ptr, ptr @default_rand_key, align 8, !tbaa !11
  %i.ai = tail call ptr @rb_ractor_local_storage_ptr(ptr noundef %i.ah) #23 ; 2 uses
  %i.aj = icmp eq ptr %i.ai, null
  br i1 %i.aj, label %bb.i, label %default_rand.exit.i

bb.i:                                             ; preds = %bb.h
  %i.ak = tail call noalias nonnull dereferenceable(2520) ptr @ruby_xcalloc(i64 noundef 1, i64 noundef 2520) #24 ; 2 uses
  %i.al = load ptr, ptr @default_rand_key, align 8, !tbaa !11
  tail call void @rb_ractor_local_storage_ptr_set(ptr noundef %i.al, ptr noundef nonnull %i.ak) #23
  br label %default_rand.exit.i

default_rand.exit.i:                              ; preds = %bb.i, %bb.h
  %.0.i.i = phi ptr [ %i.ak, %bb.i ], [ %i.ai, %bb.h ]
  %i.am = icmp eq ptr %1, %.0.i.i
  br i1 %i.am, label %try_rand_if.exit, label %bb.j

bb.j:                                             ; preds = %default_rand.exit.i
  %i.an = inttoptr i64 %0 to ptr
  %i.ao = getelementptr i8, ptr %i.an, i64 24
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !36
  %i.aq = and i64 %i.ap, -2
  %i.ar = inttoptr i64 %i.aq to ptr
  %i.as = getelementptr i8, ptr %i.ar, i64 56
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !46
  br label %try_rand_if.exit

try_rand_if.exit:                                 ; preds = %default_rand.exit.i, %bb.j
  %.0.i = phi ptr [ %i.at, %bb.j ], [ @random_mt_if, %default_rand.exit.i ]
  %i.au = tail call fastcc i64 @limited_big_rand(ptr noundef %.0.i, ptr noundef %1, i64 noundef %2)
  br label %bb.k

bb.k:                                             ; preds = %try_rand_if.exit, %._crit_edge
  %.0 = phi i64 [ %i.au, %try_rand_if.exit ], [ %i.ag, %._crit_edge ]
  ret i64 %.0
}

declare i64 @rb_check_to_float(i64 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #16

declare i64 @rb_to_float(i64 noundef) local_unnamed_addr #1

declare i64 @rb_big_plus(i64 noundef, i64 noundef) local_unnamed_addr #1

declare i32 @rb_range_values(i64 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare i64 @rb_check_funcall_default(i64 noundef, i64 noundef, i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: noreturn
declare void @rb_exc_raise(i64 noundef) local_unnamed_addr #6

declare i64 @rb_class_new_instance(i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #21

declare i64 @rb_uint2big(i64 noundef) local_unnamed_addr #1

declare i64 @rb_integer_unpack(ptr noundef, i64 noundef, i64 noundef, i64 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i64 @limited_big_rand(ptr noundef readonly captures(none) %0, ptr noundef nonnull %1, i64 noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  %i.b = tail call i64 @rb_absint_numwords(i64 noundef %2, i64 noundef 32, ptr noundef null) #23 ; 8 uses
  %i.c = shl i64 %i.b, 1                          ; 3 uses
  %i.d = icmp ult i64 %i.c, 256
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i64 0, ptr %i.a, align 8, !tbaa !35
  %i.e = shl i64 %i.b, 3
  %i.f = alloca i8, i64 %i.e, align 16
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.g = icmp ugt i64 %i.c, 4611686018427387903
  br i1 %i.g, label %bb.d, label %rb_alloc_tmp_buffer2.exit, !prof !94

bb.d:                                             ; preds = %bb.c
  tail call void @ruby_malloc_size_overflow(i64 noundef range(i64 256, 0) %i.c, i64 noundef 4) #25
  unreachable

rb_alloc_tmp_buffer2.exit:                        ; preds = %bb.c
  %i.h = shl i64 %i.b, 3
  %i.i = and i64 %i.b, 2305843009213693951
  %i.j = call noalias nonnull ptr @rb_alloc_tmp_buffer_with_count(ptr noundef nonnull %i.a, i64 noundef %i.h, i64 noundef %i.i) #28
  br label %bb.e

bb.e:                                             ; preds = %rb_alloc_tmp_buffer2.exit, %bb.b
  %i.k = phi ptr [ %i.f, %bb.b ], [ %i.j, %rb_alloc_tmp_buffer2.exit ] ; 3 uses
  %i.l = getelementptr [4 x i8], ptr %i.k, i64 %i.b ; 2 uses
  %i.m = call i32 @rb_integer_pack(i64 noundef %2, ptr noundef nonnull %i.k, i64 noundef %i.b, i64 noundef 4, i64 noundef 0, i32 noundef 66) #23 ; 0 uses
  %i.n = getelementptr i8, ptr %0, i64 32
  %.03448 = add i64 %i.b, -1                      ; 3 uses
  %i.o = icmp sgt i64 %.03448, -1
  br i1 %i.o, label %.lr.ph, label %.loopexit._crit_edge

.lr.ph:                                           ; preds = %bb.e, %.lr.ph.backedge
  %.03451 = phi i64 [ %.03451.be, %.lr.ph.backedge ], [ %.03448, %bb.e ] ; 4 uses
  %.03250 = phi i32 [ %.03250.be, %.lr.ph.backedge ], [ 0, %bb.e ]
  %.03549 = phi i32 [ %.03549.be, %.lr.ph.backedge ], [ 1, %bb.e ] ; 2 uses
  %i.p = getelementptr [4 x i8], ptr %i.k, i64 %.03451
  %i.q = load i32, ptr %i.p, align 4, !tbaa !7    ; 3 uses
  %.not = icmp eq i32 %.03250, 0
  br i1 %.not, label %bb.f, label %.thread

bb.f:                                             ; preds = %.lr.ph
  %i.r = zext i32 %i.q to i64                     ; 2 uses
  %i.s = lshr i64 %i.r, 1
  %i.t = or i64 %i.s, %i.r                        ; 2 uses
  %i.u = lshr i64 %i.t, 2
  %i.v = or i64 %i.u, %i.t                        ; 2 uses
  %i.w = lshr i64 %i.v, 4
  %i.x = or i64 %i.w, %i.v                        ; 2 uses
  %i.y = lshr i64 %i.x, 8
  %i.z = or i64 %i.y, %i.x                        ; 2 uses
  %i.aa = lshr i64 %i.z, 16
  %i.ab = or i64 %i.aa, %i.z                      ; 2 uses
  %i.ac = trunc nuw i64 %i.ab to i32
  %.not41 = icmp eq i64 %i.ab, 0
  br i1 %.not41, label %bb.i, label %.thread

.thread:                                          ; preds = %.lr.ph, %bb.f
  %i.ad = phi i32 [ %i.ac, %bb.f ], [ -1, %.lr.ph ] ; 3 uses
  %i.ae = load ptr, ptr %i.n, align 8, !tbaa !47
  %i.af = call i32 %i.ae(ptr noundef nonnull %1) #23
  %i.ag = and i32 %i.af, %i.ad                    ; 4 uses
  %.not42 = icmp eq i32 %.03549, 0
  br i1 %.not42, label %bb.i, label %bb.g

bb.g:                                             ; preds = %.thread
  %i.ah = icmp ult i32 %i.q, %i.ag
  br i1 %i.ah, label %.lr.ph.backedge, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ai = icmp uge i32 %i.ag, %i.q
  %spec.select = zext i1 %i.ai to i32
  br label %bb.i

bb.i:                                             ; preds = %bb.f, %.thread, %bb.h
  %i.aj = phi i32 [ 0, %bb.f ], [ %i.ad, %bb.h ], [ %i.ad, %.thread ]
  %.1 = phi i32 [ %.03549, %bb.f ], [ %spec.select, %bb.h ], [ 0, %.thread ]
  %.033 = phi i32 [ 0, %bb.f ], [ %i.ag, %bb.h ], [ %i.ag, %.thread ]
  %i.ak = getelementptr [4 x i8], ptr %i.l, i64 %.03451
  store i32 %.033, ptr %i.ak, align 4, !tbaa !7
  %.034 = add nsw i64 %.03451, -1
  %i.al = icmp sgt i64 %.03451, 0
  br i1 %i.al, label %.lr.ph.backedge, label %.loopexit._crit_edge

.lr.ph.backedge:                                  ; preds = %bb.i, %bb.g
  %.03451.be = phi i64 [ %.034, %bb.i ], [ %.03448, %bb.g ]
  %.03250.be = phi i32 [ %i.aj, %bb.i ], [ 0, %bb.g ]
  %.03549.be = phi i32 [ %.1, %bb.i ], [ 1, %bb.g ]
  br label %.lr.ph, !llvm.loop !105

.loopexit._crit_edge:                             ; preds = %bb.i, %bb.e
  %i.am = call i64 @rb_integer_unpack(ptr noundef %i.l, i64 noundef %i.b, i64 noundef 4, i64 noundef 0, i32 noundef 66) #23
  call void @rb_free_tmp_buffer(ptr noundef nonnull %i.a) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  ret i64 %i.am
}

declare i64 @rb_big_uminus(i64 noundef) local_unnamed_addr #1

declare i64 @rb_float_new_in_heap(double noundef) local_unnamed_addr #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.fshl.i64(i64, i64, i64) #16

declare i64 @rb_data_typed_object_zalloc(i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i64 @rand_init_default(ptr noundef nonnull readonly captures(none) %0, ptr noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  store i64 0, ptr %i.a, align 8, !tbaa !35
  %i.b = load i64, ptr %0, align 8, !tbaa !106
  %i.c = add i64 %i.b, 31                         ; 2 uses
  %i.d = lshr i64 %i.c, 5                         ; 5 uses
  %i.e = add nuw nsw i64 %i.d, 1                  ; 2 uses
  %i.f = icmp ult i64 %i.c, 8160
  %i.g = shl nuw nsw i64 %i.e, 2                  ; 3 uses
  br i1 %i.f, label %bb.b, label %rb_alloc_tmp_buffer2.exit

bb.b:                                             ; preds = %bb.a
  %i.h = alloca i8, i64 %i.g, align 16
  br label %bb.c

rb_alloc_tmp_buffer2.exit:                        ; preds = %bb.a
  %i.i = add nuw nsw i64 %i.g, 4
  %i.j = lshr i64 %i.i, 3
  %i.k = call noalias nonnull ptr @rb_alloc_tmp_buffer_with_count(ptr noundef nonnull %i.a, i64 noundef %i.g, i64 noundef %i.j) #28
  br label %bb.c

bb.c:                                             ; preds = %rb_alloc_tmp_buffer2.exit, %bb.b
  %i.l = phi ptr [ %i.h, %bb.b ], [ %i.k, %rb_alloc_tmp_buffer2.exit ] ; 5 uses
  %i.m = shl nuw nsw i64 %i.d, 2                  ; 2 uses
  %i.n = call i32 @ruby_fill_random_bytes(ptr noundef nonnull %i.l, i64 noundef %i.m, i32 noundef 0) ; 0 uses
  %i.o = getelementptr i8, ptr %0, i64 16
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !96
  call void %i.p(ptr noundef %1, ptr noundef nonnull %i.l, i64 noundef %i.d) #23
  %i.q = getelementptr [4 x i8], ptr %i.l, i64 %i.d ; 2 uses
  %i.r = getelementptr i8, ptr %i.q, i64 -4
  %i.s = load i32, ptr %i.r, align 4, !tbaa !7
  %i.t = icmp ult i32 %i.s, 2
  br i1 %i.t, label %bb.d, label %make_seed_value.exit

bb.d:                                             ; preds = %bb.c
  store i32 1, ptr %i.q, align 4, !tbaa !7
  br label %make_seed_value.exit

make_seed_value.exit:                             ; preds = %bb.c, %bb.d
  %.0.i = phi i64 [ %i.e, %bb.d ], [ %i.d, %bb.c ]
  %i.u = call i64 @rb_integer_unpack(ptr noundef nonnull %i.l, i64 noundef %.0.i, i64 noundef 4, i64 noundef 0, i32 noundef 66) #23
  call void @__explicit_bzero_chk(ptr noundef nonnull %i.l, i64 noundef %i.m, i64 noundef -1) #23
  call void @rb_free_tmp_buffer(ptr noundef nonnull %i.a) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  ret i64 %i.u
}

; Function Attrs: noreturn
declare void @rb_error_frozen_object(i64 noundef) local_unnamed_addr #6

declare void @rb_str_modify(i64 noundef) local_unnamed_addr #1

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i64 @rand_random(i32 noundef %0, ptr noundef readonly captures(none) %1, i64 noundef %2, ptr noundef %3) unnamed_addr #0 {
bb.a:
  %or.cond.i = icmp ugt i32 %0, 1
  br i1 %or.cond.i, label %bb.b, label %rb_check_arity.exit

bb.b:                                             ; preds = %bb.a
  tail call void @rb_error_arity(i32 noundef %0, i32 noundef 0, i32 noundef 1) #25
  unreachable

rb_check_arity.exit:                              ; preds = %bb.a
  %i.a = icmp eq i32 %0, 0
  br i1 %i.a, label %bb.c, label %bb.h

bb.c:                                             ; preds = %rb_check_arity.exit
  %i.b = tail call fastcc double @random_real(i64 noundef %2, ptr noundef %3, i32 noundef 1) ; 2 uses
  %i.c = bitcast double %i.b to i64               ; 5 uses
  %cond.i = icmp eq i64 %i.c, 3458764513820540928
  br i1 %cond.i, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = lshr i64 %i.c, 60
  %i.e = trunc nuw nsw i64 %i.d to i32
  %i.f = and i32 %i.e, 7
  %i.g = add nsw i32 %i.f, -5
  %i.h = icmp ult i32 %i.g, -2
  br i1 %i.h, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.i = tail call noundef i64 @llvm.fshl.i64(i64 range(i64 3458764513820540929, 3458764513820540928) %i.c, i64 range(i64 3458764513820540929, 3458764513820540928) %i.c, i64 3)
  %i.j = and i64 %i.i, -4
  %i.k = or disjoint i64 %i.j, 2
  br label %rb_float_new_inline.exit

bb.f:                                             ; preds = %bb.d
  %i.l = icmp eq i64 %i.c, 0
  br i1 %i.l, label %rb_float_new_inline.exit, label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.c
  %i.m = tail call i64 @rb_float_new_in_heap(double noundef %i.b) #23
  br label %rb_float_new_inline.exit

bb.h:                                             ; preds = %rb_check_arity.exit
  %i.n = load i64, ptr %1, align 8, !tbaa !35     ; 8 uses
  %i.o = icmp eq i64 %i.n, 4
  br i1 %i.o, label %rb_float_new_inline.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.p = and i64 %i.n, 3
  %i.q = icmp eq i64 %i.p, 2
  br i1 %i.q, label %RB_FLOAT_TYPE_P.exit.thread, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.r = icmp eq i64 %i.n, 0
  %i.s = and i64 %i.n, 7
  %i.t = icmp ne i64 %i.s, 0
  %i.u = or i1 %i.r, %i.t
  br i1 %i.u, label %RB_FLOAT_TYPE_P.exit.thread31, label %RB_FLOAT_TYPE_P.exit

RB_FLOAT_TYPE_P.exit:                             ; preds = %bb.j
  %i.v = inttoptr i64 %i.n to ptr
  %i.w = load i64, ptr %i.v, align 8, !tbaa !53
  %i.x = and i64 %i.w, 31
  %i.y = icmp eq i64 %i.x, 4
  br i1 %i.y, label %RB_FLOAT_TYPE_P.exit.thread, label %RB_FLOAT_TYPE_P.exit.thread31

RB_FLOAT_TYPE_P.exit.thread31:                    ; preds = %bb.j, %RB_FLOAT_TYPE_P.exit
  %i.z = tail call i64 @rb_check_to_int(i64 noundef %i.n) #23 ; 2 uses
  %i.aa = icmp eq i64 %i.z, 4
  br i1 %i.aa, label %RB_FLOAT_TYPE_P.exit.thread, label %bb.k

bb.k:                                             ; preds = %RB_FLOAT_TYPE_P.exit.thread31
  %i.ab = tail call fastcc i64 @rand_int(i64 noundef %2, ptr noundef %3, i64 noundef %i.z, i32 noundef 1)
  br label %rb_float_new_inline.exit

RB_FLOAT_TYPE_P.exit.thread:                      ; preds = %bb.i, %RB_FLOAT_TYPE_P.exit.thread31, %RB_FLOAT_TYPE_P.exit
  %i.ac = tail call i64 @rb_check_to_float(i64 noundef %i.n) #23 ; 6 uses
  %i.ad = icmp eq i64 %i.ac, 4
  br i1 %i.ad, label %bb.u, label %bb.l

bb.l:                                             ; preds = %RB_FLOAT_TYPE_P.exit.thread
  %i.ae = and i64 %i.ac, 3
  %i.af = icmp eq i64 %i.ae, 2
  br i1 %i.af, label %bb.m, label %bb.o

bb.m:                                             ; preds = %bb.l
  %.not.i.i.i = icmp eq i64 %i.ac, -9223372036854775806
  br i1 %.not.i.i.i, label %float_value.exit.thread, label %bb.n

bb.n:                                             ; preds = %bb.m
  %.neg.i.i.i = ashr i64 %i.ac, 63
  %i.ag = add nsw i64 %.neg.i.i.i, 2
  %i.ah = and i64 %i.ac, -4
  %i.ai = or i64 %i.ag, %i.ah                     ; 2 uses
  %i.aj = tail call noundef i64 @llvm.fshl.i64(i64 range(i64 1, 0) %i.ai, i64 range(i64 1, 0) %i.ai, i64 61)
  %i.ak = bitcast i64 %i.aj to double
  br label %rb_float_value_inline.exit.i

bb.o:                                             ; preds = %bb.l
  %i.al = inttoptr i64 %i.ac to ptr
  %i.am = getelementptr i8, ptr %i.al, i64 16
  %i.an = load double, ptr %i.am, align 8, !tbaa !97
  br label %rb_float_value_inline.exit.i

rb_float_value_inline.exit.i:                     ; preds = %bb.o, %bb.n
  %.0.i.i = phi double [ %i.an, %bb.o ], [ %i.ak, %bb.n ] ; 3 uses
  %i.ao = tail call double @llvm.fabs.f64(double %.0.i.i)
  %i.ap = fcmp ueq double %i.ao, +inf
  br i1 %i.ap, label %bb.p, label %float_value.exit

bb.p:                                             ; preds = %rb_float_value_inline.exit.i
  tail call fastcc void @domain_error() #27
  unreachable

float_value.exit:                                 ; preds = %rb_float_value_inline.exit.i
  %i.aq = fcmp olt double %.0.i.i, 0.000000e+00
  br i1 %i.aq, label %rb_float_new_inline.exit, label %float_value.exit.thread

float_value.exit.thread:                          ; preds = %bb.m, %float_value.exit
  %.0.i.i3436 = phi double [ %.0.i.i, %float_value.exit ], [ 0.000000e+00, %bb.m ] ; 2 uses
  %i.ar = tail call fastcc double @random_real(i64 noundef %2, ptr noundef %3, i32 noundef 1) ; 2 uses
  %i.as = fcmp ogt double %.0.i.i3436, 0.000000e+00
  %i.at = fmul double %.0.i.i3436, %i.ar
  %.0 = select i1 %i.as, double %i.at, double %i.ar ; 2 uses
  %i.au = bitcast double %.0 to i64               ; 5 uses
  %cond.i27 = icmp eq i64 %i.au, 3458764513820540928
  br i1 %cond.i27, label %bb.t, label %bb.q

bb.q:                                             ; preds = %float_value.exit.thread
  %i.av = lshr i64 %i.au, 60
  %i.aw = trunc nuw nsw i64 %i.av to i32
  %i.ax = and i32 %i.aw, 7
  %i.ay = add nsw i32 %i.ax, -5
  %i.az = icmp ult i32 %i.ay, -2
  br i1 %i.az, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ba = tail call noundef i64 @llvm.fshl.i64(i64 range(i64 3458764513820540929, 3458764513820540928) %i.au, i64 range(i64 3458764513820540929, 3458764513820540928) %i.au, i64 3)
  %i.bb = and i64 %i.ba, -4
  %i.bc = or disjoint i64 %i.bb, 2
  br label %rb_float_new_inline.exit

bb.s:                                             ; preds = %bb.q
  %i.bd = icmp eq i64 %i.au, 0
  br i1 %i.bd, label %rb_float_new_inline.exit, label %bb.t

bb.t:                                             ; preds = %bb.s, %float_value.exit.thread
  %i.be = tail call i64 @rb_float_new_in_heap(double noundef %.0) #23
  br label %rb_float_new_inline.exit

bb.u:                                             ; preds = %RB_FLOAT_TYPE_P.exit.thread
  %i.bf = tail call fastcc i64 @rand_range(i64 noundef %2, ptr noundef %3, i64 noundef %i.n)
  br label %rb_float_new_inline.exit

rb_float_new_inline.exit:                         ; preds = %bb.t, %bb.s, %bb.r, %bb.g, %bb.f, %bb.e, %float_value.exit, %bb.h, %bb.u, %bb.k
  %.1 = phi i64 [ 4, %float_value.exit ], [ %i.ab, %bb.k ], [ %i.bf, %bb.u ], [ 4, %bb.h ], [ -9223372036854775806, %bb.f ], [ %i.k, %bb.e ], [ %i.m, %bb.g ], [ %i.bc, %bb.r ], [ %i.be, %bb.t ], [ -9223372036854775806, %bb.s ]
  ret i64 %.1
}

; Function Attrs: noreturn nounwind sspstrong uwtable
define internal fastcc void @invalid_argument(i64 noundef %0) unnamed_addr #20 {
bb.a:
  %i.a = load i64, ptr @rb_eArgError, align 8, !tbaa !35
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.a, ptr noundef nonnull @.str.32, i64 noundef %0) #25
  unreachable
}

declare i64 @rb_num2long(i64 noundef) local_unnamed_addr #1

declare ptr @rb_check_typeddata(i64 noundef, ptr noundef) local_unnamed_addr #1

declare i64 @rb_obj_init_copy(i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

declare i64 @rb_ary_new_capa(i64 noundef) local_unnamed_addr #1

declare i64 @rb_ary_push(i64 noundef, i64 noundef) local_unnamed_addr #1

declare void @rb_check_copyable(i64 noundef, i64 noundef) local_unnamed_addr #1

declare i64 @rb_obj_class(i64 noundef) local_unnamed_addr #1

declare i64 @rb_equal(i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nounwind sspstrong uwtable
define internal void @default_rand_mark(ptr noundef readonly captures(none) %0) #0 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !tbaa !20
  tail call void @rb_gc_mark(i64 noundef %i.a) #23
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #16

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #22

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #16

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #21

attributes #0 = { nounwind sspstrong uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nofree norecurse nosync nounwind sspstrong memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree norecurse nosync nounwind sspstrong memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(read, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nofree norecurse nosync nounwind sspstrong memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { allocsize(1,2) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #12 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nofree "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nofree norecurse nosync nounwind sspstrong memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { cold noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #17 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { allocsize(0,1) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { inlinehint nounwind sspstrong uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { noreturn nounwind sspstrong uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #22 = { nocallback nofree nounwind willreturn memory(argmem: read) }
attributes #23 = { nounwind }
attributes #24 = { nounwind allocsize(0,1) }
attributes #25 = { noreturn nounwind }
attributes #26 = { cold noreturn nounwind }
attributes #27 = { noreturn }
attributes #28 = { nounwind allocsize(1,2) }
attributes #29 = { memory(none) }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5}
!llvm.ident = !{!6}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!6 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!7 = !{!8, !8, i64 0}
!8 = !{!"int", !9, i64 0}
!9 = !{!"omnipotent char", !10, i64 0}
!10 = !{!"Simple C/C++ TBAA"}
!11 = !{!12, !12, i64 0}
!12 = !{!"p1 _ZTS26rb_ractor_local_key_struct", !13, i64 0}
!13 = !{!"any pointer", !9, i64 0}
!14 = !{!15, !19, i64 2504}
!15 = !{!"", !16, i64 0, !18, i64 8}
!16 = !{!"rb_random_struct", !17, i64 0}
!17 = !{!"long", !9, i64 0}
!18 = !{!"MT", !9, i64 0, !19, i64 2496, !8, i64 2504}
!19 = !{!"p1 int", !13, i64 0}
!20 = !{!15, !17, i64 0}
!21 = !{!18, !8, i64 2504}
!22 = !{!18, !19, i64 2496}
!23 = distinct !{!23, !24, !25, !26}
!24 = !{!"llvm.loop.mustprogress"}
!25 = !{!"llvm.loop.isvectorized", i32 1}
!26 = !{!"llvm.loop.unroll.runtime.disable"}
!27 = distinct !{!27, !24, !25, !26}
!28 = !{!16, !17, i64 0}
!29 = distinct !{!29, !24}
!30 = !{!31, !8, i64 24}
!31 = !{!"stat", !17, i64 0, !17, i64 8, !17, i64 16, !8, i64 24, !8, i64 28, !8, i64 32, !8, i64 36, !17, i64 40, !17, i64 48, !17, i64 56, !17, i64 64, !32, i64 72, !32, i64 88, !32, i64 104, !9, i64 120}
!32 = !{!"timespec", !17, i64 0, !17, i64 8}
!33 = distinct !{!33, !24}
!34 = distinct !{!34, !24}
!35 = !{!17, !17, i64 0}
!36 = !{!37, !17, i64 24}
!37 = !{!"RTypedData", !38, i64 0, !17, i64 16, !17, i64 24, !13, i64 32}
!38 = !{!"RBasic", !17, i64 0, !17, i64 8}
!39 = !{!40, !13, i64 32}
!40 = !{!"RData", !38, i64 0, !13, i64 16, !13, i64 24, !13, i64 32}
!41 = !{!42, !43, i64 0}
!42 = !{!"rb_data_type_struct", !43, i64 0, !44, i64 8, !45, i64 48, !13, i64 56, !17, i64 64}
!43 = !{!"p1 omnipotent char", !13, i64 0}
!44 = !{!"", !13, i64 0, !13, i64 8, !13, i64 16, !13, i64 24, !9, i64 32}
!45 = !{!"p1 _ZTS19rb_data_type_struct", !13, i64 0}
!46 = !{!42, !13, i64 56}
!47 = !{!48, !13, i64 32}
!48 = !{!"", !17, i64 0, !49, i64 8, !50, i64 10, !13, i64 16, !13, i64 24, !13, i64 32, !13, i64 40, !13, i64 48}
!49 = !{!"", !9, i64 0, !9, i64 1}
!50 = !{!"short", !9, i64 0}
!51 = distinct !{null}
!52 = !{!"branch_weights", i32 1073205, i32 2146410443}
!53 = !{!38, !17, i64 0}
!54 = !{!"branch_weights", !"expected", i32 -2147483648, i32 0}
!55 = !{!56, !17, i64 16}
!56 = !{!"RString", !38, i64 0, !17, i64 16, !9, i64 24}
!57 = !{!9, !9, i64 0}
!58 = !{!48, !13, i64 48}
!59 = !{ptr @random_real}
!60 = distinct !{ptr @random_real, null}
!61 = distinct !{null}
!62 = distinct !{!62, !24}
!63 = distinct !{ptr @rb_str_new, null}
!64 = distinct !{null}
!65 = !{!48, !13, i64 40}
!66 = distinct !{!66, !24}
!67 = !{!19, !19, i64 0}
!68 = !{!32, !17, i64 8}
!69 = distinct !{!69, !24, !25, !26}
!70 = distinct !{!70, !24, !25, !26}
!71 = distinct !{!71, !24, !25, !26}
!72 = distinct !{!72, !24, !25, !26}
!73 = distinct !{!73, !24, !25, !26}
!74 = distinct !{!74, !24, !25, !26}
!75 = distinct !{!75, !24, !25, !26}
!76 = distinct !{!76, !24, !25, !26}
!77 = distinct !{!77, !24, !25, !26}
!78 = distinct !{!78, !24, !25, !26}
!79 = distinct !{!79, !24, !25, !26}
!80 = distinct !{!80, !24, !25, !26}
!81 = distinct !{!81, !24}
!82 = distinct !{!82, !24}
!83 = !{!37, !13, i64 32}
!84 = !{!48, !9, i64 8}
!85 = !{!48, !9, i64 9}
!86 = !{!"branch_weights", i32 2146410443, i32 1073205}
!87 = !{!"branch_weights", i32 4001, i32 1}
!88 = !{!"branch_weights", i32 -100663296, i32 2097152}
!89 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!90 = !{!42, !45, i64 48}
!91 = distinct !{!91, !24}
!92 = !{i64 0, i64 8, !35, i64 8, i64 2496, !57, i64 2504, i64 8, !67, i64 2512, i64 4, !7}
!93 = !{!15, !8, i64 2512}
!94 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!95 = !{!48, !13, i64 24}
!96 = !{!48, !13, i64 16}
!97 = !{!98, !99, i64 16}
!98 = !{!"RFloat", !38, i64 0, !99, i64 16}
!99 = !{!"double", !9, i64 0}
!100 = !{!101, !101, i64 0}
!101 = !{!"p1 long", !13, i64 0}
!102 = !{i64 2155753400}
!103 = distinct !{!103, !24}
!104 = distinct !{!104, !24}
!105 = distinct !{!105, !24}
!106 = !{!48, !17, i64 0}
end_hunk_0
