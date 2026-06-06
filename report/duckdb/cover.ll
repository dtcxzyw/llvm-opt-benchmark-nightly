inline.NumInlined: 67
inline.NumDeleted: 19
begin_hunk_0_@_ZN11duckdb_zstd17COVER_best_finishEPNS_12COVER_best_sENS_20ZDICT_cover_params_tENS_19COVER_dictSelectionE:bb.a

bb.h:                                             ; preds = %bb.g
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.s, ptr nonnull align 1 %i.a, i64 %i.e, i1 false)
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %i.e, ptr %i.t, align 8, !tbaa !85
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.u, ptr noundef nonnull align 8 dereferenceable(48) %1, i64 48, i1 false), !tbaa.struct !86
  store i64 %i.c, ptr %i.i, align 8, !tbaa !77
  br label %bb.i

bb.i:                                             ; preds = %bb.f, %bb.g, %bb.h, %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @_ZN11duckdb_zstd24COVER_dictSelectionErrorEm(ptr dead_on_unwind noalias nofree writable writeonly sret(%"struct.duckdb_zstd::COVER_dictSelection") align 8 captures(none) initializes((0, 24)) %0, i64 noundef %1) local_unnamed_addr #10 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  store i64 %1, ptr %i.a, align 8, !tbaa !83, !alias.scope !88
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef range(i32 0, 2) i32 @_ZN11duckdb_zstd26COVER_dictSelectionIsErrorENS_19COVER_dictSelectionE(ptr nofree noundef readonly byval(%"struct.duckdb_zstd::COVER_dictSelection") align 8 captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i64, ptr %i.a, align 8, !tbaa !83
  %i.c = icmp ugt i64 %i.b, -120
  %i.d = load ptr, ptr %0, align 8
  %.not1 = icmp eq ptr %i.d, null
  %narrow = select i1 %i.c, i1 true, i1 %.not1
  %i.e = zext i1 %narrow to i32
  ret i32 %i.e
}

; Function Attrs: mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable
define void @_ZN11duckdb_zstd23COVER_dictSelectionFreeENS_19COVER_dictSelectionE(ptr nofree noundef readonly byval(%"struct.duckdb_zstd::COVER_dictSelection") align 8 captures(none) %0) local_unnamed_addr #12 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !81
  tail call void @free(ptr noundef %i.a) #23
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN11duckdb_zstd16COVER_selectDictEPhmmPKhPKmjmmNS_20ZDICT_cover_params_tEPmm(ptr dead_on_unwind noalias nofree writable writeonly sret(%"struct.duckdb_zstd::COVER_dictSelection") align 8 captures(none) %0, ptr noundef %1, i64 noundef %2, i64 noundef %3, ptr noundef %4, ptr noundef %5, i32 noundef %6, i64 noundef %7, i64 noundef %8, ptr nofree noundef readonly byval(%"struct.duckdb_zstd::ZDICT_cover_params_t") align 8 captures(none) %9, ptr nofree noundef readonly captures(none) %10, i64 %11) local_unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 %3
  %i.b = tail call noalias ptr @malloc(i64 noundef %2) #25 ; 13 uses
  %i.c = tail call noalias ptr @malloc(i64 noundef %2) #25 ; 12 uses
  %i.d = getelementptr inbounds nuw i8, ptr %9, i64 28
  %i.e = load i32, ptr %i.d, align 4, !tbaa !91
  %i.f = uitofp i32 %i.e to double
  %i.g = fdiv nnan double %i.f, 1.000000e+02
  %i.h = fadd nnan double %i.g, 1.000000e+00
  %i.i = icmp ne ptr %i.b, null
  %i.j = icmp ne ptr %i.c, null
  %or.cond = and i1 %i.i, %i.j
  br i1 %or.cond, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @free(ptr noundef %i.b) #23
  tail call void @free(ptr noundef %i.c) #23
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false), !alias.scope !92
  store i64 %3, ptr %i.k, align 8, !tbaa !83, !alias.scope !95
  br label %bb.p

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.b, ptr align 1 %1, i64 %3, i1 false)
  %i.l = getelementptr inbounds nuw i8, ptr %9, i64 32 ; 2 uses
  %i.m = tail call noundef i64 @_ZN11duckdb_zstd24ZDICT_finalizeDictionaryEPvmPKvmS2_PKmjNS_14ZDICT_params_tE(ptr noundef nonnull %i.b, i64 noundef %2, ptr noundef %1, i64 noundef %3, ptr noundef %4, ptr noundef %5, i32 noundef %6, ptr noundef nonnull byval(%"struct.duckdb_zstd::ZDICT_params_t") align 8 %i.l) ; 8 uses
  %i.n = tail call noundef i32 @_ZN11duckdb_zstd13ZDICT_isErrorEm(i64 noundef %i.m)
  %.not = icmp eq i32 %i.n, 0
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @free(ptr noundef nonnull %i.b) #23
  tail call void @free(ptr noundef nonnull %i.c) #23
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false), !alias.scope !98
  store i64 %i.m, ptr %i.o, align 8, !tbaa !83, !alias.scope !101
  br label %bb.p

bb.e:                                             ; preds = %bb.c
  %i.p = tail call noundef i64 @_ZN11duckdb_zstd30COVER_checkTotalCompressedSizeENS_20ZDICT_cover_params_tEPKmPKhPmmmPhm(ptr noundef nonnull byval(%"struct.duckdb_zstd::ZDICT_cover_params_t") align 8 %9, ptr noundef %5, ptr noundef %4, ptr noundef %10, i64 noundef %7, i64 noundef %8, ptr noundef nonnull %i.b, i64 noundef %i.m) ; 5 uses
  %i.q = icmp ult i64 %i.p, -119
  br i1 %i.q, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @free(ptr noundef nonnull %i.b) #23
  tail call void @free(ptr noundef nonnull %i.c) #23
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false), !alias.scope !104
  store i64 %i.p, ptr %i.r, align 8, !tbaa !83, !alias.scope !107
  br label %bb.p

bb.g:                                             ; preds = %bb.e
  %i.s = getelementptr inbounds nuw i8, ptr %9, i64 24
  %i.t = load i32, ptr %i.s, align 8, !tbaa !110
  %i.u = icmp eq i32 %i.t, 0
  br i1 %i.u, label %bb.h, label %.preheader

.preheader:                                       ; preds = %bb.g
  %i.v = icmp ugt i64 %i.m, 256
  br i1 %i.v, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader
  %i.w = uitofp i64 %i.p to double
  %i.x = fmul double %i.h, %i.w
  br label %bb.i

bb.h:                                             ; preds = %bb.g
  tail call void @free(ptr noundef nonnull %i.c) #23
  store ptr %i.b, ptr %0, align 8, !tbaa !81, !alias.scope !111
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.m, ptr %i.y, align 8, !tbaa !84, !alias.scope !111
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.p, ptr %i.z, align 8, !tbaa !83, !alias.scope !111
  br label %bb.p

bb.i:                                             ; preds = %.lr.ph, %bb.o
  %.092 = phi i64 [ 256, %.lr.ph ], [ %i.am, %bb.o ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.c, ptr nonnull align 1 %i.b, i64 %i.m, i1 false)
  %i.aa = sub i64 0, %.092
  %i.ab = getelementptr inbounds i8, ptr %i.a, i64 %i.aa
  %i.ac = tail call noundef i64 @_ZN11duckdb_zstd24ZDICT_finalizeDictionaryEPvmPKvmS2_PKmjNS_14ZDICT_params_tE(ptr noundef nonnull %i.c, i64 noundef %2, ptr noundef %i.ab, i64 noundef %.092, ptr noundef %4, ptr noundef %5, i32 noundef %6, ptr noundef nonnull byval(%"struct.duckdb_zstd::ZDICT_params_t") align 8 %i.l) ; 5 uses
  %i.ad = tail call noundef i32 @_ZN11duckdb_zstd13ZDICT_isErrorEm(i64 noundef %i.ac)
  %.not86 = icmp eq i32 %i.ad, 0
  br i1 %.not86, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  tail call void @free(ptr noundef %i.b) #23
  tail call void @free(ptr noundef nonnull %i.c) #23
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false), !alias.scope !114
  store i64 %i.ac, ptr %i.ae, align 8, !tbaa !83, !alias.scope !117
  br label %bb.p

bb.k:                                             ; preds = %bb.i
  %i.af = tail call noundef i64 @_ZN11duckdb_zstd30COVER_checkTotalCompressedSizeENS_20ZDICT_cover_params_tEPKmPKhPmmmPhm(ptr noundef nonnull byval(%"struct.duckdb_zstd::ZDICT_cover_params_t") align 8 %9, ptr noundef %5, ptr noundef %4, ptr noundef %10, i64 noundef %7, i64 noundef %8, ptr noundef nonnull %i.c, i64 noundef %i.ac) ; 4 uses
  %i.ag = icmp ult i64 %i.af, -119
  br i1 %i.ag, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  tail call void @free(ptr noundef %i.b) #23
  tail call void @free(ptr noundef nonnull %i.c) #23
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false), !alias.scope !120
  store i64 %i.af, ptr %i.ah, align 8, !tbaa !83, !alias.scope !123
  br label %bb.p

bb.m:                                             ; preds = %bb.k
  %i.ai = uitofp i64 %i.af to double
  %i.aj = fcmp ult double %i.x, %i.ai
  br i1 %i.aj, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  tail call void @free(ptr noundef %i.b) #23
  store ptr %i.c, ptr %0, align 8, !tbaa !81, !alias.scope !126
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.ac, ptr %i.ak, align 8, !tbaa !84, !alias.scope !126
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.af, ptr %i.al, align 8, !tbaa !83, !alias.scope !126
  br label %bb.p

bb.o:                                             ; preds = %bb.m
  %i.am = shl i64 %i.ac, 1                        ; 2 uses
  %i.an = icmp ult i64 %i.am, %i.m
  br i1 %i.an, label %bb.i, label %._crit_edge, !llvm.loop !129

._crit_edge:                                      ; preds = %bb.o, %.preheader
  tail call void @free(ptr noundef nonnull %i.c) #23
  store ptr %i.b, ptr %0, align 8, !tbaa !81, !alias.scope !130
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.m, ptr %i.ao, align 8, !tbaa !84, !alias.scope !130
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.p, ptr %i.ap, align 8, !tbaa !83, !alias.scope !130
  br label %bb.p

bb.p:                                             ; preds = %._crit_edge, %bb.n, %bb.l, %bb.j, %bb.h, %bb.f, %bb.d, %bb.b
  ret void
}

declare noundef i32 @_ZN11duckdb_zstd13ZDICT_isErrorEm(i64 noundef) local_unnamed_addr #7

; Function Attrs: mustprogress uwtable
define noundef i64 @_ZN11duckdb_zstd35ZDICT_optimizeTrainFromBuffer_coverEPvmPKvPKmjPNS_20ZDICT_cover_params_tE(ptr nofree noundef writeonly captures(none) %0, i64 noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, ptr nofree noundef captures(none) %5) local_unnamed_addr #5 {
bb.a:
  %6 = alloca %"struct.duckdb_zstd::COVER_best_s", align 8 ; 11 uses
  %7 = alloca %"struct.duckdb_zstd::COVER_ctx_t", align 8 ; 10 uses
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 12
  %i.b = load i32, ptr %i.a, align 4, !tbaa !133  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.d = load double, ptr %i.c, align 8, !tbaa !17 ; 2 uses
  %i.e = fcmp ugt double %i.d, 0.000000e+00
  %i.f = select i1 %i.e, double %i.d, double 1.000000e+00 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %5, i64 4
  %i.h = load i32, ptr %i.g, align 4, !tbaa !71   ; 3 uses
  %i.i = icmp eq i32 %i.h, 0                      ; 3 uses
  %i.j = select i1 %i.i, i32 6, i32 %i.h          ; 2 uses
  %i.k = select i1 %i.i, i32 8, i32 %i.h          ; 3 uses
  %i.l = load i32, ptr %5, align 8, !tbaa !61     ; 3 uses
  %i.m = icmp eq i32 %i.l, 0                      ; 3 uses
  %i.n = select i1 %i.m, i32 50, i32 %i.l         ; 3 uses
  %i.o = select i1 %i.m, i32 2000, i32 %i.l       ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.q = load i32, ptr %i.p, align 8, !tbaa !134  ; 2 uses
  %i.r = icmp eq i32 %i.q, 0
  %i.s = select i1 %i.r, i32 40, i32 %i.q         ; 2 uses
  %i.t = select i1 %i.m, i32 1950, i32 0          ; 2 uses
  %i.u = udiv i32 %i.t, %i.s
  %i.v = tail call i32 @llvm.umax.i32(i32 %i.u, i32 1) ; 2 uses
  %.lhs.trunc = trunc nuw nsw i32 %i.t to i16
  %.rhs.trunc = trunc nuw nsw i32 %i.v to i16
  %i.w = udiv i16 %.lhs.trunc, %.rhs.trunc
  %narrow = add nuw nsw i16 %i.w, 1
  %i.x = zext nneg i16 %narrow to i32
  %i.y = zext i1 %i.i to i32
  %i.z = shl nuw nsw i32 %i.x, %i.y               ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %5, i64 36
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !21 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #23
  %i.ac = fcmp ogt double %i.f, 1.000000e+00
  br i1 %i.ac, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.ad = icmp sgt i32 %i.ab, 0
  br i1 %i.ad, label %bb.c, label %bb.bl

bb.c:                                             ; preds = %bb.b
  %i.ae = load ptr, ptr @stderr, align 8, !tbaa !14
  %i.af = tail call i64 @fwrite(ptr nonnull @.str.7, i64 21, i64 1, ptr %i.ae) #24 ; 0 uses
  %i.ag = load ptr, ptr @stderr, align 8, !tbaa !14
  %i.ah = tail call i32 @fflush(ptr noundef %i.ag) ; 0 uses
  br label %bb.bl

bb.d:                                             ; preds = %bb.a
  %i.ai = icmp ult i32 %i.n, %i.k
  %8 = icmp ult i32 %i.o, %i.n
  %or.cond = or i1 %i.ai, %8
  br i1 %or.cond, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.aj = icmp sgt i32 %i.ab, 0
  br i1 %i.aj, label %bb.f, label %bb.bl

bb.f:                                             ; preds = %bb.e
  %i.ak = load ptr, ptr @stderr, align 8, !tbaa !14
  %i.al = tail call i64 @fwrite(ptr nonnull @.str.7, i64 21, i64 1, ptr %i.ak) #24 ; 0 uses
  %i.am = load ptr, ptr @stderr, align 8, !tbaa !14
  %i.an = tail call i32 @fflush(ptr noundef %i.am) ; 0 uses
  br label %bb.bl

bb.g:                                             ; preds = %bb.d
  %i.ao = icmp eq i32 %4, 0
  br i1 %i.ao, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  %i.ap = load i32, ptr @_ZL14g_displayLevel, align 4, !tbaa !3
  %i.aq = icmp sgt i32 %i.ap, 0
  br i1 %i.aq, label %bb.i, label %bb.bl

bb.i:                                             ; preds = %bb.h
  %i.ar = load ptr, ptr @stderr, align 8, !tbaa !14
  %i.as = tail call i64 @fwrite(ptr nonnull @.str.2, i64 40, i64 1, ptr %i.ar) #24 ; 0 uses
  %i.at = load ptr, ptr @stderr, align 8, !tbaa !14
  %i.au = tail call i32 @fflush(ptr noundef %i.at) ; 0 uses
  br label %bb.bl

bb.j:                                             ; preds = %bb.g
  %i.av = icmp ult i64 %1, 256
  br i1 %i.av, label %bb.k, label %bb.m

bb.k:                                             ; preds = %bb.j
  %i.aw = load i32, ptr @_ZL14g_displayLevel, align 4, !tbaa !3
  %i.ax = icmp sgt i32 %i.aw, 0
  br i1 %i.ax, label %bb.l, label %bb.bl

bb.l:                                             ; preds = %bb.k
  %i.ay = load ptr, ptr @stderr, align 8, !tbaa !14
  %i.az = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ay, ptr noundef nonnull @.str.3, i32 noundef 256) #22 ; 0 uses
  %i.ba = load ptr, ptr @stderr, align 8, !tbaa !14
  %i.bb = tail call i32 @fflush(ptr noundef %i.ba) ; 0 uses
  br label %bb.bl

bb.m:                                             ; preds = %bb.j
  %i.bc = icmp ugt i32 %i.b, 1
  br i1 %i.bc, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.bd = zext i32 %i.b to i64
  %i.be = tail call noundef ptr @_ZN11duckdb_zstd11POOL_createEmm(i64 noundef %i.bd, i64 noundef 1) ; 2 uses
  %.not = icmp eq ptr %i.be, null
  br i1 %.not, label %bb.bl, label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %.0125 = phi ptr [ %i.be, %bb.n ], [ null, %bb.m ] ; 5 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 3 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %6, i64 80 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bf, i8 0, i64 24, i1 false)
  store i64 -1, ptr %i.bg, align 8, !tbaa !77
  %i.bh = getelementptr inbounds nuw i8, ptr %6, i64 32 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.bh, i8 0, i64 48, i1 false)
  %i.bi = tail call i32 @llvm.usub.sat.i32(i32 %i.ab, i32 1)
  store i32 %i.bi, ptr @_ZL14g_displayLevel, align 4, !tbaa !3
  %i.bj = icmp sgt i32 %i.ab, 1                   ; 3 uses
  br i1 %i.bj, label %bb.p, label %9

bb.p:                                             ; preds = %bb.o
  %i.bk = load ptr, ptr @stderr, align 8, !tbaa !14
  %i.bl = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.bk, ptr noundef nonnull @.str.8, i32 noundef %i.z) #22 ; 0 uses
  %i.bm = load ptr, ptr @stderr, align 8, !tbaa !14
  %i.bn = tail call i32 @fflush(ptr noundef %i.bm) ; 0 uses
  br label %9

9:                                                ; preds = %bb.p, %bb.o
  %.not143195 = icmp ugt i32 %i.j, %i.k
  br i1 %.not143195, label %._crit_edge201, label %.lr.ph200

.lr.ph200:                                        ; preds = %9
  %i.bo = icmp sgt i32 %i.ab, 2                   ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %7, i64 56
  %i.bq = uitofp i64 %1 to double
  %i.br = icmp sgt i32 %i.ab, 0                   ; 3 uses
  %i.bs = trunc i64 %1 to i32
  %.not150 = icmp eq ptr %.0125, null
  %i.bt = icmp samesign ugt i32 %i.ab, 3
  %i.bu = getelementptr inbounds nuw i8, ptr %7, i64 48 ; 4 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %7, i64 64 ; 4 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %7, i64 72 ; 4 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 3 uses
  br label %bb.q

bb.q:                                             ; preds = %.lr.ph200, %bb.be
  %.0113198 = phi i32 [ 1, %.lr.ph200 ], [ %.2115.ph, %bb.be ]
  %.0117197 = phi i32 [ %i.j, %.lr.ph200 ], [ %i.et, %bb.be ] ; 5 uses
  %.not146196 = phi i1 [ true, %.lr.ph200 ], [ false, %bb.be ]
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #23
  br i1 %i.bo, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.by = load ptr, ptr @stderr, align 8, !tbaa !14
  %i.bz = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.by, ptr noundef nonnull @.str.9, i32 noundef %.0117197) #22 ; 0 uses
  %i.ca = load ptr, ptr @stderr, align 8, !tbaa !14
  %i.cb = call i32 @fflush(ptr noundef %i.ca)     ; 0 uses
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.cc = call fastcc noundef i64 @_ZN11duckdb_zstdL14COVER_ctx_initEPNS_11COVER_ctx_tEPKvPKmjjd(ptr noundef %7, ptr noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef %.0117197, double noundef %i.f) ; 3 uses
  %i.cd = icmp ult i64 %i.cc, -119
  br i1 %i.cd, label %bb.x, label %bb.t

bb.t:                                             ; preds = %bb.s
  br i1 %i.br, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.ce = load ptr, ptr @stderr, align 8, !tbaa !14
  %i.cf = call i64 @fwrite(ptr nonnull @.str.10, i64 29, i64 1, ptr %i.ce) #24 ; 0 uses
  %i.cg = load ptr, ptr @stderr, align 8, !tbaa !14
  %i.ch = call i32 @fflush(ptr noundef %i.cg)     ; 0 uses
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %i.ci = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !79 ; 2 uses
  %.not5.i = icmp eq ptr %i.cj, null
  br i1 %.not5.i, label %_ZN11duckdb_zstdL17COVER_ctx_destroyEPNS_11COVER_ctx_tE.exit160, label %bb.w

bb.w:                                             ; preds = %bb.v
  call void @free(ptr noundef nonnull %i.cj) #23
  br label %_ZN11duckdb_zstdL17COVER_ctx_destroyEPNS_11COVER_ctx_tE.exit160

bb.x:                                             ; preds = %bb.s
  br i1 %.not146196, label %bb.y, label %.lr.ph.preheader

bb.y:                                             ; preds = %bb.x
  %i.ck = load i64, ptr %i.bp, align 8, !tbaa !22 ; 2 uses
  %i.cl = uitofp i64 %i.ck to double
  %i.cm = fdiv double %i.cl, %i.bq                ; 2 uses
  %i.cn = fcmp ult double %i.cm, 1.000000e+01
  %or.cond.i = and i1 %i.br, %i.cn
  br i1 %or.cond.i, label %bb.z, label %.lr.ph.preheader

bb.z:                                             ; preds = %bb.y
  %i.co = load ptr, ptr @stderr, align 8, !tbaa !14
  %i.cp = trunc i64 %i.ck to i32
  %i.cq = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.co, ptr noundef nonnull @.str, i32 noundef %i.bs, i32 noundef %i.cp, double noundef %i.cm) #22 ; 0 uses
  %i.cr = load ptr, ptr @stderr, align 8, !tbaa !14
  %i.cs = call i32 @fflush(ptr noundef %i.cr)     ; 0 uses
  br label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.x, %bb.y, %bb.z
  %i.ct = add i32 %.0117197, -1
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.aw
  %.1114194 = phi i32 [ %.2115.ph, %bb.aw ], [ %.0113198, %.lr.ph.preheader ] ; 3 uses
  %.0118193 = phi i32 [ %i.eo, %bb.aw ], [ %i.n, %.lr.ph.preheader ] ; 5 uses
  %i.cu = call noalias dereferenceable_or_null(72) ptr @malloc(i64 noundef 72) #25 ; 13 uses
  br i1 %i.bo, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %.lr.ph
  %i.cv = load ptr, ptr @stderr, align 8, !tbaa !14
  %i.cw = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.cv, ptr noundef nonnull @.str.11, i32 noundef %.0118193) #22 ; 0 uses
  %i.cx = load ptr, ptr @stderr, align 8, !tbaa !14
  %i.cy = call i32 @fflush(ptr noundef %i.cx)     ; 0 uses
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %.lr.ph
  %.not148 = icmp eq ptr %i.cu, null
  br i1 %.not148, label %bb.ac, label %bb.an

bb.ac:                                            ; preds = %bb.ab
  br i1 %i.br, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.cz = load ptr, ptr @stderr, align 8, !tbaa !14
  %i.da = call i64 @fwrite(ptr nonnull @.str.12, i64 30, i64 1, ptr %i.cz) #24 ; 0 uses
  %i.db = load ptr, ptr @stderr, align 8, !tbaa !14
  %i.dc = call i32 @fflush(ptr noundef %i.db)     ; 0 uses
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  %i.dd = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !79 ; 2 uses
  %.not5.i152 = icmp eq ptr %i.de, null
  br i1 %.not5.i152, label %_ZN11duckdb_zstd18COVER_best_destroyEPNS_12COVER_best_sE.exit153, label %bb.af

bb.af:                                            ; preds = %bb.ae
  call void @free(ptr noundef nonnull %i.de) #23
  br label %_ZN11duckdb_zstd18COVER_best_destroyEPNS_12COVER_best_sE.exit153

_ZN11duckdb_zstd18COVER_best_destroyEPNS_12COVER_best_sE.exit153: ; preds = %bb.ae, %bb.af
  %i.df = load ptr, ptr %i.bu, align 8, !tbaa !33 ; 2 uses
  %.not.i = icmp eq ptr %i.df, null
  br i1 %.not.i, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %_ZN11duckdb_zstd18COVER_best_destroyEPNS_12COVER_best_sE.exit153
  call void @free(ptr noundef nonnull %i.df) #23
  store ptr null, ptr %i.bu, align 8, !tbaa !33
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %_ZN11duckdb_zstd18COVER_best_destroyEPNS_12COVER_best_sE.exit153
  %i.dg = load ptr, ptr %i.bv, align 8, !tbaa !34 ; 2 uses
  %.not17.i = icmp eq ptr %i.dg, null
  br i1 %.not17.i, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  call void @free(ptr noundef nonnull %i.dg) #23
  store ptr null, ptr %i.bv, align 8, !tbaa !34
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ah
  %i.dh = load ptr, ptr %i.bw, align 8, !tbaa !35 ; 2 uses
  %.not18.i = icmp eq ptr %i.dh, null
  br i1 %.not18.i, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  call void @free(ptr noundef nonnull %i.dh) #23
  store ptr null, ptr %i.bw, align 8, !tbaa !35
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.aj
  %i.di = load ptr, ptr %i.bx, align 8, !tbaa !36 ; 2 uses
  %.not19.i = icmp eq ptr %i.di, null
  br i1 %.not19.i, label %_ZN11duckdb_zstdL17COVER_ctx_destroyEPNS_11COVER_ctx_tE.exit160, label %bb.am

bb.am:                                            ; preds = %bb.al
  call void @free(ptr noundef nonnull %i.di) #23
  store ptr null, ptr %i.bx, align 8, !tbaa !36
  br label %_ZN11duckdb_zstdL17COVER_ctx_destroyEPNS_11COVER_ctx_tE.exit160

bb.an:                                            ; preds = %bb.ab
  store ptr %7, ptr %i.cu, align 8, !tbaa !135
  %i.dj = getelementptr inbounds nuw i8, ptr %i.cu, i64 8
  store ptr %6, ptr %i.dj, align 8, !tbaa !138
  %i.dk = getelementptr inbounds nuw i8, ptr %i.cu, i64 16
  store i64 %1, ptr %i.dk, align 8, !tbaa !139
  %i.dl = getelementptr inbounds nuw i8, ptr %i.cu, i64 24 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.dl, ptr noundef nonnull align 8 dereferenceable(48) %5, i64 48, i1 false), !tbaa.struct !86
  store i32 %.0118193, ptr %i.dl, align 8, !tbaa !140
  %i.dm = getelementptr inbounds nuw i8, ptr %i.cu, i64 28
  store i32 %.0117197, ptr %i.dm, align 4, !tbaa !141
  %i.dn = getelementptr inbounds nuw i8, ptr %i.cu, i64 40
  store double %i.f, ptr %i.dn, align 8, !tbaa !142
  %i.do = getelementptr inbounds nuw i8, ptr %i.cu, i64 32
  store i32 %i.s, ptr %i.do, align 8, !tbaa !143
  %i.dp = getelementptr inbounds nuw i8, ptr %i.cu, i64 48
  store i32 0, ptr %i.dp, align 8, !tbaa !144
  %i.dq = load i32, ptr @_ZL14g_displayLevel, align 4, !tbaa !3 ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %i.cu, i64 60
  store i32 %i.dq, ptr %i.dr, align 4, !tbaa !145
  %i.ds = zext i32 %.0118193 to i64
  %i.dt = icmp ult i64 %1, %i.ds
  %i.du = icmp uge i32 %i.ct, %.0118193
  %or.cond11.i = or i1 %i.dt, %i.du
  br i1 %or.cond11.i, label %_ZN11duckdb_zstdL21COVER_checkParametersENS_20ZDICT_cover_params_tEm.exit.thread, label %_ZN11duckdb_zstdL21COVER_checkParametersENS_20ZDICT_cover_params_tEm.exit

_ZN11duckdb_zstdL21COVER_checkParametersENS_20ZDICT_cover_params_tEm.exit.thread: ; preds = %bb.an
  %i.dv = icmp sgt i32 %i.dq, 0
  br i1 %i.dv, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %_ZN11duckdb_zstdL21COVER_checkParametersENS_20ZDICT_cover_params_tEm.exit.thread
  %i.dw = load ptr, ptr @stderr, align 8, !tbaa !14
  %i.dx = call i64 @fwrite(ptr nonnull @.str.1, i64 27, i64 1, ptr %i.dw) #24 ; 0 uses
  %i.dy = load ptr, ptr @stderr, align 8, !tbaa !14
  %i.dz = call i32 @fflush(ptr noundef %i.dy)     ; 0 uses
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %_ZN11duckdb_zstdL21COVER_checkParametersENS_20ZDICT_cover_params_tEm.exit.thread
  call void @free(ptr noundef nonnull %i.cu) #23
  br label %bb.aw

_ZN11duckdb_zstdL21COVER_checkParametersENS_20ZDICT_cover_params_tEm.exit: ; preds = %bb.an
  %i.ea = load i64, ptr %i.bf, align 8, !tbaa !80
  %i.eb = add i64 %i.ea, 1
  store i64 %i.eb, ptr %i.bf, align 8, !tbaa !80
  br i1 %.not150, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %_ZN11duckdb_zstdL21COVER_checkParametersENS_20ZDICT_cover_params_tEm.exit
  call void @_ZN11duckdb_zstd8POOL_addEPNS_10POOL_ctx_sEPFvPvES2_(ptr noundef nonnull %.0125, ptr noundef nonnull @_ZN11duckdb_zstdL19COVER_tryParametersEPv, ptr noundef nonnull %i.cu)
  br label %bb.as

bb.ar:                                            ; preds = %_ZN11duckdb_zstdL21COVER_checkParametersENS_20ZDICT_cover_params_tEm.exit
  call void @_ZN11duckdb_zstdL19COVER_tryParametersEPv(ptr noundef nonnull %i.cu)
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %bb.aq
  br i1 %i.bj, label %bb.at, label %bb.av

bb.at:                                            ; preds = %bb.as
  %i.ec = call i64 @clock() #23
  %i.ed = load i64, ptr @_ZL6g_time, align 8, !tbaa !7
  %i.ee = sub nsw i64 %i.ec, %i.ed
  %i.ef = icmp sgt i64 %i.ee, 150000
  %or.cond4 = select i1 %i.ef, i1 true, i1 %i.bt
  br i1 %or.cond4, label %bb.au, label %bb.av

bb.au:                                            ; preds = %bb.at
  %i.eg = call i64 @clock() #23
  store i64 %i.eg, ptr @_ZL6g_time, align 8, !tbaa !7
  %i.eh = load ptr, ptr @stderr, align 8, !tbaa !14
  %i.ei = mul i32 %.1114194, 100
  %i.ej = udiv i32 %i.ei, %i.z
  %i.ek = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.eh, ptr noundef nonnull @.str.13, i32 noundef %i.ej) #22 ; 0 uses
  %i.el = load ptr, ptr @stderr, align 8, !tbaa !14
  %i.em = call i32 @fflush(ptr noundef %i.el)     ; 0 uses
  br label %bb.av

bb.av:                                            ; preds = %bb.au, %bb.at, %bb.as
  %i.en = add i32 %.1114194, 1
  br label %bb.aw

bb.aw:                                            ; preds = %bb.av, %bb.ap
  %.2115.ph = phi i32 [ %.1114194, %bb.ap ], [ %i.en, %bb.av ] ; 2 uses
  %i.eo = add i32 %.0118193, %i.v                 ; 2 uses
  %.not147 = icmp ugt i32 %i.eo, %i.o
  br i1 %.not147, label %._crit_edge, label %.lr.ph, !llvm.loop !146

._crit_edge:                                      ; preds = %bb.aw
  %i.ep = load ptr, ptr %i.bu, align 8, !tbaa !33 ; 2 uses
  %.not.i156 = icmp eq ptr %i.ep, null
  br i1 %.not.i156, label %bb.ay, label %bb.ax

bb.ax:                                            ; preds = %._crit_edge
  call void @free(ptr noundef nonnull %i.ep) #23
  store ptr null, ptr %i.bu, align 8, !tbaa !33
  br label %bb.ay

bb.ay:                                            ; preds = %bb.ax, %._crit_edge
  %i.eq = load ptr, ptr %i.bv, align 8, !tbaa !34 ; 2 uses
  %.not17.i157 = icmp eq ptr %i.eq, null
  br i1 %.not17.i157, label %bb.ba, label %bb.az

bb.az:                                            ; preds = %bb.ay
  call void @free(ptr noundef nonnull %i.eq) #23
  store ptr null, ptr %i.bv, align 8, !tbaa !34
  br label %bb.ba

bb.ba:                                            ; preds = %bb.az, %bb.ay
  %i.er = load ptr, ptr %i.bw, align 8, !tbaa !35 ; 2 uses
  %.not18.i158 = icmp eq ptr %i.er, null
  br i1 %.not18.i158, label %bb.bc, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  call void @free(ptr noundef nonnull %i.er) #23
  store ptr null, ptr %i.bw, align 8, !tbaa !35
  br label %bb.bc

bb.bc:                                            ; preds = %bb.bb, %bb.ba
  %i.es = load ptr, ptr %i.bx, align 8, !tbaa !36 ; 2 uses
  %.not19.i159 = icmp eq ptr %i.es, null
  br i1 %.not19.i159, label %bb.be, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  call void @free(ptr noundef nonnull %i.es) #23
  br label %bb.be

_ZN11duckdb_zstdL17COVER_ctx_destroyEPNS_11COVER_ctx_tE.exit160: ; preds = %bb.al, %bb.am, %bb.v, %bb.w
  %.4 = phi i64 [ %i.cc, %bb.v ], [ %i.cc, %bb.w ], [ -64, %bb.am ], [ -64, %bb.al ]
  call void @_ZN11duckdb_zstd9POOL_freeEPNS_10POOL_ctx_sE(ptr noundef %.0125)
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  br label %bb.bl

bb.be:                                            ; preds = %bb.bc, %bb.bd
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  %i.et = add i32 %.0117197, 2                    ; 2 uses
  %.not143 = icmp ugt i32 %i.et, %i.k
  br i1 %.not143, label %._crit_edge201, label %bb.q, !llvm.loop !147

._crit_edge201:                                   ; preds = %bb.be, %9
  br i1 %i.bj, label %bb.bf, label %bb.bg

bb.bf:                                            ; preds = %._crit_edge201
  %i.eu = load ptr, ptr @stderr, align 8, !tbaa !14
  %i.ev = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.eu, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.15) #22 ; 0 uses
  %i.ew = load ptr, ptr @stderr, align 8, !tbaa !14
  %i.ex = call i32 @fflush(ptr noundef %i.ew)     ; 0 uses
  br label %bb.bg

bb.bg:                                            ; preds = %bb.bf, %._crit_edge201
  %i.ey = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.ez = load i64, ptr %i.ey, align 8, !tbaa !85 ; 2 uses
  %i.fa = load i64, ptr %i.bg, align 8, !tbaa !77 ; 2 uses
  %i.fb = icmp ult i64 %i.fa, -119
  br i1 %i.fb, label %bb.bj, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.fc = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.fd = load ptr, ptr %i.fc, align 8, !tbaa !79 ; 2 uses
  %.not5.i163 = icmp eq ptr %i.fd, null
  br i1 %.not5.i163, label %_ZN11duckdb_zstd18COVER_best_destroyEPNS_12COVER_best_sE.exit164, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  call void @free(ptr noundef nonnull %i.fd) #23
  br label %_ZN11duckdb_zstd18COVER_best_destroyEPNS_12COVER_best_sE.exit164

_ZN11duckdb_zstd18COVER_best_destroyEPNS_12COVER_best_sE.exit164: ; preds = %bb.bh, %bb.bi
  call void @_ZN11duckdb_zstd9POOL_freeEPNS_10POOL_ctx_sE(ptr noundef %.0125)
  br label %bb.bl

bb.bj:                                            ; preds = %bb.bg
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %5, ptr noundef nonnull align 8 dereferenceable(48) %i.bh, i64 48, i1 false), !tbaa.struct !86
  %i.fe = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.ff = load ptr, ptr %i.fe, align 8, !tbaa !79 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %0, ptr align 1 %i.ff, i64 %i.ez, i1 false)
  %.not5.i167 = icmp eq ptr %i.ff, null
  br i1 %.not5.i167, label %_ZN11duckdb_zstd18COVER_best_destroyEPNS_12COVER_best_sE.exit168, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  call void @free(ptr noundef nonnull %i.ff) #23
  br label %_ZN11duckdb_zstd18COVER_best_destroyEPNS_12COVER_best_sE.exit168

_ZN11duckdb_zstd18COVER_best_destroyEPNS_12COVER_best_sE.exit168: ; preds = %bb.bj, %bb.bk
  call void @_ZN11duckdb_zstd9POOL_freeEPNS_10POOL_ctx_sE(ptr noundef %.0125)
  br label %bb.bl

bb.bl:                                            ; preds = %_ZN11duckdb_zstdL17COVER_ctx_destroyEPNS_11COVER_ctx_tE.exit160, %_ZN11duckdb_zstd18COVER_best_destroyEPNS_12COVER_best_sE.exit164, %_ZN11duckdb_zstd18COVER_best_destroyEPNS_12COVER_best_sE.exit168, %bb.n, %bb.k, %bb.l, %bb.h, %bb.i, %bb.e, %bb.f, %bb.b, %bb.c
  %.6 = phi i64 [ -70, %bb.k ], [ -42, %bb.b ], [ -42, %bb.e ], [ -72, %bb.h ], [ %.4, %_ZN11duckdb_zstdL17COVER_ctx_destroyEPNS_11COVER_ctx_tE.exit160 ], [ -64, %bb.n ], [ -42, %bb.c ], [ -42, %bb.f ], [ -72, %bb.i ], [ -70, %bb.l ], [ %i.fa, %_ZN11duckdb_zstd18COVER_best_destroyEPNS_12COVER_best_sE.exit164 ], [ %i.ez, %_ZN11duckdb_zstd18COVER_best_destroyEPNS_12COVER_best_sE.exit168 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  ret i64 %.6
}

declare noundef ptr @_ZN11duckdb_zstd11POOL_createEmm(i64 noundef, i64 noundef) local_unnamed_addr #7

declare void @_ZN11duckdb_zstd9POOL_freeEPNS_10POOL_ctx_sE(ptr noundef) local_unnamed_addr #7

declare void @_ZN11duckdb_zstd8POOL_addEPNS_10POOL_ctx_sEPFvPvES2_(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: mustprogress uwtable
define internal void @_ZN11duckdb_zstdL19COVER_tryParametersEPv(ptr noundef captures(none) %0) #5 {
bb.a:
  %.sroa.8 = alloca { i32, i32, double, i32, i32, %"struct.duckdb_zstd::ZDICT_params_t" }, align 8 ; 3 uses
  %1 = alloca %"struct.duckdb_zstd::COVER_map_s", align 8 ; 7 uses
  %2 = alloca %"struct.duckdb_zstd::ZDICT_cover_params_t", align 8 ; 4 uses
  %3 = alloca %"struct.duckdb_zstd::COVER_dictSelection", align 8 ; 6 uses
  %4 = alloca %"struct.duckdb_zstd::ZDICT_cover_params_t", align 8 ; 4 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !135    ; 8 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.0.0.copyload = load i32, ptr %i.b, align 8, !tbaa !3 ; 4 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 28
  %.sroa.7.0.copyload = load i32, ptr %.sroa.7.0..sroa_idx, align 4, !tbaa !3 ; 4 uses
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.8, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.8.0..sroa_idx, i64 40, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !tbaa !139  ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #23
  %i.e = tail call noalias ptr @malloc(i64 noundef %i.d) #25 ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  %i.g = load i64, ptr %i.f, align 8, !tbaa !22
  %i.h = shl i64 %i.g, 2                          ; 2 uses
  %i.i = tail call noalias ptr @malloc(i64 noundef %i.h) #25 ; 4 uses
  %i.j = add i32 %.sroa.0.0.copyload, 1
  %i.k = sub i32 %i.j, %.sroa.7.0.copyload
  %i.l = tail call noundef range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %i.k, i1 true) ; 2 uses
  %i.m = xor i32 %i.l, 31
  %i.n = sub nuw nsw i32 33, %i.l
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i32 %i.n, ptr %i.o, align 8, !tbaa !27
  %i.p = shl nuw i32 4, %i.m                      ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 12
  store i32 %i.p, ptr %i.q, align 4, !tbaa !30
  %i.r = add i32 %i.p, -1
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i32 %i.r, ptr %i.s, align 8, !tbaa !31
  %i.t = zext i32 %i.p to i64
  %i.u = shl nuw nsw i64 %i.t, 3                  ; 2 uses
  %i.v = tail call noalias ptr @malloc(i64 noundef %i.u) #25 ; 4 uses
  store ptr %i.v, ptr %1, align 8, !tbaa !32
  %.not.i = icmp eq ptr %i.v, null                ; 2 uses
  br i1 %.not.i, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.w = load i32, ptr @_ZL14g_displayLevel, align 4, !tbaa !3
  %i.x = icmp sgt i32 %i.w, 0
  br i1 %i.x, label %bb.c, label %bb.i

bb.c:                                             ; preds = %bb.b
  %i.y = load ptr, ptr @stderr, align 8, !tbaa !14
  %i.z = tail call i64 @fwrite(ptr nonnull @.str.4, i64 43, i64 1, ptr %i.y) #24 ; 0 uses
  br label %.sink.split

bb.d:                                             ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.v, i8 -1, i64 %i.u, i1 false)
  %i.aa = icmp ne ptr %i.e, null
  %i.ab = icmp ne ptr %i.i, null
  %or.cond = and i1 %i.aa, %i.ab
  br i1 %or.cond, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ac = load i32, ptr @_ZL14g_displayLevel, align 4, !tbaa !3
  %i.ad = icmp sgt i32 %i.ac, 0
  br i1 %i.ad, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  %i.ae = load ptr, ptr @stderr, align 8, !tbaa !14
  %i.af = tail call i64 @fwrite(ptr nonnull @.str.25, i64 42, i64 1, ptr %i.ae) #24 ; 0 uses
  br label %.sink.split

bb.g:                                             ; preds = %bb.d
  %i.ag = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !34
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.i, ptr align 4 %i.ah, i64 %i.h, i1 false)
  store i32 %.sroa.0.0.copyload, ptr %2, align 8, !tbaa !3
  %.sroa.7.0..sroa_idx18 = getelementptr inbounds nuw i8, ptr %2, i64 4
  store i32 %.sroa.7.0.copyload, ptr %.sroa.7.0..sroa_idx18, align 4, !tbaa !3
  %.sroa.8.0..sroa_idx24 = getelementptr inbounds nuw i8, ptr %2, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.8.0..sroa_idx24, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.8.0..sroa_idx, i64 40, i1 false)
  %i.ai = call fastcc noundef i64 @_ZN11duckdb_zstdL21COVER_buildDictionaryEPKNS_11COVER_ctx_tEPjPNS_11COVER_map_sEPvmNS_20ZDICT_cover_params_tE(ptr noundef nonnull %i.a, ptr noundef nonnull %i.i, ptr noundef %1, ptr noundef nonnull %i.e, i64 noundef %i.d, ptr noundef nonnull byval(%"struct.duckdb_zstd::ZDICT_cover_params_t") align 8 %2) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  %i.aj = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.ai
  %i.ak = sub i64 %i.d, %i.ai
  %i.al = load ptr, ptr %i.a, align 8, !tbaa !43
  %i.am = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !44
  %i.ao = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !46 ; 2 uses
  %i.aq = trunc i64 %i.ap to i32
  %i.ar = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !45
  store i32 %.sroa.0.0.copyload, ptr %4, align 8, !tbaa !3
  %.sroa.7.0..sroa_idx20 = getelementptr inbounds nuw i8, ptr %4, i64 4
  store i32 %.sroa.7.0.copyload, ptr %.sroa.7.0..sroa_idx20, align 4, !tbaa !3
  %.sroa.8.0..sroa_idx25 = getelementptr inbounds nuw i8, ptr %4, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.8.0..sroa_idx25, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.8, i64 40, i1 false)
  %i.at = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !36
  call void @_ZN11duckdb_zstd16COVER_selectDictEPhmmPKhPKmjmmNS_20ZDICT_cover_params_tEPmm(ptr dead_on_unwind nonnull writable sret(%"struct.duckdb_zstd::COVER_dictSelection") align 8 %3, ptr noundef nonnull %i.aj, i64 noundef %i.d, i64 noundef %i.ak, ptr noundef %i.al, ptr noundef %i.an, i32 noundef %i.aq, i64 noundef %i.ap, i64 noundef %i.as, ptr noundef nonnull byval(%"struct.duckdb_zstd::ZDICT_cover_params_t") align 8 %4, ptr noundef %i.au, i64 poison)
  %.sroa.053.0.copyload = load ptr, ptr %3, align 8, !tbaa !148 ; 3 uses
  %.sroa.7.0..sroa_idx56 = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.sroa.7.0.copyload57 = load i64, ptr %.sroa.7.0..sroa_idx56, align 8, !tbaa !7 ; 2 uses
  %.sroa.862.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 16
  %.sroa.862.0.copyload = load i64, ptr %.sroa.862.0..sroa_idx, align 8, !tbaa !7 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  %i.av = icmp ugt i64 %.sroa.862.0.copyload, -120
  %.not1.i = icmp eq ptr %.sroa.053.0.copyload, null
  %narrow.i = select i1 %i.av, i1 true, i1 %.not1.i
  %i.aw = load i32, ptr @_ZL14g_displayLevel, align 4
  %i.ax = icmp sgt i32 %i.aw, 0
  %or.cond46 = select i1 %narrow.i, i1 %i.ax, i1 false
  br i1 %or.cond46, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ay = load ptr, ptr @stderr, align 8, !tbaa !14
  %i.az = tail call i64 @fwrite(ptr nonnull @.str.26, i64 28, i64 1, ptr %i.ay) #24 ; 0 uses
  br label %.sink.split

.sink.split:                                      ; preds = %bb.c, %bb.f, %bb.h
  %.sroa.862.0.ph = phi i64 [ -1, %bb.f ], [ %.sroa.862.0.copyload, %bb.h ], [ -1, %bb.c ]
  %.sroa.7.0.ph = phi i64 [ 0, %bb.f ], [ %.sroa.7.0.copyload57, %bb.h ], [ 0, %bb.c ]
  %.sroa.053.0.ph = phi ptr [ null, %bb.f ], [ %.sroa.053.0.copyload, %bb.h ], [ null, %bb.c ]
  %i.ba = load ptr, ptr @stderr, align 8, !tbaa !14
  %i.bb = tail call i32 @fflush(ptr noundef %i.ba) ; 0 uses
  br label %bb.i

bb.i:                                             ; preds = %.sink.split, %bb.g, %bb.e, %bb.b
  %.sroa.862.0 = phi i64 [ %.sroa.862.0.copyload, %bb.g ], [ -1, %bb.b ], [ -1, %bb.e ], [ %.sroa.862.0.ph, %.sink.split ] ; 2 uses
  %.sroa.7.0 = phi i64 [ %.sroa.7.0.copyload57, %bb.g ], [ 0, %bb.b ], [ 0, %bb.e ], [ %.sroa.7.0.ph, %.sink.split ] ; 4 uses
  %.sroa.053.0 = phi ptr [ %.sroa.053.0.copyload, %bb.g ], [ null, %bb.b ], [ null, %bb.e ], [ %.sroa.053.0.ph, %.sink.split ] ; 3 uses
  tail call void @free(ptr noundef %i.e) #23
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !138 ; 10 uses
  %.not.i47 = icmp eq ptr %i.bd, null
  br i1 %.not.i47, label %_ZN11duckdb_zstd17COVER_best_finishEPNS_12COVER_best_sENS_20ZDICT_cover_params_tENS_19COVER_dictSelectionE.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 8 ; 2 uses
  %i.bf = load i64, ptr %i.be, align 8, !tbaa !80
  %i.bg = add i64 %i.bf, -1
  store i64 %i.bg, ptr %i.be, align 8, !tbaa !80
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bd, i64 80 ; 3 uses
end_hunk_0
