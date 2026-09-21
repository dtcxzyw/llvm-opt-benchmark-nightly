Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wolfssl/original/ssl?download=true
inline.NumInlined: 157
inline.NumDeleted: 47
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 9
begin_hunk_0_@wolfSSL_set_options:bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 727 ; 2 uses
  %i.g = load i8, ptr %i.f, align 1, !tbaa !152
  %i.h = icmp eq i8 %i.g, 4
  br i1 %i.h, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i8 3, ptr %i.f, align 1, !tbaa !152
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d, %bb.b
  %i.i = and i64 %i.d, 134217728
  %.not93 = icmp eq i64 %i.i, 0
  br i1 %.not93, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 727 ; 2 uses
  %i.k = load i8, ptr %i.j, align 1, !tbaa !152
  %i.l = icmp eq i8 %i.k, 3
  br i1 %i.l, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  store i8 2, ptr %i.j, align 1, !tbaa !152
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g, %bb.e
  %i.m = and i64 %i.d, 67108864
  %.not94 = icmp eq i64 %i.m, 0
  br i1 %.not94, label %bb.k, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 727 ; 2 uses
  %i.o = load i8, ptr %i.n, align 1, !tbaa !152
  %i.p = icmp eq i8 %i.o, 2
  br i1 %i.p, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  store i8 1, ptr %i.n, align 1, !tbaa !152
  br label %bb.k

bb.k:                                             ; preds = %bb.i, %bb.j, %bb.h
  %i.q = and i64 %i.d, 8192
  %.not95 = icmp eq i64 %i.q, 0
  br i1 %.not95, label %bb.n, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 727 ; 2 uses
  %i.s = load i8, ptr %i.r, align 1, !tbaa !152
  %i.t = icmp eq i8 %i.s, 1
  br i1 %i.t, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  store i8 0, ptr %i.r, align 1, !tbaa !152
  br label %bb.n

bb.n:                                             ; preds = %bb.l, %bb.m, %bb.k
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 604
  %i.v = load i32, ptr %i.u, align 4, !tbaa !153  ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 1040 ; 3 uses
  %i.x = load i64, ptr %i.w, align 8
  %i.y = and i64 %i.x, 48
  %.not96 = icmp eq i64 %i.y, 48
  br i1 %.not96, label %bb.y, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.z = tail call i32 @AllocateSuites(ptr noundef nonnull %0) #23
  %.not97 = icmp eq i32 %i.z, 0
  br i1 %.not97, label %bb.p, label %bb.z

bb.p:                                             ; preds = %bb.o
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 7 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !154 ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 432
  %i.ad = load i8, ptr %i.ac, align 2
  %i.ae = and i8 %i.ad, 1
  %.not98 = icmp eq i8 %i.ae, 0
  br i1 %.not98, label %bb.q, label %bb.t

bb.q:                                             ; preds = %bb.p
  %i.af = load i64, ptr %i.w, align 8             ; 10 uses
  %i.ag = trunc i64 %i.af to i32
  %i.ah = lshr i32 %i.ag, 4
  %i.ai = and i32 %i.ah, 3                        ; 2 uses
  %i.aj = icmp eq i32 %i.ai, 1
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 726 ; 2 uses
  br i1 %i.aj, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.al = lshr i64 %i.af, 26
  %i.am = trunc i64 %i.al to i16
  %i.an = and i16 %i.am, 1
  %i.ao = lshr i64 %i.af, 24
  %i.ap = trunc i64 %i.ao to i16
  %i.aq = and i16 %i.ap, 1
  %i.ar = lshr i64 %i.af, 27
  %i.as = trunc i64 %i.ar to i16
  %i.at = and i16 %i.as, 1
  %i.au = lshr i64 %i.af, 43
  %i.av = trunc i64 %i.au to i16
  %i.aw = and i16 %i.av, 1
  %i.ax = load i16, ptr %i.ak, align 2
  tail call void @InitSuites(ptr noundef nonnull %i.ab, i16 %i.ax, i32 noundef %i.v, i16 noundef zeroext 1, i16 noundef zeroext 0, i16 noundef zeroext 1, i16 noundef zeroext %i.an, i16 noundef zeroext %i.aq, i16 noundef zeroext 1, i16 noundef zeroext %i.at, i16 noundef zeroext %i.aw, i16 noundef zeroext 1, i16 noundef zeroext 1, i16 noundef zeroext 1, i16 noundef zeroext 1, i32 noundef 1) #23
  br label %bb.y

bb.s:                                             ; preds = %bb.q
  %i.ay = lshr i64 %i.af, 25
  %i.az = trunc i64 %i.ay to i16
  %i.ba = and i16 %i.az, 1
  %i.bb = lshr i64 %i.af, 26
  %i.bc = trunc i64 %i.bb to i16
  %i.bd = and i16 %i.bc, 1
  %i.be = lshr i64 %i.af, 24
  %i.bf = trunc i64 %i.be to i16
  %i.bg = and i16 %i.bf, 1
  %i.bh = lshr i64 %i.af, 27
  %i.bi = trunc i64 %i.bh to i16
  %i.bj = and i16 %i.bi, 1
  %i.bk = lshr i64 %i.af, 43
  %i.bl = trunc i64 %i.bk to i16
  %i.bm = and i16 %i.bl, 1
  %i.bn = load i16, ptr %i.ak, align 2
  tail call void @InitSuites(ptr noundef nonnull %i.ab, i16 %i.bn, i32 noundef %i.v, i16 noundef zeroext 1, i16 noundef zeroext 0, i16 noundef zeroext %i.ba, i16 noundef zeroext %i.bd, i16 noundef zeroext %i.bg, i16 noundef zeroext 1, i16 noundef zeroext %i.bj, i16 noundef zeroext %i.bm, i16 noundef zeroext 1, i16 noundef zeroext 1, i16 noundef zeroext 1, i16 noundef zeroext 1, i32 noundef %i.ai) #23
  br label %bb.y

bb.t:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  %i.bo = load i64, ptr %i.w, align 8             ; 2 uses
  %i.bp = lshr i64 %i.bo, 27
  %i.bq = trunc i64 %i.bp to i16
  %i.br = and i16 %i.bq, 1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(434) %2, i8 0, i64 434, i1 false)
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 726
  %i.bt = trunc i64 %i.bo to i32
  %i.bu = lshr i32 %i.bt, 4
  %i.bv = and i32 %i.bu, 3
  %i.bw = load i16, ptr %i.bs, align 2
  call void @InitSuites(ptr noundef nonnull %2, i16 %i.bw, i32 noundef 0, i16 noundef zeroext 1, i16 noundef zeroext 1, i16 noundef zeroext 1, i16 noundef zeroext 0, i16 noundef zeroext 1, i16 noundef zeroext 1, i16 noundef zeroext %i.br, i16 noundef zeroext 1, i16 noundef zeroext 1, i16 noundef zeroext 1, i16 noundef zeroext 1, i16 noundef zeroext 1, i32 noundef %i.bv) #23
  %i.bx = load ptr, ptr %i.aa, align 8, !tbaa !154 ; 3 uses
  %i.by = load i16, ptr %i.bx, align 2, !tbaa !278
  %.not113 = icmp eq i16 %i.by, 0
  br i1 %.not113, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.t, %bb.v
  %i.bz = phi ptr [ %i.cy, %bb.v ], [ %i.bx, %bb.t ]
  %.0102 = phi i16 [ %.1, %bb.v ], [ 0, %bb.t ]   ; 3 uses
  %.085101 = phi i16 [ %i.cx, %bb.v ], [ 0, %bb.t ] ; 3 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 4 ; 2 uses
  %i.cb = zext i16 %.085101 to i64                ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.ca, i64 %i.cb
  %i.cd = load i8, ptr %i.cc, align 1, !tbaa !52
  %i.ce = or disjoint i16 %.085101, 1
  %i.cf = zext i16 %i.ce to i64                   ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.ca, i64 %i.cf
  %i.ch = load i8, ptr %i.cg, align 1, !tbaa !52
  %i.ci = call i32 @FindSuite(ptr noundef nonnull %2, i8 noundef zeroext %i.cd, i8 noundef zeroext %i.ch) #23
  %i.cj = icmp sgt i32 %i.ci, -1
  br i1 %i.cj, label %bb.u, label %bb.v

bb.u:                                             ; preds = %.lr.ph
  %i.ck = load ptr, ptr %i.aa, align 8, !tbaa !154
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 4 ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 %i.cb
  %i.cn = load i8, ptr %i.cm, align 1, !tbaa !52
  %i.co = zext i16 %.0102 to i64                  ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cl, i64 %i.co
  store i8 %i.cn, ptr %i.cp, align 1, !tbaa !52
  %i.cq = load ptr, ptr %i.aa, align 8, !tbaa !154
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 4 ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 %i.cf
  %i.ct = load i8, ptr %i.cs, align 1, !tbaa !52
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cr, i64 %i.co
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 1
  store i8 %i.ct, ptr %i.cv, align 1, !tbaa !52
  %i.cw = add i16 %.0102, 2
  br label %bb.v

bb.v:                                             ; preds = %.lr.ph, %bb.u
  %.1 = phi i16 [ %i.cw, %bb.u ], [ %.0102, %.lr.ph ] ; 2 uses
  %i.cx = add i16 %.085101, 2                     ; 2 uses
  %i.cy = load ptr, ptr %i.aa, align 8, !tbaa !154 ; 3 uses
  %i.cz = load i16, ptr %i.cy, align 2, !tbaa !278
  %i.da = icmp ult i16 %i.cx, %i.cz
  br i1 %i.da, label %.lr.ph, label %._crit_edge, !llvm.loop !274

._crit_edge:                                      ; preds = %bb.v, %bb.t
  %.0.lcssa = phi i16 [ 0, %bb.t ], [ %.1, %bb.v ]
  %i.db = phi ptr [ %i.bx, %bb.t ], [ %i.cy, %bb.v ] ; 5 uses
  store i16 %.0.lcssa, ptr %i.db, align 2, !tbaa !278
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 2
  %i.dd = load i16, ptr %i.dc, align 2, !tbaa !279
  %.not114 = icmp eq i16 %i.dd, 0
  br i1 %.not114, label %._crit_edge109, label %.lr.ph108

.lr.ph108:                                        ; preds = %._crit_edge
  %i.de = getelementptr inbounds nuw i8, ptr %2, i64 2 ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %2, i64 304
  %i.dg = load i16, ptr %i.de, align 2, !tbaa !279
  %i.dh = icmp eq i16 %i.dg, 0
  br i1 %i.dh, label %._crit_edge109, label %.lr.ph108.split

.lr.ph108.split:                                  ; preds = %.lr.ph108, %FindHashSig.exit.thread
  %i.di = phi ptr [ %9, %FindHashSig.exit.thread ], [ %i.db, %.lr.ph108 ] ; 5 uses
  %.2106 = phi i16 [ %.3, %FindHashSig.exit.thread ], [ 0, %.lr.ph108 ] ; 6 uses
  %.186105 = phi i16 [ %i.eh, %FindHashSig.exit.thread ], [ 0, %.lr.ph108 ] ; 3 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 304 ; 3 uses
  %i.dk = zext i16 %.186105 to i64
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dj, i64 %i.dk
  %i.dm = load i8, ptr %i.dl, align 1, !tbaa !52  ; 2 uses
  %i.dn = or disjoint i16 %.186105, 1
  %i.do = zext i16 %i.dn to i64                   ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dj, i64 %i.do
  %i.dq = load i8, ptr %i.dp, align 1, !tbaa !52
  %i.dr = load i16, ptr %i.de, align 2, !tbaa !279 ; 3 uses
  %3 = icmp eq i16 %i.dr, 0
  br i1 %3, label %FindHashSig.exit.thread, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %.lr.ph108.split
  %4 = zext i16 %i.dr to i32
  %5 = add nsw i32 %4, -1
  %.not.i = icmp eq i16 %i.dr, 1
  br i1 %.not.i, label %FindHashSig.exit.thread, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.preheader.i, %bb.x
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.x ], [ 0, %.lr.ph.preheader.i ] ; 3 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %i.df, i64 %indvars.iv ; 2 uses
  %i.dt = load i8, ptr %i.ds, align 2, !tbaa !52
  %i.du = icmp eq i8 %i.dt, %i.dm
  br i1 %i.du, label %bb.w, label %bb.x

bb.w:                                             ; preds = %.lr.ph.i
  %i.dv = getelementptr inbounds nuw i8, ptr %i.ds, i64 1
  %i.dw = load i8, ptr %i.dv, align 1, !tbaa !52
  %i.dx = icmp eq i8 %i.dw, %i.dq
  br i1 %i.dx, label %FindHashSig.exit, label %bb.x

bb.x:                                             ; preds = %bb.w, %.lr.ph.i
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %indvars = trunc i64 %indvars.iv.next to i32
  %6 = icmp sgt i32 %5, %indvars
  br i1 %6, label %.lr.ph.i, label %FindHashSig.exit.thread, !llvm.loop !275

FindHashSig.exit:                                 ; preds = %bb.w
  %7 = and i64 %indvars.iv, 2147483648
  %8 = icmp eq i64 %7, 0
  br i1 %8, label %FindHashSig.exit.a, label %FindHashSig.exit.thread

FindHashSig.exit.a:                               ; preds = %FindHashSig.exit
  %i.dy = zext i16 %.2106 to i64                  ; 2 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dj, i64 %i.dy
  store i8 %i.dm, ptr %i.dz, align 1, !tbaa !52
  %i.ea = load ptr, ptr %i.aa, align 8, !tbaa !154
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 304 ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 %i.do
  %i.ed = load i8, ptr %i.ec, align 1, !tbaa !52
  %i.ee = getelementptr inbounds nuw i8, ptr %i.eb, i64 %i.dy
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 1
  store i8 %i.ed, ptr %i.ef, align 1, !tbaa !52
  %i.eg = add i16 %.2106, 2
  %.pre = load ptr, ptr %i.aa, align 8, !tbaa !154
  br label %FindHashSig.exit.thread

FindHashSig.exit.thread:                          ; preds = %bb.x, %.lr.ph.preheader.i, %.lr.ph108.split, %FindHashSig.exit, %FindHashSig.exit.a
  %9 = phi ptr [ %.pre, %FindHashSig.exit.a ], [ %i.di, %FindHashSig.exit ], [ %i.di, %.lr.ph108.split ], [ %i.di, %.lr.ph.preheader.i ], [ %i.di, %bb.x ] ; 3 uses
  %.3 = phi i16 [ %i.eg, %FindHashSig.exit.a ], [ %.2106, %FindHashSig.exit ], [ %.2106, %.lr.ph108.split ], [ %.2106, %.lr.ph.preheader.i ], [ %.2106, %bb.x ] ; 2 uses
  %i.eh = add i16 %.186105, 2                     ; 2 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %9, i64 2
  %i.ej = load i16, ptr %i.ei, align 2, !tbaa !279
  %i.ek = icmp ult i16 %i.eh, %i.ej
  br i1 %i.ek, label %.lr.ph108.split, label %._crit_edge109, !llvm.loop !276

._crit_edge109:                                   ; preds = %FindHashSig.exit.thread, %.lr.ph108, %._crit_edge
  %.lcssa104 = phi ptr [ %i.db, %._crit_edge ], [ %i.db, %.lr.ph108 ], [ %9, %FindHashSig.exit.thread ]
  %.2.lcssa = phi i16 [ 0, %._crit_edge ], [ 0, %.lr.ph108 ], [ %.3, %FindHashSig.exit.thread ]
  %i.el = getelementptr inbounds nuw i8, ptr %.lcssa104, i64 2
  store i16 %.2.lcssa, ptr %i.el, align 2, !tbaa !279
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  br label %bb.y

bb.y:                                             ; preds = %._crit_edge109, %bb.s, %bb.r, %bb.n
  %i.em = load i64, ptr %i.b, align 8, !tbaa !170
  br label %bb.z

bb.z:                                             ; preds = %bb.o, %bb.a, %bb.y
  %.087 = phi i64 [ %i.em, %bb.y ], [ 0, %bb.a ], [ 0, %bb.o ]
  ret i64 %.087
}

declare i32 @FindSuite(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define i64 @wolfSSL_get_options(ptr nofree noundef readonly captures(address_is_null) %0) local_unnamed_addr #9 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1032
  %i.c = load i64, ptr %i.b, align 8, !tbaa !170
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i64 [ %i.c, %bb.b ], [ 0, %bb.a ]
  ret i64 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef i32 @wolfSSL_set_ex_data(ptr nofree noundef readnone captures(none) %0, i32 noundef %1, ptr nofree noundef readnone captures(none) %2) local_unnamed_addr #7 {
bb.a:
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noalias noundef ptr @wolfSSL_get_ex_data(ptr nofree noundef readnone captures(none) %0, i32 noundef %1) local_unnamed_addr #7 {
bb.a:
  ret ptr null
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define range(i32 0, 65280) i32 @wolfSSL_version(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #9 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 726
  %i.b = load i8, ptr %i.a, align 2, !tbaa !151
  switch i8 %i.b, label %bb.d [
    i8 3, label %bb.b
    i8 -2, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 727
  %i.d = load i8, ptr %i.c, align 1, !tbaa !152   ; 2 uses
  %i.e = icmp ult i8 %i.d, 5
  br i1 %i.e, label %switch.lookup, label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 727
  %i.g = load i8, ptr %i.f, align 1, !tbaa !152   ; 2 uses
  %i.h = icmp ugt i8 %i.g, -5
  br i1 %i.h, label %switch.lookup5, label %bb.d

switch.lookup:                                    ; preds = %bb.b
  %switch.idx.cast = zext nneg i8 %i.d to i32
  %switch.offset = or disjoint i32 %switch.idx.cast, 768
  br label %bb.d

switch.lookup5:                                   ; preds = %bb.c
  %switch.tableidx = add i8 %i.g, 4
  %i.i = zext nneg i8 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw [2 x i8], ptr @switch.table.wolfSSL_version, i64 %i.i
  %switch.load = load i16, ptr %switch.gep, align 2
  %switch.ext = zext i16 %switch.load to i32
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %switch.lookup5, %bb.b, %switch.lookup, %bb.a
  %.0 = phi i32 [ 0, %bb.b ], [ %switch.ext, %switch.lookup5 ], [ 0, %bb.a ], [ %switch.offset, %switch.lookup ], [ 0, %bb.c ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define ptr @wolfSSL_get_SSL_CTX(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #9 {
bb.a:
  %i.a = load ptr, ptr %0, align 16, !tbaa !99
  ret ptr %i.a
}

; Function Attrs: nounwind uwtable
define i32 @wolfSSL_UseSNI(ptr noundef %0, i8 noundef zeroext %1, ptr noundef %2, i16 noundef zeroext %3) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1384
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.d = load ptr, ptr %i.c, align 16, !tbaa !149
  %i.e = tail call i32 @TLSX_UseSNI(ptr noundef nonnull %i.b, i8 noundef zeroext %1, ptr noundef %2, i16 noundef zeroext %3, ptr noundef %i.d) #23
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ %i.e, %bb.b ], [ -173, %bb.a ]
  ret i32 %.0
}

declare i32 @TLSX_UseSNI(ptr noundef, i8 noundef zeroext, ptr noundef, i16 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define i32 @wolfSSL_CTX_UseSNI(ptr noundef %0, i8 noundef zeroext %1, ptr noundef %2, i16 noundef zeroext %3) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 344
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !120
  %i.e = tail call i32 @TLSX_UseSNI(ptr noundef nonnull %i.b, i8 noundef zeroext %1, ptr noundef %2, i16 noundef zeroext %3, ptr noundef %i.d) #23
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ %i.e, %bb.b ], [ -173, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define void @wolfSSL_SNI_SetOptions(ptr nofree noundef readonly captures(address_is_null) %0, i8 noundef zeroext %1, i8 noundef zeroext %2) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1384
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !164  ; 2 uses
  %.not5 = icmp eq ptr %i.b, null
  br i1 %.not5, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @TLSX_SNI_SetOptions(ptr noundef nonnull %i.b, i8 noundef zeroext %1, i8 noundef zeroext %2) #23
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  ret void
}

declare void @TLSX_SNI_SetOptions(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define void @wolfSSL_CTX_SNI_SetOptions(ptr nofree noundef readonly captures(address_is_null) %0, i8 noundef zeroext %1, i8 noundef zeroext %2) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 344
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !281  ; 2 uses
  %.not5 = icmp eq ptr %i.b, null
  br i1 %.not5, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @TLSX_SNI_SetOptions(ptr noundef nonnull %i.b, i8 noundef zeroext %1, i8 noundef zeroext %2) #23
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define zeroext i8 @wolfSSL_SNI_Status(ptr nofree noundef readonly captures(address_is_null) %0, i8 noundef zeroext %1) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1384
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !164
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.c = phi ptr [ %i.b, %bb.b ], [ null, %bb.a ]
  %i.d = tail call zeroext i8 @TLSX_SNI_Status(ptr noundef %i.c, i8 noundef zeroext %1) #23
  ret i8 %i.d
}

declare zeroext i8 @TLSX_SNI_Status(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define zeroext i16 @wolfSSL_SNI_GetRequest(ptr nofree noundef readonly captures(address_is_null) %0, i8 noundef zeroext %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %2, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store ptr null, ptr %2, align 8, !tbaa !282
  br label %bb.c
end_hunk_0
