Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openzl/original/encode_match_finder_double_fast_lc?download=true
inline.NumInlined: 55
inline.NumDeleted: 22
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 3
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.ZS_matchFinder = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@.str = private unnamed_addr constant [13 x i8] c"doubleFastLz\00", align 1
@ZS_doubleFastLzMatchFinder = local_unnamed_addr constant %struct.ZS_matchFinder { ptr @.str, ptr null, ptr @ZS_fastLzMatchFinderCtx_create, ptr @ZS_fastLzMatchFinderCtx_reset, ptr null, ptr @ZS_fastLzMatchFinderCtx_release, ptr @ZS_fastLzMatchFinder_parse }, align 8
@ZL_g_logLevel = external local_unnamed_addr global i32, align 4
@.str.1 = private unnamed_addr constant [77 x i8] c"/opt-bench/work/openzl/openzl/src/openzl/codecs/rolz/encode_rolz_sequences.h\00", align 1
@__func__.ZS_RolzSeqStore_store = private unnamed_addr constant [22 x i8] c"ZS_RolzSeqStore_store\00", align 1
@.str.2 = private unnamed_addr constant [40 x i8] c"Store sequence: mt=%u ll=%u ml=%u mc=%u\00", align 1
@__func__.ZS_RolzSeqStore_storeLastLiterals = private unnamed_addr constant [34 x i8] c"ZS_RolzSeqStore_storeLastLiterals\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"Store last literals %u\00", align 1

; Function Attrs: mustprogress nofree nounwind willreturn memory(readwrite, target_mem: none) uwtable
define internal noundef ptr @ZS_fastLzMatchFinderCtx_create(ptr noundef %0, ptr nofree noundef readonly captures(none) %1) #0 {
bb.a:
  %i.a = tail call noalias dereferenceable_or_null(104) ptr @calloc(i64 noundef 1, i64 noundef 104) #11 ; 4 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(92) %i.b, ptr noundef nonnull align 4 dereferenceable(92) %1, i64 92, i1 false), !tbaa.struct !16
  store ptr %0, ptr %i.a, align 8, !tbaa !19
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret ptr %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal void @ZS_fastLzMatchFinderCtx_reset(ptr nofree readnone captures(none) %0) #1 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define internal void @ZS_fastLzMatchFinderCtx_release(ptr noundef captures(address_is_null) %0) #2 {
bb.a:
  %.not.i = icmp eq ptr %0, null
  br i1 %.not.i, label %ZS_fastLzMatchFinderCtx_releaseInternal.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @free(ptr noundef nonnull %0) #12
  br label %ZS_fastLzMatchFinderCtx_releaseInternal.exit

ZS_fastLzMatchFinderCtx_releaseInternal.exit:     ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @ZS_fastLzMatchFinder_parse(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef captures(none) %1, ptr noundef %2, i64 noundef %3) #3 {
bb.a:
  %4 = ptrtoaddr ptr %2 to i64
  %i.a = getelementptr i8, ptr %2, i64 %3         ; 13 uses
  %i.b = getelementptr inbounds i8, ptr %i.a, i64 -16 ; 2 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !27     ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !30   ; 6 uses
  %calloc = tail call dereferenceable_or_null(262144) ptr @calloc(i64 1, i64 262144) ; 4 uses
  %calloc454 = tail call dereferenceable_or_null(524288) ptr @calloc(i64 1, i64 524288) ; 5 uses
  %i.f = icmp sgt i64 %3, 32
  br i1 %i.f, label %.lr.ph413, label %._crit_edge

.lr.ph413:                                        ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.h = ptrtoint ptr %i.e to i64                 ; 3 uses
  %i.i = getelementptr inbounds i8, ptr %i.a, i64 -7 ; 10 uses
  %i.j = getelementptr inbounds i8, ptr %i.a, i64 -3 ; 5 uses
  %i.k = getelementptr inbounds i8, ptr %i.a, i64 -1 ; 5 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 6 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 28 uses
  %i.p = getelementptr inbounds i8, ptr %i.a, i64 -32 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 10 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 4 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph413, %.thread
  %.0165411 = phi ptr [ %i.g, %.lr.ph413 ], [ %.4, %.thread ] ; 17 uses
  %.0166410 = phi ptr [ %2, %.lr.ph413 ], [ %.4170, %.thread ] ; 3 uses
  %.0180409 = phi i32 [ 16, %.lr.ph413 ], [ %.1181, %.thread ] ; 5 uses
  %i.s = ptrtoint ptr %.0165411 to i64            ; 5 uses
  %i.t = sub i64 %i.s, %i.h
  %i.u = trunc i64 %i.t to i32                    ; 9 uses
  %i.v = tail call i32 @llvm.usub.sat.i32(i32 %i.u, i32 2097152) ; 3 uses
  %i.w = add i32 %i.u, -15                        ; 2 uses
  %.val24.i = load i64, ptr %.0165411, align 1    ; 2 uses
  %i.x = mul i64 %.val24.i, -3523014627271114752
  %i.y = lshr i64 %i.x, 48
  %i.z = mul i64 %.val24.i, -3523014627327384477
  %i.aa = lshr i64 %i.z, 47
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %calloc, i64 %i.y ; 2 uses
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !11 ; 4 uses
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %calloc454, i64 %i.aa ; 2 uses
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !11 ; 4 uses
  %i.af = zext i32 %i.ac to i64
  %i.ag = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.af ; 4 uses
  %i.ah = zext i32 %i.ae to i64
  %i.ai = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.ah ; 3 uses
  store i32 %i.u, ptr %i.ab, align 4, !tbaa !11
  store i32 %i.u, ptr %i.ad, align 4, !tbaa !11
  %i.aj = getelementptr inbounds nuw i8, ptr %.0165411, i64 1 ; 20 uses
  %.val203 = load i32, ptr %i.aj, align 1
  %i.ak = zext i32 %.0180409 to i64
  %i.al = sub nsw i64 0, %i.ak
  %i.am = getelementptr inbounds i8, ptr %i.aj, i64 %i.al ; 4 uses
  %.val202 = load i32, ptr %i.am, align 1
  %i.an = icmp eq i32 %.val203, %.val202
  br i1 %i.an, label %bb.c, label %bb.o

bb.c:                                             ; preds = %bb.b
  %i.ao = icmp ult ptr %i.aj, %i.i
  br i1 %i.ao, label %bb.d, label %.loopexit.i

bb.d:                                             ; preds = %bb.c
  %.val60.i = load i64, ptr %i.am, align 1        ; 2 uses
  %.val.i = load i64, ptr %i.aj, align 1          ; 2 uses
  %.not.i = icmp eq i64 %.val60.i, %.val.i
  br i1 %.not.i, label %.preheader.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ap = xor i64 %.val.i, %.val60.i
  %i.aq = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %i.ap, i1 true)
  %i.ar = lshr i64 %i.aq, 3
  br label %.preheader388

.preheader.i:                                     ; preds = %bb.d, %bb.f
  %.pn.i = phi ptr [ %.049.i, %bb.f ], [ %i.aj, %bb.d ]
  %.pn67.i = phi ptr [ %.045.i, %bb.f ], [ %i.am, %bb.d ]
  %.045.i = getelementptr inbounds nuw i8, ptr %.pn67.i, i64 8 ; 3 uses
  %.049.i = getelementptr inbounds nuw i8, ptr %.pn.i, i64 8 ; 5 uses
  %i.as = icmp ult ptr %.049.i, %i.i
  br i1 %i.as, label %bb.f, label %.loopexit.i

bb.f:                                             ; preds = %.preheader.i
  %.045.val.i = load i64, ptr %.045.i, align 1    ; 2 uses
  %.049.val.i = load i64, ptr %.049.i, align 1    ; 2 uses
  %.not59.i = icmp eq i64 %.045.val.i, %.049.val.i
  br i1 %.not59.i, label %.preheader.i, label %.thread63.i

.thread63.i:                                      ; preds = %bb.f
  %i.at = xor i64 %.049.val.i, %.045.val.i
  %i.au = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %i.at, i1 true)
  %i.av = lshr i64 %i.au, 3
  %i.aw = getelementptr inbounds nuw i8, ptr %.049.i, i64 %i.av
  %i.ax = ptrtoint ptr %i.aw to i64
  %i.ay = ptrtoint ptr %i.aj to i64
  %i.az = sub i64 %i.ax, %i.ay
  br label %.preheader388

.loopexit.i:                                      ; preds = %.preheader.i, %bb.c
  %.251.i = phi ptr [ %i.aj, %bb.c ], [ %.049.i, %.preheader.i ] ; 5 uses
  %.247.i = phi ptr [ %i.am, %bb.c ], [ %.045.i, %.preheader.i ] ; 4 uses
  %i.ba = icmp ult ptr %.251.i, %i.j
  br i1 %i.ba, label %bb.g, label %bb.i

bb.g:                                             ; preds = %.loopexit.i
  %.247.val.i = load i32, ptr %.247.i, align 1
  %.251.val.i = load i32, ptr %.251.i, align 1
  %i.bb = icmp eq i32 %.247.val.i, %.251.val.i
  br i1 %i.bb, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.bc = getelementptr inbounds nuw i8, ptr %.251.i, i64 4
  %i.bd = getelementptr inbounds nuw i8, ptr %.247.i, i64 4
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %.loopexit.i
  %.352.i = phi ptr [ %i.bc, %bb.h ], [ %.251.i, %bb.g ], [ %.251.i, %.loopexit.i ] ; 5 uses
  %.348.i = phi ptr [ %i.bd, %bb.h ], [ %.247.i, %bb.g ], [ %.247.i, %.loopexit.i ] ; 4 uses
  %i.be = icmp ult ptr %.352.i, %i.k
  br i1 %i.be, label %bb.j, label %bb.l

bb.j:                                             ; preds = %bb.i
  %.348.val.i = load i16, ptr %.348.i, align 1
  %.352.val.i = load i16, ptr %.352.i, align 1
  %i.bf = icmp eq i16 %.348.val.i, %.352.val.i
  br i1 %i.bf, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.bg = getelementptr inbounds nuw i8, ptr %.352.i, i64 2
  %i.bh = getelementptr inbounds nuw i8, ptr %.348.i, i64 2
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j, %bb.i
  %.453.i = phi ptr [ %i.bg, %bb.k ], [ %.352.i, %bb.j ], [ %.352.i, %bb.i ] ; 4 uses
  %.4.i = phi ptr [ %i.bh, %bb.k ], [ %.348.i, %bb.j ], [ %.348.i, %bb.i ]
  %i.bi = icmp ult ptr %.453.i, %i.a
  br i1 %i.bi, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.bj = load i8, ptr %.4.i, align 1, !tbaa !31
  %i.bk = load i8, ptr %.453.i, align 1, !tbaa !31
  %i.bl = icmp eq i8 %i.bj, %i.bk
  %spec.select.idx.i = zext i1 %i.bl to i64
  %spec.select.i = getelementptr inbounds nuw i8, ptr %.453.i, i64 %spec.select.idx.i
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %.5.i = phi ptr [ %.453.i, %bb.l ], [ %spec.select.i, %bb.m ]
  %i.bm = ptrtoint ptr %.5.i to i64
  %i.bn = ptrtoint ptr %i.aj to i64
  %i.bo = sub i64 %i.bm, %i.bn
  br label %.preheader388

bb.o:                                             ; preds = %bb.b
  %i.bp = icmp ugt i32 %i.ae, %i.v
  %i.bq = icmp ult i32 %i.ae, %i.w
  %or.cond = and i1 %i.bp, %i.bq
  br i1 %or.cond, label %bb.p, label %bb.z

bb.p:                                             ; preds = %bb.o
  %.0165.val = load i64, ptr %.0165411, align 1
  %.val197 = load i64, ptr %i.ai, align 1
  %i.br = icmp eq i64 %.0165.val, %.val197
  br i1 %i.br, label %bb.q, label %bb.z

bb.q:                                             ; preds = %bb.p
  %i.bs = sub i32 %i.u, %i.ae                     ; 2 uses
  %i.bt = icmp ult ptr %.0165411, %i.i
  br i1 %i.bt, label %.preheader.i223, label %.loopexit.i205

.preheader.i223:                                  ; preds = %bb.q, %bb.r
  %.pn.i224 = phi ptr [ %.049.i227, %bb.r ], [ %.0165411, %bb.q ]
  %.pn67.i225 = phi ptr [ %.045.i226, %bb.r ], [ %i.ai, %bb.q ]
  %.045.i226 = getelementptr inbounds nuw i8, ptr %.pn67.i225, i64 8 ; 3 uses
  %.049.i227 = getelementptr inbounds nuw i8, ptr %.pn.i224, i64 8 ; 5 uses
  %i.bu = icmp ult ptr %.049.i227, %i.i
  br i1 %i.bu, label %bb.r, label %.loopexit.i205

bb.r:                                             ; preds = %.preheader.i223
  %.045.val.i228 = load i64, ptr %.045.i226, align 1 ; 2 uses
  %.049.val.i229 = load i64, ptr %.049.i227, align 1 ; 2 uses
  %.not59.i230 = icmp eq i64 %.045.val.i228, %.049.val.i229
  br i1 %.not59.i230, label %.preheader.i223, label %.thread63.i231

.thread63.i231:                                   ; preds = %bb.r
  %i.bv = xor i64 %.049.val.i229, %.045.val.i228
  %i.bw = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %i.bv, i1 true)
  %i.bx = lshr i64 %i.bw, 3
  %i.by = getelementptr inbounds nuw i8, ptr %.049.i227, i64 %i.bx
  br label %ZS_count.exit232

.loopexit.i205:                                   ; preds = %.preheader.i223, %bb.q
  %.251.i206 = phi ptr [ %.0165411, %bb.q ], [ %.049.i227, %.preheader.i223 ] ; 5 uses
  %.247.i207 = phi ptr [ %i.ai, %bb.q ], [ %.045.i226, %.preheader.i223 ] ; 4 uses
  %i.bz = icmp ult ptr %.251.i206, %i.j
  br i1 %i.bz, label %bb.s, label %bb.u

bb.s:                                             ; preds = %.loopexit.i205
  %.247.val.i218 = load i32, ptr %.247.i207, align 1
  %.251.val.i219 = load i32, ptr %.251.i206, align 1
end_hunk_0
begin_hunk_1_@ZS_fastLzMatchFinder_parse:bb.a
  %i.mi = phi i64 [ %.pre.i299, %.loopexit..critedge_crit_edge.i298 ], [ %.pre58.i304, %bb.bq ]
  %i.mj = icmp eq i64 %i.mi, 0
  br i1 %i.mj, label %bb.bt, label %bb.bw

bb.bt:                                            ; preds = %.critedge.i300
  %i.mk = icmp ne ptr %i.lk, %i.ll
  %.not49.i302 = icmp eq i32 %.sroa.0365.1, 0
  %or.cond.i303 = or i1 %.not49.i302, %i.mk
  br i1 %or.cond.i303, label %bb.bv, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  store i8 0, ptr %i.lk, align 1, !tbaa !31
  %i.ml = load ptr, ptr %i.o, align 8, !tbaa !39
  %i.mm = getelementptr inbounds nuw i8, ptr %i.ml, i64 1
  %i.mn = add i32 %.sroa.0365.1, -1
  %i.mo = zext i32 %i.mn to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.mm, ptr align 1 %.3169, i64 %i.mo, i1 false)
  br label %bb.bw

bb.bv:                                            ; preds = %bb.bt
  %i.mp = getelementptr inbounds i8, ptr %.3169, i64 -1
  %i.mq = zext i32 %.sroa.0365.1 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.lk, ptr nonnull align 1 %i.mp, i64 %i.mq, i1 false)
  br label %bb.bw

bb.bw:                                            ; preds = %bb.bv, %bb.bu, %.critedge.i300
  %i.mr = load ptr, ptr %i.q, align 8, !tbaa !43
  %i.ms = zext i32 %.sroa.0365.1 to i64           ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.mr, ptr align 1 %.3169, i64 %i.ms, i1 false)
  br label %ZS_RolzSeqStore_store.exit318

ZS_RolzSeqStore_store.exit318:                    ; preds = %.preheader.i308, %ZS_wildcopy.exit54.i305.thread377, %ZS_wildcopy.exit54.i305, %bb.bw
  %.pre-phi = phi i64 [ %i.ms, %bb.bw ], [ %i.ln, %ZS_wildcopy.exit54.i305.thread377 ], [ %i.ln, %ZS_wildcopy.exit54.i305 ], [ %i.ln, %.preheader.i308 ] ; 2 uses
  %i.mt = load ptr, ptr %i.q, align 8, !tbaa !43
  %i.mu = getelementptr inbounds nuw i8, ptr %i.mt, i64 %.pre-phi
  store ptr %i.mu, ptr %i.q, align 8, !tbaa !43
  %i.mv = load ptr, ptr %i.o, align 8, !tbaa !39
  %i.mw = getelementptr inbounds nuw i8, ptr %i.mv, i64 %.pre-phi
  store ptr %i.mw, ptr %i.o, align 8, !tbaa !39
  %i.mx = load ptr, ptr %i.r, align 8, !tbaa !44  ; 5 uses
  %i.my = getelementptr inbounds nuw i8, ptr %i.mx, i64 16
  store ptr %i.my, ptr %i.r, align 8, !tbaa !44
  store i32 %.sroa.0365.1, ptr %i.mx, align 4, !tbaa !11
  %.sroa.15374.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.mx, i64 4
  store i32 %.sroa.15374.1, ptr %.sroa.15374.0..sroa_idx, align 4, !tbaa !11
  %.sroa.21.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.mx, i64 8
  store i32 %spec.select, ptr %.sroa.21.0..sroa_idx, align 4, !tbaa !11
  %.sroa.30.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.mx, i64 12
  store i32 %.sroa.30.1, ptr %.sroa.30.0..sroa_idx, align 4, !tbaa !11
  %i.mz = zext i32 %spec.select to i64
  %i.na = getelementptr inbounds nuw i8, ptr %.3.lcssa, i64 %i.mz ; 19 uses
  %.not191 = icmp ugt ptr %i.na, %i.b
  br i1 %.not191, label %.thread, label %bb.bx

bb.bx:                                            ; preds = %ZS_RolzSeqStore_store.exit318
  %.val24.i319 = load i64, ptr %i.ff, align 1     ; 2 uses
  %i.nb = mul i64 %.val24.i319, -3523014627271114752
  %i.nc = lshr i64 %i.nb, 48
  %i.nd = getelementptr inbounds nuw [4 x i8], ptr %calloc, i64 %i.nc
  store i32 %i.fd, ptr %i.nd, align 4, !tbaa !11
  %i.ne = mul i64 %.val24.i319, -3523014627327384477
  %i.nf = lshr i64 %i.ne, 47
  %i.ng = getelementptr inbounds nuw [4 x i8], ptr %calloc454, i64 %i.nf
  store i32 %i.fd, ptr %i.ng, align 4, !tbaa !11
  %i.nh = getelementptr inbounds i8, ptr %i.na, i64 -1 ; 2 uses
  %i.ni = ptrtoint ptr %i.nh to i64
  %i.nj = sub i64 %i.ni, %i.h
  %i.nk = trunc i64 %i.nj to i32
  %.val24.i321 = load i64, ptr %i.nh, align 1
  %i.nl = mul i64 %.val24.i321, -3523014627271114752
  %i.nm = lshr i64 %i.nl, 48
  %i.nn = getelementptr inbounds nuw [4 x i8], ptr %calloc, i64 %i.nm
  store i32 %i.nk, ptr %i.nn, align 4, !tbaa !11
  %i.no = getelementptr inbounds i8, ptr %i.na, i64 -2 ; 2 uses
  %i.np = ptrtoint ptr %i.no to i64
  %i.nq = sub i64 %i.np, %i.h
  %i.nr = trunc i64 %i.nq to i32
  %.val24.i322 = load i64, ptr %i.no, align 1
  %i.ns = mul i64 %.val24.i322, -3523014627327384477
  %i.nt = lshr i64 %i.ns, 47
  %i.nu = getelementptr inbounds nuw [4 x i8], ptr %calloc454, i64 %i.nt
  store i32 %i.nr, ptr %i.nu, align 4, !tbaa !11
  br i1 %or.cond5, label %bb.by, label %.thread

bb.by:                                            ; preds = %bb.bx
  %.val199 = load i32, ptr %i.na, align 1
  %i.nv = getelementptr inbounds i8, ptr %i.na, i64 %i.fc ; 4 uses
  %.val198 = load i32, ptr %i.nv, align 1
  %i.nw = icmp eq i32 %.val199, %.val198
  br i1 %i.nw, label %bb.bz, label %.thread

bb.bz:                                            ; preds = %bb.by
  %i.nx = icmp ult ptr %i.na, %i.i
  br i1 %i.nx, label %bb.ca, label %.loopexit.i323

bb.ca:                                            ; preds = %bb.bz
  %.val60.i338 = load i64, ptr %i.nv, align 1     ; 2 uses
  %.val.i339 = load i64, ptr %i.na, align 1       ; 2 uses
  %.not.i340 = icmp eq i64 %.val60.i338, %.val.i339
  br i1 %.not.i340, label %.preheader.i341, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  %i.ny = xor i64 %.val.i339, %.val60.i338
  %i.nz = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %i.ny, i1 true)
  %i.oa = lshr i64 %i.nz, 3
  br label %.backedge

.preheader.i341:                                  ; preds = %bb.ca, %bb.cc
  %.pn.i342 = phi ptr [ %.049.i345, %bb.cc ], [ %i.na, %bb.ca ]
  %.pn67.i343 = phi ptr [ %.045.i344, %bb.cc ], [ %i.nv, %bb.ca ]
  %.045.i344 = getelementptr inbounds nuw i8, ptr %.pn67.i343, i64 8 ; 3 uses
  %.049.i345 = getelementptr inbounds nuw i8, ptr %.pn.i342, i64 8 ; 5 uses
  %i.ob = icmp ult ptr %.049.i345, %i.i
  br i1 %i.ob, label %bb.cc, label %.loopexit.i323

bb.cc:                                            ; preds = %.preheader.i341
  %.045.val.i346 = load i64, ptr %.045.i344, align 1 ; 2 uses
  %.049.val.i347 = load i64, ptr %.049.i345, align 1 ; 2 uses
  %.not59.i348 = icmp eq i64 %.045.val.i346, %.049.val.i347
  br i1 %.not59.i348, label %.preheader.i341, label %.thread63.i349

.thread63.i349:                                   ; preds = %bb.cc
  %i.oc = xor i64 %.049.val.i347, %.045.val.i346
  %i.od = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %i.oc, i1 true)
  %i.oe = lshr i64 %i.od, 3
  %i.of = getelementptr inbounds nuw i8, ptr %.049.i345, i64 %i.oe
  %i.og = ptrtoint ptr %i.of to i64
  %i.oh = ptrtoint ptr %i.na to i64
  %i.oi = sub i64 %i.og, %i.oh
  br label %.backedge

.loopexit.i323:                                   ; preds = %.preheader.i341, %bb.bz
  %.251.i324 = phi ptr [ %i.na, %bb.bz ], [ %.049.i345, %.preheader.i341 ] ; 5 uses
  %.247.i325 = phi ptr [ %i.nv, %bb.bz ], [ %.045.i344, %.preheader.i341 ] ; 4 uses
  %i.oj = icmp ult ptr %.251.i324, %i.j
  br i1 %i.oj, label %bb.cd, label %bb.cf

bb.cd:                                            ; preds = %.loopexit.i323
  %.247.val.i336 = load i32, ptr %.247.i325, align 1
  %.251.val.i337 = load i32, ptr %.251.i324, align 1
  %i.ok = icmp eq i32 %.247.val.i336, %.251.val.i337
  br i1 %i.ok, label %bb.ce, label %bb.cf

bb.ce:                                            ; preds = %bb.cd
  %i.ol = getelementptr inbounds nuw i8, ptr %.251.i324, i64 4
  %i.om = getelementptr inbounds nuw i8, ptr %.247.i325, i64 4
  br label %bb.cf

bb.cf:                                            ; preds = %bb.ce, %bb.cd, %.loopexit.i323
  %.352.i326 = phi ptr [ %i.ol, %bb.ce ], [ %.251.i324, %bb.cd ], [ %.251.i324, %.loopexit.i323 ] ; 5 uses
  %.348.i327 = phi ptr [ %i.om, %bb.ce ], [ %.247.i325, %bb.cd ], [ %.247.i325, %.loopexit.i323 ] ; 4 uses
  %i.on = icmp ult ptr %.352.i326, %i.k
  br i1 %i.on, label %bb.cg, label %bb.ci

bb.cg:                                            ; preds = %bb.cf
  %.348.val.i334 = load i16, ptr %.348.i327, align 1
  %.352.val.i335 = load i16, ptr %.352.i326, align 1
  %i.oo = icmp eq i16 %.348.val.i334, %.352.val.i335
  br i1 %i.oo, label %bb.ch, label %bb.ci

bb.ch:                                            ; preds = %bb.cg
  %i.op = getelementptr inbounds nuw i8, ptr %.352.i326, i64 2
  %i.oq = getelementptr inbounds nuw i8, ptr %.348.i327, i64 2
  br label %bb.ci

bb.ci:                                            ; preds = %bb.ch, %bb.cg, %bb.cf
  %.453.i328 = phi ptr [ %i.op, %bb.ch ], [ %.352.i326, %bb.cg ], [ %.352.i326, %bb.cf ] ; 4 uses
  %.4.i329 = phi ptr [ %i.oq, %bb.ch ], [ %.348.i327, %bb.cg ], [ %.348.i327, %bb.cf ]
  %i.or = icmp ult ptr %.453.i328, %i.a
  br i1 %i.or, label %bb.cj, label %bb.ck

bb.cj:                                            ; preds = %bb.ci
  %i.os = load i8, ptr %.4.i329, align 1, !tbaa !31
  %i.ot = load i8, ptr %.453.i328, align 1, !tbaa !31
  %i.ou = icmp eq i8 %i.os, %i.ot
  %spec.select.idx.i332 = zext i1 %i.ou to i64
  %spec.select.i333 = getelementptr inbounds nuw i8, ptr %.453.i328, i64 %spec.select.idx.i332
  br label %bb.ck

bb.ck:                                            ; preds = %bb.cj, %bb.ci
  %.5.i330 = phi ptr [ %.453.i328, %bb.ci ], [ %spec.select.i333, %bb.cj ]
  %i.ov = ptrtoint ptr %.5.i330 to i64
  %i.ow = ptrtoint ptr %i.na to i64
  %i.ox = sub i64 %i.ov, %i.ow
  br label %.backedge

.backedge:                                        ; preds = %bb.ck, %.thread63.i349, %bb.cb
  %.1176.in.be = phi i64 [ %i.ox, %bb.ck ], [ %i.oi, %.thread63.i349 ], [ %i.oa, %bb.cb ]
  br label %bb.ba

.thread:                                          ; preds = %bb.bx, %bb.by, %ZS_RolzSeqStore_store.exit318, %bb.ab
  %.1181 = phi i32 [ %.0180409, %bb.ab ], [ %.1173.ph, %ZS_RolzSeqStore_store.exit318 ], [ %.1173.ph, %bb.by ], [ %.1173.ph, %bb.bx ]
  %.4170 = phi ptr [ %.0166410, %bb.ab ], [ %i.na, %ZS_RolzSeqStore_store.exit318 ], [ %i.na, %bb.by ], [ %i.na, %bb.bx ] ; 2 uses
  %.4 = phi ptr [ %i.cp, %bb.ab ], [ %i.na, %ZS_RolzSeqStore_store.exit318 ], [ %i.na, %bb.by ], [ %i.na, %bb.bx ] ; 2 uses
  %i.oy = icmp ult ptr %.4, %i.b
  br i1 %i.oy, label %bb.b, label %._crit_edge

._crit_edge:                                      ; preds = %.thread, %bb.a
  %.0166.lcssa = phi ptr [ %2, %bb.a ], [ %.4170, %.thread ] ; 6 uses
  %i.oz = ptrtoint ptr %i.a to i64
  %i.pa = ptrtoint ptr %.0166.lcssa to i64        ; 3 uses
  %i.pb = sub i64 %i.oz, %i.pa                    ; 8 uses
  %i.pc = load i32, ptr @ZL_g_logLevel, align 4, !tbaa !11
  %i.pd = icmp sgt i32 %i.pc, 8191
  br i1 %i.pd, label %bb.cl, label %bb.cm

bb.cl:                                            ; preds = %._crit_edge
  %i.pe = trunc i64 %i.pb to i32
  tail call void (ptr, ptr, i32, ptr, ...) @ZL_LOG_func(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.ZS_RolzSeqStore_storeLastLiterals, i32 noundef 133, ptr noundef nonnull @.str.3, i32 noundef %i.pe) #12
  br label %bb.cm

bb.cm:                                            ; preds = %bb.cl, %._crit_edge
  %i.pf = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 2 uses
  %i.pg = load i64, ptr %i.pf, align 8, !tbaa !38 ; 6 uses
  %.not.i351 = icmp eq i64 %i.pg, 0
  br i1 %.not.i351, label %.thread.i, label %bb.cn

bb.cn:                                            ; preds = %bb.cm
  %i.ph = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.pi = load ptr, ptr %i.ph, align 8, !tbaa !40
  %i.pj = ptrtoint ptr %i.pi to i64
  %i.pk = sub i64 %i.pa, %i.pj                    ; 5 uses
  %.not35.i = icmp eq ptr %i.a, %.0166.lcssa
  br i1 %.not35.i, label %ZS_RolzSeqStore_storeLastLiterals.exit, label %.lr.ph.i352

.lr.ph.i352:                                      ; preds = %bb.cn
  %i.pl = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 5 uses
  %5 = add i64 %3, %4
  %xtraiter493 = and i64 %i.pb, 3                 ; 3 uses
  %6 = sub i64 %i.pa, %5
  %7 = icmp ugt i64 %6, -4
  br i1 %7, label %.epil.preheader492, label %.lr.ph.i352.new

.lr.ph.i352.new:                                  ; preds = %.lr.ph.i352
  %unroll_iter497 = and i64 %i.pb, -4
  br label %bb.co

bb.co:                                            ; preds = %bb.co, %.lr.ph.i352.new
  %.034.i = phi i64 [ 0, %.lr.ph.i352.new ], [ %i.qj, %bb.co ] ; 6 uses
  %niter498 = phi i64 [ 0, %.lr.ph.i352.new ], [ %niter498.next.3, %bb.co ]
  %i.pm = add i64 %i.pk, %.034.i
  %i.pn = and i64 %i.pm, %i.pg
  %i.po = trunc i64 %i.pn to i8
  %i.pp = load ptr, ptr %i.pl, align 8, !tbaa !39
  %i.pq = getelementptr inbounds nuw i8, ptr %i.pp, i64 %.034.i
  store i8 %i.po, ptr %i.pq, align 1, !tbaa !31
  %i.pr = or disjoint i64 %.034.i, 1              ; 2 uses
  %i.ps = add i64 %i.pk, %i.pr
  %i.pt = and i64 %i.ps, %i.pg
  %i.pu = trunc i64 %i.pt to i8
  %i.pv = load ptr, ptr %i.pl, align 8, !tbaa !39
  %i.pw = getelementptr inbounds nuw i8, ptr %i.pv, i64 %i.pr
  store i8 %i.pu, ptr %i.pw, align 1, !tbaa !31
  %i.px = or disjoint i64 %.034.i, 2              ; 2 uses
  %i.py = add i64 %i.pk, %i.px
  %i.pz = and i64 %i.py, %i.pg
  %i.qa = trunc i64 %i.pz to i8
  %i.qb = load ptr, ptr %i.pl, align 8, !tbaa !39
  %i.qc = getelementptr inbounds nuw i8, ptr %i.qb, i64 %i.px
  store i8 %i.qa, ptr %i.qc, align 1, !tbaa !31
  %i.qd = or disjoint i64 %.034.i, 3              ; 2 uses
  %i.qe = add i64 %i.pk, %i.qd
  %i.qf = and i64 %i.qe, %i.pg
  %i.qg = trunc i64 %i.qf to i8
  %i.qh = load ptr, ptr %i.pl, align 8, !tbaa !39
  %i.qi = getelementptr inbounds nuw i8, ptr %i.qh, i64 %i.qd
  store i8 %i.qg, ptr %i.qi, align 1, !tbaa !31
  %i.qj = add nuw i64 %.034.i, 4                  ; 2 uses
  %niter498.next.3 = add i64 %niter498, 4         ; 2 uses
  %niter498.ncmp.3 = icmp eq i64 %niter498.next.3, %unroll_iter497
  br i1 %niter498.ncmp.3, label %._crit_edge.i.unr-lcssa, label %bb.co, !llvm.loop !25

._crit_edge.i.unr-lcssa:                          ; preds = %bb.co
  %lcmp.mod495.not = icmp eq i64 %xtraiter493, 0
  br i1 %lcmp.mod495.not, label %._crit_edge.i, label %.epil.preheader492

.epil.preheader492:                               ; preds = %._crit_edge.i.unr-lcssa, %.lr.ph.i352
  %.034.i.epil.init = phi i64 [ 0, %.lr.ph.i352 ], [ %i.qj, %._crit_edge.i.unr-lcssa ]
  %lcmp.mod496 = icmp ne i64 %xtraiter493, 0
  tail call void @llvm.assume(i1 %lcmp.mod496)
  br label %bb.cp

bb.cp:                                            ; preds = %bb.cp, %.epil.preheader492
  %.034.i.epil = phi i64 [ %.034.i.epil.init, %.epil.preheader492 ], [ %i.qp, %bb.cp ] ; 3 uses
  %epil.iter494 = phi i64 [ 0, %.epil.preheader492 ], [ %epil.iter494.next, %bb.cp ]
  %i.qk = add i64 %i.pk, %.034.i.epil
  %i.ql = and i64 %i.qk, %i.pg
  %i.qm = trunc i64 %i.ql to i8
  %i.qn = load ptr, ptr %i.pl, align 8, !tbaa !39
  %i.qo = getelementptr inbounds nuw i8, ptr %i.qn, i64 %.034.i.epil
  store i8 %i.qm, ptr %i.qo, align 1, !tbaa !31
  %i.qp = add nuw i64 %.034.i.epil, 1
  %epil.iter494.next = add i64 %epil.iter494, 1   ; 2 uses
  %epil.iter494.cmp.not = icmp eq i64 %epil.iter494.next, %xtraiter493
  br i1 %epil.iter494.cmp.not, label %._crit_edge.i, label %bb.cp, !llvm.loop !26

._crit_edge.i:                                    ; preds = %bb.cp, %._crit_edge.i.unr-lcssa
  %.pr.pre.i = load i64, ptr %i.pf, align 8, !tbaa !38
  %i.qq = icmp eq i64 %.pr.pre.i, 0
  br i1 %i.qq, label %.thread.i, label %ZS_RolzSeqStore_storeLastLiterals.exit

.thread.i:                                        ; preds = %._crit_edge.i, %bb.cm
  %i.qr = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.qs = load ptr, ptr %i.qr, align 8, !tbaa !39 ; 3 uses
  %i.qt = load ptr, ptr %1, align 8, !tbaa !41
  %i.qu = icmp eq ptr %i.qs, %i.qt
  %i.qv = icmp ne ptr %i.a, %.0166.lcssa
  %or.cond.i353 = and i1 %i.qv, %i.qu
  br i1 %or.cond.i353, label %bb.cq, label %bb.cr

bb.cq:                                            ; preds = %.thread.i
  store i8 0, ptr %i.qs, align 1, !tbaa !31
  %i.qw = load ptr, ptr %i.qr, align 8, !tbaa !39
  %i.qx = getelementptr inbounds nuw i8, ptr %i.qw, i64 1
  %i.qy = add i64 %i.pb, -1
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.qx, ptr align 1 %.0166.lcssa, i64 %i.qy, i1 false)
  br label %ZS_RolzSeqStore_storeLastLiterals.exit

bb.cr:                                            ; preds = %.thread.i
  %i.qz = getelementptr inbounds i8, ptr %.0166.lcssa, i64 -1
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.qs, ptr nonnull align 1 %i.qz, i64 %i.pb, i1 false)
  br label %ZS_RolzSeqStore_storeLastLiterals.exit

ZS_RolzSeqStore_storeLastLiterals.exit:           ; preds = %bb.cn, %._crit_edge.i, %bb.cq, %bb.cr
  %i.ra = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 3 uses
  %i.rb = load ptr, ptr %i.ra, align 8, !tbaa !43
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.rb, ptr align 1 %.0166.lcssa, i64 %i.pb, i1 false)
  %i.rc = load ptr, ptr %i.ra, align 8, !tbaa !43
  %i.rd = getelementptr inbounds nuw i8, ptr %i.rc, i64 %i.pb
  store ptr %i.rd, ptr %i.ra, align 8, !tbaa !43
  %i.re = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.rf = load ptr, ptr %i.re, align 8, !tbaa !39
  %i.rg = getelementptr inbounds nuw i8, ptr %i.rf, i64 %i.pb
  store ptr %i.rg, ptr %i.re, align 8, !tbaa !39
  tail call void @free(ptr noundef %calloc) #12
  tail call void @free(ptr noundef %calloc454) #12
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #5

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.cttz.i64(i64, i1 immarg) #7

declare void @ZL_LOG_func(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.usub.sat.i32(i32, i32) #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #10

attributes #0 = { mustprogress nofree nounwind willreturn memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #11 = { nounwind allocsize(0,1) }
attributes #12 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}
!llvm.errno.tbaa = !{!10}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!5 = !{!"Ubuntu clang version 24.0.0 (++20260903081701+7ece48b9e5bb-1~exp1~20260903201841.1826)"}
!6 = !{!"Simple C/C++ TBAA"}
!7 = !{!"omnipotent char", !6, i64 0}
!8 = !{!"int", !7, i64 0}
!9 = !{!"__libc_errno", !8, i64 0}
!10 = !{!9, !8, i64 0}
!11 = !{!8, !8, i64 0}
!12 = !{!"any pointer", !7, i64 0}
!13 = !{!"", !12, i64 0}
!14 = !{!"_Bool", !7, i64 0}
!15 = !{!14, !14, i64 0}
!16 = !{i64 0, i64 1, !15, i64 4, i64 4, !11, i64 8, i64 4, !11, i64 12, i64 4, !11, i64 16, i64 4, !11, i64 20, i64 4, !11, i64 24, i64 1, !15, i64 25, i64 1, !15, i64 28, i64 4, !11, i64 32, i64 4, !11, i64 36, i64 4, !11, i64 40, i64 4, !11, i64 44, i64 4, !11, i64 48, i64 4, !11, i64 52, i64 4, !11, i64 56, i64 1, !15, i64 60, i64 4, !11, i64 64, i64 4, !11, i64 68, i64 4, !11, i64 72, i64 4, !11, i64 76, i64 4, !11, i64 80, i64 4, !11, i64 84, i64 4, !11, i64 88, i64 4, !11}
!17 = !{!"", !14, i64 0, !8, i64 4, !8, i64 8, !8, i64 12, !8, i64 16, !8, i64 20, !14, i64 24, !14, i64 25, !8, i64 28, !8, i64 32, !8, i64 36, !8, i64 40, !8, i64 44, !8, i64 48, !8, i64 52, !14, i64 56, !8, i64 60, !8, i64 64, !8, i64 68, !8, i64 72, !8, i64 76, !8, i64 80, !8, i64 84, !8, i64 88}
!18 = !{!"", !13, i64 0, !17, i64 8}
!19 = !{!18, !12, i64 0}
!20 = distinct !{!20, !32}
!21 = distinct !{!21, !32}
!22 = distinct !{!22, !32}
!23 = distinct !{!23, !45}
!24 = distinct !{!24, !32}
!25 = distinct !{!25, !32}
!26 = distinct !{!26, !45}
!27 = !{!13, !12, i64 0}
!28 = !{!"p1 omnipotent char", !12, i64 0}
!29 = !{!"", !28, i64 0, !28, i64 8, !28, i64 16, !8, i64 24, !8, i64 28, !8, i64 32, !8, i64 36}
!30 = !{!29, !28, i64 8}
!31 = !{!7, !7, i64 0}
!32 = !{!"llvm.loop.mustprogress"}
!33 = !{!29, !8, i64 24}
!34 = !{!"", !28, i64 0, !28, i64 8, !28, i64 16}
!35 = !{!"", !12, i64 0, !12, i64 8, !12, i64 16}
!36 = !{!"long", !7, i64 0}
!37 = !{!"", !34, i64 0, !34, i64 24, !35, i64 48, !28, i64 72, !36, i64 80}
!38 = !{!37, !36, i64 80}
!39 = !{!37, !28, i64 8}
!40 = !{!37, !28, i64 72}
!41 = !{!37, !28, i64 0}
!42 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!43 = !{!37, !28, i64 32}
!44 = !{!37, !12, i64 56}
!45 = !{!"llvm.loop.unroll.disable"}
end_hunk_1
