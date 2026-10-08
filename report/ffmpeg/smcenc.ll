Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/smcenc?download=true
inline.NumInlined: 2
inline.NumDeleted: 2
loop-unroll.NumCompletelyUnrolled: 16
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 24
begin_hunk_0_@smc_encode_frame:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  %i.ev = icmp sgt i32 %i.eq, 0
  br i1 %i.ev, label %.lr.ph1395.i, label %._crit_edge.i

.lr.ph1395.i:                                     ; preds = %.lr.ph1412.i
  %i.ew = sext i32 %i.et to i64                   ; 7 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.a, ptr align 1 %.910951406.i, i64 %i.ew, i1 false)
  %exitcond1687.not.i = icmp eq i32 %i.eq, 1
  br i1 %exitcond1687.not.i, label %._crit_edge.i, label %bb.t

._crit_edge.i:                                    ; preds = %.lr.ph1395.i, %bb.t, %bb.u, %bb.v, %.lr.ph1412.i
  %i.ex = sext i32 %i.eu to i64
  call void @qsort(ptr noundef nonnull %i.a, i64 noundef %i.ex, i64 noundef 1, ptr noundef nonnull @smc_cmp_values) #11
  %i.ey = load i8, ptr %i.a, align 16, !tbaa !32  ; 3 uses
  store i8 %i.ey, ptr %i.bl, align 4, !tbaa !32
  %i.ez = icmp sgt i32 %i.eu, 1
  br i1 %i.ez, label %.lr.ph.preheader.i.i, label %count_distinct_items.exit.i

.lr.ph.preheader.i.i:                             ; preds = %._crit_edge.i
  %wide.trip.count.i.i = zext nneg i32 %i.eu to i64
  %i.fa = add nsw i64 %wide.trip.count.i.i, -1    ; 3 uses
  %xtraiter = and i64 %i.fa, 1
  %i.fb = icmp eq i32 %i.eu, 2
  br i1 %i.fb, label %.lr.ph.i.i.epil.preheader, label %.lr.ph.preheader.i.i.new

.lr.ph.preheader.i.i.new:                         ; preds = %.lr.ph.preheader.i.i
  %unroll_iter = and i64 %i.fa, -2
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.r, %.lr.ph.preheader.i.i.new
  %indvars.iv.i.i = phi i64 [ 1, %.lr.ph.preheader.i.i.new ], [ %indvars.iv.next.i.i.1, %bb.r ] ; 3 uses
  %.01415.i.i = phi i32 [ 1, %.lr.ph.preheader.i.i.new ], [ %.1.i.i.1, %bb.r ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.i.i.new ], [ %niter.next.1, %bb.r ]
  %i.fc = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv.i.i ; 2 uses
  %i.fd = load i8, ptr %i.fc, align 1, !tbaa !32  ; 2 uses
  %i.fe = getelementptr i8, ptr %i.fc, i64 -1
  %i.ff = load i8, ptr %i.fe, align 1, !tbaa !32
  %.not.i1259.i = icmp eq i8 %i.fd, %i.ff
  br i1 %.not.i1259.i, label %.lr.ph.i.i.1, label %bb.p

bb.p:                                             ; preds = %.lr.ph.i.i
  %i.fg = sext i32 %.01415.i.i to i64
  %i.fh = getelementptr inbounds i8, ptr %i.bl, i64 %i.fg
  store i8 %i.fd, ptr %i.fh, align 1, !tbaa !32
  %i.fi = add nsw i32 %.01415.i.i, 1
  br label %.lr.ph.i.i.1

.lr.ph.i.i.1:                                     ; preds = %bb.p, %.lr.ph.i.i
  %.1.i.i = phi i32 [ %i.fi, %bb.p ], [ %.01415.i.i, %.lr.ph.i.i ] ; 3 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv.i.i ; 2 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fj, i64 1
  %i.fl = load i8, ptr %i.fk, align 1, !tbaa !32  ; 2 uses
  %i.fm = load i8, ptr %i.fj, align 1, !tbaa !32
  %.not.i1259.i.1 = icmp eq i8 %i.fl, %i.fm
  br i1 %.not.i1259.i.1, label %bb.r, label %bb.q

bb.q:                                             ; preds = %.lr.ph.i.i.1
  %i.fn = sext i32 %.1.i.i to i64
  %i.fo = getelementptr inbounds i8, ptr %i.bl, i64 %i.fn
  store i8 %i.fl, ptr %i.fo, align 1, !tbaa !32
  %i.fp = add nsw i32 %.1.i.i, 1
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %.lr.ph.i.i.1
  %.1.i.i.1 = phi i32 [ %i.fp, %bb.q ], [ %.1.i.i, %.lr.ph.i.i.1 ] ; 3 uses
  %indvars.iv.next.i.i.1 = add nuw nsw i64 %indvars.iv.i.i, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %count_distinct_items.exit.i.loopexit.unr-lcssa, label %.lr.ph.i.i, !llvm.loop !36

count_distinct_items.exit.i.loopexit.unr-lcssa:   ; preds = %bb.r
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %count_distinct_items.exit.i, label %.lr.ph.i.i.epil.preheader

.lr.ph.i.i.epil.preheader:                        ; preds = %count_distinct_items.exit.i.loopexit.unr-lcssa, %.lr.ph.preheader.i.i
  %indvars.iv.i.i.epil.init = phi i64 [ 1, %.lr.ph.preheader.i.i ], [ %indvars.iv.next.i.i.1, %count_distinct_items.exit.i.loopexit.unr-lcssa ]
  %.01415.i.i.epil.init = phi i32 [ 1, %.lr.ph.preheader.i.i ], [ %.1.i.i.1, %count_distinct_items.exit.i.loopexit.unr-lcssa ] ; 3 uses
  %lcmp.mod528 = trunc i64 %i.fa to i1
  call void @llvm.assume(i1 %lcmp.mod528)
  %i.fq = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv.i.i.epil.init ; 2 uses
  %i.fr = load i8, ptr %i.fq, align 1, !tbaa !32  ; 2 uses
  %i.fs = getelementptr i8, ptr %i.fq, i64 -1
  %i.ft = load i8, ptr %i.fs, align 1, !tbaa !32
  %.not.i1259.i.epil = icmp eq i8 %i.fr, %i.ft
  br i1 %.not.i1259.i.epil, label %count_distinct_items.exit.i, label %bb.s

bb.s:                                             ; preds = %.lr.ph.i.i.epil.preheader
  %i.fu = sext i32 %.01415.i.i.epil.init to i64
  %i.fv = getelementptr inbounds i8, ptr %i.bl, i64 %i.fu
  store i8 %i.fr, ptr %i.fv, align 1, !tbaa !32
  %i.fw = add nsw i32 %.01415.i.i.epil.init, 1
  br label %count_distinct_items.exit.i

count_distinct_items.exit.i:                      ; preds = %count_distinct_items.exit.i.loopexit.unr-lcssa, %bb.s, %.lr.ph.i.i.epil.preheader, %._crit_edge.i
  %.014.lcssa.i.i = phi i32 [ 1, %._crit_edge.i ], [ %.1.i.i.1, %count_distinct_items.exit.i.loopexit.unr-lcssa ], [ %i.fw, %bb.s ], [ %.01415.i.i.epil.init, %.lr.ph.i.i.epil.preheader ] ; 8 uses
  store i32 %.014.lcssa.i.i, ptr %i.bm, align 8, !tbaa !70
  %i.fx = icmp eq i32 %.09841411.i, 0
  br i1 %i.fx, label %.thread.i, label %bb.w

bb.t:                                             ; preds = %.lr.ph1395.i
  %i.fy = getelementptr inbounds i8, ptr %i.a, i64 %i.ew
  %i.fz = getelementptr inbounds i8, ptr %.910951406.i, i64 %i.ao
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.fy, ptr align 1 %i.fz, i64 %i.ew, i1 false)
  %exitcond1687.not.i.1 = icmp eq i32 %i.eq, 2
  br i1 %exitcond1687.not.i.1, label %._crit_edge.i, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ga = shl nsw i64 %i.ew, 1
  %i.gb = getelementptr inbounds i8, ptr %i.a, i64 %i.ga
  %i.gc = getelementptr inbounds i8, ptr %.910951406.i, i64 %i.ca
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 2 %i.gb, ptr align 1 %i.gc, i64 %i.ew, i1 false)
  %exitcond1687.not.i.2 = icmp eq i32 %i.eq, 3
  br i1 %exitcond1687.not.i.2, label %._crit_edge.i, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.gd = mul nsw i64 %i.ew, 3
  %i.ge = getelementptr inbounds i8, ptr %i.a, i64 %i.gd
  %i.gf = getelementptr inbounds i8, ptr %.910951406.i, i64 %i.cb
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ge, ptr align 1 %i.gf, i64 %i.ew, i1 false)
  br label %._crit_edge.i

.thread.i:                                        ; preds = %count_distinct_items.exit.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.au, ptr noundef nonnull align 4 dereferenceable(16) %i.bl, i64 16, i1 false)
  store i32 %.014.lcssa.i.i, ptr %i.bn, align 4, !tbaa !71
  store i8 %i.ey, ptr %i.bo, align 8, !tbaa !72
  br label %.preheader1313.i

bb.w:                                             ; preds = %count_distinct_items.exit.i
  %i.gg = load i32, ptr %i.bn, align 4, !tbaa !71
  %.not1166.i = icmp eq i32 %.014.lcssa.i.i, %i.gg
  br i1 %.not1166.i, label %bb.x, label %.critedge15.thread.i

bb.x:                                             ; preds = %bb.w
  %i.gh = sext i32 %.014.lcssa.i.i to i64
  %bcmp1167.i = call i32 @bcmp(ptr nonnull %i.au, ptr nonnull %i.bl, i64 %i.gh)
  %.not1168.i = icmp eq i32 %bcmp1167.i, 0
  br i1 %.not1168.i, label %bb.y, label %.critedge15.thread.i

bb.y:                                             ; preds = %bb.x
  store i8 %i.ey, ptr %i.bo, align 8, !tbaa !72
  %i.gi = add nuw nsw i32 %.09841411.i, 1         ; 2 uses
  %i.gj = icmp sgt i32 %.014.lcssa.i.i, 1
  %i.gk = icmp samesign ugt i32 %.09841411.i, 14
  %or.cond11.i = and i1 %i.gk, %i.gj
  br i1 %or.cond11.i, label %.critedge15.thread.i, label %.preheader1313.i

.preheader1313.i:                                 ; preds = %bb.y, %.thread.i
  %i.gl = phi i32 [ 1, %.thread.i ], [ %i.gi, %bb.y ] ; 3 uses
  %i.gm = icmp ne ptr %.910951406.i, null
  %i.gn = icmp ne ptr %.910591407.i, null
  %or.cond591396.i = select i1 %i.gm, i1 %i.gn, i1 false
  br i1 %or.cond591396.i, label %.lr.ph1401.i, label %.critedge15.i

.lr.ph1401.i:                                     ; preds = %.preheader1313.i
  %i.go = getelementptr inbounds nuw i8, ptr %.910951406.i, i64 4 ; 2 uses
  %i.gp = add nsw i32 %.91409.i, 4
  %i.gq = ptrtoint ptr %i.go to i64
  %i.gr = ptrtoint ptr %.910591407.i to i64
  %i.gs = sub i64 %i.gq, %i.gr
  %.not1169.i = icmp slt i64 %i.gs, %i.bg
  br i1 %.not1169.i, label %.critedge15.i, label %bb.z

bb.z:                                             ; preds = %.lr.ph1401.i
  %i.gt = getelementptr inbounds i8, ptr %.910591407.i, i64 %i.bh ; 2 uses
  %i.gu = add nsw i32 %.910101408.i, 4
  br label %.critedge15.i

.critedge15.thread.i:                             ; preds = %bb.y, %bb.x, %bb.w
  %.1988.ph.i = phi i32 [ %.09871410.i, %bb.x ], [ %.014.lcssa.i.i, %bb.y ], [ %.09871410.i, %bb.w ]
  %.1985.ph.i = phi i32 [ %.09841411.i, %bb.x ], [ %i.gi, %bb.y ], [ %.09841411.i, %bb.w ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  br label %.loopexit.i

.critedge15.i:                                    ; preds = %bb.z, %.lr.ph1401.i, %.preheader1313.i
  %.101096.lcssa.i = phi ptr [ %.910951406.i, %.preheader1313.i ], [ %i.gt, %bb.z ], [ %i.go, %.lr.ph1401.i ]
  %.101060.lcssa.i = phi ptr [ %.910591407.i, %.preheader1313.i ], [ %i.gt, %bb.z ], [ %.910591407.i, %.lr.ph1401.i ]
  %.101011.lcssa.i = phi i32 [ %.910101408.i, %.preheader1313.i ], [ %i.gu, %bb.z ], [ %.910101408.i, %.lr.ph1401.i ]
  %.10.lcssa.i = phi i32 [ %.91409.i, %.preheader1313.i ], [ 0, %bb.z ], [ %i.gp, %.lr.ph1401.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  %i.gv = add nsw i32 %i.gl, %.010491620.fr.i
  %i.gw = icmp slt i32 %i.gv, %i.bd
  %i.gx = icmp samesign ult i32 %.09841411.i, 255
  %i.gy = and i1 %i.gx, %i.gw
  br i1 %i.gy, label %.lr.ph1412.i, label %.loopexit.i

.loopexit.i:                                      ; preds = %.critedge15.i, %.critedge15.thread.i
  %.2989.i = phi i32 [ %.1988.ph.i, %.critedge15.thread.i ], [ %.014.lcssa.i.i, %.critedge15.i ]
  %.2986.i = phi i32 [ %.1985.ph.i, %.critedge15.thread.i ], [ %i.gl, %.critedge15.i ] ; 2 uses
  %.2989.fr.i = freeze i32 %.2989.i               ; 2 uses
  %i.gz = icmp slt i32 %.2989.fr.i, 9
  %spec.select1849.i = select i1 %i.gz, i32 %.2986.i, i32 0
  br label %.loopexit.thread.i

.loopexit.thread.i:                               ; preds = %.loopexit.i, %.critedge5.i
  %.29861821.i = phi i32 [ %.2986.i, %.loopexit.i ], [ 0, %.critedge5.i ]
  %.29891819.i = phi i32 [ %.2989.fr.i, %.loopexit.i ], [ 0, %.critedge5.i ] ; 2 uses
  %i.ha = phi i32 [ %spec.select1849.i, %.loopexit.i ], [ 0, %.critedge5.i ] ; 2 uses
  %.not1170.i = icmp slt i32 %.2995.i, %i.ha
  %.not1171.i = icmp slt i32 %.2995.i, %.2992.i   ; 4 uses
  %or.cond1195.i = select i1 %.not1170.i, i1 true, i1 %.not1171.i ; 2 uses
  %.0976.i = select i1 %or.cond1195.i, i32 %.29891819.i, i32 17
  %.0972.i = select i1 %or.cond1195.i, i32 %i.ha, i32 %.2995.i ; 2 uses
  %i.hb = icmp slt i32 %.2995.i, 17
  %or.cond1196.i = select i1 %i.hb, i1 true, i1 %.not1171.i
  %.not1173.i = icmp slt i32 %.2995.i, %.0972.i
  %or.cond1197.i = select i1 %or.cond1196.i, i1 true, i1 %.not1173.i ; 2 uses
  %.1977.i = select i1 %or.cond1197.i, i32 %.0976.i, i32 18
  %.1973.i = select i1 %or.cond1197.i, i32 %.0972.i, i32 %.2995.i ; 2 uses
  %.not1174.i = icmp sge i32 %.2992.i, %.1973.i
  %or.cond1198.i = select i1 %.not1174.i, i1 %.not1171.i, i1 false ; 2 uses
  %.2978.i = select i1 %or.cond1198.i, i32 19, i32 %.1977.i
  %.2974.i = select i1 %or.cond1198.i, i32 %.2992.i, i32 %.1973.i ; 2 uses
  %i.hc = icmp sgt i32 %.2992.i, 16
  %or.cond1199.i = select i1 %i.hc, i1 %.not1171.i, i1 false
  %.not1175.i = icmp sge i32 %.2992.i, %.2974.i
  %or.cond1200.not.i = select i1 %or.cond1199.i, i1 %.not1175.i, i1 false ; 2 uses
  %.3979.i = select i1 %or.cond1200.not.i, i32 20, i32 %.2978.i
  %.3975.i = select i1 %or.cond1200.not.i, i32 %.2992.i, i32 %.2974.i ; 2 uses
  %i.hd = icmp eq i32 %.3975.i, 0                 ; 2 uses
  %.4980.i = select i1 %i.hd, i32 %.29891819.i, i32 %.3979.i
  %.4.i = select i1 %i.hd, i32 %.29861821.i, i32 %.3975.i ; 48 uses
  switch i32 %.4980.i, label %bb.kf [
    i32 1, label %bb.aa
    i32 2, label %.preheader1318.i
    i32 3, label %bb.bq
    i32 4, label %bb.bq
    i32 5, label %bb.fr
    i32 6, label %bb.fr
    i32 7, label %bb.fr
    i32 8, label %bb.fr
    i32 17, label %bb.mm
    i32 18, label %bb.mr
    i32 19, label %bb.mx
    i32 20, label %bb.nc
  ]

.preheader1318.i:                                 ; preds = %.loopexit.thread.i
  %i.he = load i8, ptr %i.au, align 4, !tbaa !32  ; 5 uses
  br label %bb.al

bb.aa:                                            ; preds = %.loopexit.thread.i
  %i.hf = icmp slt i32 %.4.i, 17
  %.not.i1250.i = icmp eq i32 %.sroa.181.1, 0
  %i.hg = ptrtoint ptr %.sroa.0.1 to i64
  %i.hh = sub i64 %i.bz, %i.hg
  %i.hi = icmp sgt i64 %i.hh, 0
  %or.cond = select i1 %.not.i1250.i, i1 %i.hi, i1 false ; 2 uses
  br i1 %i.hf, label %bb.ab, label %bb.ad

bb.ab:                                            ; preds = %bb.aa
  br i1 %or.cond, label %bb.ac, label %bytestream2_put_byte.exit1245.i

bb.ac:                                            ; preds = %bb.ab
  %i.hj = trunc i32 %.4.i to i8
  %i.hk = add i8 %i.hj, -1
  %i.hl = or i8 %i.hk, 96
  store i8 %i.hl, ptr %.sroa.0.1, align 1, !tbaa !32
  br label %bb.ag

bb.ad:                                            ; preds = %bb.aa
  br i1 %or.cond, label %bb.ae, label %bytestream2_put_byte.exit1245.i

bb.ae:                                            ; preds = %bb.ad
  store i8 112, ptr %.sroa.0.1, align 1, !tbaa !32
  %i.hm = getelementptr inbounds nuw i8, ptr %.sroa.0.1, i64 1 ; 4 uses
  %i.hn = ptrtoint ptr %i.hm to i64
  %i.ho = sub i64 %i.bz, %i.hn
  %i.hp = icmp sgt i64 %i.ho, 0
  br i1 %i.hp, label %bb.af, label %bytestream2_put_byte.exit1245.i

bb.af:                                            ; preds = %bb.ae
  %i.hq = trunc i32 %.4.i to i8
  %i.hr = add i8 %i.hq, -1
  store i8 %i.hr, ptr %i.hm, align 1, !tbaa !32
  br label %bb.ag

bb.ag:                                            ; preds = %bb.ac, %bb.af
  %.sroa.0.41 = phi ptr [ %.sroa.0.1, %bb.ac ], [ %i.hm, %bb.af ] ; 2 uses
  %i.hs = getelementptr inbounds nuw i8, ptr %.sroa.0.41, i64 1 ; 3 uses
  %i.ht = ptrtoint ptr %i.hs to i64
  %i.hu = sub i64 %i.bz, %i.ht
  %i.hv = icmp sgt i64 %i.hu, 0
  br i1 %i.hv, label %bb.ah, label %bytestream2_put_byte.exit1245.i

bb.ah:                                            ; preds = %bb.ag
  %i.hw = load i8, ptr %i.bo, align 8, !tbaa !72
  store i8 %i.hw, ptr %i.hs, align 1, !tbaa !32
  %i.hx = getelementptr inbounds nuw i8, ptr %.sroa.0.41, i64 2
  br label %bytestream2_put_byte.exit1245.i

bytestream2_put_byte.exit1245.i:                  ; preds = %bb.ab, %bb.ad, %bb.ae, %bb.ag, %bb.ah
  %.sroa.181.33 = phi i32 [ 0, %bb.ah ], [ 1, %bb.ag ], [ 1, %bb.ae ], [ 1, %bb.ab ], [ 1, %bb.ad ] ; 4 uses
  %.sroa.0.40 = phi ptr [ %i.hx, %bb.ah ], [ %i.hs, %bb.ag ], [ %i.hm, %bb.ae ], [ %.sroa.0.1, %bb.ab ], [ %.sroa.0.1, %bb.ad ] ; 4 uses
  %i.hy = icmp sgt i32 %.4.i, 0
  %i.hz = icmp ne ptr %.010861612.i, null
  %or.cond171572.i = select i1 %i.hy, i1 %i.hz, i1 false
  %i.ia = icmp ne ptr %.010501616.i, null
  %or.cond611573.i = select i1 %or.cond171572.i, i1 %i.ia, i1 false
  br i1 %or.cond611573.i, label %.lr.ph1579.i.preheader, label %.critedge19.i

.lr.ph1579.i.preheader:                           ; preds = %bytestream2_put_byte.exit1245.i
  %xtraiter575 = and i32 %.4.i, 1
  %i.ib = icmp eq i32 %.4.i, 1
  br i1 %i.ib, label %.lr.ph1579.i.epil.preheader, label %.lr.ph1579.i.preheader.new

.lr.ph1579.i.preheader.new:                       ; preds = %.lr.ph1579.i.preheader
  %unroll_iter582 = and i32 %.4.i, 2147483646
  br label %.lr.ph1579.i

.lr.ph1579.i:                                     ; preds = %bb.ak, %.lr.ph1579.i.preheader.new
  %.131577.i = phi i32 [ %.09961632.i, %.lr.ph1579.i.preheader.new ], [ %.14.i.1, %bb.ak ]
  %.1310141576.i = phi i32 [ %.010011628.i, %.lr.ph1579.i.preheader.new ], [ %.141015.i.1, %bb.ak ] ; 2 uses
  %.1310631575.i = phi ptr [ %.010501616.i, %.lr.ph1579.i.preheader.new ], [ %.141064.i.1, %bb.ak ] ; 3 uses
  %.1310991574.i = phi ptr [ %.010861612.i, %.lr.ph1579.i.preheader.new ], [ %.141100.i.1, %bb.ak ]
  %niter583 = phi i32 [ 0, %.lr.ph1579.i.preheader.new ], [ %niter583.next.1, %bb.ak ]
  %i.ic = getelementptr inbounds nuw i8, ptr %.1310991574.i, i64 4 ; 2 uses
  %i.id = add nsw i32 %.131577.i, 4
  %i.ie = ptrtoint ptr %i.ic to i64
  %i.if = ptrtoint ptr %.1310631575.i to i64
  %i.ig = sub i64 %i.ie, %i.if
  %.not1185.i = icmp slt i64 %i.ig, %i.bg
  br i1 %.not1185.i, label %.lr.ph1579.i.1, label %bb.ai

bb.ai:                                            ; preds = %.lr.ph1579.i
  %i.ih = getelementptr inbounds i8, ptr %.1310631575.i, i64 %i.bh ; 2 uses
  %i.ii = add nsw i32 %.1310141576.i, 4
  br label %.lr.ph1579.i.1

.lr.ph1579.i.1:                                   ; preds = %bb.ai, %.lr.ph1579.i
  %.141100.i = phi ptr [ %i.ih, %bb.ai ], [ %i.ic, %.lr.ph1579.i ]
  %.141064.i = phi ptr [ %i.ih, %bb.ai ], [ %.1310631575.i, %.lr.ph1579.i ] ; 3 uses
  %.141015.i = phi i32 [ %i.ii, %bb.ai ], [ %.1310141576.i, %.lr.ph1579.i ] ; 2 uses
  %.14.i = phi i32 [ 0, %bb.ai ], [ %i.id, %.lr.ph1579.i ]
  %i.ij = getelementptr inbounds nuw i8, ptr %.141100.i, i64 4 ; 2 uses
  %i.ik = add nsw i32 %.14.i, 4
  %i.il = ptrtoint ptr %i.ij to i64
  %i.im = ptrtoint ptr %.141064.i to i64
  %i.in = sub i64 %i.il, %i.im
  %.not1185.i.1 = icmp slt i64 %i.in, %i.bg
  br i1 %.not1185.i.1, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %.lr.ph1579.i.1
  %i.io = getelementptr inbounds i8, ptr %.141064.i, i64 %i.bh ; 2 uses
  %i.ip = add nsw i32 %.141015.i, 4
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %.lr.ph1579.i.1
  %.141100.i.1 = phi ptr [ %i.io, %bb.aj ], [ %i.ij, %.lr.ph1579.i.1 ] ; 3 uses
  %.141064.i.1 = phi ptr [ %i.io, %bb.aj ], [ %.141064.i, %.lr.ph1579.i.1 ] ; 3 uses
  %.141015.i.1 = phi i32 [ %i.ip, %bb.aj ], [ %.141015.i, %.lr.ph1579.i.1 ] ; 3 uses
  %.14.i.1 = phi i32 [ 0, %bb.aj ], [ %i.ik, %.lr.ph1579.i.1 ] ; 3 uses
  %niter583.next.1 = add nuw nsw i32 %niter583, 2 ; 2 uses
  %niter583.ncmp.1 = icmp eq i32 %niter583.next.1, %unroll_iter582
  br i1 %niter583.ncmp.1, label %.critedge19.i.loopexit508.unr-lcssa, label %.lr.ph1579.i, !llvm.loop !37

bb.al:                                            ; preds = %bb.at, %.preheader1318.i
  %indvars.iv1740.i = phi i64 [ 0, %.preheader1318.i ], [ %indvars.iv.next1741.i.1, %bb.at ] ; 5 uses
  %i.iq = getelementptr inbounds nuw [2 x i8], ptr %i.by, i64 %indvars.iv1740.i ; 3 uses
  %i.ir = load i8, ptr %i.iq, align 2, !tbaa !32  ; 2 uses
  %i.is = icmp eq i8 %i.ir, %i.he
  br i1 %i.is, label %bb.an, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.it = getelementptr inbounds nuw i8, ptr %i.iq, i64 1
  %i.iu = load i8, ptr %i.it, align 1, !tbaa !32
  %i.iv = icmp eq i8 %i.iu, %i.he
  br i1 %i.iv, label %bb.an, label %bb.ap

bb.an:                                            ; preds = %bb.am, %bb.al
  %i.iw = load i8, ptr %i.bq, align 1, !tbaa !32  ; 2 uses
  %i.ix = icmp eq i8 %i.ir, %i.iw
  br i1 %i.ix, label %bb.au, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.iy = getelementptr inbounds nuw i8, ptr %i.iq, i64 1
  %i.iz = load i8, ptr %i.iy, align 1, !tbaa !32
  %i.ja = icmp eq i8 %i.iz, %i.iw
  br i1 %i.ja, label %bb.au, label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %bb.am
  %indvars.iv.next1741.i = or disjoint i64 %indvars.iv1740.i, 1 ; 3 uses
  %i.jb = getelementptr inbounds nuw [2 x i8], ptr %i.by, i64 %indvars.iv.next1741.i ; 3 uses
  %i.jc = load i8, ptr %i.jb, align 2, !tbaa !32  ; 2 uses
  %i.jd = icmp eq i8 %i.jc, %i.he
  br i1 %i.jd, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.je = getelementptr inbounds nuw i8, ptr %i.jb, i64 1
  %i.jf = load i8, ptr %i.je, align 1, !tbaa !32
  %i.jg = icmp eq i8 %i.jf, %i.he
  br i1 %i.jg, label %bb.ar, label %bb.at

bb.ar:                                            ; preds = %bb.aq, %bb.ap
  %i.jh = load i8, ptr %i.bq, align 1, !tbaa !32  ; 2 uses
  %i.ji = icmp eq i8 %i.jc, %i.jh
  br i1 %i.ji, label %bb.au, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.jj = getelementptr inbounds nuw i8, ptr %i.jb, i64 1
  %i.jk = load i8, ptr %i.jj, align 1, !tbaa !32
  %i.jl = icmp eq i8 %i.jk, %i.jh
  br i1 %i.jl, label %bb.au, label %bb.at

bb.at:                                            ; preds = %bb.as, %bb.aq
  %indvars.iv.next1741.i.1 = add nuw nsw i64 %indvars.iv1740.i, 2 ; 2 uses
  %exitcond1743.not.i.1 = icmp eq i64 %indvars.iv.next1741.i.1, 256
  br i1 %exitcond1743.not.i.1, label %bb.ax, label %bb.al, !llvm.loop !38

bb.au:                                            ; preds = %bb.as, %bb.ar, %bb.ao, %bb.an
  %indvars.iv1740.i.lcssa = phi i64 [ %indvars.iv1740.i, %bb.ao ], [ %indvars.iv1740.i, %bb.an ], [ %indvars.iv.next1741.i, %bb.ar ], [ %indvars.iv.next1741.i, %bb.as ] ; 4 uses
  %.not.i1242.i = icmp eq i32 %.sroa.181.1, 0
  %i.jm = ptrtoint ptr %.sroa.0.1 to i64
  %i.jn = sub i64 %i.bz, %i.jm
  %i.jo = icmp sgt i64 %i.jn, 0
end_hunk_0
