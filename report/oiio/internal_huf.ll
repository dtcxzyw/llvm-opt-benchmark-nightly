inline.NumInlined: 45
inline.NumDeleted: 24
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 19
begin_hunk_0_@internal_huf_compress:bb.a
  %narrow.i.not.i.i.i.i93.i = and i1 %i.gy, %.not18.i.i.i.i92.i
  br i1 %narrow.i.not.i.i.i.i93.i, label %intern_pop_heap.exit.i95.i, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.hb = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %.01421.i.i.i.i89.i
  store ptr %i.gw, ptr %i.hb, align 8, !tbaa !16
  %.not10.i.i94.i = icmp eq i64 %.022.i.i.i.i91.i, 0
  br i1 %.not10.i.i94.i, label %intern_pop_heap.exit.i95.i, label %bb.v, !llvm.loop !20

intern_pop_heap.exit.i95.i:                       ; preds = %bb.w, %bb.v, %bb.u
  %.014.lcssa.i.i.i.i96.i = phi i64 [ 0, %bb.u ], [ %.01421.i.i.i.i89.i, %bb.v ], [ 0, %bb.w ]
  %i.hc = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %.014.lcssa.i.i.i.i96.i
  store ptr %i.fo, ptr %i.hc, align 8, !tbaa !16
  br label %pop_heap.exit98.i

pop_heap.exit98.i:                                ; preds = %intern_pop_heap.exit.i95.i, %intern_pop_heap.exit.i.i
  %i.hd = and i64 %i.dn, 4294967295
  %i.he = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %i.hd
  %i.hf = load i64, ptr %i.he, align 8, !tbaa !9
  %i.hg = and i64 %i.fk, 4294967295
  %i.hh = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %i.hg ; 2 uses
  %i.hi = load i64, ptr %i.hh, align 8, !tbaa !9
  %i.hj = add i64 %i.hi, %i.hf
  store i64 %i.hj, ptr %i.hh, align 8, !tbaa !9
  %i.hk = getelementptr inbounds i8, ptr %i.fm, i64 -8
  %i.hl = load ptr, ptr %i.hk, align 8, !tbaa !16 ; 3 uses
  %i.hm = add nsw i64 %indvars.iv114.i, -2        ; 2 uses
  %.not.i99.i = icmp eq i64 %i.hm, 0
  br i1 %.not.i99.i, label %push_heap.exit.i, label %.lr.ph.i.i100.i

.lr.ph.i.i100.i:                                  ; preds = %pop_heap.exit98.i
  %i.hn = load i64, ptr %i.hl, align 8, !tbaa !9  ; 2 uses
  br label %bb.x

bb.x:                                             ; preds = %bb.y, %.lr.ph.i.i100.i
  %.01421.i.i.i = phi i64 [ %i.hm, %.lr.ph.i.i100.i ], [ %.022.i.i.i, %bb.y ] ; 3 uses
  %.022.in.i.i.i = add nsw i64 %.01421.i.i.i, -1
  %.022.i.i.i = lshr i64 %.022.in.i.i.i, 1        ; 3 uses
  %i.ho = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %.022.i.i.i
  %i.hp = load ptr, ptr %i.ho, align 8, !tbaa !16 ; 3 uses
  %i.hq = load i64, ptr %i.hp, align 8, !tbaa !9  ; 2 uses
  %i.hr = icmp ule i64 %i.hq, %i.hn
  %i.hs = icmp ne i64 %i.hq, %i.hn
  %i.ht = icmp ule ptr %i.hp, %i.hl
  %.not18.i.i.i = or i1 %i.ht, %i.hs
  %narrow.i.not.i.i101.i = and i1 %i.hr, %.not18.i.i.i
  br i1 %narrow.i.not.i.i101.i, label %push_heap.exit.i, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.hu = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %.01421.i.i.i
  store ptr %i.hp, ptr %i.hu, align 8, !tbaa !16
  %.not5.i.i = icmp eq i64 %.022.i.i.i, 0
  br i1 %.not5.i.i, label %push_heap.exit.i, label %bb.x, !llvm.loop !20

push_heap.exit.i:                                 ; preds = %bb.y, %bb.x, %pop_heap.exit98.i
  %.014.lcssa.i.i.i = phi i64 [ 0, %pop_heap.exit98.i ], [ %.01421.i.i.i, %bb.x ], [ 0, %bb.y ]
  %i.hv = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %.014.lcssa.i.i.i
  store ptr %i.hl, ptr %i.hv, align 8, !tbaa !16
  br label %bb.z

bb.z:                                             ; preds = %bb.z, %push_heap.exit.i
  %.070.i = phi i32 [ %i.fl, %push_heap.exit.i ], [ %i.ib, %bb.z ] ; 2 uses
  %i.hw = zext i32 %.070.i to i64                 ; 3 uses
  %i.hx = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %i.hw ; 2 uses
  %i.hy = load i64, ptr %i.hx, align 8, !tbaa !9
  %i.hz = add i64 %i.hy, 1
  store i64 %i.hz, ptr %i.hx, align 8, !tbaa !9
  %i.ia = getelementptr inbounds nuw [4 x i8], ptr %i.aw, i64 %i.hw
  %i.ib = load i32, ptr %i.ia, align 4, !tbaa !3  ; 2 uses
  %i.ic = icmp eq i32 %i.ib, %.070.i
  br i1 %i.ic, label %bb.aa, label %bb.z

bb.aa:                                            ; preds = %bb.z
  %i.id = getelementptr inbounds nuw [4 x i8], ptr %i.aw, i64 %i.hw
  store i32 %i.do, ptr %i.id, align 4, !tbaa !3
  br label %bb.ab

bb.ab:                                            ; preds = %bb.ab, %bb.aa
  %.0.i = phi i32 [ %i.do, %bb.aa ], [ %i.ij, %bb.ab ] ; 2 uses
  %i.ie = zext i32 %.0.i to i64                   ; 2 uses
  %i.if = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %i.ie ; 2 uses
  %i.ig = load i64, ptr %i.if, align 8, !tbaa !9
  %i.ih = add i64 %i.ig, 1
  store i64 %i.ih, ptr %i.if, align 8, !tbaa !9
  %i.ii = getelementptr inbounds nuw [4 x i8], ptr %i.aw, i64 %i.ie
  %i.ij = load i32, ptr %i.ii, align 4, !tbaa !3  ; 2 uses
  %i.ik = icmp eq i32 %i.ij, %.0.i
  br i1 %i.ik, label %.loopexit.i, label %bb.ab, !llvm.loop !22

._crit_edge111.i:                                 ; preds = %.loopexit.i, %make_heap.exit.thread.i
  %i.il = phi ptr [ %i.bg, %make_heap.exit.thread.i ], [ %i.bb, %.loopexit.i ]
  %i.im = phi i64 [ %i.bh, %make_heap.exit.thread.i ], [ %i.ba, %.loopexit.i ]
  %i.in = phi i32 [ %i.bi, %make_heap.exit.thread.i ], [ %i.az, %.loopexit.i ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #10
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(472) %i.b, i8 0, i64 472, i1 false), !tbaa !9
  br label %.preheader28.i.i

.preheader28.i.i:                                 ; preds = %.preheader28.i.i.1, %._crit_edge111.i
  %indvars.iv.i.i = phi i64 [ 0, %._crit_edge111.i ], [ %indvars.iv.next.i.i.3, %.preheader28.i.i.1 ] ; 6 uses
  %i.io = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %indvars.iv.i.i
  %i.ip = load i64, ptr %i.io, align 8, !tbaa !9
  %i.iq = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.ip ; 2 uses
  %i.ir = load i64, ptr %i.iq, align 8, !tbaa !9
  %i.is = add i64 %i.ir, 1
  store i64 %i.is, ptr %i.iq, align 8, !tbaa !9
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.i.i, 65536
  br i1 %exitcond.not.i.i, label %.preheader27.i.i, label %.preheader28.i.i.1

.preheader28.i.i.1:                               ; preds = %.preheader28.i.i
  %i.it = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %indvars.iv.i.i
  %i.iu = getelementptr inbounds nuw i8, ptr %i.it, i64 8
  %i.iv = load i64, ptr %i.iu, align 8, !tbaa !9
  %i.iw = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.iv ; 2 uses
  %i.ix = load i64, ptr %i.iw, align 8, !tbaa !9
  %i.iy = add i64 %i.ix, 1
  store i64 %i.iy, ptr %i.iw, align 8, !tbaa !9
  %i.iz = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %indvars.iv.i.i
  %i.ja = getelementptr inbounds nuw i8, ptr %i.iz, i64 16
  %i.jb = load i64, ptr %i.ja, align 8, !tbaa !9
  %i.jc = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.jb ; 2 uses
  %i.jd = load i64, ptr %i.jc, align 8, !tbaa !9
  %i.je = add i64 %i.jd, 1
  store i64 %i.je, ptr %i.jc, align 8, !tbaa !9
  %i.jf = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %indvars.iv.i.i
  %i.jg = getelementptr inbounds nuw i8, ptr %i.jf, i64 24
  %i.jh = load i64, ptr %i.jg, align 8, !tbaa !9
  %i.ji = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.jh ; 2 uses
  %i.jj = load i64, ptr %i.ji, align 8, !tbaa !9
  %i.jk = add i64 %i.jj, 1
  store i64 %i.jk, ptr %i.ji, align 8, !tbaa !9
  %indvars.iv.next.i.i.3 = add nuw nsw i64 %indvars.iv.i.i, 4
  br label %.preheader28.i.i

.preheader27.i.i:                                 ; preds = %.preheader28.i.i, %.preheader27.i.i
  %indvars.iv36.i.i = phi i64 [ %indvars.iv.next37.i.i.1, %.preheader27.i.i ], [ 58, %.preheader28.i.i ] ; 3 uses
  %.032.i.i = phi i64 [ %i.js, %.preheader27.i.i ], [ 0, %.preheader28.i.i ] ; 2 uses
  %i.jl = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv36.i.i ; 2 uses
  %i.jm = load i64, ptr %i.jl, align 16, !tbaa !9
  %i.jn = add i64 %i.jm, %.032.i.i
  %i.jo = lshr i64 %i.jn, 1                       ; 2 uses
  store i64 %.032.i.i, ptr %i.jl, align 16, !tbaa !9
  %indvars.iv.next37.i.i = add nsw i64 %indvars.iv36.i.i, -1 ; 2 uses
  %i.jp = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv.next37.i.i ; 2 uses
  %i.jq = load i64, ptr %i.jp, align 8, !tbaa !9
  %i.jr = add i64 %i.jq, %i.jo
  %i.js = lshr i64 %i.jr, 1
  store i64 %i.jo, ptr %i.jp, align 8, !tbaa !9
  %indvars.iv.next37.i.i.1 = add nsw i64 %indvars.iv36.i.i, -2
  %.not547 = icmp eq i64 %indvars.iv.next37.i.i, 1
  br i1 %.not547, label %.preheader.i.i, label %.preheader27.i.i, !llvm.loop !23

.preheader.i.i:                                   ; preds = %.preheader27.i.i, %bb.af
  %indvars.iv39.i.i = phi i64 [ %indvars.iv.next40.i.i.1, %bb.af ], [ 0, %.preheader27.i.i ] ; 4 uses
  %i.jt = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %indvars.iv39.i.i ; 2 uses
  %i.ju = load i64, ptr %i.jt, align 8, !tbaa !9  ; 3 uses
  %.not.i102.i = icmp eq i64 %i.ju, 0
  br i1 %.not.i102.i, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %.preheader.i.i
  %i.jv = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.ju ; 2 uses
  %i.jw = load i64, ptr %i.jv, align 8, !tbaa !9  ; 2 uses
  %i.jx = add i64 %i.jw, 1
  store i64 %i.jx, ptr %i.jv, align 8, !tbaa !9
  %i.jy = shl i64 %i.jw, 6
  %i.jz = or i64 %i.jy, %i.ju
  store i64 %i.jz, ptr %i.jt, align 8, !tbaa !9
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %.preheader.i.i
  %exitcond42.not.i.i = icmp eq i64 %indvars.iv39.i.i, 65536
  br i1 %exitcond42.not.i.i, label %hufBuildEncTable.exit, label %.preheader.i.i.1

.preheader.i.i.1:                                 ; preds = %bb.ad
  %i.ka = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %indvars.iv39.i.i
  %i.kb = getelementptr inbounds nuw i8, ptr %i.ka, i64 8 ; 2 uses
  %i.kc = load i64, ptr %i.kb, align 8, !tbaa !9  ; 3 uses
  %.not.i102.i.1 = icmp eq i64 %i.kc, 0
  br i1 %.not.i102.i.1, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %.preheader.i.i.1
  %i.kd = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.kc ; 2 uses
  %i.ke = load i64, ptr %i.kd, align 8, !tbaa !9  ; 2 uses
  %i.kf = add i64 %i.ke, 1
  store i64 %i.kf, ptr %i.kd, align 8, !tbaa !9
  %i.kg = shl i64 %i.ke, 6
  %i.kh = or i64 %i.kg, %i.kc
  store i64 %i.kh, ptr %i.kb, align 8, !tbaa !9
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %.preheader.i.i.1
  %indvars.iv.next40.i.i.1 = add nuw nsw i64 %indvars.iv39.i.i, 2
  br label %.preheader.i.i

hufBuildEncTable.exit:                            ; preds = %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #10
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(524296) %5, ptr noundef nonnull align 8 dereferenceable(524296) %i.au, i64 524296, i1 false)
  %.not195.i = icmp ugt i32 %storemerge.i, %i.in
  br i1 %.not195.i, label %hufPackEncTable.exit, label %.lr.ph201.i.preheader

.lr.ph201.i.preheader:                            ; preds = %hufBuildEncTable.exit
  %i.ki = add i64 %2, %i.a                        ; 3 uses
  %7 = ptrtoint ptr %1 to i64
  %8 = add i64 %2, %7
  br label %.lr.ph201.i

.lr.ph201.i:                                      ; preds = %.lr.ph201.i.preheader, %.thread132.i
  %.077199.i = phi i32 [ %i.pc, %.thread132.i ], [ %storemerge.i, %.lr.ph201.i.preheader ] ; 3 uses
  %.081198.i = phi ptr [ %.889140.i, %.thread132.i ], [ %i.c, %.lr.ph201.i.preheader ] ; 13 uses
  %.097197.i = phi i64 [ %.4101139.i, %.thread132.i ], [ 0, %.lr.ph201.i.preheader ] ; 2 uses
  %.0103196.i = phi i32 [ %.8111138.i, %.thread132.i ], [ 0, %.lr.ph201.i.preheader ] ; 9 uses
  %.081198.i244 = ptrtoint ptr %.081198.i to i64  ; 3 uses
  %i.kj = zext i32 %.077199.i to i64              ; 2 uses
  %i.kk = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %i.kj
  %i.kl = load i64, ptr %i.kk, align 8, !tbaa !9
  %i.km = and i64 %i.kl, 63                       ; 2 uses
  %i.kn = icmp eq i64 %i.km, 0
  %i.ko = icmp ult i32 %.077199.i, %i.in
  %or.cond.i = and i1 %i.ko, %i.kn
  br i1 %or.cond.i, label %.lr.ph.i49, label %.critedge120.thread.i

.lr.ph.i49:                                       ; preds = %.lr.ph201.i, %bb.ag
  %indvars.iv.i50 = phi i64 [ %indvars.iv.next.i51, %bb.ag ], [ %i.kj, %.lr.ph201.i ] ; 2 uses
  %.0102167.i = phi i64 [ %i.ks, %bb.ag ], [ 1, %.lr.ph201.i ] ; 3 uses
  %indvars.iv.next.i51 = add nuw nsw i64 %indvars.iv.i50, 1 ; 4 uses
  %i.kp = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %indvars.iv.next.i51
  %i.kq = load i64, ptr %i.kp, align 8, !tbaa !9
  %i.kr = and i64 %i.kq, 63
  %.not114.i = icmp eq i64 %i.kr, 0
  br i1 %.not114.i, label %bb.ag, label %._crit_edge.i52

bb.ag:                                            ; preds = %.lr.ph.i49
  %i.ks = add nuw nsw i64 %.0102167.i, 1          ; 2 uses
  %i.kt = icmp samesign ult i64 %indvars.iv.next.i51, %i.im
  %i.ku = icmp samesign ult i64 %.0102167.i, 260
  %i.kv = select i1 %i.kt, i1 %i.ku, i1 false
  br i1 %i.kv, label %.lr.ph.i49, label %._crit_edge.i52, !llvm.loop !24

._crit_edge.i52:                                  ; preds = %bb.ag, %.lr.ph.i49
  %.0102.lcssa.ph.i = phi i64 [ %i.ks, %bb.ag ], [ %.0102167.i, %.lr.ph.i49 ] ; 4 uses
  %.178.lcssa.ph.in.i = phi i64 [ %indvars.iv.next.i51, %bb.ag ], [ %indvars.iv.i50, %.lr.ph.i49 ]
  %.178.lcssa.ph.i = trunc i64 %.178.lcssa.ph.in.i to i32 ; 5 uses
  %i.kw = icmp samesign ult i64 %.0102.lcssa.ph.i, 2
  br i1 %i.kw, label %.critedge120.thread.i, label %bb.ah

bb.ah:                                            ; preds = %._crit_edge.i52
  %i.kx = icmp samesign ugt i64 %.0102.lcssa.ph.i, 5
  %i.ky = shl i64 %.097197.i, 6                   ; 2 uses
  br i1 %i.kx, label %bb.ai, label %bb.al

bb.ai:                                            ; preds = %bb.ah
  %i.kz = or disjoint i64 %i.ky, 63               ; 3 uses
  %i.la = add i32 %.0103196.i, 6                  ; 3 uses
  %i.lb = icmp slt i32 %.0103196.i, 2
  br i1 %i.lb, label %.critedge.i, label %.lr.ph182.preheader.i

.lr.ph182.preheader.i:                            ; preds = %bb.ai
  %i.lc = zext i32 %i.la to i64                   ; 3 uses
  %i.ld = add nuw i32 %.0103196.i, 13
  %smin271 = tail call i32 @llvm.smin.i32(i32 %i.la, i32 15)
  %i.le = sub i32 %i.ld, %smin271
  %.fr500 = freeze i32 %i.le
  %i.lf = lshr i32 %.fr500, 3
  %i.lg = zext nneg i32 %i.lf to i64
  %i.lh = tail call i64 @llvm.usub.sat.i64(i64 %i.ki, i64 %.081198.i244)
  %umin273 = tail call i64 @llvm.umin.i64(i64 %i.lg, i64 %i.lh) ; 2 uses
  %min.iters.check275 = icmp samesign ult i64 %umin273, 16
  br i1 %min.iters.check275, label %.lr.ph182.i.preheader, label %vector.ph276

vector.ph276:                                     ; preds = %.lr.ph182.preheader.i
  %i.li = add nuw nsw i64 %umin273, 1             ; 2 uses
  %n.mod.vf277 = and i64 %i.li, 15                ; 2 uses
  %i.lj = icmp eq i64 %n.mod.vf277, 0
  %i.lk = select i1 %i.lj, i64 16, i64 %n.mod.vf277
  %n.vec278 = sub nsw i64 %i.li, %i.lk            ; 3 uses
  %i.ll = shl nsw i64 %n.vec278, 3
  %i.lm = sub nsw i64 %i.lc, %i.ll
  %i.ln = getelementptr i8, ptr %.081198.i, i64 %n.vec278
  %broadcast.splatinsert279 = insertelement <16 x i64> poison, i64 %i.kz, i64 0
  %broadcast.splat280 = shufflevector <16 x i64> %broadcast.splatinsert279, <16 x i64> poison, <16 x i32> zeroinitializer
  %broadcast.splatinsert281 = insertelement <16 x i64> poison, i64 %i.lc, i64 0
  %broadcast.splat282 = shufflevector <16 x i64> %broadcast.splatinsert281, <16 x i64> poison, <16 x i32> zeroinitializer
  %induction283 = add nsw <16 x i64> %broadcast.splat282, <i64 0, i64 -8, i64 -16, i64 -24, i64 -32, i64 -40, i64 -48, i64 -56, i64 -64, i64 -72, i64 -80, i64 -88, i64 -96, i64 -104, i64 -112, i64 -120>
  br label %vector.body284

vector.body284:                                   ; preds = %vector.body284, %vector.ph276
  %index285 = phi i64 [ 0, %vector.ph276 ], [ %index.next288, %vector.body284 ] ; 2 uses
  %vec.ind286 = phi <16 x i64> [ %induction283, %vector.ph276 ], [ %vec.ind.next289, %vector.body284 ] ; 2 uses
  %next.gep287 = getelementptr i8, ptr %.081198.i, i64 %index285
  %i.lo = add nsw <16 x i64> %vec.ind286, splat (i64 -8)
  %i.lp = lshr <16 x i64> %broadcast.splat280, %i.lo
  %i.lq = trunc <16 x i64> %i.lp to <16 x i8>
  store <16 x i8> %i.lq, ptr %next.gep287, align 1, !tbaa !25
  %index.next288 = add nuw i64 %index285, 16      ; 2 uses
  %vec.ind.next289 = add nsw <16 x i64> %vec.ind286, splat (i64 -128)
  %i.lr = icmp eq i64 %index.next288, %n.vec278
  br i1 %i.lr, label %.lr.ph182.i.preheader, label %vector.body284, !llvm.loop !26

.lr.ph182.i.preheader:                            ; preds = %vector.body284, %.lr.ph182.preheader.i
  %indvars.iv223.i.ph = phi i64 [ %i.lc, %.lr.ph182.preheader.i ], [ %i.lm, %vector.body284 ]
  %.182180.i.ph = phi ptr [ %.081198.i, %.lr.ph182.preheader.i ], [ %i.ln, %vector.body284 ]
  br label %.lr.ph182.i

.lr.ph182.i:                                      ; preds = %.lr.ph182.i.preheader, %bb.aj
  %indvars.iv223.i = phi i64 [ %i.ls, %bb.aj ], [ %indvars.iv223.i.ph, %.lr.ph182.i.preheader ] ; 2 uses
  %.182180.i = phi ptr [ %i.lv, %bb.aj ], [ %.182180.i.ph, %.lr.ph182.i.preheader ] ; 3 uses
  %.not116.i = icmp ult ptr %.182180.i, %i.d
  br i1 %.not116.i, label %bb.aj, label %hufPackEncTable.exit.thread, !prof !29

bb.aj:                                            ; preds = %.lr.ph182.i
  %i.ls = add nsw i64 %indvars.iv223.i, -8        ; 3 uses
  %i.lt = lshr i64 %i.kz, %i.ls
  %i.lu = trunc i64 %i.lt to i8
  %i.lv = getelementptr inbounds nuw i8, ptr %.182180.i, i64 1 ; 2 uses
  store i8 %i.lu, ptr %.182180.i, align 1, !tbaa !25
  %i.lw = trunc nuw i64 %indvars.iv223.i to i32
  %i.lx = icmp slt i32 %i.lw, 16
  br i1 %i.lx, label %.critedge.loopexit.i, label %.lr.ph182.i, !llvm.loop !30

.critedge.loopexit.i:                             ; preds = %bb.aj
  %i.ly = trunc i64 %i.ls to i32
  br label %.critedge.i

.critedge.i:                                      ; preds = %.critedge.loopexit.i, %bb.ai
  %.1104.lcssa.i = phi i32 [ %i.la, %bb.ai ], [ %i.ly, %.critedge.loopexit.i ] ; 3 uses
  %.182.lcssa.i = phi ptr [ %.081198.i, %bb.ai ], [ %i.lv, %.critedge.loopexit.i ] ; 5 uses
  %i.lz = shl i64 %i.kz, 8
  %i.ma = add nsw i64 %.0102.lcssa.ph.i, -6
  %i.mb = or i64 %i.ma, %i.lz                     ; 4 uses
  %i.mc = add i32 %.1104.lcssa.i, 8               ; 3 uses
  %i.md = icmp slt i32 %.1104.lcssa.i, 0
  br i1 %i.md, label %.thread132.i, label %.lr.ph187.preheader.i

.lr.ph187.preheader.i:                            ; preds = %.critedge.i
  %i.me = zext i32 %i.mc to i64                   ; 3 uses
  %smin248 = tail call i32 @llvm.smin.i32(i32 %i.mc, i32 15)
  %i.mf = sub i32 %.1104.lcssa.i, %smin248
  %9 = add i32 %i.mf, 15
  %i.mg = lshr i32 %9, 3
  %i.mh = zext nneg i32 %i.mg to i64
  %10 = ptrtoint ptr %.182.lcssa.i to i64
  %i.mi = tail call i64 @llvm.usub.sat.i64(i64 %8, i64 %10)
  %umin251 = tail call i64 @llvm.umin.i64(i64 %i.mh, i64 %i.mi) ; 2 uses
  %min.iters.check253 = icmp samesign ult i64 %umin251, 16
  br i1 %min.iters.check253, label %.lr.ph187.i.preheader, label %vector.ph254

vector.ph254:                                     ; preds = %.lr.ph187.preheader.i
  %i.mj = add nuw nsw i64 %umin251, 1             ; 2 uses
  %n.mod.vf255 = and i64 %i.mj, 15                ; 2 uses
  %i.mk = icmp eq i64 %n.mod.vf255, 0
  %i.ml = select i1 %i.mk, i64 16, i64 %n.mod.vf255
  %n.vec256 = sub nsw i64 %i.mj, %i.ml            ; 3 uses
  %i.mm = shl nsw i64 %n.vec256, 3
  %i.mn = sub nsw i64 %i.me, %i.mm
  %i.mo = getelementptr i8, ptr %.182.lcssa.i, i64 %n.vec256
  %broadcast.splatinsert257 = insertelement <16 x i64> poison, i64 %i.mb, i64 0
  %broadcast.splat258 = shufflevector <16 x i64> %broadcast.splatinsert257, <16 x i64> poison, <16 x i32> zeroinitializer
  %broadcast.splatinsert259 = insertelement <16 x i64> poison, i64 %i.me, i64 0
  %broadcast.splat260 = shufflevector <16 x i64> %broadcast.splatinsert259, <16 x i64> poison, <16 x i32> zeroinitializer
  %induction261 = add nsw <16 x i64> %broadcast.splat260, <i64 0, i64 -8, i64 -16, i64 -24, i64 -32, i64 -40, i64 -48, i64 -56, i64 -64, i64 -72, i64 -80, i64 -88, i64 -96, i64 -104, i64 -112, i64 -120>
  br label %vector.body262

vector.body262:                                   ; preds = %vector.body262, %vector.ph254
  %index263 = phi i64 [ 0, %vector.ph254 ], [ %index.next266, %vector.body262 ] ; 2 uses
  %vec.ind264 = phi <16 x i64> [ %induction261, %vector.ph254 ], [ %vec.ind.next267, %vector.body262 ] ; 2 uses
  %next.gep265 = getelementptr i8, ptr %.182.lcssa.i, i64 %index263
  %i.mp = add nsw <16 x i64> %vec.ind264, splat (i64 -8)
  %i.mq = lshr <16 x i64> %broadcast.splat258, %i.mp
  %i.mr = trunc <16 x i64> %i.mq to <16 x i8>
  store <16 x i8> %i.mr, ptr %next.gep265, align 1, !tbaa !25
  %index.next266 = add nuw i64 %index263, 16      ; 2 uses
  %vec.ind.next267 = add nsw <16 x i64> %vec.ind264, splat (i64 -128)
  %i.ms = icmp eq i64 %index.next266, %n.vec256
  br i1 %i.ms, label %.lr.ph187.i.preheader, label %vector.body262, !llvm.loop !31

.lr.ph187.i.preheader:                            ; preds = %vector.body262, %.lr.ph187.preheader.i
  %indvars.iv227.i.ph = phi i64 [ %i.me, %.lr.ph187.preheader.i ], [ %i.mn, %vector.body262 ]
  %.283186.i.ph = phi ptr [ %.182.lcssa.i, %.lr.ph187.preheader.i ], [ %i.mo, %vector.body262 ]
  br label %.lr.ph187.i

.lr.ph187.i:                                      ; preds = %.lr.ph187.i.preheader, %bb.ak
  %indvars.iv227.i = phi i64 [ %i.mt, %bb.ak ], [ %indvars.iv227.i.ph, %.lr.ph187.i.preheader ] ; 2 uses
  %.283186.i = phi ptr [ %i.mw, %bb.ak ], [ %.283186.i.ph, %.lr.ph187.i.preheader ] ; 3 uses
  %.not117.i = icmp ult ptr %.283186.i, %i.d
  br i1 %.not117.i, label %bb.ak, label %hufPackEncTable.exit.thread, !prof !29

bb.ak:                                            ; preds = %.lr.ph187.i
  %i.mt = add nsw i64 %indvars.iv227.i, -8        ; 3 uses
  %i.mu = lshr i64 %i.mb, %i.mt
  %i.mv = trunc i64 %i.mu to i8
  %i.mw = getelementptr inbounds nuw i8, ptr %.283186.i, i64 1 ; 2 uses
  store i8 %i.mv, ptr %.283186.i, align 1, !tbaa !25
  %i.mx = trunc nuw i64 %indvars.iv227.i to i32
  %i.my = icmp slt i32 %i.mx, 16
  br i1 %i.my, label %.thread132.loopexit207.i, label %.lr.ph187.i, !llvm.loop !32

bb.al:                                            ; preds = %bb.ah
  %i.mz = add nuw nsw i64 %.0102.lcssa.ph.i, 57
  %i.na = or i64 %i.mz, %i.ky                     ; 4 uses
  %i.nb = add i32 %.0103196.i, 6                  ; 3 uses
  %i.nc = icmp slt i32 %.0103196.i, 2
  br i1 %i.nc, label %.thread132.i, label %.lr.ph176.preheader.i

.lr.ph176.preheader.i:                            ; preds = %bb.al
  %i.nd = zext i32 %i.nb to i64                   ; 3 uses
  %i.ne = add nuw i32 %.0103196.i, 13
  %smin293 = tail call i32 @llvm.smin.i32(i32 %i.nb, i32 15)
  %i.nf = sub i32 %i.ne, %smin293
  %.fr499.a = freeze i32 %i.nf
  %i.ng = lshr i32 %.fr499.a, 3
  %i.nh = zext nneg i32 %i.ng to i64
  %i.ni = tail call i64 @llvm.usub.sat.i64(i64 %i.ki, i64 %.081198.i244)
  %umin295 = tail call i64 @llvm.umin.i64(i64 %i.nh, i64 %i.ni) ; 2 uses
  %min.iters.check297 = icmp samesign ult i64 %umin295, 16
  br i1 %min.iters.check297, label %.lr.ph176.i.preheader, label %vector.ph298

vector.ph298:                                     ; preds = %.lr.ph176.preheader.i
  %i.nj = add nuw nsw i64 %umin295, 1             ; 2 uses
  %n.mod.vf299 = and i64 %i.nj, 15                ; 2 uses
  %i.nk = icmp eq i64 %n.mod.vf299, 0
  %i.nl = select i1 %i.nk, i64 16, i64 %n.mod.vf299
  %n.vec300 = sub nsw i64 %i.nj, %i.nl            ; 3 uses
  %i.nm = shl nsw i64 %n.vec300, 3
  %i.nn = sub nsw i64 %i.nd, %i.nm
  %i.no = getelementptr i8, ptr %.081198.i, i64 %n.vec300
  %broadcast.splatinsert301 = insertelement <16 x i64> poison, i64 %i.na, i64 0
  %broadcast.splat302 = shufflevector <16 x i64> %broadcast.splatinsert301, <16 x i64> poison, <16 x i32> zeroinitializer
  %broadcast.splatinsert303 = insertelement <16 x i64> poison, i64 %i.nd, i64 0
  %broadcast.splat304 = shufflevector <16 x i64> %broadcast.splatinsert303, <16 x i64> poison, <16 x i32> zeroinitializer
  %induction305 = add nsw <16 x i64> %broadcast.splat304, <i64 0, i64 -8, i64 -16, i64 -24, i64 -32, i64 -40, i64 -48, i64 -56, i64 -64, i64 -72, i64 -80, i64 -88, i64 -96, i64 -104, i64 -112, i64 -120>
  br label %vector.body306

vector.body306:                                   ; preds = %vector.body306, %vector.ph298
  %index307 = phi i64 [ 0, %vector.ph298 ], [ %index.next310, %vector.body306 ] ; 2 uses
  %vec.ind308 = phi <16 x i64> [ %induction305, %vector.ph298 ], [ %vec.ind.next311, %vector.body306 ] ; 2 uses
  %next.gep309 = getelementptr i8, ptr %.081198.i, i64 %index307
  %i.np = add nsw <16 x i64> %vec.ind308, splat (i64 -8)
  %i.nq = lshr <16 x i64> %broadcast.splat302, %i.np
  %i.nr = trunc <16 x i64> %i.nq to <16 x i8>
  store <16 x i8> %i.nr, ptr %next.gep309, align 1, !tbaa !25
  %index.next310 = add nuw i64 %index307, 16      ; 2 uses
  %vec.ind.next311 = add nsw <16 x i64> %vec.ind308, splat (i64 -128)
  %i.ns = icmp eq i64 %index.next310, %n.vec300
  br i1 %i.ns, label %.lr.ph176.i.preheader, label %vector.body306, !llvm.loop !33

.lr.ph176.i.preheader:                            ; preds = %vector.body306, %.lr.ph176.preheader.i
  %indvars.iv219.i.ph = phi i64 [ %i.nd, %.lr.ph176.preheader.i ], [ %i.nn, %vector.body306 ]
  %.384174.i.ph = phi ptr [ %.081198.i, %.lr.ph176.preheader.i ], [ %i.no, %vector.body306 ]
  br label %.lr.ph176.i

.lr.ph176.i:                                      ; preds = %.lr.ph176.i.preheader, %bb.am
  %indvars.iv219.i = phi i64 [ %i.nt, %bb.am ], [ %indvars.iv219.i.ph, %.lr.ph176.i.preheader ] ; 2 uses
  %.384174.i = phi ptr [ %i.nw, %bb.am ], [ %.384174.i.ph, %.lr.ph176.i.preheader ] ; 3 uses
  %.not115.i = icmp ult ptr %.384174.i, %i.d
  br i1 %.not115.i, label %bb.am, label %hufPackEncTable.exit.thread, !prof !29

bb.am:                                            ; preds = %.lr.ph176.i
  %i.nt = add nsw i64 %indvars.iv219.i, -8        ; 3 uses
  %i.nu = lshr i64 %i.na, %i.nt
  %i.nv = trunc i64 %i.nu to i8
  %i.nw = getelementptr inbounds nuw i8, ptr %.384174.i, i64 1 ; 2 uses
  store i8 %i.nv, ptr %.384174.i, align 1, !tbaa !25
  %i.nx = trunc nuw i64 %indvars.iv219.i to i32
  %i.ny = icmp slt i32 %i.nx, 16
  br i1 %i.ny, label %.thread132.loopexit210.i, label %.lr.ph176.i, !llvm.loop !34

.critedge120.thread.i:                            ; preds = %._crit_edge.i52, %.lr.ph201.i
  %.279.i = phi i32 [ %.178.lcssa.ph.i, %._crit_edge.i52 ], [ %.077199.i, %.lr.ph201.i ] ; 2 uses
  %i.nz = shl i64 %.097197.i, 6
  %i.oa = or disjoint i64 %i.km, %i.nz            ; 4 uses
  %i.ob = add i32 %.0103196.i, 6                  ; 3 uses
  %i.oc = icmp sgt i32 %.0103196.i, 1
  br i1 %i.oc, label %.lr.ph192.preheader.i, label %.thread132.i

.lr.ph192.preheader.i:                            ; preds = %.critedge120.thread.i
  %i.od = zext i32 %i.ob to i64                   ; 3 uses
  %i.oe = add nuw i32 %.0103196.i, 13
  %smin = tail call i32 @llvm.smin.i32(i32 %i.ob, i32 15)
  %i.of = sub i32 %i.oe, %smin
  %.fr501 = freeze i32 %i.of
  %i.og = lshr i32 %.fr501, 3
  %i.oh = zext nneg i32 %i.og to i64
  %i.oi = tail call i64 @llvm.usub.sat.i64(i64 %i.ki, i64 %.081198.i244)
  %umin = tail call i64 @llvm.umin.i64(i64 %i.oh, i64 %i.oi) ; 2 uses
  %min.iters.check = icmp samesign ult i64 %umin, 16
  br i1 %min.iters.check, label %.lr.ph192.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph192.preheader.i
  %i.oj = add nuw nsw i64 %umin, 1                ; 2 uses
  %n.mod.vf = and i64 %i.oj, 15                   ; 2 uses
  %i.ok = icmp eq i64 %n.mod.vf, 0
  %i.ol = select i1 %i.ok, i64 16, i64 %n.mod.vf
  %n.vec = sub nsw i64 %i.oj, %i.ol               ; 3 uses
  %i.om = shl nsw i64 %n.vec, 3
  %i.on = sub nsw i64 %i.od, %i.om
  %i.oo = getelementptr i8, ptr %.081198.i, i64 %n.vec
  %broadcast.splatinsert = insertelement <16 x i64> poison, i64 %i.oa, i64 0
  %broadcast.splat = shufflevector <16 x i64> %broadcast.splatinsert, <16 x i64> poison, <16 x i32> zeroinitializer
  %broadcast.splatinsert245 = insertelement <16 x i64> poison, i64 %i.od, i64 0
  %broadcast.splat246 = shufflevector <16 x i64> %broadcast.splatinsert245, <16 x i64> poison, <16 x i32> zeroinitializer
  %induction = add nsw <16 x i64> %broadcast.splat246, <i64 0, i64 -8, i64 -16, i64 -24, i64 -32, i64 -40, i64 -48, i64 -56, i64 -64, i64 -72, i64 -80, i64 -88, i64 -96, i64 -104, i64 -112, i64 -120>
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <16 x i64> [ %induction, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 2 uses
  %next.gep = getelementptr i8, ptr %.081198.i, i64 %index
  %i.op = add nsw <16 x i64> %vec.ind, splat (i64 -8)
  %i.oq = lshr <16 x i64> %broadcast.splat, %i.op
  %i.or = trunc <16 x i64> %i.oq to <16 x i8>
  store <16 x i8> %i.or, ptr %next.gep, align 1, !tbaa !25
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %vec.ind.next = add nsw <16 x i64> %vec.ind, splat (i64 -128)
  %i.os = icmp eq i64 %index.next, %n.vec
  br i1 %i.os, label %.lr.ph192.i.preheader, label %vector.body, !llvm.loop !35

.lr.ph192.i.preheader:                            ; preds = %vector.body, %.lr.ph192.preheader.i
  %indvars.iv231.i.ph = phi i64 [ %i.od, %.lr.ph192.preheader.i ], [ %i.on, %vector.body ]
  %.788191.i.ph = phi ptr [ %.081198.i, %.lr.ph192.preheader.i ], [ %i.oo, %vector.body ]
  br label %.lr.ph192.i

.lr.ph192.i:                                      ; preds = %.lr.ph192.i.preheader, %bb.an
  %indvars.iv231.i = phi i64 [ %i.ot, %bb.an ], [ %indvars.iv231.i.ph, %.lr.ph192.i.preheader ] ; 2 uses
  %.788191.i = phi ptr [ %i.ow, %bb.an ], [ %.788191.i.ph, %.lr.ph192.i.preheader ] ; 3 uses
  %.not118.i = icmp ult ptr %.788191.i, %i.d
  br i1 %.not118.i, label %bb.an, label %hufPackEncTable.exit.thread, !prof !29

bb.an:                                            ; preds = %.lr.ph192.i
  %i.ot = add nsw i64 %indvars.iv231.i, -8        ; 3 uses
  %i.ou = lshr i64 %i.oa, %i.ot
  %i.ov = trunc i64 %i.ou to i8
  %i.ow = getelementptr inbounds nuw i8, ptr %.788191.i, i64 1 ; 2 uses
  store i8 %i.ov, ptr %.788191.i, align 1, !tbaa !25
  %i.ox = trunc nuw i64 %indvars.iv231.i to i32
  %i.oy = icmp sgt i32 %i.ox, 15
  br i1 %i.oy, label %.lr.ph192.i, label %.thread132.loopexit.i, !llvm.loop !36

.thread132.loopexit.i:                            ; preds = %bb.an
  %i.oz = trunc i64 %i.ot to i32
  br label %.thread132.i

.thread132.loopexit207.i:                         ; preds = %bb.ak
  %i.pa = trunc i64 %i.mt to i32
  br label %.thread132.i

.thread132.loopexit210.i:                         ; preds = %bb.am
  %i.pb = trunc i64 %i.nt to i32
  br label %.thread132.i

.thread132.i:                                     ; preds = %.thread132.loopexit210.i, %.thread132.loopexit207.i, %.thread132.loopexit.i, %.critedge120.thread.i, %bb.al, %.critedge.i
  %.380141.i = phi i32 [ %.178.lcssa.ph.i, %.critedge.i ], [ %.279.i, %.critedge120.thread.i ], [ %.178.lcssa.ph.i, %bb.al ], [ %.279.i, %.thread132.loopexit.i ], [ %.178.lcssa.ph.i, %.thread132.loopexit207.i ], [ %.178.lcssa.ph.i, %.thread132.loopexit210.i ]
  %.889140.i = phi ptr [ %.182.lcssa.i, %.critedge.i ], [ %.081198.i, %.critedge120.thread.i ], [ %.081198.i, %bb.al ], [ %i.ow, %.thread132.loopexit.i ], [ %i.mw, %.thread132.loopexit207.i ], [ %i.nw, %.thread132.loopexit210.i ] ; 5 uses
  %.4101139.i = phi i64 [ %i.mb, %.critedge.i ], [ %i.oa, %.critedge120.thread.i ], [ %i.na, %bb.al ], [ %i.oa, %.thread132.loopexit.i ], [ %i.mb, %.thread132.loopexit207.i ], [ %i.na, %.thread132.loopexit210.i ] ; 2 uses
  %.8111138.i = phi i32 [ %i.mc, %.critedge.i ], [ %i.ob, %.critedge120.thread.i ], [ %i.nb, %bb.al ], [ %i.oz, %.thread132.loopexit.i ], [ %i.pa, %.thread132.loopexit207.i ], [ %i.pb, %.thread132.loopexit210.i ] ; 3 uses
  %i.pc = add i32 %.380141.i, 1                   ; 2 uses
  %.not.i48 = icmp ugt i32 %i.pc, %i.in
  br i1 %.not.i48, label %._crit_edge202.i, label %.lr.ph201.i, !llvm.loop !37

._crit_edge202.i:                                 ; preds = %.thread132.i
  %i.pd = icmp sgt i32 %.8111138.i, 0
  br i1 %i.pd, label %bb.ao, label %hufPackEncTable.exit

bb.ao:                                            ; preds = %._crit_edge202.i
  %.not113.i = icmp ult ptr %.889140.i, %i.d
  br i1 %.not113.i, label %bb.ap, label %hufPackEncTable.exit.thread

bb.ap:                                            ; preds = %bb.ao
  %i.pe = sub nsw i32 8, %.8111138.i
  %i.pf = zext nneg i32 %i.pe to i64
  %i.pg = shl i64 %.4101139.i, %i.pf
  %i.ph = trunc i64 %i.pg to i8
  %i.pi = getelementptr inbounds nuw i8, ptr %.889140.i, i64 1
  store i8 %i.ph, ptr %.889140.i, align 1, !tbaa !25
  br label %hufPackEncTable.exit

hufPackEncTable.exit:                             ; preds = %bb.ap, %._crit_edge202.i, %hufBuildEncTable.exit
  %.070 = phi ptr [ %.889140.i, %._crit_edge202.i ], [ %i.c, %hufBuildEncTable.exit ], [ %i.pi, %bb.ap ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !38)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !41)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !43)
  %i.pj = load i16, ptr %3, align 2, !tbaa !7, !alias.scope !41, !noalias !45 ; 2 uses
  %.not227340.i.not = icmp eq i64 %4, 1
  br i1 %.not227340.i.not, label %.critedge247.preheader.thread.i, label %.lr.ph347.i

.lr.ph347.i:                                      ; preds = %hufPackEncTable.exit
  %i.pk = load i64, ptr %i.il, align 8, !tbaa !9, !alias.scope !38, !noalias !48 ; 3 uses
  %i.pl = zext i16 %i.pj to i32
  %i.pm = trunc i64 %i.pk to i32
  %i.pn = and i32 %i.pm, 63                       ; 3 uses
  %i.po = add nuw nsw i32 %i.pn, 8                ; 2 uses
  %i.pp = and i64 %i.pk, 63                       ; 2 uses
  %i.pq = lshr i64 %i.pk, 6                       ; 2 uses
  %i.pr = add i64 %2, %i.a                        ; 3 uses
  %11 = ptrtoint ptr %1 to i64
  %12 = add i64 %2, %11
  br label %bb.aq

bb.aq:                                            ; preds = %.loopexit268.i, %.lr.ph347.i
  %.0161346.i = phi ptr [ %.070, %.lr.ph347.i ], [ %.8169.i, %.loopexit268.i ] ; 8 uses
  %.0177345.i = phi i64 [ 0, %.lr.ph347.i ], [ %.4181.i, %.loopexit268.i ] ; 4 uses
  %.0185344.i = phi i32 [ 0, %.lr.ph347.i ], [ %.8193.i, %.loopexit268.i ] ; 4 uses
  %.0201343.i = phi i32 [ %i.pl, %.lr.ph347.i ], [ %.2203.i, %.loopexit268.i ] ; 3 uses
  %.0205342.i = phi i32 [ 0, %.lr.ph347.i ], [ %.3208.i, %.loopexit268.i ] ; 7 uses
  %.0211341.i = phi i64 [ 1, %.lr.ph347.i ], [ %i.um, %.loopexit268.i ] ; 2 uses
  %.0161346.i362 = ptrtoint ptr %.0161346.i to i64
  %i.ps = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %.0211341.i
  %i.pt = load i16, ptr %i.ps, align 2, !tbaa !7, !alias.scope !41, !noalias !45
  %i.pu = zext i16 %i.pt to i32                   ; 5 uses
  %i.pv = icmp ne i32 %.0205342.i, 255
  %.not.i54 = icmp eq i32 %.0201343.i, %i.pu
  %or.cond.i55 = select i1 %i.pv, i1 %.not.i54, i1 false
  br i1 %or.cond.i55, label %bb.ay, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.pw = zext nneg i32 %.0201343.i to i64
  %i.px = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %i.pw
  %i.py = load i64, ptr %i.px, align 8, !tbaa !9, !alias.scope !38, !noalias !48 ; 5 uses
  %i.pz = trunc i64 %i.py to i32
  %i.qa = and i32 %i.pz, 63                       ; 4 uses
  %i.qb = add nuw nsw i32 %i.qa, %i.po
  %i.qc = mul nsw i32 %i.qa, %.0205342.i
  %i.qd = icmp slt i32 %i.qb, %i.qc
  br i1 %i.qd, label %bb.as, label %.critedge239.preheader.i

.critedge239.preheader.i:                         ; preds = %bb.ar
  %i.qe = icmp sgt i32 %.0205342.i, -1
  br i1 %i.qe, label %.lr.ph321.i, label %.loopexit268.i

.lr.ph321.i:                                      ; preds = %.critedge239.preheader.i
  %i.qf = and i64 %i.py, 63
  %i.qg = lshr i64 %i.py, 6
  br label %bb.aw

bb.as:                                            ; preds = %bb.ar
  %i.qh = and i64 %i.py, 63
  %i.qi = shl i64 %.0177345.i, %i.qh
  %i.qj = lshr i64 %i.py, 6
  %i.qk = or i64 %i.qi, %i.qj                     ; 3 uses
  %i.ql = add nsw i32 %i.qa, %.0185344.i          ; 3 uses
  %i.qm = icmp slt i32 %i.ql, 8
  br i1 %i.qm, label %.critedge.i61, label %.lr.ph327.preheader.i

.lr.ph327.preheader.i:                            ; preds = %bb.as
  %i.qn = zext nneg i32 %i.ql to i64              ; 5 uses
  %i.qo = add nuw nsw i64 %i.qn, 7
  %smin361 = tail call i64 @llvm.smin.i64(i64 %i.qn, i64 15)
  %i.qp = sub nsw i64 %i.qo, %smin361
  %.fr = freeze i64 %i.qp
  %i.qq = lshr i64 %.fr, 3
  %i.qr = tail call i64 @llvm.usub.sat.i64(i64 %i.pr, i64 %.0161346.i362)
  %umin364 = tail call i64 @llvm.umin.i64(i64 %i.qq, i64 %i.qr) ; 2 uses
  %min.iters.check366 = icmp samesign ult i64 %umin364, 16
  br i1 %min.iters.check366, label %.lr.ph327.i.preheader, label %vector.ph367

vector.ph367:                                     ; preds = %.lr.ph327.preheader.i
  %i.qs = add nuw nsw i64 %umin364, 1             ; 2 uses
  %n.mod.vf368 = and i64 %i.qs, 15                ; 2 uses
  %i.qt = icmp eq i64 %n.mod.vf368, 0
  %i.qu = select i1 %i.qt, i64 16, i64 %n.mod.vf368
  %n.vec369 = sub nsw i64 %i.qs, %i.qu            ; 3 uses
  %i.qv = shl i64 %n.vec369, 3
  %i.qw = sub i64 %i.qn, %i.qv
  %i.qx = getelementptr i8, ptr %.0161346.i, i64 %n.vec369
  %broadcast.splatinsert370 = insertelement <16 x i64> poison, i64 %i.qk, i64 0
  %broadcast.splat371 = shufflevector <16 x i64> %broadcast.splatinsert370, <16 x i64> poison, <16 x i32> zeroinitializer
  %broadcast.splatinsert372 = insertelement <16 x i64> poison, i64 %i.qn, i64 0
  %broadcast.splat373 = shufflevector <16 x i64> %broadcast.splatinsert372, <16 x i64> poison, <16 x i32> zeroinitializer
  %induction374 = add nsw <16 x i64> %broadcast.splat373, <i64 0, i64 -8, i64 -16, i64 -24, i64 -32, i64 -40, i64 -48, i64 -56, i64 -64, i64 -72, i64 -80, i64 -88, i64 -96, i64 -104, i64 -112, i64 -120>
  br label %vector.body375

vector.body375:                                   ; preds = %vector.body375, %vector.ph367
  %index376 = phi i64 [ 0, %vector.ph367 ], [ %index.next379, %vector.body375 ] ; 2 uses
  %vec.ind377 = phi <16 x i64> [ %induction374, %vector.ph367 ], [ %vec.ind.next380, %vector.body375 ] ; 2 uses
  %next.gep378 = getelementptr i8, ptr %.0161346.i, i64 %index376
  %i.qy = add nsw <16 x i64> %vec.ind377, splat (i64 -8)
  %i.qz = lshr <16 x i64> %broadcast.splat371, %i.qy
  %i.ra = trunc <16 x i64> %i.qz to <16 x i8>
  store <16 x i8> %i.ra, ptr %next.gep378, align 1, !tbaa !25, !alias.scope !43, !noalias !49
  %index.next379 = add nuw i64 %index376, 16      ; 2 uses
  %vec.ind.next380 = add nsw <16 x i64> %vec.ind377, splat (i64 -128)
  %i.rb = icmp eq i64 %index.next379, %n.vec369
  br i1 %i.rb, label %.lr.ph327.i.preheader, label %vector.body375, !llvm.loop !50

.lr.ph327.i.preheader:                            ; preds = %vector.body375, %.lr.ph327.preheader.i
  %indvars.iv410.i.ph = phi i64 [ %i.qn, %.lr.ph327.preheader.i ], [ %i.qw, %vector.body375 ]
  %.1162326.i.ph = phi ptr [ %.0161346.i, %.lr.ph327.preheader.i ], [ %i.qx, %vector.body375 ]
  br label %.lr.ph327.i

.lr.ph327.i:                                      ; preds = %.lr.ph327.i.preheader, %bb.at
  %indvars.iv410.i = phi i64 [ %indvars.iv.next411.i, %bb.at ], [ %indvars.iv410.i.ph, %.lr.ph327.i.preheader ] ; 2 uses
  %.1162326.i = phi ptr [ %i.re, %bb.at ], [ %.1162326.i.ph, %.lr.ph327.i.preheader ] ; 3 uses
  %.not224.i = icmp ult ptr %.1162326.i, %i.d
  br i1 %.not224.i, label %bb.at, label %hufPackEncTable.exit.thread, !prof !29

bb.at:                                            ; preds = %.lr.ph327.i
  %indvars.iv.next411.i = add nsw i64 %indvars.iv410.i, -8 ; 3 uses
  %i.rc = lshr i64 %i.qk, %indvars.iv.next411.i
  %i.rd = trunc i64 %i.rc to i8
  %i.re = getelementptr inbounds nuw i8, ptr %.1162326.i, i64 1 ; 2 uses
  store i8 %i.rd, ptr %.1162326.i, align 1, !tbaa !25, !alias.scope !43, !noalias !49
  %i.rf = icmp slt i64 %indvars.iv410.i, 16
  br i1 %i.rf, label %.critedge.loopexit.i60, label %.lr.ph327.i, !llvm.loop !51

.critedge.loopexit.i60:                           ; preds = %bb.at
  %i.rg = trunc nuw nsw i64 %indvars.iv.next411.i to i32
  br label %.critedge.i61

.critedge.i61:                                    ; preds = %.critedge.loopexit.i60, %bb.as
  %.1186.lcssa.i = phi i32 [ %i.ql, %bb.as ], [ %i.rg, %.critedge.loopexit.i60 ]
  %.1162.lcssa.i = phi ptr [ %.0161346.i, %bb.as ], [ %i.re, %.critedge.loopexit.i60 ] ; 6 uses
  %i.rh = shl i64 %i.qk, %i.pp
  %i.ri = or i64 %i.rh, %i.pq                     ; 4 uses
  %i.rj = add nsw i32 %.1186.lcssa.i, %i.pn
  %.fr505 = freeze i32 %i.rj                      ; 4 uses
  %i.rk = icmp slt i32 %.fr505, 8
  br i1 %i.rk, label %.critedge235.i, label %.lr.ph332.preheader.i

.lr.ph332.preheader.i:                            ; preds = %.critedge.i61
  %.1162.lcssa.i339 = ptrtoint ptr %.1162.lcssa.i to i64
  %i.rl = zext nneg i32 %.fr505 to i64            ; 4 uses
  %i.rm = tail call i64 @llvm.usub.sat.i64(i64 %i.rl, i64 15)
  %i.rn = add nuw nsw i64 %i.rm, 7
  %i.ro = lshr i64 %i.rn, 3
  %i.rp = tail call i64 @llvm.usub.sat.i64(i64 %i.pr, i64 %.1162.lcssa.i339)
  %umin341 = tail call i64 @llvm.umin.i64(i64 %i.ro, i64 %i.rp) ; 2 uses
  %min.iters.check343 = icmp samesign ult i64 %umin341, 16
  br i1 %min.iters.check343, label %.lr.ph332.i.preheader, label %vector.ph344

vector.ph344:                                     ; preds = %.lr.ph332.preheader.i
  %i.rq = add nuw nsw i64 %umin341, 1             ; 2 uses
  %n.mod.vf345 = and i64 %i.rq, 15                ; 2 uses
  %i.rr = icmp eq i64 %n.mod.vf345, 0
  %i.rs = select i1 %i.rr, i64 16, i64 %n.mod.vf345
  %n.vec346 = sub nsw i64 %i.rq, %i.rs            ; 3 uses
  %i.rt = shl i64 %n.vec346, 3
  %i.ru = sub i64 %i.rl, %i.rt
  %i.rv = getelementptr i8, ptr %.1162.lcssa.i, i64 %n.vec346
  %broadcast.splatinsert347 = insertelement <16 x i64> poison, i64 %i.ri, i64 0
  %broadcast.splat348 = shufflevector <16 x i64> %broadcast.splatinsert347, <16 x i64> poison, <16 x i32> zeroinitializer
  %broadcast.splatinsert349 = insertelement <16 x i64> poison, i64 %i.rl, i64 0
  %broadcast.splat350 = shufflevector <16 x i64> %broadcast.splatinsert349, <16 x i64> poison, <16 x i32> zeroinitializer
  %induction351 = add nsw <16 x i64> %broadcast.splat350, <i64 0, i64 -8, i64 -16, i64 -24, i64 -32, i64 -40, i64 -48, i64 -56, i64 -64, i64 -72, i64 -80, i64 -88, i64 -96, i64 -104, i64 -112, i64 -120>
  br label %vector.body352

vector.body352:                                   ; preds = %vector.body352, %vector.ph344
  %index353 = phi i64 [ 0, %vector.ph344 ], [ %index.next356, %vector.body352 ] ; 2 uses
  %vec.ind354 = phi <16 x i64> [ %induction351, %vector.ph344 ], [ %vec.ind.next357, %vector.body352 ] ; 2 uses
  %next.gep355 = getelementptr i8, ptr %.1162.lcssa.i, i64 %index353
  %i.rw = add nsw <16 x i64> %vec.ind354, splat (i64 -8)
  %i.rx = lshr <16 x i64> %broadcast.splat348, %i.rw
  %i.ry = trunc <16 x i64> %i.rx to <16 x i8>
  store <16 x i8> %i.ry, ptr %next.gep355, align 1, !tbaa !25, !alias.scope !43, !noalias !49
  %index.next356 = add nuw i64 %index353, 16      ; 2 uses
  %vec.ind.next357 = add nsw <16 x i64> %vec.ind354, splat (i64 -128)
  %i.rz = icmp eq i64 %index.next356, %n.vec346
  br i1 %i.rz, label %.lr.ph332.i.preheader, label %vector.body352, !llvm.loop !52

.lr.ph332.i.preheader:                            ; preds = %vector.body352, %.lr.ph332.preheader.i
  %indvars.iv413.i.ph = phi i64 [ %i.rl, %.lr.ph332.preheader.i ], [ %i.ru, %vector.body352 ]
  %.2163331.i.ph = phi ptr [ %.1162.lcssa.i, %.lr.ph332.preheader.i ], [ %i.rv, %vector.body352 ]
  br label %.lr.ph332.i

.lr.ph332.i:                                      ; preds = %.lr.ph332.i.preheader, %bb.au
  %indvars.iv413.i = phi i64 [ %indvars.iv.next414.i, %bb.au ], [ %indvars.iv413.i.ph, %.lr.ph332.i.preheader ] ; 2 uses
  %.2163331.i = phi ptr [ %i.sc, %bb.au ], [ %.2163331.i.ph, %.lr.ph332.i.preheader ] ; 3 uses
  %.not225.i = icmp ult ptr %.2163331.i, %i.d
  br i1 %.not225.i, label %bb.au, label %hufPackEncTable.exit.thread, !prof !29

bb.au:                                            ; preds = %.lr.ph332.i
  %indvars.iv.next414.i = add nsw i64 %indvars.iv413.i, -8 ; 3 uses
  %i.sa = lshr i64 %i.ri, %indvars.iv.next414.i
  %i.sb = trunc i64 %i.sa to i8
  %i.sc = getelementptr inbounds nuw i8, ptr %.2163331.i, i64 1 ; 2 uses
  store i8 %i.sb, ptr %.2163331.i, align 1, !tbaa !25, !alias.scope !43, !noalias !49
  %i.sd = icmp samesign ult i64 %indvars.iv413.i, 16
  br i1 %i.sd, label %.critedge235.thread.i, label %.lr.ph332.i, !llvm.loop !53

.critedge235.thread.i:                            ; preds = %bb.au
  %i.se = trunc nuw nsw i64 %indvars.iv.next414.i to i32
  %i.sf = shl i64 %i.ri, 8
  %i.sg = sext i32 %.0205342.i to i64
  %i.sh = or i64 %i.sf, %i.sg
  %i.si = add nuw nsw i32 %i.se, 8
  br label %.lr.ph337.preheader.i

.critedge235.i:                                   ; preds = %.critedge.i61
  %i.sj = shl i64 %i.ri, 8
  %i.sk = sext i32 %.0205342.i to i64
  %i.sl = or i64 %i.sj, %i.sk                     ; 2 uses
  %i.sm = add nsw i32 %.fr505, 8                  ; 2 uses
  %i.sn = icmp slt i32 %.fr505, 0
  br i1 %i.sn, label %.loopexit268.i, label %.lr.ph337.preheader.i

.lr.ph337.preheader.i:                            ; preds = %.critedge235.i, %.critedge235.thread.i
  %i.so = phi i32 [ %i.si, %.critedge235.thread.i ], [ %i.sm, %.critedge235.i ] ; 3 uses
  %i.sp = phi i64 [ %i.sh, %.critedge235.thread.i ], [ %i.sl, %.critedge235.i ] ; 3 uses
  %.2163.lcssa450.i = phi ptr [ %i.sc, %.critedge235.thread.i ], [ %.1162.lcssa.i, %.critedge235.i ] ; 4 uses
  %.2163.lcssa450.i316 = ptrtoint ptr %.2163.lcssa450.i to i64
  %i.sq = zext nneg i32 %i.so to i64              ; 3 uses
  %i.sr = add i32 %i.so, 7
  %smin315 = tail call i32 @llvm.smin.i32(i32 %i.so, i32 15)
  %i.ss = sub i32 %i.sr, %smin315
  %.fr507 = freeze i32 %i.ss
  %i.st = lshr i32 %.fr507, 3
  %i.su = zext nneg i32 %i.st to i64
  %i.sv = tail call i64 @llvm.usub.sat.i64(i64 %i.pr, i64 %.2163.lcssa450.i316)
  %umin318 = tail call i64 @llvm.umin.i64(i64 %i.su, i64 %i.sv) ; 2 uses
  %min.iters.check320 = icmp samesign ult i64 %umin318, 16
  br i1 %min.iters.check320, label %.lr.ph337.i.preheader, label %vector.ph321

vector.ph321:                                     ; preds = %.lr.ph337.preheader.i
  %i.sw = add nuw nsw i64 %umin318, 1             ; 2 uses
  %n.mod.vf322 = and i64 %i.sw, 15                ; 2 uses
  %i.sx = icmp eq i64 %n.mod.vf322, 0
  %i.sy = select i1 %i.sx, i64 16, i64 %n.mod.vf322
  %n.vec323 = sub nsw i64 %i.sw, %i.sy            ; 3 uses
  %i.sz = shl nsw i64 %n.vec323, 3
  %i.ta = sub nsw i64 %i.sq, %i.sz
  %i.tb = getelementptr i8, ptr %.2163.lcssa450.i, i64 %n.vec323
  %broadcast.splatinsert324 = insertelement <16 x i64> poison, i64 %i.sp, i64 0
  %broadcast.splat325 = shufflevector <16 x i64> %broadcast.splatinsert324, <16 x i64> poison, <16 x i32> zeroinitializer
  %broadcast.splatinsert326 = insertelement <16 x i64> poison, i64 %i.sq, i64 0
  %broadcast.splat327 = shufflevector <16 x i64> %broadcast.splatinsert326, <16 x i64> poison, <16 x i32> zeroinitializer
  %induction328 = add nsw <16 x i64> %broadcast.splat327, <i64 0, i64 -8, i64 -16, i64 -24, i64 -32, i64 -40, i64 -48, i64 -56, i64 -64, i64 -72, i64 -80, i64 -88, i64 -96, i64 -104, i64 -112, i64 -120>
  br label %vector.body329

vector.body329:                                   ; preds = %vector.body329, %vector.ph321
  %index330 = phi i64 [ 0, %vector.ph321 ], [ %index.next333, %vector.body329 ] ; 2 uses
  %vec.ind331 = phi <16 x i64> [ %induction328, %vector.ph321 ], [ %vec.ind.next334, %vector.body329 ] ; 2 uses
  %next.gep332 = getelementptr i8, ptr %.2163.lcssa450.i, i64 %index330
  %i.tc = add nsw <16 x i64> %vec.ind331, splat (i64 -8)
  %i.td = lshr <16 x i64> %broadcast.splat325, %i.tc
  %i.te = trunc <16 x i64> %i.td to <16 x i8>
  store <16 x i8> %i.te, ptr %next.gep332, align 1, !tbaa !25, !alias.scope !43, !noalias !49
  %index.next333 = add nuw i64 %index330, 16      ; 2 uses
  %vec.ind.next334 = add nsw <16 x i64> %vec.ind331, splat (i64 -128)
  %i.tf = icmp eq i64 %index.next333, %n.vec323
  br i1 %i.tf, label %.lr.ph337.i.preheader, label %vector.body329, !llvm.loop !54

.lr.ph337.i.preheader:                            ; preds = %vector.body329, %.lr.ph337.preheader.i
  %indvars.iv416.i.ph = phi i64 [ %i.sq, %.lr.ph337.preheader.i ], [ %i.ta, %vector.body329 ]
  %.3164336.i.ph = phi ptr [ %.2163.lcssa450.i, %.lr.ph337.preheader.i ], [ %i.tb, %vector.body329 ]
  br label %.lr.ph337.i

.lr.ph337.i:                                      ; preds = %.lr.ph337.i.preheader, %bb.av
  %indvars.iv416.i = phi i64 [ %i.tg, %bb.av ], [ %indvars.iv416.i.ph, %.lr.ph337.i.preheader ] ; 2 uses
  %.3164336.i = phi ptr [ %i.tj, %bb.av ], [ %.3164336.i.ph, %.lr.ph337.i.preheader ] ; 3 uses
  %.not226.i = icmp ult ptr %.3164336.i, %i.d
  br i1 %.not226.i, label %bb.av, label %hufPackEncTable.exit.thread, !prof !29

bb.av:                                            ; preds = %.lr.ph337.i
  %i.tg = add nsw i64 %indvars.iv416.i, -8        ; 3 uses
  %i.th = lshr i64 %i.sp, %i.tg
  %i.ti = trunc i64 %i.th to i8
  %i.tj = getelementptr inbounds nuw i8, ptr %.3164336.i, i64 1 ; 2 uses
  store i8 %i.ti, ptr %.3164336.i, align 1, !tbaa !25, !alias.scope !43, !noalias !49
  %i.tk = trunc nuw i64 %indvars.iv416.i to i32
  %i.tl = icmp slt i32 %i.tk, 16
  br i1 %i.tl, label %.loopexit268.loopexit.i, label %.lr.ph337.i, !llvm.loop !55

.critedge239.loopexit.loopexit.i:                 ; preds = %bb.ax
  %i.tm = trunc nuw nsw i64 %indvars.iv.next.i59 to i32
  br label %.critedge239.loopexit.i

.critedge239.loopexit.i:                          ; preds = %bb.aw, %.critedge239.loopexit.loopexit.i
  %.5190.lcssa.i = phi i32 [ %i.tr, %bb.aw ], [ %i.tm, %.critedge239.loopexit.loopexit.i ] ; 2 uses
  %.5166.lcssa.i = phi ptr [ %.4165320.i, %bb.aw ], [ %i.ui, %.critedge239.loopexit.loopexit.i ] ; 2 uses
  %i.tn = icmp sgt i32 %.in.i, 0
  br i1 %i.tn, label %bb.aw, label %.loopexit268.i

bb.aw:                                            ; preds = %.critedge239.loopexit.i, %.lr.ph321.i
  %.in.i = phi i32 [ %.0205342.i, %.lr.ph321.i ], [ %i.to, %.critedge239.loopexit.i ] ; 2 uses
  %.4165320.i = phi ptr [ %.0161346.i, %.lr.ph321.i ], [ %.5166.lcssa.i, %.critedge239.loopexit.i ] ; 5 uses
  %.1178319.i = phi i64 [ %.0177345.i, %.lr.ph321.i ], [ %i.tq, %.critedge239.loopexit.i ]
  %.4189318.i = phi i32 [ %.0185344.i, %.lr.ph321.i ], [ %.5190.lcssa.i, %.critedge239.loopexit.i ]
  %i.to = add nsw i32 %.in.i, -1
  %i.tp = shl i64 %.1178319.i, %i.qf
  %i.tq = or i64 %i.tp, %i.qg                     ; 4 uses
  %i.tr = add nsw i32 %.4189318.i, %i.qa          ; 3 uses
  %i.ts = icmp slt i32 %i.tr, 8
  br i1 %i.ts, label %.critedge239.loopexit.i, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.aw
  %i.tt = zext nneg i32 %i.tr to i64              ; 5 uses
  %13 = tail call i64 @llvm.smin.i64(i64 %i.tt, i64 15)
  %14 = sub nsw i64 %i.tt, %13
  %15 = add nuw nsw i64 %14, 7
  %i.tu = lshr i64 %15, 3
  %16 = ptrtoint ptr %.4165320.i to i64
  %i.tv = tail call i64 @llvm.usub.sat.i64(i64 %12, i64 %16)
  %umin387 = tail call i64 @llvm.umin.i64(i64 %i.tu, i64 %i.tv) ; 2 uses
  %min.iters.check389 = icmp samesign ult i64 %umin387, 16
  br i1 %min.iters.check389, label %.lr.ph.i57.preheader, label %vector.ph390

vector.ph390:                                     ; preds = %.lr.ph.preheader.i
  %i.tw = add nuw nsw i64 %umin387, 1             ; 2 uses
  %n.mod.vf391 = and i64 %i.tw, 15                ; 2 uses
  %i.tx = icmp eq i64 %n.mod.vf391, 0
  %i.ty = select i1 %i.tx, i64 16, i64 %n.mod.vf391
  %n.vec392 = sub nsw i64 %i.tw, %i.ty            ; 3 uses
  %i.tz = shl i64 %n.vec392, 3
  %i.ua = sub i64 %i.tt, %i.tz
  %i.ub = getelementptr i8, ptr %.4165320.i, i64 %n.vec392
  %broadcast.splatinsert393 = insertelement <16 x i64> poison, i64 %i.tq, i64 0
  %broadcast.splat394 = shufflevector <16 x i64> %broadcast.splatinsert393, <16 x i64> poison, <16 x i32> zeroinitializer
  %broadcast.splatinsert395 = insertelement <16 x i64> poison, i64 %i.tt, i64 0
  %broadcast.splat396 = shufflevector <16 x i64> %broadcast.splatinsert395, <16 x i64> poison, <16 x i32> zeroinitializer
  %induction397 = add nsw <16 x i64> %broadcast.splat396, <i64 0, i64 -8, i64 -16, i64 -24, i64 -32, i64 -40, i64 -48, i64 -56, i64 -64, i64 -72, i64 -80, i64 -88, i64 -96, i64 -104, i64 -112, i64 -120>
  br label %vector.body398

vector.body398:                                   ; preds = %vector.body398, %vector.ph390
  %index399 = phi i64 [ 0, %vector.ph390 ], [ %index.next402, %vector.body398 ] ; 2 uses
  %vec.ind400 = phi <16 x i64> [ %induction397, %vector.ph390 ], [ %vec.ind.next403, %vector.body398 ] ; 2 uses
  %next.gep401 = getelementptr i8, ptr %.4165320.i, i64 %index399
  %i.uc = add nsw <16 x i64> %vec.ind400, splat (i64 -8)
  %i.ud = lshr <16 x i64> %broadcast.splat394, %i.uc
  %i.ue = trunc <16 x i64> %i.ud to <16 x i8>
  store <16 x i8> %i.ue, ptr %next.gep401, align 1, !tbaa !25, !alias.scope !43, !noalias !49
  %index.next402 = add nuw i64 %index399, 16      ; 2 uses
  %vec.ind.next403 = add nsw <16 x i64> %vec.ind400, splat (i64 -128)
  %i.uf = icmp eq i64 %index.next402, %n.vec392
  br i1 %i.uf, label %.lr.ph.i57.preheader, label %vector.body398, !llvm.loop !56

.lr.ph.i57.preheader:                             ; preds = %vector.body398, %.lr.ph.preheader.i
  %indvars.iv.i58.ph = phi i64 [ %i.tt, %.lr.ph.preheader.i ], [ %i.ua, %vector.body398 ]
  %.5166316.i.ph = phi ptr [ %.4165320.i, %.lr.ph.preheader.i ], [ %i.ub, %vector.body398 ]
  br label %.lr.ph.i57

.lr.ph.i57:                                       ; preds = %.lr.ph.i57.preheader, %bb.ax
  %indvars.iv.i58 = phi i64 [ %indvars.iv.next.i59, %bb.ax ], [ %indvars.iv.i58.ph, %.lr.ph.i57.preheader ] ; 2 uses
  %.5166316.i = phi ptr [ %i.ui, %bb.ax ], [ %.5166316.i.ph, %.lr.ph.i57.preheader ] ; 3 uses
  %.not223.i = icmp ult ptr %.5166316.i, %i.d
  br i1 %.not223.i, label %bb.ax, label %hufPackEncTable.exit.thread, !prof !29, !llvm.loop !57

bb.ax:                                            ; preds = %.lr.ph.i57
  %indvars.iv.next.i59 = add nsw i64 %indvars.iv.i58, -8 ; 3 uses
  %i.ug = lshr i64 %i.tq, %indvars.iv.next.i59
  %i.uh = trunc i64 %i.ug to i8
  %i.ui = getelementptr inbounds nuw i8, ptr %.5166316.i, i64 1 ; 2 uses
  store i8 %i.uh, ptr %.5166316.i, align 1, !tbaa !25, !alias.scope !43, !noalias !49
  %i.uj = icmp slt i64 %indvars.iv.i58, 16
  br i1 %i.uj, label %.critedge239.loopexit.loopexit.i, label %.lr.ph.i57, !llvm.loop !58

bb.ay:                                            ; preds = %bb.aq
  %i.uk = add nsw i32 %.0205342.i, 1
  br label %.loopexit268.i

.loopexit268.loopexit.i:                          ; preds = %bb.av
  %i.ul = trunc i64 %i.tg to i32
  br label %.loopexit268.i

.loopexit268.i:                                   ; preds = %.critedge239.loopexit.i, %.loopexit268.loopexit.i, %bb.ay, %.critedge235.i, %.critedge239.preheader.i
  %.3208.i = phi i32 [ 0, %.critedge235.i ], [ %i.uk, %bb.ay ], [ 0, %.critedge239.preheader.i ], [ 0, %.loopexit268.loopexit.i ], [ 0, %.critedge239.loopexit.i ] ; 6 uses
  %.2203.i = phi i32 [ %i.pu, %.critedge235.i ], [ %.0201343.i, %bb.ay ], [ %i.pu, %.critedge239.preheader.i ], [ %i.pu, %.loopexit268.loopexit.i ], [ %i.pu, %.critedge239.loopexit.i ] ; 2 uses
  %.8193.i = phi i32 [ %i.sm, %.critedge235.i ], [ %.0185344.i, %bb.ay ], [ %.0185344.i, %.critedge239.preheader.i ], [ %i.ul, %.loopexit268.loopexit.i ], [ %.5190.lcssa.i, %.critedge239.loopexit.i ] ; 4 uses
  %.4181.i = phi i64 [ %i.sl, %.critedge235.i ], [ %.0177345.i, %bb.ay ], [ %.0177345.i, %.critedge239.preheader.i ], [ %i.sp, %.loopexit268.loopexit.i ], [ %i.tq, %.critedge239.loopexit.i ] ; 4 uses
  %.8169.i = phi ptr [ %.1162.lcssa.i, %.critedge235.i ], [ %.0161346.i, %bb.ay ], [ %.0161346.i, %.critedge239.preheader.i ], [ %i.tj, %.loopexit268.loopexit.i ], [ %.5166.lcssa.i, %.critedge239.loopexit.i ] ; 8 uses
  %i.um = add nuw i64 %.0211341.i, 1              ; 2 uses
  %exitcond.not.i56 = icmp eq i64 %i.um, %4
  br i1 %exitcond.not.i56, label %.thread254.i, label %bb.aq, !llvm.loop !59

.thread254.i:                                     ; preds = %.loopexit268.i
  %.8169.i408.le = ptrtoint ptr %.8169.i to i64
  %i.un = zext nneg i32 %.2203.i to i64
  %i.uo = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %i.un
  %i.up = load i64, ptr %i.uo, align 8, !tbaa !9, !alias.scope !38, !noalias !48 ; 4 uses
  %i.uq = trunc i64 %i.up to i32
  %i.ur = and i32 %i.uq, 63                       ; 4 uses
  %i.us = add nuw nsw i32 %i.ur, %i.po
  %i.ut = mul nsw i32 %i.ur, %.3208.i
  %i.uu = icmp slt i32 %i.us, %i.ut
  br i1 %i.uu, label %bb.az, label %.critedge247.preheader.i

.critedge247.preheader.thread.i:                  ; preds = %hufPackEncTable.exit
  %i.uv = zext i16 %i.pj to i64
  %i.uw = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %i.uv
  %i.ux = load i64, ptr %i.uw, align 8, !tbaa !9, !alias.scope !38, !noalias !48 ; 2 uses
  %i.uy = trunc i64 %i.ux to i32
  %i.uz = and i32 %i.uy, 63
  br label %.lr.ph361.i

.critedge247.preheader.i:                         ; preds = %.thread254.i
  %i.va = icmp sgt i32 %.3208.i, -1
  br i1 %i.va, label %.lr.ph361.i, label %.critedge245.i

.lr.ph361.i:                                      ; preds = %.critedge247.preheader.i, %.critedge247.preheader.thread.i
  %.0205.lcssa460474.i = phi i32 [ 0, %.critedge247.preheader.thread.i ], [ %.3208.i, %.critedge247.preheader.i ]
  %.0185.lcssa462473.i = phi i32 [ 0, %.critedge247.preheader.thread.i ], [ %.8193.i, %.critedge247.preheader.i ]
  %.0177.lcssa464472.i = phi i64 [ 0, %.critedge247.preheader.thread.i ], [ %.4181.i, %.critedge247.preheader.i ]
  %.0161.lcssa465471.i = phi ptr [ %.070, %.critedge247.preheader.thread.i ], [ %.8169.i, %.critedge247.preheader.i ]
  %i.vb = phi i64 [ %i.ux, %.critedge247.preheader.thread.i ], [ %i.up, %.critedge247.preheader.i ] ; 2 uses
  %i.vc = phi i32 [ %i.uz, %.critedge247.preheader.thread.i ], [ %i.ur, %.critedge247.preheader.i ]
  %i.vd = and i64 %i.vb, 63
  %i.ve = lshr i64 %i.vb, 6
  %i.vf = add i64 %2, %i.a
  br label %bb.bd

bb.az:                                            ; preds = %.thread254.i
  %i.vg = and i64 %i.up, 63
  %i.vh = shl i64 %.4181.i, %i.vg
  %i.vi = lshr i64 %i.up, 6
  %i.vj = or i64 %i.vh, %i.vi                     ; 3 uses
  %i.vk = add nsw i32 %i.ur, %.8193.i             ; 3 uses
  %i.vl = icmp slt i32 %i.vk, 8
  br i1 %i.vl, label %.critedge241.i, label %.lr.ph367.preheader.i

.lr.ph367.preheader.i:                            ; preds = %bb.az
  %i.vm = zext nneg i32 %i.vk to i64              ; 5 uses
  %i.vn = add nuw nsw i64 %i.vm, 7
  %smin407 = tail call i64 @llvm.smin.i64(i64 %i.vm, i64 15)
  %i.vo = sub nsw i64 %i.vn, %smin407
  %.fr508 = freeze i64 %i.vo
  %i.vp = lshr i64 %.fr508, 3
  %i.vq = add i64 %2, %i.a
  %i.vr = tail call i64 @llvm.usub.sat.i64(i64 %i.vq, i64 %.8169.i408.le)
  %umin410 = tail call i64 @llvm.umin.i64(i64 %i.vp, i64 %i.vr) ; 2 uses
  %min.iters.check412 = icmp samesign ult i64 %umin410, 16
  br i1 %min.iters.check412, label %.lr.ph367.i.preheader, label %vector.ph413

vector.ph413:                                     ; preds = %.lr.ph367.preheader.i
  %i.vs = add nuw nsw i64 %umin410, 1             ; 2 uses
  %n.mod.vf414 = and i64 %i.vs, 15                ; 2 uses
  %i.vt = icmp eq i64 %n.mod.vf414, 0
  %i.vu = select i1 %i.vt, i64 16, i64 %n.mod.vf414
  %n.vec415 = sub nsw i64 %i.vs, %i.vu            ; 3 uses
  %i.vv = shl i64 %n.vec415, 3
  %i.vw = sub i64 %i.vm, %i.vv
  %i.vx = getelementptr i8, ptr %.8169.i, i64 %n.vec415
  %broadcast.splatinsert416 = insertelement <16 x i64> poison, i64 %i.vj, i64 0
  %broadcast.splat417 = shufflevector <16 x i64> %broadcast.splatinsert416, <16 x i64> poison, <16 x i32> zeroinitializer
  %broadcast.splatinsert418 = insertelement <16 x i64> poison, i64 %i.vm, i64 0
  %broadcast.splat419 = shufflevector <16 x i64> %broadcast.splatinsert418, <16 x i64> poison, <16 x i32> zeroinitializer
  %induction420 = add nsw <16 x i64> %broadcast.splat419, <i64 0, i64 -8, i64 -16, i64 -24, i64 -32, i64 -40, i64 -48, i64 -56, i64 -64, i64 -72, i64 -80, i64 -88, i64 -96, i64 -104, i64 -112, i64 -120>
  br label %vector.body421

vector.body421:                                   ; preds = %vector.body421, %vector.ph413
  %index422 = phi i64 [ 0, %vector.ph413 ], [ %index.next425, %vector.body421 ] ; 2 uses
  %vec.ind423 = phi <16 x i64> [ %induction420, %vector.ph413 ], [ %vec.ind.next426, %vector.body421 ] ; 2 uses
  %next.gep424 = getelementptr i8, ptr %.8169.i, i64 %index422
  %i.vy = add nsw <16 x i64> %vec.ind423, splat (i64 -8)
  %i.vz = lshr <16 x i64> %broadcast.splat417, %i.vy
  %i.wa = trunc <16 x i64> %i.vz to <16 x i8>
  store <16 x i8> %i.wa, ptr %next.gep424, align 1, !tbaa !25, !alias.scope !43, !noalias !49
  %index.next425 = add nuw i64 %index422, 16      ; 2 uses
  %vec.ind.next426 = add nsw <16 x i64> %vec.ind423, splat (i64 -128)
  %i.wb = icmp eq i64 %index.next425, %n.vec415
  br i1 %i.wb, label %.lr.ph367.i.preheader, label %vector.body421, !llvm.loop !60

.lr.ph367.i.preheader:                            ; preds = %vector.body421, %.lr.ph367.preheader.i
  %indvars.iv422.i.ph = phi i64 [ %i.vm, %.lr.ph367.preheader.i ], [ %i.vw, %vector.body421 ]
  %.10171366.i.ph = phi ptr [ %.8169.i, %.lr.ph367.preheader.i ], [ %i.vx, %vector.body421 ]
  br label %.lr.ph367.i

.lr.ph367.i:                                      ; preds = %.lr.ph367.i.preheader, %bb.ba
  %indvars.iv422.i = phi i64 [ %indvars.iv.next423.i, %bb.ba ], [ %indvars.iv422.i.ph, %.lr.ph367.i.preheader ] ; 2 uses
  %.10171366.i = phi ptr [ %i.we, %bb.ba ], [ %.10171366.i.ph, %.lr.ph367.i.preheader ] ; 3 uses
  %.not229.i = icmp ult ptr %.10171366.i, %i.d
  br i1 %.not229.i, label %bb.ba, label %hufPackEncTable.exit.thread, !prof !29

bb.ba:                                            ; preds = %.lr.ph367.i
  %indvars.iv.next423.i = add nsw i64 %indvars.iv422.i, -8 ; 3 uses
  %i.wc = lshr i64 %i.vj, %indvars.iv.next423.i
  %i.wd = trunc i64 %i.wc to i8
  %i.we = getelementptr inbounds nuw i8, ptr %.10171366.i, i64 1 ; 2 uses
  store i8 %i.wd, ptr %.10171366.i, align 1, !tbaa !25, !alias.scope !43, !noalias !49
  %i.wf = icmp slt i64 %indvars.iv422.i, 16
  br i1 %i.wf, label %.critedge241.loopexit.i, label %.lr.ph367.i, !llvm.loop !61

.critedge241.loopexit.i:                          ; preds = %bb.ba
  %i.wg = trunc nuw nsw i64 %indvars.iv.next423.i to i32
  br label %.critedge241.i

.critedge241.i:                                   ; preds = %.critedge241.loopexit.i, %bb.az
  %.10195.lcssa.i = phi i32 [ %i.vk, %bb.az ], [ %i.wg, %.critedge241.loopexit.i ]
  %.10171.lcssa.i = phi ptr [ %.8169.i, %bb.az ], [ %i.we, %.critedge241.loopexit.i ] ; 6 uses
  %i.wh = shl i64 %i.vj, %i.pp
  %i.wi = or i64 %i.wh, %i.pq                     ; 4 uses
  %i.wj = add nsw i32 %.10195.lcssa.i, %i.pn      ; 4 uses
  %i.wk = icmp slt i32 %i.wj, 8
  br i1 %i.wk, label %.critedge243.i, label %.lr.ph372.preheader.i

.lr.ph372.preheader.i:                            ; preds = %.critedge241.i
  %.10171.lcssa.i431 = ptrtoint ptr %.10171.lcssa.i to i64
  %i.wl = zext nneg i32 %i.wj to i64              ; 5 uses
  %i.wm = add nuw nsw i64 %i.wl, 7
  %smin430 = tail call i64 @llvm.smin.i64(i64 %i.wl, i64 15)
  %i.wn = sub nsw i64 %i.wm, %smin430
  %.fr509 = freeze i64 %i.wn
  %i.wo = lshr i64 %.fr509, 3
  %i.wp = add i64 %2, %i.a
  %i.wq = tail call i64 @llvm.usub.sat.i64(i64 %i.wp, i64 %.10171.lcssa.i431)
  %umin433 = tail call i64 @llvm.umin.i64(i64 %i.wo, i64 %i.wq) ; 2 uses
  %min.iters.check435 = icmp samesign ult i64 %umin433, 16
  br i1 %min.iters.check435, label %.lr.ph372.i.preheader, label %vector.ph436

vector.ph436:                                     ; preds = %.lr.ph372.preheader.i
  %i.wr = add nuw nsw i64 %umin433, 1             ; 2 uses
  %n.mod.vf437 = and i64 %i.wr, 15                ; 2 uses
  %i.ws = icmp eq i64 %n.mod.vf437, 0
  %i.wt = select i1 %i.ws, i64 16, i64 %n.mod.vf437
  %n.vec438 = sub nsw i64 %i.wr, %i.wt            ; 3 uses
  %i.wu = shl i64 %n.vec438, 3
  %i.wv = sub i64 %i.wl, %i.wu
  %i.ww = getelementptr i8, ptr %.10171.lcssa.i, i64 %n.vec438
  %broadcast.splatinsert439 = insertelement <16 x i64> poison, i64 %i.wi, i64 0
  %broadcast.splat440 = shufflevector <16 x i64> %broadcast.splatinsert439, <16 x i64> poison, <16 x i32> zeroinitializer
  %broadcast.splatinsert441 = insertelement <16 x i64> poison, i64 %i.wl, i64 0
  %broadcast.splat442 = shufflevector <16 x i64> %broadcast.splatinsert441, <16 x i64> poison, <16 x i32> zeroinitializer
  %induction443 = add nsw <16 x i64> %broadcast.splat442, <i64 0, i64 -8, i64 -16, i64 -24, i64 -32, i64 -40, i64 -48, i64 -56, i64 -64, i64 -72, i64 -80, i64 -88, i64 -96, i64 -104, i64 -112, i64 -120>
  br label %vector.body444

vector.body444:                                   ; preds = %vector.body444, %vector.ph436
  %index445 = phi i64 [ 0, %vector.ph436 ], [ %index.next448, %vector.body444 ] ; 2 uses
  %vec.ind446 = phi <16 x i64> [ %induction443, %vector.ph436 ], [ %vec.ind.next449, %vector.body444 ] ; 2 uses
  %next.gep447 = getelementptr i8, ptr %.10171.lcssa.i, i64 %index445
  %i.wx = add nsw <16 x i64> %vec.ind446, splat (i64 -8)
  %i.wy = lshr <16 x i64> %broadcast.splat440, %i.wx
  %i.wz = trunc <16 x i64> %i.wy to <16 x i8>
  store <16 x i8> %i.wz, ptr %next.gep447, align 1, !tbaa !25, !alias.scope !43, !noalias !49
  %index.next448 = add nuw i64 %index445, 16      ; 2 uses
  %vec.ind.next449 = add nsw <16 x i64> %vec.ind446, splat (i64 -128)
  %i.xa = icmp eq i64 %index.next448, %n.vec438
  br i1 %i.xa, label %.lr.ph372.i.preheader, label %vector.body444, !llvm.loop !62

.lr.ph372.i.preheader:                            ; preds = %vector.body444, %.lr.ph372.preheader.i
  %indvars.iv425.i.ph = phi i64 [ %i.wl, %.lr.ph372.preheader.i ], [ %i.wv, %vector.body444 ]
  %.11172371.i.ph = phi ptr [ %.10171.lcssa.i, %.lr.ph372.preheader.i ], [ %i.ww, %vector.body444 ]
  br label %.lr.ph372.i

.lr.ph372.i:                                      ; preds = %.lr.ph372.i.preheader, %bb.bb
  %indvars.iv425.i = phi i64 [ %indvars.iv.next426.i, %bb.bb ], [ %indvars.iv425.i.ph, %.lr.ph372.i.preheader ] ; 2 uses
  %.11172371.i = phi ptr [ %i.xd, %bb.bb ], [ %.11172371.i.ph, %.lr.ph372.i.preheader ] ; 3 uses
  %.not230.i = icmp ult ptr %.11172371.i, %i.d
  br i1 %.not230.i, label %bb.bb, label %hufPackEncTable.exit.thread, !prof !29

bb.bb:                                            ; preds = %.lr.ph372.i
  %indvars.iv.next426.i = add nsw i64 %indvars.iv425.i, -8 ; 3 uses
  %i.xb = lshr i64 %i.wi, %indvars.iv.next426.i
  %i.xc = trunc i64 %i.xb to i8
  %i.xd = getelementptr inbounds nuw i8, ptr %.11172371.i, i64 1 ; 2 uses
  store i8 %i.xc, ptr %.11172371.i, align 1, !tbaa !25, !alias.scope !43, !noalias !49
  %i.xe = icmp slt i64 %indvars.iv425.i, 16
  br i1 %i.xe, label %.critedge243.thread.i, label %.lr.ph372.i, !llvm.loop !63

.critedge243.thread.i:                            ; preds = %bb.bb
  %i.xf = trunc nuw nsw i64 %indvars.iv.next426.i to i32
  %i.xg = shl i64 %i.wi, 8
  %i.xh = sext i32 %.3208.i to i64
  %i.xi = or i64 %i.xg, %i.xh
  %i.xj = add nuw nsw i32 %i.xf, 8
  br label %.lr.ph377.preheader.i

.critedge243.i:                                   ; preds = %.critedge241.i
  %i.xk = shl i64 %i.wi, 8
  %i.xl = sext i32 %.3208.i to i64
  %i.xm = or i64 %i.xk, %i.xl                     ; 2 uses
  %i.xn = add nsw i32 %i.wj, 8                    ; 2 uses
  %i.xo = icmp slt i32 %i.wj, 0
  br i1 %i.xo, label %.critedge245.i, label %.lr.ph377.preheader.i

.lr.ph377.preheader.i:                            ; preds = %.critedge243.i, %.critedge243.thread.i
  %i.xp = phi i32 [ %i.xj, %.critedge243.thread.i ], [ %i.xn, %.critedge243.i ] ; 3 uses
  %i.xq = phi i64 [ %i.xi, %.critedge243.thread.i ], [ %i.xm, %.critedge243.i ] ; 3 uses
  %.11172.lcssa477.i = phi ptr [ %i.xd, %.critedge243.thread.i ], [ %.10171.lcssa.i, %.critedge243.i ] ; 4 uses
  %.11172.lcssa477.i454 = ptrtoint ptr %.11172.lcssa477.i to i64
  %i.xr = zext nneg i32 %i.xp to i64              ; 3 uses
  %i.xs = add i32 %i.xp, 7
  %smin453 = tail call i32 @llvm.smin.i32(i32 %i.xp, i32 15)
  %i.xt = sub i32 %i.xs, %smin453
  %.fr511 = freeze i32 %i.xt
  %i.xu = lshr i32 %.fr511, 3
  %i.xv = zext nneg i32 %i.xu to i64
  %i.xw = add i64 %2, %i.a
  %i.xx = tail call i64 @llvm.usub.sat.i64(i64 %i.xw, i64 %.11172.lcssa477.i454)
  %umin456 = tail call i64 @llvm.umin.i64(i64 %i.xv, i64 %i.xx) ; 2 uses
  %min.iters.check458 = icmp samesign ult i64 %umin456, 16
  br i1 %min.iters.check458, label %.lr.ph377.i.preheader, label %vector.ph459

vector.ph459:                                     ; preds = %.lr.ph377.preheader.i
  %i.xy = add nuw nsw i64 %umin456, 1             ; 2 uses
  %n.mod.vf460 = and i64 %i.xy, 15                ; 2 uses
  %i.xz = icmp eq i64 %n.mod.vf460, 0
  %i.ya = select i1 %i.xz, i64 16, i64 %n.mod.vf460
  %n.vec461 = sub nsw i64 %i.xy, %i.ya            ; 3 uses
  %i.yb = shl nsw i64 %n.vec461, 3
  %i.yc = sub nsw i64 %i.xr, %i.yb
  %i.yd = getelementptr i8, ptr %.11172.lcssa477.i, i64 %n.vec461
  %broadcast.splatinsert462 = insertelement <16 x i64> poison, i64 %i.xq, i64 0
  %broadcast.splat463 = shufflevector <16 x i64> %broadcast.splatinsert462, <16 x i64> poison, <16 x i32> zeroinitializer
  %broadcast.splatinsert464 = insertelement <16 x i64> poison, i64 %i.xr, i64 0
  %broadcast.splat465 = shufflevector <16 x i64> %broadcast.splatinsert464, <16 x i64> poison, <16 x i32> zeroinitializer
  %induction466 = add nsw <16 x i64> %broadcast.splat465, <i64 0, i64 -8, i64 -16, i64 -24, i64 -32, i64 -40, i64 -48, i64 -56, i64 -64, i64 -72, i64 -80, i64 -88, i64 -96, i64 -104, i64 -112, i64 -120>
  br label %vector.body467

vector.body467:                                   ; preds = %vector.body467, %vector.ph459
  %index468 = phi i64 [ 0, %vector.ph459 ], [ %index.next471, %vector.body467 ] ; 2 uses
  %vec.ind469 = phi <16 x i64> [ %induction466, %vector.ph459 ], [ %vec.ind.next472, %vector.body467 ] ; 2 uses
  %next.gep470 = getelementptr i8, ptr %.11172.lcssa477.i, i64 %index468
  %i.ye = add nsw <16 x i64> %vec.ind469, splat (i64 -8)
  %i.yf = lshr <16 x i64> %broadcast.splat463, %i.ye
  %i.yg = trunc <16 x i64> %i.yf to <16 x i8>
  store <16 x i8> %i.yg, ptr %next.gep470, align 1, !tbaa !25, !alias.scope !43, !noalias !49
  %index.next471 = add nuw i64 %index468, 16      ; 2 uses
  %vec.ind.next472 = add nsw <16 x i64> %vec.ind469, splat (i64 -128)
  %i.yh = icmp eq i64 %index.next471, %n.vec461
  br i1 %i.yh, label %.lr.ph377.i.preheader, label %vector.body467, !llvm.loop !64

.lr.ph377.i.preheader:                            ; preds = %vector.body467, %.lr.ph377.preheader.i
  %indvars.iv428.i.ph = phi i64 [ %i.xr, %.lr.ph377.preheader.i ], [ %i.yc, %vector.body467 ]
  %.12173376.i.ph = phi ptr [ %.11172.lcssa477.i, %.lr.ph377.preheader.i ], [ %i.yd, %vector.body467 ]
  br label %.lr.ph377.i

.lr.ph377.i:                                      ; preds = %.lr.ph377.i.preheader, %bb.bc
  %indvars.iv428.i = phi i64 [ %i.yi, %bb.bc ], [ %indvars.iv428.i.ph, %.lr.ph377.i.preheader ] ; 2 uses
  %.12173376.i = phi ptr [ %i.yl, %bb.bc ], [ %.12173376.i.ph, %.lr.ph377.i.preheader ] ; 3 uses
  %.not231.i = icmp ult ptr %.12173376.i, %i.d
  br i1 %.not231.i, label %bb.bc, label %hufPackEncTable.exit.thread, !prof !29

bb.bc:                                            ; preds = %.lr.ph377.i
  %i.yi = add nsw i64 %indvars.iv428.i, -8        ; 3 uses
  %i.yj = lshr i64 %i.xq, %i.yi
  %i.yk = trunc i64 %i.yj to i8
  %i.yl = getelementptr inbounds nuw i8, ptr %.12173376.i, i64 1 ; 2 uses
  store i8 %i.yk, ptr %.12173376.i, align 1, !tbaa !25, !alias.scope !43, !noalias !49
  %i.ym = trunc nuw i64 %indvars.iv428.i to i32
  %i.yn = icmp slt i32 %i.ym, 16
  br i1 %i.yn, label %.critedge245.loopexit.i, label %.lr.ph377.i, !llvm.loop !65

.critedge247.loopexit.loopexit.i:                 ; preds = %bb.be
  %i.yo = trunc nuw nsw i64 %indvars.iv.next420.i to i32
  br label %.critedge247.loopexit.i

.critedge247.loopexit.i:                          ; preds = %bb.bd, %.critedge247.loopexit.loopexit.i
  %.14199.lcssa.i = phi i32 [ %i.yt, %bb.bd ], [ %i.yo, %.critedge247.loopexit.loopexit.i ] ; 2 uses
  %.14175.lcssa.i = phi ptr [ %.13174360.i, %bb.bd ], [ %i.zk, %.critedge247.loopexit.loopexit.i ] ; 2 uses
  %i.yp = icmp sgt i32 %.in380.i, 0
  br i1 %i.yp, label %bb.bd, label %.critedge245.i

bb.bd:                                            ; preds = %.critedge247.loopexit.i, %.lr.ph361.i
  %.in380.i = phi i32 [ %.0205.lcssa460474.i, %.lr.ph361.i ], [ %i.yq, %.critedge247.loopexit.i ] ; 2 uses
  %.13174360.i = phi ptr [ %.0161.lcssa465471.i, %.lr.ph361.i ], [ %.14175.lcssa.i, %.critedge247.loopexit.i ] ; 5 uses
  %.6183359.i = phi i64 [ %.0177.lcssa464472.i, %.lr.ph361.i ], [ %i.ys, %.critedge247.loopexit.i ]
  %.13198358.i = phi i32 [ %.0185.lcssa462473.i, %.lr.ph361.i ], [ %.14199.lcssa.i, %.critedge247.loopexit.i ]
  %i.yq = add nsw i32 %.in380.i, -1
  %i.yr = shl i64 %.6183359.i, %i.vd
  %i.ys = or i64 %i.yr, %i.ve                     ; 4 uses
  %i.yt = add nsw i32 %.13198358.i, %i.vc         ; 3 uses
  %i.yu = icmp slt i32 %i.yt, 8
  br i1 %i.yu, label %.critedge247.loopexit.i, label %.lr.ph355.preheader.i

.lr.ph355.preheader.i:                            ; preds = %bb.bd
  %i.yv = zext nneg i32 %i.yt to i64              ; 5 uses
  %17 = tail call i64 @llvm.smin.i64(i64 %i.yv, i64 15)
  %18 = sub nsw i64 %i.yv, %17
  %19 = add nuw nsw i64 %18, 7
  %i.yw = lshr i64 %19, 3
  %20 = ptrtoint ptr %.13174360.i to i64
  %i.yx = tail call i64 @llvm.usub.sat.i64(i64 %i.vf, i64 %20)
  %umin479 = tail call i64 @llvm.umin.i64(i64 %i.yw, i64 %i.yx) ; 2 uses
  %min.iters.check481 = icmp samesign ult i64 %umin479, 16
  br i1 %min.iters.check481, label %.lr.ph355.i.preheader, label %vector.ph482

vector.ph482:                                     ; preds = %.lr.ph355.preheader.i
  %i.yy = add nuw nsw i64 %umin479, 1             ; 2 uses
  %n.mod.vf483 = and i64 %i.yy, 15                ; 2 uses
  %i.yz = icmp eq i64 %n.mod.vf483, 0
  %i.za = select i1 %i.yz, i64 16, i64 %n.mod.vf483
  %n.vec484 = sub nsw i64 %i.yy, %i.za            ; 3 uses
  %i.zb = shl i64 %n.vec484, 3
  %i.zc = sub i64 %i.yv, %i.zb
  %i.zd = getelementptr i8, ptr %.13174360.i, i64 %n.vec484
  %broadcast.splatinsert485 = insertelement <16 x i64> poison, i64 %i.ys, i64 0
  %broadcast.splat486 = shufflevector <16 x i64> %broadcast.splatinsert485, <16 x i64> poison, <16 x i32> zeroinitializer
  %broadcast.splatinsert487 = insertelement <16 x i64> poison, i64 %i.yv, i64 0
  %broadcast.splat488 = shufflevector <16 x i64> %broadcast.splatinsert487, <16 x i64> poison, <16 x i32> zeroinitializer
  %induction489 = add nsw <16 x i64> %broadcast.splat488, <i64 0, i64 -8, i64 -16, i64 -24, i64 -32, i64 -40, i64 -48, i64 -56, i64 -64, i64 -72, i64 -80, i64 -88, i64 -96, i64 -104, i64 -112, i64 -120>
  br label %vector.body490

vector.body490:                                   ; preds = %vector.body490, %vector.ph482
  %index491 = phi i64 [ 0, %vector.ph482 ], [ %index.next494, %vector.body490 ] ; 2 uses
  %vec.ind492 = phi <16 x i64> [ %induction489, %vector.ph482 ], [ %vec.ind.next495, %vector.body490 ] ; 2 uses
  %next.gep493 = getelementptr i8, ptr %.13174360.i, i64 %index491
  %i.ze = add nsw <16 x i64> %vec.ind492, splat (i64 -8)
  %i.zf = lshr <16 x i64> %broadcast.splat486, %i.ze
  %i.zg = trunc <16 x i64> %i.zf to <16 x i8>
  store <16 x i8> %i.zg, ptr %next.gep493, align 1, !tbaa !25, !alias.scope !43, !noalias !49
  %index.next494 = add nuw i64 %index491, 16      ; 2 uses
  %vec.ind.next495 = add nsw <16 x i64> %vec.ind492, splat (i64 -128)
  %i.zh = icmp eq i64 %index.next494, %n.vec484
  br i1 %i.zh, label %.lr.ph355.i.preheader, label %vector.body490, !llvm.loop !66

.lr.ph355.i.preheader:                            ; preds = %vector.body490, %.lr.ph355.preheader.i
  %indvars.iv419.i.ph = phi i64 [ %i.yv, %.lr.ph355.preheader.i ], [ %i.zc, %vector.body490 ]
  %.14175354.i.ph = phi ptr [ %.13174360.i, %.lr.ph355.preheader.i ], [ %i.zd, %vector.body490 ]
  br label %.lr.ph355.i

.lr.ph355.i:                                      ; preds = %.lr.ph355.i.preheader, %bb.be
  %indvars.iv419.i = phi i64 [ %indvars.iv.next420.i, %bb.be ], [ %indvars.iv419.i.ph, %.lr.ph355.i.preheader ] ; 2 uses
  %.14175354.i = phi ptr [ %i.zk, %bb.be ], [ %.14175354.i.ph, %.lr.ph355.i.preheader ] ; 3 uses
  %.not228.i = icmp ult ptr %.14175354.i, %i.d
  br i1 %.not228.i, label %bb.be, label %hufPackEncTable.exit.thread, !prof !29, !llvm.loop !67

bb.be:                                            ; preds = %.lr.ph355.i
  %indvars.iv.next420.i = add nsw i64 %indvars.iv419.i, -8 ; 3 uses
  %i.zi = lshr i64 %i.ys, %indvars.iv.next420.i
  %i.zj = trunc i64 %i.zi to i8
  %i.zk = getelementptr inbounds nuw i8, ptr %.14175354.i, i64 1 ; 2 uses
  store i8 %i.zj, ptr %.14175354.i, align 1, !tbaa !25, !alias.scope !43, !noalias !49
  %i.zl = icmp slt i64 %indvars.iv419.i, 16
  br i1 %i.zl, label %.critedge247.loopexit.loopexit.i, label %.lr.ph355.i, !llvm.loop !68

.critedge245.loopexit.i:                          ; preds = %bb.bc
  %i.zm = trunc i64 %i.yi to i32
  br label %.critedge245.i

.critedge245.i:                                   ; preds = %.critedge247.loopexit.i, %.critedge245.loopexit.i, %.critedge243.i, %.critedge247.preheader.i
  %.15200.i = phi i32 [ %i.zm, %.critedge245.loopexit.i ], [ %i.xn, %.critedge243.i ], [ %.8193.i, %.critedge247.preheader.i ], [ %.14199.lcssa.i, %.critedge247.loopexit.i ] ; 3 uses
  %.7184.i = phi i64 [ %i.xq, %.critedge245.loopexit.i ], [ %i.xm, %.critedge243.i ], [ %.4181.i, %.critedge247.preheader.i ], [ %i.ys, %.critedge247.loopexit.i ]
  %.15176.i = phi ptr [ %i.yl, %.critedge245.loopexit.i ], [ %.10171.lcssa.i, %.critedge243.i ], [ %.8169.i, %.critedge247.preheader.i ], [ %.14175.lcssa.i, %.critedge247.loopexit.i ] ; 3 uses
  %.not232.i = icmp eq i32 %.15200.i, 0
  br i1 %.not232.i, label %bb.bh, label %bb.bf

bb.bf:                                            ; preds = %.critedge245.i
  %.not233.i = icmp ult ptr %.15176.i, %i.d
  br i1 %.not233.i, label %bb.bg, label %hufPackEncTable.exit.thread

bb.bg:                                            ; preds = %bb.bf
  %i.zn = sub nsw i32 8, %.15200.i
  %i.zo = zext nneg i32 %i.zn to i64
  %i.zp = shl i64 %.7184.i, %i.zo
  %i.zq = trunc i64 %i.zp to i8
  store i8 %i.zq, ptr %.15176.i, align 1, !tbaa !25, !alias.scope !43, !noalias !49
  br label %bb.bh

bb.bh:                                            ; preds = %bb.bg, %.critedge245.i
  %i.zr = ptrtoint ptr %.15176.i to i64
  %i.zs = ptrtoint ptr %.070 to i64               ; 3 uses
  %i.zt = sub i64 %i.zr, %i.zs
  %i.zu = shl i64 %i.zt, 3
  %i.zv = sext i32 %.15200.i to i64
  %i.zw = add i64 %i.zu, %i.zv                    ; 3 uses
  %i.zx = icmp ugt i64 %i.zw, 4294967295
  br i1 %i.zx, label %hufPackEncTable.exit.thread, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.zy = trunc nuw i64 %i.zw to i32
  %i.zz = ptrtoint ptr %i.c to i64
  %i.aaa = sub i64 %i.zs, %i.zz
  %i.aab = trunc i64 %i.aaa to i32
  %i.aac = add nuw nsw i64 %i.zw, 7
  %i.aad = lshr i64 %i.aac, 3
  store i32 %storemerge.i, ptr %1, align 1
  %i.aae = getelementptr inbounds nuw i8, ptr %1, i64 4
  store i32 %i.in, ptr %i.aae, align 1
  %i.aaf = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i32 %i.aab, ptr %i.aaf, align 1
  %i.aag = getelementptr inbounds nuw i8, ptr %1, i64 12
  store i32 %i.zy, ptr %i.aag, align 1
  %i.aah = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i32 0, ptr %i.aah, align 1
  %i.aai = and i64 %i.aad, 536870911
  %i.aaj = ptrtoint ptr %1 to i64
  %i.aak = sub i64 %i.zs, %i.aaj
  %i.aal = add i64 %i.aak, %i.aai
  br label %hufPackEncTable.exit.thread.sink.split

hufPackEncTable.exit.thread.sink.split:           ; preds = %bb.a, %bb.bi
  %.sink = phi i64 [ %i.aal, %bb.bi ], [ 0, %bb.a ]
  store i64 %.sink, ptr %0, align 8, !tbaa !9
  br label %hufPackEncTable.exit.thread

hufPackEncTable.exit.thread:                      ; preds = %.lr.ph176.i, %.lr.ph182.i, %.lr.ph187.i, %.lr.ph192.i, %.lr.ph327.i, %.lr.ph332.i, %.lr.ph337.i, %.lr.ph.i57, %.lr.ph367.i, %.lr.ph372.i, %.lr.ph377.i, %.lr.ph355.i, %hufPackEncTable.exit.thread.sink.split, %bb.bh, %bb.bf, %bb.ao, %bb.b
  %.0 = phi i32 [ 4, %.lr.ph372.i ], [ 4, %.lr.ph327.i ], [ 3, %bb.b ], [ 4, %.lr.ph192.i ], [ 4, %.lr.ph355.i ], [ 4, %.lr.ph187.i ], [ 4, %.lr.ph377.i ], [ 4, %bb.ao ], [ 4, %.lr.ph182.i ], [ 4, %.lr.ph337.i ], [ 4, %bb.bf ], [ 4, %.lr.ph.i57 ], [ 4, %.lr.ph367.i ], [ 4, %bb.bh ], [ 4, %.lr.ph332.i ], [ 0, %hufPackEncTable.exit.thread.sink.split ], [ 4, %.lr.ph176.i ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define hidden range(i32 0, 24) i32 @internal_huf_decompress(ptr nofree noundef readonly captures(address_is_null) %0, ptr noundef %1, i64 noundef %2, ptr nofree noundef captures(address) %3, i64 noundef %4, ptr nofree noundef captures(none) %5, i64 noundef %6) local_unnamed_addr #3 {
bb.a:
  %i.a = alloca [59 x i64], align 16              ; 11 uses
  %i.b = alloca [59 x i64], align 16              ; 7 uses
  %i.c = alloca [59 x i64], align 16              ; 26 uses
  %i.d = alloca [59 x i64], align 16              ; 23 uses
  %i.e = alloca [59 x i64], align 16              ; 6 uses
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !69
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.063 = phi ptr [ %i.g, %bb.b ], [ null, %bb.a ] ; 12 uses
  %i.h = icmp ult i64 %2, 20
  br i1 %i.h, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %.not74 = icmp eq i64 %4, 0
  %. = select i1 %.not74, i32 0, i32 3
  br label %.critedge

bb.e:                                             ; preds = %bb.c
  %.not72 = icmp eq i64 %6, 786440
  br i1 %.not72, label %bb.f, label %.critedge

bb.f:                                             ; preds = %bb.e
  %i.i = load i32, ptr %1, align 1                ; 6 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.k = load i32, ptr %i.j, align 1              ; 9 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.m = load i32, ptr %i.l, align 1              ; 2 uses
  %i.n = icmp ugt i32 %i.i, 65536
  %i.o = icmp ugt i32 %i.k, 65536
  %or.cond = select i1 %i.n, i1 true, i1 %i.o
  br i1 %or.cond, label %.critedge, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 11 uses
  %i.q = zext i32 %i.m to i64                     ; 4 uses
  %i.r = add nuw nsw i64 %i.q, 7
  %i.s = lshr i64 %i.r, 3                         ; 2 uses
  %i.t = add nuw nsw i64 %i.s, 20
  %i.u = icmp ugt i64 %i.t, %2
  br i1 %i.u, label %.critedge, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.v = icmp ugt i32 %i.m, 128
  br i1 %i.v, label %bb.i, label %bb.at

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #10
  store i32 %i.k, ptr %5, align 8, !tbaa !74
  %i.w = getelementptr inbounds nuw i8, ptr %5, i64 4 ; 2 uses
  store i32 0, ptr %i.w, align 4, !tbaa !76
  %i.x = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 3 uses
  store i8 -1, ptr %i.x, align 8, !tbaa !77
  %i.y = getelementptr inbounds nuw i8, ptr %5, i64 9 ; 3 uses
  store i8 0, ptr %i.y, align 1, !tbaa !78
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(472) %i.d, i8 0, i64 472, i1 false), !tbaa !9
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(472) %i.b, i8 -1, i64 472, i1 false), !tbaa !9
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(472) %i.c, i8 0, i64 472, i1 false), !tbaa !9
  %i.z = getelementptr i8, ptr %1, i64 %2         ; 2 uses
  %i.aa = zext nneg i32 %i.i to i64               ; 2 uses
  %i.ab = zext nneg i32 %i.k to i64               ; 3 uses
  %.not233.i = icmp samesign ugt i32 %i.i, %i.k   ; 2 uses
  br i1 %.not233.i, label %.critedge.preheader.i, label %.lr.ph.i

.critedge.preheader.loopexit.i:                   ; preds = %bb.y
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.phi.trans.insert143 = getelementptr inbounds nuw i8, ptr %i.d, i64 264
  %.phi.trans.insert175 = getelementptr inbounds nuw i8, ptr %i.d, i64 392
  %.pre176 = load i64, ptr %.phi.trans.insert175, align 8, !tbaa !9
  %.phi.trans.insert177 = getelementptr inbounds nuw i8, ptr %i.d, i64 400
  %.pre178 = load i64, ptr %.phi.trans.insert177, align 16, !tbaa !9
end_hunk_0
