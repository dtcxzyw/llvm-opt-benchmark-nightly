inline.NumInlined: 117
inline.NumDeleted: 34
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 8
begin_hunk_0_@_ZN10duckdb_lz426LZ4_compress_fast_continueEPNS_12LZ4_stream_uEPKcPciii:bb.a

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
  %i.t = ptrtoint ptr %1 to i64                   ; 3 uses
  %i.u = icmp samesign ult i32 %3, 64
  br i1 %i.u, label %.preheader596, label %.preheader604

.preheader604:                                    ; preds = %bb.g
  %i.v = getelementptr inbounds i8, ptr %i.d, i64 -17
  %i.w = getelementptr inbounds i8, ptr %i.d, i64 -15 ; 2 uses
  %i.x = ptrtoaddr ptr %i.w to i64
  %i.y = getelementptr inbounds i8, ptr %i.d, i64 -32
  %i.z = getelementptr inbounds i8, ptr %i.f, i64 -64 ; 2 uses
  %i.aa = icmp eq i32 %5, 1
  %i.ab = getelementptr inbounds i8, ptr %i.d, i64 -4 ; 2 uses
  %i.ac = ptrtoaddr ptr %i.ab to i64
  %i.ad = icmp eq i32 %5, 2
  %i.ae = getelementptr inbounds i8, ptr %i.f, i64 -5
  %.not443 = icmp eq i32 %4, 0
  %i.af = ptrtoint ptr %6 to i64                  ; 4 uses
  %i.ag = add i64 %i.af, 1
  br label %bb.h

bb.h:                                             ; preds = %.backedge, %.preheader604
  %.0539 = phi ptr [ %0, %.preheader604 ], [ %.0539.be, %.backedge ] ; 3 uses
  %.0362 = phi ptr [ %1, %.preheader604 ], [ %.0362.be, %.backedge ] ; 7 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.0539, i64 1 ; 9 uses
  %i.ai = load i8, ptr %.0539, align 1, !tbaa !7
  %i.aj = zext i8 %i.ai to i32                    ; 4 uses
  %i.ak = lshr i32 %i.aj, 4                       ; 2 uses
  %i.al = zext nneg i32 %i.ak to i64              ; 3 uses
  %i.am = icmp eq i32 %i.ak, 15
  br i1 %i.am, label %bb.i, label %bb.n

bb.i:                                             ; preds = %bb.h
  %.not12.i = icmp ult ptr %i.ah, %i.w
  br i1 %.not12.i, label %.lr.ph990, label %_ZN10duckdb_lz4L14LZ4_wildCopy32EPvPKvS0_.exit.thread, !prof !36

.lr.ph990:                                        ; preds = %bb.i
  %.promoted13.i = ptrtoaddr ptr %i.ah to i64
  %i.an = tail call i64 @llvm.usub.sat.i64(i64 %i.x, i64 %.promoted13.i)
  %scevgep.i = getelementptr i8, ptr %i.ah, i64 %i.an
  %i.ao = getelementptr inbounds nuw i8, ptr %.0539, i64 2
  br label %bb.k

bb.j:                                             ; preds = %bb.k
  %i.ap = getelementptr inbounds nuw i8, ptr %i.aq, i64 1 ; 2 uses
  %exitcond.i = icmp eq ptr %i.aq, %scevgep.i
  br i1 %exitcond.i, label %_ZN10duckdb_lz4L14LZ4_wildCopy32EPvPKvS0_.exit.thread, label %bb.k, !prof !37, !llvm.loop !38

bb.k:                                             ; preds = %.lr.ph990, %bb.j
  %i.aq = phi ptr [ %i.ao, %.lr.ph990 ], [ %i.ap, %bb.j ] ; 9 uses
  %.0.i988 = phi i64 [ 0, %.lr.ph990 ], [ %i.au, %bb.j ]
  %i.ar = phi ptr [ %i.ah, %.lr.ph990 ], [ %i.aq, %bb.j ]
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !7   ; 2 uses
  %i.at = zext i8 %i.as to i64
  %i.au = add i64 %.0.i988, %i.at                 ; 3 uses
  %i.av = icmp eq i8 %i.as, -1
  br i1 %i.av, label %bb.j, label %_ZN10duckdb_lz4L20read_variable_lengthEPPKhS1_i.exit, !llvm.loop !38

_ZN10duckdb_lz4L20read_variable_lengthEPPKhS1_i.exit: ; preds = %bb.k
  %i.aw = icmp eq i64 %i.au, -1
  br i1 %i.aw, label %_ZN10duckdb_lz4L14LZ4_wildCopy32EPvPKvS0_.exit.thread, label %bb.l

bb.l:                                             ; preds = %_ZN10duckdb_lz4L20read_variable_lengthEPPKhS1_i.exit
  %i.ax = add i64 %i.au, 15                       ; 5 uses
  %i.ay = ptrtoint ptr %.0362 to i64
  %i.az = xor i64 %i.ay, -1
  %i.ba = icmp ugt i64 %i.ax, %i.az
  %i.bb = ptrtoint ptr %i.aq to i64
  %i.bc = xor i64 %i.bb, -1
  %i.bd = icmp ugt i64 %i.ax, %i.bc
  %or.cond583 = select i1 %i.ba, i1 true, i1 %i.bd, !prof !39
  br i1 %or.cond583, label %_ZN10duckdb_lz4L14LZ4_wildCopy32EPvPKvS0_.exit.thread, label %bb.m, !prof !39

bb.m:                                             ; preds = %bb.l
  %i.be = getelementptr inbounds nuw i8, ptr %.0362, i64 %i.ax ; 4 uses
  %i.bf = icmp ugt ptr %i.be, %i.l
  %i.bg = getelementptr inbounds nuw i8, ptr %i.aq, i64 %i.ax ; 2 uses
  %i.bh = icmp ugt ptr %i.bg, %i.y
  %or.cond456 = select i1 %i.bf, i1 true, i1 %i.bh
  br i1 %or.cond456, label %_ZN10duckdb_lz4L14LZ4_wildCopy32EPvPKvS0_.exit, label %.preheader602

.preheader602:                                    ; preds = %bb.m, %.preheader602
  %.011.i485 = phi ptr [ %i.bl, %.preheader602 ], [ %i.aq, %bb.m ] ; 3 uses
  %.0.i486 = phi ptr [ %i.bk, %.preheader602 ], [ %.0362, %bb.m ] ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %.0.i486, ptr noundef nonnull align 1 dereferenceable(16) %.011.i485, i64 16, i1 false)
  %i.bi = getelementptr inbounds nuw i8, ptr %.0.i486, i64 16
  %i.bj = getelementptr inbounds nuw i8, ptr %.011.i485, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.bi, ptr noundef nonnull align 1 dereferenceable(16) %i.bj, i64 16, i1 false)
  %i.bk = getelementptr inbounds nuw i8, ptr %.0.i486, i64 32 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %.011.i485, i64 32
  %i.bm = icmp ult ptr %i.bk, %i.be
  br i1 %i.bm, label %.preheader602, label %_ZN10duckdb_lz4L14LZ4_wildCopy32EPvPKvS0_.exit.thread558, !llvm.loop !40

bb.n:                                             ; preds = %bb.h
  %i.bn = getelementptr inbounds nuw i8, ptr %.0362, i64 %i.al ; 2 uses
  %i.bo = icmp ugt ptr %i.ah, %i.v
  br i1 %i.bo, label %_ZN10duckdb_lz4L14LZ4_wildCopy32EPvPKvS0_.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %.0362, ptr noundef nonnull align 1 dereferenceable(16) %i.ah, i64 16, i1 false)
  %i.bp = getelementptr inbounds nuw i8, ptr %i.ah, i64 %i.al
  br label %_ZN10duckdb_lz4L14LZ4_wildCopy32EPvPKvS0_.exit.thread558

_ZN10duckdb_lz4L14LZ4_wildCopy32EPvPKvS0_.exit.thread558: ; preds = %.preheader602, %bb.o
  %.2541 = phi ptr [ %i.bp, %bb.o ], [ %i.bg, %.preheader602 ] ; 3 uses
  %.2 = phi ptr [ %i.bn, %bb.o ], [ %i.be, %.preheader602 ] ; 20 uses
  %.21010 = ptrtoaddr ptr %.2 to i64
  %.val484 = load i16, ptr %.2541, align 1, !tbaa !7 ; 5 uses
  %i.bq = zext i16 %.val484 to i64                ; 6 uses
  %i.br = getelementptr inbounds nuw i8, ptr %.2541, i64 2 ; 8 uses
  %i.bs = sub nsw i64 0, %i.bq
  %i.bt = getelementptr inbounds i8, ptr %.2, i64 %i.bs ; 12 uses
  %i.bu = and i32 %i.aj, 15                       ; 2 uses
  %i.bv = icmp eq i32 %i.bu, 15
  br i1 %i.bv, label %bb.p, label %bb.t

bb.p:                                             ; preds = %_ZN10duckdb_lz4L14LZ4_wildCopy32EPvPKvS0_.exit.thread558
  %.promoted13.i490 = ptrtoaddr ptr %i.br to i64
  %i.bw = tail call i64 @llvm.usub.sat.i64(i64 %i.ac, i64 %.promoted13.i490)
  %scevgep.i491 = getelementptr i8, ptr %i.br, i64 %i.bw
  %i.bx = getelementptr inbounds nuw i8, ptr %.2541, i64 3 ; 2 uses
  %exitcond.i493993.not = icmp ugt ptr %i.ab, %i.br
  br i1 %exitcond.i493993.not, label %.lr.ph996, label %_ZN10duckdb_lz4L14LZ4_wildCopy32EPvPKvS0_.exit.thread, !prof !28

bb.q:                                             ; preds = %.lr.ph996
  %i.by = getelementptr inbounds nuw i8, ptr %i.bz, i64 1 ; 2 uses
  %exitcond.i493 = icmp eq ptr %i.bz, %scevgep.i491
  br i1 %exitcond.i493, label %_ZN10duckdb_lz4L14LZ4_wildCopy32EPvPKvS0_.exit.thread, label %.lr.ph996, !prof !37, !llvm.loop !38

.lr.ph996:                                        ; preds = %bb.p, %bb.q
  %i.bz = phi ptr [ %i.by, %bb.q ], [ %i.bx, %bb.p ] ; 7 uses
  %.0.i492994 = phi i64 [ %i.cd, %bb.q ], [ 0, %bb.p ]
  %i.ca = phi ptr [ %i.bz, %bb.q ], [ %i.br, %bb.p ]
  %i.cb = load i8, ptr %i.ca, align 1, !tbaa !7   ; 2 uses
  %i.cc = zext i8 %i.cb to i64
  %i.cd = add i64 %.0.i492994, %i.cc              ; 3 uses
  %i.ce = icmp eq i8 %i.cb, -1
  br i1 %i.ce, label %bb.q, label %_ZN10duckdb_lz4L20read_variable_lengthEPPKhS1_i.exit494, !llvm.loop !38

_ZN10duckdb_lz4L20read_variable_lengthEPPKhS1_i.exit494: ; preds = %.lr.ph996
  %i.cf = icmp eq i64 %i.cd, -1
  br i1 %i.cf, label %_ZN10duckdb_lz4L14LZ4_wildCopy32EPvPKvS0_.exit.thread, label %bb.r

bb.r:                                             ; preds = %_ZN10duckdb_lz4L20read_variable_lengthEPPKhS1_i.exit494
  %i.cg = add i64 %i.cd, 19                       ; 4 uses
  %i.ch = ptrtoint ptr %.2 to i64
  %i.ci = xor i64 %i.ch, -1
  %i.cj = icmp ugt i64 %i.cg, %i.ci
  %i.ck = getelementptr inbounds nuw i8, ptr %i.bt, i64 %8
  %i.cl = icmp ult ptr %i.ck, %6
  %or.cond458 = select i1 %i.j, i1 %i.cl, i1 false, !prof !41
  %or.cond480 = select i1 %i.cj, i1 true, i1 %or.cond458, !prof !42
  br i1 %or.cond480, label %_ZN10duckdb_lz4L14LZ4_wildCopy32EPvPKvS0_.exit.thread, label %bb.s, !prof !42

bb.s:                                             ; preds = %bb.r
  %i.cm = getelementptr inbounds nuw i8, ptr %.2, i64 %i.cg
  %.not442 = icmp ult ptr %i.cm, %i.z
  br i1 %.not442, label %.thread567, label %.loopexit606

bb.t:                                             ; preds = %_ZN10duckdb_lz4L14LZ4_wildCopy32EPvPKvS0_.exit.thread558
  %narrow = add nuw nsw i32 %i.bu, 4
  %i.cn = zext nneg i32 %narrow to i64            ; 4 uses
  %i.co = getelementptr inbounds nuw i8, ptr %.2, i64 %i.cn ; 2 uses
  %.not = icmp ult ptr %i.co, %i.z
  br i1 %.not, label %bb.u, label %.loopexit606

bb.u:                                             ; preds = %bb.t
  br i1 %i.aa, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.cp = icmp uge ptr %i.bt, %6
  %i.cq = icmp ugt i16 %.val484, 7
  %or.cond5 = and i1 %i.cq, %i.cp
  br i1 %or.cond5, label %bb.x, label %.thread567

bb.w:                                             ; preds = %bb.u
  %.old4 = icmp ugt i16 %.val484, 7
  br i1 %.old4, label %bb.x, label %.thread567

bb.x:                                             ; preds = %bb.v, %bb.w
  %i.cr = load i64, ptr %i.bt, align 1
  store i64 %i.cr, ptr %.2, align 1
  %i.cs = getelementptr inbounds nuw i8, ptr %.2, i64 8
  %i.ct = getelementptr inbounds nuw i8, ptr %i.bt, i64 8
  %i.cu = load i64, ptr %i.ct, align 1
  store i64 %i.cu, ptr %i.cs, align 1
  %i.cv = getelementptr inbounds nuw i8, ptr %.2, i64 16
  %i.cw = getelementptr inbounds nuw i8, ptr %i.bt, i64 16
  %i.cx = load i16, ptr %i.cw, align 1
  store i16 %i.cx, ptr %i.cv, align 1
  br label %.backedge

.backedge:                                        ; preds = %.preheader600, %.lr.ph, %middle.block, %vec.epilog.middle.block, %bb.ah, %bb.ad, %bb.af, %bb.x
  %.0539.be = phi ptr [ %i.br, %bb.x ], [ %.3542, %bb.ad ], [ %.3542, %middle.block ], [ %.3542, %bb.ah ], [ %.3542, %bb.af ], [ %.3542, %.lr.ph ], [ %.3542, %vec.epilog.middle.block ], [ %.3542, %.preheader600 ]
  %.0362.be = phi ptr [ %i.co, %bb.x ], [ %i.dk, %bb.ad ], [ %i.dy, %middle.block ], [ %i.db, %bb.ah ], [ %i.ek, %bb.af ], [ %i.ei, %.lr.ph ], [ %i.ed, %vec.epilog.middle.block ], [ %i.db, %.preheader600 ]
  br label %bb.h, !llvm.loop !43

.thread567:                                       ; preds = %bb.s, %bb.v, %bb.w
  %.3542 = phi ptr [ %i.br, %bb.v ], [ %i.br, %bb.w ], [ %i.bz, %bb.s ] ; 9 uses
  %.2382 = phi i64 [ %i.cn, %bb.v ], [ %i.cn, %bb.w ], [ %i.cg, %bb.s ] ; 3 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.bt, i64 %8
  %i.cz = icmp ult ptr %i.cy, %6
  %or.cond461 = select i1 %i.j, i1 %i.cz, i1 false, !prof !41
  br i1 %or.cond461, label %_ZN10duckdb_lz4L14LZ4_wildCopy32EPvPKvS0_.exit.thread, label %bb.y, !prof !41

bb.y:                                             ; preds = %.thread567
  %i.da = icmp ult ptr %i.bt, %6
  %or.cond462 = select i1 %i.ad, i1 %i.da, i1 false
  %i.db = getelementptr inbounds nuw i8, ptr %.2, i64 %.2382 ; 5 uses
  br i1 %or.cond462, label %bb.z, label %bb.ag

bb.z:                                             ; preds = %bb.y
  %i.dc = icmp ugt ptr %i.db, %i.ae
  br i1 %i.dc, label %bb.aa, label %bb.ac, !prof !19

bb.aa:                                            ; preds = %bb.z
  br i1 %.not443, label %_ZN10duckdb_lz4L14LZ4_wildCopy32EPvPKvS0_.exit.thread, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.dd = ptrtoint ptr %.2 to i64
  %i.de = sub i64 %i.s, %i.dd
  %i.df = tail call i64 @llvm.umin.i64(i64 %.2382, i64 %i.de)
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.z
  %.3383 = phi i64 [ %i.df, %bb.ab ], [ %.2382, %bb.z ] ; 7 uses
  %i.dg = ptrtoint ptr %i.bt to i64
  %i.dh = sub i64 %i.af, %i.dg                    ; 6 uses
  %.not444 = icmp ugt i64 %.3383, %i.dh
  br i1 %.not444, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.di = sub i64 0, %i.dh
  %i.dj = getelementptr inbounds i8, ptr %i.i, i64 %i.di
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %.2, ptr align 1 %i.dj, i64 %.3383, i1 false)
  %i.dk = getelementptr inbounds nuw i8, ptr %.2, i64 %.3383
  br label %.backedge

bb.ae:                                            ; preds = %bb.ac
  %i.dl = sub nuw i64 %.3383, %i.dh               ; 2 uses
  %i.dm = sub i64 0, %i.dh
  %i.dn = getelementptr inbounds i8, ptr %i.i, i64 %i.dm
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.2, ptr align 1 %i.dn, i64 %i.dh, i1 false)
  %i.do = getelementptr inbounds nuw i8, ptr %.2, i64 %i.dh ; 7 uses
  %i.dp = ptrtoint ptr %i.do to i64
  %i.dq = sub i64 %i.dp, %i.af
  %i.dr = icmp ugt i64 %i.dl, %i.dq
  br i1 %i.dr, label %iter.check, label %bb.af

iter.check:                                       ; preds = %bb.ae
  %i.ds = getelementptr inbounds nuw i8, ptr %.2, i64 %.3383
  %i.dt = add i64 %i.ag, %i.bq
  %i.du = add i64 %.3383, %.21010
  %umax = tail call i64 @llvm.umax.i64(i64 %i.dt, i64 %i.du)
  %i.dv = add i64 %i.af, %i.bq
  %i.dw = sub i64 %umax, %i.dv                    ; 7 uses
  %min.iters.check = icmp ult i64 %i.dw, 4
  %i.dx = add i16 %.val484, -1
  %diff.check = icmp ult i16 %i.dx, 31
  %or.cond1199 = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond1199, label %.lr.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check1011 = icmp ult i64 %i.dw, 32
  br i1 %min.iters.check1011, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %i.dw, 28
  %n.vec = and i64 %i.dw, -32                     ; 5 uses
  %i.dy = getelementptr i8, ptr %i.do, i64 %n.vec ; 2 uses
  %i.dz = getelementptr i8, ptr %6, i64 %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %next.gep = getelementptr i8, ptr %i.do, i64 %index ; 2 uses
  %next.gep1012 = getelementptr i8, ptr %6, i64 %index ; 2 uses
  %i.ea = getelementptr i8, ptr %next.gep1012, i64 16
  %wide.load = load <16 x i8>, ptr %next.gep1012, align 1, !tbaa !7
  %wide.load1013 = load <16 x i8>, ptr %i.ea, align 1, !tbaa !7
  %i.eb = getelementptr i8, ptr %next.gep, i64 16
  store <16 x i8> %wide.load, ptr %next.gep, align 1, !tbaa !7
  store <16 x i8> %wide.load1013, ptr %i.eb, align 1, !tbaa !7
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.ec = icmp eq i64 %index.next, %n.vec
  br i1 %i.ec, label %middle.block, label %vector.body, !llvm.loop !44

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.dw, %n.vec
  br i1 %cmp.n, label %.backedge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.preheader, label %vec.epilog.ph, !prof !45

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec1016 = and i64 %i.dw, -4                  ; 4 uses
  %i.ed = getelementptr i8, ptr %i.do, i64 %n.vec1016 ; 2 uses
  %i.ee = getelementptr i8, ptr %6, i64 %n.vec1016
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index1017 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next1021, %vec.epilog.vector.body ] ; 3 uses
  %next.gep1018 = getelementptr i8, ptr %i.do, i64 %index1017
  %next.gep1019 = getelementptr i8, ptr %6, i64 %index1017
  %wide.load1020 = load <4 x i8>, ptr %next.gep1019, align 1, !tbaa !7
  store <4 x i8> %wide.load1020, ptr %next.gep1018, align 1, !tbaa !7
  %index.next1021 = add nuw i64 %index1017, 4     ; 2 uses
  %i.ef = icmp eq i64 %index.next1021, %n.vec1016
  br i1 %i.ef, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !46

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n1022 = icmp eq i64 %i.dw, %n.vec1016
  br i1 %cmp.n1022, label %.backedge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.3648.ph = phi ptr [ %i.do, %iter.check ], [ %i.dy, %vec.epilog.iter.check ], [ %i.ed, %vec.epilog.middle.block ]
  %.0400647.ph = phi ptr [ %6, %iter.check ], [ %i.dz, %vec.epilog.iter.check ], [ %i.ee, %vec.epilog.middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
end_hunk_0
begin_hunk_1_@_ZN10duckdb_lz4L22LZ4_decompress_genericEPKcPciiNS_18earlyEnd_directiveENS_14dict_directiveEPKhS6_m:bb.a
  %i.fn = load i16, ptr %i.fm, align 1
  store i16 %i.fn, ptr %i.fl, align 1
  %i.fo = getelementptr inbounds nuw i8, ptr %i.ex, i64 %i.fa
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fo, i64 4 ; 2 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %i.ey, i64 3 ; 2 uses
  %i.fr = load i8, ptr %i.fc, align 1, !tbaa !7
  %i.fs = zext i8 %i.fr to i32                    ; 3 uses
  %i.ft = lshr i32 %i.fs, 4                       ; 2 uses
  %i.fu = zext nneg i32 %i.ft to i64
  %cond = icmp eq i32 %i.ft, 15
  br i1 %cond, label %._crit_edge, label %.lr.ph651.split, !llvm.loop !48

._crit_edge:                                      ; preds = %bb.aj, %bb.bi, %.preheader596
  %.6.lcssa = phi ptr [ %.6.ph, %.preheader596 ], [ %i.mx, %bb.bi ], [ %i.fp, %bb.aj ] ; 2 uses
  %.lcssa616 = phi ptr [ %i.lu, %.preheader596 ], [ %i.my, %bb.bi ], [ %i.fq, %bb.aj ] ; 6 uses
  %.lcssa613 = phi i32 [ %i.lw, %.preheader596 ], [ %i.na, %bb.bi ], [ %i.fs, %bb.aj ]
  %i.fv = getelementptr inbounds i8, ptr %i.d, i64 -15 ; 2 uses
  %.not12.i499 = icmp ult ptr %.lcssa616, %i.fv
  br i1 %.not12.i499, label %.lr.ph1003, label %_ZN10duckdb_lz4L14LZ4_wildCopy32EPvPKvS0_.exit.thread, !prof !36

.lr.ph1003:                                       ; preds = %._crit_edge
  %i.fw = ptrtoaddr ptr %i.fv to i64
  %.promoted13.i501 = ptrtoaddr ptr %.lcssa616 to i64
  %i.fx = tail call i64 @llvm.usub.sat.i64(i64 %i.fw, i64 %.promoted13.i501)
  %scevgep.i502 = getelementptr i8, ptr %.lcssa616, i64 %i.fx
  %i.fy = getelementptr inbounds nuw i8, ptr %.lcssa616, i64 1
  br label %bb.al

bb.ak:                                            ; preds = %bb.al
  %i.fz = getelementptr inbounds nuw i8, ptr %i.ga, i64 1 ; 2 uses
  %exitcond.i504 = icmp eq ptr %i.ga, %scevgep.i502
  br i1 %exitcond.i504, label %_ZN10duckdb_lz4L14LZ4_wildCopy32EPvPKvS0_.exit.thread, label %bb.al, !prof !37, !llvm.loop !38

bb.al:                                            ; preds = %.lr.ph1003, %bb.ak
  %i.ga = phi ptr [ %i.fy, %.lr.ph1003 ], [ %i.fz, %bb.ak ] ; 7 uses
  %.0.i5031001 = phi i64 [ 0, %.lr.ph1003 ], [ %i.ge, %bb.ak ]
  %i.gb = phi ptr [ %.lcssa616, %.lr.ph1003 ], [ %i.ga, %bb.ak ]
  %i.gc = load i8, ptr %i.gb, align 1, !tbaa !7   ; 2 uses
  %i.gd = zext i8 %i.gc to i64
  %i.ge = add i64 %.0.i5031001, %i.gd             ; 3 uses
  %i.gf = icmp eq i8 %i.gc, -1
  br i1 %i.gf, label %bb.ak, label %_ZN10duckdb_lz4L20read_variable_lengthEPPKhS1_i.exit505, !llvm.loop !38

_ZN10duckdb_lz4L20read_variable_lengthEPPKhS1_i.exit505: ; preds = %bb.al
  %i.gg = icmp eq i64 %i.ge, -1
  br i1 %i.gg, label %_ZN10duckdb_lz4L14LZ4_wildCopy32EPvPKvS0_.exit.thread, label %bb.am

bb.am:                                            ; preds = %_ZN10duckdb_lz4L20read_variable_lengthEPPKhS1_i.exit505
  %i.gh = add i64 %i.ge, 15                       ; 3 uses
  %i.gi = ptrtoint ptr %.6.lcssa to i64
  %i.gj = xor i64 %i.gi, -1
  %i.gk = icmp ugt i64 %i.gh, %i.gj
  %i.gl = ptrtoint ptr %i.ga to i64
  %i.gm = xor i64 %i.gl, -1
  %i.gn = icmp ugt i64 %i.gh, %i.gm
  %or.cond586 = select i1 %i.gk, i1 true, i1 %i.gn, !prof !39
  br i1 %or.cond586, label %_ZN10duckdb_lz4L14LZ4_wildCopy32EPvPKvS0_.exit.thread, label %.loopexit597, !prof !39

.loopexit597:                                     ; preds = %.lr.ph651.split, %.lr.ph651.split.us, %bb.am
  %.6621 = phi ptr [ %.6.lcssa, %bb.am ], [ %.6650.us, %.lr.ph651.split.us ], [ %.6650, %.lr.ph651.split ] ; 2 uses
  %i.go = phi i32 [ %.lcssa613, %bb.am ], [ %i.ma, %.lr.ph651.split.us ], [ %i.es, %.lr.ph651.split ]
  %.5543 = phi ptr [ %i.ga, %bb.am ], [ %i.mb, %.lr.ph651.split.us ], [ %i.et, %.lr.ph651.split ]
  %.5385 = phi i64 [ %i.gh, %bb.am ], [ %i.lz, %.lr.ph651.split.us ], [ %i.er, %.lr.ph651.split ] ; 2 uses
  %i.gp = getelementptr inbounds nuw i8, ptr %.6621, i64 %.5385
  br label %_ZN10duckdb_lz4L14LZ4_wildCopy32EPvPKvS0_.exit

_ZN10duckdb_lz4L14LZ4_wildCopy32EPvPKvS0_.exit:   ; preds = %bb.m, %bb.n, %.loopexit597
  %.6544 = phi ptr [ %.5543, %.loopexit597 ], [ %i.aq, %bb.m ], [ %i.ah, %bb.n ] ; 11 uses
  %.6386 = phi i64 [ %.5385, %.loopexit597 ], [ %i.ax, %bb.m ], [ %i.al, %bb.n ] ; 4 uses
  %.0379 = phi i32 [ %i.go, %.loopexit597 ], [ %i.aj, %bb.n ], [ %i.aj, %bb.m ]
  %.3367 = phi ptr [ %i.gp, %.loopexit597 ], [ %i.be, %bb.m ], [ %i.bn, %bb.n ] ; 7 uses
  %.7 = phi ptr [ %.6621, %.loopexit597 ], [ %.0362, %bb.n ], [ %.0362, %bb.m ] ; 10 uses
  %.71026 = ptrtoaddr ptr %.7 to i64              ; 3 uses
  %.65441027 = ptrtoaddr ptr %.6544 to i64
  %i.gq = getelementptr inbounds i8, ptr %i.f, i64 -12
  %i.gr = icmp ugt ptr %.3367, %i.gq
  br i1 %i.gr, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %_ZN10duckdb_lz4L14LZ4_wildCopy32EPvPKvS0_.exit
  %i.gs = getelementptr inbounds nuw i8, ptr %.6544, i64 %.6386 ; 3 uses
  %i.gt = getelementptr inbounds i8, ptr %i.d, i64 -8
  %i.gu = icmp ugt ptr %i.gs, %i.gt
  br i1 %i.gu, label %bb.ao, label %.preheader595.preheader

.preheader595.preheader:                          ; preds = %bb.an
  %i.gv = ptrtoaddr ptr %.3367 to i64
  %i.gw = add i64 %.71026, 8
  %i.gx = tail call i64 @llvm.umax.i64(i64 %i.gv, i64 %i.gw)
  %i.gy = xor i64 %.71026, -1
  %i.gz = add i64 %i.gx, %i.gy                    ; 2 uses
  %i.ha = lshr i64 %i.gz, 3
  %i.hb = add nuw nsw i64 %i.ha, 1                ; 2 uses
  %min.iters.check1029 = icmp ult i64 %i.gz, 72
  %i.hc = sub i64 %.65441027, %.71026
  %diff.check1028 = icmp ugt i64 %i.hc, -32
  %or.cond1200 = select i1 %min.iters.check1029, i1 true, i1 %diff.check1028
  br i1 %or.cond1200, label %.preheader595.preheader1210, label %vector.ph1030

vector.ph1030:                                    ; preds = %.preheader595.preheader
  %n.vec1032 = and i64 %i.hb, 4611686018427387900 ; 3 uses
  %i.hd = shl i64 %n.vec1032, 3                   ; 2 uses
  %i.he = getelementptr i8, ptr %.6544, i64 %i.hd
  %i.hf = getelementptr i8, ptr %.7, i64 %i.hd
  br label %vector.body1033

vector.body1033:                                  ; preds = %vector.body1033, %vector.ph1030
  %index1034 = phi i64 [ 0, %vector.ph1030 ], [ %index.next1039, %vector.body1033 ] ; 2 uses
  %i.hg = shl i64 %index1034, 3                   ; 2 uses
  %next.gep1035 = getelementptr i8, ptr %.6544, i64 %i.hg ; 2 uses
  %next.gep1036 = getelementptr i8, ptr %.7, i64 %i.hg ; 2 uses
  %i.hh = getelementptr i8, ptr %next.gep1035, i64 16
  %wide.load1037 = load <2 x i64>, ptr %next.gep1035, align 1
  %wide.load1038 = load <2 x i64>, ptr %i.hh, align 1
  %i.hi = getelementptr i8, ptr %next.gep1036, i64 16
  store <2 x i64> %wide.load1037, ptr %next.gep1036, align 1
  store <2 x i64> %wide.load1038, ptr %i.hi, align 1
  %index.next1039 = add nuw i64 %index1034, 4     ; 2 uses
  %i.hj = icmp eq i64 %index.next1039, %n.vec1032
  br i1 %i.hj, label %middle.block1040, label %vector.body1033, !llvm.loop !49

middle.block1040:                                 ; preds = %vector.body1033
  %cmp.n1041 = icmp eq i64 %i.hb, %n.vec1032
  br i1 %cmp.n1041, label %_ZN10duckdb_lz4L13LZ4_wildCopy8EPvPKvS0_.exit, label %.preheader595.preheader1210

.preheader595.preheader1210:                      ; preds = %.preheader595.preheader, %middle.block1040
  %.09.i.ph = phi ptr [ %.6544, %.preheader595.preheader ], [ %i.he, %middle.block1040 ]
  %.0.i506.ph = phi ptr [ %.7, %.preheader595.preheader ], [ %i.hf, %middle.block1040 ]
  br label %.preheader595

bb.ao:                                            ; preds = %bb.an, %_ZN10duckdb_lz4L14LZ4_wildCopy32EPvPKvS0_.exit
  %.not446.not = icmp eq i32 %4, 0
  %i.hk = getelementptr inbounds nuw i8, ptr %.6544, i64 %.6386 ; 2 uses
  br i1 %.not446.not, label %bb.ar, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.hl = icmp ugt ptr %i.hk, %i.d                ; 2 uses
  %i.hm = ptrtoint ptr %i.d to i64
  %i.hn = ptrtoint ptr %.6544 to i64
  %i.ho = sub i64 %i.hm, %i.hn                    ; 2 uses
  %i.hp = getelementptr inbounds nuw i8, ptr %.7, i64 %i.ho
  %.4368 = select i1 %i.hl, ptr %i.hp, ptr %.3367 ; 2 uses
  %i.hq = icmp ugt ptr %.4368, %i.f
  br i1 %i.hq, label %bb.aq, label %bb.as

bb.aq:                                            ; preds = %bb.ap
  %i.hr = ptrtoint ptr %.7 to i64
  %i.hs = sub i64 %i.s, %i.hr
  br label %.thread

bb.ar:                                            ; preds = %bb.ao
  %.not447 = icmp ne ptr %i.hk, %i.d
  %i.ht = icmp ugt ptr %.3367, %i.f
  %or.cond467 = select i1 %.not447, i1 true, i1 %i.ht
  br i1 %or.cond467, label %_ZN10duckdb_lz4L14LZ4_wildCopy32EPvPKvS0_.exit.thread, label %.thread

.thread:                                          ; preds = %bb.ar, %bb.aq
  %.8388.ph = phi i64 [ %.6386, %bb.ar ], [ %i.hs, %bb.aq ] ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %.7, ptr nonnull align 1 %.6544, i64 %.8388.ph, i1 false)
  %i.hu = getelementptr inbounds nuw i8, ptr %.7, i64 %.8388.ph
  br label %._crit_edge765

bb.as:                                            ; preds = %bb.ap
  %.7387 = select i1 %i.hl, i64 %i.ho, i64 %.6386 ; 3 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %.7, ptr nonnull align 1 %.6544, i64 %.7387, i1 false)
  %i.hv = getelementptr inbounds nuw i8, ptr %.6544, i64 %.7387 ; 2 uses
  %i.hw = getelementptr inbounds nuw i8, ptr %.7, i64 %.7387 ; 2 uses
  %i.hx = icmp ne ptr %.4368, %i.f
  %i.hy = getelementptr inbounds i8, ptr %i.d, i64 -2
  %.not448 = icmp ult ptr %i.hv, %i.hy
  %or.cond469 = select i1 %i.hx, i1 %.not448, i1 false
  br i1 %or.cond469, label %_ZN10duckdb_lz4L13LZ4_wildCopy8EPvPKvS0_.exit, label %._crit_edge765

._crit_edge765:                                   ; preds = %.thread, %bb.as
  %i.hz = phi ptr [ %i.hu, %.thread ], [ %i.hw, %bb.as ]
  %.pre = ptrtoint ptr %i.hz to i64
  br label %bb.bs

.preheader595:                                    ; preds = %.preheader595.preheader1210, %.preheader595
  %.09.i = phi ptr [ %i.ic, %.preheader595 ], [ %.09.i.ph, %.preheader595.preheader1210 ] ; 2 uses
  %.0.i506 = phi ptr [ %i.ib, %.preheader595 ], [ %.0.i506.ph, %.preheader595.preheader1210 ] ; 2 uses
  %i.ia = load i64, ptr %.09.i, align 1
  store i64 %i.ia, ptr %.0.i506, align 1
  %i.ib = getelementptr inbounds nuw i8, ptr %.0.i506, i64 8 ; 2 uses
  %i.ic = getelementptr inbounds nuw i8, ptr %.09.i, i64 8
  %i.id = icmp ult ptr %i.ib, %.3367
  br i1 %i.id, label %.preheader595, label %_ZN10duckdb_lz4L13LZ4_wildCopy8EPvPKvS0_.exit, !llvm.loop !50

_ZN10duckdb_lz4L13LZ4_wildCopy8EPvPKvS0_.exit:    ; preds = %.preheader595, %middle.block1040, %bb.as
  %.7545 = phi ptr [ %i.hv, %bb.as ], [ %i.gs, %middle.block1040 ], [ %i.gs, %.preheader595 ] ; 2 uses
  %.8 = phi ptr [ %i.hw, %bb.as ], [ %.3367, %middle.block1040 ], [ %.3367, %.preheader595 ] ; 2 uses
  %.val = load i16, ptr %.7545, align 1, !tbaa !7
  %i.ie = zext i16 %.val to i64                   ; 2 uses
  %i.if = getelementptr inbounds nuw i8, ptr %.7545, i64 2
  %i.ig = sub nsw i64 0, %i.ie
  %i.ih = getelementptr inbounds i8, ptr %.8, i64 %i.ig
  %i.ii = and i32 %.0379, 15
  %i.ij = zext nneg i32 %i.ii to i64
  br label %.loopexit598

.loopexit598:                                     ; preds = %bb.ai, %bb.bh, %_ZN10duckdb_lz4L13LZ4_wildCopy8EPvPKvS0_.exit
  %.8546 = phi ptr [ %i.if, %_ZN10duckdb_lz4L13LZ4_wildCopy8EPvPKvS0_.exit ], [ %i.mk, %bb.bh ], [ %i.fc, %bb.ai ] ; 6 uses
  %.9389 = phi i64 [ %i.ij, %_ZN10duckdb_lz4L13LZ4_wildCopy8EPvPKvS0_.exit ], [ %i.mi, %bb.bh ], [ %i.fa, %bb.ai ] ; 2 uses
  %.0377 = phi i64 [ %i.ie, %_ZN10duckdb_lz4L13LZ4_wildCopy8EPvPKvS0_.exit ], [ %i.mj, %bb.bh ], [ %i.fb, %bb.ai ]
  %.0370 = phi ptr [ %i.ih, %_ZN10duckdb_lz4L13LZ4_wildCopy8EPvPKvS0_.exit ], [ %i.mm, %bb.bh ], [ %i.fe, %bb.ai ]
  %.9 = phi ptr [ %.8, %_ZN10duckdb_lz4L13LZ4_wildCopy8EPvPKvS0_.exit ], [ %i.mf, %bb.bh ], [ %i.ex, %bb.ai ] ; 2 uses
  %i.ik = icmp eq i64 %.9389, 15
  br i1 %i.ik, label %bb.at, label %bb.av

bb.at:                                            ; preds = %.loopexit598
  %i.il = getelementptr inbounds i8, ptr %i.d, i64 -4 ; 2 uses
  %i.im = ptrtoaddr ptr %i.il to i64
  %.promoted13.i510 = ptrtoaddr ptr %.8546 to i64
  %i.in = tail call i64 @llvm.usub.sat.i64(i64 %i.im, i64 %.promoted13.i510)
  %scevgep.i511 = getelementptr i8, ptr %.8546, i64 %i.in
  %i.io = getelementptr inbounds nuw i8, ptr %.8546, i64 1 ; 2 uses
  %exitcond.i5131005.not = icmp ugt ptr %i.il, %.8546
  br i1 %exitcond.i5131005.not, label %.lr.ph1008, label %_ZN10duckdb_lz4L14LZ4_wildCopy32EPvPKvS0_.exit.thread, !prof !28

bb.au:                                            ; preds = %.lr.ph1008
  %i.ip = getelementptr inbounds nuw i8, ptr %i.iq, i64 1 ; 2 uses
  %exitcond.i513 = icmp eq ptr %i.iq, %scevgep.i511
  br i1 %exitcond.i513, label %_ZN10duckdb_lz4L14LZ4_wildCopy32EPvPKvS0_.exit.thread, label %.lr.ph1008, !prof !37, !llvm.loop !38

.lr.ph1008:                                       ; preds = %bb.at, %bb.au
  %i.iq = phi ptr [ %i.ip, %bb.au ], [ %i.io, %bb.at ] ; 5 uses
  %.0.i5121006 = phi i64 [ %i.iu, %bb.au ], [ 0, %bb.at ]
  %i.ir = phi ptr [ %i.iq, %bb.au ], [ %.8546, %bb.at ]
  %i.is = load i8, ptr %i.ir, align 1, !tbaa !7   ; 2 uses
  %i.it = zext i8 %i.is to i64
  %i.iu = add i64 %.0.i5121006, %i.it             ; 3 uses
  %i.iv = icmp eq i8 %i.is, -1
  br i1 %i.iv, label %bb.au, label %_ZN10duckdb_lz4L20read_variable_lengthEPPKhS1_i.exit514, !llvm.loop !38

_ZN10duckdb_lz4L20read_variable_lengthEPPKhS1_i.exit514: ; preds = %.lr.ph1008
  %i.iw = icmp ne i64 %i.iu, -1                   ; 2 uses
  %i.ix = add i64 %i.iu, 15                       ; 2 uses
  %i.iy = ptrtoint ptr %.9 to i64
  %i.iz = xor i64 %i.iy, -1
  %i.ja = icmp ule i64 %i.ix, %i.iz
  %.not591 = select i1 %i.iw, i1 %i.ja, i1 false
  %.10390 = select i1 %i.iw, i64 %i.ix, i64 15
  br i1 %.not591, label %bb.av, label %_ZN10duckdb_lz4L14LZ4_wildCopy32EPvPKvS0_.exit.thread

bb.av:                                            ; preds = %_ZN10duckdb_lz4L20read_variable_lengthEPPKhS1_i.exit514, %.loopexit598
  %.9547 = phi ptr [ %i.iq, %_ZN10duckdb_lz4L20read_variable_lengthEPPKhS1_i.exit514 ], [ %.8546, %.loopexit598 ]
  %.11391 = phi i64 [ %.10390, %_ZN10duckdb_lz4L20read_variable_lengthEPPKhS1_i.exit514 ], [ %.9389, %.loopexit598 ]
  %i.jb = add i64 %.11391, 4
  br label %.loopexit606

.loopexit606:                                     ; preds = %bb.s, %bb.t, %bb.av
  %.10548 = phi ptr [ %.9547, %bb.av ], [ %i.bz, %bb.s ], [ %i.br, %bb.t ] ; 6 uses
  %.12392 = phi i64 [ %i.jb, %bb.av ], [ %i.cg, %bb.s ], [ %i.cn, %bb.t ] ; 7 uses
  %.1378 = phi i64 [ %.0377, %bb.av ], [ %i.bq, %bb.t ], [ %i.bq, %bb.s ] ; 3 uses
  %.1371 = phi ptr [ %.0370, %bb.av ], [ %i.bt, %bb.t ], [ %i.bt, %bb.s ] ; 18 uses
  %.10 = phi ptr [ %.9, %bb.av ], [ %.2, %bb.t ], [ %.2, %bb.s ] ; 27 uses
  %.13711121 = ptrtoaddr ptr %.1371 to i64        ; 3 uses
  %.101044 = ptrtoaddr ptr %.10 to i64            ; 17 uses
  %i.jc = getelementptr inbounds nuw i8, ptr %.1371, i64 %8
  %i.jd = icmp ult ptr %i.jc, %6
  %or.cond472 = select i1 %i.j, i1 %i.jd, i1 false, !prof !41
  br i1 %or.cond472, label %_ZN10duckdb_lz4L14LZ4_wildCopy32EPvPKvS0_.exit.thread, label %bb.aw, !prof !41

bb.aw:                                            ; preds = %.loopexit606
  %i.je = icmp eq i32 %5, 2
  %i.jf = icmp ult ptr %.1371, %6
  %or.cond473 = select i1 %i.je, i1 %i.jf, i1 false
  %i.jg = getelementptr inbounds nuw i8, ptr %.10, i64 %.12392 ; 7 uses
  br i1 %or.cond473, label %bb.ax, label %bb.be

bb.ax:                                            ; preds = %bb.aw
  %i.jh = getelementptr inbounds i8, ptr %i.f, i64 -5
  %i.ji = icmp ugt ptr %i.jg, %i.jh
  br i1 %i.ji, label %bb.ay, label %bb.ba, !prof !19

bb.ay:                                            ; preds = %bb.ax
  %.not451 = icmp eq i32 %4, 0
  br i1 %.not451, label %_ZN10duckdb_lz4L14LZ4_wildCopy32EPvPKvS0_.exit.thread, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.jj = ptrtoint ptr %.10 to i64
  %i.jk = sub i64 %i.s, %i.jj
  %i.jl = tail call i64 @llvm.umin.i64(i64 %.12392, i64 %i.jk)
  br label %bb.ba

bb.ba:                                            ; preds = %bb.az, %bb.ax
  %.13393 = phi i64 [ %i.jl, %bb.az ], [ %.12392, %bb.ax ] ; 7 uses
  %i.jm = ptrtoint ptr %6 to i64                  ; 4 uses
  %i.jn = ptrtoint ptr %.1371 to i64
  %i.jo = sub i64 %i.jm, %i.jn                    ; 6 uses
  %.not452 = icmp ugt i64 %.13393, %i.jo
  br i1 %.not452, label %bb.bc, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.jp = sub i64 0, %i.jo
  %i.jq = getelementptr inbounds i8, ptr %i.i, i64 %i.jp
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %.10, ptr align 1 %i.jq, i64 %.13393, i1 false)
  %i.jr = getelementptr inbounds nuw i8, ptr %.10, i64 %.13393
  br label %.loopexit

bb.bc:                                            ; preds = %bb.ba
  %i.js = sub nuw i64 %.13393, %i.jo              ; 2 uses
  %i.jt = sub i64 0, %i.jo
  %i.ju = getelementptr inbounds i8, ptr %i.i, i64 %i.jt
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.10, ptr align 1 %i.ju, i64 %i.jo, i1 false)
  %i.jv = getelementptr inbounds nuw i8, ptr %.10, i64 %i.jo ; 7 uses
  %i.jw = ptrtoint ptr %i.jv to i64
  %i.jx = sub i64 %i.jw, %i.jm                    ; 2 uses
  %i.jy = icmp ugt i64 %i.js, %i.jx
  br i1 %i.jy, label %iter.check1182, label %bb.bd

iter.check1182:                                   ; preds = %bb.bc
  %i.jz = getelementptr inbounds nuw i8, ptr %.10, i64 %.13393
  %i.ka = add i64 %.101044, %i.jm
  %i.kb = add i64 %i.ka, 1
  %i.kc = sub i64 %i.kb, %.13711121
  %i.kd = add i64 %.13393, %.101044
  %umax1162 = tail call i64 @llvm.umax.i64(i64 %i.kc, i64 %i.kd)
  %i.ke = add i64 %umax1162, %.13711121
  %i.kf = add i64 %.101044, %i.jm
  %i.kg = sub i64 %i.ke, %i.kf                    ; 7 uses
  %min.iters.check1164 = icmp ult i64 %i.kg, 4
  %i.kh = add i64 %i.jx, -1
  %diff.check1161 = icmp ult i64 %i.kh, 31
  %or.cond1201 = or i1 %min.iters.check1164, %diff.check1161
  br i1 %or.cond1201, label %.lr.ph676.preheader, label %vector.main.loop.iter.check1165

vector.main.loop.iter.check1165:                  ; preds = %iter.check1182
  %min.iters.check1166 = icmp ult i64 %i.kg, 32
  br i1 %min.iters.check1166, label %vec.epilog.ph1186, label %vector.ph1167

vector.ph1167:                                    ; preds = %vector.main.loop.iter.check1165
  %n.mod.vf1168 = and i64 %i.kg, 28
  %n.vec1169 = and i64 %i.kg, -32                 ; 5 uses
  %i.ki = getelementptr i8, ptr %i.jv, i64 %n.vec1169 ; 2 uses
  %i.kj = getelementptr i8, ptr %6, i64 %n.vec1169
  br label %vector.body1170

vector.body1170:                                  ; preds = %vector.body1170, %vector.ph1167
  %index1171 = phi i64 [ 0, %vector.ph1167 ], [ %index.next1176, %vector.body1170 ] ; 3 uses
  %next.gep1172 = getelementptr i8, ptr %i.jv, i64 %index1171 ; 2 uses
  %next.gep1173 = getelementptr i8, ptr %6, i64 %index1171 ; 2 uses
  %i.kk = getelementptr i8, ptr %next.gep1173, i64 16
  %wide.load1174 = load <16 x i8>, ptr %next.gep1173, align 1, !tbaa !7
  %wide.load1175 = load <16 x i8>, ptr %i.kk, align 1, !tbaa !7
  %i.kl = getelementptr i8, ptr %next.gep1172, i64 16
  store <16 x i8> %wide.load1174, ptr %next.gep1172, align 1, !tbaa !7
  store <16 x i8> %wide.load1175, ptr %i.kl, align 1, !tbaa !7
  %index.next1176 = add nuw i64 %index1171, 32    ; 2 uses
  %i.km = icmp eq i64 %index.next1176, %n.vec1169
  br i1 %i.km, label %middle.block1177, label %vector.body1170, !llvm.loop !51

middle.block1177:                                 ; preds = %vector.body1170
  %cmp.n1178 = icmp eq i64 %i.kg, %n.vec1169
  br i1 %cmp.n1178, label %.loopexit, label %vec.epilog.iter.check1184

vec.epilog.iter.check1184:                        ; preds = %middle.block1177
  %min.epilog.iters.check1185 = icmp eq i64 %n.mod.vf1168, 0
  br i1 %min.epilog.iters.check1185, label %.lr.ph676.preheader, label %vec.epilog.ph1186, !prof !45

vec.epilog.ph1186:                                ; preds = %vector.main.loop.iter.check1165, %vec.epilog.iter.check1184
  %vec.epilog.resume.val1179 = phi i64 [ %n.vec1169, %vec.epilog.iter.check1184 ], [ 0, %vector.main.loop.iter.check1165 ]
  %n.vec1188 = and i64 %i.kg, -4                  ; 4 uses
  %i.kn = getelementptr i8, ptr %i.jv, i64 %n.vec1188 ; 2 uses
  %i.ko = getelementptr i8, ptr %6, i64 %n.vec1188
  br label %vec.epilog.vector.body1189

vec.epilog.vector.body1189:                       ; preds = %vec.epilog.vector.body1189, %vec.epilog.ph1186
  %index1190 = phi i64 [ %vec.epilog.resume.val1179, %vec.epilog.ph1186 ], [ %index.next1194, %vec.epilog.vector.body1189 ] ; 3 uses
  %next.gep1191 = getelementptr i8, ptr %i.jv, i64 %index1190
  %next.gep1192 = getelementptr i8, ptr %6, i64 %index1190
  %wide.load1193 = load <4 x i8>, ptr %next.gep1192, align 1, !tbaa !7
  store <4 x i8> %wide.load1193, ptr %next.gep1191, align 1, !tbaa !7
  %index.next1194 = add nuw i64 %index1190, 4     ; 2 uses
  %i.kp = icmp eq i64 %index.next1194, %n.vec1188
  br i1 %i.kp, label %vec.epilog.middle.block1195, label %vec.epilog.vector.body1189, !llvm.loop !52

vec.epilog.middle.block1195:                      ; preds = %vec.epilog.vector.body1189
  %cmp.n1196 = icmp eq i64 %i.kg, %n.vec1188
  br i1 %cmp.n1196, label %.loopexit, label %.lr.ph676.preheader

.lr.ph676.preheader:                              ; preds = %iter.check1182, %vec.epilog.iter.check1184, %vec.epilog.middle.block1195
  %.11674.ph = phi ptr [ %i.jv, %iter.check1182 ], [ %i.ki, %vec.epilog.iter.check1184 ], [ %i.kn, %vec.epilog.middle.block1195 ]
  %.0376673.ph = phi ptr [ %6, %iter.check1182 ], [ %i.kj, %vec.epilog.iter.check1184 ], [ %i.ko, %vec.epilog.middle.block1195 ]
  br label %.lr.ph676

.lr.ph676:                                        ; preds = %.lr.ph676.preheader, %.lr.ph676
  %.11674 = phi ptr [ %i.ks, %.lr.ph676 ], [ %.11674.ph, %.lr.ph676.preheader ] ; 2 uses
  %.0376673 = phi ptr [ %i.kq, %.lr.ph676 ], [ %.0376673.ph, %.lr.ph676.preheader ] ; 2 uses
  %i.kq = getelementptr inbounds nuw i8, ptr %.0376673, i64 1
  %i.kr = load i8, ptr %.0376673, align 1, !tbaa !7
  %i.ks = getelementptr inbounds nuw i8, ptr %.11674, i64 1 ; 3 uses
  store i8 %i.kr, ptr %.11674, align 1, !tbaa !7
  %i.kt = icmp ult ptr %i.ks, %i.jz
  br i1 %i.kt, label %.lr.ph676, label %.loopexit, !llvm.loop !53

bb.bd:                                            ; preds = %bb.bc
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.jv, ptr nonnull align 1 %6, i64 %i.js, i1 false)
  %i.ku = getelementptr inbounds nuw i8, ptr %.10, i64 %.13393
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph676, %middle.block1177, %vec.epilog.middle.block1195, %bb.bd, %bb.bb
  %.13 = phi ptr [ %i.jr, %bb.bb ], [ %i.ku, %bb.bd ], [ %i.kn, %vec.epilog.middle.block1195 ], [ %i.ki, %middle.block1177 ], [ %i.ks, %.lr.ph676 ]
  br label %.preheader596, !llvm.loop !48

bb.be:                                            ; preds = %bb.aw
  %.not450 = icmp ne i32 %4, 0
  %i.kv = getelementptr inbounds i8, ptr %i.f, i64 -12
  %i.kw = icmp ugt ptr %i.jg, %i.kv               ; 2 uses
  %or.cond475 = select i1 %.not450, i1 %i.kw, i1 false
  br i1 %or.cond475, label %bb.bf, label %bb.bj

bb.bf:                                            ; preds = %bb.be
  %i.kx = ptrtoint ptr %.10 to i64
  %i.ky = sub i64 %i.s, %i.kx
  %i.kz = tail call i64 @llvm.umin.i64(i64 %.12392, i64 %i.ky) ; 5 uses
  %i.la = getelementptr inbounds nuw i8, ptr %.1371, i64 %i.kz
end_hunk_1
