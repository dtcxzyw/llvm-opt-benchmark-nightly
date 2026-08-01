inline.NumInlined: 722
inline.NumDeleted: 36
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 34
loop-unroll.NumUnrolled: 38
begin_hunk_0_@_ZN11duckdb_zstdL38HUF_decompress1X2_usingDTable_internalEPvmPKvmPKji:bb.a
  %.sroa.0.2.i38 = phi i64 [ %.sroa.0.7.i, %bb.ag ], [ %.sroa.0.0.i, %.preheader202.i ]
  %.sroa.31.2.i37 = phi i32 [ %i.jr, %bb.ag ], [ %.sroa.31.0.i, %.preheader202.i ] ; 5 uses
  %.not.i16.i = icmp ult ptr %.sroa.9790.2.i39, %i.d
  br i1 %.not.i16.i, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %.lr.ph
  %i.it = lshr i32 %.sroa.31.2.i37, 3
  %i.iu = and i32 %.sroa.31.2.i37, 7
  br label %_ZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tE.exit22.i

bb.ae:                                            ; preds = %.lr.ph
  %i.iv = icmp eq ptr %.sroa.9790.2.i39, %2
  br i1 %i.iv, label %.preheader.i, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.iw = lshr i32 %.sroa.31.2.i37, 3             ; 2 uses
  %i.ix = zext nneg i32 %i.iw to i64
  %i.iy = sub nsw i64 0, %i.ix
  %i.iz = getelementptr inbounds i8, ptr %.sroa.9790.2.i39, i64 %i.iy
  %i.ja = icmp uge ptr %i.iz, %2                  ; 2 uses
  %i.jb = ptrtoint ptr %.sroa.9790.2.i39 to i64
  %i.jc = sub i64 %i.jb, %i.io
  %i.jd = trunc i64 %i.jc to i32
  %.021.i18.i = select i1 %i.ja, i32 %i.iw, i32 %i.jd ; 2 uses
  %i.je = shl i32 %.021.i18.i, 3
  %i.jf = sub i32 %.sroa.31.2.i37, %i.je
  br label %_ZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tE.exit22.i

_ZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tE.exit22.i: ; preds = %bb.af, %bb.ad
  %.sroa.31.9.i = phi i32 [ %i.iu, %bb.ad ], [ %i.jf, %bb.af ] ; 3 uses
  %.pn358.in.i = phi i32 [ %i.it, %bb.ad ], [ %.021.i18.i, %bb.af ]
  %.022.i17.i = phi i1 [ true, %bb.ad ], [ %i.ja, %bb.af ]
  %.pn358.i = zext i32 %.pn358.in.i to i64
  %.pn357.i = sub nsw i64 0, %.pn358.i
  %.sroa.9790.7.i = getelementptr inbounds i8, ptr %.sroa.9790.2.i39, i64 %.pn357.i ; 3 uses
  %.sroa.0.7.i = load i64, ptr %.sroa.9790.7.i, align 1, !tbaa !32 ; 4 uses
  %i.jg = icmp ule ptr %.5.i.i40, %i.in
  %i.jh = and i1 %i.jg, %.022.i17.i
  br i1 %i.jh, label %bb.ag, label %.preheader.i

.preheader.i:                                     ; preds = %bb.ag, %bb.ae, %_ZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tE.exit22.i, %.preheader202.i
  %.5.i.i.lcssa = phi ptr [ %.4.i.i, %.preheader202.i ], [ %.5.i.i40, %_ZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tE.exit22.i ], [ %.5.i.i40, %bb.ae ], [ %i.jv, %bb.ag ] ; 3 uses
  %.sroa.9790.7330.i = phi ptr [ @_ZZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tEE10zeroFilled, %.preheader202.i ], [ %.sroa.9790.7.i, %_ZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tE.exit22.i ], [ %2, %bb.ae ], [ @_ZZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tEE10zeroFilled, %bb.ag ] ; 2 uses
  %.sroa.0.7329.i = phi i64 [ %.sroa.0.0.i, %.preheader202.i ], [ %.sroa.0.7.i, %_ZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tE.exit22.i ], [ %.sroa.0.2.i38, %bb.ae ], [ %.sroa.0.7.i, %bb.ag ] ; 3 uses
  %.sroa.31.9328.i = phi i32 [ %.sroa.31.0.i, %.preheader202.i ], [ %.sroa.31.9.i, %_ZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tE.exit22.i ], [ %.sroa.31.2.i37, %bb.ae ], [ %i.jr, %bb.ag ] ; 2 uses
  %.not.i4245.i = icmp ugt ptr %.5.i.i.lcssa, %i.in
  br i1 %.not.i4245.i, label %.loopexit.i, label %.lr.ph248.i

bb.ag:                                            ; preds = %_ZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tE.exit22.i
  %i.ji = and i32 %.sroa.31.9.i, 63
  %i.jj = zext nneg i32 %i.ji to i64
  %i.jk = shl i64 %.sroa.0.7.i, %i.jj
  %i.jl = lshr i64 %i.jk, %i.ir
  %i.jm = getelementptr inbounds nuw [4 x i8], ptr %i.ii, i64 %i.jl ; 3 uses
  %i.jn = load i16, ptr %i.jm, align 2
  store i16 %i.jn, ptr %.5.i.i40, align 1
  %i.jo = getelementptr inbounds nuw i8, ptr %i.jm, i64 2
  %i.jp = load i8, ptr %i.jo, align 2, !tbaa !97
  %i.jq = zext i8 %i.jp to i32
  %i.jr = add i32 %.sroa.31.9.i, %i.jq            ; 3 uses
  %i.js = getelementptr inbounds nuw i8, ptr %i.jm, i64 3
  %i.jt = load i8, ptr %i.js, align 1, !tbaa !100
  %i.ju = zext i8 %i.jt to i64
  %i.jv = getelementptr inbounds nuw i8, ptr %.5.i.i40, i64 %i.ju ; 2 uses
  %i.jw = icmp ugt i32 %i.jr, 64
  br i1 %i.jw, label %.preheader.i, label %.lr.ph, !prof !101, !llvm.loop !105

.lr.ph248.i:                                      ; preds = %.preheader.i, %.lr.ph248.i
  %.6.i247.i = phi ptr [ %i.kk, %.lr.ph248.i ], [ %.5.i.i.lcssa, %.preheader.i ] ; 2 uses
  %.sroa.31.3246.i = phi i32 [ %i.kg, %.lr.ph248.i ], [ %.sroa.31.9328.i, %.preheader.i ] ; 2 uses
  %i.jx = and i32 %.sroa.31.3246.i, 63
  %i.jy = zext nneg i32 %i.jx to i64
  %i.jz = shl i64 %.sroa.0.7329.i, %i.jy
  %i.ka = lshr i64 %i.jz, %i.ir
  %i.kb = getelementptr inbounds nuw [4 x i8], ptr %i.ii, i64 %i.ka ; 3 uses
  %i.kc = load i16, ptr %i.kb, align 2
  store i16 %i.kc, ptr %.6.i247.i, align 1
  %i.kd = getelementptr inbounds nuw i8, ptr %i.kb, i64 2
  %i.ke = load i8, ptr %i.kd, align 2, !tbaa !97
  %i.kf = zext i8 %i.ke to i32
  %i.kg = add i32 %.sroa.31.3246.i, %i.kf         ; 2 uses
  %i.kh = getelementptr inbounds nuw i8, ptr %i.kb, i64 3
  %i.ki = load i8, ptr %i.kh, align 1, !tbaa !100
  %i.kj = zext i8 %i.ki to i64
  %i.kk = getelementptr inbounds nuw i8, ptr %.6.i247.i, i64 %i.kj ; 3 uses
  %.not.i4.i = icmp ugt ptr %i.kk, %i.in
  br i1 %.not.i4.i, label %.loopexit.i, label %.lr.ph248.i, !llvm.loop !106

.loopexit.i:                                      ; preds = %.lr.ph248.i, %.preheader.i, %_ZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tE.exit29.i
  %.sroa.31.1.i = phi i32 [ %.sroa.31.0.i, %_ZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tE.exit29.i ], [ %.sroa.31.9328.i, %.preheader.i ], [ %i.kg, %.lr.ph248.i ] ; 6 uses
  %.sroa.0.1.i = phi i64 [ %.sroa.0.0.i, %_ZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tE.exit29.i ], [ %.sroa.0.7329.i, %.preheader.i ], [ %.sroa.0.7329.i, %.lr.ph248.i ]
  %.sroa.9790.1.i = phi ptr [ %.sroa.9790.0.i, %_ZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tE.exit29.i ], [ %.sroa.9790.7330.i, %.preheader.i ], [ %.sroa.9790.7330.i, %.lr.ph248.i ]
  %.7.i.i = phi ptr [ %.4.i.i, %_ZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tE.exit29.i ], [ %.5.i.i.lcssa, %.preheader.i ], [ %i.kk, %.lr.ph248.i ] ; 2 uses
  %i.kl = icmp ult ptr %.7.i.i, %i.ij
  br i1 %i.kl, label %bb.ah, label %_ZN11duckdb_zstdL18HUF_decodeStreamX2EPhPNS_13BIT_DStream_tES0_PKNS_10HUF_DEltX2Ej.exit.i

bb.ah:                                            ; preds = %.loopexit.i
  %i.km = and i32 %.sroa.31.1.i, 63
  %i.kn = zext nneg i32 %i.km to i64
  %i.ko = shl i64 %.sroa.0.1.i, %i.kn
  %i.kp = sub nsw i32 0, %.sroa.3.0.extract.shift.i304.i
  %i.kq = and i32 %i.kp, 63
  %i.kr = zext nneg i32 %i.kq to i64
  %i.ks = lshr i64 %i.ko, %i.kr
  %i.kt = getelementptr inbounds nuw [4 x i8], ptr %i.ii, i64 %i.ks ; 4 uses
  %i.ku = load i8, ptr %i.kt, align 2
  store i8 %i.ku, ptr %.7.i.i, align 1
  %i.kv = getelementptr inbounds nuw i8, ptr %i.kt, i64 3
  %i.kw = load i8, ptr %i.kv, align 1, !tbaa !100
  %i.kx = icmp eq i8 %i.kw, 1
  br i1 %i.kx, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  %i.ky = getelementptr inbounds nuw i8, ptr %i.kt, i64 2
  %i.kz = load i8, ptr %i.ky, align 2, !tbaa !97
  %i.la = zext i8 %i.kz to i32
  %i.lb = add i32 %.sroa.31.1.i, %i.la
  br label %_ZN11duckdb_zstdL18HUF_decodeStreamX2EPhPNS_13BIT_DStream_tES0_PKNS_10HUF_DEltX2Ej.exit.i

bb.aj:                                            ; preds = %bb.ah
  %i.lc = icmp ult i32 %.sroa.31.1.i, 64
  br i1 %i.lc, label %bb.ak, label %_ZN11duckdb_zstdL18HUF_decodeStreamX2EPhPNS_13BIT_DStream_tES0_PKNS_10HUF_DEltX2Ej.exit.i

bb.ak:                                            ; preds = %bb.aj
  %i.ld = getelementptr inbounds nuw i8, ptr %i.kt, i64 2
  %i.le = load i8, ptr %i.ld, align 2, !tbaa !97
  %i.lf = zext i8 %i.le to i32
  %i.lg = add nuw nsw i32 %.sroa.31.1.i, %i.lf
  %spec.select.i = tail call i32 @llvm.umin.i32(i32 %i.lg, i32 64)
  br label %_ZN11duckdb_zstdL18HUF_decodeStreamX2EPhPNS_13BIT_DStream_tES0_PKNS_10HUF_DEltX2Ej.exit.i

_ZN11duckdb_zstdL18HUF_decodeStreamX2EPhPNS_13BIT_DStream_tES0_PKNS_10HUF_DEltX2Ej.exit.i: ; preds = %bb.ak, %bb.aj, %bb.ai, %.loopexit.i
  %.sroa.31.6.i = phi i32 [ %.sroa.31.1.i, %.loopexit.i ], [ %i.lb, %bb.ai ], [ %.sroa.31.1.i, %bb.aj ], [ %spec.select.i, %bb.ak ]
  %i.lh = icmp eq ptr %.sroa.9790.1.i, %2
  %.sroa.31.6.fr.i = freeze i32 %.sroa.31.6.i
  %.not.i = icmp eq i32 %.sroa.31.6.fr.i, 64
  %or.cond.i = and i1 %i.lh, %.not.i
  %spec.select201.i = select i1 %or.cond.i, i64 %1, i64 -20
  br label %_ZN11duckdb_zstdL46HUF_decompress1X2_usingDTable_internal_defaultEPvmPKvmPKj.exit

_ZN11duckdb_zstdL46HUF_decompress1X2_usingDTable_internal_defaultEPvmPKvmPKj.exit: ; preds = %_ZN11duckdb_zstdL18HUF_decodeStreamX2EPhPNS_13BIT_DStream_tES0_PKNS_10HUF_DEltX2Ej.exit.i, %_ZN11duckdb_zstdL15BIT_initDStreamEPNS_13BIT_DStream_tEPKvm.exit.i, %bb.m, %bb.e, %bb.c, %bb.b
  %.0 = phi i64 [ %i.b, %bb.b ], [ %3, %_ZN11duckdb_zstdL15BIT_initDStreamEPNS_13BIT_DStream_tEPKvm.exit.i ], [ %spec.select201.i, %_ZN11duckdb_zstdL18HUF_decodeStreamX2EPhPNS_13BIT_DStream_tES0_PKNS_10HUF_DEltX2Ej.exit.i ], [ -1, %bb.e ], [ -20, %bb.m ], [ -72, %bb.c ]
  ret i64 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef range(i32 0, 2) i32 @_ZN11duckdb_zstd17HUF_selectDecoderEmm(i64 noundef %0, i64 noundef %1) local_unnamed_addr #5 {
bb.a:
  %.not = icmp ult i64 %1, %0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.a = shl i64 %1, 4
  %i.b = udiv i64 %i.a, %0
  %i.c = and i64 %i.b, 4294967295
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.d = phi i64 [ %i.c, %bb.b ], [ 15, %bb.a ]
  %i.e = lshr i64 %0, 8
  %i.f = trunc i64 %i.e to i32                    ; 2 uses
  %i.g = getelementptr inbounds nuw [16 x i8], ptr @_ZN11duckdb_zstdL8algoTimeE, i64 %i.d ; 4 uses
  %i.h = load i32, ptr %i.g, align 16, !tbaa !107
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 4
  %i.j = load i32, ptr %i.i, align 4, !tbaa !109
  %i.k = mul i32 %i.j, %i.f
  %i.l = add i32 %i.k, %i.h
  %i.m = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.n = load i32, ptr %i.m, align 8, !tbaa !107
  %i.o = getelementptr inbounds nuw i8, ptr %i.g, i64 12
  %i.p = load i32, ptr %i.o, align 4, !tbaa !109
  %i.q = mul i32 %i.p, %i.f
  %i.r = add i32 %i.q, %i.n                       ; 2 uses
  %i.s = lshr i32 %i.r, 5
  %i.t = add i32 %i.s, %i.r
  %i.u = icmp ult i32 %i.t, %i.l
  %i.v = zext i1 %i.u to i32
  ret i32 %i.v
}

; Function Attrs: mustprogress uwtable
define noundef i64 @_ZN11duckdb_zstd26HUF_decompress1X_DCtx_wkspEPjPvmPKvmS1_mi(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4, ptr noundef %5, i64 noundef %6, i32 noundef %7) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq i64 %2, 0
  br i1 %i.a, label %_ZN11duckdb_zstd27HUF_decompress1X2_DCtx_wkspEPjPvmPKvmS1_mi.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = icmp ugt i64 %4, %2
  br i1 %i.b, label %_ZN11duckdb_zstd27HUF_decompress1X2_DCtx_wkspEPjPvmPKvmS1_mi.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = icmp eq i64 %4, %2
  br i1 %i.c, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %1, ptr align 1 %3, i64 %2, i1 false)
  br label %_ZN11duckdb_zstd27HUF_decompress1X2_DCtx_wkspEPjPvmPKvmS1_mi.exit

bb.e:                                             ; preds = %bb.c
  %i.d = icmp eq i64 %4, 1
  br i1 %i.d, label %bb.f, label %8

bb.f:                                             ; preds = %bb.e
  %i.e = load i8, ptr %3, align 1, !tbaa !7
  tail call void @llvm.memset.p0.i64(ptr align 1 %1, i8 %i.e, i64 %2, i1 false)
  br label %_ZN11duckdb_zstd27HUF_decompress1X2_DCtx_wkspEPjPvmPKvmS1_mi.exit

8:                                                ; preds = %bb.e
  %.not.i = icmp ult i64 %4, %2
  br i1 %.not.i, label %9, label %_ZN11duckdb_zstd17HUF_selectDecoderEmm.exit

9:                                                ; preds = %8
  %10 = shl i64 %4, 4
  %11 = udiv i64 %10, %2
  %12 = and i64 %11, 4294967295
  br label %_ZN11duckdb_zstd17HUF_selectDecoderEmm.exit

_ZN11duckdb_zstd17HUF_selectDecoderEmm.exit:      ; preds = %8, %9
  %13 = phi i64 [ %12, %9 ], [ 15, %8 ]
  %i.f = lshr i64 %2, 8
  %i.g = trunc i64 %i.f to i32                    ; 2 uses
  %i.h = getelementptr inbounds nuw [16 x i8], ptr @_ZN11duckdb_zstdL8algoTimeE, i64 %13 ; 4 uses
  %i.i = load i32, ptr %i.h, align 16, !tbaa !107
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 4
  %i.k = load i32, ptr %i.j, align 4, !tbaa !109
  %i.l = mul i32 %i.k, %i.g
  %i.m = add i32 %i.l, %i.i
  %i.n = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.o = load i32, ptr %i.n, align 8, !tbaa !107
  %i.p = getelementptr inbounds nuw i8, ptr %i.h, i64 12
  %i.q = load i32, ptr %i.p, align 4, !tbaa !109
  %i.r = mul i32 %i.q, %i.g
  %i.s = add i32 %i.r, %i.o                       ; 2 uses
  %i.t = lshr i32 %i.s, 5
  %i.u = add i32 %i.t, %i.s
  %.not = icmp ult i32 %i.u, %i.m
  br i1 %.not, label %bb.g, label %bb.j

bb.g:                                             ; preds = %_ZN11duckdb_zstd17HUF_selectDecoderEmm.exit
  %i.v = tail call noundef i64 @_ZN11duckdb_zstd21HUF_readDTableX2_wkspEPjPKvmPvmi(ptr noundef %0, ptr noundef %3, i64 noundef %4, ptr noundef %5, i64 noundef %6, i32 noundef %7) ; 5 uses
  %i.w = icmp ult i64 %i.v, -119
  br i1 %i.w, label %bb.h, label %_ZN11duckdb_zstd27HUF_decompress1X2_DCtx_wkspEPjPvmPKvmS1_mi.exit

bb.h:                                             ; preds = %bb.g
  %.not23.i = icmp ult i64 %i.v, %4
  br i1 %.not23.i, label %bb.i, label %_ZN11duckdb_zstd27HUF_decompress1X2_DCtx_wkspEPjPvmPKvmS1_mi.exit

bb.i:                                             ; preds = %bb.h
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 %i.v
  %i.y = sub nuw i64 %4, %i.v
  %i.z = tail call fastcc noundef i64 @_ZN11duckdb_zstdL38HUF_decompress1X2_usingDTable_internalEPvmPKvmPKji(ptr noundef %1, i64 noundef %2, ptr noundef %i.x, i64 noundef %i.y, ptr noundef %0, i32 noundef %7)
  br label %_ZN11duckdb_zstd27HUF_decompress1X2_DCtx_wkspEPjPvmPKvmS1_mi.exit

bb.j:                                             ; preds = %_ZN11duckdb_zstd17HUF_selectDecoderEmm.exit
  %i.aa = tail call noundef i64 @_ZN11duckdb_zstd21HUF_readDTableX1_wkspEPjPKvmPvmi(ptr noundef %0, ptr noundef %3, i64 noundef %4, ptr noundef %5, i64 noundef %6, i32 noundef %7) ; 5 uses
  %i.ab = icmp ult i64 %i.aa, -119
  br i1 %i.ab, label %bb.k, label %_ZN11duckdb_zstd27HUF_decompress1X2_DCtx_wkspEPjPvmPKvmS1_mi.exit

bb.k:                                             ; preds = %bb.j
  %.not23.i36 = icmp ult i64 %i.aa, %4
  br i1 %.not23.i36, label %bb.l, label %_ZN11duckdb_zstd27HUF_decompress1X2_DCtx_wkspEPjPvmPKvmS1_mi.exit

bb.l:                                             ; preds = %bb.k
  %i.ac = getelementptr inbounds nuw i8, ptr %3, i64 %i.aa
  %i.ad = sub nuw i64 %4, %i.aa
  %i.ae = tail call fastcc noundef i64 @_ZN11duckdb_zstdL38HUF_decompress1X1_usingDTable_internalEPvmPKvmPKji(ptr noundef %1, i64 noundef %2, ptr noundef %i.ac, i64 noundef %i.ad, ptr noundef %0, i32 noundef %7)
  br label %_ZN11duckdb_zstd27HUF_decompress1X2_DCtx_wkspEPjPvmPKvmS1_mi.exit

_ZN11duckdb_zstd27HUF_decompress1X2_DCtx_wkspEPjPvmPKvmS1_mi.exit: ; preds = %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.b, %bb.a, %bb.f, %bb.d
  %.0 = phi i64 [ -20, %bb.b ], [ -70, %bb.a ], [ %2, %bb.d ], [ %2, %bb.f ], [ -72, %bb.h ], [ %i.z, %bb.i ], [ %i.v, %bb.g ], [ %i.ae, %bb.l ], [ %i.aa, %bb.j ], [ -72, %bb.k ]
  ret i64 %.0
}

; Function Attrs: mustprogress uwtable
define noundef i64 @_ZN11duckdb_zstd27HUF_decompress1X1_DCtx_wkspEPjPvmPKvmS1_mi(ptr nofree noundef captures(none) %0, ptr nofree noundef writeonly captures(address) %1, i64 noundef %2, ptr noundef %3, i64 noundef %4, ptr noundef %5, i64 noundef %6, i32 noundef %7) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef i64 @_ZN11duckdb_zstd21HUF_readDTableX1_wkspEPjPKvmPvmi(ptr noundef %0, ptr noundef %3, i64 noundef %4, ptr noundef %5, i64 noundef %6, i32 noundef %7) ; 5 uses
  %i.b = icmp ult i64 %i.a, -119
  br i1 %i.b, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %.not23 = icmp ult i64 %i.a, %4
  br i1 %.not23, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 %i.a
  %i.d = sub nuw i64 %4, %i.a
  %i.e = tail call fastcc noundef i64 @_ZN11duckdb_zstdL38HUF_decompress1X1_usingDTable_internalEPvmPKvmPKji(ptr noundef %1, i64 noundef %2, ptr noundef %i.c, i64 noundef %i.d, ptr noundef %0, i32 noundef %7)
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.a, %bb.c
  %.0 = phi i64 [ %i.e, %bb.c ], [ %i.a, %bb.a ], [ -72, %bb.b ]
  ret i64 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define noundef i64 @_ZN11duckdb_zstd28HUF_decompress1X_usingDTableEPvmPKvmPKji(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, ptr nofree noundef readonly captures(none) %4, i32 noundef %5) local_unnamed_addr #4 {
bb.a:
  %.val = load i32, ptr %4, align 4
  %i.a = and i32 %.val, 65280
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call fastcc noundef i64 @_ZN11duckdb_zstdL38HUF_decompress1X2_usingDTable_internalEPvmPKvmPKji(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef nonnull %4, i32 noundef %5)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.c = tail call fastcc noundef i64 @_ZN11duckdb_zstdL38HUF_decompress1X1_usingDTable_internalEPvmPKvmPKji(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef nonnull %4, i32 noundef %5)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.d = phi i64 [ %i.b, %bb.b ], [ %i.c, %bb.c ]
  ret i64 %i.d
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc noundef i64 @_ZN11duckdb_zstdL38HUF_decompress1X1_usingDTable_internalEPvmPKvmPKji(ptr nofree noundef writeonly captures(address) %0, i64 noundef %1, ptr nofree noundef readonly captures(address) %2, i64 noundef %3, ptr nofree noundef readonly captures(none) %4, i32 noundef %5) unnamed_addr #6 {
bb.a:
  %i.a = and i32 %5, 1
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call fastcc noundef i64 @_ZN11duckdb_zstdL43HUF_decompress1X1_usingDTable_internal_bmi2EPvmPKvmPKj(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef %4)
  br label %_ZN11duckdb_zstdL46HUF_decompress1X1_usingDTable_internal_defaultEPvmPKvmPKj.exit

bb.c:                                             ; preds = %bb.a
  %i.c = ptrtoaddr ptr %0 to i64                  ; 2 uses
  %.idx.i.i = tail call i64 @llvm.smax.i64(i64 %1, i64 0) ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 %.idx.i.i ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 4 ; 7 uses
  %.val.i = load i32, ptr %4, align 4
  %.sroa.3.0.extract.shift.i.i = lshr i32 %.val.i, 16 ; 2 uses
  %i.f = icmp eq i64 %3, 0
  br i1 %i.f, label %_ZN11duckdb_zstdL46HUF_decompress1X1_usingDTable_internal_defaultEPvmPKvmPKj.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = icmp ugt i64 %3, 7
  br i1 %i.g, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %.ptr.i = getelementptr inbounds i8, ptr %2, i64 %3
  %i.h = getelementptr i8, ptr %.ptr.i, i64 -1
  %i.i = load i8, ptr %i.h, align 1, !tbaa !7     ; 2 uses
  %.not50.i.i = icmp eq i8 %i.i, 0
  br i1 %.not50.i.i, label %_ZN11duckdb_zstdL46HUF_decompress1X1_usingDTable_internal_defaultEPvmPKvmPKj.exit, label %_ZN11duckdb_zstdL15BIT_initDStreamEPNS_13BIT_DStream_tEPKvm.exit.i

bb.f:                                             ; preds = %bb.d
  %i.j = load i8, ptr %2, align 1, !tbaa !7
  %i.k = zext i8 %i.j to i64                      ; 7 uses
  switch i64 %3, label %bb.m [
    i64 7, label %bb.g
    i64 6, label %bb.h
    i64 5, label %bb.i
    i64 4, label %bb.j
    i64 3, label %bb.k
    i64 2, label %bb.l
  ]

bb.g:                                             ; preds = %bb.f
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 6
  %i.m = load i8, ptr %i.l, align 1, !tbaa !7
  %i.n = zext i8 %i.m to i64
  %i.o = shl nuw nsw i64 %i.n, 48
  %i.p = or disjoint i64 %i.o, %i.k
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.q = phi i64 [ %i.p, %bb.g ], [ %i.k, %bb.f ]
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 5
  %i.s = load i8, ptr %i.r, align 1, !tbaa !7
  %i.t = zext i8 %i.s to i64
  %i.u = shl nuw nsw i64 %i.t, 40
  %i.v = add nuw nsw i64 %i.u, %i.q
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.f
  %i.w = phi i64 [ %i.v, %bb.h ], [ %i.k, %bb.f ]
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.y = load i8, ptr %i.x, align 1, !tbaa !7
  %i.z = zext i8 %i.y to i64
  %i.aa = shl nuw nsw i64 %i.z, 32
  %i.ab = add nuw nsw i64 %i.aa, %i.w
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.f
  %i.ac = phi i64 [ %i.ab, %bb.i ], [ %i.k, %bb.f ]
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 3
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !7
  %i.af = zext i8 %i.ae to i64
  %i.ag = shl nuw nsw i64 %i.af, 24
  %i.ah = add nuw nsw i64 %i.ag, %i.ac
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.f
  %i.ai = phi i64 [ %i.ah, %bb.j ], [ %i.k, %bb.f ]
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 2
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !7
  %i.al = zext i8 %i.ak to i64
  %i.am = shl nuw nsw i64 %i.al, 16
  %i.an = add nuw nsw i64 %i.am, %i.ai
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.f
  %i.ao = phi i64 [ %i.an, %bb.k ], [ %i.k, %bb.f ]
  %i.ap = getelementptr inbounds nuw i8, ptr %2, i64 1
  %i.aq = load i8, ptr %i.ap, align 1, !tbaa !7
  %i.ar = zext i8 %i.aq to i64
  %i.as = shl nuw nsw i64 %i.ar, 8
  %i.at = add nuw nsw i64 %i.as, %i.ao
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.f
  %.sroa.0.4.i = phi i64 [ %i.k, %bb.f ], [ %i.at, %bb.l ] ; 2 uses
  %i.au = getelementptr i8, ptr %2, i64 %3
  %i.av = getelementptr i8, ptr %i.au, i64 -1
  %i.aw = load i8, ptr %i.av, align 1, !tbaa !7   ; 2 uses
  %.not.i16.i = icmp eq i8 %i.aw, 0
  br i1 %.not.i16.i, label %_ZN11duckdb_zstdL46HUF_decompress1X1_usingDTable_internal_defaultEPvmPKvmPKj.exit, label %.thread.i

_ZN11duckdb_zstdL15BIT_initDStreamEPNS_13BIT_DStream_tEPKvm.exit.i: ; preds = %bb.e
end_hunk_0
