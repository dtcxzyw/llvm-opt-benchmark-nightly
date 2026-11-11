Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/IterationGraphSorter?download=true
inline.NumInlined: 1437
inline.NumDeleted: 834
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN4mlir13sparse_tensor20IterationGraphSorter4sortENS0_8SortMaskENS_5ValueE:bb.a
  br i1 %.not3.i.us, label %.lr.ph48.split.us, label %._crit_edge49

.lr.ph:                                           ; preds = %bb.a, %_ZN4llvm4fillIRSt6vectorIbSaIbEEbEEvOT_OT0_.exit
  %.sroa.035.044 = phi ptr [ %i.ay, %_ZN4llvm4fillIRSt6vectorIbSaIbEEbEEvOT_OT0_.exit ], [ %i.b, %bb.a ] ; 4 uses
  %i.an = load ptr, ptr %.sroa.035.044, align 8, !tbaa !63 ; 4 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.sroa.035.044, i64 16
  %.sroa.0.0.copyload.i.i.i.i = load ptr, ptr %i.ao, align 8 ; 3 uses
  %.sroa.2.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.035.044, i64 24
  %.sroa.2.0.copyload.i.i.i.i = load i32, ptr %.sroa.2.0..sroa_idx.i.i.i.i, align 8 ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.an, %.sroa.0.0.copyload.i.i.i.i
  br i1 %.not.i.i.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.lr.ph
  %i.ap = ptrtoint ptr %.sroa.0.0.copyload.i.i.i.i to i64
  %i.aq = ptrtoint ptr %i.an to i64
  %i.ar = sub i64 %i.ap, %i.aq
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.an, i8 0, i64 %i.ar, i1 false)
  %.not27.i.i.i.i = icmp eq i32 %.sroa.2.0.copyload.i.i.i.i, 0
  br i1 %.not27.i.i.i.i, label %_ZN4llvm4fillIRSt6vectorIbSaIbEEbEEvOT_OT0_.exit, label %_ZN4llvm4fillIRSt6vectorIbSaIbEEbEEvOT_OT0_.exit.sink.split

bb.e:                                             ; preds = %.lr.ph
  %.not25.i.i.i.i = icmp eq i32 %.sroa.2.0.copyload.i.i.i.i, 0
  br i1 %.not25.i.i.i.i, label %_ZN4llvm4fillIRSt6vectorIbSaIbEEbEEvOT_OT0_.exit, label %_ZN4llvm4fillIRSt6vectorIbSaIbEEbEEvOT_OT0_.exit.sink.split

_ZN4llvm4fillIRSt6vectorIbSaIbEEbEEvOT_OT0_.exit.sink.split: ; preds = %bb.e, %bb.d
  %.sroa.0.0.copyload.i.i.i.i.sink68 = phi ptr [ %.sroa.0.0.copyload.i.i.i.i, %bb.d ], [ %i.an, %bb.e ] ; 2 uses
  %i.as = sub i32 64, %.sroa.2.0.copyload.i.i.i.i
  %i.at = zext nneg i32 %i.as to i64
  %i.au = lshr i64 -1, %i.at
  %i.av = xor i64 %i.au, -1
  %i.aw = load i64, ptr %.sroa.0.0.copyload.i.i.i.i.sink68, align 8, !tbaa !58
  %i.ax = and i64 %i.aw, %i.av
  store i64 %i.ax, ptr %.sroa.0.0.copyload.i.i.i.i.sink68, align 8, !tbaa !58
  br label %_ZN4llvm4fillIRSt6vectorIbSaIbEEbEEvOT_OT0_.exit

_ZN4llvm4fillIRSt6vectorIbSaIbEEbEEvOT_OT0_.exit: ; preds = %_ZN4llvm4fillIRSt6vectorIbSaIbEEbEEvOT_OT0_.exit.sink.split, %bb.d, %bb.e
  %i.ay = getelementptr inbounds nuw i8, ptr %.sroa.035.044, i64 40 ; 2 uses
  %.not = icmp eq ptr %i.ay, %i.d
  br i1 %.not, label %._crit_edge, label %.lr.ph

._crit_edge49:                                    ; preds = %bb.c, %bb.h, %_ZN4llvm4fillIRSt6vectorIjSaIjEEiEEvOT_OT0_.exit
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !56
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  %.0.copyload.i.i.i.i.i = load i64, ptr %i.bb, align 8
  %i.bc = and i64 %.0.copyload.i.i.i.i.i, -8
  %i.bd = inttoptr i64 %i.bc to ptr
  %i.be = tail call ptr @_ZN4mlir13sparse_tensor23getSparseTensorEncodingENS_4TypeE(ptr %i.bd) #12
  %i.bf = icmp ne ptr %i.be, null
  %i.bg = trunc i32 %1 to i1
  %or.cond41 = or i1 %i.bf, %i.bg
  br i1 %or.cond41, label %bb.i, label %bb.k

.lr.ph48.split:                                   ; preds = %.lr.ph48, %bb.h
  %.sroa.023.047 = phi ptr [ %i.bp, %bb.h ], [ %i.q, %.lr.ph48 ] ; 2 uses
  %.sroa.7.046 = phi ptr [ %i.bo, %bb.h ], [ %i.p, %.lr.ph48 ] ; 3 uses
  %i.bh = load ptr, ptr %.sroa.7.046, align 8, !tbaa !56
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  %.0.copyload.i.i.i.i.i18 = load i64, ptr %i.bi, align 8
  %i.bj = and i64 %.0.copyload.i.i.i.i.i18, -8
  %i.bk = inttoptr i64 %i.bj to ptr
  %i.bl = tail call ptr @_ZN4mlir13sparse_tensor23getSparseTensorEncodingENS_4TypeE(ptr %i.bk) #12
  %.not52 = icmp eq ptr %i.bl, null
  br i1 %.not52, label %bb.h, label %bb.f

bb.f:                                             ; preds = %.lr.ph48.split
  %i.bm = load ptr, ptr %.sroa.7.046, align 8, !tbaa !56
  %i.bn = icmp eq ptr %i.bm, %2
  br i1 %i.bn, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %.sroa.03.0.copyload = load ptr, ptr %.sroa.023.047, align 8, !tbaa !53
  tail call void @_ZN4mlir13sparse_tensor20IterationGraphSorter14addConstraintsENS_5ValueENS_9AffineMapE(ptr noundef nonnull align 8 dereferenceable(260) %0, ptr poison, ptr %.sroa.03.0.copyload)
  br label %bb.h

bb.h:                                             ; preds = %.lr.ph48.split, %bb.f, %bb.g
  %i.bo = getelementptr inbounds nuw i8, ptr %.sroa.7.046, i64 8 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %.sroa.023.047, i64 8 ; 2 uses
  %i.bq = icmp ne ptr %i.bo, %i.u
  %i.br = icmp ne ptr %i.bp, %i.y
  %.not3.i = select i1 %i.bq, i1 %i.br, i1 false
  br i1 %.not3.i, label %.lr.ph48.split, label %._crit_edge49

bb.i:                                             ; preds = %._crit_edge49
  %i.bs = load ptr, ptr %i.az, align 8, !tbaa !56
  %.not42 = icmp eq ptr %i.bs, %2
  br i1 %.not42, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 136
  %.sroa.0.0.copyload = load ptr, ptr %i.bt, align 8, !tbaa !53
  tail call void @_ZN4mlir13sparse_tensor20IterationGraphSorter14addConstraintsENS_5ValueENS_9AffineMapE(ptr noundef nonnull align 8 dereferenceable(260) %0, ptr poison, ptr %.sroa.0.0.copyload)
  br label %bb.k

bb.k:                                             ; preds = %._crit_edge49, %bb.j, %bb.i
  %i.bu = tail call ptr @_ZN4mlir13sparse_tensor20IterationGraphSorter8topoSortEv(ptr noundef nonnull align 8 dereferenceable(260) %0)
  ret ptr %i.bu
}

declare ptr @_ZN4mlir13sparse_tensor23getSparseTensorEncodingENS_4TypeE(ptr) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4mlir13sparse_tensor20IterationGraphSorter14addConstraintsENS_5ValueENS_9AffineMapE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(260) %0, ptr nofree readnone captures(none) %1, ptr %2) local_unnamed_addr #0 align 2 {
bb.a:
  %3 = alloca %"class.mlir::AffineDimExpr", align 8 ; 4 uses
  %4 = alloca %"class.mlir::AffineDimExpr", align 8 ; 4 uses
  %5 = alloca %"class.mlir::AffineExpr", align 8  ; 4 uses
  %6 = alloca %"class.mlir::AffineExpr", align 8  ; 4 uses
  %7 = alloca %"class.mlir::AffineMap", align 8   ; 4 uses
  %8 = alloca %"class.(anonymous namespace)::AffineDimFinder", align 8 ; 12 uses
  %9 = alloca %"struct.(anonymous namespace)::AffineDimCollector", align 8 ; 9 uses
  %10 = alloca %"struct.(anonymous namespace)::AffineDimCollector", align 8 ; 9 uses
  %11 = alloca %"class.mlir::AffineDimExpr", align 8 ; 4 uses
  %12 = alloca %"class.mlir::AffineDimExpr", align 8 ; 4 uses
  %13 = alloca %"class.mlir::AffineDimExpr", align 8 ; 4 uses
  %14 = alloca %"class.mlir::AffineDimExpr", align 8 ; 4 uses
  %15 = alloca %"struct.(anonymous namespace)::AffineDimCollector", align 8 ; 10 uses
  %16 = alloca %"struct.(anonymous namespace)::AffineDimCollector", align 8 ; 10 uses
  %17 = alloca %"class.mlir::AffineDimExpr", align 8 ; 4 uses
  %18 = alloca %"class.mlir::AffineDimExpr", align 8 ; 4 uses
  %19 = alloca %"class.mlir::AffineDimExpr", align 8 ; 4 uses
  %20 = alloca %"class.mlir::AffineDimExpr", align 8 ; 4 uses
  store ptr %2, ptr %7, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #12
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !12
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.d = load i32, ptr %i.c, align 8, !tbaa !13
  %i.e = zext i32 %i.d to i64
  store ptr null, ptr %8, align 8, !tbaa !75
  %i.f = getelementptr inbounds nuw i8, ptr %8, i64 16
  store ptr %i.b, ptr %i.f, align 8, !tbaa !123
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %8, i64 24
  store i64 %i.e, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !58
  %i.g = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i32 1, ptr %i.g, align 8, !tbaa !78
  %i.h = call noundef i32 @_ZNK4mlir9AffineMap13getNumResultsEv(ptr noundef nonnull align 8 dereferenceable(8) %7) #12 ; 2 uses
  %i.i = zext i32 %i.h to i64
  %i.j = icmp ugt i32 %i.h, 1
  br i1 %i.j, label %.lr.ph132, label %._crit_edge133

.lr.ph132:                                        ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 5 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 232 ; 5 uses
  %i.m = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %15, i64 8 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %15, i64 12
  %i.p = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %16, i64 8 ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %16, i64 12
  %i.s = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %9, i64 12
  %i.v = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %10, i64 12
  br label %bb.b

._crit_edge133:                                   ; preds = %bb.s, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #12
  ret void

bb.b:                                             ; preds = %.lr.ph132, %bb.s
  %.067130 = phi i64 [ 1, %.lr.ph132 ], [ %i.fp, %bb.s ] ; 2 uses
  %i.y = trunc i64 %.067130 to i32                ; 2 uses
  %i.z = add i32 %i.y, -1
  %i.aa = call ptr @_ZNK4mlir9AffineMap9getResultEj(ptr noundef nonnull align 8 dereferenceable(8) %7, i32 noundef %i.z) #12 ; 4 uses
  %i.ab = call ptr @_ZNK4mlir9AffineMap9getResultEj(ptr noundef nonnull align 8 dereferenceable(8) %7, i32 noundef %i.y) #12 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  store ptr %i.aa, ptr %6, align 8
  %i.ac = call noundef i32 @_ZNK4mlir10AffineExpr7getKindEv(ptr noundef nonnull align 8 dereferenceable(8) %6) #12
  %i.ad = icmp eq i32 %i.ac, 6
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  br i1 %i.ad, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  store ptr %i.ab, ptr %5, align 8
  %i.ae = call noundef i32 @_ZNK4mlir10AffineExpr7getKindEv(ptr noundef nonnull align 8 dereferenceable(8) %5) #12
  %i.af = icmp eq i32 %i.ae, 6
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  br i1 %i.af, label %bb.d, label %bb.h

bb.d:                                             ; preds = %bb.c, %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #12
  store ptr %i.s, ptr %9, align 8, !tbaa !12
  store i32 0, ptr %i.t, align 8, !tbaa !13
  store i32 6, ptr %i.u, align 4, !tbaa !14
  call fastcc void @_ZN4mlir17AffineExprVisitorIN12_GLOBAL__N_118AffineDimCollectorEvE13walkPostOrderENS_10AffineExprE(ptr noundef nonnull align 1 dereferenceable(1) %9, ptr %i.aa)
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #12
  store ptr %i.v, ptr %10, align 8, !tbaa !12
  store i32 0, ptr %i.w, align 8, !tbaa !13
  store i32 6, ptr %i.x, align 4, !tbaa !14
  call fastcc void @_ZN4mlir17AffineExprVisitorIN12_GLOBAL__N_118AffineDimCollectorEvE13walkPostOrderENS_10AffineExprE(ptr noundef nonnull align 1 dereferenceable(1) %10, ptr %i.ab)
  %i.ag = load ptr, ptr %9, align 8, !tbaa !12    ; 2 uses
  %i.ah = load i32, ptr %i.t, align 8, !tbaa !13  ; 2 uses
  %i.ai = zext i32 %i.ah to i64
  %.idx137 = shl nuw nsw i64 %i.ai, 3
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ag, i64 %.idx137
  %.not77125 = icmp eq i32 %i.ah, 0
  br i1 %.not77125, label %._crit_edge129, label %.lr.ph128

._crit_edge129:                                   ; preds = %._crit_edge124, %bb.d
  %21 = load ptr, ptr %10, align 8, !tbaa !12     ; 2 uses
  %i.ak = icmp eq ptr %21, %i.v
  br i1 %i.ak, label %_ZN12_GLOBAL__N_118AffineDimCollectorD2Ev.exit, label %bb.e

bb.e:                                             ; preds = %._crit_edge129
  call void @free(ptr noundef %21) #12
  br label %_ZN12_GLOBAL__N_118AffineDimCollectorD2Ev.exit

_ZN12_GLOBAL__N_118AffineDimCollectorD2Ev.exit:   ; preds = %._crit_edge129, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #12
  %i.al = load ptr, ptr %9, align 8, !tbaa !12    ; 2 uses
  %i.am = icmp eq ptr %i.al, %i.s
  br i1 %i.am, label %_ZN12_GLOBAL__N_118AffineDimCollectorD2Ev.exit86, label %bb.f

bb.f:                                             ; preds = %_ZN12_GLOBAL__N_118AffineDimCollectorD2Ev.exit
  call void @free(ptr noundef %i.al) #12
  br label %_ZN12_GLOBAL__N_118AffineDimCollectorD2Ev.exit86

_ZN12_GLOBAL__N_118AffineDimCollectorD2Ev.exit86: ; preds = %_ZN12_GLOBAL__N_118AffineDimCollectorD2Ev.exit, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #12
  br label %bb.s

.lr.ph128:                                        ; preds = %bb.d, %._crit_edge124
  %.070126 = phi ptr [ %i.ar, %._crit_edge124 ], [ %i.ag, %bb.d ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #12
  %i.an = load i64, ptr %.070126, align 8
  store i64 %i.an, ptr %11, align 8
  %22 = load ptr, ptr %10, align 8, !tbaa !12     ; 2 uses
  %i.ao = load i32, ptr %i.w, align 8, !tbaa !13  ; 2 uses
  %i.ap = zext i32 %i.ao to i64
  %.idx138 = shl nuw nsw i64 %i.ap, 3
  %i.aq = getelementptr inbounds nuw i8, ptr %22, i64 %.idx138
  %.not78120 = icmp eq i32 %i.ao, 0
  br i1 %.not78120, label %._crit_edge124, label %.lr.ph123

._crit_edge124:                                   ; preds = %"_ZZN4mlir13sparse_tensor20IterationGraphSorter14addConstraintsENS_5ValueENS_9AffineMapEENK3$_0clEjj.exit", %.lr.ph128
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #12
  %i.ar = getelementptr inbounds nuw i8, ptr %.070126, i64 8 ; 2 uses
  %.not77 = icmp eq ptr %i.ar, %i.aj
  br i1 %.not77, label %._crit_edge129, label %.lr.ph128

.lr.ph123:                                        ; preds = %.lr.ph128, %"_ZZN4mlir13sparse_tensor20IterationGraphSorter14addConstraintsENS_5ValueENS_9AffineMapEENK3$_0clEjj.exit"
  %.071121 = phi ptr [ %i.bn, %"_ZZN4mlir13sparse_tensor20IterationGraphSorter14addConstraintsENS_5ValueENS_9AffineMapEENK3$_0clEjj.exit" ], [ %22, %.lr.ph128 ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #12
  %i.as = load i64, ptr %.071121, align 8
  store i64 %i.as, ptr %12, align 8
  %i.at = call noundef i32 @_ZNK4mlir13AffineDimExpr11getPositionEv(ptr noundef nonnull align 8 dereferenceable(8) %11) #12 ; 2 uses
  %i.au = call noundef i32 @_ZNK4mlir13AffineDimExpr11getPositionEv(ptr noundef nonnull align 8 dereferenceable(8) %12) #12 ; 3 uses
  %i.av = zext i32 %i.at to i64
  %i.aw = load ptr, ptr %i.k, align 8, !tbaa !60
  %i.ax = getelementptr inbounds nuw [40 x i8], ptr %i.aw, i64 %i.av
  %i.ay = zext i32 %i.au to i64                   ; 2 uses
  %i.az = load ptr, ptr %i.ax, align 8, !tbaa !63
  %i.ba = lshr i32 %i.au, 6
  %.zext.i = zext nneg i32 %i.ba to i64
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %i.az, i64 %.zext.i ; 2 uses
  %i.bc = and i64 %i.ay, 63
  %i.bd = shl nuw i64 1, %i.bc                    ; 2 uses
  %i.be = load i64, ptr %i.bb, align 8, !tbaa !58 ; 2 uses
  %i.bf = and i64 %i.be, %i.bd
  %i.bg = icmp ne i64 %i.bf, 0
  %i.bh = icmp eq i32 %i.at, %i.au
  %.not7.i = or i1 %i.bh, %i.bg
  br i1 %.not7.i, label %"_ZZN4mlir13sparse_tensor20IterationGraphSorter14addConstraintsENS_5ValueENS_9AffineMapEENK3$_0clEjj.exit", label %bb.g

bb.g:                                             ; preds = %.lr.ph123
  %i.bi = or i64 %i.be, %i.bd
  store i64 %i.bi, ptr %i.bb, align 8, !tbaa !58
  %i.bj = load ptr, ptr %i.l, align 8, !tbaa !17
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr %i.bj, i64 %i.ay ; 2 uses
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !18
  %i.bm = add i32 %i.bl, 1
  store i32 %i.bm, ptr %i.bk, align 4, !tbaa !18
  br label %"_ZZN4mlir13sparse_tensor20IterationGraphSorter14addConstraintsENS_5ValueENS_9AffineMapEENK3$_0clEjj.exit"

"_ZZN4mlir13sparse_tensor20IterationGraphSorter14addConstraintsENS_5ValueENS_9AffineMapEENK3$_0clEjj.exit": ; preds = %.lr.ph123, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #12
  %i.bn = getelementptr inbounds nuw i8, ptr %.071121, i64 8 ; 2 uses
  %.not78 = icmp eq ptr %i.bn, %i.aq
  br i1 %.not78, label %._crit_edge124, label %.lr.ph123

bb.h:                                             ; preds = %bb.c
  store i64 0, ptr %8, align 8, !tbaa !55
  call fastcc void @_ZN4mlir17AffineExprVisitorIN12_GLOBAL__N_115AffineDimFinderEvE13walkPostOrderENS_10AffineExprE(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr %i.aa)
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #12
  %.val84 = load ptr, ptr %8, align 8, !tbaa !55
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @_ZN4mlir13AffineDimExprC1EPNS_6detail17AffineExprStorageE(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef %.val84) #12
  %i.bo = load ptr, ptr %4, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  store ptr %i.bo, ptr %13, align 8
  %i.bp = call noundef i32 @_ZNK4mlir13AffineDimExpr11getPositionEv(ptr noundef nonnull align 8 dereferenceable(8) %13) #12 ; 5 uses
  store i64 0, ptr %8, align 8, !tbaa !55
  call fastcc void @_ZN4mlir17AffineExprVisitorIN12_GLOBAL__N_115AffineDimFinderEvE13walkPostOrderENS_10AffineExprE(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr %i.ab)
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #12
  %.val83 = load ptr, ptr %8, align 8, !tbaa !55
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @_ZN4mlir13AffineDimExprC1EPNS_6detail17AffineExprStorageE(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef %.val83) #12
  %i.bq = load ptr, ptr %3, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  store ptr %i.bq, ptr %14, align 8
  %i.br = call noundef i32 @_ZNK4mlir13AffineDimExpr11getPositionEv(ptr noundef nonnull align 8 dereferenceable(8) %14) #12 ; 5 uses
  %i.bs = zext i32 %i.bp to i64                   ; 3 uses
  %i.bt = load ptr, ptr %i.k, align 8, !tbaa !60
  %i.bu = getelementptr inbounds nuw [40 x i8], ptr %i.bt, i64 %i.bs
  %i.bv = zext i32 %i.br to i64                   ; 3 uses
  %i.bw = load ptr, ptr %i.bu, align 8, !tbaa !63
  %i.bx = lshr i32 %i.br, 6
  %.zext.i87 = zext nneg i32 %i.bx to i64         ; 2 uses
  %i.by = getelementptr inbounds nuw [8 x i8], ptr %i.bw, i64 %.zext.i87 ; 2 uses
  %i.bz = and i64 %i.bv, 63
  %i.ca = shl nuw i64 1, %i.bz                    ; 4 uses
  %i.cb = load i64, ptr %i.by, align 8, !tbaa !58 ; 2 uses
  %i.cc = and i64 %i.cb, %i.ca
  %i.cd = icmp ne i64 %i.cc, 0
  %i.ce = icmp eq i32 %i.bp, %i.br
  %.not7.i88 = or i1 %i.ce, %i.cd
  br i1 %.not7.i88, label %"_ZZN4mlir13sparse_tensor20IterationGraphSorter14addConstraintsENS_5ValueENS_9AffineMapEENK3$_0clEjj.exit89", label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.cf = or i64 %i.cb, %i.ca
  store i64 %i.cf, ptr %i.by, align 8, !tbaa !58
  %i.cg = load ptr, ptr %i.l, align 8, !tbaa !17
  %i.ch = getelementptr inbounds nuw [4 x i8], ptr %i.cg, i64 %i.bv ; 2 uses
  %i.ci = load i32, ptr %i.ch, align 4, !tbaa !18
  %i.cj = add i32 %i.ci, 1
  store i32 %i.cj, ptr %i.ch, align 4, !tbaa !18
  br label %"_ZZN4mlir13sparse_tensor20IterationGraphSorter14addConstraintsENS_5ValueENS_9AffineMapEENK3$_0clEjj.exit89"

"_ZZN4mlir13sparse_tensor20IterationGraphSorter14addConstraintsENS_5ValueENS_9AffineMapEENK3$_0clEjj.exit89": ; preds = %bb.h, %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #12
  store ptr %i.m, ptr %15, align 8, !tbaa !12
  store i32 0, ptr %i.n, align 8, !tbaa !13
  store i32 6, ptr %i.o, align 4, !tbaa !14
  call fastcc void @_ZN4mlir17AffineExprVisitorIN12_GLOBAL__N_118AffineDimCollectorEvE13walkPostOrderENS_10AffineExprE(ptr noundef nonnull align 1 dereferenceable(1) %15, ptr %i.aa)
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #12
  store ptr %i.p, ptr %16, align 8, !tbaa !12
  store i32 0, ptr %i.q, align 8, !tbaa !13
  store i32 6, ptr %i.r, align 4, !tbaa !14
  call fastcc void @_ZN4mlir17AffineExprVisitorIN12_GLOBAL__N_118AffineDimCollectorEvE13walkPostOrderENS_10AffineExprE(ptr noundef nonnull align 1 dereferenceable(1) %16, ptr %i.ab)
  %i.ck = load ptr, ptr %15, align 8, !tbaa !12   ; 2 uses
  %i.cl = load i32, ptr %i.n, align 8, !tbaa !13  ; 2 uses
  %i.cm = zext i32 %i.cl to i64
  %.idx = shl nuw nsw i64 %i.cm, 3
  %i.cn = getelementptr inbounds nuw i8, ptr %i.ck, i64 %.idx
  %.not104 = icmp eq i32 %i.cl, 0
  br i1 %.not104, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %"_ZZN4mlir13sparse_tensor20IterationGraphSorter14addConstraintsENS_5ValueENS_9AffineMapEENK3$_0clEjj.exit89"
  %i.co = lshr i32 %i.bp, 6
  %.zext.i90 = zext nneg i32 %i.co to i64
  %i.cp = and i64 %i.bs, 63
  %i.cq = shl nuw i64 1, %i.cp                    ; 2 uses
  br label %bb.j

._crit_edge:                                      ; preds = %"_ZZN4mlir13sparse_tensor20IterationGraphSorter14addConstraintsENS_5ValueENS_9AffineMapEENK3$_0clEjj.exit92", %"_ZZN4mlir13sparse_tensor20IterationGraphSorter14addConstraintsENS_5ValueENS_9AffineMapEENK3$_0clEjj.exit89"
  %i.cr = load ptr, ptr %16, align 8, !tbaa !12   ; 2 uses
  %i.cs = load i32, ptr %i.q, align 8, !tbaa !13  ; 2 uses
  %i.ct = zext i32 %i.cs to i64
  %.idx134 = shl nuw nsw i64 %i.ct, 3
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cr, i64 %.idx134
  %.not74106 = icmp eq i32 %i.cs, 0
  br i1 %.not74106, label %._crit_edge110, label %.lr.ph109

bb.j:                                             ; preds = %.lr.ph, %"_ZZN4mlir13sparse_tensor20IterationGraphSorter14addConstraintsENS_5ValueENS_9AffineMapEENK3$_0clEjj.exit92"
  %.068105 = phi ptr [ %i.ck, %.lr.ph ], [ %i.dl, %"_ZZN4mlir13sparse_tensor20IterationGraphSorter14addConstraintsENS_5ValueENS_9AffineMapEENK3$_0clEjj.exit92" ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #12
  %i.cv = load i64, ptr %.068105, align 8
  store i64 %i.cv, ptr %17, align 8
  %i.cw = call noundef i32 @_ZNK4mlir13AffineDimExpr11getPositionEv(ptr noundef nonnull align 8 dereferenceable(8) %17) #12 ; 2 uses
  %i.cx = zext i32 %i.cw to i64
  %i.cy = load ptr, ptr %i.k, align 8, !tbaa !60
  %i.cz = getelementptr inbounds nuw [40 x i8], ptr %i.cy, i64 %i.cx
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !63
  %i.db = getelementptr inbounds nuw [8 x i8], ptr %i.da, i64 %.zext.i90 ; 2 uses
  %i.dc = load i64, ptr %i.db, align 8, !tbaa !58 ; 2 uses
  %i.dd = and i64 %i.dc, %i.cq
  %i.de = icmp ne i64 %i.dd, 0
  %i.df = icmp eq i32 %i.cw, %i.bp
  %.not7.i91 = or i1 %i.df, %i.de
  br i1 %.not7.i91, label %"_ZZN4mlir13sparse_tensor20IterationGraphSorter14addConstraintsENS_5ValueENS_9AffineMapEENK3$_0clEjj.exit92", label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.dg = or i64 %i.dc, %i.cq
  store i64 %i.dg, ptr %i.db, align 8, !tbaa !58
  %i.dh = load ptr, ptr %i.l, align 8, !tbaa !17
  %i.di = getelementptr inbounds nuw [4 x i8], ptr %i.dh, i64 %i.bs ; 2 uses
  %i.dj = load i32, ptr %i.di, align 4, !tbaa !18
  %i.dk = add i32 %i.dj, 1
  store i32 %i.dk, ptr %i.di, align 4, !tbaa !18
  br label %"_ZZN4mlir13sparse_tensor20IterationGraphSorter14addConstraintsENS_5ValueENS_9AffineMapEENK3$_0clEjj.exit92"

"_ZZN4mlir13sparse_tensor20IterationGraphSorter14addConstraintsENS_5ValueENS_9AffineMapEENK3$_0clEjj.exit92": ; preds = %bb.j, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #12
  %i.dl = getelementptr inbounds nuw i8, ptr %.068105, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.dl, %i.cn
  br i1 %.not, label %._crit_edge, label %bb.j

._crit_edge110:                                   ; preds = %"_ZZN4mlir13sparse_tensor20IterationGraphSorter14addConstraintsENS_5ValueENS_9AffineMapEENK3$_0clEjj.exit95", %._crit_edge
  %i.dm = load ptr, ptr %15, align 8, !tbaa !12   ; 2 uses
  %i.dn = load i32, ptr %i.n, align 8, !tbaa !13  ; 2 uses
  %i.do = zext i32 %i.dn to i64
  %.idx135 = shl nuw nsw i64 %i.do, 3
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dm, i64 %.idx135
  %.not75115 = icmp eq i32 %i.dn, 0
  br i1 %.not75115, label %._crit_edge119, label %.lr.ph118

.lr.ph109:                                        ; preds = %._crit_edge, %"_ZZN4mlir13sparse_tensor20IterationGraphSorter14addConstraintsENS_5ValueENS_9AffineMapEENK3$_0clEjj.exit95"
  %.066107 = phi ptr [ %i.eg, %"_ZZN4mlir13sparse_tensor20IterationGraphSorter14addConstraintsENS_5ValueENS_9AffineMapEENK3$_0clEjj.exit95" ], [ %i.cr, %._crit_edge ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #12
  %i.dq = load i64, ptr %.066107, align 8
  store i64 %i.dq, ptr %18, align 8
  %i.dr = call noundef i32 @_ZNK4mlir13AffineDimExpr11getPositionEv(ptr noundef nonnull align 8 dereferenceable(8) %18) #12 ; 2 uses
  %i.ds = zext i32 %i.dr to i64
  %i.dt = load ptr, ptr %i.k, align 8, !tbaa !60
  %i.du = getelementptr inbounds nuw [40 x i8], ptr %i.dt, i64 %i.ds
  %i.dv = load ptr, ptr %i.du, align 8, !tbaa !63
  %i.dw = getelementptr inbounds nuw [8 x i8], ptr %i.dv, i64 %.zext.i87 ; 2 uses
  %i.dx = load i64, ptr %i.dw, align 8, !tbaa !58 ; 2 uses
  %i.dy = and i64 %i.dx, %i.ca
  %i.dz = icmp ne i64 %i.dy, 0
  %i.ea = icmp eq i32 %i.dr, %i.br
  %.not7.i94 = or i1 %i.ea, %i.dz
  br i1 %.not7.i94, label %"_ZZN4mlir13sparse_tensor20IterationGraphSorter14addConstraintsENS_5ValueENS_9AffineMapEENK3$_0clEjj.exit95", label %bb.l

bb.l:                                             ; preds = %.lr.ph109
  %i.eb = or i64 %i.dx, %i.ca
  store i64 %i.eb, ptr %i.dw, align 8, !tbaa !58
  %i.ec = load ptr, ptr %i.l, align 8, !tbaa !17
  %i.ed = getelementptr inbounds nuw [4 x i8], ptr %i.ec, i64 %i.bv ; 2 uses
  %i.ee = load i32, ptr %i.ed, align 4, !tbaa !18
  %i.ef = add i32 %i.ee, 1
  store i32 %i.ef, ptr %i.ed, align 4, !tbaa !18
  br label %"_ZZN4mlir13sparse_tensor20IterationGraphSorter14addConstraintsENS_5ValueENS_9AffineMapEENK3$_0clEjj.exit95"

"_ZZN4mlir13sparse_tensor20IterationGraphSorter14addConstraintsENS_5ValueENS_9AffineMapEENK3$_0clEjj.exit95": ; preds = %.lr.ph109, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #12
  %i.eg = getelementptr inbounds nuw i8, ptr %.066107, i64 8 ; 2 uses
  %.not74 = icmp eq ptr %i.eg, %i.cu
  br i1 %.not74, label %._crit_edge110, label %.lr.ph109

._crit_edge119:                                   ; preds = %.loopexit, %._crit_edge110
  %i.eh = load ptr, ptr %16, align 8, !tbaa !12   ; 2 uses
  %i.ei = icmp eq ptr %i.eh, %i.p
  br i1 %i.ei, label %_ZN12_GLOBAL__N_118AffineDimCollectorD2Ev.exit96, label %bb.m

bb.m:                                             ; preds = %._crit_edge119
  call void @free(ptr noundef %i.eh) #12
  br label %_ZN12_GLOBAL__N_118AffineDimCollectorD2Ev.exit96

_ZN12_GLOBAL__N_118AffineDimCollectorD2Ev.exit96: ; preds = %._crit_edge119, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #12
  %i.ej = load ptr, ptr %15, align 8, !tbaa !12   ; 2 uses
  %i.ek = icmp eq ptr %i.ej, %i.m
  br i1 %i.ek, label %_ZN12_GLOBAL__N_118AffineDimCollectorD2Ev.exit97, label %bb.n

bb.n:                                             ; preds = %_ZN12_GLOBAL__N_118AffineDimCollectorD2Ev.exit96
  call void @free(ptr noundef %i.ej) #12
  br label %_ZN12_GLOBAL__N_118AffineDimCollectorD2Ev.exit97

_ZN12_GLOBAL__N_118AffineDimCollectorD2Ev.exit97: ; preds = %_ZN12_GLOBAL__N_118AffineDimCollectorD2Ev.exit96, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #12
  br label %bb.s

.lr.ph118:                                        ; preds = %._crit_edge110, %.loopexit
  %.065116 = phi ptr [ %i.fo, %.loopexit ], [ %i.dm, %._crit_edge110 ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #12
  %i.el = load i64, ptr %.065116, align 8
  store i64 %i.el, ptr %19, align 8
  %i.em = call noundef i32 @_ZNK4mlir13AffineDimExpr11getPositionEv(ptr noundef nonnull align 8 dereferenceable(8) %19) #12 ; 3 uses
  %i.en = icmp eq i32 %i.em, %i.bp
  br i1 %i.en, label %.loopexit, label %bb.o

bb.o:                                             ; preds = %.lr.ph118
  %i.eo = load ptr, ptr %16, align 8, !tbaa !12   ; 2 uses
  %i.ep = load i32, ptr %i.q, align 8, !tbaa !13  ; 2 uses
  %i.eq = zext i32 %i.ep to i64
  %.idx136 = shl nuw nsw i64 %i.eq, 3
end_hunk_0
