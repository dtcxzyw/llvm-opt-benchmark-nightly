inline.NumInlined: 231
inline.NumDeleted: 51
begin_hunk_0_@_ZN11duckdb_zstdL22ZSTD_findFrameSizeInfoEPKvmNS_13ZSTD_format_eE:bb.a
  store i64 -2, ptr %i.af, align 8, !tbaa !75
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #16
  br label %.critedge

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #16
  %i.ag = call noundef i64 @_ZN11duckdb_zstd18ZSTD_getcBlockSizeEPKvmPNS_17blockProperties_tE(ptr noundef nonnull %i.aa, i64 noundef %i.ab, ptr noundef nonnull %5) ; 3 uses
  %i.ah = icmp ult i64 %i.ag, -119
  br i1 %i.ah, label %bb.h, label %.thread

bb.k:                                             ; preds = %bb.i
  %i.ai = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.aj = load i32, ptr %i.ai, align 8, !tbaa !70
  %.not54 = icmp eq i32 %i.aj, 0
  br i1 %.not54, label %bb.o, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ak = icmp ult i64 %i.ab, 4
  br i1 %i.ak, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 -72, ptr %i.al, align 8, !tbaa !73, !alias.scope !86
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 -2, ptr %i.am, align 8, !tbaa !75, !alias.scope !86
  br label %.critedge

bb.n:                                             ; preds = %bb.l
  %i.an = getelementptr inbounds nuw i8, ptr %i.aa, i64 4
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.k
  %.2 = phi ptr [ %i.an, %bb.n ], [ %i.aa, %bb.k ]
  %i.ao = ptrtoint ptr %.2 to i64
  %i.ap = ptrtoint ptr %1 to i64
  %i.aq = sub i64 %i.ao, %i.ap
  %i.ar = load i64, ptr %4, align 8, !tbaa !62    ; 2 uses
  %.not55 = icmp eq i64 %i.ar, -1
  %i.as = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.at = load i32, ptr %i.as, align 8
  %i.au = zext i32 %i.at to i64
  %i.av = mul i64 %i.ac, %i.au
  %i.aw = select i1 %.not55, i64 %i.av, i64 %i.ar
  store i64 %i.ac, ptr %0, align 8, !tbaa !61
  %.sroa.6.0..sroa_idx26 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.aq, ptr %.sroa.6.0..sroa_idx26, align 8, !tbaa !61
  %.sroa.8.0..sroa_idx28 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.aw, ptr %.sroa.8.0..sroa_idx28, align 8, !tbaa !77
  br label %.critedge

.critedge:                                        ; preds = %.thread, %bb.d, %bb.f, %bb.o, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #16
  br label %bb.p

bb.p:                                             ; preds = %.critedge, %_ZN11duckdb_zstdL22readSkippableFrameSizeEPKvm.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define noundef i64 @_ZN11duckdb_zstd24ZSTD_decompressionMarginEPKvm(ptr noundef %0, i64 noundef %1) local_unnamed_addr #0 {
bb.a:
  %2 = alloca %"struct.duckdb_zstd::ZSTD_frameSizeInfo", align 8 ; 7 uses
  %3 = alloca %"struct.duckdb_zstd::ZSTD_frameHeader", align 8 ; 8 uses
  %.not49 = icmp eq i64 %1, 0
  br i1 %.not49, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 20
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 16
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.g
  %.02953 = phi ptr [ %0, %.lr.ph ], [ %i.aa, %bb.g ] ; 3 uses
  %.03152 = phi i64 [ %1, %.lr.ph ], [ %i.ab, %bb.g ] ; 3 uses
  %.03351 = phi i32 [ 0, %.lr.ph ], [ %.134, %bb.g ] ; 2 uses
  %.03650 = phi i64 [ 0, %.lr.ph ], [ %.137, %bb.g ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #16
  call fastcc void @_ZN11duckdb_zstdL22ZSTD_findFrameSizeInfoEPKvmNS_13ZSTD_format_eE(ptr dead_on_unwind noalias writable align 8 %2, ptr noundef %.02953, i64 noundef %.03152, i32 noundef 0)
  %i.g = load i64, ptr %i.a, align 8, !tbaa !73   ; 4 uses
  %i.h = load i64, ptr %i.b, align 8, !tbaa !75
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #16
  %i.i = call noundef i64 @_ZN11duckdb_zstd28ZSTD_getFrameHeader_advancedEPNS_16ZSTD_frameHeaderEPKvmNS_13ZSTD_format_eE(ptr noundef nonnull %3, ptr noundef readonly %.02953, i64 noundef %.03152, i32 noundef 0) ; 2 uses
  %i.j = icmp ult i64 %i.i, -119
  br i1 %i.j, label %bb.c, label %.thread

bb.c:                                             ; preds = %bb.b
  %i.k = icmp ugt i64 %i.g, -120
  %i.l = icmp eq i64 %i.h, -2
  %or.cond = select i1 %i.k, i1 true, i1 %i.l
  br i1 %or.cond, label %.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = load i32, ptr %i.c, align 4, !tbaa !63
  %i.n = icmp eq i32 %i.m, 0
  br i1 %i.n, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.o = load i32, ptr %i.d, align 8, !tbaa !64
  %i.p = zext i32 %i.o to i64
  %i.q = add i64 %.03650, %i.p
  %i.r = load i32, ptr %i.e, align 8, !tbaa !70
  %.not40 = icmp eq i32 %i.r, 0
  %i.s = select i1 %.not40, i64 0, i64 4
  %i.t = add i64 %i.q, %i.s
  %i.u = load i64, ptr %2, align 8, !tbaa !89
  %i.v = mul i64 %i.u, 3
  %i.w = add i64 %i.t, %i.v
  %i.x = load i32, ptr %i.f, align 8, !tbaa !68
  %i.y = tail call i32 @llvm.umax.i32(i32 %.03351, i32 %i.x)
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.z = add i64 %i.g, %.03650
  br label %bb.g

.thread:                                          ; preds = %bb.b, %bb.c
  %.2.ph = phi i64 [ -20, %bb.c ], [ %i.i, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #16
  br label %._crit_edge

bb.g:                                             ; preds = %bb.e, %bb.f
  %.137 = phi i64 [ %i.w, %bb.e ], [ %i.z, %bb.f ] ; 2 uses
  %.134 = phi i32 [ %i.y, %bb.e ], [ %.03351, %bb.f ] ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.02953, i64 %i.g
  %i.ab = sub i64 %.03152, %i.g                   ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #16
  %.not = icmp eq i64 %i.ab, 0
  br i1 %.not, label %._crit_edge.loopexit, label %bb.b, !llvm.loop !90

._crit_edge.loopexit:                             ; preds = %bb.g
  %i.ac = zext i32 %.134 to i64
  %i.ad = add i64 %.137, %i.ac
  br label %._crit_edge

._crit_edge:                                      ; preds = %bb.a, %._crit_edge.loopexit, %.thread
  %.3 = phi i64 [ %.2.ph, %.thread ], [ 0, %bb.a ], [ %i.ad, %._crit_edge.loopexit ]
  ret i64 %.3
}

; Function Attrs: mustprogress uwtable
define noundef i64 @_ZN11duckdb_zstd16ZSTD_insertBlockEPNS_11ZSTD_DCtx_sEPKvm(ptr noundef %0, ptr noundef %1, i64 noundef returned %2) local_unnamed_addr #0 {
bb.a:
  tail call void @_ZN11duckdb_zstd20ZSTD_checkContinuityEPNS_11ZSTD_DCtx_sEPKvm(ptr noundef %0, ptr noundef %1, i64 noundef %2)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 %2
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 29888
  store ptr %i.a, ptr %i.b, align 8, !tbaa !91
  ret i64 %2
}

declare void @_ZN11duckdb_zstd20ZSTD_checkContinuityEPNS_11ZSTD_DCtx_sEPKvm(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define noundef i64 @_ZN11duckdb_zstd25ZSTD_decompress_usingDictEPNS_11ZSTD_DCtx_sEPvmPKvmS4_m(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4, ptr noundef %5, i64 noundef %6) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call fastcc noundef i64 @_ZN11duckdb_zstdL25ZSTD_decompressMultiFrameEPNS_11ZSTD_DCtx_sEPvmPKvmS4_mPKNS_12ZSTD_DDict_sE(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4, ptr noundef %5, i64 noundef %6, ptr noundef null)
  ret i64 %i.a
}

; Function Attrs: mustprogress uwtable
define internal fastcc noundef i64 @_ZN11duckdb_zstdL25ZSTD_decompressMultiFrameEPNS_11ZSTD_DCtx_sEPvmPKvmS4_mPKNS_12ZSTD_DDict_sE(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4, ptr noundef %5, i64 noundef %6, ptr noundef %7) unnamed_addr #0 {
bb.a:
  %8 = alloca %"struct.duckdb_zstd::ZSTD_Trace", align 8 ; 11 uses
  %9 = alloca %"struct.duckdb_zstd::blockProperties_t", align 4 ; 9 uses
  %.not = icmp eq ptr %7, null                    ; 2 uses
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = tail call noundef ptr @_ZN11duckdb_zstd22ZSTD_DDict_dictContentEPKNS_12ZSTD_DDict_sE(ptr noundef nonnull %7)
  %i.b = tail call noundef i64 @_ZN11duckdb_zstd19ZSTD_DDict_dictSizeEPKNS_12ZSTD_DDict_sE(ptr noundef nonnull %7)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.062 = phi i64 [ %i.b, %bb.b ], [ %6, %bb.a ]
  %.061 = phi ptr [ %i.a, %bb.b ], [ %5, %bb.a ]
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 30104 ; 4 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !43
  %i.e = icmp eq i32 %i.d, 0                      ; 2 uses
  %i.f = select i1 %i.e, i64 5, i64 1             ; 2 uses
  %.not67126133 = icmp ult i64 %4, %i.f
  br i1 %.not67126133, label %.outer._crit_edge, label %.lr.ph.lr.ph

.lr.ph.lr.ph:                                     ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 29912
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 30204 ; 2 uses
  %.not.i.i = icmp eq ptr @_ZN11duckdb_zstd27ZSTD_trace_decompress_beginEPKNS_11ZSTD_DCtx_sE, null
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 95968 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 29920
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 29976
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 29888
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 10296
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 30200
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 29992
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 30176
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 26684
  %i.r = getelementptr i8, ptr %0, <4 x i64> <i64 32, i64 6192, i64 4136, i64 10296>
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 30232
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 29944 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 30112
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 30008 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %9, i64 4
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 29928
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 29960
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 30108
  %i.ab = icmp ne ptr @_ZN11duckdb_zstd25ZSTD_trace_decompress_endEyPKNS_10ZSTD_TraceE, null
  %i.ac = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %8, i64 4
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 30192 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.ag = getelementptr inbounds nuw i8, ptr %8, i64 12
  %i.ah = getelementptr inbounds nuw i8, ptr %8, i64 24
  %i.ai = getelementptr inbounds nuw i8, ptr %8, i64 32
  %i.aj = getelementptr inbounds nuw i8, ptr %8, i64 56
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.lr.ph, %.outer
  %i.ak = phi i64 [ %i.f, %.lr.ph.lr.ph ], [ %i.fi, %.outer ]
  %i.al = phi i1 [ %i.e, %.lr.ph.lr.ph ], [ %i.fh, %.outer ]
  %.050.ph138 = phi ptr [ %1, %.lr.ph.lr.ph ], [ %i.fe, %.outer ] ; 6 uses
  %.053.ph137 = phi i64 [ %2, %.lr.ph.lr.ph ], [ %i.ff, %.outer ] ; 3 uses
  %i.am = phi i1 [ false, %.lr.ph.lr.ph ], [ true, %.outer ]
  %.086.ph135 = phi i64 [ %4, %.lr.ph.lr.ph ], [ %.388, %.outer ] ; 2 uses
  %.089.ph134 = phi ptr [ %3, %.lr.ph.lr.ph ], [ %.392, %.outer ] ; 2 uses
  %.fr = freeze i1 %i.al
  br i1 %.fr, label %.lr.ph.split, label %.thread100

.lr.ph.split:                                     ; preds = %.lr.ph, %bb.g
  %.086128 = phi i64 [ %i.ay, %bb.g ], [ %.086.ph135, %.lr.ph ] ; 6 uses
  %.089127 = phi ptr [ %i.ax, %bb.g ], [ %.089.ph134, %.lr.ph ] ; 5 uses
  %i.an = icmp ugt i64 %.086128, 3
  br i1 %i.an, label %bb.d, label %.thread100

bb.d:                                             ; preds = %.lr.ph.split
  %.val = load i32, ptr %.089127, align 1, !tbaa !3
  %i.ao = and i32 %.val, -16
  %i.ap = icmp eq i32 %i.ao, 407710288
  br i1 %i.ap, label %bb.e, label %.thread100

bb.e:                                             ; preds = %bb.d
  %i.aq = icmp ult i64 %.086128, 8
  br i1 %i.aq, label %.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ar = getelementptr inbounds nuw i8, ptr %.089127, i64 4
  %.val.i = load i32, ptr %i.ar, align 1, !tbaa !3 ; 2 uses
  %i.as = icmp ugt i32 %.val.i, -9
  br i1 %i.as, label %.thread, label %_ZN11duckdb_zstdL22readSkippableFrameSizeEPKvm.exit

_ZN11duckdb_zstdL22readSkippableFrameSizeEPKvm.exit: ; preds = %bb.f
  %i.at = zext i32 %.val.i to i64
  %i.au = add nuw nsw i64 %i.at, 8                ; 2 uses
  %i.av = icmp ugt i64 %i.au, %.086128
  %..i = select i1 %i.av, i64 -72, i64 %i.au      ; 4 uses
  %i.aw = icmp ult i64 %..i, -119
  br i1 %i.aw, label %bb.g, label %.thread

bb.g:                                             ; preds = %_ZN11duckdb_zstdL22readSkippableFrameSizeEPKvm.exit
  %i.ax = getelementptr inbounds nuw i8, ptr %.089127, i64 %..i
  %i.ay = sub i64 %.086128, %..i                  ; 3 uses
  %.not67 = icmp ult i64 %i.ay, %i.ak
  br i1 %.not67, label %.outer._crit_edge, label %.lr.ph.split

.thread100:                                       ; preds = %.lr.ph.split, %bb.d, %.lr.ph
  %.us-phi = phi ptr [ %.089.ph134, %.lr.ph ], [ %.089127, %bb.d ], [ %.089127, %.lr.ph.split ] ; 12 uses
  %.us-phi132 = phi i64 [ %.086.ph135, %.lr.ph ], [ %.086128, %bb.d ], [ %.086128, %.lr.ph.split ] ; 11 uses
  br i1 %.not, label %bb.j, label %bb.h

bb.h:                                             ; preds = %.thread100
  %i.az = call noundef ptr @_ZN11duckdb_zstd22ZSTD_DDict_dictContentEPKNS_12ZSTD_DDict_sE(ptr noundef nonnull %7)
  %i.ba = call noundef i64 @_ZN11duckdb_zstd19ZSTD_DDict_dictSizeEPKNS_12ZSTD_DDict_sE(ptr noundef nonnull %7)
  %i.bb = getelementptr inbounds nuw i8, ptr %i.az, i64 %i.ba
  %i.bc = load ptr, ptr %i.g, align 8, !tbaa !32
  %i.bd = icmp ne ptr %i.bc, %i.bb
  %i.be = zext i1 %i.bd to i32
  store i32 %i.be, ptr %i.h, align 4, !tbaa !33
  br i1 %.not.i.i, label %_ZN11duckdb_zstd31ZSTD_decompressBegin_usingDDictEPNS_11ZSTD_DCtx_sEPKNS_12ZSTD_DDict_sE.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bf = call noundef i64 @_ZN11duckdb_zstd27ZSTD_trace_decompress_beginEPKNS_11ZSTD_DCtx_sE(ptr noundef nonnull %0)
  br label %_ZN11duckdb_zstd31ZSTD_decompressBegin_usingDDictEPNS_11ZSTD_DCtx_sEPKNS_12ZSTD_DDict_sE.exit

_ZN11duckdb_zstd31ZSTD_decompressBegin_usingDDictEPNS_11ZSTD_DCtx_sEPKNS_12ZSTD_DDict_sE.exit: ; preds = %bb.i, %bb.h
  %i.bg = phi i64 [ %i.bf, %bb.i ], [ 0, %bb.h ]
  store i64 %i.bg, ptr %i.i, align 8, !tbaa !92
  %i.bh = load i32, ptr %i.c, align 8, !tbaa !43
  %i.bi = icmp eq i32 %i.bh, 0
  %i.bj = select i1 %i.bi, i64 5, i64 1
  store i64 %i.bj, ptr %i.j, align 8, !tbaa !93
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.l, i8 0, i64 32, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.k, i8 0, i64 16, i1 false)
  store i32 201326604, ptr %i.m, align 8, !tbaa !3
  store i32 0, ptr %i.n, align 8, !tbaa !94
  store <4 x i32> <i32 3, i32 0, i32 0, i32 0>, ptr %i.o, align 8, !tbaa !60
  store i32 1, ptr %i.p, align 8, !tbaa !37
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.q, ptr noundef nonnull align 4 dereferenceable(12) @_ZN11duckdb_zstdL13repStartValueE, i64 12, i1 false)
  store <4 x ptr> %i.r, ptr %0, align 8, !tbaa !52
  call void @_ZN11duckdb_zstd24ZSTD_copyDDictParametersEPNS_11ZSTD_DCtx_sEPKNS_12ZSTD_DDict_sE(ptr noundef nonnull %0, ptr noundef nonnull %7)
  br label %bb.k

bb.j:                                             ; preds = %.thread100
  %i.bk = call noundef i64 @_ZN11duckdb_zstd30ZSTD_decompressBegin_usingDictEPNS_11ZSTD_DCtx_sEPKvm(ptr noundef nonnull %0, ptr noundef %.061, i64 noundef %.062) ; 2 uses
  %i.bl = icmp ult i64 %i.bk, -119
  br i1 %i.bl, label %bb.k, label %.thread

bb.k:                                             ; preds = %_ZN11duckdb_zstd31ZSTD_decompressBegin_usingDDictEPNS_11ZSTD_DCtx_sEPKNS_12ZSTD_DDict_sE.exit, %bb.j
  call void @_ZN11duckdb_zstd20ZSTD_checkContinuityEPNS_11ZSTD_DCtx_sEPKvm(ptr noundef nonnull %0, ptr noundef %.050.ph138, i64 noundef %.053.ph137)
  %i.bm = getelementptr inbounds nuw i8, ptr %.050.ph138, i64 %.053.ph137 ; 3 uses
  %i.bn = load i32, ptr %i.c, align 8, !tbaa !43
  %i.bo = icmp eq i32 %i.bn, 0                    ; 2 uses
  %i.bp = select i1 %i.bo, i64 9, i64 5
  %i.bq = icmp ult i64 %.us-phi132, %i.bp
  br i1 %i.bq, label %_ZN11duckdb_zstdL20ZSTD_decompressFrameEPNS_11ZSTD_DCtx_sEPvmPPKvPm.exit, label %_ZN11duckdb_zstdL29ZSTD_frameHeaderSize_internalEPKvmNS_13ZSTD_format_eE.exit.i

_ZN11duckdb_zstdL29ZSTD_frameHeaderSize_internalEPKvmNS_13ZSTD_format_eE.exit.i: ; preds = %bb.k
  %i.br = select i1 %i.bo, i64 5, i64 1           ; 2 uses
  %i.bs = getelementptr i8, ptr %.us-phi, i64 %i.br
  %i.bt = getelementptr i8, ptr %i.bs, i64 -1
  %i.bu = load i8, ptr %i.bt, align 1, !tbaa !60
  %i.bv = zext i8 %i.bu to i32                    ; 3 uses
  %i.bw = and i32 %i.bv, 3
  %i.bx = lshr i32 %i.bv, 6                       ; 2 uses
  %i.by = and i32 %i.bv, 32
  %.not.i.i75 = icmp eq i32 %i.by, 0              ; 2 uses
  %i.bz = zext i1 %.not.i.i75 to i64
  %i.ca = zext nneg i32 %i.bw to i64
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr @_ZN11duckdb_zstdL18ZSTD_did_fieldSizeE, i64 %i.ca
  %i.cc = load i64, ptr %i.cb, align 8, !tbaa !61
  %i.cd = zext nneg i32 %i.bx to i64
  %i.ce = getelementptr inbounds nuw [8 x i8], ptr @_ZN11duckdb_zstdL18ZSTD_fcs_fieldSizeE, i64 %i.cd
  %i.cf = load i64, ptr %i.ce, align 8, !tbaa !61
  %.not15.i.i = icmp eq i32 %i.bx, 0
  %not..not.i.i = xor i1 %.not.i.i75, true
  %narrow.i.i = and i1 %.not15.i.i, %not..not.i.i
  %i.cg = zext i1 %narrow.i.i to i64
  %i.ch = add i64 %i.cc, %i.br
  %i.ci = add i64 %i.ch, %i.cf
  %i.cj = add i64 %i.ci, %i.bz
  %i.ck = add i64 %i.cj, %i.cg                    ; 6 uses
  %i.cl = icmp ult i64 %i.ck, -119
  br i1 %i.cl, label %bb.l, label %_ZN11duckdb_zstdL20ZSTD_decompressFrameEPNS_11ZSTD_DCtx_sEPvmPPKvPm.exit

bb.l:                                             ; preds = %_ZN11duckdb_zstdL29ZSTD_frameHeaderSize_internalEPKvmNS_13ZSTD_format_eE.exit.i
  %i.cm = add nuw i64 %i.ck, 3
  %i.cn = icmp ult i64 %.us-phi132, %i.cm
  br i1 %i.cn, label %_ZN11duckdb_zstdL20ZSTD_decompressFrameEPNS_11ZSTD_DCtx_sEPvmPPKvPm.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.co = call fastcc noundef i64 @_ZN11duckdb_zstdL22ZSTD_decodeFrameHeaderEPNS_11ZSTD_DCtx_sEPKvm(ptr noundef nonnull %0, ptr noundef nonnull %.us-phi, i64 noundef %i.ck) ; 2 uses
  %i.cp = icmp ult i64 %i.co, -119
  br i1 %i.cp, label %bb.n, label %_ZN11duckdb_zstdL20ZSTD_decompressFrameEPNS_11ZSTD_DCtx_sEPvmPPKvPm.exit

bb.n:                                             ; preds = %bb.m
  %i.cq = getelementptr inbounds nuw i8, ptr %.us-phi, i64 %i.ck ; 2 uses
  %i.cr = sub i64 %.us-phi132, %i.ck              ; 2 uses
  %i.cs = load i32, ptr %i.s, align 8, !tbaa !49  ; 2 uses
  %.not137.i = icmp eq i32 %i.cs, 0
  br i1 %.not137.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ct = load i32, ptr %i.t, align 8, !tbaa !95
  %..i76 = call i32 @llvm.umin.i32(i32 %i.ct, i32 %i.cs)
  store i32 %..i76, ptr %i.t, align 8, !tbaa !95
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #16
  %i.cu = call noundef i64 @_ZN11duckdb_zstd18ZSTD_getcBlockSizeEPKvmPNS_17blockProperties_tE(ptr noundef nonnull %i.cq, i64 noundef %i.cr, ptr noundef nonnull %9) ; 3 uses
  %i.cv = icmp ult i64 %i.cu, -119
  br i1 %i.cv, label %.lr.ph.i, label %.thread171.i

.lr.ph.i:                                         ; preds = %bb.p
  %i.cw = ptrtoint ptr %i.bm to i64
  br label %bb.q

bb.q:                                             ; preds = %bb.ab, %.lr.ph.i
  %i.cx = phi i64 [ %i.cu, %.lr.ph.i ], [ %i.ed, %bb.ab ] ; 8 uses
  %.1111192.i = phi ptr [ %i.cq, %.lr.ph.i ], [ %i.ea, %bb.ab ]
  %.0114190.i = phi ptr [ %.050.ph138, %.lr.ph.i ], [ %i.dz, %bb.ab ] ; 10 uses
  %.1118189.i = phi i64 [ %i.cr, %.lr.ph.i ], [ %i.eb, %bb.ab ]
  %i.cy = getelementptr inbounds nuw i8, ptr %.1111192.i, i64 3 ; 7 uses
  %i.cz = add i64 %.1118189.i, -3                 ; 2 uses
  %i.da = icmp ugt i64 %i.cx, %i.cz
  br i1 %i.da, label %.thread171.i, label %bb.r

bb.r:                                             ; preds = %bb.q
  %.not139.i = icmp uge ptr %i.cy, %.0114190.i
  %i.db = icmp ult ptr %i.cy, %i.bm
  %or.cond.i = select i1 %.not139.i, i1 %i.db, i1 false
  %i.dc = ptrtoint ptr %i.cy to i64
  %i.dd = ptrtoint ptr %.0114190.i to i64         ; 4 uses
  %i.de = sub i64 %i.dc, %i.dd
  %i.df = getelementptr inbounds i8, ptr %.0114190.i, i64 %i.de
  %.0122.i = select i1 %or.cond.i, ptr %i.df, ptr %i.bm ; 2 uses
  %i.dg = load i32, ptr %9, align 4, !tbaa !96
  switch i32 %i.dg, label %.thread171.i [
end_hunk_0
begin_hunk_1_@_ZN11duckdb_zstd22ZSTD_DCtx_getParameterEPNS_11ZSTD_DCtx_sENS_15ZSTD_dParameterEPi:bb.a
  br label %.sink.split

bb.e:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 30108
  %i.k = load i32, ptr %i.j, align 4, !tbaa !46
  br label %.sink.split

bb.f:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 30224
  %i.m = load i32, ptr %i.l, align 8, !tbaa !47
  br label %.sink.split

bb.g:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 30228
  %i.o = load i32, ptr %i.n, align 4, !tbaa !48
  br label %.sink.split

bb.h:                                             ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 30232
  %i.q = load i32, ptr %i.p, align 8, !tbaa !49
  br label %.sink.split

.sink.split:                                      ; preds = %bb.b, %bb.c, %bb.d, %bb.e, %bb.f, %bb.g, %bb.h
  %.sink = phi i32 [ %i.q, %bb.h ], [ %i.o, %bb.g ], [ %i.m, %bb.f ], [ %i.k, %bb.e ], [ %i.i, %bb.d ], [ %i.g, %bb.c ], [ %i.e, %bb.b ]
  store i32 %.sink, ptr %2, align 4, !tbaa !3
  br label %bb.i

bb.i:                                             ; preds = %.sink.split, %bb.a
  %.0 = phi i64 [ -40, %bb.a ], [ 0, %.sink.split ]
  ret i64 %.0
}

; Function Attrs: mustprogress uwtable
define noundef i64 @_ZN11duckdb_zstd19ZSTD_sizeof_DStreamEPKNS_11ZSTD_DCtx_sE(ptr noundef readonly captures(address_is_null) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %_ZN11duckdb_zstd16ZSTD_sizeof_DCtxEPKNS_11ZSTD_DCtx_sE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 30184
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !7
  %i.d = tail call noundef i64 @_ZN11duckdb_zstd17ZSTD_sizeof_DDictEPKNS_12ZSTD_DDict_sE(ptr noundef %i.c)
  %i.e = add i64 %i.d, 95976
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 30248
  %i.g = load i64, ptr %i.f, align 8, !tbaa !30
  %i.h = add i64 %i.e, %i.g
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 30280
  %i.j = load i64, ptr %i.i, align 8, !tbaa !31
  %i.k = add i64 %i.h, %i.j
  br label %_ZN11duckdb_zstd16ZSTD_sizeof_DCtxEPKNS_11ZSTD_DCtx_sE.exit

_ZN11duckdb_zstd16ZSTD_sizeof_DCtxEPKNS_11ZSTD_DCtx_sE.exit: ; preds = %bb.a, %bb.b
  %.0.i = phi i64 [ %i.k, %bb.b ], [ 0, %bb.a ]
  ret i64 %.0.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef i64 @_ZN11duckdb_zstd27ZSTD_decodingBufferSize_minEyy(i64 noundef %0, i64 noundef %1) local_unnamed_addr #2 {
bb.a:
  %i.a = tail call i64 @llvm.umin.i64(i64 %0, i64 131072)
  %i.b = shl nuw nsw i64 %i.a, 1
  %i.c = add i64 %0, 64
  %i.d = add i64 %i.c, %i.b
  %i.e = tail call noundef i64 @llvm.umin.i64(i64 %1, i64 %i.d)
  ret i64 %i.e
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef i64 @_ZN11duckdb_zstd24ZSTD_estimateDStreamSizeEm(i64 noundef %0) local_unnamed_addr #2 {
bb.a:
  %i.a = tail call i64 @llvm.umin.i64(i64 %0, i64 131072) ; 2 uses
  %i.b = shl nuw nsw i64 %i.a, 1
  %i.c = add i64 %0, 96040
  %i.d = add i64 %i.c, %i.a
  %i.e = add i64 %i.d, %i.b
  ret i64 %i.e
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define noundef range(i64 -119, 2147972905) i64 @_ZN11duckdb_zstd34ZSTD_estimateDStreamSize_fromFrameEPKvm(ptr noundef readonly captures(address_is_null) %0, i64 noundef %1) local_unnamed_addr #6 {
bb.a:
  %2 = alloca %"struct.duckdb_zstd::ZSTD_frameHeader", align 8 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #16
  %i.a = call noundef i64 @_ZN11duckdb_zstd28ZSTD_getFrameHeader_advancedEPNS_16ZSTD_frameHeaderEPKvmNS_13ZSTD_format_eE(ptr noundef nonnull %2, ptr noundef readonly %0, i64 noundef %1, i32 noundef 0) ; 3 uses
  %i.b = icmp ult i64 %i.a, -119
  br i1 %i.b, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %.not6 = icmp eq i64 %i.a, 0
  br i1 %.not6, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !67   ; 3 uses
  %i.e = icmp ugt i64 %i.d, 2147483648
  br i1 %i.e, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = tail call i64 @llvm.umin.i64(i64 %i.d, i64 131072) ; 2 uses
  %i.g = shl nuw nsw i64 %i.f, 1
  %i.h = add nuw nsw i64 %i.d, 96040
  %i.i = add nuw nsw i64 %i.h, %i.f
  %i.j = add nuw nsw i64 %i.i, %i.g
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.b, %bb.a, %bb.d
  %.0 = phi i64 [ %i.j, %bb.d ], [ %i.a, %bb.a ], [ -72, %bb.b ], [ -16, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #16
  ret i64 %.0
}

; Function Attrs: mustprogress uwtable
define noundef i64 @_ZN11duckdb_zstd21ZSTD_decompressStreamEPNS_11ZSTD_DCtx_sEPNS_16ZSTD_outBuffer_sEPNS_15ZSTD_inBuffer_sE(ptr noundef %0, ptr noundef captures(none) %1, ptr noundef captures(none) %2) local_unnamed_addr #0 {
bb.a:
  %3 = alloca %"struct.duckdb_zstd::ZSTD_frameSizeInfo", align 8 ; 4 uses
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = load ptr, ptr %2, align 8, !tbaa !141    ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 7 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !143  ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.d ; 5 uses
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !144  ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.g ; 4 uses
  %i.i = load ptr, ptr %1, align 8, !tbaa !145    ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.k = load i64, ptr %i.j, align 8, !tbaa !146  ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.k ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.n = load i64, ptr %i.m, align 8, !tbaa !147  ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.n
  %i.p = icmp ugt i64 %i.d, %i.g
  br i1 %i.p, label %_ZN11duckdb_zstdL19ZSTD_checkOutBufferEPKNS_11ZSTD_DCtx_sEPKNS_16ZSTD_outBuffer_sE.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.q = icmp ugt i64 %i.k, %i.n
  br i1 %i.q, label %_ZN11duckdb_zstdL19ZSTD_checkOutBufferEPKNS_11ZSTD_DCtx_sEPKNS_16ZSTD_outBuffer_sE.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 30328 ; 3 uses
  %.sroa.0.0.copyload.i = load ptr, ptr %i.r, align 8, !tbaa !52
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 30336
  %.sroa.4.0.copyload.i = load i64, ptr %.sroa.4.0..sroa_idx.i, align 8, !tbaa !61
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 30344
  %.sroa.5.0.copyload.i = load i64, ptr %.sroa.5.0..sroa_idx.i, align 8, !tbaa !61
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 30320 ; 5 uses
  %i.t = load i32, ptr %i.s, align 8, !tbaa !45
  %.not.i = icmp eq i32 %i.t, 1
  br i1 %.not.i, label %bb.d, label %_ZN11duckdb_zstdL19ZSTD_checkOutBufferEPKNS_11ZSTD_DCtx_sEPKNS_16ZSTD_outBuffer_sE.exit

bb.d:                                             ; preds = %bb.c
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 30236
  %i.v = load i32, ptr %i.u, align 4, !tbaa !132
  %i.w = icmp eq i32 %i.v, 0
  br i1 %i.w, label %_ZN11duckdb_zstdL19ZSTD_checkOutBufferEPKNS_11ZSTD_DCtx_sEPKNS_16ZSTD_outBuffer_sE.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.x = icmp eq ptr %.sroa.0.0.copyload.i, %i.i
  %i.y = icmp eq i64 %.sroa.5.0.copyload.i, %i.k
  %or.cond537 = select i1 %i.x, i1 %i.y, i1 false
  %i.z = icmp eq i64 %.sroa.4.0.copyload.i, %i.n
  %or.cond538 = select i1 %or.cond537, i1 %i.z, i1 false
  br i1 %or.cond538, label %_ZN11duckdb_zstdL19ZSTD_checkOutBufferEPKNS_11ZSTD_DCtx_sEPKNS_16ZSTD_outBuffer_sE.exit, label %_ZN11duckdb_zstdL19ZSTD_checkOutBufferEPKNS_11ZSTD_DCtx_sEPKNS_16ZSTD_outBuffer_sE.exit.thread

_ZN11duckdb_zstdL19ZSTD_checkOutBufferEPKNS_11ZSTD_DCtx_sEPKNS_16ZSTD_outBuffer_sE.exit: ; preds = %bb.e, %bb.c, %bb.d
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 30236 ; 9 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 30296 ; 4 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 30288 ; 12 uses
  %i.ad = ptrtoint ptr %i.o to i64                ; 5 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 30272 ; 4 uses
  %i.af = getelementptr i8, ptr %0, i64 30280     ; 6 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 29928 ; 6 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 29944 ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 30256 ; 6 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 30304 ; 6 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 30312 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 95940 ; 6 uses
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 30104 ; 6 uses
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 30224
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 30216
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 30192 ; 3 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 29956 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 30184 ; 4 uses
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 30208 ; 4 uses
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 30200 ; 2 uses
  %i.au = ptrtoint ptr %i.h to i64                ; 4 uses
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 29948 ; 2 uses
  %gepdiff = sub nsw i64 %i.g, %i.d               ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 29920 ; 7 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 29912
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 30204
  %.not.i.i = icmp eq ptr @_ZN11duckdb_zstd27ZSTD_trace_decompress_beginEPKNS_11ZSTD_DCtx_sE, null
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 95968
  %i.bb = getelementptr i8, ptr %0, i64 29996     ; 5 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 29976
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 29888
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 10296
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 29992 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 30176
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 26684
  %i.bi = getelementptr i8, ptr %0, <4 x i64> <i64 32, i64 6192, i64 4136, i64 10296>
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 95944
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 29936 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 30264
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 30232
  %i.bn = getelementptr i8, ptr %0, i64 30248     ; 4 uses
  %i.bo = getelementptr i8, ptr %0, i64 95960     ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 30168
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 30240 ; 5 uses
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 30128
  %.sroa.1.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 30136
  %.sroa.2436.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 30144 ; 2 uses
  br label %.thread490.outer

.thread490.outer:                                 ; preds = %.thread490.outer.backedge, %_ZN11duckdb_zstdL19ZSTD_checkOutBufferEPKNS_11ZSTD_DCtx_sEPKNS_16ZSTD_outBuffer_sE.exit
  %.0304561.ph = phi ptr [ %i.e, %_ZN11duckdb_zstdL19ZSTD_checkOutBufferEPKNS_11ZSTD_DCtx_sEPKNS_16ZSTD_outBuffer_sE.exit ], [ %.0304561.ph.be, %.thread490.outer.backedge ] ; 18 uses
  %.0558.ph = phi ptr [ %i.l, %_ZN11duckdb_zstdL19ZSTD_checkOutBufferEPKNS_11ZSTD_DCtx_sEPKNS_16ZSTD_outBuffer_sE.exit ], [ %.0558.ph.be, %.thread490.outer.backedge ]
  br label %.thread490

.thread490:                                       ; preds = %.thread490.backedge, %.thread490.outer
  %.0558 = phi ptr [ %.0558.ph, %.thread490.outer ], [ %i.jl, %.thread490.backedge ] ; 23 uses
  %i.bs = load i32, ptr %i.aa, align 4, !tbaa !132
  switch i32 %i.bs, label %_ZN11duckdb_zstdL19ZSTD_checkOutBufferEPKNS_11ZSTD_DCtx_sEPKNS_16ZSTD_outBuffer_sE.exit.thread [
    i32 0, label %bb.f
    i32 1, label %._crit_edge
    i32 2, label %.loopexit646
    i32 3, label %._crit_edge571
    i32 4, label %bb.cb
  ]

._crit_edge571:                                   ; preds = %.thread490
  %.pre572 = load i64, ptr %i.ax, align 8, !tbaa !93
  %.val408.pre = load i32, ptr %i.bb, align 4, !tbaa !115
  br label %bb.bo

._crit_edge:                                      ; preds = %.thread490
  %.pre566 = load i64, ptr %i.aj, align 8, !tbaa !148
  br label %bb.g

bb.f:                                             ; preds = %.thread490
  store i32 1, ptr %i.aa, align 4, !tbaa !132
  store i64 0, ptr %i.ai, align 8, !tbaa !149
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.ac, i8 0, i64 28, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.r, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !150
  br label %bb.g

bb.g:                                             ; preds = %._crit_edge, %bb.f
  %i.bt = phi i64 [ %.pre566, %._crit_edge ], [ 0, %bb.f ]
  %i.bu = load i32, ptr %i.am, align 8, !tbaa !43
  %i.bv = call noundef i64 @_ZN11duckdb_zstd28ZSTD_getFrameHeader_advancedEPNS_16ZSTD_frameHeaderEPKvmNS_13ZSTD_format_eE(ptr noundef nonnull %i.ag, ptr noundef nonnull %i.al, i64 noundef %i.bt, i32 noundef %i.bu) ; 6 uses
  %i.bw = load i32, ptr %i.an, align 8, !tbaa !47
  %.not371 = icmp eq i32 %i.bw, 0
  br i1 %.not371, label %_ZN11duckdb_zstdL26ZSTD_DCtx_selectFrameDDictEPNS_11ZSTD_DCtx_sE.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bx = load ptr, ptr %i.ao, align 8, !tbaa !42 ; 4 uses
  %.not372 = icmp eq ptr %i.bx, null
  br i1 %.not372, label %_ZN11duckdb_zstdL26ZSTD_DCtx_selectFrameDDictEPNS_11ZSTD_DCtx_sE.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.by = load ptr, ptr %i.ap, align 8, !tbaa !107
  %.not.i409 = icmp eq ptr %i.by, null
  br i1 %.not.i409, label %_ZN11duckdb_zstdL26ZSTD_DCtx_selectFrameDDictEPNS_11ZSTD_DCtx_sE.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bz = load i32, ptr %i.aq, align 4, !tbaa !121 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i32 %i.bz, ptr %i.a, align 4, !tbaa !3
  %i.ca = call noundef i64 @_ZN11duckdb_zstd5XXH64EPKvmy(ptr noundef nonnull %i.a, i64 noundef 4, i64 noundef 0)
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bx, i64 8
  %i.cc = load i64, ptr %i.cb, align 8, !tbaa !122
  %i.cd = add i64 %i.cc, -1                       ; 2 uses
  %i.ce = and i64 %i.cd, %i.ca
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.k

bb.k:                                             ; preds = %bb.k, %bb.j
  %.014.i.i = phi i64 [ %i.ce, %bb.j ], [ %i.cm, %bb.k ] ; 3 uses
  %i.cf = load ptr, ptr %i.bx, align 8, !tbaa !55
  %i.cg = getelementptr inbounds nuw [8 x i8], ptr %i.cf, i64 %.014.i.i
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !123
  %i.ci = call noundef i32 @_ZN11duckdb_zstd24ZSTD_getDictID_fromDDictEPKNS_12ZSTD_DDict_sE(ptr noundef %i.ch) ; 2 uses
  %i.cj = icmp eq i32 %i.ci, %i.bz
  %i.ck = icmp eq i32 %i.ci, 0
  %or.cond.i.i = or i1 %i.cj, %i.ck
  %i.cl = and i64 %.014.i.i, %i.cd
  %i.cm = add i64 %i.cl, 1
  br i1 %or.cond.i.i, label %_ZN11duckdb_zstdL26ZSTD_DDictHashSet_getDDictEPNS_17ZSTD_DDictHashSetEj.exit.i, label %bb.k

_ZN11duckdb_zstdL26ZSTD_DDictHashSet_getDDictEPNS_17ZSTD_DDictHashSetEj.exit.i: ; preds = %bb.k
  %i.cn = load ptr, ptr %i.bx, align 8, !tbaa !55
  %i.co = getelementptr inbounds nuw [8 x i8], ptr %i.cn, i64 %.014.i.i
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !123 ; 2 uses
  %.not10.i = icmp eq ptr %i.cp, null
  br i1 %.not10.i, label %_ZN11duckdb_zstdL26ZSTD_DCtx_selectFrameDDictEPNS_11ZSTD_DCtx_sE.exit, label %bb.l

bb.l:                                             ; preds = %_ZN11duckdb_zstdL26ZSTD_DDictHashSet_getDDictEPNS_17ZSTD_DDictHashSetEj.exit.i
  %i.cq = load ptr, ptr %i.ar, align 8, !tbaa !7
  %i.cr = call noundef i64 @_ZN11duckdb_zstd14ZSTD_freeDDictEPNS_12ZSTD_DDict_sE(ptr noundef %i.cq) ; 0 uses
  store i64 0, ptr %i.ar, align 8
  %i.cs = load i32, ptr %i.aq, align 4, !tbaa !121
  store i32 %i.cs, ptr %i.at, align 8, !tbaa !94
  store ptr %i.cp, ptr %i.ap, align 8, !tbaa !107
  store i32 -1, ptr %i.as, align 8, !tbaa !34
  br label %_ZN11duckdb_zstdL26ZSTD_DCtx_selectFrameDDictEPNS_11ZSTD_DCtx_sE.exit

_ZN11duckdb_zstdL26ZSTD_DCtx_selectFrameDDictEPNS_11ZSTD_DCtx_sE.exit: ; preds = %bb.l, %_ZN11duckdb_zstdL26ZSTD_DDictHashSet_getDDictEPNS_17ZSTD_DDictHashSetEj.exit.i, %bb.i, %bb.h, %bb.g
  %i.ct = icmp ult i64 %i.bv, -119
  br i1 %i.ct, label %bb.m, label %_ZN11duckdb_zstdL19ZSTD_checkOutBufferEPKNS_11ZSTD_DCtx_sEPKNS_16ZSTD_outBuffer_sE.exit.thread

bb.m:                                             ; preds = %_ZN11duckdb_zstdL26ZSTD_DCtx_selectFrameDDictEPNS_11ZSTD_DCtx_sE.exit
  %.not374 = icmp eq i64 %i.bv, 0
  br i1 %.not374, label %bb.t, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.cu = load i64, ptr %i.aj, align 8, !tbaa !148 ; 5 uses
  %i.cv = sub i64 %i.bv, %i.cu                    ; 3 uses
  %i.cw = ptrtoint ptr %.0304561.ph to i64
  %i.cx = sub i64 %i.au, %i.cw                    ; 3 uses
  %i.cy = icmp ugt i64 %i.cv, %i.cx
  br i1 %i.cy, label %bb.o, label %bb.s

bb.o:                                             ; preds = %bb.n
  %.not375 = icmp eq ptr %i.h, %.0304561.ph
  br i1 %.not375, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.cz = getelementptr inbounds nuw i8, ptr %i.al, i64 %i.cu
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.cz, ptr align 1 %.0304561.ph, i64 %i.cx, i1 false)
  %i.da = add i64 %i.cu, %i.cx                    ; 2 uses
  store i64 %i.da, ptr %i.aj, align 8, !tbaa !148
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.db = phi i64 [ %i.da, %bb.p ], [ %i.cu, %bb.o ]
  %i.dc = load i64, ptr %i.f, align 8, !tbaa !144
  store i64 %i.dc, ptr %i.c, align 8, !tbaa !143
  %i.dd = load i32, ptr %i.am, align 8, !tbaa !43
  %i.de = call noundef i64 @_ZN11duckdb_zstd28ZSTD_getFrameHeader_advancedEPNS_16ZSTD_frameHeaderEPKvmNS_13ZSTD_format_eE(ptr noundef nonnull %i.ag, ptr noundef nonnull %i.al, i64 noundef %i.db, i32 noundef %i.dd) ; 2 uses
  %i.df = icmp ult i64 %i.de, -119
  br i1 %i.df, label %bb.r, label %_ZN11duckdb_zstdL19ZSTD_checkOutBufferEPKNS_11ZSTD_DCtx_sEPKNS_16ZSTD_outBuffer_sE.exit.thread

bb.r:                                             ; preds = %bb.q
  %i.dg = load i32, ptr %i.am, align 8, !tbaa !43
  %i.dh = icmp eq i32 %i.dg, 0
  %i.di = select i1 %i.dh, i64 6, i64 2
  %. = call i64 @llvm.umax.i64(i64 %i.di, i64 %i.bv)
  %i.dj = load i64, ptr %i.aj, align 8, !tbaa !148
  %reass.sub = sub i64 %., %i.dj
  %i.dk = add i64 %reass.sub, 3
  br label %_ZN11duckdb_zstdL19ZSTD_checkOutBufferEPKNS_11ZSTD_DCtx_sEPKNS_16ZSTD_outBuffer_sE.exit.thread

bb.s:                                             ; preds = %bb.n
  %i.dl = getelementptr inbounds nuw i8, ptr %i.al, i64 %i.cu
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.dl, ptr align 1 %.0304561.ph, i64 %i.cv, i1 false)
  store i64 %i.bv, ptr %i.aj, align 8, !tbaa !148
  %i.dm = getelementptr inbounds nuw i8, ptr %.0304561.ph, i64 %i.cv
  br label %.thread490.outer.backedge

bb.t:                                             ; preds = %bb.m
  %i.dn = load i64, ptr %i.ag, align 8, !tbaa !99 ; 2 uses
  %.not377 = icmp eq i64 %i.dn, -1
  br i1 %.not377, label %.thread470, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.do = load i32, ptr %i.av, align 4, !tbaa !151
  %.not378 = icmp eq i32 %i.do, 1
  br i1 %.not378, label %.thread470, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.dp = ptrtoint ptr %.0558 to i64
  %i.dq = sub i64 %i.ad, %i.dp                    ; 2 uses
  %.not379 = icmp ult i64 %i.dq, %i.dn
  br i1 %.not379, label %.thread470, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.dr = load i32, ptr %i.am, align 8, !tbaa !43
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #16
  call fastcc void @_ZN11duckdb_zstdL22ZSTD_findFrameSizeInfoEPKvmNS_13ZSTD_format_eE(ptr dead_on_unwind noalias writable align 8 %3, ptr noundef %i.e, i64 noundef %gepdiff, i32 noundef %i.dr)
  %i.ds = load i64, ptr %i.aw, align 8, !tbaa !73 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #16
  %.not380 = icmp ugt i64 %i.ds, %gepdiff
  br i1 %.not380, label %.thread470, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.dt = call fastcc noundef ptr @_ZN11duckdb_zstdL13ZSTD_getDDictEPNS_11ZSTD_DCtx_sE(ptr noundef nonnull %0)
  %i.du = call fastcc noundef i64 @_ZN11duckdb_zstdL25ZSTD_decompressMultiFrameEPNS_11ZSTD_DCtx_sEPvmPKvmS4_mPKNS_12ZSTD_DDict_sE(ptr noundef nonnull %0, ptr noundef %.0558, i64 noundef %i.dq, ptr noundef %i.e, i64 noundef %i.ds, ptr noundef null, i64 noundef 0, ptr noundef %i.dt) ; 3 uses
  %i.dv = icmp ult i64 %i.du, -119
  br i1 %i.dv, label %bb.y, label %_ZN11duckdb_zstdL19ZSTD_checkOutBufferEPKNS_11ZSTD_DCtx_sEPKNS_16ZSTD_outBuffer_sE.exit.thread

bb.y:                                             ; preds = %bb.x
  %i.dw = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.ds
  %.not382 = icmp eq ptr %.0558, null
  %i.dx = getelementptr inbounds nuw i8, ptr %.0558, i64 %i.du
  %i.dy = select i1 %.not382, ptr null, ptr %i.dx
  store i64 0, ptr %i.ax, align 8, !tbaa !93
  br label %.loopexit.sink.split

.thread470:                                       ; preds = %bb.w, %bb.v, %bb.u, %bb.t
  %i.dz = load i32, ptr %i.s, align 8, !tbaa !45
  %i.ea = icmp eq i32 %i.dz, 1
end_hunk_1
