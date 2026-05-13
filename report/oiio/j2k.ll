inline.NumInlined: 157
inline.NumDeleted: 65
begin_hunk_0_@opj_j2k_read_siz:bb.a
  br i1 %i.gi, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
  %i.gj = call i32 (ptr, i32, ptr, ...) @opj_event_msg(ptr noundef %3, i32 noundef 1, ptr noundef nonnull @.str.218) #21 ; 0 uses
  br label %bb.bc

bb.am:                                            ; preds = %bb.ak
  %i.gk = load i32, ptr %i.ag, align 8, !tbaa !57
  %i.gl = zext i32 %i.gk to i64
  %i.gm = call ptr @opj_calloc(i64 noundef %i.gl, i64 noundef 1080) #21
  %i.gn = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 9 uses
  %i.go = load ptr, ptr %i.gn, align 8, !tbaa !9
  %i.gp = getelementptr inbounds nuw i8, ptr %i.go, i64 5600
  store ptr %i.gm, ptr %i.gp, align 8, !tbaa !109
  %i.gq = load ptr, ptr %i.gn, align 8, !tbaa !9
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gq, i64 5600
  %i.gs = load ptr, ptr %i.gr, align 8, !tbaa !109
  %i.gt = icmp eq ptr %i.gs, null
  br i1 %i.gt, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  %i.gu = call i32 (ptr, i32, ptr, ...) @opj_event_msg(ptr noundef %3, i32 noundef 1, ptr noundef nonnull @.str.218) #21 ; 0 uses
  br label %bb.bc

bb.ao:                                            ; preds = %bb.am
  %i.gv = call ptr @opj_calloc(i64 noundef 10, i64 noundef 32) #21
  %i.gw = load ptr, ptr %i.gn, align 8, !tbaa !9
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gw, i64 5656
  store ptr %i.gv, ptr %i.gx, align 8, !tbaa !173
  %i.gy = load ptr, ptr %i.gn, align 8, !tbaa !9  ; 2 uses
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gy, i64 5656
  %i.ha = load ptr, ptr %i.gz, align 8, !tbaa !173
  %.not261 = icmp eq ptr %i.ha, null
  br i1 %.not261, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %bb.ao
  %i.hb = call i32 (ptr, i32, ptr, ...) @opj_event_msg(ptr noundef %3, i32 noundef 1, ptr noundef nonnull @.str.218) #21 ; 0 uses
  br label %bb.bc

bb.aq:                                            ; preds = %bb.ao
  %i.hc = getelementptr inbounds nuw i8, ptr %i.gy, i64 5668
  store i32 10, ptr %i.hc, align 4, !tbaa !172
  %i.hd = call ptr @opj_calloc(i64 noundef 10, i64 noundef 32) #21
  %i.he = load ptr, ptr %i.gn, align 8, !tbaa !9
  %i.hf = getelementptr inbounds nuw i8, ptr %i.he, i64 5672
  store ptr %i.hd, ptr %i.hf, align 8, !tbaa !189
  %i.hg = load ptr, ptr %i.gn, align 8, !tbaa !9  ; 2 uses
  %i.hh = getelementptr inbounds nuw i8, ptr %i.hg, i64 5672
  %i.hi = load ptr, ptr %i.hh, align 8, !tbaa !189
  %.not262 = icmp eq ptr %i.hi, null
  br i1 %.not262, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %bb.aq
  %i.hj = call i32 (ptr, i32, ptr, ...) @opj_event_msg(ptr noundef %3, i32 noundef 1, ptr noundef nonnull @.str.218) #21 ; 0 uses
  br label %bb.bc

bb.as:                                            ; preds = %bb.aq
  %i.hk = getelementptr inbounds nuw i8, ptr %i.hg, i64 5684
  store i32 10, ptr %i.hk, align 4, !tbaa !188
  %i.hl = load i32, ptr %i.ag, align 8, !tbaa !57 ; 4 uses
  %.not298 = icmp eq i32 %i.hl, 0
  br i1 %.not298, label %._crit_edge291, label %.lr.ph290

.lr.ph290:                                        ; preds = %bb.as
  %i.hm = load ptr, ptr %i.bo, align 8, !tbaa !71 ; 3 uses
  %wide.trip.count = zext i32 %i.hl to i64        ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.hn = icmp eq i32 %i.hl, 1
  br i1 %i.hn, label %.epil.preheader, label %.lr.ph290.new

.lr.ph290.new:                                    ; preds = %.lr.ph290
  %unroll_iter = and i64 %wide.trip.count, 4294967294
  br label %bb.at

bb.at:                                            ; preds = %bb.ax, %.lr.ph290.new
  %indvars.iv = phi i64 [ 0, %.lr.ph290.new ], [ %indvars.iv.next.1, %bb.ax ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph290.new ], [ %niter.next.1, %bb.ax ]
  %i.ho = getelementptr inbounds nuw [64 x i8], ptr %i.hm, i64 %indvars.iv ; 2 uses
  %i.hp = getelementptr inbounds nuw i8, ptr %i.ho, i64 32
  %i.hq = load i32, ptr %i.hp, align 8, !tbaa !119
  %.not264 = icmp eq i32 %i.hq, 0
  br i1 %.not264, label %bb.au, label %bb.av

bb.au:                                            ; preds = %bb.at
  %i.hr = getelementptr inbounds nuw i8, ptr %i.ho, i64 24
  %i.hs = load i32, ptr %i.hr, align 8, !tbaa !75
  %i.ht = add i32 %i.hs, -1
  %i.hu = shl nuw i32 1, %i.ht
  %i.hv = load ptr, ptr %i.gn, align 8, !tbaa !9
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hv, i64 5600
  %i.hx = load ptr, ptr %i.hw, align 8, !tbaa !109
  %i.hy = getelementptr inbounds nuw [1080 x i8], ptr %i.hx, i64 %indvars.iv
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hy, i64 1076
  store i32 %i.hu, ptr %i.hz, align 4, !tbaa !114
  br label %bb.av

bb.av:                                            ; preds = %bb.at, %bb.au
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.ia = getelementptr inbounds nuw [64 x i8], ptr %i.hm, i64 %indvars.iv.next ; 2 uses
  %i.ib = getelementptr inbounds nuw i8, ptr %i.ia, i64 32
  %i.ic = load i32, ptr %i.ib, align 8, !tbaa !119
  %.not264.1 = icmp eq i32 %i.ic, 0
  br i1 %.not264.1, label %bb.aw, label %bb.ax

bb.aw:                                            ; preds = %bb.av
  %i.id = getelementptr inbounds nuw i8, ptr %i.ia, i64 24
  %i.ie = load i32, ptr %i.id, align 8, !tbaa !75
  %i.if = add i32 %i.ie, -1
  %i.ig = shl nuw i32 1, %i.if
  %i.ih = load ptr, ptr %i.gn, align 8, !tbaa !9
  %i.ii = getelementptr inbounds nuw i8, ptr %i.ih, i64 5600
  %i.ij = load ptr, ptr %i.ii, align 8, !tbaa !109
  %i.ik = getelementptr inbounds nuw [1080 x i8], ptr %i.ij, i64 %indvars.iv.next
  %i.il = getelementptr inbounds nuw i8, ptr %i.ik, i64 1076
  store i32 %i.ig, ptr %i.il, align 4, !tbaa !114
  br label %bb.ax

bb.ax:                                            ; preds = %bb.aw, %bb.av
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge291.loopexit.unr-lcssa, label %bb.at, !llvm.loop !435

._crit_edge291.loopexit.unr-lcssa:                ; preds = %bb.ax
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge291, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge291.loopexit.unr-lcssa, %.lr.ph290
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph290 ], [ %indvars.iv.next.1, %._crit_edge291.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod372 = trunc i32 %i.hl to i1
  call void @llvm.assume(i1 %lcmp.mod372)
  %i.im = getelementptr inbounds nuw [64 x i8], ptr %i.hm, i64 %indvars.iv.epil.init ; 2 uses
  %i.in = getelementptr inbounds nuw i8, ptr %i.im, i64 32
  %i.io = load i32, ptr %i.in, align 8, !tbaa !119
  %.not264.epil = icmp eq i32 %i.io, 0
  br i1 %.not264.epil, label %bb.ay, label %._crit_edge291

bb.ay:                                            ; preds = %.epil.preheader
  %i.ip = getelementptr inbounds nuw i8, ptr %i.im, i64 24
  %i.iq = load i32, ptr %i.ip, align 8, !tbaa !75
  %i.ir = add i32 %i.iq, -1
  %i.is = shl nuw i32 1, %i.ir
  %i.it = load ptr, ptr %i.gn, align 8, !tbaa !9
  %i.iu = getelementptr inbounds nuw i8, ptr %i.it, i64 5600
  %i.iv = load ptr, ptr %i.iu, align 8, !tbaa !109
  %i.iw = getelementptr inbounds nuw [1080 x i8], ptr %i.iv, i64 %indvars.iv.epil.init
  %i.ix = getelementptr inbounds nuw i8, ptr %i.iw, i64 1076
  store i32 %i.is, ptr %i.ix, align 4, !tbaa !114
  br label %._crit_edge291

._crit_edge291:                                   ; preds = %._crit_edge291.loopexit.unr-lcssa, %bb.ay, %.epil.preheader, %bb.as
  %.not299 = icmp eq i32 %i.fb, 0
  br i1 %.not299, label %._crit_edge296, label %.lr.ph295.preheader

.lr.ph295.preheader:                              ; preds = %._crit_edge291
  %i.iy = load ptr, ptr %i.gh, align 8, !tbaa !32
  br label %.lr.ph295

.lr.ph295:                                        ; preds = %.lr.ph295.preheader, %bb.ba
  %.0225293 = phi ptr [ %i.jf, %bb.ba ], [ %i.iy, %.lr.ph295.preheader ] ; 2 uses
  %.2234292 = phi i32 [ %i.jg, %bb.ba ], [ 0, %.lr.ph295.preheader ]
  %i.iz = load i32, ptr %i.ag, align 8, !tbaa !57
  %i.ja = zext i32 %i.iz to i64
  %i.jb = call ptr @opj_calloc(i64 noundef %i.ja, i64 noundef 1080) #21 ; 2 uses
  %i.jc = getelementptr inbounds nuw i8, ptr %.0225293, i64 5600
  store ptr %i.jb, ptr %i.jc, align 8, !tbaa !109
  %i.jd = icmp eq ptr %i.jb, null
  br i1 %i.jd, label %bb.az, label %bb.ba

bb.az:                                            ; preds = %.lr.ph295
  %i.je = call i32 (ptr, i32, ptr, ...) @opj_event_msg(ptr noundef %3, i32 noundef 1, ptr noundef nonnull @.str.218) #21 ; 0 uses
  br label %bb.bc

bb.ba:                                            ; preds = %.lr.ph295
  %i.jf = getelementptr inbounds nuw i8, ptr %.0225293, i64 5696
  %i.jg = add nuw i32 %.2234292, 1                ; 2 uses
  %i.jh = icmp ult i32 %i.jg, %i.fb
  br i1 %i.jh, label %.lr.ph295, label %._crit_edge296, !llvm.loop !436

._crit_edge296:                                   ; preds = %bb.ba, %._crit_edge291
  %i.ji = call fastcc i32 @opj_j2k_allocate_tile_element_cstr_index(ptr noundef %0)
  %.not263 = icmp eq i32 %i.ji, 0
  br i1 %.not263, label %bb.bc, label %bb.bb

bb.bb:                                            ; preds = %._crit_edge296
  store i32 4, ptr %i.fc, align 8, !tbaa !9
  call void @opj_image_comp_header_update(ptr noundef nonnull %i.d, ptr noundef nonnull %i.e) #21
  br label %bb.bc

bb.bc:                                            ; preds = %.thread, %._crit_edge296, %._crit_edge, %bb.ad, %.critedge, %bb.bb, %bb.az, %bb.ar, %bb.ap, %bb.an, %bb.al, %bb.ag, %bb.w, %bb.o, %bb.l, %bb.j, %bb.h, %bb.g, %bb.d, %bb.b
  %.4 = phi i32 [ 0, %bb.b ], [ 0, %bb.d ], [ 0, %bb.h ], [ 0, %bb.j ], [ 0, %bb.l ], [ 0, %bb.o ], [ 0, %bb.w ], [ 0, %.thread ], [ 0, %bb.g ], [ 0, %bb.ag ], [ 0, %bb.al ], [ 0, %bb.an ], [ 0, %bb.az ], [ 1, %bb.bb ], [ 0, %._crit_edge ], [ 0, %bb.ar ], [ 0, %bb.ap ], [ 0, %.critedge ], [ 0, %bb.ad ], [ 0, %._crit_edge296 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  ret i32 %.4
}

; Function Attrs: nounwind uwtable
define internal range(i32 0, 2) i32 @opj_j2k_read_tlm(ptr noundef captures(none) %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) #3 {
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
  %i.j = load i32, ptr %i.i, align 8, !tbaa !414
  %.not = icmp eq i32 %i.j, 0
  br i1 %.not, label %bb.d, label %.loopexit

bb.d:                                             ; preds = %bb.c
  call void @opj_read_bytes_LE(ptr noundef %1, ptr noundef nonnull %i.a, i32 noundef 1) #21
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 1
  call void @opj_read_bytes_LE(ptr noundef nonnull %i.k, ptr noundef nonnull %i.b, i32 noundef 1) #21
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 2 ; 2 uses
  %i.m = load i32, ptr %i.b, align 4, !tbaa !3    ; 2 uses
  %i.n = lshr i32 %i.m, 4
  %i.o = and i32 %i.n, 3                          ; 5 uses
  %i.p = icmp eq i32 %i.o, 3
  br i1 %i.p, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  store i32 1, ptr %i.i, align 8, !tbaa !414
  %i.q = call i32 (ptr, i32, ptr, ...) @opj_event_msg(ptr noundef %3, i32 noundef 2, ptr noundef nonnull @.str.223) #21 ; 0 uses
  br label %.loopexit

bb.f:                                             ; preds = %bb.d
  %i.r = lshr i32 %i.m, 5
  %i.s = and i32 %i.r, 2
  %i.t = add nuw nsw i32 %i.s, 2                  ; 4 uses
  %i.u = add nuw nsw i32 %i.t, %i.o               ; 3 uses
  %i.v = urem i32 %i.h, %i.u
  %i.w = udiv i32 %i.h, %i.u                      ; 4 uses
  %.not70 = icmp eq i32 %i.v, 0
  br i1 %.not70, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  store i32 1, ptr %i.i, align 8, !tbaa !414
  %i.x = call i32 (ptr, i32, ptr, ...) @opj_event_msg(ptr noundef %3, i32 noundef 2, ptr noundef nonnull @.str.224) #21 ; 0 uses
  br label %.loopexit

bb.h:                                             ; preds = %bb.f
  %i.y = icmp ugt i32 %i.u, %i.h
  br i1 %i.y, label %.loopexit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.z = load i32, ptr %i.e, align 8, !tbaa !411  ; 2 uses
  %i.aa = xor i32 %i.w, -1
  %i.ab = icmp ugt i32 %i.z, %i.aa
  br i1 %i.ab, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ac = add i32 %i.z, %i.w                      ; 2 uses
  %i.ad = icmp ugt i32 %i.ac, 536870911
  br i1 %i.ad, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j, %bb.i
  store i32 1, ptr %i.i, align 8, !tbaa !414
  %i.ae = call i32 (ptr, i32, ptr, ...) @opj_event_msg(ptr noundef %3, i32 noundef 2, ptr noundef nonnull @.str.225) #21 ; 0 uses
  br label %.loopexit

bb.l:                                             ; preds = %bb.j
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !415
  %i.ah = shl nuw i32 %i.ac, 3
  %i.ai = zext i32 %i.ah to i64
  %i.aj = call ptr @opj_realloc(ptr noundef %i.ag, i64 noundef %i.ai) #21 ; 4 uses
  %.not71 = icmp eq ptr %i.aj, null
  br i1 %.not71, label %bb.m, label %.lr.ph

bb.m:                                             ; preds = %bb.l
  store i32 1, ptr %i.i, align 8, !tbaa !414
  %i.ak = call i32 (ptr, i32, ptr, ...) @opj_event_msg(ptr noundef %3, i32 noundef 2, ptr noundef nonnull @.str.226) #21 ; 0 uses
  br label %.loopexit

.lr.ph:                                           ; preds = %bb.l
  store ptr %i.aj, ptr %i.af, align 8, !tbaa !415
  %i.al = icmp eq i32 %i.o, 0
  %i.am = zext nneg i32 %i.o to i64
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 188 ; 2 uses
  %i.ap = zext nneg i32 %i.t to i64               ; 2 uses
  br i1 %i.al, label %.lr.ph.split.us.preheader, label %.lr.ph.split.preheader

.lr.ph.split.preheader:                           ; preds = %.lr.ph
  %umax = call i32 @llvm.umax.i32(i32 %i.w, i32 1)
  br label %.lr.ph.split

.lr.ph.split.us.preheader:                        ; preds = %.lr.ph
  %.pre = load i32, ptr %i.e, align 8, !tbaa !411
  %umax83 = call i32 @llvm.umax.i32(i32 %i.w, i32 1)
  br label %.lr.ph.split.us

.lr.ph.split.us:                                  ; preds = %.lr.ph.split.us.preheader, %bb.n
  %i.aq = phi i32 [ %i.bb, %bb.n ], [ %.pre, %.lr.ph.split.us.preheader ] ; 4 uses
  %.06076.us = phi ptr [ %i.au, %bb.n ], [ %i.l, %.lr.ph.split.us.preheader ] ; 2 uses
  %.06375.us = phi i32 [ %i.bc, %bb.n ], [ 0, %.lr.ph.split.us.preheader ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #21
  store i32 %i.aq, ptr %i.c, align 4, !tbaa !3
  %i.ar = load i32, ptr %i.an, align 8, !tbaa !220
  %i.as = load i32, ptr %i.ao, align 4, !tbaa !221
  %i.at = mul i32 %i.as, %i.ar
  %.not72.us = icmp ult i32 %i.aq, %i.at
  br i1 %.not72.us, label %bb.n, label %.split.us

bb.n:                                             ; preds = %.lr.ph.split.us
  call void @opj_read_bytes_LE(ptr noundef nonnull %.06076.us, ptr noundef nonnull %i.d, i32 noundef %i.t) #21
  %i.au = getelementptr inbounds nuw i8, ptr %.06076.us, i64 %i.ap
  %i.av = trunc i32 %i.aq to i16
  %i.aw = load i32, ptr %i.e, align 8, !tbaa !411 ; 2 uses
  %i.ax = zext i32 %i.aw to i64
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %i.ax ; 2 uses
  store i16 %i.av, ptr %i.ay, align 4, !tbaa !416
  %i.az = load i32, ptr %i.d, align 4, !tbaa !3
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ay, i64 4
  store i32 %i.az, ptr %i.ba, align 4, !tbaa !422
  %i.bb = add i32 %i.aw, 1                        ; 2 uses
  store i32 %i.bb, ptr %i.e, align 8, !tbaa !411
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #21
  %i.bc = add nuw nsw i32 %.06375.us, 1           ; 2 uses
  %exitcond84.not = icmp eq i32 %i.bc, %umax83
  br i1 %exitcond84.not, label %.loopexit, label %.lr.ph.split.us, !llvm.loop !437

.lr.ph.split:                                     ; preds = %.lr.ph.split.preheader, %bb.o
  %.06076 = phi ptr [ %i.bj, %bb.o ], [ %i.l, %.lr.ph.split.preheader ] ; 2 uses
  %.06375 = phi i32 [ %i.bs, %bb.o ], [ 0, %.lr.ph.split.preheader ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #21
  call void @opj_read_bytes_LE(ptr noundef nonnull %.06076, ptr noundef nonnull %i.c, i32 noundef %i.o) #21
  %i.bd = load i32, ptr %i.c, align 4, !tbaa !3   ; 2 uses
  %i.be = load i32, ptr %i.an, align 8, !tbaa !220
  %i.bf = load i32, ptr %i.ao, align 4, !tbaa !221
  %i.bg = mul i32 %i.bf, %i.be
  %.not72 = icmp ult i32 %i.bd, %i.bg
  br i1 %.not72, label %bb.o, label %.split.us

.split.us:                                        ; preds = %.lr.ph.split, %.lr.ph.split.us
  %.us-phi = phi i32 [ %i.aq, %.lr.ph.split.us ], [ %i.bd, %.lr.ph.split ]
  store i32 1, ptr %i.i, align 8, !tbaa !414
  %i.bh = call i32 (ptr, i32, ptr, ...) @opj_event_msg(ptr noundef %3, i32 noundef 2, ptr noundef nonnull @.str.227, i32 noundef %.us-phi) #21 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #21
  br label %.loopexit

bb.o:                                             ; preds = %.lr.ph.split
  %i.bi = getelementptr inbounds nuw i8, ptr %.06076, i64 %i.am ; 2 uses
  call void @opj_read_bytes_LE(ptr noundef nonnull %i.bi, ptr noundef nonnull %i.d, i32 noundef %i.t) #21
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 %i.ap
  %i.bk = load i32, ptr %i.c, align 4, !tbaa !3
  %i.bl = trunc i32 %i.bk to i16
  %i.bm = load i32, ptr %i.e, align 8, !tbaa !411 ; 2 uses
  %i.bn = zext i32 %i.bm to i64
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %i.bn ; 2 uses
  store i16 %i.bl, ptr %i.bo, align 4, !tbaa !416
  %i.bp = load i32, ptr %i.d, align 4, !tbaa !3
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bo, i64 4
  store i32 %i.bp, ptr %i.bq, align 4, !tbaa !422
  %i.br = add i32 %i.bm, 1
  store i32 %i.br, ptr %i.e, align 8, !tbaa !411
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #21
  %i.bs = add nuw nsw i32 %.06375, 1              ; 2 uses
  %exitcond.not = icmp eq i32 %i.bs, %umax
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph.split, !llvm.loop !437

.loopexit:                                        ; preds = %bb.o, %bb.n, %.split.us, %bb.h, %bb.c, %bb.m, %bb.k, %bb.g, %bb.e, %bb.b
  %.2 = phi i32 [ 0, %bb.b ], [ 1, %bb.m ], [ 1, %bb.e ], [ 1, %bb.g ], [ 1, %bb.c ], [ 1, %bb.k ], [ 1, %.split.us ], [ 1, %bb.h ], [ 1, %bb.n ], [ 1, %bb.o ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  ret i32 %.2
}

; Function Attrs: nounwind uwtable
define internal range(i32 0, 2) i32 @opj_j2k_read_plm(ptr readnone captures(none) %0, ptr readnone captures(none) %1, i32 noundef %2, ptr noundef %3) #3 {
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
define internal range(i32 0, 2) i32 @opj_j2k_read_plt(ptr readnone captures(none) %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) #3 {
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
  %i.f = load i32, ptr %i.b, align 4, !tbaa !3    ; 2 uses
  %i.g = and i32 %i.f, 128
  %.not18 = icmp eq i32 %i.g, 0
  %i.h = and i32 %i.f, 127
  %i.i = or i32 %i.h, %.01420
  %i.j = shl i32 %i.i, 7
  %.1 = select i1 %.not18, i32 0, i32 %i.j        ; 2 uses
  %i.k = add nuw i32 %.021, 1                     ; 2 uses
  %exitcond.not = icmp eq i32 %i.k, %i.e
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !438

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
define internal range(i32 0, 2) i32 @opj_j2k_read_ppm(ptr noundef captures(none) %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) #3 {
bb.a:
  %i.a = alloca i32, align 4                      ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  %i.b = icmp ult i32 %2, 2
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 (ptr, i32, ptr, ...) @opj_event_msg(ptr noundef %3, i32 noundef 1, ptr noundef nonnull @.str.230) #21 ; 0 uses
  br label %bb.n

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 308 ; 2 uses
  %i.e = load i8, ptr %i.d, align 4
  %i.f = or i8 %i.e, 1
  store i8 %i.f, ptr %i.d, align 4
  call void @opj_read_bytes_LE(ptr noundef %1, ptr noundef nonnull %i.a, i32 noundef 1) #21
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.h = add i32 %2, -1                           ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 5 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !37   ; 3 uses
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.l = load i32, ptr %i.a, align 4, !tbaa !3
  %i.m = add i32 %i.l, 1                          ; 2 uses
  %i.n = zext i32 %i.m to i64
  %i.o = call ptr @opj_calloc(i64 noundef %i.n, i64 noundef 16) #21 ; 3 uses
  store ptr %i.o, ptr %i.i, align 8, !tbaa !37
  %.not47 = icmp eq ptr %i.o, null
  br i1 %.not47, label %.thread, label %bb.e

.thread:                                          ; preds = %bb.d
  %i.p = call i32 (ptr, i32, ptr, ...) @opj_event_msg(ptr noundef %3, i32 noundef 1, ptr noundef nonnull @.str.174) #21 ; 0 uses
  br label %bb.n

bb.e:                                             ; preds = %bb.d
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 192
  store i32 %i.m, ptr %i.q, align 8, !tbaa !38
  br label %bb.i

bb.f:                                             ; preds = %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 3 uses
  %i.s = load i32, ptr %i.r, align 8, !tbaa !38
  %i.t = load i32, ptr %i.a, align 4, !tbaa !3    ; 2 uses
  %.not = icmp ugt i32 %i.s, %i.t
  br i1 %.not, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.u = add i32 %i.t, 1                          ; 3 uses
  %i.v = zext i32 %i.u to i64
  %i.w = shl nuw nsw i64 %i.v, 4
  %i.x = call ptr @opj_realloc(ptr noundef nonnull %i.j, i64 noundef %i.w) #21 ; 3 uses
  %.not46 = icmp eq ptr %i.x, null
  br i1 %.not46, label %.thread49, label %bb.h

.thread49:                                        ; preds = %bb.g
  %i.y = call i32 (ptr, i32, ptr, ...) @opj_event_msg(ptr noundef %3, i32 noundef 1, ptr noundef nonnull @.str.174) #21 ; 0 uses
  br label %bb.n

bb.h:                                             ; preds = %bb.g
  store ptr %i.x, ptr %i.i, align 8, !tbaa !37
  %i.z = load i32, ptr %i.r, align 8, !tbaa !38   ; 2 uses
  %i.aa = zext i32 %i.z to i64
  %i.ab = getelementptr inbounds nuw [16 x i8], ptr %i.x, i64 %i.aa
  %i.ac = sub i32 %i.u, %i.z
  %i.ad = zext i32 %i.ac to i64
end_hunk_0
