Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lodepng/original/lodepng?download=true
inline.NumInlined: 891
inline.NumDeleted: 194
loop-unroll.NumCompletelyUnrolled: 36
loop-unroll.NumRuntimeUnrolled: 87
loop-unroll.NumUnrolled: 129
begin_hunk_0_@_ZL19preProcessScanlinesPPhPmPKhjjPK11LodePNGInfoPK22LodePNGEncoderSettings:bb.a
  %indvars.iv.next121.i = add nuw nsw i64 %indvars.iv120.i, 1 ; 2 uses
  %.not.us.i = icmp eq i64 %indvars.iv.next121.i, 7
  br i1 %.not.us.i, label %_ZL15Adam7_interlacePhPKhjjj.exit, label %.preheader84.split.us.i, !llvm.loop !631

.preheader83.us.i:                                ; preds = %.preheader83.lr.ph.split.us.i, %._crit_edge91.us.i
  %.06692.us.i = phi i32 [ 0, %.preheader83.lr.ph.split.us.i ], [ %i.ha, %._crit_edge91.us.i ] ; 3 uses
  %i.gw = mul i32 %.06692.us.i, %i.hh
  %i.gx = add i32 %i.gw, %i.hg
  %i.gy = mul i32 %i.gx, %3
  %invariant.op.us.i = add i32 %i.gy, %i.hi
  %i.gz = mul i32 %.06692.us.i, %i.as
  br label %.lr.ph.us.i

._crit_edge.us.i:                                 ; preds = %_ZL22setBitOfReversedStreamPmPhh.exit.us.i.6, %_ZL22setBitOfReversedStreamPmPhh.exit.us.i.5, %_ZL22setBitOfReversedStreamPmPhh.exit.us.i.4, %_ZL22setBitOfReversedStreamPmPhh.exit.us.i.3, %_ZL22setBitOfReversedStreamPmPhh.exit.us.i.2, %_ZL22setBitOfReversedStreamPmPhh.exit.us.i.1, %_ZL22setBitOfReversedStreamPmPhh.exit.us.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond118.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond118.not.i, label %._crit_edge91.us.i, label %.lr.ph.us.i, !llvm.loop !632

._crit_edge91.us.i:                               ; preds = %._crit_edge.us.i
  %i.ha = add nuw i32 %.06692.us.i, 1             ; 2 uses
  %exitcond119.not.i = icmp eq i32 %i.ha, %i.au
  br i1 %exitcond119.not.i, label %._crit_edge93.split.us.i, label %.preheader83.us.i, !llvm.loop !633

.preheader83.lr.ph.split.us.i:                    ; preds = %.preheader84.split.us.i
  %i.hb = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv120.i
  %i.hc = getelementptr inbounds nuw [4 x i8], ptr @_ZL8ADAM7_DX, i64 %indvars.iv120.i
  %i.hd = getelementptr inbounds nuw [4 x i8], ptr @_ZL8ADAM7_IX, i64 %indvars.iv120.i
  %i.he = getelementptr inbounds nuw [4 x i8], ptr @_ZL8ADAM7_DY, i64 %indvars.iv120.i
  %i.hf = getelementptr inbounds nuw [4 x i8], ptr @_ZL8ADAM7_IY, i64 %indvars.iv120.i
  %i.hg = load i32, ptr %i.hf, align 4, !tbaa !13
  %i.hh = load i32, ptr %i.he, align 4, !tbaa !13
  %i.hi = load i32, ptr %i.hd, align 4, !tbaa !13
  %i.hj = load i32, ptr %i.hc, align 4, !tbaa !13
  %i.hk = load i64, ptr %i.hb, align 8, !tbaa !8
  %i.hl = shl i64 %i.hk, 3
  %wide.trip.count.i = zext i32 %i.as to i64
  br label %.preheader83.us.i

.preheader82.split.us.preheader.i:                ; preds = %bb.i
  %i.hm = lshr i32 %.0.i.i.i, 3
  %i.hn = zext nneg i32 %i.hm to i64              ; 63 uses
  %i.ho = load i32, ptr %i.b, align 16, !tbaa !13 ; 2 uses
  %.not112.i = icmp eq i32 %i.ho, 0
  br i1 %.not112.i, label %._crit_edge101.split.us.i, label %.preheader.lr.ph.us.i

.lr.ph.us104.i:                                   ; preds = %.preheader.us.i, %.lr.ph.us104.i
  %indvars.iv131.i = phi i64 [ %indvars.iv.next132.i.1, %.lr.ph.us104.i ], [ 0, %.preheader.us.i ] ; 3 uses
  %niter = phi i64 [ %niter.next.1, %.lr.ph.us104.i ], [ 0, %.preheader.us.i ]
  %i.hp = trunc nuw i64 %indvars.iv131.i to i32   ; 2 uses
  %reass.add = add i32 %i.rs, %i.hp
  %reass.mul = shl i32 %reass.add, 3
  %i.hq = zext i32 %reass.mul to i64
  %i.hr = mul nuw nsw i64 %i.hq, %i.hn
  %i.hs = add i32 %i.rt, %i.hp
  %i.ht = zext i32 %i.hs to i64
  %i.hu = mul nuw nsw i64 %i.ht, %i.hn
  %i.hv = getelementptr inbounds nuw i8, ptr %2, i64 %i.hr
  %i.hw = getelementptr i8, ptr %i.sf, i64 %i.hu
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.hw, ptr align 1 %i.hv, i64 %i.hn, i1 false), !tbaa !20
  %i.hx = trunc i64 %indvars.iv131.i to i32
  %i.hy = or disjoint i32 %i.hx, 1                ; 2 uses
  %reass.add.1 = add i32 %i.rs, %i.hy
  %reass.mul.1 = shl i32 %reass.add.1, 3
  %i.hz = zext i32 %reass.mul.1 to i64
  %i.ia = mul nuw nsw i64 %i.hz, %i.hn
  %i.ib = add i32 %i.rt, %i.hy
  %i.ic = zext i32 %i.ib to i64
  %i.id = mul nuw nsw i64 %i.ic, %i.hn
  %i.ie = getelementptr inbounds nuw i8, ptr %2, i64 %i.ia
  %i.if = getelementptr i8, ptr %i.sf, i64 %i.id
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.if, ptr align 1 %i.ie, i64 %i.hn, i1 false), !tbaa !20
  %indvars.iv.next132.i.1 = add nuw nsw i64 %indvars.iv131.i, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge99.us.i.unr-lcssa, label %.lr.ph.us104.i, !llvm.loop !634

._crit_edge101.split.us.i:                        ; preds = %._crit_edge99.us.i, %.preheader.lr.ph.us.i, %.preheader82.split.us.preheader.i
  %i.ig = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.ih = load i32, ptr %i.ig, align 4, !tbaa !13 ; 2 uses
  %.not112.1.i = icmp eq i32 %i.ih, 0
  br i1 %.not112.1.i, label %._crit_edge101.split.us.1.i, label %.preheader.lr.ph.us.1.i

.preheader.lr.ph.us.1.i:                          ; preds = %._crit_edge101.split.us.i
  %i.ii = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.ij = load i32, ptr %i.ii, align 4, !tbaa !13 ; 5 uses
  %.not113.1.i = icmp eq i32 %i.ij, 0
  br i1 %.not113.1.i, label %._crit_edge101.split.us.1.i, label %.preheader.lr.ph.split.us.1.i

.preheader.lr.ph.split.us.1.i:                    ; preds = %.preheader.lr.ph.us.1.i
  %i.ik = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.il = load i64, ptr %i.ik, align 8, !tbaa !8
  %i.im = getelementptr i8, ptr %i.an, i64 %i.il  ; 3 uses
  %wide.trip.count134.1.i = zext i32 %i.ij to i64 ; 2 uses
  %xtraiter195 = and i64 %wide.trip.count134.1.i, 1
  %i.in = icmp eq i32 %i.ij, 1
  %unroll_iter198 = and i64 %wide.trip.count134.1.i, 4294967294
  %lcmp.mod196.not = icmp eq i64 %xtraiter195, 0
  %lcmp.mod197 = trunc i32 %i.ij to i1
  br label %.preheader.us.1.i

.preheader.us.1.i:                                ; preds = %._crit_edge99.us.1.i, %.preheader.lr.ph.split.us.1.i
  %.069100.us.1.i = phi i32 [ 0, %.preheader.lr.ph.split.us.1.i ], [ %i.js, %._crit_edge99.us.1.i ] ; 3 uses
  %i.io = mul i32 %.069100.us.1.i, %3             ; 3 uses
  %i.ip = mul i32 %.069100.us.1.i, %i.ij          ; 3 uses
  br i1 %i.in, label %.lr.ph.us104.1.i.epil.preheader, label %.lr.ph.us104.1.i

.lr.ph.us104.1.i:                                 ; preds = %.preheader.us.1.i, %.lr.ph.us104.1.i
  %indvars.iv131.1.i = phi i64 [ %indvars.iv.next132.1.i.1, %.lr.ph.us104.1.i ], [ 0, %.preheader.us.1.i ] ; 3 uses
  %niter199 = phi i64 [ %niter199.next.1, %.lr.ph.us104.1.i ], [ 0, %.preheader.us.1.i ]
  %i.iq = trunc nuw i64 %indvars.iv131.1.i to i32 ; 2 uses
  %reass.add127 = add i32 %i.io, %i.iq
  %reass.mul128 = shl i32 %reass.add127, 3
  %i.ir = or disjoint i32 %reass.mul128, 4
  %i.is = zext i32 %i.ir to i64
  %i.it = mul nuw nsw i64 %i.is, %i.hn
  %i.iu = add i32 %i.ip, %i.iq
  %i.iv = zext i32 %i.iu to i64
  %i.iw = mul nuw nsw i64 %i.iv, %i.hn
  %i.ix = getelementptr inbounds nuw i8, ptr %2, i64 %i.it
  %i.iy = getelementptr i8, ptr %i.im, i64 %i.iw
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.iy, ptr align 1 %i.ix, i64 %i.hn, i1 false), !tbaa !20
  %i.iz = trunc i64 %indvars.iv131.1.i to i32
  %i.ja = or disjoint i32 %i.iz, 1                ; 2 uses
  %reass.add127.1 = add i32 %i.io, %i.ja
  %reass.mul128.1 = shl i32 %reass.add127.1, 3
  %i.jb = or disjoint i32 %reass.mul128.1, 4
  %i.jc = zext i32 %i.jb to i64
  %i.jd = mul nuw nsw i64 %i.jc, %i.hn
  %i.je = add i32 %i.ip, %i.ja
  %i.jf = zext i32 %i.je to i64
  %i.jg = mul nuw nsw i64 %i.jf, %i.hn
  %i.jh = getelementptr inbounds nuw i8, ptr %2, i64 %i.jd
  %i.ji = getelementptr i8, ptr %i.im, i64 %i.jg
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ji, ptr align 1 %i.jh, i64 %i.hn, i1 false), !tbaa !20
  %indvars.iv.next132.1.i.1 = add nuw nsw i64 %indvars.iv131.1.i, 2 ; 2 uses
  %niter199.next.1 = add i64 %niter199, 2         ; 2 uses
  %niter199.ncmp.1 = icmp eq i64 %niter199.next.1, %unroll_iter198
  br i1 %niter199.ncmp.1, label %._crit_edge99.us.1.i.unr-lcssa, label %.lr.ph.us104.1.i, !llvm.loop !634

._crit_edge99.us.1.i.unr-lcssa:                   ; preds = %.lr.ph.us104.1.i
  br i1 %lcmp.mod196.not, label %._crit_edge99.us.1.i, label %.lr.ph.us104.1.i.epil.preheader

.lr.ph.us104.1.i.epil.preheader:                  ; preds = %._crit_edge99.us.1.i.unr-lcssa, %.preheader.us.1.i
  %indvars.iv131.1.i.epil.init = phi i64 [ 0, %.preheader.us.1.i ], [ %indvars.iv.next132.1.i.1, %._crit_edge99.us.1.i.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod197)
  %i.jj = trunc nuw i64 %indvars.iv131.1.i.epil.init to i32 ; 2 uses
  %reass.add127.epil = add i32 %i.io, %i.jj
  %reass.mul128.epil = shl i32 %reass.add127.epil, 3
  %i.jk = or disjoint i32 %reass.mul128.epil, 4
  %i.jl = zext i32 %i.jk to i64
  %i.jm = mul nuw nsw i64 %i.jl, %i.hn
  %i.jn = add i32 %i.ip, %i.jj
  %i.jo = zext i32 %i.jn to i64
  %i.jp = mul nuw nsw i64 %i.jo, %i.hn
  %i.jq = getelementptr inbounds nuw i8, ptr %2, i64 %i.jm
  %i.jr = getelementptr i8, ptr %i.im, i64 %i.jp
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.jr, ptr align 1 %i.jq, i64 %i.hn, i1 false), !tbaa !20
  br label %._crit_edge99.us.1.i

._crit_edge99.us.1.i:                             ; preds = %._crit_edge99.us.1.i.unr-lcssa, %.lr.ph.us104.1.i.epil.preheader
  %i.js = add nuw i32 %.069100.us.1.i, 1          ; 2 uses
  %exitcond136.1.not.i = icmp eq i32 %i.js, %i.ih
  br i1 %exitcond136.1.not.i, label %._crit_edge101.split.us.1.i, label %.preheader.us.1.i, !llvm.loop !635

._crit_edge101.split.us.1.i:                      ; preds = %._crit_edge99.us.1.i, %.preheader.lr.ph.us.1.i, %._crit_edge101.split.us.i
  %i.jt = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.ju = load i32, ptr %i.jt, align 8, !tbaa !13 ; 2 uses
  %.not112.2.i = icmp eq i32 %i.ju, 0
  br i1 %.not112.2.i, label %._crit_edge101.split.us.2.i, label %.preheader.lr.ph.us.2.i

.preheader.lr.ph.us.2.i:                          ; preds = %._crit_edge101.split.us.1.i
  %i.jv = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.jw = load i32, ptr %i.jv, align 8, !tbaa !13 ; 5 uses
  %.not113.2.i = icmp eq i32 %i.jw, 0
  br i1 %.not113.2.i, label %._crit_edge101.split.us.2.i, label %.preheader.lr.ph.split.us.2.i

.preheader.lr.ph.split.us.2.i:                    ; preds = %.preheader.lr.ph.us.2.i
  %i.jx = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.jy = load i64, ptr %i.jx, align 16, !tbaa !8
  %i.jz = getelementptr i8, ptr %i.an, i64 %i.jy  ; 3 uses
  %wide.trip.count134.2.i = zext i32 %i.jw to i64 ; 2 uses
  %xtraiter200 = and i64 %wide.trip.count134.2.i, 1
  %i.ka = icmp eq i32 %i.jw, 1
  %unroll_iter203 = and i64 %wide.trip.count134.2.i, 4294967294
  %lcmp.mod201.not = icmp eq i64 %xtraiter200, 0
  %lcmp.mod202 = trunc i32 %i.jw to i1
  br label %.preheader.us.2.i

.preheader.us.2.i:                                ; preds = %._crit_edge99.us.2.i, %.preheader.lr.ph.split.us.2.i
  %.069100.us.2.i = phi i32 [ 0, %.preheader.lr.ph.split.us.2.i ], [ %i.lk, %._crit_edge99.us.2.i ] ; 3 uses
  %i.kb = shl i32 %.069100.us.2.i, 3
  %i.kc = or disjoint i32 %i.kb, 4
  %i.kd = mul i32 %i.kc, %3                       ; 3 uses
  %i.ke = mul i32 %.069100.us.2.i, %i.jw          ; 3 uses
  br i1 %i.ka, label %.lr.ph.us104.2.i.epil.preheader, label %.lr.ph.us104.2.i

.lr.ph.us104.2.i:                                 ; preds = %.preheader.us.2.i, %.lr.ph.us104.2.i
  %indvars.iv131.2.i = phi i64 [ %indvars.iv.next132.2.i.1, %.lr.ph.us104.2.i ], [ 0, %.preheader.us.2.i ] ; 3 uses
  %niter204 = phi i64 [ %niter204.next.1, %.lr.ph.us104.2.i ], [ 0, %.preheader.us.2.i ]
  %i.kf = trunc nuw i64 %indvars.iv131.2.i to i32 ; 2 uses
  %i.kg = shl i32 %i.kf, 2
  %i.kh = add i32 %i.kg, %i.kd
  %i.ki = zext i32 %i.kh to i64
  %i.kj = mul nuw nsw i64 %i.ki, %i.hn
  %i.kk = add i32 %i.ke, %i.kf
  %i.kl = zext i32 %i.kk to i64
  %i.km = mul nuw nsw i64 %i.kl, %i.hn
  %i.kn = getelementptr inbounds nuw i8, ptr %2, i64 %i.kj
  %i.ko = getelementptr i8, ptr %i.jz, i64 %i.km
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ko, ptr align 1 %i.kn, i64 %i.hn, i1 false), !tbaa !20
  %i.kp = trunc i64 %indvars.iv131.2.i to i32
  %i.kq = or disjoint i32 %i.kp, 1                ; 2 uses
  %i.kr = shl i32 %i.kq, 2
  %i.ks = add i32 %i.kr, %i.kd
  %i.kt = zext i32 %i.ks to i64
  %i.ku = mul nuw nsw i64 %i.kt, %i.hn
  %i.kv = add i32 %i.ke, %i.kq
  %i.kw = zext i32 %i.kv to i64
  %i.kx = mul nuw nsw i64 %i.kw, %i.hn
  %i.ky = getelementptr inbounds nuw i8, ptr %2, i64 %i.ku
  %i.kz = getelementptr i8, ptr %i.jz, i64 %i.kx
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.kz, ptr align 1 %i.ky, i64 %i.hn, i1 false), !tbaa !20
  %indvars.iv.next132.2.i.1 = add nuw nsw i64 %indvars.iv131.2.i, 2 ; 2 uses
  %niter204.next.1 = add i64 %niter204, 2         ; 2 uses
  %niter204.ncmp.1 = icmp eq i64 %niter204.next.1, %unroll_iter203
  br i1 %niter204.ncmp.1, label %._crit_edge99.us.2.i.unr-lcssa, label %.lr.ph.us104.2.i, !llvm.loop !634

._crit_edge99.us.2.i.unr-lcssa:                   ; preds = %.lr.ph.us104.2.i
  br i1 %lcmp.mod201.not, label %._crit_edge99.us.2.i, label %.lr.ph.us104.2.i.epil.preheader

.lr.ph.us104.2.i.epil.preheader:                  ; preds = %._crit_edge99.us.2.i.unr-lcssa, %.preheader.us.2.i
  %indvars.iv131.2.i.epil.init = phi i64 [ 0, %.preheader.us.2.i ], [ %indvars.iv.next132.2.i.1, %._crit_edge99.us.2.i.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod202)
  %i.la = trunc nuw i64 %indvars.iv131.2.i.epil.init to i32 ; 2 uses
  %i.lb = shl i32 %i.la, 2
  %i.lc = add i32 %i.lb, %i.kd
  %i.ld = zext i32 %i.lc to i64
  %i.le = mul nuw nsw i64 %i.ld, %i.hn
  %i.lf = add i32 %i.ke, %i.la
  %i.lg = zext i32 %i.lf to i64
  %i.lh = mul nuw nsw i64 %i.lg, %i.hn
  %i.li = getelementptr inbounds nuw i8, ptr %2, i64 %i.le
  %i.lj = getelementptr i8, ptr %i.jz, i64 %i.lh
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.lj, ptr align 1 %i.li, i64 %i.hn, i1 false), !tbaa !20
  br label %._crit_edge99.us.2.i

._crit_edge99.us.2.i:                             ; preds = %._crit_edge99.us.2.i.unr-lcssa, %.lr.ph.us104.2.i.epil.preheader
  %i.lk = add nuw i32 %.069100.us.2.i, 1          ; 2 uses
  %exitcond136.2.not.i = icmp eq i32 %i.lk, %i.ju
  br i1 %exitcond136.2.not.i, label %._crit_edge101.split.us.2.i, label %.preheader.us.2.i, !llvm.loop !635

._crit_edge101.split.us.2.i:                      ; preds = %._crit_edge99.us.2.i, %.preheader.lr.ph.us.2.i, %._crit_edge101.split.us.1.i
  %i.ll = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  %i.lm = load i32, ptr %i.ll, align 4, !tbaa !13 ; 2 uses
  %.not112.3.i = icmp eq i32 %i.lm, 0
  br i1 %.not112.3.i, label %._crit_edge101.split.us.3.i, label %.preheader.lr.ph.us.3.i

.preheader.lr.ph.us.3.i:                          ; preds = %._crit_edge101.split.us.2.i
  %i.ln = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  %i.lo = load i32, ptr %i.ln, align 4, !tbaa !13 ; 5 uses
  %.not113.3.i = icmp eq i32 %i.lo, 0
  br i1 %.not113.3.i, label %._crit_edge101.split.us.3.i, label %.preheader.lr.ph.split.us.3.i

.preheader.lr.ph.split.us.3.i:                    ; preds = %.preheader.lr.ph.us.3.i
  %i.lp = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.lq = load i64, ptr %i.lp, align 8, !tbaa !8
  %i.lr = getelementptr i8, ptr %i.an, i64 %i.lq  ; 3 uses
  %wide.trip.count134.3.i = zext i32 %i.lo to i64 ; 2 uses
  %xtraiter205 = and i64 %wide.trip.count134.3.i, 1
  %i.ls = icmp eq i32 %i.lo, 1
  %unroll_iter208 = and i64 %wide.trip.count134.3.i, 4294967294
  %lcmp.mod206.not = icmp eq i64 %xtraiter205, 0
  %lcmp.mod207 = trunc i32 %i.lo to i1
  br label %.preheader.us.3.i

.preheader.us.3.i:                                ; preds = %._crit_edge99.us.3.i, %.preheader.lr.ph.split.us.3.i
  %.069100.us.3.i = phi i32 [ 0, %.preheader.lr.ph.split.us.3.i ], [ %i.mx, %._crit_edge99.us.3.i ] ; 3 uses
  %i.lt = mul i32 %.069100.us.3.i, %3             ; 3 uses
  %i.lu = mul i32 %.069100.us.3.i, %i.lo          ; 3 uses
  br i1 %i.ls, label %.lr.ph.us104.3.i.epil.preheader, label %.lr.ph.us104.3.i

.lr.ph.us104.3.i:                                 ; preds = %.preheader.us.3.i, %.lr.ph.us104.3.i
  %indvars.iv131.3.i = phi i64 [ %indvars.iv.next132.3.i.1, %.lr.ph.us104.3.i ], [ 0, %.preheader.us.3.i ] ; 3 uses
  %niter209 = phi i64 [ %niter209.next.1, %.lr.ph.us104.3.i ], [ 0, %.preheader.us.3.i ]
  %i.lv = trunc nuw i64 %indvars.iv131.3.i to i32 ; 2 uses
  %reass.add129 = add i32 %i.lt, %i.lv
  %reass.mul130 = shl i32 %reass.add129, 2
  %i.lw = or disjoint i32 %reass.mul130, 2
  %i.lx = zext i32 %i.lw to i64
  %i.ly = mul nuw nsw i64 %i.lx, %i.hn
  %i.lz = add i32 %i.lu, %i.lv
  %i.ma = zext i32 %i.lz to i64
  %i.mb = mul nuw nsw i64 %i.ma, %i.hn
  %i.mc = getelementptr inbounds nuw i8, ptr %2, i64 %i.ly
  %i.md = getelementptr i8, ptr %i.lr, i64 %i.mb
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.md, ptr align 1 %i.mc, i64 %i.hn, i1 false), !tbaa !20
  %i.me = trunc i64 %indvars.iv131.3.i to i32
  %i.mf = or disjoint i32 %i.me, 1                ; 2 uses
  %reass.add129.1 = add i32 %i.lt, %i.mf
  %reass.mul130.1 = shl i32 %reass.add129.1, 2
  %i.mg = or disjoint i32 %reass.mul130.1, 2
  %i.mh = zext i32 %i.mg to i64
  %i.mi = mul nuw nsw i64 %i.mh, %i.hn
  %i.mj = add i32 %i.lu, %i.mf
  %i.mk = zext i32 %i.mj to i64
  %i.ml = mul nuw nsw i64 %i.mk, %i.hn
  %i.mm = getelementptr inbounds nuw i8, ptr %2, i64 %i.mi
  %i.mn = getelementptr i8, ptr %i.lr, i64 %i.ml
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.mn, ptr align 1 %i.mm, i64 %i.hn, i1 false), !tbaa !20
  %indvars.iv.next132.3.i.1 = add nuw nsw i64 %indvars.iv131.3.i, 2 ; 2 uses
  %niter209.next.1 = add i64 %niter209, 2         ; 2 uses
  %niter209.ncmp.1 = icmp eq i64 %niter209.next.1, %unroll_iter208
  br i1 %niter209.ncmp.1, label %._crit_edge99.us.3.i.unr-lcssa, label %.lr.ph.us104.3.i, !llvm.loop !634

._crit_edge99.us.3.i.unr-lcssa:                   ; preds = %.lr.ph.us104.3.i
  br i1 %lcmp.mod206.not, label %._crit_edge99.us.3.i, label %.lr.ph.us104.3.i.epil.preheader

.lr.ph.us104.3.i.epil.preheader:                  ; preds = %._crit_edge99.us.3.i.unr-lcssa, %.preheader.us.3.i
  %indvars.iv131.3.i.epil.init = phi i64 [ 0, %.preheader.us.3.i ], [ %indvars.iv.next132.3.i.1, %._crit_edge99.us.3.i.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod207)
  %i.mo = trunc nuw i64 %indvars.iv131.3.i.epil.init to i32 ; 2 uses
  %reass.add129.epil = add i32 %i.lt, %i.mo
  %reass.mul130.epil = shl i32 %reass.add129.epil, 2
  %i.mp = or disjoint i32 %reass.mul130.epil, 2
  %i.mq = zext i32 %i.mp to i64
  %i.mr = mul nuw nsw i64 %i.mq, %i.hn
  %i.ms = add i32 %i.lu, %i.mo
  %i.mt = zext i32 %i.ms to i64
  %i.mu = mul nuw nsw i64 %i.mt, %i.hn
  %i.mv = getelementptr inbounds nuw i8, ptr %2, i64 %i.mr
  %i.mw = getelementptr i8, ptr %i.lr, i64 %i.mu
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.mw, ptr align 1 %i.mv, i64 %i.hn, i1 false), !tbaa !20
  br label %._crit_edge99.us.3.i

._crit_edge99.us.3.i:                             ; preds = %._crit_edge99.us.3.i.unr-lcssa, %.lr.ph.us104.3.i.epil.preheader
  %i.mx = add nuw i32 %.069100.us.3.i, 1          ; 2 uses
  %exitcond136.3.not.i = icmp eq i32 %i.mx, %i.lm
  br i1 %exitcond136.3.not.i, label %._crit_edge101.split.us.3.i, label %.preheader.us.3.i, !llvm.loop !635

._crit_edge101.split.us.3.i:                      ; preds = %._crit_edge99.us.3.i, %.preheader.lr.ph.us.3.i, %._crit_edge101.split.us.2.i
  %i.my = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.mz = load i32, ptr %i.my, align 16, !tbaa !13 ; 2 uses
  %.not112.4.i = icmp eq i32 %i.mz, 0
  br i1 %.not112.4.i, label %._crit_edge101.split.us.4.i, label %.preheader.lr.ph.us.4.i

.preheader.lr.ph.us.4.i:                          ; preds = %._crit_edge101.split.us.3.i
  %i.na = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.nb = load i32, ptr %i.na, align 16, !tbaa !13 ; 5 uses
  %.not113.4.i = icmp eq i32 %i.nb, 0
  br i1 %.not113.4.i, label %._crit_edge101.split.us.4.i, label %.preheader.lr.ph.split.us.4.i

.preheader.lr.ph.split.us.4.i:                    ; preds = %.preheader.lr.ph.us.4.i
  %i.nc = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.nd = load i64, ptr %i.nc, align 16, !tbaa !8
  %i.ne = getelementptr i8, ptr %i.an, i64 %i.nd  ; 3 uses
  %wide.trip.count134.4.i = zext i32 %i.nb to i64 ; 2 uses
  %xtraiter210 = and i64 %wide.trip.count134.4.i, 1
  %i.nf = icmp eq i32 %i.nb, 1
  %unroll_iter213 = and i64 %wide.trip.count134.4.i, 4294967294
  %lcmp.mod211.not = icmp eq i64 %xtraiter210, 0
  %lcmp.mod212 = trunc i32 %i.nb to i1
  br label %.preheader.us.4.i

.preheader.us.4.i:                                ; preds = %._crit_edge99.us.4.i, %.preheader.lr.ph.split.us.4.i
  %.069100.us.4.i = phi i32 [ 0, %.preheader.lr.ph.split.us.4.i ], [ %i.op, %._crit_edge99.us.4.i ] ; 3 uses
  %i.ng = shl i32 %.069100.us.4.i, 2
  %i.nh = or disjoint i32 %i.ng, 2
  %i.ni = mul i32 %i.nh, %3                       ; 3 uses
  %i.nj = mul i32 %.069100.us.4.i, %i.nb          ; 3 uses
  br i1 %i.nf, label %.lr.ph.us104.4.i.epil.preheader, label %.lr.ph.us104.4.i

.lr.ph.us104.4.i:                                 ; preds = %.preheader.us.4.i, %.lr.ph.us104.4.i
  %indvars.iv131.4.i = phi i64 [ %indvars.iv.next132.4.i.1, %.lr.ph.us104.4.i ], [ 0, %.preheader.us.4.i ] ; 3 uses
  %niter214 = phi i64 [ %niter214.next.1, %.lr.ph.us104.4.i ], [ 0, %.preheader.us.4.i ]
  %i.nk = trunc nuw i64 %indvars.iv131.4.i to i32 ; 2 uses
  %i.nl = shl i32 %i.nk, 1
  %i.nm = add i32 %i.nl, %i.ni
  %i.nn = zext i32 %i.nm to i64
  %i.no = mul nuw nsw i64 %i.nn, %i.hn
  %i.np = add i32 %i.nj, %i.nk
  %i.nq = zext i32 %i.np to i64
  %i.nr = mul nuw nsw i64 %i.nq, %i.hn
  %i.ns = getelementptr inbounds nuw i8, ptr %2, i64 %i.no
  %i.nt = getelementptr i8, ptr %i.ne, i64 %i.nr
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.nt, ptr align 1 %i.ns, i64 %i.hn, i1 false), !tbaa !20
  %i.nu = trunc i64 %indvars.iv131.4.i to i32
  %i.nv = or disjoint i32 %i.nu, 1                ; 2 uses
  %i.nw = shl i32 %i.nv, 1
  %i.nx = add i32 %i.nw, %i.ni
  %i.ny = zext i32 %i.nx to i64
  %i.nz = mul nuw nsw i64 %i.ny, %i.hn
  %i.oa = add i32 %i.nj, %i.nv
  %i.ob = zext i32 %i.oa to i64
  %i.oc = mul nuw nsw i64 %i.ob, %i.hn
  %i.od = getelementptr inbounds nuw i8, ptr %2, i64 %i.nz
  %i.oe = getelementptr i8, ptr %i.ne, i64 %i.oc
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.oe, ptr align 1 %i.od, i64 %i.hn, i1 false), !tbaa !20
  %indvars.iv.next132.4.i.1 = add nuw nsw i64 %indvars.iv131.4.i, 2 ; 2 uses
  %niter214.next.1 = add i64 %niter214, 2         ; 2 uses
  %niter214.ncmp.1 = icmp eq i64 %niter214.next.1, %unroll_iter213
  br i1 %niter214.ncmp.1, label %._crit_edge99.us.4.i.unr-lcssa, label %.lr.ph.us104.4.i, !llvm.loop !634

._crit_edge99.us.4.i.unr-lcssa:                   ; preds = %.lr.ph.us104.4.i
  br i1 %lcmp.mod211.not, label %._crit_edge99.us.4.i, label %.lr.ph.us104.4.i.epil.preheader

.lr.ph.us104.4.i.epil.preheader:                  ; preds = %._crit_edge99.us.4.i.unr-lcssa, %.preheader.us.4.i
  %indvars.iv131.4.i.epil.init = phi i64 [ 0, %.preheader.us.4.i ], [ %indvars.iv.next132.4.i.1, %._crit_edge99.us.4.i.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod212)
  %i.of = trunc nuw i64 %indvars.iv131.4.i.epil.init to i32 ; 2 uses
  %i.og = shl i32 %i.of, 1
  %i.oh = add i32 %i.og, %i.ni
  %i.oi = zext i32 %i.oh to i64
  %i.oj = mul nuw nsw i64 %i.oi, %i.hn
  %i.ok = add i32 %i.nj, %i.of
  %i.ol = zext i32 %i.ok to i64
  %i.om = mul nuw nsw i64 %i.ol, %i.hn
  %i.on = getelementptr inbounds nuw i8, ptr %2, i64 %i.oj
  %i.oo = getelementptr i8, ptr %i.ne, i64 %i.om
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.oo, ptr align 1 %i.on, i64 %i.hn, i1 false), !tbaa !20
  br label %._crit_edge99.us.4.i

._crit_edge99.us.4.i:                             ; preds = %._crit_edge99.us.4.i.unr-lcssa, %.lr.ph.us104.4.i.epil.preheader
  %i.op = add nuw i32 %.069100.us.4.i, 1          ; 2 uses
  %exitcond136.4.not.i = icmp eq i32 %i.op, %i.mz
  br i1 %exitcond136.4.not.i, label %._crit_edge101.split.us.4.i, label %.preheader.us.4.i, !llvm.loop !635

._crit_edge101.split.us.4.i:                      ; preds = %._crit_edge99.us.4.i, %.preheader.lr.ph.us.4.i, %._crit_edge101.split.us.3.i
  %i.oq = getelementptr inbounds nuw i8, ptr %i.b, i64 20
  %i.or = load i32, ptr %i.oq, align 4, !tbaa !13 ; 2 uses
  %.not112.5.i = icmp eq i32 %i.or, 0
  br i1 %.not112.5.i, label %._crit_edge101.split.us.5.i, label %.preheader.lr.ph.us.5.i

.preheader.lr.ph.us.5.i:                          ; preds = %._crit_edge101.split.us.4.i
  %i.os = getelementptr inbounds nuw i8, ptr %i.a, i64 20
  %i.ot = load i32, ptr %i.os, align 4, !tbaa !13 ; 5 uses
  %.not113.5.i = icmp eq i32 %i.ot, 0
  br i1 %.not113.5.i, label %._crit_edge101.split.us.5.i, label %.preheader.lr.ph.split.us.5.i

.preheader.lr.ph.split.us.5.i:                    ; preds = %.preheader.lr.ph.us.5.i
  %i.ou = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  %i.ov = load i64, ptr %i.ou, align 8, !tbaa !8
  %i.ow = getelementptr i8, ptr %i.an, i64 %i.ov  ; 3 uses
  %wide.trip.count134.5.i = zext i32 %i.ot to i64 ; 2 uses
  %xtraiter215 = and i64 %wide.trip.count134.5.i, 1
  %i.ox = icmp eq i32 %i.ot, 1
  %unroll_iter218 = and i64 %wide.trip.count134.5.i, 4294967294
  %lcmp.mod216.not = icmp eq i64 %xtraiter215, 0
  %lcmp.mod217 = trunc i32 %i.ot to i1
  br label %.preheader.us.5.i

.preheader.us.5.i:                                ; preds = %._crit_edge99.us.5.i, %.preheader.lr.ph.split.us.5.i
  %.069100.us.5.i = phi i32 [ 0, %.preheader.lr.ph.split.us.5.i ], [ %i.qc, %._crit_edge99.us.5.i ] ; 3 uses
  %i.oy = mul i32 %.069100.us.5.i, %3             ; 3 uses
  %i.oz = mul i32 %.069100.us.5.i, %i.ot          ; 3 uses
  br i1 %i.ox, label %.lr.ph.us104.5.i.epil.preheader, label %.lr.ph.us104.5.i

.lr.ph.us104.5.i:                                 ; preds = %.preheader.us.5.i, %.lr.ph.us104.5.i
  %indvars.iv131.5.i = phi i64 [ %indvars.iv.next132.5.i.1, %.lr.ph.us104.5.i ], [ 0, %.preheader.us.5.i ] ; 3 uses
  %niter219 = phi i64 [ %niter219.next.1, %.lr.ph.us104.5.i ], [ 0, %.preheader.us.5.i ]
  %i.pa = trunc nuw i64 %indvars.iv131.5.i to i32 ; 2 uses
  %reass.add131 = add i32 %i.oy, %i.pa
  %reass.mul132 = shl i32 %reass.add131, 1
  %i.pb = or disjoint i32 %reass.mul132, 1
  %i.pc = zext i32 %i.pb to i64
  %i.pd = mul nuw nsw i64 %i.pc, %i.hn
  %i.pe = add i32 %i.oz, %i.pa
  %i.pf = zext i32 %i.pe to i64
  %i.pg = mul nuw nsw i64 %i.pf, %i.hn
  %i.ph = getelementptr inbounds nuw i8, ptr %2, i64 %i.pd
  %i.pi = getelementptr i8, ptr %i.ow, i64 %i.pg
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.pi, ptr align 1 %i.ph, i64 %i.hn, i1 false), !tbaa !20
  %i.pj = trunc i64 %indvars.iv131.5.i to i32
  %i.pk = or disjoint i32 %i.pj, 1                ; 2 uses
  %reass.add131.1 = add i32 %i.oy, %i.pk
  %reass.mul132.1 = shl i32 %reass.add131.1, 1
  %i.pl = or disjoint i32 %reass.mul132.1, 1
  %i.pm = zext i32 %i.pl to i64
  %i.pn = mul nuw nsw i64 %i.pm, %i.hn
  %i.po = add i32 %i.oz, %i.pk
  %i.pp = zext i32 %i.po to i64
  %i.pq = mul nuw nsw i64 %i.pp, %i.hn
  %i.pr = getelementptr inbounds nuw i8, ptr %2, i64 %i.pn
  %i.ps = getelementptr i8, ptr %i.ow, i64 %i.pq
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ps, ptr align 1 %i.pr, i64 %i.hn, i1 false), !tbaa !20
  %indvars.iv.next132.5.i.1 = add nuw nsw i64 %indvars.iv131.5.i, 2 ; 2 uses
  %niter219.next.1 = add i64 %niter219, 2         ; 2 uses
  %niter219.ncmp.1 = icmp eq i64 %niter219.next.1, %unroll_iter218
  br i1 %niter219.ncmp.1, label %._crit_edge99.us.5.i.unr-lcssa, label %.lr.ph.us104.5.i, !llvm.loop !634

._crit_edge99.us.5.i.unr-lcssa:                   ; preds = %.lr.ph.us104.5.i
  br i1 %lcmp.mod216.not, label %._crit_edge99.us.5.i, label %.lr.ph.us104.5.i.epil.preheader

.lr.ph.us104.5.i.epil.preheader:                  ; preds = %._crit_edge99.us.5.i.unr-lcssa, %.preheader.us.5.i
  %indvars.iv131.5.i.epil.init = phi i64 [ 0, %.preheader.us.5.i ], [ %indvars.iv.next132.5.i.1, %._crit_edge99.us.5.i.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod217)
  %i.pt = trunc nuw i64 %indvars.iv131.5.i.epil.init to i32 ; 2 uses
  %reass.add131.epil = add i32 %i.oy, %i.pt
  %reass.mul132.epil = shl i32 %reass.add131.epil, 1
  %i.pu = or disjoint i32 %reass.mul132.epil, 1
  %i.pv = zext i32 %i.pu to i64
  %i.pw = mul nuw nsw i64 %i.pv, %i.hn
  %i.px = add i32 %i.oz, %i.pt
  %i.py = zext i32 %i.px to i64
  %i.pz = mul nuw nsw i64 %i.py, %i.hn
  %i.qa = getelementptr inbounds nuw i8, ptr %2, i64 %i.pw
  %i.qb = getelementptr i8, ptr %i.ow, i64 %i.pz
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.qb, ptr align 1 %i.qa, i64 %i.hn, i1 false), !tbaa !20
  br label %._crit_edge99.us.5.i

._crit_edge99.us.5.i:                             ; preds = %._crit_edge99.us.5.i.unr-lcssa, %.lr.ph.us104.5.i.epil.preheader
  %i.qc = add nuw i32 %.069100.us.5.i, 1          ; 2 uses
  %exitcond136.5.not.i = icmp eq i32 %i.qc, %i.or
  br i1 %exitcond136.5.not.i, label %._crit_edge101.split.us.5.i, label %.preheader.us.5.i, !llvm.loop !635

._crit_edge101.split.us.5.i:                      ; preds = %._crit_edge99.us.5.i, %.preheader.lr.ph.us.5.i, %._crit_edge101.split.us.4.i
  %i.qd = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.qe = load i32, ptr %i.qd, align 8, !tbaa !13 ; 2 uses
  %.not112.6.i = icmp eq i32 %i.qe, 0
  br i1 %.not112.6.i, label %_ZL15Adam7_interlacePhPKhjjj.exit, label %.preheader.lr.ph.us.6.i

.preheader.lr.ph.us.6.i:                          ; preds = %._crit_edge101.split.us.5.i
  %i.qf = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.qg = load i32, ptr %i.qf, align 8, !tbaa !13 ; 5 uses
  %.not113.6.i = icmp eq i32 %i.qg, 0
  br i1 %.not113.6.i, label %_ZL15Adam7_interlacePhPKhjjj.exit, label %.preheader.lr.ph.split.us.6.i

.preheader.lr.ph.split.us.6.i:                    ; preds = %.preheader.lr.ph.us.6.i
  %i.qh = getelementptr inbounds nuw i8, ptr %i.e, i64 48
  %i.qi = load i64, ptr %i.qh, align 16, !tbaa !8
  %i.qj = getelementptr i8, ptr %i.an, i64 %i.qi  ; 3 uses
  %wide.trip.count134.6.i = zext i32 %i.qg to i64 ; 2 uses
  %xtraiter220 = and i64 %wide.trip.count134.6.i, 1
  %i.qk = icmp eq i32 %i.qg, 1
  %unroll_iter223 = and i64 %wide.trip.count134.6.i, 4294967294
  %lcmp.mod221.not = icmp eq i64 %xtraiter220, 0
  %lcmp.mod222 = trunc i32 %i.qg to i1
  br label %.preheader.us.6.i

.preheader.us.6.i:                                ; preds = %._crit_edge99.us.6.i, %.preheader.lr.ph.split.us.6.i
  %.069100.us.6.i = phi i32 [ 0, %.preheader.lr.ph.split.us.6.i ], [ %i.rr, %._crit_edge99.us.6.i ] ; 3 uses
  %i.ql = shl i32 %.069100.us.6.i, 1
  %i.qm = or disjoint i32 %i.ql, 1
  %i.qn = mul i32 %i.qm, %3                       ; 3 uses
  %i.qo = mul i32 %.069100.us.6.i, %i.qg          ; 3 uses
  br i1 %i.qk, label %.lr.ph.us104.6.i.epil.preheader, label %.lr.ph.us104.6.i

.lr.ph.us104.6.i:                                 ; preds = %.preheader.us.6.i, %.lr.ph.us104.6.i
  %indvars.iv131.6.i = phi i64 [ %indvars.iv.next132.6.i.1, %.lr.ph.us104.6.i ], [ 0, %.preheader.us.6.i ] ; 3 uses
  %niter224 = phi i64 [ %niter224.next.1, %.lr.ph.us104.6.i ], [ 0, %.preheader.us.6.i ]
  %i.qp = trunc nuw i64 %indvars.iv131.6.i to i32 ; 2 uses
  %i.qq = add i32 %i.qn, %i.qp
  %i.qr = zext i32 %i.qq to i64
  %i.qs = mul nuw nsw i64 %i.qr, %i.hn
  %i.qt = add i32 %i.qo, %i.qp
  %i.qu = zext i32 %i.qt to i64
  %i.qv = mul nuw nsw i64 %i.qu, %i.hn
  %i.qw = getelementptr inbounds nuw i8, ptr %2, i64 %i.qs
  %i.qx = getelementptr i8, ptr %i.qj, i64 %i.qv
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.qx, ptr align 1 %i.qw, i64 %i.hn, i1 false), !tbaa !20
  %i.qy = trunc i64 %indvars.iv131.6.i to i32
  %i.qz = or disjoint i32 %i.qy, 1                ; 2 uses
  %i.ra = add i32 %i.qn, %i.qz
  %i.rb = zext i32 %i.ra to i64
  %i.rc = mul nuw nsw i64 %i.rb, %i.hn
  %i.rd = add i32 %i.qo, %i.qz
  %i.re = zext i32 %i.rd to i64
  %i.rf = mul nuw nsw i64 %i.re, %i.hn
  %i.rg = getelementptr inbounds nuw i8, ptr %2, i64 %i.rc
  %i.rh = getelementptr i8, ptr %i.qj, i64 %i.rf
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.rh, ptr align 1 %i.rg, i64 %i.hn, i1 false), !tbaa !20
  %indvars.iv.next132.6.i.1 = add nuw nsw i64 %indvars.iv131.6.i, 2 ; 2 uses
  %niter224.next.1 = add i64 %niter224, 2         ; 2 uses
  %niter224.ncmp.1 = icmp eq i64 %niter224.next.1, %unroll_iter223
  br i1 %niter224.ncmp.1, label %._crit_edge99.us.6.i.unr-lcssa, label %.lr.ph.us104.6.i, !llvm.loop !634

._crit_edge99.us.6.i.unr-lcssa:                   ; preds = %.lr.ph.us104.6.i
  br i1 %lcmp.mod221.not, label %._crit_edge99.us.6.i, label %.lr.ph.us104.6.i.epil.preheader

.lr.ph.us104.6.i.epil.preheader:                  ; preds = %._crit_edge99.us.6.i.unr-lcssa, %.preheader.us.6.i
  %indvars.iv131.6.i.epil.init = phi i64 [ 0, %.preheader.us.6.i ], [ %indvars.iv.next132.6.i.1, %._crit_edge99.us.6.i.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod222)
  %i.ri = trunc nuw i64 %indvars.iv131.6.i.epil.init to i32 ; 2 uses
  %i.rj = add i32 %i.qn, %i.ri
  %i.rk = zext i32 %i.rj to i64
  %i.rl = mul nuw nsw i64 %i.rk, %i.hn
  %i.rm = add i32 %i.qo, %i.ri
  %i.rn = zext i32 %i.rm to i64
  %i.ro = mul nuw nsw i64 %i.rn, %i.hn
end_hunk_0
begin_hunk_1_@_ZL9writeBitsP16LodePNGBitWriterjm:bb.a
  store ptr %i.p, ptr %i.f, align 8, !tbaa !63
  %.pre41 = load ptr, ptr %0, align 8, !tbaa !111 ; 2 uses
  %.phi.trans.insert42 = getelementptr inbounds nuw i8, ptr %.pre41, i64 8
  %.pre43 = load i64, ptr %.phi.trans.insert42, align 8, !tbaa !68
  br label %bb.e

bb.e:                                             ; preds = %.thread.i.i, %bb.c
  %i.q = phi i64 [ %.pre43, %.thread.i.i ], [ %i.i, %bb.c ]
  %i.r = phi ptr [ %.pre41, %.thread.i.i ], [ %i.f, %bb.c ]
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !63
  %i.t = getelementptr i8, ptr %i.s, i64 %i.q
  %i.u = getelementptr i8, ptr %i.t, i64 -1
  store i8 0, ptr %i.u, align 1, !tbaa !20
  %.pre44 = load i8, ptr %i.b, align 8, !tbaa !114
  %.pre45 = and i8 %.pre44, 7
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.b
  %.pre-phi = phi i8 [ %.pre45, %bb.e ], [ %i.d, %bb.b ]
  %i.v = zext nneg i8 %.pre-phi to i32
  %i.w = shl i32 %1, %i.v
  %i.x = load ptr, ptr %0, align 8, !tbaa !111    ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !63
  %i.z = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !68
  %i.ab = getelementptr i8, ptr %i.y, i64 %i.aa
  %i.ac = getelementptr i8, ptr %i.ab, i64 -1     ; 2 uses
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !20
  %i.ae = trunc i32 %i.w to i8
  %i.af = or i8 %i.ad, %i.ae
  store i8 %i.af, ptr %i.ac, align 1, !tbaa !20
  %i.ag = load i8, ptr %i.b, align 8, !tbaa !114
  %i.ah = add i8 %i.ag, 1
  store i8 %i.ah, ptr %i.b, align 8, !tbaa !114
  br label %_ZL15ucvector_resizeP8ucvectorm.exit

bb.g:                                             ; preds = %.lr.ph, %bb.k
  %i.ai = phi i8 [ %.pre, %.lr.ph ], [ %i.bq, %bb.k ]
  %.036 = phi i64 [ 0, %.lr.ph ], [ %i.br, %bb.k ] ; 2 uses
  %i.aj = and i8 %i.ai, 7                         ; 2 uses
  %i.ak = icmp eq i8 %i.aj, 0
  br i1 %i.ak, label %bb.h, label %bb.k

bb.h:                                             ; preds = %bb.g
  %i.al = load ptr, ptr %0, align 8, !tbaa !111   ; 5 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 8 ; 2 uses
  %i.an = load i64, ptr %i.am, align 8, !tbaa !68
  %i.ao = add i64 %i.an, 1                        ; 4 uses
  store i64 %i.ao, ptr %i.am, align 8, !tbaa !68
  %i.ap = getelementptr inbounds nuw i8, ptr %i.al, i64 16 ; 2 uses
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !69 ; 2 uses
  %i.ar = icmp ugt i64 %i.ao, %i.aq
  br i1 %i.ar, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.as = lshr i64 %i.aq, 1
  %i.at = add i64 %i.as, %i.ao                    ; 2 uses
  %i.au = load ptr, ptr %i.al, align 8, !tbaa !63
  %i.av = tail call noalias noundef ptr @realloc(ptr noundef %i.au, i64 noundef %i.at) #32 ; 2 uses
  %.not.i.i28 = icmp eq ptr %i.av, null
  br i1 %.not.i.i28, label %_ZL15ucvector_resizeP8ucvectorm.exit, label %.thread.i.i29

.thread.i.i29:                                    ; preds = %bb.i
  store i64 %i.at, ptr %i.ap, align 8, !tbaa !69
  store ptr %i.av, ptr %i.al, align 8, !tbaa !63
  %.pre38 = load ptr, ptr %0, align 8, !tbaa !111 ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre38, i64 8
  %.pre39 = load i64, ptr %.phi.trans.insert, align 8, !tbaa !68
  br label %bb.j

bb.j:                                             ; preds = %.thread.i.i29, %bb.h
  %i.aw = phi i64 [ %.pre39, %.thread.i.i29 ], [ %i.ao, %bb.h ]
  %i.ax = phi ptr [ %.pre38, %.thread.i.i29 ], [ %i.al, %bb.h ]
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !63
  %i.az = getelementptr i8, ptr %i.ay, i64 %i.aw
  %i.ba = getelementptr i8, ptr %i.az, i64 -1
  store i8 0, ptr %i.ba, align 1, !tbaa !20
  %.pre40 = load i8, ptr %i.a, align 8, !tbaa !114
  %.pre46 = and i8 %.pre40, 7
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.g
  %.pre-phi47 = phi i8 [ %.pre46, %bb.j ], [ %i.aj, %bb.g ]
  %i.bb = trunc i64 %.036 to i32
  %i.bc = lshr i32 %1, %i.bb
  %i.bd = and i32 %i.bc, 1
  %i.be = zext nneg i8 %.pre-phi47 to i32
  %i.bf = shl nuw nsw i32 %i.bd, %i.be
  %i.bg = load ptr, ptr %0, align 8, !tbaa !111   ; 2 uses
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !63
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  %i.bj = load i64, ptr %i.bi, align 8, !tbaa !68
  %i.bk = getelementptr i8, ptr %i.bh, i64 %i.bj
  %i.bl = getelementptr i8, ptr %i.bk, i64 -1     ; 2 uses
  %i.bm = load i8, ptr %i.bl, align 1, !tbaa !20
  %i.bn = trunc nuw i32 %i.bf to i8
  %i.bo = or i8 %i.bm, %i.bn
  store i8 %i.bo, ptr %i.bl, align 1, !tbaa !20
  %i.bp = load i8, ptr %i.a, align 8, !tbaa !114
  %i.bq = add i8 %i.bp, 1                         ; 2 uses
  store i8 %i.bq, ptr %i.a, align 8, !tbaa !114
  %i.br = add nuw nsw i64 %.036, 1                ; 2 uses
  %.not = icmp eq i64 %i.br, %2
  br i1 %.not, label %_ZL15ucvector_resizeP8ucvectorm.exit, label %bb.g, !llvm.loop !855

_ZL15ucvector_resizeP8ucvectorm.exit:             ; preds = %bb.k, %bb.i, %bb.a, %bb.d, %bb.f
  ret void
}

; Function Attrs: mustprogress nounwind memory(readwrite, target_mem: none) uwtable
define internal fastcc noundef range(i32 0, 91) i32 @_ZL10encodeLZ77P8uivectorP4HashPKhmmjjjj(ptr nofree noundef nonnull captures(none) %0, ptr nofree noundef nonnull readonly captures(none) %1, ptr noundef %2, i64 noundef %3, i64 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8) unnamed_addr #3 {
bb.a:
  %i.a = ptrtoaddr ptr %2 to i64
  %i.b = icmp ugt i32 %5, 8191                    ; 2 uses
  %i.c = lshr i32 %5, 3
  %i.d = select i1 %i.b, i32 %5, i32 %i.c         ; 2 uses
  %i.e = select i1 %i.b, i32 258, i32 64
  %i.f = add i32 %5, -32769
  %or.cond = icmp ult i32 %i.f, -32768
  br i1 %or.cond, label %.thread283, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %5, -1
  %i.h = tail call range(i32 0, 17) i32 @llvm.ctpop.i32(i32 %5)
  %.not = icmp samesign ult i32 %i.h, 2
  br i1 %.not, label %bb.c, label %.thread283

bb.c:                                             ; preds = %bb.b
  %spec.store.select = tail call i32 @llvm.umin.i32(i32 %7, i32 258)
  %i.i = icmp ult i64 %3, %4
  br i1 %i.i, label %.lr.ph333, label %.thread283

.lr.ph333:                                        ; preds = %bb.c
  %i.j = zext nneg i32 %i.g to i64                ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 %4 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 3 uses
  %.not226298.not = icmp eq i32 %i.d, 0
  %i.q = zext nneg i32 %5 to i64
  %.not233 = icmp eq i32 %8, 0
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 8 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 8 uses
  %i.t = add i64 %4, -2
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph333, %.loopexit
  %.0187331 = phi i32 [ 0, %.lr.ph333 ], [ %.1188, %.loopexit ] ; 3 uses
  %.0189330 = phi i32 [ 0, %.lr.ph333 ], [ %.1190, %.loopexit ] ; 4 uses
  %.0191329 = phi i32 [ 0, %.lr.ph333 ], [ %.2, %.loopexit ] ; 2 uses
  %.0200328 = phi i32 [ 0, %.lr.ph333 ], [ %.5, %.loopexit ] ; 4 uses
  %.0208327 = phi i64 [ %3, %.lr.ph333 ], [ %i.mx, %.loopexit ] ; 20 uses
  %i.u = and i64 %.0208327, %i.j                  ; 8 uses
  %i.v = add i64 %.0208327, 2                     ; 2 uses
  %i.w = icmp ult i64 %i.v, %4
  br i1 %i.w, label %bb.e, label %.lr.ph.i

bb.e:                                             ; preds = %bb.d
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 %.0208327 ; 2 uses
  %i.y = load i8, ptr %i.x, align 1, !tbaa !20
  %i.z = zext i8 %i.y to i32
  %i.aa = getelementptr i8, ptr %i.x, i64 1
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !20
  %i.ac = zext i8 %i.ab to i32
  %i.ad = shl nuw nsw i32 %i.ac, 4
  %i.ae = xor i32 %i.ad, %i.z
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 %i.v
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !20
  %i.ah = zext i8 %i.ag to i32
  %i.ai = shl nuw nsw i32 %i.ah, 8
  %i.aj = xor i32 %i.ae, %i.ai
  br label %_ZL7getHashPKhmm.exit

.lr.ph.i:                                         ; preds = %bb.d
  %i.ak = sub nuw i64 %4, %.0208327               ; 2 uses
  %i.al = getelementptr i8, ptr %2, i64 %.0208327 ; 5 uses
  %xtraiter = and i64 %i.ak, 3                    ; 3 uses
  %i.am = sub i64 %.0208327, %4
  %i.an = icmp ugt i64 %i.am, -4
  br i1 %i.an, label %.epil.preheader, label %.lr.ph.i.new

.lr.ph.i.new:                                     ; preds = %.lr.ph.i
  %unroll_iter = and i64 %i.ak, -4
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %.lr.ph.i.new
  %.02535.i = phi i64 [ 0, %.lr.ph.i.new ], [ %i.bn, %bb.f ] ; 5 uses
  %.02634.i = phi i32 [ 0, %.lr.ph.i.new ], [ %i.bm, %bb.f ]
  %niter = phi i64 [ 0, %.lr.ph.i.new ], [ %niter.next.3, %bb.f ]
  %i.ao = getelementptr i8, ptr %i.al, i64 %.02535.i
  %i.ap = load i8, ptr %i.ao, align 1, !tbaa !20
  %i.aq = zext i8 %i.ap to i32
  %i.ar = xor i32 %.02634.i, %i.aq
  %i.as = or disjoint i64 %.02535.i, 1            ; 2 uses
  %i.at = getelementptr i8, ptr %i.al, i64 %i.as
  %i.au = load i8, ptr %i.at, align 1, !tbaa !20
  %i.av = zext i8 %i.au to i32
  %.025.tr.i.1 = trunc i64 %i.as to i32
  %i.aw = shl i32 %.025.tr.i.1, 3
  %i.ax = shl i32 %i.av, %i.aw
  %i.ay = xor i32 %i.ax, %i.ar
  %i.az = or disjoint i64 %.02535.i, 2            ; 2 uses
  %i.ba = getelementptr i8, ptr %i.al, i64 %i.az
  %i.bb = load i8, ptr %i.ba, align 1, !tbaa !20
  %i.bc = zext i8 %i.bb to i32
  %.025.tr.i.2 = trunc i64 %i.az to i32
  %i.bd = shl i32 %.025.tr.i.2, 3
  %i.be = shl i32 %i.bc, %i.bd
  %i.bf = xor i32 %i.be, %i.ay
  %i.bg = or disjoint i64 %.02535.i, 3            ; 2 uses
  %i.bh = getelementptr i8, ptr %i.al, i64 %i.bg
  %i.bi = load i8, ptr %i.bh, align 1, !tbaa !20
  %i.bj = zext i8 %i.bi to i32
  %.025.tr.i.3 = trunc i64 %i.bg to i32
  %i.bk = shl i32 %.025.tr.i.3, 3
  %i.bl = shl i32 %i.bj, %i.bk
  %i.bm = xor i32 %i.bl, %i.bf                    ; 3 uses
  %i.bn = add nuw i64 %.02535.i, 4                ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %_ZL7getHashPKhmm.exit.loopexit.unr-lcssa, label %bb.f, !llvm.loop !856

_ZL7getHashPKhmm.exit.loopexit.unr-lcssa:         ; preds = %bb.f
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZL7getHashPKhmm.exit, label %.epil.preheader

.epil.preheader:                                  ; preds = %_ZL7getHashPKhmm.exit.loopexit.unr-lcssa, %.lr.ph.i
  %.02535.i.epil.init = phi i64 [ 0, %.lr.ph.i ], [ %i.bn, %_ZL7getHashPKhmm.exit.loopexit.unr-lcssa ]
  %.02634.i.epil.init = phi i32 [ 0, %.lr.ph.i ], [ %i.bm, %_ZL7getHashPKhmm.exit.loopexit.unr-lcssa ]
  %lcmp.mod396 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod396)
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %.epil.preheader
  %.02535.i.epil = phi i64 [ %.02535.i.epil.init, %.epil.preheader ], [ %i.bu, %bb.g ] ; 3 uses
  %.02634.i.epil = phi i32 [ %.02634.i.epil.init, %.epil.preheader ], [ %i.bt, %bb.g ]
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.g ]
  %i.bo = getelementptr i8, ptr %i.al, i64 %.02535.i.epil
  %i.bp = load i8, ptr %i.bo, align 1, !tbaa !20
  %i.bq = zext i8 %i.bp to i32
  %.025.tr.i.epil = trunc i64 %.02535.i.epil to i32
  %i.br = shl i32 %.025.tr.i.epil, 3
  %i.bs = shl i32 %i.bq, %i.br
  %i.bt = xor i32 %i.bs, %.02634.i.epil           ; 2 uses
  %i.bu = add nuw i64 %.02535.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_ZL7getHashPKhmm.exit, label %bb.g, !llvm.loop !857

_ZL7getHashPKhmm.exit:                            ; preds = %_ZL7getHashPKhmm.exit.loopexit.unr-lcssa, %bb.g, %bb.e
  %.2.i = phi i32 [ %i.aj, %bb.e ], [ %i.bm, %_ZL7getHashPKhmm.exit.loopexit.unr-lcssa ], [ %i.bt, %bb.g ]
  %i.bv = and i32 %.2.i, 65535                    ; 4 uses
  %i.bw = icmp eq i32 %i.bv, 0
  br i1 %i.bw, label %bb.h, label %bb.n

bb.h:                                             ; preds = %_ZL7getHashPKhmm.exit
  %i.bx = icmp eq i32 %.0200328, 0
  br i1 %i.bx, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.by = getelementptr inbounds nuw i8, ptr %2, i64 %.0208327 ; 5 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 258
  %i.ca = add nuw nsw i64 %.0208327, 258
  %i.cb = icmp samesign ugt i64 %i.ca, %4
  %spec.select.i = select i1 %i.cb, ptr %i.k, ptr %i.bz ; 3 uses
  %.not17.i = icmp eq ptr %i.by, %spec.select.i
  br i1 %.not17.i, label %_ZL10countZerosPKhmm.exit, label %.lr.ph.i241

.lr.ph.i241:                                      ; preds = %bb.i, %bb.j
  %.01418.i = phi ptr [ %i.ce, %bb.j ], [ %i.by, %bb.i ] ; 3 uses
  %i.cc = load i8, ptr %.01418.i, align 1, !tbaa !20
  %i.cd = icmp eq i8 %i.cc, 0
  br i1 %i.cd, label %bb.j, label %_ZL10countZerosPKhmm.exit

bb.j:                                             ; preds = %.lr.ph.i241
  %i.ce = getelementptr inbounds nuw i8, ptr %.01418.i, i64 1 ; 2 uses
  %.not.i242 = icmp eq ptr %i.ce, %spec.select.i
  br i1 %.not.i242, label %_ZL10countZerosPKhmm.exit, label %.lr.ph.i241, !llvm.loop !858

_ZL10countZerosPKhmm.exit:                        ; preds = %.lr.ph.i241, %bb.j, %bb.i
  %.014.lcssa.i = phi ptr [ %i.by, %bb.i ], [ %.01418.i, %.lr.ph.i241 ], [ %spec.select.i, %bb.j ]
  %i.cf = ptrtoint ptr %.014.lcssa.i to i64
  %i.cg = ptrtoint ptr %i.by to i64
  %i.ch = sub i64 %i.cf, %i.cg
  %i.ci = trunc i64 %i.ch to i32
  br label %bb.n

bb.k:                                             ; preds = %bb.h
  %i.cj = zext i32 %.0200328 to i64
  %i.ck = add i64 %.0208327, %i.cj                ; 2 uses
  %i.cl = icmp ugt i64 %i.ck, %4
  br i1 %i.cl, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.cm = getelementptr i8, ptr %2, i64 %i.ck
  %i.cn = getelementptr i8, ptr %i.cm, i64 -1
  %i.co = load i8, ptr %i.cn, align 1, !tbaa !20
  %.not225 = icmp eq i8 %i.co, 0
  br i1 %.not225, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.cp = add i32 %.0200328, -1
  br label %bb.n

bb.n:                                             ; preds = %_ZL7getHashPKhmm.exit, %_ZL10countZerosPKhmm.exit, %bb.m, %bb.l
  %.1201 = phi i32 [ %i.ci, %_ZL10countZerosPKhmm.exit ], [ %i.cp, %bb.m ], [ %.0200328, %bb.l ], [ 0, %_ZL7getHashPKhmm.exit ] ; 10 uses
  %i.cq = trunc i32 %.1201 to i16
  %i.cr = load ptr, ptr %i.l, align 8, !tbaa !125 ; 2 uses
  %i.cs = getelementptr inbounds nuw [4 x i8], ptr %i.cr, i64 %i.u
  store i32 %i.bv, ptr %i.cs, align 4, !tbaa !13
  %i.ct = load ptr, ptr %1, align 8, !tbaa !123
  %i.cu = zext nneg i32 %i.bv to i64
  %i.cv = getelementptr inbounds nuw [4 x i8], ptr %i.ct, i64 %i.cu ; 3 uses
  %i.cw = load i32, ptr %i.cv, align 4, !tbaa !13 ; 2 uses
  %.not.i243 = icmp eq i32 %i.cw, -1
  br i1 %.not.i243, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.cx = trunc i32 %i.cw to i16
  %i.cy = load ptr, ptr %i.m, align 8, !tbaa !126
  %i.cz = getelementptr inbounds nuw [2 x i8], ptr %i.cy, i64 %i.u
  store i16 %i.cx, ptr %i.cz, align 2, !tbaa !94
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.da = trunc nuw nsw i64 %i.u to i32           ; 2 uses
  store i32 %i.da, ptr %i.cv, align 4, !tbaa !13
  %i.db = load ptr, ptr %i.n, align 8, !tbaa !127 ; 3 uses
  %i.dc = getelementptr inbounds nuw [2 x i8], ptr %i.db, i64 %i.u
  store i16 %i.cq, ptr %i.dc, align 2, !tbaa !94
  %i.dd = load ptr, ptr %i.o, align 8, !tbaa !128 ; 2 uses
  %.mask = and i32 %.1201, 65535
  %i.de = zext nneg i32 %.mask to i64
  %i.df = getelementptr inbounds nuw [4 x i8], ptr %i.dd, i64 %i.de ; 2 uses
  %i.dg = load i32, ptr %i.df, align 4, !tbaa !13 ; 2 uses
  %.not24.i = icmp eq i32 %i.dg, -1
  br i1 %.not24.i, label %_ZL15updateHashChainP4Hashmjt.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.dh = trunc i32 %i.dg to i16
  %i.di = load ptr, ptr %i.p, align 8, !tbaa !129
  %i.dj = getelementptr inbounds nuw [2 x i8], ptr %i.di, i64 %i.u
  store i16 %i.dh, ptr %i.dj, align 2, !tbaa !94
  br label %_ZL15updateHashChainP4Hashmjt.exit

_ZL15updateHashChainP4Hashmjt.exit:               ; preds = %bb.p, %bb.q
  store i32 %i.da, ptr %i.df, align 4, !tbaa !13
  %i.dk = load ptr, ptr %i.m, align 8, !tbaa !126 ; 2 uses
  %i.dl = add i64 %.0208327, 258
  %i.dm = tail call i64 @llvm.umin.i64(i64 %4, i64 %i.dl) ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %2, i64 %i.dm ; 3 uses
  br i1 %.not226298.not, label %._crit_edge, label %.lr.ph303

.lr.ph303:                                        ; preds = %_ZL15updateHashChainP4Hashmjt.exit
  %i.do = getelementptr inbounds nuw [2 x i8], ptr %i.dk, i64 %i.u
  %i.dp = load i16, ptr %i.do, align 2, !tbaa !94
  %i.dq = getelementptr inbounds nuw i8, ptr %2, i64 %.0208327 ; 3 uses
  %i.dr = icmp ugt i32 %.1201, 2                  ; 2 uses
  %i.ds = ptrtoint ptr %i.dq to i64
  br label %bb.r

bb.r:                                             ; preds = %.lr.ph303, %bb.ac
  %i.dt = phi i32 [ 1, %.lr.ph303 ], [ %i.fh, %bb.ac ] ; 2 uses
  %.0181.in302 = phi i16 [ %i.dp, %.lr.ph303 ], [ %.1.in, %bb.ac ] ; 2 uses
  %.0186301 = phi i32 [ 0, %.lr.ph303 ], [ %i.dy, %bb.ac ]
  %.0193300 = phi i32 [ 0, %.lr.ph303 ], [ %.1194, %bb.ac ] ; 4 uses
  %.0196299 = phi i32 [ 0, %.lr.ph303 ], [ %.1197, %bb.ac ] ; 3 uses
  %i.du = zext i16 %.0181.in302 to i64            ; 5 uses
  %.not227 = icmp samesign ult i64 %i.u, %i.du
  %i.dv = sub nsw i64 %i.u, %i.du
  %i.dw = select i1 %.not227, i64 %i.q, i64 0
  %i.dx = add nsw i64 %i.dw, %i.dv                ; 3 uses
  %i.dy = trunc nsw i64 %i.dx to i32              ; 4 uses
  %i.dz = icmp ugt i32 %.0186301, %i.dy
  br i1 %i.dz, label %._crit_edge, label %bb.s

bb.s:                                             ; preds = %bb.r
  %.not228 = icmp eq i64 %i.dx, 0
  br i1 %.not228, label %bb.y, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ea = and i64 %i.dx, 4294967295
  %i.eb = sub i64 %.0208327, %i.ea
  %i.ec = getelementptr inbounds nuw i8, ptr %2, i64 %i.eb ; 2 uses
  br i1 %i.dr, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.ed = getelementptr inbounds nuw [2 x i8], ptr %i.db, i64 %i.du
  %i.ee = load i16, ptr %i.ed, align 2, !tbaa !94
  %i.ef = zext i16 %i.ee to i32
  %spec.select = tail call i32 @llvm.umin.i32(i32 %.1201, i32 %i.ef)
  %i.eg = zext nneg i32 %spec.select to i64       ; 2 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %i.ec, i64 %i.eg
  %i.ei = getelementptr inbounds nuw i8, ptr %i.dq, i64 %i.eg
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %.0184 = phi ptr [ %i.ei, %bb.u ], [ %i.dq, %bb.t ] ; 4 uses
  %.0182 = phi ptr [ %i.eh, %bb.u ], [ %i.ec, %bb.t ]
  %.not229293 = icmp eq ptr %.0184, %i.dn
  br i1 %.not229293, label %.critedge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.v
  %.0184347 = ptrtoaddr ptr %.0184 to i64
  %scevgep = getelementptr i8, ptr %.0184, i64 %i.a
  %scevgep346 = getelementptr i8, ptr %scevgep, i64 %i.dm
  %i.ej = sub i64 0, %.0184347
  %scevgep348 = getelementptr i8, ptr %scevgep346, i64 %i.ej
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.w
  %.1183295 = phi ptr [ %i.en, %bb.w ], [ %.0182, %.lr.ph.preheader ] ; 2 uses
  %.1185294 = phi ptr [ %i.eo, %bb.w ], [ %.0184, %.lr.ph.preheader ] ; 3 uses
  %i.ek = load i8, ptr %.1183295, align 1, !tbaa !20
  %i.el = load i8, ptr %.1185294, align 1, !tbaa !20
end_hunk_1
begin_hunk_2_@_ZL10encodeLZ77P8uivectorP4HashPKhmmjjjj:bb.a
  %i.gz = getelementptr inbounds nuw i8, ptr %2, i64 %.1209
  %i.ha = load i8, ptr %i.gz, align 1, !tbaa !20
  %i.hb = load i64, ptr %i.r, align 8, !tbaa !154
  %i.hc = add i64 %i.hb, 1                        ; 3 uses
  %i.hd = shl i64 %i.hc, 2                        ; 2 uses
  %i.he = load i64, ptr %i.s, align 8, !tbaa !155 ; 2 uses
  %i.hf = icmp ugt i64 %i.hd, %i.he
  %.pre.i248 = load ptr, ptr %0, align 8, !tbaa !141 ; 2 uses
  br i1 %i.hf, label %bb.at, label %_ZL18uivector_push_backP8uivectorj.exit251

bb.at:                                            ; preds = %bb.as
  %i.hg = lshr i64 %i.he, 1
  %i.hh = add i64 %i.hg, %i.hd                    ; 2 uses
  %i.hi = tail call noalias noundef ptr @realloc(ptr noundef %.pre.i248, i64 noundef %i.hh) #32 ; 3 uses
  %.not.not.i.i250 = icmp eq ptr %i.hi, null
  br i1 %.not.not.i.i250, label %.thread283, label %bb.au

bb.au:                                            ; preds = %bb.at
  store i64 %i.hh, ptr %i.s, align 8, !tbaa !155
  store ptr %i.hi, ptr %0, align 8, !tbaa !141
  br label %_ZL18uivector_push_backP8uivectorj.exit251

_ZL18uivector_push_backP8uivectorj.exit251:       ; preds = %bb.as, %bb.au
  %i.hj = phi ptr [ %i.hi, %bb.au ], [ %.pre.i248, %bb.as ]
  store i64 %i.hc, ptr %i.r, align 8, !tbaa !154
  %i.hk = getelementptr [4 x i8], ptr %i.hj, i64 %i.hc
  br label %.loopexit.sink.split

.preheader:                                       ; preds = %bb.ar, %.preheader
  %.021.i.i = phi i64 [ %.1.i.i, %.preheader ], [ 28, %bb.ar ] ; 2 uses
  %.01620.i.i = phi i64 [ %.117.i.i, %.preheader ], [ 1, %bb.ar ] ; 2 uses
  %i.hl = add i64 %.01620.i.i, %.021.i.i
  %i.hm = lshr i64 %i.hl, 1                       ; 3 uses
  %i.hn = getelementptr inbounds nuw [4 x i8], ptr @_ZL10LENGTHBASE, i64 %i.hm
  %i.ho = load i32, ptr %i.hn, align 4, !tbaa !13
  %.not19.i.i = icmp ugt i32 %.3, %i.ho           ; 2 uses
  %i.hp = add nsw i64 %i.hm, -1
  %i.hq = add nuw i64 %i.hm, 1
  %.117.i.i = select i1 %.not19.i.i, i64 %i.hq, i64 %.01620.i.i ; 6 uses
  %.1.i.i = select i1 %.not19.i.i, i64 %.021.i.i, i64 %i.hp ; 2 uses
  %.not.i.i = icmp ugt i64 %.117.i.i, %.1.i.i
  br i1 %.not.i.i, label %bb.av, label %.preheader, !llvm.loop !861

bb.av:                                            ; preds = %.preheader
  %.not18.i.i = icmp ult i64 %.117.i.i, 29
  br i1 %.not18.i.i, label %bb.aw, label %bb.ax

bb.aw:                                            ; preds = %bb.av
  %i.hr = getelementptr inbounds nuw [4 x i8], ptr @_ZL10LENGTHBASE, i64 %.117.i.i
  %i.hs = load i32, ptr %i.hr, align 4, !tbaa !13
  %i.ht = icmp ult i32 %.3, %i.hs
  br i1 %i.ht, label %bb.ax, label %_ZL15searchCodeIndexPKjmm.exit.i

bb.ax:                                            ; preds = %bb.aw, %bb.av
  %i.hu = add i64 %.117.i.i, -1
  br label %_ZL15searchCodeIndexPKjmm.exit.i

_ZL15searchCodeIndexPKjmm.exit.i:                 ; preds = %bb.ax, %bb.aw
  %.2.i.i = phi i64 [ %i.hu, %bb.ax ], [ %.117.i.i, %bb.aw ] ; 2 uses
  %i.hv = and i64 %.2.i.i, 4294967295
  %i.hw = getelementptr inbounds nuw [4 x i8], ptr @_ZL10LENGTHBASE, i64 %i.hv
  %i.hx = load i32, ptr %i.hw, align 4, !tbaa !13
  br label %bb.ay

bb.ay:                                            ; preds = %bb.ay, %_ZL15searchCodeIndexPKjmm.exit.i
  %.021.i21.i = phi i64 [ 29, %_ZL15searchCodeIndexPKjmm.exit.i ], [ %.1.i25.i, %bb.ay ] ; 2 uses
  %.01620.i22.i = phi i64 [ 1, %_ZL15searchCodeIndexPKjmm.exit.i ], [ %.117.i24.i, %bb.ay ] ; 2 uses
  %i.hy = add i64 %.01620.i22.i, %.021.i21.i
  %i.hz = lshr i64 %i.hy, 1                       ; 3 uses
  %i.ia = getelementptr inbounds nuw [4 x i8], ptr @_ZL12DISTANCEBASE, i64 %i.hz
  %i.ib = load i32, ptr %i.ia, align 4, !tbaa !13
  %.not19.i23.i = icmp ugt i32 %.3199, %i.ib      ; 2 uses
  %i.ic = add nsw i64 %i.hz, -1
  %i.id = add nuw i64 %i.hz, 1
  %.117.i24.i = select i1 %.not19.i23.i, i64 %i.id, i64 %.01620.i22.i ; 6 uses
  %.1.i25.i = select i1 %.not19.i23.i, i64 %.021.i21.i, i64 %i.ic ; 2 uses
  %.not.i26.i = icmp ugt i64 %.117.i24.i, %.1.i25.i
  br i1 %.not.i26.i, label %bb.az, label %bb.ay, !llvm.loop !861

bb.az:                                            ; preds = %bb.ay
  %.not18.i27.i = icmp ult i64 %.117.i24.i, 30
  br i1 %.not18.i27.i, label %bb.ba, label %bb.bb

bb.ba:                                            ; preds = %bb.az
  %i.ie = getelementptr inbounds nuw [4 x i8], ptr @_ZL12DISTANCEBASE, i64 %.117.i24.i
  %i.if = load i32, ptr %i.ie, align 4, !tbaa !13
  %i.ig = icmp ult i32 %.3199, %i.if
  br i1 %i.ig, label %bb.bb, label %_ZL15searchCodeIndexPKjmm.exit29.i

bb.bb:                                            ; preds = %bb.ba, %bb.az
  %i.ih = add i64 %.117.i24.i, -1
  br label %_ZL15searchCodeIndexPKjmm.exit29.i

_ZL15searchCodeIndexPKjmm.exit29.i:               ; preds = %bb.bb, %bb.ba
  %.2.i28.i = phi i64 [ %i.ih, %bb.bb ], [ %.117.i24.i, %bb.ba ] ; 2 uses
  %i.ii = and i64 %.2.i28.i, 4294967295
  %i.ij = getelementptr inbounds nuw [4 x i8], ptr @_ZL12DISTANCEBASE, i64 %i.ii
  %i.ik = load i32, ptr %i.ij, align 4, !tbaa !13
  %i.il = load i64, ptr %i.r, align 8, !tbaa !154 ; 2 uses
  %i.im = add i64 %i.il, 4                        ; 2 uses
  %i.in = shl i64 %i.im, 2                        ; 2 uses
  %i.io = load i64, ptr %i.s, align 8, !tbaa !155 ; 2 uses
  %i.ip = icmp ugt i64 %i.in, %i.io
  %.pre.i252 = load ptr, ptr %0, align 8, !tbaa !141 ; 2 uses
  br i1 %i.ip, label %bb.bc, label %bb.be

bb.bc:                                            ; preds = %_ZL15searchCodeIndexPKjmm.exit29.i
  %i.iq = lshr i64 %i.io, 1
  %i.ir = add i64 %i.iq, %i.in                    ; 2 uses
  %i.is = tail call noalias noundef ptr @realloc(ptr noundef %.pre.i252, i64 noundef %i.ir) #32 ; 3 uses
  %.not.not.i.i253 = icmp eq ptr %i.is, null
  br i1 %.not.not.i.i253, label %.lr.ph324, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  store i64 %i.ir, ptr %i.s, align 8, !tbaa !155
  store ptr %i.is, ptr %0, align 8, !tbaa !141
  br label %bb.be

bb.be:                                            ; preds = %bb.bd, %_ZL15searchCodeIndexPKjmm.exit29.i
  %i.it = phi ptr [ %i.is, %bb.bd ], [ %.pre.i252, %_ZL15searchCodeIndexPKjmm.exit29.i ]
  store i64 %i.im, ptr %i.r, align 8, !tbaa !154
  %i.iu = sub i32 %.3199, %i.ik
  %i.iv = trunc i64 %.2.i28.i to i32
  %i.iw = sub i32 %.3, %i.hx
  %i.ix = trunc i64 %.2.i.i to i32
  %i.iy = add i32 %i.ix, 257
  %i.iz = getelementptr inbounds nuw [4 x i8], ptr %i.it, i64 %i.il ; 4 uses
  store i32 %i.iy, ptr %i.iz, align 4, !tbaa !13
  %i.ja = getelementptr i8, ptr %i.iz, i64 4
  store i32 %i.iw, ptr %i.ja, align 4, !tbaa !13
  %i.jb = getelementptr i8, ptr %i.iz, i64 8
  store i32 %i.iv, ptr %i.jb, align 4, !tbaa !13
  %i.jc = getelementptr i8, ptr %i.iz, i64 12
  store i32 %i.iu, ptr %i.jc, align 4, !tbaa !13
  br label %.lr.ph324

.lr.ph324:                                        ; preds = %bb.be, %bb.bc
  %i.jd = load ptr, ptr %i.l, align 8, !tbaa !125
  %i.je = load ptr, ptr %1, align 8, !tbaa !123
  %i.jf = load ptr, ptr %i.n, align 8, !tbaa !127
  %i.jg = load ptr, ptr %i.o, align 8, !tbaa !128
  br label %bb.bf

bb.bf:                                            ; preds = %.lr.ph324, %_ZL15updateHashChainP4Hashmjt.exit273
  %indvar = phi i64 [ 0, %.lr.ph324 ], [ %indvar.next, %_ZL15updateHashChainP4Hashmjt.exit273 ] ; 2 uses
  %.2202323 = phi i32 [ %.1201, %.lr.ph324 ], [ %.3203, %_ZL15updateHashChainP4Hashmjt.exit273 ] ; 4 uses
  %.0207322 = phi i32 [ 1, %.lr.ph324 ], [ %i.mv, %_ZL15updateHashChainP4Hashmjt.exit273 ]
  %.2210321 = phi i64 [ %.1209, %.lr.ph324 ], [ %i.jj, %_ZL15updateHashChainP4Hashmjt.exit273 ] ; 4 uses
  %i.jh = add i64 %.1209, %indvar
  %i.ji = sub i64 %i.t, %i.jh
  %i.jj = add i64 %.2210321, 1                    ; 9 uses
  %i.jk = and i64 %i.jj, %i.j                     ; 5 uses
  %i.jl = add i64 %.2210321, 3                    ; 2 uses
  %i.jm = icmp ult i64 %i.jl, %4
  br i1 %i.jm, label %bb.bg, label %bb.bh

bb.bg:                                            ; preds = %bb.bf
  %i.jn = getelementptr inbounds nuw i8, ptr %2, i64 %i.jj ; 2 uses
  %i.jo = load i8, ptr %i.jn, align 1, !tbaa !20
  %i.jp = zext i8 %i.jo to i32
  %i.jq = getelementptr i8, ptr %i.jn, i64 1
  %i.jr = load i8, ptr %i.jq, align 1, !tbaa !20
  %i.js = zext i8 %i.jr to i32
  %i.jt = shl nuw nsw i32 %i.js, 4
  %i.ju = xor i32 %i.jt, %i.jp
  %i.jv = getelementptr inbounds nuw i8, ptr %2, i64 %i.jl
  %i.jw = load i8, ptr %i.jv, align 1, !tbaa !20
  %i.jx = zext i8 %i.jw to i32
  %i.jy = shl nuw nsw i32 %i.jx, 8
  %i.jz = xor i32 %i.ju, %i.jy
  br label %_ZL7getHashPKhmm.exit263

bb.bh:                                            ; preds = %bb.bf
  %.not.i254 = icmp ult i64 %i.jj, %4
  br i1 %.not.i254, label %.lr.ph.i256, label %_ZL7getHashPKhmm.exit263.thread

.lr.ph.i256:                                      ; preds = %bb.bh
  %i.ka = sub nuw i64 %4, %i.jj                   ; 2 uses
  %i.kb = getelementptr i8, ptr %2, i64 %i.jj     ; 5 uses
  %xtraiter398 = and i64 %i.ka, 3                 ; 3 uses
  %i.kc = icmp ult i64 %i.ji, 3
  br i1 %i.kc, label %.epil.preheader397, label %.lr.ph.i256.new

.lr.ph.i256.new:                                  ; preds = %.lr.ph.i256
  %unroll_iter403 = and i64 %i.ka, -4
  br label %bb.bi

bb.bi:                                            ; preds = %bb.bi, %.lr.ph.i256.new
  %.02535.i257 = phi i64 [ 0, %.lr.ph.i256.new ], [ %i.lc, %bb.bi ] ; 5 uses
  %.02634.i258 = phi i32 [ 0, %.lr.ph.i256.new ], [ %i.lb, %bb.bi ]
  %niter404 = phi i64 [ 0, %.lr.ph.i256.new ], [ %niter404.next.3, %bb.bi ]
  %i.kd = getelementptr i8, ptr %i.kb, i64 %.02535.i257
  %i.ke = load i8, ptr %i.kd, align 1, !tbaa !20
  %i.kf = zext i8 %i.ke to i32
  %i.kg = xor i32 %.02634.i258, %i.kf
  %i.kh = or disjoint i64 %.02535.i257, 1         ; 2 uses
  %i.ki = getelementptr i8, ptr %i.kb, i64 %i.kh
  %i.kj = load i8, ptr %i.ki, align 1, !tbaa !20
  %i.kk = zext i8 %i.kj to i32
  %.025.tr.i259.1 = trunc i64 %i.kh to i32
  %i.kl = shl i32 %.025.tr.i259.1, 3
  %i.km = shl i32 %i.kk, %i.kl
  %i.kn = xor i32 %i.km, %i.kg
  %i.ko = or disjoint i64 %.02535.i257, 2         ; 2 uses
  %i.kp = getelementptr i8, ptr %i.kb, i64 %i.ko
  %i.kq = load i8, ptr %i.kp, align 1, !tbaa !20
  %i.kr = zext i8 %i.kq to i32
  %.025.tr.i259.2 = trunc i64 %i.ko to i32
  %i.ks = shl i32 %.025.tr.i259.2, 3
  %i.kt = shl i32 %i.kr, %i.ks
  %i.ku = xor i32 %i.kt, %i.kn
  %i.kv = or disjoint i64 %.02535.i257, 3         ; 2 uses
  %i.kw = getelementptr i8, ptr %i.kb, i64 %i.kv
  %i.kx = load i8, ptr %i.kw, align 1, !tbaa !20
  %i.ky = zext i8 %i.kx to i32
  %.025.tr.i259.3 = trunc i64 %i.kv to i32
  %i.kz = shl i32 %.025.tr.i259.3, 3
  %i.la = shl i32 %i.ky, %i.kz
  %i.lb = xor i32 %i.la, %i.ku                    ; 3 uses
  %i.lc = add nuw i64 %.02535.i257, 4             ; 2 uses
  %niter404.next.3 = add i64 %niter404, 4         ; 2 uses
  %niter404.ncmp.3 = icmp eq i64 %niter404.next.3, %unroll_iter403
  br i1 %niter404.ncmp.3, label %_ZL7getHashPKhmm.exit263.loopexit.unr-lcssa, label %bb.bi, !llvm.loop !856

_ZL7getHashPKhmm.exit263.loopexit.unr-lcssa:      ; preds = %bb.bi
  %lcmp.mod400.not = icmp eq i64 %xtraiter398, 0
  br i1 %lcmp.mod400.not, label %_ZL7getHashPKhmm.exit263, label %.epil.preheader397

.epil.preheader397:                               ; preds = %_ZL7getHashPKhmm.exit263.loopexit.unr-lcssa, %.lr.ph.i256
  %.02535.i257.epil.init = phi i64 [ 0, %.lr.ph.i256 ], [ %i.lc, %_ZL7getHashPKhmm.exit263.loopexit.unr-lcssa ]
  %.02634.i258.epil.init = phi i32 [ 0, %.lr.ph.i256 ], [ %i.lb, %_ZL7getHashPKhmm.exit263.loopexit.unr-lcssa ]
  %lcmp.mod402 = icmp ne i64 %xtraiter398, 0
  tail call void @llvm.assume(i1 %lcmp.mod402)
  br label %bb.bj

bb.bj:                                            ; preds = %bb.bj, %.epil.preheader397
  %.02535.i257.epil = phi i64 [ %.02535.i257.epil.init, %.epil.preheader397 ], [ %i.lj, %bb.bj ] ; 3 uses
  %.02634.i258.epil = phi i32 [ %.02634.i258.epil.init, %.epil.preheader397 ], [ %i.li, %bb.bj ]
  %epil.iter399 = phi i64 [ 0, %.epil.preheader397 ], [ %epil.iter399.next, %bb.bj ]
  %i.ld = getelementptr i8, ptr %i.kb, i64 %.02535.i257.epil
  %i.le = load i8, ptr %i.ld, align 1, !tbaa !20
  %i.lf = zext i8 %i.le to i32
  %.025.tr.i259.epil = trunc i64 %.02535.i257.epil to i32
  %i.lg = shl i32 %.025.tr.i259.epil, 3
  %i.lh = shl i32 %i.lf, %i.lg
  %i.li = xor i32 %i.lh, %.02634.i258.epil        ; 2 uses
  %i.lj = add nuw i64 %.02535.i257.epil, 1
  %epil.iter399.next = add i64 %epil.iter399, 1   ; 2 uses
  %epil.iter399.cmp.not = icmp eq i64 %epil.iter399.next, %xtraiter398
  br i1 %epil.iter399.cmp.not, label %_ZL7getHashPKhmm.exit263, label %bb.bj, !llvm.loop !862

_ZL7getHashPKhmm.exit263:                         ; preds = %_ZL7getHashPKhmm.exit263.loopexit.unr-lcssa, %bb.bj, %bb.bg
  %.2.i262 = phi i32 [ %i.jz, %bb.bg ], [ %i.lb, %_ZL7getHashPKhmm.exit263.loopexit.unr-lcssa ], [ %i.li, %bb.bj ]
  %i.lk = and i32 %.2.i262, 65535                 ; 2 uses
  %i.ll = icmp eq i32 %i.lk, 0
  br i1 %i.ll, label %_ZL7getHashPKhmm.exit263.thread, label %bb.bp

_ZL7getHashPKhmm.exit263.thread:                  ; preds = %bb.bh, %_ZL7getHashPKhmm.exit263
  %i.lm = icmp eq i32 %.2202323, 0
  br i1 %i.lm, label %bb.bk, label %bb.bm

bb.bk:                                            ; preds = %_ZL7getHashPKhmm.exit263.thread
  %i.ln = getelementptr inbounds nuw i8, ptr %2, i64 %i.jj ; 5 uses
  %i.lo = getelementptr inbounds nuw i8, ptr %i.ln, i64 258
  %i.lp = add i64 %.2210321, 259
  %i.lq = icmp samesign ugt i64 %i.lp, %4
  %spec.select.i264 = select i1 %i.lq, ptr %i.k, ptr %i.lo ; 3 uses
  %.not17.i265 = icmp eq ptr %i.ln, %spec.select.i264
  br i1 %.not17.i265, label %_ZL10countZerosPKhmm.exit270, label %.lr.ph.i266

.lr.ph.i266:                                      ; preds = %bb.bk, %bb.bl
  %.01418.i267 = phi ptr [ %i.lt, %bb.bl ], [ %i.ln, %bb.bk ] ; 3 uses
  %i.lr = load i8, ptr %.01418.i267, align 1, !tbaa !20
  %i.ls = icmp eq i8 %i.lr, 0
  br i1 %i.ls, label %bb.bl, label %_ZL10countZerosPKhmm.exit270

bb.bl:                                            ; preds = %.lr.ph.i266
  %i.lt = getelementptr inbounds nuw i8, ptr %.01418.i267, i64 1 ; 2 uses
  %.not.i269 = icmp eq ptr %i.lt, %spec.select.i264
  br i1 %.not.i269, label %_ZL10countZerosPKhmm.exit270, label %.lr.ph.i266, !llvm.loop !858

_ZL10countZerosPKhmm.exit270:                     ; preds = %.lr.ph.i266, %bb.bl, %bb.bk
  %.014.lcssa.i268 = phi ptr [ %i.ln, %bb.bk ], [ %.01418.i267, %.lr.ph.i266 ], [ %spec.select.i264, %bb.bl ]
  %i.lu = ptrtoint ptr %.014.lcssa.i268 to i64
  %i.lv = ptrtoint ptr %i.ln to i64
  %i.lw = sub i64 %i.lu, %i.lv
  %i.lx = trunc i64 %i.lw to i32
  br label %bb.bp

bb.bm:                                            ; preds = %_ZL7getHashPKhmm.exit263.thread
  %i.ly = zext i32 %.2202323 to i64               ; 2 uses
  %i.lz = add i64 %i.jj, %i.ly
  %i.ma = icmp ugt i64 %i.lz, %4
  br i1 %i.ma, label %bb.bo, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.mb = getelementptr i8, ptr %2, i64 %.2210321
  %i.mc = getelementptr i8, ptr %i.mb, i64 %i.ly
  %i.md = load i8, ptr %i.mc, align 1, !tbaa !20
  %.not236 = icmp eq i8 %i.md, 0
  br i1 %.not236, label %bb.bp, label %bb.bo

bb.bo:                                            ; preds = %bb.bn, %bb.bm
  %i.me = add i32 %.2202323, -1
  br label %bb.bp

bb.bp:                                            ; preds = %_ZL7getHashPKhmm.exit263, %_ZL10countZerosPKhmm.exit270, %bb.bo, %bb.bn
  %.128.i255281 = phi i32 [ 0, %_ZL10countZerosPKhmm.exit270 ], [ 0, %bb.bo ], [ 0, %bb.bn ], [ %i.lk, %_ZL7getHashPKhmm.exit263 ] ; 2 uses
  %.3203 = phi i32 [ %i.lx, %_ZL10countZerosPKhmm.exit270 ], [ %i.me, %bb.bo ], [ %.2202323, %bb.bn ], [ 0, %_ZL7getHashPKhmm.exit263 ] ; 4 uses
  %i.mf = trunc i32 %.3203 to i16
  %i.mg = getelementptr inbounds nuw [4 x i8], ptr %i.jd, i64 %i.jk
  store i32 %.128.i255281, ptr %i.mg, align 4, !tbaa !13
  %i.mh = zext nneg i32 %.128.i255281 to i64
  %i.mi = getelementptr inbounds nuw [4 x i8], ptr %i.je, i64 %i.mh ; 2 uses
  %i.mj = load i32, ptr %i.mi, align 4, !tbaa !13 ; 2 uses
  %.not.i271 = icmp eq i32 %i.mj, -1
  br i1 %.not.i271, label %bb.br, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.mk = trunc i32 %i.mj to i16
  %i.ml = load ptr, ptr %i.m, align 8, !tbaa !126
  %i.mm = getelementptr inbounds nuw [2 x i8], ptr %i.ml, i64 %i.jk
  store i16 %i.mk, ptr %i.mm, align 2, !tbaa !94
  br label %bb.br

bb.br:                                            ; preds = %bb.bq, %bb.bp
  %i.mn = trunc nuw nsw i64 %i.jk to i32          ; 2 uses
  store i32 %i.mn, ptr %i.mi, align 4, !tbaa !13
  %i.mo = getelementptr inbounds nuw [2 x i8], ptr %i.jf, i64 %i.jk
  store i16 %i.mf, ptr %i.mo, align 2, !tbaa !94
  %.mask291 = and i32 %.3203, 65535
  %i.mp = zext nneg i32 %.mask291 to i64
  %i.mq = getelementptr inbounds nuw [4 x i8], ptr %i.jg, i64 %i.mp ; 2 uses
  %i.mr = load i32, ptr %i.mq, align 4, !tbaa !13 ; 2 uses
  %.not24.i272 = icmp eq i32 %i.mr, -1
  br i1 %.not24.i272, label %_ZL15updateHashChainP4Hashmjt.exit273, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.ms = trunc i32 %i.mr to i16
  %i.mt = load ptr, ptr %i.p, align 8, !tbaa !129
  %i.mu = getelementptr inbounds nuw [2 x i8], ptr %i.mt, i64 %i.jk
  store i16 %i.ms, ptr %i.mu, align 2, !tbaa !94
  br label %_ZL15updateHashChainP4Hashmjt.exit273

_ZL15updateHashChainP4Hashmjt.exit273:            ; preds = %bb.br, %bb.bs
  store i32 %i.mn, ptr %i.mq, align 4, !tbaa !13
  %i.mv = add nuw i32 %.0207322, 1                ; 2 uses
  %exitcond349.not = icmp eq i32 %i.mv, %.3
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond349.not, label %.loopexit, label %bb.bf, !llvm.loop !863

.loopexit.sink.split:                             ; preds = %_ZL18uivector_push_backP8uivectorj.exit247, %_ZL18uivector_push_backP8uivectorj.exit251
  %.sink390 = phi ptr [ %i.hk, %_ZL18uivector_push_backP8uivectorj.exit251 ], [ %i.gv, %_ZL18uivector_push_backP8uivectorj.exit247 ]
  %.sink.in = phi i8 [ %i.ha, %_ZL18uivector_push_backP8uivectorj.exit251 ], [ %i.gl, %_ZL18uivector_push_backP8uivectorj.exit247 ]
  %.sink = zext i8 %.sink.in to i32
  %i.mw = getelementptr i8, ptr %.sink390, i64 -4
  store i32 %.sink, ptr %i.mw, align 4, !tbaa !13
  br label %.loopexit

.loopexit:                                        ; preds = %_ZL15updateHashChainP4Hashmjt.exit273, %.loopexit.sink.split, %bb.ae
  %.4212 = phi i64 [ %.1209, %.loopexit.sink.split ], [ %.0208327, %bb.ae ], [ %i.jj, %_ZL15updateHashChainP4Hashmjt.exit273 ]
  %.5 = phi i32 [ %.1201, %.loopexit.sink.split ], [ %.1201, %bb.ae ], [ %.3203, %_ZL15updateHashChainP4Hashmjt.exit273 ]
  %.2 = phi i32 [ %.1192, %.loopexit.sink.split ], [ 1, %bb.ae ], [ %.1192, %_ZL15updateHashChainP4Hashmjt.exit273 ]
  %.1190 = phi i32 [ %.0189330, %.loopexit.sink.split ], [ %.2195, %bb.ae ], [ %.0189330, %_ZL15updateHashChainP4Hashmjt.exit273 ]
  %.1188 = phi i32 [ %.0187331, %.loopexit.sink.split ], [ %.2198, %bb.ae ], [ %.0187331, %_ZL15updateHashChainP4Hashmjt.exit273 ]
  %i.mx = add i64 %.4212, 1                       ; 2 uses
  %i.my = icmp ult i64 %i.mx, %4
  br i1 %i.my, label %bb.d, label %.thread283, !llvm.loop !864

.thread283:                                       ; preds = %.loopexit, %bb.ag, %.thread, %bb.aj, %bb.ao, %bb.at, %bb.c, %bb.b, %bb.a
  %.0213 = phi i32 [ 90, %bb.b ], [ 60, %bb.a ], [ 0, %bb.c ], [ 83, %bb.ao ], [ 0, %.loopexit ], [ 83, %bb.aj ], [ 81, %bb.ag ], [ 86, %.thread ], [ 83, %bb.at ]
  ret i32 %.0213
}

; Function Attrs: mustprogress nounwind memory(readwrite, target_mem: none) uwtable
define internal fastcc void @_ZL13writeLZ77dataP16LodePNGBitWriterPK8uivectorPK11HuffmanTreeS6_(ptr nofree noundef nonnull captures(none) %0, ptr nofree noundef nonnull readonly captures(none) %1, ptr nofree noundef nonnull readonly captures(none) %2, ptr nofree noundef nonnull readonly captures(none) %3) unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !154
  %.not46 = icmp eq i64 %i.b, 0
  br i1 %.not46, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 8 uses
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 8
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.n
  %.047 = phi i64 [ 0, %.lr.ph ], [ %i.do, %bb.n ] ; 4 uses
  %i.f = load ptr, ptr %1, align 8, !tbaa !141
  %i.g = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %.047
  %i.h = load i32, ptr %i.g, align 4, !tbaa !13   ; 3 uses
  %i.i = load ptr, ptr %2, align 8, !tbaa !98
  %i.j = zext i32 %i.h to i64                     ; 2 uses
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %i.j
  %i.l = load i32, ptr %i.k, align 4, !tbaa !13
  %i.m = load ptr, ptr %i.c, align 8, !tbaa !85
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %i.j
  %i.o = load i32, ptr %i.n, align 4, !tbaa !13   ; 3 uses
  %i.p = zext i32 %i.o to i64
  %.not18.i = icmp eq i32 %i.o, 0
  br i1 %.not18.i, label %_ZL17writeBitsReversedP16LodePNGBitWriterjm.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b
  %.pre.i = load i8, ptr %i.d, align 8, !tbaa !114
  br label %bb.c

bb.c:                                             ; preds = %bb.g, %.lr.ph.i
  %i.q = phi i8 [ %.pre.i, %.lr.ph.i ], [ %i.ba, %bb.g ]
  %.019.i = phi i64 [ 0, %.lr.ph.i ], [ %i.bb, %bb.g ] ; 2 uses
  %i.r = and i8 %i.q, 7                           ; 2 uses
  %i.s = icmp eq i8 %i.r, 0
  br i1 %i.s, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.t = load ptr, ptr %0, align 8, !tbaa !111    ; 5 uses
end_hunk_2
