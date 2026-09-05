Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libdeflate/original/deflate_compress?download=true
inline.NumInlined: 64
inline.NumDeleted: 31
loop-unroll.NumCompletelyUnrolled: 43
loop-unroll.NumRuntimeUnrolled: 26
loop-unroll.NumUnrolled: 117
begin_hunk_0_@deflate_optimize_and_flush_block:bb.a
  %narrow39.i = select i1 %.not36.i, i8 13, i8 %i.eq
  %spec.select.i = zext i8 %narrow39.i to i32
  %i.er = getelementptr inbounds nuw i8, ptr @deflate_extra_length_bits, i64 %i.en
  %i.es = load i8, ptr %i.er, align 1, !tbaa !30
  %i.et = zext i8 %i.es to i32
  %i.eu = add nuw nsw i32 %spec.select.i, %i.et
  %i.ev = shl nuw nsw i32 %i.eu, 4
  %i.ew = getelementptr inbounds nuw [4 x i8], ptr %i.cj, i64 %indvars.iv45.i
  store i32 %i.ev, ptr %i.ew, align 4, !tbaa !30
  %indvars.iv.next46.i = add nuw nsw i64 %indvars.iv45.i, 1 ; 2 uses
  %i.ex = getelementptr inbounds nuw i8, ptr @deflate_length_slot, i64 %indvars.iv.next46.i
  %i.ey = load i8, ptr %i.ex, align 1, !tbaa !30
  %i.ez = zext i8 %i.ey to i64                    ; 2 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %i.bv, i64 %i.ez
  %i.fb = getelementptr inbounds nuw i8, ptr %i.fa, i64 257
  %i.fc = load i8, ptr %i.fb, align 1, !tbaa !30  ; 2 uses
  %.not36.i.1 = icmp eq i8 %i.fc, 0
  %narrow39.i.1 = select i1 %.not36.i.1, i8 13, i8 %i.fc
  %spec.select.i.1 = zext i8 %narrow39.i.1 to i32
  %i.fd = getelementptr inbounds nuw i8, ptr @deflate_extra_length_bits, i64 %i.ez
  %i.fe = load i8, ptr %i.fd, align 1, !tbaa !30
  %i.ff = zext i8 %i.fe to i32
  %i.fg = add nuw nsw i32 %spec.select.i.1, %i.ff
  %i.fh = shl nuw nsw i32 %i.fg, 4
  %i.fi = getelementptr inbounds nuw [4 x i8], ptr %i.cj, i64 %indvars.iv.next46.i
  store i32 %i.fh, ptr %i.fi, align 4, !tbaa !30
  %indvars.iv.next46.i.1 = add nuw nsw i64 %indvars.iv45.i, 2 ; 2 uses
  %exitcond48.not.i.1 = icmp eq i64 %indvars.iv.next46.i.1, 259
  br i1 %exitcond48.not.i.1, label %.preheader.i, label %bb.b, !llvm.loop !165

scalar.ph208:                                     ; preds = %scalar.ph208, %scalar.ph208.preheader
  %indvars.iv49.i = phi i64 [ %indvars.iv49.i.ph, %scalar.ph208.preheader ], [ %indvars.iv.next50.i.1, %scalar.ph208 ] ; 5 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %i.cw, i64 %indvars.iv49.i
  %i.fk = load i8, ptr %i.fj, align 1, !tbaa !30  ; 2 uses
  %.not.i91 = icmp eq i8 %i.fk, 0
  %narrow.i = select i1 %.not.i91, i8 10, i8 %i.fk
  %spec.select38.i = zext i8 %narrow.i to i32
  %i.fl = getelementptr inbounds nuw i8, ptr @deflate_extra_offset_bits, i64 %indvars.iv49.i
  %i.fm = load i8, ptr %i.fl, align 2, !tbaa !30
  %i.fn = zext i8 %i.fm to i32
  %i.fo = add nuw nsw i32 %spec.select38.i, %i.fn
  %i.fp = shl nuw nsw i32 %i.fo, 4
  %i.fq = getelementptr inbounds nuw [4 x i8], ptr %i.cx, i64 %indvars.iv49.i
  store i32 %i.fp, ptr %i.fq, align 4, !tbaa !30
  %indvars.iv.next50.i = or disjoint i64 %indvars.iv49.i, 1 ; 3 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %i.cw, i64 %indvars.iv.next50.i
  %i.fs = load i8, ptr %i.fr, align 1, !tbaa !30  ; 2 uses
  %.not.i91.1 = icmp eq i8 %i.fs, 0
  %narrow.i.1 = select i1 %.not.i91.1, i8 10, i8 %i.fs
  %spec.select38.i.1 = zext i8 %narrow.i.1 to i32
  %i.ft = getelementptr inbounds nuw i8, ptr @deflate_extra_offset_bits, i64 %indvars.iv.next50.i
  %i.fu = load i8, ptr %i.ft, align 1, !tbaa !30
  %i.fv = zext i8 %i.fu to i32
  %i.fw = add nuw nsw i32 %spec.select38.i.1, %i.fv
  %i.fx = shl nuw nsw i32 %i.fw, 4
  %i.fy = getelementptr inbounds nuw [4 x i8], ptr %i.cx, i64 %indvars.iv.next50.i
  store i32 %i.fx, ptr %i.fy, align 4, !tbaa !30
  %indvars.iv.next50.i.1 = add nuw nsw i64 %indvars.iv49.i, 2 ; 2 uses
  %exitcond52.not.i.1 = icmp eq i64 %indvars.iv.next50.i.1, 30
  br i1 %exitcond52.not.i.1, label %bb.c, label %scalar.ph208, !llvm.loop !166

bb.c:                                             ; preds = %scalar.ph208
  tail call fastcc void @deflate_find_min_cost_path(ptr noundef nonnull %0, i32 noundef %3, ptr noundef %4)
  %i.fz = getelementptr inbounds nuw i8, ptr %0, i64 6532420
  %i.ga = load i32, ptr %i.fz, align 4, !tbaa !30
  %i.gb = lshr i32 %i.ga, 4
  %i.gc = add nuw nsw i32 %i.gb, 7                ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(2188) %i.bu, ptr noundef nonnull align 16 dereferenceable(2188) %i.bt, i64 2188, i1 false), !tbaa.struct !216
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
  %i.gg = load i8, ptr %i.gf, align 1, !tbaa !30
  %i.gh = zext i8 %i.gg to i64
  %i.gi = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.gh ; 2 uses
  %i.gj = load i32, ptr %i.gi, align 4, !tbaa !31
  %i.gk = add i32 %i.gj, 1
  store i32 %i.gk, ptr %i.gi, align 4, !tbaa !31
  %indvars.iv.next.i.i.epil = add nuw nsw i64 %indvars.iv.i.i.epil, 1
  %epil.iter459.next = add i64 %epil.iter459, 1   ; 2 uses
  %epil.iter459.cmp.not = icmp eq i64 %epil.iter459.next, %xtraiter458
  br i1 %epil.iter459.cmp.not, label %.preheader.i.i.loopexit, label %.lr.ph.i.i.epil, !llvm.loop !167

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
  %wide.load223 = load <4 x i32>, ptr %i.gn, align 4, !tbaa !31
  %wide.load224 = load <4 x i32>, ptr %i.go, align 4, !tbaa !31
  %i.gp = icmp ugt <4 x i32> %wide.load223, %broadcast.splat
  %i.gq = icmp ugt <4 x i32> %wide.load224, %broadcast.splat
  %i.gr = zext <4 x i1> %i.gp to <4 x i32>
  %i.gs = zext <4 x i1> %i.gq to <4 x i32>
  %i.gt = add <4 x i32> %vec.phi, %i.gr
  %i.gu = add <4 x i32> %vec.phi222, %i.gs
  %i.gv = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %index221 ; 2 uses
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gv, i64 32
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gv, i64 48
  %wide.load223.1 = load <4 x i32>, ptr %i.gw, align 4, !tbaa !31
  %wide.load224.1 = load <4 x i32>, ptr %i.gx, align 4, !tbaa !31
  %i.gy = icmp ugt <4 x i32> %wide.load223.1, %broadcast.splat
  %i.gz = icmp ugt <4 x i32> %wide.load224.1, %broadcast.splat
  %i.ha = zext <4 x i1> %i.gy to <4 x i32>
  %i.hb = zext <4 x i1> %i.gz to <4 x i32>
  %i.hc = add <4 x i32> %i.gt, %i.ha              ; 2 uses
  %i.hd = add <4 x i32> %i.gu, %i.hb              ; 2 uses
  %index.next225.1 = add nuw nsw i64 %index221, 16 ; 2 uses
  %i.he = icmp eq i64 %index.next225.1, 256
  br i1 %i.he, label %middle.block226, label %vector.body220, !llvm.loop !168

middle.block226:                                  ; preds = %vector.body220
  %bin.rdx = add <4 x i32> %i.hd, %i.hc
  %i.hf = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 5 uses
  %spec.store.select.i.i = tail call i32 @llvm.umax.i32(i32 %i.hf, i32 1) ; 2 uses
  %i.hg = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.hh = load i32, ptr %i.hg, align 32, !tbaa !29 ; 3 uses
  %i.hi = icmp ugt i32 %i.hf, 79
  br i1 %i.hi, label %choose_min_match_len.exit.i.i, label %bb.d

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.preheader.i.i.new
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.preheader.i.i.new ], [ %indvars.iv.next.i.i.3, %.lr.ph.i.i ] ; 5 uses
  %niter463 = phi i64 [ 0, %.lr.ph.preheader.i.i.new ], [ %niter463.next.3, %.lr.ph.i.i ]
  %i.hj = getelementptr inbounds nuw i8, ptr %2, i64 %indvars.iv.i.i
  %i.hk = load i8, ptr %i.hj, align 1, !tbaa !30
  %i.hl = zext i8 %i.hk to i64
  %i.hm = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.hl ; 2 uses
  %i.hn = load i32, ptr %i.hm, align 4, !tbaa !31
  %i.ho = add i32 %i.hn, 1
  store i32 %i.ho, ptr %i.hm, align 4, !tbaa !31
  %i.hp = getelementptr inbounds nuw i8, ptr %2, i64 %indvars.iv.i.i
  %i.hq = getelementptr inbounds nuw i8, ptr %i.hp, i64 1
  %i.hr = load i8, ptr %i.hq, align 1, !tbaa !30
  %i.hs = zext i8 %i.hr to i64
  %i.ht = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.hs ; 2 uses
  %i.hu = load i32, ptr %i.ht, align 4, !tbaa !31
  %i.hv = add i32 %i.hu, 1
  store i32 %i.hv, ptr %i.ht, align 4, !tbaa !31
  %i.hw = getelementptr inbounds nuw i8, ptr %2, i64 %indvars.iv.i.i
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hw, i64 2
  %i.hy = load i8, ptr %i.hx, align 1, !tbaa !30
  %i.hz = zext i8 %i.hy to i64
  %i.ia = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.hz ; 2 uses
  %i.ib = load i32, ptr %i.ia, align 4, !tbaa !31
  %i.ic = add i32 %i.ib, 1
  store i32 %i.ic, ptr %i.ia, align 4, !tbaa !31
  %i.id = getelementptr inbounds nuw i8, ptr %2, i64 %indvars.iv.i.i
  %i.ie = getelementptr inbounds nuw i8, ptr %i.id, i64 3
  %i.if = load i8, ptr %i.ie, align 1, !tbaa !30
  %i.ig = zext i8 %i.if to i64
  %i.ih = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.ig ; 2 uses
  %i.ii = load i32, ptr %i.ih, align 4, !tbaa !31
  %i.ij = add i32 %i.ii, 1
  store i32 %i.ij, ptr %i.ih, align 4, !tbaa !31
  %indvars.iv.next.i.i.3 = add nuw nsw i64 %indvars.iv.i.i, 4 ; 2 uses
  %niter463.next.3 = add i64 %niter463, 4         ; 2 uses
  %niter463.ncmp.3 = icmp eq i64 %niter463.next.3, %unroll_iter462
  br i1 %niter463.ncmp.3, label %.preheader.i.i.loopexit.unr-lcssa, label %.lr.ph.i.i, !llvm.loop !169

bb.d:                                             ; preds = %middle.block226
  %i.ik = zext nneg i32 %spec.store.select.i.i to i64
  %i.il = getelementptr inbounds nuw i8, ptr @choose_min_match_len.min_lens, i64 %i.ik
  %i.im = load i8, ptr %i.il, align 1, !tbaa !30
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
  %wide.load237 = load <4 x i32>, ptr %gep, align 4, !tbaa !30 ; 2 uses
  %wide.load238 = load <4 x i32>, ptr %i.jd, align 4, !tbaa !30 ; 2 uses
  %i.je = add <4 x i32> %wide.load237, %vec.phi233 ; 2 uses
  %i.jf = add <4 x i32> %wide.load238, %vec.phi234 ; 2 uses
  %i.jg = mul <4 x i32> %wide.load237, %vec.ind
  %i.jh = mul <4 x i32> %wide.load238, %step.add
  %i.ji = sub <4 x i32> %vec.phi235, %i.jg        ; 2 uses
  %i.jj = sub <4 x i32> %vec.phi236, %i.jh        ; 2 uses
  %index.next239 = add nuw i64 %index232, 8       ; 2 uses
  %vec.ind.next = add <4 x i32> %vec.ind, splat (i32 8)
  %i.jk = icmp eq i64 %index.next239, %n.vec
  br i1 %i.jk, label %middle.block240, label %vector.body231, !llvm.loop !170

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
  %i.jo = load i32, ptr %i.jn, align 4, !tbaa !30 ; 2 uses
  %i.jp = add i32 %i.jo, %.03747.i.i              ; 2 uses
  %i.jq = trunc nuw i64 %indvars.iv55.i.i to i32
  %i.jr = mul i32 %i.jo, %i.jq
  %i.js = sub i32 %.03846.i.i, %i.jr              ; 2 uses
  %indvars.iv.next56.i.i = add nuw nsw i64 %indvars.iv55.i.i, 1 ; 2 uses
  %i.jt = and i64 %indvars.iv.next56.i.i, 4294967295
  %exitcond58.not.i.i = icmp eq i64 %i.jt, 259
  br i1 %exitcond58.not.i.i, label %deflate_choose_default_litlen_costs.exit.i, label %scalar.ph227, !llvm.loop !171

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
  %i.ka = load i8, ptr %i.jz, align 1, !tbaa !30
  %i.kb = zext i8 %i.ka to i32                    ; 5 uses
  %i.kc = getelementptr inbounds nuw i8, ptr %i.jx, i64 257
  %i.kd = load i8, ptr %i.kc, align 1, !tbaa !222
  %i.ke = zext i8 %i.kd to i32                    ; 12 uses
  br i1 %5, label %vector.ph314, label %bb.k

vector.ph314:                                     ; preds = %deflate_choose_default_litlen_costs.exit.i
  %broadcast.splatinsert315 = insertelement <4 x i32> poison, i32 %i.kb, i64 0
  %broadcast.splat316 = shufflevector <4 x i32> %broadcast.splatinsert315, <4 x i32> poison, <4 x i32> zeroinitializer ; 64 uses
  %i.kf = getelementptr inbounds nuw i8, ptr %0, i64 8972420
  %i.kg = getelementptr inbounds nuw i8, ptr %0, i64 8972436
  store <4 x i32> %broadcast.splat316, ptr %i.kf, align 4, !tbaa !30
  store <4 x i32> %broadcast.splat316, ptr %i.kg, align 4, !tbaa !30
  %i.kh = getelementptr inbounds nuw i8, ptr %0, i64 8972452
  %i.ki = getelementptr inbounds nuw i8, ptr %0, i64 8972468
  store <4 x i32> %broadcast.splat316, ptr %i.kh, align 4, !tbaa !30
  store <4 x i32> %broadcast.splat316, ptr %i.ki, align 4, !tbaa !30
  %i.kj = getelementptr inbounds nuw i8, ptr %0, i64 8972484
  %i.kk = getelementptr inbounds nuw i8, ptr %0, i64 8972500
  store <4 x i32> %broadcast.splat316, ptr %i.kj, align 4, !tbaa !30
  store <4 x i32> %broadcast.splat316, ptr %i.kk, align 4, !tbaa !30
  %i.kl = getelementptr inbounds nuw i8, ptr %0, i64 8972516
  %i.km = getelementptr inbounds nuw i8, ptr %0, i64 8972532
  store <4 x i32> %broadcast.splat316, ptr %i.kl, align 4, !tbaa !30
  store <4 x i32> %broadcast.splat316, ptr %i.km, align 4, !tbaa !30
  %i.kn = getelementptr inbounds nuw i8, ptr %0, i64 8972548
  %i.ko = getelementptr inbounds nuw i8, ptr %0, i64 8972564
  store <4 x i32> %broadcast.splat316, ptr %i.kn, align 4, !tbaa !30
  store <4 x i32> %broadcast.splat316, ptr %i.ko, align 4, !tbaa !30
  %i.kp = getelementptr inbounds nuw i8, ptr %0, i64 8972580
  %i.kq = getelementptr inbounds nuw i8, ptr %0, i64 8972596
  store <4 x i32> %broadcast.splat316, ptr %i.kp, align 4, !tbaa !30
  store <4 x i32> %broadcast.splat316, ptr %i.kq, align 4, !tbaa !30
  %i.kr = getelementptr inbounds nuw i8, ptr %0, i64 8972612
  %i.ks = getelementptr inbounds nuw i8, ptr %0, i64 8972628
  store <4 x i32> %broadcast.splat316, ptr %i.kr, align 4, !tbaa !30
  store <4 x i32> %broadcast.splat316, ptr %i.ks, align 4, !tbaa !30
  %i.kt = getelementptr inbounds nuw i8, ptr %0, i64 8972644
  %i.ku = getelementptr inbounds nuw i8, ptr %0, i64 8972660
  store <4 x i32> %broadcast.splat316, ptr %i.kt, align 4, !tbaa !30
  store <4 x i32> %broadcast.splat316, ptr %i.ku, align 4, !tbaa !30
  %i.kv = getelementptr inbounds nuw i8, ptr %0, i64 8972676
  %i.kw = getelementptr inbounds nuw i8, ptr %0, i64 8972692
  store <4 x i32> %broadcast.splat316, ptr %i.kv, align 4, !tbaa !30
  store <4 x i32> %broadcast.splat316, ptr %i.kw, align 4, !tbaa !30
  %i.kx = getelementptr inbounds nuw i8, ptr %0, i64 8972708
  %i.ky = getelementptr inbounds nuw i8, ptr %0, i64 8972724
  store <4 x i32> %broadcast.splat316, ptr %i.kx, align 4, !tbaa !30
  store <4 x i32> %broadcast.splat316, ptr %i.ky, align 4, !tbaa !30
  %i.kz = getelementptr inbounds nuw i8, ptr %0, i64 8972740
  %i.la = getelementptr inbounds nuw i8, ptr %0, i64 8972756
  store <4 x i32> %broadcast.splat316, ptr %i.kz, align 4, !tbaa !30
  store <4 x i32> %broadcast.splat316, ptr %i.la, align 4, !tbaa !30
  %i.lb = getelementptr inbounds nuw i8, ptr %0, i64 8972772
  %i.lc = getelementptr inbounds nuw i8, ptr %0, i64 8972788
  store <4 x i32> %broadcast.splat316, ptr %i.lb, align 4, !tbaa !30
  store <4 x i32> %broadcast.splat316, ptr %i.lc, align 4, !tbaa !30
  %i.ld = getelementptr inbounds nuw i8, ptr %0, i64 8972804
  %i.le = getelementptr inbounds nuw i8, ptr %0, i64 8972820
  store <4 x i32> %broadcast.splat316, ptr %i.ld, align 4, !tbaa !30
  store <4 x i32> %broadcast.splat316, ptr %i.le, align 4, !tbaa !30
  %i.lf = getelementptr inbounds nuw i8, ptr %0, i64 8972836
  %i.lg = getelementptr inbounds nuw i8, ptr %0, i64 8972852
  store <4 x i32> %broadcast.splat316, ptr %i.lf, align 4, !tbaa !30
  store <4 x i32> %broadcast.splat316, ptr %i.lg, align 4, !tbaa !30
  %i.lh = getelementptr inbounds nuw i8, ptr %0, i64 8972868
  %i.li = getelementptr inbounds nuw i8, ptr %0, i64 8972884
  store <4 x i32> %broadcast.splat316, ptr %i.lh, align 4, !tbaa !30
  store <4 x i32> %broadcast.splat316, ptr %i.li, align 4, !tbaa !30
  %i.lj = getelementptr inbounds nuw i8, ptr %0, i64 8972900
  %i.lk = getelementptr inbounds nuw i8, ptr %0, i64 8972916
  store <4 x i32> %broadcast.splat316, ptr %i.lj, align 4, !tbaa !30
  store <4 x i32> %broadcast.splat316, ptr %i.lk, align 4, !tbaa !30
  %i.ll = getelementptr inbounds nuw i8, ptr %0, i64 8972932
  %i.lm = getelementptr inbounds nuw i8, ptr %0, i64 8972948
  store <4 x i32> %broadcast.splat316, ptr %i.ll, align 4, !tbaa !30
  store <4 x i32> %broadcast.splat316, ptr %i.lm, align 4, !tbaa !30
  %i.ln = getelementptr inbounds nuw i8, ptr %0, i64 8972964
  %i.lo = getelementptr inbounds nuw i8, ptr %0, i64 8972980
  store <4 x i32> %broadcast.splat316, ptr %i.ln, align 4, !tbaa !30
  store <4 x i32> %broadcast.splat316, ptr %i.lo, align 4, !tbaa !30
  %i.lp = getelementptr inbounds nuw i8, ptr %0, i64 8972996
  %i.lq = getelementptr inbounds nuw i8, ptr %0, i64 8973012
  store <4 x i32> %broadcast.splat316, ptr %i.lp, align 4, !tbaa !30
  store <4 x i32> %broadcast.splat316, ptr %i.lq, align 4, !tbaa !30
  %i.lr = getelementptr inbounds nuw i8, ptr %0, i64 8973028
  %i.ls = getelementptr inbounds nuw i8, ptr %0, i64 8973044
  store <4 x i32> %broadcast.splat316, ptr %i.lr, align 4, !tbaa !30
  store <4 x i32> %broadcast.splat316, ptr %i.ls, align 4, !tbaa !30
  %i.lt = getelementptr inbounds nuw i8, ptr %0, i64 8973060
  %i.lu = getelementptr inbounds nuw i8, ptr %0, i64 8973076
  store <4 x i32> %broadcast.splat316, ptr %i.lt, align 4, !tbaa !30
  store <4 x i32> %broadcast.splat316, ptr %i.lu, align 4, !tbaa !30
  %i.lv = getelementptr inbounds nuw i8, ptr %0, i64 8973092
  %i.lw = getelementptr inbounds nuw i8, ptr %0, i64 8973108
  store <4 x i32> %broadcast.splat316, ptr %i.lv, align 4, !tbaa !30
  store <4 x i32> %broadcast.splat316, ptr %i.lw, align 4, !tbaa !30
  %i.lx = getelementptr inbounds nuw i8, ptr %0, i64 8973124
  %i.ly = getelementptr inbounds nuw i8, ptr %0, i64 8973140
  store <4 x i32> %broadcast.splat316, ptr %i.lx, align 4, !tbaa !30
  store <4 x i32> %broadcast.splat316, ptr %i.ly, align 4, !tbaa !30
  %i.lz = getelementptr inbounds nuw i8, ptr %0, i64 8973156
  %i.ma = getelementptr inbounds nuw i8, ptr %0, i64 8973172
  store <4 x i32> %broadcast.splat316, ptr %i.lz, align 4, !tbaa !30
  store <4 x i32> %broadcast.splat316, ptr %i.ma, align 4, !tbaa !30
  %i.mb = getelementptr inbounds nuw i8, ptr %0, i64 8973188
  %i.mc = getelementptr inbounds nuw i8, ptr %0, i64 8973204
  store <4 x i32> %broadcast.splat316, ptr %i.mb, align 4, !tbaa !30
  store <4 x i32> %broadcast.splat316, ptr %i.mc, align 4, !tbaa !30
  %i.md = getelementptr inbounds nuw i8, ptr %0, i64 8973220
  %i.me = getelementptr inbounds nuw i8, ptr %0, i64 8973236
  store <4 x i32> %broadcast.splat316, ptr %i.md, align 4, !tbaa !30
  store <4 x i32> %broadcast.splat316, ptr %i.me, align 4, !tbaa !30
  %i.mf = getelementptr inbounds nuw i8, ptr %0, i64 8973252
  %i.mg = getelementptr inbounds nuw i8, ptr %0, i64 8973268
  store <4 x i32> %broadcast.splat316, ptr %i.mf, align 4, !tbaa !30
  store <4 x i32> %broadcast.splat316, ptr %i.mg, align 4, !tbaa !30
  %i.mh = getelementptr inbounds nuw i8, ptr %0, i64 8973284
  %i.mi = getelementptr inbounds nuw i8, ptr %0, i64 8973300
  store <4 x i32> %broadcast.splat316, ptr %i.mh, align 4, !tbaa !30
  store <4 x i32> %broadcast.splat316, ptr %i.mi, align 4, !tbaa !30
  %i.mj = getelementptr inbounds nuw i8, ptr %0, i64 8973316
  %i.mk = getelementptr inbounds nuw i8, ptr %0, i64 8973332
  store <4 x i32> %broadcast.splat316, ptr %i.mj, align 4, !tbaa !30
  store <4 x i32> %broadcast.splat316, ptr %i.mk, align 4, !tbaa !30
  %i.ml = getelementptr inbounds nuw i8, ptr %0, i64 8973348
  %i.mm = getelementptr inbounds nuw i8, ptr %0, i64 8973364
  store <4 x i32> %broadcast.splat316, ptr %i.ml, align 4, !tbaa !30
  store <4 x i32> %broadcast.splat316, ptr %i.mm, align 4, !tbaa !30
  %i.mn = getelementptr inbounds nuw i8, ptr %0, i64 8973380
  %i.mo = getelementptr inbounds nuw i8, ptr %0, i64 8973396
  store <4 x i32> %broadcast.splat316, ptr %i.mn, align 4, !tbaa !30
  store <4 x i32> %broadcast.splat316, ptr %i.mo, align 4, !tbaa !30
  %i.mp = getelementptr inbounds nuw i8, ptr %0, i64 8973412
  %i.mq = getelementptr inbounds nuw i8, ptr %0, i64 8973428
  store <4 x i32> %broadcast.splat316, ptr %i.mp, align 4, !tbaa !30
  store <4 x i32> %broadcast.splat316, ptr %i.mq, align 4, !tbaa !30
  %i.mr = getelementptr inbounds nuw i8, ptr %0, i64 8973444 ; 2 uses
  br label %bb.j

bb.j:                                             ; preds = %bb.j, %vector.ph314
  %indvars.iv21.i.i = phi i64 [ 3, %vector.ph314 ], [ %indvars.iv.next22.i.i.1, %bb.j ] ; 4 uses
  %i.ms = getelementptr inbounds nuw i8, ptr @deflate_length_slot, i64 %indvars.iv21.i.i
  %i.mt = load i8, ptr %i.ms, align 1, !tbaa !30
  %i.mu = zext i8 %i.mt to i64
  %i.mv = getelementptr inbounds nuw i8, ptr @deflate_extra_length_bits, i64 %i.mu
  %i.mw = load i8, ptr %i.mv, align 1, !tbaa !30
  %i.mx = zext i8 %i.mw to i32
  %i.my = shl nuw nsw i32 %i.mx, 4
  %i.mz = add nuw nsw i32 %i.my, %i.ke
  %i.na = getelementptr inbounds nuw [4 x i8], ptr %i.mr, i64 %indvars.iv21.i.i
  store i32 %i.mz, ptr %i.na, align 4, !tbaa !30
  %indvars.iv.next22.i.i = add nuw nsw i64 %indvars.iv21.i.i, 1 ; 2 uses
  %i.nb = getelementptr inbounds nuw i8, ptr @deflate_length_slot, i64 %indvars.iv.next22.i.i
  %i.nc = load i8, ptr %i.nb, align 1, !tbaa !30
  %i.nd = zext i8 %i.nc to i64
  %i.ne = getelementptr inbounds nuw i8, ptr @deflate_extra_length_bits, i64 %i.nd
  %i.nf = load i8, ptr %i.ne, align 1, !tbaa !30
  %i.ng = zext i8 %i.nf to i32
  %i.nh = shl nuw nsw i32 %i.ng, 4
  %i.ni = add nuw nsw i32 %i.nh, %i.ke
  %i.nj = getelementptr inbounds nuw [4 x i8], ptr %i.mr, i64 %indvars.iv.next22.i.i
  store i32 %i.ni, ptr %i.nj, align 4, !tbaa !30
  %indvars.iv.next22.i.i.1 = add nuw nsw i64 %indvars.iv21.i.i, 2 ; 2 uses
  %exitcond24.not.i.i.1 = icmp eq i64 %indvars.iv.next22.i.i.1, 259
  br i1 %exitcond24.not.i.i.1, label %deflate_set_default_costs.exit.i, label %bb.j, !llvm.loop !172

deflate_set_default_costs.exit.i:                 ; preds = %bb.j
end_hunk_0
