Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/j2k?download=true
inline.NumInlined: 157
inline.NumDeleted: 65
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 29
loop-unroll.NumUnrolled: 34
begin_hunk_0_@opj_j2k_read_siz:bb.a
  %i.he = load ptr, ptr %i.gn, align 8, !tbaa !13
  %i.hf = getelementptr inbounds nuw i8, ptr %i.he, i64 5672
  store ptr %i.hd, ptr %i.hf, align 8, !tbaa !139
  %i.hg = load ptr, ptr %i.gn, align 8, !tbaa !13 ; 2 uses
  %i.hh = getelementptr inbounds nuw i8, ptr %i.hg, i64 5672
  %i.hi = load ptr, ptr %i.hh, align 8, !tbaa !139
  %.not264 = icmp eq ptr %i.hi, null
  br i1 %.not264, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %bb.aq
  %i.hj = call i32 (ptr, i32, ptr, ...) @opj_event_msg(ptr noundef %3, i32 noundef 1, ptr noundef nonnull @.str.218) #21 ; 0 uses
  br label %bb.bc

bb.as:                                            ; preds = %bb.aq
  %i.hk = getelementptr inbounds nuw i8, ptr %i.hg, i64 5684
  store i32 10, ptr %i.hk, align 4, !tbaa !138
  %i.hl = load i32, ptr %i.ag, align 8, !tbaa !55 ; 4 uses
  %.not300 = icmp eq i32 %i.hl, 0
  br i1 %.not300, label %._crit_edge293, label %.lr.ph292

.lr.ph292:                                        ; preds = %bb.as
  %i.hm = load ptr, ptr %i.bo, align 8, !tbaa !62 ; 3 uses
  %wide.trip.count = zext i32 %i.hl to i64        ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.hn = icmp eq i32 %i.hl, 1
  br i1 %i.hn, label %.epil.preheader, label %.lr.ph292.new

.lr.ph292.new:                                    ; preds = %.lr.ph292
  %unroll_iter = and i64 %wide.trip.count, 4294967294
  br label %bb.at

bb.at:                                            ; preds = %bb.ax, %.lr.ph292.new
  %indvars.iv = phi i64 [ 0, %.lr.ph292.new ], [ %indvars.iv.next.1, %bb.ax ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph292.new ], [ %niter.next.1, %bb.ax ]
  %i.ho = getelementptr inbounds nuw [64 x i8], ptr %i.hm, i64 %indvars.iv ; 2 uses
  %i.hp = getelementptr inbounds nuw i8, ptr %i.ho, i64 32
  %i.hq = load i32, ptr %i.hp, align 8, !tbaa !103
  %.not266 = icmp eq i32 %i.hq, 0
  br i1 %.not266, label %bb.au, label %bb.av

bb.au:                                            ; preds = %bb.at
  %i.hr = getelementptr inbounds nuw i8, ptr %i.ho, i64 24
  %i.hs = load i32, ptr %i.hr, align 8, !tbaa !66
  %i.ht = add i32 %i.hs, -1
  %i.hu = shl nuw i32 1, %i.ht
  %i.hv = load ptr, ptr %i.gn, align 8, !tbaa !13
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hv, i64 5600
  %i.hx = load ptr, ptr %i.hw, align 8, !tbaa !96
  %i.hy = getelementptr inbounds nuw [1080 x i8], ptr %i.hx, i64 %indvars.iv
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hy, i64 1076
  store i32 %i.hu, ptr %i.hz, align 4, !tbaa !101
  br label %bb.av

bb.av:                                            ; preds = %bb.at, %bb.au
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.ia = getelementptr inbounds nuw [64 x i8], ptr %i.hm, i64 %indvars.iv.next ; 2 uses
  %i.ib = getelementptr inbounds nuw i8, ptr %i.ia, i64 32
  %i.ic = load i32, ptr %i.ib, align 8, !tbaa !103
  %.not266.1 = icmp eq i32 %i.ic, 0
  br i1 %.not266.1, label %bb.aw, label %bb.ax

bb.aw:                                            ; preds = %bb.av
  %i.id = getelementptr inbounds nuw i8, ptr %i.ia, i64 24
  %i.ie = load i32, ptr %i.id, align 8, !tbaa !66
  %i.if = add i32 %i.ie, -1
  %i.ig = shl nuw i32 1, %i.if
  %i.ih = load ptr, ptr %i.gn, align 8, !tbaa !13
  %i.ii = getelementptr inbounds nuw i8, ptr %i.ih, i64 5600
  %i.ij = load ptr, ptr %i.ii, align 8, !tbaa !96
  %i.ik = getelementptr inbounds nuw [1080 x i8], ptr %i.ij, i64 %indvars.iv.next
  %i.il = getelementptr inbounds nuw i8, ptr %i.ik, i64 1076
  store i32 %i.ig, ptr %i.il, align 4, !tbaa !101
  br label %bb.ax

bb.ax:                                            ; preds = %bb.aw, %bb.av
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge293.loopexit.unr-lcssa, label %bb.at, !llvm.loop !435

._crit_edge293.loopexit.unr-lcssa:                ; preds = %bb.ax
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge293, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge293.loopexit.unr-lcssa, %.lr.ph292
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph292 ], [ %indvars.iv.next.1, %._crit_edge293.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod374 = trunc i32 %i.hl to i1
  call void @llvm.assume(i1 %lcmp.mod374)
  %i.im = getelementptr inbounds nuw [64 x i8], ptr %i.hm, i64 %indvars.iv.epil.init ; 2 uses
  %i.in = getelementptr inbounds nuw i8, ptr %i.im, i64 32
  %i.io = load i32, ptr %i.in, align 8, !tbaa !103
  %.not266.epil = icmp eq i32 %i.io, 0
  br i1 %.not266.epil, label %bb.ay, label %._crit_edge293

bb.ay:                                            ; preds = %.epil.preheader
  %i.ip = getelementptr inbounds nuw i8, ptr %i.im, i64 24
  %i.iq = load i32, ptr %i.ip, align 8, !tbaa !66
  %i.ir = add i32 %i.iq, -1
  %i.is = shl nuw i32 1, %i.ir
  %i.it = load ptr, ptr %i.gn, align 8, !tbaa !13
  %i.iu = getelementptr inbounds nuw i8, ptr %i.it, i64 5600
  %i.iv = load ptr, ptr %i.iu, align 8, !tbaa !96
  %i.iw = getelementptr inbounds nuw [1080 x i8], ptr %i.iv, i64 %indvars.iv.epil.init
  %i.ix = getelementptr inbounds nuw i8, ptr %i.iw, i64 1076
  store i32 %i.is, ptr %i.ix, align 4, !tbaa !101
  br label %._crit_edge293

._crit_edge293:                                   ; preds = %._crit_edge293.loopexit.unr-lcssa, %bb.ay, %.epil.preheader, %bb.as
  %.not301 = icmp eq i32 %i.fb, 0
  br i1 %.not301, label %._crit_edge298, label %.lr.ph297.preheader

.lr.ph297.preheader:                              ; preds = %._crit_edge293
  %i.iy = load ptr, ptr %i.gh, align 8, !tbaa !33
  br label %.lr.ph297

.lr.ph297:                                        ; preds = %.lr.ph297.preheader, %bb.ba
  %.0222295 = phi ptr [ %i.jf, %bb.ba ], [ %i.iy, %.lr.ph297.preheader ] ; 2 uses
  %.2294 = phi i32 [ %i.jg, %bb.ba ], [ 0, %.lr.ph297.preheader ]
  %i.iz = load i32, ptr %i.ag, align 8, !tbaa !55
  %i.ja = zext i32 %i.iz to i64
  %i.jb = call ptr @opj_calloc(i64 noundef %i.ja, i64 noundef 1080) #21 ; 2 uses
  %i.jc = getelementptr inbounds nuw i8, ptr %.0222295, i64 5600
  store ptr %i.jb, ptr %i.jc, align 8, !tbaa !96
  %i.jd = icmp eq ptr %i.jb, null
  br i1 %i.jd, label %bb.az, label %bb.ba

bb.az:                                            ; preds = %.lr.ph297
  %i.je = call i32 (ptr, i32, ptr, ...) @opj_event_msg(ptr noundef %3, i32 noundef 1, ptr noundef nonnull @.str.218) #21 ; 0 uses
  br label %bb.bc

bb.ba:                                            ; preds = %.lr.ph297
  %i.jf = getelementptr inbounds nuw i8, ptr %.0222295, i64 5696
  %i.jg = add nuw i32 %.2294, 1                   ; 2 uses
  %i.jh = icmp ult i32 %i.jg, %i.fb
  br i1 %i.jh, label %.lr.ph297, label %._crit_edge298, !llvm.loop !436

._crit_edge298:                                   ; preds = %bb.ba, %._crit_edge293
  %i.ji = call fastcc i32 @opj_j2k_allocate_tile_element_cstr_index(ptr noundef %0)
  %.not265 = icmp eq i32 %i.ji, 0
  br i1 %.not265, label %bb.bc, label %bb.bb

bb.bb:                                            ; preds = %._crit_edge298
  store i32 4, ptr %i.fc, align 8, !tbaa !13
  call void @opj_image_comp_header_update(ptr noundef nonnull %i.d, ptr noundef nonnull %i.e) #21
  br label %bb.bc

.critedge277:                                     ; preds = %.loopexit312, %.loopexit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #21
  br label %bb.bc

bb.bc:                                            ; preds = %._crit_edge298, %._crit_edge, %bb.ad, %.critedge277, %.critedge, %bb.bb, %bb.az, %bb.ar, %bb.ap, %bb.an, %bb.al, %bb.ag, %bb.w, %bb.o, %bb.l, %bb.j, %bb.h, %bb.g, %bb.d, %bb.b
  %.4 = phi i32 [ 0, %bb.b ], [ 0, %bb.d ], [ 0, %bb.h ], [ 0, %bb.j ], [ 0, %bb.l ], [ 0, %bb.o ], [ 0, %bb.w ], [ 0, %.critedge277 ], [ 0, %bb.g ], [ 0, %bb.ag ], [ 0, %bb.al ], [ 0, %bb.an ], [ 0, %bb.az ], [ 1, %bb.bb ], [ 0, %._crit_edge ], [ 0, %bb.ar ], [ 0, %bb.ap ], [ 0, %.critedge ], [ 0, %bb.ad ], [ 0, %._crit_edge298 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  ret i32 %.4
}

; Function Attrs: nounwind uwtable
define internal range(i32 0, 2) i32 @opj_j2k_read_tlm(ptr nofree noundef captures(none) %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) #3 {
bb.a:
  %i.a = alloca i32, align 4                      ; 3 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = alloca i32, align 4                      ; 9 uses
  %i.d = alloca i32, align 4                      ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #21
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 6 uses
  %i.f = icmp ult i32 %2, 2
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = tail call i32 (ptr, i32, ptr, ...) @opj_event_msg(ptr noundef %3, i32 noundef 1, ptr noundef nonnull @.str.222) #21 ; 0 uses
  br label %.loopexit

bb.c:                                             ; preds = %bb.a
  %i.h = add i32 %2, -2                           ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 6 uses
  %i.j = load i32, ptr %i.i, align 8, !tbaa !233
  %.not = icmp eq i32 %i.j, 0
  br i1 %.not, label %bb.d, label %.loopexit

bb.d:                                             ; preds = %bb.c
  call void @opj_read_bytes_LE(ptr noundef %1, ptr noundef nonnull %i.a, i32 noundef 1) #21
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 1
  call void @opj_read_bytes_LE(ptr noundef nonnull %i.k, ptr noundef nonnull %i.b, i32 noundef 1) #21
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 2 ; 2 uses
  %i.m = load i32, ptr %i.b, align 4, !tbaa !70   ; 2 uses
  %i.n = lshr i32 %i.m, 4
  %i.o = and i32 %i.n, 3                          ; 5 uses
  %i.p = icmp eq i32 %i.o, 3
  br i1 %i.p, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  store i32 1, ptr %i.i, align 8, !tbaa !233
  %i.q = call i32 (ptr, i32, ptr, ...) @opj_event_msg(ptr noundef %3, i32 noundef 2, ptr noundef nonnull @.str.223) #21 ; 0 uses
  br label %.loopexit

bb.f:                                             ; preds = %bb.d
  %i.r = lshr i32 %i.m, 5
  %i.s = and i32 %i.r, 2
  %i.t = add nuw nsw i32 %i.s, 2                  ; 4 uses
  %i.u = add nuw nsw i32 %i.t, %i.o               ; 2 uses
  %i.v = urem i32 %i.h, %i.u
  %i.w = udiv exact i32 %i.h, %i.u                ; 4 uses
  %.not70 = icmp eq i32 %i.v, 0
  br i1 %.not70, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  store i32 1, ptr %i.i, align 8, !tbaa !233
  %i.x = call i32 (ptr, i32, ptr, ...) @opj_event_msg(ptr noundef %3, i32 noundef 2, ptr noundef nonnull @.str.224) #21 ; 0 uses
  br label %.loopexit

bb.h:                                             ; preds = %bb.f
  %4 = icmp eq i32 %i.h, 0
  br i1 %4, label %.loopexit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.y = load i32, ptr %i.e, align 8, !tbaa !232  ; 2 uses
  %i.z = xor i32 %i.w, -1
  %i.aa = icmp ugt i32 %i.y, %i.z
  br i1 %i.aa, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ab = add i32 %i.y, %i.w                      ; 2 uses
  %i.ac = icmp ugt i32 %i.ab, 536870911
  br i1 %i.ac, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j, %bb.i
  store i32 1, ptr %i.i, align 8, !tbaa !233
  %i.ad = call i32 (ptr, i32, ptr, ...) @opj_event_msg(ptr noundef %3, i32 noundef 2, ptr noundef nonnull @.str.225) #21 ; 0 uses
  br label %.loopexit

bb.l:                                             ; preds = %bb.j
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !234
  %i.ag = shl nuw i32 %i.ab, 3
  %i.ah = zext i32 %i.ag to i64
  %i.ai = call ptr @opj_realloc(ptr noundef %i.af, i64 noundef %i.ah) #21 ; 4 uses
  %.not71 = icmp eq ptr %i.ai, null
  br i1 %.not71, label %bb.m, label %.lr.ph

bb.m:                                             ; preds = %bb.l
  store i32 1, ptr %i.i, align 8, !tbaa !233
  %i.aj = call i32 (ptr, i32, ptr, ...) @opj_event_msg(ptr noundef %3, i32 noundef 2, ptr noundef nonnull @.str.226) #21 ; 0 uses
  br label %.loopexit

.lr.ph:                                           ; preds = %bb.l
  store ptr %i.ai, ptr %i.ae, align 8, !tbaa !234
  %i.ak = icmp eq i32 %i.o, 0
  %i.al = zext nneg i32 %i.o to i64
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 188 ; 2 uses
  %i.ao = zext nneg i32 %i.t to i64               ; 2 uses
  br i1 %i.ak, label %.lr.ph.split.us.preheader, label %.lr.ph.split

.lr.ph.split.us.preheader:                        ; preds = %.lr.ph
  %.pre = load i32, ptr %i.e, align 8, !tbaa !232
  br label %.lr.ph.split.us

.lr.ph.split.us:                                  ; preds = %.lr.ph.split.us.preheader, %bb.n
  %i.ap = phi i32 [ %i.ba, %bb.n ], [ %.pre, %.lr.ph.split.us.preheader ] ; 4 uses
  %.05976.us = phi i32 [ %i.bb, %bb.n ], [ 0, %.lr.ph.split.us.preheader ]
  %.06175.us = phi ptr [ %i.at, %bb.n ], [ %i.l, %.lr.ph.split.us.preheader ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #21
  store i32 %i.ap, ptr %i.c, align 4, !tbaa !70
  %i.aq = load i32, ptr %i.am, align 8, !tbaa !164
  %i.ar = load i32, ptr %i.an, align 4, !tbaa !165
  %i.as = mul i32 %i.ar, %i.aq
  %.not72.us = icmp ult i32 %i.ap, %i.as
  br i1 %.not72.us, label %bb.n, label %.split.us

bb.n:                                             ; preds = %.lr.ph.split.us
  call void @opj_read_bytes_LE(ptr noundef nonnull %.06175.us, ptr noundef nonnull %i.d, i32 noundef %i.t) #21
  %i.at = getelementptr inbounds nuw i8, ptr %.06175.us, i64 %i.ao
  %i.au = trunc i32 %i.ap to i16
  %i.av = load i32, ptr %i.e, align 8, !tbaa !232 ; 2 uses
  %i.aw = zext i32 %i.av to i64
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %i.aw ; 2 uses
  store i16 %i.au, ptr %i.ax, align 4, !tbaa !236
  %i.ay = load i32, ptr %i.d, align 4, !tbaa !70
  %i.az = getelementptr inbounds nuw i8, ptr %i.ax, i64 4
  store i32 %i.ay, ptr %i.az, align 4, !tbaa !239
  %i.ba = add i32 %i.av, 1                        ; 2 uses
  store i32 %i.ba, ptr %i.e, align 8, !tbaa !232
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #21
  %i.bb = add nuw nsw i32 %.05976.us, 1           ; 2 uses
  %exitcond83.not = icmp eq i32 %i.bb, %i.w
  br i1 %exitcond83.not, label %.loopexit, label %.lr.ph.split.us, !llvm.loop !439

.lr.ph.split:                                     ; preds = %.lr.ph, %bb.o
  %.05976 = phi i32 [ %i.br, %bb.o ], [ 0, %.lr.ph ]
  %.06175 = phi ptr [ %i.bi, %bb.o ], [ %i.l, %.lr.ph ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #21
  call void @opj_read_bytes_LE(ptr noundef nonnull %.06175, ptr noundef nonnull %i.c, i32 noundef %i.o) #21
  %i.bc = load i32, ptr %i.c, align 4, !tbaa !70  ; 2 uses
  %i.bd = load i32, ptr %i.am, align 8, !tbaa !164
  %i.be = load i32, ptr %i.an, align 4, !tbaa !165
  %i.bf = mul i32 %i.be, %i.bd
  %.not72 = icmp ult i32 %i.bc, %i.bf
  br i1 %.not72, label %bb.o, label %.split.us

.split.us:                                        ; preds = %.lr.ph.split, %.lr.ph.split.us
  %.us-phi = phi i32 [ %i.ap, %.lr.ph.split.us ], [ %i.bc, %.lr.ph.split ]
  store i32 1, ptr %i.i, align 8, !tbaa !233
  %i.bg = call i32 (ptr, i32, ptr, ...) @opj_event_msg(ptr noundef %3, i32 noundef 2, ptr noundef nonnull @.str.227, i32 noundef %.us-phi) #21 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #21
  br label %.loopexit

bb.o:                                             ; preds = %.lr.ph.split
  %i.bh = getelementptr inbounds nuw i8, ptr %.06175, i64 %i.al ; 2 uses
  call void @opj_read_bytes_LE(ptr noundef nonnull %i.bh, ptr noundef nonnull %i.d, i32 noundef %i.t) #21
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 %i.ao
  %i.bj = load i32, ptr %i.c, align 4, !tbaa !70
  %i.bk = trunc i32 %i.bj to i16
  %i.bl = load i32, ptr %i.e, align 8, !tbaa !232 ; 2 uses
  %i.bm = zext i32 %i.bl to i64
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %i.bm ; 2 uses
  store i16 %i.bk, ptr %i.bn, align 4, !tbaa !236
  %i.bo = load i32, ptr %i.d, align 4, !tbaa !70
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bn, i64 4
  store i32 %i.bo, ptr %i.bp, align 4, !tbaa !239
  %i.bq = add i32 %i.bl, 1
  store i32 %i.bq, ptr %i.e, align 8, !tbaa !232
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #21
  %i.br = add nuw nsw i32 %.05976, 1              ; 2 uses
  %exitcond.not = icmp eq i32 %i.br, %i.w
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph.split, !llvm.loop !439

.loopexit:                                        ; preds = %bb.o, %bb.n, %.split.us, %bb.h, %bb.c, %bb.m, %bb.k, %bb.g, %bb.e, %bb.b
  %.2 = phi i32 [ 0, %bb.b ], [ 1, %bb.m ], [ 1, %bb.e ], [ 1, %bb.g ], [ 1, %bb.c ], [ 1, %bb.k ], [ 1, %.split.us ], [ 1, %bb.h ], [ 1, %bb.n ], [ 1, %bb.o ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  ret i32 %.2
}

; Function Attrs: nounwind uwtable
define internal range(i32 0, 2) i32 @opj_j2k_read_plm(ptr nofree readnone captures(none) %0, ptr nofree readnone captures(none) %1, i32 noundef %2, ptr noundef %3) #3 {
bb.a:
  %i.a = icmp eq i32 %2, 0
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i32 (ptr, i32, ptr, ...) @opj_event_msg(ptr noundef %3, i32 noundef 1, ptr noundef nonnull @.str.228) #21 ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ 0, %bb.b ], [ 1, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal range(i32 0, 2) i32 @opj_j2k_read_plt(ptr nofree readnone captures(none) %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) #3 {
bb.a:
  %i.a = alloca i32, align 4                      ; 3 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #21
  %i.c = icmp eq i32 %2, 0
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = tail call i32 (ptr, i32, ptr, ...) @opj_event_msg(ptr noundef %3, i32 noundef 1, ptr noundef nonnull @.str.229) #21 ; 0 uses
  br label %._crit_edge.thread

bb.c:                                             ; preds = %bb.a
  call void @opj_read_bytes_LE(ptr noundef %1, ptr noundef nonnull %i.a, i32 noundef 1) #21
  %i.e = add i32 %2, -1                           ; 2 uses
  %.not22 = icmp eq i32 %i.e, 0
  br i1 %.not22, label %._crit_edge.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c, %.lr.ph
  %.021 = phi i32 [ %i.k, %.lr.ph ], [ 0, %bb.c ]
  %.01420 = phi i32 [ %.1, %.lr.ph ], [ 0, %bb.c ]
  %.pn19 = phi ptr [ %.016, %.lr.ph ], [ %1, %bb.c ]
  %.016 = getelementptr inbounds nuw i8, ptr %.pn19, i64 1 ; 2 uses
  call void @opj_read_bytes_LE(ptr noundef nonnull %.016, ptr noundef nonnull %i.b, i32 noundef 1) #21
  %i.f = load i32, ptr %i.b, align 4, !tbaa !70   ; 2 uses
  %i.g = and i32 %i.f, 128
  %.not18 = icmp eq i32 %i.g, 0
  %i.h = and i32 %i.f, 127
  %i.i = or i32 %i.h, %.01420
  %i.j = shl i32 %i.i, 7
  %.1 = select i1 %.not18, i32 0, i32 %i.j        ; 2 uses
  %i.k = add nuw i32 %.021, 1                     ; 2 uses
  %exitcond.not = icmp eq i32 %i.k, %i.e
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !440

._crit_edge:                                      ; preds = %.lr.ph
  %i.l = icmp eq i32 %.1, 0
  br i1 %i.l, label %._crit_edge.thread, label %bb.d

bb.d:                                             ; preds = %._crit_edge
  %i.m = call i32 (ptr, i32, ptr, ...) @opj_event_msg(ptr noundef %3, i32 noundef 1, ptr noundef nonnull @.str.229) #21 ; 0 uses
  br label %._crit_edge.thread

._crit_edge.thread:                               ; preds = %bb.c, %._crit_edge, %bb.d, %bb.b
  %.015 = phi i32 [ 0, %bb.b ], [ 0, %bb.d ], [ 1, %._crit_edge ], [ 1, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  ret i32 %.015
}

; Function Attrs: nounwind uwtable
define internal range(i32 0, 2) i32 @opj_j2k_read_ppm(ptr nofree noundef captures(none) %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) #3 {
bb.a:
  %i.a = alloca i32, align 4                      ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  %i.b = icmp ult i32 %2, 2
  br i1 %i.b, label %bb.b, label %bb.c
end_hunk_0
