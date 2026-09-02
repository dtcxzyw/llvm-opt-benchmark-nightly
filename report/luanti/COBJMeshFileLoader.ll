Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luanti/original/COBJMeshFileLoader?download=true
inline.NumInlined: 1741
inline.NumDeleted: 697
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 19
loop-unroll.NumUnrolled: 26
begin_hunk_0_@_ZN5scene18COBJMeshFileLoader10createMeshEPN2io9IReadFileE:bb.a
  store i8 %i.li, ptr %i.lj, align 1, !tbaa !47
  %indvars.iv.next.i.i297.prol = add nuw nsw i64 %indvars.iv.i.i296.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i9.i295.prol.loopexit, label %.lr.ph.i9.i295.prol, !llvm.loop !197

.lr.ph.i9.i295.prol.loopexit:                     ; preds = %.lr.ph.i9.i295.prol, %.lr.ph.i9.i295.preheader
  %indvars.iv.i.i296.unr = phi i64 [ %indvars.iv.i.i296.ph, %.lr.ph.i9.i295.preheader ], [ %indvars.iv.next.i.i297.prol, %.lr.ph.i9.i295.prol ]
  %i.lk = sub nsw i64 %indvars.iv.i.i296.ph, %wide.trip.count.i.i294
  %i.ll = icmp ugt i64 %i.lk, -4
  br i1 %i.ll, label %._crit_edge.i.i299, label %.lr.ph.i9.i295

._crit_edge.i.i299:                               ; preds = %.lr.ph.i9.i295.prol.loopexit, %.lr.ph.i9.i295, %middle.block2536, %vec.epilog.middle.block2549, %_ZN4core7isspaceEi.exit.thread.i.i290
  %.pre-phi.i.i300 = phi i64 [ 0, %_ZN4core7isspaceEi.exit.thread.i.i290 ], [ %wide.trip.count.i.i294, %middle.block2536 ], [ %wide.trip.count.i.i294, %vec.epilog.middle.block2549 ], [ %wide.trip.count.i.i294, %.lr.ph.i9.i295 ], [ %wide.trip.count.i.i294, %.lr.ph.i9.i295.prol.loopexit ]
  %i.lm = getelementptr inbounds nuw i8, ptr %i.e, i64 %.pre-phi.i.i300
  store i8 0, ptr %i.lm, align 1, !tbaa !47
  br label %_ZN5scene18COBJMeshFileLoader17goAndCopyNextWordEPcPKcjS3_.exit304

.lr.ph.i9.i295:                                   ; preds = %.lr.ph.i9.i295.prol.loopexit, %.lr.ph.i9.i295
  %indvars.iv.i.i296 = phi i64 [ %indvars.iv.next.i.i297.3, %.lr.ph.i9.i295 ], [ %indvars.iv.i.i296.unr, %.lr.ph.i9.i295.prol.loopexit ] ; 6 uses
  %i.ln = getelementptr inbounds nuw i8, ptr %.2.i.i.i2861661, i64 %indvars.iv.i.i296
  %i.lo = load i8, ptr %i.ln, align 1, !tbaa !47
  %i.lp = getelementptr inbounds nuw i8, ptr %i.e, i64 %indvars.iv.i.i296
  store i8 %i.lo, ptr %i.lp, align 1, !tbaa !47
  %indvars.iv.next.i.i297 = add nuw nsw i64 %indvars.iv.i.i296, 1 ; 2 uses
  %i.lq = getelementptr inbounds nuw i8, ptr %.2.i.i.i2861661, i64 %indvars.iv.next.i.i297
  %i.lr = load i8, ptr %i.lq, align 1, !tbaa !47
  %i.ls = getelementptr inbounds nuw i8, ptr %i.e, i64 %indvars.iv.next.i.i297
  store i8 %i.lr, ptr %i.ls, align 1, !tbaa !47
  %indvars.iv.next.i.i297.1 = add nuw nsw i64 %indvars.iv.i.i296, 2 ; 2 uses
  %i.lt = getelementptr inbounds nuw i8, ptr %.2.i.i.i2861661, i64 %indvars.iv.next.i.i297.1
  %i.lu = load i8, ptr %i.lt, align 1, !tbaa !47
  %i.lv = getelementptr inbounds nuw i8, ptr %i.e, i64 %indvars.iv.next.i.i297.1
  store i8 %i.lu, ptr %i.lv, align 1, !tbaa !47
  %indvars.iv.next.i.i297.2 = add nuw nsw i64 %indvars.iv.i.i296, 3 ; 2 uses
  %i.lw = getelementptr inbounds nuw i8, ptr %.2.i.i.i2861661, i64 %indvars.iv.next.i.i297.2
  %i.lx = load i8, ptr %i.lw, align 1, !tbaa !47
  %i.ly = getelementptr inbounds nuw i8, ptr %i.e, i64 %indvars.iv.next.i.i297.2
  store i8 %i.lx, ptr %i.ly, align 1, !tbaa !47
  %indvars.iv.next.i.i297.3 = add nuw nsw i64 %indvars.iv.i.i296, 4 ; 2 uses
  %exitcond.not.i.i298.3 = icmp eq i64 %indvars.iv.next.i.i297.3, %wide.trip.count.i.i294
  br i1 %exitcond.not.i.i298.3, label %._crit_edge.i.i299, label %.lr.ph.i9.i295, !llvm.loop !198

_ZN5scene18COBJMeshFileLoader17goAndCopyNextWordEPcPKcjS3_.exit304: ; preds = %bb.bb, %._crit_edge.i.i299
  %.2.i.i.i2861660 = phi ptr [ null, %bb.bb ], [ %.2.i.i.i2861661, %._crit_edge.i.i299 ]
  %i.lz = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.e) #33 ; 3 uses
  %i.ma = and i64 %i.lz, 4294967295               ; 6 uses
  %i.mb = load i64, ptr %i.bv, align 8, !tbaa !46 ; 2 uses
  %i.mc = icmp ult i64 %i.mb, %i.ma
  br i1 %i.mc, label %bb.bd, label %.noexc313

bb.bd:                                            ; preds = %_ZN5scene18COBJMeshFileLoader17goAndCopyNextWordEPcPKcjS3_.exit304
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEmc(ptr noundef nonnull align 8 dereferenceable(32) %4, i64 noundef %i.ma, i8 noundef signext 0)
          to label %.lr.ph.i308.preheader unwind label %bb.bf

.noexc313:                                        ; preds = %_ZN5scene18COBJMeshFileLoader17goAndCopyNextWordEPcPKcjS3_.exit304
  %.not18.i305 = icmp eq i64 %i.ma, 0
  br i1 %.not18.i305, label %._crit_edge.i312, label %.lr.ph.i308.preheader

.lr.ph.i308.preheader:                            ; preds = %bb.bd, %.noexc313
  %i.md = add nsw i64 %i.ma, -1
  %xtraiter2917 = and i64 %i.lz, 3                ; 3 uses
  %i.me = icmp ult i64 %i.md, 3
  br i1 %i.me, label %.lr.ph.i308.epil.preheader, label %.lr.ph.i308.preheader.new

.lr.ph.i308.preheader.new:                        ; preds = %.lr.ph.i308.preheader
  %unroll_iter = and i64 %i.lz, 4294967292
  br label %.lr.ph.i308

._crit_edge.i312.loopexit.unr-lcssa:              ; preds = %.lr.ph.i308
  %lcmp.mod2918.not = icmp eq i64 %xtraiter2917, 0
  br i1 %lcmp.mod2918.not, label %._crit_edge.i312.loopexit, label %.lr.ph.i308.epil.preheader

.lr.ph.i308.epil.preheader:                       ; preds = %._crit_edge.i312.loopexit.unr-lcssa, %.lr.ph.i308.preheader
  %indvars.iv.i309.epil.init = phi i64 [ 0, %.lr.ph.i308.preheader ], [ %indvars.iv.next.i310.3, %._crit_edge.i312.loopexit.unr-lcssa ]
  %lcmp.mod2919 = icmp ne i64 %xtraiter2917, 0
  call void @llvm.assume(i1 %lcmp.mod2919)
  br label %.lr.ph.i308.epil

.lr.ph.i308.epil:                                 ; preds = %.lr.ph.i308.epil, %.lr.ph.i308.epil.preheader
  %indvars.iv.i309.epil = phi i64 [ %indvars.iv.next.i310.epil, %.lr.ph.i308.epil ], [ %indvars.iv.i309.epil.init, %.lr.ph.i308.epil.preheader ] ; 3 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i308.epil ], [ 0, %.lr.ph.i308.epil.preheader ]
  %i.mf = getelementptr inbounds nuw i8, ptr %i.e, i64 %indvars.iv.i309.epil
  %i.mg = load i8, ptr %i.mf, align 1, !tbaa !47
  %i.mh = load ptr, ptr %4, align 8, !tbaa !48
  %i.mi = getelementptr inbounds nuw i8, ptr %i.mh, i64 %indvars.iv.i309.epil
  store i8 %i.mg, ptr %i.mi, align 1, !tbaa !47
  %indvars.iv.next.i310.epil = add nuw nsw i64 %indvars.iv.i309.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter2917
  br i1 %epil.iter.cmp.not, label %._crit_edge.i312.loopexit, label %.lr.ph.i308.epil, !llvm.loop !199

._crit_edge.i312.loopexit:                        ; preds = %.lr.ph.i308.epil, %._crit_edge.i312.loopexit.unr-lcssa
  %.pre = load i64, ptr %i.bv, align 8, !tbaa !46
  br label %._crit_edge.i312

._crit_edge.i312:                                 ; preds = %._crit_edge.i312.loopexit, %.noexc313
  %i.mj = phi i64 [ %.pre, %._crit_edge.i312.loopexit ], [ %i.mb, %.noexc313 ]
  %i.mk = icmp ugt i64 %i.mj, %i.ma
  br i1 %i.mk, label %bb.be, label %_ZN4core6stringIcEaSIcEERS1_PKT_.exit315

.lr.ph.i308:                                      ; preds = %.lr.ph.i308, %.lr.ph.i308.preheader.new
  %indvars.iv.i309 = phi i64 [ 0, %.lr.ph.i308.preheader.new ], [ %indvars.iv.next.i310.3, %.lr.ph.i308 ] ; 6 uses
  %niter = phi i64 [ 0, %.lr.ph.i308.preheader.new ], [ %niter.next.3, %.lr.ph.i308 ]
  %i.ml = getelementptr inbounds nuw i8, ptr %i.e, i64 %indvars.iv.i309
  %i.mm = load i8, ptr %i.ml, align 4, !tbaa !47
  %i.mn = load ptr, ptr %4, align 8, !tbaa !48
  %i.mo = getelementptr inbounds nuw i8, ptr %i.mn, i64 %indvars.iv.i309
  store i8 %i.mm, ptr %i.mo, align 1, !tbaa !47
  %indvars.iv.next.i310 = or disjoint i64 %indvars.iv.i309, 1 ; 2 uses
  %i.mp = getelementptr inbounds nuw i8, ptr %i.e, i64 %indvars.iv.next.i310
  %i.mq = load i8, ptr %i.mp, align 1, !tbaa !47
  %i.mr = load ptr, ptr %4, align 8, !tbaa !48
  %i.ms = getelementptr inbounds nuw i8, ptr %i.mr, i64 %indvars.iv.next.i310
  store i8 %i.mq, ptr %i.ms, align 1, !tbaa !47
  %indvars.iv.next.i310.1 = or disjoint i64 %indvars.iv.i309, 2 ; 2 uses
  %i.mt = getelementptr inbounds nuw i8, ptr %i.e, i64 %indvars.iv.next.i310.1
  %i.mu = load i8, ptr %i.mt, align 2, !tbaa !47
  %i.mv = load ptr, ptr %4, align 8, !tbaa !48
  %i.mw = getelementptr inbounds nuw i8, ptr %i.mv, i64 %indvars.iv.next.i310.1
  store i8 %i.mu, ptr %i.mw, align 1, !tbaa !47
  %indvars.iv.next.i310.2 = or disjoint i64 %indvars.iv.i309, 3 ; 2 uses
  %i.mx = getelementptr inbounds nuw i8, ptr %i.e, i64 %indvars.iv.next.i310.2
  %i.my = load i8, ptr %i.mx, align 1, !tbaa !47
  %i.mz = load ptr, ptr %4, align 8, !tbaa !48
  %i.na = getelementptr inbounds nuw i8, ptr %i.mz, i64 %indvars.iv.next.i310.2
  store i8 %i.my, ptr %i.na, align 1, !tbaa !47
  %indvars.iv.next.i310.3 = add nuw nsw i64 %indvars.iv.i309, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.i312.loopexit.unr-lcssa, label %.lr.ph.i308, !llvm.loop !190

bb.be:                                            ; preds = %._crit_edge.i312
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEmc(ptr noundef nonnull align 8 dereferenceable(32) %4, i64 noundef %i.ma, i8 noundef signext 0)
          to label %_ZN4core6stringIcEaSIcEERS1_PKT_.exit315 unwind label %bb.bf

_ZN4core6stringIcEaSIcEERS1_PKT_.exit315:         ; preds = %._crit_edge.i312, %bb.be
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #30
  br label %bb.fg

bb.bf:                                            ; preds = %bb.be, %bb.bd
  %i.nb = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #30
  br label %bb.gz

bb.bg:                                            ; preds = %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #30
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(38) %9, i8 0, i64 24, i1 false)
  store i32 -1, ptr %i.cp, align 4, !tbaa !63
  store <2 x float> zeroinitializer, ptr %i.cq, align 4, !tbaa !53
  store i16 0, ptr %i.cs, align 4, !tbaa !67
  br i1 %.0991180, label %bb.bh, label %bb.bk

bb.bh:                                            ; preds = %bb.bg
  %i.nc = invoke noundef ptr @_ZN5scene18COBJMeshFileLoader7findMtlERKN4core6stringIcEES5_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %bb.bi unwind label %bb.bj     ; 2 uses

bb.bi:                                            ; preds = %bb.bh
  %.not152 = icmp eq ptr %i.nc, null
  br i1 %.not152, label %bb.bk, label %.preheader.i

bb.bj:                                            ; preds = %bb.bh
  %i.nd = landingpad { ptr, i32 }
          cleanup
  br label %bb.ff

bb.bk:                                            ; preds = %bb.bi, %bb.bg
  br label %.preheader.i

.preheader.i:                                     ; preds = %bb.bi, %bb.bk
  %.1640 = phi ptr [ %.06331177, %bb.bk ], [ %i.nc, %bb.bi ] ; 6 uses
  store i32 -3355444, ptr %i.cp, align 4, !tbaa !68
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #30
  call void @llvm.experimental.noalias.scope.decl(metadata !219)
  %i.ne = icmp ult ptr %.01021179, %i.br
  br i1 %i.ne, label %.lr.ph.preheader.i320, label %._crit_edge.i316

.lr.ph.preheader.i320:                            ; preds = %.preheader.i
  %i.nf = ptrtoaddr ptr %.01021179 to i64
  %i.ng = sub i64 %i.cm, %i.nf
  %scevgep.i = getelementptr i8, ptr %.01021179, i64 %i.ng
  br label %.lr.ph.i321

.lr.ph.i321:                                      ; preds = %bb.bl, %.lr.ph.preheader.i320
  %.014.i = phi ptr [ %i.ni, %bb.bl ], [ %.01021179, %.lr.ph.preheader.i320 ] ; 4 uses
  %i.nh = load i8, ptr %.014.i, align 1, !tbaa !47, !noalias !219
  switch i8 %i.nh, label %bb.bl [
    i8 10, label %._crit_edge.i316
    i8 13, label %._crit_edge.i316
  ]

bb.bl:                                            ; preds = %.lr.ph.i321
  %i.ni = getelementptr inbounds nuw i8, ptr %.014.i, i64 1 ; 2 uses
  %exitcond.not.i322 = icmp eq ptr %i.ni, %i.br
  br i1 %exitcond.not.i322, label %._crit_edge.i316, label %.lr.ph.i321, !llvm.loop !3

._crit_edge.i316:                                 ; preds = %bb.bl, %.lr.ph.i321, %.lr.ph.i321, %.preheader.i
  %.0.lcssa.i = phi ptr [ %.01021179, %.preheader.i ], [ %.014.i, %.lr.ph.i321 ], [ %.014.i, %.lr.ph.i321 ], [ %scevgep.i, %bb.bl ]
  %.lcssa.i = phi i64 [ 0, %.preheader.i ], [ 1, %.lr.ph.i321 ], [ 1, %.lr.ph.i321 ], [ 0, %bb.bl ]
  %i.nj = ptrtoint ptr %.0.lcssa.i to i64
  %i.nk = ptrtoint ptr %.01021179 to i64
  %i.nl = sub i64 %i.nj, %i.nk
  %13 = add nsw i64 %i.nl, %.lcssa.i              ; 3 uses
  store ptr %i.ct, ptr %10, align 8, !tbaa !43, !alias.scope !219
  store i64 0, ptr %i.cu, align 8, !tbaa !46, !alias.scope !219
  store i8 0, ptr %i.ct, align 8, !tbaa !47, !alias.scope !219
  %14 = and i64 %13, 4294967295                   ; 3 uses
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEmc(ptr noundef nonnull align 8 dereferenceable(32) %10, i64 noundef %14, i8 noundef signext 0)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit.preheader.i.i unwind label %bb.bm

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit.preheader.i.i: ; preds = %._crit_edge.i316
  %.not12.i.i = icmp eq i64 %14, 0
  br i1 %.not12.i.i, label %_ZN5scene18COBJMeshFileLoader8copyLineEPKcS2_.exit, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit.i.i.preheader

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit.i.i.preheader: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit.preheader.i.i
  %xtraiter2932 = and i64 %13, 3                  ; 3 uses
  %i.nm = icmp samesign ult i64 %14, 4
  br i1 %i.nm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit.i.i.epil.preheader, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit.i.i.preheader.new

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit.i.i.preheader.new: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit.i.i.preheader
  %unroll_iter2936 = and i64 %13, 4294967292
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit.i.i

bb.bm:                                            ; preds = %._crit_edge.i316
  %i.nn = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.no = load ptr, ptr %10, align 8, !tbaa !48, !alias.scope !219 ; 2 uses
  %i.np = icmp eq ptr %i.no, %i.ct
  br i1 %i.np, label %.body323, label %.body323.sink.split

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit.i.i.preheader.new
  %indvars.iv.i.i317 = phi i64 [ 0, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit.i.i.preheader.new ], [ %indvars.iv.next.i.i318.3, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit.i.i ] ; 6 uses
  %niter2937 = phi i64 [ 0, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit.i.i.preheader.new ], [ %niter2937.next.3, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit.i.i ]
  %i.nq = getelementptr inbounds nuw i8, ptr %.01021179, i64 %indvars.iv.i.i317
  %i.nr = load i8, ptr %i.nq, align 1, !tbaa !47, !noalias !219
  %i.ns = load ptr, ptr %10, align 8, !tbaa !48, !alias.scope !219
  %i.nt = getelementptr inbounds nuw i8, ptr %i.ns, i64 %indvars.iv.i.i317
  store i8 %i.nr, ptr %i.nt, align 1, !tbaa !47
  %indvars.iv.next.i.i318 = or disjoint i64 %indvars.iv.i.i317, 1 ; 2 uses
  %i.nu = getelementptr inbounds nuw i8, ptr %.01021179, i64 %indvars.iv.next.i.i318
  %i.nv = load i8, ptr %i.nu, align 1, !tbaa !47, !noalias !219
  %i.nw = load ptr, ptr %10, align 8, !tbaa !48, !alias.scope !219
  %i.nx = getelementptr inbounds nuw i8, ptr %i.nw, i64 %indvars.iv.next.i.i318
  store i8 %i.nv, ptr %i.nx, align 1, !tbaa !47
  %indvars.iv.next.i.i318.1 = or disjoint i64 %indvars.iv.i.i317, 2 ; 2 uses
  %i.ny = getelementptr inbounds nuw i8, ptr %.01021179, i64 %indvars.iv.next.i.i318.1
  %i.nz = load i8, ptr %i.ny, align 1, !tbaa !47, !noalias !219
  %i.oa = load ptr, ptr %10, align 8, !tbaa !48, !alias.scope !219
  %i.ob = getelementptr inbounds nuw i8, ptr %i.oa, i64 %indvars.iv.next.i.i318.1
  store i8 %i.nz, ptr %i.ob, align 1, !tbaa !47
  %indvars.iv.next.i.i318.2 = or disjoint i64 %indvars.iv.i.i317, 3 ; 2 uses
  %i.oc = getelementptr inbounds nuw i8, ptr %.01021179, i64 %indvars.iv.next.i.i318.2
  %i.od = load i8, ptr %i.oc, align 1, !tbaa !47, !noalias !219
  %i.oe = load ptr, ptr %10, align 8, !tbaa !48, !alias.scope !219
  %i.of = getelementptr inbounds nuw i8, ptr %i.oe, i64 %indvars.iv.next.i.i318.2
  store i8 %i.od, ptr %i.of, align 1, !tbaa !47
  %indvars.iv.next.i.i318.3 = add nuw nsw i64 %indvars.iv.i.i317, 4 ; 2 uses
  %niter2937.next.3 = add i64 %niter2937, 4       ; 2 uses
  %niter2937.ncmp.3 = icmp eq i64 %niter2937.next.3, %unroll_iter2936
  br i1 %niter2937.ncmp.3, label %_ZN5scene18COBJMeshFileLoader8copyLineEPKcS2_.exit.loopexit.unr-lcssa, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit.i.i, !llvm.loop !4

_ZN5scene18COBJMeshFileLoader8copyLineEPKcS2_.exit.loopexit.unr-lcssa: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit.i.i
  %lcmp.mod2934.not = icmp eq i64 %xtraiter2932, 0
  br i1 %lcmp.mod2934.not, label %_ZN5scene18COBJMeshFileLoader8copyLineEPKcS2_.exit, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit.i.i.epil.preheader

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit.i.i.epil.preheader: ; preds = %_ZN5scene18COBJMeshFileLoader8copyLineEPKcS2_.exit.loopexit.unr-lcssa, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit.i.i.preheader
  %indvars.iv.i.i317.epil.init = phi i64 [ 0, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit.i.i.preheader ], [ %indvars.iv.next.i.i318.3, %_ZN5scene18COBJMeshFileLoader8copyLineEPKcS2_.exit.loopexit.unr-lcssa ]
  %lcmp.mod2935 = icmp ne i64 %xtraiter2932, 0
  call void @llvm.assume(i1 %lcmp.mod2935)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit.i.i.epil

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit.i.i.epil: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit.i.i.epil, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit.i.i.epil.preheader
  %indvars.iv.i.i317.epil = phi i64 [ %indvars.iv.next.i.i318.epil, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit.i.i.epil ], [ %indvars.iv.i.i317.epil.init, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit.i.i.epil.preheader ] ; 3 uses
  %epil.iter2933 = phi i64 [ %epil.iter2933.next, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit.i.i.epil ], [ 0, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit.i.i.epil.preheader ]
  %i.og = getelementptr inbounds nuw i8, ptr %.01021179, i64 %indvars.iv.i.i317.epil
  %i.oh = load i8, ptr %i.og, align 1, !tbaa !47, !noalias !219
  %i.oi = load ptr, ptr %10, align 8, !tbaa !48, !alias.scope !219
  %i.oj = getelementptr inbounds nuw i8, ptr %i.oi, i64 %indvars.iv.i.i317.epil
  store i8 %i.oh, ptr %i.oj, align 1, !tbaa !47
  %indvars.iv.next.i.i318.epil = add nuw nsw i64 %indvars.iv.i.i317.epil, 1
  %epil.iter2933.next = add i64 %epil.iter2933, 1 ; 2 uses
  %epil.iter2933.cmp.not = icmp eq i64 %epil.iter2933.next, %xtraiter2932
  br i1 %epil.iter2933.cmp.not, label %_ZN5scene18COBJMeshFileLoader8copyLineEPKcS2_.exit, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit.i.i.epil, !llvm.loop !202

_ZN5scene18COBJMeshFileLoader8copyLineEPKcS2_.exit: ; preds = %_ZN5scene18COBJMeshFileLoader8copyLineEPKcS2_.exit.loopexit.unr-lcssa, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit.i.i.epil, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit.preheader.i.i
  %i.ok = load ptr, ptr %10, align 8, !tbaa !48   ; 3 uses
  %i.ol = load i64, ptr %i.cu, align 8, !tbaa !46
  %i.om = and i64 %i.ol, 4294967295               ; 2 uses
  %i.on = getelementptr inbounds nuw i8, ptr %i.ok, i64 %i.om ; 8 uses
  %.not.i.i.i326 = icmp eq ptr %.sroa.13.0, %.sroa.0.0
  %spec.store.select = select i1 %.not.i.i.i326, ptr %.sroa.13.0, ptr %.sroa.0.0 ; 2 uses
  %i.oo = getelementptr inbounds nuw i8, ptr %.1640, i64 48 ; 2 uses
  %i.op = load ptr, ptr %i.oo, align 8, !tbaa !81
  %i.oq = getelementptr inbounds nuw i8, ptr %i.op, i64 136
  %i.or = load ptr, ptr %i.oq, align 8, !tbaa !95 ; 3 uses
  %i.os = getelementptr inbounds nuw i8, ptr %i.or, i64 32 ; 3 uses
  %i.ot = ptrtoaddr ptr %i.on to i64              ; 3 uses
  %.not11.i = icmp samesign eq i64 %i.om, 0
  br i1 %.not11.i, label %_ZN5scene18COBJMeshFileLoader10goNextWordEPKcS2_b.exitthread-pre-split, label %.lr.ph.i330

.lr.ph.i330:                                      ; preds = %_ZN5scene18COBJMeshFileLoader8copyLineEPKcS2_.exit, %_ZN4core7isspaceEi.exit.i
  %.012.i = phi ptr [ %i.ov, %_ZN4core7isspaceEi.exit.i ], [ %i.ok, %_ZN5scene18COBJMeshFileLoader8copyLineEPKcS2_.exit ] ; 5 uses
  %i.ou = load i8, ptr %.012.i, align 1, !tbaa !47
  switch i8 %i.ou, label %_ZN4core7isspaceEi.exit.i [
    i8 32, label %.critedge.thread.i
    i8 13, label %.critedge.thread.i
    i8 12, label %.critedge.thread.i
    i8 10, label %.critedge.thread.i
    i8 9, label %.critedge.thread.i
    i8 11, label %.critedge.thread.i
  ]

_ZN4core7isspaceEi.exit.i:                        ; preds = %.lr.ph.i330
  %i.ov = getelementptr inbounds nuw i8, ptr %.012.i, i64 1 ; 2 uses
  %.not.i331 = icmp eq ptr %i.ov, %i.on
  br i1 %.not.i331, label %_ZN5scene18COBJMeshFileLoader10goNextWordEPKcS2_b.exitthread-pre-split, label %.lr.ph.i330, !llvm.loop !0

.critedge.thread.i:                               ; preds = %.lr.ph.i330, %.lr.ph.i330, %.lr.ph.i330, %.lr.ph.i330, %.lr.ph.i330, %.lr.ph.i330
  %i.ow = ptrtoaddr ptr %.012.i to i64
  %i.ox = sub i64 %i.ot, %i.ow
  %scevgep29.i.i = getelementptr i8, ptr %.012.i, i64 %i.ox
  br label %.lr.ph23.i.i

.lr.ph23.i.i:                                     ; preds = %bb.bn, %.critedge.thread.i
  %.022.i.i = phi ptr [ %i.oz, %bb.bn ], [ %.012.i, %.critedge.thread.i ] ; 3 uses
  %i.oy = load i8, ptr %.022.i.i, align 1, !tbaa !47 ; 2 uses
  switch i8 %i.oy, label %_ZN5scene18COBJMeshFileLoader10goNextWordEPKcS2_b.exit [
    i8 32, label %bb.bn
    i8 13, label %bb.bn
    i8 12, label %bb.bn
    i8 10, label %bb.bn
    i8 9, label %bb.bn
    i8 11, label %bb.bn
  ]

bb.bn:                                            ; preds = %.lr.ph23.i.i, %.lr.ph23.i.i, %.lr.ph23.i.i, %.lr.ph23.i.i, %.lr.ph23.i.i, %.lr.ph23.i.i
  %i.oz = getelementptr inbounds nuw i8, ptr %.022.i.i, i64 1 ; 2 uses
  %.not13.i.i = icmp eq ptr %i.oz, %i.on
  br i1 %.not13.i.i, label %_ZN5scene18COBJMeshFileLoader10goNextWordEPKcS2_b.exitthread-pre-split, label %.lr.ph23.i.i, !llvm.loop !5

_ZN5scene18COBJMeshFileLoader10goNextWordEPKcS2_b.exitthread-pre-split: ; preds = %_ZN4core7isspaceEi.exit.i, %bb.bn, %_ZN5scene18COBJMeshFileLoader8copyLineEPKcS2_.exit
  %.2.i.i.ph = phi ptr [ %scevgep29.i.i, %bb.bn ], [ %i.ok, %_ZN5scene18COBJMeshFileLoader8copyLineEPKcS2_.exit ], [ %i.on, %_ZN4core7isspaceEi.exit.i ] ; 2 uses
  %.pr = load i8, ptr %.2.i.i.ph, align 1, !tbaa !47
  br label %_ZN5scene18COBJMeshFileLoader10goNextWordEPKcS2_b.exit

_ZN5scene18COBJMeshFileLoader10goNextWordEPKcS2_b.exit: ; preds = %.lr.ph23.i.i, %_ZN5scene18COBJMeshFileLoader10goNextWordEPKcS2_b.exitthread-pre-split
  %i.pa = phi i8 [ %.pr, %_ZN5scene18COBJMeshFileLoader10goNextWordEPKcS2_b.exitthread-pre-split ], [ %i.oy, %.lr.ph23.i.i ]
  %.2.i.i = phi ptr [ %.2.i.i.ph, %_ZN5scene18COBJMeshFileLoader10goNextWordEPKcS2_b.exitthread-pre-split ], [ %.022.i.i, %.lr.ph23.i.i ]
  %.not1541160 = icmp eq i8 %i.pa, 0
  br i1 %.not1541160, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN5scene18COBJMeshFileLoader10goNextWordEPKcS2_b.exit
  %i.pb = ptrtoint ptr %.sroa.14619.01174 to i64
  %i.pc = ptrtoint ptr %.sroa.0611.01178 to i64
  %i.pd = sub i64 %i.pb, %i.pc
  %i.pe = sdiv exact i64 %i.pd, 12                ; 2 uses
  %i.pf = trunc i64 %i.pe to i32                  ; 2 uses
  %i.pg = ptrtoint ptr %.sroa.14.01172 to i64
  %i.ph = ptrtoint ptr %.sroa.0571.01171 to i64
  %i.pi = sub i64 %i.pg, %i.ph                    ; 2 uses
  %i.pj = lshr exact i64 %i.pi, 3
  %i.pk = trunc i64 %i.pj to i32                  ; 2 uses
  %i.pl = ptrtoint ptr %.sroa.14597.01168 to i64
  %i.pm = ptrtoint ptr %.sroa.0589.01167 to i64
  %i.pn = sub i64 %i.pl, %i.pm
  %i.po = sdiv exact i64 %i.pn, 12                ; 2 uses
  %i.pp = trunc i64 %i.po to i32                  ; 2 uses
  %i.pq = ashr exact i64 %i.pi, 3
  %i.pr = getelementptr inbounds nuw i8, ptr %.1640, i64 125
  %i.ps = getelementptr inbounds nuw i8, ptr %.1640, i64 16 ; 2 uses
  %i.pt = getelementptr inbounds nuw i8, ptr %.1640, i64 8 ; 5 uses
  %i.pu = getelementptr inbounds nuw i8, ptr %i.or, i64 40 ; 4 uses
  %i.pv = getelementptr inbounds nuw i8, ptr %i.or, i64 48 ; 3 uses
  br label %bb.bo

bb.bo:                                            ; preds = %.lr.ph, %.loopexit
  %.sroa.13.1 = phi ptr [ %spec.store.select, %.lr.ph ], [ %.sroa.13.2, %.loopexit ] ; 5 uses
  %.sroa.0.1 = phi ptr [ %.sroa.0.0, %.lr.ph ], [ %.sroa.0.2, %.loopexit ] ; 6 uses
  %.sroa.22.1 = phi ptr [ %.sroa.22.0, %.lr.ph ], [ %.sroa.22.2, %.loopexit ] ; 4 uses
  %.0911161 = phi ptr [ %.2.i.i, %.lr.ph ], [ %.2.i.i375, %.loopexit ] ; 14 uses
  %.09111612439 = ptrtoaddr ptr %.0911161 to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #30
  store i32 -1, ptr %i.cv, align 4, !tbaa !68
  store i32 -1, ptr %i.cw, align 4, !tbaa !68
  store i32 -1, ptr %i.i, align 4, !tbaa !68
  br label %.preheader.i332

.preheader.i332:                                  ; preds = %bb.bo, %bb.bp
  %storemerge.i = phi i32 [ %i.qa, %bb.bp ], [ 0, %bb.bo ] ; 6 uses
  %i.pw = zext i32 %storemerge.i to i64
  %i.px = getelementptr inbounds nuw i8, ptr %.0911161, i64 %i.pw ; 2 uses
  %i.py = load i8, ptr %i.px, align 1, !tbaa !47
  switch i8 %i.py, label %_ZN4core7isspaceEi.exit.i340 [
    i8 0, label %_ZN4core7isspaceEi.exit.thread.i
    i8 32, label %_ZN4core7isspaceEi.exit.thread.i
    i8 13, label %_ZN4core7isspaceEi.exit.thread.i
    i8 12, label %_ZN4core7isspaceEi.exit.thread.i
    i8 10, label %_ZN4core7isspaceEi.exit.thread.i
    i8 9, label %_ZN4core7isspaceEi.exit.thread.i
    i8 11, label %_ZN4core7isspaceEi.exit.thread.i
  ]

_ZN4core7isspaceEi.exit.i340:                     ; preds = %.preheader.i332
  %i.pz = icmp eq ptr %i.px, %i.on
  br i1 %i.pz, label %_ZN4core7isspaceEi.exit.thread.i, label %bb.bp

bb.bp:                                            ; preds = %_ZN4core7isspaceEi.exit.i340
  %i.qa = add i32 %storemerge.i, 1
  br label %.preheader.i332, !llvm.loop !2

_ZN4core7isspaceEi.exit.thread.i:                 ; preds = %_ZN4core7isspaceEi.exit.i340, %.preheader.i332, %.preheader.i332, %.preheader.i332, %.preheader.i332, %.preheader.i332, %.preheader.i332, %.preheader.i332
  %.sroa.speculated.i = call i32 @llvm.umin.i32(i32 %storemerge.i, i32 511)
  %.not30.i = icmp eq i32 %storemerge.i, 0
  %.pre1460 = zext nneg i32 %.sroa.speculated.i to i64 ; 13 uses
  br i1 %.not30.i, label %.loopexit765, label %iter.check

iter.check:                                       ; preds = %_ZN4core7isspaceEi.exit.thread.i
  %min.iters.check = icmp ult i32 %storemerge.i, 4
  %i.qb = sub i64 %.09111612439, %i.h
  %diff.check = icmp ugt i64 %i.qb, -32
  %or.cond2555 = or i1 %min.iters.check, %diff.check
end_hunk_0
begin_hunk_1_@_ZN5scene18COBJMeshFileLoader7findMtlERKN4core6stringIcEES5_:bb.a

_ZN4core6stringIcEaSERKS1_.exit:                  ; preds = %_ZN4core5arrayIPN5scene18COBJMeshFileLoader7SObjMtlEE7getLastEv.exit
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.bk, ptr noundef nonnull align 8 dereferenceable(32) %2)
  %.pre65 = load ptr, ptr %i.a, align 8, !tbaa !247
  %.pre66 = load ptr, ptr %i.b, align 8, !tbaa !247 ; 2 uses
  %i.bm = icmp eq ptr %.pre65, %.pre66
  br i1 %i.bm, label %bb.n, label %_ZN4core5arrayIPN5scene18COBJMeshFileLoader7SObjMtlEEixEj.exit29.thread.sink.split

bb.n:                                             ; preds = %_ZN4core6stringIcEaSERKS1_.exit
  tail call void @__assert_fail(ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.17, i32 noundef 206, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN4core5arrayIPN5scene18COBJMeshFileLoader7SObjMtlEE7getLastEv) #34
  unreachable

bb.o:                                             ; preds = %bb.f
  %i.bn = landingpad { ptr, i32 }
          cleanup
  br label %bb.aa

_ZN4core5arrayIPN5scene18COBJMeshFileLoader7SObjMtlEEixEj.exit29.thread91: ; preds = %bb.a, %_ZN4core5arrayIPN5scene18COBJMeshFileLoader7SObjMtlEEixEj.exit29
  %i.bo = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bp = load i64, ptr %i.bo, align 8, !tbaa !46
  %i.bq = and i64 %i.bp, 4294967295
  %.not24 = icmp eq i64 %i.bq, 0
  br i1 %.not24, label %_ZN4core5arrayIPN5scene18COBJMeshFileLoader7SObjMtlEEixEj.exit29.thread, label %bb.p

bb.p:                                             ; preds = %_ZN4core5arrayIPN5scene18COBJMeshFileLoader7SObjMtlEEixEj.exit29.thread91
  %i.br = tail call noalias noundef nonnull dereferenceable(128) ptr @_Znwm(i64 noundef 128) #31 ; 4 uses
  %i.bs = load ptr, ptr %i.b, align 8, !tbaa !49
  %i.bt = load ptr, ptr %i.a, align 8, !tbaa !38  ; 2 uses
  %.not50 = icmp eq ptr %i.bs, %i.bt
  br i1 %.not50, label %bb.q, label %_ZN4core5arrayIPN5scene18COBJMeshFileLoader7SObjMtlEEixEj.exit32

bb.q:                                             ; preds = %bb.p
  tail call void @__assert_fail(ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.17, i32 noundef 192, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN4core5arrayIPN5scene18COBJMeshFileLoader7SObjMtlEEixEj) #34
  unreachable

_ZN4core5arrayIPN5scene18COBJMeshFileLoader7SObjMtlEEixEj.exit32: ; preds = %bb.p
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !51
  invoke void @_ZN5scene18COBJMeshFileLoader7SObjMtlC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(126) %i.br, ptr noundef nonnull align 8 dereferenceable(126) %i.bu)
          to label %bb.r unwind label %bb.z

bb.r:                                             ; preds = %_ZN4core5arrayIPN5scene18COBJMeshFileLoader7SObjMtlEEixEj.exit32
  %i.bv = load ptr, ptr %i.b, align 8, !tbaa !49  ; 4 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !39
  %.not.i.i.i33 = icmp eq ptr %i.bv, %i.bx
  br i1 %.not.i.i.i33, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  store ptr %i.br, ptr %i.bv, align 8, !tbaa !51
  %i.by = getelementptr inbounds nuw i8, ptr %i.bv, i64 8 ; 2 uses
  store ptr %i.by, ptr %i.b, align 8, !tbaa !49
  %.pre67 = load ptr, ptr %i.a, align 8, !tbaa !247
  br label %_ZN4core5arrayIPN5scene18COBJMeshFileLoader7SObjMtlEE9push_backEOS4_.exit40

bb.t:                                             ; preds = %bb.r
  %i.bz = load ptr, ptr %i.a, align 8, !tbaa !38  ; 4 uses
  %i.ca = ptrtoint ptr %i.bv to i64
  %i.cb = ptrtoint ptr %i.bz to i64               ; 2 uses
  %i.cc = sub i64 %i.ca, %i.cb                    ; 5 uses
  %i.cd = icmp eq i64 %i.cc, 9223372036854775800
  br i1 %i.cd, label %bb.u, label %_ZNKSt6vectorIPN5scene18COBJMeshFileLoader7SObjMtlESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i.i34

bb.u:                                             ; preds = %bb.t
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.9) #32
  unreachable

_ZNKSt6vectorIPN5scene18COBJMeshFileLoader7SObjMtlESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i.i34: ; preds = %bb.t
  %i.ce = ashr exact i64 %i.cc, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i.i35 = tail call i64 @llvm.umax.i64(i64 %i.ce, i64 1)
  %i.cf = add nsw i64 %.sroa.speculated.i.i.i.i.i35, %i.ce ; 2 uses
  %i.cg = icmp ult i64 %i.cf, %i.ce
  %i.ch = tail call i64 @llvm.umin.i64(i64 %i.cf, i64 1152921504606846975)
  %i.ci = select i1 %i.cg, i64 1152921504606846975, i64 %i.ch ; 3 uses
  %.not.i.i.i.i.i36 = icmp ne i64 %i.ci, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i.i36)
  %i.cj = shl nuw nsw i64 %i.ci, 3
  %i.ck = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cj) #31 ; 5 uses
  %i.cl = getelementptr inbounds i8, ptr %i.ck, i64 %i.cc ; 2 uses
  store ptr %i.br, ptr %i.cl, align 8, !tbaa !51
  %i.cm = icmp sgt i64 %i.cc, 0
  br i1 %i.cm, label %bb.v, label %_ZNSt6vectorIPN5scene18COBJMeshFileLoader7SObjMtlESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i.i37

bb.v:                                             ; preds = %_ZNKSt6vectorIPN5scene18COBJMeshFileLoader7SObjMtlESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i.i34
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ck, ptr align 8 %i.bz, i64 %i.cc, i1 false)
  br label %_ZNSt6vectorIPN5scene18COBJMeshFileLoader7SObjMtlESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i.i37

_ZNSt6vectorIPN5scene18COBJMeshFileLoader7SObjMtlESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i.i37: ; preds = %bb.v, %_ZNKSt6vectorIPN5scene18COBJMeshFileLoader7SObjMtlESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i.i34
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cl, i64 8 ; 2 uses
  %.not.i17.i.i.i.i38 = icmp eq ptr %i.bz, null
  br i1 %.not.i17.i.i.i.i38, label %_ZNSt6vectorIPN5scene18COBJMeshFileLoader7SObjMtlESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i.i39, label %bb.w

bb.w:                                             ; preds = %_ZNSt6vectorIPN5scene18COBJMeshFileLoader7SObjMtlESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i.i37
  %i.co = load ptr, ptr %i.bw, align 8, !tbaa !39
  %i.cp = ptrtoint ptr %i.co to i64
  %i.cq = sub i64 %i.cp, %i.cb
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bz, i64 noundef %i.cq) #29
  br label %_ZNSt6vectorIPN5scene18COBJMeshFileLoader7SObjMtlESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i.i39

_ZNSt6vectorIPN5scene18COBJMeshFileLoader7SObjMtlESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i.i39: ; preds = %bb.w, %_ZNSt6vectorIPN5scene18COBJMeshFileLoader7SObjMtlESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i.i37
  store ptr %i.ck, ptr %i.a, align 8, !tbaa !38
  store ptr %i.cn, ptr %i.b, align 8, !tbaa !49
  %i.cr = getelementptr inbounds nuw [8 x i8], ptr %i.ck, i64 %i.ci
  store ptr %i.cr, ptr %i.bw, align 8, !tbaa !39
  br label %_ZN4core5arrayIPN5scene18COBJMeshFileLoader7SObjMtlEE9push_backEOS4_.exit40

_ZN4core5arrayIPN5scene18COBJMeshFileLoader7SObjMtlEE9push_backEOS4_.exit40: ; preds = %bb.s, %_ZNSt6vectorIPN5scene18COBJMeshFileLoader7SObjMtlESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i.i39
  %i.cs = phi ptr [ %i.by, %bb.s ], [ %i.cn, %_ZNSt6vectorIPN5scene18COBJMeshFileLoader7SObjMtlESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i.i39 ] ; 3 uses
  %i.ct = phi ptr [ %.pre67, %bb.s ], [ %i.ck, %_ZNSt6vectorIPN5scene18COBJMeshFileLoader7SObjMtlESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i.i39 ]
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i8 0, ptr %i.cu, align 8, !tbaa !35
  %i.cv = icmp eq ptr %i.ct, %i.cs
  br i1 %i.cv, label %bb.x, label %_ZN4core5arrayIPN5scene18COBJMeshFileLoader7SObjMtlEE7getLastEv.exit41

bb.x:                                             ; preds = %_ZN4core5arrayIPN5scene18COBJMeshFileLoader7SObjMtlEE9push_backEOS4_.exit40
  tail call void @__assert_fail(ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.17, i32 noundef 206, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN4core5arrayIPN5scene18COBJMeshFileLoader7SObjMtlEE7getLastEv) #34
  unreachable

_ZN4core5arrayIPN5scene18COBJMeshFileLoader7SObjMtlEE7getLastEv.exit41: ; preds = %_ZN4core5arrayIPN5scene18COBJMeshFileLoader7SObjMtlEE9push_backEOS4_.exit40
  %i.cw = getelementptr inbounds i8, ptr %i.cs, i64 -8
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !51
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 88 ; 2 uses
  %i.cz = icmp eq ptr %i.cy, %2
  br i1 %i.cz, label %_ZN4core5arrayIPN5scene18COBJMeshFileLoader7SObjMtlEEixEj.exit29.thread.sink.split, label %_ZN4core6stringIcEaSERKS1_.exit42

_ZN4core6stringIcEaSERKS1_.exit42:                ; preds = %_ZN4core5arrayIPN5scene18COBJMeshFileLoader7SObjMtlEE7getLastEv.exit41
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.cy, ptr noundef nonnull align 8 dereferenceable(32) %2)
  %.pre68 = load ptr, ptr %i.a, align 8, !tbaa !247
  %.pre69 = load ptr, ptr %i.b, align 8, !tbaa !247 ; 2 uses
  %i.da = icmp eq ptr %.pre68, %.pre69
  br i1 %i.da, label %bb.y, label %_ZN4core5arrayIPN5scene18COBJMeshFileLoader7SObjMtlEEixEj.exit29.thread.sink.split

bb.y:                                             ; preds = %_ZN4core6stringIcEaSERKS1_.exit42
  tail call void @__assert_fail(ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.17, i32 noundef 206, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN4core5arrayIPN5scene18COBJMeshFileLoader7SObjMtlEE7getLastEv) #34
  unreachable

bb.z:                                             ; preds = %_ZN4core5arrayIPN5scene18COBJMeshFileLoader7SObjMtlEEixEj.exit32
  %i.db = landingpad { ptr, i32 }
          cleanup
  br label %bb.aa

_ZN4core5arrayIPN5scene18COBJMeshFileLoader7SObjMtlEEixEj.exit29.thread.sink.split: ; preds = %_ZN4core6stringIcEaSERKS1_.exit42, %_ZN4core5arrayIPN5scene18COBJMeshFileLoader7SObjMtlEE7getLastEv.exit41, %_ZN4core6stringIcEaSERKS1_.exit, %_ZN4core5arrayIPN5scene18COBJMeshFileLoader7SObjMtlEE7getLastEv.exit
  %.sink95 = phi ptr [ %i.be, %_ZN4core5arrayIPN5scene18COBJMeshFileLoader7SObjMtlEE7getLastEv.exit ], [ %.pre66, %_ZN4core6stringIcEaSERKS1_.exit ], [ %.pre69, %_ZN4core6stringIcEaSERKS1_.exit42 ], [ %i.cs, %_ZN4core5arrayIPN5scene18COBJMeshFileLoader7SObjMtlEE7getLastEv.exit41 ]
  %i.dc = getelementptr inbounds i8, ptr %.sink95, i64 -8
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !51
  br label %_ZN4core5arrayIPN5scene18COBJMeshFileLoader7SObjMtlEEixEj.exit29.thread

_ZN4core5arrayIPN5scene18COBJMeshFileLoader7SObjMtlEEixEj.exit29.thread: ; preds = %bb.e, %_ZNK4core6stringIcEeqERKS1_.exit28, %_ZN4core5arrayIPN5scene18COBJMeshFileLoader7SObjMtlEEixEj.exit29.thread.sink.split, %_ZN4core5arrayIPN5scene18COBJMeshFileLoader7SObjMtlEEixEj.exit29.thread91
  %.122 = phi ptr [ null, %_ZN4core5arrayIPN5scene18COBJMeshFileLoader7SObjMtlEEixEj.exit29.thread91 ], [ %i.dd, %_ZN4core5arrayIPN5scene18COBJMeshFileLoader7SObjMtlEEixEj.exit29.thread.sink.split ], [ %i.t, %_ZNK4core6stringIcEeqERKS1_.exit28 ], [ %i.t, %bb.e ]
  ret ptr %.122

bb.aa:                                            ; preds = %bb.z, %bb.o
  %.sink = phi ptr [ %i.br, %bb.z ], [ %i.ag, %bb.o ]
  %.pn = phi { ptr, i32 } [ %i.db, %bb.z ], [ %i.bn, %bb.o ]
  tail call void @_ZdlPvm(ptr noundef nonnull %.sink, i64 noundef 128) #29
  resume { ptr, i32 } %.pn
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #6

; Function Attrs: mustprogress uwtable
define void @_ZN5scene18COBJMeshFileLoader8copyLineEPKcS2_(ptr dead_on_unwind noalias writable sret(%"class.core::string") align 8 %0, ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(48) %1, ptr noundef %2, ptr nofree noundef readnone captures(address) %3) local_unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = ptrtoaddr ptr %2 to i64
  %i.b = ptrtoaddr ptr %3 to i64
  %.not = icmp eq ptr %2, null
  br i1 %.not, label %bb.b, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.c = icmp ult ptr %2, %3
  br i1 %i.c, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %.preheader
  %i.d = sub i64 %i.b, %i.a
  %scevgep = getelementptr i8, ptr %2, i64 %i.d
  br label %.lr.ph

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.e, ptr %0, align 8, !tbaa !43
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.f, align 8, !tbaa !46
  store i8 0, ptr %i.e, align 8, !tbaa !47
  br label %_ZN4core6stringIcEC2IcEEPKT_j.exit

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.c
  %.014 = phi ptr [ %i.h, %bb.c ], [ %2, %.lr.ph.preheader ] ; 4 uses
  %i.g = load i8, ptr %.014, align 1, !tbaa !47
  switch i8 %i.g, label %bb.c [
    i8 10, label %._crit_edge
    i8 13, label %._crit_edge
  ]

bb.c:                                             ; preds = %.lr.ph
  %i.h = getelementptr inbounds nuw i8, ptr %.014, i64 1 ; 2 uses
  %exitcond.not = icmp eq ptr %i.h, %3
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !3

._crit_edge:                                      ; preds = %.lr.ph, %.lr.ph, %bb.c, %.preheader
  %.0.lcssa = phi ptr [ %2, %.preheader ], [ %scevgep, %bb.c ], [ %.014, %.lr.ph ], [ %.014, %.lr.ph ]
  %.lcssa = phi i64 [ 0, %.preheader ], [ 0, %bb.c ], [ 1, %.lr.ph ], [ 1, %.lr.ph ]
  %i.i = ptrtoint ptr %.0.lcssa to i64
  %i.j = ptrtoint ptr %2 to i64
  %i.k = sub i64 %i.i, %i.j
  %4 = add nsw i64 %i.k, %.lcssa                  ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  store ptr %i.l, ptr %0, align 8, !tbaa !43
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.m, align 8, !tbaa !46
  store i8 0, ptr %i.l, align 8, !tbaa !47
  %5 = and i64 %4, 4294967295                     ; 3 uses
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEmc(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %5, i8 noundef signext 0)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit.preheader.i unwind label %bb.d

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit.preheader.i: ; preds = %._crit_edge
  %.not12.i = icmp eq i64 %5, 0
  br i1 %.not12.i, label %_ZN4core6stringIcEC2IcEEPKT_j.exit, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit.i.preheader

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit.i.preheader: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit.preheader.i
  %xtraiter = and i64 %4, 3                       ; 3 uses
  %i.n = icmp samesign ult i64 %5, 4
  br i1 %i.n, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit.i.epil.preheader, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit.i.preheader.new

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit.i.preheader.new: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit.i.preheader
  %unroll_iter = and i64 %4, 4294967292
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit.i

bb.d:                                             ; preds = %._crit_edge
  %i.o = landingpad { ptr, i32 }
          cleanup
  %i.p = load ptr, ptr %0, align 8, !tbaa !48     ; 2 uses
  %i.q = icmp eq ptr %i.p, %i.l
  br i1 %i.q, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.d
  %i.r = load i64, ptr %i.l, align 8, !tbaa !47
  %i.s = add i64 %i.r, 1
  tail call void @_ZdlPvm(ptr noundef %i.p, i64 noundef %i.s) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  resume { ptr, i32 } %i.o

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit.i.preheader.new
  %indvars.iv.i = phi i64 [ 0, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit.i.preheader.new ], [ %indvars.iv.next.i.3, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit.i ] ; 6 uses
  %niter = phi i64 [ 0, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit.i.preheader.new ], [ %niter.next.3, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit.i ]
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 %indvars.iv.i
  %i.u = load i8, ptr %i.t, align 1, !tbaa !47
  %i.v = load ptr, ptr %0, align 8, !tbaa !48
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 %indvars.iv.i
  store i8 %i.u, ptr %i.w, align 1, !tbaa !47
  %indvars.iv.next.i = or disjoint i64 %indvars.iv.i, 1 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 %indvars.iv.next.i
  %i.y = load i8, ptr %i.x, align 1, !tbaa !47
  %i.z = load ptr, ptr %0, align 8, !tbaa !48
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 %indvars.iv.next.i
  store i8 %i.y, ptr %i.aa, align 1, !tbaa !47
  %indvars.iv.next.i.1 = or disjoint i64 %indvars.iv.i, 2 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 %indvars.iv.next.i.1
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !47
  %i.ad = load ptr, ptr %0, align 8, !tbaa !48
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 %indvars.iv.next.i.1
  store i8 %i.ac, ptr %i.ae, align 1, !tbaa !47
  %indvars.iv.next.i.2 = or disjoint i64 %indvars.iv.i, 3 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 %indvars.iv.next.i.2
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !47
  %i.ah = load ptr, ptr %0, align 8, !tbaa !48
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 %indvars.iv.next.i.2
  store i8 %i.ag, ptr %i.ai, align 1, !tbaa !47
  %indvars.iv.next.i.3 = add nuw nsw i64 %indvars.iv.i, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %_ZN4core6stringIcEC2IcEEPKT_j.exit.loopexit.unr-lcssa, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit.i, !llvm.loop !4

_ZN4core6stringIcEC2IcEEPKT_j.exit.loopexit.unr-lcssa: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN4core6stringIcEC2IcEEPKT_j.exit, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit.i.epil.preheader

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit.i.epil.preheader: ; preds = %_ZN4core6stringIcEC2IcEEPKT_j.exit.loopexit.unr-lcssa, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit.i.preheader
  %indvars.iv.i.epil.init = phi i64 [ 0, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit.i.preheader ], [ %indvars.iv.next.i.3, %_ZN4core6stringIcEC2IcEEPKT_j.exit.loopexit.unr-lcssa ]
  %lcmp.mod26 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod26)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit.i.epil

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit.i.epil: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit.i.epil, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit.i.epil.preheader
  %indvars.iv.i.epil = phi i64 [ %indvars.iv.next.i.epil, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit.i.epil ], [ %indvars.iv.i.epil.init, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit.i.epil.preheader ] ; 3 uses
  %epil.iter = phi i64 [ %epil.iter.next, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit.i.epil ], [ 0, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit.i.epil.preheader ]
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 %indvars.iv.i.epil
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !47
  %i.al = load ptr, ptr %0, align 8, !tbaa !48
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 %indvars.iv.i.epil
  store i8 %i.ak, ptr %i.am, align 1, !tbaa !47
  %indvars.iv.next.i.epil = add nuw nsw i64 %indvars.iv.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_ZN4core6stringIcEC2IcEEPKT_j.exit, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit.i.epil, !llvm.loop !248

_ZN4core6stringIcEC2IcEEPKT_j.exit:               ; preds = %_ZN4core6stringIcEC2IcEEPKT_j.exit.loopexit.unr-lcssa, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit.i.epil, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit.preheader.i, %bb.b
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef ptr @_ZN5scene18COBJMeshFileLoader10goNextWordEPKcS2_b(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(48) %0, ptr nofree noundef readonly captures(address, ret: address, provenance) %1, ptr nofree noundef readnone captures(address) %2, i1 noundef zeroext %3) local_unnamed_addr #12 align 2 {
bb.a:
  %i.a = ptrtoaddr ptr %2 to i64                  ; 2 uses
  %.not11 = icmp eq ptr %1, %2
  br i1 %.not11, label %_ZN5scene18COBJMeshFileLoader11goFirstWordEPKcS2_b.exit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.b = ptrtoaddr ptr %1 to i64
  %i.c = sub i64 %i.a, %i.b
  %scevgep = getelementptr i8, ptr %1, i64 %i.c
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_ZN4core7isspaceEi.exit
  %.012 = phi ptr [ %i.e, %_ZN4core7isspaceEi.exit ], [ %1, %.lr.ph.preheader ] ; 6 uses
  %i.d = load i8, ptr %.012, align 1, !tbaa !47
  switch i8 %i.d, label %_ZN4core7isspaceEi.exit [
    i8 32, label %.critedge.thread
    i8 13, label %.critedge.thread
    i8 12, label %.critedge.thread
    i8 10, label %.critedge.thread
    i8 9, label %.critedge.thread
    i8 11, label %.critedge.thread
  ]

_ZN4core7isspaceEi.exit:                          ; preds = %.lr.ph
  %i.e = getelementptr inbounds nuw i8, ptr %.012, i64 1 ; 2 uses
  %.not = icmp eq ptr %i.e, %2
  br i1 %.not, label %_ZN5scene18COBJMeshFileLoader11goFirstWordEPKcS2_b.exit, label %.lr.ph, !llvm.loop !0

.critedge.thread:                                 ; preds = %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph
  %i.f = ptrtoaddr ptr %.012 to i64
  %i.g = sub i64 %i.a, %i.f
  %scevgep29.i = getelementptr i8, ptr %.012, i64 %i.g ; 2 uses
  br i1 %3, label %.lr.ph23.i, label %.lr.ph.i

.lr.ph23.i:                                       ; preds = %.critedge.thread, %bb.b
  %.022.i = phi ptr [ %i.i, %bb.b ], [ %.012, %.critedge.thread ] ; 3 uses
  %i.h = load i8, ptr %.022.i, align 1, !tbaa !47
  switch i8 %i.h, label %_ZN5scene18COBJMeshFileLoader11goFirstWordEPKcS2_b.exit [
    i8 32, label %bb.b
    i8 13, label %bb.b
    i8 12, label %bb.b
    i8 10, label %bb.b
    i8 9, label %bb.b
    i8 11, label %bb.b
  ]

bb.b:                                             ; preds = %.lr.ph23.i, %.lr.ph23.i, %.lr.ph23.i, %.lr.ph23.i, %.lr.ph23.i, %.lr.ph23.i
  %i.i = getelementptr inbounds nuw i8, ptr %.022.i, i64 1 ; 2 uses
  %.not13.i = icmp eq ptr %i.i, %2
  br i1 %.not13.i, label %_ZN5scene18COBJMeshFileLoader11goFirstWordEPKcS2_b.exit, label %.lr.ph23.i, !llvm.loop !5

.lr.ph.i:                                         ; preds = %.critedge.thread, %bb.c
  %.118.i = phi ptr [ %i.k, %bb.c ], [ %.012, %.critedge.thread ] ; 3 uses
  %i.j = load i8, ptr %.118.i, align 1, !tbaa !47
  switch i8 %i.j, label %_ZN5scene18COBJMeshFileLoader11goFirstWordEPKcS2_b.exit [
    i8 32, label %bb.c
    i8 9, label %bb.c
    i8 11, label %bb.c
    i8 12, label %bb.c
    i8 13, label %bb.c
  ]

bb.c:                                             ; preds = %.lr.ph.i, %.lr.ph.i, %.lr.ph.i, %.lr.ph.i, %.lr.ph.i
  %i.k = getelementptr inbounds nuw i8, ptr %.118.i, i64 1 ; 2 uses
  %.not.i = icmp eq ptr %i.k, %2
  br i1 %.not.i, label %_ZN5scene18COBJMeshFileLoader11goFirstWordEPKcS2_b.exit, label %.lr.ph.i, !llvm.loop !1

_ZN5scene18COBJMeshFileLoader11goFirstWordEPKcS2_b.exit: ; preds = %_ZN4core7isspaceEi.exit, %.lr.ph.i, %bb.c, %.lr.ph23.i, %bb.b, %bb.a
  %.2.i = phi ptr [ %1, %bb.a ], [ %.022.i, %.lr.ph23.i ], [ %.118.i, %.lr.ph.i ], [ %scevgep29.i, %bb.b ], [ %scevgep29.i, %bb.c ], [ %scevgep, %_ZN4core7isspaceEi.exit ]
  ret ptr %.2.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define noundef range(i32 0, -1) i32 @_ZN5scene18COBJMeshFileLoader8copyWordEPcPKcjS3_(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(48) %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree noundef readonly captures(address) %2, i32 noundef %3, ptr nofree noundef readnone captures(address) %4) local_unnamed_addr #10 align 2 {
bb.a:
  %i.a = ptrtoaddr ptr %2 to i64
  %i.b = ptrtoaddr ptr %1 to i64
  %.not = icmp eq i32 %3, 0
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not23 = icmp eq ptr %2, null
  br i1 %.not23, label %bb.c, label %.preheader

bb.c:                                             ; preds = %bb.b
  store i8 0, ptr %1, align 1, !tbaa !47
  br label %bb.e

.preheader:                                       ; preds = %bb.b, %bb.d
  %storemerge = phi i32 [ %i.g, %bb.d ], [ 0, %bb.b ] ; 3 uses
  %i.c = zext i32 %storemerge to i64
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 %i.c ; 2 uses
  %i.e = load i8, ptr %i.d, align 1, !tbaa !47
  switch i8 %i.e, label %_ZN4core7isspaceEi.exit [
    i8 0, label %_ZN4core7isspaceEi.exit.thread
    i8 32, label %_ZN4core7isspaceEi.exit.thread
    i8 13, label %_ZN4core7isspaceEi.exit.thread
    i8 12, label %_ZN4core7isspaceEi.exit.thread
    i8 10, label %_ZN4core7isspaceEi.exit.thread
    i8 9, label %_ZN4core7isspaceEi.exit.thread
    i8 11, label %_ZN4core7isspaceEi.exit.thread
  ]

_ZN4core7isspaceEi.exit:                          ; preds = %.preheader
  %i.f = icmp eq ptr %i.d, %4
  br i1 %i.f, label %_ZN4core7isspaceEi.exit.thread, label %bb.d

bb.d:                                             ; preds = %_ZN4core7isspaceEi.exit
  %i.g = add i32 %storemerge, 1
  br label %.preheader, !llvm.loop !2

_ZN4core7isspaceEi.exit.thread:                   ; preds = %.preheader, %.preheader, %.preheader, %.preheader, %.preheader, %.preheader, %.preheader, %_ZN4core7isspaceEi.exit
  %i.h = add i32 %3, -1
  %.sroa.speculated = tail call i32 @llvm.umin.i32(i32 %storemerge, i32 %i.h) ; 5 uses
  %.not30 = icmp eq i32 %.sroa.speculated, 0
  br i1 %.not30, label %._crit_edge, label %iter.check

iter.check:                                       ; preds = %_ZN4core7isspaceEi.exit.thread
  %wide.trip.count = zext i32 %.sroa.speculated to i64 ; 12 uses
  %min.iters.check = icmp ult i32 %.sroa.speculated, 4
  %i.i = sub i64 %i.a, %i.b
  %diff.check = icmp ugt i64 %i.i, -32
end_hunk_1
