Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/xtc2?download=true
inline.NumInlined: 79
inline.NumDeleted: 13
loop-unroll.NumCompletelyUnrolled: 33
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 37
begin_hunk_0_@Ptngc_pack_array_xtc2:bb.a
  %i.ed = shl nuw i32 %i.dx, 1
  %i.ee = add i32 %i.ed, -1
  br label %positive_int.exit.1

positive_int.exit.1:                              ; preds = %bb.j, %bb.i, %bb.h
  %.0.i466.1 = phi i32 [ %i.ee, %bb.j ], [ %i.ec, %bb.i ], [ 0, %bb.h ] ; 3 uses
  %i.ef = icmp sgt i32 %.0.i466.1, %.1396.fr
  %i.eg = icmp slt i32 %.0.i466.1, %i.dg
  %or.cond431.1 = select i1 %i.ef, i1 %i.eg, i1 false
  %.1396.1 = select i1 %or.cond431.1, i32 %.0.i466.1, i32 %.1396.fr
  %.1396.fr.1 = freeze i32 %.1396.1               ; 3 uses
  %indvars.iv.next742.1 = add nuw nsw i64 %indvars.iv741, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge657.unr-lcssa, label %.lr.ph, !llvm.loop !23

._crit_edge657.unr-lcssa:                         ; preds = %positive_int.exit.1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge657, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge657.unr-lcssa, %.lr.ph.preheader
  %indvars.iv741.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next742.1, %._crit_edge657.unr-lcssa ]
  %.0395655.epil.init = phi i32 [ 0, %.lr.ph.preheader ], [ %.1396.fr.1, %._crit_edge657.unr-lcssa ] ; 2 uses
  %lcmp.mod1352 = trunc i32 %i.dh to i1
  tail call void @llvm.assume(i1 %lcmp.mod1352)
  %i.eh = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv741.epil.init
  %i.ei = load i32, ptr %i.eh, align 4, !tbaa !12 ; 4 uses
  %i.ej = icmp sgt i32 %i.ei, 0
  br i1 %i.ej, label %bb.m, label %bb.k

bb.k:                                             ; preds = %.lr.ph.epil.preheader
  %i.ek = icmp slt i32 %i.ei, 0
  br i1 %i.ek, label %bb.l, label %positive_int.exit.epil

bb.l:                                             ; preds = %bb.k
  %i.el = xor i32 %i.ei, -1
  %i.em = shl nuw nsw i32 %i.el, 1
  %i.en = add nuw nsw i32 %i.em, 2
  br label %positive_int.exit.epil

bb.m:                                             ; preds = %.lr.ph.epil.preheader
  %i.eo = shl nuw i32 %i.ei, 1
  %i.ep = add i32 %i.eo, -1
  br label %positive_int.exit.epil

positive_int.exit.epil:                           ; preds = %bb.m, %bb.l, %bb.k
  %.0.i466.epil = phi i32 [ %i.ep, %bb.m ], [ %i.en, %bb.l ], [ 0, %bb.k ] ; 3 uses
  %i.eq = icmp sgt i32 %.0.i466.epil, %.0395655.epil.init
  %i.er = icmp slt i32 %.0.i466.epil, %i.dg
  %or.cond431.epil = select i1 %i.eq, i1 %i.er, i1 false
  %.1396.epil = select i1 %or.cond431.epil, i32 %.0.i466.epil, i32 %.0395655.epil.init
  %.1396.fr.epil = freeze i32 %.1396.epil
  br label %._crit_edge657

._crit_edge657:                                   ; preds = %._crit_edge657.unr-lcssa, %positive_int.exit.epil
  %.1396.fr.lcssa = phi i32 [ %.1396.fr.1, %._crit_edge657.unr-lcssa ], [ %.1396.fr.epil, %positive_int.exit.epil ] ; 3 uses
  %i.es = icmp ugt i32 %.1396.fr.lcssa, 512
  %i.et = icmp ugt i32 %.1396.fr.lcssa, 104031
  %.962 = select i1 %i.et, i64 47, i64 24
  %spec.select964 = select i1 %i.es, i64 %.962, i64 0
  br label %.thread900

.thread900:                                       ; preds = %._crit_edge657, %Ptngc_find_magic_index.exit465
  %.0395.lcssa899903 = phi i32 [ %.1396.fr.lcssa, %._crit_edge657 ], [ 0, %Ptngc_find_magic_index.exit465 ]
  %i.eu = phi i64 [ %spec.select964, %._crit_edge657 ], [ 0, %Ptngc_find_magic_index.exit465 ]
  br label %bb.n

bb.n:                                             ; preds = %bb.n, %.thread900
  %indvars.iv.i469 = phi i64 [ %indvars.iv.next.i471, %bb.n ], [ %i.eu, %.thread900 ] ; 3 uses
  %i.ev = getelementptr inbounds nuw [4 x i8], ptr @magic, i64 %indvars.iv.i469
  %i.ew = load i32, ptr %i.ev, align 4, !tbaa !12
  %.not.i470 = icmp ugt i32 %i.ew, %.0395.lcssa899903
  %indvars.iv.next.i471 = add nuw nsw i64 %indvars.iv.i469, 1
  br i1 %.not.i470, label %Ptngc_find_magic_index.exit472, label %bb.n, !llvm.loop !0

Ptngc_find_magic_index.exit472:                   ; preds = %bb.n
  %i.ex = trunc nuw nsw i64 %indvars.iv.i469 to i32 ; 2 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 7 uses
  store i32 32, ptr %i.ey, align 4, !tbaa !48
  %i.ez = icmp sgt i32 %.sroa.0824.1, 0
  br i1 %i.ez, label %bb.o, label %bb.p

bb.o:                                             ; preds = %Ptngc_find_magic_index.exit472
  %i.fa = shl nuw i32 %.sroa.0824.1, 1
  %i.fb = add i32 %i.fa, -1
  br label %positive_int.exit474

bb.p:                                             ; preds = %Ptngc_find_magic_index.exit472
  %i.fc = icmp slt i32 %.sroa.0824.1, 0
  br i1 %i.fc, label %bb.q, label %positive_int.exit474

bb.q:                                             ; preds = %bb.p
  %i.fd = xor i32 %.sroa.0824.1, -1
  %i.fe = shl nuw nsw i32 %i.fd, 1
  %i.ff = add nuw nsw i32 %i.fe, 2
  br label %positive_int.exit474

positive_int.exit474:                             ; preds = %bb.o, %bb.p, %bb.q
  %.0.i473 = phi i32 [ %i.fb, %bb.o ], [ %i.ff, %bb.q ], [ 0, %bb.p ]
  store i32 %.0.i473, ptr %0, align 4, !tbaa !49
  call void @Ptngc_out8bits(ptr noundef nonnull %0, ptr noundef nonnull %i.e) #11
  store i32 32, ptr %i.ey, align 4, !tbaa !48
  %i.fg = icmp sgt i32 %.sroa.12.1, 0
  br i1 %i.fg, label %bb.r, label %bb.s

bb.r:                                             ; preds = %positive_int.exit474
  %i.fh = shl nuw i32 %.sroa.12.1, 1
  %i.fi = add i32 %i.fh, -1
  br label %positive_int.exit476

bb.s:                                             ; preds = %positive_int.exit474
  %i.fj = icmp slt i32 %.sroa.12.1, 0
  br i1 %i.fj, label %bb.t, label %positive_int.exit476

bb.t:                                             ; preds = %bb.s
  %i.fk = xor i32 %.sroa.12.1, -1
  %i.fl = shl nuw nsw i32 %i.fk, 1
  %i.fm = add nuw nsw i32 %i.fl, 2
  br label %positive_int.exit476

positive_int.exit476:                             ; preds = %bb.r, %bb.s, %bb.t
  %.0.i475 = phi i32 [ %i.fi, %bb.r ], [ %i.fm, %bb.t ], [ 0, %bb.s ]
  store i32 %.0.i475, ptr %0, align 4, !tbaa !49
  call void @Ptngc_out8bits(ptr noundef nonnull %0, ptr noundef nonnull %i.e) #11
  store i32 32, ptr %i.ey, align 4, !tbaa !48
  %i.fn = icmp sgt i32 %.sroa.22.1, 0
  br i1 %i.fn, label %bb.u, label %bb.v

bb.u:                                             ; preds = %positive_int.exit476
  %i.fo = shl nuw i32 %.sroa.22.1, 1
  %i.fp = add i32 %i.fo, -1
  br label %positive_int.exit478

bb.v:                                             ; preds = %positive_int.exit476
  %i.fq = icmp slt i32 %.sroa.22.1, 0
  br i1 %i.fq, label %bb.w, label %positive_int.exit478

bb.w:                                             ; preds = %bb.v
  %i.fr = xor i32 %.sroa.22.1, -1
  %i.fs = shl nuw nsw i32 %i.fr, 1
  %i.ft = add nuw nsw i32 %i.fs, 2
  br label %positive_int.exit478

positive_int.exit478:                             ; preds = %bb.u, %bb.v, %bb.w
  %.0.i477 = phi i32 [ %i.fp, %bb.u ], [ %i.ft, %bb.w ], [ 0, %bb.v ]
  store i32 %.0.i477, ptr %0, align 4, !tbaa !49
  call void @Ptngc_out8bits(ptr noundef nonnull %0, ptr noundef nonnull %i.e) #11
  store i32 8, ptr %i.ey, align 4, !tbaa !48
  store i32 %i.cj, ptr %0, align 4, !tbaa !49
  call void @Ptngc_out8bits(ptr noundef nonnull %0, ptr noundef nonnull %i.e) #11
  store i32 8, ptr %i.ey, align 4, !tbaa !48
  store i32 %i.cr, ptr %0, align 4, !tbaa !49
  call void @Ptngc_out8bits(ptr noundef nonnull %0, ptr noundef nonnull %i.e) #11
  store i32 8, ptr %i.ey, align 4, !tbaa !48
  store i32 %i.da, ptr %0, align 4, !tbaa !49
  call void @Ptngc_out8bits(ptr noundef nonnull %0, ptr noundef nonnull %i.e) #11
  store i32 8, ptr %i.ey, align 4, !tbaa !48
  store i32 %i.ex, ptr %0, align 4, !tbaa !49
  call void @Ptngc_out8bits(ptr noundef nonnull %0, ptr noundef nonnull %i.e) #11
  %.off = add i32 %i.l, 2
  %.not713 = icmp ult i32 %.off, 5
  br i1 %.not713, label %._crit_edge723.thread, label %.lr.ph722

.lr.ph722:                                        ; preds = %positive_int.exit478
  %i.fu = getelementptr inbounds nuw i8, ptr %i.j, i64 4 ; 3 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 3 uses
  %i.fw = getelementptr inbounds nuw i8, ptr %i.j, i64 12 ; 4 uses
  %i.fx = getelementptr inbounds nuw i8, ptr %i.j, i64 16 ; 2 uses
  %i.fy = getelementptr inbounds nuw i8, ptr %i.j, i64 20 ; 2 uses
  %i.fz = getelementptr inbounds nuw i8, ptr %i.j, i64 24 ; 3 uses
  %i.ga = getelementptr inbounds nuw i8, ptr %i.j, i64 28 ; 2 uses
  %i.gb = getelementptr inbounds nuw i8, ptr %i.j, i64 32 ; 2 uses
  %i.gc = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  %i.gd = getelementptr inbounds nuw i8, ptr %i.g, i64 4
  %i.ge = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.gf = getelementptr inbounds nuw i8, ptr %i.c, i64 72
  %i.gg = insertelement <2 x i32> poison, i32 %.sroa.0824.1, i64 0
  %i.gh = insertelement <2 x i32> %i.gg, i32 %.sroa.12.1, i64 1 ; 2 uses
  %i.gi = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.gj = getelementptr inbounds nuw i8, ptr %i.j, i64 12
  %i.gk = getelementptr inbounds nuw i8, ptr %i.j, i64 20
  %i.gl = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.gm = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  %i.gn = getelementptr inbounds nuw i8, ptr %i.j, i64 36
  %i.go = getelementptr inbounds nuw i8, ptr %i.j, i64 44
  %i.gp = getelementptr inbounds nuw i8, ptr %i.j, i64 48
  %i.gq = getelementptr inbounds nuw i8, ptr %i.j, i64 56
  %i.gr = getelementptr inbounds nuw i8, ptr %i.j, i64 60
  %i.gs = getelementptr inbounds nuw i8, ptr %i.j, i64 68
  %i.gt = getelementptr inbounds nuw i8, ptr %i.j, i64 72
  %i.gu = getelementptr inbounds nuw i8, ptr %i.j, i64 80
  br label %bb.x

bb.x:                                             ; preds = %.lr.ph722, %bb.dc
  %.sroa.14.0 = phi i32 [ %.sroa.22.1, %.lr.ph722 ], [ %.sroa.14.3, %bb.dc ] ; 4 uses
  %.0366721 = phi i32 [ 0, %.lr.ph722 ], [ %.3369, %bb.dc ] ; 3 uses
  %.0370720 = phi i32 [ %i.m, %.lr.ph722 ], [ %.4374, %bb.dc ] ; 8 uses
  %.0375719 = phi ptr [ %1, %.lr.ph722 ], [ %.4379, %bb.dc ] ; 36 uses
  %.0382717 = phi i32 [ 0, %.lr.ph722 ], [ %.4386, %bb.dc ] ; 10 uses
  %.0387715 = phi i32 [ %i.ex, %.lr.ph722 ], [ %.5392, %bb.dc ] ; 12 uses
  %.0714 = phi i32 [ 0, %.lr.ph722 ], [ %.3, %bb.dc ] ; 15 uses
  %i.gv = phi <2 x i32> [ %i.cc, %.lr.ph722 ], [ %i.akn, %bb.dc ] ; 4 uses
  %i.gw = icmp slt i32 %.0370720, 0
  br i1 %i.gw, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.gx = load ptr, ptr @stderr, align 8, !tbaa !18
  %i.gy = call i64 @fwrite(ptr nonnull @.str.1, i64 31, i64 1, ptr %i.gx) #12 ; 0 uses
  call void @exit(i32 noundef 1) #13
  unreachable

bb.z:                                             ; preds = %bb.x
  %i.gz = icmp samesign ult i32 %.0370720, 3
  br i1 %i.gz, label %.preheader635, label %.lr.ph.i

.preheader635:                                    ; preds = %bb.z
  %.promoted706 = load i32, ptr %i.h, align 4     ; 3 uses
  %.not727 = icmp eq i32 %.0370720, 0
  br i1 %.not727, label %._crit_edge710, label %.preheader

.preheader:                                       ; preds = %.preheader635
  %i.ha = load i32, ptr %.0375719, align 4, !tbaa !12
  %i.hb = sub nsw i32 %i.ha, %.sroa.0824.1        ; 2 uses
  store i32 %i.hb, ptr %i.j, align 16, !tbaa !12
  %i.hc = getelementptr inbounds nuw i8, ptr %.0375719, i64 4
  %i.hd = load i32, ptr %i.hc, align 4, !tbaa !12
  %i.he = sub nsw i32 %i.hd, %.sroa.12.1          ; 2 uses
  store i32 %i.he, ptr %i.fu, align 4, !tbaa !12
  %i.hf = getelementptr inbounds nuw i8, ptr %.0375719, i64 8
  %i.hg = load i32, ptr %i.hf, align 4, !tbaa !12
  %i.hh = sub nsw i32 %i.hg, %.sroa.22.1          ; 2 uses
  store i32 %i.hh, ptr %i.fv, align 8, !tbaa !12
  %i.hi = icmp eq i32 %.promoted706, 18
  br i1 %i.hi, label %bb.aa, label %._crit_edge710.loopexit

bb.aa:                                            ; preds = %.preheader
  call void @Ptngc_writebits(ptr noundef nonnull %0, i32 noundef 15, i32 noundef 5, ptr noundef nonnull %i.e) #11
  call void @Ptngc_writebits(ptr noundef nonnull %0, i32 noundef 15, i32 noundef 4, ptr noundef nonnull %i.e) #11
  br label %bb.ab

bb.ab:                                            ; preds = %.preheader.i584.preheader, %bb.aa
  %indvars.iv.i559 = phi i64 [ 0, %bb.aa ], [ %indvars.iv.next.i561, %.preheader.i584.preheader ] ; 2 uses
  %.idx.i560 = mul nuw nsw i64 %indvars.iv.i559, 12
  %i.hj = getelementptr inbounds nuw i8, ptr %i.i, i64 %.idx.i560 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #11
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(76) %i.c, i8 0, i64 76, i1 false)
  %i.hk = load i32, ptr %i.hj, align 4, !tbaa !12
  call void @Ptngc_largeint_add(i32 noundef %i.hk, ptr noundef nonnull %i.c, i32 noundef 19) #11
  %i.hl = load i32, ptr %i.cq, align 4, !tbaa !12
  call void @Ptngc_largeint_mul(i32 noundef %i.hl, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d, i32 noundef 19) #11
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(76) %i.c, ptr noundef nonnull align 16 dereferenceable(76) %i.d, i64 76, i1 false)
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hj, i64 4
  %i.hn = load i32, ptr %i.hm, align 4, !tbaa !12
  call void @Ptngc_largeint_add(i32 noundef %i.hn, ptr noundef nonnull %i.c, i32 noundef 19) #11
  %i.ho = load i32, ptr %i.cz, align 4, !tbaa !12
  call void @Ptngc_largeint_mul(i32 noundef %i.ho, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d, i32 noundef 19) #11
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(76) %i.c, ptr noundef nonnull align 16 dereferenceable(76) %i.d, i64 76, i1 false)
  %i.hp = getelementptr inbounds nuw i8, ptr %i.hj, i64 8
  %i.hq = load i32, ptr %i.hp, align 4, !tbaa !12
  call void @Ptngc_largeint_add(i32 noundef %i.hq, ptr noundef nonnull %i.c, i32 noundef 19) #11
  %i.hr = load i32, ptr %i.gf, align 8, !tbaa !12
  %.not.i583 = icmp eq i32 %i.hr, 0
  br i1 %.not.i583, label %.preheader.i584.preheader, label %bb.ac

.preheader.i584.preheader:                        ; preds = %bb.ab
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(72) %i.k, ptr noundef nonnull align 16 dereferenceable(72) %i.c, i64 72, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #11
  call void @Ptngc_writemanybits(ptr noundef nonnull %0, ptr noundef nonnull %i.k, i32 noundef %i.dc, ptr noundef nonnull %i.e) #11
  %indvars.iv.next.i561 = add nuw nsw i64 %indvars.iv.i559, 1 ; 2 uses
  %exitcond.not.i562 = icmp eq i64 %indvars.iv.next.i561, 18
  br i1 %exitcond.not.i562, label %._crit_edge710.loopexit, label %bb.ab, !llvm.loop !1

bb.ac:                                            ; preds = %bb.ab
  %i.hs = load ptr, ptr @stderr, align 8, !tbaa !18
  %i.ht = call i64 @fwrite(ptr nonnull @.str.3, i64 47, i64 1, ptr %i.hs) #12 ; 0 uses
  call void @exit(i32 noundef 1) #13
  unreachable

._crit_edge710.loopexit:                          ; preds = %.preheader.i584.preheader, %.preheader
  %i.hu = phi i32 [ %.promoted706, %.preheader ], [ 0, %.preheader.i584.preheader ] ; 2 uses
  %i.hv = mul nsw i32 %i.hu, 3
  %i.hw = sext i32 %i.hv to i64
  %i.hx = getelementptr [4 x i8], ptr %i.i, i64 %i.hw ; 3 uses
  store i32 %i.hb, ptr %i.hx, align 4, !tbaa !12
  %i.hy = getelementptr i8, ptr %i.hx, i64 4
  store i32 %i.he, ptr %i.hy, align 4, !tbaa !12
  %i.hz = getelementptr i8, ptr %i.hx, i64 8
  store i32 %i.hh, ptr %i.hz, align 4, !tbaa !12
  %i.ia = add nsw i32 %i.hu, 1                    ; 2 uses
  store i32 %i.ia, ptr %i.h, align 4, !tbaa !12
  %i.ib = add nsw i32 %.0370720, -1
  %i.ic = getelementptr inbounds nuw i8, ptr %.0375719, i64 12
  br label %._crit_edge710

._crit_edge710:                                   ; preds = %._crit_edge710.loopexit, %.preheader635
  %i.id = phi i32 [ %.promoted706, %.preheader635 ], [ %i.ia, %._crit_edge710.loopexit ]
  %.1376.lcssa = phi ptr [ %.0375719, %.preheader635 ], [ %i.ic, %._crit_edge710.loopexit ]
  %.1371.lcssa = phi i32 [ 0, %.preheader635 ], [ %i.ib, %._crit_edge710.loopexit ]
  call fastcc void @flush_large(ptr noundef nonnull %0, ptr noundef %i.h, ptr noundef %i.i, i32 noundef %i.id, ptr noundef %i.f, i32 noundef %i.dc, ptr noundef %i.k, ptr noundef %i.e)
  br label %bb.dc

.lr.ph.i:                                         ; preds = %bb.z
  %i.ie = mul i32 %.0370720, 3                    ; 6 uses
  %i.if = add <2 x i32> %i.gv, %i.gh
  %i.ig = getelementptr inbounds nuw i8, ptr %.0375719, i64 8 ; 2 uses
  %i.ih = load i32, ptr %i.ig, align 4, !tbaa !12
  %i.ii = add i32 %.sroa.14.0, %.sroa.22.1
  %i.ij = sub i32 %i.ih, %i.ii
  %i.ik = load <2 x i32>, ptr %.0375719, align 4, !tbaa !12
  %i.il = sub <2 x i32> %i.ik, %i.if
  store <2 x i32> %i.il, ptr %i.j, align 16, !tbaa !12
  store i32 %i.ij, ptr %i.gi, align 8, !tbaa !12
  %i.im = icmp ugt i32 %i.ie, 3
  br i1 %i.im, label %bb.ad, label %insert_batch.exit

bb.ad:                                            ; preds = %.lr.ph.i
  %i.in = load i32, ptr %i.ig, align 4, !tbaa !12
  %i.io = load <2 x i32>, ptr %.0375719, align 4, !tbaa !12
  %i.ip = getelementptr inbounds nuw i8, ptr %.0375719, i64 12 ; 2 uses
  %i.iq = getelementptr inbounds nuw i8, ptr %.0375719, i64 20 ; 2 uses
  %i.ir = load i32, ptr %i.iq, align 4, !tbaa !12
  %i.is = sub i32 %i.ir, %i.in
  %i.it = load <2 x i32>, ptr %i.ip, align 4, !tbaa !12
  %i.iu = sub <2 x i32> %i.it, %i.io
  store <2 x i32> %i.iu, ptr %i.gj, align 4, !tbaa !12
  store i32 %i.is, ptr %i.gk, align 4, !tbaa !12
  %i.iv = icmp ugt i32 %i.ie, 6
  br i1 %i.iv, label %bb.ae, label %insert_batch.exit

bb.ae:                                            ; preds = %bb.ad
  %i.iw = load i32, ptr %i.iq, align 4, !tbaa !12
  %i.ix = load <2 x i32>, ptr %i.ip, align 4, !tbaa !12
  %i.iy = getelementptr inbounds nuw i8, ptr %.0375719, i64 24 ; 2 uses
  %i.iz = getelementptr inbounds nuw i8, ptr %.0375719, i64 32 ; 2 uses
  %i.ja = load i32, ptr %i.iz, align 4, !tbaa !12
  %i.jb = sub i32 %i.ja, %i.iw
  %i.jc = load <2 x i32>, ptr %i.iy, align 4, !tbaa !12
  %i.jd = sub <2 x i32> %i.jc, %i.ix
  store <2 x i32> %i.jd, ptr %i.gl, align 8, !tbaa !12
  store i32 %i.jb, ptr %i.gm, align 16, !tbaa !12
  %i.je = icmp ugt i32 %i.ie, 9
  br i1 %i.je, label %bb.af, label %insert_batch.exit

bb.af:                                            ; preds = %bb.ae
  %i.jf = load i32, ptr %i.iz, align 4, !tbaa !12
  %i.jg = load <2 x i32>, ptr %i.iy, align 4, !tbaa !12
  %i.jh = getelementptr inbounds nuw i8, ptr %.0375719, i64 36 ; 2 uses
  %i.ji = getelementptr inbounds nuw i8, ptr %.0375719, i64 44 ; 2 uses
  %i.jj = load i32, ptr %i.ji, align 4, !tbaa !12
  %i.jk = sub i32 %i.jj, %i.jf
  %i.jl = load <2 x i32>, ptr %i.jh, align 4, !tbaa !12
  %i.jm = sub <2 x i32> %i.jl, %i.jg
  store <2 x i32> %i.jm, ptr %i.gn, align 4, !tbaa !12
  store i32 %i.jk, ptr %i.go, align 4, !tbaa !12
  %i.jn = icmp ugt i32 %i.ie, 12
  br i1 %i.jn, label %bb.ag, label %insert_batch.exit

bb.ag:                                            ; preds = %bb.af
  %i.jo = load i32, ptr %i.ji, align 4, !tbaa !12
  %i.jp = load <2 x i32>, ptr %i.jh, align 4, !tbaa !12
  %i.jq = getelementptr inbounds nuw i8, ptr %.0375719, i64 48 ; 2 uses
  %i.jr = getelementptr inbounds nuw i8, ptr %.0375719, i64 56 ; 2 uses
  %i.js = load i32, ptr %i.jr, align 4, !tbaa !12
  %i.jt = sub i32 %i.js, %i.jo
  %i.ju = load <2 x i32>, ptr %i.jq, align 4, !tbaa !12
  %i.jv = sub <2 x i32> %i.ju, %i.jp
  store <2 x i32> %i.jv, ptr %i.gp, align 16, !tbaa !12
  store i32 %i.jt, ptr %i.gq, align 8, !tbaa !12
  %i.jw = icmp ugt i32 %i.ie, 15
  br i1 %i.jw, label %bb.ah, label %insert_batch.exit

bb.ah:                                            ; preds = %bb.ag
  %i.jx = load i32, ptr %i.jr, align 4, !tbaa !12
  %i.jy = load <2 x i32>, ptr %i.jq, align 4, !tbaa !12
  %i.jz = getelementptr inbounds nuw i8, ptr %.0375719, i64 60 ; 2 uses
  %i.ka = getelementptr inbounds nuw i8, ptr %.0375719, i64 68 ; 2 uses
  %i.kb = load i32, ptr %i.ka, align 4, !tbaa !12
  %i.kc = sub i32 %i.kb, %i.jx
  %i.kd = load <2 x i32>, ptr %i.jz, align 4, !tbaa !12
  %i.ke = sub <2 x i32> %i.kd, %i.jy
  store <2 x i32> %i.ke, ptr %i.gr, align 4, !tbaa !12
  store i32 %i.kc, ptr %i.gs, align 4, !tbaa !12
  %i.kf = icmp ugt i32 %i.ie, 18
  br i1 %i.kf, label %bb.ai, label %insert_batch.exit

bb.ai:                                            ; preds = %bb.ah
  %i.kg = load i32, ptr %i.ka, align 4, !tbaa !12
  %i.kh = load <2 x i32>, ptr %i.jz, align 4, !tbaa !12
  %i.ki = getelementptr inbounds nuw i8, ptr %.0375719, i64 72
  %i.kj = getelementptr inbounds nuw i8, ptr %.0375719, i64 80
  %i.kk = load i32, ptr %i.kj, align 4, !tbaa !12
  %i.kl = sub i32 %i.kk, %i.kg
  %i.km = load <2 x i32>, ptr %i.ki, align 4, !tbaa !12
  %i.kn = sub <2 x i32> %i.km, %i.kh
  store <2 x i32> %i.kn, ptr %i.gt, align 8, !tbaa !12
  store i32 %i.kl, ptr %i.gu, align 16, !tbaa !12
  br label %insert_batch.exit

insert_batch.exit:                                ; preds = %bb.ai, %bb.ah, %bb.ag, %bb.af, %bb.ae, %bb.ad, %.lr.ph.i
  %indvars.iv.next66.i.lcssa = phi i32 [ 3, %.lr.ph.i ], [ 6, %bb.ad ], [ 9, %bb.ae ], [ 12, %bb.af ], [ 15, %bb.ag ], [ 18, %bb.ah ], [ 21, %bb.ai ] ; 2 uses
  %3 = icmp eq ptr %.0375719, %1
  %.pre847 = add nsw i32 %.0387715, 3             ; 4 uses
  br i1 %3, label %is_quite_large.exit.thread, label %4

4:                                                ; preds = %insert_batch.exit
  %.not.i480 = icmp slt i32 %.pre847, %.1394
  br i1 %.not.i480, label %.preheader.i, label %.preheader642.preheader

.preheader.i:                                     ; preds = %4
  %i.ko = sext i32 %.pre847 to i64
  %i.kp = getelementptr inbounds [4 x i8], ptr @magic, i64 %i.ko ; 3 uses
  %i.kq = load i32, ptr %i.j, align 16, !tbaa !12 ; 4 uses
  %i.kr = icmp sgt i32 %i.kq, 0
  br i1 %i.kr, label %positive_int.exit.i, label %bb.aj

bb.aj:                                            ; preds = %.preheader.i
  %i.ks = icmp slt i32 %i.kq, 0
  br i1 %i.ks, label %bb.ak, label %positive_int.exit.thread.i

bb.ak:                                            ; preds = %bb.aj
  %i.kt = xor i32 %i.kq, -1
  br label %positive_int.exit.i

positive_int.exit.i:                              ; preds = %bb.ak, %.preheader.i
  %.sink18.i = phi i32 [ %i.kt, %bb.ak ], [ %i.kq, %.preheader.i ]
  %.sink17.i = phi i32 [ 2, %bb.ak ], [ -1, %.preheader.i ]
  %i.ku = shl nuw i32 %.sink18.i, 1
  %i.kv = add i32 %i.ku, %.sink17.i
  %i.kw = load i32, ptr %i.kp, align 4, !tbaa !12
  %i.kx = icmp ugt i32 %i.kv, %i.kw
  br i1 %i.kx, label %is_quite_large.exit.thread, label %positive_int.exit.thread.i

positive_int.exit.thread.i:                       ; preds = %positive_int.exit.i, %bb.aj
  %i.ky = load i32, ptr %i.fu, align 4, !tbaa !12 ; 4 uses
  %i.kz = icmp sgt i32 %i.ky, 0
  br i1 %i.kz, label %positive_int.exit.1.i, label %bb.al

bb.al:                                            ; preds = %positive_int.exit.thread.i
  %i.la = icmp slt i32 %i.ky, 0
  br i1 %i.la, label %bb.am, label %positive_int.exit.thread.1.i

bb.am:                                            ; preds = %bb.al
  %i.lb = xor i32 %i.ky, -1
  br label %positive_int.exit.1.i

positive_int.exit.1.i:                            ; preds = %bb.am, %positive_int.exit.thread.i
  %.sink20.i = phi i32 [ %i.lb, %bb.am ], [ %i.ky, %positive_int.exit.thread.i ]
  %.sink19.i = phi i32 [ 2, %bb.am ], [ -1, %positive_int.exit.thread.i ]
  %i.lc = shl nuw i32 %.sink20.i, 1
  %i.ld = add i32 %i.lc, %.sink19.i
  %i.le = load i32, ptr %i.kp, align 4, !tbaa !12
  %i.lf = icmp ugt i32 %i.ld, %i.le
  br i1 %i.lf, label %is_quite_large.exit.thread, label %positive_int.exit.thread.1.i

positive_int.exit.thread.1.i:                     ; preds = %positive_int.exit.1.i, %bb.al
  %i.lg = load i32, ptr %i.fv, align 8, !tbaa !12 ; 4 uses
  %i.lh = icmp sgt i32 %i.lg, 0
  br i1 %i.lh, label %positive_int.exit.2.i, label %bb.an

bb.an:                                            ; preds = %positive_int.exit.thread.1.i
  %i.li = icmp slt i32 %i.lg, 0
  br i1 %i.li, label %bb.ao, label %is_quite_large.exit

bb.ao:                                            ; preds = %bb.an
  %i.lj = xor i32 %i.lg, -1
  br label %positive_int.exit.2.i

positive_int.exit.2.i:                            ; preds = %bb.ao, %positive_int.exit.thread.1.i
  %.sink22.i = phi i32 [ %i.lj, %bb.ao ], [ %i.lg, %positive_int.exit.thread.1.i ]
  %.sink21.i = phi i32 [ 2, %bb.ao ], [ -1, %positive_int.exit.thread.1.i ]
  %i.lk = shl nuw i32 %.sink22.i, 1
  %i.ll = add i32 %i.lk, %.sink21.i
  %i.lm = load i32, ptr %i.kp, align 4, !tbaa !12
  %i.ln = icmp ugt i32 %i.ll, %i.lm
  %i.lo = icmp ne i32 %.0366721, 0
  %or.cond621 = select i1 %i.ln, i1 true, i1 %i.lo
  br i1 %or.cond621, label %is_quite_large.exit.thread, label %iter.check1258

is_quite_large.exit:                              ; preds = %bb.an
  %.old.not = icmp eq i32 %.0366721, 0
  br i1 %.old.not, label %iter.check1258, label %is_quite_large.exit.thread

is_quite_large.exit.thread:                       ; preds = %insert_batch.exit, %positive_int.exit.2.i, %positive_int.exit.1.i, %positive_int.exit.i, %is_quite_large.exit
  %.not.i481 = icmp slt i32 %.pre847, %.1394
  br i1 %.not.i481, label %.preheader.i483, label %.preheader642.preheader

.preheader.i483:                                  ; preds = %is_quite_large.exit.thread
  %i.lp = sext i32 %.pre847 to i64
  %i.lq = getelementptr inbounds [4 x i8], ptr @magic, i64 %i.lp ; 6 uses
  %i.lr = load i32, ptr %i.fw, align 4, !tbaa !12 ; 4 uses
  %i.ls = icmp sgt i32 %i.lr, 0
  br i1 %i.ls, label %positive_int.exit.i493, label %bb.ap

bb.ap:                                            ; preds = %.preheader.i483
  %i.lt = icmp slt i32 %i.lr, 0
  br i1 %i.lt, label %bb.aq, label %positive_int.exit.thread.i484

bb.aq:                                            ; preds = %bb.ap
  %i.lu = xor i32 %i.lr, -1
  br label %positive_int.exit.i493

positive_int.exit.i493:                           ; preds = %bb.aq, %.preheader.i483
  %.sink18.i494 = phi i32 [ %i.lu, %bb.aq ], [ %i.lr, %.preheader.i483 ]
  %.sink17.i495 = phi i32 [ 2, %bb.aq ], [ -1, %.preheader.i483 ]
  %i.lv = shl nuw i32 %.sink18.i494, 1
  %i.lw = add i32 %i.lv, %.sink17.i495
  %i.lx = load i32, ptr %i.lq, align 4, !tbaa !12
  %i.ly = icmp ugt i32 %i.lw, %i.lx
  br i1 %i.ly, label %.preheader642.preheader, label %positive_int.exit.thread.i484

positive_int.exit.thread.i484:                    ; preds = %positive_int.exit.i493, %bb.ap
  %i.lz = load i32, ptr %i.fx, align 16, !tbaa !12 ; 4 uses
  %i.ma = icmp sgt i32 %i.lz, 0
  br i1 %i.ma, label %positive_int.exit.1.i490, label %bb.ar

bb.ar:                                            ; preds = %positive_int.exit.thread.i484
  %i.mb = icmp slt i32 %i.lz, 0
  br i1 %i.mb, label %bb.as, label %positive_int.exit.thread.1.i485

bb.as:                                            ; preds = %bb.ar
  %i.mc = xor i32 %i.lz, -1
  br label %positive_int.exit.1.i490

positive_int.exit.1.i490:                         ; preds = %bb.as, %positive_int.exit.thread.i484
  %.sink20.i491 = phi i32 [ %i.mc, %bb.as ], [ %i.lz, %positive_int.exit.thread.i484 ]
  %.sink19.i492 = phi i32 [ 2, %bb.as ], [ -1, %positive_int.exit.thread.i484 ]
  %i.md = shl nuw i32 %.sink20.i491, 1
  %i.me = add i32 %i.md, %.sink19.i492
  %i.mf = load i32, ptr %i.lq, align 4, !tbaa !12
  %i.mg = icmp ugt i32 %i.me, %i.mf
  br i1 %i.mg, label %.preheader642.preheader, label %positive_int.exit.thread.1.i485

positive_int.exit.thread.1.i485:                  ; preds = %positive_int.exit.1.i490, %bb.ar
  %i.mh = load i32, ptr %i.fy, align 4, !tbaa !12 ; 4 uses
  %i.mi = icmp sgt i32 %i.mh, 0
  br i1 %i.mi, label %positive_int.exit.2.i487, label %bb.at

bb.at:                                            ; preds = %positive_int.exit.thread.1.i485
  %i.mj = icmp slt i32 %i.mh, 0
  br i1 %i.mj, label %bb.au, label %.preheader.i499

bb.au:                                            ; preds = %bb.at
  %i.mk = xor i32 %i.mh, -1
  br label %positive_int.exit.2.i487

positive_int.exit.2.i487:                         ; preds = %bb.au, %positive_int.exit.thread.1.i485
  %.sink22.i488 = phi i32 [ %i.mk, %bb.au ], [ %i.mh, %positive_int.exit.thread.1.i485 ]
  %.sink21.i489 = phi i32 [ 2, %bb.au ], [ -1, %positive_int.exit.thread.1.i485 ]
  %i.ml = shl nuw i32 %.sink22.i488, 1
  %i.mm = add i32 %i.ml, %.sink21.i489
  %i.mn = load i32, ptr %i.lq, align 4, !tbaa !12
  %i.mo = icmp ugt i32 %i.mm, %i.mn
  br i1 %i.mo, label %.preheader642.preheader, label %.preheader.i499

.preheader.i499:                                  ; preds = %bb.at, %positive_int.exit.2.i487
  %i.mp = load i32, ptr %i.fz, align 8, !tbaa !12 ; 4 uses
  %i.mq = icmp sgt i32 %i.mp, 0
  br i1 %i.mq, label %positive_int.exit.i509, label %bb.av

bb.av:                                            ; preds = %.preheader.i499
  %i.mr = icmp slt i32 %i.mp, 0
  br i1 %i.mr, label %bb.aw, label %positive_int.exit.thread.i500

bb.aw:                                            ; preds = %bb.av
  %i.ms = xor i32 %i.mp, -1
  br label %positive_int.exit.i509

positive_int.exit.i509:                           ; preds = %bb.aw, %.preheader.i499
  %.sink18.i510 = phi i32 [ %i.ms, %bb.aw ], [ %i.mp, %.preheader.i499 ]
  %.sink17.i511 = phi i32 [ 2, %bb.aw ], [ -1, %.preheader.i499 ]
  %i.mt = shl nuw i32 %.sink18.i510, 1
  %i.mu = add i32 %i.mt, %.sink17.i511
  %i.mv = load i32, ptr %i.lq, align 4, !tbaa !12
  %i.mw = icmp ugt i32 %i.mu, %i.mv
  br i1 %i.mw, label %.preheader642.preheader, label %positive_int.exit.thread.i500

positive_int.exit.thread.i500:                    ; preds = %positive_int.exit.i509, %bb.av
  %i.mx = load i32, ptr %i.ga, align 4, !tbaa !12 ; 4 uses
  %i.my = icmp sgt i32 %i.mx, 0
  br i1 %i.my, label %positive_int.exit.1.i506, label %bb.ax

bb.ax:                                            ; preds = %positive_int.exit.thread.i500
  %i.mz = icmp slt i32 %i.mx, 0
  br i1 %i.mz, label %bb.ay, label %positive_int.exit.thread.1.i501

bb.ay:                                            ; preds = %bb.ax
  %i.na = xor i32 %i.mx, -1
  br label %positive_int.exit.1.i506

positive_int.exit.1.i506:                         ; preds = %bb.ay, %positive_int.exit.thread.i500
  %.sink20.i507 = phi i32 [ %i.na, %bb.ay ], [ %i.mx, %positive_int.exit.thread.i500 ]
  %.sink19.i508 = phi i32 [ 2, %bb.ay ], [ -1, %positive_int.exit.thread.i500 ]
  %i.nb = shl nuw i32 %.sink20.i507, 1
  %i.nc = add i32 %i.nb, %.sink19.i508
  %i.nd = load i32, ptr %i.lq, align 4, !tbaa !12
  %i.ne = icmp ugt i32 %i.nc, %i.nd
  br i1 %i.ne, label %.preheader642.preheader, label %positive_int.exit.thread.1.i501

positive_int.exit.thread.1.i501:                  ; preds = %positive_int.exit.1.i506, %bb.ax
  %i.nf = load i32, ptr %i.gb, align 16, !tbaa !12 ; 4 uses
  %i.ng = icmp sgt i32 %i.nf, 0
  br i1 %i.ng, label %positive_int.exit.2.i503, label %bb.az

bb.az:                                            ; preds = %positive_int.exit.thread.1.i501
  %i.nh = icmp slt i32 %i.nf, 0
  br i1 %i.nh, label %bb.ba, label %is_quite_large.exit512

bb.ba:                                            ; preds = %bb.az
  %i.ni = xor i32 %i.nf, -1
end_hunk_0
begin_hunk_1_@Ptngc_pack_array_xtc2:bb.a
positive_int.exit.thread40.1.1.i.i:               ; preds = %bb.bh
  %i.pn = xor i32 %i.oz, -1
  %i.po = shl nuw nsw i32 %i.pn, 1
  %i.pp = add nuw nsw i32 %i.po, 2
  %spec.select146.i.i = call i32 @llvm.umax.i32(i32 %i.pp, i32 %.232.164134.i.i)
  br label %positive_int.exit34.1.1.i.i

positive_int.exit.1.1.i.i:                        ; preds = %positive_int.exit38.170.i.i
  %i.pq = shl nuw i32 %i.oz, 1
  %i.pr = add i32 %i.pq, -1
  %spec.select147.i.i = call i32 @llvm.umax.i32(i32 %i.pr, i32 %.232.164134.i.i)
  br label %positive_int.exit34.1.1.i.i

positive_int.exit34.1.1.i.i:                      ; preds = %positive_int.exit.1.1.i.i, %positive_int.exit.thread40.1.1.i.i, %bb.bh
  %.232.1.1.i.i = phi i32 [ %spec.select146.i.i, %positive_int.exit.thread40.1.1.i.i ], [ %spec.select147.i.i, %positive_int.exit.1.1.i.i ], [ %.232.164134.i.i, %bb.bh ] ; 3 uses
  %i.ps = icmp sgt i32 %i.pa, 0
  br i1 %i.ps, label %positive_int.exit36.1.1.i.i, label %bb.bi

bb.bi:                                            ; preds = %positive_int.exit34.1.1.i.i
  %i.pt = icmp slt i32 %i.pa, 0
  br i1 %i.pt, label %positive_int.exit36.thread43.1.1.i.i, label %positive_int.exit38.1.1.i.i

positive_int.exit36.thread43.1.1.i.i:             ; preds = %bb.bi
  %i.pu = xor i32 %i.pa, -1
  %i.pv = shl nuw nsw i32 %i.pu, 1
  %i.pw = add nuw nsw i32 %i.pv, 2
  %spec.select148.i.i = call i32 @llvm.umax.i32(i32 %i.pw, i32 %.2.169.i.i)
  br label %positive_int.exit38.1.1.i.i

positive_int.exit36.1.1.i.i:                      ; preds = %positive_int.exit34.1.1.i.i
  %i.px = shl nuw i32 %i.pa, 1
  %i.py = add i32 %i.px, -1
  %spec.select149.i.i = call i32 @llvm.umax.i32(i32 %i.py, i32 %.2.169.i.i)
  br label %positive_int.exit38.1.1.i.i

positive_int.exit38.1.1.i.i:                      ; preds = %positive_int.exit36.1.1.i.i, %positive_int.exit36.thread43.1.1.i.i, %bb.bi
  %.2.1.1.i.i = phi i32 [ %spec.select148.i.i, %positive_int.exit36.thread43.1.1.i.i ], [ %spec.select149.i.i, %positive_int.exit36.1.1.i.i ], [ %.2.169.i.i, %bb.bi ] ; 3 uses
  %i.pz = getelementptr inbounds nuw i8, ptr %.0375719, i64 8 ; 2 uses
  %i.qa = load i32, ptr %i.pz, align 4, !tbaa !12 ; 3 uses
  %i.qb = getelementptr inbounds nuw i8, ptr %.0375719, i64 20 ; 2 uses
  %i.qc = load i32, ptr %i.qb, align 4, !tbaa !12 ; 3 uses
  %i.qd = sub nsw i32 %i.qc, %i.qa                ; 6 uses
  %i.qe = getelementptr inbounds nuw i8, ptr %.0375719, i64 32 ; 2 uses
  %i.qf = load i32, ptr %i.qe, align 4, !tbaa !12 ; 2 uses
  %i.qg = sub nsw i32 %i.qf, %i.qc                ; 4 uses
  %i.qh = sub nsw i32 %i.qf, %i.qa                ; 4 uses
  %i.qi = icmp sgt i32 %i.qd, 0
  br i1 %i.qi, label %positive_int.exit.2.i.i, label %bb.bj

bb.bj:                                            ; preds = %positive_int.exit38.1.1.i.i
  %i.qj = icmp slt i32 %i.qd, 0
  br i1 %i.qj, label %positive_int.exit.thread40.2.i.i, label %bb.bk

positive_int.exit.thread40.2.i.i:                 ; preds = %bb.bj
  %i.qk = xor i32 %i.qd, -1
  %i.ql = shl nuw nsw i32 %i.qk, 1
  %i.qm = add nuw nsw i32 %i.ql, 2
  %spec.select150.i.i = call i32 @llvm.umax.i32(i32 %i.qm, i32 %.232.1.1.i.i)
  %i.qn = shl i32 %i.qd, 1
  %i.qo = xor i32 %i.qn, -1
  %spec.select158.i.i = call i32 @llvm.umax.i32(i32 %.2.1.1.i.i, i32 %i.qo)
  br label %positive_int.exit38.2.i.i

positive_int.exit.2.i.i:                          ; preds = %positive_int.exit38.1.1.i.i
  %i.qp = shl nuw i32 %i.qd, 1
  %i.qq = add i32 %i.qp, -1
  %spec.select151.i.i = call i32 @llvm.umax.i32(i32 %i.qq, i32 %.232.1.1.i.i)
  br label %bb.bk

bb.bk:                                            ; preds = %positive_int.exit.2.i.i, %bb.bj
  %.232.2.ph.i.i = phi i32 [ %.232.1.1.i.i, %bb.bj ], [ %spec.select151.i.i, %positive_int.exit.2.i.i ] ; 2 uses
  %.not129.i.i = icmp eq i32 %i.qc, %i.qa
  br i1 %.not129.i.i, label %positive_int.exit38.2.i.i, label %positive_int.exit36.thread43.2.i.i

positive_int.exit36.thread43.2.i.i:               ; preds = %bb.bk
  %i.qr = shl nuw i32 %i.qd, 1
  %spec.select152.i.i = call i32 @llvm.umax.i32(i32 %i.qr, i32 %.2.1.1.i.i)
  br label %positive_int.exit38.2.i.i

positive_int.exit38.2.i.i:                        ; preds = %positive_int.exit36.thread43.2.i.i, %bb.bk, %positive_int.exit.thread40.2.i.i
  %.232.2137.i.i = phi i32 [ %.232.2.ph.i.i, %positive_int.exit36.thread43.2.i.i ], [ %spec.select150.i.i, %positive_int.exit.thread40.2.i.i ], [ %.232.2.ph.i.i, %bb.bk ] ; 3 uses
  %.2.2.i.i = phi i32 [ %spec.select152.i.i, %positive_int.exit36.thread43.2.i.i ], [ %spec.select158.i.i, %positive_int.exit.thread40.2.i.i ], [ %.2.1.1.i.i, %bb.bk ] ; 3 uses
  %i.qs = icmp sgt i32 %i.qg, 0
  br i1 %i.qs, label %positive_int.exit.1.2.i.i, label %bb.bl

bb.bl:                                            ; preds = %positive_int.exit38.2.i.i
  %i.qt = icmp slt i32 %i.qg, 0
  br i1 %i.qt, label %positive_int.exit.thread40.1.2.i.i, label %positive_int.exit34.1.2.i.i

positive_int.exit.thread40.1.2.i.i:               ; preds = %bb.bl
  %i.qu = xor i32 %i.qg, -1
  %i.qv = shl nuw nsw i32 %i.qu, 1
  %i.qw = add nuw nsw i32 %i.qv, 2
  %spec.select153.i.i = call i32 @llvm.umax.i32(i32 %i.qw, i32 %.232.2137.i.i)
  br label %positive_int.exit34.1.2.i.i

positive_int.exit.1.2.i.i:                        ; preds = %positive_int.exit38.2.i.i
  %i.qx = shl nuw i32 %i.qg, 1
  %i.qy = add i32 %i.qx, -1
  %spec.select154.i.i = call i32 @llvm.umax.i32(i32 %i.qy, i32 %.232.2137.i.i)
  br label %positive_int.exit34.1.2.i.i

positive_int.exit34.1.2.i.i:                      ; preds = %positive_int.exit.1.2.i.i, %positive_int.exit.thread40.1.2.i.i, %bb.bl
  %.232.1.2.i.i = phi i32 [ %spec.select153.i.i, %positive_int.exit.thread40.1.2.i.i ], [ %spec.select154.i.i, %positive_int.exit.1.2.i.i ], [ %.232.2137.i.i, %bb.bl ]
  %i.qz = icmp sgt i32 %i.qh, 0
  br i1 %i.qz, label %positive_int.exit36.1.2.i.i, label %bb.bm

bb.bm:                                            ; preds = %positive_int.exit34.1.2.i.i
  %i.ra = icmp slt i32 %i.qh, 0
  br i1 %i.ra, label %positive_int.exit36.thread43.1.2.i.i, label %swap_is_better.exit.i

positive_int.exit36.thread43.1.2.i.i:             ; preds = %bb.bm
  %i.rb = xor i32 %i.qh, -1
  %i.rc = shl nuw nsw i32 %i.rb, 1
  %i.rd = add nuw nsw i32 %i.rc, 2
  %spec.select155.i.i = call i32 @llvm.umax.i32(i32 %i.rd, i32 %.2.2.i.i)
  br label %swap_is_better.exit.i

positive_int.exit36.1.2.i.i:                      ; preds = %positive_int.exit34.1.2.i.i
  %i.re = shl nuw i32 %i.qh, 1
  %i.rf = add i32 %i.re, -1
  %spec.select156.i.i = call i32 @llvm.umax.i32(i32 %i.rf, i32 %.2.2.i.i)
  br label %swap_is_better.exit.i

swap_is_better.exit.i:                            ; preds = %positive_int.exit36.1.2.i.i, %positive_int.exit36.thread43.1.2.i.i, %bb.bm
  %.2.1.2.i.i = phi i32 [ %spec.select155.i.i, %positive_int.exit36.thread43.1.2.i.i ], [ %spec.select156.i.i, %positive_int.exit36.1.2.i.i ], [ %.2.2.i.i, %bb.bm ]
  %spec.store.select.i.i = call i32 @llvm.umax.i32(i32 %.232.1.2.i.i, i32 1) ; 4 uses
  %spec.store.select1.i.i = call i32 @llvm.umax.i32(i32 %.2.1.2.i.i, i32 1) ; 4 uses
  %i.rg = icmp slt i32 %spec.store.select1.i.i, %spec.store.select.i.i
  br i1 %i.rg, label %bb.bn, label %bb.bo

bb.bn:                                            ; preds = %swap_is_better.exit.i
  %i.rh = sitofp i32 %spec.store.select1.i.i to double
  %i.ri = sitofp i32 %spec.store.select.i.i to double
  %i.rj = fdiv double %i.rh, %i.ri
  %i.rk = call double @llvm.fabs.f64(double %i.rj)
  %i.rl = fcmp olt double %i.rk, f0x3FEC823E074EC129
  br i1 %i.rl, label %bb.bq, label %bb.bo

bb.bo:                                            ; preds = %bb.bn, %swap_is_better.exit.i
  %i.rm = icmp slt i32 %spec.store.select.i.i, %spec.store.select1.i.i
  br i1 %i.rm, label %bb.bp, label %swapdecide.exit

bb.bp:                                            ; preds = %bb.bo
  %i.rn = sitofp i32 %spec.store.select.i.i to double
  %i.ro = sitofp i32 %spec.store.select1.i.i to double
  %i.rp = fdiv double %i.rn, %i.ro
  %i.rq = call double @llvm.fabs.f64(double %i.rp)
  %i.rr = fcmp olt double %i.rq, f0x3FEC823E074EC129
  br i1 %i.rr, label %bb.br, label %swapdecide.exit

bb.bq:                                            ; preds = %bb.bn
  %.not12.i = icmp eq i32 %.0714, 0
  br i1 %.not12.i, label %bb.bs, label %.critedge433

bb.br:                                            ; preds = %bb.bp
  %.not.i513 = icmp eq i32 %.0714, 0
  br i1 %.not.i513, label %.preheader642.preheader, label %bb.bs

bb.bs:                                            ; preds = %bb.br, %bb.bq
  %storemerge.i = phi i32 [ 1, %bb.bq ], [ 0, %bb.br ]
  call void @Ptngc_writebits(ptr noundef nonnull %0, i32 noundef 14, i32 noundef 5, ptr noundef nonnull %i.e) #11
  br label %swapdecide.exit

swapdecide.exit:                                  ; preds = %bb.bo, %bb.bp, %bb.bs
  %.4607 = phi i32 [ %storemerge.i, %bb.bs ], [ %.0714, %bb.bp ], [ %.0714, %bb.bo ]
  %.not425 = icmp eq i32 %.4607, 0
  br i1 %.not425, label %.preheader642.preheader, label %.critedge433

.critedge433:                                     ; preds = %bb.bq, %swapdecide.exit
  %i.rs = load i32, ptr %.0375719, align 4, !tbaa !12 ; 2 uses
  %i.rt = load i32, ptr %i.no, align 4, !tbaa !12 ; 2 uses
  %.neg = sub nsw i32 %i.rs, %i.rt
  %i.ru = load i32, ptr %i.nr, align 4, !tbaa !12
  %i.rv = sub nsw i32 %i.rt, %.sroa.0824.1
  %i.rw = sub nsw i32 %i.ru, %i.rs
  store i32 %i.rv, ptr %i.j, align 16, !tbaa !12
  store i32 %.neg, ptr %i.fw, align 4, !tbaa !12
  store i32 %i.rw, ptr %i.fz, align 8, !tbaa !12
  %i.rx = load i32, ptr %i.os, align 4, !tbaa !12 ; 2 uses
  %i.ry = load i32, ptr %i.ou, align 4, !tbaa !12 ; 2 uses
  %.neg.1 = sub nsw i32 %i.rx, %i.ry
  %i.rz = load i32, ptr %i.ox, align 4, !tbaa !12
  %i.sa = sub nsw i32 %i.ry, %.sroa.12.1
  %i.sb = sub nsw i32 %i.rz, %i.rx
  store i32 %i.sa, ptr %i.fu, align 4, !tbaa !12
  store i32 %.neg.1, ptr %i.fx, align 16, !tbaa !12
  store i32 %i.sb, ptr %i.ga, align 4, !tbaa !12
  %i.sc = load i32, ptr %i.pz, align 4, !tbaa !12 ; 2 uses
  %i.sd = load i32, ptr %i.qb, align 4, !tbaa !12 ; 2 uses
  %.neg.2 = sub nsw i32 %i.sc, %i.sd
  %i.se = load i32, ptr %i.qe, align 4, !tbaa !12
  %i.sf = sub nsw i32 %i.sd, %.sroa.22.1          ; 2 uses
  %i.sg = sub nsw i32 %i.se, %i.sc
  store i32 %i.sf, ptr %i.fv, align 8, !tbaa !12
  store i32 %.neg.2, ptr %i.fy, align 4, !tbaa !12
  store i32 %i.sg, ptr %i.gb, align 16, !tbaa !12
  %i.sh = load <2 x i32>, ptr %i.j, align 16, !tbaa !12
  br label %.loopexit641

.preheader642.preheader:                          ; preds = %4, %positive_int.exit.i509, %positive_int.exit.2.i503, %positive_int.exit.1.i490, %positive_int.exit.i493, %is_quite_large.exit.thread, %positive_int.exit.1.i506, %positive_int.exit.2.i487, %bb.br, %swapdecide.exit
  %.1606916 = phi i32 [ %.0714, %4 ], [ 0, %swapdecide.exit ], [ %.0714, %positive_int.exit.i509 ], [ %.0714, %positive_int.exit.2.i503 ], [ %.0714, %positive_int.exit.1.i490 ], [ %.0714, %positive_int.exit.i493 ], [ %.0714, %is_quite_large.exit.thread ], [ %.0714, %positive_int.exit.1.i506 ], [ %.0714, %positive_int.exit.2.i487 ], [ 0, %bb.br ]
  %i.si = load <2 x i32>, ptr %.0375719, align 4, !tbaa !12
  %i.sj = sub nsw <2 x i32> %i.si, %i.cc
  %i.sk = getelementptr inbounds nuw i8, ptr %.0375719, i64 8
  %i.sl = load i32, ptr %i.sk, align 4, !tbaa !12
  %i.sm = sub nsw i32 %i.sl, %.sroa.22.1
  br label %.loopexit641

.loopexit641:                                     ; preds = %.preheader642.preheader, %.critedge433
  %or.cond3919 = phi i1 [ true, %.critedge433 ], [ false, %.preheader642.preheader ] ; 4 uses
  %.0363917 = phi i32 [ 2, %.critedge433 ], [ 0, %.preheader642.preheader ] ; 4 uses
  %.not.i516915 = phi i1 [ false, %.critedge433 ], [ true, %.preheader642.preheader ] ; 2 uses
  %.1606913 = phi i32 [ 1, %.critedge433 ], [ %.1606916, %.preheader642.preheader ] ; 3 uses
  %.sroa.14.1 = phi i32 [ %i.sf, %.critedge433 ], [ %i.sm, %.preheader642.preheader ] ; 6 uses
  %i.sn = phi <2 x i32> [ %i.sh, %.critedge433 ], [ %i.sj, %.preheader642.preheader ] ; 7 uses
  %i.so = load i32, ptr %i.h, align 4, !tbaa !12  ; 2 uses
  %i.sp = icmp eq i32 %i.so, 18
  br i1 %i.sp, label %bb.bt, label %buffer_large.exit515

bb.bt:                                            ; preds = %.loopexit641
  call void @Ptngc_writebits(ptr noundef nonnull %0, i32 noundef 15, i32 noundef 5, ptr noundef nonnull %i.e) #11
  call void @Ptngc_writebits(ptr noundef nonnull %0, i32 noundef 15, i32 noundef 4, ptr noundef nonnull %i.e) #11
  br label %bb.bu

bb.bu:                                            ; preds = %.preheader.i589.preheader, %bb.bt
  %indvars.iv.i567 = phi i64 [ 0, %bb.bt ], [ %indvars.iv.next.i569, %.preheader.i589.preheader ] ; 2 uses
  %.idx.i568 = mul nuw nsw i64 %indvars.iv.i567, 12
  %i.sq = getelementptr inbounds nuw i8, ptr %i.i, i64 %.idx.i568 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #11
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(76) %i.a, i8 0, i64 76, i1 false)
  %i.sr = load i32, ptr %i.sq, align 4, !tbaa !12
  call void @Ptngc_largeint_add(i32 noundef %i.sr, ptr noundef nonnull %i.a, i32 noundef 19) #11
  %i.ss = load i32, ptr %i.cq, align 4, !tbaa !12
  call void @Ptngc_largeint_mul(i32 noundef %i.ss, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, i32 noundef 19) #11
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(76) %i.a, ptr noundef nonnull align 16 dereferenceable(76) %i.b, i64 76, i1 false)
  %i.st = getelementptr inbounds nuw i8, ptr %i.sq, i64 4
  %i.su = load i32, ptr %i.st, align 4, !tbaa !12
  call void @Ptngc_largeint_add(i32 noundef %i.su, ptr noundef nonnull %i.a, i32 noundef 19) #11
  %i.sv = load i32, ptr %i.cz, align 4, !tbaa !12
  call void @Ptngc_largeint_mul(i32 noundef %i.sv, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, i32 noundef 19) #11
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(76) %i.a, ptr noundef nonnull align 16 dereferenceable(76) %i.b, i64 76, i1 false)
  %i.sw = getelementptr inbounds nuw i8, ptr %i.sq, i64 8
  %i.sx = load i32, ptr %i.sw, align 4, !tbaa !12
  call void @Ptngc_largeint_add(i32 noundef %i.sx, ptr noundef nonnull %i.a, i32 noundef 19) #11
  %i.sy = load i32, ptr %i.gc, align 8, !tbaa !12
  %.not.i588 = icmp eq i32 %i.sy, 0
  br i1 %.not.i588, label %.preheader.i589.preheader, label %bb.bv

.preheader.i589.preheader:                        ; preds = %bb.bu
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(72) %i.k, ptr noundef nonnull align 16 dereferenceable(72) %i.a, i64 72, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  call void @Ptngc_writemanybits(ptr noundef nonnull %0, ptr noundef nonnull %i.k, i32 noundef %i.dc, ptr noundef nonnull %i.e) #11
  %indvars.iv.next.i569 = add nuw nsw i64 %indvars.iv.i567, 1 ; 2 uses
  %exitcond.not.i570 = icmp eq i64 %indvars.iv.next.i569, 18
  br i1 %exitcond.not.i570, label %buffer_large.exit515, label %bb.bu, !llvm.loop !1

bb.bv:                                            ; preds = %bb.bu
  %i.sz = load ptr, ptr @stderr, align 8, !tbaa !18
  %i.ta = call i64 @fwrite(ptr nonnull @.str.3, i64 47, i64 1, ptr %i.sz) #12 ; 0 uses
  call void @exit(i32 noundef 1) #13
  unreachable

buffer_large.exit515:                             ; preds = %.preheader.i589.preheader, %.loopexit641
  %i.tb = phi i32 [ %i.so, %.loopexit641 ], [ 0, %.preheader.i589.preheader ] ; 2 uses
  %i.tc = mul nsw i32 %i.tb, 3
  %i.td = sext i32 %i.tc to i64
  %i.te = getelementptr [4 x i8], ptr %i.i, i64 %i.td ; 2 uses
  store <2 x i32> %i.sn, ptr %i.te, align 4, !tbaa !12
  %i.tf = getelementptr i8, ptr %i.te, i64 8
  store i32 %.sroa.14.1, ptr %i.tf, align 4, !tbaa !12
  %i.tg = add nsw i32 %i.tb, 1
  store i32 %i.tg, ptr %i.h, align 4, !tbaa !12
  %i.th = getelementptr inbounds nuw i8, ptr %.0375719, i64 12 ; 17 uses
  %i.ti = add nsw i32 %.0370720, -1               ; 4 uses
  br i1 %or.cond3919, label %.preheader634.preheader, label %.loopexit

.preheader634.preheader:                          ; preds = %buffer_large.exit515
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(12) %i.j, ptr noundef nonnull align 4 dereferenceable(12) %i.fw, i64 12, i1 false), !tbaa !12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.fw, ptr noundef nonnull align 8 dereferenceable(12) %i.fz, i64 12, i1 false), !tbaa !12
  br label %.loopexit

.loopexit:                                        ; preds = %.preheader634.preheader, %buffer_large.exit515
  %i.tj = mul nuw nsw i32 %.0363917, 3            ; 3 uses
  br i1 %.not.i516915, label %.loopexit.i, label %.preheader.preheader.i

.preheader.preheader.i:                           ; preds = %.loopexit
  %wide.vec1277 = load <6 x i32>, ptr %i.j, align 16, !tbaa !12 ; 3 uses
  %strided.vec1280.a = shufflevector <6 x i32> %wide.vec1277, <6 x i32> poison, <2 x i32> <i32 2, i32 5>
  %i.tk = insertelement <2 x i32> <i32 poison, i32 0>, i32 %.sroa.14.1, i64 0
  %i.tl = add <2 x i32> %strided.vec1280.a, %i.tk
  %strided.vec1279.a = shufflevector <6 x i32> %wide.vec1277, <6 x i32> poison, <2 x i32> <i32 1, i32 4>
  %i.tm = shufflevector <2 x i32> <i32 poison, i32 0>, <2 x i32> %i.sn, <2 x i32> <i32 3, i32 1>
  %i.tn = add <2 x i32> %strided.vec1279.a, %i.tm
  %strided.vec1278 = shufflevector <6 x i32> %wide.vec1277, <6 x i32> poison, <2 x i32> <i32 0, i32 3>
  %i.to = insertelement <2 x i32> %i.sn, i32 0, i64 1
  %i.tp = add <2 x i32> %strided.vec1278, %i.to
  %i.tq = call i32 @llvm.vector.reduce.add.v2i32(<2 x i32> %i.tp)
  %i.tr = call i32 @llvm.vector.reduce.add.v2i32(<2 x i32> %i.tn)
  %i.ts = call i32 @llvm.vector.reduce.add.v2i32(<2 x i32> %i.tl)
  %i.tt = insertelement <2 x i32> poison, i32 %i.tq, i64 0
  %i.tu = insertelement <2 x i32> %i.tt, i32 %i.tr, i64 1
  br label %.loopexit.i

.loopexit.i:                                      ; preds = %.preheader.preheader.i, %.loopexit
  %.sroa.12.1.i = phi i32 [ %.sroa.14.1, %.loopexit ], [ %i.ts, %.preheader.preheader.i ]
  %i.tv = phi <2 x i32> [ %i.sn, %.loopexit ], [ %i.tu, %.preheader.preheader.i ]
  %i.tw = mul i32 %i.ti, 3
  %invariant.umin.i520 = call i32 @llvm.umin.i32(i32 %i.tw, i32 21) ; 2 uses
  %i.tx = icmp samesign ult i32 %i.tj, %invariant.umin.i520
  br i1 %i.tx, label %.lr.ph.i522, label %insert_batch.exit530

.lr.ph.i522:                                      ; preds = %.loopexit.i
  %i.ty = zext nneg i32 %i.tj to i64              ; 16 uses
  %i.tz = zext nneg i32 %invariant.umin.i520 to i64 ; 6 uses
  %i.ua = getelementptr inbounds nuw [4 x i8], ptr %i.th, i64 %i.ty
  %i.ub = add <2 x i32> %i.tv, %i.gh
  %i.uc = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %i.ty
  %i.ud = load <2 x i32>, ptr %i.ua, align 4, !tbaa !12 ; 2 uses
  %i.ue = sub <2 x i32> %i.ud, %i.ub
  store <2 x i32> %i.ue, ptr %i.uc, align 8, !tbaa !12
  %i.uf = add nuw nsw i64 %i.ty, 2                ; 2 uses
  %i.ug = getelementptr inbounds nuw [4 x i8], ptr %i.th, i64 %i.uf
  %i.uh = load i32, ptr %i.ug, align 4, !tbaa !12 ; 2 uses
  %i.ui = add i32 %.sroa.12.1.i, %.sroa.22.1
  %i.uj = sub i32 %i.uh, %i.ui
  %i.uk = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %i.uf
  store i32 %i.uj, ptr %i.uk, align 8, !tbaa !12
  %indvars.iv.next66.i528 = add nuw nsw i64 %i.ty, 3 ; 4 uses
  %i.ul = icmp samesign ult i64 %indvars.iv.next66.i528, %i.tz
  br i1 %i.ul, label %bb.bw, label %._crit_edge.loopexit.i529

bb.bw:                                            ; preds = %.lr.ph.i522
  %i.um = getelementptr inbounds nuw [4 x i8], ptr %i.th, i64 %indvars.iv.next66.i528
  %i.un = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %indvars.iv.next66.i528
  %i.uo = load <2 x i32>, ptr %i.um, align 4, !tbaa !12 ; 2 uses
  %i.up = sub <2 x i32> %i.uo, %i.ud
  store <2 x i32> %i.up, ptr %i.un, align 4, !tbaa !12
  %i.uq = add nuw nsw i64 %i.ty, 5                ; 2 uses
  %i.ur = getelementptr inbounds nuw [4 x i8], ptr %i.th, i64 %i.uq
  %i.us = load i32, ptr %i.ur, align 4, !tbaa !12 ; 2 uses
  %i.ut = sub i32 %i.us, %i.uh
  %i.uu = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %i.uq
  store i32 %i.ut, ptr %i.uu, align 4, !tbaa !12
  %indvars.iv.next66.i528.1 = add nuw nsw i64 %i.ty, 6 ; 4 uses
  %i.uv = icmp samesign ult i64 %indvars.iv.next66.i528.1, %i.tz
  br i1 %i.uv, label %bb.bx, label %._crit_edge.loopexit.i529

bb.bx:                                            ; preds = %bb.bw
  %i.uw = getelementptr inbounds nuw [4 x i8], ptr %i.th, i64 %indvars.iv.next66.i528.1
  %i.ux = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %indvars.iv.next66.i528.1
  %i.uy = load <2 x i32>, ptr %i.uw, align 4, !tbaa !12 ; 2 uses
  %i.uz = sub <2 x i32> %i.uy, %i.uo
  store <2 x i32> %i.uz, ptr %i.ux, align 8, !tbaa !12
  %i.va = or disjoint i64 %i.ty, 8                ; 2 uses
  %i.vb = getelementptr inbounds nuw [4 x i8], ptr %i.th, i64 %i.va
  %i.vc = load i32, ptr %i.vb, align 4, !tbaa !12 ; 2 uses
  %i.vd = sub i32 %i.vc, %i.us
  %i.ve = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %i.va
  store i32 %i.vd, ptr %i.ve, align 8, !tbaa !12
  %indvars.iv.next66.i528.2 = or disjoint i64 %i.ty, 9 ; 4 uses
  %i.vf = icmp samesign ult i64 %indvars.iv.next66.i528.2, %i.tz
  br i1 %i.vf, label %bb.by, label %._crit_edge.loopexit.i529

bb.by:                                            ; preds = %bb.bx
  %i.vg = getelementptr inbounds nuw [4 x i8], ptr %i.th, i64 %indvars.iv.next66.i528.2
  %i.vh = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %indvars.iv.next66.i528.2
  %i.vi = load <2 x i32>, ptr %i.vg, align 4, !tbaa !12 ; 2 uses
  %i.vj = sub <2 x i32> %i.vi, %i.uy
  store <2 x i32> %i.vj, ptr %i.vh, align 4, !tbaa !12
  %i.vk = add nuw nsw i64 %i.ty, 11               ; 2 uses
  %i.vl = getelementptr inbounds nuw [4 x i8], ptr %i.th, i64 %i.vk
  %i.vm = load i32, ptr %i.vl, align 4, !tbaa !12 ; 2 uses
  %i.vn = sub i32 %i.vm, %i.vc
  %i.vo = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %i.vk
  store i32 %i.vn, ptr %i.vo, align 4, !tbaa !12
  %indvars.iv.next66.i528.3 = add nuw nsw i64 %i.ty, 12 ; 4 uses
  %i.vp = icmp samesign ult i64 %indvars.iv.next66.i528.3, %i.tz
  br i1 %i.vp, label %bb.bz, label %._crit_edge.loopexit.i529

bb.bz:                                            ; preds = %bb.by
  %i.vq = getelementptr inbounds nuw [4 x i8], ptr %i.th, i64 %indvars.iv.next66.i528.3
  %i.vr = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %indvars.iv.next66.i528.3
  %i.vs = load <2 x i32>, ptr %i.vq, align 4, !tbaa !12 ; 2 uses
  %i.vt = sub <2 x i32> %i.vs, %i.vi
  store <2 x i32> %i.vt, ptr %i.vr, align 8, !tbaa !12
  %i.vu = add nuw nsw i64 %i.ty, 14               ; 2 uses
  %i.vv = getelementptr inbounds nuw [4 x i8], ptr %i.th, i64 %i.vu
  %i.vw = load i32, ptr %i.vv, align 4, !tbaa !12 ; 2 uses
  %i.vx = sub i32 %i.vw, %i.vm
  %i.vy = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %i.vu
  store i32 %i.vx, ptr %i.vy, align 8, !tbaa !12
  %indvars.iv.next66.i528.4 = add nuw nsw i64 %i.ty, 15 ; 4 uses
  %i.vz = icmp samesign ult i64 %indvars.iv.next66.i528.4, %i.tz
  br i1 %i.vz, label %bb.ca, label %._crit_edge.loopexit.i529

bb.ca:                                            ; preds = %bb.bz
  %i.wa = getelementptr inbounds nuw [4 x i8], ptr %i.th, i64 %indvars.iv.next66.i528.4
  %i.wb = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %indvars.iv.next66.i528.4
  %i.wc = load <2 x i32>, ptr %i.wa, align 4, !tbaa !12 ; 2 uses
  %i.wd = sub <2 x i32> %i.wc, %i.vs
  store <2 x i32> %i.wd, ptr %i.wb, align 4, !tbaa !12
  %i.we = or disjoint i64 %i.ty, 17               ; 2 uses
  %i.wf = getelementptr inbounds nuw [4 x i8], ptr %i.th, i64 %i.we
  %i.wg = load i32, ptr %i.wf, align 4, !tbaa !12 ; 2 uses
  %i.wh = sub i32 %i.wg, %i.vw
  %i.wi = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %i.we
  store i32 %i.wh, ptr %i.wi, align 4, !tbaa !12
  %indvars.iv.next66.i528.5 = add nuw nsw i64 %i.ty, 18 ; 4 uses
  %i.wj = icmp samesign ult i64 %indvars.iv.next66.i528.5, %i.tz
  br i1 %i.wj, label %bb.cb, label %._crit_edge.loopexit.i529

end_hunk_1
