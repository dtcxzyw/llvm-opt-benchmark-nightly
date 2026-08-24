Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/git/original/packfile?download=true
inline.NumInlined: 251
inline.NumDeleted: 72
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumUnrolled: 9
begin_hunk_0_@packed_object_info_with_index_pos:bb.a
  %i.fw = call ptr @xrealloc(ptr noundef %.053.i, i64 noundef %i.fv) #20
  br label %bb.aj

bb.aj:                                            ; preds = %st_mult.exit77.i, %bb.ai, %st_mult.exit.i
  %.154.i = phi ptr [ %i.fn, %st_mult.exit.i ], [ %i.fw, %st_mult.exit77.i ], [ %.053.i, %bb.ai ] ; 7 uses
  %.2.i = phi i32 [ %i.fk, %st_mult.exit.i ], [ %..i, %st_mult.exit77.i ], [ %.050.i, %bb.ai ]
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.fx = getelementptr inbounds nuw [8 x i8], ptr %.154.i, i64 %indvars.iv.i
  store i64 %.060.i, ptr %i.fx, align 8, !tbaa !67
  %i.fy = call i64 @get_delta_base(ptr noundef %0, ptr noundef nonnull %i.f, ptr noundef nonnull %i.c, i32 noundef %.057.i, i64 noundef %.060.i) ; 6 uses
  %.not71.i = icmp eq i64 %i.fy, 0
  br i1 %.not71.i, label %.critedge.i, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  store i64 %i.fy, ptr %i.c, align 8, !tbaa !67
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #20
  %i.fz = call ptr @use_pack(ptr noundef %0, ptr noundef nonnull %i.f, i64 noundef %i.fy, ptr noundef nonnull %i.b) ; 9 uses
  %i.ga = load i64, ptr %i.b, align 8, !tbaa !67  ; 8 uses
  %i.gb = load i8, ptr %i.fz, align 1, !tbaa !18  ; 3 uses
  %i.gc = lshr i8 %i.gb, 4
  %i.gd = and i8 %i.gc, 7                         ; 2 uses
  %i.ge = zext nneg i8 %i.gd to i32
  %.not27.i.i.i = icmp sgt i8 %i.gb, -1
  br i1 %.not27.i.i.i, label %unpack_object_header.exit.i, label %.lr.ph.i.i.preheader.i

.lr.ph.i.i.preheader.i:                           ; preds = %bb.ak
  %i.gf = icmp ult i64 %i.ga, 2
  br i1 %i.gf, label %unpack_object_header.exit.thread.i, label %st_left_shift.exit.i.i.i

.lr.ph.i.i.i:                                     ; preds = %st_left_shift.exit.i.i.i
  %i.gg = icmp eq i64 %i.ga, 2
  br i1 %i.gg, label %unpack_object_header.exit.thread.i, label %st_left_shift.exit.i.i.i.1

st_left_shift.exit.i.i.i.1:                       ; preds = %.lr.ph.i.i.i
  %i.gh = getelementptr inbounds nuw i8, ptr %i.fz, i64 2
  %i.gi = load i8, ptr %i.gh, align 1, !tbaa !18  ; 2 uses
  %i.gj = and i8 %i.gi, 127
  %i.gk = zext nneg i8 %i.gj to i64
  %i.gl = shl nuw nsw i64 %i.gk, 11
  %i.gm = or disjoint i64 %i.in, %i.gl
  %.not.i.i.i.1 = icmp sgt i8 %i.gi, -1
  br i1 %.not.i.i.i.1, label %unpack_object_header.exit.i, label %.lr.ph.i.i.i.1, !llvm.loop !161

.lr.ph.i.i.i.1:                                   ; preds = %st_left_shift.exit.i.i.i.1
  %i.gn = icmp ult i64 %i.ga, 4
  br i1 %i.gn, label %unpack_object_header.exit.thread.i, label %st_left_shift.exit.i.i.i.2

st_left_shift.exit.i.i.i.2:                       ; preds = %.lr.ph.i.i.i.1
  %i.go = getelementptr inbounds nuw i8, ptr %i.fz, i64 3
  %i.gp = load i8, ptr %i.go, align 1, !tbaa !18  ; 2 uses
  %i.gq = and i8 %i.gp, 127
  %i.gr = zext nneg i8 %i.gq to i64
  %i.gs = shl nuw nsw i64 %i.gr, 18
  %i.gt = or disjoint i64 %i.gm, %i.gs
  %.not.i.i.i.2 = icmp sgt i8 %i.gp, -1
  br i1 %.not.i.i.i.2, label %unpack_object_header.exit.i, label %.lr.ph.i.i.i.2, !llvm.loop !161

.lr.ph.i.i.i.2:                                   ; preds = %st_left_shift.exit.i.i.i.2
  %i.gu = icmp eq i64 %i.ga, 4
  br i1 %i.gu, label %unpack_object_header.exit.thread.i, label %st_left_shift.exit.i.i.i.3

st_left_shift.exit.i.i.i.3:                       ; preds = %.lr.ph.i.i.i.2
  %i.gv = getelementptr inbounds nuw i8, ptr %i.fz, i64 4
  %i.gw = load i8, ptr %i.gv, align 1, !tbaa !18  ; 2 uses
  %i.gx = and i8 %i.gw, 127
  %i.gy = zext nneg i8 %i.gx to i64
  %i.gz = shl nuw nsw i64 %i.gy, 25
  %i.ha = or disjoint i64 %i.gt, %i.gz
  %.not.i.i.i.3 = icmp sgt i8 %i.gw, -1
  br i1 %.not.i.i.i.3, label %unpack_object_header.exit.i, label %.lr.ph.i.i.i.3, !llvm.loop !161

.lr.ph.i.i.i.3:                                   ; preds = %st_left_shift.exit.i.i.i.3
  %i.hb = icmp ult i64 %i.ga, 6
  br i1 %i.hb, label %unpack_object_header.exit.thread.i, label %st_left_shift.exit.i.i.i.4

st_left_shift.exit.i.i.i.4:                       ; preds = %.lr.ph.i.i.i.3
  %i.hc = getelementptr inbounds nuw i8, ptr %i.fz, i64 5
  %i.hd = load i8, ptr %i.hc, align 1, !tbaa !18  ; 2 uses
  %i.he = and i8 %i.hd, 127
  %i.hf = zext nneg i8 %i.he to i64
  %i.hg = shl nuw nsw i64 %i.hf, 32
  %i.hh = or disjoint i64 %i.ha, %i.hg
  %.not.i.i.i.4 = icmp sgt i8 %i.hd, -1
  br i1 %.not.i.i.i.4, label %unpack_object_header.exit.i, label %.lr.ph.i.i.i.4, !llvm.loop !161

.lr.ph.i.i.i.4:                                   ; preds = %st_left_shift.exit.i.i.i.4
  %i.hi = icmp eq i64 %i.ga, 6
  br i1 %i.hi, label %unpack_object_header.exit.thread.i, label %st_left_shift.exit.i.i.i.5

st_left_shift.exit.i.i.i.5:                       ; preds = %.lr.ph.i.i.i.4
  %i.hj = getelementptr inbounds nuw i8, ptr %i.fz, i64 6
  %i.hk = load i8, ptr %i.hj, align 1, !tbaa !18  ; 2 uses
  %i.hl = and i8 %i.hk, 127
  %i.hm = zext nneg i8 %i.hl to i64
  %i.hn = shl nuw nsw i64 %i.hm, 39
  %i.ho = add nuw i64 %i.hh, %i.hn                ; 2 uses
  %.not.i.i.i.5 = icmp sgt i8 %i.hk, -1
  br i1 %.not.i.i.i.5, label %unpack_object_header.exit.i, label %.lr.ph.i.i.i.5, !llvm.loop !161

.lr.ph.i.i.i.5:                                   ; preds = %st_left_shift.exit.i.i.i.5
  %i.hp = icmp ult i64 %i.ga, 8
  br i1 %i.hp, label %unpack_object_header.exit.thread.i, label %st_left_shift.exit.i.i.i.6

st_left_shift.exit.i.i.i.6:                       ; preds = %.lr.ph.i.i.i.5
  %i.hq = getelementptr inbounds nuw i8, ptr %i.fz, i64 7
  %i.hr = load i8, ptr %i.hq, align 1, !tbaa !18  ; 2 uses
  %i.hs = and i8 %i.hr, 127
  %i.ht = zext nneg i8 %i.hs to i64
  %i.hu = shl nuw nsw i64 %i.ht, 46               ; 2 uses
  %i.hv = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.ho, i64 %i.hu) ; 2 uses
  %i.hw = extractvalue { i64, i1 } %i.hv, 1
  br i1 %i.hw, label %bb.al, label %st_add.exit.i.i.i.6

st_add.exit.i.i.i.6:                              ; preds = %st_left_shift.exit.i.i.i.6
  %.not.i.i.i.6 = icmp sgt i8 %i.hr, -1
  br i1 %.not.i.i.i.6, label %unpack_object_header.exit.i, label %.lr.ph.i.i.i.6, !llvm.loop !161

.lr.ph.i.i.i.6:                                   ; preds = %st_add.exit.i.i.i.6
  %i.hx = icmp eq i64 %i.ga, 8
  br i1 %i.hx, label %unpack_object_header.exit.thread.i, label %st_left_shift.exit.i.i.i.7

st_left_shift.exit.i.i.i.7:                       ; preds = %.lr.ph.i.i.i.6
  %i.hy = extractvalue { i64, i1 } %i.hv, 0       ; 2 uses
  %i.hz = getelementptr inbounds nuw i8, ptr %i.fz, i64 8
  %i.ia = load i8, ptr %i.hz, align 1, !tbaa !18  ; 2 uses
  %i.ib = and i8 %i.ia, 127
  %i.ic = zext nneg i8 %i.ib to i64
  %i.id = shl nuw nsw i64 %i.ic, 53               ; 2 uses
  %i.ie = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.hy, i64 %i.id)
  %i.if = extractvalue { i64, i1 } %i.ie, 1
  br i1 %i.if, label %bb.al, label %st_add.exit.i.i.i.7

st_add.exit.i.i.i.7:                              ; preds = %st_left_shift.exit.i.i.i.7
  %.not.i.i.i.7 = icmp sgt i8 %i.ia, -1
  br i1 %.not.i.i.i.7, label %unpack_object_header.exit.i, label %unpack_object_header.exit.thread.i, !llvm.loop !161

st_left_shift.exit.i.i.i:                         ; preds = %.lr.ph.i.i.preheader.i
  %i.ig = and i8 %i.gb, 15
  %i.ih = zext nneg i8 %i.ig to i64
  %i.ii = getelementptr inbounds nuw i8, ptr %i.fz, i64 1
  %i.ij = load i8, ptr %i.ii, align 1, !tbaa !18  ; 2 uses
  %i.ik = and i8 %i.ij, 127
  %i.il = zext nneg i8 %i.ik to i64
  %i.im = shl nuw nsw i64 %i.il, 4
  %i.in = or disjoint i64 %i.im, %i.ih
  %.not.i.i.i = icmp sgt i8 %i.ij, -1
  br i1 %.not.i.i.i, label %unpack_object_header.exit.i, label %.lr.ph.i.i.i, !llvm.loop !161

bb.al:                                            ; preds = %st_left_shift.exit.i.i.i.7, %st_left_shift.exit.i.i.i.6
  %.02029.i.i.i319.lcssa = phi i64 [ %i.hy, %st_left_shift.exit.i.i.i.7 ], [ %i.ho, %st_left_shift.exit.i.i.i.6 ]
  %.lcssa332 = phi i64 [ %i.id, %st_left_shift.exit.i.i.i.7 ], [ %i.hu, %st_left_shift.exit.i.i.i.6 ]
  call void (ptr, ...) @die(ptr noundef nonnull @.str.47, i64 noundef %.02029.i.i.i319.lcssa, i64 noundef %.lcssa332) #19
  unreachable

unpack_object_header.exit.thread.i:               ; preds = %.lr.ph.i.i.preheader.i, %st_add.exit.i.i.i.7, %.lr.ph.i.i.i, %.lr.ph.i.i.i.1, %.lr.ph.i.i.i.2, %.lr.ph.i.i.i.3, %.lr.ph.i.i.i.4, %.lr.ph.i.i.i.5, %.lr.ph.i.i.i.6
  %i.io = call i32 (ptr, ...) @error(ptr noundef nonnull @.str.28) #20 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #20
  br label %.loopexit.i100

unpack_object_header.exit.i:                      ; preds = %st_left_shift.exit.i.i.i, %st_left_shift.exit.i.i.i.1, %st_left_shift.exit.i.i.i.2, %st_left_shift.exit.i.i.i.3, %st_left_shift.exit.i.i.i.4, %st_left_shift.exit.i.i.i.5, %st_add.exit.i.i.i.6, %st_add.exit.i.i.i.7, %bb.ak
  %.1.i.ph.i.i = phi i64 [ 1, %bb.ak ], [ 2, %st_left_shift.exit.i.i.i ], [ 3, %st_left_shift.exit.i.i.i.1 ], [ 4, %st_left_shift.exit.i.i.i.2 ], [ 5, %st_left_shift.exit.i.i.i.3 ], [ 6, %st_left_shift.exit.i.i.i.4 ], [ 7, %st_left_shift.exit.i.i.i.5 ], [ 8, %st_add.exit.i.i.i.6 ], [ 9, %st_add.exit.i.i.i.7 ]
  %i.ip = add i64 %.1.i.ph.i.i, %i.fy
  store i64 %i.ip, ptr %i.c, align 8, !tbaa !67
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #20
  %i.iq = icmp eq i8 %i.gd, 0
  br i1 %i.iq, label %.loopexit.i100, label %bb.ag

.loopexit.i100:                                   ; preds = %unpack_object_header.exit.i, %unpack_object_header.exit.thread.i
  %i.ir = call fastcc i32 @retry_bad_packed_offset(ptr noundef readonly %i.fb, ptr noundef %0, i64 noundef %i.fy) ; 2 uses
  %i.is = icmp sgt i32 %i.ir, 0
  br i1 %i.is, label %.thread.i, label %.critedge.i

bb.am:                                            ; preds = %bb.ag
  switch i32 %.057.i, label %bb.an [
    i32 -1, label %.thread.i
    i32 1, label %.thread.i
    i32 2, label %.thread.i
    i32 3, label %.thread.i
    i32 4, label %.thread.i
  ]

bb.an:                                            ; preds = %bb.am
  %i.it = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.iu = call i32 (ptr, ...) @error(ptr noundef nonnull @.str.35, i32 noundef %.057.i, i64 noundef %.060.i, ptr noundef nonnull %i.it) #20 ; 0 uses
  br label %.thread.i

..thread.i.loopexit_crit_edge327:                 ; preds = %bb.aq
  br label %.thread.i, !llvm.loop !199

.thread.i:                                        ; preds = %bb.ap, %.critedge.i, %..thread.i.loopexit_crit_edge327, %bb.an, %bb.am, %bb.am, %bb.am, %bb.am, %bb.am, %.loopexit.i100
  %.259.i = phi i32 [ %i.ir, %.loopexit.i100 ], [ %.057.i, %bb.am ], [ %.057.i, %bb.am ], [ -1, %bb.an ], [ %.057.i, %bb.am ], [ %.057.i, %bb.am ], [ %.057.i, %bb.am ], [ -1, %.critedge.i ], [ %i.iz, %..thread.i.loopexit_crit_edge327 ], [ -1, %bb.ap ] ; 2 uses
  %.255.i = phi ptr [ %.154.i, %.loopexit.i100 ], [ %.053.i, %bb.am ], [ %.053.i, %bb.am ], [ %.053.i, %bb.an ], [ %.053.i, %bb.am ], [ %.053.i, %bb.am ], [ %.053.i, %bb.am ], [ %.154.i, %.critedge.i ], [ %.154.i, %..thread.i.loopexit_crit_edge327 ], [ %.154.i, %bb.ap ] ; 2 uses
  %.not73.i = icmp eq ptr %.255.i, %i.d
  br i1 %.not73.i, label %packed_to_object_type.exit, label %bb.ao

bb.ao:                                            ; preds = %.thread.i
  call void @free(ptr noundef %.255.i) #20
  br label %packed_to_object_type.exit

.critedge.i:                                      ; preds = %bb.aj, %.loopexit.i100
  %6 = and i64 %indvars.iv.next.i, 4294967295     ; 2 uses
  %i.iv = icmp eq i64 %6, 0
  br i1 %i.iv, label %.thread.i, label %bb.aq

bb.ap:                                            ; preds = %bb.aq
  %i.iw = icmp eq i64 %indvars.iv.next144.i, 0
  br i1 %i.iw, label %.thread.i, label %bb.aq, !llvm.loop !199

bb.aq:                                            ; preds = %.critedge.i, %bb.ap
  %indvars.iv143.i325 = phi i64 [ %indvars.iv.next144.i, %bb.ap ], [ %6, %.critedge.i ]
  %indvars.iv.next144.i = add nsw i64 %indvars.iv143.i325, -1 ; 3 uses
  %i.ix = getelementptr inbounds nuw [8 x i8], ptr %.154.i, i64 %indvars.iv.next144.i
  %i.iy = load i64, ptr %i.ix, align 8, !tbaa !67
  %i.iz = call fastcc i32 @retry_bad_packed_offset(ptr noundef readonly %i.fb, ptr noundef %0, i64 noundef %i.iy) ; 2 uses
  %i.ja = icmp sgt i32 %i.iz, 0
  br i1 %i.ja, label %..thread.i.loopexit_crit_edge327, label %bb.ap, !llvm.loop !199

packed_to_object_type.exit:                       ; preds = %.thread.i, %bb.ao
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.jb = load ptr, ptr %3, align 8, !tbaa !195   ; 2 uses
  %.not94 = icmp eq ptr %i.jb, null
  br i1 %.not94, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %packed_to_object_type.exit
  store i32 %.259.i, ptr %i.jb, align 4, !tbaa !62
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %packed_to_object_type.exit
  %i.jc = icmp slt i32 %.259.i, 0
  br i1 %i.jc, label %get_delta_base_oid.exit.thread, label %._crit_edge200

._crit_edge200:                                   ; preds = %bb.as
  %.pre199.pre = load i32, ptr %i.g, align 4, !tbaa !62
  br label %bb.at

bb.at:                                            ; preds = %._crit_edge200, %bb.ae
  %.pre199 = phi i32 [ %.pre199.pre, %._crit_edge200 ], [ %.pre199.pre201, %bb.ae ] ; 3 uses
  %i.jd = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.je = load ptr, ptr %i.jd, align 8, !tbaa !196 ; 11 uses
  %.not95 = icmp eq ptr %i.je, null
  br i1 %.not95, label %bb.bt, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.jf = and i32 %.pre199, -2
  %or.cond3 = icmp eq i32 %i.jf, 6
  br i1 %or.cond3, label %bb.av, label %bb.bq

bb.av:                                            ; preds = %bb.au
  %i.jg = icmp eq i32 %.pre199, 7
  br i1 %i.jg, label %bb.aw, label %bb.bb

bb.aw:                                            ; preds = %bb.av
  %i.jh = call ptr @use_pack(ptr noundef %0, ptr noundef nonnull %i.f, i64 noundef %.0113230, ptr noundef null)
  %i.ji = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.jj = load ptr, ptr %i.ji, align 8, !tbaa !57
  %i.jk = getelementptr inbounds nuw i8, ptr %i.jj, i64 448
  %i.jl = load ptr, ptr %i.jk, align 8, !tbaa !19 ; 4 uses
  %i.jm = getelementptr inbounds nuw i8, ptr %i.jl, i64 16 ; 2 uses
  %i.jn = load i64, ptr %i.jm, align 8, !tbaa !59
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.je, ptr readonly align 1 %i.jh, i64 %i.jn, i1 false)
  %i.jo = load i64, ptr %i.jm, align 8, !tbaa !59 ; 3 uses
  %i.jp = icmp ult i64 %i.jo, 32
  br i1 %i.jp, label %bb.ax, label %bb.ay

bb.ax:                                            ; preds = %bb.aw
  %i.jq = getelementptr inbounds nuw i8, ptr %i.je, i64 %i.jo
  %i.jr = sub nuw nsw i64 32, %i.jo
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.jq, i8 0, i64 %i.jr, i1 false)
  br label %bb.ay

bb.ay:                                            ; preds = %bb.ax, %bb.aw
  %.not.i.i.i105 = icmp eq ptr %i.jl, @hash_algos
  br i1 %.not.i.i.i105, label %.thread239, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %.not.1.i.i.i = icmp eq ptr %i.jl, getelementptr inbounds nuw (i8, ptr @hash_algos, i64 112)
  br i1 %.not.1.i.i.i, label %.thread239, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %.not.2.i.i.i = icmp eq ptr %i.jl, getelementptr inbounds nuw (i8, ptr @hash_algos, i64 224)
  %spec.select.i.i.i = select i1 %.not.2.i.i.i, i32 2, i32 0
  br label %.thread239

.thread239:                                       ; preds = %bb.ba, %bb.az, %bb.ay
  %.2.i.i.i = phi i32 [ %spec.select.i.i.i, %bb.ba ], [ 0, %bb.ay ], [ 1, %bb.az ]
  %i.js = getelementptr inbounds nuw i8, ptr %i.je, i64 32
  store i32 %.2.i.i.i, ptr %i.js, align 4, !tbaa !173
  %i.jt = getelementptr inbounds nuw i8, ptr %3, i64 48
  store i32 2, ptr %i.jt, align 8, !tbaa !200
  %i.ju = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.jv = getelementptr inbounds nuw i8, ptr %3, i64 64
  store i64 %1, ptr %i.jv, align 8, !tbaa !18
  store ptr %0, ptr %i.ju, align 8, !tbaa !18
  br label %bb.bv

bb.bb:                                            ; preds = %bb.av
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  %i.jw = call ptr @use_pack(ptr noundef %0, ptr noundef nonnull %i.f, i64 noundef %.0113230, ptr noundef null) ; 2 uses
  %i.jx = load i8, ptr %i.jw, align 1, !tbaa !18  ; 2 uses
  %i.jy = and i8 %i.jx, 127
  %i.jz = zext nneg i8 %i.jy to i64               ; 2 uses
  %.not43.i.i = icmp sgt i8 %i.jx, -1
  br i1 %.not43.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i101

.lr.ph.i.i101:                                    ; preds = %bb.bb, %bb.bc
  %.03145.i.i = phi i32 [ %i.ka, %bb.bc ], [ 1, %bb.bb ] ; 2 uses
  %.03244.i.i = phi i64 [ %i.ki, %bb.bc ], [ %i.jz, %bb.bb ] ; 2 uses
  %or.cond.i.i102 = icmp ugt i64 %.03244.i.i, 144115188075855870
  br i1 %or.cond.i.i102, label %get_delta_base_oid.exit.thread121, label %bb.bc

bb.bc:                                            ; preds = %.lr.ph.i.i101
  %i.ka = add i32 %.03145.i.i, 1
  %i.kb = zext i32 %.03145.i.i to i64
  %i.kc = getelementptr inbounds nuw i8, ptr %i.jw, i64 %i.kb
  %i.kd = load i8, ptr %i.kc, align 1, !tbaa !18  ; 2 uses
  %i.ke = shl nuw i64 %.03244.i.i, 7
  %i.kf = add nuw i64 %i.ke, 128
  %i.kg = and i8 %i.kd, 127
  %i.kh = zext nneg i8 %i.kg to i64
  %i.ki = or disjoint i64 %i.kf, %i.kh            ; 2 uses
  %.not.i.i103 = icmp sgt i8 %i.kd, -1
  br i1 %.not.i.i103, label %._crit_edge.i.i, label %.lr.ph.i.i101, !llvm.loop !172

._crit_edge.i.i:                                  ; preds = %bb.bc, %bb.bb
  %.032.lcssa.i.i = phi i64 [ %i.jz, %bb.bb ], [ %i.ki, %bb.bc ] ; 2 uses
  %i.kj = sub nsw i64 %1, %.032.lcssa.i.i         ; 2 uses
  %i.kk = icmp sgt i64 %i.kj, 0
  %.not38.i.i = icmp sgt i64 %.032.lcssa.i.i, 0
  %or.cond40.i.i = and i1 %.not38.i.i, %i.kk
  br i1 %or.cond40.i.i, label %get_delta_base.exit.i, label %get_delta_base_oid.exit.thread121

get_delta_base.exit.i:                            ; preds = %._crit_edge.i.i
  %i.kl = call i32 @offset_to_pack_pos(ptr noundef %0, i64 noundef %i.kj, ptr noundef nonnull %i.a) #20
  %i.km = icmp slt i32 %i.kl, 0
  br i1 %i.km, label %get_delta_base_oid.exit.thread121, label %bb.bd

bb.bd:                                            ; preds = %get_delta_base.exit.i
  %i.kn = load i32, ptr %i.a, align 4, !tbaa !62
  %i.ko = call i32 @pack_pos_to_index(ptr noundef %0, i32 noundef %i.kn) #20 ; 2 uses
  %i.kp = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.kq = load ptr, ptr %i.kp, align 8, !tbaa !56 ; 2 uses
  %i.kr = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 3 uses
  %i.ks = load ptr, ptr %i.kr, align 8, !tbaa !57
  %i.kt = getelementptr inbounds nuw i8, ptr %i.ks, i64 448
  %i.ku = load ptr, ptr %i.kt, align 8, !tbaa !19
  %i.kv = getelementptr inbounds nuw i8, ptr %i.ku, i64 16
  %i.kw = load i64, ptr %i.kv, align 8, !tbaa !59 ; 2 uses
  %.not.i19.i = icmp eq ptr %i.kq, null
  br i1 %.not.i19.i, label %bb.be, label %bb.bg

bb.be:                                            ; preds = %bb.bd
  %i.kx = call i32 @open_pack_index(ptr noundef nonnull %0)
  %.not23.i.i = icmp eq i32 %i.kx, 0
  br i1 %.not23.i.i, label %bb.bf, label %get_delta_base_oid.exit.thread121

bb.bf:                                            ; preds = %bb.be
  %i.ky = load ptr, ptr %i.kp, align 8, !tbaa !56
  br label %bb.bg

bb.bg:                                            ; preds = %bb.bf, %bb.bd
  %.0.i.i = phi ptr [ %i.kq, %bb.bd ], [ %i.ky, %bb.bf ] ; 2 uses
  %i.kz = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.la = load i32, ptr %i.kz, align 8, !tbaa !62
  %.not24.i.i = icmp ult i32 %i.ko, %i.la
  br i1 %.not24.i.i, label %bb.bh, label %get_delta_base_oid.exit.thread121

bb.bh:                                            ; preds = %bb.bg
  %i.lb = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.lc = load i32, ptr %i.lb, align 8, !tbaa !62
  %i.ld = icmp eq i32 %i.lc, 1
  %i.le = zext i32 %i.ko to i64                   ; 2 uses
  br i1 %i.ld, label %st_mult.exit.i.i, label %st_mult.exit28.i.i

st_mult.exit.i.i:                                 ; preds = %bb.bh
  %i.lf = add i64 %i.kw, 4
  %i.lg = and i64 %i.lf, 4294967295
  %i.lh = mul nuw i64 %i.lg, %i.le
  %i.li = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 1028
  %i.lj = getelementptr inbounds nuw i8, ptr %i.li, i64 %i.lh
  %i.lk = load ptr, ptr %i.kr, align 8, !tbaa !57
  %i.ll = getelementptr inbounds nuw i8, ptr %i.lk, i64 448
  %i.lm = load ptr, ptr %i.ll, align 8, !tbaa !19 ; 4 uses
  %i.ln = getelementptr inbounds nuw i8, ptr %i.lm, i64 16 ; 2 uses
  %i.lo = load i64, ptr %i.ln, align 8, !tbaa !59
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.je, ptr nonnull readonly align 1 %i.lj, i64 %i.lo, i1 false)
  %i.lp = load i64, ptr %i.ln, align 8, !tbaa !59 ; 3 uses
  %i.lq = icmp ult i64 %i.lp, 32
  br i1 %i.lq, label %bb.bi, label %bb.bj

bb.bi:                                            ; preds = %st_mult.exit.i.i
  %i.lr = getelementptr inbounds nuw i8, ptr %i.je, i64 %i.lp
  %i.ls = sub nuw nsw i64 32, %i.lp
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.lr, i8 0, i64 %i.ls, i1 false)
  br label %bb.bj

bb.bj:                                            ; preds = %bb.bi, %st_mult.exit.i.i
  %.not.i.i.i.i = icmp eq ptr %i.lm, @hash_algos
  br i1 %.not.i.i.i.i, label %get_delta_base_oid.exit, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %.not.1.i.i.i.i = icmp eq ptr %i.lm, getelementptr inbounds nuw (i8, ptr @hash_algos, i64 112)
  br i1 %.not.1.i.i.i.i, label %get_delta_base_oid.exit, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %.not.2.i.i.i.i = icmp eq ptr %i.lm, getelementptr inbounds nuw (i8, ptr @hash_algos, i64 224)
  %spec.select.i.i.i.i = select i1 %.not.2.i.i.i.i, i32 2, i32 0
  br label %get_delta_base_oid.exit

st_mult.exit28.i.i:                               ; preds = %bb.bh
  %i.lt = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 1032
  %i.lu = and i64 %i.kw, 4294967295
end_hunk_0
begin_hunk_1_@unpack_entry:bb.a
  %i.en = add nuw i64 %i.eg, %i.em                ; 3 uses
  %.not.i.i153.5 = icmp sgt i8 %i.ej, -1
  br i1 %.not.i.i153.5, label %unpack_object_header.exit, label %.lr.ph.i.i.5, !llvm.loop !161

.lr.ph.i.i.5:                                     ; preds = %st_add.exit.i.i.5
  %i.eo = icmp ult i64 %i.cx, 8
  br i1 %i.eo, label %.thread209, label %st_left_shift.exit.i.i.6

st_left_shift.exit.i.i.6:                         ; preds = %.lr.ph.i.i.5
  %i.ep = getelementptr inbounds nuw i8, ptr %i.cw, i64 7
  %i.eq = load i8, ptr %i.ep, align 1, !tbaa !18  ; 2 uses
  %i.er = and i8 %i.eq, 127
  %i.es = zext nneg i8 %i.er to i64
  %i.et = shl nuw nsw i64 %i.es, 46               ; 2 uses
  %i.eu = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.en, i64 %i.et) ; 2 uses
  %i.ev = extractvalue { i64, i1 } %i.eu, 1
  br i1 %i.ev, label %bb.y, label %st_add.exit.i.i.6

st_add.exit.i.i.6:                                ; preds = %st_left_shift.exit.i.i.6
  %i.ew = extractvalue { i64, i1 } %i.eu, 0       ; 3 uses
  %.not.i.i153.6 = icmp sgt i8 %i.eq, -1
  br i1 %.not.i.i153.6, label %unpack_object_header.exit, label %.lr.ph.i.i.6, !llvm.loop !161

.lr.ph.i.i.6:                                     ; preds = %st_add.exit.i.i.6
  %i.ex = icmp eq i64 %i.cx, 8
  br i1 %i.ex, label %.thread209, label %st_left_shift.exit.i.i.7

st_left_shift.exit.i.i.7:                         ; preds = %.lr.ph.i.i.6
  %i.ey = getelementptr inbounds nuw i8, ptr %i.cw, i64 8
  %i.ez = load i8, ptr %i.ey, align 1, !tbaa !18  ; 2 uses
  %i.fa = and i8 %i.ez, 127
  %i.fb = zext nneg i8 %i.fa to i64
  %i.fc = shl nuw nsw i64 %i.fb, 53               ; 2 uses
  %i.fd = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.ew, i64 %i.fc) ; 2 uses
  %i.fe = extractvalue { i64, i1 } %i.fd, 1
  br i1 %i.fe, label %bb.y, label %st_add.exit.i.i.7

st_add.exit.i.i.7:                                ; preds = %st_left_shift.exit.i.i.7
  %i.ff = extractvalue { i64, i1 } %i.fd, 0
  %.not.i.i153.7 = icmp sgt i8 %i.ez, -1
  br i1 %.not.i.i153.7, label %unpack_object_header.exit, label %.thread209, !llvm.loop !161

bb.y:                                             ; preds = %st_left_shift.exit.i.i.7, %st_left_shift.exit.i.i.6
  %.02029.i.i423.lcssa = phi i64 [ %i.ew, %st_left_shift.exit.i.i.7 ], [ %i.en, %st_left_shift.exit.i.i.6 ]
  %.lcssa = phi i64 [ %i.fc, %st_left_shift.exit.i.i.7 ], [ %i.et, %st_left_shift.exit.i.i.6 ]
  call void (ptr, ...) @die(ptr noundef nonnull @.str.47, i64 noundef %.02029.i.i423.lcssa, i64 noundef %.lcssa) #19
  unreachable

st_add.exit.i.i:                                  ; preds = %.lr.ph.i.i.preheader
  %i.fg = getelementptr inbounds nuw i8, ptr %i.cw, i64 1
  %i.fh = load i8, ptr %i.fg, align 1, !tbaa !18  ; 2 uses
  %i.fi = and i8 %i.fh, 127
  %i.fj = zext nneg i8 %i.fi to i64
  %i.fk = shl nuw nsw i64 %i.fj, 4
  %i.fl = or disjoint i64 %i.fk, %i.dd            ; 2 uses
  %.not.i.i153 = icmp sgt i8 %i.fh, -1
  br i1 %.not.i.i153, label %unpack_object_header.exit, label %.lr.ph.i.i, !llvm.loop !161

.thread209:                                       ; preds = %.lr.ph.i.i.preheader, %st_add.exit.i.i.7, %.lr.ph.i.i, %.lr.ph.i.i.1, %.lr.ph.i.i.2, %.lr.ph.i.i.3, %.lr.ph.i.i.4, %.lr.ph.i.i.5, %.lr.ph.i.i.6
  %i.fm = trunc nuw nsw i64 %indvars.iv to i32
  %i.fn = call i32 (ptr, ...) @error(ptr noundef nonnull @.str.28) #20 ; 0 uses
  store i64 0, ptr %i.d, align 8, !tbaa !67
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  store i32 -1, ptr %i.e, align 4, !tbaa !62
  br label %bb.ai

unpack_object_header.exit:                        ; preds = %st_add.exit.i.i, %st_add.exit.i.i.1, %st_add.exit.i.i.2, %st_add.exit.i.i.3, %st_add.exit.i.i.4, %st_add.exit.i.i.5, %st_add.exit.i.i.6, %st_add.exit.i.i.7, %bb.x
  %.121.i.ph.i = phi i64 [ %i.dd, %bb.x ], [ %i.fl, %st_add.exit.i.i ], [ %i.dl, %st_add.exit.i.i.1 ], [ %i.ds, %st_add.exit.i.i.2 ], [ %i.dz, %st_add.exit.i.i.3 ], [ %i.eg, %st_add.exit.i.i.4 ], [ %i.en, %st_add.exit.i.i.5 ], [ %i.ew, %st_add.exit.i.i.6 ], [ %i.ff, %st_add.exit.i.i.7 ]
  %.1.i.ph.i = phi i64 [ 1, %bb.x ], [ 2, %st_add.exit.i.i ], [ 3, %st_add.exit.i.i.1 ], [ 4, %st_add.exit.i.i.2 ], [ 5, %st_add.exit.i.i.3 ], [ 6, %st_add.exit.i.i.4 ], [ 7, %st_add.exit.i.i.5 ], [ 8, %st_add.exit.i.i.6 ], [ 9, %st_add.exit.i.i.7 ]
  store i64 %.121.i.ph.i, ptr %i.d, align 8, !tbaa !67
  %i.fo = add i64 %.1.i.ph.i, %i.t                ; 2 uses
  store i64 %i.fo, ptr %i.c, align 8, !tbaa !67
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  store i32 %i.db, ptr %i.e, align 4, !tbaa !62
  %or.cond = icmp samesign ult i8 %i.da, 6
  br i1 %or.cond, label %.loopexit, label %bb.z

bb.z:                                             ; preds = %unpack_object_header.exit
  %i.fp = call i64 @get_delta_base(ptr noundef %1, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c, i32 noundef %i.db, i64 noundef %i.t) ; 3 uses
  %.not135 = icmp eq i64 %i.fp, 0
  br i1 %.not135, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.fq = load i64, ptr %i.c, align 8, !tbaa !67  ; 2 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %1, i64 208
  %i.fs = call i32 (ptr, ...) @error(ptr noundef nonnull @.str.33, i64 noundef %i.fq, ptr noundef nonnull %i.fr) #20 ; 0 uses
  br label %thread-pre-split

bb.ab:                                            ; preds = %bb.z
  %i.ft = sext i32 %.0107 to i64                  ; 2 uses
  %i.fu = icmp sge i64 %indvars.iv, %i.ft
  %i.fv = icmp eq ptr %.0112, %9
  %or.cond4 = and i1 %i.fv, %i.fu
  br i1 %or.cond4, label %st_mult.exit, label %bb.ac

st_mult.exit:                                     ; preds = %bb.ab
  %i.fw = trunc nuw nsw i64 %indvars.iv to i32
  %i.fx = mul i32 %i.fw, 3
  %i.fy = add i32 %i.fx, 48
  %i.fz = lshr i32 %i.fy, 1                       ; 2 uses
  %i.ga = zext nneg i32 %i.fz to i64
  %i.gb = mul nuw nsw i64 %i.ga, 24
  %i.gc = call ptr @xmalloc(i64 noundef %i.gb) #20 ; 2 uses
  %i.gd = mul nuw nsw i64 %indvars.iv, 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.gc, ptr noundef nonnull readonly align 16 dereferenceable(1) %9, i64 %i.gd, i1 false)
  br label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %.not136 = icmp slt i64 %indvars.iv, %i.ft
  br i1 %.not136, label %bb.ad, label %st_mult.exit158

st_mult.exit158:                                  ; preds = %bb.ac
  %i.ge = mul i32 %.0107, 3
  %i.gf = add i32 %i.ge, 48
  %i.gg = lshr i32 %i.gf, 1
  %i.gh = trunc i64 %indvars.iv to i32
  %i.gi = add i32 %i.gh, 1
  %. = call i32 @llvm.umax.i32(i32 %i.gg, i32 %i.gi) ; 2 uses
  %i.gj = zext nneg i32 %. to i64
  %i.gk = mul nuw nsw i64 %i.gj, 24
  %i.gl = call ptr @xrealloc(ptr noundef %.0112, i64 noundef %i.gk) #20
  br label %bb.ad

bb.ad:                                            ; preds = %st_mult.exit, %st_mult.exit158, %bb.ac
  %.1113 = phi ptr [ %i.gc, %st_mult.exit ], [ %i.gl, %st_mult.exit158 ], [ %.0112, %bb.ac ] ; 2 uses
  %.2 = phi i32 [ %i.fz, %st_mult.exit ], [ %., %st_mult.exit158 ], [ %.0107, %bb.ac ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %i.gm = getelementptr inbounds nuw [24 x i8], ptr %.1113, i64 %indvars.iv ; 3 uses
  store i64 %i.t, ptr %i.gm, align 8, !tbaa !203
  %i.gn = load i64, ptr %i.c, align 8, !tbaa !67
  %i.go = getelementptr inbounds nuw i8, ptr %i.gm, i64 8
  store i64 %i.gn, ptr %i.go, align 8, !tbaa !205
  %i.gp = load i64, ptr %i.d, align 8, !tbaa !67
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gm, i64 16
  store i64 %i.gp, ptr %i.gq, align 8, !tbaa !206
  store i64 %i.fp, ptr %i.c, align 8, !tbaa !67
  br label %bb.c

thread-pre-split:                                 ; preds = %bb.aa, %bb.d
  %i.gr = phi i64 [ %i.t, %bb.d ], [ %i.fq, %bb.aa ]
  %.3118.ph.ph = phi ptr [ %i.af, %bb.d ], [ null, %bb.aa ]
  %i.gs = phi i1 [ false, %bb.d ], [ true, %bb.aa ]
  %.pr = load i32, ptr %i.e, align 4, !tbaa !62
  br label %.loopexit

.loopexit:                                        ; preds = %unpack_object_header.exit, %thread-pre-split
  %i.gt = phi i64 [ %i.gr, %thread-pre-split ], [ %i.fo, %unpack_object_header.exit ]
  %i.gu = phi i32 [ %.pr, %thread-pre-split ], [ %i.db, %unpack_object_header.exit ] ; 2 uses
  %.3118.ph = phi ptr [ %.3118.ph.ph, %thread-pre-split ], [ null, %unpack_object_header.exit ] ; 2 uses
  %.1106.ph = phi i1 [ %i.gs, %thread-pre-split ], [ true, %unpack_object_header.exit ]
  %.0109278 = trunc i64 %indvars.iv to i32        ; 4 uses
  switch i32 %i.gu, label %bb.ai [
    i32 6, label %bb.ae
    i32 7, label %bb.ae
    i32 1, label %bb.ag
    i32 2, label %bb.ag
    i32 3, label %bb.ag
    i32 4, label %bb.ag
  ]

bb.ae:                                            ; preds = %.loopexit, %.loopexit
  %.not139 = icmp eq ptr %.3118.ph, null
  br i1 %.not139, label %bb.aj, label %bb.af

bb.af:                                            ; preds = %bb.ae
  call void (ptr, i32, ptr, ...) @BUG_fl(ptr noundef nonnull @.str.11, i32 noundef 1878, ptr noundef nonnull @.str.34) #19
  unreachable

bb.ag:                                            ; preds = %.loopexit, %.loopexit, %.loopexit, %.loopexit
  br i1 %.1106.ph, label %bb.ah, label %bb.aj

bb.ah:                                            ; preds = %bb.ag
  %i.gv = load i64, ptr %i.d, align 8, !tbaa !67
  %i.gw = call fastcc ptr @unpack_compressed_entry(ptr noundef %1, ptr noundef %i.b, i64 noundef %i.gt, i64 noundef %i.gv)
  br label %bb.aj

bb.ai:                                            ; preds = %.thread209, %.loopexit
  %.0109277 = phi i32 [ %i.fm, %.thread209 ], [ %.0109278, %.loopexit ]
  %i.gx = phi i32 [ -1, %.thread209 ], [ %i.gu, %.loopexit ]
  %i.gy = getelementptr inbounds nuw i8, ptr %1, i64 208
  %i.gz = call i32 (ptr, ...) @error(ptr noundef nonnull @.str.35, i32 noundef %i.gx, i64 noundef %i.t, ptr noundef nonnull %i.gy) #20 ; 0 uses
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ag, %bb.ah, %bb.ae, %bb.ai
  %.0109276 = phi i32 [ %.0109277, %bb.ai ], [ %.0109278, %bb.ae ], [ %.0109278, %bb.ag ], [ %.0109278, %bb.ah ] ; 2 uses
  %.4 = phi ptr [ null, %bb.ai ], [ null, %bb.ae ], [ %.3118.ph, %bb.ag ], [ %i.gw, %bb.ah ] ; 2 uses
  %.not140259 = icmp eq i32 %.0109276, 0
  br i1 %.not140259, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.aj
  %i.ha = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.hb = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.hc = getelementptr inbounds nuw i8, ptr %11, i64 32
  %i.hd = getelementptr inbounds nuw i8, ptr %1, i64 208 ; 2 uses
  %i.he = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.hf = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.hg = getelementptr inbounds nuw i8, ptr %12, i64 32
  %i.hh = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.hi = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.hj = getelementptr inbounds nuw i8, ptr %6, i64 8
  %13 = zext i32 %.0109276 to i64
  br label %bb.ak

bb.ak:                                            ; preds = %.lr.ph, %bb.bm
  %indvars.iv307 = phi i64 [ %13, %.lr.ph ], [ %indvars.iv.next308340, %bb.bm ] ; 2 uses
  %.5261 = phi ptr [ %.4, %.lr.ph ], [ %.7, %bb.bm ] ; 2 uses
  %.2122260 = phi i64 [ %i.t, %.lr.ph ], [ %i.lv, %bb.bm ] ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #20
  store ptr %.5261, ptr %i.g, align 8, !tbaa !56
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #20
  %i.hk = load i64, ptr %i.d, align 8, !tbaa !67
  store i64 %i.hk, ptr %i.h, align 8, !tbaa !67
  %.not144 = icmp eq ptr %.5261, null
  br i1 %.not144, label %bb.al, label %.thread

.thread:                                          ; preds = %bb.ak
  %indvars.iv.next308337 = add nsw i64 %indvars.iv307, -1 ; 2 uses
  %i.hl = getelementptr inbounds nuw [24 x i8], ptr %.0112, i64 %indvars.iv.next308337 ; 2 uses
  %i.hm = load i64, ptr %i.hl, align 8, !tbaa !203
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hl, i64 8
  %i.ho = load i64, ptr %i.hn, align 8, !tbaa !205 ; 2 uses
  store i64 %i.ho, ptr %i.c, align 8, !tbaa !67
  br label %bb.bc

bb.al:                                            ; preds = %bb.ak
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #20
  %i.hp = call i32 @offset_to_pack_pos(ptr noundef %1, i64 noundef %.2122260, ptr noundef nonnull %i.i) #20
  %.not145 = icmp eq i32 %i.hp, 0
  br i1 %.not145, label %bb.am, label %._crit_edge311

._crit_edge311:                                   ; preds = %bb.al
  %.pre310.pre = load ptr, ptr %i.g, align 8, !tbaa !56
  br label %bb.bb

bb.am:                                            ; preds = %bb.al
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %12, i8 0, i64 80, i1 false)
  %i.hq = load i32, ptr %i.i, align 4, !tbaa !62
  %i.hr = call i32 @pack_pos_to_index(ptr noundef %1, i32 noundef %i.hq) #20 ; 2 uses
  %i.hs = load ptr, ptr %i.ha, align 8, !tbaa !56 ; 2 uses
  %i.ht = load ptr, ptr %i.j, align 8, !tbaa !57
  %i.hu = getelementptr inbounds nuw i8, ptr %i.ht, i64 448
  %i.hv = load ptr, ptr %i.hu, align 8, !tbaa !19
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hv, i64 16
  %i.hx = load i64, ptr %i.hw, align 8, !tbaa !59 ; 2 uses
  %.not.i159 = icmp eq ptr %i.hs, null
  br i1 %.not.i159, label %bb.an, label %bb.ap

bb.an:                                            ; preds = %bb.am
  %i.hy = call i32 @open_pack_index(ptr noundef nonnull %1)
  %.not23.i175 = icmp eq i32 %i.hy, 0
  br i1 %.not23.i175, label %bb.ao, label %nth_packed_object_id.exit176

bb.ao:                                            ; preds = %bb.an
  %i.hz = load ptr, ptr %i.ha, align 8, !tbaa !56
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %bb.am
  %.0.i160 = phi ptr [ %i.hs, %bb.am ], [ %i.hz, %bb.ao ] ; 2 uses
  %i.ia = load i32, ptr %i.hb, align 8, !tbaa !62
  %.not24.i161 = icmp ult i32 %i.hr, %i.ia
  br i1 %.not24.i161, label %bb.aq, label %nth_packed_object_id.exit176

bb.aq:                                            ; preds = %bb.ap
  %i.ib = load i32, ptr %i.s, align 8, !tbaa !62
  %i.ic = icmp eq i32 %i.ib, 1
  %i.id = zext i32 %i.hr to i64                   ; 2 uses
  br i1 %i.ic, label %st_mult.exit.i170, label %st_mult.exit28.i163

st_mult.exit.i170:                                ; preds = %bb.aq
  %i.ie = add i64 %i.hx, 4
  %i.if = and i64 %i.ie, 4294967295
  %i.ig = mul nuw i64 %i.if, %i.id
  %i.ih = getelementptr inbounds nuw i8, ptr %.0.i160, i64 1028
  %i.ii = getelementptr inbounds nuw i8, ptr %i.ih, i64 %i.ig
  %i.ij = load ptr, ptr %i.j, align 8, !tbaa !57
  %i.ik = getelementptr inbounds nuw i8, ptr %i.ij, i64 448
  %i.il = load ptr, ptr %i.ik, align 8, !tbaa !19 ; 4 uses
  %i.im = getelementptr inbounds nuw i8, ptr %i.il, i64 16 ; 2 uses
  %i.in = load i64, ptr %i.im, align 8, !tbaa !59
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %11, ptr nonnull readonly align 1 %i.ii, i64 %i.in, i1 false)
  %i.io = load i64, ptr %i.im, align 8, !tbaa !59 ; 3 uses
  %i.ip = icmp ult i64 %i.io, 32
  br i1 %i.ip, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %st_mult.exit.i170
  %i.iq = getelementptr inbounds nuw i8, ptr %11, i64 %i.io
  %i.ir = sub nuw nsw i64 32, %i.io
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.iq, i8 0, i64 %i.ir, i1 false)
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %st_mult.exit.i170
  %.not.i.i.i171 = icmp eq ptr %i.il, @hash_algos
  br i1 %.not.i.i.i171, label %.sink.split.i168, label %bb.at

bb.at:                                            ; preds = %bb.as
  %.not.1.i.i.i172 = icmp eq ptr %i.il, getelementptr inbounds nuw (i8, ptr @hash_algos, i64 112)
  br i1 %.not.1.i.i.i172, label %.sink.split.i168, label %bb.au

bb.au:                                            ; preds = %bb.at
  %.not.2.i.i.i173 = icmp eq ptr %i.il, getelementptr inbounds nuw (i8, ptr @hash_algos, i64 224)
  %spec.select.i.i.i174 = select i1 %.not.2.i.i.i173, i32 2, i32 0
  br label %.sink.split.i168

st_mult.exit28.i163:                              ; preds = %bb.aq
  %i.is = getelementptr inbounds nuw i8, ptr %.0.i160, i64 1032
  %i.it = and i64 %i.hx, 4294967295
  %i.iu = mul nuw i64 %i.it, %i.id
  %i.iv = getelementptr inbounds nuw i8, ptr %i.is, i64 %i.iu
  %i.iw = load ptr, ptr %i.j, align 8, !tbaa !57
  %i.ix = getelementptr inbounds nuw i8, ptr %i.iw, i64 448
  %i.iy = load ptr, ptr %i.ix, align 8, !tbaa !19 ; 4 uses
  %i.iz = getelementptr inbounds nuw i8, ptr %i.iy, i64 16 ; 2 uses
  %i.ja = load i64, ptr %i.iz, align 8, !tbaa !59
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %11, ptr nonnull readonly align 1 %i.iv, i64 %i.ja, i1 false)
  %i.jb = load i64, ptr %i.iz, align 8, !tbaa !59 ; 3 uses
  %i.jc = icmp ult i64 %i.jb, 32
  br i1 %i.jc, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %st_mult.exit28.i163
  %i.jd = getelementptr inbounds nuw i8, ptr %11, i64 %i.jb
  %i.je = sub nuw nsw i64 32, %i.jb
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.jd, i8 0, i64 %i.je, i1 false)
  br label %bb.aw

bb.aw:                                            ; preds = %bb.av, %st_mult.exit28.i163
  %.not.i.i29.i164 = icmp eq ptr %i.iy, @hash_algos
  br i1 %.not.i.i29.i164, label %.sink.split.i168, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %.not.1.i.i30.i165 = icmp eq ptr %i.iy, getelementptr inbounds nuw (i8, ptr @hash_algos, i64 112)
  br i1 %.not.1.i.i30.i165, label %.sink.split.i168, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %.not.2.i.i31.i166 = icmp eq ptr %i.iy, getelementptr inbounds nuw (i8, ptr @hash_algos, i64 224)
  %spec.select.i.i32.i167 = select i1 %.not.2.i.i31.i166, i32 2, i32 0
  br label %.sink.split.i168

.sink.split.i168:                                 ; preds = %bb.ay, %bb.ax, %bb.aw, %bb.au, %bb.at, %bb.as
  %.2.i.i.sink.i169 = phi i32 [ 1, %bb.at ], [ %spec.select.i.i.i174, %bb.au ], [ 0, %bb.as ], [ %spec.select.i.i32.i167, %bb.ay ], [ 0, %bb.aw ], [ 1, %bb.ax ]
  store i32 %.2.i.i.sink.i169, ptr %i.hc, align 4, !tbaa !173
  br label %nth_packed_object_id.exit176

nth_packed_object_id.exit176:                     ; preds = %bb.an, %bb.ap, %.sink.split.i168
  %i.jf = call ptr @oid_to_hex(ptr noundef nonnull %11) #20
  %i.jg = call i32 (ptr, ...) @error(ptr noundef nonnull @.str.36, ptr noundef %i.jf, i64 noundef %.2122260, ptr noundef nonnull %i.hd) #20 ; 0 uses
  %i.jh = call i32 @oidset_insert(ptr noundef nonnull %i.he, ptr noundef nonnull %11) #20 ; 0 uses
  store ptr %i.e, ptr %12, align 8, !tbaa !195
  store ptr %i.h, ptr %i.hf, align 8, !tbaa !188
  store ptr %i.g, ptr %i.hg, align 8, !tbaa !186
  %i.ji = load ptr, ptr %i.hh, align 8, !tbaa !92
  %i.jj = call i32 @odb_read_object_info_extended(ptr noundef %i.ji, ptr noundef nonnull %11, ptr noundef nonnull %12, i32 noundef 0) #20
  %i.jk = icmp slt i32 %i.jj, 0
  br i1 %i.jk, label %bb.az, label %nth_packed_object_id.exit176._crit_edge

nth_packed_object_id.exit176._crit_edge:          ; preds = %nth_packed_object_id.exit176
  %.pre = load ptr, ptr %i.g, align 8, !tbaa !56
  br label %bb.ba

bb.az:                                            ; preds = %nth_packed_object_id.exit176
  store ptr null, ptr %i.g, align 8, !tbaa !56
  br label %bb.ba

bb.ba:                                            ; preds = %nth_packed_object_id.exit176._crit_edge, %bb.az
  %i.jl = phi ptr [ %.pre, %nth_packed_object_id.exit176._crit_edge ], [ null, %bb.az ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #20
  br label %bb.bb

bb.bb:                                            ; preds = %bb.ba, %._crit_edge311
  %.pre310 = phi ptr [ %.pre310.pre, %._crit_edge311 ], [ %i.jl, %bb.ba ]
  %.0 = phi ptr [ null, %._crit_edge311 ], [ %i.jl, %bb.ba ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #20
  %i.jm = icmp eq ptr %.pre310, null
  %indvars.iv.next308 = add nsw i64 %indvars.iv307, -1 ; 3 uses
  %i.jn = getelementptr inbounds nuw [24 x i8], ptr %.0112, i64 %indvars.iv.next308 ; 2 uses
  %i.jo = load i64, ptr %i.jn, align 8, !tbaa !203 ; 2 uses
  %i.jp = getelementptr inbounds nuw i8, ptr %i.jn, i64 8
  %i.jq = load i64, ptr %i.jp, align 8, !tbaa !205 ; 2 uses
  store i64 %i.jq, ptr %i.c, align 8, !tbaa !67
  br i1 %i.jm, label %bb.bm, label %bb.bc, !llvm.loop !207

bb.bc:                                            ; preds = %.thread, %bb.bb
  %i.jr = phi i64 [ %i.ho, %.thread ], [ %i.jq, %bb.bb ] ; 2 uses
  %i.js = phi i64 [ %i.hm, %.thread ], [ %i.jo, %bb.bb ]
  %indvars.iv.next308339 = phi i64 [ %indvars.iv.next308337, %.thread ], [ %indvars.iv.next308, %bb.bb ] ; 2 uses
  %.1338 = phi ptr [ null, %.thread ], [ %.0, %bb.bb ] ; 2 uses
  %i.jt = getelementptr inbounds nuw [24 x i8], ptr %.0112, i64 %indvars.iv.next308339
  %.in = getelementptr inbounds nuw i8, ptr %i.jt, i64 16
  %i.ju = load i64, ptr %.in, align 8, !tbaa !206 ; 2 uses
  %i.jv = call fastcc ptr @unpack_compressed_entry(ptr noundef %1, ptr noundef %i.b, i64 noundef %i.jr, i64 noundef %i.ju) ; 3 uses
  %.not147 = icmp eq ptr %i.jv, null
  br i1 %.not147, label %bb.bd, label %bb.be

bb.bd:                                            ; preds = %bb.bc
  %i.jw = call i32 (ptr, ...) @error(ptr noundef nonnull @.str.37, i64 noundef %i.jr, ptr noundef nonnull %i.hd) #20 ; 0 uses
  br label %bb.bg

bb.be:                                            ; preds = %bb.bc
  %i.jx = load ptr, ptr %i.g, align 8, !tbaa !56
  %i.jy = load i64, ptr %i.h, align 8, !tbaa !67
  %i.jz = call ptr @patch_delta(ptr noundef %i.jx, i64 noundef %i.jy, ptr noundef nonnull %i.jv, i64 noundef %i.ju, ptr noundef nonnull %i.d) #20 ; 2 uses
  %.not148 = icmp eq ptr %i.jz, null
  br i1 %.not148, label %bb.bf, label %bb.bg

bb.bf:                                            ; preds = %bb.be
  %i.ka = call i32 (ptr, ...) @error(ptr noundef nonnull @.str.38) #20 ; 0 uses
  br label %bb.bg

bb.bg:                                            ; preds = %bb.be, %bb.bf, %bb.bd
  %.6 = phi ptr [ %i.jz, %bb.be ], [ null, %bb.bf ], [ null, %bb.bd ]
  %.not149 = icmp eq ptr %.1338, null
  br i1 %.not149, label %bb.bh, label %add_delta_base_cache.exit

bb.bh:                                            ; preds = %bb.bg
  %i.kb = load ptr, ptr %i.g, align 8, !tbaa !56  ; 2 uses
  %i.kc = load i64, ptr %i.h, align 8, !tbaa !67  ; 2 uses
  %i.kd = load ptr, ptr %i.j, align 8, !tbaa !57
  %i.ke = getelementptr inbounds nuw i8, ptr %i.kd, i64 368
  %i.kf = load i64, ptr %i.ke, align 8, !tbaa !208 ; 2 uses
  %i.kg = load i32, ptr %i.e, align 4, !tbaa !62
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #20
  %i.kh = load ptr, ptr getelementptr inbounds nuw (i8, ptr @delta_base_cache, i64 8), align 8, !tbaa !189
  %.not.i.i.i177 = icmp eq ptr %i.kh, null
  br i1 %.not.i.i.i177, label %in_delta_base_cache.exit.thread.i, label %in_delta_base_cache.exit.i

in_delta_base_cache.exit.thread.i:                ; preds = %bb.bh
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  br label %bb.bj

in_delta_base_cache.exit.i:                       ; preds = %bb.bh
  %i.ki = trunc i64 %.2122260 to i32
  %i.kj = add i32 %i.ki, %i.p                     ; 3 uses
  %i.kk = lshr i32 %i.kj, 8
  %i.kl = lshr i32 %i.kj, 16
  %i.km = add i32 %i.kl, %i.kj
  %i.kn = add i32 %i.km, %i.kk
  store i32 %i.kn, ptr %i.hi, align 8, !tbaa !190
  store ptr null, ptr %5, align 8, !tbaa !191
  store ptr %1, ptr %6, align 8, !tbaa !192
  store i64 %.2122260, ptr %i.hj, align 8, !tbaa !193
  %i.ko = call ptr @hashmap_get(ptr noundef nonnull @delta_base_cache, ptr noundef nonnull %5, ptr noundef nonnull %6) #20
  %.not34.i = icmp eq ptr %i.ko, null
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  br i1 %.not34.i, label %bb.bj, label %bb.bi

bb.bi:                                            ; preds = %in_delta_base_cache.exit.i
  call void @free(ptr noundef %i.kb) #20
  br label %add_delta_base_cache.exit

bb.bj:                                            ; preds = %in_delta_base_cache.exit.i, %in_delta_base_cache.exit.thread.i
  %i.kp = load i64, ptr @delta_base_cached, align 8, !tbaa !67
  %i.kq = add i64 %i.kp, %i.kc                    ; 2 uses
  store i64 %i.kq, ptr @delta_base_cached, align 8, !tbaa !67
  %i.kr = load ptr, ptr @delta_base_cache_lru, align 8, !tbaa !175 ; 2 uses
  %.not2835.i = icmp ne ptr %i.kr, @delta_base_cache_lru
  %.not2936.i = icmp ugt i64 %i.kq, %i.kf
  %or.cond37.i = select i1 %.not2835.i, i1 %.not2936.i, i1 false
  br i1 %or.cond37.i, label %.lr.ph.i, label %.thread.i

.lr.ph.i:                                         ; preds = %bb.bj, %.lr.ph.i
  %.02738.i = phi ptr [ %.026.i, %.lr.ph.i ], [ %i.kr, %bb.bj ] ; 7 uses
  %.026.i = load ptr, ptr %.02738.i, align 8, !tbaa !175 ; 2 uses
  %i.ks = getelementptr inbounds i8, ptr %.02738.i, i64 -32 ; 2 uses
  %i.kt = getelementptr inbounds nuw i8, ptr %.02738.i, i64 16
  %i.ku = load ptr, ptr %i.kt, align 8, !tbaa !178
  call void @free(ptr noundef %i.ku) #20
  %i.kv = getelementptr inbounds i8, ptr %.02738.i, i64 -16
  %i.kw = call ptr @hashmap_remove(ptr noundef nonnull @delta_base_cache, ptr noundef nonnull %i.ks, ptr noundef nonnull %i.kv) #20 ; 0 uses
  %.val.i.i.i = load ptr, ptr %.02738.i, align 8, !tbaa !175 ; 2 uses
  %i.kx = getelementptr i8, ptr %.02738.i, i64 8
  %.val5.i.i.i = load ptr, ptr %i.kx, align 8, !tbaa !183 ; 2 uses
  %i.ky = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 8
  store ptr %.val5.i.i.i, ptr %i.ky, align 8, !tbaa !183
  store ptr %.val.i.i.i, ptr %.val5.i.i.i, align 8, !tbaa !175
  %i.kz = getelementptr inbounds nuw i8, ptr %.02738.i, i64 24
  %i.la = load i64, ptr %i.kz, align 8, !tbaa !184
  %i.lb = load i64, ptr @delta_base_cached, align 8, !tbaa !67
  %i.lc = sub i64 %i.lb, %i.la
  store i64 %i.lc, ptr @delta_base_cached, align 8, !tbaa !67
  call void @free(ptr noundef nonnull %i.ks) #20
  %.not28.i = icmp ne ptr %.026.i, @delta_base_cache_lru
  %i.ld = load i64, ptr @delta_base_cached, align 8
  %.not29.i = icmp ugt i64 %i.ld, %i.kf
  %or.cond.i = select i1 %.not28.i, i1 %.not29.i, i1 false
  br i1 %or.cond.i, label %.lr.ph.i, label %.thread.i, !llvm.loop !209

.thread.i:                                        ; preds = %.lr.ph.i, %bb.bj
  %i.le = call ptr @xmalloc(i64 noundef 72) #20   ; 10 uses
  %i.lf = getelementptr inbounds nuw i8, ptr %i.le, i64 16
  store ptr %1, ptr %i.lf, align 8, !tbaa !210
  %i.lg = getelementptr inbounds nuw i8, ptr %i.le, i64 24
  store i64 %.2122260, ptr %i.lg, align 8, !tbaa !211
  %i.lh = getelementptr inbounds nuw i8, ptr %i.le, i64 64
  store i32 %i.kg, ptr %i.lh, align 8, !tbaa !194
  %i.li = getelementptr inbounds nuw i8, ptr %i.le, i64 48
  store ptr %i.kb, ptr %i.li, align 8, !tbaa !178
  %i.lj = getelementptr inbounds nuw i8, ptr %i.le, i64 56
  store i64 %i.kc, ptr %i.lj, align 8, !tbaa !184
  %i.lk = getelementptr inbounds nuw i8, ptr %i.le, i64 32 ; 3 uses
  %i.ll = load ptr, ptr getelementptr inbounds nuw (i8, ptr @delta_base_cache_lru, i64 8), align 8, !tbaa !183 ; 2 uses
  store ptr %i.lk, ptr %i.ll, align 8, !tbaa !175
  store ptr @delta_base_cache_lru, ptr %i.lk, align 8, !tbaa !175
  %i.lm = getelementptr inbounds nuw i8, ptr %i.le, i64 40
  store ptr %i.ll, ptr %i.lm, align 8, !tbaa !183
  store ptr %i.lk, ptr getelementptr inbounds nuw (i8, ptr @delta_base_cache_lru, i64 8), align 8, !tbaa !183
  %i.ln = load ptr, ptr getelementptr inbounds nuw (i8, ptr @delta_base_cache, i64 8), align 8, !tbaa !189
  %.not30.i = icmp eq ptr %i.ln, null
  br i1 %.not30.i, label %bb.bk, label %bb.bl

bb.bk:                                            ; preds = %.thread.i
  call void @hashmap_init(ptr noundef nonnull @delta_base_cache, ptr noundef nonnull @delta_base_cache_hash_cmp, ptr noundef null, i64 noundef 0) #20
  br label %bb.bl

bb.bl:                                            ; preds = %bb.bk, %.thread.i
  %i.lo = trunc i64 %.2122260 to i32
  %i.lp = add i32 %i.lo, %i.p                     ; 3 uses
  %i.lq = lshr i32 %i.lp, 8
  %i.lr = lshr i32 %i.lp, 16
  %i.ls = add i32 %i.lr, %i.lp
  %i.lt = add i32 %i.ls, %i.lq
  %i.lu = getelementptr inbounds nuw i8, ptr %i.le, i64 8
  store i32 %i.lt, ptr %i.lu, align 8, !tbaa !190
  store ptr null, ptr %i.le, align 8, !tbaa !191
  call void @hashmap_add(ptr noundef nonnull @delta_base_cache, ptr noundef nonnull %i.le) #20
  br label %add_delta_base_cache.exit

add_delta_base_cache.exit:                        ; preds = %bb.bl, %bb.bi, %bb.bg
  call void @free(ptr noundef %i.jv) #20
  call void @free(ptr noundef %.1338) #20
  br label %bb.bm

bb.bm:                                            ; preds = %bb.bb, %add_delta_base_cache.exit
  %i.lv = phi i64 [ %i.js, %add_delta_base_cache.exit ], [ %i.jo, %bb.bb ]
  %indvars.iv.next308340 = phi i64 [ %indvars.iv.next308339, %add_delta_base_cache.exit ], [ %indvars.iv.next308, %bb.bb ] ; 2 uses
  %.7 = phi ptr [ %.6, %add_delta_base_cache.exit ], [ null, %bb.bb ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #20
  %.not140 = icmp eq i64 %indvars.iv.next308340, 0
  br i1 %.not140, label %._crit_edge, label %bb.ak

._crit_edge:                                      ; preds = %bb.bm, %bb.aj
  %.5.lcssa = phi ptr [ %.4, %bb.aj ], [ %.7, %bb.bm ] ; 2 uses
  %.not141 = icmp eq ptr %3, null
  br i1 %.not141, label %bb.bo, label %bb.bn

bb.bn:                                            ; preds = %._crit_edge
  %i.lw = load i32, ptr %i.e, align 4, !tbaa !62
  store i32 %i.lw, ptr %3, align 4, !tbaa !62
  br label %bb.bo

bb.bo:                                            ; preds = %bb.bn, %._crit_edge
  %.not142 = icmp eq ptr %4, null
  br i1 %.not142, label %bb.bq, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.lx = load i64, ptr %i.d, align 8, !tbaa !67
  store i64 %i.lx, ptr %4, align 8, !tbaa !67
  br label %bb.bq

bb.bq:                                            ; preds = %.thread201, %bb.bo, %bb.bp
  %.8 = phi ptr [ %.5.lcssa, %bb.bp ], [ %.5.lcssa, %bb.bo ], [ null, %.thread201 ]
  %i.ly = load ptr, ptr %i.b, align 8, !tbaa !75  ; 2 uses
  %.not.i178 = icmp eq ptr %i.ly, null
  br i1 %.not.i178, label %unuse_pack.exit, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.lz = getelementptr inbounds nuw i8, ptr %i.ly, i64 36 ; 2 uses
  %i.ma = load i32, ptr %i.lz, align 4, !tbaa !77
  %i.mb = add i32 %i.ma, -1
  store i32 %i.mb, ptr %i.lz, align 4, !tbaa !77
  store ptr null, ptr %i.b, align 8, !tbaa !75
  br label %unuse_pack.exit

unuse_pack.exit:                                  ; preds = %bb.bq, %bb.br
  %.not143 = icmp eq ptr %.0112, %9
  br i1 %.not143, label %bb.bt, label %bb.bs

bb.bs:                                            ; preds = %unuse_pack.exit
  call void @free(ptr noundef %.0112) #20
  br label %bb.bt

bb.bt:                                            ; preds = %unuse_pack.exit, %bb.bs
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #20
end_hunk_1
