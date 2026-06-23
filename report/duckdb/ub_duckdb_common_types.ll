inline.NumInlined: 41205
inline.NumDeleted: 6297
begin_hunk_0_@_ZN6duckdb6Vector7FlattenEm:bb.a
  store <2 x double> %broadcast.splat, ptr %i.hj, align 8, !tbaa !541
  store <2 x double> %broadcast.splat, ptr %i.hk, align 8, !tbaa !541
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.hl = icmp eq i64 %index.next, %n.vec
  br i1 %i.hl, label %middle.block, label %vector.body, !llvm.loop !624

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.hi, %n.vec
  br i1 %cmp.n, label %_ZN6duckdbL30TemplatedFlattenConstantVectorIbEEvPhS1_m.exit, label %.lr.ph.i184.preheader603

.lr.ph.i184.preheader603:                         ; preds = %.lr.ph.i184.preheader, %middle.block
  %.01.i185.ph = phi i64 [ 0, %.lr.ph.i184.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph.i184

.lr.ph.i184:                                      ; preds = %.lr.ph.i184.preheader603, %.lr.ph.i184
  %.01.i185 = phi i64 [ %i.hn, %.lr.ph.i184 ], [ %.01.i185.ph, %.lr.ph.i184.preheader603 ] ; 2 uses
  %i.hm = getelementptr inbounds nuw [8 x i8], ptr %i.ds, i64 %.01.i185
  store double %.val121, ptr %i.hm, align 8, !tbaa !541
  %i.hn = add nuw i64 %.01.i185, 1                ; 2 uses
  %exitcond.not.i186 = icmp eq i64 %i.hn, %i.hi
  br i1 %exitcond.not.i186, label %_ZN6duckdbL30TemplatedFlattenConstantVectorIbEEvPhS1_m.exit, label %.lr.ph.i184, !llvm.loop !625

bb.bf:                                            ; preds = %bb.ar
  %i.ho = load i64, ptr %i.c, align 8, !tbaa !108 ; 4 uses
  %i.hp = load <2 x i64>, ptr %i.bp, align 1      ; 5 uses
  %.not.i187 = icmp eq i64 %i.ho, 0
  br i1 %.not.i187, label %_ZN6duckdbL30TemplatedFlattenConstantVectorIbEEvPhS1_m.exit, label %.lr.ph.i188.preheader

.lr.ph.i188.preheader:                            ; preds = %bb.bf
  %xtraiter631 = and i64 %i.ho, 3                 ; 3 uses
  %i.hq = icmp ult i64 %i.ho, 4
  br i1 %i.hq, label %.lr.ph.i188.epil.preheader, label %.lr.ph.i188.preheader.new

.lr.ph.i188.preheader.new:                        ; preds = %.lr.ph.i188.preheader
  %unroll_iter635 = and i64 %i.ho, -4
  br label %.lr.ph.i188

.lr.ph.i188:                                      ; preds = %.lr.ph.i188, %.lr.ph.i188.preheader.new
  %.01.i189 = phi i64 [ 0, %.lr.ph.i188.preheader.new ], [ %i.hy, %.lr.ph.i188 ] ; 5 uses
  %niter636 = phi i64 [ 0, %.lr.ph.i188.preheader.new ], [ %niter636.next.3, %.lr.ph.i188 ]
  %i.hr = getelementptr inbounds nuw [16 x i8], ptr %i.ds, i64 %.01.i189
  store <2 x i64> %i.hp, ptr %i.hr, align 8
  %i.hs = getelementptr inbounds nuw [16 x i8], ptr %i.ds, i64 %.01.i189
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hs, i64 16
  store <2 x i64> %i.hp, ptr %i.ht, align 8
  %i.hu = getelementptr inbounds nuw [16 x i8], ptr %i.ds, i64 %.01.i189
  %i.hv = getelementptr inbounds nuw i8, ptr %i.hu, i64 32
  store <2 x i64> %i.hp, ptr %i.hv, align 8
  %i.hw = getelementptr inbounds nuw [16 x i8], ptr %i.ds, i64 %.01.i189
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hw, i64 48
  store <2 x i64> %i.hp, ptr %i.hx, align 8
  %i.hy = add nuw i64 %.01.i189, 4                ; 2 uses
  %niter636.next.3 = add i64 %niter636, 4         ; 2 uses
  %niter636.ncmp.3 = icmp eq i64 %niter636.next.3, %unroll_iter635
  br i1 %niter636.ncmp.3, label %_ZN6duckdbL30TemplatedFlattenConstantVectorIbEEvPhS1_m.exit.loopexit605.unr-lcssa, label %.lr.ph.i188, !llvm.loop !626

bb.bg:                                            ; preds = %bb.ar
  %i.hz = load i64, ptr %i.c, align 8, !tbaa !108 ; 4 uses
  %.val124 = load i64, ptr %i.bp, align 1         ; 5 uses
  %i.ia = getelementptr i8, ptr %i.bp, i64 8
  %.val125 = load ptr, ptr %i.ia, align 1         ; 5 uses
  %.not.i192 = icmp eq i64 %i.hz, 0
  br i1 %.not.i192, label %_ZN6duckdbL30TemplatedFlattenConstantVectorIbEEvPhS1_m.exit, label %.lr.ph.i193.preheader

.lr.ph.i193.preheader:                            ; preds = %bb.bg
  %xtraiter625 = and i64 %i.hz, 3                 ; 3 uses
  %i.ib = icmp ult i64 %i.hz, 4
  br i1 %i.ib, label %.lr.ph.i193.epil.preheader, label %.lr.ph.i193.preheader.new

.lr.ph.i193.preheader.new:                        ; preds = %.lr.ph.i193.preheader
  %unroll_iter629 = and i64 %i.hz, -4
  br label %.lr.ph.i193

.lr.ph.i193:                                      ; preds = %.lr.ph.i193, %.lr.ph.i193.preheader.new
  %.01.i194 = phi i64 [ 0, %.lr.ph.i193.preheader.new ], [ %i.ij, %.lr.ph.i193 ] ; 5 uses
  %niter630 = phi i64 [ 0, %.lr.ph.i193.preheader.new ], [ %niter630.next.3, %.lr.ph.i193 ]
  %i.ic = getelementptr inbounds nuw [16 x i8], ptr %i.ds, i64 %.01.i194 ; 2 uses
  store i64 %.val124, ptr %i.ic, align 8
  %.sroa.4.0..sroa_idx.i195 = getelementptr inbounds nuw i8, ptr %i.ic, i64 8
  store ptr %.val125, ptr %.sroa.4.0..sroa_idx.i195, align 8, !tbaa !153
  %i.id = getelementptr inbounds nuw [16 x i8], ptr %i.ds, i64 %.01.i194 ; 2 uses
  %i.ie = getelementptr inbounds nuw i8, ptr %i.id, i64 16
  store i64 %.val124, ptr %i.ie, align 8
  %.sroa.4.0..sroa_idx.i195.1 = getelementptr inbounds nuw i8, ptr %i.id, i64 24
  store ptr %.val125, ptr %.sroa.4.0..sroa_idx.i195.1, align 8, !tbaa !153
  %i.if = getelementptr inbounds nuw [16 x i8], ptr %i.ds, i64 %.01.i194 ; 2 uses
  %i.ig = getelementptr inbounds nuw i8, ptr %i.if, i64 32
  store i64 %.val124, ptr %i.ig, align 8
  %.sroa.4.0..sroa_idx.i195.2 = getelementptr inbounds nuw i8, ptr %i.if, i64 40
  store ptr %.val125, ptr %.sroa.4.0..sroa_idx.i195.2, align 8, !tbaa !153
  %i.ih = getelementptr inbounds nuw [16 x i8], ptr %i.ds, i64 %.01.i194 ; 2 uses
  %i.ii = getelementptr inbounds nuw i8, ptr %i.ih, i64 48
  store i64 %.val124, ptr %i.ii, align 8
  %.sroa.4.0..sroa_idx.i195.3 = getelementptr inbounds nuw i8, ptr %i.ih, i64 56
  store ptr %.val125, ptr %.sroa.4.0..sroa_idx.i195.3, align 8, !tbaa !153
  %i.ij = add nuw i64 %.01.i194, 4                ; 2 uses
  %niter630.next.3 = add i64 %niter630, 4         ; 2 uses
  %niter630.ncmp.3 = icmp eq i64 %niter630.next.3, %unroll_iter629
  br i1 %niter630.ncmp.3, label %_ZN6duckdbL30TemplatedFlattenConstantVectorIbEEvPhS1_m.exit.loopexit606.unr-lcssa, label %.lr.ph.i193, !llvm.loop !627

bb.bh:                                            ; preds = %bb.ar
  %i.ik = load i64, ptr %i.c, align 8, !tbaa !108 ; 4 uses
  %i.il = load <2 x i64>, ptr %i.bp, align 1      ; 5 uses
  %.not.i197 = icmp eq i64 %i.ik, 0
  br i1 %.not.i197, label %_ZN6duckdbL30TemplatedFlattenConstantVectorIbEEvPhS1_m.exit, label %.lr.ph.i198.preheader

.lr.ph.i198.preheader:                            ; preds = %bb.bh
  %xtraiter = and i64 %i.ik, 3                    ; 3 uses
  %i.im = icmp ult i64 %i.ik, 4
  br i1 %i.im, label %.lr.ph.i198.epil.preheader, label %.lr.ph.i198.preheader.new

.lr.ph.i198.preheader.new:                        ; preds = %.lr.ph.i198.preheader
  %unroll_iter = and i64 %i.ik, -4
  br label %.lr.ph.i198

.lr.ph.i198:                                      ; preds = %.lr.ph.i198, %.lr.ph.i198.preheader.new
  %.01.i199 = phi i64 [ 0, %.lr.ph.i198.preheader.new ], [ %i.iu, %.lr.ph.i198 ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph.i198.preheader.new ], [ %niter.next.3, %.lr.ph.i198 ]
  %i.in = getelementptr inbounds nuw [16 x i8], ptr %i.ds, i64 %.01.i199
  store <2 x i64> %i.il, ptr %i.in, align 8, !tbaa !108
  %i.io = getelementptr inbounds nuw [16 x i8], ptr %i.ds, i64 %.01.i199
  %i.ip = getelementptr inbounds nuw i8, ptr %i.io, i64 16
  store <2 x i64> %i.il, ptr %i.ip, align 8, !tbaa !108
  %i.iq = getelementptr inbounds nuw [16 x i8], ptr %i.ds, i64 %.01.i199
  %i.ir = getelementptr inbounds nuw i8, ptr %i.iq, i64 32
  store <2 x i64> %i.il, ptr %i.ir, align 8, !tbaa !108
  %i.is = getelementptr inbounds nuw [16 x i8], ptr %i.ds, i64 %.01.i199
  %i.it = getelementptr inbounds nuw i8, ptr %i.is, i64 48
  store <2 x i64> %i.il, ptr %i.it, align 8, !tbaa !108
  %i.iu = add nuw i64 %.01.i199, 4                ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %_ZN6duckdbL30TemplatedFlattenConstantVectorIbEEvPhS1_m.exit.loopexit607.unr-lcssa, label %.lr.ph.i198, !llvm.loop !628

.thread:                                          ; preds = %bb.al, %bb.ar
  %i.iv = invoke noundef nonnull align 8 dereferenceable(104) ptr @_ZN6duckdb11ArrayVector8GetEntryERNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %.tr)
          to label %bb.bi unwind label %bb.bp

bb.bi:                                            ; preds = %.thread
  %i.iw = invoke noundef i64 @_ZN6duckdb9ArrayType7GetSizeERKNS_11LogicalTypeE(ptr noundef nonnull align 8 dereferenceable(24) %i.bq)
          to label %bb.bj unwind label %bb.bq     ; 8 uses

bb.bj:                                            ; preds = %bb.bi
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #46
  invoke void @_ZN6duckdb9make_uniqINS_17VectorArrayBufferEJRKNS_11LogicalTypeERmEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::unique_ptr.911") align 8 %8, ptr noundef nonnull align 8 dereferenceable(24) %i.bq, ptr noundef nonnull align 8 dereferenceable(8) %i.c)
          to label %bb.bk unwind label %bb.br

bb.bk:                                            ; preds = %bb.bj
  %i.ix = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_17VectorArrayBufferESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %8)
          to label %bb.bl unwind label %bb.bs

bb.bl:                                            ; preds = %bb.bk
  %i.iy = getelementptr inbounds nuw i8, ptr %i.ix, i64 48
  %i.iz = invoke noundef nonnull align 8 dereferenceable(104) ptr @_ZNK6duckdb10unique_ptrINS_6VectorESt14default_deleteIS1_ELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.iy)
          to label %_ZN6duckdb17VectorArrayBuffer8GetChildEv.exit unwind label %bb.bs ; 4 uses

_ZN6duckdb17VectorArrayBuffer8GetChildEv.exit:    ; preds = %bb.bl
  br i1 %.0.i.i, label %bb.bm, label %bb.bt

bb.bm:                                            ; preds = %_ZN6duckdb17VectorArrayBuffer8GetChildEv.exit
  %i.ja = load i64, ptr %i.c, align 8, !tbaa !108
  invoke void @_ZN6duckdb21TemplatedValidityMaskImE13SetAllInvalidEm(ptr noundef nonnull align 8 dereferenceable(32) %i.bf, i64 noundef %i.ja)
          to label %bb.bn unwind label %bb.bs

bb.bn:                                            ; preds = %bb.bm
  %i.jb = getelementptr inbounds nuw i8, ptr %i.iz, i64 40
  %i.jc = load i64, ptr %i.c, align 8, !tbaa !108
  %i.jd = mul i64 %i.jc, %i.iw
  invoke void @_ZN6duckdb21TemplatedValidityMaskImE13SetAllInvalidEm(ptr noundef nonnull align 8 dereferenceable(32) %i.jb, i64 noundef %i.jd)
          to label %bb.bo unwind label %bb.bs

bb.bo:                                            ; preds = %bb.bn
  %i.je = load i64, ptr %i.c, align 8, !tbaa !108
  %i.jf = mul i64 %i.je, %i.iw
  invoke void @_ZN6duckdb6Vector7FlattenEm(ptr noundef nonnull align 8 dereferenceable(104) %i.iz, i64 noundef %i.jf)
          to label %bb.bt unwind label %bb.bs

bb.bp:                                            ; preds = %.thread
  %i.jg = landingpad { ptr, i32 }
          cleanup
  br label %bb.dp

bb.bq:                                            ; preds = %bb.bi
  %i.jh = landingpad { ptr, i32 }
          cleanup
  br label %bb.dp

bb.br:                                            ; preds = %bb.bj
  %i.ji = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN6duckdb17VectorArrayBufferESt14default_deleteIS1_EED2Ev.exit208

bb.bs:                                            ; preds = %bb.bl, %bb.bo, %bb.bn, %bb.bm, %bb.bk
  %i.jj = landingpad { ptr, i32 }
          cleanup
  br label %bb.cj

bb.bt:                                            ; preds = %bb.bo, %_ZN6duckdb17VectorArrayBuffer8GetChildEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #46
  invoke void @_ZN6duckdb9make_uniqINS_6VectorEJRS1_EEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::unique_ptr.238") align 8 %9, ptr noundef nonnull align 8 dereferenceable(104) %i.iv)
          to label %bb.bu unwind label %25

bb.bu:                                            ; preds = %bb.bt
  %i.jk = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_6VectorESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %9)
          to label %bb.bv unwind label %27

bb.bv:                                            ; preds = %bb.bu
  %i.jl = load i64, ptr %i.c, align 8, !tbaa !108
  %i.jm = mul i64 %i.jl, %i.iw
  invoke void @_ZN6duckdb6Vector7FlattenEm(ptr noundef nonnull align 8 dereferenceable(104) %i.jk, i64 noundef %i.jm)
          to label %bb.bw unwind label %27

bb.bw:                                            ; preds = %bb.bv
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #46
  %i.jn = load i64, ptr %i.c, align 8, !tbaa !108
  %i.jo = mul i64 %i.jn, %i.iw
  invoke void @_ZN6duckdb15SelectionVectorC2Em(ptr noundef nonnull align 8 dereferenceable(24) %10, i64 noundef %i.jo)
          to label %.preheader264 unwind label %29

.preheader264:                                    ; preds = %bb.bw
  %i.jp = load i64, ptr %i.c, align 8, !tbaa !108
  %.not312 = icmp eq i64 %i.jp, 0
  %.not313 = icmp eq i64 %i.iw, 0
  %or.cond = or i1 %.not312, %.not313
  br i1 %or.cond, label %._crit_edge308, label %.preheader.us

.preheader.us:                                    ; preds = %.preheader264, %._crit_edge306.us
  %.081307.us = phi i64 [ %20, %._crit_edge306.us ], [ 0, %.preheader264 ] ; 2 uses
  %i.jq = mul i64 %.081307.us, %i.iw
  br label %bb.bx

bb.bx:                                            ; preds = %.preheader.us, %_ZN6duckdb10FlatVector6IsNullERKNS_6VectorEm.exit.thread.us
  %.082304.us = phi i64 [ 0, %.preheader.us ], [ %i.kf, %_ZN6duckdb10FlatVector6IsNullERKNS_6VectorEm.exit.thread.us ] ; 5 uses
  %i.jr = add i64 %.082304.us, %i.jq              ; 2 uses
  %i.js = invoke noundef nonnull align 8 dereferenceable(104) ptr @_ZNK6duckdb10unique_ptrINS_6VectorESt14default_deleteIS1_ELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %9)
          to label %bb.by unwind label %.split.us

bb.by:                                            ; preds = %bb.bx
  %i.jt = getelementptr inbounds nuw i8, ptr %i.js, i64 40
  %i.ju = load ptr, ptr %i.jt, align 8, !tbaa !519 ; 2 uses
  %.not.i.i203.us = icmp eq ptr %i.ju, null
  br i1 %.not.i.i203.us, label %_ZN6duckdb10FlatVector6IsNullERKNS_6VectorEm.exit.thread.us, label %_ZN6duckdb10FlatVector6IsNullERKNS_6VectorEm.exit.us

_ZN6duckdb10FlatVector6IsNullERKNS_6VectorEm.exit.us: ; preds = %bb.by
  %i.jv = lshr i64 %.082304.us, 6
  %i.jw = and i64 %.082304.us, 63
  %i.jx = getelementptr inbounds nuw [8 x i8], ptr %i.ju, i64 %i.jv
  %i.jy = load i64, ptr %i.jx, align 8, !tbaa !108
  %i.jz = shl nuw i64 1, %i.jw
  %i.ka = and i64 %i.jy, %i.jz
  %i.kb = icmp eq i64 %i.ka, 0
  br i1 %i.kb, label %bb.bz, label %_ZN6duckdb10FlatVector6IsNullERKNS_6VectorEm.exit.thread.us

bb.bz:                                            ; preds = %_ZN6duckdb10FlatVector6IsNullERKNS_6VectorEm.exit.us
  invoke void @_ZN6duckdb10FlatVector7SetNullERNS_6VectorEmb(ptr noundef nonnull align 8 dereferenceable(104) %i.iz, i64 noundef %i.jr, i1 noundef zeroext true)
          to label %_ZN6duckdb10FlatVector6IsNullERKNS_6VectorEm.exit.thread.us unwind label %.split.us

_ZN6duckdb10FlatVector6IsNullERKNS_6VectorEm.exit.thread.us: ; preds = %bb.bz, %_ZN6duckdb10FlatVector6IsNullERKNS_6VectorEm.exit.us, %bb.by
  %i.kc = trunc i64 %.082304.us to i32
  %i.kd = load ptr, ptr %10, align 8, !tbaa !389
  %i.ke = getelementptr inbounds nuw [4 x i8], ptr %i.kd, i64 %i.jr
  store i32 %i.kc, ptr %i.ke, align 4, !tbaa !3
  %i.kf = add nuw i64 %.082304.us, 1              ; 2 uses
  %exitcond.not = icmp eq i64 %i.kf, %i.iw
  br i1 %exitcond.not, label %._crit_edge306.us, label %bb.bx, !llvm.loop !629

._crit_edge306.us:                                ; preds = %_ZN6duckdb10FlatVector6IsNullERKNS_6VectorEm.exit.thread.us
  %20 = add nuw i64 %.081307.us, 1                ; 2 uses
  %21 = load i64, ptr %i.c, align 8, !tbaa !108
  %22 = icmp ult i64 %20, %21
  br i1 %22, label %.preheader.us, label %._crit_edge308, !llvm.loop !630

.split.us:                                        ; preds = %bb.bz, %bb.bx
  %23 = landingpad { ptr, i32 }
          cleanup
  br label %bb.cf

._crit_edge308:                                   ; preds = %._crit_edge306.us, %.preheader264
  %24 = invoke noundef nonnull align 8 dereferenceable(104) ptr @_ZNK6duckdb10unique_ptrINS_6VectorESt14default_deleteIS1_ELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %9)
          to label %bb.ca unwind label %bb.cd

25:                                               ; preds = %bb.bt
  %26 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ci

27:                                               ; preds = %bb.bv, %bb.bu
  %28 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ch

29:                                               ; preds = %bb.bw
  %30 = landingpad { ptr, i32 }
          cleanup
  br label %bb.cg

bb.ca:                                            ; preds = %._crit_edge308
  %i.kg = load i64, ptr %i.c, align 8, !tbaa !108
  %i.kh = mul i64 %i.kg, %i.iw
  invoke void @_ZN6duckdb16VectorOperations4CopyERKNS_6VectorERS1_RKNS_15SelectionVectorEmmm(ptr noundef nonnull align 8 dereferenceable(104) %24, ptr noundef nonnull align 8 dereferenceable(104) %i.iz, ptr noundef nonnull align 8 dereferenceable(24) %10, i64 noundef %i.kh, i64 noundef 0, i64 noundef 0)
          to label %bb.cb unwind label %bb.cd

bb.cb:                                            ; preds = %bb.ca
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #46
  %i.ki = load ptr, ptr %8, align 8, !tbaa !631
  store ptr null, ptr %8, align 8, !tbaa !631
  invoke void @_ZN6duckdb10shared_ptrINS_12VectorBufferELb1EEC2INS_17VectorArrayBufferETnNSt9enable_ifIXsr17compatible_with_tIT_S1_EE5valueEiE4typeELi0EEEPS6_(ptr noundef nonnull align 8 dereferenceable(16) %11, ptr noundef %i.ki)
          to label %bb.cc unwind label %bb.ce

bb.cc:                                            ; preds = %bb.cb
  %i.kj = getelementptr inbounds nuw i8, ptr %.tr, i64 88
  %i.kk = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN6duckdb10shared_ptrINS_12VectorBufferELb1EEaSEOS2_(ptr noundef nonnull align 8 dereferenceable(16) %i.kj, ptr noundef nonnull align 8 dereferenceable(16) %11) #46 ; 0 uses
  call void @_ZN6duckdb10shared_ptrINS_12VectorBufferELb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %11) #46
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #46
  call void @_ZN6duckdb15SelectionVectorD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %10) #46
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #46
  call void @_ZNSt10unique_ptrIN6duckdb6VectorESt14default_deleteIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(8) %9) #46
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #46
  %i.kl = load ptr, ptr %8, align 8, !tbaa !631   ; 3 uses
  %.not.i205 = icmp eq ptr %i.kl, null
  br i1 %.not.i205, label %_ZNSt10unique_ptrIN6duckdb17VectorArrayBufferESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN6duckdb17VectorArrayBufferEEclEPS1_.exit.i

_ZNKSt14default_deleteIN6duckdb17VectorArrayBufferEEclEPS1_.exit.i: ; preds = %bb.cc
  %i.km = load ptr, ptr %i.kl, align 8, !tbaa !412
  %i.kn = getelementptr inbounds nuw i8, ptr %i.km, i64 8
  %i.ko = load ptr, ptr %i.kn, align 8
  call void %i.ko(ptr noundef nonnull align 8 dereferenceable(72) %i.kl) #46, !inline_history !633
  br label %_ZNSt10unique_ptrIN6duckdb17VectorArrayBufferESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb17VectorArrayBufferESt14default_deleteIS1_EED2Ev.exit: ; preds = %bb.cc, %_ZNKSt14default_deleteIN6duckdb17VectorArrayBufferEEclEPS1_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #46
  br label %_ZN6duckdbL30TemplatedFlattenConstantVectorIbEEvPhS1_m.exit

bb.cd:                                            ; preds = %bb.ca, %._crit_edge308
  %i.kp = landingpad { ptr, i32 }
          cleanup
  br label %bb.cf

bb.ce:                                            ; preds = %bb.cb
  %i.kq = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #46
  br label %bb.cf

bb.cf:                                            ; preds = %bb.ce, %bb.cd, %.split.us
  %.pn89 = phi { ptr, i32 } [ %23, %.split.us ], [ %i.kq, %bb.ce ], [ %i.kp, %bb.cd ]
  call void @_ZN6duckdb15SelectionVectorD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %10) #46
  br label %bb.cg

bb.cg:                                            ; preds = %bb.cf, %29
  %.pn89.pn = phi { ptr, i32 } [ %.pn89, %bb.cf ], [ %30, %29 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #46
  br label %bb.ch

bb.ch:                                            ; preds = %bb.cg, %27
  %.pn89.pn.pn = phi { ptr, i32 } [ %.pn89.pn, %bb.cg ], [ %28, %27 ]
  call void @_ZNSt10unique_ptrIN6duckdb6VectorESt14default_deleteIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(8) %9) #46
  br label %bb.ci

bb.ci:                                            ; preds = %bb.ch, %25
  %.pn89.pn.pn.pn = phi { ptr, i32 } [ %.pn89.pn.pn, %bb.ch ], [ %26, %25 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #46
  br label %bb.cj

bb.cj:                                            ; preds = %bb.ci, %bb.bs
  %.pn89.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn89.pn.pn.pn, %bb.ci ], [ %i.jj, %bb.bs ] ; 2 uses
  %i.kr = load ptr, ptr %8, align 8, !tbaa !631   ; 3 uses
  %.not.i206 = icmp eq ptr %i.kr, null
  br i1 %.not.i206, label %_ZNSt10unique_ptrIN6duckdb17VectorArrayBufferESt14default_deleteIS1_EED2Ev.exit208, label %_ZNKSt14default_deleteIN6duckdb17VectorArrayBufferEEclEPS1_.exit.i207

_ZNKSt14default_deleteIN6duckdb17VectorArrayBufferEEclEPS1_.exit.i207: ; preds = %bb.cj
  %i.ks = load ptr, ptr %i.kr, align 8, !tbaa !412
  %i.kt = getelementptr inbounds nuw i8, ptr %i.ks, i64 8
  %i.ku = load ptr, ptr %i.kt, align 8
  call void %i.ku(ptr noundef nonnull align 8 dereferenceable(72) %i.kr) #46, !inline_history !633
  br label %_ZNSt10unique_ptrIN6duckdb17VectorArrayBufferESt14default_deleteIS1_EED2Ev.exit208

_ZNSt10unique_ptrIN6duckdb17VectorArrayBufferESt14default_deleteIS1_EED2Ev.exit208: ; preds = %_ZNKSt14default_deleteIN6duckdb17VectorArrayBufferEEclEPS1_.exit.i207, %bb.cj, %bb.br
  %.pn89.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.ji, %bb.br ], [ %.pn89.pn.pn.pn.pn, %bb.cj ], [ %.pn89.pn.pn.pn.pn, %_ZNKSt14default_deleteIN6duckdb17VectorArrayBufferEEclEPS1_.exit.i207 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #46
  br label %bb.dp

.thread250:                                       ; preds = %_ZN6duckdb21TemplatedValidityMaskImE13SetAllInvalidEm.exit, %bb.ar
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #46
  invoke void @_ZN6duckdb9make_uniqINS_18VectorStructBufferEJEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::unique_ptr.893") align 8 %12)
          to label %bb.ck unwind label %bb.cn

bb.ck:                                            ; preds = %.thread250
  %i.kv = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_18VectorStructBufferESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %12)
          to label %bb.cl unwind label %bb.co     ; 3 uses

bb.cl:                                            ; preds = %bb.ck
  %i.kw = getelementptr inbounds nuw i8, ptr %i.kv, i64 48 ; 2 uses
  %i.kx = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZN6duckdb12StructVector10GetEntriesERNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %.tr)
          to label %bb.cm unwind label %bb.cp     ; 2 uses

bb.cm:                                            ; preds = %bb.cl
  %i.ky = load ptr, ptr %i.kx, align 8, !tbaa !507 ; 2 uses
  %i.kz = getelementptr inbounds nuw i8, ptr %i.kx, i64 8
  %i.la = load ptr, ptr %i.kz, align 8, !tbaa !507 ; 2 uses
  %.not261302 = icmp eq ptr %i.ky, %i.la
  br i1 %.not261302, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.cm
  %i.lb = getelementptr inbounds nuw i8, ptr %i.kv, i64 56 ; 3 uses
  %i.lc = getelementptr inbounds nuw i8, ptr %i.kv, i64 64 ; 2 uses
  br label %bb.cq

._crit_edge:                                      ; preds = %_ZNSt10unique_ptrIN6duckdb6VectorESt14default_deleteIS1_EED2Ev.exit, %bb.cm
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #46
  %i.ld = load ptr, ptr %12, align 8, !tbaa !634
  store ptr null, ptr %12, align 8, !tbaa !634
  invoke void @_ZN6duckdb10shared_ptrINS_12VectorBufferELb1EEC2INS_18VectorStructBufferETnNSt9enable_ifIXsr17compatible_with_tIT_S1_EE5valueEiE4typeELi0EEEPS6_(ptr noundef nonnull align 8 dereferenceable(16) %14, ptr noundef %i.ld)
          to label %bb.db unwind label %bb.dc

bb.cn:                                            ; preds = %.thread250
  %i.le = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN6duckdb18VectorStructBufferESt14default_deleteIS1_EED2Ev.exit219

bb.co:                                            ; preds = %bb.ck
  %i.lf = landingpad { ptr, i32 }
          cleanup
  br label %bb.dd

bb.cp:                                            ; preds = %bb.cl
  %i.lg = landingpad { ptr, i32 }
          cleanup
  br label %bb.dd

bb.cq:                                            ; preds = %.lr.ph, %_ZNSt10unique_ptrIN6duckdb6VectorESt14default_deleteIS1_EED2Ev.exit
  %.sroa.0240.0303 = phi ptr [ %i.ky, %.lr.ph ], [ %i.my, %_ZNSt10unique_ptrIN6duckdb6VectorESt14default_deleteIS1_EED2Ev.exit ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #46
  %i.lh = invoke noundef nonnull align 8 dereferenceable(104) ptr @_ZNK6duckdb10unique_ptrINS_6VectorESt14default_deleteIS1_ELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %.sroa.0240.0303)
          to label %bb.cr unwind label %bb.cz

bb.cr:                                            ; preds = %bb.cq
  call void @llvm.experimental.noalias.scope.decl(metadata !636)
  %i.li = invoke noalias noundef nonnull dereferenceable(104) ptr @_Znwm(i64 noundef 104) #48
          to label %.noexc209 unwind label %bb.cz ; 3 uses

.noexc209:                                        ; preds = %bb.cr
  invoke void @_ZN6duckdb6VectorC1ERS0_(ptr noundef nonnull align 8 dereferenceable(104) %i.li, ptr noundef nonnull align 8 dereferenceable(104) %i.lh)
          to label %bb.ct unwind label %bb.cs, !noalias !636

bb.cs:                                            ; preds = %.noexc209
  %i.lj = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPv(ptr noundef nonnull %i.li) #47, !noalias !636
  br label %.body

bb.ct:                                            ; preds = %.noexc209
  store ptr %i.li, ptr %13, align 8, !tbaa !426, !alias.scope !636
  %i.lk = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_6VectorESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %13)
          to label %bb.cu unwind label %.loopexit265

bb.cu:                                            ; preds = %bb.ct
  %i.ll = load i64, ptr %i.c, align 8, !tbaa !108
  invoke void @_ZN6duckdb6Vector7FlattenEm(ptr noundef nonnull align 8 dereferenceable(104) %i.lk, i64 noundef %i.ll)
          to label %bb.cv unwind label %.loopexit265

bb.cv:                                            ; preds = %bb.cu
  %i.lm = load ptr, ptr %i.lb, align 8, !tbaa !543 ; 6 uses
  %i.ln = load ptr, ptr %i.lc, align 8, !tbaa !639
  %.not.i.i210 = icmp eq ptr %i.lm, %i.ln
  br i1 %.not.i.i210, label %bb.cw, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_6VectorESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit.thread

_ZNSt6vectorIN6duckdb10unique_ptrINS0_6VectorESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit.thread: ; preds = %bb.cv
  %i.lo = load i64, ptr %13, align 8, !tbaa !426
  store i64 %i.lo, ptr %i.lm, align 8, !tbaa !426
  %i.lp = getelementptr inbounds nuw i8, ptr %i.lm, i64 8
  store ptr %i.lp, ptr %i.lb, align 8, !tbaa !543
  br label %_ZNSt10unique_ptrIN6duckdb6VectorESt14default_deleteIS1_EED2Ev.exit

bb.cw:                                            ; preds = %bb.cv
  %i.lq = load ptr, ptr %i.kw, align 8, !tbaa !545 ; 10 uses
  %i.lr = ptrtoint ptr %i.lm to i64               ; 3 uses
  %i.ls = ptrtoint ptr %i.lq to i64               ; 3 uses
  %i.lt = sub i64 %i.lr, %i.ls                    ; 3 uses
  %i.lu = icmp eq i64 %i.lt, 9223372036854775800
  br i1 %i.lu, label %bb.cx, label %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_6VectorESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i

bb.cx:                                            ; preds = %bb.cw
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.271) #49
          to label %.noexc213 unwind label %.loopexit.split-lp

.noexc213:                                        ; preds = %bb.cx
  unreachable

_ZNKSt6vectorIN6duckdb10unique_ptrINS0_6VectorESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.cw
  %i.lv = ashr exact i64 %i.lt, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.lv, i64 1)
  %i.lw = add nsw i64 %.sroa.speculated.i.i.i.i, %i.lv ; 2 uses
  %i.lx = icmp ult i64 %i.lw, %i.lv
  %i.ly = call i64 @llvm.umin.i64(i64 %i.lw, i64 1152921504606846975)
  %i.lz = select i1 %i.lx, i64 1152921504606846975, i64 %i.ly ; 3 uses
  %.not.i.i.i.i211 = icmp ne i64 %i.lz, 0
  call void @llvm.assume(i1 %.not.i.i.i.i211)
  %i.ma = shl nuw nsw i64 %i.lz, 3
  %i.mb = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ma) #48
          to label %.noexc214 unwind label %.loopexit265 ; 10 uses

.noexc214:                                        ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_6VectorESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.mc = getelementptr inbounds nuw i8, ptr %i.mb, i64 %i.lt
  %i.md = load i64, ptr %13, align 8, !tbaa !426
  store i64 %i.md, ptr %i.mc, align 8, !tbaa !426
  store ptr null, ptr %13, align 8, !tbaa !426
  %.not10.i.i.i.i.i.i.i = icmp eq ptr %i.lq, %i.lm
  br i1 %.not10.i.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_6VectorESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %.noexc214
  %i.me = sub i64 %i.lr, %i.ls
  %i.mf = add i64 %i.me, -8                       ; 2 uses
  %i.mg = lshr i64 %i.mf, 3
  %i.mh = add nuw nsw i64 %i.mg, 1                ; 2 uses
  %min.iters.check572 = icmp ult i64 %i.mf, 56
  br i1 %min.iters.check572, label %.lr.ph.i.i.i.i.i.i.i.preheader585, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader
  %scevgep = getelementptr i8, ptr %i.mb, i64 8
  %i.mi = add i64 %i.lr, -8
  %i.mj = sub i64 %i.mi, %i.ls
  %i.mk = and i64 %i.mj, -8                       ; 2 uses
  %scevgep568 = getelementptr i8, ptr %scevgep, i64 %i.mk
  %scevgep569 = getelementptr i8, ptr %i.lq, i64 8
  %scevgep570 = getelementptr i8, ptr %scevgep569, i64 %i.mk
  %bound0 = icmp ult ptr %i.mb, %scevgep570
  %bound1 = icmp ult ptr %i.lq, %scevgep568
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.i.i.preheader585, label %vector.ph573

vector.ph573:                                     ; preds = %vector.memcheck
  %n.vec575 = and i64 %i.mh, 4611686018427387900  ; 3 uses
  %i.ml = shl i64 %n.vec575, 3                    ; 2 uses
  %i.mm = getelementptr i8, ptr %i.mb, i64 %i.ml  ; 2 uses
  %i.mn = getelementptr i8, ptr %i.lq, i64 %i.ml
  br label %vector.body576

vector.body576:                                   ; preds = %vector.body576, %vector.ph573
  %index577 = phi i64 [ 0, %vector.ph573 ], [ %index.next580, %vector.body576 ] ; 2 uses
  %i.mo = shl i64 %index577, 3                    ; 2 uses
  %next.gep = getelementptr i8, ptr %i.mb, i64 %i.mo ; 2 uses
  %next.gep578 = getelementptr i8, ptr %i.lq, i64 %i.mo ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !640)
  call void @llvm.experimental.noalias.scope.decl(metadata !643)
  %i.mp = getelementptr i8, ptr %next.gep578, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep578, align 8, !tbaa !426, !alias.scope !645, !noalias !640
  %wide.load579 = load <2 x i64>, ptr %i.mp, align 8, !tbaa !426, !alias.scope !645, !noalias !640
  %i.mq = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !426, !alias.scope !648, !noalias !645
  store <2 x i64> %wide.load579, ptr %i.mq, align 8, !tbaa !426, !alias.scope !648, !noalias !645
  %i.mr = getelementptr i8, ptr %next.gep578, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep578, align 8, !tbaa !426, !alias.scope !645, !noalias !640
  store <2 x ptr> splat (ptr null), ptr %i.mr, align 8, !tbaa !426, !alias.scope !645, !noalias !640
  %index.next580 = add nuw i64 %index577, 4       ; 2 uses
  %i.ms = icmp eq i64 %index.next580, %n.vec575
  br i1 %i.ms, label %middle.block581, label %vector.body576, !llvm.loop !650

middle.block581:                                  ; preds = %vector.body576
  %cmp.n582 = icmp eq i64 %i.mh, %n.vec575
  br i1 %cmp.n582, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_6VectorESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader585
end_hunk_0
begin_hunk_1_@_ZN6duckdb12ValidityMask12SliceInPlaceERKS0_mmm:bb.a
  br i1 %i.cg, label %middle.block, label %vector.body, !llvm.loop !1261

middle.block:                                     ; preds = %vector.body
  %vector.recur.extract = extractelement <2 x i64> %wide.load132, i64 1 ; 2 uses
  %cmp.n = icmp eq i64 %i.f, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph103.preheader135

.lr.ph103.preheader135:                           ; preds = %vector.memcheck, %.lr.ph103.preheader, %middle.block
  %.079102.ph = phi ptr [ %.07998, %vector.memcheck ], [ %.07998, %.lr.ph103.preheader ], [ %i.bt, %middle.block ] ; 2 uses
  %.076101.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph103.preheader ], [ %n.vec, %middle.block ] ; 3 uses
  %.077100.ph = phi i64 [ %i.bm, %vector.memcheck ], [ %i.bm, %.lr.ph103.preheader ], [ %vector.recur.extract, %middle.block ] ; 2 uses
  %.07899.ph = phi ptr [ %i.bl, %vector.memcheck ], [ %i.bl, %.lr.ph103.preheader ], [ %i.bu, %middle.block ] ; 2 uses
  %xtraiter140 = and i64 %i.f, 3                  ; 2 uses
  %lcmp.mod141.not = icmp eq i64 %xtraiter140, 0
  br i1 %lcmp.mod141.not, label %.lr.ph103.prol.loopexit, label %.lr.ph103.prol

.lr.ph103.prol:                                   ; preds = %.lr.ph103.preheader135, %.lr.ph103.prol
  %.079102.prol = phi ptr [ %.079.prol, %.lr.ph103.prol ], [ %.079102.ph, %.lr.ph103.preheader135 ] ; 2 uses
  %.076101.prol = phi i64 [ %i.cm, %.lr.ph103.prol ], [ %.076101.ph, %.lr.ph103.preheader135 ]
  %.077100.prol = phi i64 [ %i.ci, %.lr.ph103.prol ], [ %.077100.ph, %.lr.ph103.preheader135 ]
  %.07899.prol = phi ptr [ %i.cl, %.lr.ph103.prol ], [ %.07899.ph, %.lr.ph103.preheader135 ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph103.prol ], [ 0, %.lr.ph103.preheader135 ]
  %i.ch = lshr i64 %.077100.prol, %i.g
  %i.ci = load i64, ptr %.079102.prol, align 8, !tbaa !108 ; 4 uses
  %i.cj = shl i64 %i.ci, %i.bd
  %i.ck = or disjoint i64 %i.cj, %i.ch
  %i.cl = getelementptr inbounds nuw i8, ptr %.07899.prol, i64 8 ; 3 uses
  store i64 %i.ck, ptr %.07899.prol, align 8, !tbaa !108
  %i.cm = add nuw nsw i64 %.076101.prol, 1        ; 2 uses
  %.079.prol = getelementptr inbounds nuw i8, ptr %.079102.prol, i64 8 ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter140
  br i1 %prol.iter.cmp.not, label %.lr.ph103.prol.loopexit, label %.lr.ph103.prol, !llvm.loop !1262

.lr.ph103.prol.loopexit:                          ; preds = %.lr.ph103.prol, %.lr.ph103.preheader135
  %.lcssa137.unr = phi i64 [ poison, %.lr.ph103.preheader135 ], [ %i.ci, %.lr.ph103.prol ]
  %.lcssa.unr = phi ptr [ poison, %.lr.ph103.preheader135 ], [ %i.cl, %.lr.ph103.prol ]
  %.079.lcssa136.unr = phi ptr [ poison, %.lr.ph103.preheader135 ], [ %.079.prol, %.lr.ph103.prol ]
  %.079102.unr = phi ptr [ %.079102.ph, %.lr.ph103.preheader135 ], [ %.079.prol, %.lr.ph103.prol ]
  %.076101.unr = phi i64 [ %.076101.ph, %.lr.ph103.preheader135 ], [ %i.cm, %.lr.ph103.prol ]
  %.077100.unr = phi i64 [ %.077100.ph, %.lr.ph103.preheader135 ], [ %i.ci, %.lr.ph103.prol ]
  %.07899.unr = phi ptr [ %.07899.ph, %.lr.ph103.preheader135 ], [ %i.cl, %.lr.ph103.prol ]
  %i.cn = sub nsw i64 %.076101.ph, %i.f
  %i.co = icmp ugt i64 %i.cn, -4
  br i1 %i.co, label %._crit_edge, label %.lr.ph103

._crit_edge:                                      ; preds = %.lr.ph103.prol.loopexit, %.lr.ph103, %middle.block, %bb.h
  %.078.lcssa = phi ptr [ %i.bl, %bb.h ], [ %i.bu, %middle.block ], [ %.lcssa.unr, %.lr.ph103.prol.loopexit ], [ %i.di, %.lr.ph103 ] ; 2 uses
  %.077.lcssa = phi i64 [ %i.bm, %bb.h ], [ %vector.recur.extract, %middle.block ], [ %.lcssa137.unr, %.lr.ph103.prol.loopexit ], [ %i.df, %.lr.ph103 ]
  %.079.lcssa = phi ptr [ %.07998, %bb.h ], [ %i.bt, %middle.block ], [ %.079.lcssa136.unr, %.lr.ph103.prol.loopexit ], [ %.079.3, %.lr.ph103 ]
  %.not = icmp eq i64 %i.e, 0
  br i1 %.not, label %.loopexit, label %bb.i

.lr.ph103:                                        ; preds = %.lr.ph103.prol.loopexit, %.lr.ph103
  %.079102 = phi ptr [ %.079.3, %.lr.ph103 ], [ %.079102.unr, %.lr.ph103.prol.loopexit ] ; 5 uses
  %.076101 = phi i64 [ %i.dj, %.lr.ph103 ], [ %.076101.unr, %.lr.ph103.prol.loopexit ]
  %.077100 = phi i64 [ %i.df, %.lr.ph103 ], [ %.077100.unr, %.lr.ph103.prol.loopexit ]
  %.07899 = phi ptr [ %i.di, %.lr.ph103 ], [ %.07899.unr, %.lr.ph103.prol.loopexit ] ; 5 uses
  %i.cp = lshr i64 %.077100, %i.g
  %i.cq = load i64, ptr %.079102, align 8, !tbaa !108 ; 2 uses
  %i.cr = shl i64 %i.cq, %i.bd
  %i.cs = or disjoint i64 %i.cr, %i.cp
  %i.ct = getelementptr inbounds nuw i8, ptr %.07899, i64 8
  store i64 %i.cs, ptr %.07899, align 8, !tbaa !108
  %.079 = getelementptr inbounds nuw i8, ptr %.079102, i64 8
  %i.cu = lshr i64 %i.cq, %i.g
  %i.cv = load i64, ptr %.079, align 8, !tbaa !108 ; 2 uses
  %i.cw = shl i64 %i.cv, %i.bd
  %i.cx = or disjoint i64 %i.cw, %i.cu
  %i.cy = getelementptr inbounds nuw i8, ptr %.07899, i64 16
  store i64 %i.cx, ptr %i.ct, align 8, !tbaa !108
  %.079.1 = getelementptr inbounds nuw i8, ptr %.079102, i64 16
  %i.cz = lshr i64 %i.cv, %i.g
  %i.da = load i64, ptr %.079.1, align 8, !tbaa !108 ; 2 uses
  %i.db = shl i64 %i.da, %i.bd
  %i.dc = or disjoint i64 %i.db, %i.cz
  %i.dd = getelementptr inbounds nuw i8, ptr %.07899, i64 24
  store i64 %i.dc, ptr %i.cy, align 8, !tbaa !108
  %.079.2 = getelementptr inbounds nuw i8, ptr %.079102, i64 24
  %i.de = lshr i64 %i.da, %i.g
  %i.df = load i64, ptr %.079.2, align 8, !tbaa !108 ; 3 uses
  %i.dg = shl i64 %i.df, %i.bd
  %i.dh = or disjoint i64 %i.dg, %i.de
  %i.di = getelementptr inbounds nuw i8, ptr %.07899, i64 32 ; 2 uses
  store i64 %i.dh, ptr %i.dd, align 8, !tbaa !108
  %i.dj = add nuw nsw i64 %.076101, 4             ; 2 uses
  %.079.3 = getelementptr inbounds nuw i8, ptr %.079102, i64 32 ; 2 uses
  %exitcond113.not.3 = icmp eq i64 %i.dj, %i.f
  br i1 %exitcond113.not.3, label %._crit_edge, label %.lr.ph103, !llvm.loop !1263

bb.i:                                             ; preds = %._crit_edge
  %i.dk = lshr i64 %.077.lcssa, %i.g              ; 2 uses
  %i.dl = icmp samesign ult i64 %i.bd, %i.e
  br i1 %i.dl, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.dm = load i64, ptr %.079.lcssa, align 8, !tbaa !108
  %i.dn = shl i64 %i.dm, %i.bd
  %i.do = or disjoint i64 %i.dn, %i.dk
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.075 = phi i64 [ %i.do, %bb.j ], [ %i.dk, %bb.i ]
  %i.dp = sub nuw nsw i64 64, %i.e
  %i.dq = lshr i64 -1, %i.dp
  %i.dr = and i64 %.075, %i.dq
  %i.ds = load i64, ptr %.078.lcssa, align 8, !tbaa !108
  %i.dt = shl nsw i64 -1, %i.e
  %i.du = and i64 %i.ds, %i.dt
  %i.dv = or i64 %i.du, %i.dr
  store i64 %i.dv, ptr %.078.lcssa, align 8, !tbaa !108
  br label %.loopexit

.lr.ph.splitthread-pre-split:                     ; preds = %_ZN6duckdb21TemplatedValidityMaskImE3SetEmb.exit
  %.pr = load ptr, ptr %1, align 8, !tbaa !519
  br label %.lr.ph.split

.lr.ph.split:                                     ; preds = %.lr.ph, %.lr.ph.splitthread-pre-split
  %i.dw = phi ptr [ %.pr, %.lr.ph.splitthread-pre-split ], [ %i.aj, %.lr.ph ] ; 2 uses
  %.097 = phi i64 [ %i.ex, %.lr.ph.splitthread-pre-split ], [ 0, %.lr.ph ] ; 3 uses
  %i.dx = add i64 %.097, %2                       ; 4 uses
  %.not.i88 = icmp eq ptr %i.dw, null
  br i1 %.not.i88, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread: ; preds = %.lr.ph.split
  %i.dy = load ptr, ptr %0, align 8, !tbaa !519   ; 2 uses
  %.not.i.i93 = icmp eq ptr %i.dy, null
  br i1 %.not.i.i93, label %_ZN6duckdb21TemplatedValidityMaskImE3SetEmb.exit, label %bb.m

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit: ; preds = %.lr.ph.split
  %i.dz = add i64 %.097, %3                       ; 2 uses
  %i.ea = lshr i64 %i.dz, 6
  %i.eb = and i64 %i.dz, 63
  %i.ec = getelementptr inbounds nuw [8 x i8], ptr %i.dw, i64 %i.ea
  %i.ed = load i64, ptr %i.ec, align 8, !tbaa !108
  %i.ee = shl nuw i64 1, %i.eb
  %i.ef = and i64 %i.ed, %i.ee
  %.not96 = icmp eq i64 %i.ef, 0
  %i.eg = load ptr, ptr %0, align 8, !tbaa !519   ; 3 uses
  %.not.i.i = icmp eq ptr %i.eg, null             ; 2 uses
  br i1 %.not96, label %bb.n, label %bb.l

bb.l:                                             ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit
  br i1 %.not.i.i, label %_ZN6duckdb21TemplatedValidityMaskImE3SetEmb.exit, label %bb.m

bb.m:                                             ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread, %bb.l
  %i.eh = phi ptr [ %i.dy, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread ], [ %i.eg, %bb.l ]
  %i.ei = lshr i64 %i.dx, 6
  %i.ej = and i64 %i.dx, 63
  %i.ek = shl nuw i64 1, %i.ej
  %i.el = getelementptr inbounds nuw [8 x i8], ptr %i.eh, i64 %i.ei ; 2 uses
  %i.em = load i64, ptr %i.el, align 8, !tbaa !108
  %i.en = or i64 %i.em, %i.ek
  store i64 %i.en, ptr %i.el, align 8, !tbaa !108
  br label %_ZN6duckdb21TemplatedValidityMaskImE3SetEmb.exit

bb.n:                                             ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit
  br i1 %.not.i.i, label %bb.o, label %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit.i

bb.o:                                             ; preds = %bb.n
  %i.eo = load i64, ptr %i.ai, align 8, !tbaa !532
  tail call void @_ZN6duckdb21TemplatedValidityMaskImE10InitializeEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.eo)
  %.pre.i.i = load ptr, ptr %0, align 8, !tbaa !519
  br label %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit.i

_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit.i: ; preds = %bb.o, %bb.n
  %i.ep = phi ptr [ %.pre.i.i, %bb.o ], [ %i.eg, %bb.n ]
  %i.eq = lshr i64 %i.dx, 6
  %i.er = and i64 %i.dx, 63
  %i.es = shl nuw i64 1, %i.er
  %i.et = xor i64 %i.es, -1
  %i.eu = getelementptr inbounds nuw [8 x i8], ptr %i.ep, i64 %i.eq ; 2 uses
  %i.ev = load i64, ptr %i.eu, align 8, !tbaa !108
  %i.ew = and i64 %i.ev, %i.et
  store i64 %i.ew, ptr %i.eu, align 8, !tbaa !108
  br label %_ZN6duckdb21TemplatedValidityMaskImE3SetEmb.exit

_ZN6duckdb21TemplatedValidityMaskImE3SetEmb.exit: ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread, %bb.l, %bb.m, %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit.i
  %i.ex = add nuw i64 %.097, 1                    ; 2 uses
  %exitcond.not = icmp eq i64 %i.ex, %4
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph.splitthread-pre-split, !llvm.loop !1264

.loopexit.loopexit.unr-lcssa:                     ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us.epil.preheader

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us.epil.preheader: ; preds = %.loopexit.loopexit.unr-lcssa, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us.preheader
  %.097.us.epil.init = phi i64 [ 0, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us.preheader ], [ %i.bc, %.loopexit.loopexit.unr-lcssa ]
  %lcmp.mod139 = trunc i64 %4 to i1
  tail call void @llvm.assume(i1 %lcmp.mod139)
  %i.ey = add i64 %.097.us.epil.init, %2          ; 2 uses
  %i.ez = lshr i64 %i.ey, 6
  %i.fa = and i64 %i.ey, 63
  %i.fb = shl nuw i64 1, %i.fa
  %i.fc = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %i.ez ; 2 uses
  %i.fd = load i64, ptr %i.fc, align 8, !tbaa !108
  %i.fe = or i64 %i.fd, %i.fb
  store i64 %i.fe, ptr %i.fc, align 8, !tbaa !108
  br label %.loopexit

.loopexit:                                        ; preds = %_ZN6duckdb21TemplatedValidityMaskImE3SetEmb.exit, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us.epil.preheader, %.loopexit.loopexit.unr-lcssa, %.lr.ph.split.us, %.preheader, %.thread89, %bb.f, %bb.e, %bb.k, %._crit_edge, %bb.b
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN6duckdb21TemplatedValidityMaskImED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %0) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !408  ; 8 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !409
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !411
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !412
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #46, !inline_history !1235
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !412
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #46, !inline_history !1235
  br label %_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !153
  %.not.i.i.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EED2Ev.exit, !prof !88

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #46
  br label %_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EED2Ev.exit

_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.g
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef zeroext i1 @_ZN6duckdb12ValidityMask9IsAlignedEm(i64 noundef %0) local_unnamed_addr #9 align 2 {
bb.a:
  %i.a = and i64 %0, 63
  %i.b = icmp eq i64 %i.a, 0
  ret i1 %i.b
}

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb12ValidityMask7CopySelERKS0_RKNS_15SelectionVectorEmmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %2, i64 noundef %3, i64 noundef %4, i64 noundef %5) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !519
  %.not.i = icmp ne ptr %i.a, null
  %i.b = load ptr, ptr %0, align 8                ; 3 uses
  %.not.i18 = icmp ne ptr %i.b, null
  %or.cond = select i1 %.not.i, i1 true, i1 %.not.i18
  br i1 %or.cond, label %bb.b, label %.loopexit

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %2, align 8, !tbaa !389
  %i.d = icmp eq ptr %i.c, null
  %i.e = or i64 %4, %3
  %i.f = and i64 %i.e, 63
  %i.g = icmp eq i64 %i.f, 0
  %or.cond27 = and i1 %i.g, %i.d
  br i1 %or.cond27, label %bb.c, label %.preheader

.preheader:                                       ; preds = %bb.b
  %.not29 = icmp eq i64 %5, 0
  br i1 %.not29, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  br label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN6duckdb12ValidityMask12SliceInPlaceERKS0_mmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 noundef %4, i64 noundef %3, i64 noundef %5)
  br label %.loopexit

bb.d:                                             ; preds = %.lr.ph, %_ZN6duckdb21TemplatedValidityMaskImE3SetEmb.exit
  %i.i = phi ptr [ %i.b, %.lr.ph ], [ %i.ap, %_ZN6duckdb21TemplatedValidityMaskImE3SetEmb.exit ] ; 5 uses
  %i.j = phi ptr [ %i.b, %.lr.ph ], [ %i.aq, %_ZN6duckdb21TemplatedValidityMaskImE3SetEmb.exit ] ; 3 uses
  %.028 = phi i64 [ 0, %.lr.ph ], [ %i.ar, %_ZN6duckdb21TemplatedValidityMaskImE3SetEmb.exit ] ; 3 uses
  %i.k = add i64 %.028, %3                        ; 2 uses
  %i.l = load ptr, ptr %2, align 8, !tbaa !389    ; 2 uses
  %.not.i19 = icmp eq ptr %i.l, null
  br i1 %.not.i19, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %i.k
  %i.n = load i32, ptr %i.m, align 4, !tbaa !3
  %i.o = zext i32 %i.n to i64
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit

_ZNK6duckdb15SelectionVector9get_indexEm.exit:    ; preds = %bb.d, %bb.e
  %i.p = phi i64 [ %i.o, %bb.e ], [ %i.k, %bb.d ] ; 2 uses
  %i.q = add i64 %.028, %4                        ; 4 uses
  %i.r = load ptr, ptr %1, align 8, !tbaa !519    ; 2 uses
  %.not.i20 = icmp eq ptr %i.r, null
  br i1 %.not.i20, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit
  %.not.i.i22 = icmp eq ptr %i.i, null
  br i1 %.not.i.i22, label %_ZN6duckdb21TemplatedValidityMaskImE3SetEmb.exit, label %bb.g

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit
  %i.s = lshr i64 %i.p, 6
  %i.t = and i64 %i.p, 63
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %i.s
  %i.v = load i64, ptr %i.u, align 8, !tbaa !108
  %i.w = shl nuw i64 1, %i.t
  %i.x = and i64 %i.v, %i.w
  %.not = icmp eq i64 %i.x, 0
  %.not.i.i = icmp eq ptr %i.j, null              ; 2 uses
  br i1 %.not, label %bb.h, label %bb.f

bb.f:                                             ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit
  br i1 %.not.i.i, label %_ZN6duckdb21TemplatedValidityMaskImE3SetEmb.exit, label %bb.g

bb.g:                                             ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread, %bb.f
  %i.y = phi ptr [ %i.i, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread ], [ %i.j, %bb.f ] ; 2 uses
  %i.z = lshr i64 %i.q, 6
  %i.aa = and i64 %i.q, 63
  %i.ab = shl nuw i64 1, %i.aa
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %i.z ; 2 uses
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !108
  %i.ae = or i64 %i.ad, %i.ab
  store i64 %i.ae, ptr %i.ac, align 8, !tbaa !108
  br label %_ZN6duckdb21TemplatedValidityMaskImE3SetEmb.exit

bb.h:                                             ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit
  br i1 %.not.i.i, label %bb.i, label %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit.i

bb.i:                                             ; preds = %bb.h
  %i.af = load i64, ptr %i.h, align 8, !tbaa !532
  tail call void @_ZN6duckdb21TemplatedValidityMaskImE10InitializeEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.af)
  %.pre.i.i = load ptr, ptr %0, align 8, !tbaa !519 ; 2 uses
  br label %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit.i

_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit.i: ; preds = %bb.i, %bb.h
  %i.ag = phi ptr [ %.pre.i.i, %bb.i ], [ %i.i, %bb.h ]
  %i.ah = phi ptr [ %.pre.i.i, %bb.i ], [ %i.j, %bb.h ] ; 2 uses
  %i.ai = lshr i64 %i.q, 6
  %i.aj = and i64 %i.q, 63
  %i.ak = shl nuw i64 1, %i.aj
  %i.al = xor i64 %i.ak, -1
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %i.ai ; 2 uses
  %i.an = load i64, ptr %i.am, align 8, !tbaa !108
  %i.ao = and i64 %i.an, %i.al
  store i64 %i.ao, ptr %i.am, align 8, !tbaa !108
  br label %_ZN6duckdb21TemplatedValidityMaskImE3SetEmb.exit

_ZN6duckdb21TemplatedValidityMaskImE3SetEmb.exit: ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread, %bb.f, %bb.g, %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit.i
  %i.ap = phi ptr [ null, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread ], [ %i.i, %bb.f ], [ %i.i, %bb.g ], [ %i.ag, %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit.i ]
  %i.aq = phi ptr [ null, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread ], [ null, %bb.f ], [ %i.y, %bb.g ], [ %i.ah, %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit.i ]
  %i.ar = add nuw i64 %.028, 1                    ; 2 uses
  %exitcond.not = icmp eq i64 %i.ar, %5
  br i1 %exitcond.not, label %.loopexit, label %bb.d, !llvm.loop !1266

.loopexit:                                        ; preds = %_ZN6duckdb21TemplatedValidityMaskImE3SetEmb.exit, %.preheader, %bb.a, %bb.c
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb12ValidityMask5WriteERNS_11WriteStreamEm(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef %2) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = alloca i8, align 1                       ; 4 uses
  %i.b = alloca i16, align 2                      ; 4 uses
  %i.c = alloca i32, align 4                      ; 8 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = alloca i8, align 1                       ; 4 uses
  %i.f = load ptr, ptr %0, align 8, !tbaa !519    ; 5 uses
  %.not.i.i = icmp eq ptr %i.f, null
  %i.g = icmp eq i64 %2, 0                        ; 2 uses
  %or.cond.i = or i1 %i.g, %.not.i.i
  %.pre = add i64 %2, 63                          ; 3 uses
  br i1 %or.cond.i, label %_ZNK6duckdb21TemplatedValidityMaskImE10CountValidEm.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = lshr i64 %.pre, 6                        ; 5 uses
  %.not38.i = icmp eq i64 %i.h, 0
end_hunk_1
