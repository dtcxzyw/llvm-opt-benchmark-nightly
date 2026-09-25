Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/DataReader?download=true
inline.NumInlined: 5271
inline.NumDeleted: 2340
loop-unroll.NumRuntimeUnrolled: 12
loop-unroll.NumUnrolled: 12
begin_hunk_0_@_ZN4llvm4bolt10DataReader19matchProfileMemDataERNS0_14BinaryFunctionE:bb.a
  %i.ao = getelementptr inbounds nuw i8, ptr %.sroa.06.1.i.i.i, i64 16
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !363 ; 2 uses
  %.not = icmp eq ptr %i.ap, null
  br i1 %.not, label %_ZNK4llvm4bolt10DataReader10getMemDataERKNS0_14BinaryFunctionE.exit.thread, label %bb.l

bb.l:                                             ; preds = %_ZNK4llvm4bolt10DataReader10getMemDataERKNS0_14BinaryFunctionE.exit
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 40
  store i8 0, ptr %i.aq, align 8, !tbaa !323
  br label %_ZNK4llvm4bolt10DataReader10getMemDataERKNS0_14BinaryFunctionE.exit.thread

_ZNK4llvm4bolt10DataReader10getMemDataERKNS0_14BinaryFunctionE.exit.thread: ; preds = %.lr.ph.i.i.i.i.i, %bb.f, %bb.h, %..loopexit_crit_edge21.i.i.i.i.i, %bb.l, %_ZNK4llvm4bolt10DataReader10getMemDataERKNS0_14BinaryFunctionE.exit
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 280
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #29
  store ptr %1, ptr %i.a, align 8, !tbaa !314
  %i.as = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt8__detail9_Map_baseIPKN4llvm4bolt14BinaryFunctionESt4pairIKS5_PNS2_11FuncMemDataEESaISA_ENS_10_Select1stESt8equal_toIS5_ESt4hashIS5_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_20_Prime_rehash_policyENS_17_Hashtable_traitsILb0ELb0ELb1EEELb1EEixEOS5_(ptr noundef nonnull align 8 dereferenceable(56) %i.ar, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  store ptr %i.l, ptr %i.as, align 8, !tbaa !316
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #29
  store i8 1, ptr %i.p, align 8, !tbaa !323
  br label %.loopexit

.loopexit:                                        ; preds = %bb.c, %_ZNSt6vectorIN4llvm9StringRefESaIS1_EED2Ev.exit, %_ZNK4llvm4bolt10DataReader10getMemDataERKNS0_14BinaryFunctionE.exit.thread
  %.not.i.i.i13 = icmp eq ptr %i.h, null
  br i1 %.not.i.i.i13, label %_ZNSt6vectorIPN4llvm4bolt11FuncMemDataESaIS3_EED2Ev.exit, label %bb.m

bb.m:                                             ; preds = %.loopexit
  %i.at = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !365
  %i.av = ptrtoint ptr %i.au to i64
  %i.aw = ptrtoint ptr %i.h to i64
  %i.ax = sub i64 %i.av, %i.aw
  call void @_ZdlPvm(ptr noundef nonnull %i.h, i64 noundef %i.ax) #33
  br label %_ZNSt6vectorIPN4llvm4bolt11FuncMemDataESaIS3_EED2Ev.exit

_ZNSt6vectorIPN4llvm4bolt11FuncMemDataESaIS3_EED2Ev.exit: ; preds = %.loopexit, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #29
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4llvm4bolt10DataReader17readProfilePreCFGERNS0_13BinaryContextE(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.llvm::Error") align 8 captures(none) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(416) %1, ptr noundef nonnull align 8 dereferenceable(2268) %2) unnamed_addr #3 align 2 {
bb.a:
  %3 = alloca %"struct.llvm::bolt::MemoryAccessProfile", align 8 ; 9 uses
  %4 = alloca %"struct.llvm::bolt::AddressAccess", align 8 ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 272
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !309  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 256 ; 2 uses
  %.not6582 = icmp eq ptr %i.b, %i.c
  br i1 %.not6582, label %_ZN4llvm5ErrorD2Ev.exit, label %.lr.ph85

.lr.ph85:                                         ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 304
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 280
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 288
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 296
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 1568
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 20
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 1104 ; 2 uses
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %2, i64 1112
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 8
  br label %bb.b

_ZN4llvm5ErrorD2Ev.exit:                          ; preds = %_ZNK4llvm4bolt10DataReader10getMemDataERKNS0_14BinaryFunctionE.exit.thread, %bb.a
  store ptr null, ptr %0, align 8, !tbaa !335
  ret void

bb.b:                                             ; preds = %.lr.ph85, %_ZNK4llvm4bolt10DataReader10getMemDataERKNS0_14BinaryFunctionE.exit.thread
  %.sroa.055.083 = phi ptr [ %i.b, %.lr.ph85 ], [ %i.jy, %_ZNK4llvm4bolt10DataReader10getMemDataERKNS0_14BinaryFunctionE.exit.thread ] ; 6 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.055.083, i64 40 ; 4 uses
  %i.p = load i64, ptr %i.d, align 8, !tbaa !357
  %.not.not.i.i.i = icmp eq i64 %i.p, 0
  br i1 %.not.not.i.i.i, label %.preheader, label %bb.d

.preheader:                                       ; preds = %bb.b, %bb.c
  %.sroa.06.0.in.i.i.i = phi ptr [ %.sroa.06.0.i.i.i, %bb.c ], [ %i.g, %bb.b ]
  %.sroa.06.0.i.i.i = load ptr, ptr %.sroa.06.0.in.i.i.i, align 8, !tbaa !358 ; 4 uses
  %.not.i.i.i = icmp eq ptr %.sroa.06.0.i.i.i, null
  br i1 %.not.i.i.i, label %_ZNK4llvm4bolt10DataReader10getMemDataERKNS0_14BinaryFunctionE.exit.thread, label %bb.c

bb.c:                                             ; preds = %.preheader
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i.i, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !314
  %i.s = icmp eq ptr %i.o, %i.r
  br i1 %i.s, label %_ZNK4llvm4bolt10DataReader10getMemDataERKNS0_14BinaryFunctionE.exit, label %.preheader, !llvm.loop !8

bb.d:                                             ; preds = %bb.b
  %i.t = ptrtoint ptr %i.o to i64
  %i.u = load i64, ptr %i.f, align 8, !tbaa !359  ; 2 uses
  %i.v = urem i64 %i.t, %i.u                      ; 2 uses
  %i.w = load ptr, ptr %i.e, align 8, !tbaa !360
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %i.v
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !361  ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.y, null
  br i1 %.not.i.i.i.i.i, label %_ZNK4llvm4bolt10DataReader10getMemDataERKNS0_14BinaryFunctionE.exit.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !358  ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !314
  %i.ac = icmp eq ptr %i.o, %i.ab
  br i1 %i.ac, label %_ZNK4llvm4bolt10DataReader10getMemDataERKNS0_14BinaryFunctionE.exit, label %.lr.ph.i.i.i.i.i

bb.f:                                             ; preds = %bb.g
  %i.ad = icmp eq ptr %i.o, %i.ag
  br i1 %i.ad, label %_ZNK4llvm4bolt10DataReader10getMemDataERKNS0_14BinaryFunctionE.exit, label %.lr.ph.i.i.i.i.i, !llvm.loop !9

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.e, %bb.f
  %.020.i.i.i.i.i = phi ptr [ %i.ae, %bb.f ], [ %i.z, %bb.e ]
  %i.ae = load ptr, ptr %.020.i.i.i.i.i, align 8, !tbaa !358 ; 4 uses
  %.not18.i.i.i.i.i = icmp eq ptr %i.ae, null
  br i1 %.not18.i.i.i.i.i, label %_ZNK4llvm4bolt10DataReader10getMemDataERKNS0_14BinaryFunctionE.exit.thread, label %bb.g

bb.g:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !314 ; 2 uses
  %i.ah = ptrtoint ptr %i.ag to i64
  %i.ai = urem i64 %i.ah, %i.u
  %.not19.i.i.i.i.i = icmp eq i64 %i.ai, %i.v
  br i1 %.not19.i.i.i.i.i, label %bb.f, label %..loopexit_crit_edge21.i.i.i.i.i, !llvm.loop !9

..loopexit_crit_edge21.i.i.i.i.i:                 ; preds = %bb.g
  br label %_ZNK4llvm4bolt10DataReader10getMemDataERKNS0_14BinaryFunctionE.exit.thread, !llvm.loop !9

_ZNK4llvm4bolt10DataReader10getMemDataERKNS0_14BinaryFunctionE.exit: ; preds = %bb.f, %bb.c, %bb.e
  %.sroa.06.1.i.i.i = phi ptr [ %.sroa.06.0.i.i.i, %bb.c ], [ %i.z, %bb.e ], [ %i.ae, %bb.f ]
  %i.aj = getelementptr inbounds nuw i8, ptr %.sroa.06.1.i.i.i, i64 16
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !363 ; 3 uses
  %.not = icmp eq ptr %i.ak, null
  br i1 %.not, label %_ZNK4llvm4bolt10DataReader10getMemDataERKNS0_14BinaryFunctionE.exit.thread, label %bb.h

bb.h:                                             ; preds = %_ZNK4llvm4bolt10DataReader10getMemDataERKNS0_14BinaryFunctionE.exit
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !351 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.ak, i64 24
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !351 ; 2 uses
  %.not6680 = icmp eq ptr %i.am, %i.ao
  br i1 %.not6680, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.h
  %i.ap = getelementptr inbounds nuw i8, ptr %.sroa.055.083, i64 912 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.sroa.055.083, i64 904 ; 4 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.sroa.055.083, i64 112
  %i.as = load ptr, ptr %i.ap, align 8, !tbaa !353 ; 2 uses
  %i.at = icmp eq ptr %i.as, null
  br i1 %i.at, label %._crit_edge, label %.lr.ph.split

._crit_edge:                                      ; preds = %_ZNSt3mapIjN4llvm6MCInstESt4lessIjESaISt4pairIKjS1_EEE4findERS5_.exit.thread, %.lr.ph, %bb.h
  %i.au = getelementptr inbounds nuw i8, ptr %.sroa.055.083, i64 354
  store i8 1, ptr %i.au, align 2, !tbaa !729
  br label %_ZNK4llvm4bolt10DataReader10getMemDataERKNS0_14BinaryFunctionE.exit.thread

.lr.ph.splitthread-pre-split:                     ; preds = %_ZNSt3mapIjN4llvm6MCInstESt4lessIjESaISt4pairIKjS1_EEE4findERS5_.exit.thread
  %.pr = load ptr, ptr %i.ap, align 8, !tbaa !353
  br label %.lr.ph.split

.lr.ph.split:                                     ; preds = %.lr.ph, %.lr.ph.splitthread-pre-split
  %i.av = phi ptr [ %.pr, %.lr.ph.splitthread-pre-split ], [ %i.as, %.lr.ph ] ; 2 uses
  %.sroa.051.081 = phi ptr [ %i.jx, %.lr.ph.splitthread-pre-split ], [ %i.am, %.lr.ph ] ; 6 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %.sroa.051.081, i64 24
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !258
  %i.ay = trunc i64 %i.ax to i32                  ; 2 uses
  %.not10.i.i.i = icmp eq ptr %i.av, null
  br i1 %.not10.i.i.i, label %_ZNSt3mapIjN4llvm6MCInstESt4lessIjESaISt4pairIKjS1_EEE4findERS5_.exit.thread, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.split, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %.1.i.i.i, %.lr.ph.i.i.i ], [ %i.av, %.lr.ph.split ] ; 3 uses
  %.0811.i.i.i = phi ptr [ %.19.i.i.i, %.lr.ph.i.i.i ], [ %i.aq, %.lr.ph.split ]
  %i.az = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !236
  %i.bb = icmp ult i32 %i.ba, %i.ay               ; 2 uses
  %.19.i.i.i = select i1 %i.bb, ptr %.0811.i.i.i, ptr %.012.i.i.i ; 8 uses
  %.1.in.v.i.i.i = select i1 %i.bb, i64 24, i64 16
  %.1.in.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 %.1.in.v.i.i.i
  %.1.i.i.i = load ptr, ptr %.1.in.i.i.i, align 8, !tbaa !354 ; 2 uses
  %.not.i.i.i33 = icmp eq ptr %.1.i.i.i, null
  br i1 %.not.i.i.i33, label %_ZNSt8_Rb_treeIjSt4pairIKjN4llvm6MCInstEESt10_Select1stIS4_ESt4lessIjESaIS4_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS4_EPSt18_Rb_tree_node_baseRS1_.exit.i.i, label %.lr.ph.i.i.i, !llvm.loop !725

_ZNSt8_Rb_treeIjSt4pairIKjN4llvm6MCInstEESt10_Select1stIS4_ESt4lessIjESaIS4_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS4_EPSt18_Rb_tree_node_baseRS1_.exit.i.i: ; preds = %.lr.ph.i.i.i
  %i.bc = icmp eq ptr %.19.i.i.i, %i.aq
  br i1 %i.bc, label %_ZNSt3mapIjN4llvm6MCInstESt4lessIjESaISt4pairIKjS1_EEE4findERS5_.exit.thread, label %_ZNSt3mapIjN4llvm6MCInstESt4lessIjESaISt4pairIKjS1_EEE4findERS5_.exit

_ZNSt3mapIjN4llvm6MCInstESt4lessIjESaISt4pairIKjS1_EEE4findERS5_.exit: ; preds = %_ZNSt8_Rb_treeIjSt4pairIKjN4llvm6MCInstEESt10_Select1stIS4_ESt4lessIjESaIS4_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS4_EPSt18_Rb_tree_node_baseRS1_.exit.i.i
  %i.bd = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 32
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !236
  %i.bf = icmp ugt i32 %i.be, %i.ay               ; 2 uses
  %spec.select.i.i = select i1 %i.bf, ptr %i.aq, ptr %.19.i.i.i ; 6 uses
  br i1 %i.bf, label %_ZNSt3mapIjN4llvm6MCInstESt4lessIjESaISt4pairIKjS1_EEE4findERS5_.exit.thread, label %bb.i

bb.i:                                             ; preds = %_ZNSt3mapIjN4llvm6MCInstESt4lessIjESaISt4pairIKjS1_EEE4findERS5_.exit
  %i.bg = load ptr, ptr %i.h, align 8, !tbaa !367 ; 5 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 32
  %i.bi = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 40
  %i.bj = call noundef i32 @_ZN4llvm4bolt13MCPlusBuilder26getOrCreateAnnotationIndexENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(536) %i.bg, ptr nonnull @.str.10, i64 19) ; 5 uses
  %i.bk = call noundef zeroext i1 @_ZNK4llvm4bolt13MCPlusBuilder13hasAnnotationERKNS_6MCInstEj(ptr noundef nonnull align 8 dereferenceable(536) %i.bg, ptr noundef nonnull align 8 dereferenceable(128) %i.bi, i32 noundef %i.bj) #29, !noalias !730
  br i1 %i.bk, label %bb.j, label %_ZN4llvm7ErrorOrIRKNS_4bolt19MemoryAccessProfileEEaSEOS5_.exit.i

bb.j:                                             ; preds = %bb.i
  %i.bl = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 64
  %i.bm = load i32, ptr %i.bl, align 8, !tbaa !368, !noalias !730 ; 5 uses
  %.01317.i.i.i.i.i.i = add i32 %i.bm, -1         ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 56
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !63, !noalias !730 ; 4 uses
  %5 = zext i32 %i.bm to i64                      ; 2 uses
  %i.bp = zext nneg i32 %.01317.i.i.i.i.i.i to i64 ; 2 uses
  %i.bq = getelementptr inbounds nuw [16 x i8], ptr %i.bo, i64 %i.bp ; 2 uses
  %i.br = load i8, ptr %i.bq, align 8, !tbaa !371, !noalias !730
  %i.bs = icmp eq i8 %i.br, 6
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bq, i64 8
  %i.bu = load ptr, ptr %i.bt, align 8, !noalias !730
  %i.bv = icmp eq ptr %i.bu, null
  %i.bw = select i1 %i.bs, i1 %i.bv, i1 false
  br i1 %i.bw, label %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.i.i.i, label %.backedge.i.i.i.i.i.i

.backedge.i.i.i.i.i.i:                            ; preds = %bb.j, %.backedge.i.i.i.i.i.i
  %indvars.iv.i.i.i = phi i64 [ %indvars.iv.next.i.i.i, %.backedge.i.i.i.i.i.i ], [ %i.bp, %bb.j ] ; 2 uses
  %indvars.iv.i.i.i.a = phi i64 [ %indvars.iv.next.i.i.i.i, %.backedge.i.i.i.i.i.i ], [ %5, %bb.j ]
  %indvars.iv.next.i.i.i = add nsw i64 %indvars.iv.i.i.i, -1 ; 3 uses
  %i.bx = icmp sgt i64 %indvars.iv.i.i.i, 0
  %indvars.iv.next.i.i.i.i = add nsw i64 %indvars.iv.i.i.i.a, -1 ; 2 uses
  call void @llvm.assume(i1 %i.bx)
  %i.by = getelementptr inbounds nuw [16 x i8], ptr %i.bo, i64 %indvars.iv.next.i.i.i ; 2 uses
  %i.bz = load i8, ptr %i.by, align 8, !tbaa !371, !noalias !730
  %i.ca = icmp eq i8 %i.bz, 6
  %i.cb = getelementptr inbounds nuw i8, ptr %i.by, i64 8
  %i.cc = load ptr, ptr %i.cb, align 8, !noalias !730
  %i.cd = icmp eq ptr %i.cc, null
  %i.ce = select i1 %i.ca, i1 %i.cd, i1 false
  br i1 %i.ce, label %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.loopexit.i.i.i, label %.backedge.i.i.i.i.i.i

_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.loopexit.i.i.i: ; preds = %.backedge.i.i.i.i.i.i
  %i.cf = trunc nuw nsw i64 %indvars.iv.next.i.i.i to i32
  br label %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.i.i.i

_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.i.i.i: ; preds = %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.loopexit.i.i.i, %bb.j
  %indvars.iv.i.lcssa.i.i.i = phi i64 [ %5, %bb.j ], [ %indvars.iv.next.i.i.i.i, %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.loopexit.i.i.i ] ; 2 uses
  %.01318.i.i.i.lcssa.i.i.i = phi i32 [ %.01317.i.i.i.i.i.i, %bb.j ], [ %i.cf, %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.loopexit.i.i.i ] ; 2 uses
  %.not.i.not.i.i.i.i = icmp ne i32 %i.bm, %.01318.i.i.i.lcssa.i.i.i
  %i.cg = add nuw i32 %.01318.i.i.i.lcssa.i.i.i, 1
  %.not1324.i.i.i.i = icmp ult i32 %i.cg, %i.bm
  call void @llvm.assume(i1 %.not.i.not.i.i.i.i)
  call void @llvm.assume(i1 %.not1324.i.i.i.i)
  %i.ch = getelementptr inbounds nuw [16 x i8], ptr %i.bo, i64 %indvars.iv.i.lcssa.i.i.i
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 8
  %i.cj = load i64, ptr %i.ci, align 8, !tbaa !256, !noalias !730 ; 2 uses
  %i.ck = lshr i64 %i.cj, 56
  %i.cl = trunc nuw nsw i64 %i.ck to i32
  %.not.i3.i.i.i = icmp eq i32 %i.bj, %i.cl
  br i1 %.not.i3.i.i.i, label %_ZNK4llvm4bolt13MCPlusBuilder18tryGetAnnotationAsINS0_19MemoryAccessProfileEEENS_7ErrorOrIRKT_EERKNS_6MCInstEj.exit.thread.i, label %.critedge.i.i.i.i

.critedge.i.i.i.i:                                ; preds = %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.i.i.i, %.critedge.i.i.i.i
  %indvars.iv.i4.i.i.i = phi i64 [ %indvars.iv.next.i.i.i.i.a, %.critedge.i.i.i.i ], [ %indvars.iv.i.lcssa.i.i.i, %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.i.i.i ]
  %indvars.iv.next.i.i.i.i.a = add nsw i64 %indvars.iv.i4.i.i.i, 1 ; 3 uses
  %lftr.wideiv.i.i.i.i = trunc i64 %indvars.iv.next.i.i.i.i.a to i32
  %exitcond.not.i.i.i.i = icmp ne i32 %i.bm, %lftr.wideiv.i.i.i.i
  call void @llvm.assume(i1 %exitcond.not.i.i.i.i)
  %i.cm = getelementptr inbounds nuw [16 x i8], ptr %i.bo, i64 %indvars.iv.next.i.i.i.i.a
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 8
  %i.co = load i64, ptr %i.cn, align 8, !tbaa !256, !noalias !730 ; 2 uses
  %i.cp = lshr i64 %i.co, 56
  %i.cq = trunc nuw nsw i64 %i.cp to i32
  %.not.i.i.i.i = icmp eq i32 %i.bj, %i.cq
  br i1 %.not.i.i.i.i, label %_ZNK4llvm4bolt13MCPlusBuilder18tryGetAnnotationAsINS0_19MemoryAccessProfileEEENS_7ErrorOrIRKT_EERKNS_6MCInstEj.exit.thread.i, label %.critedge.i.i.i.i

_ZNK4llvm4bolt13MCPlusBuilder18tryGetAnnotationAsINS0_19MemoryAccessProfileEEENS_7ErrorOrIRKT_EERKNS_6MCInstEj.exit.thread.i: ; preds = %.critedge.i.i.i.i, %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.i.i.i
  %.lcssa.i.i.i = phi i64 [ %i.cj, %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.i.i.i ], [ %i.co, %.critedge.i.i.i.i ]
  %i.cr = shl i64 %.lcssa.i.i.i, 8
  %i.cs = ashr exact i64 %i.cr, 8
  %i.ct = add nuw nsw i64 %i.cs, 8
  %i.cu = inttoptr i64 %i.ct to ptr
  br label %_ZN4llvm4bolt13MCPlusBuilder23getOrCreateAnnotationAsINS0_19MemoryAccessProfileEEERT_RNS_6MCInstEjt.exit

_ZN4llvm7ErrorOrIRKNS_4bolt19MemoryAccessProfileEEaSEOS5_.exit.i: ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #29
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %3, i8 0, i64 120, i1 false)
  store ptr %i.j, ptr %i.i, align 8, !tbaa !63
  store i32 4, ptr %i.k, align 4, !tbaa !372
  %i.cv = getelementptr inbounds nuw i8, ptr %i.bg, i64 32
  %i.cw = load i64, ptr %i.cv, align 8, !tbaa !374
  %.not.not.i.i.i.i = icmp eq i64 %i.cw, 0
  br i1 %.not.not.i.i.i.i, label %bb.k, label %bb.m

bb.k:                                             ; preds = %_ZN4llvm7ErrorOrIRKNS_4bolt19MemoryAccessProfileEEaSEOS5_.exit.i
  %i.cx = getelementptr inbounds nuw i8, ptr %i.bg, i64 24
  br label %bb.l

bb.l:                                             ; preds = %bb.l, %bb.k
  %.sroa.06.0.in.i.i.i.i = phi ptr [ %i.cx, %bb.k ], [ %.sroa.06.0.i.i.i.i, %bb.l ]
  %.sroa.06.0.i.i.i.i = load ptr, ptr %.sroa.06.0.in.i.i.i.i, align 8, !tbaa !358, !nonnull !61, !noundef !61 ; 3 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i.i.i, i64 8
  %i.cz = load i16, ptr %i.cy, align 2, !tbaa !375
  %i.da = icmp eq i16 %i.cz, 0
  br i1 %i.da, label %_ZN4llvm4bolt13MCPlusBuilder22getAnnotationAllocatorEt.exit.i, label %bb.l, !llvm.loop !10

bb.m:                                             ; preds = %_ZN4llvm7ErrorOrIRKNS_4bolt19MemoryAccessProfileEEaSEOS5_.exit.i
  %i.db = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !376
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !361, !nonnull !61, !noundef !61
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !358 ; 3 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 8
  %i.dg = load i16, ptr %i.df, align 2, !tbaa !375
  %i.dh = icmp eq i16 %i.dg, 0
  br i1 %i.dh, label %_ZN4llvm4bolt13MCPlusBuilder22getAnnotationAllocatorEt.exit.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.m, %.lr.ph.i.i.i.i.i.i
  %.020.i.i.i.i.i.i = phi ptr [ %i.di, %.lr.ph.i.i.i.i.i.i ], [ %i.de, %bb.m ]
  %i.di = load ptr, ptr %.020.i.i.i.i.i.i, align 8, !tbaa !358, !nonnull !61, !noundef !61 ; 3 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 8
  %i.dk = load i16, ptr %i.dj, align 2, !tbaa !375
  %i.dl = icmp eq i16 %i.dk, 0
  br i1 %i.dl, label %_ZN4llvm4bolt13MCPlusBuilder22getAnnotationAllocatorEt.exit.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !11

_ZN4llvm4bolt13MCPlusBuilder22getAnnotationAllocatorEt.exit.i: ; preds = %.lr.ph.i.i.i.i.i.i, %bb.l, %bb.m
  %.sroa.06.1.i.i.i.i = phi ptr [ %.sroa.06.0.i.i.i.i, %bb.l ], [ %i.de, %bb.m ], [ %i.di, %.lr.ph.i.i.i.i.i.i ] ; 9 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %.sroa.06.1.i.i.i.i, i64 16 ; 3 uses
  %i.dn = load ptr, ptr %i.dm, align 8, !tbaa !387
  %i.do = ptrtoint ptr %i.dn to i64
  %i.dp = add i64 %i.do, 15
  %i.dq = and i64 %i.dp, -16                      ; 2 uses
  %i.dr = add i64 %i.dq, 128                      ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %.sroa.06.1.i.i.i.i, i64 24
  %i.dt = load i64, ptr %i.ds, align 8, !tbaa !388
  %i.du = icmp ult i64 %i.dr, %i.dt
  br i1 %i.du, label %bb.n, label %bb.o, !prof !90

bb.n:                                             ; preds = %_ZN4llvm4bolt13MCPlusBuilder22getAnnotationAllocatorEt.exit.i
  %i.dv = inttoptr i64 %i.dr to ptr
  store ptr %i.dv, ptr %i.dm, align 8, !tbaa !387
  %i.dw = inttoptr i64 %i.dq to ptr
  br label %_ZnwIN4llvm15MallocAllocatorELm4096ELm4096ELm128ELm8EEPvmRNS0_20BumpPtrAllocatorImplIT_XT0_EXT1_EXT2_EXT3_EEE.exit.i

bb.o:                                             ; preds = %_ZN4llvm4bolt13MCPlusBuilder22getAnnotationAllocatorEt.exit.i
  %i.dx = call noundef nonnull ptr @_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EE12AllocateSlowEmmNS_5AlignE(ptr noundef nonnull align 8 dereferenceable(80) %i.dm, i64 noundef 128, i64 noundef 128, i8 4)
  %.pre = load i64, ptr %3, align 8, !tbaa !395
  %.pre99 = load i32, ptr %i.l, align 8, !tbaa !368
  br label %_ZnwIN4llvm15MallocAllocatorELm4096ELm4096ELm128ELm8EEPvmRNS0_20BumpPtrAllocatorImplIT_XT0_EXT1_EXT2_EXT3_EEE.exit.i

_ZnwIN4llvm15MallocAllocatorELm4096ELm4096ELm128ELm8EEPvmRNS0_20BumpPtrAllocatorImplIT_XT0_EXT1_EXT2_EXT3_EEE.exit.i: ; preds = %bb.o, %bb.n
  %i.dy = phi i32 [ 0, %bb.n ], [ %.pre99, %bb.o ] ; 5 uses
  %i.dz = phi i64 [ 0, %bb.n ], [ %.pre, %bb.o ]
  %.0.i.i.i.i = phi ptr [ %i.dw, %bb.n ], [ %i.dx, %bb.o ] ; 13 uses
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN4llvm4bolt6MCPlus18MCSimpleAnnotationINS0_19MemoryAccessProfileEEE, i64 16), ptr %.0.i.i.i.i, align 8, !tbaa !55
  %i.ea = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i, i64 8 ; 3 uses
  store i64 %i.dz, ptr %i.ea, align 8, !tbaa !395
  %i.eb = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i, i64 16 ; 3 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i, i64 32 ; 3 uses
  store ptr %i.ec, ptr %i.eb, align 8, !tbaa !63
  %i.ed = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i, i64 24 ; 2 uses
  store i32 0, ptr %i.ed, align 8, !tbaa !368
  %i.ee = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i, i64 28
  store i32 4, ptr %i.ee, align 4, !tbaa !372
  %.not.i.i.i.i.i34 = icmp eq i32 %i.dy, 0
  %i.ef = icmp eq ptr %i.ea, %3
  %or.cond.i.i.i.i = or i1 %i.ef, %.not.i.i.i.i.i34
  br i1 %or.cond.i.i.i.i, label %_ZN4llvm4bolt13MCPlusBuilder13addAnnotationINS0_19MemoryAccessProfileEEERKT_RNS_6MCInstEjS6_t.exit, label %bb.p

bb.p:                                             ; preds = %_ZnwIN4llvm15MallocAllocatorELm4096ELm4096ELm128ELm8EEPvmRNS0_20BumpPtrAllocatorImplIT_XT0_EXT1_EXT2_EXT3_EEE.exit.i
  %i.eg = icmp ugt i32 %i.dy, 4
  br i1 %i.eg, label %_ZSt4copyIPKN4llvm4bolt13AddressAccessEPS2_ET0_T_S7_S6_.exit30.i.i.i.i.i, label %_ZSt4copyIPKN4llvm4bolt13AddressAccessEPS2_ET0_T_S7_S6_.exit30.i.thread.i.i.i.i

_ZSt4copyIPKN4llvm4bolt13AddressAccessEPS2_ET0_T_S7_S6_.exit30.i.i.i.i.i: ; preds = %bb.p
  %i.eh = zext i32 %i.dy to i64
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(112) %i.eb, ptr noundef nonnull %i.ec, i64 noundef %i.eh, i64 noundef 24) #29
  %.pre.i.i.i.i = load i32, ptr %i.l, align 8, !tbaa !368 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i32 %.pre.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i, label %.sink.split.i.i.i.i.i, label %_ZSt4copyIPKN4llvm4bolt13AddressAccessEPS2_ET0_T_S7_S6_.exit30.i.i._ZSt4copyIPKN4llvm4bolt13AddressAccessEPS2_ET0_T_S7_S6_.exit30.i.thread.i_crit_edge.i.i.i

_ZSt4copyIPKN4llvm4bolt13AddressAccessEPS2_ET0_T_S7_S6_.exit30.i.i._ZSt4copyIPKN4llvm4bolt13AddressAccessEPS2_ET0_T_S7_S6_.exit30.i.thread.i_crit_edge.i.i.i: ; preds = %_ZSt4copyIPKN4llvm4bolt13AddressAccessEPS2_ET0_T_S7_S6_.exit30.i.i.i.i.i
  %.pre.i.i.i = load ptr, ptr %i.eb, align 8, !tbaa !63
  br label %_ZSt4copyIPKN4llvm4bolt13AddressAccessEPS2_ET0_T_S7_S6_.exit30.i.thread.i.i.i.i

_ZSt4copyIPKN4llvm4bolt13AddressAccessEPS2_ET0_T_S7_S6_.exit30.i.thread.i.i.i.i: ; preds = %_ZSt4copyIPKN4llvm4bolt13AddressAccessEPS2_ET0_T_S7_S6_.exit30.i.i._ZSt4copyIPKN4llvm4bolt13AddressAccessEPS2_ET0_T_S7_S6_.exit30.i.thread.i_crit_edge.i.i.i, %bb.p
  %i.ei = phi ptr [ %.pre.i.i.i, %_ZSt4copyIPKN4llvm4bolt13AddressAccessEPS2_ET0_T_S7_S6_.exit30.i.i._ZSt4copyIPKN4llvm4bolt13AddressAccessEPS2_ET0_T_S7_S6_.exit30.i.thread.i_crit_edge.i.i.i ], [ %i.ec, %bb.p ]
  %i.ej = phi i32 [ %.pre.i.i.i.i, %_ZSt4copyIPKN4llvm4bolt13AddressAccessEPS2_ET0_T_S7_S6_.exit30.i.i._ZSt4copyIPKN4llvm4bolt13AddressAccessEPS2_ET0_T_S7_S6_.exit30.i.thread.i_crit_edge.i.i.i ], [ %i.dy, %bb.p ]
  %i.ek = zext i32 %i.ej to i64
  %i.el = load ptr, ptr %i.i, align 8, !tbaa !63
  %gepdiff.i.i.i.i.i = mul nuw nsw i64 %i.ek, 24
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ei, ptr align 8 %i.el, i64 %gepdiff.i.i.i.i.i, i1 false)
  br label %.sink.split.i.i.i.i.i

.sink.split.i.i.i.i.i:                            ; preds = %_ZSt4copyIPKN4llvm4bolt13AddressAccessEPS2_ET0_T_S7_S6_.exit30.i.thread.i.i.i.i, %_ZSt4copyIPKN4llvm4bolt13AddressAccessEPS2_ET0_T_S7_S6_.exit30.i.i.i.i.i
  store i32 %i.dy, ptr %i.ed, align 8, !tbaa !368
  br label %_ZN4llvm4bolt13MCPlusBuilder13addAnnotationINS0_19MemoryAccessProfileEEERKT_RNS_6MCInstEjS6_t.exit

_ZN4llvm4bolt13MCPlusBuilder13addAnnotationINS0_19MemoryAccessProfileEEERKT_RNS_6MCInstEjS6_t.exit: ; preds = %_ZnwIN4llvm15MallocAllocatorELm4096ELm4096ELm128ELm8EEPvmRNS0_20BumpPtrAllocatorImplIT_XT0_EXT1_EXT2_EXT3_EEE.exit.i, %.sink.split.i.i.i.i.i
  %i.em = getelementptr inbounds nuw i8, ptr %.sroa.06.1.i.i.i.i, i64 96 ; 3 uses
  %i.en = getelementptr inbounds nuw i8, ptr %.sroa.06.1.i.i.i.i, i64 120 ; 4 uses
  %i.eo = load i64, ptr %i.en, align 8, !tbaa !397
  %.not.not.i = icmp eq i64 %i.eo, 0
  br i1 %.not.not.i, label %bb.q, label %.thread30.i

.thread30.i:                                      ; preds = %_ZN4llvm4bolt13MCPlusBuilder13addAnnotationINS0_19MemoryAccessProfileEEERKT_RNS_6MCInstEjS6_t.exit
  %i.ep = ptrtoint ptr %.0.i.i.i.i to i64         ; 4 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %.sroa.06.1.i.i.i.i, i64 104 ; 4 uses
  %i.er = load i64, ptr %i.eq, align 8, !tbaa !398 ; 2 uses
  %i.es = urem i64 %i.ep, %i.er                   ; 5 uses
  %i.et = load ptr, ptr %i.em, align 8, !tbaa !399
  %i.eu = getelementptr inbounds nuw [8 x i8], ptr %i.et, i64 %i.es
  %i.ev = load ptr, ptr %i.eu, align 8, !tbaa !361 ; 2 uses
  %.not.i.i.i38 = icmp eq ptr %i.ev, null
  br i1 %.not.i.i.i38, label %.critedge.i40, label %bb.u

bb.q:                                             ; preds = %_ZN4llvm4bolt13MCPlusBuilder13addAnnotationINS0_19MemoryAccessProfileEEERKT_RNS_6MCInstEjS6_t.exit
  %i.ew = getelementptr inbounds nuw i8, ptr %.sroa.06.1.i.i.i.i, i64 112
  br label %bb.r

bb.r:                                             ; preds = %bb.s, %bb.q
  %.sroa.025.0.in.i = phi ptr [ %i.ew, %bb.q ], [ %.sroa.025.0.i, %bb.s ]
  %.sroa.025.0.i = load ptr, ptr %.sroa.025.0.in.i, align 8, !tbaa !358 ; 3 uses
  %.not.i41 = icmp eq ptr %.sroa.025.0.i, null
  br i1 %.not.i41, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ex = getelementptr inbounds nuw i8, ptr %.sroa.025.0.i, i64 8
  %i.ey = load ptr, ptr %i.ex, align 8, !tbaa !401
  %i.ez = icmp eq ptr %.0.i.i.i.i, %i.ey
  br i1 %i.ez, label %_ZNSt10_HashtableIPN4llvm4bolt6MCPlus12MCAnnotationES4_SaIS4_ENSt8__detail9_IdentityESt8equal_toIS4_ESt4hashIS4_ENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb0ELb1ELb1EEEE16_M_insert_uniqueIS4_S4_NS6_10_AllocNodeISaINS6_10_Hash_nodeIS4_Lb0EEEEEEEESt4pairINS6_14_Node_iteratorIS4_Lb1ELb0EEEbEOT_OT0_RKT1_.exit, label %bb.r, !llvm.loop !12

bb.t:                                             ; preds = %bb.r
  %i.fa = ptrtoint ptr %.0.i.i.i.i to i64         ; 2 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %.sroa.06.1.i.i.i.i, i64 104 ; 2 uses
  %i.fc = load i64, ptr %i.fb, align 8, !tbaa !398
  %i.fd = urem i64 %i.fa, %i.fc
  br label %.critedge.i40

bb.u:                                             ; preds = %.thread30.i
  %i.fe = load ptr, ptr %i.ev, align 8, !tbaa !358 ; 2 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fe, i64 8
  %i.fg = load ptr, ptr %i.ff, align 8, !tbaa !401
  %i.fh = icmp eq ptr %.0.i.i.i.i, %i.fg
  br i1 %i.fh, label %_ZNSt10_HashtableIPN4llvm4bolt6MCPlus12MCAnnotationES4_SaIS4_ENSt8__detail9_IdentityESt8equal_toIS4_ESt4hashIS4_ENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb0ELb1ELb1EEEE16_M_insert_uniqueIS4_S4_NS6_10_AllocNodeISaINS6_10_Hash_nodeIS4_Lb0EEEEEEEESt4pairINS6_14_Node_iteratorIS4_Lb1ELb0EEEbEOT_OT0_RKT1_.exit, label %.lr.ph.i.i.i39

bb.v:                                             ; preds = %bb.w
  %i.fi = icmp eq ptr %.0.i.i.i.i, %i.fl
  br i1 %i.fi, label %_ZNSt10_HashtableIPN4llvm4bolt6MCPlus12MCAnnotationES4_SaIS4_ENSt8__detail9_IdentityESt8equal_toIS4_ESt4hashIS4_ENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb0ELb1ELb1EEEE16_M_insert_uniqueIS4_S4_NS6_10_AllocNodeISaINS6_10_Hash_nodeIS4_Lb0EEEEEEEESt4pairINS6_14_Node_iteratorIS4_Lb1ELb0EEEbEOT_OT0_RKT1_.exit, label %.lr.ph.i.i.i39, !llvm.loop !13

.lr.ph.i.i.i39:                                   ; preds = %bb.u, %bb.v
  %.020.i.i.i = phi ptr [ %i.fj, %bb.v ], [ %i.fe, %bb.u ]
  %i.fj = load ptr, ptr %.020.i.i.i, align 8, !tbaa !358 ; 3 uses
  %.not18.i.i.i = icmp eq ptr %i.fj, null
  br i1 %.not18.i.i.i, label %.critedge.i40, label %bb.w

bb.w:                                             ; preds = %.lr.ph.i.i.i39
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fj, i64 8
  %i.fl = load ptr, ptr %i.fk, align 8, !tbaa !401 ; 2 uses
  %i.fm = ptrtoint ptr %i.fl to i64
  %i.fn = urem i64 %i.fm, %i.er
  %.not19.i.i.i = icmp eq i64 %i.fn, %i.es
  br i1 %.not19.i.i.i, label %bb.v, label %..loopexit_crit_edge21.i.i.i, !llvm.loop !13

..loopexit_crit_edge21.i.i.i:                     ; preds = %bb.w
  br label %.critedge.i40, !llvm.loop !13

.critedge.i40:                                    ; preds = %.lr.ph.i.i.i39, %..loopexit_crit_edge21.i.i.i, %bb.t, %.thread30.i
  %i.fo = phi i64 [ %i.fd, %bb.t ], [ %i.es, %.thread30.i ], [ %i.es, %..loopexit_crit_edge21.i.i.i ], [ %i.es, %.lr.ph.i.i.i39 ]
end_hunk_0
begin_hunk_1_@_ZN4llvm4bolt13MCPlusBuilder26getOrCreateAnnotationIndexENS_9StringRefE:bb.a
bb.c:                                             ; preds = %bb.b
  tail call void @_ZSt20__throw_system_errori(i32 noundef 35) #31
  unreachable

_ZNSt11shared_lockIN4llvm3sys12SmartRWMutexILb0EEEEC2ERS3_.exit.i: ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 5 uses
  %i.e = tail call noundef i32 @_ZN4llvm13StringMapImpl4hashENS_9StringRefE(ptr %1, i64 %2) #29
  %i.f = tail call noundef i32 @_ZNK4llvm13StringMapImpl7FindKeyENS_9StringRefEj(ptr noundef nonnull align 8 dereferenceable(20) %i.d, ptr %1, i64 %2, i32 noundef %i.e) #29 ; 2 uses
  %i.g = icmp eq i32 %i.f, -1
  %i.h = load ptr, ptr %i.d, align 8, !tbaa !345
  br i1 %i.g, label %bb.d, label %_ZNK4llvm9StringMapImNS_15MallocAllocatorEE4findENS_9StringRefE.exit.i

_ZNK4llvm9StringMapImNS_15MallocAllocatorEE4findENS_9StringRefE.exit.i: ; preds = %_ZNSt11shared_lockIN4llvm3sys12SmartRWMutexILb0EEEEC2ERS3_.exit.i
  %i.i = sext i32 %i.f to i64                     ; 2 uses
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %0, i64 112
  %.pre.i = load i32, ptr %.phi.trans.insert.i, align 8, !tbaa !346
  %.pre8.i = zext i32 %.pre.i to i64
  %i.j = icmp eq i64 %i.i, %.pre8.i
  br i1 %i.j, label %bb.d, label %_ZNK4llvm4bolt13MCPlusBuilder18getAnnotationIndexENS_9StringRefE.exit

_ZNK4llvm4bolt13MCPlusBuilder18getAnnotationIndexENS_9StringRefE.exit: ; preds = %_ZNK4llvm9StringMapImNS_15MallocAllocatorEE4findENS_9StringRefE.exit.i
  %i.k = getelementptr inbounds [8 x i8], ptr %i.h, i64 %i.i
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !348
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.n = load i64, ptr %i.m, align 8, !tbaa !70
  %i.o = tail call noundef i32 @pthread_rwlock_unlock(ptr noundef nonnull align 8 dereferenceable(64) %i.b) #29 ; 0 uses
  %.sroa.011.0.extract.trunc = trunc i64 %i.n to i32
  br label %bb.o

bb.d:                                             ; preds = %_ZNK4llvm9StringMapImNS_15MallocAllocatorEE4findENS_9StringRefE.exit.i, %_ZNSt11shared_lockIN4llvm3sys12SmartRWMutexILb0EEEEC2ERS3_.exit.i
  %i.p = tail call noundef i32 @pthread_rwlock_unlock(ptr noundef nonnull align 8 dereferenceable(64) %i.b) #29 ; 0 uses
  %i.q = tail call noundef i32 @pthread_rwlock_wrlock(ptr noundef nonnull align 8 dereferenceable(64) %i.b) #29
  %i.r = icmp eq i32 %i.q, 35
  br i1 %i.r, label %bb.e, label %_ZNSt11unique_lockIN4llvm3sys12SmartRWMutexILb0EEEEC2ERS3_.exit

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt20__throw_system_errori(i32 noundef 35) #31
  unreachable

_ZNSt11unique_lockIN4llvm3sys12SmartRWMutexILb0EEEEC2ERS3_.exit: ; preds = %bb.d
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 116 ; 3 uses
  %i.t = load i32, ptr %i.s, align 4, !tbaa !440
  %i.u = add i32 %i.t, 15                         ; 2 uses
  %i.v = zext i32 %i.u to i64
  %i.w = tail call noundef i32 @_ZN4llvm13StringMapImpl4hashENS_9StringRefE(ptr %1, i64 %2) #29
  %i.x = tail call noundef i32 @_ZN4llvm13StringMapImpl15LookupBucketForENS_9StringRefEj(ptr noundef nonnull align 8 dereferenceable(20) %i.d, ptr %1, i64 %2, i32 noundef %i.w) #29 ; 2 uses
  %i.y = load ptr, ptr %i.d, align 8, !tbaa !345
  %i.z = zext i32 %i.x to i64
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %i.z ; 2 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !348
  %.not.i.i = icmp eq ptr %i.ab, null
  br i1 %.not.i.i, label %bb.f, label %_ZN4llvm9StringMapImNS_15MallocAllocatorEE6insertESt4pairINS_9StringRefEmE.exit

bb.f:                                             ; preds = %_ZNSt11unique_lockIN4llvm3sys12SmartRWMutexILb0EEEEC2ERS3_.exit
  %i.ac = add i64 %2, 17
  %i.ad = tail call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef %i.ac, i64 noundef 8) #29 ; 4 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 16 ; 2 uses
  %.not.i.i.i.i = icmp eq i64 %2, 0
  br i1 %.not.i.i.i.i, label %_ZN4llvm14StringMapEntryImE6createINS_15MallocAllocatorEJmEEEPS1_NS_9StringRefERT_DpOT0_.exit.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ae, ptr align 1 %1, i64 %2, i1 false)
  br label %_ZN4llvm14StringMapEntryImE6createINS_15MallocAllocatorEJmEEEPS1_NS_9StringRefERT_DpOT0_.exit.i.i

_ZN4llvm14StringMapEntryImE6createINS_15MallocAllocatorEJmEEEPS1_NS_9StringRefERT_DpOT0_.exit.i.i: ; preds = %bb.g, %bb.f
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 %2
  store i8 0, ptr %i.af, align 1, !tbaa !256
  store i64 %2, ptr %i.ad, align 8, !tbaa !350
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  store i64 %i.v, ptr %i.ag, align 8, !tbaa !1196
  store ptr %i.ad, ptr %i.aa, align 8, !tbaa !348
  %i.ah = load i32, ptr %i.s, align 4, !tbaa !440
  %i.ai = add i32 %i.ah, 1
  store i32 %i.ai, ptr %i.s, align 4, !tbaa !440
  %i.aj = tail call noundef i32 @_ZN4llvm13StringMapImpl11RehashTableEj(ptr noundef nonnull align 8 dereferenceable(20) %i.d, i32 noundef %i.x) #29 ; 0 uses
  br label %_ZN4llvm9StringMapImNS_15MallocAllocatorEE6insertESt4pairINS_9StringRefEmE.exit

_ZN4llvm9StringMapImNS_15MallocAllocatorEE6insertESt4pairINS_9StringRefEmE.exit: ; preds = %_ZNSt11unique_lockIN4llvm3sys12SmartRWMutexILb0EEEEC2ERS3_.exit, %_ZN4llvm14StringMapEntryImE6createINS_15MallocAllocatorEJmEEEPS1_NS_9StringRefERT_DpOT0_.exit.i.i
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #29
  %i.al = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 9 uses
  store ptr %i.al, ptr %3, align 8, !tbaa !474
  %i.am = icmp eq ptr %1, null
  %i.an = icmp ne i64 %2, 0
  %or.cond.i.i.i = and i1 %i.am, %i.an
  br i1 %or.cond.i.i.i, label %bb.h, label %bb.i

bb.h:                                             ; preds = %_ZN4llvm9StringMapImNS_15MallocAllocatorEE6insertESt4pairINS_9StringRefEmE.exit
  call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.55) #31
  unreachable

bb.i:                                             ; preds = %_ZN4llvm9StringMapImNS_15MallocAllocatorEE6insertESt4pairINS_9StringRefEmE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #29
  store i64 %2, ptr %i.a, align 8, !tbaa !70
  %i.ao = icmp ugt i64 %2, 15
  br i1 %i.ao, label %bb.j, label %._crit_edge.i.i.i.i

bb.j:                                             ; preds = %bb.i
  %i.ap = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) #29 ; 2 uses
  store ptr %i.ap, ptr %3, align 8, !tbaa !340
  %i.aq = load i64, ptr %i.a, align 8, !tbaa !70
  store i64 %i.aq, ptr %i.al, align 8, !tbaa !256
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %bb.j, %bb.i
  %i.ar = phi ptr [ %i.ap, %bb.j ], [ %i.al, %bb.i ] ; 2 uses
  switch i64 %2, label %bb.l [
    i64 1, label %bb.k
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IN4llvm9StringRefEvEERKT_RKS3_.exit
  ]

bb.k:                                             ; preds = %._crit_edge.i.i.i.i
  %i.as = load i8, ptr %1, align 1, !tbaa !256
  store i8 %i.as, ptr %i.ar, align 1, !tbaa !256
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IN4llvm9StringRefEvEERKT_RKS3_.exit

bb.l:                                             ; preds = %._crit_edge.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ar, ptr align 1 %1, i64 %2, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IN4llvm9StringRefEvEERKT_RKS3_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IN4llvm9StringRefEvEERKT_RKS3_.exit: ; preds = %._crit_edge.i.i.i.i, %bb.k, %bb.l
  %i.at = load i64, ptr %i.a, align 8, !tbaa !70  ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 4 uses
  store i64 %i.at, ptr %i.au, align 8, !tbaa !341
  %i.av = load ptr, ptr %3, align 8, !tbaa !340
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 %i.at
  store i8 0, ptr %i.aw, align 1, !tbaa !256
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #29
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 3 uses
  %i.ay = load i32, ptr %i.ax, align 8, !tbaa !368 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 140
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !372
  %.not.i = icmp ult i32 %i.ay, %i.ba
  br i1 %.not.i, label %bb.m, label %_ZN4llvm15SmallVectorImplINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE12emplace_backIJS6_EEERS6_DpOT_.exit, !prof !90

bb.m:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IN4llvm9StringRefEvEERKT_RKS3_.exit
  %i.bb = zext i32 %i.ay to i64
  %i.bc = load ptr, ptr %i.ak, align 8, !tbaa !63
  %i.bd = getelementptr inbounds nuw [32 x i8], ptr %i.bc, i64 %i.bb ; 4 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 16 ; 3 uses
  store ptr %i.be, ptr %i.bd, align 8, !tbaa !474
  %i.bf = load ptr, ptr %3, align 8, !tbaa !340   ; 2 uses
  %i.bg = icmp eq ptr %i.bf, %i.al
  br i1 %i.bg, label %bb.n, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.n:                                             ; preds = %bb.m
  %i.bh = load i64, ptr %i.au, align 8, !tbaa !341 ; 2 uses
  %i.bi = icmp ult i64 %i.bh, 16
  call void @llvm.assume(i1 %i.bi)
  %i.bj = add nuw nsw i64 %i.bh, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.be, ptr noundef nonnull align 8 dereferenceable(1) %i.al, i64 %i.bj, i1 false)
  br label %_ZN4llvm15SmallVectorImplINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE12emplace_backIJS6_EEERS6_DpOT_.exit.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.m
  store ptr %i.bf, ptr %i.bd, align 8, !tbaa !340
  %i.bk = load i64, ptr %i.al, align 8, !tbaa !256
  store i64 %i.bk, ptr %i.be, align 8, !tbaa !256
  br label %_ZN4llvm15SmallVectorImplINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE12emplace_backIJS6_EEERS6_DpOT_.exit.thread

_ZN4llvm15SmallVectorImplINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE12emplace_backIJS6_EEERS6_DpOT_.exit.thread: ; preds = %bb.n, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.bl = load i64, ptr %i.au, align 8, !tbaa !341
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  store i64 %i.bl, ptr %i.bm, align 8, !tbaa !341
  store ptr %i.al, ptr %3, align 8, !tbaa !340
  store i64 0, ptr %i.au, align 8, !tbaa !341
  %i.bn = load i32, ptr %i.ax, align 8, !tbaa !368
  %i.bo = add i32 %i.bn, 1
  store i32 %i.bo, ptr %i.ax, align 8, !tbaa !368
  br label %_ZNSt11unique_lockIN4llvm3sys12SmartRWMutexILb0EEEED2Ev.exit

_ZN4llvm15SmallVectorImplINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE12emplace_backIJS6_EEERS6_DpOT_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IN4llvm9StringRefEvEERKT_RKS3_.exit
  %i.bp = call noundef nonnull align 8 dereferenceable(32) ptr @_ZN4llvm23SmallVectorTemplateBaseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0EE18growAndEmplaceBackIJS6_EEERS6_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.ak, ptr noundef nonnull align 8 dereferenceable(32) %3) ; 0 uses
  %.pre = load ptr, ptr %3, align 8, !tbaa !340   ; 2 uses
  %i.bq = icmp eq ptr %.pre, %i.al
  br i1 %i.bq, label %_ZNSt11unique_lockIN4llvm3sys12SmartRWMutexILb0EEEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4: ; preds = %_ZN4llvm15SmallVectorImplINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE12emplace_backIJS6_EEERS6_DpOT_.exit
  %i.br = load i64, ptr %i.al, align 8, !tbaa !256
  %i.bs = add i64 %i.br, 1
  call void @_ZdlPvm(ptr noundef %.pre, i64 noundef %i.bs) #33
  br label %_ZNSt11unique_lockIN4llvm3sys12SmartRWMutexILb0EEEED2Ev.exit

_ZNSt11unique_lockIN4llvm3sys12SmartRWMutexILb0EEEED2Ev.exit: ; preds = %_ZN4llvm15SmallVectorImplINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE12emplace_backIJS6_EEERS6_DpOT_.exit, %_ZN4llvm15SmallVectorImplINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE12emplace_backIJS6_EEERS6_DpOT_.exit.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #29
  %i.bt = call noundef i32 @pthread_rwlock_unlock(ptr noundef nonnull align 8 dereferenceable(64) %i.b) #29 ; 0 uses
  br label %bb.o

bb.o:                                             ; preds = %_ZNK4llvm4bolt13MCPlusBuilder18getAnnotationIndexENS_9StringRefE.exit, %_ZNSt11unique_lockIN4llvm3sys12SmartRWMutexILb0EEEED2Ev.exit
  %.1 = phi i32 [ %i.u, %_ZNSt11unique_lockIN4llvm3sys12SmartRWMutexILb0EEEED2Ev.exit ], [ %.sroa.011.0.extract.trunc, %_ZNK4llvm4bolt13MCPlusBuilder18getAnnotationIndexENS_9StringRefE.exit ]
  ret i32 %.1
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(8) ptr @_ZN4llvm4bolt13MCPlusBuilder23getOrCreateAnnotationAsImEERT_RNS_6MCInstEjt(ptr noundef nonnull align 8 dereferenceable(536) %0, ptr noundef nonnull align 8 dereferenceable(128) %1, i32 noundef %2, i16 noundef zeroext %3) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_ZNK4llvm4bolt13MCPlusBuilder13hasAnnotationERKNS_6MCInstEj(ptr noundef nonnull align 8 dereferenceable(536) %0, ptr noundef nonnull align 8 dereferenceable(128) %1, i32 noundef %2) #29, !noalias !1199
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.c = load i32, ptr %i.b, align 8, !tbaa !368, !noalias !1199 ; 5 uses
  %.01317.i.i.i.i.i = add i32 %i.c, -1            ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !63, !noalias !1199 ; 4 uses
  %4 = zext i32 %i.c to i64                       ; 2 uses
  %i.f = zext nneg i32 %.01317.i.i.i.i.i to i64   ; 2 uses
  %i.g = getelementptr inbounds nuw [16 x i8], ptr %i.e, i64 %i.f ; 2 uses
  %i.h = load i8, ptr %i.g, align 8, !tbaa !371, !noalias !1199
  %i.i = icmp eq i8 %i.h, 6
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !noalias !1199
  %i.l = icmp eq ptr %i.k, null
  %i.m = select i1 %i.i, i1 %i.l, i1 false
  br i1 %i.m, label %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.i.i, label %.backedge.i.i.i.i.i

.backedge.i.i.i.i.i:                              ; preds = %bb.b, %.backedge.i.i.i.i.i
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %.backedge.i.i.i.i.i ], [ %i.f, %bb.b ] ; 2 uses
  %indvars.iv.i.i.a = phi i64 [ %indvars.iv.next.i.i.i, %.backedge.i.i.i.i.i ], [ %4, %bb.b ]
  %indvars.iv.next.i.i = add nsw i64 %indvars.iv.i.i, -1 ; 3 uses
  %i.n = icmp sgt i64 %indvars.iv.i.i, 0
  %indvars.iv.next.i.i.i = add nsw i64 %indvars.iv.i.i.a, -1 ; 2 uses
  tail call void @llvm.assume(i1 %i.n)
  %i.o = getelementptr inbounds nuw [16 x i8], ptr %i.e, i64 %indvars.iv.next.i.i ; 2 uses
  %i.p = load i8, ptr %i.o, align 8, !tbaa !371, !noalias !1199
  %i.q = icmp eq i8 %i.p, 6
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !noalias !1199
  %i.t = icmp eq ptr %i.s, null
  %i.u = select i1 %i.q, i1 %i.t, i1 false
  br i1 %i.u, label %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.loopexit.i.i, label %.backedge.i.i.i.i.i

_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.loopexit.i.i: ; preds = %.backedge.i.i.i.i.i
  %i.v = trunc nuw nsw i64 %indvars.iv.next.i.i to i32
  br label %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.i.i

_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.i.i: ; preds = %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.loopexit.i.i, %bb.b
  %indvars.iv.i.lcssa.i.i = phi i64 [ %4, %bb.b ], [ %indvars.iv.next.i.i.i, %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.loopexit.i.i ] ; 2 uses
  %.01318.i.i.i.lcssa.i.i = phi i32 [ %.01317.i.i.i.i.i, %bb.b ], [ %i.v, %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.loopexit.i.i ] ; 2 uses
  %.not.i.not.i.i.i = icmp ne i32 %i.c, %.01318.i.i.i.lcssa.i.i
  %i.w = add nuw i32 %.01318.i.i.i.lcssa.i.i, 1
  %.not1324.i.i.i = icmp ult i32 %i.w, %i.c
  tail call void @llvm.assume(i1 %.not.i.not.i.i.i)
  tail call void @llvm.assume(i1 %.not1324.i.i.i)
  %i.x = getelementptr inbounds nuw [16 x i8], ptr %i.e, i64 %indvars.iv.i.lcssa.i.i
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.z = load i64, ptr %i.y, align 8, !tbaa !256, !noalias !1199 ; 2 uses
  %i.aa = lshr i64 %i.z, 56
  %i.ab = trunc nuw nsw i64 %i.aa to i32
  %.not.i3.i.i = icmp eq i32 %2, %i.ab
  br i1 %.not.i3.i.i, label %_ZNK4llvm4bolt13MCPlusBuilder18tryGetAnnotationAsImEENS_7ErrorOrIRKT_EERKNS_6MCInstEj.exit.thread, label %.critedge.i.i.i

.critedge.i.i.i:                                  ; preds = %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.i.i, %.critedge.i.i.i
  %indvars.iv.i4.i.i = phi i64 [ %indvars.iv.next.i.i.i.a, %.critedge.i.i.i ], [ %indvars.iv.i.lcssa.i.i, %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.i.i ]
  %indvars.iv.next.i.i.i.a = add nsw i64 %indvars.iv.i4.i.i, 1 ; 3 uses
  %lftr.wideiv.i.i.i = trunc i64 %indvars.iv.next.i.i.i.a to i32
  %exitcond.not.i.i.i = icmp ne i32 %i.c, %lftr.wideiv.i.i.i
  tail call void @llvm.assume(i1 %exitcond.not.i.i.i)
  %i.ac = getelementptr inbounds nuw [16 x i8], ptr %i.e, i64 %indvars.iv.next.i.i.i.a
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !256, !noalias !1199 ; 2 uses
  %i.af = lshr i64 %i.ae, 56
  %i.ag = trunc nuw nsw i64 %i.af to i32
  %.not.i.i.i = icmp eq i32 %2, %i.ag
  br i1 %.not.i.i.i, label %_ZNK4llvm4bolt13MCPlusBuilder18tryGetAnnotationAsImEENS_7ErrorOrIRKT_EERKNS_6MCInstEj.exit.thread, label %.critedge.i.i.i

_ZNK4llvm4bolt13MCPlusBuilder18tryGetAnnotationAsImEENS_7ErrorOrIRKT_EERKNS_6MCInstEj.exit.thread: ; preds = %.critedge.i.i.i, %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.i.i
  %.lcssa.i.i = phi i64 [ %i.z, %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.i.i ], [ %i.ae, %.critedge.i.i.i ]
  %i.ah = shl i64 %.lcssa.i.i, 8
  %i.ai = ashr exact i64 %i.ah, 8
  %i.aj = add nuw nsw i64 %i.ai, 8
  %i.ak = inttoptr i64 %i.aj to ptr
  br label %bb.i

bb.c:                                             ; preds = %bb.a
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.am = load i64, ptr %i.al, align 8, !tbaa !374
  %.not.not.i.i.i.i = icmp eq i64 %i.am, 0
  br i1 %.not.not.i.i.i.i, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 24
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %bb.d
  %.sroa.06.0.in.i.i.i.i = phi ptr [ %i.an, %bb.d ], [ %.sroa.06.0.i.i.i.i, %bb.e ]
  %.sroa.06.0.i.i.i.i = load ptr, ptr %.sroa.06.0.in.i.i.i.i, align 8, !tbaa !358, !nonnull !61, !noundef !61 ; 3 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i.i.i, i64 8
  %i.ap = load i16, ptr %i.ao, align 2, !tbaa !375
  %i.aq = icmp eq i16 %3, %i.ap
  br i1 %i.aq, label %_ZN4llvm4bolt13MCPlusBuilder22getAnnotationAllocatorEt.exit.i, label %bb.e, !llvm.loop !10

bb.f:                                             ; preds = %bb.c
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.as = zext i16 %3 to i64
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.au = load i64, ptr %i.at, align 8, !tbaa !480 ; 2 uses
  %i.av = urem i64 %i.as, %i.au                   ; 2 uses
  %i.aw = load ptr, ptr %i.ar, align 8, !tbaa !376
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %i.av
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !361, !nonnull !61, !noundef !61
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !358 ; 3 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  %i.bb = load i16, ptr %i.ba, align 2, !tbaa !375
  %i.bc = icmp eq i16 %3, %i.bb
  br i1 %i.bc, label %_ZN4llvm4bolt13MCPlusBuilder22getAnnotationAllocatorEt.exit.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.f, %.lr.ph.i.i.i.i.i.i
  %.020.i.i.i.i.i.i = phi ptr [ %i.bd, %.lr.ph.i.i.i.i.i.i ], [ %i.az, %bb.f ]
  %i.bd = load ptr, ptr %.020.i.i.i.i.i.i, align 8, !tbaa !358, !nonnull !61, !noundef !61 ; 3 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  %i.bf = load i16, ptr %i.be, align 2, !tbaa !375 ; 2 uses
  %i.bg = zext i16 %i.bf to i64
  %i.bh = urem i64 %i.bg, %i.au
  %.not19.i.i.i.i.i.i = icmp eq i64 %i.bh, %i.av
  tail call void @llvm.assume(i1 %.not19.i.i.i.i.i.i)
  %i.bi = icmp eq i16 %3, %i.bf
  br i1 %i.bi, label %_ZN4llvm4bolt13MCPlusBuilder22getAnnotationAllocatorEt.exit.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !11

_ZN4llvm4bolt13MCPlusBuilder22getAnnotationAllocatorEt.exit.i: ; preds = %.lr.ph.i.i.i.i.i.i, %bb.e, %bb.f
  %.sroa.06.1.i.i.i.i = phi ptr [ %.sroa.06.0.i.i.i.i, %bb.e ], [ %i.az, %bb.f ], [ %i.bd, %.lr.ph.i.i.i.i.i.i ] ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %.sroa.06.1.i.i.i.i, i64 16 ; 3 uses
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !387
  %i.bl = ptrtoint ptr %i.bk to i64
  %i.bm = add i64 %i.bl, 15
  %i.bn = and i64 %i.bm, -16                      ; 2 uses
  %i.bo = add i64 %i.bn, 16                       ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %.sroa.06.1.i.i.i.i, i64 24
  %i.bq = load i64, ptr %i.bp, align 8, !tbaa !388
  %i.br = icmp ult i64 %i.bo, %i.bq
  br i1 %i.br, label %bb.g, label %bb.h, !prof !90

bb.g:                                             ; preds = %_ZN4llvm4bolt13MCPlusBuilder22getAnnotationAllocatorEt.exit.i
  %i.bs = inttoptr i64 %i.bo to ptr
  store ptr %i.bs, ptr %i.bj, align 8, !tbaa !387
  %i.bt = inttoptr i64 %i.bn to ptr
  br label %_ZN4llvm7ErrorOrIRKmEaSEOS3_.exit

bb.h:                                             ; preds = %_ZN4llvm4bolt13MCPlusBuilder22getAnnotationAllocatorEt.exit.i
  %i.bu = tail call noundef nonnull ptr @_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EE12AllocateSlowEmmNS_5AlignE(ptr noundef nonnull align 8 dereferenceable(80) %i.bj, i64 noundef 16, i64 noundef 16, i8 4)
  br label %_ZN4llvm7ErrorOrIRKmEaSEOS3_.exit

_ZN4llvm7ErrorOrIRKmEaSEOS3_.exit:                ; preds = %bb.g, %bb.h
  %.0.i.i.i.i = phi ptr [ %i.bt, %bb.g ], [ %i.bu, %bb.h ] ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN4llvm4bolt6MCPlus18MCSimpleAnnotationImEE, i64 16), ptr %.0.i.i.i.i, align 8, !tbaa !55
  %i.bv = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i, i64 8 ; 2 uses
  store i64 0, ptr %i.bv, align 8, !tbaa !483
  %i.bw = ptrtoint ptr %.0.i.i.i.i to i64
  tail call void @_ZNK4llvm4bolt13MCPlusBuilder20setAnnotationOpValueERNS_6MCInstEjl(ptr noundef nonnull align 8 dereferenceable(536) %0, ptr noundef nonnull align 8 dereferenceable(128) %1, i32 noundef %2, i64 noundef %i.bw)
  br label %bb.i

bb.i:                                             ; preds = %_ZNK4llvm4bolt13MCPlusBuilder18tryGetAnnotationAsImEENS_7ErrorOrIRKT_EERKNS_6MCInstEj.exit.thread, %_ZN4llvm7ErrorOrIRKmEaSEOS3_.exit
  %.sroa.0.sroa.010.0.in = phi ptr [ %i.ak, %_ZNK4llvm4bolt13MCPlusBuilder18tryGetAnnotationAsImEENS_7ErrorOrIRKT_EERKNS_6MCInstEj.exit.thread ], [ %i.bv, %_ZN4llvm7ErrorOrIRKmEaSEOS3_.exit ]
  ret ptr %.sroa.0.sroa.010.0.in
}

; Function Attrs: nounwind
declare i32 @pthread_rwlock_wrlock(ptr noundef) local_unnamed_addr #18

declare noundef i32 @_ZN4llvm13StringMapImpl15LookupBucketForENS_9StringRefEj(ptr noundef nonnull align 8 dereferenceable(20), ptr, i64, i32 noundef) local_unnamed_addr #7

declare noundef i32 @_ZN4llvm13StringMapImpl11RehashTableEj(ptr noundef nonnull align 8 dereferenceable(20), i32 noundef) local_unnamed_addr #7

declare noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef, i64 noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(32) ptr @_ZN4llvm23SmallVectorTemplateBaseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0EE18growAndEmplaceBackIJS6_EEERS6_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #29
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.c = call noundef ptr @_ZN4llvm15SmallVectorBaseIjE13mallocForGrowEPvmmRm(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.b, i64 noundef 0, i64 noundef 32, ptr noundef nonnull align 8 dereferenceable(8) %i.a) #29 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.e = load i32, ptr %i.d, align 8, !tbaa !368
  %i.f = zext i32 %i.e to i64
  %i.g = getelementptr inbounds nuw [32 x i8], ptr %i.c, i64 %i.f ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 3 uses
  store ptr %i.h, ptr %i.g, align 8, !tbaa !474
  %i.i = load ptr, ptr %1, align 8, !tbaa !340    ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 5 uses
  %i.k = icmp eq ptr %i.i, %i.j
  br i1 %i.k, label %bb.b, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i

bb.b:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.m = load i64, ptr %i.l, align 8, !tbaa !341  ; 2 uses
  %i.n = icmp ult i64 %i.m, 16
  call void @llvm.assume(i1 %i.n)
  %i.o = add nuw nsw i64 %i.m, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.h, ptr noundef nonnull align 8 dereferenceable(1) %i.j, i64 %i.o, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %bb.a
  store ptr %i.i, ptr %i.g, align 8, !tbaa !340
  %i.p = load i64, ptr %i.j, align 8, !tbaa !256
  store i64 %i.p, ptr %i.h, align 8, !tbaa !256
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.r = load i64, ptr %i.q, align 8, !tbaa !341
  %i.s = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store i64 %i.r, ptr %i.s, align 8, !tbaa !341
  store ptr %i.j, ptr %1, align 8, !tbaa !340
  store i64 0, ptr %i.q, align 8, !tbaa !341
  store i8 0, ptr %i.j, align 8, !tbaa !256
  %i.t = load ptr, ptr %0, align 8, !tbaa !63     ; 3 uses
  %i.u = load i32, ptr %i.d, align 8, !tbaa !368  ; 2 uses
  %i.v = zext i32 %i.u to i64
  %.idx.i = shl nuw nsw i64 %i.v, 5
  %i.w = getelementptr inbounds nuw i8, ptr %i.t, i64 %.idx.i
  %.not7.i.i.i.i.i.i = icmp eq i32 %i.u, 0
  br i1 %.not7.i.i.i.i.i.i, label %_ZN4llvm23SmallVectorTemplateBaseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0EE19moveElementsForGrowEPS6_.exit, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit, %_ZSt10_ConstructINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJS5_EEvPT_DpOT0_.exit.i.i.i.i.i.i
  %.09.i.i.i.i.i.i = phi ptr [ %i.ak, %_ZSt10_ConstructINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJS5_EEvPT_DpOT0_.exit.i.i.i.i.i.i ], [ %i.c, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit ] ; 5 uses
  %.sroa.04.08.i.i.i.i.i.i = phi ptr [ %i.aj, %_ZSt10_ConstructINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJS5_EEvPT_DpOT0_.exit.i.i.i.i.i.i ], [ %i.t, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit ] ; 6 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i, i64 16 ; 3 uses
  store ptr %i.x, ptr %.09.i.i.i.i.i.i, align 8, !tbaa !474
  %i.y = load ptr, ptr %.sroa.04.08.i.i.i.i.i.i, align 8, !tbaa !340 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i.i, i64 16 ; 5 uses
  %i.aa = icmp eq ptr %i.y, %i.z
  br i1 %i.aa, label %bb.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i

bb.c:                                             ; preds = %.lr.ph.i.i.i.i.i.i
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i.i, i64 8
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !341 ; 2 uses
  %i.ad = icmp ult i64 %i.ac, 16
  call void @llvm.assume(i1 %i.ad)
  %i.ae = add nuw nsw i64 %i.ac, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.x, ptr noundef nonnull align 8 dereferenceable(1) %i.z, i64 %i.ae, i1 false)
  br label %_ZSt10_ConstructINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJS5_EEvPT_DpOT0_.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i
  store ptr %i.y, ptr %.09.i.i.i.i.i.i, align 8, !tbaa !340
  %i.af = load i64, ptr %i.z, align 8, !tbaa !256
  store i64 %i.af, ptr %i.x, align 8, !tbaa !256
  br label %_ZSt10_ConstructINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJS5_EEvPT_DpOT0_.exit.i.i.i.i.i.i

_ZSt10_ConstructINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJS5_EEvPT_DpOT0_.exit.i.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i, %bb.c
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !341
  %i.ai = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i, i64 8
  store i64 %i.ah, ptr %i.ai, align 8, !tbaa !341
  store ptr %i.z, ptr %.sroa.04.08.i.i.i.i.i.i, align 8, !tbaa !340
  store i64 0, ptr %i.ag, align 8, !tbaa !341
  store i8 0, ptr %i.z, align 8, !tbaa !256
  %i.aj = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i.i, i64 32 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i, i64 32
  %.not.i.i.i.i.i.i = icmp eq ptr %i.aj, %i.w
  br i1 %.not.i.i.i.i.i.i, label %_ZN4llvm23SmallVectorTemplateBaseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0EE18uninitialized_moveIPS6_S9_EEvT_SA_T0_.exit.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !1200

_ZN4llvm23SmallVectorTemplateBaseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0EE18uninitialized_moveIPS6_S9_EEvT_SA_T0_.exit.i: ; preds = %_ZSt10_ConstructINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJS5_EEvPT_DpOT0_.exit.i.i.i.i.i.i
  %.pre.i = load ptr, ptr %0, align 8, !tbaa !63  ; 3 uses
  %.pre3.i = load i32, ptr %i.d, align 8, !tbaa !368 ; 2 uses
  %.not4.i.i = icmp eq i32 %.pre3.i, 0
  br i1 %.not4.i.i, label %_ZN4llvm23SmallVectorTemplateBaseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0EE19moveElementsForGrowEPS6_.exit, label %.lr.ph.i.preheader.i
end_hunk_1
begin_hunk_2_@_ZNSt10_HashtableIPN4llvm4bolt6MCPlus12MCAnnotationES4_SaIS4_ENSt8__detail9_IdentityESt8equal_toIS4_ESt4hashIS4_ENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb0ELb1ELb1EEEE16_M_insert_uniqueIS4_S4_NS6_10_AllocNodeISaINS6_10_Hash_nodeIS4_Lb0EEEEEEEESt4pairINS6_14_Node_iteratorIS4_Lb1ELb0EEEbEOT_OT0_RKT1_:bb.a
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.as, i64 %.0.i17 ; 3 uses
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !361 ; 2 uses
  %.not.i.i18 = icmp eq ptr %i.au, null
  br i1 %.not.i.i18, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !358
  store ptr %i.av, ptr %i.ag, align 8, !tbaa !358
  %i.aw = load ptr, ptr %i.at, align 8, !tbaa !361
  store ptr %i.ag, ptr %i.aw, align 8, !tbaa !358
  br label %_ZNSt10_HashtableIPN4llvm4bolt6MCPlus12MCAnnotationES4_SaIS4_ENSt8__detail9_IdentityESt8equal_toIS4_ESt4hashIS4_ENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb0ELb1ELb1EEEE12_Scoped_nodeD2Ev.exit

bb.l:                                             ; preds = %bb.j
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !402 ; 3 uses
  store ptr %i.ay, ptr %i.ag, align 8, !tbaa !358
  store ptr %i.ag, ptr %i.ax, align 8, !tbaa !402
  %.not11.i.i = icmp eq ptr %i.ay, null
  br i1 %.not11.i.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  %i.ba = load i64, ptr %i.ae, align 8, !tbaa !398
  %i.bb = load ptr, ptr %i.az, align 8, !tbaa !401
  %i.bc = ptrtoint ptr %i.bb to i64
  %i.bd = urem i64 %i.bc, %i.ba
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %i.as, i64 %i.bd
  store ptr %i.ag, ptr %i.be, align 8, !tbaa !361
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  store ptr %i.ax, ptr %i.at, align 8, !tbaa !361
  br label %_ZNSt10_HashtableIPN4llvm4bolt6MCPlus12MCAnnotationES4_SaIS4_ENSt8__detail9_IdentityESt8equal_toIS4_ESt4hashIS4_ENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb0ELb1ELb1EEEE12_Scoped_nodeD2Ev.exit

_ZNSt10_HashtableIPN4llvm4bolt6MCPlus12MCAnnotationES4_SaIS4_ENSt8__detail9_IdentityESt8equal_toIS4_ESt4hashIS4_ENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb0ELb1ELb1EEEE12_Scoped_nodeD2Ev.exit: ; preds = %bb.n, %bb.k
  %i.bf = load i64, ptr %i.a, align 8, !tbaa !397
  %i.bg = add i64 %i.bf, 1
  store i64 %i.bg, ptr %i.a, align 8, !tbaa !397
  br label %_ZNKSt10_HashtableIPN4llvm4bolt6MCPlus12MCAnnotationES4_SaIS4_ENSt8__detail9_IdentityESt8equal_toIS4_ESt4hashIS4_ENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb0ELb1ELb1EEEE15_M_find_node_trIS4_EEPNS6_10_Hash_nodeIS4_Lb0EEEmRKT_m.exit

_ZNKSt10_HashtableIPN4llvm4bolt6MCPlus12MCAnnotationES4_SaIS4_ENSt8__detail9_IdentityESt8equal_toIS4_ESt4hashIS4_ENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb0ELb1ELb1EEEE15_M_find_node_trIS4_EEPNS6_10_Hash_nodeIS4_Lb0EEEmRKT_m.exit: ; preds = %bb.g, %bb.d, %bb.f, %_ZNSt10_HashtableIPN4llvm4bolt6MCPlus12MCAnnotationES4_SaIS4_ENSt8__detail9_IdentityESt8equal_toIS4_ESt4hashIS4_ENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb0ELb1ELb1EEEE12_Scoped_nodeD2Ev.exit
  %.sroa.028.1 = phi ptr [ %i.ag, %_ZNSt10_HashtableIPN4llvm4bolt6MCPlus12MCAnnotationES4_SaIS4_ENSt8__detail9_IdentityESt8equal_toIS4_ESt4hashIS4_ENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb0ELb1ELb1EEEE12_Scoped_nodeD2Ev.exit ], [ %.sroa.025.0, %bb.d ], [ %i.t, %bb.f ], [ %i.y, %bb.g ]
  %.sroa.4.1 = phi i8 [ 1, %_ZNSt10_HashtableIPN4llvm4bolt6MCPlus12MCAnnotationES4_SaIS4_ENSt8__detail9_IdentityESt8equal_toIS4_ESt4hashIS4_ENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb0ELb1ELb1EEEE12_Scoped_nodeD2Ev.exit ], [ 0, %bb.d ], [ 0, %bb.f ], [ 0, %bb.g ]
  %.fca.0.insert = insertvalue { ptr, i8 } poison, ptr %.sroa.028.1, 0
  %.fca.1.insert = insertvalue { ptr, i8 } %.fca.0.insert, i8 %.sroa.4.1, 1
  ret { ptr, i8 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt10_HashtableIPN4llvm4bolt6MCPlus12MCAnnotationES4_SaIS4_ENSt8__detail9_IdentityESt8equal_toIS4_ESt4hashIS4_ENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb0ELb1ELb1EEEE13_M_rehash_auxEmSt17integral_constantIbLb1EE(ptr noundef nonnull align 8 dereferenceable(56) %0, i64 noundef %1) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = icmp eq i64 %1, 1
  br i1 %i.a, label %bb.b, label %bb.c, !prof !91

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  store ptr null, ptr %i.b, align 8, !tbaa !1300
  br label %_ZNSt10_HashtableIPN4llvm4bolt6MCPlus12MCAnnotationES4_SaIS4_ENSt8__detail9_IdentityESt8equal_toIS4_ESt4hashIS4_ENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb0ELb1ELb1EEEE19_M_allocate_bucketsEm.exit

bb.c:                                             ; preds = %bb.a
  %i.c = icmp ugt i64 %1, 1152921504606846975
  br i1 %i.c, label %bb.d, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeIPN4llvm4bolt6MCPlus12MCAnnotationELb0EEEEE19_M_allocate_bucketsEm.exit.i, !prof !91

bb.d:                                             ; preds = %bb.c
  %i.d = icmp ugt i64 %1, 2305843009213693951
  br i1 %i.d, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #31
  unreachable

bb.f:                                             ; preds = %bb.d
  tail call void @_ZSt17__throw_bad_allocv() #31
  unreachable

_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeIPN4llvm4bolt6MCPlus12MCAnnotationELb0EEEEE19_M_allocate_bucketsEm.exit.i: ; preds = %bb.c
  %i.e = shl nuw nsw i64 %1, 3                    ; 2 uses
  %i.f = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.e) #32 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.f, i8 0, i64 %i.e, i1 false)
  br label %_ZNSt10_HashtableIPN4llvm4bolt6MCPlus12MCAnnotationES4_SaIS4_ENSt8__detail9_IdentityESt8equal_toIS4_ESt4hashIS4_ENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb0ELb1ELb1EEEE19_M_allocate_bucketsEm.exit

_ZNSt10_HashtableIPN4llvm4bolt6MCPlus12MCAnnotationES4_SaIS4_ENSt8__detail9_IdentityESt8equal_toIS4_ESt4hashIS4_ENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb0ELb1ELb1EEEE19_M_allocate_bucketsEm.exit: ; preds = %bb.b, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeIPN4llvm4bolt6MCPlus12MCAnnotationELb0EEEEE19_M_allocate_bucketsEm.exit.i
  %.0.i = phi ptr [ %i.b, %bb.b ], [ %i.f, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeIPN4llvm4bolt6MCPlus12MCAnnotationELb0EEEEE19_M_allocate_bucketsEm.exit.i ] ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !402  ; 2 uses
  store ptr null, ptr %i.g, align 8, !tbaa !402
  %.not29 = icmp eq ptr %i.h, null
  br i1 %.not29, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt10_HashtableIPN4llvm4bolt6MCPlus12MCAnnotationES4_SaIS4_ENSt8__detail9_IdentityESt8equal_toIS4_ESt4hashIS4_ENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb0ELb1ELb1EEEE19_M_allocate_bucketsEm.exit, %bb.j
  %.031 = phi i64 [ %.1, %bb.j ], [ 0, %_ZNSt10_HashtableIPN4llvm4bolt6MCPlus12MCAnnotationES4_SaIS4_ENSt8__detail9_IdentityESt8equal_toIS4_ESt4hashIS4_ENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb0ELb1ELb1EEEE19_M_allocate_bucketsEm.exit ] ; 2 uses
  %.02530 = phi ptr [ %i.i, %bb.j ], [ %i.h, %_ZNSt10_HashtableIPN4llvm4bolt6MCPlus12MCAnnotationES4_SaIS4_ENSt8__detail9_IdentityESt8equal_toIS4_ESt4hashIS4_ENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb0ELb1ELb1EEEE19_M_allocate_bucketsEm.exit ] ; 8 uses
  %i.i = load ptr, ptr %.02530, align 8, !tbaa !358 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.02530, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !401
  %i.l = ptrtoint ptr %i.k to i64
  %i.m = urem i64 %i.l, %1                        ; 3 uses
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %.0.i, i64 %i.m ; 3 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !361  ; 2 uses
  %.not27 = icmp eq ptr %i.o, null
  br i1 %.not27, label %bb.g, label %bb.i

bb.g:                                             ; preds = %.lr.ph
  %i.p = load ptr, ptr %i.g, align 8, !tbaa !402
  store ptr %i.p, ptr %.02530, align 8, !tbaa !358
  store ptr %.02530, ptr %i.g, align 8, !tbaa !402
  store ptr %i.g, ptr %i.n, align 8, !tbaa !361
  %i.q = load ptr, ptr %.02530, align 8, !tbaa !358
  %.not28 = icmp eq ptr %i.q, null
  br i1 %.not28, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %.0.i, i64 %.031
  store ptr %.02530, ptr %i.r, align 8, !tbaa !361
  br label %bb.j

bb.i:                                             ; preds = %.lr.ph
  %i.s = load ptr, ptr %i.o, align 8, !tbaa !358
  store ptr %i.s, ptr %.02530, align 8, !tbaa !358
  %i.t = load ptr, ptr %i.n, align 8, !tbaa !361
  store ptr %.02530, ptr %i.t, align 8, !tbaa !358
  br label %bb.j

bb.j:                                             ; preds = %bb.g, %bb.h, %bb.i
  %.1 = phi i64 [ %.031, %bb.i ], [ %i.m, %bb.h ], [ %i.m, %bb.g ]
  %.not = icmp eq ptr %i.i, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !1299

._crit_edge:                                      ; preds = %bb.j, %_ZNSt10_HashtableIPN4llvm4bolt6MCPlus12MCAnnotationES4_SaIS4_ENSt8__detail9_IdentityESt8equal_toIS4_ESt4hashIS4_ENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb0ELb1ELb1EEEE19_M_allocate_bucketsEm.exit
  %i.u = load ptr, ptr %0, align 8, !tbaa !399    ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.w = icmp eq ptr %i.u, %i.v
  br i1 %i.w, label %_ZNSt10_HashtableIPN4llvm4bolt6MCPlus12MCAnnotationES4_SaIS4_ENSt8__detail9_IdentityESt8equal_toIS4_ESt4hashIS4_ENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb0ELb1ELb1EEEE21_M_deallocate_bucketsEv.exit, label %bb.k

bb.k:                                             ; preds = %._crit_edge
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.y = load i64, ptr %i.x, align 8, !tbaa !398
  %i.z = shl i64 %i.y, 3
  tail call void @_ZdlPvm(ptr noundef %i.u, i64 noundef %i.z) #33
  br label %_ZNSt10_HashtableIPN4llvm4bolt6MCPlus12MCAnnotationES4_SaIS4_ENSt8__detail9_IdentityESt8equal_toIS4_ESt4hashIS4_ENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb0ELb1ELb1EEEE21_M_deallocate_bucketsEv.exit

_ZNSt10_HashtableIPN4llvm4bolt6MCPlus12MCAnnotationES4_SaIS4_ENSt8__detail9_IdentityESt8equal_toIS4_ESt4hashIS4_ENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb0ELb1ELb1EEEE21_M_deallocate_bucketsEv.exit: ; preds = %._crit_edge, %bb.k
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %1, ptr %i.aa, align 8, !tbaa !398
  store ptr %.0.i, ptr %0, align 8, !tbaa !399
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm23SmallVectorTemplateBaseINS_4bolt13AddressAccessELb1EE15growAndPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #19 comdat align 2 {
bb.a:
  %2 = alloca %"struct.llvm::bolt::AddressAccess", align 8 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !1302
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !368
  %i.c = zext i32 %i.b to i64
  %i.d = add nuw nsw i64 %i.c, 1
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.e, i64 noundef %i.d, i64 noundef 24) #29
  %i.f = load ptr, ptr %0, align 8, !tbaa !63
  %i.g = load i32, ptr %i.a, align 8, !tbaa !368
  %i.h = zext i32 %i.g to i64
  %i.i = getelementptr inbounds nuw [24 x i8], ptr %i.f, i64 %i.h
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.i, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false)
  %i.j = load i32, ptr %i.a, align 8, !tbaa !368
  %i.k = add i32 %i.j, 1
  store i32 %i.k, ptr %i.a, align 8, !tbaa !368
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  ret void
}

declare noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostreamlsENS_12function_refIFiPcmEEE(ptr noundef nonnull align 8 dereferenceable(48), ptr, i64) local_unnamed_addr #7

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef i32 @_ZN4llvm12function_refIFiPcmEE11callback_fnIZNS_lsIJfEEERNS_11raw_ostreamES7_NS_13format_objectIJDpT_EEEEUlS1_mE_EEilS1_m(i64 noundef %0, ptr noundef %1, i64 noundef %2) #3 comdat align 2 {
bb.a:
  %i.a = inttoptr i64 %0 to ptr
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1304, !nonnull !61, !align !339 ; 2 uses
  %i.c = and i64 %2, 4294967295
  %i.d = load ptr, ptr %i.b, align 8, !tbaa !470
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.f = load float, ptr %i.e, align 8, !tbaa !1305
  %i.g = fpext float %i.f to double
  %i.h = tail call noundef i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %1, i64 noundef %i.c, ptr noundef %i.d, double noundef %i.g) #29
  ret i32 %i.h
}

; Function Attrs: nofree nounwind
declare noundef i32 @snprintf(ptr noalias noundef writeonly captures(none), i64 noundef, ptr noundef readonly captures(none), ...) local_unnamed_addr #23

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(144) ptr @_ZN4llvm4bolt13MCPlusBuilder23getOrCreateAnnotationAsINS_11SmallVectorINS0_19IndirectCallProfileELj4EEEEERT_RNS_6MCInstEjt(ptr noundef nonnull align 8 dereferenceable(536) %0, ptr noundef nonnull align 8 dereferenceable(128) %1, i32 noundef %2, i16 noundef zeroext %3) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %4 = alloca %"class.llvm::SmallVector.36", align 8 ; 8 uses
  %i.a = tail call noundef zeroext i1 @_ZNK4llvm4bolt13MCPlusBuilder13hasAnnotationERKNS_6MCInstEj(ptr noundef nonnull align 8 dereferenceable(536) %0, ptr noundef nonnull align 8 dereferenceable(128) %1, i32 noundef %2) #29, !noalias !1308
  br i1 %i.a, label %bb.b, label %_ZN4llvm7ErrorOrIRKNS_11SmallVectorINS_4bolt19IndirectCallProfileELj4EEEEaSEOS7_.exit

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.c = load i32, ptr %i.b, align 8, !tbaa !368, !noalias !1308 ; 5 uses
  %.01317.i.i.i.i.i = add i32 %i.c, -1            ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !63, !noalias !1308 ; 4 uses
  %5 = zext i32 %i.c to i64                       ; 2 uses
  %i.f = zext nneg i32 %.01317.i.i.i.i.i to i64   ; 2 uses
  %i.g = getelementptr inbounds nuw [16 x i8], ptr %i.e, i64 %i.f ; 2 uses
  %i.h = load i8, ptr %i.g, align 8, !tbaa !371, !noalias !1308
  %i.i = icmp eq i8 %i.h, 6
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !noalias !1308
  %i.l = icmp eq ptr %i.k, null
  %i.m = select i1 %i.i, i1 %i.l, i1 false
  br i1 %i.m, label %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.i.i, label %.backedge.i.i.i.i.i

.backedge.i.i.i.i.i:                              ; preds = %bb.b, %.backedge.i.i.i.i.i
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %.backedge.i.i.i.i.i ], [ %i.f, %bb.b ] ; 2 uses
  %indvars.iv.i.i.a = phi i64 [ %indvars.iv.next.i.i.i, %.backedge.i.i.i.i.i ], [ %5, %bb.b ]
  %indvars.iv.next.i.i = add nsw i64 %indvars.iv.i.i, -1 ; 3 uses
  %i.n = icmp sgt i64 %indvars.iv.i.i, 0
  %indvars.iv.next.i.i.i = add nsw i64 %indvars.iv.i.i.a, -1 ; 2 uses
  tail call void @llvm.assume(i1 %i.n)
  %i.o = getelementptr inbounds nuw [16 x i8], ptr %i.e, i64 %indvars.iv.next.i.i ; 2 uses
  %i.p = load i8, ptr %i.o, align 8, !tbaa !371, !noalias !1308
  %i.q = icmp eq i8 %i.p, 6
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !noalias !1308
  %i.t = icmp eq ptr %i.s, null
  %i.u = select i1 %i.q, i1 %i.t, i1 false
  br i1 %i.u, label %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.loopexit.i.i, label %.backedge.i.i.i.i.i

_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.loopexit.i.i: ; preds = %.backedge.i.i.i.i.i
  %i.v = trunc nuw nsw i64 %indvars.iv.next.i.i to i32
  br label %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.i.i

_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.i.i: ; preds = %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.loopexit.i.i, %bb.b
  %indvars.iv.i.lcssa.i.i = phi i64 [ %5, %bb.b ], [ %indvars.iv.next.i.i.i, %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.loopexit.i.i ] ; 2 uses
  %.01318.i.i.i.lcssa.i.i = phi i32 [ %.01317.i.i.i.i.i, %bb.b ], [ %i.v, %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.loopexit.i.i ] ; 2 uses
  %.not.i.not.i.i.i = icmp ne i32 %i.c, %.01318.i.i.i.lcssa.i.i
  %i.w = add nuw i32 %.01318.i.i.i.lcssa.i.i, 1
  %.not1324.i.i.i = icmp ult i32 %i.w, %i.c
  tail call void @llvm.assume(i1 %.not.i.not.i.i.i)
  tail call void @llvm.assume(i1 %.not1324.i.i.i)
  %i.x = getelementptr inbounds nuw [16 x i8], ptr %i.e, i64 %indvars.iv.i.lcssa.i.i
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.z = load i64, ptr %i.y, align 8, !tbaa !256, !noalias !1308 ; 2 uses
  %i.aa = lshr i64 %i.z, 56
  %i.ab = trunc nuw nsw i64 %i.aa to i32
  %.not.i3.i.i = icmp eq i32 %2, %i.ab
  br i1 %.not.i3.i.i, label %_ZNK4llvm4bolt13MCPlusBuilder18tryGetAnnotationAsINS_11SmallVectorINS0_19IndirectCallProfileELj4EEEEENS_7ErrorOrIRKT_EERKNS_6MCInstEj.exit.thread, label %.critedge.i.i.i

.critedge.i.i.i:                                  ; preds = %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.i.i, %.critedge.i.i.i
  %indvars.iv.i4.i.i = phi i64 [ %indvars.iv.next.i.i.i.a, %.critedge.i.i.i ], [ %indvars.iv.i.lcssa.i.i, %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.i.i ]
  %indvars.iv.next.i.i.i.a = add nsw i64 %indvars.iv.i4.i.i, 1 ; 3 uses
  %lftr.wideiv.i.i.i = trunc i64 %indvars.iv.next.i.i.i.a to i32
  %exitcond.not.i.i.i = icmp ne i32 %i.c, %lftr.wideiv.i.i.i
  tail call void @llvm.assume(i1 %exitcond.not.i.i.i)
  %i.ac = getelementptr inbounds nuw [16 x i8], ptr %i.e, i64 %indvars.iv.next.i.i.i.a
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !256, !noalias !1308 ; 2 uses
  %i.af = lshr i64 %i.ae, 56
  %i.ag = trunc nuw nsw i64 %i.af to i32
  %.not.i.i.i = icmp eq i32 %2, %i.ag
  br i1 %.not.i.i.i, label %_ZNK4llvm4bolt13MCPlusBuilder18tryGetAnnotationAsINS_11SmallVectorINS0_19IndirectCallProfileELj4EEEEENS_7ErrorOrIRKT_EERKNS_6MCInstEj.exit.thread, label %.critedge.i.i.i

_ZNK4llvm4bolt13MCPlusBuilder18tryGetAnnotationAsINS_11SmallVectorINS0_19IndirectCallProfileELj4EEEEENS_7ErrorOrIRKT_EERKNS_6MCInstEj.exit.thread: ; preds = %.critedge.i.i.i, %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.i.i
  %.lcssa.i.i = phi i64 [ %i.z, %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.i.i ], [ %i.ae, %.critedge.i.i.i ]
  %i.ah = shl i64 %.lcssa.i.i, 8
  %i.ai = ashr exact i64 %i.ah, 8
  %i.aj = add nuw nsw i64 %i.ai, 8
  %i.ak = inttoptr i64 %i.aj to ptr
  br label %bb.d

_ZN4llvm7ErrorOrIRKNS_11SmallVectorINS_4bolt19IndirectCallProfileELj4EEEEaSEOS7_.exit: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #29
  %i.al = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  store ptr %i.al, ptr %4, align 8, !tbaa !63
  %i.am = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 0, ptr %i.am, align 8, !tbaa !368
  %i.an = getelementptr inbounds nuw i8, ptr %4, i64 12
  store i32 4, ptr %i.an, align 4, !tbaa !372
  %i.ao = call noundef nonnull align 8 dereferenceable(144) ptr @_ZN4llvm4bolt13MCPlusBuilder13addAnnotationINS_11SmallVectorINS0_19IndirectCallProfileELj4EEEEERKT_RNS_6MCInstEjS8_t(ptr noundef nonnull align 8 dereferenceable(536) %0, ptr noundef nonnull align 8 dereferenceable(128) %1, i32 noundef %2, ptr noundef nonnull align 8 dereferenceable(144) %4, i16 noundef zeroext %3)
  %i.ap = load ptr, ptr %4, align 8, !tbaa !63    ; 2 uses
  %i.aq = icmp eq ptr %i.ap, %i.al
  br i1 %i.aq, label %_ZN4llvm11SmallVectorINS_4bolt19IndirectCallProfileELj4EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZN4llvm7ErrorOrIRKNS_11SmallVectorINS_4bolt19IndirectCallProfileELj4EEEEaSEOS7_.exit
  call void @free(ptr noundef %i.ap) #29
  br label %_ZN4llvm11SmallVectorINS_4bolt19IndirectCallProfileELj4EED2Ev.exit

_ZN4llvm11SmallVectorINS_4bolt19IndirectCallProfileELj4EED2Ev.exit: ; preds = %_ZN4llvm7ErrorOrIRKNS_11SmallVectorINS_4bolt19IndirectCallProfileELj4EEEEaSEOS7_.exit, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #29
  br label %bb.d

bb.d:                                             ; preds = %_ZNK4llvm4bolt13MCPlusBuilder18tryGetAnnotationAsINS_11SmallVectorINS0_19IndirectCallProfileELj4EEEEENS_7ErrorOrIRKT_EERKNS_6MCInstEj.exit.thread, %_ZN4llvm11SmallVectorINS_4bolt19IndirectCallProfileELj4EED2Ev.exit
  %.sroa.0.sroa.010.0.in = phi ptr [ %i.ak, %_ZNK4llvm4bolt13MCPlusBuilder18tryGetAnnotationAsINS_11SmallVectorINS0_19IndirectCallProfileELj4EEEEENS_7ErrorOrIRKT_EERKNS_6MCInstEj.exit.thread ], [ %i.ao, %_ZN4llvm11SmallVectorINS_4bolt19IndirectCallProfileELj4EED2Ev.exit ]
  ret ptr %.sroa.0.sroa.010.0.in
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(144) ptr @_ZN4llvm4bolt13MCPlusBuilder13addAnnotationINS_11SmallVectorINS0_19IndirectCallProfileELj4EEEEERKT_RNS_6MCInstEjS8_t(ptr noundef nonnull align 8 dereferenceable(536) %0, ptr noundef nonnull align 8 dereferenceable(128) %1, i32 noundef %2, ptr noundef nonnull align 8 dereferenceable(144) %3, i16 noundef zeroext %4) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %5 = alloca %"struct.std::__detail::_AllocNode", align 8 ; 4 uses
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.c = load i64, ptr %i.b, align 8, !tbaa !374
  %.not.not.i.i.i = icmp eq i64 %i.c, 0
  br i1 %.not.not.i.i.i, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %bb.b
  %.sroa.06.0.in.i.i.i = phi ptr [ %i.d, %bb.b ], [ %.sroa.06.0.i.i.i, %bb.c ]
  %.sroa.06.0.i.i.i = load ptr, ptr %.sroa.06.0.in.i.i.i, align 8, !tbaa !358, !nonnull !61, !noundef !61 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i.i, i64 8
  %i.f = load i16, ptr %i.e, align 2, !tbaa !375
  %i.g = icmp eq i16 %4, %i.f
  br i1 %i.g, label %_ZN4llvm4bolt13MCPlusBuilder22getAnnotationAllocatorEt.exit, label %bb.c, !llvm.loop !10

bb.d:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = zext i16 %4 to i64
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.k = load i64, ptr %i.j, align 8, !tbaa !480  ; 2 uses
  %i.l = urem i64 %i.i, %i.k                      ; 2 uses
  %i.m = load ptr, ptr %i.h, align 8, !tbaa !376
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %i.l
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !361, !nonnull !61, !noundef !61
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !358  ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.r = load i16, ptr %i.q, align 2, !tbaa !375
  %i.s = icmp eq i16 %4, %i.r
  br i1 %i.s, label %_ZN4llvm4bolt13MCPlusBuilder22getAnnotationAllocatorEt.exit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.d, %.lr.ph.i.i.i.i.i
  %.020.i.i.i.i.i = phi ptr [ %i.t, %.lr.ph.i.i.i.i.i ], [ %i.p, %bb.d ]
  %i.t = load ptr, ptr %.020.i.i.i.i.i, align 8, !tbaa !358, !nonnull !61, !noundef !61 ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.v = load i16, ptr %i.u, align 2, !tbaa !375  ; 2 uses
  %i.w = zext i16 %i.v to i64
  %i.x = urem i64 %i.w, %i.k
  %.not19.i.i.i.i.i = icmp eq i64 %i.x, %i.l
  tail call void @llvm.assume(i1 %.not19.i.i.i.i.i)
  %i.y = icmp eq i16 %4, %i.v
  br i1 %i.y, label %_ZN4llvm4bolt13MCPlusBuilder22getAnnotationAllocatorEt.exit, label %.lr.ph.i.i.i.i.i, !llvm.loop !11

_ZN4llvm4bolt13MCPlusBuilder22getAnnotationAllocatorEt.exit: ; preds = %.lr.ph.i.i.i.i.i, %bb.c, %bb.d
  %.sroa.06.1.i.i.i = phi ptr [ %.sroa.06.0.i.i.i, %bb.c ], [ %i.p, %bb.d ], [ %i.t, %.lr.ph.i.i.i.i.i ] ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.06.1.i.i.i, i64 16 ; 3 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !387
  %i.ab = ptrtoint ptr %i.aa to i64
  %i.ac = add i64 %i.ab, 15
  %i.ad = and i64 %i.ac, -16                      ; 2 uses
  %i.ae = add i64 %i.ad, 152                      ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.06.1.i.i.i, i64 24
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !388
  %i.ah = icmp ult i64 %i.ae, %i.ag
  br i1 %i.ah, label %bb.e, label %bb.f, !prof !90

bb.e:                                             ; preds = %_ZN4llvm4bolt13MCPlusBuilder22getAnnotationAllocatorEt.exit
  %i.ai = inttoptr i64 %i.ae to ptr
  store ptr %i.ai, ptr %i.z, align 8, !tbaa !387
  %i.aj = inttoptr i64 %i.ad to ptr
  br label %_ZnwIN4llvm15MallocAllocatorELm4096ELm4096ELm128ELm8EEPvmRNS0_20BumpPtrAllocatorImplIT_XT0_EXT1_EXT2_EXT3_EEE.exit

bb.f:                                             ; preds = %_ZN4llvm4bolt13MCPlusBuilder22getAnnotationAllocatorEt.exit
  %i.ak = tail call noundef nonnull ptr @_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EE12AllocateSlowEmmNS_5AlignE(ptr noundef nonnull align 8 dereferenceable(80) %i.z, i64 noundef 152, i64 noundef 152, i8 4)
  br label %_ZnwIN4llvm15MallocAllocatorELm4096ELm4096ELm128ELm8EEPvmRNS0_20BumpPtrAllocatorImplIT_XT0_EXT1_EXT2_EXT3_EEE.exit

_ZnwIN4llvm15MallocAllocatorELm4096ELm4096ELm128ELm8EEPvmRNS0_20BumpPtrAllocatorImplIT_XT0_EXT1_EXT2_EXT3_EEE.exit: ; preds = %bb.e, %bb.f
  %.0.i.i.i = phi ptr [ %i.aj, %bb.e ], [ %i.ak, %bb.f ] ; 7 uses
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN4llvm4bolt6MCPlus18MCSimpleAnnotationINS_11SmallVectorINS0_19IndirectCallProfileELj4EEEEE, i64 16), ptr %.0.i.i.i, align 8, !tbaa !55
  %i.al = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 8 ; 5 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 24 ; 3 uses
  store ptr %i.am, ptr %i.al, align 8, !tbaa !63
  %i.an = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 16 ; 2 uses
  store i32 0, ptr %i.an, align 8, !tbaa !368
  %i.ao = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 20
  store i32 4, ptr %i.ao, align 4, !tbaa !372
  %i.ap = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.aq = load i32, ptr %i.ap, align 8, !tbaa !368 ; 5 uses
  %.not.i.i.i = icmp eq i32 %i.aq, 0
  %i.ar = icmp eq ptr %i.al, %3
  %or.cond.i.i = or i1 %i.ar, %.not.i.i.i
  br i1 %or.cond.i.i, label %_ZN4llvm4bolt6MCPlus18MCSimpleAnnotationINS_11SmallVectorINS0_19IndirectCallProfileELj4EEEEC2ERKS5_.exit, label %bb.g

bb.g:                                             ; preds = %_ZnwIN4llvm15MallocAllocatorELm4096ELm4096ELm128ELm8EEPvmRNS0_20BumpPtrAllocatorImplIT_XT0_EXT1_EXT2_EXT3_EEE.exit
  %i.as = icmp ugt i32 %i.aq, 4
  br i1 %i.as, label %_ZSt4copyIPKN4llvm4bolt19IndirectCallProfileEPS2_ET0_T_S7_S6_.exit30.i.i.i, label %_ZSt4copyIPKN4llvm4bolt19IndirectCallProfileEPS2_ET0_T_S7_S6_.exit30.i.thread.i.i

_ZSt4copyIPKN4llvm4bolt19IndirectCallProfileEPS2_ET0_T_S7_S6_.exit30.i.i.i: ; preds = %bb.g
  %i.at = zext i32 %i.aq to i64
  tail call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(144) %i.al, ptr noundef nonnull %i.am, i64 noundef %i.at, i64 noundef 32) #29
  %.pre.i.i = load i32, ptr %i.ap, align 8, !tbaa !368 ; 2 uses
  %.not.i.i.i.i = icmp eq i32 %.pre.i.i, 0
  br i1 %.not.i.i.i.i, label %.sink.split.i.i.i, label %_ZSt4copyIPKN4llvm4bolt19IndirectCallProfileEPS2_ET0_T_S7_S6_.exit30.i.i._ZSt4copyIPKN4llvm4bolt19IndirectCallProfileEPS2_ET0_T_S7_S6_.exit30.i.thread.i_crit_edge.i

_ZSt4copyIPKN4llvm4bolt19IndirectCallProfileEPS2_ET0_T_S7_S6_.exit30.i.i._ZSt4copyIPKN4llvm4bolt19IndirectCallProfileEPS2_ET0_T_S7_S6_.exit30.i.thread.i_crit_edge.i: ; preds = %_ZSt4copyIPKN4llvm4bolt19IndirectCallProfileEPS2_ET0_T_S7_S6_.exit30.i.i.i
  %.pre.i = load ptr, ptr %i.al, align 8, !tbaa !63
  br label %_ZSt4copyIPKN4llvm4bolt19IndirectCallProfileEPS2_ET0_T_S7_S6_.exit30.i.thread.i.i

_ZSt4copyIPKN4llvm4bolt19IndirectCallProfileEPS2_ET0_T_S7_S6_.exit30.i.thread.i.i: ; preds = %_ZSt4copyIPKN4llvm4bolt19IndirectCallProfileEPS2_ET0_T_S7_S6_.exit30.i.i._ZSt4copyIPKN4llvm4bolt19IndirectCallProfileEPS2_ET0_T_S7_S6_.exit30.i.thread.i_crit_edge.i, %bb.g
  %i.au = phi ptr [ %.pre.i, %_ZSt4copyIPKN4llvm4bolt19IndirectCallProfileEPS2_ET0_T_S7_S6_.exit30.i.i._ZSt4copyIPKN4llvm4bolt19IndirectCallProfileEPS2_ET0_T_S7_S6_.exit30.i.thread.i_crit_edge.i ], [ %i.am, %bb.g ]
  %i.av = phi i32 [ %.pre.i.i, %_ZSt4copyIPKN4llvm4bolt19IndirectCallProfileEPS2_ET0_T_S7_S6_.exit30.i.i._ZSt4copyIPKN4llvm4bolt19IndirectCallProfileEPS2_ET0_T_S7_S6_.exit30.i.thread.i_crit_edge.i ], [ %i.aq, %bb.g ]
  %i.aw = zext i32 %i.av to i64
  %i.ax = load ptr, ptr %3, align 8, !tbaa !63
  %gepdiff.i.i.i = shl nuw nsw i64 %i.aw, 5
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.au, ptr align 8 %i.ax, i64 %gepdiff.i.i.i, i1 false)
  br label %.sink.split.i.i.i

.sink.split.i.i.i:                                ; preds = %_ZSt4copyIPKN4llvm4bolt19IndirectCallProfileEPS2_ET0_T_S7_S6_.exit30.i.thread.i.i, %_ZSt4copyIPKN4llvm4bolt19IndirectCallProfileEPS2_ET0_T_S7_S6_.exit30.i.i.i
  store i32 %i.aq, ptr %i.an, align 8, !tbaa !368
  br label %_ZN4llvm4bolt6MCPlus18MCSimpleAnnotationINS_11SmallVectorINS0_19IndirectCallProfileELj4EEEEC2ERKS5_.exit

_ZN4llvm4bolt6MCPlus18MCSimpleAnnotationINS_11SmallVectorINS0_19IndirectCallProfileELj4EEEEC2ERKS5_.exit: ; preds = %_ZnwIN4llvm15MallocAllocatorELm4096ELm4096ELm128ELm8EEPvmRNS0_20BumpPtrAllocatorImplIT_XT0_EXT1_EXT2_EXT3_EEE.exit, %.sink.split.i.i.i
  %i.ay = getelementptr inbounds nuw i8, ptr %.sroa.06.1.i.i.i, i64 96 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #29
  store ptr %.0.i.i.i, ptr %i.a, align 8, !tbaa !401
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #29
  store ptr %i.ay, ptr %5, align 8, !tbaa !1310
  %i.az = call { ptr, i8 } @_ZNSt10_HashtableIPN4llvm4bolt6MCPlus12MCAnnotationES4_SaIS4_ENSt8__detail9_IdentityESt8equal_toIS4_ESt4hashIS4_ENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb0ELb1ELb1EEEE16_M_insert_uniqueIS4_S4_NS6_10_AllocNodeISaINS6_10_Hash_nodeIS4_Lb0EEEEEEEESt4pairINS6_14_Node_iteratorIS4_Lb1ELb0EEEbEOT_OT0_RKT1_(ptr noundef nonnull align 8 dereferenceable(56) %i.ay, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %5) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #29
  %i.ba = ptrtoint ptr %.0.i.i.i to i64
  call void @_ZNK4llvm4bolt13MCPlusBuilder20setAnnotationOpValueERNS_6MCInstEjl(ptr noundef nonnull align 8 dereferenceable(536) %0, ptr noundef nonnull align 8 dereferenceable(128) %1, i32 noundef %2, i64 noundef %i.ba)
  ret ptr %i.al
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNK4llvm4bolt6MCPlus18MCSimpleAnnotationINS_11SmallVectorINS0_19IndirectCallProfileELj4EEEE5printERNS_11raw_ostreamE(ptr noundef nonnull align 8 dereferenceable(152) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm4boltlsERNS_11raw_ostreamERKNS_11SmallVectorINS0_19IndirectCallProfileELj4EEE(ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull align 8 dereferenceable(144) %i.a) ; 0 uses
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK4llvm4bolt6MCPlus18MCSimpleAnnotationINS_11SmallVectorINS0_19IndirectCallProfileELj4EEEE6equalsERKNS1_12MCAnnotationE(ptr noundef nonnull align 8 dereferenceable(152) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = load i32, ptr %i.b, align 8, !tbaa !368  ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.e = load i32, ptr %i.d, align 8, !tbaa !368
  %.not.i = icmp eq i32 %i.c, %i.e
  br i1 %.not.i, label %bb.b, label %_ZNK4llvm15SmallVectorImplINS_4bolt19IndirectCallProfileEEeqERKS3_.exit

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = zext i32 %i.c to i64
  %i.h = load ptr, ptr %i.f, align 8, !tbaa !63   ; 2 uses
  %.idx.i = shl nuw nsw i64 %i.g, 5
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 %.idx.i
  %.not9.i.i.i.i.i = icmp eq i32 %i.c, 0
end_hunk_2
