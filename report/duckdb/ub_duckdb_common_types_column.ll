inline.NumInlined: 5543
inline.NumDeleted: 2531
loop-unroll.NumRuntimeUnrolled: 33
loop-unroll.NumUnrolled: 33
begin_hunk_0_@_ZN6duckdb19ColumnDataAllocator12GetAllocatorEv:bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !43   ; 3 uses
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !51
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 160
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = tail call noundef nonnull align 8 dereferenceable(32) ptr %i.g(ptr noundef nonnull align 8 dereferenceable(8) %i.d)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi ptr [ %i.h, %bb.b ], [ %i.d, %bb.a ]
  ret ptr %.0
}

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb19ColumnDataAllocator20InitializeChunkStateERNS_20ChunkManagementStateERNS_13ChunkMetaDataE(ptr noundef nonnull align 8 dereferenceable(176) %0, ptr noundef nonnull align 8 dereferenceable(57) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(82) %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.duckdb::BufferHandle", align 8 ; 7 uses
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = load i8, ptr %0, align 8, !tbaa !7
  switch i8 %i.b, label %.loopexit52 [
    i8 0, label %bb.b
    i8 2, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a, %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 5 uses
  %.sroa.045.06974 = load ptr, ptr %i.c, align 8, !tbaa !129 ; 2 uses
  %.not7075 = icmp eq ptr %.sroa.045.06974, null
  br i1 %.not7075, label %.critedge, label %.lr.ph.lr.ph

.lr.ph.lr.ph:                                     ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.backedge, %.lr.ph.lr.ph
  %.sroa.045.071 = phi ptr [ %.sroa.045.06974, %.lr.ph.lr.ph ], [ %.sroa.045.071.be, %.lr.ph.backedge ] ; 8 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.045.071, i64 8
  %i.k = load i64, ptr %i.j, align 8, !tbaa !191
  %i.l = tail call noundef i32 @_ZN6duckdb15NumericCastImplIjmLb0EE7ConvertEm(i64 noundef %i.k) ; 4 uses
  %i.m = load i64, ptr %i.d, align 8, !tbaa !194
  %.not.not.i.i = icmp eq i64 %i.m, 0
  br i1 %.not.not.i.i, label %.preheader84, label %bb.d

.preheader84:                                     ; preds = %.lr.ph, %bb.c
  %.sroa.06.0.in.i.i = phi ptr [ %.sroa.06.0.i.i, %bb.c ], [ %i.g, %.lr.ph ]
  %.sroa.06.0.i.i = load ptr, ptr %.sroa.06.0.in.i.i, align 8, !tbaa !129 ; 3 uses
  %.not.i.i = icmp eq ptr %.sroa.06.0.i.i, null
  br i1 %.not.i.i, label %.loopexit53, label %bb.c

bb.c:                                             ; preds = %.preheader84
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i, i64 8
  %i.o = load i32, ptr %i.n, align 4, !tbaa !3
  %i.p = icmp eq i32 %i.l, %i.o
  br i1 %i.p, label %_ZNSt13unordered_setIjSt4hashIjESt8equal_toIjESaIjEE4findERKj.exit, label %.preheader84, !llvm.loop !196

bb.d:                                             ; preds = %.lr.ph
  %i.q = zext i32 %i.l to i64
  %i.r = load i64, ptr %i.f, align 8, !tbaa !197  ; 2 uses
  %i.s = urem i64 %i.q, %i.r                      ; 2 uses
  %i.t = load ptr, ptr %i.e, align 8, !tbaa !198
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %i.s
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !133  ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.v, null
  br i1 %.not.i.i.i.i, label %.loopexit53, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !129  ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.y = load i32, ptr %i.x, align 4, !tbaa !3
  %i.z = icmp eq i32 %i.l, %i.y
  br i1 %i.z, label %_ZNSt13unordered_setIjSt4hashIjESt8equal_toIjESaIjEE4findERKj.exit, label %.lr.ph.i.i.i.i

bb.f:                                             ; preds = %bb.g
  %i.aa = icmp eq i32 %i.l, %i.ad
  br i1 %i.aa, label %_ZNSt13unordered_setIjSt4hashIjESt8equal_toIjESaIjEE4findERKj.exit, label %.lr.ph.i.i.i.i, !llvm.loop !199

.lr.ph.i.i.i.i:                                   ; preds = %bb.e, %bb.f
  %.020.i.i.i.i = phi ptr [ %i.ab, %bb.f ], [ %i.w, %bb.e ]
  %i.ab = load ptr, ptr %.020.i.i.i.i, align 8, !tbaa !129 ; 3 uses
  %.not18.i.i.i.i = icmp eq ptr %i.ab, null
  br i1 %.not18.i.i.i.i, label %.loopexit53, label %bb.g

bb.g:                                             ; preds = %.lr.ph.i.i.i.i
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !3  ; 2 uses
  %i.ae = zext i32 %i.ad to i64
  %i.af = urem i64 %i.ae, %i.r
  %.not19.i.i.i.i = icmp eq i64 %i.af, %i.s
  br i1 %.not19.i.i.i.i, label %bb.f, label %..loopexit_crit_edge21.i.i.i.i, !llvm.loop !199

..loopexit_crit_edge21.i.i.i.i:                   ; preds = %bb.g
  br label %.loopexit53, !llvm.loop !199

.loopexit53:                                      ; preds = %.lr.ph.i.i.i.i, %.preheader84, %bb.d, %..loopexit_crit_edge21.i.i.i.i
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.045.071, i64 8
  %i.ah = load i64, ptr %i.h, align 8, !tbaa !131 ; 3 uses
  %i.ai = load i64, ptr %i.ag, align 8, !tbaa !103
  %i.aj = urem i64 %i.ai, %i.ah                   ; 3 uses
  %i.ak = load ptr, ptr %1, align 8, !tbaa !132   ; 3 uses
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.ak, i64 %i.aj ; 2 uses
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !133 ; 4 uses
  br label %bb.h

bb.h:                                             ; preds = %bb.h, %.loopexit53
  %.0.i.i.i.i = phi ptr [ %i.am, %.loopexit53 ], [ %i.an, %bb.h ] ; 4 uses
  %i.an = load ptr, ptr %.0.i.i.i.i, align 8, !tbaa !129 ; 2 uses
  %.not.i.i.i.i21 = icmp eq ptr %i.an, %.sroa.045.071
  br i1 %.not.i.i.i.i21, label %_ZNSt10_HashtableImSt4pairIKmN6duckdb12BufferHandleEESaIS4_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb0ELb0ELb1EEEE20_M_get_previous_nodeEmPNS6_10_Hash_nodeIS4_Lb0EEE.exit.i.i.i, label %bb.h, !llvm.loop !200

_ZNSt10_HashtableImSt4pairIKmN6duckdb12BufferHandleEESaIS4_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb0ELb0ELb1EEEE20_M_get_previous_nodeEmPNS6_10_Hash_nodeIS4_Lb0EEE.exit.i.i.i: ; preds = %bb.h
  %i.ao = icmp eq ptr %.0.i.i.i.i, %i.am
  %i.ap = load ptr, ptr %.sroa.045.071, align 8, !tbaa !129 ; 4 uses
  %.not18.i.i.i.i22 = icmp eq ptr %i.ap, null     ; 2 uses
  br i1 %i.ao, label %bb.i, label %bb.n

bb.i:                                             ; preds = %_ZNSt10_HashtableImSt4pairIKmN6duckdb12BufferHandleEESaIS4_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb0ELb0ELb1EEEE20_M_get_previous_nodeEmPNS6_10_Hash_nodeIS4_Lb0EEE.exit.i.i.i
  br i1 %.not18.i.i.i.i22, label %._crit_edge.i.i.i.i.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !103
  %i.as = urem i64 %i.ar, %i.ah                   ; 2 uses
  %.not9.i.i.i.i.i = icmp eq i64 %i.as, %i.aj
  br i1 %.not9.i.i.i.i.i, label %_ZNSt13unordered_mapImN6duckdb12BufferHandleESt4hashImESt8equal_toImESaISt4pairIKmS1_EEE5eraseENSt8__detail14_Node_iteratorIS8_Lb0ELb0EEE.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.ak, i64 %i.as
  store ptr %i.am, ptr %i.at, align 8, !tbaa !133
  br label %._crit_edge.i.i.i.i.i

._crit_edge.i.i.i.i.i:                            ; preds = %bb.k, %bb.i
  %i.au = icmp eq ptr %i.c, %i.am
  br i1 %i.au, label %bb.l, label %bb.m

bb.l:                                             ; preds = %._crit_edge.i.i.i.i.i
  store ptr %i.ap, ptr %i.c, align 8, !tbaa !201
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %._crit_edge.i.i.i.i.i
  store ptr null, ptr %i.al, align 8, !tbaa !133
  br label %_ZNSt13unordered_mapImN6duckdb12BufferHandleESt4hashImESt8equal_toImESaISt4pairIKmS1_EEE5eraseENSt8__detail14_Node_iteratorIS8_Lb0ELb0EEE.exit

bb.n:                                             ; preds = %_ZNSt10_HashtableImSt4pairIKmN6duckdb12BufferHandleEESaIS4_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb0ELb0ELb1EEEE20_M_get_previous_nodeEmPNS6_10_Hash_nodeIS4_Lb0EEE.exit.i.i.i
  br i1 %.not18.i.i.i.i22, label %_ZNSt13unordered_mapImN6duckdb12BufferHandleESt4hashImESt8equal_toImESaISt4pairIKmS1_EEE5eraseENSt8__detail14_Node_iteratorIS8_Lb0ELb0EEE.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.av = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !103
  %i.ax = urem i64 %i.aw, %i.ah                   ; 2 uses
  %.not17.i.i.i.i = icmp eq i64 %i.ax, %i.aj
  br i1 %.not17.i.i.i.i, label %_ZNSt13unordered_mapImN6duckdb12BufferHandleESt4hashImESt8equal_toImESaISt4pairIKmS1_EEE5eraseENSt8__detail14_Node_iteratorIS8_Lb0ELb0EEE.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %i.ak, i64 %i.ax
  store ptr %.0.i.i.i.i, ptr %i.ay, align 8, !tbaa !133
  br label %_ZNSt13unordered_mapImN6duckdb12BufferHandleESt4hashImESt8equal_toImESaISt4pairIKmS1_EEE5eraseENSt8__detail14_Node_iteratorIS8_Lb0ELb0EEE.exit

_ZNSt13unordered_mapImN6duckdb12BufferHandleESt4hashImESt8equal_toImESaISt4pairIKmS1_EEE5eraseENSt8__detail14_Node_iteratorIS8_Lb0ELb0EEE.exit: ; preds = %bb.j, %bb.m, %bb.n, %bb.o, %bb.p
  %i.az = load ptr, ptr %.sroa.045.071, align 8, !tbaa !129
  store ptr %i.az, ptr %.0.i.i.i.i, align 8, !tbaa !129
  %i.ba = getelementptr inbounds nuw i8, ptr %.sroa.045.071, i64 16
  tail call void @_ZN6duckdb12BufferHandleD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.ba) #24
  tail call void @_ZdlPv(ptr noundef nonnull %.sroa.045.071) #25
  %i.bb = load i64, ptr %i.i, align 8, !tbaa !121
  %i.bc = add i64 %i.bb, -1
  store i64 %i.bc, ptr %i.i, align 8, !tbaa !121
  %.sroa.045.069 = load ptr, ptr %i.c, align 8, !tbaa !129 ; 2 uses
  %.not70 = icmp eq ptr %.sroa.045.069, null
  br i1 %.not70, label %.critedge, label %.lr.ph.backedge

_ZNSt13unordered_setIjSt4hashIjESt8equal_toIjESaIjEE4findERKj.exit: ; preds = %bb.f, %bb.c, %bb.e
  %.sroa.045.0 = load ptr, ptr %.sroa.045.071, align 8, !tbaa !129 ; 2 uses
  %.not = icmp eq ptr %.sroa.045.0, null
  br i1 %.not, label %.critedge, label %.lr.ph.backedge

.lr.ph.backedge:                                  ; preds = %_ZNSt13unordered_setIjSt4hashIjESt8equal_toIjESaIjEE4findERKj.exit, %_ZNSt13unordered_mapImN6duckdb12BufferHandleESt4hashImESt8equal_toImESaISt4pairIKmS1_EEE5eraseENSt8__detail14_Node_iteratorIS8_Lb0ELb0EEE.exit
  %.sroa.045.071.be = phi ptr [ %.sroa.045.0, %_ZNSt13unordered_setIjSt4hashIjESt8equal_toIjESaIjEE4findERKj.exit ], [ %.sroa.045.069, %_ZNSt13unordered_mapImN6duckdb12BufferHandleESt4hashImESt8equal_toImESaISt4pairIKmS1_EEE5eraseENSt8__detail14_Node_iteratorIS8_Lb0ELb0EEE.exit ]
  br label %.lr.ph, !llvm.loop !202

.critedge:                                        ; preds = %_ZNSt13unordered_mapImN6duckdb12BufferHandleESt4hashImESt8equal_toImESaISt4pairIKmS1_EEE5eraseENSt8__detail14_Node_iteratorIS8_Lb0ELb0EEE.exit, %_ZNSt13unordered_setIjSt4hashIjESt8equal_toIjESaIjEE4findERKj.exit, %bb.b
  %i.bd = getelementptr inbounds nuw i8, ptr %2, i64 40
  %.sroa.037.078 = load ptr, ptr %i.bd, align 8, !tbaa !129 ; 2 uses
  %.not4979 = icmp eq ptr %.sroa.037.078, null
  br i1 %.not4979, label %.loopexit52, label %.lr.ph81

.lr.ph81:                                         ; preds = %.critedge
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 8
  br label %bb.q

bb.q:                                             ; preds = %.lr.ph81, %_ZNSt13unordered_mapImN6duckdb12BufferHandleESt4hashImESt8equal_toImESaISt4pairIKmS1_EEE4findERS7_.exit
  %.sroa.037.080 = phi ptr [ %.sroa.037.078, %.lr.ph81 ], [ %.sroa.037.0, %_ZNSt13unordered_mapImN6duckdb12BufferHandleESt4hashImESt8equal_toImESaISt4pairIKmS1_EEE4findERS7_.exit ] ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %.sroa.037.080, i64 8 ; 3 uses
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !3
  %i.bi = zext i32 %i.bh to i64                   ; 4 uses
  %i.bj = load i64, ptr %i.be, align 8, !tbaa !121
  %.not.not.i.i23 = icmp eq i64 %i.bj, 0
  br i1 %.not.not.i.i23, label %.preheader, label %bb.s

.preheader:                                       ; preds = %bb.q, %bb.r
  %.sroa.06.0.in.i.i31 = phi ptr [ %.sroa.06.0.i.i32, %bb.r ], [ %i.c, %bb.q ]
  %.sroa.06.0.i.i32 = load ptr, ptr %.sroa.06.0.in.i.i31, align 8, !tbaa !129 ; 3 uses
  %.not.i.i33 = icmp eq ptr %.sroa.06.0.i.i32, null
  br i1 %.not.i.i33, label %.loopexit, label %bb.r

bb.r:                                             ; preds = %.preheader
  %i.bk = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i32, i64 8
  %i.bl = load i64, ptr %i.bk, align 8, !tbaa !103
  %i.bm = icmp eq i64 %i.bl, %i.bi
  br i1 %i.bm, label %_ZNSt13unordered_mapImN6duckdb12BufferHandleESt4hashImESt8equal_toImESaISt4pairIKmS1_EEE4findERS7_.exit, label %.preheader, !llvm.loop !130

bb.s:                                             ; preds = %bb.q
  %i.bn = load i64, ptr %i.bf, align 8, !tbaa !131 ; 2 uses
  %i.bo = urem i64 %i.bi, %i.bn                   ; 2 uses
  %i.bp = load ptr, ptr %1, align 8, !tbaa !132
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %i.bp, i64 %i.bo
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !133 ; 2 uses
  %.not.i.i.i.i24 = icmp eq ptr %i.br, null
  br i1 %.not.i.i.i.i24, label %.loopexit, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !129 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 8
  %i.bu = load i64, ptr %i.bt, align 8, !tbaa !103
  %i.bv = icmp eq i64 %i.bu, %i.bi
  br i1 %i.bv, label %_ZNSt13unordered_mapImN6duckdb12BufferHandleESt4hashImESt8equal_toImESaISt4pairIKmS1_EEE4findERS7_.exit, label %.lr.ph.i.i.i.i25

bb.u:                                             ; preds = %bb.v
  %i.bw = icmp eq i64 %i.bz, %i.bi
  br i1 %i.bw, label %_ZNSt13unordered_mapImN6duckdb12BufferHandleESt4hashImESt8equal_toImESaISt4pairIKmS1_EEE4findERS7_.exit, label %.lr.ph.i.i.i.i25, !llvm.loop !134

.lr.ph.i.i.i.i25:                                 ; preds = %bb.t, %bb.u
  %.020.i.i.i.i26 = phi ptr [ %i.bx, %bb.u ], [ %i.bs, %bb.t ]
  %i.bx = load ptr, ptr %.020.i.i.i.i26, align 8, !tbaa !129 ; 3 uses
  %.not18.i.i.i.i27 = icmp eq ptr %i.bx, null
  br i1 %.not18.i.i.i.i27, label %.loopexit, label %bb.v

bb.v:                                             ; preds = %.lr.ph.i.i.i.i25
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 8
  %i.bz = load i64, ptr %i.by, align 8, !tbaa !103 ; 2 uses
  %i.ca = urem i64 %i.bz, %i.bn
  %.not19.i.i.i.i28 = icmp eq i64 %i.ca, %i.bo
  br i1 %.not19.i.i.i.i28, label %bb.u, label %..loopexit_crit_edge21.i.i.i.i29, !llvm.loop !134

..loopexit_crit_edge21.i.i.i.i29:                 ; preds = %bb.v
  br label %.loopexit, !llvm.loop !134

.loopexit:                                        ; preds = %.lr.ph.i.i.i.i25, %.preheader, %..loopexit_crit_edge21.i.i.i.i29, %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  %4 = load i32, ptr %i.bg, align 4, !tbaa !3
  call void @_ZN6duckdb19ColumnDataAllocator3PinEj(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::BufferHandle") align 8 %3, ptr noundef nonnull align 8 dereferenceable(176) %0, i32 noundef %4)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  %i.cb = load i32, ptr %i.bg, align 4, !tbaa !3
  %i.cc = zext i32 %i.cb to i64
  store i64 %i.cc, ptr %i.a, align 8, !tbaa !103
  %i.cd = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt8__detail9_Map_baseImSt4pairIKmN6duckdb12BufferHandleEESaIS5_ENS_10_Select1stESt8equal_toImESt4hashImENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_20_Prime_rehash_policyENS_17_Hashtable_traitsILb0ELb0ELb1EEELb1EEixEOm(ptr noundef nonnull align 8 dereferenceable(56) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %_ZNSt13unordered_mapImN6duckdb12BufferHandleESt4hashImESt8equal_toImESaISt4pairIKmS1_EEEixEOm.exit unwind label %bb.w

_ZNSt13unordered_mapImN6duckdb12BufferHandleESt4hashImESt8equal_toImESaISt4pairIKmS1_EEEixEOm.exit: ; preds = %.loopexit
  %i.ce = call noundef nonnull align 8 dereferenceable(24) ptr @_ZN6duckdb12BufferHandleaSEOS0_(ptr noundef nonnull align 8 dereferenceable(24) %i.cd, ptr noundef nonnull align 8 dereferenceable(24) %3) #24 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  call void @_ZN6duckdb12BufferHandleD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %3) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  br label %_ZNSt13unordered_mapImN6duckdb12BufferHandleESt4hashImESt8equal_toImESaISt4pairIKmS1_EEE4findERS7_.exit

_ZNSt13unordered_mapImN6duckdb12BufferHandleESt4hashImESt8equal_toImESaISt4pairIKmS1_EEE4findERS7_.exit: ; preds = %bb.u, %bb.r, %bb.t, %_ZNSt13unordered_mapImN6duckdb12BufferHandleESt4hashImESt8equal_toImESaISt4pairIKmS1_EEEixEOm.exit
  %.sroa.037.0 = load ptr, ptr %.sroa.037.080, align 8, !tbaa !129 ; 2 uses
  %.not49 = icmp eq ptr %.sroa.037.0, null
  br i1 %.not49, label %.loopexit52, label %bb.q

bb.w:                                             ; preds = %.loopexit
  %i.cf = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  call void @_ZN6duckdb12BufferHandleD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %3) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  resume { ptr, i32 } %i.cf

.loopexit52:                                      ; preds = %_ZNSt13unordered_mapImN6duckdb12BufferHandleESt4hashImESt8equal_toImESaISt4pairIKmS1_EEE4findERS7_.exit, %.critedge, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #3

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNK6duckdb8weak_ptrINS_11BlockHandleELb1EE4lockEv(ptr dead_on_unwind noalias writable sret(%"class.duckdb::shared_ptr.398") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !50, !noalias !203 ; 9 uses
  %.not.i.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i.i, label %_ZN6duckdb10shared_ptrINS_11BlockHandleELb1EEC2ESt10shared_ptrIS1_E.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 9 uses
  %i.d = load atomic i32, ptr %i.c monotonic, align 8, !noalias !203
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %bb.b
  %.06.i.i.i.i.i = phi i32 [ %i.d, %bb.b ], [ %i.h, %bb.d ] ; 3 uses
  %.not.not.not.i.not.i.i.i.i = icmp eq i32 %.06.i.i.i.i.i, 0
  br i1 %.not.not.not.i.not.i.i.i.i, label %_ZN6duckdb10shared_ptrINS_11BlockHandleELb1EEC2ESt10shared_ptrIS1_E.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = add nsw i32 %.06.i.i.i.i.i, 1
  %i.f = cmpxchg weak ptr %i.c, i32 %.06.i.i.i.i.i, i32 %i.e acq_rel monotonic, align 8, !noalias !203 ; 2 uses
  %i.g = extractvalue { i32, i1 } %i.f, 1
  %i.h = extractvalue { i32, i1 } %i.f, 0
  br i1 %i.g, label %_ZNKSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE16_M_get_use_countEv.exit.i.i.i, label %bb.c, !llvm.loop !206

_ZNKSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE16_M_get_use_countEv.exit.i.i.i: ; preds = %bb.d
  %i.i = load atomic i32, ptr %i.c monotonic, align 8, !noalias !203 ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.i, 0
  br i1 %.not.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_ZNKSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE16_M_get_use_countEv.exit.i.i.i
  %i.j = load ptr, ptr %1, align 8, !tbaa !118, !noalias !203
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %_ZNKSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE16_M_get_use_countEv.exit.i.i.i
  %i.k = phi ptr [ %i.j, %bb.e ], [ null, %_ZNKSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE16_M_get_use_countEv.exit.i.i.i ] ; 2 uses
  store ptr %i.k, ptr %0, align 8, !tbaa !97
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.b, ptr %i.l, align 8, !tbaa !54
  %i.m = load i8, ptr @__libc_single_threaded, align 1, !tbaa !43
  %.not.i.i.i.i.i = icmp eq i8 %i.m, 0
  br i1 %.not.i.i.i.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.n = add nsw i32 %i.i, 1
  store i32 %i.n, ptr %i.c, align 8, !tbaa !3
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.o = atomicrmw volatile add ptr %i.c, i32 1 acq_rel, align 4 ; 0 uses
  %.pre.i = load ptr, ptr %0, align 8, !tbaa !97
  br label %bb.i

_ZN6duckdb10shared_ptrINS_11BlockHandleELb1EEC2ESt10shared_ptrIS1_E.exit: ; preds = %bb.c, %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  tail call void @_ZN6duckdb10shared_ptrINS_11BlockHandleELb1EE18__enable_weak_thisIS1_S1_TnNSt9enable_ifIXsr3std14is_convertibleIPT0_PKNS_23enable_shared_from_thisIT_EEEE5valueEiE4typeELi0EEEvSB_S6_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef null, ptr noundef null) #24
  br label %_ZNSt12__shared_ptrIN6duckdb11BlockHandleELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.i:                                             ; preds = %bb.g, %bb.h
  %.ph = phi ptr [ %.pre.i, %bb.h ], [ %i.k, %bb.g ] ; 2 uses
  tail call void @_ZN6duckdb10shared_ptrINS_11BlockHandleELb1EE18__enable_weak_thisIS1_S1_TnNSt9enable_ifIXsr3std14is_convertibleIPT0_PKNS_23enable_shared_from_thisIT_EEEE5valueEiE4typeELi0EEEvSB_S6_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %.ph, ptr noundef %.ph) #24
  %i.p = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.q = icmp eq i64 %i.p, 4294967297
  %i.r = trunc i64 %i.p to i32                    ; 2 uses
  br i1 %i.q, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  store i32 0, ptr %i.c, align 8, !tbaa !56
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.s, align 4, !tbaa !58
  %i.t = load ptr, ptr %i.b, align 8, !tbaa !51
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.v = load ptr, ptr %i.u, align 8
  tail call void %i.v(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #24, !inline_history !99
  %i.w = load ptr, ptr %i.b, align 8, !tbaa !51
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 24
  %i.y = load ptr, ptr %i.x, align 8
  tail call void %i.y(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #24, !inline_history !99
  br label %_ZNSt12__shared_ptrIN6duckdb11BlockHandleELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.k:                                             ; preds = %bb.i
  %i.z = load i8, ptr @__libc_single_threaded, align 1, !tbaa !43
  %.not.i.i.i2 = icmp eq i8 %i.z, 0
  br i1 %.not.i.i.i2, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.aa = add nsw i32 %i.r, -1
  store i32 %i.aa, ptr %i.c, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.m:                                             ; preds = %bb.k
  %i.ab = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.m, %bb.l
  %.0.i.i.i.i = phi i32 [ %i.r, %bb.l ], [ %i.ab, %bb.m ]
  %i.ac = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.ac, label %bb.n, label %_ZNSt12__shared_ptrIN6duckdb11BlockHandleELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !60

bb.n:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #24
  br label %_ZNSt12__shared_ptrIN6duckdb11BlockHandleELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN6duckdb11BlockHandleELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZN6duckdb10shared_ptrINS_11BlockHandleELb1EEC2ESt10shared_ptrIS1_E.exit, %bb.j, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.n
  ret void
}

declare noundef nonnull align 8 dereferenceable(24) ptr @_ZN6duckdb16ManagedResultSet10GetHandlesEv(ptr noundef nonnull align 8 dereferenceable(48)) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb20ColumnDataCollectionC2ERNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(112) initializes((0, 97), (104, 112)) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
_ZN6duckdb6vectorINS_11LogicalTypeELb1ESaIS1_EE5clearEv.exit:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 104
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %0, i8 0, i64 40, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.a, i8 0, i64 48, i1 false)
  store i64 -1, ptr %i.b, align 8, !tbaa !42
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 0, ptr %i.c, align 8, !tbaa !207
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i8 0, ptr %i.d, align 8, !tbaa !231
  %i.e = invoke noalias noundef nonnull dereferenceable(192) ptr @_Znwm(i64 noundef 192) #28
          to label %.noexc unwind label %bb.o     ; 11 uses

.noexc:                                           ; preds = %_ZN6duckdb6vectorINS_11LogicalTypeELb1ESaIS1_EE5clearEv.exit
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 8 uses
  store i32 1, ptr %i.f, align 8, !tbaa !56, !noalias !232
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 12 ; 2 uses
  store i32 1, ptr %i.g, align 4, !tbaa !58, !noalias !232
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIN6duckdb19ColumnDataAllocatorESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.e, align 8, !tbaa !51, !noalias !232
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  invoke void @_ZN6duckdb19ColumnDataAllocatorC1ERNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(176) %i.h, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.a unwind label %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN6duckdb19ColumnDataAllocatorESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit10.i.i.i.i.i, !noalias !232

_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN6duckdb19ColumnDataAllocatorESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit10.i.i.i.i.i: ; preds = %.noexc
  %i.i = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPv(ptr noundef nonnull %i.e) #25, !noalias !232
  br label %.body

bb.a:                                             ; preds = %.noexc
  %i.j = load i8, ptr @__libc_single_threaded, align 1, !tbaa !43, !noalias !237
  %.not.i.i.i.i.i.i = icmp eq i8 %i.j, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = load i32, ptr %i.f, align 8, !tbaa !3, !noalias !237
  %i.l = add nsw i32 %i.k, 1
  store i32 %i.l, ptr %i.f, align 8, !tbaa !3, !noalias !237
  br label %_ZN6duckdb10shared_ptrINS_19ColumnDataAllocatorELb1EEC2ESt10shared_ptrIS1_E.exit.i

bb.c:                                             ; preds = %bb.a
  %i.m = atomicrmw volatile add ptr %i.f, i32 1 acq_rel, align 4, !noalias !237 ; 0 uses
  br label %_ZN6duckdb10shared_ptrINS_19ColumnDataAllocatorELb1EEC2ESt10shared_ptrIS1_E.exit.i

_ZN6duckdb10shared_ptrINS_19ColumnDataAllocatorELb1EEC2ESt10shared_ptrIS1_E.exit.i: ; preds = %bb.c, %bb.b
  %i.n = load atomic i64, ptr %i.f acquire, align 8, !noalias !237 ; 2 uses
  %i.o = icmp eq i64 %i.n, 4294967297
  %i.p = trunc i64 %i.n to i32                    ; 2 uses
  br i1 %i.o, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_ZN6duckdb10shared_ptrINS_19ColumnDataAllocatorELb1EEC2ESt10shared_ptrIS1_E.exit.i
  store i32 0, ptr %i.f, align 8, !tbaa !56, !noalias !237
  store i32 0, ptr %i.g, align 4, !tbaa !58, !noalias !237
  %i.q = load ptr, ptr %i.e, align 8, !tbaa !51, !noalias !237
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 16
end_hunk_0
begin_hunk_1_@_ZNK6duckdb6vectorINS_18ColumnDataConsumer14ChunkReferenceELb1ESaIS2_EEixEm:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  br i1 %.0.i.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i
  %.pn8.i.i = phi { ptr, i32 } [ %i.k, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i ], [ %i.l, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i ], [ %i.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ]
  call void @__cxa_free_exception(ptr %i.j) #24
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  %.pn7.i.i = phi { ptr, i32 } [ %i.l, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i ], [ %.pn8.i.i, %bb.f ], [ %i.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ]
  resume { ptr, i32 } %.pn7.i.i

bb.h:                                             ; preds = %bb.d
  unreachable

_ZNK6duckdb6vectorINS_18ColumnDataConsumer14ChunkReferenceELb1ESaIS2_EE3getILb1EEERKS2_m.exit: ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.p = getelementptr inbounds nuw [16 x i8], ptr %i.e, i64 %1
  ret ptr %i.p
}

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb18ColumnDataConsumer11FinishChunkERNS_27ColumnDataConsumerScanStateE(ptr noundef nonnull align 8 dereferenceable(176) %0, ptr noundef nonnull align 8 dereferenceable(80) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %0) #24 ; 2 uses
  %.not.i.i = icmp eq i32 %i.a, 0
  br i1 %.not.i.i, label %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_system_errori(i32 noundef %i.a) #26
  unreachable

_ZNSt10lock_guardISt5mutexEC2ERS0_.exit:          ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !1159
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !1181, !nonnull !64, !noundef !64 ; 4 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !129  ; 2 uses
  %.not9.i.i = icmp eq ptr %i.g, null
  br i1 %.not9.i.i, label %_ZSt11min_elementINSt8__detail14_Node_iteratorImLb1ELb0EEEET_S3_S3_.exit, label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.pre.i.i = load i64, ptr %.phi.trans.insert.i.i, align 8, !tbaa !103
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.preheader.i.i
  %i.h = phi i64 [ %i.n, %.lr.ph.i.i ], [ %.pre.i.i, %.lr.ph.preheader.i.i ] ; 2 uses
  %i.i = phi ptr [ %i.m, %.lr.ph.i.i ], [ %i.g, %.lr.ph.preheader.i.i ] ; 3 uses
  %.sroa.02.010.i.i = phi ptr [ %spec.select.i.i, %.lr.ph.i.i ], [ %i.f, %.lr.ph.preheader.i.i ]
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.k = load i64, ptr %i.j, align 8, !tbaa !103  ; 2 uses
  %i.l = icmp ult i64 %i.k, %i.h
  %spec.select.i.i = select i1 %i.l, ptr %i.i, ptr %.sroa.02.010.i.i ; 2 uses
  %i.m = load ptr, ptr %i.i, align 8, !tbaa !129  ; 2 uses
  %.not.i.i9 = icmp eq ptr %i.m, null
  %i.n = tail call i64 @llvm.umin.i64(i64 %i.k, i64 %i.h)
  br i1 %.not.i.i9, label %_ZSt11min_elementINSt8__detail14_Node_iteratorImLb1ELb0EEEET_S3_S3_.exit, label %.lr.ph.i.i, !llvm.loop !1182

_ZSt11min_elementINSt8__detail14_Node_iteratorImLb1ELb0EEEET_S3_S3_.exit: ; preds = %.lr.ph.i.i, %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit
  %.sroa.02.2.i.i = phi ptr [ %i.f, %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit ], [ %spec.select.i.i, %.lr.ph.i.i ]
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.02.2.i.i, i64 8
  %i.p = load i64, ptr %i.o, align 8, !tbaa !103  ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.r = invoke noundef i64 @_ZNSt10_HashtableImmSaImENSt8__detail9_IdentityESt8equal_toImESt4hashImENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE8_M_eraseESt17integral_constantIbLb1EERKm(ptr noundef nonnull align 8 dereferenceable(56) %i.d, ptr noundef nonnull align 8 dereferenceable(8) %i.q)
          to label %_ZNSt13unordered_setImSt4hashImESt8equal_toImESaImEE5eraseERKm.exit unwind label %bb.c ; 0 uses

_ZNSt13unordered_setImSt4hashImESt8equal_toImESaImEE5eraseERKm.exit: ; preds = %_ZSt11min_elementINSt8__detail14_Node_iteratorImLb1ELb0EEEET_S3_S3_.exit
  store i64 %i.p, ptr %i.b, align 8, !tbaa !1159
  %i.s = tail call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %0) #24 ; 0 uses
  tail call void @_ZN6duckdb18ColumnDataConsumer13ConsumeChunksEmm(ptr noundef nonnull align 8 dereferenceable(176) %0, i64 noundef %i.c, i64 noundef %i.p)
  ret void

bb.c:                                             ; preds = %_ZSt11min_elementINSt8__detail14_Node_iteratorImLb1ELb0EEEET_S3_S3_.exit
  %i.t = landingpad { ptr, i32 }
          cleanup
  %i.u = tail call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %0) #24 ; 0 uses
  resume { ptr, i32 } %i.t
}

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb18ColumnDataConsumer13ConsumeChunksEmm(ptr noundef nonnull align 8 dereferenceable(176) %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %i.c = alloca i64, align 8                      ; 5 uses
  %i.d = alloca i64, align 8                      ; 5 uses
  %i.e = alloca i64, align 8                      ; 4 uses
  %i.f = alloca i64, align 8                      ; 4 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %5 = alloca %"class.std::allocator.54", align 1 ; 5 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %i.g = alloca i64, align 8                      ; 4 uses
  %i.h = alloca i64, align 8                      ; 4 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %9 = alloca %"class.std::allocator.54", align 1 ; 5 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %11 = alloca %"class.duckdb::shared_ptr.398", align 8 ; 13 uses
  %12 = alloca %"class.duckdb::shared_ptr.398", align 8 ; 13 uses
  %i.i = icmp ult i64 %1, %2
  br i1 %i.i, label %.lr.ph117, label %._crit_edge

.lr.ph117:                                        ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 3 uses
  br label %bb.b

._crit_edge:                                      ; preds = %.loopexit, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph117, %.loopexit
  %.026116 = phi i64 [ %1, %.lr.ph117 ], [ %i.jc, %.loopexit ] ; 4 uses
  %i.m = icmp eq i64 %.026116, 0
  br i1 %i.m, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = add i64 %.026116, -1
  %i.o = call noundef nonnull align 8 dereferenceable(12) ptr @_ZN6duckdb6vectorINS_18ColumnDataConsumer14ChunkReferenceELb1ESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.j, i64 noundef %i.n) ; 2 uses
  %i.p = call noundef nonnull align 8 dereferenceable(12) ptr @_ZN6duckdb6vectorINS_18ColumnDataConsumer14ChunkReferenceELb1ESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.j, i64 noundef %.026116) ; 3 uses
  %i.q = load ptr, ptr %i.o, align 8, !tbaa !1141 ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !284  ; 5 uses
  %i.s = load ptr, ptr %i.p, align 8, !tbaa !1141
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !284
  %i.u = getelementptr inbounds nuw i8, ptr %i.q, i64 48
  %i.v = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.w = load i32, ptr %i.v, align 8, !tbaa !1143
  %i.x = zext i32 %i.w to i64
  %i.y = call noundef nonnull align 8 dereferenceable(82) ptr @_ZN6duckdb6vectorINS_13ChunkMetaDataELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.u, i64 noundef %i.x)
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 40
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !461, !nonnull !64, !noundef !64 ; 4 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !129 ; 2 uses
  %.not9.i.i.i = icmp eq ptr %i.ab, null
  br i1 %.not9.i.i.i, label %_ZNK6duckdb18ColumnDataConsumer14ChunkReference17GetMinimumBlockIDEv.exit, label %.lr.ph.preheader.i.i.i

.lr.ph.preheader.i.i.i:                           ; preds = %bb.c
  %.phi.trans.insert.i.i.i = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %.pre.i.i.i = load i32, ptr %.phi.trans.insert.i.i.i, align 8, !tbaa !3
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i, %.lr.ph.preheader.i.i.i
  %i.ac = phi i32 [ %i.ai, %.lr.ph.i.i.i ], [ %.pre.i.i.i, %.lr.ph.preheader.i.i.i ] ; 2 uses
  %i.ad = phi ptr [ %i.ah, %.lr.ph.i.i.i ], [ %i.ab, %.lr.ph.preheader.i.i.i ] ; 3 uses
  %.sroa.02.010.i.i.i = phi ptr [ %spec.select.i.i.i, %.lr.ph.i.i.i ], [ %i.aa, %.lr.ph.preheader.i.i.i ]
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !3  ; 2 uses
  %i.ag = icmp ult i32 %i.af, %i.ac
  %spec.select.i.i.i = select i1 %i.ag, ptr %i.ad, ptr %.sroa.02.010.i.i.i ; 2 uses
  %i.ah = load ptr, ptr %i.ad, align 8, !tbaa !129 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ah, null
  %i.ai = call i32 @llvm.umin.i32(i32 %i.af, i32 %i.ac)
  br i1 %.not.i.i.i, label %_ZNK6duckdb18ColumnDataConsumer14ChunkReference17GetMinimumBlockIDEv.exit, label %.lr.ph.i.i.i, !llvm.loop !1144

_ZNK6duckdb18ColumnDataConsumer14ChunkReference17GetMinimumBlockIDEv.exit: ; preds = %.lr.ph.i.i.i, %bb.c
  %.sroa.02.2.i.i.i = phi ptr [ %i.aa, %bb.c ], [ %spec.select.i.i.i, %.lr.ph.i.i.i ]
  %i.aj = getelementptr inbounds nuw i8, ptr %.sroa.02.2.i.i.i, i64 8
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !3  ; 4 uses
  %i.al = load ptr, ptr %i.p, align 8, !tbaa !1141
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 48
  %i.an = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.ao = load i32, ptr %i.an, align 8, !tbaa !1143
  %i.ap = zext i32 %i.ao to i64
  %i.aq = call noundef nonnull align 8 dereferenceable(82) ptr @_ZN6duckdb6vectorINS_13ChunkMetaDataELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.am, i64 noundef %i.ap)
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 40
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !461, !nonnull !64, !noundef !64 ; 4 uses
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !129 ; 2 uses
  %.not9.i.i.i28 = icmp eq ptr %i.at, null
  br i1 %.not9.i.i.i28, label %_ZNK6duckdb18ColumnDataConsumer14ChunkReference17GetMinimumBlockIDEv.exit37, label %.lr.ph.preheader.i.i.i29

.lr.ph.preheader.i.i.i29:                         ; preds = %_ZNK6duckdb18ColumnDataConsumer14ChunkReference17GetMinimumBlockIDEv.exit
  %.phi.trans.insert.i.i.i30 = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %.pre.i.i.i31 = load i32, ptr %.phi.trans.insert.i.i.i30, align 8, !tbaa !3
  br label %.lr.ph.i.i.i32

.lr.ph.i.i.i32:                                   ; preds = %.lr.ph.i.i.i32, %.lr.ph.preheader.i.i.i29
  %i.au = phi i32 [ %i.ba, %.lr.ph.i.i.i32 ], [ %.pre.i.i.i31, %.lr.ph.preheader.i.i.i29 ] ; 2 uses
  %i.av = phi ptr [ %i.az, %.lr.ph.i.i.i32 ], [ %i.at, %.lr.ph.preheader.i.i.i29 ] ; 3 uses
  %.sroa.02.010.i.i.i33 = phi ptr [ %spec.select.i.i.i34, %.lr.ph.i.i.i32 ], [ %i.as, %.lr.ph.preheader.i.i.i29 ]
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !3  ; 2 uses
  %i.ay = icmp ult i32 %i.ax, %i.au
  %spec.select.i.i.i34 = select i1 %i.ay, ptr %i.av, ptr %.sroa.02.010.i.i.i33 ; 2 uses
  %i.az = load ptr, ptr %i.av, align 8, !tbaa !129 ; 2 uses
  %.not.i.i.i35 = icmp eq ptr %i.az, null
  %i.ba = call i32 @llvm.umin.i32(i32 %i.ax, i32 %i.au)
  br i1 %.not.i.i.i35, label %_ZNK6duckdb18ColumnDataConsumer14ChunkReference17GetMinimumBlockIDEv.exit37, label %.lr.ph.i.i.i32, !llvm.loop !1144

_ZNK6duckdb18ColumnDataConsumer14ChunkReference17GetMinimumBlockIDEv.exit37: ; preds = %.lr.ph.i.i.i32, %_ZNK6duckdb18ColumnDataConsumer14ChunkReference17GetMinimumBlockIDEv.exit
  %.sroa.02.2.i.i.i36 = phi ptr [ %i.as, %_ZNK6duckdb18ColumnDataConsumer14ChunkReference17GetMinimumBlockIDEv.exit ], [ %spec.select.i.i.i34, %.lr.ph.i.i.i32 ]
  %i.bb = getelementptr inbounds nuw i8, ptr %.sroa.02.2.i.i.i36, i64 8
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !3  ; 2 uses
  %.not = icmp eq ptr %i.r, %i.t
  br i1 %.not, label %.preheader, label %.preheader109

.preheader109:                                    ; preds = %_ZNK6duckdb18ColumnDataConsumer14ChunkReference17GetMinimumBlockIDEv.exit37
  %i.bd = getelementptr inbounds nuw i8, ptr %i.r, i64 16 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.r, i64 24 ; 3 uses
  %i.bf = zext i32 %i.ak to i64                   ; 2 uses
  %i.bg = load ptr, ptr %i.be, align 8, !tbaa !49
  %i.bh = load ptr, ptr %i.bd, align 8, !tbaa !48 ; 2 uses
  %i.bi = ptrtoint ptr %i.bg to i64
  %i.bj = ptrtoint ptr %i.bh to i64               ; 2 uses
  %i.bk = sub i64 %i.bi, %i.bj
  %i.bl = sdiv exact i64 %i.bk, 40
  %i.bm = icmp ugt i64 %i.bl, %i.bf
  br i1 %i.bm, label %.lr.ph, label %.loopexit

.preheader:                                       ; preds = %_ZNK6duckdb18ColumnDataConsumer14ChunkReference17GetMinimumBlockIDEv.exit37
  %i.bn = icmp ult i32 %i.ak, %i.bc
  br i1 %i.bn, label %.lr.ph115, label %.loopexit

.lr.ph115:                                        ; preds = %.preheader
  %i.bo = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %i.bp = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  %i.bq = zext i32 %i.ak to i64
  %wide.trip.count = zext i32 %i.bc to i64
  br label %bb.ao

.lr.ph:                                           ; preds = %.preheader109, %_ZN6duckdb19ColumnDataAllocator25SetDestroyBufferUponUnpinEj.exit
  %i.br = phi i64 [ %i.fk, %_ZN6duckdb19ColumnDataAllocator25SetDestroyBufferUponUnpinEj.exit ], [ %i.bj, %.preheader109 ]
  %i.bs = phi ptr [ %i.fi, %_ZN6duckdb19ColumnDataAllocator25SetDestroyBufferUponUnpinEj.exit ], [ %i.bh, %.preheader109 ]
  %i.bt = phi i64 [ %i.fg, %_ZN6duckdb19ColumnDataAllocator25SetDestroyBufferUponUnpinEj.exit ], [ %i.bf, %.preheader109 ] ; 3 uses
  %.025113 = phi i32 [ %i.ff, %_ZN6duckdb19ColumnDataAllocator25SetDestroyBufferUponUnpinEj.exit ], [ %i.ak, %.preheader109 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #24
  %13 = load ptr, ptr %i.be, align 8, !tbaa !49
  %i.bu = ptrtoint ptr %13 to i64
  %i.bv = sub i64 %i.bu, %i.br
  %i.bw = sdiv exact i64 %i.bv, 40                ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  store i64 %i.bt, ptr %i.g, align 8, !tbaa !103
  store i64 %i.bw, ptr %i.h, align 8, !tbaa !103
  %.not.i.i.i45 = icmp ugt i64 %i.bw, %i.bt
  br i1 %.not.i.i.i45, label %_ZN6duckdb6vectorINS_13BlockMetaDataELb1ESaIS1_EEixEm.exit, label %.noexc.i79, !prof !104

.noexc.i79:                                       ; preds = %.lr.ph
  %i.bx = call ptr @__cxa_allocate_exception(i64 16) #24 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #24
  %i.by = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 3 uses
  store ptr %i.by, ptr %7, align 8, !tbaa !360
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #24
  store i64 55, ptr %i.c, align 8, !tbaa !103
  %i.bz = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(8) %i.c, i64 noundef 0)
          to label %.noexc80 unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i ; 3 uses

.noexc80:                                         ; preds = %.noexc.i79
  store ptr %i.bz, ptr %7, align 8, !tbaa !72
  %i.ca = load i64, ptr %i.c, align 8, !tbaa !103 ; 3 uses
  store i64 %i.ca, ptr %i.by, align 8, !tbaa !43
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(55) %i.bz, ptr noundef nonnull align 1 dereferenceable(55) @.str.22, i64 55, i1 false)
  %i.cb = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 %i.ca, ptr %i.cb, align 8, !tbaa !361
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bz, i64 %i.ca
  store i8 0, ptr %i.cc, align 1, !tbaa !43
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #24
  invoke void @_ZN6duckdb17InternalExceptionC2IJRmS2_EEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.bx, ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(8) %i.g, ptr noundef nonnull align 8 dereferenceable(8) %i.h)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %.noexc80
  invoke void @__cxa_throw(ptr nonnull %i.bx, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #26
          to label %bb.g unwind label %bb.e

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i: ; preds = %.noexc.i79
  %i.cd = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #24
  br label %bb.f

bb.e:                                             ; preds = %bb.d, %.noexc80
  %.0.i.i.i = phi i1 [ false, %bb.d ], [ true, %.noexc80 ] ; 2 uses
  %i.ce = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.cf = load ptr, ptr %7, align 8, !tbaa !72    ; 2 uses
  %i.cg = icmp eq ptr %i.cf, %i.by
  br i1 %i.cg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.cf) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #24
  br i1 %.0.i.i.i, label %bb.f, label %common.resume

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #24
  br i1 %.0.i.i.i, label %bb.f, label %common.resume

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i
  %.pn8.i.i.i = phi { ptr, i32 } [ %i.cd, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i ], [ %i.ce, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i ], [ %i.ce, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i ]
  call void @__cxa_free_exception(ptr %i.bx) #24
  br label %common.resume

common.resume:                                    ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i72, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i73, %bb.ar, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i, %bb.f, %.body53, %bb.bo, %.body, %bb.ac
  %common.resume.op = phi { ptr, i32 } [ %eh.lpad-body54, %.body53 ], [ %.pn9.i, %bb.ac ], [ %eh.lpad-body, %.body ], [ %i.ce, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i ], [ %.pn9.i62, %bb.bo ], [ %i.ce, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i ], [ %.pn8.i.i.i, %bb.f ], [ %i.gb, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i73 ], [ %.pn8.i.i.i69, %bb.ar ], [ %i.gb, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i72 ]
  resume { ptr, i32 } %common.resume.op

bb.g:                                             ; preds = %bb.d
  unreachable

_ZN6duckdb6vectorINS_13BlockMetaDataELb1ESaIS1_EEixEm.exit: ; preds = %.lr.ph
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  %i.ch = getelementptr inbounds nuw [40 x i8], ptr %i.bs, i64 %i.bt ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1183)
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 8
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !97, !noalias !1183 ; 4 uses
  %.not.i43 = icmp eq ptr %i.cj, null
  br i1 %.not.i43, label %bb.k, label %bb.h

bb.h:                                             ; preds = %_ZN6duckdb6vectorINS_13BlockMetaDataELb1ESaIS1_EEixEm.exit
  store ptr %i.cj, ptr %12, align 8, !tbaa !97, !alias.scope !1183
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ch, i64 16
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !54, !noalias !1183 ; 3 uses
  store ptr %i.cl, ptr %i.k, align 8, !tbaa !54, !alias.scope !1183
  %.not.i.i.i.i.i44 = icmp eq ptr %i.cl, null
  br i1 %.not.i.i.i.i.i44, label %_ZNK6duckdb10shared_ptrINS_11BlockHandleELb1EEptEv.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 8 ; 3 uses
  %i.cn = load i8, ptr @__libc_single_threaded, align 1, !tbaa !43, !noalias !1183
  %.not.i.i.i.i.i.i = icmp eq i8 %i.cn, 0
  br i1 %.not.i.i.i.i.i.i, label %_ZNK6duckdb13BlockMetaData9GetHandleEv.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.co = load i32, ptr %i.cm, align 4, !tbaa !3, !noalias !1183
  %i.cp = add nsw i32 %i.co, 1
  store i32 %i.cp, ptr %i.cm, align 4, !tbaa !3, !noalias !1183
  br label %_ZNK6duckdb10shared_ptrINS_11BlockHandleELb1EEptEv.exit

bb.k:                                             ; preds = %_ZN6duckdb6vectorINS_13BlockMetaDataELb1ESaIS1_EEixEm.exit
  %i.cq = getelementptr inbounds nuw i8, ptr %i.ch, i64 24
  call void @llvm.experimental.noalias.scope.decl(metadata !1186)
  %i.cr = getelementptr inbounds nuw i8, ptr %i.ch, i64 32
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !50, !noalias !1189 ; 9 uses
  %.not.i.i.i.i.i75 = icmp eq ptr %i.cs, null
  br i1 %.not.i.i.i.i.i75, label %_ZN6duckdb10shared_ptrINS_11BlockHandleELb1EEC2ESt10shared_ptrIS1_E.exit.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 8 ; 9 uses
  %i.cu = load atomic i32, ptr %i.ct monotonic, align 8, !noalias !1189
  br label %bb.m

bb.m:                                             ; preds = %bb.n, %bb.l
  %.06.i.i.i.i.i.i = phi i32 [ %i.cu, %bb.l ], [ %i.cy, %bb.n ] ; 3 uses
  %.not.not.not.i.not.i.i.i.i.i = icmp eq i32 %.06.i.i.i.i.i.i, 0
  br i1 %.not.not.not.i.not.i.i.i.i.i, label %_ZN6duckdb10shared_ptrINS_11BlockHandleELb1EEC2ESt10shared_ptrIS1_E.exit.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.cv = add nsw i32 %.06.i.i.i.i.i.i, 1
  %i.cw = cmpxchg weak ptr %i.ct, i32 %.06.i.i.i.i.i.i, i32 %i.cv acq_rel monotonic, align 8, !noalias !1189 ; 2 uses
  %i.cx = extractvalue { i32, i1 } %i.cw, 1
  %i.cy = extractvalue { i32, i1 } %i.cw, 0
  br i1 %i.cx, label %_ZNKSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE16_M_get_use_countEv.exit.i.i.i.i, label %bb.m, !llvm.loop !206

_ZNKSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE16_M_get_use_countEv.exit.i.i.i.i: ; preds = %bb.n
  %i.cz = load atomic i32, ptr %i.ct monotonic, align 8, !noalias !1189 ; 2 uses
  %.not.i.i.i.i76 = icmp eq i32 %i.cz, 0
  br i1 %.not.i.i.i.i76, label %bb.p, label %bb.o

bb.o:                                             ; preds = %_ZNKSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE16_M_get_use_countEv.exit.i.i.i.i
  %i.da = load ptr, ptr %i.cq, align 8, !tbaa !118, !noalias !1189
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %_ZNKSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE16_M_get_use_countEv.exit.i.i.i.i
  %i.db = phi ptr [ %i.da, %bb.o ], [ null, %_ZNKSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE16_M_get_use_countEv.exit.i.i.i.i ] ; 2 uses
  store ptr %i.db, ptr %12, align 8, !tbaa !97, !alias.scope !1186
  store ptr %i.cs, ptr %i.k, align 8, !tbaa !54, !alias.scope !1186
  %i.dc = load i8, ptr @__libc_single_threaded, align 1, !tbaa !43, !noalias !1186
  %.not.i.i.i.i.i.i77 = icmp eq i8 %i.dc, 0
  br i1 %.not.i.i.i.i.i.i77, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.dd = add nsw i32 %i.cz, 1
  store i32 %i.dd, ptr %i.ct, align 8, !tbaa !3, !noalias !1186
  br label %bb.s

bb.r:                                             ; preds = %bb.p
  %i.de = atomicrmw volatile add ptr %i.ct, i32 1 acq_rel, align 4, !noalias !1186 ; 0 uses
  %.pre.i.i = load ptr, ptr %12, align 8, !tbaa !97, !alias.scope !1186
  br label %bb.s

_ZN6duckdb10shared_ptrINS_11BlockHandleELb1EEC2ESt10shared_ptrIS1_E.exit.i: ; preds = %bb.k, %bb.m
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %12, i8 0, i64 16, i1 false), !alias.scope !1186
  br label %.loopexit112

bb.s:                                             ; preds = %bb.r, %bb.q
  %.ph.i = phi ptr [ %.pre.i.i, %bb.r ], [ %i.db, %bb.q ] ; 2 uses
  call void @_ZN6duckdb10shared_ptrINS_11BlockHandleELb1EE18__enable_weak_thisIS1_S1_TnNSt9enable_ifIXsr3std14is_convertibleIPT0_PKNS_23enable_shared_from_thisIT_EEEE5valueEiE4typeELi0EEEvSB_S6_(ptr noundef nonnull align 8 dereferenceable(16) %12, ptr noundef %.ph.i, ptr noundef %.ph.i) #24
  %i.df = load atomic i64, ptr %i.ct acquire, align 8 ; 2 uses
  %i.dg = icmp eq i64 %i.df, 4294967297
  %i.dh = trunc i64 %i.df to i32                  ; 2 uses
  br i1 %i.dg, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  store i32 0, ptr %i.ct, align 8, !tbaa !56
  %i.di = getelementptr inbounds nuw i8, ptr %i.cs, i64 12
  store i32 0, ptr %i.di, align 4, !tbaa !58
  %i.dj = load ptr, ptr %i.cs, align 8, !tbaa !51
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 16
  %i.dl = load ptr, ptr %i.dk, align 8
  call void %i.dl(ptr noundef nonnull align 8 dereferenceable(16) %i.cs) #24, !inline_history !1192
  %i.dm = load ptr, ptr %i.cs, align 8, !tbaa !51
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 24
  %i.do = load ptr, ptr %i.dn, align 8
  call void %i.do(ptr noundef nonnull align 8 dereferenceable(16) %i.cs) #24, !inline_history !1192
  br label %_ZNK6duckdb8weak_ptrINS_11BlockHandleELb1EE4lockEv.exitthread-pre-split

bb.u:                                             ; preds = %bb.s
  %i.dp = load i8, ptr @__libc_single_threaded, align 1, !tbaa !43, !noalias !1186
  %.not.i.i.i2.i = icmp eq i8 %i.dp, 0
  br i1 %.not.i.i.i2.i, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.dq = add nsw i32 %i.dh, -1
  store i32 %i.dq, ptr %i.ct, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.w:                                             ; preds = %bb.u
  %i.dr = atomicrmw volatile add ptr %i.ct, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.w, %bb.v
  %.0.i.i.i.i.i = phi i32 [ %i.dh, %bb.v ], [ %i.dr, %bb.w ]
  %i.ds = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.ds, label %bb.x, label %_ZNK6duckdb8weak_ptrINS_11BlockHandleELb1EE4lockEv.exitthread-pre-split, !prof !60

bb.x:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.cs) #24
  br label %_ZNK6duckdb8weak_ptrINS_11BlockHandleELb1EE4lockEv.exitthread-pre-split

_ZNK6duckdb8weak_ptrINS_11BlockHandleELb1EE4lockEv.exitthread-pre-split: ; preds = %bb.x, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.t
  %.pr = load ptr, ptr %12, align 8, !tbaa !97, !alias.scope !1183 ; 2 uses
  %i.dt = icmp eq ptr %.pr, null
  br i1 %i.dt, label %.loopexit112, label %_ZNK6duckdb10shared_ptrINS_11BlockHandleELb1EEptEv.exit

.loopexit112:                                     ; preds = %_ZNK6duckdb8weak_ptrINS_11BlockHandleELb1EE4lockEv.exitthread-pre-split, %_ZN6duckdb10shared_ptrINS_11BlockHandleELb1EEC2ESt10shared_ptrIS1_E.exit.i
  %i.du = call ptr @__cxa_allocate_exception(i64 16) #24 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #24, !noalias !1183
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #24, !noalias !1183
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull @.str.2, ptr noundef nonnull align 1 dereferenceable(1) %9)
          to label %bb.y unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i

bb.y:                                             ; preds = %.loopexit112
  invoke void @_ZN6duckdb19ConnectionExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.du, ptr noundef nonnull align 8 dereferenceable(32) %8)
          to label %bb.z unwind label %bb.aa

bb.z:                                             ; preds = %bb.y
  invoke void @__cxa_throw(ptr nonnull %i.du, ptr nonnull @_ZTIN6duckdb19ConnectionExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #26
          to label %bb.ad unwind label %bb.aa

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i: ; preds = %.loopexit112
  %i.dv = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #24, !noalias !1183
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #24, !noalias !1183
  br label %bb.ab

bb.aa:                                            ; preds = %bb.z, %bb.y
  %.0.i = phi i1 [ false, %bb.z ], [ true, %bb.y ] ; 2 uses
  %i.dw = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.dx = load ptr, ptr %8, align 8, !tbaa !72, !noalias !1183 ; 2 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.dz = icmp eq ptr %i.dx, %i.dy
  br i1 %i.dz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.aa
  call void @_ZdlPv(ptr noundef %i.dx) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #24, !noalias !1183
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #24, !noalias !1183
  br i1 %.0.i, label %bb.ab, label %bb.ac

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #24, !noalias !1183
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #24, !noalias !1183
  br i1 %.0.i, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i
  %.pn10.i = phi { ptr, i32 } [ %i.dv, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i ], [ %i.dw, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %i.dw, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ]
  call void @__cxa_free_exception(ptr %i.du) #24
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %.pn9.i = phi { ptr, i32 } [ %.pn10.i, %bb.ab ], [ %i.dw, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %i.dw, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ]
  call void @_ZN6duckdb10shared_ptrINS_11BlockHandleELb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %12) #24
  br label %common.resume

bb.ad:                                            ; preds = %bb.z
  unreachable

_ZNK6duckdb13BlockMetaData9GetHandleEv.exit:      ; preds = %bb.i
  %i.ea = atomicrmw volatile add ptr %i.cm, i32 1 acq_rel, align 4, !noalias !1183 ; 0 uses
  %.pre = load ptr, ptr %12, align 8, !tbaa !97   ; 2 uses
  %.not.i = icmp eq ptr %.pre, null
  br i1 %.not.i, label %.noexc.i, label %_ZNK6duckdb10shared_ptrINS_11BlockHandleELb1EEptEv.exit, !prof !1193

.noexc.i:                                         ; preds = %_ZNK6duckdb13BlockMetaData9GetHandleEv.exit
  %i.eb = call ptr @__cxa_allocate_exception(i64 16) #24 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #24
  %i.ec = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 3 uses
  store ptr %i.ec, ptr %10, align 8, !tbaa !360
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #24
  store i64 49, ptr %i.d, align 8, !tbaa !103
  %i.ed = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull align 8 dereferenceable(8) %i.d, i64 noundef 0)
          to label %.noexc unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i ; 3 uses

.noexc:                                           ; preds = %.noexc.i
  store ptr %i.ed, ptr %10, align 8, !tbaa !72
  %i.ee = load i64, ptr %i.d, align 8, !tbaa !103 ; 3 uses
  store i64 %i.ee, ptr %i.ec, align 8, !tbaa !43
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(49) %i.ed, ptr noundef nonnull align 1 dereferenceable(49) @.str.21, i64 49, i1 false)
  %i.ef = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i64 %i.ee, ptr %i.ef, align 8, !tbaa !361
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ed, i64 %i.ee
  store i8 0, ptr %i.eg, align 1, !tbaa !43
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #24
  invoke void @_ZN6duckdb17InternalExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.eb, ptr noundef nonnull align 8 dereferenceable(32) %10)
          to label %bb.ae unwind label %bb.af

bb.ae:                                            ; preds = %.noexc
  invoke void @__cxa_throw(ptr nonnull %i.eb, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #26
          to label %bb.ah unwind label %bb.af

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i: ; preds = %.noexc.i
  %i.eh = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #24
  br label %bb.ag

bb.af:                                            ; preds = %bb.ae, %.noexc
  %.0.i.i = phi i1 [ false, %bb.ae ], [ true, %.noexc ] ; 2 uses
  %i.ei = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.ej = load ptr, ptr %10, align 8, !tbaa !72   ; 2 uses
  %i.ek = icmp eq ptr %i.ej, %i.ec
  br i1 %i.ek, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.af
  call void @_ZdlPv(ptr noundef %i.ej) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #24
  br i1 %.0.i.i, label %bb.ag, label %.body

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i: ; preds = %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #24
  br i1 %.0.i.i, label %bb.ag, label %.body

bb.ag:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i
  %.pn9.i.i = phi { ptr, i32 } [ %i.eh, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i ], [ %i.ei, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i ], [ %i.ei, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ]
  call void @__cxa_free_exception(ptr %i.eb) #24
  br label %.body

bb.ah:                                            ; preds = %bb.ae
  unreachable

_ZNK6duckdb10shared_ptrINS_11BlockHandleELb1EEptEv.exit: ; preds = %_ZNK6duckdb8weak_ptrINS_11BlockHandleELb1EE4lockEv.exitthread-pre-split, %bb.j, %bb.h, %_ZNK6duckdb13BlockMetaData9GetHandleEv.exit
  %i.el = phi ptr [ %.pre, %_ZNK6duckdb13BlockMetaData9GetHandleEv.exit ], [ %.pr, %_ZNK6duckdb8weak_ptrINS_11BlockHandleELb1EE4lockEv.exitthread-pre-split ], [ %i.cj, %bb.j ], [ %i.cj, %bb.h ]
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 64
  %i.en = load ptr, ptr %i.em, align 8, !tbaa !82, !nonnull !64, !align !94
  %i.eo = getelementptr inbounds nuw i8, ptr %i.en, i64 112
  store atomic i8 2, ptr %i.eo seq_cst, align 8
  %i.ep = load ptr, ptr %i.k, align 8, !tbaa !54  ; 8 uses
  %.not.i.i.i.i = icmp eq ptr %i.ep, null
  br i1 %.not.i.i.i.i, label %_ZN6duckdb19ColumnDataAllocator25SetDestroyBufferUponUnpinEj.exit, label %bb.ai

bb.ai:                                            ; preds = %_ZNK6duckdb10shared_ptrINS_11BlockHandleELb1EEptEv.exit
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ep, i64 8 ; 4 uses
  %i.er = load atomic i64, ptr %i.eq acquire, align 8 ; 2 uses
  %i.es = icmp eq i64 %i.er, 4294967297
  %i.et = trunc i64 %i.er to i32                  ; 2 uses
  br i1 %i.es, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  store i32 0, ptr %i.eq, align 8, !tbaa !56
  %i.eu = getelementptr inbounds nuw i8, ptr %i.ep, i64 12
  store i32 0, ptr %i.eu, align 4, !tbaa !58
  %i.ev = load ptr, ptr %i.ep, align 8, !tbaa !51
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ev, i64 16
  %i.ex = load ptr, ptr %i.ew, align 8
  call void %i.ex(ptr noundef nonnull align 8 dereferenceable(16) %i.ep) #24, !inline_history !1194
  %i.ey = load ptr, ptr %i.ep, align 8, !tbaa !51
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 24
  %i.fa = load ptr, ptr %i.ez, align 8
  call void %i.fa(ptr noundef nonnull align 8 dereferenceable(16) %i.ep) #24, !inline_history !1194
  br label %_ZN6duckdb19ColumnDataAllocator25SetDestroyBufferUponUnpinEj.exit

bb.ak:                                            ; preds = %bb.ai
  %i.fb = load i8, ptr @__libc_single_threaded, align 1, !tbaa !43
  %.not.i.i.i.i.i = icmp eq i8 %i.fb, 0
  br i1 %.not.i.i.i.i.i, label %bb.am, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.fc = add nsw i32 %i.et, -1
  store i32 %i.fc, ptr %i.eq, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.am:                                            ; preds = %bb.ak
  %i.fd = atomicrmw volatile add ptr %i.eq, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.am, %bb.al
  %.0.i.i.i.i.i.i = phi i32 [ %i.et, %bb.al ], [ %i.fd, %bb.am ]
  %i.fe = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.fe, label %bb.an, label %_ZN6duckdb19ColumnDataAllocator25SetDestroyBufferUponUnpinEj.exit, !prof !60

bb.an:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ep) #24
  br label %_ZN6duckdb19ColumnDataAllocator25SetDestroyBufferUponUnpinEj.exit

.body:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, %bb.ag
  %eh.lpad-body = phi { ptr, i32 } [ %i.ei, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %i.ei, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i ], [ %.pn9.i.i, %bb.ag ]
  call void @_ZN6duckdb10shared_ptrINS_11BlockHandleELb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %12) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #24
  br label %common.resume

_ZN6duckdb19ColumnDataAllocator25SetDestroyBufferUponUnpinEj.exit: ; preds = %_ZNK6duckdb10shared_ptrINS_11BlockHandleELb1EEptEv.exit, %bb.aj, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.an
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #24
  %i.ff = add i32 %.025113, 1                     ; 2 uses
  %i.fg = zext i32 %i.ff to i64                   ; 2 uses
  %i.fh = load ptr, ptr %i.be, align 8, !tbaa !49
  %i.fi = load ptr, ptr %i.bd, align 8, !tbaa !48 ; 2 uses
  %i.fj = ptrtoint ptr %i.fh to i64
  %i.fk = ptrtoint ptr %i.fi to i64               ; 2 uses
  %i.fl = sub i64 %i.fj, %i.fk
  %i.fm = sdiv exact i64 %i.fl, 40
  %i.fn = icmp ugt i64 %i.fm, %i.fg
  br i1 %i.fn, label %.lr.ph, label %.loopexit, !llvm.loop !1195

bb.ao:                                            ; preds = %.lr.ph115, %_ZN6duckdb19ColumnDataAllocator25SetDestroyBufferUponUnpinEj.exit42
  %indvars.iv = phi i64 [ %i.bq, %.lr.ph115 ], [ %indvars.iv.next, %_ZN6duckdb19ColumnDataAllocator25SetDestroyBufferUponUnpinEj.exit42 ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #24
  %i.fo = load ptr, ptr %i.bp, align 8, !tbaa !49
  %i.fp = load ptr, ptr %i.bo, align 8, !tbaa !48 ; 2 uses
  %i.fq = ptrtoint ptr %i.fo to i64
  %i.fr = ptrtoint ptr %i.fp to i64
  %i.fs = sub i64 %i.fq, %i.fr
  %i.ft = sdiv exact i64 %i.fs, 40                ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store i64 %indvars.iv, ptr %i.e, align 8, !tbaa !103
  store i64 %i.ft, ptr %i.f, align 8, !tbaa !103
  %.not.i.i.i67 = icmp ugt i64 %i.ft, %indvars.iv
  br i1 %.not.i.i.i67, label %_ZN6duckdb6vectorINS_13BlockMetaDataELb1ESaIS1_EEixEm.exit74, label %.noexc.i100, !prof !104

.noexc.i100:                                      ; preds = %bb.ao
  %i.fu = call ptr @__cxa_allocate_exception(i64 16) #24 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  %i.fv = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  store ptr %i.fv, ptr %3, align 8, !tbaa !360
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  store i64 55, ptr %i.a, align 8, !tbaa !103
  %i.fw = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc101 unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i68 ; 3 uses

.noexc101:                                        ; preds = %.noexc.i100
  store ptr %i.fw, ptr %3, align 8, !tbaa !72
  %i.fx = load i64, ptr %i.a, align 8, !tbaa !103 ; 3 uses
  store i64 %i.fx, ptr %i.fv, align 8, !tbaa !43
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(55) %i.fw, ptr noundef nonnull align 1 dereferenceable(55) @.str.22, i64 55, i1 false)
  %i.fy = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %i.fx, ptr %i.fy, align 8, !tbaa !361
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fw, i64 %i.fx
  store i8 0, ptr %i.fz, align 1, !tbaa !43
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  invoke void @_ZN6duckdb17InternalExceptionC2IJRmS2_EEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.fu, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.e, ptr noundef nonnull align 8 dereferenceable(8) %i.f)
          to label %bb.ap unwind label %bb.aq

bb.ap:                                            ; preds = %.noexc101
  invoke void @__cxa_throw(ptr nonnull %i.fu, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #26
          to label %bb.as unwind label %bb.aq

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i68: ; preds = %.noexc.i100
  %i.ga = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  br label %bb.ar

bb.aq:                                            ; preds = %bb.ap, %.noexc101
  %.0.i.i.i71 = phi i1 [ false, %bb.ap ], [ true, %.noexc101 ] ; 2 uses
  %i.gb = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.gc = load ptr, ptr %3, align 8, !tbaa !72    ; 2 uses
  %i.gd = icmp eq ptr %i.gc, %i.fv
  br i1 %i.gd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i73, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i72

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i72: ; preds = %bb.aq
  call void @_ZdlPv(ptr noundef %i.gc) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  br i1 %.0.i.i.i71, label %bb.ar, label %common.resume

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i73: ; preds = %bb.aq
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  br i1 %.0.i.i.i71, label %bb.ar, label %common.resume

bb.ar:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i73, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i72, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i68
  %.pn8.i.i.i69 = phi { ptr, i32 } [ %i.ga, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i68 ], [ %i.gb, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i73 ], [ %i.gb, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i72 ]
  call void @__cxa_free_exception(ptr %i.fu) #24
  br label %common.resume

bb.as:                                            ; preds = %bb.ap
  unreachable

_ZN6duckdb6vectorINS_13BlockMetaDataELb1ESaIS1_EEixEm.exit74: ; preds = %bb.ao
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %i.ge = getelementptr inbounds nuw [40 x i8], ptr %i.fp, i64 %indvars.iv ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1196)
  %i.gf = getelementptr inbounds nuw i8, ptr %i.ge, i64 8
  %i.gg = load ptr, ptr %i.gf, align 8, !tbaa !97, !noalias !1196 ; 4 uses
  %.not.i56 = icmp eq ptr %i.gg, null
  br i1 %.not.i56, label %bb.aw, label %bb.at

bb.at:                                            ; preds = %_ZN6duckdb6vectorINS_13BlockMetaDataELb1ESaIS1_EEixEm.exit74
  store ptr %i.gg, ptr %11, align 8, !tbaa !97, !alias.scope !1196
  %i.gh = getelementptr inbounds nuw i8, ptr %i.ge, i64 16
  %i.gi = load ptr, ptr %i.gh, align 8, !tbaa !54, !noalias !1196 ; 3 uses
  store ptr %i.gi, ptr %i.l, align 8, !tbaa !54, !alias.scope !1196
  %.not.i.i.i.i.i57 = icmp eq ptr %i.gi, null
  br i1 %.not.i.i.i.i.i57, label %_ZNK6duckdb10shared_ptrINS_11BlockHandleELb1EEptEv.exit55, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gi, i64 8 ; 3 uses
  %i.gk = load i8, ptr @__libc_single_threaded, align 1, !tbaa !43, !noalias !1196
  %.not.i.i.i.i.i.i58 = icmp eq i8 %i.gk, 0
  br i1 %.not.i.i.i.i.i.i58, label %_ZNK6duckdb13BlockMetaData9GetHandleEv.exit66, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.gl = load i32, ptr %i.gj, align 4, !tbaa !3, !noalias !1196
  %i.gm = add nsw i32 %i.gl, 1
  store i32 %i.gm, ptr %i.gj, align 4, !tbaa !3, !noalias !1196
  br label %_ZNK6duckdb10shared_ptrINS_11BlockHandleELb1EEptEv.exit55

bb.aw:                                            ; preds = %_ZN6duckdb6vectorINS_13BlockMetaDataELb1ESaIS1_EEixEm.exit74
  %i.gn = getelementptr inbounds nuw i8, ptr %i.ge, i64 24
  call void @llvm.experimental.noalias.scope.decl(metadata !1199)
  %i.go = getelementptr inbounds nuw i8, ptr %i.ge, i64 32
  %i.gp = load ptr, ptr %i.go, align 8, !tbaa !50, !noalias !1202 ; 9 uses
  %.not.i.i.i.i.i86 = icmp eq ptr %i.gp, null
  br i1 %.not.i.i.i.i.i86, label %_ZN6duckdb10shared_ptrINS_11BlockHandleELb1EEC2ESt10shared_ptrIS1_E.exit.i97, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gp, i64 8 ; 9 uses
  %i.gr = load atomic i32, ptr %i.gq monotonic, align 8, !noalias !1202
  br label %bb.ay

bb.ay:                                            ; preds = %bb.az, %bb.ax
  %.06.i.i.i.i.i.i87 = phi i32 [ %i.gr, %bb.ax ], [ %i.gv, %bb.az ] ; 3 uses
  %.not.not.not.i.not.i.i.i.i.i88 = icmp eq i32 %.06.i.i.i.i.i.i87, 0
  br i1 %.not.not.not.i.not.i.i.i.i.i88, label %_ZN6duckdb10shared_ptrINS_11BlockHandleELb1EEC2ESt10shared_ptrIS1_E.exit.i97, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.gs = add nsw i32 %.06.i.i.i.i.i.i87, 1
  %i.gt = cmpxchg weak ptr %i.gq, i32 %.06.i.i.i.i.i.i87, i32 %i.gs acq_rel monotonic, align 8, !noalias !1202 ; 2 uses
  %i.gu = extractvalue { i32, i1 } %i.gt, 1
  %i.gv = extractvalue { i32, i1 } %i.gt, 0
  br i1 %i.gu, label %_ZNKSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE16_M_get_use_countEv.exit.i.i.i.i89, label %bb.ay, !llvm.loop !206

_ZNKSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE16_M_get_use_countEv.exit.i.i.i.i89: ; preds = %bb.az
  %i.gw = load atomic i32, ptr %i.gq monotonic, align 8, !noalias !1202 ; 2 uses
  %.not.i.i.i.i90 = icmp eq i32 %i.gw, 0
  br i1 %.not.i.i.i.i90, label %bb.bb, label %bb.ba

bb.ba:                                            ; preds = %_ZNKSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE16_M_get_use_countEv.exit.i.i.i.i89
  %i.gx = load ptr, ptr %i.gn, align 8, !tbaa !118, !noalias !1202
  br label %bb.bb

bb.bb:                                            ; preds = %bb.ba, %_ZNKSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE16_M_get_use_countEv.exit.i.i.i.i89
  %i.gy = phi ptr [ %i.gx, %bb.ba ], [ null, %_ZNKSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE16_M_get_use_countEv.exit.i.i.i.i89 ] ; 2 uses
  store ptr %i.gy, ptr %11, align 8, !tbaa !97, !alias.scope !1199
  store ptr %i.gp, ptr %i.l, align 8, !tbaa !54, !alias.scope !1199
  %i.gz = load i8, ptr @__libc_single_threaded, align 1, !tbaa !43, !noalias !1199
  %.not.i.i.i.i.i.i91 = icmp eq i8 %i.gz, 0
  br i1 %.not.i.i.i.i.i.i91, label %bb.bd, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.ha = add nsw i32 %i.gw, 1
  store i32 %i.ha, ptr %i.gq, align 8, !tbaa !3, !noalias !1199
  br label %bb.be

bb.bd:                                            ; preds = %bb.bb
  %i.hb = atomicrmw volatile add ptr %i.gq, i32 1 acq_rel, align 4, !noalias !1199 ; 0 uses
  %.pre.i.i96 = load ptr, ptr %11, align 8, !tbaa !97, !alias.scope !1199
  br label %bb.be

_ZN6duckdb10shared_ptrINS_11BlockHandleELb1EEC2ESt10shared_ptrIS1_E.exit.i97: ; preds = %bb.aw, %bb.ay
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %11, i8 0, i64 16, i1 false), !alias.scope !1199
  br label %.loopexit108

bb.be:                                            ; preds = %bb.bd, %bb.bc
  %.ph.i92 = phi ptr [ %.pre.i.i96, %bb.bd ], [ %i.gy, %bb.bc ] ; 2 uses
  call void @_ZN6duckdb10shared_ptrINS_11BlockHandleELb1EE18__enable_weak_thisIS1_S1_TnNSt9enable_ifIXsr3std14is_convertibleIPT0_PKNS_23enable_shared_from_thisIT_EEEE5valueEiE4typeELi0EEEvSB_S6_(ptr noundef nonnull align 8 dereferenceable(16) %11, ptr noundef %.ph.i92, ptr noundef %.ph.i92) #24
  %i.hc = load atomic i64, ptr %i.gq acquire, align 8 ; 2 uses
  %i.hd = icmp eq i64 %i.hc, 4294967297
  %i.he = trunc i64 %i.hc to i32                  ; 2 uses
  br i1 %i.hd, label %bb.bf, label %bb.bg

bb.bf:                                            ; preds = %bb.be
  store i32 0, ptr %i.gq, align 8, !tbaa !56
  %i.hf = getelementptr inbounds nuw i8, ptr %i.gp, i64 12
  store i32 0, ptr %i.hf, align 4, !tbaa !58
  %i.hg = load ptr, ptr %i.gp, align 8, !tbaa !51
  %i.hh = getelementptr inbounds nuw i8, ptr %i.hg, i64 16
  %i.hi = load ptr, ptr %i.hh, align 8
  call void %i.hi(ptr noundef nonnull align 8 dereferenceable(16) %i.gp) #24, !inline_history !1192
  %i.hj = load ptr, ptr %i.gp, align 8, !tbaa !51
  %i.hk = getelementptr inbounds nuw i8, ptr %i.hj, i64 24
  %i.hl = load ptr, ptr %i.hk, align 8
  call void %i.hl(ptr noundef nonnull align 8 dereferenceable(16) %i.gp) #24, !inline_history !1192
  br label %_ZNK6duckdb8weak_ptrINS_11BlockHandleELb1EE4lockEv.exit98thread-pre-split

bb.bg:                                            ; preds = %bb.be
  %i.hm = load i8, ptr @__libc_single_threaded, align 1, !tbaa !43, !noalias !1199
  %.not.i.i.i2.i93 = icmp eq i8 %i.hm, 0
  br i1 %.not.i.i.i2.i93, label %bb.bi, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.hn = add nsw i32 %i.he, -1
  store i32 %i.hn, ptr %i.gq, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i94

end_hunk_1
