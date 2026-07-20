inline.NumInlined: 262
inline.NumDeleted: 50
loop-unroll.NumCompletelyUnrolled: 19
loop-unroll.NumRuntimeUnrolled: 13
loop-unroll.NumUnrolled: 36
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"struct.duckdb_zstd::rawSeqStore_t" = type { ptr, i64, i64, i64, i64 }
%"struct.duckdb_zstd::repcodes_s" = type { [3 x i32] }
%"struct.duckdb_zstd::ZSTD_optLdm_t" = type { %"struct.duckdb_zstd::rawSeqStore_t", i32, i32, i32 }

@_ZN11duckdb_zstdL16kNullRawSeqStoreE = internal unnamed_addr constant %"struct.duckdb_zstd::rawSeqStore_t" zeroinitializer, align 8
@__const._ZN11duckdb_zstdL26ZSTD_selectBtGetAllMatchesEPKNS_17ZSTD_matchState_tENS_15ZSTD_dictMode_eE.getAllMatchesFns = private unnamed_addr constant [3 x [4 x ptr]] [[4 x ptr] [ptr @_ZN11duckdb_zstdL29ZSTD_btGetAllMatches_noDict_3EPNS_12ZSTD_match_tEPNS_17ZSTD_matchState_tEPjPKhS6_PKjjj, ptr @_ZN11duckdb_zstdL29ZSTD_btGetAllMatches_noDict_4EPNS_12ZSTD_match_tEPNS_17ZSTD_matchState_tEPjPKhS6_PKjjj, ptr @_ZN11duckdb_zstdL29ZSTD_btGetAllMatches_noDict_5EPNS_12ZSTD_match_tEPNS_17ZSTD_matchState_tEPjPKhS6_PKjjj, ptr @_ZN11duckdb_zstdL29ZSTD_btGetAllMatches_noDict_6EPNS_12ZSTD_match_tEPNS_17ZSTD_matchState_tEPjPKhS6_PKjjj], [4 x ptr] [ptr @_ZN11duckdb_zstdL30ZSTD_btGetAllMatches_extDict_3EPNS_12ZSTD_match_tEPNS_17ZSTD_matchState_tEPjPKhS6_PKjjj, ptr @_ZN11duckdb_zstdL30ZSTD_btGetAllMatches_extDict_4EPNS_12ZSTD_match_tEPNS_17ZSTD_matchState_tEPjPKhS6_PKjjj, ptr @_ZN11duckdb_zstdL30ZSTD_btGetAllMatches_extDict_5EPNS_12ZSTD_match_tEPNS_17ZSTD_matchState_tEPjPKhS6_PKjjj, ptr @_ZN11duckdb_zstdL30ZSTD_btGetAllMatches_extDict_6EPNS_12ZSTD_match_tEPNS_17ZSTD_matchState_tEPjPKhS6_PKjjj], [4 x ptr] [ptr @_ZN11duckdb_zstdL37ZSTD_btGetAllMatches_dictMatchState_3EPNS_12ZSTD_match_tEPNS_17ZSTD_matchState_tEPjPKhS6_PKjjj, ptr @_ZN11duckdb_zstdL37ZSTD_btGetAllMatches_dictMatchState_4EPNS_12ZSTD_match_tEPNS_17ZSTD_matchState_tEPjPKhS6_PKjjj, ptr @_ZN11duckdb_zstdL37ZSTD_btGetAllMatches_dictMatchState_5EPNS_12ZSTD_match_tEPNS_17ZSTD_matchState_tEPjPKhS6_PKjjj, ptr @_ZN11duckdb_zstdL37ZSTD_btGetAllMatches_dictMatchState_6EPNS_12ZSTD_match_tEPNS_17ZSTD_matchState_tEPjPKhS6_PKjjj]], align 16
@__const._ZN11duckdb_zstdL17ZSTD_rescaleFreqsEPNS_10optState_tEPKhmi.baseLLfreqs = private unnamed_addr constant [36 x i32] [i32 4, i32 2, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1], align 16
@__const._ZN11duckdb_zstdL17ZSTD_rescaleFreqsEPNS_10optState_tEPKhmi.baseOFCfreqs = private unnamed_addr constant [32 x i32] [i32 6, i32 2, i32 1, i32 1, i32 2, i32 3, i32 4, i32 4, i32 4, i32 3, i32 2, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1], align 16
@_ZN11duckdb_zstdL7LL_bitsE = internal unnamed_addr constant [36 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\01\01\01\02\02\03\03\04\06\07\08\09\0A\0B\0C\0D\0E\0F\10", align 16
@_ZZN11duckdb_zstdL11ZSTD_LLcodeEjE7LL_Code = internal unnamed_addr constant [64 x i8] c"\00\01\02\03\04\05\06\07\08\09\0A\0B\0C\0D\0E\0F\10\10\11\11\12\12\13\13\14\14\14\14\15\15\15\15\16\16\16\16\16\16\16\16\17\17\17\17\17\17\17\17\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18", align 16
@_ZN11duckdb_zstdL7ML_bitsE = internal unnamed_addr constant [53 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\01\01\01\02\02\03\03\04\04\05\07\08\09\0A\0B\0C\0D\0E\0F\10", align 16
@_ZZN11duckdb_zstdL11ZSTD_MLcodeEjE7ML_Code = internal unnamed_addr constant [128 x i8] c"\00\01\02\03\04\05\06\07\08\09\0A\0B\0C\0D\0E\0F\10\11\12\13\14\15\16\17\18\19\1A\1B\1C\1D\1E\1F  !!\22\22##$$$$%%%%&&&&&&&&''''''''(((((((((((((((())))))))))))))))********************************", align 16

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @_ZN11duckdb_zstd15ZSTD_updateTreeEPNS_17ZSTD_matchState_tEPKhS3_(ptr nofree noundef captures(none) %0, ptr noundef %1, ptr nofree noundef readnone captures(address) %2) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.b = load i32, ptr %i.a, align 8, !tbaa !7
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !20   ; 2 uses
  %i.e = ptrtoint ptr %1 to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = trunc i64 %i.g to i32                    ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 2 uses
  %i.j = load i32, ptr %i.i, align 4, !tbaa !21   ; 2 uses
  %i.k = icmp ult i32 %i.j, %i.h
  br i1 %i.k, label %.lr.ph, label %_ZN11duckdb_zstdL24ZSTD_updateTree_internalEPNS_17ZSTD_matchState_tEPKhS3_jNS_15ZSTD_dictMode_eE.exit

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.0.i4 = phi i32 [ %i.o, %.lr.ph ], [ %i.j, %bb.a ] ; 2 uses
  %i.l = zext i32 %.0.i4 to i64
  %i.m = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.l
  %i.n = tail call fastcc noundef i32 @_ZN11duckdb_zstdL14ZSTD_insertBt1EPKNS_17ZSTD_matchState_tEPKhS4_jji(ptr noundef nonnull %0, ptr noundef %i.m, ptr noundef %2, i32 noundef %i.h, i32 noundef %i.b, i32 noundef 0)
  %i.o = add i32 %i.n, %.0.i4                     ; 2 uses
  %i.p = icmp ult i32 %i.o, %i.h
  br i1 %i.p, label %.lr.ph, label %_ZN11duckdb_zstdL24ZSTD_updateTree_internalEPNS_17ZSTD_matchState_tEPKhS3_jNS_15ZSTD_dictMode_eE.exit, !llvm.loop !22

_ZN11duckdb_zstdL24ZSTD_updateTree_internalEPNS_17ZSTD_matchState_tEPKhS3_jNS_15ZSTD_dictMode_eE.exit: ; preds = %.lr.ph, %bb.a
  store i32 %i.h, ptr %i.i, align 4, !tbaa !21
  ret void
}

; Function Attrs: mustprogress uwtable
define noundef i64 @_ZN11duckdb_zstd24ZSTD_compressBlock_btoptEPNS_17ZSTD_matchState_tEPNS_10seqStore_tEPjPKvm(ptr noundef initializes((224, 228)) %0, ptr nofree noundef captures(none) %1, ptr noundef %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #1 {
bb.a:
  %i.a = tail call fastcc noundef i64 @_ZN11duckdb_zstdL23ZSTD_compressBlock_opt0EPNS_17ZSTD_matchState_tEPNS_10seqStore_tEPjPKvmNS_15ZSTD_dictMode_eE(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i64 noundef %4, i32 noundef 0)
  ret i64 %i.a
}

; Function Attrs: mustprogress uwtable
define internal fastcc noundef i64 @_ZN11duckdb_zstdL23ZSTD_compressBlock_opt0EPNS_17ZSTD_matchState_tEPNS_10seqStore_tEPjPKvmNS_15ZSTD_dictMode_eE(ptr noundef initializes((224, 228)) %0, ptr nofree noundef captures(none) %1, ptr noundef %2, ptr noundef %3, i64 noundef %4, i32 noundef range(i32 0, 3) %5) unnamed_addr #2 {
bb.a:
  %6 = alloca %"struct.duckdb_zstd::repcodes_s", align 8 ; 11 uses
  %7 = alloca %"struct.duckdb_zstd::repcodes_s", align 8 ; 11 uses
  %i.a = alloca i32, align 4                      ; 5 uses
  %.sroa.19.i = alloca [3 x i32], align 4         ; 6 uses
  %8 = alloca %"struct.duckdb_zstd::ZSTD_optLdm_t", align 8 ; 9 uses
  %i.b = alloca i32, align 4                      ; 7 uses
  %i.c = alloca i32, align 4                      ; 7 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 %4 ; 6 uses
  %i.f = getelementptr inbounds i8, ptr %i.e, i64 -8 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !20
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.j = load i32, ptr %i.i, align 8, !tbaa !24
  %i.k = zext i32 %i.j to i64
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.k
  %i.m = getelementptr i8, ptr %0, i64 272
  %.val = load i32, ptr %i.m, align 8, !tbaa !7   ; 4 uses
  %i.n = icmp ult i32 %.val, 3
  %i.o = add i32 %.val, -6
  %brmerge.i = icmp ult i32 %i.o, -3
  %.mux.i = select i1 %i.n, i64 0, i64 3
  %i.p = add nsw i32 %.val, -3
  %i.q = zext nneg i32 %i.p to i64
  %i.r = select i1 %brmerge.i, i64 %.mux.i, i64 %i.q
  %i.s = zext nneg i32 %5 to i64
  %i.t = getelementptr inbounds nuw [32 x i8], ptr @__const._ZN11duckdb_zstdL26ZSTD_selectBtGetAllMatchesEPKNS_17ZSTD_matchState_tENS_15ZSTD_dictMode_eE.getAllMatchesFns, i64 %i.s
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %i.r
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !25   ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 276
  %i.x = load i32, ptr %i.w, align 4, !tbaa !26
  %spec.select.i = tail call i32 @llvm.umin.i32(i32 %i.x, i32 4095) ; 2 uses
  %i.y = icmp eq i32 %.val, 3
  %i.z = select i1 %i.y, i32 3, i32 4             ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !21
  store i32 %i.ab, ptr %i.a, align 4, !tbaa !3
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !27 ; 44 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !28 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.19.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #11
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.19.i, i8 0, i64 12, i1 false)
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !29 ; 2 uses
  %.not.i = icmp eq ptr %i.ah, null
  %i.ai = select i1 %.not.i, ptr @_ZN11duckdb_zstdL16kNullRawSeqStoreE, ptr %i.ah
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %8, ptr noundef nonnull align 8 dereferenceable(40) %i.ai, i64 40, i1 false), !tbaa.struct !30
  %i.aj = getelementptr inbounds nuw i8, ptr %8, i64 48
  store i32 0, ptr %i.aj, align 8, !tbaa !32
  %i.ak = getelementptr inbounds nuw i8, ptr %8, i64 40
  store i32 0, ptr %i.ak, align 8, !tbaa !35
  %i.al = getelementptr inbounds nuw i8, ptr %8, i64 44
  store i32 0, ptr %i.al, align 4, !tbaa !36
  %i.am = ptrtoint ptr %3 to i64                  ; 3 uses
  %i.an = ptrtoint ptr %i.e to i64                ; 3 uses
  %i.ao = trunc i64 %4 to i32
  call fastcc void @_ZN11duckdb_zstdL38ZSTD_opt_getNextMatchAndUpdateSeqStoreEPNS_13ZSTD_optLdm_tEjj(ptr noundef %8, i32 noundef 0, i32 noundef %i.ao)
  tail call fastcc void @_ZN11duckdb_zstdL17ZSTD_rescaleFreqsEPNS_10optState_tEPKhmi(ptr noundef nonnull %i.d, ptr noundef %3, i64 noundef %4, i32 noundef 0)
  %i.ap = icmp eq ptr %3, %i.l
  %i.aq = zext i1 %i.ap to i64                    ; 2 uses
  %i.ar = add nsw i64 %4, -8
  %i.as = icmp sgt i64 %i.ar, %i.aq
  br i1 %i.as, label %.lr.ph241, label %_ZN11duckdb_zstdL30ZSTD_compressBlock_opt_genericEPNS_17ZSTD_matchState_tEPNS_10seqStore_tEPjPKvmiNS_15ZSTD_dictMode_eE.exit

.lr.ph241:                                        ; preds = %bb.a
  %i.at = getelementptr inbounds nuw i8, ptr %3, i64 %i.aq
  %i.au = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.av = getelementptr inbounds nuw i8, ptr %i.ad, i64 12
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 5 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 212 ; 7 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 7 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 220 ; 3 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 3 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 3 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 3 uses
  %i.be = getelementptr i8, ptr %0, i64 240       ; 3 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 2 uses
  %.sroa.2.0..sroa_idx.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %7, i64 4 ; 4 uses
  %.sroa.2.0..sroa_idx.phi.trans.insert.i46 = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %6, i64 4 ; 4 uses
  %.sroa.443.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 3 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 196 ; 3 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 204 ; 3 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 3 uses
  %i.bm = getelementptr inbounds i8, ptr %i.e, i64 -32 ; 5 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 6 uses
  %i.bo = ptrtoint ptr %i.bm to i64
  %i.bp = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.br = getelementptr inbounds nuw i8, ptr %1, i64 76 ; 2 uses
  %wide.trip.count = zext nneg i32 %i.z to i64
  %i.bs = add nsw i64 %wide.trip.count, -1        ; 3 uses
  %unroll_iter = and i64 %i.bs, -2
  %lcmp.mod.not = trunc nuw i64 %i.bs to i1
  %lcmp.mod427 = trunc nuw i64 %i.bs to i1
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph241, %bb.ca
  %.0.i239 = phi ptr [ %i.at, %.lr.ph241 ], [ %.4.i, %bb.ca ] ; 6 uses
  %.0437.i238 = phi ptr [ %3, %.lr.ph241 ], [ %.3440.i, %bb.ca ] ; 5 uses
  %.sroa.0214.0.i237 = phi i32 [ 0, %.lr.ph241 ], [ %.sroa.0214.2.i, %bb.ca ] ; 4 uses
  %i.bt = ptrtoint ptr %.0.i239 to i64            ; 3 uses
  %i.bu = ptrtoint ptr %.0437.i238 to i64
  %i.bv = sub i64 %i.bt, %i.bu                    ; 2 uses
  %i.bw = trunc i64 %i.bv to i32                  ; 10 uses
  %.not488.i = icmp eq i32 %i.bw, 0
  %i.bx = zext i1 %.not488.i to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #11
  %i.by = call noundef i32 %i.v(ptr noundef %i.af, ptr noundef %0, ptr noundef nonnull %i.a, ptr noundef %.0.i239, ptr noundef %i.e, ptr noundef %2, i32 noundef %i.bx, i32 noundef %i.z), !inline_history !37
  store i32 %i.by, ptr %i.b, align 4, !tbaa !3
  %i.bz = sub i64 %i.bt, %i.am
  %i.ca = trunc i64 %i.bz to i32
  %i.cb = sub i64 %i.an, %i.bt
  %i.cc = trunc i64 %i.cb to i32
  call fastcc void @_ZN11duckdb_zstdL33ZSTD_optLdm_processMatchCandidateEPNS_13ZSTD_optLdm_tEPNS_12ZSTD_match_tEPjjj(ptr noundef %8, ptr noundef %i.af, ptr noundef %i.b, i32 noundef %i.ca, i32 noundef %i.cc)
  %i.cd = load i32, ptr %i.b, align 4, !tbaa !3   ; 3 uses
  %.not489.i = icmp eq i32 %i.cd, 0
  br i1 %.not489.i, label %.thread67, label %bb.c

.thread67:                                        ; preds = %bb.b
  %i.ce = getelementptr inbounds nuw i8, ptr %.0.i239, i64 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #11
  br label %bb.ca

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.au, align 4, !tbaa !38
  store i32 %i.bw, ptr %i.av, align 4, !tbaa !40
  %i.cf = load i32, ptr %i.aw, align 8, !tbaa !41
  %i.cg = icmp eq i32 %i.cf, 1
  br i1 %i.cg, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.ch = add i32 %i.bw, 1
  %i.ci = call noundef range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %i.ch, i1 true)
  %i.cj = shl nuw nsw i32 %i.ci, 8
  %i.ck = xor i32 %i.cj, 7936
  br label %_ZN11duckdb_zstdL19ZSTD_litLengthPriceEjPKNS_10optState_tEi.exit

bb.e:                                             ; preds = %bb.c
  %i.cl = icmp eq i32 %i.bw, 131072
  br i1 %i.cl, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.cm = load i32, ptr %i.ax, align 4, !tbaa !42
  %i.cn = load ptr, ptr %i.ay, align 8, !tbaa !43
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 140
  %i.cp = load i32, ptr %i.co, align 4, !tbaa !3
  %i.cq = add i32 %i.cp, 1
  %i.cr = call noundef range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %i.cq, i1 true)
  %i.cs = shl nuw nsw i32 %i.cr, 8
  %.neg23.i = add i32 %i.cm, -3584
  %i.ct = add i32 %.neg23.i, %i.cs
  br label %_ZN11duckdb_zstdL19ZSTD_litLengthPriceEjPKNS_10optState_tEi.exit

bb.g:                                             ; preds = %bb.e
  %i.cu = icmp ugt i32 %i.bw, 63
  br i1 %i.cu, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.cv = call noundef range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %i.bw, i1 true)
  %i.cw = sub nuw nsw i32 50, %i.cv
  br label %_ZN11duckdb_zstdL11ZSTD_LLcodeEj.exit.i

bb.i:                                             ; preds = %bb.g
  %i.cx = and i64 %i.bv, 63
  %i.cy = getelementptr inbounds nuw i8, ptr @_ZZN11duckdb_zstdL11ZSTD_LLcodeEjE7LL_Code, i64 %i.cx
  %i.cz = load i8, ptr %i.cy, align 1, !tbaa !44
  %i.da = zext i8 %i.cz to i32
  br label %_ZN11duckdb_zstdL11ZSTD_LLcodeEj.exit.i

_ZN11duckdb_zstdL11ZSTD_LLcodeEj.exit.i:          ; preds = %bb.i, %bb.h
  %i.db = phi i32 [ %i.cw, %bb.h ], [ %i.da, %bb.i ]
  %i.dc = zext nneg i32 %i.db to i64              ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr @_ZN11duckdb_zstdL7LL_bitsE, i64 %i.dc
  %i.de = load i8, ptr %i.dd, align 1, !tbaa !44
  %i.df = zext i8 %i.de to i32
  %i.dg = load i32, ptr %i.ax, align 4, !tbaa !42
  %i.dh = load ptr, ptr %i.ay, align 8, !tbaa !43
  %i.di = getelementptr inbounds nuw [4 x i8], ptr %i.dh, i64 %i.dc
  %i.dj = load i32, ptr %i.di, align 4, !tbaa !3
  %i.dk = add i32 %i.dj, 1
  %i.dl = call noundef range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %i.dk, i1 true)
  %reass.add = add nuw nsw i32 %i.dl, %i.df
  %reass.mul = shl nuw nsw i32 %reass.add, 8
  %i.dm = add i32 %i.dg, -7936
  %i.dn = add i32 %i.dm, %reass.mul
  br label %_ZN11duckdb_zstdL19ZSTD_litLengthPriceEjPKNS_10optState_tEi.exit

_ZN11duckdb_zstdL19ZSTD_litLengthPriceEjPKNS_10optState_tEi.exit: ; preds = %bb.d, %bb.f, %_ZN11duckdb_zstdL11ZSTD_LLcodeEj.exit.i
  %.0.i13 = phi i32 [ %i.dn, %_ZN11duckdb_zstdL11ZSTD_LLcodeEj.exit.i ], [ %i.ct, %bb.f ], [ %i.ck, %bb.d ]
  store i32 %.0.i13, ptr %i.ad, align 4, !tbaa !45
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.az, ptr noundef nonnull align 4 dereferenceable(12) %2, i64 12, i1 false)
  %i.do = add i32 %i.cd, -1
  %i.dp = zext i32 %i.do to i64
  %i.dq = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %i.dp ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 4
  %i.ds = load i32, ptr %i.dr, align 4, !tbaa !46 ; 2 uses
  %.not490.i = icmp ugt i32 %i.ds, %spec.select.i
  br i1 %.not490.i, label %.thread147, label %.preheader189.a

.thread147:                                       ; preds = %_ZN11duckdb_zstdL19ZSTD_litLengthPriceEjPKNS_10optState_tEi.exit
  %i.dt = load i32, ptr %i.dq, align 4, !tbaa !48
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #11
  br label %bb.aw

.preheader189.a:                                  ; preds = %_ZN11duckdb_zstdL19ZSTD_litLengthPriceEjPKNS_10optState_tEi.exit, %.preheader189.a
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %.preheader189.a ], [ 1, %_ZN11duckdb_zstdL19ZSTD_litLengthPriceEjPKNS_10optState_tEi.exit ] ; 4 uses
  %niter = phi i64 [ %niter.next.1, %.preheader189.a ], [ 0, %_ZN11duckdb_zstdL19ZSTD_litLengthPriceEjPKNS_10optState_tEi.exit ]
  %i.du = getelementptr inbounds nuw [28 x i8], ptr %i.ad, i64 %indvars.iv ; 3 uses
  store i32 1073741824, ptr %i.du, align 4, !tbaa !45
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 8
  store i32 0, ptr %i.dv, align 4, !tbaa !38
  %i.dw = trunc nuw nsw i64 %indvars.iv to i32
  %i.dx = add i32 %i.dw, %i.bw
  %i.dy = getelementptr inbounds nuw i8, ptr %i.du, i64 12
  store i32 %i.dx, ptr %i.dy, align 4, !tbaa !40
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.dz = getelementptr inbounds nuw [28 x i8], ptr %i.ad, i64 %indvars.iv.next ; 3 uses
  store i32 1073741824, ptr %i.dz, align 4, !tbaa !45
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 8
  store i32 0, ptr %i.ea, align 4, !tbaa !38
  %i.eb = trunc nuw nsw i64 %indvars.iv.next to i32
  %i.ec = add i32 %i.eb, %i.bw
  %i.ed = getelementptr inbounds nuw i8, ptr %i.dz, i64 12
  store i32 %i.ec, ptr %i.ed, align 4, !tbaa !40
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 3 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.preheader188.preheader.unr-lcssa, label %.preheader189.a, !llvm.loop !49

.preheader188.preheader.unr-lcssa:                ; preds = %.preheader189.a
  br i1 %lcmp.mod.not, label %.preheader189.epil.preheader, label %.preheader188.preheader

.preheader189.epil.preheader:                     ; preds = %.preheader188.preheader.unr-lcssa
  call void @llvm.assume(i1 %lcmp.mod427)
  %i.ee = getelementptr inbounds nuw [28 x i8], ptr %i.ad, i64 %indvars.iv.next.1 ; 3 uses
  store i32 1073741824, ptr %i.ee, align 4, !tbaa !45
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 8
  store i32 0, ptr %i.ef, align 4, !tbaa !38
  %i.eg = trunc nuw nsw i64 %indvars.iv.next.1 to i32
  %i.eh = add i32 %i.eg, %i.bw
  %i.ei = getelementptr inbounds nuw i8, ptr %i.ee, i64 12
  store i32 %i.eh, ptr %i.ei, align 4, !tbaa !40
  br label %.preheader188.preheader

.preheader188.preheader:                          ; preds = %.preheader188.preheader.unr-lcssa, %.preheader189.epil.preheader
  %wide.trip.count262 = zext i32 %i.cd to i64
  br label %.preheader188

.preheader188:                                    ; preds = %.preheader188.preheader, %._crit_edge
  %indvars.iv259 = phi i64 [ 0, %.preheader188.preheader ], [ %indvars.iv.next260, %._crit_edge ] ; 2 uses
  %.1466.i198 = phi i32 [ %i.z, %.preheader188.preheader ], [ %.2467.i.lcssa, %._crit_edge ] ; 4 uses
  %i.ej = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %indvars.iv259 ; 2 uses
  %i.ek = load i32, ptr %i.ej, align 4, !tbaa !48 ; 3 uses
  %i.el = getelementptr inbounds nuw i8, ptr %i.ej, i64 4
  %i.em = load i32, ptr %i.el, align 4, !tbaa !46 ; 3 uses
  %.not500.i195 = icmp ugt i32 %.1466.i198, %i.em
  br i1 %.not500.i195, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader188
  %i.en = call noundef range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %i.ek, i1 true)
  %i.eo = xor i32 %i.en, 31                       ; 5 uses
  %i.ep = load i32, ptr %i.aw, align 8, !tbaa !41
  %i.eq = icmp eq i32 %i.ep, 1
  %i.er = shl nuw nsw i32 %i.eo, 8
  %i.es = add nuw nsw i32 %i.er, 4096
  br i1 %i.eq, label %_ZN11duckdb_zstdL19ZSTD_litLengthPriceEjPKNS_10optState_tEi.exit17.us, label %.lr.ph.split

_ZN11duckdb_zstdL19ZSTD_litLengthPriceEjPKNS_10optState_tEi.exit17.us: ; preds = %.lr.ph, %_ZN11duckdb_zstdL19ZSTD_litLengthPriceEjPKNS_10optState_tEi.exit17.us
  %.2467.i196.us = phi i32 [ %i.ff, %_ZN11duckdb_zstdL19ZSTD_litLengthPriceEjPKNS_10optState_tEi.exit17.us ], [ %.1466.i198, %.lr.ph ] ; 4 uses
  %i.et = add i32 %.2467.i196.us, -2
  %i.eu = call noundef range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %i.et, i1 true)
  %i.ev = shl nuw nsw i32 %i.eu, 8
  %i.ew = xor i32 %i.ev, 7936
  %i.ex = add nuw nsw i32 %i.es, %i.ew
  %i.ey = load i32, ptr %i.ad, align 4, !tbaa !45
  %i.ez = add nsw i32 %i.ex, %i.ey
  %i.fa = zext i32 %.2467.i196.us to i64
  %i.fb = getelementptr inbounds nuw [28 x i8], ptr %i.ad, i64 %i.fa ; 4 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fb, i64 8
  store i32 %.2467.i196.us, ptr %i.fc, align 4, !tbaa !38
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fb, i64 4
  store i32 %i.ek, ptr %i.fd, align 4, !tbaa !50
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fb, i64 12
  store i32 0, ptr %i.fe, align 4, !tbaa !40
  store i32 %i.ez, ptr %i.fb, align 4, !tbaa !45
  %i.ff = add i32 %.2467.i196.us, 1               ; 3 uses
  %.not500.i.us = icmp ugt i32 %i.ff, %i.em
  br i1 %.not500.i.us, label %._crit_edge, label %_ZN11duckdb_zstdL19ZSTD_litLengthPriceEjPKNS_10optState_tEi.exit17.us, !llvm.loop !51

.lr.ph.split:                                     ; preds = %.lr.ph
  %i.fg = icmp samesign ugt i32 %i.eo, 19
  %i.fh = shl nuw nsw i32 %i.eo, 9
  %i.fi = add nsw i32 %i.fh, -9677
  %i.fj = select i1 %i.fg, i32 %i.fi, i32 51
  %i.fk = zext nneg i32 %i.eo to i64
  %i.fl = load i32, ptr %i.ba, align 4, !tbaa !52
  %i.fm = load ptr, ptr %i.bb, align 8, !tbaa !53
  %i.fn = getelementptr inbounds nuw [4 x i8], ptr %i.fm, i64 %i.fk
  %i.fo = load i32, ptr %i.bc, align 8, !tbaa !54
  %i.fp = load ptr, ptr %i.bd, align 8, !tbaa !55
  %i.fq = add i32 %i.fj, %i.fl
  %invariant.op = add i32 %i.fq, %i.fo
  %i.fr = load i32, ptr %i.ax, align 4, !tbaa !42
  %i.fs = load ptr, ptr %i.ay, align 8, !tbaa !43
  %.neg20.i15 = add i32 %i.fr, -7936
  %invariant.op377 = add i32 %invariant.op, -7936
  br label %bb.j

bb.j:                                             ; preds = %.lr.ph.split, %_ZN11duckdb_zstdL19ZSTD_litLengthPriceEjPKNS_10optState_tEi.exit17
  %.2467.i196 = phi i32 [ %.1466.i198, %.lr.ph.split ], [ %i.hf, %_ZN11duckdb_zstdL19ZSTD_litLengthPriceEjPKNS_10optState_tEi.exit17 ] ; 4 uses
  %i.ft = add i32 %.2467.i196, -3                 ; 3 uses
  %i.fu = load i32, ptr %i.fn, align 4, !tbaa !3
  %i.fv = add i32 %i.fu, 1
  %i.fw = call noundef range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %i.fv, i1 true)
  %i.fx = icmp ugt i32 %i.ft, 127
  br i1 %i.fx, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.fy = call noundef range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %i.ft, i1 true)
  %i.fz = sub nuw nsw i32 67, %i.fy
  br label %_ZN11duckdb_zstdL19ZSTD_litLengthPriceEjPKNS_10optState_tEi.exit17

bb.l:                                             ; preds = %bb.j
  %i.ga = zext nneg i32 %i.ft to i64
  %i.gb = getelementptr inbounds nuw i8, ptr @_ZZN11duckdb_zstdL11ZSTD_MLcodeEjE7ML_Code, i64 %i.ga
  %i.gc = load i8, ptr %i.gb, align 1, !tbaa !44
  %i.gd = zext i8 %i.gc to i32
  br label %_ZN11duckdb_zstdL19ZSTD_litLengthPriceEjPKNS_10optState_tEi.exit17

_ZN11duckdb_zstdL19ZSTD_litLengthPriceEjPKNS_10optState_tEi.exit17: ; preds = %bb.k, %bb.l
  %i.ge = phi i32 [ %i.fz, %bb.k ], [ %i.gd, %bb.l ]
  %i.gf = zext nneg i32 %i.ge to i64              ; 2 uses
  %i.gg = getelementptr inbounds nuw i8, ptr @_ZN11duckdb_zstdL7ML_bitsE, i64 %i.gf
  %i.gh = load i8, ptr %i.gg, align 1, !tbaa !44
  %i.gi = zext i8 %i.gh to i32
  %i.gj = getelementptr inbounds nuw [4 x i8], ptr %i.fp, i64 %i.gf
  %i.gk = load i32, ptr %i.gj, align 4, !tbaa !3
  %i.gl = add i32 %i.gk, 1
  %i.gm = call noundef range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %i.gl, i1 true)
  %i.gn = shl nuw nsw i32 %i.gm, 8
  %.neg244 = add nsw i32 %i.gn, -7936
  %i.go = load i32, ptr %i.ad, align 4, !tbaa !45
  %reass.add183 = add nuw nsw i32 %i.eo, %i.gi
  %i.gp = add nuw nsw i32 %i.fw, %reass.add183
  %i.gq = shl nuw nsw i32 %i.gp, 8
  %i.gr = add i32 %i.gq, %invariant.op377
  %i.gs = add i32 %i.gr, %i.go
  %i.gt = add i32 %i.gs, %.neg244
  %i.gu = zext i32 %.2467.i196 to i64
  %i.gv = getelementptr inbounds nuw [28 x i8], ptr %i.ad, i64 %i.gu ; 4 uses
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gv, i64 8
  store i32 %.2467.i196, ptr %i.gw, align 4, !tbaa !38
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gv, i64 4
  store i32 %i.ek, ptr %i.gx, align 4, !tbaa !50
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gv, i64 12
  store i32 0, ptr %i.gy, align 4, !tbaa !40
  %i.gz = load i32, ptr %i.fs, align 4, !tbaa !3
  %i.ha = add i32 %i.gz, 1
  %i.hb = call noundef range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %i.ha, i1 true)
  %i.hc = shl nuw nsw i32 %i.hb, 8
  %i.hd = add i32 %.neg20.i15, %i.hc
  %i.he = add nsw i32 %i.hd, %i.gt
  store i32 %i.he, ptr %i.gv, align 4, !tbaa !45
  %i.hf = add i32 %.2467.i196, 1                  ; 3 uses
  %.not500.i = icmp ugt i32 %i.hf, %i.em
  br i1 %.not500.i, label %._crit_edge, label %bb.j, !llvm.loop !51

._crit_edge:                                      ; preds = %_ZN11duckdb_zstdL19ZSTD_litLengthPriceEjPKNS_10optState_tEi.exit17, %_ZN11duckdb_zstdL19ZSTD_litLengthPriceEjPKNS_10optState_tEi.exit17.us, %.preheader188
  %.2467.i.lcssa = phi i32 [ %.1466.i198, %.preheader188 ], [ %i.ff, %_ZN11duckdb_zstdL19ZSTD_litLengthPriceEjPKNS_10optState_tEi.exit17.us ], [ %i.hf, %_ZN11duckdb_zstdL19ZSTD_litLengthPriceEjPKNS_10optState_tEi.exit17 ] ; 3 uses
  %indvars.iv.next260 = add nuw nsw i64 %indvars.iv259, 1 ; 2 uses
  %exitcond263.not = icmp eq i64 %indvars.iv.next260, %wide.trip.count262
  br i1 %exitcond263.not, label %.lr.ph224.preheader, label %.preheader188, !llvm.loop !56

.lr.ph224.preheader:                              ; preds = %._crit_edge
  %i.hg = zext i32 %.2467.i.lcssa to i64
  %i.hh = getelementptr inbounds nuw [28 x i8], ptr %i.ad, i64 %i.hg
  store i32 1073741824, ptr %i.hh, align 4, !tbaa !45
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #11
  %i.hi = add i32 %.2467.i.lcssa, -1
  br label %.lr.ph224

.lr.ph224:                                        ; preds = %.lr.ph224.preheader, %.thread113
  %.3449.i222 = phi i32 [ %.pre-phi289, %.thread113 ], [ 1, %.lr.ph224.preheader ] ; 13 uses
  %.2453.i221 = phi i32 [ %.15.i119, %.thread113 ], [ %i.hi, %.lr.ph224.preheader ] ; 5 uses
  %i.hj = zext i32 %.3449.i222 to i64             ; 2 uses
  %i.hk = getelementptr inbounds nuw i8, ptr %.0.i239, i64 %i.hj ; 5 uses
  %i.hl = add i32 %.3449.i222, -1
  %i.hm = zext i32 %i.hl to i64
  %i.hn = getelementptr inbounds nuw [28 x i8], ptr %i.ad, i64 %i.hm ; 3 uses
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hn, i64 12
  %i.hp = load i32, ptr %i.ho, align 4, !tbaa !40 ; 6 uses
  %i.hq = add i32 %i.hp, 1                        ; 7 uses
  %i.hr = load i32, ptr %i.hn, align 4, !tbaa !45 ; 3 uses
  %i.hs = getelementptr inbounds i8, ptr %i.hk, i64 -1
  %.val.i = load i32, ptr %i.be, align 8, !tbaa !57
  %.not31.i = icmp eq i32 %.val.i, 2
  %.pre = load i32, ptr %i.aw, align 8, !tbaa !41 ; 2 uses
  br i1 %.not31.i, label %_ZN11duckdb_zstdL20ZSTD_rawLiteralsCostEPKhjPKNS_10optState_tEi.exit, label %bb.m

bb.m:                                             ; preds = %.lr.ph224
  %i.ht = icmp eq i32 %.pre, 1
  br i1 %i.ht, label %_ZN11duckdb_zstdL20ZSTD_rawLiteralsCostEPKhjPKNS_10optState_tEi.exit.thread, label %_ZN11duckdb_zstdL20ZSTD_rawLiteralsCostEPKhjPKNS_10optState_tEi.exit.thread337

_ZN11duckdb_zstdL20ZSTD_rawLiteralsCostEPKhjPKNS_10optState_tEi.exit.thread: ; preds = %bb.m
  %i.hu = add nsw i32 %i.hr, 1536
  br label %bb.r

_ZN11duckdb_zstdL20ZSTD_rawLiteralsCostEPKhjPKNS_10optState_tEi.exit.thread337: ; preds = %bb.m
  %i.hv = load i32, ptr %i.bf, align 8, !tbaa !58 ; 2 uses
  %i.hw = add i32 %i.hv, -256
  %i.hx = load ptr, ptr %i.d, align 8, !tbaa !59
  %i.hy = load i8, ptr %i.hs, align 1, !tbaa !44
  %i.hz = zext i8 %i.hy to i64
  %i.ia = getelementptr inbounds nuw [4 x i8], ptr %i.hx, i64 %i.hz
  %i.ib = load i32, ptr %i.ia, align 4, !tbaa !3
  %i.ic = add i32 %i.ib, 1
  %i.id = call noundef range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %i.ic, i1 true)
  %i.ie = shl nuw nsw i32 %i.id, 8
  %i.if = xor i32 %i.ie, 7936                     ; 2 uses
  %i.ig = icmp ugt i32 %i.if, %i.hw
  %i.ih = sub i32 %i.hv, %i.if
  %spec.select.i18 = select i1 %i.ig, i32 256, i32 %i.ih, !prof !60
  %i.ii = add nsw i32 %spec.select.i18, %i.hr
  br label %bb.n

_ZN11duckdb_zstdL20ZSTD_rawLiteralsCostEPKhjPKNS_10optState_tEi.exit: ; preds = %.lr.ph224
  %i.ij = add nsw i32 %i.hr, 2048                 ; 2 uses
  %i.ik = icmp eq i32 %.pre, 1
  br i1 %i.ik, label %bb.r, label %bb.n

bb.n:                                             ; preds = %_ZN11duckdb_zstdL20ZSTD_rawLiteralsCostEPKhjPKNS_10optState_tEi.exit.thread337, %_ZN11duckdb_zstdL20ZSTD_rawLiteralsCostEPKhjPKNS_10optState_tEi.exit
end_hunk_0
begin_hunk_1_@_ZN11duckdb_zstdL23ZSTD_compressBlock_opt0EPNS_17ZSTD_matchState_tEPNS_10seqStore_tEPjPKvmNS_15ZSTD_dictMode_eE:bb.a
  %i.abm = add nsw i64 %i.yi, -3                  ; 2 uses
  %i.abn = icmp ugt i64 %i.abm, 65535
  br i1 %i.abn, label %bb.bx, label %_ZN11duckdb_zstdL13ZSTD_storeSeqEPNS_10seqStore_tEmPKhS3_jm.exit

bb.bx:                                            ; preds = %bb.bw
  store i32 2, ptr %i.bp, align 8, !tbaa !90
  %i.abo = load ptr, ptr %1, align 8, !tbaa !91
  %i.abp = ptrtoint ptr %i.abj to i64
  %i.abq = ptrtoint ptr %i.abo to i64
  %i.abr = sub i64 %i.abp, %i.abq
  %i.abs = lshr exact i64 %i.abr, 3
  %i.abt = trunc i64 %i.abs to i32
  store i32 %i.abt, ptr %i.br, align 4, !tbaa !92
  br label %_ZN11duckdb_zstdL13ZSTD_storeSeqEPNS_10seqStore_tEmPKhS3_jm.exit

_ZN11duckdb_zstdL13ZSTD_storeSeqEPNS_10seqStore_tEmPKhS3_jm.exit: ; preds = %bb.bw, %bb.bx
  %i.abu = trunc i64 %i.abm to i16
  %i.abv = getelementptr inbounds nuw i8, ptr %i.abj, i64 6
  store i16 %i.abu, ptr %i.abv, align 2, !tbaa !97
  %i.abw = getelementptr inbounds nuw i8, ptr %i.abj, i64 8
  store ptr %i.abw, ptr %i.bq, align 8, !tbaa !89
  %i.abx = zext i32 %i.ve to i64
  %i.aby = getelementptr inbounds nuw i8, ptr %.1438.i230, i64 %i.abx ; 2 uses
  br label %bb.by

bb.by:                                            ; preds = %_ZN11duckdb_zstdL13ZSTD_storeSeqEPNS_10seqStore_tEmPKhS3_jm.exit, %bb.be
  %.2439.i = phi ptr [ %.1438.i230, %bb.be ], [ %i.aby, %_ZN11duckdb_zstdL13ZSTD_storeSeqEPNS_10seqStore_tEmPKhS3_jm.exit ] ; 2 uses
  %.3.i = phi ptr [ %i.vd, %bb.be ], [ %i.aby, %_ZN11duckdb_zstdL13ZSTD_storeSeqEPNS_10seqStore_tEmPKhS3_jm.exit ]
  %i.abz = add i32 %.0441.i229, 1                 ; 2 uses
  %.not499.i = icmp ugt i32 %i.abz, %i.tz
  br i1 %.not499.i, label %._crit_edge234, label %.lr.ph233, !llvm.loop !98

._crit_edge234:                                   ; preds = %bb.by, %.preheader187
  %.1438.i.lcssa = phi ptr [ %.0437.i238, %.preheader187 ], [ %.2439.i, %bb.by ]
  %.2.i.lcssa = phi ptr [ %.0.i239, %.preheader187 ], [ %.3.i, %bb.by ]
  %.val.i59 = load i32, ptr %i.be, align 8, !tbaa !57
  %.not19.i = icmp eq i32 %.val.i59, 2
  br i1 %.not19.i, label %_ZN11duckdb_zstdL18ZSTD_setBasePricesEPNS_10optState_tEi.exit, label %bb.bz

bb.bz:                                            ; preds = %._crit_edge234
  %i.aca = load i32, ptr %i.bi, align 8, !tbaa !73
  %i.acb = add i32 %i.aca, 1
  %i.acc = call noundef range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %i.acb, i1 true)
  %i.acd = shl nuw nsw i32 %i.acc, 8
  %i.ace = xor i32 %i.acd, 7936
  store i32 %i.ace, ptr %i.bf, align 8, !tbaa !58
  br label %_ZN11duckdb_zstdL18ZSTD_setBasePricesEPNS_10optState_tEi.exit

_ZN11duckdb_zstdL18ZSTD_setBasePricesEPNS_10optState_tEi.exit: ; preds = %._crit_edge234, %bb.bz
  %i.acf = load i32, ptr %i.bj, align 4, !tbaa !74
  %i.acg = add i32 %i.acf, 1
  %i.ach = call noundef range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %i.acg, i1 true)
  %i.aci = shl nuw nsw i32 %i.ach, 8
  %i.acj = xor i32 %i.aci, 7936
  %i.ack = load i32, ptr %i.bl, align 8, !tbaa !76
  %i.acl = add i32 %i.ack, 1
  %i.acm = call noundef range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %i.acl, i1 true)
  %i.acn = shl nuw nsw i32 %i.acm, 8
  %i.aco = xor i32 %i.acn, 7936
  %i.acp = load i32, ptr %i.bk, align 4, !tbaa !75
  %i.acq = add i32 %i.acp, 1
  %i.acr = call noundef range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %i.acq, i1 true)
  %i.acs = shl nuw nsw i32 %i.acr, 8
  %i.act = xor i32 %i.acs, 7936
  store i32 %i.acj, ptr %i.ax, align 4, !tbaa !42
  store i32 %i.aco, ptr %i.bc, align 8, !tbaa !54
  store i32 %i.act, ptr %i.ba, align 4, !tbaa !52
  br label %bb.ca

bb.ca:                                            ; preds = %.thread67, %_ZN11duckdb_zstdL18ZSTD_setBasePricesEPNS_10optState_tEi.exit, %bb.au
  %.sroa.0214.2.i = phi i32 [ %.sroa.0214.0.i237, %.thread67 ], [ %.sroa.0214.1.i146153171, %_ZN11duckdb_zstdL18ZSTD_setBasePricesEPNS_10optState_tEi.exit ], [ %.sroa.0214.1.i352, %bb.au ]
  %.3440.i = phi ptr [ %.0437.i238, %.thread67 ], [ %.1438.i.lcssa, %_ZN11duckdb_zstdL18ZSTD_setBasePricesEPNS_10optState_tEi.exit ], [ %.0437.i238, %bb.au ] ; 2 uses
  %.4.i = phi ptr [ %i.ce, %.thread67 ], [ %.2.i.lcssa, %_ZN11duckdb_zstdL18ZSTD_setBasePricesEPNS_10optState_tEi.exit ], [ %i.st, %bb.au ] ; 2 uses
  %i.acu = icmp ult ptr %.4.i, %i.f
  br i1 %i.acu, label %bb.b, label %_ZN11duckdb_zstdL30ZSTD_compressBlock_opt_genericEPNS_17ZSTD_matchState_tEPNS_10seqStore_tEPjPKvmiNS_15ZSTD_dictMode_eE.exit.loopexit

_ZN11duckdb_zstdL30ZSTD_compressBlock_opt_genericEPNS_17ZSTD_matchState_tEPNS_10seqStore_tEPjPKvmiNS_15ZSTD_dictMode_eE.exit.loopexit: ; preds = %bb.ca
  %.pre283 = ptrtoint ptr %.3440.i to i64
  br label %_ZN11duckdb_zstdL30ZSTD_compressBlock_opt_genericEPNS_17ZSTD_matchState_tEPNS_10seqStore_tEPjPKvmiNS_15ZSTD_dictMode_eE.exit

_ZN11duckdb_zstdL30ZSTD_compressBlock_opt_genericEPNS_17ZSTD_matchState_tEPNS_10seqStore_tEPjPKvmiNS_15ZSTD_dictMode_eE.exit: ; preds = %_ZN11duckdb_zstdL30ZSTD_compressBlock_opt_genericEPNS_17ZSTD_matchState_tEPNS_10seqStore_tEPjPKvmiNS_15ZSTD_dictMode_eE.exit.loopexit, %bb.a
  %.pre-phi = phi i64 [ %.pre283, %_ZN11duckdb_zstdL30ZSTD_compressBlock_opt_genericEPNS_17ZSTD_matchState_tEPNS_10seqStore_tEPjPKvmiNS_15ZSTD_dictMode_eE.exit.loopexit ], [ %i.am, %bb.a ]
  %i.acv = sub i64 %i.an, %.pre-phi
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.19.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  ret i64 %i.acv
}

; Function Attrs: mustprogress uwtable
define noundef i64 @_ZN11duckdb_zstd26ZSTD_compressBlock_btultraEPNS_17ZSTD_matchState_tEPNS_10seqStore_tEPjPKvm(ptr noundef initializes((224, 228)) %0, ptr nofree noundef captures(none) %1, ptr noundef %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #1 {
bb.a:
  %i.a = tail call fastcc noundef i64 @_ZN11duckdb_zstdL23ZSTD_compressBlock_opt2EPNS_17ZSTD_matchState_tEPNS_10seqStore_tEPjPKvmNS_15ZSTD_dictMode_eE(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i64 noundef %4, i32 noundef 0)
  ret i64 %i.a
}

; Function Attrs: mustprogress uwtable
define internal fastcc noundef i64 @_ZN11duckdb_zstdL23ZSTD_compressBlock_opt2EPNS_17ZSTD_matchState_tEPNS_10seqStore_tEPjPKvmNS_15ZSTD_dictMode_eE(ptr noundef initializes((224, 228)) %0, ptr nofree noundef captures(none) %1, ptr noundef %2, ptr noundef %3, i64 noundef %4, i32 noundef range(i32 0, 3) %5) unnamed_addr #2 {
bb.a:
  %6 = alloca %"struct.duckdb_zstd::repcodes_s", align 8 ; 11 uses
  %7 = alloca %"struct.duckdb_zstd::repcodes_s", align 8 ; 11 uses
  %8 = alloca %"struct.duckdb_zstd::repcodes_s", align 8 ; 11 uses
  %i.a = alloca i32, align 4                      ; 5 uses
  %.sroa.19.i = alloca [3 x i32], align 4         ; 6 uses
  %9 = alloca %"struct.duckdb_zstd::ZSTD_optLdm_t", align 8 ; 9 uses
  %i.b = alloca i32, align 4                      ; 7 uses
  %i.c = alloca i32, align 4                      ; 7 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 %4 ; 7 uses
  %i.f = getelementptr inbounds i8, ptr %i.e, i64 -8 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !20
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.j = load i32, ptr %i.i, align 8, !tbaa !24
  %i.k = zext i32 %i.j to i64
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.k
  %i.m = getelementptr i8, ptr %0, i64 272
  %.val = load i32, ptr %i.m, align 8, !tbaa !7   ; 4 uses
  %i.n = icmp ult i32 %.val, 3
  %i.o = add i32 %.val, -6
  %brmerge.i = icmp ult i32 %i.o, -3
  %.mux.i = select i1 %i.n, i64 0, i64 3
  %i.p = add nsw i32 %.val, -3
  %i.q = zext nneg i32 %i.p to i64
  %i.r = select i1 %brmerge.i, i64 %.mux.i, i64 %i.q
  %i.s = zext nneg i32 %5 to i64
  %i.t = getelementptr inbounds nuw [32 x i8], ptr @__const._ZN11duckdb_zstdL26ZSTD_selectBtGetAllMatchesEPKNS_17ZSTD_matchState_tENS_15ZSTD_dictMode_eE.getAllMatchesFns, i64 %i.s
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %i.r
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !25   ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 276
  %i.x = load i32, ptr %i.w, align 4, !tbaa !26
  %spec.select.i = tail call i32 @llvm.umin.i32(i32 %i.x, i32 4095) ; 2 uses
  %i.y = icmp eq i32 %.val, 3
  %i.z = select i1 %i.y, i32 3, i32 4             ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !21
  store i32 %i.ab, ptr %i.a, align 4, !tbaa !3
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !27 ; 45 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !28 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.19.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #11
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.19.i, i8 0, i64 12, i1 false)
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !29 ; 2 uses
  %.not.i = icmp eq ptr %i.ah, null
  %i.ai = select i1 %.not.i, ptr @_ZN11duckdb_zstdL16kNullRawSeqStoreE, ptr %i.ah
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %9, ptr noundef nonnull align 8 dereferenceable(40) %i.ai, i64 40, i1 false), !tbaa.struct !30
  %i.aj = getelementptr inbounds nuw i8, ptr %9, i64 48
  store i32 0, ptr %i.aj, align 8, !tbaa !32
  %i.ak = getelementptr inbounds nuw i8, ptr %9, i64 40
  store i32 0, ptr %i.ak, align 8, !tbaa !35
  %i.al = getelementptr inbounds nuw i8, ptr %9, i64 44
  store i32 0, ptr %i.al, align 4, !tbaa !36
  %i.am = ptrtoint ptr %3 to i64                  ; 3 uses
  %i.an = ptrtoint ptr %i.e to i64                ; 3 uses
  %i.ao = trunc i64 %4 to i32
  call fastcc void @_ZN11duckdb_zstdL38ZSTD_opt_getNextMatchAndUpdateSeqStoreEPNS_13ZSTD_optLdm_tEjj(ptr noundef %9, i32 noundef 0, i32 noundef %i.ao)
  tail call fastcc void @_ZN11duckdb_zstdL17ZSTD_rescaleFreqsEPNS_10optState_tEPKhmi(ptr noundef nonnull %i.d, ptr noundef %3, i64 noundef %4, i32 noundef 2)
  %i.ap = icmp eq ptr %3, %i.l
  %i.aq = zext i1 %i.ap to i64                    ; 2 uses
  %i.ar = add nsw i64 %4, -8
  %i.as = icmp sgt i64 %i.ar, %i.aq
  br i1 %i.as, label %.lr.ph354, label %_ZN11duckdb_zstdL30ZSTD_compressBlock_opt_genericEPNS_17ZSTD_matchState_tEPNS_10seqStore_tEPjPKvmiNS_15ZSTD_dictMode_eE.exit

.lr.ph354:                                        ; preds = %bb.a
  %i.at = getelementptr inbounds nuw i8, ptr %3, i64 %i.aq
  %i.au = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.av = getelementptr inbounds nuw i8, ptr %i.ad, i64 12
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 6 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 212 ; 8 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 8 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 220 ; 3 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 3 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 3 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 3 uses
  %i.be = getelementptr i8, ptr %0, i64 240       ; 4 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 4 uses
  %.sroa.2.0..sroa_idx.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %8, i64 4 ; 4 uses
  %.sroa.2.0..sroa_idx.phi.trans.insert.i88 = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %7, i64 4 ; 4 uses
  %.sroa.2.0..sroa_idx.phi.trans.insert.i109 = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %6, i64 4 ; 4 uses
  %.sroa.443.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 3 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 196 ; 3 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 204 ; 3 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 3 uses
  %i.bn = getelementptr inbounds i8, ptr %i.e, i64 -32 ; 5 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 6 uses
  %i.bp = ptrtoint ptr %i.bn to i64
  %i.bq = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %1, i64 76 ; 2 uses
  %wide.trip.count = zext nneg i32 %i.z to i64
  %i.bt = add nsw i64 %wide.trip.count, -1        ; 3 uses
  %unroll_iter = and i64 %i.bt, -2
  %lcmp.mod.not = trunc nuw i64 %i.bt to i1
  %lcmp.mod553 = trunc nuw i64 %i.bt to i1
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph354, %bb.cs
  %.0.i352 = phi ptr [ %i.at, %.lr.ph354 ], [ %.4.i, %bb.cs ] ; 6 uses
  %.0437.i351 = phi ptr [ %3, %.lr.ph354 ], [ %.3440.i, %bb.cs ] ; 5 uses
  %.sroa.0214.0.i350 = phi i32 [ 0, %.lr.ph354 ], [ %.sroa.0214.2.i, %bb.cs ] ; 4 uses
  %i.bu = ptrtoint ptr %.0.i352 to i64            ; 3 uses
  %i.bv = ptrtoint ptr %.0437.i351 to i64
  %i.bw = sub i64 %i.bu, %i.bv                    ; 2 uses
  %i.bx = trunc i64 %i.bw to i32                  ; 10 uses
  %.not488.i = icmp eq i32 %i.bx, 0
  %i.by = zext i1 %.not488.i to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #11
  %i.bz = call noundef i32 %i.v(ptr noundef %i.af, ptr noundef %0, ptr noundef nonnull %i.a, ptr noundef %.0.i352, ptr noundef %i.e, ptr noundef %2, i32 noundef %i.by, i32 noundef %i.z), !inline_history !37
  store i32 %i.bz, ptr %i.b, align 4, !tbaa !3
  %i.ca = sub i64 %i.bu, %i.am
  %i.cb = trunc i64 %i.ca to i32
  %i.cc = sub i64 %i.an, %i.bu
  %i.cd = trunc i64 %i.cc to i32
  call fastcc void @_ZN11duckdb_zstdL33ZSTD_optLdm_processMatchCandidateEPNS_13ZSTD_optLdm_tEPNS_12ZSTD_match_tEPjjj(ptr noundef %9, ptr noundef %i.af, ptr noundef %i.b, i32 noundef %i.cb, i32 noundef %i.cd)
  %i.ce = load i32, ptr %i.b, align 4, !tbaa !3   ; 3 uses
  %.not489.i = icmp eq i32 %i.ce, 0
  br i1 %.not489.i, label %.thread130, label %bb.c

.thread130:                                       ; preds = %bb.b
  %i.cf = getelementptr inbounds nuw i8, ptr %.0.i352, i64 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #11
  br label %bb.cs

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.au, align 4, !tbaa !38
  store i32 %i.bx, ptr %i.av, align 4, !tbaa !40
  %i.cg = load i32, ptr %i.aw, align 8, !tbaa !41
  %i.ch = icmp eq i32 %i.cg, 1
  br i1 %i.ch, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.ci = add i32 %i.bx, 1                        ; 2 uses
  %i.cj = call noundef range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %i.ci, i1 true)
  %i.ck = xor i32 %i.cj, 31                       ; 2 uses
  %i.cl = shl nuw nsw i32 %i.ck, 8
  %i.cm = shl i32 %i.ci, 8
  %i.cn = lshr i32 %i.cm, %i.ck
  %i.co = add i32 %i.cl, %i.cn
  br label %_ZN11duckdb_zstdL19ZSTD_litLengthPriceEjPKNS_10optState_tEi.exit

bb.e:                                             ; preds = %bb.c
  %i.cp = icmp eq i32 %i.bx, 131072
  br i1 %i.cp, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.cq = load i32, ptr %i.ax, align 4, !tbaa !42
  %i.cr = load ptr, ptr %i.ay, align 8, !tbaa !43
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 140
  %i.ct = load i32, ptr %i.cs, align 4, !tbaa !3
  %i.cu = add i32 %i.ct, 1                        ; 2 uses
  %i.cv = call noundef range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %i.cu, i1 true)
  %i.cw = xor i32 %i.cv, 31                       ; 2 uses
  %i.cx = shl i32 %i.cu, 8
  %i.cy = lshr i32 %i.cx, %i.cw
  %.neg22.i = add i32 %i.cq, 4352
  %i.cz = shl nuw nsw i32 %i.cw, 8
  %i.da = add i32 %i.cy, %i.cz
  %i.db = sub i32 %.neg22.i, %i.da
  br label %_ZN11duckdb_zstdL19ZSTD_litLengthPriceEjPKNS_10optState_tEi.exit

bb.g:                                             ; preds = %bb.e
  %i.dc = icmp ugt i32 %i.bx, 63
  br i1 %i.dc, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.dd = call noundef range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %i.bx, i1 true)
  %i.de = sub nuw nsw i32 50, %i.dd
  br label %_ZN11duckdb_zstdL11ZSTD_LLcodeEj.exit.i

bb.i:                                             ; preds = %bb.g
  %i.df = and i64 %i.bw, 63
  %i.dg = getelementptr inbounds nuw i8, ptr @_ZZN11duckdb_zstdL11ZSTD_LLcodeEjE7LL_Code, i64 %i.df
  %i.dh = load i8, ptr %i.dg, align 1, !tbaa !44
  %i.di = zext i8 %i.dh to i32
  br label %_ZN11duckdb_zstdL11ZSTD_LLcodeEj.exit.i

_ZN11duckdb_zstdL11ZSTD_LLcodeEj.exit.i:          ; preds = %bb.i, %bb.h
  %i.dj = phi i32 [ %i.de, %bb.h ], [ %i.di, %bb.i ]
  %i.dk = zext nneg i32 %i.dj to i64              ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr @_ZN11duckdb_zstdL7LL_bitsE, i64 %i.dk
  %i.dm = load i8, ptr %i.dl, align 1, !tbaa !44
  %i.dn = zext i8 %i.dm to i32
  %i.do = load i32, ptr %i.ax, align 4, !tbaa !42
  %i.dp = load ptr, ptr %i.ay, align 8, !tbaa !43
  %i.dq = getelementptr inbounds nuw [4 x i8], ptr %i.dp, i64 %i.dk
  %i.dr = load i32, ptr %i.dq, align 4, !tbaa !3
  %i.ds = add i32 %i.dr, 1                        ; 2 uses
  %i.dt = call noundef range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %i.ds, i1 true)
  %i.du = xor i32 %i.dt, 31                       ; 2 uses
  %i.dv = shl i32 %i.ds, 8
  %i.dw = lshr i32 %i.dv, %i.du
  %reass.add = sub nsw i32 %i.dn, %i.du
  %reass.mul = shl nsw i32 %reass.add, 8
  %i.dx = sub i32 %i.do, %i.dw
  %i.dy = add i32 %i.dx, %reass.mul
  br label %_ZN11duckdb_zstdL19ZSTD_litLengthPriceEjPKNS_10optState_tEi.exit

_ZN11duckdb_zstdL19ZSTD_litLengthPriceEjPKNS_10optState_tEi.exit: ; preds = %bb.d, %bb.f, %_ZN11duckdb_zstdL11ZSTD_LLcodeEj.exit.i
  %.0.i12 = phi i32 [ %i.dy, %_ZN11duckdb_zstdL11ZSTD_LLcodeEj.exit.i ], [ %i.db, %bb.f ], [ %i.co, %bb.d ]
  store i32 %.0.i12, ptr %i.ad, align 4, !tbaa !45
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.az, ptr noundef nonnull align 4 dereferenceable(12) %2, i64 12, i1 false)
  %i.dz = add i32 %i.ce, -1
  %i.ea = zext i32 %i.dz to i64
  %i.eb = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %i.ea ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 4
  %i.ed = load i32, ptr %i.ec, align 4, !tbaa !46 ; 2 uses
  %.not490.i = icmp ugt i32 %i.ed, %spec.select.i
  br i1 %.not490.i, label %.thread219, label %.preheader307.a

.thread219:                                       ; preds = %_ZN11duckdb_zstdL19ZSTD_litLengthPriceEjPKNS_10optState_tEi.exit
  %i.ee = load i32, ptr %i.eb, align 4, !tbaa !48
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #11
  br label %bb.bo

.preheader307.a:                                  ; preds = %_ZN11duckdb_zstdL19ZSTD_litLengthPriceEjPKNS_10optState_tEi.exit, %.preheader307.a
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %.preheader307.a ], [ 1, %_ZN11duckdb_zstdL19ZSTD_litLengthPriceEjPKNS_10optState_tEi.exit ] ; 4 uses
  %niter = phi i64 [ %niter.next.1, %.preheader307.a ], [ 0, %_ZN11duckdb_zstdL19ZSTD_litLengthPriceEjPKNS_10optState_tEi.exit ]
  %i.ef = getelementptr inbounds nuw [28 x i8], ptr %i.ad, i64 %indvars.iv ; 3 uses
  store i32 1073741824, ptr %i.ef, align 4, !tbaa !45
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 8
  store i32 0, ptr %i.eg, align 4, !tbaa !38
  %i.eh = trunc nuw nsw i64 %indvars.iv to i32
  %i.ei = add i32 %i.eh, %i.bx
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ef, i64 12
  store i32 %i.ei, ptr %i.ej, align 4, !tbaa !40
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ek = getelementptr inbounds nuw [28 x i8], ptr %i.ad, i64 %indvars.iv.next ; 3 uses
  store i32 1073741824, ptr %i.ek, align 4, !tbaa !45
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 8
  store i32 0, ptr %i.el, align 4, !tbaa !38
  %i.em = trunc nuw nsw i64 %indvars.iv.next to i32
  %i.en = add i32 %i.em, %i.bx
  %i.eo = getelementptr inbounds nuw i8, ptr %i.ek, i64 12
  store i32 %i.en, ptr %i.eo, align 4, !tbaa !40
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 3 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.preheader306.preheader.unr-lcssa, label %.preheader307.a, !llvm.loop !49

.preheader306.preheader.unr-lcssa:                ; preds = %.preheader307.a
  br i1 %lcmp.mod.not, label %.preheader307.epil.preheader, label %.preheader306.preheader

.preheader307.epil.preheader:                     ; preds = %.preheader306.preheader.unr-lcssa
  call void @llvm.assume(i1 %lcmp.mod553)
  %i.ep = getelementptr inbounds nuw [28 x i8], ptr %i.ad, i64 %indvars.iv.next.1 ; 3 uses
  store i32 1073741824, ptr %i.ep, align 4, !tbaa !45
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ep, i64 8
  store i32 0, ptr %i.eq, align 4, !tbaa !38
  %i.er = trunc nuw nsw i64 %indvars.iv.next.1 to i32
  %i.es = add i32 %i.er, %i.bx
  %i.et = getelementptr inbounds nuw i8, ptr %i.ep, i64 12
  store i32 %i.es, ptr %i.et, align 4, !tbaa !40
  br label %.preheader306.preheader

.preheader306.preheader:                          ; preds = %.preheader306.preheader.unr-lcssa, %.preheader307.epil.preheader
  %wide.trip.count376 = zext i32 %i.ce to i64
  br label %.preheader306

.preheader306:                                    ; preds = %.preheader306.preheader, %._crit_edge
  %indvars.iv373 = phi i64 [ 0, %.preheader306.preheader ], [ %indvars.iv.next374, %._crit_edge ] ; 2 uses
  %.1466.i315 = phi i32 [ %i.z, %.preheader306.preheader ], [ %.2467.i.lcssa, %._crit_edge ] ; 4 uses
  %i.eu = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %indvars.iv373 ; 2 uses
  %i.ev = load i32, ptr %i.eu, align 4, !tbaa !48 ; 3 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %i.eu, i64 4
  %i.ex = load i32, ptr %i.ew, align 4, !tbaa !46 ; 3 uses
  %.not500.i312 = icmp ugt i32 %.1466.i315, %i.ex
  br i1 %.not500.i312, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader306
  %i.ey = call noundef range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %i.ev, i1 true)
  %i.ez = xor i32 %i.ey, 31                       ; 3 uses
  %i.fa = load i32, ptr %i.aw, align 8, !tbaa !41
  %i.fb = icmp eq i32 %i.fa, 1
  br i1 %i.fb, label %_ZN11duckdb_zstdL19ZSTD_litLengthPriceEjPKNS_10optState_tEi.exit17.us, label %.lr.ph.split

_ZN11duckdb_zstdL19ZSTD_litLengthPriceEjPKNS_10optState_tEi.exit17.us: ; preds = %.lr.ph, %_ZN11duckdb_zstdL19ZSTD_litLengthPriceEjPKNS_10optState_tEi.exit17.us
  %.2467.i313.us = phi i32 [ %i.fr, %_ZN11duckdb_zstdL19ZSTD_litLengthPriceEjPKNS_10optState_tEi.exit17.us ], [ %.1466.i315, %.lr.ph ] ; 4 uses
  %i.fc = add i32 %.2467.i313.us, -2              ; 2 uses
  %i.fd = call noundef range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %i.fc, i1 true)
  %i.fe = xor i32 %i.fd, 31                       ; 2 uses
  %i.ff = shl i32 %i.fc, 8
  %i.fg = lshr i32 %i.ff, %i.fe
  %i.fh = load i32, ptr %i.ad, align 4, !tbaa !45
  %reass.add301.us = add nuw nsw i32 %i.fe, %i.ez
  %reass.mul302.us = shl nuw nsw i32 %reass.add301.us, 8
  %i.fi = add i32 %i.fg, 4096
  %i.fj = add i32 %i.fi, %reass.mul302.us
  %i.fk = add i32 %i.fj, %i.fh
  %i.fl = zext i32 %.2467.i313.us to i64
  %i.fm = getelementptr inbounds nuw [28 x i8], ptr %i.ad, i64 %i.fl ; 4 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fm, i64 8
  store i32 %.2467.i313.us, ptr %i.fn, align 4, !tbaa !38
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fm, i64 4
  store i32 %i.ev, ptr %i.fo, align 4, !tbaa !50
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fm, i64 12
  store i32 0, ptr %i.fp, align 4, !tbaa !40
  %i.fq = add nsw i32 %i.fk, 256
  store i32 %i.fq, ptr %i.fm, align 4, !tbaa !45
  %i.fr = add i32 %.2467.i313.us, 1               ; 3 uses
  %.not500.i.us = icmp ugt i32 %i.fr, %i.ex
  br i1 %.not500.i.us, label %._crit_edge, label %_ZN11duckdb_zstdL19ZSTD_litLengthPriceEjPKNS_10optState_tEi.exit17.us, !llvm.loop !51

.lr.ph.split:                                     ; preds = %.lr.ph
  %i.fs = zext nneg i32 %i.ez to i64
  %i.ft = load i32, ptr %i.ba, align 4, !tbaa !52
  %i.fu = load ptr, ptr %i.bb, align 8, !tbaa !53
  %i.fv = getelementptr inbounds nuw [4 x i8], ptr %i.fu, i64 %i.fs
  %i.fw = load i32, ptr %i.bc, align 8, !tbaa !54
  %i.fx = load ptr, ptr %i.bd, align 8, !tbaa !55
  %.neg289 = add i32 %i.ft, 51
  %invariant.op = add i32 %.neg289, %i.fw
  %i.fy = load i32, ptr %i.ax, align 4, !tbaa !42
  %i.fz = load ptr, ptr %i.ay, align 8, !tbaa !43
  br label %bb.j

bb.j:                                             ; preds = %.lr.ph.split, %_ZN11duckdb_zstdL19ZSTD_litLengthPriceEjPKNS_10optState_tEi.exit17
  %.2467.i313 = phi i32 [ %.1466.i315, %.lr.ph.split ], [ %i.hw, %_ZN11duckdb_zstdL19ZSTD_litLengthPriceEjPKNS_10optState_tEi.exit17 ] ; 4 uses
  %i.ga = add i32 %.2467.i313, -3                 ; 3 uses
  %i.gb = load i32, ptr %i.fv, align 4, !tbaa !3
  %i.gc = add i32 %i.gb, 1                        ; 2 uses
  %i.gd = call noundef range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %i.gc, i1 true)
  %i.ge = xor i32 %i.gd, 31                       ; 2 uses
  %i.gf = shl i32 %i.gc, 8
  %i.gg = lshr i32 %i.gf, %i.ge
  %i.gh = icmp ugt i32 %i.ga, 127
  br i1 %i.gh, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.gi = call noundef range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %i.ga, i1 true)
  %i.gj = sub nuw nsw i32 67, %i.gi
  br label %_ZN11duckdb_zstdL19ZSTD_litLengthPriceEjPKNS_10optState_tEi.exit17

bb.l:                                             ; preds = %bb.j
  %i.gk = zext nneg i32 %i.ga to i64
  %i.gl = getelementptr inbounds nuw i8, ptr @_ZZN11duckdb_zstdL11ZSTD_MLcodeEjE7ML_Code, i64 %i.gk
  %i.gm = load i8, ptr %i.gl, align 1, !tbaa !44
  %i.gn = zext i8 %i.gm to i32
  br label %_ZN11duckdb_zstdL19ZSTD_litLengthPriceEjPKNS_10optState_tEi.exit17

_ZN11duckdb_zstdL19ZSTD_litLengthPriceEjPKNS_10optState_tEi.exit17: ; preds = %bb.k, %bb.l
  %i.go = phi i32 [ %i.gj, %bb.k ], [ %i.gn, %bb.l ]
  %i.gp = zext nneg i32 %i.go to i64              ; 2 uses
  %i.gq = getelementptr inbounds nuw i8, ptr @_ZN11duckdb_zstdL7ML_bitsE, i64 %i.gp
  %i.gr = load i8, ptr %i.gq, align 1, !tbaa !44
  %i.gs = zext i8 %i.gr to i32
  %i.gt = getelementptr inbounds nuw [4 x i8], ptr %i.fx, i64 %i.gp
  %i.gu = load i32, ptr %i.gt, align 4, !tbaa !3
  %i.gv = add i32 %i.gu, 1                        ; 2 uses
  %i.gw = call noundef range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %i.gv, i1 true)
  %i.gx = xor i32 %i.gw, 31                       ; 2 uses
  %i.gy = shl i32 %i.gv, 8
  %i.gz = lshr i32 %i.gy, %i.gx
  %i.ha = load i32, ptr %i.ad, align 4, !tbaa !45
  %i.hb = add nuw nsw i32 %i.ez, %i.gs
  %i.hc = add nuw nsw i32 %i.ge, %i.gx
  %reass.add299 = sub nsw i32 %i.hb, %i.hc
  %reass.mul300 = shl nsw i32 %reass.add299, 8
  %i.hd = add i32 %invariant.op, %i.ha
  %i.he = add i32 %i.gg, %i.gz
  %i.hf = sub i32 %i.hd, %i.he
  %i.hg = add i32 %i.hf, %reass.mul300
  %i.hh = zext i32 %.2467.i313 to i64
  %i.hi = getelementptr inbounds nuw [28 x i8], ptr %i.ad, i64 %i.hh ; 4 uses
  %i.hj = getelementptr inbounds nuw i8, ptr %i.hi, i64 8
  store i32 %.2467.i313, ptr %i.hj, align 4, !tbaa !38
  %i.hk = getelementptr inbounds nuw i8, ptr %i.hi, i64 4
  store i32 %i.ev, ptr %i.hk, align 4, !tbaa !50
  %i.hl = getelementptr inbounds nuw i8, ptr %i.hi, i64 12
  store i32 0, ptr %i.hl, align 4, !tbaa !40
  %i.hm = load i32, ptr %i.fz, align 4, !tbaa !3
  %i.hn = add i32 %i.hm, 1                        ; 2 uses
  %i.ho = call noundef range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %i.hn, i1 true)
  %i.hp = xor i32 %i.ho, 31                       ; 2 uses
  %i.hq = shl i32 %i.hn, 8
  %i.hr = lshr i32 %i.hq, %i.hp
  %i.hs = shl nuw nsw i32 %i.hp, 8
  %i.ht = add i32 %i.hr, %i.hs
  %i.hu = sub i32 %i.fy, %i.ht
  %i.hv = add nsw i32 %i.hu, %i.hg
  store i32 %i.hv, ptr %i.hi, align 4, !tbaa !45
  %i.hw = add i32 %.2467.i313, 1                  ; 3 uses
  %.not500.i = icmp ugt i32 %i.hw, %i.ex
  br i1 %.not500.i, label %._crit_edge, label %bb.j, !llvm.loop !51

._crit_edge:                                      ; preds = %_ZN11duckdb_zstdL19ZSTD_litLengthPriceEjPKNS_10optState_tEi.exit17, %_ZN11duckdb_zstdL19ZSTD_litLengthPriceEjPKNS_10optState_tEi.exit17.us, %.preheader306
  %.2467.i.lcssa = phi i32 [ %.1466.i315, %.preheader306 ], [ %i.fr, %_ZN11duckdb_zstdL19ZSTD_litLengthPriceEjPKNS_10optState_tEi.exit17.us ], [ %i.hw, %_ZN11duckdb_zstdL19ZSTD_litLengthPriceEjPKNS_10optState_tEi.exit17 ] ; 3 uses
  %indvars.iv.next374 = add nuw nsw i64 %indvars.iv373, 1 ; 2 uses
  %exitcond377.not = icmp eq i64 %indvars.iv.next374, %wide.trip.count376
  br i1 %exitcond377.not, label %.lr.ph337.preheader, label %.preheader306, !llvm.loop !56

.lr.ph337.preheader:                              ; preds = %._crit_edge
  %i.hx = zext i32 %.2467.i.lcssa to i64
  %i.hy = getelementptr inbounds nuw [28 x i8], ptr %i.ad, i64 %i.hx
  store i32 1073741824, ptr %i.hy, align 4, !tbaa !45
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #11
  %i.hz = add i32 %.2467.i.lcssa, -1
  br label %.lr.ph337

.lr.ph337:                                        ; preds = %.lr.ph337.preheader, %.thread185
  %.3449.i335 = phi i32 [ %i.aak, %.thread185 ], [ 1, %.lr.ph337.preheader ] ; 14 uses
  %.2453.i334 = phi i32 [ %.15.i191, %.thread185 ], [ %i.hz, %.lr.ph337.preheader ] ; 7 uses
  %i.ia = zext i32 %.3449.i335 to i64             ; 2 uses
  %i.ib = getelementptr inbounds nuw i8, ptr %.0.i352, i64 %i.ia ; 8 uses
  %i.ic = add i32 %.3449.i335, -1
  %i.id = zext i32 %i.ic to i64
  %i.ie = getelementptr inbounds nuw [28 x i8], ptr %i.ad, i64 %i.id ; 3 uses
  %i.if = getelementptr inbounds nuw i8, ptr %i.ie, i64 12
  %i.ig = load i32, ptr %i.if, align 4, !tbaa !40 ; 7 uses
  %i.ih = add i32 %i.ig, 1                        ; 17 uses
  %i.ii = load i32, ptr %i.ie, align 4, !tbaa !45 ; 3 uses
  %i.ij = getelementptr inbounds i8, ptr %i.ib, i64 -1
  %.val.i = load i32, ptr %i.be, align 8, !tbaa !57
  %.not31.i = icmp eq i32 %.val.i, 2
  %.pre = load i32, ptr %i.aw, align 8, !tbaa !41 ; 2 uses
  br i1 %.not31.i, label %_ZN11duckdb_zstdL20ZSTD_rawLiteralsCostEPKhjPKNS_10optState_tEi.exit, label %bb.m

bb.m:                                             ; preds = %.lr.ph337
  %i.ik = icmp eq i32 %.pre, 1
  br i1 %i.ik, label %_ZN11duckdb_zstdL20ZSTD_rawLiteralsCostEPKhjPKNS_10optState_tEi.exit.thread, label %_ZN11duckdb_zstdL20ZSTD_rawLiteralsCostEPKhjPKNS_10optState_tEi.exit.thread455

_ZN11duckdb_zstdL20ZSTD_rawLiteralsCostEPKhjPKNS_10optState_tEi.exit.thread: ; preds = %bb.m
  %i.il = add nsw i32 %i.ii, 1536
  br label %bb.r

_ZN11duckdb_zstdL20ZSTD_rawLiteralsCostEPKhjPKNS_10optState_tEi.exit.thread455: ; preds = %bb.m
  %i.im = load i32, ptr %i.bf, align 8, !tbaa !58 ; 2 uses
  %i.in = add i32 %i.im, -256
  %i.io = load ptr, ptr %i.d, align 8, !tbaa !59
  %i.ip = load i8, ptr %i.ij, align 1, !tbaa !44
  %i.iq = zext i8 %i.ip to i64
  %i.ir = getelementptr inbounds nuw [4 x i8], ptr %i.io, i64 %i.iq
  %i.is = load i32, ptr %i.ir, align 4, !tbaa !3
  %i.it = add i32 %i.is, 1                        ; 2 uses
  %i.iu = call noundef range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %i.it, i1 true)
  %i.iv = xor i32 %i.iu, 31                       ; 2 uses
  %i.iw = shl nuw nsw i32 %i.iv, 8
  %i.ix = shl i32 %i.it, 8
  %i.iy = lshr i32 %i.ix, %i.iv
  %i.iz = add i32 %i.iw, %i.iy                    ; 2 uses
  %i.ja = icmp ugt i32 %i.iz, %i.in
  %i.jb = sub i32 %i.im, %i.iz
end_hunk_1
begin_hunk_2_@_ZN11duckdb_zstd27ZSTD_compressBlock_btultra2EPNS_17ZSTD_matchState_tEPNS_10seqStore_tEPjPKvm:bb.a
bb.a:
  %i.a = alloca [3 x i32], align 4                ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !20
  %i.d = ptrtoint ptr %3 to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e
  %i.g = trunc i64 %i.f to i32
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 196
  %i.i = load i32, ptr %i.h, align 4, !tbaa !108
  %i.j = icmp eq i32 %i.i, 0
  br i1 %i.j, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !89
  %i.m = load ptr, ptr %1, align 8, !tbaa !91
  %i.n = icmp eq ptr %i.l, %i.m
  br i1 %i.n, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.p = load i32, ptr %i.o, align 8, !tbaa !24   ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 2 uses
  %i.r = load i32, ptr %i.q, align 4, !tbaa !109
  %i.s = icmp eq i32 %i.p, %i.r
  br i1 %i.s, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.t = icmp eq i32 %i.p, %i.g
  %i.u = icmp ugt i64 %4, 8
  %or.cond = and i1 %i.u, %i.t
  br i1 %or.cond, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.a, ptr noundef nonnull readonly align 4 dereferenceable(12) %2, i64 12, i1 false)
  %i.v = call fastcc noundef i64 @_ZN11duckdb_zstdL23ZSTD_compressBlock_opt2EPNS_17ZSTD_matchState_tEPNS_10seqStore_tEPjPKvmNS_15ZSTD_dictMode_eE(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef nonnull %i.a, ptr noundef %3, i64 noundef range(i64 9, 0) %4, i32 noundef 0) ; 0 uses
  call void @_ZN11duckdb_zstd18ZSTD_resetSeqStoreEPNS_10seqStore_tE(ptr noundef nonnull %1)
  %i.w = load ptr, ptr %i.b, align 8, !tbaa !20
  %i.x = sub i64 0, %4
  %i.y = getelementptr inbounds i8, ptr %i.w, i64 %i.x
  store ptr %i.y, ptr %i.b, align 8, !tbaa !20
  %i.z = trunc i64 %4 to i32
  %i.aa = load i32, ptr %i.o, align 8, !tbaa !24
  %i.ab = add i32 %i.aa, %i.z                     ; 3 uses
  store i32 %i.ab, ptr %i.o, align 8, !tbaa !24
  store i32 %i.ab, ptr %i.q, align 4, !tbaa !109
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 44
  store i32 %i.ab, ptr %i.ac, align 4, !tbaa !21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c, %bb.b, %bb.a
  %i.ad = call fastcc noundef i64 @_ZN11duckdb_zstdL23ZSTD_compressBlock_opt2EPNS_17ZSTD_matchState_tEPNS_10seqStore_tEPjPKvmNS_15ZSTD_dictMode_eE(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i64 noundef %4, i32 noundef 0)
  ret i64 %i.ad
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #3

; Function Attrs: mustprogress uwtable
define noundef i64 @_ZN11duckdb_zstd39ZSTD_compressBlock_btopt_dictMatchStateEPNS_17ZSTD_matchState_tEPNS_10seqStore_tEPjPKvm(ptr noundef initializes((224, 228)) %0, ptr nofree noundef captures(none) %1, ptr noundef %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #1 {
bb.a:
  %i.a = tail call fastcc noundef i64 @_ZN11duckdb_zstdL23ZSTD_compressBlock_opt0EPNS_17ZSTD_matchState_tEPNS_10seqStore_tEPjPKvmNS_15ZSTD_dictMode_eE(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i64 noundef %4, i32 noundef 2)
  ret i64 %i.a
}

; Function Attrs: mustprogress uwtable
define noundef i64 @_ZN11duckdb_zstd32ZSTD_compressBlock_btopt_extDictEPNS_17ZSTD_matchState_tEPNS_10seqStore_tEPjPKvm(ptr noundef initializes((224, 228)) %0, ptr nofree noundef captures(none) %1, ptr noundef %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #1 {
bb.a:
  %i.a = tail call fastcc noundef i64 @_ZN11duckdb_zstdL23ZSTD_compressBlock_opt0EPNS_17ZSTD_matchState_tEPNS_10seqStore_tEPjPKvmNS_15ZSTD_dictMode_eE(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i64 noundef %4, i32 noundef 1)
  ret i64 %i.a
}

; Function Attrs: mustprogress uwtable
define noundef i64 @_ZN11duckdb_zstd41ZSTD_compressBlock_btultra_dictMatchStateEPNS_17ZSTD_matchState_tEPNS_10seqStore_tEPjPKvm(ptr noundef initializes((224, 228)) %0, ptr nofree noundef captures(none) %1, ptr noundef %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #1 {
bb.a:
  %i.a = tail call fastcc noundef i64 @_ZN11duckdb_zstdL23ZSTD_compressBlock_opt2EPNS_17ZSTD_matchState_tEPNS_10seqStore_tEPjPKvmNS_15ZSTD_dictMode_eE(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i64 noundef %4, i32 noundef 2)
  ret i64 %i.a
}

; Function Attrs: mustprogress uwtable
define noundef i64 @_ZN11duckdb_zstd34ZSTD_compressBlock_btultra_extDictEPNS_17ZSTD_matchState_tEPNS_10seqStore_tEPjPKvm(ptr noundef initializes((224, 228)) %0, ptr nofree noundef captures(none) %1, ptr noundef %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #1 {
bb.a:
  %i.a = tail call fastcc noundef i64 @_ZN11duckdb_zstdL23ZSTD_compressBlock_opt2EPNS_17ZSTD_matchState_tEPNS_10seqStore_tEPjPKvmNS_15ZSTD_dictMode_eE(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i64 noundef %4, i32 noundef 1)
  ret i64 %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc noundef i32 @_ZN11duckdb_zstdL14ZSTD_insertBt1EPKNS_17ZSTD_matchState_tEPKhS4_jji(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, ptr nofree noundef readnone captures(address) %2, i32 noundef %3, i32 noundef %4, i32 noundef range(i32 0, 2) %5) unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !110
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.f = load i32, ptr %i.e, align 8, !tbaa !111  ; 5 uses
  switch i32 %4, label %bb.b [
    i32 8, label %bb.f
    i32 5, label %bb.c
    i32 6, label %bb.d
    i32 7, label %bb.e
  ]

bb.b:                                             ; preds = %bb.a
  %.val = load i32, ptr %1, align 1, !tbaa !3
  %i.g = mul i32 %.val, -1640531535
  %i.h = sub i32 32, %i.f
  %i.i = lshr i32 %i.g, %i.h
  %i.j = zext i32 %i.i to i64
  br label %_ZN11duckdb_zstdL12ZSTD_hashPtrEPKvjj.exit

bb.c:                                             ; preds = %bb.a
  %.val145 = load i64, ptr %1, align 1, !tbaa !31
  %i.k = mul i64 %.val145, -3523014627271114752
  %i.l = sub i32 64, %i.f
  %i.m = zext nneg i32 %i.l to i64
  %i.n = lshr i64 %i.k, %i.m
  br label %_ZN11duckdb_zstdL12ZSTD_hashPtrEPKvjj.exit

bb.d:                                             ; preds = %bb.a
  %.val146 = load i64, ptr %1, align 1, !tbaa !31
  %i.o = mul i64 %.val146, -3523014627193847808
  %i.p = sub i32 64, %i.f
  %i.q = zext nneg i32 %i.p to i64
  %i.r = lshr i64 %i.o, %i.q
  br label %_ZN11duckdb_zstdL12ZSTD_hashPtrEPKvjj.exit

bb.e:                                             ; preds = %bb.a
  %.val147 = load i64, ptr %1, align 1, !tbaa !31
  %i.s = mul i64 %.val147, -3523014627193167104
  %i.t = sub i32 64, %i.f
  %i.u = zext nneg i32 %i.t to i64
  %i.v = lshr i64 %i.s, %i.u
  br label %_ZN11duckdb_zstdL12ZSTD_hashPtrEPKvjj.exit

bb.f:                                             ; preds = %bb.a
  %.val148 = load i64, ptr %1, align 1, !tbaa !31
  %i.w = mul i64 %.val148, -3523014627327384477
  %i.x = sub i32 64, %i.f
  %i.y = zext nneg i32 %i.x to i64
  %i.z = lshr i64 %i.w, %i.y
  br label %_ZN11duckdb_zstdL12ZSTD_hashPtrEPKvjj.exit

_ZN11duckdb_zstdL12ZSTD_hashPtrEPKvjj.exit:       ; preds = %bb.b, %bb.c, %bb.d, %bb.e, %bb.f
  %.0.i = phi i64 [ %i.j, %bb.b ], [ %i.z, %bb.f ], [ %i.n, %bb.c ], [ %i.r, %bb.d ], [ %i.v, %bb.e ]
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !112 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 260
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !113
  %i.ae = add i32 %i.ad, -1
  %notmask = shl nsw i32 -1, %i.ae
  %i.af = xor i32 %notmask, -1                    ; 3 uses
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %.0.i ; 2 uses
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !3  ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !20 ; 4 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !114 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.an = load i32, ptr %i.am, align 8, !tbaa !24
  %i.ao = zext i32 %i.an to i64                   ; 4 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.al, i64 %i.ao
  %i.aq = getelementptr inbounds nuw i8, ptr %i.aj, i64 %i.ao
  %i.ar = ptrtoint ptr %1 to i64
  %i.as = ptrtoint ptr %i.aj to i64
  %i.at = sub i64 %i.ar, %i.as
  %i.au = trunc i64 %i.at to i32                  ; 5 uses
  %i.av = tail call i32 @llvm.usub.sat.i32(i32 %i.au, i32 %i.af)
  %i.aw = and i32 %i.au, %i.af
  %i.ax = shl nuw i32 %i.aw, 1
  %i.ay = zext i32 %i.ax to i64
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %i.ay ; 3 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 4 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.bb = load i32, ptr %i.b, align 8, !tbaa !115
  %i.bc = getelementptr i8, ptr %0, i64 28
  %.val149 = load i32, ptr %i.bc, align 4, !tbaa !109 ; 2 uses
  %i.bd = getelementptr i8, ptr %0, i64 40
  %.val150 = load i32, ptr %i.bd, align 8, !tbaa !116
  %i.be = shl nuw i32 1, %i.bb                    ; 2 uses
  %i.bf = sub i32 %3, %.val149
  %i.bg = icmp ugt i32 %i.bf, %i.be
  %i.bh = sub i32 %3, %i.be
  %.not.i = icmp eq i32 %.val150, 0
  %i.bi = select i1 %.not.i, i1 %i.bg, i1 false
  %i.bj = select i1 %i.bi, i32 %i.bh, i32 %.val149 ; 2 uses
  %i.bk = add i32 %i.au, 9                        ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 268
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !117
  store i32 %i.au, ptr %i.ag, align 4, !tbaa !3
  %.not187 = icmp ult i32 %i.ah, %i.bj
  br i1 %.not187, label %.thread, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN11duckdb_zstdL12ZSTD_hashPtrEPKvjj.exit
  %i.bn = shl nuw i32 1, %i.bm
  %.not = trunc nuw i32 %5 to i1
  %i.bo = getelementptr inbounds i8, ptr %2, i64 -7 ; 2 uses
  %i.bp = getelementptr inbounds i8, ptr %2, i64 -3
  %i.bq = getelementptr inbounds i8, ptr %2, i64 -1
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph, %bb.ab
  %.0116168 = phi i32 [ %i.ah, %.lr.ph ], [ %.1, %bb.ab ] ; 7 uses
  %.0117167 = phi i32 [ %i.bn, %.lr.ph ], [ %i.dw, %bb.ab ]
  %.0118166 = phi i64 [ 8, %.lr.ph ], [ %i.do, %bb.ab ] ; 2 uses
  %.0121165 = phi i32 [ %i.bk, %.lr.ph ], [ %.1122, %bb.ab ] ; 3 uses
  %.0124164 = phi i64 [ 0, %.lr.ph ], [ %.1125, %bb.ab ] ; 2 uses
  %.0127163 = phi ptr [ %i.ba, %.lr.ph ], [ %.1128, %bb.ab ] ; 4 uses
  %.0130162 = phi ptr [ %i.az, %.lr.ph ], [ %.1131, %bb.ab ] ; 4 uses
  %.0134161 = phi i64 [ 0, %.lr.ph ], [ %.1135, %bb.ab ] ; 2 uses
  %i.br = and i32 %.0116168, %i.af
  %i.bs = shl nuw i32 %i.br, 1
  %i.bt = zext i32 %i.bs to i64
  %i.bu = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %i.bt ; 3 uses
  %i.bv = tail call i64 @llvm.umin.i64(i64 %.0124164, i64 %.0134161) ; 6 uses
  %.pre = zext i32 %.0116168 to i64               ; 5 uses
  %i.bw = add i64 %i.bv, %.pre
  %.not141 = icmp ult i64 %i.bw, %i.ao
  %or.cond = select i1 %.not, i1 %.not141, i1 false
  %i.bx = getelementptr inbounds nuw i8, ptr %1, i64 %i.bv ; 7 uses
  br i1 %or.cond, label %bb.s, label %._crit_edge

._crit_edge:                                      ; preds = %bb.g
  %i.by = getelementptr inbounds nuw i8, ptr %i.aj, i64 %.pre ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 %i.bv ; 3 uses
  %i.ca = icmp ult ptr %i.bx, %i.bo
  br i1 %i.ca, label %bb.h, label %.loopexit.i

bb.h:                                             ; preds = %._crit_edge
  %.val60.i = load i64, ptr %i.bz, align 1, !tbaa !31 ; 2 uses
  %.val.i = load i64, ptr %i.bx, align 1, !tbaa !31 ; 2 uses
  %.not.i151 = icmp eq i64 %.val60.i, %.val.i
  br i1 %.not.i151, label %.preheader.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.cb = xor i64 %.val.i, %.val60.i
  %i.cc = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %i.cb, i1 true)
  %i.cd = lshr i64 %i.cc, 3
  br label %_ZN11duckdb_zstdL10ZSTD_countEPKhS1_S1_.exit

.preheader.i:                                     ; preds = %bb.h, %bb.j
  %.pn.i = phi ptr [ %.049.i, %bb.j ], [ %i.bz, %bb.h ]
  %.pn67.i = phi ptr [ %.045.i, %bb.j ], [ %i.bx, %bb.h ]
  %.045.i = getelementptr inbounds nuw i8, ptr %.pn67.i, i64 8 ; 5 uses
  %.049.i = getelementptr inbounds nuw i8, ptr %.pn.i, i64 8 ; 3 uses
  %i.ce = icmp ult ptr %.045.i, %i.bo
  br i1 %i.ce, label %bb.j, label %.loopexit.i

bb.j:                                             ; preds = %.preheader.i
  %.049.val.i = load i64, ptr %.049.i, align 1, !tbaa !31 ; 2 uses
  %.045.val.i = load i64, ptr %.045.i, align 1, !tbaa !31 ; 2 uses
  %.not59.i = icmp eq i64 %.049.val.i, %.045.val.i
  br i1 %.not59.i, label %.preheader.i, label %.thread63.i

.thread63.i:                                      ; preds = %bb.j
  %i.cf = xor i64 %.045.val.i, %.049.val.i
  %i.cg = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %i.cf, i1 true)
  %i.ch = lshr i64 %i.cg, 3
  %i.ci = getelementptr inbounds nuw i8, ptr %.045.i, i64 %i.ch
  %i.cj = ptrtoint ptr %i.ci to i64
  %i.ck = ptrtoint ptr %i.bx to i64
  %i.cl = sub i64 %i.cj, %i.ck
  br label %_ZN11duckdb_zstdL10ZSTD_countEPKhS1_S1_.exit

.loopexit.i:                                      ; preds = %.preheader.i, %._crit_edge
  %.251.i = phi ptr [ %i.bz, %._crit_edge ], [ %.049.i, %.preheader.i ] ; 4 uses
  %.247.i = phi ptr [ %i.bx, %._crit_edge ], [ %.045.i, %.preheader.i ] ; 5 uses
  %i.cm = icmp ult ptr %.247.i, %i.bp
  br i1 %i.cm, label %bb.k, label %bb.m

bb.k:                                             ; preds = %.loopexit.i
  %.251.val.i = load i32, ptr %.251.i, align 1, !tbaa !3
  %.247.val.i = load i32, ptr %.247.i, align 1, !tbaa !3
  %i.cn = icmp eq i32 %.251.val.i, %.247.val.i
  br i1 %i.cn, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.co = getelementptr inbounds nuw i8, ptr %.247.i, i64 4
  %i.cp = getelementptr inbounds nuw i8, ptr %.251.i, i64 4
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k, %.loopexit.i
  %.352.i = phi ptr [ %i.cp, %bb.l ], [ %.251.i, %bb.k ], [ %.251.i, %.loopexit.i ] ; 4 uses
  %.348.i = phi ptr [ %i.co, %bb.l ], [ %.247.i, %bb.k ], [ %.247.i, %.loopexit.i ] ; 5 uses
  %i.cq = icmp ult ptr %.348.i, %i.bq
  br i1 %i.cq, label %bb.n, label %bb.p

bb.n:                                             ; preds = %bb.m
  %.352.val.i = load i16, ptr %.352.i, align 1, !tbaa !118
  %.348.val.i = load i16, ptr %.348.i, align 1, !tbaa !118
  %i.cr = icmp eq i16 %.352.val.i, %.348.val.i
  br i1 %i.cr, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.cs = getelementptr inbounds nuw i8, ptr %.348.i, i64 2
  %i.ct = getelementptr inbounds nuw i8, ptr %.352.i, i64 2
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n, %bb.m
  %.453.i = phi ptr [ %i.ct, %bb.o ], [ %.352.i, %bb.n ], [ %.352.i, %bb.m ]
  %.4.i = phi ptr [ %i.cs, %bb.o ], [ %.348.i, %bb.n ], [ %.348.i, %bb.m ] ; 4 uses
  %i.cu = icmp ult ptr %.4.i, %2
  br i1 %i.cu, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.cv = load i8, ptr %.453.i, align 1, !tbaa !44
  %i.cw = load i8, ptr %.4.i, align 1, !tbaa !44
  %i.cx = icmp eq i8 %i.cv, %i.cw
  %spec.select.idx.i = zext i1 %i.cx to i64
  %spec.select.i = getelementptr inbounds nuw i8, ptr %.4.i, i64 %spec.select.idx.i
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %.5.i = phi ptr [ %.4.i, %bb.p ], [ %spec.select.i, %bb.q ]
  %i.cy = ptrtoint ptr %.5.i to i64
  %i.cz = ptrtoint ptr %i.bx to i64
  %i.da = sub i64 %i.cy, %i.cz
  br label %_ZN11duckdb_zstdL10ZSTD_countEPKhS1_S1_.exit

_ZN11duckdb_zstdL10ZSTD_countEPKhS1_S1_.exit:     ; preds = %bb.i, %.thread63.i, %bb.r
  %.3.i = phi i64 [ %i.cl, %.thread63.i ], [ %i.da, %bb.r ], [ %i.cd, %bb.i ]
  %i.db = add i64 %.3.i, %i.bv
  br label %bb.t

bb.s:                                             ; preds = %bb.g
  %i.dc = getelementptr inbounds nuw i8, ptr %i.al, i64 %.pre ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 %i.bv
  %i.de = tail call fastcc noundef i64 @_ZN11duckdb_zstdL20ZSTD_count_2segmentsEPKhS1_S1_S1_S1_(ptr noundef %i.bx, ptr noundef %i.dd, ptr noundef %2, ptr noundef nonnull %i.ap, ptr noundef nonnull %i.aq)
  %i.df = add i64 %i.de, %i.bv                    ; 2 uses
  %i.dg = add i64 %i.df, %.pre
  %.not142 = icmp ult i64 %i.dg, %i.ao
  %i.dh = getelementptr inbounds nuw i8, ptr %i.aj, i64 %.pre
  %spec.select = select i1 %.not142, ptr %i.dc, ptr %i.dh
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %_ZN11duckdb_zstdL10ZSTD_countEPKhS1_S1_.exit
  %.0137 = phi ptr [ %i.by, %_ZN11duckdb_zstdL10ZSTD_countEPKhS1_S1_.exit ], [ %spec.select, %bb.s ]
  %.0115 = phi i64 [ %i.db, %_ZN11duckdb_zstdL10ZSTD_countEPKhS1_S1_.exit ], [ %i.df, %bb.s ] ; 9 uses
  %i.di = icmp ugt i64 %.0115, %.0118166
  br i1 %i.di, label %bb.u, label %bb.w

bb.u:                                             ; preds = %bb.t
  %i.dj = sub i32 %.0121165, %.0116168
  %i.dk = zext i32 %i.dj to i64
  %i.dl = icmp ugt i64 %.0115, %i.dk
  br i1 %i.dl, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.dm = trunc i64 %.0115 to i32
  %i.dn = add i32 %.0116168, %i.dm
  br label %bb.w

bb.w:                                             ; preds = %bb.u, %bb.v, %bb.t
  %.1122 = phi i32 [ %i.dn, %bb.v ], [ %.0121165, %bb.u ], [ %.0121165, %bb.t ] ; 5 uses
  %.1119 = phi i64 [ %.0115, %bb.v ], [ %.0115, %bb.u ], [ %.0118166, %bb.t ]
  %i.do = freeze i64 %.1119                       ; 5 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %1, i64 %.0115 ; 2 uses
  %i.dq = icmp eq ptr %i.dp, %2
  br i1 %i.dq, label %.thread, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.dr = getelementptr inbounds nuw i8, ptr %.0137, i64 %.0115
  %i.ds = load i8, ptr %i.dr, align 1, !tbaa !44
  %i.dt = load i8, ptr %i.dp, align 1, !tbaa !44
  %i.du = icmp ult i8 %i.ds, %i.dt
  %.not144 = icmp ugt i32 %.0116168, %i.av        ; 2 uses
  br i1 %i.du, label %bb.y, label %bb.aa

bb.y:                                             ; preds = %bb.x
  store i32 %.0116168, ptr %.0130162, align 4, !tbaa !3
  br i1 %.not144, label %bb.z, label %.thread

bb.z:                                             ; preds = %bb.y
  %i.dv = getelementptr inbounds nuw i8, ptr %i.bu, i64 4 ; 2 uses
  br label %bb.ab

bb.aa:                                            ; preds = %bb.x
  store i32 %.0116168, ptr %.0127163, align 4, !tbaa !3
  br i1 %.not144, label %bb.ab, label %.thread

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %.1135 = phi i64 [ %.0134161, %bb.z ], [ %.0115, %bb.aa ]
  %.1131 = phi ptr [ %i.dv, %bb.z ], [ %.0130162, %bb.aa ] ; 2 uses
  %.1128 = phi ptr [ %.0127163, %bb.z ], [ %i.bu, %bb.aa ] ; 2 uses
  %.1125 = phi i64 [ %.0115, %bb.z ], [ %.0124164, %bb.aa ]
  %.1.in = phi ptr [ %i.dv, %bb.z ], [ %i.bu, %bb.aa ]
  %.1 = load i32, ptr %.1.in, align 4, !tbaa !3   ; 2 uses
  %i.dw = add i32 %.0117167, -1                   ; 2 uses
  %i.dx = icmp ne i32 %i.dw, 0
  %i.dy = icmp uge i32 %.1, %i.bj
  %i.dz = select i1 %i.dx, i1 %i.dy, i1 false
  br i1 %i.dz, label %bb.g, label %.thread, !llvm.loop !119

.thread:                                          ; preds = %bb.ab, %bb.y, %bb.w, %bb.aa, %_ZN11duckdb_zstdL12ZSTD_hashPtrEPKvjj.exit
  %.3133 = phi ptr [ %i.az, %_ZN11duckdb_zstdL12ZSTD_hashPtrEPKvjj.exit ], [ %i.a, %bb.y ], [ %.0130162, %bb.aa ], [ %.0130162, %bb.w ], [ %.1131, %bb.ab ]
  %.3 = phi ptr [ %i.ba, %_ZN11duckdb_zstdL12ZSTD_hashPtrEPKvjj.exit ], [ %.0127163, %bb.y ], [ %i.a, %bb.aa ], [ %.0127163, %bb.w ], [ %.1128, %bb.ab ]
end_hunk_2
