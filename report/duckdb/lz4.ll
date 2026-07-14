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
  %i.a = ptrtoint ptr %1 to i64
  %i.b = icmp eq ptr %0, null
  %i.c = icmp slt i32 %3, 0
  %or.cond = or i1 %i.b, %i.c
  br i1 %or.cond, label %bb.bt, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = sext i32 %2 to i64
  %i.e = getelementptr inbounds i8, ptr %0, i64 %i.d ; 12 uses
  %i.f = zext nneg i32 %3 to i64                  ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 %i.f ; 13 uses
  %i.h = icmp eq ptr %7, null
  %i.i = getelementptr inbounds nuw i8, ptr %7, i64 %8
  %i.j = select i1 %i.h, ptr null, ptr %i.i       ; 4 uses
  %i.k = icmp ult i64 %8, 65536                   ; 3 uses
  %i.l = getelementptr inbounds i8, ptr %i.e, i64 -16 ; 2 uses
  %i.m = getelementptr inbounds i8, ptr %i.g, i64 -32 ; 3 uses
  %i.n = icmp eq i32 %3, 0
  br i1 %i.n, label %bb.c, label %bb.f, !prof !19

bb.c:                                             ; preds = %bb.b
  %.not453 = icmp eq i32 %4, 0
  br i1 %.not453, label %bb.d, label %bb.bt

bb.d:                                             ; preds = %bb.c
  %i.o = icmp eq i32 %2, 1
  br i1 %i.o, label %bb.e, label %bb.bt

bb.e:                                             ; preds = %bb.d
  %i.p = load i8, ptr %0, align 1, !tbaa !7
  %i.q = icmp ne i8 %i.p, 0
  %i.r = sext i1 %i.q to i32
  br label %bb.bt

bb.f:                                             ; preds = %bb.b
  %i.s = icmp eq i32 %2, 0
  br i1 %i.s, label %bb.bt, label %bb.g, !prof !19

bb.g:                                             ; preds = %bb.f
  %i.t = ptrtoint ptr %i.g to i64                 ; 5 uses
  %i.u = ptrtoint ptr %1 to i64
  %i.v = icmp samesign ult i32 %3, 64
  br i1 %i.v, label %.preheader596, label %.preheader604

.preheader604:                                    ; preds = %bb.g
  %i.w = getelementptr inbounds i8, ptr %i.e, i64 -17
  %i.x = getelementptr inbounds i8, ptr %i.e, i64 -15 ; 2 uses
  %i.y = ptrtoint ptr %i.x to i64
  %i.z = getelementptr inbounds i8, ptr %i.e, i64 -32
  %i.aa = getelementptr inbounds i8, ptr %i.g, i64 -64 ; 2 uses
  %i.ab = icmp eq i32 %5, 1
  %i.ac = getelementptr inbounds i8, ptr %i.e, i64 -4 ; 2 uses
  %i.ad = ptrtoint ptr %i.ac to i64
  %i.ae = icmp eq i32 %5, 2
  %i.af = getelementptr inbounds i8, ptr %i.g, i64 -5
  %.not443 = icmp eq i32 %4, 0
  %i.ag = ptrtoint ptr %6 to i64                  ; 4 uses
  %i.ah = add i64 %i.ag, 1
  br label %bb.h

bb.h:                                             ; preds = %.backedge, %.preheader604
  %.0539 = phi ptr [ %0, %.preheader604 ], [ %.0539.be, %.backedge ] ; 3 uses
  %.0362 = phi ptr [ %1, %.preheader604 ], [ %.0362.be, %.backedge ] ; 7 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.0539, i64 1 ; 9 uses
  %i.aj = load i8, ptr %.0539, align 1, !tbaa !7
  %i.ak = zext i8 %i.aj to i32                    ; 4 uses
  %i.al = lshr i32 %i.ak, 4                       ; 2 uses
  %i.am = zext nneg i32 %i.al to i64              ; 3 uses
  %i.an = icmp eq i32 %i.al, 15
  br i1 %i.an, label %bb.i, label %bb.n

bb.i:                                             ; preds = %bb.h
  %.not12.i = icmp ult ptr %i.ai, %i.x
  br i1 %.not12.i, label %.lr.ph990, label %_ZN10duckdb_lz4L14LZ4_wildCopy32EPvPKvS0_.exit.thread, !prof !36

.lr.ph990:                                        ; preds = %bb.i
  %.promoted13.i = ptrtoint ptr %i.ai to i64
  %i.ao = tail call i64 @llvm.usub.sat.i64(i64 %i.y, i64 %.promoted13.i)
  %scevgep.i = getelementptr i8, ptr %i.ai, i64 %i.ao
  %i.ap = getelementptr inbounds nuw i8, ptr %.0539, i64 2
  br label %bb.k

bb.j:                                             ; preds = %bb.k
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ar, i64 1 ; 2 uses
  %exitcond.i = icmp eq ptr %i.ar, %scevgep.i
  br i1 %exitcond.i, label %_ZN10duckdb_lz4L14LZ4_wildCopy32EPvPKvS0_.exit.thread, label %bb.k, !prof !37, !llvm.loop !38

bb.k:                                             ; preds = %.lr.ph990, %bb.j
  %i.ar = phi ptr [ %i.ap, %.lr.ph990 ], [ %i.aq, %bb.j ] ; 9 uses
  %.0.i988 = phi i64 [ 0, %.lr.ph990 ], [ %i.av, %bb.j ]
  %i.as = phi ptr [ %i.ai, %.lr.ph990 ], [ %i.ar, %bb.j ]
  %i.at = load i8, ptr %i.as, align 1, !tbaa !7   ; 2 uses
  %i.au = zext i8 %i.at to i64
  %i.av = add i64 %.0.i988, %i.au                 ; 3 uses
  %i.aw = icmp eq i8 %i.at, -1
  br i1 %i.aw, label %bb.j, label %_ZN10duckdb_lz4L20read_variable_lengthEPPKhS1_i.exit, !llvm.loop !38

_ZN10duckdb_lz4L20read_variable_lengthEPPKhS1_i.exit: ; preds = %bb.k
  %i.ax = icmp eq i64 %i.av, -1
  br i1 %i.ax, label %_ZN10duckdb_lz4L14LZ4_wildCopy32EPvPKvS0_.exit.thread, label %bb.l

bb.l:                                             ; preds = %_ZN10duckdb_lz4L20read_variable_lengthEPPKhS1_i.exit
  %i.ay = add i64 %i.av, 15                       ; 5 uses
  %i.az = ptrtoint ptr %.0362 to i64
  %i.ba = xor i64 %i.az, -1
  %i.bb = icmp ugt i64 %i.ay, %i.ba
  %i.bc = ptrtoint ptr %i.ar to i64
  %i.bd = xor i64 %i.bc, -1
  %i.be = icmp ugt i64 %i.ay, %i.bd
  %or.cond583 = select i1 %i.bb, i1 true, i1 %i.be, !prof !39
  br i1 %or.cond583, label %_ZN10duckdb_lz4L14LZ4_wildCopy32EPvPKvS0_.exit.thread, label %bb.m, !prof !39

bb.m:                                             ; preds = %bb.l
  %i.bf = getelementptr inbounds nuw i8, ptr %.0362, i64 %i.ay ; 4 uses
  %i.bg = icmp ugt ptr %i.bf, %i.m
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ar, i64 %i.ay ; 2 uses
  %i.bi = icmp ugt ptr %i.bh, %i.z
  %or.cond456 = select i1 %i.bg, i1 true, i1 %i.bi
  br i1 %or.cond456, label %_ZN10duckdb_lz4L14LZ4_wildCopy32EPvPKvS0_.exit, label %.preheader602

.preheader602:                                    ; preds = %bb.m, %.preheader602
  %.011.i485 = phi ptr [ %i.bm, %.preheader602 ], [ %i.ar, %bb.m ] ; 3 uses
  %.0.i486 = phi ptr [ %i.bl, %.preheader602 ], [ %.0362, %bb.m ] ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %.0.i486, ptr noundef nonnull align 1 dereferenceable(16) %.011.i485, i64 16, i1 false)
  %i.bj = getelementptr inbounds nuw i8, ptr %.0.i486, i64 16
  %i.bk = getelementptr inbounds nuw i8, ptr %.011.i485, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.bj, ptr noundef nonnull align 1 dereferenceable(16) %i.bk, i64 16, i1 false)
  %i.bl = getelementptr inbounds nuw i8, ptr %.0.i486, i64 32 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %.011.i485, i64 32
  %i.bn = icmp ult ptr %i.bl, %i.bf
  br i1 %i.bn, label %.preheader602, label %_ZN10duckdb_lz4L14LZ4_wildCopy32EPvPKvS0_.exit.thread558, !llvm.loop !40

bb.n:                                             ; preds = %bb.h
  %i.bo = getelementptr inbounds nuw i8, ptr %.0362, i64 %i.am ; 2 uses
  %i.bp = icmp ugt ptr %i.ai, %i.w
  br i1 %i.bp, label %_ZN10duckdb_lz4L14LZ4_wildCopy32EPvPKvS0_.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %.0362, ptr noundef nonnull align 1 dereferenceable(16) %i.ai, i64 16, i1 false)
  %i.bq = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.am
  br label %_ZN10duckdb_lz4L14LZ4_wildCopy32EPvPKvS0_.exit.thread558

_ZN10duckdb_lz4L14LZ4_wildCopy32EPvPKvS0_.exit.thread558: ; preds = %.preheader602, %bb.o
  %.2541 = phi ptr [ %i.bq, %bb.o ], [ %i.bh, %.preheader602 ] ; 3 uses
  %.2 = phi ptr [ %i.bo, %bb.o ], [ %i.bf, %.preheader602 ] ; 20 uses
  %.21010 = ptrtoint ptr %.2 to i64
  %.val484 = load i16, ptr %.2541, align 1, !tbaa !7 ; 5 uses
  %i.br = zext i16 %.val484 to i64                ; 6 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %.2541, i64 2 ; 8 uses
  %i.bt = sub nsw i64 0, %i.br
  %i.bu = getelementptr inbounds i8, ptr %.2, i64 %i.bt ; 12 uses
  %i.bv = and i32 %i.ak, 15                       ; 2 uses
  %i.bw = icmp eq i32 %i.bv, 15
  br i1 %i.bw, label %bb.p, label %bb.t

bb.p:                                             ; preds = %_ZN10duckdb_lz4L14LZ4_wildCopy32EPvPKvS0_.exit.thread558
  %.promoted13.i490 = ptrtoint ptr %i.bs to i64
  %i.bx = tail call i64 @llvm.usub.sat.i64(i64 %i.ad, i64 %.promoted13.i490)
  %scevgep.i491 = getelementptr i8, ptr %i.bs, i64 %i.bx
  %i.by = getelementptr inbounds nuw i8, ptr %.2541, i64 3 ; 2 uses
  %exitcond.i493993.not = icmp ugt ptr %i.ac, %i.bs
  br i1 %exitcond.i493993.not, label %.lr.ph996, label %_ZN10duckdb_lz4L14LZ4_wildCopy32EPvPKvS0_.exit.thread, !prof !28

bb.q:                                             ; preds = %.lr.ph996
  %i.bz = getelementptr inbounds nuw i8, ptr %i.ca, i64 1 ; 2 uses
  %exitcond.i493 = icmp eq ptr %i.ca, %scevgep.i491
  br i1 %exitcond.i493, label %_ZN10duckdb_lz4L14LZ4_wildCopy32EPvPKvS0_.exit.thread, label %.lr.ph996, !prof !37, !llvm.loop !38

.lr.ph996:                                        ; preds = %bb.p, %bb.q
  %i.ca = phi ptr [ %i.bz, %bb.q ], [ %i.by, %bb.p ] ; 7 uses
  %.0.i492994 = phi i64 [ %i.ce, %bb.q ], [ 0, %bb.p ]
  %i.cb = phi ptr [ %i.ca, %bb.q ], [ %i.bs, %bb.p ]
  %i.cc = load i8, ptr %i.cb, align 1, !tbaa !7   ; 2 uses
  %i.cd = zext i8 %i.cc to i64
  %i.ce = add i64 %.0.i492994, %i.cd              ; 3 uses
  %i.cf = icmp eq i8 %i.cc, -1
  br i1 %i.cf, label %bb.q, label %_ZN10duckdb_lz4L20read_variable_lengthEPPKhS1_i.exit494, !llvm.loop !38

_ZN10duckdb_lz4L20read_variable_lengthEPPKhS1_i.exit494: ; preds = %.lr.ph996
  %i.cg = icmp eq i64 %i.ce, -1
  br i1 %i.cg, label %_ZN10duckdb_lz4L14LZ4_wildCopy32EPvPKvS0_.exit.thread, label %bb.r

bb.r:                                             ; preds = %_ZN10duckdb_lz4L20read_variable_lengthEPPKhS1_i.exit494
  %i.ch = add i64 %i.ce, 19                       ; 4 uses
  %i.ci = ptrtoint ptr %.2 to i64
  %i.cj = xor i64 %i.ci, -1
  %i.ck = icmp ugt i64 %i.ch, %i.cj
  %i.cl = getelementptr inbounds nuw i8, ptr %i.bu, i64 %8
  %i.cm = icmp ult ptr %i.cl, %6
  %or.cond458 = select i1 %i.k, i1 %i.cm, i1 false, !prof !41
  %or.cond480 = select i1 %i.ck, i1 true, i1 %or.cond458, !prof !42
  br i1 %or.cond480, label %_ZN10duckdb_lz4L14LZ4_wildCopy32EPvPKvS0_.exit.thread, label %bb.s, !prof !42

bb.s:                                             ; preds = %bb.r
  %i.cn = getelementptr inbounds nuw i8, ptr %.2, i64 %i.ch
  %.not442 = icmp ult ptr %i.cn, %i.aa
  br i1 %.not442, label %.thread567, label %.loopexit606

bb.t:                                             ; preds = %_ZN10duckdb_lz4L14LZ4_wildCopy32EPvPKvS0_.exit.thread558
  %narrow = add nuw nsw i32 %i.bv, 4
  %i.co = zext nneg i32 %narrow to i64            ; 4 uses
end_hunk_0
begin_hunk_1_@_ZN10duckdb_lz4L22LZ4_decompress_genericEPKcPciiNS_18earlyEnd_directiveENS_14dict_directiveEPKhS6_m:bb.a

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %i.dx, 28
  %n.vec = and i64 %i.dx, -32                     ; 5 uses
  %i.dz = getelementptr i8, ptr %i.dp, i64 %n.vec ; 2 uses
  %i.ea = getelementptr i8, ptr %6, i64 %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %next.gep = getelementptr i8, ptr %i.dp, i64 %index ; 2 uses
  %next.gep1012 = getelementptr i8, ptr %6, i64 %index ; 2 uses
  %i.eb = getelementptr i8, ptr %next.gep1012, i64 16
  %wide.load = load <16 x i8>, ptr %next.gep1012, align 1, !tbaa !7
  %wide.load1013 = load <16 x i8>, ptr %i.eb, align 1, !tbaa !7
  %i.ec = getelementptr i8, ptr %next.gep, i64 16
  store <16 x i8> %wide.load, ptr %next.gep, align 1, !tbaa !7
  store <16 x i8> %wide.load1013, ptr %i.ec, align 1, !tbaa !7
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.ed = icmp eq i64 %index.next, %n.vec
  br i1 %i.ed, label %middle.block, label %vector.body, !llvm.loop !44

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.dx, %n.vec
  br i1 %cmp.n, label %.backedge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.preheader, label %vec.epilog.ph, !prof !45

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec1016 = and i64 %i.dx, -4                  ; 4 uses
  %i.ee = getelementptr i8, ptr %i.dp, i64 %n.vec1016 ; 2 uses
  %i.ef = getelementptr i8, ptr %6, i64 %n.vec1016
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index1017 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next1021, %vec.epilog.vector.body ] ; 3 uses
  %next.gep1018 = getelementptr i8, ptr %i.dp, i64 %index1017
  %next.gep1019 = getelementptr i8, ptr %6, i64 %index1017
  %wide.load1020 = load <4 x i8>, ptr %next.gep1019, align 1, !tbaa !7
  store <4 x i8> %wide.load1020, ptr %next.gep1018, align 1, !tbaa !7
  %index.next1021 = add nuw i64 %index1017, 4     ; 2 uses
  %i.eg = icmp eq i64 %index.next1021, %n.vec1016
  br i1 %i.eg, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !46

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n1022 = icmp eq i64 %i.dx, %n.vec1016
  br i1 %cmp.n1022, label %.backedge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.3648.ph = phi ptr [ %i.dp, %iter.check ], [ %i.dz, %vec.epilog.iter.check ], [ %i.ee, %vec.epilog.middle.block ]
  %.0400647.ph = phi ptr [ %6, %iter.check ], [ %i.ea, %vec.epilog.iter.check ], [ %i.ef, %vec.epilog.middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.3648 = phi ptr [ %i.ej, %.lr.ph ], [ %.3648.ph, %.lr.ph.preheader ] ; 2 uses
  %.0400647 = phi ptr [ %i.eh, %.lr.ph ], [ %.0400647.ph, %.lr.ph.preheader ] ; 2 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %.0400647, i64 1
  %i.ei = load i8, ptr %.0400647, align 1, !tbaa !7
  %i.ej = getelementptr inbounds nuw i8, ptr %.3648, i64 1 ; 3 uses
  store i8 %i.ei, ptr %.3648, align 1, !tbaa !7
  %i.ek = icmp ult ptr %i.ej, %i.dt
  br i1 %i.ek, label %.lr.ph, label %.backedge, !llvm.loop !47

bb.af:                                            ; preds = %bb.ae
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.dp, ptr nonnull align 1 %6, i64 %i.dm, i1 false)
  %i.el = getelementptr inbounds nuw i8, ptr %.2, i64 %.3383
  br label %.backedge

bb.ag:                                            ; preds = %bb.y
  %i.em = icmp ult i16 %.val484, 16
  br i1 %i.em, label %bb.ah, label %.preheader600, !prof !19

bb.ah:                                            ; preds = %bb.ag
  tail call fastcc void @_ZN10duckdb_lz4L23LZ4_memcpy_using_offsetEPhPKhS0_m(ptr noundef %.2, ptr noundef %i.bu, ptr noundef %i.dc, i64 noundef %i.br)
  br label %.backedge

.preheader600:                                    ; preds = %bb.ag, %.preheader600
  %.011.i495 = phi ptr [ %i.eq, %.preheader600 ], [ %i.bu, %bb.ag ] ; 3 uses
  %.0.i496 = phi ptr [ %i.ep, %.preheader600 ], [ %.2, %bb.ag ] ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %.0.i496, ptr noundef nonnull align 1 dereferenceable(16) %.011.i495, i64 16, i1 false)
  %i.en = getelementptr inbounds nuw i8, ptr %.0.i496, i64 16
  %i.eo = getelementptr inbounds nuw i8, ptr %.011.i495, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.en, ptr noundef nonnull align 1 dereferenceable(16) %i.eo, i64 16, i1 false)
  %i.ep = getelementptr inbounds nuw i8, ptr %.0.i496, i64 32 ; 2 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %.011.i495, i64 32
  %i.er = icmp ult ptr %i.ep, %i.dc
  br i1 %i.er, label %.preheader600, label %.backedge, !llvm.loop !40

.lr.ph651.split:                                  ; preds = %.lr.ph651, %bb.aj
  %i.es = phi i64 [ %i.fv, %bb.aj ], [ %i.lx, %.lr.ph651 ] ; 3 uses
  %i.et = phi i32 [ %i.ft, %bb.aj ], [ %i.lv, %.lr.ph651 ] ; 2 uses
  %i.eu = phi ptr [ %i.fr, %bb.aj ], [ %i.lt, %.lr.ph651 ] ; 4 uses
  %.6650 = phi ptr [ %i.fq, %bb.aj ], [ %.6.ph, %.lr.ph651 ] ; 4 uses
  %i.ev = icmp ult ptr %i.eu, %i.l
  %i.ew = icmp ule ptr %.6650, %i.m
  %i.ex = and i1 %i.ev, %i.ew
  br i1 %i.ex, label %bb.ai, label %.loopexit597, !prof !27

bb.ai:                                            ; preds = %.lr.ph651.split
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %.6650, ptr noundef nonnull align 1 dereferenceable(16) %i.eu, i64 16, i1 false)
  %i.ey = getelementptr inbounds nuw i8, ptr %.6650, i64 %i.es ; 6 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %i.eu, i64 %i.es ; 3 uses
  %i.fa = and i32 %i.et, 15                       ; 2 uses
  %i.fb = zext nneg i32 %i.fa to i64              ; 2 uses
  %.val483 = load i16, ptr %i.ez, align 1, !tbaa !7 ; 2 uses
  %i.fc = zext i16 %.val483 to i64                ; 2 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %i.ez, i64 2 ; 2 uses
  %i.fe = sub nsw i64 0, %i.fc
  %i.ff = getelementptr inbounds i8, ptr %i.ey, i64 %i.fe ; 5 uses
  %i.fg = icmp eq i32 %i.fa, 15
  %i.fh = icmp ult i16 %.val483, 8
  %or.cond3.not682 = or i1 %i.fg, %i.fh
  %.not449 = icmp ult ptr %i.ff, %6
  %or.cond678 = select i1 %or.cond3.not682, i1 true, i1 %.not449
  br i1 %or.cond678, label %.loopexit598, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.fi = load i64, ptr %i.ff, align 1
  store i64 %i.fi, ptr %i.ey, align 1
  %i.fj = getelementptr inbounds nuw i8, ptr %i.ey, i64 8
  %i.fk = getelementptr inbounds nuw i8, ptr %i.ff, i64 8
  %i.fl = load i64, ptr %i.fk, align 1
  store i64 %i.fl, ptr %i.fj, align 1
  %i.fm = getelementptr inbounds nuw i8, ptr %i.ey, i64 16
  %i.fn = getelementptr inbounds nuw i8, ptr %i.ff, i64 16
  %i.fo = load i16, ptr %i.fn, align 1
  store i16 %i.fo, ptr %i.fm, align 1
  %i.fp = getelementptr inbounds nuw i8, ptr %i.ey, i64 %i.fb
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fp, i64 4 ; 2 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %i.ez, i64 3 ; 2 uses
  %i.fs = load i8, ptr %i.fd, align 1, !tbaa !7
  %i.ft = zext i8 %i.fs to i32                    ; 3 uses
  %i.fu = lshr i32 %i.ft, 4                       ; 2 uses
  %i.fv = zext nneg i32 %i.fu to i64
  %cond = icmp eq i32 %i.fu, 15
  br i1 %cond, label %._crit_edge, label %.lr.ph651.split, !llvm.loop !48

._crit_edge:                                      ; preds = %bb.aj, %bb.bi, %.preheader596
  %.6.lcssa = phi ptr [ %.6.ph, %.preheader596 ], [ %i.mw, %bb.bi ], [ %i.fq, %bb.aj ] ; 2 uses
  %.lcssa616 = phi ptr [ %i.lt, %.preheader596 ], [ %i.mx, %bb.bi ], [ %i.fr, %bb.aj ] ; 6 uses
  %.lcssa613 = phi i32 [ %i.lv, %.preheader596 ], [ %i.mz, %bb.bi ], [ %i.ft, %bb.aj ]
  %i.fw = getelementptr inbounds i8, ptr %i.e, i64 -15 ; 2 uses
  %.not12.i499 = icmp ult ptr %.lcssa616, %i.fw
  br i1 %.not12.i499, label %.lr.ph1003, label %_ZN10duckdb_lz4L14LZ4_wildCopy32EPvPKvS0_.exit.thread, !prof !36

.lr.ph1003:                                       ; preds = %._crit_edge
  %i.fx = ptrtoint ptr %i.fw to i64
  %.promoted13.i501 = ptrtoint ptr %.lcssa616 to i64
  %i.fy = tail call i64 @llvm.usub.sat.i64(i64 %i.fx, i64 %.promoted13.i501)
  %scevgep.i502 = getelementptr i8, ptr %.lcssa616, i64 %i.fy
  %i.fz = getelementptr inbounds nuw i8, ptr %.lcssa616, i64 1
  br label %bb.al

bb.ak:                                            ; preds = %bb.al
  %i.ga = getelementptr inbounds nuw i8, ptr %i.gb, i64 1 ; 2 uses
  %exitcond.i504 = icmp eq ptr %i.gb, %scevgep.i502
  br i1 %exitcond.i504, label %_ZN10duckdb_lz4L14LZ4_wildCopy32EPvPKvS0_.exit.thread, label %bb.al, !prof !37, !llvm.loop !38

bb.al:                                            ; preds = %.lr.ph1003, %bb.ak
  %i.gb = phi ptr [ %i.fz, %.lr.ph1003 ], [ %i.ga, %bb.ak ] ; 7 uses
  %.0.i5031001 = phi i64 [ 0, %.lr.ph1003 ], [ %i.gf, %bb.ak ]
  %i.gc = phi ptr [ %.lcssa616, %.lr.ph1003 ], [ %i.gb, %bb.ak ]
  %i.gd = load i8, ptr %i.gc, align 1, !tbaa !7   ; 2 uses
  %i.ge = zext i8 %i.gd to i64
  %i.gf = add i64 %.0.i5031001, %i.ge             ; 3 uses
  %i.gg = icmp eq i8 %i.gd, -1
  br i1 %i.gg, label %bb.ak, label %_ZN10duckdb_lz4L20read_variable_lengthEPPKhS1_i.exit505, !llvm.loop !38

_ZN10duckdb_lz4L20read_variable_lengthEPPKhS1_i.exit505: ; preds = %bb.al
  %i.gh = icmp eq i64 %i.gf, -1
  br i1 %i.gh, label %_ZN10duckdb_lz4L14LZ4_wildCopy32EPvPKvS0_.exit.thread, label %bb.am

bb.am:                                            ; preds = %_ZN10duckdb_lz4L20read_variable_lengthEPPKhS1_i.exit505
  %i.gi = add i64 %i.gf, 15                       ; 3 uses
  %i.gj = ptrtoint ptr %.6.lcssa to i64
  %i.gk = xor i64 %i.gj, -1
  %i.gl = icmp ugt i64 %i.gi, %i.gk
  %i.gm = ptrtoint ptr %i.gb to i64
  %i.gn = xor i64 %i.gm, -1
  %i.go = icmp ugt i64 %i.gi, %i.gn
  %or.cond586 = select i1 %i.gl, i1 true, i1 %i.go, !prof !39
  br i1 %or.cond586, label %_ZN10duckdb_lz4L14LZ4_wildCopy32EPvPKvS0_.exit.thread, label %.loopexit597, !prof !39

.loopexit597:                                     ; preds = %.lr.ph651.split, %.lr.ph651.split.us, %bb.am
  %.6621 = phi ptr [ %.6.lcssa, %bb.am ], [ %.6650.us, %.lr.ph651.split.us ], [ %.6650, %.lr.ph651.split ] ; 2 uses
  %i.gp = phi i32 [ %.lcssa613, %bb.am ], [ %i.lz, %.lr.ph651.split.us ], [ %i.et, %.lr.ph651.split ]
  %.5543 = phi ptr [ %i.gb, %bb.am ], [ %i.ma, %.lr.ph651.split.us ], [ %i.eu, %.lr.ph651.split ]
  %.5385 = phi i64 [ %i.gi, %bb.am ], [ %i.ly, %.lr.ph651.split.us ], [ %i.es, %.lr.ph651.split ] ; 2 uses
  %i.gq = getelementptr inbounds nuw i8, ptr %.6621, i64 %.5385
  br label %_ZN10duckdb_lz4L14LZ4_wildCopy32EPvPKvS0_.exit

_ZN10duckdb_lz4L14LZ4_wildCopy32EPvPKvS0_.exit:   ; preds = %bb.m, %bb.n, %.loopexit597
  %.6544 = phi ptr [ %.5543, %.loopexit597 ], [ %i.ar, %bb.m ], [ %i.ai, %bb.n ] ; 11 uses
  %.6386 = phi i64 [ %.5385, %.loopexit597 ], [ %i.ay, %bb.m ], [ %i.am, %bb.n ] ; 4 uses
  %.0379 = phi i32 [ %i.gp, %.loopexit597 ], [ %i.ak, %bb.n ], [ %i.ak, %bb.m ]
  %.3367 = phi ptr [ %i.gq, %.loopexit597 ], [ %i.bf, %bb.m ], [ %i.bo, %bb.n ] ; 7 uses
  %.7 = phi ptr [ %.6621, %.loopexit597 ], [ %.0362, %bb.n ], [ %.0362, %bb.m ] ; 11 uses
  %.71026 = ptrtoaddr ptr %.7 to i64
  %.65441027 = ptrtoaddr ptr %.6544 to i64
  %i.gr = getelementptr inbounds i8, ptr %i.g, i64 -12
  %i.gs = icmp ugt ptr %.3367, %i.gr
  br i1 %i.gs, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %_ZN10duckdb_lz4L14LZ4_wildCopy32EPvPKvS0_.exit
  %i.gt = getelementptr inbounds nuw i8, ptr %.6544, i64 %.6386 ; 3 uses
  %i.gu = getelementptr inbounds i8, ptr %i.e, i64 -8
  %i.gv = icmp ugt ptr %i.gt, %i.gu
  br i1 %i.gv, label %bb.ao, label %.preheader595.preheader

.preheader595.preheader:                          ; preds = %bb.an
  %9 = ptrtoint ptr %.3367 to i64
  %10 = ptrtoint ptr %.7 to i64                   ; 2 uses
  %i.gw = add i64 %10, 8
  %umax1031 = tail call i64 @llvm.umax.i64(i64 %9, i64 %i.gw)
  %i.gx = xor i64 %10, -1
  %i.gy = add i64 %umax1031, %i.gx                ; 2 uses
  %i.gz = lshr i64 %i.gy, 3
  %i.ha = add nuw nsw i64 %i.gz, 1                ; 2 uses
  %min.iters.check1032 = icmp ult i64 %i.gy, 72
  %i.hb = sub i64 %.65441027, %.71026
  %diff.check1028 = icmp ugt i64 %i.hb, -32
  %or.cond1206 = select i1 %min.iters.check1032, i1 true, i1 %diff.check1028
  br i1 %or.cond1206, label %.preheader595.preheader1216, label %vector.ph1033

vector.ph1033:                                    ; preds = %.preheader595.preheader
  %n.vec1035 = and i64 %i.ha, 4611686018427387900 ; 3 uses
  %i.hc = shl i64 %n.vec1035, 3                   ; 2 uses
  %i.hd = getelementptr i8, ptr %.6544, i64 %i.hc
  %i.he = getelementptr i8, ptr %.7, i64 %i.hc
  br label %vector.body1036

vector.body1036:                                  ; preds = %vector.body1036, %vector.ph1033
  %index1037 = phi i64 [ 0, %vector.ph1033 ], [ %index.next1042, %vector.body1036 ] ; 2 uses
  %i.hf = shl i64 %index1037, 3                   ; 2 uses
  %next.gep1038 = getelementptr i8, ptr %.6544, i64 %i.hf ; 2 uses
  %next.gep1039 = getelementptr i8, ptr %.7, i64 %i.hf ; 2 uses
  %i.hg = getelementptr i8, ptr %next.gep1038, i64 16
  %wide.load1040 = load <2 x i64>, ptr %next.gep1038, align 1
  %wide.load1041 = load <2 x i64>, ptr %i.hg, align 1
  %i.hh = getelementptr i8, ptr %next.gep1039, i64 16
  store <2 x i64> %wide.load1040, ptr %next.gep1039, align 1
  store <2 x i64> %wide.load1041, ptr %i.hh, align 1
  %index.next1042 = add nuw i64 %index1037, 4     ; 2 uses
  %i.hi = icmp eq i64 %index.next1042, %n.vec1035
  br i1 %i.hi, label %middle.block1043, label %vector.body1036, !llvm.loop !49

middle.block1043:                                 ; preds = %vector.body1036
  %cmp.n1044 = icmp eq i64 %i.ha, %n.vec1035
  br i1 %cmp.n1044, label %_ZN10duckdb_lz4L13LZ4_wildCopy8EPvPKvS0_.exit, label %.preheader595.preheader1216

.preheader595.preheader1216:                      ; preds = %.preheader595.preheader, %middle.block1043
  %.09.i.ph = phi ptr [ %.6544, %.preheader595.preheader ], [ %i.hd, %middle.block1043 ]
  %.0.i506.ph = phi ptr [ %.7, %.preheader595.preheader ], [ %i.he, %middle.block1043 ]
  br label %.preheader595

bb.ao:                                            ; preds = %bb.an, %_ZN10duckdb_lz4L14LZ4_wildCopy32EPvPKvS0_.exit
  %.not446.not = icmp eq i32 %4, 0
  %i.hj = getelementptr inbounds nuw i8, ptr %.6544, i64 %.6386 ; 2 uses
  br i1 %.not446.not, label %bb.ar, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.hk = icmp ugt ptr %i.hj, %i.e                ; 2 uses
  %i.hl = ptrtoint ptr %i.e to i64
  %i.hm = ptrtoint ptr %.6544 to i64
  %i.hn = sub i64 %i.hl, %i.hm                    ; 2 uses
  %i.ho = getelementptr inbounds nuw i8, ptr %.7, i64 %i.hn
  %.4368 = select i1 %i.hk, ptr %i.ho, ptr %.3367 ; 2 uses
  %i.hp = icmp ugt ptr %.4368, %i.g
  br i1 %i.hp, label %bb.aq, label %bb.as

bb.aq:                                            ; preds = %bb.ap
  %i.hq = ptrtoint ptr %.7 to i64
  %i.hr = sub i64 %i.t, %i.hq
  br label %.thread

bb.ar:                                            ; preds = %bb.ao
  %.not447 = icmp ne ptr %i.hj, %i.e
  %i.hs = icmp ugt ptr %.3367, %i.g
  %or.cond467 = select i1 %.not447, i1 true, i1 %i.hs
  br i1 %or.cond467, label %_ZN10duckdb_lz4L14LZ4_wildCopy32EPvPKvS0_.exit.thread, label %.thread

.thread:                                          ; preds = %bb.ar, %bb.aq
  %.8388.ph = phi i64 [ %.6386, %bb.ar ], [ %i.hr, %bb.aq ] ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %.7, ptr nonnull align 1 %.6544, i64 %.8388.ph, i1 false)
  %i.ht = getelementptr inbounds nuw i8, ptr %.7, i64 %.8388.ph
  br label %._crit_edge765

bb.as:                                            ; preds = %bb.ap
  %.7387 = select i1 %i.hk, i64 %i.hn, i64 %.6386 ; 3 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %.7, ptr nonnull align 1 %.6544, i64 %.7387, i1 false)
  %i.hu = getelementptr inbounds nuw i8, ptr %.6544, i64 %.7387 ; 2 uses
  %i.hv = getelementptr inbounds nuw i8, ptr %.7, i64 %.7387 ; 2 uses
  %i.hw = icmp ne ptr %.4368, %i.g
  %i.hx = getelementptr inbounds i8, ptr %i.e, i64 -2
  %.not448 = icmp ult ptr %i.hu, %i.hx
  %or.cond469 = select i1 %i.hw, i1 %.not448, i1 false
  br i1 %or.cond469, label %_ZN10duckdb_lz4L13LZ4_wildCopy8EPvPKvS0_.exit, label %._crit_edge765

._crit_edge765:                                   ; preds = %.thread, %bb.as
  %i.hy = phi ptr [ %i.ht, %.thread ], [ %i.hv, %bb.as ]
  %.pre = ptrtoint ptr %i.hy to i64
  br label %bb.bs

.preheader595:                                    ; preds = %.preheader595.preheader1216, %.preheader595
  %.09.i = phi ptr [ %i.ib, %.preheader595 ], [ %.09.i.ph, %.preheader595.preheader1216 ] ; 2 uses
  %.0.i506 = phi ptr [ %i.ia, %.preheader595 ], [ %.0.i506.ph, %.preheader595.preheader1216 ] ; 2 uses
  %i.hz = load i64, ptr %.09.i, align 1
  store i64 %i.hz, ptr %.0.i506, align 1
  %i.ia = getelementptr inbounds nuw i8, ptr %.0.i506, i64 8 ; 2 uses
  %i.ib = getelementptr inbounds nuw i8, ptr %.09.i, i64 8
  %i.ic = icmp ult ptr %i.ia, %.3367
  br i1 %i.ic, label %.preheader595, label %_ZN10duckdb_lz4L13LZ4_wildCopy8EPvPKvS0_.exit, !llvm.loop !50

_ZN10duckdb_lz4L13LZ4_wildCopy8EPvPKvS0_.exit:    ; preds = %.preheader595, %middle.block1043, %bb.as
  %.7545 = phi ptr [ %i.hu, %bb.as ], [ %i.gt, %middle.block1043 ], [ %i.gt, %.preheader595 ] ; 2 uses
  %.8 = phi ptr [ %i.hv, %bb.as ], [ %.3367, %middle.block1043 ], [ %.3367, %.preheader595 ] ; 2 uses
  %.val = load i16, ptr %.7545, align 1, !tbaa !7
  %i.id = zext i16 %.val to i64                   ; 2 uses
  %i.ie = getelementptr inbounds nuw i8, ptr %.7545, i64 2
  %i.if = sub nsw i64 0, %i.id
  %i.ig = getelementptr inbounds i8, ptr %.8, i64 %i.if
  %i.ih = and i32 %.0379, 15
  %i.ii = zext nneg i32 %i.ih to i64
  br label %.loopexit598

.loopexit598:                                     ; preds = %bb.ai, %bb.bh, %_ZN10duckdb_lz4L13LZ4_wildCopy8EPvPKvS0_.exit
  %.8546 = phi ptr [ %i.ie, %_ZN10duckdb_lz4L13LZ4_wildCopy8EPvPKvS0_.exit ], [ %i.mj, %bb.bh ], [ %i.fd, %bb.ai ] ; 6 uses
  %.9389 = phi i64 [ %i.ii, %_ZN10duckdb_lz4L13LZ4_wildCopy8EPvPKvS0_.exit ], [ %i.mh, %bb.bh ], [ %i.fb, %bb.ai ] ; 2 uses
  %.0377 = phi i64 [ %i.id, %_ZN10duckdb_lz4L13LZ4_wildCopy8EPvPKvS0_.exit ], [ %i.mi, %bb.bh ], [ %i.fc, %bb.ai ]
  %.0370 = phi ptr [ %i.ig, %_ZN10duckdb_lz4L13LZ4_wildCopy8EPvPKvS0_.exit ], [ %i.ml, %bb.bh ], [ %i.ff, %bb.ai ]
  %.9 = phi ptr [ %.8, %_ZN10duckdb_lz4L13LZ4_wildCopy8EPvPKvS0_.exit ], [ %i.me, %bb.bh ], [ %i.ey, %bb.ai ] ; 2 uses
  %i.ij = icmp eq i64 %.9389, 15
  br i1 %i.ij, label %bb.at, label %bb.av

bb.at:                                            ; preds = %.loopexit598
  %i.ik = getelementptr inbounds i8, ptr %i.e, i64 -4 ; 2 uses
  %i.il = ptrtoint ptr %i.ik to i64
  %.promoted13.i510 = ptrtoint ptr %.8546 to i64
  %i.im = tail call i64 @llvm.usub.sat.i64(i64 %i.il, i64 %.promoted13.i510)
  %scevgep.i511 = getelementptr i8, ptr %.8546, i64 %i.im
  %i.in = getelementptr inbounds nuw i8, ptr %.8546, i64 1 ; 2 uses
  %exitcond.i5131005.not = icmp ugt ptr %i.ik, %.8546
  br i1 %exitcond.i5131005.not, label %.lr.ph1008, label %_ZN10duckdb_lz4L14LZ4_wildCopy32EPvPKvS0_.exit.thread, !prof !28

bb.au:                                            ; preds = %.lr.ph1008
  %i.io = getelementptr inbounds nuw i8, ptr %i.ip, i64 1 ; 2 uses
  %exitcond.i513 = icmp eq ptr %i.ip, %scevgep.i511
  br i1 %exitcond.i513, label %_ZN10duckdb_lz4L14LZ4_wildCopy32EPvPKvS0_.exit.thread, label %.lr.ph1008, !prof !37, !llvm.loop !38

.lr.ph1008:                                       ; preds = %bb.at, %bb.au
  %i.ip = phi ptr [ %i.io, %bb.au ], [ %i.in, %bb.at ] ; 5 uses
  %.0.i5121006 = phi i64 [ %i.it, %bb.au ], [ 0, %bb.at ]
  %i.iq = phi ptr [ %i.ip, %bb.au ], [ %.8546, %bb.at ]
  %i.ir = load i8, ptr %i.iq, align 1, !tbaa !7   ; 2 uses
  %i.is = zext i8 %i.ir to i64
  %i.it = add i64 %.0.i5121006, %i.is             ; 3 uses
  %i.iu = icmp eq i8 %i.ir, -1
  br i1 %i.iu, label %bb.au, label %_ZN10duckdb_lz4L20read_variable_lengthEPPKhS1_i.exit514, !llvm.loop !38

_ZN10duckdb_lz4L20read_variable_lengthEPPKhS1_i.exit514: ; preds = %.lr.ph1008
  %i.iv = icmp ne i64 %i.it, -1                   ; 2 uses
  %i.iw = add i64 %i.it, 15                       ; 2 uses
  %i.ix = ptrtoint ptr %.9 to i64
  %i.iy = xor i64 %i.ix, -1
  %i.iz = icmp ule i64 %i.iw, %i.iy
  %.not591 = select i1 %i.iv, i1 %i.iz, i1 false
  %.10390 = select i1 %i.iv, i64 %i.iw, i64 15
  br i1 %.not591, label %bb.av, label %_ZN10duckdb_lz4L14LZ4_wildCopy32EPvPKvS0_.exit.thread

bb.av:                                            ; preds = %_ZN10duckdb_lz4L20read_variable_lengthEPPKhS1_i.exit514, %.loopexit598
  %.9547 = phi ptr [ %i.ip, %_ZN10duckdb_lz4L20read_variable_lengthEPPKhS1_i.exit514 ], [ %.8546, %.loopexit598 ]
  %.11391 = phi i64 [ %.10390, %_ZN10duckdb_lz4L20read_variable_lengthEPPKhS1_i.exit514 ], [ %.9389, %.loopexit598 ]
  %i.ja = add i64 %.11391, 4
  br label %.loopexit606

.loopexit606:                                     ; preds = %bb.s, %bb.t, %bb.av
  %.10548 = phi ptr [ %.9547, %bb.av ], [ %i.ca, %bb.s ], [ %i.bs, %bb.t ] ; 6 uses
  %.12392 = phi i64 [ %i.ja, %bb.av ], [ %i.ch, %bb.s ], [ %i.co, %bb.t ] ; 7 uses
  %.1378 = phi i64 [ %.0377, %bb.av ], [ %i.br, %bb.t ], [ %i.br, %bb.s ] ; 3 uses
  %.1371 = phi ptr [ %.0370, %bb.av ], [ %i.bu, %bb.t ], [ %i.bu, %bb.s ] ; 18 uses
  %.10 = phi ptr [ %.9, %bb.av ], [ %.2, %bb.t ], [ %.2, %bb.s ] ; 30 uses
  %.13711127 = ptrtoaddr ptr %.1371 to i64        ; 2 uses
  %.101050 = ptrtoint ptr %.10 to i64             ; 10 uses
  %.101047 = ptrtoaddr ptr %.10 to i64            ; 3 uses
  %i.jb = getelementptr inbounds nuw i8, ptr %.1371, i64 %8
  %i.jc = icmp ult ptr %i.jb, %6
  %or.cond472 = select i1 %i.k, i1 %i.jc, i1 false, !prof !41
  br i1 %or.cond472, label %_ZN10duckdb_lz4L14LZ4_wildCopy32EPvPKvS0_.exit.thread, label %bb.aw, !prof !41

bb.aw:                                            ; preds = %.loopexit606
  %i.jd = icmp eq i32 %5, 2
  %i.je = icmp ult ptr %.1371, %6
  %or.cond473 = select i1 %i.jd, i1 %i.je, i1 false
  %i.jf = getelementptr inbounds nuw i8, ptr %.10, i64 %.12392 ; 7 uses
  br i1 %or.cond473, label %bb.ax, label %bb.be

bb.ax:                                            ; preds = %bb.aw
  %i.jg = getelementptr inbounds i8, ptr %i.g, i64 -5
  %i.jh = icmp ugt ptr %i.jf, %i.jg
  br i1 %i.jh, label %bb.ay, label %bb.ba, !prof !19

bb.ay:                                            ; preds = %bb.ax
  %.not451 = icmp eq i32 %4, 0
  br i1 %.not451, label %_ZN10duckdb_lz4L14LZ4_wildCopy32EPvPKvS0_.exit.thread, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.ji = ptrtoint ptr %.10 to i64
  %i.jj = sub i64 %i.t, %i.ji
  %i.jk = tail call i64 @llvm.umin.i64(i64 %.12392, i64 %i.jj)
  br label %bb.ba

bb.ba:                                            ; preds = %bb.az, %bb.ax
  %.13393 = phi i64 [ %i.jk, %bb.az ], [ %.12392, %bb.ax ] ; 7 uses
  %i.jl = ptrtoint ptr %6 to i64                  ; 4 uses
  %i.jm = ptrtoint ptr %.1371 to i64              ; 3 uses
  %i.jn = sub i64 %i.jl, %i.jm                    ; 6 uses
  %.not452 = icmp ugt i64 %.13393, %i.jn
  br i1 %.not452, label %bb.bc, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.jo = sub i64 0, %i.jn
  %i.jp = getelementptr inbounds i8, ptr %i.j, i64 %i.jo
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %.10, ptr align 1 %i.jp, i64 %.13393, i1 false)
  %i.jq = getelementptr inbounds nuw i8, ptr %.10, i64 %.13393
  br label %.loopexit

bb.bc:                                            ; preds = %bb.ba
  %i.jr = sub nuw i64 %.13393, %i.jn              ; 2 uses
  %i.js = sub i64 0, %i.jn
  %i.jt = getelementptr inbounds i8, ptr %i.j, i64 %i.js
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.10, ptr align 1 %i.jt, i64 %i.jn, i1 false)
  %i.ju = getelementptr inbounds nuw i8, ptr %.10, i64 %i.jn ; 7 uses
  %i.jv = ptrtoint ptr %i.ju to i64
  %i.jw = sub i64 %i.jv, %i.jl
  %i.jx = icmp ugt i64 %i.jr, %i.jw
  br i1 %i.jx, label %iter.check1188, label %bb.bd

iter.check1188:                                   ; preds = %bb.bc
  %i.jy = getelementptr inbounds nuw i8, ptr %.10, i64 %.13393
  %i.jz = add i64 %.101050, %i.jl
  %i.ka = add i64 %i.jz, 1
  %i.kb = sub i64 %i.ka, %i.jm
  %i.kc = add i64 %.13393, %.101050
  %umax1168 = tail call i64 @llvm.umax.i64(i64 %i.kb, i64 %i.kc)
  %i.kd = add i64 %umax1168, %i.jm
  %i.ke = add i64 %.101050, %i.jl
  %i.kf = sub i64 %i.kd, %i.ke                    ; 7 uses
  %min.iters.check1170 = icmp ult i64 %i.kf, 4
  %i.kg = sub i64 %.13711127, %.101050
  %diff.check1167 = icmp ugt i64 %i.kg, -32
  %or.cond1207 = select i1 %min.iters.check1170, i1 true, i1 %diff.check1167
  br i1 %or.cond1207, label %.lr.ph676.preheader, label %vector.main.loop.iter.check1171

vector.main.loop.iter.check1171:                  ; preds = %iter.check1188
  %min.iters.check1172 = icmp ult i64 %i.kf, 32
  br i1 %min.iters.check1172, label %vec.epilog.ph1192, label %vector.ph1173

vector.ph1173:                                    ; preds = %vector.main.loop.iter.check1171
  %n.mod.vf1174 = and i64 %i.kf, 28
  %n.vec1175 = and i64 %i.kf, -32                 ; 5 uses
  %i.kh = getelementptr i8, ptr %i.ju, i64 %n.vec1175 ; 2 uses
  %i.ki = getelementptr i8, ptr %6, i64 %n.vec1175
  br label %vector.body1176

vector.body1176:                                  ; preds = %vector.body1176, %vector.ph1173
  %index1177 = phi i64 [ 0, %vector.ph1173 ], [ %index.next1182, %vector.body1176 ] ; 3 uses
  %next.gep1178 = getelementptr i8, ptr %i.ju, i64 %index1177 ; 2 uses
  %next.gep1179 = getelementptr i8, ptr %6, i64 %index1177 ; 2 uses
  %i.kj = getelementptr i8, ptr %next.gep1179, i64 16
  %wide.load1180 = load <16 x i8>, ptr %next.gep1179, align 1, !tbaa !7
  %wide.load1181 = load <16 x i8>, ptr %i.kj, align 1, !tbaa !7
  %i.kk = getelementptr i8, ptr %next.gep1178, i64 16
  store <16 x i8> %wide.load1180, ptr %next.gep1178, align 1, !tbaa !7
  store <16 x i8> %wide.load1181, ptr %i.kk, align 1, !tbaa !7
  %index.next1182 = add nuw i64 %index1177, 32    ; 2 uses
  %i.kl = icmp eq i64 %index.next1182, %n.vec1175
  br i1 %i.kl, label %middle.block1183, label %vector.body1176, !llvm.loop !51

middle.block1183:                                 ; preds = %vector.body1176
  %cmp.n1184 = icmp eq i64 %i.kf, %n.vec1175
  br i1 %cmp.n1184, label %.loopexit, label %vec.epilog.iter.check1190

vec.epilog.iter.check1190:                        ; preds = %middle.block1183
  %min.epilog.iters.check1191 = icmp eq i64 %n.mod.vf1174, 0
  br i1 %min.epilog.iters.check1191, label %.lr.ph676.preheader, label %vec.epilog.ph1192, !prof !45

vec.epilog.ph1192:                                ; preds = %vector.main.loop.iter.check1171, %vec.epilog.iter.check1190
  %vec.epilog.resume.val1185 = phi i64 [ %n.vec1175, %vec.epilog.iter.check1190 ], [ 0, %vector.main.loop.iter.check1171 ]
  %n.vec1194 = and i64 %i.kf, -4                  ; 4 uses
  %i.km = getelementptr i8, ptr %i.ju, i64 %n.vec1194 ; 2 uses
  %i.kn = getelementptr i8, ptr %6, i64 %n.vec1194
  br label %vec.epilog.vector.body1195

vec.epilog.vector.body1195:                       ; preds = %vec.epilog.vector.body1195, %vec.epilog.ph1192
  %index1196 = phi i64 [ %vec.epilog.resume.val1185, %vec.epilog.ph1192 ], [ %index.next1200, %vec.epilog.vector.body1195 ] ; 3 uses
  %next.gep1197 = getelementptr i8, ptr %i.ju, i64 %index1196
  %next.gep1198 = getelementptr i8, ptr %6, i64 %index1196
  %wide.load1199 = load <4 x i8>, ptr %next.gep1198, align 1, !tbaa !7
  store <4 x i8> %wide.load1199, ptr %next.gep1197, align 1, !tbaa !7
  %index.next1200 = add nuw i64 %index1196, 4     ; 2 uses
  %i.ko = icmp eq i64 %index.next1200, %n.vec1194
  br i1 %i.ko, label %vec.epilog.middle.block1201, label %vec.epilog.vector.body1195, !llvm.loop !52

vec.epilog.middle.block1201:                      ; preds = %vec.epilog.vector.body1195
  %cmp.n1202 = icmp eq i64 %i.kf, %n.vec1194
  br i1 %cmp.n1202, label %.loopexit, label %.lr.ph676.preheader

.lr.ph676.preheader:                              ; preds = %iter.check1188, %vec.epilog.iter.check1190, %vec.epilog.middle.block1201
  %.11674.ph = phi ptr [ %i.ju, %iter.check1188 ], [ %i.kh, %vec.epilog.iter.check1190 ], [ %i.km, %vec.epilog.middle.block1201 ]
  %.0376673.ph = phi ptr [ %6, %iter.check1188 ], [ %i.ki, %vec.epilog.iter.check1190 ], [ %i.kn, %vec.epilog.middle.block1201 ]
  br label %.lr.ph676

.lr.ph676:                                        ; preds = %.lr.ph676.preheader, %.lr.ph676
  %.11674 = phi ptr [ %i.kr, %.lr.ph676 ], [ %.11674.ph, %.lr.ph676.preheader ] ; 2 uses
  %.0376673 = phi ptr [ %i.kp, %.lr.ph676 ], [ %.0376673.ph, %.lr.ph676.preheader ] ; 2 uses
  %i.kp = getelementptr inbounds nuw i8, ptr %.0376673, i64 1
  %i.kq = load i8, ptr %.0376673, align 1, !tbaa !7
  %i.kr = getelementptr inbounds nuw i8, ptr %.11674, i64 1 ; 3 uses
  store i8 %i.kq, ptr %.11674, align 1, !tbaa !7
  %i.ks = icmp ult ptr %i.kr, %i.jy
  br i1 %i.ks, label %.lr.ph676, label %.loopexit, !llvm.loop !53

bb.bd:                                            ; preds = %bb.bc
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ju, ptr nonnull align 1 %6, i64 %i.jr, i1 false)
  %i.kt = getelementptr inbounds nuw i8, ptr %.10, i64 %.13393
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph676, %middle.block1183, %vec.epilog.middle.block1201, %bb.bd, %bb.bb
  %.13 = phi ptr [ %i.jq, %bb.bb ], [ %i.kt, %bb.bd ], [ %i.km, %vec.epilog.middle.block1201 ], [ %i.kh, %middle.block1183 ], [ %i.kr, %.lr.ph676 ]
  br label %.preheader596, !llvm.loop !48

bb.be:                                            ; preds = %bb.aw
  %.not450 = icmp ne i32 %4, 0
  %i.ku = getelementptr inbounds i8, ptr %i.g, i64 -12
  %i.kv = icmp ugt ptr %i.jf, %i.ku               ; 2 uses
  %or.cond475 = select i1 %.not450, i1 %i.kv, i1 false
  br i1 %or.cond475, label %bb.bf, label %bb.bj

bb.bf:                                            ; preds = %bb.be
  %i.kw = ptrtoint ptr %.10 to i64
  %i.kx = sub i64 %i.t, %i.kw
  %i.ky = tail call i64 @llvm.umin.i64(i64 %.12392, i64 %i.kx) ; 5 uses
  %i.kz = getelementptr inbounds nuw i8, ptr %.1371, i64 %i.ky
  %i.la = getelementptr inbounds nuw i8, ptr %.10, i64 %i.ky ; 3 uses
  %i.lb = icmp ugt ptr %i.kz, %.10
  br i1 %i.lb, label %.preheader, label %bb.bg

.preheader:                                       ; preds = %bb.bf
  %.not683 = icmp eq i64 %i.ky, 0
  br i1 %.not683, label %.loopexit592, label %iter.check1149

iter.check1149:                                   ; preds = %.preheader
  %i.lc = add i64 %i.ky, %.101050
  %i.ld = add i64 %.101050, 1
  %umax1129 = tail call i64 @llvm.umax.i64(i64 %i.lc, i64 %i.ld)
  %i.le = sub i64 %umax1129, %.101050             ; 7 uses
  %min.iters.check1131 = icmp ult i64 %i.le, 4
  %i.lf = sub i64 %.13711127, %.101050
  %diff.check1128 = icmp ugt i64 %i.lf, -32
  %or.cond1208 = select i1 %min.iters.check1131, i1 true, i1 %diff.check1128
  br i1 %or.cond1208, label %.lr.ph672.preheader, label %vector.main.loop.iter.check1132

vector.main.loop.iter.check1132:                  ; preds = %iter.check1149
  %min.iters.check1133 = icmp ult i64 %i.le, 32
  br i1 %min.iters.check1133, label %vec.epilog.ph1153, label %vector.ph1134

vector.ph1134:                                    ; preds = %vector.main.loop.iter.check1132
  %n.mod.vf1135 = and i64 %i.le, 28
  %n.vec1136 = and i64 %i.le, -32                 ; 5 uses
  %i.lg = getelementptr i8, ptr %.10, i64 %n.vec1136
  %i.lh = getelementptr i8, ptr %.1371, i64 %n.vec1136
  br label %vector.body1137

vector.body1137:                                  ; preds = %vector.body1137, %vector.ph1134
  %index1138 = phi i64 [ 0, %vector.ph1134 ], [ %index.next1143, %vector.body1137 ] ; 3 uses
  %next.gep1139 = getelementptr i8, ptr %.10, i64 %index1138 ; 2 uses
  %next.gep1140 = getelementptr i8, ptr %.1371, i64 %index1138 ; 2 uses
  %i.li = getelementptr i8, ptr %next.gep1140, i64 16
  %wide.load1141 = load <16 x i8>, ptr %next.gep1140, align 1, !tbaa !7
  %wide.load1142 = load <16 x i8>, ptr %i.li, align 1, !tbaa !7
  %i.lj = getelementptr i8, ptr %next.gep1139, i64 16
  store <16 x i8> %wide.load1141, ptr %next.gep1139, align 1, !tbaa !7
  store <16 x i8> %wide.load1142, ptr %i.lj, align 1, !tbaa !7
  %index.next1143 = add nuw i64 %index1138, 32    ; 2 uses
  %i.lk = icmp eq i64 %index.next1143, %n.vec1136
  br i1 %i.lk, label %middle.block1144, label %vector.body1137, !llvm.loop !54

middle.block1144:                                 ; preds = %vector.body1137
  %cmp.n1145 = icmp eq i64 %i.le, %n.vec1136
  br i1 %cmp.n1145, label %.loopexit592, label %vec.epilog.iter.check1151

vec.epilog.iter.check1151:                        ; preds = %middle.block1144
  %min.epilog.iters.check1152 = icmp eq i64 %n.mod.vf1135, 0
  br i1 %min.epilog.iters.check1152, label %.lr.ph672.preheader, label %vec.epilog.ph1153, !prof !45

vec.epilog.ph1153:                                ; preds = %vector.main.loop.iter.check1132, %vec.epilog.iter.check1151
  %vec.epilog.resume.val1146 = phi i64 [ %n.vec1136, %vec.epilog.iter.check1151 ], [ 0, %vector.main.loop.iter.check1132 ]
  %n.vec1155 = and i64 %i.le, -4                  ; 4 uses
  %i.ll = getelementptr i8, ptr %.10, i64 %n.vec1155
  %i.lm = getelementptr i8, ptr %.1371, i64 %n.vec1155
  br label %vec.epilog.vector.body1156

vec.epilog.vector.body1156:                       ; preds = %vec.epilog.vector.body1156, %vec.epilog.ph1153
  %index1157 = phi i64 [ %vec.epilog.resume.val1146, %vec.epilog.ph1153 ], [ %index.next1161, %vec.epilog.vector.body1156 ] ; 3 uses
  %next.gep1158 = getelementptr i8, ptr %.10, i64 %index1157
  %next.gep1159 = getelementptr i8, ptr %.1371, i64 %index1157
  %wide.load1160 = load <4 x i8>, ptr %next.gep1159, align 1, !tbaa !7
  store <4 x i8> %wide.load1160, ptr %next.gep1158, align 1, !tbaa !7
  %index.next1161 = add nuw i64 %index1157, 4     ; 2 uses
  %i.ln = icmp eq i64 %index.next1161, %n.vec1155
  br i1 %i.ln, label %vec.epilog.middle.block1162, label %vec.epilog.vector.body1156, !llvm.loop !55

vec.epilog.middle.block1162:                      ; preds = %vec.epilog.vector.body1156
  %cmp.n1163 = icmp eq i64 %i.le, %n.vec1155
  br i1 %cmp.n1163, label %.loopexit592, label %.lr.ph672.preheader

.lr.ph672.preheader:                              ; preds = %iter.check1149, %vec.epilog.iter.check1151, %vec.epilog.middle.block1162
  %.14671.ph = phi ptr [ %.10, %iter.check1149 ], [ %i.lg, %vec.epilog.iter.check1151 ], [ %i.ll, %vec.epilog.middle.block1162 ]
  %.2372670.ph = phi ptr [ %.1371, %iter.check1149 ], [ %i.lh, %vec.epilog.iter.check1151 ], [ %i.lm, %vec.epilog.middle.block1162 ]
  br label %.lr.ph672

.lr.ph672:                                        ; preds = %.lr.ph672.preheader, %.lr.ph672
  %.14671 = phi ptr [ %i.lq, %.lr.ph672 ], [ %.14671.ph, %.lr.ph672.preheader ] ; 2 uses
  %.2372670 = phi ptr [ %i.lo, %.lr.ph672 ], [ %.2372670.ph, %.lr.ph672.preheader ] ; 2 uses
  %i.lo = getelementptr inbounds nuw i8, ptr %.2372670, i64 1
  %i.lp = load i8, ptr %.2372670, align 1, !tbaa !7
  %i.lq = getelementptr inbounds nuw i8, ptr %.14671, i64 1 ; 2 uses
  store i8 %i.lp, ptr %.14671, align 1, !tbaa !7
  %i.lr = icmp ult ptr %i.lq, %i.la
  br i1 %i.lr, label %.lr.ph672, label %.loopexit592, !llvm.loop !56

bb.bg:                                            ; preds = %bb.bf
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.10, ptr align 1 %.1371, i64 %i.ky, i1 false)
  br label %.loopexit592

.loopexit592:                                     ; preds = %.lr.ph672, %middle.block1144, %vec.epilog.middle.block1162, %.preheader, %bb.bg
  %i.ls = icmp eq ptr %i.la, %i.g
  br i1 %i.ls, label %bb.bs, label %.preheader596

.preheader596:                                    ; preds = %.loopexit, %_ZN10duckdb_lz4L13LZ4_wildCopy8EPvPKvS0_.exit520, %bb.g, %.loopexit592
  %.4.ph = phi ptr [ %.10548, %_ZN10duckdb_lz4L13LZ4_wildCopy8EPvPKvS0_.exit520 ], [ %.10548, %.loopexit592 ], [ %.10548, %.loopexit ], [ %0, %bb.g ] ; 2 uses
  %.6.ph = phi ptr [ %i.jf, %_ZN10duckdb_lz4L13LZ4_wildCopy8EPvPKvS0_.exit520 ], [ %i.la, %.loopexit592 ], [ %.13, %.loopexit ], [ %1, %bb.g ] ; 3 uses
  %i.lt = getelementptr inbounds nuw i8, ptr %.4.ph, i64 1 ; 3 uses
  %i.lu = load i8, ptr %.4.ph, align 1, !tbaa !7
  %i.lv = zext i8 %i.lu to i32                    ; 4 uses
  %i.lw = lshr i32 %i.lv, 4                       ; 2 uses
  %cond649 = icmp eq i32 %i.lw, 15
  br i1 %cond649, label %._crit_edge, label %.lr.ph651

.lr.ph651:                                        ; preds = %.preheader596
  %i.lx = zext nneg i32 %i.lw to i64              ; 2 uses
  %.not679 = icmp eq i32 %5, 1
  br i1 %.not679, label %.lr.ph651.split.us, label %.lr.ph651.split

.lr.ph651.split.us:                               ; preds = %.lr.ph651, %bb.bi
  %i.ly = phi i64 [ %i.nb, %bb.bi ], [ %i.lx, %.lr.ph651 ] ; 3 uses
  %i.lz = phi i32 [ %i.mz, %bb.bi ], [ %i.lv, %.lr.ph651 ] ; 2 uses
  %i.ma = phi ptr [ %i.mx, %bb.bi ], [ %i.lt, %.lr.ph651 ] ; 4 uses
  %.6650.us = phi ptr [ %i.mw, %bb.bi ], [ %.6.ph, %.lr.ph651 ] ; 4 uses
  %i.mb = icmp ult ptr %i.ma, %i.l
  %i.mc = icmp ule ptr %.6650.us, %i.m
  %i.md = and i1 %i.mb, %i.mc
  br i1 %i.md, label %bb.bh, label %.loopexit597, !prof !27

bb.bh:                                            ; preds = %.lr.ph651.split.us
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %.6650.us, ptr noundef nonnull align 1 dereferenceable(16) %i.ma, i64 16, i1 false)
  %i.me = getelementptr inbounds nuw i8, ptr %.6650.us, i64 %i.ly ; 6 uses
  %i.mf = getelementptr inbounds nuw i8, ptr %i.ma, i64 %i.ly ; 3 uses
  %i.mg = and i32 %i.lz, 15                       ; 2 uses
  %i.mh = zext nneg i32 %i.mg to i64              ; 2 uses
  %.val483.us = load i16, ptr %i.mf, align 1, !tbaa !7 ; 2 uses
  %i.mi = zext i16 %.val483.us to i64             ; 2 uses
  %i.mj = getelementptr inbounds nuw i8, ptr %i.mf, i64 2 ; 2 uses
  %i.mk = sub nsw i64 0, %i.mi
  %i.ml = getelementptr inbounds i8, ptr %i.me, i64 %i.mk ; 4 uses
  %i.mm = icmp ne i32 %i.mg, 15
  %i.mn = icmp ugt i16 %.val483.us, 7
  %or.cond3.us = and i1 %i.mm, %i.mn
  br i1 %or.cond3.us, label %bb.bi, label %.loopexit598

bb.bi:                                            ; preds = %bb.bh
  %i.mo = load i64, ptr %i.ml, align 1
  store i64 %i.mo, ptr %i.me, align 1
  %i.mp = getelementptr inbounds nuw i8, ptr %i.me, i64 8
  %i.mq = getelementptr inbounds nuw i8, ptr %i.ml, i64 8
  %i.mr = load i64, ptr %i.mq, align 1
  store i64 %i.mr, ptr %i.mp, align 1
  %i.ms = getelementptr inbounds nuw i8, ptr %i.me, i64 16
  %i.mt = getelementptr inbounds nuw i8, ptr %i.ml, i64 16
  %i.mu = load i16, ptr %i.mt, align 1
  store i16 %i.mu, ptr %i.ms, align 1
  %i.mv = getelementptr inbounds nuw i8, ptr %i.me, i64 %i.mh
  %i.mw = getelementptr inbounds nuw i8, ptr %i.mv, i64 4 ; 2 uses
  %i.mx = getelementptr inbounds nuw i8, ptr %i.mf, i64 3 ; 2 uses
  %i.my = load i8, ptr %i.mj, align 1, !tbaa !7
  %i.mz = zext i8 %i.my to i32                    ; 3 uses
  %i.na = lshr i32 %i.mz, 4                       ; 2 uses
  %i.nb = zext nneg i32 %i.na to i64
  %cond.us = icmp eq i32 %i.na, 15
  br i1 %cond.us, label %._crit_edge, label %.lr.ph651.split.us, !llvm.loop !48

bb.bj:                                            ; preds = %bb.be
  %i.nc = icmp ult i64 %.1378, 8
  br i1 %i.nc, label %bb.bk, label %bb.bl, !prof !19

bb.bk:                                            ; preds = %bb.bj
  store i32 0, ptr %.10, align 1, !tbaa !7
  %i.nd = load i8, ptr %.1371, align 1, !tbaa !7
  store i8 %i.nd, ptr %.10, align 1, !tbaa !7
  %i.ne = getelementptr inbounds nuw i8, ptr %.1371, i64 1
  %i.nf = load i8, ptr %i.ne, align 1, !tbaa !7
  %i.ng = getelementptr inbounds nuw i8, ptr %.10, i64 1
  store i8 %i.nf, ptr %i.ng, align 1, !tbaa !7
  %i.nh = getelementptr inbounds nuw i8, ptr %.1371, i64 2
  %i.ni = load i8, ptr %i.nh, align 1, !tbaa !7
  %i.nj = getelementptr inbounds nuw i8, ptr %.10, i64 2
  store i8 %i.ni, ptr %i.nj, align 1, !tbaa !7
  %i.nk = getelementptr inbounds nuw i8, ptr %.1371, i64 3
  %i.nl = load i8, ptr %i.nk, align 1, !tbaa !7
  %i.nm = getelementptr inbounds nuw i8, ptr %.10, i64 3
  store i8 %i.nl, ptr %i.nm, align 1, !tbaa !7
  %i.nn = getelementptr inbounds nuw [4 x i8], ptr @_ZN10duckdb_lz4L10inc32tableE, i64 %.1378
  %i.no = load i32, ptr %i.nn, align 4, !tbaa !3
  %i.np = zext i32 %i.no to i64
  %i.nq = getelementptr inbounds nuw i8, ptr %.1371, i64 %i.np ; 2 uses
  %i.nr = getelementptr inbounds nuw i8, ptr %.10, i64 4
  %i.ns = load i32, ptr %i.nq, align 1
  store i32 %i.ns, ptr %i.nr, align 1
  %i.nt = getelementptr inbounds nuw [4 x i8], ptr @_ZN10duckdb_lz4L10dec64tableE, i64 %.1378
  %i.nu = load i32, ptr %i.nt, align 4, !tbaa !3
  %i.nv = sext i32 %i.nu to i64
  %i.nw = sub nsw i64 0, %i.nv
  %i.nx = getelementptr inbounds i8, ptr %i.nq, i64 %i.nw
  br label %bb.bm

bb.bl:                                            ; preds = %bb.bj
  %i.ny = load i64, ptr %.1371, align 1
  store i64 %i.ny, ptr %.10, align 1
  %i.nz = getelementptr inbounds nuw i8, ptr %.1371, i64 8
  br label %bb.bm

bb.bm:                                            ; preds = %bb.bl, %bb.bk
  %.3373 = phi ptr [ %i.nx, %bb.bk ], [ %i.nz, %bb.bl ] ; 12 uses
  %.33731048 = ptrtoaddr ptr %.3373 to i64        ; 3 uses
  %i.oa = getelementptr inbounds nuw i8, ptr %.10, i64 8 ; 8 uses
  br i1 %i.kv, label %bb.bn, label %bb.bq, !prof !19

bb.bn:                                            ; preds = %bb.bm
  %i.ob = getelementptr inbounds i8, ptr %i.g, i64 -7 ; 4 uses
  %i.oc = getelementptr inbounds i8, ptr %i.g, i64 -5
  %i.od = icmp ugt ptr %i.jf, %i.oc
  br i1 %i.od, label %_ZN10duckdb_lz4L14LZ4_wildCopy32EPvPKvS0_.exit.thread, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.oe = icmp ult ptr %i.oa, %i.ob
  br i1 %i.oe, label %.preheader593.preheader, label %bb.bp

.preheader593.preheader:                          ; preds = %bb.bo
  %11 = ptrtoint ptr %1 to i64
  %i.of = add i64 %11, %i.f
  %i.og = add i64 %i.of, -7
  %12 = ptrtoint ptr %.10 to i64                  ; 2 uses
  %i.oh = add i64 %12, 16
  %umax1070 = tail call i64 @llvm.umax.i64(i64 %i.og, i64 %i.oh)
  %13 = sub i64 %umax1070, %12
  %14 = add i64 %13, -9                           ; 2 uses
  %i.oi = lshr i64 %14, 3
  %i.oj = add nuw nsw i64 %i.oi, 1                ; 2 uses
  %min.iters.check1072 = icmp ult i64 %14, 104
  br i1 %min.iters.check1072, label %.preheader593.preheader1209, label %vector.memcheck1068

vector.memcheck1068:                              ; preds = %.preheader593.preheader
  %i.ok = sub i64 %.101047, %.33731048
  %i.ol = add i64 %i.ok, 7
  %diff.check1069 = icmp ult i64 %i.ol, 31
  br i1 %diff.check1069, label %.preheader593.preheader1209, label %vector.ph1073

vector.ph1073:                                    ; preds = %vector.memcheck1068
  %n.vec1075 = and i64 %i.oj, 4611686018427387900 ; 3 uses
  %i.om = shl i64 %n.vec1075, 3                   ; 2 uses
  %i.on = getelementptr i8, ptr %.3373, i64 %i.om
  %i.oo = getelementptr i8, ptr %i.oa, i64 %i.om
  br label %vector.body1076

vector.body1076:                                  ; preds = %vector.body1076, %vector.ph1073
  %index1077 = phi i64 [ 0, %vector.ph1073 ], [ %index.next1082, %vector.body1076 ] ; 2 uses
  %i.op = shl i64 %index1077, 3                   ; 2 uses
  %next.gep1078 = getelementptr i8, ptr %.3373, i64 %i.op ; 2 uses
  %next.gep1079 = getelementptr i8, ptr %i.oa, i64 %i.op ; 2 uses
  %i.oq = getelementptr i8, ptr %next.gep1078, i64 16
  %wide.load1080 = load <2 x i64>, ptr %next.gep1078, align 1
  %wide.load1081 = load <2 x i64>, ptr %i.oq, align 1
  %i.or = getelementptr i8, ptr %next.gep1079, i64 16
  store <2 x i64> %wide.load1080, ptr %next.gep1079, align 1
  store <2 x i64> %wide.load1081, ptr %i.or, align 1
  %index.next1082 = add nuw i64 %index1077, 4     ; 2 uses
  %i.os = icmp eq i64 %index.next1082, %n.vec1075
  br i1 %i.os, label %middle.block1083, label %vector.body1076, !llvm.loop !57

middle.block1083:                                 ; preds = %vector.body1076
  %cmp.n1084 = icmp eq i64 %i.oj, %n.vec1075
  br i1 %cmp.n1084, label %_ZN10duckdb_lz4L13LZ4_wildCopy8EPvPKvS0_.exit517, label %.preheader593.preheader1209

.preheader593.preheader1209:                      ; preds = %vector.memcheck1068, %.preheader593.preheader, %middle.block1083
  %.09.i515.ph = phi ptr [ %.3373, %vector.memcheck1068 ], [ %.3373, %.preheader593.preheader ], [ %i.on, %middle.block1083 ]
  %.0.i516.ph = phi ptr [ %i.oa, %vector.memcheck1068 ], [ %i.oa, %.preheader593.preheader ], [ %i.oo, %middle.block1083 ]
  br label %.preheader593

.preheader593:                                    ; preds = %.preheader593.preheader1209, %.preheader593
  %.09.i515 = phi ptr [ %i.ov, %.preheader593 ], [ %.09.i515.ph, %.preheader593.preheader1209 ] ; 2 uses
  %.0.i516 = phi ptr [ %i.ou, %.preheader593 ], [ %.0.i516.ph, %.preheader593.preheader1209 ] ; 2 uses
  %i.ot = load i64, ptr %.09.i515, align 1
  store i64 %i.ot, ptr %.0.i516, align 1
  %i.ou = getelementptr inbounds nuw i8, ptr %.0.i516, i64 8 ; 2 uses
  %i.ov = getelementptr inbounds nuw i8, ptr %.09.i515, i64 8
  %i.ow = icmp ult ptr %i.ou, %i.ob
  br i1 %i.ow, label %.preheader593, label %_ZN10duckdb_lz4L13LZ4_wildCopy8EPvPKvS0_.exit517, !llvm.loop !58

_ZN10duckdb_lz4L13LZ4_wildCopy8EPvPKvS0_.exit517: ; preds = %.preheader593, %middle.block1083
  %i.ox = ptrtoint ptr %i.ob to i64
  %i.oy = ptrtoint ptr %i.oa to i64
  %i.oz = sub i64 %i.ox, %i.oy
  %i.pa = getelementptr inbounds i8, ptr %.3373, i64 %i.oz
  br label %bb.bp

bb.bp:                                            ; preds = %_ZN10duckdb_lz4L13LZ4_wildCopy8EPvPKvS0_.exit517, %bb.bo
  %.4374 = phi ptr [ %i.pa, %_ZN10duckdb_lz4L13LZ4_wildCopy8EPvPKvS0_.exit517 ], [ %.3373, %bb.bo ] ; 6 uses
  %.15 = phi ptr [ %i.ob, %_ZN10duckdb_lz4L13LZ4_wildCopy8EPvPKvS0_.exit517 ], [ %i.oa, %bb.bo ] ; 7 uses
  %i.pb = icmp ult ptr %.15, %i.jf
  br i1 %i.pb, label %iter.check1109, label %_ZN10duckdb_lz4L13LZ4_wildCopy8EPvPKvS0_.exit520

iter.check1109:                                   ; preds = %bb.bp
  %i.pc = add i64 %.12392, %.101050
  %i.pd = add i64 %i.a, %i.f
  %i.pe = add i64 %i.pd, -7
  %i.pf = add i64 %.101050, 8
  %umax1089 = tail call i64 @llvm.umax.i64(i64 %i.pe, i64 %i.pf)
  %i.pg = sub i64 %i.pc, %umax1089                ; 7 uses
  %min.iters.check1091 = icmp ult i64 %i.pg, 4
  br i1 %min.iters.check1091, label %.lr.ph669.preheader, label %vector.memcheck1087

vector.memcheck1087:                              ; preds = %iter.check1109
  %i.ph = sub i64 %.101047, %.33731048
  %i.pi = add i64 %i.ph, 7
  %diff.check1088 = icmp ult i64 %i.pi, 31
  br i1 %diff.check1088, label %.lr.ph669.preheader, label %vector.main.loop.iter.check1092

vector.main.loop.iter.check1092:                  ; preds = %vector.memcheck1087
  %min.iters.check1093 = icmp ult i64 %i.pg, 32
  br i1 %min.iters.check1093, label %vec.epilog.ph1113, label %vector.ph1094

vector.ph1094:                                    ; preds = %vector.main.loop.iter.check1092
  %n.mod.vf1095 = and i64 %i.pg, 28
  %n.vec1096 = and i64 %i.pg, -32                 ; 5 uses
  %i.pj = getelementptr i8, ptr %.15, i64 %n.vec1096
  %i.pk = getelementptr i8, ptr %.4374, i64 %n.vec1096
  br label %vector.body1097

vector.body1097:                                  ; preds = %vector.body1097, %vector.ph1094
  %index1098 = phi i64 [ 0, %vector.ph1094 ], [ %index.next1103, %vector.body1097 ] ; 3 uses
  %next.gep1099 = getelementptr i8, ptr %.15, i64 %index1098 ; 2 uses
  %next.gep1100 = getelementptr i8, ptr %.4374, i64 %index1098 ; 2 uses
  %i.pl = getelementptr i8, ptr %next.gep1100, i64 16
  %wide.load1101 = load <16 x i8>, ptr %next.gep1100, align 1, !tbaa !7
  %wide.load1102 = load <16 x i8>, ptr %i.pl, align 1, !tbaa !7
  %i.pm = getelementptr i8, ptr %next.gep1099, i64 16
  store <16 x i8> %wide.load1101, ptr %next.gep1099, align 1, !tbaa !7
  store <16 x i8> %wide.load1102, ptr %i.pm, align 1, !tbaa !7
  %index.next1103 = add nuw i64 %index1098, 32    ; 2 uses
  %i.pn = icmp eq i64 %index.next1103, %n.vec1096
  br i1 %i.pn, label %middle.block1104, label %vector.body1097, !llvm.loop !59

middle.block1104:                                 ; preds = %vector.body1097
  %cmp.n1105 = icmp eq i64 %i.pg, %n.vec1096
  br i1 %cmp.n1105, label %_ZN10duckdb_lz4L13LZ4_wildCopy8EPvPKvS0_.exit520, label %vec.epilog.iter.check1111

vec.epilog.iter.check1111:                        ; preds = %middle.block1104
  %min.epilog.iters.check1112 = icmp eq i64 %n.mod.vf1095, 0
  br i1 %min.epilog.iters.check1112, label %.lr.ph669.preheader, label %vec.epilog.ph1113, !prof !45

vec.epilog.ph1113:                                ; preds = %vector.main.loop.iter.check1092, %vec.epilog.iter.check1111
  %vec.epilog.resume.val1106 = phi i64 [ %n.vec1096, %vec.epilog.iter.check1111 ], [ 0, %vector.main.loop.iter.check1092 ]
  %n.vec1115 = and i64 %i.pg, -4                  ; 4 uses
  %i.po = getelementptr i8, ptr %.15, i64 %n.vec1115
  %i.pp = getelementptr i8, ptr %.4374, i64 %n.vec1115
  br label %vec.epilog.vector.body1116

vec.epilog.vector.body1116:                       ; preds = %vec.epilog.vector.body1116, %vec.epilog.ph1113
  %index1117 = phi i64 [ %vec.epilog.resume.val1106, %vec.epilog.ph1113 ], [ %index.next1121, %vec.epilog.vector.body1116 ] ; 3 uses
  %next.gep1118 = getelementptr i8, ptr %.15, i64 %index1117
  %next.gep1119 = getelementptr i8, ptr %.4374, i64 %index1117
  %wide.load1120 = load <4 x i8>, ptr %next.gep1119, align 1, !tbaa !7
  store <4 x i8> %wide.load1120, ptr %next.gep1118, align 1, !tbaa !7
  %index.next1121 = add nuw i64 %index1117, 4     ; 2 uses
  %i.pq = icmp eq i64 %index.next1121, %n.vec1115
  br i1 %i.pq, label %vec.epilog.middle.block1122, label %vec.epilog.vector.body1116, !llvm.loop !60

vec.epilog.middle.block1122:                      ; preds = %vec.epilog.vector.body1116
  %cmp.n1123 = icmp eq i64 %i.pg, %n.vec1115
  br i1 %cmp.n1123, label %_ZN10duckdb_lz4L13LZ4_wildCopy8EPvPKvS0_.exit520, label %.lr.ph669.preheader

.lr.ph669.preheader:                              ; preds = %vector.memcheck1087, %iter.check1109, %vec.epilog.iter.check1111, %vec.epilog.middle.block1122
  %.16667.ph = phi ptr [ %.15, %iter.check1109 ], [ %.15, %vector.memcheck1087 ], [ %i.pj, %vec.epilog.iter.check1111 ], [ %i.po, %vec.epilog.middle.block1122 ]
  %.5375666.ph = phi ptr [ %.4374, %iter.check1109 ], [ %.4374, %vector.memcheck1087 ], [ %i.pk, %vec.epilog.iter.check1111 ], [ %i.pp, %vec.epilog.middle.block1122 ]
  br label %.lr.ph669

.lr.ph669:                                        ; preds = %.lr.ph669.preheader, %.lr.ph669
  %.16667 = phi ptr [ %i.pt, %.lr.ph669 ], [ %.16667.ph, %.lr.ph669.preheader ] ; 2 uses
  %.5375666 = phi ptr [ %i.pr, %.lr.ph669 ], [ %.5375666.ph, %.lr.ph669.preheader ] ; 2 uses
  %i.pr = getelementptr inbounds nuw i8, ptr %.5375666, i64 1
  %i.ps = load i8, ptr %.5375666, align 1, !tbaa !7
  %i.pt = getelementptr inbounds nuw i8, ptr %.16667, i64 1 ; 2 uses
  store i8 %i.ps, ptr %.16667, align 1, !tbaa !7
  %i.pu = icmp ult ptr %i.pt, %i.jf
  br i1 %i.pu, label %.lr.ph669, label %_ZN10duckdb_lz4L13LZ4_wildCopy8EPvPKvS0_.exit520, !llvm.loop !61

bb.bq:                                            ; preds = %bb.bm
  %i.pv = load i64, ptr %.3373, align 1
  store i64 %i.pv, ptr %i.oa, align 1
  %i.pw = icmp ugt i64 %.12392, 16
  br i1 %i.pw, label %bb.br, label %_ZN10duckdb_lz4L13LZ4_wildCopy8EPvPKvS0_.exit520

bb.br:                                            ; preds = %bb.bq
  %i.px = getelementptr inbounds nuw i8, ptr %.10, i64 16 ; 4 uses
  %15 = ptrtoint ptr %.10 to i64                  ; 3 uses
  %i.py = add i64 %.12392, %15
  %i.pz = add i64 %15, 24
  %umax1051 = tail call i64 @llvm.umax.i64(i64 %i.py, i64 %i.pz)
  %16 = sub i64 %umax1051, %15
  %17 = add i64 %16, -17                          ; 2 uses
  %i.qa = lshr i64 %17, 3
  %i.qb = add nuw nsw i64 %i.qa, 1                ; 2 uses
  %min.iters.check1053 = icmp ult i64 %17, 104
  br i1 %min.iters.check1053, label %scalar.ph1052.preheader, label %vector.memcheck1046

vector.memcheck1046:                              ; preds = %bb.br
  %i.qc = sub i64 %.101047, %.33731048
  %i.qd = add i64 %i.qc, 7
  %diff.check1049 = icmp ult i64 %i.qd, 31
  br i1 %diff.check1049, label %scalar.ph1052.preheader, label %vector.ph1054

vector.ph1054:                                    ; preds = %vector.memcheck1046
  %n.vec1056 = and i64 %i.qb, 4611686018427387900 ; 3 uses
  %i.qe = shl i64 %n.vec1056, 3                   ; 2 uses
  %i.qf = getelementptr i8, ptr %.3373, i64 %i.qe
  %i.qg = getelementptr i8, ptr %i.px, i64 %i.qe
  br label %vector.body1057

vector.body1057:                                  ; preds = %vector.body1057, %vector.ph1054
  %index1058 = phi i64 [ 0, %vector.ph1054 ], [ %index.next1063, %vector.body1057 ] ; 2 uses
  %i.qh = shl i64 %index1058, 3                   ; 2 uses
  %next.gep1059 = getelementptr i8, ptr %.3373, i64 %i.qh ; 2 uses
  %next.gep1060 = getelementptr i8, ptr %i.px, i64 %i.qh ; 2 uses
  %i.qi = getelementptr inbounds nuw i8, ptr %next.gep1059, i64 8
  %i.qj = getelementptr inbounds nuw i8, ptr %next.gep1059, i64 24
  %wide.load1061 = load <2 x i64>, ptr %i.qi, align 1
  %wide.load1062 = load <2 x i64>, ptr %i.qj, align 1
  %i.qk = getelementptr i8, ptr %next.gep1060, i64 16
  store <2 x i64> %wide.load1061, ptr %next.gep1060, align 1
  store <2 x i64> %wide.load1062, ptr %i.qk, align 1
  %index.next1063 = add nuw i64 %index1058, 4     ; 2 uses
  %i.ql = icmp eq i64 %index.next1063, %n.vec1056
  br i1 %i.ql, label %middle.block1064, label %vector.body1057, !llvm.loop !62

middle.block1064:                                 ; preds = %vector.body1057
  %cmp.n1065 = icmp eq i64 %i.qb, %n.vec1056
  br i1 %cmp.n1065, label %_ZN10duckdb_lz4L13LZ4_wildCopy8EPvPKvS0_.exit520, label %scalar.ph1052.preheader

scalar.ph1052.preheader:                          ; preds = %vector.memcheck1046, %bb.br, %middle.block1064
  %.3373.pn.ph = phi ptr [ %.3373, %vector.memcheck1046 ], [ %.3373, %bb.br ], [ %i.qf, %middle.block1064 ]
  %.0.i519.ph = phi ptr [ %i.px, %vector.memcheck1046 ], [ %i.px, %bb.br ], [ %i.qg, %middle.block1064 ]
  br label %scalar.ph1052

scalar.ph1052:                                    ; preds = %scalar.ph1052.preheader, %scalar.ph1052
  %.3373.pn = phi ptr [ %.09.i518, %scalar.ph1052 ], [ %.3373.pn.ph, %scalar.ph1052.preheader ]
  %.0.i519 = phi ptr [ %i.qn, %scalar.ph1052 ], [ %.0.i519.ph, %scalar.ph1052.preheader ] ; 2 uses
  %.09.i518 = getelementptr inbounds nuw i8, ptr %.3373.pn, i64 8 ; 2 uses
  %i.qm = load i64, ptr %.09.i518, align 1
  store i64 %i.qm, ptr %.0.i519, align 1
  %i.qn = getelementptr inbounds nuw i8, ptr %.0.i519, i64 8 ; 2 uses
  %i.qo = icmp ult ptr %i.qn, %i.jf
  br i1 %i.qo, label %scalar.ph1052, label %_ZN10duckdb_lz4L13LZ4_wildCopy8EPvPKvS0_.exit520, !llvm.loop !63

_ZN10duckdb_lz4L13LZ4_wildCopy8EPvPKvS0_.exit520: ; preds = %scalar.ph1052, %.lr.ph669, %middle.block1064, %middle.block1104, %vec.epilog.middle.block1122, %bb.bp, %bb.bq
  br label %.preheader596, !llvm.loop !48

bb.bs:                                            ; preds = %._crit_edge765, %.loopexit592
  %.pre-phi = phi i64 [ %.pre, %._crit_edge765 ], [ %i.t, %.loopexit592 ]
  %i.qp = sub i64 %.pre-phi, %i.u
  %i.qq = trunc i64 %i.qp to i32
  br label %bb.bt

_ZN10duckdb_lz4L14LZ4_wildCopy32EPvPKvS0_.exit.thread: ; preds = %bb.r, %_ZN10duckdb_lz4L20read_variable_lengthEPPKhS1_i.exit494, %bb.i, %bb.l, %_ZN10duckdb_lz4L20read_variable_lengthEPPKhS1_i.exit, %.thread567, %bb.aa, %bb.p, %bb.j, %bb.q, %bb.ak, %bb.au, %bb.at, %._crit_edge, %_ZN10duckdb_lz4L20read_variable_lengthEPPKhS1_i.exit505, %bb.am, %bb.bn, %_ZN10duckdb_lz4L20read_variable_lengthEPPKhS1_i.exit514, %.loopexit606, %bb.ay, %bb.ar
  %.11549 = phi ptr [ %.6544, %bb.ar ], [ %.10548, %.loopexit606 ], [ %.10548, %bb.ay ], [ %.10548, %bb.bn ], [ %i.ip, %_ZN10duckdb_lz4L20read_variable_lengthEPPKhS1_i.exit514 ], [ %i.aq, %bb.j ], [ %i.bz, %bb.q ], [ %i.gb, %_ZN10duckdb_lz4L20read_variable_lengthEPPKhS1_i.exit505 ], [ %i.io, %bb.au ], [ %i.gb, %bb.am ], [ %.lcssa616, %._crit_edge ], [ %i.ga, %bb.ak ], [ %i.in, %bb.at ], [ %i.ca, %bb.r ], [ %i.ca, %_ZN10duckdb_lz4L20read_variable_lengthEPPKhS1_i.exit494 ], [ %i.ai, %bb.i ], [ %i.ar, %bb.l ], [ %i.ar, %_ZN10duckdb_lz4L20read_variable_lengthEPPKhS1_i.exit ], [ %.3542, %bb.aa ], [ %i.by, %bb.p ], [ %.3542, %.thread567 ]
  %i.qr = ptrtoint ptr %.11549 to i64
  %i.qs = ptrtoint ptr %0 to i64
  %.neg = sub i64 %i.qs, %i.qr
  %i.qt = trunc i64 %.neg to i32
  %i.qu = add nsw i32 %i.qt, -1
  br label %bb.bt

bb.bt:                                            ; preds = %bb.bs, %_ZN10duckdb_lz4L14LZ4_wildCopy32EPvPKvS0_.exit.thread, %bb.c, %bb.e, %bb.d, %bb.f, %bb.a
  %.1 = phi i32 [ -1, %bb.a ], [ -1, %bb.d ], [ 0, %bb.c ], [ %i.r, %bb.e ], [ -1, %bb.f ], [ %i.qu, %_ZN10duckdb_lz4L14LZ4_wildCopy32EPvPKvS0_.exit.thread ], [ %i.qq, %bb.bs ]
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
end_hunk_1
begin_hunk_2_@_ZN10duckdb_lz414LZ4_uncompressEPKcPci:bb.a
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
  %4 = ptrtoaddr ptr %0 to i64
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
  %5 = ptrtoint ptr %2 to i64
  %6 = ptrtoint ptr %0 to i64                     ; 2 uses
  %i.aa = add i64 %6, 16
  %umax37 = tail call i64 @llvm.umax.i64(i64 %5, i64 %i.aa)
  %7 = sub i64 %umax37, %6
  %8 = add i64 %7, -9                             ; 2 uses
  %i.ab = lshr i64 %8, 3
  %i.ac = add nuw nsw i64 %i.ab, 1                ; 2 uses
  %min.iters.check39 = icmp ult i64 %8, 104
  br i1 %min.iters.check39, label %scalar.ph38.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %bb.h
  %.023.i36 = ptrtoaddr ptr %.023.i to i64
  %i.ad = sub i64 %4, %.023.i36
  %i.ae = add i64 %i.ad, 7
  %diff.check = icmp ult i64 %i.ae, 31
  br i1 %diff.check, label %scalar.ph38.preheader, label %vector.ph40

vector.ph40:                                      ; preds = %vector.memcheck
  %n.vec42 = and i64 %i.ac, 4611686018427387900   ; 3 uses
  %i.af = shl i64 %n.vec42, 3                     ; 2 uses
  %i.ag = getelementptr i8, ptr %.023.i, i64 %i.af
  %i.ah = getelementptr i8, ptr %.0.i, i64 %i.af
  br label %vector.body43

vector.body43:                                    ; preds = %vector.body43, %vector.ph40
  %index44 = phi i64 [ 0, %vector.ph40 ], [ %index.next48, %vector.body43 ] ; 2 uses
  %i.ai = shl i64 %index44, 3                     ; 2 uses
  %next.gep45.a = getelementptr i8, ptr %.023.i, i64 %i.ai ; 2 uses
  %next.gep46 = getelementptr i8, ptr %.0.i, i64 %i.ai ; 2 uses
  %i.aj = getelementptr i8, ptr %next.gep45.a, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep45.a, align 1
  %wide.load47 = load <2 x i64>, ptr %i.aj, align 1
  %i.ak = getelementptr i8, ptr %next.gep46, i64 16
  store <2 x i64> %wide.load, ptr %next.gep46, align 1
  store <2 x i64> %wide.load47, ptr %i.ak, align 1
  %index.next48 = add nuw i64 %index44, 4         ; 2 uses
  %i.al = icmp eq i64 %index.next48, %n.vec42
  br i1 %i.al, label %middle.block49, label %vector.body43, !llvm.loop !103

middle.block49:                                   ; preds = %vector.body43
  %cmp.n50 = icmp eq i64 %i.ac, %n.vec42
  br i1 %cmp.n50, label %_ZN10duckdb_lz4L28LZ4_memcpy_using_offset_baseEPhPKhS0_m.exit, label %scalar.ph38.preheader

scalar.ph38.preheader:                            ; preds = %vector.memcheck, %bb.h, %middle.block49
  %.09.i.i.ph = phi ptr [ %.023.i, %vector.memcheck ], [ %.023.i, %bb.h ], [ %i.ag, %middle.block49 ]
  %.0.i.i.ph = phi ptr [ %.0.i, %vector.memcheck ], [ %.0.i, %bb.h ], [ %i.ah, %middle.block49 ]
  br label %scalar.ph38

scalar.ph38:                                      ; preds = %scalar.ph38.preheader, %scalar.ph38
  %.09.i.i = phi ptr [ %i.ao, %scalar.ph38 ], [ %.09.i.i.ph, %scalar.ph38.preheader ] ; 2 uses
  %.0.i.i = phi ptr [ %i.an, %scalar.ph38 ], [ %.0.i.i.ph, %scalar.ph38.preheader ] ; 2 uses
  %i.am = load i64, ptr %.09.i.i, align 1
  store i64 %i.am, ptr %.0.i.i, align 1
  %i.an = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 8 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.09.i.i, i64 8
  %i.ap = icmp ult ptr %i.an, %2
  br i1 %i.ap, label %scalar.ph38, label %_ZN10duckdb_lz4L28LZ4_memcpy_using_offset_baseEPhPKhS0_m.exit, !llvm.loop !104

bb.i:                                             ; preds = %bb.d, %bb.c, %bb.b
  %.sroa.9.0 = phi i32 [ %.sroa.0.0.isplat, %bb.b ], [ %.sroa.0.2.insert.insert, %bb.c ], [ %.sroa.0.0.copyload2, %bb.d ] ; 5 uses
  store i32 %.sroa.9.0, ptr %0, align 1
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %.sroa.9.0, ptr %.sroa.9.0..sroa_idx, align 1
  %.025 = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.aq = icmp ult ptr %.025, %2
  br i1 %i.aq, label %.lr.ph.preheader, label %_ZN10duckdb_lz4L28LZ4_memcpy_using_offset_baseEPhPKhS0_m.exit

.lr.ph.preheader:                                 ; preds = %bb.i
  %9 = ptrtoint ptr %2 to i64
  %10 = ptrtoint ptr %0 to i64                    ; 2 uses
  %i.ar = add i64 %10, 16
  %umax = tail call i64 @llvm.umax.i64(i64 %9, i64 %i.ar)
  %11 = sub i64 %umax, %10
  %12 = add i64 %11, -9                           ; 2 uses
  %i.as = lshr i64 %12, 3
  %i.at = add nuw nsw i64 %i.as, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %12, 24
  br i1 %min.iters.check, label %.lr.ph.preheader53, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %i.at, 4611686018427387900     ; 3 uses
  %i.au = shl i64 %n.vec, 3                       ; 2 uses
  %i.av = getelementptr i8, ptr %.025, i64 %i.au
  %i.aw = getelementptr i8, ptr %0, i64 %i.au
  %broadcast.splatinsert = insertelement <2 x i32> poison, i32 %.sroa.9.0, i64 0
  %i.ax = shufflevector <2 x i32> %broadcast.splatinsert, <2 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ay = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %.025, i64 %i.ay
  %i.az = getelementptr i8, ptr %.025, i64 %i.ay
  %next.gep33 = getelementptr i8, ptr %i.az, i64 16
  store <4 x i32> %i.ax, ptr %next.gep, align 1
  store <4 x i32> %i.ax, ptr %next.gep33, align 1
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ba = icmp eq i64 %index.next, %n.vec
  br i1 %i.ba, label %middle.block, label %vector.body, !llvm.loop !105

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.at, %n.vec
  br i1 %cmp.n, label %_ZN10duckdb_lz4L28LZ4_memcpy_using_offset_baseEPhPKhS0_m.exit, label %.lr.ph.preheader53

.lr.ph.preheader53:                               ; preds = %.lr.ph.preheader, %middle.block
  %.027.ph = phi ptr [ %.025, %.lr.ph.preheader ], [ %i.av, %middle.block ]
  %.pn26.ph = phi ptr [ %0, %.lr.ph.preheader ], [ %i.aw, %middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader53, %.lr.ph
  %.027 = phi ptr [ %.0, %.lr.ph ], [ %.027.ph, %.lr.ph.preheader53 ] ; 3 uses
  %.pn26 = phi ptr [ %.027, %.lr.ph ], [ %.pn26.ph, %.lr.ph.preheader53 ]
  store i32 %.sroa.9.0, ptr %.027, align 1
  %.sroa.9.0..sroa_idx3 = getelementptr inbounds nuw i8, ptr %.pn26, i64 12
  store i32 %.sroa.9.0, ptr %.sroa.9.0..sroa_idx3, align 1
  %.0 = getelementptr inbounds nuw i8, ptr %.027, i64 8 ; 2 uses
  %i.bb = icmp ult ptr %.0, %2
  br i1 %i.bb, label %.lr.ph, label %_ZN10duckdb_lz4L28LZ4_memcpy_using_offset_baseEPhPKhS0_m.exit, !llvm.loop !106

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
!102 = distinct !{!102, !21, !24}
!103 = distinct !{!103, !21, !24, !25}
!104 = distinct !{!104, !21, !24}
end_hunk_2
