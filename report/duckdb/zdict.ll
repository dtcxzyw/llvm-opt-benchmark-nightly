inline.NumInlined: 73
inline.NumDeleted: 33
loop-unroll.NumCompletelyUnrolled: 10
loop-unroll.NumRuntimeUnrolled: 11
loop-unroll.NumUnrolled: 22
begin_hunk_0_@_ZN11duckdb_zstd18FSE_normalizeCountEPsjPKjmjj

declare noundef i64 @_ZN11duckdb_zstd20HUF_writeCTable_wkspEPvmPKmjjS0_m(ptr noundef, i64 noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #5

declare noundef i64 @_ZN11duckdb_zstd15FSE_writeNCountEPvmPKsjj(ptr noundef, i64 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

declare noundef i64 @_ZN11duckdb_zstd14ZSTD_freeCDictEPNS_12ZSTD_CDict_sE(ptr noundef) local_unnamed_addr #5

declare noundef i64 @_ZN11duckdb_zstd13ZSTD_freeCCtxEPNS_11ZSTD_CCtx_sE(ptr noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #9

declare noundef i64 @_ZN11duckdb_zstd40ZSTD_compressBegin_usingCDict_deprecatedEPNS_11ZSTD_CCtx_sEPKNS_12ZSTD_CDict_sE(ptr noundef, ptr noundef) local_unnamed_addr #5

declare noundef i64 @_ZN11duckdb_zstd29ZSTD_compressBlock_deprecatedEPNS_11ZSTD_CCtx_sEPvmPKvm(ptr noundef, ptr noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #5

declare noundef ptr @_ZN11duckdb_zstd16ZSTD_getSeqStoreEPKNS_11ZSTD_CCtx_sE(ptr noundef) local_unnamed_addr #5

declare noundef i32 @_ZN11duckdb_zstd15ZSTD_seqToCodesEPKNS_10seqStore_tE(ptr noundef) local_unnamed_addr #5

declare noundef i32 @_ZN11duckdb_zstd10divsufsortEPKhPiii(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind
declare i64 @clock() local_unnamed_addr #10

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.cttz.i64(i64, i1 immarg) #9

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc noundef i32 @_ZN11duckdb_zstdL14ZDICT_tryMergeEPNS_8dictItemES0_jPKv(ptr nofree noundef nonnull captures(none) %0, i64 %1, i32 %2, i32 noundef %3, ptr nofree noundef nonnull readonly captures(none) %4) unnamed_addr #11 {
bb.a:
  %.sroa.0102.sroa.0.0.extract.trunc = trunc i64 %1 to i32 ; 7 uses
  %.sroa.0102.sroa.14.0.extract.shift = lshr i64 %1, 32 ; 2 uses
  %.sroa.0102.sroa.14.0.extract.trunc = trunc nuw i64 %.sroa.0102.sroa.14.0.extract.shift to i32 ; 7 uses
  %i.a = load i32, ptr %0, align 4, !tbaa !59     ; 3 uses
  %i.b = add i32 %.sroa.0102.sroa.14.0.extract.trunc, %.sroa.0102.sroa.0.0.extract.trunc ; 2 uses
  %i.c = icmp ugt i32 %i.a, 1
  br i1 %i.c, label %.lr.ph.preheader, label %.loopexit

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.d = zext i32 %3 to i64
  %wide.trip.count = zext i32 %i.a to i64
  br label %.lr.ph

.lr.ph198:                                        ; preds = %bb.e
  %i.e = and i64 %1, 4294967295
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 %i.e
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 1 ; 2 uses
  %i.h = zext i32 %3 to i64
  %wide.trip.count233 = zext i32 %i.a to i64
  br label %bb.f

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.e
  %indvars.iv = phi i64 [ 1, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.e ] ; 5 uses
  %i.i = icmp eq i64 %indvars.iv, %i.d
  br i1 %i.i, label %bb.e, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.j = getelementptr inbounds nuw [12 x i8], ptr %0, i64 %indvars.iv ; 5 uses
  %i.k = load i32, ptr %i.j, align 4, !tbaa !59   ; 3 uses
  %i.l = icmp ule i32 %i.k, %.sroa.0102.sroa.0.0.extract.trunc
  %.not164 = icmp ugt i32 %i.k, %i.b
  %or.cond = select i1 %i.l, i1 true, i1 %.not164
  br i1 %or.cond, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = sub nuw i32 %i.k, %.sroa.0102.sroa.0.0.extract.trunc ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.j, i64 4 ; 2 uses
  %i.o = load i32, ptr %i.n, align 4, !tbaa !61
  %i.p = add i32 %i.o, %i.m
  store i32 %i.p, ptr %i.n, align 4, !tbaa !61
  store i32 %.sroa.0102.sroa.0.0.extract.trunc, ptr %i.j, align 4, !tbaa !59
  %i.q = mul i32 %i.m, %2
  %i.r = udiv i32 %i.q, %.sroa.0102.sroa.14.0.extract.trunc
  %i.s = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 2 uses
  %i.t = load i32, ptr %i.s, align 4, !tbaa !62
  %i.u = lshr i32 %.sroa.0102.sroa.14.0.extract.trunc, 3
  %i.v = add i32 %i.r, %i.u
  %i.w = add i32 %i.v, %i.t                       ; 3 uses
  store i32 %i.w, ptr %i.s, align 4, !tbaa !62
  %.sroa.0102.0.copyload = load i64, ptr %i.j, align 4
  %i.x = icmp samesign ugt i64 %indvars.iv, 1
  br i1 %i.x, label %.lr.ph204, label %.critedge

.lr.ph204:                                        ; preds = %bb.c, %bb.d
  %indvars.iv226 = phi i64 [ %indvars.iv.next227, %bb.d ], [ %indvars.iv, %bb.c ] ; 3 uses
  %indvars.iv.next227 = add nsw i64 %indvars.iv226, -1 ; 3 uses
  %i.y = and i64 %indvars.iv.next227, 4294967295
  %i.z = getelementptr inbounds nuw [12 x i8], ptr %0, i64 %i.y ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !62
  %i.ac = icmp ult i32 %i.ab, %i.w
  br i1 %i.ac, label %bb.d, label %.critedge.loopexit.split.loop.exit274

bb.d:                                             ; preds = %.lr.ph204
  %i.ad = getelementptr inbounds nuw [12 x i8], ptr %0, i64 %indvars.iv226
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.ad, ptr noundef nonnull align 4 dereferenceable(12) %i.z, i64 12, i1 false), !tbaa.struct !81
  %i.ae = and i64 %indvars.iv.next227, 4294967294
  %.not251 = icmp eq i64 %i.ae, 0
  br i1 %.not251, label %.critedge, label %.lr.ph204, !llvm.loop !98

.critedge.loopexit.split.loop.exit274:            ; preds = %.lr.ph204
  %i.af = trunc nuw i64 %indvars.iv226 to i32
  br label %.critedge

.critedge:                                        ; preds = %bb.d, %.critedge.loopexit.split.loop.exit274, %bb.c
  %.1.lcssa = phi i32 [ 1, %bb.c ], [ %i.af, %.critedge.loopexit.split.loop.exit274 ], [ 1, %bb.d ] ; 2 uses
  %i.ag = zext i32 %.1.lcssa to i64
  %i.ah = getelementptr inbounds nuw [12 x i8], ptr %0, i64 %i.ag ; 2 uses
  store i64 %.sroa.0102.0.copyload, ptr %i.ah, align 4
  %.sroa.24.0..sroa_idx132 = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  store i32 %i.w, ptr %.sroa.24.0..sroa_idx132, align 4, !tbaa !3
  br label %.loopexit

bb.e:                                             ; preds = %bb.b, %.lr.ph
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.lr.ph198, label %.lr.ph, !llvm.loop !99

bb.f:                                             ; preds = %.lr.ph198, %bb.o
  %indvars.iv229 = phi i64 [ 1, %.lr.ph198 ], [ %indvars.iv.next230, %bb.o ] ; 6 uses
  %i.ai = icmp eq i64 %indvars.iv229, %i.h
  br i1 %i.ai, label %bb.o, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.aj = getelementptr inbounds nuw [12 x i8], ptr %0, i64 %indvars.iv229 ; 8 uses
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !59 ; 3 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.aj, i64 4
  %i.am = load i32, ptr %i.al, align 4, !tbaa !61 ; 6 uses
  %i.an = add i32 %i.am, %i.ak                    ; 2 uses
  %.not = icmp uge i32 %i.an, %.sroa.0102.sroa.0.0.extract.trunc
  %i.ao = icmp ult i32 %i.ak, %.sroa.0102.sroa.0.0.extract.trunc
  %or.cond165 = and i1 %i.ao, %.not
  br i1 %or.cond165, label %bb.h, label %bb.l

bb.h:                                             ; preds = %bb.g
  %i.ap = sub nsw i32 %i.b, %i.an                 ; 3 uses
  %i.aq = lshr i32 %.sroa.0102.sroa.14.0.extract.trunc, 3
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aj, i64 8 ; 3 uses
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !62
  %i.at = add i32 %i.as, %i.aq                    ; 3 uses
  store i32 %i.at, ptr %i.ar, align 4, !tbaa !62
  %i.au = icmp sgt i32 %i.ap, 0
  br i1 %i.au, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.av = getelementptr inbounds nuw i8, ptr %i.aj, i64 4
  %i.aw = add i32 %i.ap, %i.am
  store i32 %i.aw, ptr %i.av, align 4, !tbaa !61
  %i.ax = mul i32 %i.ap, %2
  %i.ay = udiv i32 %i.ax, %.sroa.0102.sroa.14.0.extract.trunc
  %i.az = add i32 %i.ay, %i.at                    ; 2 uses
  store i32 %i.az, ptr %i.ar, align 4, !tbaa !62
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.sroa.24.0.copyload135 = phi i32 [ %i.az, %bb.i ], [ %i.at, %bb.h ] ; 2 uses
  %.sroa.0102.0.copyload112 = load i64, ptr %i.aj, align 4
  %i.ba = icmp samesign ugt i64 %indvars.iv229, 1
  br i1 %i.ba, label %.lr.ph200, label %.critedge2

.lr.ph200:                                        ; preds = %bb.j, %bb.k
  %indvars.iv238 = phi i64 [ %indvars.iv.next239, %bb.k ], [ %indvars.iv229, %bb.j ] ; 3 uses
  %indvars.iv.next239 = add nsw i64 %indvars.iv238, -1 ; 3 uses
  %i.bb = and i64 %indvars.iv.next239, 4294967295
  %i.bc = getelementptr inbounds nuw [12 x i8], ptr %0, i64 %i.bb ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !62
  %i.bf = icmp ult i32 %i.be, %.sroa.24.0.copyload135
  br i1 %i.bf, label %bb.k, label %.critedge2.loopexit.split.loop.exit281

bb.k:                                             ; preds = %.lr.ph200
  %i.bg = getelementptr inbounds nuw [12 x i8], ptr %0, i64 %indvars.iv238
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.bg, ptr noundef nonnull align 4 dereferenceable(12) %i.bc, i64 12, i1 false), !tbaa.struct !81
  %i.bh = and i64 %indvars.iv.next239, 4294967294
  %.not252 = icmp eq i64 %i.bh, 0
  br i1 %.not252, label %.critedge2, label %.lr.ph200, !llvm.loop !100

.critedge2.loopexit.split.loop.exit281:           ; preds = %.lr.ph200
  %i.bi = trunc nuw i64 %indvars.iv238 to i32
  br label %.critedge2

.critedge2:                                       ; preds = %bb.k, %.critedge2.loopexit.split.loop.exit281, %bb.j
  %.3.lcssa = phi i32 [ 1, %bb.j ], [ %i.bi, %.critedge2.loopexit.split.loop.exit281 ], [ 1, %bb.k ] ; 2 uses
  %i.bj = zext i32 %.3.lcssa to i64
  %i.bk = getelementptr inbounds nuw [12 x i8], ptr %0, i64 %i.bj ; 2 uses
  store i64 %.sroa.0102.0.copyload112, ptr %i.bk, align 4
  %.sroa.24.0..sroa_idx136 = getelementptr inbounds nuw i8, ptr %i.bk, i64 8
  store i32 %.sroa.24.0.copyload135, ptr %.sroa.24.0..sroa_idx136, align 4, !tbaa !3
  br label %.loopexit

bb.l:                                             ; preds = %bb.g
  %i.bl = zext i32 %i.ak to i64
  %i.bm = getelementptr inbounds nuw i8, ptr %4, i64 %i.bl ; 2 uses
  %.val166 = load i64, ptr %i.bm, align 1, !tbaa !14
  %.val = load i64, ptr %i.g, align 1, !tbaa !14
  %i.bn = icmp eq i64 %.val166, %.val
  br i1 %i.bn, label %bb.m, label %bb.o

bb.m:                                             ; preds = %bb.l
  %i.bo = zext i32 %i.am to i64
  %.not13.i = icmp eq i32 %i.am, 0
  br i1 %.not13.i, label %_ZN11duckdb_zstdL10isIncludedEPKvS1_m.exit.thread, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.m, %bb.n
  %.010.i = phi i64 [ %i.bt, %bb.n ], [ 0, %bb.m ] ; 3 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bm, i64 %.010.i
  %i.bq = load i8, ptr %i.bp, align 1, !tbaa !33
  %i.br = getelementptr inbounds nuw i8, ptr %i.g, i64 %.010.i
  %i.bs = load i8, ptr %i.br, align 1, !tbaa !33
  %.not.i = icmp eq i8 %i.bq, %i.bs
  br i1 %.not.i, label %bb.n, label %bb.o

bb.n:                                             ; preds = %.lr.ph.i
  %i.bt = add nuw nsw i64 %.010.i, 1              ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.bt, %i.bo
  br i1 %exitcond.not.i, label %_ZN11duckdb_zstdL10isIncludedEPKvS1_m.exit.thread, label %.lr.ph.i, !llvm.loop !101

_ZN11duckdb_zstdL10isIncludedEPKvS1_m.exit.thread: ; preds = %bb.m, %bb.n
  %i.bu = getelementptr inbounds nuw i8, ptr %i.aj, i64 4
  %i.bv = trunc i64 %indvars.iv229 to i32
  %i.bw = sub nsw i32 %.sroa.0102.sroa.14.0.extract.trunc, %i.am
  %narrow = tail call i32 @llvm.smax.i32(i32 %i.bw, i32 1)
  %spec.select = zext nneg i32 %narrow to i64
  store i32 %.sroa.0102.sroa.0.0.extract.trunc, ptr %i.aj, align 4, !tbaa !59
  %i.bx = zext i32 %2 to i64
  %i.by = mul nuw nsw i64 %spec.select, %i.bx
  %i.bz = udiv i64 %i.by, %.sroa.0102.sroa.14.0.extract.shift
  %i.ca = trunc i64 %i.bz to i32
  %i.cb = getelementptr inbounds nuw i8, ptr %i.aj, i64 8 ; 2 uses
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !62
  %i.cd = add i32 %i.cc, %i.ca
  store i32 %i.cd, ptr %i.cb, align 4, !tbaa !62
  %i.ce = add i32 %i.am, 1
  %i.cf = tail call i32 @llvm.umin.i32(i32 %i.ce, i32 %.sroa.0102.sroa.14.0.extract.trunc)
  store i32 %i.cf, ptr %i.bu, align 4, !tbaa !61
  br label %.loopexit

bb.o:                                             ; preds = %.lr.ph.i, %bb.l, %bb.f
  %indvars.iv.next230 = add nuw nsw i64 %indvars.iv229, 1 ; 2 uses
  %exitcond234.not = icmp eq i64 %indvars.iv.next230, %wide.trip.count233
  br i1 %exitcond234.not, label %.loopexit, label %bb.f, !llvm.loop !102

.loopexit:                                        ; preds = %bb.o, %bb.a, %_ZN11duckdb_zstdL10isIncludedEPKvS1_m.exit.thread, %.critedge2, %.critedge
  %.0 = phi i32 [ %.1.lcssa, %.critedge ], [ %.3.lcssa, %.critedge2 ], [ %i.bv, %_ZN11duckdb_zstdL10isIncludedEPKvS1_m.exit.thread ], [ 0, %bb.a ], [ 0, %bb.o ]
  ret i32 %.0
}

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr noundef readonly captures(none), i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #13

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, ptr noundef captures(none)) local_unnamed_addr #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.vector.reduce.add.v2i64(<2 x i64>) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v32i32(<32 x i32>) #13

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #14

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #9 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nofree nounwind }
attributes #13 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #14 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #15 = { nounwind allocsize(0) }
attributes #16 = { nounwind }
attributes #17 = { cold nounwind }
attributes #18 = { cold }

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
!7 = !{!8, !4, i64 0}
!8 = !{!"_ZTSN11duckdb_zstd14ZDICT_params_tE", !4, i64 0, !4, i64 4, !4, i64 8}
!9 = !{!8, !4, i64 4}
!10 = !{!8, !4, i64 8}
!11 = !{!12, !12, i64 0}
!12 = !{!"p1 _ZTS8_IO_FILE", !13, i64 0}
!13 = !{!"any pointer", !5, i64 0}
!14 = !{!15, !15, i64 0}
!15 = !{!"long", !5, i64 0}
!16 = distinct !{!16, !17, !18, !19}
!17 = !{!"llvm.loop.mustprogress"}
!18 = !{!"llvm.loop.isvectorized", i32 1}
!19 = !{!"llvm.loop.unroll.runtime.disable"}
!20 = distinct !{!20, !17, !19, !18}
!21 = distinct !{!21, !17, !18, !19}
!22 = distinct !{!22, !17, !19, !18}
!23 = !{i64 0, i64 4, !3, i64 4, i64 4, !3, i64 8, i64 4, !3, i64 12, i64 4, !3, i64 16, i64 4, !3, i64 20, i64 4, !24, i64 24, i64 4, !3, i64 28, i64 4, !3, i64 32, i64 4, !3}
!24 = !{!25, !25, i64 0}
!25 = !{!"_ZTSN11duckdb_zstd13ZSTD_strategyE", !5, i64 0}
!26 = !{i64 0, i64 4, !3, i64 4, i64 4, !3, i64 8, i64 4, !3, i64 12, i64 4, !3, i64 16, i64 4, !3, i64 20, i64 4, !24}
!27 = !{!28, !30, i64 16}
!28 = !{!"_ZTSN11duckdb_zstd10seqStore_tE", !29, i64 0, !29, i64 8, !30, i64 16, !30, i64 24, !30, i64 32, !30, i64 40, !30, i64 48, !15, i64 56, !15, i64 64, !31, i64 72, !4, i64 76}
!29 = !{!"p1 _ZTSN11duckdb_zstd8seqDef_sE", !13, i64 0}
!30 = !{!"p1 omnipotent char", !13, i64 0}
!31 = !{!"_ZTSN11duckdb_zstd21ZSTD_longLengthType_eE", !5, i64 0}
!32 = !{!28, !30, i64 24}
!33 = !{!5, !5, i64 0}
!34 = distinct !{!34, !35}
!35 = !{!"llvm.loop.unroll.disable"}
!36 = distinct !{!36, !17}
!37 = !{!28, !29, i64 8}
!38 = !{!28, !29, i64 0}
!39 = !{!28, !30, i64 48}
!40 = distinct !{!40, !17}
!41 = distinct !{!41, !35}
!42 = !{!28, !30, i64 40}
!43 = distinct !{!43, !17}
!44 = distinct !{!44, !35}
!45 = !{!28, !30, i64 32}
!46 = distinct !{!46, !17}
!47 = distinct !{!47, !35}
!48 = !{!49, !4, i64 0}
!49 = !{!"_ZTSN11duckdb_zstd8seqDef_sE", !4, i64 0, !50, i64 4, !50, i64 6}
!50 = !{!"short", !5, i64 0}
!51 = distinct !{!51, !17}
!52 = distinct !{!52, !17}
!53 = distinct !{!53, !17, !18, !19}
!54 = distinct !{!54, !17, !19, !18}
!55 = distinct !{!55, !17, !18, !19}
!56 = distinct !{!56, !17, !19, !18}
!57 = distinct !{!57, !17, !18, !19}
!58 = distinct !{!58, !17, !19, !18}
!59 = !{!60, !4, i64 0}
!60 = !{!"_ZTSN11duckdb_zstd8dictItemE", !4, i64 0, !4, i64 4, !4, i64 8}
!61 = !{!60, !4, i64 4}
!62 = !{!60, !4, i64 8}
!63 = distinct !{!63, !17}
!64 = distinct !{!64, !17}
!65 = distinct !{!65, !35}
!66 = distinct !{!66, !17}
!67 = !{!50, !50, i64 0}
!68 = distinct !{!68, !17}
!69 = distinct !{!69, !17}
!70 = distinct !{!70, !17}
!71 = distinct !{!71, !35}
!72 = distinct !{!72, !17}
!73 = distinct !{!73, !17}
!74 = distinct !{!74, !17}
!75 = distinct !{!75, !17}
!76 = distinct !{!76, !17}
!77 = distinct !{!77, !17}
!78 = distinct !{!78, !17}
!79 = distinct !{!79, !17}
!80 = distinct !{!80, !17}
!81 = !{i64 0, i64 4, !3, i64 4, i64 4, !3, i64 8, i64 4, !3}
!82 = distinct !{!82, !17}
!83 = distinct !{!83, !17}
!84 = distinct !{!84, !17}
!85 = distinct !{!85, !17}
!86 = distinct !{!86, !35}
!87 = distinct !{!87, !17}
!88 = distinct !{!88, !17}
!89 = distinct !{!89, !35}
!90 = distinct !{!90, !17}
!91 = distinct !{!91, !17}
!92 = distinct !{!92, !17}
!93 = !{!94, !4, i64 4}
!94 = !{!"_ZTSN11duckdb_zstd24ZDICT_fastCover_params_tE", !4, i64 0, !4, i64 4, !4, i64 8, !4, i64 12, !4, i64 16, !95, i64 24, !4, i64 32, !4, i64 36, !4, i64 40, !8, i64 44}
!95 = !{!"double", !5, i64 0}
!96 = !{!94, !4, i64 12}
!97 = !{!94, !4, i64 44}
!98 = distinct !{!98, !17}
!99 = distinct !{!99, !17}
!100 = distinct !{!100, !17}
!101 = distinct !{!101, !17}
!102 = distinct !{!102, !17}
end_hunk_0
