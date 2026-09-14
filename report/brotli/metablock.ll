Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/brotli/original/metablock?download=true
inline.NumInlined: 13
inline.NumDeleted: 8
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 31
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define hidden void @BrotliInitDistanceParams(ptr nofree noundef writeonly captures(none) initializes((0, 24)) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
bb.a:
  store i32 %1, ptr %0, align 8, !tbaa !11
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %2, ptr %i.a, align 4, !tbaa !12
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
  br i1 %i.k, label %BrotliCalculateDistanceCodeLimit.exit, label %bb.c

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
  br label %BrotliCalculateDistanceCodeLimit.exit

BrotliCalculateDistanceCodeLimit.exit:            ; preds = %bb.b, %bb.e
  %.sroa.0.0.insert.insert.i = phi i64 [ %i.aq, %bb.e ], [ 9223372021822390284, %bb.b ] ; 2 uses
  %.sroa.0.0.extract.trunc = trunc i64 %.sroa.0.0.insert.insert.i to i32
  %.sroa.4.0.extract.shift = lshr i64 %.sroa.0.0.insert.insert.i, 32
  %.sroa.4.0.extract.trunc = trunc nuw i64 %.sroa.4.0.extract.shift to i32
  %i.ar = shl i32 62, %i.c
  %i.as = add i32 %i.b, %i.ar
  br label %bb.f

bb.f:                                             ; preds = %BrotliCalculateDistanceCodeLimit.exit, %bb.a
  %.021 = phi i32 [ %.sroa.4.0.extract.trunc, %BrotliCalculateDistanceCodeLimit.exit ], [ %i.j, %bb.a ]
  %.020 = phi i32 [ %.sroa.0.0.extract.trunc, %BrotliCalculateDistanceCodeLimit.exit ], [ %i.e, %bb.a ]
  %.0 = phi i32 [ %i.as, %BrotliCalculateDistanceCodeLimit.exit ], [ %i.e, %bb.a ]
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %.0, ptr %i.at, align 8, !tbaa !111
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 %.020, ptr %i.au, align 4, !tbaa !112
  %i.av = zext i32 %.021 to i64
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.av, ptr %i.aw, align 8, !tbaa !113
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nounwind uwtable
define hidden void @BrotliBuildMetaBlock(ptr noundef %0, ptr noundef %1, i64 noundef %2, i64 noundef %3, ptr noundef %4, i8 noundef zeroext %5, i8 noundef zeroext %6, ptr noundef %7, i64 noundef %8, i32 noundef %9, ptr noundef %10) local_unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 56 ; 5 uses
  %.sroa.0234.0.copyload = load i32, ptr %i.a, align 8, !tbaa !13 ; 8 uses
  %.sroa.12242.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 60 ; 5 uses
  %.sroa.12242.0.copyload = load i32, ptr %.sroa.12242.0..sroa_idx, align 4, !tbaa !13 ; 7 uses
  %.sroa.20.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 64 ; 3 uses
  %.sroa.20252.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 72
  %i.b = load <2 x i64>, ptr %.sroa.20.0..sroa_idx, align 8
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 68
  %i.c = tail call ptr @BrotliAllocate(ptr noundef %0, i64 noundef 2192) #8 ; 10 uses
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
  %.0143291 = phi double [ f0x547D42AEA2879F2E, %bb.a ], [ %.1275357, %bb.n ] ; 2 uses
  %.0144290 = phi i32 [ 1, %bb.a ], [ %.3147358, %bb.n ] ; 2 uses
  %.0148289 = phi i32 [ 0, %bb.a ], [ %i.el, %bb.n ] ; 3 uses
  %i.j = icmp samesign ult i32 %.0148289, 16
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
  %.1280 = phi double [ %.0143291, %.lr.ph ], [ %i.ee, %bb.m ] ; 2 uses
  %.1145279 = phi i32 [ %.0144290, %.lr.ph ], [ %.2146, %bb.m ]
  %.1149278 = phi i32 [ %.0148289, %.lr.ph ], [ %i.eg, %bb.m ] ; 5 uses
  %i.s = shl nuw nsw i32 %.1149278, %i.k          ; 9 uses
  %i.t = load i32, ptr %i.d, align 4, !tbaa !139
  %i.u = add nuw nsw i32 %i.s, 16                 ; 3 uses
  %i.v = add nuw nsw i32 %i.u, %i.l               ; 2 uses
  %i.w = add nuw nsw i32 %.1149278, 67108860
  %i.x = shl nuw nsw i32 %i.w, %i.k
  %.not.i = icmp eq i32 %i.t, 0
  br i1 %.not.i, label %BrotliInitDistanceParams.exit, label %bb.c

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
  br i1 %i.ah, label %BrotliCalculateDistanceCodeLimit.exit.i, label %bb.d

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
  br label %BrotliCalculateDistanceCodeLimit.exit.i

BrotliCalculateDistanceCodeLimit.exit.i:          ; preds = %bb.c, %bb.d
  %.sroa.0.0.i.i = phi i32 [ %i.aq, %bb.d ], [ %i.u, %bb.c ]
  %.sroa.4.0.i.i = phi i32 [ %i.aw, %bb.d ], [ %i.s, %bb.c ]
  %i.ax = add nuw nsw i32 %i.u, %i.n
  br label %BrotliInitDistanceParams.exit

BrotliInitDistanceParams.exit:                    ; preds = %bb.b, %BrotliCalculateDistanceCodeLimit.exit.i
  %.021.i = phi i32 [ %.sroa.4.0.i.i, %BrotliCalculateDistanceCodeLimit.exit.i ], [ %i.x, %bb.b ] ; 2 uses
  %.020.i = phi i32 [ %.sroa.0.0.i.i, %BrotliCalculateDistanceCodeLimit.exit.i ], [ %i.v, %bb.b ]
  %.0.i183 = phi i32 [ %i.ax, %BrotliCalculateDistanceCodeLimit.exit.i ], [ %i.v, %bb.b ]
  %i.ay = zext i32 %.021.i to i64
  %i.az = icmp eq i32 %i.s, %.sroa.12242.0.copyload
  %or.cond = select i1 %i.o, i1 %i.az, i1 false
  %.2146 = select i1 %or.cond, i32 0, i32 %.1145279 ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2184) %i.c, i8 0, i64 2184, i1 false)
  store double +inf, ptr %i.f, align 8, !tbaa !18
  br i1 %i.o, label %bb.e, label %.thread.i

bb.e:                                             ; preds = %BrotliInitDistanceParams.exit
  br i1 %.not4555.i, label %.loopexit271, label %.lr.ph.i

.thread.i:                                        ; preds = %BrotliInitDistanceParams.exit
  br i1 %.not4555.i, label %.loopexit271, label %.lr.ph.split.us.preheader.i

.lr.ph.i:                                         ; preds = %bb.e
  %11 = icmp ne i32 %.sroa.12242.0.copyload, %i.s
  %12 = freeze i1 %11
  br i1 %12, label %.lr.ph.split.us.preheader.i, label %.lr.ph.split.i

.lr.ph.split.us.preheader.i:                      ; preds = %.thread.i, %.lr.ph.i
  %i.ba = zext nneg i32 %i.s to i64               ; 2 uses
  %i.bb = add nuw nsw i64 %i.ba, 16               ; 2 uses
  %i.bc = sub nsw i64 %i.q, %i.ba
  br label %.lr.ph.split.us.i

.lr.ph.split.us.i:                                ; preds = %.critedge.us.i, %.lr.ph.split.us.preheader.i
  %i.bd = phi i64 [ %i.dg, %.critedge.us.i ], [ 0, %.lr.ph.split.us.preheader.i ] ; 3 uses
  %.02944.us.i = phi double [ %.2.us.i, %.critedge.us.i ], [ 0.000000e+00, %.lr.ph.split.us.preheader.i ] ; 3 uses
  %.03243.us.i = phi i64 [ %i.dh, %.critedge.us.i ], [ 0, %.lr.ph.split.us.preheader.i ] ; 2 uses
  %i.be = getelementptr inbounds nuw [16 x i8], ptr %7, i64 %.03243.us.i ; 4 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 4
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !140
  %i.bh = and i32 %i.bg, 33554431
  %.not.us.i = icmp eq i32 %i.bh, 0
  br i1 %.not.us.i, label %.critedge.us.i, label %bb.f

bb.f:                                             ; preds = %.lr.ph.split.us.i
  %i.bi = getelementptr inbounds nuw i8, ptr %i.be, i64 12
  %i.bj = load i16, ptr %i.bi, align 4, !tbaa !141
  %i.bk = icmp ugt i16 %i.bj, 127
  br i1 %i.bk, label %bb.g, label %.critedge.us.i

bb.g:                                             ; preds = %bb.f
  %i.bl = getelementptr inbounds nuw i8, ptr %i.be, i64 14
  %i.bm = load i16, ptr %i.bl, align 2, !tbaa !142
  %i.bn = zext i16 %i.bm to i32                   ; 2 uses
  %i.bo = and i32 %i.bn, 1023                     ; 3 uses
  %i.bp = icmp ult i32 %i.bo, %i.g
  br i1 %i.bp, label %CommandRestoreDistanceCode.exit.us.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bq = lshr i32 %i.bn, 10
  %i.br = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !143
  %.reass.reass.reass = add i32 %i.bo, %invariant.op ; 2 uses
  %i.bt = lshr i32 %.reass.reass.reass, %.sroa.0234.0.copyload
  %i.bu = and i32 %.reass.reass.reass, %i.h
  %i.bv = and i32 %i.bt, 1
  %i.bw = or disjoint i32 %i.bv, 2
  %i.bx = shl i32 %i.bw, %i.bq
  %i.by = add i32 %i.bx, -4
  %i.bz = add i32 %i.by, %i.bs
  %i.ca = shl i32 %i.bz, %.sroa.0234.0.copyload
  %i.cb = add nuw i32 %i.bu, %i.g
  %i.cc = add i32 %i.cb, %i.ca
  br label %CommandRestoreDistanceCode.exit.us.i

CommandRestoreDistanceCode.exit.us.i:             ; preds = %bb.h, %bb.g
  %.0.i.us.i = phi i32 [ %i.cc, %bb.h ], [ %i.bo, %bb.g ] ; 3 uses
  %i.cd = zext i32 %.0.i.us.i to i64              ; 2 uses
  %.not38.us.i = icmp ult i32 %.021.i, %.0.i.us.i
  br i1 %.not38.us.i, label %.thread, label %bb.i

bb.i:                                             ; preds = %CommandRestoreDistanceCode.exit.us.i
  %i.ce = icmp samesign ugt i64 %i.bb, %i.cd
  br i1 %i.ce, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.cf = add nsw i64 %i.bc, %i.cd                ; 3 uses
  %i.cg = trunc i64 %i.cf to i32
  %i.ch = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.cg, i1 true)
  %i.ci = sub nsw i32 30, %i.ch
  %i.cj = zext i32 %i.ci to i64                   ; 2 uses
  %i.ck = and i64 %i.cf, %i.r
  %i.cl = lshr i64 %i.cf, %i.cj
  %i.cm = sub nsw i64 %i.cj, %indvars.iv          ; 2 uses
  %i.cn = shl nsw i64 %i.cm, 10
  %i.co = shl nsw i64 %i.cm, 1
  %i.cp = or i64 %i.cl, 65534
  %i.cq = add i64 %i.co, %i.cp
  %i.cr = shl i64 %i.cq, %indvars.iv
  %i.cs = add nuw nsw i64 %i.ck, %i.bb
  %i.ct = add i64 %i.cs, %i.cr
  %i.cu = or i64 %i.ct, %i.cn
  %i.cv = trunc i64 %i.cu to i16
  br label %PrefixEncodeCopyDistance.exit.us.i

bb.k:                                             ; preds = %bb.i
  %i.cw = trunc i32 %.0.i.us.i to i16
  br label %PrefixEncodeCopyDistance.exit.us.i

PrefixEncodeCopyDistance.exit.us.i:               ; preds = %bb.k, %bb.j
  %.0.us.i = phi i16 [ %i.cv, %bb.j ], [ %i.cw, %bb.k ] ; 2 uses
  %i.cx = and i16 %.0.us.i, 1023
  %i.cy = zext nneg i16 %i.cx to i64
  %i.cz = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.cy ; 2 uses
  %i.da = load i32, ptr %i.cz, align 4, !tbaa !13
  %i.db = add i32 %i.da, 1
  store i32 %i.db, ptr %i.cz, align 4, !tbaa !13
  %i.dc = add i64 %i.bd, 1                        ; 2 uses
  store i64 %i.dc, ptr %i.e, align 8, !tbaa !21
  %i.dd = lshr i16 %.0.us.i, 10
  %i.de = uitofp nneg i16 %i.dd to double
  %i.df = fadd double %.02944.us.i, %i.de
  br label %.critedge.us.i

.critedge.us.i:                                   ; preds = %PrefixEncodeCopyDistance.exit.us.i, %bb.f, %.lr.ph.split.us.i
  %i.dg = phi i64 [ %i.bd, %.lr.ph.split.us.i ], [ %i.bd, %bb.f ], [ %i.dc, %PrefixEncodeCopyDistance.exit.us.i ]
  %.2.us.i = phi double [ %.02944.us.i, %.lr.ph.split.us.i ], [ %.02944.us.i, %bb.f ], [ %i.df, %PrefixEncodeCopyDistance.exit.us.i ] ; 2 uses
  %i.dh = add nuw i64 %.03243.us.i, 1             ; 2 uses
  %exitcond47.not.i = icmp eq i64 %i.dh, %8
  br i1 %exitcond47.not.i, label %.loopexit271, label %.lr.ph.split.us.i, !llvm.loop !114

.lr.ph.split.i:                                   ; preds = %.lr.ph.i, %.critedge.i
  %i.di = phi i64 [ %i.eb, %.critedge.i ], [ 0, %.lr.ph.i ] ; 3 uses
  %.02944.i = phi double [ %.2.i, %.critedge.i ], [ 0.000000e+00, %.lr.ph.i ] ; 3 uses
  %.03243.i = phi i64 [ %i.ec, %.critedge.i ], [ 0, %.lr.ph.i ] ; 2 uses
  %i.dj = getelementptr inbounds nuw [16 x i8], ptr %7, i64 %.03243.i ; 3 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 4
  %i.dl = load i32, ptr %i.dk, align 4, !tbaa !140
  %i.dm = and i32 %i.dl, 33554431
  %.not.i184 = icmp eq i32 %i.dm, 0
  br i1 %.not.i184, label %.critedge.i, label %bb.l

bb.l:                                             ; preds = %.lr.ph.split.i
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dj, i64 12
  %i.do = load i16, ptr %i.dn, align 4, !tbaa !141
  %i.dp = icmp ugt i16 %i.do, 127
  br i1 %i.dp, label %PrefixEncodeCopyDistance.exit.i, label %.critedge.i

PrefixEncodeCopyDistance.exit.i:                  ; preds = %bb.l
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dj, i64 14
  %i.dr = load i16, ptr %i.dq, align 2, !tbaa !142 ; 2 uses
  %i.ds = and i16 %i.dr, 1023
  %i.dt = zext nneg i16 %i.ds to i64
  %i.du = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.dt ; 2 uses
  %i.dv = load i32, ptr %i.du, align 4, !tbaa !13
  %i.dw = add i32 %i.dv, 1
  store i32 %i.dw, ptr %i.du, align 4, !tbaa !13
  %i.dx = add i64 %i.di, 1                        ; 2 uses
  store i64 %i.dx, ptr %i.e, align 8, !tbaa !21
  %i.dy = lshr i16 %i.dr, 10
  %i.dz = uitofp nneg i16 %i.dy to double
  %i.ea = fadd double %.02944.i, %i.dz
  br label %.critedge.i

.critedge.i:                                      ; preds = %PrefixEncodeCopyDistance.exit.i, %bb.l, %.lr.ph.split.i
  %i.eb = phi i64 [ %i.di, %.lr.ph.split.i ], [ %i.di, %bb.l ], [ %i.dx, %PrefixEncodeCopyDistance.exit.i ]
  %.2.i = phi double [ %.02944.i, %.lr.ph.split.i ], [ %.02944.i, %bb.l ], [ %i.ea, %PrefixEncodeCopyDistance.exit.i ] ; 2 uses
  %i.ec = add nuw i64 %.03243.i, 1                ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.ec, %8
  br i1 %exitcond.not.i, label %.loopexit271, label %.lr.ph.split.i, !llvm.loop !114

.loopexit271:                                     ; preds = %.critedge.i, %.critedge.us.i, %.thread.i, %bb.e
  %.029.lcssa.i = phi double [ 0.000000e+00, %bb.e ], [ 0.000000e+00, %.thread.i ], [ %.2.us.i, %.critedge.us.i ], [ %.2.i, %.critedge.i ]
  %i.ed = tail call double @BrotliPopulationCostDistance(ptr noundef nonnull %i.c) #8
  %i.ee = fadd double %.029.lcssa.i, %i.ed        ; 3 uses
  %i.ef = fcmp ogt double %i.ee, %.1280
  br i1 %i.ef, label %.thread, label %bb.m

bb.m:                                             ; preds = %.loopexit271
  store i32 %i.k, ptr %i.a, align 8, !tbaa !13
  store i32 %i.s, ptr %.sroa.12242.0..sroa_idx, align 4, !tbaa !13
  store i32 %.0.i183, ptr %.sroa.20.0..sroa_idx, align 8, !tbaa !13
  store i32 %.020.i, ptr %.sroa.11.0..sroa_idx, align 4, !tbaa !13
  store i64 %i.ay, ptr %.sroa.20252.0..sroa_idx, align 8, !tbaa !23
  %i.eg = add i32 %.1149278, 1                    ; 2 uses
  %exitcond.not = icmp eq i32 %i.eg, 16
  br i1 %exitcond.not, label %.thread.thread, label %bb.b, !llvm.loop !115

.thread.thread:                                   ; preds = %bb.m, %.preheader
  %.1149277.ph = phi i32 [ %.0148289, %.preheader ], [ 16, %bb.m ]
  %.1275.ph = phi double [ %.0143291, %.preheader ], [ %i.ee, %bb.m ]
  %.3147.ph = phi i32 [ %.0144290, %.preheader ], [ %.2146, %bb.m ]
  %i.eh = add i32 %.1149277.ph, -1
  %i.ei = lshr i32 %i.eh, 1
  br label %bb.n

.thread:                                          ; preds = %.loopexit271, %CommandRestoreDistanceCode.exit.us.i
  %.not177 = icmp eq i32 %.1149278, 0
  %i.ej = add i32 %.1149278, -1
  %i.ek = lshr i32 %i.ej, 1
  %spec.select = select i1 %.not177, i32 0, i32 %i.ek
  br label %bb.n

bb.n:                                             ; preds = %.thread, %.thread.thread
  %.3147358 = phi i32 [ %.3147.ph, %.thread.thread ], [ %.2146, %.thread ] ; 2 uses
  %.1275357 = phi double [ %.1275.ph, %.thread.thread ], [ %.1280, %.thread ] ; 2 uses
  %i.el = phi i32 [ %i.ei, %.thread.thread ], [ %spec.select, %.thread ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond317.not = icmp eq i64 %indvars.iv.next, 4
  br i1 %exitcond317.not, label %bb.o, label %.preheader, !llvm.loop !116

bb.o:                                             ; preds = %bb.n
  %.not = icmp eq i32 %.3147358, 0
  br i1 %.not, label %ComputeDistanceCost.exit216.thread, label %bb.p

bb.p:                                             ; preds = %bb.o
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2184) %i.c, i8 0, i64 2184, i1 false)
  store double +inf, ptr %i.f, align 8, !tbaa !18
  br i1 %.not4555.i, label %ComputeDistanceCost.exit216, label %.lr.ph.split.i208

.lr.ph.split.i208:                                ; preds = %bb.p, %.critedge.i212
  %i.em = phi i64 [ %i.ff, %.critedge.i212 ], [ 0, %bb.p ] ; 3 uses
  %.02944.i209 = phi double [ %.2.i213, %.critedge.i212 ], [ 0.000000e+00, %bb.p ] ; 3 uses
  %.03243.i210 = phi i64 [ %i.fg, %.critedge.i212 ], [ 0, %bb.p ] ; 2 uses
  %i.en = getelementptr inbounds nuw [16 x i8], ptr %7, i64 %.03243.i210 ; 3 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %i.en, i64 4
  %i.ep = load i32, ptr %i.eo, align 4, !tbaa !140
  %i.eq = and i32 %i.ep, 33554431
  %.not.i211 = icmp eq i32 %i.eq, 0
  br i1 %.not.i211, label %.critedge.i212, label %bb.q

bb.q:                                             ; preds = %.lr.ph.split.i208
  %i.er = getelementptr inbounds nuw i8, ptr %i.en, i64 12
  %i.es = load i16, ptr %i.er, align 4, !tbaa !141
  %i.et = icmp ugt i16 %i.es, 127
  br i1 %i.et, label %PrefixEncodeCopyDistance.exit.i215, label %.critedge.i212

PrefixEncodeCopyDistance.exit.i215:               ; preds = %bb.q
  %i.eu = getelementptr inbounds nuw i8, ptr %i.en, i64 14
  %i.ev = load i16, ptr %i.eu, align 2, !tbaa !142 ; 2 uses
  %i.ew = and i16 %i.ev, 1023
  %i.ex = zext nneg i16 %i.ew to i64
  %i.ey = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.ex ; 2 uses
  %i.ez = load i32, ptr %i.ey, align 4, !tbaa !13
  %i.fa = add i32 %i.ez, 1
  store i32 %i.fa, ptr %i.ey, align 4, !tbaa !13
  %i.fb = add i64 %i.em, 1                        ; 2 uses
  store i64 %i.fb, ptr %i.e, align 8, !tbaa !21
  %i.fc = lshr i16 %i.ev, 10
  %i.fd = uitofp nneg i16 %i.fc to double
  %i.fe = fadd double %.02944.i209, %i.fd
  br label %.critedge.i212

.critedge.i212:                                   ; preds = %PrefixEncodeCopyDistance.exit.i215, %bb.q, %.lr.ph.split.i208
  %i.ff = phi i64 [ %i.em, %.lr.ph.split.i208 ], [ %i.em, %bb.q ], [ %i.fb, %PrefixEncodeCopyDistance.exit.i215 ]
  %.2.i213 = phi double [ %.02944.i209, %.lr.ph.split.i208 ], [ %.02944.i209, %bb.q ], [ %i.fe, %PrefixEncodeCopyDistance.exit.i215 ] ; 2 uses
  %i.fg = add nuw i64 %.03243.i210, 1             ; 2 uses
  %exitcond.not.i214 = icmp eq i64 %i.fg, %8
  br i1 %exitcond.not.i214, label %ComputeDistanceCost.exit216, label %.lr.ph.split.i208, !llvm.loop !114

ComputeDistanceCost.exit216:                      ; preds = %.critedge.i212, %bb.p
  %.029.lcssa.i197 = phi double [ 0.000000e+00, %bb.p ], [ %.2.i213, %.critedge.i212 ]
  %i.fh = tail call double @BrotliPopulationCostDistance(ptr noundef nonnull %i.c) #8
  %i.fi = fadd double %.029.lcssa.i197, %i.fh
  %i.fj = fcmp olt double %i.fi, %.1275357
  br i1 %i.fj, label %bb.r, label %ComputeDistanceCost.exit216.thread

bb.r:                                             ; preds = %ComputeDistanceCost.exit216
  store i32 %.sroa.0234.0.copyload, ptr %i.a, align 8, !tbaa !13
  store i32 %.sroa.12242.0.copyload, ptr %.sroa.12242.0..sroa_idx, align 4, !tbaa !13
  store <2 x i64> %i.b, ptr %.sroa.20.0..sroa_idx, align 8
  br label %ComputeDistanceCost.exit216.thread

ComputeDistanceCost.exit216.thread:               ; preds = %ComputeDistanceCost.exit216, %bb.r, %bb.o
  tail call void @BrotliFree(ptr noundef %0, ptr noundef %i.c) #8
  %i.fk = load i32, ptr %i.a, align 8, !tbaa !11
  %i.fl = icmp eq i32 %.sroa.0234.0.copyload, %i.fk
  br i1 %i.fl, label %bb.s, label %bb.t

bb.s:                                             ; preds = %ComputeDistanceCost.exit216.thread
  %i.fm = load i32, ptr %.sroa.12242.0..sroa_idx, align 4, !tbaa !12
  %i.fn = icmp eq i32 %.sroa.12242.0.copyload, %i.fm
  %or.cond.i = or i1 %.not4555.i, %i.fn
  br i1 %or.cond.i, label %RecomputeDistancePrefixes.exit, label %.lr.ph.i217.preheader

bb.t:                                             ; preds = %ComputeDistanceCost.exit216.thread
  br i1 %.not4555.i, label %RecomputeDistancePrefixes.exit, label %.lr.ph.i217.preheader

.lr.ph.i217.preheader:                            ; preds = %bb.t, %bb.s
  %invariant.op431 = sub i32 -16, %.sroa.12242.0.copyload
  br label %.lr.ph.i217

.lr.ph.i217:                                      ; preds = %.lr.ph.i217.preheader, %bb.z
  %.01.i = phi i64 [ %i.hy, %bb.z ], [ 0, %.lr.ph.i217.preheader ] ; 2 uses
  %i.fo = getelementptr inbounds nuw [16 x i8], ptr %7, i64 %.01.i ; 5 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fo, i64 4
  %i.fq = load i32, ptr %i.fp, align 4, !tbaa !140
  %i.fr = and i32 %i.fq, 33554431
  %.not.i219 = icmp eq i32 %i.fr, 0
  br i1 %.not.i219, label %bb.z, label %bb.u

bb.u:                                             ; preds = %.lr.ph.i217
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fo, i64 12
  %i.ft = load i16, ptr %i.fs, align 4, !tbaa !141
  %i.fu = icmp ugt i16 %i.ft, 127
  br i1 %i.fu, label %bb.v, label %bb.z

bb.v:                                             ; preds = %bb.u
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fo, i64 14 ; 2 uses
  %i.fw = load i16, ptr %i.fv, align 2, !tbaa !142
  %i.fx = zext i16 %i.fw to i32                   ; 2 uses
  %i.fy = and i32 %i.fx, 1023                     ; 3 uses
  %i.fz = icmp ult i32 %i.fy, %i.g
  br i1 %i.fz, label %CommandRestoreDistanceCode.exit.i, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ga = lshr i32 %i.fx, 10
  %i.gb = getelementptr inbounds nuw i8, ptr %i.fo, i64 8
  %i.gc = load i32, ptr %i.gb, align 4, !tbaa !143
  %.reass.reass.i.reass.reass.reass = add i32 %i.fy, %invariant.op431 ; 2 uses
  %i.gd = lshr i32 %.reass.reass.i.reass.reass.reass, %.sroa.0234.0.copyload
  %i.ge = and i32 %.reass.reass.i.reass.reass.reass, %i.h
  %i.gf = and i32 %i.gd, 1
  %i.gg = or disjoint i32 %i.gf, 2
  %i.gh = shl i32 %i.gg, %i.ga
  %i.gi = add i32 %i.gh, -4
  %i.gj = add i32 %i.gi, %i.gc
  %i.gk = shl i32 %i.gj, %.sroa.0234.0.copyload
  %i.gl = add nuw i32 %i.ge, %i.g
  %i.gm = add i32 %i.gl, %i.gk
  br label %CommandRestoreDistanceCode.exit.i

CommandRestoreDistanceCode.exit.i:                ; preds = %bb.w, %bb.v
  %.0.i.i = phi i32 [ %i.gm, %bb.w ], [ %i.fy, %bb.v ] ; 2 uses
  %i.gn = zext i32 %.0.i.i to i64                 ; 2 uses
  %i.go = load i32, ptr %.sroa.12242.0..sroa_idx, align 4, !tbaa !12
  %i.gp = zext i32 %i.go to i64                   ; 2 uses
  %i.gq = getelementptr inbounds nuw i8, ptr %i.fo, i64 8
  %i.gr = add nuw nsw i64 %i.gp, 16               ; 2 uses
  %i.gs = icmp samesign ugt i64 %i.gr, %i.gn
  br i1 %i.gs, label %bb.x, label %bb.y

bb.x:                                             ; preds = %CommandRestoreDistanceCode.exit.i
  %i.gt = trunc i32 %.0.i.i to i16
  br label %PrefixEncodeCopyDistance.exit.i221

bb.y:                                             ; preds = %CommandRestoreDistanceCode.exit.i
  %i.gu = load i32, ptr %i.a, align 8, !tbaa !11  ; 2 uses
  %i.gv = zext i32 %i.gu to i64                   ; 4 uses
  %i.gw = shl nuw i64 4, %i.gv
  %i.gx = add nsw i64 %i.gn, -16
  %i.gy = sub nsw i64 %i.gx, %i.gp
  %i.gz = add i64 %i.gy, %i.gw                    ; 4 uses
  %i.ha = trunc i64 %i.gz to i32
  %i.hb = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.ha, i1 true)
  %i.hc = sub nsw i32 30, %i.hb
  %i.hd = zext i32 %i.hc to i64                   ; 3 uses
  %notmask.i16.i = shl nsw i32 -1, %i.gu
  %i.he = xor i32 %notmask.i16.i, -1
  %i.hf = zext nneg i32 %i.he to i64
  %i.hg = and i64 %i.gz, %i.hf
  %i.hh = lshr i64 %i.gz, %i.hd                   ; 2 uses
  %i.hi = and i64 %i.hh, 1
  %i.hj = or disjoint i64 %i.hi, 2
  %i.hk = shl i64 %i.hj, %i.hd
  %i.hl = sub nsw i64 %i.hd, %i.gv                ; 2 uses
  %i.hm = shl nsw i64 %i.hl, 10
  %i.hn = shl nsw i64 %i.hl, 1
  %i.ho = or i64 %i.hh, 65534
  %i.hp = add i64 %i.hn, %i.ho
  %i.hq = shl i64 %i.hp, %i.gv
  %i.hr = add nuw nsw i64 %i.hg, %i.gr
  %i.hs = add i64 %i.hr, %i.hq
end_hunk_0
