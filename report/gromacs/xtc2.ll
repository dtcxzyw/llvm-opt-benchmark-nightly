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
  %indvars.iv.next743.1 = add nuw nsw i64 %indvars.iv742, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge658.unr-lcssa, label %.lr.ph, !llvm.loop !23

._crit_edge658.unr-lcssa:                         ; preds = %positive_int.exit.1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge658, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge658.unr-lcssa, %.lr.ph.preheader
  %indvars.iv742.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next743.1, %._crit_edge658.unr-lcssa ]
  %.0395656.epil.init = phi i32 [ 0, %.lr.ph.preheader ], [ %.1396.fr.1, %._crit_edge658.unr-lcssa ] ; 2 uses
  %lcmp.mod1356 = trunc i32 %i.dh to i1
  tail call void @llvm.assume(i1 %lcmp.mod1356)
  %i.eh = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv742.epil.init
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
  %i.eq = icmp sgt i32 %.0.i466.epil, %.0395656.epil.init
  %i.er = icmp slt i32 %.0.i466.epil, %i.dg
  %or.cond431.epil = select i1 %i.eq, i1 %i.er, i1 false
  %.1396.epil = select i1 %or.cond431.epil, i32 %.0.i466.epil, i32 %.0395656.epil.init
  %.1396.fr.epil = freeze i32 %.1396.epil
  br label %._crit_edge658

._crit_edge658:                                   ; preds = %._crit_edge658.unr-lcssa, %positive_int.exit.epil
  %.1396.fr.lcssa = phi i32 [ %.1396.fr.1, %._crit_edge658.unr-lcssa ], [ %.1396.fr.epil, %positive_int.exit.epil ] ; 3 uses
  %i.es = icmp ugt i32 %.1396.fr.lcssa, 512
  %i.et = icmp ugt i32 %.1396.fr.lcssa, 104031
  %.966 = select i1 %i.et, i64 47, i64 24
  %spec.select968 = select i1 %i.es, i64 %.966, i64 0
  br label %.thread904

.thread904:                                       ; preds = %._crit_edge658, %Ptngc_find_magic_index.exit465
  %.0395.lcssa903907 = phi i32 [ %.1396.fr.lcssa, %._crit_edge658 ], [ 0, %Ptngc_find_magic_index.exit465 ]
  %i.eu = phi i64 [ %spec.select968, %._crit_edge658 ], [ 0, %Ptngc_find_magic_index.exit465 ]
  br label %bb.n

bb.n:                                             ; preds = %bb.n, %.thread904
  %indvars.iv.i469 = phi i64 [ %indvars.iv.next.i471, %bb.n ], [ %i.eu, %.thread904 ] ; 3 uses
  %i.ev = getelementptr inbounds nuw [4 x i8], ptr @magic, i64 %indvars.iv.i469
  %i.ew = load i32, ptr %i.ev, align 4, !tbaa !12
  %.not.i470 = icmp ugt i32 %i.ew, %.0395.lcssa903907
  %indvars.iv.next.i471 = add nuw nsw i64 %indvars.iv.i469, 1
  br i1 %.not.i470, label %Ptngc_find_magic_index.exit472, label %bb.n, !llvm.loop !0

Ptngc_find_magic_index.exit472:                   ; preds = %bb.n
  %i.ex = trunc nuw nsw i64 %indvars.iv.i469 to i32 ; 2 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 7 uses
  store i32 32, ptr %i.ey, align 4, !tbaa !48
  %i.ez = icmp sgt i32 %.sroa.0825.1, 0
  br i1 %i.ez, label %bb.o, label %bb.p

bb.o:                                             ; preds = %Ptngc_find_magic_index.exit472
  %i.fa = shl nuw i32 %.sroa.0825.1, 1
  %i.fb = add i32 %i.fa, -1
  br label %positive_int.exit474

bb.p:                                             ; preds = %Ptngc_find_magic_index.exit472
  %i.fc = icmp slt i32 %.sroa.0825.1, 0
  br i1 %i.fc, label %bb.q, label %positive_int.exit474

bb.q:                                             ; preds = %bb.p
  %i.fd = xor i32 %.sroa.0825.1, -1
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
  %.not714 = icmp ult i32 %.off, 5
  br i1 %.not714, label %._crit_edge724.thread, label %.lr.ph723

.lr.ph723:                                        ; preds = %positive_int.exit478
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
  %i.gg = insertelement <2 x i32> poison, i32 %.sroa.0825.1, i64 0
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

bb.x:                                             ; preds = %.lr.ph723, %bb.db
  %.sroa.14.0 = phi i32 [ %.sroa.22.1, %.lr.ph723 ], [ %.sroa.14.3, %bb.db ] ; 4 uses
  %.0366722 = phi i32 [ 0, %.lr.ph723 ], [ %.3369, %bb.db ] ; 3 uses
  %.0370721 = phi i32 [ %i.m, %.lr.ph723 ], [ %.4374, %bb.db ] ; 8 uses
  %.0375720 = phi ptr [ %1, %.lr.ph723 ], [ %.4379, %bb.db ] ; 36 uses
  %.0382718 = phi i32 [ 0, %.lr.ph723 ], [ %.4386, %bb.db ] ; 8 uses
  %.0387716 = phi i32 [ %i.ex, %.lr.ph723 ], [ %.5392, %bb.db ] ; 12 uses
  %.0715 = phi i32 [ 0, %.lr.ph723 ], [ %.3, %bb.db ] ; 15 uses
  %i.gv = phi <2 x i32> [ %i.cc, %.lr.ph723 ], [ %i.akh, %bb.db ] ; 4 uses
  %i.gw = icmp slt i32 %.0370721, 0
  br i1 %i.gw, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.gx = load ptr, ptr @stderr, align 8, !tbaa !18
  %fwrite = call i64 @fwrite(ptr nonnull @.str.1, i64 31, i64 1, ptr %i.gx) #12 ; 0 uses
  call void @exit(i32 noundef 1) #13
  unreachable

bb.z:                                             ; preds = %bb.x
  %i.gy = icmp samesign ult i32 %.0370721, 3
  br i1 %i.gy, label %.preheader636, label %.lr.ph.i

.preheader636:                                    ; preds = %bb.z
  %.promoted707 = load i32, ptr %i.h, align 4     ; 3 uses
  %.not728 = icmp eq i32 %.0370721, 0
  br i1 %.not728, label %._crit_edge711, label %.preheader

.preheader:                                       ; preds = %.preheader636
  %i.gz = load i32, ptr %.0375720, align 4, !tbaa !12
  %i.ha = sub nsw i32 %i.gz, %.sroa.0825.1        ; 2 uses
  store i32 %i.ha, ptr %i.j, align 16, !tbaa !12
  %i.hb = getelementptr inbounds nuw i8, ptr %.0375720, i64 4
  %i.hc = load i32, ptr %i.hb, align 4, !tbaa !12
  %i.hd = sub nsw i32 %i.hc, %.sroa.12.1          ; 2 uses
  store i32 %i.hd, ptr %i.fu, align 4, !tbaa !12
  %i.he = getelementptr inbounds nuw i8, ptr %.0375720, i64 8
  %i.hf = load i32, ptr %i.he, align 4, !tbaa !12
  %i.hg = sub nsw i32 %i.hf, %.sroa.22.1          ; 2 uses
  store i32 %i.hg, ptr %i.fv, align 8, !tbaa !12
  %i.hh = icmp eq i32 %.promoted707, 18
  br i1 %i.hh, label %bb.aa, label %._crit_edge711.loopexit

bb.aa:                                            ; preds = %.preheader
  call void @Ptngc_writebits(ptr noundef nonnull %0, i32 noundef 15, i32 noundef 5, ptr noundef nonnull %i.e) #11
  call void @Ptngc_writebits(ptr noundef nonnull %0, i32 noundef 15, i32 noundef 4, ptr noundef nonnull %i.e) #11
  br label %bb.ab

bb.ab:                                            ; preds = %.preheader.i584.preheader, %bb.aa
  %indvars.iv.i559 = phi i64 [ 0, %bb.aa ], [ %indvars.iv.next.i561, %.preheader.i584.preheader ] ; 2 uses
  %.idx.i560 = mul nuw nsw i64 %indvars.iv.i559, 12
  %i.hi = getelementptr inbounds nuw i8, ptr %i.i, i64 %.idx.i560 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #11
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(76) %i.c, i8 0, i64 76, i1 false)
  %i.hj = load i32, ptr %i.hi, align 4, !tbaa !12
  call void @Ptngc_largeint_add(i32 noundef %i.hj, ptr noundef nonnull %i.c, i32 noundef 19) #11
  %i.hk = load i32, ptr %i.cq, align 4, !tbaa !12
  call void @Ptngc_largeint_mul(i32 noundef %i.hk, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d, i32 noundef 19) #11
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(76) %i.c, ptr noundef nonnull align 16 dereferenceable(76) %i.d, i64 76, i1 false)
  %i.hl = getelementptr inbounds nuw i8, ptr %i.hi, i64 4
  %i.hm = load i32, ptr %i.hl, align 4, !tbaa !12
  call void @Ptngc_largeint_add(i32 noundef %i.hm, ptr noundef nonnull %i.c, i32 noundef 19) #11
  %i.hn = load i32, ptr %i.cz, align 4, !tbaa !12
  call void @Ptngc_largeint_mul(i32 noundef %i.hn, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d, i32 noundef 19) #11
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(76) %i.c, ptr noundef nonnull align 16 dereferenceable(76) %i.d, i64 76, i1 false)
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hi, i64 8
  %i.hp = load i32, ptr %i.ho, align 4, !tbaa !12
  call void @Ptngc_largeint_add(i32 noundef %i.hp, ptr noundef nonnull %i.c, i32 noundef 19) #11
  %i.hq = load i32, ptr %i.gf, align 8, !tbaa !12
  %.not.i583 = icmp eq i32 %i.hq, 0
  br i1 %.not.i583, label %.preheader.i584.preheader, label %bb.ac

.preheader.i584.preheader:                        ; preds = %bb.ab
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(72) %i.k, ptr noundef nonnull align 16 dereferenceable(72) %i.c, i64 72, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #11
  call void @Ptngc_writemanybits(ptr noundef nonnull %0, ptr noundef nonnull %i.k, i32 noundef %i.dc, ptr noundef nonnull %i.e) #11
  %indvars.iv.next.i561 = add nuw nsw i64 %indvars.iv.i559, 1 ; 2 uses
  %exitcond.not.i562 = icmp eq i64 %indvars.iv.next.i561, 18
  br i1 %exitcond.not.i562, label %._crit_edge711.loopexit, label %bb.ab, !llvm.loop !1

bb.ac:                                            ; preds = %bb.ab
  %i.hr = load ptr, ptr @stderr, align 8, !tbaa !18
  %fwrite.i = call i64 @fwrite(ptr nonnull @.str.3, i64 47, i64 1, ptr %i.hr) #12 ; 0 uses
  call void @exit(i32 noundef 1) #13
  unreachable

._crit_edge711.loopexit:                          ; preds = %.preheader.i584.preheader, %.preheader
  %i.hs = phi i32 [ %.promoted707, %.preheader ], [ 0, %.preheader.i584.preheader ] ; 2 uses
  %i.ht = mul nsw i32 %i.hs, 3
  %i.hu = sext i32 %i.ht to i64
  %i.hv = getelementptr [4 x i8], ptr %i.i, i64 %i.hu ; 3 uses
  store i32 %i.ha, ptr %i.hv, align 4, !tbaa !12
  %i.hw = getelementptr i8, ptr %i.hv, i64 4
  store i32 %i.hd, ptr %i.hw, align 4, !tbaa !12
  %i.hx = getelementptr i8, ptr %i.hv, i64 8
  store i32 %i.hg, ptr %i.hx, align 4, !tbaa !12
  %i.hy = add nsw i32 %i.hs, 1                    ; 2 uses
  store i32 %i.hy, ptr %i.h, align 4, !tbaa !12
  %i.hz = add nsw i32 %.0370721, -1
  %i.ia = getelementptr inbounds nuw i8, ptr %.0375720, i64 12
  br label %._crit_edge711

._crit_edge711:                                   ; preds = %._crit_edge711.loopexit, %.preheader636
  %i.ib = phi i32 [ %.promoted707, %.preheader636 ], [ %i.hy, %._crit_edge711.loopexit ]
  %.1376.lcssa = phi ptr [ %.0375720, %.preheader636 ], [ %i.ia, %._crit_edge711.loopexit ]
  %.1371.lcssa = phi i32 [ 0, %.preheader636 ], [ %i.hz, %._crit_edge711.loopexit ]
  call fastcc void @flush_large(ptr noundef nonnull %0, ptr noundef %i.h, ptr noundef %i.i, i32 noundef %i.ib, ptr noundef %i.f, i32 noundef %i.dc, ptr noundef %i.k, ptr noundef %i.e)
  br label %bb.db

.lr.ph.i:                                         ; preds = %bb.z
  %i.ic = mul i32 %.0370721, 3                    ; 6 uses
  %i.id = add <2 x i32> %i.gv, %i.gh
  %i.ie = getelementptr inbounds nuw i8, ptr %.0375720, i64 8 ; 2 uses
  %i.if = load i32, ptr %i.ie, align 4, !tbaa !12
  %i.ig = add i32 %.sroa.14.0, %.sroa.22.1
  %i.ih = sub i32 %i.if, %i.ig
  %i.ii = load <2 x i32>, ptr %.0375720, align 4, !tbaa !12
  %i.ij = sub <2 x i32> %i.ii, %i.id
  store <2 x i32> %i.ij, ptr %i.j, align 16, !tbaa !12
  store i32 %i.ih, ptr %i.gi, align 8, !tbaa !12
  %i.ik = icmp ugt i32 %i.ic, 3
  br i1 %i.ik, label %bb.ad, label %insert_batch.exit

bb.ad:                                            ; preds = %.lr.ph.i
  %i.il = load i32, ptr %i.ie, align 4, !tbaa !12
  %i.im = load <2 x i32>, ptr %.0375720, align 4, !tbaa !12
  %i.in = getelementptr inbounds nuw i8, ptr %.0375720, i64 12 ; 2 uses
  %i.io = getelementptr inbounds nuw i8, ptr %.0375720, i64 20 ; 2 uses
  %i.ip = load i32, ptr %i.io, align 4, !tbaa !12
  %i.iq = sub i32 %i.ip, %i.il
  %i.ir = load <2 x i32>, ptr %i.in, align 4, !tbaa !12
  %i.is = sub <2 x i32> %i.ir, %i.im
  store <2 x i32> %i.is, ptr %i.gj, align 4, !tbaa !12
  store i32 %i.iq, ptr %i.gk, align 4, !tbaa !12
  %i.it = icmp ugt i32 %i.ic, 6
  br i1 %i.it, label %bb.ae, label %insert_batch.exit

bb.ae:                                            ; preds = %bb.ad
  %i.iu = load i32, ptr %i.io, align 4, !tbaa !12
  %i.iv = load <2 x i32>, ptr %i.in, align 4, !tbaa !12
  %i.iw = getelementptr inbounds nuw i8, ptr %.0375720, i64 24 ; 2 uses
  %i.ix = getelementptr inbounds nuw i8, ptr %.0375720, i64 32 ; 2 uses
  %i.iy = load i32, ptr %i.ix, align 4, !tbaa !12
  %i.iz = sub i32 %i.iy, %i.iu
  %i.ja = load <2 x i32>, ptr %i.iw, align 4, !tbaa !12
  %i.jb = sub <2 x i32> %i.ja, %i.iv
  store <2 x i32> %i.jb, ptr %i.gl, align 8, !tbaa !12
  store i32 %i.iz, ptr %i.gm, align 16, !tbaa !12
  %i.jc = icmp ugt i32 %i.ic, 9
  br i1 %i.jc, label %bb.af, label %insert_batch.exit

bb.af:                                            ; preds = %bb.ae
  %i.jd = load i32, ptr %i.ix, align 4, !tbaa !12
  %i.je = load <2 x i32>, ptr %i.iw, align 4, !tbaa !12
  %i.jf = getelementptr inbounds nuw i8, ptr %.0375720, i64 36 ; 2 uses
  %i.jg = getelementptr inbounds nuw i8, ptr %.0375720, i64 44 ; 2 uses
  %i.jh = load i32, ptr %i.jg, align 4, !tbaa !12
  %i.ji = sub i32 %i.jh, %i.jd
  %i.jj = load <2 x i32>, ptr %i.jf, align 4, !tbaa !12
  %i.jk = sub <2 x i32> %i.jj, %i.je
  store <2 x i32> %i.jk, ptr %i.gn, align 4, !tbaa !12
  store i32 %i.ji, ptr %i.go, align 4, !tbaa !12
  %i.jl = icmp ugt i32 %i.ic, 12
  br i1 %i.jl, label %bb.ag, label %insert_batch.exit

bb.ag:                                            ; preds = %bb.af
  %i.jm = load i32, ptr %i.jg, align 4, !tbaa !12
  %i.jn = load <2 x i32>, ptr %i.jf, align 4, !tbaa !12
  %i.jo = getelementptr inbounds nuw i8, ptr %.0375720, i64 48 ; 2 uses
  %i.jp = getelementptr inbounds nuw i8, ptr %.0375720, i64 56 ; 2 uses
  %i.jq = load i32, ptr %i.jp, align 4, !tbaa !12
  %i.jr = sub i32 %i.jq, %i.jm
  %i.js = load <2 x i32>, ptr %i.jo, align 4, !tbaa !12
  %i.jt = sub <2 x i32> %i.js, %i.jn
  store <2 x i32> %i.jt, ptr %i.gp, align 16, !tbaa !12
  store i32 %i.jr, ptr %i.gq, align 8, !tbaa !12
  %i.ju = icmp ugt i32 %i.ic, 15
  br i1 %i.ju, label %bb.ah, label %insert_batch.exit

bb.ah:                                            ; preds = %bb.ag
  %i.jv = load i32, ptr %i.jp, align 4, !tbaa !12
  %i.jw = load <2 x i32>, ptr %i.jo, align 4, !tbaa !12
  %i.jx = getelementptr inbounds nuw i8, ptr %.0375720, i64 60 ; 2 uses
  %i.jy = getelementptr inbounds nuw i8, ptr %.0375720, i64 68 ; 2 uses
  %i.jz = load i32, ptr %i.jy, align 4, !tbaa !12
  %i.ka = sub i32 %i.jz, %i.jv
  %i.kb = load <2 x i32>, ptr %i.jx, align 4, !tbaa !12
  %i.kc = sub <2 x i32> %i.kb, %i.jw
  store <2 x i32> %i.kc, ptr %i.gr, align 4, !tbaa !12
  store i32 %i.ka, ptr %i.gs, align 4, !tbaa !12
  %i.kd = icmp ugt i32 %i.ic, 18
  br i1 %i.kd, label %bb.ai, label %insert_batch.exit

bb.ai:                                            ; preds = %bb.ah
  %i.ke = load i32, ptr %i.jy, align 4, !tbaa !12
  %i.kf = load <2 x i32>, ptr %i.jx, align 4, !tbaa !12
  %i.kg = getelementptr inbounds nuw i8, ptr %.0375720, i64 72
  %i.kh = getelementptr inbounds nuw i8, ptr %.0375720, i64 80
  %i.ki = load i32, ptr %i.kh, align 4, !tbaa !12
  %i.kj = sub i32 %i.ki, %i.ke
  %i.kk = load <2 x i32>, ptr %i.kg, align 4, !tbaa !12
  %i.kl = sub <2 x i32> %i.kk, %i.kf
  store <2 x i32> %i.kl, ptr %i.gt, align 8, !tbaa !12
  store i32 %i.kj, ptr %i.gu, align 16, !tbaa !12
  br label %insert_batch.exit

insert_batch.exit:                                ; preds = %bb.ai, %bb.ah, %bb.ag, %bb.af, %bb.ae, %bb.ad, %.lr.ph.i
  %indvars.iv.next66.i.lcssa = phi i32 [ 3, %.lr.ph.i ], [ 6, %bb.ad ], [ 9, %bb.ae ], [ 12, %bb.af ], [ 15, %bb.ag ], [ 18, %bb.ah ], [ 21, %bb.ai ] ; 2 uses
  %3 = icmp eq ptr %.0375720, %1
  %.pre850 = add nsw i32 %.0387716, 3             ; 4 uses
  br i1 %3, label %is_quite_large.exit.thread, label %4

4:                                                ; preds = %insert_batch.exit
  %.not.i480 = icmp slt i32 %.pre850, %.1394
  br i1 %.not.i480, label %.preheader.i, label %.preheader643.preheader

.preheader.i:                                     ; preds = %4
  %i.km = sext i32 %.pre850 to i64
  %i.kn = getelementptr inbounds [4 x i8], ptr @magic, i64 %i.km ; 3 uses
  %i.ko = load i32, ptr %i.j, align 16, !tbaa !12 ; 4 uses
  %i.kp = icmp sgt i32 %i.ko, 0
  br i1 %i.kp, label %positive_int.exit.i, label %bb.aj

bb.aj:                                            ; preds = %.preheader.i
  %i.kq = icmp slt i32 %i.ko, 0
  br i1 %i.kq, label %bb.ak, label %positive_int.exit.thread.i

bb.ak:                                            ; preds = %bb.aj
  %i.kr = xor i32 %i.ko, -1
  br label %positive_int.exit.i

positive_int.exit.i:                              ; preds = %bb.ak, %.preheader.i
  %.sink18.i = phi i32 [ %i.kr, %bb.ak ], [ %i.ko, %.preheader.i ]
  %.sink17.i = phi i32 [ 2, %bb.ak ], [ -1, %.preheader.i ]
  %i.ks = shl nuw i32 %.sink18.i, 1
  %i.kt = add i32 %i.ks, %.sink17.i
  %i.ku = load i32, ptr %i.kn, align 4, !tbaa !12
  %i.kv = icmp ugt i32 %i.kt, %i.ku
  br i1 %i.kv, label %is_quite_large.exit.thread, label %positive_int.exit.thread.i

positive_int.exit.thread.i:                       ; preds = %positive_int.exit.i, %bb.aj
  %i.kw = load i32, ptr %i.fu, align 4, !tbaa !12 ; 4 uses
  %i.kx = icmp sgt i32 %i.kw, 0
  br i1 %i.kx, label %positive_int.exit.1.i, label %bb.al

bb.al:                                            ; preds = %positive_int.exit.thread.i
  %i.ky = icmp slt i32 %i.kw, 0
  br i1 %i.ky, label %bb.am, label %positive_int.exit.thread.1.i

bb.am:                                            ; preds = %bb.al
  %i.kz = xor i32 %i.kw, -1
  br label %positive_int.exit.1.i

positive_int.exit.1.i:                            ; preds = %bb.am, %positive_int.exit.thread.i
  %.sink20.i = phi i32 [ %i.kz, %bb.am ], [ %i.kw, %positive_int.exit.thread.i ]
  %.sink19.i = phi i32 [ 2, %bb.am ], [ -1, %positive_int.exit.thread.i ]
  %i.la = shl nuw i32 %.sink20.i, 1
  %i.lb = add i32 %i.la, %.sink19.i
  %i.lc = load i32, ptr %i.kn, align 4, !tbaa !12
  %i.ld = icmp ugt i32 %i.lb, %i.lc
  br i1 %i.ld, label %is_quite_large.exit.thread, label %positive_int.exit.thread.1.i

positive_int.exit.thread.1.i:                     ; preds = %positive_int.exit.1.i, %bb.al
  %i.le = load i32, ptr %i.fv, align 8, !tbaa !12 ; 4 uses
  %i.lf = icmp sgt i32 %i.le, 0
  br i1 %i.lf, label %positive_int.exit.2.i, label %bb.an

bb.an:                                            ; preds = %positive_int.exit.thread.1.i
  %i.lg = icmp slt i32 %i.le, 0
  br i1 %i.lg, label %bb.ao, label %is_quite_large.exit

bb.ao:                                            ; preds = %bb.an
  %i.lh = xor i32 %i.le, -1
  br label %positive_int.exit.2.i

positive_int.exit.2.i:                            ; preds = %bb.ao, %positive_int.exit.thread.1.i
  %.sink22.i = phi i32 [ %i.lh, %bb.ao ], [ %i.le, %positive_int.exit.thread.1.i ]
  %.sink21.i = phi i32 [ 2, %bb.ao ], [ -1, %positive_int.exit.thread.1.i ]
  %i.li = shl nuw i32 %.sink22.i, 1
  %i.lj = add i32 %i.li, %.sink21.i
  %i.lk = load i32, ptr %i.kn, align 4, !tbaa !12
  %i.ll = icmp ugt i32 %i.lj, %i.lk
  %i.lm = icmp ne i32 %.0366722, 0
  %or.cond622 = select i1 %i.ll, i1 true, i1 %i.lm
  br i1 %or.cond622, label %is_quite_large.exit.thread, label %iter.check1262

is_quite_large.exit:                              ; preds = %bb.an
  %.old.not = icmp eq i32 %.0366722, 0
  br i1 %.old.not, label %iter.check1262, label %is_quite_large.exit.thread

is_quite_large.exit.thread:                       ; preds = %insert_batch.exit, %positive_int.exit.2.i, %positive_int.exit.1.i, %positive_int.exit.i, %is_quite_large.exit
  %.not.i481 = icmp slt i32 %.pre850, %.1394
  br i1 %.not.i481, label %.preheader.i483, label %.preheader643.preheader

.preheader.i483:                                  ; preds = %is_quite_large.exit.thread
  %i.ln = sext i32 %.pre850 to i64
  %i.lo = getelementptr inbounds [4 x i8], ptr @magic, i64 %i.ln ; 6 uses
  %i.lp = load i32, ptr %i.fw, align 4, !tbaa !12 ; 4 uses
  %i.lq = icmp sgt i32 %i.lp, 0
  br i1 %i.lq, label %positive_int.exit.i493, label %bb.ap

bb.ap:                                            ; preds = %.preheader.i483
  %i.lr = icmp slt i32 %i.lp, 0
  br i1 %i.lr, label %bb.aq, label %positive_int.exit.thread.i484

bb.aq:                                            ; preds = %bb.ap
  %i.ls = xor i32 %i.lp, -1
  br label %positive_int.exit.i493

positive_int.exit.i493:                           ; preds = %bb.aq, %.preheader.i483
  %.sink18.i494 = phi i32 [ %i.ls, %bb.aq ], [ %i.lp, %.preheader.i483 ]
  %.sink17.i495 = phi i32 [ 2, %bb.aq ], [ -1, %.preheader.i483 ]
  %i.lt = shl nuw i32 %.sink18.i494, 1
  %i.lu = add i32 %i.lt, %.sink17.i495
  %i.lv = load i32, ptr %i.lo, align 4, !tbaa !12
  %i.lw = icmp ugt i32 %i.lu, %i.lv
  br i1 %i.lw, label %.preheader643.preheader, label %positive_int.exit.thread.i484

positive_int.exit.thread.i484:                    ; preds = %positive_int.exit.i493, %bb.ap
  %i.lx = load i32, ptr %i.fx, align 16, !tbaa !12 ; 4 uses
  %i.ly = icmp sgt i32 %i.lx, 0
  br i1 %i.ly, label %positive_int.exit.1.i490, label %bb.ar

bb.ar:                                            ; preds = %positive_int.exit.thread.i484
  %i.lz = icmp slt i32 %i.lx, 0
  br i1 %i.lz, label %bb.as, label %positive_int.exit.thread.1.i485

bb.as:                                            ; preds = %bb.ar
  %i.ma = xor i32 %i.lx, -1
  br label %positive_int.exit.1.i490

positive_int.exit.1.i490:                         ; preds = %bb.as, %positive_int.exit.thread.i484
  %.sink20.i491 = phi i32 [ %i.ma, %bb.as ], [ %i.lx, %positive_int.exit.thread.i484 ]
  %.sink19.i492 = phi i32 [ 2, %bb.as ], [ -1, %positive_int.exit.thread.i484 ]
  %i.mb = shl nuw i32 %.sink20.i491, 1
  %i.mc = add i32 %i.mb, %.sink19.i492
  %i.md = load i32, ptr %i.lo, align 4, !tbaa !12
  %i.me = icmp ugt i32 %i.mc, %i.md
  br i1 %i.me, label %.preheader643.preheader, label %positive_int.exit.thread.1.i485

positive_int.exit.thread.1.i485:                  ; preds = %positive_int.exit.1.i490, %bb.ar
  %i.mf = load i32, ptr %i.fy, align 4, !tbaa !12 ; 4 uses
  %i.mg = icmp sgt i32 %i.mf, 0
  br i1 %i.mg, label %positive_int.exit.2.i487, label %bb.at

bb.at:                                            ; preds = %positive_int.exit.thread.1.i485
  %i.mh = icmp slt i32 %i.mf, 0
  br i1 %i.mh, label %bb.au, label %.preheader.i499

bb.au:                                            ; preds = %bb.at
  %i.mi = xor i32 %i.mf, -1
  br label %positive_int.exit.2.i487

positive_int.exit.2.i487:                         ; preds = %bb.au, %positive_int.exit.thread.1.i485
  %.sink22.i488 = phi i32 [ %i.mi, %bb.au ], [ %i.mf, %positive_int.exit.thread.1.i485 ]
  %.sink21.i489 = phi i32 [ 2, %bb.au ], [ -1, %positive_int.exit.thread.1.i485 ]
  %i.mj = shl nuw i32 %.sink22.i488, 1
  %i.mk = add i32 %i.mj, %.sink21.i489
  %i.ml = load i32, ptr %i.lo, align 4, !tbaa !12
  %i.mm = icmp ugt i32 %i.mk, %i.ml
  br i1 %i.mm, label %.preheader643.preheader, label %.preheader.i499

.preheader.i499:                                  ; preds = %bb.at, %positive_int.exit.2.i487
  %i.mn = load i32, ptr %i.fz, align 8, !tbaa !12 ; 4 uses
  %i.mo = icmp sgt i32 %i.mn, 0
  br i1 %i.mo, label %positive_int.exit.i509, label %bb.av

bb.av:                                            ; preds = %.preheader.i499
  %i.mp = icmp slt i32 %i.mn, 0
  br i1 %i.mp, label %bb.aw, label %positive_int.exit.thread.i500

bb.aw:                                            ; preds = %bb.av
  %i.mq = xor i32 %i.mn, -1
  br label %positive_int.exit.i509

positive_int.exit.i509:                           ; preds = %bb.aw, %.preheader.i499
  %.sink18.i510 = phi i32 [ %i.mq, %bb.aw ], [ %i.mn, %.preheader.i499 ]
  %.sink17.i511 = phi i32 [ 2, %bb.aw ], [ -1, %.preheader.i499 ]
  %i.mr = shl nuw i32 %.sink18.i510, 1
  %i.ms = add i32 %i.mr, %.sink17.i511
  %i.mt = load i32, ptr %i.lo, align 4, !tbaa !12
  %i.mu = icmp ugt i32 %i.ms, %i.mt
  br i1 %i.mu, label %.preheader643.preheader, label %positive_int.exit.thread.i500

positive_int.exit.thread.i500:                    ; preds = %positive_int.exit.i509, %bb.av
  %i.mv = load i32, ptr %i.ga, align 4, !tbaa !12 ; 4 uses
  %i.mw = icmp sgt i32 %i.mv, 0
  br i1 %i.mw, label %positive_int.exit.1.i506, label %bb.ax

bb.ax:                                            ; preds = %positive_int.exit.thread.i500
  %i.mx = icmp slt i32 %i.mv, 0
  br i1 %i.mx, label %bb.ay, label %positive_int.exit.thread.1.i501

bb.ay:                                            ; preds = %bb.ax
  %i.my = xor i32 %i.mv, -1
  br label %positive_int.exit.1.i506

positive_int.exit.1.i506:                         ; preds = %bb.ay, %positive_int.exit.thread.i500
  %.sink20.i507 = phi i32 [ %i.my, %bb.ay ], [ %i.mv, %positive_int.exit.thread.i500 ]
  %.sink19.i508 = phi i32 [ 2, %bb.ay ], [ -1, %positive_int.exit.thread.i500 ]
  %i.mz = shl nuw i32 %.sink20.i507, 1
  %i.na = add i32 %i.mz, %.sink19.i508
  %i.nb = load i32, ptr %i.lo, align 4, !tbaa !12
  %i.nc = icmp ugt i32 %i.na, %i.nb
  br i1 %i.nc, label %.preheader643.preheader, label %positive_int.exit.thread.1.i501

positive_int.exit.thread.1.i501:                  ; preds = %positive_int.exit.1.i506, %bb.ax
  %i.nd = load i32, ptr %i.gb, align 16, !tbaa !12 ; 4 uses
  %i.ne = icmp sgt i32 %i.nd, 0
  br i1 %i.ne, label %positive_int.exit.2.i503, label %bb.az

bb.az:                                            ; preds = %positive_int.exit.thread.1.i501
  %i.nf = icmp slt i32 %i.nd, 0
  br i1 %i.nf, label %bb.ba, label %is_quite_large.exit512

bb.ba:                                            ; preds = %bb.az
  %i.ng = xor i32 %i.nd, -1
end_hunk_0
begin_hunk_1_@Ptngc_pack_array_xtc2:bb.a
positive_int.exit.thread40.1.1.i.i:               ; preds = %bb.bh
  %i.pl = xor i32 %i.ox, -1
  %i.pm = shl nuw nsw i32 %i.pl, 1
  %i.pn = add nuw nsw i32 %i.pm, 2
  %spec.select146.i.i = call i32 @llvm.umax.i32(i32 %i.pn, i32 %.232.164134.i.i)
  br label %positive_int.exit34.1.1.i.i

positive_int.exit.1.1.i.i:                        ; preds = %positive_int.exit38.170.i.i
  %i.po = shl nuw i32 %i.ox, 1
  %i.pp = add i32 %i.po, -1
  %spec.select147.i.i = call i32 @llvm.umax.i32(i32 %i.pp, i32 %.232.164134.i.i)
  br label %positive_int.exit34.1.1.i.i

positive_int.exit34.1.1.i.i:                      ; preds = %positive_int.exit.1.1.i.i, %positive_int.exit.thread40.1.1.i.i, %bb.bh
  %.232.1.1.i.i = phi i32 [ %spec.select146.i.i, %positive_int.exit.thread40.1.1.i.i ], [ %spec.select147.i.i, %positive_int.exit.1.1.i.i ], [ %.232.164134.i.i, %bb.bh ] ; 3 uses
  %i.pq = icmp sgt i32 %i.oy, 0
  br i1 %i.pq, label %positive_int.exit36.1.1.i.i, label %bb.bi

bb.bi:                                            ; preds = %positive_int.exit34.1.1.i.i
  %i.pr = icmp slt i32 %i.oy, 0
  br i1 %i.pr, label %positive_int.exit36.thread43.1.1.i.i, label %positive_int.exit38.1.1.i.i

positive_int.exit36.thread43.1.1.i.i:             ; preds = %bb.bi
  %i.ps = xor i32 %i.oy, -1
  %i.pt = shl nuw nsw i32 %i.ps, 1
  %i.pu = add nuw nsw i32 %i.pt, 2
  %spec.select148.i.i = call i32 @llvm.umax.i32(i32 %i.pu, i32 %.2.169.i.i)
  br label %positive_int.exit38.1.1.i.i

positive_int.exit36.1.1.i.i:                      ; preds = %positive_int.exit34.1.1.i.i
  %i.pv = shl nuw i32 %i.oy, 1
  %i.pw = add i32 %i.pv, -1
  %spec.select149.i.i = call i32 @llvm.umax.i32(i32 %i.pw, i32 %.2.169.i.i)
  br label %positive_int.exit38.1.1.i.i

positive_int.exit38.1.1.i.i:                      ; preds = %positive_int.exit36.1.1.i.i, %positive_int.exit36.thread43.1.1.i.i, %bb.bi
  %.2.1.1.i.i = phi i32 [ %spec.select148.i.i, %positive_int.exit36.thread43.1.1.i.i ], [ %spec.select149.i.i, %positive_int.exit36.1.1.i.i ], [ %.2.169.i.i, %bb.bi ] ; 3 uses
  %i.px = getelementptr inbounds nuw i8, ptr %.0375720, i64 8 ; 2 uses
  %i.py = load i32, ptr %i.px, align 4, !tbaa !12 ; 3 uses
  %i.pz = getelementptr inbounds nuw i8, ptr %.0375720, i64 20 ; 2 uses
  %i.qa = load i32, ptr %i.pz, align 4, !tbaa !12 ; 3 uses
  %i.qb = sub nsw i32 %i.qa, %i.py                ; 6 uses
  %i.qc = getelementptr inbounds nuw i8, ptr %.0375720, i64 32 ; 2 uses
  %i.qd = load i32, ptr %i.qc, align 4, !tbaa !12 ; 2 uses
  %i.qe = sub nsw i32 %i.qd, %i.qa                ; 4 uses
  %i.qf = sub nsw i32 %i.qd, %i.py                ; 4 uses
  %i.qg = icmp sgt i32 %i.qb, 0
  br i1 %i.qg, label %positive_int.exit.2.i.i, label %bb.bj

bb.bj:                                            ; preds = %positive_int.exit38.1.1.i.i
  %i.qh = icmp slt i32 %i.qb, 0
  br i1 %i.qh, label %positive_int.exit.thread40.2.i.i, label %bb.bk

positive_int.exit.thread40.2.i.i:                 ; preds = %bb.bj
  %i.qi = xor i32 %i.qb, -1
  %i.qj = shl nuw nsw i32 %i.qi, 1
  %i.qk = add nuw nsw i32 %i.qj, 2
  %spec.select150.i.i = call i32 @llvm.umax.i32(i32 %i.qk, i32 %.232.1.1.i.i)
  %i.ql = shl i32 %i.qb, 1
  %i.qm = xor i32 %i.ql, -1
  %spec.select158.i.i = call i32 @llvm.umax.i32(i32 %.2.1.1.i.i, i32 %i.qm)
  br label %positive_int.exit38.2.i.i

positive_int.exit.2.i.i:                          ; preds = %positive_int.exit38.1.1.i.i
  %i.qn = shl nuw i32 %i.qb, 1
  %i.qo = add i32 %i.qn, -1
  %spec.select151.i.i = call i32 @llvm.umax.i32(i32 %i.qo, i32 %.232.1.1.i.i)
  br label %bb.bk

bb.bk:                                            ; preds = %positive_int.exit.2.i.i, %bb.bj
  %.232.2.ph.i.i = phi i32 [ %.232.1.1.i.i, %bb.bj ], [ %spec.select151.i.i, %positive_int.exit.2.i.i ] ; 2 uses
  %.not129.i.i = icmp eq i32 %i.qa, %i.py
  br i1 %.not129.i.i, label %positive_int.exit38.2.i.i, label %positive_int.exit36.thread43.2.i.i

positive_int.exit36.thread43.2.i.i:               ; preds = %bb.bk
  %i.qp = shl nuw i32 %i.qb, 1
  %spec.select152.i.i = call i32 @llvm.umax.i32(i32 %i.qp, i32 %.2.1.1.i.i)
  br label %positive_int.exit38.2.i.i

positive_int.exit38.2.i.i:                        ; preds = %positive_int.exit36.thread43.2.i.i, %bb.bk, %positive_int.exit.thread40.2.i.i
  %.232.2137.i.i = phi i32 [ %.232.2.ph.i.i, %positive_int.exit36.thread43.2.i.i ], [ %spec.select150.i.i, %positive_int.exit.thread40.2.i.i ], [ %.232.2.ph.i.i, %bb.bk ] ; 3 uses
  %.2.2.i.i = phi i32 [ %spec.select152.i.i, %positive_int.exit36.thread43.2.i.i ], [ %spec.select158.i.i, %positive_int.exit.thread40.2.i.i ], [ %.2.1.1.i.i, %bb.bk ] ; 3 uses
  %i.qq = icmp sgt i32 %i.qe, 0
  br i1 %i.qq, label %positive_int.exit.1.2.i.i, label %bb.bl

bb.bl:                                            ; preds = %positive_int.exit38.2.i.i
  %i.qr = icmp slt i32 %i.qe, 0
  br i1 %i.qr, label %positive_int.exit.thread40.1.2.i.i, label %positive_int.exit34.1.2.i.i

positive_int.exit.thread40.1.2.i.i:               ; preds = %bb.bl
  %i.qs = xor i32 %i.qe, -1
  %i.qt = shl nuw nsw i32 %i.qs, 1
  %i.qu = add nuw nsw i32 %i.qt, 2
  %spec.select153.i.i = call i32 @llvm.umax.i32(i32 %i.qu, i32 %.232.2137.i.i)
  br label %positive_int.exit34.1.2.i.i

positive_int.exit.1.2.i.i:                        ; preds = %positive_int.exit38.2.i.i
  %i.qv = shl nuw i32 %i.qe, 1
  %i.qw = add i32 %i.qv, -1
  %spec.select154.i.i = call i32 @llvm.umax.i32(i32 %i.qw, i32 %.232.2137.i.i)
  br label %positive_int.exit34.1.2.i.i

positive_int.exit34.1.2.i.i:                      ; preds = %positive_int.exit.1.2.i.i, %positive_int.exit.thread40.1.2.i.i, %bb.bl
  %.232.1.2.i.i = phi i32 [ %spec.select153.i.i, %positive_int.exit.thread40.1.2.i.i ], [ %spec.select154.i.i, %positive_int.exit.1.2.i.i ], [ %.232.2137.i.i, %bb.bl ]
  %i.qx = icmp sgt i32 %i.qf, 0
  br i1 %i.qx, label %positive_int.exit36.1.2.i.i, label %bb.bm

bb.bm:                                            ; preds = %positive_int.exit34.1.2.i.i
  %i.qy = icmp slt i32 %i.qf, 0
  br i1 %i.qy, label %positive_int.exit36.thread43.1.2.i.i, label %swap_is_better.exit.i

positive_int.exit36.thread43.1.2.i.i:             ; preds = %bb.bm
  %i.qz = xor i32 %i.qf, -1
  %i.ra = shl nuw nsw i32 %i.qz, 1
  %i.rb = add nuw nsw i32 %i.ra, 2
  %spec.select155.i.i = call i32 @llvm.umax.i32(i32 %i.rb, i32 %.2.2.i.i)
  br label %swap_is_better.exit.i

positive_int.exit36.1.2.i.i:                      ; preds = %positive_int.exit34.1.2.i.i
  %i.rc = shl nuw i32 %i.qf, 1
  %i.rd = add i32 %i.rc, -1
  %spec.select156.i.i = call i32 @llvm.umax.i32(i32 %i.rd, i32 %.2.2.i.i)
  br label %swap_is_better.exit.i

swap_is_better.exit.i:                            ; preds = %positive_int.exit36.1.2.i.i, %positive_int.exit36.thread43.1.2.i.i, %bb.bm
  %.2.1.2.i.i = phi i32 [ %spec.select155.i.i, %positive_int.exit36.thread43.1.2.i.i ], [ %spec.select156.i.i, %positive_int.exit36.1.2.i.i ], [ %.2.2.i.i, %bb.bm ]
  %spec.store.select.i.i = call i32 @llvm.umax.i32(i32 %.232.1.2.i.i, i32 1) ; 4 uses
  %spec.store.select1.i.i = call i32 @llvm.umax.i32(i32 %.2.1.2.i.i, i32 1) ; 4 uses
  %i.re = icmp slt i32 %spec.store.select1.i.i, %spec.store.select.i.i
  br i1 %i.re, label %bb.bn, label %bb.bo

bb.bn:                                            ; preds = %swap_is_better.exit.i
  %i.rf = sitofp i32 %spec.store.select1.i.i to double
  %i.rg = sitofp i32 %spec.store.select.i.i to double
  %i.rh = fdiv double %i.rf, %i.rg
  %i.ri = call double @llvm.fabs.f64(double %i.rh)
  %i.rj = fcmp olt double %i.ri, f0x3FEC823E074EC129
  br i1 %i.rj, label %bb.bq, label %bb.bo

bb.bo:                                            ; preds = %bb.bn, %swap_is_better.exit.i
  %i.rk = icmp slt i32 %spec.store.select.i.i, %spec.store.select1.i.i
  br i1 %i.rk, label %bb.bp, label %swapdecide.exit

bb.bp:                                            ; preds = %bb.bo
  %i.rl = sitofp i32 %spec.store.select.i.i to double
  %i.rm = sitofp i32 %spec.store.select1.i.i to double
  %i.rn = fdiv double %i.rl, %i.rm
  %i.ro = call double @llvm.fabs.f64(double %i.rn)
  %i.rp = fcmp olt double %i.ro, f0x3FEC823E074EC129
  br i1 %i.rp, label %bb.br, label %swapdecide.exit

bb.bq:                                            ; preds = %bb.bn
  %.not12.i = icmp eq i32 %.0715, 0
  br i1 %.not12.i, label %bb.bs, label %.critedge433

bb.br:                                            ; preds = %bb.bp
  %.not.i513 = icmp eq i32 %.0715, 0
  br i1 %.not.i513, label %.preheader643.preheader, label %bb.bs

bb.bs:                                            ; preds = %bb.br, %bb.bq
  %storemerge.i = phi i32 [ 1, %bb.bq ], [ 0, %bb.br ]
  call void @Ptngc_writebits(ptr noundef nonnull %0, i32 noundef 14, i32 noundef 5, ptr noundef nonnull %i.e) #11
  br label %swapdecide.exit

swapdecide.exit:                                  ; preds = %bb.bo, %bb.bp, %bb.bs
  %.4608 = phi i32 [ %storemerge.i, %bb.bs ], [ %.0715, %bb.bp ], [ %.0715, %bb.bo ]
  %.not425 = icmp eq i32 %.4608, 0
  br i1 %.not425, label %.preheader643.preheader, label %.critedge433

.critedge433:                                     ; preds = %bb.bq, %swapdecide.exit
  %i.rq = load i32, ptr %.0375720, align 4, !tbaa !12 ; 2 uses
  %i.rr = load i32, ptr %i.nm, align 4, !tbaa !12 ; 2 uses
  %.neg = sub nsw i32 %i.rq, %i.rr
  %i.rs = load i32, ptr %i.np, align 4, !tbaa !12
  %i.rt = sub nsw i32 %i.rr, %.sroa.0825.1
  %i.ru = sub nsw i32 %i.rs, %i.rq
  store i32 %i.rt, ptr %i.j, align 16, !tbaa !12
  store i32 %.neg, ptr %i.fw, align 4, !tbaa !12
  store i32 %i.ru, ptr %i.fz, align 8, !tbaa !12
  %i.rv = load i32, ptr %i.oq, align 4, !tbaa !12 ; 2 uses
  %i.rw = load i32, ptr %i.os, align 4, !tbaa !12 ; 2 uses
  %.neg.1 = sub nsw i32 %i.rv, %i.rw
  %i.rx = load i32, ptr %i.ov, align 4, !tbaa !12
  %i.ry = sub nsw i32 %i.rw, %.sroa.12.1
  %i.rz = sub nsw i32 %i.rx, %i.rv
  store i32 %i.ry, ptr %i.fu, align 4, !tbaa !12
  store i32 %.neg.1, ptr %i.fx, align 16, !tbaa !12
  store i32 %i.rz, ptr %i.ga, align 4, !tbaa !12
  %i.sa = load i32, ptr %i.px, align 4, !tbaa !12 ; 2 uses
  %i.sb = load i32, ptr %i.pz, align 4, !tbaa !12 ; 2 uses
  %.neg.2 = sub nsw i32 %i.sa, %i.sb
  %i.sc = load i32, ptr %i.qc, align 4, !tbaa !12
  %i.sd = sub nsw i32 %i.sb, %.sroa.22.1          ; 2 uses
  %i.se = sub nsw i32 %i.sc, %i.sa
  store i32 %i.sd, ptr %i.fv, align 8, !tbaa !12
  store i32 %.neg.2, ptr %i.fy, align 4, !tbaa !12
  store i32 %i.se, ptr %i.gb, align 16, !tbaa !12
  %i.sf = load <2 x i32>, ptr %i.j, align 16, !tbaa !12
  br label %.loopexit642

.preheader643.preheader:                          ; preds = %4, %positive_int.exit.i509, %positive_int.exit.2.i503, %positive_int.exit.1.i490, %positive_int.exit.i493, %is_quite_large.exit.thread, %positive_int.exit.1.i506, %positive_int.exit.2.i487, %bb.br, %swapdecide.exit
  %.1607920 = phi i32 [ %.0715, %4 ], [ 0, %swapdecide.exit ], [ %.0715, %positive_int.exit.i509 ], [ %.0715, %positive_int.exit.2.i503 ], [ %.0715, %positive_int.exit.1.i490 ], [ %.0715, %positive_int.exit.i493 ], [ %.0715, %is_quite_large.exit.thread ], [ %.0715, %positive_int.exit.1.i506 ], [ %.0715, %positive_int.exit.2.i487 ], [ 0, %bb.br ]
  %i.sg = load <2 x i32>, ptr %.0375720, align 4, !tbaa !12
  %i.sh = sub nsw <2 x i32> %i.sg, %i.cc
  %i.si = getelementptr inbounds nuw i8, ptr %.0375720, i64 8
  %i.sj = load i32, ptr %i.si, align 4, !tbaa !12
  %i.sk = sub nsw i32 %i.sj, %.sroa.22.1
  br label %.loopexit642

.loopexit642:                                     ; preds = %.preheader643.preheader, %.critedge433
  %or.cond3923 = phi i1 [ true, %.critedge433 ], [ false, %.preheader643.preheader ] ; 4 uses
  %.0363921 = phi i32 [ 2, %.critedge433 ], [ 0, %.preheader643.preheader ] ; 4 uses
  %.not.i516919 = phi i1 [ false, %.critedge433 ], [ true, %.preheader643.preheader ] ; 2 uses
  %.1607917 = phi i32 [ 1, %.critedge433 ], [ %.1607920, %.preheader643.preheader ] ; 3 uses
  %.sroa.14.1 = phi i32 [ %i.sd, %.critedge433 ], [ %i.sk, %.preheader643.preheader ] ; 6 uses
  %i.sl = phi <2 x i32> [ %i.sf, %.critedge433 ], [ %i.sh, %.preheader643.preheader ] ; 7 uses
  %i.sm = load i32, ptr %i.h, align 4, !tbaa !12  ; 2 uses
  %i.sn = icmp eq i32 %i.sm, 18
  br i1 %i.sn, label %bb.bt, label %buffer_large.exit515

bb.bt:                                            ; preds = %.loopexit642
  call void @Ptngc_writebits(ptr noundef nonnull %0, i32 noundef 15, i32 noundef 5, ptr noundef nonnull %i.e) #11
  call void @Ptngc_writebits(ptr noundef nonnull %0, i32 noundef 15, i32 noundef 4, ptr noundef nonnull %i.e) #11
  br label %bb.bu

bb.bu:                                            ; preds = %.preheader.i590.preheader, %bb.bt
  %indvars.iv.i567 = phi i64 [ 0, %bb.bt ], [ %indvars.iv.next.i569, %.preheader.i590.preheader ] ; 2 uses
  %.idx.i568 = mul nuw nsw i64 %indvars.iv.i567, 12
  %i.so = getelementptr inbounds nuw i8, ptr %i.i, i64 %.idx.i568 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #11
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(76) %i.a, i8 0, i64 76, i1 false)
  %i.sp = load i32, ptr %i.so, align 4, !tbaa !12
  call void @Ptngc_largeint_add(i32 noundef %i.sp, ptr noundef nonnull %i.a, i32 noundef 19) #11
  %i.sq = load i32, ptr %i.cq, align 4, !tbaa !12
  call void @Ptngc_largeint_mul(i32 noundef %i.sq, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, i32 noundef 19) #11
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(76) %i.a, ptr noundef nonnull align 16 dereferenceable(76) %i.b, i64 76, i1 false)
  %i.sr = getelementptr inbounds nuw i8, ptr %i.so, i64 4
  %i.ss = load i32, ptr %i.sr, align 4, !tbaa !12
  call void @Ptngc_largeint_add(i32 noundef %i.ss, ptr noundef nonnull %i.a, i32 noundef 19) #11
  %i.st = load i32, ptr %i.cz, align 4, !tbaa !12
  call void @Ptngc_largeint_mul(i32 noundef %i.st, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, i32 noundef 19) #11
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(76) %i.a, ptr noundef nonnull align 16 dereferenceable(76) %i.b, i64 76, i1 false)
  %i.su = getelementptr inbounds nuw i8, ptr %i.so, i64 8
  %i.sv = load i32, ptr %i.su, align 4, !tbaa !12
  call void @Ptngc_largeint_add(i32 noundef %i.sv, ptr noundef nonnull %i.a, i32 noundef 19) #11
  %i.sw = load i32, ptr %i.gc, align 8, !tbaa !12
  %.not.i588 = icmp eq i32 %i.sw, 0
  br i1 %.not.i588, label %.preheader.i590.preheader, label %bb.bv

.preheader.i590.preheader:                        ; preds = %bb.bu
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(72) %i.k, ptr noundef nonnull align 16 dereferenceable(72) %i.a, i64 72, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  call void @Ptngc_writemanybits(ptr noundef nonnull %0, ptr noundef nonnull %i.k, i32 noundef %i.dc, ptr noundef nonnull %i.e) #11
  %indvars.iv.next.i569 = add nuw nsw i64 %indvars.iv.i567, 1 ; 2 uses
  %exitcond.not.i570 = icmp eq i64 %indvars.iv.next.i569, 18
  br i1 %exitcond.not.i570, label %buffer_large.exit515, label %bb.bu, !llvm.loop !1

bb.bv:                                            ; preds = %bb.bu
  %i.sx = load ptr, ptr @stderr, align 8, !tbaa !18
  %fwrite.i589 = call i64 @fwrite(ptr nonnull @.str.3, i64 47, i64 1, ptr %i.sx) #12 ; 0 uses
  call void @exit(i32 noundef 1) #13
  unreachable

buffer_large.exit515:                             ; preds = %.preheader.i590.preheader, %.loopexit642
  %i.sy = phi i32 [ %i.sm, %.loopexit642 ], [ 0, %.preheader.i590.preheader ] ; 2 uses
  %i.sz = mul nsw i32 %i.sy, 3
  %i.ta = sext i32 %i.sz to i64
  %i.tb = getelementptr [4 x i8], ptr %i.i, i64 %i.ta ; 2 uses
  store <2 x i32> %i.sl, ptr %i.tb, align 4, !tbaa !12
  %i.tc = getelementptr i8, ptr %i.tb, i64 8
  store i32 %.sroa.14.1, ptr %i.tc, align 4, !tbaa !12
  %i.td = add nsw i32 %i.sy, 1
  store i32 %i.td, ptr %i.h, align 4, !tbaa !12
  %i.te = getelementptr inbounds nuw i8, ptr %.0375720, i64 12 ; 17 uses
  %i.tf = add nsw i32 %.0370721, -1               ; 4 uses
  br i1 %or.cond3923, label %.preheader635.preheader, label %.loopexit

.preheader635.preheader:                          ; preds = %buffer_large.exit515
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(12) %i.j, ptr noundef nonnull align 4 dereferenceable(12) %i.fw, i64 12, i1 false), !tbaa !12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.fw, ptr noundef nonnull align 8 dereferenceable(12) %i.fz, i64 12, i1 false), !tbaa !12
  br label %.loopexit

.loopexit:                                        ; preds = %.preheader635.preheader, %buffer_large.exit515
  %i.tg = mul nuw nsw i32 %.0363921, 3            ; 3 uses
  br i1 %.not.i516919, label %.loopexit.i, label %.preheader.preheader.i

.preheader.preheader.i:                           ; preds = %.loopexit
  %wide.vec1281 = load <6 x i32>, ptr %i.j, align 16, !tbaa !12 ; 3 uses
  %strided.vec1284.a = shufflevector <6 x i32> %wide.vec1281, <6 x i32> poison, <2 x i32> <i32 2, i32 5>
  %i.th = insertelement <2 x i32> <i32 poison, i32 0>, i32 %.sroa.14.1, i64 0
  %i.ti = add <2 x i32> %strided.vec1284.a, %i.th
  %strided.vec1283.a = shufflevector <6 x i32> %wide.vec1281, <6 x i32> poison, <2 x i32> <i32 1, i32 4>
  %i.tj = shufflevector <2 x i32> <i32 poison, i32 0>, <2 x i32> %i.sl, <2 x i32> <i32 3, i32 1>
  %i.tk = add <2 x i32> %strided.vec1283.a, %i.tj
  %strided.vec1282 = shufflevector <6 x i32> %wide.vec1281, <6 x i32> poison, <2 x i32> <i32 0, i32 3>
  %i.tl = insertelement <2 x i32> %i.sl, i32 0, i64 1
  %i.tm = add <2 x i32> %strided.vec1282, %i.tl
  %i.tn = call i32 @llvm.vector.reduce.add.v2i32(<2 x i32> %i.tm)
  %i.to = call i32 @llvm.vector.reduce.add.v2i32(<2 x i32> %i.tk)
  %i.tp = call i32 @llvm.vector.reduce.add.v2i32(<2 x i32> %i.ti)
  %i.tq = insertelement <2 x i32> poison, i32 %i.tn, i64 0
  %i.tr = insertelement <2 x i32> %i.tq, i32 %i.to, i64 1
  br label %.loopexit.i

.loopexit.i:                                      ; preds = %.preheader.preheader.i, %.loopexit
  %.sroa.12.1.i = phi i32 [ %.sroa.14.1, %.loopexit ], [ %i.tp, %.preheader.preheader.i ]
  %i.ts = phi <2 x i32> [ %i.sl, %.loopexit ], [ %i.tr, %.preheader.preheader.i ]
  %i.tt = mul i32 %i.tf, 3
  %invariant.umin.i520 = call i32 @llvm.umin.i32(i32 %i.tt, i32 21) ; 2 uses
  %i.tu = icmp samesign ult i32 %i.tg, %invariant.umin.i520
  br i1 %i.tu, label %.lr.ph.i522, label %insert_batch.exit530

.lr.ph.i522:                                      ; preds = %.loopexit.i
  %i.tv = zext nneg i32 %i.tg to i64              ; 16 uses
  %i.tw = zext nneg i32 %invariant.umin.i520 to i64 ; 6 uses
  %i.tx = getelementptr inbounds nuw [4 x i8], ptr %i.te, i64 %i.tv
  %i.ty = add <2 x i32> %i.ts, %i.gh
  %i.tz = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %i.tv
  %i.ua = load <2 x i32>, ptr %i.tx, align 4, !tbaa !12 ; 2 uses
  %i.ub = sub <2 x i32> %i.ua, %i.ty
  store <2 x i32> %i.ub, ptr %i.tz, align 8, !tbaa !12
  %i.uc = add nuw nsw i64 %i.tv, 2                ; 2 uses
  %i.ud = getelementptr inbounds nuw [4 x i8], ptr %i.te, i64 %i.uc
  %i.ue = load i32, ptr %i.ud, align 4, !tbaa !12 ; 2 uses
  %i.uf = add i32 %.sroa.12.1.i, %.sroa.22.1
  %i.ug = sub i32 %i.ue, %i.uf
  %i.uh = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %i.uc
  store i32 %i.ug, ptr %i.uh, align 8, !tbaa !12
  %indvars.iv.next66.i528 = add nuw nsw i64 %i.tv, 3 ; 4 uses
  %i.ui = icmp samesign ult i64 %indvars.iv.next66.i528, %i.tw
  br i1 %i.ui, label %bb.bw, label %._crit_edge.loopexit.i529

bb.bw:                                            ; preds = %.lr.ph.i522
  %i.uj = getelementptr inbounds nuw [4 x i8], ptr %i.te, i64 %indvars.iv.next66.i528
  %i.uk = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %indvars.iv.next66.i528
  %i.ul = load <2 x i32>, ptr %i.uj, align 4, !tbaa !12 ; 2 uses
  %i.um = sub <2 x i32> %i.ul, %i.ua
  store <2 x i32> %i.um, ptr %i.uk, align 4, !tbaa !12
  %i.un = add nuw nsw i64 %i.tv, 5                ; 2 uses
  %i.uo = getelementptr inbounds nuw [4 x i8], ptr %i.te, i64 %i.un
  %i.up = load i32, ptr %i.uo, align 4, !tbaa !12 ; 2 uses
  %i.uq = sub i32 %i.up, %i.ue
  %i.ur = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %i.un
  store i32 %i.uq, ptr %i.ur, align 4, !tbaa !12
  %indvars.iv.next66.i528.1 = add nuw nsw i64 %i.tv, 6 ; 4 uses
  %i.us = icmp samesign ult i64 %indvars.iv.next66.i528.1, %i.tw
  br i1 %i.us, label %bb.bx, label %._crit_edge.loopexit.i529

bb.bx:                                            ; preds = %bb.bw
  %i.ut = getelementptr inbounds nuw [4 x i8], ptr %i.te, i64 %indvars.iv.next66.i528.1
  %i.uu = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %indvars.iv.next66.i528.1
  %i.uv = load <2 x i32>, ptr %i.ut, align 4, !tbaa !12 ; 2 uses
  %i.uw = sub <2 x i32> %i.uv, %i.ul
  store <2 x i32> %i.uw, ptr %i.uu, align 8, !tbaa !12
  %i.ux = or disjoint i64 %i.tv, 8                ; 2 uses
  %i.uy = getelementptr inbounds nuw [4 x i8], ptr %i.te, i64 %i.ux
  %i.uz = load i32, ptr %i.uy, align 4, !tbaa !12 ; 2 uses
  %i.va = sub i32 %i.uz, %i.up
  %i.vb = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %i.ux
  store i32 %i.va, ptr %i.vb, align 8, !tbaa !12
  %indvars.iv.next66.i528.2 = or disjoint i64 %i.tv, 9 ; 4 uses
  %i.vc = icmp samesign ult i64 %indvars.iv.next66.i528.2, %i.tw
  br i1 %i.vc, label %bb.by, label %._crit_edge.loopexit.i529

bb.by:                                            ; preds = %bb.bx
  %i.vd = getelementptr inbounds nuw [4 x i8], ptr %i.te, i64 %indvars.iv.next66.i528.2
  %i.ve = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %indvars.iv.next66.i528.2
  %i.vf = load <2 x i32>, ptr %i.vd, align 4, !tbaa !12 ; 2 uses
  %i.vg = sub <2 x i32> %i.vf, %i.uv
  store <2 x i32> %i.vg, ptr %i.ve, align 4, !tbaa !12
  %i.vh = add nuw nsw i64 %i.tv, 11               ; 2 uses
  %i.vi = getelementptr inbounds nuw [4 x i8], ptr %i.te, i64 %i.vh
  %i.vj = load i32, ptr %i.vi, align 4, !tbaa !12 ; 2 uses
  %i.vk = sub i32 %i.vj, %i.uz
  %i.vl = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %i.vh
  store i32 %i.vk, ptr %i.vl, align 4, !tbaa !12
  %indvars.iv.next66.i528.3 = add nuw nsw i64 %i.tv, 12 ; 4 uses
  %i.vm = icmp samesign ult i64 %indvars.iv.next66.i528.3, %i.tw
  br i1 %i.vm, label %bb.bz, label %._crit_edge.loopexit.i529

bb.bz:                                            ; preds = %bb.by
  %i.vn = getelementptr inbounds nuw [4 x i8], ptr %i.te, i64 %indvars.iv.next66.i528.3
  %i.vo = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %indvars.iv.next66.i528.3
  %i.vp = load <2 x i32>, ptr %i.vn, align 4, !tbaa !12 ; 2 uses
  %i.vq = sub <2 x i32> %i.vp, %i.vf
  store <2 x i32> %i.vq, ptr %i.vo, align 8, !tbaa !12
  %i.vr = add nuw nsw i64 %i.tv, 14               ; 2 uses
  %i.vs = getelementptr inbounds nuw [4 x i8], ptr %i.te, i64 %i.vr
  %i.vt = load i32, ptr %i.vs, align 4, !tbaa !12 ; 2 uses
  %i.vu = sub i32 %i.vt, %i.vj
  %i.vv = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %i.vr
  store i32 %i.vu, ptr %i.vv, align 8, !tbaa !12
  %indvars.iv.next66.i528.4 = add nuw nsw i64 %i.tv, 15 ; 4 uses
  %i.vw = icmp samesign ult i64 %indvars.iv.next66.i528.4, %i.tw
  br i1 %i.vw, label %bb.ca, label %._crit_edge.loopexit.i529

bb.ca:                                            ; preds = %bb.bz
  %i.vx = getelementptr inbounds nuw [4 x i8], ptr %i.te, i64 %indvars.iv.next66.i528.4
  %i.vy = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %indvars.iv.next66.i528.4
  %i.vz = load <2 x i32>, ptr %i.vx, align 4, !tbaa !12 ; 2 uses
  %i.wa = sub <2 x i32> %i.vz, %i.vp
  store <2 x i32> %i.wa, ptr %i.vy, align 4, !tbaa !12
  %i.wb = or disjoint i64 %i.tv, 17               ; 2 uses
  %i.wc = getelementptr inbounds nuw [4 x i8], ptr %i.te, i64 %i.wb
  %i.wd = load i32, ptr %i.wc, align 4, !tbaa !12 ; 2 uses
  %i.we = sub i32 %i.wd, %i.vt
  %i.wf = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %i.wb
  store i32 %i.we, ptr %i.wf, align 4, !tbaa !12
  %indvars.iv.next66.i528.5 = add nuw nsw i64 %i.tv, 18 ; 4 uses
  %i.wg = icmp samesign ult i64 %indvars.iv.next66.i528.5, %i.tw
  br i1 %i.wg, label %bb.cb, label %._crit_edge.loopexit.i529

end_hunk_1
