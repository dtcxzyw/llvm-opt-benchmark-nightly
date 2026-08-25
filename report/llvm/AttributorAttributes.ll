Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/AttributorAttributes?download=true
inline.NumInlined: 25342
inline.NumDeleted: 9928
loop-unroll.NumCompletelyUnrolled: 21
loop-unroll.NumRuntimeUnrolled: 39
loop-unroll.NumUnrolled: 60
begin_hunk_0_@_ZNK12_GLOBAL__N_117AAPointerInfoImpl25forallInterferingAccessesERN4llvm10AttributorERKNS1_17AbstractAttributeERNS1_11InstructionEbbNS1_12function_refIFbRKNS1_13AAPointerInfo6AccessEbEEERbRNS1_2AA7RangeTyENS9_IFbSD_EEE:bb.a
  store i32 %i.oy, ptr %i.ij, align 4, !tbaa !516, !noalias !3784
  store ptr %i.oj, ptr %i.ot, align 8, !tbaa !561, !noalias !3784
  br label %_ZN4llvm15SmallPtrSetImplIPNS_11InstructionEE6insertES2_.exit.i.i.i

_ZN4llvm19SmallPtrSetImplBase10insert_impEPKv.exit.i.i.i.i: ; preds = %._crit_edge.i.i.i28.i.i, %bb.bb
  %i.oz = call { ptr, i8 } @_ZN4llvm19SmallPtrSetImplBase14insert_imp_bigEPKv(ptr noundef nonnull align 8 dereferenceable(17) %26, ptr noundef %i.oj) #39, !noalias !3784 ; 0 uses
  br label %_ZN4llvm15SmallPtrSetImplIPNS_11InstructionEE6insertES2_.exit.i.i.i

_ZN4llvm15SmallPtrSetImplIPNS_11InstructionEE6insertES2_.exit.i.i.i: ; preds = %.lr.ph.i.i.i27.i.i, %_ZN4llvm19SmallPtrSetImplBase10insert_impEPKv.exit.i.i.i.i, %bb.bd, %bb.ba, %bb.ay, %bb.ax, %bb.aw
  %i.pa = load i8, ptr %i.f, align 1, !tbaa !289, !range !20, !noundef !21
  %i.pb = trunc nuw i8 %i.pa to i1                ; 2 uses
  br i1 %i.pb, label %bb.be, label %bb.bf

bb.be:                                            ; preds = %_ZN4llvm15SmallPtrSetImplIPNS_11InstructionEE6insertES2_.exit.i.i.i
  %i.pc = getelementptr inbounds nuw i8, ptr %i.nc, i64 96
  %i.pd = load i32, ptr %i.pc, align 8, !tbaa !79 ; 3 uses
  %i.pe = and i32 %i.pd, 8
  %i.pf = icmp ne i32 %i.pe, 0
  %i.pg = icmp eq i32 %i.pd, 17
  %spec.select.i27.i.i.i = or i1 %i.pg, %i.pf
  br i1 %spec.select.i27.i.i.i, label %.thread.i.i.i, label %bb.bf

bb.bf:                                            ; preds = %bb.be, %_ZN4llvm15SmallPtrSetImplIPNS_11InstructionEE6insertES2_.exit.i.i.i
  br i1 %5, label %bb.bg, label %_ZZNK12_GLOBAL__N_117AAPointerInfoImpl25forallInterferingAccessesERN4llvm10AttributorERKNS1_17AbstractAttributeERNS1_11InstructionEbbNS1_12function_refIFbRKNS1_13AAPointerInfo6AccessEbEEERbRNS1_2AA7RangeTyENS9_IFbSD_EEEENKUlSD_bE_clESD_b.exit.i.i

bb.bg:                                            ; preds = %bb.bf
  %i.ph = getelementptr inbounds nuw i8, ptr %i.nc, i64 96
  %i.pi = load i32, ptr %i.ph, align 8, !tbaa !79 ; 2 uses
  %i.pj = and i32 %i.pi, 4
  %.not66.i.i.i = icmp eq i32 %i.pj, 0
  br i1 %.not66.i.i.i, label %_ZZNK12_GLOBAL__N_117AAPointerInfoImpl25forallInterferingAccessesERN4llvm10AttributorERKNS1_17AbstractAttributeERNS1_11InstructionEbbNS1_12function_refIFbRKNS1_13AAPointerInfo6AccessEbEEERbRNS1_2AA7RangeTyENS9_IFbSD_EEEENKUlSD_bE_clESD_b.exit.i.i, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  br i1 %i.pb, label %.thread.i.i.i, label %.critedge.i.i.i

.thread.i.i.i:                                    ; preds = %bb.bh, %bb.be
  %i.pk = phi i32 [ %i.pd, %bb.be ], [ %i.pi, %bb.bh ]
  %i.pl = trunc i32 %i.pk to i1
  %.reass.reass.reass = and i1 %i.pl, %invariant.op
  %or.cond83.i.i.i = and i1 %i.ng, %.reass.reass.reass
  br i1 %or.cond83.i.i.i, label %bb.bi, label %.critedge.i.i.i

bb.bi:                                            ; preds = %.thread.i.i.i
  %i.pm = load ptr, ptr %i.nd, align 8, !tbaa !75
  %i.pn = call noundef zeroext i1 @_ZNK4llvm13DominatorTree9dominatesEPKNS_5ValueEPKNS_11InstructionE(ptr noundef nonnull align 8 dereferenceable(204) %i.fk, ptr noundef %i.pm, ptr noundef nonnull %3) #39
  br i1 %i.pn, label %bb.bj, label %.critedge.i.i.i

bb.bj:                                            ; preds = %bb.bi
  %i.po = load i8, ptr %i.p, align 8, !tbaa !16, !range !20, !noalias !3787, !noundef !21
  %i.pp = trunc nuw i8 %i.po to i1
  br i1 %i.pp, label %bb.bk, label %_ZN4llvm19SmallPtrSetImplBase10insert_impEPKv.exit.i28.i.i.i

bb.bk:                                            ; preds = %bb.bj
  %i.pq = load ptr, ptr %19, align 8, !tbaa !22, !noalias !3787 ; 2 uses
  %i.pr = load i32, ptr %i.o, align 4, !tbaa !516, !noalias !3787 ; 4 uses
  %i.ps = zext i32 %i.pr to i64
  %.idx.i.i43.i.i.i = shl nuw nsw i64 %i.ps, 3
  %i.pt = getelementptr inbounds nuw i8, ptr %i.pq, i64 %.idx.i.i43.i.i.i ; 2 uses
  %.not22.i.i44.i.i.i = icmp eq i32 %i.pr, 0
  br i1 %.not22.i.i44.i.i.i, label %._crit_edge.i.i50.i.i.i, label %.lr.ph.i.i45.i.i.i

.lr.ph.i.i45.i.i.i:                               ; preds = %bb.bk, %.critedge.i.i48.i.i.i
  %.023.i.i46.i.i.i = phi ptr [ %i.pv, %.critedge.i.i48.i.i.i ], [ %i.pq, %bb.bk ] ; 2 uses
  %i.pu = load ptr, ptr %.023.i.i46.i.i.i, align 8, !tbaa !561, !noalias !3787
  %.not15.i.i47.i.i.i = icmp eq ptr %i.pu, %i.nc
  br i1 %.not15.i.i47.i.i.i, label %.critedge.i.i.i, label %.critedge.i.i48.i.i.i

.critedge.i.i48.i.i.i:                            ; preds = %.lr.ph.i.i45.i.i.i
  %i.pv = getelementptr inbounds nuw i8, ptr %.023.i.i46.i.i.i, i64 8 ; 2 uses
  %.not.i.i49.i.i.i = icmp eq ptr %i.pv, %i.pt
  br i1 %.not.i.i49.i.i.i, label %._crit_edge.i.i50.i.i.i, label %.lr.ph.i.i45.i.i.i

._crit_edge.i.i50.i.i.i:                          ; preds = %.critedge.i.i48.i.i.i, %bb.bk
  %i.pw = load i32, ptr %i.n, align 8, !tbaa !515, !noalias !3787
  %i.px = icmp ult i32 %i.pr, %i.pw
  br i1 %i.px, label %bb.bl, label %_ZN4llvm19SmallPtrSetImplBase10insert_impEPKv.exit.i28.i.i.i

bb.bl:                                            ; preds = %._crit_edge.i.i50.i.i.i
  %i.py = add nuw i32 %i.pr, 1
  store i32 %i.py, ptr %i.o, align 4, !tbaa !516, !noalias !3787
  store ptr %i.nc, ptr %i.pt, align 8, !tbaa !561, !noalias !3787
  br label %.critedge.i.i.i

_ZN4llvm19SmallPtrSetImplBase10insert_impEPKv.exit.i28.i.i.i: ; preds = %._crit_edge.i.i50.i.i.i, %bb.bj
  %i.pz = call { ptr, i8 } @_ZN4llvm19SmallPtrSetImplBase14insert_imp_bigEPKv(ptr noundef nonnull align 8 dereferenceable(17) %19, ptr noundef nonnull align 8 dereferenceable(112) %i.nc) #39, !noalias !3787 ; 0 uses
  br label %.critedge.i.i.i

.critedge.i.i.i:                                  ; preds = %.lr.ph.i.i45.i.i.i, %_ZN4llvm19SmallPtrSetImplBase10insert_impEPKv.exit.i28.i.i.i, %bb.bl, %bb.bi, %.thread.i.i.i, %bb.bh
  %i.qa = load ptr, ptr %i.nd, align 8, !tbaa !75
  %i.qb = call noundef ptr @_ZNK4llvm11Instruction11getFunctionEv(ptr noundef nonnull align 8 dereferenceable(72) %i.qa) #39
  %i.qc = icmp eq ptr %i.qb, %i.t
  %i.qd = load i8, ptr %i.h, align 1, !tbaa !289, !range !20, !noundef !21
  %i.qe = icmp ne i8 %i.qd, 0
  %i.qf = and i1 %i.qc, %i.qe
  %i.qg = zext i1 %i.qf to i8
  store i8 %i.qg, ptr %i.h, align 1, !tbaa !289
  %i.qh = load i32, ptr %i.r, align 8, !tbaa !62  ; 2 uses
  %i.qi = load i32, ptr %i.s, align 4, !tbaa !76
  %.not.i.i26.i.i = icmp ult i32 %i.qh, %i.qi
  br i1 %.not.i.i26.i.i, label %bb.bn, label %bb.bm, !prof !77

bb.bm:                                            ; preds = %.critedge.i.i.i
  call void @_ZN4llvm23SmallVectorTemplateBaseISt4pairIPKNS_13AAPointerInfo6AccessEbELb1EE15growAndPushBackES6_(ptr noundef nonnull align 8 dereferenceable(16) %20, ptr nonnull align 8 dereferenceable(112) %i.nc, i8 %i.mx)
  br label %_ZZNK12_GLOBAL__N_117AAPointerInfoImpl25forallInterferingAccessesERN4llvm10AttributorERKNS1_17AbstractAttributeERNS1_11InstructionEbbNS1_12function_refIFbRKNS1_13AAPointerInfo6AccessEbEEERbRNS1_2AA7RangeTyENS9_IFbSD_EEEENKUlSD_bE_clESD_b.exit.i.i

bb.bn:                                            ; preds = %.critedge.i.i.i
  %i.qj = zext i32 %i.qh to i64
  %i.qk = load ptr, ptr %20, align 8, !tbaa !8
  %i.ql = getelementptr inbounds nuw [16 x i8], ptr %i.qk, i64 %i.qj ; 2 uses
  store ptr %i.nc, ptr %i.ql, align 1
  %.sroa.32.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ql, i64 8
  store i8 %i.mx, ptr %.sroa.32.0..sroa_idx.i.i.i.i, align 1
  %i.qm = load i32, ptr %i.r, align 8, !tbaa !62
  %i.qn = add i32 %i.qm, 1
  store i32 %i.qn, ptr %i.r, align 8, !tbaa !62
  br label %_ZZNK12_GLOBAL__N_117AAPointerInfoImpl25forallInterferingAccessesERN4llvm10AttributorERKNS1_17AbstractAttributeERNS1_11InstructionEbbNS1_12function_refIFbRKNS1_13AAPointerInfo6AccessEbEEERbRNS1_2AA7RangeTyENS9_IFbSD_EEEENKUlSD_bE_clESD_b.exit.i.i

_ZZNK12_GLOBAL__N_117AAPointerInfoImpl25forallInterferingAccessesERN4llvm10AttributorERKNS1_17AbstractAttributeERNS1_11InstructionEbbNS1_12function_refIFbRKNS1_13AAPointerInfo6AccessEbEEERbRNS1_2AA7RangeTyENS9_IFbSD_EEEENKUlSD_bE_clESD_b.exit.i.i: ; preds = %bb.bn, %bb.bm, %bb.bg, %bb.bf, %_ZN4llvm16InformationCache8isKernelERKNS_8FunctionE.exit.i.i.i
  br i1 %i.mq, label %bb.bo, label %bb.bp

bb.bo:                                            ; preds = %_ZZNK12_GLOBAL__N_117AAPointerInfoImpl25forallInterferingAccessesERN4llvm10AttributorERKNS1_17AbstractAttributeERNS1_11InstructionEbbNS1_12function_refIFbRKNS1_13AAPointerInfo6AccessEbEEERbRNS1_2AA7RangeTyENS9_IFbSD_EEEENKUlSD_bE_clESD_b.exit.i.i
  %i.qo = getelementptr inbounds nuw i8, ptr %.sroa.030.066.i.i, i64 4
  br label %_ZN4llvm16SmallSetIteratorIjLj4ESt4lessIjEEppEv.exit.i.i

bb.bp:                                            ; preds = %_ZZNK12_GLOBAL__N_117AAPointerInfoImpl25forallInterferingAccessesERN4llvm10AttributorERKNS1_17AbstractAttributeERNS1_11InstructionEbbNS1_12function_refIFbRKNS1_13AAPointerInfo6AccessEbEEERbRNS1_2AA7RangeTyENS9_IFbSD_EEEENKUlSD_bE_clESD_b.exit.i.i
  %i.qp = call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef %.sroa.030.066.i.i) #40
  br label %_ZN4llvm16SmallSetIteratorIjLj4ESt4lessIjEEppEv.exit.i.i

_ZN4llvm16SmallSetIteratorIjLj4ESt4lessIjEEppEv.exit.i.i: ; preds = %bb.bp, %bb.bo
  %storemerge.i.i.i = phi ptr [ %i.qp, %bb.bp ], [ %i.qo, %bb.bo ] ; 2 uses
  %.not60.i.i = icmp eq ptr %storemerge.i.i.i, %.sink1.i25.i.i
  br i1 %.not60.i.i, label %_ZNK4llvm2AA7RangeTy10mayOverlapERKS1_.exit.thread53.i.i, label %bb.ar

_ZNK4llvm2AA7RangeTy10mayOverlapERKS1_.exit.thread53.i.i: ; preds = %_ZN4llvm16SmallSetIteratorIjLj4ESt4lessIjEEppEv.exit.i.i, %_ZNK4llvm2AA7RangeTy10mayOverlapERKS1_.exit.thread.i.i, %bb.aq
  %i.qq = add i64 %.pn.i.i, 96
  %i.qr = sdiv exact i64 %i.qq, 96                ; 3 uses
  %.not.i.i29.i.i = icmp ult i64 %i.qr, %i.lj
  br i1 %.not.i.i29.i.i, label %bb.bq, label %.loopexit

bb.bq:                                            ; preds = %_ZNK4llvm2AA7RangeTy10mayOverlapERKS1_.exit.thread53.i.i
  %i.qs = lshr i64 %i.qr, 5                       ; 3 uses
  %i.qt = getelementptr inbounds nuw [4 x i8], ptr %i.ld, i64 %i.qs
  %i.qu = load i32, ptr %i.qt, align 4, !tbaa !45
  %i.qv = trunc nuw i64 %i.qr to i32
  %i.qw = and i32 %i.qv, 31
  %i.qx = shl nsw i32 -1, %i.qw
  %i.qy = and i32 %i.qu, %i.qx                    ; 2 uses
  %i.qz = icmp eq i32 %i.qy, 0
  br i1 %i.qz, label %.lr.ph.i.i.i24.i.preheader, label %_ZN4llvm16DenseMapIteratorINS_2AA7RangeTyENS_8SmallSetIjLj4ESt4lessIjEEENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S6_EELb1EEppEv.exit.i.i

.lr.ph.i.i.i24.i.preheader:                       ; preds = %bb.bq
  %i.ra = add nuw nsw i64 %i.qs, 1                ; 2 uses
  %i.rb = icmp eq i64 %i.ra, %i.ll
  br i1 %i.rb, label %.loopexit, label %.lr.ph341

.lr.ph.i.i.i24.i:                                 ; preds = %.lr.ph341
  %i.rc = add i64 %i.re, 1                        ; 2 uses
  %i.rd = icmp eq i64 %i.rc, %i.ll
  br i1 %i.rd, label %.loopexit, label %.lr.ph341, !llvm.loop !3709

.lr.ph341:                                        ; preds = %.lr.ph.i.i.i24.i.preheader, %.lr.ph.i.i.i24.i
  %i.re = phi i64 [ %i.rc, %.lr.ph.i.i.i24.i ], [ %i.ra, %.lr.ph.i.i.i24.i.preheader ] ; 3 uses
  %i.rf = getelementptr inbounds nuw [4 x i8], ptr %i.ld, i64 %i.re
  %i.rg = load i32, ptr %i.rf, align 4, !tbaa !45 ; 2 uses
  %i.rh = icmp eq i32 %i.rg, 0
  br i1 %i.rh, label %.lr.ph.i.i.i24.i, label %_ZN4llvm16DenseMapIteratorINS_2AA7RangeTyENS_8SmallSetIjLj4ESt4lessIjEEENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S6_EELb1EEppEv.exit.i.i, !llvm.loop !3709

_ZN4llvm16DenseMapIteratorINS_2AA7RangeTyENS_8SmallSetIjLj4ESt4lessIjEEENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S6_EELb1EEppEv.exit.i.i: ; preds = %.lr.ph341, %bb.bq
  %.012.lcssa.i.i.i.i = phi i64 [ %i.qs, %bb.bq ], [ %i.re, %.lr.ph341 ]
  %.0.lcssa.i.i.i.i = phi i32 [ %i.qy, %bb.bq ], [ %i.rg, %.lr.ph341 ]
  %i.ri = call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.lcssa.i.i.i.i, i1 true)
  %.idx.i.i.i.i = mul i64 %.012.lcssa.i.i.i.i, 3072
  %narrow104.i.i = mul nuw nsw i32 %i.ri, 96
  %.idx103.i.i = zext nneg i32 %narrow104.i.i to i64
  %i.rj = add i64 %.idx.i.i.i.i, %.idx103.i.i     ; 2 uses
  %.not.i.i134 = icmp eq i64 %i.rj, %.idx102.i.i
  br i1 %.not.i.i134, label %.loopexit, label %bb.ao

bb.br:                                            ; preds = %._crit_edge.i, %.lr.ph58.i
  %.02256.i = phi ptr [ %i.kk, %.lr.ph58.i ], [ %i.sq, %._crit_edge.i ] ; 2 uses
  %i.rk = load i32, ptr %.02256.i, align 4, !tbaa !45
  %i.rl = zext i32 %i.rk to i64
  %i.rm = load ptr, ptr %i.kp, align 8, !tbaa !8
  %i.rn = getelementptr inbounds nuw [112 x i8], ptr %i.rm, i64 %i.rl ; 2 uses
  %i.ro = getelementptr inbounds nuw i8, ptr %i.rn, i64 32
  %i.rp = load ptr, ptr %i.ro, align 8, !tbaa !8  ; 2 uses
  %i.rq = getelementptr inbounds nuw i8, ptr %i.rn, i64 40
  %i.rr = load i32, ptr %i.rq, align 8, !tbaa !62 ; 2 uses
  %i.rs = zext i32 %i.rr to i64
  %.idx60.i = shl nuw nsw i64 %i.rs, 4
  %i.rt = getelementptr inbounds nuw i8, ptr %i.rp, i64 %.idx60.i
  %.not2353.i = icmp eq i32 %i.rr, 0
  br i1 %.not2353.i, label %._crit_edge.i, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.br
  %.pre68.pre.i = load i64, ptr %8, align 8, !tbaa !81
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZN4llvm2AA7RangeTyaNERKS1_.exit.i, %.lr.ph.preheader.i
  %.pre68.i = phi i64 [ %.pre6870.i, %_ZN4llvm2AA7RangeTyaNERKS1_.exit.i ], [ %.pre68.pre.i, %.lr.ph.preheader.i ] ; 3 uses
  %.02154.i = phi ptr [ %i.sp, %_ZN4llvm2AA7RangeTyaNERKS1_.exit.i ], [ %i.rp, %.lr.ph.preheader.i ] ; 7 uses
  %i.ru = load i64, ptr %.02154.i, align 8, !tbaa !81 ; 2 uses
  %i.rv = icmp eq i64 %i.ru, -2147483648
  br i1 %i.rv, label %_ZN4llvm2AA7RangeTyaNERKS1_.exit.i, label %bb.bs

bb.bs:                                            ; preds = %.lr.ph.i
  switch i64 %.pre68.i, label %bb.bu [
    i64 -2147483648, label %bb.bt
    i64 2147483647, label %bb.bv
  ]

bb.bt:                                            ; preds = %bb.bs
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %8, ptr noundef nonnull align 8 dereferenceable(16) %.02154.i, i64 16, i1 false), !tbaa.struct !78
  %.pre.i = load i64, ptr %8, align 8, !tbaa !81
  br label %_ZN4llvm2AA7RangeTyaNERKS1_.exit.i

bb.bu:                                            ; preds = %bb.bs
  %i.rw = icmp eq i64 %i.ru, 2147483647
  br i1 %i.rw, label %bb.bv, label %bb.bw

bb.bv:                                            ; preds = %bb.bu, %bb.bs
  store i64 2147483647, ptr %8, align 8, !tbaa !81
  br label %bb.bw

bb.bw:                                            ; preds = %bb.bv, %bb.bu
  %.pre6869.i = phi i64 [ 2147483647, %bb.bv ], [ %.pre68.i, %bb.bu ] ; 4 uses
  %i.rx = load i64, ptr %i.kq, align 8, !tbaa !92 ; 3 uses
  %i.ry = icmp eq i64 %i.rx, 2147483647
  br i1 %i.ry, label %thread-pre-split.i.i, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %i.rz = getelementptr inbounds nuw i8, ptr %.02154.i, i64 8
  %i.sa = load i64, ptr %i.rz, align 8, !tbaa !92 ; 3 uses
  %i.sb = icmp eq i64 %i.sa, 2147483647
  br i1 %i.sb, label %thread-pre-split.i.i, label %thread-pre-split.thread.i.i

thread-pre-split.thread.i.i:                      ; preds = %bb.bx
  %i.sc = icmp eq i64 %.pre6869.i, 2147483647
  br i1 %i.sc, label %bb.by, label %bb.bz

thread-pre-split.i.i:                             ; preds = %bb.bx, %bb.bw
  store i64 2147483647, ptr %i.kq, align 8, !tbaa !92
  %i.sd = icmp eq i64 %.pre6869.i, 2147483647
  br i1 %i.sd, label %_ZN4llvm2AA7RangeTyaNERKS1_.exit.i, label %.critedge.i.i

bb.by:                                            ; preds = %thread-pre-split.thread.i.i
  %i.se = call i64 @llvm.smax.i64(i64 %i.rx, i64 %i.sa)
  store i64 %i.se, ptr %i.kq, align 8, !tbaa !92
  br label %_ZN4llvm2AA7RangeTyaNERKS1_.exit.i

bb.bz:                                            ; preds = %thread-pre-split.thread.i.i
  %i.sf = load i64, ptr %.02154.i, align 8, !tbaa !35
  %27 = call i64 @llvm.smin.i64(i64 %i.sf, i64 %.pre6869.i) ; 4 uses
  store i64 %27, ptr %8, align 8, !tbaa !81
  %i.sg = add nsw i64 %27, %i.rx
  %i.sh = load i64, ptr %.02154.i, align 8, !tbaa !81
  %i.si = add nsw i64 %i.sh, %i.sa
  %.sroa.speculated.i.i = call i64 @llvm.smax.i64(i64 %i.sg, i64 %i.si)
  %i.sj = sub nsw i64 %.sroa.speculated.i.i, %27
  store i64 %i.sj, ptr %i.kq, align 8, !tbaa !92
  br label %_ZN4llvm2AA7RangeTyaNERKS1_.exit.i

.critedge.i.i:                                    ; preds = %thread-pre-split.i.i
  %i.sk = load i64, ptr %.02154.i, align 8, !tbaa !35
  %28 = call i64 @llvm.smin.i64(i64 %i.sk, i64 %.pre6869.i) ; 2 uses
  store i64 %28, ptr %8, align 8, !tbaa !81
  br label %_ZN4llvm2AA7RangeTyaNERKS1_.exit.i

_ZN4llvm2AA7RangeTyaNERKS1_.exit.i:               ; preds = %.critedge.i.i, %bb.bz, %bb.by, %thread-pre-split.i.i, %bb.bt, %.lr.ph.i
  %.pre6870.i = phi i64 [ %.pre68.i, %.lr.ph.i ], [ %.pre.i, %bb.bt ], [ 2147483647, %thread-pre-split.i.i ], [ 2147483647, %bb.by ], [ %27, %bb.bz ], [ %28, %.critedge.i.i ] ; 2 uses
  %i.sl = icmp eq i64 %.pre6870.i, 2147483647
  %i.sm = load i64, ptr %i.kq, align 8
  %i.sn = icmp eq i64 %i.sm, 2147483647
  %i.so = select i1 %i.sl, i1 %i.sn, i1 false
  %i.sp = getelementptr inbounds nuw i8, ptr %.02154.i, i64 16 ; 2 uses
  %.not23.i = icmp eq ptr %i.sp, %i.rt
  %or.cond.i = select i1 %i.so, i1 true, i1 %.not23.i
  br i1 %or.cond.i, label %._crit_edge.i, label %.lr.ph.i

._crit_edge.i:                                    ; preds = %_ZN4llvm2AA7RangeTyaNERKS1_.exit.i, %bb.br
  %i.sq = getelementptr inbounds nuw i8, ptr %.02256.i, i64 4 ; 2 uses
  %.not.i132 = icmp eq ptr %i.sq, %i.ko
  br i1 %.not.i132, label %._crit_edge59.i, label %bb.br

.loopexit:                                        ; preds = %.lr.ph.i.i.i.i.i, %_ZNK4llvm2AA7RangeTy10mayOverlapERKS1_.exit.thread53.i.i, %_ZN4llvm16DenseMapIteratorINS_2AA7RangeTyENS_8SmallSetIjLj4ESt4lessIjEEENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S6_EELb1EEppEv.exit.i.i, %.lr.ph.i.i.i24.i.preheader, %.lr.ph.i.i.i24.i, %.lr.ph.i.i.i.i.i.preheader, %_ZNK4llvm12DenseMapBaseINS_8DenseMapIPKNS_11InstructionENS_11SmallVectorIjLj12EEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E4findES4_.exit.i, %_ZNK4llvm12DenseMapBaseINS_8DenseMapINS_2AA7RangeTyENS_8SmallSetIjLj4ESt4lessIjEEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S7_EEEES3_S7_S9_SC_E5beginEv.exit.i.i, %bb.am
  %i.sr = load i32, ptr %i.o, align 4, !tbaa !516 ; 2 uses
  %i.ss = icmp ne i32 %i.sr, 0
  %i.st = zext i1 %i.ss to i8
  store i8 %i.st, ptr %7, align 1, !tbaa !289
  %i.su = load ptr, ptr %19, align 8, !tbaa !22   ; 4 uses
  %i.sv = load i8, ptr %i.p, align 8, !tbaa !16, !range !20, !noundef !21
  %i.sw = trunc nuw i8 %i.sv to i1
  %i.sx = load i32, ptr %i.n, align 8
  %.v.v.i.i.i = select i1 %i.sw, i32 %i.sr, i32 %i.sx ; 2 uses
  %.v.i.i.i = zext i32 %.v.v.i.i.i to i64         ; 2 uses
  %.idx.i135 = shl nuw nsw i64 %.v.i.i.i, 3
  %i.sy = getelementptr i8, ptr %i.su, i64 %.idx.i135 ; 4 uses
  %.not1.i.i.i.i.i = icmp eq i32 %.v.v.i.i.i, 0
  br i1 %.not1.i.i.i.i.i, label %_ZNK4llvm15SmallPtrSetImplIPKNS_13AAPointerInfo6AccessEE5beginEv.exit, label %.lr.ph.i.i.i.i.i136

.lr.ph.i.i.i.i.i136:                              ; preds = %.loopexit, %bb.ca
  %.sroa.0.0.i.i = phi ptr [ %i.tb, %bb.ca ], [ %i.su, %.loopexit ] ; 3 uses
  %i.sz = load ptr, ptr %.sroa.0.0.i.i, align 8, !tbaa !561
  %i.ta = icmp eq ptr %i.sz, inttoptr (i64 -1 to ptr)
  br i1 %i.ta, label %bb.ca, label %_ZNK4llvm15SmallPtrSetImplIPKNS_13AAPointerInfo6AccessEE5beginEv.exit

bb.ca:                                            ; preds = %.lr.ph.i.i.i.i.i136
  %i.tb = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i137 = icmp eq ptr %i.tb, %i.sy
  br i1 %.not.i.i.i.i.i137, label %_ZNK4llvm15SmallPtrSetImplIPKNS_13AAPointerInfo6AccessEE5beginEv.exit, label %.lr.ph.i.i.i.i.i136, !llvm.loop !3790

_ZNK4llvm15SmallPtrSetImplIPKNS_13AAPointerInfo6AccessEE5beginEv.exit: ; preds = %.lr.ph.i.i.i.i.i136, %bb.ca, %.loopexit
  %.sroa.0.1.i.i = phi ptr [ %i.su, %.loopexit ], [ %.sroa.0.0.i.i, %.lr.ph.i.i.i.i.i136 ], [ %i.sy, %bb.ca ] ; 2 uses
  %i.tc = getelementptr inbounds nuw [8 x i8], ptr %i.su, i64 %.v.i.i.i ; 2 uses
  %.not225237 = icmp eq ptr %.sroa.0.1.i.i, %i.tc
  br i1 %.not225237, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %_ZN4llvm19SmallPtrSetIteratorIPKNS_13AAPointerInfo6AccessEEppEv.exit, %_ZNK4llvm15SmallPtrSetImplIPKNS_13AAPointerInfo6AccessEE5beginEv.exit
  %.0210.lcssa = phi ptr [ null, %_ZNK4llvm15SmallPtrSetImplIPKNS_13AAPointerInfo6AccessEE5beginEv.exit ], [ %.1, %_ZN4llvm19SmallPtrSetIteratorIPKNS_13AAPointerInfo6AccessEEppEv.exit ] ; 2 uses
  %i.td = load ptr, ptr %20, align 8, !tbaa !8    ; 2 uses
  %i.te = load i32, ptr %i.r, align 8, !tbaa !62  ; 2 uses
  %i.tf = zext i32 %i.te to i64
  %.idx = shl nuw nsw i64 %i.tf, 4
  %i.tg = getelementptr inbounds nuw i8, ptr %i.td, i64 %.idx
  %.not83240 = icmp eq i32 %i.te, 0
  br i1 %.not83240, label %_ZNK4llvm2AA11PointerInfo5State25forallInterferingAccessesIZNK12_GLOBAL__N_117AAPointerInfoImpl25forallInterferingAccessesERNS_10AttributorERKNS_17AbstractAttributeERNS_11InstructionEbbNS_12function_refIFbRKNS_13AAPointerInfo6AccessEbEEERbRNS0_7RangeTyENSD_IFbSH_EEEEUlSH_bE_EEbSC_T_SM_.exit, label %.lr.ph243

.lr.ph243:                                        ; preds = %._crit_edge
  %i.th = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.ti = getelementptr inbounds nuw i8, ptr %24, i64 16 ; 4 uses
  %i.tj = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  %i.tk = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 2 uses
  %i.tl = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 2 uses
  %.not23.i143 = icmp ne ptr %i.fk, null
  %i.tm = trunc nuw i8 %i.fh to i1
  %or.cond223 = and i1 %.not23.i143, %i.tm
  %i.tn = getelementptr inbounds nuw i8, ptr %6, i64 8
  br label %bb.cf

.lr.ph:                                           ; preds = %_ZNK4llvm15SmallPtrSetImplIPKNS_13AAPointerInfo6AccessEE5beginEv.exit, %_ZN4llvm19SmallPtrSetIteratorIPKNS_13AAPointerInfo6AccessEEppEv.exit
  %.sroa.0170.0239 = phi ptr [ %.sroa.0170.2, %_ZN4llvm19SmallPtrSetIteratorIPKNS_13AAPointerInfo6AccessEEppEv.exit ], [ %.sroa.0.1.i.i, %_ZNK4llvm15SmallPtrSetImplIPKNS_13AAPointerInfo6AccessEE5beginEv.exit ] ; 2 uses
  %.0210238 = phi ptr [ %.1, %_ZN4llvm19SmallPtrSetIteratorIPKNS_13AAPointerInfo6AccessEEppEv.exit ], [ null, %_ZNK4llvm15SmallPtrSetImplIPKNS_13AAPointerInfo6AccessEE5beginEv.exit ] ; 3 uses
  %i.to = load ptr, ptr %.sroa.0170.0239, align 8, !tbaa !561
  %.not84 = icmp eq ptr %.0210238, null
  %i.tp = getelementptr inbounds nuw i8, ptr %i.to, i64 8 ; 2 uses
  %i.tq = load ptr, ptr %i.tp, align 8, !tbaa !75 ; 2 uses
  br i1 %.not84, label %bb.cd, label %bb.cb

bb.cb:                                            ; preds = %.lr.ph
  %i.tr = call noundef zeroext i1 @_ZNK4llvm13DominatorTree9dominatesEPKNS_5ValueEPKNS_11InstructionE(ptr noundef nonnull align 8 dereferenceable(204) %i.fk, ptr noundef nonnull %.0210238, ptr noundef %i.tq) #39
  br i1 %i.tr, label %bb.cc, label %bb.cd

bb.cc:                                            ; preds = %bb.cb
  %i.ts = load ptr, ptr %i.tp, align 8, !tbaa !75
  br label %bb.cd

bb.cd:                                            ; preds = %.lr.ph, %bb.cb, %bb.cc
  %.1 = phi ptr [ %.0210238, %bb.cb ], [ %i.ts, %bb.cc ], [ %i.tq, %.lr.ph ] ; 2 uses
  %i.tt = getelementptr inbounds nuw i8, ptr %.sroa.0170.0239, i64 8 ; 3 uses
  %.not1.i.i.i = icmp eq ptr %i.tt, %i.sy
  br i1 %.not1.i.i.i, label %_ZN4llvm19SmallPtrSetIteratorIPKNS_13AAPointerInfo6AccessEEppEv.exit, label %.lr.ph.i.i.i140

.lr.ph.i.i.i140:                                  ; preds = %bb.cd, %bb.ce
  %.sroa.0170.1 = phi ptr [ %i.tw, %bb.ce ], [ %i.tt, %bb.cd ] ; 3 uses
  %i.tu = load ptr, ptr %.sroa.0170.1, align 8, !tbaa !561
  %i.tv = icmp eq ptr %i.tu, inttoptr (i64 -1 to ptr)
  br i1 %i.tv, label %bb.ce, label %_ZN4llvm19SmallPtrSetIteratorIPKNS_13AAPointerInfo6AccessEEppEv.exit

bb.ce:                                            ; preds = %.lr.ph.i.i.i140
  %i.tw = getelementptr inbounds nuw i8, ptr %.sroa.0170.1, i64 8 ; 3 uses
  %.not.i.i.i141 = icmp eq ptr %i.tw, %i.sy
  br i1 %.not.i.i.i141, label %_ZN4llvm19SmallPtrSetIteratorIPKNS_13AAPointerInfo6AccessEEppEv.exit, label %.lr.ph.i.i.i140, !llvm.loop !3790

_ZN4llvm19SmallPtrSetIteratorIPKNS_13AAPointerInfo6AccessEEppEv.exit: ; preds = %.lr.ph.i.i.i140, %bb.ce, %bb.cd
  %.sroa.0170.2 = phi ptr [ %i.tt, %bb.cd ], [ %.sroa.0170.1, %.lr.ph.i.i.i140 ], [ %i.tw, %bb.ce ] ; 2 uses
  %.not225 = icmp eq ptr %.sroa.0170.2, %i.tc
  br i1 %.not225, label %._crit_edge, label %.lr.ph

bb.cf:                                            ; preds = %.lr.ph243, %.critedge
  %.0241 = phi ptr [ %i.td, %.lr.ph243 ], [ %i.xi, %.critedge ] ; 4 uses
  %i.tx = load i8, ptr %i.h, align 1, !tbaa !289, !range !20, !noundef !21
  %i.ty = trunc nuw i8 %i.tx to i1
  %i.tz = load i8, ptr %i.k, align 1, !range !20
  %i.ua = trunc nuw i8 %i.tz to i1
  %or.cond6 = select i1 %i.ty, i1 true, i1 %i.ua
  %i.ub = load ptr, ptr %i.g, align 8
  %i.uc = icmp ne ptr %i.ub, null
  %or.cond8 = select i1 %or.cond6, i1 true, i1 %i.uc
  br i1 %or.cond8, label %bb.cg, label %bb.df

bb.cg:                                            ; preds = %bb.cf
  %i.ud = load ptr, ptr %.0241, align 8, !tbaa !3791 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11)
  call void @llvm.lifetime.start.p0(ptr nonnull %12)
  %i.ue = load ptr, ptr %9, align 8, !tbaa !3794  ; 2 uses
  %.not45.i = icmp eq ptr %i.ue, null
  br i1 %.not45.i, label %bb.ci, label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  %i.uf = load i64, ptr %i.th, align 8, !tbaa !3796
  %i.ug = call noundef zeroext i1 %i.ue(i64 noundef %i.uf, ptr noundef nonnull align 8 dereferenceable(112) %i.ud) #39, !inline_history !3797
  br i1 %i.ug, label %_ZZNK12_GLOBAL__N_117AAPointerInfoImpl25forallInterferingAccessesERN4llvm10AttributorERKNS1_17AbstractAttributeERNS1_11InstructionEbbNS1_12function_refIFbRKNS1_13AAPointerInfo6AccessEbEEERbRNS1_2AA7RangeTyENS9_IFbSD_EEEENKUlSD_bE0_clESD_b.exit.thread220, label %bb.ci

bb.ci:                                            ; preds = %bb.ch, %bb.cg
  %i.uh = getelementptr inbounds nuw i8, ptr %i.ud, i64 8 ; 7 uses
  %i.ui = load ptr, ptr %i.uh, align 8, !tbaa !75
  %i.uj = call fastcc noundef zeroext i1 @_ZZNK12_GLOBAL__N_117AAPointerInfoImpl25forallInterferingAccessesERN4llvm10AttributorERKNS1_17AbstractAttributeERNS1_11InstructionEbbNS1_12function_refIFbRKNS1_13AAPointerInfo6AccessEbEEERbRNS1_2AA7RangeTyENS9_IFbSD_EEEENKUlRKS7_E_clESN_(ptr noundef nonnull align 8 dereferenceable(72) %22, ptr noundef nonnull align 8 dereferenceable(72) %i.ui)
  br i1 %i.uj, label %_ZZNK12_GLOBAL__N_117AAPointerInfoImpl25forallInterferingAccessesERN4llvm10AttributorERKNS1_17AbstractAttributeERNS1_11InstructionEbbNS1_12function_refIFbRKNS1_13AAPointerInfo6AccessEbEEERbRNS1_2AA7RangeTyENS9_IFbSD_EEEENKUlSD_E_clESD_.exit.thread.i, label %bb.cj

bb.cj:                                            ; preds = %bb.ci
  %i.uk = load ptr, ptr %i.uh, align 8, !tbaa !75
  %i.ul = load ptr, ptr %i.ud, align 8, !tbaa !63 ; 2 uses
  %.not.i.i142 = icmp eq ptr %i.uk, %i.ul
  br i1 %.not.i.i142, label %_ZZNK12_GLOBAL__N_117AAPointerInfoImpl25forallInterferingAccessesERN4llvm10AttributorERKNS1_17AbstractAttributeERNS1_11InstructionEbbNS1_12function_refIFbRKNS1_13AAPointerInfo6AccessEbEEERbRNS1_2AA7RangeTyENS9_IFbSD_EEEENKUlSD_bE0_clESD_b.exit.thread, label %_ZZNK12_GLOBAL__N_117AAPointerInfoImpl25forallInterferingAccessesERN4llvm10AttributorERKNS1_17AbstractAttributeERNS1_11InstructionEbbNS1_12function_refIFbRKNS1_13AAPointerInfo6AccessEbEEERbRNS1_2AA7RangeTyENS9_IFbSD_EEEENKUlSD_E_clESD_.exit.i

_ZZNK12_GLOBAL__N_117AAPointerInfoImpl25forallInterferingAccessesERN4llvm10AttributorERKNS1_17AbstractAttributeERNS1_11InstructionEbbNS1_12function_refIFbRKNS1_13AAPointerInfo6AccessEbEEERbRNS1_2AA7RangeTyENS9_IFbSD_EEEENKUlSD_E_clESD_.exit.i: ; preds = %bb.cj
  %i.um = call fastcc noundef zeroext i1 @_ZZNK12_GLOBAL__N_117AAPointerInfoImpl25forallInterferingAccessesERN4llvm10AttributorERKNS1_17AbstractAttributeERNS1_11InstructionEbbNS1_12function_refIFbRKNS1_13AAPointerInfo6AccessEbEEERbRNS1_2AA7RangeTyENS9_IFbSD_EEEENKUlRKS7_E_clESN_(ptr noundef nonnull align 8 dereferenceable(72) %22, ptr noundef nonnull align 8 dereferenceable(72) %i.ul)
  br i1 %i.um, label %_ZZNK12_GLOBAL__N_117AAPointerInfoImpl25forallInterferingAccessesERN4llvm10AttributorERKNS1_17AbstractAttributeERNS1_11InstructionEbbNS1_12function_refIFbRKNS1_13AAPointerInfo6AccessEbEEERbRNS1_2AA7RangeTyENS9_IFbSD_EEEENKUlSD_E_clESD_.exit.thread.i, label %_ZZNK12_GLOBAL__N_117AAPointerInfoImpl25forallInterferingAccessesERN4llvm10AttributorERKNS1_17AbstractAttributeERNS1_11InstructionEbbNS1_12function_refIFbRKNS1_13AAPointerInfo6AccessEbEEERbRNS1_2AA7RangeTyENS9_IFbSD_EEEENKUlSD_bE0_clESD_b.exit.thread

_ZZNK12_GLOBAL__N_117AAPointerInfoImpl25forallInterferingAccessesERN4llvm10AttributorERKNS1_17AbstractAttributeERNS1_11InstructionEbbNS1_12function_refIFbRKNS1_13AAPointerInfo6AccessEbEEERbRNS1_2AA7RangeTyENS9_IFbSD_EEEENKUlSD_E_clESD_.exit.thread.i: ; preds = %_ZZNK12_GLOBAL__N_117AAPointerInfoImpl25forallInterferingAccessesERN4llvm10AttributorERKNS1_17AbstractAttributeERNS1_11InstructionEbbNS1_12function_refIFbRKNS1_13AAPointerInfo6AccessEbEEERbRNS1_2AA7RangeTyENS9_IFbSD_EEEENKUlSD_E_clESD_.exit.i, %bb.ci
  %i.un = load i8, ptr %i.f, align 1, !tbaa !289, !range !20, !noundef !21
  %i.uo = trunc nuw i8 %i.un to i1
  br i1 %5, label %bb.ck, label %_ZNSt14_Function_baseD2Ev.exit.i

bb.ck:                                            ; preds = %_ZZNK12_GLOBAL__N_117AAPointerInfoImpl25forallInterferingAccessesERN4llvm10AttributorERKNS1_17AbstractAttributeERNS1_11InstructionEbbNS1_12function_refIFbRKNS1_13AAPointerInfo6AccessEbEEERbRNS1_2AA7RangeTyENS9_IFbSD_EEEENKUlSD_E_clESD_.exit.thread.i
  %i.up = load ptr, ptr %i.uh, align 8, !tbaa !75
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %11, i8 0, i64 32, i1 false)
  %i.uq = load ptr, ptr %i.ti, align 16, !tbaa !13 ; 2 uses
  %.not.i.i.not.i.i = icmp eq ptr %i.uq, null
  br i1 %.not.i.i.not.i.i, label %_ZNSt8functionIFbRKN4llvm8FunctionEEEC2ERKS5_.exit.i, label %bb.cl

bb.cl:                                            ; preds = %bb.ck
  %i.ur = call noundef zeroext i1 %i.uq(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull align 8 dereferenceable(32) %24, i32 noundef 2) #39, !inline_history !3798 ; 0 uses
  %i.us = load <2 x ptr>, ptr %i.ti, align 16, !tbaa !561
  store <2 x ptr> %i.us, ptr %i.tj, align 8, !tbaa !561
  br label %_ZNSt8functionIFbRKN4llvm8FunctionEEEC2ERKS5_.exit.i

_ZNSt8functionIFbRKN4llvm8FunctionEEEC2ERKS5_.exit.i: ; preds = %bb.cl, %bb.ck
  %i.ut = call noundef zeroext i1 @_ZN4llvm2AA22isPotentiallyReachableERNS_10AttributorERKNS_11InstructionES5_RKNS_17AbstractAttributeEPKNS_11SmallPtrSetIPS3_Lj4EEESt8functionIFbRKNS_8FunctionEEE(ptr noundef nonnull align 8 dereferenceable(3312) %1, ptr noundef nonnull align 8 dereferenceable(72) %3, ptr noundef nonnull align 8 dereferenceable(72) %i.up, ptr noundef nonnull align 8 dereferenceable(80) %2, ptr noundef nonnull %26, ptr nofree noundef nonnull align 8 dereferenceable(32) %11) #39 ; 2 uses
  %i.uu = load ptr, ptr %i.tj, align 8, !tbaa !13 ; 2 uses
  %.not.i27.i = icmp eq ptr %i.uu, null
  br i1 %.not.i27.i, label %_ZNSt14_Function_baseD2Ev.exit.i, label %bb.cm

bb.cm:                                            ; preds = %_ZNSt8functionIFbRKN4llvm8FunctionEEEC2ERKS5_.exit.i
  %i.uv = call noundef zeroext i1 %i.uu(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull align 8 dereferenceable(32) %11, i32 noundef 3) #39, !inline_history !3799 ; 0 uses
  br label %_ZNSt14_Function_baseD2Ev.exit.i

_ZNSt14_Function_baseD2Ev.exit.i:                 ; preds = %bb.cm, %_ZNSt8functionIFbRKN4llvm8FunctionEEEC2ERKS5_.exit.i, %_ZZNK12_GLOBAL__N_117AAPointerInfoImpl25forallInterferingAccessesERN4llvm10AttributorERKNS1_17AbstractAttributeERNS1_11InstructionEbbNS1_12function_refIFbRKNS1_13AAPointerInfo6AccessEbEEERbRNS1_2AA7RangeTyENS9_IFbSD_EEEENKUlSD_E_clESD_.exit.thread.i
  %.018.i = phi i1 [ false, %_ZZNK12_GLOBAL__N_117AAPointerInfoImpl25forallInterferingAccessesERN4llvm10AttributorERKNS1_17AbstractAttributeERNS1_11InstructionEbbNS1_12function_refIFbRKNS1_13AAPointerInfo6AccessEbEEERbRNS1_2AA7RangeTyENS9_IFbSD_EEEENKUlSD_E_clESD_.exit.thread.i ], [ %i.ut, %_ZNSt8functionIFbRKN4llvm8FunctionEEEC2ERKS5_.exit.i ], [ %i.ut, %bb.cm ]
  br i1 %i.uo, label %bb.cn, label %.thread.i

bb.cn:                                            ; preds = %_ZNSt14_Function_baseD2Ev.exit.i
  %i.uw = load ptr, ptr %i.uh, align 8, !tbaa !75
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %12, i8 0, i64 32, i1 false)
  %i.ux = load ptr, ptr %i.ti, align 16, !tbaa !13 ; 2 uses
  %.not.i.i.not.i28.i = icmp eq ptr %i.ux, null
  br i1 %.not.i.i.not.i28.i, label %_ZNSt8functionIFbRKN4llvm8FunctionEEEC2ERKS5_.exit29.i, label %bb.co

bb.co:                                            ; preds = %bb.cn
  %i.uy = call noundef zeroext i1 %i.ux(ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef nonnull align 8 dereferenceable(32) %24, i32 noundef 2) #39, !inline_history !3798 ; 0 uses
  %i.uz = load <2 x ptr>, ptr %i.ti, align 16, !tbaa !561
  store <2 x ptr> %i.uz, ptr %i.tk, align 8, !tbaa !561
  br label %_ZNSt8functionIFbRKN4llvm8FunctionEEEC2ERKS5_.exit29.i

_ZNSt8functionIFbRKN4llvm8FunctionEEEC2ERKS5_.exit29.i: ; preds = %bb.co, %bb.cn
  %i.va = call noundef zeroext i1 @_ZN4llvm2AA22isPotentiallyReachableERNS_10AttributorERKNS_11InstructionES5_RKNS_17AbstractAttributeEPKNS_11SmallPtrSetIPS3_Lj4EEESt8functionIFbRKNS_8FunctionEEE(ptr noundef nonnull align 8 dereferenceable(3312) %1, ptr noundef nonnull align 8 dereferenceable(72) %i.uw, ptr noundef nonnull align 8 dereferenceable(72) %3, ptr noundef nonnull align 8 dereferenceable(80) %2, ptr noundef nonnull %26, ptr nofree noundef nonnull align 8 dereferenceable(32) %12) #39
  %i.vb = load ptr, ptr %i.tk, align 8, !tbaa !13 ; 2 uses
  %.not.i30.i = icmp eq ptr %i.vb, null
  br i1 %.not.i30.i, label %bb.cq, label %bb.cp

end_hunk_0
