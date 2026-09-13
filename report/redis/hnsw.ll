Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/redis/original/hnsw?download=true
inline.NumInlined: 98
inline.NumDeleted: 4
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 30
loop-unroll.NumUnrolled: 37
begin_hunk_0_@select_neighbors:bb.a
  %i.ew = fcmp ogt float %.0.i252, %.0214286
  %or.cond250 = select i1 %i.ev, i1 true, i1 %i.ew ; 3 uses
  %.1221 = select i1 %or.cond250, ptr %i.dw, ptr %.0220284
  %i.ex = trunc nuw i64 %indvars.iv305 to i32
  %.1218 = select i1 %or.cond250, i32 %i.ex, i32 %.0217285
  %.1215 = select i1 %or.cond250, float %.0.i252, float %.0214286
  br label %bb.y

bb.y:                                             ; preds = %bb.s, %hnsw_distance.exit253
  %.pre313 = phi i32 [ %.pre, %hnsw_distance.exit253 ], [ %.pre312, %bb.s ]
  %i.ey = phi i32 [ %.pre, %hnsw_distance.exit253 ], [ %i.dt, %bb.s ] ; 2 uses
  %.2222 = phi ptr [ %.1221, %hnsw_distance.exit253 ], [ %.0220284, %bb.s ] ; 3 uses
  %.2219 = phi i32 [ %.1218, %hnsw_distance.exit253 ], [ %.0217285, %bb.s ] ; 2 uses
  %.2216 = phi float [ %.1215, %hnsw_distance.exit253 ], [ %.0214286, %bb.s ] ; 2 uses
  %indvars.iv.next306 = add nuw nsw i64 %indvars.iv305, 1 ; 2 uses
  %i.ez = zext i32 %i.ey to i64
  %i.fa = icmp samesign ult i64 %indvars.iv.next306, %i.ez
  br i1 %i.fa, label %bb.s, label %._crit_edge, !llvm.loop !174

._crit_edge.thread:                               ; preds = %.preheader, %._crit_edge
  %i.fb = load i32, ptr %i.h, align 8, !tbaa !52  ; 2 uses
  %i.fc = mul i32 %i.fb, 3
  %i.fd = shl i32 %i.fb, 1
  %i.fe = select i1 %i.k, i32 %i.fc, i32 %i.fd
  %i.ff = load i32, ptr %i.bp, align 4, !tbaa !62 ; 2 uses
  %.not247 = icmp ult i32 %i.ff, %i.fe
  br i1 %.not247, label %bb.z, label %hnsw_update_worst_neighbor_on_add.exit251.thread

bb.z:                                             ; preds = %._crit_edge.thread
  %i.fg = add nuw i32 %i.ff, 1                    ; 2 uses
  %i.fh = load ptr, ptr @hrealloc, align 8, !tbaa !29
  %i.fi = load ptr, ptr %i.bm, align 8, !tbaa !66
  %i.fj = zext i32 %i.fg to i64
  %i.fk = shl nuw nsw i64 %i.fj, 3
  %i.fl = tail call ptr %i.fh(ptr noundef %i.fi, i64 noundef %i.fk) #34 ; 3 uses
  %i.fm = icmp eq ptr %i.fl, null
  br i1 %i.fm, label %hnsw_update_worst_neighbor_on_add.exit251.thread, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  store ptr %i.fl, ptr %i.bm, align 8, !tbaa !66
  store i32 %i.fg, ptr %i.bp, align 4, !tbaa !62
  %i.fn = load i32, ptr %i.bn, align 8, !tbaa !63 ; 4 uses
  %i.fo = zext i32 %i.fn to i64
  %i.fp = getelementptr inbounds nuw [8 x i8], ptr %i.fl, i64 %i.fo
  store ptr %2, ptr %i.fp, align 8, !tbaa !38
  %i.fq = add i32 %i.fn, 1
  store i32 %i.fq, ptr %i.bn, align 8, !tbaa !63
  %i.fr = icmp eq i32 %i.fn, 0
  br i1 %i.fr, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.fs = getelementptr inbounds nuw i8, ptr %i.bm, i64 16
  %i.ft = load float, ptr %i.fs, align 8, !tbaa !64
  %i.fu = fcmp ogt float %i.w, %i.ft
  br i1 %i.fu, label %bb.ac, label %hnsw_update_worst_neighbor_on_add.exit254

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %i.fv = getelementptr inbounds nuw i8, ptr %i.bm, i64 16
  store float %i.w, ptr %i.fv, align 8, !tbaa !64
  store i32 %i.fn, ptr %i.dc, align 4, !tbaa !65
  br label %hnsw_update_worst_neighbor_on_add.exit254

hnsw_update_worst_neighbor_on_add.exit254:        ; preds = %bb.ab, %bb.ac
  %i.fw = load i32, ptr %i.f, align 8, !tbaa !63  ; 5 uses
  %i.fx = load ptr, ptr %i.e, align 8, !tbaa !66
  %i.fy = zext i32 %i.fw to i64
  %i.fz = getelementptr inbounds nuw [8 x i8], ptr %i.fx, i64 %i.fy
  store ptr %i.t, ptr %i.fz, align 8, !tbaa !38
  %i.ga = add i32 %i.fw, 1
  store i32 %i.ga, ptr %i.f, align 8, !tbaa !63
  %i.gb = icmp eq i32 %i.fw, 0
  br i1 %i.gb, label %hnsw_update_worst_neighbor_on_add.exit251.thread.sink.split, label %bb.ad

bb.ad:                                            ; preds = %hnsw_update_worst_neighbor_on_add.exit254
  %i.gc = load float, ptr %i.l, align 8, !tbaa !64
  %i.gd = fcmp ogt float %i.w, %i.gc
  br i1 %i.gd, label %hnsw_update_worst_neighbor_on_add.exit251.thread.sink.split, label %hnsw_update_worst_neighbor_on_add.exit251.thread

hnsw_update_worst_neighbor_on_add.exit255:        ; preds = %._crit_edge
  %i.ge = getelementptr inbounds nuw i8, ptr %i.bm, i64 16
  store float %.2216, ptr %i.ge, align 8, !tbaa !64
  store i32 %.2219, ptr %i.dc, align 4, !tbaa !65
  br label %bb.ae

bb.ae:                                            ; preds = %hnsw_update_worst_neighbor_on_add.exit255, %bb.q, %.thread260, %.thread259, %bb.r
  %i.gf = phi ptr [ %i.dc, %hnsw_update_worst_neighbor_on_add.exit255 ], [ %i.dc, %bb.r ], [ %i.cr, %.thread260 ], [ %i.dc, %.thread259 ], [ %i.dc, %bb.q ]
  %i.gg = phi ptr [ %i.bm, %hnsw_update_worst_neighbor_on_add.exit255 ], [ %i.bm, %bb.r ], [ %i.bf, %.thread260 ], [ %i.bm, %.thread259 ], [ %i.bm, %bb.q ]
  %.3223 = phi ptr [ %.2222, %hnsw_update_worst_neighbor_on_add.exit255 ], [ %i.dg, %bb.r ], [ %i.cv, %.thread260 ], [ %i.dg, %.thread259 ], [ %i.dg, %bb.q ] ; 2 uses
  %i.gh = getelementptr inbounds nuw i8, ptr %.3223, i64 312
  %i.gi = getelementptr inbounds nuw [24 x i8], ptr %i.gh, i64 %i.d ; 5 uses
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gi, i64 8 ; 3 uses
  %i.gk = load i32, ptr %i.gj, align 8, !tbaa !63 ; 2 uses
  %i.gl = zext i32 %i.gk to i64                   ; 2 uses
  %.not301 = icmp eq i32 %i.gk, 0
  br i1 %.not301, label %hnsw_update_worst_neighbor_on_remove.exit, label %.lr.ph294

.lr.ph294:                                        ; preds = %bb.ae
  %i.gm = load ptr, ptr %i.gi, align 8, !tbaa !66 ; 2 uses
  br label %bb.af

bb.af:                                            ; preds = %.lr.ph294, %bb.am
  %.0211292 = phi i64 [ 0, %.lr.ph294 ], [ %i.hg, %bb.am ] ; 5 uses
  %i.gn = getelementptr inbounds nuw [8 x i8], ptr %i.gm, i64 %.0211292
  %i.go = load ptr, ptr %i.gn, align 8, !tbaa !38
  %i.gp = icmp eq ptr %i.go, %i.t
  br i1 %i.gp, label %bb.ag, label %bb.am

bb.ag:                                            ; preds = %bb.af
  %i.gq = getelementptr inbounds nuw [8 x i8], ptr %i.gm, i64 %.0211292 ; 2 uses
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gq, i64 8
  %i.gs = xor i64 %.0211292, -1
  %i.gt = add nsw i64 %i.gl, %i.gs
  %i.gu = shl nuw nsw i64 %i.gt, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.gq, ptr nonnull align 8 %i.gr, i64 %i.gu, i1 false)
  %i.gv = load i32, ptr %i.gj, align 8, !tbaa !63
  %i.gw = add i32 %i.gv, -1                       ; 2 uses
  store i32 %i.gw, ptr %i.gj, align 8, !tbaa !63
  %i.gx = trunc nuw i64 %.0211292 to i32          ; 2 uses
  %i.gy = icmp eq i32 %i.gw, 0
  br i1 %i.gy, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gi, i64 16
  store float 0.000000e+00, ptr %i.gz, align 8, !tbaa !64
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gi, i64 20
  store i32 0, ptr %i.ha, align 4, !tbaa !65
  br label %hnsw_update_worst_neighbor_on_remove.exit

bb.ai:                                            ; preds = %bb.ag
  %i.hb = getelementptr inbounds nuw i8, ptr %i.gi, i64 20 ; 2 uses
  %i.hc = load i32, ptr %i.hb, align 4, !tbaa !65 ; 3 uses
  %i.hd = icmp eq i32 %i.hc, %i.gx
  br i1 %i.hd, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  tail call void @hnsw_update_worst_neighbor(ptr noundef readonly %0, ptr noundef nonnull %.3223, i32 noundef %3)
  br label %hnsw_update_worst_neighbor_on_remove.exit

bb.ak:                                            ; preds = %bb.ai
  %i.he = icmp ugt i32 %i.hc, %i.gx
  br i1 %i.he, label %bb.al, label %hnsw_update_worst_neighbor_on_remove.exit

bb.al:                                            ; preds = %bb.ak
  %i.hf = add i32 %i.hc, -1
  store i32 %i.hf, ptr %i.hb, align 4, !tbaa !65
  br label %hnsw_update_worst_neighbor_on_remove.exit

bb.am:                                            ; preds = %bb.af
  %i.hg = add nuw nsw i64 %.0211292, 1            ; 2 uses
  %exitcond311.not = icmp eq i64 %i.hg, %i.gl
  br i1 %exitcond311.not, label %hnsw_update_worst_neighbor_on_remove.exit, label %bb.af, !llvm.loop !175

hnsw_update_worst_neighbor_on_remove.exit:        ; preds = %bb.am, %bb.ae, %bb.al, %bb.ak, %bb.aj, %bb.ah
  %i.hh = load ptr, ptr %i.gg, align 8, !tbaa !66
  %i.hi = load i32, ptr %i.gf, align 4, !tbaa !65
  %i.hj = zext i32 %i.hi to i64
  %i.hk = getelementptr inbounds nuw [8 x i8], ptr %i.hh, i64 %i.hj
  store ptr %2, ptr %i.hk, align 8, !tbaa !38
  tail call void @hnsw_update_worst_neighbor(ptr noundef %0, ptr noundef %i.t, i32 noundef %3)
  %i.hl = load i32, ptr %i.f, align 8, !tbaa !63  ; 5 uses
  %i.hm = load ptr, ptr %i.e, align 8, !tbaa !66
  %i.hn = zext i32 %i.hl to i64
  %i.ho = getelementptr inbounds nuw [8 x i8], ptr %i.hm, i64 %i.hn
  store ptr %i.t, ptr %i.ho, align 8, !tbaa !38
  %i.hp = add i32 %i.hl, 1
  store i32 %i.hp, ptr %i.f, align 8, !tbaa !63
  %i.hq = icmp eq i32 %i.hl, 0
  br i1 %i.hq, label %hnsw_update_worst_neighbor_on_add.exit251.thread.sink.split, label %bb.an

bb.an:                                            ; preds = %hnsw_update_worst_neighbor_on_remove.exit
  %i.hr = load float, ptr %i.l, align 8, !tbaa !64
  %i.hs = fcmp ogt float %i.w, %i.hr
  br i1 %i.hs, label %hnsw_update_worst_neighbor_on_add.exit251.thread.sink.split, label %hnsw_update_worst_neighbor_on_add.exit251.thread

hnsw_update_worst_neighbor_on_add.exit251.thread.sink.split: ; preds = %hnsw_update_worst_neighbor_on_remove.exit, %bb.an, %hnsw_update_worst_neighbor_on_add.exit254, %bb.ad, %hnsw_update_worst_neighbor_on_add.exit, %bb.o
  %.sink = phi i32 [ %i.cf, %hnsw_update_worst_neighbor_on_add.exit ], [ %i.fw, %hnsw_update_worst_neighbor_on_add.exit254 ], [ %i.cf, %bb.o ], [ %i.fw, %bb.ad ], [ %i.hl, %bb.an ], [ %i.hl, %hnsw_update_worst_neighbor_on_remove.exit ]
  store float %i.w, ptr %i.l, align 8, !tbaa !64
  store i32 %.sink, ptr %i.m, align 4, !tbaa !65
  br label %hnsw_update_worst_neighbor_on_add.exit251.thread

hnsw_update_worst_neighbor_on_add.exit251.thread: ; preds = %bb.f, %hnsw_distance.exit, %hnsw_update_worst_neighbor_on_add.exit251.thread.sink.split, %bb.z, %._crit_edge.thread, %bb.ad, %bb.an, %bb.o, %.thread260, %bb.p, %bb.q, %bb.b
  %i.ht = load i32, ptr %i.a, align 8, !tbaa !32  ; 2 uses
  %i.hu = icmp ult i32 %i.p, %i.ht
  br i1 %i.hu, label %bb.b, label %hnsw_update_worst_neighbor_on_add.exit251.thread263, !llvm.loop !176

hnsw_update_worst_neighbor_on_add.exit251.thread263: ; preds = %hnsw_update_worst_neighbor_on_add.exit251.thread, %bb.c, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nounwind uwtable
define dso_local void @hnsw_reconnect_nodes(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #3 {
bb.a:
  %i.a = icmp slt i32 %2, 1
  br i1 %i.a, label %bb.bl, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr @hmalloc, align 8, !tbaa !29
  %i.c = zext nneg i32 %2 to i64                  ; 17 uses
  %i.d = shl nuw nsw i64 %i.c, 2                  ; 4 uses
  %i.e = mul nuw i64 %i.d, %i.c                   ; 2 uses
  %i.f = tail call ptr %i.b(i64 noundef %i.e) #34 ; 14 uses
  %.not = icmp eq ptr %i.f, null
  br i1 %.not, label %bb.bl, label %.lr.ph398

.lr.ph398:                                        ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 1656
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.i = zext nneg i32 %2 to i64                  ; 3 uses
  br label %bb.h

.loopexit383:                                     ; preds = %hnsw_distance.exit, %bb.h
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond465.not = icmp eq i64 %indvars.iv.next462, %i.c
  br i1 %exitcond465.not, label %._crit_edge, label %bb.h, !llvm.loop !177

._crit_edge:                                      ; preds = %.loopexit383
  %i.j = load ptr, ptr @hmalloc, align 8, !tbaa !29
  %i.k = tail call ptr %i.j(i64 noundef %i.d) #34 ; 7 uses
  %.not325 = icmp eq ptr %i.k, null
  br i1 %.not325, label %.sink.split, label %.preheader381.us.preheader

.preheader381.us.preheader:                       ; preds = %._crit_edge
  %wide.trip.count474 = zext nneg i32 %2 to i64
  %xtraiter631 = and i64 %i.i, 1
  %i.l = icmp eq i32 %2, 1
  %unroll_iter = and i64 %i.i, 2147483646
  %lcmp.mod632.not = icmp eq i64 %xtraiter631, 0
  %lcmp.mod635 = trunc i32 %2 to i1
  br label %.preheader381.us

.preheader381.us:                                 ; preds = %.preheader381.us.preheader, %._crit_edge403.us
  %indvars.iv471 = phi i64 [ 0, %.preheader381.us.preheader ], [ %indvars.iv.next472, %._crit_edge403.us ] ; 6 uses
  %i.m = mul nuw nsw i64 %indvars.iv471, %i.c
  %invariant.gep579 = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.m ; 3 uses
  br i1 %i.l, label %.epil.preheader, label %.preheader381.us.new

.preheader381.us.new:                             ; preds = %.preheader381.us, %bb.f
  %indvars.iv466 = phi i64 [ %indvars.iv.next467.1, %bb.f ], [ 0, %.preheader381.us ] ; 4 uses
  %.0309400.us = phi i32 [ %.1310.us.1, %bb.f ], [ 0, %.preheader381.us ] ; 2 uses
  %.0311399.us = phi float [ %.1312.us.1, %bb.f ], [ 0.000000e+00, %.preheader381.us ] ; 2 uses
  %niter = phi i64 [ %niter.next.1, %bb.f ], [ 0, %.preheader381.us ]
  %.not345.us = icmp eq i64 %indvars.iv471, %indvars.iv466
  br i1 %.not345.us, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.preheader381.us.new
  %gep580 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep579, i64 %indvars.iv466
  %i.n = load float, ptr %gep580, align 4, !tbaa !39
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
  %gep580.1 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep579, i64 %indvars.iv.next467
  %i.q = load float, ptr %gep580.1, align 4, !tbaa !39
  %i.r = fadd float %.1312.us, %i.q
  %i.s = add nsw i32 %.1310.us, 1
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.1312.us.1 = phi float [ %i.r, %bb.e ], [ %.1312.us, %bb.d ] ; 3 uses
  %.1310.us.1 = phi i32 [ %i.s, %bb.e ], [ %.1310.us, %bb.d ] ; 3 uses
  %indvars.iv.next467.1 = add nuw nsw i64 %indvars.iv466, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge403.us.unr-lcssa, label %.preheader381.us.new, !llvm.loop !178

._crit_edge403.us.unr-lcssa:                      ; preds = %bb.f
  br i1 %lcmp.mod632.not, label %._crit_edge403.us, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge403.us.unr-lcssa, %.preheader381.us
  %indvars.iv466.epil.init = phi i64 [ 0, %.preheader381.us ], [ %indvars.iv.next467.1, %._crit_edge403.us.unr-lcssa ] ; 2 uses
  %.0309400.us.epil.init = phi i32 [ 0, %.preheader381.us ], [ %.1310.us.1, %._crit_edge403.us.unr-lcssa ] ; 2 uses
  %.0311399.us.epil.init = phi float [ 0.000000e+00, %.preheader381.us ], [ %.1312.us.1, %._crit_edge403.us.unr-lcssa ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod635)
  %.not345.us.epil = icmp eq i64 %indvars.iv471, %indvars.iv466.epil.init
  br i1 %.not345.us.epil, label %._crit_edge403.us, label %bb.g

bb.g:                                             ; preds = %.epil.preheader
  %gep580.epil = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep579, i64 %indvars.iv466.epil.init
  %i.t = load float, ptr %gep580.epil, align 4, !tbaa !39
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
  store float %i.y, ptr %i.z, align 4, !tbaa !39
  %indvars.iv.next472 = add nuw nsw i64 %indvars.iv471, 1 ; 2 uses
  %exitcond475.not = icmp eq i64 %indvars.iv.next472, %wide.trip.count474
  br i1 %exitcond475.not, label %._crit_edge406, label %.preheader381.us, !llvm.loop !179

bb.h:                                             ; preds = %.lr.ph398, %.loopexit383
  %indvars.iv461 = phi i64 [ 0, %.lr.ph398 ], [ %indvars.iv.next462, %.loopexit383 ] ; 6 uses
  %indvars.iv = phi i64 [ 1, %.lr.ph398 ], [ %indvars.iv.next, %.loopexit383 ] ; 2 uses
  %indvars463 = trunc i64 %indvars.iv461 to i32
  %i.aa = mul nuw nsw i32 %2, %indvars463
  %i.ab = zext i32 %i.aa to i64
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv461
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %i.ac, i64 %i.ab
  store float 0.000000e+00, ptr %i.ad, align 4, !tbaa !39
  %indvars.iv.next462 = add nuw nsw i64 %indvars.iv461, 1 ; 3 uses
  %i.ae = icmp samesign ult i64 %indvars.iv.next462, %i.i
  br i1 %i.ae, label %.lr.ph, label %.loopexit383

.lr.ph:                                           ; preds = %bb.h
  %i.af = mul nuw nsw i64 %indvars.iv461, %i.c
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv461
  %invariant.gep = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.af
  %invariant.gep577 = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv461
  br label %bb.i

bb.i:                                             ; preds = %.lr.ph, %hnsw_distance.exit
  %indvars.iv458 = phi i64 [ %indvars.iv, %.lr.ph ], [ %indvars.iv.next459, %hnsw_distance.exit ] ; 4 uses
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !38 ; 4 uses
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv458
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !38 ; 4 uses
  %i.ak = load i32, ptr %i.g, align 8, !tbaa !50
  switch i32 %i.ak, label %bb.x [
    i32 0, label %bb.j
    i32 1, label %bb.p
    i32 2, label %bb.w
  ]

bb.j:                                             ; preds = %bb.i
  %i.al = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !29 ; 8 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !29 ; 8 uses
  %i.ap = load i32, ptr %i.h, align 8, !tbaa !51  ; 8 uses
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
  %i.bf = load float, ptr %i.be, align 4, !tbaa !39
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %i.ao, i64 %indvars.iv79.i.prol
  %i.bh = load float, ptr %i.bg, align 4, !tbaa !39
  %i.bi = tail call float @llvm.fmuladd.f32(float %i.bf, float %i.bh, float %.15871.i.prol) ; 3 uses
  %indvars.iv.next80.i.prol = add nuw nsw i64 %indvars.iv79.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph73.i.prol.loopexit, label %.lr.ph73.i.prol, !llvm.loop !180

.lr.ph73.i.prol.loopexit:                         ; preds = %.lr.ph73.i.prol, %.lr.ph73.preheader.i
  %.lcssa630.unr = phi float [ poison, %.lr.ph73.preheader.i ], [ %i.bi, %.lr.ph73.i.prol ]
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
  %i.bo = load <8 x float>, ptr %i.bm, align 4, !tbaa !39 ; 4 uses
  %i.bp = load <8 x float>, ptr %i.bn, align 4, !tbaa !39 ; 4 uses
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
  %i.cg = load float, ptr %i.cf, align 4, !tbaa !39
  %i.ch = getelementptr inbounds nuw [4 x i8], ptr %i.ao, i64 %indvars.iv79.i
  %i.ci = load float, ptr %i.ch, align 4, !tbaa !39
  %i.cj = tail call float @llvm.fmuladd.f32(float %i.cg, float %i.ci, float %.15871.i)
  %indvars.iv.next80.i = add nuw nsw i64 %indvars.iv79.i, 1 ; 2 uses
  %i.ck = getelementptr inbounds nuw [4 x i8], ptr %i.am, i64 %indvars.iv.next80.i
  %i.cl = load float, ptr %i.ck, align 4, !tbaa !39
  %i.cm = getelementptr inbounds nuw [4 x i8], ptr %i.ao, i64 %indvars.iv.next80.i
  %i.cn = load float, ptr %i.cm, align 4, !tbaa !39
  %i.co = tail call float @llvm.fmuladd.f32(float %i.cl, float %i.cn, float %i.cj)
  %indvars.iv.next80.i.1 = add nuw nsw i64 %indvars.iv79.i, 2 ; 2 uses
  %i.cp = getelementptr inbounds nuw [4 x i8], ptr %i.am, i64 %indvars.iv.next80.i.1
  %i.cq = load float, ptr %i.cp, align 4, !tbaa !39
  %i.cr = getelementptr inbounds nuw [4 x i8], ptr %i.ao, i64 %indvars.iv.next80.i.1
  %i.cs = load float, ptr %i.cr, align 4, !tbaa !39
  %i.ct = tail call float @llvm.fmuladd.f32(float %i.cq, float %i.cs, float %i.co)
  %indvars.iv.next80.i.2 = add nuw nsw i64 %indvars.iv79.i, 3 ; 2 uses
  %i.cu = getelementptr inbounds nuw [4 x i8], ptr %i.am, i64 %indvars.iv.next80.i.2
  %i.cv = load float, ptr %i.cu, align 4, !tbaa !39
  %i.cw = getelementptr inbounds nuw [4 x i8], ptr %i.ao, i64 %indvars.iv.next80.i.2
  %i.cx = load float, ptr %i.cw, align 4, !tbaa !39
  %i.cy = tail call float @llvm.fmuladd.f32(float %i.cv, float %i.cx, float %i.ct) ; 2 uses
  %indvars.iv.next80.i.3 = add nuw nsw i64 %indvars.iv79.i, 4 ; 2 uses
  %exitcond.not.i367.3 = icmp eq i64 %indvars.iv.next80.i.3, %wide.trip.count.i366
  br i1 %exitcond.not.i367.3, label %._crit_edge.i365, label %.lr.ph73.i, !llvm.loop !3

._crit_edge.i365:                                 ; preds = %.lr.ph73.i.prol.loopexit, %.lr.ph73.i, %.preheader.i363
  %.158.lcssa.i = phi float [ %i.bc, %.preheader.i363 ], [ %.lcssa630.unr, %.lr.ph73.i.prol.loopexit ], [ %i.cy, %.lr.ph73.i ]
  %i.cz = extractelement <2 x float> %i.ba, i64 0
  %i.da = fadd float %i.cz, %.158.lcssa.i
  %i.db = fsub float 1.000000e+00, %i.da
  br label %hnsw_distance.exit

bb.p:                                             ; preds = %bb.i
  %i.dc = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !29 ; 12 uses
  %i.de = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !29 ; 12 uses
  %i.dg = load i32, ptr %i.h, align 8, !tbaa !51  ; 9 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %i.ah, i64 24
  %i.di = load float, ptr %i.dh, align 8, !tbaa !39 ; 4 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %i.aj, i64 24
  %i.dk = load float, ptr %i.dj, align 8, !tbaa !39 ; 4 uses
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
end_hunk_0
begin_hunk_1_@hnsw_reconnect_nodes:bb.a
  %i.go = mul nsw i32 %i.gn, %i.gk
  %i.gp = or disjoint i64 %indvars.iv.i359, 5     ; 2 uses
  %i.gq = getelementptr inbounds nuw i8, ptr %i.dd, i64 %i.gp
  %i.gr = load i8, ptr %i.gq, align 1, !tbaa !43
  %i.gs = sext i8 %i.gr to i32
  %i.gt = getelementptr inbounds nuw i8, ptr %i.df, i64 %i.gp
  %i.gu = load i8, ptr %i.gt, align 1, !tbaa !43
  %i.gv = sext i8 %i.gu to i32
  %i.gw = mul nsw i32 %i.gv, %i.gs
  %i.gx = or disjoint i64 %indvars.iv.i359, 6     ; 2 uses
  %i.gy = getelementptr inbounds nuw i8, ptr %i.dd, i64 %i.gx
  %i.gz = load i8, ptr %i.gy, align 1, !tbaa !43
  %i.ha = sext i8 %i.gz to i32
  %i.hb = getelementptr inbounds nuw i8, ptr %i.df, i64 %i.gx
  %i.hc = load i8, ptr %i.hb, align 1, !tbaa !43
  %i.hd = sext i8 %i.hc to i32
  %i.he = mul nsw i32 %i.hd, %i.ha
  %i.hf = getelementptr inbounds nuw i8, ptr %i.dd, i64 %i.ex
  %i.hg = load i8, ptr %i.hf, align 1, !tbaa !43
  %i.hh = sext i8 %i.hg to i32
  %i.hi = getelementptr inbounds nuw i8, ptr %i.df, i64 %i.ex
  %i.hj = load i8, ptr %i.hi, align 1, !tbaa !43
  %i.hk = sext i8 %i.hj to i32
  %i.hl = mul nsw i32 %i.hk, %i.hh
  %i.hm = add i32 %i.go, %.07086.i
  %i.hn = add i32 %i.hm, %i.gw
  %i.ho = add i32 %i.hn, %i.he
  %i.hp = add i32 %i.ho, %i.hl                    ; 2 uses
  %indvars.iv.next.i360 = add nuw nsw i64 %indvars.iv.i359, 8 ; 2 uses
  %i.hq = or disjoint i64 %indvars.iv.next.i360, 7
  %i.hr = icmp samesign ult i64 %i.hq, %i.ea
  br i1 %i.hr, label %.lr.ph.i358, label %.preheader.loopexit.i, !llvm.loop !4

.lr.ph92.i:                                       ; preds = %.lr.ph92.i.preheader, %.lr.ph92.i
  %indvars.iv98.i = phi i64 [ %indvars.iv.next99.i, %.lr.ph92.i ], [ %indvars.iv98.i.ph, %.lr.ph92.i.preheader ] ; 3 uses
  %.17290.i = phi i32 [ %i.hz, %.lr.ph92.i ], [ %.17290.i.ph, %.lr.ph92.i.preheader ]
  %i.hs = getelementptr inbounds nuw i8, ptr %i.dd, i64 %indvars.iv98.i
  %i.ht = load i8, ptr %i.hs, align 1, !tbaa !43
  %i.hu = sext i8 %i.ht to i32
  %i.hv = getelementptr inbounds nuw i8, ptr %i.df, i64 %indvars.iv98.i
  %i.hw = load i8, ptr %i.hv, align 1, !tbaa !43
  %i.hx = sext i8 %i.hw to i32
  %i.hy = mul nsw i32 %i.hx, %i.hu
  %i.hz = add nsw i32 %i.hy, %.17290.i            ; 2 uses
  %indvars.iv.next99.i = add nuw nsw i64 %indvars.iv98.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next99.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %._crit_edge.i, label %.lr.ph92.i, !llvm.loop !182

._crit_edge.i:                                    ; preds = %.lr.ph92.i, %middle.block, %.preheader.i356
  %.172.lcssa.i = phi i32 [ %.071.lcssa.i, %.preheader.i356 ], [ %i.ew, %middle.block ], [ %i.hz, %.lr.ph92.i ]
  %i.ia = add nsw i32 %.172.lcssa.i, %.070.lcssa.i
  %i.ib = sitofp i32 %i.ia to float
  %i.ic = fmul float %i.dy, %i.ib
  %i.id = fsub float 1.000000e+00, %i.ic          ; 3 uses
  %i.ie = fcmp olt float %i.id, 0.000000e+00
  %i.if = fcmp ogt float %i.id, 2.000000e+00
  %spec.store.select.i = select i1 %i.if, float 2.000000e+00, float %i.id
  %.0.i357 = select i1 %i.ie, float 0.000000e+00, float %spec.store.select.i
  br label %hnsw_distance.exit

bb.w:                                             ; preds = %bb.i
  %i.ig = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  %i.ih = load ptr, ptr %i.ig, align 8, !tbaa !29
  %i.ii = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %i.ij = load ptr, ptr %i.ii, align 8, !tbaa !29
  %i.ik = load i32, ptr %i.h, align 8, !tbaa !51
  %i.il = tail call float @vectors_distance_bin(ptr noundef %i.ih, ptr noundef %i.ij, i32 noundef %i.ik)
  br label %hnsw_distance.exit

bb.x:                                             ; preds = %bb.i
  tail call void @__assert_fail(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 724, ptr noundef nonnull @__PRETTY_FUNCTION__.hnsw_distance) #35
  unreachable

hnsw_distance.exit:                               ; preds = %._crit_edge.i, %bb.u, %bb.t, %bb.r, %._crit_edge.i365, %bb.n, %bb.k, %bb.w
  %.0.i = phi float [ %i.il, %bb.w ], [ %i.db, %._crit_edge.i365 ], [ %i.as, %bb.k ], [ %i.aw, %bb.n ], [ %i.do, %bb.r ], [ %i.ds, %bb.t ], [ %.0.i357, %._crit_edge.i ], [ 1.000000e+00, %bb.u ] ; 2 uses
  %gep = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep, i64 %indvars.iv458
  store float %.0.i, ptr %gep, align 4, !tbaa !39
  %i.im = mul nuw nsw i64 %indvars.iv458, %i.c
  %gep578 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep577, i64 %i.im
  store float %.0.i, ptr %gep578, align 4, !tbaa !39
  %indvars.iv.next459 = add nuw nsw i64 %indvars.iv458, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next459, %i.c
  br i1 %exitcond.not, label %.loopexit383, label %bb.i, !llvm.loop !183

._crit_edge406:                                   ; preds = %._crit_edge403.us
  %i.in = load ptr, ptr @hmalloc, align 8, !tbaa !29
  %i.io = tail call ptr %i.in(i64 noundef %i.e) #34 ; 13 uses
  %.not326 = icmp eq ptr %i.io, null
  br i1 %.not326, label %.sink.split.sink.split, label %.preheader379.lr.ph

.preheader379.lr.ph:                              ; preds = %._crit_edge406
  %i.ip = zext i32 %3 to i64                      ; 3 uses
  %i.iq = icmp sgt i32 %2, 2
  %i.ir = add nsw i32 %2, -1
  %i.is = uitofp nneg i32 %i.ir to float
  %i.it = add nsw i32 %2, -2
  %i.iu = uitofp nneg i32 %i.it to float
  br i1 %i.iq, label %.preheader379.us.preheader, label %.preheader379

.preheader379.us.preheader:                       ; preds = %.preheader379.lr.ph
  %i.iv = insertelement <2 x float> poison, float %i.is, i64 0
  %i.iw = shufflevector <2 x float> %i.iv, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ix = insertelement <2 x float> poison, float %i.iu, i64 0
  %i.iy = shufflevector <2 x float> %i.ix, <2 x float> poison, <2 x i32> zeroinitializer
  br label %.preheader379.us

.preheader379.us:                                 ; preds = %.preheader379.us.preheader, %._crit_edge413.split.us.us
  %indvars.iv502 = phi i64 [ %indvars.iv.next503, %._crit_edge413.split.us.us ], [ 0, %.preheader379.us.preheader ] ; 6 uses
  %i.iz = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv502
  %i.ja = mul nuw nsw i64 %indvars.iv502, %i.c    ; 3 uses
  %i.jb = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %indvars.iv502
  %invariant.gep583 = getelementptr inbounds nuw [4 x i8], ptr %i.io, i64 %i.ja
  %i.jc = getelementptr inbounds nuw [4 x i8], ptr %i.io, i64 %indvars.iv502
  %i.jd = getelementptr inbounds nuw [4 x i8], ptr %i.jc, i64 %i.ja
  br label %bb.y

bb.y:                                             ; preds = %bb.ad, %.preheader379.us
  %indvars.iv497 = phi i64 [ %indvars.iv.next498, %bb.ad ], [ 0, %.preheader379.us ] ; 6 uses
  %i.je = icmp eq i64 %indvars.iv502, %indvars.iv497
  br i1 %i.je, label %bb.ac, label %.preheader378.us.us

.preheader378.us.us:                              ; preds = %bb.y
  %i.jf = load ptr, ptr %i.iz, align 8, !tbaa !38
  %i.jg = getelementptr inbounds nuw i8, ptr %i.jf, i64 312
  %i.jh = getelementptr inbounds nuw [24 x i8], ptr %i.jg, i64 %i.ip ; 2 uses
  %i.ji = getelementptr inbounds nuw i8, ptr %i.jh, i64 8
  %i.jj = load i32, ptr %i.ji, align 8, !tbaa !63 ; 2 uses
  %.not343407.us.us.not = icmp eq i32 %i.jj, 0
  br i1 %.not343407.us.us.not, label %.critedge.us.us, label %.lr.ph409.us.us

.lr.ph409.us.us:                                  ; preds = %.preheader378.us.us
  %i.jk = load ptr, ptr %i.jh, align 8, !tbaa !66
  %i.jl = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv497
  %i.jm = load ptr, ptr %i.jl, align 8, !tbaa !38
  %wide.trip.count495 = zext i32 %i.jj to i64
  br label %bb.z

bb.z:                                             ; preds = %bb.aa, %.lr.ph409.us.us
  %indvars.iv492 = phi i64 [ %indvars.iv.next493, %bb.aa ], [ 0, %.lr.ph409.us.us ] ; 2 uses
  %i.jn = getelementptr inbounds nuw [8 x i8], ptr %i.jk, i64 %indvars.iv492
  %i.jo = load ptr, ptr %i.jn, align 8, !tbaa !38
  %i.jp = icmp eq ptr %i.jo, %i.jm
  br i1 %i.jp, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %indvars.iv.next493 = add nuw nsw i64 %indvars.iv492, 1 ; 2 uses
  %exitcond496.not = icmp eq i64 %indvars.iv.next493, %wide.trip.count495
  br i1 %exitcond496.not, label %.critedge.us.us, label %bb.z, !llvm.loop !184

.critedge.us.us:                                  ; preds = %bb.aa, %.preheader378.us.us
  %i.jq = add nuw nsw i64 %indvars.iv497, %i.ja   ; 2 uses
  %i.jr = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.jq
  %i.js = load float, ptr %i.jr, align 4, !tbaa !39 ; 2 uses
  %i.jt = load float, ptr %i.jb, align 4, !tbaa !39
  %i.ju = fneg float %i.js
  %i.jv = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %indvars.iv497
  %i.jw = load float, ptr %i.jv, align 4, !tbaa !39
  %i.jx = insertelement <2 x float> poison, float %i.jt, i64 0
  %i.jy = insertelement <2 x float> %i.jx, float %i.jw, i64 1
  %i.jz = insertelement <2 x float> poison, float %i.ju, i64 0
  %i.ka = shufflevector <2 x float> %i.jz, <2 x float> poison, <2 x i32> zeroinitializer
  %i.kb = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.jy, <2 x float> %i.iw, <2 x float> %i.ka)
  %i.kc = fdiv <2 x float> %i.kb, %i.iy
  %i.kd = tail call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.kc)
  %i.ke = fmul float %i.kd, 5.000000e-01
  %i.kf = fmul float %i.ke, 3.000000e-01
  %i.kg = fsub float 2.000000e+00, %i.js
  %i.kh = tail call float @llvm.fmuladd.f32(float %i.kg, float f0x3F333333, float %i.kf)
  %i.ki = getelementptr inbounds nuw [4 x i8], ptr %i.io, i64 %i.jq
  store float %i.kh, ptr %i.ki, align 4, !tbaa !39
  br label %bb.ad

bb.ab:                                            ; preds = %bb.z
  %gep584 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep583, i64 %indvars.iv497
  store float -1.000000e+00, ptr %gep584, align 4, !tbaa !39
  br label %bb.ad

bb.ac:                                            ; preds = %bb.y
  store float -1.000000e+00, ptr %i.jd, align 4, !tbaa !39
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab, %.critedge.us.us
  %indvars.iv.next498 = add nuw nsw i64 %indvars.iv497, 1 ; 2 uses
  %exitcond501.not = icmp eq i64 %indvars.iv.next498, %i.c
  br i1 %exitcond501.not, label %._crit_edge413.split.us.us, label %bb.y, !llvm.loop !185

._crit_edge413.split.us.us:                       ; preds = %bb.ad
  %indvars.iv.next503 = add nuw nsw i64 %indvars.iv502, 1 ; 2 uses
  %exitcond506.not = icmp eq i64 %indvars.iv.next503, %i.c
  br i1 %exitcond506.not, label %._crit_edge416.split, label %.preheader379.us, !llvm.loop !186

._crit_edge416.split:                             ; preds = %.preheader379, %._crit_edge413.split, %._crit_edge413.split.1, %._crit_edge413.split.us.us
  %i.kj = load ptr, ptr @hmalloc, align 8, !tbaa !29
  %i.kk = tail call ptr %i.kj(i64 noundef %i.d) #34 ; 8 uses
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.kk, i8 0, i64 %i.d, i1 false)
  %.not327 = icmp eq ptr %i.kk, null
  br i1 %.not327, label %.sink.split.sink.split.sink.split, label %.preheader377

.preheader377:                                    ; preds = %._crit_edge416.split
  %i.kl = zext i32 %3 to i64                      ; 13 uses
  %wide.trip.count516 = zext nneg i32 %2 to i64   ; 2 uses
  br label %.lr.ph432

.preheader379.1:                                  ; preds = %._crit_edge413.split
  %i.km = getelementptr inbounds nuw i8, ptr %1, i64 8
  %invariant.gep581.1 = getelementptr inbounds nuw [4 x i8], ptr %i.io, i64 %i.c
  %i.kn = getelementptr inbounds nuw i8, ptr %i.io, i64 4
  %i.ko = getelementptr inbounds nuw [4 x i8], ptr %i.kn, i64 %i.c
  %i.kp = load ptr, ptr %i.km, align 8, !tbaa !38
  %i.kq = getelementptr inbounds nuw i8, ptr %i.kp, i64 312
  %i.kr = getelementptr inbounds nuw [24 x i8], ptr %i.kq, i64 %i.ip ; 2 uses
  %i.ks = getelementptr inbounds nuw i8, ptr %i.kr, i64 8
  %i.kt = load i32, ptr %i.ks, align 8, !tbaa !63 ; 2 uses
  %.not343407.not.1636 = icmp eq i32 %i.kt, 0
  br i1 %.not343407.not.1636, label %.critedge.1644, label %.lr.ph409.1639

.lr.ph409.1639:                                   ; preds = %.preheader379.1
  %i.ku = load ptr, ptr %i.kr, align 8, !tbaa !66
  %i.kv = load ptr, ptr %1, align 8, !tbaa !38
  %wide.trip.count479.1638 = zext i32 %i.kt to i64
  br label %bb.ae

bb.ae:                                            ; preds = %bb.af, %.lr.ph409.1639
  %indvars.iv476.1640 = phi i64 [ 0, %.lr.ph409.1639 ], [ %indvars.iv.next477.1641, %bb.af ] ; 2 uses
  %i.kw = getelementptr inbounds nuw [8 x i8], ptr %i.ku, i64 %indvars.iv476.1640
  %i.kx = load ptr, ptr %i.kw, align 8, !tbaa !38
  %i.ky = icmp eq ptr %i.kx, %i.kv
  br i1 %i.ky, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %indvars.iv.next477.1641 = add nuw nsw i64 %indvars.iv476.1640, 1 ; 2 uses
  %exitcond480.not.1642 = icmp eq i64 %indvars.iv.next477.1641, %wide.trip.count479.1638
  br i1 %exitcond480.not.1642, label %.critedge.1644, label %bb.ae, !llvm.loop !184

bb.ag:                                            ; preds = %bb.ae
  store float -1.000000e+00, ptr %invariant.gep581.1, align 4, !tbaa !39
  br label %._crit_edge413.split.1

.critedge.1644:                                   ; preds = %bb.af, %.preheader379.1
  %i.kz = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.c
  %i.la = load float, ptr %i.kz, align 4, !tbaa !39
  %i.lb = fsub float 2.000000e+00, %i.la
  %i.lc = tail call float @llvm.fmuladd.f32(float %i.lb, float f0x3F333333, float 0.000000e+00)
  %i.ld = getelementptr inbounds nuw [4 x i8], ptr %i.io, i64 %i.c
  store float %i.lc, ptr %i.ld, align 4, !tbaa !39
  br label %._crit_edge413.split.1

._crit_edge413.split.1:                           ; preds = %.critedge.1644, %bb.ag
  store float -1.000000e+00, ptr %i.ko, align 4, !tbaa !39
  br label %._crit_edge416.split

.preheader379:                                    ; preds = %.preheader379.lr.ph
  store float -1.000000e+00, ptr %i.io, align 4, !tbaa !39
  %cond = icmp eq i32 %2, 1
  br i1 %cond, label %._crit_edge416.split, label %.preheader378.1

.preheader378.1:                                  ; preds = %.preheader379
  %i.le = load ptr, ptr %1, align 8, !tbaa !38
  %i.lf = getelementptr inbounds nuw i8, ptr %i.le, i64 312
  %i.lg = getelementptr inbounds nuw [24 x i8], ptr %i.lf, i64 %i.ip ; 2 uses
  %i.lh = getelementptr inbounds nuw i8, ptr %i.lg, i64 8
  %i.li = load i32, ptr %i.lh, align 8, !tbaa !63 ; 2 uses
  %.not343407.not.1 = icmp eq i32 %i.li, 0
  br i1 %.not343407.not.1, label %.critedge.1, label %.lr.ph409.1

.lr.ph409.1:                                      ; preds = %.preheader378.1
  %i.lj = load ptr, ptr %i.lg, align 8, !tbaa !66
  %i.lk = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ll = load ptr, ptr %i.lk, align 8, !tbaa !38
  %wide.trip.count479.1 = zext i32 %i.li to i64
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ai, %.lr.ph409.1
  %indvars.iv476.1 = phi i64 [ 0, %.lr.ph409.1 ], [ %indvars.iv.next477.1, %bb.ai ] ; 2 uses
  %i.lm = getelementptr inbounds nuw [8 x i8], ptr %i.lj, i64 %indvars.iv476.1
  %i.ln = load ptr, ptr %i.lm, align 8, !tbaa !38
  %i.lo = icmp eq ptr %i.ln, %i.ll
  br i1 %i.lo, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %indvars.iv.next477.1 = add nuw nsw i64 %indvars.iv476.1, 1 ; 2 uses
  %exitcond480.not.1 = icmp eq i64 %indvars.iv.next477.1, %wide.trip.count479.1
  br i1 %exitcond480.not.1, label %.critedge.1, label %bb.ah, !llvm.loop !184

bb.aj:                                            ; preds = %bb.ah
  %gep582.1 = getelementptr inbounds nuw i8, ptr %i.io, i64 4
  store float -1.000000e+00, ptr %gep582.1, align 4, !tbaa !39
  br label %._crit_edge413.split

.critedge.1:                                      ; preds = %bb.ai, %.preheader378.1
  %i.lp = getelementptr inbounds nuw i8, ptr %i.f, i64 4
  %i.lq = load float, ptr %i.lp, align 4, !tbaa !39
  %i.lr = fsub float 2.000000e+00, %i.lq
  %i.ls = tail call float @llvm.fmuladd.f32(float %i.lr, float f0x3F333333, float 0.000000e+00)
  %i.lt = getelementptr inbounds nuw i8, ptr %i.io, i64 4
  store float %i.ls, ptr %i.lt, align 4, !tbaa !39
  br label %._crit_edge413.split

._crit_edge413.split:                             ; preds = %.critedge.1, %bb.aj
  %exitcond491.not = icmp eq i32 %2, 1
  br i1 %exitcond491.not, label %._crit_edge416.split, label %.preheader379.1

.lr.ph432:                                        ; preds = %.lr.ph432.backedge, %.preheader377
  %indvars.iv513 = phi i64 [ 0, %.preheader377 ], [ %indvars.iv513.be, %.lr.ph432.backedge ] ; 6 uses
  %.0287428.us = phi i32 [ -1, %.preheader377 ], [ %.0287428.us.be, %.lr.ph432.backedge ] ; 3 uses
  %.0290427.us = phi i32 [ -1, %.preheader377 ], [ %.0290427.us.be, %.lr.ph432.backedge ] ; 3 uses
  %.0296426.us = phi float [ -1.000000e+00, %.preheader377 ], [ %.0296426.us.be, %.lr.ph432.backedge ] ; 3 uses
  %i.lu = getelementptr inbounds nuw [4 x i8], ptr %i.kk, i64 %indvars.iv513
  %i.lv = load i32, ptr %i.lu, align 4, !tbaa !25
  %.not339.us = icmp eq i32 %i.lv, 0
  br i1 %.not339.us, label %bb.ak, label %..loopexit_crit_edge.us

bb.ak:                                            ; preds = %.lr.ph432
  %i.lw = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv513
  %i.lx = load ptr, ptr %i.lw, align 8, !tbaa !38
  %i.ly = getelementptr inbounds nuw i8, ptr %i.lx, i64 312
  %i.lz = getelementptr inbounds nuw [24 x i8], ptr %i.ly, i64 %i.kl ; 2 uses
  %i.ma = getelementptr inbounds nuw i8, ptr %i.lz, i64 8
  %i.mb = load i32, ptr %i.ma, align 8, !tbaa !63
  %i.mc = getelementptr inbounds nuw i8, ptr %i.lz, i64 12
  %i.md = load i32, ptr %i.mc, align 4, !tbaa !62
  %.not340.us = icmp ult i32 %i.mb, %i.md
  br i1 %.not340.us, label %.preheader.us, label %..loopexit_crit_edge.us

.preheader.us:                                    ; preds = %bb.ak
  %i.me = mul nuw nsw i64 %indvars.iv513, %i.c
  %i.mf = trunc nuw nsw i64 %indvars.iv513 to i32
  %invariant.gep585 = getelementptr inbounds nuw [4 x i8], ptr %i.io, i64 %i.me
  br label %bb.al

bb.al:                                            ; preds = %.preheader.us, %bb.aq
  %indvars.iv507 = phi i64 [ 0, %.preheader.us ], [ %indvars.iv.next508, %bb.aq ] ; 6 uses
  %.1288421.us = phi i32 [ %.0287428.us, %.preheader.us ], [ %.4.us, %bb.aq ] ; 4 uses
  %.1291420.us = phi i32 [ %.0290427.us, %.preheader.us ], [ %.4294.us, %bb.aq ] ; 4 uses
  %.1297419.us = phi float [ %.0296426.us, %.preheader.us ], [ %.4300.us, %bb.aq ] ; 5 uses
  %i.mg = icmp eq i64 %indvars.iv513, %indvars.iv507
  br i1 %i.mg, label %bb.aq, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.mh = getelementptr inbounds nuw [4 x i8], ptr %i.kk, i64 %indvars.iv507
  %i.mi = load i32, ptr %i.mh, align 4, !tbaa !25
  %.not341.us = icmp eq i32 %i.mi, 0
  br i1 %.not341.us, label %bb.an, label %bb.aq

bb.an:                                            ; preds = %bb.am
  %gep586 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep585, i64 %indvars.iv507
  %i.mj = load float, ptr %gep586, align 4, !tbaa !39 ; 3 uses
  %i.mk = fcmp uge float %i.mj, 0.000000e+00
  %i.ml = fcmp ogt float %i.mj, %.1297419.us
  %or.cond.us = select i1 %i.mk, i1 %i.ml, i1 false
  br i1 %or.cond.us, label %bb.ao, label %bb.aq

bb.ao:                                            ; preds = %bb.an
  %i.mm = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv507
  %i.mn = load ptr, ptr %i.mm, align 8, !tbaa !38
  %i.mo = getelementptr inbounds nuw i8, ptr %i.mn, i64 312
  %i.mp = getelementptr inbounds nuw [24 x i8], ptr %i.mo, i64 %i.kl ; 2 uses
  %i.mq = getelementptr inbounds nuw i8, ptr %i.mp, i64 8
  %i.mr = load i32, ptr %i.mq, align 8, !tbaa !63
  %i.ms = getelementptr inbounds nuw i8, ptr %i.mp, i64 12
  %i.mt = load i32, ptr %i.ms, align 4, !tbaa !62
  %i.mu = icmp ult i32 %i.mr, %i.mt
  br i1 %i.mu, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %bb.ao
  %i.mv = trunc nuw nsw i64 %indvars.iv507 to i32
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %bb.ao, %bb.an, %bb.am, %bb.al
  %.4300.us = phi float [ %.1297419.us, %bb.al ], [ %.1297419.us, %bb.am ], [ %.1297419.us, %bb.an ], [ %i.mj, %bb.ap ], [ %.1297419.us, %bb.ao ] ; 2 uses
  %.4294.us = phi i32 [ %.1291420.us, %bb.al ], [ %.1291420.us, %bb.am ], [ %.1291420.us, %bb.an ], [ %i.mv, %bb.ap ], [ %.1291420.us, %bb.ao ] ; 2 uses
  %.4.us = phi i32 [ %.1288421.us, %bb.al ], [ %.1288421.us, %bb.am ], [ %.1288421.us, %bb.an ], [ %i.mf, %bb.ap ], [ %.1288421.us, %bb.ao ] ; 2 uses
  %indvars.iv.next508 = add nuw nsw i64 %indvars.iv507, 1 ; 2 uses
  %exitcond512.not = icmp eq i64 %indvars.iv.next508, %wide.trip.count516
  br i1 %exitcond512.not, label %..loopexit_crit_edge.us, label %bb.al, !llvm.loop !187

..loopexit_crit_edge.us:                          ; preds = %bb.aq, %bb.ak, %.lr.ph432
  %.5301.us = phi float [ %.0296426.us, %.lr.ph432 ], [ %.0296426.us, %bb.ak ], [ %.4300.us, %bb.aq ]
  %.5295.us = phi i32 [ %.0290427.us, %.lr.ph432 ], [ %.0290427.us, %bb.ak ], [ %.4294.us, %bb.aq ] ; 4 uses
  %.5.us = phi i32 [ %.0287428.us, %.lr.ph432 ], [ %.0287428.us, %bb.ak ], [ %.4.us, %bb.aq ] ; 3 uses
  %indvars.iv.next514 = add nuw nsw i64 %indvars.iv513, 1 ; 2 uses
  %exitcond517.not = icmp eq i64 %indvars.iv.next514, %wide.trip.count516
  br i1 %exitcond517.not, label %._crit_edge433.split.us, label %.lr.ph432.backedge

.lr.ph432.backedge:                               ; preds = %..loopexit_crit_edge.us, %hnsw_update_worst_neighbor_on_add.exit346
  %indvars.iv513.be = phi i64 [ %indvars.iv.next514, %..loopexit_crit_edge.us ], [ 0, %hnsw_update_worst_neighbor_on_add.exit346 ]
  %.0287428.us.be = phi i32 [ %.5.us, %..loopexit_crit_edge.us ], [ -1, %hnsw_update_worst_neighbor_on_add.exit346 ]
  %.0290427.us.be = phi i32 [ %.5295.us, %..loopexit_crit_edge.us ], [ -1, %hnsw_update_worst_neighbor_on_add.exit346 ]
  %.0296426.us.be = phi float [ %.5301.us, %..loopexit_crit_edge.us ], [ -1.000000e+00, %hnsw_update_worst_neighbor_on_add.exit346 ]
  br label %.lr.ph432, !llvm.loop !188

._crit_edge433.split.us:                          ; preds = %..loopexit_crit_edge.us
  %.not328.not = icmp eq i32 %.5295.us, -1
  br i1 %.not328.not, label %.lr.ph447, label %bb.ar

bb.ar:                                            ; preds = %._crit_edge433.split.us
  %i.mw = sext i32 %.5.us to i64                  ; 2 uses
  %i.mx = getelementptr inbounds [8 x i8], ptr %1, i64 %i.mw ; 2 uses
  %i.my = load ptr, ptr %i.mx, align 8, !tbaa !38
  %i.mz = getelementptr inbounds nuw i8, ptr %i.my, i64 312
  %i.na = getelementptr inbounds nuw [24 x i8], ptr %i.mz, i64 %i.kl ; 2 uses
  %i.nb = getelementptr inbounds nuw i8, ptr %i.na, i64 8
  %i.nc = load i32, ptr %i.nb, align 8, !tbaa !63 ; 2 uses
  %i.nd = sext i32 %.5295.us to i64               ; 2 uses
  %i.ne = getelementptr inbounds [8 x i8], ptr %1, i64 %i.nd ; 2 uses
  %i.nf = load ptr, ptr %i.ne, align 8, !tbaa !38 ; 2 uses
  %i.ng = load ptr, ptr %i.na, align 8, !tbaa !66
  %i.nh = sext i32 %i.nc to i64
  %i.ni = getelementptr inbounds [8 x i8], ptr %i.ng, i64 %i.nh
  store ptr %i.nf, ptr %i.ni, align 8, !tbaa !38
  %i.nj = load ptr, ptr %i.mx, align 8, !tbaa !38 ; 3 uses
  %i.nk = getelementptr inbounds nuw [24 x i8], ptr %i.nj, i64 %i.kl
  %i.nl = getelementptr inbounds nuw i8, ptr %i.nk, i64 320 ; 2 uses
  %i.nm = load i32, ptr %i.nl, align 8, !tbaa !63 ; 2 uses
  %i.nn = add i32 %i.nm, 1
  store i32 %i.nn, ptr %i.nl, align 8, !tbaa !63
  %i.no = mul nsw i32 %.5.us, %2
  %i.np = add nsw i32 %i.no, %.5295.us
  %i.nq = sext i32 %i.np to i64
  %i.nr = getelementptr inbounds [4 x i8], ptr %i.f, i64 %i.nq
  %i.ns = load float, ptr %i.nr, align 4, !tbaa !39 ; 4 uses
  %i.nt = getelementptr inbounds nuw i8, ptr %i.nj, i64 312
  %i.nu = getelementptr inbounds nuw [24 x i8], ptr %i.nt, i64 %i.kl ; 3 uses
  %i.nv = icmp eq i32 %i.nm, 0
  br i1 %i.nv, label %bb.at, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.nw = getelementptr inbounds nuw i8, ptr %i.nu, i64 16
  %i.nx = load float, ptr %i.nw, align 8, !tbaa !64
  %i.ny = fcmp ogt float %i.ns, %i.nx
  br i1 %i.ny, label %bb.at, label %hnsw_update_worst_neighbor_on_add.exit

bb.at:                                            ; preds = %bb.as, %bb.ar
  %i.nz = getelementptr inbounds nuw i8, ptr %i.nu, i64 16
  store float %i.ns, ptr %i.nz, align 8, !tbaa !64
  %i.oa = getelementptr inbounds nuw i8, ptr %i.nu, i64 20
  store i32 %i.nc, ptr %i.oa, align 4, !tbaa !65
  br label %hnsw_update_worst_neighbor_on_add.exit

hnsw_update_worst_neighbor_on_add.exit:           ; preds = %bb.as, %bb.at
  %i.ob = getelementptr inbounds nuw i8, ptr %i.nf, i64 312
  %i.oc = getelementptr inbounds nuw [24 x i8], ptr %i.ob, i64 %i.kl ; 2 uses
  %i.od = getelementptr inbounds nuw i8, ptr %i.oc, i64 8
  %i.oe = load i32, ptr %i.od, align 8, !tbaa !63 ; 2 uses
  %i.of = load ptr, ptr %i.oc, align 8, !tbaa !66
  %i.og = sext i32 %i.oe to i64
  %i.oh = getelementptr inbounds [8 x i8], ptr %i.of, i64 %i.og
  store ptr %i.nj, ptr %i.oh, align 8, !tbaa !38
  %i.oi = load ptr, ptr %i.ne, align 8, !tbaa !38 ; 2 uses
  %i.oj = getelementptr inbounds nuw [24 x i8], ptr %i.oi, i64 %i.kl
  %i.ok = getelementptr inbounds nuw i8, ptr %i.oj, i64 320 ; 2 uses
  %i.ol = load i32, ptr %i.ok, align 8, !tbaa !63 ; 2 uses
  %i.om = add i32 %i.ol, 1
  store i32 %i.om, ptr %i.ok, align 8, !tbaa !63
  %i.on = getelementptr inbounds nuw i8, ptr %i.oi, i64 312
  %i.oo = getelementptr inbounds nuw [24 x i8], ptr %i.on, i64 %i.kl ; 3 uses
  %i.op = icmp eq i32 %i.ol, 0
  br i1 %i.op, label %bb.av, label %bb.au

bb.au:                                            ; preds = %hnsw_update_worst_neighbor_on_add.exit
  %i.oq = getelementptr inbounds nuw i8, ptr %i.oo, i64 16
  %i.or = load float, ptr %i.oq, align 8, !tbaa !64
  %i.os = fcmp ogt float %i.ns, %i.or
  br i1 %i.os, label %bb.av, label %hnsw_update_worst_neighbor_on_add.exit346

bb.av:                                            ; preds = %bb.au, %hnsw_update_worst_neighbor_on_add.exit
  %i.ot = getelementptr inbounds nuw i8, ptr %i.oo, i64 16
  store float %i.ns, ptr %i.ot, align 8, !tbaa !64
  %i.ou = getelementptr inbounds nuw i8, ptr %i.oo, i64 20
  store i32 %i.oe, ptr %i.ou, align 4, !tbaa !65
  br label %hnsw_update_worst_neighbor_on_add.exit346

hnsw_update_worst_neighbor_on_add.exit346:        ; preds = %bb.au, %bb.av
  %i.ov = getelementptr inbounds [4 x i8], ptr %i.kk, i64 %i.nd
  store i32 1, ptr %i.ov, align 4, !tbaa !25
  %i.ow = getelementptr inbounds [4 x i8], ptr %i.kk, i64 %i.mw
  store i32 1, ptr %i.ow, align 4, !tbaa !25
  br label %.lr.ph432.backedge

.lr.ph447:                                        ; preds = %._crit_edge433.split.us
  %i.ox = shl nuw nsw i64 %i.c, 4
  %i.oy = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.oz = getelementptr inbounds nuw i8, ptr %0, i64 8
  %wide.trip.count526 = zext nneg i32 %2 to i64   ; 2 uses
  br label %bb.aw

.critedge376._crit_edge:                          ; preds = %pq_new.exit.thread
  %i.pa = load ptr, ptr @hfree, align 8, !tbaa !29
  tail call void %i.pa(ptr noundef nonnull %i.f) #34
  br label %.sink.split.sink.split.sink.split

bb.aw:                                            ; preds = %.lr.ph447, %pq_new.exit.thread
  %indvars.iv523 = phi i64 [ 0, %.lr.ph447 ], [ %indvars.iv.next524, %pq_new.exit.thread ] ; 5 uses
  %i.pb = getelementptr inbounds nuw [4 x i8], ptr %i.kk, i64 %indvars.iv523
  %i.pc = load i32, ptr %i.pb, align 4, !tbaa !25
  %.not329 = icmp eq i32 %i.pc, 0
  br i1 %.not329, label %bb.ax, label %pq_new.exit.thread

bb.ax:                                            ; preds = %bb.aw
  %i.pd = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv523 ; 6 uses
  %i.pe = load ptr, ptr %i.pd, align 8, !tbaa !38
  %i.pf = getelementptr inbounds nuw i8, ptr %i.pe, i64 312
  %i.pg = getelementptr inbounds nuw [24 x i8], ptr %i.pf, i64 %i.kl ; 2 uses
  %i.ph = getelementptr inbounds nuw i8, ptr %i.pg, i64 8
  %i.pi = load i32, ptr %i.ph, align 8, !tbaa !63
  %i.pj = getelementptr inbounds nuw i8, ptr %i.pg, i64 12
  %i.pk = load i32, ptr %i.pj, align 4, !tbaa !62
  %.not330 = icmp ult i32 %i.pi, %i.pk
  br i1 %.not330, label %bb.ay, label %pq_new.exit.thread

bb.ay:                                            ; preds = %bb.ax
  %i.pl = load ptr, ptr @hmalloc, align 8, !tbaa !29
  %i.pm = tail call ptr %i.pl(i64 noundef 16) #34, !inline_history !69 ; 13 uses
  %.not.i = icmp eq ptr %i.pm, null
  br i1 %.not.i, label %pq_new.exit.thread, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.pn = load ptr, ptr @hmalloc, align 8, !tbaa !29
  %i.po = tail call ptr %i.pn(i64 noundef %i.ox) #34, !inline_history !69 ; 4 uses
  store ptr %i.po, ptr %i.pm, align 8, !tbaa !31
  %.not10.i = icmp eq ptr %i.po, null
  br i1 %.not10.i, label %pq_new.exit.thread.sink.split, label %.lr.ph439

.lr.ph439:                                        ; preds = %bb.az
  %i.pp = getelementptr inbounds nuw i8, ptr %i.pm, i64 8 ; 5 uses
  store i32 0, ptr %i.pp, align 8, !tbaa !32
  %i.pq = getelementptr inbounds nuw i8, ptr %i.pm, i64 12 ; 3 uses
  store i32 %2, ptr %i.pq, align 4, !tbaa !33
  %i.pr = mul nuw nsw i64 %indvars.iv523, %i.c
  %invariant.gep587 = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.pr
  br label %bb.ba

._crit_edge440:                                   ; preds = %pq_push.exit
  %.pre528 = load i32, ptr %i.pp, align 8, !tbaa !32
  %i.ps = load ptr, ptr %i.pd, align 8, !tbaa !38 ; 2 uses
  %i.pt = getelementptr inbounds nuw [24 x i8], ptr %i.ps, i64 %i.kl
  %i.pu = getelementptr inbounds nuw i8, ptr %i.pt, i64 320
  %i.pv = load i32, ptr %i.pu, align 8, !tbaa !63
  %i.pw = add i32 %i.pv, 1                        ; 3 uses
  %.not332 = icmp eq i32 %.pre528, 0
  br i1 %.not332, label %pq_free.exit, label %bb.bg

bb.ba:                                            ; preds = %.lr.ph439, %pq_push.exit
  %i.px = phi ptr [ %i.po, %.lr.ph439 ], [ %i.rq, %pq_push.exit ] ; 5 uses
  %i.py = phi ptr [ %i.po, %.lr.ph439 ], [ %i.rr, %pq_push.exit ] ; 5 uses
  %indvars.iv518 = phi i64 [ 0, %.lr.ph439 ], [ %indvars.iv.next519, %pq_push.exit ] ; 4 uses
  %.not338 = icmp eq i64 %indvars.iv523, %indvars.iv518
  br i1 %.not338, label %pq_push.exit, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.pz = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv518
  %i.qa = load ptr, ptr %i.pz, align 8, !tbaa !38 ; 3 uses
  %i.qb = getelementptr inbounds nuw i8, ptr %i.qa, i64 312
  %i.qc = getelementptr inbounds nuw [24 x i8], ptr %i.qb, i64 %i.kl ; 2 uses
  %i.qd = getelementptr inbounds nuw i8, ptr %i.qc, i64 8
  %i.qe = load i32, ptr %i.qd, align 8, !tbaa !63
  %i.qf = getelementptr inbounds nuw i8, ptr %i.qc, i64 12
  %i.qg = load i32, ptr %i.qf, align 4, !tbaa !62
  %i.qh = icmp ult i32 %i.qe, %i.qg
  br i1 %i.qh, label %bb.bc, label %pq_push.exit

bb.bc:                                            ; preds = %bb.bb
  %gep588 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep587, i64 %indvars.iv518
  %i.qi = load float, ptr %gep588, align 4, !tbaa !39 ; 5 uses
  %i.qj = load i32, ptr %i.pp, align 8, !tbaa !32 ; 3 uses
  %i.qk = load i32, ptr %i.pq, align 4, !tbaa !33 ; 2 uses
  %i.ql = icmp ult i32 %i.qj, %i.qk
  br i1 %i.ql, label %.preheader.i, label %bb.be

.preheader.i:                                     ; preds = %bb.bc
  %.not45.i = icmp eq i32 %i.qj, 0
  br i1 %.not45.i, label %.critedge.i, label %.lr.ph47.preheader.i

.lr.ph47.preheader.i:                             ; preds = %.preheader.i
  %i.qm = zext i32 %i.qj to i64
  br label %.lr.ph47.i

.lr.ph47.i:                                       ; preds = %bb.bd, %.lr.ph47.preheader.i
  %indvars.iv53.i = phi i64 [ %i.qm, %.lr.ph47.preheader.i ], [ %indvars.iv.next54.i, %bb.bd ] ; 3 uses
  %i.qn = load ptr, ptr %i.pm, align 8, !tbaa !31 ; 3 uses
  %indvars.iv.next54.i = add nsw i64 %indvars.iv53.i, -1 ; 2 uses
  %i.qo = and i64 %indvars.iv.next54.i, 4294967295 ; 2 uses
end_hunk_1
