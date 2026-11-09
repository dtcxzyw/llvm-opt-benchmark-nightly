Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/SimpleLoopUnswitch?download=true
inline.NumInlined: 9189
inline.NumDeleted: 4425
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 14
begin_hunk_0_@_ZN4llvm15SmallVectorImplIPNS_4LoopEE6insertIPKS2_vEEPS2_S7_T_S8_:bb.a
  %i.cc = icmp eq i64 %index.next, %n.vec
  br i1 %i.cc, label %middle.block, label %vector.body, !llvm.loop !584

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.am, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader78

.lr.ph.preheader78:                               ; preds = %vector.memcheck, %.lr.ph.preheader, %middle.block
  %.058.ph = phi ptr [ %i.ak, %vector.memcheck ], [ %i.ak, %.lr.ph.preheader ], [ %i.bw, %middle.block ] ; 2 uses
  %.04057.ph = phi i64 [ %i.am, %vector.memcheck ], [ %i.am, %.lr.ph.preheader ], [ %i.bx, %middle.block ] ; 4 uses
  %.04256.ph = phi ptr [ %2, %vector.memcheck ], [ %2, %.lr.ph.preheader ], [ %i.by, %middle.block ] ; 2 uses
  %i.cd = add nsw i64 %.04057.ph, -1
  %xtraiter = and i64 %.04057.ph, 7               ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader78, %.lr.ph.prol
  %.058.prol = phi ptr [ %i.cf, %.lr.ph.prol ], [ %.058.ph, %.lr.ph.preheader78 ] ; 2 uses
  %.04057.prol = phi i64 [ %i.ch, %.lr.ph.prol ], [ %.04057.ph, %.lr.ph.preheader78 ]
  %.04256.prol = phi ptr [ %i.cg, %.lr.ph.prol ], [ %.04256.ph, %.lr.ph.preheader78 ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.prol ], [ 0, %.lr.ph.preheader78 ]
  %i.ce = load ptr, ptr %.04256.prol, align 8, !tbaa !70
  store ptr %i.ce, ptr %.058.prol, align 8, !tbaa !70
  %i.cf = getelementptr inbounds nuw i8, ptr %.058.prol, i64 8 ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %.04256.prol, i64 8 ; 3 uses
  %i.ch = add i64 %.04057.prol, -1                ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !llvm.loop !585

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader78
  %.lcssa.unr = phi ptr [ poison, %.lr.ph.preheader78 ], [ %i.cg, %.lr.ph.prol ]
  %.058.unr = phi ptr [ %.058.ph, %.lr.ph.preheader78 ], [ %i.cf, %.lr.ph.prol ]
  %.04057.unr = phi i64 [ %.04057.ph, %.lr.ph.preheader78 ], [ %i.ch, %.lr.ph.prol ]
  %.04256.unr = phi ptr [ %.04256.ph, %.lr.ph.preheader78 ], [ %i.cg, %.lr.ph.prol ]
  %i.ci = icmp ult i64 %i.cd, 7
  br i1 %i.ci, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %middle.block, %bb.r
  %.042.lcssa = phi ptr [ %2, %bb.r ], [ %i.by, %middle.block ], [ %.lcssa.unr, %.lr.ph.prol.loopexit ], [ %i.di, %.lr.ph ] ; 3 uses
  %.not.i = icmp eq ptr %.042.lcssa, %3
  br i1 %.not.i, label %_ZSt4copyIPKPN4llvm4LoopEPS2_ET0_T_S7_S6_.exit, label %bb.s

bb.s:                                             ; preds = %._crit_edge
  %i.cj = ptrtoint ptr %.042.lcssa to i64
  %i.ck = sub i64 %i.j, %i.cj
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.al, ptr align 8 %.042.lcssa, i64 %i.ck, i1 false)
  br label %_ZSt4copyIPKPN4llvm4LoopEPS2_ET0_T_S7_S6_.exit

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %.058 = phi ptr [ %i.dh, %.lr.ph ], [ %.058.unr, %.lr.ph.prol.loopexit ] ; 9 uses
  %.04057 = phi i64 [ %i.dj, %.lr.ph ], [ %.04057.unr, %.lr.ph.prol.loopexit ]
  %.04256 = phi ptr [ %i.di, %.lr.ph ], [ %.04256.unr, %.lr.ph.prol.loopexit ] ; 9 uses
  %i.cl = load ptr, ptr %.04256, align 8, !tbaa !70
  store ptr %i.cl, ptr %.058, align 8, !tbaa !70
  %i.cm = getelementptr inbounds nuw i8, ptr %.058, i64 8
  %i.cn = getelementptr inbounds nuw i8, ptr %.04256, i64 8
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !70
  store ptr %i.co, ptr %i.cm, align 8, !tbaa !70
  %i.cp = getelementptr inbounds nuw i8, ptr %.058, i64 16
  %i.cq = getelementptr inbounds nuw i8, ptr %.04256, i64 16
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !70
  store ptr %i.cr, ptr %i.cp, align 8, !tbaa !70
  %i.cs = getelementptr inbounds nuw i8, ptr %.058, i64 24
  %i.ct = getelementptr inbounds nuw i8, ptr %.04256, i64 24
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !70
  store ptr %i.cu, ptr %i.cs, align 8, !tbaa !70
  %i.cv = getelementptr inbounds nuw i8, ptr %.058, i64 32
  %i.cw = getelementptr inbounds nuw i8, ptr %.04256, i64 32
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !70
  store ptr %i.cx, ptr %i.cv, align 8, !tbaa !70
  %i.cy = getelementptr inbounds nuw i8, ptr %.058, i64 40
  %i.cz = getelementptr inbounds nuw i8, ptr %.04256, i64 40
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !70
  store ptr %i.da, ptr %i.cy, align 8, !tbaa !70
  %i.db = getelementptr inbounds nuw i8, ptr %.058, i64 48
  %i.dc = getelementptr inbounds nuw i8, ptr %.04256, i64 48
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !70
  store ptr %i.dd, ptr %i.db, align 8, !tbaa !70
  %i.de = getelementptr inbounds nuw i8, ptr %.058, i64 56
  %i.df = getelementptr inbounds nuw i8, ptr %.04256, i64 56
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !70
  store ptr %i.dg, ptr %i.de, align 8, !tbaa !70
  %i.dh = getelementptr inbounds nuw i8, ptr %.058, i64 64
  %i.di = getelementptr inbounds nuw i8, ptr %.04256, i64 64 ; 2 uses
  %i.dj = add i64 %.04057, -8                     ; 2 uses
  %.not45.7 = icmp eq i64 %i.dj, 0
  br i1 %.not45.7, label %._crit_edge, label %.lr.ph, !llvm.loop !586

_ZSt4copyIPKPN4llvm4LoopEPS2_ET0_T_S7_S6_.exit:   ; preds = %bb.s, %._crit_edge, %bb.q, %bb.p, %bb.o, %_ZN4llvm15SmallVectorImplIPNS_4LoopEE6appendIPKS2_vEEvT_S7_.exit
  %.1 = phi ptr [ %i.z, %_ZN4llvm15SmallVectorImplIPNS_4LoopEE6appendIPKS2_vEEvT_S7_.exit ], [ %i.ak, %bb.q ], [ %i.ak, %bb.o ], [ %i.ak, %bb.p ], [ %i.ak, %._crit_edge ], [ %i.ak, %bb.s ]
  ret ptr %.1
}

declare void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #0

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_4LoopElLj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_lEEEES3_lS5_S8_E24lookupOrInsertIntoBucketIS3_JlEEESt4pairIPS8_bEOT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = load i32, ptr %0, align 8, !noalias !591 ; 2 uses
  %i.c = and i32 %i.b, 1                          ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.c, 0               ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.e = load ptr, ptr %i.d, align 8, !noalias !591 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !noalias !591 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.i = load i32, ptr %i.h, align 8, !noalias !591
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %.sink2.i.i.i = select i1 %.not.i.i.i, ptr %i.e, ptr %i.d ; 2 uses
  %.sink1.i.i.i = select i1 %.not.i.i.i, ptr %i.g, ptr %i.j ; 2 uses
  %.sink.i.i.i = select i1 %.not.i.i.i, i32 %i.i, i32 4 ; 4 uses
  %i.k = icmp eq i32 %.sink.i.i.i, 0
  br i1 %i.k, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = add i32 %.sink.i.i.i, -1                 ; 2 uses
  %i.m = load ptr, ptr %1, align 8, !tbaa !70     ; 2 uses
  %i.n = ptrtoint ptr %i.m to i64
  %i.o = mul i64 %i.n, -4658895280553007687       ; 2 uses
  %i.p = lshr i64 %i.o, 31
  %i.q = xor i64 %i.p, %i.o
  %i.r = trunc i64 %i.q to i32
  %i.s = and i32 %i.l, %i.r                       ; 3 uses
  %i.t = zext i32 %i.s to i64                     ; 2 uses
  %i.u = getelementptr inbounds nuw [16 x i8], ptr %.sink2.i.i.i, i64 %i.t ; 2 uses
  %i.v = lshr i64 %i.t, 5
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %.sink1.i.i.i, i64 %i.v
  %i.x = load i32, ptr %i.w, align 4, !tbaa !94
  %i.y = and i32 %i.s, 31
  %i.z = lshr i32 %i.x, %i.y
  %i.aa = trunc i32 %i.z to i1
  br i1 %i.aa, label %.lr.ph.i, label %.loopexit, !prof !150

.lr.ph.i:                                         ; preds = %bb.b, %bb.c
  %i.ab = phi ptr [ %i.ah, %bb.c ], [ %i.u, %bb.b ] ; 2 uses
  %.024.i = phi i32 [ %i.af, %bb.c ], [ %i.s, %bb.b ]
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !70
  %i.ad = icmp eq ptr %i.m, %i.ac
  br i1 %i.ad, label %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_4LoopElLj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_lEEEES3_lS5_S8_E15LookupBucketForIS3_EEbRKT_RPS8_.exit, label %bb.c, !prof !81

bb.c:                                             ; preds = %.lr.ph.i
  %i.ae = add nuw i32 %.024.i, 1
  %i.af = and i32 %i.ae, %i.l                     ; 3 uses
  %i.ag = zext i32 %i.af to i64                   ; 2 uses
  %i.ah = getelementptr inbounds nuw [16 x i8], ptr %.sink2.i.i.i, i64 %i.ag ; 2 uses
  %i.ai = lshr i64 %i.ag, 5
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %.sink1.i.i.i, i64 %i.ai
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !94
  %i.al = and i32 %i.af, 31
  %i.am = lshr i32 %i.ak, %i.al
  %i.an = trunc i32 %i.am to i1
  br i1 %i.an, label %.lr.ph.i, label %.loopexit, !prof !151, !llvm.loop !7

.loopexit:                                        ; preds = %bb.c, %bb.a, %bb.b
  %.lcssa28.sink.i.ph = phi ptr [ %i.u, %bb.b ], [ null, %bb.a ], [ %i.ah, %bb.c ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %.lcssa28.sink.i.ph, ptr %i.a, align 8, !tbaa !239
  %i.ao = shl i32 %i.b, 1
  %i.ap = and i32 %i.ao, -4
  %i.aq = add i32 %i.ap, 4
  %i.ar = mul i32 %.sink.i.i.i, 3
  %.not.i = icmp ult i32 %i.aq, %i.ar
  br i1 %.not.i, label %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_4LoopElLj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_lEEEES3_lS5_S8_E22findBucketForInsertionIS3_EEPS8_RKT_SC_.exit, label %bb.d, !prof !81

bb.d:                                             ; preds = %.loopexit
  %i.as = shl i32 %.sink.i.i.i, 1
  tail call void @_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_4LoopElLj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_lEEEES3_lS5_S8_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %i.as)
  %i.at = call noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_4LoopElLj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_lEEEES3_lS5_S8_E15LookupBucketForIS3_EEbRKT_RPS8_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 0 uses
  %.pre.i = load i32, ptr %0, align 8
  %.pre5.i = load ptr, ptr %i.a, align 8, !tbaa !239
  %.pre6.i = and i32 %.pre.i, 1
  %.pre = load ptr, ptr %i.f, align 8
  %.pre17 = load ptr, ptr %i.d, align 8
  br label %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_4LoopElLj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_lEEEES3_lS5_S8_E22findBucketForInsertionIS3_EEPS8_RKT_SC_.exit

_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_4LoopElLj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_lEEEES3_lS5_S8_E22findBucketForInsertionIS3_EEPS8_RKT_SC_.exit: ; preds = %.loopexit, %bb.d
  %i.au = phi ptr [ %.pre17, %bb.d ], [ %i.e, %.loopexit ]
  %i.av = phi ptr [ %.pre, %bb.d ], [ %i.g, %.loopexit ]
  %.pre-phi.i = phi i32 [ %.pre6.i, %bb.d ], [ %i.c, %.loopexit ]
  %i.aw = phi ptr [ %.pre5.i, %bb.d ], [ %.lcssa28.sink.i.ph, %.loopexit ] ; 4 uses
  %.not.i.i.i.i = icmp eq i32 %.pre-phi.i, 0      ; 2 uses
  %i.ax = select i1 %.not.i.i.i.i, ptr %i.av, ptr %i.j
  %i.ay = select i1 %.not.i.i.i.i, ptr %i.au, ptr %i.d
  %i.az = ptrtoint ptr %i.aw to i64
  %i.ba = ptrtoint ptr %i.ay to i64
  %i.bb = sub i64 %i.az, %i.ba
  %i.bc = ashr exact i64 %i.bb, 4                 ; 2 uses
  %i.bd = trunc i64 %i.bc to i32
  %i.be = and i32 %i.bd, 31
  %i.bf = shl nuw i32 1, %i.be
  %i.bg = lshr i64 %i.bc, 5
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %i.ax, i64 %i.bg ; 2 uses
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !94
  %i.bj = or i32 %i.bf, %i.bi
  store i32 %i.bj, ptr %i.bh, align 4, !tbaa !94
  %i.bk = load i32, ptr %0, align 8               ; 2 uses
  %3 = and i32 %i.bk, -2
  %i.bl = add i32 %3, 2
  %4 = and i32 %i.bk, 1
  %5 = or disjoint i32 %i.bl, %4
  store i32 %5, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.bm = load ptr, ptr %1, align 8, !tbaa !70
  store ptr %i.bm, ptr %i.aw, align 8, !tbaa !70
  %i.bn = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  %i.bo = load i64, ptr %2, align 8, !tbaa !74
  store i64 %i.bo, ptr %i.bn, align 8, !tbaa !74
  br label %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_4LoopElLj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_lEEEES3_lS5_S8_E15LookupBucketForIS3_EEbRKT_RPS8_.exit

_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_4LoopElLj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_lEEEES3_lS5_S8_E15LookupBucketForIS3_EEbRKT_RPS8_.exit: ; preds = %.lr.ph.i, %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_4LoopElLj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_lEEEES3_lS5_S8_E22findBucketForInsertionIS3_EEPS8_RKT_SC_.exit
  %.sroa.0.0 = phi ptr [ %i.aw, %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_4LoopElLj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_lEEEES3_lS5_S8_E22findBucketForInsertionIS3_EEPS8_RKT_SC_.exit ], [ %i.ab, %.lr.ph.i ]
  %.sroa.3.0 = phi i8 [ 1, %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_4LoopElLj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_lEEEES3_lS5_S8_E22findBucketForInsertionIS3_EEPS8_RKT_SC_.exit ], [ 0, %.lr.ph.i ]
  %.fca.0.insert = insertvalue { ptr, i8 } poison, ptr %.sroa.0.0, 0
  %.fca.1.insert = insertvalue { ptr, i8 } %.fca.0.insert, i8 %.sroa.3.0, 1
  ret { ptr, i8 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_4LoopElLj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_lEEEES3_lS5_S8_E15LookupBucketForIS3_EEbRKT_RPS8_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = load i32, ptr %0, align 8, !noalias !596
  %i.b = and i32 %i.a, 1
  %.not.i.i = icmp eq i32 %i.b, 0                 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !noalias !596
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !noalias !596
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.h = load i32, ptr %i.g, align 8, !noalias !596
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 72
  %.sink2.i.i = select i1 %.not.i.i, ptr %i.d, ptr %i.c ; 2 uses
  %.sink1.i.i = select i1 %.not.i.i, ptr %i.f, ptr %i.i ; 2 uses
  %.sink.i.i = select i1 %.not.i.i, i32 %i.h, i32 4 ; 2 uses
  %i.j = icmp eq i32 %.sink.i.i, 0
  br i1 %i.j, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = add i32 %.sink.i.i, -1                   ; 2 uses
  %i.l = load ptr, ptr %1, align 8, !tbaa !70     ; 2 uses
  %i.m = ptrtoint ptr %i.l to i64
  %i.n = mul i64 %i.m, -4658895280553007687       ; 2 uses
  %i.o = lshr i64 %i.n, 31
  %i.p = xor i64 %i.o, %i.n
  %i.q = trunc i64 %i.p to i32
  %i.r = and i32 %i.k, %i.q                       ; 3 uses
  %i.s = zext i32 %i.r to i64                     ; 2 uses
  %i.t = getelementptr inbounds nuw [16 x i8], ptr %.sink2.i.i, i64 %i.s ; 2 uses
  %i.u = lshr i64 %i.s, 5
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %.sink1.i.i, i64 %i.u
  %i.w = load i32, ptr %i.v, align 4, !tbaa !94
  %i.x = and i32 %i.r, 31
  %i.y = lshr i32 %i.w, %i.x
  %i.z = trunc i32 %i.y to i1
  br i1 %i.z, label %.lr.ph, label %.thread, !prof !150

.lr.ph:                                           ; preds = %bb.b, %bb.c
  %i.aa = phi ptr [ %i.ag, %bb.c ], [ %i.t, %bb.b ] ; 2 uses
  %.024 = phi i32 [ %i.ae, %bb.c ], [ %i.r, %bb.b ]
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !70
  %i.ac = icmp eq ptr %i.l, %i.ab                 ; 3 uses
  br i1 %i.ac, label %.thread, label %bb.c, !prof !81

bb.c:                                             ; preds = %.lr.ph
  %i.ad = add nuw i32 %.024, 1
  %i.ae = and i32 %i.ad, %i.k                     ; 3 uses
  %i.af = zext i32 %i.ae to i64                   ; 2 uses
  %i.ag = getelementptr inbounds nuw [16 x i8], ptr %.sink2.i.i, i64 %i.af ; 2 uses
  %i.ah = lshr i64 %i.af, 5
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %.sink1.i.i, i64 %i.ah
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !94
  %i.ak = and i32 %i.ae, 31
  %i.al = lshr i32 %i.aj, %i.ak
  %i.am = trunc i32 %i.al to i1
  br i1 %i.am, label %.lr.ph, label %.thread, !prof !151, !llvm.loop !7

.thread:                                          ; preds = %.lr.ph, %bb.c, %bb.b, %bb.a
  %.lcssa28.sink = phi ptr [ %i.t, %bb.b ], [ null, %bb.a ], [ %i.ag, %bb.c ], [ %i.aa, %.lr.ph ]
  %.2 = phi i1 [ false, %bb.b ], [ false, %bb.a ], [ %i.ac, %bb.c ], [ %i.ac, %.lr.ph ]
  store ptr %.lcssa28.sink, ptr %2, align 8, !tbaa !239
  ret i1 %.2
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_4LoopElLj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_lEEEES3_lS5_S8_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %1) local_unnamed_addr #6 comdat align 2 {
bb.a:
  %2 = alloca %"class.llvm::SmallDenseMap", align 8 ; 16 uses
  %i.a = icmp ult i32 %1, 5                       ; 2 uses
  br i1 %i.a, label %_ZN4llvm13SmallDenseMapIPNS_4LoopElLj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_lEEE17roundUpNumBucketsEj.exit.thread, label %_ZN4llvm13SmallDenseMapIPNS_4LoopElLj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_lEEE17roundUpNumBucketsEj.exit

_ZN4llvm13SmallDenseMapIPNS_4LoopElLj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_lEEE17roundUpNumBucketsEj.exit.thread: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 72
  br label %_ZN4llvm13SmallDenseMapIPNS_4LoopElLj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_lEEEC2EjNS_12DenseMapBaseIS8_S2_lS4_S7_E16ExactBucketCountE.exit

_ZN4llvm13SmallDenseMapIPNS_4LoopElLj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_lEEE17roundUpNumBucketsEj.exit: ; preds = %bb.a
  %i.c = add i32 %1, -1
  %i.d = zext i32 %i.c to i64                     ; 2 uses
  %i.e = lshr i64 %i.d, 1
  %i.f = or i64 %i.e, %i.d                        ; 2 uses
  %i.g = lshr i64 %i.f, 2
  %i.h = or i64 %i.g, %i.f                        ; 2 uses
  %i.i = lshr i64 %i.h, 4
  %i.j = or i64 %i.i, %i.h                        ; 2 uses
  %i.k = lshr i64 %i.j, 8
  %i.l = or i64 %i.k, %i.j                        ; 2 uses
  %i.m = lshr i64 %i.l, 16
  %i.n = or i64 %i.m, %i.l
  %i.o = trunc nuw i64 %i.n to i32
  %i.p = add i32 %i.o, 1
  %.sroa.speculated.i = tail call i32 @llvm.umax.i32(i32 %i.p, i32 64) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  %i.q = zext i32 %.sroa.speculated.i to i64      ; 2 uses
  %i.r = shl nuw nsw i64 %i.q, 4                  ; 2 uses
  %i.s = add nuw nsw i64 %i.q, 31
  %i.t = lshr i64 %i.s, 3
  %i.u = and i64 %i.t, 1073741820                 ; 2 uses
  %i.v = add nuw nsw i64 %i.u, %i.r
  %i.w = tail call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef %i.v, i64 noundef 8) #24 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %i.w, ptr %i.x, align 8, !tbaa !202
  %i.y = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.r ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 16
  store ptr %i.y, ptr %i.z, align 8, !tbaa !202
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 24
  store i32 %.sroa.speculated.i, ptr %i.aa, align 8, !tbaa !202
  br label %_ZN4llvm13SmallDenseMapIPNS_4LoopElLj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_lEEEC2EjNS_12DenseMapBaseIS8_S2_lS4_S7_E16ExactBucketCountE.exit

_ZN4llvm13SmallDenseMapIPNS_4LoopElLj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_lEEEC2EjNS_12DenseMapBaseIS8_S2_lS4_S7_E16ExactBucketCountE.exit: ; preds = %_ZN4llvm13SmallDenseMapIPNS_4LoopElLj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_lEEE17roundUpNumBucketsEj.exit.thread, %_ZN4llvm13SmallDenseMapIPNS_4LoopElLj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_lEEE17roundUpNumBucketsEj.exit
  %.0.i4 = phi i32 [ 4, %_ZN4llvm13SmallDenseMapIPNS_4LoopElLj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_lEEE17roundUpNumBucketsEj.exit.thread ], [ %.sroa.speculated.i, %_ZN4llvm13SmallDenseMapIPNS_4LoopElLj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_lEEE17roundUpNumBucketsEj.exit ] ; 3 uses
  %.sink.i = phi i32 [ 1, %_ZN4llvm13SmallDenseMapIPNS_4LoopElLj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_lEEE17roundUpNumBucketsEj.exit.thread ], [ 0, %_ZN4llvm13SmallDenseMapIPNS_4LoopElLj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_lEEE17roundUpNumBucketsEj.exit ]
  %i.ab = phi i64 [ 4, %_ZN4llvm13SmallDenseMapIPNS_4LoopElLj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_lEEE17roundUpNumBucketsEj.exit.thread ], [ %i.u, %_ZN4llvm13SmallDenseMapIPNS_4LoopElLj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_lEEE17roundUpNumBucketsEj.exit ]
  %i.ac = phi ptr [ %i.b, %_ZN4llvm13SmallDenseMapIPNS_4LoopElLj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_lEEE17roundUpNumBucketsEj.exit.thread ], [ %i.y, %_ZN4llvm13SmallDenseMapIPNS_4LoopElLj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_lEEE17roundUpNumBucketsEj.exit ]
  store i32 %.sink.i, ptr %2, align 8
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.ac, i8 0, i64 %i.ab, i1 false)
  call void @_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_4LoopElLj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_lEEEES3_lS5_S8_E8moveFromERS9_(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(80) %0)
  %i.ad = load i32, ptr %2, align 8               ; 3 uses
  %i.ae = and i32 %i.ad, 1
  %.not.i = icmp eq i32 %i.ae, 0
  br i1 %.not.i, label %_ZN4llvm13SmallDenseMapIPNS_4LoopElLj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_lEEE13maybeMoveFastEOS8_.exit.thread, label %_ZN4llvm13SmallDenseMapIPNS_4LoopElLj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_lEEE13maybeMoveFastEOS8_.exit

_ZN4llvm13SmallDenseMapIPNS_4LoopElLj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_lEEE13maybeMoveFastEOS8_.exit.thread: ; preds = %_ZN4llvm13SmallDenseMapIPNS_4LoopElLj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_lEEEC2EjNS_12DenseMapBaseIS8_S2_lS4_S7_E16ExactBucketCountE.exit
  store i32 %i.ad, ptr %0, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ag, ptr noundef nonnull align 8 dereferenceable(24) %i.af, i64 24, i1 false), !tbaa.struct !597
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 24
  store i32 0, ptr %i.ah, align 8, !tbaa !202
  br label %bb.b

_ZN4llvm13SmallDenseMapIPNS_4LoopElLj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_lEEE13maybeMoveFastEOS8_.exit: ; preds = %_ZN4llvm13SmallDenseMapIPNS_4LoopElLj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_lEEEC2EjNS_12DenseMapBaseIS8_S2_lS4_S7_E16ExactBucketCountE.exit
  br i1 %i.a, label %.thread.i, label %_ZN4llvm13SmallDenseMapIPNS_4LoopElLj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_lEEE15allocateBucketsEj.exit.i

.thread.i:                                        ; preds = %_ZN4llvm13SmallDenseMapIPNS_4LoopElLj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_lEEE13maybeMoveFastEOS8_.exit
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 72
  br label %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_4LoopElLj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_lEEEES3_lS5_S8_E24initWithExactBucketCountEj.exit

_ZN4llvm13SmallDenseMapIPNS_4LoopElLj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_lEEE15allocateBucketsEj.exit.i: ; preds = %_ZN4llvm13SmallDenseMapIPNS_4LoopElLj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_lEEE13maybeMoveFastEOS8_.exit
  %i.aj = load i32, ptr %0, align 8
  %i.ak = and i32 %i.aj, -2
  store i32 %i.ak, ptr %0, align 8
  %i.al = zext i32 %.0.i4 to i64                  ; 2 uses
  %i.am = shl nuw nsw i64 %i.al, 4                ; 2 uses
  %i.an = add nuw nsw i64 %i.al, 31
  %i.ao = lshr i64 %i.an, 3
  %i.ap = and i64 %i.ao, 1073741820
  %i.aq = add nuw nsw i64 %i.ap, %i.am
  %i.ar = call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef %i.aq, i64 noundef 8) #24 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ar, ptr %i.as, align 8, !tbaa !202
  %i.at = getelementptr inbounds nuw i8, ptr %i.ar, i64 %i.am ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.at, ptr %i.au, align 8, !tbaa !202
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 %.0.i4, ptr %i.av, align 8, !tbaa !202
  %.pre.i = load i32, ptr %0, align 8
  %.pre.fr.i = freeze i32 %.pre.i
  %i.aw = and i32 %.pre.fr.i, 1                   ; 2 uses
  %.not.i.i.i.i = icmp eq i32 %i.aw, 0            ; 2 uses
  %i.ax = select i1 %.not.i.i.i.i, i32 %.0.i4, i32 4
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 72
  %spec.select.i = select i1 %.not.i.i.i.i, ptr %i.at, ptr %i.ay
  %i.az = zext i32 %i.ax to i64
  %i.ba = add nuw nsw i64 %i.az, 31
  %i.bb = lshr i64 %i.ba, 3
  %i.bc = and i64 %i.bb, 1073741820
  br label %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_4LoopElLj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_lEEEES3_lS5_S8_E24initWithExactBucketCountEj.exit

_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_4LoopElLj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_lEEEES3_lS5_S8_E24initWithExactBucketCountEj.exit: ; preds = %.thread.i, %_ZN4llvm13SmallDenseMapIPNS_4LoopElLj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_lEEE15allocateBucketsEj.exit.i
  %.sink = phi i32 [ 1, %.thread.i ], [ %i.aw, %_ZN4llvm13SmallDenseMapIPNS_4LoopElLj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_lEEE15allocateBucketsEj.exit.i ]
  %i.bd = phi i64 [ 4, %.thread.i ], [ %i.bc, %_ZN4llvm13SmallDenseMapIPNS_4LoopElLj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_lEEE15allocateBucketsEj.exit.i ]
  %i.be = phi ptr [ %i.ai, %.thread.i ], [ %spec.select.i, %_ZN4llvm13SmallDenseMapIPNS_4LoopElLj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_lEEE15allocateBucketsEj.exit.i ]
  store i32 %.sink, ptr %0, align 8
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.be, i8 0, i64 %i.bd, i1 false)
  call void @_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_4LoopElLj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_lEEEES3_lS5_S8_E8moveFromERS9_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(80) %2)
  %.pre = load i32, ptr %2, align 8
  br label %bb.b

bb.b:                                             ; preds = %_ZN4llvm13SmallDenseMapIPNS_4LoopElLj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_lEEE13maybeMoveFastEOS8_.exit.thread, %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_4LoopElLj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_lEEEES3_lS5_S8_E24initWithExactBucketCountEj.exit
  %i.bf = phi i32 [ %i.ad, %_ZN4llvm13SmallDenseMapIPNS_4LoopElLj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_lEEE13maybeMoveFastEOS8_.exit.thread ], [ %.pre, %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_4LoopElLj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_lEEEES3_lS5_S8_E24initWithExactBucketCountEj.exit ]
  %i.bg = and i32 %i.bf, 1
  %.not.i.i = icmp eq i32 %i.bg, 0
end_hunk_0
begin_hunk_1_@_ZN4llvm23SmallVectorTemplateBaseIiLb1EE15growAndPushBackEi:bb.a
; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare { ptr, ptr } @_ZNK4llvm11Instruction10successorsEv(ptr noundef nonnull align 8 dereferenceable(72)) local_unnamed_addr #10

declare noundef ptr @_ZN4llvm15SmallVectorBaseIjE13mallocForGrowEPvmmRm(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, i64 noundef, i64 noundef, ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #4

declare void @_ZN4llvm27SwitchInstProfUpdateWrapper4initEv(ptr noundef nonnull align 8 dereferenceable(65)) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(24) ptr @_ZN4llvm23SmallVectorTemplateBaseISt5tupleIJPNS_11ConstantIntEPNS_10BasicBlockESt8optionalIjEEELb0EE18growAndEmplaceBackIJS3_S5_RS7_EEERS8_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 4 dereferenceable(8) %3) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.c = call noundef ptr @_ZN4llvm15SmallVectorBaseIjE13mallocForGrowEPvmmRm(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.b, i64 noundef 0, i64 noundef 24, ptr noundef nonnull align 8 dereferenceable(8) %i.a) #24 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.e = load i32, ptr %i.d, align 8, !tbaa !69
  %i.f = zext i32 %i.e to i64
  %i.g = getelementptr inbounds nuw [24 x i8], ptr %i.c, i64 %i.f ; 3 uses
  %i.h = load i64, ptr %3, align 4
  store i64 %i.h, ptr %i.g, align 4
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.j = load ptr, ptr %2, align 8, !tbaa !148
  store ptr %i.j, ptr %i.i, align 8, !tbaa !195
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.l = load ptr, ptr %1, align 8, !tbaa !193
  store ptr %i.l, ptr %i.k, align 8, !tbaa !197
  %i.m = load ptr, ptr %0, align 8, !tbaa !57     ; 3 uses
  %i.n = load i32, ptr %i.d, align 8, !tbaa !69   ; 2 uses
  %i.o = zext i32 %i.n to i64
  %.idx.i = mul nuw nsw i64 %i.o, 24
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 %.idx.i
  %.not7.i.i.i.i.i.i = icmp eq i32 %i.n, 0
  br i1 %.not7.i.i.i.i.i.i, label %_ZN4llvm23SmallVectorTemplateBaseISt5tupleIJPNS_11ConstantIntEPNS_10BasicBlockESt8optionalIjEEELb0EE19moveElementsForGrowEPS8_.exit, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.a, %.lr.ph.i.i.i.i.i.i
  %.09.i.i.i.i.i.i = phi ptr [ %i.v, %.lr.ph.i.i.i.i.i.i ], [ %i.c, %bb.a ] ; 3 uses
  %.sroa.04.08.i.i.i.i.i.i = phi ptr [ %i.u, %.lr.ph.i.i.i.i.i.i ], [ %i.m, %bb.a ] ; 3 uses
  %i.q = load i64, ptr %.sroa.04.08.i.i.i.i.i.i, align 4
  store i64 %i.q, ptr %.09.i.i.i.i.i.i, align 4
  %i.r = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i, i64 8
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i.i, i64 8
  %i.t = load <2 x i64>, ptr %i.s, align 8, !tbaa !141
  store <2 x i64> %i.t, ptr %i.r, align 8, !tbaa !141
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i.i, i64 24 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i, i64 24
  %.not.i.i.i.i.i.i = icmp eq ptr %i.u, %i.p
  br i1 %.not.i.i.i.i.i.i, label %_ZN4llvm23SmallVectorTemplateBaseISt5tupleIJPNS_11ConstantIntEPNS_10BasicBlockESt8optionalIjEEELb0EE19moveElementsForGrowEPS8_.exit.loopexit, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !3

_ZN4llvm23SmallVectorTemplateBaseISt5tupleIJPNS_11ConstantIntEPNS_10BasicBlockESt8optionalIjEEELb0EE19moveElementsForGrowEPS8_.exit.loopexit: ; preds = %.lr.ph.i.i.i.i.i.i
  %.pre = load ptr, ptr %0, align 8, !tbaa !57
  br label %_ZN4llvm23SmallVectorTemplateBaseISt5tupleIJPNS_11ConstantIntEPNS_10BasicBlockESt8optionalIjEEELb0EE19moveElementsForGrowEPS8_.exit

_ZN4llvm23SmallVectorTemplateBaseISt5tupleIJPNS_11ConstantIntEPNS_10BasicBlockESt8optionalIjEEELb0EE19moveElementsForGrowEPS8_.exit: ; preds = %_ZN4llvm23SmallVectorTemplateBaseISt5tupleIJPNS_11ConstantIntEPNS_10BasicBlockESt8optionalIjEEELb0EE19moveElementsForGrowEPS8_.exit.loopexit, %bb.a
  %i.w = phi ptr [ %.pre, %_ZN4llvm23SmallVectorTemplateBaseISt5tupleIJPNS_11ConstantIntEPNS_10BasicBlockESt8optionalIjEEELb0EE19moveElementsForGrowEPS8_.exit.loopexit ], [ %i.m, %bb.a ] ; 2 uses
  %i.x = load i64, ptr %i.a, align 8, !tbaa !74
  %i.y = icmp eq ptr %i.w, %i.b
  br i1 %i.y, label %_ZN4llvm23SmallVectorTemplateBaseISt5tupleIJPNS_11ConstantIntEPNS_10BasicBlockESt8optionalIjEEELb0EE21takeAllocationForGrowEPS8_m.exit, label %bb.b

bb.b:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseISt5tupleIJPNS_11ConstantIntEPNS_10BasicBlockESt8optionalIjEEELb0EE19moveElementsForGrowEPS8_.exit
  call void @free(ptr noundef %i.w) #24
  br label %_ZN4llvm23SmallVectorTemplateBaseISt5tupleIJPNS_11ConstantIntEPNS_10BasicBlockESt8optionalIjEEELb0EE21takeAllocationForGrowEPS8_m.exit

_ZN4llvm23SmallVectorTemplateBaseISt5tupleIJPNS_11ConstantIntEPNS_10BasicBlockESt8optionalIjEEELb0EE21takeAllocationForGrowEPS8_m.exit: ; preds = %_ZN4llvm23SmallVectorTemplateBaseISt5tupleIJPNS_11ConstantIntEPNS_10BasicBlockESt8optionalIjEEELb0EE19moveElementsForGrowEPS8_.exit, %bb.b
  store ptr %i.c, ptr %0, align 8, !tbaa !57
  %i.z = trunc i64 %i.x to i32
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 %i.z, ptr %i.aa, align 4, !tbaa !80
  %i.ab = load i32, ptr %i.d, align 8, !tbaa !69
  %i.ac = add i32 %i.ab, 1                        ; 2 uses
  store i32 %i.ac, ptr %i.d, align 8, !tbaa !69
  %i.ad = zext i32 %i.ac to i64
  %i.ae = getelementptr inbounds nuw [24 x i8], ptr %i.c, i64 %i.ad
  %i.af = getelementptr inbounds i8, ptr %i.ae, i64 -24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  ret ptr %i.af
}

declare void @_ZN4llvm10SwitchInstC1EPNS_5ValueEPNS_10BasicBlockEjNS_14InsertPositionE(ptr noundef nonnull align 8 dereferenceable(76), ptr noundef, ptr noundef, i32 noundef, ptr, i64) unnamed_addr #4

declare noundef ptr @_ZN4llvm4UsernwEmNS0_26HungOffOperandsAllocMarkerE(i64 noundef) local_unnamed_addr #4

declare { ptr, ptr } @_ZN4llvm10BasicBlock4phisEv(ptr noundef nonnull align 8 dereferenceable(80)) local_unnamed_addr #4

declare { ptr, i64 } @_ZNK4llvm5Value7getNameEv(ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #4

declare void @_ZN4llvm11Instruction12insertBeforeENS_21ilist_iterator_w_bitsINS_12ilist_detail12node_optionsIS0_Lb0ELb0EvLb1ENS_10BasicBlockEEELb0ELb0EEE(ptr noundef nonnull align 8 dereferenceable(72), ptr, i64) local_unnamed_addr #4

declare noundef ptr @_ZN4llvm7PHINode19removeIncomingValueEjb(ptr noundef nonnull align 8 dereferenceable(80), i32 noundef, i1 noundef zeroext) local_unnamed_addr #4

declare void @_ZN4llvm5Value18replaceAllUsesWithEPS0_(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef) local_unnamed_addr #4

declare void @_ZN4llvm11InstructionC2EPNS_4TypeEjNS_4User9AllocInfoENS_14InsertPositionE(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef, i32 noundef, i32, ptr, i64) unnamed_addr #4

declare void @_ZN4llvm5Value7setNameERKNS_5TwineE(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(34)) local_unnamed_addr #4

declare void @_ZN4llvm4User16allocHungoffUsesEjb(ptr noundef nonnull align 8 dereferenceable(24), i32 noundef, i1 noundef zeroext) local_unnamed_addr #4

declare void @_ZN4llvm7PHINode12growOperandsEv(ptr noundef nonnull align 8 dereferenceable(80)) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_10BasicBlockES3_Lj2ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S3_EEEES3_S3_S5_S8_E24lookupOrInsertIntoBucketIRKS3_JEEESt4pairIPS8_bEOT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = load i32, ptr %0, align 8, !noalias !710 ; 2 uses
  %i.c = and i32 %i.b, 1                          ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.c, 0               ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.e = load ptr, ptr %i.d, align 8, !noalias !710 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !noalias !710 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.i = load i32, ptr %i.h, align 8, !noalias !710
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %.sink2.i.i.i = select i1 %.not.i.i.i, ptr %i.e, ptr %i.d ; 2 uses
  %.sink1.i.i.i = select i1 %.not.i.i.i, ptr %i.g, ptr %i.j ; 2 uses
  %.sink.i.i.i = select i1 %.not.i.i.i, i32 %i.i, i32 2 ; 4 uses
  %i.k = icmp eq i32 %.sink.i.i.i, 0
  br i1 %i.k, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = add i32 %.sink.i.i.i, -1                 ; 2 uses
  %i.m = load ptr, ptr %1, align 8, !tbaa !148    ; 2 uses
  %i.n = ptrtoint ptr %i.m to i64
  %i.o = mul i64 %i.n, -4658895280553007687       ; 2 uses
  %i.p = lshr i64 %i.o, 31
  %i.q = xor i64 %i.p, %i.o
  %i.r = trunc i64 %i.q to i32
  %i.s = and i32 %i.l, %i.r                       ; 3 uses
  %i.t = zext i32 %i.s to i64                     ; 2 uses
  %i.u = getelementptr inbounds nuw [16 x i8], ptr %.sink2.i.i.i, i64 %i.t ; 2 uses
  %i.v = lshr i64 %i.t, 5
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %.sink1.i.i.i, i64 %i.v
  %i.x = load i32, ptr %i.w, align 4, !tbaa !94
  %i.y = and i32 %i.s, 31
  %i.z = lshr i32 %i.x, %i.y
  %i.aa = trunc i32 %i.z to i1
  br i1 %i.aa, label %.lr.ph.i, label %.loopexit, !prof !150

.lr.ph.i:                                         ; preds = %bb.b, %bb.c
  %i.ab = phi ptr [ %i.ah, %bb.c ], [ %i.u, %bb.b ] ; 2 uses
  %.024.i = phi i32 [ %i.af, %bb.c ], [ %i.s, %bb.b ]
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !148
  %i.ad = icmp eq ptr %i.m, %i.ac
  br i1 %i.ad, label %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_10BasicBlockES3_Lj2ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S3_EEEES3_S3_S5_S8_E15LookupBucketForIS3_EEbRKT_RPS8_.exit, label %bb.c, !prof !81

bb.c:                                             ; preds = %.lr.ph.i
  %i.ae = add nuw i32 %.024.i, 1
  %i.af = and i32 %i.ae, %i.l                     ; 3 uses
  %i.ag = zext i32 %i.af to i64                   ; 2 uses
  %i.ah = getelementptr inbounds nuw [16 x i8], ptr %.sink2.i.i.i, i64 %i.ag ; 2 uses
  %i.ai = lshr i64 %i.ag, 5
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %.sink1.i.i.i, i64 %i.ai
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !94
  %i.al = and i32 %i.af, 31
  %i.am = lshr i32 %i.ak, %i.al
  %i.an = trunc i32 %i.am to i1
  br i1 %i.an, label %.lr.ph.i, label %.loopexit, !prof !151, !llvm.loop !13

.loopexit:                                        ; preds = %bb.c, %bb.a, %bb.b
  %.lcssa28.sink.i.ph = phi ptr [ %i.u, %bb.b ], [ null, %bb.a ], [ %i.ah, %bb.c ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %.lcssa28.sink.i.ph, ptr %i.a, align 8, !tbaa !378
  %i.ao = shl i32 %i.b, 1
  %i.ap = and i32 %i.ao, -4
  %i.aq = add i32 %i.ap, 4
  %i.ar = mul i32 %.sink.i.i.i, 3
  %.not.i = icmp ult i32 %i.aq, %i.ar
  br i1 %.not.i, label %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_10BasicBlockES3_Lj2ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S3_EEEES3_S3_S5_S8_E22findBucketForInsertionIS3_EEPS8_RKT_SC_.exit, label %bb.d, !prof !81

bb.d:                                             ; preds = %.loopexit
  %i.as = shl i32 %.sink.i.i.i, 1
  tail call void @_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_10BasicBlockES3_Lj2ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S3_EEEES3_S3_S5_S8_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %i.as)
  %i.at = call noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_10BasicBlockES3_Lj2ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S3_EEEES3_S3_S5_S8_E15LookupBucketForIS3_EEbRKT_RPS8_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 0 uses
  %.pre.i = load i32, ptr %0, align 8
  %.pre5.i = load ptr, ptr %i.a, align 8, !tbaa !378
  %.pre6.i = and i32 %.pre.i, 1
  %.pre = load ptr, ptr %i.f, align 8
  %.pre16 = load ptr, ptr %i.d, align 8
  br label %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_10BasicBlockES3_Lj2ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S3_EEEES3_S3_S5_S8_E22findBucketForInsertionIS3_EEPS8_RKT_SC_.exit

_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_10BasicBlockES3_Lj2ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S3_EEEES3_S3_S5_S8_E22findBucketForInsertionIS3_EEPS8_RKT_SC_.exit: ; preds = %.loopexit, %bb.d
  %i.au = phi ptr [ %.pre16, %bb.d ], [ %i.e, %.loopexit ]
  %i.av = phi ptr [ %.pre, %bb.d ], [ %i.g, %.loopexit ]
  %.pre-phi.i = phi i32 [ %.pre6.i, %bb.d ], [ %i.c, %.loopexit ]
  %i.aw = phi ptr [ %.pre5.i, %bb.d ], [ %.lcssa28.sink.i.ph, %.loopexit ] ; 4 uses
  %.not.i.i.i.i = icmp eq i32 %.pre-phi.i, 0      ; 2 uses
  %i.ax = select i1 %.not.i.i.i.i, ptr %i.av, ptr %i.j
  %i.ay = select i1 %.not.i.i.i.i, ptr %i.au, ptr %i.d
  %i.az = ptrtoint ptr %i.aw to i64
  %i.ba = ptrtoint ptr %i.ay to i64
  %i.bb = sub i64 %i.az, %i.ba
  %i.bc = ashr exact i64 %i.bb, 4                 ; 2 uses
  %i.bd = trunc i64 %i.bc to i32
  %i.be = and i32 %i.bd, 31
  %i.bf = shl nuw i32 1, %i.be
  %i.bg = lshr i64 %i.bc, 5
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %i.ax, i64 %i.bg ; 2 uses
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !94
  %i.bj = or i32 %i.bf, %i.bi
  store i32 %i.bj, ptr %i.bh, align 4, !tbaa !94
  %i.bk = load i32, ptr %0, align 8               ; 2 uses
  %2 = and i32 %i.bk, -2
  %i.bl = add i32 %2, 2
  %3 = and i32 %i.bk, 1
  %4 = or disjoint i32 %i.bl, %3
  store i32 %4, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.bm = load ptr, ptr %1, align 8, !tbaa !148
  store ptr %i.bm, ptr %i.aw, align 8, !tbaa !148
  %i.bn = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  store ptr null, ptr %i.bn, align 8, !tbaa !148
  br label %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_10BasicBlockES3_Lj2ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S3_EEEES3_S3_S5_S8_E15LookupBucketForIS3_EEbRKT_RPS8_.exit

_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_10BasicBlockES3_Lj2ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S3_EEEES3_S3_S5_S8_E15LookupBucketForIS3_EEbRKT_RPS8_.exit: ; preds = %.lr.ph.i, %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_10BasicBlockES3_Lj2ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S3_EEEES3_S3_S5_S8_E22findBucketForInsertionIS3_EEPS8_RKT_SC_.exit
  %.sroa.0.0 = phi ptr [ %i.aw, %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_10BasicBlockES3_Lj2ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S3_EEEES3_S3_S5_S8_E22findBucketForInsertionIS3_EEPS8_RKT_SC_.exit ], [ %i.ab, %.lr.ph.i ]
  %.sroa.3.0 = phi i8 [ 1, %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_10BasicBlockES3_Lj2ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S3_EEEES3_S3_S5_S8_E22findBucketForInsertionIS3_EEPS8_RKT_SC_.exit ], [ 0, %.lr.ph.i ]
  %.fca.0.insert = insertvalue { ptr, i8 } poison, ptr %.sroa.0.0, 0
  %.fca.1.insert = insertvalue { ptr, i8 } %.fca.0.insert, i8 %.sroa.3.0, 1
  ret { ptr, i8 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_10BasicBlockES3_Lj2ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S3_EEEES3_S3_S5_S8_E15LookupBucketForIS3_EEbRKT_RPS8_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = load i32, ptr %0, align 8, !noalias !715
  %i.b = and i32 %i.a, 1
  %.not.i.i = icmp eq i32 %i.b, 0                 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !noalias !715
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !noalias !715
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.h = load i32, ptr %i.g, align 8, !noalias !715
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.sink2.i.i = select i1 %.not.i.i, ptr %i.d, ptr %i.c ; 2 uses
  %.sink1.i.i = select i1 %.not.i.i, ptr %i.f, ptr %i.i ; 2 uses
  %.sink.i.i = select i1 %.not.i.i, i32 %i.h, i32 2 ; 2 uses
  %i.j = icmp eq i32 %.sink.i.i, 0
  br i1 %i.j, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = add i32 %.sink.i.i, -1                   ; 2 uses
  %i.l = load ptr, ptr %1, align 8, !tbaa !148    ; 2 uses
  %i.m = ptrtoint ptr %i.l to i64
  %i.n = mul i64 %i.m, -4658895280553007687       ; 2 uses
  %i.o = lshr i64 %i.n, 31
  %i.p = xor i64 %i.o, %i.n
  %i.q = trunc i64 %i.p to i32
  %i.r = and i32 %i.k, %i.q                       ; 3 uses
  %i.s = zext i32 %i.r to i64                     ; 2 uses
  %i.t = getelementptr inbounds nuw [16 x i8], ptr %.sink2.i.i, i64 %i.s ; 2 uses
  %i.u = lshr i64 %i.s, 5
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %.sink1.i.i, i64 %i.u
  %i.w = load i32, ptr %i.v, align 4, !tbaa !94
  %i.x = and i32 %i.r, 31
  %i.y = lshr i32 %i.w, %i.x
  %i.z = trunc i32 %i.y to i1
  br i1 %i.z, label %.lr.ph, label %.thread, !prof !150

.lr.ph:                                           ; preds = %bb.b, %bb.c
  %i.aa = phi ptr [ %i.ag, %bb.c ], [ %i.t, %bb.b ] ; 2 uses
  %.024 = phi i32 [ %i.ae, %bb.c ], [ %i.r, %bb.b ]
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !148
  %i.ac = icmp eq ptr %i.l, %i.ab                 ; 3 uses
  br i1 %i.ac, label %.thread, label %bb.c, !prof !81

bb.c:                                             ; preds = %.lr.ph
  %i.ad = add nuw i32 %.024, 1
  %i.ae = and i32 %i.ad, %i.k                     ; 3 uses
  %i.af = zext i32 %i.ae to i64                   ; 2 uses
  %i.ag = getelementptr inbounds nuw [16 x i8], ptr %.sink2.i.i, i64 %i.af ; 2 uses
  %i.ah = lshr i64 %i.af, 5
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %.sink1.i.i, i64 %i.ah
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !94
  %i.ak = and i32 %i.ae, 31
  %i.al = lshr i32 %i.aj, %i.ak
  %i.am = trunc i32 %i.al to i1
  br i1 %i.am, label %.lr.ph, label %.thread, !prof !151, !llvm.loop !13

.thread:                                          ; preds = %.lr.ph, %bb.c, %bb.b, %bb.a
  %.lcssa28.sink = phi ptr [ %i.t, %bb.b ], [ null, %bb.a ], [ %i.ag, %bb.c ], [ %i.aa, %.lr.ph ]
  %.2 = phi i1 [ false, %bb.b ], [ false, %bb.a ], [ %i.ac, %bb.c ], [ %i.ac, %.lr.ph ]
  store ptr %.lcssa28.sink, ptr %2, align 8, !tbaa !378
  ret i1 %.2
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_10BasicBlockES3_Lj2ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S3_EEEES3_S3_S5_S8_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %1) local_unnamed_addr #6 comdat align 2 {
bb.a:
  %2 = alloca %"class.llvm::SmallDenseMap.323", align 8 ; 16 uses
  %i.a = icmp ult i32 %1, 3                       ; 2 uses
  br i1 %i.a, label %_ZN4llvm13SmallDenseMapIPNS_10BasicBlockES2_Lj2ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S2_EEE17roundUpNumBucketsEj.exit.thread, label %_ZN4llvm13SmallDenseMapIPNS_10BasicBlockES2_Lj2ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S2_EEE17roundUpNumBucketsEj.exit

_ZN4llvm13SmallDenseMapIPNS_10BasicBlockES2_Lj2ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S2_EEE17roundUpNumBucketsEj.exit.thread: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 40
  br label %_ZN4llvm13SmallDenseMapIPNS_10BasicBlockES2_Lj2ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S2_EEEC2EjNS_12DenseMapBaseIS8_S2_S2_S4_S7_E16ExactBucketCountE.exit

_ZN4llvm13SmallDenseMapIPNS_10BasicBlockES2_Lj2ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S2_EEE17roundUpNumBucketsEj.exit: ; preds = %bb.a
  %i.c = add i32 %1, -1
  %i.d = zext i32 %i.c to i64                     ; 2 uses
  %i.e = lshr i64 %i.d, 1
  %i.f = or i64 %i.e, %i.d                        ; 2 uses
  %i.g = lshr i64 %i.f, 2
  %i.h = or i64 %i.g, %i.f                        ; 2 uses
  %i.i = lshr i64 %i.h, 4
  %i.j = or i64 %i.i, %i.h                        ; 2 uses
  %i.k = lshr i64 %i.j, 8
  %i.l = or i64 %i.k, %i.j                        ; 2 uses
  %i.m = lshr i64 %i.l, 16
  %i.n = or i64 %i.m, %i.l
  %i.o = trunc nuw i64 %i.n to i32
  %i.p = add i32 %i.o, 1
  %.sroa.speculated.i = tail call i32 @llvm.umax.i32(i32 %i.p, i32 64) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  %i.q = zext i32 %.sroa.speculated.i to i64      ; 2 uses
  %i.r = shl nuw nsw i64 %i.q, 4                  ; 2 uses
  %i.s = add nuw nsw i64 %i.q, 31
  %i.t = lshr i64 %i.s, 3
  %i.u = and i64 %i.t, 1073741820                 ; 2 uses
  %i.v = add nuw nsw i64 %i.u, %i.r
  %i.w = tail call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef %i.v, i64 noundef 8) #24 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %i.w, ptr %i.x, align 8, !tbaa !202
  %i.y = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.r ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 16
  store ptr %i.y, ptr %i.z, align 8, !tbaa !202
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 24
  store i32 %.sroa.speculated.i, ptr %i.aa, align 8, !tbaa !202
  br label %_ZN4llvm13SmallDenseMapIPNS_10BasicBlockES2_Lj2ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S2_EEEC2EjNS_12DenseMapBaseIS8_S2_S2_S4_S7_E16ExactBucketCountE.exit

_ZN4llvm13SmallDenseMapIPNS_10BasicBlockES2_Lj2ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S2_EEEC2EjNS_12DenseMapBaseIS8_S2_S2_S4_S7_E16ExactBucketCountE.exit: ; preds = %_ZN4llvm13SmallDenseMapIPNS_10BasicBlockES2_Lj2ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S2_EEE17roundUpNumBucketsEj.exit.thread, %_ZN4llvm13SmallDenseMapIPNS_10BasicBlockES2_Lj2ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S2_EEE17roundUpNumBucketsEj.exit
  %.0.i4 = phi i32 [ 2, %_ZN4llvm13SmallDenseMapIPNS_10BasicBlockES2_Lj2ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S2_EEE17roundUpNumBucketsEj.exit.thread ], [ %.sroa.speculated.i, %_ZN4llvm13SmallDenseMapIPNS_10BasicBlockES2_Lj2ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S2_EEE17roundUpNumBucketsEj.exit ] ; 3 uses
  %.sink.i = phi i32 [ 1, %_ZN4llvm13SmallDenseMapIPNS_10BasicBlockES2_Lj2ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S2_EEE17roundUpNumBucketsEj.exit.thread ], [ 0, %_ZN4llvm13SmallDenseMapIPNS_10BasicBlockES2_Lj2ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S2_EEE17roundUpNumBucketsEj.exit ]
  %i.ab = phi i64 [ 4, %_ZN4llvm13SmallDenseMapIPNS_10BasicBlockES2_Lj2ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S2_EEE17roundUpNumBucketsEj.exit.thread ], [ %i.u, %_ZN4llvm13SmallDenseMapIPNS_10BasicBlockES2_Lj2ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S2_EEE17roundUpNumBucketsEj.exit ]
  %i.ac = phi ptr [ %i.b, %_ZN4llvm13SmallDenseMapIPNS_10BasicBlockES2_Lj2ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S2_EEE17roundUpNumBucketsEj.exit.thread ], [ %i.y, %_ZN4llvm13SmallDenseMapIPNS_10BasicBlockES2_Lj2ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S2_EEE17roundUpNumBucketsEj.exit ]
  store i32 %.sink.i, ptr %2, align 8
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.ac, i8 0, i64 %i.ab, i1 false)
  call void @_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_10BasicBlockES3_Lj2ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S3_EEEES3_S3_S5_S8_E8moveFromERS9_(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(48) %0)
  %i.ad = load i32, ptr %2, align 8               ; 3 uses
  %i.ae = and i32 %i.ad, 1
  %.not.i = icmp eq i32 %i.ae, 0
  br i1 %.not.i, label %_ZN4llvm13SmallDenseMapIPNS_10BasicBlockES2_Lj2ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S2_EEE13maybeMoveFastEOS8_.exit.thread, label %_ZN4llvm13SmallDenseMapIPNS_10BasicBlockES2_Lj2ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S2_EEE13maybeMoveFastEOS8_.exit

_ZN4llvm13SmallDenseMapIPNS_10BasicBlockES2_Lj2ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S2_EEE13maybeMoveFastEOS8_.exit.thread: ; preds = %_ZN4llvm13SmallDenseMapIPNS_10BasicBlockES2_Lj2ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S2_EEEC2EjNS_12DenseMapBaseIS8_S2_S2_S4_S7_E16ExactBucketCountE.exit
  store i32 %i.ad, ptr %0, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ag, ptr noundef nonnull align 8 dereferenceable(24) %i.af, i64 24, i1 false), !tbaa.struct !379
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 24
  store i32 0, ptr %i.ah, align 8, !tbaa !202
  br label %bb.b

_ZN4llvm13SmallDenseMapIPNS_10BasicBlockES2_Lj2ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S2_EEE13maybeMoveFastEOS8_.exit: ; preds = %_ZN4llvm13SmallDenseMapIPNS_10BasicBlockES2_Lj2ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S2_EEEC2EjNS_12DenseMapBaseIS8_S2_S2_S4_S7_E16ExactBucketCountE.exit
  br i1 %i.a, label %.thread.i, label %_ZN4llvm13SmallDenseMapIPNS_10BasicBlockES2_Lj2ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S2_EEE15allocateBucketsEj.exit.i

.thread.i:                                        ; preds = %_ZN4llvm13SmallDenseMapIPNS_10BasicBlockES2_Lj2ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S2_EEE13maybeMoveFastEOS8_.exit
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 40
  br label %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_10BasicBlockES3_Lj2ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S3_EEEES3_S3_S5_S8_E24initWithExactBucketCountEj.exit

_ZN4llvm13SmallDenseMapIPNS_10BasicBlockES2_Lj2ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S2_EEE15allocateBucketsEj.exit.i: ; preds = %_ZN4llvm13SmallDenseMapIPNS_10BasicBlockES2_Lj2ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S2_EEE13maybeMoveFastEOS8_.exit
  %i.aj = load i32, ptr %0, align 8
  %i.ak = and i32 %i.aj, -2
  store i32 %i.ak, ptr %0, align 8
  %i.al = zext i32 %.0.i4 to i64                  ; 2 uses
  %i.am = shl nuw nsw i64 %i.al, 4                ; 2 uses
  %i.an = add nuw nsw i64 %i.al, 31
  %i.ao = lshr i64 %i.an, 3
  %i.ap = and i64 %i.ao, 1073741820
  %i.aq = add nuw nsw i64 %i.ap, %i.am
  %i.ar = call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef %i.aq, i64 noundef 8) #24 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ar, ptr %i.as, align 8, !tbaa !202
  %i.at = getelementptr inbounds nuw i8, ptr %i.ar, i64 %i.am ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.at, ptr %i.au, align 8, !tbaa !202
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 %.0.i4, ptr %i.av, align 8, !tbaa !202
  %.pre.i = load i32, ptr %0, align 8
  %.pre.fr.i = freeze i32 %.pre.i
  %i.aw = and i32 %.pre.fr.i, 1                   ; 2 uses
  %.not.i.i.i.i = icmp eq i32 %i.aw, 0            ; 2 uses
  %i.ax = select i1 %.not.i.i.i.i, i32 %.0.i4, i32 2
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 40
  %spec.select.i = select i1 %.not.i.i.i.i, ptr %i.at, ptr %i.ay
  %i.az = zext i32 %i.ax to i64
  %i.ba = add nuw nsw i64 %i.az, 31
  %i.bb = lshr i64 %i.ba, 3
  %i.bc = and i64 %i.bb, 1073741820
  br label %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_10BasicBlockES3_Lj2ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S3_EEEES3_S3_S5_S8_E24initWithExactBucketCountEj.exit

_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_10BasicBlockES3_Lj2ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S3_EEEES3_S3_S5_S8_E24initWithExactBucketCountEj.exit: ; preds = %.thread.i, %_ZN4llvm13SmallDenseMapIPNS_10BasicBlockES2_Lj2ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S2_EEE15allocateBucketsEj.exit.i
  %.sink = phi i32 [ 1, %.thread.i ], [ %i.aw, %_ZN4llvm13SmallDenseMapIPNS_10BasicBlockES2_Lj2ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S2_EEE15allocateBucketsEj.exit.i ]
  %i.bd = phi i64 [ 4, %.thread.i ], [ %i.bc, %_ZN4llvm13SmallDenseMapIPNS_10BasicBlockES2_Lj2ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S2_EEE15allocateBucketsEj.exit.i ]
  %i.be = phi ptr [ %i.ai, %.thread.i ], [ %spec.select.i, %_ZN4llvm13SmallDenseMapIPNS_10BasicBlockES2_Lj2ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S2_EEE15allocateBucketsEj.exit.i ]
  store i32 %.sink, ptr %0, align 8
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.be, i8 0, i64 %i.bd, i1 false)
  call void @_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_10BasicBlockES3_Lj2ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S3_EEEES3_S3_S5_S8_E8moveFromERS9_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(48) %2)
  %.pre = load i32, ptr %2, align 8
  br label %bb.b

bb.b:                                             ; preds = %_ZN4llvm13SmallDenseMapIPNS_10BasicBlockES2_Lj2ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S2_EEE13maybeMoveFastEOS8_.exit.thread, %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_10BasicBlockES3_Lj2ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S3_EEEES3_S3_S5_S8_E24initWithExactBucketCountEj.exit
  %i.bf = phi i32 [ %i.ad, %_ZN4llvm13SmallDenseMapIPNS_10BasicBlockES2_Lj2ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S2_EEE13maybeMoveFastEOS8_.exit.thread ], [ %.pre, %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_10BasicBlockES3_Lj2ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S3_EEEES3_S3_S5_S8_E24initWithExactBucketCountEj.exit ]
  %i.bg = and i32 %i.bf, 1
  %.not.i.i = icmp eq i32 %i.bg, 0
  br i1 %.not.i.i, label %bb.c, label %_ZN4llvm13SmallDenseMapIPNS_10BasicBlockES2_Lj2ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S2_EEED2Ev.exit
end_hunk_1
begin_hunk_2_@_ZN4llvm12DenseMapBaseINS_13SmallDenseMapISt4pairIPNS_10BasicBlockES4_EiLj4ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_iEEEES5_iS7_SA_E8moveFromERSB_:bb.a
  %i.bi = trunc i32 %i.bh to i1
  br i1 %i.bi, label %.lr.ph.i, label %_ZZN4llvm12DenseMapBaseINS_13SmallDenseMapISt4pairIPNS_10BasicBlockES4_EiLj4ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_iEEEES5_iS7_SA_E8moveFromERSB_ENKUljE_clEj.exit

.lr.ph.i:                                         ; preds = %bb.b, %.lr.ph.i
  %.014.i = phi i32 [ %i.bk, %.lr.ph.i ], [ %i.bb, %bb.b ]
  %i.bj = add i32 %.014.i, 1
  %i.bk = and i32 %i.bj, %i.y                     ; 3 uses
  %i.bl = zext i32 %i.bk to i64                   ; 2 uses
  %i.bm = lshr i64 %i.bl, 5                       ; 2 uses
  %i.bn = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %i.bm
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !94
  %i.bp = and i32 %i.bk, 31                       ; 2 uses
  %i.bq = lshr i32 %i.bo, %i.bp
  %i.br = trunc i32 %i.bq to i1
  br i1 %i.br, label %.lr.ph.i, label %_ZZN4llvm12DenseMapBaseINS_13SmallDenseMapISt4pairIPNS_10BasicBlockES4_EiLj4ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_iEEEES5_iS7_SA_E8moveFromERSB_ENKUljE_clEj.exit, !llvm.loop !740

_ZZN4llvm12DenseMapBaseINS_13SmallDenseMapISt4pairIPNS_10BasicBlockES4_EiLj4ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_iEEEES5_iS7_SA_E8moveFromERSB_ENKUljE_clEj.exit: ; preds = %.lr.ph.i, %bb.b
  %.lcssa12.i = phi i64 [ %i.bc, %bb.b ], [ %i.bl, %.lr.ph.i ]
  %.lcssa11.i = phi i64 [ %i.bd, %bb.b ], [ %i.bm, %.lr.ph.i ]
  %.lcssa.i = phi i32 [ %i.bg, %bb.b ], [ %i.bp, %.lr.ph.i ]
  %i.bs = getelementptr inbounds nuw [24 x i8], ptr %i.u, i64 %.lcssa12.i ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bs, ptr noundef nonnull align 8 dereferenceable(16) %i.ai, i64 16, i1 false)
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 16
  %i.bu = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  %i.bv = load i32, ptr %i.bu, align 8, !tbaa !94
  store i32 %i.bv, ptr %i.bt, align 8, !tbaa !94
  %i.bw = shl nuw i32 1, %.lcssa.i
  %i.bx = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %.lcssa11.i ; 2 uses
  %i.by = load i32, ptr %i.bx, align 4, !tbaa !94
  %i.bz = or i32 %i.by, %i.bw
  store i32 %i.bz, ptr %i.bx, align 4, !tbaa !94
  %i.ca = add i32 %.0.i22, -1
  %i.cb = and i32 %i.ca, %.0.i22                  ; 2 uses
  %.not11.i = icmp eq i32 %i.cb, 0
  br i1 %.not11.i, label %._crit_edge, label %bb.b, !llvm.loop !741

._crit_edge:                                      ; preds = %_ZZN4llvm12DenseMapBaseINS_13SmallDenseMapISt4pairIPNS_10BasicBlockES4_EiLj4ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_iEEEES5_iS7_SA_E8moveFromERSB_ENKUljE_clEj.exit, %.lr.ph26
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not.i = icmp eq i64 %indvars.iv.next, %i.ab
  br i1 %.not.i, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_13SmallDenseMapISt4pairIPNS_10BasicBlockES7_EiLj4ENS_12DenseMapInfoIS8_vEENS_6detail12DenseMapPairIS8_iEEEES8_iSA_SD_E8moveFromERSE_EUljE_EEvPKjjT_.exit.loopexit, label %.lr.ph26, !llvm.loop !742

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_13SmallDenseMapISt4pairIPNS_10BasicBlockES7_EiLj4ENS_12DenseMapInfoIS8_vEENS_6detail12DenseMapPairIS8_iEEEES8_iSA_SD_E8moveFromERSE_EUljE_EEvPKjjT_.exit.loopexit: ; preds = %._crit_edge
  %.pre = load i32, ptr %1, align 8
  %.pre30 = load i32, ptr %0, align 8
  %.pre31 = and i32 %.pre30, 1
  br label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_13SmallDenseMapISt4pairIPNS_10BasicBlockES7_EiLj4ENS_12DenseMapInfoIS8_vEENS_6detail12DenseMapPairIS8_iEEEES8_iSA_SD_E8moveFromERSE_EUljE_EEvPKjjT_.exit

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_13SmallDenseMapISt4pairIPNS_10BasicBlockES7_EiLj4ENS_12DenseMapInfoIS8_vEENS_6detail12DenseMapPairIS8_iEEEES8_iSA_SD_E8moveFromERSE_EUljE_EEvPKjjT_.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_13SmallDenseMapISt4pairIPNS_10BasicBlockES7_EiLj4ENS_12DenseMapInfoIS8_vEENS_6detail12DenseMapPairIS8_iEEEES8_iSA_SD_E8moveFromERSE_EUljE_EEvPKjjT_.exit.loopexit, %bb.a
  %.pre-phi = phi i32 [ %.pre31, %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_13SmallDenseMapISt4pairIPNS_10BasicBlockES7_EiLj4ENS_12DenseMapInfoIS8_vEENS_6detail12DenseMapPairIS8_iEEEES8_iSA_SD_E8moveFromERSE_EUljE_EEvPKjjT_.exit.loopexit ], [ %i.n, %bb.a ]
  %i.cc = phi i32 [ %.pre, %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_13SmallDenseMapISt4pairIPNS_10BasicBlockES7_EiLj4ENS_12DenseMapInfoIS8_vEENS_6detail12DenseMapPairIS8_iEEEES8_iSA_SD_E8moveFromERSE_EUljE_EEvPKjjT_.exit.loopexit ], [ %i.a, %bb.a ]
  %i.cd = and i32 %i.cc, -2
  %i.ce = or disjoint i32 %.pre-phi, %i.cd
  store i32 %i.ce, ptr %0, align 8
  %i.cf = load i32, ptr %1, align 8               ; 3 uses
  %i.cg = and i32 %i.cf, 1
  %.not.i.i11 = icmp eq i32 %i.cg, 0
  br i1 %.not.i.i11, label %bb.c, label %_ZN4llvm13SmallDenseMapISt4pairIPNS_10BasicBlockES3_EiLj4ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_iEEE4killEv.exit

bb.c:                                             ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_13SmallDenseMapISt4pairIPNS_10BasicBlockES7_EiLj4ENS_12DenseMapInfoIS8_vEENS_6detail12DenseMapPairIS8_iEEEES8_iSA_SD_E8moveFromERSE_EUljE_EEvPKjjT_.exit
  %i.ch = load i32, ptr %i.j, align 8, !tbaa !202 ; 2 uses
  %i.ci = icmp eq i32 %i.ch, 0
  br i1 %i.ci, label %_ZN4llvm13SmallDenseMapISt4pairIPNS_10BasicBlockES3_EiLj4ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_iEEE4killEv.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.cj = load ptr, ptr %i.c, align 8, !tbaa !202
  %i.ck = zext i32 %i.ch to i64                   ; 2 uses
  %i.cl = mul nuw nsw i64 %i.ck, 24
  %i.cm = add nuw nsw i64 %i.ck, 31
  %i.cn = lshr i64 %i.cm, 3
  %i.co = and i64 %i.cn, 1073741820
  %i.cp = add nuw nsw i64 %i.co, %i.cl
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.cj, i64 noundef %i.cp, i64 noundef 8) #24
  %.pre.i = load i32, ptr %1, align 8
  br label %_ZN4llvm13SmallDenseMapISt4pairIPNS_10BasicBlockES3_EiLj4ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_iEEE4killEv.exit

_ZN4llvm13SmallDenseMapISt4pairIPNS_10BasicBlockES3_EiLj4ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_iEEE4killEv.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_13SmallDenseMapISt4pairIPNS_10BasicBlockES7_EiLj4ENS_12DenseMapInfoIS8_vEENS_6detail12DenseMapPairIS8_iEEEES8_iSA_SD_E8moveFromERSE_EUljE_EEvPKjjT_.exit, %bb.c, %bb.d
  %i.cq = phi i32 [ %i.cf, %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_13SmallDenseMapISt4pairIPNS_10BasicBlockES7_EiLj4ENS_12DenseMapInfoIS8_vEENS_6detail12DenseMapPairIS8_iEEEES8_iSA_SD_E8moveFromERSE_EUljE_EEvPKjjT_.exit ], [ %i.cf, %bb.c ], [ %.pre.i, %bb.d ]
  %i.cr = and i32 %i.cq, -2
  store i32 %i.cr, ptr %1, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, i8 0, i64 24, i1 false)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_13SmallDenseMapISt4pairIPNS_10BasicBlockES4_EiLj4ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_iEEEES5_iS7_SA_E24lookupOrInsertIntoBucketIS5_JEEES2_IPSA_bEOT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = load i32, ptr %0, align 8, !noalias !747 ; 2 uses
  %i.c = and i32 %i.b, 1                          ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.c, 0               ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.e = load ptr, ptr %i.d, align 8, !noalias !747 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !noalias !747 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.i = load i32, ptr %i.h, align 8, !noalias !747
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %.sink2.i.i.i = select i1 %.not.i.i.i, ptr %i.e, ptr %i.d ; 2 uses
  %.sink1.i.i.i = select i1 %.not.i.i.i, ptr %i.g, ptr %i.j ; 2 uses
  %.sink.i.i.i = select i1 %.not.i.i.i, i32 %i.i, i32 4 ; 4 uses
  %i.k = icmp eq i32 %.sink.i.i.i, 0
  br i1 %i.k, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = add i32 %.sink.i.i.i, -1                 ; 2 uses
  %i.m = load ptr, ptr %1, align 8, !tbaa !385    ; 2 uses
  %i.n = ptrtoint ptr %i.m to i64
  %i.o = mul i64 %i.n, -4658895280553007687       ; 2 uses
  %i.p = lshr i64 %i.o, 31
  %i.q = xor i64 %i.p, %i.o
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !386  ; 2 uses
  %i.t = ptrtoint ptr %i.s to i64
  %i.u = mul i64 %i.t, -4658895280553007687       ; 2 uses
  %i.v = lshr i64 %i.u, 31
  %i.w = xor i64 %i.v, %i.u
  %i.x = shl i64 %i.q, 32
  %i.y = and i64 %i.w, 4294967295
  %i.z = or disjoint i64 %i.y, %i.x
  %i.aa = mul i64 %i.z, -4658895280553007687      ; 2 uses
  %i.ab = lshr i64 %i.aa, 31
  %i.ac = xor i64 %i.ab, %i.aa
  %i.ad = trunc i64 %i.ac to i32
  %i.ae = and i32 %i.l, %i.ad                     ; 3 uses
  %i.af = zext i32 %i.ae to i64                   ; 2 uses
  %i.ag = getelementptr inbounds nuw [24 x i8], ptr %.sink2.i.i.i, i64 %i.af ; 2 uses
  %i.ah = lshr i64 %i.af, 5
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %.sink1.i.i.i, i64 %i.ah
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !94
  %i.ak = and i32 %i.ae, 31
  %i.al = lshr i32 %i.aj, %i.ak
  %i.am = trunc i32 %i.al to i1
  br i1 %i.am, label %.lr.ph.i, label %.loopexit, !prof !150

.lr.ph.i:                                         ; preds = %bb.b, %bb.c
  %i.an = phi ptr [ %i.ax, %bb.c ], [ %i.ag, %bb.b ] ; 3 uses
  %.024.i = phi i32 [ %i.av, %bb.c ], [ %i.ae, %bb.b ]
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !385
  %i.ap = icmp eq ptr %i.m, %i.ao
  %i.aq = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %i.ar = load ptr, ptr %i.aq, align 8
  %i.as = icmp eq ptr %i.s, %i.ar
  %i.at = select i1 %i.ap, i1 %i.as, i1 false
  br i1 %i.at, label %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapISt4pairIPNS_10BasicBlockES4_EiLj4ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_iEEEES5_iS7_SA_E15LookupBucketForIS5_EEbRKT_RPSA_.exit, label %bb.c, !prof !81

bb.c:                                             ; preds = %.lr.ph.i
  %i.au = add nuw i32 %.024.i, 1
  %i.av = and i32 %i.au, %i.l                     ; 3 uses
  %i.aw = zext i32 %i.av to i64                   ; 2 uses
  %i.ax = getelementptr inbounds nuw [24 x i8], ptr %.sink2.i.i.i, i64 %i.aw ; 2 uses
  %i.ay = lshr i64 %i.aw, 5
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %.sink1.i.i.i, i64 %i.ay
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !94
  %i.bb = and i32 %i.av, 31
  %i.bc = lshr i32 %i.ba, %i.bb
  %i.bd = trunc i32 %i.bc to i1
  br i1 %i.bd, label %.lr.ph.i, label %.loopexit, !prof !151, !llvm.loop !14

.loopexit:                                        ; preds = %bb.c, %bb.a, %bb.b
  %.lcssa28.sink.i.ph = phi ptr [ %i.ag, %bb.b ], [ null, %bb.a ], [ %i.ax, %bb.c ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %.lcssa28.sink.i.ph, ptr %i.a, align 8, !tbaa !388
  %i.be = shl i32 %i.b, 1
  %i.bf = and i32 %i.be, -4
  %i.bg = add i32 %i.bf, 4
  %i.bh = mul i32 %.sink.i.i.i, 3
  %.not.i = icmp ult i32 %i.bg, %i.bh
  br i1 %.not.i, label %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapISt4pairIPNS_10BasicBlockES4_EiLj4ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_iEEEES5_iS7_SA_E22findBucketForInsertionIS5_EEPSA_RKT_SE_.exit, label %bb.d, !prof !81

bb.d:                                             ; preds = %.loopexit
  %i.bi = shl i32 %.sink.i.i.i, 1
  tail call void @_ZN4llvm12DenseMapBaseINS_13SmallDenseMapISt4pairIPNS_10BasicBlockES4_EiLj4ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_iEEEES5_iS7_SA_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %i.bi)
  %i.bj = call noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_13SmallDenseMapISt4pairIPNS_10BasicBlockES4_EiLj4ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_iEEEES5_iS7_SA_E15LookupBucketForIS5_EEbRKT_RPSA_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 0 uses
  %.pre.i = load i32, ptr %0, align 8
  %.pre5.i = load ptr, ptr %i.a, align 8, !tbaa !388
  %.pre6.i = and i32 %.pre.i, 1
  %.pre = load ptr, ptr %i.f, align 8
  %.pre16 = load ptr, ptr %i.d, align 8
  br label %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapISt4pairIPNS_10BasicBlockES4_EiLj4ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_iEEEES5_iS7_SA_E22findBucketForInsertionIS5_EEPSA_RKT_SE_.exit

_ZN4llvm12DenseMapBaseINS_13SmallDenseMapISt4pairIPNS_10BasicBlockES4_EiLj4ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_iEEEES5_iS7_SA_E22findBucketForInsertionIS5_EEPSA_RKT_SE_.exit: ; preds = %.loopexit, %bb.d
  %i.bk = phi ptr [ %.pre16, %bb.d ], [ %i.e, %.loopexit ]
  %i.bl = phi ptr [ %.pre, %bb.d ], [ %i.g, %.loopexit ]
  %.pre-phi.i = phi i32 [ %.pre6.i, %bb.d ], [ %i.c, %.loopexit ]
  %i.bm = phi ptr [ %.pre5.i, %bb.d ], [ %.lcssa28.sink.i.ph, %.loopexit ] ; 4 uses
  %.not.i.i.i.i = icmp eq i32 %.pre-phi.i, 0      ; 2 uses
  %i.bn = select i1 %.not.i.i.i.i, ptr %i.bl, ptr %i.j
  %i.bo = select i1 %.not.i.i.i.i, ptr %i.bk, ptr %i.d
  %i.bp = ptrtoint ptr %i.bm to i64
  %i.bq = ptrtoint ptr %i.bo to i64
  %i.br = sub i64 %i.bp, %i.bq
  %i.bs = sdiv exact i64 %i.br, 24                ; 2 uses
  %i.bt = trunc i64 %i.bs to i32
  %i.bu = and i32 %i.bt, 31
  %i.bv = shl nuw i32 1, %i.bu
  %i.bw = lshr i64 %i.bs, 5
  %i.bx = getelementptr inbounds nuw [4 x i8], ptr %i.bn, i64 %i.bw ; 2 uses
  %i.by = load i32, ptr %i.bx, align 4, !tbaa !94
  %i.bz = or i32 %i.bv, %i.by
  store i32 %i.bz, ptr %i.bx, align 4, !tbaa !94
  %i.ca = load i32, ptr %0, align 8               ; 2 uses
  %2 = and i32 %i.ca, -2
  %i.cb = add i32 %2, 2
  %3 = and i32 %i.ca, 1
  %4 = or disjoint i32 %i.cb, %3
  store i32 %4, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bm, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 16, i1 false)
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bm, i64 16
  store i32 0, ptr %i.cc, align 8, !tbaa !94
  br label %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapISt4pairIPNS_10BasicBlockES4_EiLj4ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_iEEEES5_iS7_SA_E15LookupBucketForIS5_EEbRKT_RPSA_.exit

_ZN4llvm12DenseMapBaseINS_13SmallDenseMapISt4pairIPNS_10BasicBlockES4_EiLj4ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_iEEEES5_iS7_SA_E15LookupBucketForIS5_EEbRKT_RPSA_.exit: ; preds = %.lr.ph.i, %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapISt4pairIPNS_10BasicBlockES4_EiLj4ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_iEEEES5_iS7_SA_E22findBucketForInsertionIS5_EEPSA_RKT_SE_.exit
  %.sroa.0.0 = phi ptr [ %i.bm, %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapISt4pairIPNS_10BasicBlockES4_EiLj4ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_iEEEES5_iS7_SA_E22findBucketForInsertionIS5_EEPSA_RKT_SE_.exit ], [ %i.an, %.lr.ph.i ]
  %.sroa.3.0 = phi i8 [ 1, %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapISt4pairIPNS_10BasicBlockES4_EiLj4ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_iEEEES5_iS7_SA_E22findBucketForInsertionIS5_EEPSA_RKT_SE_.exit ], [ 0, %.lr.ph.i ]
  %.fca.0.insert = insertvalue { ptr, i8 } poison, ptr %.sroa.0.0, 0
  %.fca.1.insert = insertvalue { ptr, i8 } %.fca.0.insert, i8 %.sroa.3.0, 1
  ret { ptr, i8 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_13SmallDenseMapISt4pairIPNS_10BasicBlockES4_EiLj4ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_iEEEES5_iS7_SA_E15LookupBucketForIS5_EEbRKT_RPSA_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = load i32, ptr %0, align 8, !noalias !752
  %i.b = and i32 %i.a, 1
  %.not.i.i = icmp eq i32 %i.b, 0                 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !noalias !752
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !noalias !752
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.h = load i32, ptr %i.g, align 8, !noalias !752
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 104
  %.sink2.i.i = select i1 %.not.i.i, ptr %i.d, ptr %i.c ; 2 uses
  %.sink1.i.i = select i1 %.not.i.i, ptr %i.f, ptr %i.i ; 2 uses
  %.sink.i.i = select i1 %.not.i.i, i32 %i.h, i32 4 ; 2 uses
  %i.j = icmp eq i32 %.sink.i.i, 0
  br i1 %i.j, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = add i32 %.sink.i.i, -1                   ; 2 uses
  %i.l = load ptr, ptr %1, align 8, !tbaa !385    ; 2 uses
  %i.m = ptrtoint ptr %i.l to i64
  %i.n = mul i64 %i.m, -4658895280553007687       ; 2 uses
  %i.o = lshr i64 %i.n, 31
  %i.p = xor i64 %i.o, %i.n
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !386  ; 2 uses
  %i.s = ptrtoint ptr %i.r to i64
  %i.t = mul i64 %i.s, -4658895280553007687       ; 2 uses
  %i.u = lshr i64 %i.t, 31
  %i.v = xor i64 %i.u, %i.t
  %i.w = shl i64 %i.p, 32
  %i.x = and i64 %i.v, 4294967295
  %i.y = or disjoint i64 %i.x, %i.w
  %i.z = mul i64 %i.y, -4658895280553007687       ; 2 uses
  %i.aa = lshr i64 %i.z, 31
  %i.ab = xor i64 %i.aa, %i.z
  %i.ac = trunc i64 %i.ab to i32
  %i.ad = and i32 %i.k, %i.ac                     ; 3 uses
  %i.ae = zext i32 %i.ad to i64                   ; 2 uses
  %i.af = getelementptr inbounds nuw [24 x i8], ptr %.sink2.i.i, i64 %i.ae ; 2 uses
  %i.ag = lshr i64 %i.ae, 5
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %.sink1.i.i, i64 %i.ag
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !94
  %i.aj = and i32 %i.ad, 31
  %i.ak = lshr i32 %i.ai, %i.aj
  %i.al = trunc i32 %i.ak to i1
  br i1 %i.al, label %.lr.ph, label %.thread, !prof !150

.lr.ph:                                           ; preds = %bb.b, %bb.c
  %i.am = phi ptr [ %i.aw, %bb.c ], [ %i.af, %bb.b ] ; 3 uses
  %.024 = phi i32 [ %i.au, %bb.c ], [ %i.ad, %bb.b ]
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !385
  %i.ao = icmp eq ptr %i.l, %i.an
  %i.ap = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %i.aq = load ptr, ptr %i.ap, align 8
  %i.ar = icmp eq ptr %i.r, %i.aq
  %i.as = select i1 %i.ao, i1 %i.ar, i1 false     ; 3 uses
  br i1 %i.as, label %.thread, label %bb.c, !prof !81

bb.c:                                             ; preds = %.lr.ph
  %i.at = add nuw i32 %.024, 1
  %i.au = and i32 %i.at, %i.k                     ; 3 uses
  %i.av = zext i32 %i.au to i64                   ; 2 uses
  %i.aw = getelementptr inbounds nuw [24 x i8], ptr %.sink2.i.i, i64 %i.av ; 2 uses
  %i.ax = lshr i64 %i.av, 5
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %.sink1.i.i, i64 %i.ax
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !94
  %i.ba = and i32 %i.au, 31
  %i.bb = lshr i32 %i.az, %i.ba
  %i.bc = trunc i32 %i.bb to i1
  br i1 %i.bc, label %.lr.ph, label %.thread, !prof !151, !llvm.loop !14

.thread:                                          ; preds = %.lr.ph, %bb.c, %bb.b, %bb.a
  %.lcssa28.sink = phi ptr [ %i.af, %bb.b ], [ null, %bb.a ], [ %i.aw, %bb.c ], [ %i.am, %.lr.ph ]
  %.2 = phi i1 [ false, %bb.b ], [ false, %bb.a ], [ %i.as, %bb.c ], [ %i.as, %.lr.ph ]
  store ptr %.lcssa28.sink, ptr %2, align 8, !tbaa !388
  ret i1 %.2
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZSt16__introsort_loopIPN4llvm3cfg6UpdateIPNS0_10BasicBlockEEElN9__gnu_cxx5__ops15_Iter_comp_iterIZNS1_15LegalizeUpdatesIS4_EEvNS0_8ArrayRefINS2_IT_EEEERNS0_15SmallVectorImplISD_EEbbEUlRKS5_SJ_E_EEEvSC_SC_T0_T1_(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr %3, ptr %4) local_unnamed_addr #3 comdat {
bb.a:
  %5 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter", align 8 ; 5 uses
  %6 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter", align 8 ; 5 uses
  %i.a = ptrtoint ptr %0 to i64                   ; 3 uses
  %i.b = ptrtoint ptr %1 to i64
  %i.c = sub i64 %i.b, %i.a                       ; 3 uses
  %i.d = icmp sgt i64 %i.c, 256
  br i1 %i.d, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.f = icmp eq i64 %2, 0
  br i1 %i.f, label %._crit_edge, label %.lr.ph33

bb.b:                                             ; preds = %.lr.ph33
  %i.g = icmp eq i64 %i.u, 0
  br i1 %i.g, label %._crit_edge, label %.lr.ph33, !llvm.loop !753

._crit_edge:                                      ; preds = %bb.b, %.lr.ph
  %.lcssa = phi i64 [ %i.c, %.lr.ph ], [ %i.aa, %bb.b ]
  %.023.lcssa = phi ptr [ %1, %.lr.ph ], [ %i.y, %bb.b ]
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  store ptr %3, ptr %6, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %4, ptr %i.h, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  store ptr %3, ptr %5, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %4, ptr %i.i, align 8
  %i.j = lshr exact i64 %.lcssa, 4                ; 2 uses
  %i.k = add nsw i64 %i.j, -2
  %i.l = lshr i64 %i.k, 1
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %._crit_edge
  %.014.i.i = phi i64 [ %i.l, %._crit_edge ], [ %i.n, %bb.c ] ; 4 uses
  %i.m = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.014.i.i ; 2 uses
  %.sroa.01.0.copyload.i.i = load ptr, ptr %i.m, align 8, !tbaa !148
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %.sroa.4.0.copyload.i.i = load i64, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !tbaa !202
  tail call void @_ZSt13__adjust_heapIPN4llvm3cfg6UpdateIPNS0_10BasicBlockEEElS5_N9__gnu_cxx5__ops15_Iter_comp_iterIZNS1_15LegalizeUpdatesIS4_EEvNS0_8ArrayRefINS2_IT_EEEERNS0_15SmallVectorImplISD_EEbbEUlRKS5_SJ_E_EEEvSC_T0_SM_T1_T2_(ptr noundef %0, i64 noundef %.014.i.i, i64 noundef %i.j, ptr %.sroa.01.0.copyload.i.i, i64 %.sroa.4.0.copyload.i.i, ptr noundef nonnull byval(%"struct.__gnu_cxx::__ops::_Iter_comp_iter") align 8 %5)
  %.not.i.i = icmp eq i64 %.014.i.i, 0
  %i.n = add nsw i64 %.014.i.i, -1
  br i1 %.not.i.i, label %_ZSt13__heap_selectIPN4llvm3cfg6UpdateIPNS0_10BasicBlockEEEN9__gnu_cxx5__ops15_Iter_comp_iterIZNS1_15LegalizeUpdatesIS4_EEvNS0_8ArrayRefINS2_IT_EEEERNS0_15SmallVectorImplISD_EEbbEUlRKS5_SJ_E_EEEvSC_SC_SC_T0_.exit, label %bb.c, !llvm.loop !754

_ZSt13__heap_selectIPN4llvm3cfg6UpdateIPNS0_10BasicBlockEEEN9__gnu_cxx5__ops15_Iter_comp_iterIZNS1_15LegalizeUpdatesIS4_EEvNS0_8ArrayRefINS2_IT_EEEERNS0_15SmallVectorImplISD_EEbbEUlRKS5_SJ_E_EEEvSC_SC_SC_T0_.exit: ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZSt13__heap_selectIPN4llvm3cfg6UpdateIPNS0_10BasicBlockEEEN9__gnu_cxx5__ops15_Iter_comp_iterIZNS1_15LegalizeUpdatesIS4_EEvNS0_8ArrayRefINS2_IT_EEEERNS0_15SmallVectorImplISD_EEbbEUlRKS5_SJ_E_EEEvSC_SC_SC_T0_.exit, %.lr.ph.i.i
  %.07.i.i = phi ptr [ %i.o, %.lr.ph.i.i ], [ %.023.lcssa, %_ZSt13__heap_selectIPN4llvm3cfg6UpdateIPNS0_10BasicBlockEEEN9__gnu_cxx5__ops15_Iter_comp_iterIZNS1_15LegalizeUpdatesIS4_EEvNS0_8ArrayRefINS2_IT_EEEERNS0_15SmallVectorImplISD_EEbbEUlRKS5_SJ_E_EEEvSC_SC_SC_T0_.exit ] ; 2 uses
  %i.o = getelementptr inbounds i8, ptr %.07.i.i, i64 -16 ; 4 uses
  %.sroa.01.0.copyload.i.i.i = load ptr, ptr %i.o, align 8, !tbaa !148
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds i8, ptr %.07.i.i, i64 -8
  %.sroa.4.0.copyload.i.i.i = load i64, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !tbaa !202
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.o, ptr noundef nonnull align 8 dereferenceable(16) %0, i64 16, i1 false), !tbaa.struct !389
  %i.p = ptrtoint ptr %i.o to i64
  %i.q = sub i64 %i.p, %i.a                       ; 2 uses
  %i.r = ashr exact i64 %i.q, 4
  tail call void @_ZSt13__adjust_heapIPN4llvm3cfg6UpdateIPNS0_10BasicBlockEEElS5_N9__gnu_cxx5__ops15_Iter_comp_iterIZNS1_15LegalizeUpdatesIS4_EEvNS0_8ArrayRefINS2_IT_EEEERNS0_15SmallVectorImplISD_EEbbEUlRKS5_SJ_E_EEEvSC_T0_SM_T1_T2_(ptr noundef nonnull %0, i64 noundef 0, i64 noundef %i.r, ptr %.sroa.01.0.copyload.i.i.i, i64 %.sroa.4.0.copyload.i.i.i, ptr noundef nonnull byval(%"struct.__gnu_cxx::__ops::_Iter_comp_iter") align 8 %6)
  %i.s = icmp sgt i64 %i.q, 16
  br i1 %i.s, label %.lr.ph.i.i, label %_ZSt14__partial_sortIPN4llvm3cfg6UpdateIPNS0_10BasicBlockEEEN9__gnu_cxx5__ops15_Iter_comp_iterIZNS1_15LegalizeUpdatesIS4_EEvNS0_8ArrayRefINS2_IT_EEEERNS0_15SmallVectorImplISD_EEbbEUlRKS5_SJ_E_EEEvSC_SC_SC_T0_.exit, !llvm.loop !755

_ZSt14__partial_sortIPN4llvm3cfg6UpdateIPNS0_10BasicBlockEEEN9__gnu_cxx5__ops15_Iter_comp_iterIZNS1_15LegalizeUpdatesIS4_EEvNS0_8ArrayRefINS2_IT_EEEERNS0_15SmallVectorImplISD_EEbbEUlRKS5_SJ_E_EEEvSC_SC_SC_T0_.exit: ; preds = %.lr.ph.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  br label %.loopexit

.lr.ph33:                                         ; preds = %.lr.ph, %bb.b
  %.0172232 = phi i64 [ %i.u, %bb.b ], [ %2, %.lr.ph ]
  %.02331 = phi ptr [ %i.y, %bb.b ], [ %1, %.lr.ph ] ; 3 uses
  %i.t = phi i64 [ %i.aa, %bb.b ], [ %i.c, %.lr.ph ]
  %i.u = add nsw i64 %.0172232, -1                ; 3 uses
  %i.v = lshr i64 %i.t, 5
  %i.w = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.v
  %i.x = getelementptr inbounds i8, ptr %.02331, i64 -16
  tail call void @_ZSt22__move_median_to_firstIPN4llvm3cfg6UpdateIPNS0_10BasicBlockEEEN9__gnu_cxx5__ops15_Iter_comp_iterIZNS1_15LegalizeUpdatesIS4_EEvNS0_8ArrayRefINS2_IT_EEEERNS0_15SmallVectorImplISD_EEbbEUlRKS5_SJ_E_EEEvSC_SC_SC_SC_T0_(ptr noundef %0, ptr noundef nonnull %i.e, ptr noundef %i.w, ptr noundef nonnull %i.x, ptr %3, ptr %4)
  %i.y = tail call noundef ptr @_ZSt21__unguarded_partitionIPN4llvm3cfg6UpdateIPNS0_10BasicBlockEEEN9__gnu_cxx5__ops15_Iter_comp_iterIZNS1_15LegalizeUpdatesIS4_EEvNS0_8ArrayRefINS2_IT_EEEERNS0_15SmallVectorImplISD_EEbbEUlRKS5_SJ_E_EEESC_SC_SC_SC_T0_(ptr noundef nonnull %i.e, ptr noundef %.02331, ptr noundef %0, ptr %3, ptr %4) ; 4 uses
  tail call void @_ZSt16__introsort_loopIPN4llvm3cfg6UpdateIPNS0_10BasicBlockEEElN9__gnu_cxx5__ops15_Iter_comp_iterIZNS1_15LegalizeUpdatesIS4_EEvNS0_8ArrayRefINS2_IT_EEEERNS0_15SmallVectorImplISD_EEbbEUlRKS5_SJ_E_EEEvSC_SC_T0_T1_(ptr noundef %i.y, ptr noundef %.02331, i64 noundef %i.u, ptr %3, ptr %4)
  %i.z = ptrtoint ptr %i.y to i64
  %i.aa = sub i64 %i.z, %i.a                      ; 3 uses
  %i.ab = icmp sgt i64 %i.aa, 256
  br i1 %i.ab, label %bb.b, label %.loopexit, !llvm.loop !753

.loopexit:                                        ; preds = %.lr.ph33, %bb.a, %_ZSt14__partial_sortIPN4llvm3cfg6UpdateIPNS0_10BasicBlockEEEN9__gnu_cxx5__ops15_Iter_comp_iterIZNS1_15LegalizeUpdatesIS4_EEvNS0_8ArrayRefINS2_IT_EEEERNS0_15SmallVectorImplISD_EEbbEUlRKS5_SJ_E_EEEvSC_SC_SC_T0_.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZSt13__adjust_heapIPN4llvm3cfg6UpdateIPNS0_10BasicBlockEEElS5_N9__gnu_cxx5__ops15_Iter_comp_iterIZNS1_15LegalizeUpdatesIS4_EEvNS0_8ArrayRefINS2_IT_EEEERNS0_15SmallVectorImplISD_EEbbEUlRKS5_SJ_E_EEEvSC_T0_SM_T1_T2_(ptr noundef %0, i64 noundef %1, i64 noundef %2, ptr %3, i64 %4, ptr noundef byval(%"struct.__gnu_cxx::__ops::_Iter_comp_iter") align 8 %5) local_unnamed_addr #3 comdat {
bb.a:
  %6 = alloca %"struct.std::pair.338", align 8    ; 5 uses
  %7 = alloca %"struct.std::pair.338", align 8    ; 5 uses
  %8 = alloca %"struct.std::pair.338", align 8    ; 5 uses
  %9 = alloca %"struct.std::pair.338", align 8    ; 5 uses
  %i.a = add nsw i64 %2, -1
  %i.b = sdiv i64 %i.a, 2                         ; 2 uses
  %i.c = icmp slt i64 %1, %i.b
  br i1 %i.c, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.d = load ptr, ptr %5, align 8, !tbaa !761, !nonnull !54, !align !68 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.f = getelementptr inbounds nuw i8, ptr %9, i64 8
end_hunk_2
begin_hunk_3_@_ZSt22__move_median_to_firstIPN4llvm3cfg6UpdateIPNS0_10BasicBlockEEEN9__gnu_cxx5__ops15_Iter_comp_iterIZNS1_15LegalizeUpdatesIS4_EEvNS0_8ArrayRefINS2_IT_EEEERNS0_15SmallVectorImplISD_EEbbEUlRKS5_SJ_E_EEEvSC_SC_SC_SC_T0_:bb.a
  %i.cr = icmp slt i32 %i.cp, %i.cq
  %i.cs = icmp sgt i32 %i.cp, %i.cq
  %i.ct = select i1 %i.co, i1 %i.cr, i1 %i.cs
  br i1 %i.ct, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull align 8 dereferenceable(16) %0, i64 16, i1 false), !tbaa.struct !389
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %3, i64 16, i1 false), !tbaa.struct !389
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) %7, i64 16, i1 false), !tbaa.struct !389
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  br label %bb.l

bb.k:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 8 dereferenceable(16) %0, i64 16, i1 false), !tbaa.struct !389
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %2, i64 16, i1 false), !tbaa.struct !389
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %6, i64 16, i1 false), !tbaa.struct !389
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  br label %bb.l

bb.l:                                             ; preds = %bb.h, %bb.k, %bb.j, %bb.c, %bb.f, %bb.e
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef ptr @_ZSt21__unguarded_partitionIPN4llvm3cfg6UpdateIPNS0_10BasicBlockEEEN9__gnu_cxx5__ops15_Iter_comp_iterIZNS1_15LegalizeUpdatesIS4_EEvNS0_8ArrayRefINS2_IT_EEEERNS0_15SmallVectorImplISD_EEbbEUlRKS5_SJ_E_EEESC_SC_SC_SC_T0_(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr %3, ptr %4) local_unnamed_addr #3 comdat {
bb.a:
  %5 = alloca %"class.llvm::cfg::Update", align 8 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 16 uses
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 8 uses
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 8 uses
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 104 ; 8 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.v, %bb.a
  %.013 = phi ptr [ %1, %bb.a ], [ %.114, %bb.v ]
  %.0 = phi ptr [ %0, %bb.a ], [ %i.in, %bb.v ]
  br label %bb.c

bb.c:                                             ; preds = %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapISt4pairIPNS_10BasicBlockES4_EiLj4ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_iEEEES5_iS7_SA_E24lookupOrInsertIntoBucketIS5_JEEES2_IPSA_bEOT_DpOT0_.exit, %bb.b
  %.1 = phi ptr [ %.0, %bb.b ], [ %i.in, %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapISt4pairIPNS_10BasicBlockES4_EiLj4ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_iEEEES5_iS7_SA_E24lookupOrInsertIntoBucketIS5_JEEES2_IPSA_bEOT_DpOT0_.exit ] ; 7 uses
  %i.f = load ptr, ptr %.1, align 8, !tbaa !383   ; 5 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.1, i64 8
  %.0.copyload.i.i.i.i.i.i = load i64, ptr %i.g, align 8
  %i.h = and i64 %.0.copyload.i.i.i.i.i.i, -8     ; 3 uses
  %i.i = inttoptr i64 %i.h to ptr                 ; 3 uses
  %i.j = load i32, ptr %3, align 8, !noalias !799 ; 3 uses
  %i.k = and i32 %i.j, 1                          ; 2 uses
  %.not.i.i.i.i19 = icmp eq i32 %i.k, 0           ; 3 uses
  %i.l = load ptr, ptr %i.a, align 8, !noalias !799 ; 2 uses
  %i.m = load ptr, ptr %i.b, align 8, !noalias !799 ; 2 uses
  %i.n = load i32, ptr %i.c, align 8, !noalias !799 ; 2 uses
  %.sink2.i.i.i.i20 = select i1 %.not.i.i.i.i19, ptr %i.l, ptr %i.a ; 3 uses
  %.sink1.i.i.i.i21 = select i1 %.not.i.i.i.i19, ptr %i.m, ptr %i.d ; 3 uses
  %.sink.i.i.i.i22 = select i1 %.not.i.i.i.i19, i32 %i.n, i32 4 ; 4 uses
  %i.o = icmp eq i32 %.sink.i.i.i.i22, 0
  br i1 %i.o, label %.loopexit.i23, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.p = add i32 %.sink.i.i.i.i22, -1             ; 2 uses
  %i.q = ptrtoint ptr %i.f to i64
  %i.r = mul i64 %i.q, -4658895280553007687       ; 2 uses
  %i.s = lshr i64 %i.r, 31
  %i.t = xor i64 %i.s, %i.r
  %i.u = mul i64 %i.h, -4658895280553007687       ; 2 uses
  %i.v = lshr i64 %i.u, 31
  %i.w = xor i64 %i.v, %i.u
  %i.x = shl i64 %i.t, 32
  %i.y = and i64 %i.w, 4294967295
  %i.z = or disjoint i64 %i.y, %i.x
  %i.aa = mul i64 %i.z, -4658895280553007687      ; 2 uses
  %i.ab = lshr i64 %i.aa, 31
  %i.ac = xor i64 %i.ab, %i.aa
  %i.ad = trunc i64 %i.ac to i32
  %i.ae = and i32 %i.p, %i.ad                     ; 3 uses
  %i.af = zext i32 %i.ae to i64                   ; 2 uses
  %i.ag = getelementptr inbounds nuw [24 x i8], ptr %.sink2.i.i.i.i20, i64 %i.af ; 2 uses
  %i.ah = lshr i64 %i.af, 5
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %.sink1.i.i.i.i21, i64 %i.ah
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !94
  %i.ak = and i32 %i.ae, 31
  %i.al = lshr i32 %i.aj, %i.ak
  %i.am = trunc i32 %i.al to i1
  br i1 %i.am, label %.lr.ph.i.i38, label %.loopexit.i23, !prof !150

.lr.ph.i.i38:                                     ; preds = %bb.d, %bb.e
  %i.an = phi ptr [ %i.ax, %bb.e ], [ %i.ag, %bb.d ] ; 3 uses
  %.024.i.i39 = phi i32 [ %i.av, %bb.e ], [ %i.ae, %bb.d ]
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !385
  %i.ap = icmp eq ptr %i.f, %i.ao
  %i.aq = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %i.ar = load ptr, ptr %i.aq, align 8
  %i.as = icmp eq ptr %i.ar, %i.i
  %i.at = select i1 %i.ap, i1 %i.as, i1 false
  br i1 %i.at, label %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapISt4pairIPNS_10BasicBlockES4_EiLj4ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_iEEEES5_iS7_SA_E24lookupOrInsertIntoBucketIS5_JEEES2_IPSA_bEOT_DpOT0_.exit40, label %bb.e, !prof !81

bb.e:                                             ; preds = %.lr.ph.i.i38
  %i.au = add nuw i32 %.024.i.i39, 1
  %i.av = and i32 %i.au, %i.p                     ; 3 uses
  %i.aw = zext i32 %i.av to i64                   ; 2 uses
  %i.ax = getelementptr inbounds nuw [24 x i8], ptr %.sink2.i.i.i.i20, i64 %i.aw ; 2 uses
  %i.ay = lshr i64 %i.aw, 5
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %.sink1.i.i.i.i21, i64 %i.ay
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !94
  %i.bb = and i32 %i.av, 31
  %i.bc = lshr i32 %i.ba, %i.bb
  %i.bd = trunc i32 %i.bc to i1
  br i1 %i.bd, label %.lr.ph.i.i38, label %.loopexit.i23, !prof !151, !llvm.loop !14

.loopexit.i23:                                    ; preds = %bb.e, %bb.d, %bb.c
  %.lcssa28.sink.i.ph.i24 = phi ptr [ %i.ag, %bb.d ], [ null, %bb.c ], [ %i.ax, %bb.e ]
  %i.be = shl i32 %i.j, 1
  %i.bf = and i32 %i.be, -4
  %i.bg = add i32 %i.bf, 4
  %i.bh = mul i32 %.sink.i.i.i.i22, 3
  %.not.i.i25 = icmp ult i32 %i.bg, %i.bh
  br i1 %.not.i.i25, label %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapISt4pairIPNS_10BasicBlockES4_EiLj4ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_iEEEES5_iS7_SA_E22findBucketForInsertionIS5_EEPSA_RKT_SE_.exit.i31, label %bb.f, !prof !81

bb.f:                                             ; preds = %.loopexit.i23
  %i.bi = shl i32 %.sink.i.i.i.i22, 1
  tail call void @_ZN4llvm12DenseMapBaseINS_13SmallDenseMapISt4pairIPNS_10BasicBlockES4_EiLj4ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_iEEEES5_iS7_SA_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %3, i32 noundef %i.bi)
  %i.bj = load i32, ptr %3, align 8, !noalias !800
  %i.bk = and i32 %i.bj, 1
  %.not.i.i.i85 = icmp eq i32 %i.bk, 0            ; 3 uses
  %i.bl = load ptr, ptr %i.a, align 8, !noalias !800
  %i.bm = load ptr, ptr %i.b, align 8, !noalias !800
  %i.bn = load i32, ptr %i.c, align 8, !noalias !800
  %.sink2.i.i.i86 = select i1 %.not.i.i.i85, ptr %i.bl, ptr %i.a ; 5 uses
  %.sink1.i.i.i87 = select i1 %.not.i.i.i85, ptr %i.bm, ptr %i.d ; 5 uses
  %.sink.i.i.i88 = select i1 %.not.i.i.i85, i32 %i.bn, i32 4 ; 2 uses
  %i.bo = icmp ne i32 %.sink.i.i.i88, 0
  tail call void @llvm.assume(i1 %i.bo)
  %i.bp = add i32 %.sink.i.i.i88, -1              ; 2 uses
  %i.bq = ptrtoint ptr %i.f to i64
  %i.br = mul i64 %i.bq, -4658895280553007687     ; 2 uses
  %i.bs = lshr i64 %i.br, 31
  %i.bt = xor i64 %i.bs, %i.br
  %i.bu = mul i64 %i.h, -4658895280553007687      ; 2 uses
  %i.bv = lshr i64 %i.bu, 31
  %i.bw = xor i64 %i.bv, %i.bu
  %i.bx = shl i64 %i.bt, 32
  %i.by = and i64 %i.bw, 4294967295
  %i.bz = or disjoint i64 %i.by, %i.bx
  %i.ca = mul i64 %i.bz, -4658895280553007687     ; 2 uses
  %i.cb = lshr i64 %i.ca, 31
  %i.cc = xor i64 %i.cb, %i.ca
  %i.cd = trunc i64 %i.cc to i32
  %i.ce = and i32 %i.bp, %i.cd                    ; 3 uses
  %i.cf = zext i32 %i.ce to i64                   ; 2 uses
  %i.cg = getelementptr inbounds nuw [24 x i8], ptr %.sink2.i.i.i86, i64 %i.cf ; 2 uses
  %i.ch = lshr i64 %i.cf, 5
  %i.ci = getelementptr inbounds nuw [4 x i8], ptr %.sink1.i.i.i87, i64 %i.ch
  %i.cj = load i32, ptr %i.ci, align 4, !tbaa !94
  %i.ck = and i32 %i.ce, 31
  %i.cl = lshr i32 %i.cj, %i.ck
  %i.cm = trunc i32 %i.cl to i1
  br i1 %i.cm, label %.lr.ph.i91, label %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapISt4pairIPNS_10BasicBlockES4_EiLj4ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_iEEEES5_iS7_SA_E22findBucketForInsertionIS5_EEPSA_RKT_SE_.exit.i31, !prof !150

.lr.ph.i91:                                       ; preds = %bb.f, %bb.g
  %i.cn = phi ptr [ %i.cx, %bb.g ], [ %i.cg, %bb.f ] ; 3 uses
  %.024.i92 = phi i32 [ %i.cv, %bb.g ], [ %i.ce, %bb.f ]
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !385
  %i.cp = icmp eq ptr %i.f, %i.co
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cn, i64 8
  %i.cr = load ptr, ptr %i.cq, align 8
  %i.cs = icmp eq ptr %i.cr, %i.i
  %i.ct = select i1 %i.cp, i1 %i.cs, i1 false
  br i1 %i.ct, label %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapISt4pairIPNS_10BasicBlockES4_EiLj4ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_iEEEES5_iS7_SA_E22findBucketForInsertionIS5_EEPSA_RKT_SE_.exit.i31, label %bb.g, !prof !81

bb.g:                                             ; preds = %.lr.ph.i91
  %i.cu = add nuw i32 %.024.i92, 1
  %i.cv = and i32 %i.cu, %i.bp                    ; 3 uses
  %i.cw = zext i32 %i.cv to i64                   ; 2 uses
  %i.cx = getelementptr inbounds nuw [24 x i8], ptr %.sink2.i.i.i86, i64 %i.cw ; 2 uses
  %i.cy = lshr i64 %i.cw, 5
  %i.cz = getelementptr inbounds nuw [4 x i8], ptr %.sink1.i.i.i87, i64 %i.cy
  %i.da = load i32, ptr %i.cz, align 4, !tbaa !94
  %i.db = and i32 %i.cv, 31
  %i.dc = lshr i32 %i.da, %i.db
  %i.dd = trunc i32 %i.dc to i1
  br i1 %i.dd, label %.lr.ph.i91, label %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapISt4pairIPNS_10BasicBlockES4_EiLj4ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_iEEEES5_iS7_SA_E22findBucketForInsertionIS5_EEPSA_RKT_SE_.exit.i31, !prof !151, !llvm.loop !14

_ZN4llvm12DenseMapBaseINS_13SmallDenseMapISt4pairIPNS_10BasicBlockES4_EiLj4ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_iEEEES5_iS7_SA_E22findBucketForInsertionIS5_EEPSA_RKT_SE_.exit.i31: ; preds = %bb.g, %.lr.ph.i91, %bb.f, %.loopexit.i23
  %.pre-phi174 = phi ptr [ %.sink2.i.i.i.i20, %.loopexit.i23 ], [ %.sink2.i.i.i86, %bb.f ], [ %.sink2.i.i.i86, %.lr.ph.i91 ], [ %.sink2.i.i.i86, %bb.g ]
  %.pre-phi = phi ptr [ %.sink1.i.i.i.i21, %.loopexit.i23 ], [ %.sink1.i.i.i87, %bb.f ], [ %.sink1.i.i.i87, %.lr.ph.i91 ], [ %.sink1.i.i.i87, %bb.g ]
  %i.de = phi ptr [ %.lcssa28.sink.i.ph.i24, %.loopexit.i23 ], [ %i.cg, %bb.f ], [ %i.cx, %bb.g ], [ %i.cn, %.lr.ph.i91 ] ; 5 uses
  %i.df = ptrtoint ptr %i.de to i64
  %i.dg = ptrtoint ptr %.pre-phi174 to i64
  %i.dh = sub i64 %i.df, %i.dg
  %i.di = sdiv exact i64 %i.dh, 24                ; 2 uses
  %i.dj = trunc i64 %i.di to i32
  %i.dk = and i32 %i.dj, 31
  %i.dl = shl nuw i32 1, %i.dk
  %i.dm = lshr i64 %i.di, 5
  %i.dn = getelementptr inbounds nuw [4 x i8], ptr %.pre-phi, i64 %i.dm ; 2 uses
  %i.do = load i32, ptr %i.dn, align 4, !tbaa !94
  %i.dp = or i32 %i.dl, %i.do
  store i32 %i.dp, ptr %i.dn, align 4, !tbaa !94
  %i.dq = load i32, ptr %3, align 8               ; 2 uses
  %6 = and i32 %i.dq, -2
  %i.dr = add i32 %6, 2
  %7 = and i32 %i.dq, 1
  %8 = or disjoint i32 %i.dr, %7
  store i32 %8, ptr %3, align 8
  store ptr %i.f, ptr %i.de, align 8
  %.sroa.6121.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.de, i64 8
  store ptr %i.i, ptr %.sroa.6121.0..sroa_idx, align 8
  %i.ds = getelementptr inbounds nuw i8, ptr %i.de, i64 16
  store i32 0, ptr %i.ds, align 8, !tbaa !94
  %.pre = load i32, ptr %3, align 8, !noalias !801 ; 2 uses
  %.pre164 = load ptr, ptr %i.a, align 8, !noalias !801
  %.pre165 = load ptr, ptr %i.b, align 8, !noalias !801
  %.pre166 = load i32, ptr %i.c, align 8, !noalias !801
  %.pre175 = and i32 %.pre, 1
  br label %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapISt4pairIPNS_10BasicBlockES4_EiLj4ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_iEEEES5_iS7_SA_E24lookupOrInsertIntoBucketIS5_JEEES2_IPSA_bEOT_DpOT0_.exit40

_ZN4llvm12DenseMapBaseINS_13SmallDenseMapISt4pairIPNS_10BasicBlockES4_EiLj4ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_iEEEES5_iS7_SA_E24lookupOrInsertIntoBucketIS5_JEEES2_IPSA_bEOT_DpOT0_.exit40: ; preds = %.lr.ph.i.i38, %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapISt4pairIPNS_10BasicBlockES4_EiLj4ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_iEEEES5_iS7_SA_E22findBucketForInsertionIS5_EEPSA_RKT_SE_.exit.i31
  %.pre-phi176 = phi i32 [ %.pre175, %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapISt4pairIPNS_10BasicBlockES4_EiLj4ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_iEEEES5_iS7_SA_E22findBucketForInsertionIS5_EEPSA_RKT_SE_.exit.i31 ], [ %i.k, %.lr.ph.i.i38 ]
  %i.dt = phi i32 [ %.pre166, %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapISt4pairIPNS_10BasicBlockES4_EiLj4ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_iEEEES5_iS7_SA_E22findBucketForInsertionIS5_EEPSA_RKT_SE_.exit.i31 ], [ %i.n, %.lr.ph.i.i38 ]
  %i.du = phi ptr [ %.pre165, %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapISt4pairIPNS_10BasicBlockES4_EiLj4ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_iEEEES5_iS7_SA_E22findBucketForInsertionIS5_EEPSA_RKT_SE_.exit.i31 ], [ %i.m, %.lr.ph.i.i38 ]
  %i.dv = phi ptr [ %.pre164, %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapISt4pairIPNS_10BasicBlockES4_EiLj4ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_iEEEES5_iS7_SA_E22findBucketForInsertionIS5_EEPSA_RKT_SE_.exit.i31 ], [ %i.l, %.lr.ph.i.i38 ]
  %i.dw = phi i32 [ %.pre, %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapISt4pairIPNS_10BasicBlockES4_EiLj4ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_iEEEES5_iS7_SA_E22findBucketForInsertionIS5_EEPSA_RKT_SE_.exit.i31 ], [ %i.j, %.lr.ph.i.i38 ]
  %.sroa.0.0.i34 = phi ptr [ %i.de, %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapISt4pairIPNS_10BasicBlockES4_EiLj4ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_iEEEES5_iS7_SA_E22findBucketForInsertionIS5_EEPSA_RKT_SE_.exit.i31 ], [ %i.an, %.lr.ph.i.i38 ]
  %i.dx = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i34, i64 16
  %i.dy = load ptr, ptr %2, align 8, !tbaa !383   ; 5 uses
  %.0.copyload.i.i.i.i9.i.i = load i64, ptr %i.e, align 8
  %i.dz = and i64 %.0.copyload.i.i.i.i9.i.i, -8   ; 3 uses
  %i.ea = inttoptr i64 %i.dz to ptr               ; 3 uses
  %.not.i.i.i.i = icmp eq i32 %.pre-phi176, 0     ; 3 uses
  %.sink2.i.i.i.i = select i1 %.not.i.i.i.i, ptr %i.dv, ptr %i.a ; 3 uses
  %.sink1.i.i.i.i = select i1 %.not.i.i.i.i, ptr %i.du, ptr %i.d ; 3 uses
  %.sink.i.i.i.i = select i1 %.not.i.i.i.i, i32 %i.dt, i32 4 ; 4 uses
  %i.eb = icmp eq i32 %.sink.i.i.i.i, 0
  br i1 %i.eb, label %.loopexit.i, label %bb.h

bb.h:                                             ; preds = %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapISt4pairIPNS_10BasicBlockES4_EiLj4ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_iEEEES5_iS7_SA_E24lookupOrInsertIntoBucketIS5_JEEES2_IPSA_bEOT_DpOT0_.exit40
  %i.ec = add i32 %.sink.i.i.i.i, -1              ; 2 uses
  %i.ed = ptrtoint ptr %i.dy to i64
  %i.ee = mul i64 %i.ed, -4658895280553007687     ; 2 uses
  %i.ef = lshr i64 %i.ee, 31
  %i.eg = xor i64 %i.ef, %i.ee
  %i.eh = mul i64 %i.dz, -4658895280553007687     ; 2 uses
  %i.ei = lshr i64 %i.eh, 31
  %i.ej = xor i64 %i.ei, %i.eh
  %i.ek = shl i64 %i.eg, 32
  %i.el = and i64 %i.ej, 4294967295
  %i.em = or disjoint i64 %i.el, %i.ek
  %i.en = mul i64 %i.em, -4658895280553007687     ; 2 uses
  %i.eo = lshr i64 %i.en, 31
  %i.ep = xor i64 %i.eo, %i.en
  %i.eq = trunc i64 %i.ep to i32
  %i.er = and i32 %i.ec, %i.eq                    ; 3 uses
  %i.es = zext i32 %i.er to i64                   ; 2 uses
  %i.et = getelementptr inbounds nuw [24 x i8], ptr %.sink2.i.i.i.i, i64 %i.es ; 2 uses
  %i.eu = lshr i64 %i.es, 5
  %i.ev = getelementptr inbounds nuw [4 x i8], ptr %.sink1.i.i.i.i, i64 %i.eu
  %i.ew = load i32, ptr %i.ev, align 4, !tbaa !94
  %i.ex = and i32 %i.er, 31
  %i.ey = lshr i32 %i.ew, %i.ex
  %i.ez = trunc i32 %i.ey to i1
  br i1 %i.ez, label %.lr.ph.i.i, label %.loopexit.i, !prof !150

.lr.ph.i.i:                                       ; preds = %bb.h, %bb.i
  %i.fa = phi ptr [ %i.fk, %bb.i ], [ %i.et, %bb.h ] ; 3 uses
  %.024.i.i = phi i32 [ %i.fi, %bb.i ], [ %i.er, %bb.h ]
  %i.fb = load ptr, ptr %i.fa, align 8, !tbaa !385
  %i.fc = icmp eq ptr %i.dy, %i.fb
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fa, i64 8
  %i.fe = load ptr, ptr %i.fd, align 8
  %i.ff = icmp eq ptr %i.fe, %i.ea
  %i.fg = select i1 %i.fc, i1 %i.ff, i1 false
  br i1 %i.fg, label %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapISt4pairIPNS_10BasicBlockES4_EiLj4ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_iEEEES5_iS7_SA_E24lookupOrInsertIntoBucketIS5_JEEES2_IPSA_bEOT_DpOT0_.exit.loopexit, label %bb.i, !prof !81

bb.i:                                             ; preds = %.lr.ph.i.i
  %i.fh = add nuw i32 %.024.i.i, 1
  %i.fi = and i32 %i.fh, %i.ec                    ; 3 uses
  %i.fj = zext i32 %i.fi to i64                   ; 2 uses
  %i.fk = getelementptr inbounds nuw [24 x i8], ptr %.sink2.i.i.i.i, i64 %i.fj ; 2 uses
  %i.fl = lshr i64 %i.fj, 5
  %i.fm = getelementptr inbounds nuw [4 x i8], ptr %.sink1.i.i.i.i, i64 %i.fl
  %i.fn = load i32, ptr %i.fm, align 4, !tbaa !94
  %i.fo = and i32 %i.fi, 31
  %i.fp = lshr i32 %i.fn, %i.fo
  %i.fq = trunc i32 %i.fp to i1
  br i1 %i.fq, label %.lr.ph.i.i, label %.loopexit.i, !prof !151, !llvm.loop !14

.loopexit.i:                                      ; preds = %bb.i, %bb.h, %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapISt4pairIPNS_10BasicBlockES4_EiLj4ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_iEEEES5_iS7_SA_E24lookupOrInsertIntoBucketIS5_JEEES2_IPSA_bEOT_DpOT0_.exit40
  %.lcssa28.sink.i.ph.i = phi ptr [ %i.et, %bb.h ], [ null, %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapISt4pairIPNS_10BasicBlockES4_EiLj4ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_iEEEES5_iS7_SA_E24lookupOrInsertIntoBucketIS5_JEEES2_IPSA_bEOT_DpOT0_.exit40 ], [ %i.fk, %bb.i ]
  %i.fr = shl i32 %i.dw, 1
  %i.fs = and i32 %i.fr, -4
  %i.ft = add i32 %i.fs, 4
  %i.fu = mul i32 %.sink.i.i.i.i, 3
  %.not.i.i = icmp ult i32 %i.ft, %i.fu
  br i1 %.not.i.i, label %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapISt4pairIPNS_10BasicBlockES4_EiLj4ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_iEEEES5_iS7_SA_E22findBucketForInsertionIS5_EEPSA_RKT_SE_.exit.i, label %bb.j, !prof !81

bb.j:                                             ; preds = %.loopexit.i
  %i.fv = shl i32 %.sink.i.i.i.i, 1
  tail call void @_ZN4llvm12DenseMapBaseINS_13SmallDenseMapISt4pairIPNS_10BasicBlockES4_EiLj4ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_iEEEES5_iS7_SA_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %3, i32 noundef %i.fv)
  %i.fw = load i32, ptr %3, align 8, !noalias !802
  %i.fx = and i32 %i.fw, 1
  %.not.i.i.i = icmp eq i32 %i.fx, 0              ; 3 uses
  %i.fy = load ptr, ptr %i.a, align 8, !noalias !802
  %i.fz = load ptr, ptr %i.b, align 8, !noalias !802
  %i.ga = load i32, ptr %i.c, align 8, !noalias !802
  %.sink2.i.i.i = select i1 %.not.i.i.i, ptr %i.fy, ptr %i.a ; 5 uses
  %.sink1.i.i.i = select i1 %.not.i.i.i, ptr %i.fz, ptr %i.d ; 5 uses
  %.sink.i.i.i = select i1 %.not.i.i.i, i32 %i.ga, i32 4 ; 2 uses
  %i.gb = icmp ne i32 %.sink.i.i.i, 0
  tail call void @llvm.assume(i1 %i.gb)
  %i.gc = add i32 %.sink.i.i.i, -1                ; 2 uses
  %i.gd = ptrtoint ptr %i.dy to i64
  %i.ge = mul i64 %i.gd, -4658895280553007687     ; 2 uses
  %i.gf = lshr i64 %i.ge, 31
  %i.gg = xor i64 %i.gf, %i.ge
  %i.gh = mul i64 %i.dz, -4658895280553007687     ; 2 uses
  %i.gi = lshr i64 %i.gh, 31
  %i.gj = xor i64 %i.gi, %i.gh
  %i.gk = shl i64 %i.gg, 32
  %i.gl = and i64 %i.gj, 4294967295
  %i.gm = or disjoint i64 %i.gl, %i.gk
  %i.gn = mul i64 %i.gm, -4658895280553007687     ; 2 uses
  %i.go = lshr i64 %i.gn, 31
  %i.gp = xor i64 %i.go, %i.gn
  %i.gq = trunc i64 %i.gp to i32
  %i.gr = and i32 %i.gc, %i.gq                    ; 3 uses
  %i.gs = zext i32 %i.gr to i64                   ; 2 uses
  %i.gt = getelementptr inbounds nuw [24 x i8], ptr %.sink2.i.i.i, i64 %i.gs ; 2 uses
  %i.gu = lshr i64 %i.gs, 5
  %i.gv = getelementptr inbounds nuw [4 x i8], ptr %.sink1.i.i.i, i64 %i.gu
  %i.gw = load i32, ptr %i.gv, align 4, !tbaa !94
  %i.gx = and i32 %i.gr, 31
  %i.gy = lshr i32 %i.gw, %i.gx
  %i.gz = trunc i32 %i.gy to i1
  br i1 %i.gz, label %.lr.ph.i, label %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapISt4pairIPNS_10BasicBlockES4_EiLj4ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_iEEEES5_iS7_SA_E22findBucketForInsertionIS5_EEPSA_RKT_SE_.exit.i, !prof !150

.lr.ph.i:                                         ; preds = %bb.j, %bb.k
  %i.ha = phi ptr [ %i.hk, %bb.k ], [ %i.gt, %bb.j ] ; 3 uses
  %.024.i = phi i32 [ %i.hi, %bb.k ], [ %i.gr, %bb.j ]
  %i.hb = load ptr, ptr %i.ha, align 8, !tbaa !385
  %i.hc = icmp eq ptr %i.dy, %i.hb
  %i.hd = getelementptr inbounds nuw i8, ptr %i.ha, i64 8
  %i.he = load ptr, ptr %i.hd, align 8
  %i.hf = icmp eq ptr %i.he, %i.ea
  %i.hg = select i1 %i.hc, i1 %i.hf, i1 false
  br i1 %i.hg, label %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapISt4pairIPNS_10BasicBlockES4_EiLj4ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_iEEEES5_iS7_SA_E22findBucketForInsertionIS5_EEPSA_RKT_SE_.exit.i, label %bb.k, !prof !81

bb.k:                                             ; preds = %.lr.ph.i
  %i.hh = add nuw i32 %.024.i, 1
  %i.hi = and i32 %i.hh, %i.gc                    ; 3 uses
  %i.hj = zext i32 %i.hi to i64                   ; 2 uses
  %i.hk = getelementptr inbounds nuw [24 x i8], ptr %.sink2.i.i.i, i64 %i.hj ; 2 uses
  %i.hl = lshr i64 %i.hj, 5
  %i.hm = getelementptr inbounds nuw [4 x i8], ptr %.sink1.i.i.i, i64 %i.hl
  %i.hn = load i32, ptr %i.hm, align 4, !tbaa !94
  %i.ho = and i32 %i.hi, 31
  %i.hp = lshr i32 %i.hn, %i.ho
  %i.hq = trunc i32 %i.hp to i1
  br i1 %i.hq, label %.lr.ph.i, label %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapISt4pairIPNS_10BasicBlockES4_EiLj4ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_iEEEES5_iS7_SA_E22findBucketForInsertionIS5_EEPSA_RKT_SE_.exit.i, !prof !151, !llvm.loop !14

_ZN4llvm12DenseMapBaseINS_13SmallDenseMapISt4pairIPNS_10BasicBlockES4_EiLj4ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_iEEEES5_iS7_SA_E22findBucketForInsertionIS5_EEPSA_RKT_SE_.exit.i: ; preds = %bb.k, %.lr.ph.i, %bb.j, %.loopexit.i
  %.pre-phi178 = phi ptr [ %.sink2.i.i.i.i, %.loopexit.i ], [ %.sink2.i.i.i, %bb.j ], [ %.sink2.i.i.i, %.lr.ph.i ], [ %.sink2.i.i.i, %bb.k ]
  %.pre-phi177 = phi ptr [ %.sink1.i.i.i.i, %.loopexit.i ], [ %.sink1.i.i.i, %bb.j ], [ %.sink1.i.i.i, %.lr.ph.i ], [ %.sink1.i.i.i, %bb.k ]
  %i.hr = phi ptr [ %.lcssa28.sink.i.ph.i, %.loopexit.i ], [ %i.gt, %bb.j ], [ %i.hk, %bb.k ], [ %i.ha, %.lr.ph.i ] ; 4 uses
  %i.hs = ptrtoint ptr %i.hr to i64
  %i.ht = ptrtoint ptr %.pre-phi178 to i64
  %i.hu = sub i64 %i.hs, %i.ht
  %i.hv = sdiv exact i64 %i.hu, 24                ; 2 uses
  %i.hw = trunc i64 %i.hv to i32
  %i.hx = and i32 %i.hw, 31
  %i.hy = shl nuw i32 1, %i.hx
  %i.hz = lshr i64 %i.hv, 5
  %i.ia = getelementptr inbounds nuw [4 x i8], ptr %.pre-phi177, i64 %i.hz ; 2 uses
  %i.ib = load i32, ptr %i.ia, align 4, !tbaa !94
  %i.ic = or i32 %i.hy, %i.ib
  store i32 %i.ic, ptr %i.ia, align 4, !tbaa !94
  %i.id = load i32, ptr %3, align 8               ; 2 uses
  %9 = and i32 %i.id, -2
  %i.ie = add i32 %9, 2
  %10 = and i32 %i.id, 1
  %11 = or disjoint i32 %i.ie, %10
  store i32 %11, ptr %3, align 8
  store ptr %i.dy, ptr %i.hr, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.hr, i64 8
  store ptr %i.ea, ptr %.sroa.6.0..sroa_idx, align 8
  %i.if = getelementptr inbounds nuw i8, ptr %i.hr, i64 16
  store i32 0, ptr %i.if, align 8, !tbaa !94
  br label %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapISt4pairIPNS_10BasicBlockES4_EiLj4ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_iEEEES5_iS7_SA_E24lookupOrInsertIntoBucketIS5_JEEES2_IPSA_bEOT_DpOT0_.exit

_ZN4llvm12DenseMapBaseINS_13SmallDenseMapISt4pairIPNS_10BasicBlockES4_EiLj4ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_iEEEES5_iS7_SA_E24lookupOrInsertIntoBucketIS5_JEEES2_IPSA_bEOT_DpOT0_.exit.loopexit: ; preds = %.lr.ph.i.i
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.fa, i64 16
  %.pre167 = load i32, ptr %.phi.trans.insert, align 4, !tbaa !94
  br label %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapISt4pairIPNS_10BasicBlockES4_EiLj4ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_iEEEES5_iS7_SA_E24lookupOrInsertIntoBucketIS5_JEEES2_IPSA_bEOT_DpOT0_.exit

_ZN4llvm12DenseMapBaseINS_13SmallDenseMapISt4pairIPNS_10BasicBlockES4_EiLj4ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_iEEEES5_iS7_SA_E24lookupOrInsertIntoBucketIS5_JEEES2_IPSA_bEOT_DpOT0_.exit: ; preds = %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapISt4pairIPNS_10BasicBlockES4_EiLj4ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_iEEEES5_iS7_SA_E24lookupOrInsertIntoBucketIS5_JEEES2_IPSA_bEOT_DpOT0_.exit.loopexit, %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapISt4pairIPNS_10BasicBlockES4_EiLj4ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_iEEEES5_iS7_SA_E22findBucketForInsertionIS5_EEPSA_RKT_SE_.exit.i
  %i.ig = phi i32 [ 0, %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapISt4pairIPNS_10BasicBlockES4_EiLj4ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_iEEEES5_iS7_SA_E22findBucketForInsertionIS5_EEPSA_RKT_SE_.exit.i ], [ %.pre167, %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapISt4pairIPNS_10BasicBlockES4_EiLj4ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_iEEEES5_iS7_SA_E24lookupOrInsertIntoBucketIS5_JEEES2_IPSA_bEOT_DpOT0_.exit.loopexit ] ; 2 uses
  %i.ih = load i8, ptr %4, align 1, !tbaa !137, !range !53, !noundef !54
  %i.ii = trunc nuw i8 %i.ih to i1
  %i.ij = load i32, ptr %i.dx, align 4, !tbaa !94 ; 2 uses
  %i.ik = icmp slt i32 %i.ij, %i.ig
  %i.il = icmp sgt i32 %i.ij, %i.ig
  %i.im = select i1 %i.ii, i1 %i.ik, i1 %i.il
  %i.in = getelementptr inbounds nuw i8, ptr %.1, i64 16 ; 2 uses
  br i1 %i.im, label %bb.c, label %.preheader, !llvm.loop !780

.preheader:                                       ; preds = %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapISt4pairIPNS_10BasicBlockES4_EiLj4ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_iEEEES5_iS7_SA_E24lookupOrInsertIntoBucketIS5_JEEES2_IPSA_bEOT_DpOT0_.exit, %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapISt4pairIPNS_10BasicBlockES4_EiLj4ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_iEEEES5_iS7_SA_E24lookupOrInsertIntoBucketIS5_JEEES2_IPSA_bEOT_DpOT0_.exit62
  %.013.pn = phi ptr [ %.114, %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapISt4pairIPNS_10BasicBlockES4_EiLj4ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_iEEEES5_iS7_SA_E24lookupOrInsertIntoBucketIS5_JEEES2_IPSA_bEOT_DpOT0_.exit62 ], [ %.013, %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapISt4pairIPNS_10BasicBlockES4_EiLj4ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_iEEEES5_iS7_SA_E24lookupOrInsertIntoBucketIS5_JEEES2_IPSA_bEOT_DpOT0_.exit ] ; 2 uses
  %.114 = getelementptr inbounds i8, ptr %.013.pn, i64 -16 ; 6 uses
  %i.io = load ptr, ptr %2, align 8, !tbaa !383   ; 5 uses
  %.0.copyload.i.i.i.i.i.i15 = load i64, ptr %i.e, align 8
  %i.ip = and i64 %.0.copyload.i.i.i.i.i.i15, -8  ; 3 uses
  %i.iq = inttoptr i64 %i.ip to ptr               ; 3 uses
  %i.ir = load i32, ptr %3, align 8, !noalias !803 ; 3 uses
  %i.is = and i32 %i.ir, 1                        ; 2 uses
  %.not.i.i.i.i63 = icmp eq i32 %i.is, 0          ; 3 uses
  %i.it = load ptr, ptr %i.a, align 8, !noalias !803 ; 2 uses
  %i.iu = load ptr, ptr %i.b, align 8, !noalias !803 ; 2 uses
  %i.iv = load i32, ptr %i.c, align 8, !noalias !803 ; 2 uses
  %.sink2.i.i.i.i64 = select i1 %.not.i.i.i.i63, ptr %i.it, ptr %i.a ; 3 uses
  %.sink1.i.i.i.i65 = select i1 %.not.i.i.i.i63, ptr %i.iu, ptr %i.d ; 3 uses
  %.sink.i.i.i.i66 = select i1 %.not.i.i.i.i63, i32 %i.iv, i32 4 ; 4 uses
  %i.iw = icmp eq i32 %.sink.i.i.i.i66, 0
  br i1 %i.iw, label %.loopexit.i67, label %bb.l

bb.l:                                             ; preds = %.preheader
  %i.ix = add i32 %.sink.i.i.i.i66, -1            ; 2 uses
  %i.iy = ptrtoint ptr %i.io to i64
  %i.iz = mul i64 %i.iy, -4658895280553007687     ; 2 uses
  %i.ja = lshr i64 %i.iz, 31
  %i.jb = xor i64 %i.ja, %i.iz
  %i.jc = mul i64 %i.ip, -4658895280553007687     ; 2 uses
  %i.jd = lshr i64 %i.jc, 31
  %i.je = xor i64 %i.jd, %i.jc
  %i.jf = shl i64 %i.jb, 32
  %i.jg = and i64 %i.je, 4294967295
  %i.jh = or disjoint i64 %i.jg, %i.jf
  %i.ji = mul i64 %i.jh, -4658895280553007687     ; 2 uses
  %i.jj = lshr i64 %i.ji, 31
  %i.jk = xor i64 %i.jj, %i.ji
  %i.jl = trunc i64 %i.jk to i32
  %i.jm = and i32 %i.ix, %i.jl                    ; 3 uses
  %i.jn = zext i32 %i.jm to i64                   ; 2 uses
  %i.jo = getelementptr inbounds nuw [24 x i8], ptr %.sink2.i.i.i.i64, i64 %i.jn ; 2 uses
  %i.jp = lshr i64 %i.jn, 5
  %i.jq = getelementptr inbounds nuw [4 x i8], ptr %.sink1.i.i.i.i65, i64 %i.jp
  %i.jr = load i32, ptr %i.jq, align 4, !tbaa !94
  %i.js = and i32 %i.jm, 31
  %i.jt = lshr i32 %i.jr, %i.js
  %i.ju = trunc i32 %i.jt to i1
  br i1 %i.ju, label %.lr.ph.i.i82, label %.loopexit.i67, !prof !150

.lr.ph.i.i82:                                     ; preds = %bb.l, %bb.m
  %i.jv = phi ptr [ %i.kf, %bb.m ], [ %i.jo, %bb.l ] ; 3 uses
  %.024.i.i83 = phi i32 [ %i.kd, %bb.m ], [ %i.jm, %bb.l ]
  %i.jw = load ptr, ptr %i.jv, align 8, !tbaa !385
  %i.jx = icmp eq ptr %i.io, %i.jw
  %i.jy = getelementptr inbounds nuw i8, ptr %i.jv, i64 8
  %i.jz = load ptr, ptr %i.jy, align 8
  %i.ka = icmp eq ptr %i.jz, %i.iq
  %i.kb = select i1 %i.jx, i1 %i.ka, i1 false
  br i1 %i.kb, label %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapISt4pairIPNS_10BasicBlockES4_EiLj4ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_iEEEES5_iS7_SA_E24lookupOrInsertIntoBucketIS5_JEEES2_IPSA_bEOT_DpOT0_.exit84, label %bb.m, !prof !81

bb.m:                                             ; preds = %.lr.ph.i.i82
  %i.kc = add nuw i32 %.024.i.i83, 1
  %i.kd = and i32 %i.kc, %i.ix                    ; 3 uses
  %i.ke = zext i32 %i.kd to i64                   ; 2 uses
  %i.kf = getelementptr inbounds nuw [24 x i8], ptr %.sink2.i.i.i.i64, i64 %i.ke ; 2 uses
  %i.kg = lshr i64 %i.ke, 5
  %i.kh = getelementptr inbounds nuw [4 x i8], ptr %.sink1.i.i.i.i65, i64 %i.kg
  %i.ki = load i32, ptr %i.kh, align 4, !tbaa !94
  %i.kj = and i32 %i.kd, 31
  %i.kk = lshr i32 %i.ki, %i.kj
  %i.kl = trunc i32 %i.kk to i1
  br i1 %i.kl, label %.lr.ph.i.i82, label %.loopexit.i67, !prof !151, !llvm.loop !14

.loopexit.i67:                                    ; preds = %bb.m, %bb.l, %.preheader
  %.lcssa28.sink.i.ph.i68 = phi ptr [ %i.jo, %bb.l ], [ null, %.preheader ], [ %i.kf, %bb.m ]
  %i.km = shl i32 %i.ir, 1
  %i.kn = and i32 %i.km, -4
  %i.ko = add i32 %i.kn, 4
  %i.kp = mul i32 %.sink.i.i.i.i66, 3
  %.not.i.i69 = icmp ult i32 %i.ko, %i.kp
  br i1 %.not.i.i69, label %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapISt4pairIPNS_10BasicBlockES4_EiLj4ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_iEEEES5_iS7_SA_E22findBucketForInsertionIS5_EEPSA_RKT_SE_.exit.i75, label %bb.n, !prof !81

bb.n:                                             ; preds = %.loopexit.i67
  %i.kq = shl i32 %.sink.i.i.i.i66, 1
  tail call void @_ZN4llvm12DenseMapBaseINS_13SmallDenseMapISt4pairIPNS_10BasicBlockES4_EiLj4ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_iEEEES5_iS7_SA_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %3, i32 noundef %i.kq)
  %i.kr = load i32, ptr %3, align 8, !noalias !804
  %i.ks = and i32 %i.kr, 1
  %.not.i.i.i103 = icmp eq i32 %i.ks, 0           ; 3 uses
  %i.kt = load ptr, ptr %i.a, align 8, !noalias !804
  %i.ku = load ptr, ptr %i.b, align 8, !noalias !804
  %i.kv = load i32, ptr %i.c, align 8, !noalias !804
  %.sink2.i.i.i104 = select i1 %.not.i.i.i103, ptr %i.kt, ptr %i.a ; 5 uses
  %.sink1.i.i.i105 = select i1 %.not.i.i.i103, ptr %i.ku, ptr %i.d ; 5 uses
  %.sink.i.i.i106 = select i1 %.not.i.i.i103, i32 %i.kv, i32 4 ; 2 uses
  %i.kw = icmp ne i32 %.sink.i.i.i106, 0
  tail call void @llvm.assume(i1 %i.kw)
  %i.kx = add i32 %.sink.i.i.i106, -1             ; 2 uses
  %i.ky = ptrtoint ptr %i.io to i64
  %i.kz = mul i64 %i.ky, -4658895280553007687     ; 2 uses
  %i.la = lshr i64 %i.kz, 31
  %i.lb = xor i64 %i.la, %i.kz
  %i.lc = mul i64 %i.ip, -4658895280553007687     ; 2 uses
  %i.ld = lshr i64 %i.lc, 31
  %i.le = xor i64 %i.ld, %i.lc
  %i.lf = shl i64 %i.lb, 32
  %i.lg = and i64 %i.le, 4294967295
  %i.lh = or disjoint i64 %i.lg, %i.lf
  %i.li = mul i64 %i.lh, -4658895280553007687     ; 2 uses
  %i.lj = lshr i64 %i.li, 31
  %i.lk = xor i64 %i.lj, %i.li
  %i.ll = trunc i64 %i.lk to i32
  %i.lm = and i32 %i.kx, %i.ll                    ; 3 uses
  %i.ln = zext i32 %i.lm to i64                   ; 2 uses
  %i.lo = getelementptr inbounds nuw [24 x i8], ptr %.sink2.i.i.i104, i64 %i.ln ; 2 uses
  %i.lp = lshr i64 %i.ln, 5
  %i.lq = getelementptr inbounds nuw [4 x i8], ptr %.sink1.i.i.i105, i64 %i.lp
  %i.lr = load i32, ptr %i.lq, align 4, !tbaa !94
  %i.ls = and i32 %i.lm, 31
  %i.lt = lshr i32 %i.lr, %i.ls
  %i.lu = trunc i32 %i.lt to i1
  br i1 %i.lu, label %.lr.ph.i109, label %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapISt4pairIPNS_10BasicBlockES4_EiLj4ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_iEEEES5_iS7_SA_E22findBucketForInsertionIS5_EEPSA_RKT_SE_.exit.i75, !prof !150

.lr.ph.i109:                                      ; preds = %bb.n, %bb.o
  %i.lv = phi ptr [ %i.mf, %bb.o ], [ %i.lo, %bb.n ] ; 3 uses
  %.024.i110 = phi i32 [ %i.md, %bb.o ], [ %i.lm, %bb.n ]
  %i.lw = load ptr, ptr %i.lv, align 8, !tbaa !385
  %i.lx = icmp eq ptr %i.io, %i.lw
  %i.ly = getelementptr inbounds nuw i8, ptr %i.lv, i64 8
  %i.lz = load ptr, ptr %i.ly, align 8
  %i.ma = icmp eq ptr %i.lz, %i.iq
  %i.mb = select i1 %i.lx, i1 %i.ma, i1 false
  br i1 %i.mb, label %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapISt4pairIPNS_10BasicBlockES4_EiLj4ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_iEEEES5_iS7_SA_E22findBucketForInsertionIS5_EEPSA_RKT_SE_.exit.i75, label %bb.o, !prof !81

bb.o:                                             ; preds = %.lr.ph.i109
  %i.mc = add nuw i32 %.024.i110, 1
  %i.md = and i32 %i.mc, %i.kx                    ; 3 uses
  %i.me = zext i32 %i.md to i64                   ; 2 uses
  %i.mf = getelementptr inbounds nuw [24 x i8], ptr %.sink2.i.i.i104, i64 %i.me ; 2 uses
  %i.mg = lshr i64 %i.me, 5
  %i.mh = getelementptr inbounds nuw [4 x i8], ptr %.sink1.i.i.i105, i64 %i.mg
  %i.mi = load i32, ptr %i.mh, align 4, !tbaa !94
  %i.mj = and i32 %i.md, 31
  %i.mk = lshr i32 %i.mi, %i.mj
  %i.ml = trunc i32 %i.mk to i1
  br i1 %i.ml, label %.lr.ph.i109, label %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapISt4pairIPNS_10BasicBlockES4_EiLj4ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_iEEEES5_iS7_SA_E22findBucketForInsertionIS5_EEPSA_RKT_SE_.exit.i75, !prof !151, !llvm.loop !14

_ZN4llvm12DenseMapBaseINS_13SmallDenseMapISt4pairIPNS_10BasicBlockES4_EiLj4ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_iEEEES5_iS7_SA_E22findBucketForInsertionIS5_EEPSA_RKT_SE_.exit.i75: ; preds = %bb.o, %.lr.ph.i109, %bb.n, %.loopexit.i67
  %.pre-phi180 = phi ptr [ %.sink2.i.i.i.i64, %.loopexit.i67 ], [ %.sink2.i.i.i104, %bb.n ], [ %.sink2.i.i.i104, %.lr.ph.i109 ], [ %.sink2.i.i.i104, %bb.o ]
  %.pre-phi179 = phi ptr [ %.sink1.i.i.i.i65, %.loopexit.i67 ], [ %.sink1.i.i.i105, %bb.n ], [ %.sink1.i.i.i105, %.lr.ph.i109 ], [ %.sink1.i.i.i105, %bb.o ]
  %i.mm = phi ptr [ %.lcssa28.sink.i.ph.i68, %.loopexit.i67 ], [ %i.lo, %bb.n ], [ %i.mf, %bb.o ], [ %i.lv, %.lr.ph.i109 ] ; 5 uses
  %i.mn = ptrtoint ptr %i.mm to i64
  %i.mo = ptrtoint ptr %.pre-phi180 to i64
  %i.mp = sub i64 %i.mn, %i.mo
  %i.mq = sdiv exact i64 %i.mp, 24                ; 2 uses
  %i.mr = trunc i64 %i.mq to i32
  %i.ms = and i32 %i.mr, 31
  %i.mt = shl nuw i32 1, %i.ms
  %i.mu = lshr i64 %i.mq, 5
  %i.mv = getelementptr inbounds nuw [4 x i8], ptr %.pre-phi179, i64 %i.mu ; 2 uses
  %i.mw = load i32, ptr %i.mv, align 4, !tbaa !94
  %i.mx = or i32 %i.mt, %i.mw
  store i32 %i.mx, ptr %i.mv, align 4, !tbaa !94
  %i.my = load i32, ptr %3, align 8               ; 2 uses
  %12 = and i32 %i.my, -2
  %i.mz = add i32 %12, 2
  %13 = and i32 %i.my, 1
  %14 = or disjoint i32 %i.mz, %13
  store i32 %14, ptr %3, align 8
  store ptr %i.io, ptr %i.mm, align 8
  %.sroa.6129.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.mm, i64 8
  store ptr %i.iq, ptr %.sroa.6129.0..sroa_idx, align 8
  %i.na = getelementptr inbounds nuw i8, ptr %i.mm, i64 16
  store i32 0, ptr %i.na, align 8, !tbaa !94
  %.pre168 = load i32, ptr %3, align 8, !noalias !805 ; 2 uses
  %.pre169 = load ptr, ptr %i.a, align 8, !noalias !805
  %.pre170 = load ptr, ptr %i.b, align 8, !noalias !805
  %.pre171 = load i32, ptr %i.c, align 8, !noalias !805
  %.pre181 = and i32 %.pre168, 1
  br label %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapISt4pairIPNS_10BasicBlockES4_EiLj4ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_iEEEES5_iS7_SA_E24lookupOrInsertIntoBucketIS5_JEEES2_IPSA_bEOT_DpOT0_.exit84

_ZN4llvm12DenseMapBaseINS_13SmallDenseMapISt4pairIPNS_10BasicBlockES4_EiLj4ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_iEEEES5_iS7_SA_E24lookupOrInsertIntoBucketIS5_JEEES2_IPSA_bEOT_DpOT0_.exit84: ; preds = %.lr.ph.i.i82, %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapISt4pairIPNS_10BasicBlockES4_EiLj4ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_iEEEES5_iS7_SA_E22findBucketForInsertionIS5_EEPSA_RKT_SE_.exit.i75
  %.pre-phi182 = phi i32 [ %.pre181, %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapISt4pairIPNS_10BasicBlockES4_EiLj4ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_iEEEES5_iS7_SA_E22findBucketForInsertionIS5_EEPSA_RKT_SE_.exit.i75 ], [ %i.is, %.lr.ph.i.i82 ]
  %i.nb = phi i32 [ %.pre171, %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapISt4pairIPNS_10BasicBlockES4_EiLj4ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_iEEEES5_iS7_SA_E22findBucketForInsertionIS5_EEPSA_RKT_SE_.exit.i75 ], [ %i.iv, %.lr.ph.i.i82 ]
  %i.nc = phi ptr [ %.pre170, %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapISt4pairIPNS_10BasicBlockES4_EiLj4ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_iEEEES5_iS7_SA_E22findBucketForInsertionIS5_EEPSA_RKT_SE_.exit.i75 ], [ %i.iu, %.lr.ph.i.i82 ]
  %i.nd = phi ptr [ %.pre169, %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapISt4pairIPNS_10BasicBlockES4_EiLj4ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_iEEEES5_iS7_SA_E22findBucketForInsertionIS5_EEPSA_RKT_SE_.exit.i75 ], [ %i.it, %.lr.ph.i.i82 ]
  %i.ne = phi i32 [ %.pre168, %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapISt4pairIPNS_10BasicBlockES4_EiLj4ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_iEEEES5_iS7_SA_E22findBucketForInsertionIS5_EEPSA_RKT_SE_.exit.i75 ], [ %i.ir, %.lr.ph.i.i82 ]
  %.sroa.0.0.i78 = phi ptr [ %i.mm, %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapISt4pairIPNS_10BasicBlockES4_EiLj4ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_iEEEES5_iS7_SA_E22findBucketForInsertionIS5_EEPSA_RKT_SE_.exit.i75 ], [ %i.jv, %.lr.ph.i.i82 ]
  %i.nf = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i78, i64 16
  %i.ng = load ptr, ptr %.114, align 8, !tbaa !383 ; 5 uses
  %i.nh = getelementptr inbounds i8, ptr %.013.pn, i64 -8
  %.0.copyload.i.i.i.i9.i.i17 = load i64, ptr %i.nh, align 8
  %i.ni = and i64 %.0.copyload.i.i.i.i9.i.i17, -8 ; 3 uses
  %i.nj = inttoptr i64 %i.ni to ptr               ; 3 uses
  %.not.i.i.i.i41 = icmp eq i32 %.pre-phi182, 0   ; 3 uses
  %.sink2.i.i.i.i42 = select i1 %.not.i.i.i.i41, ptr %i.nd, ptr %i.a ; 3 uses
  %.sink1.i.i.i.i43 = select i1 %.not.i.i.i.i41, ptr %i.nc, ptr %i.d ; 3 uses
  %.sink.i.i.i.i44 = select i1 %.not.i.i.i.i41, i32 %i.nb, i32 4 ; 4 uses
  %i.nk = icmp eq i32 %.sink.i.i.i.i44, 0
  br i1 %i.nk, label %.loopexit.i45, label %bb.p

bb.p:                                             ; preds = %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapISt4pairIPNS_10BasicBlockES4_EiLj4ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_iEEEES5_iS7_SA_E24lookupOrInsertIntoBucketIS5_JEEES2_IPSA_bEOT_DpOT0_.exit84
  %i.nl = add i32 %.sink.i.i.i.i44, -1            ; 2 uses
  %i.nm = ptrtoint ptr %i.ng to i64
  %i.nn = mul i64 %i.nm, -4658895280553007687     ; 2 uses
  %i.no = lshr i64 %i.nn, 31
  %i.np = xor i64 %i.no, %i.nn
  %i.nq = mul i64 %i.ni, -4658895280553007687     ; 2 uses
  %i.nr = lshr i64 %i.nq, 31
  %i.ns = xor i64 %i.nr, %i.nq
  %i.nt = shl i64 %i.np, 32
  %i.nu = and i64 %i.ns, 4294967295
  %i.nv = or disjoint i64 %i.nu, %i.nt
  %i.nw = mul i64 %i.nv, -4658895280553007687     ; 2 uses
  %i.nx = lshr i64 %i.nw, 31
  %i.ny = xor i64 %i.nx, %i.nw
  %i.nz = trunc i64 %i.ny to i32
  %i.oa = and i32 %i.nl, %i.nz                    ; 3 uses
  %i.ob = zext i32 %i.oa to i64                   ; 2 uses
  %i.oc = getelementptr inbounds nuw [24 x i8], ptr %.sink2.i.i.i.i42, i64 %i.ob ; 2 uses
  %i.od = lshr i64 %i.ob, 5
  %i.oe = getelementptr inbounds nuw [4 x i8], ptr %.sink1.i.i.i.i43, i64 %i.od
  %i.of = load i32, ptr %i.oe, align 4, !tbaa !94
  %i.og = and i32 %i.oa, 31
  %i.oh = lshr i32 %i.of, %i.og
  %i.oi = trunc i32 %i.oh to i1
  br i1 %i.oi, label %.lr.ph.i.i60, label %.loopexit.i45, !prof !150

.lr.ph.i.i60:                                     ; preds = %bb.p, %bb.q
  %i.oj = phi ptr [ %i.ot, %bb.q ], [ %i.oc, %bb.p ] ; 3 uses
  %.024.i.i61 = phi i32 [ %i.or, %bb.q ], [ %i.oa, %bb.p ]
  %i.ok = load ptr, ptr %i.oj, align 8, !tbaa !385
  %i.ol = icmp eq ptr %i.ng, %i.ok
  %i.om = getelementptr inbounds nuw i8, ptr %i.oj, i64 8
  %i.on = load ptr, ptr %i.om, align 8
  %i.oo = icmp eq ptr %i.on, %i.nj
  %i.op = select i1 %i.ol, i1 %i.oo, i1 false
  br i1 %i.op, label %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapISt4pairIPNS_10BasicBlockES4_EiLj4ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_iEEEES5_iS7_SA_E24lookupOrInsertIntoBucketIS5_JEEES2_IPSA_bEOT_DpOT0_.exit62.loopexit, label %bb.q, !prof !81

bb.q:                                             ; preds = %.lr.ph.i.i60
  %i.oq = add nuw i32 %.024.i.i61, 1
  %i.or = and i32 %i.oq, %i.nl                    ; 3 uses
  %i.os = zext i32 %i.or to i64                   ; 2 uses
  %i.ot = getelementptr inbounds nuw [24 x i8], ptr %.sink2.i.i.i.i42, i64 %i.os ; 2 uses
  %i.ou = lshr i64 %i.os, 5
  %i.ov = getelementptr inbounds nuw [4 x i8], ptr %.sink1.i.i.i.i43, i64 %i.ou
  %i.ow = load i32, ptr %i.ov, align 4, !tbaa !94
  %i.ox = and i32 %i.or, 31
  %i.oy = lshr i32 %i.ow, %i.ox
  %i.oz = trunc i32 %i.oy to i1
  br i1 %i.oz, label %.lr.ph.i.i60, label %.loopexit.i45, !prof !151, !llvm.loop !14

.loopexit.i45:                                    ; preds = %bb.q, %bb.p, %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapISt4pairIPNS_10BasicBlockES4_EiLj4ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_iEEEES5_iS7_SA_E24lookupOrInsertIntoBucketIS5_JEEES2_IPSA_bEOT_DpOT0_.exit84
  %.lcssa28.sink.i.ph.i46 = phi ptr [ %i.oc, %bb.p ], [ null, %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapISt4pairIPNS_10BasicBlockES4_EiLj4ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_iEEEES5_iS7_SA_E24lookupOrInsertIntoBucketIS5_JEEES2_IPSA_bEOT_DpOT0_.exit84 ], [ %i.ot, %bb.q ]
  %i.pa = shl i32 %i.ne, 1
  %i.pb = and i32 %i.pa, -4
  %i.pc = add i32 %i.pb, 4
  %i.pd = mul i32 %.sink.i.i.i.i44, 3
  %.not.i.i47 = icmp ult i32 %i.pc, %i.pd
  br i1 %.not.i.i47, label %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapISt4pairIPNS_10BasicBlockES4_EiLj4ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_iEEEES5_iS7_SA_E22findBucketForInsertionIS5_EEPSA_RKT_SE_.exit.i53, label %bb.r, !prof !81

bb.r:                                             ; preds = %.loopexit.i45
  %i.pe = shl i32 %.sink.i.i.i.i44, 1
  tail call void @_ZN4llvm12DenseMapBaseINS_13SmallDenseMapISt4pairIPNS_10BasicBlockES4_EiLj4ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_iEEEES5_iS7_SA_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %3, i32 noundef %i.pe)
  %i.pf = load i32, ptr %3, align 8, !noalias !806
  %i.pg = and i32 %i.pf, 1
  %.not.i.i.i94 = icmp eq i32 %i.pg, 0            ; 3 uses
  %i.ph = load ptr, ptr %i.a, align 8, !noalias !806
  %i.pi = load ptr, ptr %i.b, align 8, !noalias !806
  %i.pj = load i32, ptr %i.c, align 8, !noalias !806
  %.sink2.i.i.i95 = select i1 %.not.i.i.i94, ptr %i.ph, ptr %i.a ; 5 uses
  %.sink1.i.i.i96 = select i1 %.not.i.i.i94, ptr %i.pi, ptr %i.d ; 5 uses
  %.sink.i.i.i97 = select i1 %.not.i.i.i94, i32 %i.pj, i32 4 ; 2 uses
  %i.pk = icmp ne i32 %.sink.i.i.i97, 0
  tail call void @llvm.assume(i1 %i.pk)
  %i.pl = add i32 %.sink.i.i.i97, -1              ; 2 uses
  %i.pm = ptrtoint ptr %i.ng to i64
  %i.pn = mul i64 %i.pm, -4658895280553007687     ; 2 uses
  %i.po = lshr i64 %i.pn, 31
  %i.pp = xor i64 %i.po, %i.pn
  %i.pq = mul i64 %i.ni, -4658895280553007687     ; 2 uses
  %i.pr = lshr i64 %i.pq, 31
  %i.ps = xor i64 %i.pr, %i.pq
  %i.pt = shl i64 %i.pp, 32
  %i.pu = and i64 %i.ps, 4294967295
  %i.pv = or disjoint i64 %i.pu, %i.pt
  %i.pw = mul i64 %i.pv, -4658895280553007687     ; 2 uses
  %i.px = lshr i64 %i.pw, 31
  %i.py = xor i64 %i.px, %i.pw
  %i.pz = trunc i64 %i.py to i32
  %i.qa = and i32 %i.pl, %i.pz                    ; 3 uses
  %i.qb = zext i32 %i.qa to i64                   ; 2 uses
  %i.qc = getelementptr inbounds nuw [24 x i8], ptr %.sink2.i.i.i95, i64 %i.qb ; 2 uses
  %i.qd = lshr i64 %i.qb, 5
  %i.qe = getelementptr inbounds nuw [4 x i8], ptr %.sink1.i.i.i96, i64 %i.qd
  %i.qf = load i32, ptr %i.qe, align 4, !tbaa !94
  %i.qg = and i32 %i.qa, 31
  %i.qh = lshr i32 %i.qf, %i.qg
  %i.qi = trunc i32 %i.qh to i1
  br i1 %i.qi, label %.lr.ph.i100, label %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapISt4pairIPNS_10BasicBlockES4_EiLj4ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_iEEEES5_iS7_SA_E22findBucketForInsertionIS5_EEPSA_RKT_SE_.exit.i53, !prof !150

.lr.ph.i100:                                      ; preds = %bb.r, %bb.s
  %i.qj = phi ptr [ %i.qt, %bb.s ], [ %i.qc, %bb.r ] ; 3 uses
  %.024.i101 = phi i32 [ %i.qr, %bb.s ], [ %i.qa, %bb.r ]
  %i.qk = load ptr, ptr %i.qj, align 8, !tbaa !385
  %i.ql = icmp eq ptr %i.ng, %i.qk
  %i.qm = getelementptr inbounds nuw i8, ptr %i.qj, i64 8
  %i.qn = load ptr, ptr %i.qm, align 8
  %i.qo = icmp eq ptr %i.qn, %i.nj
  %i.qp = select i1 %i.ql, i1 %i.qo, i1 false
  br i1 %i.qp, label %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapISt4pairIPNS_10BasicBlockES4_EiLj4ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_iEEEES5_iS7_SA_E22findBucketForInsertionIS5_EEPSA_RKT_SE_.exit.i53, label %bb.s, !prof !81

bb.s:                                             ; preds = %.lr.ph.i100
  %i.qq = add nuw i32 %.024.i101, 1
  %i.qr = and i32 %i.qq, %i.pl                    ; 3 uses
  %i.qs = zext i32 %i.qr to i64                   ; 2 uses
  %i.qt = getelementptr inbounds nuw [24 x i8], ptr %.sink2.i.i.i95, i64 %i.qs ; 2 uses
  %i.qu = lshr i64 %i.qs, 5
  %i.qv = getelementptr inbounds nuw [4 x i8], ptr %.sink1.i.i.i96, i64 %i.qu
  %i.qw = load i32, ptr %i.qv, align 4, !tbaa !94
  %i.qx = and i32 %i.qr, 31
  %i.qy = lshr i32 %i.qw, %i.qx
  %i.qz = trunc i32 %i.qy to i1
  br i1 %i.qz, label %.lr.ph.i100, label %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapISt4pairIPNS_10BasicBlockES4_EiLj4ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_iEEEES5_iS7_SA_E22findBucketForInsertionIS5_EEPSA_RKT_SE_.exit.i53, !prof !151, !llvm.loop !14

_ZN4llvm12DenseMapBaseINS_13SmallDenseMapISt4pairIPNS_10BasicBlockES4_EiLj4ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_iEEEES5_iS7_SA_E22findBucketForInsertionIS5_EEPSA_RKT_SE_.exit.i53: ; preds = %bb.s, %.lr.ph.i100, %bb.r, %.loopexit.i45
  %.pre-phi184 = phi ptr [ %.sink2.i.i.i.i42, %.loopexit.i45 ], [ %.sink2.i.i.i95, %bb.r ], [ %.sink2.i.i.i95, %.lr.ph.i100 ], [ %.sink2.i.i.i95, %bb.s ]
  %.pre-phi183 = phi ptr [ %.sink1.i.i.i.i43, %.loopexit.i45 ], [ %.sink1.i.i.i96, %bb.r ], [ %.sink1.i.i.i96, %.lr.ph.i100 ], [ %.sink1.i.i.i96, %bb.s ]
  %i.ra = phi ptr [ %.lcssa28.sink.i.ph.i46, %.loopexit.i45 ], [ %i.qc, %bb.r ], [ %i.qt, %bb.s ], [ %i.qj, %.lr.ph.i100 ] ; 4 uses
  %i.rb = ptrtoint ptr %i.ra to i64
  %i.rc = ptrtoint ptr %.pre-phi184 to i64
  %i.rd = sub i64 %i.rb, %i.rc
  %i.re = sdiv exact i64 %i.rd, 24                ; 2 uses
  %i.rf = trunc i64 %i.re to i32
  %i.rg = and i32 %i.rf, 31
  %i.rh = shl nuw i32 1, %i.rg
  %i.ri = lshr i64 %i.re, 5
  %i.rj = getelementptr inbounds nuw [4 x i8], ptr %.pre-phi183, i64 %i.ri ; 2 uses
  %i.rk = load i32, ptr %i.rj, align 4, !tbaa !94
  %i.rl = or i32 %i.rh, %i.rk
  store i32 %i.rl, ptr %i.rj, align 4, !tbaa !94
  %i.rm = load i32, ptr %3, align 8               ; 2 uses
  %15 = and i32 %i.rm, -2
  %i.rn = add i32 %15, 2
  %16 = and i32 %i.rm, 1
  %17 = or disjoint i32 %i.rn, %16
  store i32 %17, ptr %3, align 8
  store ptr %i.ng, ptr %i.ra, align 8
  %.sroa.6125.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ra, i64 8
  store ptr %i.nj, ptr %.sroa.6125.0..sroa_idx, align 8
  %i.ro = getelementptr inbounds nuw i8, ptr %i.ra, i64 16
  store i32 0, ptr %i.ro, align 8, !tbaa !94
  br label %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapISt4pairIPNS_10BasicBlockES4_EiLj4ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_iEEEES5_iS7_SA_E24lookupOrInsertIntoBucketIS5_JEEES2_IPSA_bEOT_DpOT0_.exit62

_ZN4llvm12DenseMapBaseINS_13SmallDenseMapISt4pairIPNS_10BasicBlockES4_EiLj4ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_iEEEES5_iS7_SA_E24lookupOrInsertIntoBucketIS5_JEEES2_IPSA_bEOT_DpOT0_.exit62.loopexit: ; preds = %.lr.ph.i.i60
  %.phi.trans.insert172 = getelementptr inbounds nuw i8, ptr %i.oj, i64 16
  %.pre173 = load i32, ptr %.phi.trans.insert172, align 4, !tbaa !94
  br label %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapISt4pairIPNS_10BasicBlockES4_EiLj4ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_iEEEES5_iS7_SA_E24lookupOrInsertIntoBucketIS5_JEEES2_IPSA_bEOT_DpOT0_.exit62

_ZN4llvm12DenseMapBaseINS_13SmallDenseMapISt4pairIPNS_10BasicBlockES4_EiLj4ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_iEEEES5_iS7_SA_E24lookupOrInsertIntoBucketIS5_JEEES2_IPSA_bEOT_DpOT0_.exit62: ; preds = %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapISt4pairIPNS_10BasicBlockES4_EiLj4ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_iEEEES5_iS7_SA_E24lookupOrInsertIntoBucketIS5_JEEES2_IPSA_bEOT_DpOT0_.exit62.loopexit, %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapISt4pairIPNS_10BasicBlockES4_EiLj4ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_iEEEES5_iS7_SA_E22findBucketForInsertionIS5_EEPSA_RKT_SE_.exit.i53
  %i.rp = phi i32 [ 0, %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapISt4pairIPNS_10BasicBlockES4_EiLj4ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_iEEEES5_iS7_SA_E22findBucketForInsertionIS5_EEPSA_RKT_SE_.exit.i53 ], [ %.pre173, %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapISt4pairIPNS_10BasicBlockES4_EiLj4ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_iEEEES5_iS7_SA_E24lookupOrInsertIntoBucketIS5_JEEES2_IPSA_bEOT_DpOT0_.exit62.loopexit ] ; 2 uses
  %i.rq = load i8, ptr %4, align 1, !tbaa !137, !range !53, !noundef !54
  %i.rr = trunc nuw i8 %i.rq to i1
  %i.rs = load i32, ptr %i.nf, align 4, !tbaa !94 ; 2 uses
  %i.rt = icmp slt i32 %i.rs, %i.rp
  %i.ru = icmp sgt i32 %i.rs, %i.rp
  %i.rv = select i1 %i.rr, i1 %i.rt, i1 %i.ru
  br i1 %i.rv, label %.preheader, label %bb.t, !llvm.loop !797

bb.t:                                             ; preds = %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapISt4pairIPNS_10BasicBlockES4_EiLj4ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_iEEEES5_iS7_SA_E24lookupOrInsertIntoBucketIS5_JEEES2_IPSA_bEOT_DpOT0_.exit62
  %i.rw = icmp ult ptr %.1, %.114
  br i1 %i.rw, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  ret ptr %.1

bb.v:                                             ; preds = %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(16) %.1, i64 16, i1 false), !tbaa.struct !389
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.1, ptr noundef nonnull align 8 dereferenceable(16) %.114, i64 16, i1 false), !tbaa.struct !389
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.114, ptr noundef nonnull align 8 dereferenceable(16) %5, i64 16, i1 false), !tbaa.struct !389
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  br label %bb.b, !llvm.loop !798
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #7

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZSt16__insertion_sortIPN4llvm3cfg6UpdateIPNS0_10BasicBlockEEEN9__gnu_cxx5__ops15_Iter_comp_iterIZNS1_15LegalizeUpdatesIS4_EEvNS0_8ArrayRefINS2_IT_EEEERNS0_15SmallVectorImplISD_EEbbEUlRKS5_SJ_E_EEEvSC_SC_T0_(ptr noundef %0, ptr noundef %1, ptr %2, ptr %3) local_unnamed_addr #3 comdat {
bb.a:
  %4 = alloca %"struct.std::pair.338", align 8    ; 5 uses
  %5 = alloca %"struct.std::pair.338", align 8    ; 5 uses
  %6 = alloca %"class.llvm::cfg::Update", align 8 ; 4 uses
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.a
  %.065 = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not66 = icmp eq ptr %.065, %1
  br i1 %.not66, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 8 uses
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 104 ; 4 uses
  %i.i = ptrtoint ptr %0 to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.r
  %.068 = phi ptr [ %.065, %.lr.ph ], [ %.0, %bb.r ] ; 7 uses
  %.pn67 = phi ptr [ %0, %.lr.ph ], [ %.068, %bb.r ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  %i.j = load ptr, ptr %.068, align 8, !tbaa !383
  %i.k = getelementptr inbounds nuw i8, ptr %.pn67, i64 24 ; 2 uses
  %.0.copyload.i.i.i.i.i.i = load i64, ptr %i.k, align 8
  %i.l = and i64 %.0.copyload.i.i.i.i.i.i, -8
  %i.m = inttoptr i64 %i.l to ptr
  store ptr %i.j, ptr %4, align 8, !tbaa !385
  store ptr %i.m, ptr %i.b, align 8, !tbaa !386
  %i.n = call { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_13SmallDenseMapISt4pairIPNS_10BasicBlockES4_EiLj4ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_iEEEES5_iS7_SA_E24lookupOrInsertIntoBucketIS5_JEEES2_IPSA_bEOT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(16) %4)
  %.fca.0.extract.i.i.i = extractvalue { ptr, i8 } %i.n, 0
  %i.o = getelementptr inbounds nuw i8, ptr %.fca.0.extract.i.i.i, i64 16
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24
  %i.p = load ptr, ptr %0, align 8, !tbaa !383
  %.0.copyload.i.i.i.i9.i.i = load i64, ptr %i.c, align 8
  %i.q = and i64 %.0.copyload.i.i.i.i9.i.i, -8
  %i.r = inttoptr i64 %i.q to ptr
  store ptr %i.p, ptr %5, align 8, !tbaa !385
  store ptr %i.r, ptr %i.d, align 8, !tbaa !386
  %i.s = call { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_13SmallDenseMapISt4pairIPNS_10BasicBlockES4_EiLj4ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_iEEEES5_iS7_SA_E24lookupOrInsertIntoBucketIS5_JEEES2_IPSA_bEOT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(16) %5)
  %.fca.0.extract.i10.i.i = extractvalue { ptr, i8 } %i.s, 0
  %i.t = getelementptr inbounds nuw i8, ptr %.fca.0.extract.i10.i.i, i64 16
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  %i.u = load i8, ptr %3, align 1, !tbaa !137, !range !53, !noundef !54
  %i.v = trunc nuw i8 %i.u to i1
  %i.w = load i32, ptr %i.o, align 4, !tbaa !94   ; 2 uses
  %i.x = load i32, ptr %i.t, align 4, !tbaa !94   ; 2 uses
  %i.y = icmp slt i32 %i.w, %i.x
  %i.z = icmp sgt i32 %i.w, %i.x
  %i.aa = select i1 %i.v, i1 %i.y, i1 %i.z
  br i1 %i.aa, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 8 dereferenceable(16) %.068, i64 16, i1 false), !tbaa.struct !389
  %i.ab = ptrtoint ptr %.068 to i64
  %i.ac = sub i64 %i.ab, %i.i                     ; 3 uses
  %i.ad = ashr exact i64 %i.ac, 4                 ; 2 uses
  %i.ae = icmp sgt i64 %i.ad, 1
  br i1 %i.ae, label %bb.d, label %bb.e, !prof !81

bb.d:                                             ; preds = %bb.c
  %i.af = getelementptr inbounds nuw i8, ptr %.pn67, i64 32
  %i.ag = sub nsw i64 0, %i.ad
  %i.ah = getelementptr inbounds [16 x i8], ptr %i.af, i64 %i.ag
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ah, ptr noundef nonnull align 8 dereferenceable(1) %0, i64 %i.ac, i1 false)
  br label %_ZSt13move_backwardIPN4llvm3cfg6UpdateIPNS0_10BasicBlockEEES6_ET0_T_S8_S7_.exit

bb.e:                                             ; preds = %bb.c
  %i.ai = icmp eq i64 %i.ac, 16
  br i1 %i.ai, label %bb.f, label %_ZSt13move_backwardIPN4llvm3cfg6UpdateIPNS0_10BasicBlockEEES6_ET0_T_S8_S7_.exit

bb.f:                                             ; preds = %bb.e
  %i.aj = getelementptr inbounds nuw i8, ptr %.pn67, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aj, ptr noundef nonnull align 8 dereferenceable(16) %0, i64 16, i1 false), !tbaa.struct !389
  br label %_ZSt13move_backwardIPN4llvm3cfg6UpdateIPNS0_10BasicBlockEEES6_ET0_T_S8_S7_.exit

_ZSt13move_backwardIPN4llvm3cfg6UpdateIPNS0_10BasicBlockEEES6_ET0_T_S8_S7_.exit: ; preds = %bb.d, %bb.e, %bb.f
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %6, i64 16, i1 false), !tbaa.struct !389
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  br label %bb.r

bb.g:                                             ; preds = %bb.b
  %.sroa.0.0.copyload.i = load ptr, ptr %.068, align 8, !tbaa !148 ; 5 uses
  %.sroa.5.0.copyload.i = load i64, ptr %i.k, align 8, !tbaa !202 ; 2 uses
  %i.ak = and i64 %.sroa.5.0.copyload.i, -8       ; 2 uses
  %i.al = inttoptr i64 %i.ak to ptr               ; 3 uses
  %i.am = ptrtoint ptr %.sroa.0.0.copyload.i to i64
  %i.an = mul i64 %i.am, -4658895280553007687     ; 2 uses
  %i.ao = lshr i64 %i.an, 31
  %i.ap = xor i64 %i.ao, %i.an
  %i.aq = mul i64 %i.ak, -4658895280553007687     ; 2 uses
  %i.ar = lshr i64 %i.aq, 31
  %i.as = xor i64 %i.ar, %i.aq
  %i.at = shl i64 %i.ap, 32
  %i.au = and i64 %i.as, 4294967295
  %i.av = or disjoint i64 %i.au, %i.at
  %i.aw = mul i64 %i.av, -4658895280553007687     ; 2 uses
  %i.ax = lshr i64 %i.aw, 31
  %i.ay = xor i64 %i.ax, %i.aw
  %i.az = trunc i64 %i.ay to i32                  ; 2 uses
  br label %bb.h

bb.h:                                             ; preds = %bb.q, %bb.g
  %.09.i = phi ptr [ %.068, %bb.g ], [ %.0.i, %bb.q ] ; 5 uses
  %.0.i = getelementptr inbounds i8, ptr %.09.i, i64 -16 ; 3 uses
  %i.ba = load i32, ptr %2, align 8, !noalias !824 ; 3 uses
  %i.bb = and i32 %i.ba, 1                        ; 2 uses
  %.not.i.i.i.i20 = icmp eq i32 %i.bb, 0          ; 3 uses
  %i.bc = load ptr, ptr %i.e, align 8, !noalias !824 ; 2 uses
  %i.bd = load ptr, ptr %i.f, align 8, !noalias !824 ; 2 uses
  %i.be = load i32, ptr %i.g, align 8, !noalias !824 ; 2 uses
  %.sink2.i.i.i.i21 = select i1 %.not.i.i.i.i20, ptr %i.bc, ptr %i.e ; 3 uses
  %.sink1.i.i.i.i22 = select i1 %.not.i.i.i.i20, ptr %i.bd, ptr %i.h ; 3 uses
  %.sink.i.i.i.i23 = select i1 %.not.i.i.i.i20, i32 %i.be, i32 4 ; 4 uses
  %i.bf = icmp eq i32 %.sink.i.i.i.i23, 0
  br i1 %i.bf, label %.loopexit.i24, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bg = add i32 %.sink.i.i.i.i23, -1            ; 2 uses
  %i.bh = and i32 %i.bg, %i.az                    ; 3 uses
  %i.bi = zext i32 %i.bh to i64                   ; 2 uses
  %i.bj = getelementptr inbounds nuw [24 x i8], ptr %.sink2.i.i.i.i21, i64 %i.bi ; 2 uses
  %i.bk = lshr i64 %i.bi, 5
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %.sink1.i.i.i.i22, i64 %i.bk
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !94
  %i.bn = and i32 %i.bh, 31
  %i.bo = lshr i32 %i.bm, %i.bn
  %i.bp = trunc i32 %i.bo to i1
  br i1 %i.bp, label %.lr.ph.i.i39, label %.loopexit.i24, !prof !150

.lr.ph.i.i39:                                     ; preds = %bb.i, %bb.j
  %i.bq = phi ptr [ %i.ca, %bb.j ], [ %i.bj, %bb.i ] ; 3 uses
  %.024.i.i40 = phi i32 [ %i.by, %bb.j ], [ %i.bh, %bb.i ]
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !385
  %i.bs = icmp eq ptr %.sroa.0.0.copyload.i, %i.br
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bq, i64 8
  %i.bu = load ptr, ptr %i.bt, align 8
  %i.bv = icmp eq ptr %i.bu, %i.al
  %i.bw = select i1 %i.bs, i1 %i.bv, i1 false
  br i1 %i.bw, label %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapISt4pairIPNS_10BasicBlockES4_EiLj4ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_iEEEES5_iS7_SA_E24lookupOrInsertIntoBucketIS5_JEEES2_IPSA_bEOT_DpOT0_.exit41, label %bb.j, !prof !81

bb.j:                                             ; preds = %.lr.ph.i.i39
  %i.bx = add nuw i32 %.024.i.i40, 1
  %i.by = and i32 %i.bx, %i.bg                    ; 3 uses
  %i.bz = zext i32 %i.by to i64                   ; 2 uses
  %i.ca = getelementptr inbounds nuw [24 x i8], ptr %.sink2.i.i.i.i21, i64 %i.bz ; 2 uses
  %i.cb = lshr i64 %i.bz, 5
  %i.cc = getelementptr inbounds nuw [4 x i8], ptr %.sink1.i.i.i.i22, i64 %i.cb
  %i.cd = load i32, ptr %i.cc, align 4, !tbaa !94
  %i.ce = and i32 %i.by, 31
  %i.cf = lshr i32 %i.cd, %i.ce
  %i.cg = trunc i32 %i.cf to i1
  br i1 %i.cg, label %.lr.ph.i.i39, label %.loopexit.i24, !prof !151, !llvm.loop !14

.loopexit.i24:                                    ; preds = %bb.j, %bb.i, %bb.h
  %.lcssa28.sink.i.ph.i25 = phi ptr [ %i.bj, %bb.i ], [ null, %bb.h ], [ %i.ca, %bb.j ]
  %i.ch = shl i32 %i.ba, 1
  %i.ci = and i32 %i.ch, -4
  %i.cj = add i32 %i.ci, 4
  %i.ck = mul i32 %.sink.i.i.i.i23, 3
  %.not.i.i26 = icmp ult i32 %i.cj, %i.ck
  br i1 %.not.i.i26, label %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapISt4pairIPNS_10BasicBlockES4_EiLj4ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_iEEEES5_iS7_SA_E22findBucketForInsertionIS5_EEPSA_RKT_SE_.exit.i32, label %bb.k, !prof !81

bb.k:                                             ; preds = %.loopexit.i24
  %i.cl = shl i32 %.sink.i.i.i.i23, 1
  call void @_ZN4llvm12DenseMapBaseINS_13SmallDenseMapISt4pairIPNS_10BasicBlockES4_EiLj4ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_iEEEES5_iS7_SA_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %2, i32 noundef %i.cl)
  %i.cm = load i32, ptr %2, align 8, !noalias !825
  %i.cn = and i32 %i.cm, 1
  %.not.i.i.i42 = icmp eq i32 %i.cn, 0            ; 3 uses
  %i.co = load ptr, ptr %i.e, align 8, !noalias !825
  %i.cp = load ptr, ptr %i.f, align 8, !noalias !825
  %i.cq = load i32, ptr %i.g, align 8, !noalias !825
  %.sink2.i.i.i43 = select i1 %.not.i.i.i42, ptr %i.co, ptr %i.e ; 5 uses
  %.sink1.i.i.i44 = select i1 %.not.i.i.i42, ptr %i.cp, ptr %i.h ; 5 uses
  %.sink.i.i.i45 = select i1 %.not.i.i.i42, i32 %i.cq, i32 4 ; 2 uses
  %i.cr = icmp ne i32 %.sink.i.i.i45, 0
  call void @llvm.assume(i1 %i.cr)
  %i.cs = add i32 %.sink.i.i.i45, -1              ; 2 uses
  %i.ct = and i32 %i.cs, %i.az                    ; 3 uses
  %i.cu = zext i32 %i.ct to i64                   ; 2 uses
  %i.cv = getelementptr inbounds nuw [24 x i8], ptr %.sink2.i.i.i43, i64 %i.cu ; 2 uses
  %i.cw = lshr i64 %i.cu, 5
  %i.cx = getelementptr inbounds nuw [4 x i8], ptr %.sink1.i.i.i44, i64 %i.cw
  %i.cy = load i32, ptr %i.cx, align 4, !tbaa !94
  %i.cz = and i32 %i.ct, 31
  %i.da = lshr i32 %i.cy, %i.cz
  %i.db = trunc i32 %i.da to i1
  br i1 %i.db, label %.lr.ph.i48, label %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapISt4pairIPNS_10BasicBlockES4_EiLj4ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_iEEEES5_iS7_SA_E22findBucketForInsertionIS5_EEPSA_RKT_SE_.exit.i32, !prof !150

.lr.ph.i48:                                       ; preds = %bb.k, %bb.l
  %i.dc = phi ptr [ %i.dm, %bb.l ], [ %i.cv, %bb.k ] ; 3 uses
  %.024.i49 = phi i32 [ %i.dk, %bb.l ], [ %i.ct, %bb.k ]
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !385
  %i.de = icmp eq ptr %.sroa.0.0.copyload.i, %i.dd
  %i.df = getelementptr inbounds nuw i8, ptr %i.dc, i64 8
  %i.dg = load ptr, ptr %i.df, align 8
  %i.dh = icmp eq ptr %i.dg, %i.al
  %i.di = select i1 %i.de, i1 %i.dh, i1 false
  br i1 %i.di, label %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapISt4pairIPNS_10BasicBlockES4_EiLj4ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_iEEEES5_iS7_SA_E22findBucketForInsertionIS5_EEPSA_RKT_SE_.exit.i32, label %bb.l, !prof !81

bb.l:                                             ; preds = %.lr.ph.i48
  %i.dj = add nuw i32 %.024.i49, 1
  %i.dk = and i32 %i.dj, %i.cs                    ; 3 uses
  %i.dl = zext i32 %i.dk to i64                   ; 2 uses
  %i.dm = getelementptr inbounds nuw [24 x i8], ptr %.sink2.i.i.i43, i64 %i.dl ; 2 uses
  %i.dn = lshr i64 %i.dl, 5
  %i.do = getelementptr inbounds nuw [4 x i8], ptr %.sink1.i.i.i44, i64 %i.dn
  %i.dp = load i32, ptr %i.do, align 4, !tbaa !94
  %i.dq = and i32 %i.dk, 31
  %i.dr = lshr i32 %i.dp, %i.dq
  %i.ds = trunc i32 %i.dr to i1
  br i1 %i.ds, label %.lr.ph.i48, label %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapISt4pairIPNS_10BasicBlockES4_EiLj4ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_iEEEES5_iS7_SA_E22findBucketForInsertionIS5_EEPSA_RKT_SE_.exit.i32, !prof !151, !llvm.loop !14

_ZN4llvm12DenseMapBaseINS_13SmallDenseMapISt4pairIPNS_10BasicBlockES4_EiLj4ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_iEEEES5_iS7_SA_E22findBucketForInsertionIS5_EEPSA_RKT_SE_.exit.i32: ; preds = %bb.l, %.lr.ph.i48, %bb.k, %.loopexit.i24
  %.pre-phi79 = phi ptr [ %.sink2.i.i.i.i21, %.loopexit.i24 ], [ %.sink2.i.i.i43, %bb.k ], [ %.sink2.i.i.i43, %.lr.ph.i48 ], [ %.sink2.i.i.i43, %bb.l ]
  %.pre-phi = phi ptr [ %.sink1.i.i.i.i22, %.loopexit.i24 ], [ %.sink1.i.i.i44, %bb.k ], [ %.sink1.i.i.i44, %.lr.ph.i48 ], [ %.sink1.i.i.i44, %bb.l ]
  %i.dt = phi ptr [ %.lcssa28.sink.i.ph.i25, %.loopexit.i24 ], [ %i.cv, %bb.k ], [ %i.dm, %bb.l ], [ %i.dc, %.lr.ph.i48 ] ; 5 uses
  %i.du = ptrtoint ptr %i.dt to i64
  %i.dv = ptrtoint ptr %.pre-phi79 to i64
  %i.dw = sub i64 %i.du, %i.dv
  %i.dx = sdiv exact i64 %i.dw, 24                ; 2 uses
  %i.dy = trunc i64 %i.dx to i32
  %i.dz = and i32 %i.dy, 31
  %i.ea = shl nuw i32 1, %i.dz
  %i.eb = lshr i64 %i.dx, 5
  %i.ec = getelementptr inbounds nuw [4 x i8], ptr %.pre-phi, i64 %i.eb ; 2 uses
  %i.ed = load i32, ptr %i.ec, align 4, !tbaa !94
  %i.ee = or i32 %i.ea, %i.ed
  store i32 %i.ee, ptr %i.ec, align 4, !tbaa !94
  %i.ef = load i32, ptr %2, align 8               ; 2 uses
  %7 = and i32 %i.ef, -2
  %i.eg = add i32 %7, 2
  %8 = and i32 %i.ef, 1
  %9 = or disjoint i32 %i.eg, %8
  store i32 %9, ptr %2, align 8
  store ptr %.sroa.0.0.copyload.i, ptr %i.dt, align 8
  %.sroa.657.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dt, i64 8
  store ptr %i.al, ptr %.sroa.657.0..sroa_idx, align 8
  %i.eh = getelementptr inbounds nuw i8, ptr %i.dt, i64 16
  store i32 0, ptr %i.eh, align 8, !tbaa !94
  %.pre = load i32, ptr %2, align 8, !noalias !826 ; 2 uses
  %.pre75 = load ptr, ptr %i.e, align 8, !noalias !826
  %.pre76 = load ptr, ptr %i.f, align 8, !noalias !826
  %.pre77 = load i32, ptr %i.g, align 8, !noalias !826
  %.pre80 = and i32 %.pre, 1
  br label %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapISt4pairIPNS_10BasicBlockES4_EiLj4ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_iEEEES5_iS7_SA_E24lookupOrInsertIntoBucketIS5_JEEES2_IPSA_bEOT_DpOT0_.exit41

_ZN4llvm12DenseMapBaseINS_13SmallDenseMapISt4pairIPNS_10BasicBlockES4_EiLj4ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_iEEEES5_iS7_SA_E24lookupOrInsertIntoBucketIS5_JEEES2_IPSA_bEOT_DpOT0_.exit41: ; preds = %.lr.ph.i.i39, %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapISt4pairIPNS_10BasicBlockES4_EiLj4ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_iEEEES5_iS7_SA_E22findBucketForInsertionIS5_EEPSA_RKT_SE_.exit.i32
  %.pre-phi81 = phi i32 [ %.pre80, %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapISt4pairIPNS_10BasicBlockES4_EiLj4ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_iEEEES5_iS7_SA_E22findBucketForInsertionIS5_EEPSA_RKT_SE_.exit.i32 ], [ %i.bb, %.lr.ph.i.i39 ]
  %i.ei = phi i32 [ %.pre77, %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapISt4pairIPNS_10BasicBlockES4_EiLj4ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_iEEEES5_iS7_SA_E22findBucketForInsertionIS5_EEPSA_RKT_SE_.exit.i32 ], [ %i.be, %.lr.ph.i.i39 ]
  %i.ej = phi ptr [ %.pre76, %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapISt4pairIPNS_10BasicBlockES4_EiLj4ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_iEEEES5_iS7_SA_E22findBucketForInsertionIS5_EEPSA_RKT_SE_.exit.i32 ], [ %i.bd, %.lr.ph.i.i39 ]
  %i.ek = phi ptr [ %.pre75, %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapISt4pairIPNS_10BasicBlockES4_EiLj4ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_iEEEES5_iS7_SA_E22findBucketForInsertionIS5_EEPSA_RKT_SE_.exit.i32 ], [ %i.bc, %.lr.ph.i.i39 ]
  %i.el = phi i32 [ %.pre, %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapISt4pairIPNS_10BasicBlockES4_EiLj4ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_iEEEES5_iS7_SA_E22findBucketForInsertionIS5_EEPSA_RKT_SE_.exit.i32 ], [ %i.ba, %.lr.ph.i.i39 ]
  %.sroa.0.0.i35 = phi ptr [ %i.dt, %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapISt4pairIPNS_10BasicBlockES4_EiLj4ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_iEEEES5_iS7_SA_E22findBucketForInsertionIS5_EEPSA_RKT_SE_.exit.i32 ], [ %i.bq, %.lr.ph.i.i39 ]
  %i.em = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i35, i64 16
  %i.en = load ptr, ptr %.0.i, align 8, !tbaa !383 ; 5 uses
  %i.eo = getelementptr inbounds i8, ptr %.09.i, i64 -8
  %.0.copyload.i.i.i.i9.i.i.i = load i64, ptr %i.eo, align 8
  %i.ep = and i64 %.0.copyload.i.i.i.i9.i.i.i, -8 ; 3 uses
  %i.eq = inttoptr i64 %i.ep to ptr               ; 3 uses
  %.not.i.i.i.i = icmp eq i32 %.pre-phi81, 0      ; 3 uses
  %.sink2.i.i.i.i = select i1 %.not.i.i.i.i, ptr %i.ek, ptr %i.e ; 3 uses
  %.sink1.i.i.i.i = select i1 %.not.i.i.i.i, ptr %i.ej, ptr %i.h ; 3 uses
  %.sink.i.i.i.i = select i1 %.not.i.i.i.i, i32 %i.ei, i32 4 ; 4 uses
  %i.er = icmp eq i32 %.sink.i.i.i.i, 0
  br i1 %i.er, label %.loopexit.i, label %bb.m

bb.m:                                             ; preds = %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapISt4pairIPNS_10BasicBlockES4_EiLj4ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_iEEEES5_iS7_SA_E24lookupOrInsertIntoBucketIS5_JEEES2_IPSA_bEOT_DpOT0_.exit41
  %i.es = add i32 %.sink.i.i.i.i, -1              ; 2 uses
  %i.et = ptrtoint ptr %i.en to i64
  %i.eu = mul i64 %i.et, -4658895280553007687     ; 2 uses
  %i.ev = lshr i64 %i.eu, 31
  %i.ew = xor i64 %i.ev, %i.eu
  %i.ex = mul i64 %i.ep, -4658895280553007687     ; 2 uses
  %i.ey = lshr i64 %i.ex, 31
  %i.ez = xor i64 %i.ey, %i.ex
  %i.fa = shl i64 %i.ew, 32
  %i.fb = and i64 %i.ez, 4294967295
  %i.fc = or disjoint i64 %i.fb, %i.fa
  %i.fd = mul i64 %i.fc, -4658895280553007687     ; 2 uses
  %i.fe = lshr i64 %i.fd, 31
  %i.ff = xor i64 %i.fe, %i.fd
  %i.fg = trunc i64 %i.ff to i32
  %i.fh = and i32 %i.es, %i.fg                    ; 3 uses
  %i.fi = zext i32 %i.fh to i64                   ; 2 uses
  %i.fj = getelementptr inbounds nuw [24 x i8], ptr %.sink2.i.i.i.i, i64 %i.fi ; 2 uses
  %i.fk = lshr i64 %i.fi, 5
  %i.fl = getelementptr inbounds nuw [4 x i8], ptr %.sink1.i.i.i.i, i64 %i.fk
  %i.fm = load i32, ptr %i.fl, align 4, !tbaa !94
  %i.fn = and i32 %i.fh, 31
  %i.fo = lshr i32 %i.fm, %i.fn
  %i.fp = trunc i32 %i.fo to i1
  br i1 %i.fp, label %.lr.ph.i.i, label %.loopexit.i, !prof !150

.lr.ph.i.i:                                       ; preds = %bb.m, %bb.n
  %i.fq = phi ptr [ %i.ga, %bb.n ], [ %i.fj, %bb.m ] ; 3 uses
  %.024.i.i = phi i32 [ %i.fy, %bb.n ], [ %i.fh, %bb.m ]
  %i.fr = load ptr, ptr %i.fq, align 8, !tbaa !385
  %i.fs = icmp eq ptr %i.en, %i.fr
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fq, i64 8
  %i.fu = load ptr, ptr %i.ft, align 8
  %i.fv = icmp eq ptr %i.fu, %i.eq
  %i.fw = select i1 %i.fs, i1 %i.fv, i1 false
  br i1 %i.fw, label %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapISt4pairIPNS_10BasicBlockES4_EiLj4ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_iEEEES5_iS7_SA_E24lookupOrInsertIntoBucketIS5_JEEES2_IPSA_bEOT_DpOT0_.exit.loopexit, label %bb.n, !prof !81

bb.n:                                             ; preds = %.lr.ph.i.i
  %i.fx = add nuw i32 %.024.i.i, 1
  %i.fy = and i32 %i.fx, %i.es                    ; 3 uses
  %i.fz = zext i32 %i.fy to i64                   ; 2 uses
  %i.ga = getelementptr inbounds nuw [24 x i8], ptr %.sink2.i.i.i.i, i64 %i.fz ; 2 uses
  %i.gb = lshr i64 %i.fz, 5
  %i.gc = getelementptr inbounds nuw [4 x i8], ptr %.sink1.i.i.i.i, i64 %i.gb
  %i.gd = load i32, ptr %i.gc, align 4, !tbaa !94
  %i.ge = and i32 %i.fy, 31
  %i.gf = lshr i32 %i.gd, %i.ge
  %i.gg = trunc i32 %i.gf to i1
  br i1 %i.gg, label %.lr.ph.i.i, label %.loopexit.i, !prof !151, !llvm.loop !14

.loopexit.i:                                      ; preds = %bb.n, %bb.m, %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapISt4pairIPNS_10BasicBlockES4_EiLj4ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_iEEEES5_iS7_SA_E24lookupOrInsertIntoBucketIS5_JEEES2_IPSA_bEOT_DpOT0_.exit41
  %.lcssa28.sink.i.ph.i = phi ptr [ %i.fj, %bb.m ], [ null, %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapISt4pairIPNS_10BasicBlockES4_EiLj4ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_iEEEES5_iS7_SA_E24lookupOrInsertIntoBucketIS5_JEEES2_IPSA_bEOT_DpOT0_.exit41 ], [ %i.ga, %bb.n ]
  %i.gh = shl i32 %i.el, 1
  %i.gi = and i32 %i.gh, -4
  %i.gj = add i32 %i.gi, 4
  %i.gk = mul i32 %.sink.i.i.i.i, 3
  %.not.i.i = icmp ult i32 %i.gj, %i.gk
  br i1 %.not.i.i, label %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapISt4pairIPNS_10BasicBlockES4_EiLj4ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_iEEEES5_iS7_SA_E22findBucketForInsertionIS5_EEPSA_RKT_SE_.exit.i, label %bb.o, !prof !81

bb.o:                                             ; preds = %.loopexit.i
  %i.gl = shl i32 %.sink.i.i.i.i, 1
  call void @_ZN4llvm12DenseMapBaseINS_13SmallDenseMapISt4pairIPNS_10BasicBlockES4_EiLj4ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_iEEEES5_iS7_SA_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %2, i32 noundef %i.gl)
  %i.gm = load i32, ptr %2, align 8, !noalias !827
  %i.gn = and i32 %i.gm, 1
  %.not.i.i.i = icmp eq i32 %i.gn, 0              ; 3 uses
  %i.go = load ptr, ptr %i.e, align 8, !noalias !827
  %i.gp = load ptr, ptr %i.f, align 8, !noalias !827
  %i.gq = load i32, ptr %i.g, align 8, !noalias !827
  %.sink2.i.i.i = select i1 %.not.i.i.i, ptr %i.go, ptr %i.e ; 5 uses
  %.sink1.i.i.i = select i1 %.not.i.i.i, ptr %i.gp, ptr %i.h ; 5 uses
  %.sink.i.i.i = select i1 %.not.i.i.i, i32 %i.gq, i32 4 ; 2 uses
  %i.gr = icmp ne i32 %.sink.i.i.i, 0
  call void @llvm.assume(i1 %i.gr)
  %i.gs = add i32 %.sink.i.i.i, -1                ; 2 uses
  %i.gt = ptrtoint ptr %i.en to i64
  %i.gu = mul i64 %i.gt, -4658895280553007687     ; 2 uses
  %i.gv = lshr i64 %i.gu, 31
  %i.gw = xor i64 %i.gv, %i.gu
  %i.gx = mul i64 %i.ep, -4658895280553007687     ; 2 uses
  %i.gy = lshr i64 %i.gx, 31
  %i.gz = xor i64 %i.gy, %i.gx
  %i.ha = shl i64 %i.gw, 32
  %i.hb = and i64 %i.gz, 4294967295
  %i.hc = or disjoint i64 %i.hb, %i.ha
  %i.hd = mul i64 %i.hc, -4658895280553007687     ; 2 uses
  %i.he = lshr i64 %i.hd, 31
  %i.hf = xor i64 %i.he, %i.hd
  %i.hg = trunc i64 %i.hf to i32
  %i.hh = and i32 %i.gs, %i.hg                    ; 3 uses
  %i.hi = zext i32 %i.hh to i64                   ; 2 uses
  %i.hj = getelementptr inbounds nuw [24 x i8], ptr %.sink2.i.i.i, i64 %i.hi ; 2 uses
  %i.hk = lshr i64 %i.hi, 5
  %i.hl = getelementptr inbounds nuw [4 x i8], ptr %.sink1.i.i.i, i64 %i.hk
  %i.hm = load i32, ptr %i.hl, align 4, !tbaa !94
  %i.hn = and i32 %i.hh, 31
  %i.ho = lshr i32 %i.hm, %i.hn
  %i.hp = trunc i32 %i.ho to i1
  br i1 %i.hp, label %.lr.ph.i, label %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapISt4pairIPNS_10BasicBlockES4_EiLj4ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_iEEEES5_iS7_SA_E22findBucketForInsertionIS5_EEPSA_RKT_SE_.exit.i, !prof !150

.lr.ph.i:                                         ; preds = %bb.o, %bb.p
  %i.hq = phi ptr [ %i.ia, %bb.p ], [ %i.hj, %bb.o ] ; 3 uses
  %.024.i = phi i32 [ %i.hy, %bb.p ], [ %i.hh, %bb.o ]
  %i.hr = load ptr, ptr %i.hq, align 8, !tbaa !385
  %i.hs = icmp eq ptr %i.en, %i.hr
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hq, i64 8
  %i.hu = load ptr, ptr %i.ht, align 8
  %i.hv = icmp eq ptr %i.hu, %i.eq
  %i.hw = select i1 %i.hs, i1 %i.hv, i1 false
  br i1 %i.hw, label %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapISt4pairIPNS_10BasicBlockES4_EiLj4ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_iEEEES5_iS7_SA_E22findBucketForInsertionIS5_EEPSA_RKT_SE_.exit.i, label %bb.p, !prof !81

bb.p:                                             ; preds = %.lr.ph.i
  %i.hx = add nuw i32 %.024.i, 1
  %i.hy = and i32 %i.hx, %i.gs                    ; 3 uses
  %i.hz = zext i32 %i.hy to i64                   ; 2 uses
  %i.ia = getelementptr inbounds nuw [24 x i8], ptr %.sink2.i.i.i, i64 %i.hz ; 2 uses
  %i.ib = lshr i64 %i.hz, 5
  %i.ic = getelementptr inbounds nuw [4 x i8], ptr %.sink1.i.i.i, i64 %i.ib
  %i.id = load i32, ptr %i.ic, align 4, !tbaa !94
  %i.ie = and i32 %i.hy, 31
  %i.if = lshr i32 %i.id, %i.ie
  %i.ig = trunc i32 %i.if to i1
  br i1 %i.ig, label %.lr.ph.i, label %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapISt4pairIPNS_10BasicBlockES4_EiLj4ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_iEEEES5_iS7_SA_E22findBucketForInsertionIS5_EEPSA_RKT_SE_.exit.i, !prof !151, !llvm.loop !14

_ZN4llvm12DenseMapBaseINS_13SmallDenseMapISt4pairIPNS_10BasicBlockES4_EiLj4ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_iEEEES5_iS7_SA_E22findBucketForInsertionIS5_EEPSA_RKT_SE_.exit.i: ; preds = %bb.p, %.lr.ph.i, %bb.o, %.loopexit.i
  %.pre-phi83 = phi ptr [ %.sink2.i.i.i.i, %.loopexit.i ], [ %.sink2.i.i.i, %bb.o ], [ %.sink2.i.i.i, %.lr.ph.i ], [ %.sink2.i.i.i, %bb.p ]
  %.pre-phi82 = phi ptr [ %.sink1.i.i.i.i, %.loopexit.i ], [ %.sink1.i.i.i, %bb.o ], [ %.sink1.i.i.i, %.lr.ph.i ], [ %.sink1.i.i.i, %bb.p ]
  %i.ih = phi ptr [ %.lcssa28.sink.i.ph.i, %.loopexit.i ], [ %i.hj, %bb.o ], [ %i.ia, %bb.p ], [ %i.hq, %.lr.ph.i ] ; 4 uses
  %i.ii = ptrtoint ptr %i.ih to i64
  %i.ij = ptrtoint ptr %.pre-phi83 to i64
  %i.ik = sub i64 %i.ii, %i.ij
  %i.il = sdiv exact i64 %i.ik, 24                ; 2 uses
  %i.im = trunc i64 %i.il to i32
  %i.in = and i32 %i.im, 31
  %i.io = shl nuw i32 1, %i.in
  %i.ip = lshr i64 %i.il, 5
  %i.iq = getelementptr inbounds nuw [4 x i8], ptr %.pre-phi82, i64 %i.ip ; 2 uses
  %i.ir = load i32, ptr %i.iq, align 4, !tbaa !94
  %i.is = or i32 %i.io, %i.ir
  store i32 %i.is, ptr %i.iq, align 4, !tbaa !94
  %i.it = load i32, ptr %2, align 8               ; 2 uses
  %10 = and i32 %i.it, -2
  %i.iu = add i32 %10, 2
  %11 = and i32 %i.it, 1
  %12 = or disjoint i32 %i.iu, %11
  store i32 %12, ptr %2, align 8
  store ptr %i.en, ptr %i.ih, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ih, i64 8
  store ptr %i.eq, ptr %.sroa.6.0..sroa_idx, align 8
  %i.iv = getelementptr inbounds nuw i8, ptr %i.ih, i64 16
  store i32 0, ptr %i.iv, align 8, !tbaa !94
  br label %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapISt4pairIPNS_10BasicBlockES4_EiLj4ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_iEEEES5_iS7_SA_E24lookupOrInsertIntoBucketIS5_JEEES2_IPSA_bEOT_DpOT0_.exit

_ZN4llvm12DenseMapBaseINS_13SmallDenseMapISt4pairIPNS_10BasicBlockES4_EiLj4ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_iEEEES5_iS7_SA_E24lookupOrInsertIntoBucketIS5_JEEES2_IPSA_bEOT_DpOT0_.exit.loopexit: ; preds = %.lr.ph.i.i
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.fq, i64 16
  %.pre78 = load i32, ptr %.phi.trans.insert, align 4, !tbaa !94
  br label %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapISt4pairIPNS_10BasicBlockES4_EiLj4ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_iEEEES5_iS7_SA_E24lookupOrInsertIntoBucketIS5_JEEES2_IPSA_bEOT_DpOT0_.exit

_ZN4llvm12DenseMapBaseINS_13SmallDenseMapISt4pairIPNS_10BasicBlockES4_EiLj4ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_iEEEES5_iS7_SA_E24lookupOrInsertIntoBucketIS5_JEEES2_IPSA_bEOT_DpOT0_.exit: ; preds = %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapISt4pairIPNS_10BasicBlockES4_EiLj4ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_iEEEES5_iS7_SA_E24lookupOrInsertIntoBucketIS5_JEEES2_IPSA_bEOT_DpOT0_.exit.loopexit, %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapISt4pairIPNS_10BasicBlockES4_EiLj4ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_iEEEES5_iS7_SA_E22findBucketForInsertionIS5_EEPSA_RKT_SE_.exit.i
  %i.iw = phi i32 [ 0, %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapISt4pairIPNS_10BasicBlockES4_EiLj4ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_iEEEES5_iS7_SA_E22findBucketForInsertionIS5_EEPSA_RKT_SE_.exit.i ], [ %.pre78, %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapISt4pairIPNS_10BasicBlockES4_EiLj4ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_iEEEES5_iS7_SA_E24lookupOrInsertIntoBucketIS5_JEEES2_IPSA_bEOT_DpOT0_.exit.loopexit ] ; 2 uses
  %i.ix = load i8, ptr %3, align 1, !tbaa !137, !range !53, !noundef !54
  %i.iy = trunc nuw i8 %i.ix to i1
  %i.iz = load i32, ptr %i.em, align 4, !tbaa !94 ; 2 uses
  %i.ja = icmp slt i32 %i.iz, %i.iw
  %i.jb = icmp sgt i32 %i.iz, %i.iw
  %i.jc = select i1 %i.iy, i1 %i.ja, i1 %i.jb
  br i1 %i.jc, label %bb.q, label %_ZSt25__unguarded_linear_insertIPN4llvm3cfg6UpdateIPNS0_10BasicBlockEEEN9__gnu_cxx5__ops14_Val_comp_iterIZNS1_15LegalizeUpdatesIS4_EEvNS0_8ArrayRefINS2_IT_EEEERNS0_15SmallVectorImplISD_EEbbEUlRKS5_SJ_E_EEEvSC_T0_.exit

bb.q:                                             ; preds = %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapISt4pairIPNS_10BasicBlockES4_EiLj4ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_iEEEES5_iS7_SA_E24lookupOrInsertIntoBucketIS5_JEEES2_IPSA_bEOT_DpOT0_.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.09.i, ptr noundef nonnull align 8 dereferenceable(16) %.0.i, i64 16, i1 false), !tbaa.struct !389
  br label %bb.h, !llvm.loop !15

_ZSt25__unguarded_linear_insertIPN4llvm3cfg6UpdateIPNS0_10BasicBlockEEEN9__gnu_cxx5__ops14_Val_comp_iterIZNS1_15LegalizeUpdatesIS4_EEvNS0_8ArrayRefINS2_IT_EEEERNS0_15SmallVectorImplISD_EEbbEUlRKS5_SJ_E_EEEvSC_T0_.exit: ; preds = %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapISt4pairIPNS_10BasicBlockES4_EiLj4ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_iEEEES5_iS7_SA_E24lookupOrInsertIntoBucketIS5_JEEES2_IPSA_bEOT_DpOT0_.exit
  store ptr %.sroa.0.0.copyload.i, ptr %.09.i, align 8, !tbaa !148
  %.sroa.5.0..09.sroa_idx.i = getelementptr inbounds nuw i8, ptr %.09.i, i64 8
  store i64 %.sroa.5.0.copyload.i, ptr %.sroa.5.0..09.sroa_idx.i, align 8, !tbaa !202
  br label %bb.r

bb.r:                                             ; preds = %_ZSt13move_backwardIPN4llvm3cfg6UpdateIPNS0_10BasicBlockEEES6_ET0_T_S8_S7_.exit, %_ZSt25__unguarded_linear_insertIPN4llvm3cfg6UpdateIPNS0_10BasicBlockEEEN9__gnu_cxx5__ops14_Val_comp_iterIZNS1_15LegalizeUpdatesIS4_EEvNS0_8ArrayRefINS2_IT_EEEERNS0_15SmallVectorImplISD_EEbbEUlRKS5_SJ_E_EEEvSC_T0_.exit
  %.0 = getelementptr inbounds nuw i8, ptr %.068, i64 16 ; 2 uses
  %.not = icmp eq ptr %.0, %1
  br i1 %.not, label %.loopexit, label %bb.b, !llvm.loop !823

.loopexit:                                        ; preds = %bb.r, %.preheader, %bb.a
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZSt26__unguarded_insertion_sortIPN4llvm3cfg6UpdateIPNS0_10BasicBlockEEEN9__gnu_cxx5__ops15_Iter_comp_iterIZNS1_15LegalizeUpdatesIS4_EEvNS0_8ArrayRefINS2_IT_EEEERNS0_15SmallVectorImplISD_EEbbEUlRKS5_SJ_E_EEEvSC_SC_T0_(ptr noundef %0, ptr noundef %1, ptr %2, ptr %3) local_unnamed_addr #1 comdat {
bb.a:
  %.not54 = icmp eq ptr %0, %1
  br i1 %.not54, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 8 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 104 ; 4 uses
  br label %bb.b

._crit_edge:                                      ; preds = %_ZSt25__unguarded_linear_insertIPN4llvm3cfg6UpdateIPNS0_10BasicBlockEEEN9__gnu_cxx5__ops14_Val_comp_iterIZNS1_15LegalizeUpdatesIS4_EEvNS0_8ArrayRefINS2_IT_EEEERNS0_15SmallVectorImplISD_EEbbEUlRKS5_SJ_E_EEEvSC_T0_.exit, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph, %_ZSt25__unguarded_linear_insertIPN4llvm3cfg6UpdateIPNS0_10BasicBlockEEEN9__gnu_cxx5__ops14_Val_comp_iterIZNS1_15LegalizeUpdatesIS4_EEvNS0_8ArrayRefINS2_IT_EEEERNS0_15SmallVectorImplISD_EEbbEUlRKS5_SJ_E_EEEvSC_T0_.exit
  %.055 = phi ptr [ %0, %.lr.ph ], [ %i.hx, %_ZSt25__unguarded_linear_insertIPN4llvm3cfg6UpdateIPNS0_10BasicBlockEEEN9__gnu_cxx5__ops14_Val_comp_iterIZNS1_15LegalizeUpdatesIS4_EEvNS0_8ArrayRefINS2_IT_EEEERNS0_15SmallVectorImplISD_EEbbEUlRKS5_SJ_E_EEEvSC_T0_.exit ] ; 4 uses
  %.sroa.0.0.copyload.i = load ptr, ptr %.055, align 8, !tbaa !148 ; 5 uses
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.055, i64 8
  %.sroa.5.0.copyload.i = load i64, ptr %.sroa.5.0..sroa_idx.i, align 8, !tbaa !202 ; 2 uses
  %i.e = and i64 %.sroa.5.0.copyload.i, -8        ; 2 uses
  %i.f = inttoptr i64 %i.e to ptr                 ; 3 uses
  %i.g = ptrtoint ptr %.sroa.0.0.copyload.i to i64
  %i.h = mul i64 %i.g, -4658895280553007687       ; 2 uses
  %i.i = lshr i64 %i.h, 31
  %i.j = xor i64 %i.i, %i.h
  %i.k = mul i64 %i.e, -4658895280553007687       ; 2 uses
  %i.l = lshr i64 %i.k, 31
  %i.m = xor i64 %i.l, %i.k
  %i.n = shl i64 %i.j, 32
  %i.o = and i64 %i.m, 4294967295
  %i.p = or disjoint i64 %i.o, %i.n
  %i.q = mul i64 %i.p, -4658895280553007687       ; 2 uses
  %i.r = lshr i64 %i.q, 31
  %i.s = xor i64 %i.r, %i.q
  %i.t = trunc i64 %i.s to i32                    ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.l, %bb.b
  %.09.i = phi ptr [ %.055, %bb.b ], [ %.0.i, %bb.l ] ; 5 uses
  %.0.i = getelementptr inbounds i8, ptr %.09.i, i64 -16 ; 3 uses
  %i.u = load i32, ptr %2, align 8, !noalias !845 ; 3 uses
  %i.v = and i32 %i.u, 1                          ; 2 uses
  %.not.i.i.i.i11 = icmp eq i32 %i.v, 0           ; 3 uses
  %i.w = load ptr, ptr %i.a, align 8, !noalias !845 ; 2 uses
  %i.x = load ptr, ptr %i.b, align 8, !noalias !845 ; 2 uses
  %i.y = load i32, ptr %i.c, align 8, !noalias !845 ; 2 uses
  %.sink2.i.i.i.i12 = select i1 %.not.i.i.i.i11, ptr %i.w, ptr %i.a ; 3 uses
  %.sink1.i.i.i.i13 = select i1 %.not.i.i.i.i11, ptr %i.x, ptr %i.d ; 3 uses
  %.sink.i.i.i.i14 = select i1 %.not.i.i.i.i11, i32 %i.y, i32 4 ; 4 uses
  %i.z = icmp eq i32 %.sink.i.i.i.i14, 0
  br i1 %i.z, label %.loopexit.i15, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.aa = add i32 %.sink.i.i.i.i14, -1            ; 2 uses
  %i.ab = and i32 %i.aa, %i.t                     ; 3 uses
  %i.ac = zext i32 %i.ab to i64                   ; 2 uses
  %i.ad = getelementptr inbounds nuw [24 x i8], ptr %.sink2.i.i.i.i12, i64 %i.ac ; 2 uses
  %i.ae = lshr i64 %i.ac, 5
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %.sink1.i.i.i.i13, i64 %i.ae
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !94
  %i.ah = and i32 %i.ab, 31
  %i.ai = lshr i32 %i.ag, %i.ah
  %i.aj = trunc i32 %i.ai to i1
  br i1 %i.aj, label %.lr.ph.i.i30, label %.loopexit.i15, !prof !150

.lr.ph.i.i30:                                     ; preds = %bb.d, %bb.e
  %i.ak = phi ptr [ %i.au, %bb.e ], [ %i.ad, %bb.d ] ; 3 uses
  %.024.i.i31 = phi i32 [ %i.as, %bb.e ], [ %i.ab, %bb.d ]
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !385
  %i.am = icmp eq ptr %.sroa.0.0.copyload.i, %i.al
  %i.an = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %i.ao = load ptr, ptr %i.an, align 8
  %i.ap = icmp eq ptr %i.ao, %i.f
  %i.aq = select i1 %i.am, i1 %i.ap, i1 false
  br i1 %i.aq, label %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapISt4pairIPNS_10BasicBlockES4_EiLj4ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_iEEEES5_iS7_SA_E24lookupOrInsertIntoBucketIS5_JEEES2_IPSA_bEOT_DpOT0_.exit32, label %bb.e, !prof !81

bb.e:                                             ; preds = %.lr.ph.i.i30
  %i.ar = add nuw i32 %.024.i.i31, 1
  %i.as = and i32 %i.ar, %i.aa                    ; 3 uses
  %i.at = zext i32 %i.as to i64                   ; 2 uses
  %i.au = getelementptr inbounds nuw [24 x i8], ptr %.sink2.i.i.i.i12, i64 %i.at ; 2 uses
  %i.av = lshr i64 %i.at, 5
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %.sink1.i.i.i.i13, i64 %i.av
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !94
  %i.ay = and i32 %i.as, 31
  %i.az = lshr i32 %i.ax, %i.ay
  %i.ba = trunc i32 %i.az to i1
  br i1 %i.ba, label %.lr.ph.i.i30, label %.loopexit.i15, !prof !151, !llvm.loop !14

.loopexit.i15:                                    ; preds = %bb.e, %bb.d, %bb.c
  %.lcssa28.sink.i.ph.i16 = phi ptr [ %i.ad, %bb.d ], [ null, %bb.c ], [ %i.au, %bb.e ]
  %i.bb = shl i32 %i.u, 1
  %i.bc = and i32 %i.bb, -4
  %i.bd = add i32 %i.bc, 4
  %i.be = mul i32 %.sink.i.i.i.i14, 3
  %.not.i.i17 = icmp ult i32 %i.bd, %i.be
  br i1 %.not.i.i17, label %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapISt4pairIPNS_10BasicBlockES4_EiLj4ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_iEEEES5_iS7_SA_E22findBucketForInsertionIS5_EEPSA_RKT_SE_.exit.i23, label %bb.f, !prof !81

bb.f:                                             ; preds = %.loopexit.i15
  %i.bf = shl i32 %.sink.i.i.i.i14, 1
  tail call void @_ZN4llvm12DenseMapBaseINS_13SmallDenseMapISt4pairIPNS_10BasicBlockES4_EiLj4ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_iEEEES5_iS7_SA_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %2, i32 noundef %i.bf)
  %i.bg = load i32, ptr %2, align 8, !noalias !846
  %i.bh = and i32 %i.bg, 1
  %.not.i.i.i33 = icmp eq i32 %i.bh, 0            ; 3 uses
  %i.bi = load ptr, ptr %i.a, align 8, !noalias !846
  %i.bj = load ptr, ptr %i.b, align 8, !noalias !846
  %i.bk = load i32, ptr %i.c, align 8, !noalias !846
  %.sink2.i.i.i34 = select i1 %.not.i.i.i33, ptr %i.bi, ptr %i.a ; 5 uses
  %.sink1.i.i.i35 = select i1 %.not.i.i.i33, ptr %i.bj, ptr %i.d ; 5 uses
  %.sink.i.i.i36 = select i1 %.not.i.i.i33, i32 %i.bk, i32 4 ; 2 uses
  %i.bl = icmp ne i32 %.sink.i.i.i36, 0
  tail call void @llvm.assume(i1 %i.bl)
  %i.bm = add i32 %.sink.i.i.i36, -1              ; 2 uses
  %i.bn = and i32 %i.bm, %i.t                     ; 3 uses
  %i.bo = zext i32 %i.bn to i64                   ; 2 uses
  %i.bp = getelementptr inbounds nuw [24 x i8], ptr %.sink2.i.i.i34, i64 %i.bo ; 2 uses
  %i.bq = lshr i64 %i.bo, 5
  %i.br = getelementptr inbounds nuw [4 x i8], ptr %.sink1.i.i.i35, i64 %i.bq
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !94
  %i.bt = and i32 %i.bn, 31
  %i.bu = lshr i32 %i.bs, %i.bt
  %i.bv = trunc i32 %i.bu to i1
  br i1 %i.bv, label %.lr.ph.i39, label %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapISt4pairIPNS_10BasicBlockES4_EiLj4ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_iEEEES5_iS7_SA_E22findBucketForInsertionIS5_EEPSA_RKT_SE_.exit.i23, !prof !150

.lr.ph.i39:                                       ; preds = %bb.f, %bb.g
  %i.bw = phi ptr [ %i.cg, %bb.g ], [ %i.bp, %bb.f ] ; 3 uses
  %.024.i40 = phi i32 [ %i.ce, %bb.g ], [ %i.bn, %bb.f ]
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !385
  %i.by = icmp eq ptr %.sroa.0.0.copyload.i, %i.bx
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bw, i64 8
  %i.ca = load ptr, ptr %i.bz, align 8
  %i.cb = icmp eq ptr %i.ca, %i.f
  %i.cc = select i1 %i.by, i1 %i.cb, i1 false
  br i1 %i.cc, label %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapISt4pairIPNS_10BasicBlockES4_EiLj4ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_iEEEES5_iS7_SA_E22findBucketForInsertionIS5_EEPSA_RKT_SE_.exit.i23, label %bb.g, !prof !81

bb.g:                                             ; preds = %.lr.ph.i39
  %i.cd = add nuw i32 %.024.i40, 1
  %i.ce = and i32 %i.cd, %i.bm                    ; 3 uses
  %i.cf = zext i32 %i.ce to i64                   ; 2 uses
  %i.cg = getelementptr inbounds nuw [24 x i8], ptr %.sink2.i.i.i34, i64 %i.cf ; 2 uses
  %i.ch = lshr i64 %i.cf, 5
  %i.ci = getelementptr inbounds nuw [4 x i8], ptr %.sink1.i.i.i35, i64 %i.ch
  %i.cj = load i32, ptr %i.ci, align 4, !tbaa !94
  %i.ck = and i32 %i.ce, 31
  %i.cl = lshr i32 %i.cj, %i.ck
  %i.cm = trunc i32 %i.cl to i1
  br i1 %i.cm, label %.lr.ph.i39, label %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapISt4pairIPNS_10BasicBlockES4_EiLj4ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_iEEEES5_iS7_SA_E22findBucketForInsertionIS5_EEPSA_RKT_SE_.exit.i23, !prof !151, !llvm.loop !14

_ZN4llvm12DenseMapBaseINS_13SmallDenseMapISt4pairIPNS_10BasicBlockES4_EiLj4ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_iEEEES5_iS7_SA_E22findBucketForInsertionIS5_EEPSA_RKT_SE_.exit.i23: ; preds = %bb.g, %.lr.ph.i39, %bb.f, %.loopexit.i15
  %.pre-phi66 = phi ptr [ %.sink2.i.i.i.i12, %.loopexit.i15 ], [ %.sink2.i.i.i34, %bb.f ], [ %.sink2.i.i.i34, %.lr.ph.i39 ], [ %.sink2.i.i.i34, %bb.g ]
  %.pre-phi = phi ptr [ %.sink1.i.i.i.i13, %.loopexit.i15 ], [ %.sink1.i.i.i35, %bb.f ], [ %.sink1.i.i.i35, %.lr.ph.i39 ], [ %.sink1.i.i.i35, %bb.g ]
  %i.cn = phi ptr [ %.lcssa28.sink.i.ph.i16, %.loopexit.i15 ], [ %i.bp, %bb.f ], [ %i.cg, %bb.g ], [ %i.bw, %.lr.ph.i39 ] ; 5 uses
  %i.co = ptrtoint ptr %i.cn to i64
  %i.cp = ptrtoint ptr %.pre-phi66 to i64
  %i.cq = sub i64 %i.co, %i.cp
  %i.cr = sdiv exact i64 %i.cq, 24                ; 2 uses
  %i.cs = trunc i64 %i.cr to i32
  %i.ct = and i32 %i.cs, 31
  %i.cu = shl nuw i32 1, %i.ct
  %i.cv = lshr i64 %i.cr, 5
  %i.cw = getelementptr inbounds nuw [4 x i8], ptr %.pre-phi, i64 %i.cv ; 2 uses
  %i.cx = load i32, ptr %i.cw, align 4, !tbaa !94
  %i.cy = or i32 %i.cu, %i.cx
  store i32 %i.cy, ptr %i.cw, align 4, !tbaa !94
  %i.cz = load i32, ptr %2, align 8               ; 2 uses
  %4 = and i32 %i.cz, -2
  %i.da = add i32 %4, 2
  %5 = and i32 %i.cz, 1
  %6 = or disjoint i32 %i.da, %5
  store i32 %6, ptr %2, align 8
  store ptr %.sroa.0.0.copyload.i, ptr %i.cn, align 8
  %.sroa.646.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cn, i64 8
  store ptr %i.f, ptr %.sroa.646.0..sroa_idx, align 8
  %i.db = getelementptr inbounds nuw i8, ptr %i.cn, i64 16
  store i32 0, ptr %i.db, align 8, !tbaa !94
  %.pre = load i32, ptr %2, align 8, !noalias !847 ; 2 uses
  %.pre62 = load ptr, ptr %i.a, align 8, !noalias !847
  %.pre63 = load ptr, ptr %i.b, align 8, !noalias !847
  %.pre64 = load i32, ptr %i.c, align 8, !noalias !847
  %.pre67 = and i32 %.pre, 1
  br label %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapISt4pairIPNS_10BasicBlockES4_EiLj4ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_iEEEES5_iS7_SA_E24lookupOrInsertIntoBucketIS5_JEEES2_IPSA_bEOT_DpOT0_.exit32

_ZN4llvm12DenseMapBaseINS_13SmallDenseMapISt4pairIPNS_10BasicBlockES4_EiLj4ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_iEEEES5_iS7_SA_E24lookupOrInsertIntoBucketIS5_JEEES2_IPSA_bEOT_DpOT0_.exit32: ; preds = %.lr.ph.i.i30, %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapISt4pairIPNS_10BasicBlockES4_EiLj4ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_iEEEES5_iS7_SA_E22findBucketForInsertionIS5_EEPSA_RKT_SE_.exit.i23
  %.pre-phi68 = phi i32 [ %.pre67, %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapISt4pairIPNS_10BasicBlockES4_EiLj4ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_iEEEES5_iS7_SA_E22findBucketForInsertionIS5_EEPSA_RKT_SE_.exit.i23 ], [ %i.v, %.lr.ph.i.i30 ]
  %i.dc = phi i32 [ %.pre64, %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapISt4pairIPNS_10BasicBlockES4_EiLj4ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_iEEEES5_iS7_SA_E22findBucketForInsertionIS5_EEPSA_RKT_SE_.exit.i23 ], [ %i.y, %.lr.ph.i.i30 ]
  %i.dd = phi ptr [ %.pre63, %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapISt4pairIPNS_10BasicBlockES4_EiLj4ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_iEEEES5_iS7_SA_E22findBucketForInsertionIS5_EEPSA_RKT_SE_.exit.i23 ], [ %i.x, %.lr.ph.i.i30 ]
  %i.de = phi ptr [ %.pre62, %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapISt4pairIPNS_10BasicBlockES4_EiLj4ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_iEEEES5_iS7_SA_E22findBucketForInsertionIS5_EEPSA_RKT_SE_.exit.i23 ], [ %i.w, %.lr.ph.i.i30 ]
  %i.df = phi i32 [ %.pre, %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapISt4pairIPNS_10BasicBlockES4_EiLj4ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_iEEEES5_iS7_SA_E22findBucketForInsertionIS5_EEPSA_RKT_SE_.exit.i23 ], [ %i.u, %.lr.ph.i.i30 ]
  %.sroa.0.0.i26 = phi ptr [ %i.cn, %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapISt4pairIPNS_10BasicBlockES4_EiLj4ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_iEEEES5_iS7_SA_E22findBucketForInsertionIS5_EEPSA_RKT_SE_.exit.i23 ], [ %i.ak, %.lr.ph.i.i30 ]
  %i.dg = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i26, i64 16
  %i.dh = load ptr, ptr %.0.i, align 8, !tbaa !383 ; 5 uses
  %i.di = getelementptr inbounds i8, ptr %.09.i, i64 -8
  %.0.copyload.i.i.i.i9.i.i.i = load i64, ptr %i.di, align 8
  %i.dj = and i64 %.0.copyload.i.i.i.i9.i.i.i, -8 ; 3 uses
  %i.dk = inttoptr i64 %i.dj to ptr               ; 3 uses
  %.not.i.i.i.i = icmp eq i32 %.pre-phi68, 0      ; 3 uses
  %.sink2.i.i.i.i = select i1 %.not.i.i.i.i, ptr %i.de, ptr %i.a ; 3 uses
  %.sink1.i.i.i.i = select i1 %.not.i.i.i.i, ptr %i.dd, ptr %i.d ; 3 uses
  %.sink.i.i.i.i = select i1 %.not.i.i.i.i, i32 %i.dc, i32 4 ; 4 uses
  %i.dl = icmp eq i32 %.sink.i.i.i.i, 0
  br i1 %i.dl, label %.loopexit.i, label %bb.h

bb.h:                                             ; preds = %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapISt4pairIPNS_10BasicBlockES4_EiLj4ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_iEEEES5_iS7_SA_E24lookupOrInsertIntoBucketIS5_JEEES2_IPSA_bEOT_DpOT0_.exit32
  %i.dm = add i32 %.sink.i.i.i.i, -1              ; 2 uses
  %i.dn = ptrtoint ptr %i.dh to i64
  %i.do = mul i64 %i.dn, -4658895280553007687     ; 2 uses
  %i.dp = lshr i64 %i.do, 31
  %i.dq = xor i64 %i.dp, %i.do
  %i.dr = mul i64 %i.dj, -4658895280553007687     ; 2 uses
  %i.ds = lshr i64 %i.dr, 31
  %i.dt = xor i64 %i.ds, %i.dr
  %i.du = shl i64 %i.dq, 32
  %i.dv = and i64 %i.dt, 4294967295
  %i.dw = or disjoint i64 %i.dv, %i.du
  %i.dx = mul i64 %i.dw, -4658895280553007687     ; 2 uses
  %i.dy = lshr i64 %i.dx, 31
  %i.dz = xor i64 %i.dy, %i.dx
  %i.ea = trunc i64 %i.dz to i32
  %i.eb = and i32 %i.dm, %i.ea                    ; 3 uses
  %i.ec = zext i32 %i.eb to i64                   ; 2 uses
  %i.ed = getelementptr inbounds nuw [24 x i8], ptr %.sink2.i.i.i.i, i64 %i.ec ; 2 uses
  %i.ee = lshr i64 %i.ec, 5
  %i.ef = getelementptr inbounds nuw [4 x i8], ptr %.sink1.i.i.i.i, i64 %i.ee
  %i.eg = load i32, ptr %i.ef, align 4, !tbaa !94
  %i.eh = and i32 %i.eb, 31
  %i.ei = lshr i32 %i.eg, %i.eh
  %i.ej = trunc i32 %i.ei to i1
  br i1 %i.ej, label %.lr.ph.i.i, label %.loopexit.i, !prof !150

.lr.ph.i.i:                                       ; preds = %bb.h, %bb.i
  %i.ek = phi ptr [ %i.eu, %bb.i ], [ %i.ed, %bb.h ] ; 3 uses
  %.024.i.i = phi i32 [ %i.es, %bb.i ], [ %i.eb, %bb.h ]
  %i.el = load ptr, ptr %i.ek, align 8, !tbaa !385
  %i.em = icmp eq ptr %i.dh, %i.el
  %i.en = getelementptr inbounds nuw i8, ptr %i.ek, i64 8
  %i.eo = load ptr, ptr %i.en, align 8
  %i.ep = icmp eq ptr %i.eo, %i.dk
  %i.eq = select i1 %i.em, i1 %i.ep, i1 false
  br i1 %i.eq, label %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapISt4pairIPNS_10BasicBlockES4_EiLj4ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_iEEEES5_iS7_SA_E24lookupOrInsertIntoBucketIS5_JEEES2_IPSA_bEOT_DpOT0_.exit.loopexit, label %bb.i, !prof !81

bb.i:                                             ; preds = %.lr.ph.i.i
  %i.er = add nuw i32 %.024.i.i, 1
  %i.es = and i32 %i.er, %i.dm                    ; 3 uses
  %i.et = zext i32 %i.es to i64                   ; 2 uses
  %i.eu = getelementptr inbounds nuw [24 x i8], ptr %.sink2.i.i.i.i, i64 %i.et ; 2 uses
  %i.ev = lshr i64 %i.et, 5
  %i.ew = getelementptr inbounds nuw [4 x i8], ptr %.sink1.i.i.i.i, i64 %i.ev
  %i.ex = load i32, ptr %i.ew, align 4, !tbaa !94
  %i.ey = and i32 %i.es, 31
  %i.ez = lshr i32 %i.ex, %i.ey
  %i.fa = trunc i32 %i.ez to i1
  br i1 %i.fa, label %.lr.ph.i.i, label %.loopexit.i, !prof !151, !llvm.loop !14

.loopexit.i:                                      ; preds = %bb.i, %bb.h, %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapISt4pairIPNS_10BasicBlockES4_EiLj4ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_iEEEES5_iS7_SA_E24lookupOrInsertIntoBucketIS5_JEEES2_IPSA_bEOT_DpOT0_.exit32
  %.lcssa28.sink.i.ph.i = phi ptr [ %i.ed, %bb.h ], [ null, %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapISt4pairIPNS_10BasicBlockES4_EiLj4ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_iEEEES5_iS7_SA_E24lookupOrInsertIntoBucketIS5_JEEES2_IPSA_bEOT_DpOT0_.exit32 ], [ %i.eu, %bb.i ]
  %i.fb = shl i32 %i.df, 1
  %i.fc = and i32 %i.fb, -4
  %i.fd = add i32 %i.fc, 4
  %i.fe = mul i32 %.sink.i.i.i.i, 3
  %.not.i.i = icmp ult i32 %i.fd, %i.fe
  br i1 %.not.i.i, label %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapISt4pairIPNS_10BasicBlockES4_EiLj4ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_iEEEES5_iS7_SA_E22findBucketForInsertionIS5_EEPSA_RKT_SE_.exit.i, label %bb.j, !prof !81

bb.j:                                             ; preds = %.loopexit.i
  %i.ff = shl i32 %.sink.i.i.i.i, 1
  tail call void @_ZN4llvm12DenseMapBaseINS_13SmallDenseMapISt4pairIPNS_10BasicBlockES4_EiLj4ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_iEEEES5_iS7_SA_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %2, i32 noundef %i.ff)
  %i.fg = load i32, ptr %2, align 8, !noalias !848
  %i.fh = and i32 %i.fg, 1
  %.not.i.i.i = icmp eq i32 %i.fh, 0              ; 3 uses
  %i.fi = load ptr, ptr %i.a, align 8, !noalias !848
  %i.fj = load ptr, ptr %i.b, align 8, !noalias !848
  %i.fk = load i32, ptr %i.c, align 8, !noalias !848
  %.sink2.i.i.i = select i1 %.not.i.i.i, ptr %i.fi, ptr %i.a ; 5 uses
  %.sink1.i.i.i = select i1 %.not.i.i.i, ptr %i.fj, ptr %i.d ; 5 uses
  %.sink.i.i.i = select i1 %.not.i.i.i, i32 %i.fk, i32 4 ; 2 uses
  %i.fl = icmp ne i32 %.sink.i.i.i, 0
  tail call void @llvm.assume(i1 %i.fl)
  %i.fm = add i32 %.sink.i.i.i, -1                ; 2 uses
  %i.fn = ptrtoint ptr %i.dh to i64
  %i.fo = mul i64 %i.fn, -4658895280553007687     ; 2 uses
  %i.fp = lshr i64 %i.fo, 31
  %i.fq = xor i64 %i.fp, %i.fo
  %i.fr = mul i64 %i.dj, -4658895280553007687     ; 2 uses
  %i.fs = lshr i64 %i.fr, 31
  %i.ft = xor i64 %i.fs, %i.fr
  %i.fu = shl i64 %i.fq, 32
  %i.fv = and i64 %i.ft, 4294967295
  %i.fw = or disjoint i64 %i.fv, %i.fu
  %i.fx = mul i64 %i.fw, -4658895280553007687     ; 2 uses
  %i.fy = lshr i64 %i.fx, 31
  %i.fz = xor i64 %i.fy, %i.fx
  %i.ga = trunc i64 %i.fz to i32
  %i.gb = and i32 %i.fm, %i.ga                    ; 3 uses
  %i.gc = zext i32 %i.gb to i64                   ; 2 uses
  %i.gd = getelementptr inbounds nuw [24 x i8], ptr %.sink2.i.i.i, i64 %i.gc ; 2 uses
  %i.ge = lshr i64 %i.gc, 5
  %i.gf = getelementptr inbounds nuw [4 x i8], ptr %.sink1.i.i.i, i64 %i.ge
  %i.gg = load i32, ptr %i.gf, align 4, !tbaa !94
  %i.gh = and i32 %i.gb, 31
  %i.gi = lshr i32 %i.gg, %i.gh
  %i.gj = trunc i32 %i.gi to i1
  br i1 %i.gj, label %.lr.ph.i, label %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapISt4pairIPNS_10BasicBlockES4_EiLj4ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_iEEEES5_iS7_SA_E22findBucketForInsertionIS5_EEPSA_RKT_SE_.exit.i, !prof !150

.lr.ph.i:                                         ; preds = %bb.j, %bb.k
  %i.gk = phi ptr [ %i.gu, %bb.k ], [ %i.gd, %bb.j ] ; 3 uses
  %.024.i = phi i32 [ %i.gs, %bb.k ], [ %i.gb, %bb.j ]
  %i.gl = load ptr, ptr %i.gk, align 8, !tbaa !385
  %i.gm = icmp eq ptr %i.dh, %i.gl
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gk, i64 8
  %i.go = load ptr, ptr %i.gn, align 8
  %i.gp = icmp eq ptr %i.go, %i.dk
  %i.gq = select i1 %i.gm, i1 %i.gp, i1 false
  br i1 %i.gq, label %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapISt4pairIPNS_10BasicBlockES4_EiLj4ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_iEEEES5_iS7_SA_E22findBucketForInsertionIS5_EEPSA_RKT_SE_.exit.i, label %bb.k, !prof !81

bb.k:                                             ; preds = %.lr.ph.i
  %i.gr = add nuw i32 %.024.i, 1
  %i.gs = and i32 %i.gr, %i.fm                    ; 3 uses
  %i.gt = zext i32 %i.gs to i64                   ; 2 uses
  %i.gu = getelementptr inbounds nuw [24 x i8], ptr %.sink2.i.i.i, i64 %i.gt ; 2 uses
  %i.gv = lshr i64 %i.gt, 5
  %i.gw = getelementptr inbounds nuw [4 x i8], ptr %.sink1.i.i.i, i64 %i.gv
  %i.gx = load i32, ptr %i.gw, align 4, !tbaa !94
  %i.gy = and i32 %i.gs, 31
  %i.gz = lshr i32 %i.gx, %i.gy
  %i.ha = trunc i32 %i.gz to i1
  br i1 %i.ha, label %.lr.ph.i, label %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapISt4pairIPNS_10BasicBlockES4_EiLj4ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_iEEEES5_iS7_SA_E22findBucketForInsertionIS5_EEPSA_RKT_SE_.exit.i, !prof !151, !llvm.loop !14

_ZN4llvm12DenseMapBaseINS_13SmallDenseMapISt4pairIPNS_10BasicBlockES4_EiLj4ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_iEEEES5_iS7_SA_E22findBucketForInsertionIS5_EEPSA_RKT_SE_.exit.i: ; preds = %bb.k, %.lr.ph.i, %bb.j, %.loopexit.i
  %.pre-phi70 = phi ptr [ %.sink2.i.i.i.i, %.loopexit.i ], [ %.sink2.i.i.i, %bb.j ], [ %.sink2.i.i.i, %.lr.ph.i ], [ %.sink2.i.i.i, %bb.k ]
  %.pre-phi69 = phi ptr [ %.sink1.i.i.i.i, %.loopexit.i ], [ %.sink1.i.i.i, %bb.j ], [ %.sink1.i.i.i, %.lr.ph.i ], [ %.sink1.i.i.i, %bb.k ]
  %i.hb = phi ptr [ %.lcssa28.sink.i.ph.i, %.loopexit.i ], [ %i.gd, %bb.j ], [ %i.gu, %bb.k ], [ %i.gk, %.lr.ph.i ] ; 4 uses
  %i.hc = ptrtoint ptr %i.hb to i64
  %i.hd = ptrtoint ptr %.pre-phi70 to i64
  %i.he = sub i64 %i.hc, %i.hd
  %i.hf = sdiv exact i64 %i.he, 24                ; 2 uses
  %i.hg = trunc i64 %i.hf to i32
  %i.hh = and i32 %i.hg, 31
  %i.hi = shl nuw i32 1, %i.hh
  %i.hj = lshr i64 %i.hf, 5
  %i.hk = getelementptr inbounds nuw [4 x i8], ptr %.pre-phi69, i64 %i.hj ; 2 uses
  %i.hl = load i32, ptr %i.hk, align 4, !tbaa !94
  %i.hm = or i32 %i.hi, %i.hl
  store i32 %i.hm, ptr %i.hk, align 4, !tbaa !94
  %i.hn = load i32, ptr %2, align 8               ; 2 uses
  %7 = and i32 %i.hn, -2
  %i.ho = add i32 %7, 2
  %8 = and i32 %i.hn, 1
  %9 = or disjoint i32 %i.ho, %8
  store i32 %9, ptr %2, align 8
  store ptr %i.dh, ptr %i.hb, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.hb, i64 8
  store ptr %i.dk, ptr %.sroa.6.0..sroa_idx, align 8
  %i.hp = getelementptr inbounds nuw i8, ptr %i.hb, i64 16
  store i32 0, ptr %i.hp, align 8, !tbaa !94
  br label %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapISt4pairIPNS_10BasicBlockES4_EiLj4ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_iEEEES5_iS7_SA_E24lookupOrInsertIntoBucketIS5_JEEES2_IPSA_bEOT_DpOT0_.exit

_ZN4llvm12DenseMapBaseINS_13SmallDenseMapISt4pairIPNS_10BasicBlockES4_EiLj4ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_iEEEES5_iS7_SA_E24lookupOrInsertIntoBucketIS5_JEEES2_IPSA_bEOT_DpOT0_.exit.loopexit: ; preds = %.lr.ph.i.i
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.ek, i64 16
  %.pre65 = load i32, ptr %.phi.trans.insert, align 4, !tbaa !94
  br label %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapISt4pairIPNS_10BasicBlockES4_EiLj4ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_iEEEES5_iS7_SA_E24lookupOrInsertIntoBucketIS5_JEEES2_IPSA_bEOT_DpOT0_.exit

_ZN4llvm12DenseMapBaseINS_13SmallDenseMapISt4pairIPNS_10BasicBlockES4_EiLj4ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_iEEEES5_iS7_SA_E24lookupOrInsertIntoBucketIS5_JEEES2_IPSA_bEOT_DpOT0_.exit: ; preds = %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapISt4pairIPNS_10BasicBlockES4_EiLj4ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_iEEEES5_iS7_SA_E24lookupOrInsertIntoBucketIS5_JEEES2_IPSA_bEOT_DpOT0_.exit.loopexit, %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapISt4pairIPNS_10BasicBlockES4_EiLj4ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_iEEEES5_iS7_SA_E22findBucketForInsertionIS5_EEPSA_RKT_SE_.exit.i
  %i.hq = phi i32 [ 0, %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapISt4pairIPNS_10BasicBlockES4_EiLj4ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_iEEEES5_iS7_SA_E22findBucketForInsertionIS5_EEPSA_RKT_SE_.exit.i ], [ %.pre65, %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapISt4pairIPNS_10BasicBlockES4_EiLj4ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_iEEEES5_iS7_SA_E24lookupOrInsertIntoBucketIS5_JEEES2_IPSA_bEOT_DpOT0_.exit.loopexit ] ; 2 uses
  %i.hr = load i8, ptr %3, align 1, !tbaa !137, !range !53, !noundef !54
  %i.hs = trunc nuw i8 %i.hr to i1
  %i.ht = load i32, ptr %i.dg, align 4, !tbaa !94 ; 2 uses
  %i.hu = icmp slt i32 %i.ht, %i.hq
  %i.hv = icmp sgt i32 %i.ht, %i.hq
  %i.hw = select i1 %i.hs, i1 %i.hu, i1 %i.hv
  br i1 %i.hw, label %bb.l, label %_ZSt25__unguarded_linear_insertIPN4llvm3cfg6UpdateIPNS0_10BasicBlockEEEN9__gnu_cxx5__ops14_Val_comp_iterIZNS1_15LegalizeUpdatesIS4_EEvNS0_8ArrayRefINS2_IT_EEEERNS0_15SmallVectorImplISD_EEbbEUlRKS5_SJ_E_EEEvSC_T0_.exit

bb.l:                                             ; preds = %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapISt4pairIPNS_10BasicBlockES4_EiLj4ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_iEEEES5_iS7_SA_E24lookupOrInsertIntoBucketIS5_JEEES2_IPSA_bEOT_DpOT0_.exit
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.09.i, ptr noundef nonnull align 8 dereferenceable(16) %.0.i, i64 16, i1 false), !tbaa.struct !389
  br label %bb.c, !llvm.loop !15

_ZSt25__unguarded_linear_insertIPN4llvm3cfg6UpdateIPNS0_10BasicBlockEEEN9__gnu_cxx5__ops14_Val_comp_iterIZNS1_15LegalizeUpdatesIS4_EEvNS0_8ArrayRefINS2_IT_EEEERNS0_15SmallVectorImplISD_EEbbEUlRKS5_SJ_E_EEEvSC_T0_.exit: ; preds = %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapISt4pairIPNS_10BasicBlockES4_EiLj4ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_iEEEES5_iS7_SA_E24lookupOrInsertIntoBucketIS5_JEEES2_IPSA_bEOT_DpOT0_.exit
  store ptr %.sroa.0.0.copyload.i, ptr %.09.i, align 8, !tbaa !148
  %.sroa.5.0..09.sroa_idx.i = getelementptr inbounds nuw i8, ptr %.09.i, i64 8
  store i64 %.sroa.5.0.copyload.i, ptr %.sroa.5.0..09.sroa_idx.i, align 8, !tbaa !202
  %i.hx = getelementptr inbounds nuw i8, ptr %.055, i64 16 ; 2 uses
  %.not = icmp eq ptr %i.hx, %1
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !844
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_10BasicBlockENS_9GraphDiffIS3_Lb0EE14DeletesInsertsELj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S6_EEEES3_S6_S8_SB_E24lookupOrInsertIntoBucketIS3_JEEESt4pairIPSB_bEOT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = load i32, ptr %0, align 8, !noalias !853 ; 2 uses
  %i.c = and i32 %i.b, 1                          ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.c, 0               ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.e = load ptr, ptr %i.d, align 8, !noalias !853 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !noalias !853 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.i = load i32, ptr %i.h, align 8, !noalias !853
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 296 ; 2 uses
  %.sink2.i.i.i = select i1 %.not.i.i.i, ptr %i.e, ptr %i.d ; 2 uses
  %.sink1.i.i.i = select i1 %.not.i.i.i, ptr %i.g, ptr %i.j ; 2 uses
  %.sink.i.i.i = select i1 %.not.i.i.i, i32 %i.i, i32 4 ; 4 uses
  %i.k = icmp eq i32 %.sink.i.i.i, 0
  br i1 %i.k, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = add i32 %.sink.i.i.i, -1                 ; 2 uses
  %i.m = load ptr, ptr %1, align 8, !tbaa !148    ; 2 uses
  %i.n = ptrtoint ptr %i.m to i64
  %i.o = mul i64 %i.n, -4658895280553007687       ; 2 uses
  %i.p = lshr i64 %i.o, 31
  %i.q = xor i64 %i.p, %i.o
  %i.r = trunc i64 %i.q to i32
  %i.s = and i32 %i.l, %i.r                       ; 3 uses
  %i.t = zext i32 %i.s to i64                     ; 2 uses
  %i.u = getelementptr inbounds nuw [72 x i8], ptr %.sink2.i.i.i, i64 %i.t ; 2 uses
  %i.v = lshr i64 %i.t, 5
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %.sink1.i.i.i, i64 %i.v
  %i.x = load i32, ptr %i.w, align 4, !tbaa !94
  %i.y = and i32 %i.s, 31
  %i.z = lshr i32 %i.x, %i.y
  %i.aa = trunc i32 %i.z to i1
  br i1 %i.aa, label %.lr.ph.i, label %.loopexit, !prof !150

.lr.ph.i:                                         ; preds = %bb.b, %bb.c
  %i.ab = phi ptr [ %i.ah, %bb.c ], [ %i.u, %bb.b ] ; 2 uses
  %.024.i = phi i32 [ %i.af, %bb.c ], [ %i.s, %bb.b ]
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !148
  %i.ad = icmp eq ptr %i.m, %i.ac
  br i1 %i.ad, label %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_10BasicBlockENS_9GraphDiffIS3_Lb0EE14DeletesInsertsELj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S6_EEEES3_S6_S8_SB_E15LookupBucketForIS3_EEbRKT_RPSB_.exit, label %bb.c, !prof !81

bb.c:                                             ; preds = %.lr.ph.i
  %i.ae = add nuw i32 %.024.i, 1
  %i.af = and i32 %i.ae, %i.l                     ; 3 uses
  %i.ag = zext i32 %i.af to i64                   ; 2 uses
  %i.ah = getelementptr inbounds nuw [72 x i8], ptr %.sink2.i.i.i, i64 %i.ag ; 2 uses
  %i.ai = lshr i64 %i.ag, 5
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %.sink1.i.i.i, i64 %i.ai
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !94
  %i.al = and i32 %i.af, 31
  %i.am = lshr i32 %i.ak, %i.al
  %i.an = trunc i32 %i.am to i1
  br i1 %i.an, label %.lr.ph.i, label %.loopexit, !prof !151, !llvm.loop !16

.loopexit:                                        ; preds = %bb.c, %bb.a, %bb.b
  %.lcssa28.sink.i.ph = phi ptr [ %i.u, %bb.b ], [ null, %bb.a ], [ %i.ah, %bb.c ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %.lcssa28.sink.i.ph, ptr %i.a, align 8, !tbaa !391
  %i.ao = shl i32 %i.b, 1
  %i.ap = and i32 %i.ao, -4
  %i.aq = add i32 %i.ap, 4
  %i.ar = mul i32 %.sink.i.i.i, 3
  %.not.i = icmp ult i32 %i.aq, %i.ar
  br i1 %.not.i, label %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_10BasicBlockENS_9GraphDiffIS3_Lb0EE14DeletesInsertsELj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S6_EEEES3_S6_S8_SB_E22findBucketForInsertionIS3_EEPSB_RKT_SF_.exit, label %bb.d, !prof !81

bb.d:                                             ; preds = %.loopexit
  %i.as = shl i32 %.sink.i.i.i, 1
  tail call void @_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_10BasicBlockENS_9GraphDiffIS3_Lb0EE14DeletesInsertsELj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S6_EEEES3_S6_S8_SB_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %i.as)
  %i.at = call noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_10BasicBlockENS_9GraphDiffIS3_Lb0EE14DeletesInsertsELj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S6_EEEES3_S6_S8_SB_E15LookupBucketForIS3_EEbRKT_RPSB_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 0 uses
  %.pre.i = load i32, ptr %0, align 8
  %.pre5.i = load ptr, ptr %i.a, align 8, !tbaa !391
  %.pre6.i = and i32 %.pre.i, 1
  %.pre = load ptr, ptr %i.f, align 8
  %.pre16 = load ptr, ptr %i.d, align 8
  br label %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_10BasicBlockENS_9GraphDiffIS3_Lb0EE14DeletesInsertsELj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S6_EEEES3_S6_S8_SB_E22findBucketForInsertionIS3_EEPSB_RKT_SF_.exit

_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_10BasicBlockENS_9GraphDiffIS3_Lb0EE14DeletesInsertsELj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S6_EEEES3_S6_S8_SB_E22findBucketForInsertionIS3_EEPSB_RKT_SF_.exit: ; preds = %.loopexit, %bb.d
  %i.au = phi ptr [ %.pre16, %bb.d ], [ %i.e, %.loopexit ]
  %i.av = phi ptr [ %.pre, %bb.d ], [ %i.g, %.loopexit ]
  %.pre-phi.i = phi i32 [ %.pre6.i, %bb.d ], [ %i.c, %.loopexit ]
  %i.aw = phi ptr [ %.pre5.i, %bb.d ], [ %.lcssa28.sink.i.ph, %.loopexit ] ; 11 uses
  %.not.i.i.i.i = icmp eq i32 %.pre-phi.i, 0      ; 2 uses
  %i.ax = select i1 %.not.i.i.i.i, ptr %i.av, ptr %i.j
  %i.ay = select i1 %.not.i.i.i.i, ptr %i.au, ptr %i.d
  %i.az = ptrtoint ptr %i.aw to i64
  %i.ba = ptrtoint ptr %i.ay to i64
  %i.bb = sub i64 %i.az, %i.ba
  %i.bc = sdiv exact i64 %i.bb, 72                ; 2 uses
  %i.bd = trunc i64 %i.bc to i32
  %i.be = and i32 %i.bd, 31
  %i.bf = shl nuw i32 1, %i.be
  %i.bg = lshr i64 %i.bc, 5
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %i.ax, i64 %i.bg ; 2 uses
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !94
  %i.bj = or i32 %i.bf, %i.bi
  store i32 %i.bj, ptr %i.bh, align 4, !tbaa !94
  %i.bk = load i32, ptr %0, align 8               ; 2 uses
  %2 = and i32 %i.bk, -2
  %i.bl = add i32 %2, 2
  %3 = and i32 %i.bk, 1
  %4 = or disjoint i32 %i.bl, %3
  store i32 %4, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.bm = load ptr, ptr %1, align 8, !tbaa !148
  store ptr %i.bm, ptr %i.aw, align 8, !tbaa !148
  %i.bn = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  %i.bo = getelementptr inbounds nuw i8, ptr %i.aw, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.bo, i8 0, i64 48, i1 false)
  %i.bp = getelementptr inbounds nuw i8, ptr %i.aw, i64 24
  store ptr %i.bp, ptr %i.bn, align 8, !tbaa !57
  %i.bq = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  store i32 0, ptr %i.bq, align 8, !tbaa !69
  %i.br = getelementptr inbounds nuw i8, ptr %i.aw, i64 20
  store i32 2, ptr %i.br, align 4, !tbaa !80
  %.ptr.1.i = getelementptr inbounds nuw i8, ptr %i.aw, i64 40
  %i.bs = getelementptr inbounds nuw i8, ptr %i.aw, i64 56
  store ptr %i.bs, ptr %.ptr.1.i, align 8, !tbaa !57
  %i.bt = getelementptr inbounds nuw i8, ptr %i.aw, i64 52
  store i32 2, ptr %i.bt, align 4, !tbaa !80
  br label %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_10BasicBlockENS_9GraphDiffIS3_Lb0EE14DeletesInsertsELj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S6_EEEES3_S6_S8_SB_E15LookupBucketForIS3_EEbRKT_RPSB_.exit

_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_10BasicBlockENS_9GraphDiffIS3_Lb0EE14DeletesInsertsELj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S6_EEEES3_S6_S8_SB_E15LookupBucketForIS3_EEbRKT_RPSB_.exit: ; preds = %.lr.ph.i, %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_10BasicBlockENS_9GraphDiffIS3_Lb0EE14DeletesInsertsELj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S6_EEEES3_S6_S8_SB_E22findBucketForInsertionIS3_EEPSB_RKT_SF_.exit
  %.sroa.0.0 = phi ptr [ %i.aw, %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_10BasicBlockENS_9GraphDiffIS3_Lb0EE14DeletesInsertsELj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S6_EEEES3_S6_S8_SB_E22findBucketForInsertionIS3_EEPSB_RKT_SF_.exit ], [ %i.ab, %.lr.ph.i ]
  %.sroa.3.0 = phi i8 [ 1, %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_10BasicBlockENS_9GraphDiffIS3_Lb0EE14DeletesInsertsELj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S6_EEEES3_S6_S8_SB_E22findBucketForInsertionIS3_EEPSB_RKT_SF_.exit ], [ 0, %.lr.ph.i ]
  %.fca.0.insert = insertvalue { ptr, i8 } poison, ptr %.sroa.0.0, 0
  %.fca.1.insert = insertvalue { ptr, i8 } %.fca.0.insert, i8 %.sroa.3.0, 1
  ret { ptr, i8 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_10BasicBlockENS_9GraphDiffIS3_Lb0EE14DeletesInsertsELj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S6_EEEES3_S6_S8_SB_E15LookupBucketForIS3_EEbRKT_RPSB_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = load i32, ptr %0, align 8, !noalias !858
  %i.b = and i32 %i.a, 1
  %.not.i.i = icmp eq i32 %i.b, 0                 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !noalias !858
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !noalias !858
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.h = load i32, ptr %i.g, align 8, !noalias !858
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 296
  %.sink2.i.i = select i1 %.not.i.i, ptr %i.d, ptr %i.c ; 2 uses
  %.sink1.i.i = select i1 %.not.i.i, ptr %i.f, ptr %i.i ; 2 uses
  %.sink.i.i = select i1 %.not.i.i, i32 %i.h, i32 4 ; 2 uses
  %i.j = icmp eq i32 %.sink.i.i, 0
  br i1 %i.j, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = add i32 %.sink.i.i, -1                   ; 2 uses
  %i.l = load ptr, ptr %1, align 8, !tbaa !148    ; 2 uses
  %i.m = ptrtoint ptr %i.l to i64
  %i.n = mul i64 %i.m, -4658895280553007687       ; 2 uses
  %i.o = lshr i64 %i.n, 31
  %i.p = xor i64 %i.o, %i.n
  %i.q = trunc i64 %i.p to i32
  %i.r = and i32 %i.k, %i.q                       ; 3 uses
  %i.s = zext i32 %i.r to i64                     ; 2 uses
  %i.t = getelementptr inbounds nuw [72 x i8], ptr %.sink2.i.i, i64 %i.s ; 2 uses
  %i.u = lshr i64 %i.s, 5
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %.sink1.i.i, i64 %i.u
  %i.w = load i32, ptr %i.v, align 4, !tbaa !94
  %i.x = and i32 %i.r, 31
  %i.y = lshr i32 %i.w, %i.x
  %i.z = trunc i32 %i.y to i1
  br i1 %i.z, label %.lr.ph, label %.thread, !prof !150

.lr.ph:                                           ; preds = %bb.b, %bb.c
  %i.aa = phi ptr [ %i.ag, %bb.c ], [ %i.t, %bb.b ] ; 2 uses
  %.024 = phi i32 [ %i.ae, %bb.c ], [ %i.r, %bb.b ]
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !148
  %i.ac = icmp eq ptr %i.l, %i.ab                 ; 3 uses
  br i1 %i.ac, label %.thread, label %bb.c, !prof !81

bb.c:                                             ; preds = %.lr.ph
  %i.ad = add nuw i32 %.024, 1
  %i.ae = and i32 %i.ad, %i.k                     ; 3 uses
  %i.af = zext i32 %i.ae to i64                   ; 2 uses
  %i.ag = getelementptr inbounds nuw [72 x i8], ptr %.sink2.i.i, i64 %i.af ; 2 uses
  %i.ah = lshr i64 %i.af, 5
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %.sink1.i.i, i64 %i.ah
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !94
  %i.ak = and i32 %i.ae, 31
  %i.al = lshr i32 %i.aj, %i.ak
  %i.am = trunc i32 %i.al to i1
  br i1 %i.am, label %.lr.ph, label %.thread, !prof !151, !llvm.loop !16

.thread:                                          ; preds = %.lr.ph, %bb.c, %bb.b, %bb.a
  %.lcssa28.sink = phi ptr [ %i.t, %bb.b ], [ null, %bb.a ], [ %i.ag, %bb.c ], [ %i.aa, %.lr.ph ]
  %.2 = phi i1 [ false, %bb.b ], [ false, %bb.a ], [ %i.ac, %bb.c ], [ %i.ac, %.lr.ph ]
  store ptr %.lcssa28.sink, ptr %2, align 8, !tbaa !391
  ret i1 %.2
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_10BasicBlockENS_9GraphDiffIS3_Lb0EE14DeletesInsertsELj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S6_EEEES3_S6_S8_SB_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %1) local_unnamed_addr #6 comdat align 2 {
bb.a:
  %2 = alloca %"class.llvm::SmallDenseMap.355", align 8 ; 14 uses
  %i.a = icmp ult i32 %1, 5                       ; 2 uses
  br i1 %i.a, label %_ZN4llvm13SmallDenseMapIPNS_10BasicBlockENS_9GraphDiffIS2_Lb0EE14DeletesInsertsELj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S5_EEE17roundUpNumBucketsEj.exit.thread, label %_ZN4llvm13SmallDenseMapIPNS_10BasicBlockENS_9GraphDiffIS2_Lb0EE14DeletesInsertsELj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S5_EEE17roundUpNumBucketsEj.exit

_ZN4llvm13SmallDenseMapIPNS_10BasicBlockENS_9GraphDiffIS2_Lb0EE14DeletesInsertsELj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S5_EEE17roundUpNumBucketsEj.exit.thread: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 296
  br label %_ZN4llvm13SmallDenseMapIPNS_10BasicBlockENS_9GraphDiffIS2_Lb0EE14DeletesInsertsELj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S5_EEEC2EjNS_12DenseMapBaseISB_S2_S5_S7_SA_E16ExactBucketCountE.exit

_ZN4llvm13SmallDenseMapIPNS_10BasicBlockENS_9GraphDiffIS2_Lb0EE14DeletesInsertsELj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S5_EEE17roundUpNumBucketsEj.exit: ; preds = %bb.a
  %i.c = add i32 %1, -1
  %i.d = zext i32 %i.c to i64                     ; 2 uses
  %i.e = lshr i64 %i.d, 1
  %i.f = or i64 %i.e, %i.d                        ; 2 uses
  %i.g = lshr i64 %i.f, 2
  %i.h = or i64 %i.g, %i.f                        ; 2 uses
  %i.i = lshr i64 %i.h, 4
  %i.j = or i64 %i.i, %i.h                        ; 2 uses
  %i.k = lshr i64 %i.j, 8
  %i.l = or i64 %i.k, %i.j                        ; 2 uses
  %i.m = lshr i64 %i.l, 16
  %i.n = or i64 %i.m, %i.l
  %i.o = trunc nuw i64 %i.n to i32
  %i.p = add i32 %i.o, 1
  %.sroa.speculated.i = tail call i32 @llvm.umax.i32(i32 %i.p, i32 64) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  %i.q = zext i32 %.sroa.speculated.i to i64      ; 2 uses
  %i.r = mul nuw nsw i64 %i.q, 72                 ; 2 uses
  %i.s = add nuw nsw i64 %i.q, 31
  %i.t = lshr i64 %i.s, 3
  %i.u = and i64 %i.t, 1073741820                 ; 2 uses
  %i.v = add nuw nsw i64 %i.u, %i.r
  %i.w = tail call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef %i.v, i64 noundef 8) #24 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %i.w, ptr %i.x, align 8, !tbaa !202
  %i.y = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.r ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 16
  store ptr %i.y, ptr %i.z, align 8, !tbaa !202
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 24
  store i32 %.sroa.speculated.i, ptr %i.aa, align 8, !tbaa !202
  br label %_ZN4llvm13SmallDenseMapIPNS_10BasicBlockENS_9GraphDiffIS2_Lb0EE14DeletesInsertsELj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S5_EEEC2EjNS_12DenseMapBaseISB_S2_S5_S7_SA_E16ExactBucketCountE.exit

_ZN4llvm13SmallDenseMapIPNS_10BasicBlockENS_9GraphDiffIS2_Lb0EE14DeletesInsertsELj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S5_EEEC2EjNS_12DenseMapBaseISB_S2_S5_S7_SA_E16ExactBucketCountE.exit: ; preds = %_ZN4llvm13SmallDenseMapIPNS_10BasicBlockENS_9GraphDiffIS2_Lb0EE14DeletesInsertsELj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S5_EEE17roundUpNumBucketsEj.exit.thread, %_ZN4llvm13SmallDenseMapIPNS_10BasicBlockENS_9GraphDiffIS2_Lb0EE14DeletesInsertsELj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S5_EEE17roundUpNumBucketsEj.exit
  %.0.i4 = phi i32 [ 4, %_ZN4llvm13SmallDenseMapIPNS_10BasicBlockENS_9GraphDiffIS2_Lb0EE14DeletesInsertsELj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S5_EEE17roundUpNumBucketsEj.exit.thread ], [ %.sroa.speculated.i, %_ZN4llvm13SmallDenseMapIPNS_10BasicBlockENS_9GraphDiffIS2_Lb0EE14DeletesInsertsELj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S5_EEE17roundUpNumBucketsEj.exit ] ; 3 uses
  %.sink.i = phi i32 [ 1, %_ZN4llvm13SmallDenseMapIPNS_10BasicBlockENS_9GraphDiffIS2_Lb0EE14DeletesInsertsELj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S5_EEE17roundUpNumBucketsEj.exit.thread ], [ 0, %_ZN4llvm13SmallDenseMapIPNS_10BasicBlockENS_9GraphDiffIS2_Lb0EE14DeletesInsertsELj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S5_EEE17roundUpNumBucketsEj.exit ]
  %i.ab = phi i64 [ 4, %_ZN4llvm13SmallDenseMapIPNS_10BasicBlockENS_9GraphDiffIS2_Lb0EE14DeletesInsertsELj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S5_EEE17roundUpNumBucketsEj.exit.thread ], [ %i.u, %_ZN4llvm13SmallDenseMapIPNS_10BasicBlockENS_9GraphDiffIS2_Lb0EE14DeletesInsertsELj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S5_EEE17roundUpNumBucketsEj.exit ]
  %i.ac = phi ptr [ %i.b, %_ZN4llvm13SmallDenseMapIPNS_10BasicBlockENS_9GraphDiffIS2_Lb0EE14DeletesInsertsELj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S5_EEE17roundUpNumBucketsEj.exit.thread ], [ %i.y, %_ZN4llvm13SmallDenseMapIPNS_10BasicBlockENS_9GraphDiffIS2_Lb0EE14DeletesInsertsELj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S5_EEE17roundUpNumBucketsEj.exit ]
  store i32 %.sink.i, ptr %2, align 8
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.ac, i8 0, i64 %i.ab, i1 false)
  call void @_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_10BasicBlockENS_9GraphDiffIS3_Lb0EE14DeletesInsertsELj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S6_EEEES3_S6_S8_SB_E8moveFromERSC_(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(304) %0)
  %i.ad = load i32, ptr %2, align 8               ; 2 uses
  %i.ae = and i32 %i.ad, 1
  %.not.i = icmp eq i32 %i.ae, 0
  br i1 %.not.i, label %_ZN4llvm13SmallDenseMapIPNS_10BasicBlockENS_9GraphDiffIS2_Lb0EE14DeletesInsertsELj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S5_EEE13maybeMoveFastEOSB_.exit.thread, label %_ZN4llvm13SmallDenseMapIPNS_10BasicBlockENS_9GraphDiffIS2_Lb0EE14DeletesInsertsELj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S5_EEE13maybeMoveFastEOSB_.exit

_ZN4llvm13SmallDenseMapIPNS_10BasicBlockENS_9GraphDiffIS2_Lb0EE14DeletesInsertsELj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S5_EEE13maybeMoveFastEOSB_.exit.thread: ; preds = %_ZN4llvm13SmallDenseMapIPNS_10BasicBlockENS_9GraphDiffIS2_Lb0EE14DeletesInsertsELj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S5_EEEC2EjNS_12DenseMapBaseISB_S2_S5_S7_SA_E16ExactBucketCountE.exit
  store i32 %i.ad, ptr %0, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ag, ptr noundef nonnull align 8 dereferenceable(24) %i.af, i64 24, i1 false), !tbaa.struct !859
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 24
  store i32 0, ptr %i.ah, align 8, !tbaa !202
  br label %bb.b

_ZN4llvm13SmallDenseMapIPNS_10BasicBlockENS_9GraphDiffIS2_Lb0EE14DeletesInsertsELj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S5_EEE13maybeMoveFastEOSB_.exit: ; preds = %_ZN4llvm13SmallDenseMapIPNS_10BasicBlockENS_9GraphDiffIS2_Lb0EE14DeletesInsertsELj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S5_EEEC2EjNS_12DenseMapBaseISB_S2_S5_S7_SA_E16ExactBucketCountE.exit
  br i1 %i.a, label %.thread.i, label %_ZN4llvm13SmallDenseMapIPNS_10BasicBlockENS_9GraphDiffIS2_Lb0EE14DeletesInsertsELj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S5_EEE15allocateBucketsEj.exit.i

.thread.i:                                        ; preds = %_ZN4llvm13SmallDenseMapIPNS_10BasicBlockENS_9GraphDiffIS2_Lb0EE14DeletesInsertsELj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S5_EEE13maybeMoveFastEOSB_.exit
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 296
  br label %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_10BasicBlockENS_9GraphDiffIS3_Lb0EE14DeletesInsertsELj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S6_EEEES3_S6_S8_SB_E24initWithExactBucketCountEj.exit

_ZN4llvm13SmallDenseMapIPNS_10BasicBlockENS_9GraphDiffIS2_Lb0EE14DeletesInsertsELj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S5_EEE15allocateBucketsEj.exit.i: ; preds = %_ZN4llvm13SmallDenseMapIPNS_10BasicBlockENS_9GraphDiffIS2_Lb0EE14DeletesInsertsELj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S5_EEE13maybeMoveFastEOSB_.exit
  %i.aj = load i32, ptr %0, align 8
  %i.ak = and i32 %i.aj, -2
  store i32 %i.ak, ptr %0, align 8
  %i.al = zext i32 %.0.i4 to i64                  ; 2 uses
  %i.am = mul nuw nsw i64 %i.al, 72               ; 2 uses
  %i.an = add nuw nsw i64 %i.al, 31
  %i.ao = lshr i64 %i.an, 3
  %i.ap = and i64 %i.ao, 1073741820
  %i.aq = add nuw nsw i64 %i.ap, %i.am
  %i.ar = call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef %i.aq, i64 noundef 8) #24 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ar, ptr %i.as, align 8, !tbaa !202
  %i.at = getelementptr inbounds nuw i8, ptr %i.ar, i64 %i.am ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.at, ptr %i.au, align 8, !tbaa !202
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 %.0.i4, ptr %i.av, align 8, !tbaa !202
  %.pre.i = load i32, ptr %0, align 8
  %.pre.fr.i = freeze i32 %.pre.i
  %i.aw = and i32 %.pre.fr.i, 1                   ; 2 uses
  %.not.i.i.i.i = icmp eq i32 %i.aw, 0            ; 2 uses
  %i.ax = select i1 %.not.i.i.i.i, i32 %.0.i4, i32 4
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 296
  %spec.select.i = select i1 %.not.i.i.i.i, ptr %i.at, ptr %i.ay
  %i.az = zext i32 %i.ax to i64
  %i.ba = add nuw nsw i64 %i.az, 31
  %i.bb = lshr i64 %i.ba, 3
  %i.bc = and i64 %i.bb, 1073741820
  br label %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_10BasicBlockENS_9GraphDiffIS3_Lb0EE14DeletesInsertsELj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S6_EEEES3_S6_S8_SB_E24initWithExactBucketCountEj.exit

_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_10BasicBlockENS_9GraphDiffIS3_Lb0EE14DeletesInsertsELj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S6_EEEES3_S6_S8_SB_E24initWithExactBucketCountEj.exit: ; preds = %.thread.i, %_ZN4llvm13SmallDenseMapIPNS_10BasicBlockENS_9GraphDiffIS2_Lb0EE14DeletesInsertsELj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S5_EEE15allocateBucketsEj.exit.i
  %.sink = phi i32 [ 1, %.thread.i ], [ %i.aw, %_ZN4llvm13SmallDenseMapIPNS_10BasicBlockENS_9GraphDiffIS2_Lb0EE14DeletesInsertsELj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S5_EEE15allocateBucketsEj.exit.i ]
  %i.bd = phi i64 [ 4, %.thread.i ], [ %i.bc, %_ZN4llvm13SmallDenseMapIPNS_10BasicBlockENS_9GraphDiffIS2_Lb0EE14DeletesInsertsELj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S5_EEE15allocateBucketsEj.exit.i ]
end_hunk_3
begin_hunk_4_@_ZL28unswitchNontrivialInvariantsRN4llvm4LoopERNS_11InstructionENS_8ArrayRefIPNS_5ValueEEERNS_15IVConditionInfoERNS_13DominatorTreeERNS_8LoopInfoERNS_15AssumptionCacheEPNS_15ScalarEvolutionEPNS_16MemorySSAUpdaterERNS_10LPMUpdaterEbb:bb.a
  %i.ii = getelementptr inbounds nuw i8, ptr %69, i64 8 ; 3 uses
  %i.ij = getelementptr inbounds nuw i8, ptr %69, i64 12 ; 5 uses
  %i.ik = getelementptr inbounds nuw i8, ptr %69, i64 16 ; 4 uses
  br label %bb.at

bb.af:                                            ; preds = %bb.ae, %_ZN4llvm15concat_iteratorIKPNS_10BasicBlockEJPS3_S4_EEppEv.exit
  %i.il = phi i1 [ false, %bb.ae ], [ %i.nm, %_ZN4llvm15concat_iteratorIKPNS_10BasicBlockEJPS3_S4_EEppEv.exit ] ; 2 uses
  %.sroa.71126.0.idx1498 = phi i64 [ 0, %bb.ae ], [ %.sroa.71126.1.idx, %_ZN4llvm15concat_iteratorIKPNS_10BasicBlockEJPS3_S4_EEppEv.exit ] ; 3 uses
  %.sroa.01123.01497 = phi ptr [ %i.fj, %bb.ae ], [ %.sroa.01123.1, %_ZN4llvm15concat_iteratorIKPNS_10BasicBlockEJPS3_S4_EEppEv.exit ] ; 4 uses
  %.sroa.71126.0.ptr = getelementptr inbounds nuw i8, ptr %i.i, i64 %.sroa.71126.0.idx1498
  %spec.select.i.i.i = select i1 %i.il, ptr %.sroa.01123.01497, ptr %.sroa.71126.0.ptr
  %i.im = load ptr, ptr %spec.select.i.i.i, align 8, !tbaa !148 ; 5 uses
  %i.in = call noundef ptr @_ZNK4llvm10BasicBlock20getUniquePredecessorEv(ptr noundef nonnull align 8 dereferenceable(80) %i.im) #24
  %.not391 = icmp eq ptr %i.in, null
  br i1 %.not391, label %bb.ag, label %.critedge7

bb.ag:                                            ; preds = %bb.af
  %i.io = getelementptr inbounds nuw i8, ptr %i.im, i64 16
  %i.ip = load ptr, ptr %i.io, align 8, !tbaa !199 ; 2 uses
  %.not4.i.i.i.i.i = icmp eq ptr %i.ip, null
  br i1 %.not4.i.i.i.i.i, label %.critedge7, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.ag, %"_ZN9__gnu_cxx5__ops12_Iter_negateIZL28unswitchNontrivialInvariantsRN4llvm4LoopERNS2_11InstructionENS2_8ArrayRefIPNS2_5ValueEEERNS2_15IVConditionInfoERNS2_13DominatorTreeERNS2_8LoopInfoERNS2_15AssumptionCacheEPNS2_15ScalarEvolutionEPNS2_16MemorySSAUpdaterERNS2_10LPMUpdaterEbbE3$_0EclINS2_12PredIteratorINS2_10BasicBlockENS8_18user_iterator_implINS2_4UserEEEEEEEbT_.exit.thread.i.i.i.i.i"
  %.sroa.02.05.i.i.i.i.i = phi ptr [ %i.ix, %"_ZN9__gnu_cxx5__ops12_Iter_negateIZL28unswitchNontrivialInvariantsRN4llvm4LoopERNS2_11InstructionENS2_8ArrayRefIPNS2_5ValueEEERNS2_15IVConditionInfoERNS2_13DominatorTreeERNS2_8LoopInfoERNS2_15AssumptionCacheEPNS2_15ScalarEvolutionEPNS2_16MemorySSAUpdaterERNS2_10LPMUpdaterEbbE3$_0EclINS2_12PredIteratorINS2_10BasicBlockENS8_18user_iterator_implINS2_4UserEEEEEEEbT_.exit.thread.i.i.i.i.i" ], [ %i.ip, %bb.ag ] ; 2 uses
  %i.iq = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i.i.i.i.i, i64 24
  %i.ir = load ptr, ptr %i.iq, align 8, !tbaa !219
  %i.is = getelementptr inbounds nuw i8, ptr %i.ir, i64 40
  %i.it = load ptr, ptr %i.is, align 8, !tbaa !165 ; 2 uses
  %i.iu = icmp eq ptr %i.it, %i.o
  br i1 %i.iu, label %"_ZN9__gnu_cxx5__ops12_Iter_negateIZL28unswitchNontrivialInvariantsRN4llvm4LoopERNS2_11InstructionENS2_8ArrayRefIPNS2_5ValueEEERNS2_15IVConditionInfoERNS2_13DominatorTreeERNS2_8LoopInfoERNS2_15AssumptionCacheEPNS2_15ScalarEvolutionEPNS2_16MemorySSAUpdaterERNS2_10LPMUpdaterEbbE3$_0EclINS2_12PredIteratorINS2_10BasicBlockENS8_18user_iterator_implINS2_4UserEEEEEEEbT_.exit.thread.i.i.i.i.i", label %"_ZN9__gnu_cxx5__ops12_Iter_negateIZL28unswitchNontrivialInvariantsRN4llvm4LoopERNS2_11InstructionENS2_8ArrayRefIPNS2_5ValueEEERNS2_15IVConditionInfoERNS2_13DominatorTreeERNS2_8LoopInfoERNS2_15AssumptionCacheEPNS2_15ScalarEvolutionEPNS2_16MemorySSAUpdaterERNS2_10LPMUpdaterEbbE3$_0EclINS2_12PredIteratorINS2_10BasicBlockENS8_18user_iterator_implINS2_4UserEEEEEEEbT_.exit.i.i.i.i.i"

"_ZN9__gnu_cxx5__ops12_Iter_negateIZL28unswitchNontrivialInvariantsRN4llvm4LoopERNS2_11InstructionENS2_8ArrayRefIPNS2_5ValueEEERNS2_15IVConditionInfoERNS2_13DominatorTreeERNS2_8LoopInfoERNS2_15AssumptionCacheEPNS2_15ScalarEvolutionEPNS2_16MemorySSAUpdaterERNS2_10LPMUpdaterEbbE3$_0EclINS2_12PredIteratorINS2_10BasicBlockENS8_18user_iterator_implINS2_4UserEEEEEEEbT_.exit.i.i.i.i.i": ; preds = %.lr.ph.i.i.i.i.i
  %i.iv = call noundef zeroext i1 @_ZNK4llvm17DominatorTreeBaseINS_10BasicBlockELb0EE9dominatesEPKS1_S4_(ptr noundef nonnull align 8 dereferenceable(204) %5, ptr noundef nonnull %i.im, ptr noundef %i.it) #24
  br i1 %i.iv, label %"_ZN9__gnu_cxx5__ops12_Iter_negateIZL28unswitchNontrivialInvariantsRN4llvm4LoopERNS2_11InstructionENS2_8ArrayRefIPNS2_5ValueEEERNS2_15IVConditionInfoERNS2_13DominatorTreeERNS2_8LoopInfoERNS2_15AssumptionCacheEPNS2_15ScalarEvolutionEPNS2_16MemorySSAUpdaterERNS2_10LPMUpdaterEbbE3$_0EclINS2_12PredIteratorINS2_10BasicBlockENS8_18user_iterator_implINS2_4UserEEEEEEEbT_.exit.thread.i.i.i.i.i", label %"_ZN4llvm6all_ofINS_14iterator_rangeINS_12PredIteratorINS_10BasicBlockENS_5Value18user_iterator_implINS_4UserEEEEEEEZL28unswitchNontrivialInvariantsRNS_4LoopERNS_11InstructionENS_8ArrayRefIPS4_EERNS_15IVConditionInfoERNS_13DominatorTreeERNS_8LoopInfoERNS_15AssumptionCacheEPNS_15ScalarEvolutionEPNS_16MemorySSAUpdaterERNS_10LPMUpdaterEbbE3$_0EEbOT_T0_.exit"

"_ZN9__gnu_cxx5__ops12_Iter_negateIZL28unswitchNontrivialInvariantsRN4llvm4LoopERNS2_11InstructionENS2_8ArrayRefIPNS2_5ValueEEERNS2_15IVConditionInfoERNS2_13DominatorTreeERNS2_8LoopInfoERNS2_15AssumptionCacheEPNS2_15ScalarEvolutionEPNS2_16MemorySSAUpdaterERNS2_10LPMUpdaterEbbE3$_0EclINS2_12PredIteratorINS2_10BasicBlockENS8_18user_iterator_implINS2_4UserEEEEEEEbT_.exit.thread.i.i.i.i.i": ; preds = %"_ZN9__gnu_cxx5__ops12_Iter_negateIZL28unswitchNontrivialInvariantsRN4llvm4LoopERNS2_11InstructionENS2_8ArrayRefIPNS2_5ValueEEERNS2_15IVConditionInfoERNS2_13DominatorTreeERNS2_8LoopInfoERNS2_15AssumptionCacheEPNS2_15ScalarEvolutionEPNS2_16MemorySSAUpdaterERNS2_10LPMUpdaterEbbE3$_0EclINS2_12PredIteratorINS2_10BasicBlockENS8_18user_iterator_implINS2_4UserEEEEEEEbT_.exit.i.i.i.i.i", %.lr.ph.i.i.i.i.i
  %i.iw = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i.i.i.i.i, i64 8
  %i.ix = load ptr, ptr %i.iw, align 8, !tbaa !191 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.ix, null
  br i1 %.not.i.i.i.i.i, label %.critedge7, label %.lr.ph.i.i.i.i.i, !llvm.loop !926

.critedge7:                                       ; preds = %"_ZN9__gnu_cxx5__ops12_Iter_negateIZL28unswitchNontrivialInvariantsRN4llvm4LoopERNS2_11InstructionENS2_8ArrayRefIPNS2_5ValueEEERNS2_15IVConditionInfoERNS2_13DominatorTreeERNS2_8LoopInfoERNS2_15AssumptionCacheEPNS2_15ScalarEvolutionEPNS2_16MemorySSAUpdaterERNS2_10LPMUpdaterEbbE3$_0EclINS2_12PredIteratorINS2_10BasicBlockENS8_18user_iterator_implINS2_4UserEEEEEEEbT_.exit.thread.i.i.i.i.i", %bb.ag, %bb.af
  %.val398 = load ptr, ptr %i.fn, align 8
  %.val399 = load i32, ptr %i.fo, align 8, !tbaa !69
  %i.iy = getelementptr i8, ptr %i.im, i64 40
  %.val400 = load i32, ptr %i.iy, align 8, !tbaa !253
  call void @llvm.lifetime.start.p0(ptr nonnull %70) #24
  store ptr %i.fp, ptr %70, align 8, !tbaa !57
  store i32 4, ptr %i.fr, align 4, !tbaa !80
  %i.iz = add i32 %.val400, 1                     ; 2 uses
  %i.ja = icmp ugt i32 %.val399, %i.iz
  br i1 %i.ja, label %bb.ah, label %_ZN4llvm23SmallVectorTemplateBaseIPNS_15DomTreeNodeBaseINS_10BasicBlockEEELb1EE9push_backES4_.exit.i

bb.ah:                                            ; preds = %.critedge7
  %i.jb = zext i32 %i.iz to i64
  %i.jc = getelementptr inbounds nuw [8 x i8], ptr %.val398, i64 %i.jb
  %i.jd = load ptr, ptr %i.jc, align 8, !tbaa !274
  br label %_ZN4llvm23SmallVectorTemplateBaseIPNS_15DomTreeNodeBaseINS_10BasicBlockEEELb1EE9push_backES4_.exit.i

_ZN4llvm23SmallVectorTemplateBaseIPNS_15DomTreeNodeBaseINS_10BasicBlockEEELb1EE9push_backES4_.exit.i: ; preds = %bb.ah, %.critedge7
  %i.je = phi ptr [ %i.jd, %bb.ah ], [ null, %.critedge7 ]
  store ptr %i.je, ptr %i.fp, align 8
  br label %bb.ai

bb.ai:                                            ; preds = %._crit_edge.i, %_ZN4llvm23SmallVectorTemplateBaseIPNS_15DomTreeNodeBaseINS_10BasicBlockEEELb1EE9push_backES4_.exit.i
  %i.jf = phi i32 [ %i.mz, %._crit_edge.i ], [ 1, %_ZN4llvm23SmallVectorTemplateBaseIPNS_15DomTreeNodeBaseINS_10BasicBlockEEELb1EE9push_backES4_.exit.i ] ; 2 uses
  %i.jg = load ptr, ptr %70, align 8, !tbaa !57
  %i.jh = zext i32 %i.jf to i64
  %i.ji = getelementptr inbounds nuw [8 x i8], ptr %i.jg, i64 %i.jh
  %i.jj = getelementptr inbounds i8, ptr %i.ji, i64 -8
  %i.jk = load ptr, ptr %i.jj, align 8, !tbaa !274 ; 2 uses
  %i.jl = add i32 %i.jf, -1
  store i32 %i.jl, ptr %i.fq, align 8, !tbaa !69
  %i.jm = load ptr, ptr %i.jk, align 8, !tbaa !277 ; 5 uses
  %i.jn = load i32, ptr %77, align 8, !noalias !1289 ; 2 uses
  %i.jo = and i32 %i.jn, 1
  %.not.i.i.i.i795 = icmp eq i32 %i.jo, 0         ; 3 uses
  %i.jp = load ptr, ptr %i.fs, align 8, !noalias !1289
  %i.jq = load ptr, ptr %i.ft, align 8, !noalias !1289
  %i.jr = load i32, ptr %i.fu, align 8, !noalias !1289
  %.sink2.i.i.i.i796 = select i1 %.not.i.i.i.i795, ptr %i.jp, ptr %i.fs ; 3 uses
  %.sink1.i.i.i.i797 = select i1 %.not.i.i.i.i795, ptr %i.jq, ptr %i.fi ; 3 uses
  %.sink.i.i.i.i798 = select i1 %.not.i.i.i.i795, i32 %i.jr, i32 16 ; 4 uses
  %i.js = icmp eq i32 %.sink.i.i.i.i798, 0
  br i1 %i.js, label %.loopexit.i799, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.jt = add i32 %.sink.i.i.i.i798, -1           ; 2 uses
  %i.ju = ptrtoint ptr %i.jm to i64
  %i.jv = mul i64 %i.ju, -4658895280553007687     ; 2 uses
  %i.jw = lshr i64 %i.jv, 31
  %i.jx = xor i64 %i.jw, %i.jv
  %i.jy = trunc i64 %i.jx to i32
  %i.jz = and i32 %i.jt, %i.jy                    ; 3 uses
  %i.ka = zext i32 %i.jz to i64                   ; 2 uses
  %i.kb = getelementptr inbounds nuw [16 x i8], ptr %.sink2.i.i.i.i796, i64 %i.ka ; 2 uses
  %i.kc = lshr i64 %i.ka, 5
  %i.kd = getelementptr inbounds nuw [4 x i8], ptr %.sink1.i.i.i.i797, i64 %i.kc
  %i.ke = load i32, ptr %i.kd, align 4, !tbaa !94
  %i.kf = and i32 %i.jz, 31
  %i.kg = lshr i32 %i.ke, %i.kf
  %i.kh = trunc i32 %i.kg to i1
  br i1 %i.kh, label %.lr.ph.i.i807, label %.loopexit.i799, !prof !150

.lr.ph.i.i807:                                    ; preds = %bb.aj, %bb.ak
  %i.ki = phi ptr [ %i.ko, %bb.ak ], [ %i.kb, %bb.aj ] ; 2 uses
  %.024.i.i808 = phi i32 [ %i.km, %bb.ak ], [ %i.jz, %bb.aj ]
  %i.kj = load ptr, ptr %i.ki, align 8, !tbaa !148
  %i.kk = icmp eq ptr %i.jm, %i.kj
  br i1 %i.kk, label %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_10BasicBlockES3_Lj16ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S3_EEEES3_S3_S5_S8_E24lookupOrInsertIntoBucketIRKS3_JEEESt4pairIPS8_bEOT_DpOT0_.exit, label %bb.ak, !prof !81

bb.ak:                                            ; preds = %.lr.ph.i.i807
  %i.kl = add nuw i32 %.024.i.i808, 1
  %i.km = and i32 %i.kl, %i.jt                    ; 3 uses
  %i.kn = zext i32 %i.km to i64                   ; 2 uses
  %i.ko = getelementptr inbounds nuw [16 x i8], ptr %.sink2.i.i.i.i796, i64 %i.kn ; 2 uses
  %i.kp = lshr i64 %i.kn, 5
  %i.kq = getelementptr inbounds nuw [4 x i8], ptr %.sink1.i.i.i.i797, i64 %i.kp
  %i.kr = load i32, ptr %i.kq, align 4, !tbaa !94
  %i.ks = and i32 %i.km, 31
  %i.kt = lshr i32 %i.kr, %i.ks
  %i.ku = trunc i32 %i.kt to i1
  br i1 %i.ku, label %.lr.ph.i.i807, label %.loopexit.i799, !prof !151, !llvm.loop !931

.loopexit.i799:                                   ; preds = %bb.ak, %bb.aj, %bb.ai
  %.lcssa28.sink.i.ph.i = phi ptr [ %i.kb, %bb.aj ], [ null, %bb.ai ], [ %i.ko, %bb.ak ]
  %i.kv = shl i32 %i.jn, 1
  %i.kw = and i32 %i.kv, -4
  %i.kx = add i32 %i.kw, 4
  %i.ky = mul i32 %.sink.i.i.i.i798, 3
  %.not.i.i800 = icmp ult i32 %i.kx, %i.ky
  br i1 %.not.i.i800, label %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_10BasicBlockES3_Lj16ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S3_EEEES3_S3_S5_S8_E22findBucketForInsertionIS3_EEPS8_RKT_SC_.exit.i, label %bb.al, !prof !81

bb.al:                                            ; preds = %.loopexit.i799
  %i.kz = shl i32 %.sink.i.i.i.i798, 1
  call void @_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_10BasicBlockES3_Lj16ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S3_EEEES3_S3_S5_S8_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %77, i32 noundef %i.kz)
  %i.la = load i32, ptr %77, align 8, !noalias !1290
  %i.lb = and i32 %i.la, 1
  %.not.i.i.i885 = icmp eq i32 %i.lb, 0           ; 3 uses
  %i.lc = load ptr, ptr %i.fs, align 8, !noalias !1290
  %i.ld = load ptr, ptr %i.ft, align 8, !noalias !1290
  %i.le = load i32, ptr %i.fu, align 8, !noalias !1290
  %.sink2.i.i.i = select i1 %.not.i.i.i885, ptr %i.lc, ptr %i.fs ; 5 uses
  %.sink1.i.i.i = select i1 %.not.i.i.i885, ptr %i.ld, ptr %i.fi ; 5 uses
  %.sink.i.i.i = select i1 %.not.i.i.i885, i32 %i.le, i32 16 ; 2 uses
  %i.lf = icmp ne i32 %.sink.i.i.i, 0
  call void @llvm.assume(i1 %i.lf)
  %i.lg = add i32 %.sink.i.i.i, -1                ; 2 uses
  %i.lh = ptrtoint ptr %i.jm to i64
  %i.li = mul i64 %i.lh, -4658895280553007687     ; 2 uses
  %i.lj = lshr i64 %i.li, 31
  %i.lk = xor i64 %i.lj, %i.li
  %i.ll = trunc i64 %i.lk to i32
  %i.lm = and i32 %i.lg, %i.ll                    ; 3 uses
  %i.ln = zext i32 %i.lm to i64                   ; 2 uses
  %i.lo = getelementptr inbounds nuw [16 x i8], ptr %.sink2.i.i.i, i64 %i.ln ; 2 uses
  %i.lp = lshr i64 %i.ln, 5
  %i.lq = getelementptr inbounds nuw [4 x i8], ptr %.sink1.i.i.i, i64 %i.lp
  %i.lr = load i32, ptr %i.lq, align 4, !tbaa !94
  %i.ls = and i32 %i.lm, 31
  %i.lt = lshr i32 %i.lr, %i.ls
  %i.lu = trunc i32 %i.lt to i1
  br i1 %i.lu, label %.lr.ph.i887, label %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_10BasicBlockES3_Lj16ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S3_EEEES3_S3_S5_S8_E22findBucketForInsertionIS3_EEPS8_RKT_SC_.exit.i, !prof !150

.lr.ph.i887:                                      ; preds = %bb.al, %bb.am
  %i.lv = phi ptr [ %i.mb, %bb.am ], [ %i.lo, %bb.al ] ; 2 uses
  %.024.i = phi i32 [ %i.lz, %bb.am ], [ %i.lm, %bb.al ]
  %i.lw = load ptr, ptr %i.lv, align 8, !tbaa !148
  %i.lx = icmp eq ptr %i.jm, %i.lw
  br i1 %i.lx, label %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_10BasicBlockES3_Lj16ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S3_EEEES3_S3_S5_S8_E22findBucketForInsertionIS3_EEPS8_RKT_SC_.exit.i, label %bb.am, !prof !81

bb.am:                                            ; preds = %.lr.ph.i887
  %i.ly = add nuw i32 %.024.i, 1
  %i.lz = and i32 %i.ly, %i.lg                    ; 3 uses
  %i.ma = zext i32 %i.lz to i64                   ; 2 uses
  %i.mb = getelementptr inbounds nuw [16 x i8], ptr %.sink2.i.i.i, i64 %i.ma ; 2 uses
  %i.mc = lshr i64 %i.ma, 5
  %i.md = getelementptr inbounds nuw [4 x i8], ptr %.sink1.i.i.i, i64 %i.mc
  %i.me = load i32, ptr %i.md, align 4, !tbaa !94
  %i.mf = and i32 %i.lz, 31
  %i.mg = lshr i32 %i.me, %i.mf
  %i.mh = trunc i32 %i.mg to i1
  br i1 %i.mh, label %.lr.ph.i887, label %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_10BasicBlockES3_Lj16ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S3_EEEES3_S3_S5_S8_E22findBucketForInsertionIS3_EEPS8_RKT_SC_.exit.i, !prof !151, !llvm.loop !931

_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_10BasicBlockES3_Lj16ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S3_EEEES3_S3_S5_S8_E22findBucketForInsertionIS3_EEPS8_RKT_SC_.exit.i: ; preds = %bb.am, %.lr.ph.i887, %bb.al, %.loopexit.i799
  %.pre-phi1935 = phi ptr [ %.sink2.i.i.i.i796, %.loopexit.i799 ], [ %.sink2.i.i.i, %bb.al ], [ %.sink2.i.i.i, %.lr.ph.i887 ], [ %.sink2.i.i.i, %bb.am ]
  %.pre-phi = phi ptr [ %.sink1.i.i.i.i797, %.loopexit.i799 ], [ %.sink1.i.i.i, %bb.al ], [ %.sink1.i.i.i, %.lr.ph.i887 ], [ %.sink1.i.i.i, %bb.am ]
  %i.mi = phi ptr [ %.lcssa28.sink.i.ph.i, %.loopexit.i799 ], [ %i.lo, %bb.al ], [ %i.mb, %bb.am ], [ %i.lv, %.lr.ph.i887 ] ; 4 uses
  %i.mj = ptrtoint ptr %i.mi to i64
  %i.mk = ptrtoint ptr %.pre-phi1935 to i64
  %i.ml = sub i64 %i.mj, %i.mk
  %i.mm = ashr exact i64 %i.ml, 4                 ; 2 uses
  %i.mn = trunc i64 %i.mm to i32
  %i.mo = and i32 %i.mn, 31
  %i.mp = shl nuw i32 1, %i.mo
  %i.mq = lshr i64 %i.mm, 5
  %i.mr = getelementptr inbounds nuw [4 x i8], ptr %.pre-phi, i64 %i.mq ; 2 uses
  %i.ms = load i32, ptr %i.mr, align 4, !tbaa !94
  %i.mt = or i32 %i.mp, %i.ms
  store i32 %i.mt, ptr %i.mr, align 4, !tbaa !94
  %i.mu = load i32, ptr %77, align 8              ; 2 uses
  %90 = and i32 %i.mu, -2
  %i.mv = add i32 %90, 2
  %91 = and i32 %i.mu, 1
  %92 = or disjoint i32 %i.mv, %91
  store i32 %92, ptr %77, align 8
  store ptr %i.jm, ptr %i.mi, align 8, !tbaa !148
  %i.mw = getelementptr inbounds nuw i8, ptr %i.mi, i64 8
  store ptr null, ptr %i.mw, align 8, !tbaa !148
  br label %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_10BasicBlockES3_Lj16ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S3_EEEES3_S3_S5_S8_E24lookupOrInsertIntoBucketIRKS3_JEEESt4pairIPS8_bEOT_DpOT0_.exit

_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_10BasicBlockES3_Lj16ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S3_EEEES3_S3_S5_S8_E24lookupOrInsertIntoBucketIRKS3_JEEESt4pairIPS8_bEOT_DpOT0_.exit: ; preds = %.lr.ph.i.i807, %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_10BasicBlockES3_Lj16ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S3_EEEES3_S3_S5_S8_E22findBucketForInsertionIS3_EEPS8_RKT_SC_.exit.i
  %.sroa.0.0.i = phi ptr [ %i.mi, %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_10BasicBlockES3_Lj16ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S3_EEEES3_S3_S5_S8_E22findBucketForInsertionIS3_EEPS8_RKT_SC_.exit.i ], [ %i.ki, %.lr.ph.i.i807 ]
  %i.mx = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i, i64 8
  store ptr %i.im, ptr %i.mx, align 8, !tbaa !148
  %i.my = getelementptr inbounds nuw i8, ptr %i.jk, i64 24
  %.sroa.01.05.i = load ptr, ptr %i.my, align 8, !tbaa !274 ; 2 uses
  %.not6.i = icmp eq ptr %.sroa.01.05.i, null
  br i1 %.not6.i, label %._crit_edge.i, label %.lr.ph.i427

._crit_edge.i:                                    ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPNS_15DomTreeNodeBaseINS_10BasicBlockEEELb1EE9push_backES4_.exit10.i, %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_10BasicBlockES3_Lj16ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S3_EEEES3_S3_S5_S8_E24lookupOrInsertIntoBucketIRKS3_JEEESt4pairIPS8_bEOT_DpOT0_.exit
  %i.mz = load i32, ptr %i.fq, align 8, !tbaa !69 ; 2 uses
  %.not.i8.i = icmp eq i32 %i.mz, 0
  br i1 %.not.i8.i, label %bb.ap, label %bb.ai, !llvm.loop !936

.lr.ph.i427:                                      ; preds = %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_10BasicBlockES3_Lj16ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S3_EEEES3_S3_S5_S8_E24lookupOrInsertIntoBucketIRKS3_JEEESt4pairIPS8_bEOT_DpOT0_.exit, %_ZN4llvm23SmallVectorTemplateBaseIPNS_15DomTreeNodeBaseINS_10BasicBlockEEELb1EE9push_backES4_.exit10.i
  %.sroa.01.07.i = phi ptr [ %.sroa.01.0.i, %_ZN4llvm23SmallVectorTemplateBaseIPNS_15DomTreeNodeBaseINS_10BasicBlockEEELb1EE9push_backES4_.exit10.i ], [ %.sroa.01.05.i, %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_10BasicBlockES3_Lj16ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S3_EEEES3_S3_S5_S8_E24lookupOrInsertIntoBucketIRKS3_JEEESt4pairIPS8_bEOT_DpOT0_.exit ] ; 3 uses
  %i.na = load i32, ptr %i.fq, align 8, !tbaa !69 ; 2 uses
  %i.nb = load i32, ptr %i.fr, align 4, !tbaa !80
  %.not.i9.i = icmp ult i32 %i.na, %i.nb
  br i1 %.not.i9.i, label %bb.ao, label %bb.an, !prof !81

bb.an:                                            ; preds = %.lr.ph.i427
  call void @_ZN4llvm23SmallVectorTemplateBaseIPNS_15DomTreeNodeBaseINS_10BasicBlockEEELb1EE15growAndPushBackES4_(ptr noundef nonnull align 8 dereferenceable(16) %70, ptr noundef nonnull %.sroa.01.07.i)
  br label %_ZN4llvm23SmallVectorTemplateBaseIPNS_15DomTreeNodeBaseINS_10BasicBlockEEELb1EE9push_backES4_.exit10.i

bb.ao:                                            ; preds = %.lr.ph.i427
  %i.nc = zext i32 %i.na to i64
  %i.nd = load ptr, ptr %70, align 8, !tbaa !57
  %i.ne = getelementptr inbounds nuw [8 x i8], ptr %i.nd, i64 %i.nc
  store ptr %.sroa.01.07.i, ptr %i.ne, align 1
  %i.nf = load i32, ptr %i.fq, align 8, !tbaa !69
  %i.ng = add i32 %i.nf, 1
  store i32 %i.ng, ptr %i.fq, align 8, !tbaa !69
  br label %_ZN4llvm23SmallVectorTemplateBaseIPNS_15DomTreeNodeBaseINS_10BasicBlockEEELb1EE9push_backES4_.exit10.i

_ZN4llvm23SmallVectorTemplateBaseIPNS_15DomTreeNodeBaseINS_10BasicBlockEEELb1EE9push_backES4_.exit10.i: ; preds = %bb.ao, %bb.an
  %i.nh = getelementptr inbounds nuw i8, ptr %.sroa.01.07.i, i64 32
  %.sroa.01.0.i = load ptr, ptr %i.nh, align 8, !tbaa !274 ; 2 uses
  %.not.i428 = icmp eq ptr %.sroa.01.0.i, null
  br i1 %.not.i428, label %._crit_edge.i, label %.lr.ph.i427

bb.ap:                                            ; preds = %._crit_edge.i
  %i.ni = load ptr, ptr %70, align 8, !tbaa !57   ; 2 uses
  %i.nj = icmp eq ptr %i.ni, %i.fp
  br i1 %i.nj, label %"_Z15visitDomSubTreeIZL28unswitchNontrivialInvariantsRN4llvm4LoopERNS0_11InstructionENS0_8ArrayRefIPNS0_5ValueEEERNS0_15IVConditionInfoERNS0_13DominatorTreeERNS0_8LoopInfoERNS0_15AssumptionCacheEPNS0_15ScalarEvolutionEPNS0_16MemorySSAUpdaterERNS0_10LPMUpdaterEbbE3$_1EvSC_PNS0_10BasicBlockET_.exit", label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  call void @free(ptr noundef %i.ni) #24
  br label %"_Z15visitDomSubTreeIZL28unswitchNontrivialInvariantsRN4llvm4LoopERNS0_11InstructionENS0_8ArrayRefIPNS0_5ValueEEERNS0_15IVConditionInfoERNS0_13DominatorTreeERNS0_8LoopInfoERNS0_15AssumptionCacheEPNS0_15ScalarEvolutionEPNS0_16MemorySSAUpdaterERNS0_10LPMUpdaterEbbE3$_1EvSC_PNS0_10BasicBlockET_.exit"

"_Z15visitDomSubTreeIZL28unswitchNontrivialInvariantsRN4llvm4LoopERNS0_11InstructionENS0_8ArrayRefIPNS0_5ValueEEERNS0_15IVConditionInfoERNS0_13DominatorTreeERNS0_8LoopInfoERNS0_15AssumptionCacheEPNS0_15ScalarEvolutionEPNS0_16MemorySSAUpdaterERNS0_10LPMUpdaterEbbE3$_1EvSC_PNS0_10BasicBlockET_.exit": ; preds = %bb.ap, %bb.aq
  call void @llvm.lifetime.end.p0(ptr nonnull %70) #24
  br label %"_ZN4llvm6all_ofINS_14iterator_rangeINS_12PredIteratorINS_10BasicBlockENS_5Value18user_iterator_implINS_4UserEEEEEEEZL28unswitchNontrivialInvariantsRNS_4LoopERNS_11InstructionENS_8ArrayRefIPS4_EERNS_15IVConditionInfoERNS_13DominatorTreeERNS_8LoopInfoERNS_15AssumptionCacheEPNS_15ScalarEvolutionEPNS_16MemorySSAUpdaterERNS_10LPMUpdaterEbbE3$_0EEbOT_T0_.exit"

"_ZN4llvm6all_ofINS_14iterator_rangeINS_12PredIteratorINS_10BasicBlockENS_5Value18user_iterator_implINS_4UserEEEEEEEZL28unswitchNontrivialInvariantsRNS_4LoopERNS_11InstructionENS_8ArrayRefIPS4_EERNS_15IVConditionInfoERNS_13DominatorTreeERNS_8LoopInfoERNS_15AssumptionCacheEPNS_15ScalarEvolutionEPNS_16MemorySSAUpdaterERNS_10LPMUpdaterEbbE3$_0EEbOT_T0_.exit": ; preds = %"_ZN9__gnu_cxx5__ops12_Iter_negateIZL28unswitchNontrivialInvariantsRN4llvm4LoopERNS2_11InstructionENS2_8ArrayRefIPNS2_5ValueEEERNS2_15IVConditionInfoERNS2_13DominatorTreeERNS2_8LoopInfoERNS2_15AssumptionCacheEPNS2_15ScalarEvolutionEPNS2_16MemorySSAUpdaterERNS2_10LPMUpdaterEbbE3$_0EclINS2_12PredIteratorINS2_10BasicBlockENS8_18user_iterator_implINS2_4UserEEEEEEEbT_.exit.i.i.i.i.i", %"_Z15visitDomSubTreeIZL28unswitchNontrivialInvariantsRN4llvm4LoopERNS0_11InstructionENS0_8ArrayRefIPNS0_5ValueEEERNS0_15IVConditionInfoERNS0_13DominatorTreeERNS0_8LoopInfoERNS0_15AssumptionCacheEPNS0_15ScalarEvolutionEPNS0_16MemorySSAUpdaterERNS0_10LPMUpdaterEbbE3$_1EvSC_PNS0_10BasicBlockET_.exit"
  br i1 %i.il, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %"_ZN4llvm6all_ofINS_14iterator_rangeINS_12PredIteratorINS_10BasicBlockENS_5Value18user_iterator_implINS_4UserEEEEEEEZL28unswitchNontrivialInvariantsRNS_4LoopERNS_11InstructionENS_8ArrayRefIPS4_EERNS_15IVConditionInfoERNS_13DominatorTreeERNS_8LoopInfoERNS_15AssumptionCacheEPNS_15ScalarEvolutionEPNS_16MemorySSAUpdaterERNS_10LPMUpdaterEbbE3$_0EEbOT_T0_.exit"
  %i.nk = icmp ne ptr %.sroa.01123.01497, %i.fm
  call void @llvm.assume(i1 %i.nk)
  %i.nl = getelementptr inbounds nuw i8, ptr %.sroa.01123.01497, i64 8
  br label %_ZN4llvm15concat_iteratorIKPNS_10BasicBlockEJPS3_S4_EEppEv.exit

bb.as:                                            ; preds = %"_ZN4llvm6all_ofINS_14iterator_rangeINS_12PredIteratorINS_10BasicBlockENS_5Value18user_iterator_implINS_4UserEEEEEEEZL28unswitchNontrivialInvariantsRNS_4LoopERNS_11InstructionENS_8ArrayRefIPS4_EERNS_15IVConditionInfoERNS_13DominatorTreeERNS_8LoopInfoERNS_15AssumptionCacheEPNS_15ScalarEvolutionEPNS_16MemorySSAUpdaterERNS_10LPMUpdaterEbbE3$_0EEbOT_T0_.exit"
  %.sroa.71126.0.add = add nuw nsw i64 %.sroa.71126.0.idx1498, 8
  br label %_ZN4llvm15concat_iteratorIKPNS_10BasicBlockEJPS3_S4_EEppEv.exit

_ZN4llvm15concat_iteratorIKPNS_10BasicBlockEJPS3_S4_EEppEv.exit: ; preds = %bb.ar, %bb.as
  %.sroa.01123.1 = phi ptr [ %i.nl, %bb.ar ], [ %.sroa.01123.01497, %bb.as ] ; 2 uses
  %.sroa.71126.1.idx = phi i64 [ %.sroa.71126.0.idx1498, %bb.ar ], [ %.sroa.71126.0.add, %bb.as ] ; 2 uses
  %i.nm = icmp eq i64 %.sroa.71126.1.idx, 8       ; 2 uses
  %i.nn = icmp eq ptr %.sroa.01123.1, %i.fm
  %i.no = select i1 %i.nm, i1 %i.nn, i1 false
  br i1 %i.no, label %_ZNK4llvm20iterator_facade_baseINS_15concat_iteratorIKPNS_10BasicBlockEJPS4_S5_EEESt20forward_iterator_tagS4_lS5_RS4_EneERKS6_.exit, label %bb.af

._crit_edge1502:                                  ; preds = %_ZL21buildClonedLoopBlocksRN4llvm4LoopEPNS_10BasicBlockES3_NS_8ArrayRefIS3_EES3_S3_S3_RKNS_13SmallDenseMapIS3_S3_Lj16ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S3_EEEERNS_8ValueMapIPKNS_5ValueENS_14WeakTrackingVHENS_14ValueMapConfigISI_NS_3sys10SmartMutexILb0EEEEEEERNS_15SmallVectorImplINS_3cfg6UpdateIS3_EEEERNS_15AssumptionCacheERNS_13DominatorTreeERNS_8LoopInfoEPNS_16MemorySSAUpdaterEPNS_15ScalarEvolutionE.exit, %_ZNK4llvm20iterator_facade_baseINS_15concat_iteratorIKPNS_10BasicBlockEJPS4_S5_EEESt20forward_iterator_tagS4_lS5_RS4_EneERKS6_.exit
  %i.np = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.nq = load i32, ptr %i.np, align 8, !tbaa !325
  %.not.i429 = icmp eq i32 %i.nq, 0
  br i1 %.not.i429, label %_ZNK4llvm11Instruction11getMetadataEj.exit.thread, label %_ZNK4llvm11Instruction11getMetadataEj.exit

_ZNK4llvm11Instruction11getMetadataEj.exit:       ; preds = %._crit_edge1502
  %i.nr = call noundef ptr @_ZNK4llvm5Value15getMetadataImplEj(ptr noundef nonnull align 8 dereferenceable(72) %1, i32 noundef 14) #25
  %.not376 = icmp eq ptr %i.nr, null
  br i1 %.not376, label %_ZNK4llvm11Instruction11getMetadataEj.exit.thread, label %bb.eq

bb.at:                                            ; preds = %.lr.ph1501, %_ZL21buildClonedLoopBlocksRN4llvm4LoopEPNS_10BasicBlockES3_NS_8ArrayRefIS3_EES3_S3_S3_RKNS_13SmallDenseMapIS3_S3_Lj16ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S3_EEEERNS_8ValueMapIPKNS_5ValueENS_14WeakTrackingVHENS_14ValueMapConfigISI_NS_3sys10SmartMutexILb0EEEEEEERNS_15SmallVectorImplINS_3cfg6UpdateIS3_EEEERNS_15AssumptionCacheERNS_13DominatorTreeERNS_8LoopInfoEPNS_16MemorySSAUpdaterEPNS_15ScalarEvolutionE.exit
  %.03531500 = phi ptr [ %i.gj, %.lr.ph1501 ], [ %i.atx, %_ZL21buildClonedLoopBlocksRN4llvm4LoopEPNS_10BasicBlockES3_NS_8ArrayRefIS3_EES3_S3_S3_RKNS_13SmallDenseMapIS3_S3_Lj16ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S3_EEEERNS_8ValueMapIPKNS_5ValueENS_14WeakTrackingVHENS_14ValueMapConfigISI_NS_3sys10SmartMutexILb0EEEEEEERNS_15SmallVectorImplINS_3cfg6UpdateIS3_EEEERNS_15AssumptionCacheERNS_13DominatorTreeERNS_8LoopInfoEPNS_16MemorySSAUpdaterEPNS_15ScalarEvolutionE.exit ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l) #24
  %i.ns = load ptr, ptr %.03531500, align 8, !tbaa !148
  store ptr %i.ns, ptr %i.l, align 8, !tbaa !148
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m) #24
  %i.nt = call noalias noundef nonnull dereferenceable(176) ptr @_Znwm(i64 noundef 176) #26 ; 10 uses
  %i.nu = getelementptr inbounds nuw i8, ptr %i.nt, i64 20 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(176) %i.nt, i8 0, i64 20, i1 false)
  store i32 128, ptr %i.nu, align 4, !tbaa !396
  %i.nv = getelementptr inbounds nuw i8, ptr %i.nt, i64 16
  %i.nw = getelementptr inbounds nuw i8, ptr %i.nt, i64 8
  %i.nx = call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef 8208, i64 noundef 8) #24 ; 2 uses
  %i.ny = load i32, ptr %i.nu, align 4, !tbaa !396 ; 2 uses
  %i.nz = zext i32 %i.ny to i64                   ; 2 uses
  %i.oa = shl nuw nsw i64 %i.nz, 6
  %i.ob = getelementptr inbounds nuw i8, ptr %i.nx, i64 %i.oa ; 2 uses
  store ptr %i.nx, ptr %i.nt, align 8, !tbaa !397
  store ptr %i.ob, ptr %i.nw, align 8, !tbaa !398
  store i32 0, ptr %i.nv, align 8, !tbaa !399
  %.not.i.i.i.i.i431 = icmp eq i32 %i.ny, 0
  br i1 %.not.i.i.i.i.i431, label %_ZN4llvm8ValueMapIPKNS_5ValueENS_14WeakTrackingVHENS_14ValueMapConfigIS3_NS_3sys10SmartMutexILb0EEEEEEC2Ej.exit, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.oc = add nuw nsw i64 %i.nz, 31
  %i.od = lshr i64 %i.oc, 3
  %i.oe = and i64 %i.od, 1073741820
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.ob, i8 0, i64 %i.oe, i1 false)
  br label %_ZN4llvm8ValueMapIPKNS_5ValueENS_14WeakTrackingVHENS_14ValueMapConfigIS3_NS_3sys10SmartMutexILb0EEEEEEC2Ej.exit

_ZN4llvm8ValueMapIPKNS_5ValueENS_14WeakTrackingVHENS_14ValueMapConfigIS3_NS_3sys10SmartMutexILb0EEEEEEC2Ej.exit: ; preds = %bb.at, %bb.au
  %i.of = getelementptr inbounds nuw i8, ptr %i.nt, i64 48
  store i8 0, ptr %i.of, align 8, !tbaa !401
  %i.og = getelementptr inbounds nuw i8, ptr %i.nt, i64 64
  %i.oh = getelementptr inbounds nuw i8, ptr %i.nt, i64 168
  store i32 1, ptr %i.og, align 8
  store i32 0, ptr %i.oh, align 8
  store ptr %i.nt, ptr %i.m, align 8, !tbaa !403
  %i.oi = load i32, ptr %i.ge, align 8, !tbaa !69 ; 3 uses
  %i.oj = load i32, ptr %i.gf, align 4, !tbaa !80
  %.not.i432 = icmp ult i32 %i.oi, %i.oj
  br i1 %.not.i432, label %bb.aw, label %bb.av, !prof !81

bb.av:                                            ; preds = %_ZN4llvm8ValueMapIPKNS_5ValueENS_14WeakTrackingVHENS_14ValueMapConfigIS3_NS_3sys10SmartMutexILb0EEEEEEC2Ej.exit
  %i.ok = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN4llvm23SmallVectorTemplateBaseISt10unique_ptrINS_8ValueMapIPKNS_5ValueENS_14WeakTrackingVHENS_14ValueMapConfigIS5_NS_3sys10SmartMutexILb0EEEEEEESt14default_deleteISC_EELb0EE18growAndEmplaceBackIJPSC_EEERSF_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %80, ptr noundef nonnull align 8 dereferenceable(8) %i.m) ; 0 uses
  %.pre = load ptr, ptr %80, align 8, !tbaa !57
  %.pre1914 = load i32, ptr %i.ge, align 8, !tbaa !69
  br label %_ZN4llvm15SmallVectorImplISt10unique_ptrINS_8ValueMapIPKNS_5ValueENS_14WeakTrackingVHENS_14ValueMapConfigIS5_NS_3sys10SmartMutexILb0EEEEEEESt14default_deleteISC_EEE12emplace_backIJPSC_EEERSF_DpOT_.exit

bb.aw:                                            ; preds = %_ZN4llvm8ValueMapIPKNS_5ValueENS_14WeakTrackingVHENS_14ValueMapConfigIS3_NS_3sys10SmartMutexILb0EEEEEEC2Ej.exit
  %i.ol = zext i32 %i.oi to i64
  %i.om = load ptr, ptr %80, align 8, !tbaa !57   ; 2 uses
  %i.on = getelementptr inbounds nuw [8 x i8], ptr %i.om, i64 %i.ol
  store ptr %i.nt, ptr %i.on, align 8, !tbaa !403
  %i.oo = add nuw i32 %i.oi, 1                    ; 2 uses
  store i32 %i.oo, ptr %i.ge, align 8, !tbaa !69
  br label %_ZN4llvm15SmallVectorImplISt10unique_ptrINS_8ValueMapIPKNS_5ValueENS_14WeakTrackingVHENS_14ValueMapConfigIS5_NS_3sys10SmartMutexILb0EEEEEEESt14default_deleteISC_EEE12emplace_backIJPSC_EEERSF_DpOT_.exit

_ZN4llvm15SmallVectorImplISt10unique_ptrINS_8ValueMapIPKNS_5ValueENS_14WeakTrackingVHENS_14ValueMapConfigIS5_NS_3sys10SmartMutexILb0EEEEEEESt14default_deleteISC_EEE12emplace_backIJPSC_EEERSF_DpOT_.exit: ; preds = %bb.av, %bb.aw
  %i.op = phi i32 [ %.pre1914, %bb.av ], [ %i.oo, %bb.aw ]
  %i.oq = phi ptr [ %.pre, %bb.av ], [ %i.om, %bb.aw ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #24
  %i.or = load ptr, ptr %76, align 8, !tbaa !57   ; 2 uses
  %i.os = load i32, ptr %i.ew, align 8, !tbaa !69 ; 2 uses
  %i.ot = zext i32 %i.os to i64                   ; 2 uses
  %i.ou = load ptr, ptr %i.l, align 8, !tbaa !148 ; 6 uses
  %i.ov = zext i32 %i.op to i64
  %i.ow = getelementptr inbounds nuw [8 x i8], ptr %i.oq, i64 %i.ov
  %i.ox = getelementptr inbounds i8, ptr %i.ow, i64 -8
  %i.oy = load ptr, ptr %i.ox, align 8, !tbaa !403 ; 29 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %67)
  call void @llvm.lifetime.start.p0(ptr nonnull %68)
  call void @llvm.lifetime.start.p0(ptr nonnull %59) #24
  store ptr %i.gn, ptr %59, align 8, !tbaa !57
  store i32 0, ptr %i.go, align 8, !tbaa !69
  store i32 4, ptr %i.gp, align 4, !tbaa !80
  %i.oz = load ptr, ptr %i.gq, align 8, !tbaa !231
  %i.pa = load ptr, ptr %i.r, align 8, !tbaa !146
  %i.pb = ptrtoint ptr %i.oz to i64
  %i.pc = ptrtoint ptr %i.pa to i64
  %i.pd = sub i64 %i.pb, %i.pc
  %i.pe = lshr exact i64 %i.pd, 3
  %i.pf = and i64 %i.pe, 4294967295
  %i.pg = add nuw nsw i64 %i.pf, %i.ot            ; 2 uses
  %i.ph = icmp samesign ugt i64 %i.pg, 4
  br i1 %i.ph, label %bb.ax, label %_ZN4llvm15SmallVectorImplIPNS_10BasicBlockEE7reserveEm.exit.i

bb.ax:                                            ; preds = %_ZN4llvm15SmallVectorImplISt10unique_ptrINS_8ValueMapIPKNS_5ValueENS_14WeakTrackingVHENS_14ValueMapConfigIS5_NS_3sys10SmartMutexILb0EEEEEEESt14default_deleteISC_EEE12emplace_backIJPSC_EEERSF_DpOT_.exit
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %59, ptr noundef nonnull %i.gn, i64 noundef %i.pg, i64 noundef 8) #24
  br label %_ZN4llvm15SmallVectorImplIPNS_10BasicBlockEE7reserveEm.exit.i

_ZN4llvm15SmallVectorImplIPNS_10BasicBlockEE7reserveEm.exit.i: ; preds = %bb.ax, %_ZN4llvm15SmallVectorImplISt10unique_ptrINS_8ValueMapIPKNS_5ValueENS_14WeakTrackingVHENS_14ValueMapConfigIS5_NS_3sys10SmartMutexILb0EEEEEEESt14default_deleteISC_EEE12emplace_backIJPSC_EEERSF_DpOT_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #24
  store i8 1, ptr %i.gs, align 1, !tbaa !322
  store ptr @.str.59, ptr %14, align 8, !tbaa !202
  store i8 3, ptr %i.gr, align 8, !tbaa !321
  %i.pi = load ptr, ptr %i.gt, align 8, !tbaa !230
  %i.pj = call noundef ptr @_ZN4llvm15CloneBasicBlockEPKNS_10BasicBlockERNS_8ValueMapIPKNS_5ValueENS_14WeakTrackingVHENS_14ValueMapConfigIS6_NS_3sys10SmartMutexILb0EEEEEEERKNS_5TwineEPNS_8FunctionEPNS_14ClonedCodeInfoEb(ptr noundef nonnull %i.fz, ptr noundef nonnull align 8 dereferenceable(176) %i.oy, ptr noundef nonnull align 8 dereferenceable(34) %14, ptr noundef %i.pi, ptr noundef null, i1 noundef zeroext true) #24 ; 7 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #24
  call void @_ZN4llvm10BasicBlock10moveBeforeENS_14ilist_iteratorINS_12ilist_detail12node_optionsIS0_Lb0ELb0EvLb0EvEELb0ELb0EEE(ptr noundef nonnull align 8 dereferenceable(80) %i.pj, ptr nonnull %i.gu) #24
  %i.pk = load i32, ptr %i.go, align 8, !tbaa !69 ; 2 uses
  %i.pl = load i32, ptr %i.gp, align 4, !tbaa !80
  %.not.i.i824 = icmp ult i32 %i.pk, %i.pl
  br i1 %.not.i.i824, label %bb.az, label %bb.ay, !prof !81

bb.ay:                                            ; preds = %_ZN4llvm15SmallVectorImplIPNS_10BasicBlockEE7reserveEm.exit.i
  call void @_ZN4llvm23SmallVectorTemplateBaseIPNS_10BasicBlockELb1EE15growAndPushBackES2_(ptr noundef nonnull align 8 dereferenceable(16) %59, ptr noundef nonnull %i.pj)
  br label %_ZNK4llvm8ValueMapIPKNS_5ValueENS_14WeakTrackingVHENS_14ValueMapConfigIS3_NS_3sys10SmartMutexILb0EEEEEE4WrapES3_.exit.i.i825

end_hunk_4
begin_hunk_5_@_ZL28unswitchNontrivialInvariantsRN4llvm4LoopERNS_11InstructionENS_8ArrayRefIPNS_5ValueEEERNS_15IVConditionInfoERNS_13DominatorTreeERNS_8LoopInfoERNS_15AssumptionCacheEPNS_15ScalarEvolutionEPNS_16MemorySSAUpdaterERNS_10LPMUpdaterEbb:bb.a
  %i.cya = getelementptr inbounds nuw i8, ptr %i.cxz, i64 24
  %i.cyb = load ptr, ptr %i.cya, align 8, !tbaa !136, !noalias !1357
  %i.cyc = icmp eq ptr %i.cxf, %i.cyb
  br i1 %i.cyc, label %_ZNK4llvm12DenseMapBaseINS_8DenseMapINS_18ValueMapCallbackVHIPKNS_5ValueENS_14WeakTrackingVHENS_14ValueMapConfigIS5_NS_3sys10SmartMutexILb0EEEEEEES6_NS_12DenseMapInfoISC_vEENS_6detail12DenseMapPairISC_S6_EEEESC_S6_SE_SH_E7find_asIS5_EENS_16DenseMapIteratorISC_S6_SE_SH_Lb1EEERKT_.exit.loopexit.i192.i, label %bb.nz, !prof !81

bb.nz:                                            ; preds = %.lr.ph.i.i.i190.i
  %i.cyd = add nuw i32 %.017.i.i.i191.i, 1
  %i.cye = and i32 %i.cyd, %i.cxk                 ; 3 uses
  %i.cyf = zext i32 %i.cye to i64                 ; 2 uses
  %i.cyg = lshr i64 %i.cyf, 5
  %i.cyh = getelementptr inbounds nuw [4 x i8], ptr %i.cxh, i64 %i.cyg
  %i.cyi = load i32, ptr %i.cyh, align 4, !tbaa !94, !noalias !1357
  %i.cyj = and i32 %i.cye, 31
  %i.cyk = lshr i32 %i.cyi, %i.cyj
  %i.cyl = trunc i32 %i.cyk to i1
  br i1 %i.cyl, label %.lr.ph.i.i.i190.i, label %.loopexit.i.i183.i, !prof !151

.loopexit.i.i183.i:                               ; preds = %bb.nz, %bb.ny, %bb.nx
  %i.cym = zext i32 %i.cxi to i64                 ; 2 uses
  %i.cyn = getelementptr inbounds nuw [64 x i8], ptr %i.cxg, i64 %i.cym
  br label %_ZNK4llvm12DenseMapBaseINS_8DenseMapINS_18ValueMapCallbackVHIPKNS_5ValueENS_14WeakTrackingVHENS_14ValueMapConfigIS5_NS_3sys10SmartMutexILb0EEEEEEES6_NS_12DenseMapInfoISC_vEENS_6detail12DenseMapPairISC_S6_EEEESC_S6_SE_SH_E7find_asIS5_EENS_16DenseMapIteratorISC_S6_SE_SH_Lb1EEERKT_.exit.i184.i

_ZNK4llvm12DenseMapBaseINS_8DenseMapINS_18ValueMapCallbackVHIPKNS_5ValueENS_14WeakTrackingVHENS_14ValueMapConfigIS5_NS_3sys10SmartMutexILb0EEEEEEES6_NS_12DenseMapInfoISC_vEENS_6detail12DenseMapPairISC_S6_EEEESC_S6_SE_SH_E7find_asIS5_EENS_16DenseMapIteratorISC_S6_SE_SH_Lb1EEERKT_.exit.loopexit.i192.i: ; preds = %.lr.ph.i.i.i190.i
  %.pre.i193.i = zext i32 %i.cxi to i64
  br label %_ZNK4llvm12DenseMapBaseINS_8DenseMapINS_18ValueMapCallbackVHIPKNS_5ValueENS_14WeakTrackingVHENS_14ValueMapConfigIS5_NS_3sys10SmartMutexILb0EEEEEEES6_NS_12DenseMapInfoISC_vEENS_6detail12DenseMapPairISC_S6_EEEESC_S6_SE_SH_E7find_asIS5_EENS_16DenseMapIteratorISC_S6_SE_SH_Lb1EEERKT_.exit.i184.i

_ZNK4llvm12DenseMapBaseINS_8DenseMapINS_18ValueMapCallbackVHIPKNS_5ValueENS_14WeakTrackingVHENS_14ValueMapConfigIS5_NS_3sys10SmartMutexILb0EEEEEEES6_NS_12DenseMapInfoISC_vEENS_6detail12DenseMapPairISC_S6_EEEESC_S6_SE_SH_E7find_asIS5_EENS_16DenseMapIteratorISC_S6_SE_SH_Lb1EEERKT_.exit.i184.i: ; preds = %_ZNK4llvm12DenseMapBaseINS_8DenseMapINS_18ValueMapCallbackVHIPKNS_5ValueENS_14WeakTrackingVHENS_14ValueMapConfigIS5_NS_3sys10SmartMutexILb0EEEEEEES6_NS_12DenseMapInfoISC_vEENS_6detail12DenseMapPairISC_S6_EEEESC_S6_SE_SH_E7find_asIS5_EENS_16DenseMapIteratorISC_S6_SE_SH_Lb1EEERKT_.exit.loopexit.i192.i, %.loopexit.i.i183.i
  %.pre-phi.i185.i = phi i64 [ %.pre.i193.i, %_ZNK4llvm12DenseMapBaseINS_8DenseMapINS_18ValueMapCallbackVHIPKNS_5ValueENS_14WeakTrackingVHENS_14ValueMapConfigIS5_NS_3sys10SmartMutexILb0EEEEEEES6_NS_12DenseMapInfoISC_vEENS_6detail12DenseMapPairISC_S6_EEEESC_S6_SE_SH_E7find_asIS5_EENS_16DenseMapIteratorISC_S6_SE_SH_Lb1EEERKT_.exit.loopexit.i192.i ], [ %i.cym, %.loopexit.i.i183.i ]
  %.lcssa.sink.i.i186.i = phi ptr [ %i.cxz, %_ZNK4llvm12DenseMapBaseINS_8DenseMapINS_18ValueMapCallbackVHIPKNS_5ValueENS_14WeakTrackingVHENS_14ValueMapConfigIS5_NS_3sys10SmartMutexILb0EEEEEEES6_NS_12DenseMapInfoISC_vEENS_6detail12DenseMapPairISC_S6_EEEESC_S6_SE_SH_E7find_asIS5_EENS_16DenseMapIteratorISC_S6_SE_SH_Lb1EEERKT_.exit.loopexit.i192.i ], [ %i.cyn, %.loopexit.i.i183.i ] ; 3 uses
  %i.cyo = getelementptr inbounds nuw [64 x i8], ptr %i.cxg, i64 %.pre-phi.i185.i
  %.not.i187.i = icmp eq ptr %.lcssa.sink.i.i186.i, %i.cyo
  store i64 6, ptr %30, align 8, !alias.scope !1355
  br i1 %.not.i187.i, label %_ZN4llvm15ValueHandleBaseD2Ev.exit196.thread.i, label %bb.oa

bb.oa:                                            ; preds = %_ZNK4llvm12DenseMapBaseINS_8DenseMapINS_18ValueMapCallbackVHIPKNS_5ValueENS_14WeakTrackingVHENS_14ValueMapConfigIS5_NS_3sys10SmartMutexILb0EEEEEEES6_NS_12DenseMapInfoISC_vEENS_6detail12DenseMapPairISC_S6_EEEESC_S6_SE_SH_E7find_asIS5_EENS_16DenseMapIteratorISC_S6_SE_SH_Lb1EEERKT_.exit.i184.i
  store ptr null, ptr %i.bwo, align 8, !tbaa !404, !alias.scope !1355
  %i.cyp = getelementptr inbounds nuw i8, ptr %.lcssa.sink.i.i186.i, i64 56
  %i.cyq = load ptr, ptr %i.cyp, align 8, !tbaa !136, !noalias !1355 ; 2 uses
  store ptr %i.cyq, ptr %i.bwp, align 8, !tbaa !136, !alias.scope !1355
  %.not.i.i.i188.i = icmp eq ptr %i.cyq, null
  br i1 %.not.i.i.i188.i, label %_ZN4llvm15ValueHandleBaseD2Ev.exit196.thread.i, label %_ZNK4llvm8ValueMapIPKNS_5ValueENS_14WeakTrackingVHENS_14ValueMapConfigIS3_NS_3sys10SmartMutexILb0EEEEEE6lookupERKS3_.exit194.i

_ZNK4llvm8ValueMapIPKNS_5ValueENS_14WeakTrackingVHENS_14ValueMapConfigIS3_NS_3sys10SmartMutexILb0EEEEEE6lookupERKS3_.exit194.i: ; preds = %bb.oa
  %i.cyr = getelementptr inbounds nuw i8, ptr %.lcssa.sink.i.i186.i, i64 40
  %.0.copyload.i.i.i.i.i.i.i189.i = load i64, ptr %i.cyr, align 8, !noalias !1355
  %i.cys = and i64 %.0.copyload.i.i.i.i.i.i.i189.i, -8
  %i.cyt = inttoptr i64 %i.cys to ptr
  call void @_ZN4llvm15ValueHandleBase20AddToExistingUseListEPPS0_(ptr noundef nonnull align 8 dereferenceable(24) %30, ptr noundef %i.cyt) #24
  %.pre743.i = load ptr, ptr %i.bwp, align 8, !tbaa !136 ; 8 uses
  %.not.i195.i = icmp eq ptr %.pre743.i, null
  br i1 %.not.i195.i, label %_ZN4llvm15ValueHandleBaseD2Ev.exit196.thread.i, label %bb.ob

_ZN4llvm15ValueHandleBaseD2Ev.exit196.thread.i:   ; preds = %_ZNK4llvm8ValueMapIPKNS_5ValueENS_14WeakTrackingVHENS_14ValueMapConfigIS3_NS_3sys10SmartMutexILb0EEEEEE6lookupERKS3_.exit194.i, %bb.oa, %_ZNK4llvm12DenseMapBaseINS_8DenseMapINS_18ValueMapCallbackVHIPKNS_5ValueENS_14WeakTrackingVHENS_14ValueMapConfigIS5_NS_3sys10SmartMutexILb0EEEEEEES6_NS_12DenseMapInfoISC_vEENS_6detail12DenseMapPairISC_S6_EEEESC_S6_SE_SH_E7find_asIS5_EENS_16DenseMapIteratorISC_S6_SE_SH_Lb1EEERKT_.exit.i184.i
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #24
  br label %_ZNK4llvm8LoopBaseINS_10BasicBlockENS_4LoopEE8containsEPKS2_.exit.i

bb.ob:                                            ; preds = %_ZNK4llvm8ValueMapIPKNS_5ValueENS_14WeakTrackingVHENS_14ValueMapConfigIS3_NS_3sys10SmartMutexILb0EEEEEE6lookupERKS3_.exit194.i
  call void @_ZN4llvm15ValueHandleBase17RemoveFromUseListEv(ptr noundef nonnull align 8 dereferenceable(24) %30) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #24
  %i.cyu = getelementptr inbounds nuw i8, ptr %i.cxf, i64 40
  %i.cyv = load i32, ptr %i.cyu, align 8, !tbaa !253 ; 2 uses
  %i.cyw = load i32, ptr %i.bwq, align 8, !tbaa !69
  %i.cyx = icmp ugt i32 %i.cyw, %i.cyv
  br i1 %i.cyx, label %_ZNK4llvm12LoopInfoBaseINS_10BasicBlockENS_4LoopEE10getLoopForEPKS1_.exit.i, label %_ZNK4llvm8LoopBaseINS_10BasicBlockENS_4LoopEE8containsEPKS2_.exit.i

_ZNK4llvm12LoopInfoBaseINS_10BasicBlockENS_4LoopEE10getLoopForEPKS1_.exit.i: ; preds = %bb.ob
  %i.cyy = zext i32 %i.cyv to i64
  %i.cyz = load ptr, ptr %6, align 8, !tbaa !57
  %i.cza = getelementptr inbounds nuw [8 x i8], ptr %i.cyz, i64 %i.cyy
  %i.czb = load ptr, ptr %i.cza, align 8, !tbaa !70 ; 6 uses
  %.not164.i = icmp eq ptr %i.czb, null
  br i1 %.not164.i, label %_ZNK4llvm8LoopBaseINS_10BasicBlockENS_4LoopEE8containsEPKS2_.exit.i, label %bb.oc

bb.oc:                                            ; preds = %_ZNK4llvm12LoopInfoBaseINS_10BasicBlockENS_4LoopEE10getLoopForEPKS1_.exit.i
  %i.czc = load i32, ptr %29, align 8, !noalias !1358 ; 2 uses
  %i.czd = and i32 %i.czc, 1
  %.not.i.i.i.i865 = icmp eq i32 %i.czd, 0        ; 3 uses
  %i.cze = load ptr, ptr %i.bwr, align 8, !noalias !1358
  %i.czf = load ptr, ptr %i.bws, align 8, !noalias !1358
  %i.czg = load i32, ptr %i.bwt, align 8, !noalias !1358
  %.sink2.i.i.i.i866 = select i1 %.not.i.i.i.i865, ptr %i.cze, ptr %i.bwr ; 3 uses
  %.sink1.i.i.i.i867 = select i1 %.not.i.i.i.i865, ptr %i.czf, ptr %i.bwn ; 3 uses
  %.sink.i.i.i.i868 = select i1 %.not.i.i.i.i865, i32 %i.czg, i32 16 ; 4 uses
  %i.czh = icmp eq i32 %.sink.i.i.i.i868, 0
  br i1 %i.czh, label %.loopexit.i869, label %bb.od

bb.od:                                            ; preds = %bb.oc
  %i.czi = add i32 %.sink.i.i.i.i868, -1          ; 2 uses
  %i.czj = ptrtoint ptr %.pre743.i to i64
  %i.czk = mul i64 %i.czj, -4658895280553007687   ; 2 uses
  %i.czl = lshr i64 %i.czk, 31
  %i.czm = xor i64 %i.czl, %i.czk
  %i.czn = trunc i64 %i.czm to i32
  %i.czo = and i32 %i.czi, %i.czn                 ; 3 uses
  %i.czp = zext i32 %i.czo to i64                 ; 2 uses
  %i.czq = getelementptr inbounds nuw [16 x i8], ptr %.sink2.i.i.i.i866, i64 %i.czp ; 2 uses
  %i.czr = lshr i64 %i.czp, 5
  %i.czs = getelementptr inbounds nuw [4 x i8], ptr %.sink1.i.i.i.i867, i64 %i.czr
  %i.czt = load i32, ptr %i.czs, align 4, !tbaa !94
  %i.czu = and i32 %i.czo, 31
  %i.czv = lshr i32 %i.czt, %i.czu
  %i.czw = trunc i32 %i.czv to i1
  br i1 %i.czw, label %.lr.ph.i.i883, label %.loopexit.i869, !prof !150

.lr.ph.i.i883:                                    ; preds = %bb.od, %bb.oe
  %i.czx = phi ptr [ %i.dad, %bb.oe ], [ %i.czq, %bb.od ] ; 2 uses
  %.024.i.i884 = phi i32 [ %i.dab, %bb.oe ], [ %i.czo, %bb.od ]
  %i.czy = load ptr, ptr %i.czx, align 8, !tbaa !148
  %i.czz = icmp eq ptr %.pre743.i, %i.czy
  br i1 %i.czz, label %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_10BasicBlockEPNS_4LoopELj16ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E24lookupOrInsertIntoBucketIRKS3_JEEESt4pairIPSA_bEOT_DpOT0_.exit, label %bb.oe, !prof !81

bb.oe:                                            ; preds = %.lr.ph.i.i883
  %i.daa = add nuw i32 %.024.i.i884, 1
  %i.dab = and i32 %i.daa, %i.czi                 ; 3 uses
  %i.dac = zext i32 %i.dab to i64                 ; 2 uses
  %i.dad = getelementptr inbounds nuw [16 x i8], ptr %.sink2.i.i.i.i866, i64 %i.dac ; 2 uses
  %i.dae = lshr i64 %i.dac, 5
  %i.daf = getelementptr inbounds nuw [4 x i8], ptr %.sink1.i.i.i.i867, i64 %i.dae
  %i.dag = load i32, ptr %i.daf, align 4, !tbaa !94
  %i.dah = and i32 %i.dab, 31
  %i.dai = lshr i32 %i.dag, %i.dah
  %i.daj = trunc i32 %i.dai to i1
  br i1 %i.daj, label %.lr.ph.i.i883, label %.loopexit.i869, !prof !151, !llvm.loop !1115

.loopexit.i869:                                   ; preds = %bb.oe, %bb.od, %bb.oc
  %.lcssa28.sink.i.ph.i870 = phi ptr [ %i.czq, %bb.od ], [ null, %bb.oc ], [ %i.dad, %bb.oe ]
  %i.dak = shl i32 %i.czc, 1
  %i.dal = and i32 %i.dak, -4
  %i.dam = add i32 %i.dal, 4
  %i.dan = mul i32 %.sink.i.i.i.i868, 3
  %.not.i.i871 = icmp ult i32 %i.dam, %i.dan
  br i1 %.not.i.i871, label %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_10BasicBlockEPNS_4LoopELj16ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E22findBucketForInsertionIS3_EEPSA_RKT_SE_.exit.i, label %bb.of, !prof !81

bb.of:                                            ; preds = %.loopexit.i869
  %i.dao = shl i32 %.sink.i.i.i.i868, 1
  call void @_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_10BasicBlockEPNS_4LoopELj16ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %29, i32 noundef %i.dao)
  %i.dap = load i32, ptr %29, align 8, !noalias !1359
  %i.daq = and i32 %i.dap, 1
  %.not.i.i.i944 = icmp eq i32 %i.daq, 0          ; 3 uses
  %i.dar = load ptr, ptr %i.bwr, align 8, !noalias !1359
  %i.das = load ptr, ptr %i.bws, align 8, !noalias !1359
  %i.dat = load i32, ptr %i.bwt, align 8, !noalias !1359
  %.sink2.i.i.i945 = select i1 %.not.i.i.i944, ptr %i.dar, ptr %i.bwr ; 5 uses
  %.sink1.i.i.i946 = select i1 %.not.i.i.i944, ptr %i.das, ptr %i.bwn ; 5 uses
  %.sink.i.i.i947 = select i1 %.not.i.i.i944, i32 %i.dat, i32 16 ; 2 uses
  %i.dau = icmp ne i32 %.sink.i.i.i947, 0
  call void @llvm.assume(i1 %i.dau)
  %i.dav = add i32 %.sink.i.i.i947, -1            ; 2 uses
  %i.daw = ptrtoint ptr %.pre743.i to i64
  %i.dax = mul i64 %i.daw, -4658895280553007687   ; 2 uses
  %i.day = lshr i64 %i.dax, 31
  %i.daz = xor i64 %i.day, %i.dax
  %i.dba = trunc i64 %i.daz to i32
  %i.dbb = and i32 %i.dav, %i.dba                 ; 3 uses
  %i.dbc = zext i32 %i.dbb to i64                 ; 2 uses
  %i.dbd = getelementptr inbounds nuw [16 x i8], ptr %.sink2.i.i.i945, i64 %i.dbc ; 2 uses
  %i.dbe = lshr i64 %i.dbc, 5
  %i.dbf = getelementptr inbounds nuw [4 x i8], ptr %.sink1.i.i.i946, i64 %i.dbe
  %i.dbg = load i32, ptr %i.dbf, align 4, !tbaa !94
  %i.dbh = and i32 %i.dbb, 31
  %i.dbi = lshr i32 %i.dbg, %i.dbh
  %i.dbj = trunc i32 %i.dbi to i1
  br i1 %i.dbj, label %.lr.ph.i951, label %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_10BasicBlockEPNS_4LoopELj16ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E22findBucketForInsertionIS3_EEPSA_RKT_SE_.exit.i, !prof !150

.lr.ph.i951:                                      ; preds = %bb.of, %bb.og
  %i.dbk = phi ptr [ %i.dbq, %bb.og ], [ %i.dbd, %bb.of ] ; 2 uses
  %.024.i952 = phi i32 [ %i.dbo, %bb.og ], [ %i.dbb, %bb.of ]
  %i.dbl = load ptr, ptr %i.dbk, align 8, !tbaa !148
  %i.dbm = icmp eq ptr %.pre743.i, %i.dbl
  br i1 %i.dbm, label %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_10BasicBlockEPNS_4LoopELj16ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E22findBucketForInsertionIS3_EEPSA_RKT_SE_.exit.i, label %bb.og, !prof !81

bb.og:                                            ; preds = %.lr.ph.i951
  %i.dbn = add nuw i32 %.024.i952, 1
  %i.dbo = and i32 %i.dbn, %i.dav                 ; 3 uses
  %i.dbp = zext i32 %i.dbo to i64                 ; 2 uses
  %i.dbq = getelementptr inbounds nuw [16 x i8], ptr %.sink2.i.i.i945, i64 %i.dbp ; 2 uses
  %i.dbr = lshr i64 %i.dbp, 5
  %i.dbs = getelementptr inbounds nuw [4 x i8], ptr %.sink1.i.i.i946, i64 %i.dbr
  %i.dbt = load i32, ptr %i.dbs, align 4, !tbaa !94
  %i.dbu = and i32 %i.dbo, 31
  %i.dbv = lshr i32 %i.dbt, %i.dbu
  %i.dbw = trunc i32 %i.dbv to i1
  br i1 %i.dbw, label %.lr.ph.i951, label %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_10BasicBlockEPNS_4LoopELj16ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E22findBucketForInsertionIS3_EEPSA_RKT_SE_.exit.i, !prof !151, !llvm.loop !1115

_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_10BasicBlockEPNS_4LoopELj16ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E22findBucketForInsertionIS3_EEPSA_RKT_SE_.exit.i: ; preds = %bb.og, %.lr.ph.i951, %bb.of, %.loopexit.i869
  %.pre-phi1937 = phi ptr [ %.sink2.i.i.i.i866, %.loopexit.i869 ], [ %.sink2.i.i.i945, %bb.of ], [ %.sink2.i.i.i945, %.lr.ph.i951 ], [ %.sink2.i.i.i945, %bb.og ]
  %.pre-phi1936 = phi ptr [ %.sink1.i.i.i.i867, %.loopexit.i869 ], [ %.sink1.i.i.i946, %bb.of ], [ %.sink1.i.i.i946, %.lr.ph.i951 ], [ %.sink1.i.i.i946, %bb.og ]
  %i.dbx = phi ptr [ %.lcssa28.sink.i.ph.i870, %.loopexit.i869 ], [ %i.dbd, %bb.of ], [ %i.dbq, %bb.og ], [ %i.dbk, %.lr.ph.i951 ] ; 4 uses
  %i.dby = ptrtoint ptr %i.dbx to i64
  %i.dbz = ptrtoint ptr %.pre-phi1937 to i64
  %i.dca = sub i64 %i.dby, %i.dbz
  %i.dcb = ashr exact i64 %i.dca, 4               ; 2 uses
  %i.dcc = trunc i64 %i.dcb to i32
  %i.dcd = and i32 %i.dcc, 31
  %i.dce = shl nuw i32 1, %i.dcd
  %i.dcf = lshr i64 %i.dcb, 5
  %i.dcg = getelementptr inbounds nuw [4 x i8], ptr %.pre-phi1936, i64 %i.dcf ; 2 uses
  %i.dch = load i32, ptr %i.dcg, align 4, !tbaa !94
  %i.dci = or i32 %i.dce, %i.dch
  store i32 %i.dci, ptr %i.dcg, align 4, !tbaa !94
  %i.dcj = load i32, ptr %29, align 8             ; 2 uses
  %93 = and i32 %i.dcj, -2
  %i.dck = add i32 %93, 2
  %94 = and i32 %i.dcj, 1
  %95 = or disjoint i32 %i.dck, %94
  store i32 %95, ptr %29, align 8
  store ptr %.pre743.i, ptr %i.dbx, align 8, !tbaa !148
  %i.dcl = getelementptr inbounds nuw i8, ptr %i.dbx, i64 8
  store ptr null, ptr %i.dcl, align 8, !tbaa !70
  br label %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_10BasicBlockEPNS_4LoopELj16ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E24lookupOrInsertIntoBucketIRKS3_JEEESt4pairIPSA_bEOT_DpOT0_.exit

_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_10BasicBlockEPNS_4LoopELj16ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E24lookupOrInsertIntoBucketIRKS3_JEEESt4pairIPSA_bEOT_DpOT0_.exit: ; preds = %.lr.ph.i.i883, %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_10BasicBlockEPNS_4LoopELj16ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E22findBucketForInsertionIS3_EEPSA_RKT_SE_.exit.i
  %.sroa.0.0.i879 = phi ptr [ %i.dbx, %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_10BasicBlockEPNS_4LoopELj16ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E22findBucketForInsertionIS3_EEPSA_RKT_SE_.exit.i ], [ %i.czx, %.lr.ph.i.i883 ]
  %i.dcm = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i879, i64 8
  store ptr %i.czb, ptr %i.dcm, align 8, !tbaa !70
  %i.dcn = load i32, ptr %i.bwl, align 8, !tbaa !69 ; 2 uses
  %i.dco = load i32, ptr %i.bwm, align 4, !tbaa !80
  %.not.i197.i = icmp ult i32 %i.dcn, %i.dco
  br i1 %.not.i197.i, label %bb.oi, label %bb.oh, !prof !81

bb.oh:                                            ; preds = %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_10BasicBlockEPNS_4LoopELj16ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E24lookupOrInsertIntoBucketIRKS3_JEEESt4pairIPSA_bEOT_DpOT0_.exit
  call void @_ZN4llvm23SmallVectorTemplateBaseIPNS_10BasicBlockELb1EE15growAndPushBackES2_(ptr noundef nonnull align 8 dereferenceable(16) %28, ptr noundef nonnull %.pre743.i)
  br label %_ZN4llvm23SmallVectorTemplateBaseIPNS_10BasicBlockELb1EE9push_backES2_.exit.i660

bb.oi:                                            ; preds = %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_10BasicBlockEPNS_4LoopELj16ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E24lookupOrInsertIntoBucketIRKS3_JEEESt4pairIPSA_bEOT_DpOT0_.exit
  %i.dcp = zext i32 %i.dcn to i64
  %i.dcq = load ptr, ptr %28, align 8, !tbaa !57
  %i.dcr = getelementptr inbounds nuw [8 x i8], ptr %i.dcq, i64 %i.dcp
  store ptr %.pre743.i, ptr %i.dcr, align 1
  %i.dcs = load i32, ptr %i.bwl, align 8, !tbaa !69
  %i.dct = add i32 %i.dcs, 1
  store i32 %i.dct, ptr %i.bwl, align 8, !tbaa !69
  br label %_ZN4llvm23SmallVectorTemplateBaseIPNS_10BasicBlockELb1EE9push_backES2_.exit.i660

_ZN4llvm23SmallVectorTemplateBaseIPNS_10BasicBlockELb1EE9push_backES2_.exit.i660: ; preds = %bb.oi, %bb.oh
  %.not165.i = icmp eq ptr %.0138652.i, null
  br i1 %.not165.i, label %_ZNK4llvm8LoopBaseINS_10BasicBlockENS_4LoopEE8containsEPKS2_.exit.i, label %bb.oj

bb.oj:                                            ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPNS_10BasicBlockELb1EE9push_backES2_.exit.i660
  %.not166.i = icmp eq ptr %.0138652.i, %i.czb
  br i1 %.not166.i, label %_ZNK4llvm8LoopBaseINS_10BasicBlockENS_4LoopEE8containsEPKS2_.exit.i, label %.lr.ph.i.i661

.lr.ph.i.i661:                                    ; preds = %bb.oj, %tailrecurse.i.i
  %.tr78.i.i = phi ptr [ %i.dcu, %tailrecurse.i.i ], [ %i.czb, %bb.oj ] ; 2 uses
  %.not.not.i.i = icmp eq ptr %.tr78.i.i, null
  br i1 %.not.not.i.i, label %_ZNK4llvm8LoopBaseINS_10BasicBlockENS_4LoopEE8containsEPKS2_.exit.i, label %tailrecurse.i.i

tailrecurse.i.i:                                  ; preds = %.lr.ph.i.i661
  %i.dcu = load ptr, ptr %.tr78.i.i, align 8, !tbaa !189 ; 2 uses
  %i.dcv = icmp eq ptr %i.dcu, %.0138652.i
  br i1 %i.dcv, label %_ZNK4llvm8LoopBaseINS_10BasicBlockENS_4LoopEE8containsEPKS2_.exit.i, label %.lr.ph.i.i661

_ZNK4llvm8LoopBaseINS_10BasicBlockENS_4LoopEE8containsEPKS2_.exit.i: ; preds = %tailrecurse.i.i, %.lr.ph.i.i661, %bb.oj, %_ZN4llvm23SmallVectorTemplateBaseIPNS_10BasicBlockELb1EE9push_backES2_.exit.i660, %_ZNK4llvm12LoopInfoBaseINS_10BasicBlockENS_4LoopEE10getLoopForEPKS1_.exit.i, %bb.ob, %_ZN4llvm15ValueHandleBaseD2Ev.exit196.thread.i
  %.2140.i = phi ptr [ %.0138652.i, %_ZN4llvm15ValueHandleBaseD2Ev.exit196.thread.i ], [ %.0138652.i, %bb.ob ], [ %i.czb, %_ZN4llvm23SmallVectorTemplateBaseIPNS_10BasicBlockELb1EE9push_backES2_.exit.i660 ], [ %.0138652.i, %bb.oj ], [ %.0138652.i, %_ZNK4llvm12LoopInfoBaseINS_10BasicBlockENS_4LoopEE10getLoopForEPKS1_.exit.i ], [ %.0138652.i, %.lr.ph.i.i661 ], [ %i.czb, %tailrecurse.i.i ] ; 2 uses
  %i.dcw = getelementptr inbounds nuw i8, ptr %.0137653.i, i64 8 ; 2 uses
  %.not.i626 = icmp eq ptr %i.dcw, %i.cxc
  br i1 %.not.i626, label %._crit_edge.i627, label %bb.nx

._crit_edge658.i:                                 ; preds = %_ZN4llvm9SetVectorIPNS_10BasicBlockENS_11SmallVectorIS2_Lj16EEENS_8DenseSetIS2_NS_12DenseMapInfoIS2_vEEEELj16EE6insertERKS2_.exit, %._crit_edge.i627
  call void @llvm.lifetime.start.p0(ptr nonnull %33) #24
  store ptr %i.bxd, ptr %33, align 8, !tbaa !57
  store i32 0, ptr %i.bxe, align 8, !tbaa !69
  store i32 16, ptr %i.bxf, align 4, !tbaa !80
  call void @llvm.lifetime.start.p0(ptr nonnull %34) #24
  store ptr %i.bxg, ptr %34, align 8, !tbaa !55
  store i32 16, ptr %i.bxh, align 8, !tbaa !125
  store i32 0, ptr %i.bxi, align 4, !tbaa !126
  store i8 1, ptr %i.bxj, align 8, !tbaa !52
  %i.dcx = getelementptr inbounds nuw i8, ptr %i.cxa, i64 16
  %.sroa.0555.0659.i = load ptr, ptr %i.dcx, align 8, !tbaa !163 ; 2 uses
  %.not610660.i = icmp eq ptr %.sroa.0555.0659.i, null
  br i1 %.not610660.i, label %.loopexit.i631.thread, label %.lr.ph663.i

.lr.ph657.i:                                      ; preds = %._crit_edge.i627, %_ZN4llvm9SetVectorIPNS_10BasicBlockENS_11SmallVectorIS2_Lj16EEENS_8DenseSetIS2_NS_12DenseMapInfoIS2_vEEEELj16EE6insertERKS2_.exit
  %.0136655.i = phi ptr [ %i.dnd, %_ZN4llvm9SetVectorIPNS_10BasicBlockENS_11SmallVectorIS2_Lj16EEENS_8DenseSetIS2_NS_12DenseMapInfoIS2_vEEEELj16EE6insertERKS2_.exit ], [ %i.cxd, %._crit_edge.i627 ] ; 2 uses
  %i.dcy = load ptr, ptr %.0136655.i, align 8, !tbaa !148 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %32) #24
  call void @llvm.experimental.noalias.scope.decl(metadata !1360)
  %i.dcz = load ptr, ptr %i.ctr, align 8, !tbaa !397, !noalias !1361 ; 3 uses
  %i.dda = load ptr, ptr %i.ctw, align 8, !tbaa !398, !noalias !1361 ; 2 uses
  %i.ddb = load i32, ptr %i.cty, align 4, !tbaa !396, !noalias !1361 ; 4 uses
  %i.ddc = icmp eq i32 %i.ddb, 0
  br i1 %i.ddc, label %.loopexit.i.i199.i, label %bb.ok

bb.ok:                                            ; preds = %.lr.ph657.i
  %i.ddd = add i32 %i.ddb, -1                     ; 2 uses
  %i.dde = ptrtoint ptr %i.dcy to i64
  %i.ddf = mul i64 %i.dde, -4658895280553007687   ; 2 uses
  %i.ddg = lshr i64 %i.ddf, 31
  %i.ddh = xor i64 %i.ddg, %i.ddf
  %i.ddi = trunc i64 %i.ddh to i32
  %i.ddj = and i32 %i.ddd, %i.ddi                 ; 3 uses
  %i.ddk = zext i32 %i.ddj to i64                 ; 2 uses
  %i.ddl = lshr i64 %i.ddk, 5
  %i.ddm = getelementptr inbounds nuw [4 x i8], ptr %i.dda, i64 %i.ddl
  %i.ddn = load i32, ptr %i.ddm, align 4, !tbaa !94, !noalias !1362
  %i.ddo = and i32 %i.ddj, 31
  %i.ddp = lshr i32 %i.ddn, %i.ddo
  %i.ddq = trunc i32 %i.ddp to i1
  br i1 %i.ddq, label %.lr.ph.i.i.i206.i, label %.loopexit.i.i199.i, !prof !150

.lr.ph.i.i.i206.i:                                ; preds = %bb.ok, %bb.ol
  %i.ddr = phi i64 [ %i.ddy, %bb.ol ], [ %i.ddk, %bb.ok ]
  %.017.i.i.i207.i = phi i32 [ %i.ddx, %bb.ol ], [ %i.ddj, %bb.ok ]
  %i.dds = getelementptr inbounds nuw [64 x i8], ptr %i.dcz, i64 %i.ddr ; 2 uses
  %i.ddt = getelementptr inbounds nuw i8, ptr %i.dds, i64 24
  %i.ddu = load ptr, ptr %i.ddt, align 8, !tbaa !136, !noalias !1362
  %i.ddv = icmp eq ptr %i.dcy, %i.ddu
  br i1 %i.ddv, label %_ZNK4llvm12DenseMapBaseINS_8DenseMapINS_18ValueMapCallbackVHIPKNS_5ValueENS_14WeakTrackingVHENS_14ValueMapConfigIS5_NS_3sys10SmartMutexILb0EEEEEEES6_NS_12DenseMapInfoISC_vEENS_6detail12DenseMapPairISC_S6_EEEESC_S6_SE_SH_E7find_asIS5_EENS_16DenseMapIteratorISC_S6_SE_SH_Lb1EEERKT_.exit.loopexit.i208.i, label %bb.ol, !prof !81

bb.ol:                                            ; preds = %.lr.ph.i.i.i206.i
  %i.ddw = add nuw i32 %.017.i.i.i207.i, 1
  %i.ddx = and i32 %i.ddw, %i.ddd                 ; 3 uses
  %i.ddy = zext i32 %i.ddx to i64                 ; 2 uses
  %i.ddz = lshr i64 %i.ddy, 5
  %i.dea = getelementptr inbounds nuw [4 x i8], ptr %i.dda, i64 %i.ddz
  %i.deb = load i32, ptr %i.dea, align 4, !tbaa !94, !noalias !1362
  %i.dec = and i32 %i.ddx, 31
  %i.ded = lshr i32 %i.deb, %i.dec
  %i.dee = trunc i32 %i.ded to i1
  br i1 %i.dee, label %.lr.ph.i.i.i206.i, label %.loopexit.i.i199.i, !prof !151

.loopexit.i.i199.i:                               ; preds = %bb.ol, %bb.ok, %.lr.ph657.i
  %i.def = zext i32 %i.ddb to i64                 ; 2 uses
  %i.deg = getelementptr inbounds nuw [64 x i8], ptr %i.dcz, i64 %i.def
  br label %_ZNK4llvm12DenseMapBaseINS_8DenseMapINS_18ValueMapCallbackVHIPKNS_5ValueENS_14WeakTrackingVHENS_14ValueMapConfigIS5_NS_3sys10SmartMutexILb0EEEEEEES6_NS_12DenseMapInfoISC_vEENS_6detail12DenseMapPairISC_S6_EEEESC_S6_SE_SH_E7find_asIS5_EENS_16DenseMapIteratorISC_S6_SE_SH_Lb1EEERKT_.exit.i200.i

_ZNK4llvm12DenseMapBaseINS_8DenseMapINS_18ValueMapCallbackVHIPKNS_5ValueENS_14WeakTrackingVHENS_14ValueMapConfigIS5_NS_3sys10SmartMutexILb0EEEEEEES6_NS_12DenseMapInfoISC_vEENS_6detail12DenseMapPairISC_S6_EEEESC_S6_SE_SH_E7find_asIS5_EENS_16DenseMapIteratorISC_S6_SE_SH_Lb1EEERKT_.exit.loopexit.i208.i: ; preds = %.lr.ph.i.i.i206.i
  %.pre.i209.i = zext i32 %i.ddb to i64
  br label %_ZNK4llvm12DenseMapBaseINS_8DenseMapINS_18ValueMapCallbackVHIPKNS_5ValueENS_14WeakTrackingVHENS_14ValueMapConfigIS5_NS_3sys10SmartMutexILb0EEEEEEES6_NS_12DenseMapInfoISC_vEENS_6detail12DenseMapPairISC_S6_EEEESC_S6_SE_SH_E7find_asIS5_EENS_16DenseMapIteratorISC_S6_SE_SH_Lb1EEERKT_.exit.i200.i

_ZNK4llvm12DenseMapBaseINS_8DenseMapINS_18ValueMapCallbackVHIPKNS_5ValueENS_14WeakTrackingVHENS_14ValueMapConfigIS5_NS_3sys10SmartMutexILb0EEEEEEES6_NS_12DenseMapInfoISC_vEENS_6detail12DenseMapPairISC_S6_EEEESC_S6_SE_SH_E7find_asIS5_EENS_16DenseMapIteratorISC_S6_SE_SH_Lb1EEERKT_.exit.i200.i: ; preds = %_ZNK4llvm12DenseMapBaseINS_8DenseMapINS_18ValueMapCallbackVHIPKNS_5ValueENS_14WeakTrackingVHENS_14ValueMapConfigIS5_NS_3sys10SmartMutexILb0EEEEEEES6_NS_12DenseMapInfoISC_vEENS_6detail12DenseMapPairISC_S6_EEEESC_S6_SE_SH_E7find_asIS5_EENS_16DenseMapIteratorISC_S6_SE_SH_Lb1EEERKT_.exit.loopexit.i208.i, %.loopexit.i.i199.i
  %.pre-phi.i201.i = phi i64 [ %.pre.i209.i, %_ZNK4llvm12DenseMapBaseINS_8DenseMapINS_18ValueMapCallbackVHIPKNS_5ValueENS_14WeakTrackingVHENS_14ValueMapConfigIS5_NS_3sys10SmartMutexILb0EEEEEEES6_NS_12DenseMapInfoISC_vEENS_6detail12DenseMapPairISC_S6_EEEESC_S6_SE_SH_E7find_asIS5_EENS_16DenseMapIteratorISC_S6_SE_SH_Lb1EEERKT_.exit.loopexit.i208.i ], [ %i.def, %.loopexit.i.i199.i ]
  %.lcssa.sink.i.i202.i = phi ptr [ %i.dds, %_ZNK4llvm12DenseMapBaseINS_8DenseMapINS_18ValueMapCallbackVHIPKNS_5ValueENS_14WeakTrackingVHENS_14ValueMapConfigIS5_NS_3sys10SmartMutexILb0EEEEEEES6_NS_12DenseMapInfoISC_vEENS_6detail12DenseMapPairISC_S6_EEEESC_S6_SE_SH_E7find_asIS5_EENS_16DenseMapIteratorISC_S6_SE_SH_Lb1EEERKT_.exit.loopexit.i208.i ], [ %i.deg, %.loopexit.i.i199.i ] ; 3 uses
  %i.deh = getelementptr inbounds nuw [64 x i8], ptr %i.dcz, i64 %.pre-phi.i201.i
  %.not.i203.i = icmp eq ptr %.lcssa.sink.i.i202.i, %i.deh
  store i64 6, ptr %32, align 8, !alias.scope !1360
  br i1 %.not.i203.i, label %_ZN4llvm15ValueHandleBaseD2Ev.exit212.thread.i, label %bb.om

bb.om:                                            ; preds = %_ZNK4llvm12DenseMapBaseINS_8DenseMapINS_18ValueMapCallbackVHIPKNS_5ValueENS_14WeakTrackingVHENS_14ValueMapConfigIS5_NS_3sys10SmartMutexILb0EEEEEEES6_NS_12DenseMapInfoISC_vEENS_6detail12DenseMapPairISC_S6_EEEESC_S6_SE_SH_E7find_asIS5_EENS_16DenseMapIteratorISC_S6_SE_SH_Lb1EEERKT_.exit.i200.i
  store ptr null, ptr %i.bwy, align 8, !tbaa !404, !alias.scope !1360
  %i.dei = getelementptr inbounds nuw i8, ptr %.lcssa.sink.i.i202.i, i64 56
  %i.dej = load ptr, ptr %i.dei, align 8, !tbaa !136, !noalias !1360 ; 2 uses
  store ptr %i.dej, ptr %i.bwz, align 8, !tbaa !136, !alias.scope !1360
  %.not.i.i.i204.i = icmp eq ptr %i.dej, null
  br i1 %.not.i.i.i204.i, label %_ZN4llvm15ValueHandleBaseD2Ev.exit212.thread.i, label %_ZNK4llvm8ValueMapIPKNS_5ValueENS_14WeakTrackingVHENS_14ValueMapConfigIS3_NS_3sys10SmartMutexILb0EEEEEE6lookupERKS3_.exit210.i

_ZNK4llvm8ValueMapIPKNS_5ValueENS_14WeakTrackingVHENS_14ValueMapConfigIS3_NS_3sys10SmartMutexILb0EEEEEE6lookupERKS3_.exit210.i: ; preds = %bb.om
  %i.dek = getelementptr inbounds nuw i8, ptr %.lcssa.sink.i.i202.i, i64 40
  %.0.copyload.i.i.i.i.i.i.i205.i = load i64, ptr %i.dek, align 8, !noalias !1360
  %i.del = and i64 %.0.copyload.i.i.i.i.i.i.i205.i, -8
  %i.dem = inttoptr i64 %i.del to ptr
  call void @_ZN4llvm15ValueHandleBase20AddToExistingUseListEPPS0_(ptr noundef nonnull align 8 dereferenceable(24) %32, ptr noundef %i.dem) #24
  %.pre744.i = load ptr, ptr %i.bwz, align 8, !tbaa !136 ; 17 uses
  %.not.i211.i = icmp eq ptr %.pre744.i, null
  br i1 %.not.i211.i, label %_ZN4llvm15ValueHandleBaseD2Ev.exit212.thread.i, label %bb.on

_ZN4llvm15ValueHandleBaseD2Ev.exit212.thread.i:   ; preds = %_ZNK4llvm8ValueMapIPKNS_5ValueENS_14WeakTrackingVHENS_14ValueMapConfigIS3_NS_3sys10SmartMutexILb0EEEEEE6lookupERKS3_.exit210.i, %bb.om, %_ZNK4llvm12DenseMapBaseINS_8DenseMapINS_18ValueMapCallbackVHIPKNS_5ValueENS_14WeakTrackingVHENS_14ValueMapConfigIS5_NS_3sys10SmartMutexILb0EEEEEEES6_NS_12DenseMapInfoISC_vEENS_6detail12DenseMapPairISC_S6_EEEESC_S6_SE_SH_E7find_asIS5_EENS_16DenseMapIteratorISC_S6_SE_SH_Lb1EEERKT_.exit.i200.i
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #24
  br label %_ZN4llvm9SetVectorIPNS_10BasicBlockENS_11SmallVectorIS2_Lj16EEENS_8DenseSetIS2_NS_12DenseMapInfoIS2_vEEEELj16EE6insertERKS2_.exit

bb.on:                                            ; preds = %_ZNK4llvm8ValueMapIPKNS_5ValueENS_14WeakTrackingVHENS_14ValueMapConfigIS3_NS_3sys10SmartMutexILb0EEEEEE6lookupERKS3_.exit210.i
  call void @_ZN4llvm15ValueHandleBase17RemoveFromUseListEv(ptr noundef nonnull align 8 dereferenceable(24) %32) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #24
  %i.den = load i32, ptr %i.bxa, align 8, !tbaa !413 ; 2 uses
  %i.deo = icmp eq i32 %i.den, 0
  br i1 %i.deo, label %bb.oo, label %bb.pd

bb.oo:                                            ; preds = %bb.on
  %i.dep = load ptr, ptr %i.bwu, align 8, !tbaa !57 ; 5 uses
  %i.deq = load i32, ptr %i.bww, align 8, !tbaa !69 ; 4 uses
  %i.der = zext i32 %i.deq to i64                 ; 3 uses
  %.idx4.i.i = shl nuw nsw i64 %i.der, 3          ; 2 uses
  %i.des = getelementptr inbounds nuw i8, ptr %i.dep, i64 %.idx4.i.i
  %i.det = lshr i64 %i.der, 2                     ; 2 uses
  %.not.i.i850 = icmp eq i64 %i.det, 0
  br i1 %.not.i.i850, label %._crit_edge.i.i.i.i.i854, label %.lr.ph.i.i.i.i.i851

.lr.ph.i.i.i.i.i851:                              ; preds = %bb.oo
  %i.deu = and i64 %.idx4.i.i, 34359738336
  %scevgep.i.i.i.i.i852 = getelementptr i8, ptr %i.dep, i64 %i.deu
  br label %bb.op

bb.op:                                            ; preds = %bb.ot, %.lr.ph.i.i.i.i.i851
  %.047.i.i.i.i.i = phi i64 [ %i.det, %.lr.ph.i.i.i.i.i851 ], [ %i.dfh, %bb.ot ] ; 2 uses
  %.02946.i.i.i.i.i = phi ptr [ %i.dep, %.lr.ph.i.i.i.i.i851 ], [ %i.dfg, %bb.ot ] ; 9 uses
  %i.dev = load ptr, ptr %.02946.i.i.i.i.i, align 8, !tbaa !148
  %i.dew = icmp eq ptr %i.dev, %.pre744.i
  br i1 %i.dew, label %_ZN4llvm12is_containedIRNS_11SmallVectorIPNS_10BasicBlockELj16EEES3_EEbOT_RKT0_.exit.i, label %bb.oq

bb.oq:                                            ; preds = %bb.op
  %i.dex = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i.i, i64 8
  %i.dey = load ptr, ptr %i.dex, align 8, !tbaa !148
  %i.dez = icmp eq ptr %i.dey, %.pre744.i
  br i1 %i.dez, label %_ZN4llvm12is_containedIRNS_11SmallVectorIPNS_10BasicBlockELj16EEES3_EEbOT_RKT0_.exit.i.loopexit.split.loop.exit, label %bb.or

bb.or:                                            ; preds = %bb.oq
  %i.dfa = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i.i, i64 16
  %i.dfb = load ptr, ptr %i.dfa, align 8, !tbaa !148
  %i.dfc = icmp eq ptr %i.dfb, %.pre744.i
  br i1 %i.dfc, label %_ZN4llvm12is_containedIRNS_11SmallVectorIPNS_10BasicBlockELj16EEES3_EEbOT_RKT0_.exit.i.loopexit.split.loop.exit2612, label %bb.os

bb.os:                                            ; preds = %bb.or
  %i.dfd = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i.i, i64 24
  %i.dfe = load ptr, ptr %i.dfd, align 8, !tbaa !148
  %i.dff = icmp eq ptr %i.dfe, %.pre744.i
end_hunk_5
begin_hunk_6_@_ZL28unswitchNontrivialInvariantsRN4llvm4LoopERNS_11InstructionENS_8ArrayRefIPNS_5ValueEEERNS_15IVConditionInfoERNS_13DominatorTreeERNS_8LoopInfoERNS_15AssumptionCacheEPNS_15ScalarEvolutionEPNS_16MemorySSAUpdaterERNS_10LPMUpdaterEbb:bb.a
  %.ph3098 = phi i32 [ %i.ekx, %bb.ue ], [ %.pre754.pre.i, %bb.ud ]
  br label %_ZN4llvm23SmallVectorTemplateBaseIPNS_10BasicBlockELb1EE9push_backES2_.exit410.i

_ZN4llvm23SmallVectorTemplateBaseIPNS_10BasicBlockELb1EE9push_backES2_.exit410.i: ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPNS_10BasicBlockELb1EE9push_backES2_.exit410.i.preheader, %thread-pre-split.i
  %i.eky = phi i32 [ %i.ept, %thread-pre-split.i ], [ %.ph3098, %_ZN4llvm23SmallVectorTemplateBaseIPNS_10BasicBlockELb1EE9push_backES2_.exit410.i.preheader ] ; 2 uses
  %i.ekz = load ptr, ptr %33, align 8, !tbaa !57
  %i.ela = zext i32 %i.eky to i64
  %i.elb = getelementptr inbounds nuw [8 x i8], ptr %i.ekz, i64 %i.ela
  %i.elc = getelementptr inbounds i8, ptr %i.elb, i64 -8
  %i.eld = load ptr, ptr %i.elc, align 8, !tbaa !148 ; 2 uses
  %i.ele = add i32 %i.eky, -1                     ; 3 uses
  store i32 %i.ele, ptr %i.bxe, align 8, !tbaa !69
  %i.elf = load ptr, ptr %i.a, align 8, !tbaa !148
  %i.elg = icmp eq ptr %i.eld, %i.elf
  br i1 %i.elg, label %thread-pre-split.i, label %bb.uf

bb.uf:                                            ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPNS_10BasicBlockELb1EE9push_backES2_.exit410.i
  %i.elh = getelementptr inbounds nuw i8, ptr %i.eld, i64 16
  %.sroa.0514.0697.i = load ptr, ptr %i.elh, align 8, !tbaa !163 ; 2 uses
  %.not618698.i = icmp eq ptr %.sroa.0514.0697.i, null
  br i1 %.not618698.i, label %thread-pre-split.i, label %.lr.ph701.i

.lr.ph701.i:                                      ; preds = %bb.uf, %_ZN4llvm23SmallVectorTemplateBaseIPNS_10BasicBlockELb1EE9push_backES2_.exit419.i
  %.sroa.0514.0699.i = phi ptr [ %.sroa.0514.0.i, %_ZN4llvm23SmallVectorTemplateBaseIPNS_10BasicBlockELb1EE9push_backES2_.exit419.i ], [ %.sroa.0514.0697.i, %bb.uf ] ; 2 uses
  %i.eli = getelementptr inbounds nuw i8, ptr %.sroa.0514.0699.i, i64 24
  %i.elj = load ptr, ptr %i.eli, align 8, !tbaa !219
  %i.elk = getelementptr inbounds nuw i8, ptr %i.elj, i64 40
  %i.ell = load ptr, ptr %i.elk, align 8, !tbaa !165 ; 9 uses
  %i.elm = load i8, ptr %i.bxx, align 8, !tbaa !52, !range !53, !noundef !54
  %i.eln = trunc nuw i8 %i.elm to i1
  br i1 %i.eln, label %bb.ug, label %bb.ui

bb.ug:                                            ; preds = %.lr.ph701.i
  %i.elo = load ptr, ptr %37, align 8, !tbaa !55  ; 3 uses
  %i.elp = load i32, ptr %i.bxw, align 4, !tbaa !126 ; 3 uses
  %i.elq = zext i32 %i.elp to i64
  %.idx.i.i415.i = shl nuw nsw i64 %i.elq, 3
  %i.elr = getelementptr inbounds nuw i8, ptr %i.elo, i64 %.idx.i.i415.i
  %.not1923.i.i.i638 = icmp eq i32 %i.elp, 0
  br i1 %.not1923.i.i.i638, label %_ZN4llvm23SmallVectorTemplateBaseIPNS_10BasicBlockELb1EE9push_backES2_.exit419.i, label %.lr.ph.i.i416.i

.lr.ph.i.i416.i:                                  ; preds = %bb.ug, %.critedge.i.i417.i
  %.01524.i.i.i639 = phi ptr [ %i.elt, %.critedge.i.i417.i ], [ %i.elo, %bb.ug ] ; 3 uses
  %i.els = load ptr, ptr %.01524.i.i.i639, align 8, !tbaa !141
  %.not20.i.i.i640 = icmp eq ptr %i.els, %i.ell
  br i1 %.not20.i.i.i640, label %bb.uh, label %.critedge.i.i417.i

.critedge.i.i417.i:                               ; preds = %.lr.ph.i.i416.i
  %i.elt = getelementptr inbounds nuw i8, ptr %.01524.i.i.i639, i64 8 ; 2 uses
  %.not19.i.i.i641 = icmp eq ptr %i.elt, %i.elr
  br i1 %.not19.i.i.i641, label %_ZN4llvm23SmallVectorTemplateBaseIPNS_10BasicBlockELb1EE9push_backES2_.exit419.i, label %.lr.ph.i.i416.i

bb.uh:                                            ; preds = %.lr.ph.i.i416.i
  %i.elu = add i32 %i.elp, -1                     ; 2 uses
  store i32 %i.elu, ptr %i.bxw, align 4, !tbaa !126
  %i.elv = zext i32 %i.elu to i64
  %i.elw = getelementptr inbounds nuw [8 x i8], ptr %i.elo, i64 %i.elv
  %i.elx = load ptr, ptr %i.elw, align 8, !tbaa !141
  store ptr %i.elx, ptr %.01524.i.i.i639, align 8, !tbaa !141
  br label %_ZN4llvm15SmallPtrSetImplIPNS_10BasicBlockEE5eraseES2_.exit.i

bb.ui:                                            ; preds = %.lr.ph701.i
  %i.ely = call noundef ptr @_ZNK4llvm19SmallPtrSetImplBase6doFindEPKv(ptr noundef nonnull align 8 dereferenceable(17) %37, ptr noundef %i.ell) #24 ; 2 uses
  %.not.not.i.i.i632 = icmp eq ptr %i.ely, null
  br i1 %.not.not.i.i.i632, label %_ZN4llvm23SmallVectorTemplateBaseIPNS_10BasicBlockELb1EE9push_backES2_.exit419.i, label %bb.uj

bb.uj:                                            ; preds = %bb.ui
  call void @_ZN4llvm19SmallPtrSetImplBase15eraseFromBucketEPPKv(ptr noundef nonnull align 8 dereferenceable(17) %37, ptr noundef nonnull %i.ely) #24
  %i.elz = load i32, ptr %i.bxw, align 4, !tbaa !126
  %i.ema = add i32 %i.elz, -1
  store i32 %i.ema, ptr %i.bxw, align 4, !tbaa !126
  br label %_ZN4llvm15SmallPtrSetImplIPNS_10BasicBlockEE5eraseES2_.exit.i

_ZN4llvm15SmallPtrSetImplIPNS_10BasicBlockEE5eraseES2_.exit.i: ; preds = %bb.uj, %bb.uh
  %i.emb = load i32, ptr %29, align 8, !noalias !1385 ; 2 uses
  %i.emc = and i32 %i.emb, 1
  %.not.i.i.i.i465.i = icmp eq i32 %i.emc, 0      ; 3 uses
  %i.emd = load ptr, ptr %i.bwr, align 8, !noalias !1385
  %i.eme = load ptr, ptr %i.bws, align 8, !noalias !1385
  %i.emf = load i32, ptr %i.bwt, align 8, !noalias !1385
  %.sink2.i.i.i.i466.i = select i1 %.not.i.i.i.i465.i, ptr %i.emd, ptr %i.bwr ; 3 uses
  %.sink1.i.i.i.i467.i = select i1 %.not.i.i.i.i465.i, ptr %i.eme, ptr %i.bwn ; 3 uses
  %.sink.i.i.i.i468.i = select i1 %.not.i.i.i.i465.i, i32 %i.emf, i32 16 ; 4 uses
  %i.emg = icmp eq i32 %.sink.i.i.i.i468.i, 0
  br i1 %i.emg, label %.loopexit.i.i633, label %bb.uk

bb.uk:                                            ; preds = %_ZN4llvm15SmallPtrSetImplIPNS_10BasicBlockEE5eraseES2_.exit.i
  %i.emh = add i32 %.sink.i.i.i.i468.i, -1        ; 2 uses
  %i.emi = ptrtoint ptr %i.ell to i64
  %i.emj = mul i64 %i.emi, -4658895280553007687   ; 2 uses
  %i.emk = lshr i64 %i.emj, 31
  %i.eml = xor i64 %i.emk, %i.emj
  %i.emm = trunc i64 %i.eml to i32
  %i.emn = and i32 %i.emh, %i.emm                 ; 3 uses
  %i.emo = zext i32 %i.emn to i64                 ; 2 uses
  %i.emp = getelementptr inbounds nuw [16 x i8], ptr %.sink2.i.i.i.i466.i, i64 %i.emo ; 2 uses
  %i.emq = lshr i64 %i.emo, 5
  %i.emr = getelementptr inbounds nuw [4 x i8], ptr %.sink1.i.i.i.i467.i, i64 %i.emq
  %i.ems = load i32, ptr %i.emr, align 4, !tbaa !94, !noalias !1386
  %i.emt = and i32 %i.emn, 31
  %i.emu = lshr i32 %i.ems, %i.emt
  %i.emv = trunc i32 %i.emu to i1
  br i1 %i.emv, label %.lr.ph.i.i474.i, label %.loopexit.i.i633, !prof !150

.lr.ph.i.i474.i:                                  ; preds = %bb.uk, %bb.ul
  %i.emw = phi ptr [ %i.enc, %bb.ul ], [ %i.emp, %bb.uk ]
  %.024.i.i.i = phi i32 [ %i.ena, %bb.ul ], [ %i.emn, %bb.uk ]
  %i.emx = load ptr, ptr %i.emw, align 8, !tbaa !148, !noalias !1386
  %i.emy = icmp eq ptr %i.ell, %i.emx
  br i1 %i.emy, label %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_10BasicBlockEPNS_4LoopELj16ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E24lookupOrInsertIntoBucketIS3_JS5_EEESt4pairIPSA_bEOT_DpOT0_.exit.i, label %bb.ul, !prof !81

bb.ul:                                            ; preds = %.lr.ph.i.i474.i
  %i.emz = add nuw i32 %.024.i.i.i, 1
  %i.ena = and i32 %i.emz, %i.emh                 ; 3 uses
  %i.enb = zext i32 %i.ena to i64                 ; 2 uses
  %i.enc = getelementptr inbounds nuw [16 x i8], ptr %.sink2.i.i.i.i466.i, i64 %i.enb ; 2 uses
  %i.end = lshr i64 %i.enb, 5
  %i.ene = getelementptr inbounds nuw [4 x i8], ptr %.sink1.i.i.i.i467.i, i64 %i.end
  %i.enf = load i32, ptr %i.ene, align 4, !tbaa !94, !noalias !1386
  %i.eng = and i32 %i.ena, 31
  %i.enh = lshr i32 %i.enf, %i.eng
  %i.eni = trunc i32 %i.enh to i1
  br i1 %i.eni, label %.lr.ph.i.i474.i, label %.loopexit.i.i633, !prof !151, !llvm.loop !1115

.loopexit.i.i633:                                 ; preds = %bb.ul, %bb.uk, %_ZN4llvm15SmallPtrSetImplIPNS_10BasicBlockEE5eraseES2_.exit.i
  %.lcssa28.sink.i.ph.i.i = phi ptr [ %i.emp, %bb.uk ], [ null, %_ZN4llvm15SmallPtrSetImplIPNS_10BasicBlockEE5eraseES2_.exit.i ], [ %i.enc, %bb.ul ]
  %i.enj = shl i32 %i.emb, 1
  %i.enk = and i32 %i.enj, -4
  %i.enl = add i32 %i.enk, 4
  %i.enm = mul i32 %.sink.i.i.i.i468.i, 3
  %.not.i.i469.i = icmp ult i32 %i.enl, %i.enm
  br i1 %.not.i.i469.i, label %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_10BasicBlockEPNS_4LoopELj16ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E22findBucketForInsertionIS3_EEPSA_RKT_SE_.exit.i.i, label %bb.um, !prof !81

bb.um:                                            ; preds = %.loopexit.i.i633
  %i.enn = shl i32 %.sink.i.i.i.i468.i, 1
  call void @_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_10BasicBlockEPNS_4LoopELj16ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %29, i32 noundef %i.enn), !noalias !1386
  %i.eno = load i32, ptr %29, align 8, !noalias !1387
  %i.enp = and i32 %i.eno, 1
  %.not.i.i.i475.i = icmp eq i32 %i.enp, 0        ; 3 uses
  %i.enq = load ptr, ptr %i.bwr, align 8, !noalias !1387
  %i.enr = load ptr, ptr %i.bws, align 8, !noalias !1387
  %i.ens = load i32, ptr %i.bwt, align 8, !noalias !1387
  %.sink2.i.i.i.i = select i1 %.not.i.i.i475.i, ptr %i.enq, ptr %i.bwr ; 5 uses
  %.sink1.i.i.i.i = select i1 %.not.i.i.i475.i, ptr %i.enr, ptr %i.bwn ; 5 uses
  %.sink.i.i.i.i = select i1 %.not.i.i.i475.i, i32 %i.ens, i32 16 ; 2 uses
  %i.ent = icmp ne i32 %.sink.i.i.i.i, 0
  call void @llvm.assume(i1 %i.ent)
  %i.enu = add i32 %.sink.i.i.i.i, -1             ; 2 uses
  %i.env = ptrtoint ptr %i.ell to i64
  %i.enw = mul i64 %i.env, -4658895280553007687   ; 2 uses
  %i.enx = lshr i64 %i.enw, 31
  %i.eny = xor i64 %i.enx, %i.enw
  %i.enz = trunc i64 %i.eny to i32
  %i.eoa = and i32 %i.enu, %i.enz                 ; 3 uses
  %i.eob = zext i32 %i.eoa to i64                 ; 2 uses
  %i.eoc = getelementptr inbounds nuw [16 x i8], ptr %.sink2.i.i.i.i, i64 %i.eob ; 2 uses
  %i.eod = lshr i64 %i.eob, 5
  %i.eoe = getelementptr inbounds nuw [4 x i8], ptr %.sink1.i.i.i.i, i64 %i.eod
  %i.eof = load i32, ptr %i.eoe, align 4, !tbaa !94, !noalias !1386
  %i.eog = and i32 %i.eoa, 31
  %i.eoh = lshr i32 %i.eof, %i.eog
  %i.eoi = trunc i32 %i.eoh to i1
  br i1 %i.eoi, label %.lr.ph.i476.i, label %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_10BasicBlockEPNS_4LoopELj16ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E22findBucketForInsertionIS3_EEPSA_RKT_SE_.exit.i.i, !prof !150

.lr.ph.i476.i:                                    ; preds = %bb.um, %bb.un
  %i.eoj = phi ptr [ %i.eop, %bb.un ], [ %i.eoc, %bb.um ] ; 2 uses
  %.024.i.i = phi i32 [ %i.eon, %bb.un ], [ %i.eoa, %bb.um ]
  %i.eok = load ptr, ptr %i.eoj, align 8, !tbaa !148, !noalias !1386
  %i.eol = icmp eq ptr %i.ell, %i.eok
  br i1 %i.eol, label %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_10BasicBlockEPNS_4LoopELj16ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E22findBucketForInsertionIS3_EEPSA_RKT_SE_.exit.i.i, label %bb.un, !prof !81

bb.un:                                            ; preds = %.lr.ph.i476.i
  %i.eom = add nuw i32 %.024.i.i, 1
  %i.eon = and i32 %i.eom, %i.enu                 ; 3 uses
  %i.eoo = zext i32 %i.eon to i64                 ; 2 uses
  %i.eop = getelementptr inbounds nuw [16 x i8], ptr %.sink2.i.i.i.i, i64 %i.eoo ; 2 uses
  %i.eoq = lshr i64 %i.eoo, 5
  %i.eor = getelementptr inbounds nuw [4 x i8], ptr %.sink1.i.i.i.i, i64 %i.eoq
  %i.eos = load i32, ptr %i.eor, align 4, !tbaa !94, !noalias !1386
  %i.eot = and i32 %i.eon, 31
  %i.eou = lshr i32 %i.eos, %i.eot
  %i.eov = trunc i32 %i.eou to i1
  br i1 %i.eov, label %.lr.ph.i476.i, label %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_10BasicBlockEPNS_4LoopELj16ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E22findBucketForInsertionIS3_EEPSA_RKT_SE_.exit.i.i, !prof !151, !llvm.loop !1115

_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_10BasicBlockEPNS_4LoopELj16ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E22findBucketForInsertionIS3_EEPSA_RKT_SE_.exit.i.i: ; preds = %bb.un, %.lr.ph.i476.i, %bb.um, %.loopexit.i.i633
  %.pre-phi758.i = phi ptr [ %.sink2.i.i.i.i466.i, %.loopexit.i.i633 ], [ %.sink2.i.i.i.i, %bb.um ], [ %.sink2.i.i.i.i, %.lr.ph.i476.i ], [ %.sink2.i.i.i.i, %bb.un ]
  %.pre-phi.i = phi ptr [ %.sink1.i.i.i.i467.i, %.loopexit.i.i633 ], [ %.sink1.i.i.i.i, %bb.um ], [ %.sink1.i.i.i.i, %.lr.ph.i476.i ], [ %.sink1.i.i.i.i, %bb.un ]
  %i.eow = phi ptr [ %.lcssa28.sink.i.ph.i.i, %.loopexit.i.i633 ], [ %i.eoc, %bb.um ], [ %i.eop, %bb.un ], [ %i.eoj, %.lr.ph.i476.i ] ; 3 uses
  %i.eox = ptrtoint ptr %i.eow to i64
  %i.eoy = ptrtoint ptr %.pre-phi758.i to i64
  %i.eoz = sub i64 %i.eox, %i.eoy
  %i.epa = ashr exact i64 %i.eoz, 4               ; 2 uses
  %i.epb = trunc i64 %i.epa to i32
  %i.epc = and i32 %i.epb, 31
  %i.epd = shl nuw i32 1, %i.epc
  %i.epe = lshr i64 %i.epa, 5
  %i.epf = getelementptr inbounds nuw [4 x i8], ptr %.pre-phi.i, i64 %i.epe ; 2 uses
  %i.epg = load i32, ptr %i.epf, align 4, !tbaa !94, !noalias !1386
  %i.eph = or i32 %i.epd, %i.epg
  store i32 %i.eph, ptr %i.epf, align 4, !tbaa !94, !noalias !1386
  %i.epi = load i32, ptr %29, align 8, !noalias !1386 ; 2 uses
  %96 = and i32 %i.epi, -2
  %i.epj = add i32 %96, 2
  %97 = and i32 %i.epi, 1
  %98 = or disjoint i32 %i.epj, %97
  store i32 %98, ptr %29, align 8, !noalias !1386
  store ptr %i.ell, ptr %i.eow, align 8, !tbaa !148, !noalias !1386
  %i.epk = getelementptr inbounds nuw i8, ptr %i.eow, i64 8
  store ptr %i.ekq, ptr %i.epk, align 8, !tbaa !70, !noalias !1386
  br label %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_10BasicBlockEPNS_4LoopELj16ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E24lookupOrInsertIntoBucketIS3_JS5_EEESt4pairIPSA_bEOT_DpOT0_.exit.i

_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_10BasicBlockEPNS_4LoopELj16ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E24lookupOrInsertIntoBucketIS3_JS5_EEESt4pairIPSA_bEOT_DpOT0_.exit.i: ; preds = %.lr.ph.i.i474.i, %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_10BasicBlockEPNS_4LoopELj16ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E22findBucketForInsertionIS3_EEPSA_RKT_SE_.exit.i.i
  %i.epl = load i32, ptr %i.bxe, align 8, !tbaa !69 ; 2 uses
  %i.epm = load i32, ptr %i.bxf, align 4, !tbaa !80
  %.not.i418.i = icmp ult i32 %i.epl, %i.epm
  br i1 %.not.i418.i, label %bb.up, label %bb.uo, !prof !81

bb.uo:                                            ; preds = %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_10BasicBlockEPNS_4LoopELj16ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E24lookupOrInsertIntoBucketIS3_JS5_EEESt4pairIPSA_bEOT_DpOT0_.exit.i
  call void @_ZN4llvm23SmallVectorTemplateBaseIPNS_10BasicBlockELb1EE15growAndPushBackES2_(ptr noundef nonnull align 8 dereferenceable(16) %33, ptr noundef %i.ell)
  br label %_ZN4llvm23SmallVectorTemplateBaseIPNS_10BasicBlockELb1EE9push_backES2_.exit419.i

bb.up:                                            ; preds = %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_10BasicBlockEPNS_4LoopELj16ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E24lookupOrInsertIntoBucketIS3_JS5_EEESt4pairIPSA_bEOT_DpOT0_.exit.i
  %i.epn = zext i32 %i.epl to i64
  %i.epo = load ptr, ptr %33, align 8, !tbaa !57
  %i.epp = getelementptr inbounds nuw [8 x i8], ptr %i.epo, i64 %i.epn
  store ptr %i.ell, ptr %i.epp, align 1
  %i.epq = load i32, ptr %i.bxe, align 8, !tbaa !69
  %i.epr = add i32 %i.epq, 1
  store i32 %i.epr, ptr %i.bxe, align 8, !tbaa !69
  br label %_ZN4llvm23SmallVectorTemplateBaseIPNS_10BasicBlockELb1EE9push_backES2_.exit419.i

_ZN4llvm23SmallVectorTemplateBaseIPNS_10BasicBlockELb1EE9push_backES2_.exit419.i: ; preds = %.critedge.i.i417.i, %bb.up, %bb.uo, %bb.ui, %bb.ug
  %i.eps = getelementptr inbounds nuw i8, ptr %.sroa.0514.0699.i, i64 8
  %.sroa.0514.0.i = load ptr, ptr %i.eps, align 8, !tbaa !163 ; 2 uses
  %.not618.i = icmp eq ptr %.sroa.0514.0.i, null
  br i1 %.not618.i, label %thread-pre-split.loopexit.i, label %.lr.ph701.i

thread-pre-split.loopexit.i:                      ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPNS_10BasicBlockELb1EE9push_backES2_.exit419.i
  %.pr600.pre.i = load i32, ptr %i.bxe, align 8, !tbaa !69
  br label %thread-pre-split.i

thread-pre-split.i:                               ; preds = %thread-pre-split.loopexit.i, %bb.uf, %_ZN4llvm23SmallVectorTemplateBaseIPNS_10BasicBlockELb1EE9push_backES2_.exit410.i
  %i.ept = phi i32 [ %i.ele, %_ZN4llvm23SmallVectorTemplateBaseIPNS_10BasicBlockELb1EE9push_backES2_.exit410.i ], [ %.pr600.pre.i, %thread-pre-split.loopexit.i ], [ %i.ele, %bb.uf ] ; 2 uses
  %.not.i420.i = icmp eq i32 %i.ept, 0
  br i1 %.not.i420.i, label %bb.uq, label %_ZN4llvm23SmallVectorTemplateBaseIPNS_10BasicBlockELb1EE9push_backES2_.exit410.i, !llvm.loop !1216

bb.uq:                                            ; preds = %thread-pre-split.i
  %i.epu = load i32, ptr %i.bxw, align 4, !tbaa !126
  %i.epv = icmp eq i32 %i.epu, 0
  br i1 %i.epv, label %.critedge5.i, label %.lr.ph702.i, !llvm.loop !1217

.critedge5.i:                                     ; preds = %bb.uq, %.lr.ph702.i, %"_ZN4llvm4sortIRNS_11SmallVectorIPNS_10BasicBlockELj4EEEZL16buildClonedLoopsRNS_4LoopENS_8ArrayRefIS3_EERKNS_8ValueMapIPKNS_5ValueENS_14WeakTrackingVHENS_14ValueMapConfigISD_NS_3sys10SmartMutexILb0EEEEEEERNS_8LoopInfoERNS_15SmallVectorImplIPS6_EEE3$_0EEvOT_T0_.exit.i"
  %i.epw = load ptr, ptr %i.bwu, align 8, !tbaa !57, !noalias !1388 ; 2 uses
  %i.epx = load ptr, ptr %28, align 8, !tbaa !57, !noalias !1388 ; 2 uses
  %i.epy = load i32, ptr %i.bww, align 8, !tbaa !69, !noalias !1388
  %i.epz = zext i32 %i.epy to i64
  %i.eqa = getelementptr inbounds nuw [8 x i8], ptr %i.epw, i64 %i.epz ; 3 uses
  %i.eqb = load i32, ptr %i.bwl, align 8, !tbaa !69, !noalias !1388
  %i.eqc = zext i32 %i.eqb to i64
  %i.eqd = getelementptr inbounds nuw [8 x i8], ptr %i.epx, i64 %i.eqc ; 2 uses
  br label %_ZN4llvm15concat_iteratorIKPNS_10BasicBlockEJPS3_S4_PS2_EEppEv.exit.i.outer.outer

_ZN4llvm15concat_iteratorIKPNS_10BasicBlockEJPS3_S4_PS2_EEppEv.exit.i.outer.outer: ; preds = %.critedge5.i, %bb.uv
  %.sroa.12486.0.idx.i.ph.ph = phi i64 [ 0, %.critedge5.i ], [ 8, %bb.uv ]
  %.sroa.7.0.i.ph.ph = phi ptr [ %i.epw, %.critedge5.i ], [ %i.eqa, %bb.uv ]
  %.sroa.0481.0.i.ph.ph = phi ptr [ %i.epx, %.critedge5.i ], [ %i.erw, %bb.uv ] ; 4 uses
  %i.eqe = icmp eq ptr %.sroa.0481.0.i.ph.ph, %i.eqd
  br label %_ZN4llvm15concat_iteratorIKPNS_10BasicBlockEJPS3_S4_PS2_EEppEv.exit.i.outer

_ZN4llvm15concat_iteratorIKPNS_10BasicBlockEJPS3_S4_PS2_EEppEv.exit.i.outer: ; preds = %_ZN4llvm15concat_iteratorIKPNS_10BasicBlockEJPS3_S4_PS2_EEppEv.exit.i.outer.outer, %bb.uw
  %.sroa.12486.0.idx.i.ph = phi i64 [ 8, %bb.uw ], [ %.sroa.12486.0.idx.i.ph.ph, %_ZN4llvm15concat_iteratorIKPNS_10BasicBlockEJPS3_S4_PS2_EEppEv.exit.i.outer.outer ]
  %.sroa.7.0.i.ph = phi ptr [ %i.erx, %bb.uw ], [ %.sroa.7.0.i.ph.ph, %_ZN4llvm15concat_iteratorIKPNS_10BasicBlockEJPS3_S4_PS2_EEppEv.exit.i.outer.outer ] ; 4 uses
  %i.eqf = icmp eq ptr %.sroa.7.0.i.ph, %i.eqa    ; 2 uses
  %i.eqg = select i1 %i.eqf, i1 %i.eqe, i1 false
  %spec.select.i.i.i.i.i635 = select i1 %i.eqf, ptr %.sroa.0481.0.i.ph.ph, ptr %.sroa.7.0.i.ph
  br label %_ZN4llvm15concat_iteratorIKPNS_10BasicBlockEJPS3_S4_PS2_EEppEv.exit.i

_ZN4llvm15concat_iteratorIKPNS_10BasicBlockEJPS3_S4_PS2_EEppEv.exit.i: ; preds = %_ZN4llvm15concat_iteratorIKPNS_10BasicBlockEJPS3_S4_PS2_EEppEv.exit.i.outer, %bb.ux
  %.sroa.12486.0.idx.i = phi i64 [ %.sroa.12486.0.add.i, %bb.ux ], [ %.sroa.12486.0.idx.i.ph, %_ZN4llvm15concat_iteratorIKPNS_10BasicBlockEJPS3_S4_PS2_EEppEv.exit.i.outer ] ; 3 uses
  %.sroa.12486.0.ptr.i = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.12486.0.idx.i
  %i.eqh = icmp eq i64 %.sroa.12486.0.idx.i, 8    ; 2 uses
  %.not3372 = xor i1 %i.eqh, true                 ; 2 uses
  %.not3373 = xor i1 %i.eqg, true
  %brmerge = select i1 %.not3372, i1 true, i1 %.not3373
  %.sroa.12486.0.ptr.i.mux = select i1 %.not3372, ptr %.sroa.12486.0.ptr.i, ptr %spec.select.i.i.i.i.i635
  br i1 %brmerge, label %_ZNK4llvm15concat_iteratorIKPNS_10BasicBlockEJPS3_S4_PS2_EEdeEv.exit.i, label %_ZNK4llvm20iterator_facade_baseINS_15concat_iteratorIKPNS_10BasicBlockEJPS4_S5_PS3_EEESt20forward_iterator_tagS4_lS5_RS4_EneERKS7_.exit.i

_ZNK4llvm20iterator_facade_baseINS_15concat_iteratorIKPNS_10BasicBlockEJPS4_S5_PS3_EEESt20forward_iterator_tagS4_lS5_RS4_EneERKS7_.exit.i: ; preds = %_ZN4llvm15concat_iteratorIKPNS_10BasicBlockEJPS3_S4_PS2_EEppEv.exit.i
  %i.eqi = load ptr, ptr %i.bxr, align 8, !tbaa !62 ; 2 uses
  %i.eqj = load ptr, ptr %i.bxs, align 8, !tbaa !62 ; 2 uses
  %.not620704.i = icmp eq ptr %i.eqi, %i.eqj
  br i1 %.not620704.i, label %._crit_edge707.i, label %.lr.ph706.i

_ZNK4llvm15concat_iteratorIKPNS_10BasicBlockEJPS3_S4_PS2_EEdeEv.exit.i: ; preds = %_ZN4llvm15concat_iteratorIKPNS_10BasicBlockEJPS3_S4_PS2_EEppEv.exit.i
  %i.eqk = load ptr, ptr %.sroa.12486.0.ptr.i.mux, align 8, !tbaa !148 ; 3 uses
  %i.eql = load i32, ptr %29, align 8, !noalias !1389
  %i.eqm = and i32 %i.eql, 1
  %.not.i.i.i.i421.i = icmp eq i32 %i.eqm, 0      ; 3 uses
  %i.eqn = load ptr, ptr %i.bwr, align 8, !noalias !1389
  %i.eqo = load ptr, ptr %i.bws, align 8, !noalias !1389
  %i.eqp = load i32, ptr %i.bwt, align 8, !noalias !1389
  %.sink2.i.i.i.i422.i = select i1 %.not.i.i.i.i421.i, ptr %i.eqn, ptr %i.bwr
  %.sink1.i.i.i.i423.i = select i1 %.not.i.i.i.i421.i, ptr %i.eqo, ptr %i.bwn ; 2 uses
  %.sink.i.i.i.i424.i = select i1 %.not.i.i.i.i421.i, i32 %i.eqp, i32 16 ; 2 uses
  %i.eqq = icmp eq i32 %.sink.i.i.i.i424.i, 0
  br i1 %i.eqq, label %_ZNK4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_10BasicBlockEPNS_4LoopELj16ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E6lookupEPKS2_.exit427.thread.i, label %bb.ur

bb.ur:                                            ; preds = %_ZNK4llvm15concat_iteratorIKPNS_10BasicBlockEJPS3_S4_PS2_EEdeEv.exit.i
  %i.eqr = add i32 %.sink.i.i.i.i424.i, -1        ; 2 uses
  %i.eqs = ptrtoint ptr %i.eqk to i64
  %i.eqt = mul i64 %i.eqs, -4658895280553007687   ; 2 uses
  %i.equ = lshr i64 %i.eqt, 31
  %i.eqv = xor i64 %i.equ, %i.eqt
  %i.eqw = trunc i64 %i.eqv to i32
  %i.eqx = and i32 %i.eqr, %i.eqw                 ; 3 uses
  %i.eqy = zext i32 %i.eqx to i64                 ; 2 uses
  %i.eqz = lshr i64 %i.eqy, 5
  %i.era = getelementptr inbounds nuw [4 x i8], ptr %.sink1.i.i.i.i423.i, i64 %i.eqz
  %i.erb = load i32, ptr %i.era, align 4, !tbaa !94
  %i.erc = and i32 %i.eqx, 31
  %i.erd = lshr i32 %i.erb, %i.erc
  %i.ere = trunc i32 %i.erd to i1
  br i1 %i.ere, label %.lr.ph.i.i425.i, label %_ZNK4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_10BasicBlockEPNS_4LoopELj16ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E6lookupEPKS2_.exit427.thread.i, !prof !150

.lr.ph.i.i425.i:                                  ; preds = %bb.ur, %bb.us
  %i.erf = phi i64 [ %i.erl, %bb.us ], [ %i.eqy, %bb.ur ]
  %.017.i.i426.i = phi i32 [ %i.erk, %bb.us ], [ %i.eqx, %bb.ur ]
  %i.erg = getelementptr inbounds nuw [16 x i8], ptr %.sink2.i.i.i.i422.i, i64 %i.erf ; 2 uses
  %i.erh = load ptr, ptr %i.erg, align 8, !tbaa !148
  %i.eri = icmp eq ptr %i.eqk, %i.erh
  br i1 %i.eri, label %_ZNK4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_10BasicBlockEPNS_4LoopELj16ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E6lookupEPKS2_.exit427.i, label %bb.us, !prof !81

bb.us:                                            ; preds = %.lr.ph.i.i425.i
  %i.erj = add nuw i32 %.017.i.i426.i, 1
  %i.erk = and i32 %i.erj, %i.eqr                 ; 3 uses
  %i.erl = zext i32 %i.erk to i64                 ; 2 uses
  %i.erm = lshr i64 %i.erl, 5
  %i.ern = getelementptr inbounds nuw [4 x i8], ptr %.sink1.i.i.i.i423.i, i64 %i.erm
  %i.ero = load i32, ptr %i.ern, align 4, !tbaa !94
  %i.erp = and i32 %i.erk, 31
  %i.erq = lshr i32 %i.ero, %i.erp
  %i.err = trunc i32 %i.erq to i1
  br i1 %i.err, label %.lr.ph.i.i425.i, label %_ZNK4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_10BasicBlockEPNS_4LoopELj16ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E6lookupEPKS2_.exit427.thread.i, !prof !151

_ZNK4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_10BasicBlockEPNS_4LoopELj16ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E6lookupEPKS2_.exit427.i: ; preds = %.lr.ph.i.i425.i
  %i.ers = getelementptr inbounds nuw i8, ptr %i.erg, i64 8
  %i.ert = load ptr, ptr %i.ers, align 8, !tbaa !70 ; 2 uses
  %.not160.i = icmp eq ptr %i.ert, null
  br i1 %.not160.i, label %_ZNK4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_10BasicBlockEPNS_4LoopELj16ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E6lookupEPKS2_.exit427.thread.i, label %bb.ut

bb.ut:                                            ; preds = %_ZNK4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_10BasicBlockEPNS_4LoopELj16ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E6lookupEPKS2_.exit427.i
  call void @_ZN4llvm8LoopBaseINS_10BasicBlockENS_4LoopEE19addBasicBlockToLoopEPS1_RNS_12LoopInfoBaseIS1_S2_EE(ptr noundef nonnull align 8 dereferenceable(144) %i.ert, ptr noundef %i.eqk, ptr noundef nonnull align 8 dereferenceable(184) %6) #24
  br label %_ZNK4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_10BasicBlockEPNS_4LoopELj16ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E6lookupEPKS2_.exit427.thread.i

_ZNK4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_10BasicBlockEPNS_4LoopELj16ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E6lookupEPKS2_.exit427.thread.i: ; preds = %bb.us, %bb.ut, %_ZNK4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_10BasicBlockEPNS_4LoopELj16ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E6lookupEPKS2_.exit427.i, %bb.ur, %_ZNK4llvm15concat_iteratorIKPNS_10BasicBlockEJPS3_S4_PS2_EEdeEv.exit.i
  br i1 %i.eqh, label %bb.uu, label %bb.ux

bb.uu:                                            ; preds = %_ZNK4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_10BasicBlockEPNS_4LoopELj16ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E6lookupEPKS2_.exit427.thread.i
  %i.eru = icmp eq ptr %.sroa.7.0.i.ph, %i.eqa
  br i1 %i.eru, label %bb.uv, label %bb.uw

bb.uv:                                            ; preds = %bb.uu
  %i.erv = icmp ne ptr %.sroa.0481.0.i.ph.ph, %i.eqd
  call void @llvm.assume(i1 %i.erv)
  %i.erw = getelementptr inbounds nuw i8, ptr %.sroa.0481.0.i.ph.ph, i64 8
  br label %_ZN4llvm15concat_iteratorIKPNS_10BasicBlockEJPS3_S4_PS2_EEppEv.exit.i.outer.outer

bb.uw:                                            ; preds = %bb.uu
  %i.erx = getelementptr inbounds nuw i8, ptr %.sroa.7.0.i.ph, i64 8
  br label %_ZN4llvm15concat_iteratorIKPNS_10BasicBlockEJPS3_S4_PS2_EEppEv.exit.i.outer

bb.ux:                                            ; preds = %_ZNK4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_10BasicBlockEPNS_4LoopELj16ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E6lookupEPKS2_.exit427.thread.i
  %.sroa.12486.0.add.i = add nuw nsw i64 %.sroa.12486.0.idx.i, 8
  br label %_ZN4llvm15concat_iteratorIKPNS_10BasicBlockEJPS3_S4_PS2_EEppEv.exit.i

._crit_edge707.i:                                 ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPNS_4LoopELb1EE9push_backES2_.exit461.i, %_ZNK4llvm20iterator_facade_baseINS_15concat_iteratorIKPNS_10BasicBlockEJPS4_S5_PS3_EEESt20forward_iterator_tagS4_lS5_RS4_EneERKS7_.exit.i
  %i.ery = load ptr, ptr %38, align 8, !tbaa !57  ; 2 uses
  %i.erz = icmp eq ptr %i.ery, %i.bxy
  br i1 %i.erz, label %_ZN4llvm11SmallVectorIPNS_10BasicBlockELj4EED2Ev.exit.i, label %bb.uy

bb.uy:                                            ; preds = %._crit_edge707.i
  call void @free(ptr noundef %i.ery) #24
  br label %_ZN4llvm11SmallVectorIPNS_10BasicBlockELj4EED2Ev.exit.i

_ZN4llvm11SmallVectorIPNS_10BasicBlockELj4EED2Ev.exit.i: ; preds = %bb.uy, %._crit_edge707.i
  call void @llvm.lifetime.end.p0(ptr nonnull %38) #24
  %i.esa = load i8, ptr %i.bxx, align 8, !tbaa !52, !range !53, !noundef !54
  %i.esb = trunc nuw i8 %i.esa to i1
  br i1 %i.esb, label %_ZN4llvm19SmallPtrSetImplBaseD2Ev.exit.i636, label %bb.uz

bb.uz:                                            ; preds = %_ZN4llvm11SmallVectorIPNS_10BasicBlockELj4EED2Ev.exit.i
  %i.esc = load ptr, ptr %37, align 8, !tbaa !55
  call void @free(ptr noundef %i.esc) #24
  br label %_ZN4llvm19SmallPtrSetImplBaseD2Ev.exit.i636

_ZN4llvm19SmallPtrSetImplBaseD2Ev.exit.i636:      ; preds = %bb.uz, %_ZN4llvm11SmallVectorIPNS_10BasicBlockELj4EED2Ev.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %37) #24
  %i.esd = load i8, ptr %i.bxj, align 8, !tbaa !52, !range !53, !noundef !54
  %i.ese = trunc nuw i8 %i.esd to i1
  br i1 %i.ese, label %_ZN4llvm19SmallPtrSetImplBaseD2Ev.exit428.i, label %bb.va

bb.va:                                            ; preds = %_ZN4llvm19SmallPtrSetImplBaseD2Ev.exit.i636
  %i.esf = load ptr, ptr %34, align 8, !tbaa !55
  call void @free(ptr noundef %i.esf) #24
  br label %_ZN4llvm19SmallPtrSetImplBaseD2Ev.exit428.i

end_hunk_6
begin_hunk_7_@_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_5ValueENS_11SmallVectorIN12_GLOBAL__N_111CompareDescELj4EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S7_EEEES3_S7_S9_SC_E8moveFromERSD_:bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.val.i.i.i, ptr align 8 %.val34.i.i.i, i64 %gepdiff.i.i.i, i1 false)
  br label %_ZN4llvm23SmallVectorTemplateBaseIN12_GLOBAL__N_111CompareDescELb1EE18uninitialized_moveIPS2_S5_EEvT_S6_T0_.exit.i.i.i

_ZN4llvm23SmallVectorTemplateBaseIN12_GLOBAL__N_111CompareDescELb1EE18uninitialized_moveIPS2_S5_EEvT_S6_T0_.exit.i.i.i: ; preds = %_ZSt4moveIPN12_GLOBAL__N_111CompareDescES2_ET0_T_S4_S3_.exit46.i.thread.i.i, %_ZSt4moveIPN12_GLOBAL__N_111CompareDescES2_ET0_T_S4_S3_.exit46.i.i.i
  store i32 %i.at, ptr %i.aq, align 8, !tbaa !69
  %.pre.pre = load ptr, ptr %i.ao, align 8, !tbaa !57
  br label %_ZN4llvm15SmallVectorImplIN12_GLOBAL__N_111CompareDescEEaSEOS3_.exit.sink.split.i.i

_ZN4llvm15SmallVectorImplIN12_GLOBAL__N_111CompareDescEEaSEOS3_.exit.sink.split.i.i: ; preds = %_ZN4llvm23SmallVectorTemplateBaseIN12_GLOBAL__N_111CompareDescELb1EE18uninitialized_moveIPS2_S5_EEvT_S6_T0_.exit.i.i.i, %_ZN4llvm15SmallVectorImplIN12_GLOBAL__N_111CompareDescEE12assignRemoteEOS3_.exit.i.i.i
  %.pre = phi ptr [ %.pre.pre, %_ZN4llvm23SmallVectorTemplateBaseIN12_GLOBAL__N_111CompareDescELb1EE18uninitialized_moveIPS2_S5_EEvT_S6_T0_.exit.i.i.i ], [ %i.av, %_ZN4llvm15SmallVectorImplIN12_GLOBAL__N_111CompareDescEE12assignRemoteEOS3_.exit.i.i.i ]
  store i32 0, ptr %i.as, align 8, !tbaa !69
  br label %_ZN4llvm11SmallVectorIN12_GLOBAL__N_111CompareDescELj4EEC2EOS3_.exit.i

_ZN4llvm11SmallVectorIN12_GLOBAL__N_111CompareDescELj4EEC2EOS3_.exit.i: ; preds = %_ZN4llvm15SmallVectorImplIN12_GLOBAL__N_111CompareDescEEaSEOS3_.exit.sink.split.i.i, %._crit_edge.i
  %i.bc = phi ptr [ %.pre, %_ZN4llvm15SmallVectorImplIN12_GLOBAL__N_111CompareDescEEaSEOS3_.exit.sink.split.i.i ], [ %.pre27, %._crit_edge.i ] ; 2 uses
  %i.bd = shl nuw i32 1, %.lcssa.i
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %.val9, i64 %.lcssa11.i ; 2 uses
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !94
  %i.bg = or i32 %i.bf, %i.bd
  store i32 %i.bg, ptr %i.be, align 4, !tbaa !94
  %i.bh = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  %i.bi = icmp eq ptr %i.bc, %i.bh
  br i1 %i.bi, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_5ValueENS_11SmallVectorIN12_GLOBAL__N_111CompareDescELj4EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S7_EEEES3_S7_S9_SC_E8moveFromERSD_ENKUljE_clEj.exit, label %bb.e

bb.e:                                             ; preds = %_ZN4llvm11SmallVectorIN12_GLOBAL__N_111CompareDescELj4EEC2EOS3_.exit.i
  tail call void @free(ptr noundef %i.bc) #24
  br label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_5ValueENS_11SmallVectorIN12_GLOBAL__N_111CompareDescELj4EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S7_EEEES3_S7_S9_SC_E8moveFromERSD_ENKUljE_clEj.exit

_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_5ValueENS_11SmallVectorIN12_GLOBAL__N_111CompareDescELj4EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S7_EEEES3_S7_S9_SC_E8moveFromERSD_ENKUljE_clEj.exit: ; preds = %_ZN4llvm11SmallVectorIN12_GLOBAL__N_111CompareDescELj4EEC2EOS3_.exit.i, %bb.e
  %i.bj = add i32 %.0.i19, -1
  %i.bk = and i32 %i.bj, %.0.i19                  ; 2 uses
  %.not11.i = icmp eq i32 %i.bk, 0
  br i1 %.not11.i, label %._crit_edge, label %bb.b, !llvm.loop !1422

._crit_edge:                                      ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_5ValueENS_11SmallVectorIN12_GLOBAL__N_111CompareDescELj4EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S7_EEEES3_S7_S9_SC_E8moveFromERSD_ENKUljE_clEj.exit, %.lr.ph23
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not.i = icmp eq i64 %indvars.iv.next, %i.h
  br i1 %.not.i, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_5ValueENS_11SmallVectorIN12_GLOBAL__N_111CompareDescELj4EEENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_SA_EEEES6_SA_SC_SF_E8moveFromERSG_EUljE_EEvPKjjT_.exit.loopexit, label %.lr.ph23, !llvm.loop !1423

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_5ValueENS_11SmallVectorIN12_GLOBAL__N_111CompareDescELj4EEENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_SA_EEEES6_SA_SC_SF_E8moveFromERSG_EUljE_EEvPKjjT_.exit.loopexit: ; preds = %._crit_edge
  %.pre28 = load i32, ptr %i.b, align 4, !tbaa !282
  br label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_5ValueENS_11SmallVectorIN12_GLOBAL__N_111CompareDescELj4EEENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_SA_EEEES6_SA_SC_SF_E8moveFromERSG_EUljE_EEvPKjjT_.exit

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_5ValueENS_11SmallVectorIN12_GLOBAL__N_111CompareDescELj4EEENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_SA_EEEES6_SA_SC_SF_E8moveFromERSG_EUljE_EEvPKjjT_.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_5ValueENS_11SmallVectorIN12_GLOBAL__N_111CompareDescELj4EEENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_SA_EEEES6_SA_SC_SF_E8moveFromERSG_EUljE_EEvPKjjT_.exit.loopexit, %bb.a
  %i.bl = phi i32 [ %.pre28, %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_5ValueENS_11SmallVectorIN12_GLOBAL__N_111CompareDescELj4EEENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_SA_EEEES6_SA_SC_SF_E8moveFromERSG_EUljE_EEvPKjjT_.exit.loopexit ], [ %.val, %bb.a ] ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val12 = load i32, ptr %i.bm, align 8, !tbaa !283
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %.val12, ptr %i.bn, align 8, !tbaa !283
  %i.bo = icmp eq i32 %i.bl, 0
  br i1 %i.bo, label %_ZN4llvm8DenseMapIPNS_5ValueENS_11SmallVectorIN12_GLOBAL__N_111CompareDescELj4EEENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S6_EEE4killEv.exit, label %bb.f

bb.f:                                             ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_5ValueENS_11SmallVectorIN12_GLOBAL__N_111CompareDescELj4EEENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_SA_EEEES6_SA_SC_SF_E8moveFromERSG_EUljE_EEvPKjjT_.exit
  %i.bp = load ptr, ptr %1, align 8, !tbaa !280
  %i.bq = zext i32 %i.bl to i64                   ; 2 uses
  %i.br = mul nuw nsw i64 %i.bq, 120
  %i.bs = add nuw nsw i64 %i.bq, 31
  %i.bt = lshr i64 %i.bs, 3
  %i.bu = and i64 %i.bt, 1073741820
  %i.bv = add nuw nsw i64 %i.bu, %i.br
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.bp, i64 noundef %i.bv, i64 noundef 8) #24
  store i32 0, ptr %i.b, align 4, !tbaa !282
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 16, i1 false)
  br label %_ZN4llvm8DenseMapIPNS_5ValueENS_11SmallVectorIN12_GLOBAL__N_111CompareDescELj4EEENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S6_EEE4killEv.exit

_ZN4llvm8DenseMapIPNS_5ValueENS_11SmallVectorIN12_GLOBAL__N_111CompareDescELj4EEENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S6_EEE4killEv.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_5ValueENS_11SmallVectorIN12_GLOBAL__N_111CompareDescELj4EEENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_SA_EEEES6_SA_SC_SF_E8moveFromERSG_EUljE_EEvPKjjT_.exit, %bb.f
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define internal fastcc void @_ZN4llvm23SmallVectorTemplateBaseIN12_GLOBAL__N_111CompareDescELb1EE15growAndPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #6 align 2 {
bb.a:
  %.sroa.0.0.copyload = load <3 x ptr>, ptr %1, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !69
  %i.c = zext i32 %i.b to i64
  %i.d = add nuw nsw i64 %i.c, 1
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.e, i64 noundef %i.d, i64 noundef 24) #24
  %.val = load ptr, ptr %0, align 8, !tbaa !57
  %.val2 = load i32, ptr %i.a, align 8, !tbaa !69
  %i.f = zext i32 %.val2 to i64
  %i.g = getelementptr inbounds nuw [24 x i8], ptr %.val, i64 %i.f
  store <3 x ptr> %.sroa.0.0.copyload, ptr %i.g, align 1
  %i.h = load i32, ptr %i.a, align 8, !tbaa !69
  %i.i = add i32 %i.h, 1
  store i32 %i.i, ptr %i.a, align 8, !tbaa !69
  ret void
}

declare noundef i32 @_ZN4llvm7CmpInst21getNonStrictPredicateENS0_9PredicateE(i32 noundef) local_unnamed_addr #4

declare void @_ZN4llvm11CodeMetrics22collectEphemeralValuesEPKNS_4LoopEPNS_15AssumptionCacheERNS_15SmallPtrSetImplIPKNS_5ValueEEE(ptr noundef, ptr noundef, ptr noundef nonnull align 8 dereferenceable(17)) local_unnamed_addr #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.smul.with.overflow.i64(i64, i64) #15

declare { i64, i32 } @_ZNK4llvm19TargetTransformInfo18getInstructionCostEPKNS_4UserENS_8ArrayRefIPKNS_5ValueEEENS0_14TargetCostKindE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, ptr, i64, i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_10BasicBlockENS_15InstructionCostELj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E24lookupOrInsertIntoBucketIRKS3_JEEESt4pairIPS9_bEOT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = load i32, ptr %0, align 8, !noalias !1428 ; 2 uses
  %i.c = and i32 %i.b, 1                          ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.c, 0               ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.e = load ptr, ptr %i.d, align 8, !noalias !1428 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !noalias !1428 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.i = load i32, ptr %i.h, align 8, !noalias !1428
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %.sink2.i.i.i = select i1 %.not.i.i.i, ptr %i.e, ptr %i.d ; 2 uses
  %.sink1.i.i.i = select i1 %.not.i.i.i, ptr %i.g, ptr %i.j ; 2 uses
  %.sink.i.i.i = select i1 %.not.i.i.i, i32 %i.i, i32 4 ; 4 uses
  %i.k = icmp eq i32 %.sink.i.i.i, 0
  br i1 %i.k, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = add i32 %.sink.i.i.i, -1                 ; 2 uses
  %i.m = load ptr, ptr %1, align 8, !tbaa !148    ; 2 uses
  %i.n = ptrtoint ptr %i.m to i64
  %i.o = mul i64 %i.n, -4658895280553007687       ; 2 uses
  %i.p = lshr i64 %i.o, 31
  %i.q = xor i64 %i.p, %i.o
  %i.r = trunc i64 %i.q to i32
  %i.s = and i32 %i.l, %i.r                       ; 3 uses
  %i.t = zext i32 %i.s to i64                     ; 2 uses
  %i.u = getelementptr inbounds nuw [24 x i8], ptr %.sink2.i.i.i, i64 %i.t ; 2 uses
  %i.v = lshr i64 %i.t, 5
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %.sink1.i.i.i, i64 %i.v
  %i.x = load i32, ptr %i.w, align 4, !tbaa !94
  %i.y = and i32 %i.s, 31
  %i.z = lshr i32 %i.x, %i.y
  %i.aa = trunc i32 %i.z to i1
  br i1 %i.aa, label %.lr.ph.i, label %.loopexit, !prof !150

.lr.ph.i:                                         ; preds = %bb.b, %bb.c
  %i.ab = phi ptr [ %i.ah, %bb.c ], [ %i.u, %bb.b ] ; 2 uses
  %.024.i = phi i32 [ %i.af, %bb.c ], [ %i.s, %bb.b ]
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !148
  %i.ad = icmp eq ptr %i.m, %i.ac
  br i1 %i.ad, label %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_10BasicBlockENS_15InstructionCostELj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E15LookupBucketForIS3_EEbRKT_RPS9_.exit, label %bb.c, !prof !81

bb.c:                                             ; preds = %.lr.ph.i
  %i.ae = add nuw i32 %.024.i, 1
  %i.af = and i32 %i.ae, %i.l                     ; 3 uses
  %i.ag = zext i32 %i.af to i64                   ; 2 uses
  %i.ah = getelementptr inbounds nuw [24 x i8], ptr %.sink2.i.i.i, i64 %i.ag ; 2 uses
  %i.ai = lshr i64 %i.ag, 5
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %.sink1.i.i.i, i64 %i.ai
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !94
  %i.al = and i32 %i.af, 31
  %i.am = lshr i32 %i.ak, %i.al
  %i.an = trunc i32 %i.am to i1
  br i1 %i.an, label %.lr.ph.i, label %.loopexit, !prof !151, !llvm.loop !27

.loopexit:                                        ; preds = %bb.c, %bb.a, %bb.b
  %.lcssa28.sink.i.ph = phi ptr [ %i.u, %bb.b ], [ null, %bb.a ], [ %i.ah, %bb.c ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %.lcssa28.sink.i.ph, ptr %i.a, align 8, !tbaa !428
  %i.ao = shl i32 %i.b, 1
  %i.ap = and i32 %i.ao, -4
  %i.aq = add i32 %i.ap, 4
  %i.ar = mul i32 %.sink.i.i.i, 3
  %.not.i = icmp ult i32 %i.aq, %i.ar
  br i1 %.not.i, label %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_10BasicBlockENS_15InstructionCostELj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E22findBucketForInsertionIS3_EEPS9_RKT_SD_.exit, label %bb.d, !prof !81

bb.d:                                             ; preds = %.loopexit
  %i.as = shl i32 %.sink.i.i.i, 1
  tail call void @_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_10BasicBlockENS_15InstructionCostELj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %i.as)
  %i.at = call noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_10BasicBlockENS_15InstructionCostELj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E15LookupBucketForIS3_EEbRKT_RPS9_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 0 uses
  %.pre.i = load i32, ptr %0, align 8
  %.pre5.i = load ptr, ptr %i.a, align 8, !tbaa !428
  %.pre6.i = and i32 %.pre.i, 1
  %.pre = load ptr, ptr %i.f, align 8
  %.pre16 = load ptr, ptr %i.d, align 8
  br label %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_10BasicBlockENS_15InstructionCostELj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E22findBucketForInsertionIS3_EEPS9_RKT_SD_.exit

_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_10BasicBlockENS_15InstructionCostELj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E22findBucketForInsertionIS3_EEPS9_RKT_SD_.exit: ; preds = %.loopexit, %bb.d
  %i.au = phi ptr [ %.pre16, %bb.d ], [ %i.e, %.loopexit ]
  %i.av = phi ptr [ %.pre, %bb.d ], [ %i.g, %.loopexit ]
  %.pre-phi.i = phi i32 [ %.pre6.i, %bb.d ], [ %i.c, %.loopexit ]
  %i.aw = phi ptr [ %.pre5.i, %bb.d ], [ %.lcssa28.sink.i.ph, %.loopexit ] ; 4 uses
  %.not.i.i.i.i = icmp eq i32 %.pre-phi.i, 0      ; 2 uses
  %i.ax = select i1 %.not.i.i.i.i, ptr %i.av, ptr %i.j
  %i.ay = select i1 %.not.i.i.i.i, ptr %i.au, ptr %i.d
  %i.az = ptrtoint ptr %i.aw to i64
  %i.ba = ptrtoint ptr %i.ay to i64
  %i.bb = sub i64 %i.az, %i.ba
  %i.bc = sdiv exact i64 %i.bb, 24                ; 2 uses
  %i.bd = trunc i64 %i.bc to i32
  %i.be = and i32 %i.bd, 31
  %i.bf = shl nuw i32 1, %i.be
  %i.bg = lshr i64 %i.bc, 5
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %i.ax, i64 %i.bg ; 2 uses
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !94
  %i.bj = or i32 %i.bf, %i.bi
  store i32 %i.bj, ptr %i.bh, align 4, !tbaa !94
  %i.bk = load i32, ptr %0, align 8               ; 2 uses
  %2 = and i32 %i.bk, -2
  %i.bl = add i32 %2, 2
  %3 = and i32 %i.bk, 1
  %4 = or disjoint i32 %i.bl, %3
  store i32 %4, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.bm = load ptr, ptr %1, align 8, !tbaa !148
  store ptr %i.bm, ptr %i.aw, align 8, !tbaa !148
  %i.bn = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bn, i8 0, i64 16, i1 false)
  br label %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_10BasicBlockENS_15InstructionCostELj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E15LookupBucketForIS3_EEbRKT_RPS9_.exit

_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_10BasicBlockENS_15InstructionCostELj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E15LookupBucketForIS3_EEbRKT_RPS9_.exit: ; preds = %.lr.ph.i, %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_10BasicBlockENS_15InstructionCostELj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E22findBucketForInsertionIS3_EEPS9_RKT_SD_.exit
  %.sroa.0.0 = phi ptr [ %i.aw, %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_10BasicBlockENS_15InstructionCostELj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E22findBucketForInsertionIS3_EEPS9_RKT_SD_.exit ], [ %i.ab, %.lr.ph.i ]
  %.sroa.3.0 = phi i8 [ 1, %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_10BasicBlockENS_15InstructionCostELj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E22findBucketForInsertionIS3_EEPS9_RKT_SD_.exit ], [ 0, %.lr.ph.i ]
  %.fca.0.insert = insertvalue { ptr, i8 } poison, ptr %.sroa.0.0, 0
  %.fca.1.insert = insertvalue { ptr, i8 } %.fca.0.insert, i8 %.sroa.3.0, 1
  ret { ptr, i8 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_10BasicBlockENS_15InstructionCostELj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E15LookupBucketForIS3_EEbRKT_RPS9_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = load i32, ptr %0, align 8, !noalias !1433
  %i.b = and i32 %i.a, 1
  %.not.i.i = icmp eq i32 %i.b, 0                 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !noalias !1433
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !noalias !1433
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.h = load i32, ptr %i.g, align 8, !noalias !1433
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 104
  %.sink2.i.i = select i1 %.not.i.i, ptr %i.d, ptr %i.c ; 2 uses
  %.sink1.i.i = select i1 %.not.i.i, ptr %i.f, ptr %i.i ; 2 uses
  %.sink.i.i = select i1 %.not.i.i, i32 %i.h, i32 4 ; 2 uses
  %i.j = icmp eq i32 %.sink.i.i, 0
  br i1 %i.j, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = add i32 %.sink.i.i, -1                   ; 2 uses
  %i.l = load ptr, ptr %1, align 8, !tbaa !148    ; 2 uses
  %i.m = ptrtoint ptr %i.l to i64
  %i.n = mul i64 %i.m, -4658895280553007687       ; 2 uses
  %i.o = lshr i64 %i.n, 31
  %i.p = xor i64 %i.o, %i.n
  %i.q = trunc i64 %i.p to i32
  %i.r = and i32 %i.k, %i.q                       ; 3 uses
  %i.s = zext i32 %i.r to i64                     ; 2 uses
  %i.t = getelementptr inbounds nuw [24 x i8], ptr %.sink2.i.i, i64 %i.s ; 2 uses
  %i.u = lshr i64 %i.s, 5
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %.sink1.i.i, i64 %i.u
  %i.w = load i32, ptr %i.v, align 4, !tbaa !94
  %i.x = and i32 %i.r, 31
  %i.y = lshr i32 %i.w, %i.x
  %i.z = trunc i32 %i.y to i1
  br i1 %i.z, label %.lr.ph, label %.thread, !prof !150

.lr.ph:                                           ; preds = %bb.b, %bb.c
  %i.aa = phi ptr [ %i.ag, %bb.c ], [ %i.t, %bb.b ] ; 2 uses
  %.024 = phi i32 [ %i.ae, %bb.c ], [ %i.r, %bb.b ]
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !148
  %i.ac = icmp eq ptr %i.l, %i.ab                 ; 3 uses
  br i1 %i.ac, label %.thread, label %bb.c, !prof !81

bb.c:                                             ; preds = %.lr.ph
  %i.ad = add nuw i32 %.024, 1
  %i.ae = and i32 %i.ad, %i.k                     ; 3 uses
  %i.af = zext i32 %i.ae to i64                   ; 2 uses
  %i.ag = getelementptr inbounds nuw [24 x i8], ptr %.sink2.i.i, i64 %i.af ; 2 uses
  %i.ah = lshr i64 %i.af, 5
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %.sink1.i.i, i64 %i.ah
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !94
  %i.ak = and i32 %i.ae, 31
  %i.al = lshr i32 %i.aj, %i.ak
  %i.am = trunc i32 %i.al to i1
  br i1 %i.am, label %.lr.ph, label %.thread, !prof !151, !llvm.loop !27

.thread:                                          ; preds = %.lr.ph, %bb.c, %bb.b, %bb.a
  %.lcssa28.sink = phi ptr [ %i.t, %bb.b ], [ null, %bb.a ], [ %i.ag, %bb.c ], [ %i.aa, %.lr.ph ]
  %.2 = phi i1 [ false, %bb.b ], [ false, %bb.a ], [ %i.ac, %bb.c ], [ %i.ac, %.lr.ph ]
  store ptr %.lcssa28.sink, ptr %2, align 8, !tbaa !428
  ret i1 %.2
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_10BasicBlockENS_15InstructionCostELj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %1) local_unnamed_addr #6 comdat align 2 {
bb.a:
  %2 = alloca %"class.llvm::SmallDenseMap.518", align 8 ; 16 uses
  %i.a = icmp ult i32 %1, 5                       ; 2 uses
  br i1 %i.a, label %_ZN4llvm13SmallDenseMapIPNS_10BasicBlockENS_15InstructionCostELj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S3_EEE17roundUpNumBucketsEj.exit.thread, label %_ZN4llvm13SmallDenseMapIPNS_10BasicBlockENS_15InstructionCostELj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S3_EEE17roundUpNumBucketsEj.exit

_ZN4llvm13SmallDenseMapIPNS_10BasicBlockENS_15InstructionCostELj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S3_EEE17roundUpNumBucketsEj.exit.thread: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 104
  br label %_ZN4llvm13SmallDenseMapIPNS_10BasicBlockENS_15InstructionCostELj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S3_EEEC2EjNS_12DenseMapBaseIS9_S2_S3_S5_S8_E16ExactBucketCountE.exit

_ZN4llvm13SmallDenseMapIPNS_10BasicBlockENS_15InstructionCostELj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S3_EEE17roundUpNumBucketsEj.exit: ; preds = %bb.a
  %i.c = add i32 %1, -1
  %i.d = zext i32 %i.c to i64                     ; 2 uses
  %i.e = lshr i64 %i.d, 1
  %i.f = or i64 %i.e, %i.d                        ; 2 uses
  %i.g = lshr i64 %i.f, 2
  %i.h = or i64 %i.g, %i.f                        ; 2 uses
  %i.i = lshr i64 %i.h, 4
  %i.j = or i64 %i.i, %i.h                        ; 2 uses
  %i.k = lshr i64 %i.j, 8
  %i.l = or i64 %i.k, %i.j                        ; 2 uses
  %i.m = lshr i64 %i.l, 16
  %i.n = or i64 %i.m, %i.l
  %i.o = trunc nuw i64 %i.n to i32
  %i.p = add i32 %i.o, 1
  %.sroa.speculated.i = tail call i32 @llvm.umax.i32(i32 %i.p, i32 64) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  %i.q = zext i32 %.sroa.speculated.i to i64      ; 2 uses
  %i.r = mul nuw nsw i64 %i.q, 24                 ; 2 uses
  %i.s = add nuw nsw i64 %i.q, 31
  %i.t = lshr i64 %i.s, 3
  %i.u = and i64 %i.t, 1073741820                 ; 2 uses
  %i.v = add nuw nsw i64 %i.u, %i.r
  %i.w = tail call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef %i.v, i64 noundef 8) #24 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %i.w, ptr %i.x, align 8, !tbaa !202
  %i.y = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.r ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 16
  store ptr %i.y, ptr %i.z, align 8, !tbaa !202
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 24
  store i32 %.sroa.speculated.i, ptr %i.aa, align 8, !tbaa !202
  br label %_ZN4llvm13SmallDenseMapIPNS_10BasicBlockENS_15InstructionCostELj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S3_EEEC2EjNS_12DenseMapBaseIS9_S2_S3_S5_S8_E16ExactBucketCountE.exit

_ZN4llvm13SmallDenseMapIPNS_10BasicBlockENS_15InstructionCostELj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S3_EEEC2EjNS_12DenseMapBaseIS9_S2_S3_S5_S8_E16ExactBucketCountE.exit: ; preds = %_ZN4llvm13SmallDenseMapIPNS_10BasicBlockENS_15InstructionCostELj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S3_EEE17roundUpNumBucketsEj.exit.thread, %_ZN4llvm13SmallDenseMapIPNS_10BasicBlockENS_15InstructionCostELj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S3_EEE17roundUpNumBucketsEj.exit
  %.0.i4 = phi i32 [ 4, %_ZN4llvm13SmallDenseMapIPNS_10BasicBlockENS_15InstructionCostELj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S3_EEE17roundUpNumBucketsEj.exit.thread ], [ %.sroa.speculated.i, %_ZN4llvm13SmallDenseMapIPNS_10BasicBlockENS_15InstructionCostELj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S3_EEE17roundUpNumBucketsEj.exit ] ; 3 uses
  %.sink.i = phi i32 [ 1, %_ZN4llvm13SmallDenseMapIPNS_10BasicBlockENS_15InstructionCostELj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S3_EEE17roundUpNumBucketsEj.exit.thread ], [ 0, %_ZN4llvm13SmallDenseMapIPNS_10BasicBlockENS_15InstructionCostELj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S3_EEE17roundUpNumBucketsEj.exit ]
  %i.ab = phi i64 [ 4, %_ZN4llvm13SmallDenseMapIPNS_10BasicBlockENS_15InstructionCostELj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S3_EEE17roundUpNumBucketsEj.exit.thread ], [ %i.u, %_ZN4llvm13SmallDenseMapIPNS_10BasicBlockENS_15InstructionCostELj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S3_EEE17roundUpNumBucketsEj.exit ]
  %i.ac = phi ptr [ %i.b, %_ZN4llvm13SmallDenseMapIPNS_10BasicBlockENS_15InstructionCostELj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S3_EEE17roundUpNumBucketsEj.exit.thread ], [ %i.y, %_ZN4llvm13SmallDenseMapIPNS_10BasicBlockENS_15InstructionCostELj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S3_EEE17roundUpNumBucketsEj.exit ]
  store i32 %.sink.i, ptr %2, align 8
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.ac, i8 0, i64 %i.ab, i1 false)
  call void @_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_10BasicBlockENS_15InstructionCostELj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E8moveFromERSA_(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(112) %0)
  %i.ad = load i32, ptr %2, align 8               ; 3 uses
  %i.ae = and i32 %i.ad, 1
  %.not.i = icmp eq i32 %i.ae, 0
  br i1 %.not.i, label %_ZN4llvm13SmallDenseMapIPNS_10BasicBlockENS_15InstructionCostELj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S3_EEE13maybeMoveFastEOS9_.exit.thread, label %_ZN4llvm13SmallDenseMapIPNS_10BasicBlockENS_15InstructionCostELj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S3_EEE13maybeMoveFastEOS9_.exit

_ZN4llvm13SmallDenseMapIPNS_10BasicBlockENS_15InstructionCostELj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S3_EEE13maybeMoveFastEOS9_.exit.thread: ; preds = %_ZN4llvm13SmallDenseMapIPNS_10BasicBlockENS_15InstructionCostELj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S3_EEEC2EjNS_12DenseMapBaseIS9_S2_S3_S5_S8_E16ExactBucketCountE.exit
  store i32 %i.ad, ptr %0, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ag, ptr noundef nonnull align 8 dereferenceable(24) %i.af, i64 24, i1 false), !tbaa.struct !1434
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 24
  store i32 0, ptr %i.ah, align 8, !tbaa !202
  br label %bb.b

_ZN4llvm13SmallDenseMapIPNS_10BasicBlockENS_15InstructionCostELj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S3_EEE13maybeMoveFastEOS9_.exit: ; preds = %_ZN4llvm13SmallDenseMapIPNS_10BasicBlockENS_15InstructionCostELj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S3_EEEC2EjNS_12DenseMapBaseIS9_S2_S3_S5_S8_E16ExactBucketCountE.exit
  br i1 %i.a, label %.thread.i, label %_ZN4llvm13SmallDenseMapIPNS_10BasicBlockENS_15InstructionCostELj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S3_EEE15allocateBucketsEj.exit.i

.thread.i:                                        ; preds = %_ZN4llvm13SmallDenseMapIPNS_10BasicBlockENS_15InstructionCostELj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S3_EEE13maybeMoveFastEOS9_.exit
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 104
  br label %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_10BasicBlockENS_15InstructionCostELj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E24initWithExactBucketCountEj.exit

_ZN4llvm13SmallDenseMapIPNS_10BasicBlockENS_15InstructionCostELj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S3_EEE15allocateBucketsEj.exit.i: ; preds = %_ZN4llvm13SmallDenseMapIPNS_10BasicBlockENS_15InstructionCostELj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S3_EEE13maybeMoveFastEOS9_.exit
  %i.aj = load i32, ptr %0, align 8
  %i.ak = and i32 %i.aj, -2
  store i32 %i.ak, ptr %0, align 8
  %i.al = zext i32 %.0.i4 to i64                  ; 2 uses
  %i.am = mul nuw nsw i64 %i.al, 24               ; 2 uses
  %i.an = add nuw nsw i64 %i.al, 31
  %i.ao = lshr i64 %i.an, 3
  %i.ap = and i64 %i.ao, 1073741820
  %i.aq = add nuw nsw i64 %i.ap, %i.am
  %i.ar = call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef %i.aq, i64 noundef 8) #24 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ar, ptr %i.as, align 8, !tbaa !202
  %i.at = getelementptr inbounds nuw i8, ptr %i.ar, i64 %i.am ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.at, ptr %i.au, align 8, !tbaa !202
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 %.0.i4, ptr %i.av, align 8, !tbaa !202
  %.pre.i = load i32, ptr %0, align 8
  %.pre.fr.i = freeze i32 %.pre.i
  %i.aw = and i32 %.pre.fr.i, 1                   ; 2 uses
  %.not.i.i.i.i = icmp eq i32 %i.aw, 0            ; 2 uses
  %i.ax = select i1 %.not.i.i.i.i, i32 %.0.i4, i32 4
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 104
  %spec.select.i = select i1 %.not.i.i.i.i, ptr %i.at, ptr %i.ay
  %i.az = zext i32 %i.ax to i64
  %i.ba = add nuw nsw i64 %i.az, 31
  %i.bb = lshr i64 %i.ba, 3
  %i.bc = and i64 %i.bb, 1073741820
  br label %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_10BasicBlockENS_15InstructionCostELj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E24initWithExactBucketCountEj.exit

_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_10BasicBlockENS_15InstructionCostELj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E24initWithExactBucketCountEj.exit: ; preds = %.thread.i, %_ZN4llvm13SmallDenseMapIPNS_10BasicBlockENS_15InstructionCostELj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S3_EEE15allocateBucketsEj.exit.i
  %.sink = phi i32 [ 1, %.thread.i ], [ %i.aw, %_ZN4llvm13SmallDenseMapIPNS_10BasicBlockENS_15InstructionCostELj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S3_EEE15allocateBucketsEj.exit.i ]
  %i.bd = phi i64 [ 4, %.thread.i ], [ %i.bc, %_ZN4llvm13SmallDenseMapIPNS_10BasicBlockENS_15InstructionCostELj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S3_EEE15allocateBucketsEj.exit.i ]
  %i.be = phi ptr [ %i.ai, %.thread.i ], [ %spec.select.i, %_ZN4llvm13SmallDenseMapIPNS_10BasicBlockENS_15InstructionCostELj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S3_EEE15allocateBucketsEj.exit.i ]
  store i32 %.sink, ptr %0, align 8
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.be, i8 0, i64 %i.bd, i1 false)
  call void @_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_10BasicBlockENS_15InstructionCostELj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E8moveFromERSA_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(112) %2)
  %.pre = load i32, ptr %2, align 8
  br label %bb.b

bb.b:                                             ; preds = %_ZN4llvm13SmallDenseMapIPNS_10BasicBlockENS_15InstructionCostELj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S3_EEE13maybeMoveFastEOS9_.exit.thread, %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_10BasicBlockENS_15InstructionCostELj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E24initWithExactBucketCountEj.exit
  %i.bf = phi i32 [ %i.ad, %_ZN4llvm13SmallDenseMapIPNS_10BasicBlockENS_15InstructionCostELj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S3_EEE13maybeMoveFastEOS9_.exit.thread ], [ %.pre, %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_10BasicBlockENS_15InstructionCostELj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E24initWithExactBucketCountEj.exit ]
  %i.bg = and i32 %i.bf, 1
  %.not.i.i = icmp eq i32 %i.bg, 0
  br i1 %.not.i.i, label %bb.c, label %_ZN4llvm13SmallDenseMapIPNS_10BasicBlockENS_15InstructionCostELj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S3_EEED2Ev.exit
end_hunk_7
begin_hunk_8_@_ZL21computeDomSubtreeCostRN4llvm15DomTreeNodeBaseINS_10BasicBlockEEERKNS_13SmallDenseMapIPS1_NS_15InstructionCostELj4ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S6_EEEERNS4_IPS2_S6_Lj4ENS7_ISF_vEENSA_ISF_S6_EEEE:bb.a
  %i.bi = lshr i64 %i.bh, 5
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr %.sink1.i.i.i.i.i.i, i64 %i.bi
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !94, !noalias !1463
  %i.bl = and i32 %i.bg, 31
  %i.bm = lshr i32 %i.bk, %i.bl
  %i.bn = trunc i32 %i.bm to i1
  br i1 %i.bn, label %.lr.ph.i.i.i.i, label %.loopexit.i.i18, !prof !150

.lr.ph.i.i.i.i:                                   ; preds = %bb.e, %bb.f
  %i.bo = phi i64 [ %i.bu, %bb.f ], [ %i.bh, %bb.e ]
  %.017.i.i.i.i = phi i32 [ %i.bt, %bb.f ], [ %i.bg, %bb.e ]
  %i.bp = getelementptr inbounds nuw [24 x i8], ptr %.sink2.i.i.i.i.i.i, i64 %i.bo ; 2 uses
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !274, !noalias !1463
  %i.br = icmp eq ptr %0, %i.bq
  br i1 %i.br, label %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_15DomTreeNodeBaseINS_10BasicBlockEEENS_15InstructionCostELj4ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S6_EEEES5_S6_S8_SB_E4findEPKS4_.exit.loopexit, label %bb.f, !prof !81

bb.f:                                             ; preds = %.lr.ph.i.i.i.i
  %i.bs = add nuw i32 %.017.i.i.i.i, 1
  %i.bt = and i32 %i.bs, %i.ba                    ; 3 uses
  %i.bu = zext i32 %i.bt to i64                   ; 2 uses
  %i.bv = lshr i64 %i.bu, 5
  %i.bw = getelementptr inbounds nuw [4 x i8], ptr %.sink1.i.i.i.i.i.i, i64 %i.bv
  %i.bx = load i32, ptr %i.bw, align 4, !tbaa !94, !noalias !1463
  %i.by = and i32 %i.bt, 31
  %i.bz = lshr i32 %i.bx, %i.by
  %i.ca = trunc i32 %i.bz to i1
  br i1 %i.ca, label %.lr.ph.i.i.i.i, label %.loopexit.i.i18, !prof !151

.loopexit.i.i18:                                  ; preds = %bb.f, %bb.e, %bb.d
  %i.cb = zext i32 %.sink.i.i.i.i.i.i to i64      ; 2 uses
  %i.cc = getelementptr inbounds nuw [24 x i8], ptr %.sink2.i.i.i.i.i.i, i64 %i.cb
  br label %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_15DomTreeNodeBaseINS_10BasicBlockEEENS_15InstructionCostELj4ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S6_EEEES5_S6_S8_SB_E4findEPKS4_.exit

_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_15DomTreeNodeBaseINS_10BasicBlockEEENS_15InstructionCostELj4ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S6_EEEES5_S6_S8_SB_E4findEPKS4_.exit.loopexit: ; preds = %.lr.ph.i.i.i.i
  %.pre73 = zext i32 %.sink.i.i.i.i.i.i to i64
  br label %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_15DomTreeNodeBaseINS_10BasicBlockEEENS_15InstructionCostELj4ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S6_EEEES5_S6_S8_SB_E4findEPKS4_.exit

_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_15DomTreeNodeBaseINS_10BasicBlockEEENS_15InstructionCostELj4ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S6_EEEES5_S6_S8_SB_E4findEPKS4_.exit: ; preds = %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_15DomTreeNodeBaseINS_10BasicBlockEEENS_15InstructionCostELj4ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S6_EEEES5_S6_S8_SB_E4findEPKS4_.exit.loopexit, %.loopexit.i.i18
  %.pre-phi74 = phi i64 [ %.pre73, %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_15DomTreeNodeBaseINS_10BasicBlockEEENS_15InstructionCostELj4ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S6_EEEES5_S6_S8_SB_E4findEPKS4_.exit.loopexit ], [ %i.cb, %.loopexit.i.i18 ]
  %.lcssa.sink.i.i19 = phi ptr [ %i.bp, %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_15DomTreeNodeBaseINS_10BasicBlockEEENS_15InstructionCostELj4ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S6_EEEES5_S6_S8_SB_E4findEPKS4_.exit.loopexit ], [ %i.cc, %.loopexit.i.i18 ] ; 3 uses
  %i.cd = getelementptr inbounds nuw [24 x i8], ptr %.sink2.i.i.i.i.i.i, i64 %.pre-phi74
  %.not = icmp eq ptr %.lcssa.sink.i.i19, %i.cd
  br i1 %.not, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_15DomTreeNodeBaseINS_10BasicBlockEEENS_15InstructionCostELj4ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S6_EEEES5_S6_S8_SB_E4findEPKS4_.exit
  %i.ce = getelementptr inbounds nuw i8, ptr %.lcssa.sink.i.i19, i64 8
  %.sroa.041.0.copyload = load i64, ptr %i.ce, align 8, !tbaa !74
  %.sroa.543.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.lcssa.sink.i.i19, i64 16
  %.sroa.543.0.copyload = load i32, ptr %.sroa.543.0..sroa_idx, align 8, !tbaa !292
  br label %bb.i

bb.h:                                             ; preds = %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_15DomTreeNodeBaseINS_10BasicBlockEEENS_15InstructionCostELj4ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S6_EEEES5_S6_S8_SB_E4findEPKS4_.exit
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.cg = getelementptr inbounds nuw i8, ptr %.lcssa.sink.i.i, i64 8
  %.sroa.03.0.copyload = load i64, ptr %i.cg, align 8, !tbaa !74 ; 2 uses
  %.sroa.24.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.lcssa.sink.i.i, i64 16
  %.sroa.24.0.copyload = load i32, ptr %.sroa.24.0..sroa_idx, align 8, !tbaa !292 ; 2 uses
  %.sroa.051.064 = load ptr, ptr %i.cf, align 8, !tbaa !274 ; 2 uses
  %.not6065 = icmp eq ptr %.sroa.051.064, null
  br i1 %.not6065, label %"_ZSt10accumulateIN4llvm15DomTreeNodeBaseINS0_10BasicBlockEE14const_iteratorENS0_15InstructionCostEZL21computeDomSubtreeCostRS3_RKNS0_13SmallDenseMapIPS2_S5_Lj4ENS0_12DenseMapInfoIS8_vEENS0_6detail12DenseMapPairIS8_S5_EEEERNS7_IPS3_S5_Lj4ENS9_ISH_vEENSC_ISH_S5_EEEEE3$_0ET0_T_SO_SN_T1_.exit", label %.lr.ph

.lr.ph:                                           ; preds = %bb.h, %.lr.ph
  %.sroa.051.068 = phi ptr [ %.sroa.051.0, %.lr.ph ], [ %.sroa.051.064, %bb.h ] ; 2 uses
  %.sroa.45.0.i67 = phi i32 [ %spec.select.i.i, %.lr.ph ], [ %.sroa.24.0.copyload, %bb.h ]
  %.sroa.04.0.i66 = phi i64 [ %.0.i.i.i, %.lr.ph ], [ %.sroa.03.0.copyload, %bb.h ]
  %i.ch = tail call fastcc { i64, i32 } @_ZL21computeDomSubtreeCostRN4llvm15DomTreeNodeBaseINS_10BasicBlockEEERKNS_13SmallDenseMapIPS1_NS_15InstructionCostELj4ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S6_EEEERNS4_IPS2_S6_Lj4ENS7_ISF_vEENSA_ISF_S6_EEEE(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.051.068, ptr noundef nonnull align 8 dereferenceable(112) %1, ptr noundef nonnull align 8 dereferenceable(112) %2), !inline_history !1454 ; 2 uses
  %.fca.0.extract1.i = extractvalue { i64, i32 } %i.ch, 0
  %.fca.1.extract2.i = extractvalue { i64, i32 } %i.ch, 1
  %i.ci = icmp eq i32 %.fca.1.extract2.i, 1
  %spec.select.i.i = select i1 %i.ci, i32 1, i32 %.sroa.45.0.i67 ; 2 uses
  %.0.i.i.i = tail call i64 @llvm.sadd.sat.i64(i64 %.sroa.04.0.i66, i64 %.fca.0.extract1.i) ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %.sroa.051.068, i64 32
  %.sroa.051.0 = load ptr, ptr %i.cj, align 8, !tbaa !274 ; 2 uses
  %.not60 = icmp eq ptr %.sroa.051.0, null
  br i1 %.not60, label %"_ZSt10accumulateIN4llvm15DomTreeNodeBaseINS0_10BasicBlockEE14const_iteratorENS0_15InstructionCostEZL21computeDomSubtreeCostRS3_RKNS0_13SmallDenseMapIPS2_S5_Lj4ENS0_12DenseMapInfoIS8_vEENS0_6detail12DenseMapPairIS8_S5_EEEERNS7_IPS3_S5_Lj4ENS9_ISH_vEENSC_ISH_S5_EEEEE3$_0ET0_T_SO_SN_T1_.exit", label %.lr.ph, !llvm.loop !1455

"_ZSt10accumulateIN4llvm15DomTreeNodeBaseINS0_10BasicBlockEE14const_iteratorENS0_15InstructionCostEZL21computeDomSubtreeCostRS3_RKNS0_13SmallDenseMapIPS2_S5_Lj4ENS0_12DenseMapInfoIS8_vEENS0_6detail12DenseMapPairIS8_S5_EEEERNS7_IPS3_S5_Lj4ENS9_ISH_vEENSC_ISH_S5_EEEEE3$_0ET0_T_SO_SN_T1_.exit": ; preds = %.lr.ph, %bb.h
  %.sroa.04.0.i.lcssa = phi i64 [ %.sroa.03.0.copyload, %bb.h ], [ %.0.i.i.i, %.lr.ph ] ; 2 uses
  %.sroa.45.0.i.lcssa = phi i32 [ %.sroa.24.0.copyload, %bb.h ], [ %spec.select.i.i, %.lr.ph ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  store ptr %0, ptr %3, align 8, !tbaa !1466
  %i.ck = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store i64 %.sroa.04.0.i.lcssa, ptr %i.ck, align 8, !tbaa !74
  %.sroa.543.0..sroa_idx44 = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i32 %.sroa.45.0.i.lcssa, ptr %.sroa.543.0..sroa_idx44, align 8, !tbaa !292
  %i.cl = call { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_15DomTreeNodeBaseINS_10BasicBlockEEENS_15InstructionCostELj4ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S6_EEEES5_S6_S8_SB_E24lookupOrInsertIntoBucketIS5_JS6_EEESt4pairIPSB_bEOT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(12) %i.ck), !noalias !1467 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %"_ZSt10accumulateIN4llvm15DomTreeNodeBaseINS0_10BasicBlockEE14const_iteratorENS0_15InstructionCostEZL21computeDomSubtreeCostRS3_RKNS0_13SmallDenseMapIPS2_S5_Lj4ENS0_12DenseMapInfoIS8_vEENS0_6detail12DenseMapPairIS8_S5_EEEERNS7_IPS3_S5_Lj4ENS9_ISH_vEENSC_ISH_S5_EEEEE3$_0ET0_T_SO_SN_T1_.exit", %_ZNK4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_10BasicBlockENS_15InstructionCostELj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E4findEPKS2_.exit
  %.sroa.041.1 = phi i64 [ 0, %_ZNK4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_10BasicBlockENS_15InstructionCostELj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E4findEPKS2_.exit ], [ %.sroa.041.0.copyload, %bb.g ], [ %.sroa.04.0.i.lcssa, %"_ZSt10accumulateIN4llvm15DomTreeNodeBaseINS0_10BasicBlockEE14const_iteratorENS0_15InstructionCostEZL21computeDomSubtreeCostRS3_RKNS0_13SmallDenseMapIPS2_S5_Lj4ENS0_12DenseMapInfoIS8_vEENS0_6detail12DenseMapPairIS8_S5_EEEERNS7_IPS3_S5_Lj4ENS9_ISH_vEENSC_ISH_S5_EEEEE3$_0ET0_T_SO_SN_T1_.exit" ]
  %.sroa.543.1 = phi i32 [ 0, %_ZNK4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_10BasicBlockENS_15InstructionCostELj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E4findEPKS2_.exit ], [ %.sroa.543.0.copyload, %bb.g ], [ %.sroa.45.0.i.lcssa, %"_ZSt10accumulateIN4llvm15DomTreeNodeBaseINS0_10BasicBlockEE14const_iteratorENS0_15InstructionCostEZL21computeDomSubtreeCostRS3_RKNS0_13SmallDenseMapIPS2_S5_Lj4ENS0_12DenseMapInfoIS8_vEENS0_6detail12DenseMapPairIS8_S5_EEEERNS7_IPS3_S5_Lj4ENS9_ISH_vEENSC_ISH_S5_EEEEE3$_0ET0_T_SO_SN_T1_.exit" ]
  %.fca.0.insert = insertvalue { i64, i32 } poison, i64 %.sroa.041.1, 0
  %.fca.1.insert = insertvalue { i64, i32 } %.fca.0.insert, i32 %.sroa.543.1, 1
  ret { i64, i32 } %.fca.1.insert
}

declare noundef zeroext i1 @_ZNK4llvm17DominatorTreeBaseINS_10BasicBlockELb0EE9dominatesEPKS1_S4_(ptr noundef nonnull align 8 dereferenceable(204), ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_15DomTreeNodeBaseINS_10BasicBlockEEENS_15InstructionCostELj4ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S6_EEEES5_S6_S8_SB_E24lookupOrInsertIntoBucketIS5_JS6_EEESt4pairIPSB_bEOT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(12) %2) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = load i32, ptr %0, align 8, !noalias !1472 ; 2 uses
  %i.c = and i32 %i.b, 1                          ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.c, 0               ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.e = load ptr, ptr %i.d, align 8, !noalias !1472 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !noalias !1472 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.i = load i32, ptr %i.h, align 8, !noalias !1472
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %.sink2.i.i.i = select i1 %.not.i.i.i, ptr %i.e, ptr %i.d ; 2 uses
  %.sink1.i.i.i = select i1 %.not.i.i.i, ptr %i.g, ptr %i.j ; 2 uses
  %.sink.i.i.i = select i1 %.not.i.i.i, i32 %i.i, i32 4 ; 4 uses
  %i.k = icmp eq i32 %.sink.i.i.i, 0
  br i1 %i.k, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = add i32 %.sink.i.i.i, -1                 ; 2 uses
  %i.m = load ptr, ptr %1, align 8, !tbaa !274    ; 2 uses
  %i.n = ptrtoint ptr %i.m to i64
  %i.o = mul i64 %i.n, -4658895280553007687       ; 2 uses
  %i.p = lshr i64 %i.o, 31
  %i.q = xor i64 %i.p, %i.o
  %i.r = trunc i64 %i.q to i32
  %i.s = and i32 %i.l, %i.r                       ; 3 uses
  %i.t = zext i32 %i.s to i64                     ; 2 uses
  %i.u = getelementptr inbounds nuw [24 x i8], ptr %.sink2.i.i.i, i64 %i.t ; 2 uses
  %i.v = lshr i64 %i.t, 5
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %.sink1.i.i.i, i64 %i.v
  %i.x = load i32, ptr %i.w, align 4, !tbaa !94
  %i.y = and i32 %i.s, 31
  %i.z = lshr i32 %i.x, %i.y
  %i.aa = trunc i32 %i.z to i1
  br i1 %i.aa, label %.lr.ph.i, label %.loopexit, !prof !150

.lr.ph.i:                                         ; preds = %bb.b, %bb.c
  %i.ab = phi ptr [ %i.ah, %bb.c ], [ %i.u, %bb.b ] ; 2 uses
  %.024.i = phi i32 [ %i.af, %bb.c ], [ %i.s, %bb.b ]
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !274
  %i.ad = icmp eq ptr %i.m, %i.ac
  br i1 %i.ad, label %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_15DomTreeNodeBaseINS_10BasicBlockEEENS_15InstructionCostELj4ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S6_EEEES5_S6_S8_SB_E15LookupBucketForIS5_EEbRKT_RPSB_.exit, label %bb.c, !prof !81

bb.c:                                             ; preds = %.lr.ph.i
  %i.ae = add nuw i32 %.024.i, 1
  %i.af = and i32 %i.ae, %i.l                     ; 3 uses
  %i.ag = zext i32 %i.af to i64                   ; 2 uses
  %i.ah = getelementptr inbounds nuw [24 x i8], ptr %.sink2.i.i.i, i64 %i.ag ; 2 uses
  %i.ai = lshr i64 %i.ag, 5
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %.sink1.i.i.i, i64 %i.ai
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !94
  %i.al = and i32 %i.af, 31
  %i.am = lshr i32 %i.ak, %i.al
  %i.an = trunc i32 %i.am to i1
  br i1 %i.an, label %.lr.ph.i, label %.loopexit, !prof !151, !llvm.loop !28

.loopexit:                                        ; preds = %bb.c, %bb.a, %bb.b
  %.lcssa28.sink.i.ph = phi ptr [ %i.u, %bb.b ], [ null, %bb.a ], [ %i.ah, %bb.c ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %.lcssa28.sink.i.ph, ptr %i.a, align 8, !tbaa !431
  %i.ao = shl i32 %i.b, 1
  %i.ap = and i32 %i.ao, -4
  %i.aq = add i32 %i.ap, 4
  %i.ar = mul i32 %.sink.i.i.i, 3
  %.not.i = icmp ult i32 %i.aq, %i.ar
  br i1 %.not.i, label %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_15DomTreeNodeBaseINS_10BasicBlockEEENS_15InstructionCostELj4ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S6_EEEES5_S6_S8_SB_E22findBucketForInsertionIS5_EEPSB_RKT_SF_.exit, label %bb.d, !prof !81

bb.d:                                             ; preds = %.loopexit
  %i.as = shl i32 %.sink.i.i.i, 1
  tail call void @_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_15DomTreeNodeBaseINS_10BasicBlockEEENS_15InstructionCostELj4ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S6_EEEES5_S6_S8_SB_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %i.as)
  %i.at = call noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_15DomTreeNodeBaseINS_10BasicBlockEEENS_15InstructionCostELj4ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S6_EEEES5_S6_S8_SB_E15LookupBucketForIS5_EEbRKT_RPSB_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 0 uses
  %.pre.i = load i32, ptr %0, align 8
  %.pre5.i = load ptr, ptr %i.a, align 8, !tbaa !431
  %.pre6.i = and i32 %.pre.i, 1
  %.pre = load ptr, ptr %i.f, align 8
  %.pre17 = load ptr, ptr %i.d, align 8
  br label %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_15DomTreeNodeBaseINS_10BasicBlockEEENS_15InstructionCostELj4ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S6_EEEES5_S6_S8_SB_E22findBucketForInsertionIS5_EEPSB_RKT_SF_.exit

_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_15DomTreeNodeBaseINS_10BasicBlockEEENS_15InstructionCostELj4ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S6_EEEES5_S6_S8_SB_E22findBucketForInsertionIS5_EEPSB_RKT_SF_.exit: ; preds = %.loopexit, %bb.d
  %i.au = phi ptr [ %.pre17, %bb.d ], [ %i.e, %.loopexit ]
  %i.av = phi ptr [ %.pre, %bb.d ], [ %i.g, %.loopexit ]
  %.pre-phi.i = phi i32 [ %.pre6.i, %bb.d ], [ %i.c, %.loopexit ]
  %i.aw = phi ptr [ %.pre5.i, %bb.d ], [ %.lcssa28.sink.i.ph, %.loopexit ] ; 4 uses
  %.not.i.i.i.i = icmp eq i32 %.pre-phi.i, 0      ; 2 uses
  %i.ax = select i1 %.not.i.i.i.i, ptr %i.av, ptr %i.j
  %i.ay = select i1 %.not.i.i.i.i, ptr %i.au, ptr %i.d
  %i.az = ptrtoint ptr %i.aw to i64
  %i.ba = ptrtoint ptr %i.ay to i64
  %i.bb = sub i64 %i.az, %i.ba
  %i.bc = sdiv exact i64 %i.bb, 24                ; 2 uses
  %i.bd = trunc i64 %i.bc to i32
  %i.be = and i32 %i.bd, 31
  %i.bf = shl nuw i32 1, %i.be
  %i.bg = lshr i64 %i.bc, 5
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %i.ax, i64 %i.bg ; 2 uses
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !94
  %i.bj = or i32 %i.bf, %i.bi
  store i32 %i.bj, ptr %i.bh, align 4, !tbaa !94
  %i.bk = load i32, ptr %0, align 8               ; 2 uses
  %3 = and i32 %i.bk, -2
  %i.bl = add i32 %3, 2
  %4 = and i32 %i.bk, 1
  %5 = or disjoint i32 %i.bl, %4
  store i32 %5, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.bm = load ptr, ptr %1, align 8, !tbaa !274
  store ptr %i.bm, ptr %i.aw, align 8, !tbaa !274
  %i.bn = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bn, ptr noundef nonnull align 8 dereferenceable(16) %2, i64 16, i1 false), !tbaa.struct !429
  br label %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_15DomTreeNodeBaseINS_10BasicBlockEEENS_15InstructionCostELj4ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S6_EEEES5_S6_S8_SB_E15LookupBucketForIS5_EEbRKT_RPSB_.exit

_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_15DomTreeNodeBaseINS_10BasicBlockEEENS_15InstructionCostELj4ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S6_EEEES5_S6_S8_SB_E15LookupBucketForIS5_EEbRKT_RPSB_.exit: ; preds = %.lr.ph.i, %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_15DomTreeNodeBaseINS_10BasicBlockEEENS_15InstructionCostELj4ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S6_EEEES5_S6_S8_SB_E22findBucketForInsertionIS5_EEPSB_RKT_SF_.exit
  %.sroa.0.0 = phi ptr [ %i.aw, %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_15DomTreeNodeBaseINS_10BasicBlockEEENS_15InstructionCostELj4ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S6_EEEES5_S6_S8_SB_E22findBucketForInsertionIS5_EEPSB_RKT_SF_.exit ], [ %i.ab, %.lr.ph.i ]
  %.sroa.3.0 = phi i8 [ 1, %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_15DomTreeNodeBaseINS_10BasicBlockEEENS_15InstructionCostELj4ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S6_EEEES5_S6_S8_SB_E22findBucketForInsertionIS5_EEPSB_RKT_SF_.exit ], [ 0, %.lr.ph.i ]
  %.fca.0.insert = insertvalue { ptr, i8 } poison, ptr %.sroa.0.0, 0
  %.fca.1.insert = insertvalue { ptr, i8 } %.fca.0.insert, i8 %.sroa.3.0, 1
  ret { ptr, i8 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_15DomTreeNodeBaseINS_10BasicBlockEEENS_15InstructionCostELj4ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S6_EEEES5_S6_S8_SB_E15LookupBucketForIS5_EEbRKT_RPSB_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = load i32, ptr %0, align 8, !noalias !1477
  %i.b = and i32 %i.a, 1
  %.not.i.i = icmp eq i32 %i.b, 0                 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !noalias !1477
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !noalias !1477
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.h = load i32, ptr %i.g, align 8, !noalias !1477
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 104
  %.sink2.i.i = select i1 %.not.i.i, ptr %i.d, ptr %i.c ; 2 uses
  %.sink1.i.i = select i1 %.not.i.i, ptr %i.f, ptr %i.i ; 2 uses
  %.sink.i.i = select i1 %.not.i.i, i32 %i.h, i32 4 ; 2 uses
  %i.j = icmp eq i32 %.sink.i.i, 0
  br i1 %i.j, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = add i32 %.sink.i.i, -1                   ; 2 uses
  %i.l = load ptr, ptr %1, align 8, !tbaa !274    ; 2 uses
  %i.m = ptrtoint ptr %i.l to i64
  %i.n = mul i64 %i.m, -4658895280553007687       ; 2 uses
  %i.o = lshr i64 %i.n, 31
  %i.p = xor i64 %i.o, %i.n
  %i.q = trunc i64 %i.p to i32
  %i.r = and i32 %i.k, %i.q                       ; 3 uses
  %i.s = zext i32 %i.r to i64                     ; 2 uses
  %i.t = getelementptr inbounds nuw [24 x i8], ptr %.sink2.i.i, i64 %i.s ; 2 uses
  %i.u = lshr i64 %i.s, 5
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %.sink1.i.i, i64 %i.u
  %i.w = load i32, ptr %i.v, align 4, !tbaa !94
  %i.x = and i32 %i.r, 31
  %i.y = lshr i32 %i.w, %i.x
  %i.z = trunc i32 %i.y to i1
  br i1 %i.z, label %.lr.ph, label %.thread, !prof !150

.lr.ph:                                           ; preds = %bb.b, %bb.c
  %i.aa = phi ptr [ %i.ag, %bb.c ], [ %i.t, %bb.b ] ; 2 uses
  %.024 = phi i32 [ %i.ae, %bb.c ], [ %i.r, %bb.b ]
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !274
  %i.ac = icmp eq ptr %i.l, %i.ab                 ; 3 uses
  br i1 %i.ac, label %.thread, label %bb.c, !prof !81

bb.c:                                             ; preds = %.lr.ph
  %i.ad = add nuw i32 %.024, 1
  %i.ae = and i32 %i.ad, %i.k                     ; 3 uses
  %i.af = zext i32 %i.ae to i64                   ; 2 uses
  %i.ag = getelementptr inbounds nuw [24 x i8], ptr %.sink2.i.i, i64 %i.af ; 2 uses
  %i.ah = lshr i64 %i.af, 5
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %.sink1.i.i, i64 %i.ah
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !94
  %i.ak = and i32 %i.ae, 31
  %i.al = lshr i32 %i.aj, %i.ak
  %i.am = trunc i32 %i.al to i1
  br i1 %i.am, label %.lr.ph, label %.thread, !prof !151, !llvm.loop !28

.thread:                                          ; preds = %.lr.ph, %bb.c, %bb.b, %bb.a
  %.lcssa28.sink = phi ptr [ %i.t, %bb.b ], [ null, %bb.a ], [ %i.ag, %bb.c ], [ %i.aa, %.lr.ph ]
  %.2 = phi i1 [ false, %bb.b ], [ false, %bb.a ], [ %i.ac, %bb.c ], [ %i.ac, %.lr.ph ]
  store ptr %.lcssa28.sink, ptr %2, align 8, !tbaa !431
  ret i1 %.2
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_15DomTreeNodeBaseINS_10BasicBlockEEENS_15InstructionCostELj4ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S6_EEEES5_S6_S8_SB_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %1) local_unnamed_addr #6 comdat align 2 {
bb.a:
  %2 = alloca %"class.llvm::SmallDenseMap.521", align 8 ; 16 uses
  %i.a = icmp ult i32 %1, 5                       ; 2 uses
  br i1 %i.a, label %_ZN4llvm13SmallDenseMapIPNS_15DomTreeNodeBaseINS_10BasicBlockEEENS_15InstructionCostELj4ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEE17roundUpNumBucketsEj.exit.thread, label %_ZN4llvm13SmallDenseMapIPNS_15DomTreeNodeBaseINS_10BasicBlockEEENS_15InstructionCostELj4ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEE17roundUpNumBucketsEj.exit

_ZN4llvm13SmallDenseMapIPNS_15DomTreeNodeBaseINS_10BasicBlockEEENS_15InstructionCostELj4ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEE17roundUpNumBucketsEj.exit.thread: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 104
  br label %_ZN4llvm13SmallDenseMapIPNS_15DomTreeNodeBaseINS_10BasicBlockEEENS_15InstructionCostELj4ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEC2EjNS_12DenseMapBaseISB_S4_S5_S7_SA_E16ExactBucketCountE.exit

_ZN4llvm13SmallDenseMapIPNS_15DomTreeNodeBaseINS_10BasicBlockEEENS_15InstructionCostELj4ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEE17roundUpNumBucketsEj.exit: ; preds = %bb.a
  %i.c = add i32 %1, -1
  %i.d = zext i32 %i.c to i64                     ; 2 uses
  %i.e = lshr i64 %i.d, 1
  %i.f = or i64 %i.e, %i.d                        ; 2 uses
  %i.g = lshr i64 %i.f, 2
  %i.h = or i64 %i.g, %i.f                        ; 2 uses
  %i.i = lshr i64 %i.h, 4
  %i.j = or i64 %i.i, %i.h                        ; 2 uses
  %i.k = lshr i64 %i.j, 8
  %i.l = or i64 %i.k, %i.j                        ; 2 uses
  %i.m = lshr i64 %i.l, 16
  %i.n = or i64 %i.m, %i.l
  %i.o = trunc nuw i64 %i.n to i32
  %i.p = add i32 %i.o, 1
  %.sroa.speculated.i = tail call i32 @llvm.umax.i32(i32 %i.p, i32 64) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  %i.q = zext i32 %.sroa.speculated.i to i64      ; 2 uses
  %i.r = mul nuw nsw i64 %i.q, 24                 ; 2 uses
  %i.s = add nuw nsw i64 %i.q, 31
  %i.t = lshr i64 %i.s, 3
  %i.u = and i64 %i.t, 1073741820                 ; 2 uses
  %i.v = add nuw nsw i64 %i.u, %i.r
  %i.w = tail call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef %i.v, i64 noundef 8) #24 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %i.w, ptr %i.x, align 8, !tbaa !202
  %i.y = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.r ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 16
  store ptr %i.y, ptr %i.z, align 8, !tbaa !202
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 24
  store i32 %.sroa.speculated.i, ptr %i.aa, align 8, !tbaa !202
  br label %_ZN4llvm13SmallDenseMapIPNS_15DomTreeNodeBaseINS_10BasicBlockEEENS_15InstructionCostELj4ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEC2EjNS_12DenseMapBaseISB_S4_S5_S7_SA_E16ExactBucketCountE.exit

_ZN4llvm13SmallDenseMapIPNS_15DomTreeNodeBaseINS_10BasicBlockEEENS_15InstructionCostELj4ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEC2EjNS_12DenseMapBaseISB_S4_S5_S7_SA_E16ExactBucketCountE.exit: ; preds = %_ZN4llvm13SmallDenseMapIPNS_15DomTreeNodeBaseINS_10BasicBlockEEENS_15InstructionCostELj4ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEE17roundUpNumBucketsEj.exit.thread, %_ZN4llvm13SmallDenseMapIPNS_15DomTreeNodeBaseINS_10BasicBlockEEENS_15InstructionCostELj4ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEE17roundUpNumBucketsEj.exit
  %.0.i4 = phi i32 [ 4, %_ZN4llvm13SmallDenseMapIPNS_15DomTreeNodeBaseINS_10BasicBlockEEENS_15InstructionCostELj4ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEE17roundUpNumBucketsEj.exit.thread ], [ %.sroa.speculated.i, %_ZN4llvm13SmallDenseMapIPNS_15DomTreeNodeBaseINS_10BasicBlockEEENS_15InstructionCostELj4ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEE17roundUpNumBucketsEj.exit ] ; 3 uses
  %.sink.i = phi i32 [ 1, %_ZN4llvm13SmallDenseMapIPNS_15DomTreeNodeBaseINS_10BasicBlockEEENS_15InstructionCostELj4ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEE17roundUpNumBucketsEj.exit.thread ], [ 0, %_ZN4llvm13SmallDenseMapIPNS_15DomTreeNodeBaseINS_10BasicBlockEEENS_15InstructionCostELj4ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEE17roundUpNumBucketsEj.exit ]
  %i.ab = phi i64 [ 4, %_ZN4llvm13SmallDenseMapIPNS_15DomTreeNodeBaseINS_10BasicBlockEEENS_15InstructionCostELj4ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEE17roundUpNumBucketsEj.exit.thread ], [ %i.u, %_ZN4llvm13SmallDenseMapIPNS_15DomTreeNodeBaseINS_10BasicBlockEEENS_15InstructionCostELj4ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEE17roundUpNumBucketsEj.exit ]
  %i.ac = phi ptr [ %i.b, %_ZN4llvm13SmallDenseMapIPNS_15DomTreeNodeBaseINS_10BasicBlockEEENS_15InstructionCostELj4ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEE17roundUpNumBucketsEj.exit.thread ], [ %i.y, %_ZN4llvm13SmallDenseMapIPNS_15DomTreeNodeBaseINS_10BasicBlockEEENS_15InstructionCostELj4ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEE17roundUpNumBucketsEj.exit ]
  store i32 %.sink.i, ptr %2, align 8
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.ac, i8 0, i64 %i.ab, i1 false)
  call void @_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_15DomTreeNodeBaseINS_10BasicBlockEEENS_15InstructionCostELj4ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S6_EEEES5_S6_S8_SB_E8moveFromERSC_(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(112) %0)
  %i.ad = load i32, ptr %2, align 8               ; 3 uses
  %i.ae = and i32 %i.ad, 1
  %.not.i = icmp eq i32 %i.ae, 0
  br i1 %.not.i, label %_ZN4llvm13SmallDenseMapIPNS_15DomTreeNodeBaseINS_10BasicBlockEEENS_15InstructionCostELj4ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEE13maybeMoveFastEOSB_.exit.thread, label %_ZN4llvm13SmallDenseMapIPNS_15DomTreeNodeBaseINS_10BasicBlockEEENS_15InstructionCostELj4ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEE13maybeMoveFastEOSB_.exit

_ZN4llvm13SmallDenseMapIPNS_15DomTreeNodeBaseINS_10BasicBlockEEENS_15InstructionCostELj4ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEE13maybeMoveFastEOSB_.exit.thread: ; preds = %_ZN4llvm13SmallDenseMapIPNS_15DomTreeNodeBaseINS_10BasicBlockEEENS_15InstructionCostELj4ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEC2EjNS_12DenseMapBaseISB_S4_S5_S7_SA_E16ExactBucketCountE.exit
  store i32 %i.ad, ptr %0, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ag, ptr noundef nonnull align 8 dereferenceable(24) %i.af, i64 24, i1 false), !tbaa.struct !1478
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 24
  store i32 0, ptr %i.ah, align 8, !tbaa !202
  br label %bb.b

_ZN4llvm13SmallDenseMapIPNS_15DomTreeNodeBaseINS_10BasicBlockEEENS_15InstructionCostELj4ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEE13maybeMoveFastEOSB_.exit: ; preds = %_ZN4llvm13SmallDenseMapIPNS_15DomTreeNodeBaseINS_10BasicBlockEEENS_15InstructionCostELj4ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEC2EjNS_12DenseMapBaseISB_S4_S5_S7_SA_E16ExactBucketCountE.exit
  br i1 %i.a, label %.thread.i, label %_ZN4llvm13SmallDenseMapIPNS_15DomTreeNodeBaseINS_10BasicBlockEEENS_15InstructionCostELj4ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEE15allocateBucketsEj.exit.i

.thread.i:                                        ; preds = %_ZN4llvm13SmallDenseMapIPNS_15DomTreeNodeBaseINS_10BasicBlockEEENS_15InstructionCostELj4ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEE13maybeMoveFastEOSB_.exit
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 104
  br label %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_15DomTreeNodeBaseINS_10BasicBlockEEENS_15InstructionCostELj4ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S6_EEEES5_S6_S8_SB_E24initWithExactBucketCountEj.exit

_ZN4llvm13SmallDenseMapIPNS_15DomTreeNodeBaseINS_10BasicBlockEEENS_15InstructionCostELj4ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEE15allocateBucketsEj.exit.i: ; preds = %_ZN4llvm13SmallDenseMapIPNS_15DomTreeNodeBaseINS_10BasicBlockEEENS_15InstructionCostELj4ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEE13maybeMoveFastEOSB_.exit
  %i.aj = load i32, ptr %0, align 8
  %i.ak = and i32 %i.aj, -2
  store i32 %i.ak, ptr %0, align 8
  %i.al = zext i32 %.0.i4 to i64                  ; 2 uses
  %i.am = mul nuw nsw i64 %i.al, 24               ; 2 uses
  %i.an = add nuw nsw i64 %i.al, 31
  %i.ao = lshr i64 %i.an, 3
  %i.ap = and i64 %i.ao, 1073741820
  %i.aq = add nuw nsw i64 %i.ap, %i.am
  %i.ar = call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef %i.aq, i64 noundef 8) #24 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ar, ptr %i.as, align 8, !tbaa !202
  %i.at = getelementptr inbounds nuw i8, ptr %i.ar, i64 %i.am ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.at, ptr %i.au, align 8, !tbaa !202
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 %.0.i4, ptr %i.av, align 8, !tbaa !202
  %.pre.i = load i32, ptr %0, align 8
  %.pre.fr.i = freeze i32 %.pre.i
  %i.aw = and i32 %.pre.fr.i, 1                   ; 2 uses
  %.not.i.i.i.i = icmp eq i32 %i.aw, 0            ; 2 uses
  %i.ax = select i1 %.not.i.i.i.i, i32 %.0.i4, i32 4
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 104
  %spec.select.i = select i1 %.not.i.i.i.i, ptr %i.at, ptr %i.ay
  %i.az = zext i32 %i.ax to i64
  %i.ba = add nuw nsw i64 %i.az, 31
  %i.bb = lshr i64 %i.ba, 3
  %i.bc = and i64 %i.bb, 1073741820
  br label %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_15DomTreeNodeBaseINS_10BasicBlockEEENS_15InstructionCostELj4ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S6_EEEES5_S6_S8_SB_E24initWithExactBucketCountEj.exit

_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_15DomTreeNodeBaseINS_10BasicBlockEEENS_15InstructionCostELj4ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S6_EEEES5_S6_S8_SB_E24initWithExactBucketCountEj.exit: ; preds = %.thread.i, %_ZN4llvm13SmallDenseMapIPNS_15DomTreeNodeBaseINS_10BasicBlockEEENS_15InstructionCostELj4ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEE15allocateBucketsEj.exit.i
  %.sink = phi i32 [ 1, %.thread.i ], [ %i.aw, %_ZN4llvm13SmallDenseMapIPNS_15DomTreeNodeBaseINS_10BasicBlockEEENS_15InstructionCostELj4ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEE15allocateBucketsEj.exit.i ]
  %i.bd = phi i64 [ 4, %.thread.i ], [ %i.bc, %_ZN4llvm13SmallDenseMapIPNS_15DomTreeNodeBaseINS_10BasicBlockEEENS_15InstructionCostELj4ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEE15allocateBucketsEj.exit.i ]
  %i.be = phi ptr [ %i.ai, %.thread.i ], [ %spec.select.i, %_ZN4llvm13SmallDenseMapIPNS_15DomTreeNodeBaseINS_10BasicBlockEEENS_15InstructionCostELj4ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEE15allocateBucketsEj.exit.i ]
  store i32 %.sink, ptr %0, align 8
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.be, i8 0, i64 %i.bd, i1 false)
  call void @_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_15DomTreeNodeBaseINS_10BasicBlockEEENS_15InstructionCostELj4ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S6_EEEES5_S6_S8_SB_E8moveFromERSC_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(112) %2)
  %.pre = load i32, ptr %2, align 8
  br label %bb.b

bb.b:                                             ; preds = %_ZN4llvm13SmallDenseMapIPNS_15DomTreeNodeBaseINS_10BasicBlockEEENS_15InstructionCostELj4ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEE13maybeMoveFastEOSB_.exit.thread, %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_15DomTreeNodeBaseINS_10BasicBlockEEENS_15InstructionCostELj4ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S6_EEEES5_S6_S8_SB_E24initWithExactBucketCountEj.exit
  %i.bf = phi i32 [ %i.ad, %_ZN4llvm13SmallDenseMapIPNS_15DomTreeNodeBaseINS_10BasicBlockEEENS_15InstructionCostELj4ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEE13maybeMoveFastEOSB_.exit.thread ], [ %.pre, %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_15DomTreeNodeBaseINS_10BasicBlockEEENS_15InstructionCostELj4ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S6_EEEES5_S6_S8_SB_E24initWithExactBucketCountEj.exit ]
  %i.bg = and i32 %i.bf, 1
  %.not.i.i = icmp eq i32 %i.bg, 0
  br i1 %.not.i.i, label %bb.c, label %_ZN4llvm13SmallDenseMapIPNS_15DomTreeNodeBaseINS_10BasicBlockEEENS_15InstructionCostELj4ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEED2Ev.exit
end_hunk_8
begin_hunk_9_@_ZN4llvm12DenseMapBaseINS_8DenseMapINS_18ValueMapCallbackVHIPKNS_5ValueENS_14WeakTrackingVHENS_14ValueMapConfigIS5_NS_3sys10SmartMutexILb0EEEEEEES6_NS_12DenseMapInfoISC_vEENS_6detail12DenseMapPairISC_S6_EEEESC_S6_SE_SH_E24lookupOrInsertIntoBucketISC_JS6_EEESt4pairIPSH_bEOT_DpOT0_:bb.a
bb.d:                                             ; preds = %.loopexit
  %i.ar = shl i32 %i.f, 1
  tail call void @_ZN4llvm12DenseMapBaseINS_8DenseMapINS_18ValueMapCallbackVHIPKNS_5ValueENS_14WeakTrackingVHENS_14ValueMapConfigIS5_NS_3sys10SmartMutexILb0EEEEEEES6_NS_12DenseMapInfoISC_vEENS_6detail12DenseMapPairISC_S6_EEEESC_S6_SE_SH_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %i.ar), !inline_history !19
  %i.as = call noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_8DenseMapINS_18ValueMapCallbackVHIPKNS_5ValueENS_14WeakTrackingVHENS_14ValueMapConfigIS5_NS_3sys10SmartMutexILb0EEEEEEES6_NS_12DenseMapInfoISC_vEENS_6detail12DenseMapPairISC_S6_EEEESC_S6_SE_SH_E15LookupBucketForISC_EEbRKT_RPSH_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.a), !inline_history !19 ; 0 uses
  %.pre.i = load ptr, ptr %i.a, align 8, !tbaa !433
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !398
  %.pre17 = load ptr, ptr %0, align 8, !tbaa !397
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_18ValueMapCallbackVHIPKNS_5ValueENS_14WeakTrackingVHENS_14ValueMapConfigIS5_NS_3sys10SmartMutexILb0EEEEEEES6_NS_12DenseMapInfoISC_vEENS_6detail12DenseMapPairISC_S6_EEEESC_S6_SE_SH_E22findBucketForInsertionISC_EEPSH_RKT_SL_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapINS_18ValueMapCallbackVHIPKNS_5ValueENS_14WeakTrackingVHENS_14ValueMapConfigIS5_NS_3sys10SmartMutexILb0EEEEEEES6_NS_12DenseMapInfoISC_vEENS_6detail12DenseMapPairISC_S6_EEEESC_S6_SE_SH_E22findBucketForInsertionISC_EEPSH_RKT_SL_.exit: ; preds = %.loopexit, %bb.d
  %i.at = phi ptr [ %.pre17, %bb.d ], [ %i.b, %.loopexit ]
  %i.au = phi ptr [ %.pre, %bb.d ], [ %i.d, %.loopexit ]
  %i.av = phi ptr [ %.pre.i, %bb.d ], [ %.lcssa28.sink.i.ph, %.loopexit ] ; 11 uses
  %i.aw = ptrtoint ptr %i.av to i64
  %i.ax = ptrtoint ptr %i.at to i64
  %i.ay = sub i64 %i.aw, %i.ax
  %i.az = ashr exact i64 %i.ay, 6                 ; 2 uses
  %i.ba = trunc i64 %i.az to i32
  %i.bb = and i32 %i.ba, 31
  %i.bc = shl nuw i32 1, %i.bb
  %i.bd = lshr i64 %i.az, 5
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %i.au, i64 %i.bd ; 2 uses
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !94
  %i.bg = or i32 %i.bc, %i.bf
  store i32 %i.bg, ptr %i.be, align 4, !tbaa !94
  %i.bh = load i32, ptr %i.am, align 8, !tbaa !399
  %i.bi = add i32 %i.bh, 1
  store i32 %i.bi, ptr %i.am, align 8, !tbaa !399
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.bj = getelementptr inbounds nuw i8, ptr %i.av, i64 8 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %.0.copyload.i.i.i.i.i.i = load i64, ptr %i.bk, align 8
  %i.bl = and i64 %.0.copyload.i.i.i.i.i.i, 6
  store i64 %i.bl, ptr %i.bj, align 8
  %i.bm = getelementptr inbounds nuw i8, ptr %i.av, i64 16
  store ptr null, ptr %i.bm, align 8, !tbaa !404
  %i.bn = getelementptr inbounds nuw i8, ptr %i.av, i64 24
  %i.bo = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !136 ; 2 uses
  store ptr %i.bp, ptr %i.bn, align 8, !tbaa !136
  %.not.i.i.i.i = icmp eq ptr %i.bp, null
  br i1 %.not.i.i.i.i, label %_ZN4llvm18ValueMapCallbackVHIPKNS_5ValueENS_14WeakTrackingVHENS_14ValueMapConfigIS3_NS_3sys10SmartMutexILb0EEEEEEC2EOSA_.exit, label %bb.e

bb.e:                                             ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_18ValueMapCallbackVHIPKNS_5ValueENS_14WeakTrackingVHENS_14ValueMapConfigIS5_NS_3sys10SmartMutexILb0EEEEEEES6_NS_12DenseMapInfoISC_vEENS_6detail12DenseMapPairISC_S6_EEEESC_S6_SE_SH_E22findBucketForInsertionISC_EEPSH_RKT_SL_.exit
  %.0.copyload.i.i.i.i.i.i.i.i = load i64, ptr %i.bk, align 8
  %i.bq = and i64 %.0.copyload.i.i.i.i.i.i.i.i, -8
  %i.br = inttoptr i64 %i.bq to ptr
  call void @_ZN4llvm15ValueHandleBase20AddToExistingUseListEPPS0_(ptr noundef nonnull align 8 dereferenceable(24) %i.bj, ptr noundef %i.br) #24, !inline_history !20
  br label %_ZN4llvm18ValueMapCallbackVHIPKNS_5ValueENS_14WeakTrackingVHENS_14ValueMapConfigIS3_NS_3sys10SmartMutexILb0EEEEEEC2EOSA_.exit

_ZN4llvm18ValueMapCallbackVHIPKNS_5ValueENS_14WeakTrackingVHENS_14ValueMapConfigIS3_NS_3sys10SmartMutexILb0EEEEEEC2EOSA_.exit: ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_18ValueMapCallbackVHIPKNS_5ValueENS_14WeakTrackingVHENS_14ValueMapConfigIS5_NS_3sys10SmartMutexILb0EEEEEEES6_NS_12DenseMapInfoISC_vEENS_6detail12DenseMapPairISC_S6_EEEESC_S6_SE_SH_E22findBucketForInsertionISC_EEPSH_RKT_SL_.exit, %bb.e
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4llvm18ValueMapCallbackVHIPKNS_5ValueENS_14WeakTrackingVHENS_14ValueMapConfigIS3_NS_3sys10SmartMutexILb0EEEEEEE, i64 16), ptr %i.av, align 8, !tbaa !45
  %i.bs = getelementptr inbounds nuw i8, ptr %i.av, i64 32
  %i.bt = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !407
  store ptr %i.bu, ptr %i.bs, align 8, !tbaa !407
  %i.bv = getelementptr inbounds nuw i8, ptr %i.av, i64 40 ; 2 uses
  store i64 6, ptr %i.bv, align 8
  %i.bw = getelementptr inbounds nuw i8, ptr %i.av, i64 48
  store ptr null, ptr %i.bw, align 8, !tbaa !404
  %i.bx = getelementptr inbounds nuw i8, ptr %i.av, i64 56
  %i.by = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !136 ; 2 uses
  store ptr %i.bz, ptr %i.bx, align 8, !tbaa !136
  %.not.i.i = icmp eq ptr %i.bz, null
  br i1 %.not.i.i, label %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_18ValueMapCallbackVHIPKNS_5ValueENS_14WeakTrackingVHENS_14ValueMapConfigIS5_NS_3sys10SmartMutexILb0EEEEEEES6_NS_12DenseMapInfoISC_vEENS_6detail12DenseMapPairISC_S6_EEEESC_S6_SE_SH_E15LookupBucketForISC_EEbRKT_RPSH_.exit, label %bb.f

bb.f:                                             ; preds = %_ZN4llvm18ValueMapCallbackVHIPKNS_5ValueENS_14WeakTrackingVHENS_14ValueMapConfigIS3_NS_3sys10SmartMutexILb0EEEEEEC2EOSA_.exit
  %.0.copyload.i.i.i.i.i.i5 = load i64, ptr %2, align 8
  %i.ca = and i64 %.0.copyload.i.i.i.i.i.i5, -8
  %i.cb = inttoptr i64 %i.ca to ptr
  call void @_ZN4llvm15ValueHandleBase20AddToExistingUseListEPPS0_(ptr noundef nonnull align 8 dereferenceable(24) %i.bv, ptr noundef %i.cb) #24
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_18ValueMapCallbackVHIPKNS_5ValueENS_14WeakTrackingVHENS_14ValueMapConfigIS5_NS_3sys10SmartMutexILb0EEEEEEES6_NS_12DenseMapInfoISC_vEENS_6detail12DenseMapPairISC_S6_EEEESC_S6_SE_SH_E15LookupBucketForISC_EEbRKT_RPSH_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapINS_18ValueMapCallbackVHIPKNS_5ValueENS_14WeakTrackingVHENS_14ValueMapConfigIS5_NS_3sys10SmartMutexILb0EEEEEEES6_NS_12DenseMapInfoISC_vEENS_6detail12DenseMapPairISC_S6_EEEESC_S6_SE_SH_E15LookupBucketForISC_EEbRKT_RPSH_.exit: ; preds = %.lr.ph.i, %bb.f, %_ZN4llvm18ValueMapCallbackVHIPKNS_5ValueENS_14WeakTrackingVHENS_14ValueMapConfigIS3_NS_3sys10SmartMutexILb0EEEEEEC2EOSA_.exit
  %.sroa.0.0 = phi ptr [ %i.av, %bb.f ], [ %i.av, %_ZN4llvm18ValueMapCallbackVHIPKNS_5ValueENS_14WeakTrackingVHENS_14ValueMapConfigIS3_NS_3sys10SmartMutexILb0EEEEEEC2EOSA_.exit ], [ %i.y, %.lr.ph.i ]
  %.sroa.3.0 = phi i8 [ 1, %bb.f ], [ 1, %_ZN4llvm18ValueMapCallbackVHIPKNS_5ValueENS_14WeakTrackingVHENS_14ValueMapConfigIS3_NS_3sys10SmartMutexILb0EEEEEEC2EOSA_.exit ], [ 0, %.lr.ph.i ]
  %.fca.0.insert = insertvalue { ptr, i8 } poison, ptr %.sroa.0.0, 0
  %.fca.1.insert = insertvalue { ptr, i8 } %.fca.0.insert, i8 %.sroa.3.0, 1
  ret { ptr, i8 } %.fca.1.insert
}

declare void @_ZN4llvm15ValueHandleBase12AddToUseListEv(ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #4

declare { ptr, i64 } @_ZNK4llvm10BasicBlock19getFirstInsertionPtEv(ptr noundef nonnull align 8 dereferenceable(80)) local_unnamed_addr #4

declare void @_ZN4llvm11ValueMapperC1ERNS_8ValueMapIPKNS_5ValueENS_14WeakTrackingVHENS_14ValueMapConfigIS4_NS_3sys10SmartMutexILb0EEEEEEENS_10RemapFlagsEPNS_20ValueMapTypeRemapperEPNS_17ValueMaterializerEPKSt8functionIFbPKNS_8MetadataEEE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(176), i32 noundef, ptr noundef, ptr noundef, ptr noundef) unnamed_addr #4

declare void @_ZN4llvm11ValueMapper19remapDbgRecordRangeEPNS_6ModuleENS_14iterator_rangeINS_14ilist_iteratorINS_12ilist_detail12node_optionsINS_9DbgRecordELb0ELb0EvLb0EvEELb0ELb0EEEEE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, ptr, ptr) local_unnamed_addr #4

; Function Attrs: nounwind
declare void @_ZN4llvm11ValueMapperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #13

declare { ptr, ptr } @_ZN4llvm9DbgMarker17getDbgRecordRangeEv(ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #4

declare void @_ZN4llvm11ValueMapper16remapInstructionERNS_11InstructionE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(72)) local_unnamed_addr #4

declare void @_ZN4llvm19SmallPtrSetImplBase16shrink_and_clearEv(ptr noundef nonnull align 8 dereferenceable(17)) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_10BasicBlockES3_Lj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S3_EEEES3_S3_S5_S8_E24lookupOrInsertIntoBucketIRKS3_JEEESt4pairIPS8_bEOT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = load i32, ptr %0, align 8, !noalias !1613 ; 2 uses
  %i.c = and i32 %i.b, 1                          ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.c, 0               ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.e = load ptr, ptr %i.d, align 8, !noalias !1613 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !noalias !1613 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.i = load i32, ptr %i.h, align 8, !noalias !1613
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %.sink2.i.i.i = select i1 %.not.i.i.i, ptr %i.e, ptr %i.d ; 2 uses
  %.sink1.i.i.i = select i1 %.not.i.i.i, ptr %i.g, ptr %i.j ; 2 uses
  %.sink.i.i.i = select i1 %.not.i.i.i, i32 %i.i, i32 4 ; 4 uses
  %i.k = icmp eq i32 %.sink.i.i.i, 0
  br i1 %i.k, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = add i32 %.sink.i.i.i, -1                 ; 2 uses
  %i.m = load ptr, ptr %1, align 8, !tbaa !148    ; 2 uses
  %i.n = ptrtoint ptr %i.m to i64
  %i.o = mul i64 %i.n, -4658895280553007687       ; 2 uses
  %i.p = lshr i64 %i.o, 31
  %i.q = xor i64 %i.p, %i.o
  %i.r = trunc i64 %i.q to i32
  %i.s = and i32 %i.l, %i.r                       ; 3 uses
  %i.t = zext i32 %i.s to i64                     ; 2 uses
  %i.u = getelementptr inbounds nuw [16 x i8], ptr %.sink2.i.i.i, i64 %i.t ; 2 uses
  %i.v = lshr i64 %i.t, 5
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %.sink1.i.i.i, i64 %i.v
  %i.x = load i32, ptr %i.w, align 4, !tbaa !94
  %i.y = and i32 %i.s, 31
  %i.z = lshr i32 %i.x, %i.y
  %i.aa = trunc i32 %i.z to i1
  br i1 %i.aa, label %.lr.ph.i, label %.loopexit, !prof !150

.lr.ph.i:                                         ; preds = %bb.b, %bb.c
  %i.ab = phi ptr [ %i.ah, %bb.c ], [ %i.u, %bb.b ] ; 2 uses
  %.024.i = phi i32 [ %i.af, %bb.c ], [ %i.s, %bb.b ]
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !148
  %i.ad = icmp eq ptr %i.m, %i.ac
  br i1 %i.ad, label %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_10BasicBlockES3_Lj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S3_EEEES3_S3_S5_S8_E15LookupBucketForIS3_EEbRKT_RPS8_.exit, label %bb.c, !prof !81

bb.c:                                             ; preds = %.lr.ph.i
  %i.ae = add nuw i32 %.024.i, 1
  %i.af = and i32 %i.ae, %i.l                     ; 3 uses
  %i.ag = zext i32 %i.af to i64                   ; 2 uses
  %i.ah = getelementptr inbounds nuw [16 x i8], ptr %.sink2.i.i.i, i64 %i.ag ; 2 uses
  %i.ai = lshr i64 %i.ag, 5
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %.sink1.i.i.i, i64 %i.ai
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !94
  %i.al = and i32 %i.af, 31
  %i.am = lshr i32 %i.ak, %i.al
  %i.an = trunc i32 %i.am to i1
  br i1 %i.an, label %.lr.ph.i, label %.loopexit, !prof !151, !llvm.loop !32

.loopexit:                                        ; preds = %bb.c, %bb.a, %bb.b
  %.lcssa28.sink.i.ph = phi ptr [ %i.u, %bb.b ], [ null, %bb.a ], [ %i.ah, %bb.c ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %.lcssa28.sink.i.ph, ptr %i.a, align 8, !tbaa !378
  %i.ao = shl i32 %i.b, 1
  %i.ap = and i32 %i.ao, -4
  %i.aq = add i32 %i.ap, 4
  %i.ar = mul i32 %.sink.i.i.i, 3
  %.not.i = icmp ult i32 %i.aq, %i.ar
  br i1 %.not.i, label %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_10BasicBlockES3_Lj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S3_EEEES3_S3_S5_S8_E22findBucketForInsertionIS3_EEPS8_RKT_SC_.exit, label %bb.d, !prof !81

bb.d:                                             ; preds = %.loopexit
  %i.as = shl i32 %.sink.i.i.i, 1
  tail call void @_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_10BasicBlockES3_Lj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S3_EEEES3_S3_S5_S8_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %i.as)
  %i.at = call noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_10BasicBlockES3_Lj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S3_EEEES3_S3_S5_S8_E15LookupBucketForIS3_EEbRKT_RPS8_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 0 uses
  %.pre.i = load i32, ptr %0, align 8
  %.pre5.i = load ptr, ptr %i.a, align 8, !tbaa !378
  %.pre6.i = and i32 %.pre.i, 1
  %.pre = load ptr, ptr %i.f, align 8
  %.pre16 = load ptr, ptr %i.d, align 8
  br label %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_10BasicBlockES3_Lj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S3_EEEES3_S3_S5_S8_E22findBucketForInsertionIS3_EEPS8_RKT_SC_.exit

_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_10BasicBlockES3_Lj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S3_EEEES3_S3_S5_S8_E22findBucketForInsertionIS3_EEPS8_RKT_SC_.exit: ; preds = %.loopexit, %bb.d
  %i.au = phi ptr [ %.pre16, %bb.d ], [ %i.e, %.loopexit ]
  %i.av = phi ptr [ %.pre, %bb.d ], [ %i.g, %.loopexit ]
  %.pre-phi.i = phi i32 [ %.pre6.i, %bb.d ], [ %i.c, %.loopexit ]
  %i.aw = phi ptr [ %.pre5.i, %bb.d ], [ %.lcssa28.sink.i.ph, %.loopexit ] ; 4 uses
  %.not.i.i.i.i = icmp eq i32 %.pre-phi.i, 0      ; 2 uses
  %i.ax = select i1 %.not.i.i.i.i, ptr %i.av, ptr %i.j
  %i.ay = select i1 %.not.i.i.i.i, ptr %i.au, ptr %i.d
  %i.az = ptrtoint ptr %i.aw to i64
  %i.ba = ptrtoint ptr %i.ay to i64
  %i.bb = sub i64 %i.az, %i.ba
  %i.bc = ashr exact i64 %i.bb, 4                 ; 2 uses
  %i.bd = trunc i64 %i.bc to i32
  %i.be = and i32 %i.bd, 31
  %i.bf = shl nuw i32 1, %i.be
  %i.bg = lshr i64 %i.bc, 5
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %i.ax, i64 %i.bg ; 2 uses
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !94
  %i.bj = or i32 %i.bf, %i.bi
  store i32 %i.bj, ptr %i.bh, align 4, !tbaa !94
  %i.bk = load i32, ptr %0, align 8               ; 2 uses
  %2 = and i32 %i.bk, -2
  %i.bl = add i32 %2, 2
  %3 = and i32 %i.bk, 1
  %4 = or disjoint i32 %i.bl, %3
  store i32 %4, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.bm = load ptr, ptr %1, align 8, !tbaa !148
  store ptr %i.bm, ptr %i.aw, align 8, !tbaa !148
  %i.bn = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  store ptr null, ptr %i.bn, align 8, !tbaa !148
  br label %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_10BasicBlockES3_Lj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S3_EEEES3_S3_S5_S8_E15LookupBucketForIS3_EEbRKT_RPS8_.exit

_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_10BasicBlockES3_Lj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S3_EEEES3_S3_S5_S8_E15LookupBucketForIS3_EEbRKT_RPS8_.exit: ; preds = %.lr.ph.i, %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_10BasicBlockES3_Lj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S3_EEEES3_S3_S5_S8_E22findBucketForInsertionIS3_EEPS8_RKT_SC_.exit
  %.sroa.0.0 = phi ptr [ %i.aw, %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_10BasicBlockES3_Lj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S3_EEEES3_S3_S5_S8_E22findBucketForInsertionIS3_EEPS8_RKT_SC_.exit ], [ %i.ab, %.lr.ph.i ]
  %.sroa.3.0 = phi i8 [ 1, %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_10BasicBlockES3_Lj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S3_EEEES3_S3_S5_S8_E22findBucketForInsertionIS3_EEPS8_RKT_SC_.exit ], [ 0, %.lr.ph.i ]
  %.fca.0.insert = insertvalue { ptr, i8 } poison, ptr %.sroa.0.0, 0
  %.fca.1.insert = insertvalue { ptr, i8 } %.fca.0.insert, i8 %.sroa.3.0, 1
  ret { ptr, i8 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_10BasicBlockES3_Lj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S3_EEEES3_S3_S5_S8_E15LookupBucketForIS3_EEbRKT_RPS8_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = load i32, ptr %0, align 8, !noalias !1618
  %i.b = and i32 %i.a, 1
  %.not.i.i = icmp eq i32 %i.b, 0                 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !noalias !1618
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !noalias !1618
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.h = load i32, ptr %i.g, align 8, !noalias !1618
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 72
  %.sink2.i.i = select i1 %.not.i.i, ptr %i.d, ptr %i.c ; 2 uses
  %.sink1.i.i = select i1 %.not.i.i, ptr %i.f, ptr %i.i ; 2 uses
  %.sink.i.i = select i1 %.not.i.i, i32 %i.h, i32 4 ; 2 uses
  %i.j = icmp eq i32 %.sink.i.i, 0
  br i1 %i.j, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = add i32 %.sink.i.i, -1                   ; 2 uses
  %i.l = load ptr, ptr %1, align 8, !tbaa !148    ; 2 uses
  %i.m = ptrtoint ptr %i.l to i64
  %i.n = mul i64 %i.m, -4658895280553007687       ; 2 uses
  %i.o = lshr i64 %i.n, 31
  %i.p = xor i64 %i.o, %i.n
  %i.q = trunc i64 %i.p to i32
  %i.r = and i32 %i.k, %i.q                       ; 3 uses
  %i.s = zext i32 %i.r to i64                     ; 2 uses
  %i.t = getelementptr inbounds nuw [16 x i8], ptr %.sink2.i.i, i64 %i.s ; 2 uses
  %i.u = lshr i64 %i.s, 5
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %.sink1.i.i, i64 %i.u
  %i.w = load i32, ptr %i.v, align 4, !tbaa !94
  %i.x = and i32 %i.r, 31
  %i.y = lshr i32 %i.w, %i.x
  %i.z = trunc i32 %i.y to i1
  br i1 %i.z, label %.lr.ph, label %.thread, !prof !150

.lr.ph:                                           ; preds = %bb.b, %bb.c
  %i.aa = phi ptr [ %i.ag, %bb.c ], [ %i.t, %bb.b ] ; 2 uses
  %.024 = phi i32 [ %i.ae, %bb.c ], [ %i.r, %bb.b ]
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !148
  %i.ac = icmp eq ptr %i.l, %i.ab                 ; 3 uses
  br i1 %i.ac, label %.thread, label %bb.c, !prof !81

bb.c:                                             ; preds = %.lr.ph
  %i.ad = add nuw i32 %.024, 1
  %i.ae = and i32 %i.ad, %i.k                     ; 3 uses
  %i.af = zext i32 %i.ae to i64                   ; 2 uses
  %i.ag = getelementptr inbounds nuw [16 x i8], ptr %.sink2.i.i, i64 %i.af ; 2 uses
  %i.ah = lshr i64 %i.af, 5
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %.sink1.i.i, i64 %i.ah
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !94
  %i.ak = and i32 %i.ae, 31
  %i.al = lshr i32 %i.aj, %i.ak
  %i.am = trunc i32 %i.al to i1
  br i1 %i.am, label %.lr.ph, label %.thread, !prof !151, !llvm.loop !32

.thread:                                          ; preds = %.lr.ph, %bb.c, %bb.b, %bb.a
  %.lcssa28.sink = phi ptr [ %i.t, %bb.b ], [ null, %bb.a ], [ %i.ag, %bb.c ], [ %i.aa, %.lr.ph ]
  %.2 = phi i1 [ false, %bb.b ], [ false, %bb.a ], [ %i.ac, %bb.c ], [ %i.ac, %.lr.ph ]
  store ptr %.lcssa28.sink, ptr %2, align 8, !tbaa !378
  ret i1 %.2
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_10BasicBlockES3_Lj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S3_EEEES3_S3_S5_S8_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %1) local_unnamed_addr #6 comdat align 2 {
bb.a:
  %2 = alloca %"class.llvm::SmallDenseMap.644", align 8 ; 16 uses
  %i.a = icmp ult i32 %1, 5                       ; 2 uses
  br i1 %i.a, label %_ZN4llvm13SmallDenseMapIPNS_10BasicBlockES2_Lj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S2_EEE17roundUpNumBucketsEj.exit.thread, label %_ZN4llvm13SmallDenseMapIPNS_10BasicBlockES2_Lj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S2_EEE17roundUpNumBucketsEj.exit

_ZN4llvm13SmallDenseMapIPNS_10BasicBlockES2_Lj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S2_EEE17roundUpNumBucketsEj.exit.thread: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 72
  br label %_ZN4llvm13SmallDenseMapIPNS_10BasicBlockES2_Lj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S2_EEEC2EjNS_12DenseMapBaseIS8_S2_S2_S4_S7_E16ExactBucketCountE.exit

_ZN4llvm13SmallDenseMapIPNS_10BasicBlockES2_Lj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S2_EEE17roundUpNumBucketsEj.exit: ; preds = %bb.a
  %i.c = add i32 %1, -1
  %i.d = zext i32 %i.c to i64                     ; 2 uses
  %i.e = lshr i64 %i.d, 1
  %i.f = or i64 %i.e, %i.d                        ; 2 uses
  %i.g = lshr i64 %i.f, 2
  %i.h = or i64 %i.g, %i.f                        ; 2 uses
  %i.i = lshr i64 %i.h, 4
  %i.j = or i64 %i.i, %i.h                        ; 2 uses
  %i.k = lshr i64 %i.j, 8
  %i.l = or i64 %i.k, %i.j                        ; 2 uses
  %i.m = lshr i64 %i.l, 16
  %i.n = or i64 %i.m, %i.l
  %i.o = trunc nuw i64 %i.n to i32
  %i.p = add i32 %i.o, 1
  %.sroa.speculated.i = tail call i32 @llvm.umax.i32(i32 %i.p, i32 64) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  %i.q = zext i32 %.sroa.speculated.i to i64      ; 2 uses
  %i.r = shl nuw nsw i64 %i.q, 4                  ; 2 uses
  %i.s = add nuw nsw i64 %i.q, 31
  %i.t = lshr i64 %i.s, 3
  %i.u = and i64 %i.t, 1073741820                 ; 2 uses
  %i.v = add nuw nsw i64 %i.u, %i.r
  %i.w = tail call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef %i.v, i64 noundef 8) #24 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %i.w, ptr %i.x, align 8, !tbaa !202
  %i.y = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.r ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 16
  store ptr %i.y, ptr %i.z, align 8, !tbaa !202
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 24
  store i32 %.sroa.speculated.i, ptr %i.aa, align 8, !tbaa !202
  br label %_ZN4llvm13SmallDenseMapIPNS_10BasicBlockES2_Lj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S2_EEEC2EjNS_12DenseMapBaseIS8_S2_S2_S4_S7_E16ExactBucketCountE.exit

_ZN4llvm13SmallDenseMapIPNS_10BasicBlockES2_Lj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S2_EEEC2EjNS_12DenseMapBaseIS8_S2_S2_S4_S7_E16ExactBucketCountE.exit: ; preds = %_ZN4llvm13SmallDenseMapIPNS_10BasicBlockES2_Lj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S2_EEE17roundUpNumBucketsEj.exit.thread, %_ZN4llvm13SmallDenseMapIPNS_10BasicBlockES2_Lj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S2_EEE17roundUpNumBucketsEj.exit
  %.0.i4 = phi i32 [ 4, %_ZN4llvm13SmallDenseMapIPNS_10BasicBlockES2_Lj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S2_EEE17roundUpNumBucketsEj.exit.thread ], [ %.sroa.speculated.i, %_ZN4llvm13SmallDenseMapIPNS_10BasicBlockES2_Lj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S2_EEE17roundUpNumBucketsEj.exit ] ; 3 uses
  %.sink.i = phi i32 [ 1, %_ZN4llvm13SmallDenseMapIPNS_10BasicBlockES2_Lj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S2_EEE17roundUpNumBucketsEj.exit.thread ], [ 0, %_ZN4llvm13SmallDenseMapIPNS_10BasicBlockES2_Lj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S2_EEE17roundUpNumBucketsEj.exit ]
  %i.ab = phi i64 [ 4, %_ZN4llvm13SmallDenseMapIPNS_10BasicBlockES2_Lj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S2_EEE17roundUpNumBucketsEj.exit.thread ], [ %i.u, %_ZN4llvm13SmallDenseMapIPNS_10BasicBlockES2_Lj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S2_EEE17roundUpNumBucketsEj.exit ]
  %i.ac = phi ptr [ %i.b, %_ZN4llvm13SmallDenseMapIPNS_10BasicBlockES2_Lj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S2_EEE17roundUpNumBucketsEj.exit.thread ], [ %i.y, %_ZN4llvm13SmallDenseMapIPNS_10BasicBlockES2_Lj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S2_EEE17roundUpNumBucketsEj.exit ]
  store i32 %.sink.i, ptr %2, align 8
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.ac, i8 0, i64 %i.ab, i1 false)
  call void @_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_10BasicBlockES3_Lj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S3_EEEES3_S3_S5_S8_E8moveFromERS9_(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(80) %0)
  %i.ad = load i32, ptr %2, align 8               ; 3 uses
  %i.ae = and i32 %i.ad, 1
  %.not.i = icmp eq i32 %i.ae, 0
  br i1 %.not.i, label %_ZN4llvm13SmallDenseMapIPNS_10BasicBlockES2_Lj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S2_EEE13maybeMoveFastEOS8_.exit.thread, label %_ZN4llvm13SmallDenseMapIPNS_10BasicBlockES2_Lj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S2_EEE13maybeMoveFastEOS8_.exit

_ZN4llvm13SmallDenseMapIPNS_10BasicBlockES2_Lj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S2_EEE13maybeMoveFastEOS8_.exit.thread: ; preds = %_ZN4llvm13SmallDenseMapIPNS_10BasicBlockES2_Lj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S2_EEEC2EjNS_12DenseMapBaseIS8_S2_S2_S4_S7_E16ExactBucketCountE.exit
  store i32 %i.ad, ptr %0, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ag, ptr noundef nonnull align 8 dereferenceable(24) %i.af, i64 24, i1 false), !tbaa.struct !379
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 24
  store i32 0, ptr %i.ah, align 8, !tbaa !202
  br label %bb.b

_ZN4llvm13SmallDenseMapIPNS_10BasicBlockES2_Lj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S2_EEE13maybeMoveFastEOS8_.exit: ; preds = %_ZN4llvm13SmallDenseMapIPNS_10BasicBlockES2_Lj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S2_EEEC2EjNS_12DenseMapBaseIS8_S2_S2_S4_S7_E16ExactBucketCountE.exit
  br i1 %i.a, label %.thread.i, label %_ZN4llvm13SmallDenseMapIPNS_10BasicBlockES2_Lj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S2_EEE15allocateBucketsEj.exit.i

.thread.i:                                        ; preds = %_ZN4llvm13SmallDenseMapIPNS_10BasicBlockES2_Lj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S2_EEE13maybeMoveFastEOS8_.exit
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 72
  br label %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_10BasicBlockES3_Lj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S3_EEEES3_S3_S5_S8_E24initWithExactBucketCountEj.exit

_ZN4llvm13SmallDenseMapIPNS_10BasicBlockES2_Lj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S2_EEE15allocateBucketsEj.exit.i: ; preds = %_ZN4llvm13SmallDenseMapIPNS_10BasicBlockES2_Lj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S2_EEE13maybeMoveFastEOS8_.exit
  %i.aj = load i32, ptr %0, align 8
  %i.ak = and i32 %i.aj, -2
  store i32 %i.ak, ptr %0, align 8
  %i.al = zext i32 %.0.i4 to i64                  ; 2 uses
  %i.am = shl nuw nsw i64 %i.al, 4                ; 2 uses
  %i.an = add nuw nsw i64 %i.al, 31
  %i.ao = lshr i64 %i.an, 3
  %i.ap = and i64 %i.ao, 1073741820
  %i.aq = add nuw nsw i64 %i.ap, %i.am
  %i.ar = call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef %i.aq, i64 noundef 8) #24 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ar, ptr %i.as, align 8, !tbaa !202
  %i.at = getelementptr inbounds nuw i8, ptr %i.ar, i64 %i.am ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.at, ptr %i.au, align 8, !tbaa !202
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 %.0.i4, ptr %i.av, align 8, !tbaa !202
  %.pre.i = load i32, ptr %0, align 8
  %.pre.fr.i = freeze i32 %.pre.i
  %i.aw = and i32 %.pre.fr.i, 1                   ; 2 uses
  %.not.i.i.i.i = icmp eq i32 %i.aw, 0            ; 2 uses
  %i.ax = select i1 %.not.i.i.i.i, i32 %.0.i4, i32 4
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 72
  %spec.select.i = select i1 %.not.i.i.i.i, ptr %i.at, ptr %i.ay
  %i.az = zext i32 %i.ax to i64
  %i.ba = add nuw nsw i64 %i.az, 31
  %i.bb = lshr i64 %i.ba, 3
  %i.bc = and i64 %i.bb, 1073741820
  br label %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_10BasicBlockES3_Lj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S3_EEEES3_S3_S5_S8_E24initWithExactBucketCountEj.exit

_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_10BasicBlockES3_Lj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S3_EEEES3_S3_S5_S8_E24initWithExactBucketCountEj.exit: ; preds = %.thread.i, %_ZN4llvm13SmallDenseMapIPNS_10BasicBlockES2_Lj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S2_EEE15allocateBucketsEj.exit.i
  %.sink = phi i32 [ 1, %.thread.i ], [ %i.aw, %_ZN4llvm13SmallDenseMapIPNS_10BasicBlockES2_Lj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S2_EEE15allocateBucketsEj.exit.i ]
  %i.bd = phi i64 [ 4, %.thread.i ], [ %i.bc, %_ZN4llvm13SmallDenseMapIPNS_10BasicBlockES2_Lj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S2_EEE15allocateBucketsEj.exit.i ]
  %i.be = phi ptr [ %i.ai, %.thread.i ], [ %spec.select.i, %_ZN4llvm13SmallDenseMapIPNS_10BasicBlockES2_Lj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S2_EEE15allocateBucketsEj.exit.i ]
  store i32 %.sink, ptr %0, align 8
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.be, i8 0, i64 %i.bd, i1 false)
  call void @_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_10BasicBlockES3_Lj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S3_EEEES3_S3_S5_S8_E8moveFromERS9_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(80) %2)
  %.pre = load i32, ptr %2, align 8
  br label %bb.b

bb.b:                                             ; preds = %_ZN4llvm13SmallDenseMapIPNS_10BasicBlockES2_Lj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S2_EEE13maybeMoveFastEOS8_.exit.thread, %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_10BasicBlockES3_Lj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S3_EEEES3_S3_S5_S8_E24initWithExactBucketCountEj.exit
  %i.bf = phi i32 [ %i.ad, %_ZN4llvm13SmallDenseMapIPNS_10BasicBlockES2_Lj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S2_EEE13maybeMoveFastEOS8_.exit.thread ], [ %.pre, %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_10BasicBlockES3_Lj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S3_EEEES3_S3_S5_S8_E24initWithExactBucketCountEj.exit ]
  %i.bg = and i32 %i.bf, 1
  %.not.i.i = icmp eq i32 %i.bg, 0
  br i1 %.not.i.i, label %bb.c, label %_ZN4llvm13SmallDenseMapIPNS_10BasicBlockES2_Lj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S2_EEED2Ev.exit
end_hunk_9
