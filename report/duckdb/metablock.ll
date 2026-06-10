inline.NumInlined: 13
inline.NumDeleted: 8
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
  %4 = xor i32 %i.p, 31
  %i.q = lshr i32 %i.n, %4
  %i.r = and i32 %i.q, 1
  %i.s = shl nuw nsw i32 %i.p, 1
  %i.t = sub nuw nsw i32 60, %i.s
  %i.u = or disjoint i32 %i.r, %i.t               ; 2 uses
  %i.v = icmp eq i32 %i.u, 0
  br i1 %i.v, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %notmask.i = shl nsw i32 -1, %1                 ; 2 uses
  %i.w = xor i32 %notmask.i, -1
  %i.x = add nsw i32 %i.u, -1                     ; 3 uses
  %i.y = lshr i32 %i.x, 1                         ; 2 uses
  %i.z = add nuw nsw i32 %i.y, 1
  %i.aa = and i32 %i.x, 1
  %i.ab = shl nuw nsw i32 %i.aa, %i.z
  %i.ac = shl i32 %i.x, %1
  %i.ad = or i32 %i.ac, %i.w
  %i.ae = add nuw i32 %2, 17
  %i.af = add i32 %i.ae, %i.ad
  %i.ag = shl nuw i32 6, %i.y
  %i.ah = add i32 %i.ag, -5
  %i.ai = add nuw i32 %i.ah, %i.ab
  %i.aj = shl i32 %i.ai, %1
  %i.ak = sub i32 %2, %notmask.i
  %i.al = add i32 %i.ak, %i.aj
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %.sroa.0.0.i = phi i32 [ %i.af, %bb.d ], [ %i.b, %bb.c ]
  %.sroa.4.0.i = phi i32 [ %i.al, %bb.d ], [ %2, %bb.c ]
  %i.am = zext i32 %.sroa.4.0.i to i64
  %i.an = shl nuw i64 %i.am, 32
  %i.ao = zext i32 %.sroa.0.0.i to i64
  %i.ap = or disjoint i64 %i.an, %i.ao
  br label %_ZN13duckdb_brotliL32BrotliCalculateDistanceCodeLimitEjjj.exit

_ZN13duckdb_brotliL32BrotliCalculateDistanceCodeLimitEjjj.exit: ; preds = %bb.b, %bb.e
  %.sroa.0.0.insert.insert.i = phi i64 [ %i.ap, %bb.e ], [ 9223372021822390284, %bb.b ] ; 2 uses
  %.sroa.0.0.extract.trunc = trunc i64 %.sroa.0.0.insert.insert.i to i32
  %.sroa.4.0.extract.shift = lshr i64 %.sroa.0.0.insert.insert.i, 32
  %.sroa.4.0.extract.trunc = trunc nuw i64 %.sroa.4.0.extract.shift to i32
  %i.aq = shl i32 62, %i.c
  %i.ar = add i32 %i.b, %i.aq
  br label %bb.f

bb.f:                                             ; preds = %_ZN13duckdb_brotliL32BrotliCalculateDistanceCodeLimitEjjj.exit, %bb.a
  %.021 = phi i32 [ %.sroa.4.0.extract.trunc, %_ZN13duckdb_brotliL32BrotliCalculateDistanceCodeLimitEjjj.exit ], [ %i.j, %bb.a ]
  %.020 = phi i32 [ %.sroa.0.0.extract.trunc, %_ZN13duckdb_brotliL32BrotliCalculateDistanceCodeLimitEjjj.exit ], [ %i.e, %bb.a ]
  %.0 = phi i32 [ %i.ar, %_ZN13duckdb_brotliL32BrotliCalculateDistanceCodeLimitEjjj.exit ], [ %i.e, %bb.a ]
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %.0, ptr %i.as, align 8, !tbaa !11
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 %.020, ptr %i.at, align 4, !tbaa !12
  %i.au = zext i32 %.021 to i64
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.au, ptr %i.av, align 8, !tbaa !13
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
  %indvars.iv = phi i64 [ 0, %bb.a ], [ %indvars.iv.next, %bb.n ] ; 6 uses
  %.0143296 = phi double [ f0x547D42AEA2879F2E, %bb.a ], [ %.1280362, %bb.n ] ; 2 uses
  %.0144295 = phi i32 [ 1, %bb.a ], [ %.3147363, %bb.n ] ; 2 uses
  %.0148294 = phi i32 [ 0, %bb.a ], [ %i.em, %bb.n ] ; 3 uses
  %i.j = icmp samesign ult i32 %.0148294, 16
  br i1 %i.j, label %.lr.ph, label %.thread.thread

.lr.ph:                                           ; preds = %.preheader
  %i.k = trunc nuw nsw i64 %indvars.iv to i32     ; 9 uses
  %i.l = shl nuw nsw i32 48, %i.k
  %notmask.i.i = shl nsw i32 -1, %i.k             ; 2 uses
  %i.m = xor i32 %notmask.i.i, -1                 ; 2 uses
  %i.n = shl nuw nsw i32 124, %i.k
  %i.o = icmp eq i64 %indvars.iv, %i.i            ; 2 uses
  %i.p = shl nuw nsw i64 4, %indvars.iv
  %i.q = add nsw i64 %i.p, -16
  %i.r = zext nneg i32 %i.m to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.m
  %.1285 = phi double [ %.0143296, %.lr.ph ], [ %i.ef, %bb.m ] ; 2 uses
  %.1145284 = phi i32 [ %.0144295, %.lr.ph ], [ %.2146, %bb.m ]
  %.1149283 = phi i32 [ %.0148294, %.lr.ph ], [ %i.eh, %bb.m ] ; 5 uses
  %i.s = shl nuw nsw i32 %.1149283, %i.k          ; 9 uses
  %i.t = load i32, ptr %i.d, align 4, !tbaa !14
  %i.u = add nuw nsw i32 %i.s, 16                 ; 3 uses
  %i.v = add nuw nsw i32 %i.u, %i.l               ; 2 uses
  %i.w = add nuw nsw i32 %.1149283, 67108860
  %i.x = shl nuw nsw i32 %i.w, %i.k
  %.not.i = icmp eq i32 %i.t, 0
  br i1 %.not.i, label %_ZN13duckdb_brotli24BrotliInitDistanceParamsEP20BrotliDistanceParamsjji.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.y = sub nuw nsw i32 2147483644, %i.s
  %i.z = lshr i32 %i.y, %i.k
  %i.aa = add nuw i32 %i.z, 4                     ; 2 uses
  %i.ab = lshr i32 %i.aa, 1
  %i.ac = tail call range(i32 1, 33) i32 @llvm.ctlz.i32(i32 %i.ab, i1 true) ; 2 uses
  %11 = xor i32 %i.ac, 31
  %i.ad = lshr i32 %i.aa, %11
  %i.ae = and i32 %i.ad, 1
  %i.af = shl nuw nsw i32 %i.ac, 1
  %reass.sub = sub nsw i32 %i.ae, %i.af           ; 2 uses
  %i.ag = icmp eq i32 %reass.sub, -60
  br i1 %i.ag, label %_ZN13duckdb_brotliL32BrotliCalculateDistanceCodeLimitEjjj.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ah = add nsw i32 %reass.sub, 59              ; 3 uses
  %i.ai = lshr i32 %i.ah, 1                       ; 2 uses
  %i.aj = add nuw nsw i32 %i.ai, 1
  %i.ak = and i32 %i.ah, 1
  %i.al = shl nuw nsw i32 %i.ak, %i.aj
  %i.am = shl nsw i32 %i.ah, %i.k
  %i.an = or i32 %i.am, %i.m
  %i.ao = add nuw nsw i32 %i.s, 17
  %i.ap = add i32 %i.ao, %i.an
  %i.aq = shl nuw i32 6, %i.ai
  %i.ar = add i32 %i.aq, -5
  %i.as = add nuw i32 %i.ar, %i.al
  %i.at = shl i32 %i.as, %i.k
  %i.au = sub i32 %i.s, %notmask.i.i
  %i.av = add i32 %i.au, %i.at
  br label %_ZN13duckdb_brotliL32BrotliCalculateDistanceCodeLimitEjjj.exit.i

_ZN13duckdb_brotliL32BrotliCalculateDistanceCodeLimitEjjj.exit.i: ; preds = %bb.c, %bb.d
  %.sroa.0.0.i.i = phi i32 [ %i.ap, %bb.d ], [ %i.u, %bb.c ]
  %.sroa.4.0.i.i = phi i32 [ %i.av, %bb.d ], [ %i.s, %bb.c ]
  %i.aw = add nuw nsw i32 %i.u, %i.n
  br label %_ZN13duckdb_brotli24BrotliInitDistanceParamsEP20BrotliDistanceParamsjji.exit

_ZN13duckdb_brotli24BrotliInitDistanceParamsEP20BrotliDistanceParamsjji.exit: ; preds = %bb.b, %_ZN13duckdb_brotliL32BrotliCalculateDistanceCodeLimitEjjj.exit.i
  %.021.i = phi i32 [ %.sroa.4.0.i.i, %_ZN13duckdb_brotliL32BrotliCalculateDistanceCodeLimitEjjj.exit.i ], [ %i.x, %bb.b ] ; 2 uses
  %.020.i = phi i32 [ %.sroa.0.0.i.i, %_ZN13duckdb_brotliL32BrotliCalculateDistanceCodeLimitEjjj.exit.i ], [ %i.v, %bb.b ]
  %.0.i183 = phi i32 [ %i.aw, %_ZN13duckdb_brotliL32BrotliCalculateDistanceCodeLimitEjjj.exit.i ], [ %i.v, %bb.b ]
  %i.ax = zext i32 %.021.i to i64
  %i.ay = icmp eq i32 %i.s, %.sroa.12242.0.copyload
  %or.cond = select i1 %i.o, i1 %i.ay, i1 false
  %.2146 = select i1 %or.cond, i32 0, i32 %.1145284 ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2184) %i.c, i8 0, i64 2184, i1 false)
  store double +inf, ptr %i.f, align 8, !tbaa !32
  br i1 %i.o, label %bb.e, label %.thread.i

bb.e:                                             ; preds = %_ZN13duckdb_brotli24BrotliInitDistanceParamsEP20BrotliDistanceParamsjji.exit
  br i1 %.not4555.i, label %.loopexit276, label %.lr.ph.i

.thread.i:                                        ; preds = %_ZN13duckdb_brotli24BrotliInitDistanceParamsEP20BrotliDistanceParamsjji.exit
  br i1 %.not4555.i, label %.loopexit276, label %.lr.ph.split.us.preheader.i

.lr.ph.i:                                         ; preds = %bb.e
  %i.az = icmp ne i32 %.sroa.12242.0.copyload, %i.s
  %i.ba = freeze i1 %i.az
  br i1 %i.ba, label %.lr.ph.split.us.preheader.i, label %.lr.ph.split.i

.lr.ph.split.us.preheader.i:                      ; preds = %.thread.i, %.lr.ph.i
  %i.bb = zext nneg i32 %i.s to i64               ; 2 uses
  %i.bc = add nuw nsw i64 %i.bb, 16               ; 2 uses
  %i.bd = sub nsw i64 %i.q, %i.bb
  br label %.lr.ph.split.us.i

.lr.ph.split.us.i:                                ; preds = %.critedge.us.i, %.lr.ph.split.us.preheader.i
  %i.be = phi i64 [ %i.dh, %.critedge.us.i ], [ 0, %.lr.ph.split.us.preheader.i ] ; 3 uses
  %.03144.us.i = phi i64 [ %i.di, %.critedge.us.i ], [ 0, %.lr.ph.split.us.preheader.i ] ; 2 uses
  %.03243.us.i = phi double [ %.234.us.i, %.critedge.us.i ], [ 0.000000e+00, %.lr.ph.split.us.preheader.i ] ; 3 uses
  %i.bf = getelementptr inbounds nuw [16 x i8], ptr %7, i64 %.03144.us.i ; 4 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 4
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !35
  %i.bi = and i32 %i.bh, 33554431
  %.not.us.i = icmp eq i32 %i.bi, 0
  br i1 %.not.us.i, label %.critedge.us.i, label %bb.f

bb.f:                                             ; preds = %.lr.ph.split.us.i
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bf, i64 12
  %i.bk = load i16, ptr %i.bj, align 4, !tbaa !38
  %i.bl = icmp ugt i16 %i.bk, 127
  br i1 %i.bl, label %bb.g, label %.critedge.us.i

bb.g:                                             ; preds = %bb.f
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bf, i64 14
  %i.bn = load i16, ptr %i.bm, align 2, !tbaa !39
  %i.bo = zext i16 %i.bn to i32                   ; 2 uses
  %i.bp = and i32 %i.bo, 1023                     ; 3 uses
  %i.bq = icmp ult i32 %i.bp, %i.g
  br i1 %i.bq, label %_ZN13duckdb_brotliL26CommandRestoreDistanceCodeEPKNS_7CommandEPK20BrotliDistanceParams.exit.us.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.br = lshr i32 %i.bo, 10
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !40
  %.reass.reass.reass = add i32 %i.bp, %invariant.op ; 2 uses
  %i.bu = lshr i32 %.reass.reass.reass, %.sroa.0234.0.copyload
  %i.bv = and i32 %.reass.reass.reass, %i.h
  %i.bw = and i32 %i.bu, 1
  %i.bx = or disjoint i32 %i.bw, 2
  %i.by = shl i32 %i.bx, %i.br
  %i.bz = add i32 %i.by, -4
  %i.ca = add i32 %i.bz, %i.bt
  %i.cb = shl i32 %i.ca, %.sroa.0234.0.copyload
  %i.cc = add nuw i32 %i.bv, %i.g
  %i.cd = add i32 %i.cc, %i.cb
  br label %_ZN13duckdb_brotliL26CommandRestoreDistanceCodeEPKNS_7CommandEPK20BrotliDistanceParams.exit.us.i

_ZN13duckdb_brotliL26CommandRestoreDistanceCodeEPKNS_7CommandEPK20BrotliDistanceParams.exit.us.i: ; preds = %bb.h, %bb.g
  %.0.i.us.i = phi i32 [ %i.cd, %bb.h ], [ %i.bp, %bb.g ] ; 3 uses
  %i.ce = zext i32 %.0.i.us.i to i64              ; 2 uses
  %.not38.us.i = icmp ult i32 %.021.i, %.0.i.us.i
  br i1 %.not38.us.i, label %.thread, label %bb.i

bb.i:                                             ; preds = %_ZN13duckdb_brotliL26CommandRestoreDistanceCodeEPKNS_7CommandEPK20BrotliDistanceParams.exit.us.i
  %i.cf = icmp samesign ugt i64 %i.bc, %i.ce
  br i1 %i.cf, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.cg = add nsw i64 %i.bd, %i.ce                ; 3 uses
  %i.ch = trunc i64 %i.cg to i32
  %i.ci = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.ch, i1 true)
  %i.cj = sub nsw i32 30, %i.ci
  %i.ck = zext i32 %i.cj to i64                   ; 2 uses
  %i.cl = and i64 %i.cg, %i.r
  %i.cm = lshr i64 %i.cg, %i.ck
  %i.cn = sub nsw i64 %i.ck, %indvars.iv          ; 2 uses
  %i.co = shl nsw i64 %i.cn, 10
  %i.cp = shl nsw i64 %i.cn, 1
  %i.cq = or i64 %i.cm, 65534
  %i.cr = add i64 %i.cp, %i.cq
  %i.cs = shl i64 %i.cr, %indvars.iv
  %i.ct = add nuw nsw i64 %i.cl, %i.bc
  %i.cu = add i64 %i.ct, %i.cs
  %i.cv = or i64 %i.cu, %i.co
  %i.cw = trunc i64 %i.cv to i16
  br label %_ZN13duckdb_brotliL24PrefixEncodeCopyDistanceEmmmPtPj.exit.us.i

bb.k:                                             ; preds = %bb.i
  %i.cx = trunc i32 %.0.i.us.i to i16
  br label %_ZN13duckdb_brotliL24PrefixEncodeCopyDistanceEmmmPtPj.exit.us.i

_ZN13duckdb_brotliL24PrefixEncodeCopyDistanceEmmmPtPj.exit.us.i: ; preds = %bb.k, %bb.j
  %.0.us.i = phi i16 [ %i.cw, %bb.j ], [ %i.cx, %bb.k ] ; 2 uses
  %i.cy = and i16 %.0.us.i, 1023
  %i.cz = zext nneg i16 %i.cy to i64
  %i.da = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.cz ; 2 uses
  %i.db = load i32, ptr %i.da, align 4, !tbaa !3
  %i.dc = add i32 %i.db, 1
  store i32 %i.dc, ptr %i.da, align 4, !tbaa !3
  %i.dd = add i64 %i.be, 1                        ; 2 uses
  store i64 %i.dd, ptr %i.e, align 8, !tbaa !41
  %i.de = lshr i16 %.0.us.i, 10
  %i.df = uitofp nneg i16 %i.de to double
  %i.dg = fadd double %.03243.us.i, %i.df
  br label %.critedge.us.i

.critedge.us.i:                                   ; preds = %_ZN13duckdb_brotliL24PrefixEncodeCopyDistanceEmmmPtPj.exit.us.i, %bb.f, %.lr.ph.split.us.i
  %i.dh = phi i64 [ %i.be, %.lr.ph.split.us.i ], [ %i.be, %bb.f ], [ %i.dd, %_ZN13duckdb_brotliL24PrefixEncodeCopyDistanceEmmmPtPj.exit.us.i ]
  %.234.us.i = phi double [ %.03243.us.i, %.lr.ph.split.us.i ], [ %.03243.us.i, %bb.f ], [ %i.dg, %_ZN13duckdb_brotliL24PrefixEncodeCopyDistanceEmmmPtPj.exit.us.i ] ; 2 uses
  %i.di = add nuw i64 %.03144.us.i, 1             ; 2 uses
  %exitcond47.not.i = icmp eq i64 %i.di, %8
  br i1 %exitcond47.not.i, label %.loopexit276, label %.lr.ph.split.us.i, !llvm.loop !42

.lr.ph.split.i:                                   ; preds = %.lr.ph.i, %.critedge.i
  %i.dj = phi i64 [ %i.ec, %.critedge.i ], [ 0, %.lr.ph.i ] ; 3 uses
  %.03144.i = phi i64 [ %i.ed, %.critedge.i ], [ 0, %.lr.ph.i ] ; 2 uses
  %.03243.i = phi double [ %.234.i, %.critedge.i ], [ 0.000000e+00, %.lr.ph.i ] ; 3 uses
  %i.dk = getelementptr inbounds nuw [16 x i8], ptr %7, i64 %.03144.i ; 3 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 4
  %i.dm = load i32, ptr %i.dl, align 4, !tbaa !35
  %i.dn = and i32 %i.dm, 33554431
  %.not.i184 = icmp eq i32 %i.dn, 0
  br i1 %.not.i184, label %.critedge.i, label %bb.l

bb.l:                                             ; preds = %.lr.ph.split.i
  %i.do = getelementptr inbounds nuw i8, ptr %i.dk, i64 12
  %i.dp = load i16, ptr %i.do, align 4, !tbaa !38
  %i.dq = icmp ugt i16 %i.dp, 127
  br i1 %i.dq, label %_ZN13duckdb_brotliL24PrefixEncodeCopyDistanceEmmmPtPj.exit.i, label %.critedge.i

_ZN13duckdb_brotliL24PrefixEncodeCopyDistanceEmmmPtPj.exit.i: ; preds = %bb.l
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dk, i64 14
  %i.ds = load i16, ptr %i.dr, align 2, !tbaa !39 ; 2 uses
  %i.dt = and i16 %i.ds, 1023
  %i.du = zext nneg i16 %i.dt to i64
  %i.dv = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.du ; 2 uses
  %i.dw = load i32, ptr %i.dv, align 4, !tbaa !3
  %i.dx = add i32 %i.dw, 1
  store i32 %i.dx, ptr %i.dv, align 4, !tbaa !3
  %i.dy = add i64 %i.dj, 1                        ; 2 uses
  store i64 %i.dy, ptr %i.e, align 8, !tbaa !41
  %i.dz = lshr i16 %i.ds, 10
  %i.ea = uitofp nneg i16 %i.dz to double
  %i.eb = fadd double %.03243.i, %i.ea
  br label %.critedge.i

.critedge.i:                                      ; preds = %_ZN13duckdb_brotliL24PrefixEncodeCopyDistanceEmmmPtPj.exit.i, %bb.l, %.lr.ph.split.i
  %i.ec = phi i64 [ %i.dj, %.lr.ph.split.i ], [ %i.dj, %bb.l ], [ %i.dy, %_ZN13duckdb_brotliL24PrefixEncodeCopyDistanceEmmmPtPj.exit.i ]
  %.234.i = phi double [ %.03243.i, %.lr.ph.split.i ], [ %.03243.i, %bb.l ], [ %i.eb, %_ZN13duckdb_brotliL24PrefixEncodeCopyDistanceEmmmPtPj.exit.i ] ; 2 uses
  %i.ed = add nuw i64 %.03144.i, 1                ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.ed, %8
  br i1 %exitcond.not.i, label %.loopexit276, label %.lr.ph.split.i, !llvm.loop !42

.loopexit276:                                     ; preds = %.critedge.i, %.critedge.us.i, %.thread.i, %bb.e
  %.032.lcssa.i = phi double [ 0.000000e+00, %bb.e ], [ 0.000000e+00, %.thread.i ], [ %.234.us.i, %.critedge.us.i ], [ %.234.i, %.critedge.i ]
end_hunk_0
