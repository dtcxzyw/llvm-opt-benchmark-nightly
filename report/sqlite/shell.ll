Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/sqlite/original/shell?download=true
inline.NumInlined: 1512
inline.NumDeleted: 270
loop-unroll.NumCompletelyUnrolled: 74
loop-unroll.NumRuntimeUnrolled: 39
loop-unroll.NumUnrolled: 119
loop-unroll.NumUnrolledNotLatch: 1
begin_hunk_0_@sqlite3_expert_destroy:bb.a
  tail call void @sqlite3_free(ptr noundef %i.ab) #45
  %i.ac = getelementptr inbounds nuw i8, ptr %.09.i, i64 16
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !295
  tail call void @sqlite3_free(ptr noundef %i.ad) #45
  tail call void @sqlite3_free(ptr noundef nonnull %.09.i) #45
  %.not.i11 = icmp eq ptr %i.z, null
  br i1 %.not.i11, label %idxStatementFree.exit, label %.lr.ph.i10, !llvm.loop !296

idxStatementFree.exit:                            ; preds = %.lr.ph.i10, %idxScanFree.exit
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !268 ; 2 uses
  %.not5.i = icmp eq ptr %i.af, null
  br i1 %.not5.i, label %idxTableFree.exit, label %.lr.ph.i12

.lr.ph.i12:                                       ; preds = %idxStatementFree.exit, %.lr.ph.i12
  %.06.i = phi ptr [ %i.ah, %.lr.ph.i12 ], [ %i.af, %idxStatementFree.exit ] ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.06.i, i64 24
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !269 ; 2 uses
  tail call void @sqlite3_free(ptr noundef nonnull %.06.i) #45
  %.not.i13 = icmp eq ptr %i.ah, null
  br i1 %.not.i13, label %idxTableFree.exit, label %.lr.ph.i12, !llvm.loop !297

idxTableFree.exit:                                ; preds = %.lr.ph.i12, %idxStatementFree.exit
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !278 ; 2 uses
  %.not5.i14 = icmp eq ptr %i.aj, null
  br i1 %.not5.i14, label %idxWriteFree.exit, label %.lr.ph.i15

.lr.ph.i15:                                       ; preds = %idxTableFree.exit, %.lr.ph.i15
  %.06.i16 = phi ptr [ %i.al, %.lr.ph.i15 ], [ %i.aj, %idxTableFree.exit ] ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.06.i16, i64 16
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !279 ; 2 uses
  tail call void @sqlite3_free(ptr noundef nonnull %.06.i16) #45
  %.not.i17 = icmp eq ptr %i.al, null
  br i1 %.not.i17, label %idxWriteFree.exit, label %.lr.ph.i15, !llvm.loop !298

idxWriteFree.exit:                                ; preds = %.lr.ph.i15, %idxTableFree.exit
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 96
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge.i, %idxWriteFree.exit
  %indvars.iv.i = phi i64 [ 0, %idxWriteFree.exit ], [ %indvars.iv.next.i, %._crit_edge.i ] ; 2 uses
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.am, i64 %indvars.iv.i
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !299 ; 2 uses
  %.not10.i = icmp eq ptr %i.ao, null
  br i1 %.not10.i, label %._crit_edge.i, label %.lr.ph.i18

.lr.ph.i18:                                       ; preds = %bb.c, %.lr.ph.i18
  %.011.i = phi ptr [ %i.aq, %.lr.ph.i18 ], [ %i.ao, %bb.c ] ; 3 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.011.i, i64 24
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !300 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.011.i, i64 16
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !302
  tail call void @sqlite3_free(ptr noundef %i.as) #45
  tail call void @sqlite3_free(ptr noundef nonnull %.011.i) #45
  %.not.i19 = icmp eq ptr %i.aq, null
  br i1 %.not.i19, label %._crit_edge.i, label %.lr.ph.i18, !llvm.loop !303

._crit_edge.i:                                    ; preds = %.lr.ph.i18, %bb.c
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, 1023
  br i1 %exitcond.not.i, label %idxHashClear.exit, label %bb.c, !llvm.loop !304

idxHashClear.exit:                                ; preds = %._crit_edge.i
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 88
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(8192) %i.at, i8 0, i64 8192, i1 false)
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 8280
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !305
  tail call void @sqlite3_free(ptr noundef %i.av) #45
  tail call void @sqlite3_free(ptr noundef nonnull %0) #45
  br label %bb.d

bb.d:                                             ; preds = %idxHashClear.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn uwtable
define range(i32 0, 13) i32 @sqlite3_expert_config(ptr nofree noundef writeonly captures(none) %0, i32 noundef %1, ...) local_unnamed_addr #10 {
bb.a:
  %2 = alloca [1 x %struct.__va_list_tag], align 16 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #45
  call void @llvm.va_start.p0(ptr nonnull %2)
  %cond = icmp eq i32 %1, 1
  br i1 %cond, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.a = load i32, ptr %2, align 16               ; 3 uses
  %i.b = icmp ult i32 %i.a, 41
  br i1 %i.b, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.d = load ptr, ptr %i.c, align 16
  %i.e = zext nneg i32 %i.a to i64
  %i.f = getelementptr i8, ptr %i.d, i64 %i.e
  %i.g = add nuw nsw i32 %i.a, 8
  store i32 %i.g, ptr %2, align 16
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8              ; 2 uses
  %i.j = getelementptr i8, ptr %i.i, i64 8
  store ptr %i.j, ptr %i.h, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.k = phi ptr [ %i.f, %bb.c ], [ %i.i, %bb.d ]
  %i.l = load i32, ptr %i.k, align 4, !tbaa !17
  %spec.store.select = call i32 @llvm.smax.i32(i32 %i.l, i32 0)
  %spec.store.select1 = call i32 @llvm.umin.i32(i32 %spec.store.select, i32 100)
  store i32 %spec.store.select1, ptr %0, align 8, !tbaa !253
  br label %bb.f

bb.f:                                             ; preds = %bb.a, %bb.e
  %.0 = phi i32 [ 0, %bb.e ], [ 12, %bb.a ]
  call void @llvm.va_end.p0(ptr nonnull %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #45
  ret i32 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start.p0(ptr) #11

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end.p0(ptr) #11

; Function Attrs: nounwind uwtable
define i32 @sqlite3_expert_sql(ptr nofree noundef captures(none) %0, ptr noundef %1, ptr nofree noundef writeonly captures(none) %2) local_unnamed_addr #4 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 6 uses
  %i.b = alloca ptr, align 8                      ; 10 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !280  ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 5 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !291  ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #45
  store ptr %1, ptr %i.a, align 8, !tbaa !66
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.h = load i32, ptr %i.g, align 8, !tbaa !306
  %.not = icmp eq i32 %i.h, 0
  br i1 %.not, label %.preheader, label %.critedge.thread

.preheader:                                       ; preds = %bb.a
  %.not65 = icmp eq ptr %1, null
  br i1 %.not65, label %.critedge.thread, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.j
  %i.k = phi ptr [ %1, %.lr.ph ], [ %i.al, %bb.j ] ; 2 uses
  %i.l = load i8, ptr %i.k, align 1, !tbaa !16
  %.not37 = icmp eq i8 %i.l, 0
  br i1 %.not37, label %.critedge.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #45
  store ptr null, ptr %i.b, align 8, !tbaa !110
  %i.m = load ptr, ptr %i.i, align 8, !tbaa !245  ; 2 uses
  %i.n = call i32 @sqlite3_prepare_v2(ptr noundef %i.m, ptr noundef nonnull %i.k, i32 noundef -1, ptr noundef nonnull %i.b, ptr noundef null) #45 ; 2 uses
  %.not.i = icmp eq i32 %i.n, 0
  br i1 %.not.i, label %bb.d, label %.critedge.thread58

.critedge.thread58:                               ; preds = %bb.c
  store ptr null, ptr %i.b, align 8, !tbaa !110
  br label %.sink.split

bb.d:                                             ; preds = %bb.c
  %i.o = load ptr, ptr %i.b, align 8, !tbaa !110
  %i.p = call i32 @sqlite3_finalize(ptr noundef %i.o) #45 ; 0 uses
  %i.q = load ptr, ptr %i.j, align 8, !tbaa !255
  %i.r = load ptr, ptr %i.a, align 8, !tbaa !66
  %i.s = call i32 @sqlite3_prepare_v2(ptr noundef %i.q, ptr noundef %i.r, i32 noundef -1, ptr noundef nonnull %i.b, ptr noundef nonnull %i.a) #45 ; 2 uses
  %i.t = icmp eq i32 %i.s, 0
  br i1 %i.t, label %bb.e, label %.critedge.thread89

bb.e:                                             ; preds = %bb.d
  %i.u = load ptr, ptr %i.b, align 8, !tbaa !110  ; 2 uses
  %.not39 = icmp eq ptr %i.u, null
  br i1 %.not39, label %bb.j, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.v = call ptr @sqlite3_sql(ptr noundef nonnull %i.u) #45 ; 2 uses
  %i.w = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.v) #46
  %sext = shl i64 %i.w, 32
  %i.x = ashr exact i64 %sext, 32                 ; 2 uses
  %i.y = add nsw i64 %i.x, 41                     ; 2 uses
  %i.z = call ptr @sqlite3_malloc64(i64 noundef %i.y) #45 ; 7 uses
  %.not.i42 = icmp eq ptr %i.z, null
  br i1 %.not.i42, label %idxMalloc.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.z, i8 0, i64 %i.y, i1 false)
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 40 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  store ptr %i.aa, ptr %i.ab, align 8, !tbaa !307
  %i.ac = add nsw i64 %i.x, 1
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.aa, ptr nonnull align 1 %i.v, i64 %i.ac, i1 false)
  %i.ad = load ptr, ptr %i.e, align 8, !tbaa !291 ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.z, i64 32
  store ptr %i.ad, ptr %i.ae, align 8, !tbaa !292
  %.not40 = icmp eq ptr %i.ad, null
  br i1 %.not40, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.af = load i32, ptr %i.ad, align 8, !tbaa !308
  %i.ag = add nsw i32 %i.af, 1
  store i32 %i.ag, ptr %i.z, align 8, !tbaa !308
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  store ptr %i.z, ptr %i.e, align 8, !tbaa !291
  br label %idxMalloc.exit

idxMalloc.exit:                                   ; preds = %bb.f, %bb.i
  %.351 = phi i32 [ 0, %bb.i ], [ 7, %bb.f ]
  %i.ah = load ptr, ptr %i.b, align 8, !tbaa !110
  %i.ai = call i32 @sqlite3_finalize(ptr noundef %i.ah) #45 ; 0 uses
  br label %bb.j

.critedge.thread89:                               ; preds = %bb.d
  %i.aj = load ptr, ptr %i.j, align 8, !tbaa !255
  br label %.sink.split

bb.j:                                             ; preds = %idxMalloc.exit, %bb.e
  %.1 = phi i32 [ 0, %bb.e ], [ %.351, %idxMalloc.exit ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #45
  %i.ak = icmp eq i32 %.1, 0
  %i.al = load ptr, ptr %i.a, align 8             ; 2 uses
  %i.am = icmp ne ptr %i.al, null
  %or.cond = select i1 %i.ak, i1 %i.am, i1 false
  br i1 %or.cond, label %bb.b, label %.critedge

.critedge:                                        ; preds = %bb.j
  %.not41 = icmp eq i32 %.1, 0
  br i1 %.not41, label %.critedge.thread, label %bb.k

.sink.split:                                      ; preds = %.critedge.thread58, %.critedge.thread89
  %.sink = phi ptr [ %i.aj, %.critedge.thread89 ], [ %i.m, %.critedge.thread58 ]
  %.261.ph = phi i32 [ %i.s, %.critedge.thread89 ], [ %i.n, %.critedge.thread58 ]
  %i.an = call ptr @sqlite3_errmsg(ptr noundef %.sink) #45
  %i.ao = call ptr (ptr, ...) @sqlite3_mprintf(ptr noundef nonnull @.str.51, ptr noundef %i.an) #45
  store ptr %i.ao, ptr %2, align 8, !tbaa !66
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #45
  br label %bb.k

bb.k:                                             ; preds = %.sink.split, %.critedge
  %.261 = phi i32 [ %.1, %.critedge ], [ %.261.ph, %.sink.split ]
  %i.ap = load ptr, ptr %i.c, align 8, !tbaa !280 ; 2 uses
  %.not19.i = icmp eq ptr %i.ap, %i.d
  br i1 %.not19.i, label %idxScanFree.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.k, %idxConstraintFree.exit18.i
  %.020.i = phi ptr [ %i.ar, %idxConstraintFree.exit18.i ], [ %i.ap, %bb.k ] ; 5 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.020.i, i64 48
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !281 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %.020.i, i64 24
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !284 ; 2 uses
  %.not5.i.i = icmp eq ptr %i.at, null
  br i1 %.not5.i.i, label %idxConstraintFree.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i, %.lr.ph.i.i
  %.06.i.i = phi ptr [ %i.av, %.lr.ph.i.i ], [ %i.at, %.lr.ph.i ] ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %.06.i.i, i64 24
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !285 ; 2 uses
  call void @sqlite3_free(ptr noundef nonnull %.06.i.i) #45
  %.not.i.i = icmp eq ptr %i.av, null
  br i1 %.not.i.i, label %idxConstraintFree.exit.i, label %.lr.ph.i.i, !llvm.loop !287

idxConstraintFree.exit.i:                         ; preds = %.lr.ph.i.i, %.lr.ph.i
  %i.aw = getelementptr inbounds nuw i8, ptr %.020.i, i64 32
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !288 ; 2 uses
  %.not5.i9.i = icmp eq ptr %i.ax, null
  br i1 %.not5.i9.i, label %idxConstraintFree.exit13.i, label %.lr.ph.i10.i

.lr.ph.i10.i:                                     ; preds = %idxConstraintFree.exit.i, %.lr.ph.i10.i
  %.06.i11.i = phi ptr [ %i.az, %.lr.ph.i10.i ], [ %i.ax, %idxConstraintFree.exit.i ] ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %.06.i11.i, i64 24
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !285 ; 2 uses
  call void @sqlite3_free(ptr noundef nonnull %.06.i11.i) #45
  %.not.i12.i = icmp eq ptr %i.az, null
  br i1 %.not.i12.i, label %idxConstraintFree.exit13.i, label %.lr.ph.i10.i, !llvm.loop !287

idxConstraintFree.exit13.i:                       ; preds = %.lr.ph.i10.i, %idxConstraintFree.exit.i
  %i.ba = getelementptr inbounds nuw i8, ptr %.020.i, i64 40
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !289 ; 2 uses
  %.not5.i14.i = icmp eq ptr %i.bb, null
  br i1 %.not5.i14.i, label %idxConstraintFree.exit18.i, label %.lr.ph.i15.i

.lr.ph.i15.i:                                     ; preds = %idxConstraintFree.exit13.i, %.lr.ph.i15.i
  %.06.i16.i = phi ptr [ %i.bd, %.lr.ph.i15.i ], [ %i.bb, %idxConstraintFree.exit13.i ] ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %.06.i16.i, i64 24
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !285 ; 2 uses
  call void @sqlite3_free(ptr noundef nonnull %.06.i16.i) #45
  %.not.i17.i = icmp eq ptr %i.bd, null
  br i1 %.not.i17.i, label %idxConstraintFree.exit18.i, label %.lr.ph.i15.i, !llvm.loop !287

idxConstraintFree.exit18.i:                       ; preds = %.lr.ph.i15.i, %idxConstraintFree.exit13.i
  call void @sqlite3_free(ptr noundef nonnull %.020.i) #45
  %.not.i43 = icmp eq ptr %i.ar, %i.d
  br i1 %.not.i43, label %idxScanFree.exit, label %.lr.ph.i, !llvm.loop !290

idxScanFree.exit:                                 ; preds = %idxConstraintFree.exit18.i, %bb.k
  %i.be = load ptr, ptr %i.e, align 8, !tbaa !291 ; 2 uses
  %.not8.i = icmp eq ptr %i.be, %i.f
  br i1 %.not8.i, label %idxStatementFree.exit, label %.lr.ph.i44

.lr.ph.i44:                                       ; preds = %idxScanFree.exit, %.lr.ph.i44
  %.09.i = phi ptr [ %i.bg, %.lr.ph.i44 ], [ %i.be, %idxScanFree.exit ] ; 4 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %.09.i, i64 32
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !292 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %.09.i, i64 24
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !294
  call void @sqlite3_free(ptr noundef %i.bi) #45
  %i.bj = getelementptr inbounds nuw i8, ptr %.09.i, i64 16
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !295
  call void @sqlite3_free(ptr noundef %i.bk) #45
  call void @sqlite3_free(ptr noundef %.09.i) #45
  %.not.i45 = icmp eq ptr %i.bg, %i.f
  br i1 %.not.i45, label %idxStatementFree.exit, label %.lr.ph.i44, !llvm.loop !296

idxStatementFree.exit:                            ; preds = %.lr.ph.i44, %idxScanFree.exit
  store ptr %i.d, ptr %i.c, align 8, !tbaa !280
  store ptr %i.f, ptr %i.e, align 8, !tbaa !291
  br label %.critedge.thread

.critedge.thread:                                 ; preds = %bb.b, %.preheader, %.critedge, %idxStatementFree.exit, %bb.a
  %.033 = phi i32 [ 21, %bb.a ], [ 0, %.critedge ], [ %.261, %idxStatementFree.exit ], [ 0, %.preheader ], [ 0, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #45
  ret i32 %.033
}

declare ptr @sqlite3_sql(ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nounwind uwtable
define i32 @sqlite3_expert_analyze(ptr nofree noundef captures(none) %0, ptr noundef %1) local_unnamed_addr #4 {
bb.a:
  %i.a = alloca i32, align 4                      ; 8 uses
  %2 = alloca %struct.IdxHash, align 8            ; 8 uses
  %i.b = alloca ptr, align 8                      ; 11 uses
  %i.c = alloca ptr, align 8                      ; 11 uses
  %i.d = alloca i32, align 4                      ; 10 uses
  %i.e = alloca ptr, align 8                      ; 10 uses
  %3 = alloca %struct.IdxSampleCtx, align 8       ; 6 uses
  %i.f = alloca ptr, align 8                      ; 12 uses
  %i.g = alloca ptr, align 8                      ; 8 uses
  %i.h = alloca ptr, align 8                      ; 8 uses
  %i.i = alloca ptr, align 8                      ; 8 uses
  %i.j = alloca i32, align 4                      ; 19 uses
  %i.k = alloca ptr, align 8                      ; 5 uses
  %i.l = alloca i32, align 4                      ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l) #45
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %.01421.i = load ptr, ptr %i.m, align 8, !tbaa !278 ; 2 uses
  %.not.i = icmp eq ptr %.01421.i, null
  br i1 %.not.i, label %idxProcessTriggers.exit.thread, label %.preheader.lr.ph.i

idxProcessTriggers.exit.thread:                   ; preds = %bb.a
  store i32 0, ptr %i.l, align 4, !tbaa !17
  br label %bb.p

.preheader.lr.ph.i:                               ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 5 uses
  br label %.preheader.i

.loopexit.i:                                      ; preds = %idxProcessOneTrigger.exit.i
  %.014.i = load ptr, ptr %i.m, align 8, !tbaa !278 ; 2 uses
  %i.p = icmp ne ptr %.014.i, %.01423.i
  %i.q = select i1 %i.ck, i1 %i.p, i1 false
  br i1 %i.q, label %.preheader.i, label %idxProcessTriggers.exit, !llvm.loop !309

.preheader.i:                                     ; preds = %.loopexit.i, %.preheader.lr.ph.i
  %.01423.i = phi ptr [ %.01421.i, %.preheader.lr.ph.i ], [ %.014.i, %.loopexit.i ] ; 3 uses
  %.01522.i = phi ptr [ null, %.preheader.lr.ph.i ], [ %.01423.i, %.loopexit.i ]
  br label %bb.b

bb.b:                                             ; preds = %idxProcessOneTrigger.exit.i, %.preheader.i
  %.020.i = phi ptr [ %.01423.i, %.preheader.i ], [ %i.cj, %idxProcessOneTrigger.exit.i ] ; 3 uses
  %i.r = load ptr, ptr %.020.i, align 8, !tbaa !274 ; 8 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !267  ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #45
  store ptr null, ptr %i.i, align 8, !tbaa !110
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #45
  %i.u = load ptr, ptr %i.n, align 8, !tbaa !245
  %i.v = call i32 (ptr, ptr, ptr, ptr, ...) @idxPrintfPrepareStmt(ptr noundef %i.u, ptr noundef nonnull %i.i, ptr noundef %1, ptr noundef nonnull @.str.406, ptr noundef %i.t, ptr noundef %i.t) ; 2 uses
  %i.w = icmp eq i32 %i.v, 0
  br i1 %i.w, label %.lr.ph.i.i, label %idxFinalize.exit.thread.i.i

.lr.ph.i.i:                                       ; preds = %bb.b, %bb.e
  %i.x = load ptr, ptr %i.i, align 8, !tbaa !110
end_hunk_0
begin_hunk_1_@sqlite3_expert_analyze:bb.a
  %i.rd = mul i32 %i.qy, 9
  %i.re = add i32 %i.rd, %i.rc
  %i.rf = getelementptr inbounds nuw i8, ptr %.053.i, i64 %indvars.iv.i.i.i.i54
  %i.rg = getelementptr inbounds nuw i8, ptr %i.rf, i64 2
  %i.rh = load i8, ptr %i.rg, align 1, !tbaa !16
  %i.ri = zext i8 %i.rh to i32
  %i.rj = mul i32 %i.re, 9
  %i.rk = add i32 %i.rj, %i.ri
  %i.rl = getelementptr inbounds nuw i8, ptr %.053.i, i64 %indvars.iv.i.i.i.i54
  %i.rm = getelementptr inbounds nuw i8, ptr %i.rl, i64 3
  %i.rn = load i8, ptr %i.rm, align 1, !tbaa !16
  %i.ro = zext i8 %i.rn to i32
  %i.rp = mul i32 %i.rk, 9
  %i.rq = add i32 %i.rp, %i.ro                    ; 3 uses
  %indvars.iv.next.i.i.i.i56.3 = add nuw nsw i64 %indvars.iv.i.i.i.i54, 4 ; 2 uses
  %niter349.next.3 = add i64 %niter349, 4         ; 2 uses
  %niter349.ncmp.3 = icmp eq i64 %niter349.next.3, %unroll_iter348
  br i1 %niter349.ncmp.3, label %._crit_edge.loopexit.i.i.i.i58.unr-lcssa, label %.lr.ph.i.i.i.i53, !llvm.loop !337

._crit_edge.loopexit.i.i.i.i58.unr-lcssa:         ; preds = %.lr.ph.i.i.i.i53
  %lcmp.mod345.not = icmp eq i64 %xtraiter343, 0
  br i1 %lcmp.mod345.not, label %._crit_edge.loopexit.i.i.i.i58, label %.lr.ph.i.i.i.i53.epil.preheader

.lr.ph.i.i.i.i53.epil.preheader:                  ; preds = %._crit_edge.loopexit.i.i.i.i58.unr-lcssa, %.lr.ph.i.i.i.i53.preheader
  %indvars.iv.i.i.i.i54.epil.init = phi i64 [ 0, %.lr.ph.i.i.i.i53.preheader ], [ %indvars.iv.next.i.i.i.i56.3, %._crit_edge.loopexit.i.i.i.i58.unr-lcssa ]
  %.078.i.i.i.i55.epil.init = phi i32 [ 0, %.lr.ph.i.i.i.i53.preheader ], [ %i.rq, %._crit_edge.loopexit.i.i.i.i58.unr-lcssa ]
  %lcmp.mod347 = icmp ne i64 %xtraiter343, 0
  call void @llvm.assume(i1 %lcmp.mod347)
  br label %.lr.ph.i.i.i.i53.epil

.lr.ph.i.i.i.i53.epil:                            ; preds = %.lr.ph.i.i.i.i53.epil, %.lr.ph.i.i.i.i53.epil.preheader
  %indvars.iv.i.i.i.i54.epil = phi i64 [ %indvars.iv.next.i.i.i.i56.epil, %.lr.ph.i.i.i.i53.epil ], [ %indvars.iv.i.i.i.i54.epil.init, %.lr.ph.i.i.i.i53.epil.preheader ] ; 2 uses
  %.078.i.i.i.i55.epil = phi i32 [ %i.rv, %.lr.ph.i.i.i.i53.epil ], [ %.078.i.i.i.i55.epil.init, %.lr.ph.i.i.i.i53.epil.preheader ]
  %epil.iter344 = phi i64 [ %epil.iter344.next, %.lr.ph.i.i.i.i53.epil ], [ 0, %.lr.ph.i.i.i.i53.epil.preheader ]
  %i.rr = getelementptr inbounds nuw i8, ptr %.053.i, i64 %indvars.iv.i.i.i.i54.epil
  %i.rs = load i8, ptr %i.rr, align 1, !tbaa !16
  %i.rt = zext i8 %i.rs to i32
  %i.ru = mul i32 %.078.i.i.i.i55.epil, 9
  %i.rv = add i32 %i.ru, %i.rt                    ; 2 uses
  %indvars.iv.next.i.i.i.i56.epil = add nuw nsw i64 %indvars.iv.i.i.i.i54.epil, 1
  %epil.iter344.next = add i64 %epil.iter344, 1   ; 2 uses
  %epil.iter344.cmp.not = icmp eq i64 %epil.iter344.next, %xtraiter343
  br i1 %epil.iter344.cmp.not, label %._crit_edge.loopexit.i.i.i.i58, label %.lr.ph.i.i.i.i53.epil, !llvm.loop !349

._crit_edge.loopexit.i.i.i.i58:                   ; preds = %.lr.ph.i.i.i.i53.epil, %._crit_edge.loopexit.i.i.i.i58.unr-lcssa
  %.lcssa306 = phi i32 [ %i.rq, %._crit_edge.loopexit.i.i.i.i58.unr-lcssa ], [ %i.rv, %.lr.ph.i.i.i.i53.epil ]
  %i.rw = urem i32 %.lcssa306, 1023
  %i.rx = zext nneg i32 %i.rw to i64
  br label %idxHashString.exit.i.i.i59

idxHashString.exit.i.i.i59:                       ; preds = %._crit_edge.loopexit.i.i.i.i58, %.critedge2.i
  %.07.lcssa.i.i.i.i60 = phi i64 [ 0, %.critedge2.i ], [ %i.rx, %._crit_edge.loopexit.i.i.i.i58 ]
  %i.ry = getelementptr inbounds nuw [8 x i8], ptr %i.oo, i64 %.07.lcssa.i.i.i.i60
  %.017.i.i.i61 = load ptr, ptr %i.ry, align 8, !tbaa !299 ; 2 uses
  %.not18.i.i.i62 = icmp eq ptr %.017.i.i.i61, null
  br i1 %.not18.i.i.i62, label %idxHashSearch.exit.thread.i, label %.lr.ph.i.i.i63

.lr.ph.i.i.i63:                                   ; preds = %idxHashString.exit.i.i.i59, %bb.bx
  %.019.i.i.i64 = phi ptr [ %.0.i.i.i65, %bb.bx ], [ %.017.i.i.i61, %idxHashString.exit.i.i.i59 ] ; 3 uses
  %i.rz = load ptr, ptr %.019.i.i.i64, align 8, !tbaa !339 ; 2 uses
  %i.sa = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.rz) #46
  %i.sb = trunc i64 %i.sa to i32
  %i.sc = icmp eq i32 %i.qs, %i.sb
  br i1 %i.sc, label %bb.bw, label %bb.bx

bb.bw:                                            ; preds = %.lr.ph.i.i.i63
  %bcmp.i.i.i67 = call i32 @bcmp(ptr nonnull %i.rz, ptr nonnull readonly %.053.i, i64 %indvars.iv133.i)
  %i.sd = icmp eq i32 %bcmp.i.i.i67, 0
  br i1 %i.sd, label %idxHashSearch.exit.i, label %bb.bx

bb.bx:                                            ; preds = %bb.bw, %.lr.ph.i.i.i63
  %i.se = getelementptr inbounds nuw i8, ptr %.019.i.i.i64, i64 24
  %.0.i.i.i65 = load ptr, ptr %i.se, align 8, !tbaa !299 ; 2 uses
  %.not.i.i.i66 = icmp eq ptr %.0.i.i.i65, null
  br i1 %.not.i.i.i66, label %idxHashSearch.exit.thread.i, label %.lr.ph.i.i.i63, !llvm.loop !340

idxHashSearch.exit.i:                             ; preds = %bb.bw
  %i.sf = getelementptr inbounds nuw i8, ptr %.019.i.i.i64, i64 8
  %i.sg = load ptr, ptr %i.sf, align 8, !tbaa !344 ; 9 uses
  %.not71.i = icmp eq ptr %i.sg, null
  br i1 %.not71.i, label %idxHashSearch.exit.thread.i, label %bb.by

bb.by:                                            ; preds = %idxHashSearch.exit.i
  %i.sh = call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %i.sg) #46 ; 5 uses
  %i.si = trunc i64 %i.sh to i32                  ; 2 uses
  %i.sj = icmp sgt i32 %i.si, 0
  br i1 %i.sj, label %.lr.ph.preheader.i.i.i, label %idxHashString.exit.i.i

.lr.ph.preheader.i.i.i:                           ; preds = %bb.by
  %wide.trip.count.i.i.i = and i64 %i.sh, 2147483647
  %i.sk = add nsw i64 %wide.trip.count.i.i.i, -1
  %xtraiter350 = and i64 %i.sh, 3                 ; 3 uses
  %i.sl = icmp ult i64 %i.sk, 3
  br i1 %i.sl, label %.lr.ph.i.i78.i.epil.preheader, label %.lr.ph.preheader.i.i.i.new

.lr.ph.preheader.i.i.i.new:                       ; preds = %.lr.ph.preheader.i.i.i
  %unroll_iter355 = and i64 %i.sh, 2147483644
  br label %.lr.ph.i.i78.i

.lr.ph.i.i78.i:                                   ; preds = %.lr.ph.i.i78.i, %.lr.ph.preheader.i.i.i.new
  %indvars.iv.i.i.i = phi i64 [ 0, %.lr.ph.preheader.i.i.i.new ], [ %indvars.iv.next.i.i.i.3, %.lr.ph.i.i78.i ] ; 5 uses
  %.078.i.i.i = phi i32 [ 0, %.lr.ph.preheader.i.i.i.new ], [ %i.ti, %.lr.ph.i.i78.i ]
  %niter356 = phi i64 [ 0, %.lr.ph.preheader.i.i.i.new ], [ %niter356.next.3, %.lr.ph.i.i78.i ]
  %i.sm = getelementptr inbounds nuw i8, ptr %i.sg, i64 %indvars.iv.i.i.i
  %i.sn = load i8, ptr %i.sm, align 1, !tbaa !16
  %i.so = zext i8 %i.sn to i32
  %i.sp = mul i32 %.078.i.i.i, 9
  %i.sq = add i32 %i.sp, %i.so
  %i.sr = getelementptr inbounds nuw i8, ptr %i.sg, i64 %indvars.iv.i.i.i
  %i.ss = getelementptr inbounds nuw i8, ptr %i.sr, i64 1
  %i.st = load i8, ptr %i.ss, align 1, !tbaa !16
  %i.su = zext i8 %i.st to i32
  %i.sv = mul i32 %i.sq, 9
  %i.sw = add i32 %i.sv, %i.su
  %i.sx = getelementptr inbounds nuw i8, ptr %i.sg, i64 %indvars.iv.i.i.i
  %i.sy = getelementptr inbounds nuw i8, ptr %i.sx, i64 2
  %i.sz = load i8, ptr %i.sy, align 1, !tbaa !16
  %i.ta = zext i8 %i.sz to i32
  %i.tb = mul i32 %i.sw, 9
  %i.tc = add i32 %i.tb, %i.ta
  %i.td = getelementptr inbounds nuw i8, ptr %i.sg, i64 %indvars.iv.i.i.i
  %i.te = getelementptr inbounds nuw i8, ptr %i.td, i64 3
  %i.tf = load i8, ptr %i.te, align 1, !tbaa !16
  %i.tg = zext i8 %i.tf to i32
  %i.th = mul i32 %i.tc, 9
  %i.ti = add i32 %i.th, %i.tg                    ; 3 uses
  %indvars.iv.next.i.i.i.3 = add nuw nsw i64 %indvars.iv.i.i.i, 4 ; 2 uses
  %niter356.next.3 = add i64 %niter356, 4         ; 2 uses
  %niter356.ncmp.3 = icmp eq i64 %niter356.next.3, %unroll_iter355
  br i1 %niter356.ncmp.3, label %._crit_edge.loopexit.i.i.i.unr-lcssa, label %.lr.ph.i.i78.i, !llvm.loop !337

._crit_edge.loopexit.i.i.i.unr-lcssa:             ; preds = %.lr.ph.i.i78.i
  %lcmp.mod352.not = icmp eq i64 %xtraiter350, 0
  br i1 %lcmp.mod352.not, label %._crit_edge.loopexit.i.i.i, label %.lr.ph.i.i78.i.epil.preheader

.lr.ph.i.i78.i.epil.preheader:                    ; preds = %._crit_edge.loopexit.i.i.i.unr-lcssa, %.lr.ph.preheader.i.i.i
  %indvars.iv.i.i.i.epil.init = phi i64 [ 0, %.lr.ph.preheader.i.i.i ], [ %indvars.iv.next.i.i.i.3, %._crit_edge.loopexit.i.i.i.unr-lcssa ]
  %.078.i.i.i.epil.init = phi i32 [ 0, %.lr.ph.preheader.i.i.i ], [ %i.ti, %._crit_edge.loopexit.i.i.i.unr-lcssa ]
  %lcmp.mod354 = icmp ne i64 %xtraiter350, 0
  call void @llvm.assume(i1 %lcmp.mod354)
  br label %.lr.ph.i.i78.i.epil

.lr.ph.i.i78.i.epil:                              ; preds = %.lr.ph.i.i78.i.epil, %.lr.ph.i.i78.i.epil.preheader
  %indvars.iv.i.i.i.epil = phi i64 [ %indvars.iv.i.i.i.epil.init, %.lr.ph.i.i78.i.epil.preheader ], [ %indvars.iv.next.i.i.i.epil, %.lr.ph.i.i78.i.epil ] ; 2 uses
  %.078.i.i.i.epil = phi i32 [ %.078.i.i.i.epil.init, %.lr.ph.i.i78.i.epil.preheader ], [ %i.tn, %.lr.ph.i.i78.i.epil ]
  %epil.iter351 = phi i64 [ 0, %.lr.ph.i.i78.i.epil.preheader ], [ %epil.iter351.next, %.lr.ph.i.i78.i.epil ]
  %i.tj = getelementptr inbounds nuw i8, ptr %i.sg, i64 %indvars.iv.i.i.i.epil
  %i.tk = load i8, ptr %i.tj, align 1, !tbaa !16
  %i.tl = zext i8 %i.tk to i32
  %i.tm = mul i32 %.078.i.i.i.epil, 9
  %i.tn = add i32 %i.tm, %i.tl                    ; 2 uses
  %indvars.iv.next.i.i.i.epil = add nuw nsw i64 %indvars.iv.i.i.i.epil, 1
  %epil.iter351.next = add i64 %epil.iter351, 1   ; 2 uses
  %epil.iter351.cmp.not = icmp eq i64 %epil.iter351.next, %xtraiter350
  br i1 %epil.iter351.cmp.not, label %._crit_edge.loopexit.i.i.i, label %.lr.ph.i.i78.i.epil, !llvm.loop !350

._crit_edge.loopexit.i.i.i:                       ; preds = %.lr.ph.i.i78.i.epil, %._crit_edge.loopexit.i.i.i.unr-lcssa
  %.lcssa308 = phi i32 [ %i.ti, %._crit_edge.loopexit.i.i.i.unr-lcssa ], [ %i.tn, %.lr.ph.i.i78.i.epil ]
  %i.to = urem i32 %.lcssa308, 1023
  %i.tp = zext nneg i32 %i.to to i64
  br label %idxHashString.exit.i.i

idxHashString.exit.i.i:                           ; preds = %._crit_edge.loopexit.i.i.i, %bb.by
  %.07.lcssa.i.i.i = phi i64 [ 0, %bb.by ], [ %i.tp, %._crit_edge.loopexit.i.i.i ]
  %i.tq = getelementptr inbounds nuw [8 x i8], ptr %i.on, i64 %.07.lcssa.i.i.i ; 2 uses
  %.049.i.i = load ptr, ptr %i.tq, align 8, !tbaa !299 ; 3 uses
  %.not4450.i.i = icmp eq ptr %.049.i.i, null
  %.pre.i.i68 = shl i64 %i.sh, 32
  %.pre52.i.i = ashr exact i64 %.pre.i.i68, 32    ; 3 uses
  br i1 %.not4450.i.i, label %._crit_edge.i76.i, label %.lr.ph.i74.i

.lr.ph.i74.i:                                     ; preds = %idxHashString.exit.i.i, %bb.ca
  %.051.i.i = phi ptr [ %.0.i75.i, %bb.ca ], [ %.049.i.i, %idxHashString.exit.i.i ] ; 2 uses
  %i.tr = load ptr, ptr %.051.i.i, align 8, !tbaa !339 ; 2 uses
  %i.ts = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.tr) #46
  %i.tt = trunc i64 %i.ts to i32
  %i.tu = icmp eq i32 %i.tt, %i.si
  br i1 %i.tu, label %bb.bz, label %bb.ca

bb.bz:                                            ; preds = %.lr.ph.i74.i
  %bcmp.i.i = call i32 @bcmp(ptr nonnull %i.tr, ptr nonnull readonly %i.sg, i64 %.pre52.i.i)
  %i.tv = icmp eq i32 %bcmp.i.i, 0
  br i1 %i.tv, label %idxHashSearch.exit.thread.i, label %bb.ca

bb.ca:                                            ; preds = %bb.bz, %.lr.ph.i74.i
  %i.tw = getelementptr inbounds nuw i8, ptr %.051.i.i, i64 24
  %.0.i75.i = load ptr, ptr %i.tw, align 8, !tbaa !299 ; 2 uses
  %.not44.i.i = icmp eq ptr %.0.i75.i, null
  br i1 %.not44.i.i, label %._crit_edge.i76.i, label %.lr.ph.i74.i, !llvm.loop !351

._crit_edge.i76.i:                                ; preds = %bb.ca, %idxHashString.exit.i.i
  %i.tx = add nsw i64 %.pre52.i.i, 42             ; 2 uses
  %i.ty = call ptr @sqlite3_malloc64(i64 noundef %i.tx) #45 ; 8 uses
  %.not.i.i77.i = icmp eq ptr %i.ty, null
  br i1 %.not.i.i77.i, label %.loopexit.i47.sink.split, label %bb.cb

bb.cb:                                            ; preds = %._crit_edge.i76.i
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.ty, i8 0, i64 %i.tx, i1 false)
  %i.tz = getelementptr inbounds nuw i8, ptr %i.ty, i64 40 ; 2 uses
  store ptr %i.tz, ptr %i.ty, align 8, !tbaa !339
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.tz, ptr nonnull readonly align 1 %i.sg, i64 %.pre52.i.i, i1 false)
  %i.ua = getelementptr inbounds nuw i8, ptr %i.ty, i64 24
  store ptr %.049.i.i, ptr %i.ua, align 8, !tbaa !300
  store ptr %i.ty, ptr %i.tq, align 8, !tbaa !299
  %i.ub = getelementptr inbounds nuw i8, ptr %i.ty, i64 32
  store ptr %i.ph, ptr %i.ub, align 8, !tbaa !352
  br label %idxHashSearch.exit.thread.i

bb.cc:                                            ; preds = %bb.bt, %bb.bs
  %indvars.iv.next.i52 = add nuw nsw i64 %indvars.iv.i51, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i52, %i.pn
  br i1 %exitcond.not.i, label %idxHashSearch.exit.thread.i, label %.lr.ph.i50, !llvm.loop !353

idxHashSearch.exit.thread.i:                      ; preds = %bb.cc, %bb.bx, %bb.bz, %bb.cb, %idxHashSearch.exit.i, %idxHashString.exit.i.i.i59, %bb.bq
  %i.uc = phi ptr [ %i.ph, %bb.bq ], [ %i.ph, %idxHashSearch.exit.i ], [ %i.ph, %idxHashString.exit.i.i.i59 ], [ %i.ph, %bb.bx ], [ %i.ph, %bb.bz ], [ %i.ty, %bb.cb ], [ %i.ph, %bb.cc ] ; 3 uses
  %i.ud = load i8, ptr %i.pj, align 1, !tbaa !16
  %.not73.i = icmp eq i8 %i.ud, 45
  br i1 %.not73.i, label %.backedge.i, label %.split.i

.split.i:                                         ; preds = %idxHashSearch.exit.thread.i
  %i.ue = load ptr, ptr %i.pb, align 8, !tbaa !294
  %i.uf = call ptr (ptr, ptr, ptr, ...) @idxAppendText(ptr noundef %i.a, ptr noundef %i.ue, ptr noundef nonnull @.str.253, ptr noundef nonnull %i.pj)
  store ptr %i.uf, ptr %i.pb, align 8, !tbaa !294
  %.pr.pre.i = load i32, ptr %i.a, align 4, !tbaa !17 ; 2 uses
  %i.ug = icmp eq i32 %.pr.pre.i, 0
  br i1 %i.ug, label %.backedge.i, label %.critedge.i48

.backedge.i:                                      ; preds = %.split.i, %idxHashSearch.exit.thread.i, %.lr.ph115
  %.be.i = phi ptr [ %i.uc, %.split.i ], [ %i.ph, %.lr.ph115 ], [ %i.uc, %idxHashSearch.exit.thread.i ] ; 2 uses
  %i.uh = load ptr, ptr %i.b, align 8, !tbaa !110
  %i.ui = call i32 @sqlite3_step(ptr noundef %i.uh) #45
  %i.uj = icmp eq i32 %i.ui, 100
  br i1 %i.uj, label %.lr.ph115, label %.critedge.i48

.critedge.i48:                                    ; preds = %.backedge.i, %.split.i
  %i.uk = phi i32 [ %.pr.pre.i, %.split.i ], [ 0, %.backedge.i ]
  %.lcssa109.i = phi ptr [ %i.uc, %.split.i ], [ %.be.i, %.backedge.i ] ; 3 uses
  store ptr %.lcssa109.i, ptr %2, align 8
  %.not116.i = icmp eq ptr %.lcssa109.i, null
  br i1 %.not116.i, label %._crit_edge.i46, label %.lr.ph118.i

.lr.ph118.i:                                      ; preds = %.critedge.i48
  %i.ul = getelementptr inbounds nuw i8, ptr %.057120.i, i64 16 ; 2 uses
  %.pre.i = load ptr, ptr %i.ul, align 8, !tbaa !295
  br label %bb.cd

bb.cd:                                            ; preds = %bb.cd, %.lr.ph118.i
  %i.um = phi ptr [ %.pre.i, %.lr.ph118.i ], [ %i.uo, %bb.cd ]
  %.056117.i = phi ptr [ %.lcssa109.i, %.lr.ph118.i ], [ %.056.i, %bb.cd ] ; 2 uses
  %i.un = load ptr, ptr %.056117.i, align 8, !tbaa !339
  %i.uo = call ptr (ptr, ptr, ptr, ...) @idxAppendText(ptr noundef %i.a, ptr noundef %i.um, ptr noundef nonnull @.str.440, ptr noundef %i.un) ; 2 uses
  store ptr %i.uo, ptr %i.ul, align 8, !tbaa !295
  %i.up = getelementptr inbounds nuw i8, ptr %.056117.i, i64 32
  %.056.i = load ptr, ptr %i.up, align 8, !tbaa !299 ; 2 uses
  %.not.i49 = icmp eq ptr %.056.i, null
  br i1 %.not.i49, label %._crit_edge.loopexit.i, label %bb.cd, !llvm.loop !354

._crit_edge.loopexit.i:                           ; preds = %bb.cd
  %.pre139.i = load i32, ptr %i.a, align 4, !tbaa !17
  br label %._crit_edge.i46

._crit_edge.i46:                                  ; preds = %._crit_edge.loopexit.i, %.critedge.i48
  %i.uq = phi i32 [ %.pre139.i, %._crit_edge.loopexit.i ], [ %i.uk, %.critedge.i48 ]
  %.fr = freeze i32 %i.uq                         ; 2 uses
  %i.ur = load ptr, ptr %i.b, align 8, !tbaa !110
  %i.us = call i32 @sqlite3_finalize(ptr noundef %i.ur) #45
  %i.ut = icmp eq i32 %.fr, 0
  %spec.select = select i1 %i.ut, i32 %i.us, i32 %.fr
  br label %bb.ce

bb.ce:                                            ; preds = %._crit_edge.i46, %._crit_edge.i46.thread
  %i.uu = phi i32 [ %i.pg, %._crit_edge.i46.thread ], [ %spec.select, %._crit_edge.i46 ] ; 3 uses
  store i32 %i.uu, ptr %i.a, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #45
  %i.uv = getelementptr inbounds nuw i8, ptr %.057120.i, i64 32
  %.057.i = load ptr, ptr %i.uv, align 8, !tbaa !346 ; 2 uses
  %i.uw = icmp eq i32 %i.uu, 0
  %i.ux = icmp ne ptr %.057.i, null
  %i.uy = select i1 %i.uw, i1 %i.ux, i1 false
  br i1 %i.uy, label %bb.bo, label %.loopexit.i47, !llvm.loop !355

.loopexit.i47.sink.split:                         ; preds = %._crit_edge.i76.i, %.thread207
  %.ph = phi i32 [ %i.ox, %.thread207 ], [ 7, %._crit_edge.i76.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #45
  br label %.loopexit.i47

.loopexit.i47:                                    ; preds = %bb.ce, %.loopexit.i47.sink.split, %bb.bn
  %i.uz = phi i32 [ %.ph, %.loopexit.i47.sink.split ], [ 0, %bb.bn ], [ %i.uu, %bb.ce ] ; 2 uses
  %i.va = getelementptr inbounds nuw i8, ptr %2, i64 8
  br label %bb.cf

bb.cf:                                            ; preds = %._crit_edge.i84.i, %.loopexit.i47
  %indvars.iv.i79.i = phi i64 [ 0, %.loopexit.i47 ], [ %indvars.iv.next.i85.i, %._crit_edge.i84.i ] ; 2 uses
  %i.vb = getelementptr inbounds nuw [8 x i8], ptr %i.va, i64 %indvars.iv.i79.i
  %i.vc = load ptr, ptr %i.vb, align 8, !tbaa !299 ; 2 uses
  %.not10.i80.i = icmp eq ptr %i.vc, null
  br i1 %.not10.i80.i, label %._crit_edge.i84.i, label %.lr.ph.i81.i

.lr.ph.i81.i:                                     ; preds = %bb.cf, %.lr.ph.i81.i
  %.011.i82.i = phi ptr [ %i.ve, %.lr.ph.i81.i ], [ %i.vc, %bb.cf ] ; 3 uses
  %i.vd = getelementptr inbounds nuw i8, ptr %.011.i82.i, i64 24
  %i.ve = load ptr, ptr %i.vd, align 8, !tbaa !300 ; 2 uses
  %i.vf = getelementptr inbounds nuw i8, ptr %.011.i82.i, i64 16
  %i.vg = load ptr, ptr %i.vf, align 8, !tbaa !302
  call void @sqlite3_free(ptr noundef %i.vg) #45
  call void @sqlite3_free(ptr noundef nonnull %.011.i82.i) #45
  %.not.i83.i = icmp eq ptr %i.ve, null
  br i1 %.not.i83.i, label %._crit_edge.i84.i, label %.lr.ph.i81.i, !llvm.loop !303

._crit_edge.i84.i:                                ; preds = %.lr.ph.i81.i, %bb.cf
  %indvars.iv.next.i85.i = add nuw nsw i64 %indvars.iv.i79.i, 1 ; 2 uses
  %exitcond.not.i86.i = icmp eq i64 %indvars.iv.next.i85.i, 1023
  br i1 %exitcond.not.i86.i, label %bb.cg, label %bb.cf, !llvm.loop !304

bb.cg:                                            ; preds = %._crit_edge.i84.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #45
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #45
  %i.vh = icmp eq i32 %i.uz, 0
  br i1 %i.vh, label %bb.ch, label %.thread

bb.ch:                                            ; preds = %bb.cg
  %i.vi = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i32 1, ptr %i.vi, align 8, !tbaa !306
  br label %.thread

.thread:                                          ; preds = %._crit_edge, %bb.cg, %bb.ch, %bb.y, %bb.z
  %.018 = phi i32 [ %i.oi, %._crit_edge ], [ %i.uz, %bb.cg ], [ 0, %bb.ch ], [ 773, %bb.y ], [ 773, %bb.z ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #45
  ret i32 %.018
}

; Function Attrs: nounwind uwtable
define internal ptr @idxAppendText(ptr nofree noundef nonnull captures(none) %0, ptr noundef %1, ptr noundef %2, ...) unnamed_addr #4 {
bb.a:
  %3 = alloca [1 x %struct.__va_list_tag], align 16 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #45
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #46
  %sext = shl i64 %i.a, 32
  %i.b = ashr exact i64 %sext, 32
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.c = phi i64 [ %i.b, %bb.b ], [ 0, %bb.a ]    ; 4 uses
  call void @llvm.va_start.p0(ptr nonnull %3)
  %i.d = load i32, ptr %0, align 4, !tbaa !17
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %bb.d, label %bb.j

bb.d:                                             ; preds = %bb.c
  %i.f = call ptr @sqlite3_vmprintf(ptr noundef %2, ptr noundef nonnull %3) #45 ; 4 uses
  %.not34 = icmp eq ptr %i.f, null
  br i1 %.not34, label %.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.g = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.f) #46
  %sext28 = shl i64 %i.g, 32
  %i.h = ashr exact i64 %sext28, 32               ; 2 uses
  %i.i = add nsw i64 %i.c, 1
  %i.j = add nsw i64 %i.i, %i.h
  %i.k = call ptr @sqlite3_malloc64(i64 noundef %i.j) #45 ; 4 uses
  %i.l = add nsw i64 %i.h, 1
  %.not35 = icmp eq ptr %i.k, null
  br i1 %.not35, label %.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %.not29 = icmp eq i64 %i.c, 0
  br i1 %.not29, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.k, ptr align 1 %1, i64 %i.c, i1 false)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.m = getelementptr inbounds i8, ptr %i.k, i64 %i.c
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.m, ptr nonnull align 1 %i.f, i64 %i.l, i1 false)
  br label %bb.i

.thread:                                          ; preds = %bb.d, %bb.e
  call void @sqlite3_free(ptr noundef null) #45
  store i32 7, ptr %0, align 4, !tbaa !17
  br label %bb.i

bb.i:                                             ; preds = %.thread, %bb.h
  %.1 = phi ptr [ %i.k, %bb.h ], [ null, %.thread ]
  call void @sqlite3_free(ptr noundef %i.f) #45
  call void @sqlite3_free(ptr noundef %1) #45
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.c
  %.2 = phi ptr [ %.1, %bb.i ], [ null, %bb.c ]
  call void @llvm.va_end.p0(ptr nonnull %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #45
  ret ptr %.2
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define range(i32 -2147483647, -2147483648) i32 @sqlite3_expert_count(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #12 {
end_hunk_1
begin_hunk_2_@sqlite3_intck_unlock:bb.a

intckFinalize.exit.i:                             ; preds = %bb.r, %bb.q, %intckPrepare.exit.i, %intckPrepare.exit.thread.i
  call void @sqlite3_free(ptr noundef %.3.i) #45
  %i.cw = call i32 @sqlite3_finalize(ptr noundef %i.k) #45
  %i.cx = load i32, ptr %i.b, align 4, !tbaa !375
  %i.cy = icmp eq i32 %i.cx, 0
  %i.cz = icmp ne i32 %i.cw, 0
  %or.cond.i91.i = select i1 %i.cy, i1 %i.cz, i1 false
  br i1 %or.cond.i91.i, label %bb.s, label %intckSaveKey.exit

bb.s:                                             ; preds = %intckFinalize.exit.i
  %i.da = load ptr, ptr %0, align 8, !tbaa !364
  %i.db = call i32 @sqlite3_errcode(ptr noundef %i.da) #45
  store i32 %i.db, ptr %i.b, align 4, !tbaa !375
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !371
  call void @sqlite3_free(ptr noundef %i.dd) #45
  %i.de = load ptr, ptr %0, align 8, !tbaa !364
  %i.df = call ptr @sqlite3_errmsg(ptr noundef %i.de) #45
  %i.dg = call ptr (ptr, ...) @sqlite3_mprintf(ptr noundef nonnull @.str.51, ptr noundef %i.df) #45
  store ptr %i.dg, ptr %i.dc, align 8, !tbaa !371
  br label %intckSaveKey.exit

intckSaveKey.exit:                                ; preds = %intckFinalize.exit.i, %bb.s
  %i.dh = load ptr, ptr %i.e, align 8, !tbaa !367
  %i.di = call i32 @sqlite3_finalize(ptr noundef %i.dh) #45
  %i.dj = load i32, ptr %i.b, align 4, !tbaa !375 ; 2 uses
  %i.dk = icmp eq i32 %i.dj, 0
  %i.dl = icmp ne i32 %i.di, 0
  %or.cond.i = select i1 %i.dk, i1 %i.dl, i1 false
  br i1 %or.cond.i, label %bb.t, label %intckFinalize.exit

bb.t:                                             ; preds = %intckSaveKey.exit
  %i.dm = load ptr, ptr %0, align 8, !tbaa !364
  %i.dn = call i32 @sqlite3_errcode(ptr noundef %i.dm) #45
  store i32 %i.dn, ptr %i.b, align 4, !tbaa !375
  %i.do = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.dp = load ptr, ptr %i.do, align 8, !tbaa !371
  call void @sqlite3_free(ptr noundef %i.dp) #45
  %i.dq = load ptr, ptr %0, align 8, !tbaa !364
  %i.dr = call ptr @sqlite3_errmsg(ptr noundef %i.dq) #45
  %i.ds = call ptr (ptr, ...) @sqlite3_mprintf(ptr noundef nonnull @.str.51, ptr noundef %i.dr) #45
  store ptr %i.ds, ptr %i.do, align 8, !tbaa !371
  %.pre.pre = load i32, ptr %i.b, align 4, !tbaa !375
  br label %intckFinalize.exit

intckFinalize.exit:                               ; preds = %intckSaveKey.exit, %bb.t
  %.pre = phi i32 [ %i.dj, %intckSaveKey.exit ], [ %.pre.pre, %bb.t ]
  store ptr null, ptr %i.e, align 8, !tbaa !367
  br label %bb.u

bb.u:                                             ; preds = %intckFinalize.exit, %bb.b, %bb.a
  %i.dt = phi i32 [ %.pre, %intckFinalize.exit ], [ 0, %bb.b ], [ %i.c, %bb.a ]
  ret i32 %i.dt
}

; Function Attrs: nounwind uwtable
define ptr @sqlite3_intck_test_sql(ptr nofree noundef captures(none) %0, ptr noundef %1) local_unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !370
  tail call void @sqlite3_free(ptr noundef %i.b) #45
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call fastcc ptr @intckCheckObjectSql(ptr noundef nonnull %0, ptr noundef %1, ptr noundef null, ptr noundef null)
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !368  ; 2 uses
  %.not14 = icmp eq ptr %i.e, null
  br i1 %.not14, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !369
  %i.h = tail call fastcc ptr @intckCheckObjectSql(ptr noundef nonnull %0, ptr noundef %i.e, ptr noundef %i.g, ptr noundef null)
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.i = load ptr, ptr %i.a, align 8, !tbaa !370
  tail call void @sqlite3_free(ptr noundef %i.i) #45
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e, %bb.b
  %.sink = phi ptr [ %i.h, %bb.d ], [ null, %bb.e ], [ %i.c, %bb.b ] ; 2 uses
  store ptr %.sink, ptr %i.a, align 8, !tbaa !370
  ret ptr %.sink
}

; Function Attrs: nounwind uwtable
define i32 @sqlite3_stmtrand_init(ptr noundef %0, ptr nofree noundef readnone captures(none) %1, ptr nofree noundef readnone captures(none) %2) local_unnamed_addr #4 {
bb.a:
  %i.a = tail call i32 @sqlite3_create_function(ptr noundef %0, ptr noundef nonnull @.str.54, i32 noundef 1, i32 noundef 1, ptr noundef null, ptr noundef nonnull @stmtrandFunc, ptr noundef null, ptr noundef null) #45 ; 2 uses
  %i.b = icmp eq i32 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @sqlite3_create_function(ptr noundef %0, ptr noundef nonnull @.str.54, i32 noundef 0, i32 noundef 1, ptr noundef null, ptr noundef nonnull @stmtrandFunc, ptr noundef null, ptr noundef null) #45
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0 = phi i32 [ %i.c, %bb.b ], [ %i.a, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal void @stmtrandFunc(ptr noundef %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2) #4 {
bb.a:
  %i.a = tail call ptr @sqlite3_get_auxdata(ptr noundef %0, i32 noundef -4418371) #45 ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr @sqlite3_malloc64(i64 noundef 8) #45 ; 4 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @sqlite3_result_error_nomem(ptr noundef %0) #45
  br label %.critedge

bb.d:                                             ; preds = %bb.b
  %i.e = icmp sgt i32 %1, 0
  br i1 %i.e, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.f = load ptr, ptr %2, align 8, !tbaa !154
  %i.g = tail call i32 @sqlite3_value_int(ptr noundef %i.f) #45
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %.023 = phi i32 [ %i.g, %bb.e ], [ 0, %bb.d ]   ; 2 uses
  %i.h = or i32 %.023, 1
  store i32 %i.h, ptr %i.c, align 4, !tbaa !383
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  store i32 %.023, ptr %i.i, align 4, !tbaa !385
  tail call void @sqlite3_set_auxdata(ptr noundef %0, i32 noundef -4418371, ptr noundef nonnull %i.c, ptr noundef nonnull @sqlite3_free) #45
  %i.j = tail call ptr @sqlite3_get_auxdata(ptr noundef %0, i32 noundef -4418371) #45 ; 2 uses
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  tail call void @sqlite3_result_error_nomem(ptr noundef %0) #45
  br label %.critedge

bb.h:                                             ; preds = %bb.f, %bb.a
  %.1 = phi ptr [ %i.a, %bb.a ], [ %i.j, %bb.f ]  ; 3 uses
  %i.l = load i32, ptr %.1, align 4, !tbaa !383   ; 2 uses
  %i.m = lshr i32 %i.l, 1
  %i.n = and i32 %i.l, 1
  %i.o = icmp eq i32 %i.n, 0
  %i.p = select i1 %i.o, i32 0, i32 -805306367
  %i.q = xor i32 %i.p, %i.m                       ; 2 uses
  store i32 %i.q, ptr %.1, align 4, !tbaa !383
  %i.r = getelementptr inbounds nuw i8, ptr %.1, i64 4 ; 2 uses
  %i.s = load i32, ptr %i.r, align 4, !tbaa !385
  %i.t = mul i32 %i.s, 1103515245
  %i.u = add i32 %i.t, 12345                      ; 2 uses
  store i32 %i.u, ptr %i.r, align 4, !tbaa !385
  %i.v = xor i32 %i.q, %i.u
  %i.w = and i32 %i.v, 2147483647
  tail call void @sqlite3_result_int(ptr noundef %0, i32 noundef %i.w) #45
  br label %.critedge

.critedge:                                        ; preds = %bb.c, %bb.g, %bb.h
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @vfstrace_register(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4) local_unnamed_addr #4 {
bb.a:
  %i.a = tail call ptr @sqlite3_vfs_find(ptr noundef %1) #45 ; 12 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #46 ; 2 uses
  %i.d = add i64 %i.c, 217                        ; 2 uses
  %i.e = tail call ptr @sqlite3_malloc64(i64 noundef %i.d) #45 ; 29 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %bb.g, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.e, i8 0, i64 %i.d, i1 false)
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 168 ; 3 uses
  %i.h = load <2 x i32>, ptr %i.a, align 8, !tbaa !17
  %i.i = load i32, ptr %i.a, align 8, !tbaa !386  ; 2 uses
  %i.j = add <2 x i32> %i.h, <i32 0, i32 32>
  store <2 x i32> %i.j, ptr %i.e, align 8, !tbaa !17
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.l = load i32, ptr %i.k, align 8, !tbaa !387
  %i.m = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i32 %i.l, ptr %i.m, align 8, !tbaa !387
  %i.n = getelementptr inbounds nuw i8, ptr %i.e, i64 216 ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  store ptr %i.n, ptr %i.o, align 8, !tbaa !388
  %i.p = add i64 %i.c, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.n, ptr nonnull align 1 %0, i64 %i.p, i1 false)
  %i.q = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  store ptr %i.g, ptr %i.q, align 8, !tbaa !241
  %i.r = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  store ptr @vfstraceOpen, ptr %i.r, align 8, !tbaa !389
  %i.s = getelementptr inbounds nuw i8, ptr %i.e, i64 48
  store ptr @vfstraceDelete, ptr %i.s, align 8, !tbaa !390
  %i.t = getelementptr inbounds nuw i8, ptr %i.e, i64 56
  store ptr @vfstraceAccess, ptr %i.t, align 8, !tbaa !391
  %i.u = getelementptr inbounds nuw i8, ptr %i.e, i64 64
  store ptr @vfstraceFullPathname, ptr %i.u, align 8, !tbaa !392
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  %i.w = getelementptr inbounds nuw i8, ptr %i.e, i64 72
  %i.x = load <2 x ptr>, ptr %i.v, align 8, !tbaa !393
  %i.y = icmp eq <2 x ptr> %i.x, splat (ptr null)
  %i.z = select <2 x i1> %i.y, <2 x ptr> splat (ptr null), <2 x ptr> <ptr @vfstraceDlOpen, ptr @vfstraceDlError>
  store <2 x ptr> %i.z, ptr %i.w, align 8, !tbaa !393
  %i.aa = getelementptr inbounds nuw i8, ptr %i.a, i64 88
  %i.ab = getelementptr inbounds nuw i8, ptr %i.e, i64 88
  %i.ac = load <2 x ptr>, ptr %i.aa, align 8, !tbaa !393
  %i.ad = icmp eq <2 x ptr> %i.ac, splat (ptr null)
  %i.ae = select <2 x i1> %i.ad, <2 x ptr> splat (ptr null), <2 x ptr> <ptr @vfstraceDlSym, ptr @vfstraceDlClose>
  store <2 x ptr> %i.ae, ptr %i.ab, align 8, !tbaa !393
  %i.af = getelementptr inbounds nuw i8, ptr %i.e, i64 104
  store ptr @vfstraceRandomness, ptr %i.af, align 8, !tbaa !394
  %i.ag = getelementptr inbounds nuw i8, ptr %i.e, i64 112
  store ptr @vfstraceSleep, ptr %i.ag, align 8, !tbaa !395
  %i.ah = getelementptr inbounds nuw i8, ptr %i.e, i64 120
  store ptr @vfstraceCurrentTime, ptr %i.ah, align 8, !tbaa !396
  %i.ai = getelementptr inbounds nuw i8, ptr %i.a, i64 128
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !397
  %i.ak = icmp eq ptr %i.aj, null
  %i.al = select i1 %i.ak, ptr null, ptr @vfstraceGetLastError
  %i.am = getelementptr inbounds nuw i8, ptr %i.e, i64 128
  store ptr %i.al, ptr %i.am, align 8, !tbaa !397
  %i.an = icmp sgt i32 %i.i, 1
  br i1 %i.an, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.ao = getelementptr inbounds nuw i8, ptr %i.a, i64 136
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !398
  %i.aq = icmp eq ptr %i.ap, null
  %i.ar = select i1 %i.aq, ptr null, ptr @vfstraceCurrentTimeInt64
  %i.as = getelementptr inbounds nuw i8, ptr %i.e, i64 136
  store ptr %i.ar, ptr %i.as, align 8, !tbaa !398
  %.not = icmp eq i32 %i.i, 2
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.at = getelementptr inbounds nuw i8, ptr %i.a, i64 144
  %i.au = getelementptr inbounds nuw i8, ptr %i.e, i64 144
  %i.av = load <2 x ptr>, ptr %i.at, align 8, !tbaa !393
  %i.aw = icmp eq <2 x ptr> %i.av, splat (ptr null)
  %i.ax = select <2 x i1> %i.aw, <2 x ptr> splat (ptr null), <2 x ptr> <ptr @vfstraceSetSystemCall, ptr @vfstraceGetSystemCall>
  store <2 x ptr> %i.ax, ptr %i.au, align 8, !tbaa !393
  %i.ay = getelementptr inbounds nuw i8, ptr %i.a, i64 160
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !399
  %i.ba = icmp eq ptr %i.az, null
  %i.bb = select i1 %i.ba, ptr null, ptr @vfstraceNextSystemCall
  %i.bc = getelementptr inbounds nuw i8, ptr %i.e, i64 160
  store ptr %i.bb, ptr %i.bc, align 8, !tbaa !399
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e, %bb.c
  store ptr %i.a, ptr %i.g, align 8, !tbaa !400
  %i.bd = getelementptr inbounds nuw i8, ptr %i.e, i64 176
  store ptr %2, ptr %i.bd, align 8, !tbaa !402
  %i.be = getelementptr inbounds nuw i8, ptr %i.e, i64 192
  store ptr %3, ptr %i.be, align 8, !tbaa !403
  %i.bf = getelementptr inbounds nuw i8, ptr %i.e, i64 200
  store ptr %i.n, ptr %i.bf, align 8, !tbaa !404
  %i.bg = getelementptr inbounds nuw i8, ptr %i.e, i64 208
  store ptr %i.e, ptr %i.bg, align 8, !tbaa !405
  %i.bh = getelementptr inbounds nuw i8, ptr %i.e, i64 184
  store i32 -1, ptr %i.bh, align 8, !tbaa !406
  %i.bi = getelementptr inbounds nuw i8, ptr %i.e, i64 188
  store i8 1, ptr %i.bi, align 4, !tbaa !407
  %i.bj = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !388
  tail call void (ptr, ptr, ...) @vfstrace_printf(ptr noundef nonnull %i.g, ptr noundef nonnull @.str.55, ptr noundef nonnull %i.n, ptr noundef %i.bk)
  %i.bl = tail call i32 @sqlite3_vfs_register(ptr noundef nonnull %i.e, i32 noundef %4) #45
  br label %bb.g

bb.g:                                             ; preds = %bb.b, %bb.a, %bb.f
  %.0 = phi i32 [ %i.bl, %bb.f ], [ 12, %bb.a ], [ 7, %bb.b ]
  ret i32 %.0
}

declare ptr @sqlite3_malloc64(i64 noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define internal i32 @vfstraceOpen(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, ptr noundef initializes((8, 16)) %2, i32 noundef %3, ptr noundef %4) #4 {
bb.a:
  %i.a = alloca [50 x i8], align 16               ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !241  ; 9 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !400  ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %i.c, ptr %i.e, align 8, !tbaa !408
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = tail call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %1) #46 ; 2 uses
  %.0.i76 = add i64 %i.f, -1                      ; 3 uses
  %.not.i77 = icmp eq i64 %.0.i76, 0
  br i1 %.not.i77, label %fileTail.exit, label %.lr.ph

bb.c:                                             ; preds = %.lr.ph
  %.0.i = add i64 %.0.i79, -1                     ; 3 uses
  %.not.i = icmp eq i64 %.0.i, 0
  br i1 %.not.i, label %fileTail.exit, label %.lr.ph, !llvm.loop !414

.lr.ph:                                           ; preds = %bb.b, %bb.c
  %.0.i79 = phi i64 [ %.0.i, %bb.c ], [ %.0.i76, %bb.b ] ; 3 uses
  %.0.in.i78 = phi i64 [ %.0.i79, %bb.c ], [ %i.f, %bb.b ]
  %i.g = getelementptr i8, ptr %1, i64 %.0.in.i78
  %i.h = getelementptr i8, ptr %i.g, i64 -2
  %i.i = load i8, ptr %i.h, align 1, !tbaa !16
  %.not10.i = icmp eq i8 %i.i, 47
  br i1 %.not10.i, label %.fileTail.exit_crit_edge80, label %bb.c, !llvm.loop !414

.fileTail.exit_crit_edge80:                       ; preds = %.lr.ph
  br label %fileTail.exit, !llvm.loop !414

fileTail.exit:                                    ; preds = %bb.c, %.fileTail.exit_crit_edge80, %bb.b
  %.0.i.lcssa = phi i64 [ %.0.i76, %bb.b ], [ %.0.i79, %.fileTail.exit_crit_edge80 ], [ %.0.i, %bb.c ]
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 %.0.i.lcssa
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %fileTail.exit
  %i.k = phi ptr [ %i.j, %fileTail.exit ], [ @.str.472, %bb.a ]
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  store ptr %i.k, ptr %i.l, align 8, !tbaa !415
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 3 uses
  store ptr %i.m, ptr %i.n, align 8, !tbaa !416
  %i.o = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !389
  %i.q = tail call i32 %i.p(ptr noundef %i.d, ptr noundef %1, ptr noundef nonnull %i.m, i32 noundef %3, ptr noundef %4) #45 ; 6 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.s = load i32, ptr %i.r, align 8, !tbaa !406
  %i.t = lshr i32 %i.s, 16
  %i.u = trunc i32 %i.t to i8
  %i.v = and i8 %i.u, 1
  %i.w = getelementptr inbounds nuw i8, ptr %i.c, i64 20
  store i8 %i.v, ptr %i.w, align 4, !tbaa !407
  %i.x = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !404
  %i.z = load ptr, ptr %i.l, align 8, !tbaa !415
  tail call void (ptr, ptr, ...) @vfstrace_printf(ptr noundef nonnull %i.c, ptr noundef nonnull @.str.473, ptr noundef %i.y, ptr noundef %i.z, i32 noundef %3)
  %i.aa = load ptr, ptr %i.n, align 8, !tbaa !416
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !417
  %.not61 = icmp eq ptr %i.ab, null
  br i1 %.not61, label %bb.h, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ac = tail call ptr @sqlite3_malloc64(i64 noundef 152) #45 ; 18 uses
  %i.ad = load ptr, ptr %i.n, align 8, !tbaa !416
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !417 ; 4 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(152) %i.ac, i8 0, i64 152, i1 false)
  %i.af = load i32, ptr %i.ae, align 8, !tbaa !418 ; 3 uses
  store i32 %i.af, ptr %i.ac, align 8, !tbaa !418
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  store ptr @vfstraceClose, ptr %i.ag, align 8, !tbaa !420
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  store ptr @vfstraceRead, ptr %i.ah, align 8, !tbaa !421
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ac, i64 24
  store ptr @vfstraceWrite, ptr %i.ai, align 8, !tbaa !422
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ac, i64 32
  store ptr @vfstraceTruncate, ptr %i.aj, align 8, !tbaa !423
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ac, i64 40
  store ptr @vfstraceSync, ptr %i.ak, align 8, !tbaa !424
  %i.al = getelementptr inbounds nuw i8, ptr %i.ac, i64 48
  store ptr @vfstraceFileSize, ptr %i.al, align 8, !tbaa !425
  %i.am = getelementptr inbounds nuw i8, ptr %i.ac, i64 56
  store ptr @vfstraceLock, ptr %i.am, align 8, !tbaa !426
  %i.an = getelementptr inbounds nuw i8, ptr %i.ac, i64 64
  store ptr @vfstraceUnlock, ptr %i.an, align 8, !tbaa !427
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ac, i64 72
  store ptr @vfstraceCheckReservedLock, ptr %i.ao, align 8, !tbaa !428
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ac, i64 80
  store ptr @vfstraceFileControl, ptr %i.ap, align 8, !tbaa !429
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ac, i64 88
  store ptr @vfstraceSectorSize, ptr %i.aq, align 8, !tbaa !430
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ac, i64 96
  store ptr @vfstraceDeviceCharacteristics, ptr %i.ar, align 8, !tbaa !431
  %i.as = icmp sgt i32 %i.af, 1
  br i1 %i.as, label %bb.f, label %.thread

bb.f:                                             ; preds = %bb.e
  %i.at = getelementptr inbounds nuw i8, ptr %i.ae, i64 104
  %i.au = getelementptr inbounds nuw i8, ptr %i.ac, i64 104
  %i.av = load <2 x ptr>, ptr %i.at, align 8, !tbaa !393
  %i.aw = icmp eq <2 x ptr> %i.av, splat (ptr null)
  %i.ax = select <2 x i1> %i.aw, <2 x ptr> splat (ptr null), <2 x ptr> <ptr @vfstraceShmMap, ptr @vfstraceShmLock>
  store <2 x ptr> %i.ax, ptr %i.au, align 8, !tbaa !393
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ae, i64 120
  %i.az = getelementptr inbounds nuw i8, ptr %i.ac, i64 120
  %i.ba = load <2 x ptr>, ptr %i.ay, align 8, !tbaa !393
  %i.bb = icmp eq <2 x ptr> %i.ba, splat (ptr null)
end_hunk_2
begin_hunk_3_@vfstraceCurrentTime:bb.a
  ret i32 %i.n
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @vfstraceGetLastError(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, ptr noundef %2) #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !241  ; 6 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !400  ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.e = load i32, ptr %i.d, align 8, !tbaa !406
  %i.f = lshr i32 %i.e, 27
  %i.g = trunc nuw nsw i32 %i.f to i8
  %i.h = and i8 %i.g, 1
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 20
  store i8 %i.h, ptr %i.i, align 4, !tbaa !407
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !404
  tail call void (ptr, ptr, ...) @vfstrace_printf(ptr noundef nonnull %i.b, ptr noundef nonnull @.str.666, ptr noundef %i.k, i32 noundef %1)
  %.not = icmp eq i32 %1, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i8 0, ptr %2, align 1, !tbaa !16
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.l = phi ptr [ %2, %bb.b ], [ @.str.48, %bb.a ]
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 128
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !397
  %i.o = tail call i32 %i.n(ptr noundef %i.c, i32 noundef %1, ptr noundef %2) #45 ; 2 uses
  tail call void (ptr, ptr, ...) @vfstrace_printf(ptr noundef nonnull %i.b, ptr noundef nonnull @.str.667, ptr noundef nonnull %i.l, i32 noundef %i.o)
  ret i32 %i.o
}

; Function Attrs: nounwind uwtable
define internal i32 @vfstraceCurrentTimeInt64(ptr nofree noundef readonly captures(none) %0, ptr noundef %1) #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !241  ; 6 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !400  ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.e = load i32, ptr %i.d, align 8, !tbaa !406
  %i.f = lshr i32 %i.e, 26
  %i.g = trunc nuw nsw i32 %i.f to i8
  %i.h = and i8 %i.g, 1
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 20
  store i8 %i.h, ptr %i.i, align 4, !tbaa !407
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !404
  tail call void (ptr, ptr, ...) @vfstrace_printf(ptr noundef nonnull %i.b, ptr noundef nonnull @.str.668, ptr noundef %i.k)
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 136
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !398
  %i.n = tail call i32 %i.m(ptr noundef %i.c, ptr noundef %1) #45
  %i.o = load i64, ptr %1, align 8, !tbaa !159
  tail call void (ptr, ptr, ...) @vfstrace_printf(ptr noundef nonnull %i.b, ptr noundef nonnull @.str.669, i64 noundef %i.o)
  ret i32 %i.n
}

; Function Attrs: nounwind uwtable
define internal i32 @vfstraceSetSystemCall(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, ptr noundef %2) #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !241
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !400  ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 144
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !437
  %i.f = tail call i32 %i.e(ptr noundef %i.c, ptr noundef %1, ptr noundef %2) #45
  ret i32 %i.f
}

; Function Attrs: nounwind uwtable
define internal ptr @vfstraceGetSystemCall(ptr nofree noundef readonly captures(none) %0, ptr noundef %1) #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !241
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !400  ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 152
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !438
  %i.f = tail call ptr %i.e(ptr noundef %i.c, ptr noundef %1) #45
  ret ptr %i.f
}

; Function Attrs: nounwind uwtable
define internal ptr @vfstraceNextSystemCall(ptr nofree noundef readonly captures(none) %0, ptr noundef %1) #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !241
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !400  ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 160
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !399
  %i.f = tail call ptr %i.e(ptr noundef %i.c, ptr noundef %1) #45
  ret ptr %i.f
}

; Function Attrs: nounwind uwtable
define internal void @vfstrace_printf(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, ...) unnamed_addr #4 {
bb.a:
  %2 = alloca [1 x %struct.__va_list_tag], align 16 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #45
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.b = load i8, ptr %i.a, align 4, !tbaa !407
  %.not = icmp eq i8 %i.b, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.va_start.p0(ptr nonnull %2)
  %i.c = call ptr @sqlite3_vmprintf(ptr noundef %1, ptr noundef nonnull %2) #45 ; 2 uses
  call void @llvm.va_end.p0(ptr nonnull %2)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !402
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !403
  %i.h = call i32 %i.e(ptr noundef %i.c, ptr noundef %i.g) #45 ; 0 uses
  call void @sqlite3_free(ptr noundef %i.c) #45
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #45
  ret void
}

; Function Attrs: nounwind uwtable
define void @vfstrace_unregister(ptr noundef %0) local_unnamed_addr #4 {
bb.a:
  %i.a = tail call ptr @sqlite3_vfs_find(ptr noundef %0) #45 ; 4 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !389
  %.not = icmp eq ptr %i.d, @vfstraceOpen
  br i1 %.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.e = tail call i32 @sqlite3_vfs_unregister(ptr noundef nonnull %i.a) #45 ; 0 uses
  tail call void @sqlite3_free(ptr noundef nonnull %i.a) #45
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.a, %bb.c
  ret void
}

declare i32 @sqlite3_vfs_unregister(ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define i32 @sqlite3_dbdata_init(ptr noundef %0, ptr nofree noundef readnone captures(none) %1, ptr nofree noundef readnone captures(none) %2) local_unnamed_addr #4 {
bb.a:
  %i.a = tail call i32 @sqlite3_create_module(ptr noundef %0, ptr noundef nonnull @.str.670, ptr noundef nonnull @sqlite3DbdataRegister.dbdata_module, ptr noundef null) #45 ; 2 uses
  %i.b = icmp eq i32 %i.a, 0
  br i1 %i.b, label %bb.b, label %sqlite3DbdataRegister.exit

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @sqlite3_create_module(ptr noundef %0, ptr noundef nonnull @.str.671, ptr noundef nonnull @sqlite3DbdataRegister.dbdata_module, ptr noundef nonnull inttoptr (i64 1 to ptr)) #45
  br label %sqlite3DbdataRegister.exit

sqlite3DbdataRegister.exit:                       ; preds = %bb.a, %bb.b
  %.0.i = phi i32 [ %i.c, %bb.b ], [ %i.a, %bb.a ]
  ret i32 %.0.i
}

; Function Attrs: nounwind uwtable
define ptr @recoverInit(ptr noundef %0, ptr nofree noundef readonly captures(address_is_null) %1, ptr nofree noundef readonly captures(address_is_null) %2, ptr noundef %3, ptr noundef %4) local_unnamed_addr #4 {
bb.a:
  %i.a = icmp eq ptr %1, null
  %spec.store.select = select i1 %i.a, ptr @.str.50, ptr %1 ; 2 uses
  %i.b = tail call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %spec.store.select) #46 ; 2 uses
  %i.c = trunc i64 %i.b to i32
  %i.d = and i32 %i.c, 2147483647
  %i.e = icmp eq ptr %2, null
  br i1 %i.e, label %recoverStrlen.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = tail call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %2) #46
  %i.g = trunc i64 %i.f to i32
  %i.h = and i32 %i.g, 2147483647
  br label %recoverStrlen.exit

recoverStrlen.exit:                               ; preds = %bb.a, %bb.b
  %.0.i = phi i32 [ %i.h, %bb.b ], [ 0, %bb.a ]   ; 3 uses
  %i.i = zext nneg i32 %.0.i to i64
  %i.j = add nuw i32 %i.d, 330
  %i.k = add i32 %i.j, %.0.i                      ; 2 uses
  %i.l = tail call ptr @sqlite3_malloc(i32 noundef %i.k) #45 ; 10 uses
  %.not = icmp eq ptr %i.l, null
  br i1 %.not, label %bb.f, label %bb.c

bb.c:                                             ; preds = %recoverStrlen.exit
  %i.m = and i64 %i.b, 2147483647                 ; 2 uses
  %i.n = sext i32 %i.k to i64
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.l, i8 0, i64 %i.n, i1 false)
  store ptr %0, ptr %i.l, align 8, !tbaa !439
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 328 ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store ptr %i.o, ptr %i.p, align 8, !tbaa !446
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.m
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 1 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  store ptr %i.r, ptr %i.s, align 8, !tbaa !447
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.o, ptr nonnull align 1 %spec.store.select, i64 %i.m, i1 false)
  %i.t = icmp ne i32 %.0.i, 0
  %i.u = icmp ne ptr %2, null
  %or.cond = and i1 %i.u, %i.t
  br i1 %or.cond, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.r, ptr nonnull align 1 %2, i64 %i.i, i1 false)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.v = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  store ptr %3, ptr %i.v, align 8, !tbaa !448
  %i.w = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  store ptr %4, ptr %i.w, align 8, !tbaa !449
  %i.x = getelementptr inbounds nuw i8, ptr %i.l, i64 60
  store i32 1, ptr %i.x, align 4, !tbaa !450
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %recoverStrlen.exit
  ret ptr %i.l
}

; Function Attrs: nounwind uwtable
define ptr @sqlite3_recover_init(ptr noundef %0, ptr nofree noundef readonly captures(address_is_null) %1, ptr nofree noundef readonly captures(address_is_null) %2) local_unnamed_addr #4 {
bb.a:
  %i.a = icmp eq ptr %1, null
  %spec.store.select.i = select i1 %i.a, ptr @.str.50, ptr %1 ; 2 uses
  %i.b = tail call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %spec.store.select.i) #46 ; 2 uses
  %i.c = trunc i64 %i.b to i32
  %i.d = and i32 %i.c, 2147483647
  %i.e = icmp eq ptr %2, null
  br i1 %i.e, label %recoverStrlen.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = tail call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %2) #46
  %i.g = trunc i64 %i.f to i32
  %i.h = and i32 %i.g, 2147483647
  br label %recoverStrlen.exit.i

recoverStrlen.exit.i:                             ; preds = %bb.b, %bb.a
  %.0.i.i = phi i32 [ %i.h, %bb.b ], [ 0, %bb.a ] ; 3 uses
  %i.i = zext nneg i32 %.0.i.i to i64
  %i.j = add nuw i32 %i.d, 330
  %i.k = add i32 %i.j, %.0.i.i                    ; 2 uses
  %i.l = tail call ptr @sqlite3_malloc(i32 noundef %i.k) #45 ; 9 uses
  %.not.i = icmp eq ptr %i.l, null
  br i1 %.not.i, label %recoverInit.exit, label %bb.c

bb.c:                                             ; preds = %recoverStrlen.exit.i
  %i.m = and i64 %i.b, 2147483647                 ; 2 uses
  %i.n = sext i32 %i.k to i64
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.l, i8 0, i64 %i.n, i1 false)
  store ptr %0, ptr %i.l, align 8, !tbaa !439
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 328 ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store ptr %i.o, ptr %i.p, align 8, !tbaa !446
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.m
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 1 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  store ptr %i.r, ptr %i.s, align 8, !tbaa !447
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.o, ptr nonnull align 1 %spec.store.select.i, i64 %i.m, i1 false)
  %i.t = icmp ne i32 %.0.i.i, 0
  %i.u = icmp ne ptr %2, null
  %or.cond.i = and i1 %i.u, %i.t
  br i1 %or.cond.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.r, ptr nonnull readonly align 1 %2, i64 %i.i, i1 false)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.v = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %i.w = getelementptr inbounds nuw i8, ptr %i.l, i64 60
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.v, i8 0, i64 16, i1 false)
  store i32 1, ptr %i.w, align 4, !tbaa !450
  br label %recoverInit.exit

recoverInit.exit:                                 ; preds = %recoverStrlen.exit.i, %bb.e
  ret ptr %i.l
}

; Function Attrs: nounwind uwtable
define ptr @sqlite3_recover_init_sql(ptr noundef %0, ptr nofree noundef readonly captures(address_is_null) %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #4 {
bb.a:
  %i.a = icmp eq ptr %1, null
  %spec.store.select.i = select i1 %i.a, ptr @.str.50, ptr %1 ; 2 uses
  %i.b = tail call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %spec.store.select.i) #46 ; 2 uses
  %i.c = trunc i64 %i.b to i32
  %i.d = and i32 %i.c, 2147483647
  %i.e = add nuw i32 %i.d, 330                    ; 2 uses
  %i.f = tail call ptr @sqlite3_malloc(i32 noundef %i.e) #45 ; 10 uses
  %.not.i = icmp eq ptr %i.f, null
  br i1 %.not.i, label %recoverInit.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = and i64 %i.b, 2147483647                 ; 2 uses
  %i.h = sext i32 %i.e to i64
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.f, i8 0, i64 %i.h, i1 false)
  store ptr %0, ptr %i.f, align 8, !tbaa !439
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 328 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr %i.i, ptr %i.j, align 8, !tbaa !446
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.g
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 1
  %i.m = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store ptr %i.l, ptr %i.m, align 8, !tbaa !447
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.i, ptr nonnull align 1 %spec.store.select.i, i64 %i.g, i1 false)
  %i.n = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  store ptr %2, ptr %i.n, align 8, !tbaa !448
  %i.o = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  store ptr %3, ptr %i.o, align 8, !tbaa !449
  %i.p = getelementptr inbounds nuw i8, ptr %i.f, i64 60
  store i32 1, ptr %i.p, align 4, !tbaa !450
  br label %recoverInit.exit

recoverInit.exit:                                 ; preds = %bb.a, %bb.b
  ret ptr %i.f
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define ptr @sqlite3_recover_errmsg(ptr nofree noundef readonly captures(address_is_null) %0) local_unnamed_addr #14 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.b = load i32, ptr %i.a, align 8, !tbaa !451
  %.not3 = icmp eq i32 %i.b, 7
  br i1 %.not3, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !452
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.b, %bb.c
  %i.e = phi ptr [ %i.d, %bb.c ], [ @.str.56, %bb.b ], [ @.str.56, %bb.a ]
  ret ptr %i.e
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define i32 @sqlite3_recover_errcode(ptr nofree noundef readonly captures(address_is_null) %0) local_unnamed_addr #14 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.b = load i32, ptr %i.a, align 8, !tbaa !451
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.c = phi i32 [ %i.b, %bb.b ], [ 7, %bb.a ]
  ret i32 %i.c
}

; Function Attrs: nounwind uwtable
define range(i32 0, 22) i32 @sqlite3_recover_config(ptr nofree noundef captures(address_is_null) %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #4 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.k, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.c = load i32, ptr %i.b, align 8, !tbaa !453
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.c, label %bb.k

bb.c:                                             ; preds = %bb.b
  switch i32 %1, label %bb.k [
    i32 789, label %bb.d
    i32 1, label %bb.e
    i32 2, label %bb.h
    i32 3, label %bb.i
    i32 4, label %bb.j
  ]

bb.d:                                             ; preds = %bb.c
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !454
  tail call void @sqlite3_free(ptr noundef %i.e) #45
  %i.f = tail call ptr (ptr, ptr, ...) @recoverMPrintf(ptr noundef %0, ptr noundef nonnull @.str.51, ptr noundef %2)
  store ptr %i.f, ptr %i.d, align 8, !tbaa !454
  br label %bb.k

bb.e:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !455
  tail call void @sqlite3_free(ptr noundef %i.h) #45
  %.not22 = icmp eq ptr %2, null
  br i1 %.not22, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.i = tail call ptr (ptr, ptr, ...) @recoverMPrintf(ptr noundef %0, ptr noundef nonnull @.str.51, ptr noundef nonnull %2)
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f
  %storemerge = phi ptr [ %i.i, %bb.f ], [ null, %bb.e ]
  store ptr %storemerge, ptr %i.g, align 8, !tbaa !455
  br label %bb.k

bb.h:                                             ; preds = %bb.c
  %i.j = load i32, ptr %2, align 4, !tbaa !17
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i32 %i.j, ptr %i.k, align 8, !tbaa !456
  br label %bb.k

bb.i:                                             ; preds = %bb.c
  %i.l = load i32, ptr %2, align 4, !tbaa !17
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 60
  store i32 %i.l, ptr %i.m, align 4, !tbaa !450
  br label %bb.k

bb.j:                                             ; preds = %bb.c
  %i.n = load i32, ptr %2, align 4, !tbaa !17
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i32 %i.n, ptr %i.o, align 8, !tbaa !457
  br label %bb.k

bb.k:                                             ; preds = %bb.c, %bb.b, %bb.a, %bb.j, %bb.i, %bb.h, %bb.g, %bb.d
  %.0 = phi i32 [ 0, %bb.j ], [ 7, %bb.a ], [ 21, %bb.b ], [ 0, %bb.d ], [ 0, %bb.g ], [ 0, %bb.h ], [ 0, %bb.i ], [ 12, %bb.c ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal ptr @recoverMPrintf(ptr nofree noundef nonnull captures(none) %0, ptr noundef %1, ...) unnamed_addr #4 {
bb.a:
  %2 = alloca [1 x %struct.__va_list_tag], align 16 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #45
  call void @llvm.va_start.p0(ptr nonnull %2)
  %i.a = call ptr @sqlite3_vmprintf(ptr noundef %1, ptr noundef nonnull %2) #45 ; 3 uses
  call void @llvm.va_end.p0(ptr nonnull %2)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !451
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.e = icmp eq ptr %i.a, null
  br i1 %i.e, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  store i32 7, ptr %i.b, align 8, !tbaa !451
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  call void @sqlite3_free(ptr noundef %i.a) #45
  br label %bb.e

bb.e:                                             ; preds = %bb.b, %bb.c, %bb.d
  %.0 = phi ptr [ null, %bb.c ], [ %i.a, %bb.b ], [ null, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #45
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define i32 @sqlite3_recover_step(ptr noundef %0) local_unnamed_addr #4 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !451  ; 2 uses
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call fastcc void @recoverStep(ptr noundef %0)
  %.pre.pre = load i32, ptr %i.b, align 8, !tbaa !451
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.pre = phi i32 [ %.pre.pre, %bb.c ], [ %i.c, %bb.b ] ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.f = load i32, ptr %i.e, align 8, !tbaa !453
  %i.g = icmp eq i32 %i.f, 6
  %i.h = icmp eq i32 %.pre, 0
  %or.cond = select i1 %i.g, i1 %i.h, i1 false
  %spec.select = select i1 %or.cond, i32 101, i32 %.pre
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.a
  %.0 = phi i32 [ %spec.select, %bb.d ], [ 7, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc void @recoverStep(ptr noundef nonnull %0) unnamed_addr #4 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 7 uses
  %i.b = alloca ptr, align 8                      ; 8 uses
  %i.c = alloca ptr, align 8                      ; 6 uses
  %i.d = alloca ptr, align 8                      ; 5 uses
  %i.e = alloca ptr, align 8                      ; 5 uses
  %i.f = alloca ptr, align 8                      ; 6 uses
  %i.g = alloca ptr, align 8                      ; 5 uses
  %i.h = alloca ptr, align 8                      ; 7 uses
  %i.i = alloca ptr, align 8                      ; 5 uses
  %i.j = alloca ptr, align 8                      ; 7 uses
  %i.k = alloca ptr, align 8                      ; 6 uses
  %i.l = alloca ptr, align 8                      ; 8 uses
  %i.m = alloca ptr, align 8                      ; 5 uses
  %i.n = alloca ptr, align 8                      ; 6 uses
  %i.o = alloca ptr, align 8                      ; 8 uses
  %i.p = alloca ptr, align 8                      ; 5 uses
end_hunk_3
begin_hunk_4_@apndFileControl:bb.a
bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !975
  %i.e = load i64, ptr %2, align 8, !tbaa !159
  %i.f = add nsw i64 %i.e, %i.d
  store i64 %i.f, ptr %2, align 8, !tbaa !159
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.g = load ptr, ptr %i.a, align 8, !tbaa !417
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 80
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !429
  %i.j = tail call i32 %i.i(ptr noundef nonnull %i.a, i32 noundef %1, ptr noundef %2) #45 ; 2 uses
  %i.k = icmp eq i32 %i.j, 0
  %i.l = icmp eq i32 %1, 12
  %or.cond = and i1 %i.l, %i.k
  br i1 %or.cond, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.n = load i64, ptr %i.m, align 8, !tbaa !975
  %i.o = load ptr, ptr %2, align 8, !tbaa !66
  %i.p = tail call ptr (ptr, ...) @sqlite3_mprintf(ptr noundef nonnull @.str.357, i64 noundef %i.n, ptr noundef %i.o) #45
  store ptr %i.p, ptr %2, align 8, !tbaa !66
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  ret i32 %i.j
}

; Function Attrs: nounwind uwtable
define internal i32 @apndSectorSize(ptr noundef %0) #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !417
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 88
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !430
  %i.e = tail call i32 %i.d(ptr noundef nonnull %i.a) #45
  ret i32 %i.e
}

; Function Attrs: nounwind uwtable
define internal i32 @apndDeviceCharacteristics(ptr noundef %0) #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !417
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 96
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !431
  %i.e = tail call i32 %i.d(ptr noundef nonnull %i.a) #45
  ret i32 %i.e
}

; Function Attrs: nounwind uwtable
define internal i32 @apndShmMap(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !417
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 104
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !466
  %i.e = tail call i32 %i.d(ptr noundef nonnull %i.a, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) #45
  ret i32 %i.e
}

; Function Attrs: nounwind uwtable
define internal i32 @apndShmLock(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !417
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 112
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !977
  %i.e = tail call i32 %i.d(ptr noundef nonnull %i.a, i32 noundef %1, i32 noundef %2, i32 noundef %3) #45
  ret i32 %i.e
}

; Function Attrs: nounwind uwtable
define internal void @apndShmBarrier(ptr noundef %0) #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !417
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 120
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !978
  tail call void %i.d(ptr noundef nonnull %i.a) #45
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @apndShmUnmap(ptr noundef %0, i32 noundef %1) #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !417
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 128
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !979
  %i.e = tail call i32 %i.d(ptr noundef nonnull %i.a, i32 noundef %1) #45
  ret i32 %i.e
}

; Function Attrs: nounwind uwtable
define internal i32 @apndFetch(ptr noundef %0, i64 noundef %1, i32 noundef %2, ptr noundef %3) #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i64, ptr %i.a, align 8, !tbaa !969  ; 2 uses
  %i.c = icmp slt i64 %i.b, 0
  br i1 %i.c, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = sext i32 %2 to i64
  %i.e = add nsw i64 %1, %i.d
  %i.f = icmp sgt i64 %i.e, %i.b
  br i1 %i.f, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !417
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 136
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !980
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.l = load i64, ptr %i.k, align 8, !tbaa !975
  %i.m = add nsw i64 %i.l, %1
  %i.n = tail call i32 %i.j(ptr noundef nonnull %i.g, i64 noundef %i.m, i32 noundef %2, ptr noundef %3) #45
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.b, %bb.c
  %.0 = phi i32 [ %i.n, %bb.c ], [ 10, %bb.b ], [ 10, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal i32 @apndUnfetch(ptr noundef %0, i64 noundef %1, ptr noundef %2) #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !417
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 144
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !981
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !975
  %i.g = add nsw i64 %i.f, %1
  %i.h = tail call i32 %i.d(ptr noundef nonnull %i.a, i64 noundef %i.g, ptr noundef %2) #45
  ret i32 %i.h
}

; Function Attrs: nounwind uwtable
define internal i32 @zipfileConnect(ptr noundef %0, ptr nofree readnone captures(none) %1, i32 noundef %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef writeonly captures(none) %4, ptr nofree noundef writeonly captures(none) %5) #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !66
  %i.c = tail call i32 @sqlite3_stricmp(ptr noundef %i.b, ptr noundef nonnull @.str.358) #45
  %i.d = icmp ne i32 %i.c, 0
  %i.e = icmp slt i32 %2, 4
  %or.cond = and i1 %i.e, %i.d
  %i.f = icmp sgt i32 %2, 4
  %or.cond3 = or i1 %i.f, %or.cond
  br i1 %or.cond3, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = tail call ptr (ptr, ...) @sqlite3_mprintf(ptr noundef nonnull @.str.360) #45
  store ptr %i.g, ptr %5, align 8, !tbaa !66
  br label %bb.l

bb.c:                                             ; preds = %bb.a
  %i.h = icmp sgt i32 %2, 3
  br i1 %i.h, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !66   ; 2 uses
  %i.k = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.j) #46
  %i.l = trunc i64 %i.k to i32
  %i.m = add nsw i32 %i.l, 1
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.034 = phi i32 [ %i.m, %bb.d ], [ 0, %bb.c ]   ; 2 uses
  %.033 = phi ptr [ %i.j, %bb.d ], [ null, %bb.c ] ; 2 uses
  %i.n = tail call i32 @sqlite3_declare_vtab(ptr noundef %0, ptr noundef nonnull @ZIPFILE_SCHEMA) #45 ; 2 uses
  %i.o = icmp eq i32 %i.n, 0
  br i1 %i.o, label %bb.f, label %zipfileDequote.exit

bb.f:                                             ; preds = %bb.e
  %i.p = sext i32 %.034 to i64                    ; 2 uses
  %i.q = add nsw i64 %i.p, 204904
  %i.r = tail call ptr @sqlite3_malloc64(i64 noundef %i.q) #45 ; 11 uses
  %i.s = icmp eq ptr %i.r, null
  br i1 %i.s, label %bb.l, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.t = add nsw i32 %.034, 204904
  %i.u = sext i32 %i.t to i64
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.r, i8 0, i64 %i.u, i1 false)
  %i.v = getelementptr inbounds nuw i8, ptr %i.r, i64 32
  store ptr %0, ptr %i.v, align 8, !tbaa !982
  %i.w = getelementptr inbounds nuw i8, ptr %i.r, i64 104
  %i.x = getelementptr inbounds nuw i8, ptr %i.r, i64 40
  store ptr %i.w, ptr %i.x, align 8, !tbaa !986
  %.not = icmp eq ptr %.033, null
  br i1 %.not, label %zipfileDequote.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.y = getelementptr inbounds nuw i8, ptr %i.r, i64 204904 ; 7 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  store ptr %i.y, ptr %i.z, align 8, !tbaa !987
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.y, ptr nonnull align 1 %.033, i64 %i.p, i1 false)
  %i.aa = load i8, ptr %i.y, align 8, !tbaa !16   ; 3 uses
  switch i8 %i.aa, label %zipfileDequote.exit [
    i8 96, label %bb.i
    i8 91, label %bb.i
    i8 39, label %bb.i
    i8 34, label %bb.i
  ]

bb.i:                                             ; preds = %bb.h, %bb.h, %bb.h, %bb.h
  %i.ab = icmp eq i8 %i.aa, 91
  %spec.store.select.i = select i1 %i.ab, i8 93, i8 %i.aa ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.r, i64 204905
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !16  ; 2 uses
  %.not38.i = icmp eq i8 %i.ad, 0
  br i1 %.not38.i, label %.thread.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.i, %bb.k
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.k ], [ 0, %bb.i ] ; 3 uses
  %i.ae = phi i8 [ %i.ap, %bb.k ], [ %i.ad, %bb.i ] ; 2 uses
  %.02840.i = phi i32 [ %i.al, %bb.k ], [ 0, %bb.i ]
  %.02939.i = phi i32 [ %.130.i, %bb.k ], [ 1, %bb.i ] ; 2 uses
  %i.af = add nsw i32 %.02939.i, 1                ; 2 uses
  %i.ag = icmp eq i8 %i.ae, %spec.store.select.i
  br i1 %i.ag, label %bb.j, label %bb.k

bb.j:                                             ; preds = %.lr.ph.i
  %i.ah = add nsw i32 %.02939.i, 2
  %i.ai = sext i32 %i.af to i64
  %i.aj = getelementptr inbounds i8, ptr %i.y, i64 %i.ai
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !16
  %.not34.i = icmp eq i8 %i.ak, %spec.store.select.i
  br i1 %.not34.i, label %bb.k, label %.thread.i

bb.k:                                             ; preds = %bb.j, %.lr.ph.i
  %.130.i = phi i32 [ %i.ah, %bb.j ], [ %i.af, %.lr.ph.i ] ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  %i.al = add nuw nsw i32 %.02840.i, 1            ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.y, i64 %indvars.iv.i
  store i8 %i.ae, ptr %i.am, align 1, !tbaa !16
  %i.an = sext i32 %.130.i to i64
  %i.ao = getelementptr inbounds i8, ptr %i.y, i64 %i.an
  %i.ap = load i8, ptr %i.ao, align 1, !tbaa !16  ; 2 uses
  %.not.i = icmp eq i8 %i.ap, 0
  br i1 %.not.i, label %.thread.loopexit.i.loopexit, label %.lr.ph.i

.thread.loopexit.i.loopexit:                      ; preds = %bb.k
  %i.aq = zext nneg i32 %i.al to i64
  br label %.thread.i

.thread.i:                                        ; preds = %bb.j, %.thread.loopexit.i.loopexit, %bb.i
  %.028.lcssa.i = phi i64 [ 0, %bb.i ], [ %i.aq, %.thread.loopexit.i.loopexit ], [ %indvars.iv.i, %bb.j ]
  %i.ar = getelementptr inbounds nuw i8, ptr %i.y, i64 %.028.lcssa.i
  store i8 0, ptr %i.ar, align 1, !tbaa !16
  br label %zipfileDequote.exit

zipfileDequote.exit:                              ; preds = %.thread.i, %bb.h, %bb.g, %bb.e
  %.0 = phi ptr [ null, %bb.e ], [ %i.r, %bb.g ], [ %i.r, %bb.h ], [ %i.r, %.thread.i ]
  %i.as = tail call i32 (ptr, i32, ...) @sqlite3_vtab_config(ptr noundef %0, i32 noundef 3) #45 ; 0 uses
  store ptr %.0, ptr %4, align 8, !tbaa !879
  br label %bb.l

bb.l:                                             ; preds = %bb.f, %zipfileDequote.exit, %bb.b
  %.035 = phi i32 [ 1, %bb.b ], [ %i.n, %zipfileDequote.exit ], [ 7, %bb.f ]
  ret i32 %.035
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal range(i32 0, 20) i32 @zipfileBestIndex(ptr nofree readnone captures(none) %0, ptr nofree noundef captures(none) %1) #29 {
bb.a:
  %i.a = load i32, ptr %1, align 8, !tbaa !881    ; 4 uses
  %i.b = icmp sgt i32 %i.a, 0
  br i1 %i.b, label %.lr.ph, label %.thread

.thread:                                          ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 64
  store double 1.000000e+03, ptr %i.c, align 8, !tbaa !899
  br label %bb.m

.lr.ph:                                           ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !886  ; 3 uses
  %wide.trip.count = zext nneg i32 %i.a to i64    ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.f = icmp eq i32 %i.a, 1
  br i1 %i.f, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %wide.trip.count, 2147483646
  br label %bb.b

bb.b:                                             ; preds = %bb.h, %.lr.ph.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.new ], [ %indvars.iv.next.1, %bb.h ] ; 4 uses
  %.025 = phi i32 [ 0, %.lr.ph.new ], [ %.2.1, %bb.h ] ; 2 uses
  %.01724 = phi i32 [ -1, %.lr.ph.new ], [ %.219.1, %bb.h ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.1, %bb.h ]
  %i.g = getelementptr inbounds nuw [12 x i8], ptr %i.e, i64 %indvars.iv ; 3 uses
  %i.h = load i32, ptr %i.g, align 4, !tbaa !890
  %.not22 = icmp eq i32 %i.h, 7
  br i1 %.not22, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 5
  %i.j = load i8, ptr %i.i, align 1, !tbaa !889
  %i.k = icmp eq i8 %i.j, 0
  br i1 %i.k, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %i.g, i64 4
  %i.m = load i8, ptr %i.l, align 4, !tbaa !887
  %i.n = icmp eq i8 %i.m, 2
  %i.o = trunc nuw nsw i64 %indvars.iv to i32
  %spec.select = select i1 %i.n, i32 %i.o, i32 %.01724
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b
  %.219 = phi i32 [ %.01724, %bb.b ], [ %spec.select, %bb.d ], [ %.01724, %bb.c ] ; 3 uses
  %.2 = phi i32 [ %.025, %bb.b ], [ %.025, %bb.d ], [ 1, %bb.c ] ; 2 uses
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.p = getelementptr inbounds nuw [12 x i8], ptr %i.e, i64 %indvars.iv.next ; 3 uses
  %i.q = load i32, ptr %i.p, align 4, !tbaa !890
  %.not22.1 = icmp eq i32 %i.q, 7
  br i1 %.not22.1, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 5
  %i.s = load i8, ptr %i.r, align 1, !tbaa !889
  %i.t = icmp eq i8 %i.s, 0
  br i1 %i.t, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.u = getelementptr inbounds nuw i8, ptr %i.p, i64 4
  %i.v = load i8, ptr %i.u, align 4, !tbaa !887
  %i.w = icmp eq i8 %i.v, 2
  %i.x = trunc nuw nsw i64 %indvars.iv.next to i32
  %spec.select.1 = select i1 %i.w, i32 %i.x, i32 %.219
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.e
  %.219.1 = phi i32 [ %.219, %bb.e ], [ %spec.select.1, %bb.g ], [ %.219, %bb.f ] ; 3 uses
  %.2.1 = phi i32 [ %.2, %bb.e ], [ %.2, %bb.g ], [ 1, %bb.f ] ; 3 uses
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.unr-lcssa, label %bb.b, !llvm.loop !988

._crit_edge.unr-lcssa:                            ; preds = %bb.h
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.unr-lcssa, %.lr.ph
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next.1, %._crit_edge.unr-lcssa ] ; 2 uses
  %.025.epil.init = phi i32 [ 0, %.lr.ph ], [ %.2.1, %._crit_edge.unr-lcssa ] ; 2 uses
  %.01724.epil.init = phi i32 [ -1, %.lr.ph ], [ %.219.1, %._crit_edge.unr-lcssa ] ; 3 uses
  %lcmp.mod34 = trunc i32 %i.a to i1
  tail call void @llvm.assume(i1 %lcmp.mod34)
  %i.y = getelementptr inbounds nuw [12 x i8], ptr %i.e, i64 %indvars.iv.epil.init ; 3 uses
  %i.z = load i32, ptr %i.y, align 4, !tbaa !890
  %.not22.epil = icmp eq i32 %i.z, 7
  br i1 %.not22.epil, label %bb.i, label %._crit_edge

bb.i:                                             ; preds = %.epil.preheader
  %i.aa = getelementptr inbounds nuw i8, ptr %i.y, i64 5
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !889
  %i.ac = icmp eq i8 %i.ab, 0
  br i1 %i.ac, label %._crit_edge, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ad = getelementptr inbounds nuw i8, ptr %i.y, i64 4
  %i.ae = load i8, ptr %i.ad, align 4, !tbaa !887
  %i.af = icmp eq i8 %i.ae, 2
  %i.ag = trunc nuw nsw i64 %indvars.iv.epil.init to i32
  %spec.select.epil = select i1 %i.af, i32 %i.ag, i32 %.01724.epil.init
  br label %._crit_edge

._crit_edge:                                      ; preds = %.epil.preheader, %bb.i, %bb.j, %._crit_edge.unr-lcssa
  %.219.lcssa = phi i32 [ %.219.1, %._crit_edge.unr-lcssa ], [ %.01724.epil.init, %.epil.preheader ], [ %spec.select.epil, %bb.j ], [ %.01724.epil.init, %bb.i ] ; 2 uses
  %.2.lcssa = phi i32 [ %.2.1, %._crit_edge.unr-lcssa ], [ %.025.epil.init, %.epil.preheader ], [ %.025.epil.init, %bb.j ], [ 1, %bb.i ]
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 64
  store double 1.000000e+03, ptr %i.ah, align 8, !tbaa !899
  %i.ai = icmp sgt i32 %.219.lcssa, -1
  br i1 %i.ai, label %bb.k, label %bb.l

bb.k:                                             ; preds = %._crit_edge
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !892
  %i.al = zext nneg i32 %.219.lcssa to i64
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.ak, i64 %i.al ; 2 uses
  store i32 1, ptr %i.am, align 4, !tbaa !893
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 4
  store i8 1, ptr %i.an, align 4, !tbaa !895
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 40
  store i32 1, ptr %i.ao, align 8, !tbaa !907
  br label %bb.m

bb.l:                                             ; preds = %._crit_edge
  %i.ap = icmp eq i32 %.2.lcssa, 0
  br i1 %i.ap, label %bb.m, label %bb.n

bb.m:                                             ; preds = %.thread, %bb.l, %bb.k
  br label %bb.n
end_hunk_4
begin_hunk_5_@zipfileReadEOCD:bb.a

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 12) i32 @zipfileGetEntry(ptr nofree noundef captures(none) %0, ptr nofree noundef captures(address) %1, i64 noundef range(i64 -2147483648, 2147483648) %2, ptr nofree noundef captures(address_is_null) %3, i64 noundef %4, ptr nofree noundef nonnull writeonly captures(none) %5) unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 11 uses
  %i.b = icmp eq ptr %1, null                     ; 3 uses
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !986  ; 4 uses
  %i.e = tail call i32 @fseek(ptr noundef %3, i64 noundef %4, i32 noundef 0) ; 0 uses
  %i.f = tail call i64 @fread(ptr noundef %i.d, i64 noundef 1, i64 noundef 46, ptr noundef %3)
  %.not.i = icmp eq i64 %i.f, 46
  br i1 %.not.i, label %.thread150.thread, label %bb.e

.thread150.thread:                                ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 30 ; 2 uses
  %.val123194 = load i16, ptr %i.g, align 1
  %i.h = zext i16 %.val123194 to i32
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 32 ; 2 uses
  %.val195 = load i16, ptr %i.i, align 1
  %i.j = zext i16 %.val195 to i32
  %i.k = add nuw nsw i32 %i.j, %i.h               ; 2 uses
  %i.l = zext nneg i32 %i.k to i64                ; 2 uses
  %i.m = add nuw nsw i64 %i.l, 96
  br label %bb.g

bb.c:                                             ; preds = %bb.a
  %i.n = add nsw i64 %4, 46
  %i.o = icmp sgt i64 %i.n, %2
  br i1 %i.o, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.p = load ptr, ptr %i.a, align 8, !tbaa !66
  tail call void @sqlite3_free(ptr noundef %i.p) #45
  %i.q = tail call ptr (ptr, ...) @sqlite3_mprintf(ptr noundef nonnull @.str.366) #45
  store ptr %i.q, ptr %i.a, align 8, !tbaa !66
  br label %zipfileEntryFree.exit

bb.e:                                             ; preds = %bb.b
  %i.r = load ptr, ptr %i.a, align 8, !tbaa !66
  tail call void @sqlite3_free(ptr noundef %i.r) #45
  %i.s = tail call ptr (ptr, ...) @sqlite3_mprintf(ptr noundef nonnull @.str.365) #45
  store ptr %i.s, ptr %i.a, align 8, !tbaa !66
  br label %zipfileEntryFree.exit

bb.f:                                             ; preds = %bb.c
  %i.t = getelementptr inbounds i8, ptr %1, i64 %4 ; 4 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 30 ; 2 uses
  %.val123 = load i16, ptr %i.u, align 1
  %i.v = zext i16 %.val123 to i32
  %i.w = getelementptr inbounds nuw i8, ptr %i.t, i64 32 ; 2 uses
  %.val = load i16, ptr %i.w, align 1
  %i.x = zext i16 %.val to i32
  %i.y = add nuw nsw i32 %i.x, %i.v               ; 2 uses
  %i.z = zext nneg i32 %i.y to i64                ; 2 uses
  %i.aa = add nuw nsw i64 %i.z, 96
  %i.ab = getelementptr inbounds nuw i8, ptr %i.t, i64 20
  %i.ac = load i32, ptr %i.ab, align 1
  %i.ad = zext i32 %i.ac to i64
  %i.ae = add nuw nsw i64 %i.aa, %i.ad
  br label %bb.g

bb.g:                                             ; preds = %.thread150.thread, %bb.f
  %i.af = phi i64 [ %i.z, %bb.f ], [ %i.l, %.thread150.thread ] ; 4 uses
  %i.ag = phi i32 [ %i.y, %bb.f ], [ %i.k, %.thread150.thread ]
  %i.ah = phi ptr [ %i.w, %bb.f ], [ %i.i, %.thread150.thread ]
  %i.ai = phi ptr [ %i.u, %bb.f ], [ %i.g, %.thread150.thread ]
  %.0104149196 = phi ptr [ %i.t, %bb.f ], [ %i.d, %.thread150.thread ] ; 17 uses
  %.0 = phi i64 [ %i.ae, %bb.f ], [ %i.m, %.thread150.thread ]
  %i.aj = getelementptr inbounds nuw i8, ptr %.0104149196, i64 28 ; 2 uses
  %.val125197 = load i16, ptr %i.aj, align 1      ; 4 uses
  %i.ak = zext i16 %.val125197 to i32             ; 2 uses
  %i.al = tail call ptr @sqlite3_malloc64(i64 noundef %.0) #45 ; 29 uses
  %i.am = icmp eq ptr %i.al, null
  br i1 %i.am, label %zipfileEntryFree.exit, label %zipfileGetU32.exit.i

zipfileGetU32.exit.i:                             ; preds = %bb.g
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.al, i8 0, i64 96, i1 false)
  %i.an = load i32, ptr %.0104149196, align 1
  %.not.i130 = icmp eq i32 %i.an, 33639248
  br i1 %.not.i130, label %bb.h, label %zipfileReadCDS.exit

zipfileReadCDS.exit:                              ; preds = %zipfileGetU32.exit.i
  tail call void (ptr, ptr, ...) @zipfileTableErr(ptr noundef %0, ptr noundef nonnull @.str.363, i64 noundef %4)
  br label %.thread177

bb.h:                                             ; preds = %zipfileGetU32.exit.i
  %i.ao = getelementptr inbounds nuw i8, ptr %.0104149196, i64 4
  %.val71.i = load i16, ptr %i.ao, align 1
  store i16 %.val71.i, ptr %i.al, align 8, !tbaa !1056
  %i.ap = getelementptr inbounds nuw i8, ptr %.0104149196, i64 6
  %.val69.i = load i16, ptr %i.ap, align 1
  %i.aq = getelementptr inbounds nuw i8, ptr %i.al, i64 2
  store i16 %.val69.i, ptr %i.aq, align 2, !tbaa !1047
  %i.ar = getelementptr inbounds nuw i8, ptr %.0104149196, i64 8
  %.val67.i = load i16, ptr %i.ar, align 1
  %i.as = getelementptr inbounds nuw i8, ptr %i.al, i64 4
  store i16 %.val67.i, ptr %i.as, align 4, !tbaa !1048
  %i.at = getelementptr inbounds nuw i8, ptr %.0104149196, i64 10
  %.val65.i = load i16, ptr %i.at, align 1
  %i.au = getelementptr inbounds nuw i8, ptr %i.al, i64 6
  store i16 %.val65.i, ptr %i.au, align 2, !tbaa !1027
  %i.av = getelementptr inbounds nuw i8, ptr %.0104149196, i64 12
  %.val63.i = load i16, ptr %i.av, align 1
  %i.aw = getelementptr i8, ptr %i.al, i64 8      ; 2 uses
  store i16 %.val63.i, ptr %i.aw, align 8, !tbaa !1039
  %i.ax = getelementptr inbounds nuw i8, ptr %.0104149196, i64 14
  %.val61.i = load i16, ptr %i.ax, align 1
  %i.ay = getelementptr i8, ptr %i.al, i64 10     ; 2 uses
  store i16 %.val61.i, ptr %i.ay, align 2, !tbaa !1038
  %i.az = getelementptr inbounds nuw i8, ptr %.0104149196, i64 16
  %i.ba = load i32, ptr %i.az, align 1
  %i.bb = getelementptr inbounds nuw i8, ptr %i.al, i64 12
  store i32 %i.ba, ptr %i.bb, align 4, !tbaa !1049
  %i.bc = getelementptr inbounds nuw i8, ptr %.0104149196, i64 20
  %i.bd = load i32, ptr %i.bc, align 1
  %i.be = getelementptr inbounds nuw i8, ptr %i.al, i64 16 ; 2 uses
  store i32 %i.bd, ptr %i.be, align 8, !tbaa !1028
  %i.bf = getelementptr inbounds nuw i8, ptr %.0104149196, i64 24
  %i.bg = load i32, ptr %i.bf, align 1
  %i.bh = getelementptr inbounds nuw i8, ptr %i.al, i64 20
  store i32 %i.bg, ptr %i.bh, align 4, !tbaa !1026
  %.val59.i = load i16, ptr %i.aj, align 1
  %i.bi = getelementptr inbounds nuw i8, ptr %i.al, i64 24
  store i16 %.val59.i, ptr %i.bi, align 8, !tbaa !1031
  %.val57.i = load i16, ptr %i.ai, align 1
  %i.bj = getelementptr inbounds nuw i8, ptr %i.al, i64 26 ; 2 uses
  store i16 %.val57.i, ptr %i.bj, align 2, !tbaa !1046
  %.val55.i = load i16, ptr %i.ah, align 1
  %i.bk = getelementptr inbounds nuw i8, ptr %i.al, i64 28
  store i16 %.val55.i, ptr %i.bk, align 4, !tbaa !1057
  %i.bl = getelementptr inbounds nuw i8, ptr %.0104149196, i64 34
  %.val53.i = load i16, ptr %i.bl, align 1
  %i.bm = getelementptr inbounds nuw i8, ptr %i.al, i64 30
  store i16 %.val53.i, ptr %i.bm, align 2, !tbaa !1058
  %i.bn = getelementptr inbounds nuw i8, ptr %.0104149196, i64 36
  %.val.i = load i16, ptr %i.bn, align 1
  %i.bo = getelementptr inbounds nuw i8, ptr %i.al, i64 32
  store i16 %.val.i, ptr %i.bo, align 8, !tbaa !1059
  %i.bp = getelementptr inbounds nuw i8, ptr %.0104149196, i64 38
  %i.bq = load i32, ptr %i.bp, align 1
  %i.br = getelementptr inbounds nuw i8, ptr %i.al, i64 36
  store i32 %i.bq, ptr %i.br, align 4, !tbaa !1024
  %i.bs = getelementptr inbounds nuw i8, ptr %.0104149196, i64 42
  %i.bt = load i32, ptr %i.bs, align 1
  %i.bu = getelementptr inbounds nuw i8, ptr %i.al, i64 40 ; 4 uses
  store i32 %i.bt, ptr %i.bu, align 8, !tbaa !1060
  br i1 %i.b, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.bv = add nuw nsw i32 %i.ag, %i.ak
  %i.bw = zext nneg i32 %i.bv to i64              ; 2 uses
  %i.bx = add nsw i64 %4, 46
  %i.by = tail call i32 @fseek(ptr noundef %3, i64 noundef %i.bx, i32 noundef 0) ; 0 uses
  %i.bz = tail call i64 @fread(ptr noundef nonnull %.0104149196, i64 noundef 1, i64 noundef range(i64 -2147483648, 2147483648) %i.bw, ptr noundef %3)
  %.not.i132 = icmp eq i64 %i.bz, %i.bw
  br i1 %.not.i132, label %zipfileReadData.exit134, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ca = load ptr, ptr %i.a, align 8, !tbaa !66
  tail call void @sqlite3_free(ptr noundef %i.ca) #45
  %i.cb = tail call ptr (ptr, ...) @sqlite3_mprintf(ptr noundef nonnull @.str.365) #45
  store ptr %i.cb, ptr %i.a, align 8, !tbaa !66
  br label %.thread177

bb.k:                                             ; preds = %bb.h
  %i.cc = add nsw i64 %4, 46                      ; 2 uses
  %i.cd = getelementptr inbounds i8, ptr %1, i64 %i.cc
  %i.ce = zext i16 %.val125197 to i64
  %i.cf = add nsw i64 %i.cc, %i.ce
  %i.cg = add nsw i64 %i.cf, %i.af
  %i.ch = icmp sgt i64 %i.cg, %2
  br i1 %i.ch, label %bb.l, label %zipfileReadData.exit134

bb.l:                                             ; preds = %bb.k
  %i.ci = load ptr, ptr %i.a, align 8, !tbaa !66
  tail call void @sqlite3_free(ptr noundef %i.ci) #45
  %i.cj = tail call ptr (ptr, ...) @sqlite3_mprintf(ptr noundef nonnull @.str.366) #45
  store ptr %i.cj, ptr %i.a, align 8, !tbaa !66
  br label %.thread177

zipfileReadData.exit134:                          ; preds = %bb.k, %bb.i
  %.1105 = phi ptr [ %i.cd, %bb.k ], [ %.0104149196, %bb.i ] ; 5 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.al, i64 56 ; 2 uses
  %i.cl = add nuw nsw i32 %i.ak, 1
  %i.cm = zext nneg i32 %i.cl to i64
  %i.cn = tail call ptr @sqlite3_malloc64(i64 noundef %i.cm) #45 ; 3 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.al, i64 48 ; 3 uses
  store ptr %i.cn, ptr %i.co, align 8, !tbaa !994
  %.not118 = icmp eq ptr %i.cn, null
  br i1 %.not118, label %.thread157, label %bb.m

.thread157:                                       ; preds = %zipfileReadData.exit134
  %i.cp = getelementptr inbounds nuw i8, ptr %i.al, i64 96 ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.al, i64 64
  store ptr %i.cp, ptr %i.cq, align 8, !tbaa !1055
  %i.cr = zext i16 %.val125197 to i64
  %i.cs = getelementptr inbounds nuw i8, ptr %.1105, i64 %i.cr
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.cp, ptr align 1 %i.cs, i64 %i.af, i1 false)
  br label %.thread177

bb.m:                                             ; preds = %zipfileReadData.exit134
  %i.ct = zext i16 %.val125197 to i64             ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.cn, ptr align 1 %.1105, i64 %i.ct, i1 false)
  %i.cu = load ptr, ptr %i.co, align 8, !tbaa !994
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 %i.ct
  store i8 0, ptr %i.cv, align 1, !tbaa !16
  %.pr = load ptr, ptr %i.co, align 8, !tbaa !994
  %i.cw = getelementptr inbounds nuw i8, ptr %i.al, i64 96 ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.al, i64 64 ; 2 uses
  store ptr %i.cw, ptr %i.cx, align 8, !tbaa !1055
  %i.cy = getelementptr inbounds nuw i8, ptr %.1105, i64 %i.ct ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.cw, ptr align 1 %i.cy, i64 %i.af, i1 false)
  %i.cz = icmp eq ptr %.pr, null
  br i1 %i.cz, label %.thread177, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.da = load i16, ptr %i.bj, align 2, !tbaa !1014 ; 2 uses
  %i.db = zext i16 %i.da to i64
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cy, i64 %i.db ; 2 uses
  %.not20.i = icmp ult i16 %i.da, 9
  br i1 %.not20.i, label %zipfileScanExtra.exit.thread, label %.lr.ph.i.outer

.lr.ph.i.outer:                                   ; preds = %bb.n, %.thread198
  %.022.i.ph = phi ptr [ %i.ds, %.thread198 ], [ %i.cy, %bb.n ]
  %i.dd = phi i1 [ false, %.thread198 ], [ true, %bb.n ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.outer, %bb.p
  %.022.i = phi ptr [ %i.dn, %bb.p ], [ %.022.i.ph, %.lr.ph.i.outer ] ; 5 uses
  %.0.val.i = load i16, ptr %.022.i, align 1
  %i.de = getelementptr inbounds nuw i8, ptr %.022.i, i64 4 ; 3 uses
  %i.df = getelementptr inbounds nuw i8, ptr %.022.i, i64 2
  %.val.i135 = load i8, ptr %i.df, align 1, !tbaa !16
  %i.dg = getelementptr i8, ptr %.022.i, i64 3
  %.val18.i = load i8, ptr %i.dg, align 1, !tbaa !16
  %i.dh = zext i8 %.val18.i to i64
  %i.di = shl nuw nsw i64 %i.dh, 8                ; 2 uses
  %i.dj = zext i8 %.val.i135 to i64               ; 2 uses
  %cond.i = icmp eq i16 %.0.val.i, 21589
  br i1 %cond.i, label %bb.o, label %bb.p

bb.o:                                             ; preds = %.lr.ph.i
  %i.dk = load i8, ptr %i.de, align 1, !tbaa !16
  %i.dl = and i8 %i.dk, 1
  %.not17.i = icmp eq i8 %i.dl, 0
  br i1 %.not17.i, label %bb.p, label %.thread198

bb.p:                                             ; preds = %bb.o, %.lr.ph.i
  %i.dm = getelementptr inbounds nuw i8, ptr %i.de, i64 %i.di
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 %i.dj ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 9
  %.not.i136 = icmp ugt ptr %i.do, %i.dc
  br i1 %.not.i136, label %zipfileScanExtra.exit, label %.lr.ph.i, !llvm.loop !1078

.thread198:                                       ; preds = %bb.o
  %i.dp = getelementptr inbounds nuw i8, ptr %.022.i, i64 5
  %i.dq = load i32, ptr %i.dp, align 1
  store i32 %i.dq, ptr %i.ck, align 8, !tbaa !17
  %i.dr = getelementptr inbounds nuw i8, ptr %i.de, i64 %i.di
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 %i.dj ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 9
  %.not.i136200 = icmp ugt ptr %i.dt, %i.dc
  br i1 %.not.i136200, label %zipfileScanExtra.exit.thread202, label %.lr.ph.i.outer, !llvm.loop !1078

zipfileScanExtra.exit:                            ; preds = %bb.p
  br i1 %i.dd, label %zipfileScanExtra.exit.thread, label %zipfileScanExtra.exit.thread202

zipfileScanExtra.exit.thread:                     ; preds = %bb.n, %zipfileScanExtra.exit
  %.val127 = load i16, ptr %i.aw, align 8, !tbaa !1039
  %.val128 = load i16, ptr %i.ay, align 2, !tbaa !1038
  %i.du = zext i16 %.val128 to i32                ; 3 uses
  %i.dv = lshr i32 %i.du, 9
  %i.dw = lshr i32 %i.du, 5
  %i.dx = and i32 %i.dw, 15                       ; 3 uses
  %i.dy = icmp samesign ult i32 %i.dx, 3          ; 2 uses
  %i.dz = or disjoint i32 %i.dx, 12
  %.021.v.i = select i1 %i.dy, i32 1979, i32 1980
  %.021.i = add nuw nsw i32 %.021.v.i, %i.dv      ; 2 uses
  %.0.i137 = select i1 %i.dy, i32 %i.dz, i32 %i.dx
  %i.ea = zext i16 %.val127 to i32                ; 3 uses
  %i.eb = lshr i32 %i.ea, 11
  %i.ec = lshr i32 %i.ea, 5
  %i.ed = and i32 %i.ec, 63
  %i.ee = shl nuw nsw i32 %i.ea, 1
  %i.ef = and i32 %i.ee, 62
  %i.eg = and i32 %i.du, 31
  %i.eh = mul nuw nsw i32 %.021.i, 36525
  %i.ei = add nuw nsw i32 %i.eh, 172251900
  %i.ej = udiv i32 %i.ei, 100
  %i.ek = mul nuw nsw i32 %.0.i137, 306001
  %i.el = add nuw nsw i32 %i.ek, 306001
  %i.em = udiv i32 %i.el, 10000
  %.lhs.trunc.i = trunc nuw nsw i32 %.021.i to i16 ; 2 uses
  %i.en = udiv i16 %.lhs.trunc.i, 100
  %.zext.i = zext nneg i16 %i.en to i32
  %i.eo = udiv i16 %.lhs.trunc.i, 400
  %.zext2.i = zext nneg i16 %i.eo to i32
  %reass.sub.i = add nuw nsw i32 %i.eg, 2
  %i.ep = add nuw nsw i32 %reass.sub.i, %i.em
  %i.eq = add nuw nsw i32 %i.ep, %i.ej
  %i.er = sub nuw nsw i32 %i.eq, %.zext.i
  %i.es = add nuw nsw i32 %i.er, %.zext2.i
  %i.et = uitofp nneg i32 %i.es to double
  %i.eu = fadd nnan double %i.et, -1.524500e+03
  %i.ev = fmul nnan double %i.eu, 8.640000e+04
  %i.ew = fptosi double %i.ev to i64
  %i.ex = mul nuw nsw i32 %i.eb, 3600
  %i.ey = mul nuw nsw i32 %i.ed, 60
  %i.ez = trunc i64 %i.ew to i32
  %i.fa = add nuw nsw i32 %i.ex, -413362496
  %i.fb = add nuw nsw i32 %i.fa, %i.ef
  %i.fc = add nuw nsw i32 %i.fb, %i.ey
  %i.fd = add i32 %i.fc, %i.ez
  store i32 %i.fd, ptr %i.ck, align 8, !tbaa !1025
  br label %zipfileScanExtra.exit.thread202

zipfileScanExtra.exit.thread202:                  ; preds = %.thread198, %zipfileScanExtra.exit, %zipfileScanExtra.exit.thread
  %.not119 = icmp eq ptr %3, null
  %i.fe = load i32, ptr %i.bu, align 8, !tbaa !1045
  %i.ff = zext i32 %i.fe to i64                   ; 3 uses
  br i1 %.not119, label %bb.r, label %bb.q

bb.q:                                             ; preds = %zipfileScanExtra.exit.thread202
  %i.fg = tail call i32 @fseek(ptr noundef nonnull %3, i64 noundef %i.ff, i32 noundef 0) ; 0 uses
  %i.fh = tail call i64 @fread(ptr noundef %.1105, i64 noundef 1, i64 noundef 30, ptr noundef nonnull %3)
  %.not.i138 = icmp eq i64 %i.fh, 30
  br i1 %.not.i138, label %bb.s, label %zipfileReadData.exit140.thread166.sink.split

bb.r:                                             ; preds = %zipfileScanExtra.exit.thread202
  %i.fi = getelementptr inbounds nuw i8, ptr %1, i64 %i.ff
  %i.fj = add nuw nsw i64 %i.ff, 30
  %i.fk = icmp sgt i64 %i.fj, %2
  br i1 %i.fk, label %zipfileReadData.exit140.thread166.sink.split, label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %.2106.ph = phi ptr [ %.1105, %bb.q ], [ %i.fi, %bb.r ] ; 4 uses
  %i.fl = icmp eq ptr %.2106.ph, null
  br i1 %i.fl, label %zipfileReadData.exit140.thread166, label %zipfileGetU32.exit.i141

zipfileGetU32.exit.i141:                          ; preds = %bb.s
  %i.fm = load i32, ptr %.2106.ph, align 1
  %.not.i142 = icmp eq i32 %i.fm, 67324752
  br i1 %.not.i142, label %zipfileReadData.exit140, label %zipfileReadData.exit140.thread166

zipfileReadData.exit140:                          ; preds = %zipfileGetU32.exit.i141
  %i.fn = getelementptr inbounds nuw i8, ptr %.2106.ph, i64 26
  %.val36.i = load i16, ptr %i.fn, align 1        ; 2 uses
  %i.fo = icmp ult i16 %.val36.i, 251
  br i1 %i.fo, label %bb.t, label %zipfileReadData.exit140.thread166

bb.t:                                             ; preds = %zipfileReadData.exit140
  %i.fp = getelementptr inbounds nuw i8, ptr %.2106.ph, i64 28
  %.val.i144 = load i16, ptr %i.fp, align 1
  %i.fq = load i32, ptr %i.bu, align 8, !tbaa !1045
  %i.fr = zext i32 %i.fq to i64
  %i.fs = getelementptr inbounds nuw i8, ptr %i.al, i64 72
  %i.ft = zext i16 %.val.i144 to i64
  %narrow = add nuw nsw i16 %.val36.i, 30
  %i.fu = zext nneg i16 %narrow to i64
  %i.fv = add nuw nsw i64 %i.fu, %i.ft
  %i.fw = add nuw nsw i64 %i.fv, %i.fr            ; 3 uses
  store i64 %i.fw, ptr %i.fs, align 8, !tbaa !1030
  br i1 %i.b, label %bb.y, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.fx = load i32, ptr %i.be, align 8, !tbaa !1041 ; 2 uses
  %.not120 = icmp eq i32 %i.fx, 0
  br i1 %.not120, label %bb.y, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.fy = zext i32 %i.fx to i64                   ; 2 uses
  %i.fz = add nuw nsw i64 %i.fw, %i.fy
  %i.ga = icmp sgt i64 %i.fz, %2
  br i1 %i.ga, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  tail call fastcc void @zipfileCorrupt(ptr noundef nonnull %i.a)
  br label %.thread177

bb.x:                                             ; preds = %bb.v
  %i.gb = load ptr, ptr %i.cx, align 8, !tbaa !1055
  %i.gc = getelementptr inbounds nuw i8, ptr %i.gb, i64 %i.af ; 2 uses
  %i.gd = getelementptr inbounds nuw i8, ptr %i.al, i64 80
  store ptr %i.gc, ptr %i.gd, align 8, !tbaa !1029
  %i.ge = getelementptr inbounds nuw i8, ptr %1, i64 %i.fw
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.gc, ptr nonnull align 1 %i.ge, i64 %i.fy, i1 false)
  br label %bb.y

zipfileReadData.exit140.thread166.sink.split:     ; preds = %bb.r, %bb.q
  %.str.365.sink = phi ptr [ @.str.365, %bb.q ], [ @.str.366, %bb.r ]
  %.5170.ph = phi i32 [ 1, %bb.q ], [ 11, %bb.r ]
  %i.gf = load ptr, ptr %i.a, align 8, !tbaa !66
  tail call void @sqlite3_free(ptr noundef %i.gf) #45
  %i.gg = tail call ptr (ptr, ...) @sqlite3_mprintf(ptr noundef nonnull %.str.365.sink) #45
  store ptr %i.gg, ptr %i.a, align 8, !tbaa !66
  br label %zipfileReadData.exit140.thread166

zipfileReadData.exit140.thread166:                ; preds = %zipfileReadData.exit140.thread166.sink.split, %bb.s, %zipfileGetU32.exit.i141, %zipfileReadData.exit140
  %.5170 = phi i32 [ 1, %zipfileReadData.exit140 ], [ 1, %bb.s ], [ 1, %zipfileGetU32.exit.i141 ], [ %.5170.ph, %zipfileReadData.exit140.thread166.sink.split ]
  %i.gh = load i32, ptr %i.bu, align 8, !tbaa !1045
  tail call void (ptr, ptr, ...) @zipfileTableErr(ptr noundef %0, ptr noundef nonnull @.str.364, i32 noundef %i.gh)
  br label %.thread177

.thread177:                                       ; preds = %bb.j, %bb.l, %zipfileReadCDS.exit, %.thread157, %bb.m, %zipfileReadData.exit140.thread166, %bb.w
  %.7179 = phi i32 [ 11, %bb.w ], [ 7, %.thread157 ], [ %.5170, %zipfileReadData.exit140.thread166 ], [ 7, %bb.m ], [ 1, %zipfileReadCDS.exit ], [ 11, %bb.l ], [ 1, %bb.j ]
  %i.gi = getelementptr inbounds nuw i8, ptr %i.al, i64 48
  %i.gj = load ptr, ptr %i.gi, align 8, !tbaa !994
  tail call void @sqlite3_free(ptr noundef %i.gj) #45
  tail call void @sqlite3_free(ptr noundef nonnull %i.al) #45
  br label %zipfileEntryFree.exit

bb.y:                                             ; preds = %bb.x, %bb.u, %bb.t
end_hunk_5
begin_hunk_6_@zipfileBufferGrow:bb.a
  %i.k = add nsw i64 %1, %i.h
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %bb.b
  %.018 = phi i64 [ %i.j, %bb.b ], [ %i.m, %bb.c ] ; 4 uses
  %i.l = icmp slt i64 %.018, %i.k
  %i.m = shl nsw i64 %.018, 1
  br i1 %i.l, label %bb.c, label %bb.d, !llvm.loop !1068

bb.d:                                             ; preds = %bb.c
  %i.n = load ptr, ptr %0, align 8, !tbaa !1069
  %i.o = tail call ptr @sqlite3_realloc64(ptr noundef %i.n, i64 noundef %.018) #45 ; 2 uses
  %i.p = icmp eq ptr %i.o, null
  br i1 %i.p, label %bb.e, label %.thread

.thread:                                          ; preds = %bb.d
  store ptr %i.o, ptr %0, align 8, !tbaa !1069
  %i.q = trunc i64 %.018 to i32
  store i32 %i.q, ptr %i.a, align 4, !tbaa !1066
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %.thread, %bb.d
  %.1 = phi i32 [ 7, %bb.d ], [ 0, %.thread ], [ 0, %bb.a ]
  ret i32 %.1
}

declare i64 @compressBound(i64 noundef) local_unnamed_addr #5

declare i32 @compress(ptr noundef, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #5

declare void @sqlite3_result_value(ptr noundef, ptr noundef) local_unnamed_addr #5

declare i32 @uncompress(ptr noundef, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #5

declare i32 @sqlite3_bind_text(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #5

declare i32 @sqlite3_exec(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define internal i32 @expertConnect(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef writeonly captures(none) %4, ptr nofree noundef writeonly captures(none) %5) #4 {
bb.a:
  %.not = icmp eq i32 %2, 4
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = tail call ptr (ptr, ...) @sqlite3_mprintf(ptr noundef nonnull @.str.400) #45
  store ptr %i.a, ptr %5, align 8, !tbaa !66
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !66   ; 3 uses
  %i.d = tail call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %i.c) #46
  %sext.i = shl i64 %i.d, 32
  %i.e = ashr exact i64 %sext.i, 32               ; 3 uses
  %i.f = tail call ptr @sqlite3_malloc64(i64 noundef %i.e) #45 ; 5 uses
  %.not.i = icmp eq ptr %i.f, null
  br i1 %.not.i, label %bb.f, label %.preheader.i

.preheader.i:                                     ; preds = %bb.c
  %i.g = add nsw i64 %i.e, -1
  %i.h = icmp sgt i64 %i.e, 2
  br i1 %i.h, label %.lr.ph.i, label %.loopexit

.lr.ph.i:                                         ; preds = %.preheader.i, %.lr.ph.i
  %.018.i = phi i64 [ %i.q, %.lr.ph.i ], [ 1, %.preheader.i ] ; 2 uses
  %.01517.i = phi i64 [ %i.o, %.lr.ph.i ], [ 0, %.preheader.i ] ; 2 uses
  %i.i = getelementptr inbounds i8, ptr %i.c, i64 %.018.i
  %i.j = load i8, ptr %i.i, align 1, !tbaa !16
  %i.k = icmp eq i8 %i.j, 39
  %i.l = zext i1 %i.k to i64
  %spec.select.i = add nsw i64 %.018.i, %i.l      ; 2 uses
  %i.m = getelementptr inbounds i8, ptr %i.c, i64 %spec.select.i
  %i.n = load i8, ptr %i.m, align 1, !tbaa !16
  %i.o = add nuw nsw i64 %.01517.i, 1             ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.f, i64 %.01517.i
  store i8 %i.n, ptr %i.p, align 1, !tbaa !16
  %i.q = add nsw i64 %spec.select.i, 1            ; 2 uses
  %i.r = icmp slt i64 %i.q, %i.g
  br i1 %i.r, label %.lr.ph.i, label %.loopexit, !llvm.loop !1089

.loopexit:                                        ; preds = %.lr.ph.i, %.preheader.i
  %.015.lcssa.i = phi i64 [ 0, %.preheader.i ], [ %i.o, %.lr.ph.i ]
  %i.s = getelementptr inbounds nuw i8, ptr %i.f, i64 %.015.lcssa.i
  store i8 0, ptr %i.s, align 1, !tbaa !16
  %i.t = tail call i32 @sqlite3_declare_vtab(ptr noundef %0, ptr noundef nonnull %i.f) #45 ; 2 uses
  %i.u = icmp eq i32 %i.t, 0
  br i1 %i.u, label %bb.d, label %idxMalloc.exit.thread

bb.d:                                             ; preds = %.loopexit
  %i.v = tail call ptr @sqlite3_malloc64(i64 noundef 40) #45 ; 5 uses
  %.not.i15 = icmp eq ptr %i.v, null
  br i1 %.not.i15, label %idxMalloc.exit.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(40) %i.v, i8 0, i64 32, i1 false)
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 32
  store ptr %1, ptr %i.w, align 8, !tbaa !1090
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !268
  %i.z = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  store ptr %i.y, ptr %i.z, align 8, !tbaa !1092
  br label %idxMalloc.exit.thread

idxMalloc.exit.thread:                            ; preds = %bb.d, %.loopexit, %bb.e
  %.022 = phi ptr [ %i.v, %bb.e ], [ null, %bb.d ], [ null, %.loopexit ]
  %.01721 = phi i32 [ 0, %bb.e ], [ 7, %bb.d ], [ %i.t, %.loopexit ]
  tail call void @sqlite3_free(ptr noundef nonnull %i.f) #45
  br label %bb.f

bb.f:                                             ; preds = %bb.c, %idxMalloc.exit.thread, %bb.b
  %.1 = phi i32 [ 1, %bb.b ], [ %.01721, %idxMalloc.exit.thread ], [ 7, %bb.c ]
  %.2 = phi ptr [ null, %bb.b ], [ %.022, %idxMalloc.exit.thread ], [ null, %bb.c ]
  store ptr %.2, ptr %4, align 8, !tbaa !879
  ret i32 %.1
}

; Function Attrs: nounwind uwtable
define internal range(i32 0, 8) i32 @expertBestIndex(ptr nofree noundef readonly captures(none) %0, ptr noundef %1) #4 {
bb.a:
  %i.a = tail call ptr @sqlite3_malloc64(i64 noundef 56) #45 ; 8 uses
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %idxMalloc.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(56) %i.a, i8 0, i64 56, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !1092
  store ptr %i.c, ptr %i.a, align 8, !tbaa !1093
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !1090
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 40 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !280
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store ptr %i.g, ptr %i.h, align 8, !tbaa !281
  store ptr %i.a, ptr %i.f, align 8, !tbaa !280
  %i.i = load i32, ptr %1, align 8, !tbaa !881    ; 2 uses
  %i.j = icmp sgt i32 %i.i, 0
  br i1 %i.j, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 40 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 32
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.k
  %i.o = phi i32 [ %i.i, %.lr.ph ], [ %i.bb, %bb.k ] ; 4 uses
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.k ] ; 4 uses
  %.06086 = phi i32 [ 0, %.lr.ph ], [ %.161, %bb.k ] ; 5 uses
  %.07685 = phi i32 [ 0, %.lr.ph ], [ %.177, %bb.k ] ; 6 uses
  %i.p = load ptr, ptr %i.k, align 8, !tbaa !886
  %i.q = getelementptr inbounds nuw [12 x i8], ptr %i.p, i64 %indvars.iv ; 4 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 5
  %i.s = load i8, ptr %i.r, align 1, !tbaa !889
  %.not68 = icmp eq i8 %i.s, 0
  br i1 %.not68, label %bb.k, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.t = load i32, ptr %i.q, align 4, !tbaa !890  ; 2 uses
  %i.u = icmp sgt i32 %i.t, -1
  br i1 %i.u, label %bb.e, label %bb.k

bb.e:                                             ; preds = %bb.d
  %i.v = load ptr, ptr %i.b, align 8, !tbaa !1092
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !258
  %i.y = zext nneg i32 %i.t to i64
  %i.z = getelementptr inbounds nuw [24 x i8], ptr %i.x, i64 %i.y
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %i.ab = load i32, ptr %i.aa, align 8, !tbaa !265
  %i.ac = icmp eq i32 %i.ab, 0
  br i1 %i.ac, label %bb.f, label %bb.k

bb.f:                                             ; preds = %bb.e
  %i.ad = getelementptr inbounds nuw i8, ptr %i.q, i64 4 ; 2 uses
  %i.ae = load i8, ptr %i.ad, align 4, !tbaa !887
  %i.af = and i8 %i.ae, 62
  %.not69 = icmp eq i8 %i.af, 0
  br i1 %.not69, label %bb.k, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ag = trunc nuw nsw i64 %indvars.iv to i32
  %i.ah = tail call ptr @sqlite3_vtab_collation(ptr noundef nonnull %1, i32 noundef %i.ag) #45 ; 2 uses
  %i.ai = tail call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %i.ah) #46
  %sext.i = shl i64 %i.ai, 32                     ; 2 uses
  %i.aj = ashr exact i64 %sext.i, 32
  %i.ak = mul nsw i64 %i.aj, 40
  %i.al = or disjoint i64 %i.ak, 1                ; 2 uses
  %i.am = tail call ptr @sqlite3_malloc64(i64 noundef %i.al) #45 ; 10 uses
  %.not.i.i = icmp eq ptr %i.am, null
  br i1 %.not.i.i, label %idxNewConstraint.exit.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.am, i8 0, i64 %i.al, i1 false)
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 40 ; 2 uses
  store ptr %i.an, ptr %i.am, align 8, !tbaa !1094
  %sext9.i = add i64 %sext.i, 4294967296
  %i.ao = ashr exact i64 %sext9.i, 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.an, ptr nonnull readonly align 1 %i.ah, i64 %i.ao, i1 false)
  %i.ap = load i32, ptr %i.q, align 4, !tbaa !890
  %i.aq = getelementptr inbounds nuw i8, ptr %i.am, i64 12
  store i32 %i.ap, ptr %i.aq, align 4, !tbaa !316
  %i.ar = load i8, ptr %i.ad, align 4, !tbaa !887
  %i.as = icmp eq i8 %i.ar, 2
  br i1 %i.as, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.at = load ptr, ptr %i.m, align 8, !tbaa !288
  %i.au = getelementptr inbounds nuw i8, ptr %i.am, i64 24
  store ptr %i.at, ptr %i.au, align 8, !tbaa !285
  store ptr %i.am, ptr %i.m, align 8, !tbaa !288
  br label %idxNewConstraint.exit.thread

bb.j:                                             ; preds = %bb.h
  %i.av = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  store i32 1, ptr %i.av, align 8, !tbaa !1095
  %i.aw = load ptr, ptr %i.l, align 8, !tbaa !289
  %i.ax = getelementptr inbounds nuw i8, ptr %i.am, i64 24
  store ptr %i.aw, ptr %i.ax, align 8, !tbaa !285
  store ptr %i.am, ptr %i.l, align 8, !tbaa !289
  br label %idxNewConstraint.exit.thread

idxNewConstraint.exit.thread:                     ; preds = %bb.g, %bb.i, %bb.j
  %.683 = phi i32 [ %.07685, %bb.j ], [ %.07685, %bb.i ], [ 7, %bb.g ]
  %i.ay = add nsw i32 %.06086, 1                  ; 2 uses
  %i.az = load ptr, ptr %i.n, align 8, !tbaa !892
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %i.az, i64 %indvars.iv
  store i32 %i.ay, ptr %i.ba, align 4, !tbaa !893
  %.pre = load i32, ptr %1, align 8, !tbaa !881
  br label %bb.k

bb.k:                                             ; preds = %idxNewConstraint.exit.thread, %bb.f, %bb.e, %bb.d, %bb.c
  %i.bb = phi i32 [ %i.o, %bb.c ], [ %i.o, %bb.f ], [ %.pre, %idxNewConstraint.exit.thread ], [ %i.o, %bb.e ], [ %i.o, %bb.d ] ; 2 uses
  %.177 = phi i32 [ %.07685, %bb.c ], [ %.07685, %bb.f ], [ %.683, %idxNewConstraint.exit.thread ], [ %.07685, %bb.e ], [ %.07685, %bb.d ] ; 2 uses
  %.161 = phi i32 [ %.06086, %bb.c ], [ %.06086, %bb.f ], [ %i.ay, %idxNewConstraint.exit.thread ], [ %.06086, %bb.e ], [ %.06086, %bb.d ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.bc = sext i32 %i.bb to i64
  %i.bd = icmp slt i64 %indvars.iv.next, %i.bc
  br i1 %i.bd, label %bb.c, label %._crit_edge, !llvm.loop !1096

._crit_edge:                                      ; preds = %bb.k, %bb.b
  %.076.lcssa = phi i32 [ 0, %bb.b ], [ %.177, %bb.k ] ; 2 uses
  %.060.lcssa = phi i32 [ 0, %bb.b ], [ %.161, %bb.k ] ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bf = load i32, ptr %i.be, align 8, !tbaa !901 ; 2 uses
  %i.bg = icmp sgt i32 %i.bf, 0
  br i1 %i.bg, label %.lr.ph94, label %._crit_edge95

.lr.ph94:                                         ; preds = %._crit_edge
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 2 uses
  %i.bj = zext nneg i32 %i.bf to i64
  br label %bb.l

bb.l:                                             ; preds = %.lr.ph94, %idxNewConstraint.exit75.thread
  %indvars.iv99 = phi i64 [ %i.bj, %.lr.ph94 ], [ %indvars.iv.next100, %idxNewConstraint.exit75.thread ] ; 2 uses
  %.291 = phi i32 [ %.060.lcssa, %.lr.ph94 ], [ %.4, %idxNewConstraint.exit75.thread ] ; 3 uses
  %.27890 = phi i32 [ %.076.lcssa, %.lr.ph94 ], [ %.3, %idxNewConstraint.exit75.thread ] ; 2 uses
  %indvars.iv.next100 = add nsw i64 %indvars.iv99, -1 ; 3 uses
  %i.bk = load ptr, ptr %i.bh, align 8, !tbaa !902
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %i.bk, i64 %indvars.iv.next100
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !903 ; 3 uses
  %i.bn = icmp sgt i32 %i.bm, -1
  br i1 %i.bn, label %bb.m, label %idxNewConstraint.exit75.thread

bb.m:                                             ; preds = %bb.l
  %i.bo = load ptr, ptr %i.b, align 8, !tbaa !1092
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 16
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !258
  %i.br = zext nneg i32 %i.bm to i64
  %i.bs = getelementptr inbounds nuw [24 x i8], ptr %i.bq, i64 %i.br
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 8
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !266 ; 2 uses
  %i.bv = tail call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %i.bu) #46
  %sext.i71 = shl i64 %i.bv, 32                   ; 2 uses
  %i.bw = ashr exact i64 %sext.i71, 32
  %i.bx = mul nsw i64 %i.bw, 40
  %i.by = or disjoint i64 %i.bx, 1                ; 2 uses
  %i.bz = tail call ptr @sqlite3_malloc64(i64 noundef %i.by) #45 ; 9 uses
  %.not.i.i72 = icmp eq ptr %i.bz, null
  br i1 %.not.i.i72, label %idxNewConstraint.exit75.thread, label %bb.n

bb.n:                                             ; preds = %bb.m
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.bz, i8 0, i64 %i.by, i1 false)
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 40 ; 2 uses
  store ptr %i.ca, ptr %i.bz, align 8, !tbaa !1094
  %sext9.i73 = add i64 %sext.i71, 4294967296
  %i.cb = ashr exact i64 %sext9.i73, 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ca, ptr nonnull readonly align 1 %i.bu, i64 %i.cb, i1 false)
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bz, i64 12
  store i32 %i.bm, ptr %i.cc, align 4, !tbaa !316
  %i.cd = load ptr, ptr %i.bh, align 8, !tbaa !902
  %i.ce = getelementptr inbounds nuw [8 x i8], ptr %i.cd, i64 %indvars.iv.next100
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 4
  %i.cg = load i8, ptr %i.cf, align 4, !tbaa !905
  %i.ch = zext i8 %i.cg to i32
  %i.ci = getelementptr inbounds nuw i8, ptr %i.bz, i64 20
  store i32 %i.ch, ptr %i.ci, align 4, !tbaa !1097
  %i.cj = load ptr, ptr %i.bi, align 8, !tbaa !284 ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.bz, i64 24
  store ptr %i.cj, ptr %i.ck, align 8, !tbaa !285
  %i.cl = getelementptr inbounds nuw i8, ptr %i.bz, i64 32
  store ptr %i.cj, ptr %i.cl, align 8, !tbaa !317
  store ptr %i.bz, ptr %i.bi, align 8, !tbaa !284
  %i.cm = add nsw i32 %.291, 1
  br label %idxNewConstraint.exit75.thread

idxNewConstraint.exit75.thread:                   ; preds = %bb.m, %bb.n, %bb.l
  %.3 = phi i32 [ %.27890, %bb.l ], [ %.27890, %bb.n ], [ 7, %bb.m ] ; 2 uses
  %.4 = phi i32 [ %.291, %bb.l ], [ %i.cm, %bb.n ], [ %.291, %bb.m ] ; 2 uses
  %i.cn = icmp samesign ugt i64 %indvars.iv99, 1
  br i1 %i.cn, label %bb.l, label %._crit_edge95, !llvm.loop !1098

._crit_edge95:                                    ; preds = %idxNewConstraint.exit75.thread, %._crit_edge
  %.278.lcssa = phi i32 [ %.076.lcssa, %._crit_edge ], [ %.3, %idxNewConstraint.exit75.thread ]
  %.2.lcssa = phi i32 [ %.060.lcssa, %._crit_edge ], [ %.4, %idxNewConstraint.exit75.thread ]
  %i.co = add nsw i32 %.2.lcssa, 1
  %i.cp = sitofp i32 %i.co to double
  br label %idxMalloc.exit.thread

idxMalloc.exit.thread:                            ; preds = %bb.a, %._crit_edge95
  %.479 = phi i32 [ %.278.lcssa, %._crit_edge95 ], [ 7, %bb.a ]
  %.5 = phi double [ %i.cp, %._crit_edge95 ], [ 1.000000e+00, %bb.a ]
  %i.cq = fdiv double 1.000000e+06, %.5
  %i.cr = getelementptr inbounds nuw i8, ptr %1, i64 64
  store double %i.cq, ptr %i.cr, align 8, !tbaa !899
  ret i32 %.479
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @expertDisconnect(ptr noundef %0) #4 {
bb.a:
  tail call void @sqlite3_free(ptr noundef %0) #45
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal range(i32 0, 8) i32 @expertOpen(ptr nofree readnone captures(none) %0, ptr nofree noundef writeonly captures(none) initializes((0, 8)) %1) #4 {
bb.a:
  %i.a = tail call ptr @sqlite3_malloc64(i64 noundef 16) #45 ; 3 uses
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %idxMalloc.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  br label %idxMalloc.exit

idxMalloc.exit:                                   ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ 0, %bb.b ], [ 7, %bb.a ]
  store ptr %i.a, ptr %1, align 8, !tbaa !909
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @expertClose(ptr noundef %0) #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1099
  %i.c = tail call i32 @sqlite3_finalize(ptr noundef %i.b) #45 ; 0 uses
  tail call void @sqlite3_free(ptr noundef %0) #45
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal i32 @expertFilter(ptr noundef %0, i32 %1, ptr nofree readnone captures(none) %2, i32 %3, ptr nofree readnone captures(none) %4) #4 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !1010   ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !1090
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 6 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !1099
  %i.f = tail call i32 @sqlite3_finalize(ptr noundef %i.e) #45 ; 2 uses
  store ptr null, ptr %i.d, align 8, !tbaa !1099
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %bb.b, label %expertNext.exit

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !245
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !1092
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !267
  %i.o = tail call i32 (ptr, ptr, ptr, ptr, ...) @idxPrintfPrepareStmt(ptr noundef %i.i, ptr noundef nonnull %i.d, ptr noundef nonnull %i.j, ptr noundef nonnull @.str.401, ptr noundef %i.n) ; 2 uses
  %i.p = icmp eq i32 %i.o, 0
  br i1 %i.p, label %bb.c, label %expertNext.exit

bb.c:                                             ; preds = %bb.b
  %i.q = load ptr, ptr %i.d, align 8, !tbaa !1099
  %i.r = tail call i32 @sqlite3_step(ptr noundef %i.q) #45
  %.not.i = icmp eq i32 %i.r, 100
  br i1 %.not.i, label %expertNext.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.s = load ptr, ptr %i.d, align 8, !tbaa !1099
  %i.t = tail call i32 @sqlite3_finalize(ptr noundef %i.s) #45
  store ptr null, ptr %i.d, align 8, !tbaa !1099
  br label %expertNext.exit

expertNext.exit:                                  ; preds = %bb.a, %bb.d, %bb.c, %bb.b
  %.1 = phi i32 [ 0, %bb.c ], [ %i.o, %bb.b ], [ %i.t, %bb.d ], [ %i.f, %bb.a ]
  ret i32 %.1
}

; Function Attrs: nounwind uwtable
define internal i32 @expertNext(ptr nofree noundef captures(none) %0) #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1099
  %i.c = tail call i32 @sqlite3_step(ptr noundef %i.b) #45
  %.not = icmp eq i32 %i.c, 100
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !1099
  %i.e = tail call i32 @sqlite3_finalize(ptr noundef %i.d) #45
  store ptr null, ptr %i.a, align 8, !tbaa !1099
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ %i.e, %bb.b ], [ 0, %bb.a ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal range(i32 0, 2) i32 @expertEof(ptr nofree noundef readonly captures(none) %0) #14 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1099
  %i.c = icmp eq ptr %i.b, null
  %i.d = zext i1 %i.c to i32
  ret i32 %i.d
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @expertColumn(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, i32 noundef %2) #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1099
  %i.c = tail call ptr @sqlite3_column_value(ptr noundef %i.b, i32 noundef %2) #45 ; 2 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @sqlite3_result_value(ptr noundef %1, ptr noundef nonnull %i.c) #45
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define internal noundef i32 @expertRowid(ptr nofree readnone captures(none) %0, ptr nofree noundef writeonly captures(none) initializes((0, 8)) %1) #35 {
bb.a:
  store i64 0, ptr %1, align 8, !tbaa !159
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef i32 @expertUpdate(ptr nofree readnone captures(none) %0, i32 %1, ptr nofree readnone captures(none) %2, ptr nofree readnone captures(none) %3) #8 {
bb.a:
  ret i32 0
}

declare ptr @sqlite3_vtab_collation(ptr noundef, i32 noundef) local_unnamed_addr #5

declare i32 @sqlite3_table_column_metadata(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define internal fastcc i32 @idxCreateFromCons(ptr nofree noundef captures(none) %0, ptr nofree noundef nonnull readonly captures(none) %1, ptr nofree noundef captures(address_is_null) %2, ptr nofree noundef readonly captures(address) %3) unnamed_addr #4 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 10 uses
  %i.b = alloca ptr, align 8                      ; 13 uses
  %i.c = alloca i32, align 4                      ; 14 uses
  %i.d = alloca i32, align 4                      ; 9 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !254  ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #45
  %i.g = icmp ne ptr %2, null
  %i.h = icmp ne ptr %3, null
  %or.cond = or i1 %i.g, %i.h
  br i1 %or.cond, label %bb.b, label %bb.ad

bb.b:                                             ; preds = %bb.a
  %.val = load ptr, ptr %1, align 8, !tbaa !1093
  %i.i = getelementptr i8, ptr %.val, i64 8
  %.val.val = load ptr, ptr %i.i, align 8, !tbaa !267
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #45
end_hunk_6
begin_hunk_7_@idxAppendColDefn:bb.a
bb.g:                                             ; preds = %.preheader.i34
  %i.ab = add i8 %i.aa, -48
  %or.cond.i37 = icmp ult i8 %i.ab, 10
  %i.ac = and i8 %i.aa, -33
  %i.ad = add i8 %i.ac, -65
  %i.ae = icmp ult i8 %i.ad, 26
  %or.cond29.i38 = or i1 %or.cond.i37, %i.ae
  br i1 %or.cond29.i38, label %bb.h, label %.sink.split

bb.h:                                             ; preds = %bb.g, %.preheader.i34
  %indvars.iv.next.i36 = add nuw nsw i64 %indvars.iv.i35, 1
  br label %.preheader.i34, !llvm.loop !1108

.sink.split:                                      ; preds = %.preheader.i34, %bb.g, %bb.f
  %.str.419.sink = phi ptr [ @.str.419, %bb.f ], [ @.str.419, %bb.g ], [ @.str.420, %.preheader.i34 ]
  %i.af = load ptr, ptr %2, align 8, !tbaa !1094
  %i.ag = tail call ptr (ptr, ptr, ptr, ...) @idxAppendText(ptr noundef %0, ptr noundef %i.q, ptr noundef nonnull %.str.419.sink, ptr noundef %i.af)
  br label %bb.i

bb.i:                                             ; preds = %.sink.split, %.loopexit5
  %.2 = phi ptr [ %i.q, %.loopexit5 ], [ %i.ag, %.sink.split ] ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 20
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !1097
  %.not31 = icmp eq i32 %i.ai, 0
  br i1 %.not31, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.aj = tail call ptr (ptr, ptr, ptr, ...) @idxAppendText(ptr noundef %0, ptr noundef %.2, ptr noundef nonnull @.str.421)
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.3 = phi ptr [ %i.aj, %bb.j ], [ %.2, %bb.i ]
  ret ptr %.3
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal noundef i32 @countNonzeros(ptr nofree noundef captures(none) %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2, ptr nofree readnone captures(none) %3) #33 {
bb.a:
  %i.a = icmp sgt i32 %1, 0
  br i1 %i.a, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %2, align 8, !tbaa !66     ; 2 uses
  %i.c = load i8, ptr %i.b, align 1, !tbaa !16
  %.not = icmp eq i8 %i.c, 48
  br i1 %.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  %i.e = load i8, ptr %i.d, align 1, !tbaa !16
  %.not3 = icmp eq i8 %i.e, 0
  br i1 %.not3, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.f = load i32, ptr %0, align 4, !tbaa !17
  %i.g = add nsw i32 %i.f, 1
  store i32 %i.g, ptr %0, align 4, !tbaa !17
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.a
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal fastcc void @idxHashAdd(ptr nofree noundef nonnull writeonly captures(none) %0, ptr nofree noundef captures(none) %1, ptr nofree noundef nonnull readonly captures(none) %2, ptr nofree noundef readonly captures(address_is_null) %3) unnamed_addr #4 {
bb.a:
  %i.a = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #46 ; 5 uses
  %i.b = trunc i64 %i.a to i32                    ; 2 uses
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %.lr.ph.preheader.i, label %idxHashString.exit

.lr.ph.preheader.i:                               ; preds = %bb.a
  %wide.trip.count.i = and i64 %i.a, 2147483647
  %i.d = add nsw i64 %wide.trip.count.i, -1
  %xtraiter = and i64 %i.a, 3                     ; 3 uses
  %i.e = icmp ult i64 %i.d, 3
  br i1 %i.e, label %.lr.ph.i.epil.preheader, label %.lr.ph.preheader.i.new

.lr.ph.preheader.i.new:                           ; preds = %.lr.ph.preheader.i
  %unroll_iter = and i64 %i.a, 2147483644
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.preheader.i.new
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.preheader.i.new ], [ %indvars.iv.next.i.3, %.lr.ph.i ] ; 5 uses
  %.078.i = phi i32 [ 0, %.lr.ph.preheader.i.new ], [ %i.ab, %.lr.ph.i ]
  %niter = phi i64 [ 0, %.lr.ph.preheader.i.new ], [ %niter.next.3, %.lr.ph.i ]
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 %indvars.iv.i
  %i.g = load i8, ptr %i.f, align 1, !tbaa !16
  %i.h = zext i8 %i.g to i32
  %i.i = mul i32 %.078.i, 9
  %i.j = add i32 %i.i, %i.h
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 %indvars.iv.i
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 1
  %i.m = load i8, ptr %i.l, align 1, !tbaa !16
  %i.n = zext i8 %i.m to i32
  %i.o = mul i32 %i.j, 9
  %i.p = add i32 %i.o, %i.n
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 %indvars.iv.i
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 2
  %i.s = load i8, ptr %i.r, align 1, !tbaa !16
  %i.t = zext i8 %i.s to i32
  %i.u = mul i32 %i.p, 9
  %i.v = add i32 %i.u, %i.t
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 %indvars.iv.i
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 3
  %i.y = load i8, ptr %i.x, align 1, !tbaa !16
  %i.z = zext i8 %i.y to i32
  %i.aa = mul i32 %i.v, 9
  %i.ab = add i32 %i.aa, %i.z                     ; 3 uses
  %indvars.iv.next.i.3 = add nuw nsw i64 %indvars.iv.i, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.loopexit.i.unr-lcssa, label %.lr.ph.i, !llvm.loop !337

._crit_edge.loopexit.i.unr-lcssa:                 ; preds = %.lr.ph.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.loopexit.i, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %._crit_edge.loopexit.i.unr-lcssa, %.lr.ph.preheader.i
  %indvars.iv.i.epil.init = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i.3, %._crit_edge.loopexit.i.unr-lcssa ]
  %.078.i.epil.init = phi i32 [ 0, %.lr.ph.preheader.i ], [ %i.ab, %._crit_edge.loopexit.i.unr-lcssa ]
  %lcmp.mod2 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod2)
  br label %.lr.ph.i.epil

.lr.ph.i.epil:                                    ; preds = %.lr.ph.i.epil, %.lr.ph.i.epil.preheader
  %indvars.iv.i.epil = phi i64 [ %indvars.iv.i.epil.init, %.lr.ph.i.epil.preheader ], [ %indvars.iv.next.i.epil, %.lr.ph.i.epil ] ; 2 uses
  %.078.i.epil = phi i32 [ %.078.i.epil.init, %.lr.ph.i.epil.preheader ], [ %i.ag, %.lr.ph.i.epil ]
  %epil.iter = phi i64 [ 0, %.lr.ph.i.epil.preheader ], [ %epil.iter.next, %.lr.ph.i.epil ]
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 %indvars.iv.i.epil
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !16
  %i.ae = zext i8 %i.ad to i32
  %i.af = mul i32 %.078.i.epil, 9
  %i.ag = add i32 %i.af, %i.ae                    ; 2 uses
  %indvars.iv.next.i.epil = add nuw nsw i64 %indvars.iv.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge.loopexit.i, label %.lr.ph.i.epil, !llvm.loop !1112

._crit_edge.loopexit.i:                           ; preds = %.lr.ph.i.epil, %._crit_edge.loopexit.i.unr-lcssa
  %.lcssa = phi i32 [ %i.ab, %._crit_edge.loopexit.i.unr-lcssa ], [ %i.ag, %.lr.ph.i.epil ]
  %i.ah = urem i32 %.lcssa, 1023
  %i.ai = zext nneg i32 %i.ah to i64
  br label %idxHashString.exit

idxHashString.exit:                               ; preds = %bb.a, %._crit_edge.loopexit.i
  %.07.lcssa.i = phi i64 [ 0, %bb.a ], [ %i.ai, %._crit_edge.loopexit.i ]
  %.not = icmp eq ptr %3, null                    ; 2 uses
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %idxHashString.exit
  %i.aj = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %3) #46
  %sext45 = shl i64 %i.aj, 32
  %i.ak = ashr exact i64 %sext45, 32
  br label %bb.c

bb.c:                                             ; preds = %idxHashString.exit, %bb.b
  %i.al = phi i64 [ %i.ak, %bb.b ], [ 0, %idxHashString.exit ] ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.am, i64 %.07.lcssa.i ; 3 uses
  %.049 = load ptr, ptr %i.an, align 8, !tbaa !299 ; 2 uses
  %.not4450 = icmp eq ptr %.049, null
  %.pre = shl i64 %i.a, 32                        ; 2 uses
  %.pre52 = ashr exact i64 %.pre, 32              ; 3 uses
  br i1 %.not4450, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c, %bb.e
  %.051 = phi ptr [ %.0, %bb.e ], [ %.049, %bb.c ] ; 2 uses
  %i.ao = load ptr, ptr %.051, align 8, !tbaa !339 ; 2 uses
  %i.ap = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.ao) #46
  %i.aq = trunc i64 %i.ap to i32
  %i.ar = icmp eq i32 %i.aq, %i.b
  br i1 %i.ar, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.lr.ph
  %bcmp = tail call i32 @bcmp(ptr nonnull %i.ao, ptr nonnull %2, i64 %.pre52)
  %i.as = icmp eq i32 %bcmp, 0
  br i1 %i.as, label %.loopexit, label %bb.e

bb.e:                                             ; preds = %.lr.ph, %bb.d
  %i.at = getelementptr inbounds nuw i8, ptr %.051, i64 24
  %.0 = load ptr, ptr %i.at, align 8, !tbaa !299  ; 2 uses
  %.not44 = icmp eq ptr %.0, null
  br i1 %.not44, label %._crit_edge, label %.lr.ph, !llvm.loop !351

._crit_edge:                                      ; preds = %bb.e, %bb.c
  %i.au = add nsw i64 %.pre52, 42
  %i.av = add nsw i64 %i.au, %i.al                ; 2 uses
  %i.aw = tail call ptr @sqlite3_malloc64(i64 noundef %i.av) #45 ; 9 uses
  %.not.i = icmp eq ptr %i.aw, null
  br i1 %.not.i, label %idxMalloc.exit.thread, label %bb.f

idxMalloc.exit.thread:                            ; preds = %._crit_edge
  store i32 7, ptr %0, align 4, !tbaa !17
  br label %.loopexit

bb.f:                                             ; preds = %._crit_edge
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.aw, i8 0, i64 %i.av, i1 false)
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 40 ; 3 uses
  store ptr %i.ax, ptr %i.aw, align 8, !tbaa !339
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ax, ptr nonnull align 1 %2, i64 %.pre52, i1 false)
  br i1 %.not, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %sext47 = add i64 %.pre, 4294967296
  %i.ay = ashr exact i64 %sext47, 32
  %i.az = getelementptr inbounds i8, ptr %i.ax, i64 %i.ay ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  store ptr %i.az, ptr %i.ba, align 8, !tbaa !344
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.az, ptr nonnull align 1 %3, i64 %i.al, i1 false)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.bb = load ptr, ptr %i.an, align 8, !tbaa !299
  %i.bc = getelementptr inbounds nuw i8, ptr %i.aw, i64 24
  store ptr %i.bb, ptr %i.bc, align 8, !tbaa !300
  store ptr %i.aw, ptr %i.an, align 8, !tbaa !299
  %i.bd = load ptr, ptr %1, align 8, !tbaa !1113
  %i.be = getelementptr inbounds nuw i8, ptr %i.aw, i64 32
  store ptr %i.bd, ptr %i.be, align 8, !tbaa !352
  store ptr %i.aw, ptr %1, align 8, !tbaa !1113
  br label %.loopexit

.loopexit:                                        ; preds = %bb.d, %idxMalloc.exit.thread, %bb.h
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @idxRemFunc(ptr noundef %0, i32 %1, ptr nofree noundef readonly captures(none) %2) #4 {
bb.a:
  %i.a = tail call ptr @sqlite3_user_data(ptr noundef %0) #45
  %i.b = load ptr, ptr %2, align 8, !tbaa !154
  %i.c = tail call i32 @sqlite3_value_int(ptr noundef %i.b) #45
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.e = sext i32 %i.c to i64
  %i.f = getelementptr inbounds [48 x i8], ptr %i.d, i64 %i.e ; 16 uses
  %i.g = load i32, ptr %i.f, align 8, !tbaa !1114
  switch i32 %i.g, label %bb.f [
    i32 3, label %bb.e
    i32 1, label %bb.b
    i32 2, label %bb.c
    i32 4, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.i = load i64, ptr %i.h, align 8, !tbaa !1115
  tail call void @sqlite3_result_int64(ptr noundef %0, i64 noundef %i.i) #45
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.k = load double, ptr %i.j, align 8, !tbaa !1116
  tail call void @sqlite3_result_double(ptr noundef %0, double noundef %i.k) #45
  br label %bb.f

bb.d:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !341
  %i.n = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %i.o = load i64, ptr %i.n, align 8, !tbaa !1117
  %i.p = trunc i64 %i.o to i32
  tail call void @sqlite3_result_blob(ptr noundef %0, ptr noundef %i.m, i32 noundef %i.p, ptr noundef nonnull inttoptr (i64 -1 to ptr)) #45
  br label %bb.f

bb.e:                                             ; preds = %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !341
  %i.s = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %i.t = load i64, ptr %i.s, align 8, !tbaa !1117
  %i.u = trunc i64 %i.t to i32
  tail call void @sqlite3_result_text(ptr noundef %0, ptr noundef %i.r, i32 noundef %i.u, ptr noundef nonnull inttoptr (i64 -1 to ptr)) #45
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c, %bb.b, %bb.a
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 5 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !154
  %i.x = tail call i32 @sqlite3_value_type(ptr noundef %i.w) #45 ; 2 uses
  store i32 %i.x, ptr %i.f, align 8, !tbaa !1114
  switch i32 %i.x, label %.critedge [
    i32 3, label %bb.i
    i32 1, label %bb.g
    i32 2, label %bb.h
    i32 4, label %bb.i
  ]

bb.g:                                             ; preds = %bb.f
  %i.y = load ptr, ptr %i.v, align 8, !tbaa !154
  %i.z = tail call i64 @sqlite3_value_int64(ptr noundef %i.y) #45
  %i.aa = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store i64 %i.z, ptr %i.aa, align 8, !tbaa !1115
  br label %.critedge

bb.h:                                             ; preds = %bb.f
  %i.ab = load ptr, ptr %i.v, align 8, !tbaa !154
  %i.ac = tail call double @sqlite3_value_double(ptr noundef %i.ab) #45
  %i.ad = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store double %i.ac, ptr %i.ad, align 8, !tbaa !1116
  br label %.critedge

bb.i:                                             ; preds = %bb.f, %bb.f
  %i.ae = load ptr, ptr %i.v, align 8, !tbaa !154
  %i.af = tail call i32 @sqlite3_value_bytes(ptr noundef %i.ae) #45
  %i.ag = sext i32 %i.af to i64                   ; 5 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.f, i64 24 ; 2 uses
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !1118
  %i.aj = icmp slt i64 %i.ai, %i.ag
  br i1 %i.aj, label %bb.j, label %bb.l

bb.j:                                             ; preds = %bb.i
  %i.ak = getelementptr inbounds nuw i8, ptr %i.f, i64 40 ; 2 uses
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !341
  %i.am = shl nsw i64 %i.ag, 1                    ; 2 uses
  %i.an = tail call ptr @sqlite3_realloc64(ptr noundef %i.al, i64 noundef %i.am) #45 ; 2 uses
  %.not = icmp eq ptr %i.an, null
  br i1 %.not, label %.thread, label %bb.k

.thread:                                          ; preds = %bb.j
  tail call void @sqlite3_result_error_nomem(ptr noundef %0) #45
  br label %.critedge

bb.k:                                             ; preds = %bb.j
  store i64 %i.am, ptr %i.ah, align 8, !tbaa !1118
  store ptr %i.an, ptr %i.ak, align 8, !tbaa !341
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.i
  %i.ao = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  store i64 %i.ag, ptr %i.ao, align 8, !tbaa !1117
  %i.ap = load i32, ptr %i.f, align 8, !tbaa !1114
  %i.aq = icmp eq i32 %i.ap, 4
  %i.ar = load ptr, ptr %i.v, align 8, !tbaa !154 ; 2 uses
  br i1 %i.aq, label %bb.m, label %bb.o

bb.m:                                             ; preds = %bb.l
  %i.as = tail call ptr @sqlite3_value_blob(ptr noundef %i.ar) #45 ; 2 uses
  %.not50 = icmp eq ptr %i.as, null
  br i1 %.not50, label %.critedge, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.at = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !341
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.au, ptr nonnull align 1 %i.as, i64 %i.ag, i1 false)
  br label %.critedge

bb.o:                                             ; preds = %bb.l
  %i.av = tail call ptr @sqlite3_value_text(ptr noundef %i.ar) #45
  %i.aw = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !341
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ax, ptr align 1 %i.av, i64 %i.ag, i1 false)
  br label %.critedge

.critedge:                                        ; preds = %.thread, %bb.f, %bb.g, %bb.h, %bb.o, %bb.n, %bb.m
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @idxSampleFunc(ptr noundef %0, i32 %1, ptr nofree readnone captures(none) %2) #4 {
bb.a:
  %i.a = alloca i16, align 2                      ; 4 uses
  %i.b = tail call ptr @sqlite3_user_data(ptr noundef %0) #45 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 3 uses
  %i.d = load double, ptr %i.c, align 8, !tbaa !1119 ; 2 uses
  %i.e = fcmp oeq double %i.d, 0.000000e+00
  br i1 %i.e, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.g = load double, ptr %i.f, align 8, !tbaa !1120
  %i.h = fdiv double %i.g, %i.d
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.j = load double, ptr %i.i, align 8, !tbaa !326
  %i.k = fcmp ugt double %i.h, %i.j
  br i1 %i.k, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #45
  call void @sqlite3_randomness(i32 noundef 2, ptr noundef nonnull %i.a) #45
  %i.l = load i16, ptr %i.a, align 2, !tbaa !84
  %i.m = urem i16 %i.l, 100
  %i.n = zext nneg i16 %i.m to i32
  %i.o = load i32, ptr %i.b, align 8, !tbaa !329
  %i.p = icmp sge i32 %i.o, %i.n
  %i.q = zext i1 %i.p to i32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #45
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.b, %bb.c
  %.0 = phi i32 [ 1, %bb.b ], [ %i.q, %bb.c ], [ 1, %bb.a ] ; 2 uses
  call void @sqlite3_result_int(ptr noundef %0, i32 noundef %.0) #45
  %i.r = uitofp nneg i32 %.0 to double
  %i.s = load <2 x double>, ptr %i.c, align 8, !tbaa !436
  %i.t = insertelement <2 x double> <double 1.000000e+00, double poison>, double %i.r, i64 1
  %i.u = fadd <2 x double> %i.s, %i.t
  store <2 x double> %i.u, ptr %i.c, align 8, !tbaa !436
  ret void
}

declare void @sqlite3_randomness(i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
end_hunk_7
