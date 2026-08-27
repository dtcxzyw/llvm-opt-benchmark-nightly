Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/redis/original/hnsw?download=true
inline.NumInlined: 98
inline.NumDeleted: 4
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 30
loop-unroll.NumUnrolled: 37
begin_hunk_0_@hnsw_unlink_node:bb.a
  %i.gf = or disjoint i64 %indvars.iv.i100, 3     ; 2 uses
  %i.gg = getelementptr inbounds nuw i8, ptr %i.do, i64 %i.gf
  %i.gh = load i8, ptr %i.gg, align 1, !tbaa !32
  %i.gi = sext i8 %i.gh to i32
  %i.gj = getelementptr inbounds nuw i8, ptr %i.dq, i64 %i.gf
  %i.gk = load i8, ptr %i.gj, align 1, !tbaa !32
  %i.gl = sext i8 %i.gk to i32
  %i.gm = mul nsw i32 %i.gl, %i.gi
  %i.gn = add i32 %i.fo, %.07185.i
  %i.go = add i32 %i.gn, %i.fw
  %i.gp = add i32 %i.go, %i.ge
  %i.gq = add i32 %i.gp, %i.gm                    ; 2 uses
  %i.gr = or disjoint i64 %indvars.iv.i100, 4     ; 2 uses
  %i.gs = getelementptr inbounds nuw i8, ptr %i.do, i64 %i.gr
  %i.gt = load i8, ptr %i.gs, align 1, !tbaa !32
  %i.gu = sext i8 %i.gt to i32
  %i.gv = getelementptr inbounds nuw i8, ptr %i.dq, i64 %i.gr
  %i.gw = load i8, ptr %i.gv, align 1, !tbaa !32
  %i.gx = sext i8 %i.gw to i32
  %i.gy = mul nsw i32 %i.gx, %i.gu
  %i.gz = or disjoint i64 %indvars.iv.i100, 5     ; 2 uses
  %i.ha = getelementptr inbounds nuw i8, ptr %i.do, i64 %i.gz
  %i.hb = load i8, ptr %i.ha, align 1, !tbaa !32
  %i.hc = sext i8 %i.hb to i32
  %i.hd = getelementptr inbounds nuw i8, ptr %i.dq, i64 %i.gz
  %i.he = load i8, ptr %i.hd, align 1, !tbaa !32
  %i.hf = sext i8 %i.he to i32
  %i.hg = mul nsw i32 %i.hf, %i.hc
  %i.hh = or disjoint i64 %indvars.iv.i100, 6     ; 2 uses
  %i.hi = getelementptr inbounds nuw i8, ptr %i.do, i64 %i.hh
  %i.hj = load i8, ptr %i.hi, align 1, !tbaa !32
  %i.hk = sext i8 %i.hj to i32
  %i.hl = getelementptr inbounds nuw i8, ptr %i.dq, i64 %i.hh
  %i.hm = load i8, ptr %i.hl, align 1, !tbaa !32
  %i.hn = sext i8 %i.hm to i32
  %i.ho = mul nsw i32 %i.hn, %i.hk
  %i.hp = getelementptr inbounds nuw i8, ptr %i.do, i64 %i.fh
  %i.hq = load i8, ptr %i.hp, align 1, !tbaa !32
  %i.hr = sext i8 %i.hq to i32
  %i.hs = getelementptr inbounds nuw i8, ptr %i.dq, i64 %i.fh
  %i.ht = load i8, ptr %i.hs, align 1, !tbaa !32
  %i.hu = sext i8 %i.ht to i32
  %i.hv = mul nsw i32 %i.hu, %i.hr
  %i.hw = add i32 %i.gy, %.07086.i
  %i.hx = add i32 %i.hw, %i.hg
  %i.hy = add i32 %i.hx, %i.ho
  %i.hz = add i32 %i.hy, %i.hv                    ; 2 uses
  %indvars.iv.next.i101 = add nuw nsw i64 %indvars.iv.i100, 8 ; 2 uses
  %i.ia = or disjoint i64 %indvars.iv.next.i101, 7
  %i.ib = icmp samesign ult i64 %i.ia, %i.ek
  br i1 %i.ib, label %.lr.ph.i99, label %.preheader.loopexit.i, !llvm.loop !57

.lr.ph92.i:                                       ; preds = %.lr.ph92.i.preheader, %.lr.ph92.i
  %indvars.iv98.i = phi i64 [ %indvars.iv.next99.i, %.lr.ph92.i ], [ %indvars.iv98.i.ph, %.lr.ph92.i.preheader ] ; 3 uses
  %.17290.i = phi i32 [ %i.ij, %.lr.ph92.i ], [ %.17290.i.ph, %.lr.ph92.i.preheader ]
  %i.ic = getelementptr inbounds nuw i8, ptr %i.do, i64 %indvars.iv98.i
  %i.id = load i8, ptr %i.ic, align 1, !tbaa !32
  %i.ie = sext i8 %i.id to i32
  %i.if = getelementptr inbounds nuw i8, ptr %i.dq, i64 %indvars.iv98.i
  %i.ig = load i8, ptr %i.if, align 1, !tbaa !32
  %i.ih = sext i8 %i.ig to i32
  %i.ii = mul nsw i32 %i.ih, %i.ie
  %i.ij = add nsw i32 %i.ii, %.17290.i            ; 2 uses
  %indvars.iv.next99.i = add nuw nsw i64 %indvars.iv98.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next99.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %._crit_edge.i, label %.lr.ph92.i, !llvm.loop !182

._crit_edge.i:                                    ; preds = %.lr.ph92.i, %middle.block, %.preheader.i
  %.172.lcssa.i = phi i32 [ %.071.lcssa.i, %.preheader.i ], [ %i.fg, %middle.block ], [ %i.ij, %.lr.ph92.i ]
  %i.ik = add nsw i32 %.172.lcssa.i, %.070.lcssa.i
  %i.il = sitofp i32 %i.ik to float
  %i.im = fmul float %i.ei, %i.il
  %i.in = fsub float 1.000000e+00, %i.im          ; 3 uses
  %i.io = fcmp olt float %i.in, 0.000000e+00
  br i1 %i.io, label %hnsw_distance.exit.i, label %bb.v

bb.v:                                             ; preds = %._crit_edge.i
  %i.ip = fcmp ogt float %i.in, 2.000000e+00
  br i1 %i.ip, label %bb.w, label %hnsw_distance.exit.i

bb.w:                                             ; preds = %bb.v
  br label %hnsw_distance.exit.i

bb.x:                                             ; preds = %bb.h
  %i.iq = load ptr, ptr %i.ar, align 8, !tbaa !15
  %i.ir = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  %i.is = load ptr, ptr %i.ir, align 8, !tbaa !15
  %i.it = load i32, ptr %i.g, align 8, !tbaa !73
  %i.iu = tail call float @vectors_distance_bin(ptr noundef %i.iq, ptr noundef %i.is, i32 noundef %i.it)
  %.pre.i = load i32, ptr %i.u, align 8, !tbaa !132
  br label %hnsw_distance.exit.i

bb.y:                                             ; preds = %bb.h
  tail call void @__assert_fail(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 724, ptr noundef nonnull @__PRETTY_FUNCTION__.hnsw_distance) #35
  unreachable

hnsw_distance.exit.i:                             ; preds = %bb.w, %bb.v, %._crit_edge.i, %bb.t, %bb.s, %bb.q, %._crit_edge.i106, %bb.m, %bb.j, %bb.x
  %i.iv = phi i32 [ %.pre.i, %bb.x ], [ %i.at, %._crit_edge.i106 ], [ %i.at, %bb.j ], [ %i.at, %bb.m ], [ %i.at, %bb.q ], [ %i.at, %bb.s ], [ %i.at, %bb.t ], [ %i.at, %._crit_edge.i ], [ %i.at, %bb.v ], [ %i.at, %bb.w ] ; 2 uses
  %.0.i.i = phi float [ %i.iu, %bb.x ], [ %i.dn, %._crit_edge.i106 ], [ %i.be, %bb.j ], [ %i.bi, %bb.m ], [ %i.dy, %bb.q ], [ %i.ec, %bb.s ], [ 1.000000e+00, %bb.t ], [ 0.000000e+00, %._crit_edge.i ], [ %i.in, %bb.v ], [ 2.000000e+00, %bb.w ] ; 2 uses
  %i.iw = fcmp ogt float %.0.i.i, %.01925.i       ; 2 uses
  %.120.i = select i1 %i.iw, float %.0.i.i, float %.01925.i ; 2 uses
  %i.ix = trunc nuw i64 %indvars.iv.i to i32
  %.1.i = select i1 %i.iw, i32 %i.ix, i32 %.01826.i ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.iy = zext i32 %i.iv to i64
  %i.iz = icmp samesign ult i64 %indvars.iv.next.i, %i.iy
  br i1 %i.iz, label %bb.h, label %hnsw_update_worst_neighbor.exit, !llvm.loop !158

hnsw_update_worst_neighbor.exit:                  ; preds = %hnsw_distance.exit.i
  %i.ja = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  store float %.120.i, ptr %i.ja, align 8, !tbaa !133
  store i32 %.1.i, ptr %i.ao, align 4, !tbaa !134
  br label %hnsw_update_worst_neighbor_on_remove.exit

bb.z:                                             ; preds = %bb.g
  %i.jb = icmp ugt i32 %i.ap, %i.ab
  br i1 %i.jb, label %bb.aa, label %hnsw_update_worst_neighbor_on_remove.exit

bb.aa:                                            ; preds = %bb.z
  %i.jc = add i32 %i.ap, -1
  store i32 %i.jc, ptr %i.ao, align 4, !tbaa !134
  br label %hnsw_update_worst_neighbor_on_remove.exit

bb.ab:                                            ; preds = %bb.d
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %hnsw_update_worst_neighbor_on_remove.exit, label %bb.d, !llvm.loop !183

hnsw_update_worst_neighbor_on_remove.exit:        ; preds = %bb.ab, %.lr.ph134, %bb.aa, %bb.z, %hnsw_update_worst_neighbor.exit, %bb.f
  %indvars.iv.next159 = add nuw nsw i64 %indvars.iv158, 1 ; 2 uses
  %i.jd = load i32, ptr %i.j, align 8, !tbaa !132
  %i.je = zext i32 %i.jd to i64
  %i.jf = icmp samesign ult i64 %indvars.iv.next159, %i.je
  br i1 %i.jf, label %.lr.ph134, label %._crit_edge, !llvm.loop !184

.lr.ph.i:                                         ; preds = %bb.c
  %i.jg = getelementptr inbounds nuw i8, ptr %1, i64 304
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ae, %.lr.ph.i
  %.010.i = phi ptr [ %i.m, %.lr.ph.i ], [ %.0.i, %bb.ae ] ; 2 uses
  %i.jh = getelementptr inbounds nuw i8, ptr %.010.i, i64 8 ; 2 uses
  %i.ji = load ptr, ptr %i.jh, align 8, !tbaa !185
  %i.jj = icmp eq ptr %i.ji, %1
  br i1 %i.jj, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.jk = load ptr, ptr %i.jg, align 8, !tbaa !26
  store ptr %i.jk, ptr %i.jh, align 8, !tbaa !185
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  %i.jl = getelementptr inbounds nuw i8, ptr %.010.i, i64 16
  %.0.i = load ptr, ptr %i.jl, align 8, !tbaa !188 ; 2 uses
  %.not.i = icmp eq ptr %.0.i, null
  br i1 %.not.i, label %hnsw_cursor_element_deleted.exit, label %bb.ac, !llvm.loop !189

hnsw_cursor_element_deleted.exit:                 ; preds = %bb.ae, %bb.c
  %i.jm = getelementptr inbounds nuw i8, ptr %1, i64 296 ; 3 uses
  %i.jn = load ptr, ptr %i.jm, align 8, !tbaa !26 ; 2 uses
  %.not89 = icmp eq ptr %i.jn, null
  %i.jo = getelementptr inbounds nuw i8, ptr %1, i64 304
  %i.jp = load ptr, ptr %i.jo, align 8, !tbaa !26 ; 4 uses
  br i1 %.not89, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %hnsw_cursor_element_deleted.exit
  %i.jq = getelementptr inbounds nuw i8, ptr %i.jn, i64 304
  store ptr %i.jp, ptr %i.jq, align 8, !tbaa !26
  br label %bb.ah

bb.ag:                                            ; preds = %hnsw_cursor_element_deleted.exit
  %i.jr = getelementptr inbounds nuw i8, ptr %0, i64 296
  store ptr %i.jp, ptr %i.jr, align 8, !tbaa !139
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af
  %.not90 = icmp eq ptr %i.jp, null
  br i1 %.not90, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.js = load ptr, ptr %i.jm, align 8, !tbaa !26
  %i.jt = getelementptr inbounds nuw i8, ptr %i.jp, i64 296
  store ptr %i.js, ptr %i.jt, align 8, !tbaa !26
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ah
  %i.ju = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.jv = load i64, ptr %i.ju, align 8, !tbaa !92
  %i.jw = add i64 %i.jv, -1
  store i64 %i.jw, ptr %i.ju, align 8, !tbaa !92
  %i.jx = load ptr, ptr %0, align 8, !tbaa !90
  %i.jy = icmp eq ptr %1, %i.jx
  br i1 %i.jy, label %bb.ak, label %.loopexit.thread

bb.ak:                                            ; preds = %bb.aj
  store ptr null, ptr %0, align 8, !tbaa !90
  %i.jz = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  store i32 0, ptr %i.jz, align 4, !tbaa !91
  %i.ka = load i32, ptr %1, align 8, !tbaa !9     ; 2 uses
  %i.kb = icmp sgt i32 %i.ka, -1
  br i1 %i.kb, label %.lr.ph138.a, label %thread-pre-split.thread

bb.al:                                            ; preds = %.lr.ph138.a
  %2 = add nsw i32 %.077136, -1
  %i.kc = icmp sgt i32 %.077136, 0
  br i1 %i.kc, label %.lr.ph138.a, label %thread-pre-split.thread, !llvm.loop !190

.lr.ph138.a:                                      ; preds = %bb.ak, %bb.al
  %.077136 = phi i32 [ %2, %bb.al ], [ %i.ka, %bb.ak ] ; 3 uses
  %3 = zext nneg i32 %.077136 to i64
  %i.kd = getelementptr inbounds nuw [24 x i8], ptr %i.e, i64 %3 ; 2 uses
  %i.ke = getelementptr inbounds nuw i8, ptr %i.kd, i64 8
  %i.kf = load i32, ptr %i.ke, align 8, !tbaa !132
  %.not91 = icmp eq i32 %i.kf, 0
  br i1 %.not91, label %bb.al, label %thread-pre-split

thread-pre-split:                                 ; preds = %.lr.ph138.a
  %i.kg = load ptr, ptr %i.kd, align 8, !tbaa !135
  %i.kh = load ptr, ptr %i.kg, align 8, !tbaa !26 ; 3 uses
  store ptr %i.kh, ptr %0, align 8, !tbaa !90
  %.not92 = icmp eq ptr %i.kh, null
  br i1 %.not92, label %thread-pre-split.thread, label %.loopexit.thread186

thread-pre-split.thread:                          ; preds = %bb.al, %bb.ak, %thread-pre-split
  %i.ki = getelementptr inbounds nuw i8, ptr %0, i64 296
  %.0139 = load ptr, ptr %i.ki, align 8, !tbaa !26 ; 2 uses
  %.not93140 = icmp eq ptr %.0139, null
  br i1 %.not93140, label %.loopexit.thread, label %.lr.ph144

.lr.ph144:                                        ; preds = %thread-pre-split.thread, %bb.ao
  %i.kj = phi ptr [ %i.kl, %bb.ao ], [ null, %thread-pre-split.thread ] ; 2 uses
  %.0142 = phi ptr [ %.0, %bb.ao ], [ %.0139, %thread-pre-split.thread ] ; 5 uses
  %.076141 = phi i32 [ %.1, %bb.ao ], [ 0, %thread-pre-split.thread ] ; 3 uses
  %.not94 = icmp eq ptr %.0142, %1
  br i1 %.not94, label %bb.ao, label %bb.am

bb.am:                                            ; preds = %.lr.ph144
  %i.kk = load i32, ptr %.0142, align 8, !tbaa !9 ; 2 uses
  %.not95 = icmp ult i32 %i.kk, %.076141
  br i1 %.not95, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %bb.am
  store ptr %.0142, ptr %0, align 8, !tbaa !90
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.am, %.lr.ph144
  %i.kl = phi ptr [ %.0142, %bb.an ], [ %i.kj, %bb.am ], [ %i.kj, %.lr.ph144 ] ; 3 uses
  %.1 = phi i32 [ %i.kk, %bb.an ], [ %.076141, %bb.am ], [ %.076141, %.lr.ph144 ]
  %i.km = getelementptr inbounds nuw i8, ptr %.0142, i64 304
  %.0 = load ptr, ptr %i.km, align 8, !tbaa !26   ; 2 uses
  %.not93 = icmp eq ptr %.0, null
  br i1 %.not93, label %.loopexit, label %.lr.ph144, !llvm.loop !191

.loopexit:                                        ; preds = %bb.ao
  %.not96 = icmp eq ptr %i.kl, null
  br i1 %.not96, label %.loopexit.thread, label %.loopexit.thread186

.loopexit.thread186:                              ; preds = %thread-pre-split, %.loopexit
  %i.kn = phi ptr [ %i.kl, %.loopexit ], [ %i.kh, %thread-pre-split ]
  %i.ko = load i32, ptr %i.kn, align 8, !tbaa !9
  store i32 %i.ko, ptr %i.jz, align 4, !tbaa !91
  br label %.loopexit.thread

.loopexit.thread:                                 ; preds = %thread-pre-split.thread, %.loopexit, %.loopexit.thread186, %bb.aj
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.jm, i8 0, i64 16, i1 false)
  br label %bb.ap

bb.ap:                                            ; preds = %bb.a, %.loopexit.thread
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @hnsw_cursor_element_deleted(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(address) %1) local_unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1664
  %.08 = load ptr, ptr %i.a, align 8, !tbaa !188  ; 2 uses
  %.not9 = icmp eq ptr %.08, null
  br i1 %.not9, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 304
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.d
  %.010 = phi ptr [ %.08, %.lr.ph ], [ %.0, %bb.d ] ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.010, i64 8 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !185
  %i.e = icmp eq ptr %i.d, %1
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.f = load ptr, ptr %i.b, align 8, !tbaa !26
  store ptr %i.f, ptr %i.c, align 8, !tbaa !185
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %.010, i64 16
  %.0 = load ptr, ptr %i.g, align 8, !tbaa !188   ; 2 uses
  %.not = icmp eq ptr %.0, null
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !189

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
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !15   ; 2 uses
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
  %i.f = load ptr, ptr @hfree, align 8, !tbaa !15
  %i.g = zext i32 %.09.i to i64
  %i.h = getelementptr inbounds nuw [24 x i8], ptr %i.e, i64 %i.g
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !135
  tail call void %i.f(ptr noundef %i.i) #34, !inline_history !140
  %i.j = add i32 %.09.i, 1                        ; 2 uses
  %i.k = load i32, ptr %1, align 8, !tbaa !9
  %.not8.i = icmp ugt i32 %i.j, %i.k
  br i1 %.not8.i, label %hnsw_node_free.exit, label %.preheader.i, !llvm.loop !138

hnsw_node_free.exit:                              ; preds = %.preheader.i
  %i.l = load ptr, ptr @hfree, align 8, !tbaa !15
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !15
  tail call void %i.l(ptr noundef %i.n) #34, !inline_history !140
  %i.o = load ptr, ptr @hfree, align 8, !tbaa !15
  tail call void %i.o(ptr noundef nonnull %1) #34, !inline_history !140
  %i.p = tail call i32 @pthread_rwlock_unlock(ptr noundef nonnull %i.a) #34 ; 0 uses
  br label %bb.g

bb.f:                                             ; preds = %bb.e, %bb.f
  %.024 = phi i32 [ 0, %bb.e ], [ %i.v, %bb.f ]   ; 3 uses
  %i.q = zext i32 %.024 to i64
  %i.r = getelementptr inbounds nuw [24 x i8], ptr %i.e, i64 %i.q ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !135
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.u = load i32, ptr %i.t, align 8, !tbaa !132
  tail call void @hnsw_reconnect_nodes(ptr noundef nonnull %0, ptr noundef %i.s, i32 noundef %i.u, i32 noundef %.024)
  %i.v = add i32 %.024, 1                         ; 2 uses
  %i.w = load i32, ptr %1, align 8, !tbaa !9
  %.not23 = icmp ugt i32 %i.v, %i.w
  br i1 %.not23, label %.preheader.i, label %bb.f, !llvm.loop !192

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
