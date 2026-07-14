inline.NumInlined: 117
inline.NumDeleted: 34
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 8
begin_hunk_0_@_ZN10duckdb_lz426LZ4_compress_fast_continueEPNS_12LZ4_stream_uEPKcPciii:bb.a
  %i.az = phi i32 [ %storemerge99, %bb.j ], [ %i.ak, %bb.i ] ; 4 uses
  %i.ba = icmp eq ptr %.089, %1
  br i1 %i.ba, label %bb.l, label %bb.o

bb.l:                                             ; preds = %bb.k
  %i.bb = icmp ult i32 %i.az, 65536
  %i.bc = icmp ult i32 %i.az, %i.ab
  %or.cond114 = and i1 %i.bb, %i.bc
  br i1 %or.cond114, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.bd = tail call fastcc noundef i32 @_ZN10duckdb_lz4L20LZ4_compress_genericEPNS_21LZ4_stream_t_internalEPKcPciPiiNS_23limitedOutput_directiveENS_11tableType_tENS_14dict_directiveENS_19dictIssue_directiveEi(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef null, i32 noundef %4, i32 noundef 1, i32 noundef 2, i32 noundef 1, i32 noundef 1, i32 noundef %spec.store.select2)
  br label %bb.w

bb.n:                                             ; preds = %bb.l
  %i.be = tail call fastcc noundef i32 @_ZN10duckdb_lz4L20LZ4_compress_genericEPNS_21LZ4_stream_t_internalEPKcPciPiiNS_23limitedOutput_directiveENS_11tableType_tENS_14dict_directiveENS_19dictIssue_directiveEi(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef null, i32 noundef %4, i32 noundef 1, i32 noundef 2, i32 noundef 1, i32 noundef 0, i32 noundef %spec.store.select2)
  br label %bb.w

bb.o:                                             ; preds = %bb.k
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 16392
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !13 ; 2 uses
  %.not100 = icmp eq ptr %i.bg, null
  br i1 %.not100, label %bb.s, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bh = icmp sgt i32 %3, 4096
  br i1 %i.bh, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16416) %0, ptr noundef nonnull align 8 dereferenceable(16416) %i.bg, i64 16416, i1 false)
  %i.bi = tail call fastcc noundef i32 @_ZN10duckdb_lz4L20LZ4_compress_genericEPNS_21LZ4_stream_t_internalEPKcPciPiiNS_23limitedOutput_directiveENS_11tableType_tENS_14dict_directiveENS_19dictIssue_directiveEi(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef null, i32 noundef %4, i32 noundef 1, i32 noundef 2, i32 noundef 2, i32 noundef 0, i32 noundef %spec.store.select2)
  br label %bb.v

bb.r:                                             ; preds = %bb.p
  %i.bj = tail call fastcc noundef i32 @_ZN10duckdb_lz4L20LZ4_compress_genericEPNS_21LZ4_stream_t_internalEPKcPciPiiNS_23limitedOutput_directiveENS_11tableType_tENS_14dict_directiveENS_19dictIssue_directiveEi(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef null, i32 noundef %4, i32 noundef 1, i32 noundef 2, i32 noundef 3, i32 noundef 0, i32 noundef %spec.store.select2)
  br label %bb.v

bb.s:                                             ; preds = %bb.o
  %i.bk = icmp ult i32 %i.az, 65536
  %i.bl = icmp ult i32 %i.az, %i.ab
  %or.cond115 = and i1 %i.bk, %i.bl
  br i1 %or.cond115, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.bm = tail call fastcc noundef i32 @_ZN10duckdb_lz4L20LZ4_compress_genericEPNS_21LZ4_stream_t_internalEPKcPciPiiNS_23limitedOutput_directiveENS_11tableType_tENS_14dict_directiveENS_19dictIssue_directiveEi(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef null, i32 noundef %4, i32 noundef 1, i32 noundef 2, i32 noundef 2, i32 noundef 1, i32 noundef %spec.store.select2)
  br label %bb.v

bb.u:                                             ; preds = %bb.s
  %i.bn = tail call fastcc noundef i32 @_ZN10duckdb_lz4L20LZ4_compress_genericEPNS_21LZ4_stream_t_internalEPKcPciPiiNS_23limitedOutput_directiveENS_11tableType_tENS_14dict_directiveENS_19dictIssue_directiveEi(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef null, i32 noundef %4, i32 noundef 1, i32 noundef 2, i32 noundef 2, i32 noundef 0, i32 noundef %spec.store.select2)
  br label %bb.v

bb.v:                                             ; preds = %bb.t, %bb.u, %bb.q, %bb.r
  %.0 = phi i32 [ %i.bi, %bb.q ], [ %i.bj, %bb.r ], [ %i.bm, %bb.t ], [ %i.bn, %bb.u ]
  store ptr %1, ptr %i.an, align 8, !tbaa !14
  store i32 %3, ptr %i.a, align 8, !tbaa !15
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.n, %bb.m
  %.088 = phi i32 [ %i.bd, %bb.m ], [ %i.be, %bb.n ], [ %.0, %bb.v ]
  ret i32 %.088
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef i32 @_ZN10duckdb_lz425LZ4_compress_forceExtDictEPNS_12LZ4_stream_uEPKcPci(ptr nofree noundef captures(none) %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16400 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !8    ; 3 uses
  %i.c = add i32 %i.b, %3
  %i.d = icmp ugt i32 %i.c, -2147483648
  br i1 %i.d, label %vector.ph, label %._ZN10duckdb_lz4L15LZ4_renormDictTEPNS_21LZ4_stream_t_internalEi.exit_crit_edge

._ZN10duckdb_lz4L15LZ4_renormDictTEPNS_21LZ4_stream_t_internalEi.exit_crit_edge: ; preds = %bb.a
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 16408
  %.pre = load i32, ptr %.phi.trans.insert, align 8, !tbaa !15
  br label %_ZN10duckdb_lz4L15LZ4_renormDictTEPNS_21LZ4_stream_t_internalEi.exit

vector.ph:                                        ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16384 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !14
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16408 ; 3 uses
  %i.h = load i32, ptr %i.g, align 8, !tbaa !15
  %i.i = add i32 %i.b, -65536
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.i, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %index ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16 ; 2 uses
  %wide.load = load <4 x i32>, ptr %i.j, align 4, !tbaa !3
  %wide.load21 = load <4 x i32>, ptr %i.k, align 4, !tbaa !3
  %i.l = tail call <4 x i32> @llvm.usub.sat.v4i32(<4 x i32> %wide.load, <4 x i32> %broadcast.splat)
  %i.m = tail call <4 x i32> @llvm.usub.sat.v4i32(<4 x i32> %wide.load21, <4 x i32> %broadcast.splat)
  store <4 x i32> %i.l, ptr %i.j, align 4, !tbaa !3
  store <4 x i32> %i.m, ptr %i.k, align 4, !tbaa !3
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.n = icmp eq i64 %index.next, 4096
  br i1 %i.n, label %middle.block, label %vector.body, !llvm.loop !33

middle.block:                                     ; preds = %vector.body
  %i.o = zext i32 %i.h to i64
  %i.p = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.o
  store i32 65536, ptr %i.a, align 8, !tbaa !8
  %i.q = load i32, ptr %i.g, align 8, !tbaa !15   ; 2 uses
  %i.r = icmp ugt i32 %i.q, 65536
  br i1 %i.r, label %bb.b, label %bb.c

bb.b:                                             ; preds = %middle.block
  store i32 65536, ptr %i.g, align 8, !tbaa !15
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %middle.block
  %i.s = phi i32 [ 65536, %bb.b ], [ %i.q, %middle.block ] ; 2 uses
  %i.t = zext nneg i32 %i.s to i64
  %i.u = sub nsw i64 0, %i.t
  %i.v = getelementptr inbounds i8, ptr %i.p, i64 %i.u
  store ptr %i.v, ptr %i.e, align 8, !tbaa !14
  br label %_ZN10duckdb_lz4L15LZ4_renormDictTEPNS_21LZ4_stream_t_internalEi.exit

_ZN10duckdb_lz4L15LZ4_renormDictTEPNS_21LZ4_stream_t_internalEi.exit: ; preds = %._ZN10duckdb_lz4L15LZ4_renormDictTEPNS_21LZ4_stream_t_internalEi.exit_crit_edge, %bb.c
  %i.w = phi i32 [ %i.b, %._ZN10duckdb_lz4L15LZ4_renormDictTEPNS_21LZ4_stream_t_internalEi.exit_crit_edge ], [ 65536, %bb.c ]
  %i.x = phi i32 [ %.pre, %._ZN10duckdb_lz4L15LZ4_renormDictTEPNS_21LZ4_stream_t_internalEi.exit_crit_edge ], [ %i.s, %bb.c ] ; 2 uses
  %i.y = icmp ult i32 %i.x, 65536
  %i.z = icmp ult i32 %i.x, %i.w
  %or.cond = and i1 %i.y, %i.z
  %. = zext i1 %or.cond to i32
  %i.aa = tail call fastcc noundef i32 @_ZN10duckdb_lz4L20LZ4_compress_genericEPNS_21LZ4_stream_t_internalEPKcPciPiiNS_23limitedOutput_directiveENS_11tableType_tENS_14dict_directiveENS_19dictIssue_directiveEi(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef null, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 2, i32 noundef %., i32 noundef 1)
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 16408
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16384
  store ptr %1, ptr %i.ac, align 8, !tbaa !14
  store i32 %3, ptr %i.ab, align 8, !tbaa !15
  ret i32 %i.aa
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define noundef range(i32 0, 65537) i32 @_ZN10duckdb_lz412LZ4_saveDictEPNS_12LZ4_stream_uEPci(ptr nofree noundef captures(none) %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #11 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16408 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !15   ; 2 uses
  %spec.store.select = tail call i32 @llvm.umin.i32(i32 %2, i32 %i.b) ; 2 uses
  %spec.select = tail call i32 @llvm.umin.i32(i32 %spec.store.select, i32 65536) ; 3 uses
  %.not = icmp eq i32 %spec.store.select, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16384
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !14
  %i.e = zext i32 %i.b to i64
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.e
  %i.g = zext nneg i32 %spec.select to i64        ; 2 uses
  %i.h = sub nsw i64 0, %i.g
  %i.i = getelementptr inbounds i8, ptr %i.f, i64 %i.h
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %1, ptr nonnull align 1 %i.i, i64 %i.g, i1 false)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16384
  store ptr %1, ptr %i.j, align 8, !tbaa !14
  store i32 %spec.select, ptr %i.a, align 8, !tbaa !15
  ret i32 %spec.select
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef i64 @_ZN10duckdb_lz425read_long_length_no_checkEPPKh(ptr nofree noundef captures(none) %0) local_unnamed_addr #12 {
bb.a:
  %.promoted = load ptr, ptr %0, align 8, !tbaa !34
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %bb.a
  %i.a = phi ptr [ %.promoted, %bb.a ], [ %i.d, %bb.b ] ; 2 uses
  %.0 = phi i64 [ 0, %bb.a ], [ %i.e, %bb.b ]
  %i.b = load i8, ptr %i.a, align 1, !tbaa !7     ; 2 uses
  %i.c = zext i8 %i.b to i64
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 1 ; 2 uses
  store ptr %i.d, ptr %0, align 8, !tbaa !34
  %i.e = add i64 %.0, %i.c                        ; 2 uses
  %i.f = icmp eq i8 %i.b, -1
  br i1 %i.f, label %bb.b, label %bb.c, !llvm.loop !35

bb.c:                                             ; preds = %bb.b
  ret i64 %i.e
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define noundef i32 @_ZN10duckdb_lz419LZ4_decompress_safeEPKcPcii(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #1 {
bb.a:
  %i.a = tail call fastcc noundef i32 @_ZN10duckdb_lz4L22LZ4_decompress_genericEPKcPciiNS_18earlyEnd_directiveENS_14dict_directiveEPKhS6_m(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef 0, i32 noundef 0, ptr noundef %1, ptr noundef null, i64 noundef 0)
  ret i32 %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc noundef i32 @_ZN10duckdb_lz4L22LZ4_decompress_genericEPKcPciiNS_18earlyEnd_directiveENS_14dict_directiveEPKhS6_m(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef range(i32 0, 2) %4, i32 noundef range(i32 0, 3) %5, ptr noundef %6, ptr nofree noundef readonly captures(address_is_null) %7, i64 noundef %8) unnamed_addr #1 {
bb.a:
  %9 = ptrtoint ptr %1 to i64                     ; 2 uses
  %i.a = icmp eq ptr %0, null
  %i.b = icmp slt i32 %3, 0
  %or.cond = or i1 %i.a, %i.b
  br i1 %or.cond, label %bb.bt, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = sext i32 %2 to i64
  %i.d = getelementptr inbounds i8, ptr %0, i64 %i.c ; 12 uses
  %i.e = zext nneg i32 %3 to i64                  ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 %i.e ; 13 uses
  %i.g = icmp eq ptr %7, null
  %i.h = getelementptr inbounds nuw i8, ptr %7, i64 %8
  %i.i = select i1 %i.g, ptr null, ptr %i.h       ; 4 uses
  %i.j = icmp ult i64 %8, 65536                   ; 3 uses
  %i.k = getelementptr inbounds i8, ptr %i.d, i64 -16 ; 2 uses
  %i.l = getelementptr inbounds i8, ptr %i.f, i64 -32 ; 3 uses
  %i.m = icmp eq i32 %3, 0
  br i1 %i.m, label %bb.c, label %bb.f, !prof !19

bb.c:                                             ; preds = %bb.b
  %.not453 = icmp eq i32 %4, 0
  br i1 %.not453, label %bb.d, label %bb.bt

bb.d:                                             ; preds = %bb.c
  %i.n = icmp eq i32 %2, 1
  br i1 %i.n, label %bb.e, label %bb.bt

bb.e:                                             ; preds = %bb.d
  %i.o = load i8, ptr %0, align 1, !tbaa !7
  %i.p = icmp ne i8 %i.o, 0
  %i.q = sext i1 %i.p to i32
  br label %bb.bt

bb.f:                                             ; preds = %bb.b
  %i.r = icmp eq i32 %2, 0
  br i1 %i.r, label %bb.bt, label %bb.g, !prof !19

bb.g:                                             ; preds = %bb.f
  %i.s = ptrtoint ptr %i.f to i64                 ; 5 uses
  %i.t = ptrtoint ptr %1 to i64
  %i.u = icmp samesign ult i32 %3, 64
  br i1 %i.u, label %.preheader596, label %.preheader604

.preheader604:                                    ; preds = %bb.g
  %i.v = getelementptr inbounds i8, ptr %i.d, i64 -17
  %i.w = getelementptr inbounds i8, ptr %i.d, i64 -15 ; 2 uses
  %10 = ptrtoint ptr %i.w to i64
  %i.x = getelementptr inbounds i8, ptr %i.d, i64 -32
  %i.y = getelementptr inbounds i8, ptr %i.f, i64 -64 ; 2 uses
  %i.z = icmp eq i32 %5, 1
  %i.aa = getelementptr inbounds i8, ptr %i.d, i64 -4 ; 2 uses
  %11 = ptrtoint ptr %i.aa to i64
  %i.ab = icmp eq i32 %5, 2
  %i.ac = getelementptr inbounds i8, ptr %i.f, i64 -5
  %.not443 = icmp eq i32 %4, 0
  %i.ad = ptrtoint ptr %6 to i64                  ; 4 uses
  %i.ae = add i64 %i.ad, 1
  br label %bb.h

bb.h:                                             ; preds = %.backedge, %.preheader604
  %.0539 = phi ptr [ %0, %.preheader604 ], [ %.0539.be, %.backedge ] ; 3 uses
  %.0362 = phi ptr [ %1, %.preheader604 ], [ %.0362.be, %.backedge ] ; 7 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.0539, i64 1 ; 9 uses
  %i.ag = load i8, ptr %.0539, align 1, !tbaa !7
  %i.ah = zext i8 %i.ag to i32                    ; 4 uses
  %i.ai = lshr i32 %i.ah, 4                       ; 2 uses
  %i.aj = zext nneg i32 %i.ai to i64              ; 3 uses
  %i.ak = icmp eq i32 %i.ai, 15
  br i1 %i.ak, label %bb.i, label %bb.n

bb.i:                                             ; preds = %bb.h
  %.not12.i = icmp ult ptr %i.af, %i.w
  br i1 %.not12.i, label %.lr.ph990, label %_ZN10duckdb_lz4L14LZ4_wildCopy32EPvPKvS0_.exit.thread, !prof !36

.lr.ph990:                                        ; preds = %bb.i
  %.promoted13.i = ptrtoint ptr %i.af to i64
  %i.al = tail call i64 @llvm.usub.sat.i64(i64 %10, i64 %.promoted13.i)
  %scevgep.i = getelementptr i8, ptr %i.af, i64 %i.al
  %i.am = getelementptr inbounds nuw i8, ptr %.0539, i64 2
  br label %bb.k

bb.j:                                             ; preds = %bb.k
  %i.an = getelementptr inbounds nuw i8, ptr %i.ao, i64 1 ; 2 uses
  %exitcond.i = icmp eq ptr %i.ao, %scevgep.i
  br i1 %exitcond.i, label %_ZN10duckdb_lz4L14LZ4_wildCopy32EPvPKvS0_.exit.thread, label %bb.k, !prof !37, !llvm.loop !38

bb.k:                                             ; preds = %.lr.ph990, %bb.j
  %i.ao = phi ptr [ %i.am, %.lr.ph990 ], [ %i.an, %bb.j ] ; 9 uses
  %.0.i988 = phi i64 [ 0, %.lr.ph990 ], [ %i.as, %bb.j ]
  %i.ap = phi ptr [ %i.af, %.lr.ph990 ], [ %i.ao, %bb.j ]
  %i.aq = load i8, ptr %i.ap, align 1, !tbaa !7   ; 2 uses
  %i.ar = zext i8 %i.aq to i64
  %i.as = add i64 %.0.i988, %i.ar                 ; 3 uses
  %i.at = icmp eq i8 %i.aq, -1
  br i1 %i.at, label %bb.j, label %_ZN10duckdb_lz4L20read_variable_lengthEPPKhS1_i.exit, !llvm.loop !38

_ZN10duckdb_lz4L20read_variable_lengthEPPKhS1_i.exit: ; preds = %bb.k
  %i.au = icmp eq i64 %i.as, -1
  br i1 %i.au, label %_ZN10duckdb_lz4L14LZ4_wildCopy32EPvPKvS0_.exit.thread, label %bb.l

bb.l:                                             ; preds = %_ZN10duckdb_lz4L20read_variable_lengthEPPKhS1_i.exit
  %i.av = add i64 %i.as, 15                       ; 5 uses
  %i.aw = ptrtoint ptr %.0362 to i64
  %i.ax = xor i64 %i.aw, -1
  %i.ay = icmp ugt i64 %i.av, %i.ax
  %i.az = ptrtoint ptr %i.ao to i64
  %i.ba = xor i64 %i.az, -1
  %i.bb = icmp ugt i64 %i.av, %i.ba
  %or.cond583 = select i1 %i.ay, i1 true, i1 %i.bb, !prof !39
  br i1 %or.cond583, label %_ZN10duckdb_lz4L14LZ4_wildCopy32EPvPKvS0_.exit.thread, label %bb.m, !prof !39

bb.m:                                             ; preds = %bb.l
  %i.bc = getelementptr inbounds nuw i8, ptr %.0362, i64 %i.av ; 4 uses
  %i.bd = icmp ugt ptr %i.bc, %i.l
  %i.be = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.av ; 2 uses
  %i.bf = icmp ugt ptr %i.be, %i.x
  %or.cond456 = select i1 %i.bd, i1 true, i1 %i.bf
  br i1 %or.cond456, label %_ZN10duckdb_lz4L14LZ4_wildCopy32EPvPKvS0_.exit, label %.preheader602

.preheader602:                                    ; preds = %bb.m, %.preheader602
  %.011.i485 = phi ptr [ %i.bj, %.preheader602 ], [ %i.ao, %bb.m ] ; 3 uses
  %.0.i486 = phi ptr [ %i.bi, %.preheader602 ], [ %.0362, %bb.m ] ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %.0.i486, ptr noundef nonnull align 1 dereferenceable(16) %.011.i485, i64 16, i1 false)
  %i.bg = getelementptr inbounds nuw i8, ptr %.0.i486, i64 16
  %i.bh = getelementptr inbounds nuw i8, ptr %.011.i485, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.bg, ptr noundef nonnull align 1 dereferenceable(16) %i.bh, i64 16, i1 false)
  %i.bi = getelementptr inbounds nuw i8, ptr %.0.i486, i64 32 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %.011.i485, i64 32
  %i.bk = icmp ult ptr %i.bi, %i.bc
  br i1 %i.bk, label %.preheader602, label %_ZN10duckdb_lz4L14LZ4_wildCopy32EPvPKvS0_.exit.thread558, !llvm.loop !40

bb.n:                                             ; preds = %bb.h
  %i.bl = getelementptr inbounds nuw i8, ptr %.0362, i64 %i.aj ; 2 uses
  %i.bm = icmp ugt ptr %i.af, %i.v
  br i1 %i.bm, label %_ZN10duckdb_lz4L14LZ4_wildCopy32EPvPKvS0_.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %.0362, ptr noundef nonnull align 1 dereferenceable(16) %i.af, i64 16, i1 false)
  %i.bn = getelementptr inbounds nuw i8, ptr %i.af, i64 %i.aj
  br label %_ZN10duckdb_lz4L14LZ4_wildCopy32EPvPKvS0_.exit.thread558

_ZN10duckdb_lz4L14LZ4_wildCopy32EPvPKvS0_.exit.thread558: ; preds = %.preheader602, %bb.o
  %.2541 = phi ptr [ %i.bn, %bb.o ], [ %i.be, %.preheader602 ] ; 3 uses
  %.2 = phi ptr [ %i.bl, %bb.o ], [ %i.bc, %.preheader602 ] ; 20 uses
  %.21010 = ptrtoint ptr %.2 to i64
  %.val484 = load i16, ptr %.2541, align 1, !tbaa !7 ; 5 uses
  %i.bo = zext i16 %.val484 to i64                ; 6 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %.2541, i64 2 ; 8 uses
  %i.bq = sub nsw i64 0, %i.bo
  %i.br = getelementptr inbounds i8, ptr %.2, i64 %i.bq ; 12 uses
  %i.bs = and i32 %i.ah, 15                       ; 2 uses
  %i.bt = icmp eq i32 %i.bs, 15
  br i1 %i.bt, label %bb.p, label %bb.t

bb.p:                                             ; preds = %_ZN10duckdb_lz4L14LZ4_wildCopy32EPvPKvS0_.exit.thread558
  %.promoted13.i490 = ptrtoint ptr %i.bp to i64
  %i.bu = tail call i64 @llvm.usub.sat.i64(i64 %11, i64 %.promoted13.i490)
  %scevgep.i491 = getelementptr i8, ptr %i.bp, i64 %i.bu
  %i.bv = getelementptr inbounds nuw i8, ptr %.2541, i64 3 ; 2 uses
  %exitcond.i493993.not = icmp ugt ptr %i.aa, %i.bp
  br i1 %exitcond.i493993.not, label %.lr.ph996, label %_ZN10duckdb_lz4L14LZ4_wildCopy32EPvPKvS0_.exit.thread, !prof !28

bb.q:                                             ; preds = %.lr.ph996
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bx, i64 1 ; 2 uses
  %exitcond.i493 = icmp eq ptr %i.bx, %scevgep.i491
  br i1 %exitcond.i493, label %_ZN10duckdb_lz4L14LZ4_wildCopy32EPvPKvS0_.exit.thread, label %.lr.ph996, !prof !37, !llvm.loop !38

.lr.ph996:                                        ; preds = %bb.p, %bb.q
  %i.bx = phi ptr [ %i.bw, %bb.q ], [ %i.bv, %bb.p ] ; 7 uses
  %.0.i492994 = phi i64 [ %i.cb, %bb.q ], [ 0, %bb.p ]
  %i.by = phi ptr [ %i.bx, %bb.q ], [ %i.bp, %bb.p ]
  %i.bz = load i8, ptr %i.by, align 1, !tbaa !7   ; 2 uses
  %i.ca = zext i8 %i.bz to i64
  %i.cb = add i64 %.0.i492994, %i.ca              ; 3 uses
  %i.cc = icmp eq i8 %i.bz, -1
  br i1 %i.cc, label %bb.q, label %_ZN10duckdb_lz4L20read_variable_lengthEPPKhS1_i.exit494, !llvm.loop !38

_ZN10duckdb_lz4L20read_variable_lengthEPPKhS1_i.exit494: ; preds = %.lr.ph996
  %i.cd = icmp eq i64 %i.cb, -1
  br i1 %i.cd, label %_ZN10duckdb_lz4L14LZ4_wildCopy32EPvPKvS0_.exit.thread, label %bb.r

bb.r:                                             ; preds = %_ZN10duckdb_lz4L20read_variable_lengthEPPKhS1_i.exit494
  %i.ce = add i64 %i.cb, 19                       ; 4 uses
  %i.cf = ptrtoint ptr %.2 to i64
  %i.cg = xor i64 %i.cf, -1
  %i.ch = icmp ugt i64 %i.ce, %i.cg
  %i.ci = getelementptr inbounds nuw i8, ptr %i.br, i64 %8
  %i.cj = icmp ult ptr %i.ci, %6
  %or.cond458 = select i1 %i.j, i1 %i.cj, i1 false, !prof !41
  %or.cond480 = select i1 %i.ch, i1 true, i1 %or.cond458, !prof !42
  br i1 %or.cond480, label %_ZN10duckdb_lz4L14LZ4_wildCopy32EPvPKvS0_.exit.thread, label %bb.s, !prof !42

bb.s:                                             ; preds = %bb.r
  %i.ck = getelementptr inbounds nuw i8, ptr %.2, i64 %i.ce
  %.not442 = icmp ult ptr %i.ck, %i.y
  br i1 %.not442, label %.thread567, label %.loopexit606

bb.t:                                             ; preds = %_ZN10duckdb_lz4L14LZ4_wildCopy32EPvPKvS0_.exit.thread558
  %narrow = add nuw nsw i32 %i.bs, 4
  %i.cl = zext nneg i32 %narrow to i64            ; 4 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %.2, i64 %i.cl ; 2 uses
  %.not = icmp ult ptr %i.cm, %i.y
  br i1 %.not, label %bb.u, label %.loopexit606

bb.u:                                             ; preds = %bb.t
  br i1 %i.z, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.cn = icmp uge ptr %i.br, %6
  %i.co = icmp ugt i16 %.val484, 7
  %or.cond5 = and i1 %i.co, %i.cn
  br i1 %or.cond5, label %bb.x, label %.thread567

bb.w:                                             ; preds = %bb.u
  %.old4 = icmp ugt i16 %.val484, 7
  br i1 %.old4, label %bb.x, label %.thread567

bb.x:                                             ; preds = %bb.v, %bb.w
  %i.cp = load i64, ptr %i.br, align 1
  store i64 %i.cp, ptr %.2, align 1
  %i.cq = getelementptr inbounds nuw i8, ptr %.2, i64 8
  %i.cr = getelementptr inbounds nuw i8, ptr %i.br, i64 8
  %i.cs = load i64, ptr %i.cr, align 1
  store i64 %i.cs, ptr %i.cq, align 1
  %i.ct = getelementptr inbounds nuw i8, ptr %.2, i64 16
  %i.cu = getelementptr inbounds nuw i8, ptr %i.br, i64 16
  %i.cv = load i16, ptr %i.cu, align 1
  store i16 %i.cv, ptr %i.ct, align 1
  br label %.backedge

.backedge:                                        ; preds = %.preheader600, %.lr.ph, %middle.block, %vec.epilog.middle.block, %bb.ah, %bb.ad, %bb.af, %bb.x
  %.0539.be = phi ptr [ %i.bp, %bb.x ], [ %.3542, %bb.ad ], [ %.3542, %middle.block ], [ %.3542, %bb.ah ], [ %.3542, %bb.af ], [ %.3542, %.lr.ph ], [ %.3542, %vec.epilog.middle.block ], [ %.3542, %.preheader600 ]
  %.0362.be = phi ptr [ %i.cm, %bb.x ], [ %i.di, %bb.ad ], [ %i.dw, %middle.block ], [ %i.cz, %bb.ah ], [ %i.ei, %bb.af ], [ %i.eg, %.lr.ph ], [ %i.eb, %vec.epilog.middle.block ], [ %i.cz, %.preheader600 ]
  br label %bb.h, !llvm.loop !43

.thread567:                                       ; preds = %bb.s, %bb.v, %bb.w
  %.3542 = phi ptr [ %i.bp, %bb.v ], [ %i.bp, %bb.w ], [ %i.bx, %bb.s ] ; 9 uses
  %.2382 = phi i64 [ %i.cl, %bb.v ], [ %i.cl, %bb.w ], [ %i.ce, %bb.s ] ; 3 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.br, i64 %8
  %i.cx = icmp ult ptr %i.cw, %6
  %or.cond461 = select i1 %i.j, i1 %i.cx, i1 false, !prof !41
  br i1 %or.cond461, label %_ZN10duckdb_lz4L14LZ4_wildCopy32EPvPKvS0_.exit.thread, label %bb.y, !prof !41

bb.y:                                             ; preds = %.thread567
  %i.cy = icmp ult ptr %i.br, %6
  %or.cond462 = select i1 %i.ab, i1 %i.cy, i1 false
  %i.cz = getelementptr inbounds nuw i8, ptr %.2, i64 %.2382 ; 5 uses
  br i1 %or.cond462, label %bb.z, label %bb.ag

bb.z:                                             ; preds = %bb.y
  %i.da = icmp ugt ptr %i.cz, %i.ac
  br i1 %i.da, label %bb.aa, label %bb.ac, !prof !19

bb.aa:                                            ; preds = %bb.z
  br i1 %.not443, label %_ZN10duckdb_lz4L14LZ4_wildCopy32EPvPKvS0_.exit.thread, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.db = ptrtoint ptr %.2 to i64
  %i.dc = sub i64 %i.s, %i.db
  %i.dd = tail call i64 @llvm.umin.i64(i64 %.2382, i64 %i.dc)
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.z
  %.3383 = phi i64 [ %i.dd, %bb.ab ], [ %.2382, %bb.z ] ; 7 uses
  %i.de = ptrtoint ptr %i.br to i64
  %i.df = sub i64 %i.ad, %i.de                    ; 6 uses
  %.not444 = icmp ugt i64 %.3383, %i.df
  br i1 %.not444, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.dg = sub i64 0, %i.df
  %i.dh = getelementptr inbounds i8, ptr %i.i, i64 %i.dg
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %.2, ptr align 1 %i.dh, i64 %.3383, i1 false)
  %i.di = getelementptr inbounds nuw i8, ptr %.2, i64 %.3383
  br label %.backedge

bb.ae:                                            ; preds = %bb.ac
  %i.dj = sub nuw i64 %.3383, %i.df               ; 2 uses
  %i.dk = sub i64 0, %i.df
  %i.dl = getelementptr inbounds i8, ptr %i.i, i64 %i.dk
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.2, ptr align 1 %i.dl, i64 %i.df, i1 false)
  %i.dm = getelementptr inbounds nuw i8, ptr %.2, i64 %i.df ; 7 uses
  %i.dn = ptrtoint ptr %i.dm to i64
  %i.do = sub i64 %i.dn, %i.ad
  %i.dp = icmp ugt i64 %i.dj, %i.do
  br i1 %i.dp, label %iter.check, label %bb.af

iter.check:                                       ; preds = %bb.ae
  %i.dq = getelementptr inbounds nuw i8, ptr %.2, i64 %.3383
  %i.dr = add i64 %i.ae, %i.bo
  %i.ds = add i64 %.3383, %.21010
  %umax = tail call i64 @llvm.umax.i64(i64 %i.dr, i64 %i.ds)
  %i.dt = add i64 %i.ad, %i.bo
  %i.du = sub i64 %umax, %i.dt                    ; 7 uses
  %min.iters.check = icmp ult i64 %i.du, 4
  %i.dv = add i16 %.val484, -1
  %diff.check = icmp ult i16 %i.dv, 31
  %or.cond1205.a = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond1205.a, label %.lr.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check1011 = icmp ult i64 %i.du, 32
  br i1 %min.iters.check1011, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %i.du, 28
  %n.vec = and i64 %i.du, -32                     ; 5 uses
  %i.dw = getelementptr i8, ptr %i.dm, i64 %n.vec ; 2 uses
  %i.dx = getelementptr i8, ptr %6, i64 %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %next.gep = getelementptr i8, ptr %i.dm, i64 %index ; 2 uses
  %next.gep1012 = getelementptr i8, ptr %6, i64 %index ; 2 uses
  %i.dy = getelementptr i8, ptr %next.gep1012, i64 16
  %wide.load = load <16 x i8>, ptr %next.gep1012, align 1, !tbaa !7
  %wide.load1013 = load <16 x i8>, ptr %i.dy, align 1, !tbaa !7
  %i.dz = getelementptr i8, ptr %next.gep, i64 16
  store <16 x i8> %wide.load, ptr %next.gep, align 1, !tbaa !7
  store <16 x i8> %wide.load1013, ptr %i.dz, align 1, !tbaa !7
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.ea = icmp eq i64 %index.next, %n.vec
  br i1 %i.ea, label %middle.block, label %vector.body, !llvm.loop !44

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.du, %n.vec
  br i1 %cmp.n, label %.backedge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.preheader, label %vec.epilog.ph, !prof !45

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec1016 = and i64 %i.du, -4                  ; 4 uses
  %i.eb = getelementptr i8, ptr %i.dm, i64 %n.vec1016 ; 2 uses
  %i.ec = getelementptr i8, ptr %6, i64 %n.vec1016
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index1017 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next1021, %vec.epilog.vector.body ] ; 3 uses
  %next.gep1018 = getelementptr i8, ptr %i.dm, i64 %index1017
  %next.gep1019 = getelementptr i8, ptr %6, i64 %index1017
  %wide.load1020 = load <4 x i8>, ptr %next.gep1019, align 1, !tbaa !7
  store <4 x i8> %wide.load1020, ptr %next.gep1018, align 1, !tbaa !7
  %index.next1021 = add nuw i64 %index1017, 4     ; 2 uses
  %i.ed = icmp eq i64 %index.next1021, %n.vec1016
  br i1 %i.ed, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !46

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n1022 = icmp eq i64 %i.du, %n.vec1016
  br i1 %cmp.n1022, label %.backedge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.3648.ph = phi ptr [ %i.dm, %iter.check ], [ %i.dw, %vec.epilog.iter.check ], [ %i.eb, %vec.epilog.middle.block ]
  %.0400647.ph = phi ptr [ %6, %iter.check ], [ %i.dx, %vec.epilog.iter.check ], [ %i.ec, %vec.epilog.middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.3648 = phi ptr [ %i.eg, %.lr.ph ], [ %.3648.ph, %.lr.ph.preheader ] ; 2 uses
  %.0400647 = phi ptr [ %i.ee, %.lr.ph ], [ %.0400647.ph, %.lr.ph.preheader ] ; 2 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %.0400647, i64 1
  %i.ef = load i8, ptr %.0400647, align 1, !tbaa !7
  %i.eg = getelementptr inbounds nuw i8, ptr %.3648, i64 1 ; 3 uses
  store i8 %i.ef, ptr %.3648, align 1, !tbaa !7
  %i.eh = icmp ult ptr %i.eg, %i.dq
  br i1 %i.eh, label %.lr.ph, label %.backedge, !llvm.loop !47

bb.af:                                            ; preds = %bb.ae
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.dm, ptr nonnull align 1 %6, i64 %i.dj, i1 false)
  %i.ei = getelementptr inbounds nuw i8, ptr %.2, i64 %.3383
  br label %.backedge

bb.ag:                                            ; preds = %bb.y
  %i.ej = icmp ult i16 %.val484, 16
  br i1 %i.ej, label %bb.ah, label %.preheader600, !prof !19

bb.ah:                                            ; preds = %bb.ag
  tail call fastcc void @_ZN10duckdb_lz4L23LZ4_memcpy_using_offsetEPhPKhS0_m(ptr noundef %.2, ptr noundef %i.br, ptr noundef %i.cz, i64 noundef %i.bo)
  br label %.backedge

.preheader600:                                    ; preds = %bb.ag, %.preheader600
  %.011.i495 = phi ptr [ %i.en, %.preheader600 ], [ %i.br, %bb.ag ] ; 3 uses
  %.0.i496 = phi ptr [ %i.em, %.preheader600 ], [ %.2, %bb.ag ] ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %.0.i496, ptr noundef nonnull align 1 dereferenceable(16) %.011.i495, i64 16, i1 false)
  %i.ek = getelementptr inbounds nuw i8, ptr %.0.i496, i64 16
  %i.el = getelementptr inbounds nuw i8, ptr %.011.i495, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.ek, ptr noundef nonnull align 1 dereferenceable(16) %i.el, i64 16, i1 false)
  %i.em = getelementptr inbounds nuw i8, ptr %.0.i496, i64 32 ; 2 uses
  %i.en = getelementptr inbounds nuw i8, ptr %.011.i495, i64 32
  %i.eo = icmp ult ptr %i.em, %i.cz
  br i1 %i.eo, label %.preheader600, label %.backedge, !llvm.loop !40

.lr.ph651.split:                                  ; preds = %.lr.ph651, %bb.aj
  %i.ep = phi i64 [ %i.fs, %bb.aj ], [ %i.lr, %.lr.ph651 ] ; 3 uses
  %i.eq = phi i32 [ %i.fq, %bb.aj ], [ %i.lp, %.lr.ph651 ] ; 2 uses
  %i.er = phi ptr [ %i.fo, %bb.aj ], [ %i.ln, %.lr.ph651 ] ; 4 uses
  %.6650 = phi ptr [ %i.fn, %bb.aj ], [ %.6.ph, %.lr.ph651 ] ; 4 uses
  %i.es = icmp ult ptr %i.er, %i.k
  %i.et = icmp ule ptr %.6650, %i.l
  %i.eu = and i1 %i.es, %i.et
  br i1 %i.eu, label %bb.ai, label %.loopexit597, !prof !27

bb.ai:                                            ; preds = %.lr.ph651.split
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %.6650, ptr noundef nonnull align 1 dereferenceable(16) %i.er, i64 16, i1 false)
  %i.ev = getelementptr inbounds nuw i8, ptr %.6650, i64 %i.ep ; 6 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %i.er, i64 %i.ep ; 3 uses
  %i.ex = and i32 %i.eq, 15                       ; 2 uses
  %i.ey = zext nneg i32 %i.ex to i64              ; 2 uses
  %.val483 = load i16, ptr %i.ew, align 1, !tbaa !7 ; 2 uses
  %i.ez = zext i16 %.val483 to i64                ; 2 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ew, i64 2 ; 2 uses
  %i.fb = sub nsw i64 0, %i.ez
  %i.fc = getelementptr inbounds i8, ptr %i.ev, i64 %i.fb ; 5 uses
  %i.fd = icmp eq i32 %i.ex, 15
  %i.fe = icmp ult i16 %.val483, 8
  %or.cond3.not682 = or i1 %i.fd, %i.fe
  %.not449 = icmp ult ptr %i.fc, %6
  %or.cond678 = select i1 %or.cond3.not682, i1 true, i1 %.not449
  br i1 %or.cond678, label %.loopexit598, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.ff = load i64, ptr %i.fc, align 1
  store i64 %i.ff, ptr %i.ev, align 1
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ev, i64 8
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fc, i64 8
  %i.fi = load i64, ptr %i.fh, align 1
  store i64 %i.fi, ptr %i.fg, align 1
  %i.fj = getelementptr inbounds nuw i8, ptr %i.ev, i64 16
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fc, i64 16
  %i.fl = load i16, ptr %i.fk, align 1
  store i16 %i.fl, ptr %i.fj, align 1
  %i.fm = getelementptr inbounds nuw i8, ptr %i.ev, i64 %i.ey
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fm, i64 4 ; 2 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %i.ew, i64 3 ; 2 uses
  %i.fp = load i8, ptr %i.fa, align 1, !tbaa !7
  %i.fq = zext i8 %i.fp to i32                    ; 3 uses
  %i.fr = lshr i32 %i.fq, 4                       ; 2 uses
  %i.fs = zext nneg i32 %i.fr to i64
  %cond = icmp eq i32 %i.fr, 15
  br i1 %cond, label %._crit_edge, label %.lr.ph651.split, !llvm.loop !48

._crit_edge:                                      ; preds = %bb.aj, %bb.bi, %.preheader596
  %.6.lcssa = phi ptr [ %.6.ph, %.preheader596 ], [ %i.mq, %bb.bi ], [ %i.fn, %bb.aj ] ; 2 uses
  %.lcssa616 = phi ptr [ %i.ln, %.preheader596 ], [ %i.mr, %bb.bi ], [ %i.fo, %bb.aj ] ; 6 uses
  %.lcssa613 = phi i32 [ %i.lp, %.preheader596 ], [ %i.mt, %bb.bi ], [ %i.fq, %bb.aj ]
  %i.ft = getelementptr inbounds i8, ptr %i.d, i64 -15 ; 2 uses
  %.not12.i499 = icmp ult ptr %.lcssa616, %i.ft
  br i1 %.not12.i499, label %.lr.ph1003, label %_ZN10duckdb_lz4L14LZ4_wildCopy32EPvPKvS0_.exit.thread, !prof !36

.lr.ph1003:                                       ; preds = %._crit_edge
  %12 = ptrtoint ptr %i.ft to i64
  %.promoted13.i501 = ptrtoint ptr %.lcssa616 to i64
  %i.fu = tail call i64 @llvm.usub.sat.i64(i64 %12, i64 %.promoted13.i501)
  %scevgep.i502 = getelementptr i8, ptr %.lcssa616, i64 %i.fu
  %i.fv = getelementptr inbounds nuw i8, ptr %.lcssa616, i64 1
  br label %bb.al

bb.ak:                                            ; preds = %bb.al
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fx, i64 1 ; 2 uses
  %exitcond.i504 = icmp eq ptr %i.fx, %scevgep.i502
  br i1 %exitcond.i504, label %_ZN10duckdb_lz4L14LZ4_wildCopy32EPvPKvS0_.exit.thread, label %bb.al, !prof !37, !llvm.loop !38

bb.al:                                            ; preds = %.lr.ph1003, %bb.ak
  %i.fx = phi ptr [ %i.fv, %.lr.ph1003 ], [ %i.fw, %bb.ak ] ; 7 uses
  %.0.i5031001 = phi i64 [ 0, %.lr.ph1003 ], [ %i.gb, %bb.ak ]
  %i.fy = phi ptr [ %.lcssa616, %.lr.ph1003 ], [ %i.fx, %bb.ak ]
  %i.fz = load i8, ptr %i.fy, align 1, !tbaa !7   ; 2 uses
  %i.ga = zext i8 %i.fz to i64
  %i.gb = add i64 %.0.i5031001, %i.ga             ; 3 uses
  %i.gc = icmp eq i8 %i.fz, -1
  br i1 %i.gc, label %bb.ak, label %_ZN10duckdb_lz4L20read_variable_lengthEPPKhS1_i.exit505, !llvm.loop !38

_ZN10duckdb_lz4L20read_variable_lengthEPPKhS1_i.exit505: ; preds = %bb.al
  %i.gd = icmp eq i64 %i.gb, -1
  br i1 %i.gd, label %_ZN10duckdb_lz4L14LZ4_wildCopy32EPvPKvS0_.exit.thread, label %bb.am

bb.am:                                            ; preds = %_ZN10duckdb_lz4L20read_variable_lengthEPPKhS1_i.exit505
  %i.ge = add i64 %i.gb, 15                       ; 3 uses
  %i.gf = ptrtoint ptr %.6.lcssa to i64
  %i.gg = xor i64 %i.gf, -1
  %i.gh = icmp ugt i64 %i.ge, %i.gg
  %i.gi = ptrtoint ptr %i.fx to i64
  %i.gj = xor i64 %i.gi, -1
  %i.gk = icmp ugt i64 %i.ge, %i.gj
  %or.cond586 = select i1 %i.gh, i1 true, i1 %i.gk, !prof !39
  br i1 %or.cond586, label %_ZN10duckdb_lz4L14LZ4_wildCopy32EPvPKvS0_.exit.thread, label %.loopexit597, !prof !39

.loopexit597:                                     ; preds = %.lr.ph651.split, %.lr.ph651.split.us, %bb.am
  %.6621 = phi ptr [ %.6.lcssa, %bb.am ], [ %.6650.us, %.lr.ph651.split.us ], [ %.6650, %.lr.ph651.split ] ; 2 uses
  %i.gl = phi i32 [ %.lcssa613, %bb.am ], [ %i.lt, %.lr.ph651.split.us ], [ %i.eq, %.lr.ph651.split ]
  %.5543 = phi ptr [ %i.fx, %bb.am ], [ %i.lu, %.lr.ph651.split.us ], [ %i.er, %.lr.ph651.split ]
  %.5385 = phi i64 [ %i.ge, %bb.am ], [ %i.ls, %.lr.ph651.split.us ], [ %i.ep, %.lr.ph651.split ] ; 2 uses
  %i.gm = getelementptr inbounds nuw i8, ptr %.6621, i64 %.5385
  br label %_ZN10duckdb_lz4L14LZ4_wildCopy32EPvPKvS0_.exit

_ZN10duckdb_lz4L14LZ4_wildCopy32EPvPKvS0_.exit:   ; preds = %bb.m, %bb.n, %.loopexit597
  %.6544 = phi ptr [ %.5543, %.loopexit597 ], [ %i.ao, %bb.m ], [ %i.af, %bb.n ] ; 11 uses
  %.6386 = phi i64 [ %.5385, %.loopexit597 ], [ %i.av, %bb.m ], [ %i.aj, %bb.n ] ; 4 uses
  %.0379 = phi i32 [ %i.gl, %.loopexit597 ], [ %i.ah, %bb.n ], [ %i.ah, %bb.m ]
  %.3367 = phi ptr [ %i.gm, %.loopexit597 ], [ %i.bc, %bb.m ], [ %i.bl, %bb.n ] ; 7 uses
  %.7 = phi ptr [ %.6621, %.loopexit597 ], [ %.0362, %bb.n ], [ %.0362, %bb.m ] ; 11 uses
  %.33671029 = ptrtoint ptr %.3367 to i64
  %.71030 = ptrtoint ptr %.7 to i64               ; 2 uses
  %.71026 = ptrtoaddr ptr %.7 to i64
  %.65441027 = ptrtoaddr ptr %.6544 to i64
  %i.gn = getelementptr inbounds i8, ptr %i.f, i64 -12
  %i.go = icmp ugt ptr %.3367, %i.gn
  br i1 %i.go, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %_ZN10duckdb_lz4L14LZ4_wildCopy32EPvPKvS0_.exit
  %i.gp = getelementptr inbounds nuw i8, ptr %.6544, i64 %.6386 ; 3 uses
  %i.gq = getelementptr inbounds i8, ptr %i.d, i64 -8
  %i.gr = icmp ugt ptr %i.gp, %i.gq
  br i1 %i.gr, label %bb.ao, label %.preheader595.preheader

.preheader595.preheader:                          ; preds = %bb.an
  %i.gs = add i64 %.71030, 8
  %umax1031 = tail call i64 @llvm.umax.i64(i64 %.33671029, i64 %i.gs)
  %i.gt = xor i64 %.71030, -1
  %i.gu = add i64 %umax1031, %i.gt                ; 2 uses
  %i.gv = lshr i64 %i.gu, 3
  %i.gw = add nuw nsw i64 %i.gv, 1                ; 2 uses
  %min.iters.check1032 = icmp ult i64 %i.gu, 72
  %i.gx = sub i64 %.65441027, %.71026
  %diff.check1028 = icmp ugt i64 %i.gx, -32
  %or.cond1206.a = select i1 %min.iters.check1032, i1 true, i1 %diff.check1028
  br i1 %or.cond1206.a, label %.preheader595.preheader1216, label %vector.ph1033

vector.ph1033:                                    ; preds = %.preheader595.preheader
  %n.vec1035 = and i64 %i.gw, 4611686018427387900 ; 3 uses
  %i.gy = shl i64 %n.vec1035, 3                   ; 2 uses
  %i.gz = getelementptr i8, ptr %.6544, i64 %i.gy
  %i.ha = getelementptr i8, ptr %.7, i64 %i.gy
  br label %vector.body1036

vector.body1036:                                  ; preds = %vector.body1036, %vector.ph1033
  %index1037 = phi i64 [ 0, %vector.ph1033 ], [ %index.next1042, %vector.body1036 ] ; 2 uses
  %i.hb = shl i64 %index1037, 3                   ; 2 uses
  %next.gep1038.a = getelementptr i8, ptr %.6544, i64 %i.hb ; 2 uses
  %next.gep1039 = getelementptr i8, ptr %.7, i64 %i.hb ; 2 uses
  %i.hc = getelementptr i8, ptr %next.gep1038.a, i64 16
  %wide.load1040.a = load <2 x i64>, ptr %next.gep1038.a, align 1
  %wide.load1041 = load <2 x i64>, ptr %i.hc, align 1
  %i.hd = getelementptr i8, ptr %next.gep1039, i64 16
  store <2 x i64> %wide.load1040.a, ptr %next.gep1039, align 1
  store <2 x i64> %wide.load1041, ptr %i.hd, align 1
  %index.next1042 = add nuw i64 %index1037, 4     ; 2 uses
  %i.he = icmp eq i64 %index.next1042, %n.vec1035
  br i1 %i.he, label %middle.block1043, label %vector.body1036, !llvm.loop !49

middle.block1043:                                 ; preds = %vector.body1036
  %cmp.n1044 = icmp eq i64 %i.gw, %n.vec1035
  br i1 %cmp.n1044, label %_ZN10duckdb_lz4L13LZ4_wildCopy8EPvPKvS0_.exit, label %.preheader595.preheader1216

.preheader595.preheader1216:                      ; preds = %.preheader595.preheader, %middle.block1043
  %.09.i.ph = phi ptr [ %.6544, %.preheader595.preheader ], [ %i.gz, %middle.block1043 ]
  %.0.i506.ph = phi ptr [ %.7, %.preheader595.preheader ], [ %i.ha, %middle.block1043 ]
  br label %.preheader595

bb.ao:                                            ; preds = %bb.an, %_ZN10duckdb_lz4L14LZ4_wildCopy32EPvPKvS0_.exit
  %.not446.not = icmp eq i32 %4, 0
  %i.hf = getelementptr inbounds nuw i8, ptr %.6544, i64 %.6386 ; 2 uses
  br i1 %.not446.not, label %bb.ar, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.hg = icmp ugt ptr %i.hf, %i.d                ; 2 uses
  %i.hh = ptrtoint ptr %i.d to i64
  %i.hi = ptrtoint ptr %.6544 to i64
  %i.hj = sub i64 %i.hh, %i.hi                    ; 2 uses
  %i.hk = getelementptr inbounds nuw i8, ptr %.7, i64 %i.hj
  %.4368 = select i1 %i.hg, ptr %i.hk, ptr %.3367 ; 2 uses
  %i.hl = icmp ugt ptr %.4368, %i.f
  br i1 %i.hl, label %bb.aq, label %bb.as

bb.aq:                                            ; preds = %bb.ap
  %i.hm = ptrtoint ptr %.7 to i64
  %i.hn = sub i64 %i.s, %i.hm
  br label %.thread

bb.ar:                                            ; preds = %bb.ao
  %.not447 = icmp ne ptr %i.hf, %i.d
  %i.ho = icmp ugt ptr %.3367, %i.f
  %or.cond467 = select i1 %.not447, i1 true, i1 %i.ho
  br i1 %or.cond467, label %_ZN10duckdb_lz4L14LZ4_wildCopy32EPvPKvS0_.exit.thread, label %.thread

.thread:                                          ; preds = %bb.ar, %bb.aq
  %.8388.ph = phi i64 [ %.6386, %bb.ar ], [ %i.hn, %bb.aq ] ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %.7, ptr nonnull align 1 %.6544, i64 %.8388.ph, i1 false)
  %i.hp = getelementptr inbounds nuw i8, ptr %.7, i64 %.8388.ph
  br label %._crit_edge765

bb.as:                                            ; preds = %bb.ap
  %.7387 = select i1 %i.hg, i64 %i.hj, i64 %.6386 ; 3 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %.7, ptr nonnull align 1 %.6544, i64 %.7387, i1 false)
  %i.hq = getelementptr inbounds nuw i8, ptr %.6544, i64 %.7387 ; 2 uses
  %i.hr = getelementptr inbounds nuw i8, ptr %.7, i64 %.7387 ; 2 uses
  %i.hs = icmp ne ptr %.4368, %i.f
  %i.ht = getelementptr inbounds i8, ptr %i.d, i64 -2
  %.not448 = icmp ult ptr %i.hq, %i.ht
  %or.cond469 = select i1 %i.hs, i1 %.not448, i1 false
  br i1 %or.cond469, label %_ZN10duckdb_lz4L13LZ4_wildCopy8EPvPKvS0_.exit, label %._crit_edge765

._crit_edge765:                                   ; preds = %.thread, %bb.as
  %i.hu = phi ptr [ %i.hp, %.thread ], [ %i.hr, %bb.as ]
  %.pre = ptrtoint ptr %i.hu to i64
  br label %bb.bs

.preheader595:                                    ; preds = %.preheader595.preheader1216, %.preheader595
  %.09.i = phi ptr [ %i.hx, %.preheader595 ], [ %.09.i.ph, %.preheader595.preheader1216 ] ; 2 uses
  %.0.i506 = phi ptr [ %i.hw, %.preheader595 ], [ %.0.i506.ph, %.preheader595.preheader1216 ] ; 2 uses
  %i.hv = load i64, ptr %.09.i, align 1
  store i64 %i.hv, ptr %.0.i506, align 1
  %i.hw = getelementptr inbounds nuw i8, ptr %.0.i506, i64 8 ; 2 uses
  %i.hx = getelementptr inbounds nuw i8, ptr %.09.i, i64 8
  %i.hy = icmp ult ptr %i.hw, %.3367
  br i1 %i.hy, label %.preheader595, label %_ZN10duckdb_lz4L13LZ4_wildCopy8EPvPKvS0_.exit, !llvm.loop !50

_ZN10duckdb_lz4L13LZ4_wildCopy8EPvPKvS0_.exit:    ; preds = %.preheader595, %middle.block1043, %bb.as
  %.7545 = phi ptr [ %i.hq, %bb.as ], [ %i.gp, %middle.block1043 ], [ %i.gp, %.preheader595 ] ; 2 uses
  %.8 = phi ptr [ %i.hr, %bb.as ], [ %.3367, %middle.block1043 ], [ %.3367, %.preheader595 ] ; 2 uses
  %.val = load i16, ptr %.7545, align 1, !tbaa !7
  %i.hz = zext i16 %.val to i64                   ; 2 uses
  %i.ia = getelementptr inbounds nuw i8, ptr %.7545, i64 2
  %i.ib = sub nsw i64 0, %i.hz
  %i.ic = getelementptr inbounds i8, ptr %.8, i64 %i.ib
  %i.id = and i32 %.0379, 15
  %i.ie = zext nneg i32 %i.id to i64
  br label %.loopexit598

.loopexit598:                                     ; preds = %bb.ai, %bb.bh, %_ZN10duckdb_lz4L13LZ4_wildCopy8EPvPKvS0_.exit
  %.8546 = phi ptr [ %i.ia, %_ZN10duckdb_lz4L13LZ4_wildCopy8EPvPKvS0_.exit ], [ %i.md, %bb.bh ], [ %i.fa, %bb.ai ] ; 6 uses
  %.9389 = phi i64 [ %i.ie, %_ZN10duckdb_lz4L13LZ4_wildCopy8EPvPKvS0_.exit ], [ %i.mb, %bb.bh ], [ %i.ey, %bb.ai ] ; 2 uses
  %.0377 = phi i64 [ %i.hz, %_ZN10duckdb_lz4L13LZ4_wildCopy8EPvPKvS0_.exit ], [ %i.mc, %bb.bh ], [ %i.ez, %bb.ai ]
  %.0370 = phi ptr [ %i.ic, %_ZN10duckdb_lz4L13LZ4_wildCopy8EPvPKvS0_.exit ], [ %i.mf, %bb.bh ], [ %i.fc, %bb.ai ]
  %.9 = phi ptr [ %.8, %_ZN10duckdb_lz4L13LZ4_wildCopy8EPvPKvS0_.exit ], [ %i.ly, %bb.bh ], [ %i.ev, %bb.ai ] ; 2 uses
  %i.if = icmp eq i64 %.9389, 15
  br i1 %i.if, label %bb.at, label %bb.av

bb.at:                                            ; preds = %.loopexit598
  %i.ig = getelementptr inbounds i8, ptr %i.d, i64 -4 ; 2 uses
  %13 = ptrtoint ptr %i.ig to i64
  %.promoted13.i510 = ptrtoint ptr %.8546 to i64
  %i.ih = tail call i64 @llvm.usub.sat.i64(i64 %13, i64 %.promoted13.i510)
  %scevgep.i511 = getelementptr i8, ptr %.8546, i64 %i.ih
  %i.ii = getelementptr inbounds nuw i8, ptr %.8546, i64 1 ; 2 uses
  %exitcond.i5131005.not = icmp ugt ptr %i.ig, %.8546
  br i1 %exitcond.i5131005.not, label %.lr.ph1008, label %_ZN10duckdb_lz4L14LZ4_wildCopy32EPvPKvS0_.exit.thread, !prof !28

bb.au:                                            ; preds = %.lr.ph1008
  %i.ij = getelementptr inbounds nuw i8, ptr %i.ik, i64 1 ; 2 uses
  %exitcond.i513 = icmp eq ptr %i.ik, %scevgep.i511
  br i1 %exitcond.i513, label %_ZN10duckdb_lz4L14LZ4_wildCopy32EPvPKvS0_.exit.thread, label %.lr.ph1008, !prof !37, !llvm.loop !38

.lr.ph1008:                                       ; preds = %bb.at, %bb.au
  %i.ik = phi ptr [ %i.ij, %bb.au ], [ %i.ii, %bb.at ] ; 5 uses
  %.0.i5121006 = phi i64 [ %i.io, %bb.au ], [ 0, %bb.at ]
  %i.il = phi ptr [ %i.ik, %bb.au ], [ %.8546, %bb.at ]
  %i.im = load i8, ptr %i.il, align 1, !tbaa !7   ; 2 uses
  %i.in = zext i8 %i.im to i64
  %i.io = add i64 %.0.i5121006, %i.in             ; 3 uses
  %i.ip = icmp eq i8 %i.im, -1
  br i1 %i.ip, label %bb.au, label %_ZN10duckdb_lz4L20read_variable_lengthEPPKhS1_i.exit514, !llvm.loop !38

_ZN10duckdb_lz4L20read_variable_lengthEPPKhS1_i.exit514: ; preds = %.lr.ph1008
  %i.iq = icmp ne i64 %i.io, -1                   ; 2 uses
  %i.ir = add i64 %i.io, 15                       ; 2 uses
  %i.is = ptrtoint ptr %.9 to i64
  %i.it = xor i64 %i.is, -1
  %i.iu = icmp ule i64 %i.ir, %i.it
  %.not591 = select i1 %i.iq, i1 %i.iu, i1 false
  %.10390 = select i1 %i.iq, i64 %i.ir, i64 15
  br i1 %.not591, label %bb.av, label %_ZN10duckdb_lz4L14LZ4_wildCopy32EPvPKvS0_.exit.thread

bb.av:                                            ; preds = %_ZN10duckdb_lz4L20read_variable_lengthEPPKhS1_i.exit514, %.loopexit598
  %.9547 = phi ptr [ %i.ik, %_ZN10duckdb_lz4L20read_variable_lengthEPPKhS1_i.exit514 ], [ %.8546, %.loopexit598 ]
  %.11391 = phi i64 [ %.10390, %_ZN10duckdb_lz4L20read_variable_lengthEPPKhS1_i.exit514 ], [ %.9389, %.loopexit598 ]
  %i.iv = add i64 %.11391, 4
  br label %.loopexit606

.loopexit606:                                     ; preds = %bb.s, %bb.t, %bb.av
  %.10548 = phi ptr [ %.9547, %bb.av ], [ %i.bx, %bb.s ], [ %i.bp, %bb.t ] ; 6 uses
  %.12392 = phi i64 [ %i.iv, %bb.av ], [ %i.ce, %bb.s ], [ %i.cl, %bb.t ] ; 7 uses
  %.1378 = phi i64 [ %.0377, %bb.av ], [ %i.bo, %bb.t ], [ %i.bo, %bb.s ] ; 3 uses
  %.1371 = phi ptr [ %.0370, %bb.av ], [ %i.br, %bb.t ], [ %i.br, %bb.s ] ; 18 uses
  %.10 = phi ptr [ %.9, %bb.av ], [ %.2, %bb.t ], [ %.2, %bb.s ] ; 28 uses
  %.13711127 = ptrtoaddr ptr %.1371 to i64        ; 2 uses
  %.101050 = ptrtoint ptr %.10 to i64             ; 17 uses
  %.101047 = ptrtoaddr ptr %.10 to i64
  %i.iw = getelementptr inbounds nuw i8, ptr %.1371, i64 %8
  %i.ix = icmp ult ptr %i.iw, %6
  %or.cond472 = select i1 %i.j, i1 %i.ix, i1 false, !prof !41
  br i1 %or.cond472, label %_ZN10duckdb_lz4L14LZ4_wildCopy32EPvPKvS0_.exit.thread, label %bb.aw, !prof !41

bb.aw:                                            ; preds = %.loopexit606
  %i.iy = icmp eq i32 %5, 2
  %i.iz = icmp ult ptr %.1371, %6
  %or.cond473 = select i1 %i.iy, i1 %i.iz, i1 false
  %i.ja = getelementptr inbounds nuw i8, ptr %.10, i64 %.12392 ; 7 uses
  br i1 %or.cond473, label %bb.ax, label %bb.be

bb.ax:                                            ; preds = %bb.aw
  %i.jb = getelementptr inbounds i8, ptr %i.f, i64 -5
  %i.jc = icmp ugt ptr %i.ja, %i.jb
  br i1 %i.jc, label %bb.ay, label %bb.ba, !prof !19

bb.ay:                                            ; preds = %bb.ax
  %.not451 = icmp eq i32 %4, 0
  br i1 %.not451, label %_ZN10duckdb_lz4L14LZ4_wildCopy32EPvPKvS0_.exit.thread, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.jd = ptrtoint ptr %.10 to i64
  %i.je = sub i64 %i.s, %i.jd
  %i.jf = tail call i64 @llvm.umin.i64(i64 %.12392, i64 %i.je)
  br label %bb.ba

bb.ba:                                            ; preds = %bb.az, %bb.ax
  %.13393 = phi i64 [ %i.jf, %bb.az ], [ %.12392, %bb.ax ] ; 7 uses
  %i.jg = ptrtoint ptr %6 to i64                  ; 4 uses
  %i.jh = ptrtoint ptr %.1371 to i64              ; 3 uses
  %i.ji = sub i64 %i.jg, %i.jh                    ; 6 uses
  %.not452 = icmp ugt i64 %.13393, %i.ji
  br i1 %.not452, label %bb.bc, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.jj = sub i64 0, %i.ji
  %i.jk = getelementptr inbounds i8, ptr %i.i, i64 %i.jj
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %.10, ptr align 1 %i.jk, i64 %.13393, i1 false)
  %i.jl = getelementptr inbounds nuw i8, ptr %.10, i64 %.13393
  br label %.loopexit

bb.bc:                                            ; preds = %bb.ba
  %i.jm = sub nuw i64 %.13393, %i.ji              ; 2 uses
  %i.jn = sub i64 0, %i.ji
  %i.jo = getelementptr inbounds i8, ptr %i.i, i64 %i.jn
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.10, ptr align 1 %i.jo, i64 %i.ji, i1 false)
  %i.jp = getelementptr inbounds nuw i8, ptr %.10, i64 %i.ji ; 7 uses
  %i.jq = ptrtoint ptr %i.jp to i64
  %i.jr = sub i64 %i.jq, %i.jg
  %i.js = icmp ugt i64 %i.jm, %i.jr
  br i1 %i.js, label %iter.check1188, label %bb.bd

iter.check1188:                                   ; preds = %bb.bc
  %i.jt = getelementptr inbounds nuw i8, ptr %.10, i64 %.13393
  %i.ju = add i64 %.101050, %i.jg
  %i.jv = add i64 %i.ju, 1
  %i.jw = sub i64 %i.jv, %i.jh
  %i.jx = add i64 %.13393, %.101050
  %umax1168 = tail call i64 @llvm.umax.i64(i64 %i.jw, i64 %i.jx)
  %i.jy = add i64 %umax1168, %i.jh
  %i.jz = add i64 %.101050, %i.jg
  %i.ka = sub i64 %i.jy, %i.jz                    ; 7 uses
  %min.iters.check1170.a = icmp ult i64 %i.ka, 4
  %14 = sub i64 %.13711127, %.101050
  %diff.check1167 = icmp ugt i64 %14, -32
  %or.cond1207 = select i1 %min.iters.check1170.a, i1 true, i1 %diff.check1167
  br i1 %or.cond1207, label %.lr.ph676.preheader, label %vector.main.loop.iter.check1171

vector.main.loop.iter.check1171:                  ; preds = %iter.check1188
  %min.iters.check1172 = icmp ult i64 %i.ka, 32
  br i1 %min.iters.check1172, label %vec.epilog.ph1192, label %vector.ph1173

vector.ph1173:                                    ; preds = %vector.main.loop.iter.check1171
  %n.mod.vf1174 = and i64 %i.ka, 28
  %n.vec1175 = and i64 %i.ka, -32                 ; 5 uses
  %i.kb = getelementptr i8, ptr %i.jp, i64 %n.vec1175 ; 2 uses
  %i.kc = getelementptr i8, ptr %6, i64 %n.vec1175
  br label %vector.body1176

vector.body1176:                                  ; preds = %vector.body1176, %vector.ph1173
  %index1177 = phi i64 [ 0, %vector.ph1173 ], [ %index.next1182, %vector.body1176 ] ; 3 uses
  %next.gep1178 = getelementptr i8, ptr %i.jp, i64 %index1177 ; 2 uses
  %next.gep1179 = getelementptr i8, ptr %6, i64 %index1177 ; 2 uses
  %i.kd = getelementptr i8, ptr %next.gep1179, i64 16
  %wide.load1180 = load <16 x i8>, ptr %next.gep1179, align 1, !tbaa !7
  %wide.load1181 = load <16 x i8>, ptr %i.kd, align 1, !tbaa !7
  %i.ke = getelementptr i8, ptr %next.gep1178, i64 16
  store <16 x i8> %wide.load1180, ptr %next.gep1178, align 1, !tbaa !7
  store <16 x i8> %wide.load1181, ptr %i.ke, align 1, !tbaa !7
  %index.next1182 = add nuw i64 %index1177, 32    ; 2 uses
  %i.kf = icmp eq i64 %index.next1182, %n.vec1175
  br i1 %i.kf, label %middle.block1183, label %vector.body1176, !llvm.loop !51

middle.block1183:                                 ; preds = %vector.body1176
  %cmp.n1184 = icmp eq i64 %i.ka, %n.vec1175
  br i1 %cmp.n1184, label %.loopexit, label %vec.epilog.iter.check1190

vec.epilog.iter.check1190:                        ; preds = %middle.block1183
  %min.epilog.iters.check1191 = icmp eq i64 %n.mod.vf1174, 0
  br i1 %min.epilog.iters.check1191, label %.lr.ph676.preheader, label %vec.epilog.ph1192, !prof !45

vec.epilog.ph1192:                                ; preds = %vector.main.loop.iter.check1171, %vec.epilog.iter.check1190
  %vec.epilog.resume.val1185 = phi i64 [ %n.vec1175, %vec.epilog.iter.check1190 ], [ 0, %vector.main.loop.iter.check1171 ]
  %n.vec1194 = and i64 %i.ka, -4                  ; 4 uses
  %i.kg = getelementptr i8, ptr %i.jp, i64 %n.vec1194 ; 2 uses
  %i.kh = getelementptr i8, ptr %6, i64 %n.vec1194
  br label %vec.epilog.vector.body1195

vec.epilog.vector.body1195:                       ; preds = %vec.epilog.vector.body1195, %vec.epilog.ph1192
  %index1196 = phi i64 [ %vec.epilog.resume.val1185, %vec.epilog.ph1192 ], [ %index.next1200, %vec.epilog.vector.body1195 ] ; 3 uses
  %next.gep1197 = getelementptr i8, ptr %i.jp, i64 %index1196
  %next.gep1198 = getelementptr i8, ptr %6, i64 %index1196
  %wide.load1199 = load <4 x i8>, ptr %next.gep1198, align 1, !tbaa !7
  store <4 x i8> %wide.load1199, ptr %next.gep1197, align 1, !tbaa !7
  %index.next1200 = add nuw i64 %index1196, 4     ; 2 uses
  %i.ki = icmp eq i64 %index.next1200, %n.vec1194
  br i1 %i.ki, label %vec.epilog.middle.block1201, label %vec.epilog.vector.body1195, !llvm.loop !52

vec.epilog.middle.block1201:                      ; preds = %vec.epilog.vector.body1195
  %cmp.n1202 = icmp eq i64 %i.ka, %n.vec1194
  br i1 %cmp.n1202, label %.loopexit, label %.lr.ph676.preheader

.lr.ph676.preheader:                              ; preds = %iter.check1188, %vec.epilog.iter.check1190, %vec.epilog.middle.block1201
  %.11674.ph = phi ptr [ %i.jp, %iter.check1188 ], [ %i.kb, %vec.epilog.iter.check1190 ], [ %i.kg, %vec.epilog.middle.block1201 ]
  %.0376673.ph = phi ptr [ %6, %iter.check1188 ], [ %i.kc, %vec.epilog.iter.check1190 ], [ %i.kh, %vec.epilog.middle.block1201 ]
  br label %.lr.ph676

.lr.ph676:                                        ; preds = %.lr.ph676.preheader, %.lr.ph676
  %.11674 = phi ptr [ %i.kl, %.lr.ph676 ], [ %.11674.ph, %.lr.ph676.preheader ] ; 2 uses
  %.0376673 = phi ptr [ %i.kj, %.lr.ph676 ], [ %.0376673.ph, %.lr.ph676.preheader ] ; 2 uses
  %i.kj = getelementptr inbounds nuw i8, ptr %.0376673, i64 1
  %i.kk = load i8, ptr %.0376673, align 1, !tbaa !7
  %i.kl = getelementptr inbounds nuw i8, ptr %.11674, i64 1 ; 3 uses
  store i8 %i.kk, ptr %.11674, align 1, !tbaa !7
  %i.km = icmp ult ptr %i.kl, %i.jt
  br i1 %i.km, label %.lr.ph676, label %.loopexit, !llvm.loop !53

bb.bd:                                            ; preds = %bb.bc
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.jp, ptr nonnull align 1 %6, i64 %i.jm, i1 false)
  %i.kn = getelementptr inbounds nuw i8, ptr %.10, i64 %.13393
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph676, %middle.block1183, %vec.epilog.middle.block1201, %bb.bd, %bb.bb
  %.13 = phi ptr [ %i.jl, %bb.bb ], [ %i.kn, %bb.bd ], [ %i.kg, %vec.epilog.middle.block1201 ], [ %i.kb, %middle.block1183 ], [ %i.kl, %.lr.ph676 ]
  br label %.preheader596, !llvm.loop !48

bb.be:                                            ; preds = %bb.aw
  %.not450 = icmp ne i32 %4, 0
  %i.ko = getelementptr inbounds i8, ptr %i.f, i64 -12
  %i.kp = icmp ugt ptr %i.ja, %i.ko               ; 2 uses
  %or.cond475 = select i1 %.not450, i1 %i.kp, i1 false
  br i1 %or.cond475, label %bb.bf, label %bb.bj

bb.bf:                                            ; preds = %bb.be
  %i.kq = ptrtoint ptr %.10 to i64
  %i.kr = sub i64 %i.s, %i.kq
  %i.ks = tail call i64 @llvm.umin.i64(i64 %.12392, i64 %i.kr) ; 5 uses
  %i.kt = getelementptr inbounds nuw i8, ptr %.1371, i64 %i.ks
  %i.ku = getelementptr inbounds nuw i8, ptr %.10, i64 %i.ks ; 3 uses
  %i.kv = icmp ugt ptr %i.kt, %.10
  br i1 %i.kv, label %.preheader, label %bb.bg

.preheader:                                       ; preds = %bb.bf
  %.not683 = icmp eq i64 %i.ks, 0
  br i1 %.not683, label %.loopexit592, label %iter.check1149

iter.check1149:                                   ; preds = %.preheader
  %i.kw = add i64 %i.ks, %.101050
  %i.kx = add i64 %.101050, 1
  %umax1129 = tail call i64 @llvm.umax.i64(i64 %i.kw, i64 %i.kx)
  %i.ky = sub i64 %umax1129, %.101050             ; 7 uses
  %min.iters.check1131.a = icmp ult i64 %i.ky, 4
  %i.kz = sub i64 %.13711127, %.101050
  %diff.check1128 = icmp ugt i64 %i.kz, -32
  %or.cond1208 = select i1 %min.iters.check1131.a, i1 true, i1 %diff.check1128
  br i1 %or.cond1208, label %.lr.ph672.preheader, label %vector.main.loop.iter.check1132

vector.main.loop.iter.check1132:                  ; preds = %iter.check1149
  %min.iters.check1133 = icmp ult i64 %i.ky, 32
  br i1 %min.iters.check1133, label %vec.epilog.ph1153, label %vector.ph1134

vector.ph1134:                                    ; preds = %vector.main.loop.iter.check1132
  %n.mod.vf1135 = and i64 %i.ky, 28
  %n.vec1136 = and i64 %i.ky, -32                 ; 5 uses
  %i.la = getelementptr i8, ptr %.10, i64 %n.vec1136
  %i.lb = getelementptr i8, ptr %.1371, i64 %n.vec1136
  br label %vector.body1137

vector.body1137:                                  ; preds = %vector.body1137, %vector.ph1134
  %index1138 = phi i64 [ 0, %vector.ph1134 ], [ %index.next1143, %vector.body1137 ] ; 3 uses
  %next.gep1139 = getelementptr i8, ptr %.10, i64 %index1138 ; 2 uses
  %next.gep1140 = getelementptr i8, ptr %.1371, i64 %index1138 ; 2 uses
  %i.lc = getelementptr i8, ptr %next.gep1140, i64 16
  %wide.load1141 = load <16 x i8>, ptr %next.gep1140, align 1, !tbaa !7
  %wide.load1142 = load <16 x i8>, ptr %i.lc, align 1, !tbaa !7
  %i.ld = getelementptr i8, ptr %next.gep1139, i64 16
  store <16 x i8> %wide.load1141, ptr %next.gep1139, align 1, !tbaa !7
  store <16 x i8> %wide.load1142, ptr %i.ld, align 1, !tbaa !7
  %index.next1143 = add nuw i64 %index1138, 32    ; 2 uses
  %i.le = icmp eq i64 %index.next1143, %n.vec1136
  br i1 %i.le, label %middle.block1144, label %vector.body1137, !llvm.loop !54

middle.block1144:                                 ; preds = %vector.body1137
  %cmp.n1145 = icmp eq i64 %i.ky, %n.vec1136
  br i1 %cmp.n1145, label %.loopexit592, label %vec.epilog.iter.check1151

vec.epilog.iter.check1151:                        ; preds = %middle.block1144
  %min.epilog.iters.check1152 = icmp eq i64 %n.mod.vf1135, 0
  br i1 %min.epilog.iters.check1152, label %.lr.ph672.preheader, label %vec.epilog.ph1153, !prof !45

vec.epilog.ph1153:                                ; preds = %vector.main.loop.iter.check1132, %vec.epilog.iter.check1151
  %vec.epilog.resume.val1146 = phi i64 [ %n.vec1136, %vec.epilog.iter.check1151 ], [ 0, %vector.main.loop.iter.check1132 ]
  %n.vec1155 = and i64 %i.ky, -4                  ; 4 uses
  %i.lf = getelementptr i8, ptr %.10, i64 %n.vec1155
  %i.lg = getelementptr i8, ptr %.1371, i64 %n.vec1155
  br label %vec.epilog.vector.body1156

vec.epilog.vector.body1156:                       ; preds = %vec.epilog.vector.body1156, %vec.epilog.ph1153
  %index1157 = phi i64 [ %vec.epilog.resume.val1146, %vec.epilog.ph1153 ], [ %index.next1161, %vec.epilog.vector.body1156 ] ; 3 uses
  %next.gep1158 = getelementptr i8, ptr %.10, i64 %index1157
  %next.gep1159 = getelementptr i8, ptr %.1371, i64 %index1157
  %wide.load1160 = load <4 x i8>, ptr %next.gep1159, align 1, !tbaa !7
  store <4 x i8> %wide.load1160, ptr %next.gep1158, align 1, !tbaa !7
  %index.next1161 = add nuw i64 %index1157, 4     ; 2 uses
  %i.lh = icmp eq i64 %index.next1161, %n.vec1155
  br i1 %i.lh, label %vec.epilog.middle.block1162, label %vec.epilog.vector.body1156, !llvm.loop !55

vec.epilog.middle.block1162:                      ; preds = %vec.epilog.vector.body1156
  %cmp.n1163 = icmp eq i64 %i.ky, %n.vec1155
  br i1 %cmp.n1163, label %.loopexit592, label %.lr.ph672.preheader

.lr.ph672.preheader:                              ; preds = %iter.check1149, %vec.epilog.iter.check1151, %vec.epilog.middle.block1162
  %.14671.ph = phi ptr [ %.10, %iter.check1149 ], [ %i.la, %vec.epilog.iter.check1151 ], [ %i.lf, %vec.epilog.middle.block1162 ]
  %.2372670.ph = phi ptr [ %.1371, %iter.check1149 ], [ %i.lb, %vec.epilog.iter.check1151 ], [ %i.lg, %vec.epilog.middle.block1162 ]
  br label %.lr.ph672

.lr.ph672:                                        ; preds = %.lr.ph672.preheader, %.lr.ph672
  %.14671 = phi ptr [ %i.lk, %.lr.ph672 ], [ %.14671.ph, %.lr.ph672.preheader ] ; 2 uses
  %.2372670 = phi ptr [ %i.li, %.lr.ph672 ], [ %.2372670.ph, %.lr.ph672.preheader ] ; 2 uses
  %i.li = getelementptr inbounds nuw i8, ptr %.2372670, i64 1
  %i.lj = load i8, ptr %.2372670, align 1, !tbaa !7
  %i.lk = getelementptr inbounds nuw i8, ptr %.14671, i64 1 ; 2 uses
  store i8 %i.lj, ptr %.14671, align 1, !tbaa !7
  %i.ll = icmp ult ptr %i.lk, %i.ku
  br i1 %i.ll, label %.lr.ph672, label %.loopexit592, !llvm.loop !56

bb.bg:                                            ; preds = %bb.bf
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.10, ptr align 1 %.1371, i64 %i.ks, i1 false)
  br label %.loopexit592

.loopexit592:                                     ; preds = %.lr.ph672, %middle.block1144, %vec.epilog.middle.block1162, %.preheader, %bb.bg
  %i.lm = icmp eq ptr %i.ku, %i.f
  br i1 %i.lm, label %bb.bs, label %.preheader596

.preheader596:                                    ; preds = %.loopexit, %_ZN10duckdb_lz4L13LZ4_wildCopy8EPvPKvS0_.exit520, %bb.g, %.loopexit592
  %.4.ph = phi ptr [ %.10548, %_ZN10duckdb_lz4L13LZ4_wildCopy8EPvPKvS0_.exit520 ], [ %.10548, %.loopexit592 ], [ %.10548, %.loopexit ], [ %0, %bb.g ] ; 2 uses
  %.6.ph = phi ptr [ %i.ja, %_ZN10duckdb_lz4L13LZ4_wildCopy8EPvPKvS0_.exit520 ], [ %i.ku, %.loopexit592 ], [ %.13, %.loopexit ], [ %1, %bb.g ] ; 3 uses
  %i.ln = getelementptr inbounds nuw i8, ptr %.4.ph, i64 1 ; 3 uses
  %i.lo = load i8, ptr %.4.ph, align 1, !tbaa !7
  %i.lp = zext i8 %i.lo to i32                    ; 4 uses
  %i.lq = lshr i32 %i.lp, 4                       ; 2 uses
  %cond649 = icmp eq i32 %i.lq, 15
  br i1 %cond649, label %._crit_edge, label %.lr.ph651

.lr.ph651:                                        ; preds = %.preheader596
  %i.lr = zext nneg i32 %i.lq to i64              ; 2 uses
  %.not679 = icmp eq i32 %5, 1
  br i1 %.not679, label %.lr.ph651.split.us, label %.lr.ph651.split

.lr.ph651.split.us:                               ; preds = %.lr.ph651, %bb.bi
  %i.ls = phi i64 [ %i.mv, %bb.bi ], [ %i.lr, %.lr.ph651 ] ; 3 uses
  %i.lt = phi i32 [ %i.mt, %bb.bi ], [ %i.lp, %.lr.ph651 ] ; 2 uses
  %i.lu = phi ptr [ %i.mr, %bb.bi ], [ %i.ln, %.lr.ph651 ] ; 4 uses
  %.6650.us = phi ptr [ %i.mq, %bb.bi ], [ %.6.ph, %.lr.ph651 ] ; 4 uses
  %i.lv = icmp ult ptr %i.lu, %i.k
  %i.lw = icmp ule ptr %.6650.us, %i.l
  %i.lx = and i1 %i.lv, %i.lw
  br i1 %i.lx, label %bb.bh, label %.loopexit597, !prof !27

bb.bh:                                            ; preds = %.lr.ph651.split.us
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %.6650.us, ptr noundef nonnull align 1 dereferenceable(16) %i.lu, i64 16, i1 false)
  %i.ly = getelementptr inbounds nuw i8, ptr %.6650.us, i64 %i.ls ; 6 uses
  %i.lz = getelementptr inbounds nuw i8, ptr %i.lu, i64 %i.ls ; 3 uses
  %i.ma = and i32 %i.lt, 15                       ; 2 uses
  %i.mb = zext nneg i32 %i.ma to i64              ; 2 uses
  %.val483.us = load i16, ptr %i.lz, align 1, !tbaa !7 ; 2 uses
  %i.mc = zext i16 %.val483.us to i64             ; 2 uses
  %i.md = getelementptr inbounds nuw i8, ptr %i.lz, i64 2 ; 2 uses
  %i.me = sub nsw i64 0, %i.mc
  %i.mf = getelementptr inbounds i8, ptr %i.ly, i64 %i.me ; 4 uses
  %i.mg = icmp ne i32 %i.ma, 15
  %i.mh = icmp ugt i16 %.val483.us, 7
  %or.cond3.us = and i1 %i.mg, %i.mh
  br i1 %or.cond3.us, label %bb.bi, label %.loopexit598

bb.bi:                                            ; preds = %bb.bh
  %i.mi = load i64, ptr %i.mf, align 1
  store i64 %i.mi, ptr %i.ly, align 1
  %i.mj = getelementptr inbounds nuw i8, ptr %i.ly, i64 8
  %i.mk = getelementptr inbounds nuw i8, ptr %i.mf, i64 8
  %i.ml = load i64, ptr %i.mk, align 1
  store i64 %i.ml, ptr %i.mj, align 1
  %i.mm = getelementptr inbounds nuw i8, ptr %i.ly, i64 16
  %i.mn = getelementptr inbounds nuw i8, ptr %i.mf, i64 16
  %i.mo = load i16, ptr %i.mn, align 1
  store i16 %i.mo, ptr %i.mm, align 1
  %i.mp = getelementptr inbounds nuw i8, ptr %i.ly, i64 %i.mb
  %i.mq = getelementptr inbounds nuw i8, ptr %i.mp, i64 4 ; 2 uses
  %i.mr = getelementptr inbounds nuw i8, ptr %i.lz, i64 3 ; 2 uses
  %i.ms = load i8, ptr %i.md, align 1, !tbaa !7
  %i.mt = zext i8 %i.ms to i32                    ; 3 uses
  %i.mu = lshr i32 %i.mt, 4                       ; 2 uses
  %i.mv = zext nneg i32 %i.mu to i64
  %cond.us = icmp eq i32 %i.mu, 15
  br i1 %cond.us, label %._crit_edge, label %.lr.ph651.split.us, !llvm.loop !48

bb.bj:                                            ; preds = %bb.be
  %i.mw = icmp ult i64 %.1378, 8
  br i1 %i.mw, label %bb.bk, label %bb.bl, !prof !19

bb.bk:                                            ; preds = %bb.bj
  store i32 0, ptr %.10, align 1, !tbaa !7
  %i.mx = load i8, ptr %.1371, align 1, !tbaa !7
  store i8 %i.mx, ptr %.10, align 1, !tbaa !7
  %i.my = getelementptr inbounds nuw i8, ptr %.1371, i64 1
  %i.mz = load i8, ptr %i.my, align 1, !tbaa !7
  %i.na = getelementptr inbounds nuw i8, ptr %.10, i64 1
  store i8 %i.mz, ptr %i.na, align 1, !tbaa !7
  %i.nb = getelementptr inbounds nuw i8, ptr %.1371, i64 2
  %i.nc = load i8, ptr %i.nb, align 1, !tbaa !7
  %i.nd = getelementptr inbounds nuw i8, ptr %.10, i64 2
  store i8 %i.nc, ptr %i.nd, align 1, !tbaa !7
  %i.ne = getelementptr inbounds nuw i8, ptr %.1371, i64 3
  %i.nf = load i8, ptr %i.ne, align 1, !tbaa !7
  %i.ng = getelementptr inbounds nuw i8, ptr %.10, i64 3
  store i8 %i.nf, ptr %i.ng, align 1, !tbaa !7
  %i.nh = getelementptr inbounds nuw [4 x i8], ptr @_ZN10duckdb_lz4L10inc32tableE, i64 %.1378
  %i.ni = load i32, ptr %i.nh, align 4, !tbaa !3
  %i.nj = zext i32 %i.ni to i64
  %i.nk = getelementptr inbounds nuw i8, ptr %.1371, i64 %i.nj ; 2 uses
  %i.nl = getelementptr inbounds nuw i8, ptr %.10, i64 4
  %i.nm = load i32, ptr %i.nk, align 1
  store i32 %i.nm, ptr %i.nl, align 1
  %i.nn = getelementptr inbounds nuw [4 x i8], ptr @_ZN10duckdb_lz4L10dec64tableE, i64 %.1378
  %i.no = load i32, ptr %i.nn, align 4, !tbaa !3
  %i.np = sext i32 %i.no to i64
  %i.nq = sub nsw i64 0, %i.np
  %i.nr = getelementptr inbounds i8, ptr %i.nk, i64 %i.nq
  br label %bb.bm

bb.bl:                                            ; preds = %bb.bj
  %i.ns = load i64, ptr %.1371, align 1
  store i64 %i.ns, ptr %.10, align 1
  %i.nt = getelementptr inbounds nuw i8, ptr %.1371, i64 8
  br label %bb.bm

bb.bm:                                            ; preds = %bb.bl, %bb.bk
  %.3373 = phi ptr [ %i.nr, %bb.bk ], [ %i.nt, %bb.bl ] ; 12 uses
  %.33731048 = ptrtoaddr ptr %.3373 to i64        ; 3 uses
  %i.nu = getelementptr inbounds nuw i8, ptr %.10, i64 8 ; 8 uses
  br i1 %i.kp, label %bb.bn, label %bb.bq, !prof !19

bb.bn:                                            ; preds = %bb.bm
  %i.nv = getelementptr inbounds i8, ptr %i.f, i64 -7 ; 4 uses
  %i.nw = getelementptr inbounds i8, ptr %i.f, i64 -5
  %i.nx = icmp ugt ptr %i.ja, %i.nw
  br i1 %i.nx, label %_ZN10duckdb_lz4L14LZ4_wildCopy32EPvPKvS0_.exit.thread, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.ny = icmp ult ptr %i.nu, %i.nv
  br i1 %i.ny, label %.preheader593.preheader, label %bb.bp

.preheader593.preheader:                          ; preds = %bb.bo
  %i.nz = add i64 %9, %i.e
  %i.oa = add i64 %i.nz, -7
  %i.ob = add i64 %.101050, 16
  %umax1070 = tail call i64 @llvm.umax.i64(i64 %i.oa, i64 %i.ob)
  %i.oc = add i64 %umax1070, -9
  %i.od = sub i64 %i.oc, %.101050                 ; 2 uses
  %i.oe = lshr i64 %i.od, 3
  %i.of = add nuw nsw i64 %i.oe, 1                ; 2 uses
  %min.iters.check1072 = icmp ult i64 %i.od, 104
  br i1 %min.iters.check1072, label %.preheader593.preheader1209, label %vector.memcheck1068

vector.memcheck1068:                              ; preds = %.preheader593.preheader
  %i.og = sub i64 %.101050, %.33731048
  %i.oh = add i64 %i.og, 7
  %diff.check1069 = icmp ult i64 %i.oh, 31
  br i1 %diff.check1069, label %.preheader593.preheader1209, label %vector.ph1073

vector.ph1073:                                    ; preds = %vector.memcheck1068
  %n.vec1075 = and i64 %i.of, 4611686018427387900 ; 3 uses
  %i.oi = shl i64 %n.vec1075, 3                   ; 2 uses
  %i.oj = getelementptr i8, ptr %.3373, i64 %i.oi
  %i.ok = getelementptr i8, ptr %i.nu, i64 %i.oi
  br label %vector.body1076

vector.body1076:                                  ; preds = %vector.body1076, %vector.ph1073
  %index1077 = phi i64 [ 0, %vector.ph1073 ], [ %index.next1082, %vector.body1076 ] ; 2 uses
  %i.ol = shl i64 %index1077, 3                   ; 2 uses
  %next.gep1078 = getelementptr i8, ptr %.3373, i64 %i.ol ; 2 uses
  %next.gep1079 = getelementptr i8, ptr %i.nu, i64 %i.ol ; 2 uses
  %i.om = getelementptr i8, ptr %next.gep1078, i64 16
  %wide.load1080 = load <2 x i64>, ptr %next.gep1078, align 1
  %wide.load1081 = load <2 x i64>, ptr %i.om, align 1
  %i.on = getelementptr i8, ptr %next.gep1079, i64 16
  store <2 x i64> %wide.load1080, ptr %next.gep1079, align 1
  store <2 x i64> %wide.load1081, ptr %i.on, align 1
  %index.next1082 = add nuw i64 %index1077, 4     ; 2 uses
  %i.oo = icmp eq i64 %index.next1082, %n.vec1075
  br i1 %i.oo, label %middle.block1083, label %vector.body1076, !llvm.loop !57

middle.block1083:                                 ; preds = %vector.body1076
  %cmp.n1084 = icmp eq i64 %i.of, %n.vec1075
  br i1 %cmp.n1084, label %_ZN10duckdb_lz4L13LZ4_wildCopy8EPvPKvS0_.exit517, label %.preheader593.preheader1209

.preheader593.preheader1209:                      ; preds = %vector.memcheck1068, %.preheader593.preheader, %middle.block1083
  %.09.i515.ph = phi ptr [ %.3373, %vector.memcheck1068 ], [ %.3373, %.preheader593.preheader ], [ %i.oj, %middle.block1083 ]
  %.0.i516.ph = phi ptr [ %i.nu, %vector.memcheck1068 ], [ %i.nu, %.preheader593.preheader ], [ %i.ok, %middle.block1083 ]
  br label %.preheader593

.preheader593:                                    ; preds = %.preheader593.preheader1209, %.preheader593
  %.09.i515 = phi ptr [ %i.or, %.preheader593 ], [ %.09.i515.ph, %.preheader593.preheader1209 ] ; 2 uses
  %.0.i516 = phi ptr [ %i.oq, %.preheader593 ], [ %.0.i516.ph, %.preheader593.preheader1209 ] ; 2 uses
  %i.op = load i64, ptr %.09.i515, align 1
  store i64 %i.op, ptr %.0.i516, align 1
  %i.oq = getelementptr inbounds nuw i8, ptr %.0.i516, i64 8 ; 2 uses
  %i.or = getelementptr inbounds nuw i8, ptr %.09.i515, i64 8
  %i.os = icmp ult ptr %i.oq, %i.nv
  br i1 %i.os, label %.preheader593, label %_ZN10duckdb_lz4L13LZ4_wildCopy8EPvPKvS0_.exit517, !llvm.loop !58

_ZN10duckdb_lz4L13LZ4_wildCopy8EPvPKvS0_.exit517: ; preds = %.preheader593, %middle.block1083
  %i.ot = ptrtoint ptr %i.nv to i64
  %i.ou = ptrtoint ptr %i.nu to i64
  %i.ov = sub i64 %i.ot, %i.ou
  %i.ow = getelementptr inbounds i8, ptr %.3373, i64 %i.ov
  br label %bb.bp

bb.bp:                                            ; preds = %_ZN10duckdb_lz4L13LZ4_wildCopy8EPvPKvS0_.exit517, %bb.bo
  %.4374 = phi ptr [ %i.ow, %_ZN10duckdb_lz4L13LZ4_wildCopy8EPvPKvS0_.exit517 ], [ %.3373, %bb.bo ] ; 6 uses
  %.15 = phi ptr [ %i.nv, %_ZN10duckdb_lz4L13LZ4_wildCopy8EPvPKvS0_.exit517 ], [ %i.nu, %bb.bo ] ; 7 uses
  %i.ox = icmp ult ptr %.15, %i.ja
  br i1 %i.ox, label %iter.check1109, label %_ZN10duckdb_lz4L13LZ4_wildCopy8EPvPKvS0_.exit520

iter.check1109:                                   ; preds = %bb.bp
  %i.oy = add i64 %.12392, %.101050
  %i.oz = add i64 %9, %i.e
  %i.pa = add i64 %i.oz, -7
  %i.pb = add i64 %.101050, 8
  %umax1089 = tail call i64 @llvm.umax.i64(i64 %i.pa, i64 %i.pb)
  %i.pc = sub i64 %i.oy, %umax1089                ; 7 uses
  %min.iters.check1091.a = icmp ult i64 %i.pc, 4
  br i1 %min.iters.check1091.a, label %.lr.ph669.preheader, label %vector.memcheck1087

vector.memcheck1087:                              ; preds = %iter.check1109
  %i.pd = sub i64 %.101050, %.33731048
  %i.pe = add i64 %i.pd, 7
  %diff.check1088 = icmp ult i64 %i.pe, 31
  br i1 %diff.check1088, label %.lr.ph669.preheader, label %vector.main.loop.iter.check1092

vector.main.loop.iter.check1092:                  ; preds = %vector.memcheck1087
  %min.iters.check1093 = icmp ult i64 %i.pc, 32
  br i1 %min.iters.check1093, label %vec.epilog.ph1113, label %vector.ph1094

vector.ph1094:                                    ; preds = %vector.main.loop.iter.check1092
  %n.mod.vf1095 = and i64 %i.pc, 28
  %n.vec1096 = and i64 %i.pc, -32                 ; 5 uses
  %i.pf = getelementptr i8, ptr %.15, i64 %n.vec1096
  %i.pg = getelementptr i8, ptr %.4374, i64 %n.vec1096
  br label %vector.body1097

vector.body1097:                                  ; preds = %vector.body1097, %vector.ph1094
  %index1098 = phi i64 [ 0, %vector.ph1094 ], [ %index.next1103, %vector.body1097 ] ; 3 uses
  %next.gep1099 = getelementptr i8, ptr %.15, i64 %index1098 ; 2 uses
  %next.gep1100 = getelementptr i8, ptr %.4374, i64 %index1098 ; 2 uses
  %i.ph = getelementptr i8, ptr %next.gep1100, i64 16
  %wide.load1101 = load <16 x i8>, ptr %next.gep1100, align 1, !tbaa !7
  %wide.load1102 = load <16 x i8>, ptr %i.ph, align 1, !tbaa !7
  %i.pi = getelementptr i8, ptr %next.gep1099, i64 16
  store <16 x i8> %wide.load1101, ptr %next.gep1099, align 1, !tbaa !7
  store <16 x i8> %wide.load1102, ptr %i.pi, align 1, !tbaa !7
  %index.next1103 = add nuw i64 %index1098, 32    ; 2 uses
  %i.pj = icmp eq i64 %index.next1103, %n.vec1096
  br i1 %i.pj, label %middle.block1104, label %vector.body1097, !llvm.loop !59

middle.block1104:                                 ; preds = %vector.body1097
  %cmp.n1105 = icmp eq i64 %i.pc, %n.vec1096
  br i1 %cmp.n1105, label %_ZN10duckdb_lz4L13LZ4_wildCopy8EPvPKvS0_.exit520, label %vec.epilog.iter.check1111

vec.epilog.iter.check1111:                        ; preds = %middle.block1104
  %min.epilog.iters.check1112 = icmp eq i64 %n.mod.vf1095, 0
  br i1 %min.epilog.iters.check1112, label %.lr.ph669.preheader, label %vec.epilog.ph1113, !prof !45

vec.epilog.ph1113:                                ; preds = %vector.main.loop.iter.check1092, %vec.epilog.iter.check1111
  %vec.epilog.resume.val1106 = phi i64 [ %n.vec1096, %vec.epilog.iter.check1111 ], [ 0, %vector.main.loop.iter.check1092 ]
  %n.vec1115 = and i64 %i.pc, -4                  ; 4 uses
  %i.pk = getelementptr i8, ptr %.15, i64 %n.vec1115
  %i.pl = getelementptr i8, ptr %.4374, i64 %n.vec1115
  br label %vec.epilog.vector.body1116

vec.epilog.vector.body1116:                       ; preds = %vec.epilog.vector.body1116, %vec.epilog.ph1113
  %index1117 = phi i64 [ %vec.epilog.resume.val1106, %vec.epilog.ph1113 ], [ %index.next1121, %vec.epilog.vector.body1116 ] ; 3 uses
  %next.gep1118 = getelementptr i8, ptr %.15, i64 %index1117
  %next.gep1119 = getelementptr i8, ptr %.4374, i64 %index1117
  %wide.load1120 = load <4 x i8>, ptr %next.gep1119, align 1, !tbaa !7
  store <4 x i8> %wide.load1120, ptr %next.gep1118, align 1, !tbaa !7
  %index.next1121 = add nuw i64 %index1117, 4     ; 2 uses
  %i.pm = icmp eq i64 %index.next1121, %n.vec1115
  br i1 %i.pm, label %vec.epilog.middle.block1122, label %vec.epilog.vector.body1116, !llvm.loop !60

vec.epilog.middle.block1122:                      ; preds = %vec.epilog.vector.body1116
  %cmp.n1123 = icmp eq i64 %i.pc, %n.vec1115
  br i1 %cmp.n1123, label %_ZN10duckdb_lz4L13LZ4_wildCopy8EPvPKvS0_.exit520, label %.lr.ph669.preheader

.lr.ph669.preheader:                              ; preds = %vector.memcheck1087, %iter.check1109, %vec.epilog.iter.check1111, %vec.epilog.middle.block1122
  %.16667.ph = phi ptr [ %.15, %iter.check1109 ], [ %.15, %vector.memcheck1087 ], [ %i.pf, %vec.epilog.iter.check1111 ], [ %i.pk, %vec.epilog.middle.block1122 ]
  %.5375666.ph = phi ptr [ %.4374, %iter.check1109 ], [ %.4374, %vector.memcheck1087 ], [ %i.pg, %vec.epilog.iter.check1111 ], [ %i.pl, %vec.epilog.middle.block1122 ]
  br label %.lr.ph669

.lr.ph669:                                        ; preds = %.lr.ph669.preheader, %.lr.ph669
  %.16667 = phi ptr [ %i.pp, %.lr.ph669 ], [ %.16667.ph, %.lr.ph669.preheader ] ; 2 uses
  %.5375666 = phi ptr [ %i.pn, %.lr.ph669 ], [ %.5375666.ph, %.lr.ph669.preheader ] ; 2 uses
  %i.pn = getelementptr inbounds nuw i8, ptr %.5375666, i64 1
  %i.po = load i8, ptr %.5375666, align 1, !tbaa !7
  %i.pp = getelementptr inbounds nuw i8, ptr %.16667, i64 1 ; 2 uses
  store i8 %i.po, ptr %.16667, align 1, !tbaa !7
  %i.pq = icmp ult ptr %i.pp, %i.ja
  br i1 %i.pq, label %.lr.ph669, label %_ZN10duckdb_lz4L13LZ4_wildCopy8EPvPKvS0_.exit520, !llvm.loop !61

bb.bq:                                            ; preds = %bb.bm
  %i.pr = load i64, ptr %.3373, align 1
  store i64 %i.pr, ptr %i.nu, align 1
  %i.ps = icmp ugt i64 %.12392, 16
  br i1 %i.ps, label %bb.br, label %_ZN10duckdb_lz4L13LZ4_wildCopy8EPvPKvS0_.exit520

bb.br:                                            ; preds = %bb.bq
  %i.pt = getelementptr inbounds nuw i8, ptr %.10, i64 16 ; 4 uses
  %i.pu = add i64 %.12392, %.101050
  %i.pv = add i64 %.101050, 24
  %umax1051 = tail call i64 @llvm.umax.i64(i64 %i.pu, i64 %i.pv)
  %i.pw = add i64 %umax1051, -17
  %i.px = sub i64 %i.pw, %.101050                 ; 2 uses
  %i.py = lshr i64 %i.px, 3
  %i.pz = add nuw nsw i64 %i.py, 1                ; 2 uses
  %min.iters.check1053 = icmp ult i64 %i.px, 104
  br i1 %min.iters.check1053, label %scalar.ph1052.preheader, label %vector.memcheck1046

vector.memcheck1046:                              ; preds = %bb.br
  %i.qa = sub i64 %.101047, %.33731048
  %i.qb = add i64 %i.qa, 7
  %diff.check1049 = icmp ult i64 %i.qb, 31
  br i1 %diff.check1049, label %scalar.ph1052.preheader, label %vector.ph1054

vector.ph1054:                                    ; preds = %vector.memcheck1046
  %n.vec1056 = and i64 %i.pz, 4611686018427387900 ; 3 uses
  %i.qc = shl i64 %n.vec1056, 3                   ; 2 uses
  %i.qd = getelementptr i8, ptr %.3373, i64 %i.qc
  %i.qe = getelementptr i8, ptr %i.pt, i64 %i.qc
  br label %vector.body1057

vector.body1057:                                  ; preds = %vector.body1057, %vector.ph1054
  %index1058 = phi i64 [ 0, %vector.ph1054 ], [ %index.next1063, %vector.body1057 ] ; 2 uses
  %i.qf = shl i64 %index1058, 3                   ; 2 uses
  %next.gep1059 = getelementptr i8, ptr %.3373, i64 %i.qf ; 2 uses
  %next.gep1060 = getelementptr i8, ptr %i.pt, i64 %i.qf ; 2 uses
  %i.qg = getelementptr inbounds nuw i8, ptr %next.gep1059, i64 8
  %i.qh = getelementptr inbounds nuw i8, ptr %next.gep1059, i64 24
  %wide.load1061 = load <2 x i64>, ptr %i.qg, align 1
  %wide.load1062 = load <2 x i64>, ptr %i.qh, align 1
  %i.qi = getelementptr i8, ptr %next.gep1060, i64 16
  store <2 x i64> %wide.load1061, ptr %next.gep1060, align 1
  store <2 x i64> %wide.load1062, ptr %i.qi, align 1
  %index.next1063 = add nuw i64 %index1058, 4     ; 2 uses
  %i.qj = icmp eq i64 %index.next1063, %n.vec1056
  br i1 %i.qj, label %middle.block1064, label %vector.body1057, !llvm.loop !62

middle.block1064:                                 ; preds = %vector.body1057
  %cmp.n1065 = icmp eq i64 %i.pz, %n.vec1056
  br i1 %cmp.n1065, label %_ZN10duckdb_lz4L13LZ4_wildCopy8EPvPKvS0_.exit520, label %scalar.ph1052.preheader

scalar.ph1052.preheader:                          ; preds = %vector.memcheck1046, %bb.br, %middle.block1064
  %.3373.pn.ph = phi ptr [ %.3373, %vector.memcheck1046 ], [ %.3373, %bb.br ], [ %i.qd, %middle.block1064 ]
  %.0.i519.ph = phi ptr [ %i.pt, %vector.memcheck1046 ], [ %i.pt, %bb.br ], [ %i.qe, %middle.block1064 ]
  br label %scalar.ph1052

scalar.ph1052:                                    ; preds = %scalar.ph1052.preheader, %scalar.ph1052
  %.3373.pn = phi ptr [ %.09.i518, %scalar.ph1052 ], [ %.3373.pn.ph, %scalar.ph1052.preheader ]
  %.0.i519 = phi ptr [ %i.ql, %scalar.ph1052 ], [ %.0.i519.ph, %scalar.ph1052.preheader ] ; 2 uses
  %.09.i518 = getelementptr inbounds nuw i8, ptr %.3373.pn, i64 8 ; 2 uses
  %i.qk = load i64, ptr %.09.i518, align 1
  store i64 %i.qk, ptr %.0.i519, align 1
  %i.ql = getelementptr inbounds nuw i8, ptr %.0.i519, i64 8 ; 2 uses
  %i.qm = icmp ult ptr %i.ql, %i.ja
  br i1 %i.qm, label %scalar.ph1052, label %_ZN10duckdb_lz4L13LZ4_wildCopy8EPvPKvS0_.exit520, !llvm.loop !63

_ZN10duckdb_lz4L13LZ4_wildCopy8EPvPKvS0_.exit520: ; preds = %scalar.ph1052, %.lr.ph669, %middle.block1064, %middle.block1104, %vec.epilog.middle.block1122, %bb.bp, %bb.bq
  br label %.preheader596, !llvm.loop !48

bb.bs:                                            ; preds = %._crit_edge765, %.loopexit592
  %.pre-phi = phi i64 [ %.pre, %._crit_edge765 ], [ %i.s, %.loopexit592 ]
  %i.qn = sub i64 %.pre-phi, %i.t
  %i.qo = trunc i64 %i.qn to i32
  br label %bb.bt

_ZN10duckdb_lz4L14LZ4_wildCopy32EPvPKvS0_.exit.thread: ; preds = %bb.r, %_ZN10duckdb_lz4L20read_variable_lengthEPPKhS1_i.exit494, %bb.i, %bb.l, %_ZN10duckdb_lz4L20read_variable_lengthEPPKhS1_i.exit, %.thread567, %bb.aa, %bb.p, %bb.j, %bb.q, %bb.ak, %bb.au, %bb.at, %._crit_edge, %_ZN10duckdb_lz4L20read_variable_lengthEPPKhS1_i.exit505, %bb.am, %bb.bn, %_ZN10duckdb_lz4L20read_variable_lengthEPPKhS1_i.exit514, %.loopexit606, %bb.ay, %bb.ar
  %.11549 = phi ptr [ %.6544, %bb.ar ], [ %.10548, %.loopexit606 ], [ %.10548, %bb.ay ], [ %.10548, %bb.bn ], [ %i.ik, %_ZN10duckdb_lz4L20read_variable_lengthEPPKhS1_i.exit514 ], [ %i.an, %bb.j ], [ %i.bw, %bb.q ], [ %i.fx, %_ZN10duckdb_lz4L20read_variable_lengthEPPKhS1_i.exit505 ], [ %i.ij, %bb.au ], [ %i.fx, %bb.am ], [ %.lcssa616, %._crit_edge ], [ %i.fw, %bb.ak ], [ %i.ii, %bb.at ], [ %i.bx, %bb.r ], [ %i.bx, %_ZN10duckdb_lz4L20read_variable_lengthEPPKhS1_i.exit494 ], [ %i.af, %bb.i ], [ %i.ao, %bb.l ], [ %i.ao, %_ZN10duckdb_lz4L20read_variable_lengthEPPKhS1_i.exit ], [ %.3542, %bb.aa ], [ %i.bv, %bb.p ], [ %.3542, %.thread567 ]
  %i.qp = ptrtoint ptr %.11549 to i64
  %i.qq = ptrtoint ptr %0 to i64
  %.neg = sub i64 %i.qq, %i.qp
  %i.qr = trunc i64 %.neg to i32
  %i.qs = add nsw i32 %i.qr, -1
  br label %bb.bt

bb.bt:                                            ; preds = %bb.bs, %_ZN10duckdb_lz4L14LZ4_wildCopy32EPvPKvS0_.exit.thread, %bb.c, %bb.e, %bb.d, %bb.f, %bb.a
  %.1 = phi i32 [ -1, %bb.a ], [ -1, %bb.d ], [ 0, %bb.c ], [ %i.q, %bb.e ], [ -1, %bb.f ], [ %i.qs, %_ZN10duckdb_lz4L14LZ4_wildCopy32EPvPKvS0_.exit.thread ], [ %i.qo, %bb.bs ]
  ret i32 %.1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define noundef i32 @_ZN10duckdb_lz427LZ4_decompress_safe_partialEPKcPciii(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #1 {
bb.a:
  %i.a = tail call i32 @llvm.smin.i32(i32 %3, i32 %4)
  %i.b = tail call fastcc noundef i32 @_ZN10duckdb_lz4L22LZ4_decompress_genericEPKcPciiNS_18earlyEnd_directiveENS_14dict_directiveEPKhS6_m(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %i.a, i32 noundef 1, i32 noundef 0, ptr noundef %1, ptr noundef null, i64 noundef 0)
  ret i32 %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define noundef i32 @_ZN10duckdb_lz419LZ4_decompress_fastEPKcPci(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #10 {
bb.a:
  %i.a = sext i32 %2 to i64
  %i.b = getelementptr inbounds i8, ptr %1, i64 %i.a ; 2 uses
  %i.c = ptrtoint ptr %i.b to i64                 ; 3 uses
  %i.d = ptrtoint ptr %1 to i64
  br label %.thread.i

.thread.i:                                        ; preds = %._crit_edge.i, %bb.a
  %.0115.i = phi ptr [ %0, %bb.a ], [ %.3.i, %._crit_edge.i ] ; 2 uses
  %.080.i = phi ptr [ %1, %bb.a ], [ %i.bx, %._crit_edge.i ] ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.0115.i, i64 1 ; 2 uses
  %i.f = load i8, ptr %.0115.i, align 1, !tbaa !7
  %i.g = zext i8 %i.f to i32                      ; 2 uses
  %i.h = lshr i32 %i.g, 4                         ; 2 uses
  %i.i = zext nneg i32 %i.h to i64
  %i.j = icmp eq i32 %i.h, 15
  br i1 %i.j, label %.preheader140.i, label %bb.b

.preheader140.i:                                  ; preds = %.thread.i, %.preheader140.i
  %i.k = phi ptr [ %i.n, %.preheader140.i ], [ %i.e, %.thread.i ] ; 2 uses
  %.0.i.i = phi i64 [ %i.o, %.preheader140.i ], [ 0, %.thread.i ]
  %i.l = load i8, ptr %i.k, align 1, !tbaa !7     ; 2 uses
  %i.m = zext i8 %i.l to i64
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 1 ; 2 uses
  %i.o = add i64 %.0.i.i, %i.m                    ; 2 uses
  %i.p = icmp eq i8 %i.l, -1
  br i1 %i.p, label %.preheader140.i, label %_ZN10duckdb_lz425read_long_length_no_checkEPPKh.exit.i, !llvm.loop !35

_ZN10duckdb_lz425read_long_length_no_checkEPPKh.exit.i: ; preds = %.preheader140.i
  %i.q = add i64 %i.o, 15
  br label %bb.b

bb.b:                                             ; preds = %_ZN10duckdb_lz425read_long_length_no_checkEPPKh.exit.i, %.thread.i
  %.1.i = phi ptr [ %i.n, %_ZN10duckdb_lz425read_long_length_no_checkEPPKh.exit.i ], [ %i.e, %.thread.i ] ; 2 uses
  %.086.i = phi i64 [ %i.q, %_ZN10duckdb_lz425read_long_length_no_checkEPPKh.exit.i ], [ %i.i, %.thread.i ] ; 4 uses
  %i.r = ptrtoint ptr %.080.i to i64
  %i.s = sub i64 %i.c, %i.r
  %i.t = icmp ult i64 %i.s, %.086.i
  br i1 %i.t, label %_ZN10duckdb_lz4L29LZ4_decompress_unsafe_genericEPKhPhimS1_m.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %.080.i, ptr nonnull align 1 %.1.i, i64 %.086.i, i1 false)
  %i.u = getelementptr inbounds nuw i8, ptr %.080.i, i64 %.086.i ; 11 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.1.i, i64 %.086.i ; 3 uses
  %i.w = ptrtoint ptr %i.u to i64                 ; 2 uses
  %i.x = sub i64 %i.c, %i.w                       ; 2 uses
  %i.y = icmp ult i64 %i.x, 12
  br i1 %i.y, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.z = icmp eq ptr %i.u, %i.b
  br i1 %i.z, label %bb.h, label %_ZN10duckdb_lz4L29LZ4_decompress_unsafe_genericEPKhPhimS1_m.exit

bb.e:                                             ; preds = %bb.c
  %i.aa = and i32 %i.g, 15                        ; 2 uses
  %i.ab = zext nneg i32 %i.aa to i64
  %.val.i = load i16, ptr %i.v, align 1, !tbaa !7 ; 2 uses
  %i.ac = zext i16 %.val.i to i64                 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.v, i64 2 ; 2 uses
  %i.ae = icmp eq i32 %i.aa, 15
  br i1 %i.ae, label %.preheader.i, label %bb.f

.preheader.i:                                     ; preds = %bb.e, %.preheader.i
  %i.af = phi ptr [ %i.ai, %.preheader.i ], [ %i.ad, %bb.e ] ; 2 uses
  %.0.i108.i = phi i64 [ %i.aj, %.preheader.i ], [ 0, %bb.e ]
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !7   ; 2 uses
  %i.ah = zext i8 %i.ag to i64
  %i.ai = getelementptr inbounds nuw i8, ptr %i.af, i64 1 ; 2 uses
  %i.aj = add i64 %.0.i108.i, %i.ah               ; 2 uses
  %i.ak = icmp eq i8 %i.ag, -1
  br i1 %i.ak, label %.preheader.i, label %_ZN10duckdb_lz425read_long_length_no_checkEPPKh.exit109.i, !llvm.loop !35

_ZN10duckdb_lz425read_long_length_no_checkEPPKh.exit109.i: ; preds = %.preheader.i
  %i.al = add i64 %i.aj, 15
  br label %bb.f

bb.f:                                             ; preds = %_ZN10duckdb_lz425read_long_length_no_checkEPPKh.exit109.i, %bb.e
  %.3.i = phi ptr [ %i.ai, %_ZN10duckdb_lz425read_long_length_no_checkEPPKh.exit109.i ], [ %i.ad, %bb.e ]
  %.092.i = phi i64 [ %i.al, %_ZN10duckdb_lz425read_long_length_no_checkEPPKh.exit109.i ], [ %i.ab, %bb.e ] ; 5 uses
  %i.am = add i64 %.092.i, 4                      ; 9 uses
  %i.an = icmp ult i64 %i.x, %i.am
  %i.ao = sub i64 %i.w, %i.d
  %.not.i = icmp ult i64 %i.ao, %i.ac
  %or.cond = select i1 %i.an, i1 true, i1 %.not.i
  br i1 %or.cond, label %_ZN10duckdb_lz4L29LZ4_decompress_unsafe_genericEPKhPhimS1_m.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ap = sub nsw i64 0, %i.ac
  %i.aq = getelementptr inbounds i8, ptr %i.u, i64 %i.ap ; 7 uses
  %.not147.i = icmp eq i64 %i.am, 0
  br i1 %.not147.i, label %._crit_edge.i, label %iter.check

iter.check:                                       ; preds = %bb.g
  %min.iters.check = icmp ugt i64 %.092.i, -5
  %i.ar = add i16 %.val.i, -1
  %diff.check = icmp ult i16 %i.ar, 31
  %or.cond32 = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond32, label %.lr.ph.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check24 = icmp ult i64 %i.am, 32
  br i1 %min.iters.check24, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %i.am, 28
  %n.vec = and i64 %i.am, -32                     ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.aq, i64 %index ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 16
  %wide.load = load <16 x i8>, ptr %i.as, align 1, !tbaa !7
  %wide.load25 = load <16 x i8>, ptr %i.at, align 1, !tbaa !7
  %i.au = getelementptr inbounds nuw i8, ptr %i.u, i64 %index ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 16
  store <16 x i8> %wide.load, ptr %i.au, align 1, !tbaa !7
  store <16 x i8> %wide.load25, ptr %i.av, align 1, !tbaa !7
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.aw = icmp eq i64 %index.next, %n.vec
  br i1 %i.aw, label %middle.block, label %vector.body, !llvm.loop !64
end_hunk_0
begin_hunk_1_@_ZN10duckdb_lz414LZ4_uncompressEPKcPci:bb.a
  %i.aj = add i64 %.0.i108.i.i, %i.ah             ; 2 uses
  %i.ak = icmp eq i8 %i.ag, -1
  br i1 %i.ak, label %.preheader.i.i, label %_ZN10duckdb_lz425read_long_length_no_checkEPPKh.exit109.i.i, !llvm.loop !35

_ZN10duckdb_lz425read_long_length_no_checkEPPKh.exit109.i.i: ; preds = %.preheader.i.i
  %i.al = add i64 %i.aj, 15
  br label %bb.f

bb.f:                                             ; preds = %_ZN10duckdb_lz425read_long_length_no_checkEPPKh.exit109.i.i, %bb.e
  %.3.i.i = phi ptr [ %i.ai, %_ZN10duckdb_lz425read_long_length_no_checkEPPKh.exit109.i.i ], [ %i.ad, %bb.e ]
  %.092.i.i = phi i64 [ %i.al, %_ZN10duckdb_lz425read_long_length_no_checkEPPKh.exit109.i.i ], [ %i.ab, %bb.e ] ; 5 uses
  %i.am = add i64 %.092.i.i, 4                    ; 9 uses
  %i.an = icmp ult i64 %i.x, %i.am
  %i.ao = sub i64 %i.w, %i.d
  %.not.i.i = icmp ult i64 %i.ao, %i.ac
  %or.cond.i = select i1 %i.an, i1 true, i1 %.not.i.i
  br i1 %or.cond.i, label %_ZN10duckdb_lz419LZ4_decompress_fastEPKcPci.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ap = sub nsw i64 0, %i.ac
  %i.aq = getelementptr inbounds i8, ptr %i.u, i64 %i.ap ; 7 uses
  %.not147.i.i = icmp eq i64 %i.am, 0
  br i1 %.not147.i.i, label %._crit_edge.i.i, label %iter.check

iter.check:                                       ; preds = %bb.g
  %min.iters.check = icmp ugt i64 %.092.i.i, -5
  %i.ar = add i16 %.val.i.i, -1
  %diff.check = icmp ult i16 %i.ar, 31
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check24 = icmp ult i64 %i.am, 32
  br i1 %min.iters.check24, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %i.am, 28
  %n.vec = and i64 %i.am, -32                     ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.aq, i64 %index ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 16
  %wide.load = load <16 x i8>, ptr %i.as, align 1, !tbaa !7
  %wide.load25 = load <16 x i8>, ptr %i.at, align 1, !tbaa !7
  %i.au = getelementptr inbounds nuw i8, ptr %i.u, i64 %index ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 16
  store <16 x i8> %wide.load, ptr %i.au, align 1, !tbaa !7
  store <16 x i8> %wide.load25, ptr %i.av, align 1, !tbaa !7
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.aw = icmp eq i64 %index.next, %n.vec
  br i1 %i.aw, label %middle.block, label %vector.body, !llvm.loop !99

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.am, %n.vec
  br i1 %cmp.n, label %._crit_edge.i.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.preheader, label %vec.epilog.ph, !prof !45

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec27 = and i64 %i.am, -4                    ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index28 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next30, %vec.epilog.vector.body ] ; 3 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aq, i64 %index28
  %wide.load29 = load <4 x i8>, ptr %i.ax, align 1, !tbaa !7
  %i.ay = getelementptr inbounds nuw i8, ptr %i.u, i64 %index28
  store <4 x i8> %wide.load29, ptr %i.ay, align 1, !tbaa !7
  %index.next30 = add nuw i64 %index28, 4         ; 2 uses
  %i.az = icmp eq i64 %index.next30, %n.vec27
  br i1 %i.az, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !100

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n31 = icmp eq i64 %i.am, %n.vec27
  br i1 %cmp.n31, label %._crit_edge.i.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.0146.i.i.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec27, %vec.epilog.middle.block ] ; 3 uses
  %i.ba = add i64 %.092.i.i, 3
  %i.bb = sub i64 %i.ba, %.0146.i.i.ph
  %xtraiter = and i64 %.092.i.i, 3                ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i.prol
  %.0146.i.i.prol = phi i64 [ %i.bf, %.lr.ph.i.i.prol ], [ %.0146.i.i.ph, %.lr.ph.i.i.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.prol ], [ 0, %.lr.ph.i.i.preheader ]
  %i.bc = getelementptr inbounds nuw i8, ptr %i.aq, i64 %.0146.i.i.prol
  %i.bd = load i8, ptr %i.bc, align 1, !tbaa !7
  %i.be = getelementptr inbounds nuw i8, ptr %i.u, i64 %.0146.i.i.prol
  store i8 %i.bd, ptr %i.be, align 1, !tbaa !7
  %i.bf = add nuw i64 %.0146.i.i.prol, 1          ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol, !llvm.loop !101

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.i.i.preheader
  %.0146.i.i.unr = phi i64 [ %.0146.i.i.ph, %.lr.ph.i.i.preheader ], [ %i.bf, %.lr.ph.i.i.prol ]
  %i.bg = icmp ult i64 %i.bb, 3
  br i1 %i.bg, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i
  %.0146.i.i = phi i64 [ %i.bw, %.lr.ph.i.i ], [ %.0146.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 7 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.aq, i64 %.0146.i.i
  %i.bi = load i8, ptr %i.bh, align 1, !tbaa !7
  %i.bj = getelementptr inbounds nuw i8, ptr %i.u, i64 %.0146.i.i
  store i8 %i.bi, ptr %i.bj, align 1, !tbaa !7
  %i.bk = add nuw i64 %.0146.i.i, 1               ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.aq, i64 %i.bk
  %i.bm = load i8, ptr %i.bl, align 1, !tbaa !7
  %i.bn = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.bk
  store i8 %i.bm, ptr %i.bn, align 1, !tbaa !7
  %i.bo = add nuw i64 %.0146.i.i, 2               ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.aq, i64 %i.bo
  %i.bq = load i8, ptr %i.bp, align 1, !tbaa !7
  %i.br = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.bo
  store i8 %i.bq, ptr %i.br, align 1, !tbaa !7
  %i.bs = add nuw i64 %.0146.i.i, 3               ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.aq, i64 %i.bs
  %i.bu = load i8, ptr %i.bt, align 1, !tbaa !7
  %i.bv = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.bs
  store i8 %i.bu, ptr %i.bv, align 1, !tbaa !7
  %i.bw = add nuw i64 %.0146.i.i, 4
  %exitcond.not.i.i.3 = icmp eq i64 %.0146.i.i, %.092.i.i
  br i1 %exitcond.not.i.i.3, label %._crit_edge.i.i, label %.lr.ph.i.i, !llvm.loop !102

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i, %middle.block, %vec.epilog.middle.block, %bb.g
  %i.bx = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.am ; 2 uses
  %i.by = ptrtoint ptr %i.bx to i64
  %i.bz = sub i64 %i.c, %i.by
  %i.ca = icmp ult i64 %i.bz, 5
  br i1 %i.ca, label %_ZN10duckdb_lz419LZ4_decompress_fastEPKcPci.exit, label %.thread.i.i

bb.h:                                             ; preds = %bb.d
  %i.cb = ptrtoint ptr %i.v to i64
  %i.cc = ptrtoint ptr %0 to i64
  %i.cd = sub i64 %i.cb, %i.cc
  %i.ce = trunc i64 %i.cd to i32
  br label %_ZN10duckdb_lz419LZ4_decompress_fastEPKcPci.exit

_ZN10duckdb_lz419LZ4_decompress_fastEPKcPci.exit: ; preds = %bb.b, %bb.f, %._crit_edge.i.i, %bb.d, %bb.h
  %.5.i.i = phi i32 [ -1, %bb.d ], [ %i.ce, %bb.h ], [ -1, %._crit_edge.i.i ], [ -1, %bb.f ], [ -1, %bb.b ]
  ret i32 %.5.i.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define noundef i32 @_ZN10duckdb_lz432LZ4_uncompress_unknownOutputSizeEPKcPcii(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #1 {
bb.a:
  %i.a = tail call fastcc noundef i32 @_ZN10duckdb_lz4L22LZ4_decompress_genericEPKcPciiNS_18earlyEnd_directiveENS_14dict_directiveEPKhS6_m(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef 0, i32 noundef 0, ptr noundef %1, ptr noundef null, i64 noundef 0)
  ret i32 %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef i32 @_ZN10duckdb_lz421LZ4_sizeofStreamStateEv() local_unnamed_addr #0 {
bb.a:
  ret i32 16416
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define noundef i32 @_ZN10duckdb_lz420LZ4_resetStreamStateEPvPc(ptr nofree noundef writeonly captures(none) initializes((0, 16416)) %0, ptr nofree noundef readnone captures(none) %1) local_unnamed_addr #3 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16416) %0, i8 0, i64 16416, i1 false)
  ret i32 0
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(write, argmem: none, inaccessiblemem: readwrite, target_mem: none) uwtable
define noundef ptr @_ZN10duckdb_lz410LZ4_createEPc(ptr nofree noundef readnone captures(none) %0) local_unnamed_addr #4 {
bb.a:
  %i.a = tail call noalias dereferenceable_or_null(16416) ptr @malloc(i64 noundef 16416) #18 ; 4 uses
  %i.b = icmp ne ptr %i.a, null
  %i.c = ptrtoint ptr %i.a to i64
  %i.d = and i64 %i.c, 7
  %.not.i.i = icmp eq i64 %i.d, 0
  %or.cond.i = and i1 %i.b, %.not.i.i
  br i1 %or.cond.i, label %bb.b, label %_ZN10duckdb_lz416LZ4_createStreamEv.exit

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(16416) %i.a, i8 0, i64 16416, i1 false)
  br label %_ZN10duckdb_lz416LZ4_createStreamEv.exit

_ZN10duckdb_lz416LZ4_createStreamEv.exit:         ; preds = %bb.a, %bb.b
  ret ptr %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef ptr @_ZN10duckdb_lz420LZ4_slideInputBufferEPv(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #15 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16384
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !7
  ret ptr %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc void @_ZN10duckdb_lz4L23LZ4_memcpy_using_offsetEPhPKhS0_m(ptr nofree noundef writeonly captures(address) initializes((0, 8)) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readnone captures(address) %2, i64 noundef range(i64 0, 16) %3) unnamed_addr #10 {
bb.a:
  %4 = ptrtoint ptr %0 to i64                     ; 2 uses
  %5 = ptrtoint ptr %2 to i64
  %6 = ptrtoint ptr %0 to i64                     ; 3 uses
  %7 = ptrtoint ptr %2 to i64
  switch i64 %3, label %bb.e [
    i64 1, label %bb.b
    i64 2, label %bb.c
    i64 4, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  %i.a = load i8, ptr %1, align 1, !tbaa !7
  %i.b = zext i8 %i.a to i32
  %.sroa.0.0.isplat = mul nuw i32 %i.b, 16843009
  br label %bb.i

bb.c:                                             ; preds = %bb.a
  %.sroa.0.0.copyload9 = load i16, ptr %1, align 1
  %.sroa.0.0.insert.ext = zext i16 %.sroa.0.0.copyload9 to i32 ; 2 uses
  %.sroa.0.2.insert.shift = shl nuw i32 %.sroa.0.0.insert.ext, 16
  %.sroa.0.2.insert.insert = or disjoint i32 %.sroa.0.2.insert.shift, %.sroa.0.0.insert.ext
  br label %bb.i

bb.d:                                             ; preds = %bb.a
  %.sroa.0.0.copyload2 = load i32, ptr %1, align 1
  br label %bb.i

bb.e:                                             ; preds = %bb.a
  %i.c = icmp samesign ult i64 %3, 8
  br i1 %i.c, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  store i32 0, ptr %0, align 1, !tbaa !7
  %i.d = load i8, ptr %1, align 1, !tbaa !7
  store i8 %i.d, ptr %0, align 1, !tbaa !7
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.f = load i8, ptr %i.e, align 1, !tbaa !7
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %i.f, ptr %i.g, align 1, !tbaa !7
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.i = load i8, ptr %i.h, align 1, !tbaa !7
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 2
  store i8 %i.i, ptr %i.j, align 1, !tbaa !7
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 3
  %i.l = load i8, ptr %i.k, align 1, !tbaa !7
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 3
  store i8 %i.l, ptr %i.m, align 1, !tbaa !7
  %i.n = getelementptr inbounds nuw [4 x i8], ptr @_ZN10duckdb_lz4L10inc32tableE, i64 %3
  %i.o = load i32, ptr %i.n, align 4, !tbaa !3
  %i.p = zext i32 %i.o to i64
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 %i.p ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.s = load i32, ptr %i.q, align 1
  store i32 %i.s, ptr %i.r, align 1
  %i.t = getelementptr inbounds nuw [4 x i8], ptr @_ZN10duckdb_lz4L10dec64tableE, i64 %3
  %i.u = load i32, ptr %i.t, align 4, !tbaa !3
  %i.v = sext i32 %i.u to i64
  %i.w = sub nsw i64 0, %i.v
  %i.x = getelementptr inbounds i8, ptr %i.q, i64 %i.w
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.y = load i64, ptr %1, align 1
  store i64 %i.y, ptr %0, align 1
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 8
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.023.i = phi ptr [ %i.x, %bb.f ], [ %i.z, %bb.g ] ; 5 uses
  %.0.i = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.aa = add i64 %4, 16
  %umax37 = tail call i64 @llvm.umax.i64(i64 %5, i64 %i.aa)
  %i.ab = add i64 %umax37, -9
  %i.ac = sub i64 %i.ab, %4                       ; 2 uses
  %i.ad = lshr i64 %i.ac, 3
  %i.ae = add nuw nsw i64 %i.ad, 1                ; 2 uses
  %min.iters.check39 = icmp ult i64 %i.ac, 104
  br i1 %min.iters.check39, label %scalar.ph38.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %bb.h
  %.023.i36 = ptrtoaddr ptr %.023.i to i64
  %i.af = sub i64 %6, %.023.i36
  %i.ag = add i64 %i.af, 7
  %diff.check = icmp ult i64 %i.ag, 31
  br i1 %diff.check, label %scalar.ph38.preheader, label %vector.ph40

vector.ph40:                                      ; preds = %vector.memcheck
  %n.vec42 = and i64 %i.ae, 4611686018427387900   ; 3 uses
  %i.ah = shl i64 %n.vec42, 3                     ; 2 uses
  %i.ai = getelementptr i8, ptr %.023.i, i64 %i.ah
  %i.aj = getelementptr i8, ptr %.0.i, i64 %i.ah
  br label %vector.body43

vector.body43:                                    ; preds = %vector.body43, %vector.ph40
  %index44 = phi i64 [ 0, %vector.ph40 ], [ %index.next48, %vector.body43 ] ; 2 uses
  %i.ak = shl i64 %index44, 3                     ; 2 uses
  %next.gep45 = getelementptr i8, ptr %.023.i, i64 %i.ak ; 2 uses
  %next.gep46 = getelementptr i8, ptr %.0.i, i64 %i.ak ; 2 uses
  %i.al = getelementptr i8, ptr %next.gep45, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep45, align 1
  %wide.load47 = load <2 x i64>, ptr %i.al, align 1
  %i.am = getelementptr i8, ptr %next.gep46, i64 16
  store <2 x i64> %wide.load, ptr %next.gep46, align 1
  store <2 x i64> %wide.load47, ptr %i.am, align 1
  %index.next48 = add nuw i64 %index44, 4         ; 2 uses
  %i.an = icmp eq i64 %index.next48, %n.vec42
  br i1 %i.an, label %middle.block49, label %vector.body43, !llvm.loop !103

middle.block49:                                   ; preds = %vector.body43
  %cmp.n50 = icmp eq i64 %i.ae, %n.vec42
  br i1 %cmp.n50, label %_ZN10duckdb_lz4L28LZ4_memcpy_using_offset_baseEPhPKhS0_m.exit, label %scalar.ph38.preheader

scalar.ph38.preheader:                            ; preds = %vector.memcheck, %bb.h, %middle.block49
  %.09.i.i.ph = phi ptr [ %.023.i, %vector.memcheck ], [ %.023.i, %bb.h ], [ %i.ai, %middle.block49 ]
  %.0.i.i.ph = phi ptr [ %.0.i, %vector.memcheck ], [ %.0.i, %bb.h ], [ %i.aj, %middle.block49 ]
  br label %scalar.ph38

scalar.ph38:                                      ; preds = %scalar.ph38.preheader, %scalar.ph38
  %.09.i.i = phi ptr [ %i.aq, %scalar.ph38 ], [ %.09.i.i.ph, %scalar.ph38.preheader ] ; 2 uses
  %.0.i.i = phi ptr [ %i.ap, %scalar.ph38 ], [ %.0.i.i.ph, %scalar.ph38.preheader ] ; 2 uses
  %i.ao = load i64, ptr %.09.i.i, align 1
  store i64 %i.ao, ptr %.0.i.i, align 1
  %i.ap = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 8 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.09.i.i, i64 8
  %i.ar = icmp ult ptr %i.ap, %2
  br i1 %i.ar, label %scalar.ph38, label %_ZN10duckdb_lz4L28LZ4_memcpy_using_offset_baseEPhPKhS0_m.exit, !llvm.loop !104

bb.i:                                             ; preds = %bb.d, %bb.c, %bb.b
  %.sroa.9.0 = phi i32 [ %.sroa.0.0.isplat, %bb.b ], [ %.sroa.0.2.insert.insert, %bb.c ], [ %.sroa.0.0.copyload2, %bb.d ] ; 5 uses
  store i32 %.sroa.9.0, ptr %0, align 1
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %.sroa.9.0, ptr %.sroa.9.0..sroa_idx, align 1
  %.025 = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.as = icmp ult ptr %.025, %2
  br i1 %i.as, label %.lr.ph.preheader, label %_ZN10duckdb_lz4L28LZ4_memcpy_using_offset_baseEPhPKhS0_m.exit

.lr.ph.preheader:                                 ; preds = %bb.i
  %i.at = add i64 %6, 16
  %umax = tail call i64 @llvm.umax.i64(i64 %7, i64 %i.at)
  %i.au = add i64 %umax, -9
  %i.av = sub i64 %i.au, %6                       ; 2 uses
  %i.aw = lshr i64 %i.av, 3
  %i.ax = add nuw nsw i64 %i.aw, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.av, 24
  br i1 %min.iters.check, label %.lr.ph.preheader53, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %i.ax, 4611686018427387900     ; 3 uses
  %i.ay = shl i64 %n.vec, 3                       ; 2 uses
  %i.az = getelementptr i8, ptr %.025, i64 %i.ay
  %i.ba = getelementptr i8, ptr %0, i64 %i.ay
  %broadcast.splatinsert = insertelement <2 x i32> poison, i32 %.sroa.9.0, i64 0
  %i.bb = shufflevector <2 x i32> %broadcast.splatinsert, <2 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bc = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %.025, i64 %i.bc
  %i.bd = getelementptr i8, ptr %.025, i64 %i.bc
  %next.gep33 = getelementptr i8, ptr %i.bd, i64 16
  store <4 x i32> %i.bb, ptr %next.gep, align 1
  store <4 x i32> %i.bb, ptr %next.gep33, align 1
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.be = icmp eq i64 %index.next, %n.vec
  br i1 %i.be, label %middle.block, label %vector.body, !llvm.loop !105

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ax, %n.vec
  br i1 %cmp.n, label %_ZN10duckdb_lz4L28LZ4_memcpy_using_offset_baseEPhPKhS0_m.exit, label %.lr.ph.preheader53

.lr.ph.preheader53:                               ; preds = %.lr.ph.preheader, %middle.block
  %.027.ph = phi ptr [ %.025, %.lr.ph.preheader ], [ %i.az, %middle.block ]
  %.pn26.ph = phi ptr [ %0, %.lr.ph.preheader ], [ %i.ba, %middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader53, %.lr.ph
  %.027 = phi ptr [ %.0, %.lr.ph ], [ %.027.ph, %.lr.ph.preheader53 ] ; 3 uses
  %.pn26 = phi ptr [ %.027, %.lr.ph ], [ %.pn26.ph, %.lr.ph.preheader53 ]
  store i32 %.sroa.9.0, ptr %.027, align 1
  %.sroa.9.0..sroa_idx3 = getelementptr inbounds nuw i8, ptr %.pn26, i64 12
  store i32 %.sroa.9.0, ptr %.sroa.9.0..sroa_idx3, align 1
  %.0 = getelementptr inbounds nuw i8, ptr %.027, i64 8 ; 2 uses
  %i.bf = icmp ult ptr %.0, %2
  br i1 %i.bf, label %.lr.ph, label %_ZN10duckdb_lz4L28LZ4_memcpy_using_offset_baseEPhPKhS0_m.exit, !llvm.loop !106

_ZN10duckdb_lz4L28LZ4_memcpy_using_offset_baseEPhPKhS0_m.exit: ; preds = %.lr.ph, %scalar.ph38, %middle.block, %middle.block49, %bb.i
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.usub.sat.i64(i64, i64) #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.usub.sat.v4i32(<4 x i32>, <4 x i32>) #16

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree nounwind willreturn memory(write, argmem: none, inaccessiblemem: readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nofree nounwind willreturn memory(inaccessiblemem: readwrite, errnomem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #17 = { nounwind }
attributes #18 = { nounwind allocsize(0) }
attributes #19 = { nounwind allocsize(0,1) }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!3 = !{!4, !4, i64 0}
!4 = !{!"int", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C++ TBAA"}
!7 = !{!5, !5, i64 0}
!8 = !{!9, !4, i64 16400}
!9 = !{!"_ZTSN10duckdb_lz421LZ4_stream_t_internalE", !5, i64 0, !10, i64 16384, !12, i64 16392, !4, i64 16400, !4, i64 16404, !4, i64 16408}
!10 = !{!"p1 omnipotent char", !11, i64 0}
!11 = !{!"any pointer", !5, i64 0}
!12 = !{!"p1 _ZTSN10duckdb_lz421LZ4_stream_t_internalE", !11, i64 0}
!13 = !{!9, !12, i64 16392}
!14 = !{!9, !10, i64 16384}
!15 = !{!9, !4, i64 16408}
!16 = !{!9, !4, i64 16404}
!17 = !{!18, !18, i64 0}
!18 = !{!"short", !5, i64 0}
!19 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!20 = distinct !{!20, !21}
!21 = !{!"llvm.loop.mustprogress"}
!22 = distinct !{!22, !21}
!23 = distinct !{!23, !21, !24, !25}
!24 = !{!"llvm.loop.isvectorized", i32 1}
!25 = !{!"llvm.loop.unroll.runtime.disable"}
!26 = distinct !{!26, !21, !24}
!27 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!28 = !{!"branch_weights", i32 127, i32 1}
!29 = !{!"branch_weights", i32 255873, i32 127}
!30 = distinct !{!30, !21}
!31 = distinct !{!31, !21}
!32 = distinct !{!32, !21, !24, !25}
!33 = distinct !{!33, !21, !24, !25}
!34 = !{!10, !10, i64 0}
!35 = distinct !{!35, !21}
!36 = !{!"branch_weights", i32 4001, i32 1}
!37 = !{!"branch_weights", i32 127, i32 255873}
!38 = distinct !{!38, !21}
!39 = !{!"branch_weights", i32 4001, i32 4000000}
!40 = distinct !{!40, !21}
!41 = !{!"branch_weights", i32 1, i32 4001}
!42 = !{!"branch_weights", i32 6002, i32 8002000}
!43 = distinct !{!43, !21}
!44 = distinct !{!44, !21, !24, !25}
!45 = !{!"branch_weights", i32 4, i32 28}
!46 = distinct !{!46, !21, !24, !25}
!47 = distinct !{!47, !21, !24}
!48 = distinct !{!48, !21}
!49 = distinct !{!49, !21, !24, !25}
!50 = distinct !{!50, !21, !24}
!51 = distinct !{!51, !21, !24, !25}
!52 = distinct !{!52, !21, !24, !25}
!53 = distinct !{!53, !21, !24}
!54 = distinct !{!54, !21, !24, !25}
!55 = distinct !{!55, !21, !24, !25}
!56 = distinct !{!56, !21, !24}
!57 = distinct !{!57, !21, !24, !25}
!58 = distinct !{!58, !21, !24}
!59 = distinct !{!59, !21, !24, !25}
!60 = distinct !{!60, !21, !24, !25}
!61 = distinct !{!61, !21, !24}
!62 = distinct !{!62, !21, !24, !25}
!63 = distinct !{!63, !21, !24}
!64 = distinct !{!64, !21, !24, !25}
!65 = distinct !{!65, !21, !24, !25}
!66 = distinct !{!66, !67}
!67 = !{!"llvm.loop.unroll.disable"}
!68 = distinct !{!68, !21, !24}
!69 = distinct !{!69, !21, !24, !25}
!70 = distinct !{!70, !21, !24, !25}
!71 = distinct !{!71, !67}
!72 = distinct !{!72, !21, !24}
!73 = !{!74, !75, i64 24}
!74 = !{!"_ZTSN10duckdb_lz427LZ4_streamDecode_t_internalE", !10, i64 0, !10, i64 8, !75, i64 16, !75, i64 24}
!75 = !{!"long", !5, i64 0}
!76 = !{!74, !10, i64 8}
!77 = !{!74, !10, i64 0}
!78 = !{!74, !75, i64 16}
!79 = distinct !{!79, !21, !24, !25}
!80 = distinct !{!80, !21, !24, !25}
!81 = distinct !{!81, !67}
!82 = distinct !{!82, !21, !24}
!83 = distinct !{!83, !21, !24, !25}
!84 = distinct !{!84, !21, !24, !25}
!85 = distinct !{!85, !67}
!86 = distinct !{!86, !21, !24}
!87 = distinct !{!87, !21, !24, !25}
!88 = distinct !{!88, !21, !24, !25}
!89 = distinct !{!89, !67}
!90 = distinct !{!90, !21, !24}
!91 = distinct !{!91, !21, !24, !25}
!92 = distinct !{!92, !21, !24, !25}
!93 = distinct !{!93, !67}
!94 = distinct !{!94, !21, !24}
!95 = distinct !{!95, !21, !24, !25}
!96 = distinct !{!96, !21, !24, !25}
!97 = distinct !{!97, !67}
!98 = distinct !{!98, !21, !24}
!99 = distinct !{!99, !21, !24, !25}
!100 = distinct !{!100, !21, !24, !25}
!101 = distinct !{!101, !67}
end_hunk_1
