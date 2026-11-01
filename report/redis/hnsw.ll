Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/redis/original/hnsw?download=true
inline.NumInlined: 98
inline.NumDeleted: 4
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 30
loop-unroll.NumUnrolled: 37
begin_hunk_0_@hnsw_unlink_node:bb.a
  %i.gf = or disjoint i64 %indvars.iv.i101, 3     ; 2 uses
  %i.gg = getelementptr inbounds nuw i8, ptr %i.do, i64 %i.gf
  %i.gh = load i8, ptr %i.gg, align 1, !tbaa !43
  %i.gi = sext i8 %i.gh to i32
  %i.gj = getelementptr inbounds nuw i8, ptr %i.dq, i64 %i.gf
  %i.gk = load i8, ptr %i.gj, align 1, !tbaa !43
  %i.gl = sext i8 %i.gk to i32
  %i.gm = mul nsw i32 %i.gl, %i.gi
  %i.gn = add i32 %i.fo, %.07185.i
  %i.go = add i32 %i.gn, %i.fw
  %i.gp = add i32 %i.go, %i.ge
  %i.gq = add i32 %i.gp, %i.gm                    ; 2 uses
  %i.gr = or disjoint i64 %indvars.iv.i101, 4     ; 2 uses
  %i.gs = getelementptr inbounds nuw i8, ptr %i.do, i64 %i.gr
  %i.gt = load i8, ptr %i.gs, align 1, !tbaa !43
  %i.gu = sext i8 %i.gt to i32
  %i.gv = getelementptr inbounds nuw i8, ptr %i.dq, i64 %i.gr
  %i.gw = load i8, ptr %i.gv, align 1, !tbaa !43
  %i.gx = sext i8 %i.gw to i32
  %i.gy = mul nsw i32 %i.gx, %i.gu
  %i.gz = or disjoint i64 %indvars.iv.i101, 5     ; 2 uses
  %i.ha = getelementptr inbounds nuw i8, ptr %i.do, i64 %i.gz
  %i.hb = load i8, ptr %i.ha, align 1, !tbaa !43
  %i.hc = sext i8 %i.hb to i32
  %i.hd = getelementptr inbounds nuw i8, ptr %i.dq, i64 %i.gz
  %i.he = load i8, ptr %i.hd, align 1, !tbaa !43
  %i.hf = sext i8 %i.he to i32
  %i.hg = mul nsw i32 %i.hf, %i.hc
  %i.hh = or disjoint i64 %indvars.iv.i101, 6     ; 2 uses
  %i.hi = getelementptr inbounds nuw i8, ptr %i.do, i64 %i.hh
  %i.hj = load i8, ptr %i.hi, align 1, !tbaa !43
  %i.hk = sext i8 %i.hj to i32
  %i.hl = getelementptr inbounds nuw i8, ptr %i.dq, i64 %i.hh
  %i.hm = load i8, ptr %i.hl, align 1, !tbaa !43
  %i.hn = sext i8 %i.hm to i32
  %i.ho = mul nsw i32 %i.hn, %i.hk
  %i.hp = getelementptr inbounds nuw i8, ptr %i.do, i64 %i.fh
  %i.hq = load i8, ptr %i.hp, align 1, !tbaa !43
  %i.hr = sext i8 %i.hq to i32
  %i.hs = getelementptr inbounds nuw i8, ptr %i.dq, i64 %i.fh
  %i.ht = load i8, ptr %i.hs, align 1, !tbaa !43
  %i.hu = sext i8 %i.ht to i32
  %i.hv = mul nsw i32 %i.hu, %i.hr
  %i.hw = add i32 %i.gy, %.07086.i
  %i.hx = add i32 %i.hw, %i.hg
  %i.hy = add i32 %i.hx, %i.ho
  %i.hz = add i32 %i.hy, %i.hv                    ; 2 uses
  %indvars.iv.next.i102 = add nuw nsw i64 %indvars.iv.i101, 8 ; 2 uses
  %i.ia = or disjoint i64 %indvars.iv.next.i102, 7
  %i.ib = icmp samesign ult i64 %i.ia, %i.ek
  br i1 %i.ib, label %.lr.ph.i100, label %.preheader.loopexit.i, !llvm.loop !4

.lr.ph92.i:                                       ; preds = %.lr.ph92.i.preheader, %.lr.ph92.i
  %indvars.iv98.i = phi i64 [ %indvars.iv.next99.i, %.lr.ph92.i ], [ %indvars.iv98.i.ph, %.lr.ph92.i.preheader ] ; 3 uses
  %.17290.i = phi i32 [ %i.ij, %.lr.ph92.i ], [ %.17290.i.ph, %.lr.ph92.i.preheader ]
  %i.ic = getelementptr inbounds nuw i8, ptr %i.do, i64 %indvars.iv98.i
  %i.id = load i8, ptr %i.ic, align 1, !tbaa !43
  %i.ie = sext i8 %i.id to i32
  %i.if = getelementptr inbounds nuw i8, ptr %i.dq, i64 %indvars.iv98.i
  %i.ig = load i8, ptr %i.if, align 1, !tbaa !43
  %i.ih = sext i8 %i.ig to i32
  %i.ii = mul nsw i32 %i.ih, %i.ie
  %i.ij = add nsw i32 %i.ii, %.17290.i            ; 2 uses
  %indvars.iv.next99.i = add nuw nsw i64 %indvars.iv98.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next99.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %._crit_edge.i, label %.lr.ph92.i, !llvm.loop !195

._crit_edge.i:                                    ; preds = %.lr.ph92.i, %middle.block, %.preheader.i
  %.172.lcssa.i = phi i32 [ %.071.lcssa.i, %.preheader.i ], [ %i.fg, %middle.block ], [ %i.ij, %.lr.ph92.i ]
  %i.ik = add nsw i32 %.172.lcssa.i, %.070.lcssa.i
  %i.il = sitofp i32 %i.ik to float
  %i.im = fmul float %i.ei, %i.il
  %i.in = fsub float 1.000000e+00, %i.im          ; 3 uses
  %i.io = fcmp olt float %i.in, 0.000000e+00
  %i.ip = fcmp ogt float %i.in, 2.000000e+00
  %spec.store.select.i = select i1 %i.ip, float 2.000000e+00, float %i.in
  %.0.i99 = select i1 %i.io, float 0.000000e+00, float %spec.store.select.i
  br label %hnsw_distance.exit.i

bb.v:                                             ; preds = %bb.h
  %i.iq = load ptr, ptr %i.ar, align 8, !tbaa !29
  %i.ir = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  %i.is = load ptr, ptr %i.ir, align 8, !tbaa !29
  %i.it = load i32, ptr %i.g, align 8, !tbaa !51
  %i.iu = tail call float @vectors_distance_bin(ptr noundef %i.iq, ptr noundef %i.is, i32 noundef %i.it)
  %.pre.i = load ptr, ptr %i.t, align 8, !tbaa !66
  %.pre32.i = load i32, ptr %i.f, align 8, !tbaa !50
  %.pre34.i = load i32, ptr %i.u, align 8, !tbaa !63
  br label %hnsw_distance.exit.i

bb.w:                                             ; preds = %bb.h
  tail call void @__assert_fail(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 724, ptr noundef nonnull @__PRETTY_FUNCTION__.hnsw_distance) #35
  unreachable

hnsw_distance.exit.i:                             ; preds = %._crit_edge.i, %bb.t, %bb.s, %bb.q, %._crit_edge.i107, %bb.m, %bb.j, %bb.v
  %i.iv = phi i32 [ %.pre34.i, %bb.v ], [ %i.at, %._crit_edge.i107 ], [ %i.at, %bb.j ], [ %i.at, %bb.m ], [ %i.at, %bb.q ], [ %i.at, %bb.s ], [ %i.at, %bb.t ], [ %i.at, %._crit_edge.i ] ; 2 uses
  %i.iw = phi i32 [ %.pre32.i, %bb.v ], [ 0, %._crit_edge.i107 ], [ 0, %bb.j ], [ 0, %bb.m ], [ 1, %bb.q ], [ 1, %bb.s ], [ 1, %bb.t ], [ 1, %._crit_edge.i ]
  %i.ix = phi ptr [ %.pre.i, %bb.v ], [ %i.av, %._crit_edge.i107 ], [ %i.av, %bb.j ], [ %i.av, %bb.m ], [ %i.av, %bb.q ], [ %i.av, %bb.s ], [ %i.av, %bb.t ], [ %i.av, %._crit_edge.i ]
  %.0.i.i = phi float [ %i.iu, %bb.v ], [ %i.dn, %._crit_edge.i107 ], [ %i.be, %bb.j ], [ %i.bi, %bb.m ], [ %i.dy, %bb.q ], [ %i.ec, %bb.s ], [ 1.000000e+00, %bb.t ], [ %.0.i99, %._crit_edge.i ] ; 2 uses
  %i.iy = fcmp ogt float %.0.i.i, %.01925.i       ; 2 uses
  %.120.i = select i1 %i.iy, float %.0.i.i, float %.01925.i ; 2 uses
  %i.iz = trunc nuw i64 %indvars.iv.i to i32
  %.1.i = select i1 %i.iy, i32 %i.iz, i32 %.01826.i ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.ja = zext i32 %i.iv to i64
  %i.jb = icmp samesign ult i64 %indvars.iv.next.i, %i.ja
  br i1 %i.jb, label %bb.h, label %hnsw_update_worst_neighbor.exit, !llvm.loop !11

hnsw_update_worst_neighbor.exit:                  ; preds = %hnsw_distance.exit.i
  %i.jc = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  store float %.120.i, ptr %i.jc, align 8, !tbaa !64
  store i32 %.1.i, ptr %i.ao, align 4, !tbaa !65
  br label %hnsw_update_worst_neighbor_on_remove.exit

bb.x:                                             ; preds = %bb.g
  %i.jd = icmp ugt i32 %i.ap, %i.ab
  br i1 %i.jd, label %bb.y, label %hnsw_update_worst_neighbor_on_remove.exit

bb.y:                                             ; preds = %bb.x
  %i.je = add i32 %i.ap, -1
  store i32 %i.je, ptr %i.ao, align 4, !tbaa !65
  br label %hnsw_update_worst_neighbor_on_remove.exit

bb.z:                                             ; preds = %bb.d
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %hnsw_update_worst_neighbor_on_remove.exit, label %bb.d, !llvm.loop !196

hnsw_update_worst_neighbor_on_remove.exit:        ; preds = %bb.z, %.lr.ph135, %bb.y, %bb.x, %hnsw_update_worst_neighbor.exit, %bb.f
  %indvars.iv.next160 = add nuw nsw i64 %indvars.iv159, 1 ; 2 uses
  %i.jf = load i32, ptr %i.j, align 8, !tbaa !63
  %i.jg = zext i32 %i.jf to i64
  %i.jh = icmp samesign ult i64 %indvars.iv.next160, %i.jg
  br i1 %i.jh, label %.lr.ph135, label %._crit_edge, !llvm.loop !197

.lr.ph.i:                                         ; preds = %bb.c
  %i.ji = getelementptr inbounds nuw i8, ptr %1, i64 304
  br label %bb.aa

bb.aa:                                            ; preds = %bb.ac, %.lr.ph.i
  %.010.i = phi ptr [ %i.m, %.lr.ph.i ], [ %.0.i, %bb.ac ] ; 2 uses
  %i.jj = getelementptr inbounds nuw i8, ptr %.010.i, i64 8 ; 2 uses
  %i.jk = load ptr, ptr %i.jj, align 8, !tbaa !73
  %i.jl = icmp eq ptr %i.jk, %1
  br i1 %i.jl, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.jm = load ptr, ptr %i.ji, align 8, !tbaa !38
  store ptr %i.jm, ptr %i.jj, align 8, !tbaa !73
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %i.jn = getelementptr inbounds nuw i8, ptr %.010.i, i64 16
  %.0.i = load ptr, ptr %i.jn, align 8, !tbaa !74 ; 2 uses
  %.not.i = icmp eq ptr %.0.i, null
  br i1 %.not.i, label %hnsw_cursor_element_deleted.exit, label %bb.aa, !llvm.loop !12

hnsw_cursor_element_deleted.exit:                 ; preds = %bb.ac, %bb.c
  %i.jo = getelementptr inbounds nuw i8, ptr %1, i64 296 ; 3 uses
  %i.jp = load ptr, ptr %i.jo, align 8, !tbaa !38 ; 2 uses
  %.not89 = icmp eq ptr %i.jp, null
  %i.jq = getelementptr inbounds nuw i8, ptr %1, i64 304
  %i.jr = load ptr, ptr %i.jq, align 8, !tbaa !38 ; 4 uses
  br i1 %.not89, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %hnsw_cursor_element_deleted.exit
  %i.js = getelementptr inbounds nuw i8, ptr %i.jp, i64 304
  store ptr %i.jr, ptr %i.js, align 8, !tbaa !38
  br label %bb.af

bb.ae:                                            ; preds = %hnsw_cursor_element_deleted.exit
  %i.jt = getelementptr inbounds nuw i8, ptr %0, i64 296
  store ptr %i.jr, ptr %i.jt, align 8, !tbaa !67
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad
  %.not90 = icmp eq ptr %i.jr, null
  br i1 %.not90, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.ju = load ptr, ptr %i.jo, align 8, !tbaa !38
  %i.jv = getelementptr inbounds nuw i8, ptr %i.jr, i64 296
  store ptr %i.ju, ptr %i.jv, align 8, !tbaa !38
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af
  %i.jw = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.jx = load i64, ptr %i.jw, align 8, !tbaa !55
  %i.jy = add i64 %i.jx, -1
  store i64 %i.jy, ptr %i.jw, align 8, !tbaa !55
  %i.jz = load ptr, ptr %0, align 8, !tbaa !53
  %i.ka = icmp eq ptr %1, %i.jz
  br i1 %i.ka, label %bb.ai, label %.loopexit.thread

bb.ai:                                            ; preds = %bb.ah
  store ptr null, ptr %0, align 8, !tbaa !53
  %i.kb = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  store i32 0, ptr %i.kb, align 4, !tbaa !54
  %i.kc = load i32, ptr %1, align 8, !tbaa !25    ; 2 uses
  %i.kd = icmp sgt i32 %i.kc, -1
  br i1 %i.kd, label %.lr.ph139.a, label %thread-pre-split.thread

bb.aj:                                            ; preds = %.lr.ph139.a
  %2 = add nsw i32 %.077137, -1
  %i.ke = icmp sgt i32 %.077137, 0
  br i1 %i.ke, label %.lr.ph139.a, label %thread-pre-split.thread, !llvm.loop !198

.lr.ph139.a:                                      ; preds = %bb.ai, %bb.aj
  %.077137 = phi i32 [ %2, %bb.aj ], [ %i.kc, %bb.ai ] ; 3 uses
  %3 = zext nneg i32 %.077137 to i64
  %i.kf = getelementptr inbounds nuw [24 x i8], ptr %i.e, i64 %3 ; 2 uses
  %i.kg = getelementptr inbounds nuw i8, ptr %i.kf, i64 8
  %i.kh = load i32, ptr %i.kg, align 8, !tbaa !63
  %.not91 = icmp eq i32 %i.kh, 0
  br i1 %.not91, label %bb.aj, label %thread-pre-split

thread-pre-split:                                 ; preds = %.lr.ph139.a
  %i.ki = load ptr, ptr %i.kf, align 8, !tbaa !66
  %i.kj = load ptr, ptr %i.ki, align 8, !tbaa !38 ; 3 uses
  store ptr %i.kj, ptr %0, align 8, !tbaa !53
  %.not92 = icmp eq ptr %i.kj, null
  br i1 %.not92, label %thread-pre-split.thread, label %.loopexit.thread186

thread-pre-split.thread:                          ; preds = %bb.aj, %bb.ai, %thread-pre-split
  %i.kk = getelementptr inbounds nuw i8, ptr %0, i64 296
  %.0140 = load ptr, ptr %i.kk, align 8, !tbaa !38 ; 2 uses
  %.not93141 = icmp eq ptr %.0140, null
  br i1 %.not93141, label %.loopexit.thread, label %.lr.ph145

.lr.ph145:                                        ; preds = %thread-pre-split.thread, %bb.am
  %i.kl = phi ptr [ %i.kn, %bb.am ], [ null, %thread-pre-split.thread ] ; 2 uses
  %.0143 = phi ptr [ %.0, %bb.am ], [ %.0140, %thread-pre-split.thread ] ; 5 uses
  %.076142 = phi i32 [ %.1, %bb.am ], [ 0, %thread-pre-split.thread ] ; 3 uses
  %.not94 = icmp eq ptr %.0143, %1
  br i1 %.not94, label %bb.am, label %bb.ak

bb.ak:                                            ; preds = %.lr.ph145
  %i.km = load i32, ptr %.0143, align 8, !tbaa !25 ; 2 uses
  %.not95 = icmp ult i32 %i.km, %.076142
  br i1 %.not95, label %bb.am, label %bb.al

bb.al:                                            ; preds = %bb.ak
  store ptr %.0143, ptr %0, align 8, !tbaa !53
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.ak, %.lr.ph145
  %i.kn = phi ptr [ %.0143, %bb.al ], [ %i.kl, %bb.ak ], [ %i.kl, %.lr.ph145 ] ; 3 uses
  %.1 = phi i32 [ %i.km, %bb.al ], [ %.076142, %bb.ak ], [ %.076142, %.lr.ph145 ]
  %i.ko = getelementptr inbounds nuw i8, ptr %.0143, i64 304
  %.0 = load ptr, ptr %i.ko, align 8, !tbaa !38   ; 2 uses
  %.not93 = icmp eq ptr %.0, null
  br i1 %.not93, label %.loopexit, label %.lr.ph145, !llvm.loop !199

.loopexit:                                        ; preds = %bb.am
  %.not96 = icmp eq ptr %i.kn, null
  br i1 %.not96, label %.loopexit.thread, label %.loopexit.thread186

.loopexit.thread186:                              ; preds = %thread-pre-split, %.loopexit
  %i.kp = phi ptr [ %i.kn, %.loopexit ], [ %i.kj, %thread-pre-split ]
  %i.kq = load i32, ptr %i.kp, align 8, !tbaa !25
  store i32 %i.kq, ptr %i.kb, align 4, !tbaa !54
  br label %.loopexit.thread

.loopexit.thread:                                 ; preds = %thread-pre-split.thread, %.loopexit, %.loopexit.thread186, %bb.ah
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.jo, i8 0, i64 16, i1 false)
  br label %bb.an

bb.an:                                            ; preds = %bb.a, %.loopexit.thread
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @hnsw_cursor_element_deleted(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(address) %1) local_unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1664
  %.08 = load ptr, ptr %i.a, align 8, !tbaa !74   ; 2 uses
  %.not9 = icmp eq ptr %.08, null
  br i1 %.not9, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 304
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.d
  %.010 = phi ptr [ %.08, %.lr.ph ], [ %.0, %bb.d ] ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.010, i64 8 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !73
  %i.e = icmp eq ptr %i.d, %1
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.f = load ptr, ptr %i.b, align 8, !tbaa !38
  store ptr %i.f, ptr %i.c, align 8, !tbaa !73
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %.010, i64 16
  %.0 = load ptr, ptr %i.g, align 8, !tbaa !74    ; 2 uses
  %.not = icmp eq ptr %.0, null
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !12

._crit_edge:                                      ; preds = %bb.d, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 2) i32 @hnsw_delete_node(ptr noundef %0, ptr noundef %1, ptr nofree noundef readonly captures(address_is_null) %2) local_unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 304 ; 2 uses
  %i.b = tail call i32 @pthread_rwlock_wrlock(ptr noundef nonnull %i.a) #34
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  tail call void @hnsw_unlink_node(ptr noundef nonnull %0, ptr noundef %1)
  %.not21 = icmp eq ptr %2, null
  br i1 %.not21, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 288
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !29   ; 2 uses
  %.not22 = icmp eq ptr %i.d, null
  br i1 %.not22, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void %2(ptr noundef nonnull %i.d) #34
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 312 ; 2 uses
  br label %bb.f

.preheader.i:                                     ; preds = %bb.f, %.preheader.i
  %.09.i = phi i32 [ %i.j, %.preheader.i ], [ 0, %bb.f ] ; 2 uses
  %i.f = load ptr, ptr @hfree, align 8, !tbaa !29
  %i.g = zext i32 %.09.i to i64
  %i.h = getelementptr inbounds nuw [24 x i8], ptr %i.e, i64 %i.g
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !66
  tail call void %i.f(ptr noundef %i.i) #34, !inline_history !68
  %i.j = add i32 %.09.i, 1                        ; 2 uses
  %i.k = load i32, ptr %1, align 8, !tbaa !25
  %.not8.i = icmp ugt i32 %i.j, %i.k
  br i1 %.not8.i, label %hnsw_node_free.exit, label %.preheader.i, !llvm.loop !10

hnsw_node_free.exit:                              ; preds = %.preheader.i
  %i.l = load ptr, ptr @hfree, align 8, !tbaa !29
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !29
  tail call void %i.l(ptr noundef %i.n) #34, !inline_history !68
  %i.o = load ptr, ptr @hfree, align 8, !tbaa !29
  tail call void %i.o(ptr noundef nonnull %1) #34, !inline_history !68
  %i.p = tail call i32 @pthread_rwlock_unlock(ptr noundef nonnull %i.a) #34 ; 0 uses
  br label %bb.g

bb.f:                                             ; preds = %bb.e, %bb.f
  %.024 = phi i32 [ 0, %bb.e ], [ %i.v, %bb.f ]   ; 3 uses
  %i.q = zext i32 %.024 to i64
  %i.r = getelementptr inbounds nuw [24 x i8], ptr %i.e, i64 %i.q ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !66
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.u = load i32, ptr %i.t, align 8, !tbaa !63
  tail call void @hnsw_reconnect_nodes(ptr noundef nonnull %0, ptr noundef %i.s, i32 noundef %i.u, i32 noundef %.024)
  %i.v = add i32 %.024, 1                         ; 2 uses
  %i.w = load i32, ptr %1, align 8, !tbaa !25
  %.not23 = icmp ugt i32 %i.v, %i.w
  br i1 %.not23, label %.preheader.i, label %bb.f, !llvm.loop !200

bb.g:                                             ; preds = %bb.a, %hnsw_node_free.exit
  %.018 = phi i32 [ 1, %hnsw_node_free.exit ], [ 0, %bb.a ]
  ret i32 %.018
}

; Function Attrs: nounwind
declare i32 @pthread_rwlock_wrlock(ptr noundef) local_unnamed_addr #18

; Function Attrs: nounwind
declare i32 @pthread_rwlock_unlock(ptr noundef) local_unnamed_addr #18

; Function Attrs: nounwind uwtable
define dso_local range(i32 -1, 32) i32 @hnsw_acquire_read_slot(ptr noundef %0) local_unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 360 ; 3 uses
  %i.b = tail call i32 @pthread_mutex_trylock(ptr noundef nonnull %i.a) #34
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.ag, %bb.af, %bb.ae, %bb.ad, %bb.ac, %bb.ab, %bb.aa, %bb.z, %bb.y, %bb.x, %bb.w, %bb.v, %bb.u, %bb.t, %bb.s, %bb.r, %bb.q, %bb.p, %bb.o, %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.a
  %.01623.lcssa.wide = phi i32 [ 0, %bb.a ], [ 1, %bb.c ], [ 2, %bb.d ], [ 3, %bb.e ], [ 4, %bb.f ], [ 5, %bb.g ], [ 6, %bb.h ], [ 7, %bb.i ], [ 8, %bb.j ], [ 9, %bb.k ], [ 10, %bb.l ], [ 11, %bb.m ], [ 12, %bb.n ], [ 13, %bb.o ], [ 14, %bb.p ], [ 15, %bb.q ], [ 16, %bb.r ], [ 17, %bb.s ], [ 18, %bb.t ], [ 19, %bb.u ], [ 20, %bb.v ], [ 21, %bb.w ], [ 22, %bb.x ], [ 23, %bb.y ], [ 24, %bb.z ], [ 25, %bb.aa ], [ 26, %bb.ab ], [ 27, %bb.ac ], [ 28, %bb.ad ], [ 29, %bb.ae ], [ 30, %bb.af ], [ 31, %bb.ag ]
  %.lcssa = phi ptr [ %i.a, %bb.a ], [ %i.f, %bb.c ], [ %i.i, %bb.d ], [ %i.l, %bb.e ], [ %i.o, %bb.f ], [ %i.r, %bb.g ], [ %i.u, %bb.h ], [ %i.x, %bb.i ], [ %i.aa, %bb.j ], [ %i.ad, %bb.k ], [ %i.ag, %bb.l ], [ %i.aj, %bb.m ], [ %i.am, %bb.n ], [ %i.ap, %bb.o ], [ %i.as, %bb.p ], [ %i.av, %bb.q ], [ %i.ay, %bb.r ], [ %i.bb, %bb.s ], [ %i.be, %bb.t ], [ %i.bh, %bb.u ], [ %i.bk, %bb.v ], [ %i.bn, %bb.w ], [ %i.bq, %bb.x ], [ %i.bt, %bb.y ], [ %i.bw, %bb.z ], [ %i.bz, %bb.aa ], [ %i.cc, %bb.ab ], [ %i.cf, %bb.ac ], [ %i.ci, %bb.ad ], [ %i.cl, %bb.ae ], [ %i.co, %bb.af ], [ %i.cr, %bb.ag ]
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 304
  %i.e = tail call i32 @pthread_rwlock_rdlock(ptr noundef nonnull %i.d) #34
  %.not = icmp eq i32 %i.e, 0
  br i1 %.not, label %.thread, label %.thread.sink.split

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 400 ; 2 uses
  %i.g = tail call i32 @pthread_mutex_trylock(ptr noundef nonnull %i.f) #34
  %i.h = icmp eq i32 %i.g, 0
  br i1 %i.h, label %bb.b, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 440 ; 2 uses
  %i.j = tail call i32 @pthread_mutex_trylock(ptr noundef nonnull %i.i) #34
  %i.k = icmp eq i32 %i.j, 0
  br i1 %i.k, label %bb.b, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 480 ; 2 uses
  %i.m = tail call i32 @pthread_mutex_trylock(ptr noundef nonnull %i.l) #34
  %i.n = icmp eq i32 %i.m, 0
  br i1 %i.n, label %bb.b, label %bb.f
end_hunk_0
