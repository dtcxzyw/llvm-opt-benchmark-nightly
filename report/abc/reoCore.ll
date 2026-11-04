Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/reoCore?download=true
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@reoReorderArray:bb.a
  %i.eo = add nsw i32 %i.en, 1
  store i32 %i.eo, ptr %i.cg, align 4, !tbaa !78
  br i1 %i.cj, label %.lr.ph257, label %.preheader236

.lr.ph257:                                        ; preds = %._crit_edge251
  %i.ep = getelementptr inbounds nuw i8, ptr %0, i64 184
  %wide.trip.count289 = zext nneg i32 %4 to i64
  br label %bb.af

.preheader237:                                    ; preds = %bb.af
  %.pre316 = load i32, ptr %i.em, align 8, !tbaa !95
  %i.eq = icmp sgt i32 %.pre316, 0
  br i1 %i.eq, label %.lr.ph259, label %.preheader236

.lr.ph259:                                        ; preds = %.preheader237
  %i.er = getelementptr inbounds nuw i8, ptr %0, i64 224
  br label %bb.ag

bb.af:                                            ; preds = %.lr.ph257, %bb.af
  %indvars.iv286 = phi i64 [ 0, %.lr.ph257 ], [ %indvars.iv.next287, %bb.af ] ; 3 uses
  %i.es = load ptr, ptr %i.ep, align 8, !tbaa !25
  %i.et = getelementptr inbounds nuw [8 x i8], ptr %i.es, i64 %indvars.iv286
  %i.eu = load ptr, ptr %i.et, align 8, !tbaa !79
  %i.ev = tail call ptr @reoTransferUnitsToNodes_rec(ptr noundef nonnull %0, ptr noundef %i.eu) #11 ; 2 uses
  %i.ew = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv286
  store ptr %i.ev, ptr %i.ew, align 8, !tbaa !73
  tail call void @Cudd_Ref(ptr noundef %i.ev) #11
  %indvars.iv.next287 = add nuw nsw i64 %indvars.iv286, 1 ; 2 uses
  %exitcond290.not = icmp eq i64 %indvars.iv.next287, %wide.trip.count289
  br i1 %exitcond290.not, label %.preheader237, label %bb.af, !llvm.loop !38

.preheader236:                                    ; preds = %bb.ag, %._crit_edge251, %.preheader237
  %i.ex = load ptr, ptr %i.b, align 8, !tbaa !46  ; 3 uses
  %.not219 = icmp eq ptr %i.ex, null
  br i1 %.not219, label %.thread230, label %.preheader235

bb.ag:                                            ; preds = %.lr.ph259, %bb.ag
  %indvars.iv291 = phi i64 [ 0, %.lr.ph259 ], [ %indvars.iv.next292, %bb.ag ] ; 2 uses
  %i.ey = load ptr, ptr %i.er, align 8, !tbaa !26
  %i.ez = getelementptr inbounds nuw [8 x i8], ptr %i.ey, i64 %indvars.iv291
  %i.fa = load ptr, ptr %i.ez, align 8, !tbaa !73
  tail call void @Cudd_RecursiveDeref(ptr noundef %1, ptr noundef %i.fa) #11
  %indvars.iv.next292 = add nuw nsw i64 %indvars.iv291, 1 ; 2 uses
  %i.fb = load i32, ptr %i.em, align 8, !tbaa !95
  %i.fc = sext i32 %i.fb to i64
  %i.fd = icmp slt i64 %indvars.iv.next292, %i.fc
  br i1 %i.fd, label %bb.ag, label %.preheader236, !llvm.loop !39

.preheader235:                                    ; preds = %.preheader236
  %i.fe = load i32, ptr %i.m, align 4, !tbaa !64
  %i.ff = icmp sgt i32 %i.fe, 0
  br i1 %i.ff, label %.lr.ph261, label %._crit_edge262

.lr.ph261:                                        ; preds = %.preheader235
  %i.fg = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.fh = load ptr, ptr %i.fg, align 8, !tbaa !22
  %i.fi = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.fj = load ptr, ptr %i.fi, align 8, !tbaa !24
  %i.fk = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.fl = load ptr, ptr %i.fk, align 8, !tbaa !23
  br label %bb.ah

bb.ah:                                            ; preds = %.lr.ph261, %bb.ah
  %indvars.iv294 = phi i64 [ 0, %.lr.ph261 ], [ %indvars.iv.next295, %bb.ah ] ; 3 uses
  %i.fm = getelementptr inbounds nuw [4 x i8], ptr %i.fj, i64 %indvars.iv294
  %i.fn = load i32, ptr %i.fm, align 4, !tbaa !65
  %i.fo = sext i32 %i.fn to i64
  %i.fp = getelementptr inbounds [4 x i8], ptr %i.fh, i64 %i.fo
  %i.fq = load i32, ptr %i.fp, align 4, !tbaa !65
  %i.fr = getelementptr inbounds nuw [4 x i8], ptr %i.fl, i64 %indvars.iv294
  %i.fs = load i32, ptr %i.fr, align 4, !tbaa !65
  %i.ft = sext i32 %i.fs to i64
  %i.fu = getelementptr inbounds [4 x i8], ptr %i.ex, i64 %i.ft
  store i32 %i.fq, ptr %i.fu, align 4, !tbaa !65
  %indvars.iv.next295 = add nuw nsw i64 %indvars.iv294, 1 ; 2 uses
  %i.fv = load i32, ptr %i.m, align 4, !tbaa !64
  %i.fw = sext i32 %i.fv to i64
  %i.fx = icmp slt i64 %indvars.iv.next295, %i.fw
  br i1 %i.fx, label %bb.ah, label %._crit_edge262, !llvm.loop !40

._crit_edge262:                                   ; preds = %bb.ah, %.preheader235
  %i.fy = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.fz = load i32, ptr %i.fy, align 4, !tbaa !96
  %.not220 = icmp eq i32 %i.fz, 0
  br i1 %.not220, label %bb.ar, label %.loopexit234

.thread230:                                       ; preds = %.preheader236
  %i.ga = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.gb = load i32, ptr %i.ga, align 4, !tbaa !96
  %.not220231 = icmp eq i32 %i.gb, 0
  br i1 %.not220231, label %bb.ar, label %.thread232

.thread232:                                       ; preds = %.thread230
  %i.gc = load i32, ptr %i.m, align 4, !tbaa !64  ; 4 uses
  %i.gd = sext i32 %i.gc to i64
  %i.ge = shl nsw i64 %i.gd, 2
  %i.gf = tail call noalias ptr @malloc(i64 noundef %i.ge) #12 ; 8 uses
  %i.gg = icmp sgt i32 %i.gc, 0
  br i1 %i.gg, label %.lr.ph264, label %.loopexit234

.lr.ph264:                                        ; preds = %.thread232
  %i.gh = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.gi = load ptr, ptr %i.gh, align 8, !tbaa !22 ; 5 uses
  %i.gj = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.gk = load ptr, ptr %i.gj, align 8, !tbaa !24 ; 5 uses
  %i.gl = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.gm = load ptr, ptr %i.gl, align 8, !tbaa !23 ; 5 uses
  %wide.trip.count300 = zext nneg i32 %i.gc to i64 ; 2 uses
  %xtraiter337 = and i64 %wide.trip.count300, 3   ; 3 uses
  %i.gn = icmp ult i32 %i.gc, 4
  br i1 %i.gn, label %.epil.preheader, label %.lr.ph264.new

.lr.ph264.new:                                    ; preds = %.lr.ph264
  %unroll_iter = and i64 %wide.trip.count300, 2147483644
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ai, %.lr.ph264.new
  %indvars.iv297 = phi i64 [ 0, %.lr.ph264.new ], [ %indvars.iv.next298.3, %bb.ai ] ; 6 uses
  %niter = phi i64 [ 0, %.lr.ph264.new ], [ %niter.next.3, %bb.ai ]
  %i.go = getelementptr inbounds nuw [4 x i8], ptr %i.gk, i64 %indvars.iv297
  %i.gp = load i32, ptr %i.go, align 4, !tbaa !65
  %i.gq = sext i32 %i.gp to i64
  %i.gr = getelementptr inbounds [4 x i8], ptr %i.gi, i64 %i.gq
  %i.gs = load i32, ptr %i.gr, align 4, !tbaa !65
  %i.gt = getelementptr inbounds nuw [4 x i8], ptr %i.gm, i64 %indvars.iv297
  %i.gu = load i32, ptr %i.gt, align 4, !tbaa !65
  %i.gv = sext i32 %i.gu to i64
  %i.gw = getelementptr inbounds [4 x i8], ptr %i.gf, i64 %i.gv
  store i32 %i.gs, ptr %i.gw, align 4, !tbaa !65
  %indvars.iv.next298 = or disjoint i64 %indvars.iv297, 1 ; 2 uses
  %i.gx = getelementptr inbounds nuw [4 x i8], ptr %i.gk, i64 %indvars.iv.next298
  %i.gy = load i32, ptr %i.gx, align 4, !tbaa !65
  %i.gz = sext i32 %i.gy to i64
  %i.ha = getelementptr inbounds [4 x i8], ptr %i.gi, i64 %i.gz
  %i.hb = load i32, ptr %i.ha, align 4, !tbaa !65
  %i.hc = getelementptr inbounds nuw [4 x i8], ptr %i.gm, i64 %indvars.iv.next298
  %i.hd = load i32, ptr %i.hc, align 4, !tbaa !65
  %i.he = sext i32 %i.hd to i64
  %i.hf = getelementptr inbounds [4 x i8], ptr %i.gf, i64 %i.he
  store i32 %i.hb, ptr %i.hf, align 4, !tbaa !65
  %indvars.iv.next298.1 = or disjoint i64 %indvars.iv297, 2 ; 2 uses
  %i.hg = getelementptr inbounds nuw [4 x i8], ptr %i.gk, i64 %indvars.iv.next298.1
  %i.hh = load i32, ptr %i.hg, align 4, !tbaa !65
  %i.hi = sext i32 %i.hh to i64
  %i.hj = getelementptr inbounds [4 x i8], ptr %i.gi, i64 %i.hi
  %i.hk = load i32, ptr %i.hj, align 4, !tbaa !65
  %i.hl = getelementptr inbounds nuw [4 x i8], ptr %i.gm, i64 %indvars.iv.next298.1
  %i.hm = load i32, ptr %i.hl, align 4, !tbaa !65
  %i.hn = sext i32 %i.hm to i64
  %i.ho = getelementptr inbounds [4 x i8], ptr %i.gf, i64 %i.hn
  store i32 %i.hk, ptr %i.ho, align 4, !tbaa !65
  %indvars.iv.next298.2 = or disjoint i64 %indvars.iv297, 3 ; 2 uses
  %i.hp = getelementptr inbounds nuw [4 x i8], ptr %i.gk, i64 %indvars.iv.next298.2
  %i.hq = load i32, ptr %i.hp, align 4, !tbaa !65
  %i.hr = sext i32 %i.hq to i64
  %i.hs = getelementptr inbounds [4 x i8], ptr %i.gi, i64 %i.hr
  %i.ht = load i32, ptr %i.hs, align 4, !tbaa !65
  %i.hu = getelementptr inbounds nuw [4 x i8], ptr %i.gm, i64 %indvars.iv.next298.2
  %i.hv = load i32, ptr %i.hu, align 4, !tbaa !65
  %i.hw = sext i32 %i.hv to i64
  %i.hx = getelementptr inbounds [4 x i8], ptr %i.gf, i64 %i.hw
  store i32 %i.ht, ptr %i.hx, align 4, !tbaa !65
  %indvars.iv.next298.3 = add nuw nsw i64 %indvars.iv297, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.loopexit234.loopexit.unr-lcssa, label %bb.ai, !llvm.loop !41

.loopexit234.loopexit.unr-lcssa:                  ; preds = %bb.ai
  %lcmp.mod338.not = icmp eq i64 %xtraiter337, 0
  br i1 %lcmp.mod338.not, label %.loopexit234, label %.epil.preheader

.epil.preheader:                                  ; preds = %.loopexit234.loopexit.unr-lcssa, %.lr.ph264
  %indvars.iv297.epil.init = phi i64 [ 0, %.lr.ph264 ], [ %indvars.iv.next298.3, %.loopexit234.loopexit.unr-lcssa ]
  %lcmp.mod339 = icmp ne i64 %xtraiter337, 0
  tail call void @llvm.assume(i1 %lcmp.mod339)
  br label %bb.aj

bb.aj:                                            ; preds = %bb.aj, %.epil.preheader
  %indvars.iv297.epil = phi i64 [ %indvars.iv297.epil.init, %.epil.preheader ], [ %indvars.iv.next298.epil, %bb.aj ] ; 3 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.aj ]
  %i.hy = getelementptr inbounds nuw [4 x i8], ptr %i.gk, i64 %indvars.iv297.epil
  %i.hz = load i32, ptr %i.hy, align 4, !tbaa !65
  %i.ia = sext i32 %i.hz to i64
  %i.ib = getelementptr inbounds [4 x i8], ptr %i.gi, i64 %i.ia
  %i.ic = load i32, ptr %i.ib, align 4, !tbaa !65
  %i.id = getelementptr inbounds nuw [4 x i8], ptr %i.gm, i64 %indvars.iv297.epil
  %i.ie = load i32, ptr %i.id, align 4, !tbaa !65
  %i.if = sext i32 %i.ie to i64
  %i.ig = getelementptr inbounds [4 x i8], ptr %i.gf, i64 %i.if
  store i32 %i.ic, ptr %i.ig, align 4, !tbaa !65
  %indvars.iv.next298.epil = add nuw nsw i64 %indvars.iv297.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter337
  br i1 %epil.iter.cmp.not, label %.loopexit234, label %bb.aj, !llvm.loop !42

.loopexit234:                                     ; preds = %.loopexit234.loopexit.unr-lcssa, %bb.aj, %.thread232, %._crit_edge262
  %.0 = phi ptr [ %i.ex, %._crit_edge262 ], [ %i.gf, %.thread232 ], [ %i.gf, %bb.aj ], [ %i.gf, %.loopexit234.loopexit.unr-lcssa ] ; 4 uses
  br i1 %i.cj, label %.lr.ph268.preheader, label %._crit_edge269.thread.a

.lr.ph268.preheader:                              ; preds = %.loopexit234
  %wide.trip.count305 = zext nneg i32 %4 to i64
  br label %.lr.ph268

.lr.ph268:                                        ; preds = %.lr.ph268.preheader, %bb.ao
  %indvars.iv302 = phi i64 [ 0, %.lr.ph268.preheader ], [ %indvars.iv.next303.a, %bb.ao ] ; 3 uses
  %.0195266 = phi i32 [ 1, %.lr.ph268.preheader ], [ %.1, %bb.ao ]
  %i.ih = load i32, ptr %i.cf, align 8, !tbaa !77
  %.not224 = icmp eq i32 %i.ih, 0
  %i.ii = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv302
  %i.ij = load ptr, ptr %i.ii, align 8, !tbaa !73 ; 2 uses
  br i1 %.not224, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %.lr.ph268
  %i.ik = tail call ptr @Cudd_addPermute(ptr noundef %1, ptr noundef %i.ij, ptr noundef %.0) #11
  br label %bb.am

bb.al:                                            ; preds = %.lr.ph268
  %i.il = tail call ptr @Cudd_bddPermute(ptr noundef %1, ptr noundef %i.ij, ptr noundef %.0) #11
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.ak
  %.0194 = phi ptr [ %i.ik, %bb.ak ], [ %i.il, %bb.al ] ; 3 uses
  tail call void @Cudd_Ref(ptr noundef %.0194) #11
  %i.im = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv302
  %i.in = load ptr, ptr %i.im, align 8, !tbaa !73
  %.not225 = icmp eq ptr %.0194, %i.in
  br i1 %.not225, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %bb.am
  %puts226 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.6) ; 0 uses
  %6 = load ptr, ptr @stdout, align 8, !tbaa !81
  %7 = tail call i32 @fflush(ptr noundef %6)      ; 0 uses
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.am
  %.1 = phi i32 [ 0, %bb.an ], [ %.0195266, %bb.am ] ; 2 uses
  tail call void @Cudd_RecursiveDeref(ptr noundef %1, ptr noundef %.0194) #11
  %indvars.iv.next303.a = add nuw nsw i64 %indvars.iv302, 1 ; 2 uses
  %exitcond306.not = icmp eq i64 %indvars.iv.next303.a, %wide.trip.count305
  br i1 %exitcond306.not, label %._crit_edge269, label %.lr.ph268, !llvm.loop !43

._crit_edge269:                                   ; preds = %bb.ao
  %8 = icmp eq i32 %.1, 0
  br i1 %8, label %bb.ap, label %._crit_edge269.thread.a

._crit_edge269.thread.a:                          ; preds = %.loopexit234, %._crit_edge269
  %puts222 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.5) ; 0 uses
  br label %bb.ap

bb.ap:                                            ; preds = %._crit_edge269.thread.a, %._crit_edge269
  %i.io = load ptr, ptr %i.b, align 8, !tbaa !46
  %i.ip = icmp eq ptr %i.io, null
  %i.iq = icmp ne ptr %.0, null
  %or.cond = and i1 %i.iq, %i.ip
  br i1 %or.cond, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %bb.ap
  tail call void @free(ptr noundef nonnull %.0) #11
  br label %bb.ar

bb.ar:                                            ; preds = %.thread230, %bb.ap, %bb.aq, %._crit_edge262
  %i.ir = load i32, ptr %i.m, align 4, !tbaa !64
  %.not223270 = icmp slt i32 %i.ir, 0
  br i1 %.not223270, label %.loopexit, label %.lr.ph273

.lr.ph273:                                        ; preds = %bb.ar
  %i.is = getelementptr inbounds nuw i8, ptr %0, i64 168
  br label %bb.as

bb.as:                                            ; preds = %.lr.ph273, %bb.as
  %indvars.iv307 = phi i64 [ 0, %.lr.ph273 ], [ %indvars.iv.next308, %bb.as ] ; 3 uses
  %i.it = load ptr, ptr %i.is, align 8, !tbaa !27
  %i.iu = getelementptr inbounds nuw [56 x i8], ptr %i.it, i64 %indvars.iv307
  tail call void @reoUnitsRecycleUnitList(ptr noundef nonnull %0, ptr noundef %i.iu) #11
  %indvars.iv.next308 = add nuw nsw i64 %indvars.iv307, 1
  %i.iv = load i32, ptr %i.m, align 4, !tbaa !64
  %i.iw = sext i32 %i.iv to i64
  %.not223.not = icmp slt i64 %indvars.iv307, %i.iw
  br i1 %.not223.not, label %bb.as, label %.loopexit, !llvm.loop !44

.loopexit:                                        ; preds = %bb.as, %.lr.ph275, %bb.ar, %.preheader
  ret void
}

declare i32 @Cudd_SharingSize(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable
define void @reoResizeStructures(ptr nofree noundef captures(none) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !97   ; 2 uses
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = add nsw i32 %1, 1                        ; 2 uses
  %i.e = sext i32 %i.d to i64                     ; 3 uses
  %i.f = shl nsw i64 %i.e, 2                      ; 6 uses
  %i.g = tail call noalias ptr @malloc(i64 noundef %i.f) #12
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %i.g, ptr %i.h, align 8, !tbaa !20
  %i.i = tail call noalias ptr @malloc(i64 noundef %i.f) #12
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %i.i, ptr %i.j, align 8, !tbaa !24
  %i.k = tail call noalias ptr @malloc(i64 noundef %i.f) #12
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 144
  store ptr %i.k, ptr %i.l, align 8, !tbaa !21
  %i.m = tail call noalias ptr @malloc(i64 noundef %i.f) #12
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 152
  store ptr %i.m, ptr %i.n, align 8, !tbaa !22
  %i.o = tail call noalias ptr @malloc(i64 noundef %i.f) #12
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 160
  store ptr %i.o, ptr %i.p, align 8, !tbaa !23
  %i.q = tail call noalias ptr @calloc(i64 noundef %i.e, i64 noundef 56) #13
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 168
  store ptr %i.q, ptr %i.r, align 8, !tbaa !27
  %i.s = shl nsw i64 %i.e, 3
  %i.t = tail call noalias ptr @malloc(i64 noundef %i.s) #12
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 72
  store ptr %i.t, ptr %i.u, align 8, !tbaa !98
  %i.v = tail call noalias ptr @malloc(i64 noundef %i.f) #12
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 80
  store ptr %i.v, ptr %i.w, align 8, !tbaa !99
  br label %.sink.split

bb.c:                                             ; preds = %bb.a
  %i.x = icmp slt i32 %i.b, %1
  br i1 %i.x, label %bb.d, label %bb.u

bb.d:                                             ; preds = %bb.c
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !20   ; 2 uses
  %.not = icmp eq ptr %i.z, null
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @free(ptr noundef nonnull %i.z) #11
  store ptr null, ptr %i.y, align 8, !tbaa !20
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !24 ; 2 uses
  %.not145 = icmp eq ptr %i.ab, null
  br i1 %.not145, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @free(ptr noundef nonnull %i.ab) #11
  store ptr null, ptr %i.aa, align 8, !tbaa !24
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 3 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !21 ; 2 uses
  %.not146 = icmp eq ptr %i.ad, null
  br i1 %.not146, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void @free(ptr noundef nonnull %i.ad) #11
  store ptr null, ptr %i.ac, align 8, !tbaa !21
  br label %bb.j

bb.j:                                             ; preds = %bb.h, %bb.i
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 3 uses
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !22 ; 2 uses
  %.not147 = icmp eq ptr %i.af, null
  br i1 %.not147, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  tail call void @free(ptr noundef nonnull %i.af) #11
  store ptr null, ptr %i.ae, align 8, !tbaa !22
  br label %bb.l

bb.l:                                             ; preds = %bb.j, %bb.k
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 3 uses
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !23 ; 2 uses
  %.not148 = icmp eq ptr %i.ah, null
  br i1 %.not148, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  tail call void @free(ptr noundef nonnull %i.ah) #11
  store ptr null, ptr %i.ag, align 8, !tbaa !23
  br label %bb.n

bb.n:                                             ; preds = %bb.l, %bb.m
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 3 uses
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !27 ; 2 uses
  %.not149 = icmp eq ptr %i.aj, null
  br i1 %.not149, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  tail call void @free(ptr noundef nonnull %i.aj) #11
  store ptr null, ptr %i.ai, align 8, !tbaa !27
  br label %bb.p

bb.p:                                             ; preds = %bb.n, %bb.o
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !98 ; 2 uses
  %.not150 = icmp eq ptr %i.al, null
  br i1 %.not150, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  tail call void @free(ptr noundef nonnull %i.al) #11
  store ptr null, ptr %i.ak, align 8, !tbaa !98
  br label %bb.r

bb.r:                                             ; preds = %bb.p, %bb.q
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !99 ; 2 uses
  %.not151 = icmp eq ptr %i.an, null
  br i1 %.not151, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  tail call void @free(ptr noundef nonnull %i.an) #11
  br label %bb.t

bb.t:                                             ; preds = %bb.r, %bb.s
  %i.ao = add nsw i32 %1, 1                       ; 2 uses
  %i.ap = sext i32 %i.ao to i64                   ; 3 uses
  %i.aq = shl nsw i64 %i.ap, 2                    ; 6 uses
  %i.ar = tail call noalias ptr @malloc(i64 noundef %i.aq) #12
  store ptr %i.ar, ptr %i.y, align 8, !tbaa !20
  %i.as = tail call noalias ptr @malloc(i64 noundef %i.aq) #12
  store ptr %i.as, ptr %i.aa, align 8, !tbaa !24
  %i.at = tail call noalias ptr @malloc(i64 noundef %i.aq) #12
  store ptr %i.at, ptr %i.ac, align 8, !tbaa !21
  %i.au = tail call noalias ptr @malloc(i64 noundef %i.aq) #12
  store ptr %i.au, ptr %i.ae, align 8, !tbaa !22
  %i.av = tail call noalias ptr @malloc(i64 noundef %i.aq) #12
  store ptr %i.av, ptr %i.ag, align 8, !tbaa !23
  %i.aw = tail call noalias ptr @calloc(i64 noundef %i.ap, i64 noundef 56) #13
  store ptr %i.aw, ptr %i.ai, align 8, !tbaa !27
  %i.ax = shl nsw i64 %i.ap, 3
  %i.ay = tail call noalias ptr @malloc(i64 noundef %i.ax) #12
  store ptr %i.ay, ptr %i.ak, align 8, !tbaa !98
  %i.az = tail call noalias ptr @malloc(i64 noundef %i.aq) #12
  store ptr %i.az, ptr %i.am, align 8, !tbaa !99
  br label %.sink.split

.sink.split:                                      ; preds = %bb.b, %bb.t
  %.sink = phi i32 [ %i.ao, %bb.t ], [ %i.d, %bb.b ]
  store i32 %.sink, ptr %i.a, align 8, !tbaa !97
  br label %bb.u

bb.u:                                             ; preds = %.sink.split, %bb.c
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 236 ; 4 uses
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !100
  %i.bc = icmp eq i32 %i.bb, 0
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 3 uses
  br i1 %i.bc, label %bb.v, label %bb.w
end_hunk_0
