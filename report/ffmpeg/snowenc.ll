inline.NumInlined: 82
inline.NumDeleted: 25
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 23
loop-unroll.NumUnrolled: 29
begin_hunk_0_@encode_init:bb.a
  br i1 %.not214, label %.thread, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.gn = getelementptr inbounds nuw i8, ptr %0, i64 496 ; 2 uses
  %i.go = load ptr, ptr %i.gn, align 8, !tbaa !102
  %.not215 = icmp eq ptr %i.go, null
  br i1 %.not215, label %bb.j, label %.thread

bb.j:                                             ; preds = %bb.i
  %i.gp = tail call noalias ptr @av_mallocz(i64 noundef 256) #12 ; 2 uses
  store ptr %i.gp, ptr %i.gn, align 8, !tbaa !102
  %.not216 = icmp eq ptr %i.gp, null
  br i1 %.not216, label %.critedge, label %..thread_crit_edge

..thread_crit_edge:                               ; preds = %bb.j
  %.pre239 = load i32, ptr %i.n, align 8, !tbaa !76
  br label %.thread

.thread:                                          ; preds = %..thread_crit_edge, %bb.i, %bb.h
  %i.gq = phi i32 [ %.pre239, %..thread_crit_edge ], [ %i.gl, %bb.i ], [ %i.gl, %bb.h ]
  %i.gr = and i32 %i.gq, 1026
  %or.cond.not = icmp eq i32 %i.gr, 2
  br i1 %or.cond.not, label %bb.l, label %bb.k

bb.k:                                             ; preds = %.thread
  %i.gs = tail call i32 @ff_rate_control_init(ptr noundef nonnull %i.c) #12 ; 2 uses
  %i.gt = icmp slt i32 %i.gs, 0
  br i1 %i.gt, label %.critedge, label %._crit_edge240

._crit_edge240:                                   ; preds = %bb.k
  %.pre241 = load i32, ptr %i.n, align 8, !tbaa !76
  %.pre242 = and i32 %.pre241, 1026
  %i.gu = icmp eq i32 %.pre242, 0
  %i.gv = zext i1 %i.gu to i32
  br label %bb.l

bb.l:                                             ; preds = %._crit_edge240, %.thread
  %.pre-phi = phi i32 [ %i.gv, %._crit_edge240 ], [ 0, %.thread ]
  %i.gw = getelementptr inbounds nuw i8, ptr %i.b, i64 155960
  store i32 %.pre-phi, ptr %i.gw, align 8, !tbaa !103
  %i.gx = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.gy = load i32, ptr %i.gx, align 8, !tbaa !104 ; 5 uses
  %i.gz = icmp ult i32 %i.gy, 9
  %switch.maskindex = trunc i32 %i.gy to i16
  %switch.shifted = lshr i16 353, %switch.maskindex
  %switch.lobit = trunc i16 %switch.shifted to i1
  %or.cond257 = select i1 %i.gz, i1 %switch.lobit, i1 false
  br i1 %or.cond257, label %switch.lookup, label %bb.m

switch.lookup:                                    ; preds = %bb.l
  %i.ha = zext nneg i32 %i.gy to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table.encode_init, i64 %i.ha
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i32
  %i.hb = zext nneg i32 %i.gy to i64
  %switch.gep254 = getelementptr inbounds nuw i8, ptr @switch.table.encode_init.7, i64 %i.hb
  %switch.load255 = load i8, ptr %switch.gep254, align 1
  %switch.ext256 = zext i8 %switch.load255 to i32
  %i.hc = getelementptr inbounds nuw i8, ptr %i.b, i64 6384
  store i32 %switch.ext, ptr %i.hc, align 16, !tbaa !105
  %i.hd = getelementptr inbounds nuw i8, ptr %i.b, i64 6328
  store i32 %switch.ext256, ptr %i.hd, align 8, !tbaa !106
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %switch.lookup
  %i.he = getelementptr inbounds nuw i8, ptr %i.b, i64 6332 ; 2 uses
  %i.hf = getelementptr inbounds nuw i8, ptr %i.b, i64 6336 ; 2 uses
  %i.hg = tail call i32 @av_pix_fmt_get_chroma_sub_sample(i32 noundef %i.gy, ptr noundef nonnull %i.he, ptr noundef nonnull %i.hf) #12 ; 2 uses
  %.not220 = icmp eq i32 %i.hg, 0
  br i1 %.not220, label %bb.n, label %.critedge

bb.n:                                             ; preds = %bb.m
  %i.hh = tail call ptr @av_frame_alloc() #12     ; 9 uses
  %i.hi = getelementptr inbounds nuw i8, ptr %i.b, i64 1768
  store ptr %i.hh, ptr %i.hi, align 8, !tbaa !107
  %.not221 = icmp eq ptr %i.hh, null
  br i1 %.not221, label %.critedge, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.hj = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %i.hk = load ptr, ptr %i.hj, align 8, !tbaa !108 ; 2 uses
  %i.hl = getelementptr inbounds nuw i8, ptr %i.hk, i64 112
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hh, i64 104 ; 2 uses
  %i.hn = load <2 x i32>, ptr %i.hl, align 8, !tbaa !93
  %i.ho = add nsw <2 x i32> %i.hn, splat (i32 32)
  store <2 x i32> %i.ho, ptr %i.hm, align 8, !tbaa !93
  %i.hp = tail call i32 @ff_encode_alloc_frame(ptr noundef %i.hk, ptr noundef nonnull %i.hh) #12 ; 2 uses
  %i.hq = icmp slt i32 %i.hp, 0
  br i1 %i.hq, label %.critedge, label %.preheader.i

.preheader.i:                                     ; preds = %bb.o
  %i.hr = load ptr, ptr %i.hh, align 8, !tbaa !109 ; 2 uses
  %.not27.i = icmp eq ptr %i.hr, null
  br i1 %.not27.i, label %.loopexit, label %bb.p

bb.p:                                             ; preds = %.preheader.i
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hh, i64 64 ; 2 uses
  %i.ht = load i32, ptr %i.hs, align 8, !tbaa !93
  %i.hu = shl nsw i32 %i.ht, 4
  %i.hv = sext i32 %i.hu to i64
  %i.hw = getelementptr i8, ptr %i.hr, i64 %i.hv
  %i.hx = getelementptr i8, ptr %i.hw, i64 16
  store ptr %i.hx, ptr %i.hh, align 8, !tbaa !109
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hh, i64 8 ; 2 uses
  %i.hz = load ptr, ptr %i.hy, align 8, !tbaa !109 ; 2 uses
  %.not.peel.i = icmp eq ptr %i.hz, null
  br i1 %.not.peel.i, label %.loopexit, label %.peel.next.i

.peel.next.i:                                     ; preds = %bb.p
  %i.ia = load i32, ptr %i.he, align 4, !tbaa !110
  %i.ib = load i32, ptr %i.hf, align 16, !tbaa !111
  %i.ic = lshr i32 16, %i.ib
  %i.id = lshr i32 16, %i.ia
  br label %bb.q

bb.q:                                             ; preds = %bb.q, %.peel.next.i
  %indvars.iv.i = phi i64 [ 1, %.peel.next.i ], [ %indvars.iv.next.i, %bb.q ] ; 2 uses
  %i.ie = phi ptr [ %i.hz, %.peel.next.i ], [ %i.in, %bb.q ]
  %i.if = phi ptr [ %i.hy, %.peel.next.i ], [ %i.im, %bb.q ]
  %i.ig = getelementptr inbounds nuw [4 x i8], ptr %i.hs, i64 %indvars.iv.i
  %i.ih = load i32, ptr %i.ig, align 4, !tbaa !93
  %i.ii = mul nsw i32 %i.ih, %i.ic
  %i.ij = add nsw i32 %i.ii, %i.id
  %i.ik = sext i32 %i.ij to i64
  %i.il = getelementptr inbounds i8, ptr %i.ie, i64 %i.ik
  store ptr %i.il, ptr %i.if, align 8, !tbaa !109
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.im = getelementptr inbounds nuw [8 x i8], ptr %i.hh, i64 %indvars.iv.next.i ; 2 uses
  %i.in = load ptr, ptr %i.im, align 8, !tbaa !109 ; 2 uses
  %.not.i = icmp eq ptr %i.in, null
  br i1 %.not.i, label %.loopexit, label %bb.q, !llvm.loop !112

.loopexit:                                        ; preds = %bb.q, %bb.p, %.preheader.i
  %i.io = load ptr, ptr %i.hj, align 8, !tbaa !108
  %i.ip = getelementptr inbounds nuw i8, ptr %i.io, i64 112
  %i.iq = load <2 x i32>, ptr %i.ip, align 8, !tbaa !93
  store <2 x i32> %i.iq, ptr %i.hm, align 8, !tbaa !93
  %i.ir = load i32, ptr %i.fr, align 8, !tbaa !94
  %i.is = add nsw i32 %i.ir, 128
  %i.it = sext i32 %i.is to i64
  %i.iu = tail call noalias ptr @av_calloc(i64 noundef %i.it, i64 noundef 78) #12 ; 2 uses
  %i.iv = getelementptr inbounds nuw i8, ptr %i.b, i64 172392
  store ptr %i.iu, ptr %i.iv, align 8, !tbaa !114
  %.not222 = icmp eq ptr %i.iu, null
  br i1 %.not222, label %.critedge, label %bb.r

bb.r:                                             ; preds = %.loopexit
  %i.iw = getelementptr inbounds nuw i8, ptr %i.b, i64 155980
  %i.ix = load i32, ptr %i.iw, align 4, !tbaa !115
  %i.iy = icmp eq i32 %i.ix, 3
  br i1 %i.iy, label %bb.s, label %.critedge

bb.s:                                             ; preds = %bb.r
  %i.iz = load i32, ptr %i.gk, align 4, !tbaa !101
  %.not225231 = icmp sgt i32 %i.iz, 0
  br i1 %.not225231, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %bb.s
  %i.ja = getelementptr inbounds nuw i8, ptr %i.b, i64 6372
  %i.jb = load i32, ptr %i.ja, align 4, !tbaa !116
  %i.jc = getelementptr inbounds nuw i8, ptr %i.b, i64 6368
  %i.jd = load i32, ptr %i.jc, align 16, !tbaa !117
  %i.je = mul nsw i32 %i.jb, %i.jd
  %i.jf = load i32, ptr %i.s, align 8, !tbaa !80
  %i.jg = shl nsw i32 %i.jf, 1
  %i.jh = shl i32 %i.je, %i.jg
  %i.ji = sext i32 %i.jh to i64                   ; 2 uses
  %i.jj = getelementptr inbounds nuw i8, ptr %i.b, i64 6160
  %i.jk = getelementptr inbounds nuw i8, ptr %i.b, i64 6224
  br label %bb.u

bb.t:                                             ; preds = %bb.u
  %indvars.iv.next237 = add nuw nsw i64 %indvars.iv236, 1 ; 2 uses
  %i.jl = load i32, ptr %i.gk, align 4, !tbaa !101
  %i.jm = sext i32 %i.jl to i64
  %.not225 = icmp slt i64 %indvars.iv.next237, %i.jm
  br i1 %.not225, label %bb.u, label %.critedge, !llvm.loop !118

bb.u:                                             ; preds = %.lr.ph, %bb.t
  %indvars.iv236 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next237, %bb.t ] ; 3 uses
  %i.jn = tail call noalias ptr @av_calloc(i64 noundef %i.ji, i64 noundef 4) #12
  %i.jo = getelementptr inbounds nuw [8 x i8], ptr %i.jj, i64 %indvars.iv236 ; 2 uses
  store ptr %i.jn, ptr %i.jo, align 8, !tbaa !119
  %i.jp = tail call noalias ptr @av_calloc(i64 noundef %i.ji, i64 noundef 4) #12 ; 2 uses
  %i.jq = getelementptr inbounds nuw [8 x i8], ptr %i.jk, i64 %indvars.iv236
  store ptr %i.jp, ptr %i.jq, align 8, !tbaa !120
  %i.jr = load ptr, ptr %i.jo, align 8, !tbaa !119
  %.not223 = icmp eq ptr %i.jr, null
  %.not224 = icmp eq ptr %i.jp, null
  %or.cond226 = select i1 %.not223, i1 true, i1 %.not224
  br i1 %or.cond226, label %.critedge, label %bb.t

.critedge:                                        ; preds = %bb.u, %bb.t, %bb.s, %bb.o, %bb.r, %.loopexit, %bb.n, %bb.m, %bb.k, %bb.j, %bb.g, %bb.f, %bb.e, %bb.c
  %.1 = phi i32 [ -22, %bb.c ], [ %i.ff, %bb.f ], [ %i.ad, %bb.e ], [ -12, %bb.j ], [ %i.gs, %bb.k ], [ -12, %bb.n ], [ %i.hp, %bb.o ], [ -12, %.loopexit ], [ 0, %bb.r ], [ %i.hg, %bb.m ], [ -12, %bb.g ], [ 0, %bb.s ], [ -12, %bb.u ], [ 0, %bb.t ]
  ret i32 %.1
}

; Function Attrs: nounwind uwtable
define internal range(i32 -2147483648, 1) i32 @encode_frame(ptr noundef %0, ptr noundef %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef writeonly captures(none) %3) #1 {
bb.a:
  %4 = alloca [32 x i8], align 16                 ; 4 uses
  %5 = alloca [4224 x i8], align 16               ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !9    ; 140 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 156784 ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 22 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !121
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 11 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !108  ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 112
  %i.j = load i32, ptr %i.i, align 8, !tbaa !94   ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 116
  %i.l = load i32, ptr %i.k, align 4, !tbaa !95   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 6368 ; 7 uses
  %i.n = load i32, ptr %i.m, align 8, !tbaa !117
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 6372 ; 10 uses
  %i.p = load i32, ptr %i.o, align 4, !tbaa !116
  %i.q = mul i32 %i.n, 768
  %i.r = mul i32 %i.q, %i.p
  %i.s = add nsw i32 %i.r, 16384
  %i.t = sext i32 %i.s to i64
  %i.u = tail call i32 @ff_alloc_packet(ptr noundef %0, ptr noundef %1, i64 noundef %i.t) #12 ; 2 uses
  %i.v = icmp slt i32 %i.u, 0
  br i1 %i.v, label %get_encode_buffer.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 3 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !122
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 4 uses
  %i.z = load i32, ptr %i.y, align 8, !tbaa !124
  tail call void @ff_init_range_encoder(ptr noundef nonnull %i.d, ptr noundef %i.x, i32 noundef %i.z) #12
  tail call void @ff_build_rac_states(ptr noundef nonnull %i.d, i32 noundef 214748364, i32 noundef 248) #12
  %i.aa = getelementptr inbounds nuw i8, ptr %i.b, i64 6384 ; 6 uses
  %i.ab = load i32, ptr %i.aa, align 8, !tbaa !105
  %i.ac = icmp sgt i32 %i.ab, 0
  br i1 %i.ac, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.b
  %i.ad = getelementptr inbounds nuw i8, ptr %i.b, i64 6332
  %i.ae = getelementptr inbounds nuw i8, ptr %i.b, i64 6336
  %i.af = sub nsw i32 0, %i.l
  %i.ag = getelementptr inbounds nuw i8, ptr %i.b, i64 1768 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.ai = sub nsw i32 0, %i.j
  %i.aj = getelementptr inbounds nuw i8, ptr %i.b, i64 155944
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %._crit_edge1486
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %._crit_edge1486 ] ; 8 uses
  %.not581 = icmp eq i64 %indvars.iv, 0
  br i1 %.not581, label %.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ak = load i32, ptr %i.ad, align 4, !tbaa !110
  %i.al = load i32, ptr %i.ae, align 8, !tbaa !111
  br label %.thread

.thread:                                          ; preds = %bb.c, %bb.d
  %i.am = phi i32 [ %i.ak, %bb.d ], [ 0, %bb.c ]  ; 2 uses
  %i.an = phi i32 [ %i.al, %bb.d ], [ 0, %bb.c ]  ; 2 uses
  %i.ao = ashr i32 %i.af, %i.an                   ; 2 uses
  %i.ap = sub nsw i32 0, %i.ao                    ; 2 uses
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %indvars.iv
  %i.as = ashr i32 %i.ai, %i.am
  %i.at = sub nsw i32 0, %i.as                    ; 2 uses
  %i.au = icmp slt i32 %i.ao, 0
  br i1 %i.au, label %.lr.ph1485.preheader, label %._crit_edge1486

.lr.ph1485.preheader:                             ; preds = %.thread
  %i.av = sext i32 %i.at to i64
  br label %.lr.ph1485

.lr.ph1485:                                       ; preds = %.lr.ph1485.preheader, %.lr.ph1485
  %.05331484 = phi i32 [ %i.bk, %.lr.ph1485 ], [ 0, %.lr.ph1485.preheader ] ; 3 uses
  %i.aw = load ptr, ptr %i.ag, align 8, !tbaa !107 ; 2 uses
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %indvars.iv
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !109
  %i.az = getelementptr inbounds nuw i8, ptr %i.aw, i64 64
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %i.az, i64 %indvars.iv
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !93
  %i.bc = mul nsw i32 %i.bb, %.05331484
  %i.bd = sext i32 %i.bc to i64
  %i.be = getelementptr inbounds i8, ptr %i.ay, i64 %i.bd
  %i.bf = load ptr, ptr %i.aq, align 8, !tbaa !109
  %i.bg = load i32, ptr %i.ar, align 4, !tbaa !93
  %i.bh = mul nsw i32 %i.bg, %.05331484
  %i.bi = sext i32 %i.bh to i64
  %i.bj = getelementptr inbounds i8, ptr %i.bf, i64 %i.bi
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.be, ptr align 1 %i.bj, i64 %i.av, i1 false)
  %i.bk = add nuw nsw i32 %.05331484, 1           ; 2 uses
  %i.bl = icmp slt i32 %i.bk, %i.ap
  br i1 %i.bl, label %.lr.ph1485, label %._crit_edge1486, !llvm.loop !125

._crit_edge1486:                                  ; preds = %.lr.ph1485, %.thread
  %i.bm = load ptr, ptr %i.aj, align 8, !tbaa !126
  %i.bn = load ptr, ptr %i.ag, align 8, !tbaa !107 ; 2 uses
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %i.bn, i64 %indvars.iv
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !109
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bn, i64 64
  %i.br = getelementptr inbounds nuw [4 x i8], ptr %i.bq, i64 %indvars.iv
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !93
  %i.bt = sext i32 %i.bs to i64
  %i.bu = lshr i32 16, %i.am
  %i.bv = lshr i32 16, %i.an
  tail call void %i.bm(ptr noundef %i.bp, i64 noundef %i.bt, i32 noundef %i.at, i32 noundef %i.ap, i32 noundef %i.bu, i32 noundef %i.bv, i32 noundef 3) #12
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.bw = load i32, ptr %i.aa, align 8, !tbaa !105
  %i.bx = sext i32 %i.bw to i64
  %i.by = icmp slt i64 %indvars.iv.next, %i.bx
  br i1 %i.by, label %bb.c, label %._crit_edge, !llvm.loop !127

._crit_edge:                                      ; preds = %._crit_edge1486, %bb.b
  %i.bz = getelementptr inbounds nuw i8, ptr %i.b, i64 1768 ; 2 uses
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !107 ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %2, i64 120
  %i.cc = load i32, ptr %i.cb, align 8, !tbaa !128
  %i.cd = getelementptr inbounds nuw i8, ptr %i.ca, i64 120 ; 10 uses
  store i32 %i.cc, ptr %i.cd, align 8, !tbaa !128
  %i.ce = getelementptr inbounds nuw i8, ptr %2, i64 160
  %i.cf = load i32, ptr %i.ce, align 8, !tbaa !133 ; 3 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.ca, i64 160 ; 5 uses
  store i32 %i.cf, ptr %i.cg, align 8, !tbaa !133
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 824 ; 3 uses
  %i.ci = load i64, ptr %i.ch, align 8, !tbaa !134 ; 3 uses
  %i.cj = trunc i64 %i.ci to i32
  %i.ck = getelementptr inbounds nuw i8, ptr %i.b, i64 163112
  store i32 %i.cj, ptr %i.ck, align 8, !tbaa !135
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 4 uses
  %i.cm = load i32, ptr %i.cl, align 8, !tbaa !76 ; 2 uses
  %i.cn = and i32 %i.cm, 1024
  %.not = icmp eq i32 %i.cn, 0
  br i1 %.not, label %bb.g, label %bb.e

bb.e:                                             ; preds = %._crit_edge
  %i.co = getelementptr inbounds nuw i8, ptr %i.b, i64 167256
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !136
  %i.cq = getelementptr inbounds [72 x i8], ptr %i.cp, i64 %i.ci
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 48
  %i.cs = load i32, ptr %i.cr, align 8, !tbaa !137 ; 3 uses
  store i32 %i.cs, ptr %i.cd, align 8, !tbaa !128
  %i.ct = getelementptr inbounds nuw i8, ptr %i.b, i64 158064
  store i32 %i.cs, ptr %i.ct, align 16, !tbaa !139
  %i.cu = icmp eq i32 %i.cs, 1
  %i.cv = zext i1 %i.cu to i32
  %i.cw = getelementptr inbounds nuw i8, ptr %i.b, i64 6112
  store i32 %i.cv, ptr %i.cw, align 16, !tbaa !140
  %i.cx = and i32 %i.cm, 2
  %.not550 = icmp eq i32 %i.cx, 0
  br i1 %.not550, label %bb.f, label %bb.k

bb.f:                                             ; preds = %bb.e
  %i.cy = tail call nsz float @ff_rate_estimate_qscale(ptr noundef nonnull %i.c, i32 noundef 0) #12
  %i.cz = fptosi float %i.cy to i32               ; 3 uses
  store i32 %i.cz, ptr %i.cg, align 8, !tbaa !133
  %i.da = icmp slt i32 %i.cz, 0
  br i1 %i.da, label %get_encode_buffer.exit.thread, label %bb.k

bb.g:                                             ; preds = %._crit_edge
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 332
  %i.dc = load i32, ptr %i.db, align 4, !tbaa !141 ; 2 uses
  %i.dd = icmp eq i32 %i.dc, 0
  br i1 %i.dd, label %.thread862, label %bb.h

.thread862:                                       ; preds = %bb.g
  %i.de = getelementptr inbounds nuw i8, ptr %i.b, i64 6112
  store i32 1, ptr %i.de, align 8, !tbaa !140
  br label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.df = sext i32 %i.dc to i64
  %i.dg = srem i64 %i.ci, %i.df
  %.fr = freeze i64 %i.dg
  %i.dh = icmp eq i64 %.fr, 0                     ; 2 uses
  %i.di = zext i1 %i.dh to i32
  %i.dj = getelementptr inbounds nuw i8, ptr %i.b, i64 6112
  store i32 %i.di, ptr %i.dj, align 8, !tbaa !140
  br i1 %i.dh, label %bb.i, label %bb.j

bb.i:                                             ; preds = %.thread862, %bb.h
  br label %bb.j

bb.j:                                             ; preds = %bb.h, %bb.i
  %i.dk = phi i32 [ 1, %bb.i ], [ 2, %bb.h ]      ; 2 uses
  store i32 %i.dk, ptr %i.cd, align 8, !tbaa !128
  %i.dl = getelementptr inbounds nuw i8, ptr %i.b, i64 158064
  store i32 %i.dk, ptr %i.dl, align 16, !tbaa !139
  br label %bb.k

bb.k:                                             ; preds = %bb.e, %bb.f, %bb.j
  %.pr = phi i32 [ %i.cf, %bb.e ], [ %i.cz, %bb.f ], [ %i.cf, %bb.j ] ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %i.b, i64 155960 ; 4 uses
  %i.dn = load i32, ptr %i.dm, align 8, !tbaa !103
  %.not551 = icmp eq i32 %i.dn, 0
  br i1 %.not551, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.do = load i64, ptr %i.ch, align 8, !tbaa !134
  %i.dp = icmp eq i64 %i.do, 0
  br i1 %i.dp, label %.thread864, label %bb.m

.thread864:                                       ; preds = %bb.l
  store i32 236, ptr %i.cg, align 8, !tbaa !133
  br label %.thread1375

bb.m:                                             ; preds = %bb.l, %bb.k
  %.not552 = icmp eq i32 %.pr, 0
  br i1 %.not552, label %bb.n, label %.thread1375

bb.n:                                             ; preds = %bb.m
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.b, i64 6344
  %.pre = load i32, ptr %.phi.trans.insert, align 8, !tbaa !142
  %i.dq = getelementptr inbounds nuw i8, ptr %i.b, i64 6344 ; 3 uses
end_hunk_0
begin_hunk_1_@encode_frame:bb.a
  %i.gf = load i32, ptr %i.fn, align 8, !tbaa !111 ; 2 uses
  %i.gg = sub nsw i32 0, %i.et
  %i.gh = ashr i32 %i.gg, %i.gf
  %i.gi = sub nsw i32 0, %i.gh
  %i.gj = lshr i32 16, %i.gb
  %i.gk = lshr i32 16, %i.gf
  tail call void %i.fu(ptr noundef %i.fx, i64 noundef %i.ga, i32 noundef %i.ge, i32 noundef %i.gi, i32 noundef %i.gj, i32 noundef %i.gk, i32 noundef 3) #12
  br label %bb.s

bb.s:                                             ; preds = %bb.q, %bb.r, %.thread1378
  %i.gl = tail call i32 @ff_snow_frames_prepare(ptr noundef nonnull %i.b) #12 ; 0 uses
  %i.gm = load ptr, ptr %i.em, align 8, !tbaa !144 ; 7 uses
  %i.gn = load ptr, ptr %i.g, align 8, !tbaa !108 ; 2 uses
  %i.go = getelementptr inbounds nuw i8, ptr %i.gn, i64 112
  %i.gp = getelementptr inbounds nuw i8, ptr %i.gm, i64 104 ; 2 uses
  %i.gq = load <2 x i32>, ptr %i.go, align 8, !tbaa !93
  %i.gr = add nsw <2 x i32> %i.gq, splat (i32 32)
  store <2 x i32> %i.gr, ptr %i.gp, align 8, !tbaa !93
  %i.gs = tail call i32 @ff_encode_alloc_frame(ptr noundef %i.gn, ptr noundef %i.gm) #12 ; 2 uses
  %i.gt = icmp slt i32 %i.gs, 0
  br i1 %i.gt, label %get_encode_buffer.exit.thread, label %.preheader.i

.preheader.i:                                     ; preds = %bb.s
  %i.gu = load ptr, ptr %i.gm, align 8, !tbaa !109 ; 2 uses
  %.not27.i = icmp eq ptr %i.gu, null
  br i1 %.not27.i, label %.loopexit935, label %bb.t

bb.t:                                             ; preds = %.preheader.i
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gm, i64 64 ; 2 uses
  %i.gw = load i32, ptr %i.gv, align 8, !tbaa !93
  %i.gx = shl nsw i32 %i.gw, 4
  %i.gy = sext i32 %i.gx to i64
  %i.gz = getelementptr i8, ptr %i.gu, i64 %i.gy
  %i.ha = getelementptr i8, ptr %i.gz, i64 16
  store ptr %i.ha, ptr %i.gm, align 8, !tbaa !109
  %i.hb = getelementptr inbounds nuw i8, ptr %i.gm, i64 8 ; 2 uses
  %i.hc = load ptr, ptr %i.hb, align 8, !tbaa !109 ; 2 uses
  %.not.peel.i = icmp eq ptr %i.hc, null
  br i1 %.not.peel.i, label %.loopexit935, label %.peel.next.i

.peel.next.i:                                     ; preds = %bb.t
  %i.hd = getelementptr inbounds nuw i8, ptr %i.b, i64 6332
  %i.he = getelementptr inbounds nuw i8, ptr %i.b, i64 6336
  %i.hf = load i32, ptr %i.hd, align 4, !tbaa !110
  %i.hg = load i32, ptr %i.he, align 8, !tbaa !111
  %i.hh = lshr i32 16, %i.hg
  %i.hi = lshr i32 16, %i.hf
  br label %bb.u

bb.u:                                             ; preds = %bb.u, %.peel.next.i
  %indvars.iv.i = phi i64 [ 1, %.peel.next.i ], [ %indvars.iv.next.i, %bb.u ] ; 2 uses
  %i.hj = phi ptr [ %i.hc, %.peel.next.i ], [ %i.hs, %bb.u ]
  %i.hk = phi ptr [ %i.hb, %.peel.next.i ], [ %i.hr, %bb.u ]
  %i.hl = getelementptr inbounds nuw [4 x i8], ptr %i.gv, i64 %indvars.iv.i
  %i.hm = load i32, ptr %i.hl, align 4, !tbaa !93
  %i.hn = mul nsw i32 %i.hm, %i.hh
  %i.ho = add nsw i32 %i.hn, %i.hi
  %i.hp = sext i32 %i.ho to i64
  %i.hq = getelementptr inbounds i8, ptr %i.hj, i64 %i.hp
  store ptr %i.hq, ptr %i.hk, align 8, !tbaa !109
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.hr = getelementptr inbounds nuw [8 x i8], ptr %i.gm, i64 %indvars.iv.next.i ; 2 uses
  %i.hs = load ptr, ptr %i.hr, align 8, !tbaa !109 ; 2 uses
  %.not.i775 = icmp eq ptr %i.hs, null
  br i1 %.not.i775, label %.loopexit935, label %bb.u, !llvm.loop !112

.loopexit935:                                     ; preds = %bb.u, %bb.t, %.preheader.i
  %i.ht = load ptr, ptr %i.g, align 8, !tbaa !108 ; 3 uses
  %i.hu = getelementptr inbounds nuw i8, ptr %i.ht, i64 112
  %i.hv = load <2 x i32>, ptr %i.hu, align 8, !tbaa !93
  store <2 x i32> %i.hv, ptr %i.gp, align 8, !tbaa !93
  %i.hw = getelementptr inbounds nuw i8, ptr %i.b, i64 167776 ; 3 uses
  %i.hx = getelementptr inbounds nuw i8, ptr %i.b, i64 157840
  store ptr %i.hw, ptr %i.hx, align 16, !tbaa !145
  %i.hy = load ptr, ptr %i.em, align 16, !tbaa !144 ; 5 uses
  store ptr %i.hy, ptr %i.hw, align 16, !tbaa !146
  %i.hz = getelementptr inbounds nuw i8, ptr %2, i64 136
  %i.ia = load i64, ptr %i.hz, align 8, !tbaa !147
  %i.ib = getelementptr inbounds nuw i8, ptr %i.hy, i64 136
  store i64 %i.ia, ptr %i.ib, align 8, !tbaa !147
  %i.ic = load i32, ptr %i.cd, align 8, !tbaa !128
  %i.id = icmp eq i32 %i.ic, 2
  br i1 %i.id, label %bb.v, label %bb.aa

bb.v:                                             ; preds = %.loopexit935
  %i.ie = add nsw i32 %i.j, 15
  %i.if = ashr i32 %i.ie, 4                       ; 3 uses
  %i.ig = add nsw i32 %i.l, 15
  %i.ih = ashr i32 %i.ig, 4
  %i.ii = getelementptr inbounds nuw i8, ptr %i.hy, i64 64
  %i.ij = load i32, ptr %i.ii, align 8, !tbaa !93
  %i.ik = load ptr, ptr %i.hy, align 8, !tbaa !109
  %.not557 = icmp eq ptr %i.ik, null
  br i1 %.not557, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.28, ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.30, i32 noundef 1862) #12
  tail call void @abort() #13
  unreachable

bb.x:                                             ; preds = %bb.v
  %i.il = getelementptr inbounds nuw i8, ptr %i.b, i64 1784
  %i.im = load ptr, ptr %i.il, align 8, !tbaa !148 ; 2 uses
  %i.in = load ptr, ptr %i.im, align 8, !tbaa !109
  %.not558 = icmp eq ptr %i.in, null
  br i1 %.not558, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.28, ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.30, i32 noundef 1863) #12
  tail call void @abort() #13
  unreachable

bb.z:                                             ; preds = %bb.x
  %i.io = getelementptr inbounds nuw i8, ptr %i.b, i64 157128
  store ptr %i.ht, ptr %i.io, align 8, !tbaa !90
  %i.ip = getelementptr inbounds nuw i8, ptr %i.b, i64 168016 ; 2 uses
  %i.iq = getelementptr inbounds nuw i8, ptr %i.b, i64 157600
  store ptr %i.ip, ptr %i.iq, align 16, !tbaa !149
  store ptr %i.im, ptr %i.ip, align 16, !tbaa !146
  %i.ir = load ptr, ptr %i.bz, align 8, !tbaa !107
  %i.is = getelementptr inbounds nuw i8, ptr %i.b, i64 161248
  store ptr %i.ir, ptr %i.is, align 16, !tbaa !150
  %i.it = sext i32 %i.ij to i64
  %i.iu = getelementptr inbounds nuw i8, ptr %i.b, i64 157200
  store i64 %i.it, ptr %i.iu, align 16, !tbaa !151
  %i.iv = getelementptr inbounds nuw i8, ptr %i.hy, i64 68
  %i.iw = load i32, ptr %i.iv, align 4, !tbaa !93
  %i.ix = sext i32 %i.iw to i64
  %i.iy = getelementptr inbounds nuw i8, ptr %i.b, i64 157208
  store i64 %i.ix, ptr %i.iy, align 8, !tbaa !152
  %i.iz = getelementptr inbounds nuw i8, ptr %i.b, i64 157136
  store i32 %i.j, ptr %i.iz, align 16, !tbaa !153
  %i.ja = getelementptr inbounds nuw i8, ptr %i.b, i64 157140
  store i32 %i.l, ptr %i.ja, align 4, !tbaa !154
  %i.jb = getelementptr inbounds nuw i8, ptr %i.b, i64 157172
  store i32 %i.if, ptr %i.jb, align 4, !tbaa !155
  %i.jc = getelementptr inbounds nuw i8, ptr %i.b, i64 157176
  store i32 %i.ih, ptr %i.jc, align 8, !tbaa !156
  %i.jd = add nsw i32 %i.if, 1
  %i.je = getelementptr inbounds nuw i8, ptr %i.b, i64 157180
  store i32 %i.jd, ptr %i.je, align 4, !tbaa !157
  %i.jf = shl nsw i32 %i.if, 1
  %i.jg = or disjoint i32 %i.jf, 1
  %i.jh = getelementptr inbounds nuw i8, ptr %i.b, i64 157184
  store i32 %i.jg, ptr %i.jh, align 16, !tbaa !158
  %i.ji = getelementptr inbounds nuw i8, ptr %i.b, i64 162680
  store i32 1, ptr %i.ji, align 8, !tbaa !159
  %i.jj = getelementptr inbounds nuw i8, ptr %i.b, i64 158064
  store i32 2, ptr %i.jj, align 16, !tbaa !139
  %i.jk = getelementptr inbounds nuw i8, ptr %i.b, i64 155980
  %i.jl = load i32, ptr %i.jk, align 4, !tbaa !115
  %i.jm = getelementptr inbounds nuw i8, ptr %i.b, i64 161400
  store i32 %i.jl, ptr %i.jm, align 8, !tbaa !160
  %i.jn = getelementptr inbounds nuw i8, ptr %0, i64 260
  %i.jo = load i32, ptr %i.jn, align 4, !tbaa !161
  %i.jp = getelementptr inbounds nuw i8, ptr %i.b, i64 161524
  store i32 %i.jo, ptr %i.jp, align 4, !tbaa !162
  %i.jq = getelementptr inbounds nuw i8, ptr %i.ht, i64 64
  %i.jr = load i32, ptr %i.jq, align 8, !tbaa !76
  %i.js = lshr i32 %i.jr, 4
  %.lobit = and i32 %i.js, 1
  %i.jt = getelementptr inbounds nuw i8, ptr %i.b, i64 160556
  store i32 %.lobit, ptr %i.jt, align 4, !tbaa !163
  %i.ju = getelementptr inbounds nuw i8, ptr %i.b, i64 157144
  store i32 2, ptr %i.ju, align 8, !tbaa !164
  %i.jv = getelementptr inbounds nuw i8, ptr %i.b, i64 161528
  store i32 1, ptr %i.jv, align 8, !tbaa !165
  %i.jw = getelementptr inbounds nuw i8, ptr %i.b, i64 155952
  %i.jx = load i32, ptr %i.jw, align 16, !tbaa !143 ; 4 uses
  %i.jy = getelementptr inbounds nuw i8, ptr %i.b, i64 161200
  store i32 %i.jx, ptr %i.jy, align 16, !tbaa !166
  %i.jz = mul i32 %i.jx, 139
  %i.ka = add i32 %i.jz, 8192
  %i.kb = lshr i32 %i.ka, 14
  %i.kc = getelementptr inbounds nuw i8, ptr %i.b, i64 158056
  store i32 %i.kb, ptr %i.kc, align 8, !tbaa !167
  %i.kd = mul i32 %i.jx, %i.jx
  %i.ke = add i32 %i.kd, 64
  %i.kf = lshr i32 %i.ke, 7                       ; 2 uses
  %i.kg = getelementptr inbounds nuw i8, ptr %i.b, i64 161204
  store i32 %i.kf, ptr %i.kg, align 4, !tbaa !168
  %i.kh = getelementptr inbounds nuw i8, ptr %i.b, i64 155956
  store i32 %i.kf, ptr %i.kh, align 4, !tbaa !169
  %i.ki = getelementptr inbounds nuw i8, ptr %i.b, i64 158672
  %i.kj = getelementptr inbounds nuw i8, ptr %i.b, i64 155104
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(768) %i.ki, ptr noundef nonnull align 16 dereferenceable(768) %i.kj, i64 768, i1 false), !tbaa.struct !170
  %i.kk = getelementptr inbounds nuw i8, ptr %i.b, i64 158168 ; 2 uses
  %i.kl = getelementptr inbounds nuw i8, ptr %i.b, i64 576 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(384) %i.kk, ptr noundef nonnull align 8 dereferenceable(384) %i.kl, i64 384, i1 false), !tbaa.struct !171
  tail call void @ff_me_init_pic(ptr noundef nonnull %i.c) #12
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(384) %i.kl, ptr noundef nonnull align 8 dereferenceable(384) %i.kk, i64 384, i1 false), !tbaa.struct !171
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %.loopexit935
  %i.km = load i32, ptr %i.dm, align 8, !tbaa !103
  %.not559 = icmp eq i32 %i.km, 0
  br i1 %.not559, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.kn = getelementptr inbounds nuw i8, ptr %i.b, i64 1856
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %i.kn, i64 32, i1 false)
  %i.ko = getelementptr inbounds nuw i8, ptr %i.b, i64 1888
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(4224) %5, ptr noundef nonnull align 8 dereferenceable(4224) %i.ko, i64 4224, i1 false)
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %i.kp = getelementptr inbounds nuw i8, ptr %i.b, i64 6136 ; 9 uses
  %i.kq = getelementptr inbounds nuw i8, ptr %i.b, i64 6336 ; 4 uses
  %i.kr = getelementptr inbounds nuw i8, ptr %i.b, i64 6332 ; 4 uses
  %i.ks = getelementptr inbounds nuw i8, ptr %i.b, i64 158064 ; 2 uses
  %i.kt = getelementptr inbounds nuw i8, ptr %i.b, i64 6360 ; 4 uses
  %i.ku = getelementptr inbounds nuw i8, ptr %i.b, i64 6140 ; 2 uses
  %i.kv = getelementptr inbounds nuw i8, ptr %i.b, i64 6392 ; 2 uses
  %i.kw = getelementptr inbounds nuw i8, ptr %i.b, i64 6304 ; 11 uses
  %i.kx = getelementptr inbounds nuw i8, ptr %i.b, i64 6312 ; 2 uses
  %i.ky = getelementptr inbounds nuw i8, ptr %i.b, i64 6124 ; 4 uses
  %i.kz = getelementptr inbounds nuw i8, ptr %i.b, i64 552 ; 15 uses
  %i.la = getelementptr inbounds nuw i8, ptr %i.b, i64 544 ; 3 uses
  %i.lb = getelementptr inbounds nuw i8, ptr %i.b, i64 163132 ; 3 uses
  %i.lc = getelementptr inbounds nuw i8, ptr %i.b, i64 163116 ; 2 uses
  %i.ld = getelementptr inbounds nuw i8, ptr %i.b, i64 155968
  %i.le = getelementptr inbounds nuw i8, ptr %i.b, i64 6376 ; 10 uses
  %i.lf = getelementptr inbounds nuw i8, ptr %i.b, i64 6112 ; 5 uses
  %i.lg = getelementptr inbounds nuw i8, ptr %i.b, i64 155032 ; 3 uses
  %i.lh = getelementptr inbounds nuw i8, ptr %i.b, i64 155080 ; 3 uses
  %i.li = getelementptr inbounds nuw i8, ptr %2, i64 64 ; 3 uses
  %i.lj = getelementptr inbounds nuw i8, ptr %i.b, i64 161840
  %i.lk = getelementptr inbounds nuw i8, ptr %i.b, i64 155988
  %i.ll = getelementptr inbounds nuw i8, ptr %i.b, i64 6288 ; 3 uses
  %i.lm = getelementptr inbounds nuw i8, ptr %i.b, i64 6296
  %i.ln = getelementptr inbounds nuw i8, ptr %i.b, i64 6400
  %i.lo = getelementptr inbounds nuw i8, ptr %i.b, i64 167736
  %i.lp = getelementptr inbounds nuw i8, ptr %i.b, i64 167744
  %i.lq = getelementptr inbounds nuw i8, ptr %i.b, i64 155952
  %i.lr = getelementptr inbounds nuw i8, ptr %i.b, i64 1856
  %i.ls = getelementptr inbounds nuw i8, ptr %i.b, i64 1888
  %i.lt = getelementptr inbounds nuw i8, ptr %i.b, i64 155972
  %i.lu = getelementptr inbounds nuw i8, ptr %i.b, i64 6320
  %i.lv = getelementptr inbounds nuw i8, ptr %i.b, i64 560 ; 2 uses
  %i.lw = getelementptr inbounds nuw i8, ptr %i.b, i64 20 ; 8 uses
  %i.lx = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 10 uses
  %i.ly = getelementptr inbounds nuw i8, ptr %i.b, i64 28 ; 6 uses
  %i.lz = getelementptr inbounds nuw i8, ptr %i.b, i64 172360 ; 2 uses
  br label %bb.ad

bb.ad:                                            ; preds = %.critedge583, %bb.ac
  %i.ma = load i32, ptr %i.kr, align 4, !tbaa !110
  br label %bb.ae

bb.ae:                                            ; preds = %.critedge, %bb.ad
  %storemerge = phi i32 [ 5, %bb.ad ], [ %i.mg, %.critedge ] ; 5 uses
  %i.mb = add nsw i32 %i.ma, %storemerge
  %i.mc = ashr i32 %i.j, %i.mb
  %.not560 = icmp eq i32 %i.mc, 0
  br i1 %.not560, label %.critedge, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.md = load i32, ptr %i.kq, align 16, !tbaa !111
  %i.me = add nsw i32 %i.md, %storemerge
  %i.mf = ashr i32 %i.l, %i.me
  %.not561 = icmp eq i32 %i.mf, 0
  br i1 %.not561, label %.critedge, label %bb.ag

.critedge:                                        ; preds = %bb.ae, %bb.af
  %i.mg = add nsw i32 %storemerge, -1
  br label %bb.ae, !llvm.loop !172

bb.ag:                                            ; preds = %bb.af
  store i32 %storemerge, ptr %i.kp, align 8, !tbaa !173
  %i.mh = icmp slt i32 %storemerge, 1
  br i1 %i.mh, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %0, i32 noundef 16, ptr noundef nonnull @.str.32) #12
  br label %get_encode_buffer.exit.thread

bb.ai:                                            ; preds = %bb.ag
  %i.mi = load i32, ptr %i.cd, align 8, !tbaa !128 ; 2 uses
  store i32 %i.mi, ptr %i.ks, align 16, !tbaa !139
  %i.mj = icmp eq i32 %i.mi, 2
  %i.mk = select i1 %i.mj, i32 2, i32 0
  store i32 %i.mk, ptr %i.kt, align 8, !tbaa !174
  %i.ml = tail call i32 @ff_snow_common_init_after_header(ptr noundef %0) #12 ; 0 uses
  %i.mm = load i32, ptr %i.ku, align 4, !tbaa !175
  %i.mn = load i32, ptr %i.kp, align 8, !tbaa !173 ; 2 uses
  %.not562 = icmp eq i32 %i.mm, %i.mn
  br i1 %.not562, label %.loopexit934, label %.preheader933

.preheader933:                                    ; preds = %bb.ai
  %i.mo = load i32, ptr %i.aa, align 16, !tbaa !105 ; 2 uses
  %i.mp = icmp sgt i32 %i.mo, 0
  br i1 %i.mp, label %.lr.ph980, label %.loopexit934

.lr.ph980:                                        ; preds = %.preheader933, %calculate_visual_weight.exit
  %i.mq = phi i32 [ %i.qa, %calculate_visual_weight.exit ], [ %i.mo, %.preheader933 ]
  %i.mr = phi i32 [ %i.qb, %calculate_visual_weight.exit ], [ %i.mn, %.preheader933 ] ; 2 uses
  %indvars.iv1143 = phi i64 [ %indvars.iv.next1144, %calculate_visual_weight.exit ], [ 0, %.preheader933 ] ; 2 uses
  %i.ms = getelementptr inbounds nuw [37160 x i8], ptr %i.kv, i64 %indvars.iv1143 ; 3 uses
  %i.mt = load i32, ptr %i.ms, align 8, !tbaa !176 ; 6 uses
  %i.mu = getelementptr inbounds nuw i8, ptr %i.ms, i64 4
  %i.mv = load i32, ptr %i.mu, align 4, !tbaa !177 ; 4 uses
  %i.mw = icmp sgt i32 %i.mr, 0
  br i1 %i.mw, label %.lr.ph.i, label %calculate_visual_weight.exit

.lr.ph.i:                                         ; preds = %.lr.ph980
  %i.mx = getelementptr inbounds nuw i8, ptr %i.ms, i64 8
  %i.my = sext i32 %i.mt to i64
  %i.mz = shl nsw i64 %i.my, 1
  %i.na = sext i32 %i.mv to i64
  %i.nb = mul i64 %i.mz, %i.na
  %i.nc = icmp slt i32 %i.mv, 1
  %i.nd = icmp slt i32 %i.mt, 1
  %i.ne = zext i32 %i.mt to i64                   ; 3 uses
  %wide.trip.count67.i = zext nneg i32 %i.mv to i64
  %brmerge.i = select i1 %i.nc, i1 true, i1 %i.nd
  %xtraiter = and i64 %i.ne, 3                    ; 3 uses
  %i.nf = add nsw i32 %i.mt, -1
  %i.ng = icmp ult i32 %i.nf, 3
  %unroll_iter = and i64 %i.ne, 2147483644
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod2183 = icmp ne i64 %xtraiter, 0
  br label %bb.aj

bb.aj:                                            ; preds = %bb.am, %.lr.ph.i
  %indvars.iv73.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next74.i, %bb.am ] ; 3 uses
  %.not.i778 = icmp ne i64 %indvars.iv73.i, 0
  %i.nh = getelementptr inbounds nuw [4640 x i8], ptr %i.mx, i64 %indvars.iv73.i ; 3 uses
  %i.ni = zext i1 %.not.i778 to i64
  br label %bb.ak

bb.ak:                                            ; preds = %._crit_edge57.i, %bb.aj
  %indvars.iv69.i = phi i64 [ %i.ni, %bb.aj ], [ %indvars.iv.next70.i, %._crit_edge57.i ] ; 4 uses
  %.04959.i = phi i64 [ 0, %bb.aj ], [ %.4.i, %._crit_edge57.i ] ; 2 uses
  %i.nj = getelementptr inbounds nuw [1160 x i8], ptr %i.nh, i64 %indvars.iv69.i ; 4 uses
  %i.nk = getelementptr inbounds nuw i8, ptr %i.nj, i64 32
  %i.nl = load ptr, ptr %i.nk, align 8, !tbaa !178
  %i.nm = load ptr, ptr %i.kw, align 16, !tbaa !182
  tail call void @llvm.memset.p0.i64(ptr align 2 %i.nm, i8 0, i64 %i.nb, i1 false)
  %i.nn = getelementptr inbounds nuw i8, ptr %i.nj, i64 8
  %i.no = load <2 x i32>, ptr %i.nn, align 8, !tbaa !93
  %i.np = sdiv <2 x i32> %i.no, splat (i32 2)     ; 2 uses
  %i.nq = getelementptr inbounds nuw i8, ptr %i.nj, i64 4
  %i.nr = load i32, ptr %i.nq, align 4, !tbaa !183
  %i.ns = extractelement <2 x i32> %i.np, i64 1
  %i.nt = mul nsw i32 %i.ns, %i.nr
  %i.nu = extractelement <2 x i32> %i.np, i64 0
  %i.nv = add nsw i32 %i.nt, %i.nu
  %i.nw = sext i32 %i.nv to i64
  %i.nx = getelementptr inbounds [2 x i8], ptr %i.nl, i64 %i.nw
  store i16 4096, ptr %i.nx, align 2, !tbaa !184
  %i.ny = load ptr, ptr %i.kw, align 16, !tbaa !182
  %i.nz = load ptr, ptr %i.kx, align 8, !tbaa !185
  %i.oa = load i32, ptr %i.ky, align 4, !tbaa !78
  %i.ob = load i32, ptr %i.kp, align 8, !tbaa !173
  tail call void @ff_spatial_idwt(ptr noundef %i.ny, ptr noundef %i.nz, i32 noundef %i.mt, i32 noundef %i.mv, i32 noundef %i.mt, i32 noundef %i.oa, i32 noundef %i.ob) #12
  br i1 %brmerge.i, label %._crit_edge57.i, label %.preheader.lr.ph.split.us.i

.preheader.lr.ph.split.us.i:                      ; preds = %bb.ak
  %i.oc = load ptr, ptr %i.kw, align 16, !tbaa !182
  br label %.preheader.us.i

.preheader.us.i:                                  ; preds = %._crit_edge.us.i, %.preheader.lr.ph.split.us.i
  %indvars.iv64.i = phi i64 [ %indvars.iv.next65.i, %._crit_edge.us.i ], [ 0, %.preheader.lr.ph.split.us.i ] ; 2 uses
  %.156.us.i = phi i64 [ %.lcssa, %._crit_edge.us.i ], [ %.04959.i, %.preheader.lr.ph.split.us.i ] ; 2 uses
  %i.od = mul nuw nsw i64 %indvars.iv64.i, %i.ne
  %invariant.gep.i = getelementptr inbounds nuw [2 x i8], ptr %i.oc, i64 %i.od ; 5 uses
  br i1 %i.ng, label %.epil.preheader, label %.preheader.us.i.new

.preheader.us.i.new:                              ; preds = %.preheader.us.i, %.preheader.us.i.new
  %indvars.iv.i779 = phi i64 [ %indvars.iv.next.i780.3, %.preheader.us.i.new ], [ 0, %.preheader.us.i ] ; 5 uses
  %.253.us.i = phi i64 [ %i.pe, %.preheader.us.i.new ], [ %.156.us.i, %.preheader.us.i ]
  %niter = phi i64 [ %niter.next.3, %.preheader.us.i.new ], [ 0, %.preheader.us.i ]
  %gep.i = getelementptr inbounds nuw [2 x i8], ptr %invariant.gep.i, i64 %indvars.iv.i779
  %i.oe = load i16, ptr %gep.i, align 2, !tbaa !184
  %i.of = sext i16 %i.oe to i32
  %i.og = shl nsw i32 %i.of, 4
  %i.oh = sext i32 %i.og to i64                   ; 2 uses
  %i.oi = mul nsw i64 %i.oh, %i.oh
  %i.oj = add nsw i64 %i.oi, %.253.us.i
  %i.ok = getelementptr inbounds nuw [2 x i8], ptr %invariant.gep.i, i64 %indvars.iv.i779
  %gep.i.1 = getelementptr inbounds nuw i8, ptr %i.ok, i64 2
  %i.ol = load i16, ptr %gep.i.1, align 2, !tbaa !184
  %i.om = sext i16 %i.ol to i32
  %i.on = shl nsw i32 %i.om, 4
  %i.oo = sext i32 %i.on to i64                   ; 2 uses
  %i.op = mul nsw i64 %i.oo, %i.oo
  %i.oq = add nsw i64 %i.op, %i.oj
  %i.or = getelementptr inbounds nuw [2 x i8], ptr %invariant.gep.i, i64 %indvars.iv.i779
  %gep.i.2 = getelementptr inbounds nuw i8, ptr %i.or, i64 4
  %i.os = load i16, ptr %gep.i.2, align 2, !tbaa !184
  %i.ot = sext i16 %i.os to i32
  %i.ou = shl nsw i32 %i.ot, 4
  %i.ov = sext i32 %i.ou to i64                   ; 2 uses
  %i.ow = mul nsw i64 %i.ov, %i.ov
  %i.ox = add nsw i64 %i.ow, %i.oq
  %i.oy = getelementptr inbounds nuw [2 x i8], ptr %invariant.gep.i, i64 %indvars.iv.i779
  %gep.i.3 = getelementptr inbounds nuw i8, ptr %i.oy, i64 6
  %i.oz = load i16, ptr %gep.i.3, align 2, !tbaa !184
  %i.pa = sext i16 %i.oz to i32
  %i.pb = shl nsw i32 %i.pa, 4
  %i.pc = sext i32 %i.pb to i64                   ; 2 uses
  %i.pd = mul nsw i64 %i.pc, %i.pc
  %i.pe = add nsw i64 %i.pd, %i.ox                ; 3 uses
  %indvars.iv.next.i780.3 = add nuw nsw i64 %indvars.iv.i779, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
end_hunk_1
begin_hunk_2_@encode_frame:bb.a
  %i.auk = getelementptr i8, ptr %i.auj, i64 -8
  %wide.load1773 = load <4 x i16>, ptr %i.auk, align 2, !tbaa !184
  %i.aul = getelementptr i8, ptr %i.auj, i64 -6   ; 2 uses
  %wide.load1774 = load <4 x i16>, ptr %i.aul, align 2, !tbaa !184
  %i.aum = sub <4 x i16> %wide.load1774, %wide.load1773
  store <4 x i16> %i.aum, ptr %i.aul, align 2, !tbaa !184
  %index.next1775 = add nuw i64 %index1772, 4     ; 2 uses
  %i.aun = icmp eq i64 %index.next1775, %n.vec1770
  br i1 %i.aun, label %vec.epilog.middle.block1776, label %vec.epilog.vector.body1771, !llvm.loop !278

vec.epilog.middle.block1776:                      ; preds = %vec.epilog.vector.body1771
  %cmp.n1777 = icmp eq i64 %i.asc, %n.vec1770
  br i1 %cmp.n1777, label %decorrelate.exit.i, label %.lr.ph.split.us.split.us.i.i.preheader

.lr.ph.split.us.split.us.i.i.preheader:           ; preds = %iter.check1765, %vec.epilog.iter.check1767, %vec.epilog.middle.block1776
  %indvars.iv11.i88.i.ph = phi i64 [ %i.asc, %iter.check1765 ], [ %i.atx, %vec.epilog.iter.check1767 ], [ %i.auh, %vec.epilog.middle.block1776 ]
  br label %.lr.ph.split.us.split.us.i.i

.lr.ph.split.us.split.us.i.i:                     ; preds = %.lr.ph.split.us.split.us.i.i.preheader, %.lr.ph.split.us.split.us.i.i
  %indvars.iv11.i88.i = phi i64 [ %indvars.iv.next12.i.i, %.lr.ph.split.us.split.us.i.i ], [ %indvars.iv11.i88.i.ph, %.lr.ph.split.us.split.us.i.i.preheader ] ; 2 uses
  %i.auo = getelementptr [2 x i8], ptr %i.aqn, i64 %indvars.iv11.i88.i ; 3 uses
  %i.aup = getelementptr i8, ptr %i.auo, i64 -2
  %i.auq = load i16, ptr %i.aup, align 2, !tbaa !184
  %i.aur = load i16, ptr %i.auo, align 2, !tbaa !184
  %i.aus = sub i16 %i.aur, %i.auq
  store i16 %i.aus, ptr %i.auo, align 2, !tbaa !184
  %indvars.iv.next12.i.i = add nsw i64 %indvars.iv11.i88.i, -1 ; 2 uses
  %.not.us.us.i.i = icmp eq i64 %indvars.iv.next12.i.i, 0
  br i1 %.not.us.us.i.i, label %decorrelate.exit.i, label %.lr.ph.split.us.split.us.i.i, !llvm.loop !279

.lr.ph.split.i.i:                                 ; preds = %.lr.ph.split.i.i.preheader2162, %.lr.ph.split.i.i
  %i.aut = phi i64 [ %i.avo, %.lr.ph.split.i.i ], [ %.ph2163, %.lr.ph.split.i.i.preheader2162 ] ; 3 uses
  %indvars.iv.i86.i = phi i64 [ %indvars.iv.next.i.i, %.lr.ph.split.i.i ], [ %indvars.iv.i86.i.ph, %.lr.ph.split.i.i.preheader2162 ]
  %i.auu = add nsw i64 %i.aut, -1                 ; 2 uses
  %i.auv = getelementptr inbounds [2 x i8], ptr %i.aqn, i64 %i.auu
  %i.auw = load i16, ptr %i.auv, align 2, !tbaa !184
  %i.aux = sext i16 %i.auw to i32                 ; 3 uses
  %i.auy = sub nsw i64 %i.aut, %i.asd
  %i.auz = getelementptr inbounds [2 x i8], ptr %i.aqn, i64 %i.auy
  %i.ava = load i16, ptr %i.auz, align 2, !tbaa !184
  %i.avb = sext i16 %i.ava to i32                 ; 3 uses
  %i.avc = add nsw i32 %i.avb, %i.aux
  %i.avd = sub nsw i64 %i.auu, %i.asd
  %i.ave = getelementptr inbounds [2 x i8], ptr %i.aqn, i64 %i.avd
  %i.avf = load i16, ptr %i.ave, align 2, !tbaa !184
  %i.avg = sext i16 %i.avf to i32
  %i.avh = sub nsw i32 %i.avc, %i.avg
  %..i.i.i = tail call i32 @llvm.smin.i32(i32 %i.aux, i32 %i.avb)
  %.20.i.i.i = tail call i32 @llvm.smax.i32(i32 %i.aux, i32 %i.avb)
  %i.avi = tail call i32 @llvm.smin.i32(i32 %i.avh, i32 %.20.i.i.i)
  %i.avj = tail call noundef i32 @llvm.smax.i32(i32 %i.avi, i32 %..i.i.i)
  %i.avk = getelementptr inbounds [2 x i8], ptr %i.aqn, i64 %i.aut ; 2 uses
  %i.avl = load i16, ptr %i.avk, align 2, !tbaa !184
  %i.avm = trunc nsw i32 %i.avj to i16
  %i.avn = sub i16 %i.avl, %i.avm
  store i16 %i.avn, ptr %i.avk, align 2, !tbaa !184
  %indvars.iv.next.i.i = add nsw i64 %indvars.iv.i86.i, -1 ; 3 uses
  %i.avo = add nsw i64 %indvars.iv.next.i.i, %i.asv ; 2 uses
  %.not.i.i787 = icmp eq i64 %indvars.iv.next.i.i, 0
  br i1 %.not.i.i787, label %..loopexit_crit_edge.i.i, label %.lr.ph.split.i.i, !llvm.loop !280

decorrelate.exit.i:                               ; preds = %.lr.ph.split.us.split.us.i.i, %middle.block1761, %vec.epilog.middle.block1776, %.lr.ph.split.us.split.us.i.preheader.i, %._crit_edge84.split.i
  br i1 %or.cond.i, label %.preheader.us.preheader.i, label %._crit_edge97.i

.preheader.us.preheader.i:                        ; preds = %decorrelate.exit.i
  %i.avp = sext i32 %i.aqt to i64
  %wide.trip.count126.i = zext nneg i32 %.12.val.fr.i.i to i64
  %wide.trip.count121.i = zext nneg i32 %i.aqp to i64 ; 3 uses
  %min.iters.check1734 = icmp ult i32 %i.aqp, 8
  %n.vec1736 = and i64 %wide.trip.count121.i, 2147483640 ; 3 uses
  %broadcast.splatinsert1737 = insertelement <4 x i32> poison, i32 %i.arf, i64 0
  %broadcast.splat1738 = shufflevector <4 x i32> %broadcast.splatinsert1737, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %cmp.n1746 = icmp eq i64 %n.vec1736, %wide.trip.count121.i
  br label %.preheader.us.i784

.preheader.us.i784:                               ; preds = %._crit_edge93.us.i, %.preheader.us.preheader.i
  %indvars.iv123.i = phi i64 [ 0, %.preheader.us.preheader.i ], [ %indvars.iv.next124.i, %._crit_edge93.us.i ] ; 2 uses
  %.295.us.i = phi i32 [ %.173100.i, %.preheader.us.preheader.i ], [ %.lcssa1480, %._crit_edge93.us.i ] ; 2 uses
  %i.avq = mul nsw i64 %indvars.iv123.i, %i.avp
  %invariant.gep.i785 = getelementptr [2 x i8], ptr %i.aqn, i64 %i.avq ; 2 uses
  br i1 %min.iters.check1734, label %scalar.ph1733.preheader, label %vector.ph1735

vector.ph1735:                                    ; preds = %.preheader.us.i784
  %i.avr = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %.295.us.i, i64 0
  br label %vector.body1739

vector.body1739:                                  ; preds = %vector.body1739, %vector.ph1735
  %index1740 = phi i64 [ 0, %vector.ph1735 ], [ %index.next1744, %vector.body1739 ] ; 2 uses
  %vec.phi = phi <4 x i32> [ %i.avr, %vector.ph1735 ], [ %i.awc, %vector.body1739 ]
  %vec.phi1741 = phi <4 x i32> [ zeroinitializer, %vector.ph1735 ], [ %i.awd, %vector.body1739 ]
  %i.avs = getelementptr [2 x i8], ptr %invariant.gep.i785, i64 %index1740 ; 2 uses
  %i.avt = getelementptr i8, ptr %i.avs, i64 8
  %wide.load1742 = load <4 x i16>, ptr %i.avs, align 2, !tbaa !184
  %wide.load1743 = load <4 x i16>, ptr %i.avt, align 2, !tbaa !184
  %i.avu = tail call <4 x i16> @llvm.abs.v4i16(<4 x i16> %wide.load1742, i1 false)
  %i.avv = tail call <4 x i16> @llvm.abs.v4i16(<4 x i16> %wide.load1743, i1 false)
  %i.avw = zext <4 x i16> %i.avu to <4 x i32>
  %i.avx = zext <4 x i16> %i.avv to <4 x i32>
  %i.avy = mul nuw nsw <4 x i32> %broadcast.splat1738, %i.avw
  %i.avz = mul nuw nsw <4 x i32> %broadcast.splat1738, %i.avx
  %i.awa = lshr <4 x i32> %i.avy, splat (i32 16)
  %i.awb = lshr <4 x i32> %i.avz, splat (i32 16)
  %i.awc = add <4 x i32> %i.awa, %vec.phi         ; 2 uses
  %i.awd = add <4 x i32> %i.awb, %vec.phi1741     ; 2 uses
  %index.next1744 = add nuw i64 %index1740, 8     ; 2 uses
  %i.awe = icmp eq i64 %index.next1744, %n.vec1736
  br i1 %i.awe, label %middle.block1745, label %vector.body1739, !llvm.loop !281

middle.block1745:                                 ; preds = %vector.body1739
  %bin.rdx = add <4 x i32> %i.awd, %i.awc
  %i.awf = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  br i1 %cmp.n1746, label %._crit_edge93.us.i, label %scalar.ph1733.preheader

scalar.ph1733.preheader:                          ; preds = %.preheader.us.i784, %middle.block1745
  %indvars.iv118.i.ph = phi i64 [ 0, %.preheader.us.i784 ], [ %n.vec1736, %middle.block1745 ]
  %.390.us.i.ph = phi i32 [ %.295.us.i, %.preheader.us.i784 ], [ %i.awf, %middle.block1745 ]
  br label %scalar.ph1733

scalar.ph1733:                                    ; preds = %scalar.ph1733.preheader, %scalar.ph1733
  %indvars.iv118.i = phi i64 [ %indvars.iv.next119.i, %scalar.ph1733 ], [ %indvars.iv118.i.ph, %scalar.ph1733.preheader ] ; 2 uses
  %.390.us.i = phi i32 [ %i.awl, %scalar.ph1733 ], [ %.390.us.i.ph, %scalar.ph1733.preheader ]
  %gep.i786 = getelementptr [2 x i8], ptr %invariant.gep.i785, i64 %indvars.iv118.i
  %i.awg = load i16, ptr %gep.i786, align 2, !tbaa !184
  %i.awh = tail call i16 @llvm.abs.i16(i16 %i.awg, i1 false)
  %i.awi = zext i16 %i.awh to i32
  %i.awj = mul nuw nsw i32 %i.arf, %i.awi
  %i.awk = lshr i32 %i.awj, 16
  %i.awl = add i32 %i.awk, %.390.us.i             ; 2 uses
  %indvars.iv.next119.i = add nuw nsw i64 %indvars.iv118.i, 1 ; 2 uses
  %exitcond122.not.i = icmp eq i64 %indvars.iv.next119.i, %wide.trip.count121.i
  br i1 %exitcond122.not.i, label %._crit_edge93.us.i, label %scalar.ph1733, !llvm.loop !282

._crit_edge93.us.i:                               ; preds = %scalar.ph1733, %middle.block1745
  %.lcssa1480 = phi i32 [ %i.awf, %middle.block1745 ], [ %i.awl, %scalar.ph1733 ] ; 2 uses
  %indvars.iv.next124.i = add nuw nsw i64 %indvars.iv123.i, 1 ; 2 uses
  %exitcond127.not.i = icmp eq i64 %indvars.iv.next124.i, %wide.trip.count126.i
  br i1 %exitcond127.not.i, label %._crit_edge97.i, label %.preheader.us.i784, !llvm.loop !283

._crit_edge97.i:                                  ; preds = %._crit_edge93.us.i, %decorrelate.exit.i
  %.2.lcssa.i = phi i32 [ %.173100.i, %decorrelate.exit.i ], [ %.lcssa1480, %._crit_edge93.us.i ] ; 4 uses
  %indvars.iv.next129.i = add nuw nsw i64 %indvars.iv128.i, 1 ; 2 uses
  %exitcond131.not.i = icmp eq i64 %indvars.iv.next129.i, 4
  br i1 %exitcond131.not.i, label %bb.bq, label %bb.bp, !llvm.loop !284

bb.bq:                                            ; preds = %._crit_edge97.i
  %indvars.iv.next133.i = add nuw nsw i64 %indvars.iv132.i, 1 ; 2 uses
  %exitcond136.not.i = icmp eq i64 %indvars.iv.next133.i, %wide.trip.count135.i
  br i1 %exitcond136.not.i, label %._crit_edge105.i, label %bb.bo, !llvm.loop !285

._crit_edge105.i:                                 ; preds = %bb.bq
  %i.awm = icmp ult i32 %.2.lcssa.i, 2147483647
  br i1 %i.awm, label %._crit_edge105.thread.i, label %bb.br

bb.br:                                            ; preds = %._crit_edge105.i
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.28, ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.30, i32 noundef 1719) #12
  tail call void @abort() #13
  unreachable

._crit_edge105.thread.i:                          ; preds = %._crit_edge105.i, %bb.bn
  %.072.lcssa143.i = phi i32 [ %.2.lcssa.i, %._crit_edge105.i ], [ 0, %bb.bn ]
  %i.awn = zext nneg i32 %.072.lcssa143.i to i64  ; 2 uses
  %i.awo = mul nuw nsw i64 %i.awn, %i.awn
  %i.awp = lshr i64 %i.awo, 16
  %i.awq = load i32, ptr %i.cd, align 8, !tbaa !128
  %i.awr = icmp eq i32 %i.awq, 1                  ; 2 uses
  %i.aws = and i64 %i.awp, 4294967295             ; 2 uses
  %..i781 = select i1 %i.awr, i64 %i.aws, i64 0
  %.148.i = select i1 %i.awr, i64 0, i64 %i.aws
  store i64 %..i781, ptr %i.lo, align 8, !tbaa !286
  store i64 %.148.i, ptr %i.lp, align 16, !tbaa !287
  %i.awt = tail call nsz float @ff_rate_estimate_qscale(ptr noundef nonnull %i.c, i32 noundef 1) #12
  %i.awu = fptosi float %i.awt to i32             ; 5 uses
  store i32 %i.awu, ptr %i.cg, align 8, !tbaa !133
  %i.awv = icmp slt i32 %i.awu, 0
  br i1 %i.awv, label %get_encode_buffer.exit.thread, label %ratecontrol_1pass.exit

ratecontrol_1pass.exit:                           ; preds = %._crit_edge105.thread.i
  %i.aww = lshr i32 %i.awu, 1
  %i.awx = add nuw nsw i32 %i.aww, %i.awu
  store i32 %i.awx, ptr %i.lq, align 16, !tbaa !143
  %i.awy = uitofp nneg i32 %i.awu to float
  %i.awz = fdiv nnan nsz float %i.awy, 1.180000e+02
  %i.axa = fpext nnan nsz float %i.awz to double
  %i.axb = tail call nnan nsz double @llvm.log2.f64(double %i.axa)
  %i.axc = fmul nnan nsz double %i.axb, 3.200000e+01
  %i.axd = tail call i64 @llvm.lrint.i64.f64(double %i.axc)
  %i.axe = trunc i64 %i.axd to i32
  %i.axf = add i32 %i.axe, 244                    ; 2 uses
  %i.axg = load i32, ptr %i.el, align 8, !tbaa !142
  %i.axh = sub nsw i32 %i.axf, %i.axg
  store i32 %i.axf, ptr %i.el, align 8, !tbaa !142
  switch i32 %i.axh, label %bb.bs [
    i32 -2147483648, label %get_encode_buffer.exit.thread
    i32 0, label %bb.bt
  ]

bb.bs:                                            ; preds = %ratecontrol_1pass.exit
  %i.axi = load ptr, ptr %i.w, align 8, !tbaa !122
  %i.axj = load i32, ptr %i.y, align 8, !tbaa !124
  tail call void @ff_init_range_encoder(ptr noundef nonnull %i.d, ptr noundef %i.axi, i32 noundef %i.axj) #12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.lr, ptr noundef nonnull align 16 dereferenceable(32) %4, i64 32, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(4224) %i.ls, ptr noundef nonnull align 16 dereferenceable(4224) %5, i64 4224, i1 false)
  tail call fastcc void @encode_header(ptr noundef nonnull %i.b)
  tail call fastcc void @encode_blocks(ptr noundef nonnull %i.b, i32 noundef 0)
  br label %bb.bt

bb.bt:                                            ; preds = %ratecontrol_1pass.exit, %bb.bs, %.loopexit925
  %i.axk = load i32, ptr %i.kp, align 8, !tbaa !173 ; 2 uses
  %i.axl = icmp sgt i32 %i.axk, 0
  br i1 %i.axl, label %.lr.ph1047, label %._crit_edge1055

.lr.ph1047:                                       ; preds = %bb.bt
  %i.axm = getelementptr inbounds nuw i8, ptr %i.qu, i64 8
  br label %bb.bu

.preheader923:                                    ; preds = %bb.fk
  %i.axn = icmp sgt i32 %i.bvz, 0
  br i1 %i.axn, label %.lr.ph1054, label %._crit_edge1055

.lr.ph1054:                                       ; preds = %.preheader923
  %i.axo = getelementptr inbounds nuw i8, ptr %i.qu, i64 8
  %.val773 = load i32, ptr %i.el, align 8, !tbaa !142
  %.val773.fr = freeze i32 %.val773               ; 5 uses
  %.val774 = load i32, ptr %i.kt, align 8, !tbaa !174 ; 4 uses
  %.not1122 = icmp eq i32 %.val773.fr, -128
  %wide.trip.count1230 = zext nneg i32 %i.bvz to i64
  br label %bb.fl

bb.bu:                                            ; preds = %.lr.ph1047, %bb.fk
  %indvars.iv1220 = phi i64 [ 0, %.lr.ph1047 ], [ %indvars.iv.next1221, %bb.fk ] ; 3 uses
  %.not576 = icmp ne i64 %indvars.iv1220, 0
  %i.axp = getelementptr inbounds nuw [4640 x i8], ptr %i.axm, i64 %indvars.iv1220
  %i.axq = zext i1 %.not576 to i64
  br label %bb.bv

bb.bv:                                            ; preds = %bb.bu, %correlate.exit
  %indvars.iv1216 = phi i64 [ %i.axq, %bb.bu ], [ %indvars.iv.next1217, %correlate.exit ] ; 3 uses
  %i.axr = getelementptr inbounds nuw [1160 x i8], ptr %i.axp, i64 %indvars.iv1216 ; 12 uses
  %i.axs = getelementptr inbounds nuw i8, ptr %i.axr, i64 32 ; 2 uses
  %i.axt = load ptr, ptr %i.axs, align 8, !tbaa !178 ; 39 uses
  %i.axu = getelementptr inbounds nuw i8, ptr %i.axr, i64 24
  %i.axv = load ptr, ptr %i.axu, align 8, !tbaa !261 ; 5 uses
  %i.axw = getelementptr inbounds nuw i8, ptr %i.axr, i64 4 ; 3 uses
  %i.axx = load i32, ptr %i.axw, align 4, !tbaa !183 ; 9 uses
  %.val770 = load i32, ptr %i.el, align 8, !tbaa !142 ; 2 uses
  %i.axy = getelementptr inbounds nuw i8, ptr %i.axr, i64 8 ; 2 uses
  %i.axz = load i32, ptr %i.axy, align 8, !tbaa !259
  %.fr297.i.i = freeze i32 %i.axz                 ; 18 uses
  %i.aya = getelementptr inbounds nuw i8, ptr %i.axr, i64 12 ; 2 uses
  %i.ayb = load i32, ptr %i.aya, align 4, !tbaa !260
  %.12.val.fr.i = freeze i32 %i.ayb               ; 10 uses
  %i.ayc = getelementptr inbounds nuw i8, ptr %i.axr, i64 16
  %i.ayd = load i32, ptr %i.ayc, align 8, !tbaa !190
  %i.aye = add nsw i32 %i.ayd, %.val770
  %i.ayf = tail call i32 @llvm.smax.i32(i32 %i.aye, i32 0)
  %i.ayg = tail call i32 @llvm.umin.i32(i32 %i.ayf, i32 512) ; 2 uses
  %i.ayh = and i32 %i.ayg, 31
  %i.ayi = zext nneg i32 %i.ayh to i64
  %i.ayj = getelementptr inbounds nuw i8, ptr @ff_qexp, i64 %i.ayi
  %i.ayk = load i8, ptr %i.ayj, align 1, !tbaa !84
  %i.ayl = zext i8 %i.ayk to i32
  %i.aym = lshr i32 %i.ayg, 5
  %i.ayn = add nuw nsw i32 %i.aym, 4
  %i.ayo = shl nuw nsw i32 %i.ayl, %i.ayn         ; 14 uses
  %i.ayp = icmp eq i32 %.val770, -128
  br i1 %i.ayp, label %.preheader1.i, label %bb.bw

.preheader1.i:                                    ; preds = %bb.bv
  %i.ayq = icmp sgt i32 %.12.val.fr.i, 0
  %i.ayr = icmp sgt i32 %.fr297.i.i, 0
  %or.cond.i798 = and i1 %i.ayr, %i.ayq
  br i1 %or.cond.i798, label %.preheader.preheader.i, label %quantize.exit

.preheader.preheader.i:                           ; preds = %.preheader1.i
  %i.ays = sext i32 %i.axx to i64
  %wide.trip.count44.i = zext nneg i32 %.12.val.fr.i to i64
  %wide.trip.count39.i = zext nneg i32 %.fr297.i.i to i64 ; 3 uses
  %min.iters.check1694 = icmp ult i32 %.fr297.i.i, 8
  %n.vec1696 = and i64 %wide.trip.count39.i, 2147483640 ; 3 uses
  %cmp.n1703 = icmp eq i64 %n.vec1696, %wide.trip.count39.i
  br label %.preheader.i799

.preheader.i799:                                  ; preds = %._crit_edge14.i, %.preheader.preheader.i
  %indvars.iv41.i = phi i64 [ 0, %.preheader.preheader.i ], [ %indvars.iv.next42.i, %._crit_edge14.i ] ; 2 uses
  %i.ayt = mul nsw i64 %indvars.iv41.i, %i.ays    ; 2 uses
  br i1 %min.iters.check1694, label %scalar.ph1693.preheader, label %vector.body1697

vector.body1697:                                  ; preds = %.preheader.i799, %vector.body1697
  %index1698 = phi i64 [ %index.next1701, %vector.body1697 ], [ 0, %.preheader.i799 ] ; 2 uses
  %i.ayu = add nsw i64 %index1698, %i.ayt         ; 2 uses
  %i.ayv = getelementptr inbounds [4 x i8], ptr %i.axv, i64 %i.ayu ; 2 uses
  %i.ayw = getelementptr inbounds nuw i8, ptr %i.ayv, i64 16
  %wide.load1699 = load <4 x i32>, ptr %i.ayv, align 4, !tbaa !93
  %wide.load1700 = load <4 x i32>, ptr %i.ayw, align 4, !tbaa !93
  %i.ayx = trunc <4 x i32> %wide.load1699 to <4 x i16>
  %i.ayy = trunc <4 x i32> %wide.load1700 to <4 x i16>
  %i.ayz = getelementptr inbounds [2 x i8], ptr %i.axt, i64 %i.ayu ; 2 uses
  %i.aza = getelementptr inbounds nuw i8, ptr %i.ayz, i64 8
  store <4 x i16> %i.ayx, ptr %i.ayz, align 2, !tbaa !184
  store <4 x i16> %i.ayy, ptr %i.aza, align 2, !tbaa !184
  %index.next1701 = add nuw i64 %index1698, 8     ; 2 uses
  %i.azb = icmp eq i64 %index.next1701, %n.vec1696
  br i1 %i.azb, label %middle.block1702, label %vector.body1697, !llvm.loop !288

middle.block1702:                                 ; preds = %vector.body1697
  br i1 %cmp.n1703, label %._crit_edge14.i, label %scalar.ph1693.preheader

scalar.ph1693.preheader:                          ; preds = %.preheader.i799, %middle.block1702
  %indvars.iv36.i.ph = phi i64 [ 0, %.preheader.i799 ], [ %n.vec1696, %middle.block1702 ]
  br label %scalar.ph1693

scalar.ph1693:                                    ; preds = %scalar.ph1693.preheader, %scalar.ph1693
  %indvars.iv36.i = phi i64 [ %indvars.iv.next37.i, %scalar.ph1693 ], [ %indvars.iv36.i.ph, %scalar.ph1693.preheader ] ; 2 uses
  %i.azc = add nsw i64 %indvars.iv36.i, %i.ayt    ; 2 uses
  %i.azd = getelementptr inbounds [4 x i8], ptr %i.axv, i64 %i.azc
  %i.aze = load i32, ptr %i.azd, align 4, !tbaa !93
  %i.azf = trunc i32 %i.aze to i16
  %i.azg = getelementptr inbounds [2 x i8], ptr %i.axt, i64 %i.azc
  store i16 %i.azf, ptr %i.azg, align 2, !tbaa !184
  %indvars.iv.next37.i = add nuw nsw i64 %indvars.iv36.i, 1 ; 2 uses
  %exitcond40.not.i = icmp eq i64 %indvars.iv.next37.i, %wide.trip.count39.i
  br i1 %exitcond40.not.i, label %._crit_edge14.i, label %scalar.ph1693, !llvm.loop !289

._crit_edge14.i:                                  ; preds = %scalar.ph1693, %middle.block1702
  %indvars.iv.next42.i = add nuw nsw i64 %indvars.iv41.i, 1 ; 2 uses
  %exitcond45.not.i = icmp eq i64 %indvars.iv.next42.i, %wide.trip.count44.i
  br i1 %exitcond45.not.i, label %quantize.exit, label %.preheader.i799, !llvm.loop !290

bb.bw:                                            ; preds = %bb.bv
  %i.azh = load i32, ptr %i.kt, align 8, !tbaa !174
  %.not.i792 = icmp eq i32 %i.azh, 0
  %i.azi = mul nuw nsw i32 %i.ayo, 3
  %i.azj = lshr i32 %i.azi, 3
  %i.azk = select i1 %.not.i792, i32 %i.azj, i32 0 ; 12 uses
  %i.azl = sub nsw i32 %i.ayo, %i.azk
  %i.azm = ashr i32 %i.azl, 11
  %i.azn = add nsw i32 %i.azm, -1                 ; 4 uses
  %i.azo = shl nsw i32 %i.azn, 1                  ; 3 uses
  %.not106.i = icmp eq i32 %i.azk, 0
  %i.azp = icmp sgt i32 %.12.val.fr.i, 0
  %i.azq = icmp sgt i32 %.fr297.i.i, 0
  %or.cond17.i = and i1 %i.azq, %i.azp            ; 2 uses
  br i1 %.not106.i, label %.preheader3.i, label %.preheader6.i

.preheader6.i:                                    ; preds = %bb.bw
  br i1 %or.cond17.i, label %.preheader5.preheader.i, label %quantize.exit

.preheader5.preheader.i:                          ; preds = %.preheader6.i
  %i.azr = sext i32 %i.axx to i64
  %wide.trip.count24.i = zext nneg i32 %.12.val.fr.i to i64
  %wide.trip.count.i793 = zext nneg i32 %.fr297.i.i to i64 ; 3 uses
  %min.iters.check1706 = icmp ult i32 %.fr297.i.i, 4
  %n.vec1708 = and i64 %wide.trip.count.i793, 2147483644 ; 3 uses
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.azn, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1709 = insertelement <4 x i32> poison, i32 %i.azo, i64 0
  %broadcast.splat1710 = shufflevector <4 x i32> %broadcast.splatinsert1709, <4 x i32> poison, <4 x i32> zeroinitializer
  %cmp.n1731 = icmp eq i64 %n.vec1708, %wide.trip.count.i793
  br label %.preheader5.i

.preheader3.i:                                    ; preds = %bb.bw
  br i1 %or.cond17.i, label %.preheader2.preheader.i, label %quantize.exit

.preheader2.preheader.i:                          ; preds = %.preheader3.i
  %i.azs = sext i32 %i.axx to i64
  %wide.trip.count34.i = zext nneg i32 %.12.val.fr.i to i64
  %wide.trip.count29.i = zext nneg i32 %.fr297.i.i to i64
  br label %.preheader2.i

.preheader2.i:                                    ; preds = %._crit_edge11.i, %.preheader2.preheader.i
  %indvars.iv31.i = phi i64 [ 0, %.preheader2.preheader.i ], [ %indvars.iv.next32.i, %._crit_edge11.i ] ; 2 uses
  %i.azt = mul nsw i64 %indvars.iv31.i, %i.azs
  br label %bb.bx

bb.bx:                                            ; preds = %bb.cb, %.preheader2.i
  %indvars.iv26.i = phi i64 [ 0, %.preheader2.i ], [ %indvars.iv.next27.i, %bb.cb ] ; 2 uses
  %i.azu = add nsw i64 %indvars.iv26.i, %i.azt    ; 2 uses
  %i.azv = getelementptr inbounds [4 x i8], ptr %i.axv, i64 %i.azu
  %i.azw = load i32, ptr %i.azv, align 4, !tbaa !93 ; 4 uses
  %i.azx = add nsw i32 %i.azw, %i.azn
  %i.azy = icmp ugt i32 %i.azx, %i.azo
  br i1 %i.azy, label %bb.by, label %bb.cb

bb.by:                                            ; preds = %bb.bx
  %i.azz = icmp sgt i32 %i.azw, -1
  br i1 %i.azz, label %bb.bz, label %bb.ca

bb.bz:                                            ; preds = %bb.by
  %i.baa = shl i32 %i.azw, 11
  %i.bab = sdiv i32 %i.baa, %i.ayo
  %i.bac = trunc i32 %i.bab to i16
  br label %bb.cb

bb.ca:                                            ; preds = %bb.by
  %.neg.i = mul i32 %i.azw, -2048
  %i.bad = sdiv i32 %.neg.i, %i.ayo
  %i.bae = trunc i32 %i.bad to i16
  %i.baf = sub i16 0, %i.bae
  br label %bb.cb

bb.cb:                                            ; preds = %bb.ca, %bb.bz, %bb.bx
  %.sink.i = phi i16 [ %i.bac, %bb.bz ], [ %i.baf, %bb.ca ], [ 0, %bb.bx ]
end_hunk_2
begin_hunk_3_@encode_frame:bb.a
  %epil.iter2199.next = add i64 %epil.iter2199, 1 ; 2 uses
  %epil.iter2199.cmp.not = icmp eq i64 %epil.iter2199.next, %xtraiter2198
  br i1 %epil.iter2199.cmp.not, label %._crit_edge1082, label %bb.ia, !llvm.loop !405

._crit_edge1082:                                  ; preds = %._crit_edge1082.loopexit.unr-lcssa, %bb.ia, %.preheader908
  %.1512.lcssa = phi i64 [ %.05111085, %.preheader908 ], [ %i.dzt, %._crit_edge1082.loopexit.unr-lcssa ], [ %i.eab, %bb.ia ] ; 2 uses
  %i.eac = add nuw nsw i32 %.55251084, 1          ; 2 uses
  %exitcond1267.not = icmp eq i32 %i.eac, %i.qx
  br i1 %exitcond1267.not, label %.loopexit, label %.preheader908, !llvm.loop !406

.loopexit:                                        ; preds = %._crit_edge1082, %bb.hz
  %.2513 = phi i64 [ 0, %bb.hz ], [ %.1512.lcssa, %._crit_edge1082 ] ; 2 uses
  %i.ead = getelementptr inbounds nuw i8, ptr %i.dxt, i64 576
  %i.eae = getelementptr inbounds nuw [8 x i8], ptr %i.ead, i64 %indvars.iv1268 ; 2 uses
  %i.eaf = load i64, ptr %i.eae, align 8, !tbaa !407
  %i.eag = add i64 %i.eaf, %.2513
  store i64 %i.eag, ptr %i.eae, align 8, !tbaa !407
  %i.eah = getelementptr inbounds nuw [8 x i8], ptr %i.lz, i64 %indvars.iv1268
  store i64 %.2513, ptr %i.eah, align 8, !tbaa !407
  br label %bb.ib

.critedge583:                                     ; preds = %bb.bl
  %i.eai = load ptr, ptr %i.w, align 8, !tbaa !122
  %i.eaj = load i32, ptr %i.y, align 8, !tbaa !124
  tail call void @ff_init_range_encoder(ptr noundef nonnull %i.d, ptr noundef %i.eai, i32 noundef %i.eaj) #12
  tail call void @ff_build_rac_states(ptr noundef nonnull %i.d, i32 noundef 214748364, i32 noundef 248) #12
  store i32 1, ptr %i.cd, align 8, !tbaa !128
  store i32 1, ptr %i.lf, align 16, !tbaa !140
  %i.eak = load ptr, ptr %i.em, align 16, !tbaa !144
  %i.eal = getelementptr inbounds nuw i8, ptr %i.eak, i64 276 ; 2 uses
  %i.eam = load i32, ptr %i.eal, align 4, !tbaa !408
  %i.ean = or i32 %i.eam, 2
  store i32 %i.ean, ptr %i.eal, align 4, !tbaa !408
  br label %bb.ad

bb.ib:                                            ; preds = %predict_plane.exit586, %.loopexit
  %indvars.iv.next1269 = add nuw nsw i64 %indvars.iv1268, 1 ; 2 uses
  %i.eao = load i32, ptr %i.aa, align 16, !tbaa !105
  %i.eap = sext i32 %i.eao to i64
  %i.eaq = icmp slt i64 %indvars.iv.next1269, %i.eap
  br i1 %i.eaq, label %.lr.ph1090, label %._crit_edge1091, !llvm.loop !409

._crit_edge1091:                                  ; preds = %.loopexit934, %bb.ib
  %i.ear = load i32, ptr %i.lf, align 16, !tbaa !140
  %.not.i834 = icmp eq i32 %i.ear, 0
  br i1 %.not.i834, label %.preheader.i835, label %update_last_header_values.exit

.preheader.i835:                                  ; preds = %._crit_edge1091
  %i.eas = getelementptr inbounds nuw i8, ptr %i.b, i64 43528
  %i.eat = load i32, ptr %i.eas, align 8, !tbaa !81
  %i.eau = getelementptr inbounds nuw i8, ptr %i.b, i64 43544
  store i32 %i.eat, ptr %i.eau, align 8, !tbaa !410
  %i.eav = getelementptr inbounds nuw i8, ptr %i.b, i64 43520
  %i.eaw = getelementptr inbounds nuw i8, ptr %i.b, i64 43536
  %i.eax = load <2 x i32>, ptr %i.eav, align 16
  store <2 x i32> %i.eax, ptr %i.eaw, align 16
  %i.eay = getelementptr inbounds nuw i8, ptr %i.b, i64 80688
  %i.eaz = load i32, ptr %i.eay, align 16, !tbaa !81
  %i.eba = getelementptr inbounds nuw i8, ptr %i.b, i64 80704
  store i32 %i.eaz, ptr %i.eba, align 16, !tbaa !410
  %i.ebb = getelementptr inbounds nuw i8, ptr %i.b, i64 80680
  %i.ebc = getelementptr inbounds nuw i8, ptr %i.b, i64 80696
  %i.ebd = load <2 x i32>, ptr %i.ebb, align 8
  store <2 x i32> %i.ebd, ptr %i.ebc, align 8
  br label %update_last_header_values.exit

update_last_header_values.exit:                   ; preds = %._crit_edge1091, %.preheader.i835
  %i.ebe = load i32, ptr %i.ky, align 4, !tbaa !78
  %i.ebf = getelementptr inbounds nuw i8, ptr %i.b, i64 6128
  store i32 %i.ebe, ptr %i.ebf, align 16, !tbaa !411
  %i.ebg = load i32, ptr %i.el, align 8, !tbaa !142
  %i.ebh = getelementptr inbounds nuw i8, ptr %i.b, i64 6348
  store i32 %i.ebg, ptr %i.ebh, align 4, !tbaa !412
  %i.ebi = load i32, ptr %i.kt, align 8, !tbaa !174
  %i.ebj = getelementptr inbounds nuw i8, ptr %i.b, i64 6364
  store i32 %i.ebi, ptr %i.ebj, align 4, !tbaa !413
  %i.ebk = getelementptr inbounds nuw i8, ptr %i.b, i64 6352
  %i.ebl = load i32, ptr %i.ebk, align 16, !tbaa !79
  %i.ebm = getelementptr inbounds nuw i8, ptr %i.b, i64 6356
  store i32 %i.ebl, ptr %i.ebm, align 4, !tbaa !414
  %i.ebn = load i32, ptr %i.le, align 8, !tbaa !80
  %i.ebo = getelementptr inbounds nuw i8, ptr %i.b, i64 6380
  store i32 %i.ebn, ptr %i.ebo, align 4, !tbaa !415
  %i.ebp = load i32, ptr %i.kp, align 8, !tbaa !173
  store i32 %i.ebp, ptr %i.ku, align 4, !tbaa !175
  %i.ebq = getelementptr inbounds nuw i8, ptr %i.b, i64 6148
  %i.ebr = load i32, ptr %i.ebq, align 4, !tbaa !101
  %i.ebs = sext i32 %i.ebr to i64
  %i.ebt = getelementptr [8 x i8], ptr %i.b, i64 %i.ebs
  %i.ebu = getelementptr i8, ptr %i.ebt, i64 1776
  %i.ebv = load ptr, ptr %i.ebu, align 8, !tbaa !148
  tail call void @av_frame_unref(ptr noundef %i.ebv) #12
  %i.ebw = load i32, ptr %i.cd, align 8, !tbaa !128
  %i.ebx = load ptr, ptr %i.em, align 16, !tbaa !144 ; 2 uses
  %i.eby = getelementptr inbounds nuw i8, ptr %i.ebx, i64 120
  store i32 %i.ebw, ptr %i.eby, align 8, !tbaa !128
  %i.ebz = load i32, ptr %i.cg, align 8, !tbaa !133 ; 2 uses
  %i.eca = getelementptr inbounds nuw i8, ptr %i.ebx, i64 160
  store i32 %i.ebz, ptr %i.eca, align 8, !tbaa !133
  %i.ecb = load ptr, ptr %i.kz, align 8, !tbaa !194
  %i.ecc = load ptr, ptr %i.la, align 16, !tbaa !195
  %i.ecd = ptrtoint ptr %i.ecb to i64
  %i.ece = ptrtoint ptr %i.ecc to i64
  %i.ecf = sub i64 %i.ecd, %i.ece                 ; 2 uses
  %.tr564 = trunc i64 %i.ecf to i32
  %i.ecg = shl i32 %.tr564, 3                     ; 2 uses
  %i.ech = getelementptr inbounds nuw i8, ptr %i.b, i64 167200
  store i32 %i.ecg, ptr %i.ech, align 16, !tbaa !416
  %i.eci = load i32, ptr %i.lb, align 4, !tbaa !196
  %i.ecj = load i32, ptr %i.lc, align 4, !tbaa !197
  %i.eck = add i32 %i.ecj, %i.eci
  %i.ecl = sub i32 %i.ecg, %i.eck
  %i.ecm = getelementptr inbounds nuw i8, ptr %i.b, i64 163124
  store i32 %i.ecl, ptr %i.ecm, align 4, !tbaa !417
  %i.ecn = shl nsw i64 %i.ecf, 3
  %i.eco = getelementptr inbounds nuw i8, ptr %i.b, i64 167192 ; 2 uses
  %i.ecp = load i64, ptr %i.eco, align 8, !tbaa !418
  %i.ecq = add nsw i64 %i.ecp, %i.ecn
  store i64 %i.ecq, ptr %i.eco, align 8, !tbaa !418
  %i.ecr = load i64, ptr %i.ch, align 8, !tbaa !134
  %i.ecs = trunc i64 %i.ecr to i32                ; 2 uses
  %i.ect = getelementptr inbounds nuw i8, ptr %i.b, i64 167916
  store i32 %i.ecs, ptr %i.ect, align 4, !tbaa !419
  %i.ecu = getelementptr inbounds nuw i8, ptr %i.b, i64 167912
  store i32 %i.ecs, ptr %i.ecu, align 8, !tbaa !420
  %i.ecv = load ptr, ptr %i.hw, align 16, !tbaa !421
  %i.ecw = getelementptr inbounds nuw i8, ptr %i.ecv, i64 160
  store i32 %i.ebz, ptr %i.ecw, align 8, !tbaa !133
  %i.ecx = load i32, ptr %i.dm, align 8, !tbaa !103
  %.not565 = icmp eq i32 %i.ecx, 0
  br i1 %.not565, label %bb.id, label %bb.ic

bb.ic:                                            ; preds = %update_last_header_values.exit
  %i.ecy = tail call nsz float @ff_rate_estimate_qscale(ptr noundef nonnull %i.c, i32 noundef 0) #12
  %i.ecz = fptosi float %i.ecy to i32             ; 2 uses
  %i.eda = icmp slt i32 %i.ecz, 0
  br i1 %i.eda, label %get_encode_buffer.exit.thread, label %bb.id

bb.id:                                            ; preds = %bb.ic, %update_last_header_values.exit
  %i.edb = load i32, ptr %i.cl, align 8, !tbaa !76
  %i.edc = and i32 %i.edb, 512
  %.not566 = icmp eq i32 %i.edc, 0
  br i1 %.not566, label %bb.if, label %bb.ie

bb.ie:                                            ; preds = %bb.id
  tail call void @ff_write_pass1_stats(ptr noundef nonnull %i.c) #12
  br label %bb.if

bb.if:                                            ; preds = %bb.ie, %bb.id
  %i.edd = load i32, ptr %i.ks, align 16, !tbaa !139
  %i.ede = getelementptr inbounds nuw i8, ptr %i.b, i64 167240
  store i32 %i.edd, ptr %i.ede, align 8, !tbaa !422
  %i.edf = load ptr, ptr %i.em, align 16, !tbaa !144 ; 2 uses
  %i.edg = getelementptr inbounds nuw i8, ptr %i.edf, i64 160
  %i.edh = load i32, ptr %i.edg, align 8, !tbaa !133
  %i.edi = load ptr, ptr %i.g, align 8, !tbaa !108
  %i.edj = getelementptr inbounds nuw i8, ptr %i.edi, i64 64
  %i.edk = load i32, ptr %i.edj, align 8, !tbaa !76
  %i.edl = lshr i32 %i.edk, 13
  %i.edm = and i32 %i.edl, 4
  %i.edn = getelementptr inbounds nuw i8, ptr %i.edf, i64 120
  %i.edo = load i32, ptr %i.edn, align 8, !tbaa !128
  %i.edp = tail call i32 @ff_encode_add_stats_side_data(ptr noundef %1, i32 noundef %i.edh, ptr noundef nonnull %i.lz, i32 noundef %i.edm, i32 noundef %i.edo) #12 ; 0 uses
  %i.edq = load ptr, ptr %i.g, align 8, !tbaa !108
  %i.edr = getelementptr inbounds nuw i8, ptr %i.edq, i64 64
  %i.eds = load i32, ptr %i.edr, align 8, !tbaa !76
  %i.edt = and i32 %i.eds, 64
  %.not568 = icmp eq i32 %i.edt, 0
  br i1 %.not568, label %bb.ih, label %bb.ig

bb.ig:                                            ; preds = %bb.if
  %i.edu = getelementptr inbounds nuw i8, ptr %i.f, i64 96
  %i.edv = load ptr, ptr %i.edu, align 8, !tbaa !423
  %i.edw = load ptr, ptr %i.em, align 16, !tbaa !144
  %i.edx = tail call i32 @av_frame_replace(ptr noundef %i.edv, ptr noundef %i.edw) #12 ; 0 uses
  br label %bb.ih

bb.ih:                                            ; preds = %bb.ig, %bb.if
  %i.edy = tail call i32 @ff_rac_terminate(ptr noundef nonnull %i.d, i32 noundef 0) #12
  store i32 %i.edy, ptr %i.y, align 8, !tbaa !124
  %i.edz = load ptr, ptr %i.em, align 16, !tbaa !144
  %i.eea = getelementptr inbounds nuw i8, ptr %i.edz, i64 276
  %i.eeb = load i32, ptr %i.eea, align 4, !tbaa !408
  %i.eec = and i32 %i.eeb, 2
  %.not569 = icmp eq i32 %i.eec, 0
  br i1 %.not569, label %bb.ij, label %bb.ii

bb.ii:                                            ; preds = %bb.ih
  %i.eed = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.eee = load i32, ptr %i.eed, align 8, !tbaa !428
  %i.eef = or i32 %i.eee, 1
  store i32 %i.eef, ptr %i.eed, align 8, !tbaa !428
  br label %bb.ij

bb.ij:                                            ; preds = %bb.ii, %bb.ih
  store i32 1, ptr %3, align 4, !tbaa !93
  br label %get_encode_buffer.exit.thread

get_encode_buffer.exit.thread:                    ; preds = %ratecontrol_1pass.exit, %._crit_edge105.thread.i, %bb.s, %bb.ic, %bb.f, %bb.a, %bb.ij, %bb.ah
  %.6 = phi i32 [ %i.u, %bb.a ], [ -1, %bb.f ], [ -22, %bb.ah ], [ %i.gs, %bb.s ], [ %i.ecz, %bb.ic ], [ 0, %bb.ij ], [ -1, %._crit_edge105.thread.i ], [ -1, %ratecontrol_1pass.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  ret i32 %.6
}

; Function Attrs: cold nounwind optsize uwtable
define internal noundef i32 @encode_end(ptr noundef %0) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !9    ; 8 uses
  tail call void @ff_snow_common_end(ptr noundef %i.b) #12
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 167248
  tail call void @ff_rate_control_uninit(ptr noundef nonnull %i.c) #12
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 1768
  tail call void @av_frame_free(ptr noundef nonnull %i.d) #12
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 6160
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 6224
  br label %bb.c

bb.b:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 161480
  store ptr null, ptr %i.g, align 8, !tbaa !429
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 161472
  tail call void @av_freep(ptr noundef nonnull %i.h) #12
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 172392
  tail call void @av_freep(ptr noundef nonnull %i.i) #12
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 496
  tail call void @av_freep(ptr noundef nonnull %i.j) #12
  ret i32 0

bb.c:                                             ; preds = %bb.a, %bb.c
  %indvars.iv = phi i64 [ 0, %bb.a ], [ %indvars.iv.next, %bb.c ] ; 3 uses
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv
  tail call void @av_freep(ptr noundef nonnull %i.k) #12
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %indvars.iv
  tail call void @av_freep(ptr noundef nonnull %i.l) #12
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 8
  br i1 %exitcond.not, label %bb.b, label %bb.c, !llvm.loop !430
}

declare ptr @av_default_item_name(ptr noundef) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #3

declare void @av_log(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

declare void @ff_hpeldsp_init(ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @ff_snow_common_init(ptr noundef) local_unnamed_addr #2

declare void @ff_me_cmp_init(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @ff_me_init(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @ff_mpegvideoencdsp_init(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @ff_snow_alloc_blocks(ptr noundef) local_unnamed_addr #2

declare noalias ptr @av_calloc(i64 noundef, i64 noundef) local_unnamed_addr #2

declare ptr @ff_h263_get_mv_penalty() local_unnamed_addr #2

declare noalias ptr @av_mallocz(i64 noundef) local_unnamed_addr #2

declare i32 @ff_rate_control_init(ptr noundef) local_unnamed_addr #2

declare i32 @av_pix_fmt_get_chroma_sub_sample(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @av_frame_alloc() local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #3

declare i32 @ff_encode_alloc_frame(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @ff_alloc_packet(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare void @ff_init_range_encoder(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @ff_build_rac_states(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #3

declare float @ff_rate_estimate_qscale(ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @ff_snow_frames_prepare(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #4

declare void @ff_me_init_pic(ptr noundef) local_unnamed_addr #2

declare i32 @ff_snow_common_init_after_header(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @encode_header(ptr noundef %0) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 54 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 6112 ; 4 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !140  ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 28 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !318  ; 2 uses
  %i.f = ashr i32 %i.e, 1                         ; 2 uses
  %.not.i = icmp eq i32 %i.c, 0
  %i.g = sub i32 %i.e, %i.f                       ; 2 uses
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = load i32, ptr %i.a, align 8, !tbaa !319
  %i.i = add nsw i32 %i.h, %i.g
  store i32 %i.i, ptr %i.a, align 8, !tbaa !319
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.sink.i = phi i32 [ %i.f, %bb.b ], [ %i.g, %bb.a ] ; 3 uses
  store i32 %.sink.i, ptr %i.d, align 4, !tbaa !318
  %i.j = icmp slt i32 %.sink.i, 256
  br i1 %i.j, label %bb.d, label %put_rac.exit

bb.d:                                             ; preds = %bb.c
  %i.k = load i32, ptr %i.a, align 8, !tbaa !319  ; 2 uses
  %i.l = add nsw i32 %i.k, -65281                 ; 2 uses
  %i.m = icmp ugt i32 %i.l, 254
  br i1 %i.m, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.n = ashr i32 %i.l, 31                        ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 3 uses
  %i.p = load i32, ptr %i.o, align 4, !tbaa !321
  %i.q = add nsw i32 %i.n, 1
  %i.r = add i32 %i.q, %i.p
  %i.s = trunc i32 %i.r to i8
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 552 ; 5 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !322
  store i8 %i.s, ptr %i.u, align 1, !tbaa !84
  %i.v = load i32, ptr %i.o, align 4, !tbaa !321
  %i.w = icmp sgt i32 %i.v, -1
  %i.x = load ptr, ptr %i.t, align 8, !tbaa !322
  %i.y = zext i1 %i.w to i64
  %i.z = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.y
  store ptr %i.z, ptr %i.t, align 8, !tbaa !322
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.ab = load i32, ptr %i.aa, align 8, !tbaa !320
  %.not16.i.i = icmp eq i32 %i.ab, 0
  br i1 %.not16.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.e
  %i.ac = trunc nsw i32 %i.n to i8
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %.lr.ph.i.i
  %i.ad = load ptr, ptr %i.t, align 8, !tbaa !322 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 1
  store ptr %i.ae, ptr %i.t, align 8, !tbaa !322
  store i8 %i.ac, ptr %i.ad, align 1, !tbaa !84
  %i.af = load i32, ptr %i.aa, align 8, !tbaa !320
  %i.ag = add nsw i32 %i.af, -1                   ; 2 uses
  store i32 %i.ag, ptr %i.aa, align 8, !tbaa !320
  %.not.i.i = icmp eq i32 %i.ag, 0
  br i1 %.not.i.i, label %._crit_edge.i.i, label %bb.f, !llvm.loop !323

._crit_edge.i.i:                                  ; preds = %bb.f, %bb.e
  %i.ah = load i32, ptr %i.a, align 8, !tbaa !319 ; 2 uses
  %i.ai = ashr i32 %i.ah, 8
  store i32 %i.ai, ptr %i.o, align 4, !tbaa !321
  %.pre.i = load i32, ptr %i.d, align 4, !tbaa !318
  %.pre.pre = load i32, ptr %i.b, align 8, !tbaa !140
  br label %renorm_encoder.exit.i

bb.g:                                             ; preds = %bb.d
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.ak = load i32, ptr %i.aj, align 8, !tbaa !320
  %i.al = add nsw i32 %i.ak, 1
  store i32 %i.al, ptr %i.aj, align 8, !tbaa !320
  br label %renorm_encoder.exit.i

renorm_encoder.exit.i:                            ; preds = %bb.g, %._crit_edge.i.i
  %.pre = phi i32 [ %i.c, %bb.g ], [ %.pre.pre, %._crit_edge.i.i ]
  %i.am = phi i32 [ %.sink.i, %bb.g ], [ %.pre.i, %._crit_edge.i.i ]
  %i.an = phi i32 [ %i.k, %bb.g ], [ %i.ah, %._crit_edge.i.i ]
  %i.ao = shl i32 %i.an, 8
  %i.ap = and i32 %i.ao, 65280
  store i32 %i.ap, ptr %i.a, align 8, !tbaa !319
  %i.aq = shl i32 %i.am, 8
  store i32 %i.aq, ptr %i.d, align 4, !tbaa !318
  br label %put_rac.exit

put_rac.exit:                                     ; preds = %bb.c, %renorm_encoder.exit.i
  %i.ar = phi i32 [ %i.c, %bb.c ], [ %.pre, %renorm_encoder.exit.i ]
  %.not = icmp eq i32 %i.ar, 0
  br i1 %.not, label %bb.h, label %.loopexit219

bb.h:                                             ; preds = %put_rac.exit
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 6116
  %i.at = load i32, ptr %i.as, align 4, !tbaa !431
  %.not128 = icmp eq i32 %i.at, 0
  br i1 %.not128, label %.loopexit219..critedge.preheader_crit_edge, label %.loopexit219

.loopexit219:                                     ; preds = %put_rac.exit, %bb.h
end_hunk_3
begin_hunk_4_@encode_header:bb.a
put_rac.exit190:                                  ; preds = %bb.aq, %renorm_encoder.exit.i184
  %i.ob = phi i32 [ %i.mi, %bb.aq ], [ %.pre243, %renorm_encoder.exit.i184 ]
  tail call fastcc void @put_symbol(ptr noundef nonnull %i.a, ptr noundef nonnull %i.ig, i32 noundef %i.ob, i32 noundef 0)
  %i.oc = load i32, ptr %i.gp, align 8, !tbaa !105 ; 2 uses
  %i.od = icmp sgt i32 %i.oc, 0
  br i1 %i.od, label %.preheader.lr.ph.i191, label %encode_qlogs.exit206

.preheader.lr.ph.i191:                            ; preds = %put_rac.exit190
  %i.oe = load i32, ptr %i.mh, align 8, !tbaa !173 ; 2 uses
  %i.of = icmp sgt i32 %i.oe, 0
  br i1 %i.of, label %.preheader.i192, label %encode_qlogs.exit206

.preheader.i192:                                  ; preds = %.preheader.lr.ph.i191, %._crit_edge.i194
  %i.og = phi i32 [ %i.ot, %._crit_edge.i194 ], [ %i.oc, %.preheader.lr.ph.i191 ]
  %i.oh = phi i32 [ %i.ou, %._crit_edge.i194 ], [ %i.oe, %.preheader.lr.ph.i191 ] ; 2 uses
  %indvars.iv29.i193 = phi i64 [ 1, %._crit_edge.i194 ], [ 0, %.preheader.lr.ph.i191 ] ; 2 uses
  %i.oi = icmp sgt i32 %i.oh, 0
  br i1 %i.oi, label %.lr.ph.i197, label %._crit_edge.i194

.lr.ph.i197:                                      ; preds = %.preheader.i192
  %i.oj = getelementptr inbounds nuw [37160 x i8], ptr %0, i64 %indvars.iv29.i193
  br label %bb.av

bb.av:                                            ; preds = %bb.az, %.lr.ph.i197
  %indvars.iv26.i198 = phi i64 [ 0, %.lr.ph.i197 ], [ %indvars.iv.next27.i203, %bb.az ] ; 3 uses
  %.not.i199 = icmp ne i64 %indvars.iv26.i198, 0
  %i.ok = getelementptr inbounds nuw [4640 x i8], ptr %i.oj, i64 %indvars.iv26.i198
  %i.ol = zext i1 %.not.i199 to i64
  br label %bb.aw

bb.aw:                                            ; preds = %bb.ay, %bb.av
  %indvars.iv.i200 = phi i64 [ %i.ol, %bb.av ], [ %indvars.iv.next.i201, %bb.ay ] ; 3 uses
  %i.om = icmp eq i64 %indvars.iv.i200, 2
  br i1 %i.om, label %bb.ay, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.on = getelementptr inbounds nuw [1160 x i8], ptr %i.ok, i64 %indvars.iv.i200
  %i.oo = getelementptr inbounds nuw i8, ptr %i.on, i64 6416
  %i.op = load i32, ptr %i.oo, align 8, !tbaa !190
  tail call fastcc void @put_symbol(ptr noundef nonnull %i.a, ptr noundef nonnull %i.ig, i32 noundef %i.op, i32 noundef 1)
  br label %bb.ay

bb.ay:                                            ; preds = %bb.ax, %bb.aw
  %indvars.iv.next.i201 = add nuw nsw i64 %indvars.iv.i200, 1 ; 2 uses
  %exitcond.not.i202 = icmp eq i64 %indvars.iv.next.i201, 4
  br i1 %exitcond.not.i202, label %bb.az, label %bb.aw, !llvm.loop !436

bb.az:                                            ; preds = %bb.ay
  %indvars.iv.next27.i203 = add nuw nsw i64 %indvars.iv26.i198, 1 ; 2 uses
  %i.oq = load i32, ptr %i.mh, align 8, !tbaa !173 ; 2 uses
  %i.or = sext i32 %i.oq to i64
  %i.os = icmp slt i64 %indvars.iv.next27.i203, %i.or
  br i1 %i.os, label %bb.av, label %._crit_edge.loopexit.i204, !llvm.loop !437

._crit_edge.loopexit.i204:                        ; preds = %bb.az
  %.pre.i205 = load i32, ptr %i.gp, align 8, !tbaa !105
  br label %._crit_edge.i194

._crit_edge.i194:                                 ; preds = %._crit_edge.loopexit.i204, %.preheader.i192
  %i.ot = phi i32 [ %.pre.i205, %._crit_edge.loopexit.i204 ], [ %i.og, %.preheader.i192 ] ; 2 uses
  %i.ou = phi i32 [ %i.oq, %._crit_edge.loopexit.i204 ], [ %i.oh, %.preheader.i192 ]
  %indvars.iv.next30.i195 = add nuw nsw i64 %indvars.iv29.i193, 1
  %spec.select.i196 = tail call i32 @llvm.smin.i32(i32 %i.ot, i32 2)
  %i.ov = sext i32 %spec.select.i196 to i64
  %i.ow = icmp slt i64 %indvars.iv.next30.i195, %i.ov
  br i1 %i.ow, label %.preheader.i192, label %encode_qlogs.exit206, !llvm.loop !438

bb.ba:                                            ; preds = %.loopexit
  store i32 %i.mo, ptr %i.d, align 4, !tbaa !318
  %i.ox = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.oy = zext i8 %i.mk to i64
  %i.oz = getelementptr inbounds nuw i8, ptr %i.ox, i64 %i.oy
  %storemerge.i209 = load i8, ptr %i.oz, align 1, !tbaa !84
  store i8 %storemerge.i209, ptr %i.ig, align 1, !tbaa !84
  %i.pa = icmp slt i32 %i.mo, 256
  br i1 %i.pa, label %bb.bb, label %encode_qlogs.exit206

bb.bb:                                            ; preds = %bb.ba
  %i.pb = load i32, ptr %i.a, align 8, !tbaa !319 ; 2 uses
  %i.pc = add nsw i32 %i.pb, -65281               ; 2 uses
  %i.pd = icmp ugt i32 %i.pc, 254
  br i1 %i.pd, label %bb.bc, label %bb.be

bb.bc:                                            ; preds = %bb.bb
  %i.pe = ashr i32 %i.pc, 31                      ; 2 uses
  %i.pf = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 3 uses
  %i.pg = load i32, ptr %i.pf, align 4, !tbaa !321
  %i.ph = add nsw i32 %i.pe, 1
  %i.pi = add i32 %i.ph, %i.pg
  %i.pj = trunc i32 %i.pi to i8
  %i.pk = getelementptr inbounds nuw i8, ptr %0, i64 552 ; 5 uses
  %i.pl = load ptr, ptr %i.pk, align 8, !tbaa !322
  store i8 %i.pj, ptr %i.pl, align 1, !tbaa !84
  %i.pm = load i32, ptr %i.pf, align 4, !tbaa !321
  %i.pn = icmp sgt i32 %i.pm, -1
  %i.po = load ptr, ptr %i.pk, align 8, !tbaa !322
  %i.pp = zext i1 %i.pn to i64
  %i.pq = getelementptr inbounds nuw i8, ptr %i.po, i64 %i.pp
  store ptr %i.pq, ptr %i.pk, align 8, !tbaa !322
  %i.pr = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.ps = load i32, ptr %i.pr, align 8, !tbaa !320
  %.not16.i.i211 = icmp eq i32 %i.ps, 0
  br i1 %.not16.i.i211, label %._crit_edge.i.i214, label %.lr.ph.i.i212

.lr.ph.i.i212:                                    ; preds = %bb.bc
  %i.pt = trunc nsw i32 %i.pe to i8
  br label %bb.bd

bb.bd:                                            ; preds = %bb.bd, %.lr.ph.i.i212
  %i.pu = load ptr, ptr %i.pk, align 8, !tbaa !322 ; 2 uses
  %i.pv = getelementptr inbounds nuw i8, ptr %i.pu, i64 1
  store ptr %i.pv, ptr %i.pk, align 8, !tbaa !322
  store i8 %i.pt, ptr %i.pu, align 1, !tbaa !84
  %i.pw = load i32, ptr %i.pr, align 8, !tbaa !320
  %i.px = add nsw i32 %i.pw, -1                   ; 2 uses
  store i32 %i.px, ptr %i.pr, align 8, !tbaa !320
  %.not.i.i213 = icmp eq i32 %i.px, 0
  br i1 %.not.i.i213, label %._crit_edge.i.i214, label %bb.bd, !llvm.loop !323

._crit_edge.i.i214:                               ; preds = %bb.bd, %bb.bc
  %i.py = load i32, ptr %i.a, align 8, !tbaa !319 ; 2 uses
  %i.pz = ashr i32 %i.py, 8
  store i32 %i.pz, ptr %i.pf, align 4, !tbaa !321
  %.pre.i215 = load i32, ptr %i.d, align 4, !tbaa !318
  br label %renorm_encoder.exit.i210

bb.be:                                            ; preds = %bb.bb
  %i.qa = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.qb = load i32, ptr %i.qa, align 8, !tbaa !320
  %i.qc = add nsw i32 %i.qb, 1
  store i32 %i.qc, ptr %i.qa, align 8, !tbaa !320
  br label %renorm_encoder.exit.i210

renorm_encoder.exit.i210:                         ; preds = %bb.be, %._crit_edge.i.i214
  %i.qd = phi i32 [ %i.mo, %bb.be ], [ %.pre.i215, %._crit_edge.i.i214 ]
  %i.qe = phi i32 [ %i.pb, %bb.be ], [ %i.py, %._crit_edge.i.i214 ]
  %i.qf = shl i32 %i.qe, 8
  %i.qg = and i32 %i.qf, 65280
  store i32 %i.qg, ptr %i.a, align 8, !tbaa !319
  %i.qh = shl i32 %i.qd, 8
  store i32 %i.qh, ptr %i.d, align 4, !tbaa !318
  br label %encode_qlogs.exit206

encode_qlogs.exit206:                             ; preds = %._crit_edge.i194, %renorm_encoder.exit.i210, %bb.ba, %.preheader.lr.ph.i191, %put_rac.exit190, %encode_qlogs.exitthread-pre-split
  %i.qi = getelementptr inbounds nuw i8, ptr %0, i64 1856 ; 5 uses
  %i.qj = getelementptr inbounds nuw i8, ptr %0, i64 6124
  %i.qk = load i32, ptr %i.qj, align 4, !tbaa !78
  %i.ql = getelementptr inbounds nuw i8, ptr %0, i64 6128
  %i.qm = load i32, ptr %i.ql, align 8, !tbaa !411
  %i.qn = sub nsw i32 %i.qk, %i.qm
  tail call fastcc void @put_symbol(ptr noundef nonnull %i.a, ptr noundef nonnull %i.qi, i32 noundef %i.qn, i32 noundef 1)
  %i.qo = getelementptr inbounds nuw i8, ptr %0, i64 6344
  %i.qp = load i32, ptr %i.qo, align 8, !tbaa !142
  %i.qq = getelementptr inbounds nuw i8, ptr %0, i64 6348
  %i.qr = load i32, ptr %i.qq, align 4, !tbaa !412
  %i.qs = sub nsw i32 %i.qp, %i.qr
  tail call fastcc void @put_symbol(ptr noundef nonnull %i.a, ptr noundef nonnull %i.qi, i32 noundef %i.qs, i32 noundef 1)
  %i.qt = getelementptr inbounds nuw i8, ptr %0, i64 6352
  %i.qu = load i32, ptr %i.qt, align 8, !tbaa !79
  %i.qv = getelementptr inbounds nuw i8, ptr %0, i64 6356
  %i.qw = load i32, ptr %i.qv, align 4, !tbaa !414
  %i.qx = sub nsw i32 %i.qu, %i.qw
  tail call fastcc void @put_symbol(ptr noundef nonnull %i.a, ptr noundef nonnull %i.qi, i32 noundef %i.qx, i32 noundef 1)
  %i.qy = getelementptr inbounds nuw i8, ptr %0, i64 6360
  %i.qz = load i32, ptr %i.qy, align 8, !tbaa !174
  %i.ra = getelementptr inbounds nuw i8, ptr %0, i64 6364
  %i.rb = load i32, ptr %i.ra, align 4, !tbaa !413
  %i.rc = sub nsw i32 %i.qz, %i.rb
  tail call fastcc void @put_symbol(ptr noundef nonnull %i.a, ptr noundef nonnull %i.qi, i32 noundef %i.rc, i32 noundef 1)
  %i.rd = getelementptr inbounds nuw i8, ptr %0, i64 6376
  %i.re = load i32, ptr %i.rd, align 8, !tbaa !80
  %i.rf = getelementptr inbounds nuw i8, ptr %0, i64 6380
  %i.rg = load i32, ptr %i.rf, align 4, !tbaa !415
  %i.rh = sub nsw i32 %i.re, %i.rg
  tail call fastcc void @put_symbol(ptr noundef nonnull %i.a, ptr noundef nonnull %i.qi, i32 noundef %i.rh, i32 noundef 1)
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @encode_blocks(ptr noundef %0, i32 noundef range(i32 0, 2) %1) unnamed_addr #1 {
bb.a:
  %2 = alloca %struct.BlockNode, align 2          ; 4 uses
  %3 = alloca [4 x %struct.BlockNode], align 16   ; 7 uses
  %4 = alloca [4 x %struct.BlockNode], align 16   ; 7 uses
  %5 = alloca %struct.BlockNode, align 2          ; 4 uses
  %6 = alloca %struct.BlockNode, align 2          ; 4 uses
  %7 = alloca %struct.BlockNode, align 2          ; 4 uses
  %8 = alloca %struct.BlockNode, align 2          ; 4 uses
  %9 = alloca %struct.BlockNode, align 2          ; 4 uses
  %10 = alloca %struct.BlockNode, align 2         ; 4 uses
  %11 = alloca %struct.BlockNode, align 2         ; 4 uses
  %12 = alloca %struct.BlockNode, align 2         ; 4 uses
  %13 = alloca %struct.BlockNode, align 2         ; 4 uses
  %14 = alloca %struct.BlockNode, align 2         ; 4 uses
  %15 = alloca %struct.BlockNode, align 2         ; 4 uses
  %16 = alloca %struct.BlockNode, align 2         ; 4 uses
  %17 = alloca %struct.BlockNode, align 2         ; 4 uses
  %18 = alloca %struct.BlockNode, align 2         ; 4 uses
  %i.a = alloca [3 x i32], align 4                ; 6 uses
  %19 = alloca %struct.RangeCoder, align 8        ; 4 uses
  %20 = alloca [4224 x i8], align 16              ; 4 uses
  %.sroa.6.i = alloca { [3 x i8], i8, i8 }, align 8 ; 5 uses
  %i.b = alloca [32 x [32 x i8]], align 16        ; 60 uses
  %i.c = alloca [4 x ptr], align 16               ; 7 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 6368 ; 20 uses
  %i.e = load i32, ptr %i.d, align 8, !tbaa !117
  %.fr64 = freeze i32 %i.e                        ; 7 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 6372 ; 3 uses
  %i.g = load i32, ptr %i.f, align 4, !tbaa !116  ; 6 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 155980 ; 2 uses
  %i.i = load i32, ptr %i.h, align 4, !tbaa !115
  %i.j = icmp eq i32 %i.i, 3
  br i1 %i.j, label %bb.b, label %bb.ed

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 6112
  %i.l = load i32, ptr %i.k, align 8, !tbaa !140
  %i.m = icmp eq i32 %i.l, 0
  %i.n = icmp ne i32 %1, 0
  %or.cond = and i1 %i.n, %i.m
  br i1 %or.cond, label %bb.c, label %bb.ed

bb.c:                                             ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 6376 ; 23 uses
  %i.p = load i32, ptr %i.o, align 8, !tbaa !80   ; 2 uses
  %i.q = shl i32 %.fr64, %i.p                     ; 7 uses
  %i.r = shl i32 %i.g, %i.p                       ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %19)
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(560) %19, ptr noundef nonnull align 8 dereferenceable(560) %i.s, i64 560, i1 false), !tbaa.struct !443
  call void @llvm.lifetime.start.p0(ptr nonnull %20)
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 1888 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(4224) %20, ptr noundef nonnull align 8 dereferenceable(4224) %i.t, i64 4224, i1 false)
  %i.u = icmp sgt i32 %i.g, 0
  %i.v = icmp sgt i32 %.fr64, 0
  %or.cond1088.i = and i1 %i.u, %i.v
  br i1 %or.cond1088.i, label %.preheader641.i, label %._crit_edge653.i

.preheader641.i:                                  ; preds = %bb.c, %._crit_edge.i
  %i.w = phi i32 [ %i.ad, %._crit_edge.i ], [ %i.g, %bb.c ]
  %i.x = phi i32 [ %i.ae, %._crit_edge.i ], [ %.fr64, %bb.c ] ; 2 uses
  %.0427652.i = phi i32 [ %i.af, %._crit_edge.i ], [ 0, %bb.c ] ; 2 uses
  %i.y = icmp sgt i32 %i.x, 0
  br i1 %i.y, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %.preheader641.i, %.lr.ph.i
  %.0422651.i = phi i32 [ %i.aa, %.lr.ph.i ], [ 0, %.preheader641.i ] ; 2 uses
  %i.z = tail call fastcc i32 @encode_q_branch(ptr noundef nonnull %0, i32 noundef 0, i32 noundef %.0422651.i, i32 noundef %.0427652.i) ; 0 uses
  %i.aa = add nuw nsw i32 %.0422651.i, 1          ; 2 uses
  %i.ab = load i32, ptr %i.d, align 8, !tbaa !117 ; 2 uses
  %i.ac = icmp slt i32 %i.aa, %i.ab
  br i1 %i.ac, label %.lr.ph.i, label %._crit_edge.loopexit.i, !llvm.loop !444

._crit_edge.loopexit.i:                           ; preds = %.lr.ph.i
  %.pre.i = load i32, ptr %i.f, align 4, !tbaa !116
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.loopexit.i, %.preheader641.i
  %i.ad = phi i32 [ %.pre.i, %._crit_edge.loopexit.i ], [ %i.w, %.preheader641.i ] ; 2 uses
  %i.ae = phi i32 [ %i.ab, %._crit_edge.loopexit.i ], [ %i.x, %.preheader641.i ]
  %i.af = add nuw nsw i32 %.0427652.i, 1          ; 2 uses
  %i.ag = icmp slt i32 %i.af, %i.ad
  br i1 %i.ag, label %.preheader641.i, label %._crit_edge653.i, !llvm.loop !445

._crit_edge653.i:                                 ; preds = %._crit_edge.i, %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(560) %i.s, ptr noundef nonnull align 8 dereferenceable(560) %19, i64 560, i1 false), !tbaa.struct !443
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(4224) %i.t, ptr noundef nonnull align 16 dereferenceable(4224) %20, i64 4224, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %20)
  call void @llvm.lifetime.end.p0(ptr nonnull %19)
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.ai = icmp sgt i32 %i.r, 0
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 155032 ; 20 uses
  %i.ak = xor i32 %i.q, -1
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 172352 ; 18 uses
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 168256 ; 17 uses
  %i.an = add nsw i32 %i.q, -1
  %i.ao = add nsw i32 %i.r, -1
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 1768 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 1776 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 6392 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 6396
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 6384 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 6332
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 6336
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 172400
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 155080
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 155976 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 6152 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 6160
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 6224 ; 2 uses
  %i.bc = sub nsw i32 0, %i.q
  %i.bd = sext i32 %i.bc to i64
  %i.be = sext i32 %i.q to i64                    ; 6 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 155984
  %i.bg = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.bh = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  br i1 %i.ai, label %.split.us.i, label %.split800.us.thread.i

.split.us.i:                                      ; preds = %._crit_edge653.i
  %i.bi = icmp sgt i32 %i.q, 0
  br i1 %i.bi, label %.preheader640.us.us.preheader.i, label %.split800.us.thread1057.i

.preheader640.us.us.preheader.i:                  ; preds = %.split.us.i
  %i.bj = sext i32 %i.ak to i64
  %i.bk = zext nneg i32 %i.an to i64              ; 2 uses
  %i.bl = zext nneg i32 %i.r to i64               ; 2 uses
  %i.bm = zext nneg i32 %i.ao to i64
  %wide.trip.count925.i = zext nneg i32 %i.q to i64 ; 2 uses
  %scevgep234 = getelementptr i8, ptr %0, i64 172400
  %scevgep237 = getelementptr i8, ptr %0, i64 172400
  %scevgep333 = getelementptr i8, ptr %i.b, i64 -32
  %scevgep362 = getelementptr i8, ptr %i.b, i64 -32
  br label %.preheader640.us.us.i

.preheader640.us.us.i:                            ; preds = %._crit_edge724.split.us.us.us.i, %.preheader640.us.us.preheader.i
  %.0766.us.us.i = phi i32 [ %i.buw, %._crit_edge724.split.us.us.us.i ], [ 0, %.preheader640.us.us.preheader.i ] ; 4 uses
  %.not483.us.us.i = icmp eq i32 %.0766.us.us.i, 0 ; 2 uses
  br label %.preheader639.us.us.us.i

.preheader639.us.us.us.i:                         ; preds = %._crit_edge721.us.us.us.i, %.preheader640.us.us.i
  %indvars.iv = phi i32 [ %indvars.iv.next, %._crit_edge721.us.us.us.i ], [ 2, %.preheader640.us.us.i ] ; 2 uses
  %indvars.iv927.i = phi i64 [ %indvars.iv.next928.i, %._crit_edge721.us.us.us.i ], [ 0, %.preheader640.us.us.i ] ; 25 uses
  %indvars.iv903.i = phi i32 [ %indvars.iv.next904.i, %._crit_edge721.us.us.us.i ], [ -1, %.preheader640.us.us.i ] ; 5 uses
  %.0430722.us.us.us.i = phi i32 [ %.3433.us.us.us.i, %._crit_edge721.us.us.us.i ], [ 0, %.preheader640.us.us.i ]
  %i.bn = trunc i64 %indvars.iv927.i to i32
  %i.bo = trunc i64 %indvars.iv927.i to i32
  %i.bp = trunc i64 %indvars.iv927.i to i32
  %i.bq = trunc i64 %indvars.iv927.i to i32
  %i.br = mul nuw nsw i64 %indvars.iv927.i, %i.be
  %i.bs = icmp ne i64 %indvars.iv927.i, 0         ; 3 uses
  %indvars.iv.next928.i = add nuw nsw i64 %indvars.iv927.i, 1 ; 3 uses
  %i.bt = icmp samesign uge i64 %indvars.iv.next928.i, %i.bl ; 4 uses
  %i.bu = icmp eq i64 %indvars.iv927.i, 0         ; 2 uses
  %i.bv = icmp eq i64 %indvars.iv927.i, %i.bm     ; 2 uses
  %i.bw = trunc i64 %indvars.iv927.i to i32       ; 18 uses
  %i.bx = add i32 %i.bw, -1
  br label %bb.d

bb.d:                                             ; preds = %bb.df, %.preheader639.us.us.us.i
  %indvars.iv922.i = phi i64 [ %indvars.iv.next923.i, %bb.df ], [ 0, %.preheader639.us.us.us.i ] ; 32 uses
  %indvars.iv896.i = phi i32 [ %indvars.iv.next897.i, %bb.df ], [ -1, %.preheader639.us.us.us.i ] ; 5 uses
  %.1431717.us.us.us.i = phi i32 [ %.3433.us.us.us.i, %bb.df ], [ %.0430722.us.us.us.i, %.preheader639.us.us.us.i ] ; 4 uses
  %i.by = trunc i64 %indvars.iv922.i to i32
  %i.bz = trunc i64 %indvars.iv922.i to i32
  %i.ca = trunc i64 %indvars.iv922.i to i32
  %i.cb = trunc i64 %indvars.iv922.i to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i)
  %i.cc = add nuw nsw i64 %indvars.iv922.i, %i.br ; 5 uses
  %i.cd = load ptr, ptr %i.aj, align 8, !tbaa !217 ; 2 uses
  %i.ce = getelementptr [10 x i8], ptr %i.cd, i64 %i.cc ; 19 uses
  %i.cf = sub nsw i64 %i.cc, %i.be
  %i.cg = getelementptr [10 x i8], ptr %i.cd, i64 %i.cf ; 2 uses
  %i.ch = select i1 %i.bs, ptr %i.cg, ptr null    ; 3 uses
  %i.ci = icmp ne i64 %indvars.iv922.i, 0         ; 3 uses
  %i.cj = getelementptr i8, ptr %i.ce, i64 -10
  %spec.select604.us.us.us.i = select i1 %i.ci, ptr %i.cj, ptr null ; 3 uses
  %indvars.iv.next923.i = add nuw nsw i64 %indvars.iv922.i, 1 ; 3 uses
  %i.ck = icmp slt i64 %indvars.iv.next923.i, %i.be ; 3 uses
  %i.cl = getelementptr i8, ptr %i.ce, i64 10
  %i.cm = select i1 %i.ck, ptr %i.cl, ptr null    ; 3 uses
  %i.cn = getelementptr [10 x i8], ptr %i.ce, i64 %i.be ; 3 uses
  %or.cond.us.us.us.i = and i1 %i.bs, %i.ci
  %i.co = getelementptr [10 x i8], ptr %i.ce, i64 %i.bj
  %i.cp = select i1 %or.cond.us.us.us.i, ptr %i.co, ptr null ; 2 uses
  %or.cond3.us.us.us.i = and i1 %i.bs, %i.ck
  %i.cq = getelementptr i8, ptr %i.cg, i64 10
  %i.cr = select i1 %or.cond3.us.us.us.i, ptr %i.cq, ptr null ; 2 uses
  %.not504.us.us.us.i = xor i1 %i.ci, true
  %brmerge.us.us.us.i = or i1 %i.bt, %.not504.us.us.us.i
  %i.cs = getelementptr i8, ptr %i.cn, i64 -10
  %i.ct = select i1 %brmerge.us.us.us.i, ptr null, ptr %i.cs ; 2 uses
  %.not506.us.us.us.i = xor i1 %i.ck, true
  %brmerge508.us.us.us.i = or i1 %i.bt, %.not506.us.us.us.i
  %i.cu = getelementptr i8, ptr %i.cn, i64 10
  %i.cv = select i1 %brmerge508.us.us.us.i, ptr null, ptr %i.cu ; 2 uses
  %i.cw = load i32, ptr %i.o, align 8, !tbaa !80  ; 11 uses
  %i.cx = lshr i32 16, %i.cw                      ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #12
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.ce, i64 8 ; 4 uses
  %.pre943.i = load i8, ptr %.phi.trans.insert.i, align 2, !tbaa !219 ; 4 uses
  %i.cy = and i8 %.pre943.i, 2
  %.not484.us.us.us.i = icmp eq i8 %i.cy, 0
  %or.cond1089.i = select i1 %.not483.us.us.i, i1 true, i1 %.not484.us.us.us.i
  br i1 %or.cond1089.i, label %._crit_edge942.i, label %bb.df

._crit_edge942.i:                                 ; preds = %bb.d
  %i.cz = or i8 %.pre943.i, 2
  store i8 %i.cz, ptr %.phi.trans.insert.i, align 2, !tbaa !219
  %.sroa.0.0.copyload.us.us.us.i = load i16, ptr %i.ce, align 2, !tbaa !184
  %.sroa.4568.0..sroa_idx.us.us.us.i = getelementptr inbounds nuw i8, ptr %i.ce, i64 2 ; 6 uses
  %.sroa.4568.0.copyload.us.us.us.i = load i16, ptr %.sroa.4568.0..sroa_idx.us.us.us.i, align 2, !tbaa !184
  %.sroa.5.0..sroa_idx.us.us.us.i = getelementptr inbounds nuw i8, ptr %i.ce, i64 4 ; 6 uses
  %.sroa.5.0.copyload569.us.us.us.i = load i8, ptr %.sroa.5.0..sroa_idx.us.us.us.i, align 2, !tbaa !84
  %.sroa.6570.0..sroa_idx.us.us.us.i = getelementptr inbounds nuw i8, ptr %i.ce, i64 5 ; 6 uses
  %.sroa.6570.0.copyload.us.us.us.i = load i8, ptr %.sroa.6570.0..sroa_idx.us.us.us.i, align 1
  %.sroa.7.0..sroa_idx.us.us.us.i = getelementptr inbounds nuw i8, ptr %i.ce, i64 6 ; 3 uses
  %.sroa.7.0.copyload.us.us.us.i = load i8, ptr %.sroa.7.0..sroa_idx.us.us.us.i, align 2
  %.sroa.8.0..sroa_idx.us.us.us.i = getelementptr inbounds nuw i8, ptr %i.ce, i64 7 ; 3 uses
  %.sroa.8.0.copyload.us.us.us.i = load i8, ptr %.sroa.8.0..sroa_idx.us.us.us.i, align 1, !tbaa !84
  %i.da = load i32, ptr %i.al, align 16, !tbaa !446 ; 2 uses
  %.not485.us.us.us.i = icmp eq i32 %i.da, 0
  br i1 %.not485.us.us.us.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %._crit_edge942.i
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(4096) %i.am, i8 0, i64 4096, i1 false)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %._crit_edge942.i
  %i.db = add i32 %i.da, 4194304
  store i32 %i.db, ptr %i.al, align 16, !tbaa !446
  %i.dc = shl nuw nsw i32 %i.cx, 1                ; 9 uses
  %.not.i = icmp ult i32 %i.cw, 5                 ; 3 uses
  br i1 %.not.i, label %.lr.ph656.us.us.us.i, label %.loopexit633.us.us.us.i.thread

bb.g:                                             ; preds = %bb.g, %.lr.ph656.us.us.us.i.new
  %indvars.iv.i = phi i64 [ 0, %.lr.ph656.us.us.us.i.new ], [ %indvars.iv.next.i.1, %bb.g ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph656.us.us.us.i.new ], [ %niter.next.1, %bb.g ]
  %i.dd = getelementptr inbounds nuw [32 x i8], ptr %i.b, i64 %indvars.iv.i
  %i.de = mul nuw nsw i64 %indvars.iv.i, %i.blu
  %i.df = getelementptr inbounds nuw i8, ptr %i.blt, i64 %i.de
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.dd, ptr align 1 %i.df, i64 %i.blu, i1 false)
  %indvars.iv.next.i = or disjoint i64 %indvars.iv.i, 1 ; 2 uses
  %i.dg = getelementptr inbounds nuw [32 x i8], ptr %i.b, i64 %indvars.iv.next.i
  %i.dh = mul nuw nsw i64 %indvars.iv.next.i, %i.blu
  %i.di = getelementptr inbounds nuw i8, ptr %i.blt, i64 %i.dh
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.dg, ptr align 1 %i.di, i64 %i.blu, i1 false)
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge657.us.us.us.i.unr-lcssa, label %bb.g, !llvm.loop !447

._crit_edge657.us.us.us.i.unr-lcssa:              ; preds = %bb.g
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge657.us.us.us.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge657.us.us.us.i.unr-lcssa, %.lr.ph656.us.us.us.i
  %indvars.iv.i.epil.init = phi i64 [ 0, %.lr.ph656.us.us.us.i ], [ %indvars.iv.next.i.1, %._crit_edge657.us.us.us.i.unr-lcssa ] ; 2 uses
  %lcmp.mod430 = trunc i32 %umax.i to i1
  call void @llvm.assume(i1 %lcmp.mod430)
  %i.dj = getelementptr inbounds nuw [32 x i8], ptr %i.b, i64 %indvars.iv.i.epil.init
  %i.dk = mul nuw nsw i64 %indvars.iv.i.epil.init, %i.blu
  %i.dl = getelementptr inbounds nuw i8, ptr %i.blt, i64 %i.dk
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.dj, ptr align 1 %i.dl, i64 %i.blu, i1 false)
  br label %._crit_edge657.us.us.us.i

._crit_edge657.us.us.us.i:                        ; preds = %._crit_edge657.us.us.us.i.unr-lcssa, %.epil.preheader
  %i.dm = icmp eq i64 %indvars.iv922.i, 0         ; 2 uses
  br i1 %i.dm, label %.lr.ph659.us.us.us.i, label %.loopexit638.us.us.us.i

bb.h:                                             ; preds = %bb.h, %.lr.ph659.us.us.us.i.new
  %indvars.iv848.i = phi i64 [ 0, %.lr.ph659.us.us.us.i.new ], [ %indvars.iv.next849.i.3, %bb.h ] ; 5 uses
  %niter436 = phi i64 [ 0, %.lr.ph659.us.us.us.i.new ], [ %niter436.next.3, %bb.h ]
  %i.dn = getelementptr inbounds nuw [32 x i8], ptr %i.b, i64 %indvars.iv848.i ; 3 uses
  %i.do = load i8, ptr %i.dn, align 16, !tbaa !84
  %i.dp = getelementptr i8, ptr %i.dn, i64 %i.blw
  %i.dq = getelementptr i8, ptr %i.dp, i64 -1
  %i.dr = load i8, ptr %i.dq, align 1, !tbaa !84
  %i.ds = add i8 %i.dr, %i.do
  call void @llvm.memset.p0.i64(ptr nonnull align 16 %i.dn, i8 %i.ds, i64 %i.blw, i1 false)
  %i.dt = getelementptr inbounds nuw [32 x i8], ptr %i.b, i64 %indvars.iv848.i
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 32 ; 3 uses
  %i.dv = load i8, ptr %i.du, align 16, !tbaa !84
  %i.dw = getelementptr i8, ptr %i.du, i64 %i.blw
  %i.dx = getelementptr i8, ptr %i.dw, i64 -1
  %i.dy = load i8, ptr %i.dx, align 1, !tbaa !84
  %i.dz = add i8 %i.dy, %i.dv
  call void @llvm.memset.p0.i64(ptr nonnull align 16 %i.du, i8 %i.dz, i64 %i.blw, i1 false)
  %i.ea = getelementptr inbounds nuw [32 x i8], ptr %i.b, i64 %indvars.iv848.i
end_hunk_4
