Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/redis/original/hnsw?download=true
inline.NumInlined: 98
inline.NumDeleted: 4
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 30
loop-unroll.NumUnrolled: 37
begin_hunk_0_@select_neighbors:bb.a
  %indvars.iv.next306 = add nuw nsw i64 %indvars.iv305, 1 ; 2 uses
  %i.ff = zext i32 %i.fc to i64
  %i.fg = icmp samesign ult i64 %indvars.iv.next306, %i.ff
  br i1 %i.fg, label %bb.s, label %._crit_edge, !llvm.loop !249

._crit_edge.thread:                               ; preds = %.preheader, %._crit_edge
  %i.fh = phi i32 [ %i.fd, %._crit_edge ], [ %i.dr, %.preheader ] ; 2 uses
  %i.fi = phi ptr [ %i.fe, %._crit_edge ], [ %i.dd, %.preheader ]
  %i.fj = mul i32 %i.fh, 3
  %i.fk = shl i32 %i.fh, 1
  %i.fl = select i1 %i.k, i32 %i.fj, i32 %i.fk
  %i.fm = load i32, ptr %i.br, align 4, !tbaa !100 ; 2 uses
  %.not247 = icmp ult i32 %i.fm, %i.fl
  br i1 %.not247, label %bb.z, label %hnsw_update_worst_neighbor_on_add.exit251.thread

bb.z:                                             ; preds = %._crit_edge.thread
  %i.fn = add nuw i32 %i.fm, 1                    ; 2 uses
  %i.fo = load ptr, ptr @hrealloc, align 8, !tbaa !67
  %i.fp = zext i32 %i.fn to i64
  %i.fq = shl nuw nsw i64 %i.fp, 3
  %i.fr = tail call ptr %i.fo(ptr noundef %i.fi, i64 noundef %i.fq) #34 ; 3 uses
  %i.fs = icmp eq ptr %i.fr, null
  br i1 %i.fs, label %hnsw_update_worst_neighbor_on_add.exit251.thread, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  store ptr %i.fr, ptr %i.bo, align 8, !tbaa !104
  store i32 %i.fn, ptr %i.br, align 4, !tbaa !100
  %i.ft = load i32, ptr %i.bp, align 8, !tbaa !101 ; 4 uses
  %i.fu = zext i32 %i.ft to i64
  %i.fv = getelementptr inbounds nuw [8 x i8], ptr %i.fr, i64 %i.fu
  store ptr %2, ptr %i.fv, align 8, !tbaa !76
  %i.fw = add i32 %i.ft, 1
  store i32 %i.fw, ptr %i.bp, align 8, !tbaa !101
  %i.fx = icmp eq i32 %i.ft, 0
  br i1 %i.fx, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.fy = getelementptr inbounds nuw i8, ptr %i.bo, i64 16
  %i.fz = load float, ptr %i.fy, align 8, !tbaa !102
  %i.ga = fcmp ogt float %i.w, %i.fz
  br i1 %i.ga, label %bb.ac, label %hnsw_update_worst_neighbor_on_add.exit254

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %i.gb = getelementptr inbounds nuw i8, ptr %i.bo, i64 16
  store float %i.w, ptr %i.gb, align 8, !tbaa !102
  store i32 %i.ft, ptr %i.de, align 4, !tbaa !103
  br label %hnsw_update_worst_neighbor_on_add.exit254

hnsw_update_worst_neighbor_on_add.exit254:        ; preds = %bb.ab, %bb.ac
  %i.gc = load i32, ptr %i.f, align 8, !tbaa !101 ; 5 uses
  %i.gd = load ptr, ptr %i.e, align 8, !tbaa !104
  %i.ge = zext i32 %i.gc to i64
  %i.gf = getelementptr inbounds nuw [8 x i8], ptr %i.gd, i64 %i.ge
  store ptr %i.t, ptr %i.gf, align 8, !tbaa !76
  %i.gg = add i32 %i.gc, 1
  store i32 %i.gg, ptr %i.f, align 8, !tbaa !101
  %i.gh = icmp eq i32 %i.gc, 0
  br i1 %i.gh, label %hnsw_update_worst_neighbor_on_add.exit251.thread.sink.split, label %bb.ad

bb.ad:                                            ; preds = %hnsw_update_worst_neighbor_on_add.exit254
  %i.gi = load float, ptr %i.l, align 8, !tbaa !102
  %i.gj = fcmp ogt float %i.w, %i.gi
  br i1 %i.gj, label %hnsw_update_worst_neighbor_on_add.exit251.thread.sink.split, label %hnsw_update_worst_neighbor_on_add.exit251.thread

hnsw_update_worst_neighbor_on_add.exit255:        ; preds = %._crit_edge
  %i.gk = getelementptr inbounds nuw i8, ptr %i.bo, i64 16
  store float %.2216, ptr %i.gk, align 8, !tbaa !102
  store i32 %.2219, ptr %i.de, align 4, !tbaa !103
  br label %bb.ae

bb.ae:                                            ; preds = %hnsw_update_worst_neighbor_on_add.exit255, %bb.q, %.thread260, %.thread259, %bb.r
  %i.gl = phi ptr [ %i.de, %hnsw_update_worst_neighbor_on_add.exit255 ], [ %i.de, %bb.r ], [ %i.ct, %.thread260 ], [ %i.de, %.thread259 ], [ %i.de, %bb.q ]
  %i.gm = phi ptr [ %i.bo, %hnsw_update_worst_neighbor_on_add.exit255 ], [ %i.bo, %bb.r ], [ %i.bh, %.thread260 ], [ %i.bo, %.thread259 ], [ %i.bo, %bb.q ]
  %.3223 = phi ptr [ %.2222, %hnsw_update_worst_neighbor_on_add.exit255 ], [ %i.di, %bb.r ], [ %i.cx, %.thread260 ], [ %i.di, %.thread259 ], [ %i.di, %bb.q ] ; 2 uses
  %i.gn = getelementptr inbounds nuw i8, ptr %.3223, i64 312
  %i.go = getelementptr inbounds nuw [24 x i8], ptr %i.gn, i64 %i.d ; 5 uses
  %i.gp = getelementptr inbounds nuw i8, ptr %i.go, i64 8 ; 3 uses
  %i.gq = load i32, ptr %i.gp, align 8, !tbaa !101 ; 2 uses
  %i.gr = zext i32 %i.gq to i64                   ; 2 uses
  %.not301 = icmp eq i32 %i.gq, 0
  br i1 %.not301, label %hnsw_update_worst_neighbor_on_remove.exit, label %.lr.ph294

.lr.ph294:                                        ; preds = %bb.ae
  %i.gs = load ptr, ptr %i.go, align 8, !tbaa !104 ; 2 uses
  br label %bb.af

bb.af:                                            ; preds = %.lr.ph294, %bb.am
  %.0211292 = phi i64 [ 0, %.lr.ph294 ], [ %i.hm, %bb.am ] ; 5 uses
  %i.gt = getelementptr inbounds nuw [8 x i8], ptr %i.gs, i64 %.0211292
  %i.gu = load ptr, ptr %i.gt, align 8, !tbaa !76
  %i.gv = icmp eq ptr %i.gu, %i.t
  br i1 %i.gv, label %bb.ag, label %bb.am

bb.ag:                                            ; preds = %bb.af
  %i.gw = getelementptr inbounds nuw [8 x i8], ptr %i.gs, i64 %.0211292 ; 2 uses
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gw, i64 8
  %i.gy = xor i64 %.0211292, -1
  %i.gz = add nsw i64 %i.gr, %i.gy
  %i.ha = shl nuw nsw i64 %i.gz, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.gw, ptr nonnull align 8 %i.gx, i64 %i.ha, i1 false)
  %i.hb = load i32, ptr %i.gp, align 8, !tbaa !101
  %i.hc = add i32 %i.hb, -1                       ; 2 uses
  store i32 %i.hc, ptr %i.gp, align 8, !tbaa !101
  %i.hd = trunc nuw i64 %.0211292 to i32          ; 2 uses
  %i.he = icmp eq i32 %i.hc, 0
  br i1 %i.he, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  %i.hf = getelementptr inbounds nuw i8, ptr %i.go, i64 16
  store float 0.000000e+00, ptr %i.hf, align 8, !tbaa !102
  %i.hg = getelementptr inbounds nuw i8, ptr %i.go, i64 20
  store i32 0, ptr %i.hg, align 4, !tbaa !103
  br label %hnsw_update_worst_neighbor_on_remove.exit

bb.ai:                                            ; preds = %bb.ag
  %i.hh = getelementptr inbounds nuw i8, ptr %i.go, i64 20 ; 2 uses
  %i.hi = load i32, ptr %i.hh, align 4, !tbaa !103 ; 3 uses
  %i.hj = icmp eq i32 %i.hi, %i.hd
  br i1 %i.hj, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  tail call void @hnsw_update_worst_neighbor(ptr noundef readonly %0, ptr noundef nonnull %.3223, i32 noundef %3)
  br label %hnsw_update_worst_neighbor_on_remove.exit

bb.ak:                                            ; preds = %bb.ai
  %i.hk = icmp ugt i32 %i.hi, %i.hd
  br i1 %i.hk, label %bb.al, label %hnsw_update_worst_neighbor_on_remove.exit

bb.al:                                            ; preds = %bb.ak
  %i.hl = add i32 %i.hi, -1
  store i32 %i.hl, ptr %i.hh, align 4, !tbaa !103
  br label %hnsw_update_worst_neighbor_on_remove.exit

bb.am:                                            ; preds = %bb.af
  %i.hm = add nuw nsw i64 %.0211292, 1            ; 2 uses
  %exitcond311.not = icmp eq i64 %i.hm, %i.gr
  br i1 %exitcond311.not, label %hnsw_update_worst_neighbor_on_remove.exit, label %bb.af, !llvm.loop !250

hnsw_update_worst_neighbor_on_remove.exit:        ; preds = %bb.am, %bb.ae, %bb.al, %bb.ak, %bb.aj, %bb.ah
  %i.hn = load ptr, ptr %i.gm, align 8, !tbaa !104
  %i.ho = load i32, ptr %i.gl, align 4, !tbaa !103
  %i.hp = zext i32 %i.ho to i64
  %i.hq = getelementptr inbounds nuw [8 x i8], ptr %i.hn, i64 %i.hp
  store ptr %2, ptr %i.hq, align 8, !tbaa !76
  tail call void @hnsw_update_worst_neighbor(ptr noundef %0, ptr noundef %i.t, i32 noundef %3)
  %i.hr = load i32, ptr %i.f, align 8, !tbaa !101 ; 5 uses
  %i.hs = load ptr, ptr %i.e, align 8, !tbaa !104
  %i.ht = zext i32 %i.hr to i64
  %i.hu = getelementptr inbounds nuw [8 x i8], ptr %i.hs, i64 %i.ht
  store ptr %i.t, ptr %i.hu, align 8, !tbaa !76
  %i.hv = add i32 %i.hr, 1
  store i32 %i.hv, ptr %i.f, align 8, !tbaa !101
  %i.hw = icmp eq i32 %i.hr, 0
  br i1 %i.hw, label %hnsw_update_worst_neighbor_on_add.exit251.thread.sink.split, label %bb.an

bb.an:                                            ; preds = %hnsw_update_worst_neighbor_on_remove.exit
  %i.hx = load float, ptr %i.l, align 8, !tbaa !102
  %i.hy = fcmp ogt float %i.w, %i.hx
  br i1 %i.hy, label %hnsw_update_worst_neighbor_on_add.exit251.thread.sink.split, label %hnsw_update_worst_neighbor_on_add.exit251.thread

hnsw_update_worst_neighbor_on_add.exit251.thread.sink.split: ; preds = %hnsw_update_worst_neighbor_on_remove.exit, %bb.an, %hnsw_update_worst_neighbor_on_add.exit254, %bb.ad, %hnsw_update_worst_neighbor_on_add.exit, %bb.o
  %.sink = phi i32 [ %i.ch, %hnsw_update_worst_neighbor_on_add.exit ], [ %i.gc, %hnsw_update_worst_neighbor_on_add.exit254 ], [ %i.ch, %bb.o ], [ %i.gc, %bb.ad ], [ %i.hr, %bb.an ], [ %i.hr, %hnsw_update_worst_neighbor_on_remove.exit ]
  store float %i.w, ptr %i.l, align 8, !tbaa !102
  store i32 %.sink, ptr %i.m, align 4, !tbaa !103
  br label %hnsw_update_worst_neighbor_on_add.exit251.thread

hnsw_update_worst_neighbor_on_add.exit251.thread: ; preds = %bb.f, %hnsw_distance.exit, %hnsw_update_worst_neighbor_on_add.exit251.thread.sink.split, %bb.z, %._crit_edge.thread, %bb.ad, %bb.an, %bb.o, %.thread260, %bb.p, %bb.q, %bb.b
  %i.hz = load i32, ptr %i.a, align 8, !tbaa !70  ; 2 uses
  %i.ia = icmp ult i32 %i.p, %i.hz
  br i1 %i.ia, label %bb.b, label %hnsw_update_worst_neighbor_on_add.exit251.thread263, !llvm.loop !251

hnsw_update_worst_neighbor_on_add.exit251.thread263: ; preds = %hnsw_update_worst_neighbor_on_add.exit251.thread, %bb.c, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nounwind uwtable
define dso_local void @hnsw_reconnect_nodes(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #3 !guid !268 {
bb.a:
  %i.a = icmp slt i32 %2, 1
  br i1 %i.a, label %bb.bl, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr @hmalloc, align 8, !tbaa !67
  %i.c = zext nneg i32 %2 to i64                  ; 22 uses
  %i.d = shl nuw nsw i64 %i.c, 2                  ; 4 uses
  %i.e = mul nuw i64 %i.d, %i.c                   ; 2 uses
  %i.f = tail call ptr %i.b(i64 noundef %i.e) #34 ; 14 uses
  %.not = icmp eq ptr %i.f, null
  br i1 %.not, label %bb.bl, label %.lr.ph398

.lr.ph398:                                        ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 1656 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.i = zext nneg i32 %2 to i64                  ; 3 uses
  br label %bb.h

.loopexit383:                                     ; preds = %hnsw_distance.exit, %bb.h
  %indvars.iv.next = add nuw nsw i64 %indvars.iv.a, 1
  %exitcond465.not = icmp eq i64 %indvars.iv.next462, %i.c
  br i1 %exitcond465.not, label %._crit_edge, label %bb.h, !llvm.loop !253

._crit_edge:                                      ; preds = %.loopexit383
  %i.j = load ptr, ptr @hmalloc, align 8, !tbaa !67
  %i.k = tail call ptr %i.j(i64 noundef %i.d) #34 ; 7 uses
  %.not325 = icmp eq ptr %i.k, null
  br i1 %.not325, label %.sink.split, label %.preheader381.us.preheader

.preheader381.us.preheader:                       ; preds = %._crit_edge
  %xtraiter635 = and i64 %i.i, 1
  %i.l = icmp eq i32 %2, 1
  %unroll_iter = and i64 %i.i, 2147483646
  %lcmp.mod636.not = icmp eq i64 %xtraiter635, 0
  %lcmp.mod639 = trunc i32 %2 to i1
  br label %.preheader381.us

.preheader381.us:                                 ; preds = %.preheader381.us.preheader, %._crit_edge403.us
  %indvars.iv471 = phi i64 [ %indvars.iv.next472, %._crit_edge403.us ], [ 0, %.preheader381.us.preheader ] ; 6 uses
  %i.m = mul nuw nsw i64 %indvars.iv471, %i.c
  %invariant.gep583 = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.m ; 3 uses
  br i1 %i.l, label %.epil.preheader, label %.preheader381.us.new

.preheader381.us.new:                             ; preds = %.preheader381.us, %bb.f
  %indvars.iv466 = phi i64 [ %indvars.iv.next467.1, %bb.f ], [ 0, %.preheader381.us ] ; 4 uses
  %.0309400.us = phi i32 [ %.1310.us.1, %bb.f ], [ 0, %.preheader381.us ] ; 2 uses
  %.0311399.us = phi float [ %.1312.us.1, %bb.f ], [ 0.000000e+00, %.preheader381.us ] ; 2 uses
  %niter = phi i64 [ %niter.next.1, %bb.f ], [ 0, %.preheader381.us ]
  %.not345.us = icmp eq i64 %indvars.iv471, %indvars.iv466
  br i1 %.not345.us, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.preheader381.us.new
  %gep584 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep583, i64 %indvars.iv466
  %i.n = load float, ptr %gep584, align 4, !tbaa !77
  %i.o = fadd float %.0311399.us, %i.n
  %i.p = add nsw i32 %.0309400.us, 1
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %.preheader381.us.new
  %.1312.us = phi float [ %i.o, %bb.c ], [ %.0311399.us, %.preheader381.us.new ] ; 2 uses
  %.1310.us = phi i32 [ %i.p, %bb.c ], [ %.0309400.us, %.preheader381.us.new ] ; 2 uses
  %indvars.iv.next467 = or disjoint i64 %indvars.iv466, 1 ; 2 uses
  %.not345.us.1 = icmp eq i64 %indvars.iv471, %indvars.iv.next467
  br i1 %.not345.us.1, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %gep584.1.a = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep583, i64 %indvars.iv.next467
  %i.q = load float, ptr %gep584.1.a, align 4, !tbaa !77
  %i.r = fadd float %.1312.us, %i.q
  %i.s = add nsw i32 %.1310.us, 1
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.1312.us.1 = phi float [ %i.r, %bb.e ], [ %.1312.us, %bb.d ] ; 3 uses
  %.1310.us.1 = phi i32 [ %i.s, %bb.e ], [ %.1310.us, %bb.d ] ; 3 uses
  %indvars.iv.next467.1 = add nuw nsw i64 %indvars.iv466, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge403.us.unr-lcssa, label %.preheader381.us.new, !llvm.loop !254

._crit_edge403.us.unr-lcssa:                      ; preds = %bb.f
  br i1 %lcmp.mod636.not, label %._crit_edge403.us, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge403.us.unr-lcssa, %.preheader381.us
  %indvars.iv466.epil.init = phi i64 [ 0, %.preheader381.us ], [ %indvars.iv.next467.1, %._crit_edge403.us.unr-lcssa ] ; 2 uses
  %.0309400.us.epil.init = phi i32 [ 0, %.preheader381.us ], [ %.1310.us.1, %._crit_edge403.us.unr-lcssa ] ; 2 uses
  %.0311399.us.epil.init = phi float [ 0.000000e+00, %.preheader381.us ], [ %.1312.us.1, %._crit_edge403.us.unr-lcssa ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod639)
  %.not345.us.epil = icmp eq i64 %indvars.iv471, %indvars.iv466.epil.init
  br i1 %.not345.us.epil, label %._crit_edge403.us, label %bb.g

bb.g:                                             ; preds = %.epil.preheader
  %gep584.epil = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep583, i64 %indvars.iv466.epil.init
  %i.t = load float, ptr %gep584.epil, align 4, !tbaa !77
  %i.u = fadd float %.0311399.us.epil.init, %i.t
  %i.v = add nsw i32 %.0309400.us.epil.init, 1
  br label %._crit_edge403.us

._crit_edge403.us:                                ; preds = %.epil.preheader, %bb.g, %._crit_edge403.us.unr-lcssa
  %.1312.us.lcssa = phi float [ %.1312.us.1, %._crit_edge403.us.unr-lcssa ], [ %i.u, %bb.g ], [ %.0311399.us.epil.init, %.epil.preheader ]
  %.1310.us.lcssa = phi i32 [ %.1310.us.1, %._crit_edge403.us.unr-lcssa ], [ %i.v, %bb.g ], [ %.0309400.us.epil.init, %.epil.preheader ] ; 2 uses
  %.not344.us = icmp eq i32 %.1310.us.lcssa, 0
  %i.w = sitofp i32 %.1310.us.lcssa to float
  %i.x = fdiv float %.1312.us.lcssa, %i.w
  %i.y = select i1 %.not344.us, float 0.000000e+00, float %i.x
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %indvars.iv471
  store float %i.y, ptr %i.z, align 4, !tbaa !77
  %indvars.iv.next472 = add nuw nsw i64 %indvars.iv471, 1 ; 2 uses
  %exitcond475.not = icmp eq i64 %indvars.iv.next472, %i.c
  br i1 %exitcond475.not, label %._crit_edge406, label %.preheader381.us, !llvm.loop !255

bb.h:                                             ; preds = %.lr.ph398, %.loopexit383
  %indvars.iv461 = phi i64 [ 0, %.lr.ph398 ], [ %indvars.iv.next462, %.loopexit383 ] ; 6 uses
  %indvars.iv.a = phi i64 [ 1, %.lr.ph398 ], [ %indvars.iv.next, %.loopexit383 ] ; 2 uses
  %indvars463 = trunc i64 %indvars.iv461 to i32
  %i.aa = mul nuw nsw i32 %2, %indvars463
  %i.ab = zext i32 %i.aa to i64
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv461
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %i.ac, i64 %i.ab
  store float 0.000000e+00, ptr %i.ad, align 4, !tbaa !77
  %indvars.iv.next462 = add nuw nsw i64 %indvars.iv461, 1 ; 3 uses
  %i.ae = icmp samesign ult i64 %indvars.iv.next462, %i.i
  br i1 %i.ae, label %.lr.ph, label %.loopexit383

.lr.ph:                                           ; preds = %bb.h
  %i.af = mul nuw nsw i64 %indvars.iv461, %i.c
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv461 ; 2 uses
  %.pre526.a = load ptr, ptr %i.ag, align 8, !tbaa !76
  %.pre528.a = load i32, ptr %i.g, align 8, !tbaa !88
  %invariant.gep = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.af
  %invariant.gep581 = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv461
  br label %bb.i

bb.i:                                             ; preds = %.lr.ph, %hnsw_distance.exit
  %i.ah = phi i32 [ %.pre528.a, %.lr.ph ], [ %i.im, %hnsw_distance.exit ]
  %i.ai = phi ptr [ %.pre526.a, %.lr.ph ], [ %i.in, %hnsw_distance.exit ] ; 11 uses
  %indvars.iv458 = phi i64 [ %indvars.iv.a, %.lr.ph ], [ %indvars.iv.next459, %hnsw_distance.exit ] ; 4 uses
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv458
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !76 ; 4 uses
  switch i32 %i.ah, label %bb.x [
    i32 0, label %bb.j
    i32 1, label %bb.p
    i32 2, label %bb.w
  ]

bb.j:                                             ; preds = %bb.i
  %i.al = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !67 ; 8 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !67 ; 8 uses
  %i.ap = load i32, ptr %i.h, align 8, !tbaa !89  ; 8 uses
  %i.aq = icmp ugt i32 %i.ap, 15                  ; 2 uses
  %.pre.i361 = load i32, ptr getelementptr inbounds nuw (i8, ptr @__cpu_model, i64 12), align 4 ; 3 uses
  %i.ar = and i32 %.pre.i361, 2129920
  %or.cond65.not.i = icmp eq i32 %i.ar, 2129920
  %or.cond84.i = select i1 %i.aq, i1 %or.cond65.not.i, i1 false
  br i1 %or.cond84.i, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.as = tail call float @vectors_distance_float_avx512(ptr noundef readonly %i.am, ptr noundef readonly %i.ao, i32 noundef %i.ap)
  br label %hnsw_distance.exit

bb.l:                                             ; preds = %bb.j
  %i.at = and i32 %.pre.i361, 1024
  %.not64.i = icmp eq i32 %i.at, 0
  br i1 %.not64.i, label %bb.o, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.au = and i32 %.pre.i361, 16384
  %i.av = icmp ne i32 %i.au, 0
  %or.cond.i362 = and i1 %i.aq, %i.av
  br i1 %or.cond.i362, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.aw = tail call float @vectors_distance_float_avx2(ptr noundef readonly %i.am, ptr noundef readonly %i.ao, i32 noundef %i.ap)
  br label %hnsw_distance.exit

bb.o:                                             ; preds = %bb.m, %bb.l
  %i.ax = icmp ugt i32 %i.ap, 7
  br i1 %i.ax, label %.lr.ph.preheader.i368, label %.preheader.i363

.lr.ph.preheader.i368:                            ; preds = %bb.o
  %i.ay = zext i32 %i.ap to i64
  br label %.lr.ph.i369

.preheader.loopexit.i372:                         ; preds = %.lr.ph.i369
  %i.az = and i32 %i.ap, -8
  br label %.preheader.i363

.preheader.i363:                                  ; preds = %.preheader.loopexit.i372, %bb.o
  %.0.lcssa.i364 = phi i32 [ 0, %bb.o ], [ %i.az, %.preheader.loopexit.i372 ] ; 2 uses
  %i.ba = phi <2 x float> [ zeroinitializer, %bb.o ], [ %i.cc, %.preheader.loopexit.i372 ] ; 2 uses
  %i.bb = icmp ult i32 %.0.lcssa.i364, %i.ap
  %i.bc = extractelement <2 x float> %i.ba, i64 1 ; 3 uses
  br i1 %i.bb, label %.lr.ph73.preheader.i, label %._crit_edge.i365

.lr.ph73.preheader.i:                             ; preds = %.preheader.i363
  %i.bd = zext i32 %.0.lcssa.i364 to i64          ; 3 uses
  %wide.trip.count.i366 = zext i32 %i.ap to i64   ; 3 uses
  %xtraiter = and i64 %wide.trip.count.i366, 3    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph73.i.prol.loopexit, label %.lr.ph73.i.prol

.lr.ph73.i.prol:                                  ; preds = %.lr.ph73.preheader.i, %.lr.ph73.i.prol
  %indvars.iv79.i.prol = phi i64 [ %indvars.iv.next80.i.prol, %.lr.ph73.i.prol ], [ %i.bd, %.lr.ph73.preheader.i ] ; 3 uses
  %.15871.i.prol = phi float [ %i.bi, %.lr.ph73.i.prol ], [ %i.bc, %.lr.ph73.preheader.i ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph73.i.prol ], [ 0, %.lr.ph73.preheader.i ]
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %i.am, i64 %indvars.iv79.i.prol
  %i.bf = load float, ptr %i.be, align 4, !tbaa !77
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %i.ao, i64 %indvars.iv79.i.prol
  %i.bh = load float, ptr %i.bg, align 4, !tbaa !77
  %i.bi = tail call float @llvm.fmuladd.f32(float %i.bf, float %i.bh, float %.15871.i.prol) ; 3 uses
  %indvars.iv.next80.i.prol = add nuw nsw i64 %indvars.iv79.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph73.i.prol.loopexit, label %.lr.ph73.i.prol, !llvm.loop !256

.lr.ph73.i.prol.loopexit:                         ; preds = %.lr.ph73.i.prol, %.lr.ph73.preheader.i
  %.lcssa634.unr = phi float [ poison, %.lr.ph73.preheader.i ], [ %i.bi, %.lr.ph73.i.prol ]
  %indvars.iv79.i.unr = phi i64 [ %i.bd, %.lr.ph73.preheader.i ], [ %indvars.iv.next80.i.prol, %.lr.ph73.i.prol ]
  %.15871.i.unr = phi float [ %i.bc, %.lr.ph73.preheader.i ], [ %i.bi, %.lr.ph73.i.prol ]
  %i.bj = sub nsw i64 %i.bd, %wide.trip.count.i366
  %i.bk = icmp ugt i64 %i.bj, -4
  br i1 %i.bk, label %._crit_edge.i365, label %.lr.ph73.i

.lr.ph.i369:                                      ; preds = %.lr.ph.i369, %.lr.ph.preheader.i368
  %indvars.iv.i370 = phi i64 [ 0, %.lr.ph.preheader.i368 ], [ %indvars.iv.next.i371, %.lr.ph.i369 ] ; 3 uses
  %i.bl = phi <2 x float> [ zeroinitializer, %.lr.ph.preheader.i368 ], [ %i.cc, %.lr.ph.i369 ]
  %i.bm = getelementptr inbounds nuw [4 x i8], ptr %i.am, i64 %indvars.iv.i370
  %i.bn = getelementptr inbounds nuw [4 x i8], ptr %i.ao, i64 %indvars.iv.i370
  %i.bo = load <8 x float>, ptr %i.bm, align 4, !tbaa !77 ; 4 uses
  %i.bp = load <8 x float>, ptr %i.bn, align 4, !tbaa !77 ; 4 uses
  %i.bq = shufflevector <8 x float> %i.bo, <8 x float> poison, <2 x i32> <i32 5, i32 1>
  %i.br = shufflevector <8 x float> %i.bp, <8 x float> poison, <2 x i32> <i32 5, i32 1>
  %i.bs = fmul <2 x float> %i.bq, %i.br
  %i.bt = shufflevector <8 x float> %i.bo, <8 x float> poison, <2 x i32> <i32 4, i32 0>
  %i.bu = shufflevector <8 x float> %i.bp, <8 x float> poison, <2 x i32> <i32 4, i32 0>
  %i.bv = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bt, <2 x float> %i.bu, <2 x float> %i.bs)
  %i.bw = shufflevector <8 x float> %i.bo, <8 x float> poison, <2 x i32> <i32 6, i32 2>
  %i.bx = shufflevector <8 x float> %i.bp, <8 x float> poison, <2 x i32> <i32 6, i32 2>
  %i.by = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bw, <2 x float> %i.bx, <2 x float> %i.bv)
  %i.bz = shufflevector <8 x float> %i.bo, <8 x float> poison, <2 x i32> <i32 7, i32 3>
  %i.ca = shufflevector <8 x float> %i.bp, <8 x float> poison, <2 x i32> <i32 7, i32 3>
  %i.cb = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bz, <2 x float> %i.ca, <2 x float> %i.by)
  %i.cc = fadd <2 x float> %i.bl, %i.cb           ; 2 uses
  %indvars.iv.next.i371 = add nuw nsw i64 %indvars.iv.i370, 8 ; 2 uses
  %i.cd = or disjoint i64 %indvars.iv.next.i371, 7
  %i.ce = icmp samesign ult i64 %i.cd, %i.ay
  br i1 %i.ce, label %.lr.ph.i369, label %.preheader.loopexit.i372, !llvm.loop !2

.lr.ph73.i:                                       ; preds = %.lr.ph73.i.prol.loopexit, %.lr.ph73.i
  %indvars.iv79.i = phi i64 [ %indvars.iv.next80.i.3, %.lr.ph73.i ], [ %indvars.iv79.i.unr, %.lr.ph73.i.prol.loopexit ] ; 6 uses
  %.15871.i = phi float [ %i.cy, %.lr.ph73.i ], [ %.15871.i.unr, %.lr.ph73.i.prol.loopexit ]
  %i.cf = getelementptr inbounds nuw [4 x i8], ptr %i.am, i64 %indvars.iv79.i
  %i.cg = load float, ptr %i.cf, align 4, !tbaa !77
  %i.ch = getelementptr inbounds nuw [4 x i8], ptr %i.ao, i64 %indvars.iv79.i
  %i.ci = load float, ptr %i.ch, align 4, !tbaa !77
  %i.cj = tail call float @llvm.fmuladd.f32(float %i.cg, float %i.ci, float %.15871.i)
  %indvars.iv.next80.i = add nuw nsw i64 %indvars.iv79.i, 1 ; 2 uses
  %i.ck = getelementptr inbounds nuw [4 x i8], ptr %i.am, i64 %indvars.iv.next80.i
  %i.cl = load float, ptr %i.ck, align 4, !tbaa !77
  %i.cm = getelementptr inbounds nuw [4 x i8], ptr %i.ao, i64 %indvars.iv.next80.i
  %i.cn = load float, ptr %i.cm, align 4, !tbaa !77
  %i.co = tail call float @llvm.fmuladd.f32(float %i.cl, float %i.cn, float %i.cj)
  %indvars.iv.next80.i.1 = add nuw nsw i64 %indvars.iv79.i, 2 ; 2 uses
  %i.cp = getelementptr inbounds nuw [4 x i8], ptr %i.am, i64 %indvars.iv.next80.i.1
  %i.cq = load float, ptr %i.cp, align 4, !tbaa !77
  %i.cr = getelementptr inbounds nuw [4 x i8], ptr %i.ao, i64 %indvars.iv.next80.i.1
  %i.cs = load float, ptr %i.cr, align 4, !tbaa !77
  %i.ct = tail call float @llvm.fmuladd.f32(float %i.cq, float %i.cs, float %i.co)
  %indvars.iv.next80.i.2 = add nuw nsw i64 %indvars.iv79.i, 3 ; 2 uses
  %i.cu = getelementptr inbounds nuw [4 x i8], ptr %i.am, i64 %indvars.iv.next80.i.2
  %i.cv = load float, ptr %i.cu, align 4, !tbaa !77
  %i.cw = getelementptr inbounds nuw [4 x i8], ptr %i.ao, i64 %indvars.iv.next80.i.2
  %i.cx = load float, ptr %i.cw, align 4, !tbaa !77
  %i.cy = tail call float @llvm.fmuladd.f32(float %i.cv, float %i.cx, float %i.ct) ; 2 uses
  %indvars.iv.next80.i.3 = add nuw nsw i64 %indvars.iv79.i, 4 ; 2 uses
  %exitcond.not.i367.3 = icmp eq i64 %indvars.iv.next80.i.3, %wide.trip.count.i366
  br i1 %exitcond.not.i367.3, label %._crit_edge.i365, label %.lr.ph73.i, !llvm.loop !3

._crit_edge.i365:                                 ; preds = %.lr.ph73.i.prol.loopexit, %.lr.ph73.i, %.preheader.i363
  %.158.lcssa.i = phi float [ %i.bc, %.preheader.i363 ], [ %.lcssa634.unr, %.lr.ph73.i.prol.loopexit ], [ %i.cy, %.lr.ph73.i ]
  %i.cz = extractelement <2 x float> %i.ba, i64 0
  %i.da = fadd float %i.cz, %.158.lcssa.i
  %i.db = fsub float 1.000000e+00, %i.da
  br label %hnsw_distance.exit

bb.p:                                             ; preds = %bb.i
  %i.dc = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !67 ; 12 uses
  %i.de = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !67 ; 12 uses
  %i.dg = load i32, ptr %i.h, align 8, !tbaa !89  ; 9 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %i.ai, i64 24
  %i.di = load float, ptr %i.dh, align 8, !tbaa !77 ; 4 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %i.ak, i64 24
  %i.dk = load float, ptr %i.dj, align 8, !tbaa !77 ; 4 uses
  %i.dl = icmp ugt i32 %i.dg, 63
  br i1 %i.dl, label %bb.q, label %bb.s

bb.q:                                             ; preds = %bb.p
  %i.dm = load i32, ptr getelementptr inbounds nuw (i8, ptr @__cpu_model, i64 12), align 4 ; 2 uses
  %i.dn = and i32 %i.dm, 2129920
  %or.cond83.not.i = icmp eq i32 %i.dn, 2129920
  br i1 %or.cond83.not.i, label %bb.r, label %.thread.i

bb.r:                                             ; preds = %bb.q
  %i.do = tail call float @vectors_distance_q8_avx512(ptr noundef readonly %i.dd, ptr noundef readonly %i.df, i32 noundef %i.dg, float noundef %i.di, float noundef %i.dk)
  br label %hnsw_distance.exit

bb.s:                                             ; preds = %bb.p
  %i.dp = icmp samesign ugt i32 %i.dg, 31
  br i1 %i.dp, label %..thread_crit_edge.i, label %bb.u

..thread_crit_edge.i:                             ; preds = %bb.s
  %.pre.i = load i32, ptr getelementptr inbounds nuw (i8, ptr @__cpu_model, i64 12), align 4
  br label %.thread.i

.thread.i:                                        ; preds = %..thread_crit_edge.i, %bb.q
  %i.dq = phi i32 [ %.pre.i, %..thread_crit_edge.i ], [ %i.dm, %bb.q ]
  %i.dr = and i32 %i.dq, 17408
  %or.cond84.not.i = icmp eq i32 %i.dr, 17408
  br i1 %or.cond84.not.i, label %bb.t, label %bb.u

bb.t:                                             ; preds = %.thread.i
  %i.ds = tail call float @vectors_distance_q8_avx2(ptr noundef readonly %i.dd, ptr noundef readonly %i.df, i32 noundef %i.dg, float noundef %i.di, float noundef %i.dk)
  br label %hnsw_distance.exit

bb.u:                                             ; preds = %.thread.i, %bb.s
  %i.dt = fcmp oeq float %i.di, 0.000000e+00
  %i.du = fcmp oeq float %i.dk, 0.000000e+00
  %or.cond.i = or i1 %i.dt, %i.du
  br i1 %or.cond.i, label %hnsw_distance.exit, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.dv = insertelement <2 x float> poison, float %i.di, i64 0
  %i.dw = insertelement <2 x float> %i.dv, float %i.dk, i64 1
end_hunk_0
begin_hunk_1_@hnsw_acquire_read_slot:bb.a
bb.m:                                             ; preds = %bb.l
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 800 ; 2 uses
  %i.ak = tail call i32 @pthread_mutex_trylock(ptr noundef nonnull %i.aj) #34
  %i.al = icmp eq i32 %i.ak, 0
  br i1 %i.al, label %bb.b, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 840 ; 2 uses
  %i.an = tail call i32 @pthread_mutex_trylock(ptr noundef nonnull %i.am) #34
  %i.ao = icmp eq i32 %i.an, 0
  br i1 %i.ao, label %bb.b, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 880 ; 2 uses
  %i.aq = tail call i32 @pthread_mutex_trylock(ptr noundef nonnull %i.ap) #34
  %i.ar = icmp eq i32 %i.aq, 0
  br i1 %i.ar, label %bb.b, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 920 ; 2 uses
  %i.at = tail call i32 @pthread_mutex_trylock(ptr noundef nonnull %i.as) #34
  %i.au = icmp eq i32 %i.at, 0
  br i1 %i.au, label %bb.b, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 960 ; 2 uses
  %i.aw = tail call i32 @pthread_mutex_trylock(ptr noundef nonnull %i.av) #34
  %i.ax = icmp eq i32 %i.aw, 0
  br i1 %i.ax, label %bb.b, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 1000 ; 2 uses
  %i.az = tail call i32 @pthread_mutex_trylock(ptr noundef nonnull %i.ay) #34
  %i.ba = icmp eq i32 %i.az, 0
  br i1 %i.ba, label %bb.b, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 1040 ; 2 uses
  %i.bc = tail call i32 @pthread_mutex_trylock(ptr noundef nonnull %i.bb) #34
  %i.bd = icmp eq i32 %i.bc, 0
  br i1 %i.bd, label %bb.b, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 1080 ; 2 uses
  %i.bf = tail call i32 @pthread_mutex_trylock(ptr noundef nonnull %i.be) #34
  %i.bg = icmp eq i32 %i.bf, 0
  br i1 %i.bg, label %bb.b, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 1120 ; 2 uses
  %i.bi = tail call i32 @pthread_mutex_trylock(ptr noundef nonnull %i.bh) #34
  %i.bj = icmp eq i32 %i.bi, 0
  br i1 %i.bj, label %bb.b, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 1160 ; 2 uses
  %i.bl = tail call i32 @pthread_mutex_trylock(ptr noundef nonnull %i.bk) #34
  %i.bm = icmp eq i32 %i.bl, 0
  br i1 %i.bm, label %bb.b, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 1200 ; 2 uses
  %i.bo = tail call i32 @pthread_mutex_trylock(ptr noundef nonnull %i.bn) #34
  %i.bp = icmp eq i32 %i.bo, 0
  br i1 %i.bp, label %bb.b, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 1240 ; 2 uses
  %i.br = tail call i32 @pthread_mutex_trylock(ptr noundef nonnull %i.bq) #34
  %i.bs = icmp eq i32 %i.br, 0
  br i1 %i.bs, label %bb.b, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 1280 ; 2 uses
  %i.bu = tail call i32 @pthread_mutex_trylock(ptr noundef nonnull %i.bt) #34
  %i.bv = icmp eq i32 %i.bu, 0
  br i1 %i.bv, label %bb.b, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 1320 ; 2 uses
  %i.bx = tail call i32 @pthread_mutex_trylock(ptr noundef nonnull %i.bw) #34
  %i.by = icmp eq i32 %i.bx, 0
  br i1 %i.by, label %bb.b, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 1360 ; 2 uses
  %i.ca = tail call i32 @pthread_mutex_trylock(ptr noundef nonnull %i.bz) #34
  %i.cb = icmp eq i32 %i.ca, 0
  br i1 %i.cb, label %bb.b, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 1400 ; 2 uses
  %i.cd = tail call i32 @pthread_mutex_trylock(ptr noundef nonnull %i.cc) #34
  %i.ce = icmp eq i32 %i.cd, 0
  br i1 %i.ce, label %bb.b, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 1440 ; 2 uses
  %i.cg = tail call i32 @pthread_mutex_trylock(ptr noundef nonnull %i.cf) #34
  %i.ch = icmp eq i32 %i.cg, 0
  br i1 %i.ch, label %bb.b, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 1480 ; 2 uses
  %i.cj = tail call i32 @pthread_mutex_trylock(ptr noundef nonnull %i.ci) #34
  %i.ck = icmp eq i32 %i.cj, 0
  br i1 %i.ck, label %bb.b, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 1520 ; 2 uses
  %i.cm = tail call i32 @pthread_mutex_trylock(ptr noundef nonnull %i.cl) #34
  %i.cn = icmp eq i32 %i.cm, 0
  br i1 %i.cn, label %bb.b, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 1560 ; 2 uses
  %i.cp = tail call i32 @pthread_mutex_trylock(ptr noundef nonnull %i.co) #34
  %i.cq = icmp eq i32 %i.cp, 0
  br i1 %i.cq, label %bb.b, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 1600 ; 2 uses
  %i.cs = tail call i32 @pthread_mutex_trylock(ptr noundef nonnull %i.cr) #34
  %i.ct = icmp eq i32 %i.cs, 0
  br i1 %i.ct, label %bb.b, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 1640
  %i.cv = atomicrmw add ptr %i.cu, i32 1 seq_cst, align 8
  %i.cw = and i32 %i.cv, 31                       ; 2 uses
  %i.cx = zext nneg i32 %i.cw to i64
  %i.cy = getelementptr inbounds nuw [40 x i8], ptr %i.a, i64 %i.cx ; 2 uses
  %i.cz = tail call i32 @pthread_mutex_lock(ptr noundef nonnull %i.cy) #34
  %.not18 = icmp eq i32 %i.cz, 0
  br i1 %.not18, label %bb.ai, label %.thread

bb.ai:                                            ; preds = %bb.ah
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 304
  %i.db = tail call i32 @pthread_rwlock_rdlock(ptr noundef nonnull %i.da) #34
  %.not19 = icmp eq i32 %i.db, 0
  br i1 %.not19, label %.thread, label %.thread.sink.split

.thread.sink.split:                               ; preds = %bb.ai, %bb.b
  %.lcssa.sink = phi ptr [ %.lcssa, %bb.b ], [ %i.cy, %bb.ai ]
  %i.dc = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %.lcssa.sink) #34 ; 0 uses
  br label %.thread

.thread:                                          ; preds = %.thread.sink.split, %bb.b, %bb.ah, %bb.ai
  %.2 = phi i32 [ %i.cw, %bb.ai ], [ -1, %bb.ah ], [ %.01623.lcssa.wide, %bb.b ], [ -1, %.thread.sink.split ]
  ret i32 %.2
}

; Function Attrs: nounwind
declare i32 @pthread_mutex_trylock(ptr noundef) local_unnamed_addr #18

; Function Attrs: nounwind
declare i32 @pthread_rwlock_rdlock(ptr noundef) local_unnamed_addr #18

; Function Attrs: nounwind
declare i32 @pthread_mutex_unlock(ptr noundef) local_unnamed_addr #18

; Function Attrs: nounwind
declare i32 @pthread_mutex_lock(ptr noundef) local_unnamed_addr #18

; Function Attrs: nounwind uwtable
define dso_local void @hnsw_release_read_slot(ptr noundef %0, i32 noundef %1) local_unnamed_addr #3 !guid !282 {
bb.a:
  %or.cond = icmp ugt i32 %1, 31
  br i1 %or.cond, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 304
  %i.b = tail call i32 @pthread_rwlock_unlock(ptr noundef nonnull %i.a) #34 ; 0 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 360
  %i.d = zext nneg i32 %1 to i64
  %i.e = getelementptr inbounds nuw [40 x i8], ptr %i.c, i64 %i.d
  %i.f = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.e) #34 ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local ptr @hnsw_prepare_insert_nolock(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(address_is_null) %2, float noundef %3, i64 noundef %4, i32 noundef %5, i32 noundef %6) local_unnamed_addr #3 !guid !285 {
bb.a:
  %i.a = load ptr, ptr @hmalloc, align 8, !tbaa !67
  %i.b = tail call ptr %i.a(i64 noundef 144) #34  ; 8 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %i.b, i8 0, i64 144, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1648
  %i.d = load atomic i64, ptr %i.c seq_cst, align 8, !tbaa !96
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 136
  store i64 %i.d, ptr %i.e, align 8, !tbaa !114
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %bb.b
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.c ], [ 0, %bb.b ] ; 2 uses
  %.0.i = phi i32 [ %i.j, %bb.c ], [ 0, %bb.b ]   ; 5 uses
  %i.f = tail call i32 @rand() #34
  %i.g = icmp slt i32 %i.f, 536870911
  %i.h = icmp samesign ult i32 %.0.i, 16
  %i.i = select i1 %i.g, i1 %i.h, i1 false
  %i.j = add nuw nsw i32 %.0.i, 1
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br i1 %i.i, label %bb.c, label %random_level.exit, !llvm.loop !9

random_level.exit:                                ; preds = %bb.c
  %i.k = tail call ptr @hnsw_node_new(ptr noundef nonnull %0, i64 noundef %4, ptr noundef %1, ptr noundef %2, float noundef %3, i32 noundef %.0.i, i32 noundef 1) ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 128 ; 3 uses
  store ptr %i.k, ptr %i.l, align 8, !tbaa !115
  %.not64 = icmp eq ptr %i.k, null
  br i1 %.not64, label %bb.d, label %bb.e

bb.d:                                             ; preds = %random_level.exit
  %i.m = load ptr, ptr @hfree, align 8, !tbaa !67
  tail call void %i.m(ptr noundef nonnull %i.b) #34
  br label %.loopexit

bb.e:                                             ; preds = %random_level.exit
  %i.n = load ptr, ptr %0, align 8, !tbaa !91     ; 3 uses
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %.loopexit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.q = load i32, ptr %i.p, align 4, !tbaa !92   ; 3 uses
  %i.r = icmp ugt i32 %i.q, %.0.i
  br i1 %i.r, label %.lr.ph, label %._crit_edge

._crit_edge.loopexit:                             ; preds = %bb.i
  %.pre75 = load i32, ptr %i.p, align 4, !tbaa !92
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.f
  %i.s = phi i32 [ %i.q, %bb.f ], [ %.pre75, %._crit_edge.loopexit ]
  %.052.lcssa = phi ptr [ %i.n, %bb.f ], [ %.2, %._crit_edge.loopexit ]
  %7 = zext i32 %i.s to i64
  %umin = tail call i64 @llvm.umin.i64(i64 %indvars.iv, i64 %7)
  br label %bb.j

.lr.ph:                                           ; preds = %bb.f, %bb.i
  %.05170 = phi i32 [ %i.ad, %bb.i ], [ %i.q, %bb.f ] ; 2 uses
  %.05269 = phi ptr [ %.2, %bb.i ], [ %i.n, %bb.f ] ; 3 uses
  %i.t = load ptr, ptr %i.l, align 8, !tbaa !115
  %i.u = tail call ptr @search_layer_with_filter(ptr noundef nonnull %0, ptr noundef readonly %i.t, ptr noundef %.05269, i32 noundef 1, i32 noundef %.05170, i32 noundef %5, ptr noundef null, ptr noundef null, i32 noundef 0) ; 4 uses
  %.not67 = icmp eq ptr %i.u, null
  br i1 %.not67, label %bb.i, label %bb.g

bb.g:                                             ; preds = %.lr.ph
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.w = load i32, ptr %i.v, align 8, !tbaa !70   ; 2 uses
  %.not68 = icmp eq i32 %i.w, 0
  %.pre = load ptr, ptr %i.u, align 8, !tbaa !69  ; 2 uses
  br i1 %.not68, label %pq_free.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.x = add i32 %i.w, -1
  %i.y = zext i32 %i.x to i64
  %i.z = getelementptr inbounds nuw [16 x i8], ptr %.pre, i64 %i.y
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !80
  br label %pq_free.exit

pq_free.exit:                                     ; preds = %bb.h, %bb.g
  %.1 = phi ptr [ %i.aa, %bb.h ], [ %.05269, %bb.g ]
  %i.ab = load ptr, ptr @hfree, align 8, !tbaa !67
  tail call void %i.ab(ptr noundef %.pre) #34, !inline_history !108
  %i.ac = load ptr, ptr @hfree, align 8, !tbaa !67
  tail call void %i.ac(ptr noundef nonnull %i.u) #34, !inline_history !108
  br label %bb.i

bb.i:                                             ; preds = %pq_free.exit, %.lr.ph
  %.2 = phi ptr [ %.1, %pq_free.exit ], [ %.05269, %.lr.ph ] ; 2 uses
  %i.ad = add i32 %.05170, -1                     ; 2 uses
  %i.ae = icmp ugt i32 %i.ad, %.0.i
  br i1 %i.ae, label %.lr.ph, label %._crit_edge.loopexit, !llvm.loop !283

bb.j:                                             ; preds = %._crit_edge, %bb.n
  %indvars.iv73 = phi i64 [ %umin, %._crit_edge ], [ %indvars.iv.next74, %bb.n ] ; 4 uses
  %.371 = phi ptr [ %.052.lcssa, %._crit_edge ], [ %.4, %bb.n ] ; 3 uses
  %i.af = load ptr, ptr %i.l, align 8, !tbaa !115
  %i.ag = trunc nuw nsw i64 %indvars.iv73 to i32
  %i.ah = tail call ptr @search_layer_with_filter(ptr noundef nonnull %0, ptr noundef readonly %i.af, ptr noundef %.371, i32 noundef %6, i32 noundef %i.ag, i32 noundef %5, ptr noundef null, ptr noundef null, i32 noundef 0) ; 4 uses
  %.not65 = icmp eq ptr %i.ah, null
  br i1 %.not65, label %bb.n, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %i.aj = load i32, ptr %i.ai, align 8, !tbaa !70 ; 2 uses
  %.not66 = icmp eq i32 %i.aj, 0
  br i1 %.not66, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ak = load ptr, ptr %i.ah, align 8, !tbaa !69
  %i.al = add i32 %i.aj, -1
  %i.am = zext i32 %i.al to i64
  %i.an = getelementptr inbounds nuw [16 x i8], ptr %i.ak, i64 %i.am
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !80
  br label %bb.m

bb.m:                                             ; preds = %bb.k, %bb.l
  %i.ap = phi ptr [ %i.ao, %bb.l ], [ %.371, %bb.k ]
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv73
  store ptr %i.ah, ptr %i.aq, align 8, !tbaa !67
  br label %bb.n

bb.n:                                             ; preds = %bb.j, %bb.m
  %.4 = phi ptr [ %i.ap, %bb.m ], [ %.371, %bb.j ]
  %indvars.iv.next74 = add nsw i64 %indvars.iv73, -1
  %i.ar = icmp sgt i64 %indvars.iv73, 0
  br i1 %i.ar, label %bb.j, label %.loopexit, !llvm.loop !284

.loopexit:                                        ; preds = %bb.n, %bb.d, %bb.e, %bb.a
  %.255 = phi ptr [ null, %bb.a ], [ null, %bb.d ], [ %i.b, %bb.e ], [ %i.b, %bb.n ]
  ret ptr %.255
}

; Function Attrs: nounwind uwtable
define dso_local ptr @hnsw_prepare_insert(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(address_is_null) %2, float noundef %3, i64 noundef %4, i32 noundef %5) local_unnamed_addr #3 !guid !286 {
bb.a:
  %i.a = tail call i32 @hnsw_acquire_read_slot(ptr noundef %0) ; 3 uses
  %i.b = tail call ptr @hnsw_prepare_insert_nolock(ptr noundef %0, ptr noundef %1, ptr noundef %2, float noundef %3, i64 noundef %4, i32 noundef %i.a, i32 noundef %5)
  %or.cond.i = icmp ugt i32 %i.a, 31
  br i1 %or.cond.i, label %hnsw_release_read_slot.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 304
  %i.d = tail call i32 @pthread_rwlock_unlock(ptr noundef nonnull %i.c) #34 ; 0 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 360
  %i.f = zext nneg i32 %i.a to i64
  %i.g = getelementptr inbounds nuw [40 x i8], ptr %i.e, i64 %i.f
  %i.h = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.g) #34 ; 0 uses
  br label %hnsw_release_read_slot.exit

hnsw_release_read_slot.exit:                      ; preds = %bb.a, %bb.b
  ret ptr %i.b
}

; Function Attrs: nounwind uwtable
define dso_local void @hnsw_free_insert_context(ptr noundef %0) local_unnamed_addr #3 !guid !287 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.e, label %.preheader.preheader

.preheader.preheader:                             ; preds = %bb.a
  %i.a = load ptr, ptr %0, align 8, !tbaa !67     ; 3 uses
  %.not13 = icmp eq ptr %i.a, null
  br i1 %.not13, label %.preheader.1, label %pq_free.exit

pq_free.exit:                                     ; preds = %.preheader.preheader
  %i.b = load ptr, ptr @hfree, align 8, !tbaa !67
  %i.c = load ptr, ptr %i.a, align 8, !tbaa !69
  tail call void %i.b(ptr noundef %i.c) #34, !inline_history !108
  %i.d = load ptr, ptr @hfree, align 8, !tbaa !67
  tail call void %i.d(ptr noundef nonnull %i.a) #34, !inline_history !108
  br label %.preheader.1

.preheader.1:                                     ; preds = %.preheader.preheader, %pq_free.exit
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !67   ; 3 uses
  %.not13.1 = icmp eq ptr %i.f, null
  br i1 %.not13.1, label %.preheader.2, label %pq_free.exit.1

pq_free.exit.1:                                   ; preds = %.preheader.1
  %i.g = load ptr, ptr @hfree, align 8, !tbaa !67
  %i.h = load ptr, ptr %i.f, align 8, !tbaa !69
  tail call void %i.g(ptr noundef %i.h) #34, !inline_history !108
  %i.i = load ptr, ptr @hfree, align 8, !tbaa !67
  tail call void %i.i(ptr noundef nonnull %i.f) #34, !inline_history !108
  br label %.preheader.2

.preheader.2:                                     ; preds = %pq_free.exit.1, %.preheader.1
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !67   ; 3 uses
  %.not13.2 = icmp eq ptr %i.k, null
  br i1 %.not13.2, label %.preheader.3, label %pq_free.exit.2

pq_free.exit.2:                                   ; preds = %.preheader.2
  %i.l = load ptr, ptr @hfree, align 8, !tbaa !67
  %i.m = load ptr, ptr %i.k, align 8, !tbaa !69
  tail call void %i.l(ptr noundef %i.m) #34, !inline_history !108
  %i.n = load ptr, ptr @hfree, align 8, !tbaa !67
  tail call void %i.n(ptr noundef nonnull %i.k) #34, !inline_history !108
  br label %.preheader.3

.preheader.3:                                     ; preds = %pq_free.exit.2, %.preheader.2
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !67   ; 3 uses
  %.not13.3 = icmp eq ptr %i.p, null
  br i1 %.not13.3, label %.preheader.4, label %pq_free.exit.3

pq_free.exit.3:                                   ; preds = %.preheader.3
  %i.q = load ptr, ptr @hfree, align 8, !tbaa !67
  %i.r = load ptr, ptr %i.p, align 8, !tbaa !69
  tail call void %i.q(ptr noundef %i.r) #34, !inline_history !108
  %i.s = load ptr, ptr @hfree, align 8, !tbaa !67
  tail call void %i.s(ptr noundef nonnull %i.p) #34, !inline_history !108
  br label %.preheader.4

.preheader.4:                                     ; preds = %pq_free.exit.3, %.preheader.3
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !67   ; 3 uses
  %.not13.4 = icmp eq ptr %i.u, null
  br i1 %.not13.4, label %.preheader.5, label %pq_free.exit.4

pq_free.exit.4:                                   ; preds = %.preheader.4
  %i.v = load ptr, ptr @hfree, align 8, !tbaa !67
  %i.w = load ptr, ptr %i.u, align 8, !tbaa !69
  tail call void %i.v(ptr noundef %i.w) #34, !inline_history !108
  %i.x = load ptr, ptr @hfree, align 8, !tbaa !67
  tail call void %i.x(ptr noundef nonnull %i.u) #34, !inline_history !108
  br label %.preheader.5

.preheader.5:                                     ; preds = %pq_free.exit.4, %.preheader.4
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !67   ; 3 uses
  %.not13.5 = icmp eq ptr %i.z, null
  br i1 %.not13.5, label %.preheader.6, label %pq_free.exit.5

pq_free.exit.5:                                   ; preds = %.preheader.5
  %i.aa = load ptr, ptr @hfree, align 8, !tbaa !67
  %i.ab = load ptr, ptr %i.z, align 8, !tbaa !69
  tail call void %i.aa(ptr noundef %i.ab) #34, !inline_history !108
  %i.ac = load ptr, ptr @hfree, align 8, !tbaa !67
  tail call void %i.ac(ptr noundef nonnull %i.z) #34, !inline_history !108
  br label %.preheader.6

.preheader.6:                                     ; preds = %pq_free.exit.5, %.preheader.5
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !67 ; 3 uses
  %.not13.6 = icmp eq ptr %i.ae, null
  br i1 %.not13.6, label %.preheader.7, label %pq_free.exit.6

pq_free.exit.6:                                   ; preds = %.preheader.6
  %i.af = load ptr, ptr @hfree, align 8, !tbaa !67
  %i.ag = load ptr, ptr %i.ae, align 8, !tbaa !69
  tail call void %i.af(ptr noundef %i.ag) #34, !inline_history !108
  %i.ah = load ptr, ptr @hfree, align 8, !tbaa !67
  tail call void %i.ah(ptr noundef nonnull %i.ae) #34, !inline_history !108
  br label %.preheader.7

.preheader.7:                                     ; preds = %pq_free.exit.6, %.preheader.6
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !67 ; 3 uses
  %.not13.7 = icmp eq ptr %i.aj, null
  br i1 %.not13.7, label %.preheader.8, label %pq_free.exit.7

pq_free.exit.7:                                   ; preds = %.preheader.7
  %i.ak = load ptr, ptr @hfree, align 8, !tbaa !67
  %i.al = load ptr, ptr %i.aj, align 8, !tbaa !69
  tail call void %i.ak(ptr noundef %i.al) #34, !inline_history !108
  %i.am = load ptr, ptr @hfree, align 8, !tbaa !67
  tail call void %i.am(ptr noundef nonnull %i.aj) #34, !inline_history !108
  br label %.preheader.8

.preheader.8:                                     ; preds = %pq_free.exit.7, %.preheader.7
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !67 ; 3 uses
  %.not13.8 = icmp eq ptr %i.ao, null
  br i1 %.not13.8, label %.preheader.9, label %pq_free.exit.8

pq_free.exit.8:                                   ; preds = %.preheader.8
  %i.ap = load ptr, ptr @hfree, align 8, !tbaa !67
  %i.aq = load ptr, ptr %i.ao, align 8, !tbaa !69
  tail call void %i.ap(ptr noundef %i.aq) #34, !inline_history !108
  %i.ar = load ptr, ptr @hfree, align 8, !tbaa !67
  tail call void %i.ar(ptr noundef nonnull %i.ao) #34, !inline_history !108
  br label %.preheader.9

.preheader.9:                                     ; preds = %pq_free.exit.8, %.preheader.8
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !67 ; 3 uses
  %.not13.9 = icmp eq ptr %i.at, null
  br i1 %.not13.9, label %.preheader.10, label %pq_free.exit.9

pq_free.exit.9:                                   ; preds = %.preheader.9
  %i.au = load ptr, ptr @hfree, align 8, !tbaa !67
  %i.av = load ptr, ptr %i.at, align 8, !tbaa !69
  tail call void %i.au(ptr noundef %i.av) #34, !inline_history !108
end_hunk_1
