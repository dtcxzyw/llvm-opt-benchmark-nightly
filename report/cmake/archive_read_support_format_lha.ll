Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cmake/original/archive_read_support_format_lha?download=true
inline.NumInlined: 100
inline.NumDeleted: 26
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 13
begin_hunk_0_@lzh_br_fillup:bb.a
  %i.w = load i8, ptr %i.v, align 1, !tbaa !10
  %i.x = zext i8 %i.w to i64
  %i.y = shl nuw nsw i64 %i.x, 32
  %i.z = or disjoint i64 %i.u, %i.y
  %i.aa = getelementptr inbounds nuw i8, ptr %i.h, i64 4
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !10
  %i.ac = zext i8 %i.ab to i64
  %i.ad = shl nuw nsw i64 %i.ac, 24
  %i.ae = or disjoint i64 %i.z, %i.ad
  %i.af = getelementptr inbounds nuw i8, ptr %i.h, i64 5
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !10
  %i.ah = zext i8 %i.ag to i64
  %i.ai = shl nuw nsw i64 %i.ah, 16
  %i.aj = or disjoint i64 %i.ae, %i.ai
  %i.ak = getelementptr inbounds nuw i8, ptr %i.h, i64 6
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !10
  %i.am = zext i8 %i.al to i64
  %i.an = shl nuw nsw i64 %i.am, 8
  %i.ao = or i64 %i.aj, %i.an
  %i.ap = getelementptr inbounds nuw i8, ptr %i.h, i64 7
  %i.aq = load i8, ptr %i.ap, align 1, !tbaa !10
  %i.ar = zext i8 %i.aq to i64
  %i.as = or i64 %i.ao, %i.ar
  store i64 %i.as, ptr %1, align 8, !tbaa !88
  %i.at = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  br label %.loopexit.sink.split

bb.e:                                             ; preds = %bb.c
  %i.au = load i64, ptr %1, align 8, !tbaa !88
  %i.av = shl i64 %i.au, 56
  %i.aw = load ptr, ptr %0, align 8, !tbaa !178   ; 8 uses
  %i.ax = load i8, ptr %i.aw, align 1, !tbaa !10
  %i.ay = zext i8 %i.ax to i64
  %i.az = shl nuw nsw i64 %i.ay, 48
  %i.ba = or disjoint i64 %i.az, %i.av
  %i.bb = getelementptr inbounds nuw i8, ptr %i.aw, i64 1
  %i.bc = load i8, ptr %i.bb, align 1, !tbaa !10
  %i.bd = zext i8 %i.bc to i64
  %i.be = shl nuw nsw i64 %i.bd, 40
  %i.bf = or disjoint i64 %i.ba, %i.be
  %i.bg = getelementptr inbounds nuw i8, ptr %i.aw, i64 2
  %i.bh = load i8, ptr %i.bg, align 1, !tbaa !10
  %i.bi = zext i8 %i.bh to i64
  %i.bj = shl nuw nsw i64 %i.bi, 32
  %i.bk = or disjoint i64 %i.bf, %i.bj
  %i.bl = getelementptr inbounds nuw i8, ptr %i.aw, i64 3
  %i.bm = load i8, ptr %i.bl, align 1, !tbaa !10
  %i.bn = zext i8 %i.bm to i64
  %i.bo = shl nuw nsw i64 %i.bn, 24
  %i.bp = or disjoint i64 %i.bk, %i.bo
  %i.bq = getelementptr inbounds nuw i8, ptr %i.aw, i64 4
  %i.br = load i8, ptr %i.bq, align 1, !tbaa !10
  %i.bs = zext i8 %i.br to i64
  %i.bt = shl nuw nsw i64 %i.bs, 16
  %i.bu = or disjoint i64 %i.bp, %i.bt
  %i.bv = getelementptr inbounds nuw i8, ptr %i.aw, i64 5
  %i.bw = load i8, ptr %i.bv, align 1, !tbaa !10
  %i.bx = zext i8 %i.bw to i64
  %i.by = shl nuw nsw i64 %i.bx, 8
  %i.bz = or i64 %i.bu, %i.by
  %i.ca = getelementptr inbounds nuw i8, ptr %i.aw, i64 6
  %i.cb = load i8, ptr %i.ca, align 1, !tbaa !10
  %i.cc = zext i8 %i.cb to i64
  %i.cd = or i64 %i.bz, %i.cc
  store i64 %i.cd, ptr %1, align 8, !tbaa !88
  %i.ce = getelementptr inbounds nuw i8, ptr %i.aw, i64 7
  br label %.loopexit.sink.split

bb.f:                                             ; preds = %bb.c
  %i.cf = load i64, ptr %1, align 8, !tbaa !88
  %i.cg = shl i64 %i.cf, 48
  %i.ch = load ptr, ptr %0, align 8, !tbaa !178   ; 7 uses
  %i.ci = load i8, ptr %i.ch, align 1, !tbaa !10
  %i.cj = zext i8 %i.ci to i64
  %i.ck = shl nuw nsw i64 %i.cj, 40
  %i.cl = or disjoint i64 %i.ck, %i.cg
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ch, i64 1
  %i.cn = load i8, ptr %i.cm, align 1, !tbaa !10
  %i.co = zext i8 %i.cn to i64
  %i.cp = shl nuw nsw i64 %i.co, 32
  %i.cq = or disjoint i64 %i.cl, %i.cp
  %i.cr = getelementptr inbounds nuw i8, ptr %i.ch, i64 2
  %i.cs = load i8, ptr %i.cr, align 1, !tbaa !10
  %i.ct = zext i8 %i.cs to i64
  %i.cu = shl nuw nsw i64 %i.ct, 24
  %i.cv = or disjoint i64 %i.cq, %i.cu
  %i.cw = getelementptr inbounds nuw i8, ptr %i.ch, i64 3
  %i.cx = load i8, ptr %i.cw, align 1, !tbaa !10
  %i.cy = zext i8 %i.cx to i64
  %i.cz = shl nuw nsw i64 %i.cy, 16
  %i.da = or disjoint i64 %i.cv, %i.cz
  %i.db = getelementptr inbounds nuw i8, ptr %i.ch, i64 4
  %i.dc = load i8, ptr %i.db, align 1, !tbaa !10
  %i.dd = zext i8 %i.dc to i64
  %i.de = shl nuw nsw i64 %i.dd, 8
  %i.df = or disjoint i64 %i.da, %i.de
  %i.dg = getelementptr inbounds nuw i8, ptr %i.ch, i64 5
  %i.dh = load i8, ptr %i.dg, align 1, !tbaa !10
  %i.di = zext i8 %i.dh to i64
  %i.dj = or i64 %i.df, %i.di
  store i64 %i.dj, ptr %1, align 8, !tbaa !88
  %i.dk = getelementptr inbounds nuw i8, ptr %i.ch, i64 6
  br label %.loopexit.sink.split

bb.g:                                             ; preds = %bb.c, %bb.b
  %i.dl = icmp eq i32 %i.f, 0
  br i1 %i.dl, label %.loopexit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.dm = load i64, ptr %1, align 8, !tbaa !88
  %i.dn = shl i64 %i.dm, 8
  %i.do = load ptr, ptr %0, align 8, !tbaa !178   ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 1
  store ptr %i.dp, ptr %0, align 8, !tbaa !178
  %i.dq = load i8, ptr %i.do, align 1, !tbaa !10
  %i.dr = zext i8 %i.dq to i64
  %i.ds = or disjoint i64 %i.dn, %i.dr
  store i64 %i.ds, ptr %1, align 8, !tbaa !88
  %i.dt = add nsw i32 %i.f, -1                    ; 2 uses
  store i32 %i.dt, ptr %i.d, align 8, !tbaa !93
  %i.du = add nsw i32 %i.e, 8                     ; 2 uses
  store i32 %i.du, ptr %i.a, align 8, !tbaa !87
  %i.dv = add nsw i32 %.048, -8
  br label %bb.b

.loopexit.sink.split:                             ; preds = %bb.f, %bb.e, %bb.d
  %.sink = phi ptr [ %i.dk, %bb.f ], [ %i.ce, %bb.e ], [ %i.at, %bb.d ]
  %.sink82 = phi i32 [ -6, %bb.f ], [ -7, %bb.e ], [ -8, %bb.d ]
  %.sink81 = phi i32 [ 48, %bb.f ], [ 56, %bb.e ], [ 64, %bb.d ]
  store ptr %.sink, ptr %0, align 8, !tbaa !178
  %i.dw = add nsw i32 %i.f, %.sink82
  store i32 %i.dw, ptr %i.d, align 8, !tbaa !93
  %i.dx = add nsw i32 %i.e, %.sink81
  store i32 %i.dx, ptr %i.a, align 8, !tbaa !87
  br label %.loopexit

.loopexit:                                        ; preds = %bb.c, %bb.g, %.loopexit.sink.split
  %.150.ph = phi i32 [ 1, %.loopexit.sink.split ], [ 0, %bb.g ], [ 1, %bb.c ]
  ret i32 %.150.ph
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc i32 @lzh_read_pt_bitlen(ptr nofree noundef captures(none) %0, i32 noundef %1, i32 noundef %2) unnamed_addr #13 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !73   ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 40 ; 4 uses
  %i.d = icmp slt i32 %1, %2
  br i1 %i.d, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 48 ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 264
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 196
  %i.h = sext i32 %1 to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.h
  %indvars.iv = phi i64 [ %i.h, %.lr.ph ], [ %indvars.iv.next, %bb.h ] ; 4 uses
  %i.i = load i32, ptr %i.e, align 8, !tbaa !87   ; 2 uses
  %i.j = icmp sgt i32 %i.i, 2
  br i1 %i.j, label %thread-pre-split, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = tail call fastcc i32 @lzh_br_fillup(ptr noundef %0, ptr noundef nonnull %i.c)
  %.not = icmp ne i32 %i.k, 0
  %i.l = load i32, ptr %i.e, align 8, !tbaa !87   ; 2 uses
  %i.m = icmp sgt i32 %i.l, 2
  %or.cond58 = select i1 %.not, i1 true, i1 %i.m
  br i1 %or.cond58, label %thread-pre-split, label %._crit_edge.loopexit.split.loop.exit55

thread-pre-split:                                 ; preds = %bb.c, %bb.b
  %i.n = phi i32 [ %i.i, %bb.b ], [ %i.l, %bb.c ] ; 3 uses
  %i.o = load i64, ptr %i.c, align 8, !tbaa !88
  %i.p = add nsw i32 %i.n, -3                     ; 2 uses
  %i.q = zext nneg i32 %i.p to i64
  %i.r = lshr i64 %i.o, %i.q
  %i.s = trunc i64 %i.r to i32
  %i.t = and i32 %i.s, 7                          ; 2 uses
  %i.u = icmp eq i32 %i.t, 7
  br i1 %i.u, label %bb.d, label %bb.h

bb.d:                                             ; preds = %thread-pre-split
  %i.v = icmp sgt i32 %i.n, 12
  br i1 %i.v, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.w = tail call fastcc i32 @lzh_br_fillup(ptr noundef %0, ptr noundef nonnull %i.c)
  %.not33 = icmp ne i32 %i.w, 0
  %.pre = load i32, ptr %i.e, align 8, !tbaa !87  ; 2 uses
  %i.x = icmp sgt i32 %.pre, 12
  %or.cond = select i1 %.not33, i1 true, i1 %i.x
  br i1 %or.cond, label %bb.f, label %._crit_edge.loopexit.split.loop.exit

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.y = phi i32 [ %i.n, %bb.d ], [ %.pre, %bb.e ] ; 2 uses
  %i.z = load i64, ptr %i.c, align 8, !tbaa !88
  %i.aa = add nsw i32 %i.y, -13
  %i.ab = zext nneg i32 %i.aa to i64
  %i.ac = lshr i64 %i.z, %i.ab
  %i.ad = and i64 %i.ac, 1023                     ; 2 uses
  %.not34 = icmp eq i64 %i.ad, 1023
  br i1 %.not34, label %._crit_edge, label %bb.g

bb.g:                                             ; preds = %bb.f
  %3 = getelementptr inbounds nuw i8, ptr @bitlen_tbl, i64 %i.ad
  %4 = load i8, ptr %3, align 1, !tbaa !10
  %i.ae = sext i8 %4 to i32                       ; 2 uses
  %.neg35 = add i32 %i.y, 3
  %i.af = sub i32 %.neg35, %i.ae
  br label %bb.h

bb.h:                                             ; preds = %thread-pre-split, %bb.g
  %storemerge = phi i32 [ %i.af, %bb.g ], [ %i.p, %thread-pre-split ]
  %.029 = phi i32 [ %i.ae, %bb.g ], [ %i.t, %thread-pre-split ] ; 2 uses
  store i32 %storemerge, ptr %i.e, align 8, !tbaa !87
  %i.ag = trunc nsw i32 %.029 to i8
  %i.ah = load ptr, ptr %i.f, align 8, !tbaa !89
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %i.ai = getelementptr inbounds i8, ptr %i.ah, i64 %indvars.iv
  store i8 %i.ag, ptr %i.ai, align 1, !tbaa !10
  %i.aj = sext i32 %.029 to i64
  %i.ak = getelementptr inbounds [4 x i8], ptr %i.g, i64 %i.aj ; 2 uses
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !92
  %i.am = add nsw i32 %i.al, 1
  store i32 %i.am, ptr %i.ak, align 4, !tbaa !92
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond.not = icmp eq i32 %2, %lftr.wideiv
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !179

._crit_edge.loopexit.split.loop.exit:             ; preds = %bb.e
  %i.an = trunc nsw i64 %indvars.iv to i32
  br label %._crit_edge

._crit_edge.loopexit.split.loop.exit55:           ; preds = %bb.c
  %i.ao = trunc nsw i64 %indvars.iv to i32
  br label %._crit_edge

._crit_edge:                                      ; preds = %bb.h, %bb.f, %._crit_edge.loopexit.split.loop.exit, %._crit_edge.loopexit.split.loop.exit55, %bb.a
  %.030 = phi i32 [ %1, %bb.a ], [ %i.ao, %._crit_edge.loopexit.split.loop.exit55 ], [ %i.an, %._crit_edge.loopexit.split.loop.exit ], [ %2, %bb.h ], [ -1, %bb.f ]
  ret i32 %.030
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc range(i32 0, 2) i32 @lzh_make_huffman_table(ptr nofree noundef captures(none) %0) unnamed_addr #13 {
bb.a:
  %i.a = alloca [17 x i32], align 16              ; 22 uses
  %i.b = alloca [17 x i32], align 16              ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #16
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 4 ; 3 uses
  store i32 0, ptr %i.c, align 4, !tbaa !92
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 4 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load i32, ptr %i.e, align 4, !tbaa !92   ; 2 uses
  %.not220 = icmp ne i32 %i.f, 0
  %i.g = shl nsw i32 %i.f, 15                     ; 2 uses
  %.1191 = zext i1 %.not220 to i32
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i32 %i.g, ptr %i.h, align 8, !tbaa !92
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.j = load i32, ptr %i.i, align 4, !tbaa !92   ; 2 uses
  %.not220.1 = icmp eq i32 %i.j, 0
  %i.k = shl nsw i32 %i.j, 14
  %.1191.1 = select i1 %.not220.1, i32 %.1191, i32 2
  %.1189.1 = add nsw i32 %i.k, %i.g               ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  store i32 %.1189.1, ptr %i.l, align 4, !tbaa !92
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.n = load i32, ptr %i.m, align 4, !tbaa !92   ; 2 uses
  %.not220.2 = icmp eq i32 %i.n, 0
  %i.o = shl nsw i32 %i.n, 13
  %.1191.2 = select i1 %.not220.2, i32 %.1191.1, i32 3
  %.1189.2 = add nsw i32 %i.o, %.1189.1           ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i32 %.1189.2, ptr %i.p, align 16, !tbaa !92
  store <4 x i32> <i32 32768, i32 16384, i32 8192, i32 4096>, ptr %i.d, align 4, !tbaa !92
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.r = load i32, ptr %i.q, align 4, !tbaa !92   ; 2 uses
  %.not220.3 = icmp eq i32 %i.r, 0
  %i.s = shl nsw i32 %i.r, 12
  %.1191.3 = select i1 %.not220.3, i32 %.1191.2, i32 4
  %.1189.3 = add nsw i32 %i.s, %.1189.2           ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 20 ; 3 uses
  store i32 %.1189.3, ptr %i.t, align 4, !tbaa !92
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 20 ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.w = load i32, ptr %i.v, align 4, !tbaa !92   ; 2 uses
  %.not220.4 = icmp eq i32 %i.w, 0
  %i.x = shl nsw i32 %i.w, 11
  %.1191.4 = select i1 %.not220.4, i32 %.1191.3, i32 5
  %.1189.4 = add nsw i32 %i.x, %.1189.3           ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 3 uses
  store i32 %.1189.4, ptr %i.y, align 8, !tbaa !92
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !92  ; 2 uses
  %.not220.5 = icmp eq i32 %i.aa, 0
  %i.ab = shl nsw i32 %i.aa, 10
  %.1191.5 = select i1 %.not220.5, i32 %.1191.4, i32 6
  %.1189.5 = add nsw i32 %i.ab, %.1189.4          ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.a, i64 28 ; 3 uses
  store i32 %.1189.5, ptr %i.ac, align 4, !tbaa !92
  %i.ad = getelementptr inbounds nuw i8, ptr %i.b, i64 28
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !92 ; 2 uses
  %.not220.6 = icmp eq i32 %i.af, 0
  %i.ag = shl nsw i32 %i.af, 9
  %.1191.6 = select i1 %.not220.6, i32 %.1191.5, i32 7
  %.1189.6 = add nsw i32 %i.ag, %.1189.5          ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 3 uses
  store i32 %.1189.6, ptr %i.ah, align 16, !tbaa !92
  store <4 x i32> <i32 2048, i32 1024, i32 512, i32 256>, ptr %i.u, align 4, !tbaa !92
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !92 ; 2 uses
  %.not220.7 = icmp eq i32 %i.aj, 0
  %i.ak = shl nsw i32 %i.aj, 8
  %.1191.7 = select i1 %.not220.7, i32 %.1191.6, i32 8
  %.1189.7 = add nsw i32 %i.ak, %.1189.6          ; 3 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.a, i64 36 ; 3 uses
  store i32 %.1189.7, ptr %i.al, align 4, !tbaa !92
  %i.am = getelementptr inbounds nuw i8, ptr %i.b, i64 36 ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !92 ; 2 uses
  %.not220.8 = icmp eq i32 %i.ao, 0
  %i.ap = shl nsw i32 %i.ao, 7
  %.1191.8 = select i1 %.not220.8, i32 %.1191.7, i32 9
  %.1189.8 = add nsw i32 %i.ap, %.1189.7          ; 3 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.a, i64 40 ; 3 uses
  store i32 %.1189.8, ptr %i.aq, align 8, !tbaa !92
  %i.ar = getelementptr inbounds nuw i8, ptr %i.b, i64 40 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.at = load i32, ptr %i.as, align 4, !tbaa !92 ; 3 uses
  %.not220.9 = icmp eq i32 %i.at, 0
  %i.au = shl nsw i32 %i.at, 6
  %.1191.9 = select i1 %.not220.9, i32 %.1191.8, i32 10
  %.1189.9 = add nsw i32 %i.au, %.1189.8          ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.a, i64 44
  store i32 %.1189.9, ptr %i.av, align 4, !tbaa !92
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !92 ; 2 uses
  %.not220.10 = icmp eq i32 %i.ax, 0
  %i.ay = shl nsw i32 %i.ax, 5
  %.1191.10 = select i1 %.not220.10, i32 %.1191.9, i32 11
  %.1189.10 = add nsw i32 %i.ay, %.1189.9         ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store i32 %.1189.10, ptr %i.az, align 16, !tbaa !92
  store <4 x i32> <i32 128, i32 64, i32 32, i32 16>, ptr %i.am, align 4, !tbaa !92
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !92 ; 2 uses
  %.not220.11 = icmp eq i32 %i.bb, 0
  %i.bc = shl nsw i32 %i.bb, 4
  %.1191.11 = select i1 %.not220.11, i32 %.1191.10, i32 12
  %.1189.11 = add nsw i32 %i.bc, %.1189.10        ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.a, i64 52
  store i32 %.1189.11, ptr %i.bd, align 4, !tbaa !92
  %i.be = getelementptr inbounds nuw i8, ptr %i.b, i64 52
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !92 ; 2 uses
  %.not220.12 = icmp eq i32 %i.bg, 0
  %i.bh = shl nsw i32 %i.bg, 3
  %.1191.12 = select i1 %.not220.12, i32 %.1191.11, i32 13
  %.1189.12 = add nsw i32 %i.bh, %.1189.11        ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  store i32 %.1189.12, ptr %i.bi, align 8, !tbaa !92
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 68
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !92 ; 2 uses
  %.not220.13 = icmp eq i32 %i.bk, 0
  %i.bl = shl nsw i32 %i.bk, 2
  %.1191.13 = select i1 %.not220.13, i32 %.1191.12, i32 14
  %.1189.13 = add nsw i32 %i.bl, %.1189.12        ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.a, i64 60
  store i32 %.1189.13, ptr %i.bm, align 4, !tbaa !92
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !92 ; 2 uses
  %.not220.14 = icmp eq i32 %i.bo, 0
  %i.bp = shl nsw i32 %i.bo, 1
  %.1191.14 = select i1 %.not220.14, i32 %.1191.13, i32 15
  %.1189.14 = add nsw i32 %i.bp, %.1189.13        ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  store i32 %.1189.14, ptr %i.bq, align 16, !tbaa !92
  store <4 x i32> <i32 8, i32 4, i32 2, i32 1>, ptr %i.be, align 4, !tbaa !92
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 76
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !92 ; 2 uses
  %.not220.15 = icmp eq i32 %i.bs, 0
  %.1191.15 = select i1 %.not220.15, i32 %.1191.14, i32 16 ; 10 uses
  %.1189.15 = add nsw i32 %i.bs, %.1189.14
  %.not = icmp eq i32 %.1189.15, 65536
  br i1 %.not, label %bb.b, label %.thread221

bb.b:                                             ; preds = %bb.a
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.bu = load i32, ptr %i.bt, align 8, !tbaa !84
  %i.bv = icmp sgt i32 %.1191.15, %i.bu
  br i1 %i.bv, label %.thread221, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i32 %.1191.15, ptr %i.bw, align 8, !tbaa !85
  %i.bx = icmp samesign ult i32 %.1191.15, 16
  br i1 %i.bx, label %bb.d, label %.thread

bb.d:                                             ; preds = %bb.c
  %i.by = sub nuw nsw i32 16, %.1191.15           ; 6 uses
  %.not209232 = icmp eq i32 %.1191.15, 0
  br i1 %.not209232, label %._crit_edge..loopexit225_crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.d
end_hunk_0
