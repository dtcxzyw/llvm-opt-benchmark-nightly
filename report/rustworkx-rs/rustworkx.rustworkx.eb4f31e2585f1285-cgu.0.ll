Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rustworkx-rs/original/rustworkx.rustworkx.eb4f31e2585f1285-cgu.0?download=true
inline.NumInlined: 67643
inline.NumDeleted: 27589
loop-unroll.NumCompletelyUnrolled: 143
loop-unroll.NumRuntimeUnrolled: 258
loop-unroll.NumUnrolled: 402
begin_hunk_0_@_RNvNtCskcxRuJ53GpR_9rustworkx6layout19graph_spiral_layout:bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 4 uses
  store i64 0, ptr %i.q, align 8, !noalias !136543
  %i.r = trunc nuw i64 %5 to i1
  %..i = select i1 %i.r, double %6, double 3.500000e-01 ; 2 uses
  %i.s = icmp eq i64 %i.g, 1
  br i1 %i.s, label %.loopexit73.thread.i, label %bb.f

bb.f:                                             ; preds = %_RNvMs5_NtCs87CvPiUlf0m_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskcxRuJ53GpR_9rustworkx.exit.i
  %i.t = and i8 %7, 1
  %or.cond.not.i = icmp eq i8 %i.t, 0
  %.not90.i = icmp eq i64 %i.g, 0                 ; 3 uses
  br i1 %or.cond.not.i, label %.preheader.i, label %.preheader75.i

.preheader75.i:                                   ; preds = %bb.f
  br i1 %.not90.i, label %.loopexit73.i, label %.lr.ph.i

.preheader.i:                                     ; preds = %bb.f
  br i1 %.not90.i, label %.loopexit73.i, label %.lr.ph88.i.preheader

.lr.ph88.i.preheader:                             ; preds = %.preheader.i
  %i.u = insertelement <2 x double> <double poison, double 1.000000e+00>, double %..i, i64 0
  br label %.lr.ph88.i

.loopexit73.i:                                    ; preds = %bb.aa, %bb.h, %.preheader.i, %.preheader75.i
  %i.v = trunc nuw i64 %2 to i1
  %.sroa.456.0.copyload.pre.pre.i = load ptr, ptr %i.p, align 8, !noalias !136543 ; 3 uses
  br i1 %i.v, label %bb.j, label %bb.m

.loopexit73.thread.i:                             ; preds = %_RNvMs5_NtCs87CvPiUlf0m_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskcxRuJ53GpR_9rustworkx.exit.i
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.n, i8 0, i64 16, i1 false), !noalias !136543
  store i64 1, ptr %i.q, align 8, !alias.scope !136545, !noalias !136546
  %i.w = trunc nuw i64 %2 to i1
  br i1 %i.w, label %.thread.i, label %.thread125.i

.thread.i:                                        ; preds = %.loopexit73.thread.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !136543
  br label %bb.k

.lr.ph88.i:                                       ; preds = %.lr.ph88.i.preheader, %bb.h
  %i.x = phi ptr [ %i.ag, %bb.h ], [ %i.n, %.lr.ph88.i.preheader ]
  %i.y = phi i64 [ %i.ai, %bb.h ], [ 0, %.lr.ph88.i.preheader ] ; 3 uses
  %i.z = phi <2 x double> [ %i.aj, %bb.h ], [ zeroinitializer, %.lr.ph88.i.preheader ] ; 3 uses
  %i.aa = extractelement <2 x double> %i.z, i64 0
  %sincos.i = tail call { double, double } @llvm.sincos.f64(double %i.aa) ; 2 uses
  %cos.i = extractvalue { double, double } %sincos.i, 1
  %sin.i = extractvalue { double, double } %sincos.i, 0
  %i.ab = extractelement <2 x double> %i.z, i64 1 ; 2 uses
  %i.ac = fmul double %i.ab, %cos.i
  %i.ad = fmul double %i.ab, %sin.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !136547)
  %i.ae = load i64, ptr %i.e, align 8, !range !70, !alias.scope !136547, !noalias !136548, !noundef !67
  %i.af = icmp eq i64 %i.y, %i.ae
  br i1 %i.af, label %bb.g, label %bb.h

bb.g:                                             ; preds = %.lr.ph88.i
  invoke fastcc void @_RNvMs4_NtCs87CvPiUlf0m_5alloc7raw_vecINtB5_6RawVecAdj2_E8grow_oneCskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e) #62
          to label %._crit_edge97.i unwind label %.loopexit74.i, !noalias !136543

._crit_edge97.i:                                  ; preds = %bb.g
  %.pre98.i = load ptr, ptr %i.p, align 8, !alias.scope !136547, !noalias !136548
  br label %bb.h

bb.h:                                             ; preds = %._crit_edge97.i, %.lr.ph88.i
  %i.ag = phi ptr [ %.pre98.i, %._crit_edge97.i ], [ %i.x, %.lr.ph88.i ] ; 2 uses
  %i.ah = getelementptr inbounds nuw [16 x i8], ptr %i.ag, i64 %i.y ; 2 uses
  store double %i.ac, ptr %i.ah, align 8, !noalias !136549
  %.sroa.447.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  store double %i.ad, ptr %.sroa.447.0..sroa_idx.i, align 8, !noalias !136549
  %i.ai = add nuw i64 %i.y, 1                     ; 3 uses
  store i64 %i.ai, ptr %i.q, align 8, !alias.scope !136547, !noalias !136548
  %i.aj = fadd <2 x double> %i.u, %i.z
  %exitcond96.not.i = icmp eq i64 %i.ai, %i.g
  br i1 %exitcond96.not.i, label %.loopexit73.i, label %.lr.ph88.i

.lr.ph.i:                                         ; preds = %.preheader75.i, %bb.aa
  %i.ak = phi ptr [ %i.dh, %bb.aa ], [ %i.n, %.preheader75.i ]
  %i.al = phi i64 [ %i.dj, %bb.aa ], [ 0, %.preheader75.i ] ; 3 uses
  %.sroa.09.183.i = phi double [ %i.ao, %bb.aa ], [ %..i, %.preheader75.i ] ; 2 uses
  %i.am = fmul double %.sroa.09.183.i, 5.000000e-01 ; 3 uses
  %i.an = fdiv double 1.000000e+00, %i.am
  %i.ao = fadd double %.sroa.09.183.i, %i.an      ; 2 uses
  %sincos31.i = tail call { double, double } @llvm.sincos.f64(double %i.ao) ; 2 uses
  %sin32.i = extractvalue { double, double } %sincos31.i, 0
  %cos33.i = extractvalue { double, double } %sincos31.i, 1
  %i.ap = fmul double %i.am, %cos33.i
  %i.aq = fmul double %i.am, %sin32.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !136550)
  %i.ar = load i64, ptr %i.e, align 8, !range !70, !alias.scope !136550, !noalias !136551, !noundef !67
  %i.as = icmp eq i64 %i.al, %i.ar
  br i1 %i.as, label %bb.i, label %bb.aa

bb.i:                                             ; preds = %.lr.ph.i
  invoke fastcc void @_RNvMs4_NtCs87CvPiUlf0m_5alloc7raw_vecINtB5_6RawVecAdj2_E8grow_oneCskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e) #62
          to label %._crit_edge.i unwind label %.loopexit.split-lp.loopexit.i, !noalias !136543

._crit_edge.i:                                    ; preds = %bb.i
  %.pre.i = load ptr, ptr %i.p, align 8, !alias.scope !136550, !noalias !136551
  br label %bb.aa

bb.j:                                             ; preds = %.loopexit73.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !136543
  tail call void @llvm.experimental.noalias.scope.decl(metadata !136552)
  %i.at = shl nuw nsw i64 %i.g, 3
  br i1 %.not90.i, label %.loopexit72.i, label %bb.k

bb.k:                                             ; preds = %bb.j, %.thread.i
  %i.au = phi i64 [ 8, %.thread.i ], [ %i.at, %bb.j ] ; 2 uses
  %.sroa.557.0.copyload108116.i = phi i64 [ 1, %.thread.i ], [ %i.g, %bb.j ] ; 2 uses
  %.sroa.456.0.copyload.pre.pre110114.i = phi ptr [ %i.n, %.thread.i ], [ %.sroa.456.0.copyload.pre.pre.i, %bb.j ] ; 2 uses
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #59, !noalias !136553
  %i.av = tail call noundef align 8 ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef %i.au, i64 noundef range(i64 1, -9223372036854775807) 8) #59, !noalias !136553 ; 5 uses
  %i.aw = icmp eq ptr %i.av, null
  br i1 %i.aw, label %bb.l, label %.lr.ph.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.preheader:                     ; preds = %bb.k
  %min.iters.check = icmp ult i64 %i.g, 4
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.preheader46, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.i.preheader
  %n.vec = and i64 %i.g, 1152921504606846972      ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <2 x i64> [ <i64 0, i64 1>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 3 uses
  %step.add = add nuw <2 x i64> %vec.ind, splat (i64 2)
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %index ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  store <2 x i64> %vec.ind, ptr %i.ax, align 8, !noalias !136554
  store <2 x i64> %step.add, ptr %i.ay, align 8, !noalias !136554
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %vec.ind.next = add nuw <2 x i64> %vec.ind, splat (i64 4)
  %i.az = icmp eq i64 %index.next, %n.vec
  br i1 %i.az, label %middle.block, label %vector.body, !llvm.loop !136501

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.g, %n.vec
  br i1 %cmp.n, label %.loopexit72.i, label %.lr.ph.i.i.i.i.i.i.preheader46

.lr.ph.i.i.i.i.i.i.preheader46:                   ; preds = %.lr.ph.i.i.i.i.i.i.preheader, %middle.block
  %.ph = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i

bb.l:                                             ; preds = %bb.k
  invoke void @_RNvNtCs87CvPiUlf0m_5alloc7raw_vec12handle_error(i64 noundef 8, i64 %i.au) #61
          to label %.noexc41.i unwind label %.loopexit.split-lp.loopexit.split-lp.i, !noalias !136543

.noexc41.i:                                       ; preds = %bb.l
  unreachable

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.preheader46, %.lr.ph.i.i.i.i.i.i
  %i.ba = phi i64 [ %i.bb, %.lr.ph.i.i.i.i.i.i ], [ %.ph, %.lr.ph.i.i.i.i.i.i.preheader46 ] ; 3 uses
  %i.bb = add nuw nsw i64 %i.ba, 1                ; 2 uses
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %i.ba
  store i64 %i.ba, ptr %i.bc, align 8, !noalias !136554
  %exitcond.not.i.i.i.i.i.i = icmp eq i64 %i.bb, %i.g
  br i1 %exitcond.not.i.i.i.i.i.i, label %.loopexit72.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !136502

bb.m:                                             ; preds = %bb.n, %.loopexit73.i
  %.sroa.456.0.copyload.pre.pre111.i = phi ptr [ %.sroa.456.0.copyload.pre.pre.i, %.loopexit73.i ], [ %.sroa.456.0.copyload.pre.pre110115123.i, %bb.n ] ; 4 uses
  %.sroa.557.0.copyload109.i = phi i64 [ %i.g, %.loopexit73.i ], [ %.sroa.557.0.copyload108117122.i, %bb.n ] ; 4 uses
  %i.bd = load i64, ptr %4, align 8, !range !68, !alias.scope !136541, !noalias !136555, !noundef !67
  %i.be = trunc nuw i64 %i.bd to i1
  br i1 %i.be, label %bb.o, label %.loopexit.i

.thread125.i:                                     ; preds = %.loopexit73.thread.i
  %i.bf = load i64, ptr %4, align 8, !range !68, !alias.scope !136541, !noalias !136555, !noundef !67
  %i.bg = trunc nuw i64 %i.bf to i1
  br i1 %i.bg, label %.thread132.i, label %.loopexit.i

.thread132.i:                                     ; preds = %.thread125.i
  %i.bh = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  br label %.lr.ph.i.preheader.i

.loopexit72.i:                                    ; preds = %.lr.ph.i.i.i.i.i.i, %middle.block, %bb.j
  %i.bi = phi ptr [ inttoptr (i64 8 to ptr), %bb.j ], [ %i.av, %middle.block ], [ %i.av, %.lr.ph.i.i.i.i.i.i ]
  %.sroa.456.0.copyload.pre.pre110115123.i = phi ptr [ %.sroa.456.0.copyload.pre.pre.i, %bb.j ], [ %.sroa.456.0.copyload.pre.pre110114.i, %middle.block ], [ %.sroa.456.0.copyload.pre.pre110114.i, %.lr.ph.i.i.i.i.i.i ] ; 2 uses
  %.sroa.557.0.copyload108117122.i = phi i64 [ %i.g, %bb.j ], [ %.sroa.557.0.copyload108116.i, %middle.block ], [ %.sroa.557.0.copyload108116.i, %.lr.ph.i.i.i.i.i.i ] ; 2 uses
  store i64 %i.g, ptr %i.d, align 8, !alias.scope !136552, !noalias !136543
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %i.bi, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !136552, !noalias !136543
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store i64 %i.g, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !136552, !noalias !136543
  invoke fastcc void @_RNvNtNtCskcxRuJ53GpR_9rustworkx6layout6spring7rescale(ptr noalias nofree noundef nonnull align 8 %.sroa.456.0.copyload.pre.pre110115123.i, i64 noundef %.sroa.557.0.copyload108117122.i, double noundef %3, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.d)
          to label %bb.n unwind label %.loopexit.split-lp.loopexit.split-lp.i, !noalias !136543

bb.n:                                             ; preds = %.loopexit72.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !136543
  br label %bb.m

bb.o:                                             ; preds = %bb.m
  %.idx.i.i = shl nuw nsw i64 %.sroa.557.0.copyload109.i, 4
  %i.bj = getelementptr inbounds nuw i8, ptr %.sroa.456.0.copyload.pre.pre111.i, i64 %.idx.i.i
  %i.bk = icmp eq i64 %.sroa.557.0.copyload109.i, 0
  br i1 %i.bk, label %.loopexit.i, label %.lr.ph.i.preheader.i

.lr.ph.i.preheader.i:                             ; preds = %bb.o, %.thread132.i
  %i.bl = phi ptr [ %i.bh, %.thread132.i ], [ %i.bj, %bb.o ] ; 2 uses
  %.sroa.456.0.copyload.pre.pre111129140.i = phi ptr [ %i.n, %.thread132.i ], [ %.sroa.456.0.copyload.pre.pre111.i, %bb.o ] ; 7 uses
  %.sroa.557.0.copyload109130139.i = phi i64 [ 1, %.thread132.i ], [ %.sroa.557.0.copyload109.i, %bb.o ] ; 2 uses
  %.sroa.456.0.copyload.pre.pre111129140.i30 = ptrtoaddr ptr %.sroa.456.0.copyload.pre.pre111129140.i to i64
  %8 = ptrtoaddr ptr %i.bl to i64
  %.sroa.048.0.copyload141.in.i = getelementptr inbounds nuw i8, ptr %4, i64 8
  %9 = load <2 x double>, ptr %.sroa.048.0.copyload141.in.i, align 8, !alias.scope !136541, !noalias !136555 ; 3 uses
  %i.bm = add i64 %8, -16
  %i.bn = sub i64 %i.bm, %.sroa.456.0.copyload.pre.pre111129140.i30 ; 2 uses
  %i.bo = lshr i64 %i.bn, 4
  %i.bp = add nuw nsw i64 %i.bo, 1                ; 2 uses
  %min.iters.check31 = icmp ult i64 %i.bn, 48
  br i1 %min.iters.check31, label %.lr.ph.i.i.preheader, label %vector.ph32

vector.ph32:                                      ; preds = %.lr.ph.i.preheader.i
  %n.vec33 = and i64 %i.bp, 2305843009213693950   ; 3 uses
  %i.bq = shl i64 %n.vec33, 4
  %i.br = getelementptr i8, ptr %.sroa.456.0.copyload.pre.pre111129140.i, i64 %i.bq
  br label %vector.body34

vector.body34:                                    ; preds = %vector.body34, %vector.ph32
  %index35 = phi i64 [ 0, %vector.ph32 ], [ %index.next38, %vector.body34 ] ; 2 uses
  %i.bs = shl i64 %index35, 4                     ; 2 uses
  %next.gep = getelementptr i8, ptr %.sroa.456.0.copyload.pre.pre111129140.i, i64 %i.bs ; 2 uses
  %i.bt = getelementptr i8, ptr %.sroa.456.0.copyload.pre.pre111129140.i, i64 %i.bs
  %next.gep36 = getelementptr i8, ptr %i.bt, i64 16 ; 2 uses
  %wide.load = load <2 x double>, ptr %next.gep, align 8, !alias.scope !136556, !noalias !136543
  %wide.load37 = load <2 x double>, ptr %next.gep36, align 8, !alias.scope !136556, !noalias !136543
  %i.bu = fadd <2 x double> %9, %wide.load
  %i.bv = fadd <2 x double> %9, %wide.load37
  store <2 x double> %i.bu, ptr %next.gep, align 8, !alias.scope !136556, !noalias !136543
  store <2 x double> %i.bv, ptr %next.gep36, align 8, !alias.scope !136556, !noalias !136543
  %index.next38 = add nuw i64 %index35, 2         ; 2 uses
  %i.bw = icmp eq i64 %index.next38, %n.vec33
  br i1 %i.bw, label %middle.block39, label %vector.body34, !llvm.loop !136505

middle.block39:                                   ; preds = %vector.body34
  %cmp.n40 = icmp eq i64 %i.bp, %n.vec33
  br i1 %cmp.n40, label %.loopexit.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %.lr.ph.i.preheader.i, %middle.block39
  %.sroa.0.01.i.i.ph = phi ptr [ %.sroa.456.0.copyload.pre.pre111129140.i, %.lr.ph.i.preheader.i ], [ %i.br, %middle.block39 ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i
  %.sroa.0.01.i.i = phi ptr [ %i.bx, %.lr.ph.i.i ], [ %.sroa.0.01.i.i.ph, %.lr.ph.i.i.preheader ] ; 3 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %.sroa.0.01.i.i, i64 16 ; 2 uses
  %i.by = load <2 x double>, ptr %.sroa.0.01.i.i, align 8, !alias.scope !136556, !noalias !136543
  %i.bz = fadd <2 x double> %9, %i.by
  store <2 x double> %i.bz, ptr %.sroa.0.01.i.i, align 8, !alias.scope !136556, !noalias !136543
  %i.ca = icmp eq ptr %i.bx, %i.bl
  br i1 %i.ca, label %.loopexit.i, label %.lr.ph.i.i, !llvm.loop !136506

.loopexit.i:                                      ; preds = %.lr.ph.i.i, %middle.block39, %bb.o, %.thread125.i, %bb.m
  %.sroa.557.0.copyload109131.i = phi i64 [ 1, %.thread125.i ], [ 0, %bb.o ], [ %.sroa.557.0.copyload109.i, %bb.m ], [ %.sroa.557.0.copyload109130139.i, %middle.block39 ], [ %.sroa.557.0.copyload109130139.i, %.lr.ph.i.i ] ; 2 uses
  %.sroa.456.0.copyload.pre.pre111128.i = phi ptr [ %i.n, %.thread125.i ], [ %.sroa.456.0.copyload.pre.pre111.i, %bb.o ], [ %.sroa.456.0.copyload.pre.pre111.i, %bb.m ], [ %.sroa.456.0.copyload.pre.pre111129140.i, %middle.block39 ], [ %.sroa.456.0.copyload.pre.pre111129140.i, %.lr.ph.i.i ] ; 5 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.cc = load ptr, ptr %i.cb, align 8, !alias.scope !136540, !noalias !136542, !nonnull !67, !noundef !67 ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ce = load i64, ptr %i.cd, align 8, !alias.scope !136540, !noalias !136542, !noundef !67
  %i.cf = getelementptr inbounds nuw [16 x i8], ptr %i.cc, i64 %i.ce
  %.sroa.055.0.copyload.i = load i64, ptr %i.e, align 8, !noalias !136543 ; 7 uses
  %i.cg = icmp ult i64 %.sroa.557.0.copyload109131.i, 576460752303423488
  tail call void @llvm.assume(i1 %i.cg)
  %i.ch = getelementptr inbounds nuw [16 x i8], ptr %.sroa.456.0.copyload.pre.pre111128.i, i64 %.sroa.557.0.copyload109131.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !136557
  %i.ci = invoke noundef i64 @_RNvNtCs1X8ypyHYXIB_8foldhash4seed19gen_per_hasher_seed()
          to label %.noexc3.i.i unwind label %.thread.i.i, !noalias !136557

.noexc3.i.i:                                      ; preds = %.loopexit.i
  %i.cj = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtNtCs1X8ypyHYXIB_8foldhash4seed6global19GLOBAL_SEED_STORAGE, i64 32) acquire, align 8, !noalias !136557
  %i.ck = icmp eq i8 %i.cj, 2
  br i1 %i.ck, label %bb.q, label %bb.p, !prof !77

bb.p:                                             ; preds = %.noexc3.i.i
  invoke void @_RNvMs_NtNtCs1X8ypyHYXIB_8foldhash4seed6globalNtB4_10GlobalSeed9init_slow() #62
          to label %bb.q unwind label %.thread.i.i, !noalias !136557

bb.q:                                             ; preds = %bb.p, %.noexc3.i.i
  store i64 0, ptr %i.c, align 8, !alias.scope !136558, !noalias !136557
  %.sroa.42.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.42.0..sroa_idx.i.i.i, align 8, !alias.scope !136558, !noalias !136557
  %.sroa.53.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 0, ptr %.sroa.53.0..sroa_idx.i.i.i, align 8, !alias.scope !136558, !noalias !136557
  %.sroa.6.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6.0..sroa_idx.i.i.i, ptr noundef nonnull align 8 dereferenceable(32) @112, i64 32, i1 false), !noalias !136557
  %i.cl = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  store i64 %i.ci, ptr %i.cl, align 8, !alias.scope !136558, !noalias !136557
  invoke fastcc void @_RNvMs_NtCsfztDQZkQYYe_8indexmap5innerINtB4_4CorejAdj2_E7reserveCskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.c, i64 noundef 0)
          to label %bb.r unwind label %bb.z, !noalias !136559

bb.r:                                             ; preds = %bb.q
  %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  br label %bb.s

bb.s:                                             ; preds = %bb.y, %bb.r
  %i.cm = phi ptr [ %i.da, %bb.y ], [ %.sroa.456.0.copyload.pre.pre111128.i, %bb.r ] ; 3 uses
  %i.cn = phi i64 [ %i.ct, %bb.y ], [ 0, %bb.r ]
  %i.co = phi ptr [ %i.cs, %bb.y ], [ %i.cc, %bb.r ]
  br label %bb.t

bb.t:                                             ; preds = %bb.u, %bb.s
  %i.cp = phi i64 [ %i.ct, %bb.u ], [ %i.cn, %bb.s ] ; 2 uses
  %i.cq = phi ptr [ %i.cs, %bb.u ], [ %i.co, %bb.s ] ; 3 uses
  %i.cr = icmp eq ptr %i.cq, %i.cf
  br i1 %i.cr, label %.loopexit.i.i.i.i.i.i.i, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cq, i64 16 ; 2 uses
  %i.ct = add i64 %i.cp, 1                        ; 2 uses
  %.val.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.cq, align 8, !noalias !136560, !noundef !67
  %.not.i.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %.val.i.i.i.i.i.i.i.i.i.i.i, null
  br i1 %.not.i.not.i.i.i.i.i.i.i.i.i.i.i, label %bb.t, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.cu = icmp eq ptr %i.cm, %i.ch
  br i1 %i.cu, label %.loopexit.i.i.i.i.i.i.i, label %bb.x

bb.w:                                             ; preds = %bb.x
  %i.cv = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cw = icmp eq i64 %.sroa.055.0.copyload.i, 0
  br i1 %i.cw, label %.body7.i.i, label %.body.sink.split.i.i.i

bb.x:                                             ; preds = %bb.v
  %i.cx = and i64 %i.cp, 4294967295               ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !136561
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %i.cm, i64 16, i1 false), !noalias !136562
  store i64 %i.cx, ptr %i.b, align 8, !noalias !136561
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !136563
  invoke fastcc void @_RNvMs2_NtCsfztDQZkQYYe_8indexmap3mapINtB5_8IndexMapjAdj2_NtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateE11insert_fullCskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef align 8 captures(address) dereferenceable(32) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.c, i64 noundef %i.cx, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i)
          to label %bb.y unwind label %bb.w, !noalias !136562

.loopexit.i.i.i.i.i.i.i:                          ; preds = %bb.v, %bb.t
  %i.cy = icmp eq i64 %.sroa.055.0.copyload.i, 0
  br i1 %i.cy, label %_RINvNtNtCskcxRuJ53GpR_9rustworkx6layout6spiral13spiral_layoutNtCs68Jln09rRqb_8petgraph10UndirectedEB6_.exit, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i4.i.i.i6.i.i.i.i.i.i.i

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i4.i.i.i6.i.i.i.i.i.i.i: ; preds = %.loopexit.i.i.i.i.i.i.i
  %i.cz = shl nuw i64 %.sroa.055.0.copyload.i, 4
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.456.0.copyload.pre.pre111128.i, i64 noundef %i.cz, i64 noundef range(i64 1, -9223372036854775807) 8) #59, !noalias !136564
  br label %_RINvNtNtCskcxRuJ53GpR_9rustworkx6layout6spiral13spiral_layoutNtCs68Jln09rRqb_8petgraph10UndirectedEB6_.exit

bb.y:                                             ; preds = %bb.x
  %i.da = getelementptr inbounds nuw i8, ptr %i.cm, i64 16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !136563
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !136561
  br label %bb.s

.body.sink.split.i.i.i:                           ; preds = %bb.z, %bb.w
  %eh.lpad-body30.ph.i.i.i = phi { ptr, i32 } [ %i.dc, %bb.z ], [ %i.cv, %bb.w ]
  %i.db = shl nuw i64 %.sroa.055.0.copyload.i, 4
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.456.0.copyload.pre.pre111128.i, i64 noundef %i.db, i64 noundef range(i64 1, -9223372036854775807) 8) #59, !noalias !136559
  br label %.body7.i.i

bb.z:                                             ; preds = %bb.q
  %i.dc = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.dd = icmp eq i64 %.sroa.055.0.copyload.i, 0
  br i1 %i.dd, label %.body7.i.i, label %.body.sink.split.i.i.i

.body7.i.i:                                       ; preds = %bb.z, %.body.sink.split.i.i.i, %bb.w
  %eh.lpad-body8.i.i = phi { ptr, i32 } [ %eh.lpad-body30.ph.i.i.i, %.body.sink.split.i.i.i ], [ %i.dc, %bb.z ], [ %i.cv, %bb.w ]
  call fastcc void @_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCsfztDQZkQYYe_8indexmap3map8IndexMapjAdj2_NtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateEECskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef align 8 dereferenceable(64) %i.c) #63, !noalias !136557
  br label %.body.i

.thread.i.i:                                      ; preds = %bb.p, %.loopexit.i
  %i.de = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.df = icmp eq i64 %.sroa.055.0.copyload.i, 0
  br i1 %i.df, label %.body.i, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i4.i.i.i.i.i

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i4.i.i.i.i.i: ; preds = %.thread.i.i
  %i.dg = shl nuw i64 %.sroa.055.0.copyload.i, 4
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.456.0.copyload.pre.pre111128.i, i64 noundef %i.dg, i64 noundef range(i64 1, -9223372036854775807) 8) #59, !noalias !136565
  br label %.body.i

bb.aa:                                            ; preds = %._crit_edge.i, %.lr.ph.i
  %i.dh = phi ptr [ %.pre.i, %._crit_edge.i ], [ %i.ak, %.lr.ph.i ] ; 2 uses
  %i.di = getelementptr inbounds nuw [16 x i8], ptr %i.dh, i64 %i.al ; 2 uses
  store double %i.ap, ptr %i.di, align 8, !noalias !136566
  %.sroa.445.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.di, i64 8
  store double %i.aq, ptr %.sroa.445.0..sroa_idx.i, align 8, !noalias !136566
  %i.dj = add nuw i64 %i.al, 1                    ; 3 uses
  store i64 %i.dj, ptr %i.q, align 8, !alias.scope !136550, !noalias !136551
  %exitcond.not.i = icmp eq i64 %i.dj, %i.g
  br i1 %exitcond.not.i, label %.loopexit73.i, label %.lr.ph.i

.body.i:                                          ; preds = %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i, %.loopexit.split-lp.i, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i4.i.i.i.i.i, %.thread.i.i, %.body7.i.i
  %eh.lpad-body69.i = phi { ptr, i32 } [ %i.de, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i4.i.i.i.i.i ], [ %eh.lpad-body8.i.i, %.body7.i.i ], [ %i.de, %.thread.i.i ], [ %lpad.phi.i, %.loopexit.split-lp.i ], [ %lpad.phi.i, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i ]
  resume { ptr, i32 } %eh.lpad-body69.i

.loopexit74.i:                                    ; preds = %bb.g
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i

.loopexit.split-lp.loopexit.i:                    ; preds = %bb.i
  %lpad.loopexit77.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i

.loopexit.split-lp.loopexit.split-lp.i:           ; preds = %.loopexit72.i, %bb.l
  %lpad.loopexit.split-lp78.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i

.loopexit.split-lp.i:                             ; preds = %.loopexit.split-lp.loopexit.split-lp.i, %.loopexit.split-lp.loopexit.i, %.loopexit74.i
  %lpad.phi.i = phi { ptr, i32 } [ %lpad.loopexit.i, %.loopexit74.i ], [ %lpad.loopexit77.i, %.loopexit.split-lp.loopexit.i ], [ %lpad.loopexit.split-lp78.i, %.loopexit.split-lp.loopexit.split-lp.i ] ; 2 uses
  %.val.i = load i64, ptr %i.e, align 8, !noalias !136543 ; 2 uses
  %i.dk = icmp eq i64 %.val.i, 0
  br i1 %i.dk, label %.body.i, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i: ; preds = %.loopexit.split-lp.i
  %.val34.i = load ptr, ptr %i.p, align 8, !noalias !136543, !nonnull !67, !noundef !67
  %i.dl = shl nuw i64 %.val.i, 4
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val34.i, i64 noundef %i.dl, i64 noundef range(i64 1, -9223372036854775807) 8) #59, !noalias !136543
  br label %.body.i

_RINvNtNtCskcxRuJ53GpR_9rustworkx6layout6spiral13spiral_layoutNtCs68Jln09rRqb_8petgraph10UndirectedEB6_.exit: ; preds = %.loopexit.i.i.i.i.i.i.i, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i4.i.i.i6.i.i.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(64) %i.c, i64 64, i1 false), !noalias !136567
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !136557
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !136543
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvNtCskcxRuJ53GpR_9rustworkx6layout19graph_spring_layout(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(72) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(88) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(40) %2, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(40) %3, i64 noundef range(i64 0, 2) %4, double %5, i32 noundef %6, i1 noundef zeroext %7, i64 noundef %8, double noundef %9, ptr noundef %10, double noundef %11, double noundef %12, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(24) %13, i64 noundef range(i64 0, 2) %14, i64 %15) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 3 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [64 x i8], align 8                ; 11 uses
  %i.d = alloca [24 x i8], align 8                ; 9 uses
  %i.e = alloca [24 x i8], align 8                ; 7 uses
  %i.f = alloca [24 x i8], align 8                ; 9 uses
  %i.g = alloca [24 x i8], align 8                ; 7 uses
  %i.h = alloca [72 x i8], align 8                ; 7 uses
  %i.i = alloca [32 x i8], align 4                ; 11 uses
  %i.j = alloca [4 x i8], align 4                 ; 3 uses
  %i.k = alloca [72 x i8], align 8                ; 7 uses
  %i.l = alloca [40 x i8], align 8                ; 17 uses
  %.sroa.641.i = alloca [16 x i8], align 8        ; 4 uses
  %i.m = alloca [48 x i8], align 16               ; 7 uses
  %i.n = alloca [32 x i8], align 16               ; 9 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !136859)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !136860)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !136861)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !136862)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !136863)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.641.i)
end_hunk_0
begin_hunk_1_@_RNvNtCskcxRuJ53GpR_9rustworkx6layout21digraph_spiral_layout:bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 4 uses
  store i64 0, ptr %i.q, align 8, !noalias !137148
  %i.r = trunc nuw i64 %5 to i1
  %..i = select i1 %i.r, double %6, double 3.500000e-01 ; 2 uses
  %i.s = icmp eq i64 %i.g, 1
  br i1 %i.s, label %.loopexit73.thread.i, label %bb.f

bb.f:                                             ; preds = %_RNvMs5_NtCs87CvPiUlf0m_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskcxRuJ53GpR_9rustworkx.exit.i
  %i.t = and i8 %7, 1
  %or.cond.not.i = icmp eq i8 %i.t, 0
  %.not90.i = icmp eq i64 %i.g, 0                 ; 3 uses
  br i1 %or.cond.not.i, label %.preheader.i, label %.preheader75.i

.preheader75.i:                                   ; preds = %bb.f
  br i1 %.not90.i, label %.loopexit73.i, label %.lr.ph.i

.preheader.i:                                     ; preds = %bb.f
  br i1 %.not90.i, label %.loopexit73.i, label %.lr.ph88.i.preheader

.lr.ph88.i.preheader:                             ; preds = %.preheader.i
  %i.u = insertelement <2 x double> <double poison, double 1.000000e+00>, double %..i, i64 0
  br label %.lr.ph88.i

.loopexit73.i:                                    ; preds = %bb.aa, %bb.h, %.preheader.i, %.preheader75.i
  %i.v = trunc nuw i64 %2 to i1
  %.sroa.456.0.copyload.pre.pre.i = load ptr, ptr %i.p, align 8, !noalias !137148 ; 3 uses
  br i1 %i.v, label %bb.j, label %bb.m

.loopexit73.thread.i:                             ; preds = %_RNvMs5_NtCs87CvPiUlf0m_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskcxRuJ53GpR_9rustworkx.exit.i
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.n, i8 0, i64 16, i1 false), !noalias !137148
  store i64 1, ptr %i.q, align 8, !alias.scope !137150, !noalias !137151
  %i.w = trunc nuw i64 %2 to i1
  br i1 %i.w, label %.thread.i, label %.thread125.i

.thread.i:                                        ; preds = %.loopexit73.thread.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !137148
  br label %bb.k

.lr.ph88.i:                                       ; preds = %.lr.ph88.i.preheader, %bb.h
  %i.x = phi ptr [ %i.ag, %bb.h ], [ %i.n, %.lr.ph88.i.preheader ]
  %i.y = phi i64 [ %i.ai, %bb.h ], [ 0, %.lr.ph88.i.preheader ] ; 3 uses
  %i.z = phi <2 x double> [ %i.aj, %bb.h ], [ zeroinitializer, %.lr.ph88.i.preheader ] ; 3 uses
  %i.aa = extractelement <2 x double> %i.z, i64 0
  %sincos.i = tail call { double, double } @llvm.sincos.f64(double %i.aa) ; 2 uses
  %cos.i = extractvalue { double, double } %sincos.i, 1
  %sin.i = extractvalue { double, double } %sincos.i, 0
  %i.ab = extractelement <2 x double> %i.z, i64 1 ; 2 uses
  %i.ac = fmul double %i.ab, %cos.i
  %i.ad = fmul double %i.ab, %sin.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !137152)
  %i.ae = load i64, ptr %i.e, align 8, !range !70, !alias.scope !137152, !noalias !137153, !noundef !67
  %i.af = icmp eq i64 %i.y, %i.ae
  br i1 %i.af, label %bb.g, label %bb.h

bb.g:                                             ; preds = %.lr.ph88.i
  invoke fastcc void @_RNvMs4_NtCs87CvPiUlf0m_5alloc7raw_vecINtB5_6RawVecAdj2_E8grow_oneCskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e) #62
          to label %._crit_edge97.i unwind label %.loopexit74.i, !noalias !137148

._crit_edge97.i:                                  ; preds = %bb.g
  %.pre98.i = load ptr, ptr %i.p, align 8, !alias.scope !137152, !noalias !137153
  br label %bb.h

bb.h:                                             ; preds = %._crit_edge97.i, %.lr.ph88.i
  %i.ag = phi ptr [ %.pre98.i, %._crit_edge97.i ], [ %i.x, %.lr.ph88.i ] ; 2 uses
  %i.ah = getelementptr inbounds nuw [16 x i8], ptr %i.ag, i64 %i.y ; 2 uses
  store double %i.ac, ptr %i.ah, align 8, !noalias !137154
  %.sroa.447.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  store double %i.ad, ptr %.sroa.447.0..sroa_idx.i, align 8, !noalias !137154
  %i.ai = add nuw i64 %i.y, 1                     ; 3 uses
  store i64 %i.ai, ptr %i.q, align 8, !alias.scope !137152, !noalias !137153
  %i.aj = fadd <2 x double> %i.u, %i.z
  %exitcond96.not.i = icmp eq i64 %i.ai, %i.g
  br i1 %exitcond96.not.i, label %.loopexit73.i, label %.lr.ph88.i

.lr.ph.i:                                         ; preds = %.preheader75.i, %bb.aa
  %i.ak = phi ptr [ %i.dh, %bb.aa ], [ %i.n, %.preheader75.i ]
  %i.al = phi i64 [ %i.dj, %bb.aa ], [ 0, %.preheader75.i ] ; 3 uses
  %.sroa.09.183.i = phi double [ %i.ao, %bb.aa ], [ %..i, %.preheader75.i ] ; 2 uses
  %i.am = fmul double %.sroa.09.183.i, 5.000000e-01 ; 3 uses
  %i.an = fdiv double 1.000000e+00, %i.am
  %i.ao = fadd double %.sroa.09.183.i, %i.an      ; 2 uses
  %sincos31.i = tail call { double, double } @llvm.sincos.f64(double %i.ao) ; 2 uses
  %sin32.i = extractvalue { double, double } %sincos31.i, 0
  %cos33.i = extractvalue { double, double } %sincos31.i, 1
  %i.ap = fmul double %i.am, %cos33.i
  %i.aq = fmul double %i.am, %sin32.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !137155)
  %i.ar = load i64, ptr %i.e, align 8, !range !70, !alias.scope !137155, !noalias !137156, !noundef !67
  %i.as = icmp eq i64 %i.al, %i.ar
  br i1 %i.as, label %bb.i, label %bb.aa

bb.i:                                             ; preds = %.lr.ph.i
  invoke fastcc void @_RNvMs4_NtCs87CvPiUlf0m_5alloc7raw_vecINtB5_6RawVecAdj2_E8grow_oneCskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e) #62
          to label %._crit_edge.i unwind label %.loopexit.split-lp.loopexit.i, !noalias !137148

._crit_edge.i:                                    ; preds = %bb.i
  %.pre.i = load ptr, ptr %i.p, align 8, !alias.scope !137155, !noalias !137156
  br label %bb.aa

bb.j:                                             ; preds = %.loopexit73.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !137148
  tail call void @llvm.experimental.noalias.scope.decl(metadata !137157)
  %i.at = shl nuw nsw i64 %i.g, 3
  br i1 %.not90.i, label %.loopexit72.i, label %bb.k

bb.k:                                             ; preds = %bb.j, %.thread.i
  %i.au = phi i64 [ 8, %.thread.i ], [ %i.at, %bb.j ] ; 2 uses
  %.sroa.557.0.copyload108116.i = phi i64 [ 1, %.thread.i ], [ %i.g, %bb.j ] ; 2 uses
  %.sroa.456.0.copyload.pre.pre110114.i = phi ptr [ %i.n, %.thread.i ], [ %.sroa.456.0.copyload.pre.pre.i, %bb.j ] ; 2 uses
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #59, !noalias !137158
  %i.av = tail call noundef align 8 ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef %i.au, i64 noundef range(i64 1, -9223372036854775807) 8) #59, !noalias !137158 ; 5 uses
  %i.aw = icmp eq ptr %i.av, null
  br i1 %i.aw, label %bb.l, label %.lr.ph.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.preheader:                     ; preds = %bb.k
  %min.iters.check = icmp ult i64 %i.g, 4
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.preheader46, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.i.preheader
  %n.vec = and i64 %i.g, 1152921504606846972      ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <2 x i64> [ <i64 0, i64 1>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 3 uses
  %step.add = add nuw <2 x i64> %vec.ind, splat (i64 2)
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %index ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  store <2 x i64> %vec.ind, ptr %i.ax, align 8, !noalias !137159
  store <2 x i64> %step.add, ptr %i.ay, align 8, !noalias !137159
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %vec.ind.next = add nuw <2 x i64> %vec.ind, splat (i64 4)
  %i.az = icmp eq i64 %index.next, %n.vec
  br i1 %i.az, label %middle.block, label %vector.body, !llvm.loop !137106

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.g, %n.vec
  br i1 %cmp.n, label %.loopexit72.i, label %.lr.ph.i.i.i.i.i.i.preheader46

.lr.ph.i.i.i.i.i.i.preheader46:                   ; preds = %.lr.ph.i.i.i.i.i.i.preheader, %middle.block
  %.ph = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i

bb.l:                                             ; preds = %bb.k
  invoke void @_RNvNtCs87CvPiUlf0m_5alloc7raw_vec12handle_error(i64 noundef 8, i64 %i.au) #61
          to label %.noexc41.i unwind label %.loopexit.split-lp.loopexit.split-lp.i, !noalias !137148

.noexc41.i:                                       ; preds = %bb.l
  unreachable

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.preheader46, %.lr.ph.i.i.i.i.i.i
  %i.ba = phi i64 [ %i.bb, %.lr.ph.i.i.i.i.i.i ], [ %.ph, %.lr.ph.i.i.i.i.i.i.preheader46 ] ; 3 uses
  %i.bb = add nuw nsw i64 %i.ba, 1                ; 2 uses
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %i.ba
  store i64 %i.ba, ptr %i.bc, align 8, !noalias !137159
  %exitcond.not.i.i.i.i.i.i = icmp eq i64 %i.bb, %i.g
  br i1 %exitcond.not.i.i.i.i.i.i, label %.loopexit72.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !137107

bb.m:                                             ; preds = %bb.n, %.loopexit73.i
  %.sroa.456.0.copyload.pre.pre111.i = phi ptr [ %.sroa.456.0.copyload.pre.pre.i, %.loopexit73.i ], [ %.sroa.456.0.copyload.pre.pre110115123.i, %bb.n ] ; 4 uses
  %.sroa.557.0.copyload109.i = phi i64 [ %i.g, %.loopexit73.i ], [ %.sroa.557.0.copyload108117122.i, %bb.n ] ; 4 uses
  %i.bd = load i64, ptr %4, align 8, !range !68, !alias.scope !137146, !noalias !137160, !noundef !67
  %i.be = trunc nuw i64 %i.bd to i1
  br i1 %i.be, label %bb.o, label %.loopexit.i

.thread125.i:                                     ; preds = %.loopexit73.thread.i
  %i.bf = load i64, ptr %4, align 8, !range !68, !alias.scope !137146, !noalias !137160, !noundef !67
  %i.bg = trunc nuw i64 %i.bf to i1
  br i1 %i.bg, label %.thread132.i, label %.loopexit.i

.thread132.i:                                     ; preds = %.thread125.i
  %i.bh = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  br label %.lr.ph.i.preheader.i

.loopexit72.i:                                    ; preds = %.lr.ph.i.i.i.i.i.i, %middle.block, %bb.j
  %i.bi = phi ptr [ inttoptr (i64 8 to ptr), %bb.j ], [ %i.av, %middle.block ], [ %i.av, %.lr.ph.i.i.i.i.i.i ]
  %.sroa.456.0.copyload.pre.pre110115123.i = phi ptr [ %.sroa.456.0.copyload.pre.pre.i, %bb.j ], [ %.sroa.456.0.copyload.pre.pre110114.i, %middle.block ], [ %.sroa.456.0.copyload.pre.pre110114.i, %.lr.ph.i.i.i.i.i.i ] ; 2 uses
  %.sroa.557.0.copyload108117122.i = phi i64 [ %i.g, %bb.j ], [ %.sroa.557.0.copyload108116.i, %middle.block ], [ %.sroa.557.0.copyload108116.i, %.lr.ph.i.i.i.i.i.i ] ; 2 uses
  store i64 %i.g, ptr %i.d, align 8, !alias.scope !137157, !noalias !137148
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %i.bi, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !137157, !noalias !137148
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store i64 %i.g, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !137157, !noalias !137148
  invoke fastcc void @_RNvNtNtCskcxRuJ53GpR_9rustworkx6layout6spring7rescale(ptr noalias nofree noundef nonnull align 8 %.sroa.456.0.copyload.pre.pre110115123.i, i64 noundef %.sroa.557.0.copyload108117122.i, double noundef %3, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.d)
          to label %bb.n unwind label %.loopexit.split-lp.loopexit.split-lp.i, !noalias !137148

bb.n:                                             ; preds = %.loopexit72.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !137148
  br label %bb.m

bb.o:                                             ; preds = %bb.m
  %.idx.i.i = shl nuw nsw i64 %.sroa.557.0.copyload109.i, 4
  %i.bj = getelementptr inbounds nuw i8, ptr %.sroa.456.0.copyload.pre.pre111.i, i64 %.idx.i.i
  %i.bk = icmp eq i64 %.sroa.557.0.copyload109.i, 0
  br i1 %i.bk, label %.loopexit.i, label %.lr.ph.i.preheader.i

.lr.ph.i.preheader.i:                             ; preds = %bb.o, %.thread132.i
  %i.bl = phi ptr [ %i.bh, %.thread132.i ], [ %i.bj, %bb.o ] ; 2 uses
  %.sroa.456.0.copyload.pre.pre111129140.i = phi ptr [ %i.n, %.thread132.i ], [ %.sroa.456.0.copyload.pre.pre111.i, %bb.o ] ; 7 uses
  %.sroa.557.0.copyload109130139.i = phi i64 [ 1, %.thread132.i ], [ %.sroa.557.0.copyload109.i, %bb.o ] ; 2 uses
  %.sroa.456.0.copyload.pre.pre111129140.i30 = ptrtoaddr ptr %.sroa.456.0.copyload.pre.pre111129140.i to i64
  %8 = ptrtoaddr ptr %i.bl to i64
  %.sroa.048.0.copyload141.in.i = getelementptr inbounds nuw i8, ptr %4, i64 8
  %9 = load <2 x double>, ptr %.sroa.048.0.copyload141.in.i, align 8, !alias.scope !137146, !noalias !137160 ; 3 uses
  %i.bm = add i64 %8, -16
  %i.bn = sub i64 %i.bm, %.sroa.456.0.copyload.pre.pre111129140.i30 ; 2 uses
  %i.bo = lshr i64 %i.bn, 4
  %i.bp = add nuw nsw i64 %i.bo, 1                ; 2 uses
  %min.iters.check31 = icmp ult i64 %i.bn, 48
  br i1 %min.iters.check31, label %.lr.ph.i.i.preheader, label %vector.ph32

vector.ph32:                                      ; preds = %.lr.ph.i.preheader.i
  %n.vec33 = and i64 %i.bp, 2305843009213693950   ; 3 uses
  %i.bq = shl i64 %n.vec33, 4
  %i.br = getelementptr i8, ptr %.sroa.456.0.copyload.pre.pre111129140.i, i64 %i.bq
  br label %vector.body34

vector.body34:                                    ; preds = %vector.body34, %vector.ph32
  %index35 = phi i64 [ 0, %vector.ph32 ], [ %index.next38, %vector.body34 ] ; 2 uses
  %i.bs = shl i64 %index35, 4                     ; 2 uses
  %next.gep = getelementptr i8, ptr %.sroa.456.0.copyload.pre.pre111129140.i, i64 %i.bs ; 2 uses
  %i.bt = getelementptr i8, ptr %.sroa.456.0.copyload.pre.pre111129140.i, i64 %i.bs
  %next.gep36 = getelementptr i8, ptr %i.bt, i64 16 ; 2 uses
  %wide.load = load <2 x double>, ptr %next.gep, align 8, !alias.scope !137161, !noalias !137148
  %wide.load37 = load <2 x double>, ptr %next.gep36, align 8, !alias.scope !137161, !noalias !137148
  %i.bu = fadd <2 x double> %9, %wide.load
  %i.bv = fadd <2 x double> %9, %wide.load37
  store <2 x double> %i.bu, ptr %next.gep, align 8, !alias.scope !137161, !noalias !137148
  store <2 x double> %i.bv, ptr %next.gep36, align 8, !alias.scope !137161, !noalias !137148
  %index.next38 = add nuw i64 %index35, 2         ; 2 uses
  %i.bw = icmp eq i64 %index.next38, %n.vec33
  br i1 %i.bw, label %middle.block39, label %vector.body34, !llvm.loop !137110

middle.block39:                                   ; preds = %vector.body34
  %cmp.n40 = icmp eq i64 %i.bp, %n.vec33
  br i1 %cmp.n40, label %.loopexit.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %.lr.ph.i.preheader.i, %middle.block39
  %.sroa.0.01.i.i.ph = phi ptr [ %.sroa.456.0.copyload.pre.pre111129140.i, %.lr.ph.i.preheader.i ], [ %i.br, %middle.block39 ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i
  %.sroa.0.01.i.i = phi ptr [ %i.bx, %.lr.ph.i.i ], [ %.sroa.0.01.i.i.ph, %.lr.ph.i.i.preheader ] ; 3 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %.sroa.0.01.i.i, i64 16 ; 2 uses
  %i.by = load <2 x double>, ptr %.sroa.0.01.i.i, align 8, !alias.scope !137161, !noalias !137148
  %i.bz = fadd <2 x double> %9, %i.by
  store <2 x double> %i.bz, ptr %.sroa.0.01.i.i, align 8, !alias.scope !137161, !noalias !137148
  %i.ca = icmp eq ptr %i.bx, %i.bl
  br i1 %i.ca, label %.loopexit.i, label %.lr.ph.i.i, !llvm.loop !137111

.loopexit.i:                                      ; preds = %.lr.ph.i.i, %middle.block39, %bb.o, %.thread125.i, %bb.m
  %.sroa.557.0.copyload109131.i = phi i64 [ 1, %.thread125.i ], [ 0, %bb.o ], [ %.sroa.557.0.copyload109.i, %bb.m ], [ %.sroa.557.0.copyload109130139.i, %middle.block39 ], [ %.sroa.557.0.copyload109130139.i, %.lr.ph.i.i ] ; 2 uses
  %.sroa.456.0.copyload.pre.pre111128.i = phi ptr [ %i.n, %.thread125.i ], [ %.sroa.456.0.copyload.pre.pre111.i, %bb.o ], [ %.sroa.456.0.copyload.pre.pre111.i, %bb.m ], [ %.sroa.456.0.copyload.pre.pre111129140.i, %middle.block39 ], [ %.sroa.456.0.copyload.pre.pre111129140.i, %.lr.ph.i.i ] ; 5 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.cc = load ptr, ptr %i.cb, align 8, !alias.scope !137145, !noalias !137147, !nonnull !67, !noundef !67 ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ce = load i64, ptr %i.cd, align 8, !alias.scope !137145, !noalias !137147, !noundef !67
  %i.cf = getelementptr inbounds nuw [16 x i8], ptr %i.cc, i64 %i.ce
  %.sroa.055.0.copyload.i = load i64, ptr %i.e, align 8, !noalias !137148 ; 7 uses
  %i.cg = icmp ult i64 %.sroa.557.0.copyload109131.i, 576460752303423488
  tail call void @llvm.assume(i1 %i.cg)
  %i.ch = getelementptr inbounds nuw [16 x i8], ptr %.sroa.456.0.copyload.pre.pre111128.i, i64 %.sroa.557.0.copyload109131.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !137162
  %i.ci = invoke noundef i64 @_RNvNtCs1X8ypyHYXIB_8foldhash4seed19gen_per_hasher_seed()
          to label %.noexc3.i.i unwind label %.thread.i.i, !noalias !137162

.noexc3.i.i:                                      ; preds = %.loopexit.i
  %i.cj = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtNtCs1X8ypyHYXIB_8foldhash4seed6global19GLOBAL_SEED_STORAGE, i64 32) acquire, align 8, !noalias !137162
  %i.ck = icmp eq i8 %i.cj, 2
  br i1 %i.ck, label %bb.q, label %bb.p, !prof !77

bb.p:                                             ; preds = %.noexc3.i.i
  invoke void @_RNvMs_NtNtCs1X8ypyHYXIB_8foldhash4seed6globalNtB4_10GlobalSeed9init_slow() #62
          to label %bb.q unwind label %.thread.i.i, !noalias !137162

bb.q:                                             ; preds = %bb.p, %.noexc3.i.i
  store i64 0, ptr %i.c, align 8, !alias.scope !137163, !noalias !137162
  %.sroa.42.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.42.0..sroa_idx.i.i.i, align 8, !alias.scope !137163, !noalias !137162
  %.sroa.53.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 0, ptr %.sroa.53.0..sroa_idx.i.i.i, align 8, !alias.scope !137163, !noalias !137162
  %.sroa.6.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6.0..sroa_idx.i.i.i, ptr noundef nonnull align 8 dereferenceable(32) @112, i64 32, i1 false), !noalias !137162
  %i.cl = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  store i64 %i.ci, ptr %i.cl, align 8, !alias.scope !137163, !noalias !137162
  invoke fastcc void @_RNvMs_NtCsfztDQZkQYYe_8indexmap5innerINtB4_4CorejAdj2_E7reserveCskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.c, i64 noundef 0)
          to label %bb.r unwind label %bb.z, !noalias !137164

bb.r:                                             ; preds = %bb.q
  %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  br label %bb.s

bb.s:                                             ; preds = %bb.y, %bb.r
  %i.cm = phi ptr [ %i.da, %bb.y ], [ %.sroa.456.0.copyload.pre.pre111128.i, %bb.r ] ; 3 uses
  %i.cn = phi i64 [ %i.ct, %bb.y ], [ 0, %bb.r ]
  %i.co = phi ptr [ %i.cs, %bb.y ], [ %i.cc, %bb.r ]
  br label %bb.t

bb.t:                                             ; preds = %bb.u, %bb.s
  %i.cp = phi i64 [ %i.ct, %bb.u ], [ %i.cn, %bb.s ] ; 2 uses
  %i.cq = phi ptr [ %i.cs, %bb.u ], [ %i.co, %bb.s ] ; 3 uses
  %i.cr = icmp eq ptr %i.cq, %i.cf
  br i1 %i.cr, label %.loopexit.i.i.i.i.i.i.i, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cq, i64 16 ; 2 uses
  %i.ct = add i64 %i.cp, 1                        ; 2 uses
  %.val.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.cq, align 8, !noalias !137165, !noundef !67
  %.not.i.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %.val.i.i.i.i.i.i.i.i.i.i.i, null
  br i1 %.not.i.not.i.i.i.i.i.i.i.i.i.i.i, label %bb.t, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.cu = icmp eq ptr %i.cm, %i.ch
  br i1 %i.cu, label %.loopexit.i.i.i.i.i.i.i, label %bb.x

bb.w:                                             ; preds = %bb.x
  %i.cv = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cw = icmp eq i64 %.sroa.055.0.copyload.i, 0
  br i1 %i.cw, label %.body7.i.i, label %.body.sink.split.i.i.i

bb.x:                                             ; preds = %bb.v
  %i.cx = and i64 %i.cp, 4294967295               ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !137166
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %i.cm, i64 16, i1 false), !noalias !137167
  store i64 %i.cx, ptr %i.b, align 8, !noalias !137166
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !137168
  invoke fastcc void @_RNvMs2_NtCsfztDQZkQYYe_8indexmap3mapINtB5_8IndexMapjAdj2_NtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateE11insert_fullCskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef align 8 captures(address) dereferenceable(32) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.c, i64 noundef %i.cx, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i)
          to label %bb.y unwind label %bb.w, !noalias !137167

.loopexit.i.i.i.i.i.i.i:                          ; preds = %bb.v, %bb.t
  %i.cy = icmp eq i64 %.sroa.055.0.copyload.i, 0
  br i1 %i.cy, label %_RINvNtNtCskcxRuJ53GpR_9rustworkx6layout6spiral13spiral_layoutNtCs68Jln09rRqb_8petgraph8DirectedEB6_.exit, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i4.i.i.i6.i.i.i.i.i.i.i

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i4.i.i.i6.i.i.i.i.i.i.i: ; preds = %.loopexit.i.i.i.i.i.i.i
  %i.cz = shl nuw i64 %.sroa.055.0.copyload.i, 4
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.456.0.copyload.pre.pre111128.i, i64 noundef %i.cz, i64 noundef range(i64 1, -9223372036854775807) 8) #59, !noalias !137169
  br label %_RINvNtNtCskcxRuJ53GpR_9rustworkx6layout6spiral13spiral_layoutNtCs68Jln09rRqb_8petgraph8DirectedEB6_.exit

bb.y:                                             ; preds = %bb.x
  %i.da = getelementptr inbounds nuw i8, ptr %i.cm, i64 16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !137168
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !137166
  br label %bb.s

.body.sink.split.i.i.i:                           ; preds = %bb.z, %bb.w
  %eh.lpad-body30.ph.i.i.i = phi { ptr, i32 } [ %i.dc, %bb.z ], [ %i.cv, %bb.w ]
  %i.db = shl nuw i64 %.sroa.055.0.copyload.i, 4
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.456.0.copyload.pre.pre111128.i, i64 noundef %i.db, i64 noundef range(i64 1, -9223372036854775807) 8) #59, !noalias !137164
  br label %.body7.i.i

bb.z:                                             ; preds = %bb.q
  %i.dc = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.dd = icmp eq i64 %.sroa.055.0.copyload.i, 0
  br i1 %i.dd, label %.body7.i.i, label %.body.sink.split.i.i.i

.body7.i.i:                                       ; preds = %bb.z, %.body.sink.split.i.i.i, %bb.w
  %eh.lpad-body8.i.i = phi { ptr, i32 } [ %eh.lpad-body30.ph.i.i.i, %.body.sink.split.i.i.i ], [ %i.dc, %bb.z ], [ %i.cv, %bb.w ]
  call fastcc void @_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCsfztDQZkQYYe_8indexmap3map8IndexMapjAdj2_NtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateEECskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef align 8 dereferenceable(64) %i.c) #63, !noalias !137162
  br label %.body.i

.thread.i.i:                                      ; preds = %bb.p, %.loopexit.i
  %i.de = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.df = icmp eq i64 %.sroa.055.0.copyload.i, 0
  br i1 %i.df, label %.body.i, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i4.i.i.i.i.i

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i4.i.i.i.i.i: ; preds = %.thread.i.i
  %i.dg = shl nuw i64 %.sroa.055.0.copyload.i, 4
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.456.0.copyload.pre.pre111128.i, i64 noundef %i.dg, i64 noundef range(i64 1, -9223372036854775807) 8) #59, !noalias !137170
  br label %.body.i

bb.aa:                                            ; preds = %._crit_edge.i, %.lr.ph.i
  %i.dh = phi ptr [ %.pre.i, %._crit_edge.i ], [ %i.ak, %.lr.ph.i ] ; 2 uses
  %i.di = getelementptr inbounds nuw [16 x i8], ptr %i.dh, i64 %i.al ; 2 uses
  store double %i.ap, ptr %i.di, align 8, !noalias !137171
  %.sroa.445.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.di, i64 8
  store double %i.aq, ptr %.sroa.445.0..sroa_idx.i, align 8, !noalias !137171
  %i.dj = add nuw i64 %i.al, 1                    ; 3 uses
  store i64 %i.dj, ptr %i.q, align 8, !alias.scope !137155, !noalias !137156
  %exitcond.not.i = icmp eq i64 %i.dj, %i.g
  br i1 %exitcond.not.i, label %.loopexit73.i, label %.lr.ph.i

.body.i:                                          ; preds = %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i, %.loopexit.split-lp.i, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i4.i.i.i.i.i, %.thread.i.i, %.body7.i.i
  %eh.lpad-body69.i = phi { ptr, i32 } [ %i.de, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i4.i.i.i.i.i ], [ %eh.lpad-body8.i.i, %.body7.i.i ], [ %i.de, %.thread.i.i ], [ %lpad.phi.i, %.loopexit.split-lp.i ], [ %lpad.phi.i, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i ]
  resume { ptr, i32 } %eh.lpad-body69.i

.loopexit74.i:                                    ; preds = %bb.g
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i

.loopexit.split-lp.loopexit.i:                    ; preds = %bb.i
  %lpad.loopexit77.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i

.loopexit.split-lp.loopexit.split-lp.i:           ; preds = %.loopexit72.i, %bb.l
  %lpad.loopexit.split-lp78.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i

.loopexit.split-lp.i:                             ; preds = %.loopexit.split-lp.loopexit.split-lp.i, %.loopexit.split-lp.loopexit.i, %.loopexit74.i
  %lpad.phi.i = phi { ptr, i32 } [ %lpad.loopexit.i, %.loopexit74.i ], [ %lpad.loopexit77.i, %.loopexit.split-lp.loopexit.i ], [ %lpad.loopexit.split-lp78.i, %.loopexit.split-lp.loopexit.split-lp.i ] ; 2 uses
  %.val.i = load i64, ptr %i.e, align 8, !noalias !137148 ; 2 uses
  %i.dk = icmp eq i64 %.val.i, 0
  br i1 %i.dk, label %.body.i, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i: ; preds = %.loopexit.split-lp.i
  %.val34.i = load ptr, ptr %i.p, align 8, !noalias !137148, !nonnull !67, !noundef !67
  %i.dl = shl nuw i64 %.val.i, 4
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val34.i, i64 noundef %i.dl, i64 noundef range(i64 1, -9223372036854775807) 8) #59, !noalias !137148
  br label %.body.i

_RINvNtNtCskcxRuJ53GpR_9rustworkx6layout6spiral13spiral_layoutNtCs68Jln09rRqb_8petgraph8DirectedEB6_.exit: ; preds = %.loopexit.i.i.i.i.i.i.i, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i4.i.i.i6.i.i.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(64) %i.c, i64 64, i1 false), !noalias !137172
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !137162
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !137148
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvNtCskcxRuJ53GpR_9rustworkx6layout21digraph_spring_layout(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(72) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(136) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(40) %2, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(40) %3, i64 noundef range(i64 0, 2) %4, double %5, i32 noundef %6, i1 noundef zeroext %7, i64 noundef %8, i64 noundef range(i64 0, 2) %9, double %10, ptr noundef %11, double noundef %12, double noundef %13, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(24) %14, i64 noundef range(i64 0, 2) %15, i64 %16) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 3 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [64 x i8], align 8                ; 11 uses
  %i.d = alloca [24 x i8], align 8                ; 9 uses
  %i.e = alloca [24 x i8], align 8                ; 7 uses
  %i.f = alloca [24 x i8], align 8                ; 9 uses
  %i.g = alloca [24 x i8], align 8                ; 7 uses
  %i.h = alloca [72 x i8], align 8                ; 7 uses
  %i.i = alloca [32 x i8], align 4                ; 11 uses
  %i.j = alloca [4 x i8], align 4                 ; 3 uses
  %i.k = alloca [72 x i8], align 8                ; 7 uses
  %i.l = alloca [40 x i8], align 8                ; 17 uses
  %.sroa.641.i = alloca [16 x i8], align 8        ; 4 uses
  %i.m = alloca [48 x i8], align 16               ; 7 uses
  %i.n = alloca [32 x i8], align 16               ; 9 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !137464)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !137465)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !137466)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !137467)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !137468)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.641.i)
end_hunk_1
begin_hunk_2_@_RNvNtCskcxRuJ53GpR_9rustworkx6layout34___pyfunction_graph_circular_layout:bb.a
  %.sroa.477.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.bj = load <2 x double>, ptr %.sroa.477.0..sroa_idx, align 8 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  call void @llvm.experimental.noalias.scope.decl(metadata !139717)
  call void @llvm.experimental.noalias.scope.decl(metadata !139718)
  %i.bk = getelementptr inbounds nuw i8, ptr %i.ab, i64 64
  %i.bl = load i64, ptr %i.bk, align 8, !alias.scope !139719, !noalias !139720, !noundef !67 ; 17 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !139721
  %i.bm = shl i64 %i.bl, 4                        ; 4 uses
  %i.bn = icmp ugt i64 %i.bl, 1152921504606846975
  %.not.i.i.i53 = icmp ugt i64 %i.bm, 9223372036854775800
  %or.cond.i.i.i = or i1 %i.bn, %.not.i.i.i53
  br i1 %or.cond.i.i.i, label %bb.s, label %bb.q, !prof !73

bb.q:                                             ; preds = %bb.p
  %i.bo = icmp eq i64 %i.bm, 0
  br i1 %i.bo, label %.preheader.thread.i.i, label %bb.r

bb.r:                                             ; preds = %bb.q
  call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #59, !noalias !139722
  %i.bp = call noundef align 8 ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef %i.bm, i64 noundef range(i64 1, -9223372036854775807) 8) #59, !noalias !139722 ; 8 uses
  %i.bq = icmp eq ptr %i.bp, null
  br i1 %i.bq, label %bb.s, label %_RNvMs5_NtCs87CvPiUlf0m_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskcxRuJ53GpR_9rustworkx.exit.i.i

bb.s:                                             ; preds = %bb.r, %bb.p
  %.sroa.434.0.ph.i.i = phi i64 [ 8, %bb.r ], [ 0, %bb.p ]
  invoke void @_RNvNtCs87CvPiUlf0m_5alloc7raw_vec12handle_error(i64 noundef %.sroa.434.0.ph.i.i, i64 %i.bm) #61
          to label %.noexc54 unwind label %.body.thread146

.noexc54:                                         ; preds = %bb.s
  unreachable

_RNvMs5_NtCs87CvPiUlf0m_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskcxRuJ53GpR_9rustworkx.exit.i.i: ; preds = %bb.r
  store i64 %i.bl, ptr %i.g, align 8, !noalias !139721
  %i.br = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 7 uses
  store ptr %i.bp, ptr %i.br, align 8, !noalias !139721
  %i.bs = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 7 uses
  store i64 0, ptr %i.bs, align 8, !noalias !139721
  switch i64 %i.bl, label %.lr.ph.i.i [
    i64 1, label %.loopexit55.thread.i.i
    i64 0, label %.loopexit55.i.i
  ]

.preheader.thread.i.i:                            ; preds = %bb.q
  %i.bt = icmp eq i64 %i.bl, 0
  call void @llvm.assume(i1 %i.bt)
  store i64 0, ptr %i.g, align 8, !noalias !139721
  %i.bu = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 2 uses
  store ptr inttoptr (i64 8 to ptr), ptr %i.bu, align 8, !noalias !139721
  %i.bv = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 2 uses
  store i64 0, ptr %i.bv, align 8, !noalias !139721
  br label %.loopexit55.i.i

.lr.ph.i.i:                                       ; preds = %_RNvMs5_NtCs87CvPiUlf0m_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskcxRuJ53GpR_9rustworkx.exit.i.i
  %i.bw = uitofp nneg i64 %i.bl to double
  br label %bb.t

.loopexit55.i.i:                                  ; preds = %bb.am, %.preheader.thread.i.i, %_RNvMs5_NtCs87CvPiUlf0m_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskcxRuJ53GpR_9rustworkx.exit.i.i
  %i.bx = phi ptr [ %i.bv, %.preheader.thread.i.i ], [ %i.bs, %_RNvMs5_NtCs87CvPiUlf0m_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskcxRuJ53GpR_9rustworkx.exit.i.i ], [ %i.bs, %bb.am ] ; 3 uses
  %i.by = phi ptr [ %i.bu, %.preheader.thread.i.i ], [ %i.br, %_RNvMs5_NtCs87CvPiUlf0m_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskcxRuJ53GpR_9rustworkx.exit.i.i ], [ %i.br, %bb.am ] ; 4 uses
  br i1 %i.ax, label %bb.v, label %bb.y

.loopexit55.thread.i.i:                           ; preds = %_RNvMs5_NtCs87CvPiUlf0m_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskcxRuJ53GpR_9rustworkx.exit.i.i
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bp, i8 0, i64 16, i1 false), !noalias !139721
  store i64 1, ptr %i.bs, align 8, !alias.scope !139723, !noalias !139724
  br i1 %i.ax, label %.thread.i.i, label %.thread.i

.thread.i.i:                                      ; preds = %.loopexit55.thread.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !139721
  br label %bb.w

bb.t:                                             ; preds = %bb.am, %.lr.ph.i.i
  %i.bz = phi ptr [ %i.bp, %.lr.ph.i.i ], [ %i.fg, %bb.am ]
  %i.ca = phi i64 [ 0, %.lr.ph.i.i ], [ %i.fi, %bb.am ] ; 4 uses
  %i.cb = uitofp nneg i64 %i.ca to double
  %i.cc = fmul nnan double %i.cb, f0x401921FB54442D18
  %i.cd = fdiv double %i.cc, %i.bw
  %sincos.i.i = call { double, double } @llvm.sincos.f64(double %i.cd) ; 2 uses
  %sin.i.i = extractvalue { double, double } %sincos.i.i, 0
  %cos.i.i = extractvalue { double, double } %sincos.i.i, 1
  call void @llvm.experimental.noalias.scope.decl(metadata !139725)
  %i.ce = load i64, ptr %i.g, align 8, !range !70, !alias.scope !139725, !noalias !139726, !noundef !67
  %i.cf = icmp eq i64 %i.ca, %i.ce
  br i1 %i.cf, label %bb.u, label %bb.am

bb.u:                                             ; preds = %bb.t
  invoke fastcc void @_RNvMs4_NtCs87CvPiUlf0m_5alloc7raw_vecINtB5_6RawVecAdj2_E8grow_oneCskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.g) #62
          to label %._crit_edge.i.i unwind label %.loopexit56.i.i, !noalias !139721

._crit_edge.i.i:                                  ; preds = %bb.u
  %.pre.i.i = load ptr, ptr %i.br, align 8, !alias.scope !139725, !noalias !139726
  br label %bb.am

bb.v:                                             ; preds = %.loopexit55.i.i
  %i.cg = load ptr, ptr %i.by, align 8, !noalias !139721, !nonnull !67, !noundef !67 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !139721
  call void @llvm.experimental.noalias.scope.decl(metadata !139727)
  %i.ch = shl nuw nsw i64 %i.bl, 3
  %i.ci = icmp eq i64 %i.bl, 0
  br i1 %i.ci, label %.loopexit53.i.i, label %bb.w

bb.w:                                             ; preds = %bb.v, %.thread.i.i
  %i.cj = phi i64 [ 8, %.thread.i.i ], [ %i.ch, %bb.v ] ; 2 uses
  %i.ck = phi ptr [ %i.bp, %.thread.i.i ], [ %i.cg, %bb.v ] ; 2 uses
  %i.cl = phi ptr [ %i.bs, %.thread.i.i ], [ %i.bx, %bb.v ] ; 2 uses
  %i.cm = phi ptr [ %i.br, %.thread.i.i ], [ %i.by, %bb.v ] ; 3 uses
  call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #59, !noalias !139728
  %i.cn = call noundef align 8 ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef %i.cj, i64 noundef range(i64 1, -9223372036854775807) 8) #59, !noalias !139728 ; 5 uses
  %i.co = icmp eq ptr %i.cn, null
  br i1 %i.co, label %bb.x, label %.lr.ph.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %bb.w
  %min.iters.check = icmp ult i64 %i.bl, 4
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.i.preheader176, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader
  %n.vec = and i64 %i.bl, 1152921504606846972     ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <2 x i64> [ <i64 0, i64 1>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 3 uses
  %step.add = add nuw <2 x i64> %vec.ind, splat (i64 2)
  %i.cp = getelementptr inbounds nuw [8 x i8], ptr %i.cn, i64 %index ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 16
  store <2 x i64> %vec.ind, ptr %i.cp, align 8, !noalias !139729
  store <2 x i64> %step.add, ptr %i.cq, align 8, !noalias !139729
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %vec.ind.next = add nuw <2 x i64> %vec.ind, splat (i64 4)
  %i.cr = icmp eq i64 %index.next, %n.vec
  br i1 %i.cr, label %middle.block, label %vector.body, !llvm.loop !139653

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bl, %n.vec
  br i1 %cmp.n, label %.loopexit53.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader176

.lr.ph.i.i.i.i.i.i.i.preheader176:                ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader, %middle.block
  %.ph = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i

bb.x:                                             ; preds = %bb.w
  invoke void @_RNvNtCs87CvPiUlf0m_5alloc7raw_vec12handle_error(i64 noundef 8, i64 %i.cj) #61
          to label %.noexc18.i.i unwind label %.loopexit.split-lp.i.i, !noalias !139721

.noexc18.i.i:                                     ; preds = %bb.x
  unreachable

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader176, %.lr.ph.i.i.i.i.i.i.i
  %i.cs = phi i64 [ %i.ct, %.lr.ph.i.i.i.i.i.i.i ], [ %.ph, %.lr.ph.i.i.i.i.i.i.i.preheader176 ] ; 3 uses
  %i.ct = add nuw nsw i64 %i.cs, 1                ; 2 uses
  %i.cu = getelementptr inbounds nuw [8 x i8], ptr %i.cn, i64 %i.cs
  store i64 %i.cs, ptr %i.cu, align 8, !noalias !139729
  %exitcond.not.i.i.i.i.i.i.i = icmp eq i64 %i.ct, %i.bl
  br i1 %exitcond.not.i.i.i.i.i.i.i, label %.loopexit53.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !139654

bb.y:                                             ; preds = %bb.z, %.loopexit55.i.i
  %.sroa.532.0.copyload.i.pre11.i = phi i64 [ %i.bl, %.loopexit55.i.i ], [ %.sroa.532.0.copyload.i.pre11.pre.i, %bb.z ] ; 3 uses
  %i.cv = phi ptr [ %i.by, %.loopexit55.i.i ], [ %i.db, %bb.z ] ; 2 uses
  %i.cw = phi ptr [ %i.bx, %.loopexit55.i.i ], [ %i.dc, %bb.z ]
  %i.cx = trunc nuw i64 %.sroa.076.0.copyload to i1
  %.sroa.431.0.copyload.i.pre9.i = load ptr, ptr %i.cv, align 8, !noalias !139721 ; 4 uses
  br i1 %i.cx, label %bb.aa, label %.loopexit.i.i

.thread.i:                                        ; preds = %.loopexit55.thread.i.i
  %i.cy = trunc nuw i64 %.sroa.076.0.copyload to i1
  br i1 %i.cy, label %.thread25.i, label %.loopexit.i.i

.thread25.i:                                      ; preds = %.thread.i
  %i.cz = getelementptr inbounds nuw i8, ptr %i.bp, i64 16
  br label %.lr.ph.i.i.preheader.i

.loopexit53.i.i:                                  ; preds = %.lr.ph.i.i.i.i.i.i.i, %middle.block, %bb.v
  %i.da = phi ptr [ inttoptr (i64 8 to ptr), %bb.v ], [ %i.cn, %middle.block ], [ %i.cn, %.lr.ph.i.i.i.i.i.i.i ]
  %i.db = phi ptr [ %i.by, %bb.v ], [ %i.cm, %middle.block ], [ %i.cm, %.lr.ph.i.i.i.i.i.i.i ] ; 2 uses
  %i.dc = phi ptr [ %i.bx, %bb.v ], [ %i.cl, %middle.block ], [ %i.cl, %.lr.ph.i.i.i.i.i.i.i ] ; 2 uses
  %i.dd = phi ptr [ %i.cg, %bb.v ], [ %i.ck, %middle.block ], [ %i.ck, %.lr.ph.i.i.i.i.i.i.i ]
  store i64 %i.bl, ptr %i.f, align 8, !alias.scope !139727, !noalias !139721
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr %i.da, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !alias.scope !139727, !noalias !139721
  %.sroa.5.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store i64 %i.bl, ptr %.sroa.5.0..sroa_idx.i.i.i, align 8, !alias.scope !139727, !noalias !139721
  invoke fastcc void @_RNvNtNtCskcxRuJ53GpR_9rustworkx6layout6spring7rescale(ptr noalias nofree noundef nonnull align 8 %i.dd, i64 noundef %i.bl, double noundef %i.aw, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.f)
          to label %bb.z unwind label %.loopexit.split-lp.i.i, !noalias !139721

bb.z:                                             ; preds = %.loopexit53.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !139721
  %.sroa.532.0.copyload.i.pre11.pre.i = load i64, ptr %i.dc, align 8, !noalias !139721
  br label %bb.y

bb.aa:                                            ; preds = %bb.y
  %.idx.i.i.i = shl nuw nsw i64 %.sroa.532.0.copyload.i.pre11.i, 4
  %i.de = getelementptr inbounds nuw i8, ptr %.sroa.431.0.copyload.i.pre9.i, i64 %.idx.i.i.i
  %i.df = icmp eq i64 %.sroa.532.0.copyload.i.pre11.i, 0
  br i1 %i.df, label %.loopexit.i.i, label %.lr.ph.i.i.preheader.i

.lr.ph.i.i.preheader.i:                           ; preds = %bb.aa, %.thread25.i
  %i.dg = phi ptr [ %i.cz, %.thread25.i ], [ %i.de, %bb.aa ] ; 2 uses
  %i.dh = phi ptr [ %i.br, %.thread25.i ], [ %i.cv, %bb.aa ]
  %i.di = phi ptr [ %i.bs, %.thread25.i ], [ %i.cw, %bb.aa ]
  %.sroa.431.0.copyload.i.pre92432.i = phi ptr [ %i.bp, %.thread25.i ], [ %.sroa.431.0.copyload.i.pre9.i, %bb.aa ] ; 5 uses
  %i.dj = ptrtoaddr ptr %.sroa.431.0.copyload.i.pre92432.i to i64
  %i.dk = ptrtoaddr ptr %i.dg to i64
  %i.dl = add i64 %i.dk, -16
  %i.dm = sub i64 %i.dl, %i.dj                    ; 2 uses
  %i.dn = lshr i64 %i.dm, 4
  %i.do = add nuw nsw i64 %i.dn, 1                ; 2 uses
  %min.iters.check160 = icmp ult i64 %i.dm, 48
  br i1 %min.iters.check160, label %.lr.ph.i.i.i.preheader, label %vector.ph161

vector.ph161:                                     ; preds = %.lr.ph.i.i.preheader.i
  %n.vec162 = and i64 %i.do, 2305843009213693950  ; 3 uses
  %i.dp = shl i64 %n.vec162, 4
  %i.dq = getelementptr i8, ptr %.sroa.431.0.copyload.i.pre92432.i, i64 %i.dp
  br label %vector.body163

vector.body163:                                   ; preds = %vector.body163, %vector.ph161
  %index164 = phi i64 [ 0, %vector.ph161 ], [ %index.next167, %vector.body163 ] ; 2 uses
  %i.dr = shl i64 %index164, 4                    ; 2 uses
  %next.gep = getelementptr i8, ptr %.sroa.431.0.copyload.i.pre92432.i, i64 %i.dr ; 2 uses
  %i.ds = getelementptr i8, ptr %.sroa.431.0.copyload.i.pre92432.i, i64 %i.dr
  %next.gep165 = getelementptr i8, ptr %i.ds, i64 16 ; 2 uses
  %wide.load = load <2 x double>, ptr %next.gep, align 8, !alias.scope !139730, !noalias !139721
  %wide.load166 = load <2 x double>, ptr %next.gep165, align 8, !alias.scope !139730, !noalias !139721
  %i.dt = fadd <2 x double> %i.bj, %wide.load
  %i.du = fadd <2 x double> %i.bj, %wide.load166
  store <2 x double> %i.dt, ptr %next.gep, align 8, !alias.scope !139730, !noalias !139721
  store <2 x double> %i.du, ptr %next.gep165, align 8, !alias.scope !139730, !noalias !139721
  %index.next167 = add nuw i64 %index164, 2       ; 2 uses
  %i.dv = icmp eq i64 %index.next167, %n.vec162
  br i1 %i.dv, label %middle.block168, label %vector.body163, !llvm.loop !139657

middle.block168:                                  ; preds = %vector.body163
  %cmp.n169 = icmp eq i64 %i.do, %n.vec162
  br i1 %cmp.n169, label %.loopexit.i.loopexit.i, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %.lr.ph.i.i.preheader.i, %middle.block168
  %.sroa.0.01.i.i.i.ph = phi ptr [ %.sroa.431.0.copyload.i.pre92432.i, %.lr.ph.i.i.preheader.i ], [ %i.dq, %middle.block168 ]
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader, %.lr.ph.i.i.i
  %.sroa.0.01.i.i.i = phi ptr [ %i.dw, %.lr.ph.i.i.i ], [ %.sroa.0.01.i.i.i.ph, %.lr.ph.i.i.i.preheader ] ; 3 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %.sroa.0.01.i.i.i, i64 16 ; 2 uses
  %i.dx = load <2 x double>, ptr %.sroa.0.01.i.i.i, align 8, !alias.scope !139730, !noalias !139721
  %i.dy = fadd <2 x double> %i.bj, %i.dx
  store <2 x double> %i.dy, ptr %.sroa.0.01.i.i.i, align 8, !alias.scope !139730, !noalias !139721
  %i.dz = icmp eq ptr %i.dw, %i.dg
  br i1 %i.dz, label %.loopexit.i.loopexit.i, label %.lr.ph.i.i.i, !llvm.loop !139658

.loopexit.i.loopexit.i:                           ; preds = %.lr.ph.i.i.i, %middle.block168
  %.sroa.431.0.copyload.i.pre.i = load ptr, ptr %i.dh, align 8, !noalias !139721
  %.sroa.532.0.copyload.i.pre.i = load i64, ptr %i.di, align 8, !noalias !139721
  br label %.loopexit.i.i

.loopexit.i.i:                                    ; preds = %.loopexit.i.loopexit.i, %bb.aa, %.thread.i, %bb.y
  %.sroa.532.0.copyload.i.i = phi i64 [ %.sroa.532.0.copyload.i.pre.i, %.loopexit.i.loopexit.i ], [ 0, %bb.aa ], [ %.sroa.532.0.copyload.i.pre11.i, %bb.y ], [ 1, %.thread.i ] ; 2 uses
  %.sroa.431.0.copyload.i.i = phi ptr [ %.sroa.431.0.copyload.i.pre.i, %.loopexit.i.loopexit.i ], [ %.sroa.431.0.copyload.i.pre9.i, %bb.aa ], [ %.sroa.431.0.copyload.i.pre9.i, %bb.y ], [ %i.bp, %.thread.i ] ; 5 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  %i.eb = load ptr, ptr %i.ea, align 8, !alias.scope !139719, !noalias !139720, !nonnull !67, !noundef !67 ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %i.ab, i64 32
  %i.ed = load i64, ptr %i.ec, align 8, !alias.scope !139719, !noalias !139720, !noundef !67
  %i.ee = getelementptr inbounds nuw [16 x i8], ptr %i.eb, i64 %i.ed
  %.sroa.030.0.copyload.i.i = load i64, ptr %i.g, align 8, !noalias !139721 ; 7 uses
  %i.ef = icmp ult i64 %.sroa.532.0.copyload.i.i, 576460752303423488
  call void @llvm.assume(i1 %i.ef)
  %i.eg = getelementptr inbounds nuw [16 x i8], ptr %.sroa.431.0.copyload.i.i, i64 %.sroa.532.0.copyload.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !139731
  %i.eh = invoke noundef i64 @_RNvNtCs1X8ypyHYXIB_8foldhash4seed19gen_per_hasher_seed()
          to label %.noexc3.i.i.i unwind label %.thread.i.i.i, !noalias !139731

.noexc3.i.i.i:                                    ; preds = %.loopexit.i.i
  %i.ei = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtNtCs1X8ypyHYXIB_8foldhash4seed6global19GLOBAL_SEED_STORAGE, i64 32) acquire, align 8, !noalias !139731
  %i.ej = icmp eq i8 %i.ei, 2
  br i1 %i.ej, label %bb.ac, label %bb.ab, !prof !77

bb.ab:                                            ; preds = %.noexc3.i.i.i
  invoke void @_RNvMs_NtNtCs1X8ypyHYXIB_8foldhash4seed6globalNtB4_10GlobalSeed9init_slow() #62
          to label %bb.ac unwind label %.thread.i.i.i, !noalias !139731

bb.ac:                                            ; preds = %bb.ab, %.noexc3.i.i.i
  store i64 0, ptr %i.e, align 8, !alias.scope !139732, !noalias !139731
  %.sroa.42.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.42.0..sroa_idx.i.i.i.i, align 8, !alias.scope !139732, !noalias !139731
  %.sroa.53.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store i64 0, ptr %.sroa.53.0..sroa_idx.i.i.i.i, align 8, !alias.scope !139732, !noalias !139731
  %.sroa.6.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6.0..sroa_idx.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(32) @112, i64 32, i1 false), !noalias !139731
  %i.ek = getelementptr inbounds nuw i8, ptr %i.e, i64 56
  store i64 %i.eh, ptr %i.ek, align 8, !alias.scope !139732, !noalias !139731
  invoke fastcc void @_RNvMs_NtCsfztDQZkQYYe_8indexmap5innerINtB4_4CorejAdj2_E7reserveCskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.e, i64 noundef 0)
          to label %bb.ad unwind label %bb.al, !noalias !139733

bb.ad:                                            ; preds = %bb.ac
  %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ak, %bb.ad
  %i.el = phi ptr [ %i.ez, %bb.ak ], [ %.sroa.431.0.copyload.i.i, %bb.ad ] ; 3 uses
  %i.em = phi i64 [ %i.es, %bb.ak ], [ 0, %bb.ad ]
  %i.en = phi ptr [ %i.er, %bb.ak ], [ %i.eb, %bb.ad ]
  br label %bb.af

bb.af:                                            ; preds = %bb.ag, %bb.ae
  %i.eo = phi i64 [ %i.es, %bb.ag ], [ %i.em, %bb.ae ] ; 2 uses
  %i.ep = phi ptr [ %i.er, %bb.ag ], [ %i.en, %bb.ae ] ; 3 uses
  %i.eq = icmp eq ptr %i.ep, %i.ee
  br i1 %i.eq, label %.loopexit.i.i.i.i.i.i.i.i, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.er = getelementptr inbounds nuw i8, ptr %i.ep, i64 16 ; 2 uses
  %i.es = add i64 %i.eo, 1                        ; 2 uses
  %.val.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.ep, align 8, !noalias !139734, !noundef !67
  %.not.i.not.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %.val.i.i.i.i.i.i.i.i.i.i.i.i, null
  br i1 %.not.i.not.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.af, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.et = icmp eq ptr %i.el, %i.eg
  br i1 %i.et, label %.loopexit.i.i.i.i.i.i.i.i, label %bb.aj

bb.ai:                                            ; preds = %bb.aj
  %i.eu = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ev = icmp eq i64 %.sroa.030.0.copyload.i.i, 0
  br i1 %i.ev, label %.body7.i.i.i, label %.body.sink.split.i.i.i.i

bb.aj:                                            ; preds = %bb.ah
  %i.ew = and i64 %i.eo, 4294967295               ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !139735
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %i.el, i64 16, i1 false), !noalias !139736
  store i64 %i.ew, ptr %i.d, align 8, !noalias !139735
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !139737
  invoke fastcc void @_RNvMs2_NtCsfztDQZkQYYe_8indexmap3mapINtB5_8IndexMapjAdj2_NtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateE11insert_fullCskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef align 8 captures(address) dereferenceable(32) %i.c, ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.e, i64 noundef %i.ew, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i)
          to label %bb.ak unwind label %bb.ai, !noalias !139736

.loopexit.i.i.i.i.i.i.i.i:                        ; preds = %bb.ah, %bb.af
  %i.ex = icmp eq i64 %.sroa.030.0.copyload.i.i, 0
  br i1 %i.ex, label %bb.ao, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i4.i.i.i6.i.i.i.i.i.i.i.i

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i4.i.i.i6.i.i.i.i.i.i.i.i: ; preds = %.loopexit.i.i.i.i.i.i.i.i
  %i.ey = shl nuw i64 %.sroa.030.0.copyload.i.i, 4
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.431.0.copyload.i.i, i64 noundef %i.ey, i64 noundef range(i64 1, -9223372036854775807) 8) #59, !noalias !139738
  br label %bb.ao

bb.ak:                                            ; preds = %bb.aj
  %i.ez = getelementptr inbounds nuw i8, ptr %i.el, i64 16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !139737
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !139735
  br label %bb.ae

.body.sink.split.i.i.i.i:                         ; preds = %bb.al, %bb.ai
  %eh.lpad-body30.ph.i.i.i.i = phi { ptr, i32 } [ %i.fb, %bb.al ], [ %i.eu, %bb.ai ]
  %i.fa = shl nuw i64 %.sroa.030.0.copyload.i.i, 4
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.431.0.copyload.i.i, i64 noundef %i.fa, i64 noundef range(i64 1, -9223372036854775807) 8) #59, !noalias !139733
  br label %.body7.i.i.i

bb.al:                                            ; preds = %bb.ac
  %i.fb = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.fc = icmp eq i64 %.sroa.030.0.copyload.i.i, 0
  br i1 %i.fc, label %.body7.i.i.i, label %.body.sink.split.i.i.i.i

.body7.i.i.i:                                     ; preds = %bb.al, %.body.sink.split.i.i.i.i, %bb.ai
  %eh.lpad-body8.i.i.i = phi { ptr, i32 } [ %eh.lpad-body30.ph.i.i.i.i, %.body.sink.split.i.i.i.i ], [ %i.fb, %bb.al ], [ %i.eu, %bb.ai ]
  call fastcc void @_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCsfztDQZkQYYe_8indexmap3map8IndexMapjAdj2_NtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateEECskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef align 8 dereferenceable(64) %i.e) #63, !noalias !139731
  br label %.body.thread

.thread.i.i.i:                                    ; preds = %bb.ab, %.loopexit.i.i
  %i.fd = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.fe = icmp eq i64 %.sroa.030.0.copyload.i.i, 0
  br i1 %i.fe, label %.body.thread, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i4.i.i.i.i.i.i

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i4.i.i.i.i.i.i: ; preds = %.thread.i.i.i
  %i.ff = shl nuw i64 %.sroa.030.0.copyload.i.i, 4
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.431.0.copyload.i.i, i64 noundef %i.ff, i64 noundef range(i64 1, -9223372036854775807) 8) #59, !noalias !139739
  br label %.body.thread

bb.am:                                            ; preds = %._crit_edge.i.i, %bb.t
  %i.fg = phi ptr [ %.pre.i.i, %._crit_edge.i.i ], [ %i.bz, %bb.t ] ; 2 uses
  %i.fh = getelementptr inbounds nuw [16 x i8], ptr %i.fg, i64 %i.ca ; 2 uses
  store double %cos.i.i, ptr %i.fh, align 8, !noalias !139740
  %.sroa.422.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.fh, i64 8
  store double %sin.i.i, ptr %.sroa.422.0..sroa_idx.i.i, align 8, !noalias !139740
  %i.fi = add nuw nsw i64 %i.ca, 1                ; 3 uses
  store i64 %i.fi, ptr %i.bs, align 8, !alias.scope !139725, !noalias !139726
  %exitcond.not.i.i = icmp eq i64 %i.fi, %i.bl
  br i1 %exitcond.not.i.i, label %.loopexit55.i.i, label %bb.t

.loopexit56.i.i:                                  ; preds = %bb.u
  %lpad.loopexit.i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.an

.loopexit.split-lp.i.i:                           ; preds = %.loopexit53.i.i, %bb.x
  %i.fj = phi ptr [ %i.cm, %bb.x ], [ %i.db, %.loopexit53.i.i ]
  %lpad.loopexit.split-lp.i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.an

bb.an:                                            ; preds = %.loopexit.split-lp.i.i, %.loopexit56.i.i
  %i.fk = phi ptr [ %i.br, %.loopexit56.i.i ], [ %i.fj, %.loopexit.split-lp.i.i ]
  %lpad.phi.i.i = phi { ptr, i32 } [ %lpad.loopexit.i.i, %.loopexit56.i.i ], [ %lpad.loopexit.split-lp.i.i, %.loopexit.split-lp.i.i ] ; 2 uses
  %.val.i.i = load i64, ptr %i.g, align 8, !noalias !139721 ; 2 uses
  %i.fl = icmp eq i64 %.val.i.i, 0
  br i1 %i.fl, label %.body.thread, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i
end_hunk_2
begin_hunk_3_@_RNvNtCskcxRuJ53GpR_9rustworkx6layout36___pyfunction_digraph_circular_layout:bb.a
  %.sroa.477.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.bj = load <2 x double>, ptr %.sroa.477.0..sroa_idx, align 8 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  call void @llvm.experimental.noalias.scope.decl(metadata !139965)
  call void @llvm.experimental.noalias.scope.decl(metadata !139966)
  %i.bk = getelementptr inbounds nuw i8, ptr %i.ab, i64 64
  %i.bl = load i64, ptr %i.bk, align 8, !alias.scope !139967, !noalias !139968, !noundef !67 ; 17 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !139969
  %i.bm = shl i64 %i.bl, 4                        ; 4 uses
  %i.bn = icmp ugt i64 %i.bl, 1152921504606846975
  %.not.i.i.i53 = icmp ugt i64 %i.bm, 9223372036854775800
  %or.cond.i.i.i = or i1 %i.bn, %.not.i.i.i53
  br i1 %or.cond.i.i.i, label %bb.s, label %bb.q, !prof !73

bb.q:                                             ; preds = %bb.p
  %i.bo = icmp eq i64 %i.bm, 0
  br i1 %i.bo, label %.preheader.thread.i.i, label %bb.r

bb.r:                                             ; preds = %bb.q
  call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #59, !noalias !139970
  %i.bp = call noundef align 8 ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef %i.bm, i64 noundef range(i64 1, -9223372036854775807) 8) #59, !noalias !139970 ; 8 uses
  %i.bq = icmp eq ptr %i.bp, null
  br i1 %i.bq, label %bb.s, label %_RNvMs5_NtCs87CvPiUlf0m_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskcxRuJ53GpR_9rustworkx.exit.i.i

bb.s:                                             ; preds = %bb.r, %bb.p
  %.sroa.434.0.ph.i.i = phi i64 [ 8, %bb.r ], [ 0, %bb.p ]
  invoke void @_RNvNtCs87CvPiUlf0m_5alloc7raw_vec12handle_error(i64 noundef %.sroa.434.0.ph.i.i, i64 %i.bm) #61
          to label %.noexc54 unwind label %.body.thread146

.noexc54:                                         ; preds = %bb.s
  unreachable

_RNvMs5_NtCs87CvPiUlf0m_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskcxRuJ53GpR_9rustworkx.exit.i.i: ; preds = %bb.r
  store i64 %i.bl, ptr %i.g, align 8, !noalias !139969
  %i.br = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 7 uses
  store ptr %i.bp, ptr %i.br, align 8, !noalias !139969
  %i.bs = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 7 uses
  store i64 0, ptr %i.bs, align 8, !noalias !139969
  switch i64 %i.bl, label %.lr.ph.i.i [
    i64 1, label %.loopexit55.thread.i.i
    i64 0, label %.loopexit55.i.i
  ]

.preheader.thread.i.i:                            ; preds = %bb.q
  %i.bt = icmp eq i64 %i.bl, 0
  call void @llvm.assume(i1 %i.bt)
  store i64 0, ptr %i.g, align 8, !noalias !139969
  %i.bu = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 2 uses
  store ptr inttoptr (i64 8 to ptr), ptr %i.bu, align 8, !noalias !139969
  %i.bv = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 2 uses
  store i64 0, ptr %i.bv, align 8, !noalias !139969
  br label %.loopexit55.i.i

.lr.ph.i.i:                                       ; preds = %_RNvMs5_NtCs87CvPiUlf0m_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskcxRuJ53GpR_9rustworkx.exit.i.i
  %i.bw = uitofp nneg i64 %i.bl to double
  br label %bb.t

.loopexit55.i.i:                                  ; preds = %bb.am, %.preheader.thread.i.i, %_RNvMs5_NtCs87CvPiUlf0m_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskcxRuJ53GpR_9rustworkx.exit.i.i
  %i.bx = phi ptr [ %i.bv, %.preheader.thread.i.i ], [ %i.bs, %_RNvMs5_NtCs87CvPiUlf0m_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskcxRuJ53GpR_9rustworkx.exit.i.i ], [ %i.bs, %bb.am ] ; 3 uses
  %i.by = phi ptr [ %i.bu, %.preheader.thread.i.i ], [ %i.br, %_RNvMs5_NtCs87CvPiUlf0m_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskcxRuJ53GpR_9rustworkx.exit.i.i ], [ %i.br, %bb.am ] ; 4 uses
  br i1 %i.ax, label %bb.v, label %bb.y

.loopexit55.thread.i.i:                           ; preds = %_RNvMs5_NtCs87CvPiUlf0m_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskcxRuJ53GpR_9rustworkx.exit.i.i
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bp, i8 0, i64 16, i1 false), !noalias !139969
  store i64 1, ptr %i.bs, align 8, !alias.scope !139971, !noalias !139972
  br i1 %i.ax, label %.thread.i.i, label %.thread.i

.thread.i.i:                                      ; preds = %.loopexit55.thread.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !139969
  br label %bb.w

bb.t:                                             ; preds = %bb.am, %.lr.ph.i.i
  %i.bz = phi ptr [ %i.bp, %.lr.ph.i.i ], [ %i.fg, %bb.am ]
  %i.ca = phi i64 [ 0, %.lr.ph.i.i ], [ %i.fi, %bb.am ] ; 4 uses
  %i.cb = uitofp nneg i64 %i.ca to double
  %i.cc = fmul nnan double %i.cb, f0x401921FB54442D18
  %i.cd = fdiv double %i.cc, %i.bw
  %sincos.i.i = call { double, double } @llvm.sincos.f64(double %i.cd) ; 2 uses
  %sin.i.i = extractvalue { double, double } %sincos.i.i, 0
  %cos.i.i = extractvalue { double, double } %sincos.i.i, 1
  call void @llvm.experimental.noalias.scope.decl(metadata !139973)
  %i.ce = load i64, ptr %i.g, align 8, !range !70, !alias.scope !139973, !noalias !139974, !noundef !67
  %i.cf = icmp eq i64 %i.ca, %i.ce
  br i1 %i.cf, label %bb.u, label %bb.am

bb.u:                                             ; preds = %bb.t
  invoke fastcc void @_RNvMs4_NtCs87CvPiUlf0m_5alloc7raw_vecINtB5_6RawVecAdj2_E8grow_oneCskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.g) #62
          to label %._crit_edge.i.i unwind label %.loopexit56.i.i, !noalias !139969

._crit_edge.i.i:                                  ; preds = %bb.u
  %.pre.i.i = load ptr, ptr %i.br, align 8, !alias.scope !139973, !noalias !139974
  br label %bb.am

bb.v:                                             ; preds = %.loopexit55.i.i
  %i.cg = load ptr, ptr %i.by, align 8, !noalias !139969, !nonnull !67, !noundef !67 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !139969
  call void @llvm.experimental.noalias.scope.decl(metadata !139975)
  %i.ch = shl nuw nsw i64 %i.bl, 3
  %i.ci = icmp eq i64 %i.bl, 0
  br i1 %i.ci, label %.loopexit53.i.i, label %bb.w

bb.w:                                             ; preds = %bb.v, %.thread.i.i
  %i.cj = phi i64 [ 8, %.thread.i.i ], [ %i.ch, %bb.v ] ; 2 uses
  %i.ck = phi ptr [ %i.bp, %.thread.i.i ], [ %i.cg, %bb.v ] ; 2 uses
  %i.cl = phi ptr [ %i.bs, %.thread.i.i ], [ %i.bx, %bb.v ] ; 2 uses
  %i.cm = phi ptr [ %i.br, %.thread.i.i ], [ %i.by, %bb.v ] ; 3 uses
  call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #59, !noalias !139976
  %i.cn = call noundef align 8 ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef %i.cj, i64 noundef range(i64 1, -9223372036854775807) 8) #59, !noalias !139976 ; 5 uses
  %i.co = icmp eq ptr %i.cn, null
  br i1 %i.co, label %bb.x, label %.lr.ph.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %bb.w
  %min.iters.check = icmp ult i64 %i.bl, 4
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.i.preheader176, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader
  %n.vec = and i64 %i.bl, 1152921504606846972     ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <2 x i64> [ <i64 0, i64 1>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 3 uses
  %step.add = add nuw <2 x i64> %vec.ind, splat (i64 2)
  %i.cp = getelementptr inbounds nuw [8 x i8], ptr %i.cn, i64 %index ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 16
  store <2 x i64> %vec.ind, ptr %i.cp, align 8, !noalias !139977
  store <2 x i64> %step.add, ptr %i.cq, align 8, !noalias !139977
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %vec.ind.next = add nuw <2 x i64> %vec.ind, splat (i64 4)
  %i.cr = icmp eq i64 %index.next, %n.vec
  br i1 %i.cr, label %middle.block, label %vector.body, !llvm.loop !139901

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bl, %n.vec
  br i1 %cmp.n, label %.loopexit53.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader176

.lr.ph.i.i.i.i.i.i.i.preheader176:                ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader, %middle.block
  %.ph = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i

bb.x:                                             ; preds = %bb.w
  invoke void @_RNvNtCs87CvPiUlf0m_5alloc7raw_vec12handle_error(i64 noundef 8, i64 %i.cj) #61
          to label %.noexc18.i.i unwind label %.loopexit.split-lp.i.i, !noalias !139969

.noexc18.i.i:                                     ; preds = %bb.x
  unreachable

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader176, %.lr.ph.i.i.i.i.i.i.i
  %i.cs = phi i64 [ %i.ct, %.lr.ph.i.i.i.i.i.i.i ], [ %.ph, %.lr.ph.i.i.i.i.i.i.i.preheader176 ] ; 3 uses
  %i.ct = add nuw nsw i64 %i.cs, 1                ; 2 uses
  %i.cu = getelementptr inbounds nuw [8 x i8], ptr %i.cn, i64 %i.cs
  store i64 %i.cs, ptr %i.cu, align 8, !noalias !139977
  %exitcond.not.i.i.i.i.i.i.i = icmp eq i64 %i.ct, %i.bl
  br i1 %exitcond.not.i.i.i.i.i.i.i, label %.loopexit53.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !139902

bb.y:                                             ; preds = %bb.z, %.loopexit55.i.i
  %.sroa.532.0.copyload.i.pre11.i = phi i64 [ %i.bl, %.loopexit55.i.i ], [ %.sroa.532.0.copyload.i.pre11.pre.i, %bb.z ] ; 3 uses
  %i.cv = phi ptr [ %i.by, %.loopexit55.i.i ], [ %i.db, %bb.z ] ; 2 uses
  %i.cw = phi ptr [ %i.bx, %.loopexit55.i.i ], [ %i.dc, %bb.z ]
  %i.cx = trunc nuw i64 %.sroa.076.0.copyload to i1
  %.sroa.431.0.copyload.i.pre9.i = load ptr, ptr %i.cv, align 8, !noalias !139969 ; 4 uses
  br i1 %i.cx, label %bb.aa, label %.loopexit.i.i

.thread.i:                                        ; preds = %.loopexit55.thread.i.i
  %i.cy = trunc nuw i64 %.sroa.076.0.copyload to i1
  br i1 %i.cy, label %.thread25.i, label %.loopexit.i.i

.thread25.i:                                      ; preds = %.thread.i
  %i.cz = getelementptr inbounds nuw i8, ptr %i.bp, i64 16
  br label %.lr.ph.i.i.preheader.i

.loopexit53.i.i:                                  ; preds = %.lr.ph.i.i.i.i.i.i.i, %middle.block, %bb.v
  %i.da = phi ptr [ inttoptr (i64 8 to ptr), %bb.v ], [ %i.cn, %middle.block ], [ %i.cn, %.lr.ph.i.i.i.i.i.i.i ]
  %i.db = phi ptr [ %i.by, %bb.v ], [ %i.cm, %middle.block ], [ %i.cm, %.lr.ph.i.i.i.i.i.i.i ] ; 2 uses
  %i.dc = phi ptr [ %i.bx, %bb.v ], [ %i.cl, %middle.block ], [ %i.cl, %.lr.ph.i.i.i.i.i.i.i ] ; 2 uses
  %i.dd = phi ptr [ %i.cg, %bb.v ], [ %i.ck, %middle.block ], [ %i.ck, %.lr.ph.i.i.i.i.i.i.i ]
  store i64 %i.bl, ptr %i.f, align 8, !alias.scope !139975, !noalias !139969
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr %i.da, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !alias.scope !139975, !noalias !139969
  %.sroa.5.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store i64 %i.bl, ptr %.sroa.5.0..sroa_idx.i.i.i, align 8, !alias.scope !139975, !noalias !139969
  invoke fastcc void @_RNvNtNtCskcxRuJ53GpR_9rustworkx6layout6spring7rescale(ptr noalias nofree noundef nonnull align 8 %i.dd, i64 noundef %i.bl, double noundef %i.aw, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.f)
          to label %bb.z unwind label %.loopexit.split-lp.i.i, !noalias !139969

bb.z:                                             ; preds = %.loopexit53.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !139969
  %.sroa.532.0.copyload.i.pre11.pre.i = load i64, ptr %i.dc, align 8, !noalias !139969
  br label %bb.y

bb.aa:                                            ; preds = %bb.y
  %.idx.i.i.i = shl nuw nsw i64 %.sroa.532.0.copyload.i.pre11.i, 4
  %i.de = getelementptr inbounds nuw i8, ptr %.sroa.431.0.copyload.i.pre9.i, i64 %.idx.i.i.i
  %i.df = icmp eq i64 %.sroa.532.0.copyload.i.pre11.i, 0
  br i1 %i.df, label %.loopexit.i.i, label %.lr.ph.i.i.preheader.i

.lr.ph.i.i.preheader.i:                           ; preds = %bb.aa, %.thread25.i
  %i.dg = phi ptr [ %i.cz, %.thread25.i ], [ %i.de, %bb.aa ] ; 2 uses
  %i.dh = phi ptr [ %i.br, %.thread25.i ], [ %i.cv, %bb.aa ]
  %i.di = phi ptr [ %i.bs, %.thread25.i ], [ %i.cw, %bb.aa ]
  %.sroa.431.0.copyload.i.pre92432.i = phi ptr [ %i.bp, %.thread25.i ], [ %.sroa.431.0.copyload.i.pre9.i, %bb.aa ] ; 5 uses
  %i.dj = ptrtoaddr ptr %.sroa.431.0.copyload.i.pre92432.i to i64
  %i.dk = ptrtoaddr ptr %i.dg to i64
  %i.dl = add i64 %i.dk, -16
  %i.dm = sub i64 %i.dl, %i.dj                    ; 2 uses
  %i.dn = lshr i64 %i.dm, 4
  %i.do = add nuw nsw i64 %i.dn, 1                ; 2 uses
  %min.iters.check160 = icmp ult i64 %i.dm, 48
  br i1 %min.iters.check160, label %.lr.ph.i.i.i.preheader, label %vector.ph161

vector.ph161:                                     ; preds = %.lr.ph.i.i.preheader.i
  %n.vec162 = and i64 %i.do, 2305843009213693950  ; 3 uses
  %i.dp = shl i64 %n.vec162, 4
  %i.dq = getelementptr i8, ptr %.sroa.431.0.copyload.i.pre92432.i, i64 %i.dp
  br label %vector.body163

vector.body163:                                   ; preds = %vector.body163, %vector.ph161
  %index164 = phi i64 [ 0, %vector.ph161 ], [ %index.next167, %vector.body163 ] ; 2 uses
  %i.dr = shl i64 %index164, 4                    ; 2 uses
  %next.gep = getelementptr i8, ptr %.sroa.431.0.copyload.i.pre92432.i, i64 %i.dr ; 2 uses
  %i.ds = getelementptr i8, ptr %.sroa.431.0.copyload.i.pre92432.i, i64 %i.dr
  %next.gep165 = getelementptr i8, ptr %i.ds, i64 16 ; 2 uses
  %wide.load = load <2 x double>, ptr %next.gep, align 8, !alias.scope !139978, !noalias !139969
  %wide.load166 = load <2 x double>, ptr %next.gep165, align 8, !alias.scope !139978, !noalias !139969
  %i.dt = fadd <2 x double> %i.bj, %wide.load
  %i.du = fadd <2 x double> %i.bj, %wide.load166
  store <2 x double> %i.dt, ptr %next.gep, align 8, !alias.scope !139978, !noalias !139969
  store <2 x double> %i.du, ptr %next.gep165, align 8, !alias.scope !139978, !noalias !139969
  %index.next167 = add nuw i64 %index164, 2       ; 2 uses
  %i.dv = icmp eq i64 %index.next167, %n.vec162
  br i1 %i.dv, label %middle.block168, label %vector.body163, !llvm.loop !139905

middle.block168:                                  ; preds = %vector.body163
  %cmp.n169 = icmp eq i64 %i.do, %n.vec162
  br i1 %cmp.n169, label %.loopexit.i.loopexit.i, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %.lr.ph.i.i.preheader.i, %middle.block168
  %.sroa.0.01.i.i.i.ph = phi ptr [ %.sroa.431.0.copyload.i.pre92432.i, %.lr.ph.i.i.preheader.i ], [ %i.dq, %middle.block168 ]
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader, %.lr.ph.i.i.i
  %.sroa.0.01.i.i.i = phi ptr [ %i.dw, %.lr.ph.i.i.i ], [ %.sroa.0.01.i.i.i.ph, %.lr.ph.i.i.i.preheader ] ; 3 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %.sroa.0.01.i.i.i, i64 16 ; 2 uses
  %i.dx = load <2 x double>, ptr %.sroa.0.01.i.i.i, align 8, !alias.scope !139978, !noalias !139969
  %i.dy = fadd <2 x double> %i.bj, %i.dx
  store <2 x double> %i.dy, ptr %.sroa.0.01.i.i.i, align 8, !alias.scope !139978, !noalias !139969
  %i.dz = icmp eq ptr %i.dw, %i.dg
  br i1 %i.dz, label %.loopexit.i.loopexit.i, label %.lr.ph.i.i.i, !llvm.loop !139906

.loopexit.i.loopexit.i:                           ; preds = %.lr.ph.i.i.i, %middle.block168
  %.sroa.431.0.copyload.i.pre.i = load ptr, ptr %i.dh, align 8, !noalias !139969
  %.sroa.532.0.copyload.i.pre.i = load i64, ptr %i.di, align 8, !noalias !139969
  br label %.loopexit.i.i

.loopexit.i.i:                                    ; preds = %.loopexit.i.loopexit.i, %bb.aa, %.thread.i, %bb.y
  %.sroa.532.0.copyload.i.i = phi i64 [ %.sroa.532.0.copyload.i.pre.i, %.loopexit.i.loopexit.i ], [ 0, %bb.aa ], [ %.sroa.532.0.copyload.i.pre11.i, %bb.y ], [ 1, %.thread.i ] ; 2 uses
  %.sroa.431.0.copyload.i.i = phi ptr [ %.sroa.431.0.copyload.i.pre.i, %.loopexit.i.loopexit.i ], [ %.sroa.431.0.copyload.i.pre9.i, %bb.aa ], [ %.sroa.431.0.copyload.i.pre9.i, %bb.y ], [ %i.bp, %.thread.i ] ; 5 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  %i.eb = load ptr, ptr %i.ea, align 8, !alias.scope !139967, !noalias !139968, !nonnull !67, !noundef !67 ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %i.ab, i64 32
  %i.ed = load i64, ptr %i.ec, align 8, !alias.scope !139967, !noalias !139968, !noundef !67
  %i.ee = getelementptr inbounds nuw [16 x i8], ptr %i.eb, i64 %i.ed
  %.sroa.030.0.copyload.i.i = load i64, ptr %i.g, align 8, !noalias !139969 ; 7 uses
  %i.ef = icmp ult i64 %.sroa.532.0.copyload.i.i, 576460752303423488
  call void @llvm.assume(i1 %i.ef)
  %i.eg = getelementptr inbounds nuw [16 x i8], ptr %.sroa.431.0.copyload.i.i, i64 %.sroa.532.0.copyload.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !139979
  %i.eh = invoke noundef i64 @_RNvNtCs1X8ypyHYXIB_8foldhash4seed19gen_per_hasher_seed()
          to label %.noexc3.i.i.i unwind label %.thread.i.i.i, !noalias !139979

.noexc3.i.i.i:                                    ; preds = %.loopexit.i.i
  %i.ei = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtNtCs1X8ypyHYXIB_8foldhash4seed6global19GLOBAL_SEED_STORAGE, i64 32) acquire, align 8, !noalias !139979
  %i.ej = icmp eq i8 %i.ei, 2
  br i1 %i.ej, label %bb.ac, label %bb.ab, !prof !77

bb.ab:                                            ; preds = %.noexc3.i.i.i
  invoke void @_RNvMs_NtNtCs1X8ypyHYXIB_8foldhash4seed6globalNtB4_10GlobalSeed9init_slow() #62
          to label %bb.ac unwind label %.thread.i.i.i, !noalias !139979

bb.ac:                                            ; preds = %bb.ab, %.noexc3.i.i.i
  store i64 0, ptr %i.e, align 8, !alias.scope !139980, !noalias !139979
  %.sroa.42.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.42.0..sroa_idx.i.i.i.i, align 8, !alias.scope !139980, !noalias !139979
  %.sroa.53.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store i64 0, ptr %.sroa.53.0..sroa_idx.i.i.i.i, align 8, !alias.scope !139980, !noalias !139979
  %.sroa.6.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6.0..sroa_idx.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(32) @112, i64 32, i1 false), !noalias !139979
  %i.ek = getelementptr inbounds nuw i8, ptr %i.e, i64 56
  store i64 %i.eh, ptr %i.ek, align 8, !alias.scope !139980, !noalias !139979
  invoke fastcc void @_RNvMs_NtCsfztDQZkQYYe_8indexmap5innerINtB4_4CorejAdj2_E7reserveCskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.e, i64 noundef 0)
          to label %bb.ad unwind label %bb.al, !noalias !139981

bb.ad:                                            ; preds = %bb.ac
  %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ak, %bb.ad
  %i.el = phi ptr [ %i.ez, %bb.ak ], [ %.sroa.431.0.copyload.i.i, %bb.ad ] ; 3 uses
  %i.em = phi i64 [ %i.es, %bb.ak ], [ 0, %bb.ad ]
  %i.en = phi ptr [ %i.er, %bb.ak ], [ %i.eb, %bb.ad ]
  br label %bb.af

bb.af:                                            ; preds = %bb.ag, %bb.ae
  %i.eo = phi i64 [ %i.es, %bb.ag ], [ %i.em, %bb.ae ] ; 2 uses
  %i.ep = phi ptr [ %i.er, %bb.ag ], [ %i.en, %bb.ae ] ; 3 uses
  %i.eq = icmp eq ptr %i.ep, %i.ee
  br i1 %i.eq, label %.loopexit.i.i.i.i.i.i.i.i, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.er = getelementptr inbounds nuw i8, ptr %i.ep, i64 16 ; 2 uses
  %i.es = add i64 %i.eo, 1                        ; 2 uses
  %.val.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.ep, align 8, !noalias !139982, !noundef !67
  %.not.i.not.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %.val.i.i.i.i.i.i.i.i.i.i.i.i, null
  br i1 %.not.i.not.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.af, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.et = icmp eq ptr %i.el, %i.eg
  br i1 %i.et, label %.loopexit.i.i.i.i.i.i.i.i, label %bb.aj

bb.ai:                                            ; preds = %bb.aj
  %i.eu = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ev = icmp eq i64 %.sroa.030.0.copyload.i.i, 0
  br i1 %i.ev, label %.body7.i.i.i, label %.body.sink.split.i.i.i.i

bb.aj:                                            ; preds = %bb.ah
  %i.ew = and i64 %i.eo, 4294967295               ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !139983
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %i.el, i64 16, i1 false), !noalias !139984
  store i64 %i.ew, ptr %i.d, align 8, !noalias !139983
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !139985
  invoke fastcc void @_RNvMs2_NtCsfztDQZkQYYe_8indexmap3mapINtB5_8IndexMapjAdj2_NtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateE11insert_fullCskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef align 8 captures(address) dereferenceable(32) %i.c, ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.e, i64 noundef %i.ew, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i)
          to label %bb.ak unwind label %bb.ai, !noalias !139984

.loopexit.i.i.i.i.i.i.i.i:                        ; preds = %bb.ah, %bb.af
  %i.ex = icmp eq i64 %.sroa.030.0.copyload.i.i, 0
  br i1 %i.ex, label %bb.ao, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i4.i.i.i6.i.i.i.i.i.i.i.i

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i4.i.i.i6.i.i.i.i.i.i.i.i: ; preds = %.loopexit.i.i.i.i.i.i.i.i
  %i.ey = shl nuw i64 %.sroa.030.0.copyload.i.i, 4
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.431.0.copyload.i.i, i64 noundef %i.ey, i64 noundef range(i64 1, -9223372036854775807) 8) #59, !noalias !139986
  br label %bb.ao

bb.ak:                                            ; preds = %bb.aj
  %i.ez = getelementptr inbounds nuw i8, ptr %i.el, i64 16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !139985
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !139983
  br label %bb.ae

.body.sink.split.i.i.i.i:                         ; preds = %bb.al, %bb.ai
  %eh.lpad-body30.ph.i.i.i.i = phi { ptr, i32 } [ %i.fb, %bb.al ], [ %i.eu, %bb.ai ]
  %i.fa = shl nuw i64 %.sroa.030.0.copyload.i.i, 4
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.431.0.copyload.i.i, i64 noundef %i.fa, i64 noundef range(i64 1, -9223372036854775807) 8) #59, !noalias !139981
  br label %.body7.i.i.i

bb.al:                                            ; preds = %bb.ac
  %i.fb = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.fc = icmp eq i64 %.sroa.030.0.copyload.i.i, 0
  br i1 %i.fc, label %.body7.i.i.i, label %.body.sink.split.i.i.i.i

.body7.i.i.i:                                     ; preds = %bb.al, %.body.sink.split.i.i.i.i, %bb.ai
  %eh.lpad-body8.i.i.i = phi { ptr, i32 } [ %eh.lpad-body30.ph.i.i.i.i, %.body.sink.split.i.i.i.i ], [ %i.fb, %bb.al ], [ %i.eu, %bb.ai ]
  call fastcc void @_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCsfztDQZkQYYe_8indexmap3map8IndexMapjAdj2_NtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateEECskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef align 8 dereferenceable(64) %i.e) #63, !noalias !139979
  br label %.body.thread

.thread.i.i.i:                                    ; preds = %bb.ab, %.loopexit.i.i
  %i.fd = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.fe = icmp eq i64 %.sroa.030.0.copyload.i.i, 0
  br i1 %i.fe, label %.body.thread, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i4.i.i.i.i.i.i

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i4.i.i.i.i.i.i: ; preds = %.thread.i.i.i
  %i.ff = shl nuw i64 %.sroa.030.0.copyload.i.i, 4
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.431.0.copyload.i.i, i64 noundef %i.ff, i64 noundef range(i64 1, -9223372036854775807) 8) #59, !noalias !139987
  br label %.body.thread

bb.am:                                            ; preds = %._crit_edge.i.i, %bb.t
  %i.fg = phi ptr [ %.pre.i.i, %._crit_edge.i.i ], [ %i.bz, %bb.t ] ; 2 uses
  %i.fh = getelementptr inbounds nuw [16 x i8], ptr %i.fg, i64 %i.ca ; 2 uses
  store double %cos.i.i, ptr %i.fh, align 8, !noalias !139988
  %.sroa.422.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.fh, i64 8
  store double %sin.i.i, ptr %.sroa.422.0..sroa_idx.i.i, align 8, !noalias !139988
  %i.fi = add nuw nsw i64 %i.ca, 1                ; 3 uses
  store i64 %i.fi, ptr %i.bs, align 8, !alias.scope !139973, !noalias !139974
  %exitcond.not.i.i = icmp eq i64 %i.fi, %i.bl
  br i1 %exitcond.not.i.i, label %.loopexit55.i.i, label %bb.t

.loopexit56.i.i:                                  ; preds = %bb.u
  %lpad.loopexit.i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.an

.loopexit.split-lp.i.i:                           ; preds = %.loopexit53.i.i, %bb.x
  %i.fj = phi ptr [ %i.cm, %bb.x ], [ %i.db, %.loopexit53.i.i ]
  %lpad.loopexit.split-lp.i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.an

bb.an:                                            ; preds = %.loopexit.split-lp.i.i, %.loopexit56.i.i
  %i.fk = phi ptr [ %i.br, %.loopexit56.i.i ], [ %i.fj, %.loopexit.split-lp.i.i ]
  %lpad.phi.i.i = phi { ptr, i32 } [ %lpad.loopexit.i.i, %.loopexit56.i.i ], [ %lpad.loopexit.split-lp.i.i, %.loopexit.split-lp.i.i ] ; 2 uses
  %.val.i.i = load i64, ptr %i.g, align 8, !noalias !139969 ; 2 uses
  %i.fl = icmp eq i64 %.val.i.i, 0
  br i1 %i.fl, label %.body.thread, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i
end_hunk_3
begin_hunk_4_@_RNvXNtNtCs87CvPiUlf0m_5alloc11collections9vec_dequeINtB2_8VecDequeNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexENtNtCslwFuT2d6ECx_4core5clone5Clone5cloneCskcxRuJ53GpR_9rustworkx:bb.a
  br i1 %min.iters.check119, label %scalar.ph118.preheader, label %vector.memcheck116

vector.memcheck116:                               ; preds = %bb.v
  %i.fb = ptrtoaddr ptr %i.fa to i64
  %i.fc = shl nuw i64 %.sroa.9.0.i.i.i, 2
  %i.fd = add i64 %i.fc, %i.fb
  %i.fe = sub i64 %i.ex, %i.fd
  %diff.check117 = icmp ugt i64 %i.fe, -32
  br i1 %diff.check117, label %scalar.ph118.preheader, label %vector.ph120

vector.ph120:                                     ; preds = %vector.memcheck116
  %n.vec121 = and i64 %i.ez, 4611686018427387896  ; 4 uses
  %i.ff = add nuw nsw i64 %.sroa.9.0.i.i.i, %n.vec121
  %i.fg = getelementptr [4 x i8], ptr %i.fa, i64 %.sroa.9.0.i.i.i
  br label %vector.body122

vector.body122:                                   ; preds = %vector.body122, %vector.ph120
  %index123 = phi i64 [ 0, %vector.ph120 ], [ %index.next126, %vector.body122 ] ; 3 uses
  %i.fh = getelementptr inbounds nuw [4 x i8], ptr %.sroa.9.0.i43, i64 %index123 ; 2 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fh, i64 16
  %wide.load124 = load <4 x i32>, ptr %i.fh, align 4, !alias.scope !155567, !noalias !155568
  %wide.load125 = load <4 x i32>, ptr %i.fi, align 4, !alias.scope !155567, !noalias !155568
  %i.fj = getelementptr [4 x i8], ptr %i.fg, i64 %index123 ; 2 uses
  %i.fk = getelementptr i8, ptr %i.fj, i64 16
  store <4 x i32> %wide.load124, ptr %i.fj, align 4, !noalias !155569
  store <4 x i32> %wide.load125, ptr %i.fk, align 4, !noalias !155569
  %index.next126 = add nuw i64 %index123, 8       ; 2 uses
  %i.fl = icmp eq i64 %index.next126, %n.vec121
  br i1 %i.fl, label %middle.block127, label %vector.body122, !llvm.loop !155504

middle.block127:                                  ; preds = %vector.body122
  %cmp.n128 = icmp eq i64 %i.ez, %n.vec121
  br i1 %cmp.n128, label %_RINvXs_NtNtNtCslwFuT2d6ECx_4core4iter8adapters6clonedINtB5_6ClonedINtNtNtNtCs87CvPiUlf0m_5alloc11collections9vec_deque4iter4IterNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEENtNtNtB9_6traits8iterator8Iterator4folduNCINvNvXs_NtB7_9enumerateINtB3F_9EnumeratepEB2R_4fold9enumerateB22_uNCINvNvB2R_8for_each4callTjB22_ENCINvMs2_B17_INtB17_8VecDequeB22_E10write_iterBP_E0E0E0ECskcxRuJ53GpR_9rustworkx.exit.loopexit.i.i, label %scalar.ph118.preheader

scalar.ph118.preheader:                           ; preds = %vector.memcheck116, %bb.v, %middle.block127
  %.ph = phi i64 [ %.sroa.9.0.i.i.i, %vector.memcheck116 ], [ %.sroa.9.0.i.i.i, %bb.v ], [ %i.ff, %middle.block127 ] ; 2 uses
  %.sroa.01.0.i2.i.i.i.i.ph = phi i64 [ 0, %vector.memcheck116 ], [ 0, %bb.v ], [ %n.vec121, %middle.block127 ] ; 3 uses
  %xtraiter149 = and i64 %i.ez, 3                 ; 2 uses
  %lcmp.mod150.not = icmp eq i64 %xtraiter149, 0
  br i1 %lcmp.mod150.not, label %scalar.ph118.prol.loopexit, label %scalar.ph118.prol

scalar.ph118.prol:                                ; preds = %scalar.ph118.preheader, %scalar.ph118.prol
  %i.fm = phi i64 [ %i.fp, %scalar.ph118.prol ], [ %.ph, %scalar.ph118.preheader ] ; 2 uses
  %.sroa.01.0.i2.i.i.i.i.prol = phi i64 [ %i.fq, %scalar.ph118.prol ], [ %.sroa.01.0.i2.i.i.i.i.ph, %scalar.ph118.preheader ] ; 2 uses
  %prol.iter151 = phi i64 [ %prol.iter151.next, %scalar.ph118.prol ], [ 0, %scalar.ph118.preheader ]
  %i.fn = getelementptr inbounds nuw [4 x i8], ptr %.sroa.9.0.i43, i64 %.sroa.01.0.i2.i.i.i.i.prol
  %.val8.i3.i.i.i.i.prol = load i32, ptr %i.fn, align 4, !alias.scope !155567, !noalias !155568, !noundef !67
  %i.fo = getelementptr [4 x i8], ptr %i.fa, i64 %i.fm
  store i32 %.val8.i3.i.i.i.i.prol, ptr %i.fo, align 4, !noalias !155569
  %i.fp = add i64 %i.fm, 1                        ; 2 uses
  %i.fq = add nuw i64 %.sroa.01.0.i2.i.i.i.i.prol, 1 ; 2 uses
  %prol.iter151.next = add i64 %prol.iter151, 1   ; 2 uses
  %prol.iter151.cmp.not = icmp eq i64 %prol.iter151.next, %xtraiter149
  br i1 %prol.iter151.cmp.not, label %scalar.ph118.prol.loopexit, label %scalar.ph118.prol, !llvm.loop !155505

scalar.ph118.prol.loopexit:                       ; preds = %scalar.ph118.prol, %scalar.ph118.preheader
  %.unr152 = phi i64 [ %.ph, %scalar.ph118.preheader ], [ %i.fp, %scalar.ph118.prol ]
  %.sroa.01.0.i2.i.i.i.i.unr = phi i64 [ %.sroa.01.0.i2.i.i.i.i.ph, %scalar.ph118.preheader ], [ %i.fq, %scalar.ph118.prol ]
  %i.fr = sub nsw i64 %.sroa.01.0.i2.i.i.i.i.ph, %i.ez
  %i.fs = icmp ugt i64 %i.fr, -4
  br i1 %i.fs, label %_RINvXs_NtNtNtCslwFuT2d6ECx_4core4iter8adapters6clonedINtB5_6ClonedINtNtNtNtCs87CvPiUlf0m_5alloc11collections9vec_deque4iter4IterNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEENtNtNtB9_6traits8iterator8Iterator4folduNCINvNvXs_NtB7_9enumerateINtB3F_9EnumeratepEB2R_4fold9enumerateB22_uNCINvNvB2R_8for_each4callTjB22_ENCINvMs2_B17_INtB17_8VecDequeB22_E10write_iterBP_E0E0E0ECskcxRuJ53GpR_9rustworkx.exit.loopexit.i.i, label %scalar.ph118

scalar.ph118:                                     ; preds = %scalar.ph118.prol.loopexit, %scalar.ph118
  %i.ft = phi i64 [ %i.gi, %scalar.ph118 ], [ %.unr152, %scalar.ph118.prol.loopexit ] ; 5 uses
  %.sroa.01.0.i2.i.i.i.i = phi i64 [ %i.gj, %scalar.ph118 ], [ %.sroa.01.0.i2.i.i.i.i.unr, %scalar.ph118.prol.loopexit ] ; 5 uses
  %i.fu = getelementptr inbounds nuw [4 x i8], ptr %.sroa.9.0.i43, i64 %.sroa.01.0.i2.i.i.i.i
  %.val8.i3.i.i.i.i = load i32, ptr %i.fu, align 4, !alias.scope !155567, !noalias !155568, !noundef !67
  %i.fv = getelementptr [4 x i8], ptr %i.fa, i64 %i.ft
  store i32 %.val8.i3.i.i.i.i, ptr %i.fv, align 4, !noalias !155569
  %i.fw = getelementptr inbounds nuw [4 x i8], ptr %.sroa.9.0.i43, i64 %.sroa.01.0.i2.i.i.i.i
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fw, i64 4
  %.val8.i3.i.i.i.i.1 = load i32, ptr %i.fx, align 4, !alias.scope !155567, !noalias !155568, !noundef !67
  %i.fy = getelementptr [4 x i8], ptr %i.fa, i64 %i.ft
  %i.fz = getelementptr i8, ptr %i.fy, i64 4
  store i32 %.val8.i3.i.i.i.i.1, ptr %i.fz, align 4, !noalias !155569
  %i.ga = getelementptr inbounds nuw [4 x i8], ptr %.sroa.9.0.i43, i64 %.sroa.01.0.i2.i.i.i.i
  %i.gb = getelementptr inbounds nuw i8, ptr %i.ga, i64 8
  %.val8.i3.i.i.i.i.2 = load i32, ptr %i.gb, align 4, !alias.scope !155567, !noalias !155568, !noundef !67
  %i.gc = getelementptr [4 x i8], ptr %i.fa, i64 %i.ft
  %i.gd = getelementptr i8, ptr %i.gc, i64 8
  store i32 %.val8.i3.i.i.i.i.2, ptr %i.gd, align 4, !noalias !155569
  %i.ge = getelementptr inbounds nuw [4 x i8], ptr %.sroa.9.0.i43, i64 %.sroa.01.0.i2.i.i.i.i
  %i.gf = getelementptr inbounds nuw i8, ptr %i.ge, i64 12
  %.val8.i3.i.i.i.i.3 = load i32, ptr %i.gf, align 4, !alias.scope !155567, !noalias !155568, !noundef !67
  %i.gg = getelementptr [4 x i8], ptr %i.fa, i64 %i.ft
  %i.gh = getelementptr i8, ptr %i.gg, i64 12
  store i32 %.val8.i3.i.i.i.i.3, ptr %i.gh, align 4, !noalias !155569
  %i.gi = add i64 %i.ft, 4
  %i.gj = add nuw i64 %.sroa.01.0.i2.i.i.i.i, 4   ; 2 uses
  %i.gk = icmp eq i64 %i.gj, %i.ez
  br i1 %i.gk, label %_RINvXs_NtNtNtCslwFuT2d6ECx_4core4iter8adapters6clonedINtB5_6ClonedINtNtNtNtCs87CvPiUlf0m_5alloc11collections9vec_deque4iter4IterNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEENtNtNtB9_6traits8iterator8Iterator4folduNCINvNvXs_NtB7_9enumerateINtB3F_9EnumeratepEB2R_4fold9enumerateB22_uNCINvNvB2R_8for_each4callTjB22_ENCINvMs2_B17_INtB17_8VecDequeB22_E10write_iterBP_E0E0E0ECskcxRuJ53GpR_9rustworkx.exit.loopexit.i.i, label %scalar.ph118, !llvm.loop !155506

_RINvXs_NtNtNtCslwFuT2d6ECx_4core4iter8adapters6clonedINtB5_6ClonedINtNtNtNtCs87CvPiUlf0m_5alloc11collections9vec_deque4iter4IterNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEENtNtNtB9_6traits8iterator8Iterator4folduNCINvNvXs_NtB7_9enumerateINtB3F_9EnumeratepEB2R_4fold9enumerateB22_uNCINvNvB2R_8for_each4callTjB22_ENCINvMs2_B17_INtB17_8VecDequeB22_E10write_iterBP_E0E0E0ECskcxRuJ53GpR_9rustworkx.exit.loopexit.i.i: ; preds = %scalar.ph118.prol.loopexit, %scalar.ph118, %middle.block127
  %i.gl = add i64 %.sroa.8.5.i.i, %i.ez
  br label %.loopexit

bb.w:                                             ; preds = %_RNvMs4_NtNtCs87CvPiUlf0m_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexE7reserveCskcxRuJ53GpR_9rustworkx.exit.i
  %i.gm = icmp samesign eq i64 %.idx8, %.idx
  br i1 %i.gm, label %_RINvXs2J_NtNtCslwFuT2d6ECx_4core5slice4iterINtB7_4IterNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexENtNtNtNtBb_4iter6traits8iterator8Iterator4folduQNCINvNtNtB1K_8adapters3map8map_foldRBQ_BQ_uNvYBQ_NtNtBb_5clone5Clone5cloneNCINvNvXs_NtB2x_9enumerateINtB3M_9EnumeratepEB1E_4fold9enumerateBQ_uNCINvNvB1E_8for_each4callTjBQ_ENCINvMs2_NtNtCs87CvPiUlf0m_5alloc11collections9vec_dequeINtB5m_8VecDequeBQ_E10write_iterINtNtB2x_6cloned6ClonedINtNtB5m_4iter4IterBQ_EEE0E0E0E0ECskcxRuJ53GpR_9rustworkx.exit.i.i39.i.i, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.gn = load ptr, ptr %i.m, align 8, !alias.scope !155554, !noalias !155570, !nonnull !67, !noundef !67 ; 2 uses
  %i.go = getelementptr [4 x i8], ptr %i.gn, i64 %.sroa.02.0.i ; 6 uses
  %min.iters.check = icmp ult i64 %i.ad, 16
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %bb.x
  %i.gp = ptrtoaddr ptr %i.gn to i64
  %i.gq = shl i64 %.sroa.02.0.i, 2
  %i.gr = add i64 %i.gq, %i.gp
  %i.gs = add i64 %.idx8, %i.y
  %i.gt = sub i64 %i.gs, %i.gr
  %diff.check = icmp ugt i64 %i.gt, -32
  br i1 %diff.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.ad, -8                      ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.gu = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %index ; 2 uses
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gu, i64 16
  %wide.load = load <4 x i32>, ptr %i.gu, align 4, !alias.scope !155571, !noalias !155572
  %wide.load55 = load <4 x i32>, ptr %i.gv, align 4, !alias.scope !155571, !noalias !155572
  %i.gw = getelementptr [4 x i8], ptr %i.go, i64 %index ; 2 uses
  %i.gx = getelementptr i8, ptr %i.gw, i64 16
  store <4 x i32> %wide.load, ptr %i.gw, align 4, !noalias !155573
  store <4 x i32> %wide.load55, ptr %i.gx, align 4, !noalias !155573
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.gy = icmp eq i64 %index.next, %n.vec
  br i1 %i.gy, label %middle.block, label %vector.body, !llvm.loop !155525

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ad, %n.vec
  br i1 %cmp.n, label %_RINvXs2J_NtNtCslwFuT2d6ECx_4core5slice4iterINtB7_4IterNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexENtNtNtNtBb_4iter6traits8iterator8Iterator4folduQNCINvNtNtB1K_8adapters3map8map_foldRBQ_BQ_uNvYBQ_NtNtBb_5clone5Clone5cloneNCINvNvXs_NtB2x_9enumerateINtB3M_9EnumeratepEB1E_4fold9enumerateBQ_uNCINvNvB1E_8for_each4callTjBQ_ENCINvMs2_NtNtCs87CvPiUlf0m_5alloc11collections9vec_dequeINtB5m_8VecDequeBQ_E10write_iterINtNtB2x_6cloned6ClonedINtNtB5m_4iter4IterBQ_EEE0E0E0E0ECskcxRuJ53GpR_9rustworkx.exit.i.i39.i.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %bb.x, %middle.block
  %.sroa.8.8.i.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %bb.x ], [ %n.vec, %middle.block ] ; 3 uses
  %i.gz = sub i64 %.sroa.5.0.i, %.sroa.0.0.i
  %xtraiter = and i64 %i.gz, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %.sroa.8.8.i.i.prol = phi i64 [ %i.hc, %scalar.ph.prol ], [ %.sroa.8.8.i.i.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.ha = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %.sroa.8.8.i.i.prol
  %.val8.i.i.i38.i.i.prol = load i32, ptr %i.ha, align 4, !alias.scope !155571, !noalias !155572, !noundef !67
  %i.hb = getelementptr [4 x i8], ptr %i.go, i64 %.sroa.8.8.i.i.prol
  store i32 %.val8.i.i.i38.i.i.prol, ptr %i.hb, align 4, !noalias !155573
  %i.hc = add nuw i64 %.sroa.8.8.i.i.prol, 1      ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !155526

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.sroa.8.8.i.i.unr = phi i64 [ %.sroa.8.8.i.i.ph, %scalar.ph.preheader ], [ %i.hc, %scalar.ph.prol ]
  %i.hd = sub i64 %.sroa.0.0.i, %.sroa.5.0.i
  %i.he = add i64 %i.hd, %.sroa.8.8.i.i.ph
  %i.hf = icmp ugt i64 %i.he, -4
  br i1 %i.hf, label %_RINvXs2J_NtNtCslwFuT2d6ECx_4core5slice4iterINtB7_4IterNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexENtNtNtNtBb_4iter6traits8iterator8Iterator4folduQNCINvNtNtB1K_8adapters3map8map_foldRBQ_BQ_uNvYBQ_NtNtBb_5clone5Clone5cloneNCINvNvXs_NtB2x_9enumerateINtB3M_9EnumeratepEB1E_4fold9enumerateBQ_uNCINvNvB1E_8for_each4callTjBQ_ENCINvMs2_NtNtCs87CvPiUlf0m_5alloc11collections9vec_dequeINtB5m_8VecDequeBQ_E10write_iterINtNtB2x_6cloned6ClonedINtNtB5m_4iter4IterBQ_EEE0E0E0E0ECskcxRuJ53GpR_9rustworkx.exit.i.i39.i.i, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %.sroa.8.8.i.i = phi i64 [ %i.hr, %scalar.ph ], [ %.sroa.8.8.i.i.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.hg = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %.sroa.8.8.i.i
  %.val8.i.i.i38.i.i = load i32, ptr %i.hg, align 4, !alias.scope !155571, !noalias !155572, !noundef !67
  %i.hh = getelementptr [4 x i8], ptr %i.go, i64 %.sroa.8.8.i.i
  store i32 %.val8.i.i.i38.i.i, ptr %i.hh, align 4, !noalias !155573
  %i.hi = add nuw i64 %.sroa.8.8.i.i, 1           ; 2 uses
  %i.hj = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %i.hi
  %.val8.i.i.i38.i.i.1 = load i32, ptr %i.hj, align 4, !alias.scope !155571, !noalias !155572, !noundef !67
  %i.hk = getelementptr [4 x i8], ptr %i.go, i64 %i.hi
  store i32 %.val8.i.i.i38.i.i.1, ptr %i.hk, align 4, !noalias !155573
  %i.hl = add nuw i64 %.sroa.8.8.i.i, 2           ; 2 uses
  %i.hm = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %i.hl
  %.val8.i.i.i38.i.i.2 = load i32, ptr %i.hm, align 4, !alias.scope !155571, !noalias !155572, !noundef !67
  %i.hn = getelementptr [4 x i8], ptr %i.go, i64 %i.hl
  store i32 %.val8.i.i.i38.i.i.2, ptr %i.hn, align 4, !noalias !155573
  %i.ho = add nuw i64 %.sroa.8.8.i.i, 3           ; 2 uses
  %i.hp = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %i.ho
  %.val8.i.i.i38.i.i.3 = load i32, ptr %i.hp, align 4, !alias.scope !155571, !noalias !155572, !noundef !67
  %i.hq = getelementptr [4 x i8], ptr %i.go, i64 %i.ho
  store i32 %.val8.i.i.i38.i.i.3, ptr %i.hq, align 4, !noalias !155573
  %i.hr = add nuw i64 %.sroa.8.8.i.i, 4           ; 2 uses
  %i.hs = icmp eq i64 %i.hr, %i.ad
  br i1 %i.hs, label %_RINvXs2J_NtNtCslwFuT2d6ECx_4core5slice4iterINtB7_4IterNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexENtNtNtNtBb_4iter6traits8iterator8Iterator4folduQNCINvNtNtB1K_8adapters3map8map_foldRBQ_BQ_uNvYBQ_NtNtBb_5clone5Clone5cloneNCINvNvXs_NtB2x_9enumerateINtB3M_9EnumeratepEB1E_4fold9enumerateBQ_uNCINvNvB1E_8for_each4callTjBQ_ENCINvMs2_NtNtCs87CvPiUlf0m_5alloc11collections9vec_dequeINtB5m_8VecDequeBQ_E10write_iterINtNtB2x_6cloned6ClonedINtNtB5m_4iter4IterBQ_EEE0E0E0E0ECskcxRuJ53GpR_9rustworkx.exit.i.i39.i.i, label %scalar.ph, !llvm.loop !155527

_RINvXs2J_NtNtCslwFuT2d6ECx_4core5slice4iterINtB7_4IterNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexENtNtNtNtBb_4iter6traits8iterator8Iterator4folduQNCINvNtNtB1K_8adapters3map8map_foldRBQ_BQ_uNvYBQ_NtNtBb_5clone5Clone5cloneNCINvNvXs_NtB2x_9enumerateINtB3M_9EnumeratepEB1E_4fold9enumerateBQ_uNCINvNvB1E_8for_each4callTjBQ_ENCINvMs2_NtNtCs87CvPiUlf0m_5alloc11collections9vec_dequeINtB5m_8VecDequeBQ_E10write_iterINtNtB2x_6cloned6ClonedINtNtB5m_4iter4IterBQ_EEE0E0E0E0ECskcxRuJ53GpR_9rustworkx.exit.i.i39.i.i: ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %bb.w
  %i.ht = icmp eq i64 %.sroa.11.0.i, 0
  br i1 %i.ht, label %.loopexit, label %bb.y

bb.y:                                             ; preds = %_RINvXs2J_NtNtCslwFuT2d6ECx_4core5slice4iterINtB7_4IterNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexENtNtNtNtBb_4iter6traits8iterator8Iterator4folduQNCINvNtNtB1K_8adapters3map8map_foldRBQ_BQ_uNvYBQ_NtNtBb_5clone5Clone5cloneNCINvNvXs_NtB2x_9enumerateINtB3M_9EnumeratepEB1E_4fold9enumerateBQ_uNCINvNvB1E_8for_each4callTjBQ_ENCINvMs2_NtNtCs87CvPiUlf0m_5alloc11collections9vec_dequeINtB5m_8VecDequeBQ_E10write_iterINtNtB2x_6cloned6ClonedINtNtB5m_4iter4IterBQ_EEE0E0E0E0ECskcxRuJ53GpR_9rustworkx.exit.i.i39.i.i
  %i.hu = load ptr, ptr %i.m, align 8, !alias.scope !155554, !noalias !155574, !nonnull !67, !noundef !67 ; 2 uses
  %i.hv = getelementptr [4 x i8], ptr %i.hu, i64 %.sroa.02.0.i ; 6 uses
  %min.iters.check59 = icmp ult i64 %.sroa.11.0.i, 16
  br i1 %min.iters.check59, label %scalar.ph58.preheader, label %vector.memcheck56

vector.memcheck56:                                ; preds = %bb.y
  %i.hw = ptrtoaddr ptr %i.hu to i64
  %2 = shl i64 %.sroa.02.0.i, 2
  %3 = add i64 %.idx, %i.hw
  %i.hx = add i64 %3, %2
  %i.hy = add i64 %.idx8, %i.y
  %i.hz = sub i64 %i.hy, %i.hx
  %diff.check57 = icmp ugt i64 %i.hz, -32
  br i1 %diff.check57, label %scalar.ph58.preheader, label %vector.ph60

vector.ph60:                                      ; preds = %vector.memcheck56
  %n.vec61 = and i64 %.sroa.11.0.i, -8            ; 4 uses
  %i.ia = add i64 %i.ad, %n.vec61
  %i.ib = getelementptr [4 x i8], ptr %i.hv, i64 %i.ad
  br label %vector.body62

vector.body62:                                    ; preds = %vector.body62, %vector.ph60
  %index63 = phi i64 [ 0, %vector.ph60 ], [ %index.next66, %vector.body62 ] ; 3 uses
  %i.ic = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %index63 ; 2 uses
  %i.id = getelementptr inbounds nuw i8, ptr %i.ic, i64 16
  %wide.load64 = load <4 x i32>, ptr %i.ic, align 4, !alias.scope !155575, !noalias !155576
  %wide.load65 = load <4 x i32>, ptr %i.id, align 4, !alias.scope !155575, !noalias !155576
  %i.ie = getelementptr [4 x i8], ptr %i.ib, i64 %index63 ; 2 uses
  %i.if = getelementptr i8, ptr %i.ie, i64 16
  store <4 x i32> %wide.load64, ptr %i.ie, align 4, !noalias !155577
  store <4 x i32> %wide.load65, ptr %i.if, align 4, !noalias !155577
  %index.next66 = add nuw i64 %index63, 8         ; 2 uses
  %i.ig = icmp eq i64 %index.next66, %n.vec61
  br i1 %i.ig, label %middle.block67, label %vector.body62, !llvm.loop !155540

middle.block67:                                   ; preds = %vector.body62
  %cmp.n68 = icmp eq i64 %.sroa.11.0.i, %n.vec61
  br i1 %cmp.n68, label %.loopexit, label %scalar.ph58.preheader

scalar.ph58.preheader:                            ; preds = %vector.memcheck56, %bb.y, %middle.block67
  %.ph140 = phi i64 [ %i.ad, %vector.memcheck56 ], [ %i.ad, %bb.y ], [ %i.ia, %middle.block67 ] ; 2 uses
  %.sroa.01.0.i2.i.i41.i.i.ph = phi i64 [ 0, %vector.memcheck56 ], [ 0, %bb.y ], [ %n.vec61, %middle.block67 ] ; 3 uses
  %xtraiter142 = and i64 %.sroa.11.0.i, 3         ; 2 uses
  %lcmp.mod143.not = icmp eq i64 %xtraiter142, 0
  br i1 %lcmp.mod143.not, label %scalar.ph58.prol.loopexit, label %scalar.ph58.prol

scalar.ph58.prol:                                 ; preds = %scalar.ph58.preheader, %scalar.ph58.prol
  %i.ih = phi i64 [ %i.ik, %scalar.ph58.prol ], [ %.ph140, %scalar.ph58.preheader ] ; 2 uses
  %.sroa.01.0.i2.i.i41.i.i.prol = phi i64 [ %i.il, %scalar.ph58.prol ], [ %.sroa.01.0.i2.i.i41.i.i.ph, %scalar.ph58.preheader ] ; 2 uses
  %prol.iter144 = phi i64 [ %prol.iter144.next, %scalar.ph58.prol ], [ 0, %scalar.ph58.preheader ]
  %i.ii = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %.sroa.01.0.i2.i.i41.i.i.prol
  %.val8.i3.i.i42.i.i.prol = load i32, ptr %i.ii, align 4, !alias.scope !155575, !noalias !155576, !noundef !67
  %i.ij = getelementptr [4 x i8], ptr %i.hv, i64 %i.ih
  store i32 %.val8.i3.i.i42.i.i.prol, ptr %i.ij, align 4, !noalias !155577
  %i.ik = add i64 %i.ih, 1                        ; 2 uses
  %i.il = add nuw i64 %.sroa.01.0.i2.i.i41.i.i.prol, 1 ; 2 uses
  %prol.iter144.next = add i64 %prol.iter144, 1   ; 2 uses
  %prol.iter144.cmp.not = icmp eq i64 %prol.iter144.next, %xtraiter142
  br i1 %prol.iter144.cmp.not, label %scalar.ph58.prol.loopexit, label %scalar.ph58.prol, !llvm.loop !155541

scalar.ph58.prol.loopexit:                        ; preds = %scalar.ph58.prol, %scalar.ph58.preheader
  %.unr = phi i64 [ %.ph140, %scalar.ph58.preheader ], [ %i.ik, %scalar.ph58.prol ]
  %.sroa.01.0.i2.i.i41.i.i.unr = phi i64 [ %.sroa.01.0.i2.i.i41.i.i.ph, %scalar.ph58.preheader ], [ %i.il, %scalar.ph58.prol ]
  %i.im = sub nsw i64 %.sroa.01.0.i2.i.i41.i.i.ph, %.sroa.11.0.i
  %i.in = icmp ugt i64 %i.im, -4
  br i1 %i.in, label %.loopexit, label %scalar.ph58

scalar.ph58:                                      ; preds = %scalar.ph58.prol.loopexit, %scalar.ph58
  %i.io = phi i64 [ %i.jd, %scalar.ph58 ], [ %.unr, %scalar.ph58.prol.loopexit ] ; 5 uses
  %.sroa.01.0.i2.i.i41.i.i = phi i64 [ %i.je, %scalar.ph58 ], [ %.sroa.01.0.i2.i.i41.i.i.unr, %scalar.ph58.prol.loopexit ] ; 5 uses
  %i.ip = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %.sroa.01.0.i2.i.i41.i.i
  %.val8.i3.i.i42.i.i = load i32, ptr %i.ip, align 4, !alias.scope !155575, !noalias !155576, !noundef !67
  %i.iq = getelementptr [4 x i8], ptr %i.hv, i64 %i.io
  store i32 %.val8.i3.i.i42.i.i, ptr %i.iq, align 4, !noalias !155577
  %i.ir = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %.sroa.01.0.i2.i.i41.i.i
  %i.is = getelementptr inbounds nuw i8, ptr %i.ir, i64 4
  %.val8.i3.i.i42.i.i.1 = load i32, ptr %i.is, align 4, !alias.scope !155575, !noalias !155576, !noundef !67
  %i.it = getelementptr [4 x i8], ptr %i.hv, i64 %i.io
  %i.iu = getelementptr i8, ptr %i.it, i64 4
  store i32 %.val8.i3.i.i42.i.i.1, ptr %i.iu, align 4, !noalias !155577
  %i.iv = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %.sroa.01.0.i2.i.i41.i.i
  %i.iw = getelementptr inbounds nuw i8, ptr %i.iv, i64 8
  %.val8.i3.i.i42.i.i.2 = load i32, ptr %i.iw, align 4, !alias.scope !155575, !noalias !155576, !noundef !67
  %i.ix = getelementptr [4 x i8], ptr %i.hv, i64 %i.io
  %i.iy = getelementptr i8, ptr %i.ix, i64 8
  store i32 %.val8.i3.i.i42.i.i.2, ptr %i.iy, align 4, !noalias !155577
  %i.iz = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %.sroa.01.0.i2.i.i41.i.i
  %i.ja = getelementptr inbounds nuw i8, ptr %i.iz, i64 12
  %.val8.i3.i.i42.i.i.3 = load i32, ptr %i.ja, align 4, !alias.scope !155575, !noalias !155576, !noundef !67
  %i.jb = getelementptr [4 x i8], ptr %i.hv, i64 %i.io
  %i.jc = getelementptr i8, ptr %i.jb, i64 12
  store i32 %.val8.i3.i.i42.i.i.3, ptr %i.jc, align 4, !noalias !155577
  %i.jd = add i64 %i.io, 4
  %i.je = add nuw i64 %.sroa.01.0.i2.i.i41.i.i, 4 ; 2 uses
  %i.jf = icmp eq i64 %i.je, %.sroa.11.0.i
  br i1 %i.jf, label %.loopexit, label %scalar.ph58, !llvm.loop !155542

.loopexit:                                        ; preds = %scalar.ph58.prol.loopexit, %scalar.ph58, %_RINvYINtNtNtCslwFuT2d6ECx_4core5slice4iter4IterNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduQNCINvNtNtB1D_8adapters6cloned14clone_try_foldBJ_uINtNtNtBa_3ops12control_flow11ControlFlowINtNtB3f_9try_trait17NeverShortCircuituEENCINvNvXs_NtB2u_4takeINtB4E_4TakepEB1x_8try_fold5checkBJ_uB3P_NCINvMB3S_B3P_10wrap_mut_2uBJ_NCINvNvXs_NtB2u_9enumerateINtB68_9EnumeratepEB1x_4fold9enumerateBJ_uNCINvNvB1x_8for_each4callTjBJ_ENCINvMs2_NtNtCs87CvPiUlf0m_5alloc11collections9vec_dequeINtB7I_8VecDequeBJ_E10write_iterIB4Q_INtNtB2u_12by_ref_sized10ByRefSizedINtB2s_6ClonedINtNtB7I_4iter4IterBJ_EEEEE0E0E0E0E0E0B3a_ECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i, %middle.block67, %_RINvXs2J_NtNtCslwFuT2d6ECx_4core5slice4iterINtB7_4IterNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexENtNtNtNtBb_4iter6traits8iterator8Iterator4folduQNCINvNtNtB1K_8adapters3map8map_foldRBQ_BQ_uNvYBQ_NtNtBb_5clone5Clone5cloneNCINvNvXs_NtB2x_9enumerateINtB3M_9EnumeratepEB1E_4fold9enumerateBQ_uNCINvNvB1E_8for_each4callTjBQ_ENCINvMs2_NtNtCs87CvPiUlf0m_5alloc11collections9vec_dequeINtB5m_8VecDequeBQ_E10write_iterINtNtB2x_6cloned6ClonedINtNtB5m_4iter4IterBQ_EEE0E0E0E0ECskcxRuJ53GpR_9rustworkx.exit.i.i39.i.i, %_RINvXs_NtNtNtCslwFuT2d6ECx_4core4iter8adapters6clonedINtB5_6ClonedINtNtNtNtCs87CvPiUlf0m_5alloc11collections9vec_deque4iter4IterNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEENtNtNtB9_6traits8iterator8Iterator4folduNCINvNvXs_NtB7_9enumerateINtB3F_9EnumeratepEB2R_4fold9enumerateB22_uNCINvNvB2R_8for_each4callTjB22_ENCINvMs2_B17_INtB17_8VecDequeB22_E10write_iterBP_E0E0E0ECskcxRuJ53GpR_9rustworkx.exit.loopexit.i.i, %_RINvXs2J_NtNtCslwFuT2d6ECx_4core5slice4iterINtB7_4IterNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexENtNtNtNtBb_4iter6traits8iterator8Iterator4folduQNCINvNtNtB1K_8adapters3map8map_foldRBQ_BQ_uNvYBQ_NtNtBb_5clone5Clone5cloneNCINvNvXs_NtB2x_9enumerateINtB3M_9EnumeratepEB1E_4fold9enumerateBQ_uNCINvNvB1E_8for_each4callTjBQ_ENCINvMs2_NtNtCs87CvPiUlf0m_5alloc11collections9vec_dequeINtB5m_8VecDequeBQ_E10write_iterINtNtB2x_6cloned6ClonedINtNtB5m_4iter4IterBQ_EEE0E0E0E0ECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i
  %.sroa.8.0.i.i = phi i64 [ %i.gl, %_RINvXs_NtNtNtCslwFuT2d6ECx_4core4iter8adapters6clonedINtB5_6ClonedINtNtNtNtCs87CvPiUlf0m_5alloc11collections9vec_deque4iter4IterNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEENtNtNtB9_6traits8iterator8Iterator4folduNCINvNvXs_NtB7_9enumerateINtB3F_9EnumeratepEB2R_4fold9enumerateB22_uNCINvNvB2R_8for_each4callTjB22_ENCINvMs2_B17_INtB17_8VecDequeB22_E10write_iterBP_E0E0E0ECskcxRuJ53GpR_9rustworkx.exit.loopexit.i.i ], [ %.sroa.8.5.i.i, %_RINvXs2J_NtNtCslwFuT2d6ECx_4core5slice4iterINtB7_4IterNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexENtNtNtNtBb_4iter6traits8iterator8Iterator4folduQNCINvNtNtB1K_8adapters3map8map_foldRBQ_BQ_uNvYBQ_NtNtBb_5clone5Clone5cloneNCINvNvXs_NtB2x_9enumerateINtB3M_9EnumeratepEB1E_4fold9enumerateBQ_uNCINvNvB1E_8for_each4callTjBQ_ENCINvMs2_NtNtCs87CvPiUlf0m_5alloc11collections9vec_dequeINtB5m_8VecDequeBQ_E10write_iterINtNtB2x_6cloned6ClonedINtNtB5m_4iter4IterBQ_EEE0E0E0E0ECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i ], [ %i.ad, %_RINvXs2J_NtNtCslwFuT2d6ECx_4core5slice4iterINtB7_4IterNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexENtNtNtNtBb_4iter6traits8iterator8Iterator4folduQNCINvNtNtB1K_8adapters3map8map_foldRBQ_BQ_uNvYBQ_NtNtBb_5clone5Clone5cloneNCINvNvXs_NtB2x_9enumerateINtB3M_9EnumeratepEB1E_4fold9enumerateBQ_uNCINvNvB1E_8for_each4callTjBQ_ENCINvMs2_NtNtCs87CvPiUlf0m_5alloc11collections9vec_dequeINtB5m_8VecDequeBQ_E10write_iterINtNtB2x_6cloned6ClonedINtNtB5m_4iter4IterBQ_EEE0E0E0E0ECskcxRuJ53GpR_9rustworkx.exit.i.i39.i.i ], [ %i.af, %middle.block67 ], [ %.sroa.8.2.i.i, %_RINvYINtNtNtCslwFuT2d6ECx_4core5slice4iter4IterNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduQNCINvNtNtB1D_8adapters6cloned14clone_try_foldBJ_uINtNtNtBa_3ops12control_flow11ControlFlowINtNtB3f_9try_trait17NeverShortCircuituEENCINvNvXs_NtB2u_4takeINtB4E_4TakepEB1x_8try_fold5checkBJ_uB3P_NCINvMB3S_B3P_10wrap_mut_2uBJ_NCINvNvXs_NtB2u_9enumerateINtB68_9EnumeratepEB1x_4fold9enumerateBJ_uNCINvNvB1x_8for_each4callTjBJ_ENCINvMs2_NtNtCs87CvPiUlf0m_5alloc11collections9vec_dequeINtB7I_8VecDequeBJ_E10write_iterIB4Q_INtNtB2u_12by_ref_sized10ByRefSizedINtB2s_6ClonedINtNtB7I_4iter4IterBJ_EEEEE0E0E0E0E0E0B3a_ECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i ], [ %i.af, %scalar.ph58 ], [ %i.af, %scalar.ph58.prol.loopexit ]
  %i.jg = add i64 %.sroa.8.0.i.i, %i.aw
  store i64 %i.jg, ptr %i.ag, align 8, !alias.scope !155554, !noalias !155555
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.a, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtNtCs87CvPiUlf0m_5alloc11collections9vec_deque8VecDequeNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit: ; preds = %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i, %bb.i
  resume { ptr, i32 } %i.t
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvXNtNtCs87CvPiUlf0m_5alloc3vec14spec_from_iterINtB4_3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEINtB2_12SpecFromIterBU_INtNtNtNtCslwFuT2d6ECx_4core4iter8adapters6copied6CopiedINtNtB2a_5chain5ChainINtNtNtCsfztDQZkQYYe_8indexmap3set4iter4IterBU_EINtNtNtB2e_5slice4iter4IterBU_EEEE9from_iterCskcxRuJ53GpR_9rustworkx(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(32) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 10 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !155613)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !155614)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !155615
  tail call void @llvm.experimental.noalias.scope.decl(metadata !155616)
  %i.b = load ptr, ptr %1, align 8, !alias.scope !155617, !noalias !155613, !noundef !67 ; 4 uses
  %.not.i.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !alias.scope !155618, !noalias !155613, !nonnull !67, !noundef !67 ; 2 uses
  %i.e = icmp eq ptr %i.b, %i.d
  br i1 %i.e, label %bb.c, label %.thread.i

.thread.i:                                        ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.h = load i32, ptr %i.g, align 4, !noalias !155619, !noundef !67 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.j = load ptr, ptr %i.i, align 8, !alias.scope !155620, !noalias !155621, !noundef !67 ; 3 uses
  %.not7.i.i23.i = icmp eq ptr %i.j, null
  %i.k = ptrtoint ptr %i.d to i64
  %i.l = ptrtoint ptr %i.f to i64
  %i.m = sub nuw i64 %i.k, %i.l
  %i.n = lshr exact i64 %i.m, 4                   ; 2 uses
  br i1 %.not7.i.i23.i, label %_RNvXs_NtNtNtCslwFuT2d6ECx_4core4iter8adapters6copiedINtB4_6CopiedINtNtB6_5chain5ChainINtNtNtCsfztDQZkQYYe_8indexmap3set4iter4IterNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEINtNtNtBa_5slice4iter4IterB23_EEENtNtNtB8_6traits8iterator8Iterator9size_hintCskcxRuJ53GpR_9rustworkx.exit.i, label %.thread._crit_edge.i

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.p = load ptr, ptr %i.o, align 8, !alias.scope !155622, !noalias !155623, !noundef !67 ; 4 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.p, null
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.r = load ptr, ptr %i.q, align 8, !alias.scope !155622, !noalias !155613, !nonnull !67 ; 2 uses
  %i.s = icmp eq ptr %i.p, %i.r
  %or.cond.i.i.i = select i1 %.not.i.i.i.i.i, i1 true, i1 %i.s
  br i1 %or.cond.i.i.i, label %bb.h, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.t = getelementptr inbounds nuw i8, ptr %i.p, i64 4 ; 2 uses
  %i.u = load i32, ptr %i.p, align 4, !noalias !155619, !noundef !67
  %i.v = ptrtoint ptr %i.r to i64
  %i.w = ptrtoint ptr %i.t to i64
  %i.x = sub nuw i64 %i.v, %i.w
  %i.y = lshr exact i64 %i.x, 2
  br label %_RNvXs_NtNtNtCslwFuT2d6ECx_4core4iter8adapters6copiedINtB4_6CopiedINtNtB6_5chain5ChainINtNtNtCsfztDQZkQYYe_8indexmap3set4iter4IterNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEINtNtNtBa_5slice4iter4IterB23_EEENtNtNtB8_6traits8iterator8Iterator9size_hintCskcxRuJ53GpR_9rustworkx.exit.i

.thread._crit_edge.i:                             ; preds = %.thread.i
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.val14.i.i.pre.i = load ptr, ptr %.phi.trans.insert.i, align 8, !alias.scope !155624, !noalias !155625
  %i.z = ptrtoint ptr %.val14.i.i.pre.i to i64
  %i.aa = ptrtoint ptr %i.j to i64
  %i.ab = sub nuw i64 %i.z, %i.aa
  %i.ac = lshr exact i64 %i.ab, 2
  %i.ad = add nuw nsw i64 %i.ac, %i.n
  br label %_RNvXs_NtNtNtCslwFuT2d6ECx_4core4iter8adapters6copiedINtB4_6CopiedINtNtB6_5chain5ChainINtNtNtCsfztDQZkQYYe_8indexmap3set4iter4IterNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEINtNtNtBa_5slice4iter4IterB23_EEENtNtNtB8_6traits8iterator8Iterator9size_hintCskcxRuJ53GpR_9rustworkx.exit.i

_RNvXs_NtNtNtCslwFuT2d6ECx_4core4iter8adapters6copiedINtB4_6CopiedINtNtB6_5chain5ChainINtNtNtCsfztDQZkQYYe_8indexmap3set4iter4IterNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEINtNtNtBa_5slice4iter4IterB23_EEENtNtNtB8_6traits8iterator8Iterator9size_hintCskcxRuJ53GpR_9rustworkx.exit.i: ; preds = %.thread._crit_edge.i, %bb.d, %.thread.i
  %i.ae = phi ptr [ %i.j, %.thread._crit_edge.i ], [ %i.t, %bb.d ], [ null, %.thread.i ]
  %i.af = phi i32 [ %i.h, %.thread._crit_edge.i ], [ %i.u, %bb.d ], [ %i.h, %.thread.i ]
  %i.ag = phi ptr [ %i.f, %.thread._crit_edge.i ], [ null, %bb.d ], [ %i.f, %.thread.i ]
  %.sink24.i.i.i = phi i64 [ %i.ad, %.thread._crit_edge.i ], [ %i.y, %bb.d ], [ %i.n, %.thread.i ] ; 2 uses
  %i.ah = tail call i64 @llvm.umax.i64(i64 %.sink24.i.i.i, i64 3) ; 2 uses
  %i.ai = add nuw nsw i64 %i.ah, 1                ; 2 uses
  %i.aj = shl i64 %i.ai, 2                        ; 4 uses
  %i.ak = icmp samesign ugt i64 %.sink24.i.i.i, 4611686018427387902
  %.not.i.i = icmp ugt i64 %i.aj, 9223372036854775804
  %or.cond.i.i = select i1 %i.ak, i1 true, i1 %.not.i.i, !prof !73
  br i1 %or.cond.i.i, label %bb.i, label %bb.e, !prof !73

bb.e:                                             ; preds = %_RNvXs_NtNtNtCslwFuT2d6ECx_4core4iter8adapters6copiedINtB4_6CopiedINtNtB6_5chain5ChainINtNtNtCsfztDQZkQYYe_8indexmap3set4iter4IterNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEINtNtNtBa_5slice4iter4IterB23_EEENtNtNtB8_6traits8iterator8Iterator9size_hintCskcxRuJ53GpR_9rustworkx.exit.i
  %i.al = icmp eq i64 %i.aj, 0
  br i1 %i.al, label %_RNvMs5_NtCs87CvPiUlf0m_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskcxRuJ53GpR_9rustworkx.exit.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #59, !noalias !155626
  %i.am = tail call noundef align 4 ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef %i.aj, i64 noundef range(i64 1, -9223372036854775807) 4) #59, !noalias !155626 ; 2 uses
  %i.an = icmp eq ptr %i.am, null
  br i1 %i.an, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ao = ptrtoint ptr %i.am to i64
  br label %_RNvMs5_NtCs87CvPiUlf0m_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskcxRuJ53GpR_9rustworkx.exit.i

bb.h:                                             ; preds = %bb.c
  store i64 0, ptr %0, align 8, !alias.scope !155613, !noalias !155614
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr inttoptr (i64 4 to ptr), ptr %i.ap, align 8, !alias.scope !155613, !noalias !155614
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.aq, align 8, !alias.scope !155613, !noalias !155614
  br label %_RNvXNtNtCs87CvPiUlf0m_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEINtB2_18SpecFromIterNestedB11_INtNtNtNtCslwFuT2d6ECx_4core4iter8adapters6copied6CopiedINtNtB2o_5chain5ChainINtNtNtCsfztDQZkQYYe_8indexmap3set4iter4IterB11_EINtNtNtB2s_5slice4iter4IterB11_EEEE9from_iterCskcxRuJ53GpR_9rustworkx.exit

bb.i:                                             ; preds = %bb.f, %_RNvXs_NtNtNtCslwFuT2d6ECx_4core4iter8adapters6copiedINtB4_6CopiedINtNtB6_5chain5ChainINtNtNtCsfztDQZkQYYe_8indexmap3set4iter4IterNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEINtNtNtBa_5slice4iter4IterB23_EEENtNtNtB8_6traits8iterator8Iterator9size_hintCskcxRuJ53GpR_9rustworkx.exit.i
  %.sroa.10.0.ph.i = phi i64 [ %i.aj, %bb.f ], [ undef, %_RNvXs_NtNtNtCslwFuT2d6ECx_4core4iter8adapters6copiedINtB4_6CopiedINtNtB6_5chain5ChainINtNtNtCsfztDQZkQYYe_8indexmap3set4iter4IterNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEINtNtNtBa_5slice4iter4IterB23_EEENtNtNtB8_6traits8iterator8Iterator9size_hintCskcxRuJ53GpR_9rustworkx.exit.i ]
  %.sroa.416.0.ph.i = phi i64 [ 4, %bb.f ], [ 0, %_RNvXs_NtNtNtCslwFuT2d6ECx_4core4iter8adapters6copiedINtB4_6CopiedINtNtB6_5chain5ChainINtNtNtCsfztDQZkQYYe_8indexmap3set4iter4IterNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEINtNtNtBa_5slice4iter4IterB23_EEENtNtNtB8_6traits8iterator8Iterator9size_hintCskcxRuJ53GpR_9rustworkx.exit.i ]
  tail call void @_RNvNtCs87CvPiUlf0m_5alloc7raw_vec12handle_error(i64 noundef %.sroa.416.0.ph.i, i64 %.sroa.10.0.ph.i) #61, !noalias !155615
  unreachable

end_hunk_4
