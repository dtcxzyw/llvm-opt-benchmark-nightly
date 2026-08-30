Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/node/original/gc-tracer?download=true
inline.NumInlined: 1245
inline.NumDeleted: 558
loop-unroll.NumCompletelyUnrolled: 10
loop-unroll.NumRuntimeUnrolled: 30
loop-unroll.NumUnrolled: 40
begin_hunk_0_@_ZNK2v88internal8GCTracer8PrintNVPEv:bb.a
  %.sroa.speculated.i.i = select i1 %i.ge, double f0x41D0000000000000, double %.val.i
  %i.gf = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.dh, ptr noundef nonnull @.str.214, i64 noundef 1) #19 ; 0 uses
  call void @_ZN4heap4base17UnsafeJsonEmitter18emit_property_nameEPKc(ptr noundef nonnull align 8 dereferenceable(400) %i.da, ptr noundef nonnull @.str.50) #19
  %i.gg = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.dh, double noundef %.sroa.speculated.i.i) #19 ; 0 uses
  store i8 0, ptr %i.dc, align 8
  %i.gh = load ptr, ptr %0, align 8
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gh, i64 1824
  %i.gj = load double, ptr %i.gi, align 8
  %i.gk = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.dh, ptr noundef nonnull @.str.214, i64 noundef 1) #19 ; 0 uses
  call void @_ZN4heap4base17UnsafeJsonEmitter18emit_property_nameEPKc(ptr noundef nonnull align 8 dereferenceable(400) %i.da, ptr noundef nonnull @.str.51) #19
  %i.gl = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.dh, double noundef %i.gj) #19 ; 0 uses
  store i8 0, ptr %i.dc, align 8
  %i.gm = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.dh, ptr noundef nonnull @.str.214, i64 noundef 1) #19 ; 0 uses
  call void @_ZN4heap4base17UnsafeJsonEmitter18emit_property_nameEPKc(ptr noundef nonnull align 8 dereferenceable(400) %i.da, ptr noundef nonnull @.str.52) #19
  %i.gn = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.dh, i64 noundef %i.l) #19 ; 0 uses
  store i8 0, ptr %i.dc, align 8
  %i.go = load ptr, ptr %0, align 8
  %i.gp = getelementptr inbounds nuw i8, ptr %i.go, i64 1784
  %i.gq = load i64, ptr %i.gp, align 8
  %i.gr = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.dh, ptr noundef nonnull @.str.214, i64 noundef 1) #19 ; 0 uses
  call void @_ZN4heap4base17UnsafeJsonEmitter18emit_property_nameEPKc(ptr noundef nonnull align 8 dereferenceable(400) %i.da, ptr noundef nonnull @.str.53) #19
  %i.gs = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.dh, i64 noundef %i.gq) #19 ; 0 uses
  store i8 0, ptr %i.dc, align 8
  %i.gt = load ptr, ptr %0, align 8
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gt, i64 1808
  %i.gv = load i64, ptr %i.gu, align 8
  %i.gw = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.dh, ptr noundef nonnull @.str.214, i64 noundef 1) #19 ; 0 uses
  call void @_ZN4heap4base17UnsafeJsonEmitter18emit_property_nameEPKc(ptr noundef nonnull align 8 dereferenceable(400) %i.da, ptr noundef nonnull @.str.54) #19
  %i.gx = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.dh, i64 noundef %i.gv) #19 ; 0 uses
  store i8 0, ptr %i.dc, align 8
  %i.gy = load ptr, ptr %0, align 8
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gy, i64 1832
  %i.ha = load i32, ptr %i.gz, align 8
  %i.hb = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.dh, ptr noundef nonnull @.str.214, i64 noundef 1) #19 ; 0 uses
  call void @_ZN4heap4base17UnsafeJsonEmitter18emit_property_nameEPKc(ptr noundef nonnull align 8 dereferenceable(400) %i.da, ptr noundef nonnull @.str.55) #19
  %i.hc = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %i.dh, i32 noundef %i.ha) #19 ; 0 uses
  store i8 0, ptr %i.dc, align 8
  %i.hd = load ptr, ptr %0, align 8
  %i.he = getelementptr inbounds nuw i8, ptr %i.hd, i64 1836
  %i.hf = load i32, ptr %i.he, align 4
  %i.hg = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.dh, ptr noundef nonnull @.str.214, i64 noundef 1) #19 ; 0 uses
  call void @_ZN4heap4base17UnsafeJsonEmitter18emit_property_nameEPKc(ptr noundef nonnull align 8 dereferenceable(400) %i.da, ptr noundef nonnull @.str.56) #19
  %i.hh = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %i.dh, i32 noundef %i.hf) #19 ; 0 uses
  store i8 0, ptr %i.dc, align 8
  %i.hi = load ptr, ptr %0, align 8
  %i.hj = getelementptr inbounds nuw i8, ptr %i.hi, i64 1840
  %i.hk = load i32, ptr %i.hj, align 8
  %i.hl = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.dh, ptr noundef nonnull @.str.214, i64 noundef 1) #19 ; 0 uses
  call void @_ZN4heap4base17UnsafeJsonEmitter18emit_property_nameEPKc(ptr noundef nonnull align 8 dereferenceable(400) %i.da, ptr noundef nonnull @.str.57) #19
  %i.hm = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %i.dh, i32 noundef %i.hk) #19 ; 0 uses
  store i8 0, ptr %i.dc, align 8
  %i.hn = load ptr, ptr %0, align 8
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hn, i64 1792
  %i.hp = load double, ptr %i.ho, align 8
  %i.hq = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.dh, ptr noundef nonnull @.str.214, i64 noundef 1) #19 ; 0 uses
  call void @_ZN4heap4base17UnsafeJsonEmitter18emit_property_nameEPKc(ptr noundef nonnull align 8 dereferenceable(400) %i.da, ptr noundef nonnull @.str.58) #19
  %i.hr = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.dh, double noundef %i.hp) #19 ; 0 uses
  store i8 0, ptr %i.dc, align 8
  %i.hs = getelementptr inbounds nuw i8, ptr %0, i64 4984 ; 10 uses
  %i.ht = getelementptr inbounds nuw i8, ptr %0, i64 5065
  %i.hu = load i8, ptr %i.ht, align 1, !range !5, !noundef !6
  %i.hv = trunc nuw i8 %i.hu to i1                ; 3 uses
  %i.hw = getelementptr inbounds nuw i8, ptr %0, i64 5064
  %i.hx = load i8, ptr %i.hw, align 8             ; 8 uses
  %i.hy = icmp ne i8 %i.hx, 0                     ; 2 uses
  %.not3.i = select i1 %i.hv, i1 true, i1 %i.hy
  br i1 %.not3.i, label %bb.at, label %_ZN4heap4base17UnsafeJsonEmitter1pIdEERS1_PKcT_.exit30

bb.at:                                            ; preds = %_ZN4heap4base17UnsafeJsonEmitter1pIdEERS1_PKcT_.exit27
  br i1 %i.hy, label %.lr.ph.preheader.i.i, label %._crit_edge.i.i

.lr.ph.preheader.i.i:                             ; preds = %bb.at
  %i.hz = zext i8 %i.hx to i64                    ; 2 uses
  %xtraiter = and i8 %i.hx, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i8 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.preheader.i.i, %.lr.ph.i.i.prol
  %indvars.iv.i.i.prol = phi i64 [ %indvars.iv.next.i.i.prol, %.lr.ph.i.i.prol ], [ %i.hz, %.lr.ph.preheader.i.i ] ; 2 uses
  %.0132.i.i.prol = phi double [ %i.ie, %.lr.ph.i.i.prol ], [ 0.000000e+00, %.lr.ph.preheader.i.i ]
  %prol.iter = phi i8 [ %prol.iter.next, %.lr.ph.i.i.prol ], [ 0, %.lr.ph.preheader.i.i ]
  %i.ia = add nuw nsw i64 %indvars.iv.i.i.prol, 4294967295
  %i.ib = and i64 %i.ia, 4294967295
  %i.ic = getelementptr inbounds nuw [8 x i8], ptr %i.hs, i64 %i.ib
  %i.id = load double, ptr %i.ic, align 8
  %i.ie = fadd double %.0132.i.i.prol, %i.id      ; 3 uses
  %indvars.iv.next.i.i.prol = add nsw i64 %indvars.iv.i.i.prol, -1 ; 2 uses
  %prol.iter.next = add i8 %prol.iter, 1          ; 2 uses
  %prol.iter.cmp.not = icmp eq i8 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol, !llvm.loop !19

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.preheader.i.i
  %.lcssa246.unr = phi double [ poison, %.lr.ph.preheader.i.i ], [ %i.ie, %.lr.ph.i.i.prol ]
  %indvars.iv.i.i.unr = phi i64 [ %i.hz, %.lr.ph.preheader.i.i ], [ %indvars.iv.next.i.i.prol, %.lr.ph.i.i.prol ]
  %.0132.i.i.unr = phi double [ 0.000000e+00, %.lr.ph.preheader.i.i ], [ %i.ie, %.lr.ph.i.i.prol ]
  %i.if = icmp ult i8 %i.hx, 4
  br i1 %i.if, label %._crit_edge.i.i, label %.lr.ph.i.i

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i, %bb.at
  %.013.lcssa.i.i = phi double [ 0.000000e+00, %bb.at ], [ %.lcssa246.unr, %.lr.ph.i.i.prol.loopexit ], [ %i.jd, %.lr.ph.i.i ] ; 3 uses
  %i.ig = icmp ult i8 %i.hx, 10
  %or.cond.i.i = and i1 %i.ig, %i.hv
  br i1 %or.cond.i.i, label %.lr.ph6.preheader.i.i, label %"_ZNK2v84base10RingBufferIdLh10EE6ReduceIZNKS_8internal8GCTracer20AverageSurvivalRatioEvE3$_0EEdT_RKd.exit.i"

.lr.ph6.preheader.i.i:                            ; preds = %._crit_edge.i.i
  %narrow = sub nuw nsw i8 10, %i.hx
  %i.ih = zext nneg i8 %narrow to i64             ; 2 uses
  %xtraiter247 = and i64 %i.ih, 3                 ; 3 uses
  %i.ii = add nsw i8 %i.hx, -7
  %i.ij = icmp ult i8 %i.ii, 3
  br i1 %i.ij, label %.lr.ph6.i.i.epil.preheader, label %.lr.ph6.preheader.i.i.new

.lr.ph6.preheader.i.i.new:                        ; preds = %.lr.ph6.preheader.i.i
  %unroll_iter = and i64 %i.ih, 12
  br label %.lr.ph6.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i.3, %.lr.ph.i.i ], [ %indvars.iv.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 5 uses
  %.0132.i.i = phi double [ %i.jd, %.lr.ph.i.i ], [ %.0132.i.i.unr, %.lr.ph.i.i.prol.loopexit ]
  %i.ik = add nuw nsw i64 %indvars.iv.i.i, 4294967295
  %i.il = and i64 %i.ik, 4294967295
  %i.im = getelementptr inbounds nuw [8 x i8], ptr %i.hs, i64 %i.il
  %i.in = load double, ptr %i.im, align 8
  %i.io = fadd double %.0132.i.i, %i.in
  %i.ip = add nsw i64 %indvars.iv.i.i, 4294967294
  %i.iq = and i64 %i.ip, 4294967295
  %i.ir = getelementptr inbounds nuw [8 x i8], ptr %i.hs, i64 %i.iq
  %i.is = load double, ptr %i.ir, align 8
  %i.it = fadd double %i.io, %i.is
  %i.iu = add nsw i64 %indvars.iv.i.i, 4294967293
  %i.iv = and i64 %i.iu, 4294967295
  %i.iw = getelementptr inbounds nuw [8 x i8], ptr %i.hs, i64 %i.iv
  %i.ix = load double, ptr %i.iw, align 8
  %i.iy = fadd double %i.it, %i.ix
  %i.iz = add nsw i64 %indvars.iv.i.i, 4294967292
  %i.ja = and i64 %i.iz, 4294967295
  %i.jb = getelementptr inbounds nuw [8 x i8], ptr %i.hs, i64 %i.ja
  %i.jc = load double, ptr %i.jb, align 8
  %i.jd = fadd double %i.iy, %i.jc                ; 2 uses
  %indvars.iv.next.i.i.3 = add nsw i64 %indvars.iv.i.i, -4 ; 2 uses
  %i.je = and i64 %indvars.iv.next.i.i.3, 255
  %.not.i.i.3 = icmp eq i64 %i.je, 0
  br i1 %.not.i.i.3, label %._crit_edge.i.i, label %.lr.ph.i.i, !llvm.loop !21

.lr.ph6.i.i:                                      ; preds = %.lr.ph6.i.i, %.lr.ph6.preheader.i.i.new
  %indvars.iv10.i.i = phi i64 [ 10, %.lr.ph6.preheader.i.i.new ], [ %indvars.iv.next11.i.i.3, %.lr.ph6.i.i ] ; 5 uses
  %.14.i.i = phi double [ %.013.lcssa.i.i, %.lr.ph6.preheader.i.i.new ], [ %i.jy, %.lr.ph6.i.i ]
  %niter = phi i64 [ 0, %.lr.ph6.preheader.i.i.new ], [ %niter.next.3, %.lr.ph6.i.i ]
  %i.jf = add nuw nsw i64 %indvars.iv10.i.i, 4294967295
  %i.jg = and i64 %i.jf, 4294967295
  %i.jh = getelementptr inbounds nuw [8 x i8], ptr %i.hs, i64 %i.jg
  %i.ji = load double, ptr %i.jh, align 8
  %i.jj = fadd double %.14.i.i, %i.ji
  %i.jk = add nsw i64 %indvars.iv10.i.i, 4294967294
  %i.jl = and i64 %i.jk, 4294967294
  %i.jm = getelementptr inbounds nuw [8 x i8], ptr %i.hs, i64 %i.jl
  %i.jn = load double, ptr %i.jm, align 8
  %i.jo = fadd double %i.jj, %i.jn
  %i.jp = add nsw i64 %indvars.iv10.i.i, 4294967293
  %i.jq = and i64 %i.jp, 4294967295
  %i.jr = getelementptr inbounds nuw [8 x i8], ptr %i.hs, i64 %i.jq
  %i.js = load double, ptr %i.jr, align 8
  %i.jt = fadd double %i.jo, %i.js
  %i.ju = add nsw i64 %indvars.iv10.i.i, 4294967292
  %i.jv = and i64 %i.ju, 4294967294
  %i.jw = getelementptr inbounds nuw [8 x i8], ptr %i.hs, i64 %i.jv
  %i.jx = load double, ptr %i.jw, align 8
  %i.jy = fadd double %i.jt, %i.jx                ; 3 uses
  %indvars.iv.next11.i.i.3 = add nsw i64 %indvars.iv10.i.i, -4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3.not = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3.not, label %"_ZNK2v84base10RingBufferIdLh10EE6ReduceIZNKS_8internal8GCTracer20AverageSurvivalRatioEvE3$_0EEdT_RKd.exit.i.loopexit.unr-lcssa", label %.lr.ph6.i.i, !llvm.loop !22

"_ZNK2v84base10RingBufferIdLh10EE6ReduceIZNKS_8internal8GCTracer20AverageSurvivalRatioEvE3$_0EEdT_RKd.exit.i.loopexit.unr-lcssa": ; preds = %.lr.ph6.i.i
  %lcmp.mod248.not = icmp eq i64 %xtraiter247, 0
  br i1 %lcmp.mod248.not, label %"_ZNK2v84base10RingBufferIdLh10EE6ReduceIZNKS_8internal8GCTracer20AverageSurvivalRatioEvE3$_0EEdT_RKd.exit.i", label %.lr.ph6.i.i.epil.preheader

.lr.ph6.i.i.epil.preheader:                       ; preds = %"_ZNK2v84base10RingBufferIdLh10EE6ReduceIZNKS_8internal8GCTracer20AverageSurvivalRatioEvE3$_0EEdT_RKd.exit.i.loopexit.unr-lcssa", %.lr.ph6.preheader.i.i
  %indvars.iv10.i.i.epil.init = phi i64 [ 10, %.lr.ph6.preheader.i.i ], [ %indvars.iv.next11.i.i.3, %"_ZNK2v84base10RingBufferIdLh10EE6ReduceIZNKS_8internal8GCTracer20AverageSurvivalRatioEvE3$_0EEdT_RKd.exit.i.loopexit.unr-lcssa" ]
  %.14.i.i.epil.init = phi double [ %.013.lcssa.i.i, %.lr.ph6.preheader.i.i ], [ %i.jy, %"_ZNK2v84base10RingBufferIdLh10EE6ReduceIZNKS_8internal8GCTracer20AverageSurvivalRatioEvE3$_0EEdT_RKd.exit.i.loopexit.unr-lcssa" ]
  %lcmp.mod250 = icmp ne i64 %xtraiter247, 0
  call void @llvm.assume(i1 %lcmp.mod250)
  br label %.lr.ph6.i.i.epil

.lr.ph6.i.i.epil:                                 ; preds = %.lr.ph6.i.i.epil, %.lr.ph6.i.i.epil.preheader
  %indvars.iv10.i.i.epil = phi i64 [ %indvars.iv10.i.i.epil.init, %.lr.ph6.i.i.epil.preheader ], [ %indvars.iv.next11.i.i.epil, %.lr.ph6.i.i.epil ] ; 2 uses
  %.14.i.i.epil = phi double [ %.14.i.i.epil.init, %.lr.ph6.i.i.epil.preheader ], [ %i.kd, %.lr.ph6.i.i.epil ]
  %epil.iter = phi i64 [ 0, %.lr.ph6.i.i.epil.preheader ], [ %epil.iter.next, %.lr.ph6.i.i.epil ]
  %i.jz = add nuw nsw i64 %indvars.iv10.i.i.epil, 4294967295
  %i.ka = and i64 %i.jz, 4294967295
  %i.kb = getelementptr inbounds nuw [8 x i8], ptr %i.hs, i64 %i.ka
  %i.kc = load double, ptr %i.kb, align 8
  %i.kd = fadd double %.14.i.i.epil, %i.kc        ; 2 uses
  %indvars.iv.next11.i.i.epil = add nsw i64 %indvars.iv10.i.i.epil, -1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter247
  br i1 %epil.iter.cmp.not, label %"_ZNK2v84base10RingBufferIdLh10EE6ReduceIZNKS_8internal8GCTracer20AverageSurvivalRatioEvE3$_0EEdT_RKd.exit.i", label %.lr.ph6.i.i.epil, !llvm.loop !23

"_ZNK2v84base10RingBufferIdLh10EE6ReduceIZNKS_8internal8GCTracer20AverageSurvivalRatioEvE3$_0EEdT_RKd.exit.i": ; preds = %"_ZNK2v84base10RingBufferIdLh10EE6ReduceIZNKS_8internal8GCTracer20AverageSurvivalRatioEvE3$_0EEdT_RKd.exit.i.loopexit.unr-lcssa", %.lr.ph6.i.i.epil, %._crit_edge.i.i
  %.014.i.i = phi double [ %.013.lcssa.i.i, %._crit_edge.i.i ], [ %i.jy, %"_ZNK2v84base10RingBufferIdLh10EE6ReduceIZNKS_8internal8GCTracer20AverageSurvivalRatioEvE3$_0EEdT_RKd.exit.i.loopexit.unr-lcssa" ], [ %i.kd, %.lr.ph6.i.i.epil ]
  %8 = uitofp i8 %i.hx to double
  %9 = select i1 %i.hv, double 1.000000e+01, double %8
  %i.ke = fdiv double %.014.i.i, %9
  br label %_ZN4heap4base17UnsafeJsonEmitter1pIdEERS1_PKcT_.exit30

_ZN4heap4base17UnsafeJsonEmitter1pIdEERS1_PKcT_.exit30: ; preds = %_ZN4heap4base17UnsafeJsonEmitter1pIdEERS1_PKcT_.exit27, %"_ZNK2v84base10RingBufferIdLh10EE6ReduceIZNKS_8internal8GCTracer20AverageSurvivalRatioEvE3$_0EEdT_RKd.exit.i"
  %.0.i28 = phi double [ %i.ke, %"_ZNK2v84base10RingBufferIdLh10EE6ReduceIZNKS_8internal8GCTracer20AverageSurvivalRatioEvE3$_0EEdT_RKd.exit.i" ], [ 0.000000e+00, %_ZN4heap4base17UnsafeJsonEmitter1pIdEERS1_PKcT_.exit27 ]
  %i.kf = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.dh, ptr noundef nonnull @.str.214, i64 noundef 1) #19 ; 0 uses
  call void @_ZN4heap4base17UnsafeJsonEmitter18emit_property_nameEPKc(ptr noundef nonnull align 8 dereferenceable(400) %i.da, ptr noundef nonnull @.str.59) #19
  %i.kg = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.dh, double noundef %.0.i28) #19 ; 0 uses
  store i8 0, ptr %i.dc, align 8
  %i.kh = load ptr, ptr %0, align 8
  %i.ki = getelementptr inbounds nuw i8, ptr %i.kh, i64 1800
  %i.kj = load double, ptr %i.ki, align 8
  %i.kk = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.dh, ptr noundef nonnull @.str.214, i64 noundef 1) #19 ; 0 uses
  call void @_ZN4heap4base17UnsafeJsonEmitter18emit_property_nameEPKc(ptr noundef nonnull align 8 dereferenceable(400) %i.da, ptr noundef nonnull @.str.60) #19
  %i.kl = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.dh, double noundef %i.kj) #19 ; 0 uses
  store i8 0, ptr %i.dc, align 8
  %i.km = load i32, ptr %i.a, align 8
  switch i32 %i.km, label %bb.fq [
    i32 0, label %bb.au
    i32 3, label %bb.br
    i32 4, label %bb.br
    i32 1, label %bb.cu
    i32 2, label %bb.cu
  ]

bb.au:                                            ; preds = %_ZN4heap4base17UnsafeJsonEmitter1pIdEERS1_PKcT_.exit30
  %i.kn = getelementptr inbounds nuw i8, ptr %0, i64 5078
  %i.ko = load i8, ptr %i.kn, align 2, !range !5, !noundef !6
  %i.kp = trunc nuw i8 %i.ko to i1                ; 2 uses
  %i.kq = load i8, ptr %i.bg, align 8, !range !5, !noundef !6
  %i.kr = trunc nuw i8 %i.kq to i1
  br i1 %i.kr, label %_ZN4heap4base17UnsafeJsonEmitter1pIbEERS1_PKcT_.exit31, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.ks = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ag, ptr noundef nonnull @.str.214, i64 noundef 1) #19 ; 0 uses
  br label %_ZN4heap4base17UnsafeJsonEmitter1pIbEERS1_PKcT_.exit31

_ZN4heap4base17UnsafeJsonEmitter1pIbEERS1_PKcT_.exit31: ; preds = %bb.au, %bb.av
  call void @_ZN4heap4base17UnsafeJsonEmitter18emit_property_nameEPKc(ptr noundef nonnull align 8 dereferenceable(400) %6, ptr noundef nonnull @.str.61) #19
  %i.kt = select i1 %i.kp, ptr @.str.216, ptr @.str.217
  %i.ku = select i1 %i.kp, i64 4, i64 5
  %i.kv = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ag, ptr noundef nonnull %i.kt, i64 noundef %i.ku) #19 ; 0 uses
  store i8 0, ptr %i.bg, align 8
  %i.kw = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.kx = getelementptr inbounds nuw i8, ptr %0, i64 376
  %i.ky = call noundef double @_ZNK2v84base9TimeDelta15InMillisecondsFEv(ptr noundef nonnull align 8 dereferenceable(8) %i.kx) #19
  %i.kz = load i8, ptr %i.bg, align 8, !range !5, !noundef !6
  %i.la = trunc nuw i8 %i.kz to i1
  br i1 %i.la, label %_ZN4heap4base17UnsafeJsonEmitter1pIdEERS1_PKcT_.exit32, label %bb.aw

bb.aw:                                            ; preds = %_ZN4heap4base17UnsafeJsonEmitter1pIbEERS1_PKcT_.exit31
  %i.lb = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ag, ptr noundef nonnull @.str.214, i64 noundef 1) #19 ; 0 uses
  br label %_ZN4heap4base17UnsafeJsonEmitter1pIdEERS1_PKcT_.exit32

_ZN4heap4base17UnsafeJsonEmitter1pIdEERS1_PKcT_.exit32: ; preds = %_ZN4heap4base17UnsafeJsonEmitter1pIbEERS1_PKcT_.exit31, %bb.aw
  call void @_ZN4heap4base17UnsafeJsonEmitter18emit_property_nameEPKc(ptr noundef nonnull align 8 dereferenceable(400) %6, ptr noundef nonnull @.str.62) #19
  %i.lc = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.ag, double noundef %i.ky) #19 ; 0 uses
  store i8 0, ptr %i.bg, align 8
  %i.ld = getelementptr inbounds nuw i8, ptr %0, i64 320
  %i.le = call noundef double @_ZNK2v84base9TimeDelta15InMillisecondsFEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ld) #19
  %i.lf = load i8, ptr %i.bg, align 8, !range !5, !noundef !6
  %i.lg = trunc nuw i8 %i.lf to i1
  br i1 %i.lg, label %_ZN4heap4base17UnsafeJsonEmitter1pIdEERS1_PKcT_.exit33, label %bb.ax

bb.ax:                                            ; preds = %_ZN4heap4base17UnsafeJsonEmitter1pIdEERS1_PKcT_.exit32
  %i.lh = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ag, ptr noundef nonnull @.str.214, i64 noundef 1) #19 ; 0 uses
  br label %_ZN4heap4base17UnsafeJsonEmitter1pIdEERS1_PKcT_.exit33

_ZN4heap4base17UnsafeJsonEmitter1pIdEERS1_PKcT_.exit33: ; preds = %_ZN4heap4base17UnsafeJsonEmitter1pIdEERS1_PKcT_.exit32, %bb.ax
  call void @_ZN4heap4base17UnsafeJsonEmitter18emit_property_nameEPKc(ptr noundef nonnull align 8 dereferenceable(400) %6, ptr noundef nonnull @.str.63) #19
  %i.li = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.ag, double noundef %i.le) #19 ; 0 uses
  store i8 0, ptr %i.bg, align 8
  %i.lj = getelementptr inbounds nuw i8, ptr %0, i64 352
  %i.lk = call noundef double @_ZNK2v84base9TimeDelta15InMillisecondsFEv(ptr noundef nonnull align 8 dereferenceable(8) %i.lj) #19
  %i.ll = load i8, ptr %i.bg, align 8, !range !5, !noundef !6
  %i.lm = trunc nuw i8 %i.ll to i1
  br i1 %i.lm, label %_ZN4heap4base17UnsafeJsonEmitter1pIdEERS1_PKcT_.exit34, label %bb.ay

bb.ay:                                            ; preds = %_ZN4heap4base17UnsafeJsonEmitter1pIdEERS1_PKcT_.exit33
  %i.ln = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ag, ptr noundef nonnull @.str.214, i64 noundef 1) #19 ; 0 uses
  br label %_ZN4heap4base17UnsafeJsonEmitter1pIdEERS1_PKcT_.exit34

_ZN4heap4base17UnsafeJsonEmitter1pIdEERS1_PKcT_.exit34: ; preds = %_ZN4heap4base17UnsafeJsonEmitter1pIdEERS1_PKcT_.exit33, %bb.ay
  call void @_ZN4heap4base17UnsafeJsonEmitter18emit_property_nameEPKc(ptr noundef nonnull align 8 dereferenceable(400) %6, ptr noundef nonnull @.str.64) #19
  %i.lo = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.ag, double noundef %i.lk) #19 ; 0 uses
  store i8 0, ptr %i.bg, align 8
  %i.lp = getelementptr inbounds nuw i8, ptr %0, i64 336
  %i.lq = call noundef double @_ZNK2v84base9TimeDelta15InMillisecondsFEv(ptr noundef nonnull align 8 dereferenceable(8) %i.lp) #19
  %i.lr = load i8, ptr %i.bg, align 8, !range !5, !noundef !6
  %i.ls = trunc nuw i8 %i.lr to i1
  br i1 %i.ls, label %_ZN4heap4base17UnsafeJsonEmitter1pIdEERS1_PKcT_.exit35, label %bb.az

bb.az:                                            ; preds = %_ZN4heap4base17UnsafeJsonEmitter1pIdEERS1_PKcT_.exit34
  %i.lt = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ag, ptr noundef nonnull @.str.214, i64 noundef 1) #19 ; 0 uses
  br label %_ZN4heap4base17UnsafeJsonEmitter1pIdEERS1_PKcT_.exit35

_ZN4heap4base17UnsafeJsonEmitter1pIdEERS1_PKcT_.exit35: ; preds = %_ZN4heap4base17UnsafeJsonEmitter1pIdEERS1_PKcT_.exit34, %bb.az
  call void @_ZN4heap4base17UnsafeJsonEmitter18emit_property_nameEPKc(ptr noundef nonnull align 8 dereferenceable(400) %6, ptr noundef nonnull @.str.65) #19
  %i.lu = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.ag, double noundef %i.lq) #19 ; 0 uses
  store i8 0, ptr %i.bg, align 8
  %i.lv = getelementptr inbounds nuw i8, ptr %0, i64 368
  %i.lw = call noundef double @_ZNK2v84base9TimeDelta15InMillisecondsFEv(ptr noundef nonnull align 8 dereferenceable(8) %i.lv) #19
  %i.lx = load i8, ptr %i.bg, align 8, !range !5, !noundef !6
  %i.ly = trunc nuw i8 %i.lx to i1
  br i1 %i.ly, label %_ZN4heap4base17UnsafeJsonEmitter1pIdEERS1_PKcT_.exit36, label %bb.ba

bb.ba:                                            ; preds = %_ZN4heap4base17UnsafeJsonEmitter1pIdEERS1_PKcT_.exit35
  %i.lz = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ag, ptr noundef nonnull @.str.214, i64 noundef 1) #19 ; 0 uses
  br label %_ZN4heap4base17UnsafeJsonEmitter1pIdEERS1_PKcT_.exit36

_ZN4heap4base17UnsafeJsonEmitter1pIdEERS1_PKcT_.exit36: ; preds = %_ZN4heap4base17UnsafeJsonEmitter1pIdEERS1_PKcT_.exit35, %bb.ba
  call void @_ZN4heap4base17UnsafeJsonEmitter18emit_property_nameEPKc(ptr noundef nonnull align 8 dereferenceable(400) %6, ptr noundef nonnull @.str.66) #19
  %i.ma = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.ag, double noundef %i.lw) #19 ; 0 uses
  store i8 0, ptr %i.bg, align 8
  %i.mb = getelementptr inbounds nuw i8, ptr %0, i64 1232
  %i.mc = call noundef double @_ZNK2v84base9TimeDelta15InMillisecondsFEv(ptr noundef nonnull align 8 dereferenceable(8) %i.mb) #19
  %i.md = load i8, ptr %i.bg, align 8, !range !5, !noundef !6
  %i.me = trunc nuw i8 %i.md to i1
  br i1 %i.me, label %_ZN4heap4base17UnsafeJsonEmitter1pIdEERS1_PKcT_.exit37, label %bb.bb

bb.bb:                                            ; preds = %_ZN4heap4base17UnsafeJsonEmitter1pIdEERS1_PKcT_.exit36
  %i.mf = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ag, ptr noundef nonnull @.str.214, i64 noundef 1) #19 ; 0 uses
  br label %_ZN4heap4base17UnsafeJsonEmitter1pIdEERS1_PKcT_.exit37

_ZN4heap4base17UnsafeJsonEmitter1pIdEERS1_PKcT_.exit37: ; preds = %_ZN4heap4base17UnsafeJsonEmitter1pIdEERS1_PKcT_.exit36, %bb.bb
  call void @_ZN4heap4base17UnsafeJsonEmitter18emit_property_nameEPKc(ptr noundef nonnull align 8 dereferenceable(400) %6, ptr noundef nonnull @.str.67) #19
  %i.mg = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.ag, double noundef %i.mc) #19 ; 0 uses
  store i8 0, ptr %i.bg, align 8
  %i.mh = getelementptr inbounds nuw i8, ptr %0, i64 1256
  %i.mi = call noundef double @_ZNK2v84base9TimeDelta15InMillisecondsFEv(ptr noundef nonnull align 8 dereferenceable(8) %i.mh) #19
  %i.mj = load i8, ptr %i.bg, align 8, !range !5, !noundef !6
  %i.mk = trunc nuw i8 %i.mj to i1
  br i1 %i.mk, label %_ZN4heap4base17UnsafeJsonEmitter1pIdEERS1_PKcT_.exit38, label %bb.bc

bb.bc:                                            ; preds = %_ZN4heap4base17UnsafeJsonEmitter1pIdEERS1_PKcT_.exit37
  %i.ml = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ag, ptr noundef nonnull @.str.214, i64 noundef 1) #19 ; 0 uses
  br label %_ZN4heap4base17UnsafeJsonEmitter1pIdEERS1_PKcT_.exit38

_ZN4heap4base17UnsafeJsonEmitter1pIdEERS1_PKcT_.exit38: ; preds = %_ZN4heap4base17UnsafeJsonEmitter1pIdEERS1_PKcT_.exit37, %bb.bc
  call void @_ZN4heap4base17UnsafeJsonEmitter18emit_property_nameEPKc(ptr noundef nonnull align 8 dereferenceable(400) %6, ptr noundef nonnull @.str.68) #19
  %i.mm = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.ag, double noundef %i.mi) #19 ; 0 uses
  store i8 0, ptr %i.bg, align 8
  %i.mn = getelementptr inbounds nuw i8, ptr %0, i64 1240
  %i.mo = call noundef double @_ZNK2v84base9TimeDelta15InMillisecondsFEv(ptr noundef nonnull align 8 dereferenceable(8) %i.mn) #19
  %i.mp = load i8, ptr %i.bg, align 8, !range !5, !noundef !6
  %i.mq = trunc nuw i8 %i.mp to i1
  br i1 %i.mq, label %_ZN4heap4base17UnsafeJsonEmitter1pIdEERS1_PKcT_.exit39, label %bb.bd

bb.bd:                                            ; preds = %_ZN4heap4base17UnsafeJsonEmitter1pIdEERS1_PKcT_.exit38
  %i.mr = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ag, ptr noundef nonnull @.str.214, i64 noundef 1) #19 ; 0 uses
  br label %_ZN4heap4base17UnsafeJsonEmitter1pIdEERS1_PKcT_.exit39

_ZN4heap4base17UnsafeJsonEmitter1pIdEERS1_PKcT_.exit39: ; preds = %_ZN4heap4base17UnsafeJsonEmitter1pIdEERS1_PKcT_.exit38, %bb.bd
  call void @_ZN4heap4base17UnsafeJsonEmitter18emit_property_nameEPKc(ptr noundef nonnull align 8 dereferenceable(400) %6, ptr noundef nonnull @.str.69) #19
  %i.ms = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.ag, double noundef %i.mo) #19 ; 0 uses
  store i8 0, ptr %i.bg, align 8
  %i.mt = getelementptr inbounds nuw i8, ptr %0, i64 1304
  %i.mu = call noundef double @_ZNK2v84base9TimeDelta15InMillisecondsFEv(ptr noundef nonnull align 8 dereferenceable(8) %i.mt) #19
  %i.mv = load i8, ptr %i.bg, align 8, !range !5, !noundef !6
  %i.mw = trunc nuw i8 %i.mv to i1
  br i1 %i.mw, label %_ZN4heap4base17UnsafeJsonEmitter1pIdEERS1_PKcT_.exit40, label %bb.be

bb.be:                                            ; preds = %_ZN4heap4base17UnsafeJsonEmitter1pIdEERS1_PKcT_.exit39
  %i.mx = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ag, ptr noundef nonnull @.str.214, i64 noundef 1) #19 ; 0 uses
  br label %_ZN4heap4base17UnsafeJsonEmitter1pIdEERS1_PKcT_.exit40

_ZN4heap4base17UnsafeJsonEmitter1pIdEERS1_PKcT_.exit40: ; preds = %_ZN4heap4base17UnsafeJsonEmitter1pIdEERS1_PKcT_.exit39, %bb.be
  call void @_ZN4heap4base17UnsafeJsonEmitter18emit_property_nameEPKc(ptr noundef nonnull align 8 dereferenceable(400) %6, ptr noundef nonnull @.str.70) #19
  %i.my = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.ag, double noundef %i.mu) #19 ; 0 uses
  store i8 0, ptr %i.bg, align 8
  %i.mz = getelementptr inbounds nuw i8, ptr %0, i64 1328
  %i.na = call noundef double @_ZNK2v84base9TimeDelta15InMillisecondsFEv(ptr noundef nonnull align 8 dereferenceable(8) %i.mz) #19
  %i.nb = load i8, ptr %i.bg, align 8, !range !5, !noundef !6
  %i.nc = trunc nuw i8 %i.nb to i1
  br i1 %i.nc, label %_ZN4heap4base17UnsafeJsonEmitter1pIdEERS1_PKcT_.exit41, label %bb.bf

bb.bf:                                            ; preds = %_ZN4heap4base17UnsafeJsonEmitter1pIdEERS1_PKcT_.exit40
  %i.nd = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ag, ptr noundef nonnull @.str.214, i64 noundef 1) #19 ; 0 uses
  br label %_ZN4heap4base17UnsafeJsonEmitter1pIdEERS1_PKcT_.exit41

_ZN4heap4base17UnsafeJsonEmitter1pIdEERS1_PKcT_.exit41: ; preds = %_ZN4heap4base17UnsafeJsonEmitter1pIdEERS1_PKcT_.exit40, %bb.bf
  call void @_ZN4heap4base17UnsafeJsonEmitter18emit_property_nameEPKc(ptr noundef nonnull align 8 dereferenceable(400) %6, ptr noundef nonnull @.str.71) #19
  %i.ne = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.ag, double noundef %i.na) #19 ; 0 uses
  store i8 0, ptr %i.bg, align 8
  %i.nf = getelementptr inbounds nuw i8, ptr %0, i64 1264
  %i.ng = call noundef double @_ZNK2v84base9TimeDelta15InMillisecondsFEv(ptr noundef nonnull align 8 dereferenceable(8) %i.nf) #19
  %i.nh = load i8, ptr %i.bg, align 8, !range !5, !noundef !6
  %i.ni = trunc nuw i8 %i.nh to i1
  br i1 %i.ni, label %_ZN4heap4base17UnsafeJsonEmitter1pIdEERS1_PKcT_.exit42, label %bb.bg

bb.bg:                                            ; preds = %_ZN4heap4base17UnsafeJsonEmitter1pIdEERS1_PKcT_.exit41
  %i.nj = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ag, ptr noundef nonnull @.str.214, i64 noundef 1) #19 ; 0 uses
  br label %_ZN4heap4base17UnsafeJsonEmitter1pIdEERS1_PKcT_.exit42

_ZN4heap4base17UnsafeJsonEmitter1pIdEERS1_PKcT_.exit42: ; preds = %_ZN4heap4base17UnsafeJsonEmitter1pIdEERS1_PKcT_.exit41, %bb.bg
  call void @_ZN4heap4base17UnsafeJsonEmitter18emit_property_nameEPKc(ptr noundef nonnull align 8 dereferenceable(400) %6, ptr noundef nonnull @.str.72) #19
  %i.nk = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.ag, double noundef %i.ng) #19 ; 0 uses
  store i8 0, ptr %i.bg, align 8
  %i.nl = getelementptr inbounds nuw i8, ptr %0, i64 1272
  %i.nm = call noundef double @_ZNK2v84base9TimeDelta15InMillisecondsFEv(ptr noundef nonnull align 8 dereferenceable(8) %i.nl) #19
end_hunk_0
begin_hunk_1_@_ZN4heap4base17UnsafeJsonEmitter1pIPKcEERS1_S4_T_:bb.a
  br i1 %.not.i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.h = load ptr, ptr %i.f, align 8
  %i.i = getelementptr i8, ptr %i.h, i64 -24
  %i.j = load i64, ptr %i.i, align 8
  %i.k = getelementptr inbounds i8, ptr %i.f, i64 %i.j ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 32
  %i.m = load i32, ptr %i.l, align 8
  %i.n = or i32 %i.m, 1
  tail call void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.k, i32 noundef %i.n) #19
  br label %_ZN4heap4base17UnsafeJsonEmitter10emit_valueEPKc.exit

bb.e:                                             ; preds = %bb.c
  %i.o = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #19
  %i.p = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.f, ptr noundef nonnull %2, i64 noundef %i.o) #19 ; 0 uses
  br label %_ZN4heap4base17UnsafeJsonEmitter10emit_valueEPKc.exit

_ZN4heap4base17UnsafeJsonEmitter10emit_valueEPKc.exit: ; preds = %bb.d, %bb.e
  %i.q = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.f, ptr noundef nonnull @.str.215, i64 noundef 1) #19 ; 0 uses
  store i8 0, ptr %i.a, align 8
  ret ptr %0
}

declare noundef zeroext i1 @_ZNK2v88internal4Heap13IsGCWithStackEv(ptr noundef nonnull align 8 dereferenceable(2992)) local_unnamed_addr #4

declare noundef i64 @_ZN2v88internal15MemoryAllocator26GetSharedPooledChunksCountEv(ptr noundef nonnull align 8 dereferenceable(312)) local_unnamed_addr #4

declare noundef i64 @_ZN2v88internal15MemoryAllocator25GetTotalPooledChunksCountEv(ptr noundef nonnull align 8 dereferenceable(312)) local_unnamed_addr #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden noundef double @_ZNK2v88internal8GCTracer41AllocationThroughputInBytesPerMillisecondEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(6440) %0) local_unnamed_addr #6 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4600
  %.val.i = load double, ptr %i.a, align 8        ; 2 uses
  %i.b = fcmp ogt double %.val.i, f0x41D0000000000000
  %.sroa.speculated.i.i = select i1 %i.b, double f0x41D0000000000000, double %.val.i
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 4616
  %.val.i1 = load double, ptr %i.c, align 8       ; 2 uses
  %i.d = fcmp ogt double %.val.i1, f0x41D0000000000000
  %.sroa.speculated.i.i2 = select i1 %i.d, double f0x41D0000000000000, double %.val.i1
  %i.e = fadd double %.sroa.speculated.i.i, %.sroa.speculated.i.i2
  ret double %i.e
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden noundef double @_ZNK2v88internal8GCTracer49NewSpaceAllocationThroughputInBytesPerMillisecondEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(6440) %0) local_unnamed_addr #6 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4600
  %.val = load double, ptr %i.a, align 8          ; 2 uses
  %i.b = fcmp ogt double %.val, f0x41D0000000000000
  %.sroa.speculated.i = select i1 %i.b, double f0x41D0000000000000, double %.val
  ret double %.sroa.speculated.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden noundef double @_ZNK2v88internal8GCTracer20AverageSurvivalRatioEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(6440) %0) local_unnamed_addr #6 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4984 ; 10 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 5065
  %i.c = load i8, ptr %i.b, align 1, !range !5, !noundef !6
  %i.d = trunc nuw i8 %i.c to i1                  ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 5064
  %i.f = load i8, ptr %i.e, align 8               ; 8 uses
  %i.g = icmp ne i8 %i.f, 0                       ; 2 uses
  %.not3 = select i1 %i.d, i1 true, i1 %i.g
  br i1 %.not3, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  br i1 %i.g, label %.lr.ph.preheader.i, label %._crit_edge.i

.lr.ph.preheader.i:                               ; preds = %bb.b
  %i.h = zext i8 %i.f to i64                      ; 2 uses
  %xtraiter = and i8 %i.f, 3                      ; 2 uses
  %lcmp.mod.not = icmp eq i8 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.preheader.i, %.lr.ph.i.prol
  %indvars.iv.i.prol = phi i64 [ %indvars.iv.next.i.prol, %.lr.ph.i.prol ], [ %i.h, %.lr.ph.preheader.i ] ; 2 uses
  %.0132.i.prol = phi double [ %i.m, %.lr.ph.i.prol ], [ 0.000000e+00, %.lr.ph.preheader.i ]
  %prol.iter = phi i8 [ %prol.iter.next, %.lr.ph.i.prol ], [ 0, %.lr.ph.preheader.i ]
  %i.i = add nuw nsw i64 %indvars.iv.i.prol, 4294967295
  %i.j = and i64 %i.i, 4294967295
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.j
  %i.l = load double, ptr %i.k, align 8
  %i.m = fadd double %.0132.i.prol, %i.l          ; 3 uses
  %indvars.iv.next.i.prol = add nsw i64 %indvars.iv.i.prol, -1 ; 2 uses
  %prol.iter.next = add i8 %prol.iter, 1          ; 2 uses
  %prol.iter.cmp.not = icmp eq i8 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !llvm.loop !41

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.preheader.i
  %.lcssa9.unr = phi double [ poison, %.lr.ph.preheader.i ], [ %i.m, %.lr.ph.i.prol ]
  %indvars.iv.i.unr = phi i64 [ %i.h, %.lr.ph.preheader.i ], [ %indvars.iv.next.i.prol, %.lr.ph.i.prol ]
  %.0132.i.unr = phi double [ 0.000000e+00, %.lr.ph.preheader.i ], [ %i.m, %.lr.ph.i.prol ]
  %i.n = icmp ult i8 %i.f, 4
  br i1 %i.n, label %._crit_edge.i, label %.lr.ph.i

._crit_edge.i:                                    ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %bb.b
  %.013.lcssa.i = phi double [ 0.000000e+00, %bb.b ], [ %.lcssa9.unr, %.lr.ph.i.prol.loopexit ], [ %i.al, %.lr.ph.i ] ; 3 uses
  %i.o = icmp ult i8 %i.f, 10
  %or.cond.i = and i1 %i.o, %i.d
  br i1 %or.cond.i, label %.lr.ph6.preheader.i, label %"_ZNK2v84base10RingBufferIdLh10EE6ReduceIZNKS_8internal8GCTracer20AverageSurvivalRatioEvE3$_0EEdT_RKd.exit"

.lr.ph6.preheader.i:                              ; preds = %._crit_edge.i
  %narrow = sub nuw nsw i8 10, %i.f
  %i.p = zext nneg i8 %narrow to i64              ; 2 uses
  %xtraiter10 = and i64 %i.p, 3                   ; 3 uses
  %i.q = add nsw i8 %i.f, -7
  %i.r = icmp ult i8 %i.q, 3
  br i1 %i.r, label %.lr.ph6.i.epil.preheader, label %.lr.ph6.preheader.i.new

.lr.ph6.preheader.i.new:                          ; preds = %.lr.ph6.preheader.i
  %unroll_iter = and i64 %i.p, 12
  br label %.lr.ph6.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.3, %.lr.ph.i ], [ %indvars.iv.i.unr, %.lr.ph.i.prol.loopexit ] ; 5 uses
  %.0132.i = phi double [ %i.al, %.lr.ph.i ], [ %.0132.i.unr, %.lr.ph.i.prol.loopexit ]
  %i.s = add nuw nsw i64 %indvars.iv.i, 4294967295
  %i.t = and i64 %i.s, 4294967295
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.t
  %i.v = load double, ptr %i.u, align 8
  %i.w = fadd double %.0132.i, %i.v
  %i.x = add nsw i64 %indvars.iv.i, 4294967294
  %i.y = and i64 %i.x, 4294967295
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.y
  %i.aa = load double, ptr %i.z, align 8
  %i.ab = fadd double %i.w, %i.aa
  %i.ac = add nsw i64 %indvars.iv.i, 4294967293
  %i.ad = and i64 %i.ac, 4294967295
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.ad
  %i.af = load double, ptr %i.ae, align 8
  %i.ag = fadd double %i.ab, %i.af
  %i.ah = add nsw i64 %indvars.iv.i, 4294967292
  %i.ai = and i64 %i.ah, 4294967295
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.ai
  %i.ak = load double, ptr %i.aj, align 8
  %i.al = fadd double %i.ag, %i.ak                ; 2 uses
  %indvars.iv.next.i.3 = add nsw i64 %indvars.iv.i, -4 ; 2 uses
  %i.am = and i64 %indvars.iv.next.i.3, 255
  %.not.i.3 = icmp eq i64 %i.am, 0
  br i1 %.not.i.3, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !21

.lr.ph6.i:                                        ; preds = %.lr.ph6.i, %.lr.ph6.preheader.i.new
  %indvars.iv10.i = phi i64 [ 10, %.lr.ph6.preheader.i.new ], [ %indvars.iv.next11.i.3, %.lr.ph6.i ] ; 5 uses
  %.14.i = phi double [ %.013.lcssa.i, %.lr.ph6.preheader.i.new ], [ %i.bg, %.lr.ph6.i ]
  %niter = phi i64 [ 0, %.lr.ph6.preheader.i.new ], [ %niter.next.3, %.lr.ph6.i ]
  %i.an = add nuw nsw i64 %indvars.iv10.i, 4294967295
  %i.ao = and i64 %i.an, 4294967295
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.ao
  %i.aq = load double, ptr %i.ap, align 8
  %i.ar = fadd double %.14.i, %i.aq
  %i.as = add nsw i64 %indvars.iv10.i, 4294967294
  %i.at = and i64 %i.as, 4294967294
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.at
  %i.av = load double, ptr %i.au, align 8
  %i.aw = fadd double %i.ar, %i.av
  %i.ax = add nsw i64 %indvars.iv10.i, 4294967293
  %i.ay = and i64 %i.ax, 4294967295
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.ay
  %i.ba = load double, ptr %i.az, align 8
  %i.bb = fadd double %i.aw, %i.ba
  %i.bc = add nsw i64 %indvars.iv10.i, 4294967292
  %i.bd = and i64 %i.bc, 4294967294
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.bd
  %i.bf = load double, ptr %i.be, align 8
  %i.bg = fadd double %i.bb, %i.bf                ; 3 uses
  %indvars.iv.next11.i.3 = add nsw i64 %indvars.iv10.i, -4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3.not = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3.not, label %"_ZNK2v84base10RingBufferIdLh10EE6ReduceIZNKS_8internal8GCTracer20AverageSurvivalRatioEvE3$_0EEdT_RKd.exit.loopexit.unr-lcssa", label %.lr.ph6.i, !llvm.loop !22

"_ZNK2v84base10RingBufferIdLh10EE6ReduceIZNKS_8internal8GCTracer20AverageSurvivalRatioEvE3$_0EEdT_RKd.exit.loopexit.unr-lcssa": ; preds = %.lr.ph6.i
  %lcmp.mod11.not = icmp eq i64 %xtraiter10, 0
  br i1 %lcmp.mod11.not, label %"_ZNK2v84base10RingBufferIdLh10EE6ReduceIZNKS_8internal8GCTracer20AverageSurvivalRatioEvE3$_0EEdT_RKd.exit", label %.lr.ph6.i.epil.preheader

.lr.ph6.i.epil.preheader:                         ; preds = %"_ZNK2v84base10RingBufferIdLh10EE6ReduceIZNKS_8internal8GCTracer20AverageSurvivalRatioEvE3$_0EEdT_RKd.exit.loopexit.unr-lcssa", %.lr.ph6.preheader.i
  %indvars.iv10.i.epil.init = phi i64 [ 10, %.lr.ph6.preheader.i ], [ %indvars.iv.next11.i.3, %"_ZNK2v84base10RingBufferIdLh10EE6ReduceIZNKS_8internal8GCTracer20AverageSurvivalRatioEvE3$_0EEdT_RKd.exit.loopexit.unr-lcssa" ]
  %.14.i.epil.init = phi double [ %.013.lcssa.i, %.lr.ph6.preheader.i ], [ %i.bg, %"_ZNK2v84base10RingBufferIdLh10EE6ReduceIZNKS_8internal8GCTracer20AverageSurvivalRatioEvE3$_0EEdT_RKd.exit.loopexit.unr-lcssa" ]
  %lcmp.mod13 = icmp ne i64 %xtraiter10, 0
  tail call void @llvm.assume(i1 %lcmp.mod13)
  br label %.lr.ph6.i.epil

.lr.ph6.i.epil:                                   ; preds = %.lr.ph6.i.epil, %.lr.ph6.i.epil.preheader
  %indvars.iv10.i.epil = phi i64 [ %indvars.iv10.i.epil.init, %.lr.ph6.i.epil.preheader ], [ %indvars.iv.next11.i.epil, %.lr.ph6.i.epil ] ; 2 uses
  %.14.i.epil = phi double [ %.14.i.epil.init, %.lr.ph6.i.epil.preheader ], [ %i.bl, %.lr.ph6.i.epil ]
  %epil.iter = phi i64 [ 0, %.lr.ph6.i.epil.preheader ], [ %epil.iter.next, %.lr.ph6.i.epil ]
  %i.bh = add nuw nsw i64 %indvars.iv10.i.epil, 4294967295
  %i.bi = and i64 %i.bh, 4294967295
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.bi
  %i.bk = load double, ptr %i.bj, align 8
  %i.bl = fadd double %.14.i.epil, %i.bk          ; 2 uses
  %indvars.iv.next11.i.epil = add nsw i64 %indvars.iv10.i.epil, -1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter10
  br i1 %epil.iter.cmp.not, label %"_ZNK2v84base10RingBufferIdLh10EE6ReduceIZNKS_8internal8GCTracer20AverageSurvivalRatioEvE3$_0EEdT_RKd.exit", label %.lr.ph6.i.epil, !llvm.loop !42

"_ZNK2v84base10RingBufferIdLh10EE6ReduceIZNKS_8internal8GCTracer20AverageSurvivalRatioEvE3$_0EEdT_RKd.exit": ; preds = %"_ZNK2v84base10RingBufferIdLh10EE6ReduceIZNKS_8internal8GCTracer20AverageSurvivalRatioEvE3$_0EEdT_RKd.exit.loopexit.unr-lcssa", %.lr.ph6.i.epil, %._crit_edge.i
  %.014.i = phi double [ %.013.lcssa.i, %._crit_edge.i ], [ %i.bg, %"_ZNK2v84base10RingBufferIdLh10EE6ReduceIZNKS_8internal8GCTracer20AverageSurvivalRatioEvE3$_0EEdT_RKd.exit.loopexit.unr-lcssa" ], [ %i.bl, %.lr.ph6.i.epil ]
  %1 = uitofp i8 %i.f to double
  %2 = select i1 %i.d, double 1.000000e+01, double %1
  %i.bm = fdiv double %.014.i, %2
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %"_ZNK2v84base10RingBufferIdLh10EE6ReduceIZNKS_8internal8GCTracer20AverageSurvivalRatioEvE3$_0EEdT_RKd.exit"
  %.0 = phi double [ %i.bm, %"_ZNK2v84base10RingBufferIdLh10EE6ReduceIZNKS_8internal8GCTracer20AverageSurvivalRatioEvE3$_0EEdT_RKd.exit" ], [ 0.000000e+00, %bb.a ]
  ret double %.0
}

; Function Attrs: mustprogress nounwind uwtable
define hidden { double, i8 } @_ZNK2v88internal8GCTracer41YoungGenerationSpeedInBytesPerMillisecondENS0_24YoungGenerationSpeedModeE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(6440) %0, i32 noundef %1) local_unnamed_addr #2 align 2 {
bb.a:
  %2 = alloca %"class.v8::base::TimeDelta", align 8 ; 4 uses
  %3 = alloca %"class.v8::base::TimeDelta", align 8 ; 4 uses
  switch i32 %1, label %bb.f [
    i32 0, label %bb.b
    i32 1, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4648 ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 4808
  %i.c = load i8, ptr %i.b, align 8               ; 8 uses
  %.not24.i.i = icmp eq i8 %i.c, 0
  br i1 %.not24.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.b
  %i.d = zext i8 %i.c to i64                      ; 6 uses
  %min.iters.check51 = icmp ult i8 %i.c, 6
  br i1 %min.iters.check51, label %.lr.ph.split.us.i.i.preheader, label %vector.scevcheck49

vector.scevcheck49:                               ; preds = %.lr.ph.i.i
  %i.e = add i8 %i.c, -1
  %i.f = zext i8 %i.c to i32
  %i.g = add nsw i32 %i.f, -1
  %i.h = zext i8 %i.e to i32
  %i.i = icmp ult i32 %i.g, %i.h
  br i1 %i.i, label %.lr.ph.split.us.i.i.preheader, label %vector.ph52

vector.ph52:                                      ; preds = %vector.scevcheck49
  %n.vec53 = and i64 %i.d, 252                    ; 2 uses
  %i.j = and i64 %i.d, 3
  br label %vector.body54

vector.body54:                                    ; preds = %vector.body54, %vector.ph52
  %index55 = phi i64 [ 0, %vector.ph52 ], [ %index.next70, %vector.body54 ] ; 2 uses
  %vec.phi56 = phi <2 x i64> [ zeroinitializer, %vector.ph52 ], [ %i.q, %vector.body54 ]
  %vec.phi57 = phi <2 x i64> [ zeroinitializer, %vector.ph52 ], [ %i.r, %vector.body54 ]
  %vec.phi58 = phi <2 x i64> [ zeroinitializer, %vector.ph52 ], [ %i.s, %vector.body54 ]
  %vec.phi59 = phi <2 x i64> [ zeroinitializer, %vector.ph52 ], [ %i.t, %vector.body54 ]
  %i.k = sub i64 %i.d, %index55
  %i.l = add nuw nsw i64 %i.k, 4294967295
  %i.m = and i64 %i.l, 4294967295
  %i.n = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %i.m ; 2 uses
  %i.o = getelementptr inbounds i8, ptr %i.n, i64 -16
  %i.p = getelementptr inbounds i8, ptr %i.n, i64 -48
  %wide.vec60 = load <4 x i64>, ptr %i.o, align 8 ; 2 uses
  %reverse62 = shufflevector <4 x i64> %wide.vec60, <4 x i64> poison, <2 x i32> <i32 2, i32 0>
  %reverse64 = shufflevector <4 x i64> %wide.vec60, <4 x i64> poison, <2 x i32> <i32 3, i32 1>
  %wide.vec65 = load <4 x i64>, ptr %i.p, align 8 ; 2 uses
  %reverse67 = shufflevector <4 x i64> %wide.vec65, <4 x i64> poison, <2 x i32> <i32 2, i32 0>
  %reverse69 = shufflevector <4 x i64> %wide.vec65, <4 x i64> poison, <2 x i32> <i32 3, i32 1>
  %i.q = add <2 x i64> %reverse64, %vec.phi56     ; 2 uses
  %i.r = add <2 x i64> %reverse69, %vec.phi57     ; 2 uses
  %i.s = add <2 x i64> %reverse62, %vec.phi58     ; 2 uses
  %i.t = add <2 x i64> %reverse67, %vec.phi59     ; 2 uses
  %index.next70 = add nuw i64 %index55, 4         ; 2 uses
  %i.u = icmp eq i64 %index.next70, %n.vec53
  br i1 %i.u, label %middle.block71, label %vector.body54, !llvm.loop !43

middle.block71:                                   ; preds = %vector.body54
  %bin.rdx72 = add <2 x i64> %i.r, %i.q
  %i.v = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx72) ; 2 uses
  %bin.rdx73 = add <2 x i64> %i.t, %i.s
  %i.w = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx73) ; 2 uses
  %cmp.n74 = icmp eq i64 %n.vec53, %i.d
  br i1 %cmp.n74, label %._crit_edge.i.i, label %.lr.ph.split.us.i.i.preheader

.lr.ph.split.us.i.i.preheader:                    ; preds = %vector.scevcheck49, %.lr.ph.i.i, %middle.block71
  %indvars.iv.i.i.ph = phi i64 [ %i.d, %vector.scevcheck49 ], [ %i.d, %.lr.ph.i.i ], [ %i.j, %middle.block71 ] ; 5 uses
  %.sroa.6.026.us.i.i.ph = phi i64 [ 0, %vector.scevcheck49 ], [ 0, %.lr.ph.i.i ], [ %i.v, %middle.block71 ] ; 2 uses
  %.sroa.020.025.us.i.i.ph = phi i64 [ 0, %vector.scevcheck49 ], [ 0, %.lr.ph.i.i ], [ %i.w, %middle.block71 ] ; 2 uses
  %i.x = trunc nuw i64 %indvars.iv.i.i.ph to i8
  %xtraiter90 = and i8 %i.x, 1
  %lcmp.mod91.not = icmp eq i8 %xtraiter90, 0
  br i1 %lcmp.mod91.not, label %.lr.ph.split.us.i.i.prol.loopexit, label %.lr.ph.split.us.i.i.prol

.lr.ph.split.us.i.i.prol:                         ; preds = %.lr.ph.split.us.i.i.preheader
  %i.y = add nuw nsw i64 %indvars.iv.i.i.ph, 4294967295
  %i.z = and i64 %i.y, 4294967295
  %i.aa = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %i.z ; 2 uses
  %i.ab = load i64, ptr %i.aa, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.ad = load i64, ptr %i.ac, align 8
  %.sroa.3.0.i.us.i.i.prol = add nsw i64 %i.ad, %.sroa.6.026.us.i.i.ph ; 2 uses
  %.sroa.0.0.i.us.i.i.prol = add i64 %i.ab, %.sroa.020.025.us.i.i.ph ; 2 uses
  %indvars.iv.next.i.i.prol = add nsw i64 %indvars.iv.i.i.ph, -1
  br label %.lr.ph.split.us.i.i.prol.loopexit

.lr.ph.split.us.i.i.prol.loopexit:                ; preds = %.lr.ph.split.us.i.i.prol, %.lr.ph.split.us.i.i.preheader
  %.sroa.3.0.i.us.i.i.lcssa.unr = phi i64 [ poison, %.lr.ph.split.us.i.i.preheader ], [ %.sroa.3.0.i.us.i.i.prol, %.lr.ph.split.us.i.i.prol ]
  %.sroa.0.0.i.us.i.i.lcssa.unr = phi i64 [ poison, %.lr.ph.split.us.i.i.preheader ], [ %.sroa.0.0.i.us.i.i.prol, %.lr.ph.split.us.i.i.prol ]
  %indvars.iv.i.i.unr = phi i64 [ %indvars.iv.i.i.ph, %.lr.ph.split.us.i.i.preheader ], [ %indvars.iv.next.i.i.prol, %.lr.ph.split.us.i.i.prol ]
  %.sroa.6.026.us.i.i.unr = phi i64 [ %.sroa.6.026.us.i.i.ph, %.lr.ph.split.us.i.i.preheader ], [ %.sroa.3.0.i.us.i.i.prol, %.lr.ph.split.us.i.i.prol ]
  %.sroa.020.025.us.i.i.unr = phi i64 [ %.sroa.020.025.us.i.i.ph, %.lr.ph.split.us.i.i.preheader ], [ %.sroa.0.0.i.us.i.i.prol, %.lr.ph.split.us.i.i.prol ]
  %i.ae = icmp eq i64 %indvars.iv.i.i.ph, 1
  br i1 %i.ae, label %._crit_edge.i.i, label %.lr.ph.split.us.i.i

.lr.ph.split.us.i.i:                              ; preds = %.lr.ph.split.us.i.i.prol.loopexit, %.lr.ph.split.us.i.i
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i.1, %.lr.ph.split.us.i.i ], [ %indvars.iv.i.i.unr, %.lr.ph.split.us.i.i.prol.loopexit ] ; 3 uses
  %.sroa.6.026.us.i.i = phi i64 [ %.sroa.3.0.i.us.i.i.1, %.lr.ph.split.us.i.i ], [ %.sroa.6.026.us.i.i.unr, %.lr.ph.split.us.i.i.prol.loopexit ]
  %.sroa.020.025.us.i.i = phi i64 [ %.sroa.0.0.i.us.i.i.1, %.lr.ph.split.us.i.i ], [ %.sroa.020.025.us.i.i.unr, %.lr.ph.split.us.i.i.prol.loopexit ]
  %i.af = add nuw nsw i64 %indvars.iv.i.i, 4294967295
  %i.ag = and i64 %i.af, 4294967295
  %i.ah = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %i.ag ; 2 uses
  %i.ai = load i64, ptr %i.ah, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %i.ak = load i64, ptr %i.aj, align 8
  %.sroa.3.0.i.us.i.i = add nsw i64 %i.ak, %.sroa.6.026.us.i.i
  %.sroa.0.0.i.us.i.i = add i64 %i.ai, %.sroa.020.025.us.i.i
  %i.al = add nsw i64 %indvars.iv.i.i, 4294967294
  %i.am = and i64 %i.al, 4294967295
  %i.an = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %i.am ; 2 uses
  %i.ao = load i64, ptr %i.an, align 8
  %i.ap = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %i.aq = load i64, ptr %i.ap, align 8
  %.sroa.3.0.i.us.i.i.1 = add nsw i64 %i.aq, %.sroa.3.0.i.us.i.i ; 2 uses
  %.sroa.0.0.i.us.i.i.1 = add i64 %i.ao, %.sroa.0.0.i.us.i.i ; 2 uses
  %indvars.iv.next.i.i.1 = add nsw i64 %indvars.iv.i.i, -2 ; 2 uses
  %i.ar = and i64 %indvars.iv.next.i.i.1, 255
  %.not.us.i.i.1 = icmp eq i64 %i.ar, 0
  br i1 %.not.us.i.i.1, label %._crit_edge.i.i, label %.lr.ph.split.us.i.i, !llvm.loop !44

._crit_edge.i.i:                                  ; preds = %.lr.ph.split.us.i.i.prol.loopexit, %.lr.ph.split.us.i.i, %middle.block71, %bb.b
  %.sroa.020.0.lcssa.i.i = phi i64 [ 0, %bb.b ], [ %i.w, %middle.block71 ], [ %.sroa.0.0.i.us.i.i.lcssa.unr, %.lr.ph.split.us.i.i.prol.loopexit ], [ %.sroa.0.0.i.us.i.i.1, %.lr.ph.split.us.i.i ] ; 3 uses
  %.sroa.6.0.lcssa.i.i = phi i64 [ 0, %bb.b ], [ %i.v, %middle.block71 ], [ %.sroa.3.0.i.us.i.i.lcssa.unr, %.lr.ph.split.us.i.i.prol.loopexit ], [ %.sroa.3.0.i.us.i.i.1, %.lr.ph.split.us.i.i ] ; 3 uses
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 4809
  %i.at = load i8, ptr %i.as, align 1, !range !5, !noundef !6
  %i.au = trunc nuw i8 %i.at to i1
  %i.av = icmp ult i8 %i.c, 10
  %or.cond.i.i = and i1 %i.av, %i.au
  br i1 %or.cond.i.i, label %.lr.ph33.i.i, label %_ZNK2v84base10RingBufferIN4heap4base16BytesAndDurationELh10EE6ReduceIZNS3_12AverageSpeedERKS5_RKS4_St8optionalINS0_9TimeDeltaEEmmEUlSA_SA_E_EES4_T_SA_.exit.i

.lr.ph33.i.i:                                     ; preds = %._crit_edge.i.i
  %narrow99 = sub nuw nsw i8 10, %i.c             ; 2 uses
  %i.aw = zext nneg i8 %narrow99 to i64           ; 2 uses
  %xtraiter92 = and i64 %i.aw, 1
  %i.ax = icmp eq i8 %i.c, 9
  br i1 %i.ax, label %.lr.ph33.split.us.i.i.epil.preheader, label %.lr.ph33.i.i.new

.lr.ph33.i.i.new:                                 ; preds = %.lr.ph33.i.i
  %unroll_iter97 = and i64 %i.aw, 14
  br label %.lr.ph33.split.us.i.i

.lr.ph33.split.us.i.i:                            ; preds = %.lr.ph33.split.us.i.i, %.lr.ph33.i.i.new
  %indvars.iv49.i.i = phi i64 [ 10, %.lr.ph33.i.i.new ], [ %indvars.iv.next50.i.i.1, %.lr.ph33.split.us.i.i ] ; 3 uses
  %.sroa.6.131.us.i.i = phi i64 [ %.sroa.6.0.lcssa.i.i, %.lr.ph33.i.i.new ], [ %.sroa.3.0.i14.us.i.i.1, %.lr.ph33.split.us.i.i ]
  %.sroa.020.130.us.i.i = phi i64 [ %.sroa.020.0.lcssa.i.i, %.lr.ph33.i.i.new ], [ %.sroa.0.0.i15.us.i.i.1, %.lr.ph33.split.us.i.i ]
  %niter98 = phi i64 [ 0, %.lr.ph33.i.i.new ], [ %niter98.next.1, %.lr.ph33.split.us.i.i ]
  %i.ay = add nuw nsw i64 %indvars.iv49.i.i, 4294967295
  %i.az = and i64 %i.ay, 4294967295
  %i.ba = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %i.az ; 2 uses
  %i.bb = load i64, ptr %i.ba, align 8
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  %i.bd = load i64, ptr %i.bc, align 8
  %.sroa.3.0.i14.us.i.i = add nsw i64 %i.bd, %.sroa.6.131.us.i.i
  %.sroa.0.0.i15.us.i.i = add i64 %i.bb, %.sroa.020.130.us.i.i
  %i.be = add nsw i64 %indvars.iv49.i.i, 4294967294
  %i.bf = and i64 %i.be, 4294967294
  %i.bg = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %i.bf ; 2 uses
  %i.bh = load i64, ptr %i.bg, align 8
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  %i.bj = load i64, ptr %i.bi, align 8
  %.sroa.3.0.i14.us.i.i.1 = add nsw i64 %i.bj, %.sroa.3.0.i14.us.i.i ; 3 uses
  %.sroa.0.0.i15.us.i.i.1 = add i64 %i.bh, %.sroa.0.0.i15.us.i.i ; 3 uses
  %indvars.iv.next50.i.i.1 = add nsw i64 %indvars.iv49.i.i, -2 ; 2 uses
  %niter98.next.1 = add i64 %niter98, 2           ; 2 uses
  %niter98.ncmp.1.not = icmp eq i64 %niter98.next.1, %unroll_iter97
  br i1 %niter98.ncmp.1.not, label %_ZNK2v84base10RingBufferIN4heap4base16BytesAndDurationELh10EE6ReduceIZNS3_12AverageSpeedERKS5_RKS4_St8optionalINS0_9TimeDeltaEEmmEUlSA_SA_E_EES4_T_SA_.exit.i.loopexit.unr-lcssa, label %.lr.ph33.split.us.i.i, !llvm.loop !18

_ZNK2v84base10RingBufferIN4heap4base16BytesAndDurationELh10EE6ReduceIZNS3_12AverageSpeedERKS5_RKS4_St8optionalINS0_9TimeDeltaEEmmEUlSA_SA_E_EES4_T_SA_.exit.i.loopexit.unr-lcssa: ; preds = %.lr.ph33.split.us.i.i
  %lcmp.mod93.not = icmp eq i64 %xtraiter92, 0
  br i1 %lcmp.mod93.not, label %_ZNK2v84base10RingBufferIN4heap4base16BytesAndDurationELh10EE6ReduceIZNS3_12AverageSpeedERKS5_RKS4_St8optionalINS0_9TimeDeltaEEmmEUlSA_SA_E_EES4_T_SA_.exit.i, label %.lr.ph33.split.us.i.i.epil.preheader

.lr.ph33.split.us.i.i.epil.preheader:             ; preds = %_ZNK2v84base10RingBufferIN4heap4base16BytesAndDurationELh10EE6ReduceIZNS3_12AverageSpeedERKS5_RKS4_St8optionalINS0_9TimeDeltaEEmmEUlSA_SA_E_EES4_T_SA_.exit.i.loopexit.unr-lcssa, %.lr.ph33.i.i
  %indvars.iv49.i.i.epil.init = phi i64 [ 10, %.lr.ph33.i.i ], [ %indvars.iv.next50.i.i.1, %_ZNK2v84base10RingBufferIN4heap4base16BytesAndDurationELh10EE6ReduceIZNS3_12AverageSpeedERKS5_RKS4_St8optionalINS0_9TimeDeltaEEmmEUlSA_SA_E_EES4_T_SA_.exit.i.loopexit.unr-lcssa ]
  %.sroa.6.131.us.i.i.epil.init = phi i64 [ %.sroa.6.0.lcssa.i.i, %.lr.ph33.i.i ], [ %.sroa.3.0.i14.us.i.i.1, %_ZNK2v84base10RingBufferIN4heap4base16BytesAndDurationELh10EE6ReduceIZNS3_12AverageSpeedERKS5_RKS4_St8optionalINS0_9TimeDeltaEEmmEUlSA_SA_E_EES4_T_SA_.exit.i.loopexit.unr-lcssa ]
  %.sroa.020.130.us.i.i.epil.init = phi i64 [ %.sroa.020.0.lcssa.i.i, %.lr.ph33.i.i ], [ %.sroa.0.0.i15.us.i.i.1, %_ZNK2v84base10RingBufferIN4heap4base16BytesAndDurationELh10EE6ReduceIZNS3_12AverageSpeedERKS5_RKS4_St8optionalINS0_9TimeDeltaEEmmEUlSA_SA_E_EES4_T_SA_.exit.i.loopexit.unr-lcssa ]
  %lcmp.mod96 = trunc i8 %narrow99 to i1
  tail call void @llvm.assume(i1 %lcmp.mod96)
  %i.bk = add nuw nsw i64 %indvars.iv49.i.i.epil.init, 4294967295
  %i.bl = and i64 %i.bk, 4294967295
  %i.bm = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %i.bl ; 2 uses
  %i.bn = load i64, ptr %i.bm, align 8
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  %i.bp = load i64, ptr %i.bo, align 8
  %.sroa.3.0.i14.us.i.i.epil = add nsw i64 %i.bp, %.sroa.6.131.us.i.i.epil.init
  %.sroa.0.0.i15.us.i.i.epil = add i64 %i.bn, %.sroa.020.130.us.i.i.epil.init
  br label %_ZNK2v84base10RingBufferIN4heap4base16BytesAndDurationELh10EE6ReduceIZNS3_12AverageSpeedERKS5_RKS4_St8optionalINS0_9TimeDeltaEEmmEUlSA_SA_E_EES4_T_SA_.exit.i

_ZNK2v84base10RingBufferIN4heap4base16BytesAndDurationELh10EE6ReduceIZNS3_12AverageSpeedERKS5_RKS4_St8optionalINS0_9TimeDeltaEEmmEUlSA_SA_E_EES4_T_SA_.exit.i: ; preds = %.lr.ph33.split.us.i.i.epil.preheader, %_ZNK2v84base10RingBufferIN4heap4base16BytesAndDurationELh10EE6ReduceIZNS3_12AverageSpeedERKS5_RKS4_St8optionalINS0_9TimeDeltaEEmmEUlSA_SA_E_EES4_T_SA_.exit.i.loopexit.unr-lcssa, %._crit_edge.i.i
end_hunk_1
