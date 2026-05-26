inline.NumInlined: 231
inline.NumDeleted: 51
begin_hunk_0_@_ZN11duckdb_zstd25ZSTD_findDecompressedSizeEPKvm:bb.a
  %.not77 = icmp ugt i64 %i.i, %.04071
  %or.cond = select i1 %i.g, i1 true, i1 %.not77
  br i1 %or.cond, label %.thread59, label %bb.h, !llvm.loop !71

bb.e:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #16
  %i.j = call noundef i64 @_ZN11duckdb_zstd28ZSTD_getFrameHeader_advancedEPNS_16ZSTD_frameHeaderEPKvmNS_13ZSTD_format_eE(ptr noundef nonnull %3, ptr noundef nonnull readonly %.03272, i64 noundef %.04071, i32 noundef 0)
  %.not.i = icmp eq i64 %i.j, 0
  %i.k = load i32, ptr %i.a, align 4
  %i.l = icmp eq i32 %i.k, 1
  %i.m = load i64, ptr %3, align 8
  %spec.select.i = select i1 %i.l, i64 0, i64 %i.m
  %.0.i = select i1 %.not.i, i64 %spec.select.i, i64 -2 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #16
  %i.n = icmp ugt i64 %.0.i, -3
  br i1 %i.n, label %.thread59, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.o = add i64 %.0.i, %.04470                   ; 2 uses
  %.not65 = icmp ult i64 %i.o, %.04470
  br i1 %.not65, label %.thread59, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #16
  call fastcc void @_ZN11duckdb_zstdL22ZSTD_findFrameSizeInfoEPKvmNS_13ZSTD_format_eE(ptr dead_on_unwind noalias writable align 8 %2, ptr noundef nonnull %.03272, i64 noundef %.04071, i32 noundef 0)
  %i.p = load i64, ptr %i.b, align 8, !tbaa !73   ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #16
  %i.q = icmp ult i64 %i.p, -119
  br i1 %i.q, label %bb.h, label %.thread59

bb.h:                                             ; preds = %bb.d, %bb.g
  %.246 = phi i64 [ %.04470, %bb.d ], [ %i.o, %bb.g ] ; 2 uses
  %..i.pn = phi i64 [ %i.i, %bb.d ], [ %i.p, %bb.g ] ; 2 uses
  %.335 = getelementptr inbounds nuw i8, ptr %.03272, i64 %..i.pn
  %.343 = sub i64 %.04071, %..i.pn                ; 3 uses
  %.not = icmp ult i64 %.343, 5
  br i1 %.not, label %._crit_edge, label %bb.b

._crit_edge:                                      ; preds = %bb.h, %bb.a
  %.044.lcssa = phi i64 [ 0, %bb.a ], [ %.246, %bb.h ]
  %.040.lcssa = phi i64 [ %1, %bb.a ], [ %.343, %bb.h ]
  %.not50 = icmp eq i64 %.040.lcssa, 0
  %.044.53 = select i1 %.not50, i64 %.044.lcssa, i64 -2
  br label %.thread59

.thread59:                                        ; preds = %bb.e, %bb.d, %bb.c, %bb.g, %bb.f, %._crit_edge
  %.5 = phi i64 [ %.044.53, %._crit_edge ], [ -2, %bb.c ], [ %.0.i, %bb.e ], [ -2, %bb.g ], [ -2, %bb.f ], [ -2, %bb.d ]
  ret i64 %.5
}

; Function Attrs: mustprogress uwtable
define noundef i64 @_ZN11duckdb_zstd28ZSTD_findFrameCompressedSizeEPKvm(ptr noundef %0, i64 noundef %1) local_unnamed_addr #0 {
bb.a:
  %2 = alloca %"struct.duckdb_zstd::ZSTD_frameSizeInfo", align 8 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #16
  call fastcc void @_ZN11duckdb_zstdL22ZSTD_findFrameSizeInfoEPKvmNS_13ZSTD_format_eE(ptr dead_on_unwind noalias writable align 8 %2, ptr noundef %0, i64 noundef %1, i32 noundef 0)
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !73
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #16
  ret i64 %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define noundef i64 @_ZN11duckdb_zstd24ZSTD_getDecompressedSizeEPKvm(ptr noundef readonly captures(address_is_null) %0, i64 noundef %1) local_unnamed_addr #6 {
bb.a:
  %2 = alloca %"struct.duckdb_zstd::ZSTD_frameHeader", align 8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #16
  %i.a = call noundef i64 @_ZN11duckdb_zstd28ZSTD_getFrameHeader_advancedEPNS_16ZSTD_frameHeaderEPKvmNS_13ZSTD_format_eE(ptr noundef nonnull %2, ptr noundef readonly %0, i64 noundef %1, i32 noundef 0)
  %.not.i = icmp eq i64 %i.a, 0
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 20
  %i.c = load i32, ptr %i.b, align 4
  %i.d = icmp eq i32 %i.c, 1
  %i.e = load i64, ptr %2, align 8
  %spec.select.i = select i1 %i.d, i64 0, i64 %i.e
  %.0.i = select i1 %.not.i, i64 %spec.select.i, i64 -2 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #16
  %i.f = icmp ugt i64 %.0.i, -3
  %i.g = select i1 %i.f, i64 0, i64 %.0.i
  ret i64 %i.g
}

; Function Attrs: mustprogress uwtable
define noundef i64 @_ZN11duckdb_zstd20ZSTD_decompressBoundEPKvm(ptr noundef %0, i64 noundef %1) local_unnamed_addr #0 {
bb.a:
  %2 = alloca %"struct.duckdb_zstd::ZSTD_frameSizeInfo", align 8 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 16
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %bb.a
  %.019 = phi i64 [ %1, %bb.a ], [ %i.h, %bb.c ]  ; 3 uses
  %.017 = phi i64 [ 0, %bb.a ], [ %i.i, %bb.c ]   ; 2 uses
  %.015 = phi ptr [ %0, %bb.a ], [ %i.g, %bb.c ]  ; 2 uses
  %.not = icmp eq i64 %.019, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #16
  call fastcc void @_ZN11duckdb_zstdL22ZSTD_findFrameSizeInfoEPKvmNS_13ZSTD_format_eE(ptr dead_on_unwind noalias writable align 8 %2, ptr noundef %.015, i64 noundef %.019, i32 noundef 0)
  %i.c = load i64, ptr %i.a, align 8, !tbaa !73   ; 3 uses
  %i.d = load i64, ptr %i.b, align 8, !tbaa !75   ; 2 uses
  %i.e = icmp ult i64 %i.c, -119
  %i.f = icmp ne i64 %i.d, -2
  %or.cond.not = select i1 %i.e, i1 %i.f, i1 false
  %i.g = getelementptr inbounds nuw i8, ptr %.015, i64 %i.c
  %i.h = sub i64 %.019, %i.c
  %i.i = add i64 %i.d, %.017
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #16
  br i1 %or.cond.not, label %bb.b, label %bb.d, !llvm.loop !76

bb.d:                                             ; preds = %bb.b, %bb.c
  %.2 = phi i64 [ -2, %bb.c ], [ %.017, %bb.b ]
  ret i64 %.2
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN11duckdb_zstdL22ZSTD_findFrameSizeInfoEPKvmNS_13ZSTD_format_eE(ptr dead_on_unwind noalias nonnull writable writeonly align 8 captures(none) %0, ptr noundef %1, i64 noundef %2, i32 noundef %3) unnamed_addr #0 {
bb.a:
  %4 = alloca %"struct.duckdb_zstd::ZSTD_frameHeader", align 8 ; 7 uses
  %5 = alloca %"struct.duckdb_zstd::blockProperties_t", align 4 ; 7 uses
  %i.a = icmp eq i32 %3, 0
  %i.b = icmp ugt i64 %2, 7
  %or.cond = and i1 %i.b, %i.a
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %.val = load i32, ptr %1, align 1, !tbaa !3
  %i.c = and i32 %.val, -16
  %i.d = icmp eq i32 %i.c, 407710288
  br i1 %i.d, label %_ZN11duckdb_zstdL22readSkippableFrameSizeEPKvm.exit, label %bb.c

_ZN11duckdb_zstdL22readSkippableFrameSizeEPKvm.exit: ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 4
  %.val.i = load i32, ptr %i.e, align 1, !tbaa !3 ; 2 uses
  %i.f = icmp ugt i32 %.val.i, -9
  %i.g = zext i32 %.val.i to i64
  %i.h = add nuw nsw i64 %i.g, 8                  ; 2 uses
  %i.i = icmp ugt i64 %i.h, %2
  %..i = select i1 %i.i, i64 -72, i64 %i.h
  %.1.i = select i1 %i.f, i64 -14, i64 %..i
  store i64 0, ptr %0, align 8, !tbaa !61
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.1.i, ptr %.sroa.6.0..sroa_idx, align 8, !tbaa !61
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %.sroa.8.0..sroa_idx, align 8, !tbaa !77
  br label %bb.p

bb.c:                                             ; preds = %bb.b, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #16
  %i.j = call noundef i64 @_ZN11duckdb_zstd28ZSTD_getFrameHeader_advancedEPNS_16ZSTD_frameHeaderEPKvmNS_13ZSTD_format_eE(ptr noundef nonnull %4, ptr noundef %1, i64 noundef %2, i32 noundef %3) ; 3 uses
  %i.k = icmp ult i64 %i.j, -119
  br i1 %i.k, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.j, ptr %i.l, align 8, !tbaa !73, !alias.scope !78
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 -2, ptr %i.m, align 8, !tbaa !75, !alias.scope !78
  br label %.critedge

bb.e:                                             ; preds = %bb.c
  %.not51 = icmp eq i64 %i.j, 0
  br i1 %.not51, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 -72, ptr %i.n, align 8, !tbaa !73, !alias.scope !81
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 -2, ptr %i.o, align 8, !tbaa !75, !alias.scope !81
  br label %.critedge

bb.g:                                             ; preds = %bb.e
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.q = load i32, ptr %i.p, align 8, !tbaa !64
  %i.r = zext i32 %i.q to i64                     ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 %i.r ; 2 uses
  %i.t = sub i64 %2, %i.r                         ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #16
  %i.u = call noundef i64 @_ZN11duckdb_zstd18ZSTD_getcBlockSizeEPKvmPNS_17blockProperties_tE(ptr noundef %i.s, i64 noundef %i.t, ptr noundef nonnull %5) ; 3 uses
  %i.v = icmp ult i64 %i.u, -119
  br i1 %i.v, label %.lr.ph, label %.thread

.lr.ph:                                           ; preds = %bb.g
  %i.w = getelementptr inbounds nuw i8, ptr %5, i64 4
  br label %bb.h

bb.h:                                             ; preds = %.lr.ph, %bb.j
  %i.x = phi i64 [ %i.u, %.lr.ph ], [ %i.ag, %bb.j ]
  %.075 = phi i64 [ 0, %.lr.ph ], [ %i.ac, %bb.j ]
  %.04274 = phi i64 [ %i.t, %.lr.ph ], [ %i.ab, %bb.j ] ; 2 uses
  %.04473 = phi ptr [ %i.s, %.lr.ph ], [ %i.aa, %bb.j ]
  %i.y = add nuw i64 %i.x, 3                      ; 3 uses
  %i.z = icmp ugt i64 %i.y, %.04274
  br i1 %i.z, label %.thread, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.aa = getelementptr inbounds nuw i8, ptr %.04473, i64 %i.y ; 4 uses
  %i.ab = sub nuw i64 %.04274, %i.y               ; 3 uses
  %i.ac = add i64 %.075, 1                        ; 3 uses
  %i.ad = load i32, ptr %i.w, align 4, !tbaa !84
  %.fr = freeze i32 %i.ad
  %.not53 = icmp eq i32 %.fr, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #16
  br i1 %.not53, label %bb.j, label %bb.k

.thread:                                          ; preds = %bb.h, %bb.j, %bb.g
  %.lcssa.sink = phi i64 [ %i.u, %bb.g ], [ %i.ag, %bb.j ], [ -72, %bb.h ]
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.lcssa.sink, ptr %i.ae, align 8, !tbaa !73
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 16
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
end_hunk_0
begin_hunk_1_@_ZN11duckdb_zstdL25ZSTD_decompressMultiFrameEPNS_11ZSTD_DCtx_sEPvmPKvmS4_mPKNS_12ZSTD_DDict_sE:bb.a
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
    i32 2, label %_ZN11duckdb_zstdL17ZSTD_copyRawBlockEPvmPKvm.exit.i
    i32 0, label %bb.s
    i32 1, label %bb.w
  ]

bb.s:                                             ; preds = %bb.r
  %i.dh = sub i64 %i.cw, %i.dd
  %i.di = icmp ugt i64 %i.cx, %i.dh
  br i1 %i.di, label %.thread171.i, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.dj = icmp eq ptr %.0114190.i, null
  br i1 %i.dj, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.dk = icmp eq i64 %i.cx, 0
  br i1 %i.dk, label %_ZN11duckdb_zstdL17ZSTD_copyRawBlockEPvmPKvm.exit.thread.i, label %.thread171.i

bb.v:                                             ; preds = %bb.t
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %.0114190.i, ptr nonnull readonly align 1 %i.cy, i64 %i.cx, i1 false)
  br label %_ZN11duckdb_zstdL17ZSTD_copyRawBlockEPvmPKvm.exit.thread.i

bb.w:                                             ; preds = %bb.r
  %i.dl = ptrtoint ptr %.0122.i to i64
  %i.dm = sub i64 %i.dl, %i.dd
  %i.dn = load i8, ptr %i.cy, align 1, !tbaa !60
  %i.do = load i32, ptr %i.u, align 4, !tbaa !97
  %.fr224.i = freeze i32 %i.do                    ; 2 uses
  %i.dp = zext i32 %.fr224.i to i64               ; 3 uses
  %i.dq = icmp ult i64 %i.dm, %i.dp
  br i1 %i.dq, label %.thread171.i, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.dr = icmp eq ptr %.0114190.i, null
  br i1 %i.dr, label %bb.y, label %_ZN11duckdb_zstdL17ZSTD_copyRawBlockEPvmPKvm.exit.thread164.i

bb.y:                                             ; preds = %bb.x
  %i.ds = icmp eq i32 %.fr224.i, 0
  br i1 %i.ds, label %_ZN11duckdb_zstdL17ZSTD_copyRawBlockEPvmPKvm.exit.thread.i, label %.thread171.i

_ZN11duckdb_zstdL17ZSTD_copyRawBlockEPvmPKvm.exit.thread164.i: ; preds = %bb.x
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %.0114190.i, i8 %i.dn, i64 %i.dp, i1 false)
  br label %_ZN11duckdb_zstdL17ZSTD_copyRawBlockEPvmPKvm.exit.thread.i

_ZN11duckdb_zstdL17ZSTD_copyRawBlockEPvmPKvm.exit.i: ; preds = %bb.r
  %i.dt = ptrtoint ptr %.0122.i to i64
  %i.du = sub i64 %i.dt, %i.dd
  %i.dv = call noundef i64 @_ZN11duckdb_zstd29ZSTD_decompressBlock_internalEPNS_11ZSTD_DCtx_sEPvmPKvmNS_19streaming_operationE(ptr noundef nonnull %0, ptr noundef %.0114190.i, i64 noundef %i.du, ptr noundef nonnull %i.cy, i64 noundef %i.cx, i32 noundef 0) ; 3 uses
  %i.dw = icmp ult i64 %i.dv, -119
  br i1 %i.dw, label %_ZN11duckdb_zstdL17ZSTD_copyRawBlockEPvmPKvm.exit.thread.i, label %.thread171.i

_ZN11duckdb_zstdL17ZSTD_copyRawBlockEPvmPKvm.exit.thread.i: ; preds = %_ZN11duckdb_zstdL17ZSTD_copyRawBlockEPvmPKvm.exit.i, %_ZN11duckdb_zstdL17ZSTD_copyRawBlockEPvmPKvm.exit.thread164.i, %bb.y, %bb.v, %bb.u
  %.0121168.i = phi i64 [ %i.dp, %_ZN11duckdb_zstdL17ZSTD_copyRawBlockEPvmPKvm.exit.thread164.i ], [ %i.dv, %_ZN11duckdb_zstdL17ZSTD_copyRawBlockEPvmPKvm.exit.i ], [ 0, %bb.y ], [ %i.cx, %bb.v ], [ 0, %bb.u ] ; 2 uses
  %i.dx = load i32, ptr %i.v, align 8, !tbaa !98
  %.not141.i = icmp eq i32 %i.dx, 0
  br i1 %.not141.i, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %_ZN11duckdb_zstdL17ZSTD_copyRawBlockEPvmPKvm.exit.thread.i
  %i.dy = call noundef i32 @_ZN11duckdb_zstd12XXH64_updateEPNS_13XXH64_state_sEPKvm(ptr noundef nonnull %i.w, ptr noundef %.0114190.i, i64 noundef %.0121168.i) ; 0 uses
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %_ZN11duckdb_zstdL17ZSTD_copyRawBlockEPvmPKvm.exit.thread.i
  %i.dz = getelementptr inbounds nuw i8, ptr %.0114190.i, i64 %.0121168.i ; 2 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %i.cy, i64 %i.cx ; 5 uses
  %i.eb = sub i64 %i.cz, %i.cx                    ; 5 uses
  %i.ec = load i32, ptr %i.x, align 4, !tbaa !84
  %.fr.i = freeze i32 %i.ec
  %.not143.i = icmp eq i32 %.fr.i, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #16
  br i1 %.not143.i, label %bb.ab, label %bb.ac

.thread171.i:                                     ; preds = %bb.ab, %_ZN11duckdb_zstdL17ZSTD_copyRawBlockEPvmPKvm.exit.i, %bb.y, %bb.w, %bb.u, %bb.s, %bb.r, %bb.q, %bb.p
  %.4.ph.i = phi i64 [ %i.cu, %bb.p ], [ -70, %bb.w ], [ -70, %bb.s ], [ -20, %bb.r ], [ %i.dv, %_ZN11duckdb_zstdL17ZSTD_copyRawBlockEPvmPKvm.exit.i ], [ %i.ed, %bb.ab ], [ -72, %bb.q ], [ -74, %bb.y ], [ -74, %bb.u ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #16
  br label %_ZN11duckdb_zstdL20ZSTD_decompressFrameEPNS_11ZSTD_DCtx_sEPvmPPKvPm.exit

bb.ab:                                            ; preds = %bb.aa
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #16
  %i.ed = call noundef i64 @_ZN11duckdb_zstd18ZSTD_getcBlockSizeEPKvmPNS_17blockProperties_tE(ptr noundef nonnull %i.ea, i64 noundef %i.eb, ptr noundef nonnull %9) ; 3 uses
  %i.ee = icmp ult i64 %i.ed, -119
  br i1 %i.ee, label %bb.q, label %.thread171.i

bb.ac:                                            ; preds = %bb.aa
  %i.ef = load i64, ptr %i.y, align 8, !tbaa !99  ; 2 uses
  %.not144.i = icmp eq i64 %i.ef, -1
  %i.eg = ptrtoint ptr %i.dz to i64
  %i.eh = ptrtoint ptr %.050.ph138 to i64
  %i.ei = sub i64 %i.eg, %i.eh                    ; 4 uses
  %.not145.i = icmp eq i64 %i.ei, %i.ef
  %or.cond151.i = select i1 %.not144.i, i1 true, i1 %.not145.i
  br i1 %or.cond151.i, label %bb.ad, label %_ZN11duckdb_zstdL20ZSTD_decompressFrameEPNS_11ZSTD_DCtx_sEPvmPPKvPm.exit

bb.ad:                                            ; preds = %bb.ac
  %i.ej = load i32, ptr %i.z, align 8, !tbaa !100
  %.not146.i = icmp eq i32 %i.ej, 0
  br i1 %.not146.i, label %bb.ai, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.ek = icmp ult i64 %i.eb, 4
  br i1 %i.ek, label %_ZN11duckdb_zstdL20ZSTD_decompressFrameEPNS_11ZSTD_DCtx_sEPvmPPKvPm.exit, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.el = load i32, ptr %i.aa, align 4, !tbaa !46
  %.not147.i = icmp eq i32 %i.el, 0
  br i1 %.not147.i, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.em = call noundef i64 @_ZN11duckdb_zstd12XXH64_digestEPKNS_13XXH64_state_sE(ptr noundef nonnull %i.w)
  %i.en = trunc i64 %i.em to i32
  %.2112.val.i = load i32, ptr %i.ea, align 1, !tbaa !3
  %.not148.i = icmp eq i32 %.2112.val.i, %i.en
  br i1 %.not148.i, label %bb.ah, label %_ZN11duckdb_zstdL20ZSTD_decompressFrameEPNS_11ZSTD_DCtx_sEPvmPPKvPm.exit

bb.ah:                                            ; preds = %bb.ag, %bb.af
  %i.eo = getelementptr inbounds nuw i8, ptr %i.ea, i64 4
  %i.ep = add i64 %i.eb, -4
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ad
  %.3120.i = phi i64 [ %i.ep, %bb.ah ], [ %i.eb, %bb.ad ] ; 2 uses
  %.3113.i = phi ptr [ %i.eo, %bb.ah ], [ %i.ea, %bb.ad ] ; 3 uses
  %i.eq = ptrtoint ptr %.3113.i to i64
  %i.er = ptrtoint ptr %.us-phi to i64
  %i.es = sub i64 %i.eq, %i.er
  %i.et = load i64, ptr %i.i, align 8, !tbaa !92  ; 2 uses
  %i.eu = icmp ne i64 %i.et, 0
  %or.cond.i.i = and i1 %i.ab, %i.eu
  br i1 %or.cond.i.i, label %bb.aj, label %_ZN11duckdb_zstdL20ZSTD_decompressFrameEPNS_11ZSTD_DCtx_sEPvmPPKvPm.exit

bb.aj:                                            ; preds = %bb.ai
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.ac, i8 0, i64 48, i1 false)
  store i32 10506, ptr %8, align 8, !tbaa !101
  store i32 0, ptr %i.ad, align 4, !tbaa !106
  %i.ev = load ptr, ptr %i.ae, align 8, !tbaa !107 ; 2 uses
  %.not.i156.i = icmp eq ptr %i.ev, null
  br i1 %.not.i156.i, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.ew = call noundef i32 @_ZN11duckdb_zstd24ZSTD_getDictID_fromDDictEPKNS_12ZSTD_DDict_sE(ptr noundef nonnull %i.ev)
  store i32 %i.ew, ptr %i.ac, align 8, !tbaa !108
  %i.ex = load ptr, ptr %i.ae, align 8, !tbaa !107
  %i.ey = call noundef i64 @_ZN11duckdb_zstd19ZSTD_DDict_dictSizeEPKNS_12ZSTD_DDict_sE(ptr noundef %i.ex)
  store i64 %i.ey, ptr %i.af, align 8, !tbaa !109
  %i.ez = load i32, ptr %i.h, align 4, !tbaa !33
  store i32 %i.ez, ptr %i.ag, align 4, !tbaa !110
  %.pre.i.i = load i64, ptr %i.i, align 8, !tbaa !92
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.aj
  %i.fa = phi i64 [ %.pre.i.i, %bb.ak ], [ %i.et, %bb.aj ]
  store i64 %i.ei, ptr %i.ah, align 8, !tbaa !111
  store i64 %i.es, ptr %i.ai, align 8, !tbaa !112
  store ptr %0, ptr %i.aj, align 8, !tbaa !113
  call void @_ZN11duckdb_zstd25ZSTD_trace_decompress_endEyPKNS_10ZSTD_TraceE(i64 noundef %i.fa, ptr noundef nonnull %8)
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #16
  br label %_ZN11duckdb_zstdL20ZSTD_decompressFrameEPNS_11ZSTD_DCtx_sEPvmPPKvPm.exit

_ZN11duckdb_zstdL20ZSTD_decompressFrameEPNS_11ZSTD_DCtx_sEPvmPPKvPm.exit: ; preds = %bb.ai, %bb.al, %bb.k, %_ZN11duckdb_zstdL29ZSTD_frameHeaderSize_internalEPKvmNS_13ZSTD_format_eE.exit.i, %bb.l, %bb.m, %.thread171.i, %bb.ac, %bb.ae, %bb.ag
  %.392 = phi ptr [ %.us-phi, %bb.k ], [ %.us-phi, %bb.l ], [ %.us-phi, %.thread171.i ], [ %.us-phi, %_ZN11duckdb_zstdL29ZSTD_frameHeaderSize_internalEPKvmNS_13ZSTD_format_eE.exit.i ], [ %.us-phi, %bb.ae ], [ %.us-phi, %bb.ag ], [ %.us-phi, %bb.ac ], [ %.us-phi, %bb.m ], [ %.3113.i, %bb.al ], [ %.3113.i, %bb.ai ]
  %.388 = phi i64 [ %.us-phi132, %bb.k ], [ %.us-phi132, %bb.l ], [ %.us-phi132, %.thread171.i ], [ %.us-phi132, %_ZN11duckdb_zstdL29ZSTD_frameHeaderSize_internalEPKvmNS_13ZSTD_format_eE.exit.i ], [ %.us-phi132, %bb.ae ], [ %.us-phi132, %bb.ag ], [ %.us-phi132, %bb.ac ], [ %.us-phi132, %bb.m ], [ %.3120.i, %bb.al ], [ %.3120.i, %bb.ai ] ; 3 uses
  %.6.i = phi i64 [ -72, %bb.k ], [ -72, %bb.l ], [ %.4.ph.i, %.thread171.i ], [ %i.ck, %_ZN11duckdb_zstdL29ZSTD_frameHeaderSize_internalEPKvmNS_13ZSTD_format_eE.exit.i ], [ -22, %bb.ae ], [ -22, %bb.ag ], [ -20, %bb.ac ], [ %i.co, %bb.m ], [ %i.ei, %bb.al ], [ %i.ei, %bb.ai ] ; 5 uses
  %i.fb = call noundef i32 @_ZN11duckdb_zstd17ZSTD_getErrorCodeEm(i64 noundef %.6.i)
  %i.fc = icmp eq i32 %i.fb, 10
  %or.cond6 = and i1 %i.am, %i.fc
  br i1 %or.cond6, label %.thread, label %bb.am

bb.am:                                            ; preds = %_ZN11duckdb_zstdL20ZSTD_decompressFrameEPNS_11ZSTD_DCtx_sEPvmPPKvPm.exit
  %i.fd = icmp ult i64 %.6.i, -119
  br i1 %i.fd, label %.outer, label %.thread

.outer:                                           ; preds = %bb.am
  %i.fe = getelementptr inbounds nuw i8, ptr %.050.ph138, i64 %.6.i ; 2 uses
  %i.ff = sub i64 %.053.ph137, %.6.i
  %i.fg = load i32, ptr %i.c, align 8, !tbaa !43
  %i.fh = icmp eq i32 %i.fg, 0                    ; 2 uses
  %i.fi = select i1 %i.fh, i64 5, i64 1           ; 2 uses
  %.not67126 = icmp ult i64 %.388, %i.fi
  br i1 %.not67126, label %.outer._crit_edge, label %.lr.ph, !llvm.loop !114

.outer._crit_edge:                                ; preds = %.outer, %bb.g, %bb.c
  %.050.ph.lcssa125 = phi ptr [ %.050.ph138, %bb.g ], [ %1, %bb.c ], [ %i.fe, %.outer ]
  %.086.lcssa = phi i64 [ %i.ay, %bb.g ], [ %4, %bb.c ], [ %.388, %.outer ]
  %.not68 = icmp eq i64 %.086.lcssa, 0
  br i1 %.not68, label %bb.an, label %.thread

bb.an:                                            ; preds = %.outer._crit_edge
  %i.fj = ptrtoint ptr %.050.ph.lcssa125 to i64
  %i.fk = ptrtoint ptr %1 to i64
  %i.fl = sub i64 %i.fj, %i.fk
  br label %.thread

.thread:                                          ; preds = %bb.am, %_ZN11duckdb_zstdL20ZSTD_decompressFrameEPNS_11ZSTD_DCtx_sEPvmPPKvPm.exit, %bb.j, %bb.f, %bb.e, %_ZN11duckdb_zstdL22readSkippableFrameSizeEPKvm.exit, %.outer._crit_edge, %bb.an
  %.8 = phi i64 [ %i.fl, %bb.an ], [ -72, %.outer._crit_edge ], [ -14, %bb.f ], [ -72, %bb.e ], [ %..i, %_ZN11duckdb_zstdL22readSkippableFrameSizeEPKvm.exit ], [ %i.bk, %bb.j ], [ %.6.i, %bb.am ], [ -72, %_ZN11duckdb_zstdL20ZSTD_decompressFrameEPNS_11ZSTD_DCtx_sEPvmPPKvPm.exit ]
  ret i64 %.8
}

; Function Attrs: mustprogress uwtable
define noundef i64 @_ZN11duckdb_zstd19ZSTD_decompressDCtxEPNS_11ZSTD_DCtx_sEPvmPKvm(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 30208 ; 3 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !34
  switch i32 %i.b, label %bb.b [
    i32 1, label %bb.d
    i32 -1, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 30184 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !7
  %i.e = tail call noundef i64 @_ZN11duckdb_zstd14ZSTD_freeDDictEPNS_12ZSTD_DDict_sE(ptr noundef %i.d) ; 0 uses
  store i32 0, ptr %i.a, align 8, !tbaa !34
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.c, i8 0, i64 16, i1 false)
  br label %_ZN11duckdb_zstdL13ZSTD_getDDictEPNS_11ZSTD_DCtx_sE.exit

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 30192
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !107
  br label %_ZN11duckdb_zstdL13ZSTD_getDDictEPNS_11ZSTD_DCtx_sE.exit

bb.d:                                             ; preds = %bb.a
  store i32 0, ptr %i.a, align 8, !tbaa !34
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 30192
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !107
  br label %_ZN11duckdb_zstdL13ZSTD_getDDictEPNS_11ZSTD_DCtx_sE.exit

_ZN11duckdb_zstdL13ZSTD_getDDictEPNS_11ZSTD_DCtx_sE.exit: ; preds = %bb.b, %bb.c, %bb.d
  %.0.i = phi ptr [ null, %bb.b ], [ %i.i, %bb.d ], [ %i.g, %bb.c ]
  %i.j = tail call fastcc noundef i64 @_ZN11duckdb_zstdL25ZSTD_decompressMultiFrameEPNS_11ZSTD_DCtx_sEPvmPKvmS4_mPKNS_12ZSTD_DDict_sE(ptr noundef nonnull %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4, ptr noundef null, i64 noundef 0, ptr noundef %.0.i)
  ret i64 %i.j
}

; Function Attrs: mustprogress uwtable
define noundef i64 @_ZN11duckdb_zstd26ZSTD_decompress_usingDDictEPNS_11ZSTD_DCtx_sEPvmPKvmPKNS_12ZSTD_DDict_sE(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4, ptr noundef %5) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call fastcc noundef i64 @_ZN11duckdb_zstdL25ZSTD_decompressMultiFrameEPNS_11ZSTD_DCtx_sEPvmPKvmS4_mPKNS_12ZSTD_DDict_sE(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4, ptr noundef null, i64 noundef 0, ptr noundef %5)
  ret i64 %i.a
}

; Function Attrs: mustprogress uwtable
define internal fastcc noundef ptr @_ZN11duckdb_zstdL13ZSTD_getDDictEPNS_11ZSTD_DCtx_sE(ptr noundef captures(none) %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 30208 ; 3 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !34
  switch i32 %i.b, label %bb.b [
    i32 1, label %bb.d
    i32 -1, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 30184 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !7
  %i.e = tail call noundef i64 @_ZN11duckdb_zstd14ZSTD_freeDDictEPNS_12ZSTD_DDict_sE(ptr noundef %i.d) ; 0 uses
  store i32 0, ptr %i.a, align 8, !tbaa !34
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.c, i8 0, i64 16, i1 false)
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 30192
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !107
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  store i32 0, ptr %i.a, align 8, !tbaa !34
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 30192
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !107
  br label %bb.e

end_hunk_1
begin_hunk_2_@_ZN11duckdb_zstd23ZSTD_decompressContinueEPNS_11ZSTD_DCtx_sEPvmPKvm:bb.a
  %i.bz = icmp eq ptr %1, null
  br i1 %i.bz, label %bb.aa, label %_ZN11duckdb_zstdL17ZSTD_copyRawBlockEPvmPKvm.exit

bb.aa:                                            ; preds = %bb.z
  %i.ca = icmp eq i64 %4, 0
  br i1 %i.ca, label %.thread, label %_ZN11duckdb_zstdL17ZSTD_copyRawBlockEPvmPKvm.exit.thread

_ZN11duckdb_zstdL17ZSTD_copyRawBlockEPvmPKvm.exit: ; preds = %bb.z
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %1, ptr readonly align 1 %3, i64 %4, i1 false)
  %i.cb = icmp ult i64 %4, -119
  br i1 %i.cb, label %.thread, label %_ZN11duckdb_zstdL17ZSTD_copyRawBlockEPvmPKvm.exit.thread

.thread:                                          ; preds = %_ZN11duckdb_zstdL17ZSTD_copyRawBlockEPvmPKvm.exit, %bb.aa
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 29920 ; 2 uses
  %i.cd = load i64, ptr %i.cc, align 8, !tbaa !93
  %i.ce = sub i64 %i.cd, %4                       ; 2 uses
  store i64 %i.ce, ptr %i.cc, align 8, !tbaa !93
  br label %bb.af

bb.ab:                                            ; preds = %bb.w
  %i.cf = load i8, ptr %3, align 1, !tbaa !60
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 30160
  %i.ch = load i64, ptr %i.cg, align 8, !tbaa !119 ; 4 uses
  %i.ci = icmp ugt i64 %i.ch, %2
  br i1 %i.ci, label %_ZN11duckdb_zstdL16ZSTD_setRleBlockEPvmhm.exit, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.cj = icmp eq ptr %1, null
  br i1 %i.cj, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.ck = icmp eq i64 %i.ch, 0
  %..i167 = select i1 %i.ck, i64 0, i64 -74
  br label %_ZN11duckdb_zstdL16ZSTD_setRleBlockEPvmhm.exit

bb.ae:                                            ; preds = %bb.ac
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %1, i8 %i.cf, i64 %i.ch, i1 false)
  br label %_ZN11duckdb_zstdL16ZSTD_setRleBlockEPvmhm.exit

_ZN11duckdb_zstdL16ZSTD_setRleBlockEPvmhm.exit:   ; preds = %bb.ae, %bb.ad, %bb.ab, %bb.x
  %.0140 = phi i64 [ %i.bx, %bb.x ], [ %i.ch, %bb.ae ], [ %..i167, %bb.ad ], [ -70, %bb.ab ] ; 3 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 29920
  store i64 0, ptr %i.cl, align 8, !tbaa !93
  %i.cm = icmp ult i64 %.0140, -119
  br i1 %i.cm, label %bb.af, label %_ZN11duckdb_zstdL17ZSTD_copyRawBlockEPvmPKvm.exit.thread

bb.af:                                            ; preds = %.thread, %_ZN11duckdb_zstdL16ZSTD_setRleBlockEPvmhm.exit
  %.0140193 = phi i64 [ %4, %.thread ], [ %.0140, %_ZN11duckdb_zstdL16ZSTD_setRleBlockEPvmhm.exit ] ; 8 uses
  %i.cn = phi i64 [ %i.ce, %.thread ], [ 0, %_ZN11duckdb_zstdL16ZSTD_setRleBlockEPvmhm.exit ]
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 29928
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 29944
  %i.cq = load i32, ptr %i.cp, align 8, !tbaa !95
  %i.cr = zext i32 %i.cq to i64
  %i.cs = icmp ugt i64 %.0140193, %i.cr
  br i1 %i.cs, label %_ZN11duckdb_zstdL17ZSTD_copyRawBlockEPvmPKvm.exit.thread, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 29984 ; 4 uses
  %i.cu = load i64, ptr %i.ct, align 8, !tbaa !120
  %i.cv = add i64 %i.cu, %.0140193
  store i64 %i.cv, ptr %i.ct, align 8, !tbaa !120
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 30112
  %i.cx = load i32, ptr %i.cw, align 8, !tbaa !98
  %.not147 = icmp eq i32 %i.cx, 0
  br i1 %.not147, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 30008
  %i.cz = tail call noundef i32 @_ZN11duckdb_zstd12XXH64_updateEPNS_13XXH64_state_sEPKvm(ptr noundef nonnull %i.cy, ptr noundef %1, i64 noundef %.0140193) ; 0 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 29920
  %.pre174 = load i64, ptr %.phi.trans.insert, align 8, !tbaa !93
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag
  %i.da = phi i64 [ %.pre174, %bb.ah ], [ %i.cn, %bb.ag ]
  %i.db = getelementptr inbounds nuw i8, ptr %1, i64 %.0140193
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 29888
  store ptr %i.db, ptr %i.dc, align 8, !tbaa !91
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 29920 ; 3 uses
  %.not148 = icmp eq i64 %i.da, 0
  br i1 %.not148, label %bb.aj, label %_ZN11duckdb_zstdL17ZSTD_copyRawBlockEPvmPKvm.exit.thread

bb.aj:                                            ; preds = %bb.ai
  %i.de = load i32, ptr %i.a, align 4, !tbaa !115
  %i.df = icmp eq i32 %i.de, 4
  br i1 %i.df, label %bb.ak, label %bb.ap

bb.ak:                                            ; preds = %bb.aj
  %i.dg = load i64, ptr %i.co, align 8, !tbaa !99 ; 2 uses
  %.not149 = icmp eq i64 %i.dg, -1
  br i1 %.not149, label %bb.am, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.dh = load i64, ptr %i.ct, align 8, !tbaa !120
  %.not150 = icmp eq i64 %i.dh, %i.dg
  br i1 %.not150, label %bb.am, label %_ZN11duckdb_zstdL17ZSTD_copyRawBlockEPvmPKvm.exit.thread

bb.am:                                            ; preds = %bb.al, %bb.ak
  %i.di = getelementptr inbounds nuw i8, ptr %0, i64 29960
  %i.dj = load i32, ptr %i.di, align 8, !tbaa !100
  %.not151 = icmp eq i32 %i.dj, 0
  br i1 %.not151, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %bb.am
  store i64 4, ptr %i.dd, align 8, !tbaa !93
  store i32 5, ptr %i.a, align 4, !tbaa !115
  br label %_ZN11duckdb_zstdL17ZSTD_copyRawBlockEPvmPKvm.exit.thread

bb.ao:                                            ; preds = %bb.am
  %i.dk = load i64, ptr %i.ct, align 8, !tbaa !120
  %i.dl = load i64, ptr %i.i, align 8, !tbaa !117
  tail call fastcc void @_ZN11duckdb_zstdL19ZSTD_DCtx_trace_endEPKNS_11ZSTD_DCtx_sEmmj(ptr noundef nonnull %0, i64 noundef %i.dk, i64 noundef %i.dl, i32 noundef 1)
  store i64 0, ptr %i.dd, align 8, !tbaa !93
  store i32 0, ptr %i.a, align 4, !tbaa !115
  br label %_ZN11duckdb_zstdL17ZSTD_copyRawBlockEPvmPKvm.exit.thread

bb.ap:                                            ; preds = %bb.aj
  store i32 2, ptr %i.a, align 4, !tbaa !115
  store i64 3, ptr %i.dd, align 8, !tbaa !93
  br label %_ZN11duckdb_zstdL17ZSTD_copyRawBlockEPvmPKvm.exit.thread

bb.aq:                                            ; preds = %bb.e
  %i.dm = getelementptr inbounds nuw i8, ptr %0, i64 30112
  %i.dn = load i32, ptr %i.dm, align 8, !tbaa !98
  %.not143 = icmp eq i32 %i.dn, 0
  br i1 %.not143, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.do = getelementptr inbounds nuw i8, ptr %0, i64 30008
  %i.dp = tail call noundef i64 @_ZN11duckdb_zstd12XXH64_digestEPKNS_13XXH64_state_sE(ptr noundef nonnull %i.do)
  %i.dq = trunc i64 %i.dp to i32
  %.val160 = load i32, ptr %3, align 1, !tbaa !3
  %.not144.not = icmp eq i32 %.val160, %i.dq
  br i1 %.not144.not, label %._crit_edge, label %_ZN11duckdb_zstdL17ZSTD_copyRawBlockEPvmPKvm.exit.thread

._crit_edge:                                      ; preds = %bb.ar
  %.pre = load i64, ptr %i.i, align 8, !tbaa !117
  br label %bb.as

bb.as:                                            ; preds = %._crit_edge, %bb.aq
  %i.dr = phi i64 [ %.pre, %._crit_edge ], [ %i.k, %bb.aq ]
  %i.ds = getelementptr inbounds nuw i8, ptr %0, i64 29984
  %i.dt = load i64, ptr %i.ds, align 8, !tbaa !120
  %i.du = getelementptr inbounds nuw i8, ptr %0, i64 95968 ; 2 uses
  %i.dv = load i64, ptr %i.du, align 8, !tbaa !92 ; 2 uses
  %i.dw = icmp ne i64 %i.dv, 0
  %i.dx = icmp ne ptr @_ZN11duckdb_zstd25ZSTD_trace_decompress_endEyPKNS_10ZSTD_TraceE, null
  %or.cond.i = and i1 %i.dx, %i.dw
  br i1 %or.cond.i, label %bb.at, label %_ZN11duckdb_zstdL19ZSTD_DCtx_trace_endEPKNS_11ZSTD_DCtx_sEmmj.exit

bb.at:                                            ; preds = %bb.as
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #16
  %i.dy = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.dy, i8 0, i64 48, i1 false)
  store i32 10506, ptr %5, align 8, !tbaa !101
  %i.dz = getelementptr inbounds nuw i8, ptr %5, i64 4
  store i32 1, ptr %i.dz, align 4, !tbaa !106
  %i.ea = getelementptr inbounds nuw i8, ptr %0, i64 30192 ; 2 uses
  %i.eb = load ptr, ptr %i.ea, align 8, !tbaa !107 ; 2 uses
  %.not.i168 = icmp eq ptr %i.eb, null
  br i1 %.not.i168, label %bb.av, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.ec = tail call noundef i32 @_ZN11duckdb_zstd24ZSTD_getDictID_fromDDictEPKNS_12ZSTD_DDict_sE(ptr noundef nonnull %i.eb)
  store i32 %i.ec, ptr %i.dy, align 8, !tbaa !108
  %i.ed = load ptr, ptr %i.ea, align 8, !tbaa !107
  %i.ee = tail call noundef i64 @_ZN11duckdb_zstd19ZSTD_DDict_dictSizeEPKNS_12ZSTD_DDict_sE(ptr noundef %i.ed)
  %i.ef = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i64 %i.ee, ptr %i.ef, align 8, !tbaa !109
  %i.eg = getelementptr inbounds nuw i8, ptr %0, i64 30204
  %i.eh = load i32, ptr %i.eg, align 4, !tbaa !33
  %i.ei = getelementptr inbounds nuw i8, ptr %5, i64 12
  store i32 %i.eh, ptr %i.ei, align 4, !tbaa !110
  %.pre.i = load i64, ptr %i.du, align 8, !tbaa !92
  br label %bb.av

bb.av:                                            ; preds = %bb.au, %bb.at
  %i.ej = phi i64 [ %.pre.i, %bb.au ], [ %i.dv, %bb.at ]
  %i.ek = getelementptr inbounds nuw i8, ptr %5, i64 24
  store i64 %i.dt, ptr %i.ek, align 8, !tbaa !111
  %i.el = getelementptr inbounds nuw i8, ptr %5, i64 32
  store i64 %i.dr, ptr %i.el, align 8, !tbaa !112
  %i.em = getelementptr inbounds nuw i8, ptr %5, i64 56
  store ptr %0, ptr %i.em, align 8, !tbaa !113
  call void @_ZN11duckdb_zstd25ZSTD_trace_decompress_endEyPKNS_10ZSTD_TraceE(i64 noundef %i.ej, ptr noundef nonnull %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #16
  br label %_ZN11duckdb_zstdL19ZSTD_DCtx_trace_endEPKNS_11ZSTD_DCtx_sEmmj.exit

_ZN11duckdb_zstdL19ZSTD_DCtx_trace_endEPKNS_11ZSTD_DCtx_sEmmj.exit: ; preds = %bb.as, %bb.av
  %i.en = getelementptr inbounds nuw i8, ptr %0, i64 29920
  store i64 0, ptr %i.en, align 8, !tbaa !93
  store i32 0, ptr %i.a, align 4, !tbaa !115
  br label %_ZN11duckdb_zstdL17ZSTD_copyRawBlockEPvmPKvm.exit.thread

bb.aw:                                            ; preds = %bb.e
  %i.eo = getelementptr inbounds nuw i8, ptr %0, i64 95940
  %i.ep = sub i64 8, %4
  %i.eq = getelementptr inbounds nuw i8, ptr %i.eo, i64 %i.ep
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.eq, ptr align 1 %3, i64 %4, i1 false)
  %i.er = getelementptr inbounds nuw i8, ptr %0, i64 95944
  %.val = load i32, ptr %i.er, align 8, !tbaa !3
  %i.es = zext i32 %.val to i64
  %i.et = getelementptr inbounds nuw i8, ptr %0, i64 29920
  store i64 %i.es, ptr %i.et, align 8, !tbaa !93
  store i32 7, ptr %i.a, align 4, !tbaa !115
  br label %_ZN11duckdb_zstdL17ZSTD_copyRawBlockEPvmPKvm.exit.thread

bb.ax:                                            ; preds = %bb.e
  %i.eu = getelementptr inbounds nuw i8, ptr %0, i64 29920
  store i64 0, ptr %i.eu, align 8, !tbaa !93
  store i32 0, ptr %i.a, align 4, !tbaa !115
  br label %_ZN11duckdb_zstdL17ZSTD_copyRawBlockEPvmPKvm.exit.thread

_ZN11duckdb_zstdL17ZSTD_copyRawBlockEPvmPKvm.exit.thread: ; preds = %bb.aa, %bb.y, %_ZN11duckdb_zstdL29ZSTD_frameHeaderSize_internalEPKvmNS_13ZSTD_format_eE.exit, %_ZN11duckdb_zstdL29ZSTD_frameHeaderSize_internalEPKvmNS_13ZSTD_format_eE.exit.thread, %bb.ar, %bb.k, %bb.e, %_ZN11duckdb_zstdL16ZSTD_setRleBlockEPvmhm.exit, %_ZN11duckdb_zstdL17ZSTD_copyRawBlockEPvmPKvm.exit, %bb.w, %bb.af, %bb.ai, %bb.al, %bb.an, %bb.ao, %bb.ap, %_ZN11duckdb_zstdL41ZSTD_nextSrcSizeToDecompressWithInputSizeEPNS_11ZSTD_DCtx_sEm.exit, %bb.ax, %bb.aw, %_ZN11duckdb_zstdL19ZSTD_DCtx_trace_endEPKNS_11ZSTD_DCtx_sEmmj.exit, %bb.v, %bb.l, %bb.j, %bb.h
  %.7 = phi i64 [ 0, %bb.ax ], [ %.0140193, %bb.ap ], [ 0, %bb.h ], [ -1, %bb.e ], [ 0, %bb.j ], [ 0, %bb.l ], [ %i.ba, %bb.k ], [ %.1, %bb.v ], [ -72, %_ZN11duckdb_zstdL41ZSTD_nextSrcSizeToDecompressWithInputSizeEPNS_11ZSTD_DCtx_sEm.exit ], [ 0, %_ZN11duckdb_zstdL19ZSTD_DCtx_trace_endEPKNS_11ZSTD_DCtx_sEmmj.exit ], [ -22, %bb.ar ], [ 0, %bb.aw ], [ %4, %_ZN11duckdb_zstdL17ZSTD_copyRawBlockEPvmPKvm.exit ], [ -20, %bb.w ], [ -20, %bb.af ], [ %.0140193, %bb.ai ], [ -20, %bb.al ], [ %.0140, %_ZN11duckdb_zstdL16ZSTD_setRleBlockEPvmhm.exit ], [ %.0140193, %bb.an ], [ %.0140193, %bb.ao ], [ -72, %_ZN11duckdb_zstdL29ZSTD_frameHeaderSize_internalEPKvmNS_13ZSTD_format_eE.exit.thread ], [ %i.ap, %_ZN11duckdb_zstdL29ZSTD_frameHeaderSize_internalEPKvmNS_13ZSTD_format_eE.exit ], [ -70, %bb.y ], [ -74, %bb.aa ]
  ret i64 %.7
}

; Function Attrs: mustprogress uwtable
define internal fastcc noundef range(i64 -119, 1) i64 @_ZN11duckdb_zstdL22ZSTD_decodeFrameHeaderEPNS_11ZSTD_DCtx_sEPKvm(ptr noundef %0, ptr noundef readonly captures(address_is_null) %1, i64 noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 29928
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 30104
  %i.d = load i32, ptr %i.c, align 8, !tbaa !43
  %i.e = tail call noundef i64 @_ZN11duckdb_zstd28ZSTD_getFrameHeader_advancedEPNS_16ZSTD_frameHeaderEPKvmNS_13ZSTD_format_eE(ptr noundef nonnull %i.b, ptr noundef %1, i64 noundef %2, i32 noundef %i.d) ; 3 uses
  %i.f = icmp ult i64 %i.e, -119
  br i1 %i.f, label %bb.b, label %bb.n

bb.b:                                             ; preds = %bb.a
  %.not21 = icmp eq i64 %i.e, 0
  br i1 %.not21, label %bb.c, label %bb.n

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 30224
  %i.h = load i32, ptr %i.g, align 8, !tbaa !47
  %i.i = icmp eq i32 %i.h, 1
  br i1 %i.i, label %bb.d, label %_ZN11duckdb_zstdL26ZSTD_DCtx_selectFrameDDictEPNS_11ZSTD_DCtx_sE.exit

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 30216
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !42   ; 4 uses
  %.not22 = icmp eq ptr %i.k, null
  br i1 %.not22, label %_ZN11duckdb_zstdL26ZSTD_DCtx_selectFrameDDictEPNS_11ZSTD_DCtx_sE.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 30192 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !107
  %.not.i = icmp eq ptr %i.m, null
  br i1 %.not.i, label %_ZN11duckdb_zstdL26ZSTD_DCtx_selectFrameDDictEPNS_11ZSTD_DCtx_sE.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 29956 ; 2 uses
  %i.o = load i32, ptr %i.n, align 4, !tbaa !121  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i32 %i.o, ptr %i.a, align 4, !tbaa !3
  %i.p = call noundef i64 @_ZN11duckdb_zstd5XXH64EPKvmy(ptr noundef nonnull %i.a, i64 noundef 4, i64 noundef 0)
  %i.q = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.r = load i64, ptr %i.q, align 8, !tbaa !122
  %i.s = add i64 %i.r, -1                         ; 2 uses
  %i.t = and i64 %i.s, %i.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %bb.f
  %.014.i.i = phi i64 [ %i.t, %bb.f ], [ %i.ab, %bb.g ] ; 3 uses
  %i.u = load ptr, ptr %i.k, align 8, !tbaa !55
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %.014.i.i
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !123
  %i.x = call noundef i32 @_ZN11duckdb_zstd24ZSTD_getDictID_fromDDictEPKNS_12ZSTD_DDict_sE(ptr noundef %i.w) ; 2 uses
  %i.y = icmp eq i32 %i.x, %i.o
  %i.z = icmp eq i32 %i.x, 0
  %or.cond.i.i = or i1 %i.y, %i.z
  %i.aa = and i64 %.014.i.i, %i.s
  %i.ab = add i64 %i.aa, 1
  br i1 %or.cond.i.i, label %_ZN11duckdb_zstdL26ZSTD_DDictHashSet_getDDictEPNS_17ZSTD_DDictHashSetEj.exit.i, label %bb.g

_ZN11duckdb_zstdL26ZSTD_DDictHashSet_getDDictEPNS_17ZSTD_DDictHashSetEj.exit.i: ; preds = %bb.g
  %i.ac = load ptr, ptr %i.k, align 8, !tbaa !55
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %.014.i.i
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !123 ; 2 uses
  %.not10.i = icmp eq ptr %i.ae, null
  br i1 %.not10.i, label %_ZN11duckdb_zstdL26ZSTD_DCtx_selectFrameDDictEPNS_11ZSTD_DCtx_sE.exit, label %bb.h

bb.h:                                             ; preds = %_ZN11duckdb_zstdL26ZSTD_DDictHashSet_getDDictEPNS_17ZSTD_DDictHashSetEj.exit.i
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 30184 ; 2 uses
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !7
  %i.ah = call noundef i64 @_ZN11duckdb_zstd14ZSTD_freeDDictEPNS_12ZSTD_DDict_sE(ptr noundef %i.ag) ; 0 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 30208
  store i64 0, ptr %i.af, align 8
  %i.aj = load i32, ptr %i.n, align 4, !tbaa !121
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 30200
  store i32 %i.aj, ptr %i.ak, align 8, !tbaa !94
  store ptr %i.ae, ptr %i.l, align 8, !tbaa !107
  store i32 -1, ptr %i.ai, align 8, !tbaa !34
  br label %_ZN11duckdb_zstdL26ZSTD_DCtx_selectFrameDDictEPNS_11ZSTD_DCtx_sE.exit

_ZN11duckdb_zstdL26ZSTD_DCtx_selectFrameDDictEPNS_11ZSTD_DCtx_sE.exit: ; preds = %bb.h, %_ZN11duckdb_zstdL26ZSTD_DDictHashSet_getDDictEPNS_17ZSTD_DDictHashSetEj.exit.i, %bb.e, %bb.c, %bb.d
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 29956
  %i.am = load i32, ptr %i.al, align 4, !tbaa !121 ; 2 uses
  %.not23 = icmp eq i32 %i.am, 0
  br i1 %.not23, label %bb.j, label %bb.i

bb.i:                                             ; preds = %_ZN11duckdb_zstdL26ZSTD_DCtx_selectFrameDDictEPNS_11ZSTD_DCtx_sE.exit
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 30200
  %i.ao = load i32, ptr %i.an, align 8, !tbaa !94
  %.not24 = icmp eq i32 %i.ao, %i.am
  br i1 %.not24, label %bb.j, label %bb.n

bb.j:                                             ; preds = %bb.i, %_ZN11duckdb_zstdL26ZSTD_DCtx_selectFrameDDictEPNS_11ZSTD_DCtx_sE.exit
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 29960
  %i.aq = load i32, ptr %i.ap, align 8, !tbaa !100
  %.not25 = icmp eq i32 %i.aq, 0
  br i1 %.not25, label %.critedge, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 30108
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !46
  %.not26 = icmp eq i32 %i.as, 0                  ; 2 uses
  %i.at = zext i1 %.not26 to i32
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 30112
  store i32 %i.at, ptr %i.au, align 8, !tbaa !98
  br i1 %.not26, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 30008
  %i.aw = call noundef i32 @_ZN11duckdb_zstd11XXH64_resetEPNS_13XXH64_state_sEy(ptr noundef nonnull %i.av, i64 noundef 0) ; 0 uses
  br label %bb.m

.critedge:                                        ; preds = %bb.j
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 30112
  store i32 0, ptr %i.ax, align 8, !tbaa !98
  br label %bb.m

bb.m:                                             ; preds = %.critedge, %bb.l, %bb.k
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 29976 ; 2 uses
  %i.az = load i64, ptr %i.ay, align 8, !tbaa !117
  %i.ba = add i64 %i.az, %2
  store i64 %i.ba, ptr %i.ay, align 8, !tbaa !117
  br label %bb.n

bb.n:                                             ; preds = %bb.i, %bb.b, %bb.a, %bb.m
  %.0 = phi i64 [ 0, %bb.m ], [ %i.e, %bb.a ], [ -72, %bb.b ], [ -32, %bb.i ]
  ret i64 %.0
}

declare noundef i64 @_ZN11duckdb_zstd18ZSTD_getcBlockSizeEPKvmPNS_17blockProperties_tE(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #1

declare noundef i64 @_ZN11duckdb_zstd29ZSTD_decompressBlock_internalEPNS_11ZSTD_DCtx_sEPvmPKvmNS_19streaming_operationE(ptr noundef, ptr noundef, i64 noundef, ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #1

declare noundef i32 @_ZN11duckdb_zstd12XXH64_updateEPNS_13XXH64_state_sEPKvm(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN11duckdb_zstdL19ZSTD_DCtx_trace_endEPKNS_11ZSTD_DCtx_sEmmj(ptr noundef %0, i64 noundef %1, i64 noundef %2, i32 noundef range(i32 0, 2) %3) unnamed_addr #0 {
bb.a:
  %4 = alloca %"struct.duckdb_zstd::ZSTD_Trace", align 8 ; 12 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 95968 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !92   ; 2 uses
  %i.c = icmp ne i64 %i.b, 0
  %i.d = icmp ne ptr @_ZN11duckdb_zstd25ZSTD_trace_decompress_endEyPKNS_10ZSTD_TraceE, null
  %or.cond = and i1 %i.d, %i.c
  br i1 %or.cond, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #16
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.e, i8 0, i64 48, i1 false)
  store i32 10506, ptr %4, align 8, !tbaa !101
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 4
  store i32 %3, ptr %i.f, align 4, !tbaa !106
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 30192 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !107  ; 2 uses
  %.not = icmp eq ptr %i.h, null
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = tail call noundef i32 @_ZN11duckdb_zstd24ZSTD_getDictID_fromDDictEPKNS_12ZSTD_DDict_sE(ptr noundef nonnull %i.h)
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 %i.i, ptr %i.j, align 8, !tbaa !108
  %i.k = load ptr, ptr %i.g, align 8, !tbaa !107
  %i.l = tail call noundef i64 @_ZN11duckdb_zstd19ZSTD_DDict_dictSizeEPKNS_12ZSTD_DDict_sE(ptr noundef %i.k)
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i64 %i.l, ptr %i.m, align 8, !tbaa !109
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 30204
  %i.o = load i32, ptr %i.n, align 4, !tbaa !33
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 12
  store i32 %i.o, ptr %i.p, align 4, !tbaa !110
  %.pre = load i64, ptr %i.a, align 8, !tbaa !92
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.q = phi i64 [ %.pre, %bb.c ], [ %i.b, %bb.b ]
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 24
  store i64 %1, ptr %i.r, align 8, !tbaa !111
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 32
  store i64 %2, ptr %i.s, align 8, !tbaa !112
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 56
  store ptr %0, ptr %i.t, align 8, !tbaa !113
  call void @_ZN11duckdb_zstd25ZSTD_trace_decompress_endEyPKNS_10ZSTD_TraceE(i64 noundef %i.q, ptr noundef nonnull %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #16
  br label %bb.e
end_hunk_2
begin_hunk_3_@_ZN11duckdb_zstd21ZSTD_decompressStreamEPNS_11ZSTD_DCtx_sEPNS_16ZSTD_outBuffer_sEPNS_15ZSTD_inBuffer_sE:bb.a
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
  br i1 %i.ea, label %bb.z, label %bb.ab

bb.z:                                             ; preds = %.thread470
  %i.eb = load i32, ptr %i.av, align 4, !tbaa !151
  %.not383 = icmp eq i32 %i.eb, 1
  br i1 %.not383, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.ec = load i64, ptr %i.ag, align 8, !tbaa !99 ; 2 uses
  %.not384 = icmp ne i64 %i.ec, -1
  %i.ed = ptrtoint ptr %.0558 to i64
  %i.ee = sub i64 %i.ad, %i.ed
  %i.ef = icmp ult i64 %i.ee, %i.ec
  %or.cond542 = select i1 %.not384, i1 %i.ef, i1 false
  br i1 %or.cond542, label %_ZN11duckdb_zstdL19ZSTD_checkOutBufferEPKNS_11ZSTD_DCtx_sEPKNS_16ZSTD_outBuffer_sE.exit.thread, label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z, %.thread470
  %i.eg = load i32, ptr %i.as, align 8, !tbaa !34
  switch i32 %i.eg, label %_ZN11duckdb_zstdL13ZSTD_getDDictEPNS_11ZSTD_DCtx_sE.exit.thread [
    i32 1, label %bb.ac
    i32 -1, label %_ZN11duckdb_zstdL13ZSTD_getDDictEPNS_11ZSTD_DCtx_sE.exit
  ]

_ZN11duckdb_zstdL13ZSTD_getDDictEPNS_11ZSTD_DCtx_sE.exit.thread: ; preds = %bb.ab
  %i.eh = load ptr, ptr %i.ar, align 8, !tbaa !7
  %i.ei = call noundef i64 @_ZN11duckdb_zstd14ZSTD_freeDDictEPNS_12ZSTD_DDict_sE(ptr noundef %i.eh) ; 0 uses
  store i32 0, ptr %i.as, align 8, !tbaa !34
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ar, i8 0, i64 16, i1 false)
  br label %bb.ae

bb.ac:                                            ; preds = %bb.ab
  store i32 0, ptr %i.as, align 8, !tbaa !34
  br label %_ZN11duckdb_zstdL13ZSTD_getDDictEPNS_11ZSTD_DCtx_sE.exit

_ZN11duckdb_zstdL13ZSTD_getDDictEPNS_11ZSTD_DCtx_sE.exit: ; preds = %bb.ab, %bb.ac
  %.0.i410 = load ptr, ptr %i.ap, align 8, !tbaa !107 ; 4 uses
  %.not.i411 = icmp eq ptr %.0.i410, null
  br i1 %.not.i411, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %_ZN11duckdb_zstdL13ZSTD_getDDictEPNS_11ZSTD_DCtx_sE.exit
  %i.ej = call noundef ptr @_ZN11duckdb_zstd22ZSTD_DDict_dictContentEPKNS_12ZSTD_DDict_sE(ptr noundef nonnull %.0.i410)
  %i.ek = call noundef i64 @_ZN11duckdb_zstd19ZSTD_DDict_dictSizeEPKNS_12ZSTD_DDict_sE(ptr noundef nonnull %.0.i410)
  %i.el = getelementptr inbounds nuw i8, ptr %i.ej, i64 %i.ek
  %i.em = load ptr, ptr %i.ay, align 8, !tbaa !32
  %i.en = icmp ne ptr %i.em, %i.el
  %i.eo = zext i1 %i.en to i32
  store i32 %i.eo, ptr %i.az, align 4, !tbaa !33
  br label %bb.ae

bb.ae:                                            ; preds = %_ZN11duckdb_zstdL13ZSTD_getDDictEPNS_11ZSTD_DCtx_sE.exit.thread, %bb.ad, %_ZN11duckdb_zstdL13ZSTD_getDDictEPNS_11ZSTD_DCtx_sE.exit
  %.not.i411479 = phi i1 [ true, %_ZN11duckdb_zstdL13ZSTD_getDDictEPNS_11ZSTD_DCtx_sE.exit.thread ], [ false, %bb.ad ], [ true, %_ZN11duckdb_zstdL13ZSTD_getDDictEPNS_11ZSTD_DCtx_sE.exit ]
  %.0.i410478 = phi ptr [ null, %_ZN11duckdb_zstdL13ZSTD_getDDictEPNS_11ZSTD_DCtx_sE.exit.thread ], [ %.0.i410, %bb.ad ], [ null, %_ZN11duckdb_zstdL13ZSTD_getDDictEPNS_11ZSTD_DCtx_sE.exit ]
  br i1 %.not.i.i, label %_ZN11duckdb_zstd20ZSTD_decompressBeginEPNS_11ZSTD_DCtx_sE.exit.i, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.ep = call noundef i64 @_ZN11duckdb_zstd27ZSTD_trace_decompress_beginEPKNS_11ZSTD_DCtx_sE(ptr noundef nonnull %0)
  br label %_ZN11duckdb_zstd20ZSTD_decompressBeginEPNS_11ZSTD_DCtx_sE.exit.i

_ZN11duckdb_zstd20ZSTD_decompressBeginEPNS_11ZSTD_DCtx_sE.exit.i: ; preds = %bb.af, %bb.ae
  %i.eq = phi i64 [ %i.ep, %bb.af ], [ 0, %bb.ae ]
  store i64 %i.eq, ptr %i.ba, align 8, !tbaa !92
  %i.er = load i32, ptr %i.am, align 8, !tbaa !43 ; 2 uses
  %i.es = icmp eq i32 %i.er, 0
  %i.et = select i1 %i.es, i64 5, i64 1
  store i64 %i.et, ptr %i.ax, align 8, !tbaa !93
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bd, i8 0, i64 32, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bc, i8 0, i64 16, i1 false)
  store i32 201326604, ptr %i.be, align 8, !tbaa !3
  store i32 0, ptr %i.at, align 8, !tbaa !94
  store <4 x i32> <i32 3, i32 0, i32 0, i32 0>, ptr %i.bf, align 8, !tbaa !60
  store i32 1, ptr %i.bg, align 8, !tbaa !37
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.bh, ptr noundef nonnull align 4 dereferenceable(12) @_ZN11duckdb_zstdL13repStartValueE, i64 12, i1 false)
  store <4 x ptr> %i.bi, ptr %0, align 8, !tbaa !52
  br i1 %.not.i411479, label %_ZN11duckdb_zstd31ZSTD_decompressBegin_usingDDictEPNS_11ZSTD_DCtx_sEPKNS_12ZSTD_DDict_sE.exit, label %bb.ag

bb.ag:                                            ; preds = %_ZN11duckdb_zstd20ZSTD_decompressBeginEPNS_11ZSTD_DCtx_sE.exit.i
  call void @_ZN11duckdb_zstd24ZSTD_copyDDictParametersEPNS_11ZSTD_DCtx_sEPKNS_12ZSTD_DDict_sE(ptr noundef nonnull %0, ptr noundef nonnull %.0.i410478)
  %.pre567 = load i32, ptr %i.am, align 8, !tbaa !43
  br label %_ZN11duckdb_zstd31ZSTD_decompressBegin_usingDDictEPNS_11ZSTD_DCtx_sEPKNS_12ZSTD_DDict_sE.exit

_ZN11duckdb_zstd31ZSTD_decompressBegin_usingDDictEPNS_11ZSTD_DCtx_sEPKNS_12ZSTD_DDict_sE.exit: ; preds = %bb.ag, %_ZN11duckdb_zstd20ZSTD_decompressBeginEPNS_11ZSTD_DCtx_sE.exit.i
  %i.eu = phi i32 [ %.pre567, %bb.ag ], [ %i.er, %_ZN11duckdb_zstd20ZSTD_decompressBeginEPNS_11ZSTD_DCtx_sE.exit.i ]
  %i.ev = icmp eq i32 %i.eu, 0
  br i1 %i.ev, label %bb.ah, label %bb.aj

bb.ah:                                            ; preds = %_ZN11duckdb_zstd31ZSTD_decompressBegin_usingDDictEPNS_11ZSTD_DCtx_sEPKNS_12ZSTD_DDict_sE.exit
  %.val406 = load i32, ptr %i.al, align 4, !tbaa !3
  %i.ew = and i32 %.val406, -16
  %i.ex = icmp eq i32 %i.ew, 407710288
  br i1 %i.ex, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  %.val405 = load i32, ptr %i.bj, align 8, !tbaa !3
  %i.ey = zext i32 %.val405 to i64
  br label %bb.ak

bb.aj:                                            ; preds = %_ZN11duckdb_zstd31ZSTD_decompressBegin_usingDDictEPNS_11ZSTD_DCtx_sEPKNS_12ZSTD_DDict_sE.exit, %bb.ah
  %i.ez = load i64, ptr %i.aj, align 8, !tbaa !148
  %i.fa = call fastcc noundef i64 @_ZN11duckdb_zstdL22ZSTD_decodeFrameHeaderEPNS_11ZSTD_DCtx_sEPKvm(ptr noundef nonnull %0, ptr noundef nonnull %i.al, i64 noundef %i.ez) ; 2 uses
  %i.fb = icmp ult i64 %i.fa, -119
  br i1 %i.fb, label %bb.ak, label %_ZN11duckdb_zstdL19ZSTD_checkOutBufferEPKNS_11ZSTD_DCtx_sEPKNS_16ZSTD_outBuffer_sE.exit.thread

bb.ak:                                            ; preds = %bb.aj, %bb.ai
  %storemerge544 = phi i64 [ %i.ey, %bb.ai ], [ 3, %bb.aj ]
  %storemerge = phi i32 [ 7, %bb.ai ], [ 2, %bb.aj ]
  store i64 %storemerge544, ptr %i.ax, align 8, !tbaa !93
  store i32 %storemerge, ptr %i.bb, align 4, !tbaa !115
  %i.fc = load i64, ptr %i.bk, align 8, !tbaa !152
  %spec.select = call i64 @llvm.umax.i64(i64 %i.fc, i64 1024) ; 4 uses
  store i64 %spec.select, ptr %i.bk, align 8, !tbaa !152
  %i.fd = load i64, ptr %i.bl, align 8, !tbaa !44
  %i.fe = icmp ugt i64 %spec.select, %i.fd
  br i1 %i.fe, label %_ZN11duckdb_zstdL19ZSTD_checkOutBufferEPKNS_11ZSTD_DCtx_sEPKNS_16ZSTD_outBuffer_sE.exit.thread, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.ff = load i32, ptr %i.bm, align 8, !tbaa !49 ; 2 uses
  %.not387 = icmp eq i32 %i.ff, 0
  %.pre568 = load i32, ptr %i.ah, align 8, !tbaa !95 ; 2 uses
  br i1 %.not387, label %bb.an, label %bb.am

bb.am:                                            ; preds = %bb.al
  %.394 = call i32 @llvm.umin.i32(i32 %.pre568, i32 %i.ff) ; 2 uses
  store i32 %.394, ptr %i.ah, align 8, !tbaa !95
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.al
  %i.fg = phi i32 [ %.394, %bb.am ], [ %.pre568, %bb.al ] ; 2 uses
  %spec.select395545 = call i32 @llvm.umax.i32(i32 %i.fg, i32 4)
  %spec.select395 = zext i32 %spec.select395545 to i64 ; 4 uses
  %i.fh = load i32, ptr %i.s, align 8, !tbaa !45
  %i.fi = icmp eq i32 %i.fh, 0
  br i1 %i.fi, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %bb.an
  %i.fj = zext i32 %i.fg to i64
  %i.fk = load i64, ptr %i.ag, align 8, !tbaa !99
  %i.fl = call i64 @llvm.umin.i64(i64 %spec.select, i64 range(i64 0, 4294967296) %i.fj)
  %..i = call i64 @llvm.umin.i64(i64 %i.fl, i64 131072)
  %i.fm = shl nuw nsw i64 %..i, 1
  %i.fn = add i64 %spec.select, 64
  %i.fo = add i64 %i.fn, %i.fm
  %i.fp = call noundef i64 @llvm.umin.i64(i64 %i.fk, i64 %i.fo)
  br label %bb.ap

bb.ap:                                            ; preds = %bb.an, %bb.ao
  %i.fq = phi i64 [ %i.fp, %bb.ao ], [ 0, %bb.an ] ; 3 uses
  %.val.i = load i64, ptr %i.bn, align 8, !tbaa !30 ; 2 uses
  %.val4.i = load i64, ptr %i.af, align 8, !tbaa !31 ; 2 uses
  %i.fr = add i64 %.val4.i, %.val.i
  %i.fs = add i64 %i.fq, %spec.select395          ; 4 uses
  %i.ft = mul i64 %i.fs, 3
  %.not5.i = icmp ult i64 %i.fr, %i.ft
  br i1 %.not5.i, label %_ZN11duckdb_zstdL33ZSTD_DCtx_updateOversizedDurationEPNS_11ZSTD_DCtx_sEmm.exit, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.fu = load i64, ptr %i.bo, align 8, !tbaa !36
  %i.fv = add i64 %i.fu, 1
  br label %_ZN11duckdb_zstdL33ZSTD_DCtx_updateOversizedDurationEPNS_11ZSTD_DCtx_sEmm.exit

_ZN11duckdb_zstdL33ZSTD_DCtx_updateOversizedDurationEPNS_11ZSTD_DCtx_sEmm.exit: ; preds = %bb.ap, %bb.aq
  %.sink.i = phi i64 [ %i.fv, %bb.aq ], [ 0, %bb.ap ] ; 2 uses
  store i64 %.sink.i, ptr %i.bo, align 8, !tbaa !36
  %i.fw = icmp ult i64 %.val.i, %spec.select395
  br i1 %i.fw, label %.thread480, label %bb.ar

bb.ar:                                            ; preds = %_ZN11duckdb_zstdL33ZSTD_DCtx_updateOversizedDurationEPNS_11ZSTD_DCtx_sEmm.exit
  %i.fx = icmp ult i64 %.val4.i, %i.fq
  %i.fy = icmp ugt i64 %.sink.i, 127
  %or.cond = or i1 %i.fx, %i.fy
  br i1 %or.cond, label %.thread480, label %bb.ba

.thread480:                                       ; preds = %_ZN11duckdb_zstdL33ZSTD_DCtx_updateOversizedDurationEPNS_11ZSTD_DCtx_sEmm.exit, %bb.ar
  %i.fz = load i64, ptr %i.bp, align 8, !tbaa !50 ; 2 uses
  %.not388 = icmp eq i64 %i.fz, 0
  br i1 %.not388, label %bb.at, label %bb.as

bb.as:                                            ; preds = %.thread480
  %i.ga = add i64 %i.fz, -95976
  %i.gb = icmp ugt i64 %i.fs, %i.ga
  br i1 %i.gb, label %_ZN11duckdb_zstdL19ZSTD_checkOutBufferEPKNS_11ZSTD_DCtx_sEPKNS_16ZSTD_outBuffer_sE.exit.thread, label %._crit_edge569

._crit_edge569:                                   ; preds = %bb.as
  %.pre570 = load ptr, ptr %i.bq, align 8, !tbaa !51
  br label %bb.az

bb.at:                                            ; preds = %.thread480
  %i.gc = load ptr, ptr %i.bq, align 8, !tbaa !51 ; 3 uses
  %.sroa.1.0.copyload = load ptr, ptr %.sroa.1.0..sroa_idx, align 8, !tbaa !52 ; 2 uses
  %.sroa.2436.0.copyload = load ptr, ptr %.sroa.2436.0..sroa_idx, align 8, !tbaa !52
  %.not.i412 = icmp eq ptr %i.gc, null
  br i1 %.not.i412, label %_ZN11duckdb_zstdL15ZSTD_customFreeEPvNS_14ZSTD_customMemE.exit, label %bb.au

bb.au:                                            ; preds = %bb.at
  %.not4.i = icmp eq ptr %.sroa.1.0.copyload, null
  br i1 %.not4.i, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %bb.au
  call void %.sroa.1.0.copyload(ptr noundef %.sroa.2436.0.copyload, ptr noundef nonnull %i.gc), !inline_history !54
  br label %_ZN11duckdb_zstdL15ZSTD_customFreeEPvNS_14ZSTD_customMemE.exit

bb.aw:                                            ; preds = %bb.au
  call void @free(ptr noundef nonnull %i.gc) #16
  br label %_ZN11duckdb_zstdL15ZSTD_customFreeEPvNS_14ZSTD_customMemE.exit

_ZN11duckdb_zstdL15ZSTD_customFreeEPvNS_14ZSTD_customMemE.exit: ; preds = %bb.at, %bb.av, %bb.aw
  store i64 0, ptr %i.bn, align 8, !tbaa !30
  store i64 0, ptr %i.af, align 8, !tbaa !31
  %.sroa.0.0.copyload = load ptr, ptr %i.br, align 8, !tbaa !52 ; 2 uses
  %.not.i413 = icmp eq ptr %.sroa.0.0.copyload, null
  br i1 %.not.i413, label %bb.ay, label %bb.ax

bb.ax:                                            ; preds = %_ZN11duckdb_zstdL15ZSTD_customFreeEPvNS_14ZSTD_customMemE.exit
  %.sroa.2434.0.copyload = load ptr, ptr %.sroa.2436.0..sroa_idx, align 8, !tbaa !52
  %i.gd = call noundef ptr %.sroa.0.0.copyload(ptr noundef %.sroa.2434.0.copyload, i64 noundef %i.fs), !inline_history !153
  br label %_ZN11duckdb_zstdL17ZSTD_customMallocEmNS_14ZSTD_customMemE.exit

bb.ay:                                            ; preds = %_ZN11duckdb_zstdL15ZSTD_customFreeEPvNS_14ZSTD_customMemE.exit
  %i.ge = call noalias ptr @malloc(i64 noundef %i.fs) #15
  br label %_ZN11duckdb_zstdL17ZSTD_customMallocEmNS_14ZSTD_customMemE.exit

_ZN11duckdb_zstdL17ZSTD_customMallocEmNS_14ZSTD_customMemE.exit: ; preds = %bb.ax, %bb.ay
  %.0.i414 = phi ptr [ %i.gd, %bb.ax ], [ %i.ge, %bb.ay ] ; 3 uses
  store ptr %.0.i414, ptr %i.bq, align 8, !tbaa !51
  %i.gf = icmp eq ptr %.0.i414, null
  br i1 %i.gf, label %_ZN11duckdb_zstdL19ZSTD_checkOutBufferEPKNS_11ZSTD_DCtx_sEPKNS_16ZSTD_outBuffer_sE.exit.thread, label %bb.az

bb.az:                                            ; preds = %._crit_edge569, %_ZN11duckdb_zstdL17ZSTD_customMallocEmNS_14ZSTD_customMemE.exit
  %i.gg = phi ptr [ %.pre570, %._crit_edge569 ], [ %.0.i414, %_ZN11duckdb_zstdL17ZSTD_customMallocEmNS_14ZSTD_customMemE.exit ]
  store i64 %spec.select395, ptr %i.bn, align 8, !tbaa !30
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gg, i64 %spec.select395
  store ptr %i.gh, ptr %i.ae, align 8, !tbaa !154
  store i64 %i.fq, ptr %i.af, align 8, !tbaa !31
  br label %bb.ba

bb.ba:                                            ; preds = %bb.ar, %bb.az
  store i32 2, ptr %i.aa, align 4, !tbaa !132
  br label %.loopexit646

.loopexit646:                                     ; preds = %.thread490, %bb.ba
  %i.gi = ptrtoint ptr %.0304561.ph to i64
  %i.gj = sub i64 %i.au, %i.gi                    ; 2 uses
  %i.gk = load i32, ptr %i.bb, align 4, !tbaa !115 ; 3 uses
  %.off.i = add i32 %i.gk, -3
  %switch.i = icmp ult i32 %.off.i, 2
  br i1 %switch.i, label %bb.bc, label %bb.bb

bb.bb:                                            ; preds = %.loopexit646
  %i.gl = load i64, ptr %i.ax, align 8, !tbaa !93
  br label %_ZN11duckdb_zstdL41ZSTD_nextSrcSizeToDecompressWithInputSizeEPNS_11ZSTD_DCtx_sEm.exit

bb.bc:                                            ; preds = %.loopexit646
  %i.gm = load i32, ptr %i.bf, align 8, !tbaa !116
  %.not.i416 = icmp eq i32 %i.gm, 0
  %i.gn = load i64, ptr %i.ax, align 8, !tbaa !93 ; 3 uses
  br i1 %.not.i416, label %_ZN11duckdb_zstdL41ZSTD_nextSrcSizeToDecompressWithInputSizeEPNS_11ZSTD_DCtx_sEm.exit.thread, label %_ZN11duckdb_zstdL41ZSTD_nextSrcSizeToDecompressWithInputSizeEPNS_11ZSTD_DCtx_sEm.exit

_ZN11duckdb_zstdL41ZSTD_nextSrcSizeToDecompressWithInputSizeEPNS_11ZSTD_DCtx_sEm.exit.thread: ; preds = %bb.bc
  %..i417 = call i64 @llvm.umin.i64(i64 %i.gj, i64 %i.gn)
  %spec.select.i = call i64 @llvm.umax.i64(i64 %..i417, i64 1)
  br label %bb.bd

_ZN11duckdb_zstdL41ZSTD_nextSrcSizeToDecompressWithInputSizeEPNS_11ZSTD_DCtx_sEm.exit: ; preds = %bb.bb, %bb.bc
  %.0.i415 = phi i64 [ %i.gn, %bb.bc ], [ %i.gl, %bb.bb ] ; 3 uses
  %i.go = icmp eq i64 %.0.i415, 0
  br i1 %i.go, label %.loopexit.sink.split, label %bb.bd

bb.bd:                                            ; preds = %_ZN11duckdb_zstdL41ZSTD_nextSrcSizeToDecompressWithInputSizeEPNS_11ZSTD_DCtx_sEm.exit.thread, %_ZN11duckdb_zstdL41ZSTD_nextSrcSizeToDecompressWithInputSizeEPNS_11ZSTD_DCtx_sEm.exit
  %i.gp = phi i64 [ %i.gn, %_ZN11duckdb_zstdL41ZSTD_nextSrcSizeToDecompressWithInputSizeEPNS_11ZSTD_DCtx_sEm.exit.thread ], [ %.0.i415, %_ZN11duckdb_zstdL41ZSTD_nextSrcSizeToDecompressWithInputSizeEPNS_11ZSTD_DCtx_sEm.exit ]
  %.0.i415488 = phi i64 [ %spec.select.i, %_ZN11duckdb_zstdL41ZSTD_nextSrcSizeToDecompressWithInputSizeEPNS_11ZSTD_DCtx_sEm.exit.thread ], [ %.0.i415, %_ZN11duckdb_zstdL41ZSTD_nextSrcSizeToDecompressWithInputSizeEPNS_11ZSTD_DCtx_sEm.exit ] ; 4 uses
  %.not389 = icmp ult i64 %i.gj, %.0.i415488
  br i1 %.not389, label %bb.bm, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.gq = icmp eq i32 %i.gk, 7                    ; 3 uses
  %i.gr = load i32, ptr %i.s, align 8, !tbaa !45
  %i.gs = icmp eq i32 %i.gr, 0
  br i1 %i.gs, label %bb.bf, label %bb.bk

bb.bf:                                            ; preds = %bb.be
  br i1 %i.gq, label %._crit_edge.i, label %bb.bg

._crit_edge.i:                                    ; preds = %bb.bf
  %.pre50.i = load i64, ptr %i.ac, align 8, !tbaa !155
  br label %bb.bh

bb.bg:                                            ; preds = %bb.bf
  %i.gt = load i64, ptr %i.af, align 8, !tbaa !31
  %i.gu = load i64, ptr %i.ac, align 8, !tbaa !155 ; 2 uses
  %i.gv = sub i64 %i.gt, %i.gu
  br label %bb.bh

bb.bh:                                            ; preds = %bb.bg, %._crit_edge.i
  %i.gw = phi i64 [ %i.gu, %bb.bg ], [ %.pre50.i, %._crit_edge.i ]
end_hunk_3
