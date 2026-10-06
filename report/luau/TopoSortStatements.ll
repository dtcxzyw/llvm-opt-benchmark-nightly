Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luau/original/TopoSortStatements?download=true
inline.NumInlined: 1100
inline.NumDeleted: 508
begin_hunk_0_@_ZN4Luau6detail5pruneEPNS0_4NodeE:bb.a
  %spec.select.i.i23 = select i1 %i.ai, ptr %i.ab, ptr %.19.i.i.i17
  br label %_ZNSt3setIPN4Luau6detail4NodeESt4lessIS3_ESaIS3_EE4findERKS3_.exit25

_ZNSt3setIPN4Luau6detail4NodeESt4lessIS3_ESaIS3_EE4findERKS3_.exit25: ; preds = %.lr.ph41, %_ZNSt8_Rb_treeIPN4Luau6detail4NodeES3_St9_IdentityIS3_ESt4lessIS3_ESaIS3_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS3_EPSt18_Rb_tree_node_baseRKS3_.exit.i.i22, %bb.c
  %.sroa.0.0.i.i24 = phi ptr [ %i.ab, %.lr.ph41 ], [ %i.ab, %_ZNSt8_Rb_treeIPN4Luau6detail4NodeES3_St9_IdentityIS3_ESt4lessIS3_ESaIS3_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS3_EPSt18_Rb_tree_node_baseRKS3_.exit.i.i22 ], [ %spec.select.i.i23, %bb.c ]
  %i.aj = tail call noundef nonnull ptr @_ZSt28_Rb_tree_rebalance_for_erasePSt18_Rb_tree_node_baseRS_(ptr noundef %.sroa.0.0.i.i24, ptr noundef nonnull align 8 dereferenceable(32) %i.ab) #22
  tail call void @_ZdlPvm(ptr noundef nonnull %i.aj, i64 noundef 40) #23
  %i.ak = getelementptr inbounds nuw i8, ptr %i.y, i64 40 ; 2 uses
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !82
  %i.am = add i64 %i.al, -1
  store i64 %i.am, ptr %i.ak, align 8, !tbaa !82
  %i.an = tail call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.026.039) #24 ; 2 uses
  %.not35 = icmp eq ptr %i.an, %i.f
  br i1 %.not35, label %._crit_edge42, label %.lr.ph41
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN4Luau6detail5drainERNSt7__cxx114listISt10unique_ptrINS0_4NodeESt14default_deleteIS4_EESaIS7_EEERSt6vectorIPNS_7AstStatESaISD_EEPS4_(ptr nofree noundef nonnull align 8 captures(address) dereferenceable(24) %0, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(24) %1, ptr nofree noundef readonly captures(address) %2) local_unnamed_addr #3 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.std::_Rb_tree<Luau::detail::Node *, std::pair<Luau::detail::Node *const, Luau::detail::Arcs>, std::_Select1st<std::pair<Luau::detail::Node *const, Luau::detail::Arcs>>, std::less<Luau::detail::Node *>>::_Auto_node", align 8 ; 6 uses
  %4 = alloca %"class.std::tuple.85", align 8     ; 4 uses
  %5 = alloca %"class.std::tuple.88", align 1     ; 3 uses
  %6 = alloca %"class.std::map", align 8          ; 13 uses
  %i.a = alloca ptr, align 8                      ; 5 uses
  %7 = alloca %"class.std::unique_ptr", align 8   ; 19 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #22
  %i.b = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 15 uses
  store i32 0, ptr %i.b, align 8, !tbaa !83
  %i.c = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 8 uses
  store ptr null, ptr %i.c, align 8, !tbaa !79
  %i.d = getelementptr inbounds nuw i8, ptr %6, i64 24
  store ptr %i.b, ptr %i.d, align 8, !tbaa !76
  %i.e = getelementptr inbounds nuw i8, ptr %6, i64 32
  store ptr %i.b, ptr %i.e, align 8, !tbaa !84
  %i.f = getelementptr inbounds nuw i8, ptr %6, i64 40 ; 3 uses
  store i64 0, ptr %i.f, align 8, !tbaa !82
  %.sroa.0281.0360 = load ptr, ptr %0, align 8, !tbaa !87 ; 3 uses
  %.not298361 = icmp eq ptr %.sroa.0281.0360, %0
  br i1 %.not298361, label %.preheader, label %.lr.ph364

.preheader.loopexit:                              ; preds = %_ZN4Luau12DenseHashSetIPNS_6detail4NodeENS_16DenseHashPointerESt8equal_toIS3_EED2Ev.exit
  %.pre403.a = load ptr, ptr %0, align 8, !tbaa !87
  br label %.preheader

.preheader:                                       ; preds = %.preheader.loopexit, %bb.a
  %i.g = phi ptr [ %.pre403.a, %.preheader.loopexit ], [ %.sroa.0281.0360, %bb.a ] ; 2 uses
  %i.h = icmp eq ptr %i.g, %0
  br i1 %i.h, label %._crit_edge380, label %.lr.ph379

.lr.ph379:                                        ; preds = %.preheader
  %.not63 = icmp eq ptr %2, null
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 88
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 6 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 6 uses
  br label %bb.ah

.lr.ph364:                                        ; preds = %bb.a, %_ZN4Luau12DenseHashSetIPNS_6detail4NodeENS_16DenseHashPointerESt8equal_toIS3_EED2Ev.exit
  %.sroa.0281.0362 = phi ptr [ %.sroa.0281.0, %_ZN4Luau12DenseHashSetIPNS_6detail4NodeENS_16DenseHashPointerESt8equal_toIS3_EED2Ev.exit ], [ %.sroa.0281.0360, %bb.a ] ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.0281.0362, i64 16 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !78   ; 3 uses
  store ptr %i.o, ptr %i.a, align 8, !tbaa !78
  %i.p = load ptr, ptr %i.c, align 8, !tbaa !79   ; 2 uses
  %.not10.i.i.i.i = icmp eq ptr %i.p, null
  br i1 %.not10.i.i.i.i, label %.critedge.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph364, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %.1.i.i.i.i, %.lr.ph.i.i.i.i ], [ %i.p, %.lr.ph364 ] ; 4 uses
  %.0811.i.i.i.i = phi ptr [ %.19.i.i.i.i, %.lr.ph.i.i.i.i ], [ %i.b, %.lr.ph364 ] ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 32
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !78
  %i.s = icmp ult ptr %i.r, %i.o                  ; 3 uses
  %.19.i.i.i.i = select i1 %i.s, ptr %.0811.i.i.i.i, ptr %.012.i.i.i.i ; 5 uses
  %.1.in.v.i.i.i.i = select i1 %i.s, i64 24, i64 16
  %.1.in.i.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 %.1.in.v.i.i.i.i
  %.1.i.i.i.i = load ptr, ptr %.1.in.i.i.i.i, align 8, !tbaa !80 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %.1.i.i.i.i, null
  br i1 %.not.i.i.i.i, label %_ZNSt3mapIPN4Luau6detail4NodeENS1_4ArcsESt4lessIS3_ESaISt4pairIKS3_S4_EEE11lower_boundERS8_.exit.i, label %.lr.ph.i.i.i.i, !llvm.loop !200

_ZNSt3mapIPN4Luau6detail4NodeENS1_4ArcsESt4lessIS3_ESaISt4pairIKS3_S4_EEE11lower_boundERS8_.exit.i: ; preds = %.lr.ph.i.i.i.i
  %i.t = icmp eq ptr %.19.i.i.i.i, %i.b
  br i1 %i.t, label %.critedge.i, label %bb.b

bb.b:                                             ; preds = %_ZNSt3mapIPN4Luau6detail4NodeENS1_4ArcsESt4lessIS3_ESaISt4pairIKS3_S4_EEE11lower_boundERS8_.exit.i
  %.19.i.i.i.i.sroa.sel.v.sroa.sel.v.sroa.sel.v = select i1 %i.s, ptr %.0811.i.i.i.i, ptr %.012.i.i.i.i
  %.19.i.i.i.i.sroa.sel.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i.sroa.sel.v.sroa.sel.v.sroa.sel.v, i64 32
  %i.u = load ptr, ptr %.19.i.i.i.i.sroa.sel.v.sroa.sel.v.sroa.sel, align 8, !tbaa !95
  %i.v = icmp ult ptr %i.o, %i.u
  br i1 %i.v, label %.critedge.i, label %bb.c

.critedge.i:                                      ; preds = %bb.b, %_ZNSt3mapIPN4Luau6detail4NodeENS1_4ArcsESt4lessIS3_ESaISt4pairIKS3_S4_EEE11lower_boundERS8_.exit.i, %.lr.ph364
  %.08.lcssa.i.i.i11.i = phi ptr [ %.19.i.i.i.i, %bb.b ], [ %.19.i.i.i.i, %_ZNSt3mapIPN4Luau6detail4NodeENS1_4ArcsESt4lessIS3_ESaISt4pairIKS3_S4_EEE11lower_boundERS8_.exit.i ], [ %i.b, %.lr.ph364 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  store ptr %i.a, ptr %4, align 8, !tbaa !97, !alias.scope !209
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  %i.w = invoke ptr @_ZNSt8_Rb_treeIPN4Luau6detail4NodeESt4pairIKS3_NS1_4ArcsEESt10_Select1stIS7_ESt4lessIS3_ESaIS7_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJOS3_EESI_IJEEEEESt17_Rb_tree_iteratorIS7_ESt23_Rb_tree_const_iteratorIS7_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %6, ptr %.08.lcssa.i.i.i11.i, ptr noundef nonnull align 1 dereferenceable(1) @_ZSt19piecewise_construct, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 1 dereferenceable(1) %5)
          to label %.noexc unwind label %bb.d

.noexc:                                           ; preds = %.critedge.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.noexc
  %.sroa.06.0.i = phi ptr [ %i.w, %.noexc ], [ %.19.i.i.i.i, %bb.b ] ; 8 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  %.sroa.0255.0340 = load ptr, ptr %0, align 8, !tbaa !87 ; 2 uses
  %.not305341 = icmp eq ptr %.sroa.0255.0340, %0  ; 2 uses
  br i1 %.not305341, label %._crit_edge353.sink.split, label %.lr.ph

._crit_edge:                                      ; preds = %_ZN4Luau12DenseHashSetIPNS_6detail4NodeENS_16DenseHashPointerESt8equal_toIS3_EE6insertERKS3_.exit
  %i.x = icmp eq i64 %.sroa.19.1, 0               ; 2 uses
  %i.y = add i64 %.sroa.12.1, -1                  ; 5 uses
  %i.z = load ptr, ptr %i.n, align 8, !tbaa !78   ; 4 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 72
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !76 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.z, i64 56 ; 2 uses
  %.not306349 = icmp eq ptr %i.ab, %i.ac
  br i1 %.not306349, label %._crit_edge353, label %.lr.ph352

.lr.ph352:                                        ; preds = %._crit_edge
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i, i64 104
  %i.ae = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i, i64 96 ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i, i64 112
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i, i64 128 ; 2 uses
  br i1 %i.x, label %._crit_edge353, label %.lr.ph352.split

bb.d:                                             ; preds = %.critedge.i
  %i.ah = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  br label %_ZN4Luau12DenseHashSetIPNS_6detail4NodeENS_16DenseHashPointerESt8equal_toIS3_EED2Ev.exit114

.lr.ph:                                           ; preds = %bb.c, %_ZN4Luau12DenseHashSetIPNS_6detail4NodeENS_16DenseHashPointerESt8equal_toIS3_EE6insertERKS3_.exit
  %.sroa.0255.0346 = phi ptr [ %.sroa.0255.0, %_ZN4Luau12DenseHashSetIPNS_6detail4NodeENS_16DenseHashPointerESt8equal_toIS3_EE6insertERKS3_.exit ], [ %.sroa.0255.0340, %bb.c ] ; 2 uses
  %.sroa.0259.0345 = phi ptr [ %.sroa.0259.1, %_ZN4Luau12DenseHashSetIPNS_6detail4NodeENS_16DenseHashPointerESt8equal_toIS3_EE6insertERKS3_.exit ], [ null, %bb.c ] ; 8 uses
  %.sroa.19.0344 = phi i64 [ %.sroa.19.1, %_ZN4Luau12DenseHashSetIPNS_6detail4NodeENS_16DenseHashPointerESt8equal_toIS3_EE6insertERKS3_.exit ], [ 0, %bb.c ] ; 4 uses
  %.sroa.12.0342 = phi i64 [ %.sroa.12.1, %_ZN4Luau12DenseHashSetIPNS_6detail4NodeENS_16DenseHashPointerESt8equal_toIS3_EE6insertERKS3_.exit ], [ 0, %bb.c ] ; 7 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.0255.0346, i64 16
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !78 ; 6 uses
  %i.ak = mul i64 %.sroa.12.0342, 3
  %i.al = lshr i64 %i.ak, 2
  %.not.i.i = icmp ult i64 %.sroa.19.0344, %i.al
  br i1 %.not.i.i, label %_ZN4Luau6detail14DenseHashTableIPNS0_4NodeES3_S3_NS0_16ItemInterfaceSetIS3_EENS_16DenseHashPointerESt8equal_toIS3_EE14rehash_if_fullERKS3_.exit.i, label %bb.e

bb.e:                                             ; preds = %.lr.ph
  %i.am = icmp eq i64 %.sroa.19.0344, 0
  %i.an = icmp eq ptr %i.aj, null
  %or.cond = select i1 %i.am, i1 true, i1 %i.an
  br i1 %or.cond, label %.loopexit.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ao = add i64 %.sroa.12.0342, -1              ; 2 uses
  %i.ap = ptrtoint ptr %i.aj to i64
  %i.aq = mul i64 %i.ap, -4658895280553007687     ; 2 uses
  %i.ar = lshr i64 %i.aq, 31
  %i.as = xor i64 %i.ar, %i.aq
  br label %bb.g

bb.g:                                             ; preds = %bb.i, %bb.f
  %.pn.i.i.i = phi i64 [ %i.as, %bb.f ], [ %i.ay, %bb.i ]
  %.01832.i.i.i = phi i64 [ 0, %bb.f ], [ %i.ax, %bb.i ]
  %.01933.i.i.i = and i64 %.pn.i.i.i, %i.ao       ; 2 uses
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0259.0345, i64 %.01933.i.i.i
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !78 ; 2 uses
  %i.av = icmp eq ptr %i.au, %i.aj
  br i1 %i.av, label %_ZN4Luau6detail14DenseHashTableIPNS0_4NodeES3_S3_NS0_16ItemInterfaceSetIS3_EENS_16DenseHashPointerESt8equal_toIS3_EE14rehash_if_fullERKS3_.exit.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.aw = icmp eq ptr %i.au, null
  br i1 %i.aw, label %.loopexit.i.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ax = add i64 %.01832.i.i.i, 1                ; 3 uses
  %i.ay = add i64 %i.ax, %.01933.i.i.i
  %.not.i.i.i = icmp ugt i64 %i.ax, %i.ao
  br i1 %.not.i.i.i, label %.loopexit.i.i, label %bb.g, !llvm.loop !203

.loopexit.i.i:                                    ; preds = %bb.i, %bb.h, %bb.e
  %i.az = icmp eq i64 %.sroa.12.0342, 0           ; 2 uses
  %i.ba = shl i64 %.sroa.12.0342, 1               ; 2 uses
  %spec.select.i = select i1 %i.az, i64 16, i64 %i.ba ; 4 uses
  %.not.i.i200 = icmp eq i64 %spec.select.i, 0
  br i1 %.not.i.i200, label %_ZN4Luau6detail14DenseHashTableIPNS0_4NodeES3_S3_NS0_16ItemInterfaceSetIS3_EENS_16DenseHashPointerESt8equal_toIS3_EEC2ERKS3_m.exit.i, label %.lr.ph.preheader.i.i.i

.lr.ph.preheader.i.i.i:                           ; preds = %.loopexit.i.i
  %i.bb = shl i64 %spec.select.i, 3               ; 2 uses
  %i.bc = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bb) #25
          to label %.lr.ph.i.i.i201.preheader unwind label %bb.ag ; 2 uses

.lr.ph.i.i.i201.preheader:                        ; preds = %.lr.ph.preheader.i.i.i
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.bc, i8 0, i64 %i.bb, i1 false), !tbaa !78
  br label %_ZN4Luau6detail14DenseHashTableIPNS0_4NodeES3_S3_NS0_16ItemInterfaceSetIS3_EENS_16DenseHashPointerESt8equal_toIS3_EEC2ERKS3_m.exit.i

_ZN4Luau6detail14DenseHashTableIPNS0_4NodeES3_S3_NS0_16ItemInterfaceSetIS3_EENS_16DenseHashPointerESt8equal_toIS3_EEC2ERKS3_m.exit.i: ; preds = %.lr.ph.i.i.i201.preheader, %.loopexit.i.i
  %.sroa.0.0.i = phi ptr [ null, %.loopexit.i.i ], [ %i.bc, %.lr.ph.i.i.i201.preheader ] ; 6 uses
  br i1 %i.az, label %._crit_edge28.i, label %.lr.ph27.i

.lr.ph27.i:                                       ; preds = %_ZN4Luau6detail14DenseHashTableIPNS0_4NodeES3_S3_NS0_16ItemInterfaceSetIS3_EENS_16DenseHashPointerESt8equal_toIS3_EEC2ERKS3_m.exit.i
  %i.bd = add i64 %i.ba, -1                       ; 3 uses
  br label %bb.k

._crit_edge28.i:                                  ; preds = %bb.n, %_ZN4Luau6detail14DenseHashTableIPNS0_4NodeES3_S3_NS0_16ItemInterfaceSetIS3_EENS_16DenseHashPointerESt8equal_toIS3_EEC2ERKS3_m.exit.i
  %.not.i11.i = icmp eq ptr %.sroa.0259.0345, null
  br i1 %.not.i11.i, label %_ZN4Luau6detail14DenseHashTableIPNS0_4NodeES3_S3_NS0_16ItemInterfaceSetIS3_EENS_16DenseHashPointerESt8equal_toIS3_EE14rehash_if_fullERKS3_.exit.i, label %bb.j

bb.j:                                             ; preds = %._crit_edge28.i
  call void @_ZdlPv(ptr noundef nonnull %.sroa.0259.0345) #22
  br label %_ZN4Luau6detail14DenseHashTableIPNS0_4NodeES3_S3_NS0_16ItemInterfaceSetIS3_EENS_16DenseHashPointerESt8equal_toIS3_EE14rehash_if_fullERKS3_.exit.i

bb.k:                                             ; preds = %bb.n, %.lr.ph27.i
  %.026.i = phi i64 [ 0, %.lr.ph27.i ], [ %i.bv, %bb.n ] ; 2 uses
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0259.0345, i64 %.026.i
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !78 ; 5 uses
  %i.bg = icmp eq ptr %i.bf, null
  br i1 %i.bg, label %bb.n, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bh = ptrtoint ptr %i.bf to i64
  %i.bi = mul i64 %i.bh, -4658895280553007687     ; 2 uses
  %i.bj = lshr i64 %i.bi, 31
  %i.bk = xor i64 %i.bj, %i.bi
  %.02136.i22.i = and i64 %i.bk, %i.bd            ; 3 uses
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.i, i64 %.02136.i22.i
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !78 ; 2 uses
  %i.bn = icmp eq ptr %i.bm, null
  br i1 %i.bn, label %._crit_edge.i206, label %.lr.ph.i204

._crit_edge.i206:                                 ; preds = %bb.m, %bb.l
  %.02136.i.lcssa21.i = phi i64 [ %.02136.i22.i, %bb.l ], [ %.02136.i.i205, %bb.m ]
  %8 = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.i, i64 %.02136.i.lcssa21.i ; 2 uses
  store ptr %i.bf, ptr %8, align 8, !tbaa !78
  br label %_ZN4Luau6detail14DenseHashTableIPNS0_4NodeES3_S3_NS0_16ItemInterfaceSetIS3_EENS_16DenseHashPointerESt8equal_toIS3_EE13insert_unsafeERKS3_.exit.i

.lr.ph.i204:                                      ; preds = %bb.l, %bb.m
  %i.bo = phi ptr [ %i.bt, %bb.m ], [ %i.bm, %bb.l ]
  %.02136.i24.i = phi i64 [ %.02136.i.i205, %bb.m ], [ %.02136.i22.i, %bb.l ] ; 2 uses
  %.02035.i23.i = phi i64 [ %i.bq, %bb.m ], [ 0, %bb.l ]
  %i.bp = icmp eq ptr %i.bo, %i.bf
  br i1 %i.bp, label %_ZN4Luau6detail14DenseHashTableIPNS0_4NodeES3_S3_NS0_16ItemInterfaceSetIS3_EENS_16DenseHashPointerESt8equal_toIS3_EE13insert_unsafeERKS3_.exit.loopexit.i207, label %bb.m

bb.m:                                             ; preds = %.lr.ph.i204
  %i.bq = add i64 %.02035.i23.i, 1                ; 3 uses
  %i.br = add i64 %i.bq, %.02136.i24.i
  %.not.i12.i = icmp ule i64 %i.bq, %i.bd
  call void @llvm.assume(i1 %.not.i12.i)
  %.02136.i.i205 = and i64 %i.br, %i.bd           ; 3 uses
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.i, i64 %.02136.i.i205
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !78 ; 2 uses
  %i.bu = icmp eq ptr %i.bt, null
  br i1 %i.bu, label %._crit_edge.i206, label %.lr.ph.i204

_ZN4Luau6detail14DenseHashTableIPNS0_4NodeES3_S3_NS0_16ItemInterfaceSetIS3_EENS_16DenseHashPointerESt8equal_toIS3_EE13insert_unsafeERKS3_.exit.loopexit.i207: ; preds = %.lr.ph.i204
  %9 = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.i, i64 %.02136.i24.i
  br label %_ZN4Luau6detail14DenseHashTableIPNS0_4NodeES3_S3_NS0_16ItemInterfaceSetIS3_EENS_16DenseHashPointerESt8equal_toIS3_EE13insert_unsafeERKS3_.exit.i

_ZN4Luau6detail14DenseHashTableIPNS0_4NodeES3_S3_NS0_16ItemInterfaceSetIS3_EENS_16DenseHashPointerESt8equal_toIS3_EE13insert_unsafeERKS3_.exit.i: ; preds = %_ZN4Luau6detail14DenseHashTableIPNS0_4NodeES3_S3_NS0_16ItemInterfaceSetIS3_EENS_16DenseHashPointerESt8equal_toIS3_EE13insert_unsafeERKS3_.exit.loopexit.i207, %._crit_edge.i206
  %10 = phi ptr [ %8, %._crit_edge.i206 ], [ %9, %_ZN4Luau6detail14DenseHashTableIPNS0_4NodeES3_S3_NS0_16ItemInterfaceSetIS3_EENS_16DenseHashPointerESt8equal_toIS3_EE13insert_unsafeERKS3_.exit.loopexit.i207 ]
  store ptr %i.bf, ptr %10, align 8, !tbaa !78
  br label %bb.n

bb.n:                                             ; preds = %_ZN4Luau6detail14DenseHashTableIPNS0_4NodeES3_S3_NS0_16ItemInterfaceSetIS3_EENS_16DenseHashPointerESt8equal_toIS3_EE13insert_unsafeERKS3_.exit.i, %bb.k
  %i.bv = add nuw i64 %.026.i, 1                  ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.bv, %.sroa.12.0342
  br i1 %exitcond.not.i, label %._crit_edge28.i, label %bb.k, !llvm.loop !204

_ZN4Luau6detail14DenseHashTableIPNS0_4NodeES3_S3_NS0_16ItemInterfaceSetIS3_EENS_16DenseHashPointerESt8equal_toIS3_EE14rehash_if_fullERKS3_.exit.i: ; preds = %bb.g, %._crit_edge28.i, %bb.j, %.lr.ph
  %.sroa.12.1 = phi i64 [ %.sroa.12.0342, %.lr.ph ], [ %spec.select.i, %._crit_edge28.i ], [ %spec.select.i, %bb.j ], [ %.sroa.12.0342, %bb.g ] ; 3 uses
  %.sroa.0259.1 = phi ptr [ %.sroa.0259.0345, %.lr.ph ], [ %.sroa.0.0.i, %._crit_edge28.i ], [ %.sroa.0.0.i, %bb.j ], [ %.sroa.0259.0345, %bb.g ] ; 9 uses
  %i.bw = add i64 %.sroa.12.1, -1                 ; 3 uses
  %i.bx = ptrtoint ptr %i.aj to i64
  %i.by = mul i64 %i.bx, -4658895280553007687     ; 2 uses
  %i.bz = lshr i64 %i.by, 31
  %i.ca = xor i64 %i.bz, %i.by
  %.02136.i6.i = and i64 %i.bw, %i.ca             ; 3 uses
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0259.1, i64 %.02136.i6.i
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !78 ; 2 uses
  %i.cd = icmp eq ptr %i.cc, null
  br i1 %i.cd, label %._crit_edge.i, label %.lr.ph.i

._crit_edge.i:                                    ; preds = %bb.o, %_ZN4Luau6detail14DenseHashTableIPNS0_4NodeES3_S3_NS0_16ItemInterfaceSetIS3_EENS_16DenseHashPointerESt8equal_toIS3_EE14rehash_if_fullERKS3_.exit.i
  %.02136.i.lcssa5.i = phi i64 [ %.02136.i6.i, %_ZN4Luau6detail14DenseHashTableIPNS0_4NodeES3_S3_NS0_16ItemInterfaceSetIS3_EENS_16DenseHashPointerESt8equal_toIS3_EE14rehash_if_fullERKS3_.exit.i ], [ %.02136.i.i, %bb.o ]
  %i.ce = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0259.1, i64 %.02136.i.lcssa5.i
  store ptr %i.aj, ptr %i.ce, align 8, !tbaa !78
  %i.cf = add i64 %.sroa.19.0344, 1
  br label %_ZN4Luau12DenseHashSetIPNS_6detail4NodeENS_16DenseHashPointerESt8equal_toIS3_EE6insertERKS3_.exit

.lr.ph.i:                                         ; preds = %_ZN4Luau6detail14DenseHashTableIPNS0_4NodeES3_S3_NS0_16ItemInterfaceSetIS3_EENS_16DenseHashPointerESt8equal_toIS3_EE14rehash_if_fullERKS3_.exit.i, %bb.o
  %i.cg = phi ptr [ %i.cl, %bb.o ], [ %i.cc, %_ZN4Luau6detail14DenseHashTableIPNS0_4NodeES3_S3_NS0_16ItemInterfaceSetIS3_EENS_16DenseHashPointerESt8equal_toIS3_EE14rehash_if_fullERKS3_.exit.i ]
  %.02136.i8.i = phi i64 [ %.02136.i.i, %bb.o ], [ %.02136.i6.i, %_ZN4Luau6detail14DenseHashTableIPNS0_4NodeES3_S3_NS0_16ItemInterfaceSetIS3_EENS_16DenseHashPointerESt8equal_toIS3_EE14rehash_if_fullERKS3_.exit.i ]
  %.02035.i7.i = phi i64 [ %i.ci, %bb.o ], [ 0, %_ZN4Luau6detail14DenseHashTableIPNS0_4NodeES3_S3_NS0_16ItemInterfaceSetIS3_EENS_16DenseHashPointerESt8equal_toIS3_EE14rehash_if_fullERKS3_.exit.i ]
  %i.ch = icmp eq ptr %i.cg, %i.aj
  br i1 %i.ch, label %_ZN4Luau12DenseHashSetIPNS_6detail4NodeENS_16DenseHashPointerESt8equal_toIS3_EE6insertERKS3_.exit, label %bb.o

bb.o:                                             ; preds = %.lr.ph.i
  %i.ci = add i64 %.02035.i7.i, 1                 ; 3 uses
  %i.cj = add i64 %i.ci, %.02136.i8.i
  %.not.i3.i = icmp ule i64 %i.ci, %i.bw
  call void @llvm.assume(i1 %.not.i3.i)
  %.02136.i.i = and i64 %i.cj, %i.bw              ; 3 uses
  %i.ck = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0259.1, i64 %.02136.i.i
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !78 ; 2 uses
  %i.cm = icmp eq ptr %i.cl, null
  br i1 %i.cm, label %._crit_edge.i, label %.lr.ph.i

_ZN4Luau12DenseHashSetIPNS_6detail4NodeENS_16DenseHashPointerESt8equal_toIS3_EE6insertERKS3_.exit: ; preds = %.lr.ph.i, %._crit_edge.i
  %.sroa.19.1 = phi i64 [ %i.cf, %._crit_edge.i ], [ %.sroa.19.0344, %.lr.ph.i ] ; 2 uses
  %.sroa.0255.0 = load ptr, ptr %.sroa.0255.0346, align 8, !tbaa !87 ; 2 uses
  %.not305.a = icmp eq ptr %.sroa.0255.0, %0
  br i1 %.not305.a, label %._crit_edge, label %.lr.ph

._crit_edge353.sink.split:                        ; preds = %_ZNK4Luau12DenseHashSetIPNS_6detail4NodeENS_16DenseHashPointerESt8equal_toIS3_EE8containsERKS3_.exit.thread, %bb.c
  %.sroa.0259.0.lcssa480.ph = phi ptr [ null, %bb.c ], [ %.sroa.0259.1, %_ZNK4Luau12DenseHashSetIPNS_6detail4NodeENS_16DenseHashPointerESt8equal_toIS3_EE8containsERKS3_.exit.thread ]
  %.sroa.12.0.lcssa476.ph = phi i64 [ -1, %bb.c ], [ %i.y, %_ZNK4Luau12DenseHashSetIPNS_6detail4NodeENS_16DenseHashPointerESt8equal_toIS3_EE8containsERKS3_.exit.thread ]
  %i.cn = load ptr, ptr %i.n, align 8, !tbaa !78
  br label %._crit_edge353

._crit_edge353:                                   ; preds = %._crit_edge353.sink.split, %.lr.ph352, %._crit_edge
  %.sroa.0259.0.lcssa480 = phi ptr [ %.sroa.0259.1, %._crit_edge ], [ %.sroa.0259.1, %.lr.ph352 ], [ %.sroa.0259.0.lcssa480.ph, %._crit_edge353.sink.split ] ; 4 uses
  %.sroa.19.0.lcssa478 = phi i1 [ %i.x, %._crit_edge ], [ true, %.lr.ph352 ], [ %.not305341, %._crit_edge353.sink.split ]
  %.sroa.12.0.lcssa476 = phi i64 [ %i.y, %._crit_edge ], [ %i.y, %.lr.ph352 ], [ %.sroa.12.0.lcssa476.ph, %._crit_edge353.sink.split ] ; 2 uses
  %i.co = phi ptr [ %i.z, %._crit_edge ], [ %i.z, %.lr.ph352 ], [ %i.cn, %._crit_edge353.sink.split ] ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 24
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !76 ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.co, i64 8 ; 2 uses
  %.not307354 = icmp eq ptr %i.cq, %i.cr
  br i1 %.not307354, label %._crit_edge358, label %.lr.ph357

.lr.ph357:                                        ; preds = %._crit_edge353
  %i.cs = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i, i64 56
  %i.ct = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i, i64 48 ; 3 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i, i64 64
  %i.cv = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i, i64 80 ; 2 uses
  br i1 %.sroa.19.0.lcssa478, label %._crit_edge358, label %.lr.ph357.split

.lr.ph352.split:                                  ; preds = %.lr.ph352, %_ZNK4Luau12DenseHashSetIPNS_6detail4NodeENS_16DenseHashPointerESt8equal_toIS3_EE8containsERKS3_.exit.thread
  %.sroa.0249.0350 = phi ptr [ %i.eb, %_ZNK4Luau12DenseHashSetIPNS_6detail4NodeENS_16DenseHashPointerESt8equal_toIS3_EE8containsERKS3_.exit.thread ], [ %i.ab, %.lr.ph352 ] ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %.sroa.0249.0350, i64 32
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !78 ; 7 uses
  %i.cy = icmp eq ptr %i.cx, null
  br i1 %i.cy, label %_ZNK4Luau12DenseHashSetIPNS_6detail4NodeENS_16DenseHashPointerESt8equal_toIS3_EE8containsERKS3_.exit.thread, label %bb.p

bb.p:                                             ; preds = %.lr.ph352.split
  %i.cz = ptrtoint ptr %i.cx to i64
  %i.da = mul i64 %i.cz, -4658895280553007687     ; 2 uses
  %i.db = lshr i64 %i.da, 31
  %i.dc = xor i64 %i.db, %i.da
  br label %bb.q

bb.q:                                             ; preds = %bb.s, %bb.p
  %.pn.i.i = phi i64 [ %i.dc, %bb.p ], [ %i.di, %bb.s ]
  %.01832.i.i = phi i64 [ 0, %bb.p ], [ %i.dh, %bb.s ]
  %.01933.i.i = and i64 %.pn.i.i, %i.y            ; 2 uses
  %i.dd = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0259.1, i64 %.01933.i.i
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !78 ; 2 uses
  %i.df = icmp eq ptr %i.de, %i.cx
  br i1 %i.df, label %_ZNK4Luau12DenseHashSetIPNS_6detail4NodeENS_16DenseHashPointerESt8equal_toIS3_EE8containsERKS3_.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.dg = icmp eq ptr %i.de, null
  br i1 %i.dg, label %_ZNK4Luau12DenseHashSetIPNS_6detail4NodeENS_16DenseHashPointerESt8equal_toIS3_EE8containsERKS3_.exit.thread, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.dh = add i64 %.01832.i.i, 1                  ; 3 uses
  %i.di = add i64 %i.dh, %.01933.i.i
  %.not.i.i78 = icmp ugt i64 %i.dh, %i.y
  br i1 %.not.i.i78, label %_ZNK4Luau12DenseHashSetIPNS_6detail4NodeENS_16DenseHashPointerESt8equal_toIS3_EE8containsERKS3_.exit.thread, label %bb.q, !llvm.loop !203

_ZNK4Luau12DenseHashSetIPNS_6detail4NodeENS_16DenseHashPointerESt8equal_toIS3_EE8containsERKS3_.exit: ; preds = %bb.q
  %.02022.i.i.i = load ptr, ptr %i.ad, align 8, !tbaa !80 ; 2 uses
  %.not23.i.i.i = icmp eq ptr %.02022.i.i.i, null
  br i1 %.not23.i.i.i, label %._crit_edge.thread.i.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNK4Luau12DenseHashSetIPNS_6detail4NodeENS_16DenseHashPointerESt8equal_toIS3_EE8containsERKS3_.exit, %.lr.ph.i.i.i
  %.02024.i.i.i = phi ptr [ %.020.i.i.i, %.lr.ph.i.i.i ], [ %.02022.i.i.i, %_ZNK4Luau12DenseHashSetIPNS_6detail4NodeENS_16DenseHashPointerESt8equal_toIS3_EE8containsERKS3_.exit ] ; 4 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %.02024.i.i.i, i64 32
  %i.dk = load ptr, ptr %i.dj, align 8, !tbaa !78 ; 2 uses
  %i.dl = icmp ult ptr %i.cx, %i.dk               ; 2 uses
  %.in.v.i.i.i = select i1 %i.dl, i64 16, i64 24
  %.in.i.i.i = getelementptr inbounds nuw i8, ptr %.02024.i.i.i, i64 %.in.v.i.i.i
  %.020.i.i.i = load ptr, ptr %.in.i.i.i, align 8, !tbaa !80 ; 2 uses
  %.not.i.i.i79 = icmp eq ptr %.020.i.i.i, null
  br i1 %.not.i.i.i79, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i, !llvm.loop !1

._crit_edge.i.i.i:                                ; preds = %.lr.ph.i.i.i
  br i1 %i.dl, label %._crit_edge.thread.i.i.i, label %bb.u

._crit_edge.thread.i.i.i:                         ; preds = %._crit_edge.i.i.i, %_ZNK4Luau12DenseHashSetIPNS_6detail4NodeENS_16DenseHashPointerESt8equal_toIS3_EE8containsERKS3_.exit
  %.019.lcssa29.i.i.i = phi ptr [ %.02024.i.i.i, %._crit_edge.i.i.i ], [ %i.ae, %_ZNK4Luau12DenseHashSetIPNS_6detail4NodeENS_16DenseHashPointerESt8equal_toIS3_EE8containsERKS3_.exit ] ; 4 uses
  %i.dm = load ptr, ptr %i.af, align 8, !tbaa !76
  %i.dn = icmp eq ptr %.019.lcssa29.i.i.i, %i.dm
  br i1 %i.dn, label %select.unfold.i.i, label %bb.t

bb.t:                                             ; preds = %._crit_edge.thread.i.i.i
  %i.do = call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.019.lcssa29.i.i.i) #24
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %i.do, i64 32
  %.pre.i.i = load ptr, ptr %.phi.trans.insert.i.i, align 8, !tbaa !78
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %._crit_edge.i.i.i
  %i.dp = phi ptr [ %.pre.i.i, %bb.t ], [ %i.dk, %._crit_edge.i.i.i ]
  %.019.lcssa28.i.i.i = phi ptr [ %.019.lcssa29.i.i.i, %bb.t ], [ %.02024.i.i.i, %._crit_edge.i.i.i ]
  %i.dq = icmp ult ptr %i.dp, %i.cx
  br i1 %i.dq, label %select.unfold.i.i, label %_ZNK4Luau12DenseHashSetIPNS_6detail4NodeENS_16DenseHashPointerESt8equal_toIS3_EE8containsERKS3_.exit.thread

select.unfold.i.i:                                ; preds = %bb.u, %._crit_edge.thread.i.i.i
  %.sroa.4.0.i.ph.i.i = phi ptr [ %.019.lcssa29.i.i.i, %._crit_edge.thread.i.i.i ], [ %.019.lcssa28.i.i.i, %bb.u ] ; 3 uses
  %i.dr = icmp eq ptr %.sroa.4.0.i.ph.i.i, %i.ae
  br i1 %i.dr, label %_ZNSt8_Rb_treeIPN4Luau6detail4NodeES3_St9_IdentityIS3_ESt4lessIS3_ESaIS3_EE10_M_insert_IRKS3_NS9_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS3_EPSt18_Rb_tree_node_baseSH_OT_RT0_.exit.i.i, label %bb.v

bb.v:                                             ; preds = %select.unfold.i.i
  %i.ds = getelementptr inbounds nuw i8, ptr %.sroa.4.0.i.ph.i.i, i64 32
  %i.dt = load ptr, ptr %i.ds, align 8, !tbaa !78
  %i.du = icmp ult ptr %i.cx, %i.dt
  br label %_ZNSt8_Rb_treeIPN4Luau6detail4NodeES3_St9_IdentityIS3_ESt4lessIS3_ESaIS3_EE10_M_insert_IRKS3_NS9_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS3_EPSt18_Rb_tree_node_baseSH_OT_RT0_.exit.i.i

_ZNSt8_Rb_treeIPN4Luau6detail4NodeES3_St9_IdentityIS3_ESt4lessIS3_ESaIS3_EE10_M_insert_IRKS3_NS9_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS3_EPSt18_Rb_tree_node_baseSH_OT_RT0_.exit.i.i: ; preds = %bb.v, %select.unfold.i.i
  %i.dv = phi i1 [ %i.du, %bb.v ], [ true, %select.unfold.i.i ]
  %i.dw = invoke noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #26
          to label %.noexc80 unwind label %bb.w   ; 2 uses

.noexc80:                                         ; preds = %_ZNSt8_Rb_treeIPN4Luau6detail4NodeES3_St9_IdentityIS3_ESt4lessIS3_ESaIS3_EE10_M_insert_IRKS3_NS9_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS3_EPSt18_Rb_tree_node_baseSH_OT_RT0_.exit.i.i
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 32
  store ptr %i.cx, ptr %i.dx, align 8, !tbaa !78
  call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.dv, ptr noundef nonnull %i.dw, ptr noundef nonnull %.sroa.4.0.i.ph.i.i, ptr noundef nonnull align 8 dereferenceable(32) %i.ae) #22
  %i.dy = load i64, ptr %i.ag, align 8, !tbaa !82
  %i.dz = add i64 %i.dy, 1
  store i64 %i.dz, ptr %i.ag, align 8, !tbaa !82
  br label %_ZNK4Luau12DenseHashSetIPNS_6detail4NodeENS_16DenseHashPointerESt8equal_toIS3_EE8containsERKS3_.exit.thread

bb.w:                                             ; preds = %_ZNSt8_Rb_treeIPN4Luau6detail4NodeES3_St9_IdentityIS3_ESt4lessIS3_ESaIS3_EE10_M_insert_IRKS3_NS9_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS3_EPSt18_Rb_tree_node_baseSH_OT_RT0_.exit.i.i
  %i.ea = landingpad { ptr, i32 }
          cleanup
  br label %.thread

_ZNK4Luau12DenseHashSetIPNS_6detail4NodeENS_16DenseHashPointerESt8equal_toIS3_EE8containsERKS3_.exit.thread: ; preds = %bb.s, %bb.r, %.noexc80, %bb.u, %.lr.ph352.split
  %i.eb = call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef %.sroa.0249.0350) #24 ; 2 uses
  %.not306 = icmp eq ptr %i.eb, %i.ac
  br i1 %.not306, label %._crit_edge353.sink.split, label %.lr.ph352.split

._crit_edge358:                                   ; preds = %_ZNK4Luau12DenseHashSetIPNS_6detail4NodeENS_16DenseHashPointerESt8equal_toIS3_EE8containsERKS3_.exit87.thread, %.lr.ph357, %._crit_edge353
  %.not.i.i81 = icmp eq ptr %.sroa.0259.0.lcssa480, null
  br i1 %.not.i.i81, label %_ZN4Luau12DenseHashSetIPNS_6detail4NodeENS_16DenseHashPointerESt8equal_toIS3_EED2Ev.exit, label %bb.x

bb.x:                                             ; preds = %._crit_edge358
  call void @_ZdlPv(ptr noundef nonnull %.sroa.0259.0.lcssa480) #22
  br label %_ZN4Luau12DenseHashSetIPNS_6detail4NodeENS_16DenseHashPointerESt8equal_toIS3_EED2Ev.exit

_ZN4Luau12DenseHashSetIPNS_6detail4NodeENS_16DenseHashPointerESt8equal_toIS3_EED2Ev.exit: ; preds = %._crit_edge358, %bb.x
  %.sroa.0281.0 = load ptr, ptr %.sroa.0281.0362, align 8, !tbaa !87 ; 2 uses
  %.not298.a = icmp eq ptr %.sroa.0281.0, %0
  br i1 %.not298.a, label %.preheader.loopexit, label %.lr.ph364

.lr.ph357.split:                                  ; preds = %.lr.ph357, %_ZNK4Luau12DenseHashSetIPNS_6detail4NodeENS_16DenseHashPointerESt8equal_toIS3_EE8containsERKS3_.exit87.thread
  %.sroa.0241.0355 = phi ptr [ %i.fh, %_ZNK4Luau12DenseHashSetIPNS_6detail4NodeENS_16DenseHashPointerESt8equal_toIS3_EE8containsERKS3_.exit87.thread ], [ %i.cq, %.lr.ph357 ] ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %.sroa.0241.0355, i64 32
  %i.ed = load ptr, ptr %i.ec, align 8, !tbaa !78 ; 7 uses
  %i.ee = icmp eq ptr %i.ed, null
  br i1 %i.ee, label %_ZNK4Luau12DenseHashSetIPNS_6detail4NodeENS_16DenseHashPointerESt8equal_toIS3_EE8containsERKS3_.exit87.thread, label %bb.y
end_hunk_0
