Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/brotli/original/block_splitter?download=true
inline.NumInlined: 26
inline.NumDeleted: 26
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 29
loop-unroll.NumUnrolled: 41
begin_hunk_0_@BrotliSplitBlock:bb.a
bb.am:                                            ; preds = %bb.al
  %i.iz = getelementptr inbounds nuw [8 x i8], ptr @kBrotliLog2Table, i64 %i.iw
  %i.ja = load double, ptr %i.iz, align 8, !tbaa !194
  br label %BitCost.exit.i.i

bb.an:                                            ; preds = %bb.al
  %i.jb = uitofp i32 %i.iv to double
  %i.jc = tail call double @log2(double noundef %i.jb) #8
  br label %BitCost.exit.i.i

BitCost.exit.i.i:                                 ; preds = %bb.an, %bb.am, %bb.ak
  %i.jd = phi double [ -2.000000e+00, %bb.ak ], [ %i.ja, %bb.am ], [ %i.jc, %bb.an ]
  %i.je = fsub double %i.iu, %i.jd
  %i.jf = getelementptr [8 x i8], ptr %i.is, i64 %.0114132.i.i
  store double %i.je, ptr %i.jf, align 8, !tbaa !194
  %i.jg = add nuw nsw i64 %.0114132.i.i, 1        ; 2 uses
  %exitcond145.not.i.i = icmp eq i64 %i.jg, %.1179.i
  br i1 %exitcond145.not.i.i, label %.loopexit129.i.i, label %bb.ak, !llvm.loop !32

bb.ao:                                            ; preds = %.loopexit129.i.i
  %i.jh = shl nuw nsw i64 %.1179.i, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.ho, i8 0, i64 %i.jh, i1 false)
  %i.ji = mul i64 %i.ic, %.lcssa881
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.hr, i8 0, i64 %i.ji, i1 false)
  %xtraiter892 = and i64 %.1179.i, 1
  %unroll_iter897 = and i64 %.1179.i, -2
  %lcmp.mod894.not = icmp eq i64 %xtraiter892, 0
  %lcmp.mod896 = trunc i64 %.1179.i to i1
  br label %.new890

.new890:                                          ; preds = %bb.ay, %bb.ao
  %.0117137.i.i = phi i64 [ 0, %bb.ao ], [ %i.le, %bb.ay ] ; 6 uses
  %i.jj = getelementptr inbounds nuw i8, ptr %.ph, i64 %.0117137.i.i
  %i.jk = load i8, ptr %i.jj, align 1, !tbaa !168
  %i.jl = zext i8 %i.jk to i64
  %i.jm = mul nuw nsw i64 %.1179.i, %i.jl
  %i.jn = getelementptr inbounds nuw [8 x i8], ptr %i.hm, i64 %i.jm ; 3 uses
  %i.jo = getelementptr inbounds nuw i8, ptr %i.hi, i64 %.0117137.i.i ; 3 uses
  br label %bb.ap

bb.ap:                                            ; preds = %bb.at, %.new890
  %.0109135.i.i = phi i64 [ 0, %.new890 ], [ %i.ke, %bb.at ] ; 5 uses
  %.0112134.i.i = phi double [ f0x547D42AEA2879F2E, %.new890 ], [ %.1113.i.i.1, %bb.at ] ; 2 uses
  %niter898 = phi i64 [ 0, %.new890 ], [ %niter898.next.1, %bb.at ]
  %i.jp = getelementptr inbounds nuw [8 x i8], ptr %i.jn, i64 %.0109135.i.i
  %i.jq = load double, ptr %i.jp, align 8, !tbaa !194
  %i.jr = getelementptr inbounds nuw [8 x i8], ptr %i.ho, i64 %.0109135.i.i ; 2 uses
  %i.js = load double, ptr %i.jr, align 8, !tbaa !194
  %i.jt = fadd double %i.jq, %i.js                ; 3 uses
  store double %i.jt, ptr %i.jr, align 8, !tbaa !194
  %i.ju = fcmp olt double %i.jt, %.0112134.i.i
  br i1 %i.ju, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %bb.ap
  %i.jv = trunc i64 %.0109135.i.i to i8
  store i8 %i.jv, ptr %i.jo, align 1, !tbaa !168
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %bb.ap
  %.1113.i.i = phi double [ %i.jt, %bb.aq ], [ %.0112134.i.i, %bb.ap ] ; 2 uses
  %i.jw = or disjoint i64 %.0109135.i.i, 1        ; 3 uses
  %i.jx = getelementptr inbounds nuw [8 x i8], ptr %i.jn, i64 %i.jw
  %i.jy = load double, ptr %i.jx, align 8, !tbaa !194
  %i.jz = getelementptr inbounds nuw [8 x i8], ptr %i.ho, i64 %i.jw ; 2 uses
  %i.ka = load double, ptr %i.jz, align 8, !tbaa !194
  %i.kb = fadd double %i.jy, %i.ka                ; 3 uses
  store double %i.kb, ptr %i.jz, align 8, !tbaa !194
  %i.kc = fcmp olt double %i.kb, %.1113.i.i
  br i1 %i.kc, label %bb.as, label %bb.at

bb.as:                                            ; preds = %bb.ar
  %i.kd = trunc i64 %i.jw to i8
  store i8 %i.kd, ptr %i.jo, align 1, !tbaa !168
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %bb.ar
  %.1113.i.i.1 = phi double [ %i.kb, %bb.as ], [ %.1113.i.i, %bb.ar ] ; 4 uses
  %i.ke = add nuw nsw i64 %.0109135.i.i, 2        ; 4 uses
  %niter898.next.1 = add nuw i64 %niter898, 2     ; 2 uses
  %niter898.ncmp.1 = icmp eq i64 %niter898.next.1, %unroll_iter897
  br i1 %niter898.ncmp.1, label %.unr-lcssa, label %bb.ap, !llvm.loop !33

.unr-lcssa:                                       ; preds = %bb.at
  br i1 %lcmp.mod894.not, label %.epilog-lcssa, label %.epil.preheader891

.epil.preheader891:                               ; preds = %.unr-lcssa
  tail call void @llvm.assume(i1 %lcmp.mod896)
  %i.kf = getelementptr inbounds nuw [8 x i8], ptr %i.jn, i64 %i.ke
  %i.kg = load double, ptr %i.kf, align 8, !tbaa !194
  %i.kh = getelementptr inbounds nuw [8 x i8], ptr %i.ho, i64 %i.ke ; 2 uses
  %i.ki = load double, ptr %i.kh, align 8, !tbaa !194
  %i.kj = fadd double %i.kg, %i.ki                ; 3 uses
  store double %i.kj, ptr %i.kh, align 8, !tbaa !194
  %i.kk = fcmp olt double %i.kj, %.1113.i.i.1
  br i1 %i.kk, label %bb.au, label %.epilog-lcssa

bb.au:                                            ; preds = %.epil.preheader891
  %i.kl = trunc i64 %i.ke to i8
  store i8 %i.kl, ptr %i.jo, align 1, !tbaa !168
  br label %.epilog-lcssa

.epilog-lcssa:                                    ; preds = %.epil.preheader891, %bb.au, %.unr-lcssa
  %.1113.i.i.lcssa = phi double [ %.1113.i.i.1, %.unr-lcssa ], [ %i.kj, %bb.au ], [ %.1113.i.i.1, %.epil.preheader891 ]
  %i.km = mul i64 %.0117137.i.i, %i.ic
  %i.kn = icmp ult i64 %.0117137.i.i, 2000
  %i.ko = uitofp nneg i64 %.0117137.i.i to double
  %i.kp = tail call nnan double @llvm.fmuladd.f64(double %i.ko, double f0x3F02599ED7C6FBD3, double 7.700000e-01)
  %i.kq = fmul nnan double %i.kp, 2.810000e+01
  %.0111.i.i = select i1 %i.kn, double %i.kq, double 2.810000e+01 ; 2 uses
  %i.kr = getelementptr i8, ptr %i.hr, i64 %i.km
  br label %bb.av

bb.av:                                            ; preds = %bb.ax, %.epilog-lcssa
  %.1110136.i.i = phi i64 [ 0, %.epilog-lcssa ], [ %i.ld, %bb.ax ] ; 4 uses
  %i.ks = getelementptr inbounds nuw [8 x i8], ptr %i.ho, i64 %.1110136.i.i ; 3 uses
  %i.kt = load double, ptr %i.ks, align 8, !tbaa !194
  %i.ku = fsub double %i.kt, %.1113.i.i.lcssa     ; 2 uses
  store double %i.ku, ptr %i.ks, align 8, !tbaa !194
  %i.kv = fcmp ult double %i.ku, %.0111.i.i
  br i1 %i.kv, label %bb.ax, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.kw = trunc i64 %.1110136.i.i to i8
  %i.kx = and i8 %i.kw, 7
  %i.ky = shl nuw i8 1, %i.kx
  store double %.0111.i.i, ptr %i.ks, align 8, !tbaa !194
  %i.kz = lshr i64 %.1110136.i.i, 3
  %i.la = getelementptr i8, ptr %i.kr, i64 %i.kz  ; 2 uses
  %i.lb = load i8, ptr %i.la, align 1, !tbaa !168
  %i.lc = or i8 %i.lb, %i.ky
  store i8 %i.lc, ptr %i.la, align 1, !tbaa !168
  br label %bb.ax

bb.ax:                                            ; preds = %bb.aw, %bb.av
  %i.ld = add nuw nsw i64 %.1110136.i.i, 1        ; 2 uses
  %exitcond147.not.i.i = icmp eq i64 %i.ld, %.1179.i
  br i1 %exitcond147.not.i.i, label %bb.ay, label %bb.av, !llvm.loop !34

bb.ay:                                            ; preds = %bb.ax
  %i.le = add nuw i64 %.0117137.i.i, 1            ; 2 uses
  %exitcond148.not.i.i = icmp eq i64 %i.le, %.lcssa881
  br i1 %exitcond148.not.i.i, label %.lr.ph.preheader.i.i, label %.new890, !llvm.loop !35

.lr.ph.preheader.i.i:                             ; preds = %bb.ay
  %i.lf = load i8, ptr %i.hy, align 1, !tbaa !168
  %i.lg = mul i64 %i.ic, %i.hx
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.ba, %.lr.ph.preheader.i.i
  %.0142.i.i = phi i8 [ %.1.i159.i, %bb.ba ], [ %i.lf, %.lr.ph.preheader.i.i ] ; 4 uses
  %.0107141.i.i = phi i64 [ %i.lk, %bb.ba ], [ %i.lg, %.lr.ph.preheader.i.i ]
  %.1118140.i.i = phi i64 [ %i.lj, %bb.ba ], [ %i.hx, %.lr.ph.preheader.i.i ]
  %.0119139.i.i = phi i64 [ %.1120.i.i, %bb.ba ], [ 1, %.lr.ph.preheader.i.i ] ; 2 uses
  %i.lh = and i8 %.0142.i.i, 7
  %i.li = shl nuw i8 1, %i.lh
  %i.lj = add i64 %.1118140.i.i, -1               ; 4 uses
  %i.lk = sub i64 %.0107141.i.i, %i.ic            ; 2 uses
  %i.ll = lshr i8 %.0142.i.i, 3
  %i.lm = zext nneg i8 %i.ll to i64
  %i.ln = getelementptr i8, ptr %i.hr, i64 %i.lk
  %i.lo = getelementptr i8, ptr %i.ln, i64 %i.lm
  %i.lp = load i8, ptr %i.lo, align 1, !tbaa !168
  %i.lq = and i8 %i.lp, %i.li
  %.not125.i.i = icmp eq i8 %i.lq, 0
  br i1 %.not125.i.i, label %bb.ba, label %bb.az

bb.az:                                            ; preds = %.lr.ph.i.i
  %i.lr = getelementptr inbounds nuw i8, ptr %i.hi, i64 %i.lj
  %i.ls = load i8, ptr %i.lr, align 1, !tbaa !168 ; 2 uses
  %.not126.i.i = icmp ne i8 %.0142.i.i, %i.ls
  %i.lt = zext i1 %.not126.i.i to i64
  %spec.select.i158.i = add i64 %.0119139.i.i, %i.lt
  br label %bb.ba

bb.ba:                                            ; preds = %bb.az, %.lr.ph.i.i
  %.1120.i.i = phi i64 [ %.0119139.i.i, %.lr.ph.i.i ], [ %spec.select.i158.i, %bb.az ] ; 2 uses
  %.1.i159.i = phi i8 [ %.0142.i.i, %.lr.ph.i.i ], [ %i.ls, %bb.az ] ; 2 uses
  %i.lu = getelementptr inbounds nuw i8, ptr %i.hi, i64 %i.lj
  store i8 %.1.i159.i, ptr %i.lu, align 1, !tbaa !168
  %.not124.i.i = icmp eq i64 %i.lj, 0
  br i1 %.not124.i.i, label %FindBlocksLiteral.exit.i, label %.lr.ph.i.i, !llvm.loop !36

FindBlocksLiteral.exit.i:                         ; preds = %bb.ba, %.preheader.preheader.i.i
  %.0108.i.i = phi i64 [ 1, %.preheader.preheader.i.i ], [ %.1120.i.i, %bb.ba ] ; 19 uses
  %.not.i160.i = icmp eq i64 %.1179.i, 0
  br i1 %.not.i160.i, label %.preheader26.i.i.preheader, label %iter.check

iter.check:                                       ; preds = %FindBlocksLiteral.exit.i
  %min.iters.check = icmp ult i64 %.1179.i, 4
  br i1 %min.iters.check, label %.lr.ph.i161.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check713 = icmp ult i64 %.1179.i, 16
  br i1 %min.iters.check713, label %vec.epilog.ph, label %vector.ph714

vector.ph714:                                     ; preds = %vector.main.loop.iter.check
  %i.lv = and i64 %.1179.i, 12
  %n.vec = and i64 %.1179.i, -16                  ; 4 uses
  br label %vector.body715

vector.body715:                                   ; preds = %vector.body715, %vector.ph714
  %index716 = phi i64 [ 0, %vector.ph714 ], [ %index.next717, %vector.body715 ] ; 2 uses
  %i.lw = getelementptr inbounds nuw [2 x i8], ptr %i.ht, i64 %index716 ; 2 uses
  %i.lx = getelementptr inbounds nuw i8, ptr %i.lw, i64 16
  store <8 x i16> splat (i16 256), ptr %i.lw, align 2, !tbaa !195
  store <8 x i16> splat (i16 256), ptr %i.lx, align 2, !tbaa !195
  %index.next717 = add nuw i64 %index716, 16      ; 2 uses
  %i.ly = icmp eq i64 %index.next717, %n.vec
  br i1 %i.ly, label %middle.block718, label %vector.body715, !llvm.loop !37

middle.block718:                                  ; preds = %vector.body715
  %cmp.n = icmp eq i64 %.1179.i, %n.vec
  br i1 %cmp.n, label %.preheader26.i.i.preheader, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block718
  %min.epilog.iters.check = icmp eq i64 %i.lv, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i161.i.preheader, label %vec.epilog.ph, !prof !196

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec719 = and i64 %.1179.i, -4                ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index720 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next721, %vec.epilog.vector.body ] ; 2 uses
  %i.lz = getelementptr inbounds nuw [2 x i8], ptr %i.ht, i64 %index720
  store <4 x i16> splat (i16 256), ptr %i.lz, align 2, !tbaa !195
  %index.next721 = add nuw i64 %index720, 4       ; 2 uses
  %i.ma = icmp eq i64 %index.next721, %n.vec719
  br i1 %i.ma, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !38

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n722 = icmp eq i64 %.1179.i, %n.vec719
  br i1 %cmp.n722, label %.preheader26.i.i.preheader, label %.lr.ph.i161.i.preheader

.lr.ph.i161.i.preheader:                          ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.027.i.i.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec719, %vec.epilog.middle.block ]
  br label %.lr.ph.i161.i

.lr.ph.i161.i:                                    ; preds = %.lr.ph.i161.i.preheader, %.lr.ph.i161.i
  %.027.i.i = phi i64 [ %i.mc, %.lr.ph.i161.i ], [ %.027.i.i.ph, %.lr.ph.i161.i.preheader ] ; 2 uses
  %i.mb = getelementptr inbounds nuw [2 x i8], ptr %i.ht, i64 %.027.i.i
  store i16 256, ptr %i.mb, align 2, !tbaa !195
  %i.mc = add nuw nsw i64 %.027.i.i, 1            ; 2 uses
  %exitcond.not.i162.i = icmp eq i64 %i.mc, %.1179.i
  br i1 %exitcond.not.i162.i, label %.preheader26.i.i.preheader, label %.lr.ph.i161.i, !llvm.loop !39

.preheader26.i.i.preheader:                       ; preds = %.lr.ph.i161.i, %middle.block718, %vec.epilog.middle.block, %FindBlocksLiteral.exit.i
  br i1 %i.hz, label %.preheader26.i.i.epil.preheader, label %.preheader26.i.i

.preheader26.i.i:                                 ; preds = %.preheader26.i.i.preheader, %bb.bd
  %.129.i.i = phi i64 [ %i.ms, %bb.bd ], [ 0, %.preheader26.i.i.preheader ] ; 3 uses
  %.02328.i.i = phi i16 [ %.124.i.i.1, %bb.bd ], [ 0, %.preheader26.i.i.preheader ] ; 3 uses
  %niter905 = phi i64 [ %niter905.next.1, %bb.bd ], [ 0, %.preheader26.i.i.preheader ]
  %i.md = getelementptr inbounds nuw i8, ptr %i.hi, i64 %.129.i.i
  %i.me = load i8, ptr %i.md, align 1, !tbaa !168
  %i.mf = zext i8 %i.me to i64
  %i.mg = getelementptr inbounds nuw [2 x i8], ptr %i.ht, i64 %i.mf ; 2 uses
  %i.mh = load i16, ptr %i.mg, align 2, !tbaa !195
  %i.mi = icmp eq i16 %i.mh, 256
  br i1 %i.mi, label %bb.bb, label %.preheader26.i.i.1

bb.bb:                                            ; preds = %.preheader26.i.i
  %i.mj = add i16 %.02328.i.i, 1
  store i16 %.02328.i.i, ptr %i.mg, align 2, !tbaa !195
  br label %.preheader26.i.i.1

.preheader26.i.i.1:                               ; preds = %bb.bb, %.preheader26.i.i
  %.124.i.i = phi i16 [ %i.mj, %bb.bb ], [ %.02328.i.i, %.preheader26.i.i ] ; 3 uses
  %i.mk = getelementptr inbounds nuw i8, ptr %i.hi, i64 %.129.i.i
  %i.ml = getelementptr inbounds nuw i8, ptr %i.mk, i64 1
  %i.mm = load i8, ptr %i.ml, align 1, !tbaa !168
  %i.mn = zext i8 %i.mm to i64
  %i.mo = getelementptr inbounds nuw [2 x i8], ptr %i.ht, i64 %i.mn ; 2 uses
  %i.mp = load i16, ptr %i.mo, align 2, !tbaa !195
  %i.mq = icmp eq i16 %i.mp, 256
  br i1 %i.mq, label %bb.bc, label %bb.bd

bb.bc:                                            ; preds = %.preheader26.i.i.1
  %i.mr = add i16 %.124.i.i, 1
  store i16 %.124.i.i, ptr %i.mo, align 2, !tbaa !195
  br label %bb.bd

bb.bd:                                            ; preds = %bb.bc, %.preheader26.i.i.1
  %.124.i.i.1 = phi i16 [ %i.mr, %bb.bc ], [ %.124.i.i, %.preheader26.i.i.1 ] ; 3 uses
  %i.ms = add nuw i64 %.129.i.i, 2                ; 2 uses
  %niter905.next.1 = add i64 %niter905, 2         ; 2 uses
  %niter905.ncmp.1 = icmp eq i64 %niter905.next.1, %unroll_iter904
  br i1 %niter905.ncmp.1, label %.preheader.i.i.preheader.unr-lcssa, label %.preheader26.i.i, !llvm.loop !40

.preheader.i.i.preheader.unr-lcssa:               ; preds = %bb.bd
  br i1 %lcmp.mod901.not, label %.preheader.i.i.preheader.new, label %.preheader26.i.i.epil.preheader

.preheader26.i.i.epil.preheader:                  ; preds = %.preheader.i.i.preheader.unr-lcssa, %.preheader26.i.i.preheader
  %.129.i.i.epil.init = phi i64 [ 0, %.preheader26.i.i.preheader ], [ %i.ms, %.preheader.i.i.preheader.unr-lcssa ]
  %.02328.i.i.epil.init = phi i16 [ 0, %.preheader26.i.i.preheader ], [ %.124.i.i.1, %.preheader.i.i.preheader.unr-lcssa ] ; 3 uses
  tail call void @llvm.assume(i1 %lcmp.mod903)
  %i.mt = getelementptr inbounds nuw i8, ptr %i.hi, i64 %.129.i.i.epil.init
  %i.mu = load i8, ptr %i.mt, align 1, !tbaa !168
  %i.mv = zext i8 %i.mu to i64
  %i.mw = getelementptr inbounds nuw [2 x i8], ptr %i.ht, i64 %i.mv ; 2 uses
  %i.mx = load i16, ptr %i.mw, align 2, !tbaa !195
  %i.my = icmp eq i16 %i.mx, 256
  br i1 %i.my, label %bb.be, label %.preheader.i.i.preheader.new

bb.be:                                            ; preds = %.preheader26.i.i.epil.preheader
  %i.mz = add i16 %.02328.i.i.epil.init, 1
  store i16 %.02328.i.i.epil.init, ptr %i.mw, align 2, !tbaa !195
  br label %.preheader.i.i.preheader.new

.preheader.i.i.preheader.new:                     ; preds = %.preheader.i.i.preheader.unr-lcssa, %bb.be, %.preheader26.i.i.epil.preheader
  %.124.i.i.lcssa = phi i16 [ %.124.i.i.1, %.preheader.i.i.preheader.unr-lcssa ], [ %i.mz, %bb.be ], [ %.02328.i.i.epil.init, %.preheader26.i.i.epil.preheader ] ; 3 uses
  br label %.preheader.i.i

.preheader.i.i:                                   ; preds = %.preheader.i.i, %.preheader.i.i.preheader.new
  %.230.i.i = phi i64 [ 0, %.preheader.i.i.preheader.new ], [ %i.ob, %.preheader.i.i ] ; 5 uses
  %niter911 = phi i64 [ 0, %.preheader.i.i.preheader.new ], [ %niter911.next.3, %.preheader.i.i ]
  %i.na = getelementptr inbounds nuw i8, ptr %i.hi, i64 %.230.i.i ; 2 uses
  %i.nb = load i8, ptr %i.na, align 1, !tbaa !168
  %i.nc = zext i8 %i.nb to i64
  %i.nd = getelementptr inbounds nuw [2 x i8], ptr %i.ht, i64 %i.nc
  %i.ne = load i16, ptr %i.nd, align 2, !tbaa !195
  %i.nf = trunc i16 %i.ne to i8
  store i8 %i.nf, ptr %i.na, align 1, !tbaa !168
  %i.ng = getelementptr inbounds nuw i8, ptr %i.hi, i64 %.230.i.i
  %i.nh = getelementptr inbounds nuw i8, ptr %i.ng, i64 1 ; 2 uses
  %i.ni = load i8, ptr %i.nh, align 1, !tbaa !168
  %i.nj = zext i8 %i.ni to i64
  %i.nk = getelementptr inbounds nuw [2 x i8], ptr %i.ht, i64 %i.nj
  %i.nl = load i16, ptr %i.nk, align 2, !tbaa !195
  %i.nm = trunc i16 %i.nl to i8
  store i8 %i.nm, ptr %i.nh, align 1, !tbaa !168
  %i.nn = getelementptr inbounds nuw i8, ptr %i.hi, i64 %.230.i.i
  %i.no = getelementptr inbounds nuw i8, ptr %i.nn, i64 2 ; 2 uses
  %i.np = load i8, ptr %i.no, align 1, !tbaa !168
  %i.nq = zext i8 %i.np to i64
  %i.nr = getelementptr inbounds nuw [2 x i8], ptr %i.ht, i64 %i.nq
  %i.ns = load i16, ptr %i.nr, align 2, !tbaa !195
  %i.nt = trunc i16 %i.ns to i8
  store i8 %i.nt, ptr %i.no, align 1, !tbaa !168
  %i.nu = getelementptr inbounds nuw i8, ptr %i.hi, i64 %.230.i.i
  %i.nv = getelementptr inbounds nuw i8, ptr %i.nu, i64 3 ; 2 uses
  %i.nw = load i8, ptr %i.nv, align 1, !tbaa !168
  %i.nx = zext i8 %i.nw to i64
  %i.ny = getelementptr inbounds nuw [2 x i8], ptr %i.ht, i64 %i.nx
  %i.nz = load i16, ptr %i.ny, align 2, !tbaa !195
  %i.oa = trunc i16 %i.nz to i8
  store i8 %i.oa, ptr %i.nv, align 1, !tbaa !168
  %i.ob = add nuw i64 %.230.i.i, 4                ; 2 uses
  %niter911.next.3 = add i64 %niter911, 4         ; 2 uses
  %niter911.ncmp.3 = icmp eq i64 %niter911.next.3, %unroll_iter910
  br i1 %niter911.ncmp.3, label %RemapBlockIdsLiteral.exit.i.unr-lcssa, label %.preheader.i.i, !llvm.loop !41

RemapBlockIdsLiteral.exit.i.unr-lcssa:            ; preds = %.preheader.i.i
  br i1 %lcmp.mod908.not, label %RemapBlockIdsLiteral.exit.i, label %.preheader.i.i.epil.preheader

.preheader.i.i.epil.preheader:                    ; preds = %RemapBlockIdsLiteral.exit.i.unr-lcssa
  tail call void @llvm.assume(i1 %lcmp.mod909)
  br label %.preheader.i.i.epil

.preheader.i.i.epil:                              ; preds = %.preheader.i.i.epil, %.preheader.i.i.epil.preheader
  %.230.i.i.epil = phi i64 [ %i.oi, %.preheader.i.i.epil ], [ %i.ob, %.preheader.i.i.epil.preheader ] ; 2 uses
  %epil.iter907 = phi i64 [ %epil.iter907.next, %.preheader.i.i.epil ], [ 0, %.preheader.i.i.epil.preheader ]
  %i.oc = getelementptr inbounds nuw i8, ptr %i.hi, i64 %.230.i.i.epil ; 2 uses
  %i.od = load i8, ptr %i.oc, align 1, !tbaa !168
  %i.oe = zext i8 %i.od to i64
  %i.of = getelementptr inbounds nuw [2 x i8], ptr %i.ht, i64 %i.oe
  %i.og = load i16, ptr %i.of, align 2, !tbaa !195
  %i.oh = trunc i16 %i.og to i8
  store i8 %i.oh, ptr %i.oc, align 1, !tbaa !168
  %i.oi = add nuw i64 %.230.i.i.epil, 1
  %epil.iter907.next = add i64 %epil.iter907, 1   ; 2 uses
  %epil.iter907.cmp.not = icmp eq i64 %epil.iter907.next, %xtraiter906
  br i1 %epil.iter907.cmp.not, label %RemapBlockIdsLiteral.exit.i, label %.preheader.i.i.epil, !llvm.loop !42

RemapBlockIdsLiteral.exit.i:                      ; preds = %.preheader.i.i.epil, %RemapBlockIdsLiteral.exit.i.unr-lcssa
  %i.oj = zext i16 %.124.i.i.lcssa to i64         ; 3 uses
  %.not.i164.i = icmp eq i16 %.124.i.i.lcssa, 0
  br i1 %.not.i164.i, label %ClearHistogramsLiteral.exit.i.i.preheader, label %.lr.ph.i165.i.preheader

.lr.ph.i165.i.preheader:                          ; preds = %RemapBlockIdsLiteral.exit.i
  %xtraiter912 = and i64 %i.oj, 3                 ; 3 uses
  %i.ok = icmp ult i16 %.124.i.i.lcssa, 4
  br i1 %i.ok, label %.lr.ph.i165.i.epil.preheader, label %.lr.ph.i165.i.preheader.new

.lr.ph.i165.i.preheader.new:                      ; preds = %.lr.ph.i165.i.preheader
  %unroll_iter916 = and i64 %i.oj, 65532
  br label %.lr.ph.i165.i

.lr.ph.i165.i:                                    ; preds = %.lr.ph.i165.i, %.lr.ph.i165.i.preheader.new
  %.0.i9.i.i = phi i64 [ 0, %.lr.ph.i165.i.preheader.new ], [ %i.ow, %.lr.ph.i165.i ] ; 5 uses
  %niter917 = phi i64 [ 0, %.lr.ph.i165.i.preheader.new ], [ %niter917.next.3, %.lr.ph.i165.i ]
  %i.ol = getelementptr inbounds nuw [1040 x i8], ptr %i.cs, i64 %.0.i9.i.i ; 2 uses
  %i.om = getelementptr inbounds nuw i8, ptr %i.ol, i64 1032
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1032) %i.ol, i8 0, i64 1032, i1 false)
  store double +inf, ptr %i.om, align 8, !tbaa !172
  %i.on = getelementptr inbounds nuw [1040 x i8], ptr %i.cs, i64 %.0.i9.i.i ; 2 uses
  %i.oo = getelementptr inbounds nuw i8, ptr %i.on, i64 1040
  %i.op = getelementptr inbounds nuw i8, ptr %i.on, i64 2072
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1032) %i.oo, i8 0, i64 1032, i1 false)
  store double +inf, ptr %i.op, align 8, !tbaa !172
end_hunk_0
begin_hunk_1_@BrotliSplitBlock:bb.a
bb.dt:                                            ; preds = %bb.ds
  %i.bex = getelementptr inbounds nuw [8 x i8], ptr @kBrotliLog2Table, i64 %i.beu
  %i.bey = load double, ptr %i.bex, align 8, !tbaa !194
  br label %BitCost.exit.i.i95

bb.du:                                            ; preds = %bb.ds
  %i.bez = uitofp i32 %i.bet to double
  %i.bfa = tail call double @log2(double noundef %i.bez) #8
  br label %BitCost.exit.i.i95

BitCost.exit.i.i95:                               ; preds = %bb.du, %bb.dt, %bb.dr
  %i.bfb = phi double [ -2.000000e+00, %bb.dr ], [ %i.bey, %bb.dt ], [ %i.bfa, %bb.du ]
  %i.bfc = fsub double %i.bes, %i.bfb
  %i.bfd = getelementptr [8 x i8], ptr %i.beq, i64 %.0114132.i.i93
  store double %i.bfc, ptr %i.bfd, align 8, !tbaa !194
  %i.bfe = add nuw nsw i64 %.0114132.i.i93, 1     ; 2 uses
  %exitcond145.not.i.i96 = icmp eq i64 %i.bfe, %.1180.i
  br i1 %exitcond145.not.i.i96, label %.loopexit129.i.i97, label %bb.dr, !llvm.loop !82

bb.dv:                                            ; preds = %.loopexit129.i.i97
  %i.bff = shl nuw nsw i64 %.1180.i, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.bdl, i8 0, i64 %i.bff, i1 false)
  %i.bfg = mul i64 %i.bea, %2
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.bdo, i8 0, i64 %i.bfg, i1 false)
  %xtraiter961 = and i64 %.1180.i, 1
  %unroll_iter967 = and i64 %.1180.i, -2
  %lcmp.mod963.not = icmp eq i64 %xtraiter961, 0
  %lcmp.mod966 = trunc i64 %.1180.i to i1
  br label %.new958

.new958:                                          ; preds = %bb.ef, %bb.dv
  %.0117137.i.i99 = phi i64 [ 0, %bb.dv ], [ %i.bhc, %bb.ef ] ; 6 uses
  %i.bfh = getelementptr inbounds nuw [2 x i8], ptr %i.acv, i64 %.0117137.i.i99
  %i.bfi = load i16, ptr %i.bfh, align 2, !tbaa !195
  %i.bfj = zext i16 %i.bfi to i64
  %i.bfk = mul nuw nsw i64 %.1180.i, %i.bfj
  %i.bfl = getelementptr inbounds nuw [8 x i8], ptr %i.bdj, i64 %i.bfk ; 3 uses
  %i.bfm = getelementptr inbounds nuw i8, ptr %i.bdf, i64 %.0117137.i.i99 ; 3 uses
  br label %bb.dw

bb.dw:                                            ; preds = %bb.ea, %.new958
  %.0109135.i.i100 = phi i64 [ 0, %.new958 ], [ %i.bgc, %bb.ea ] ; 5 uses
  %.0112134.i.i101 = phi double [ f0x547D42AEA2879F2E, %.new958 ], [ %.1113.i.i102.1, %bb.ea ] ; 2 uses
  %niter968 = phi i64 [ 0, %.new958 ], [ %niter968.next.1, %bb.ea ]
  %i.bfn = getelementptr inbounds nuw [8 x i8], ptr %i.bfl, i64 %.0109135.i.i100
  %i.bfo = load double, ptr %i.bfn, align 8, !tbaa !194
  %i.bfp = getelementptr inbounds nuw [8 x i8], ptr %i.bdl, i64 %.0109135.i.i100 ; 2 uses
  %i.bfq = load double, ptr %i.bfp, align 8, !tbaa !194
  %i.bfr = fadd double %i.bfo, %i.bfq             ; 3 uses
  store double %i.bfr, ptr %i.bfp, align 8, !tbaa !194
  %i.bfs = fcmp olt double %i.bfr, %.0112134.i.i101
  br i1 %i.bfs, label %bb.dx, label %bb.dy

bb.dx:                                            ; preds = %bb.dw
  %i.bft = trunc i64 %.0109135.i.i100 to i8
  store i8 %i.bft, ptr %i.bfm, align 1, !tbaa !168
  br label %bb.dy

bb.dy:                                            ; preds = %bb.dx, %bb.dw
  %.1113.i.i102 = phi double [ %i.bfr, %bb.dx ], [ %.0112134.i.i101, %bb.dw ] ; 2 uses
  %i.bfu = or disjoint i64 %.0109135.i.i100, 1    ; 3 uses
  %i.bfv = getelementptr inbounds nuw [8 x i8], ptr %i.bfl, i64 %i.bfu
  %i.bfw = load double, ptr %i.bfv, align 8, !tbaa !194
  %i.bfx = getelementptr inbounds nuw [8 x i8], ptr %i.bdl, i64 %i.bfu ; 2 uses
  %i.bfy = load double, ptr %i.bfx, align 8, !tbaa !194
  %i.bfz = fadd double %i.bfw, %i.bfy             ; 3 uses
  store double %i.bfz, ptr %i.bfx, align 8, !tbaa !194
  %i.bga = fcmp olt double %i.bfz, %.1113.i.i102
  br i1 %i.bga, label %bb.dz, label %bb.ea

bb.dz:                                            ; preds = %bb.dy
  %i.bgb = trunc i64 %i.bfu to i8
  store i8 %i.bgb, ptr %i.bfm, align 1, !tbaa !168
  br label %bb.ea

bb.ea:                                            ; preds = %bb.dz, %bb.dy
  %.1113.i.i102.1 = phi double [ %i.bfz, %bb.dz ], [ %.1113.i.i102, %bb.dy ] ; 4 uses
  %i.bgc = add nuw nsw i64 %.0109135.i.i100, 2    ; 4 uses
  %niter968.next.1 = add nuw i64 %niter968, 2     ; 2 uses
  %niter968.ncmp.1 = icmp eq i64 %niter968.next.1, %unroll_iter967
  br i1 %niter968.ncmp.1, label %.unr-lcssa959, label %bb.dw, !llvm.loop !83

.unr-lcssa959:                                    ; preds = %bb.ea
  br i1 %lcmp.mod963.not, label %.epilog-lcssa964, label %.epil.preheader960

.epil.preheader960:                               ; preds = %.unr-lcssa959
  tail call void @llvm.assume(i1 %lcmp.mod966)
  %i.bgd = getelementptr inbounds nuw [8 x i8], ptr %i.bfl, i64 %i.bgc
  %i.bge = load double, ptr %i.bgd, align 8, !tbaa !194
  %i.bgf = getelementptr inbounds nuw [8 x i8], ptr %i.bdl, i64 %i.bgc ; 2 uses
  %i.bgg = load double, ptr %i.bgf, align 8, !tbaa !194
  %i.bgh = fadd double %i.bge, %i.bgg             ; 3 uses
  store double %i.bgh, ptr %i.bgf, align 8, !tbaa !194
  %i.bgi = fcmp olt double %i.bgh, %.1113.i.i102.1
  br i1 %i.bgi, label %bb.eb, label %.epilog-lcssa964

bb.eb:                                            ; preds = %.epil.preheader960
  %i.bgj = trunc i64 %i.bgc to i8
  store i8 %i.bgj, ptr %i.bfm, align 1, !tbaa !168
  br label %.epilog-lcssa964

.epilog-lcssa964:                                 ; preds = %.epil.preheader960, %bb.eb, %.unr-lcssa959
  %.1113.i.i102.lcssa = phi double [ %.1113.i.i102.1, %.unr-lcssa959 ], [ %i.bgh, %bb.eb ], [ %.1113.i.i102.1, %.epil.preheader960 ]
  %i.bgk = mul i64 %.0117137.i.i99, %i.bea
  %i.bgl = icmp ult i64 %.0117137.i.i99, 2000
  %i.bgm = uitofp nneg i64 %.0117137.i.i99 to double
  %i.bgn = tail call nnan double @llvm.fmuladd.f64(double %i.bgm, double f0x3F02599ED7C6FBD3, double 7.700000e-01)
  %i.bgo = fmul nnan double %i.bgn, 1.350000e+01
  %.0111.i.i104 = select i1 %i.bgl, double %i.bgo, double 1.350000e+01 ; 2 uses
  %i.bgp = getelementptr i8, ptr %i.bdo, i64 %i.bgk
  br label %bb.ec

bb.ec:                                            ; preds = %bb.ee, %.epilog-lcssa964
  %.1110136.i.i105 = phi i64 [ 0, %.epilog-lcssa964 ], [ %i.bhb, %bb.ee ] ; 4 uses
  %i.bgq = getelementptr inbounds nuw [8 x i8], ptr %i.bdl, i64 %.1110136.i.i105 ; 3 uses
  %i.bgr = load double, ptr %i.bgq, align 8, !tbaa !194
  %i.bgs = fsub double %i.bgr, %.1113.i.i102.lcssa ; 2 uses
  store double %i.bgs, ptr %i.bgq, align 8, !tbaa !194
  %i.bgt = fcmp ult double %i.bgs, %.0111.i.i104
  br i1 %i.bgt, label %bb.ee, label %bb.ed

bb.ed:                                            ; preds = %bb.ec
  %i.bgu = trunc i64 %.1110136.i.i105 to i8
  %i.bgv = and i8 %i.bgu, 7
  %i.bgw = shl nuw i8 1, %i.bgv
  store double %.0111.i.i104, ptr %i.bgq, align 8, !tbaa !194
  %i.bgx = lshr i64 %.1110136.i.i105, 3
  %i.bgy = getelementptr i8, ptr %i.bgp, i64 %i.bgx ; 2 uses
  %i.bgz = load i8, ptr %i.bgy, align 1, !tbaa !168
  %i.bha = or i8 %i.bgz, %i.bgw
  store i8 %i.bha, ptr %i.bgy, align 1, !tbaa !168
  br label %bb.ee

bb.ee:                                            ; preds = %bb.ed, %bb.ec
  %i.bhb = add nuw nsw i64 %.1110136.i.i105, 1    ; 2 uses
  %exitcond147.not.i.i106 = icmp eq i64 %i.bhb, %.1180.i
  br i1 %exitcond147.not.i.i106, label %bb.ef, label %bb.ec, !llvm.loop !84

bb.ef:                                            ; preds = %bb.ee
  %i.bhc = add nuw i64 %.0117137.i.i99, 1         ; 2 uses
  %exitcond148.not.i.i107 = icmp eq i64 %i.bhc, %2
  br i1 %exitcond148.not.i.i107, label %.lr.ph.preheader.i.i108, label %.new958, !llvm.loop !85

.lr.ph.preheader.i.i108:                          ; preds = %bb.ef
  %i.bhd = load i8, ptr %i.bdv, align 1, !tbaa !168
  %i.bhe = mul i64 %i.bea, %i.bdu
  br label %.lr.ph.i.i109

.lr.ph.i.i109:                                    ; preds = %bb.eh, %.lr.ph.preheader.i.i108
  %.0142.i.i110 = phi i8 [ %.1.i159.i118, %bb.eh ], [ %i.bhd, %.lr.ph.preheader.i.i108 ] ; 4 uses
  %.0107141.i.i111 = phi i64 [ %i.bhi, %bb.eh ], [ %i.bhe, %.lr.ph.preheader.i.i108 ]
  %.1118140.i.i112 = phi i64 [ %i.bhh, %bb.eh ], [ %i.bdu, %.lr.ph.preheader.i.i108 ]
  %.0119139.i.i113 = phi i64 [ %.1120.i.i117, %bb.eh ], [ 1, %.lr.ph.preheader.i.i108 ] ; 2 uses
  %i.bhf = and i8 %.0142.i.i110, 7
  %i.bhg = shl nuw i8 1, %i.bhf
  %i.bhh = add i64 %.1118140.i.i112, -1           ; 4 uses
  %i.bhi = sub i64 %.0107141.i.i111, %i.bea       ; 2 uses
  %i.bhj = lshr i8 %.0142.i.i110, 3
  %i.bhk = zext nneg i8 %i.bhj to i64
  %i.bhl = getelementptr i8, ptr %i.bdo, i64 %i.bhi
  %i.bhm = getelementptr i8, ptr %i.bhl, i64 %i.bhk
  %i.bhn = load i8, ptr %i.bhm, align 1, !tbaa !168
  %i.bho = and i8 %i.bhn, %i.bhg
  %.not125.i.i114 = icmp eq i8 %i.bho, 0
  br i1 %.not125.i.i114, label %bb.eh, label %bb.eg

bb.eg:                                            ; preds = %.lr.ph.i.i109
  %i.bhp = getelementptr inbounds nuw i8, ptr %i.bdf, i64 %i.bhh
  %i.bhq = load i8, ptr %i.bhp, align 1, !tbaa !168 ; 2 uses
  %.not126.i.i115 = icmp ne i8 %.0142.i.i110, %i.bhq
  %i.bhr = zext i1 %.not126.i.i115 to i64
  %spec.select.i158.i116 = add i64 %.0119139.i.i113, %i.bhr
  br label %bb.eh

bb.eh:                                            ; preds = %bb.eg, %.lr.ph.i.i109
  %.1120.i.i117 = phi i64 [ %.0119139.i.i113, %.lr.ph.i.i109 ], [ %spec.select.i158.i116, %bb.eg ] ; 2 uses
  %.1.i159.i118 = phi i8 [ %.0142.i.i110, %.lr.ph.i.i109 ], [ %i.bhq, %bb.eg ] ; 2 uses
  %i.bhs = getelementptr inbounds nuw i8, ptr %i.bdf, i64 %i.bhh
  store i8 %.1.i159.i118, ptr %i.bhs, align 1, !tbaa !168
  %.not124.i.i119 = icmp eq i64 %i.bhh, 0
  br i1 %.not124.i.i119, label %FindBlocksCommand.exit.i, label %.lr.ph.i.i109, !llvm.loop !86

FindBlocksCommand.exit.i:                         ; preds = %bb.eh, %.preheader.preheader.i.i230
  %.0108.i.i120 = phi i64 [ 1, %.preheader.preheader.i.i230 ], [ %.1120.i.i117, %bb.eh ] ; 19 uses
  %.not.i160.i121 = icmp eq i64 %.1180.i, 0
  br i1 %.not.i160.i121, label %.preheader26.i.i125.preheader, label %iter.check776

iter.check776:                                    ; preds = %FindBlocksCommand.exit.i
  %min.iters.check765 = icmp ult i64 %.1180.i, 4
  br i1 %min.iters.check765, label %.lr.ph.i161.i122.preheader, label %vector.main.loop.iter.check766

vector.main.loop.iter.check766:                   ; preds = %iter.check776
  %min.iters.check767 = icmp ult i64 %.1180.i, 16
  br i1 %min.iters.check767, label %vec.epilog.ph780, label %vector.ph768

vector.ph768:                                     ; preds = %vector.main.loop.iter.check766
  %i.bht = and i64 %.1180.i, 12
  %n.vec769 = and i64 %.1180.i, -16               ; 4 uses
  br label %vector.body770

vector.body770:                                   ; preds = %vector.body770, %vector.ph768
  %index771 = phi i64 [ 0, %vector.ph768 ], [ %index.next772, %vector.body770 ] ; 2 uses
  %i.bhu = getelementptr inbounds nuw [2 x i8], ptr %i.bdq, i64 %index771 ; 2 uses
  %i.bhv = getelementptr inbounds nuw i8, ptr %i.bhu, i64 16
  store <8 x i16> splat (i16 256), ptr %i.bhu, align 2, !tbaa !195
  store <8 x i16> splat (i16 256), ptr %i.bhv, align 2, !tbaa !195
  %index.next772 = add nuw i64 %index771, 16      ; 2 uses
  %i.bhw = icmp eq i64 %index.next772, %n.vec769
  br i1 %i.bhw, label %middle.block773, label %vector.body770, !llvm.loop !87

middle.block773:                                  ; preds = %vector.body770
  %cmp.n774 = icmp eq i64 %.1180.i, %n.vec769
  br i1 %cmp.n774, label %.preheader26.i.i125.preheader, label %vec.epilog.iter.check778

vec.epilog.iter.check778:                         ; preds = %middle.block773
  %min.epilog.iters.check779 = icmp eq i64 %i.bht, 0
  br i1 %min.epilog.iters.check779, label %.lr.ph.i161.i122.preheader, label %vec.epilog.ph780, !prof !196

vec.epilog.ph780:                                 ; preds = %vector.main.loop.iter.check766, %vec.epilog.iter.check778
  %vec.epilog.resume.val775 = phi i64 [ %n.vec769, %vec.epilog.iter.check778 ], [ 0, %vector.main.loop.iter.check766 ]
  %n.vec781 = and i64 %.1180.i, -4                ; 3 uses
  br label %vec.epilog.vector.body782

vec.epilog.vector.body782:                        ; preds = %vec.epilog.vector.body782, %vec.epilog.ph780
  %index783 = phi i64 [ %vec.epilog.resume.val775, %vec.epilog.ph780 ], [ %index.next784, %vec.epilog.vector.body782 ] ; 2 uses
  %i.bhx = getelementptr inbounds nuw [2 x i8], ptr %i.bdq, i64 %index783
  store <4 x i16> splat (i16 256), ptr %i.bhx, align 2, !tbaa !195
  %index.next784 = add nuw i64 %index783, 4       ; 2 uses
  %i.bhy = icmp eq i64 %index.next784, %n.vec781
  br i1 %i.bhy, label %vec.epilog.middle.block785, label %vec.epilog.vector.body782, !llvm.loop !88

vec.epilog.middle.block785:                       ; preds = %vec.epilog.vector.body782
  %cmp.n786 = icmp eq i64 %.1180.i, %n.vec781
  br i1 %cmp.n786, label %.preheader26.i.i125.preheader, label %.lr.ph.i161.i122.preheader

.lr.ph.i161.i122.preheader:                       ; preds = %iter.check776, %vec.epilog.iter.check778, %vec.epilog.middle.block785
  %.027.i.i123.ph = phi i64 [ 0, %iter.check776 ], [ %n.vec769, %vec.epilog.iter.check778 ], [ %n.vec781, %vec.epilog.middle.block785 ]
  br label %.lr.ph.i161.i122

.lr.ph.i161.i122:                                 ; preds = %.lr.ph.i161.i122.preheader, %.lr.ph.i161.i122
  %.027.i.i123 = phi i64 [ %i.bia, %.lr.ph.i161.i122 ], [ %.027.i.i123.ph, %.lr.ph.i161.i122.preheader ] ; 2 uses
  %i.bhz = getelementptr inbounds nuw [2 x i8], ptr %i.bdq, i64 %.027.i.i123
  store i16 256, ptr %i.bhz, align 2, !tbaa !195
  %i.bia = add nuw nsw i64 %.027.i.i123, 1        ; 2 uses
  %exitcond.not.i162.i124 = icmp eq i64 %i.bia, %.1180.i
  br i1 %exitcond.not.i162.i124, label %.preheader26.i.i125.preheader, label %.lr.ph.i161.i122, !llvm.loop !89

.preheader26.i.i125.preheader:                    ; preds = %.lr.ph.i161.i122, %middle.block773, %vec.epilog.middle.block785, %FindBlocksCommand.exit.i
  br i1 %i.bdw, label %.preheader26.i.i125.epil.preheader, label %.preheader26.i.i125

.preheader26.i.i125:                              ; preds = %.preheader26.i.i125.preheader, %bb.ek
  %.129.i.i126 = phi i64 [ %i.biq, %bb.ek ], [ 0, %.preheader26.i.i125.preheader ] ; 3 uses
  %.02328.i.i127 = phi i16 [ %.124.i.i128.1, %bb.ek ], [ 0, %.preheader26.i.i125.preheader ] ; 3 uses
  %niter975 = phi i64 [ %niter975.next.1, %bb.ek ], [ 0, %.preheader26.i.i125.preheader ]
  %i.bib = getelementptr inbounds nuw i8, ptr %i.bdf, i64 %.129.i.i126
  %i.bic = load i8, ptr %i.bib, align 1, !tbaa !168
  %i.bid = zext i8 %i.bic to i64
  %i.bie = getelementptr inbounds nuw [2 x i8], ptr %i.bdq, i64 %i.bid ; 2 uses
  %i.bif = load i16, ptr %i.bie, align 2, !tbaa !195
  %i.big = icmp eq i16 %i.bif, 256
  br i1 %i.big, label %bb.ei, label %.preheader26.i.i125.1

bb.ei:                                            ; preds = %.preheader26.i.i125
  %i.bih = add i16 %.02328.i.i127, 1
  store i16 %.02328.i.i127, ptr %i.bie, align 2, !tbaa !195
  br label %.preheader26.i.i125.1

.preheader26.i.i125.1:                            ; preds = %bb.ei, %.preheader26.i.i125
  %.124.i.i128 = phi i16 [ %i.bih, %bb.ei ], [ %.02328.i.i127, %.preheader26.i.i125 ] ; 3 uses
  %i.bii = getelementptr inbounds nuw i8, ptr %i.bdf, i64 %.129.i.i126
  %i.bij = getelementptr inbounds nuw i8, ptr %i.bii, i64 1
  %i.bik = load i8, ptr %i.bij, align 1, !tbaa !168
  %i.bil = zext i8 %i.bik to i64
  %i.bim = getelementptr inbounds nuw [2 x i8], ptr %i.bdq, i64 %i.bil ; 2 uses
  %i.bin = load i16, ptr %i.bim, align 2, !tbaa !195
  %i.bio = icmp eq i16 %i.bin, 256
  br i1 %i.bio, label %bb.ej, label %bb.ek

bb.ej:                                            ; preds = %.preheader26.i.i125.1
  %i.bip = add i16 %.124.i.i128, 1
  store i16 %.124.i.i128, ptr %i.bim, align 2, !tbaa !195
  br label %bb.ek

bb.ek:                                            ; preds = %bb.ej, %.preheader26.i.i125.1
  %.124.i.i128.1 = phi i16 [ %i.bip, %bb.ej ], [ %.124.i.i128, %.preheader26.i.i125.1 ] ; 3 uses
  %i.biq = add nuw i64 %.129.i.i126, 2            ; 2 uses
  %niter975.next.1 = add i64 %niter975, 2         ; 2 uses
  %niter975.ncmp.1 = icmp eq i64 %niter975.next.1, %unroll_iter974
  br i1 %niter975.ncmp.1, label %.preheader.i.i131.preheader.unr-lcssa, label %.preheader26.i.i125, !llvm.loop !90

.preheader.i.i131.preheader.unr-lcssa:            ; preds = %bb.ek
  br i1 %lcmp.mod971.not, label %.preheader.i.i131.preheader, label %.preheader26.i.i125.epil.preheader

.preheader26.i.i125.epil.preheader:               ; preds = %.preheader.i.i131.preheader.unr-lcssa, %.preheader26.i.i125.preheader
  %.129.i.i126.epil.init = phi i64 [ 0, %.preheader26.i.i125.preheader ], [ %i.biq, %.preheader.i.i131.preheader.unr-lcssa ]
  %.02328.i.i127.epil.init = phi i16 [ 0, %.preheader26.i.i125.preheader ], [ %.124.i.i128.1, %.preheader.i.i131.preheader.unr-lcssa ] ; 3 uses
  tail call void @llvm.assume(i1 %lcmp.mod973)
  %i.bir = getelementptr inbounds nuw i8, ptr %i.bdf, i64 %.129.i.i126.epil.init
  %i.bis = load i8, ptr %i.bir, align 1, !tbaa !168
  %i.bit = zext i8 %i.bis to i64
  %i.biu = getelementptr inbounds nuw [2 x i8], ptr %i.bdq, i64 %i.bit ; 2 uses
  %i.biv = load i16, ptr %i.biu, align 2, !tbaa !195
  %i.biw = icmp eq i16 %i.biv, 256
  br i1 %i.biw, label %bb.el, label %.preheader.i.i131.preheader

bb.el:                                            ; preds = %.preheader26.i.i125.epil.preheader
  %i.bix = add i16 %.02328.i.i127.epil.init, 1
  store i16 %.02328.i.i127.epil.init, ptr %i.biu, align 2, !tbaa !195
  br label %.preheader.i.i131.preheader

.preheader.i.i131.preheader:                      ; preds = %.preheader26.i.i125.epil.preheader, %bb.el, %.preheader.i.i131.preheader.unr-lcssa
  %.124.i.i128.lcssa = phi i16 [ %.124.i.i128.1, %.preheader.i.i131.preheader.unr-lcssa ], [ %i.bix, %bb.el ], [ %.02328.i.i127.epil.init, %.preheader26.i.i125.epil.preheader ] ; 3 uses
  br i1 %i.bdx, label %.preheader.i.i131.epil.preheader, label %.preheader.i.i131

.preheader.i.i131:                                ; preds = %.preheader.i.i131.preheader, %.preheader.i.i131
  %.230.i.i132 = phi i64 [ %i.bjz, %.preheader.i.i131 ], [ 0, %.preheader.i.i131.preheader ] ; 5 uses
  %niter981 = phi i64 [ %niter981.next.3, %.preheader.i.i131 ], [ 0, %.preheader.i.i131.preheader ]
  %i.biy = getelementptr inbounds nuw i8, ptr %i.bdf, i64 %.230.i.i132 ; 2 uses
  %i.biz = load i8, ptr %i.biy, align 1, !tbaa !168
  %i.bja = zext i8 %i.biz to i64
  %i.bjb = getelementptr inbounds nuw [2 x i8], ptr %i.bdq, i64 %i.bja
  %i.bjc = load i16, ptr %i.bjb, align 2, !tbaa !195
  %i.bjd = trunc i16 %i.bjc to i8
  store i8 %i.bjd, ptr %i.biy, align 1, !tbaa !168
  %i.bje = getelementptr inbounds nuw i8, ptr %i.bdf, i64 %.230.i.i132
  %i.bjf = getelementptr inbounds nuw i8, ptr %i.bje, i64 1 ; 2 uses
  %i.bjg = load i8, ptr %i.bjf, align 1, !tbaa !168
  %i.bjh = zext i8 %i.bjg to i64
  %i.bji = getelementptr inbounds nuw [2 x i8], ptr %i.bdq, i64 %i.bjh
  %i.bjj = load i16, ptr %i.bji, align 2, !tbaa !195
  %i.bjk = trunc i16 %i.bjj to i8
  store i8 %i.bjk, ptr %i.bjf, align 1, !tbaa !168
  %i.bjl = getelementptr inbounds nuw i8, ptr %i.bdf, i64 %.230.i.i132
  %i.bjm = getelementptr inbounds nuw i8, ptr %i.bjl, i64 2 ; 2 uses
  %i.bjn = load i8, ptr %i.bjm, align 1, !tbaa !168
  %i.bjo = zext i8 %i.bjn to i64
  %i.bjp = getelementptr inbounds nuw [2 x i8], ptr %i.bdq, i64 %i.bjo
  %i.bjq = load i16, ptr %i.bjp, align 2, !tbaa !195
  %i.bjr = trunc i16 %i.bjq to i8
  store i8 %i.bjr, ptr %i.bjm, align 1, !tbaa !168
  %i.bjs = getelementptr inbounds nuw i8, ptr %i.bdf, i64 %.230.i.i132
  %i.bjt = getelementptr inbounds nuw i8, ptr %i.bjs, i64 3 ; 2 uses
  %i.bju = load i8, ptr %i.bjt, align 1, !tbaa !168
  %i.bjv = zext i8 %i.bju to i64
  %i.bjw = getelementptr inbounds nuw [2 x i8], ptr %i.bdq, i64 %i.bjv
  %i.bjx = load i16, ptr %i.bjw, align 2, !tbaa !195
  %i.bjy = trunc i16 %i.bjx to i8
  store i8 %i.bjy, ptr %i.bjt, align 1, !tbaa !168
  %i.bjz = add nuw i64 %.230.i.i132, 4            ; 2 uses
  %niter981.next.3 = add i64 %niter981, 4         ; 2 uses
  %niter981.ncmp.3 = icmp eq i64 %niter981.next.3, %unroll_iter980
  br i1 %niter981.ncmp.3, label %RemapBlockIdsCommand.exit.i.unr-lcssa, label %.preheader.i.i131, !llvm.loop !91

RemapBlockIdsCommand.exit.i.unr-lcssa:            ; preds = %.preheader.i.i131
  br i1 %lcmp.mod978.not, label %RemapBlockIdsCommand.exit.i, label %.preheader.i.i131.epil.preheader

.preheader.i.i131.epil.preheader:                 ; preds = %RemapBlockIdsCommand.exit.i.unr-lcssa, %.preheader.i.i131.preheader
  %.230.i.i132.epil.init = phi i64 [ 0, %.preheader.i.i131.preheader ], [ %i.bjz, %RemapBlockIdsCommand.exit.i.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod979)
  br label %.preheader.i.i131.epil

.preheader.i.i131.epil:                           ; preds = %.preheader.i.i131.epil, %.preheader.i.i131.epil.preheader
  %.230.i.i132.epil = phi i64 [ %i.bkg, %.preheader.i.i131.epil ], [ %.230.i.i132.epil.init, %.preheader.i.i131.epil.preheader ] ; 2 uses
  %epil.iter977 = phi i64 [ %epil.iter977.next, %.preheader.i.i131.epil ], [ 0, %.preheader.i.i131.epil.preheader ]
  %i.bka = getelementptr inbounds nuw i8, ptr %i.bdf, i64 %.230.i.i132.epil ; 2 uses
  %i.bkb = load i8, ptr %i.bka, align 1, !tbaa !168
  %i.bkc = zext i8 %i.bkb to i64
  %i.bkd = getelementptr inbounds nuw [2 x i8], ptr %i.bdq, i64 %i.bkc
  %i.bke = load i16, ptr %i.bkd, align 2, !tbaa !195
  %i.bkf = trunc i16 %i.bke to i8
  store i8 %i.bkf, ptr %i.bka, align 1, !tbaa !168
  %i.bkg = add nuw i64 %.230.i.i132.epil, 1
  %epil.iter977.next = add i64 %epil.iter977, 1   ; 2 uses
  %epil.iter977.cmp.not = icmp eq i64 %epil.iter977.next, %xtraiter976
  br i1 %epil.iter977.cmp.not, label %RemapBlockIdsCommand.exit.i, label %.preheader.i.i131.epil, !llvm.loop !92

RemapBlockIdsCommand.exit.i:                      ; preds = %.preheader.i.i131.epil, %RemapBlockIdsCommand.exit.i.unr-lcssa
  %i.bkh = zext i16 %.124.i.i128.lcssa to i64     ; 3 uses
  %.not.i164.i134 = icmp eq i16 %.124.i.i128.lcssa, 0
  br i1 %.not.i164.i134, label %ClearHistogramsCommand.exit.i.i.preheader, label %.lr.ph.i165.i135.preheader

.lr.ph.i165.i135.preheader:                       ; preds = %RemapBlockIdsCommand.exit.i
  %xtraiter982 = and i64 %i.bkh, 3                ; 3 uses
  %i.bki = icmp ult i16 %.124.i.i128.lcssa, 4
  br i1 %i.bki, label %.lr.ph.i165.i135.epil.preheader, label %.lr.ph.i165.i135.preheader.new

.lr.ph.i165.i135.preheader.new:                   ; preds = %.lr.ph.i165.i135.preheader
  %unroll_iter986 = and i64 %i.bkh, 65532
  br label %.lr.ph.i165.i135

.lr.ph.i165.i135:                                 ; preds = %.lr.ph.i165.i135, %.lr.ph.i165.i135.preheader.new
  %.0.i9.i.i136 = phi i64 [ 0, %.lr.ph.i165.i135.preheader.new ], [ %i.bku, %.lr.ph.i165.i135 ] ; 5 uses
  %niter987 = phi i64 [ 0, %.lr.ph.i165.i135.preheader.new ], [ %niter987.next.3, %.lr.ph.i165.i135 ]
  %i.bkj = getelementptr inbounds nuw [2832 x i8], ptr %i.ahh, i64 %.0.i9.i.i136 ; 2 uses
  %i.bkk = getelementptr inbounds nuw i8, ptr %i.bkj, i64 2824
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2824) %i.bkj, i8 0, i64 2824, i1 false)
  store double +inf, ptr %i.bkk, align 8, !tbaa !204
  %i.bkl = getelementptr inbounds nuw [2832 x i8], ptr %i.ahh, i64 %.0.i9.i.i136 ; 2 uses
  %i.bkm = getelementptr inbounds nuw i8, ptr %i.bkl, i64 2832
  %i.bkn = getelementptr inbounds nuw i8, ptr %i.bkl, i64 5656
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2824) %i.bkm, i8 0, i64 2824, i1 false)
end_hunk_1
begin_hunk_2_@BrotliSplitBlock:bb.a
bb.hi:                                            ; preds = %bb.hh
  %i.cyn = getelementptr inbounds nuw [8 x i8], ptr @kBrotliLog2Table, i64 %i.cyk
  %i.cyo = load double, ptr %i.cyn, align 8, !tbaa !194
  br label %BitCost.exit.i.i270

bb.hj:                                            ; preds = %bb.hh
  %i.cyp = uitofp i32 %i.cyj to double
  %i.cyq = tail call double @log2(double noundef %i.cyp) #8
  br label %BitCost.exit.i.i270

BitCost.exit.i.i270:                              ; preds = %bb.hj, %bb.hi, %bb.hg
  %i.cyr = phi double [ -2.000000e+00, %bb.hg ], [ %i.cyo, %bb.hi ], [ %i.cyq, %bb.hj ]
  %i.cys = fsub double %i.cyi, %i.cyr
  %i.cyt = getelementptr [8 x i8], ptr %i.cyg, i64 %.0114132.i.i268
  store double %i.cys, ptr %i.cyt, align 8, !tbaa !194
  %i.cyu = add nuw nsw i64 %.0114132.i.i268, 1    ; 2 uses
  %exitcond145.not.i.i271 = icmp eq i64 %i.cyu, %.1180.i260
  br i1 %exitcond145.not.i.i271, label %.loopexit129.i.i272, label %bb.hg, !llvm.loop !127

bb.hk:                                            ; preds = %.loopexit129.i.i272
  %i.cyv = shl nuw nsw i64 %.1180.i260, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.cxc, i8 0, i64 %i.cyv, i1 false)
  %i.cyw = mul i64 %i.cxq, %.1
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.cxf, i8 0, i64 %i.cyw, i1 false)
  %xtraiter1030 = and i64 %.1180.i260, 1
  %unroll_iter1036 = and i64 %.1180.i260, -2
  %lcmp.mod1032.not = icmp eq i64 %xtraiter1030, 0
  %lcmp.mod1035 = trunc i64 %.1180.i260 to i1
  br label %.new1027

.new1027:                                         ; preds = %bb.hu, %bb.hk
  %.0117137.i.i274 = phi i64 [ 0, %bb.hk ], [ %i.das, %bb.hu ] ; 6 uses
  %i.cyx = getelementptr inbounds nuw [2 x i8], ptr %i.byo, i64 %.0117137.i.i274
  %i.cyy = load i16, ptr %i.cyx, align 2, !tbaa !195
  %i.cyz = zext i16 %i.cyy to i64
  %i.cza = mul nuw nsw i64 %.1180.i260, %i.cyz
  %i.czb = getelementptr inbounds nuw [8 x i8], ptr %i.cxa, i64 %i.cza ; 3 uses
  %i.czc = getelementptr inbounds nuw i8, ptr %i.cww, i64 %.0117137.i.i274 ; 3 uses
  br label %bb.hl

bb.hl:                                            ; preds = %bb.hp, %.new1027
  %.0109135.i.i275 = phi i64 [ 0, %.new1027 ], [ %i.czs, %bb.hp ] ; 5 uses
  %.0112134.i.i276 = phi double [ f0x547D42AEA2879F2E, %.new1027 ], [ %.1113.i.i277.1, %bb.hp ] ; 2 uses
  %niter1037 = phi i64 [ 0, %.new1027 ], [ %niter1037.next.1, %bb.hp ]
  %i.czd = getelementptr inbounds nuw [8 x i8], ptr %i.czb, i64 %.0109135.i.i275
  %i.cze = load double, ptr %i.czd, align 8, !tbaa !194
  %i.czf = getelementptr inbounds nuw [8 x i8], ptr %i.cxc, i64 %.0109135.i.i275 ; 2 uses
  %i.czg = load double, ptr %i.czf, align 8, !tbaa !194
  %i.czh = fadd double %i.cze, %i.czg             ; 3 uses
  store double %i.czh, ptr %i.czf, align 8, !tbaa !194
  %i.czi = fcmp olt double %i.czh, %.0112134.i.i276
  br i1 %i.czi, label %bb.hm, label %bb.hn

bb.hm:                                            ; preds = %bb.hl
  %i.czj = trunc i64 %.0109135.i.i275 to i8
  store i8 %i.czj, ptr %i.czc, align 1, !tbaa !168
  br label %bb.hn

bb.hn:                                            ; preds = %bb.hm, %bb.hl
  %.1113.i.i277 = phi double [ %i.czh, %bb.hm ], [ %.0112134.i.i276, %bb.hl ] ; 2 uses
  %i.czk = or disjoint i64 %.0109135.i.i275, 1    ; 3 uses
  %i.czl = getelementptr inbounds nuw [8 x i8], ptr %i.czb, i64 %i.czk
  %i.czm = load double, ptr %i.czl, align 8, !tbaa !194
  %i.czn = getelementptr inbounds nuw [8 x i8], ptr %i.cxc, i64 %i.czk ; 2 uses
  %i.czo = load double, ptr %i.czn, align 8, !tbaa !194
  %i.czp = fadd double %i.czm, %i.czo             ; 3 uses
  store double %i.czp, ptr %i.czn, align 8, !tbaa !194
  %i.czq = fcmp olt double %i.czp, %.1113.i.i277
  br i1 %i.czq, label %bb.ho, label %bb.hp

bb.ho:                                            ; preds = %bb.hn
  %i.czr = trunc i64 %i.czk to i8
  store i8 %i.czr, ptr %i.czc, align 1, !tbaa !168
  br label %bb.hp

bb.hp:                                            ; preds = %bb.ho, %bb.hn
  %.1113.i.i277.1 = phi double [ %i.czp, %bb.ho ], [ %.1113.i.i277, %bb.hn ] ; 4 uses
  %i.czs = add nuw nsw i64 %.0109135.i.i275, 2    ; 4 uses
  %niter1037.next.1 = add nuw i64 %niter1037, 2   ; 2 uses
  %niter1037.ncmp.1 = icmp eq i64 %niter1037.next.1, %unroll_iter1036
  br i1 %niter1037.ncmp.1, label %.unr-lcssa1028, label %bb.hl, !llvm.loop !128

.unr-lcssa1028:                                   ; preds = %bb.hp
  br i1 %lcmp.mod1032.not, label %.epilog-lcssa1033, label %.epil.preheader1029

.epil.preheader1029:                              ; preds = %.unr-lcssa1028
  tail call void @llvm.assume(i1 %lcmp.mod1035)
  %i.czt = getelementptr inbounds nuw [8 x i8], ptr %i.czb, i64 %i.czs
  %i.czu = load double, ptr %i.czt, align 8, !tbaa !194
  %i.czv = getelementptr inbounds nuw [8 x i8], ptr %i.cxc, i64 %i.czs ; 2 uses
  %i.czw = load double, ptr %i.czv, align 8, !tbaa !194
  %i.czx = fadd double %i.czu, %i.czw             ; 3 uses
  store double %i.czx, ptr %i.czv, align 8, !tbaa !194
  %i.czy = fcmp olt double %i.czx, %.1113.i.i277.1
  br i1 %i.czy, label %bb.hq, label %.epilog-lcssa1033

bb.hq:                                            ; preds = %.epil.preheader1029
  %i.czz = trunc i64 %i.czs to i8
  store i8 %i.czz, ptr %i.czc, align 1, !tbaa !168
  br label %.epilog-lcssa1033

.epilog-lcssa1033:                                ; preds = %.epil.preheader1029, %bb.hq, %.unr-lcssa1028
  %.1113.i.i277.lcssa = phi double [ %.1113.i.i277.1, %.unr-lcssa1028 ], [ %i.czx, %bb.hq ], [ %.1113.i.i277.1, %.epil.preheader1029 ]
  %i.daa = mul i64 %.0117137.i.i274, %i.cxq
  %i.dab = icmp ult i64 %.0117137.i.i274, 2000
  %i.dac = uitofp nneg i64 %.0117137.i.i274 to double
  %i.dad = tail call nnan double @llvm.fmuladd.f64(double %i.dac, double f0x3F02599ED7C6FBD3, double 7.700000e-01)
  %i.dae = fmul nnan double %i.dad, 1.460000e+01
  %.0111.i.i279 = select i1 %i.dab, double %i.dae, double 1.460000e+01 ; 2 uses
  %i.daf = getelementptr i8, ptr %i.cxf, i64 %i.daa
  br label %bb.hr

bb.hr:                                            ; preds = %bb.ht, %.epilog-lcssa1033
  %.1110136.i.i280 = phi i64 [ 0, %.epilog-lcssa1033 ], [ %i.dar, %bb.ht ] ; 4 uses
  %i.dag = getelementptr inbounds nuw [8 x i8], ptr %i.cxc, i64 %.1110136.i.i280 ; 3 uses
  %i.dah = load double, ptr %i.dag, align 8, !tbaa !194
  %i.dai = fsub double %i.dah, %.1113.i.i277.lcssa ; 2 uses
  store double %i.dai, ptr %i.dag, align 8, !tbaa !194
  %i.daj = fcmp ult double %i.dai, %.0111.i.i279
  br i1 %i.daj, label %bb.ht, label %bb.hs

bb.hs:                                            ; preds = %bb.hr
  %i.dak = trunc i64 %.1110136.i.i280 to i8
  %i.dal = and i8 %i.dak, 7
  %i.dam = shl nuw i8 1, %i.dal
  store double %.0111.i.i279, ptr %i.dag, align 8, !tbaa !194
  %i.dan = lshr i64 %.1110136.i.i280, 3
  %i.dao = getelementptr i8, ptr %i.daf, i64 %i.dan ; 2 uses
  %i.dap = load i8, ptr %i.dao, align 1, !tbaa !168
  %i.daq = or i8 %i.dap, %i.dam
  store i8 %i.daq, ptr %i.dao, align 1, !tbaa !168
  br label %bb.ht

bb.ht:                                            ; preds = %bb.hs, %bb.hr
  %i.dar = add nuw nsw i64 %.1110136.i.i280, 1    ; 2 uses
  %exitcond147.not.i.i281 = icmp eq i64 %i.dar, %.1180.i260
  br i1 %exitcond147.not.i.i281, label %bb.hu, label %bb.hr, !llvm.loop !129

bb.hu:                                            ; preds = %bb.ht
  %i.das = add nuw i64 %.0117137.i.i274, 1        ; 2 uses
  %exitcond148.not.i.i282 = icmp eq i64 %i.das, %.1
  br i1 %exitcond148.not.i.i282, label %.lr.ph.preheader.i.i283, label %.new1027, !llvm.loop !130

.lr.ph.preheader.i.i283:                          ; preds = %bb.hu
  %i.dat = load i8, ptr %i.cxm, align 1, !tbaa !168
  %i.dau = mul i64 %i.cxq, %i.cxl
  br label %.lr.ph.i.i284

.lr.ph.i.i284:                                    ; preds = %bb.hw, %.lr.ph.preheader.i.i283
  %.0142.i.i285 = phi i8 [ %.1.i159.i293, %bb.hw ], [ %i.dat, %.lr.ph.preheader.i.i283 ] ; 4 uses
  %.0107141.i.i286 = phi i64 [ %i.day, %bb.hw ], [ %i.dau, %.lr.ph.preheader.i.i283 ]
  %.1118140.i.i287 = phi i64 [ %i.dax, %bb.hw ], [ %i.cxl, %.lr.ph.preheader.i.i283 ]
  %.0119139.i.i288 = phi i64 [ %.1120.i.i292, %bb.hw ], [ 1, %.lr.ph.preheader.i.i283 ] ; 2 uses
  %i.dav = and i8 %.0142.i.i285, 7
  %i.daw = shl nuw i8 1, %i.dav
  %i.dax = add i64 %.1118140.i.i287, -1           ; 4 uses
  %i.day = sub i64 %.0107141.i.i286, %i.cxq       ; 2 uses
  %i.daz = lshr i8 %.0142.i.i285, 3
  %i.dba = zext nneg i8 %i.daz to i64
  %i.dbb = getelementptr i8, ptr %i.cxf, i64 %i.day
  %i.dbc = getelementptr i8, ptr %i.dbb, i64 %i.dba
  %i.dbd = load i8, ptr %i.dbc, align 1, !tbaa !168
  %i.dbe = and i8 %i.dbd, %i.daw
  %.not125.i.i289 = icmp eq i8 %i.dbe, 0
  br i1 %.not125.i.i289, label %bb.hw, label %bb.hv

bb.hv:                                            ; preds = %.lr.ph.i.i284
  %i.dbf = getelementptr inbounds nuw i8, ptr %i.cww, i64 %i.dax
  %i.dbg = load i8, ptr %i.dbf, align 1, !tbaa !168 ; 2 uses
  %.not126.i.i290 = icmp ne i8 %.0142.i.i285, %i.dbg
  %i.dbh = zext i1 %.not126.i.i290 to i64
  %spec.select.i158.i291 = add i64 %.0119139.i.i288, %i.dbh
  br label %bb.hw

bb.hw:                                            ; preds = %bb.hv, %.lr.ph.i.i284
  %.1120.i.i292 = phi i64 [ %.0119139.i.i288, %.lr.ph.i.i284 ], [ %spec.select.i158.i291, %bb.hv ] ; 2 uses
  %.1.i159.i293 = phi i8 [ %.0142.i.i285, %.lr.ph.i.i284 ], [ %i.dbg, %bb.hv ] ; 2 uses
  %i.dbi = getelementptr inbounds nuw i8, ptr %i.cww, i64 %i.dax
  store i8 %.1.i159.i293, ptr %i.dbi, align 1, !tbaa !168
  %.not124.i.i294 = icmp eq i64 %i.dax, 0
  br i1 %.not124.i.i294, label %FindBlocksDistance.exit.i, label %.lr.ph.i.i284, !llvm.loop !131

FindBlocksDistance.exit.i:                        ; preds = %bb.hw, %.preheader.preheader.i.i444
  %.0108.i.i295 = phi i64 [ 1, %.preheader.preheader.i.i444 ], [ %.1120.i.i292, %bb.hw ] ; 19 uses
  %.not.i160.i296 = icmp eq i64 %.1180.i260, 0
  br i1 %.not.i160.i296, label %.preheader26.i.i300.preheader, label %iter.check828

iter.check828:                                    ; preds = %FindBlocksDistance.exit.i
  %min.iters.check817 = icmp ult i64 %.1180.i260, 4
  br i1 %min.iters.check817, label %.lr.ph.i161.i297.preheader, label %vector.main.loop.iter.check818

vector.main.loop.iter.check818:                   ; preds = %iter.check828
  %min.iters.check819 = icmp ult i64 %.1180.i260, 16
  br i1 %min.iters.check819, label %vec.epilog.ph832, label %vector.ph820

vector.ph820:                                     ; preds = %vector.main.loop.iter.check818
  %i.dbj = and i64 %.1180.i260, 12
  %n.vec821 = and i64 %.1180.i260, -16            ; 4 uses
  br label %vector.body822

vector.body822:                                   ; preds = %vector.body822, %vector.ph820
  %index823 = phi i64 [ 0, %vector.ph820 ], [ %index.next824, %vector.body822 ] ; 2 uses
  %i.dbk = getelementptr inbounds nuw [2 x i8], ptr %i.cxh, i64 %index823 ; 2 uses
  %i.dbl = getelementptr inbounds nuw i8, ptr %i.dbk, i64 16
  store <8 x i16> splat (i16 256), ptr %i.dbk, align 2, !tbaa !195
  store <8 x i16> splat (i16 256), ptr %i.dbl, align 2, !tbaa !195
  %index.next824 = add nuw i64 %index823, 16      ; 2 uses
  %i.dbm = icmp eq i64 %index.next824, %n.vec821
  br i1 %i.dbm, label %middle.block825, label %vector.body822, !llvm.loop !132

middle.block825:                                  ; preds = %vector.body822
  %cmp.n826 = icmp eq i64 %.1180.i260, %n.vec821
  br i1 %cmp.n826, label %.preheader26.i.i300.preheader, label %vec.epilog.iter.check830

vec.epilog.iter.check830:                         ; preds = %middle.block825
  %min.epilog.iters.check831 = icmp eq i64 %i.dbj, 0
  br i1 %min.epilog.iters.check831, label %.lr.ph.i161.i297.preheader, label %vec.epilog.ph832, !prof !196

vec.epilog.ph832:                                 ; preds = %vector.main.loop.iter.check818, %vec.epilog.iter.check830
  %vec.epilog.resume.val827 = phi i64 [ %n.vec821, %vec.epilog.iter.check830 ], [ 0, %vector.main.loop.iter.check818 ]
  %n.vec833 = and i64 %.1180.i260, -4             ; 3 uses
  br label %vec.epilog.vector.body834

vec.epilog.vector.body834:                        ; preds = %vec.epilog.vector.body834, %vec.epilog.ph832
  %index835 = phi i64 [ %vec.epilog.resume.val827, %vec.epilog.ph832 ], [ %index.next836, %vec.epilog.vector.body834 ] ; 2 uses
  %i.dbn = getelementptr inbounds nuw [2 x i8], ptr %i.cxh, i64 %index835
  store <4 x i16> splat (i16 256), ptr %i.dbn, align 2, !tbaa !195
  %index.next836 = add nuw i64 %index835, 4       ; 2 uses
  %i.dbo = icmp eq i64 %index.next836, %n.vec833
  br i1 %i.dbo, label %vec.epilog.middle.block837, label %vec.epilog.vector.body834, !llvm.loop !133

vec.epilog.middle.block837:                       ; preds = %vec.epilog.vector.body834
  %cmp.n838 = icmp eq i64 %.1180.i260, %n.vec833
  br i1 %cmp.n838, label %.preheader26.i.i300.preheader, label %.lr.ph.i161.i297.preheader

.lr.ph.i161.i297.preheader:                       ; preds = %iter.check828, %vec.epilog.iter.check830, %vec.epilog.middle.block837
  %.027.i.i298.ph = phi i64 [ 0, %iter.check828 ], [ %n.vec821, %vec.epilog.iter.check830 ], [ %n.vec833, %vec.epilog.middle.block837 ]
  br label %.lr.ph.i161.i297

.lr.ph.i161.i297:                                 ; preds = %.lr.ph.i161.i297.preheader, %.lr.ph.i161.i297
  %.027.i.i298 = phi i64 [ %i.dbq, %.lr.ph.i161.i297 ], [ %.027.i.i298.ph, %.lr.ph.i161.i297.preheader ] ; 2 uses
  %i.dbp = getelementptr inbounds nuw [2 x i8], ptr %i.cxh, i64 %.027.i.i298
  store i16 256, ptr %i.dbp, align 2, !tbaa !195
  %i.dbq = add nuw nsw i64 %.027.i.i298, 1        ; 2 uses
  %exitcond.not.i162.i299 = icmp eq i64 %i.dbq, %.1180.i260
  br i1 %exitcond.not.i162.i299, label %.preheader26.i.i300.preheader, label %.lr.ph.i161.i297, !llvm.loop !134

.preheader26.i.i300.preheader:                    ; preds = %.lr.ph.i161.i297, %middle.block825, %vec.epilog.middle.block837, %FindBlocksDistance.exit.i
  br i1 %i.cxn, label %.preheader26.i.i300.epil.preheader, label %.preheader26.i.i300

.preheader26.i.i300:                              ; preds = %.preheader26.i.i300.preheader, %bb.hz
  %.129.i.i301 = phi i64 [ %i.dcg, %bb.hz ], [ 0, %.preheader26.i.i300.preheader ] ; 3 uses
  %.02328.i.i302 = phi i16 [ %.124.i.i303.1, %bb.hz ], [ 0, %.preheader26.i.i300.preheader ] ; 3 uses
  %niter1045 = phi i64 [ %niter1045.next.1, %bb.hz ], [ 0, %.preheader26.i.i300.preheader ]
  %i.dbr = getelementptr inbounds nuw i8, ptr %i.cww, i64 %.129.i.i301
  %i.dbs = load i8, ptr %i.dbr, align 1, !tbaa !168
  %i.dbt = zext i8 %i.dbs to i64
  %i.dbu = getelementptr inbounds nuw [2 x i8], ptr %i.cxh, i64 %i.dbt ; 2 uses
  %i.dbv = load i16, ptr %i.dbu, align 2, !tbaa !195
  %i.dbw = icmp eq i16 %i.dbv, 256
  br i1 %i.dbw, label %bb.hx, label %.preheader26.i.i300.1

bb.hx:                                            ; preds = %.preheader26.i.i300
  %i.dbx = add i16 %.02328.i.i302, 1
  store i16 %.02328.i.i302, ptr %i.dbu, align 2, !tbaa !195
  br label %.preheader26.i.i300.1

.preheader26.i.i300.1:                            ; preds = %bb.hx, %.preheader26.i.i300
  %.124.i.i303 = phi i16 [ %i.dbx, %bb.hx ], [ %.02328.i.i302, %.preheader26.i.i300 ] ; 3 uses
  %i.dby = getelementptr inbounds nuw i8, ptr %i.cww, i64 %.129.i.i301
  %i.dbz = getelementptr inbounds nuw i8, ptr %i.dby, i64 1
  %i.dca = load i8, ptr %i.dbz, align 1, !tbaa !168
  %i.dcb = zext i8 %i.dca to i64
  %i.dcc = getelementptr inbounds nuw [2 x i8], ptr %i.cxh, i64 %i.dcb ; 2 uses
  %i.dcd = load i16, ptr %i.dcc, align 2, !tbaa !195
  %i.dce = icmp eq i16 %i.dcd, 256
  br i1 %i.dce, label %bb.hy, label %bb.hz

bb.hy:                                            ; preds = %.preheader26.i.i300.1
  %i.dcf = add i16 %.124.i.i303, 1
  store i16 %.124.i.i303, ptr %i.dcc, align 2, !tbaa !195
  br label %bb.hz

bb.hz:                                            ; preds = %bb.hy, %.preheader26.i.i300.1
  %.124.i.i303.1 = phi i16 [ %i.dcf, %bb.hy ], [ %.124.i.i303, %.preheader26.i.i300.1 ] ; 3 uses
  %i.dcg = add nuw i64 %.129.i.i301, 2            ; 2 uses
  %niter1045.next.1 = add i64 %niter1045, 2       ; 2 uses
  %niter1045.ncmp.1 = icmp eq i64 %niter1045.next.1, %unroll_iter1044
  br i1 %niter1045.ncmp.1, label %.preheader.i.i306.preheader.unr-lcssa, label %.preheader26.i.i300, !llvm.loop !135

.preheader.i.i306.preheader.unr-lcssa:            ; preds = %bb.hz
  br i1 %lcmp.mod1041.not, label %.preheader.i.i306.preheader.new, label %.preheader26.i.i300.epil.preheader

.preheader26.i.i300.epil.preheader:               ; preds = %.preheader.i.i306.preheader.unr-lcssa, %.preheader26.i.i300.preheader
  %.129.i.i301.epil.init = phi i64 [ 0, %.preheader26.i.i300.preheader ], [ %i.dcg, %.preheader.i.i306.preheader.unr-lcssa ]
  %.02328.i.i302.epil.init = phi i16 [ 0, %.preheader26.i.i300.preheader ], [ %.124.i.i303.1, %.preheader.i.i306.preheader.unr-lcssa ] ; 3 uses
  tail call void @llvm.assume(i1 %lcmp.mod1043)
  %i.dch = getelementptr inbounds nuw i8, ptr %i.cww, i64 %.129.i.i301.epil.init
  %i.dci = load i8, ptr %i.dch, align 1, !tbaa !168
  %i.dcj = zext i8 %i.dci to i64
  %i.dck = getelementptr inbounds nuw [2 x i8], ptr %i.cxh, i64 %i.dcj ; 2 uses
  %i.dcl = load i16, ptr %i.dck, align 2, !tbaa !195
  %i.dcm = icmp eq i16 %i.dcl, 256
  br i1 %i.dcm, label %bb.ia, label %.preheader.i.i306.preheader.new

bb.ia:                                            ; preds = %.preheader26.i.i300.epil.preheader
  %i.dcn = add i16 %.02328.i.i302.epil.init, 1
  store i16 %.02328.i.i302.epil.init, ptr %i.dck, align 2, !tbaa !195
  br label %.preheader.i.i306.preheader.new

.preheader.i.i306.preheader.new:                  ; preds = %.preheader.i.i306.preheader.unr-lcssa, %bb.ia, %.preheader26.i.i300.epil.preheader
  %.124.i.i303.lcssa = phi i16 [ %.124.i.i303.1, %.preheader.i.i306.preheader.unr-lcssa ], [ %i.dcn, %bb.ia ], [ %.02328.i.i302.epil.init, %.preheader26.i.i300.epil.preheader ] ; 3 uses
  br label %.preheader.i.i306

.preheader.i.i306:                                ; preds = %.preheader.i.i306, %.preheader.i.i306.preheader.new
  %.230.i.i307 = phi i64 [ 0, %.preheader.i.i306.preheader.new ], [ %i.ddp, %.preheader.i.i306 ] ; 5 uses
  %niter1052 = phi i64 [ 0, %.preheader.i.i306.preheader.new ], [ %niter1052.next.3, %.preheader.i.i306 ]
  %i.dco = getelementptr inbounds nuw i8, ptr %i.cww, i64 %.230.i.i307 ; 2 uses
  %i.dcp = load i8, ptr %i.dco, align 1, !tbaa !168
  %i.dcq = zext i8 %i.dcp to i64
  %i.dcr = getelementptr inbounds nuw [2 x i8], ptr %i.cxh, i64 %i.dcq
  %i.dcs = load i16, ptr %i.dcr, align 2, !tbaa !195
  %i.dct = trunc i16 %i.dcs to i8
  store i8 %i.dct, ptr %i.dco, align 1, !tbaa !168
  %i.dcu = getelementptr inbounds nuw i8, ptr %i.cww, i64 %.230.i.i307
  %i.dcv = getelementptr inbounds nuw i8, ptr %i.dcu, i64 1 ; 2 uses
  %i.dcw = load i8, ptr %i.dcv, align 1, !tbaa !168
  %i.dcx = zext i8 %i.dcw to i64
  %i.dcy = getelementptr inbounds nuw [2 x i8], ptr %i.cxh, i64 %i.dcx
  %i.dcz = load i16, ptr %i.dcy, align 2, !tbaa !195
  %i.dda = trunc i16 %i.dcz to i8
  store i8 %i.dda, ptr %i.dcv, align 1, !tbaa !168
  %i.ddb = getelementptr inbounds nuw i8, ptr %i.cww, i64 %.230.i.i307
  %i.ddc = getelementptr inbounds nuw i8, ptr %i.ddb, i64 2 ; 2 uses
  %i.ddd = load i8, ptr %i.ddc, align 1, !tbaa !168
  %i.dde = zext i8 %i.ddd to i64
  %i.ddf = getelementptr inbounds nuw [2 x i8], ptr %i.cxh, i64 %i.dde
  %i.ddg = load i16, ptr %i.ddf, align 2, !tbaa !195
  %i.ddh = trunc i16 %i.ddg to i8
  store i8 %i.ddh, ptr %i.ddc, align 1, !tbaa !168
  %i.ddi = getelementptr inbounds nuw i8, ptr %i.cww, i64 %.230.i.i307
  %i.ddj = getelementptr inbounds nuw i8, ptr %i.ddi, i64 3 ; 2 uses
  %i.ddk = load i8, ptr %i.ddj, align 1, !tbaa !168
  %i.ddl = zext i8 %i.ddk to i64
  %i.ddm = getelementptr inbounds nuw [2 x i8], ptr %i.cxh, i64 %i.ddl
  %i.ddn = load i16, ptr %i.ddm, align 2, !tbaa !195
  %i.ddo = trunc i16 %i.ddn to i8
  store i8 %i.ddo, ptr %i.ddj, align 1, !tbaa !168
  %i.ddp = add nuw i64 %.230.i.i307, 4            ; 2 uses
  %niter1052.next.3 = add i64 %niter1052, 4       ; 2 uses
  %niter1052.ncmp.3 = icmp eq i64 %niter1052.next.3, %unroll_iter1051
  br i1 %niter1052.ncmp.3, label %RemapBlockIdsDistance.exit.i.unr-lcssa, label %.preheader.i.i306, !llvm.loop !136

RemapBlockIdsDistance.exit.i.unr-lcssa:           ; preds = %.preheader.i.i306
  br i1 %lcmp.mod1049.not, label %RemapBlockIdsDistance.exit.i, label %.preheader.i.i306.epil.preheader

.preheader.i.i306.epil.preheader:                 ; preds = %RemapBlockIdsDistance.exit.i.unr-lcssa
  tail call void @llvm.assume(i1 %lcmp.mod1050)
  br label %.preheader.i.i306.epil

.preheader.i.i306.epil:                           ; preds = %.preheader.i.i306.epil, %.preheader.i.i306.epil.preheader
  %.230.i.i307.epil = phi i64 [ %i.ddw, %.preheader.i.i306.epil ], [ %i.ddp, %.preheader.i.i306.epil.preheader ] ; 2 uses
  %epil.iter1048 = phi i64 [ %epil.iter1048.next, %.preheader.i.i306.epil ], [ 0, %.preheader.i.i306.epil.preheader ]
  %i.ddq = getelementptr inbounds nuw i8, ptr %i.cww, i64 %.230.i.i307.epil ; 2 uses
  %i.ddr = load i8, ptr %i.ddq, align 1, !tbaa !168
  %i.dds = zext i8 %i.ddr to i64
  %i.ddt = getelementptr inbounds nuw [2 x i8], ptr %i.cxh, i64 %i.dds
  %i.ddu = load i16, ptr %i.ddt, align 2, !tbaa !195
  %i.ddv = trunc i16 %i.ddu to i8
  store i8 %i.ddv, ptr %i.ddq, align 1, !tbaa !168
  %i.ddw = add nuw i64 %.230.i.i307.epil, 1
  %epil.iter1048.next = add i64 %epil.iter1048, 1 ; 2 uses
  %epil.iter1048.cmp.not = icmp eq i64 %epil.iter1048.next, %xtraiter1047
  br i1 %epil.iter1048.cmp.not, label %RemapBlockIdsDistance.exit.i, label %.preheader.i.i306.epil, !llvm.loop !137

RemapBlockIdsDistance.exit.i:                     ; preds = %.preheader.i.i306.epil, %RemapBlockIdsDistance.exit.i.unr-lcssa
  %i.ddx = zext i16 %.124.i.i303.lcssa to i64     ; 3 uses
  %.not.i164.i309 = icmp eq i16 %.124.i.i303.lcssa, 0
  br i1 %.not.i164.i309, label %ClearHistogramsDistance.exit.i.i.preheader, label %.lr.ph.i165.i310.preheader

.lr.ph.i165.i310.preheader:                       ; preds = %RemapBlockIdsDistance.exit.i
  %xtraiter1053 = and i64 %i.ddx, 3               ; 3 uses
  %i.ddy = icmp ult i16 %.124.i.i303.lcssa, 4
  br i1 %i.ddy, label %.lr.ph.i165.i310.epil.preheader, label %.lr.ph.i165.i310.preheader.new

.lr.ph.i165.i310.preheader.new:                   ; preds = %.lr.ph.i165.i310.preheader
  %unroll_iter1057 = and i64 %i.ddx, 65532
  br label %.lr.ph.i165.i310

.lr.ph.i165.i310:                                 ; preds = %.lr.ph.i165.i310, %.lr.ph.i165.i310.preheader.new
  %.0.i9.i.i311 = phi i64 [ 0, %.lr.ph.i165.i310.preheader.new ], [ %i.dek, %.lr.ph.i165.i310 ] ; 5 uses
  %niter1058 = phi i64 [ 0, %.lr.ph.i165.i310.preheader.new ], [ %niter1058.next.3, %.lr.ph.i165.i310 ]
  %i.ddz = getelementptr inbounds nuw [2192 x i8], ptr %i.cay, i64 %.0.i9.i.i311 ; 2 uses
  %i.dea = getelementptr inbounds nuw i8, ptr %i.ddz, i64 2184
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2184) %i.ddz, i8 0, i64 2184, i1 false)
  store double +inf, ptr %i.dea, align 8, !tbaa !211
  %i.deb = getelementptr inbounds nuw [2192 x i8], ptr %i.cay, i64 %.0.i9.i.i311 ; 2 uses
  %i.dec = getelementptr inbounds nuw i8, ptr %i.deb, i64 2192
  %i.ded = getelementptr inbounds nuw i8, ptr %i.deb, i64 4376
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2184) %i.dec, i8 0, i64 2184, i1 false)
  store double +inf, ptr %i.ded, align 8, !tbaa !211
end_hunk_2
