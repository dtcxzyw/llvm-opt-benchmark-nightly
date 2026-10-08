Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/cdtoons?download=true
loop-unroll.NumUnrolled: 2
begin_hunk_0_@cdtoons_decode_frame:bb.a
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 24, ptr noundef nonnull @.str.15, i32 noundef %i.ac) #8
  br label %.outer._crit_edge.thread446

bb.ba:                                            ; preds = %bb.ay
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hj, i64 12
  %i.hn = load i32, ptr %i.hm, align 4, !tbaa !52 ; 2 uses
  %.not227 = icmp eq i32 %i.hn, 1536
  br i1 %.not227, label %bb.bc, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 16, ptr noundef nonnull @.str.16, i32 noundef %i.ac, i32 noundef %i.hn) #8
  br label %.thread

bb.bc:                                            ; preds = %bb.ba
  store i16 %i.ab, ptr %i.he, align 8, !tbaa !32
  %.not228 = icmp eq i8 %i.ad, 0
  br i1 %.not228, label %bb.bd, label %.outer._crit_edge.thread446

bb.bd:                                            ; preds = %bb.bc
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hj, i64 16
  %i.hp = load ptr, ptr %i.ho, align 8, !tbaa !56
  %i.hq = getelementptr inbounds nuw i8, ptr %i.b, i64 12 ; 3 uses
  br label %bb.bf

bb.be:                                            ; preds = %bb.bf
  store i32 0, ptr %i.hq, align 4, !tbaa !39
  br label %.outer._crit_edge.thread446

bb.bf:                                            ; preds = %bb.bf, %bb.bd
  %indvars.iv = phi i64 [ 0, %bb.bd ], [ %indvars.iv.next.1, %bb.bf ] ; 3 uses
  %.0184368 = phi ptr [ %i.hp, %bb.bd ], [ %i.iv, %bb.bf ] ; 7 uses
  %i.hr = load i8, ptr %.0184368, align 1, !tbaa !34
  %i.hs = zext i8 %i.hr to i32
  %i.ht = getelementptr inbounds nuw i8, ptr %.0184368, i64 2
  %i.hu = load i8, ptr %i.ht, align 1, !tbaa !34
  %i.hv = zext i8 %i.hu to i32
  %i.hw = getelementptr inbounds nuw i8, ptr %.0184368, i64 4
  %i.hx = load i8, ptr %i.hw, align 1, !tbaa !34
  %i.hy = zext i8 %i.hx to i32
  %i.hz = shl nuw nsw i32 %i.hs, 16
  %i.ia = shl nuw nsw i32 %i.hv, 8
  %i.ib = or disjoint i32 %i.hz, %i.ia
  %i.ic = or disjoint i32 %i.ib, %i.hy
  %i.id = or disjoint i32 %i.ic, -16777216
  %i.ie = getelementptr inbounds nuw [4 x i8], ptr %i.hq, i64 %indvars.iv
  store i32 %i.id, ptr %i.ie, align 4, !tbaa !39
  %i.if = getelementptr inbounds nuw i8, ptr %.0184368, i64 6
  %i.ig = load i8, ptr %i.if, align 1, !tbaa !34
  %i.ih = zext i8 %i.ig to i32
  %i.ii = getelementptr inbounds nuw i8, ptr %.0184368, i64 8
  %i.ij = load i8, ptr %i.ii, align 1, !tbaa !34
  %i.ik = zext i8 %i.ij to i32
  %i.il = getelementptr inbounds nuw i8, ptr %.0184368, i64 10
  %i.im = load i8, ptr %i.il, align 1, !tbaa !34
  %i.in = zext i8 %i.im to i32
  %i.io = shl nuw nsw i32 %i.ih, 16
  %i.ip = shl nuw nsw i32 %i.ik, 8
  %i.iq = or disjoint i32 %i.io, %i.ip
  %i.ir = or disjoint i32 %i.iq, %i.in
  %i.is = or disjoint i32 %i.ir, -16777216
  %i.it = getelementptr inbounds nuw [4 x i8], ptr %i.hq, i64 %indvars.iv
  %i.iu = getelementptr inbounds nuw i8, ptr %i.it, i64 4
  store i32 %i.is, ptr %i.iu, align 4, !tbaa !39
  %i.iv = getelementptr inbounds nuw i8, ptr %.0184368, i64 12
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %exitcond401.not.1 = icmp eq i64 %indvars.iv.next.1, 256
  br i1 %exitcond401.not.1, label %bb.be, label %bb.bf, !llvm.loop !46

.outer._crit_edge.thread446:                      ; preds = %.loopexit, %._crit_edge367, %bb.av, %bb.be, %bb.bc, %.outer._crit_edge, %bb.az
  %i.iw = getelementptr inbounds nuw i8, ptr %i.b, i64 1040 ; 3 uses
  br label %bb.bh

bb.bg:                                            ; preds = %bb.bn
  %i.ix = load ptr, ptr %i.b, align 8, !tbaa !33
  %i.iy = getelementptr inbounds nuw i8, ptr %i.ix, i64 8
  %i.iz = load ptr, ptr %i.iy, align 8, !tbaa !38
  %i.ja = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1024) %i.iz, ptr noundef nonnull align 4 dereferenceable(1024) %i.ja, i64 1024, i1 false)
  %i.jb = load ptr, ptr %i.b, align 8, !tbaa !33
  %i.jc = tail call i32 @av_frame_ref(ptr noundef %1, ptr noundef %i.jb) #8 ; 2 uses
  %i.jd = icmp slt i32 %i.jc, 0
  br i1 %i.jd, label %.thread, label %bb.bo

bb.bh:                                            ; preds = %bb.bn, %.outer._crit_edge.thread446
  %indvars.iv402 = phi i64 [ 0, %.outer._crit_edge.thread446 ], [ %indvars.iv.next403.2, %bb.bn ] ; 4 uses
  %i.je = getelementptr inbounds nuw [32 x i8], ptr %i.iw, i64 %indvars.iv402 ; 2 uses
  %i.jf = getelementptr inbounds nuw i8, ptr %i.je, i64 6
  %i.jg = load i16, ptr %i.jf, align 2, !tbaa !55
  %i.jh = icmp ult i16 %i.o, %i.jg
  br i1 %i.jh, label %bb.bj, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.ji = getelementptr inbounds nuw i8, ptr %i.je, i64 24
  store i32 0, ptr %i.ji, align 8, !tbaa !36
  br label %bb.bj

bb.bj:                                            ; preds = %bb.bh, %bb.bi
  %i.jj = getelementptr inbounds nuw [32 x i8], ptr %i.iw, i64 %indvars.iv402 ; 2 uses
  %i.jk = getelementptr inbounds nuw i8, ptr %i.jj, i64 38
  %i.jl = load i16, ptr %i.jk, align 2, !tbaa !55
  %i.jm = icmp ult i16 %i.o, %i.jl
  br i1 %i.jm, label %bb.bl, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.jn = getelementptr inbounds nuw i8, ptr %i.jj, i64 56
  store i32 0, ptr %i.jn, align 8, !tbaa !36
  br label %bb.bl

bb.bl:                                            ; preds = %bb.bk, %bb.bj
  %i.jo = getelementptr inbounds nuw [32 x i8], ptr %i.iw, i64 %indvars.iv402 ; 2 uses
  %i.jp = getelementptr inbounds nuw i8, ptr %i.jo, i64 70
  %i.jq = load i16, ptr %i.jp, align 2, !tbaa !55
  %i.jr = icmp ult i16 %i.o, %i.jq
  br i1 %i.jr, label %bb.bn, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.js = getelementptr inbounds nuw i8, ptr %i.jo, i64 88
  store i32 0, ptr %i.js, align 8, !tbaa !36
  br label %bb.bn

bb.bn:                                            ; preds = %bb.bm, %bb.bl
  %indvars.iv.next403.2 = add nuw nsw i64 %indvars.iv402, 3 ; 2 uses
  %exitcond405.not.2 = icmp eq i64 %indvars.iv.next403.2, 1200
  br i1 %exitcond405.not.2, label %bb.bg, label %bb.bh, !llvm.loop !47

bb.bo:                                            ; preds = %bb.bg
  store i32 1, ptr %2, align 4, !tbaa !39
  br label %.thread

.thread:                                          ; preds = %bb.n, %bb.m, %bb.e, %bb.l, %.loopexit399, %.loopexit398, %bb.t, %split, %bb.q, %bb.v, %bb.y, %bb.k, %bb.i, %bb.g, %bb.bg, %bb.c, %bb.b, %bb.a, %bb.bo, %bb.bb, %bb.ax
  %.12 = phi i32 [ -1094995529, %bb.t ], [ -1094995529, %bb.a ], [ %i.k, %bb.b ], [ -1094995529, %bb.v ], [ -1094995529, %bb.q ], [ -1094995529, %bb.c ], [ %i.f, %bb.bo ], [ -1094995529, %bb.ax ], [ -1094995529, %bb.bb ], [ %i.jc, %bb.bg ], [ -1094995529, %bb.y ], [ -1094995529, %split ], [ -1094995529, %.loopexit398 ], [ -1094995529, %.loopexit399 ], [ -1094995529, %bb.k ], [ -1094995529, %bb.i ], [ -1094995529, %bb.g ], [ -1094995529, %bb.e ], [ -1094995529, %bb.m ], [ -12, %bb.n ], [ -1094995529, %bb.l ]
  ret i32 %.12
}

; Function Attrs: cold nounwind optsize uwtable
define internal noundef i32 @cdtoons_decode_end(ptr nofree noundef readonly captures(none) %0) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !28   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 1040
  br label %bb.c

bb.b:                                             ; preds = %bb.c
  tail call void @av_frame_free(ptr noundef nonnull %i.b) #8
  ret i32 0

bb.c:                                             ; preds = %bb.a, %bb.c
  %indvars.iv = phi i64 [ 0, %bb.a ], [ %indvars.iv.next, %bb.c ] ; 2 uses
  %i.d = getelementptr inbounds nuw [32 x i8], ptr %i.c, i64 %indvars.iv ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  tail call void @av_freep(ptr noundef nonnull %i.e) #8
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store i32 0, ptr %i.f, align 8, !tbaa !36
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 1200
  br i1 %exitcond.not, label %bb.b, label %bb.c, !llvm.loop !58
}

; Function Attrs: cold nofree norecurse nosync nounwind optsize memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @cdtoons_flush(ptr nofree noundef readonly captures(none) %0) #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !28   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i16 0, ptr %i.c, align 8, !tbaa !32
  br label %bb.c

bb.b:                                             ; preds = %bb.c
  ret void

bb.c:                                             ; preds = %bb.a, %bb.c
  %indvars.iv = phi i64 [ 0, %bb.a ], [ %indvars.iv.next, %bb.c ] ; 2 uses
  %i.d = getelementptr inbounds nuw [32 x i8], ptr %i.b, i64 %indvars.iv
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 1064
  store i32 0, ptr %i.e, align 8, !tbaa !36
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 1200
  br i1 %exitcond.not, label %bb.b, label %bb.c, !llvm.loop !59
}

declare ptr @av_frame_alloc() local_unnamed_addr #3

declare i32 @ff_reget_buffer(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @av_log(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

declare void @av_fast_padded_malloc(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc range(i32 0, 2) i32 @cdtoons_render_sprite(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, i32 noundef %2, i32 noundef range(i32 -32768, 32768) %3, i32 noundef range(i32 -32768, 32768) %4, i32 noundef range(i32 0, 65536) %5, i32 noundef range(i32 0, 65536) %6) unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !28
  %i.c = zext i32 %2 to i64
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 %i.c ; 2 uses
  %i.e = add nsw i32 %5, %3
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.g = load i32, ptr %i.f, align 8, !tbaa !62   ; 2 uses
  %i.h = icmp sgt i32 %i.e, %i.g
  %i.i = sub nsw i32 %i.g, %3
  %spec.select = select i1 %i.h, i32 %i.i, i32 %5
  %spec.select.fr = freeze i32 %spec.select       ; 2 uses
  %i.j = add nsw i32 %6, %4
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 116
  %i.l = load i32, ptr %i.k, align 4, !tbaa !40   ; 2 uses
  %i.m = icmp sgt i32 %i.j, %i.l
  %i.n = sub nsw i32 %i.l, %4
  %.087 = select i1 %i.m, i32 %i.n, i32 %6        ; 3 uses
  %i.o = icmp slt i32 %3, 0
  br i1 %i.o, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.p = sub nsw i32 0, %3                        ; 2 uses
  %.not = icmp sgt i32 %spec.select.fr, %i.p
  br i1 %.not, label %bb.c, label %.thread139

bb.c:                                             ; preds = %bb.b, %bb.a
  %.092 = phi i32 [ %3, %bb.a ], [ 0, %bb.b ]
  %.085 = phi i32 [ 0, %bb.a ], [ %i.p, %bb.b ]   ; 2 uses
  %.not112151 = icmp sgt i32 %.087, 0
  br i1 %.not112151, label %.lr.ph155, label %.thread139

.lr.ph155:                                        ; preds = %bb.c
  %i.q = ptrtoint ptr %i.d to i64                 ; 4 uses
  %i.r = zext nneg i32 %.092 to i64
  %i.s = sub i32 %spec.select.fr, %.085           ; 8 uses
  %i.t = icmp sgt i32 %i.s, 0
  br i1 %i.t, label %.lr.ph155.split.us, label %.lr.ph155.split

.lr.ph155.split.us:                               ; preds = %.lr.ph155, %..loopexit_crit_edge.us
  %.078153.us = phi i32 [ %i.cb, %..loopexit_crit_edge.us ], [ 0, %.lr.ph155 ] ; 2 uses
  %.086152.us = phi ptr [ %i.ae, %..loopexit_crit_edge.us ], [ %1, %.lr.ph155 ] ; 3 uses
  %i.u = ptrtoint ptr %.086152.us to i64
  %i.v = sub i64 %i.q, %i.u
  %i.w = icmp slt i64 %i.v, 2
  br i1 %i.w, label %.thread139, label %bb.d

bb.d:                                             ; preds = %.lr.ph155.split.us
  %i.x = getelementptr inbounds nuw i8, ptr %.086152.us, i64 2 ; 3 uses
  %i.y = load i16, ptr %.086152.us, align 1, !tbaa !34
  %i.z = tail call i16 @llvm.bswap.i16(i16 %i.y)
  %i.aa = ptrtoint ptr %i.x to i64
  %i.ab = sub i64 %i.q, %i.aa
  %i.ac = zext i16 %i.z to i64                    ; 2 uses
  %i.ad = icmp slt i64 %i.ab, %i.ac
  br i1 %i.ad, label %.thread139, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ae = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.ac ; 2 uses
  %i.af = add nsw i32 %.078153.us, %4             ; 2 uses
  %i.ag = icmp slt i32 %i.af, 0
  br i1 %i.ag, label %..loopexit_crit_edge.us, label %.lr.ph.us

.lr.ph.us:                                        ; preds = %bb.e
  %i.ah = load ptr, ptr %i.b, align 8, !tbaa !33  ; 2 uses
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !38
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ah, i64 64
  %i.ak = load i32, ptr %i.aj, align 8, !tbaa !39
  %i.al = mul nsw i32 %i.ak, %i.af
  %i.am = sext i32 %i.al to i64
  %i.an = getelementptr inbounds i8, ptr %i.ai, i64 %i.am
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 %i.r ; 2 uses
  %i.ap = ptrtoint ptr %i.ae to i64               ; 3 uses
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph.us, %bb.s
  %.081149.us = phi i32 [ 0, %.lr.ph.us ], [ %.182.us, %bb.s ] ; 10 uses
  %.083148.us = phi i32 [ %.085, %.lr.ph.us ], [ %.2.us, %bb.s ] ; 5 uses
  %.0123147.us = phi ptr [ %i.x, %.lr.ph.us ], [ %.3.us, %bb.s ] ; 4 uses
  %.not106.us = icmp ult ptr %.0123147.us, %i.d
  br i1 %.not106.us, label %bb.g, label %.thread139

bb.g:                                             ; preds = %bb.f
  %i.aq = getelementptr inbounds nuw i8, ptr %.0123147.us, i64 1 ; 6 uses
  %i.ar = load i8, ptr %.0123147.us, align 1, !tbaa !34 ; 2 uses
  %.not107.us = icmp sgt i8 %i.ar, -1             ; 3 uses
  %i.as = and i8 %i.ar, 127
  %i.at = zext nneg i8 %i.as to i32               ; 2 uses
  %i.au = add nuw nsw i32 %i.at, 1                ; 5 uses
  %.not108.not.us = icmp sgt i32 %.083148.us, %i.at
  br i1 %.not108.not.us, label %bb.q, label %bb.h

bb.h:                                             ; preds = %bb.g
  %.not109.us = icmp eq i32 %.083148.us, 0
  br i1 %.not109.us, label %bb.k, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.av = sub nsw i32 %i.au, %.083148.us          ; 4 uses
  br i1 %.not107.us, label %bb.j, label %.thread132.us

.thread132.us:                                    ; preds = %bb.i
  %i.aw = add nsw i32 %i.av, %.081149.us
  %.not110135.us = icmp slt i32 %i.aw, %i.s
  %i.ax = sub nsw i32 %i.s, %.081149.us
  %spec.select113136.us = select i1 %.not110135.us, i32 %i.av, i32 %i.ax
  br label %bb.l

bb.j:                                             ; preds = %bb.i
  %i.ay = ptrtoint ptr %i.aq to i64
  %i.az = sub i64 %i.ap, %i.ay
  %i.ba = zext nneg i32 %.083148.us to i64        ; 2 uses
  %i.bb = icmp slt i64 %i.az, %i.ba
  br i1 %i.bb, label %.thread139, label %.thread.us

.thread.us:                                       ; preds = %bb.j
  %i.bc = getelementptr inbounds nuw i8, ptr %i.aq, i64 %i.ba
  %i.bd = add nsw i32 %i.av, %.081149.us
  %.not110127.us = icmp slt i32 %i.bd, %i.s
  %i.be = sub nsw i32 %i.s, %.081149.us
  %spec.select113128.us = select i1 %.not110127.us, i32 %i.av, i32 %i.be
  br label %bb.n

bb.k:                                             ; preds = %bb.h
  %i.bf = add nsw i32 %i.au, %.081149.us
  %.not110.us = icmp slt i32 %i.bf, %i.s
  %i.bg = sub nsw i32 %i.s, %.081149.us
  %spec.select113.us = select i1 %.not110.us, i32 %i.au, i32 %i.bg ; 2 uses
  br i1 %.not107.us, label %bb.n, label %bb.l

bb.l:                                             ; preds = %bb.k, %.thread132.us
  %spec.select113138.us = phi i32 [ %spec.select113136.us, %.thread132.us ], [ %spec.select113.us, %bb.k ] ; 3 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %.0123147.us, i64 2 ; 2 uses
  %i.bi = load i8, ptr %i.aq, align 1, !tbaa !34  ; 2 uses
  %.not111.us = icmp eq i8 %i.bi, 0
  br i1 %.not111.us, label %bb.p, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bj = sext i32 %.081149.us to i64
  %i.bk = getelementptr inbounds i8, ptr %i.ao, i64 %i.bj
  %i.bl = sext i32 %spec.select113138.us to i64
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.bk, i8 %i.bi, i64 %i.bl, i1 false)
  br label %bb.p

bb.n:                                             ; preds = %bb.k, %.thread.us
  %spec.select113131.us = phi i32 [ %spec.select113128.us, %.thread.us ], [ %spec.select113.us, %bb.k ] ; 2 uses
  %.1129.us = phi ptr [ %i.bc, %.thread.us ], [ %i.aq, %bb.k ] ; 3 uses
  %i.bm = ptrtoint ptr %.1129.us to i64
  %i.bn = sub i64 %i.ap, %i.bm
  %i.bo = sext i32 %spec.select113131.us to i64   ; 3 uses
  %i.bp = icmp slt i64 %i.bn, %i.bo
  br i1 %i.bp, label %.thread139, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bq = sext i32 %.081149.us to i64
  %i.br = getelementptr inbounds i8, ptr %i.ao, i64 %i.bq
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.br, ptr nonnull align 1 %.1129.us, i64 %i.bo, i1 false)
  %i.bs = getelementptr inbounds i8, ptr %.1129.us, i64 %i.bo
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.m, %bb.l
  %spec.select113130.us = phi i32 [ %spec.select113131.us, %bb.o ], [ %spec.select113138.us, %bb.l ], [ %spec.select113138.us, %bb.m ]
  %.2124.us = phi ptr [ %i.bs, %bb.o ], [ %i.bh, %bb.l ], [ %i.bh, %bb.m ]
  %i.bt = add nsw i32 %spec.select113130.us, %.081149.us
  br label %bb.s

bb.q:                                             ; preds = %bb.g
  %i.bu = zext nneg i32 %i.au to i64
  %.0.us = select i1 %.not107.us, i64 %i.bu, i64 1 ; 2 uses
  %i.bv = ptrtoint ptr %i.aq to i64
  %i.bw = sub i64 %i.ap, %i.bv
  %i.bx = icmp slt i64 %i.bw, %.0.us
  br i1 %i.bx, label %.thread139, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.by = sub nuw nsw i32 %.083148.us, %i.au
  %i.bz = getelementptr inbounds nuw i8, ptr %i.aq, i64 %.0.us
  br label %bb.s, !llvm.loop !60

bb.s:                                             ; preds = %bb.r, %bb.p
  %.3.us = phi ptr [ %.2124.us, %bb.p ], [ %i.bz, %bb.r ]
  %.2.us = phi i32 [ 0, %bb.p ], [ %i.by, %bb.r ]
  %.182.us = phi i32 [ %i.bt, %bb.p ], [ %.081149.us, %bb.r ] ; 2 uses
  %i.ca = icmp slt i32 %.182.us, %i.s
  br i1 %i.ca, label %bb.f, label %..loopexit_crit_edge.us

..loopexit_crit_edge.us:                          ; preds = %bb.s, %bb.e
  %i.cb = add nuw nsw i32 %.078153.us, 1          ; 2 uses
  %.not112.us = icmp slt i32 %i.cb, %.087
  br i1 %.not112.us, label %.lr.ph155.split.us, label %.thread139, !llvm.loop !61

.lr.ph155.split:                                  ; preds = %.lr.ph155, %.loopexit
  %.078153 = phi i32 [ %i.cn, %.loopexit ], [ 0, %.lr.ph155 ]
  %.086152 = phi ptr [ %i.cm, %.loopexit ], [ %1, %.lr.ph155 ] ; 3 uses
  %i.cc = ptrtoint ptr %.086152 to i64
  %i.cd = sub i64 %i.q, %i.cc
  %i.ce = icmp slt i64 %i.cd, 2
  br i1 %i.ce, label %.thread139, label %bb.t

bb.t:                                             ; preds = %.lr.ph155.split
  %i.cf = getelementptr inbounds nuw i8, ptr %.086152, i64 2 ; 2 uses
  %i.cg = load i16, ptr %.086152, align 1, !tbaa !34
  %i.ch = tail call i16 @llvm.bswap.i16(i16 %i.cg)
  %i.ci = ptrtoint ptr %i.cf to i64
  %i.cj = sub i64 %i.q, %i.ci
  %i.ck = zext i16 %i.ch to i64                   ; 2 uses
  %i.cl = icmp slt i64 %i.cj, %i.ck
  br i1 %i.cl, label %.thread139, label %.loopexit

.loopexit:                                        ; preds = %bb.t
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cf, i64 %i.ck
  %i.cn = add nuw nsw i32 %.078153, 1             ; 2 uses
  %.not112 = icmp slt i32 %i.cn, %.087
  br i1 %.not112, label %.lr.ph155.split, label %.thread139, !llvm.loop !61

.thread139:                                       ; preds = %bb.t, %.lr.ph155.split, %.loopexit, %bb.d, %.lr.ph155.split.us, %..loopexit_crit_edge.us, %bb.f, %bb.j, %bb.n, %bb.q, %bb.c, %bb.b
  %.5 = phi i32 [ 0, %bb.b ], [ 1, %bb.f ], [ 0, %bb.c ], [ 1, %.lr.ph155.split.us ], [ 1, %bb.q ], [ 1, %bb.n ], [ 1, %bb.j ], [ 1, %bb.d ], [ 0, %..loopexit_crit_edge.us ], [ 1, %.lr.ph155.split ], [ 1, %bb.t ], [ 0, %.loopexit ]
  ret i32 %.5
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #6

declare i32 @av_frame_ref(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @av_freep(ptr noundef) local_unnamed_addr #3

declare void @av_frame_free(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.bswap.i16(i16) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #7

attributes #0 = { cold nounwind optsize uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { cold nofree norecurse nosync nounwind optsize memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #7 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{i32 1, !"override-stack-alignment", i32 16}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = !{!"any pointer", !5, i64 0}
!10 = !{!"p1 _ZTS7AVClass", !9, i64 0}
!11 = !{!"p1 _ZTS7AVCodec", !9, i64 0}
!12 = !{!"p1 _ZTS15AVCodecInternal", !9, i64 0}
!13 = !{!"long", !5, i64 0}
!14 = !{!"p1 omnipotent char", !9, i64 0}
!15 = !{!"AVRational", !6, i64 0, !6, i64 4}
!16 = !{!"float", !5, i64 0}
!17 = !{!"p1 short", !9, i64 0}
!18 = !{!"AVChannelLayout", !6, i64 0, !6, i64 4, !5, i64 8, !9, i64 16}
!19 = !{!"p1 _ZTS10RcOverride", !9, i64 0}
!20 = !{!"p1 _ZTS9AVHWAccel", !9, i64 0}
!21 = !{!"p1 _ZTS11AVBufferRef", !9, i64 0}
!22 = !{!"p1 _ZTS17AVCodecDescriptor", !9, i64 0}
!23 = !{!"p1 _ZTS16AVPacketSideData", !9, i64 0}
!24 = !{!"p1 int", !9, i64 0}
!25 = !{!"any p2 pointer", !9, i64 0}
!26 = !{!"p2 _ZTS15AVFrameSideData", !25, i64 0}
!27 = !{!"AVCodecContext", !10, i64 0, !6, i64 8, !6, i64 12, !11, i64 16, !6, i64 24, !6, i64 28, !9, i64 32, !12, i64 40, !9, i64 48, !13, i64 56, !6, i64 64, !6, i64 68, !14, i64 72, !6, i64 80, !15, i64 84, !15, i64 92, !15, i64 100, !6, i64 108, !6, i64 112, !6, i64 116, !6, i64 120, !6, i64 124, !15, i64 128, !6, i64 136, !6, i64 140, !6, i64 144, !6, i64 148, !6, i64 152, !6, i64 156, !6, i64 160, !6, i64 164, !6, i64 168, !6, i64 172, !6, i64 176, !9, i64 184, !9, i64 192, !6, i64 200, !16, i64 204, !16, i64 208, !16, i64 212, !16, i64 216, !16, i64 220, !16, i64 224, !16, i64 228, !16, i64 232, !16, i64 236, !6, i64 240, !6, i64 244, !6, i64 248, !6, i64 252, !6, i64 256, !6, i64 260, !6, i64 264, !6, i64 268, !6, i64 272, !6, i64 276, !6, i64 280, !6, i64 284, !17, i64 288, !17, i64 296, !17, i64 304, !6, i64 312, !6, i64 316, !6, i64 320, !6, i64 324, !6, i64 328, !6, i64 332, !6, i64 336, !6, i64 340, !6, i64 344, !6, i64 348, !18, i64 352, !6, i64 376, !6, i64 380, !6, i64 384, !6, i64 388, !6, i64 392, !6, i64 396, !6, i64 400, !6, i64 404, !9, i64 408, !6, i64 416, !6, i64 420, !6, i64 424, !16, i64 428, !16, i64 432, !6, i64 436, !6, i64 440, !6, i64 444, !6, i64 448, !6, i64 452, !19, i64 456, !13, i64 464, !13, i64 472, !16, i64 480, !16, i64 484, !6, i64 488, !6, i64 492, !14, i64 496, !14, i64 504, !6, i64 512, !6, i64 516, !6, i64 520, !6, i64 524, !6, i64 528, !20, i64 536, !9, i64 544, !21, i64 552, !21, i64 560, !6, i64 568, !6, i64 572, !5, i64 576, !6, i64 640, !6, i64 644, !6, i64 648, !6, i64 652, !6, i64 656, !6, i64 660, !6, i64 664, !9, i64 672, !9, i64 680, !6, i64 688, !6, i64 692, !6, i64 696, !6, i64 700, !6, i64 704, !6, i64 708, !6, i64 712, !6, i64 716, !6, i64 720, !22, i64 728, !14, i64 736, !6, i64 744, !6, i64 748, !14, i64 752, !14, i64 760, !14, i64 768, !23, i64 776, !6, i64 784, !6, i64 788, !13, i64 792, !6, i64 800, !6, i64 804, !13, i64 808, !9, i64 816, !13, i64 824, !24, i64 832, !6, i64 840, !26, i64 848, !6, i64 856, !6, i64 860}
!28 = !{!27, !9, i64 32}
!29 = !{!"p1 _ZTS7AVFrame", !9, i64 0}
!30 = !{!"short", !5, i64 0}
!31 = !{!"CDToonsContext", !29, i64 0, !30, i64 8, !5, i64 12, !5, i64 1040}
!32 = !{!31, !30, i64 8}
!33 = !{!31, !29, i64 0}
!34 = !{!5, !5, i64 0}
!35 = !{!"CDToonsSprite", !30, i64 0, !30, i64 2, !30, i64 4, !30, i64 6, !6, i64 8, !6, i64 12, !14, i64 16, !6, i64 24}
!36 = !{!35, !6, i64 24}
!37 = !{!"llvm.loop.mustprogress"}
!38 = !{!14, !14, i64 0}
!39 = !{!6, !6, i64 0}
!40 = !{!27, !6, i64 116}
!41 = !{!27, !6, i64 136}
!42 = distinct !{!42, !37}
!43 = distinct !{!43, !37}
!44 = distinct !{!44, !37}
!45 = distinct !{!45, !37, !57}
!46 = distinct !{!46, !37}
!47 = distinct !{!47, !37}
!48 = !{!"AVPacket", !21, i64 0, !13, i64 8, !13, i64 16, !14, i64 24, !6, i64 32, !6, i64 36, !6, i64 40, !23, i64 48, !6, i64 56, !13, i64 64, !13, i64 72, !9, i64 80, !21, i64 88, !15, i64 96}
!49 = !{!48, !14, i64 24}
!50 = !{!48, !6, i64 32}
!51 = !{!35, !30, i64 0}
!52 = !{!35, !6, i64 12}
!53 = !{!35, !30, i64 2}
!54 = !{!35, !30, i64 4}
!55 = !{!35, !30, i64 6}
!56 = !{!35, !14, i64 16}
!57 = !{!"llvm.loop.peeled.count", i32 1}
!58 = distinct !{!58, !37}
!59 = distinct !{!59, !37}
!60 = distinct !{!60, !37}
!61 = distinct !{!61, !37}
!62 = !{!27, !6, i64 112}
end_hunk_0
