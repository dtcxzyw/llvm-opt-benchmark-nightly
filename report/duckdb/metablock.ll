Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/duckdb/original/metablock?download=true
inline.NumInlined: 13
inline.NumDeleted: 8
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 31
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@_ZN13duckdb_brotli16kBrotliLog2TableE = external local_unnamed_addr constant [256 x double], align 16

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define hidden void @_ZN13duckdb_brotli24BrotliInitDistanceParamsEP20BrotliDistanceParamsjji(ptr nofree noundef writeonly captures(none) initializes((0, 24)) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
bb.a:
  store i32 %1, ptr %0, align 8, !tbaa !7
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %2, ptr %i.a, align 4, !tbaa !10
  %i.b = add i32 %2, 16                           ; 3 uses
  %i.c = add i32 %1, 1                            ; 2 uses
  %i.d = shl i32 24, %i.c
  %i.e = add i32 %i.b, %i.d                       ; 2 uses
  %i.f = add i32 %1, 26
  %i.g = shl nuw i32 1, %i.f
  %i.h = add i32 %i.g, %2
  %i.i = add i32 %1, 2
  %.neg = shl nsw i32 -1, %i.i
  %i.j = add i32 %i.h, %.neg
  %.not = icmp eq i32 %3, 0
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = icmp ugt i32 %2, 2147483643
  br i1 %i.k, label %_ZN13duckdb_brotliL32BrotliCalculateDistanceCodeLimitEjjj.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = sub nuw nsw i32 2147483644, %2
  %i.m = lshr i32 %i.l, %1
  %i.n = add nuw i32 %i.m, 4                      ; 2 uses
  %i.o = lshr i32 %i.n, 1
  %i.p = tail call range(i32 1, 33) i32 @llvm.ctlz.i32(i32 %i.o, i1 true) ; 2 uses
  %i.q = xor i32 %i.p, 31
  %i.r = lshr i32 %i.n, %i.q
  %i.s = and i32 %i.r, 1
  %i.t = shl nuw nsw i32 %i.p, 1
  %i.u = sub nuw nsw i32 60, %i.t
  %i.v = or disjoint i32 %i.s, %i.u               ; 2 uses
  %i.w = icmp eq i32 %i.v, 0
  br i1 %i.w, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %notmask.i = shl nsw i32 -1, %1                 ; 2 uses
  %i.x = xor i32 %notmask.i, -1
  %i.y = add nsw i32 %i.v, -1                     ; 3 uses
  %i.z = lshr i32 %i.y, 1                         ; 2 uses
  %i.aa = add nuw nsw i32 %i.z, 1
  %i.ab = and i32 %i.y, 1
  %i.ac = shl nuw nsw i32 %i.ab, %i.aa
  %i.ad = shl i32 %i.y, %1
  %i.ae = or i32 %i.ad, %i.x
  %i.af = add nuw i32 %2, 17
  %i.ag = add i32 %i.af, %i.ae
  %i.ah = shl nuw i32 6, %i.z
  %i.ai = add i32 %i.ah, -5
  %i.aj = add nuw i32 %i.ai, %i.ac
  %i.ak = shl i32 %i.aj, %1
  %i.al = sub i32 %2, %notmask.i
  %i.am = add i32 %i.al, %i.ak
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %.sroa.0.0.i = phi i32 [ %i.ag, %bb.d ], [ %i.b, %bb.c ]
  %.sroa.4.0.i = phi i32 [ %i.am, %bb.d ], [ %2, %bb.c ]
  %i.an = zext i32 %.sroa.4.0.i to i64
  %i.ao = shl nuw i64 %i.an, 32
  %i.ap = zext i32 %.sroa.0.0.i to i64
  %i.aq = or disjoint i64 %i.ao, %i.ap
  br label %_ZN13duckdb_brotliL32BrotliCalculateDistanceCodeLimitEjjj.exit

_ZN13duckdb_brotliL32BrotliCalculateDistanceCodeLimitEjjj.exit: ; preds = %bb.b, %bb.e
  %.sroa.0.0.insert.insert.i = phi i64 [ %i.aq, %bb.e ], [ 9223372021822390284, %bb.b ] ; 2 uses
  %.sroa.0.0.extract.trunc = trunc i64 %.sroa.0.0.insert.insert.i to i32
  %.sroa.4.0.extract.shift = lshr i64 %.sroa.0.0.insert.insert.i, 32
  %.sroa.4.0.extract.trunc = trunc nuw i64 %.sroa.4.0.extract.shift to i32
  %i.ar = shl i32 62, %i.c
  %i.as = add i32 %i.b, %i.ar
  br label %bb.f

bb.f:                                             ; preds = %_ZN13duckdb_brotliL32BrotliCalculateDistanceCodeLimitEjjj.exit, %bb.a
  %.021 = phi i32 [ %.sroa.4.0.extract.trunc, %_ZN13duckdb_brotliL32BrotliCalculateDistanceCodeLimitEjjj.exit ], [ %i.j, %bb.a ]
  %.020 = phi i32 [ %.sroa.0.0.extract.trunc, %_ZN13duckdb_brotliL32BrotliCalculateDistanceCodeLimitEjjj.exit ], [ %i.e, %bb.a ]
  %.0 = phi i32 [ %i.as, %_ZN13duckdb_brotliL32BrotliCalculateDistanceCodeLimitEjjj.exit ], [ %i.e, %bb.a ]
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %.0, ptr %i.at, align 8, !tbaa !11
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 %.020, ptr %i.au, align 4, !tbaa !12
  %i.av = zext i32 %.021 to i64
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.av, ptr %i.aw, align 8, !tbaa !13
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress uwtable
define hidden void @_ZN13duckdb_brotli20BrotliBuildMetaBlockEPNS_13MemoryManagerEPKhmmP19BrotliEncoderParamshhPNS_7CommandEmNS_11ContextTypeEPNS_14MetaBlockSplitE(ptr noundef %0, ptr noundef %1, i64 noundef %2, i64 noundef %3, ptr noundef %4, i8 noundef zeroext %5, i8 noundef zeroext %6, ptr noundef %7, i64 noundef %8, i32 noundef %9, ptr noundef %10) local_unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 56 ; 5 uses
  %.sroa.0234.0.copyload = load i32, ptr %i.a, align 8, !tbaa !3 ; 8 uses
  %.sroa.12242.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 60 ; 5 uses
  %.sroa.12242.0.copyload = load i32, ptr %.sroa.12242.0..sroa_idx, align 4, !tbaa !3 ; 7 uses
  %.sroa.20.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 64 ; 3 uses
  %.sroa.20252.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 72
  %i.b = load <2 x i64>, ptr %.sroa.20.0..sroa_idx, align 8
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 68
  %i.c = tail call noundef ptr @_ZN13duckdb_brotli14BrotliAllocateEPNS_13MemoryManagerEm(ptr noundef %0, i64 noundef 2192) ; 10 uses
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 36
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 2176 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 2184 ; 2 uses
  %.not4555.i = icmp eq i64 %8, 0                 ; 5 uses
  %i.g = add i32 %.sroa.12242.0.copyload, 16      ; 4 uses
  %notmask.i.us.i = shl nsw i32 -1, %.sroa.0234.0.copyload
  %i.h = xor i32 %notmask.i.us.i, -1              ; 2 uses
  %i.i = zext i32 %.sroa.0234.0.copyload to i64
  %invariant.op = sub i32 -16, %.sroa.12242.0.copyload
  br label %.preheader

.preheader:                                       ; preds = %bb.a, %bb.n
  %indvars.iv.a = phi i64 [ 0, %bb.a ], [ %indvars.iv.next.a, %bb.n ] ; 6 uses
  %.0143291 = phi double [ f0x547D42AEA2879F2E, %bb.a ], [ %.1275357, %bb.n ] ; 2 uses
  %.0144290 = phi i32 [ 1, %bb.a ], [ %.3147358, %bb.n ] ; 2 uses
  %.0148289 = phi i32 [ 0, %bb.a ], [ %i.em, %bb.n ] ; 3 uses
  %i.j = icmp samesign ult i32 %.0148289, 16
  br i1 %i.j, label %.lr.ph, label %.thread.thread

.lr.ph:                                           ; preds = %.preheader
  %i.k = trunc nuw nsw i64 %indvars.iv.a to i32   ; 9 uses
  %i.l = shl nuw nsw i32 48, %i.k
  %notmask.i.i = shl nsw i32 -1, %i.k             ; 2 uses
  %i.m = xor i32 %notmask.i.i, -1                 ; 2 uses
  %i.n = shl nuw nsw i32 124, %i.k
  %i.o = icmp eq i64 %indvars.iv.a, %i.i          ; 2 uses
  %i.p = shl nuw nsw i64 4, %indvars.iv.a
  %i.q = add nsw i64 %i.p, -16
  %11 = zext nneg i32 %i.m to i64
  %i.r = zext nneg i32 %.0148289 to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.m
  %indvars.iv = phi i64 [ %i.r, %.lr.ph ], [ %indvars.iv.next, %bb.m ] ; 4 uses
  %.1280 = phi double [ %.0143291, %.lr.ph ], [ %i.eg, %bb.m ] ; 2 uses
  %.1145279 = phi i32 [ %.0144290, %.lr.ph ], [ %.2146, %bb.m ]
  %12 = trunc i64 %indvars.iv to i32              ; 2 uses
  %i.s = shl nuw nsw i32 %12, %i.k                ; 9 uses
  %i.t = load i32, ptr %i.d, align 4, !tbaa !14
  %i.u = add nuw nsw i32 %i.s, 16                 ; 3 uses
  %i.v = add nuw nsw i32 %i.u, %i.l               ; 2 uses
  %13 = trunc i64 %indvars.iv to i32
  %i.w = add i32 %13, 67108860
  %i.x = shl nuw nsw i32 %i.w, %i.k
  %.not.i = icmp eq i32 %i.t, 0
  br i1 %.not.i, label %_ZN13duckdb_brotli24BrotliInitDistanceParamsEP20BrotliDistanceParamsjji.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.y = sub nuw nsw i32 2147483644, %i.s
  %i.z = lshr i32 %i.y, %i.k
  %i.aa = add nuw i32 %i.z, 4                     ; 2 uses
  %i.ab = lshr i32 %i.aa, 1
  %i.ac = tail call range(i32 1, 33) i32 @llvm.ctlz.i32(i32 %i.ab, i1 true) ; 2 uses
  %i.ad = xor i32 %i.ac, 31
  %i.ae = lshr i32 %i.aa, %i.ad
  %i.af = and i32 %i.ae, 1
  %i.ag = shl nuw nsw i32 %i.ac, 1
  %reass.sub = sub nsw i32 %i.af, %i.ag           ; 2 uses
  %i.ah = icmp eq i32 %reass.sub, -60
  br i1 %i.ah, label %_ZN13duckdb_brotliL32BrotliCalculateDistanceCodeLimitEjjj.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ai = add nsw i32 %reass.sub, 59              ; 3 uses
  %i.aj = lshr i32 %i.ai, 1                       ; 2 uses
  %i.ak = add nuw nsw i32 %i.aj, 1
  %i.al = and i32 %i.ai, 1
  %i.am = shl nuw nsw i32 %i.al, %i.ak
  %i.an = shl nsw i32 %i.ai, %i.k
  %i.ao = or i32 %i.an, %i.m
  %i.ap = add nuw nsw i32 %i.s, 17
  %i.aq = add i32 %i.ap, %i.ao
  %i.ar = shl nuw i32 6, %i.aj
  %i.as = add i32 %i.ar, -5
  %i.at = add nuw i32 %i.as, %i.am
  %i.au = shl i32 %i.at, %i.k
  %i.av = sub i32 %i.s, %notmask.i.i
  %i.aw = add i32 %i.av, %i.au
  br label %_ZN13duckdb_brotliL32BrotliCalculateDistanceCodeLimitEjjj.exit.i

_ZN13duckdb_brotliL32BrotliCalculateDistanceCodeLimitEjjj.exit.i: ; preds = %bb.c, %bb.d
  %.sroa.0.0.i.i = phi i32 [ %i.aq, %bb.d ], [ %i.u, %bb.c ]
  %.sroa.4.0.i.i = phi i32 [ %i.aw, %bb.d ], [ %i.s, %bb.c ]
  %i.ax = add nuw nsw i32 %i.u, %i.n
  br label %_ZN13duckdb_brotli24BrotliInitDistanceParamsEP20BrotliDistanceParamsjji.exit

_ZN13duckdb_brotli24BrotliInitDistanceParamsEP20BrotliDistanceParamsjji.exit: ; preds = %bb.b, %_ZN13duckdb_brotliL32BrotliCalculateDistanceCodeLimitEjjj.exit.i
  %.021.i = phi i32 [ %.sroa.4.0.i.i, %_ZN13duckdb_brotliL32BrotliCalculateDistanceCodeLimitEjjj.exit.i ], [ %i.x, %bb.b ] ; 2 uses
  %.020.i = phi i32 [ %.sroa.0.0.i.i, %_ZN13duckdb_brotliL32BrotliCalculateDistanceCodeLimitEjjj.exit.i ], [ %i.v, %bb.b ]
  %.0.i183 = phi i32 [ %i.ax, %_ZN13duckdb_brotliL32BrotliCalculateDistanceCodeLimitEjjj.exit.i ], [ %i.v, %bb.b ]
  %i.ay = zext i32 %.021.i to i64
  %i.az = icmp eq i32 %i.s, %.sroa.12242.0.copyload
  %or.cond = select i1 %i.o, i1 %i.az, i1 false
  %.2146 = select i1 %or.cond, i32 0, i32 %.1145279 ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2184) %i.c, i8 0, i64 2184, i1 false)
  store double +inf, ptr %i.f, align 8, !tbaa !32
  br i1 %i.o, label %bb.e, label %.thread.i

bb.e:                                             ; preds = %_ZN13duckdb_brotli24BrotliInitDistanceParamsEP20BrotliDistanceParamsjji.exit
  br i1 %.not4555.i, label %.loopexit271, label %.lr.ph.i

.thread.i:                                        ; preds = %_ZN13duckdb_brotli24BrotliInitDistanceParamsEP20BrotliDistanceParamsjji.exit
  br i1 %.not4555.i, label %.loopexit271, label %.lr.ph.split.us.preheader.i

.lr.ph.i:                                         ; preds = %bb.e
  %i.ba = icmp ne i32 %.sroa.12242.0.copyload, %i.s
  %i.bb = freeze i1 %i.ba
  br i1 %i.bb, label %.lr.ph.split.us.preheader.i, label %.lr.ph.split.i

.lr.ph.split.us.preheader.i:                      ; preds = %.thread.i, %.lr.ph.i
  %i.bc = zext nneg i32 %i.s to i64               ; 2 uses
  %i.bd = add nuw nsw i64 %i.bc, 16               ; 2 uses
  %i.be = sub nsw i64 %i.q, %i.bc
  br label %.lr.ph.split.us.i

.lr.ph.split.us.i:                                ; preds = %.critedge.us.i, %.lr.ph.split.us.preheader.i
  %i.bf = phi i64 [ %i.di, %.critedge.us.i ], [ 0, %.lr.ph.split.us.preheader.i ] ; 3 uses
  %.02944.us.i = phi double [ %.2.us.i, %.critedge.us.i ], [ 0.000000e+00, %.lr.ph.split.us.preheader.i ] ; 3 uses
  %.03243.us.i = phi i64 [ %i.dj, %.critedge.us.i ], [ 0, %.lr.ph.split.us.preheader.i ] ; 2 uses
  %i.bg = getelementptr inbounds nuw [16 x i8], ptr %7, i64 %.03243.us.i ; 4 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 4
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !35
  %i.bj = and i32 %i.bi, 33554431
  %.not.us.i = icmp eq i32 %i.bj, 0
  br i1 %.not.us.i, label %.critedge.us.i, label %bb.f

bb.f:                                             ; preds = %.lr.ph.split.us.i
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bg, i64 12
  %i.bl = load i16, ptr %i.bk, align 4, !tbaa !38
  %i.bm = icmp ugt i16 %i.bl, 127
  br i1 %i.bm, label %bb.g, label %.critedge.us.i

bb.g:                                             ; preds = %bb.f
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bg, i64 14
  %i.bo = load i16, ptr %i.bn, align 2, !tbaa !39
  %i.bp = zext i16 %i.bo to i32                   ; 2 uses
  %i.bq = and i32 %i.bp, 1023                     ; 3 uses
  %i.br = icmp ult i32 %i.bq, %i.g
  br i1 %i.br, label %_ZN13duckdb_brotliL26CommandRestoreDistanceCodeEPKNS_7CommandEPK20BrotliDistanceParams.exit.us.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bs = lshr i32 %i.bp, 10
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !40
  %.reass.reass.reass = add i32 %i.bq, %invariant.op ; 2 uses
  %i.bv = lshr i32 %.reass.reass.reass, %.sroa.0234.0.copyload
  %i.bw = and i32 %.reass.reass.reass, %i.h
  %i.bx = and i32 %i.bv, 1
  %i.by = or disjoint i32 %i.bx, 2
  %i.bz = shl i32 %i.by, %i.bs
  %i.ca = add i32 %i.bz, -4
  %i.cb = add i32 %i.ca, %i.bu
  %i.cc = shl i32 %i.cb, %.sroa.0234.0.copyload
  %i.cd = add nuw i32 %i.bw, %i.g
  %i.ce = add i32 %i.cd, %i.cc
  br label %_ZN13duckdb_brotliL26CommandRestoreDistanceCodeEPKNS_7CommandEPK20BrotliDistanceParams.exit.us.i

_ZN13duckdb_brotliL26CommandRestoreDistanceCodeEPKNS_7CommandEPK20BrotliDistanceParams.exit.us.i: ; preds = %bb.h, %bb.g
  %.0.i.us.i = phi i32 [ %i.ce, %bb.h ], [ %i.bq, %bb.g ] ; 3 uses
  %i.cf = zext i32 %.0.i.us.i to i64              ; 2 uses
  %.not38.us.i = icmp ult i32 %.021.i, %.0.i.us.i
  br i1 %.not38.us.i, label %.thread, label %bb.i

bb.i:                                             ; preds = %_ZN13duckdb_brotliL26CommandRestoreDistanceCodeEPKNS_7CommandEPK20BrotliDistanceParams.exit.us.i
  %i.cg = icmp samesign ugt i64 %i.bd, %i.cf
  br i1 %i.cg, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ch = add nsw i64 %i.be, %i.cf                ; 3 uses
  %i.ci = trunc i64 %i.ch to i32
  %i.cj = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.ci, i1 true)
  %i.ck = sub nsw i32 30, %i.cj
  %i.cl = zext i32 %i.ck to i64                   ; 2 uses
  %i.cm = and i64 %i.ch, %11
  %i.cn = lshr i64 %i.ch, %i.cl
  %i.co = sub nsw i64 %i.cl, %indvars.iv.a        ; 2 uses
  %i.cp = shl nsw i64 %i.co, 10
  %i.cq = shl nsw i64 %i.co, 1
  %i.cr = or i64 %i.cn, 65534
  %i.cs = add i64 %i.cq, %i.cr
  %i.ct = shl i64 %i.cs, %indvars.iv.a
  %i.cu = add nuw nsw i64 %i.cm, %i.bd
  %i.cv = add i64 %i.cu, %i.ct
  %i.cw = or i64 %i.cv, %i.cp
  %i.cx = trunc i64 %i.cw to i16
  br label %_ZN13duckdb_brotliL24PrefixEncodeCopyDistanceEmmmPtPj.exit.us.i

bb.k:                                             ; preds = %bb.i
  %i.cy = trunc i32 %.0.i.us.i to i16
  br label %_ZN13duckdb_brotliL24PrefixEncodeCopyDistanceEmmmPtPj.exit.us.i

_ZN13duckdb_brotliL24PrefixEncodeCopyDistanceEmmmPtPj.exit.us.i: ; preds = %bb.k, %bb.j
  %.0.us.i = phi i16 [ %i.cx, %bb.j ], [ %i.cy, %bb.k ] ; 2 uses
  %i.cz = and i16 %.0.us.i, 1023
  %i.da = zext nneg i16 %i.cz to i64
  %i.db = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.da ; 2 uses
  %i.dc = load i32, ptr %i.db, align 4, !tbaa !3
  %i.dd = add i32 %i.dc, 1
  store i32 %i.dd, ptr %i.db, align 4, !tbaa !3
  %i.de = add i64 %i.bf, 1                        ; 2 uses
  store i64 %i.de, ptr %i.e, align 8, !tbaa !41
  %i.df = lshr i16 %.0.us.i, 10
  %i.dg = uitofp nneg i16 %i.df to double
  %i.dh = fadd double %.02944.us.i, %i.dg
  br label %.critedge.us.i

.critedge.us.i:                                   ; preds = %_ZN13duckdb_brotliL24PrefixEncodeCopyDistanceEmmmPtPj.exit.us.i, %bb.f, %.lr.ph.split.us.i
  %i.di = phi i64 [ %i.bf, %.lr.ph.split.us.i ], [ %i.bf, %bb.f ], [ %i.de, %_ZN13duckdb_brotliL24PrefixEncodeCopyDistanceEmmmPtPj.exit.us.i ]
  %.2.us.i = phi double [ %.02944.us.i, %.lr.ph.split.us.i ], [ %.02944.us.i, %bb.f ], [ %i.dh, %_ZN13duckdb_brotliL24PrefixEncodeCopyDistanceEmmmPtPj.exit.us.i ] ; 2 uses
  %i.dj = add nuw i64 %.03243.us.i, 1             ; 2 uses
  %exitcond47.not.i = icmp eq i64 %i.dj, %8
  br i1 %exitcond47.not.i, label %.loopexit271, label %.lr.ph.split.us.i, !llvm.loop !42

.lr.ph.split.i:                                   ; preds = %.lr.ph.i, %.critedge.i
  %i.dk = phi i64 [ %i.ed, %.critedge.i ], [ 0, %.lr.ph.i ] ; 3 uses
  %.02944.i = phi double [ %.2.i, %.critedge.i ], [ 0.000000e+00, %.lr.ph.i ] ; 3 uses
  %.03243.i = phi i64 [ %i.ee, %.critedge.i ], [ 0, %.lr.ph.i ] ; 2 uses
  %i.dl = getelementptr inbounds nuw [16 x i8], ptr %7, i64 %.03243.i ; 3 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 4
  %i.dn = load i32, ptr %i.dm, align 4, !tbaa !35
  %i.do = and i32 %i.dn, 33554431
  %.not.i184 = icmp eq i32 %i.do, 0
  br i1 %.not.i184, label %.critedge.i, label %bb.l

bb.l:                                             ; preds = %.lr.ph.split.i
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dl, i64 12
  %i.dq = load i16, ptr %i.dp, align 4, !tbaa !38
  %i.dr = icmp ugt i16 %i.dq, 127
  br i1 %i.dr, label %_ZN13duckdb_brotliL24PrefixEncodeCopyDistanceEmmmPtPj.exit.i, label %.critedge.i

_ZN13duckdb_brotliL24PrefixEncodeCopyDistanceEmmmPtPj.exit.i: ; preds = %bb.l
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dl, i64 14
  %i.dt = load i16, ptr %i.ds, align 2, !tbaa !39 ; 2 uses
  %i.du = and i16 %i.dt, 1023
  %i.dv = zext nneg i16 %i.du to i64
  %i.dw = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.dv ; 2 uses
  %i.dx = load i32, ptr %i.dw, align 4, !tbaa !3
  %i.dy = add i32 %i.dx, 1
  store i32 %i.dy, ptr %i.dw, align 4, !tbaa !3
  %i.dz = add i64 %i.dk, 1                        ; 2 uses
  store i64 %i.dz, ptr %i.e, align 8, !tbaa !41
  %i.ea = lshr i16 %i.dt, 10
  %i.eb = uitofp nneg i16 %i.ea to double
  %i.ec = fadd double %.02944.i, %i.eb
  br label %.critedge.i

.critedge.i:                                      ; preds = %_ZN13duckdb_brotliL24PrefixEncodeCopyDistanceEmmmPtPj.exit.i, %bb.l, %.lr.ph.split.i
  %i.ed = phi i64 [ %i.dk, %.lr.ph.split.i ], [ %i.dk, %bb.l ], [ %i.dz, %_ZN13duckdb_brotliL24PrefixEncodeCopyDistanceEmmmPtPj.exit.i ]
  %.2.i = phi double [ %.02944.i, %.lr.ph.split.i ], [ %.02944.i, %bb.l ], [ %i.ec, %_ZN13duckdb_brotliL24PrefixEncodeCopyDistanceEmmmPtPj.exit.i ] ; 2 uses
  %i.ee = add nuw i64 %.03243.i, 1                ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.ee, %8
  br i1 %exitcond.not.i, label %.loopexit271, label %.lr.ph.split.i, !llvm.loop !42

.loopexit271:                                     ; preds = %.critedge.i, %.critedge.us.i, %.thread.i, %bb.e
  %.029.lcssa.i = phi double [ 0.000000e+00, %bb.e ], [ 0.000000e+00, %.thread.i ], [ %.2.us.i, %.critedge.us.i ], [ %.2.i, %.critedge.i ]
  %i.ef = tail call noundef double @_ZN13duckdb_brotli28BrotliPopulationCostDistanceEPKNS_17HistogramDistanceE(ptr noundef nonnull %i.c)
  %i.eg = fadd double %.029.lcssa.i, %i.ef        ; 3 uses
  %i.eh = fcmp ogt double %i.eg, %.1280
  br i1 %i.eh, label %.thread, label %bb.m

bb.m:                                             ; preds = %.loopexit271
  store i32 %i.k, ptr %i.a, align 8, !tbaa !3
  store i32 %i.s, ptr %.sroa.12242.0..sroa_idx, align 4, !tbaa !3
  store i32 %.0.i183, ptr %.sroa.20.0..sroa_idx, align 8, !tbaa !3
  store i32 %.020.i, ptr %.sroa.11.0..sroa_idx, align 4, !tbaa !3
  store i64 %i.ay, ptr %.sroa.20252.0..sroa_idx, align 8, !tbaa !44
  %indvars.iv.next = add i64 %indvars.iv, 1       ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 16
  br i1 %exitcond.not, label %.thread.thread, label %bb.b, !llvm.loop !45

.thread.thread:                                   ; preds = %bb.m, %.preheader
  %.1149277.ph = phi i32 [ %.0148289, %.preheader ], [ 16, %bb.m ]
  %.1275.ph = phi double [ %.0143291, %.preheader ], [ %i.eg, %bb.m ]
  %.3147.ph = phi i32 [ %.0144290, %.preheader ], [ %.2146, %bb.m ]
  %i.ei = add i32 %.1149277.ph, -1
  %i.ej = lshr i32 %i.ei, 1
  br label %bb.n

.thread:                                          ; preds = %.loopexit271, %_ZN13duckdb_brotliL26CommandRestoreDistanceCodeEPKNS_7CommandEPK20BrotliDistanceParams.exit.us.i
  %.not177 = icmp eq i64 %indvars.iv, 0
  %i.ek = add i32 %12, -1
  %i.el = lshr i32 %i.ek, 1
  %spec.select = select i1 %.not177, i32 0, i32 %i.el
  br label %bb.n

bb.n:                                             ; preds = %.thread, %.thread.thread
  %.3147358 = phi i32 [ %.3147.ph, %.thread.thread ], [ %.2146, %.thread ] ; 2 uses
  %.1275357 = phi double [ %.1275.ph, %.thread.thread ], [ %.1280, %.thread ] ; 2 uses
  %i.em = phi i32 [ %i.ej, %.thread.thread ], [ %spec.select, %.thread ]
  %indvars.iv.next.a = add nuw nsw i64 %indvars.iv.a, 1 ; 2 uses
  %exitcond317.not = icmp eq i64 %indvars.iv.next.a, 4
  br i1 %exitcond317.not, label %bb.o, label %.preheader, !llvm.loop !46

bb.o:                                             ; preds = %bb.n
  %.not = icmp eq i32 %.3147358, 0
  br i1 %.not, label %_ZL19ComputeDistanceCostPKN13duckdb_brotli7CommandEmPK20BrotliDistanceParamsS5_PdPNS_17HistogramDistanceE.exit216.thread, label %bb.p

bb.p:                                             ; preds = %bb.o
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2184) %i.c, i8 0, i64 2184, i1 false)
  store double +inf, ptr %i.f, align 8, !tbaa !32
  br i1 %.not4555.i, label %_ZL19ComputeDistanceCostPKN13duckdb_brotli7CommandEmPK20BrotliDistanceParamsS5_PdPNS_17HistogramDistanceE.exit216, label %.lr.ph.split.i208

.lr.ph.split.i208:                                ; preds = %bb.p, %.critedge.i212
  %i.en = phi i64 [ %i.fg, %.critedge.i212 ], [ 0, %bb.p ] ; 3 uses
  %.02944.i209 = phi double [ %.2.i213, %.critedge.i212 ], [ 0.000000e+00, %bb.p ] ; 3 uses
  %.03243.i210 = phi i64 [ %i.fh, %.critedge.i212 ], [ 0, %bb.p ] ; 2 uses
  %i.eo = getelementptr inbounds nuw [16 x i8], ptr %7, i64 %.03243.i210 ; 3 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 4
  %i.eq = load i32, ptr %i.ep, align 4, !tbaa !35
  %i.er = and i32 %i.eq, 33554431
  %.not.i211 = icmp eq i32 %i.er, 0
  br i1 %.not.i211, label %.critedge.i212, label %bb.q

bb.q:                                             ; preds = %.lr.ph.split.i208
  %i.es = getelementptr inbounds nuw i8, ptr %i.eo, i64 12
  %i.et = load i16, ptr %i.es, align 4, !tbaa !38
  %i.eu = icmp ugt i16 %i.et, 127
  br i1 %i.eu, label %_ZN13duckdb_brotliL24PrefixEncodeCopyDistanceEmmmPtPj.exit.i215, label %.critedge.i212

_ZN13duckdb_brotliL24PrefixEncodeCopyDistanceEmmmPtPj.exit.i215: ; preds = %bb.q
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eo, i64 14
  %i.ew = load i16, ptr %i.ev, align 2, !tbaa !39 ; 2 uses
  %i.ex = and i16 %i.ew, 1023
  %i.ey = zext nneg i16 %i.ex to i64
  %i.ez = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.ey ; 2 uses
  %i.fa = load i32, ptr %i.ez, align 4, !tbaa !3
  %i.fb = add i32 %i.fa, 1
  store i32 %i.fb, ptr %i.ez, align 4, !tbaa !3
  %i.fc = add i64 %i.en, 1                        ; 2 uses
  store i64 %i.fc, ptr %i.e, align 8, !tbaa !41
  %i.fd = lshr i16 %i.ew, 10
  %i.fe = uitofp nneg i16 %i.fd to double
  %i.ff = fadd double %.02944.i209, %i.fe
  br label %.critedge.i212

.critedge.i212:                                   ; preds = %_ZN13duckdb_brotliL24PrefixEncodeCopyDistanceEmmmPtPj.exit.i215, %bb.q, %.lr.ph.split.i208
  %i.fg = phi i64 [ %i.en, %.lr.ph.split.i208 ], [ %i.en, %bb.q ], [ %i.fc, %_ZN13duckdb_brotliL24PrefixEncodeCopyDistanceEmmmPtPj.exit.i215 ]
  %.2.i213 = phi double [ %.02944.i209, %.lr.ph.split.i208 ], [ %.02944.i209, %bb.q ], [ %i.ff, %_ZN13duckdb_brotliL24PrefixEncodeCopyDistanceEmmmPtPj.exit.i215 ] ; 2 uses
  %i.fh = add nuw i64 %.03243.i210, 1             ; 2 uses
  %exitcond.not.i214 = icmp eq i64 %i.fh, %8
  br i1 %exitcond.not.i214, label %_ZL19ComputeDistanceCostPKN13duckdb_brotli7CommandEmPK20BrotliDistanceParamsS5_PdPNS_17HistogramDistanceE.exit216, label %.lr.ph.split.i208, !llvm.loop !42

_ZL19ComputeDistanceCostPKN13duckdb_brotli7CommandEmPK20BrotliDistanceParamsS5_PdPNS_17HistogramDistanceE.exit216: ; preds = %.critedge.i212, %bb.p
  %.029.lcssa.i197 = phi double [ 0.000000e+00, %bb.p ], [ %.2.i213, %.critedge.i212 ]
  %i.fi = tail call noundef double @_ZN13duckdb_brotli28BrotliPopulationCostDistanceEPKNS_17HistogramDistanceE(ptr noundef nonnull %i.c)
  %i.fj = fadd double %.029.lcssa.i197, %i.fi
  %i.fk = fcmp olt double %i.fj, %.1275357
  br i1 %i.fk, label %bb.r, label %_ZL19ComputeDistanceCostPKN13duckdb_brotli7CommandEmPK20BrotliDistanceParamsS5_PdPNS_17HistogramDistanceE.exit216.thread

bb.r:                                             ; preds = %_ZL19ComputeDistanceCostPKN13duckdb_brotli7CommandEmPK20BrotliDistanceParamsS5_PdPNS_17HistogramDistanceE.exit216
  store i32 %.sroa.0234.0.copyload, ptr %i.a, align 8, !tbaa !3
  store i32 %.sroa.12242.0.copyload, ptr %.sroa.12242.0..sroa_idx, align 4, !tbaa !3
  store <2 x i64> %i.b, ptr %.sroa.20.0..sroa_idx, align 8
  br label %_ZL19ComputeDistanceCostPKN13duckdb_brotli7CommandEmPK20BrotliDistanceParamsS5_PdPNS_17HistogramDistanceE.exit216.thread

_ZL19ComputeDistanceCostPKN13duckdb_brotli7CommandEmPK20BrotliDistanceParamsS5_PdPNS_17HistogramDistanceE.exit216.thread: ; preds = %_ZL19ComputeDistanceCostPKN13duckdb_brotli7CommandEmPK20BrotliDistanceParamsS5_PdPNS_17HistogramDistanceE.exit216, %bb.r, %bb.o
  tail call void @_ZN13duckdb_brotli10BrotliFreeEPNS_13MemoryManagerEPv(ptr noundef %0, ptr noundef %i.c)
  %i.fl = load i32, ptr %i.a, align 8, !tbaa !7
  %i.fm = icmp eq i32 %.sroa.0234.0.copyload, %i.fl
  br i1 %i.fm, label %bb.s, label %bb.t

bb.s:                                             ; preds = %_ZL19ComputeDistanceCostPKN13duckdb_brotli7CommandEmPK20BrotliDistanceParamsS5_PdPNS_17HistogramDistanceE.exit216.thread
  %i.fn = load i32, ptr %.sroa.12242.0..sroa_idx, align 4, !tbaa !10
  %i.fo = icmp eq i32 %.sroa.12242.0.copyload, %i.fn
  %or.cond.i = or i1 %.not4555.i, %i.fo
  br i1 %or.cond.i, label %_ZL25RecomputeDistancePrefixesPN13duckdb_brotli7CommandEmPK20BrotliDistanceParamsS4_.exit, label %.lr.ph.i217.preheader

bb.t:                                             ; preds = %_ZL19ComputeDistanceCostPKN13duckdb_brotli7CommandEmPK20BrotliDistanceParamsS5_PdPNS_17HistogramDistanceE.exit216.thread
  br i1 %.not4555.i, label %_ZL25RecomputeDistancePrefixesPN13duckdb_brotli7CommandEmPK20BrotliDistanceParamsS4_.exit, label %.lr.ph.i217.preheader

.lr.ph.i217.preheader:                            ; preds = %bb.t, %bb.s
  %invariant.op431 = sub i32 -16, %.sroa.12242.0.copyload
  br label %.lr.ph.i217

.lr.ph.i217:                                      ; preds = %.lr.ph.i217.preheader, %bb.z
  %.01.i = phi i64 [ %i.hz, %bb.z ], [ 0, %.lr.ph.i217.preheader ] ; 2 uses
  %i.fp = getelementptr inbounds nuw [16 x i8], ptr %7, i64 %.01.i ; 5 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fp, i64 4
  %i.fr = load i32, ptr %i.fq, align 4, !tbaa !35
  %i.fs = and i32 %i.fr, 33554431
  %.not.i219 = icmp eq i32 %i.fs, 0
  br i1 %.not.i219, label %bb.z, label %bb.u

bb.u:                                             ; preds = %.lr.ph.i217
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fp, i64 12
  %i.fu = load i16, ptr %i.ft, align 4, !tbaa !38
  %i.fv = icmp ugt i16 %i.fu, 127
  br i1 %i.fv, label %bb.v, label %bb.z

bb.v:                                             ; preds = %bb.u
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fp, i64 14 ; 2 uses
  %i.fx = load i16, ptr %i.fw, align 2, !tbaa !39
  %i.fy = zext i16 %i.fx to i32                   ; 2 uses
  %i.fz = and i32 %i.fy, 1023                     ; 3 uses
  %i.ga = icmp ult i32 %i.fz, %i.g
  br i1 %i.ga, label %_ZN13duckdb_brotliL26CommandRestoreDistanceCodeEPKNS_7CommandEPK20BrotliDistanceParams.exit.i, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.gb = lshr i32 %i.fy, 10
  %i.gc = getelementptr inbounds nuw i8, ptr %i.fp, i64 8
  %i.gd = load i32, ptr %i.gc, align 4, !tbaa !40
  %.reass.reass.i.reass.reass.reass = add i32 %i.fz, %invariant.op431 ; 2 uses
  %i.ge = lshr i32 %.reass.reass.i.reass.reass.reass, %.sroa.0234.0.copyload
  %i.gf = and i32 %.reass.reass.i.reass.reass.reass, %i.h
  %i.gg = and i32 %i.ge, 1
  %i.gh = or disjoint i32 %i.gg, 2
  %i.gi = shl i32 %i.gh, %i.gb
  %i.gj = add i32 %i.gi, -4
  %i.gk = add i32 %i.gj, %i.gd
  %i.gl = shl i32 %i.gk, %.sroa.0234.0.copyload
  %i.gm = add nuw i32 %i.gf, %i.g
  %i.gn = add i32 %i.gm, %i.gl
  br label %_ZN13duckdb_brotliL26CommandRestoreDistanceCodeEPKNS_7CommandEPK20BrotliDistanceParams.exit.i

_ZN13duckdb_brotliL26CommandRestoreDistanceCodeEPKNS_7CommandEPK20BrotliDistanceParams.exit.i: ; preds = %bb.w, %bb.v
  %.0.i.i = phi i32 [ %i.gn, %bb.w ], [ %i.fz, %bb.v ] ; 2 uses
  %i.go = zext i32 %.0.i.i to i64                 ; 2 uses
  %i.gp = load i32, ptr %.sroa.12242.0..sroa_idx, align 4, !tbaa !10
  %i.gq = zext i32 %i.gp to i64                   ; 2 uses
  %i.gr = getelementptr inbounds nuw i8, ptr %i.fp, i64 8
  %i.gs = add nuw nsw i64 %i.gq, 16               ; 2 uses
  %i.gt = icmp samesign ugt i64 %i.gs, %i.go
  br i1 %i.gt, label %bb.x, label %bb.y

bb.x:                                             ; preds = %_ZN13duckdb_brotliL26CommandRestoreDistanceCodeEPKNS_7CommandEPK20BrotliDistanceParams.exit.i
  %i.gu = trunc i32 %.0.i.i to i16
  br label %_ZN13duckdb_brotliL24PrefixEncodeCopyDistanceEmmmPtPj.exit.i221

bb.y:                                             ; preds = %_ZN13duckdb_brotliL26CommandRestoreDistanceCodeEPKNS_7CommandEPK20BrotliDistanceParams.exit.i
  %i.gv = load i32, ptr %i.a, align 8, !tbaa !7   ; 2 uses
  %i.gw = zext i32 %i.gv to i64                   ; 4 uses
  %i.gx = shl nuw i64 4, %i.gw
  %i.gy = add nsw i64 %i.go, -16
  %i.gz = sub nsw i64 %i.gy, %i.gq
  %i.ha = add i64 %i.gz, %i.gx                    ; 4 uses
  %i.hb = trunc i64 %i.ha to i32
  %i.hc = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.hb, i1 true)
  %i.hd = sub nsw i32 30, %i.hc
  %i.he = zext i32 %i.hd to i64                   ; 3 uses
  %notmask.i16.i = shl nsw i32 -1, %i.gv
  %i.hf = xor i32 %notmask.i16.i, -1
  %i.hg = zext nneg i32 %i.hf to i64
  %i.hh = and i64 %i.ha, %i.hg
  %i.hi = lshr i64 %i.ha, %i.he                   ; 2 uses
  %i.hj = and i64 %i.hi, 1
  %i.hk = or disjoint i64 %i.hj, 2
  %i.hl = shl i64 %i.hk, %i.he
  %i.hm = sub nsw i64 %i.he, %i.gw                ; 2 uses
  %i.hn = shl nsw i64 %i.hm, 10
  %i.ho = shl nsw i64 %i.hm, 1
  %i.hp = or i64 %i.hi, 65534
  %i.hq = add i64 %i.ho, %i.hp
  %i.hr = shl i64 %i.hq, %i.gw
  %i.hs = add nuw nsw i64 %i.hh, %i.gs
  %i.ht = add i64 %i.hs, %i.hr
  %i.hu = or i64 %i.ht, %i.hn
  %i.hv = trunc i64 %i.hu to i16
  %i.hw = sub i64 %i.ha, %i.hl
  %i.hx = lshr i64 %i.hw, %i.gw
  %i.hy = trunc i64 %i.hx to i32
  br label %_ZN13duckdb_brotliL24PrefixEncodeCopyDistanceEmmmPtPj.exit.i221

_ZN13duckdb_brotliL24PrefixEncodeCopyDistanceEmmmPtPj.exit.i221: ; preds = %bb.y, %bb.x
  %.sink.i = phi i16 [ %i.gu, %bb.x ], [ %i.hv, %bb.y ]
  %storemerge.i.i = phi i32 [ 0, %bb.x ], [ %i.hy, %bb.y ]
  store i16 %.sink.i, ptr %i.fw, align 2, !tbaa !47
  store i32 %storemerge.i.i, ptr %i.gr, align 4, !tbaa !3
  br label %bb.z

bb.z:                                             ; preds = %_ZN13duckdb_brotliL24PrefixEncodeCopyDistanceEmmmPtPj.exit.i221, %bb.u, %.lr.ph.i217
  %i.hz = add nuw i64 %.01.i, 1                   ; 2 uses
  %exitcond.not.i220 = icmp eq i64 %i.hz, %8
  br i1 %exitcond.not.i220, label %_ZL25RecomputeDistancePrefixesPN13duckdb_brotli7CommandEmPK20BrotliDistanceParamsS4_.exit, label %.lr.ph.i217, !llvm.loop !48

_ZL25RecomputeDistancePrefixesPN13duckdb_brotli7CommandEmPK20BrotliDistanceParamsS4_.exit: ; preds = %bb.z, %bb.s, %bb.t
  %i.ia = getelementptr inbounds nuw i8, ptr %10, i64 48 ; 3 uses
  %i.ib = getelementptr inbounds nuw i8, ptr %10, i64 96 ; 4 uses
  tail call void @_ZN13duckdb_brotli16BrotliSplitBlockEPNS_13MemoryManagerEPKNS_7CommandEmPKhmmPK19BrotliEncoderParamsPNS_10BlockSplitESB_SB_(ptr noundef %0, ptr noundef %7, i64 noundef %8, ptr noundef %1, i64 noundef %2, i64 noundef %3, ptr noundef %4, ptr noundef %10, ptr noundef nonnull %i.ia, ptr noundef nonnull %i.ib)
  %i.ic = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 2 uses
  %i.id = load i32, ptr %i.ic, align 8, !tbaa !49
  %.not165 = icmp eq i32 %i.id, 0
end_hunk_0
