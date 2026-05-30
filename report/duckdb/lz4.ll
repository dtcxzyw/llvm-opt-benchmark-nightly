inline.NumInlined: 117
inline.NumDeleted: 34
begin_hunk_0_@_ZN10duckdb_lz426LZ4_compress_fast_extStateEPvPKcPciii:bb.a
bb.f:                                             ; preds = %bb.d
  %i.k = tail call fastcc noundef i32 @_ZN10duckdb_lz4L20LZ4_compress_genericEPNS_21LZ4_stream_t_internalEPKcPciPiiNS_23limitedOutput_directiveENS_11tableType_tENS_14dict_directiveENS_19dictIssue_directiveEi(ptr noundef %.0.i, ptr noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef null, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, i32 noundef 0, i32 noundef %spec.store.select1)
  br label %bb.j

bb.g:                                             ; preds = %_ZN10duckdb_lz417LZ4_compressBoundEi.exit
  br i1 %i.i, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.l = tail call fastcc noundef i32 @_ZN10duckdb_lz4L20LZ4_compress_genericEPNS_21LZ4_stream_t_internalEPKcPciPiiNS_23limitedOutput_directiveENS_11tableType_tENS_14dict_directiveENS_19dictIssue_directiveEi(ptr noundef %.0.i, ptr noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef null, i32 noundef %4, i32 noundef 1, i32 noundef 3, i32 noundef 0, i32 noundef 0, i32 noundef %spec.store.select1)
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.m = tail call fastcc noundef i32 @_ZN10duckdb_lz4L20LZ4_compress_genericEPNS_21LZ4_stream_t_internalEPKcPciPiiNS_23limitedOutput_directiveENS_11tableType_tENS_14dict_directiveENS_19dictIssue_directiveEi(ptr noundef %.0.i, ptr noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef null, i32 noundef %4, i32 noundef 1, i32 noundef 2, i32 noundef 0, i32 noundef 0, i32 noundef %spec.store.select1)
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %bb.f, %bb.e
  %.0 = phi i32 [ %i.j, %bb.e ], [ %i.k, %bb.f ], [ %i.l, %bb.h ], [ %i.m, %bb.i ]
  ret i32 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define noundef ptr @_ZN10duckdb_lz414LZ4_initStreamEPvm(ptr noundef %0, i64 noundef %1) local_unnamed_addr #3 {
bb.a:
  %i.a = icmp ne ptr %0, null
  %i.b = icmp ugt i64 %1, 16415
  %or.cond.not10 = and i1 %i.a, %i.b
  %i.c = ptrtoint ptr %0 to i64
  %i.d = and i64 %i.c, 7
  %.not = icmp eq i64 %i.d, 0
  %or.cond7 = and i1 %or.cond.not10, %.not
  br i1 %or.cond7, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(16416) %0, i8 0, i64 16416, i1 false)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi ptr [ %0, %bb.b ], [ null, %bb.a ]
  ret ptr %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc noundef i32 @_ZN10duckdb_lz4L20LZ4_compress_genericEPNS_21LZ4_stream_t_internalEPKcPciPiiNS_23limitedOutput_directiveENS_11tableType_tENS_14dict_directiveENS_19dictIssue_directiveEi(ptr noundef captures(none) %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef writeonly captures(none) %4, i32 noundef %5, i32 noundef range(i32 0, 3) %6, i32 noundef range(i32 2, 4) %7, i32 noundef range(i32 0, 4) %8, i32 noundef range(i32 0, 2) %9, i32 noundef %10) unnamed_addr #1 {
bb.a:
  %i.a = icmp ugt i32 %3, 2113929216
  br i1 %i.a, label %_ZN10duckdb_lz4L30LZ4_compress_generic_validatedEPNS_21LZ4_stream_t_internalEPKcPciPiiNS_23limitedOutput_directiveENS_11tableType_tENS_14dict_directiveENS_19dictIssue_directiveEi.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = icmp eq i32 %3, 0
  br i1 %i.b, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.c = icmp ne i32 %6, 0
  %i.d = icmp slt i32 %5, 1
  %or.cond = and i1 %i.d, %i.c
  br i1 %or.cond, label %_ZN10duckdb_lz4L30LZ4_compress_generic_validatedEPNS_21LZ4_stream_t_internalEPKcPciPiiNS_23limitedOutput_directiveENS_11tableType_tENS_14dict_directiveENS_19dictIssue_directiveEi.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  store i8 0, ptr %2, align 1, !tbaa !7
  %i.e = icmp eq i32 %6, 2
  br i1 %i.e, label %bb.e, label %_ZN10duckdb_lz4L30LZ4_compress_generic_validatedEPNS_21LZ4_stream_t_internalEPKcPciPiiNS_23limitedOutput_directiveENS_11tableType_tENS_14dict_directiveENS_19dictIssue_directiveEi.exit

bb.e:                                             ; preds = %bb.d
  store i32 0, ptr %4, align 4, !tbaa !3
  br label %_ZN10duckdb_lz4L30LZ4_compress_generic_validatedEPNS_21LZ4_stream_t_internalEPKcPciPiiNS_23limitedOutput_directiveENS_11tableType_tENS_14dict_directiveENS_19dictIssue_directiveEi.exit

bb.f:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16400 ; 2 uses
  %i.g = load i32, ptr %i.f, align 8, !tbaa !8    ; 10 uses
  %i.h = zext i32 %i.g to i64
  %i.i = sub nsw i64 0, %i.h                      ; 2 uses
  %i.j = getelementptr inbounds i8, ptr %1, i64 %i.i ; 7 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16392 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !13   ; 4 uses
  %i.m = icmp eq i32 %8, 3                        ; 5 uses
  %..i = select i1 %i.m, ptr %i.l, ptr %0         ; 2 uses
  %.in.i = getelementptr inbounds nuw i8, ptr %..i, i64 16384
  %i.n = load ptr, ptr %.in.i, align 8, !tbaa !14 ; 9 uses
  %.in499.i = getelementptr inbounds nuw i8, ptr %..i, i64 16408
  %i.o = load i32, ptr %.in499.i, align 8, !tbaa !15 ; 4 uses
  br i1 %i.m, label %bb.g, label %.thread.i

bb.g:                                             ; preds = %bb.f
  %i.p = getelementptr inbounds nuw i8, ptr %i.l, i64 16400
  %i.q = load i32, ptr %i.p, align 8, !tbaa !8    ; 2 uses
  %i.r = sub i32 %i.g, %i.q                       ; 2 uses
  %.not501.i = icmp eq ptr %i.n, null
  br i1 %.not501.i, label %.thread617.i, label %bb.h

.thread.i:                                        ; preds = %bb.f
  %i.s = icmp eq i32 %8, 2
  %.not613.i = icmp samesign ult i32 %8, 2
  %.not501614.i = icmp eq ptr %i.n, null          ; 2 uses
  %i.t = zext i32 %i.o to i64
  %i.u = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.t ; 2 uses
  %i.v = getelementptr inbounds i8, ptr %i.u, i64 %i.i
  %spec.select718.i = select i1 %.not501614.i, ptr null, ptr %i.u
  %spec.select719.i = select i1 %.not501614.i, ptr null, ptr %i.v
  br label %.thread617.i

bb.h:                                             ; preds = %bb.g
  %i.w = zext i32 %i.o to i64
  %i.x = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.w ; 2 uses
  %i.y = zext i32 %i.q to i64
  %i.z = sub nsw i64 0, %i.y
  %i.aa = getelementptr inbounds i8, ptr %i.x, i64 %i.z
  br label %.thread617.i

.thread617.i:                                     ; preds = %bb.h, %.thread.i, %bb.g
  %i.ab = phi ptr [ null, %bb.g ], [ %i.x, %bb.h ], [ %spec.select718.i, %.thread.i ]
  %.not616.i = phi i1 [ false, %bb.g ], [ false, %bb.h ], [ %.not613.i, %.thread.i ] ; 3 uses
  %i.ac = phi i1 [ false, %bb.g ], [ false, %bb.h ], [ %i.s, %.thread.i ] ; 2 uses
  %i.ad = phi i32 [ %i.r, %bb.g ], [ %i.r, %bb.h ], [ 0, %.thread.i ] ; 2 uses
  %i.ae = phi ptr [ null, %bb.g ], [ %i.aa, %bb.h ], [ %spec.select719.i, %.thread.i ] ; 4 uses
  %i.af = sub i32 %i.g, %i.o                      ; 2 uses
  %.pn.i = zext nneg i32 %3 to i64
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 %.pn.i ; 7 uses
  %i.ah = getelementptr inbounds i8, ptr %i.ag, i64 -11 ; 2 uses
  %i.ai = getelementptr inbounds i8, ptr %i.ag, i64 -5 ; 4 uses
  %i.aj = sext i32 %5 to i64
  %i.ak = getelementptr inbounds i8, ptr %2, i64 %i.aj ; 8 uses
  %i.al = icmp eq i32 %6, 2                       ; 7 uses
  %i.am = icmp slt i32 %5, 1
  %or.cond.i = and i1 %i.am, %i.al
  br i1 %or.cond.i, label %_ZN10duckdb_lz4L30LZ4_compress_generic_validatedEPNS_21LZ4_stream_t_internalEPKcPciPiiNS_23limitedOutput_directiveENS_11tableType_tENS_14dict_directiveENS_19dictIssue_directiveEi.exit, label %bb.i

bb.i:                                             ; preds = %.thread617.i
  %i.an = icmp eq i32 %7, 3                       ; 8 uses
  %i.ao = icmp samesign ugt i32 %3, 65546
  %or.cond8.i = select i1 %i.an, i1 %i.ao, i1 false
  br i1 %or.cond8.i, label %_ZN10duckdb_lz4L30LZ4_compress_generic_validatedEPNS_21LZ4_stream_t_internalEPKcPciPiiNS_23limitedOutput_directiveENS_11tableType_tENS_14dict_directiveENS_19dictIssue_directiveEi.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ap = icmp eq i32 %8, 1
  %i.aq = select i1 %i.ap, i32 %i.o, i32 0
  %i.ar = zext i32 %i.aq to i64
  %i.as = sub nsw i64 0, %i.ar
  %i.at = getelementptr inbounds i8, ptr %1, i64 %i.as
  br i1 %i.m, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  store ptr null, ptr %i.k, align 8, !tbaa !13
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 16408
  store i32 %3, ptr %i.au, align 8, !tbaa !15
  br label %bb.m

bb.l:                                             ; preds = %bb.j
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 16408 ; 2 uses
  %i.aw = load i32, ptr %i.av, align 8, !tbaa !15
  %i.ax = add i32 %i.aw, %3
  store i32 %i.ax, ptr %i.av, align 8, !tbaa !15
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.ay = add i32 %i.g, %3
  store i32 %i.ay, ptr %i.f, align 8, !tbaa !8
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 16404
  store i32 %7, ptr %i.az, align 4, !tbaa !16
  %i.ba = icmp samesign ult i32 %3, 13
  br i1 %i.ba, label %_ZN10duckdb_lz4L16LZ4_hashPositionEPKvNS_11tableType_tE.exit612.thread.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bb = ptrtoint ptr %i.j to i64                ; 4 uses
  br i1 %i.an, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %.val.i.i.i = load i64, ptr %1, align 1, !tbaa !7
  %i.bc = mul i64 %.val.i.i.i, -3523014627271114752
  %i.bd = lshr i64 %i.bc, 52
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.bd
  store i32 %i.g, ptr %i.be, align 4, !tbaa !3
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 1 ; 2 uses
  %.val.i.i = load i64, ptr %i.bf, align 1, !tbaa !7
  %i.bg = mul i64 %.val.i.i, -3523014627271114752
  %i.bh = lshr i64 %i.bg, 52
  %i.bi = trunc nuw nsw i64 %i.bh to i32
  br label %_ZN10duckdb_lz4L16LZ4_hashPositionEPKvNS_11tableType_tE.exit.i

bb.p:                                             ; preds = %bb.n
  %.val6.i.i.i = load i32, ptr %1, align 1, !tbaa !7
  %i.bj = mul i32 %.val6.i.i.i, -1640531535
  %i.bk = lshr i32 %i.bj, 19
  %i.bl = zext nneg i32 %i.bk to i64
  %i.bm = trunc i32 %i.g to i16
  %i.bn = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.bl
  store i16 %i.bm, ptr %i.bn, align 2, !tbaa !17
  %i.bo = getelementptr inbounds nuw i8, ptr %1, i64 1 ; 2 uses
  %.val6.i.i = load i32, ptr %i.bo, align 1, !tbaa !7
  %i.bp = mul i32 %.val6.i.i, -1640531535
  %i.bq = lshr i32 %i.bp, 19
  br label %_ZN10duckdb_lz4L16LZ4_hashPositionEPKvNS_11tableType_tE.exit.i

_ZN10duckdb_lz4L16LZ4_hashPositionEPKvNS_11tableType_tE.exit.i: ; preds = %bb.p, %bb.o
  %i.br = phi ptr [ %i.bf, %bb.o ], [ %i.bo, %bb.p ]
  %.0.i.i = phi i32 [ %i.bi, %bb.o ], [ %i.bq, %bb.p ]
  %i.bs = shl i32 %10, 6
  %i.bt = icmp eq i32 %7, 2                       ; 2 uses
  %.not502.i = trunc nuw i32 %9 to i1
  %.not503.i = icmp ne i32 %7, 3
  %i.bu = icmp eq i32 %6, 1
  %i.bv = ptrtoint ptr %i.ab to i64
  %i.bw = getelementptr inbounds i8, ptr %i.ag, i64 -12 ; 6 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.by = getelementptr inbounds i8, ptr %i.ag, i64 -8 ; 2 uses
  %i.bz = getelementptr inbounds i8, ptr %i.ag, i64 -6 ; 2 uses
  %.not504.i = icmp eq i32 %6, 0
  %i.ca = ptrtoint ptr %i.ak to i64
  %.not508.i = icmp eq i32 %9, 0
  br label %_ZN10duckdb_lz4L16LZ4_hashPositionEPKvNS_11tableType_tE.exit612.i

_ZN10duckdb_lz4L16LZ4_hashPositionEPKvNS_11tableType_tE.exit612.i: ; preds = %_ZN10duckdb_lz4L16LZ4_hashPositionEPKvNS_11tableType_tE.exit612.i.backedge, %_ZN10duckdb_lz4L16LZ4_hashPositionEPKvNS_11tableType_tE.exit.i
  %.0442.i = phi i32 [ %.0.i.i, %_ZN10duckdb_lz4L16LZ4_hashPositionEPKvNS_11tableType_tE.exit.i ], [ %.0442.i.be, %_ZN10duckdb_lz4L16LZ4_hashPositionEPKvNS_11tableType_tE.exit612.i.backedge ]
  %.0431.i = phi i32 [ 0, %_ZN10duckdb_lz4L16LZ4_hashPositionEPKvNS_11tableType_tE.exit.i ], [ %.5436776.i, %_ZN10duckdb_lz4L16LZ4_hashPositionEPKvNS_11tableType_tE.exit612.i.backedge ]
  %.0414.i = phi ptr [ %2, %_ZN10duckdb_lz4L16LZ4_hashPositionEPKvNS_11tableType_tE.exit.i ], [ %.8422.ph.i, %_ZN10duckdb_lz4L16LZ4_hashPositionEPKvNS_11tableType_tE.exit612.i.backedge ] ; 8 uses
  %.0410.i = phi ptr [ %1, %_ZN10duckdb_lz4L16LZ4_hashPositionEPKvNS_11tableType_tE.exit.i ], [ %.6398.i, %_ZN10duckdb_lz4L16LZ4_hashPositionEPKvNS_11tableType_tE.exit612.i.backedge ] ; 9 uses
  %.0400.i = phi ptr [ %i.at, %_ZN10duckdb_lz4L16LZ4_hashPositionEPKvNS_11tableType_tE.exit.i ], [ %.6406.i, %_ZN10duckdb_lz4L16LZ4_hashPositionEPKvNS_11tableType_tE.exit612.i.backedge ]
  %.0392.i = phi ptr [ %i.br, %_ZN10duckdb_lz4L16LZ4_hashPositionEPKvNS_11tableType_tE.exit.i ], [ %.0392.i.be, %_ZN10duckdb_lz4L16LZ4_hashPositionEPKvNS_11tableType_tE.exit612.i.backedge ]
  %.0410844.i = ptrtoint ptr %.0410.i to i64      ; 5 uses
  br label %bb.q

bb.q:                                             ; preds = %.backedge, %_ZN10duckdb_lz4L16LZ4_hashPositionEPKvNS_11tableType_tE.exit612.i
  %.0460.i = phi ptr [ %.0392.i, %_ZN10duckdb_lz4L16LZ4_hashPositionEPKvNS_11tableType_tE.exit612.i ], [ %i.cl, %.backedge ] ; 9 uses
  %.0459.i = phi i32 [ 1, %_ZN10duckdb_lz4L16LZ4_hashPositionEPKvNS_11tableType_tE.exit612.i ], [ %i.cn, %.backedge ]
  %.0458.i = phi i32 [ %i.bs, %_ZN10duckdb_lz4L16LZ4_hashPositionEPKvNS_11tableType_tE.exit612.i ], [ %i.cm, %.backedge ] ; 2 uses
  %.3445.i = phi i32 [ %.0442.i, %_ZN10duckdb_lz4L16LZ4_hashPositionEPKvNS_11tableType_tE.exit612.i ], [ %.0.i524621.i, %.backedge ]
  %.1401.i = phi ptr [ %.0400.i, %_ZN10duckdb_lz4L16LZ4_hashPositionEPKvNS_11tableType_tE.exit612.i ], [ %.2402.i, %.backedge ]
  %i.cb = ptrtoint ptr %.0460.i to i64            ; 2 uses
  %i.cc = sub i64 %i.cb, %i.bb                    ; 2 uses
  %i.cd = trunc i64 %i.cc to i32                  ; 3 uses
  %i.ce = zext nneg i32 %.3445.i to i64           ; 5 uses
  br i1 %i.bt, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.cf = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.ce
  %i.cg = load i32, ptr %i.cf, align 4, !tbaa !3
  br label %_ZN10duckdb_lz4L18LZ4_getIndexOnHashEjPKvNS_11tableType_tE.exit.i

bb.s:                                             ; preds = %bb.q
  %i.ch = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.ce
  %i.ci = load i16, ptr %i.ch, align 2, !tbaa !17
  %i.cj = zext i16 %i.ci to i32
  br label %_ZN10duckdb_lz4L18LZ4_getIndexOnHashEjPKvNS_11tableType_tE.exit.i

_ZN10duckdb_lz4L18LZ4_getIndexOnHashEjPKvNS_11tableType_tE.exit.i: ; preds = %bb.s, %bb.r
  %.0.i520.i = phi i32 [ %i.cg, %bb.r ], [ %i.cj, %bb.s ] ; 9 uses
  %i.ck = sext i32 %.0459.i to i64
  %i.cl = getelementptr inbounds i8, ptr %.0460.i, i64 %i.ck ; 4 uses
  %i.cm = add nsw i32 %.0458.i, 1
  %i.cn = ashr i32 %.0458.i, 6
  %i.co = icmp ugt ptr %i.cl, %i.ah
  br i1 %i.co, label %_ZN10duckdb_lz4L16LZ4_hashPositionEPKvNS_11tableType_tE.exit612.thread.i, label %bb.t, !prof !19

bb.t:                                             ; preds = %_ZN10duckdb_lz4L18LZ4_getIndexOnHashEjPKvNS_11tableType_tE.exit.i
  br i1 %i.m, label %bb.u, label %bb.x

bb.u:                                             ; preds = %bb.t
  %i.cp = icmp ult i32 %.0.i520.i, %i.g
  br i1 %i.cp, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.cq = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %i.ce
  %i.cr = load i32, ptr %i.cq, align 4, !tbaa !3  ; 2 uses
  %i.cs = zext i32 %i.cr to i64
  %i.ct = getelementptr inbounds nuw i8, ptr %i.ae, i64 %i.cs
  %i.cu = add i32 %i.cr, %i.ad
  br label %bb.ac

bb.w:                                             ; preds = %bb.u
  %i.cv = zext i32 %.0.i520.i to i64
  %i.cw = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.cv
  br label %bb.ac

bb.x:                                             ; preds = %bb.t
  br i1 %i.ac, label %bb.y, label %bb.ab

bb.y:                                             ; preds = %bb.x
  %i.cx = icmp ult i32 %.0.i520.i, %i.g
  %i.cy = zext i32 %.0.i520.i to i64              ; 2 uses
  br i1 %i.cx, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.cz = getelementptr inbounds nuw i8, ptr %i.ae, i64 %i.cy
  br label %bb.ac

bb.aa:                                            ; preds = %bb.y
  %i.da = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.cy
  br label %bb.ac

bb.ab:                                            ; preds = %bb.x
  %i.db = zext i32 %.0.i520.i to i64
  %i.dc = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.db
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa, %bb.z, %bb.w, %bb.v
  %.4465.i = phi ptr [ %i.ct, %bb.v ], [ %i.cw, %bb.w ], [ %i.cz, %bb.z ], [ %i.da, %bb.aa ], [ %i.dc, %bb.ab ] ; 4 uses
  %.0441.i = phi i32 [ %i.cu, %bb.v ], [ %.0.i520.i, %bb.w ], [ %.0.i520.i, %bb.z ], [ %.0.i520.i, %bb.aa ], [ %.0.i520.i, %bb.ab ] ; 3 uses
  %.2402.i = phi ptr [ %i.n, %bb.v ], [ %1, %bb.w ], [ %i.n, %bb.z ], [ %1, %bb.aa ], [ %.1401.i, %bb.ab ] ; 4 uses
  br i1 %i.an, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %.val.i523.i = load i64, ptr %i.cl, align 1, !tbaa !7
  %i.dd = mul i64 %.val.i523.i, -3523014627271114752
  %i.de = lshr i64 %i.dd, 52
  %i.df = trunc nuw nsw i64 %i.de to i32
  %i.dg = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.ce
  store i32 %i.cd, ptr %i.dg, align 4, !tbaa !3
  br label %_ZN10duckdb_lz4L18LZ4_putIndexOnHashEjjPvNS_11tableType_tE.exit.i

bb.ae:                                            ; preds = %bb.ac
  %.val6.i525.i = load i32, ptr %i.cl, align 1, !tbaa !7
  %i.dh = mul i32 %.val6.i525.i, -1640531535
  %i.di = lshr i32 %i.dh, 19
  %i.dj = trunc i64 %i.cc to i16
  %i.dk = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.ce
  store i16 %i.dj, ptr %i.dk, align 2, !tbaa !17
  br label %_ZN10duckdb_lz4L18LZ4_putIndexOnHashEjjPvNS_11tableType_tE.exit.i

_ZN10duckdb_lz4L18LZ4_putIndexOnHashEjjPvNS_11tableType_tE.exit.i: ; preds = %bb.ae, %bb.ad
  %.0.i524621.i = phi i32 [ %i.df, %bb.ad ], [ %i.di, %bb.ae ]
  %i.dl = icmp ult i32 %.0441.i, %i.af
  %or.cond512.i = select i1 %.not502.i, i1 %i.dl, i1 false
  br i1 %or.cond512.i, label %.backedge, label %bb.af

bb.af:                                            ; preds = %_ZN10duckdb_lz4L18LZ4_putIndexOnHashEjjPvNS_11tableType_tE.exit.i
  %i.dm = add i32 %.0441.i, 65535
  %i.dn = icmp ult i32 %i.dm, %i.cd
  %or.cond514.i = select i1 %.not503.i, i1 %i.dn, i1 false
  br i1 %or.cond514.i, label %.backedge, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %.4465.val.i = load i32, ptr %.4465.i, align 1, !tbaa !7
  %.0460.val.i = load i32, ptr %.0460.i, align 1, !tbaa !7
  %i.do = icmp eq i32 %.4465.val.i, %.0460.val.i
  br i1 %i.do, label %bb.ah, label %.backedge

.backedge:                                        ; preds = %bb.ag, %bb.af, %_ZN10duckdb_lz4L18LZ4_putIndexOnHashEjjPvNS_11tableType_tE.exit.i
  br label %bb.q, !llvm.loop !20

bb.ah:                                            ; preds = %bb.ag
  %i.dp = sub i32 %i.cd, %.0441.i
  %spec.select.i = select i1 %.not616.i, i32 %.0431.i, i32 %i.dp
  %i.dq = trunc i64 %.0410844.i to i32
  %i.dr = trunc i64 %i.cb to i32
  %reass.sub.i = sub i32 %i.dr, %i.dq             ; 3 uses
  %i.ds = add i32 %reass.sub.i, 239               ; 3 uses
  %i.dt = add i32 %reass.sub.i, -15               ; 2 uses
  %i.du = add i32 %reass.sub.i, -270              ; 2 uses
  %i.dv = icmp ugt ptr %.0460.i, %.0410.i
  %i.dw = icmp ugt ptr %.4465.i, %.2402.i
  %i.dx = and i1 %i.dw, %i.dv
  br i1 %i.dx, label %.lr.ph, label %.critedge10.i

bb.ai:                                            ; preds = %.lr.ph
  %indvar.next.i = add i32 %indvar.i276, 1        ; 2 uses
  %indvars.iv.next.i = add i32 %indvars.iv.i275, -1 ; 2 uses
  %indvars.iv.next848.i = add i32 %indvars.iv847.i274, -1 ; 2 uses
  %indvars.iv.next852.i = add i32 %indvars.iv851.i273, -1 ; 2 uses
  %i.dy = icmp ugt ptr %i.eb, %.0410.i
  %i.dz = icmp ugt ptr %i.ed, %.2402.i
  %i.ea = and i1 %i.dz, %i.dy
  br i1 %i.ea, label %.lr.ph, label %.critedge10.i, !llvm.loop !22

.lr.ph:                                           ; preds = %bb.ah, %bb.ai
  %.2394.i278 = phi ptr [ %i.eb, %bb.ai ], [ %.0460.i, %bb.ah ] ; 2 uses
  %.7468.i277 = phi ptr [ %i.ed, %bb.ai ], [ %.4465.i, %bb.ah ] ; 2 uses
  %indvar.i276 = phi i32 [ %indvar.next.i, %bb.ai ], [ 0, %bb.ah ] ; 2 uses
  %indvars.iv.i275 = phi i32 [ %indvars.iv.next.i, %bb.ai ], [ %i.ds, %bb.ah ] ; 2 uses
  %indvars.iv847.i274 = phi i32 [ %indvars.iv.next848.i, %bb.ai ], [ %i.dt, %bb.ah ] ; 2 uses
  %indvars.iv851.i273 = phi i32 [ %indvars.iv.next852.i, %bb.ai ], [ %i.du, %bb.ah ] ; 2 uses
  %i.eb = getelementptr inbounds i8, ptr %.2394.i278, i64 -1 ; 4 uses
  %i.ec = load i8, ptr %i.eb, align 1, !tbaa !7
  %i.ed = getelementptr inbounds i8, ptr %.7468.i277, i64 -1 ; 4 uses
  %i.ee = load i8, ptr %i.ed, align 1, !tbaa !7
  %i.ef = icmp eq i8 %i.ec, %i.ee
  br i1 %i.ef, label %bb.ai, label %..critedge10.i_crit_edge, !llvm.loop !22

..critedge10.i_crit_edge:                         ; preds = %.lr.ph
  br label %.critedge10.i, !llvm.loop !22

.critedge10.i:                                    ; preds = %bb.ai, %..critedge10.i_crit_edge, %bb.ah
  %indvars.iv851.i.lcssa = phi i32 [ %indvars.iv851.i273, %..critedge10.i_crit_edge ], [ %i.du, %bb.ah ], [ %indvars.iv.next852.i, %bb.ai ]
  %indvars.iv847.i.lcssa = phi i32 [ %indvars.iv847.i274, %..critedge10.i_crit_edge ], [ %i.dt, %bb.ah ], [ %indvars.iv.next848.i, %bb.ai ]
  %indvars.iv.i.lcssa = phi i32 [ %indvars.iv.i275, %..critedge10.i_crit_edge ], [ %i.ds, %bb.ah ], [ %indvars.iv.next.i, %bb.ai ]
  %indvar.i.lcssa = phi i32 [ %indvar.i276, %..critedge10.i_crit_edge ], [ 0, %bb.ah ], [ %indvar.next.i, %bb.ai ]
  %.7468.i.lcssa = phi ptr [ %.7468.i277, %..critedge10.i_crit_edge ], [ %.4465.i, %bb.ah ], [ %i.ed, %bb.ai ]
  %.2394.i.lcssa = phi ptr [ %.2394.i278, %..critedge10.i_crit_edge ], [ %.0460.i, %bb.ah ], [ %i.eb, %bb.ai ] ; 2 uses
  %i.eg = ptrtoint ptr %.2394.i.lcssa to i64
  %i.eh = sub i64 %i.eg, %.0410844.i              ; 5 uses
  %i.ei = trunc i64 %i.eh to i32                  ; 4 uses
  %i.ej = getelementptr i8, ptr %.0414.i, i64 1   ; 5 uses
  br i1 %i.bu, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %.critedge10.i
  %i.ek = and i64 %i.eh, 4294967295
  %i.el = getelementptr inbounds nuw i8, ptr %i.ej, i64 %i.ek
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 8
  %i.en = udiv i32 %i.ei, 255
  %i.eo = zext nneg i32 %i.en to i64
end_hunk_0
begin_hunk_1_@_ZN10duckdb_lz4L22LZ4_decompress_genericEPKcPciiNS_18earlyEnd_directiveENS_14dict_directiveEPKhS6_m:bb.a
  %i.eg = getelementptr inbounds nuw i8, ptr %.0400647, i64 1
  %i.eh = load i8, ptr %.0400647, align 1, !tbaa !7
  %i.ei = getelementptr inbounds nuw i8, ptr %.3648, i64 1 ; 3 uses
  store i8 %i.eh, ptr %.3648, align 1, !tbaa !7
  %i.ej = icmp ult ptr %i.ei, %i.dt
  br i1 %i.ej, label %.lr.ph, label %.backedge, !llvm.loop !47

bb.af:                                            ; preds = %bb.ae
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.dp, ptr nonnull align 1 %6, i64 %i.dm, i1 false)
  %i.ek = getelementptr inbounds nuw i8, ptr %.2, i64 %.3383
  br label %.backedge

bb.ag:                                            ; preds = %bb.y
  %i.el = icmp ult i16 %.val484, 16
  br i1 %i.el, label %bb.ah, label %.preheader600, !prof !19

bb.ah:                                            ; preds = %bb.ag
  tail call fastcc void @_ZN10duckdb_lz4L23LZ4_memcpy_using_offsetEPhPKhS0_m(ptr noundef %.2, ptr noundef %i.bu, ptr noundef %i.dc, i64 noundef %i.br)
  br label %.backedge

.preheader600:                                    ; preds = %bb.ag, %.preheader600
  %.011.i495 = phi ptr [ %i.ep, %.preheader600 ], [ %i.bu, %bb.ag ] ; 3 uses
  %.0.i496 = phi ptr [ %i.eo, %.preheader600 ], [ %.2, %bb.ag ] ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %.0.i496, ptr noundef nonnull align 1 dereferenceable(16) %.011.i495, i64 16, i1 false)
  %i.em = getelementptr inbounds nuw i8, ptr %.0.i496, i64 16
  %i.en = getelementptr inbounds nuw i8, ptr %.011.i495, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.em, ptr noundef nonnull align 1 dereferenceable(16) %i.en, i64 16, i1 false)
  %i.eo = getelementptr inbounds nuw i8, ptr %.0.i496, i64 32 ; 2 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %.011.i495, i64 32
  %i.eq = icmp ult ptr %i.eo, %i.dc
  br i1 %i.eq, label %.preheader600, label %.backedge, !llvm.loop !40

.lr.ph651.split:                                  ; preds = %.lr.ph651, %bb.aj
  %i.er = phi i64 [ %i.fu, %bb.aj ], [ %i.lw, %.lr.ph651 ] ; 3 uses
  %i.es = phi i32 [ %i.fs, %bb.aj ], [ %i.lu, %.lr.ph651 ] ; 2 uses
  %i.et = phi ptr [ %i.fq, %bb.aj ], [ %i.ls, %.lr.ph651 ] ; 4 uses
  %.6650 = phi ptr [ %i.fp, %bb.aj ], [ %.6.ph, %.lr.ph651 ] ; 4 uses
  %i.eu = icmp ult ptr %i.et, %i.l
  %i.ev = icmp ule ptr %.6650, %i.m
  %i.ew = and i1 %i.eu, %i.ev
  br i1 %i.ew, label %bb.ai, label %.loopexit597, !prof !27

bb.ai:                                            ; preds = %.lr.ph651.split
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %.6650, ptr noundef nonnull align 1 dereferenceable(16) %i.et, i64 16, i1 false)
  %i.ex = getelementptr inbounds nuw i8, ptr %.6650, i64 %i.er ; 6 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %i.et, i64 %i.er ; 3 uses
  %i.ez = and i32 %i.es, 15                       ; 2 uses
  %i.fa = zext nneg i32 %i.ez to i64              ; 2 uses
  %.val483 = load i16, ptr %i.ey, align 1, !tbaa !7 ; 2 uses
  %i.fb = zext i16 %.val483 to i64                ; 2 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %i.ey, i64 2 ; 2 uses
  %i.fd = sub nsw i64 0, %i.fb
  %i.fe = getelementptr inbounds i8, ptr %i.ex, i64 %i.fd ; 5 uses
  %i.ff = icmp eq i32 %i.ez, 15
  %i.fg = icmp ult i16 %.val483, 8
  %or.cond3.not682 = or i1 %i.ff, %i.fg
  %.not449 = icmp ult ptr %i.fe, %6
  %or.cond678 = select i1 %or.cond3.not682, i1 true, i1 %.not449
  br i1 %or.cond678, label %.loopexit598, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.fh = load i64, ptr %i.fe, align 1
  store i64 %i.fh, ptr %i.ex, align 1
  %i.fi = getelementptr inbounds nuw i8, ptr %i.ex, i64 8
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fe, i64 8
  %i.fk = load i64, ptr %i.fj, align 1
  store i64 %i.fk, ptr %i.fi, align 1
  %i.fl = getelementptr inbounds nuw i8, ptr %i.ex, i64 16
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fe, i64 16
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
  %.6.lcssa = phi ptr [ %.6.ph, %.preheader596 ], [ %i.mv, %bb.bi ], [ %i.fp, %bb.aj ] ; 2 uses
  %.lcssa616 = phi ptr [ %i.ls, %.preheader596 ], [ %i.mw, %bb.bi ], [ %i.fq, %bb.aj ] ; 6 uses
  %.lcssa613 = phi i32 [ %i.lu, %.preheader596 ], [ %i.my, %bb.bi ], [ %i.fs, %bb.aj ]
  %i.fv = getelementptr inbounds i8, ptr %i.e, i64 -15 ; 2 uses
  %.not12.i499 = icmp ult ptr %.lcssa616, %i.fv
  br i1 %.not12.i499, label %.lr.ph1003, label %_ZN10duckdb_lz4L14LZ4_wildCopy32EPvPKvS0_.exit.thread, !prof !36

.lr.ph1003:                                       ; preds = %._crit_edge
  %i.fw = ptrtoint ptr %i.fv to i64
  %.promoted13.i501 = ptrtoint ptr %.lcssa616 to i64
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
  %i.go = phi i32 [ %.lcssa613, %bb.am ], [ %i.ly, %.lr.ph651.split.us ], [ %i.es, %.lr.ph651.split ]
  %.5543 = phi ptr [ %i.ga, %bb.am ], [ %i.lz, %.lr.ph651.split.us ], [ %i.et, %.lr.ph651.split ]
  %.5385 = phi i64 [ %i.gh, %bb.am ], [ %i.lx, %.lr.ph651.split.us ], [ %i.er, %.lr.ph651.split ] ; 2 uses
  %i.gp = getelementptr inbounds nuw i8, ptr %.6621, i64 %.5385
  br label %_ZN10duckdb_lz4L14LZ4_wildCopy32EPvPKvS0_.exit

_ZN10duckdb_lz4L14LZ4_wildCopy32EPvPKvS0_.exit:   ; preds = %bb.m, %bb.n, %.loopexit597
  %.6544 = phi ptr [ %.5543, %.loopexit597 ], [ %i.ar, %bb.m ], [ %i.ai, %bb.n ] ; 11 uses
  %.6386 = phi i64 [ %.5385, %.loopexit597 ], [ %i.ay, %bb.m ], [ %i.am, %bb.n ] ; 4 uses
  %.0379 = phi i32 [ %i.go, %.loopexit597 ], [ %i.ak, %bb.n ], [ %i.ak, %bb.m ]
  %.3367 = phi ptr [ %i.gp, %.loopexit597 ], [ %i.bf, %bb.m ], [ %i.bo, %bb.n ] ; 7 uses
  %.7 = phi ptr [ %.6621, %.loopexit597 ], [ %.0362, %bb.n ], [ %.0362, %bb.m ] ; 11 uses
  %.33671029 = ptrtoint ptr %.3367 to i64
  %.71030 = ptrtoint ptr %.7 to i64               ; 2 uses
  %.71026 = ptrtoaddr ptr %.7 to i64
  %.65441027 = ptrtoaddr ptr %.6544 to i64
  %i.gq = getelementptr inbounds i8, ptr %i.g, i64 -12
  %i.gr = icmp ugt ptr %.3367, %i.gq
  br i1 %i.gr, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %_ZN10duckdb_lz4L14LZ4_wildCopy32EPvPKvS0_.exit
  %i.gs = getelementptr inbounds nuw i8, ptr %.6544, i64 %.6386 ; 3 uses
  %i.gt = getelementptr inbounds i8, ptr %i.e, i64 -8
  %i.gu = icmp ugt ptr %i.gs, %i.gt
  br i1 %i.gu, label %bb.ao, label %.preheader595.preheader

.preheader595.preheader:                          ; preds = %bb.an
  %i.gv = add i64 %.71030, 8
  %umax1031 = tail call i64 @llvm.umax.i64(i64 %.33671029, i64 %i.gv)
  %i.gw = xor i64 %.71030, -1
  %i.gx = add i64 %umax1031, %i.gw                ; 2 uses
  %i.gy = lshr i64 %i.gx, 3
  %i.gz = add nuw nsw i64 %i.gy, 1                ; 2 uses
  %min.iters.check1032 = icmp ult i64 %i.gx, 56
  %i.ha = sub i64 %.71026, %.65441027
  %diff.check1028 = icmp ult i64 %i.ha, 32
  %or.cond1206 = select i1 %min.iters.check1032, i1 true, i1 %diff.check1028
  br i1 %or.cond1206, label %.preheader595.preheader1216, label %vector.ph1033

vector.ph1033:                                    ; preds = %.preheader595.preheader
  %n.vec1035 = and i64 %i.gz, 4611686018427387900 ; 3 uses
  %i.hb = shl i64 %n.vec1035, 3                   ; 2 uses
  %i.hc = getelementptr i8, ptr %.6544, i64 %i.hb
  %i.hd = getelementptr i8, ptr %.7, i64 %i.hb
  br label %vector.body1036

vector.body1036:                                  ; preds = %vector.body1036, %vector.ph1033
  %index1037 = phi i64 [ 0, %vector.ph1033 ], [ %index.next1042, %vector.body1036 ] ; 2 uses
  %i.he = shl i64 %index1037, 3                   ; 2 uses
  %next.gep1038 = getelementptr i8, ptr %.6544, i64 %i.he ; 2 uses
  %next.gep1039 = getelementptr i8, ptr %.7, i64 %i.he ; 2 uses
  %i.hf = getelementptr i8, ptr %next.gep1038, i64 16
  %wide.load1040 = load <2 x i64>, ptr %next.gep1038, align 1
  %wide.load1041 = load <2 x i64>, ptr %i.hf, align 1
  %i.hg = getelementptr i8, ptr %next.gep1039, i64 16
  store <2 x i64> %wide.load1040, ptr %next.gep1039, align 1
  store <2 x i64> %wide.load1041, ptr %i.hg, align 1
  %index.next1042 = add nuw i64 %index1037, 4     ; 2 uses
  %i.hh = icmp eq i64 %index.next1042, %n.vec1035
  br i1 %i.hh, label %middle.block1043, label %vector.body1036, !llvm.loop !49

middle.block1043:                                 ; preds = %vector.body1036
  %cmp.n1044 = icmp eq i64 %i.gz, %n.vec1035
  br i1 %cmp.n1044, label %_ZN10duckdb_lz4L13LZ4_wildCopy8EPvPKvS0_.exit, label %.preheader595.preheader1216

.preheader595.preheader1216:                      ; preds = %.preheader595.preheader, %middle.block1043
  %.09.i.ph = phi ptr [ %.6544, %.preheader595.preheader ], [ %i.hc, %middle.block1043 ]
  %.0.i506.ph = phi ptr [ %.7, %.preheader595.preheader ], [ %i.hd, %middle.block1043 ]
  br label %.preheader595

bb.ao:                                            ; preds = %bb.an, %_ZN10duckdb_lz4L14LZ4_wildCopy32EPvPKvS0_.exit
  %.not446 = trunc nuw i32 %4 to i1
  %i.hi = getelementptr inbounds nuw i8, ptr %.6544, i64 %.6386 ; 2 uses
  br i1 %.not446, label %bb.ap, label %bb.ar

bb.ap:                                            ; preds = %bb.ao
  %i.hj = icmp ugt ptr %i.hi, %i.e                ; 2 uses
  %i.hk = ptrtoint ptr %i.e to i64
  %i.hl = ptrtoint ptr %.6544 to i64
  %i.hm = sub i64 %i.hk, %i.hl                    ; 2 uses
  %i.hn = getelementptr inbounds nuw i8, ptr %.7, i64 %i.hm
  %.4368 = select i1 %i.hj, ptr %i.hn, ptr %.3367 ; 2 uses
  %i.ho = icmp ugt ptr %.4368, %i.g
  br i1 %i.ho, label %bb.aq, label %bb.as

bb.aq:                                            ; preds = %bb.ap
  %i.hp = ptrtoint ptr %.7 to i64
  %i.hq = sub i64 %i.t, %i.hp
  br label %.thread

bb.ar:                                            ; preds = %bb.ao
  %.not447 = icmp ne ptr %i.hi, %i.e
  %i.hr = icmp ugt ptr %.3367, %i.g
  %or.cond467 = select i1 %.not447, i1 true, i1 %i.hr
  br i1 %or.cond467, label %_ZN10duckdb_lz4L14LZ4_wildCopy32EPvPKvS0_.exit.thread, label %.thread

.thread:                                          ; preds = %bb.ar, %bb.aq
  %.8388.ph = phi i64 [ %.6386, %bb.ar ], [ %i.hq, %bb.aq ] ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %.7, ptr nonnull align 1 %.6544, i64 %.8388.ph, i1 false)
  %i.hs = getelementptr inbounds nuw i8, ptr %.7, i64 %.8388.ph
  br label %._crit_edge765

bb.as:                                            ; preds = %bb.ap
  %.7387 = select i1 %i.hj, i64 %i.hm, i64 %.6386 ; 3 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %.7, ptr nonnull align 1 %.6544, i64 %.7387, i1 false)
  %i.ht = getelementptr inbounds nuw i8, ptr %.6544, i64 %.7387 ; 2 uses
  %i.hu = getelementptr inbounds nuw i8, ptr %.7, i64 %.7387 ; 2 uses
  %i.hv = icmp ne ptr %.4368, %i.g
  %i.hw = getelementptr inbounds i8, ptr %i.e, i64 -2
  %.not448 = icmp ult ptr %i.ht, %i.hw
  %or.cond469 = select i1 %i.hv, i1 %.not448, i1 false
  br i1 %or.cond469, label %_ZN10duckdb_lz4L13LZ4_wildCopy8EPvPKvS0_.exit, label %._crit_edge765

._crit_edge765:                                   ; preds = %.thread, %bb.as
  %i.hx = phi ptr [ %i.hs, %.thread ], [ %i.hu, %bb.as ]
  %.pre = ptrtoint ptr %i.hx to i64
  br label %bb.bs

.preheader595:                                    ; preds = %.preheader595.preheader1216, %.preheader595
  %.09.i = phi ptr [ %i.ia, %.preheader595 ], [ %.09.i.ph, %.preheader595.preheader1216 ] ; 2 uses
  %.0.i506 = phi ptr [ %i.hz, %.preheader595 ], [ %.0.i506.ph, %.preheader595.preheader1216 ] ; 2 uses
  %i.hy = load i64, ptr %.09.i, align 1
  store i64 %i.hy, ptr %.0.i506, align 1
  %i.hz = getelementptr inbounds nuw i8, ptr %.0.i506, i64 8 ; 2 uses
  %i.ia = getelementptr inbounds nuw i8, ptr %.09.i, i64 8
  %i.ib = icmp ult ptr %i.hz, %.3367
  br i1 %i.ib, label %.preheader595, label %_ZN10duckdb_lz4L13LZ4_wildCopy8EPvPKvS0_.exit, !llvm.loop !50

_ZN10duckdb_lz4L13LZ4_wildCopy8EPvPKvS0_.exit:    ; preds = %.preheader595, %middle.block1043, %bb.as
  %.7545 = phi ptr [ %i.ht, %bb.as ], [ %i.gs, %middle.block1043 ], [ %i.gs, %.preheader595 ] ; 2 uses
  %.8 = phi ptr [ %i.hu, %bb.as ], [ %.3367, %middle.block1043 ], [ %.3367, %.preheader595 ] ; 2 uses
  %.val = load i16, ptr %.7545, align 1, !tbaa !7
  %i.ic = zext i16 %.val to i64                   ; 2 uses
  %i.id = getelementptr inbounds nuw i8, ptr %.7545, i64 2
  %i.ie = sub nsw i64 0, %i.ic
  %i.if = getelementptr inbounds i8, ptr %.8, i64 %i.ie
  %i.ig = and i32 %.0379, 15
  %i.ih = zext nneg i32 %i.ig to i64
  br label %.loopexit598

.loopexit598:                                     ; preds = %bb.ai, %bb.bh, %_ZN10duckdb_lz4L13LZ4_wildCopy8EPvPKvS0_.exit
  %.8546 = phi ptr [ %i.id, %_ZN10duckdb_lz4L13LZ4_wildCopy8EPvPKvS0_.exit ], [ %i.mi, %bb.bh ], [ %i.fc, %bb.ai ] ; 6 uses
  %.9389 = phi i64 [ %i.ih, %_ZN10duckdb_lz4L13LZ4_wildCopy8EPvPKvS0_.exit ], [ %i.mg, %bb.bh ], [ %i.fa, %bb.ai ] ; 2 uses
  %.0377 = phi i64 [ %i.ic, %_ZN10duckdb_lz4L13LZ4_wildCopy8EPvPKvS0_.exit ], [ %i.mh, %bb.bh ], [ %i.fb, %bb.ai ]
  %.0370 = phi ptr [ %i.if, %_ZN10duckdb_lz4L13LZ4_wildCopy8EPvPKvS0_.exit ], [ %i.mk, %bb.bh ], [ %i.fe, %bb.ai ]
  %.9 = phi ptr [ %.8, %_ZN10duckdb_lz4L13LZ4_wildCopy8EPvPKvS0_.exit ], [ %i.md, %bb.bh ], [ %i.ex, %bb.ai ] ; 2 uses
  %i.ii = icmp eq i64 %.9389, 15
  br i1 %i.ii, label %bb.at, label %bb.av

bb.at:                                            ; preds = %.loopexit598
  %i.ij = getelementptr inbounds i8, ptr %i.e, i64 -4 ; 2 uses
  %i.ik = ptrtoint ptr %i.ij to i64
  %.promoted13.i510 = ptrtoint ptr %.8546 to i64
  %i.il = tail call i64 @llvm.usub.sat.i64(i64 %i.ik, i64 %.promoted13.i510)
  %scevgep.i511 = getelementptr i8, ptr %.8546, i64 %i.il
  %i.im = getelementptr inbounds nuw i8, ptr %.8546, i64 1 ; 2 uses
  %exitcond.i5131005.not = icmp ugt ptr %i.ij, %.8546
  br i1 %exitcond.i5131005.not, label %.lr.ph1008, label %_ZN10duckdb_lz4L14LZ4_wildCopy32EPvPKvS0_.exit.thread, !prof !28

bb.au:                                            ; preds = %.lr.ph1008
  %i.in = getelementptr inbounds nuw i8, ptr %i.io, i64 1 ; 2 uses
  %exitcond.i513 = icmp eq ptr %i.io, %scevgep.i511
  br i1 %exitcond.i513, label %_ZN10duckdb_lz4L14LZ4_wildCopy32EPvPKvS0_.exit.thread, label %.lr.ph1008, !prof !37, !llvm.loop !38

.lr.ph1008:                                       ; preds = %bb.at, %bb.au
  %i.io = phi ptr [ %i.in, %bb.au ], [ %i.im, %bb.at ] ; 5 uses
  %.0.i5121006 = phi i64 [ %i.is, %bb.au ], [ 0, %bb.at ]
  %i.ip = phi ptr [ %i.io, %bb.au ], [ %.8546, %bb.at ]
  %i.iq = load i8, ptr %i.ip, align 1, !tbaa !7   ; 2 uses
  %i.ir = zext i8 %i.iq to i64
  %i.is = add i64 %.0.i5121006, %i.ir             ; 3 uses
  %i.it = icmp eq i8 %i.iq, -1
  br i1 %i.it, label %bb.au, label %_ZN10duckdb_lz4L20read_variable_lengthEPPKhS1_i.exit514, !llvm.loop !38

_ZN10duckdb_lz4L20read_variable_lengthEPPKhS1_i.exit514: ; preds = %.lr.ph1008
  %i.iu = icmp ne i64 %i.is, -1                   ; 2 uses
  %i.iv = add i64 %i.is, 15                       ; 2 uses
  %i.iw = ptrtoint ptr %.9 to i64
  %i.ix = xor i64 %i.iw, -1
  %i.iy = icmp ule i64 %i.iv, %i.ix
  %.not591 = select i1 %i.iu, i1 %i.iy, i1 false
  %.10390 = select i1 %i.iu, i64 %i.iv, i64 15
  br i1 %.not591, label %bb.av, label %_ZN10duckdb_lz4L14LZ4_wildCopy32EPvPKvS0_.exit.thread

bb.av:                                            ; preds = %_ZN10duckdb_lz4L20read_variable_lengthEPPKhS1_i.exit514, %.loopexit598
  %.9547 = phi ptr [ %i.io, %_ZN10duckdb_lz4L20read_variable_lengthEPPKhS1_i.exit514 ], [ %.8546, %.loopexit598 ]
  %.11391 = phi i64 [ %.10390, %_ZN10duckdb_lz4L20read_variable_lengthEPPKhS1_i.exit514 ], [ %.9389, %.loopexit598 ]
  %i.iz = add i64 %.11391, 4
  br label %.loopexit606

.loopexit606:                                     ; preds = %bb.s, %bb.t, %bb.av
  %.10548 = phi ptr [ %.9547, %bb.av ], [ %i.ca, %bb.s ], [ %i.bs, %bb.t ] ; 6 uses
  %.12392 = phi i64 [ %i.iz, %bb.av ], [ %i.ch, %bb.s ], [ %i.co, %bb.t ] ; 7 uses
  %.1378 = phi i64 [ %.0377, %bb.av ], [ %i.br, %bb.t ], [ %i.br, %bb.s ] ; 3 uses
  %.1371 = phi ptr [ %.0370, %bb.av ], [ %i.bu, %bb.t ], [ %i.bu, %bb.s ] ; 18 uses
  %.10 = phi ptr [ %.9, %bb.av ], [ %.2, %bb.t ], [ %.2, %bb.s ] ; 28 uses
  %.13711127 = ptrtoaddr ptr %.1371 to i64        ; 2 uses
  %.101050 = ptrtoint ptr %.10 to i64             ; 17 uses
  %.101047 = ptrtoaddr ptr %.10 to i64
  %i.ja = getelementptr inbounds nuw i8, ptr %.1371, i64 %8
  %i.jb = icmp ult ptr %i.ja, %6
  %or.cond472 = select i1 %i.k, i1 %i.jb, i1 false, !prof !41
  br i1 %or.cond472, label %_ZN10duckdb_lz4L14LZ4_wildCopy32EPvPKvS0_.exit.thread, label %bb.aw, !prof !41

bb.aw:                                            ; preds = %.loopexit606
  %i.jc = icmp eq i32 %5, 2
  %i.jd = icmp ult ptr %.1371, %6
  %or.cond473 = select i1 %i.jc, i1 %i.jd, i1 false
  %i.je = getelementptr inbounds nuw i8, ptr %.10, i64 %.12392 ; 7 uses
  br i1 %or.cond473, label %bb.ax, label %bb.be

bb.ax:                                            ; preds = %bb.aw
  %i.jf = getelementptr inbounds i8, ptr %i.g, i64 -5
  %i.jg = icmp ugt ptr %i.je, %i.jf
  br i1 %i.jg, label %bb.ay, label %bb.ba, !prof !19

bb.ay:                                            ; preds = %bb.ax
  %.not451 = icmp eq i32 %4, 0
  br i1 %.not451, label %_ZN10duckdb_lz4L14LZ4_wildCopy32EPvPKvS0_.exit.thread, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.jh = ptrtoint ptr %.10 to i64
  %i.ji = sub i64 %i.t, %i.jh
  %i.jj = tail call i64 @llvm.umin.i64(i64 %.12392, i64 %i.ji)
  br label %bb.ba

bb.ba:                                            ; preds = %bb.az, %bb.ax
  %.13393 = phi i64 [ %i.jj, %bb.az ], [ %.12392, %bb.ax ] ; 7 uses
  %i.jk = ptrtoint ptr %6 to i64                  ; 4 uses
  %i.jl = ptrtoint ptr %.1371 to i64              ; 3 uses
  %i.jm = sub i64 %i.jk, %i.jl                    ; 6 uses
  %.not452 = icmp ugt i64 %.13393, %i.jm
  br i1 %.not452, label %bb.bc, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.jn = sub i64 0, %i.jm
  %i.jo = getelementptr inbounds i8, ptr %i.j, i64 %i.jn
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %.10, ptr align 1 %i.jo, i64 %.13393, i1 false)
  %i.jp = getelementptr inbounds nuw i8, ptr %.10, i64 %.13393
  br label %.loopexit

bb.bc:                                            ; preds = %bb.ba
  %i.jq = sub nuw i64 %.13393, %i.jm              ; 2 uses
  %i.jr = sub i64 0, %i.jm
  %i.js = getelementptr inbounds i8, ptr %i.j, i64 %i.jr
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.10, ptr align 1 %i.js, i64 %i.jm, i1 false)
  %i.jt = getelementptr inbounds nuw i8, ptr %.10, i64 %i.jm ; 7 uses
  %i.ju = ptrtoint ptr %i.jt to i64
  %i.jv = sub i64 %i.ju, %i.jk
  %i.jw = icmp ugt i64 %i.jq, %i.jv
  br i1 %i.jw, label %iter.check1188, label %bb.bd

iter.check1188:                                   ; preds = %bb.bc
  %i.jx = getelementptr inbounds nuw i8, ptr %.10, i64 %.13393
  %i.jy = add i64 %.101050, %i.jk
  %i.jz = add i64 %i.jy, 1
  %i.ka = sub i64 %i.jz, %i.jl
  %i.kb = add i64 %.13393, %.101050
  %umax1168 = tail call i64 @llvm.umax.i64(i64 %i.ka, i64 %i.kb)
  %i.kc = add i64 %umax1168, %i.jl
  %i.kd = add i64 %.101050, %i.jk
  %i.ke = sub i64 %i.kc, %i.kd                    ; 7 uses
  %min.iters.check1170 = icmp ult i64 %i.ke, 4
  %i.kf = sub i64 %.101050, %.13711127
  %diff.check1167 = icmp ult i64 %i.kf, 32
  %or.cond1207 = select i1 %min.iters.check1170, i1 true, i1 %diff.check1167
  br i1 %or.cond1207, label %.lr.ph676.preheader, label %vector.main.loop.iter.check1171

vector.main.loop.iter.check1171:                  ; preds = %iter.check1188
  %min.iters.check1172 = icmp ult i64 %i.ke, 32
  br i1 %min.iters.check1172, label %vec.epilog.ph1192, label %vector.ph1173

vector.ph1173:                                    ; preds = %vector.main.loop.iter.check1171
  %n.mod.vf1174 = and i64 %i.ke, 28
  %n.vec1175 = and i64 %i.ke, -32                 ; 5 uses
  %i.kg = getelementptr i8, ptr %i.jt, i64 %n.vec1175 ; 2 uses
  %i.kh = getelementptr i8, ptr %6, i64 %n.vec1175
  br label %vector.body1176

vector.body1176:                                  ; preds = %vector.body1176, %vector.ph1173
  %index1177 = phi i64 [ 0, %vector.ph1173 ], [ %index.next1182, %vector.body1176 ] ; 3 uses
  %next.gep1178 = getelementptr i8, ptr %i.jt, i64 %index1177 ; 2 uses
  %next.gep1179 = getelementptr i8, ptr %6, i64 %index1177 ; 2 uses
  %i.ki = getelementptr i8, ptr %next.gep1179, i64 16
  %wide.load1180 = load <16 x i8>, ptr %next.gep1179, align 1, !tbaa !7
  %wide.load1181 = load <16 x i8>, ptr %i.ki, align 1, !tbaa !7
  %i.kj = getelementptr i8, ptr %next.gep1178, i64 16
  store <16 x i8> %wide.load1180, ptr %next.gep1178, align 1, !tbaa !7
  store <16 x i8> %wide.load1181, ptr %i.kj, align 1, !tbaa !7
  %index.next1182 = add nuw i64 %index1177, 32    ; 2 uses
  %i.kk = icmp eq i64 %index.next1182, %n.vec1175
  br i1 %i.kk, label %middle.block1183, label %vector.body1176, !llvm.loop !51

middle.block1183:                                 ; preds = %vector.body1176
  %cmp.n1184 = icmp eq i64 %i.ke, %n.vec1175
  br i1 %cmp.n1184, label %.loopexit, label %vec.epilog.iter.check1190

vec.epilog.iter.check1190:                        ; preds = %middle.block1183
  %min.epilog.iters.check1191 = icmp eq i64 %n.mod.vf1174, 0
  br i1 %min.epilog.iters.check1191, label %.lr.ph676.preheader, label %vec.epilog.ph1192, !prof !45

vec.epilog.ph1192:                                ; preds = %vector.main.loop.iter.check1171, %vec.epilog.iter.check1190
  %vec.epilog.resume.val1185 = phi i64 [ %n.vec1175, %vec.epilog.iter.check1190 ], [ 0, %vector.main.loop.iter.check1171 ]
  %n.vec1194 = and i64 %i.ke, -4                  ; 4 uses
  %i.kl = getelementptr i8, ptr %i.jt, i64 %n.vec1194 ; 2 uses
  %i.km = getelementptr i8, ptr %6, i64 %n.vec1194
  br label %vec.epilog.vector.body1195

vec.epilog.vector.body1195:                       ; preds = %vec.epilog.vector.body1195, %vec.epilog.ph1192
  %index1196 = phi i64 [ %vec.epilog.resume.val1185, %vec.epilog.ph1192 ], [ %index.next1200, %vec.epilog.vector.body1195 ] ; 3 uses
  %next.gep1197 = getelementptr i8, ptr %i.jt, i64 %index1196
  %next.gep1198 = getelementptr i8, ptr %6, i64 %index1196
  %wide.load1199 = load <4 x i8>, ptr %next.gep1198, align 1, !tbaa !7
  store <4 x i8> %wide.load1199, ptr %next.gep1197, align 1, !tbaa !7
  %index.next1200 = add nuw i64 %index1196, 4     ; 2 uses
  %i.kn = icmp eq i64 %index.next1200, %n.vec1194
  br i1 %i.kn, label %vec.epilog.middle.block1201, label %vec.epilog.vector.body1195, !llvm.loop !52

vec.epilog.middle.block1201:                      ; preds = %vec.epilog.vector.body1195
  %cmp.n1202 = icmp eq i64 %i.ke, %n.vec1194
  br i1 %cmp.n1202, label %.loopexit, label %.lr.ph676.preheader

.lr.ph676.preheader:                              ; preds = %iter.check1188, %vec.epilog.iter.check1190, %vec.epilog.middle.block1201
  %.11674.ph = phi ptr [ %i.jt, %iter.check1188 ], [ %i.kg, %vec.epilog.iter.check1190 ], [ %i.kl, %vec.epilog.middle.block1201 ]
  %.0376673.ph = phi ptr [ %6, %iter.check1188 ], [ %i.kh, %vec.epilog.iter.check1190 ], [ %i.km, %vec.epilog.middle.block1201 ]
  br label %.lr.ph676

.lr.ph676:                                        ; preds = %.lr.ph676.preheader, %.lr.ph676
  %.11674 = phi ptr [ %i.kq, %.lr.ph676 ], [ %.11674.ph, %.lr.ph676.preheader ] ; 2 uses
  %.0376673 = phi ptr [ %i.ko, %.lr.ph676 ], [ %.0376673.ph, %.lr.ph676.preheader ] ; 2 uses
  %i.ko = getelementptr inbounds nuw i8, ptr %.0376673, i64 1
  %i.kp = load i8, ptr %.0376673, align 1, !tbaa !7
  %i.kq = getelementptr inbounds nuw i8, ptr %.11674, i64 1 ; 3 uses
  store i8 %i.kp, ptr %.11674, align 1, !tbaa !7
  %i.kr = icmp ult ptr %i.kq, %i.jx
  br i1 %i.kr, label %.lr.ph676, label %.loopexit, !llvm.loop !53

bb.bd:                                            ; preds = %bb.bc
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.jt, ptr nonnull align 1 %6, i64 %i.jq, i1 false)
  %i.ks = getelementptr inbounds nuw i8, ptr %.10, i64 %.13393
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph676, %middle.block1183, %vec.epilog.middle.block1201, %bb.bd, %bb.bb
  %.13 = phi ptr [ %i.jp, %bb.bb ], [ %i.ks, %bb.bd ], [ %i.kl, %vec.epilog.middle.block1201 ], [ %i.kg, %middle.block1183 ], [ %i.kq, %.lr.ph676 ]
  br label %.preheader596, !llvm.loop !48

bb.be:                                            ; preds = %bb.aw
  %.not450 = trunc nuw i32 %4 to i1
  %i.kt = getelementptr inbounds i8, ptr %i.g, i64 -12
  %i.ku = icmp ugt ptr %i.je, %i.kt               ; 2 uses
  %or.cond475 = select i1 %.not450, i1 %i.ku, i1 false
  br i1 %or.cond475, label %bb.bf, label %bb.bj

bb.bf:                                            ; preds = %bb.be
  %i.kv = ptrtoint ptr %.10 to i64
  %i.kw = sub i64 %i.t, %i.kv
  %i.kx = tail call i64 @llvm.umin.i64(i64 %.12392, i64 %i.kw) ; 5 uses
  %i.ky = getelementptr inbounds nuw i8, ptr %.1371, i64 %i.kx
  %i.kz = getelementptr inbounds nuw i8, ptr %.10, i64 %i.kx ; 3 uses
  %i.la = icmp ugt ptr %i.ky, %.10
  br i1 %i.la, label %.preheader, label %bb.bg

.preheader:                                       ; preds = %bb.bf
  %.not683 = icmp eq i64 %i.kx, 0
  br i1 %.not683, label %.loopexit592, label %iter.check1149

iter.check1149:                                   ; preds = %.preheader
  %i.lb = add i64 %i.kx, %.101050
  %i.lc = add i64 %.101050, 1
  %umax1129 = tail call i64 @llvm.umax.i64(i64 %i.lb, i64 %i.lc)
  %i.ld = sub i64 %umax1129, %.101050             ; 7 uses
  %min.iters.check1131 = icmp ult i64 %i.ld, 4
  %i.le = sub i64 %.101050, %.13711127
  %diff.check1128 = icmp ult i64 %i.le, 32
  %or.cond1208 = select i1 %min.iters.check1131, i1 true, i1 %diff.check1128
  br i1 %or.cond1208, label %.lr.ph672.preheader, label %vector.main.loop.iter.check1132

vector.main.loop.iter.check1132:                  ; preds = %iter.check1149
  %min.iters.check1133 = icmp ult i64 %i.ld, 32
  br i1 %min.iters.check1133, label %vec.epilog.ph1153, label %vector.ph1134

vector.ph1134:                                    ; preds = %vector.main.loop.iter.check1132
  %n.mod.vf1135 = and i64 %i.ld, 28
  %n.vec1136 = and i64 %i.ld, -32                 ; 5 uses
  %i.lf = getelementptr i8, ptr %.10, i64 %n.vec1136
  %i.lg = getelementptr i8, ptr %.1371, i64 %n.vec1136
  br label %vector.body1137

vector.body1137:                                  ; preds = %vector.body1137, %vector.ph1134
  %index1138 = phi i64 [ 0, %vector.ph1134 ], [ %index.next1143, %vector.body1137 ] ; 3 uses
  %next.gep1139 = getelementptr i8, ptr %.10, i64 %index1138 ; 2 uses
  %next.gep1140 = getelementptr i8, ptr %.1371, i64 %index1138 ; 2 uses
  %i.lh = getelementptr i8, ptr %next.gep1140, i64 16
  %wide.load1141 = load <16 x i8>, ptr %next.gep1140, align 1, !tbaa !7
  %wide.load1142 = load <16 x i8>, ptr %i.lh, align 1, !tbaa !7
  %i.li = getelementptr i8, ptr %next.gep1139, i64 16
  store <16 x i8> %wide.load1141, ptr %next.gep1139, align 1, !tbaa !7
  store <16 x i8> %wide.load1142, ptr %i.li, align 1, !tbaa !7
  %index.next1143 = add nuw i64 %index1138, 32    ; 2 uses
  %i.lj = icmp eq i64 %index.next1143, %n.vec1136
  br i1 %i.lj, label %middle.block1144, label %vector.body1137, !llvm.loop !54

middle.block1144:                                 ; preds = %vector.body1137
  %cmp.n1145 = icmp eq i64 %i.ld, %n.vec1136
  br i1 %cmp.n1145, label %.loopexit592, label %vec.epilog.iter.check1151

vec.epilog.iter.check1151:                        ; preds = %middle.block1144
  %min.epilog.iters.check1152 = icmp eq i64 %n.mod.vf1135, 0
  br i1 %min.epilog.iters.check1152, label %.lr.ph672.preheader, label %vec.epilog.ph1153, !prof !45

vec.epilog.ph1153:                                ; preds = %vector.main.loop.iter.check1132, %vec.epilog.iter.check1151
  %vec.epilog.resume.val1146 = phi i64 [ %n.vec1136, %vec.epilog.iter.check1151 ], [ 0, %vector.main.loop.iter.check1132 ]
  %n.vec1155 = and i64 %i.ld, -4                  ; 4 uses
  %i.lk = getelementptr i8, ptr %.10, i64 %n.vec1155
  %i.ll = getelementptr i8, ptr %.1371, i64 %n.vec1155
  br label %vec.epilog.vector.body1156

vec.epilog.vector.body1156:                       ; preds = %vec.epilog.vector.body1156, %vec.epilog.ph1153
  %index1157 = phi i64 [ %vec.epilog.resume.val1146, %vec.epilog.ph1153 ], [ %index.next1161, %vec.epilog.vector.body1156 ] ; 3 uses
  %next.gep1158 = getelementptr i8, ptr %.10, i64 %index1157
  %next.gep1159 = getelementptr i8, ptr %.1371, i64 %index1157
  %wide.load1160 = load <4 x i8>, ptr %next.gep1159, align 1, !tbaa !7
  store <4 x i8> %wide.load1160, ptr %next.gep1158, align 1, !tbaa !7
  %index.next1161 = add nuw i64 %index1157, 4     ; 2 uses
  %i.lm = icmp eq i64 %index.next1161, %n.vec1155
  br i1 %i.lm, label %vec.epilog.middle.block1162, label %vec.epilog.vector.body1156, !llvm.loop !55

vec.epilog.middle.block1162:                      ; preds = %vec.epilog.vector.body1156
  %cmp.n1163 = icmp eq i64 %i.ld, %n.vec1155
  br i1 %cmp.n1163, label %.loopexit592, label %.lr.ph672.preheader

.lr.ph672.preheader:                              ; preds = %iter.check1149, %vec.epilog.iter.check1151, %vec.epilog.middle.block1162
  %.14671.ph = phi ptr [ %.10, %iter.check1149 ], [ %i.lf, %vec.epilog.iter.check1151 ], [ %i.lk, %vec.epilog.middle.block1162 ]
  %.2372670.ph = phi ptr [ %.1371, %iter.check1149 ], [ %i.lg, %vec.epilog.iter.check1151 ], [ %i.ll, %vec.epilog.middle.block1162 ]
  br label %.lr.ph672

.lr.ph672:                                        ; preds = %.lr.ph672.preheader, %.lr.ph672
  %.14671 = phi ptr [ %i.lp, %.lr.ph672 ], [ %.14671.ph, %.lr.ph672.preheader ] ; 2 uses
  %.2372670 = phi ptr [ %i.ln, %.lr.ph672 ], [ %.2372670.ph, %.lr.ph672.preheader ] ; 2 uses
  %i.ln = getelementptr inbounds nuw i8, ptr %.2372670, i64 1
  %i.lo = load i8, ptr %.2372670, align 1, !tbaa !7
  %i.lp = getelementptr inbounds nuw i8, ptr %.14671, i64 1 ; 2 uses
  store i8 %i.lo, ptr %.14671, align 1, !tbaa !7
  %i.lq = icmp ult ptr %i.lp, %i.kz
  br i1 %i.lq, label %.lr.ph672, label %.loopexit592, !llvm.loop !56

bb.bg:                                            ; preds = %bb.bf
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.10, ptr align 1 %.1371, i64 %i.kx, i1 false)
  br label %.loopexit592

.loopexit592:                                     ; preds = %.lr.ph672, %middle.block1144, %vec.epilog.middle.block1162, %.preheader, %bb.bg
  %i.lr = icmp eq ptr %i.kz, %i.g
  br i1 %i.lr, label %bb.bs, label %.preheader596

.preheader596:                                    ; preds = %.loopexit, %_ZN10duckdb_lz4L13LZ4_wildCopy8EPvPKvS0_.exit520, %bb.g, %.loopexit592
  %.4.ph = phi ptr [ %.10548, %_ZN10duckdb_lz4L13LZ4_wildCopy8EPvPKvS0_.exit520 ], [ %.10548, %.loopexit592 ], [ %.10548, %.loopexit ], [ %0, %bb.g ] ; 2 uses
  %.6.ph = phi ptr [ %i.je, %_ZN10duckdb_lz4L13LZ4_wildCopy8EPvPKvS0_.exit520 ], [ %i.kz, %.loopexit592 ], [ %.13, %.loopexit ], [ %1, %bb.g ] ; 3 uses
  %i.ls = getelementptr inbounds nuw i8, ptr %.4.ph, i64 1 ; 3 uses
  %i.lt = load i8, ptr %.4.ph, align 1, !tbaa !7
  %i.lu = zext i8 %i.lt to i32                    ; 4 uses
  %i.lv = lshr i32 %i.lu, 4                       ; 2 uses
  %cond649 = icmp eq i32 %i.lv, 15
  br i1 %cond649, label %._crit_edge, label %.lr.ph651

.lr.ph651:                                        ; preds = %.preheader596
  %i.lw = zext nneg i32 %i.lv to i64              ; 2 uses
  %.not679 = icmp eq i32 %5, 1
  br i1 %.not679, label %.lr.ph651.split.us, label %.lr.ph651.split

.lr.ph651.split.us:                               ; preds = %.lr.ph651, %bb.bi
  %i.lx = phi i64 [ %i.na, %bb.bi ], [ %i.lw, %.lr.ph651 ] ; 3 uses
  %i.ly = phi i32 [ %i.my, %bb.bi ], [ %i.lu, %.lr.ph651 ] ; 2 uses
  %i.lz = phi ptr [ %i.mw, %bb.bi ], [ %i.ls, %.lr.ph651 ] ; 4 uses
  %.6650.us = phi ptr [ %i.mv, %bb.bi ], [ %.6.ph, %.lr.ph651 ] ; 4 uses
  %i.ma = icmp ult ptr %i.lz, %i.l
  %i.mb = icmp ule ptr %.6650.us, %i.m
  %i.mc = and i1 %i.ma, %i.mb
  br i1 %i.mc, label %bb.bh, label %.loopexit597, !prof !27

bb.bh:                                            ; preds = %.lr.ph651.split.us
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %.6650.us, ptr noundef nonnull align 1 dereferenceable(16) %i.lz, i64 16, i1 false)
  %i.md = getelementptr inbounds nuw i8, ptr %.6650.us, i64 %i.lx ; 6 uses
  %i.me = getelementptr inbounds nuw i8, ptr %i.lz, i64 %i.lx ; 3 uses
  %i.mf = and i32 %i.ly, 15                       ; 2 uses
  %i.mg = zext nneg i32 %i.mf to i64              ; 2 uses
  %.val483.us = load i16, ptr %i.me, align 1, !tbaa !7 ; 2 uses
  %i.mh = zext i16 %.val483.us to i64             ; 2 uses
  %i.mi = getelementptr inbounds nuw i8, ptr %i.me, i64 2 ; 2 uses
  %i.mj = sub nsw i64 0, %i.mh
  %i.mk = getelementptr inbounds i8, ptr %i.md, i64 %i.mj ; 4 uses
  %i.ml = icmp ne i32 %i.mf, 15
  %i.mm = icmp ugt i16 %.val483.us, 7
  %or.cond3.us = and i1 %i.ml, %i.mm
  br i1 %or.cond3.us, label %bb.bi, label %.loopexit598

bb.bi:                                            ; preds = %bb.bh
  %i.mn = load i64, ptr %i.mk, align 1
  store i64 %i.mn, ptr %i.md, align 1
  %i.mo = getelementptr inbounds nuw i8, ptr %i.md, i64 8
  %i.mp = getelementptr inbounds nuw i8, ptr %i.mk, i64 8
  %i.mq = load i64, ptr %i.mp, align 1
  store i64 %i.mq, ptr %i.mo, align 1
  %i.mr = getelementptr inbounds nuw i8, ptr %i.md, i64 16
  %i.ms = getelementptr inbounds nuw i8, ptr %i.mk, i64 16
  %i.mt = load i16, ptr %i.ms, align 1
  store i16 %i.mt, ptr %i.mr, align 1
  %i.mu = getelementptr inbounds nuw i8, ptr %i.md, i64 %i.mg
  %i.mv = getelementptr inbounds nuw i8, ptr %i.mu, i64 4 ; 2 uses
  %i.mw = getelementptr inbounds nuw i8, ptr %i.me, i64 3 ; 2 uses
  %i.mx = load i8, ptr %i.mi, align 1, !tbaa !7
  %i.my = zext i8 %i.mx to i32                    ; 3 uses
  %i.mz = lshr i32 %i.my, 4                       ; 2 uses
  %i.na = zext nneg i32 %i.mz to i64
  %cond.us = icmp eq i32 %i.mz, 15
  br i1 %cond.us, label %._crit_edge, label %.lr.ph651.split.us, !llvm.loop !48

bb.bj:                                            ; preds = %bb.be
  %i.nb = icmp ult i64 %.1378, 8
  br i1 %i.nb, label %bb.bk, label %bb.bl, !prof !19

bb.bk:                                            ; preds = %bb.bj
  store i32 0, ptr %.10, align 1, !tbaa !7
  %i.nc = load i8, ptr %.1371, align 1, !tbaa !7
  store i8 %i.nc, ptr %.10, align 1, !tbaa !7
  %i.nd = getelementptr inbounds nuw i8, ptr %.1371, i64 1
  %i.ne = load i8, ptr %i.nd, align 1, !tbaa !7
  %i.nf = getelementptr inbounds nuw i8, ptr %.10, i64 1
  store i8 %i.ne, ptr %i.nf, align 1, !tbaa !7
  %i.ng = getelementptr inbounds nuw i8, ptr %.1371, i64 2
  %i.nh = load i8, ptr %i.ng, align 1, !tbaa !7
  %i.ni = getelementptr inbounds nuw i8, ptr %.10, i64 2
  store i8 %i.nh, ptr %i.ni, align 1, !tbaa !7
  %i.nj = getelementptr inbounds nuw i8, ptr %.1371, i64 3
  %i.nk = load i8, ptr %i.nj, align 1, !tbaa !7
  %i.nl = getelementptr inbounds nuw i8, ptr %.10, i64 3
  store i8 %i.nk, ptr %i.nl, align 1, !tbaa !7
  %i.nm = getelementptr inbounds nuw [4 x i8], ptr @_ZN10duckdb_lz4L10inc32tableE, i64 %.1378
  %i.nn = load i32, ptr %i.nm, align 4, !tbaa !3
  %i.no = zext i32 %i.nn to i64
  %i.np = getelementptr inbounds nuw i8, ptr %.1371, i64 %i.no ; 2 uses
  %i.nq = getelementptr inbounds nuw i8, ptr %.10, i64 4
  %i.nr = load i32, ptr %i.np, align 1
  store i32 %i.nr, ptr %i.nq, align 1
  %i.ns = getelementptr inbounds nuw [4 x i8], ptr @_ZN10duckdb_lz4L10dec64tableE, i64 %.1378
  %i.nt = load i32, ptr %i.ns, align 4, !tbaa !3
  %i.nu = sext i32 %i.nt to i64
  %i.nv = sub nsw i64 0, %i.nu
  %i.nw = getelementptr inbounds i8, ptr %i.np, i64 %i.nv
end_hunk_1
