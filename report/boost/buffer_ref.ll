Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/boost/original/buffer_ref?download=true
inline.NumInlined: 4775
inline.NumDeleted: 1323
loop-unroll.NumCompletelyUnrolled: 10
loop-unroll.NumRuntimeUnrolled: 27
loop-unroll.NumUnrolled: 38
begin_hunk_0_@_ZN5boost5beast23test_dynamic_buffer_refINS_4asio21dynamic_string_bufferIcSt11char_traitsIcESaIcEEEEEvT_:bb.a
  br i1 %i.nf, label %.lr.ph.i.epil.preheader, label %.lr.ph.i.preheader.new

.lr.ph.i.preheader.new:                           ; preds = %.lr.ph.i.preheader
  %unroll_iter = and i64 %spec.select, 8
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.i.preheader.new
  %.06.i = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %i.nu, %.lr.ph.i ] ; 10 uses
  %niter = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %niter.next.7, %.lr.ph.i ]
  %indvars1016 = trunc i64 %.06.i to i8
  %i.ng = or disjoint i64 %.06.i, 1               ; 2 uses
  %i.nh = getelementptr inbounds nuw i8, ptr %i.s, i64 %.06.i
  store i8 %indvars1016, ptr %i.nh, align 1, !tbaa !41
  %indvars1016.1 = trunc i64 %i.ng to i8
  %i.ni = or disjoint i64 %.06.i, 2               ; 2 uses
  %i.nj = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.ng
  store i8 %indvars1016.1, ptr %i.nj, align 1, !tbaa !41
  %indvars1016.2 = trunc i64 %i.ni to i8
  %i.nk = or disjoint i64 %.06.i, 3               ; 2 uses
  %i.nl = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.ni
  store i8 %indvars1016.2, ptr %i.nl, align 1, !tbaa !41
  %indvars1016.3 = trunc i64 %i.nk to i8
  %i.nm = or disjoint i64 %.06.i, 4               ; 2 uses
  %i.nn = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.nk
  store i8 %indvars1016.3, ptr %i.nn, align 1, !tbaa !41
  %indvars1016.4 = trunc i64 %i.nm to i8
  %i.no = or disjoint i64 %.06.i, 5               ; 2 uses
  %i.np = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.nm
  store i8 %indvars1016.4, ptr %i.np, align 1, !tbaa !41
  %indvars1016.5 = trunc i64 %i.no to i8
  %i.nq = or disjoint i64 %.06.i, 6               ; 2 uses
  %i.nr = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.no
  store i8 %indvars1016.5, ptr %i.nr, align 1, !tbaa !41
  %indvars1016.6 = trunc i64 %i.nq to i8
  %i.ns = or disjoint i64 %.06.i, 7               ; 2 uses
  %i.nt = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.nq
  store i8 %indvars1016.6, ptr %i.nt, align 1, !tbaa !41
  %indvars1016.7 = trunc i64 %i.ns to i8
  %i.nu = add nuw nsw i64 %.06.i, 8               ; 2 uses
  %i.nv = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.ns
  store i8 %indvars1016.7, ptr %i.nv, align 1, !tbaa !41
  %niter.next.7 = add i64 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %_ZZN5boost5beast23test_dynamic_buffer_refINS_4asio21dynamic_string_bufferIcSt11char_traitsIcESaIcEEEEEvT_ENKUlvE_clEv.exit.loopexit.unr-lcssa, label %.lr.ph.i, !llvm.loop !537

_ZZN5boost5beast23test_dynamic_buffer_refINS_4asio21dynamic_string_bufferIcSt11char_traitsIcESaIcEEEEEvT_ENKUlvE_clEv.exit.loopexit.unr-lcssa: ; preds = %.lr.ph.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZZN5boost5beast23test_dynamic_buffer_refINS_4asio21dynamic_string_bufferIcSt11char_traitsIcESaIcEEEEEvT_ENKUlvE_clEv.exit, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %_ZZN5boost5beast23test_dynamic_buffer_refINS_4asio21dynamic_string_bufferIcSt11char_traitsIcESaIcEEEEEvT_ENKUlvE_clEv.exit.loopexit.unr-lcssa, %.lr.ph.i.preheader
  %.06.i.epil.init = phi i64 [ 0, %.lr.ph.i.preheader ], [ %i.nu, %_ZZN5boost5beast23test_dynamic_buffer_refINS_4asio21dynamic_string_bufferIcSt11char_traitsIcESaIcEEEEEvT_ENKUlvE_clEv.exit.loopexit.unr-lcssa ]
  %lcmp.mod1407 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod1407)
  br label %.lr.ph.i.epil

.lr.ph.i.epil:                                    ; preds = %.lr.ph.i.epil, %.lr.ph.i.epil.preheader
  %.06.i.epil = phi i64 [ %i.nw, %.lr.ph.i.epil ], [ %.06.i.epil.init, %.lr.ph.i.epil.preheader ] ; 3 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i.epil ], [ 0, %.lr.ph.i.epil.preheader ]
  %indvars1016.epil = trunc i64 %.06.i.epil to i8
  %i.nw = add nuw nsw i64 %.06.i.epil, 1
  %i.nx = getelementptr inbounds nuw i8, ptr %i.s, i64 %.06.i.epil
  store i8 %indvars1016.epil, ptr %i.nx, align 1, !tbaa !41
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_ZZN5boost5beast23test_dynamic_buffer_refINS_4asio21dynamic_string_bufferIcSt11char_traitsIcESaIcEEEEEvT_ENKUlvE_clEv.exit, label %.lr.ph.i.epil, !llvm.loop !538

_ZZN5boost5beast23test_dynamic_buffer_refINS_4asio21dynamic_string_bufferIcSt11char_traitsIcESaIcEEEEEvT_ENKUlvE_clEv.exit: ; preds = %_ZZN5boost5beast23test_dynamic_buffer_refINS_4asio21dynamic_string_bufferIcSt11char_traitsIcESaIcEEEEEvT_ENKUlvE_clEv.exit.loopexit.unr-lcssa, %.lr.ph.i.epil, %_ZNK5boost4asio21dynamic_string_bufferIcSt11char_traitsIcESaIcEE4sizeEv.exit336
  %i.ny = load ptr, ptr %0, align 8, !tbaa !552, !nonnull !48, !align !49 ; 6 uses
  %i.nz = load i64, ptr %i.z, align 8, !tbaa !551 ; 4 uses
  %i.oa = load i64, ptr %i.au, align 8, !tbaa !553 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %39) #31
  %.not.i.i342 = icmp eq i64 %i.nz, -1
  br i1 %.not.i.i342, label %_ZNK5boost4asio21dynamic_string_bufferIcSt11char_traitsIcESaIcEE4sizeEv.exit8.thread.i353, label %_ZNK5boost4asio21dynamic_string_bufferIcSt11char_traitsIcESaIcEE4sizeEv.exit.thread.i343

_ZNK5boost4asio21dynamic_string_bufferIcSt11char_traitsIcESaIcEE4sizeEv.exit.thread.i343: ; preds = %_ZZN5boost5beast23test_dynamic_buffer_refINS_4asio21dynamic_string_bufferIcSt11char_traitsIcESaIcEEEEEvT_ENKUlvE_clEv.exit
  %i.ob = icmp ugt i64 %i.nz, %i.oa
  %i.oc = sub i64 %i.oa, %i.nz
  %i.od = icmp ult i64 %i.oc, %spec.select
  %or.cond.i344 = or i1 %i.ob, %i.od
  br i1 %or.cond.i344, label %bb.bj, label %_ZN5boost4asio21dynamic_string_bufferIcSt11char_traitsIcESaIcEE7prepareEm.exit355

_ZNK5boost4asio21dynamic_string_bufferIcSt11char_traitsIcESaIcEE4sizeEv.exit8.thread.i353: ; preds = %_ZZN5boost5beast23test_dynamic_buffer_refINS_4asio21dynamic_string_bufferIcSt11char_traitsIcESaIcEEEEEvT_ENKUlvE_clEv.exit
  %i.oe = getelementptr inbounds nuw i8, ptr %i.ny, i64 8
  %i.of = load i64, ptr %i.oe, align 8, !tbaa !42 ; 2 uses
  %i.og = call i64 @llvm.usub.sat.i64(i64 %i.oa, i64 %i.of)
  %i.oh = icmp ult i64 %i.og, %spec.select
  br i1 %i.oh, label %bb.bj, label %_ZN5boost4asio21dynamic_string_bufferIcSt11char_traitsIcESaIcEE7prepareEm.exit355

bb.bj:                                            ; preds = %_ZNK5boost4asio21dynamic_string_bufferIcSt11char_traitsIcESaIcEE4sizeEv.exit8.thread.i353, %_ZNK5boost4asio21dynamic_string_bufferIcSt11char_traitsIcESaIcEE4sizeEv.exit.thread.i343
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #31
  call void @_ZNSt12length_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %26, ptr noundef nonnull @.str.47)
  invoke void @_ZN5boost15throw_exceptionISt12length_errorEEvRKT_(ptr noundef nonnull align 8 dereferenceable(16) %26) #33
          to label %bb.bk unwind label %bb.bl

bb.bk:                                            ; preds = %bb.bj
  unreachable

bb.bl:                                            ; preds = %bb.bj
  %i.oi = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12length_errorD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %26) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #31
  br label %common.resume

_ZN5boost4asio21dynamic_string_bufferIcSt11char_traitsIcESaIcEE7prepareEm.exit355: ; preds = %_ZNK5boost4asio21dynamic_string_bufferIcSt11char_traitsIcESaIcEE4sizeEv.exit8.thread.i353, %_ZNK5boost4asio21dynamic_string_bufferIcSt11char_traitsIcESaIcEE4sizeEv.exit.thread.i343
  %.sroa.9.0 = phi i64 [ %i.nz, %_ZNK5boost4asio21dynamic_string_bufferIcSt11char_traitsIcESaIcEE4sizeEv.exit.thread.i343 ], [ %i.of, %_ZNK5boost4asio21dynamic_string_bufferIcSt11char_traitsIcESaIcEE4sizeEv.exit8.thread.i353 ] ; 4 uses
  %i.oj = add i64 %.sroa.9.0, %spec.select
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEmc(ptr noundef nonnull align 8 dereferenceable(32) %i.ny, i64 noundef %i.oj, i8 noundef signext 0)
  %i.ok = getelementptr inbounds nuw i8, ptr %i.ny, i64 8 ; 4 uses
  %i.ol = load i64, ptr %i.ok, align 8, !tbaa !42 ; 3 uses
  %.not.i9.i347 = icmp eq i64 %i.ol, 0
  %i.om = load ptr, ptr %i.ny, align 8
  %spec.select.i.i348 = select i1 %.not.i9.i347, ptr null, ptr %i.om
  %spec.select.i10.i349 = call i64 @llvm.umin.i64(i64 %.sroa.9.0, i64 %i.ol) ; 2 uses
  %i.on = getelementptr inbounds nuw i8, ptr %spec.select.i.i348, i64 %spec.select.i10.i349
  %i.oo = sub i64 %i.ol, %spec.select.i10.i349    ; 2 uses
  %spec.select.i13.i351 = call i64 @llvm.umin.i64(i64 %i.oo, i64 %spec.select)
  store ptr %i.on, ptr %39, align 8
  %i.op = getelementptr inbounds nuw i8, ptr %39, i64 8 ; 2 uses
  store i64 %spec.select.i13.i351, ptr %i.op, align 8
  %i.oq = load ptr, ptr @_ZZN5boost5beast9unit_test5suite12p_this_suiteEvE3pts, align 8, !tbaa !150
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w) #31
  %i.or = icmp ule i64 %spec.select, %i.oo
  %i.os = zext i1 %i.or to i8
  store i8 %i.os, ptr %i.w, align 1, !tbaa !227
  %i.ot = call noundef zeroext i1 @_ZN5boost5beast9unit_test5suite6expectIbA1_cEEbRKT_RKT0_PKci(ptr noundef nonnull align 8 dereferenceable(808) %i.oq, ptr noundef nonnull align 1 dereferenceable(1) %i.w, ptr noundef nonnull align 1 dereferenceable(1) @.str.25, ptr noundef nonnull @.str.44, i32 noundef 725) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w) #31
  call void @_ZN5boost5beast20test_buffer_sequenceINS_4asio14mutable_bufferEEEvRKT_(ptr noundef nonnull align 8 dereferenceable(16) %39)
  %i.ou = load i64, ptr %i.op, align 8, !tbaa !111
  %i.ov = call i64 @llvm.umin.i64(i64 %i.ou, i64 %spec.select) ; 3 uses
  %.not.i.i.i356 = icmp eq i64 %i.ov, 0
  br i1 %.not.i.i.i356, label %_ZN5boost4asio11buffer_copyINS0_14mutable_bufferENS0_12const_bufferEEEmRKT_RKT0_.exit357, label %bb.bm

bb.bm:                                            ; preds = %_ZN5boost4asio21dynamic_string_bufferIcSt11char_traitsIcESaIcEE7prepareEm.exit355
  %i.ow = load ptr, ptr %39, align 8, !tbaa !110
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ow, ptr nonnull align 1 %i.s, i64 %i.ov, i1 false)
  br label %_ZN5boost4asio11buffer_copyINS0_14mutable_bufferENS0_12const_bufferEEEmRKT_RKT0_.exit357

_ZN5boost4asio11buffer_copyINS0_14mutable_bufferENS0_12const_bufferEEEmRKT_RKT0_.exit357: ; preds = %_ZN5boost4asio21dynamic_string_bufferIcSt11char_traitsIcESaIcEE7prepareEm.exit355, %bb.bm
  %i.ox = load i64, ptr %i.ok, align 8, !tbaa !42
  %i.oy = sub i64 %i.ox, %.sroa.9.0
  %.sroa.speculated.i358 = call i64 @llvm.umin.i64(i64 %i.oy, i64 %i.ov)
  %i.oz = add i64 %.sroa.speculated.i358, %.sroa.9.0 ; 3 uses
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEmc(ptr noundef nonnull align 8 dereferenceable(32) %i.ny, i64 noundef %i.oz, i8 noundef signext 0)
  %i.pa = load ptr, ptr @_ZZN5boost5beast9unit_test5suite12p_this_suiteEvE3pts, align 8, !tbaa !150
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x) #31
  %i.pb = load i64, ptr %i.ok, align 8, !tbaa !42
  %i.pc = call i64 @llvm.umin.i64(i64 %i.pb, i64 %i.oz)
  %i.pd = icmp eq i64 %i.pc, %spec.select
  %i.pe = zext i1 %i.pd to i8
  store i8 %i.pe, ptr %i.x, align 1, !tbaa !227
  %i.pf = call noundef zeroext i1 @_ZN5boost5beast9unit_test5suite6expectIbA1_cEEbRKT_RKT0_PKci(ptr noundef nonnull align 8 dereferenceable(808) %i.pa, ptr noundef nonnull align 1 dereferenceable(1) %i.x, ptr noundef nonnull align 1 dereferenceable(1) @.str.25, ptr noundef nonnull @.str.44, i32 noundef 730) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %40) #31
  %i.pg = load i64, ptr %i.ok, align 8, !tbaa !42 ; 2 uses
  %.not.i.i363 = icmp eq i64 %i.pg, 0
  %i.ph = load ptr, ptr %i.ny, align 8
  %spec.select.i.i364 = select i1 %.not.i.i363, ptr null, ptr %i.ph
  %i.pi = call i64 @llvm.umin.i64(i64 %i.pg, i64 %i.oz)
  store ptr %spec.select.i.i364, ptr %40, align 8
  %i.pj = getelementptr inbounds nuw i8, ptr %40, i64 8
  store i64 %i.pi, ptr %i.pj, align 8
  call void @_ZN5boost5beast20test_buffer_sequenceINS_4asio12const_bufferEEEvRKT_(ptr noundef nonnull align 8 dereferenceable(16) %40)
  call void @llvm.lifetime.end.p0(ptr nonnull %40) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %39) #31
  br i1 %.not.i341, label %._crit_edge, label %.preheader752.lr.ph

.preheader752.lr.ph:                              ; preds = %_ZN5boost4asio11buffer_copyINS0_14mutable_bufferENS0_12const_bufferEEEmRKT_RKT0_.exit357
  %i.pk = getelementptr inbounds nuw i8, ptr %24, i64 16 ; 4 uses
  %i.pl = getelementptr inbounds nuw i8, ptr %21, i64 16 ; 4 uses
  %i.pm = getelementptr inbounds nuw i8, ptr %42, i64 16 ; 8 uses
  %i.pn = getelementptr inbounds nuw i8, ptr %42, i64 8 ; 3 uses
  %i.po = getelementptr inbounds nuw i8, ptr %41, i64 16 ; 7 uses
  %i.pp = getelementptr inbounds nuw i8, ptr %41, i64 8 ; 2 uses
  %i.pq = getelementptr inbounds nuw i8, ptr %18, i64 16 ; 4 uses
  %i.pr = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 4 uses
  %i.ps = add nuw nsw i64 %spec.select, 3
  %xtraiter1408 = and i64 %spec.select, 3         ; 3 uses
  %i.pt = icmp ult i64 %i.mk, 4
  %unroll_iter1412 = and i64 %spec.select, 12
  %lcmp.mod1410.not = icmp eq i64 %xtraiter1408, 0
  %lcmp.mod1411 = icmp ne i64 %xtraiter1408, 0
  br label %.preheader752

.preheader752:                                    ; preds = %.preheader752.lr.ph, %bb.bn
  %indvars.iv1022 = phi i64 [ 4, %.preheader752.lr.ph ], [ %indvars.iv.next1023, %bb.bn ] ; 3 uses
  %indvars.iv = phi i64 [ 2, %.preheader752.lr.ph ], [ %indvars.iv.next, %bb.bn ] ; 2 uses
  %.050923 = phi i64 [ 1, %.preheader752.lr.ph ], [ %i.pv, %bb.bn ] ; 5 uses
  %.0922 = phi i8 [ 1, %.preheader752.lr.ph ], [ %i.px, %bb.bn ]
  br label %.preheader.preheader

._crit_edge:                                      ; preds = %bb.bn, %_ZN5boost4asio11buffer_copyINS0_14mutable_bufferENS0_12const_bufferEEEmRKT_RKT0_.exit357
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s) #31
  ret void

.loopexit751:                                     ; preds = %bb.bo
  %indvars.iv.next1020 = add nuw nsw i64 %indvars.iv1019, 1 ; 2 uses
  %exitcond1024 = icmp eq i64 %indvars.iv.next1020, %indvars.iv1022
  br i1 %exitcond1024, label %bb.bn, label %.preheader.preheader, !llvm.loop !539

.preheader.preheader:                             ; preds = %.loopexit751, %.preheader752
  %indvars.iv1019 = phi i64 [ 3, %.preheader752 ], [ %indvars.iv.next1020, %.loopexit751 ] ; 2 uses
  %storemerge920 = phi i64 [ 1, %.preheader752 ], [ %i.pu, %.loopexit751 ] ; 3 uses
  %.1919 = phi i8 [ %.0922, %.preheader752 ], [ %i.px, %.loopexit751 ]
  %i.pu = add nuw nsw i64 %storemerge920, 1
  br label %.preheader

bb.bn:                                            ; preds = %.loopexit751
  %i.pv = add nuw nsw i64 %.050923, 1
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %indvars.iv.next1023 = add nuw nsw i64 %indvars.iv1022, 1
  %exitcond1025.not = icmp eq i64 %indvars.iv1022, %i.ps
  br i1 %exitcond1025.not, label %._crit_edge, label %.preheader752, !llvm.loop !540

.preheader:                                       ; preds = %.preheader.preheader, %bb.bo
  %storemerge62917 = phi i64 [ %i.pw, %bb.bo ], [ 1, %.preheader.preheader ] ; 2 uses
  %.2916 = phi i8 [ %i.px, %bb.bo ], [ %.1919, %.preheader.preheader ]
  br label %.lr.ph.i368.preheader

bb.bo:                                            ; preds = %_ZN5boost5beast9unit_test5suite6expectIbA1_cEEbRKT_RKT0_PKci.exit497
  %i.pw = add nuw nsw i64 %storemerge62917, 1     ; 2 uses
  %exitcond1021 = icmp eq i64 %i.pw, %indvars.iv1019
  br i1 %exitcond1021, label %.loopexit751, label %.preheader, !llvm.loop !541

.lr.ph.i368.preheader:                            ; preds = %_ZN5boost5beast9unit_test5suite6expectIbA1_cEEbRKT_RKT0_PKci.exit497, %.preheader
  %.051914 = phi i64 [ 1, %.preheader ], [ %i.zb, %_ZN5boost5beast9unit_test5suite6expectIbA1_cEEbRKT_RKT0_PKci.exit497 ] ; 3 uses
  %.3913 = phi i8 [ %.2916, %.preheader ], [ %i.px, %_ZN5boost5beast9unit_test5suite6expectIbA1_cEEbRKT_RKT0_PKci.exit497 ] ; 3 uses
  %i.px = add i8 %.3913, 1                        ; 4 uses
  br i1 %i.pt, label %.lr.ph.i368.epil.preheader, label %.lr.ph.i368

.lr.ph.i368:                                      ; preds = %.lr.ph.i368.preheader, %.lr.ph.i368
  %.06.i369 = phi i64 [ %i.qj, %.lr.ph.i368 ], [ 0, %.lr.ph.i368.preheader ] ; 5 uses
  %.045.i370 = phi i8 [ %i.qg, %.lr.ph.i368 ], [ %.3913, %.lr.ph.i368.preheader ] ; 5 uses
  %niter1413 = phi i64 [ %niter1413.next.3, %.lr.ph.i368 ], [ 0, %.lr.ph.i368.preheader ]
  %i.py = add i8 %.045.i370, 1
  %i.pz = getelementptr inbounds nuw i8, ptr %i.s, i64 %.06.i369
  store i8 %.045.i370, ptr %i.pz, align 1, !tbaa !41
  %i.qa = add i8 %.045.i370, 2
  %i.qb = getelementptr inbounds nuw i8, ptr %i.s, i64 %.06.i369
  %i.qc = getelementptr inbounds nuw i8, ptr %i.qb, i64 1
  store i8 %i.py, ptr %i.qc, align 1, !tbaa !41
  %i.qd = add i8 %.045.i370, 3
  %i.qe = getelementptr inbounds nuw i8, ptr %i.s, i64 %.06.i369
  %i.qf = getelementptr inbounds nuw i8, ptr %i.qe, i64 2
  store i8 %i.qa, ptr %i.qf, align 1, !tbaa !41
  %i.qg = add i8 %.045.i370, 4                    ; 2 uses
  %i.qh = getelementptr inbounds nuw i8, ptr %i.s, i64 %.06.i369
  %i.qi = getelementptr inbounds nuw i8, ptr %i.qh, i64 3
  store i8 %i.qd, ptr %i.qi, align 1, !tbaa !41
  %i.qj = add nuw nsw i64 %.06.i369, 4            ; 2 uses
  %niter1413.next.3 = add i64 %niter1413, 4       ; 2 uses
  %niter1413.ncmp.3 = icmp eq i64 %niter1413.next.3, %unroll_iter1412
  br i1 %niter1413.ncmp.3, label %_ZZN5boost5beast23test_dynamic_buffer_refINS_4asio21dynamic_string_bufferIcSt11char_traitsIcESaIcEEEEEvT_ENKUlvE_clEv.exit371.unr-lcssa, label %.lr.ph.i368, !llvm.loop !537

_ZZN5boost5beast23test_dynamic_buffer_refINS_4asio21dynamic_string_bufferIcSt11char_traitsIcESaIcEEEEEvT_ENKUlvE_clEv.exit371.unr-lcssa: ; preds = %.lr.ph.i368
  br i1 %lcmp.mod1410.not, label %_ZZN5boost5beast23test_dynamic_buffer_refINS_4asio21dynamic_string_bufferIcSt11char_traitsIcESaIcEEEEEvT_ENKUlvE_clEv.exit371, label %.lr.ph.i368.epil.preheader

.lr.ph.i368.epil.preheader:                       ; preds = %_ZZN5boost5beast23test_dynamic_buffer_refINS_4asio21dynamic_string_bufferIcSt11char_traitsIcESaIcEEEEEvT_ENKUlvE_clEv.exit371.unr-lcssa, %.lr.ph.i368.preheader
  %.06.i369.epil.init = phi i64 [ 0, %.lr.ph.i368.preheader ], [ %i.qj, %_ZZN5boost5beast23test_dynamic_buffer_refINS_4asio21dynamic_string_bufferIcSt11char_traitsIcESaIcEEEEEvT_ENKUlvE_clEv.exit371.unr-lcssa ]
  %.045.i370.epil.init = phi i8 [ %.3913, %.lr.ph.i368.preheader ], [ %i.qg, %_ZZN5boost5beast23test_dynamic_buffer_refINS_4asio21dynamic_string_bufferIcSt11char_traitsIcESaIcEEEEEvT_ENKUlvE_clEv.exit371.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod1411)
  br label %.lr.ph.i368.epil

.lr.ph.i368.epil:                                 ; preds = %.lr.ph.i368.epil, %.lr.ph.i368.epil.preheader
  %.06.i369.epil = phi i64 [ %i.qm, %.lr.ph.i368.epil ], [ %.06.i369.epil.init, %.lr.ph.i368.epil.preheader ] ; 2 uses
  %.045.i370.epil = phi i8 [ %i.qk, %.lr.ph.i368.epil ], [ %.045.i370.epil.init, %.lr.ph.i368.epil.preheader ] ; 2 uses
  %epil.iter1409 = phi i64 [ %epil.iter1409.next, %.lr.ph.i368.epil ], [ 0, %.lr.ph.i368.epil.preheader ]
  %i.qk = add i8 %.045.i370.epil, 1
  %i.ql = getelementptr inbounds nuw i8, ptr %i.s, i64 %.06.i369.epil
  store i8 %.045.i370.epil, ptr %i.ql, align 1, !tbaa !41
  %i.qm = add nuw nsw i64 %.06.i369.epil, 1
  %epil.iter1409.next = add i64 %epil.iter1409, 1 ; 2 uses
  %epil.iter1409.cmp.not = icmp eq i64 %epil.iter1409.next, %xtraiter1408
  br i1 %epil.iter1409.cmp.not, label %_ZZN5boost5beast23test_dynamic_buffer_refINS_4asio21dynamic_string_bufferIcSt11char_traitsIcESaIcEEEEEvT_ENKUlvE_clEv.exit371, label %.lr.ph.i368.epil, !llvm.loop !542

_ZZN5boost5beast23test_dynamic_buffer_refINS_4asio21dynamic_string_bufferIcSt11char_traitsIcESaIcEEEEEvT_ENKUlvE_clEv.exit371: ; preds = %.lr.ph.i368.epil, %_ZZN5boost5beast23test_dynamic_buffer_refINS_4asio21dynamic_string_bufferIcSt11char_traitsIcESaIcEEEEEvT_ENKUlvE_clEv.exit371.unr-lcssa
  %i.qn = load i64, ptr %i.z, align 8, !tbaa !551 ; 3 uses
  %.not.i372 = icmp eq i64 %i.qn, -1
  %.pre1026 = load ptr, ptr %0, align 8, !tbaa !552 ; 8 uses
  %.pre1027 = load i64, ptr %i.au, align 8, !tbaa !553 ; 6 uses
  br i1 %.not.i372, label %bb.bp, label %_ZNK5boost4asio21dynamic_string_bufferIcSt11char_traitsIcESaIcEE4sizeEv.exit375

bb.bp:                                            ; preds = %_ZZN5boost5beast23test_dynamic_buffer_refINS_4asio21dynamic_string_bufferIcSt11char_traitsIcESaIcEEEEEvT_ENKUlvE_clEv.exit371
  %i.qo = getelementptr inbounds nuw i8, ptr %.pre1026, i64 8
  %i.qp = load i64, ptr %i.qo, align 8, !tbaa !42
  %.sroa.speculated.i374 = call i64 @llvm.umin.i64(i64 %.pre1027, i64 %i.qp)
  br label %_ZNK5boost4asio21dynamic_string_bufferIcSt11char_traitsIcESaIcEE4sizeEv.exit375

_ZNK5boost4asio21dynamic_string_bufferIcSt11char_traitsIcESaIcEE4sizeEv.exit375: ; preds = %_ZZN5boost5beast23test_dynamic_buffer_refINS_4asio21dynamic_string_bufferIcSt11char_traitsIcESaIcEEEEEvT_ENKUlvE_clEv.exit371, %bb.bp
  %.0.i373 = phi i64 [ %.sroa.speculated.i374, %bb.bp ], [ %i.qn, %_ZZN5boost5beast23test_dynamic_buffer_refINS_4asio21dynamic_string_bufferIcSt11char_traitsIcESaIcEEEEEvT_ENKUlvE_clEv.exit371 ] ; 5 uses
  %i.qq = getelementptr inbounds nuw i8, ptr %.pre1026, i64 8 ; 9 uses
  br label %bb.bq

bb.bq:                                            ; preds = %_ZNK5boost4asio21dynamic_string_bufferIcSt11char_traitsIcESaIcEE4sizeEv.exit375, %_ZN5boost4asio11buffer_copyINS0_14mutable_bufferENS0_12const_bufferEEEmRKT_RKT0_.exit396
  %.sroa.0533.0909 = phi ptr [ %i.s, %_ZNK5boost4asio21dynamic_string_bufferIcSt11char_traitsIcESaIcEE4sizeEv.exit375 ], [ %i.rf, %_ZN5boost4asio11buffer_copyINS0_14mutable_bufferENS0_12const_bufferEEEmRKT_RKT0_.exit396 ] ; 2 uses
  %.sroa.7.0908 = phi i64 [ %.050923, %_ZNK5boost4asio21dynamic_string_bufferIcSt11char_traitsIcESaIcEE4sizeEv.exit375 ], [ %i.rg, %_ZN5boost4asio11buffer_copyINS0_14mutable_bufferENS0_12const_bufferEEEmRKT_RKT0_.exit396 ] ; 2 uses
  %.sroa.16.0907 = phi i64 [ %i.qn, %_ZNK5boost4asio21dynamic_string_bufferIcSt11char_traitsIcESaIcEE4sizeEv.exit375 ], [ %i.re, %_ZN5boost4asio11buffer_copyINS0_14mutable_bufferENS0_12const_bufferEEEmRKT_RKT0_.exit396 ] ; 4 uses
  %.not.i376 = icmp eq i64 %.sroa.16.0907, -1
  br i1 %.not.i376, label %_ZNK5boost4asio21dynamic_string_bufferIcSt11char_traitsIcESaIcEE4sizeEv.exit8.thread.i391, label %_ZNK5boost4asio21dynamic_string_bufferIcSt11char_traitsIcESaIcEE4sizeEv.exit.thread.i381

_ZNK5boost4asio21dynamic_string_bufferIcSt11char_traitsIcESaIcEE4sizeEv.exit.thread.i381: ; preds = %bb.bq
  %i.qr = sub i64 %.pre1027, %.sroa.16.0907
  %.sroa.speculated528 = call i64 @llvm.umin.i64(i64 %i.qr, i64 %storemerge920)
  %i.qs = icmp ugt i64 %.sroa.16.0907, %.pre1027
  br i1 %i.qs, label %split, label %_ZN5boost4asio21dynamic_string_bufferIcSt11char_traitsIcESaIcEE7prepareEm.exit393

_ZNK5boost4asio21dynamic_string_bufferIcSt11char_traitsIcESaIcEE4sizeEv.exit8.thread.i391: ; preds = %bb.bq
  %i.qt = load i64, ptr %i.qq, align 8, !tbaa !42 ; 2 uses
  %i.qu = call i64 @llvm.usub.sat.i64(i64 %.pre1027, i64 %i.qt)
  %.sroa.speculated528740 = call i64 @llvm.umin.i64(i64 %i.qu, i64 %storemerge920)
  br label %_ZN5boost4asio21dynamic_string_bufferIcSt11char_traitsIcESaIcEE7prepareEm.exit393

split:                                            ; preds = %_ZNK5boost4asio21dynamic_string_bufferIcSt11char_traitsIcESaIcEE4sizeEv.exit.thread.i381
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #31
  call void @_ZNSt12length_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %25, ptr noundef nonnull @.str.47)
  invoke void @_ZN5boost15throw_exceptionISt12length_errorEEvRKT_(ptr noundef nonnull align 8 dereferenceable(16) %25) #33
          to label %bb.br unwind label %bb.bs

bb.br:                                            ; preds = %split
  unreachable

bb.bs:                                            ; preds = %split
  %i.qv = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12length_errorD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %25) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #31
  br label %common.resume

_ZN5boost4asio21dynamic_string_bufferIcSt11char_traitsIcESaIcEE7prepareEm.exit393: ; preds = %_ZNK5boost4asio21dynamic_string_bufferIcSt11char_traitsIcESaIcEE4sizeEv.exit8.thread.i391, %_ZNK5boost4asio21dynamic_string_bufferIcSt11char_traitsIcESaIcEE4sizeEv.exit.thread.i381
  %.sroa.speculated528742 = phi i64 [ %.sroa.speculated528, %_ZNK5boost4asio21dynamic_string_bufferIcSt11char_traitsIcESaIcEE4sizeEv.exit.thread.i381 ], [ %.sroa.speculated528740, %_ZNK5boost4asio21dynamic_string_bufferIcSt11char_traitsIcESaIcEE4sizeEv.exit8.thread.i391 ] ; 2 uses
  %.sroa.16.2 = phi i64 [ %.sroa.16.0907, %_ZNK5boost4asio21dynamic_string_bufferIcSt11char_traitsIcESaIcEE4sizeEv.exit.thread.i381 ], [ %i.qt, %_ZNK5boost4asio21dynamic_string_bufferIcSt11char_traitsIcESaIcEE4sizeEv.exit8.thread.i391 ] ; 4 uses
  %i.qw = add i64 %.sroa.16.2, %.sroa.speculated528742
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEmc(ptr noundef nonnull align 8 dereferenceable(32) %.pre1026, i64 noundef %i.qw, i8 noundef signext 0)
  %i.qx = load i64, ptr %i.qq, align 8, !tbaa !42 ; 3 uses
  %spec.select.i10.i387 = call i64 @llvm.umin.i64(i64 %.sroa.16.2, i64 %i.qx) ; 2 uses
  %i.qy = sub nuw i64 %i.qx, %spec.select.i10.i387
  %spec.select.i13.i389 = call i64 @llvm.umin.i64(i64 %i.qy, i64 %.sroa.speculated528742) ; 2 uses
  %.sroa.speculated = call i64 @llvm.umin.i64(i64 %.sroa.7.0908, i64 %storemerge62917)
  %i.qz = call i64 @llvm.umin.i64(i64 %spec.select.i13.i389, i64 %.sroa.speculated) ; 4 uses
  %.not.i.i.i395 = icmp eq i64 %spec.select.i13.i389, 0
  br i1 %.not.i.i.i395, label %_ZN5boost4asio11buffer_copyINS0_14mutable_bufferENS0_12const_bufferEEEmRKT_RKT0_.exit396, label %bb.bt

bb.bt:                                            ; preds = %_ZN5boost4asio21dynamic_string_bufferIcSt11char_traitsIcESaIcEE7prepareEm.exit393
  %i.ra = load ptr, ptr %.pre1026, align 8
  %i.rb = getelementptr inbounds nuw i8, ptr %i.ra, i64 %spec.select.i10.i387
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.rb, ptr align 1 %.sroa.0533.0909, i64 %i.qz, i1 false)
  %.pre1028 = load i64, ptr %i.qq, align 8, !tbaa !42
  br label %_ZN5boost4asio11buffer_copyINS0_14mutable_bufferENS0_12const_bufferEEEmRKT_RKT0_.exit396

_ZN5boost4asio11buffer_copyINS0_14mutable_bufferENS0_12const_bufferEEEmRKT_RKT0_.exit396: ; preds = %_ZN5boost4asio21dynamic_string_bufferIcSt11char_traitsIcESaIcEE7prepareEm.exit393, %bb.bt
  %i.rc = phi i64 [ %i.qx, %_ZN5boost4asio21dynamic_string_bufferIcSt11char_traitsIcESaIcEE7prepareEm.exit393 ], [ %.pre1028, %bb.bt ]
  %i.rd = sub i64 %i.rc, %.sroa.16.2
  %.sroa.speculated.i397 = call i64 @llvm.umin.i64(i64 %i.rd, i64 %i.qz)
  %i.re = add i64 %.sroa.speculated.i397, %.sroa.16.2 ; 7 uses
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEmc(ptr noundef nonnull align 8 dereferenceable(32) %.pre1026, i64 noundef %i.re, i8 noundef signext 0)
  %i.rf = getelementptr inbounds nuw i8, ptr %.sroa.0533.0909, i64 %i.qz
  %i.rg = sub nuw i64 %.sroa.7.0908, %i.qz        ; 2 uses
  %.not65 = icmp eq i64 %i.rg, 0
  br i1 %.not65, label %bb.bu, label %bb.bq, !llvm.loop !543

bb.bu:                                            ; preds = %_ZN5boost4asio11buffer_copyINS0_14mutable_bufferENS0_12const_bufferEEEmRKT_RKT0_.exit396
  %i.rh = load ptr, ptr @_ZZN5boost5beast9unit_test5suite12p_this_suiteEvE3pts, align 8, !tbaa !150 ; 7 uses
  %.not.i399 = icmp eq i64 %i.re, -1
  br i1 %.not.i399, label %bb.bv, label %_ZNK5boost4asio21dynamic_string_bufferIcSt11char_traitsIcESaIcEE4sizeEv.exit402

bb.bv:                                            ; preds = %bb.bu
  %i.ri = load i64, ptr %i.qq, align 8, !tbaa !42
  %.sroa.speculated.i401 = call i64 @llvm.umin.i64(i64 %.pre1027, i64 %i.ri)
  br label %_ZNK5boost4asio21dynamic_string_bufferIcSt11char_traitsIcESaIcEE4sizeEv.exit402

_ZNK5boost4asio21dynamic_string_bufferIcSt11char_traitsIcESaIcEE4sizeEv.exit402: ; preds = %bb.bu, %bb.bv
  %.0.i400 = phi i64 [ %.sroa.speculated.i401, %bb.bv ], [ %i.re, %bb.bu ]
  %i.rj = add i64 %.0.i373, %.050923              ; 2 uses
  %i.rk = icmp eq i64 %.0.i400, %i.rj
  br i1 %i.rk, label %bb.bw, label %bb.ca

bb.bw:                                            ; preds = %_ZNK5boost4asio21dynamic_string_bufferIcSt11char_traitsIcESaIcEE4sizeEv.exit402
  %i.rl = getelementptr inbounds nuw i8, ptr %i.rh, i64 8
  %i.rm = load i8, ptr %i.rl, align 8, !tbaa !167, !range !146, !noundef !48
  %i.rn = trunc nuw i8 %i.rm to i1
  %i.ro = getelementptr inbounds nuw i8, ptr %i.rh, i64 9
  %i.rp = load i8, ptr %i.ro, align 1, !range !146
  %i.rq = trunc nuw i8 %i.rp to i1
  %or.cond.i.i.i = select i1 %i.rn, i1 %i.rq, i1 false
  br i1 %or.cond.i.i.i, label %bb.bx, label %_ZN5boost5beast9unit_test5suite4passIvEEvv.exit.i

bb.bx:                                            ; preds = %bb.bw
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #31
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5boost5beast9unit_test5suite15abort_exceptionE, i64 16), ptr %22, align 8, !tbaa !114
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #31
  store ptr @.str.36, ptr %23, align 8, !tbaa !57
  %i.rr = getelementptr inbounds nuw i8, ptr %23, i64 8
  store ptr @.str.37, ptr %i.rr, align 8, !tbaa !58
  %i.rs = getelementptr inbounds nuw i8, ptr %23, i64 16
  store i32 592, ptr %i.rs, align 8, !tbaa !59
  %i.rt = getelementptr inbounds nuw i8, ptr %23, i64 20
  store i32 48, ptr %i.rt, align 4, !tbaa !60
  invoke void @_ZN5boost15throw_exceptionINS_5beast9unit_test5suite15abort_exceptionEEEvRKT_RKNS_15source_locationE(ptr noundef nonnull align 8 dereferenceable(8) %22, ptr noundef nonnull align 8 dereferenceable(24) %23) #33
          to label %bb.by unwind label %bb.bz

bb.by:                                            ; preds = %bb.bx
  unreachable

bb.bz:                                            ; preds = %bb.bx
  %i.ru = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #31
  call void @_ZNSt9exceptionD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %22) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #31
  br label %common.resume

_ZN5boost5beast9unit_test5suite4passIvEEvv.exit.i: ; preds = %bb.bw
  %i.rv = getelementptr inbounds nuw i8, ptr %i.rh, i64 16
  %i.rw = load ptr, ptr %i.rv, align 8, !tbaa !169
  call void @_ZN5boost5beast9unit_test6runner4passIvEEvv(ptr noundef nonnull align 8 dereferenceable(88) %i.rw)
  br label %_ZN5boost5beast9unit_test5suite6expectIbA1_cEEbRKT_RKT0_PKci.exit

end_hunk_0
begin_hunk_1_@_ZN5boost5beast23test_dynamic_buffer_refINS_4asio21dynamic_vector_bufferIhSaIhEEEEEvT_:bb.a
.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.i.preheader.new
  %.06.i = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %i.xo, %.lr.ph.i ] ; 10 uses
  %niter = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %niter.next.7, %.lr.ph.i ]
  %indvars962 = trunc i64 %.06.i to i8
  %i.xa = or disjoint i64 %.06.i, 1               ; 2 uses
  %i.xb = getelementptr inbounds nuw i8, ptr %i.s, i64 %.06.i
  store i8 %indvars962, ptr %i.xb, align 1, !tbaa !41
  %indvars962.1 = trunc i64 %i.xa to i8
  %i.xc = or disjoint i64 %.06.i, 2               ; 2 uses
  %i.xd = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.xa
  store i8 %indvars962.1, ptr %i.xd, align 1, !tbaa !41
  %indvars962.2 = trunc i64 %i.xc to i8
  %i.xe = or disjoint i64 %.06.i, 3               ; 2 uses
  %i.xf = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.xc
  store i8 %indvars962.2, ptr %i.xf, align 1, !tbaa !41
  %indvars962.3 = trunc i64 %i.xe to i8
  %i.xg = or disjoint i64 %.06.i, 4               ; 2 uses
  %i.xh = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.xe
  store i8 %indvars962.3, ptr %i.xh, align 1, !tbaa !41
  %indvars962.4 = trunc i64 %i.xg to i8
  %i.xi = or disjoint i64 %.06.i, 5               ; 2 uses
  %i.xj = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.xg
  store i8 %indvars962.4, ptr %i.xj, align 1, !tbaa !41
  %indvars962.5 = trunc i64 %i.xi to i8
  %i.xk = or disjoint i64 %.06.i, 6               ; 2 uses
  %i.xl = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.xi
  store i8 %indvars962.5, ptr %i.xl, align 1, !tbaa !41
  %indvars962.6 = trunc i64 %i.xk to i8
  %i.xm = or disjoint i64 %.06.i, 7               ; 2 uses
  %i.xn = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.xk
  store i8 %indvars962.6, ptr %i.xn, align 1, !tbaa !41
  %indvars962.7 = trunc i64 %i.xm to i8
  %i.xo = add nuw nsw i64 %.06.i, 8               ; 2 uses
  %i.xp = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.xm
  store i8 %indvars962.7, ptr %i.xp, align 1, !tbaa !41
  %niter.next.7 = add i64 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %_ZZN5boost5beast23test_dynamic_buffer_refINS_4asio21dynamic_vector_bufferIhSaIhEEEEEvT_ENKUlvE_clEv.exit.loopexit.unr-lcssa, label %.lr.ph.i, !llvm.loop !574

_ZZN5boost5beast23test_dynamic_buffer_refINS_4asio21dynamic_vector_bufferIhSaIhEEEEEvT_ENKUlvE_clEv.exit.loopexit.unr-lcssa: ; preds = %.lr.ph.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZZN5boost5beast23test_dynamic_buffer_refINS_4asio21dynamic_vector_bufferIhSaIhEEEEEvT_ENKUlvE_clEv.exit, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %_ZZN5boost5beast23test_dynamic_buffer_refINS_4asio21dynamic_vector_bufferIhSaIhEEEEEvT_ENKUlvE_clEv.exit.loopexit.unr-lcssa, %.lr.ph.i.preheader
  %.06.i.epil.init = phi i64 [ 0, %.lr.ph.i.preheader ], [ %i.xo, %_ZZN5boost5beast23test_dynamic_buffer_refINS_4asio21dynamic_vector_bufferIhSaIhEEEEEvT_ENKUlvE_clEv.exit.loopexit.unr-lcssa ]
  %lcmp.mod1477 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod1477)
  br label %.lr.ph.i.epil

.lr.ph.i.epil:                                    ; preds = %.lr.ph.i.epil, %.lr.ph.i.epil.preheader
  %.06.i.epil = phi i64 [ %i.xq, %.lr.ph.i.epil ], [ %.06.i.epil.init, %.lr.ph.i.epil.preheader ] ; 3 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i.epil ], [ 0, %.lr.ph.i.epil.preheader ]
  %indvars962.epil = trunc i64 %.06.i.epil to i8
  %i.xq = add nuw nsw i64 %.06.i.epil, 1
  %i.xr = getelementptr inbounds nuw i8, ptr %i.s, i64 %.06.i.epil
  store i8 %indvars962.epil, ptr %i.xr, align 1, !tbaa !41
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_ZZN5boost5beast23test_dynamic_buffer_refINS_4asio21dynamic_vector_bufferIhSaIhEEEEEvT_ENKUlvE_clEv.exit, label %.lr.ph.i.epil, !llvm.loop !575

_ZZN5boost5beast23test_dynamic_buffer_refINS_4asio21dynamic_vector_bufferIhSaIhEEEEEvT_ENKUlvE_clEv.exit: ; preds = %_ZZN5boost5beast23test_dynamic_buffer_refINS_4asio21dynamic_vector_bufferIhSaIhEEEEEvT_ENKUlvE_clEv.exit.loopexit.unr-lcssa, %.lr.ph.i.epil, %_ZNK5boost4asio21dynamic_vector_bufferIhSaIhEE4sizeEv.exit340
  call void @llvm.lifetime.start.p0(ptr nonnull %39) #31
  %i.xs = load ptr, ptr %0, align 8, !tbaa !250, !nonnull !48, !align !49
  store ptr %i.xs, ptr %39, align 8, !tbaa !172
  %i.xt = getelementptr inbounds nuw i8, ptr %39, i64 8 ; 5 uses
  %i.xu = load <2 x i64>, ptr %i.z, align 8, !tbaa !38
  store <2 x i64> %i.xu, ptr %i.xt, align 8, !tbaa !38
  call void @llvm.lifetime.start.p0(ptr nonnull %40) #31
  %i.xv = call { ptr, i64 } @_ZN5boost4asio21dynamic_vector_bufferIhSaIhEE7prepareEm(ptr noundef nonnull align 8 dereferenceable(24) %39, i64 noundef %spec.select) ; 2 uses
  %i.xw = extractvalue { ptr, i64 } %i.xv, 0
  store ptr %i.xw, ptr %40, align 8
  %i.xx = getelementptr inbounds nuw i8, ptr %40, i64 8 ; 2 uses
  %i.xy = extractvalue { ptr, i64 } %i.xv, 1      ; 2 uses
  store i64 %i.xy, ptr %i.xx, align 8
  %i.xz = load ptr, ptr @_ZZN5boost5beast9unit_test5suite12p_this_suiteEvE3pts, align 8, !tbaa !150
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w) #31
  %i.ya = icmp eq i64 %i.xy, %spec.select
  %i.yb = zext i1 %i.ya to i8
  store i8 %i.yb, ptr %i.w, align 1, !tbaa !227
  %i.yc = call noundef zeroext i1 @_ZN5boost5beast9unit_test5suite6expectIbA1_cEEbRKT_RKT0_PKci(ptr noundef nonnull align 8 dereferenceable(808) %i.xz, ptr noundef nonnull align 1 dereferenceable(1) %i.w, ptr noundef nonnull align 1 dereferenceable(1) @.str.25, ptr noundef nonnull @.str.44, i32 noundef 725) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w) #31
  call void @_ZN5boost5beast20test_buffer_sequenceINS_4asio14mutable_bufferEEEvRKT_(ptr noundef nonnull align 8 dereferenceable(16) %40)
  %i.yd = load i64, ptr %i.xx, align 8, !tbaa !111
  %i.ye = call i64 @llvm.umin.i64(i64 %i.yd, i64 %spec.select) ; 3 uses
  %.not.i.i.i346 = icmp eq i64 %i.ye, 0
  br i1 %.not.i.i.i346, label %_ZN5boost4asio11buffer_copyINS0_14mutable_bufferENS0_12const_bufferEEEmRKT_RKT0_.exit347, label %bb.cs

bb.cs:                                            ; preds = %_ZZN5boost5beast23test_dynamic_buffer_refINS_4asio21dynamic_vector_bufferIhSaIhEEEEEvT_ENKUlvE_clEv.exit
  %i.yf = load ptr, ptr %40, align 8, !tbaa !110
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.yf, ptr nonnull align 1 %i.s, i64 %i.ye, i1 false)
  br label %_ZN5boost4asio11buffer_copyINS0_14mutable_bufferENS0_12const_bufferEEEmRKT_RKT0_.exit347

_ZN5boost4asio11buffer_copyINS0_14mutable_bufferENS0_12const_bufferEEEmRKT_RKT0_.exit347: ; preds = %_ZZN5boost5beast23test_dynamic_buffer_refINS_4asio21dynamic_vector_bufferIhSaIhEEEEEvT_ENKUlvE_clEv.exit, %bb.cs
  %i.yg = load ptr, ptr %39, align 8, !tbaa !250, !nonnull !48, !align !49 ; 3 uses
  %i.yh = getelementptr inbounds nuw i8, ptr %i.yg, i64 8 ; 2 uses
  %i.yi = load ptr, ptr %i.yh, align 8, !tbaa !251 ; 4 uses
  %i.yj = load ptr, ptr %i.yg, align 8, !tbaa !174 ; 2 uses
  %i.yk = ptrtoint ptr %i.yi to i64
  %i.yl = ptrtoint ptr %i.yj to i64               ; 4 uses
  %i.ym = sub i64 %i.yk, %i.yl                    ; 4 uses
  %i.yn = load i64, ptr %i.xt, align 8, !tbaa !249 ; 2 uses
  %i.yo = sub i64 %i.ym, %i.yn
  %.sroa.speculated.i348 = call i64 @llvm.umin.i64(i64 %i.yo, i64 %i.ye)
  %i.yp = add i64 %.sroa.speculated.i348, %i.yn   ; 8 uses
  store i64 %i.yp, ptr %i.xt, align 8, !tbaa !249
  %i.yq = icmp ugt i64 %i.yp, %i.ym
  br i1 %i.yq, label %bb.ct, label %bb.cu

bb.ct:                                            ; preds = %_ZN5boost4asio11buffer_copyINS0_14mutable_bufferENS0_12const_bufferEEEmRKT_RKT0_.exit347
  %i.yr = sub nuw i64 %i.yp, %i.ym
  call void @_ZNSt6vectorIhSaIhEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.yg, i64 noundef %i.yr)
  %.pre976 = load ptr, ptr %39, align 8, !tbaa !250 ; 2 uses
  %.pre977 = load i64, ptr %i.xt, align 8, !tbaa !249
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre976, i64 8
  %.pre978 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !251
  %.pre979 = load ptr, ptr %.pre976, align 8, !tbaa !174
  %.pre991 = ptrtoint ptr %.pre979 to i64
  br label %_ZN5boost4asio21dynamic_vector_bufferIhSaIhEE6commitEm.exit351

bb.cu:                                            ; preds = %_ZN5boost4asio11buffer_copyINS0_14mutable_bufferENS0_12const_bufferEEEmRKT_RKT0_.exit347
  %i.ys = icmp ult i64 %i.yp, %i.ym
  br i1 %i.ys, label %bb.cv, label %_ZN5boost4asio21dynamic_vector_bufferIhSaIhEE6commitEm.exit351

bb.cv:                                            ; preds = %bb.cu
  %i.yt = getelementptr inbounds nuw i8, ptr %i.yj, i64 %i.yp ; 3 uses
  %.not.i.i.i349 = icmp eq ptr %i.yi, %i.yt
  br i1 %.not.i.i.i349, label %_ZN5boost4asio21dynamic_vector_bufferIhSaIhEE6commitEm.exit351, label %_ZSt8_DestroyIPhhEvT_S1_RSaIT0_E.exit.i.i.i350

_ZSt8_DestroyIPhhEvT_S1_RSaIT0_E.exit.i.i.i350:   ; preds = %bb.cv
  store ptr %i.yt, ptr %i.yh, align 8, !tbaa !251
  br label %_ZN5boost4asio21dynamic_vector_bufferIhSaIhEE6commitEm.exit351

_ZN5boost4asio21dynamic_vector_bufferIhSaIhEE6commitEm.exit351: ; preds = %bb.ct, %bb.cu, %bb.cv, %_ZSt8_DestroyIPhhEvT_S1_RSaIT0_E.exit.i.i.i350
  %.pre-phi = phi i64 [ %.pre991, %bb.ct ], [ %i.yl, %bb.cu ], [ %i.yl, %bb.cv ], [ %i.yl, %_ZSt8_DestroyIPhhEvT_S1_RSaIT0_E.exit.i.i.i350 ]
  %i.yu = phi ptr [ %.pre978, %bb.ct ], [ %i.yi, %bb.cu ], [ %i.yi, %bb.cv ], [ %i.yt, %_ZSt8_DestroyIPhhEvT_S1_RSaIT0_E.exit.i.i.i350 ]
  %i.yv = phi i64 [ %.pre977, %bb.ct ], [ %i.yp, %bb.cu ], [ %i.yp, %bb.cv ], [ %i.yp, %_ZSt8_DestroyIPhhEvT_S1_RSaIT0_E.exit.i.i.i350 ]
  %i.yw = load ptr, ptr @_ZZN5boost5beast9unit_test5suite12p_this_suiteEvE3pts, align 8, !tbaa !150
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x) #31
  %i.yx = ptrtoint ptr %i.yu to i64
  %i.yy = sub i64 %i.yx, %.pre-phi
  %i.yz = call i64 @llvm.umin.i64(i64 %i.yy, i64 %i.yv)
  %i.za = icmp eq i64 %i.yz, %spec.select
  %i.zb = zext i1 %i.za to i8
  store i8 %i.zb, ptr %i.x, align 1, !tbaa !227
  %i.zc = call noundef zeroext i1 @_ZN5boost5beast9unit_test5suite6expectIbA1_cEEbRKT_RKT0_PKci(ptr noundef nonnull align 8 dereferenceable(808) %i.yw, ptr noundef nonnull align 1 dereferenceable(1) %i.x, ptr noundef nonnull align 1 dereferenceable(1) @.str.25, ptr noundef nonnull @.str.44, i32 noundef 730) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %41) #31
  %i.zd = load ptr, ptr %39, align 8, !tbaa !250, !nonnull !48, !align !49 ; 2 uses
  %i.ze = load i64, ptr %i.xt, align 8, !tbaa !249
  %i.zf = getelementptr inbounds nuw i8, ptr %i.zd, i64 8
  %i.zg = load ptr, ptr %i.zf, align 8, !tbaa !251 ; 2 uses
  %i.zh = load ptr, ptr %i.zd, align 8, !tbaa !174 ; 3 uses
  %i.zi = ptrtoint ptr %i.zg to i64
  %i.zj = ptrtoint ptr %i.zh to i64
  %i.zk = sub i64 %i.zi, %i.zj
  %.not.i.i356 = icmp eq ptr %i.zg, %i.zh
  %spec.select.i.i357 = select i1 %.not.i.i356, ptr null, ptr %i.zh
  %i.zl = call i64 @llvm.umin.i64(i64 %i.zk, i64 %i.ze)
  store ptr %spec.select.i.i357, ptr %41, align 8
  %i.zm = getelementptr inbounds nuw i8, ptr %41, i64 8
  store i64 %i.zl, ptr %i.zm, align 8
  call void @_ZN5boost5beast20test_buffer_sequenceINS_4asio12const_bufferEEEvRKT_(ptr noundef nonnull align 8 dereferenceable(16) %41)
  call void @llvm.lifetime.end.p0(ptr nonnull %41) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %40) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %39) #31
  br i1 %.not.i345, label %._crit_edge, label %.preheader682.lr.ph

.preheader682.lr.ph:                              ; preds = %_ZN5boost4asio21dynamic_vector_bufferIhSaIhEE6commitEm.exit351
  %i.zn = getelementptr inbounds nuw i8, ptr %24, i64 16 ; 4 uses
  %i.zo = getelementptr inbounds nuw i8, ptr %21, i64 16 ; 4 uses
  %i.zp = getelementptr inbounds nuw i8, ptr %43, i64 16 ; 8 uses
  %i.zq = getelementptr inbounds nuw i8, ptr %43, i64 8 ; 3 uses
  %i.zr = getelementptr inbounds nuw i8, ptr %42, i64 16 ; 7 uses
  %i.zs = getelementptr inbounds nuw i8, ptr %42, i64 8 ; 2 uses
  %i.zt = getelementptr inbounds nuw i8, ptr %18, i64 16 ; 4 uses
  %i.zu = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 4 uses
  %i.zv = add nuw nsw i64 %spec.select, 3
  %xtraiter1478 = and i64 %spec.select, 3         ; 3 uses
  %i.zw = icmp ult i64 %i.vw, 4
  %unroll_iter1482 = and i64 %spec.select, 12
  %lcmp.mod1480.not = icmp eq i64 %xtraiter1478, 0
  %lcmp.mod1481 = icmp ne i64 %xtraiter1478, 0
  br label %.preheader682

.preheader682:                                    ; preds = %.preheader682.lr.ph, %bb.cw
  %indvars.iv968 = phi i64 [ 4, %.preheader682.lr.ph ], [ %indvars.iv.next969, %bb.cw ] ; 3 uses
  %indvars.iv = phi i64 [ 2, %.preheader682.lr.ph ], [ %indvars.iv.next, %bb.cw ] ; 2 uses
  %.050865 = phi i64 [ 1, %.preheader682.lr.ph ], [ %i.zy, %bb.cw ] ; 5 uses
  %.0864 = phi i8 [ 1, %.preheader682.lr.ph ], [ %i.aaa, %bb.cw ]
  br label %.preheader.preheader

._crit_edge:                                      ; preds = %bb.cw, %_ZN5boost4asio21dynamic_vector_bufferIhSaIhEE6commitEm.exit351
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s) #31
  ret void

.loopexit681:                                     ; preds = %bb.cx
  %indvars.iv.next966 = add nuw nsw i64 %indvars.iv965, 1 ; 2 uses
  %exitcond970 = icmp eq i64 %indvars.iv.next966, %indvars.iv968
  br i1 %exitcond970, label %bb.cw, label %.preheader.preheader, !llvm.loop !576

.preheader.preheader:                             ; preds = %.loopexit681, %.preheader682
  %indvars.iv965 = phi i64 [ 3, %.preheader682 ], [ %indvars.iv.next966, %.loopexit681 ] ; 2 uses
  %storemerge862 = phi i64 [ 1, %.preheader682 ], [ %i.zx, %.loopexit681 ] ; 3 uses
  %.1861 = phi i8 [ %.0864, %.preheader682 ], [ %i.aaa, %.loopexit681 ]
  %i.zx = add nuw nsw i64 %storemerge862, 1
  br label %.preheader

bb.cw:                                            ; preds = %.loopexit681
  %i.zy = add nuw nsw i64 %.050865, 1
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %indvars.iv.next969 = add nuw nsw i64 %indvars.iv968, 1
  %exitcond971.not = icmp eq i64 %indvars.iv968, %i.zv
  br i1 %exitcond971.not, label %._crit_edge, label %.preheader682, !llvm.loop !577

.preheader:                                       ; preds = %.preheader.preheader, %bb.cx
  %storemerge62859 = phi i64 [ %i.zz, %bb.cx ], [ 1, %.preheader.preheader ] ; 2 uses
  %.2858 = phi i8 [ %i.aaa, %bb.cx ], [ %.1861, %.preheader.preheader ]
  br label %.lr.ph.i361.preheader

bb.cx:                                            ; preds = %_ZN5boost5beast9unit_test5suite6expectIbA1_cEEbRKT_RKT0_PKci.exit505
  %i.zz = add nuw nsw i64 %storemerge62859, 1     ; 2 uses
  %exitcond967 = icmp eq i64 %i.zz, %indvars.iv965
  br i1 %exitcond967, label %.loopexit681, label %.preheader, !llvm.loop !578

.lr.ph.i361.preheader:                            ; preds = %_ZN5boost5beast9unit_test5suite6expectIbA1_cEEbRKT_RKT0_PKci.exit505, %.preheader
  %.051856 = phi i64 [ 1, %.preheader ], [ %i.anh, %_ZN5boost5beast9unit_test5suite6expectIbA1_cEEbRKT_RKT0_PKci.exit505 ] ; 3 uses
  %.3855 = phi i8 [ %.2858, %.preheader ], [ %i.aaa, %_ZN5boost5beast9unit_test5suite6expectIbA1_cEEbRKT_RKT0_PKci.exit505 ] ; 3 uses
  %i.aaa = add i8 %.3855, 1                       ; 4 uses
  br i1 %i.zw, label %.lr.ph.i361.epil.preheader, label %.lr.ph.i361

.lr.ph.i361:                                      ; preds = %.lr.ph.i361.preheader, %.lr.ph.i361
  %.06.i362 = phi i64 [ %i.aam, %.lr.ph.i361 ], [ 0, %.lr.ph.i361.preheader ] ; 5 uses
  %.045.i363 = phi i8 [ %i.aaj, %.lr.ph.i361 ], [ %.3855, %.lr.ph.i361.preheader ] ; 5 uses
  %niter1483 = phi i64 [ %niter1483.next.3, %.lr.ph.i361 ], [ 0, %.lr.ph.i361.preheader ]
  %i.aab = add i8 %.045.i363, 1
  %i.aac = getelementptr inbounds nuw i8, ptr %i.s, i64 %.06.i362
  store i8 %.045.i363, ptr %i.aac, align 1, !tbaa !41
  %i.aad = add i8 %.045.i363, 2
  %i.aae = getelementptr inbounds nuw i8, ptr %i.s, i64 %.06.i362
  %i.aaf = getelementptr inbounds nuw i8, ptr %i.aae, i64 1
  store i8 %i.aab, ptr %i.aaf, align 1, !tbaa !41
  %i.aag = add i8 %.045.i363, 3
  %i.aah = getelementptr inbounds nuw i8, ptr %i.s, i64 %.06.i362
  %i.aai = getelementptr inbounds nuw i8, ptr %i.aah, i64 2
  store i8 %i.aad, ptr %i.aai, align 1, !tbaa !41
  %i.aaj = add i8 %.045.i363, 4                   ; 2 uses
  %i.aak = getelementptr inbounds nuw i8, ptr %i.s, i64 %.06.i362
  %i.aal = getelementptr inbounds nuw i8, ptr %i.aak, i64 3
  store i8 %i.aag, ptr %i.aal, align 1, !tbaa !41
  %i.aam = add nuw nsw i64 %.06.i362, 4           ; 2 uses
  %niter1483.next.3 = add i64 %niter1483, 4       ; 2 uses
  %niter1483.ncmp.3 = icmp eq i64 %niter1483.next.3, %unroll_iter1482
  br i1 %niter1483.ncmp.3, label %_ZZN5boost5beast23test_dynamic_buffer_refINS_4asio21dynamic_vector_bufferIhSaIhEEEEEvT_ENKUlvE_clEv.exit364.unr-lcssa, label %.lr.ph.i361, !llvm.loop !574

_ZZN5boost5beast23test_dynamic_buffer_refINS_4asio21dynamic_vector_bufferIhSaIhEEEEEvT_ENKUlvE_clEv.exit364.unr-lcssa: ; preds = %.lr.ph.i361
  br i1 %lcmp.mod1480.not, label %_ZZN5boost5beast23test_dynamic_buffer_refINS_4asio21dynamic_vector_bufferIhSaIhEEEEEvT_ENKUlvE_clEv.exit364, label %.lr.ph.i361.epil.preheader

.lr.ph.i361.epil.preheader:                       ; preds = %_ZZN5boost5beast23test_dynamic_buffer_refINS_4asio21dynamic_vector_bufferIhSaIhEEEEEvT_ENKUlvE_clEv.exit364.unr-lcssa, %.lr.ph.i361.preheader
  %.06.i362.epil.init = phi i64 [ 0, %.lr.ph.i361.preheader ], [ %i.aam, %_ZZN5boost5beast23test_dynamic_buffer_refINS_4asio21dynamic_vector_bufferIhSaIhEEEEEvT_ENKUlvE_clEv.exit364.unr-lcssa ]
  %.045.i363.epil.init = phi i8 [ %.3855, %.lr.ph.i361.preheader ], [ %i.aaj, %_ZZN5boost5beast23test_dynamic_buffer_refINS_4asio21dynamic_vector_bufferIhSaIhEEEEEvT_ENKUlvE_clEv.exit364.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod1481)
  br label %.lr.ph.i361.epil

.lr.ph.i361.epil:                                 ; preds = %.lr.ph.i361.epil, %.lr.ph.i361.epil.preheader
  %.06.i362.epil = phi i64 [ %i.aap, %.lr.ph.i361.epil ], [ %.06.i362.epil.init, %.lr.ph.i361.epil.preheader ] ; 2 uses
  %.045.i363.epil = phi i8 [ %i.aan, %.lr.ph.i361.epil ], [ %.045.i363.epil.init, %.lr.ph.i361.epil.preheader ] ; 2 uses
  %epil.iter1479 = phi i64 [ %epil.iter1479.next, %.lr.ph.i361.epil ], [ 0, %.lr.ph.i361.epil.preheader ]
  %i.aan = add i8 %.045.i363.epil, 1
  %i.aao = getelementptr inbounds nuw i8, ptr %i.s, i64 %.06.i362.epil
  store i8 %.045.i363.epil, ptr %i.aao, align 1, !tbaa !41
  %i.aap = add nuw nsw i64 %.06.i362.epil, 1
  %epil.iter1479.next = add i64 %epil.iter1479, 1 ; 2 uses
  %epil.iter1479.cmp.not = icmp eq i64 %epil.iter1479.next, %xtraiter1478
  br i1 %epil.iter1479.cmp.not, label %_ZZN5boost5beast23test_dynamic_buffer_refINS_4asio21dynamic_vector_bufferIhSaIhEEEEEvT_ENKUlvE_clEv.exit364, label %.lr.ph.i361.epil, !llvm.loop !579

_ZZN5boost5beast23test_dynamic_buffer_refINS_4asio21dynamic_vector_bufferIhSaIhEEEEEvT_ENKUlvE_clEv.exit364: ; preds = %.lr.ph.i361.epil, %_ZZN5boost5beast23test_dynamic_buffer_refINS_4asio21dynamic_vector_bufferIhSaIhEEEEEvT_ENKUlvE_clEv.exit364.unr-lcssa
  %i.aaq = load i64, ptr %i.z, align 8, !tbaa !249 ; 3 uses
  %.not.i365 = icmp eq i64 %i.aaq, -1
  %.pre980 = load ptr, ptr %0, align 8, !tbaa !250 ; 14 uses
  %.pre981 = load i64, ptr %i.bd, align 8, !tbaa !252 ; 6 uses
  br i1 %.not.i365, label %bb.cy, label %_ZNK5boost4asio21dynamic_vector_bufferIhSaIhEE4sizeEv.exit368

bb.cy:                                            ; preds = %_ZZN5boost5beast23test_dynamic_buffer_refINS_4asio21dynamic_vector_bufferIhSaIhEEEEEvT_ENKUlvE_clEv.exit364
  %i.aar = getelementptr inbounds nuw i8, ptr %.pre980, i64 8
  %i.aas = load ptr, ptr %i.aar, align 8, !tbaa !251
  %i.aat = load ptr, ptr %.pre980, align 8, !tbaa !174
  %i.aau = ptrtoint ptr %i.aas to i64
  %i.aav = ptrtoint ptr %i.aat to i64
  %i.aaw = sub i64 %i.aau, %i.aav
  %.sroa.speculated.i367 = call i64 @llvm.umin.i64(i64 %.pre981, i64 %i.aaw)
  br label %_ZNK5boost4asio21dynamic_vector_bufferIhSaIhEE4sizeEv.exit368

_ZNK5boost4asio21dynamic_vector_bufferIhSaIhEE4sizeEv.exit368: ; preds = %_ZZN5boost5beast23test_dynamic_buffer_refINS_4asio21dynamic_vector_bufferIhSaIhEEEEEvT_ENKUlvE_clEv.exit364, %bb.cy
  %.0.i366 = phi i64 [ %.sroa.speculated.i367, %bb.cy ], [ %i.aaq, %_ZZN5boost5beast23test_dynamic_buffer_refINS_4asio21dynamic_vector_bufferIhSaIhEEEEEvT_ENKUlvE_clEv.exit364 ] ; 5 uses
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %.pre980, i64 8 ; 18 uses
  %i.aax = getelementptr inbounds nuw i8, ptr %.pre980, i64 16 ; 6 uses
  br label %bb.cz

bb.cz:                                            ; preds = %_ZNK5boost4asio21dynamic_vector_bufferIhSaIhEE4sizeEv.exit368, %_ZN5boost4asio21dynamic_vector_bufferIhSaIhEE6commitEm.exit383
  %.sroa.0541.0851 = phi ptr [ %i.s, %_ZNK5boost4asio21dynamic_vector_bufferIhSaIhEE4sizeEv.exit368 ], [ %i.aed, %_ZN5boost4asio21dynamic_vector_bufferIhSaIhEE6commitEm.exit383 ] ; 2 uses
  %.sroa.7.0850 = phi i64 [ %.050865, %_ZNK5boost4asio21dynamic_vector_bufferIhSaIhEE4sizeEv.exit368 ], [ %i.aee, %_ZN5boost4asio21dynamic_vector_bufferIhSaIhEE6commitEm.exit383 ] ; 2 uses
  %.sroa.16.0849 = phi i64 [ %i.aaq, %_ZNK5boost4asio21dynamic_vector_bufferIhSaIhEE4sizeEv.exit368 ], [ %i.ada, %_ZN5boost4asio21dynamic_vector_bufferIhSaIhEE6commitEm.exit383 ] ; 4 uses
  %.not.i369 = icmp eq i64 %.sroa.16.0849, -1
  br i1 %.not.i369, label %_ZNK5boost4asio21dynamic_vector_bufferIhSaIhEE4sizeEv.exit8.thread.i, label %_ZNK5boost4asio21dynamic_vector_bufferIhSaIhEE4sizeEv.exit.thread.i

_ZNK5boost4asio21dynamic_vector_bufferIhSaIhEE4sizeEv.exit.thread.i: ; preds = %bb.cz
  %i.aay = icmp ugt i64 %.sroa.16.0849, %.pre981
  br i1 %i.aay, label %split, label %_ZNK5boost4asio21dynamic_vector_bufferIhSaIhEE4sizeEv.exit.thread._crit_edge.i

_ZNK5boost4asio21dynamic_vector_bufferIhSaIhEE4sizeEv.exit.thread._crit_edge.i: ; preds = %_ZNK5boost4asio21dynamic_vector_bufferIhSaIhEE4sizeEv.exit.thread.i
  %i.aaz = sub nuw i64 %.pre981, %.sroa.16.0849
  %.sroa.speculated536 = call i64 @llvm.umin.i64(i64 %i.aaz, i64 %storemerge862)
  %.pre22.i = load ptr, ptr %.phi.trans.insert.i, align 8, !tbaa !251 ; 2 uses
  %.pre23.i = load ptr, ptr %.pre980, align 8, !tbaa !174 ; 2 uses
  %.pre29.i = ptrtoint ptr %.pre22.i to i64
  %.pre30.i = ptrtoint ptr %.pre23.i to i64       ; 2 uses
  %.pre32.i = sub i64 %.pre29.i, %.pre30.i
  br label %.thread20.i

_ZNK5boost4asio21dynamic_vector_bufferIhSaIhEE4sizeEv.exit8.thread.i: ; preds = %bb.cz
  %i.aba = load ptr, ptr %.phi.trans.insert.i, align 8, !tbaa !251 ; 2 uses
  %i.abb = load ptr, ptr %.pre980, align 8, !tbaa !174 ; 2 uses
  %i.abc = ptrtoint ptr %i.aba to i64
  %i.abd = ptrtoint ptr %i.abb to i64             ; 2 uses
  %i.abe = sub i64 %i.abc, %i.abd                 ; 3 uses
  %i.abf = call i64 @llvm.usub.sat.i64(i64 %.pre981, i64 %i.abe)
  %.sroa.speculated536670 = call i64 @llvm.umin.i64(i64 %i.abf, i64 %storemerge862)
  br label %.thread20.i

split:                                            ; preds = %_ZNK5boost4asio21dynamic_vector_bufferIhSaIhEE4sizeEv.exit.thread.i
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #31
  call void @_ZNSt12length_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %25, ptr noundef nonnull @.str.49)
  invoke void @_ZN5boost15throw_exceptionISt12length_errorEEvRKT_(ptr noundef nonnull align 8 dereferenceable(16) %25) #33
          to label %bb.da unwind label %bb.db

bb.da:                                            ; preds = %split
  unreachable

bb.db:                                            ; preds = %split
  %i.abg = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12length_errorD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %25) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #31
  br label %common.resume

.thread20.i:                                      ; preds = %_ZNK5boost4asio21dynamic_vector_bufferIhSaIhEE4sizeEv.exit8.thread.i, %_ZNK5boost4asio21dynamic_vector_bufferIhSaIhEE4sizeEv.exit.thread._crit_edge.i
  %.sroa.speculated536672 = phi i64 [ %.sroa.speculated536, %_ZNK5boost4asio21dynamic_vector_bufferIhSaIhEE4sizeEv.exit.thread._crit_edge.i ], [ %.sroa.speculated536670, %_ZNK5boost4asio21dynamic_vector_bufferIhSaIhEE4sizeEv.exit8.thread.i ] ; 2 uses
  %.sroa.16.2 = phi i64 [ %.sroa.16.0849, %_ZNK5boost4asio21dynamic_vector_bufferIhSaIhEE4sizeEv.exit.thread._crit_edge.i ], [ %i.abe, %_ZNK5boost4asio21dynamic_vector_bufferIhSaIhEE4sizeEv.exit8.thread.i ] ; 4 uses
  %.pre-phi33.i = phi i64 [ %.pre32.i, %_ZNK5boost4asio21dynamic_vector_bufferIhSaIhEE4sizeEv.exit.thread._crit_edge.i ], [ %i.abe, %_ZNK5boost4asio21dynamic_vector_bufferIhSaIhEE4sizeEv.exit8.thread.i ] ; 3 uses
  %.pre-phi31.i = phi i64 [ %.pre30.i, %_ZNK5boost4asio21dynamic_vector_bufferIhSaIhEE4sizeEv.exit.thread._crit_edge.i ], [ %i.abd, %_ZNK5boost4asio21dynamic_vector_bufferIhSaIhEE4sizeEv.exit8.thread.i ] ; 3 uses
  %i.abh = phi ptr [ %.pre23.i, %_ZNK5boost4asio21dynamic_vector_bufferIhSaIhEE4sizeEv.exit.thread._crit_edge.i ], [ %i.abb, %_ZNK5boost4asio21dynamic_vector_bufferIhSaIhEE4sizeEv.exit8.thread.i ] ; 9 uses
  %i.abi = phi ptr [ %.pre22.i, %_ZNK5boost4asio21dynamic_vector_bufferIhSaIhEE4sizeEv.exit.thread._crit_edge.i ], [ %i.aba, %_ZNK5boost4asio21dynamic_vector_bufferIhSaIhEE4sizeEv.exit8.thread.i ] ; 8 uses
  %i.abj = add i64 %.sroa.16.2, %.sroa.speculated536672 ; 4 uses
  %i.abk = icmp ugt i64 %i.abj, %.pre-phi33.i
  br i1 %i.abk, label %bb.dc, label %bb.dk

bb.dc:                                            ; preds = %.thread20.i
  %i.abl = sub nuw i64 %i.abj, %.pre-phi33.i      ; 7 uses
  %i.abm = ptrtoint ptr %i.abi to i64             ; 2 uses
  %i.abn = ptrtoint ptr %i.abh to i64             ; 2 uses
  %i.abo = sub i64 %i.abm, %i.abn                 ; 6 uses
  %i.abp = load ptr, ptr %i.aax, align 8, !tbaa !175
  %i.abq = ptrtoint ptr %i.abp to i64
  %i.abr = sub i64 %i.abq, %i.abm                 ; 2 uses
  %i.abs = icmp sgt i64 %i.abo, -1
  call void @llvm.assume(i1 %i.abs)
  %i.abt = xor i64 %i.abo, 9223372036854775807    ; 2 uses
  %i.abu = icmp ule i64 %i.abr, %i.abt
  call void @llvm.assume(i1 %i.abu)
  %.not28.i = icmp ult i64 %i.abr, %i.abl
  br i1 %.not28.i, label %bb.df, label %bb.dd

bb.dd:                                            ; preds = %bb.dc
  store i8 0, ptr %i.abi, align 1, !tbaa !41
  %i.abv = getelementptr inbounds nuw i8, ptr %i.abi, i64 1 ; 2 uses
  %i.abw = add nsw i64 %i.abl, -1                 ; 2 uses
  %i.abx = icmp eq i64 %i.abw, 0
  br i1 %i.abx, label %_ZSt27__uninitialized_default_n_aIPhmhET_S1_T0_RSaIT1_E.exit.i, label %bb.de

bb.de:                                            ; preds = %bb.dd
  %i.aby = getelementptr i8, ptr %i.abi, i64 %i.abl
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.abv, i8 0, i64 %i.abw, i1 false)
  br label %_ZSt27__uninitialized_default_n_aIPhmhET_S1_T0_RSaIT1_E.exit.i

_ZSt27__uninitialized_default_n_aIPhmhET_S1_T0_RSaIT1_E.exit.i: ; preds = %bb.de, %bb.dd
  %.0.i.i.i.i = phi ptr [ %i.aby, %bb.de ], [ %i.abv, %bb.dd ] ; 2 uses
  store ptr %.0.i.i.i.i, ptr %.phi.trans.insert.i, align 8, !tbaa !251
  %.pre27.i.pre = load ptr, ptr %.pre980, align 8, !tbaa !174
  br label %_ZNSt6vectorIhSaIhEE17_M_default_appendEm.exit

bb.df:                                            ; preds = %bb.dc
  %i.abz = icmp ult i64 %i.abt, %i.abl
  br i1 %i.abz, label %bb.dg, label %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i

bb.dg:                                            ; preds = %bb.df
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.50) #33
  unreachable

_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i:  ; preds = %bb.df
  %.sroa.speculated.i.i453 = call i64 @llvm.umax.i64(i64 %i.abo, i64 %i.abl)
  %i.aca = add nuw i64 %.sroa.speculated.i.i453, %i.abo
  %i.acb = call i64 @llvm.umin.i64(i64 %i.aca, i64 9223372036854775807) ; 2 uses
  %i.acc = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.acb) #34 ; 5 uses
  %i.acd = getelementptr inbounds nuw i8, ptr %i.acc, i64 %i.abo ; 3 uses
  store i8 0, ptr %i.acd, align 1, !tbaa !41
  %i.ace = add nsw i64 %i.abl, -1                 ; 2 uses
  %i.acf = icmp eq i64 %i.ace, 0
  br i1 %i.acf, label %_ZSt27__uninitialized_default_n_aIPhmhET_S1_T0_RSaIT1_E.exit31.i, label %bb.dh

bb.dh:                                            ; preds = %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i
  %i.acg = getelementptr inbounds nuw i8, ptr %i.acd, i64 1
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.acg, i8 0, i64 %i.ace, i1 false)
  br label %_ZSt27__uninitialized_default_n_aIPhmhET_S1_T0_RSaIT1_E.exit31.i

_ZSt27__uninitialized_default_n_aIPhmhET_S1_T0_RSaIT1_E.exit31.i: ; preds = %bb.dh, %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i
  %.not35.i = icmp eq ptr %i.abi, %i.abh
  br i1 %.not35.i, label %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit.i, label %bb.di
end_hunk_1
begin_hunk_2_@_ZN5boost5beast23test_dynamic_buffer_refINS0_10buffer_refINS0_17basic_flat_bufferISaIcEEEEEEEvT_:bb.a

bb.ap:                                            ; preds = %bb.aa
  %i.my = load ptr, ptr @_ZZN5boost5beast9unit_test5suite12p_this_suiteEvE3pts, align 8, !tbaa !150
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r) #31
  store i8 1, ptr %i.r, align 1, !tbaa !227
  %i.mz = call noundef zeroext i1 @_ZN5boost5beast9unit_test5suite6expectIbA1_cEEbRKT_RKT0_PKci(ptr noundef nonnull align 8 dereferenceable(808) %i.my, ptr noundef nonnull align 1 dereferenceable(1) %i.r, ptr noundef nonnull align 1 dereferenceable(1) @.str.25, ptr noundef nonnull @.str.44, i32 noundef 699) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r) #31
  br label %bb.aq

bb.aq:                                            ; preds = %_ZN5boost5beast9unit_test5suite4failIA1_cEEvRKT_PKci.exit, %bb.ak, %bb.am, %bb.ap
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s) #31
  %i.na = load i64, ptr %i.id, align 8, !tbaa !53 ; 4 uses
  %spec.select = call i64 @llvm.umin.i64(i64 %i.na, i64 13) ; 9 uses
  %i.nb = load ptr, ptr @_ZZN5boost5beast9unit_test5suite12p_this_suiteEvE3pts, align 8, !tbaa !150
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t) #31
  store i8 1, ptr %i.t, align 1, !tbaa !227
  %i.nc = call noundef zeroext i1 @_ZN5boost5beast9unit_test5suite6expectIbA1_cEEbRKT_RKT0_PKci(ptr noundef nonnull align 8 dereferenceable(808) %i.nb, ptr noundef nonnull align 1 dereferenceable(1) %i.t, ptr noundef nonnull align 1 dereferenceable(1) @.str.25, ptr noundef nonnull @.str.44, i32 noundef 708) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t) #31
  %i.nd = load ptr, ptr @_ZZN5boost5beast9unit_test5suite12p_this_suiteEvE3pts, align 8, !tbaa !150
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u) #31
  %i.ne = load ptr, ptr %i.z, align 8, !tbaa !51
  %i.nf = load ptr, ptr %i.ab, align 8, !tbaa !52
  %i.ng = icmp eq ptr %i.nf, %i.ne
  %i.nh = zext i1 %i.ng to i8
  store i8 %i.nh, ptr %i.u, align 1, !tbaa !227
  %i.ni = call noundef zeroext i1 @_ZN5boost5beast9unit_test5suite6expectIbA1_cEEbRKT_RKT0_PKci(ptr noundef nonnull align 8 dereferenceable(808) %i.nd, ptr noundef nonnull align 1 dereferenceable(1) %i.u, ptr noundef nonnull align 1 dereferenceable(1) @.str.25, ptr noundef nonnull @.str.44, i32 noundef 709) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u) #31
  %i.nj = load ptr, ptr @_ZZN5boost5beast9unit_test5suite12p_this_suiteEvE3pts, align 8, !tbaa !150
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v) #31
  %i.nk = load ptr, ptr %i.z, align 8, !tbaa !51
  %i.nl = load ptr, ptr %i.ab, align 8, !tbaa !52
  %i.nm = icmp eq ptr %i.nl, %i.nk
  %i.nn = zext i1 %i.nm to i8
  store i8 %i.nn, ptr %i.v, align 1, !tbaa !227
  %i.no = call noundef zeroext i1 @_ZN5boost5beast9unit_test5suite6expectIbA1_cEEbRKT_RKT0_PKci(ptr noundef nonnull align 8 dereferenceable(808) %i.nj, ptr noundef nonnull align 1 dereferenceable(1) %i.v, ptr noundef nonnull align 1 dereferenceable(1) @.str.25, ptr noundef nonnull @.str.44, i32 noundef 710) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v) #31
  %.not.i = icmp eq i64 %i.na, 0                  ; 2 uses
  br i1 %.not.i, label %_ZZN5boost5beast23test_dynamic_buffer_refINS0_10buffer_refINS0_17basic_flat_bufferISaIcEEEEEEEvT_ENKUlvE_clEv.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.aq
  %xtraiter = and i64 %spec.select, 7             ; 3 uses
  %i.np = icmp ult i64 %i.na, 8
  br i1 %i.np, label %.lr.ph.i.epil.preheader, label %.lr.ph.i.preheader.new

.lr.ph.i.preheader.new:                           ; preds = %.lr.ph.i.preheader
  %unroll_iter = and i64 %spec.select, 8
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.i.preheader.new
  %.06.i = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %i.oe, %.lr.ph.i ] ; 10 uses
  %niter = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %niter.next.7, %.lr.ph.i ]
  %indvars691 = trunc i64 %.06.i to i8
  %i.nq = or disjoint i64 %.06.i, 1               ; 2 uses
  %i.nr = getelementptr inbounds nuw i8, ptr %i.s, i64 %.06.i
  store i8 %indvars691, ptr %i.nr, align 1, !tbaa !41
  %indvars691.1 = trunc i64 %i.nq to i8
  %i.ns = or disjoint i64 %.06.i, 2               ; 2 uses
  %i.nt = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.nq
  store i8 %indvars691.1, ptr %i.nt, align 1, !tbaa !41
  %indvars691.2 = trunc i64 %i.ns to i8
  %i.nu = or disjoint i64 %.06.i, 3               ; 2 uses
  %i.nv = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.ns
  store i8 %indvars691.2, ptr %i.nv, align 1, !tbaa !41
  %indvars691.3 = trunc i64 %i.nu to i8
  %i.nw = or disjoint i64 %.06.i, 4               ; 2 uses
  %i.nx = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.nu
  store i8 %indvars691.3, ptr %i.nx, align 1, !tbaa !41
  %indvars691.4 = trunc i64 %i.nw to i8
  %i.ny = or disjoint i64 %.06.i, 5               ; 2 uses
  %i.nz = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.nw
  store i8 %indvars691.4, ptr %i.nz, align 1, !tbaa !41
  %indvars691.5 = trunc i64 %i.ny to i8
  %i.oa = or disjoint i64 %.06.i, 6               ; 2 uses
  %i.ob = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.ny
  store i8 %indvars691.5, ptr %i.ob, align 1, !tbaa !41
  %indvars691.6 = trunc i64 %i.oa to i8
  %i.oc = or disjoint i64 %.06.i, 7               ; 2 uses
  %i.od = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.oa
  store i8 %indvars691.6, ptr %i.od, align 1, !tbaa !41
  %indvars691.7 = trunc i64 %i.oc to i8
  %i.oe = add nuw nsw i64 %.06.i, 8               ; 2 uses
  %i.of = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.oc
  store i8 %indvars691.7, ptr %i.of, align 1, !tbaa !41
  %niter.next.7 = add i64 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %_ZZN5boost5beast23test_dynamic_buffer_refINS0_10buffer_refINS0_17basic_flat_bufferISaIcEEEEEEEvT_ENKUlvE_clEv.exit.loopexit.unr-lcssa, label %.lr.ph.i, !llvm.loop !608

_ZZN5boost5beast23test_dynamic_buffer_refINS0_10buffer_refINS0_17basic_flat_bufferISaIcEEEEEEEvT_ENKUlvE_clEv.exit.loopexit.unr-lcssa: ; preds = %.lr.ph.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZZN5boost5beast23test_dynamic_buffer_refINS0_10buffer_refINS0_17basic_flat_bufferISaIcEEEEEEEvT_ENKUlvE_clEv.exit, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %_ZZN5boost5beast23test_dynamic_buffer_refINS0_10buffer_refINS0_17basic_flat_bufferISaIcEEEEEEEvT_ENKUlvE_clEv.exit.loopexit.unr-lcssa, %.lr.ph.i.preheader
  %.06.i.epil.init = phi i64 [ 0, %.lr.ph.i.preheader ], [ %i.oe, %_ZZN5boost5beast23test_dynamic_buffer_refINS0_10buffer_refINS0_17basic_flat_bufferISaIcEEEEEEEvT_ENKUlvE_clEv.exit.loopexit.unr-lcssa ]
  %lcmp.mod1003 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod1003)
  br label %.lr.ph.i.epil

.lr.ph.i.epil:                                    ; preds = %.lr.ph.i.epil, %.lr.ph.i.epil.preheader
  %.06.i.epil = phi i64 [ %i.og, %.lr.ph.i.epil ], [ %.06.i.epil.init, %.lr.ph.i.epil.preheader ] ; 3 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i.epil ], [ 0, %.lr.ph.i.epil.preheader ]
  %indvars691.epil = trunc i64 %.06.i.epil to i8
  %i.og = add nuw nsw i64 %.06.i.epil, 1
  %i.oh = getelementptr inbounds nuw i8, ptr %i.s, i64 %.06.i.epil
  store i8 %indvars691.epil, ptr %i.oh, align 1, !tbaa !41
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_ZZN5boost5beast23test_dynamic_buffer_refINS0_10buffer_refINS0_17basic_flat_bufferISaIcEEEEEEEvT_ENKUlvE_clEv.exit, label %.lr.ph.i.epil, !llvm.loop !609

_ZZN5boost5beast23test_dynamic_buffer_refINS0_10buffer_refINS0_17basic_flat_bufferISaIcEEEEEEEvT_ENKUlvE_clEv.exit: ; preds = %_ZZN5boost5beast23test_dynamic_buffer_refINS0_10buffer_refINS0_17basic_flat_bufferISaIcEEEEEEEvT_ENKUlvE_clEv.exit.loopexit.unr-lcssa, %.lr.ph.i.epil, %bb.aq
  call void @llvm.lifetime.start.p0(ptr nonnull %30) #31
  %i.oi = call { ptr, i64 } @_ZN5boost5beast17basic_flat_bufferISaIcEE7prepareEm(ptr noundef nonnull align 8 dereferenceable(48) %0, i64 noundef %spec.select) ; 2 uses
  %i.oj = extractvalue { ptr, i64 } %i.oi, 0
  store ptr %i.oj, ptr %30, align 8
  %i.ok = getelementptr inbounds nuw i8, ptr %30, i64 8 ; 2 uses
  %i.ol = extractvalue { ptr, i64 } %i.oi, 1      ; 2 uses
  store i64 %i.ol, ptr %i.ok, align 8
  %i.om = load ptr, ptr @_ZZN5boost5beast9unit_test5suite12p_this_suiteEvE3pts, align 8, !tbaa !150
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w) #31
  %i.on = icmp eq i64 %i.ol, %spec.select
  %i.oo = zext i1 %i.on to i8
  store i8 %i.oo, ptr %i.w, align 1, !tbaa !227
  %i.op = call noundef zeroext i1 @_ZN5boost5beast9unit_test5suite6expectIbA1_cEEbRKT_RKT0_PKci(ptr noundef nonnull align 8 dereferenceable(808) %i.om, ptr noundef nonnull align 1 dereferenceable(1) %i.w, ptr noundef nonnull align 1 dereferenceable(1) @.str.25, ptr noundef nonnull @.str.44, i32 noundef 725) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w) #31
  call void @_ZN5boost5beast20test_buffer_sequenceINS_4asio14mutable_bufferEEEvRKT_(ptr noundef nonnull align 8 dereferenceable(16) %30)
  %i.oq = load i64, ptr %i.ok, align 8, !tbaa !111
  %i.or = call i64 @llvm.umin.i64(i64 %i.oq, i64 %spec.select) ; 3 uses
  %.not.i.i.i217 = icmp eq i64 %i.or, 0
  br i1 %.not.i.i.i217, label %_ZN5boost4asio11buffer_copyINS0_14mutable_bufferENS0_12const_bufferEEEmRKT_RKT0_.exit218, label %bb.ar

bb.ar:                                            ; preds = %_ZZN5boost5beast23test_dynamic_buffer_refINS0_10buffer_refINS0_17basic_flat_bufferISaIcEEEEEEEvT_ENKUlvE_clEv.exit
  %i.os = load ptr, ptr %30, align 8, !tbaa !110
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.os, ptr nonnull align 1 %i.s, i64 %i.or, i1 false)
  br label %_ZN5boost4asio11buffer_copyINS0_14mutable_bufferENS0_12const_bufferEEEmRKT_RKT0_.exit218

_ZN5boost4asio11buffer_copyINS0_14mutable_bufferENS0_12const_bufferEEEmRKT_RKT0_.exit218: ; preds = %_ZZN5boost5beast23test_dynamic_buffer_refINS0_10buffer_refINS0_17basic_flat_bufferISaIcEEEEEEEvT_ENKUlvE_clEv.exit, %bb.ar
  %i.ot = load ptr, ptr %i.ab, align 8, !tbaa !52 ; 2 uses
  %i.ou = load ptr, ptr %i.ar, align 8, !tbaa !61
  %i.ov = ptrtoint ptr %i.ou to i64
  %i.ow = ptrtoint ptr %i.ot to i64
  %i.ox = sub i64 %i.ov, %i.ow
  %.sroa.speculated.i.i219 = call i64 @llvm.umin.i64(i64 %i.ox, i64 %i.or)
  %i.oy = getelementptr inbounds nuw i8, ptr %i.ot, i64 %.sroa.speculated.i.i219 ; 2 uses
  store ptr %i.oy, ptr %i.ab, align 8, !tbaa !52
  %i.oz = load ptr, ptr @_ZZN5boost5beast9unit_test5suite12p_this_suiteEvE3pts, align 8, !tbaa !150
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x) #31
  %i.pa = load ptr, ptr %i.z, align 8, !tbaa !51
  %i.pb = ptrtoint ptr %i.oy to i64
  %i.pc = ptrtoint ptr %i.pa to i64
  %i.pd = sub i64 %i.pb, %i.pc
  %i.pe = icmp eq i64 %i.pd, %spec.select
  %i.pf = zext i1 %i.pe to i8
  store i8 %i.pf, ptr %i.x, align 1, !tbaa !227
  %i.pg = call noundef zeroext i1 @_ZN5boost5beast9unit_test5suite6expectIbA1_cEEbRKT_RKT0_PKci(ptr noundef nonnull align 8 dereferenceable(808) %i.oz, ptr noundef nonnull align 1 dereferenceable(1) %i.x, ptr noundef nonnull align 1 dereferenceable(1) @.str.25, ptr noundef nonnull @.str.44, i32 noundef 730) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %31) #31
  %i.ph = load ptr, ptr %i.z, align 8, !tbaa !51  ; 2 uses
  %i.pi = load ptr, ptr %i.ab, align 8, !tbaa !52
  %i.pj = ptrtoint ptr %i.pi to i64
  %i.pk = ptrtoint ptr %i.ph to i64
  %i.pl = sub i64 %i.pj, %i.pk
  store ptr %i.ph, ptr %31, align 8
  %i.pm = getelementptr inbounds nuw i8, ptr %31, i64 8
  store i64 %i.pl, ptr %i.pm, align 8
  call void @_ZN5boost5beast20test_buffer_sequenceINS_4asio12const_bufferEEEvRKT_(ptr noundef nonnull align 8 dereferenceable(16) %31)
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #31
  br i1 %.not.i, label %._crit_edge620, label %.preheader484.lr.ph

.preheader484.lr.ph:                              ; preds = %_ZN5boost4asio11buffer_copyINS0_14mutable_bufferENS0_12const_bufferEEEmRKT_RKT0_.exit218
  %i.pn = getelementptr inbounds nuw i8, ptr %19, i64 16 ; 4 uses
  %i.po = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 4 uses
  %i.pp = getelementptr inbounds nuw i8, ptr %33, i64 16 ; 8 uses
  %i.pq = getelementptr inbounds nuw i8, ptr %33, i64 8 ; 3 uses
  %i.pr = getelementptr inbounds nuw i8, ptr %32, i64 16 ; 7 uses
  %i.ps = getelementptr inbounds nuw i8, ptr %32, i64 8 ; 2 uses
  %i.pt = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 4 uses
  %i.pu = add nuw nsw i64 %spec.select, 3
  %xtraiter1004 = and i64 %spec.select, 3         ; 3 uses
  %i.pv = icmp ult i64 %i.na, 4
  %unroll_iter1008 = and i64 %spec.select, 12
  %lcmp.mod1006.not = icmp eq i64 %xtraiter1004, 0
  %lcmp.mod1007 = icmp ne i64 %xtraiter1004, 0
  br label %.preheader484

.preheader484:                                    ; preds = %.preheader484.lr.ph, %bb.as
  %indvars.iv697 = phi i64 [ 4, %.preheader484.lr.ph ], [ %indvars.iv.next698, %bb.as ] ; 3 uses
  %indvars.iv = phi i64 [ 2, %.preheader484.lr.ph ], [ %indvars.iv.next, %bb.as ] ; 2 uses
  %.052619 = phi i64 [ 1, %.preheader484.lr.ph ], [ %i.px, %bb.as ] ; 5 uses
  %.0618 = phi i8 [ 1, %.preheader484.lr.ph ], [ %i.pz, %bb.as ]
  br label %.preheader.preheader

._crit_edge620:                                   ; preds = %bb.as, %_ZN5boost4asio11buffer_copyINS0_14mutable_bufferENS0_12const_bufferEEEmRKT_RKT0_.exit218
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s) #31
  ret void

.loopexit483:                                     ; preds = %bb.at
  %indvars.iv.next695 = add nuw nsw i64 %indvars.iv694, 1 ; 2 uses
  %exitcond699 = icmp eq i64 %indvars.iv.next695, %indvars.iv697
  br i1 %exitcond699, label %bb.as, label %.preheader.preheader, !llvm.loop !610

.preheader.preheader:                             ; preds = %.loopexit483, %.preheader484
  %indvars.iv694 = phi i64 [ 3, %.preheader484 ], [ %indvars.iv.next695, %.loopexit483 ] ; 2 uses
  %storemerge616 = phi i64 [ 1, %.preheader484 ], [ %i.pw, %.loopexit483 ] ; 2 uses
  %.1615 = phi i8 [ %.0618, %.preheader484 ], [ %i.pz, %.loopexit483 ]
  %i.pw = add nuw nsw i64 %storemerge616, 1
  br label %.preheader

bb.as:                                            ; preds = %.loopexit483
  %i.px = add nuw nsw i64 %.052619, 1
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %indvars.iv.next698 = add nuw nsw i64 %indvars.iv697, 1
  %exitcond700.not = icmp eq i64 %indvars.iv697, %i.pu
  br i1 %exitcond700.not, label %._crit_edge620, label %.preheader484, !llvm.loop !611

.preheader:                                       ; preds = %.preheader.preheader, %bb.at
  %storemerge64613 = phi i64 [ %i.py, %bb.at ], [ 1, %.preheader.preheader ] ; 2 uses
  %.2612 = phi i8 [ %i.pz, %bb.at ], [ %.1615, %.preheader.preheader ]
  br label %.lr.ph.i225.preheader

bb.at:                                            ; preds = %_ZN5boost5beast9unit_test5suite6expectIbA1_cEEbRKT_RKT0_PKci.exit312
  %i.py = add nuw nsw i64 %storemerge64613, 1     ; 2 uses
  %exitcond696 = icmp eq i64 %i.py, %indvars.iv694
  br i1 %exitcond696, label %.loopexit483, label %.preheader, !llvm.loop !612

.lr.ph.i225.preheader:                            ; preds = %_ZN5boost5beast9unit_test5suite6expectIbA1_cEEbRKT_RKT0_PKci.exit312, %.preheader
  %.053610 = phi i64 [ 1, %.preheader ], [ %i.yl, %_ZN5boost5beast9unit_test5suite6expectIbA1_cEEbRKT_RKT0_PKci.exit312 ] ; 3 uses
  %.3609 = phi i8 [ %.2612, %.preheader ], [ %i.pz, %_ZN5boost5beast9unit_test5suite6expectIbA1_cEEbRKT_RKT0_PKci.exit312 ] ; 3 uses
  %i.pz = add i8 %.3609, 1                        ; 4 uses
  br i1 %i.pv, label %.lr.ph.i225.epil.preheader, label %.lr.ph.i225

.lr.ph.i225:                                      ; preds = %.lr.ph.i225.preheader, %.lr.ph.i225
  %.06.i226 = phi i64 [ %i.ql, %.lr.ph.i225 ], [ 0, %.lr.ph.i225.preheader ] ; 5 uses
  %.045.i227 = phi i8 [ %i.qi, %.lr.ph.i225 ], [ %.3609, %.lr.ph.i225.preheader ] ; 5 uses
  %niter1009 = phi i64 [ %niter1009.next.3, %.lr.ph.i225 ], [ 0, %.lr.ph.i225.preheader ]
  %i.qa = add i8 %.045.i227, 1
  %i.qb = getelementptr inbounds nuw i8, ptr %i.s, i64 %.06.i226
  store i8 %.045.i227, ptr %i.qb, align 1, !tbaa !41
  %i.qc = add i8 %.045.i227, 2
  %i.qd = getelementptr inbounds nuw i8, ptr %i.s, i64 %.06.i226
  %i.qe = getelementptr inbounds nuw i8, ptr %i.qd, i64 1
  store i8 %i.qa, ptr %i.qe, align 1, !tbaa !41
  %i.qf = add i8 %.045.i227, 3
  %i.qg = getelementptr inbounds nuw i8, ptr %i.s, i64 %.06.i226
  %i.qh = getelementptr inbounds nuw i8, ptr %i.qg, i64 2
  store i8 %i.qc, ptr %i.qh, align 1, !tbaa !41
  %i.qi = add i8 %.045.i227, 4                    ; 2 uses
  %i.qj = getelementptr inbounds nuw i8, ptr %i.s, i64 %.06.i226
  %i.qk = getelementptr inbounds nuw i8, ptr %i.qj, i64 3
  store i8 %i.qf, ptr %i.qk, align 1, !tbaa !41
  %i.ql = add nuw nsw i64 %.06.i226, 4            ; 2 uses
  %niter1009.next.3 = add i64 %niter1009, 4       ; 2 uses
  %niter1009.ncmp.3 = icmp eq i64 %niter1009.next.3, %unroll_iter1008
  br i1 %niter1009.ncmp.3, label %_ZZN5boost5beast23test_dynamic_buffer_refINS0_10buffer_refINS0_17basic_flat_bufferISaIcEEEEEEEvT_ENKUlvE_clEv.exit228.unr-lcssa, label %.lr.ph.i225, !llvm.loop !608

_ZZN5boost5beast23test_dynamic_buffer_refINS0_10buffer_refINS0_17basic_flat_bufferISaIcEEEEEEEvT_ENKUlvE_clEv.exit228.unr-lcssa: ; preds = %.lr.ph.i225
  br i1 %lcmp.mod1006.not, label %_ZZN5boost5beast23test_dynamic_buffer_refINS0_10buffer_refINS0_17basic_flat_bufferISaIcEEEEEEEvT_ENKUlvE_clEv.exit228, label %.lr.ph.i225.epil.preheader

.lr.ph.i225.epil.preheader:                       ; preds = %_ZZN5boost5beast23test_dynamic_buffer_refINS0_10buffer_refINS0_17basic_flat_bufferISaIcEEEEEEEvT_ENKUlvE_clEv.exit228.unr-lcssa, %.lr.ph.i225.preheader
  %.06.i226.epil.init = phi i64 [ 0, %.lr.ph.i225.preheader ], [ %i.ql, %_ZZN5boost5beast23test_dynamic_buffer_refINS0_10buffer_refINS0_17basic_flat_bufferISaIcEEEEEEEvT_ENKUlvE_clEv.exit228.unr-lcssa ]
  %.045.i227.epil.init = phi i8 [ %.3609, %.lr.ph.i225.preheader ], [ %i.qi, %_ZZN5boost5beast23test_dynamic_buffer_refINS0_10buffer_refINS0_17basic_flat_bufferISaIcEEEEEEEvT_ENKUlvE_clEv.exit228.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod1007)
  br label %.lr.ph.i225.epil

.lr.ph.i225.epil:                                 ; preds = %.lr.ph.i225.epil, %.lr.ph.i225.epil.preheader
  %.06.i226.epil = phi i64 [ %i.qo, %.lr.ph.i225.epil ], [ %.06.i226.epil.init, %.lr.ph.i225.epil.preheader ] ; 2 uses
  %.045.i227.epil = phi i8 [ %i.qm, %.lr.ph.i225.epil ], [ %.045.i227.epil.init, %.lr.ph.i225.epil.preheader ] ; 2 uses
  %epil.iter1005 = phi i64 [ %epil.iter1005.next, %.lr.ph.i225.epil ], [ 0, %.lr.ph.i225.epil.preheader ]
  %i.qm = add i8 %.045.i227.epil, 1
  %i.qn = getelementptr inbounds nuw i8, ptr %i.s, i64 %.06.i226.epil
  store i8 %.045.i227.epil, ptr %i.qn, align 1, !tbaa !41
  %i.qo = add nuw nsw i64 %.06.i226.epil, 1
  %epil.iter1005.next = add i64 %epil.iter1005, 1 ; 2 uses
  %epil.iter1005.cmp.not = icmp eq i64 %epil.iter1005.next, %xtraiter1004
  br i1 %epil.iter1005.cmp.not, label %_ZZN5boost5beast23test_dynamic_buffer_refINS0_10buffer_refINS0_17basic_flat_bufferISaIcEEEEEEEvT_ENKUlvE_clEv.exit228, label %.lr.ph.i225.epil, !llvm.loop !613

_ZZN5boost5beast23test_dynamic_buffer_refINS0_10buffer_refINS0_17basic_flat_bufferISaIcEEEEEEEvT_ENKUlvE_clEv.exit228: ; preds = %.lr.ph.i225.epil, %_ZZN5boost5beast23test_dynamic_buffer_refINS0_10buffer_refINS0_17basic_flat_bufferISaIcEEEEEEEvT_ENKUlvE_clEv.exit228.unr-lcssa
  %i.qp = load ptr, ptr %i.z, align 8, !tbaa !51
  %i.qq = load ptr, ptr %i.ab, align 8, !tbaa !52 ; 2 uses
  br label %bb.au

bb.au:                                            ; preds = %_ZZN5boost5beast23test_dynamic_buffer_refINS0_10buffer_refINS0_17basic_flat_bufferISaIcEEEEEEEvT_ENKUlvE_clEv.exit228, %_ZN5boost4asio11buffer_copyINS0_14mutable_bufferENS0_12const_bufferEEEmRKT_RKT0_.exit231
  %i.qr = phi ptr [ %i.qq, %_ZZN5boost5beast23test_dynamic_buffer_refINS0_10buffer_refINS0_17basic_flat_bufferISaIcEEEEEEEvT_ENKUlvE_clEv.exit228 ], [ %i.rg, %_ZN5boost4asio11buffer_copyINS0_14mutable_bufferENS0_12const_bufferEEEmRKT_RKT0_.exit231 ]
  %.sroa.0348.0602 = phi ptr [ %i.s, %_ZZN5boost5beast23test_dynamic_buffer_refINS0_10buffer_refINS0_17basic_flat_bufferISaIcEEEEEEEvT_ENKUlvE_clEv.exit228 ], [ %i.rh, %_ZN5boost4asio11buffer_copyINS0_14mutable_bufferENS0_12const_bufferEEEmRKT_RKT0_.exit231 ] ; 2 uses
  %.sroa.7.0601 = phi i64 [ %.052619, %_ZZN5boost5beast23test_dynamic_buffer_refINS0_10buffer_refINS0_17basic_flat_bufferISaIcEEEEEEEvT_ENKUlvE_clEv.exit228 ], [ %i.ri, %_ZN5boost4asio11buffer_copyINS0_14mutable_bufferENS0_12const_bufferEEEmRKT_RKT0_.exit231 ] ; 2 uses
  %i.qs = load i64, ptr %i.id, align 8, !tbaa !53
  %i.qt = load ptr, ptr %i.z, align 8, !tbaa !51
  %i.qu = ptrtoint ptr %i.qr to i64
  %i.qv = ptrtoint ptr %i.qt to i64
  %.neg = add i64 %i.qs, %i.qv
  %i.qw = sub i64 %.neg, %i.qu
  %.sroa.speculated343 = call i64 @llvm.umin.i64(i64 %i.qw, i64 %storemerge616)
  %i.qx = call { ptr, i64 } @_ZN5boost5beast17basic_flat_bufferISaIcEE7prepareEm(ptr noundef nonnull align 8 dereferenceable(48) %0, i64 noundef %.sroa.speculated343) ; 2 uses
  %i.qy = extractvalue { ptr, i64 } %i.qx, 1      ; 2 uses
  %.sroa.speculated = call i64 @llvm.umin.i64(i64 %.sroa.7.0601, i64 %storemerge64613)
  %i.qz = call i64 @llvm.umin.i64(i64 %i.qy, i64 %.sroa.speculated) ; 4 uses
  %.not.i.i.i230 = icmp eq i64 %i.qy, 0
  br i1 %.not.i.i.i230, label %_ZN5boost4asio11buffer_copyINS0_14mutable_bufferENS0_12const_bufferEEEmRKT_RKT0_.exit231, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.ra = extractvalue { ptr, i64 } %i.qx, 0
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ra, ptr align 1 %.sroa.0348.0602, i64 %i.qz, i1 false)
  br label %_ZN5boost4asio11buffer_copyINS0_14mutable_bufferENS0_12const_bufferEEEmRKT_RKT0_.exit231

_ZN5boost4asio11buffer_copyINS0_14mutable_bufferENS0_12const_bufferEEEmRKT_RKT0_.exit231: ; preds = %bb.au, %bb.av
  %i.rb = load ptr, ptr %i.ab, align 8, !tbaa !52 ; 2 uses
  %i.rc = load ptr, ptr %i.ar, align 8, !tbaa !61
  %i.rd = ptrtoint ptr %i.rc to i64
  %i.re = ptrtoint ptr %i.rb to i64
  %i.rf = sub i64 %i.rd, %i.re
  %.sroa.speculated.i.i232 = call i64 @llvm.umin.i64(i64 %i.rf, i64 %i.qz)
  %i.rg = getelementptr inbounds nuw i8, ptr %i.rb, i64 %.sroa.speculated.i.i232 ; 3 uses
  store ptr %i.rg, ptr %i.ab, align 8, !tbaa !52
  %i.rh = getelementptr inbounds nuw i8, ptr %.sroa.0348.0602, i64 %i.qz
  %i.ri = sub nuw i64 %.sroa.7.0601, %i.qz        ; 2 uses
  %.not67 = icmp eq i64 %i.ri, 0
  br i1 %.not67, label %bb.aw, label %bb.au, !llvm.loop !614

bb.aw:                                            ; preds = %_ZN5boost4asio11buffer_copyINS0_14mutable_bufferENS0_12const_bufferEEEmRKT_RKT0_.exit231
  %i.rj = ptrtoint ptr %i.qq to i64
  %i.rk = ptrtoint ptr %i.qp to i64
  %i.rl = sub i64 %i.rj, %i.rk                    ; 5 uses
  %i.rm = load ptr, ptr @_ZZN5boost5beast9unit_test5suite12p_this_suiteEvE3pts, align 8, !tbaa !150 ; 7 uses
  %i.rn = load ptr, ptr %i.z, align 8, !tbaa !51
  %i.ro = ptrtoint ptr %i.rg to i64
  %i.rp = ptrtoint ptr %i.rn to i64
  %i.rq = sub i64 %i.ro, %i.rp
  %i.rr = add i64 %i.rl, %.052619                 ; 2 uses
  %i.rs = icmp eq i64 %i.rq, %i.rr
  br i1 %i.rs, label %bb.ax, label %bb.bb

bb.ax:                                            ; preds = %bb.aw
  %i.rt = getelementptr inbounds nuw i8, ptr %i.rm, i64 8
  %i.ru = load i8, ptr %i.rt, align 8, !tbaa !167, !range !146, !noundef !48
  %i.rv = trunc nuw i8 %i.ru to i1
  %i.rw = getelementptr inbounds nuw i8, ptr %i.rm, i64 9
  %i.rx = load i8, ptr %i.rw, align 1, !range !146
  %i.ry = trunc nuw i8 %i.rx to i1
  %or.cond.i.i.i = select i1 %i.rv, i1 %i.ry, i1 false
  br i1 %or.cond.i.i.i, label %bb.ay, label %_ZN5boost5beast9unit_test5suite4passIvEEvv.exit.i

bb.ay:                                            ; preds = %bb.ax
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #31
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5boost5beast9unit_test5suite15abort_exceptionE, i64 16), ptr %17, align 8, !tbaa !114
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #31
  store ptr @.str.36, ptr %18, align 8, !tbaa !57
  %i.rz = getelementptr inbounds nuw i8, ptr %18, i64 8
  store ptr @.str.37, ptr %i.rz, align 8, !tbaa !58
  %i.sa = getelementptr inbounds nuw i8, ptr %18, i64 16
  store i32 592, ptr %i.sa, align 8, !tbaa !59
  %i.sb = getelementptr inbounds nuw i8, ptr %18, i64 20
  store i32 48, ptr %i.sb, align 4, !tbaa !60
  invoke void @_ZN5boost15throw_exceptionINS_5beast9unit_test5suite15abort_exceptionEEEvRKT_RKNS_15source_locationE(ptr noundef nonnull align 8 dereferenceable(8) %17, ptr noundef nonnull align 8 dereferenceable(24) %18) #33
          to label %bb.az unwind label %bb.ba

bb.az:                                            ; preds = %bb.ay
  unreachable

bb.ba:                                            ; preds = %bb.ay
  %i.sc = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #31
  call void @_ZNSt9exceptionD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %17) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #31
  br label %common.resume

_ZN5boost5beast9unit_test5suite4passIvEEvv.exit.i: ; preds = %bb.ax
  %i.sd = getelementptr inbounds nuw i8, ptr %i.rm, i64 16
  %i.se = load ptr, ptr %i.sd, align 8, !tbaa !169
  call void @_ZN5boost5beast9unit_test6runner4passIvEEvv(ptr noundef nonnull align 8 dereferenceable(88) %i.se)
  br label %_ZN5boost5beast9unit_test5suite6expectIbA1_cEEbRKT_RKT0_PKci.exit

bb.bb:                                            ; preds = %bb.aw
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #31
  call void @_ZN5boost5beast9unit_test6detail11make_reasonIA1_cEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_PKci(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %19, ptr noundef nonnull align 1 dereferenceable(1) @.str.25, ptr noundef nonnull @.str.44, i32 noundef 763)
  %i.sf = getelementptr inbounds nuw i8, ptr %i.rm, i64 8 ; 2 uses
  %i.sg = load i8, ptr %i.sf, align 8, !tbaa !167, !range !146, !noundef !48
  %i.sh = trunc nuw i8 %i.sg to i1
  %i.si = getelementptr inbounds nuw i8, ptr %i.rm, i64 9
  %i.sj = load i8, ptr %i.si, align 1, !range !146
  %i.sk = trunc nuw i8 %i.sj to i1
  %or.cond.i.i313 = select i1 %i.sh, i1 %i.sk, i1 false
  br i1 %or.cond.i.i313, label %bb.bc, label %_ZN5boost5beast9unit_test5suite15propagate_abortEv.exit.i

bb.bc:                                            ; preds = %bb.bb
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #31
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5boost5beast9unit_test5suite15abort_exceptionE, i64 16), ptr %5, align 8, !tbaa !114
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #31
  store ptr @.str.36, ptr %6, align 8, !tbaa !57
  %i.sl = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr @.str.37, ptr %i.sl, align 8, !tbaa !58
  %i.sm = getelementptr inbounds nuw i8, ptr %6, i64 16
  store i32 592, ptr %i.sm, align 8, !tbaa !59
  %i.sn = getelementptr inbounds nuw i8, ptr %6, i64 20
  store i32 48, ptr %i.sn, align 4, !tbaa !60
  invoke void @_ZN5boost15throw_exceptionINS_5beast9unit_test5suite15abort_exceptionEEEvRKT_RKNS_15source_locationE(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(24) %6) #33
          to label %bb.bd unwind label %bb.be

bb.bd:                                            ; preds = %bb.bc
  unreachable

bb.be:                                            ; preds = %bb.bc
  %i.so = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #31
  call void @_ZNSt9exceptionD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %5) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #31
  br label %.body316

_ZN5boost5beast9unit_test5suite15propagate_abortEv.exit.i: ; preds = %bb.bb
  %i.sp = getelementptr inbounds nuw i8, ptr %i.rm, i64 16
  %i.sq = load ptr, ptr %i.sp, align 8, !tbaa !169
  invoke void @_ZN5boost5beast9unit_test6runner4failIvEEvRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(88) %i.sq, ptr noundef nonnull align 8 dereferenceable(32) %19)
          to label %.noexc318 unwind label %bb.bi

.noexc318:                                        ; preds = %_ZN5boost5beast9unit_test5suite15propagate_abortEv.exit.i
  %i.sr = load i8, ptr %i.sf, align 8, !tbaa !167, !range !146, !noundef !48
  %i.ss = trunc nuw i8 %i.sr to i1
end_hunk_2
begin_hunk_3_@_ZN5boost5beast23test_dynamic_buffer_refINS0_10buffer_refINS0_18basic_multi_bufferISaIcEEEEEEEvT_:bb.a

.lr.ph.i.i.i497:                                  ; preds = %_ZNK5boost5beast10buffer_refINS0_18basic_multi_bufferISaIcEEEE4dataEv.exit495
  %i.afz = getelementptr inbounds nuw i8, ptr %.sroa.13.0.i477, i64 8
  %i.aga = load ptr, ptr %i.afz, align 8, !tbaa !94
  br label %.lr.ph.split.i.i.i498

.lr.ph.split.i.i.i498:                            ; preds = %.lr.ph.split.i.i.i498.cont, %.lr.ph.i.i.i497
  %.sroa.5.09.i.i.i499 = phi ptr [ %.sroa.5.0.i.i.i504, %.lr.ph.split.i.i.i498.cont ], [ %.sroa.4.0.i474, %.lr.ph.i.i.i497 ] ; 4 uses
  %.08.i.i.i500 = phi i64 [ %i.agf, %.lr.ph.split.i.i.i498.cont ], [ 0, %.lr.ph.i.i.i497 ]
  %i.agb = icmp eq ptr %.sroa.5.09.i.i.i499, %i.aga
  br i1 %i.agb, label %.lr.ph.split.i.i.i498.cont, label %.lr.ph.split.i.i.i498.else

.lr.ph.split.i.i.i498.else:                       ; preds = %.lr.ph.split.i.i.i498
  %i.agc = getelementptr inbounds nuw i8, ptr %.sroa.5.09.i.i.i499, i64 16
  %.sroa.6.0.i.i.i.i502.else.val = load i64, ptr %i.agc, align 8, !tbaa !38
  br label %.lr.ph.split.i.i.i498.cont

.lr.ph.split.i.i.i498.cont:                       ; preds = %.lr.ph.split.i.i.i498, %.lr.ph.split.i.i.i498.else
  %.sroa.6.0.i.i.i.i502 = phi i64 [ %.sroa.31.0.i476, %.lr.ph.split.i.i.i498 ], [ %.sroa.6.0.i.i.i.i502.else.val, %.lr.ph.split.i.i.i498.else ] ; 2 uses
  %i.agd = icmp eq ptr %.sroa.5.09.i.i.i499, %.sroa.4.0.i474
  %i.age = call i64 @llvm.usub.sat.i64(i64 %.sroa.6.0.i.i.i.i502, i64 %.sroa.23.0.i475)
  %.sroa.6.1.i.i.i.i503 = select i1 %i.agd, i64 %i.age, i64 %.sroa.6.0.i.i.i.i502
  %i.agf = add i64 %.sroa.6.1.i.i.i.i503, %.08.i.i.i500 ; 2 uses
  %.sroa.5.0.i.i.i504 = load ptr, ptr %.sroa.5.09.i.i.i499, align 8, !tbaa !239 ; 2 uses
  %.not.i.i.i505 = icmp eq ptr %.sroa.5.0.i.i.i504, %.sroa.13.0.i477
  br i1 %.not.i.i.i505, label %_ZNK5boost5beast6detail17buffer_bytes_implclINS0_18basic_multi_bufferISaIcEE8subrangeILb0EEEvEEmRKT_.exit507, label %.lr.ph.split.i.i.i498, !llvm.loop !18

_ZNK5boost5beast6detail17buffer_bytes_implclINS0_18basic_multi_bufferISaIcEE8subrangeILb0EEEvEEmRKT_.exit507: ; preds = %.lr.ph.split.i.i.i498.cont, %bb.es, %bb.eo, %_ZN5boost5beast10buffer_refINS0_18basic_multi_bufferISaIcEEEE6commitEm.exit466, %_ZNK5boost5beast10buffer_refINS0_18basic_multi_bufferISaIcEEEE4dataEv.exit495
  %.0.lcssa.i.i.i506 = phi i64 [ 0, %_ZNK5boost5beast10buffer_refINS0_18basic_multi_bufferISaIcEEEE4dataEv.exit495 ], [ 0, %bb.es ], [ 0, %_ZN5boost5beast10buffer_refINS0_18basic_multi_bufferISaIcEEEE6commitEm.exit466 ], [ 0, %bb.eo ], [ %i.agf, %.lr.ph.split.i.i.i498.cont ]
  %i.agg = icmp eq i64 %.0.lcssa.i.i.i506, %spec.select
  %i.agh = zext i1 %i.agg to i8
  store i8 %i.agh, ptr %i.x, align 1, !tbaa !227
  %i.agi = call noundef zeroext i1 @_ZN5boost5beast9unit_test5suite6expectIbA1_cEEbRKT_RKT0_PKci(ptr noundef nonnull align 8 dereferenceable(808) %i.aet, ptr noundef nonnull align 1 dereferenceable(1) %i.x, ptr noundef nonnull align 1 dereferenceable(1) @.str.25, ptr noundef nonnull @.str.44, i32 noundef 730) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %40) #31
  call void @llvm.experimental.noalias.scope.decl(metadata !1088)
  %i.agj = load i64, ptr %i.z, align 8, !tbaa !82, !noalias !1089 ; 8 uses
  %i.agk = load i64, ptr %i.ag, align 8, !tbaa !93, !noalias !1088 ; 5 uses
  %i.agl = load ptr, ptr %i.ai, align 8, !tbaa !91, !noalias !1090 ; 5 uses
  %i.agm = icmp eq ptr %i.agl, %i.ai
  %i.agn = icmp eq i64 %i.agj, 0
  %or.cond.i508 = select i1 %i.agm, i1 true, i1 %i.agn
  br i1 %or.cond.i508, label %_ZNK5boost5beast10buffer_refINS0_18basic_multi_bufferISaIcEEEE4dataEv.exit536, label %.lr.ph.i.preheader.i.i509

.lr.ph.i.preheader.i.i509:                        ; preds = %_ZNK5boost5beast6detail17buffer_bytes_implclINS0_18basic_multi_bufferISaIcEE8subrangeILb0EEEvEEmRKT_.exit507
  %i.ago = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.agp = load ptr, ptr %i.ago, align 8, !tbaa !94, !noalias !1088 ; 5 uses
  %i.agq = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.agr = load i64, ptr %i.agq, align 8, !tbaa !95, !noalias !1088 ; 2 uses
  %i.ags = icmp eq i64 %i.agr, 0
  br i1 %i.ags, label %bb.eu, label %bb.ev

bb.eu:                                            ; preds = %.lr.ph.i.preheader.i.i509
  %i.agt = getelementptr inbounds nuw i8, ptr %i.agp, i64 16
  %i.agu = load i64, ptr %i.agt, align 8, !tbaa !89, !noalias !1088
  br label %bb.ev

bb.ev:                                            ; preds = %bb.eu, %.lr.ph.i.preheader.i.i509
  %.0.i.i.i510 = phi i64 [ %i.agu, %bb.eu ], [ %i.agr, %.lr.ph.i.preheader.i.i509 ] ; 7 uses
  %i.agv = icmp eq ptr %i.agl, %i.agp
  br i1 %i.agv, label %bb.ew, label %.preheader.i.i511

bb.ew:                                            ; preds = %bb.ev
  %.not50.i.i533 = icmp ult i64 %i.agk, %.0.i.i.i510
  br i1 %.not50.i.i533, label %_ZSt4nextIN5boost9intrusive13list_iteratorINS1_8bhtraitsINS0_5beast18basic_multi_bufferISaIcEE7elementENS1_16list_node_traitsIPvEELNS1_14link_mode_typeE0ENS1_7dft_tagELj1EEELb1EEEET_SG_NSt15iterator_traitsISG_E15difference_typeE.exit56.i.i534, label %_ZNK5boost5beast10buffer_refINS0_18basic_multi_bufferISaIcEEEE4dataEv.exit536

_ZSt4nextIN5boost9intrusive13list_iteratorINS1_8bhtraitsINS0_5beast18basic_multi_bufferISaIcEE7elementENS1_16list_node_traitsIPvEELNS1_14link_mode_typeE0ENS1_7dft_tagELj1EEELb1EEEET_SG_NSt15iterator_traitsISG_E15difference_typeE.exit56.i.i534: ; preds = %bb.ew
  %i.agw = load ptr, ptr %i.agl, align 8, !tbaa !91, !noalias !1088
  %i.agx = sub nuw i64 %.0.i.i.i510, %i.agk
  %i.agy = icmp ugt i64 %i.agj, %i.agx
  %i.agz = add i64 %i.agk, %i.agj
  %spec.select.i535 = select i1 %i.agy, i64 %.0.i.i.i510, i64 %i.agz
  br label %_ZNK5boost5beast10buffer_refINS0_18basic_multi_bufferISaIcEEEE4dataEv.exit536

.preheader.i.i511:                                ; preds = %bb.ev, %bb.ez
  %.sroa.073.0.i.i512 = phi ptr [ %i.ahj, %bb.ez ], [ %i.agl, %bb.ev ] ; 7 uses
  %.040.i.i513 = phi i64 [ %i.ahi, %bb.ez ], [ %i.agk, %bb.ev ] ; 7 uses
  %i.aha = getelementptr inbounds nuw i8, ptr %.sroa.073.0.i.i512, i64 16
  %i.ahb = load i64, ptr %i.aha, align 8, !tbaa !89, !noalias !1088 ; 3 uses
  %i.ahc = icmp ult i64 %.040.i.i513, %i.ahb
  br i1 %i.ahc, label %bb.ex, label %bb.ez

bb.ex:                                            ; preds = %.preheader.i.i511
  %i.ahd = sub nuw i64 %i.ahb, %.040.i.i513       ; 2 uses
  %.not47.i.i521 = icmp ugt i64 %i.agj, %i.ahd
  br i1 %.not47.i.i521, label %bb.ey, label %.thread.i.i522

.thread.i.i522:                                   ; preds = %bb.ex
  %i.ahe = load ptr, ptr %.sroa.073.0.i.i512, align 8, !tbaa !91, !noalias !1088
  %i.ahf = add i64 %.040.i.i513, %i.agj
  br label %_ZNK5boost5beast10buffer_refINS0_18basic_multi_bufferISaIcEEEE4dataEv.exit536

bb.ey:                                            ; preds = %bb.ex
  %i.ahg = sub nuw i64 %i.agj, %i.ahd             ; 2 uses
  %.sroa.073.2115.i.i523 = load ptr, ptr %.sroa.073.0.i.i512, align 8, !tbaa !91, !noalias !1088 ; 3 uses
  %i.ahh = icmp eq ptr %.sroa.073.2115.i.i523, %i.agp
  br i1 %i.ahh, label %._crit_edge.i.i529, label %.lr.ph.i.i524

bb.ez:                                            ; preds = %.preheader.i.i511
  %i.ahi = sub nuw i64 %.040.i.i513, %i.ahb       ; 5 uses
  %i.ahj = load ptr, ptr %.sroa.073.0.i.i512, align 8, !tbaa !91, !noalias !1088 ; 4 uses
  %i.ahk = icmp eq ptr %i.ahj, %i.agp
  br i1 %i.ahk, label %bb.fa, label %.preheader.i.i511, !llvm.loop !1

bb.fa:                                            ; preds = %bb.ez
  %.not.i.i514 = icmp ult i64 %i.ahi, %.0.i.i.i510
  br i1 %.not.i.i514, label %_ZSt4nextIN5boost9intrusive13list_iteratorINS1_8bhtraitsINS0_5beast18basic_multi_bufferISaIcEE7elementENS1_16list_node_traitsIPvEELNS1_14link_mode_typeE0ENS1_7dft_tagELj1EEELb1EEEET_SG_NSt15iterator_traitsISG_E15difference_typeE.exit.i.i519, label %_ZNK5boost5beast10buffer_refINS0_18basic_multi_bufferISaIcEEEE4dataEv.exit536

_ZSt4nextIN5boost9intrusive13list_iteratorINS1_8bhtraitsINS0_5beast18basic_multi_bufferISaIcEE7elementENS1_16list_node_traitsIPvEELNS1_14link_mode_typeE0ENS1_7dft_tagELj1EEELb1EEEET_SG_NSt15iterator_traitsISG_E15difference_typeE.exit.i.i519: ; preds = %bb.fa
  %i.ahl = load ptr, ptr %i.ahj, align 8, !tbaa !91, !noalias !1088
  %i.ahm = sub nuw i64 %.0.i.i.i510, %i.ahi
  %i.ahn = icmp ult i64 %i.agj, %i.ahm
  %i.aho = add i64 %i.ahi, %i.agj
  %spec.select1.i520 = select i1 %i.ahn, i64 %i.aho, i64 %.0.i.i.i510
  br label %_ZNK5boost5beast10buffer_refINS0_18basic_multi_bufferISaIcEEEE4dataEv.exit536

._crit_edge.i.i529:                               ; preds = %bb.fc, %bb.ey
  %.1.lcssa.i.i530 = phi i64 [ %i.ahg, %bb.ey ], [ %i.aht, %bb.fc ]
  %.sroa.073.2.lcssa.i.i531 = phi ptr [ %.sroa.073.2115.i.i523, %bb.ey ], [ %.sroa.073.2.i.i528, %bb.fc ]
  %i.ahp = load ptr, ptr %.sroa.073.2.lcssa.i.i531, align 8, !tbaa !91, !noalias !1088
  %spec.select2.i532 = call i64 @llvm.umin.i64(i64 %.1.lcssa.i.i530, i64 %.0.i.i.i510)
  br label %_ZNK5boost5beast10buffer_refINS0_18basic_multi_bufferISaIcEEEE4dataEv.exit536

.lr.ph.i.i524:                                    ; preds = %bb.ey, %bb.fc
  %.sroa.073.2117.i.i525 = phi ptr [ %.sroa.073.2.i.i528, %bb.fc ], [ %.sroa.073.2115.i.i523, %bb.ey ] ; 3 uses
  %.1116.i.i526 = phi i64 [ %i.aht, %bb.fc ], [ %i.ahg, %bb.ey ] ; 3 uses
  %i.ahq = getelementptr inbounds nuw i8, ptr %.sroa.073.2117.i.i525, i64 16
  %i.ahr = load i64, ptr %i.ahq, align 8, !tbaa !89, !noalias !1088 ; 2 uses
  %.not48.i.i527 = icmp ugt i64 %.1116.i.i526, %i.ahr
  br i1 %.not48.i.i527, label %bb.fc, label %bb.fb

bb.fb:                                            ; preds = %.lr.ph.i.i524
  %i.ahs = load ptr, ptr %.sroa.073.2117.i.i525, align 8, !tbaa !91, !noalias !1088
  br label %_ZNK5boost5beast10buffer_refINS0_18basic_multi_bufferISaIcEEEE4dataEv.exit536

bb.fc:                                            ; preds = %.lr.ph.i.i524
  %i.aht = sub nuw i64 %.1116.i.i526, %i.ahr      ; 2 uses
  %.sroa.073.2.i.i528 = load ptr, ptr %.sroa.073.2117.i.i525, align 8, !tbaa !91, !noalias !1088 ; 3 uses
  %i.ahu = icmp eq ptr %.sroa.073.2.i.i528, %i.agp
  br i1 %i.ahu, label %._crit_edge.i.i529, label %.lr.ph.i.i524, !llvm.loop !2

_ZNK5boost5beast10buffer_refINS0_18basic_multi_bufferISaIcEEEE4dataEv.exit536: ; preds = %_ZNK5boost5beast6detail17buffer_bytes_implclINS0_18basic_multi_bufferISaIcEE8subrangeILb0EEEvEEmRKT_.exit507, %bb.ew, %_ZSt4nextIN5boost9intrusive13list_iteratorINS1_8bhtraitsINS0_5beast18basic_multi_bufferISaIcEE7elementENS1_16list_node_traitsIPvEELNS1_14link_mode_typeE0ENS1_7dft_tagELj1EEELb1EEEET_SG_NSt15iterator_traitsISG_E15difference_typeE.exit56.i.i534, %.thread.i.i522, %bb.fa, %_ZSt4nextIN5boost9intrusive13list_iteratorINS1_8bhtraitsINS0_5beast18basic_multi_bufferISaIcEE7elementENS1_16list_node_traitsIPvEELNS1_14link_mode_typeE0ENS1_7dft_tagELj1EEELb1EEEET_SG_NSt15iterator_traitsISG_E15difference_typeE.exit.i.i519, %._crit_edge.i.i529, %bb.fb
  %.sroa.4.0.i515 = phi ptr [ %.sroa.073.0.i.i512, %.thread.i.i522 ], [ %i.ai, %_ZNK5boost5beast6detail17buffer_bytes_implclINS0_18basic_multi_bufferISaIcEE8subrangeILb0EEEvEEmRKT_.exit507 ], [ %i.ai, %bb.ew ], [ %i.ai, %bb.fa ], [ %.sroa.073.0.i.i512, %._crit_edge.i.i529 ], [ %i.agl, %_ZSt4nextIN5boost9intrusive13list_iteratorINS1_8bhtraitsINS0_5beast18basic_multi_bufferISaIcEE7elementENS1_16list_node_traitsIPvEELNS1_14link_mode_typeE0ENS1_7dft_tagELj1EEELb1EEEET_SG_NSt15iterator_traitsISG_E15difference_typeE.exit56.i.i534 ], [ %i.ahj, %_ZSt4nextIN5boost9intrusive13list_iteratorINS1_8bhtraitsINS0_5beast18basic_multi_bufferISaIcEE7elementENS1_16list_node_traitsIPvEELNS1_14link_mode_typeE0ENS1_7dft_tagELj1EEELb1EEEET_SG_NSt15iterator_traitsISG_E15difference_typeE.exit.i.i519 ], [ %.sroa.073.0.i.i512, %bb.fb ]
  %.sroa.23.0.i516 = phi i64 [ %.040.i.i513, %.thread.i.i522 ], [ 0, %_ZNK5boost5beast6detail17buffer_bytes_implclINS0_18basic_multi_bufferISaIcEE8subrangeILb0EEEvEEmRKT_.exit507 ], [ 0, %bb.ew ], [ 0, %bb.fa ], [ %.040.i.i513, %._crit_edge.i.i529 ], [ %i.agk, %_ZSt4nextIN5boost9intrusive13list_iteratorINS1_8bhtraitsINS0_5beast18basic_multi_bufferISaIcEE7elementENS1_16list_node_traitsIPvEELNS1_14link_mode_typeE0ENS1_7dft_tagELj1EEELb1EEEET_SG_NSt15iterator_traitsISG_E15difference_typeE.exit56.i.i534 ], [ %i.ahi, %_ZSt4nextIN5boost9intrusive13list_iteratorINS1_8bhtraitsINS0_5beast18basic_multi_bufferISaIcEE7elementENS1_16list_node_traitsIPvEELNS1_14link_mode_typeE0ENS1_7dft_tagELj1EEELb1EEEET_SG_NSt15iterator_traitsISG_E15difference_typeE.exit.i.i519 ], [ %.040.i.i513, %bb.fb ]
  %.sroa.31.0.i517 = phi i64 [ %i.ahf, %.thread.i.i522 ], [ 0, %_ZNK5boost5beast6detail17buffer_bytes_implclINS0_18basic_multi_bufferISaIcEE8subrangeILb0EEEvEEmRKT_.exit507 ], [ 0, %bb.ew ], [ 0, %bb.fa ], [ %spec.select2.i532, %._crit_edge.i.i529 ], [ %spec.select.i535, %_ZSt4nextIN5boost9intrusive13list_iteratorINS1_8bhtraitsINS0_5beast18basic_multi_bufferISaIcEE7elementENS1_16list_node_traitsIPvEELNS1_14link_mode_typeE0ENS1_7dft_tagELj1EEELb1EEEET_SG_NSt15iterator_traitsISG_E15difference_typeE.exit56.i.i534 ], [ %spec.select1.i520, %_ZSt4nextIN5boost9intrusive13list_iteratorINS1_8bhtraitsINS0_5beast18basic_multi_bufferISaIcEE7elementENS1_16list_node_traitsIPvEELNS1_14link_mode_typeE0ENS1_7dft_tagELj1EEELb1EEEET_SG_NSt15iterator_traitsISG_E15difference_typeE.exit.i.i519 ], [ %.1116.i.i526, %bb.fb ]
  %.sroa.13.0.i518 = phi ptr [ %i.ahe, %.thread.i.i522 ], [ %i.ai, %_ZNK5boost5beast6detail17buffer_bytes_implclINS0_18basic_multi_bufferISaIcEE8subrangeILb0EEEvEEmRKT_.exit507 ], [ %i.ai, %bb.ew ], [ %i.ai, %bb.fa ], [ %i.ahp, %._crit_edge.i.i529 ], [ %i.agw, %_ZSt4nextIN5boost9intrusive13list_iteratorINS1_8bhtraitsINS0_5beast18basic_multi_bufferISaIcEE7elementENS1_16list_node_traitsIPvEELNS1_14link_mode_typeE0ENS1_7dft_tagELj1EEELb1EEEET_SG_NSt15iterator_traitsISG_E15difference_typeE.exit56.i.i534 ], [ %i.ahl, %_ZSt4nextIN5boost9intrusive13list_iteratorINS1_8bhtraitsINS0_5beast18basic_multi_bufferISaIcEE7elementENS1_16list_node_traitsIPvEELNS1_14link_mode_typeE0ENS1_7dft_tagELj1EEELb1EEEET_SG_NSt15iterator_traitsISG_E15difference_typeE.exit.i.i519 ], [ %i.ahs, %bb.fb ]
  store ptr %0, ptr %40, align 8, !tbaa !98, !alias.scope !1088
  %i.ahv = getelementptr inbounds nuw i8, ptr %40, i64 8
  store ptr %.sroa.4.0.i515, ptr %i.ahv, align 8, !tbaa !99, !alias.scope !1088
  %i.ahw = getelementptr inbounds nuw i8, ptr %40, i64 16
  store ptr %.sroa.13.0.i518, ptr %i.ahw, align 8, !tbaa !99, !alias.scope !1088
  %i.ahx = getelementptr inbounds nuw i8, ptr %40, i64 24
  store i64 %.sroa.23.0.i516, ptr %i.ahx, align 8, !tbaa !100, !alias.scope !1088
  %i.ahy = getelementptr inbounds nuw i8, ptr %40, i64 32
  store i64 %.sroa.31.0.i517, ptr %i.ahy, align 8, !tbaa !101, !alias.scope !1088
  call void @_ZN5boost5beast20test_buffer_sequenceINS0_18basic_multi_bufferISaIcEE8subrangeILb0EEEEEvRKT_(ptr noundef nonnull align 8 dereferenceable(40) %40)
  call void @llvm.lifetime.end.p0(ptr nonnull %40) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %39) #31
  br i1 %.not.i409, label %._crit_edge1280, label %.preheader983.lr.ph

.preheader983.lr.ph:                              ; preds = %_ZNK5boost5beast10buffer_refINS0_18basic_multi_bufferISaIcEEEE4dataEv.exit536
  %i.ahz = getelementptr inbounds nuw i8, ptr %41, i64 8 ; 2 uses
  %i.aia = getelementptr inbounds nuw i8, ptr %41, i64 16 ; 2 uses
  %i.aib = getelementptr inbounds nuw i8, ptr %41, i64 32
  %i.aic = getelementptr inbounds nuw i8, ptr %41, i64 24
  %i.aid = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 6 uses
  %i.aie = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %.phi.trans.insert.i.i566 = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 5 uses
  %i.aif = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 4 uses
  %i.aig = getelementptr inbounds nuw i8, ptr %19, i64 16 ; 4 uses
  %i.aih = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 4 uses
  %i.aii = getelementptr inbounds nuw i8, ptr %43, i64 16 ; 10 uses
  %i.aij = getelementptr inbounds nuw i8, ptr %43, i64 8 ; 4 uses
  %i.aik = getelementptr inbounds nuw i8, ptr %42, i64 16 ; 7 uses
  %i.ail = getelementptr inbounds nuw i8, ptr %42, i64 8 ; 2 uses
  %i.aim = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 4 uses
  %i.ain = add nuw nsw i64 %spec.select, 3
  %xtraiter2492 = and i64 %spec.select, 3         ; 3 uses
  %i.aio = icmp ult i64 %i.zh, 4
  %unroll_iter2496 = and i64 %spec.select, 12
  %lcmp.mod2494.not = icmp eq i64 %xtraiter2492, 0
  %lcmp.mod2495 = icmp ne i64 %xtraiter2492, 0
  br label %.preheader983

.preheader983:                                    ; preds = %.preheader983.lr.ph, %bb.fd
  %indvars.iv1537 = phi i64 [ 4, %.preheader983.lr.ph ], [ %indvars.iv.next1538, %bb.fd ] ; 3 uses
  %indvars.iv = phi i64 [ 2, %.preheader983.lr.ph ], [ %indvars.iv.next, %bb.fd ] ; 2 uses
  %.0391279 = phi i64 [ 1, %.preheader983.lr.ph ], [ %i.aiq, %bb.fd ] ; 5 uses
  %.01278 = phi i8 [ 1, %.preheader983.lr.ph ], [ %i.ais, %bb.fd ]
  br label %.preheader.preheader

._crit_edge1280:                                  ; preds = %bb.fd, %_ZNK5boost5beast10buffer_refINS0_18basic_multi_bufferISaIcEEEE4dataEv.exit536
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s) #31
  ret void

.loopexit982:                                     ; preds = %bb.fe
  %indvars.iv.next1535 = add nuw nsw i64 %indvars.iv1534, 1 ; 2 uses
  %exitcond1539 = icmp eq i64 %indvars.iv.next1535, %indvars.iv1537
  br i1 %exitcond1539, label %bb.fd, label %.preheader.preheader, !llvm.loop !1007

.preheader.preheader:                             ; preds = %.loopexit982, %.preheader983
  %indvars.iv1534 = phi i64 [ 3, %.preheader983 ], [ %indvars.iv.next1535, %.loopexit982 ] ; 2 uses
  %storemerge1276 = phi i64 [ 1, %.preheader983 ], [ %i.aip, %.loopexit982 ] ; 2 uses
  %.11275 = phi i8 [ %.01278, %.preheader983 ], [ %i.ais, %.loopexit982 ]
  %i.aip = add nuw nsw i64 %storemerge1276, 1
  br label %.preheader

bb.fd:                                            ; preds = %.loopexit982
  %i.aiq = add nuw nsw i64 %.0391279, 1
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %indvars.iv.next1538 = add nuw nsw i64 %indvars.iv1537, 1
  %exitcond1540.not = icmp eq i64 %indvars.iv1537, %i.ain
  br i1 %exitcond1540.not, label %._crit_edge1280, label %.preheader983, !llvm.loop !1008

.preheader:                                       ; preds = %.preheader.preheader, %bb.fe
  %storemerge521273 = phi i64 [ %i.air, %bb.fe ], [ 1, %.preheader.preheader ] ; 2 uses
  %.21272 = phi i8 [ %i.ais, %bb.fe ], [ %.11275, %.preheader.preheader ]
  br label %.lr.ph.i538.preheader

bb.fe:                                            ; preds = %_ZN5boost5beast9unit_test5suite6expectIbA1_cEEbRKT_RKT0_PKci.exit770
  %i.air = add nuw nsw i64 %storemerge521273, 1   ; 2 uses
  %exitcond1536 = icmp eq i64 %i.air, %indvars.iv1534
  br i1 %exitcond1536, label %.loopexit982, label %.preheader, !llvm.loop !1009

.lr.ph.i538.preheader:                            ; preds = %_ZN5boost5beast9unit_test5suite6expectIbA1_cEEbRKT_RKT0_PKci.exit770, %.preheader
  %.0381270 = phi i64 [ 1, %.preheader ], [ %i.awh, %_ZN5boost5beast9unit_test5suite6expectIbA1_cEEbRKT_RKT0_PKci.exit770 ] ; 3 uses
  %.31269 = phi i8 [ %.21272, %.preheader ], [ %i.ais, %_ZN5boost5beast9unit_test5suite6expectIbA1_cEEbRKT_RKT0_PKci.exit770 ] ; 3 uses
  %i.ais = add i8 %.31269, 1                      ; 4 uses
  br i1 %i.aio, label %.lr.ph.i538.epil.preheader, label %.lr.ph.i538

.lr.ph.i538:                                      ; preds = %.lr.ph.i538.preheader, %.lr.ph.i538
  %.06.i539 = phi i64 [ %i.aje, %.lr.ph.i538 ], [ 0, %.lr.ph.i538.preheader ] ; 5 uses
  %.045.i540 = phi i8 [ %i.ajb, %.lr.ph.i538 ], [ %.31269, %.lr.ph.i538.preheader ] ; 5 uses
  %niter2497 = phi i64 [ %niter2497.next.3, %.lr.ph.i538 ], [ 0, %.lr.ph.i538.preheader ]
  %i.ait = add i8 %.045.i540, 1
  %i.aiu = getelementptr inbounds nuw i8, ptr %i.s, i64 %.06.i539
  store i8 %.045.i540, ptr %i.aiu, align 1, !tbaa !41
  %i.aiv = add i8 %.045.i540, 2
  %i.aiw = getelementptr inbounds nuw i8, ptr %i.s, i64 %.06.i539
  %i.aix = getelementptr inbounds nuw i8, ptr %i.aiw, i64 1
  store i8 %i.ait, ptr %i.aix, align 1, !tbaa !41
  %i.aiy = add i8 %.045.i540, 3
  %i.aiz = getelementptr inbounds nuw i8, ptr %i.s, i64 %.06.i539
  %i.aja = getelementptr inbounds nuw i8, ptr %i.aiz, i64 2
  store i8 %i.aiv, ptr %i.aja, align 1, !tbaa !41
  %i.ajb = add i8 %.045.i540, 4                   ; 2 uses
  %i.ajc = getelementptr inbounds nuw i8, ptr %i.s, i64 %.06.i539
  %i.ajd = getelementptr inbounds nuw i8, ptr %i.ajc, i64 3
  store i8 %i.aiy, ptr %i.ajd, align 1, !tbaa !41
  %i.aje = add nuw nsw i64 %.06.i539, 4           ; 2 uses
  %niter2497.next.3 = add i64 %niter2497, 4       ; 2 uses
  %niter2497.ncmp.3 = icmp eq i64 %niter2497.next.3, %unroll_iter2496
  br i1 %niter2497.ncmp.3, label %_ZZN5boost5beast23test_dynamic_buffer_refINS0_10buffer_refINS0_18basic_multi_bufferISaIcEEEEEEEvT_ENKUlvE_clEv.exit541.unr-lcssa, label %.lr.ph.i538, !llvm.loop !977

_ZZN5boost5beast23test_dynamic_buffer_refINS0_10buffer_refINS0_18basic_multi_bufferISaIcEEEEEEEvT_ENKUlvE_clEv.exit541.unr-lcssa: ; preds = %.lr.ph.i538
  br i1 %lcmp.mod2494.not, label %_ZZN5boost5beast23test_dynamic_buffer_refINS0_10buffer_refINS0_18basic_multi_bufferISaIcEEEEEEEvT_ENKUlvE_clEv.exit541, label %.lr.ph.i538.epil.preheader

.lr.ph.i538.epil.preheader:                       ; preds = %_ZZN5boost5beast23test_dynamic_buffer_refINS0_10buffer_refINS0_18basic_multi_bufferISaIcEEEEEEEvT_ENKUlvE_clEv.exit541.unr-lcssa, %.lr.ph.i538.preheader
  %.06.i539.epil.init = phi i64 [ 0, %.lr.ph.i538.preheader ], [ %i.aje, %_ZZN5boost5beast23test_dynamic_buffer_refINS0_10buffer_refINS0_18basic_multi_bufferISaIcEEEEEEEvT_ENKUlvE_clEv.exit541.unr-lcssa ]
  %.045.i540.epil.init = phi i8 [ %.31269, %.lr.ph.i538.preheader ], [ %i.ajb, %_ZZN5boost5beast23test_dynamic_buffer_refINS0_10buffer_refINS0_18basic_multi_bufferISaIcEEEEEEEvT_ENKUlvE_clEv.exit541.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod2495)
  br label %.lr.ph.i538.epil

.lr.ph.i538.epil:                                 ; preds = %.lr.ph.i538.epil, %.lr.ph.i538.epil.preheader
  %.06.i539.epil = phi i64 [ %i.ajh, %.lr.ph.i538.epil ], [ %.06.i539.epil.init, %.lr.ph.i538.epil.preheader ] ; 2 uses
  %.045.i540.epil = phi i8 [ %i.ajf, %.lr.ph.i538.epil ], [ %.045.i540.epil.init, %.lr.ph.i538.epil.preheader ] ; 2 uses
  %epil.iter2493 = phi i64 [ %epil.iter2493.next, %.lr.ph.i538.epil ], [ 0, %.lr.ph.i538.epil.preheader ]
  %i.ajf = add i8 %.045.i540.epil, 1
  %i.ajg = getelementptr inbounds nuw i8, ptr %i.s, i64 %.06.i539.epil
  store i8 %.045.i540.epil, ptr %i.ajg, align 1, !tbaa !41
  %i.ajh = add nuw nsw i64 %.06.i539.epil, 1
  %epil.iter2493.next = add i64 %epil.iter2493, 1 ; 2 uses
  %epil.iter2493.cmp.not = icmp eq i64 %epil.iter2493.next, %xtraiter2492
  br i1 %epil.iter2493.cmp.not, label %_ZZN5boost5beast23test_dynamic_buffer_refINS0_10buffer_refINS0_18basic_multi_bufferISaIcEEEEEEEvT_ENKUlvE_clEv.exit541, label %.lr.ph.i538.epil, !llvm.loop !1010

_ZZN5boost5beast23test_dynamic_buffer_refINS0_10buffer_refINS0_18basic_multi_bufferISaIcEEEEEEEvT_ENKUlvE_clEv.exit541: ; preds = %.lr.ph.i538.epil, %_ZZN5boost5beast23test_dynamic_buffer_refINS0_10buffer_refINS0_18basic_multi_bufferISaIcEEEEEEEvT_ENKUlvE_clEv.exit541.unr-lcssa
  %i.aji = load i64, ptr %i.z, align 8, !tbaa !82 ; 5 uses
  br label %.lr.ph.i.i545

.lr.ph.i.i545:                                    ; preds = %_ZZN5boost5beast23test_dynamic_buffer_refINS0_10buffer_refINS0_18basic_multi_bufferISaIcEEEEEEEvT_ENKUlvE_clEv.exit541, %_ZN5boost5beast10buffer_refINS0_18basic_multi_bufferISaIcEEEE6commitEm.exit587
  %.sroa.0815.01265 = phi ptr [ %i.s, %_ZZN5boost5beast23test_dynamic_buffer_refINS0_10buffer_refINS0_18basic_multi_bufferISaIcEEEEEEEvT_ENKUlvE_clEv.exit541 ], [ %i.ali, %_ZN5boost5beast10buffer_refINS0_18basic_multi_bufferISaIcEEEE6commitEm.exit587 ] ; 2 uses
  %.sroa.7817.01264 = phi i64 [ %.0391279, %_ZZN5boost5beast23test_dynamic_buffer_refINS0_10buffer_refINS0_18basic_multi_bufferISaIcEEEEEEEvT_ENKUlvE_clEv.exit541 ], [ %i.alj, %_ZN5boost5beast10buffer_refINS0_18basic_multi_bufferISaIcEEEE6commitEm.exit587 ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %41) #31
  %i.ajj = load i64, ptr %0, align 8, !tbaa !83
  %i.ajk = load i64, ptr %i.z, align 8, !tbaa !82
  %i.ajl = sub i64 %i.ajj, %i.ajk
  %.sroa.speculated812 = call i64 @llvm.umin.i64(i64 %i.ajl, i64 %storemerge1276)
  call void @_ZN5boost5beast18basic_multi_bufferISaIcEE7prepareEm(ptr dead_on_unwind nonnull writable sret(%"class.boost::beast::basic_multi_buffer<std::allocator<char>>::subrange.4") align 8 %41, ptr noundef nonnull align 8 dereferenceable(64) %0, i64 noundef %.sroa.speculated812)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.2.i543)
  call void @llvm.experimental.noalias.scope.decl(metadata !1091)
  call void @llvm.experimental.noalias.scope.decl(metadata !1092)
  %i.ajm = load ptr, ptr %i.ahz, align 8, !tbaa !130, !noalias !1093
  store ptr %i.ajm, ptr %.sroa.2.i543, align 8, !tbaa !99, !alias.scope !1093
  %i.ajn = load ptr, ptr %i.aia, align 8, !tbaa !130, !noalias !1094
  %.sroa.speculated = call i64 @llvm.umin.i64(i64 %.sroa.7817.01264, i64 %storemerge521273)
  br label %bb.ff

bb.ff:                                            ; preds = %_ZN5boost4asio6detail13buffer_copy_1ERKNS0_14mutable_bufferERKNS0_12const_bufferE.exit.i.i559, %.lr.ph.i.i545
  %.sroa.5.020.in.i.i546 = phi ptr [ %.sroa.2.i543, %.lr.ph.i.i545 ], [ %.sroa.5.020.i.i550, %_ZN5boost4asio6detail13buffer_copy_1ERKNS0_14mutable_bufferERKNS0_12const_bufferE.exit.i.i559 ]
  %.019.i.i547 = phi i64 [ 0, %.lr.ph.i.i545 ], [ %i.ajz, %_ZN5boost4asio6detail13buffer_copy_1ERKNS0_14mutable_bufferERKNS0_12const_bufferE.exit.i.i559 ] ; 2 uses
  %.sroa.07.018.i.i548 = phi ptr [ %.sroa.0815.01265, %.lr.ph.i.i545 ], [ %i.aka, %_ZN5boost4asio6detail13buffer_copy_1ERKNS0_14mutable_bufferERKNS0_12const_bufferE.exit.i.i559 ] ; 2 uses
  %.sroa.6.017.i.i549 = phi i64 [ %.sroa.speculated, %.lr.ph.i.i545 ], [ %i.akb, %_ZN5boost4asio6detail13buffer_copy_1ERKNS0_14mutable_bufferERKNS0_12const_bufferE.exit.i.i559 ] ; 2 uses
  %.sroa.5.020.i.i550 = load ptr, ptr %.sroa.5.020.in.i.i546, align 8, !tbaa !239 ; 6 uses
  %.not.i551 = icmp eq ptr %.sroa.5.020.i.i550, %i.ajn
  br i1 %.not.i551, label %_ZN5boost4asio11buffer_copyINS_5beast18basic_multi_bufferISaIcEE8subrangeILb1EEENS0_12const_bufferEEEmRKT_RKT0_.exit563.loopexit, label %bb.fg

bb.fg:                                            ; preds = %bb.ff
  %i.ajo = load ptr, ptr %i.aia, align 8, !tbaa !130
  %i.ajp = getelementptr inbounds nuw i8, ptr %i.ajo, i64 8
  %i.ajq = load ptr, ptr %i.ajp, align 8, !tbaa !94
  %i.ajr = icmp eq ptr %.sroa.5.020.i.i550, %i.ajq
  %i.ajs = getelementptr inbounds nuw i8, ptr %.sroa.5.020.i.i550, i64 16
  %.sroa.6.0.in.i.i.i552 = select i1 %i.ajr, ptr %i.aib, ptr %i.ajs
  %.sroa.6.0.i.i.i553 = load i64, ptr %.sroa.6.0.in.i.i.i552, align 8, !tbaa !38 ; 3 uses
  %.sroa.07.0.i.i.i554 = getelementptr inbounds nuw i8, ptr %.sroa.5.020.i.i550, i64 24 ; 2 uses
  %i.ajt = load ptr, ptr %i.ahz, align 8, !tbaa !130
  %i.aju = icmp eq ptr %.sroa.5.020.i.i550, %i.ajt
  br i1 %i.aju, label %bb.fh, label %_ZNK5boost5beast18basic_multi_bufferISaIcEE8subrangeILb1EE14const_iteratordeEv.exit.i.i555

bb.fh:                                            ; preds = %bb.fg
  %i.ajv = load i64, ptr %i.aic, align 8, !tbaa !131
  %..i.i.i.i562 = call i64 @llvm.umin.i64(i64 %i.ajv, i64 %.sroa.6.0.i.i.i553) ; 2 uses
  %i.ajw = getelementptr inbounds nuw i8, ptr %.sroa.07.0.i.i.i554, i64 %..i.i.i.i562
  %i.ajx = sub i64 %.sroa.6.0.i.i.i553, %..i.i.i.i562
  br label %_ZNK5boost5beast18basic_multi_bufferISaIcEE8subrangeILb1EE14const_iteratordeEv.exit.i.i555

_ZNK5boost5beast18basic_multi_bufferISaIcEE8subrangeILb1EE14const_iteratordeEv.exit.i.i555: ; preds = %bb.fh, %bb.fg
  %.sroa.07.1.i.i.i556 = phi ptr [ %i.ajw, %bb.fh ], [ %.sroa.07.0.i.i.i554, %bb.fg ]
  %.sroa.6.1.i.i.i557 = phi i64 [ %i.ajx, %bb.fh ], [ %.sroa.6.0.i.i.i553, %bb.fg ] ; 2 uses
  %i.ajy = call i64 @llvm.umin.i64(i64 %.sroa.6.1.i.i.i557, i64 %.sroa.6.017.i.i549) ; 4 uses
  %.not.i.i.i558 = icmp eq i64 %.sroa.6.1.i.i.i557, 0
  br i1 %.not.i.i.i558, label %_ZN5boost4asio6detail13buffer_copy_1ERKNS0_14mutable_bufferERKNS0_12const_bufferE.exit.i.i559, label %bb.fi

bb.fi:                                            ; preds = %_ZNK5boost5beast18basic_multi_bufferISaIcEE8subrangeILb1EE14const_iteratordeEv.exit.i.i555
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.sroa.07.1.i.i.i556, ptr align 1 %.sroa.07.018.i.i548, i64 %i.ajy, i1 false)
  br label %_ZN5boost4asio6detail13buffer_copy_1ERKNS0_14mutable_bufferERKNS0_12const_bufferE.exit.i.i559

_ZN5boost4asio6detail13buffer_copy_1ERKNS0_14mutable_bufferERKNS0_12const_bufferE.exit.i.i559: ; preds = %bb.fi, %_ZNK5boost5beast18basic_multi_bufferISaIcEE8subrangeILb1EE14const_iteratordeEv.exit.i.i555
  %i.ajz = add i64 %i.ajy, %.019.i.i547           ; 2 uses
  %i.aka = getelementptr inbounds nuw i8, ptr %.sroa.07.018.i.i548, i64 %i.ajy
  %i.akb = sub nuw i64 %.sroa.6.017.i.i549, %i.ajy ; 2 uses
  %.not.i.i560 = icmp eq i64 %i.akb, 0
  br i1 %.not.i.i560, label %_ZN5boost4asio11buffer_copyINS_5beast18basic_multi_bufferISaIcEE8subrangeILb1EEENS0_12const_bufferEEEmRKT_RKT0_.exit563.loopexit, label %bb.ff, !llvm.loop !19

_ZN5boost4asio11buffer_copyINS_5beast18basic_multi_bufferISaIcEE8subrangeILb1EEENS0_12const_bufferEEEmRKT_RKT0_.exit563.loopexit: ; preds = %_ZN5boost4asio6detail13buffer_copy_1ERKNS0_14mutable_bufferERKNS0_12const_bufferE.exit.i.i559, %bb.ff
  %.0.lcssa.i.i561.ph = phi i64 [ %i.ajz, %_ZN5boost4asio6detail13buffer_copy_1ERKNS0_14mutable_bufferERKNS0_12const_bufferE.exit.i.i559 ], [ %.019.i.i547, %bb.ff ] ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.2.i543)
  %i.akc = load ptr, ptr %i.ai, align 8, !tbaa !91 ; 2 uses
  %.not.i.i.i.i564 = icmp eq ptr %i.akc, null
  %i.akd = icmp eq ptr %i.akc, %i.ai
  %i.ake = or i1 %.not.i.i.i.i564, %i.akd
  br i1 %i.ake, label %_ZN5boost5beast10buffer_refINS0_18basic_multi_bufferISaIcEEEE6commitEm.exit587, label %bb.fj

bb.fj:                                            ; preds = %_ZN5boost4asio11buffer_copyINS_5beast18basic_multi_bufferISaIcEE8subrangeILb1EEENS0_12const_bufferEEEmRKT_RKT0_.exit563.loopexit
  %i.akf = load ptr, ptr %i.aid, align 8, !tbaa !84 ; 5 uses
  %i.akg = icmp eq ptr %i.akf, %i.ai
  br i1 %i.akg, label %_ZN5boost5beast10buffer_refINS0_18basic_multi_bufferISaIcEEEE6commitEm.exit587, label %bb.fk

bb.fk:                                            ; preds = %bb.fj
  %i.akh = load ptr, ptr %i.aie, align 8, !tbaa !94 ; 3 uses
  %.not1419.i.i565 = icmp eq ptr %i.akf, %i.akh
  %.pre.i.i584 = load i64, ptr %.phi.trans.insert.i.i566, align 8, !tbaa !90 ; 3 uses
  %.pre31.i.i586 = load i64, ptr %i.z, align 8    ; 3 uses
  br i1 %.not1419.i.i565, label %._crit_edge.i.i576, label %.lr.ph.i.i567

.lr.ph.i.i567:                                    ; preds = %bb.fk
  %i.aki = getelementptr inbounds nuw i8, ptr %i.akf, i64 16
  %i.akj = load i64, ptr %i.aki, align 8, !tbaa !89
  %i.akk = sub i64 %i.akj, %.pre.i.i584           ; 3 uses
  %.not.peel.i.i570 = icmp ult i64 %.0.lcssa.i.i561.ph, %i.akk
  br i1 %.not.peel.i.i570, label %.thread.i.i580, label %bb.fl

bb.fl:                                            ; preds = %.lr.ph.i.i567
  %i.akl = load ptr, ptr %i.akf, align 8, !tbaa !91 ; 4 uses
  store ptr %i.akl, ptr %i.aid, align 8, !tbaa !84
  %i.akm = sub nuw i64 %.0.lcssa.i.i561.ph, %i.akk ; 2 uses
  %i.akn = add i64 %i.akk, %.pre31.i.i586         ; 2 uses
  %.not14.peel.i.i571 = icmp eq ptr %i.akl, %i.akh
  br i1 %.not14.peel.i.i571, label %._crit_edge.i.i576, label %.peel.next.i.i572

.peel.next.i.i572:                                ; preds = %bb.fl, %bb.fm
  %i.ako = phi i64 [ %i.akx, %bb.fm ], [ %i.akn, %bb.fl ] ; 2 uses
  %.020.i.i573 = phi i64 [ %i.akw, %bb.fm ], [ %i.akm, %bb.fl ] ; 3 uses
  %i.akp = phi ptr [ %i.akv, %bb.fm ], [ %i.akl, %bb.fl ] ; 2 uses
  %i.akq = getelementptr inbounds nuw i8, ptr %i.akp, i64 16
  %i.akr = load i64, ptr %i.akq, align 8, !tbaa !89 ; 3 uses
  %.not.i.i574 = icmp ult i64 %.020.i.i573, %i.akr
  br i1 %.not.i.i574, label %.thread.i.i580, label %bb.fm

.thread.i.i580:                                   ; preds = %.peel.next.i.i572, %.lr.ph.i.i567
  %i.aks = phi i64 [ %.pre31.i.i586, %.lr.ph.i.i567 ], [ %i.ako, %.peel.next.i.i572 ]
  %.lcssa25.i.i581 = phi i64 [ %.pre.i.i584, %.lr.ph.i.i567 ], [ 0, %.peel.next.i.i572 ]
  %.020.lcssa.i.i582 = phi i64 [ %.0.lcssa.i.i561.ph, %.lr.ph.i.i567 ], [ %.020.i.i573, %.peel.next.i.i572 ] ; 2 uses
  %i.akt = add i64 %.020.lcssa.i.i582, %.lcssa25.i.i581
  store i64 %i.akt, ptr %.phi.trans.insert.i.i566, align 8, !tbaa !90
  %i.aku = add i64 %.020.lcssa.i.i582, %i.aks
  store i64 %i.aku, ptr %i.z, align 8, !tbaa !82
  br label %_ZN5boost5beast10buffer_refINS0_18basic_multi_bufferISaIcEEEE6commitEm.exit587

bb.fm:                                            ; preds = %.peel.next.i.i572
  %i.akv = load ptr, ptr %i.akp, align 8, !tbaa !91 ; 4 uses
  store ptr %i.akv, ptr %i.aid, align 8, !tbaa !84
  %i.akw = sub nuw i64 %.020.i.i573, %i.akr       ; 2 uses
  %i.akx = add i64 %i.akr, %i.ako                 ; 2 uses
  %.not14.i.i575 = icmp eq ptr %i.akv, %i.akh
  br i1 %.not14.i.i575, label %._crit_edge.i.i576, label %.peel.next.i.i572, !llvm.loop !4

._crit_edge.i.i576:                               ; preds = %bb.fm, %bb.fk, %bb.fl
  %i.aky = phi i64 [ %.pre31.i.i586, %bb.fk ], [ %i.akn, %bb.fl ], [ %i.akx, %bb.fm ]
  %i.akz = phi i64 [ %.pre.i.i584, %bb.fk ], [ 0, %bb.fl ], [ 0, %bb.fm ] ; 2 uses
  %.0.lcssa.i.i577 = phi i64 [ %.0.lcssa.i.i561.ph, %bb.fk ], [ %i.akm, %bb.fl ], [ %i.akw, %bb.fm ]
  %.lcssa.i.i578 = phi ptr [ %i.akf, %bb.fk ], [ %i.akl, %bb.fl ], [ %i.akv, %bb.fm ] ; 2 uses
  %i.ala = load i64, ptr %i.aif, align 8, !tbaa !95
  %i.alb = sub i64 %i.ala, %i.akz
  %.sroa.speculated.i.i579 = call i64 @llvm.umin.i64(i64 %i.alb, i64 %.0.lcssa.i.i577) ; 2 uses
  %i.alc = add i64 %.sroa.speculated.i.i579, %i.akz ; 2 uses
  store i64 %i.alc, ptr %.phi.trans.insert.i.i566, align 8, !tbaa !90
end_hunk_3
