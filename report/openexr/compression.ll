Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openexr/original/compression?download=true
inline.NumInlined: 100
inline.NumDeleted: 42
loop-unroll.NumCompletelyUnrolled: 47
loop-unroll.NumRuntimeUnrolled: 34
loop-unroll.NumUnrolled: 129
begin_hunk_0_@deflate_optimize_and_flush_block:bb.a
  %narrow39.i = select i1 %.not36.i, i8 13, i8 %i.eq
  %spec.select.i = zext i8 %narrow39.i to i32
  %i.er = getelementptr inbounds nuw i8, ptr @deflate_extra_length_bits, i64 %i.en
  %i.es = load i8, ptr %i.er, align 1, !tbaa !36
  %i.et = zext i8 %i.es to i32
  %i.eu = add nuw nsw i32 %spec.select.i, %i.et
  %i.ev = shl nuw nsw i32 %i.eu, 4
  %i.ew = getelementptr inbounds nuw [4 x i8], ptr %i.cj, i64 %indvars.iv45.i
  store i32 %i.ev, ptr %i.ew, align 4, !tbaa !36
  %indvars.iv.next46.i = add nuw nsw i64 %indvars.iv45.i, 1 ; 2 uses
  %i.ex = getelementptr inbounds nuw i8, ptr @deflate_length_slot, i64 %indvars.iv.next46.i
  %i.ey = load i8, ptr %i.ex, align 1, !tbaa !36
  %i.ez = zext i8 %i.ey to i64                    ; 2 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %i.bv, i64 %i.ez
  %i.fb = getelementptr inbounds nuw i8, ptr %i.fa, i64 257
  %i.fc = load i8, ptr %i.fb, align 1, !tbaa !36  ; 2 uses
  %.not36.i.1 = icmp eq i8 %i.fc, 0
  %narrow39.i.1 = select i1 %.not36.i.1, i8 13, i8 %i.fc
  %spec.select.i.1 = zext i8 %narrow39.i.1 to i32
  %i.fd = getelementptr inbounds nuw i8, ptr @deflate_extra_length_bits, i64 %i.ez
  %i.fe = load i8, ptr %i.fd, align 1, !tbaa !36
  %i.ff = zext i8 %i.fe to i32
  %i.fg = add nuw nsw i32 %spec.select.i.1, %i.ff
  %i.fh = shl nuw nsw i32 %i.fg, 4
  %i.fi = getelementptr inbounds nuw [4 x i8], ptr %i.cj, i64 %indvars.iv.next46.i
  store i32 %i.fh, ptr %i.fi, align 4, !tbaa !36
  %indvars.iv.next46.i.1 = add nuw nsw i64 %indvars.iv45.i, 2 ; 2 uses
  %exitcond48.not.i.1 = icmp eq i64 %indvars.iv.next46.i.1, 259
  br i1 %exitcond48.not.i.1, label %.preheader.i, label %bb.b, !llvm.loop !233

scalar.ph208:                                     ; preds = %scalar.ph208, %scalar.ph208.preheader
  %indvars.iv49.i = phi i64 [ %indvars.iv49.i.ph, %scalar.ph208.preheader ], [ %indvars.iv.next50.i.1, %scalar.ph208 ] ; 5 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %i.cw, i64 %indvars.iv49.i
  %i.fk = load i8, ptr %i.fj, align 1, !tbaa !36  ; 2 uses
  %.not.i91 = icmp eq i8 %i.fk, 0
  %narrow.i = select i1 %.not.i91, i8 10, i8 %i.fk
  %spec.select38.i = zext i8 %narrow.i to i32
  %i.fl = getelementptr inbounds nuw i8, ptr @deflate_extra_offset_bits, i64 %indvars.iv49.i
  %i.fm = load i8, ptr %i.fl, align 2, !tbaa !36
  %i.fn = zext i8 %i.fm to i32
  %i.fo = add nuw nsw i32 %spec.select38.i, %i.fn
  %i.fp = shl nuw nsw i32 %i.fo, 4
  %i.fq = getelementptr inbounds nuw [4 x i8], ptr %i.cx, i64 %indvars.iv49.i
  store i32 %i.fp, ptr %i.fq, align 4, !tbaa !36
  %indvars.iv.next50.i = or disjoint i64 %indvars.iv49.i, 1 ; 3 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %i.cw, i64 %indvars.iv.next50.i
  %i.fs = load i8, ptr %i.fr, align 1, !tbaa !36  ; 2 uses
  %.not.i91.1 = icmp eq i8 %i.fs, 0
  %narrow.i.1 = select i1 %.not.i91.1, i8 10, i8 %i.fs
  %spec.select38.i.1 = zext i8 %narrow.i.1 to i32
  %i.ft = getelementptr inbounds nuw i8, ptr @deflate_extra_offset_bits, i64 %indvars.iv.next50.i
  %i.fu = load i8, ptr %i.ft, align 1, !tbaa !36
  %i.fv = zext i8 %i.fu to i32
  %i.fw = add nuw nsw i32 %spec.select38.i.1, %i.fv
  %i.fx = shl nuw nsw i32 %i.fw, 4
  %i.fy = getelementptr inbounds nuw [4 x i8], ptr %i.cx, i64 %indvars.iv.next50.i
  store i32 %i.fx, ptr %i.fy, align 4, !tbaa !36
  %indvars.iv.next50.i.1 = add nuw nsw i64 %indvars.iv49.i, 2 ; 2 uses
  %exitcond52.not.i.1 = icmp eq i64 %indvars.iv.next50.i.1, 30
  br i1 %exitcond52.not.i.1, label %bb.c, label %scalar.ph208, !llvm.loop !234

bb.c:                                             ; preds = %scalar.ph208
  tail call fastcc void @deflate_find_min_cost_path(ptr noundef nonnull %0, i32 noundef %3, ptr noundef %4)
  %i.fz = getelementptr inbounds nuw i8, ptr %0, i64 6532420
  %i.ga = load i32, ptr %i.fz, align 4, !tbaa !36
  %i.gb = lshr i32 %i.ga, 4
  %i.gc = add nuw nsw i32 %i.gb, 7                ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(2188) %i.bu, ptr noundef nonnull align 16 dereferenceable(2188) %i.bt, i64 2188, i1 false), !tbaa.struct !284
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1024) %i.c, i8 0, i64 1024, i1 false)
  br i1 %.not.i, label %vector.ph219, label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %.thread, %bb.c
  %.078177 = phi i32 [ -1, %.thread ], [ %i.gc, %bb.c ]
  %wide.trip.count.i.i = zext i32 %3 to i64       ; 2 uses
  %xtraiter458 = and i64 %wide.trip.count.i.i, 3  ; 3 uses
  %i.gd = add i32 %3, -1
  %i.ge = icmp ult i32 %i.gd, 3
  br i1 %i.ge, label %.lr.ph.i.i.epil.preheader, label %.lr.ph.preheader.i.i.new

.lr.ph.preheader.i.i.new:                         ; preds = %.lr.ph.preheader.i.i
  %unroll_iter462 = and i64 %wide.trip.count.i.i, 4294967292
  br label %.lr.ph.i.i

.preheader.i.i.loopexit.unr-lcssa:                ; preds = %.lr.ph.i.i
  %lcmp.mod460.not = icmp eq i64 %xtraiter458, 0
  br i1 %lcmp.mod460.not, label %.preheader.i.i.loopexit, label %.lr.ph.i.i.epil.preheader

.lr.ph.i.i.epil.preheader:                        ; preds = %.preheader.i.i.loopexit.unr-lcssa, %.lr.ph.preheader.i.i
  %indvars.iv.i.i.epil.init = phi i64 [ 0, %.lr.ph.preheader.i.i ], [ %indvars.iv.next.i.i.3, %.preheader.i.i.loopexit.unr-lcssa ]
  %lcmp.mod461 = icmp ne i64 %xtraiter458, 0
  tail call void @llvm.assume(i1 %lcmp.mod461)
  br label %.lr.ph.i.i.epil

.lr.ph.i.i.epil:                                  ; preds = %.lr.ph.i.i.epil, %.lr.ph.i.i.epil.preheader
  %indvars.iv.i.i.epil = phi i64 [ %indvars.iv.i.i.epil.init, %.lr.ph.i.i.epil.preheader ], [ %indvars.iv.next.i.i.epil, %.lr.ph.i.i.epil ] ; 2 uses
  %epil.iter459 = phi i64 [ 0, %.lr.ph.i.i.epil.preheader ], [ %epil.iter459.next, %.lr.ph.i.i.epil ]
  %i.gf = getelementptr inbounds nuw i8, ptr %2, i64 %indvars.iv.i.i.epil
  %i.gg = load i8, ptr %i.gf, align 1, !tbaa !36
  %i.gh = zext i8 %i.gg to i64
  %i.gi = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.gh ; 2 uses
  %i.gj = load i32, ptr %i.gi, align 4, !tbaa !16
  %i.gk = add i32 %i.gj, 1
  store i32 %i.gk, ptr %i.gi, align 4, !tbaa !16
  %indvars.iv.next.i.i.epil = add nuw nsw i64 %indvars.iv.i.i.epil, 1
  %epil.iter459.next = add i64 %epil.iter459, 1   ; 2 uses
  %epil.iter459.cmp.not = icmp eq i64 %epil.iter459.next, %xtraiter458
  br i1 %epil.iter459.cmp.not, label %.preheader.i.i.loopexit, label %.lr.ph.i.i.epil, !llvm.loop !235

.preheader.i.i.loopexit:                          ; preds = %.lr.ph.i.i.epil, %.preheader.i.i.loopexit.unr-lcssa
  %i.gl = lshr i32 %3, 11
  br label %vector.ph219

vector.ph219:                                     ; preds = %bb.c, %.preheader.i.i.loopexit
  %i.gm = phi i32 [ 0, %bb.c ], [ %i.gl, %.preheader.i.i.loopexit ]
  %.078178 = phi i32 [ %i.gc, %bb.c ], [ %.078177, %.preheader.i.i.loopexit ] ; 2 uses
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.gm, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 4 uses
  br label %vector.body220

vector.body220:                                   ; preds = %vector.body220, %vector.ph219
  %index221 = phi i64 [ 0, %vector.ph219 ], [ %index.next225.1, %vector.body220 ] ; 3 uses
  %vec.phi = phi <4 x i32> [ zeroinitializer, %vector.ph219 ], [ %i.hc, %vector.body220 ]
  %vec.phi222 = phi <4 x i32> [ zeroinitializer, %vector.ph219 ], [ %i.hd, %vector.body220 ]
  %i.gn = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %index221 ; 2 uses
  %i.go = getelementptr inbounds nuw i8, ptr %i.gn, i64 16
  %wide.load223 = load <4 x i32>, ptr %i.gn, align 4, !tbaa !16
  %wide.load224 = load <4 x i32>, ptr %i.go, align 4, !tbaa !16
  %i.gp = icmp ugt <4 x i32> %wide.load223, %broadcast.splat
  %i.gq = icmp ugt <4 x i32> %wide.load224, %broadcast.splat
  %i.gr = zext <4 x i1> %i.gp to <4 x i32>
  %i.gs = zext <4 x i1> %i.gq to <4 x i32>
  %i.gt = add <4 x i32> %vec.phi, %i.gr
  %i.gu = add <4 x i32> %vec.phi222, %i.gs
  %i.gv = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %index221 ; 2 uses
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gv, i64 32
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gv, i64 48
  %wide.load223.1 = load <4 x i32>, ptr %i.gw, align 4, !tbaa !16
  %wide.load224.1 = load <4 x i32>, ptr %i.gx, align 4, !tbaa !16
  %i.gy = icmp ugt <4 x i32> %wide.load223.1, %broadcast.splat
  %i.gz = icmp ugt <4 x i32> %wide.load224.1, %broadcast.splat
  %i.ha = zext <4 x i1> %i.gy to <4 x i32>
  %i.hb = zext <4 x i1> %i.gz to <4 x i32>
  %i.hc = add <4 x i32> %i.gt, %i.ha              ; 2 uses
  %i.hd = add <4 x i32> %i.gu, %i.hb              ; 2 uses
  %index.next225.1 = add nuw nsw i64 %index221, 16 ; 2 uses
  %i.he = icmp eq i64 %index.next225.1, 256
  br i1 %i.he, label %middle.block226, label %vector.body220, !llvm.loop !236

middle.block226:                                  ; preds = %vector.body220
  %bin.rdx = add <4 x i32> %i.hd, %i.hc
  %i.hf = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 5 uses
  %spec.store.select.i.i = tail call i32 @llvm.umax.i32(i32 %i.hf, i32 1) ; 2 uses
  %i.hg = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.hh = load i32, ptr %i.hg, align 32, !tbaa !35 ; 3 uses
  %i.hi = icmp ugt i32 %i.hf, 79
  br i1 %i.hi, label %choose_min_match_len.exit.i.i, label %bb.d

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.preheader.i.i.new
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.preheader.i.i.new ], [ %indvars.iv.next.i.i.3, %.lr.ph.i.i ] ; 5 uses
  %niter463 = phi i64 [ 0, %.lr.ph.preheader.i.i.new ], [ %niter463.next.3, %.lr.ph.i.i ]
  %i.hj = getelementptr inbounds nuw i8, ptr %2, i64 %indvars.iv.i.i
  %i.hk = load i8, ptr %i.hj, align 1, !tbaa !36
  %i.hl = zext i8 %i.hk to i64
  %i.hm = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.hl ; 2 uses
  %i.hn = load i32, ptr %i.hm, align 4, !tbaa !16
  %i.ho = add i32 %i.hn, 1
  store i32 %i.ho, ptr %i.hm, align 4, !tbaa !16
  %i.hp = getelementptr inbounds nuw i8, ptr %2, i64 %indvars.iv.i.i
  %i.hq = getelementptr inbounds nuw i8, ptr %i.hp, i64 1
  %i.hr = load i8, ptr %i.hq, align 1, !tbaa !36
  %i.hs = zext i8 %i.hr to i64
  %i.ht = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.hs ; 2 uses
  %i.hu = load i32, ptr %i.ht, align 4, !tbaa !16
  %i.hv = add i32 %i.hu, 1
  store i32 %i.hv, ptr %i.ht, align 4, !tbaa !16
  %i.hw = getelementptr inbounds nuw i8, ptr %2, i64 %indvars.iv.i.i
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hw, i64 2
  %i.hy = load i8, ptr %i.hx, align 1, !tbaa !36
  %i.hz = zext i8 %i.hy to i64
  %i.ia = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.hz ; 2 uses
  %i.ib = load i32, ptr %i.ia, align 4, !tbaa !16
  %i.ic = add i32 %i.ib, 1
  store i32 %i.ic, ptr %i.ia, align 4, !tbaa !16
  %i.id = getelementptr inbounds nuw i8, ptr %2, i64 %indvars.iv.i.i
  %i.ie = getelementptr inbounds nuw i8, ptr %i.id, i64 3
  %i.if = load i8, ptr %i.ie, align 1, !tbaa !36
  %i.ig = zext i8 %i.if to i64
  %i.ih = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.ig ; 2 uses
  %i.ii = load i32, ptr %i.ih, align 4, !tbaa !16
  %i.ij = add i32 %i.ii, 1
  store i32 %i.ij, ptr %i.ih, align 4, !tbaa !16
  %indvars.iv.next.i.i.3 = add nuw nsw i64 %indvars.iv.i.i, 4 ; 2 uses
  %niter463.next.3 = add i64 %niter463, 4         ; 2 uses
  %niter463.ncmp.3 = icmp eq i64 %niter463.next.3, %unroll_iter462
  br i1 %niter463.ncmp.3, label %.preheader.i.i.loopexit.unr-lcssa, label %.lr.ph.i.i, !llvm.loop !237

bb.d:                                             ; preds = %middle.block226
  %i.ik = zext nneg i32 %spec.store.select.i.i to i64
  %i.il = getelementptr inbounds nuw i8, ptr @choose_min_match_len.min_lens, i64 %i.ik
  %i.im = load i8, ptr %i.il, align 1, !tbaa !36
  %9 = zext i8 %i.im to i64                       ; 4 uses
  %i.in = icmp ult i32 %i.hh, 16
  br i1 %i.in, label %bb.e, label %choose_min_match_len.exit.i.i

bb.e:                                             ; preds = %bb.d
  %i.io = icmp samesign ult i32 %i.hh, 5
  br i1 %i.io, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ip = icmp samesign ugt i32 %i.hf, 44
  %10 = select i1 %i.ip, i64 %9, i64 4
  br label %choose_min_match_len.exit.i.i

bb.g:                                             ; preds = %bb.e
  %i.iq = icmp samesign ult i32 %i.hh, 10
  br i1 %i.iq, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ir = icmp samesign ugt i32 %i.hf, 15
  %11 = select i1 %i.ir, i64 %9, i64 5
  br label %choose_min_match_len.exit.i.i

bb.i:                                             ; preds = %bb.g
  %i.is = icmp samesign ugt i32 %i.hf, 7
  %12 = select i1 %i.is, i64 %9, i64 7
  br label %choose_min_match_len.exit.i.i

choose_min_match_len.exit.i.i:                    ; preds = %bb.i, %bb.h, %bb.f, %bb.d, %middle.block226
  %.013.i.i.i = phi i64 [ 3, %middle.block226 ], [ %10, %bb.f ], [ %11, %bb.h ], [ %12, %bb.i ], [ %9, %bb.d ] ; 8 uses
  %i.it = getelementptr inbounds nuw i8, ptr %0, i64 9010648 ; 2 uses
  %13 = trunc i64 %.013.i.i.i to i32
  %14 = add i64 %.013.i.i.i, 1
  %15 = and i64 %14, 4294967295
  %i.iu = sub nsw i64 260, %15                    ; 3 uses
  %min.iters.check = icmp ult i64 %i.iu, 12
  br i1 %min.iters.check, label %scalar.ph227.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %choose_min_match_len.exit.i.i
  %16 = trunc i64 %.013.i.i.i to i32
  %17 = add i64 %.013.i.i.i, 1
  %18 = and i64 %17, 4294967295
  %i.iv = sub nsw i64 259, %18                    ; 2 uses
  %i.iw = trunc i64 %i.iv to i32
  %i.ix = sub i32 -2, %16
  %i.iy = icmp ult i32 %i.ix, %i.iw
  %i.iz = icmp ugt i64 %i.iv, 4294967295
  %i.ja = or i1 %i.iy, %i.iz
  br i1 %i.ja, label %scalar.ph227.preheader, label %vector.ph228

vector.ph228:                                     ; preds = %vector.scevcheck
  %n.vec = and i64 %i.iu, -8                      ; 3 uses
  %i.jb = add i64 %.013.i.i.i, %n.vec
  %i.jc = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %3, i64 0
  %broadcast.splatinsert229 = insertelement <4 x i32> poison, i32 %13, i64 0
  %broadcast.splat230 = shufflevector <4 x i32> %broadcast.splatinsert229, <4 x i32> poison, <4 x i32> zeroinitializer
  %induction = add <4 x i32> %broadcast.splat230, <i32 0, i32 1, i32 2, i32 3>
  %invariant.gep = getelementptr inbounds nuw [4 x i8], ptr %i.it, i64 %.013.i.i.i
  br label %vector.body231

vector.body231:                                   ; preds = %vector.body231, %vector.ph228
  %index232 = phi i64 [ 0, %vector.ph228 ], [ %index.next239, %vector.body231 ] ; 2 uses
  %vec.phi233 = phi <4 x i32> [ zeroinitializer, %vector.ph228 ], [ %i.je, %vector.body231 ]
  %vec.phi234 = phi <4 x i32> [ zeroinitializer, %vector.ph228 ], [ %i.jf, %vector.body231 ]
  %vec.phi235 = phi <4 x i32> [ %i.jc, %vector.ph228 ], [ %i.ji, %vector.body231 ]
  %vec.phi236 = phi <4 x i32> [ zeroinitializer, %vector.ph228 ], [ %i.jj, %vector.body231 ]
  %vec.ind = phi <4 x i32> [ %induction, %vector.ph228 ], [ %vec.ind.next, %vector.body231 ] ; 3 uses
  %step.add = add <4 x i32> %vec.ind, splat (i32 4)
  %gep = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep, i64 %index232 ; 2 uses
  %i.jd = getelementptr inbounds nuw i8, ptr %gep, i64 16
  %wide.load237 = load <4 x i32>, ptr %gep, align 4, !tbaa !36 ; 2 uses
  %wide.load238 = load <4 x i32>, ptr %i.jd, align 4, !tbaa !36 ; 2 uses
  %i.je = add <4 x i32> %wide.load237, %vec.phi233 ; 2 uses
  %i.jf = add <4 x i32> %wide.load238, %vec.phi234 ; 2 uses
  %i.jg = mul <4 x i32> %wide.load237, %vec.ind
  %i.jh = mul <4 x i32> %wide.load238, %step.add
  %i.ji = sub <4 x i32> %vec.phi235, %i.jg        ; 2 uses
  %i.jj = sub <4 x i32> %vec.phi236, %i.jh        ; 2 uses
  %index.next239 = add nuw i64 %index232, 8       ; 2 uses
  %vec.ind.next = add <4 x i32> %vec.ind, splat (i32 8)
  %i.jk = icmp eq i64 %index.next239, %n.vec
  br i1 %i.jk, label %middle.block240, label %vector.body231, !llvm.loop !238

middle.block240:                                  ; preds = %vector.body231
  %bin.rdx241 = add <4 x i32> %i.jf, %i.je
  %i.jl = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx241) ; 2 uses
  %bin.rdx242 = add <4 x i32> %i.jj, %i.ji
  %i.jm = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx242) ; 2 uses
  %cmp.n = icmp eq i64 %i.iu, %n.vec
  br i1 %cmp.n, label %deflate_choose_default_litlen_costs.exit.i, label %scalar.ph227.preheader

scalar.ph227.preheader:                           ; preds = %vector.scevcheck, %choose_min_match_len.exit.i.i, %middle.block240
  %indvars.iv55.i.i.ph = phi i64 [ %.013.i.i.i, %vector.scevcheck ], [ %.013.i.i.i, %choose_min_match_len.exit.i.i ], [ %i.jb, %middle.block240 ]
  %.03747.i.i.ph = phi i32 [ 0, %vector.scevcheck ], [ 0, %choose_min_match_len.exit.i.i ], [ %i.jl, %middle.block240 ]
  %.03846.i.i.ph = phi i32 [ %3, %vector.scevcheck ], [ %3, %choose_min_match_len.exit.i.i ], [ %i.jm, %middle.block240 ]
  br label %scalar.ph227

scalar.ph227:                                     ; preds = %scalar.ph227.preheader, %scalar.ph227
  %indvars.iv55.i.i = phi i64 [ %indvars.iv.next56.i.i, %scalar.ph227 ], [ %indvars.iv55.i.i.ph, %scalar.ph227.preheader ] ; 3 uses
  %.03747.i.i = phi i32 [ %i.jp, %scalar.ph227 ], [ %.03747.i.i.ph, %scalar.ph227.preheader ]
  %.03846.i.i = phi i32 [ %i.js, %scalar.ph227 ], [ %.03846.i.i.ph, %scalar.ph227.preheader ]
  %i.jn = getelementptr inbounds nuw [4 x i8], ptr %i.it, i64 %indvars.iv55.i.i
  %i.jo = load i32, ptr %i.jn, align 4, !tbaa !36 ; 2 uses
  %i.jp = add i32 %i.jo, %.03747.i.i              ; 2 uses
  %i.jq = trunc nuw i64 %indvars.iv55.i.i to i32
  %i.jr = mul i32 %i.jo, %i.jq
  %i.js = sub i32 %.03846.i.i, %i.jr              ; 2 uses
  %indvars.iv.next56.i.i = add nuw nsw i64 %indvars.iv55.i.i, 1 ; 2 uses
  %i.jt = and i64 %indvars.iv.next56.i.i, 4294967295
  %exitcond58.not.i.i = icmp eq i64 %i.jt, 259
  br i1 %exitcond58.not.i.i, label %deflate_choose_default_litlen_costs.exit.i, label %scalar.ph227, !llvm.loop !239

deflate_choose_default_litlen_costs.exit.i:       ; preds = %scalar.ph227, %middle.block240
  %.lcssa199 = phi i32 [ %i.jl, %middle.block240 ], [ %i.jp, %scalar.ph227 ] ; 2 uses
  %.lcssa198 = phi i32 [ %i.jm, %middle.block240 ], [ %i.js, %scalar.ph227 ]
  %spec.store.select1.i.i = tail call i32 @llvm.smax.i32(i32 %.lcssa198, i32 0) ; 2 uses
  %i.ju = icmp ugt i32 %.lcssa199, %spec.store.select1.i.i
  %i.jv = shl i32 %.lcssa199, 2
  %i.jw = icmp ugt i32 %i.jv, %spec.store.select1.i.i
  %..i.i = zext i1 %i.jw to i64
  %.3.i.i = select i1 %i.ju, i64 2, i64 %..i.i
  %i.jx = getelementptr inbounds nuw [258 x i8], ptr @default_litlen_costs, i64 %.3.i.i ; 2 uses
  %i.jy = zext i32 %spec.store.select.i.i to i64
  %i.jz = getelementptr inbounds nuw i8, ptr %i.jx, i64 %i.jy
  %i.ka = load i8, ptr %i.jz, align 1, !tbaa !36
  %i.kb = zext i8 %i.ka to i32                    ; 5 uses
  %i.kc = getelementptr inbounds nuw i8, ptr %i.jx, i64 257
  %i.kd = load i8, ptr %i.kc, align 1, !tbaa !290
  %i.ke = zext i8 %i.kd to i32                    ; 12 uses
  br i1 %5, label %vector.ph314, label %bb.k

vector.ph314:                                     ; preds = %deflate_choose_default_litlen_costs.exit.i
  %broadcast.splatinsert315 = insertelement <4 x i32> poison, i32 %i.kb, i64 0
  %broadcast.splat316 = shufflevector <4 x i32> %broadcast.splatinsert315, <4 x i32> poison, <4 x i32> zeroinitializer ; 64 uses
  %i.kf = getelementptr inbounds nuw i8, ptr %0, i64 8972420
  %i.kg = getelementptr inbounds nuw i8, ptr %0, i64 8972436
  store <4 x i32> %broadcast.splat316, ptr %i.kf, align 4, !tbaa !36
  store <4 x i32> %broadcast.splat316, ptr %i.kg, align 4, !tbaa !36
  %i.kh = getelementptr inbounds nuw i8, ptr %0, i64 8972452
  %i.ki = getelementptr inbounds nuw i8, ptr %0, i64 8972468
  store <4 x i32> %broadcast.splat316, ptr %i.kh, align 4, !tbaa !36
  store <4 x i32> %broadcast.splat316, ptr %i.ki, align 4, !tbaa !36
  %i.kj = getelementptr inbounds nuw i8, ptr %0, i64 8972484
  %i.kk = getelementptr inbounds nuw i8, ptr %0, i64 8972500
  store <4 x i32> %broadcast.splat316, ptr %i.kj, align 4, !tbaa !36
  store <4 x i32> %broadcast.splat316, ptr %i.kk, align 4, !tbaa !36
  %i.kl = getelementptr inbounds nuw i8, ptr %0, i64 8972516
  %i.km = getelementptr inbounds nuw i8, ptr %0, i64 8972532
  store <4 x i32> %broadcast.splat316, ptr %i.kl, align 4, !tbaa !36
  store <4 x i32> %broadcast.splat316, ptr %i.km, align 4, !tbaa !36
  %i.kn = getelementptr inbounds nuw i8, ptr %0, i64 8972548
  %i.ko = getelementptr inbounds nuw i8, ptr %0, i64 8972564
  store <4 x i32> %broadcast.splat316, ptr %i.kn, align 4, !tbaa !36
  store <4 x i32> %broadcast.splat316, ptr %i.ko, align 4, !tbaa !36
  %i.kp = getelementptr inbounds nuw i8, ptr %0, i64 8972580
  %i.kq = getelementptr inbounds nuw i8, ptr %0, i64 8972596
  store <4 x i32> %broadcast.splat316, ptr %i.kp, align 4, !tbaa !36
  store <4 x i32> %broadcast.splat316, ptr %i.kq, align 4, !tbaa !36
  %i.kr = getelementptr inbounds nuw i8, ptr %0, i64 8972612
  %i.ks = getelementptr inbounds nuw i8, ptr %0, i64 8972628
  store <4 x i32> %broadcast.splat316, ptr %i.kr, align 4, !tbaa !36
  store <4 x i32> %broadcast.splat316, ptr %i.ks, align 4, !tbaa !36
  %i.kt = getelementptr inbounds nuw i8, ptr %0, i64 8972644
  %i.ku = getelementptr inbounds nuw i8, ptr %0, i64 8972660
  store <4 x i32> %broadcast.splat316, ptr %i.kt, align 4, !tbaa !36
  store <4 x i32> %broadcast.splat316, ptr %i.ku, align 4, !tbaa !36
  %i.kv = getelementptr inbounds nuw i8, ptr %0, i64 8972676
  %i.kw = getelementptr inbounds nuw i8, ptr %0, i64 8972692
  store <4 x i32> %broadcast.splat316, ptr %i.kv, align 4, !tbaa !36
  store <4 x i32> %broadcast.splat316, ptr %i.kw, align 4, !tbaa !36
  %i.kx = getelementptr inbounds nuw i8, ptr %0, i64 8972708
  %i.ky = getelementptr inbounds nuw i8, ptr %0, i64 8972724
  store <4 x i32> %broadcast.splat316, ptr %i.kx, align 4, !tbaa !36
  store <4 x i32> %broadcast.splat316, ptr %i.ky, align 4, !tbaa !36
  %i.kz = getelementptr inbounds nuw i8, ptr %0, i64 8972740
  %i.la = getelementptr inbounds nuw i8, ptr %0, i64 8972756
  store <4 x i32> %broadcast.splat316, ptr %i.kz, align 4, !tbaa !36
  store <4 x i32> %broadcast.splat316, ptr %i.la, align 4, !tbaa !36
  %i.lb = getelementptr inbounds nuw i8, ptr %0, i64 8972772
  %i.lc = getelementptr inbounds nuw i8, ptr %0, i64 8972788
  store <4 x i32> %broadcast.splat316, ptr %i.lb, align 4, !tbaa !36
  store <4 x i32> %broadcast.splat316, ptr %i.lc, align 4, !tbaa !36
  %i.ld = getelementptr inbounds nuw i8, ptr %0, i64 8972804
  %i.le = getelementptr inbounds nuw i8, ptr %0, i64 8972820
  store <4 x i32> %broadcast.splat316, ptr %i.ld, align 4, !tbaa !36
  store <4 x i32> %broadcast.splat316, ptr %i.le, align 4, !tbaa !36
  %i.lf = getelementptr inbounds nuw i8, ptr %0, i64 8972836
  %i.lg = getelementptr inbounds nuw i8, ptr %0, i64 8972852
  store <4 x i32> %broadcast.splat316, ptr %i.lf, align 4, !tbaa !36
  store <4 x i32> %broadcast.splat316, ptr %i.lg, align 4, !tbaa !36
  %i.lh = getelementptr inbounds nuw i8, ptr %0, i64 8972868
  %i.li = getelementptr inbounds nuw i8, ptr %0, i64 8972884
  store <4 x i32> %broadcast.splat316, ptr %i.lh, align 4, !tbaa !36
  store <4 x i32> %broadcast.splat316, ptr %i.li, align 4, !tbaa !36
  %i.lj = getelementptr inbounds nuw i8, ptr %0, i64 8972900
  %i.lk = getelementptr inbounds nuw i8, ptr %0, i64 8972916
  store <4 x i32> %broadcast.splat316, ptr %i.lj, align 4, !tbaa !36
  store <4 x i32> %broadcast.splat316, ptr %i.lk, align 4, !tbaa !36
  %i.ll = getelementptr inbounds nuw i8, ptr %0, i64 8972932
  %i.lm = getelementptr inbounds nuw i8, ptr %0, i64 8972948
  store <4 x i32> %broadcast.splat316, ptr %i.ll, align 4, !tbaa !36
  store <4 x i32> %broadcast.splat316, ptr %i.lm, align 4, !tbaa !36
  %i.ln = getelementptr inbounds nuw i8, ptr %0, i64 8972964
  %i.lo = getelementptr inbounds nuw i8, ptr %0, i64 8972980
  store <4 x i32> %broadcast.splat316, ptr %i.ln, align 4, !tbaa !36
  store <4 x i32> %broadcast.splat316, ptr %i.lo, align 4, !tbaa !36
  %i.lp = getelementptr inbounds nuw i8, ptr %0, i64 8972996
  %i.lq = getelementptr inbounds nuw i8, ptr %0, i64 8973012
  store <4 x i32> %broadcast.splat316, ptr %i.lp, align 4, !tbaa !36
  store <4 x i32> %broadcast.splat316, ptr %i.lq, align 4, !tbaa !36
  %i.lr = getelementptr inbounds nuw i8, ptr %0, i64 8973028
  %i.ls = getelementptr inbounds nuw i8, ptr %0, i64 8973044
  store <4 x i32> %broadcast.splat316, ptr %i.lr, align 4, !tbaa !36
  store <4 x i32> %broadcast.splat316, ptr %i.ls, align 4, !tbaa !36
  %i.lt = getelementptr inbounds nuw i8, ptr %0, i64 8973060
  %i.lu = getelementptr inbounds nuw i8, ptr %0, i64 8973076
  store <4 x i32> %broadcast.splat316, ptr %i.lt, align 4, !tbaa !36
  store <4 x i32> %broadcast.splat316, ptr %i.lu, align 4, !tbaa !36
  %i.lv = getelementptr inbounds nuw i8, ptr %0, i64 8973092
  %i.lw = getelementptr inbounds nuw i8, ptr %0, i64 8973108
  store <4 x i32> %broadcast.splat316, ptr %i.lv, align 4, !tbaa !36
  store <4 x i32> %broadcast.splat316, ptr %i.lw, align 4, !tbaa !36
  %i.lx = getelementptr inbounds nuw i8, ptr %0, i64 8973124
  %i.ly = getelementptr inbounds nuw i8, ptr %0, i64 8973140
  store <4 x i32> %broadcast.splat316, ptr %i.lx, align 4, !tbaa !36
  store <4 x i32> %broadcast.splat316, ptr %i.ly, align 4, !tbaa !36
  %i.lz = getelementptr inbounds nuw i8, ptr %0, i64 8973156
  %i.ma = getelementptr inbounds nuw i8, ptr %0, i64 8973172
  store <4 x i32> %broadcast.splat316, ptr %i.lz, align 4, !tbaa !36
  store <4 x i32> %broadcast.splat316, ptr %i.ma, align 4, !tbaa !36
  %i.mb = getelementptr inbounds nuw i8, ptr %0, i64 8973188
  %i.mc = getelementptr inbounds nuw i8, ptr %0, i64 8973204
  store <4 x i32> %broadcast.splat316, ptr %i.mb, align 4, !tbaa !36
  store <4 x i32> %broadcast.splat316, ptr %i.mc, align 4, !tbaa !36
  %i.md = getelementptr inbounds nuw i8, ptr %0, i64 8973220
  %i.me = getelementptr inbounds nuw i8, ptr %0, i64 8973236
  store <4 x i32> %broadcast.splat316, ptr %i.md, align 4, !tbaa !36
  store <4 x i32> %broadcast.splat316, ptr %i.me, align 4, !tbaa !36
  %i.mf = getelementptr inbounds nuw i8, ptr %0, i64 8973252
  %i.mg = getelementptr inbounds nuw i8, ptr %0, i64 8973268
  store <4 x i32> %broadcast.splat316, ptr %i.mf, align 4, !tbaa !36
  store <4 x i32> %broadcast.splat316, ptr %i.mg, align 4, !tbaa !36
  %i.mh = getelementptr inbounds nuw i8, ptr %0, i64 8973284
  %i.mi = getelementptr inbounds nuw i8, ptr %0, i64 8973300
  store <4 x i32> %broadcast.splat316, ptr %i.mh, align 4, !tbaa !36
  store <4 x i32> %broadcast.splat316, ptr %i.mi, align 4, !tbaa !36
  %i.mj = getelementptr inbounds nuw i8, ptr %0, i64 8973316
  %i.mk = getelementptr inbounds nuw i8, ptr %0, i64 8973332
  store <4 x i32> %broadcast.splat316, ptr %i.mj, align 4, !tbaa !36
  store <4 x i32> %broadcast.splat316, ptr %i.mk, align 4, !tbaa !36
  %i.ml = getelementptr inbounds nuw i8, ptr %0, i64 8973348
  %i.mm = getelementptr inbounds nuw i8, ptr %0, i64 8973364
  store <4 x i32> %broadcast.splat316, ptr %i.ml, align 4, !tbaa !36
  store <4 x i32> %broadcast.splat316, ptr %i.mm, align 4, !tbaa !36
  %i.mn = getelementptr inbounds nuw i8, ptr %0, i64 8973380
  %i.mo = getelementptr inbounds nuw i8, ptr %0, i64 8973396
  store <4 x i32> %broadcast.splat316, ptr %i.mn, align 4, !tbaa !36
  store <4 x i32> %broadcast.splat316, ptr %i.mo, align 4, !tbaa !36
  %i.mp = getelementptr inbounds nuw i8, ptr %0, i64 8973412
  %i.mq = getelementptr inbounds nuw i8, ptr %0, i64 8973428
  store <4 x i32> %broadcast.splat316, ptr %i.mp, align 4, !tbaa !36
  store <4 x i32> %broadcast.splat316, ptr %i.mq, align 4, !tbaa !36
  %i.mr = getelementptr inbounds nuw i8, ptr %0, i64 8973444 ; 2 uses
  br label %bb.j

bb.j:                                             ; preds = %bb.j, %vector.ph314
  %indvars.iv21.i.i = phi i64 [ 3, %vector.ph314 ], [ %indvars.iv.next22.i.i.1, %bb.j ] ; 4 uses
  %i.ms = getelementptr inbounds nuw i8, ptr @deflate_length_slot, i64 %indvars.iv21.i.i
  %i.mt = load i8, ptr %i.ms, align 1, !tbaa !36
  %i.mu = zext i8 %i.mt to i64
  %i.mv = getelementptr inbounds nuw i8, ptr @deflate_extra_length_bits, i64 %i.mu
  %i.mw = load i8, ptr %i.mv, align 1, !tbaa !36
  %i.mx = zext i8 %i.mw to i32
  %i.my = shl nuw nsw i32 %i.mx, 4
  %i.mz = add nuw nsw i32 %i.my, %i.ke
  %i.na = getelementptr inbounds nuw [4 x i8], ptr %i.mr, i64 %indvars.iv21.i.i
  store i32 %i.mz, ptr %i.na, align 4, !tbaa !36
  %indvars.iv.next22.i.i = add nuw nsw i64 %indvars.iv21.i.i, 1 ; 2 uses
  %i.nb = getelementptr inbounds nuw i8, ptr @deflate_length_slot, i64 %indvars.iv.next22.i.i
  %i.nc = load i8, ptr %i.nb, align 1, !tbaa !36
  %i.nd = zext i8 %i.nc to i64
  %i.ne = getelementptr inbounds nuw i8, ptr @deflate_extra_length_bits, i64 %i.nd
  %i.nf = load i8, ptr %i.ne, align 1, !tbaa !36
  %i.ng = zext i8 %i.nf to i32
  %i.nh = shl nuw nsw i32 %i.ng, 4
  %i.ni = add nuw nsw i32 %i.nh, %i.ke
  %i.nj = getelementptr inbounds nuw [4 x i8], ptr %i.mr, i64 %indvars.iv.next22.i.i
  store i32 %i.ni, ptr %i.nj, align 4, !tbaa !36
  %indvars.iv.next22.i.i.1 = add nuw nsw i64 %indvars.iv21.i.i, 2 ; 2 uses
  %exitcond24.not.i.i.1 = icmp eq i64 %indvars.iv.next22.i.i.1, 259
  br i1 %exitcond24.not.i.i.1, label %deflate_set_default_costs.exit.i, label %bb.j, !llvm.loop !240

deflate_set_default_costs.exit.i:                 ; preds = %bb.j
end_hunk_0
begin_hunk_1_@deflate_decompress_default:bb.a
  %.23696.4 = phi ptr [ %i.uo, %bb.cm ], [ %.23696.3, %bb.cn ] ; 5 uses
  %.28671.4 = phi i64 [ %i.ut, %bb.cm ], [ %.28671.3, %bb.cn ] ; 3 uses
  %.18.4 = phi i64 [ %.18.3, %bb.cm ], [ %i.uu, %bb.cn ] ; 3 uses
  %i.uw = add i32 %.23, 40                        ; 2 uses
  %i.ux = and i32 %i.uw, 255                      ; 2 uses
  %i.uy = icmp samesign ult i32 %i.ux, 56
  br i1 %i.uy, label %.lr.ph1004.5, label %.loopexit894

.lr.ph1004.5:                                     ; preds = %bb.co
  %.not771.5 = icmp eq ptr %.23696.4, %i.e
  br i1 %.not771.5, label %bb.cq, label %bb.cp, !prof !44

bb.cp:                                            ; preds = %.lr.ph1004.5
  %i.uz = getelementptr inbounds nuw i8, ptr %.23696.4, i64 1
  %i.va = load i8, ptr %.23696.4, align 1, !tbaa !36
  %i.vb = zext i8 %i.va to i64
  %i.vc = zext nneg i32 %i.ux to i64
  %i.vd = shl nuw nsw i64 %i.vb, %i.vc
  %i.ve = or i64 %i.vd, %.28671.4
  br label %bb.cr

bb.cq:                                            ; preds = %.lr.ph1004.5
  %i.vf = add i64 %.18.4, 1                       ; 2 uses
  %i.vg = icmp ugt i64 %i.vf, 8
  br i1 %i.vg, label %.thread836, label %bb.cr, !prof !44

bb.cr:                                            ; preds = %bb.cq, %bb.cp
  %.23696.5 = phi ptr [ %i.uz, %bb.cp ], [ %.23696.4, %bb.cq ] ; 5 uses
  %.28671.5 = phi i64 [ %i.ve, %bb.cp ], [ %.28671.4, %bb.cq ] ; 3 uses
  %.18.5 = phi i64 [ %.18.4, %bb.cp ], [ %i.vf, %bb.cq ] ; 3 uses
  %i.vh = add i32 %.23, 48                        ; 2 uses
  %i.vi = and i32 %i.vh, 255                      ; 2 uses
  %i.vj = icmp samesign ult i32 %i.vi, 56
  br i1 %i.vj, label %.lr.ph1004.6, label %.loopexit894

.lr.ph1004.6:                                     ; preds = %bb.cr
  %.not771.6 = icmp eq ptr %.23696.5, %i.e
  br i1 %.not771.6, label %bb.ct, label %bb.cs, !prof !44

bb.cs:                                            ; preds = %.lr.ph1004.6
  %i.vk = getelementptr inbounds nuw i8, ptr %.23696.5, i64 1
  %i.vl = load i8, ptr %.23696.5, align 1, !tbaa !36
  %i.vm = zext i8 %i.vl to i64
  %i.vn = zext nneg i32 %i.vi to i64
  %i.vo = shl nuw nsw i64 %i.vm, %i.vn
  %i.vp = or i64 %i.vo, %.28671.5
  br label %bb.cu

bb.ct:                                            ; preds = %.lr.ph1004.6
  %i.vq = add i64 %.18.5, 1                       ; 2 uses
  %i.vr = icmp ugt i64 %i.vq, 8
  br i1 %i.vr, label %.thread836, label %bb.cu, !prof !44

bb.cu:                                            ; preds = %bb.ct, %bb.cs
  %.23696.6 = phi ptr [ %i.vk, %bb.cs ], [ %.23696.5, %bb.ct ]
  %.28671.6 = phi i64 [ %i.vp, %bb.cs ], [ %.28671.5, %bb.ct ]
  %.18.6 = phi i64 [ %.18.5, %bb.cs ], [ %i.vq, %bb.ct ]
  %i.vs = add i32 %.23, 56
  br label %.loopexit894

.loopexit894:                                     ; preds = %bb.cc, %bb.cf, %bb.ci, %bb.cl, %bb.co, %bb.cr, %bb.cu, %.preheader, %bb.bz
  %.24697 = phi ptr [ %i.su, %bb.bz ], [ %.21694, %.preheader ], [ %.23696, %bb.cc ], [ %.23696.1, %bb.cf ], [ %.23696.2, %bb.ci ], [ %.23696.3, %bb.cl ], [ %.23696.4, %bb.co ], [ %.23696.5, %bb.cr ], [ %.23696.6, %bb.cu ] ; 2 uses
  %.29672 = phi i64 [ %i.so, %bb.bz ], [ %.26669, %.preheader ], [ %.28671, %bb.cc ], [ %.28671.1, %bb.cf ], [ %.28671.2, %bb.ci ], [ %.28671.3, %bb.cl ], [ %.28671.4, %bb.co ], [ %.28671.5, %bb.cr ], [ %.28671.6, %bb.cu ] ; 3 uses
  %.25 = phi i32 [ %i.sv, %bb.bz ], [ %.23, %.preheader ], [ %i.te, %bb.cc ], [ %i.tp, %bb.cf ], [ %i.ua, %bb.ci ], [ %i.ul, %bb.cl ], [ %i.uw, %bb.co ], [ %i.vh, %bb.cr ], [ %i.vs, %bb.cu ]
  %.19 = phi i64 [ %.16, %bb.bz ], [ %.16, %.preheader ], [ %.18, %bb.cc ], [ %.18.1, %bb.cf ], [ %.18.2, %bb.ci ], [ %.18.3, %bb.cl ], [ %.18.4, %bb.co ], [ %.18.5, %bb.cr ], [ %.18.6, %bb.cu ] ; 2 uses
  %i.vt = and i64 %.29672, %i.kf
  %i.vu = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.vt
  %i.vv = load i32, ptr %i.vu, align 4, !tbaa !36 ; 6 uses
  %i.vw = and i32 %i.vv, 255
  %i.vx = zext nneg i32 %i.vw to i64
  %i.vy = lshr i64 %.29672, %i.vx                 ; 4 uses
  %i.vz = sub i32 %.25, %i.vv                     ; 2 uses
  %i.wa = and i32 %i.vv, 16384
  %.not772 = icmp eq i32 %i.wa, 0
  br i1 %.not772, label %bb.cw, label %bb.cv, !prof !46

bb.cv:                                            ; preds = %.loopexit894
  %i.wb = lshr i32 %i.vv, 16
  %i.wc = zext nneg i32 %i.wb to i64
  %i.wd = lshr i32 %i.vv, 8
  %i.we = and i32 %i.wd, 63
  %i.wf = zext nneg i32 %i.we to i64
  %notmask773 = shl nsw i64 -1, %i.wf
  %i.wg = xor i64 %notmask773, -1
  %i.wh = and i64 %i.vy, %i.wg
  %i.wi = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.wh
  %i.wj = getelementptr inbounds nuw [4 x i8], ptr %i.wi, i64 %i.wc
  %i.wk = load i32, ptr %i.wj, align 4, !tbaa !36 ; 3 uses
  %i.wl = and i32 %i.wk, 255
  %i.wm = zext nneg i32 %i.wl to i64
  %i.wn = lshr i64 %i.vy, %i.wm
  %i.wo = sub i32 %i.vz, %i.wk
  br label %bb.cw

bb.cw:                                            ; preds = %bb.cv, %.loopexit894
  %.30 = phi i64 [ %i.wn, %bb.cv ], [ %i.vy, %.loopexit894 ] ; 5 uses
  %.2642 = phi i64 [ %i.vy, %bb.cv ], [ %.29672, %.loopexit894 ]
  %.26 = phi i32 [ %i.wo, %bb.cv ], [ %i.vz, %.loopexit894 ] ; 4 uses
  %.5600 = phi i32 [ %i.wk, %bb.cv ], [ %i.vv, %.loopexit894 ] ; 5 uses
  %i.wp = lshr i32 %.5600, 16                     ; 2 uses
  %.not774 = icmp sgt i32 %.5600, -1
  br i1 %.not774, label %bb.cz, label %bb.cx

bb.cx:                                            ; preds = %bb.cw
  %i.wq = icmp eq ptr %.6706, %i.a
  br i1 %i.wq, label %.thread836, label %bb.cy, !prof !44

bb.cy:                                            ; preds = %bb.cx
  %i.wr = trunc i32 %i.wp to i8
  %i.ws = getelementptr inbounds nuw i8, ptr %.6706, i64 1
  store i8 %i.wr, ptr %.6706, align 1, !tbaa !36
  br label %.loopexit904.backedge

bb.cz:                                            ; preds = %bb.cw
  %i.wt = and i32 %.5600, 8192
  %.not775 = icmp eq i32 %i.wt, 0
  br i1 %.not775, label %bb.da, label %.thread869, !prof !46

bb.da:                                            ; preds = %bb.cz
  %i.wu = and i32 %.5600, 255
  %i.wv = zext nneg i32 %i.wu to i64
  %notmask776 = shl nsw i64 -1, %i.wv
  %i.ww = xor i64 %notmask776, -1
  %i.wx = and i64 %.2642, %i.ww
  %i.wy = lshr i32 %.5600, 8
  %i.wz = and i32 %i.wy, 223
  %i.xa = zext nneg i32 %i.wz to i64
  %i.xb = lshr i64 %i.wx, %i.xa
  %i.xc = trunc i64 %i.xb to i32
  %i.xd = add i32 %i.wp, %i.xc
  %i.xe = zext i32 %i.xd to i64                   ; 3 uses
  %i.xf = ptrtoint ptr %.6706 to i64              ; 5 uses
  %i.xg = sub i64 %i.k, %i.xf
  %i.xh = icmp slt i64 %i.xg, %i.xe
  br i1 %i.xh, label %.thread836, label %bb.db, !prof !44

bb.db:                                            ; preds = %bb.da
  %i.xi = and i64 %.30, 255
  %i.xj = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %i.xi
  %i.xk = load i32, ptr %i.xj, align 4, !tbaa !16 ; 4 uses
  %i.xl = and i32 %i.xk, 32768
  %.not777 = icmp eq i32 %i.xl, 0
  br i1 %.not777, label %bb.dd, label %bb.dc, !prof !46

bb.dc:                                            ; preds = %bb.db
  %i.xm = lshr i64 %.30, 8                        ; 2 uses
  %i.xn = add i32 %.26, -8
  %i.xo = lshr i32 %i.xk, 16
  %i.xp = zext nneg i32 %i.xo to i64
  %i.xq = lshr i32 %i.xk, 8
  %i.xr = and i32 %i.xq, 63
  %i.xs = zext nneg i32 %i.xr to i64
  %notmask778 = shl nsw i64 -1, %i.xs
  %i.xt = xor i64 %notmask778, -1
  %i.xu = and i64 %i.xm, %i.xt
  %i.xv = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %i.xu
  %i.xw = getelementptr inbounds nuw [4 x i8], ptr %i.xv, i64 %i.xp
  %i.xx = load i32, ptr %i.xw, align 4, !tbaa !16
  br label %bb.dd

bb.dd:                                            ; preds = %bb.dc, %bb.db
  %.31 = phi i64 [ %i.xm, %bb.dc ], [ %.30, %bb.db ] ; 2 uses
  %.27 = phi i32 [ %i.xn, %bb.dc ], [ %.26, %bb.db ]
  %.6 = phi i32 [ %i.xx, %bb.dc ], [ %i.xk, %bb.db ] ; 4 uses
  %i.xy = lshr i32 %.6, 16
  %i.xz = and i32 %.6, 255
  %i.ya = zext nneg i32 %i.xz to i64              ; 2 uses
  %notmask779 = shl nsw i64 -1, %i.ya
  %i.yb = xor i64 %notmask779, -1
  %i.yc = and i64 %.31, %i.yb
  %i.yd = lshr i32 %.6, 8
  %i.ye = and i32 %i.yd, 255
  %i.yf = zext nneg i32 %i.ye to i64
  %i.yg = lshr i64 %i.yc, %i.yf
  %i.yh = trunc i64 %i.yg to i32
  %i.yi = add i32 %i.xy, %i.yh                    ; 2 uses
  %i.yj = lshr i64 %.31, %i.ya                    ; 3 uses
  %i.yk = sub i32 %.27, %.6                       ; 3 uses
  %i.yl = zext i32 %i.yi to i64                   ; 2 uses
  %i.ym = sub i64 %i.xf, %i.q
  %.not780 = icmp slt i64 %i.ym, %i.yl
  br i1 %.not780, label %.thread836, label %iter.check, !prof !44

iter.check:                                       ; preds = %bb.dd
  %i.yn = sub nsw i64 0, %i.yl
  %i.yo = getelementptr inbounds i8, ptr %.6706, i64 %i.yn ; 3 uses
  %i.yp = getelementptr inbounds nuw i8, ptr %.6706, i64 %i.xe ; 4 uses
  %i.yq = getelementptr inbounds nuw i8, ptr %i.yo, i64 1
  %i.yr = load i8, ptr %i.yo, align 1, !tbaa !36
  %i.ys = getelementptr inbounds nuw i8, ptr %.6706, i64 1
  store i8 %i.yr, ptr %.6706, align 1, !tbaa !36
  %i.yt = getelementptr inbounds nuw i8, ptr %i.yo, i64 2 ; 5 uses
  %i.yu = load i8, ptr %i.yq, align 1, !tbaa !36
  %i.yv = getelementptr inbounds nuw i8, ptr %.6706, i64 2 ; 5 uses
  store i8 %i.yu, ptr %i.ys, align 1, !tbaa !36
  %i.yw = add i64 %i.xf, %i.xe
  %i.yx = add i64 %i.xf, 3
  %umax = tail call i64 @llvm.umax.i64(i64 %i.yw, i64 %i.yx)
  %i.yy = add i64 %umax, -2
  %i.yz = sub i64 %i.yy, %i.xf                    ; 7 uses
  %min.iters.check = icmp ult i64 %i.yz, 8
  %i.za = add i32 %i.yi, -1
  %diff.check = icmp ult i32 %i.za, 31
  %or.cond1160 = or i1 %min.iters.check, %diff.check
  br i1 %or.cond1160, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check1147 = icmp ult i64 %i.yz, 32
  br i1 %min.iters.check1147, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.zb = and i64 %i.yz, 24
  %n.vec = and i64 %i.yz, -32                     ; 5 uses
  %i.zc = getelementptr i8, ptr %i.yt, i64 %n.vec
  %i.zd = getelementptr i8, ptr %i.yv, i64 %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %next.gep = getelementptr i8, ptr %i.yt, i64 %index ; 2 uses
  %next.gep1148 = getelementptr i8, ptr %i.yv, i64 %index ; 2 uses
  %i.ze = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <16 x i8>, ptr %next.gep, align 1, !tbaa !36
  %wide.load1149 = load <16 x i8>, ptr %i.ze, align 1, !tbaa !36
  %i.zf = getelementptr i8, ptr %next.gep1148, i64 16
  store <16 x i8> %wide.load, ptr %next.gep1148, align 1, !tbaa !36
  store <16 x i8> %wide.load1149, ptr %i.zf, align 1, !tbaa !36
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.zg = icmp eq i64 %index.next, %n.vec
  br i1 %i.zg, label %middle.block, label %vector.body, !llvm.loop !323

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.yz, %n.vec
  br i1 %cmp.n, label %.loopexit904.backedge, label %vec.epilog.iter.check

.loopexit904.backedge:                            ; preds = %vec.epilog.scalar.ph, %middle.block, %vec.epilog.middle.block, %bb.cy
  %.6706.be = phi ptr [ %i.yp, %vec.epilog.middle.block ], [ %i.yp, %middle.block ], [ %i.ws, %bb.cy ], [ %i.yp, %vec.epilog.scalar.ph ]
  %.26669.be = phi i64 [ %i.yj, %vec.epilog.middle.block ], [ %i.yj, %middle.block ], [ %.30, %bb.cy ], [ %i.yj, %vec.epilog.scalar.ph ]
  %.23.be = phi i32 [ %i.yk, %vec.epilog.middle.block ], [ %i.yk, %middle.block ], [ %.26, %bb.cy ], [ %i.yk, %vec.epilog.scalar.ph ]
  br label %.loopexit904

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.zb, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !100

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec1151 = and i64 %i.yz, -8                  ; 4 uses
  %i.zh = getelementptr i8, ptr %i.yt, i64 %n.vec1151
  %i.zi = getelementptr i8, ptr %i.yv, i64 %n.vec1151
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index1152 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next1156, %vec.epilog.vector.body ] ; 3 uses
  %next.gep1153 = getelementptr i8, ptr %i.yt, i64 %index1152
  %next.gep1154 = getelementptr i8, ptr %i.yv, i64 %index1152
  %wide.load1155 = load <8 x i8>, ptr %next.gep1153, align 1, !tbaa !36
  store <8 x i8> %wide.load1155, ptr %next.gep1154, align 1, !tbaa !36
  %index.next1156 = add nuw i64 %index1152, 8     ; 2 uses
  %i.zj = icmp eq i64 %index.next1156, %n.vec1151
  br i1 %i.zj, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !324

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n1157 = icmp eq i64 %i.yz, %n.vec1151
  br i1 %cmp.n1157, label %.loopexit904.backedge, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.0578.ph = phi ptr [ %i.yt, %iter.check ], [ %i.zc, %vec.epilog.iter.check ], [ %i.zh, %vec.epilog.middle.block ]
  %.0.ph = phi ptr [ %i.yv, %iter.check ], [ %i.zd, %vec.epilog.iter.check ], [ %i.zi, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %.0578 = phi ptr [ %i.zk, %vec.epilog.scalar.ph ], [ %.0578.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %.0 = phi ptr [ %i.zm, %vec.epilog.scalar.ph ], [ %.0.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %i.zk = getelementptr inbounds nuw i8, ptr %.0578, i64 1
  %i.zl = load i8, ptr %.0578, align 1, !tbaa !36
  %i.zm = getelementptr inbounds nuw i8, ptr %.0, i64 1 ; 2 uses
  store i8 %i.zl, ptr %.0, align 1, !tbaa !36
  %i.zn = icmp ult ptr %i.zm, %i.yp
  br i1 %i.zn, label %vec.epilog.scalar.ph, label %.loopexit904.backedge, !llvm.loop !325

.thread869:                                       ; preds = %bb.bl, %bb.bi, %bb.cz, %bb.ay
  %.8708 = phi ptr [ %.6706, %bb.cz ], [ %i.ju, %bb.ay ], [ %.3703, %bb.bi ], [ %.3703, %bb.bl ] ; 3 uses
  %.26699 = phi ptr [ %.24697, %bb.cz ], [ %i.jt, %bb.ay ], [ %.16689, %bb.bi ], [ %.16689, %bb.bl ] ; 2 uses
  %.33 = phi i64 [ %.30, %bb.cz ], [ 0, %bb.ay ], [ %.20663, %bb.bi ], [ %i.mw, %bb.bl ]
  %.29 = phi i32 [ %.26, %bb.cz ], [ 0, %bb.ay ], [ %.17635, %bb.bi ], [ %i.mx, %bb.bl ] ; 2 uses
  %.21 = phi i64 [ %.19, %bb.cz ], [ 0, %bb.ay ], [ %.15, %bb.bi ], [ %.15, %bb.bl ] ; 3 uses
  br i1 %.not744, label %bb.b, label %bb.de

bb.de:                                            ; preds = %.thread869
  %i.zo = lshr i32 %.29, 3
  %i.zp = and i32 %i.zo, 31
  %i.zq = zext nneg i32 %i.zp to i64              ; 2 uses
  %.not781 = icmp ugt i64 %.21, %i.zq
  br i1 %.not781, label %.thread836, label %bb.df, !prof !44

bb.df:                                            ; preds = %bb.de
  %.not782 = icmp eq ptr %5, null
  br i1 %.not782, label %bb.dh, label %bb.dg

bb.dg:                                            ; preds = %bb.df
  %.neg783 = sub nsw i64 %.21, %i.zq
  %i.zr = getelementptr inbounds i8, ptr %.26699, i64 %.neg783
  %i.zs = ptrtoint ptr %i.zr to i64
  %i.zt = ptrtoint ptr %1 to i64
  %i.zu = sub i64 %i.zs, %i.zt
  store i64 %i.zu, ptr %5, align 8, !tbaa !71
  br label %bb.dh

bb.dh:                                            ; preds = %bb.dg, %bb.df
  %.not784 = icmp eq ptr %6, null
  br i1 %.not784, label %bb.dj, label %bb.di

bb.di:                                            ; preds = %bb.dh
  %i.zv = ptrtoint ptr %.8708 to i64
  %i.zw = sub i64 %i.zv, %i.q
  store i64 %i.zw, ptr %6, align 8, !tbaa !71
  br label %bb.dk

bb.dj:                                            ; preds = %bb.dh
  %.not785 = icmp eq ptr %.8708, %i.a
  br i1 %.not785, label %bb.dk, label %.thread836

bb.dk:                                            ; preds = %bb.dj, %bb.di
  br label %.thread836

.thread836:                                       ; preds = %bb.ax, %bb.aw, %bb.av, %bb.au, %bb.at, %._crit_edge, %bb.as, %.loopexit916, %bb.ba, %.thread843, %bb.e, %bb.j, %bb.am, %bb.bs, %bb.dd, %bb.da, %bb.cx, %bb.q, %bb.t, %bb.w, %bb.z, %bb.ac, %bb.af, %bb.ai, %bb.cb, %bb.ce, %bb.ch, %bb.ck, %bb.cn, %bb.cq, %bb.ct, %bb.dj, %bb.de, %bb.dk
  %.14723 = phi i32 [ 1, %bb.q ], [ 1, %bb.e ], [ 1, %bb.am ], [ 1, %bb.dd ], [ 0, %bb.dk ], [ 1, %bb.de ], [ 2, %bb.dj ], [ 1, %bb.bs ], [ 1, %bb.j ], [ 1, %bb.cb ], [ 1, %bb.ct ], [ 1, %bb.cq ], [ 1, %bb.cn ], [ 1, %bb.ck ], [ 1, %bb.ch ], [ 1, %bb.ce ], [ 1, %bb.ai ], [ 1, %bb.af ], [ 1, %bb.ac ], [ 1, %bb.z ], [ 1, %bb.w ], [ 1, %bb.t ], [ 3, %bb.cx ], [ 3, %bb.da ], [ 1, %bb.au ], [ 1, %bb.av ], [ 3, %bb.aw ], [ 1, %bb.ax ], [ 1, %bb.as ], [ 1, %._crit_edge ], [ 1, %.loopexit916 ], [ 1, %bb.at ], [ 1, %.thread843 ], [ 1, %bb.ba ]
  ret i32 %.14723
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal range(i32 0, 4) i32 @deflate_decompress_bmi2(ptr noalias nofree noundef captures(address_is_null) %0, ptr noalias noundef %1, i64 noundef %2, ptr noalias noundef %3, i64 noundef %4, ptr nofree noundef writeonly captures(address_is_null) %5, ptr nofree noundef writeonly captures(address_is_null) %6) #17 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 %4 ; 4 uses
  %i.b = tail call i64 @llvm.umin.i64(i64 %4, i64 299)
  %i.c = sub nsw i64 0, %i.b
  %i.d = getelementptr inbounds i8, ptr %i.a, i64 %i.c ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 %2 ; 18 uses
  %i.f = tail call i64 @llvm.umin.i64(i64 %2, i64 25)
  %i.g = sub nsw i64 0, %i.f
  %i.h = getelementptr inbounds i8, ptr %i.e, i64 %i.g ; 2 uses
  %i.i = ptrtoint ptr %i.e to i64                 ; 6 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 11552 ; 3 uses
  %i.k = ptrtoint ptr %i.a to i64                 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 460 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 10976 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 9368 ; 5 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 11556 ; 2 uses
  %i.q = ptrtoint ptr %3 to i64                   ; 3 uses
  %scevgep = getelementptr i8, ptr %0, i64 144
  %scevgep1043 = getelementptr i8, ptr %0, i64 256
  %scevgep1045 = getelementptr i8, ptr %0, i64 280
  %scevgep1047 = getelementptr i8, ptr %0, i64 288
  br label %bb.b

bb.b:                                             ; preds = %.thread869, %bb.a
  %.0700 = phi ptr [ %3, %bb.a ], [ %.8708, %.thread869 ] ; 6 uses
  %.0673 = phi ptr [ %1, %bb.a ], [ %.26699, %.thread869 ] ; 5 uses
  %.0643 = phi i64 [ 0, %bb.a ], [ %.33, %.thread869 ] ; 3 uses
  %.0618 = phi i32 [ 0, %bb.a ], [ %.29, %.thread869 ] ; 6 uses
  %.0611 = phi i64 [ 0, %bb.a ], [ %.21, %.thread869 ] ; 3 uses
  %i.r = ptrtoint ptr %.0673 to i64
  %i.s = sub i64 %i.i, %i.r
  %i.t = icmp ugt i64 %i.s, 7
  br i1 %i.t, label %bb.c, label %.preheader915, !prof !46

.preheader915:                                    ; preds = %bb.b
  %i.u = and i32 %.0618, 255                      ; 2 uses
  %i.v = icmp samesign ult i32 %i.u, 56
  br i1 %i.v, label %.lr.ph, label %.loopexit916

bb.c:                                             ; preds = %bb.b
  %.0.copyload.i808 = load i64, ptr %.0673, align 1
  %i.w = and i32 %.0618, 255
  %i.x = zext nneg i32 %i.w to i64
  %i.y = shl i64 %.0.copyload.i808, %i.x
  %i.z = or i64 %i.y, %.0643
  %i.aa = getelementptr inbounds nuw i8, ptr %.0673, i64 7
  %i.ab = lshr i32 %.0618, 3
  %i.ac = and i32 %i.ab, 7
  %i.ad = zext nneg i32 %i.ac to i64
  %i.ae = sub nsw i64 0, %i.ad
  %i.af = getelementptr inbounds i8, ptr %i.aa, i64 %i.ae
  %i.ag = or i32 %.0618, 56
  br label %.loopexit916

.lr.ph:                                           ; preds = %.preheader915, %bb.f
  %i.ah = phi i32 [ %i.ar, %bb.f ], [ %i.u, %.preheader915 ]
  %.1612953 = phi i64 [ %.2613, %bb.f ], [ %.0611, %.preheader915 ] ; 2 uses
  %.1619952 = phi i32 [ %i.aq, %bb.f ], [ %.0618, %.preheader915 ]
  %.1644951 = phi i64 [ %.2645, %bb.f ], [ %.0643, %.preheader915 ] ; 2 uses
  %.1674950 = phi ptr [ %.2675, %bb.f ], [ %.0673, %.preheader915 ] ; 4 uses
  %.not = icmp eq ptr %.1674950, %i.e
  br i1 %.not, label %bb.e, label %bb.d, !prof !44

bb.d:                                             ; preds = %.lr.ph
  %i.ai = getelementptr inbounds nuw i8, ptr %.1674950, i64 1
  %i.aj = load i8, ptr %.1674950, align 1, !tbaa !36
  %i.ak = zext i8 %i.aj to i64
  %i.al = zext nneg i32 %i.ah to i64
  %i.am = shl nuw nsw i64 %i.ak, %i.al
  %i.an = or i64 %i.am, %.1644951
  br label %bb.f

bb.e:                                             ; preds = %.lr.ph
  %i.ao = add i64 %.1612953, 1                    ; 2 uses
  %i.ap = icmp ugt i64 %i.ao, 8
  br i1 %i.ap, label %.thread836, label %bb.f, !prof !44

bb.f:                                             ; preds = %bb.e, %bb.d
  %.2675 = phi ptr [ %i.ai, %bb.d ], [ %.1674950, %bb.e ] ; 2 uses
  %.2645 = phi i64 [ %i.an, %bb.d ], [ %.1644951, %bb.e ] ; 2 uses
  %.2613 = phi i64 [ %.1612953, %bb.d ], [ %i.ao, %bb.e ] ; 2 uses
  %i.aq = add i32 %.1619952, 8                    ; 3 uses
  %i.ar = and i32 %i.aq, 255                      ; 2 uses
  %i.as = icmp samesign ult i32 %i.ar, 56
  br i1 %i.as, label %.lr.ph, label %.loopexit916, !llvm.loop !326

.loopexit916:                                     ; preds = %bb.f, %.preheader915, %bb.c
  %.3676 = phi ptr [ %i.af, %bb.c ], [ %.0673, %.preheader915 ], [ %.2675, %bb.f ] ; 8 uses
  %.3646 = phi i64 [ %i.z, %bb.c ], [ %.0643, %.preheader915 ], [ %.2645, %bb.f ] ; 5 uses
  %.2620 = phi i32 [ %i.ag, %bb.c ], [ %.0618, %.preheader915 ], [ %i.aq, %bb.f ] ; 3 uses
  %.3614 = phi i64 [ %.0611, %bb.c ], [ %.0611, %.preheader915 ], [ %.2613, %bb.f ] ; 7 uses
  %i.at = and i64 %.3646, 1
  %.not744 = icmp eq i64 %i.at, 0
  %i.au = trunc i64 %.3646 to i32                 ; 4 uses
  %i.av = lshr i32 %i.au, 1
  %i.aw = and i32 %i.av, 3
  switch i32 %i.aw, label %default.unreachable [
    i32 2, label %bb.g
    i32 0, label %bb.at
    i32 1, label %bb.az
    i32 3, label %.thread836
  ], !prof !97

bb.g:                                             ; preds = %.loopexit916
  %i.ax = lshr i32 %i.au, 3
  %i.ay = and i32 %i.ax, 31
  %i.az = add nuw nsw i32 %i.ay, 257              ; 2 uses
  %i.ba = lshr i32 %i.au, 8
  %i.bb = and i32 %i.ba, 31
  %i.bc = add nuw nsw i32 %i.bb, 1                ; 2 uses
  %i.bd = lshr i32 %i.au, 13                      ; 2 uses
  %i.be = and i32 %i.bd, 15
  store i8 0, ptr %i.j, align 8, !tbaa !98
  %i.bf = lshr i64 %.3646, 17
  %i.bg = trunc i64 %i.bf to i8
  %i.bh = and i8 %i.bg, 7
  store i8 %i.bh, ptr %i.l, align 8, !tbaa !36
  %i.bi = lshr i64 %.3646, 20                     ; 3 uses
  %i.bj = add i32 %.2620, -20                     ; 6 uses
  %i.bk = ptrtoint ptr %.3676 to i64
  %i.bl = sub i64 %i.i, %i.bk
  %i.bm = icmp ugt i64 %i.bl, 7
  br i1 %i.bm, label %bb.h, label %.preheader908, !prof !46

.preheader908:                                    ; preds = %bb.g
end_hunk_1
begin_hunk_2_@deflate_decompress_bmi2:bb.a
  %.23696.4 = phi ptr [ %i.uo, %bb.cm ], [ %.23696.3, %bb.cn ] ; 5 uses
  %.28671.4 = phi i64 [ %i.ut, %bb.cm ], [ %.28671.3, %bb.cn ] ; 3 uses
  %.18.4 = phi i64 [ %.18.3, %bb.cm ], [ %i.uu, %bb.cn ] ; 3 uses
  %i.uw = add i32 %.23, 40                        ; 2 uses
  %i.ux = and i32 %i.uw, 255                      ; 2 uses
  %i.uy = icmp samesign ult i32 %i.ux, 56
  br i1 %i.uy, label %.lr.ph1004.5, label %.loopexit894

.lr.ph1004.5:                                     ; preds = %bb.co
  %.not771.5 = icmp eq ptr %.23696.4, %i.e
  br i1 %.not771.5, label %bb.cq, label %bb.cp, !prof !44

bb.cp:                                            ; preds = %.lr.ph1004.5
  %i.uz = getelementptr inbounds nuw i8, ptr %.23696.4, i64 1
  %i.va = load i8, ptr %.23696.4, align 1, !tbaa !36
  %i.vb = zext i8 %i.va to i64
  %i.vc = zext nneg i32 %i.ux to i64
  %i.vd = shl nuw nsw i64 %i.vb, %i.vc
  %i.ve = or i64 %i.vd, %.28671.4
  br label %bb.cr

bb.cq:                                            ; preds = %.lr.ph1004.5
  %i.vf = add i64 %.18.4, 1                       ; 2 uses
  %i.vg = icmp ugt i64 %i.vf, 8
  br i1 %i.vg, label %.thread836, label %bb.cr, !prof !44

bb.cr:                                            ; preds = %bb.cq, %bb.cp
  %.23696.5 = phi ptr [ %i.uz, %bb.cp ], [ %.23696.4, %bb.cq ] ; 5 uses
  %.28671.5 = phi i64 [ %i.ve, %bb.cp ], [ %.28671.4, %bb.cq ] ; 3 uses
  %.18.5 = phi i64 [ %.18.4, %bb.cp ], [ %i.vf, %bb.cq ] ; 3 uses
  %i.vh = add i32 %.23, 48                        ; 2 uses
  %i.vi = and i32 %i.vh, 255                      ; 2 uses
  %i.vj = icmp samesign ult i32 %i.vi, 56
  br i1 %i.vj, label %.lr.ph1004.6, label %.loopexit894

.lr.ph1004.6:                                     ; preds = %bb.cr
  %.not771.6 = icmp eq ptr %.23696.5, %i.e
  br i1 %.not771.6, label %bb.ct, label %bb.cs, !prof !44

bb.cs:                                            ; preds = %.lr.ph1004.6
  %i.vk = getelementptr inbounds nuw i8, ptr %.23696.5, i64 1
  %i.vl = load i8, ptr %.23696.5, align 1, !tbaa !36
  %i.vm = zext i8 %i.vl to i64
  %i.vn = zext nneg i32 %i.vi to i64
  %i.vo = shl nuw nsw i64 %i.vm, %i.vn
  %i.vp = or i64 %i.vo, %.28671.5
  br label %bb.cu

bb.ct:                                            ; preds = %.lr.ph1004.6
  %i.vq = add i64 %.18.5, 1                       ; 2 uses
  %i.vr = icmp ugt i64 %i.vq, 8
  br i1 %i.vr, label %.thread836, label %bb.cu, !prof !44

bb.cu:                                            ; preds = %bb.ct, %bb.cs
  %.23696.6 = phi ptr [ %i.vk, %bb.cs ], [ %.23696.5, %bb.ct ]
  %.28671.6 = phi i64 [ %i.vp, %bb.cs ], [ %.28671.5, %bb.ct ]
  %.18.6 = phi i64 [ %.18.5, %bb.cs ], [ %i.vq, %bb.ct ]
  %i.vs = add i32 %.23, 56
  br label %.loopexit894

.loopexit894:                                     ; preds = %bb.cc, %bb.cf, %bb.ci, %bb.cl, %bb.co, %bb.cr, %bb.cu, %.preheader, %bb.bz
  %.24697 = phi ptr [ %i.su, %bb.bz ], [ %.21694, %.preheader ], [ %.23696, %bb.cc ], [ %.23696.1, %bb.cf ], [ %.23696.2, %bb.ci ], [ %.23696.3, %bb.cl ], [ %.23696.4, %bb.co ], [ %.23696.5, %bb.cr ], [ %.23696.6, %bb.cu ] ; 2 uses
  %.29672 = phi i64 [ %i.so, %bb.bz ], [ %.26669, %.preheader ], [ %.28671, %bb.cc ], [ %.28671.1, %bb.cf ], [ %.28671.2, %bb.ci ], [ %.28671.3, %bb.cl ], [ %.28671.4, %bb.co ], [ %.28671.5, %bb.cr ], [ %.28671.6, %bb.cu ] ; 3 uses
  %.25 = phi i32 [ %i.sv, %bb.bz ], [ %.23, %.preheader ], [ %i.te, %bb.cc ], [ %i.tp, %bb.cf ], [ %i.ua, %bb.ci ], [ %i.ul, %bb.cl ], [ %i.uw, %bb.co ], [ %i.vh, %bb.cr ], [ %i.vs, %bb.cu ]
  %.19 = phi i64 [ %.16, %bb.bz ], [ %.16, %.preheader ], [ %.18, %bb.cc ], [ %.18.1, %bb.cf ], [ %.18.2, %bb.ci ], [ %.18.3, %bb.cl ], [ %.18.4, %bb.co ], [ %.18.5, %bb.cr ], [ %.18.6, %bb.cu ] ; 2 uses
  %i.vt = and i64 %.29672, %i.kf
  %i.vu = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.vt
  %i.vv = load i32, ptr %i.vu, align 4, !tbaa !36 ; 6 uses
  %i.vw = and i32 %i.vv, 255
  %i.vx = zext nneg i32 %i.vw to i64
  %i.vy = lshr i64 %.29672, %i.vx                 ; 4 uses
  %i.vz = sub i32 %.25, %i.vv                     ; 2 uses
  %i.wa = and i32 %i.vv, 16384
  %.not772 = icmp eq i32 %i.wa, 0
  br i1 %.not772, label %bb.cw, label %bb.cv, !prof !46

bb.cv:                                            ; preds = %.loopexit894
  %i.wb = lshr i32 %i.vv, 16
  %i.wc = zext nneg i32 %i.wb to i64
  %i.wd = lshr i32 %i.vv, 8
  %i.we = and i32 %i.wd, 63
  %i.wf = zext nneg i32 %i.we to i64
  %notmask773 = shl nsw i64 -1, %i.wf
  %i.wg = xor i64 %notmask773, -1
  %i.wh = and i64 %i.vy, %i.wg
  %i.wi = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.wh
  %i.wj = getelementptr inbounds nuw [4 x i8], ptr %i.wi, i64 %i.wc
  %i.wk = load i32, ptr %i.wj, align 4, !tbaa !36 ; 3 uses
  %i.wl = and i32 %i.wk, 255
  %i.wm = zext nneg i32 %i.wl to i64
  %i.wn = lshr i64 %i.vy, %i.wm
  %i.wo = sub i32 %i.vz, %i.wk
  br label %bb.cw

bb.cw:                                            ; preds = %bb.cv, %.loopexit894
  %.30 = phi i64 [ %i.wn, %bb.cv ], [ %i.vy, %.loopexit894 ] ; 5 uses
  %.2642 = phi i64 [ %i.vy, %bb.cv ], [ %.29672, %.loopexit894 ]
  %.26 = phi i32 [ %i.wo, %bb.cv ], [ %i.vz, %.loopexit894 ] ; 4 uses
  %.5600 = phi i32 [ %i.wk, %bb.cv ], [ %i.vv, %.loopexit894 ] ; 5 uses
  %i.wp = lshr i32 %.5600, 16                     ; 2 uses
  %.not774 = icmp sgt i32 %.5600, -1
  br i1 %.not774, label %bb.cz, label %bb.cx

bb.cx:                                            ; preds = %bb.cw
  %i.wq = icmp eq ptr %.6706, %i.a
  br i1 %i.wq, label %.thread836, label %bb.cy, !prof !44

bb.cy:                                            ; preds = %bb.cx
  %i.wr = trunc i32 %i.wp to i8
  %i.ws = getelementptr inbounds nuw i8, ptr %.6706, i64 1
  store i8 %i.wr, ptr %.6706, align 1, !tbaa !36
  br label %.loopexit904.backedge

bb.cz:                                            ; preds = %bb.cw
  %i.wt = and i32 %.5600, 8192
  %.not775 = icmp eq i32 %i.wt, 0
  br i1 %.not775, label %bb.da, label %.thread869, !prof !46

bb.da:                                            ; preds = %bb.cz
  %i.wu = and i32 %.5600, 255
  %i.wv = zext nneg i32 %i.wu to i64
  %notmask776 = shl nsw i64 -1, %i.wv
  %i.ww = xor i64 %notmask776, -1
  %i.wx = and i64 %.2642, %i.ww
  %i.wy = lshr i32 %.5600, 8
  %i.wz = and i32 %i.wy, 223
  %i.xa = zext nneg i32 %i.wz to i64
  %i.xb = lshr i64 %i.wx, %i.xa
  %i.xc = trunc i64 %i.xb to i32
  %i.xd = add i32 %i.wp, %i.xc
  %i.xe = zext i32 %i.xd to i64                   ; 3 uses
  %i.xf = ptrtoint ptr %.6706 to i64              ; 5 uses
  %i.xg = sub i64 %i.k, %i.xf
  %i.xh = icmp slt i64 %i.xg, %i.xe
  br i1 %i.xh, label %.thread836, label %bb.db, !prof !44

bb.db:                                            ; preds = %bb.da
  %i.xi = and i64 %.30, 255
  %i.xj = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %i.xi
  %i.xk = load i32, ptr %i.xj, align 4, !tbaa !16 ; 4 uses
  %i.xl = and i32 %i.xk, 32768
  %.not777 = icmp eq i32 %i.xl, 0
  br i1 %.not777, label %bb.dd, label %bb.dc, !prof !46

bb.dc:                                            ; preds = %bb.db
  %i.xm = lshr i64 %.30, 8                        ; 2 uses
  %i.xn = add i32 %.26, -8
  %i.xo = lshr i32 %i.xk, 16
  %i.xp = zext nneg i32 %i.xo to i64
  %i.xq = lshr i32 %i.xk, 8
  %i.xr = and i32 %i.xq, 63
  %i.xs = zext nneg i32 %i.xr to i64
  %notmask778 = shl nsw i64 -1, %i.xs
  %i.xt = xor i64 %notmask778, -1
  %i.xu = and i64 %i.xm, %i.xt
  %i.xv = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %i.xu
  %i.xw = getelementptr inbounds nuw [4 x i8], ptr %i.xv, i64 %i.xp
  %i.xx = load i32, ptr %i.xw, align 4, !tbaa !16
  br label %bb.dd

bb.dd:                                            ; preds = %bb.dc, %bb.db
  %.31 = phi i64 [ %i.xm, %bb.dc ], [ %.30, %bb.db ] ; 2 uses
  %.27 = phi i32 [ %i.xn, %bb.dc ], [ %.26, %bb.db ]
  %.6 = phi i32 [ %i.xx, %bb.dc ], [ %i.xk, %bb.db ] ; 4 uses
  %i.xy = lshr i32 %.6, 16
  %i.xz = and i32 %.6, 255
  %i.ya = zext nneg i32 %i.xz to i64              ; 2 uses
  %notmask779 = shl nsw i64 -1, %i.ya
  %i.yb = xor i64 %notmask779, -1
  %i.yc = and i64 %.31, %i.yb
  %i.yd = lshr i32 %.6, 8
  %i.ye = and i32 %i.yd, 255
  %i.yf = zext nneg i32 %i.ye to i64
  %i.yg = lshr i64 %i.yc, %i.yf
  %i.yh = trunc i64 %i.yg to i32
  %i.yi = add i32 %i.xy, %i.yh                    ; 2 uses
  %i.yj = lshr i64 %.31, %i.ya                    ; 3 uses
  %i.yk = sub i32 %.27, %.6                       ; 3 uses
  %i.yl = zext i32 %i.yi to i64                   ; 2 uses
  %i.ym = sub i64 %i.xf, %i.q
  %.not780 = icmp slt i64 %i.ym, %i.yl
  br i1 %.not780, label %.thread836, label %iter.check, !prof !44

iter.check:                                       ; preds = %bb.dd
  %i.yn = sub nsw i64 0, %i.yl
  %i.yo = getelementptr inbounds i8, ptr %.6706, i64 %i.yn ; 3 uses
  %i.yp = getelementptr inbounds nuw i8, ptr %.6706, i64 %i.xe ; 4 uses
  %i.yq = getelementptr inbounds nuw i8, ptr %i.yo, i64 1
  %i.yr = load i8, ptr %i.yo, align 1, !tbaa !36
  %i.ys = getelementptr inbounds nuw i8, ptr %.6706, i64 1
  store i8 %i.yr, ptr %.6706, align 1, !tbaa !36
  %i.yt = getelementptr inbounds nuw i8, ptr %i.yo, i64 2 ; 5 uses
  %i.yu = load i8, ptr %i.yq, align 1, !tbaa !36
  %i.yv = getelementptr inbounds nuw i8, ptr %.6706, i64 2 ; 5 uses
  store i8 %i.yu, ptr %i.ys, align 1, !tbaa !36
  %i.yw = add i64 %i.xf, %i.xe
  %i.yx = add i64 %i.xf, 3
  %umax = tail call i64 @llvm.umax.i64(i64 %i.yw, i64 %i.yx)
  %i.yy = add i64 %umax, -2
  %i.yz = sub i64 %i.yy, %i.xf                    ; 7 uses
  %min.iters.check = icmp ult i64 %i.yz, 8
  %i.za = add i32 %i.yi, -1
  %diff.check = icmp ult i32 %i.za, 31
  %or.cond1160 = or i1 %min.iters.check, %diff.check
  br i1 %or.cond1160, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check1147 = icmp ult i64 %i.yz, 32
  br i1 %min.iters.check1147, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.zb = and i64 %i.yz, 24
  %n.vec = and i64 %i.yz, -32                     ; 5 uses
  %i.zc = getelementptr i8, ptr %i.yt, i64 %n.vec
  %i.zd = getelementptr i8, ptr %i.yv, i64 %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %next.gep = getelementptr i8, ptr %i.yt, i64 %index ; 2 uses
  %next.gep1148 = getelementptr i8, ptr %i.yv, i64 %index ; 2 uses
  %i.ze = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <16 x i8>, ptr %next.gep, align 1, !tbaa !36
  %wide.load1149 = load <16 x i8>, ptr %i.ze, align 1, !tbaa !36
  %i.zf = getelementptr i8, ptr %next.gep1148, i64 16
  store <16 x i8> %wide.load, ptr %next.gep1148, align 1, !tbaa !36
  store <16 x i8> %wide.load1149, ptr %i.zf, align 1, !tbaa !36
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.zg = icmp eq i64 %index.next, %n.vec
  br i1 %i.zg, label %middle.block, label %vector.body, !llvm.loop !335

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.yz, %n.vec
  br i1 %cmp.n, label %.loopexit904.backedge, label %vec.epilog.iter.check

.loopexit904.backedge:                            ; preds = %vec.epilog.scalar.ph, %middle.block, %vec.epilog.middle.block, %bb.cy
  %.6706.be = phi ptr [ %i.yp, %vec.epilog.middle.block ], [ %i.yp, %middle.block ], [ %i.ws, %bb.cy ], [ %i.yp, %vec.epilog.scalar.ph ]
  %.26669.be = phi i64 [ %i.yj, %vec.epilog.middle.block ], [ %i.yj, %middle.block ], [ %.30, %bb.cy ], [ %i.yj, %vec.epilog.scalar.ph ]
  %.23.be = phi i32 [ %i.yk, %vec.epilog.middle.block ], [ %i.yk, %middle.block ], [ %.26, %bb.cy ], [ %i.yk, %vec.epilog.scalar.ph ]
  br label %.loopexit904

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.zb, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !100

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec1151 = and i64 %i.yz, -8                  ; 4 uses
  %i.zh = getelementptr i8, ptr %i.yt, i64 %n.vec1151
  %i.zi = getelementptr i8, ptr %i.yv, i64 %n.vec1151
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index1152 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next1156, %vec.epilog.vector.body ] ; 3 uses
  %next.gep1153 = getelementptr i8, ptr %i.yt, i64 %index1152
  %next.gep1154 = getelementptr i8, ptr %i.yv, i64 %index1152
  %wide.load1155 = load <8 x i8>, ptr %next.gep1153, align 1, !tbaa !36
  store <8 x i8> %wide.load1155, ptr %next.gep1154, align 1, !tbaa !36
  %index.next1156 = add nuw i64 %index1152, 8     ; 2 uses
  %i.zj = icmp eq i64 %index.next1156, %n.vec1151
  br i1 %i.zj, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !336

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n1157 = icmp eq i64 %i.yz, %n.vec1151
  br i1 %cmp.n1157, label %.loopexit904.backedge, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.0578.ph = phi ptr [ %i.yt, %iter.check ], [ %i.zc, %vec.epilog.iter.check ], [ %i.zh, %vec.epilog.middle.block ]
  %.0.ph = phi ptr [ %i.yv, %iter.check ], [ %i.zd, %vec.epilog.iter.check ], [ %i.zi, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %.0578 = phi ptr [ %i.zk, %vec.epilog.scalar.ph ], [ %.0578.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %.0 = phi ptr [ %i.zm, %vec.epilog.scalar.ph ], [ %.0.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %i.zk = getelementptr inbounds nuw i8, ptr %.0578, i64 1
  %i.zl = load i8, ptr %.0578, align 1, !tbaa !36
  %i.zm = getelementptr inbounds nuw i8, ptr %.0, i64 1 ; 2 uses
  store i8 %i.zl, ptr %.0, align 1, !tbaa !36
  %i.zn = icmp ult ptr %i.zm, %i.yp
  br i1 %i.zn, label %vec.epilog.scalar.ph, label %.loopexit904.backedge, !llvm.loop !337

.thread869:                                       ; preds = %bb.bl, %bb.bi, %bb.cz, %bb.ay
  %.8708 = phi ptr [ %.6706, %bb.cz ], [ %i.ju, %bb.ay ], [ %.3703, %bb.bi ], [ %.3703, %bb.bl ] ; 3 uses
  %.26699 = phi ptr [ %.24697, %bb.cz ], [ %i.jt, %bb.ay ], [ %.16689, %bb.bi ], [ %.16689, %bb.bl ] ; 2 uses
  %.33 = phi i64 [ %.30, %bb.cz ], [ 0, %bb.ay ], [ %.20663, %bb.bi ], [ %i.mw, %bb.bl ]
  %.29 = phi i32 [ %.26, %bb.cz ], [ 0, %bb.ay ], [ %.17635, %bb.bi ], [ %i.mx, %bb.bl ] ; 2 uses
  %.21 = phi i64 [ %.19, %bb.cz ], [ 0, %bb.ay ], [ %.15, %bb.bi ], [ %.15, %bb.bl ] ; 3 uses
  br i1 %.not744, label %bb.b, label %bb.de

bb.de:                                            ; preds = %.thread869
  %i.zo = lshr i32 %.29, 3
  %i.zp = and i32 %i.zo, 31
  %i.zq = zext nneg i32 %i.zp to i64              ; 2 uses
  %.not781 = icmp ugt i64 %.21, %i.zq
  br i1 %.not781, label %.thread836, label %bb.df, !prof !44

bb.df:                                            ; preds = %bb.de
  %.not782 = icmp eq ptr %5, null
  br i1 %.not782, label %bb.dh, label %bb.dg

bb.dg:                                            ; preds = %bb.df
  %.neg783 = sub nsw i64 %.21, %i.zq
  %i.zr = getelementptr inbounds i8, ptr %.26699, i64 %.neg783
  %i.zs = ptrtoint ptr %i.zr to i64
  %i.zt = ptrtoint ptr %1 to i64
  %i.zu = sub i64 %i.zs, %i.zt
  store i64 %i.zu, ptr %5, align 8, !tbaa !71
  br label %bb.dh

bb.dh:                                            ; preds = %bb.dg, %bb.df
  %.not784 = icmp eq ptr %6, null
  br i1 %.not784, label %bb.dj, label %bb.di

bb.di:                                            ; preds = %bb.dh
  %i.zv = ptrtoint ptr %.8708 to i64
  %i.zw = sub i64 %i.zv, %i.q
  store i64 %i.zw, ptr %6, align 8, !tbaa !71
  br label %bb.dk

bb.dj:                                            ; preds = %bb.dh
  %.not785 = icmp eq ptr %.8708, %i.a
  br i1 %.not785, label %bb.dk, label %.thread836

bb.dk:                                            ; preds = %bb.dj, %bb.di
  br label %.thread836

.thread836:                                       ; preds = %bb.ax, %bb.aw, %bb.av, %bb.au, %bb.at, %._crit_edge, %bb.as, %.loopexit916, %bb.ba, %.thread843, %bb.e, %bb.j, %bb.am, %bb.bs, %bb.dd, %bb.da, %bb.cx, %bb.q, %bb.t, %bb.w, %bb.z, %bb.ac, %bb.af, %bb.ai, %bb.cb, %bb.ce, %bb.ch, %bb.ck, %bb.cn, %bb.cq, %bb.ct, %bb.dj, %bb.de, %bb.dk
  %.14723 = phi i32 [ 1, %bb.q ], [ 1, %bb.e ], [ 1, %bb.am ], [ 1, %bb.dd ], [ 0, %bb.dk ], [ 1, %bb.de ], [ 2, %bb.dj ], [ 1, %bb.bs ], [ 1, %bb.j ], [ 1, %bb.cb ], [ 1, %bb.ct ], [ 1, %bb.cq ], [ 1, %bb.cn ], [ 1, %bb.ck ], [ 1, %bb.ch ], [ 1, %bb.ce ], [ 1, %bb.ai ], [ 1, %bb.af ], [ 1, %bb.ac ], [ 1, %bb.z ], [ 1, %bb.w ], [ 1, %bb.t ], [ 3, %bb.cx ], [ 3, %bb.da ], [ 1, %bb.au ], [ 1, %bb.av ], [ 3, %bb.aw ], [ 1, %bb.ax ], [ 1, %bb.as ], [ 1, %._crit_edge ], [ 1, %.loopexit916 ], [ 1, %bb.at ], [ 1, %.thread843 ], [ 1, %bb.ba ]
  ret i32 %.14723
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc noundef zeroext i1 @build_decode_table(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, ptr nofree noundef readonly captures(none) %3, i32 noundef range(i32 7, 12) %4, i32 noundef range(i32 7, 16) %5, ptr nofree noundef captures(none) %6, ptr nofree noundef writeonly captures(address_is_null) %7) unnamed_addr #6 {
.preheader222:
  %i.a = alloca [16 x i32], align 16              ; 19 uses
  %i.b = alloca [16 x i32], align 16              ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #27
  %i.c = shl nuw nsw i32 %5, 2
  %narrow = add nuw nsw i32 %i.c, 4
  %i.d = zext nneg i32 %narrow to i64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1) %i.a, i8 0, i64 %i.d, i1 false), !tbaa !16
  %.not = icmp eq i32 %2, 0                       ; 2 uses
  br i1 %.not, label %.preheader221.preheader, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.preheader222
  %wide.trip.count = zext i32 %2 to i64           ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 3         ; 3 uses
  %i.e = icmp ult i32 %2, 4
  br i1 %i.e, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %wide.trip.count, 4294967292
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader.new ], [ %indvars.iv.next.3, %.lr.ph ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.3, %.lr.ph ]
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv
  %i.g = load i8, ptr %i.f, align 1, !tbaa !36
  %i.h = zext i8 %i.g to i64
  %i.i = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.h ; 2 uses
  %i.j = load i32, ptr %i.i, align 4, !tbaa !16
  %i.k = add i32 %i.j, 1
  store i32 %i.k, ptr %i.i, align 4, !tbaa !16
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 1
  %i.n = load i8, ptr %i.m, align 1, !tbaa !36
  %i.o = zext i8 %i.n to i64
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.o ; 2 uses
  %i.q = load i32, ptr %i.p, align 4, !tbaa !16
  %i.r = add i32 %i.q, 1
  store i32 %i.r, ptr %i.p, align 4, !tbaa !16
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 2
  %i.u = load i8, ptr %i.t, align 1, !tbaa !36
  %i.v = zext i8 %i.u to i64
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.v ; 2 uses
  %i.x = load i32, ptr %i.w, align 4, !tbaa !16
  %i.y = add i32 %i.x, 1
  store i32 %i.y, ptr %i.w, align 4, !tbaa !16
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 3
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !36
  %i.ac = zext i8 %i.ab to i64
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.ac ; 2 uses
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !16
  %i.af = add i32 %i.ae, 1
  store i32 %i.af, ptr %i.ad, align 4, !tbaa !16
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.preheader221.preheader.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !338

.preheader221.preheader.loopexit.unr-lcssa:       ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader221.preheader, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %.preheader221.preheader.loopexit.unr-lcssa, %.lr.ph.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next.3, %.preheader221.preheader.loopexit.unr-lcssa ]
  %lcmp.mod370 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod370)
  br label %.lr.ph.epil

.lr.ph.epil:                                      ; preds = %.lr.ph.epil, %.lr.ph.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.epil.init, %.lr.ph.epil.preheader ], [ %indvars.iv.next.epil, %.lr.ph.epil ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.lr.ph.epil.preheader ], [ %epil.iter.next, %.lr.ph.epil ]
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv.epil
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !36
  %i.ai = zext i8 %i.ah to i64
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.ai ; 2 uses
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !16
  %i.al = add i32 %i.ak, 1
  store i32 %i.al, ptr %i.aj, align 4, !tbaa !16
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.preheader221.preheader, label %.lr.ph.epil, !llvm.loop !339

.preheader221.preheader:                          ; preds = %.preheader221.preheader.loopexit.unr-lcssa, %.lr.ph.epil, %.preheader222
  br label %.preheader221

.preheader221:                                    ; preds = %.preheader221.preheader, %bb.a
  %.0185236 = phi i32 [ %i.aq, %bb.a ], [ %5, %.preheader221.preheader ] ; 3 uses
  %i.am = zext i32 %.0185236 to i64
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.am
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !16
  %i.ap = icmp eq i32 %i.ao, 0
  br i1 %i.ap, label %bb.a, label %.critedge

bb.a:                                             ; preds = %.preheader221
  %i.aq = add nsw i32 %.0185236, -1               ; 2 uses
  %i.ar = icmp ugt i32 %i.aq, 1
  br i1 %i.ar, label %.preheader221, label %.critedge, !llvm.loop !340

.critedge:                                        ; preds = %bb.a, %.preheader221
  %.0185.lcssa = phi i32 [ 1, %bb.a ], [ %.0185236, %.preheader221 ] ; 7 uses
  %.not198 = icmp eq ptr %7, null
  br i1 %.not198, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.critedge
  %i.as = tail call i32 @llvm.umin.i32(i32 %4, i32 %.0185.lcssa) ; 2 uses
  store i32 %i.as, ptr %7, align 4, !tbaa !16
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.critedge
  %.0186 = phi i32 [ %i.as, %bb.b ], [ %4, %.critedge ] ; 12 uses
  store i32 0, ptr %i.b, align 16, !tbaa !16
  %i.at = load i32, ptr %i.a, align 16, !tbaa !16 ; 3 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  store i32 %i.at, ptr %i.au, align 4, !tbaa !16
  %i.av = icmp ugt i32 %.0185.lcssa, 1
  br i1 %i.av, label %.lr.ph239.preheader, label %._crit_edge

.lr.ph239.preheader:                              ; preds = %bb.c
  %wide.trip.count293 = zext i32 %.0185.lcssa to i64
  %i.aw = add nsw i64 %wide.trip.count293, -1     ; 3 uses
  %xtraiter371 = and i64 %i.aw, 1
  %i.ax = icmp eq i32 %.0185.lcssa, 2
end_hunk_2
begin_hunk_3_@llvm.x86.avx2.pmadd.wd

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <2 x i64> @llvm.x86.sse2.psad.bw(<16 x i8>, <16 x i8>) #23

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16>, <8 x i16>) #23

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.bswap.i16(i16) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #12

declare i32 @internal_exr_undo_rle(ptr noundef, ptr noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #10

declare i32 @internal_exr_undo_zip(ptr noundef, ptr noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #10

declare i32 @internal_exr_undo_piz(ptr noundef, ptr noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #10

declare i32 @internal_exr_undo_pxr24(ptr noundef, ptr noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #10

declare i32 @internal_exr_undo_b44(ptr noundef, ptr noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #10

declare i32 @internal_exr_undo_b44a(ptr noundef, ptr noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #10

declare i32 @internal_exr_undo_dwaa(ptr noundef, ptr noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #10

declare i32 @internal_exr_undo_dwab(ptr noundef, ptr noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #10

declare i32 @internal_exr_undo_ht(ptr noundef, ptr noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #12

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #25

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #12

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #26

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v16i32(<16 x i32>) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v8i32(<8 x i32>) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v32i32(<32 x i32>) #12

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree norecurse nosync nounwind memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #10 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) }
attributes #12 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #13 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #14 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nofree norecurse nosync nounwind memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+bmi2,+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="512" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+avx512bw,+avx512f,+avx512vnni,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #19 = { nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="256" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+avx512bw,+avx512f,+avx512vl,+avx512vnni,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #20 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="256" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+avxvnni,+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #21 = { nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="256" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #22 = { nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #23 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #24 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #25 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #26 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #27 = { nounwind }

!llvm.module.flags = !{!8, !9}
!llvm.ident = !{!10}
!llvm.errno.tbaa = !{!15}

!0 = distinct !{!0, !38}
!1 = distinct !{!1, !38}
!2 = distinct !{!2, !38}
!3 = distinct !{!3, !38}
!4 = distinct !{!4, !38}
!5 = distinct !{!5, !38}
!6 = distinct !{!6, !38}
!7 = distinct !{!7, !38}
!8 = !{i32 8, !"PIC Level", i32 2}
!9 = !{i32 7, !"uwtable", i32 2}
!10 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!11 = !{!"Simple C/C++ TBAA"}
!12 = !{!"omnipotent char", !11, i64 0}
!13 = !{!"int", !12, i64 0}
!14 = !{!"__libc_errno", !13, i64 0}
!15 = !{!14, !13, i64 0}
!16 = !{!13, !13, i64 0}
!17 = !{!"any pointer", !12, i64 0}
!18 = !{!17, !17, i64 0}
!19 = !{!"long", !12, i64 0}
!20 = !{!"libdeflate_options", !19, i64 0, !17, i64 8, !17, i64 16}
!21 = !{!20, !19, i64 0}
!22 = !{!20, !17, i64 8}
!23 = !{!20, !17, i64 16}
!24 = !{!"deflate_freqs", !12, i64 0, !12, i64 1152}
!25 = !{!"block_split_stats", !12, i64 0, !12, i64 40, !13, i64 80, !13, i64 84}
!26 = !{!"deflate_codewords", !12, i64 0, !12, i64 1152}
!27 = !{!"deflate_lens", !12, i64 0, !12, i64 288}
!28 = !{!"deflate_codes", !26, i64 0, !27, i64 1280}
!29 = !{!"libdeflate_compressor", !17, i64 0, !17, i64 8, !13, i64 16, !19, i64 24, !13, i64 32, !13, i64 36, !24, i64 40, !25, i64 1320, !28, i64 1408, !28, i64 3008, !12, i64 4608, !12, i64 6080}
!30 = !{!29, !17, i64 8}
!31 = !{!29, !13, i64 16}
!32 = !{!29, !19, i64 24}
!33 = !{!29, !17, i64 0}
!34 = !{!29, !13, i64 36}
!35 = !{!29, !13, i64 32}
!36 = !{!12, !12, i64 0}
!37 = !{!"llvm.loop.unroll.disable"}
!38 = !{!"llvm.loop.mustprogress"}
!39 = !{!"llvm.loop.isvectorized", i32 1}
!40 = !{!"llvm.loop.unroll.runtime.disable"}
!41 = !{!"short", !12, i64 0}
!42 = !{!"deflate_sequence", !13, i64 0, !41, i64 4, !41, i64 6}
!43 = !{!42, !13, i64 0}
!44 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!45 = !{!41, !41, i64 0}
!46 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!47 = !{!42, !41, i64 4}
!48 = !{!42, !41, i64 6}
!49 = !{!"p1 omnipotent char", !17, i64 0}
!50 = !{!"_Bool", !12, i64 0}
!51 = !{!"deflate_output_bitstream", !19, i64 0, !13, i64 8, !49, i64 16, !49, i64 24, !50, i64 32}
!52 = !{!51, !50, i64 32}
!53 = !{i8 0, i8 2}
!54 = !{}
!55 = !{!25, !13, i64 80}
!56 = !{!50, !50, i64 0}
!57 = !{!"lz_match", !41, i64 0, !41, i64 2}
!58 = !{!57, !41, i64 0}
!59 = !{!57, !41, i64 2}
!60 = !{!25, !13, i64 84}
!61 = !{!29, !13, i64 1404}
!62 = !{!51, !19, i64 0}
!63 = !{!51, !13, i64 8}
!64 = !{!51, !49, i64 16}
!65 = !{!51, !49, i64 24}
!66 = !{ptr @libdeflate_deflate_decompress_ex}
!67 = !{!"libdeflate_decompressor", !12, i64 0, !12, i64 9368, !12, i64 10976, !50, i64 11552, !13, i64 11556, !17, i64 11560}
!68 = !{!67, !17, i64 11560}
!69 = !{ptr @libdeflate_alloc_decompressor_ex}
!70 = !{ptr @libdeflate_adler32}
!71 = !{!19, !19, i64 0}
!72 = !{ptr @libdeflate_zlib_decompress_ex, ptr @libdeflate_deflate_decompress_ex}
!73 = !{ptr @libdeflate_zlib_decompress_ex, ptr @libdeflate_adler32}
!74 = !{!"", !13, i64 0, !13, i64 4, !49, i64 8}
!75 = !{!"float", !12, i64 0}
!76 = !{!"any p2 pointer", !17, i64 0}
!77 = !{!"exr_attribute_list", !13, i64 0, !13, i64 4, !76, i64 8, !76, i64 16}
!78 = !{!"", !13, i64 0, !13, i64 4}
!79 = !{!"", !78, i64 0, !78, i64 8}
!80 = !{!"p1 int", !17, i64 0}
!81 = !{!"_priv_exr_part_t", !13, i64 0, !13, i64 4, !77, i64 8, !17, i64 32, !17, i64 40, !17, i64 48, !17, i64 56, !17, i64 64, !17, i64 72, !17, i64 80, !17, i64 88, !17, i64 96, !17, i64 104, !17, i64 112, !17, i64 120, !17, i64 128, !17, i64 136, !79, i64 144, !79, i64 160, !13, i64 176, !13, i64 180, !13, i64 184, !75, i64 188, !13, i64 192, !13, i64 196, !80, i64 200, !80, i64 208, !80, i64 216, !80, i64 224, !19, i64 232, !41, i64 240, !41, i64 242, !13, i64 244, !19, i64 248, !12, i64 256}
!82 = !{!"p1 _ZTS16_priv_exr_part_t", !17, i64 0}
!83 = !{!"p2 _ZTS16_priv_exr_part_t", !76, i64 0}
!84 = !{!"_priv_exr_context_t", !12, i64 0, !12, i64 1, !12, i64 2, !12, i64 3, !12, i64 4, !12, i64 5, !12, i64 6, !12, i64 7, !74, i64 8, !74, i64 24, !17, i64 40, !17, i64 48, !17, i64 56, !17, i64 64, !17, i64 72, !17, i64 80, !17, i64 88, !17, i64 96, !13, i64 104, !13, i64 108, !13, i64 112, !13, i64 116, !13, i64 120, !75, i64 124, !17, i64 128, !17, i64 136, !17, i64 144, !19, i64 152, !17, i64 160, !17, i64 168, !19, i64 176, !13, i64 184, !13, i64 188, !13, i64 192, !13, i64 196, !81, i64 200, !82, i64 464, !83, i64 472, !77, i64 480, !12, i64 504, !12, i64 544, !12, i64 545, !12, i64 546, !13, i64 548}
!85 = !{!84, !17, i64 88}
!86 = !{!84, !17, i64 96}
!87 = !{!"p1 _ZTS19_priv_exr_context_t", !17, i64 0}
!88 = !{!"", !13, i64 0, !13, i64 4, !13, i64 8, !13, i64 12, !13, i64 16, !12, i64 20, !12, i64 21, !12, i64 22, !12, i64 23, !19, i64 24, !19, i64 32, !19, i64 40, !19, i64 48, !19, i64 56}
!89 = !{!84, !13, i64 196}
!90 = !{!84, !17, i64 72}
!91 = !{!84, !83, i64 472}
!92 = !{!82, !82, i64 0}
!93 = !{!81, !13, i64 176}
!94 = !{!84, !17, i64 64}
!95 = !{!"deflate_optimum_node", !13, i64 0, !13, i64 4}
!96 = !{!95, !13, i64 4}
!97 = !{!"branch_weights", i32 0, i32 2001, i32 2001, i32 2000, i32 1}
!98 = !{!67, !50, i64 11552}
!99 = !{!67, !13, i64 11556}
!100 = !{!"branch_weights", i32 8, i32 24}
!101 = !{i64 5315263}
!102 = !{i64 5315772}
!103 = distinct !{!103, !37}
!104 = distinct !{!104, !38, !39, !40}
!105 = distinct !{!105, !38, !39, !40}
!106 = distinct !{!106, !38, !39}
!107 = distinct !{!107, !38}
!108 = distinct !{!108, !37}
!109 = distinct !{!109, !38, !39, !40}
!110 = distinct !{!110, !38, !39, !40}
!111 = distinct !{!111, !38, !39}
!112 = distinct !{!112, !37}
!113 = distinct !{!113, !38, !39, !40}
!114 = distinct !{!114, !38, !39, !40}
!115 = distinct !{!115, !38, !39}
!116 = !{ptr @libdeflate_aligned_malloc}
!117 = distinct !{!117, !38}
!118 = distinct !{!118, !38}
!119 = distinct !{!119, !38}
!120 = distinct !{!120, !38}
!121 = distinct !{!121, !37}
!122 = distinct !{!122, !38}
!123 = distinct !{!123, !38}
!124 = distinct !{!124, !"deflate_compress_lazy_generic"}
!125 = distinct !{!125, !124, !"deflate_compress_lazy_generic: argument 0"}
!126 = distinct !{!126, !37}
!127 = distinct !{!127, !38, !39, !40}
!128 = !{!125}
!129 = distinct !{!129, !"deflate_compress_lazy_generic"}
!130 = distinct !{!130, !129, !"deflate_compress_lazy_generic: argument 0"}
!131 = distinct !{!131, !37}
!132 = distinct !{!132, !38, !39, !40}
!133 = !{!130}
!134 = distinct !{!134, !37}
!135 = distinct !{!135, !38}
!136 = distinct !{!136, !38, !39, !40}
!137 = distinct !{!137, !37}
!138 = distinct !{!138, !38}
!139 = distinct !{!139, !38, !39, !40}
!140 = distinct !{!140, !38}
!141 = distinct !{!141, !38}
!142 = !{ptr @libdeflate_aligned_free}
!143 = !{ptr @libdeflate_deflate_compress}
!144 = !{ptr @libdeflate_free_compressor, ptr @libdeflate_aligned_free}
!145 = !{ptr @libdeflate_free_decompressor}
!146 = !{!"_exr_encode_pipeline", !19, i64 0, !17, i64 8, !41, i64 16, !41, i64 18, !13, i64 20, !87, i64 24, !88, i64 32, !17, i64 96, !17, i64 104, !19, i64 112, !19, i64 120, !80, i64 128, !19, i64 136, !17, i64 144, !19, i64 152, !19, i64 160, !17, i64 168, !19, i64 176, !19, i64 184, !17, i64 192, !19, i64 200, !17, i64 208, !19, i64 216, !17, i64 224, !17, i64 232, !17, i64 240, !17, i64 248, !17, i64 256, !17, i64 264, !12, i64 272}
!147 = !{!146, !87, i64 24}
!148 = !{!146, !13, i64 20}
!149 = !{!146, !19, i64 72}
!150 = !{!146, !19, i64 112}
!151 = !{!146, !80, i64 128}
!152 = !{!146, !13, i64 48}
!153 = !{!146, !13, i64 44}
!154 = !{!146, !17, i64 144}
!155 = !{!146, !19, i64 160}
!156 = !{!146, !19, i64 152}
!157 = !{!146, !17, i64 104}
!158 = !{!146, !19, i64 120}
!159 = !{!"_exr_decode_pipeline", !19, i64 0, !17, i64 8, !41, i64 16, !41, i64 18, !13, i64 20, !87, i64 24, !88, i64 32, !13, i64 96, !13, i64 100, !19, i64 104, !17, i64 112, !17, i64 120, !19, i64 128, !17, i64 136, !19, i64 144, !17, i64 152, !19, i64 160, !80, i64 168, !19, i64 176, !17, i64 184, !19, i64 192, !17, i64 200, !19, i64 208, !17, i64 216, !17, i64 224, !17, i64 232, !17, i64 240, !17, i64 248, !17, i64 256, !12, i64 264}
!160 = !{!159, !19, i64 104}
!161 = !{!159, !87, i64 24}
!162 = !{!159, !13, i64 20}
!163 = !{!159, !17, i64 152}
!164 = !{!159, !13, i64 48}
!165 = !{!159, !13, i64 44}
!166 = !{!159, !19, i64 88}
!167 = !{!159, !80, i64 168}
!168 = !{!159, !41, i64 18}
!169 = !{!159, !19, i64 64}
!170 = !{!159, !19, i64 72}
!171 = !{!159, !17, i64 120}
!172 = !{!159, !17, i64 136}
!173 = distinct !{!173, !38, !39, !40}
!174 = distinct !{!174, !38, !39, !40}
!175 = distinct !{!175, !38, !198}
!176 = distinct !{!176, !37}
!177 = distinct !{!177, !38}
!178 = distinct !{!178, !37}
!179 = distinct !{!179, !38}
!180 = distinct !{!180, !38}
!181 = distinct !{!181, !37}
!182 = distinct !{!182, !37}
!183 = distinct !{!183, !38}
!184 = distinct !{!184, !38}
!185 = distinct !{!185, !38}
!186 = distinct !{!186, !38}
!187 = distinct !{!187, !37}
!188 = distinct !{!188, !38}
!189 = distinct !{!189, !38}
!190 = distinct !{!190, !38}
!191 = distinct !{!191, !38}
!192 = distinct !{!192, !38}
!193 = distinct !{!193, !37}
!194 = distinct !{!194, !38}
!195 = distinct !{!195, !38}
!196 = distinct !{!196, !37}
!197 = distinct !{!197, !38}
!198 = !{!"llvm.loop.peeled.count", i32 1}
!199 = distinct !{!199, !38}
!200 = distinct !{!200, !38}
!201 = distinct !{!201, !37}
!202 = distinct !{!202, !38}
!203 = distinct !{!203, !38}
!204 = distinct !{!204, !38}
!205 = distinct !{!205, !38}
!206 = distinct !{!206, !38}
!207 = distinct !{!207, !38}
!208 = distinct !{!208, !38}
!209 = distinct !{!209, !37}
!210 = distinct !{!210, !38}
!211 = distinct !{!211, !38}
!212 = distinct !{!212, !38}
!213 = distinct !{!213, !37}
!214 = distinct !{!214, !38}
!215 = distinct !{!215, !38}
!216 = distinct !{!216, !38}
!217 = distinct !{!217, !38}
!218 = distinct !{!218, !37}
!219 = distinct !{!219, !38}
!220 = distinct !{!220, !38}
!221 = distinct !{!221, !38}
!222 = distinct !{!222, !37}
!223 = distinct !{!223, !37}
!224 = distinct !{!224, !38}
!225 = distinct !{!225, !"LVerDomain"}
!226 = distinct !{!226, !225}
!227 = distinct !{!227, !225}
!228 = distinct !{!228, !38, !39, !40}
!229 = distinct !{!229, !38, !39}
!230 = distinct !{!230, !"LVerDomain"}
!231 = distinct !{!231, !230}
!232 = distinct !{!232, !230}
!233 = distinct !{!233, !38}
!234 = distinct !{!234, !38, !39}
!235 = distinct !{!235, !37}
!236 = distinct !{!236, !38, !39, !40}
!237 = distinct !{!237, !38}
!238 = distinct !{!238, !38, !39, !40}
!239 = distinct !{!239, !38, !39}
!240 = distinct !{!240, !38}
!241 = distinct !{!241, !38, !39, !40}
!242 = distinct !{!242, !38}
!243 = distinct !{!243, !38, !39, !40}
!244 = distinct !{!244, !38, !39, !40}
!245 = distinct !{!245, !38, !39, !40}
!246 = distinct !{!246, !"LVerDomain"}
!247 = distinct !{!247, !246}
!248 = distinct !{!248, !246}
!249 = distinct !{!249, !38, !39, !40}
!250 = distinct !{!250, !38, !39}
!251 = distinct !{!251, !"LVerDomain"}
!252 = distinct !{!252, !251}
!253 = distinct !{!253, !251}
!254 = distinct !{!254, !38, !39}
!255 = distinct !{!255, !38}
!256 = distinct !{!256, !37}
!257 = distinct !{!257, !"LVerDomain"}
!258 = distinct !{!258, !257}
!259 = distinct !{!259, !257}
!260 = distinct !{!260, !38, !39, !40}
!261 = distinct !{!261, !38, !39}
!262 = distinct !{!262, !"LVerDomain"}
!263 = distinct !{!263, !262}
!264 = distinct !{!264, !262}
!265 = distinct !{!265, !38, !39}
!266 = distinct !{!266, !"LVerDomain"}
!267 = distinct !{!267, !266}
!268 = distinct !{!268, !266}
!269 = distinct !{!269, !38, !39, !40}
!270 = distinct !{!270, !38, !39}
!271 = distinct !{!271, !"LVerDomain"}
!272 = distinct !{!272, !271}
!273 = distinct !{!273, !271}
!274 = distinct !{!274, !38, !39}
!275 = distinct !{!275, !"LVerDomain"}
!276 = distinct !{!276, !275}
!277 = distinct !{!277, !275}
!278 = distinct !{!278, !38, !39, !40}
!279 = distinct !{!279, !38, !39}
!280 = distinct !{!280, !"LVerDomain"}
!281 = distinct !{!281, !280}
!282 = distinct !{!282, !280}
!283 = distinct !{!283, !38, !39}
!284 = !{i64 0, i64 1024, !36, i64 1024, i64 1036, !36, i64 2060, i64 128, !36}
!285 = !{!226}
!286 = !{!227}
!287 = !{!231}
!288 = !{!232}
!289 = !{!"", !12, i64 0, !12, i64 257}
!290 = !{!289, !12, i64 257}
!291 = !{!247}
!292 = !{!248}
!293 = !{!252}
!294 = !{!253}
!295 = !{!258}
!296 = !{!259}
!297 = !{!263}
!298 = !{!264}
!299 = !{!267}
!300 = !{!268}
end_hunk_3
