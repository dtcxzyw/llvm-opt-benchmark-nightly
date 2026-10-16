Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/PDBFileBuilder?download=true
inline.NumInlined: 1927
inline.NumDeleted: 1068
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZN4llvm3pdb9HashTableINS0_19SrcHeaderBlockEntryEE4growINS0_21StringTableHashTraitsEEEvRT_:bb.a
  br label %_ZNSt7__cxx114listIN4llvm22SparseBitVectorElementILj128EEESaIS3_EE5clearEv.exit.i.i.i.i10

_ZNSt7__cxx114listIN4llvm22SparseBitVectorElementILj128EEESaIS3_EE5clearEv.exit.i.i.i.i10: ; preds = %bb.g, %bb.f
  %i.cw = phi ptr [ %2, %bb.f ], [ %i.cn, %bb.g ]
  %i.cx = getelementptr inbounds nuw i8, ptr %2, i64 24
  store ptr %i.cw, ptr %i.cx, align 8
  store ptr %i.cm, ptr %i.cp, align 8, !tbaa !28
  store ptr %i.cm, ptr %i.cm, align 8, !tbaa !29
  store i64 0, ptr %i.cs, align 8, !tbaa !32
  %i.cy = load ptr, ptr %i.ab, align 8, !tbaa !29 ; 2 uses
  %i.cz = icmp eq ptr %i.cy, %i.ab
  br i1 %i.cz, label %_ZNSt7__cxx114listIN4llvm22SparseBitVectorElementILj128EEESaIS3_EE5clearEv.exit.i.i.i9.i17, label %_ZN4llvm15SparseBitVectorILj128EEaSEOS1_.exit.i12.thread

_ZN4llvm15SparseBitVectorILj128EEaSEOS1_.exit.i12.thread: ; preds = %_ZNSt7__cxx114listIN4llvm22SparseBitVectorElementILj128EEESaIS3_EE5clearEv.exit.i.i.i.i10
  store ptr %i.cy, ptr %i.cm, align 8, !tbaa !29
  %i.da = load ptr, ptr %i.ac, align 16, !tbaa !28 ; 2 uses
  store ptr %i.da, ptr %i.cp, align 8, !tbaa !28
  store ptr %i.cm, ptr %i.da, align 8, !tbaa !29
  %i.db = load ptr, ptr %i.cm, align 8, !tbaa !29 ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 8
  store ptr %i.cm, ptr %i.dc, align 8, !tbaa !28
  %i.dd = load i64, ptr %i.ad, align 8, !tbaa !32
  store i64 %i.dd, ptr %i.cs, align 8, !tbaa !32
  br label %_ZNSt7__cxx114listIN4llvm22SparseBitVectorElementILj128EEESaIS3_EE5clearEv.exit.i.i.i9.i17

_ZNSt7__cxx114listIN4llvm22SparseBitVectorElementILj128EEESaIS3_EE5clearEv.exit.i.i.i9.i17: ; preds = %_ZNSt7__cxx114listIN4llvm22SparseBitVectorElementILj128EEESaIS3_EE5clearEv.exit.i.i.i.i10, %_ZN4llvm15SparseBitVectorILj128EEaSEOS1_.exit.i12.thread
  %.sink60 = phi ptr [ %i.db, %_ZN4llvm15SparseBitVectorILj128EEaSEOS1_.exit.i12.thread ], [ %i.cm, %_ZNSt7__cxx114listIN4llvm22SparseBitVectorElementILj128EEESaIS3_EE5clearEv.exit.i.i.i.i10 ]
  %i.de = getelementptr inbounds nuw i8, ptr %0, i64 80
  store ptr %.sink60, ptr %i.de, align 8, !tbaa !226
  store ptr %i.ab, ptr %i.ac, align 16, !tbaa !28
  store ptr %i.ab, ptr %i.ab, align 8, !tbaa !29
  store i64 0, ptr %i.ad, align 8, !tbaa !32
  %i.df = load ptr, ptr %2, align 8, !tbaa !29    ; 2 uses
  %i.dg = icmp eq ptr %i.df, %2
  br i1 %i.dg, label %_ZSt4swapIN4llvm15SparseBitVectorILj128EEEENSt9enable_ifIXsr6__and_ISt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS6_ESt18is_move_assignableIS6_EEE5valueEvE4typeERS6_SF_.exit20.thread, label %_ZSt4swapIN4llvm15SparseBitVectorILj128EEEENSt9enable_ifIXsr6__and_ISt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS6_ESt18is_move_assignableIS6_EEE5valueEvE4typeERS6_SF_.exit20

_ZSt4swapIN4llvm15SparseBitVectorILj128EEEENSt9enable_ifIXsr6__and_ISt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS6_ESt18is_move_assignableIS6_EEE5valueEvE4typeERS6_SF_.exit20.thread: ; preds = %_ZNSt7__cxx114listIN4llvm22SparseBitVectorElementILj128EEESaIS3_EE5clearEv.exit.i.i.i9.i17
  store ptr %i.ab, ptr %i.ae, align 16, !tbaa !226
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #18
  br label %_ZN4llvm15SparseBitVectorILj128EED2Ev.exit.i

_ZSt4swapIN4llvm15SparseBitVectorILj128EEEENSt9enable_ifIXsr6__and_ISt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS6_ESt18is_move_assignableIS6_EEE5valueEvE4typeERS6_SF_.exit20: ; preds = %_ZNSt7__cxx114listIN4llvm22SparseBitVectorElementILj128EEESaIS3_EE5clearEv.exit.i.i.i9.i17
  store ptr %i.df, ptr %i.ab, align 8, !tbaa !29
  %i.dh = load ptr, ptr %i.co, align 8, !tbaa !28 ; 2 uses
  store ptr %i.dh, ptr %i.ac, align 16, !tbaa !28
  store ptr %i.ab, ptr %i.dh, align 8, !tbaa !29
  %i.di = load ptr, ptr %i.ab, align 8, !tbaa !29 ; 4 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 8
  store ptr %i.ab, ptr %i.dj, align 8, !tbaa !28
  %i.dk = load i64, ptr %i.cr, align 8, !tbaa !32
  store i64 %i.dk, ptr %i.ad, align 8, !tbaa !32
  store ptr %i.di, ptr %i.ae, align 16, !tbaa !226
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #18
  %.not8.i.i.i.i = icmp eq ptr %i.di, %i.ab
  br i1 %.not8.i.i.i.i, label %_ZN4llvm15SparseBitVectorILj128EED2Ev.exit.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZSt4swapIN4llvm15SparseBitVectorILj128EEEENSt9enable_ifIXsr6__and_ISt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS6_ESt18is_move_assignableIS6_EEE5valueEvE4typeERS6_SF_.exit20, %.lr.ph.i.i.i.i
  %.09.i.i.i.i = phi ptr [ %i.dl, %.lr.ph.i.i.i.i ], [ %i.di, %_ZSt4swapIN4llvm15SparseBitVectorILj128EEEENSt9enable_ifIXsr6__and_ISt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS6_ESt18is_move_assignableIS6_EEE5valueEvE4typeERS6_SF_.exit20 ] ; 2 uses
  %i.dl = load ptr, ptr %.09.i.i.i.i, align 8, !tbaa !29 ; 2 uses
  call void @_ZdlPvm(ptr noundef nonnull %.09.i.i.i.i, i64 noundef 40) #19
  %.not.i.i.i.i21 = icmp eq ptr %i.dl, %i.ab
  br i1 %.not.i.i.i.i21, label %_ZN4llvm15SparseBitVectorILj128EED2Ev.exit.i, label %.lr.ph.i.i.i.i, !llvm.loop !2

_ZN4llvm15SparseBitVectorILj128EED2Ev.exit.i:     ; preds = %.lr.ph.i.i.i.i, %_ZSt4swapIN4llvm15SparseBitVectorILj128EEEENSt9enable_ifIXsr6__and_ISt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS6_ESt18is_move_assignableIS6_EEE5valueEvE4typeERS6_SF_.exit20.thread, %_ZSt4swapIN4llvm15SparseBitVectorILj128EEEENSt9enable_ifIXsr6__and_ISt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS6_ESt18is_move_assignableIS6_EEE5valueEvE4typeERS6_SF_.exit20
  %i.dm = load ptr, ptr %i.x, align 8, !tbaa !29  ; 2 uses
  %.not8.i.i.i1.i = icmp eq ptr %i.dm, %i.x
  br i1 %.not8.i.i.i1.i, label %_ZN4llvm15SparseBitVectorILj128EED2Ev.exit5.i, label %.lr.ph.i.i.i2.i

.lr.ph.i.i.i2.i:                                  ; preds = %_ZN4llvm15SparseBitVectorILj128EED2Ev.exit.i, %.lr.ph.i.i.i2.i
  %.09.i.i.i3.i = phi ptr [ %i.dn, %.lr.ph.i.i.i2.i ], [ %i.dm, %_ZN4llvm15SparseBitVectorILj128EED2Ev.exit.i ] ; 2 uses
  %i.dn = load ptr, ptr %.09.i.i.i3.i, align 8, !tbaa !29 ; 2 uses
  call void @_ZdlPvm(ptr noundef nonnull %.09.i.i.i3.i, i64 noundef 40) #19
  %.not.i.i.i4.i = icmp eq ptr %i.dn, %i.x
  br i1 %.not.i.i.i4.i, label %_ZN4llvm15SparseBitVectorILj128EED2Ev.exit5.i, label %.lr.ph.i.i.i2.i, !llvm.loop !2

_ZN4llvm15SparseBitVectorILj128EED2Ev.exit5.i:    ; preds = %.lr.ph.i.i.i2.i, %_ZN4llvm15SparseBitVectorILj128EED2Ev.exit.i
  %i.do = load ptr, ptr %4, align 16, !tbaa !35   ; 3 uses
  %.not.i.i.i6.i = icmp eq ptr %i.do, null
  br i1 %.not.i.i.i6.i, label %_ZN4llvm3pdb9HashTableINS0_19SrcHeaderBlockEntryEED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %_ZN4llvm15SparseBitVectorILj128EED2Ev.exit5.i
  %i.dp = load ptr, ptr %i.ah, align 16, !tbaa !37
  %i.dq = ptrtoint ptr %i.dp to i64
  %i.dr = ptrtoint ptr %i.do to i64
  %i.ds = sub i64 %i.dq, %i.dr
  call void @_ZdlPvm(ptr noundef nonnull %i.do, i64 noundef %i.ds) #19
  br label %_ZN4llvm3pdb9HashTableINS0_19SrcHeaderBlockEntryEED2Ev.exit

_ZN4llvm3pdb9HashTableINS0_19SrcHeaderBlockEntryEED2Ev.exit: ; preds = %_ZN4llvm15SparseBitVectorILj128EED2Ev.exit5.i, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  br label %bb.j

bb.i:                                             ; preds = %.lr.ph, %bb.i
  %i.dt = load i32, ptr %i.an, align 8, !tbaa !248
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #18
  %i.du = zext i32 %i.dt to i64                   ; 2 uses
  %i.dv = load ptr, ptr %0, align 8, !tbaa !35
  %i.dw = getelementptr inbounds nuw [44 x i8], ptr %i.dv, i64 %i.du
  %i.dx = load i32, ptr %i.dw, align 4, !tbaa !202
  %i.dy = call { ptr, i64 } @_ZNK4llvm3pdb21StringTableHashTraits21storageKeyToLookupKeyEj(ptr noundef nonnull align 8 dereferenceable(8) %1, i32 noundef %i.dx) #18 ; 2 uses
  %i.dz = extractvalue { ptr, i64 } %i.dy, 0
  store ptr %i.dz, ptr %6, align 8
  %i.ea = extractvalue { ptr, i64 } %i.dy, 1
  store i64 %i.ea, ptr %i.bh, align 8
  %i.eb = load ptr, ptr %0, align 8, !tbaa !35
  %i.ec = getelementptr inbounds nuw [44 x i8], ptr %i.eb, i64 %i.du ; 2 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %7, ptr noundef nonnull align 4 dereferenceable(40) %i.ed, i64 40, i1 false), !tbaa.struct !241
  %i.ee = load i32, ptr %i.ec, align 4, !tbaa !48
  %.sroa.0.0.insert.ext = zext i32 %i.ee to i64
  %.sroa.0.0.insert.insert = or disjoint i64 %.sroa.0.0.insert.ext, 4294967296
  %i.ef = call noundef zeroext i1 @_ZN4llvm3pdb9HashTableINS0_19SrcHeaderBlockEntryEE15set_as_internalINS_9StringRefENS0_21StringTableHashTraitsEEEbRKT_S2_RT0_St8optionalIjE(ptr noundef nonnull align 8 dereferenceable(88) %4, ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull byval(%"struct.llvm::pdb::SrcHeaderBlockEntry") align 8 %7, ptr noundef nonnull align 8 dereferenceable(8) %1, i64 %.sroa.0.0.insert.insert) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #18
  %i.eg = load i32, ptr %i.an, align 8, !tbaa !248
  %i.eh = add i32 %i.eg, 1
  store i32 %i.eh, ptr %i.an, align 8, !tbaa !248
  %i.ei = load i64, ptr %i.ao, align 8, !tbaa !250
  %i.ej = lshr i64 %i.ei, 1
  store i64 %i.ej, ptr %i.ao, align 8, !tbaa !250
  call void @_ZN4llvm15SparseBitVectorILj128EE23SparseBitVectorIterator20AdvanceToNextNonZeroEv(ptr noundef nonnull align 8 dereferenceable(40) %5)
  %i.ek = load i8, ptr %5, align 8, !tbaa !247, !range !215, !noundef !150
  %i.el = trunc nuw i8 %i.ek to i1
  br i1 %i.el, label %_ZNK4llvm15SparseBitVectorILj128EE23SparseBitVectorIteratorneERKS2_.exit.loopexit, label %bb.i

bb.j:                                             ; preds = %_ZNK4llvm3pdb9HashTableINS0_19SrcHeaderBlockEntryEE4sizeEv.exit, %_ZN4llvm3pdb9HashTableINS0_19SrcHeaderBlockEntryEED2Ev.exit
  ret void
}

declare noundef i32 @_ZNK4llvm3pdb21StringTableHashTraits13hashLookupKeyENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(8), ptr, i64) local_unnamed_addr #1

declare { ptr, i64 } @_ZNK4llvm3pdb21StringTableHashTraits21storageKeyToLookupKeyEj(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @_ZNSt8__detail15_List_node_base7_M_hookEPS0_(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind
declare void @_ZNSt8__detail15_List_node_base9_M_unhookEv(ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.cttz.i64(i64, i1 immarg) #14

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm15SparseBitVectorILj128EE23SparseBitVectorIterator20AdvanceToNextNonZeroEv(ptr noundef nonnull align 8 dereferenceable(40) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load i8, ptr %0, align 8, !tbaa !247, !range !215, !noundef !150
  %i.b = trunc nuw i8 %i.a to i1
  br i1 %i.b, label %bb.l, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  %.promoted = load i64, ptr %i.c, align 8, !tbaa !250 ; 4 uses
  %.not16 = icmp ne i64 %.promoted, 0
  %i.d = and i64 %.promoted, 1
  %.not717 = icmp eq i64 %i.d, 0
  %or.cond18 = and i1 %.not16, %.not717
  br i1 %or.cond18, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %.preheader
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %.promoted21 = load i32, ptr %i.e, align 8, !tbaa !248
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %i.f = phi i32 [ %.promoted21, %.lr.ph ], [ %i.i, %bb.b ]
  %i.g = phi i64 [ %.promoted, %.lr.ph ], [ %i.h, %bb.b ] ; 3 uses
  %i.h = lshr exact i64 %i.g, 1                   ; 3 uses
  %i.i = add i32 %i.f, 1                          ; 2 uses
  %.not = icmp ne i64 %i.g, 0
  %i.j = and i64 %i.g, 2
  %.not7 = icmp eq i64 %i.j, 0
  %or.cond = and i1 %.not, %.not7
  br i1 %or.cond, label %bb.b, label %..critedge_crit_edge, !llvm.loop !588

..critedge_crit_edge:                             ; preds = %bb.b
  store i64 %i.h, ptr %i.c, align 8, !tbaa !250
  store i32 %i.i, ptr %i.e, align 8, !tbaa !248
  br label %.critedge

.critedge:                                        ; preds = %..critedge_crit_edge, %.preheader
  %.lcssa14 = phi i64 [ %i.h, %..critedge_crit_edge ], [ %.promoted, %.preheader ]
  %.not8 = icmp eq i64 %.lcssa14, 0
  br i1 %.not8, label %bb.c, label %bb.l

bb.c:                                             ; preds = %.critedge
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !590  ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.o = load i32, ptr %i.n, align 8, !tbaa !248  ; 3 uses
  %i.p = and i32 %i.o, 127                        ; 2 uses
  %i.q = lshr i32 %i.p, 6                         ; 2 uses
  %i.r = and i32 %i.o, 63
  %i.s = getelementptr inbounds nuw i8, ptr %i.l, i64 24 ; 2 uses
  %i.t = zext nneg i32 %i.q to i64
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %i.t
  %i.v = load i64, ptr %i.u, align 8, !tbaa !176
  %i.w = zext nneg i32 %i.r to i64
  %i.x = shl nsw i64 -1, %i.w
  %i.y = and i64 %i.x, %i.v                       ; 2 uses
  %.not.i = icmp eq i64 %i.y, 0
  br i1 %.not.i, label %1, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.z = and i32 %i.o, 64
  %i.aa = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.y, i1 true)
  %i.ab = trunc nuw nsw i64 %i.aa to i32
  %i.ac = or disjoint i32 %i.z, %i.ab
  br label %bb.g

1:                                                ; preds = %bb.c
  %2 = icmp eq i32 %i.q, 0
  br i1 %2, label %bb.e, label %_ZNK4llvm22SparseBitVectorElementILj128EE9find_nextEj.exit

bb.e:                                             ; preds = %1
  %i.ad = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !176 ; 2 uses
  %i.af = icmp eq i64 %i.ae, 0
  br i1 %i.af, label %_ZNK4llvm22SparseBitVectorElementILj128EE9find_nextEj.exit, label %bb.f, !llvm.loop !589

bb.f:                                             ; preds = %bb.e
  %i.ag = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.ae, i1 true)
  %i.ah = trunc nuw nsw i64 %i.ag to i32
  %i.ai = or disjoint i32 %i.ah, 64
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.d
  %.2.i.ph = phi i32 [ %i.ai, %bb.f ], [ %i.ac, %bb.d ]
  %i.aj = icmp eq i32 %i.p, 0
  br i1 %i.aj, label %_ZNK4llvm22SparseBitVectorElementILj128EE9find_nextEj.exit, label %bb.k

_ZNK4llvm22SparseBitVectorElementILj128EE9find_nextEj.exit: ; preds = %1, %bb.e, %bb.g
  %i.ak = load ptr, ptr %i.l, align 8, !tbaa !29  ; 4 uses
  store ptr %i.ak, ptr %i.k, align 8, !tbaa !590
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 2 uses
  store i32 0, ptr %i.al, align 4, !tbaa !249
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !246
  %i.ao = icmp eq ptr %i.ak, %i.an
  br i1 %i.ao, label %bb.h, label %bb.i

bb.h:                                             ; preds = %_ZNK4llvm22SparseBitVectorElementILj128EE9find_nextEj.exit
  store i8 1, ptr %0, align 8, !tbaa !247
  br label %bb.l

bb.i:                                             ; preds = %_ZNK4llvm22SparseBitVectorElementILj128EE9find_nextEj.exit
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  %i.aq = load i32, ptr %i.ap, align 8, !tbaa !204
  %i.ar = shl i32 %i.aq, 7
  %i.as = getelementptr inbounds nuw i8, ptr %i.ak, i64 24
  br label %bb.j

bb.j:                                             ; preds = %bb.j, %bb.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.j ], [ 0, %bb.i ] ; 4 uses
  %i.at = icmp samesign ult i64 %indvars.iv.i, 2
  tail call void @llvm.assume(i1 %i.at)
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %i.as, i64 %indvars.iv.i
  %i.av = load i64, ptr %i.au, align 8, !tbaa !176 ; 3 uses
  %.not.i9 = icmp eq i64 %i.av, 0
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  br i1 %.not.i9, label %bb.j, label %_ZNK4llvm22SparseBitVectorElementILj128EE10find_firstEv.exit, !llvm.loop !9

_ZNK4llvm22SparseBitVectorElementILj128EE10find_firstEv.exit: ; preds = %bb.j
  %i.aw = trunc nuw nsw i64 %indvars.iv.i to i32  ; 2 uses
  %i.ax = shl nuw nsw i32 %i.aw, 6
  %i.ay = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.av, i1 true)
  %i.az = trunc nuw nsw i64 %i.ay to i32
  %i.ba = or disjoint i32 %i.ax, %i.az
  %.frozen = freeze i32 %i.ba                     ; 4 uses
  %i.bb = or disjoint i32 %.frozen, %i.ar
  store i32 %i.bb, ptr %i.n, align 8, !tbaa !248
  store i32 %i.aw, ptr %i.al, align 4, !tbaa !249
  %.urem = add i32 %.frozen, -64
  %.cmp = icmp ult i32 %.frozen, 64
  %i.bc = select i1 %.cmp, i32 %.frozen, i32 %.urem
  %i.bd = zext nneg i32 %i.bc to i64
  %i.be = lshr i64 %i.av, %i.bd
  store i64 %i.be, ptr %i.c, align 8, !tbaa !250
  br label %bb.l

bb.k:                                             ; preds = %bb.g
  %.2.i.ph.frozen = freeze i32 %.2.i.ph           ; 5 uses
  %i.bf = lshr i32 %.2.i.ph.frozen, 6             ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i32 %i.bf, ptr %i.bg, align 4, !tbaa !249
  %i.bh = zext nneg i32 %i.bf to i64
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %i.bh
  %i.bj = load i64, ptr %i.bi, align 8, !tbaa !176
  %.urem12 = add i32 %.2.i.ph.frozen, -64
  %.cmp13 = icmp ult i32 %.2.i.ph.frozen, 64
  %i.bk = select i1 %.cmp13, i32 %.2.i.ph.frozen, i32 %.urem12
  %i.bl = zext nneg i32 %i.bk to i64
  %i.bm = lshr i64 %i.bj, %i.bl
  store i64 %i.bm, ptr %i.c, align 8, !tbaa !250
  %i.bn = load i32, ptr %i.m, align 8, !tbaa !204
  %i.bo = shl i32 %i.bn, 7
  %i.bp = add nuw i32 %i.bo, %.2.i.ph.frozen
  store i32 %i.bp, ptr %i.n, align 8, !tbaa !248
  br label %bb.l

bb.l:                                             ; preds = %bb.h, %bb.k, %_ZNK4llvm22SparseBitVectorElementILj128EE10find_firstEv.exit, %bb.a, %.critedge
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #14

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZN4llvm3pdb14RawErrCategoryEv() local_unnamed_addr #1

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm11StringErrorD2Ev(ptr noundef nonnull align 8 dead_on_return(57) dereferenceable(57) %0) unnamed_addr #5 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 64) (i8, ptr @_ZTVN4llvm11StringErrorE, i64 16), ptr %0, align 8, !tbaa !61
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !52   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.a
  %i.e = load i64, ptr %i.c, align 8, !tbaa !53
  %i.f = add i64 %i.e, 1
  tail call void @_ZdlPvm(ptr noundef %i.b, i64 noundef %i.f) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm3pdb8RawErrorD0Ev(ptr noundef nonnull align 8 dereferenceable(57) %0) unnamed_addr #5 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 64) (i8, ptr @_ZTVN4llvm11StringErrorE, i64 16), ptr %0, align 8, !tbaa !61
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !52   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZN4llvm11StringErrorD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.a
  %i.e = load i64, ptr %i.c, align 8, !tbaa !53
  %i.f = add i64 %i.e, 1
  tail call void @_ZdlPvm(ptr noundef %i.b, i64 noundef %i.f) #19
  br label %_ZN4llvm11StringErrorD2Ev.exit

_ZN4llvm11StringErrorD2Ev.exit:                   ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 64) #19
  ret void
}

declare void @_ZNK4llvm11StringError3logERNS_11raw_ostreamE(ptr noundef nonnull align 8 dereferenceable(57), ptr noundef nonnull align 8 dereferenceable(48)) unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNK4llvm13ErrorInfoBase7messageB5cxx11Ev(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #0 comdat align 2 {
bb.a:
  %2 = alloca %"class.llvm::raw_string_ostream", align 8 ; 11 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.a, ptr %0, align 8, !tbaa !175
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.b, align 8, !tbaa !177
  store i8 0, ptr %i.a, align 8, !tbaa !53
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #18
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i32 0, ptr %i.c, align 8, !tbaa !594
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 40
  store i8 0, ptr %i.d, align 8, !tbaa !595
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 44
  store i32 1, ptr %i.e, align 4, !tbaa !596
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.f, i8 0, i64 24, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 104) (i8, ptr @_ZTVN4llvm18raw_string_ostreamE, i64 16), ptr %2, align 8, !tbaa !61
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 48
  store ptr %0, ptr %i.g, align 8, !tbaa !598
  call void @_ZN4llvm11raw_ostream16SetBufferAndModeEPcmNS0_10BufferKindE(ptr noundef nonnull align 8 dereferenceable(56) %2, ptr noundef null, i64 noundef 0, i32 noundef 0) #18
  %i.h = load ptr, ptr %1, align 8, !tbaa !61
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  call void %i.j(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(48) %2) #18
  call void @_ZN4llvm11raw_ostreamD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %2) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #18
  ret void
}

declare { i32, ptr } @_ZNK4llvm11StringError18convertToErrorCodeEv(ptr noundef nonnull align 8 dereferenceable(57)) unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZNK4llvm9ErrorInfoINS_3pdb8RawErrorENS_11StringErrorEE14dynamicClassIDEv(ptr noundef nonnull align 8 dereferenceable(57) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  ret ptr @_ZN4llvm3pdb8RawError2IDE
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK4llvm9ErrorInfoINS_3pdb8RawErrorENS_11StringErrorEE3isAEPKv(ptr noundef nonnull align 8 dereferenceable(57) %0, ptr noundef %1) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = icmp eq ptr %1, @_ZN4llvm3pdb8RawError2IDE
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = icmp eq ptr %1, @_ZN4llvm11StringError2IDE
  %i.c = icmp eq ptr %1, @_ZN4llvm13ErrorInfoBase2IDE
  %spec.select.i = or i1 %i.b, %i.c
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.d = phi i1 [ true, %bb.a ], [ %spec.select.i, %bb.b ]
  ret i1 %i.d
}

declare void @_ZN4llvm13ErrorInfoBase6anchorEv(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #1

declare void @_ZN4llvm11StringErrorC2ESt10error_codeRKNS_5TwineE(ptr noundef nonnull align 8 dereferenceable(57), i32, ptr, ptr noundef nonnull align 8 dereferenceable(34)) unnamed_addr #1

; Function Attrs: nounwind
declare void @_ZN4llvm11raw_ostreamD2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48)) unnamed_addr #6

declare void @_ZN4llvm11raw_ostream16SetBufferAndModeEPcmNS0_10BufferKindE(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #1

declare void @_ZN4llvm3pdb20writeSparseBitVectorERNS_18BinaryStreamWriterERNS_15SparseBitVectorILj128EEE(ptr dead_on_unwind writable sret(%"class.llvm::Error") align 8, ptr noundef nonnull align 8 dereferenceable(64), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #15

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x i64> @llvm.ctpop.v2i64(<2 x i64>) #11

attributes #0 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
end_hunk_0
