Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/brotli/original/metablock?download=true
inline.NumInlined: 13
inline.NumDeleted: 8
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 31
begin_hunk_0_@BrotliInitDistanceParams:bb.a
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
  store i32 %.0, ptr %i.at, align 8, !tbaa !12
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 %.020, ptr %i.au, align 4, !tbaa !13
  %i.av = zext i32 %.021 to i64
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.av, ptr %i.aw, align 8, !tbaa !14
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
  %.sroa.0234.0.copyload = load i32, ptr %i.a, align 8, !tbaa !15 ; 8 uses
  %.sroa.12242.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 60 ; 5 uses
  %.sroa.12242.0.copyload = load i32, ptr %.sroa.12242.0..sroa_idx, align 4, !tbaa !15 ; 7 uses
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
  %.0143296 = phi double [ f0x547D42AEA2879F2E, %bb.a ], [ %.1280362, %bb.n ] ; 2 uses
  %.0144295 = phi i32 [ 1, %bb.a ], [ %.3147363, %bb.n ] ; 2 uses
  %.0148294 = phi i32 [ 0, %bb.a ], [ %i.en, %bb.n ] ; 3 uses
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
  %.1285 = phi double [ %.0143296, %.lr.ph ], [ %i.eg, %bb.m ] ; 2 uses
  %.1145284 = phi i32 [ %.0144295, %.lr.ph ], [ %.2146, %bb.m ]
  %.1149283 = phi i32 [ %.0148294, %.lr.ph ], [ %i.ei, %bb.m ] ; 5 uses
  %i.s = shl nuw nsw i32 %.1149283, %i.k          ; 9 uses
  %i.t = load i32, ptr %i.d, align 4, !tbaa !16
  %i.u = add nuw nsw i32 %i.s, 16                 ; 3 uses
  %i.v = add nuw nsw i32 %i.u, %i.l               ; 2 uses
  %i.w = add nuw nsw i32 %.1149283, 67108860
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
  %.2146 = select i1 %or.cond, i32 0, i32 %.1145284 ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2184) %i.c, i8 0, i64 2184, i1 false)
  store double +inf, ptr %i.f, align 8, !tbaa !33
  br i1 %i.o, label %bb.e, label %.thread.i

bb.e:                                             ; preds = %BrotliInitDistanceParams.exit
  br i1 %.not4555.i, label %.loopexit276, label %.lr.ph.i

.thread.i:                                        ; preds = %BrotliInitDistanceParams.exit
  br i1 %.not4555.i, label %.loopexit276, label %.lr.ph.split.us.preheader.i

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
  %.02944.us.i = phi double [ %.234.us.i, %.critedge.us.i ], [ 0.000000e+00, %.lr.ph.split.us.preheader.i ] ; 3 uses
  %.03243.us.i = phi i64 [ %i.dj, %.critedge.us.i ], [ 0, %.lr.ph.split.us.preheader.i ] ; 2 uses
  %i.bg = getelementptr inbounds nuw [16 x i8], ptr %7, i64 %.03243.us.i ; 4 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 4
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !36
  %i.bj = and i32 %i.bi, 33554431
  %.not.us.i = icmp eq i32 %i.bj, 0
  br i1 %.not.us.i, label %.critedge.us.i, label %bb.f

bb.f:                                             ; preds = %.lr.ph.split.us.i
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bg, i64 12
  %i.bl = load i16, ptr %i.bk, align 4, !tbaa !39
  %i.bm = icmp ugt i16 %i.bl, 127
  br i1 %i.bm, label %bb.g, label %.critedge.us.i

bb.g:                                             ; preds = %bb.f
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bg, i64 14
  %i.bo = load i16, ptr %i.bn, align 2, !tbaa !40
  %i.bp = zext i16 %i.bo to i32                   ; 2 uses
  %i.bq = and i32 %i.bp, 1023                     ; 3 uses
  %i.br = icmp ult i32 %i.bq, %i.g
  br i1 %i.br, label %CommandRestoreDistanceCode.exit.us.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bs = lshr i32 %i.bp, 10
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !41
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
  br label %CommandRestoreDistanceCode.exit.us.i

CommandRestoreDistanceCode.exit.us.i:             ; preds = %bb.h, %bb.g
  %.0.i.us.i = phi i32 [ %i.ce, %bb.h ], [ %i.bq, %bb.g ] ; 3 uses
  %i.cf = zext i32 %.0.i.us.i to i64              ; 2 uses
  %.not38.us.i = icmp ult i32 %.021.i, %.0.i.us.i
  br i1 %.not38.us.i, label %.thread, label %bb.i

bb.i:                                             ; preds = %CommandRestoreDistanceCode.exit.us.i
  %i.cg = icmp samesign ugt i64 %i.bd, %i.cf
  br i1 %i.cg, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ch = add nsw i64 %i.be, %i.cf                ; 3 uses
  %i.ci = trunc i64 %i.ch to i32
  %i.cj = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.ci, i1 true)
  %i.ck = sub nsw i32 30, %i.cj
  %i.cl = zext i32 %i.ck to i64                   ; 2 uses
  %i.cm = and i64 %i.ch, %i.r
  %i.cn = lshr i64 %i.ch, %i.cl
  %i.co = sub nsw i64 %i.cl, %indvars.iv          ; 2 uses
  %i.cp = shl nsw i64 %i.co, 10
  %i.cq = shl nsw i64 %i.co, 1
  %i.cr = or i64 %i.cn, 65534
  %i.cs = add i64 %i.cq, %i.cr
  %i.ct = shl i64 %i.cs, %indvars.iv
  %i.cu = add nuw nsw i64 %i.cm, %i.bd
  %i.cv = add i64 %i.cu, %i.ct
  %i.cw = or i64 %i.cv, %i.cp
  %i.cx = trunc i64 %i.cw to i16
  br label %PrefixEncodeCopyDistance.exit.us.i

bb.k:                                             ; preds = %bb.i
  %i.cy = trunc i32 %.0.i.us.i to i16
  br label %PrefixEncodeCopyDistance.exit.us.i

PrefixEncodeCopyDistance.exit.us.i:               ; preds = %bb.k, %bb.j
  %.0.us.i = phi i16 [ %i.cx, %bb.j ], [ %i.cy, %bb.k ] ; 2 uses
  %i.cz = and i16 %.0.us.i, 1023
  %i.da = zext nneg i16 %i.cz to i64
  %i.db = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.da ; 2 uses
  %i.dc = load i32, ptr %i.db, align 4, !tbaa !15
  %i.dd = add i32 %i.dc, 1
  store i32 %i.dd, ptr %i.db, align 4, !tbaa !15
  %i.de = add i64 %i.bf, 1                        ; 2 uses
  store i64 %i.de, ptr %i.e, align 8, !tbaa !42
  %i.df = lshr i16 %.0.us.i, 10
  %i.dg = uitofp nneg i16 %i.df to double
  %i.dh = fadd double %.02944.us.i, %i.dg
  br label %.critedge.us.i

.critedge.us.i:                                   ; preds = %PrefixEncodeCopyDistance.exit.us.i, %bb.f, %.lr.ph.split.us.i
  %i.di = phi i64 [ %i.bf, %.lr.ph.split.us.i ], [ %i.bf, %bb.f ], [ %i.de, %PrefixEncodeCopyDistance.exit.us.i ]
  %.234.us.i = phi double [ %.02944.us.i, %.lr.ph.split.us.i ], [ %.02944.us.i, %bb.f ], [ %i.dh, %PrefixEncodeCopyDistance.exit.us.i ] ; 2 uses
  %i.dj = add nuw i64 %.03243.us.i, 1             ; 2 uses
  %exitcond47.not.i = icmp eq i64 %i.dj, %8
  br i1 %exitcond47.not.i, label %.loopexit276, label %.lr.ph.split.us.i, !llvm.loop !43

.lr.ph.split.i:                                   ; preds = %.lr.ph.i, %.critedge.i
  %i.dk = phi i64 [ %i.ed, %.critedge.i ], [ 0, %.lr.ph.i ] ; 3 uses
  %.02944.i = phi double [ %.234.i, %.critedge.i ], [ 0.000000e+00, %.lr.ph.i ] ; 3 uses
  %.03243.i = phi i64 [ %i.ee, %.critedge.i ], [ 0, %.lr.ph.i ] ; 2 uses
  %i.dl = getelementptr inbounds nuw [16 x i8], ptr %7, i64 %.03243.i ; 3 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 4
  %i.dn = load i32, ptr %i.dm, align 4, !tbaa !36
  %i.do = and i32 %i.dn, 33554431
  %.not.i184 = icmp eq i32 %i.do, 0
  br i1 %.not.i184, label %.critedge.i, label %bb.l

bb.l:                                             ; preds = %.lr.ph.split.i
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dl, i64 12
  %i.dq = load i16, ptr %i.dp, align 4, !tbaa !39
  %i.dr = icmp ugt i16 %i.dq, 127
  br i1 %i.dr, label %PrefixEncodeCopyDistance.exit.i, label %.critedge.i

PrefixEncodeCopyDistance.exit.i:                  ; preds = %bb.l
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dl, i64 14
  %i.dt = load i16, ptr %i.ds, align 2, !tbaa !40 ; 2 uses
  %i.du = and i16 %i.dt, 1023
  %i.dv = zext nneg i16 %i.du to i64
  %i.dw = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.dv ; 2 uses
  %i.dx = load i32, ptr %i.dw, align 4, !tbaa !15
  %i.dy = add i32 %i.dx, 1
  store i32 %i.dy, ptr %i.dw, align 4, !tbaa !15
  %i.dz = add i64 %i.dk, 1                        ; 2 uses
  store i64 %i.dz, ptr %i.e, align 8, !tbaa !42
  %i.ea = lshr i16 %i.dt, 10
  %i.eb = uitofp nneg i16 %i.ea to double
  %i.ec = fadd double %.02944.i, %i.eb
  br label %.critedge.i

.critedge.i:                                      ; preds = %PrefixEncodeCopyDistance.exit.i, %bb.l, %.lr.ph.split.i
  %i.ed = phi i64 [ %i.dk, %.lr.ph.split.i ], [ %i.dk, %bb.l ], [ %i.dz, %PrefixEncodeCopyDistance.exit.i ]
  %.234.i = phi double [ %.02944.i, %.lr.ph.split.i ], [ %.02944.i, %bb.l ], [ %i.ec, %PrefixEncodeCopyDistance.exit.i ] ; 2 uses
  %i.ee = add nuw i64 %.03243.i, 1                ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.ee, %8
  br i1 %exitcond.not.i, label %.loopexit276, label %.lr.ph.split.i, !llvm.loop !43

.loopexit276:                                     ; preds = %.critedge.i, %.critedge.us.i, %.thread.i, %bb.e
  %.032.lcssa.i = phi double [ 0.000000e+00, %bb.e ], [ 0.000000e+00, %.thread.i ], [ %.234.us.i, %.critedge.us.i ], [ %.234.i, %.critedge.i ]
  %i.ef = tail call double @BrotliPopulationCostDistance(ptr noundef nonnull %i.c) #8
  %i.eg = fadd double %.032.lcssa.i, %i.ef        ; 3 uses
  %i.eh = fcmp ogt double %i.eg, %.1285
  br i1 %i.eh, label %.thread, label %bb.m

bb.m:                                             ; preds = %.loopexit276
  store i32 %i.k, ptr %i.a, align 8, !tbaa !15
  store i32 %i.s, ptr %.sroa.12242.0..sroa_idx, align 4, !tbaa !15
  store i32 %.0.i183, ptr %.sroa.20.0..sroa_idx, align 8, !tbaa !15
  store i32 %.020.i, ptr %.sroa.11.0..sroa_idx, align 4, !tbaa !15
  store i64 %i.ay, ptr %.sroa.20252.0..sroa_idx, align 8, !tbaa !45
  %i.ei = add i32 %.1149283, 1                    ; 2 uses
  %exitcond.not = icmp eq i32 %i.ei, 16
  br i1 %exitcond.not, label %.thread.thread, label %bb.b, !llvm.loop !46

.thread.thread:                                   ; preds = %bb.m, %.preheader
  %.1149282.ph = phi i32 [ %.0148294, %.preheader ], [ 16, %bb.m ]
  %.1280.ph = phi double [ %.0143296, %.preheader ], [ %i.eg, %bb.m ]
  %.3147.ph = phi i32 [ %.0144295, %.preheader ], [ %.2146, %bb.m ]
  %i.ej = add i32 %.1149282.ph, -1
  %i.ek = lshr i32 %i.ej, 1
  br label %bb.n

.thread:                                          ; preds = %.loopexit276, %CommandRestoreDistanceCode.exit.us.i
  %.not177 = icmp eq i32 %.1149283, 0
  %i.el = add i32 %.1149283, -1
  %i.em = lshr i32 %i.el, 1
  %spec.select = select i1 %.not177, i32 0, i32 %i.em
  br label %bb.n

bb.n:                                             ; preds = %.thread, %.thread.thread
  %.3147363 = phi i32 [ %.3147.ph, %.thread.thread ], [ %.2146, %.thread ] ; 2 uses
  %.1280362 = phi double [ %.1280.ph, %.thread.thread ], [ %.1285, %.thread ] ; 2 uses
  %i.en = phi i32 [ %i.ek, %.thread.thread ], [ %spec.select, %.thread ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond322.not = icmp eq i64 %indvars.iv.next, 4
  br i1 %exitcond322.not, label %bb.o, label %.preheader, !llvm.loop !47

bb.o:                                             ; preds = %bb.n
  %.not = icmp eq i32 %.3147363, 0
  br i1 %.not, label %ComputeDistanceCost.exit216.thread, label %bb.p

bb.p:                                             ; preds = %bb.o
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2184) %i.c, i8 0, i64 2184, i1 false)
  store double +inf, ptr %i.f, align 8, !tbaa !33
  br i1 %.not4555.i, label %ComputeDistanceCost.exit216, label %.lr.ph.split.i208

.lr.ph.split.i208:                                ; preds = %bb.p, %.critedge.i212
  %i.eo = phi i64 [ %i.fh, %.critedge.i212 ], [ 0, %bb.p ] ; 3 uses
  %.02944.i209 = phi double [ %.234.i213, %.critedge.i212 ], [ 0.000000e+00, %bb.p ] ; 3 uses
  %.03243.i210 = phi i64 [ %i.fi, %.critedge.i212 ], [ 0, %bb.p ] ; 2 uses
  %i.ep = getelementptr inbounds nuw [16 x i8], ptr %7, i64 %.03243.i210 ; 3 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ep, i64 4
  %i.er = load i32, ptr %i.eq, align 4, !tbaa !36
  %i.es = and i32 %i.er, 33554431
  %.not.i211 = icmp eq i32 %i.es, 0
  br i1 %.not.i211, label %.critedge.i212, label %bb.q

bb.q:                                             ; preds = %.lr.ph.split.i208
  %i.et = getelementptr inbounds nuw i8, ptr %i.ep, i64 12
  %i.eu = load i16, ptr %i.et, align 4, !tbaa !39
  %i.ev = icmp ugt i16 %i.eu, 127
  br i1 %i.ev, label %PrefixEncodeCopyDistance.exit.i215, label %.critedge.i212

PrefixEncodeCopyDistance.exit.i215:               ; preds = %bb.q
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ep, i64 14
  %i.ex = load i16, ptr %i.ew, align 2, !tbaa !40 ; 2 uses
  %i.ey = and i16 %i.ex, 1023
  %i.ez = zext nneg i16 %i.ey to i64
  %i.fa = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.ez ; 2 uses
  %i.fb = load i32, ptr %i.fa, align 4, !tbaa !15
  %i.fc = add i32 %i.fb, 1
  store i32 %i.fc, ptr %i.fa, align 4, !tbaa !15
  %i.fd = add i64 %i.eo, 1                        ; 2 uses
  store i64 %i.fd, ptr %i.e, align 8, !tbaa !42
  %i.fe = lshr i16 %i.ex, 10
  %i.ff = uitofp nneg i16 %i.fe to double
  %i.fg = fadd double %.02944.i209, %i.ff
  br label %.critedge.i212

.critedge.i212:                                   ; preds = %PrefixEncodeCopyDistance.exit.i215, %bb.q, %.lr.ph.split.i208
  %i.fh = phi i64 [ %i.eo, %.lr.ph.split.i208 ], [ %i.eo, %bb.q ], [ %i.fd, %PrefixEncodeCopyDistance.exit.i215 ]
  %.234.i213 = phi double [ %.02944.i209, %.lr.ph.split.i208 ], [ %.02944.i209, %bb.q ], [ %i.fg, %PrefixEncodeCopyDistance.exit.i215 ] ; 2 uses
  %i.fi = add nuw i64 %.03243.i210, 1             ; 2 uses
  %exitcond.not.i214 = icmp eq i64 %i.fi, %8
  br i1 %exitcond.not.i214, label %ComputeDistanceCost.exit216, label %.lr.ph.split.i208, !llvm.loop !43

ComputeDistanceCost.exit216:                      ; preds = %.critedge.i212, %bb.p
  %.032.lcssa.i197 = phi double [ 0.000000e+00, %bb.p ], [ %.234.i213, %.critedge.i212 ]
  %i.fj = tail call double @BrotliPopulationCostDistance(ptr noundef nonnull %i.c) #8
  %i.fk = fadd double %.032.lcssa.i197, %i.fj
  %i.fl = fcmp olt double %i.fk, %.1280362
  br i1 %i.fl, label %bb.r, label %ComputeDistanceCost.exit216.thread

bb.r:                                             ; preds = %ComputeDistanceCost.exit216
  store i32 %.sroa.0234.0.copyload, ptr %i.a, align 8, !tbaa !15
  store i32 %.sroa.12242.0.copyload, ptr %.sroa.12242.0..sroa_idx, align 4, !tbaa !15
  store <2 x i64> %i.b, ptr %.sroa.20.0..sroa_idx, align 8
  br label %ComputeDistanceCost.exit216.thread

ComputeDistanceCost.exit216.thread:               ; preds = %ComputeDistanceCost.exit216, %bb.r, %bb.o
  tail call void @BrotliFree(ptr noundef %0, ptr noundef %i.c) #8
  %i.fm = load i32, ptr %i.a, align 8, !tbaa !8
  %i.fn = icmp eq i32 %.sroa.0234.0.copyload, %i.fm
  br i1 %i.fn, label %bb.s, label %bb.t

bb.s:                                             ; preds = %ComputeDistanceCost.exit216.thread
  %i.fo = load i32, ptr %.sroa.12242.0..sroa_idx, align 4, !tbaa !11
  %i.fp = icmp eq i32 %.sroa.12242.0.copyload, %i.fo
  %or.cond.i = or i1 %.not4555.i, %i.fp
  br i1 %or.cond.i, label %RecomputeDistancePrefixes.exit, label %.lr.ph.i217.preheader

bb.t:                                             ; preds = %ComputeDistanceCost.exit216.thread
  br i1 %.not4555.i, label %RecomputeDistancePrefixes.exit, label %.lr.ph.i217.preheader

.lr.ph.i217.preheader:                            ; preds = %bb.t, %bb.s
  %invariant.op436 = sub i32 -16, %.sroa.12242.0.copyload
  br label %.lr.ph.i217

.lr.ph.i217:                                      ; preds = %.lr.ph.i217.preheader, %bb.z
  %.01.i = phi i64 [ %i.ia, %bb.z ], [ 0, %.lr.ph.i217.preheader ] ; 2 uses
  %i.fq = getelementptr inbounds nuw [16 x i8], ptr %7, i64 %.01.i ; 5 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fq, i64 4
  %i.fs = load i32, ptr %i.fr, align 4, !tbaa !36
  %i.ft = and i32 %i.fs, 33554431
  %.not.i219 = icmp eq i32 %i.ft, 0
  br i1 %.not.i219, label %bb.z, label %bb.u

bb.u:                                             ; preds = %.lr.ph.i217
  %i.fu = getelementptr inbounds nuw i8, ptr %i.fq, i64 12
  %i.fv = load i16, ptr %i.fu, align 4, !tbaa !39
  %i.fw = icmp ugt i16 %i.fv, 127
  br i1 %i.fw, label %bb.v, label %bb.z

bb.v:                                             ; preds = %bb.u
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fq, i64 14 ; 2 uses
  %i.fy = load i16, ptr %i.fx, align 2, !tbaa !40
  %i.fz = zext i16 %i.fy to i32                   ; 2 uses
  %i.ga = and i32 %i.fz, 1023                     ; 3 uses
  %i.gb = icmp ult i32 %i.ga, %i.g
  br i1 %i.gb, label %CommandRestoreDistanceCode.exit.i, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.gc = lshr i32 %i.fz, 10
  %i.gd = getelementptr inbounds nuw i8, ptr %i.fq, i64 8
  %i.ge = load i32, ptr %i.gd, align 4, !tbaa !41
  %.reass.reass.i.reass.reass.reass = add i32 %i.ga, %invariant.op436 ; 2 uses
  %i.gf = lshr i32 %.reass.reass.i.reass.reass.reass, %.sroa.0234.0.copyload
  %i.gg = and i32 %.reass.reass.i.reass.reass.reass, %i.h
  %i.gh = and i32 %i.gf, 1
  %i.gi = or disjoint i32 %i.gh, 2
  %i.gj = shl i32 %i.gi, %i.gc
  %i.gk = add i32 %i.gj, -4
  %i.gl = add i32 %i.gk, %i.ge
  %i.gm = shl i32 %i.gl, %.sroa.0234.0.copyload
  %i.gn = add nuw i32 %i.gg, %i.g
  %i.go = add i32 %i.gn, %i.gm
  br label %CommandRestoreDistanceCode.exit.i

CommandRestoreDistanceCode.exit.i:                ; preds = %bb.w, %bb.v
  %.0.i.i = phi i32 [ %i.go, %bb.w ], [ %i.ga, %bb.v ] ; 2 uses
  %i.gp = zext i32 %.0.i.i to i64                 ; 2 uses
  %i.gq = load i32, ptr %.sroa.12242.0..sroa_idx, align 4, !tbaa !11
  %i.gr = zext i32 %i.gq to i64                   ; 2 uses
  %i.gs = getelementptr inbounds nuw i8, ptr %i.fq, i64 8
  %i.gt = add nuw nsw i64 %i.gr, 16               ; 2 uses
  %i.gu = icmp samesign ugt i64 %i.gt, %i.gp
  br i1 %i.gu, label %bb.x, label %bb.y

bb.x:                                             ; preds = %CommandRestoreDistanceCode.exit.i
  %i.gv = trunc i32 %.0.i.i to i16
  br label %PrefixEncodeCopyDistance.exit.i221

bb.y:                                             ; preds = %CommandRestoreDistanceCode.exit.i
  %i.gw = load i32, ptr %i.a, align 8, !tbaa !8   ; 2 uses
  %i.gx = zext i32 %i.gw to i64                   ; 4 uses
  %i.gy = shl nuw i64 4, %i.gx
  %i.gz = add nsw i64 %i.gp, -16
  %i.ha = sub nsw i64 %i.gz, %i.gr
  %i.hb = add i64 %i.ha, %i.gy                    ; 4 uses
  %i.hc = trunc i64 %i.hb to i32
  %i.hd = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.hc, i1 true)
  %i.he = sub nsw i32 30, %i.hd
  %i.hf = zext i32 %i.he to i64                   ; 3 uses
  %notmask.i16.i = shl nsw i32 -1, %i.gw
  %i.hg = xor i32 %notmask.i16.i, -1
  %i.hh = zext nneg i32 %i.hg to i64
  %i.hi = and i64 %i.hb, %i.hh
  %i.hj = lshr i64 %i.hb, %i.hf                   ; 2 uses
  %i.hk = and i64 %i.hj, 1
  %i.hl = or disjoint i64 %i.hk, 2
  %i.hm = shl i64 %i.hl, %i.hf
  %i.hn = sub nsw i64 %i.hf, %i.gx                ; 2 uses
  %i.ho = shl nsw i64 %i.hn, 10
  %i.hp = shl nsw i64 %i.hn, 1
  %i.hq = or i64 %i.hj, 65534
  %i.hr = add i64 %i.hp, %i.hq
  %i.hs = shl i64 %i.hr, %i.gx
  %i.ht = add nuw nsw i64 %i.hi, %i.gt
  %i.hu = add i64 %i.ht, %i.hs
  %i.hv = or i64 %i.hu, %i.ho
  %i.hw = trunc i64 %i.hv to i16
  %i.hx = sub i64 %i.hb, %i.hm
  %i.hy = lshr i64 %i.hx, %i.gx
  %i.hz = trunc i64 %i.hy to i32
  br label %PrefixEncodeCopyDistance.exit.i221

PrefixEncodeCopyDistance.exit.i221:               ; preds = %bb.y, %bb.x
  %.sink.i = phi i16 [ %i.gv, %bb.x ], [ %i.hw, %bb.y ]
  %storemerge.i.i = phi i32 [ 0, %bb.x ], [ %i.hz, %bb.y ]
  store i16 %.sink.i, ptr %i.fx, align 2, !tbaa !48
  store i32 %storemerge.i.i, ptr %i.gs, align 4, !tbaa !15
  br label %bb.z

bb.z:                                             ; preds = %PrefixEncodeCopyDistance.exit.i221, %bb.u, %.lr.ph.i217
  %i.ia = add nuw i64 %.01.i, 1                   ; 2 uses
  %exitcond.not.i220 = icmp eq i64 %i.ia, %8
  br i1 %exitcond.not.i220, label %RecomputeDistancePrefixes.exit, label %.lr.ph.i217, !llvm.loop !49

RecomputeDistancePrefixes.exit:                   ; preds = %bb.z, %bb.s, %bb.t
  %i.ib = getelementptr inbounds nuw i8, ptr %10, i64 48 ; 3 uses
  %i.ic = getelementptr inbounds nuw i8, ptr %10, i64 96 ; 4 uses
  tail call void @BrotliSplitBlock(ptr noundef %0, ptr noundef %7, i64 noundef %8, ptr noundef %1, i64 noundef %2, i64 noundef %3, ptr noundef %4, ptr noundef %10, ptr noundef nonnull %i.ib, ptr noundef nonnull %i.ic) #8
  %i.id = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 2 uses
  %i.ie = load i32, ptr %i.id, align 8, !tbaa !50
  %.not165 = icmp eq i32 %i.ie, 0
  %.pre328.a = load i64, ptr %10, align 8, !tbaa !51 ; 3 uses
  br i1 %.not165, label %bb.aa, label %.loopexit275

bb.aa:                                            ; preds = %RecomputeDistancePrefixes.exit
  %.not166 = icmp eq i64 %.pre328.a, 0
  br i1 %.not166, label %ClearHistogramsLiteral.exit, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.if = shl i64 %.pre328.a, 2
  %i.ig = tail call ptr @BrotliAllocate(ptr noundef %0, i64 noundef %i.if) #8 ; 4 uses
  %.pre = load i64, ptr %10, align 8, !tbaa !51   ; 6 uses
  %.not312 = icmp eq i64 %.pre, 0
  br i1 %.not312, label %ClearHistogramsLiteral.exit, label %.lr.ph299.preheader

.lr.ph299.preheader:                              ; preds = %bb.ab
  %min.iters.check = icmp ult i64 %.pre, 8
  br i1 %min.iters.check, label %.lr.ph299.preheader404, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph299.preheader
  %n.vec = and i64 %.pre, -8                      ; 3 uses
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %9, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ih = getelementptr inbounds nuw [4 x i8], ptr %i.ig, i64 %index ; 2 uses
  %i.ii = getelementptr inbounds nuw i8, ptr %i.ih, i64 16
  store <4 x i32> %broadcast.splat, ptr %i.ih, align 4, !tbaa !15
  store <4 x i32> %broadcast.splat, ptr %i.ii, align 4, !tbaa !15
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ij = icmp eq i64 %index.next, %n.vec
  br i1 %i.ij, label %middle.block, label %vector.body, !llvm.loop !58

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %.pre, %n.vec
  br i1 %cmp.n, label %.loopexit275.loopexit, label %.lr.ph299.preheader404

.lr.ph299.preheader404:                           ; preds = %.lr.ph299.preheader, %middle.block
  %.0153298.ph = phi i64 [ 0, %.lr.ph299.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph299

.lr.ph299:                                        ; preds = %.lr.ph299.preheader404, %.lr.ph299
  %.0153298 = phi i64 [ %i.il, %.lr.ph299 ], [ %.0153298.ph, %.lr.ph299.preheader404 ] ; 2 uses
  %i.ik = getelementptr inbounds nuw [4 x i8], ptr %i.ig, i64 %.0153298
  store i32 %9, ptr %i.ik, align 4, !tbaa !15
  %i.il = add nuw i64 %.0153298, 1                ; 2 uses
  %exitcond323.not = icmp eq i64 %i.il, %.pre
  br i1 %exitcond323.not, label %.loopexit275.loopexit, label %.lr.ph299, !llvm.loop !61

.loopexit275.loopexit:                            ; preds = %.lr.ph299, %middle.block
  %i.im = shl i64 %.pre, 6
  br label %.loopexit275

.loopexit275:                                     ; preds = %.loopexit275.loopexit, %RecomputeDistancePrefixes.exit
  %i.in = phi i64 [ %.pre328.a, %RecomputeDistancePrefixes.exit ], [ %i.im, %.loopexit275.loopexit ] ; 7 uses
  %.0155 = phi ptr [ null, %RecomputeDistancePrefixes.exit ], [ %i.ig, %.loopexit275.loopexit ] ; 3 uses
  %.not167 = icmp eq i64 %i.in, 0
end_hunk_0
begin_hunk_1_@BrotliBuildMetaBlockGreedy:bb.a
  %i.ei = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 %i.eh, ptr %i.ei, align 8, !tbaa !114
  %i.ej = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i64 512, ptr %i.ej, align 8, !tbaa !115
  %i.ek = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store double 4.000000e+02, ptr %i.ek, align 8, !tbaa !116
  %i.el = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  store i64 0, ptr %i.el, align 8, !tbaa !117
  %i.em = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  store ptr %11, ptr %i.em, align 8, !tbaa !118
  %i.en = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  store ptr %i.ee, ptr %i.en, align 8, !tbaa !119
  %i.eo = getelementptr inbounds nuw i8, ptr %i.b, i64 72 ; 2 uses
  store i64 512, ptr %i.eo, align 8, !tbaa !120
  %i.ep = getelementptr inbounds nuw i8, ptr %i.b, i64 80 ; 3 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %i.b, i64 320
  store i64 0, ptr %i.eq, align 8, !tbaa !121
  %i.er = add nuw nsw i64 %i.eh, 1
  %i.es = tail call i64 @llvm.umin.i64(i64 range(i64 1, 36028797018963969) %i.ef, i64 %i.er)
  %i.et = getelementptr inbounds nuw i8, ptr %11, i64 32 ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ep, i8 0, i64 16, i1 false)
  %i.eu = load i64, ptr %i.et, align 8, !tbaa !122 ; 3 uses
  %.not.i42 = icmp ugt i64 %i.eu, %.081.i.lcssa
  br i1 %.not.i42, label %bb.l, label %bb.g

bb.g:                                             ; preds = %._crit_edge
  %i.ev = icmp eq i64 %i.eu, 0
  %..i = select i1 %i.ev, i64 %i.ef, i64 %i.eu
  br label %bb.h

bb.h:                                             ; preds = %bb.h, %bb.g
  %.0.i43 = phi i64 [ %..i, %bb.g ], [ %i.ew, %bb.h ] ; 4 uses
  %.not89.i = icmp ugt i64 %.0.i43, %.081.i.lcssa
  %i.ew = shl nuw nsw i64 %.0.i43, 1
  br i1 %.not89.i, label %bb.i, label %bb.h, !llvm.loop !123

bb.i:                                             ; preds = %bb.h
  %i.ex = tail call ptr @BrotliAllocate(ptr noundef %0, i64 noundef %.0.i43) #8 ; 2 uses
  %i.ey = load i64, ptr %i.et, align 8, !tbaa !122 ; 2 uses
  %.not90.i = icmp eq i64 %i.ey, 0
  br i1 %.not90.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ez = getelementptr inbounds nuw i8, ptr %11, i64 16
  %i.fa = load ptr, ptr %i.ez, align 8, !tbaa !124
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ex, ptr align 1 %i.fa, i64 %i.ey, i1 false)
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.fb = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  %i.fc = load ptr, ptr %i.fb, align 8, !tbaa !124
  tail call void @BrotliFree(ptr noundef %0, ptr noundef %i.fc) #8
  store ptr %i.ex, ptr %i.fb, align 8, !tbaa !124
  store i64 %.0.i43, ptr %i.et, align 8, !tbaa !122
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %._crit_edge
  %i.fd = getelementptr inbounds nuw i8, ptr %11, i64 40 ; 3 uses
  %i.fe = load i64, ptr %i.fd, align 8, !tbaa !125 ; 3 uses
  %.not91.i = icmp ugt i64 %i.fe, %.081.i.lcssa
  br i1 %.not91.i, label %bb.r, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ff = icmp eq i64 %i.fe, 0
  %.95.i = select i1 %i.ff, i64 %i.ef, i64 %i.fe
  br label %bb.n

bb.n:                                             ; preds = %bb.n, %bb.m
  %.082.i44 = phi i64 [ %.95.i, %bb.m ], [ %i.fg, %bb.n ] ; 4 uses
  %.not92.i = icmp ugt i64 %.082.i44, %.081.i.lcssa
  %i.fg = shl nuw nsw i64 %.082.i44, 1
  br i1 %.not92.i, label %bb.o, label %bb.n, !llvm.loop !126

bb.o:                                             ; preds = %bb.n
  %i.fh = shl nuw nsw i64 %.082.i44, 2
  %i.fi = tail call ptr @BrotliAllocate(ptr noundef %0, i64 noundef %i.fh) #8 ; 2 uses
  %i.fj = load i64, ptr %i.fd, align 8, !tbaa !125 ; 2 uses
  %.not93.i = icmp eq i64 %i.fj, 0
  br i1 %.not93.i, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.fk = getelementptr inbounds nuw i8, ptr %11, i64 24
  %i.fl = load ptr, ptr %i.fk, align 8, !tbaa !127
  %i.fm = shl i64 %i.fj, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.fi, ptr align 4 %i.fl, i64 %i.fm, i1 false)
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.fn = getelementptr inbounds nuw i8, ptr %11, i64 24 ; 2 uses
  %i.fo = load ptr, ptr %i.fn, align 8, !tbaa !127
  tail call void @BrotliFree(ptr noundef %0, ptr noundef %i.fo) #8
  store ptr %i.fi, ptr %i.fn, align 8, !tbaa !127
  store i64 %.082.i44, ptr %i.fd, align 8, !tbaa !125
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.l
  %i.fp = getelementptr inbounds nuw i8, ptr %11, i64 8
  store i64 %i.ef, ptr %i.fp, align 8, !tbaa !128
  %i.fq = mul i64 %i.es, %7                       ; 3 uses
  store i64 %i.fq, ptr %i.ee, align 8, !tbaa !45
  %.not94.i = icmp eq i64 %i.fq, 0
  br i1 %.not94.i, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.fr = mul i64 %i.fq, 1040
  %i.fs = tail call ptr @BrotliAllocate(ptr noundef %0, i64 noundef %i.fr) #8
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %i.ft = phi ptr [ %i.fs, %bb.s ], [ null, %bb.r ] ; 7 uses
  store ptr %i.ft, ptr %i.ed, align 8, !tbaa !129
  %i.fu = getelementptr inbounds nuw i8, ptr %i.b, i64 56 ; 2 uses
  store ptr %i.ft, ptr %i.fu, align 8, !tbaa !130
  %xtraiter135 = and i64 %7, 3                    ; 3 uses
  %i.fv = icmp ult i64 %7, 4
  br i1 %i.fv, label %.epil.preheader, label %.new

.new:                                             ; preds = %bb.t
  %unroll_iter139 = and i64 %7, -4
  br label %bb.u

bb.u:                                             ; preds = %bb.u, %.new
  %.0.i96.i = phi i64 [ 0, %.new ], [ %i.gh, %bb.u ] ; 5 uses
  %niter140 = phi i64 [ 0, %.new ], [ %niter140.next.3, %bb.u ]
  %i.fw = getelementptr inbounds nuw [1040 x i8], ptr %i.ft, i64 %.0.i96.i ; 2 uses
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fw, i64 1032
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1032) %i.fw, i8 0, i64 1032, i1 false)
  store double +inf, ptr %i.fx, align 8, !tbaa !62
  %i.fy = getelementptr inbounds nuw [1040 x i8], ptr %i.ft, i64 %.0.i96.i ; 2 uses
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fy, i64 1040
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fy, i64 2072
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1032) %i.fz, i8 0, i64 1032, i1 false)
  store double +inf, ptr %i.ga, align 8, !tbaa !62
  %i.gb = getelementptr inbounds nuw [1040 x i8], ptr %i.ft, i64 %.0.i96.i ; 2 uses
  %i.gc = getelementptr inbounds nuw i8, ptr %i.gb, i64 2080
  %i.gd = getelementptr inbounds nuw i8, ptr %i.gb, i64 3112
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1032) %i.gc, i8 0, i64 1032, i1 false)
  store double +inf, ptr %i.gd, align 8, !tbaa !62
  %i.ge = getelementptr inbounds nuw [1040 x i8], ptr %i.ft, i64 %.0.i96.i ; 2 uses
  %i.gf = getelementptr inbounds nuw i8, ptr %i.ge, i64 3120
  %i.gg = getelementptr inbounds nuw i8, ptr %i.ge, i64 4152
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1032) %i.gf, i8 0, i64 1032, i1 false)
  store double +inf, ptr %i.gg, align 8, !tbaa !62
  %i.gh = add nuw i64 %.0.i96.i, 4                ; 2 uses
  %niter140.next.3 = add i64 %niter140, 4         ; 2 uses
  %niter140.ncmp.3 = icmp eq i64 %niter140.next.3, %unroll_iter139
  br i1 %niter140.ncmp.3, label %.unr-lcssa, label %bb.u, !llvm.loop !64

.unr-lcssa:                                       ; preds = %bb.u
  %lcmp.mod137.not = icmp eq i64 %xtraiter135, 0
  br i1 %lcmp.mod137.not, label %.epilog-lcssa, label %.epil.preheader

.epil.preheader:                                  ; preds = %.unr-lcssa, %bb.t
  %.0.i96.i.epil.init = phi i64 [ 0, %bb.t ], [ %i.gh, %.unr-lcssa ]
  %lcmp.mod138 = icmp ne i64 %xtraiter135, 0
  tail call void @llvm.assume(i1 %lcmp.mod138)
  br label %bb.v

bb.v:                                             ; preds = %bb.v, %.epil.preheader
  %.0.i96.i.epil = phi i64 [ %.0.i96.i.epil.init, %.epil.preheader ], [ %i.gk, %bb.v ] ; 2 uses
  %epil.iter136 = phi i64 [ 0, %.epil.preheader ], [ %epil.iter136.next, %bb.v ]
  %i.gi = getelementptr inbounds nuw [1040 x i8], ptr %i.ft, i64 %.0.i96.i.epil ; 2 uses
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gi, i64 1032
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1032) %i.gi, i8 0, i64 1032, i1 false)
  store double +inf, ptr %i.gj, align 8, !tbaa !62
  %i.gk = add nuw i64 %.0.i96.i.epil, 1
  %epil.iter136.next = add i64 %epil.iter136, 1   ; 2 uses
  %epil.iter136.cmp.not = icmp eq i64 %epil.iter136.next, %xtraiter135
  br i1 %epil.iter136.cmp.not, label %.epilog-lcssa, label %bb.v, !llvm.loop !131

.epilog-lcssa:                                    ; preds = %bb.v, %.unr-lcssa
  %i.gl = getelementptr inbounds nuw i8, ptr %i.b, i64 96
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.gl, i8 0, i64 16, i1 false)
  %i.gm = getelementptr inbounds nuw i8, ptr %i.b, i64 2200 ; 3 uses
  %i.gn = getelementptr inbounds nuw i8, ptr %11, i64 48
  %i.go = getelementptr inbounds nuw i8, ptr %11, i64 192
  %i.gp = getelementptr inbounds nuw i8, ptr %11, i64 200
  tail call fastcc void @InitBlockSplitterCommand(ptr noundef %0, ptr noundef nonnull %i.gm, i64 noundef %10, ptr noundef nonnull %i.gn, ptr noundef nonnull %i.go, ptr noundef nonnull %i.gp)
  %i.gq = getelementptr inbounds nuw i8, ptr %i.b, i64 7984 ; 3 uses
  %i.gr = getelementptr inbounds nuw i8, ptr %11, i64 96
  %i.gs = getelementptr inbounds nuw i8, ptr %11, i64 208
  %i.gt = getelementptr inbounds nuw i8, ptr %11, i64 216
  tail call fastcc void @InitBlockSplitterDistance(ptr noundef %0, ptr noundef nonnull %i.gq, i64 noundef %10, ptr noundef nonnull %i.gr, ptr noundef nonnull %i.gs, ptr noundef nonnull %i.gt)
  br i1 %.not96, label %._crit_edge79, label %.lr.ph78

.lr.ph78:                                         ; preds = %.epilog-lcssa
  %i.gu = getelementptr inbounds nuw i8, ptr %i.b, i64 2240
  %i.gv = getelementptr inbounds nuw i8, ptr %i.b, i64 7936
  %i.gw = getelementptr inbounds nuw i8, ptr %i.b, i64 7928 ; 2 uses
  %i.gx = getelementptr inbounds nuw i8, ptr %i.b, i64 7920
  %i.gy = getelementptr inbounds nuw i8, ptr %6, i64 256
  %i.gz = getelementptr inbounds nuw i8, ptr %i.b, i64 88
  %i.ha = getelementptr inbounds nuw i8, ptr %i.b, i64 8024
  %i.hb = getelementptr inbounds nuw i8, ptr %i.b, i64 12440
  %i.hc = getelementptr inbounds nuw i8, ptr %i.b, i64 12432 ; 2 uses
  %i.hd = getelementptr inbounds nuw i8, ptr %i.b, i64 12424
  br label %bb.w

bb.w:                                             ; preds = %.lr.ph78, %BlockSplitterAddSymbolDistance.exit47
  %.0.i76 = phi i64 [ %2, %.lr.ph78 ], [ %i.jb, %BlockSplitterAddSymbolDistance.exit47 ] ; 2 uses
  %.178.i75 = phi i64 [ 0, %.lr.ph78 ], [ %i.ka, %BlockSplitterAddSymbolDistance.exit47 ] ; 2 uses
  %.080.i74 = phi i8 [ %4, %.lr.ph78 ], [ %.2.i, %BlockSplitterAddSymbolDistance.exit47 ] ; 2 uses
  %.082.i73 = phi i8 [ %5, %.lr.ph78 ], [ %.284.i, %BlockSplitterAddSymbolDistance.exit47 ] ; 2 uses
  %i.he = getelementptr inbounds nuw [16 x i8], ptr %9, i64 %.178.i75 ; 4 uses
  %.sroa.0.0.copyload = load i32, ptr %i.he, align 4, !tbaa !15 ; 2 uses
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.he, i64 4
  %.sroa.4.0.copyload = load i32, ptr %.sroa.4.0..sroa_idx, align 4, !tbaa !15
  %.sroa.651.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.he, i64 12
  %.sroa.651.0.copyload = load i16, ptr %.sroa.651.0..sroa_idx, align 4, !tbaa !48 ; 2 uses
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.he, i64 14
  %.sroa.8.0.copyload = load i16, ptr %.sroa.8.0..sroa_idx, align 2, !tbaa !48
  %i.hf = zext i16 %.sroa.651.0.copyload to i64
  %i.hg = load ptr, ptr %i.gu, align 8, !tbaa !88
  %i.hh = load i64, ptr %i.gv, align 8, !tbaa !92
  %i.hi = getelementptr inbounds nuw [2832 x i8], ptr %i.hg, i64 %i.hh ; 2 uses
  %i.hj = getelementptr inbounds nuw [4 x i8], ptr %i.hi, i64 %i.hf ; 2 uses
  %i.hk = load i32, ptr %i.hj, align 4, !tbaa !15
  %i.hl = add i32 %i.hk, 1
  store i32 %i.hl, ptr %i.hj, align 4, !tbaa !15
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hi, i64 2816 ; 2 uses
  %i.hn = load i64, ptr %i.hm, align 8, !tbaa !93
  %i.ho = add i64 %i.hn, 1
  store i64 %i.ho, ptr %i.hm, align 8, !tbaa !93
  %i.hp = load i64, ptr %i.gw, align 8, !tbaa !94
  %i.hq = add i64 %i.hp, 1                        ; 2 uses
  store i64 %i.hq, ptr %i.gw, align 8, !tbaa !94
  %i.hr = load i64, ptr %i.gx, align 8, !tbaa !95
  %i.hs = icmp eq i64 %i.hq, %i.hr
  br i1 %i.hs, label %bb.x, label %BlockSplitterAddSymbolCommand.exit45

bb.x:                                             ; preds = %bb.w
  tail call fastcc void @BlockSplitterFinishBlockCommand(ptr noundef nonnull %i.gm, i32 noundef 0)
  br label %BlockSplitterAddSymbolCommand.exit45

BlockSplitterAddSymbolCommand.exit45:             ; preds = %bb.w, %bb.x
  %.not.i63 = icmp eq i32 %.sroa.0.0.copyload, 0
  br i1 %.not.i63, label %._crit_edge69, label %.lr.ph68.preheader

.lr.ph68.preheader:                               ; preds = %BlockSplitterAddSymbolCommand.exit45
  %i.ht = zext i32 %.sroa.0.0.copyload to i64
  br label %.lr.ph68

.lr.ph68:                                         ; preds = %.lr.ph68.preheader, %ContextBlockSplitterAddSymbol.exit
  %.1.i67 = phi i64 [ %i.ix, %ContextBlockSplitterAddSymbol.exit ], [ %.0.i76, %.lr.ph68.preheader ] ; 2 uses
  %.076.i66 = phi i64 [ %i.iy, %ContextBlockSplitterAddSymbol.exit ], [ %i.ht, %.lr.ph68.preheader ]
  %.181.i65 = phi i8 [ %i.hw, %ContextBlockSplitterAddSymbol.exit ], [ %.080.i74, %.lr.ph68.preheader ] ; 3 uses
  %.183.i64 = phi i8 [ %.181.i65, %ContextBlockSplitterAddSymbol.exit ], [ %.082.i73, %.lr.ph68.preheader ]
  %i.hu = and i64 %.1.i67, %3
  %i.hv = getelementptr inbounds nuw i8, ptr %1, i64 %i.hu
  %i.hw = load i8, ptr %i.hv, align 1, !tbaa !96  ; 3 uses
  %i.hx = zext i8 %.181.i65 to i64
  %i.hy = getelementptr inbounds nuw i8, ptr %6, i64 %i.hx
  %i.hz = load i8, ptr %i.hy, align 1, !tbaa !96
  %i.ia = zext i8 %.183.i64 to i64
  %i.ib = getelementptr inbounds nuw i8, ptr %i.gy, i64 %i.ia
  %i.ic = load i8, ptr %i.ib, align 1, !tbaa !96
  %i.id = or i8 %i.ic, %i.hz
  %i.ie = zext i8 %i.id to i64
  %i.if = zext i8 %i.hw to i64
  %i.ig = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %i.ie
  %i.ih = load i32, ptr %i.ig, align 4, !tbaa !15
  %i.ii = zext i32 %i.ih to i64
  %i.ij = load ptr, ptr %i.fu, align 8, !tbaa !130
  %i.ik = load i64, ptr %i.gz, align 8, !tbaa !132
  %i.il = getelementptr [1040 x i8], ptr %i.ij, i64 %i.ik
  %i.im = getelementptr [1040 x i8], ptr %i.il, i64 %i.ii ; 2 uses
  %i.in = getelementptr inbounds nuw [4 x i8], ptr %i.im, i64 %i.if ; 2 uses
  %i.io = load i32, ptr %i.in, align 4, !tbaa !15
  %i.ip = add i32 %i.io, 1
  store i32 %i.ip, ptr %i.in, align 4, !tbaa !15
  %i.iq = getelementptr inbounds nuw i8, ptr %i.im, i64 1024 ; 2 uses
  %i.ir = load i64, ptr %i.iq, align 8, !tbaa !100
  %i.is = add i64 %i.ir, 1
  store i64 %i.is, ptr %i.iq, align 8, !tbaa !100
  %i.it = load i64, ptr %i.ep, align 8, !tbaa !133
  %i.iu = add i64 %i.it, 1                        ; 2 uses
  store i64 %i.iu, ptr %i.ep, align 8, !tbaa !133
  %i.iv = load i64, ptr %i.eo, align 8, !tbaa !120
  %i.iw = icmp eq i64 %i.iu, %i.iv
  br i1 %i.iw, label %bb.y, label %ContextBlockSplitterAddSymbol.exit

bb.y:                                             ; preds = %.lr.ph68
  tail call fastcc void @ContextBlockSplitterFinishBlock(ptr noundef nonnull %i.b, ptr noundef %0, i32 noundef 0)
  br label %ContextBlockSplitterAddSymbol.exit

ContextBlockSplitterAddSymbol.exit:               ; preds = %bb.y, %.lr.ph68
  %i.ix = add i64 %.1.i67, 1                      ; 2 uses
  %i.iy = add nsw i64 %.076.i66, -1               ; 2 uses
  %.not.i = icmp eq i64 %i.iy, 0
  br i1 %.not.i, label %._crit_edge69, label %.lr.ph68, !llvm.loop !103

._crit_edge69:                                    ; preds = %ContextBlockSplitterAddSymbol.exit, %BlockSplitterAddSymbolCommand.exit45
  %.183.i.lcssa = phi i8 [ %.082.i73, %BlockSplitterAddSymbolCommand.exit45 ], [ %.181.i65, %ContextBlockSplitterAddSymbol.exit ]
  %.177.i.lcssa = phi i8 [ %.080.i74, %BlockSplitterAddSymbolCommand.exit45 ], [ %i.hw, %ContextBlockSplitterAddSymbol.exit ]
  %.1.i.lcssa = phi i64 [ %.0.i76, %BlockSplitterAddSymbolCommand.exit45 ], [ %i.ix, %ContextBlockSplitterAddSymbol.exit ]
  %i.iz = and i32 %.sroa.4.0.copyload, 33554431   ; 2 uses
  %i.ja = zext nneg i32 %i.iz to i64
  %i.jb = add i64 %.1.i.lcssa, %i.ja              ; 3 uses
  %.not88.i = icmp eq i32 %i.iz, 0
  br i1 %.not88.i, label %BlockSplitterAddSymbolDistance.exit47, label %bb.z

bb.z:                                             ; preds = %._crit_edge69
  %i.jc = add i64 %i.jb, -2
  %i.jd = and i64 %i.jc, %3
  %i.je = getelementptr inbounds nuw i8, ptr %1, i64 %i.jd
  %i.jf = load i8, ptr %i.je, align 1, !tbaa !96  ; 3 uses
  %i.jg = add i64 %i.jb, -1
  %i.jh = and i64 %i.jg, %3
  %i.ji = getelementptr inbounds nuw i8, ptr %1, i64 %i.jh
  %i.jj = load i8, ptr %i.ji, align 1, !tbaa !96  ; 3 uses
  %i.jk = icmp ugt i16 %.sroa.651.0.copyload, 127
  br i1 %i.jk, label %bb.aa, label %BlockSplitterAddSymbolDistance.exit47

bb.aa:                                            ; preds = %bb.z
  %i.jl = and i16 %.sroa.8.0.copyload, 1023
  %i.jm = zext nneg i16 %i.jl to i64
  %i.jn = load ptr, ptr %i.ha, align 8, !tbaa !104
  %i.jo = load i64, ptr %i.hb, align 8, !tbaa !106
  %i.jp = getelementptr inbounds nuw [2192 x i8], ptr %i.jn, i64 %i.jo ; 2 uses
  %i.jq = getelementptr inbounds nuw [4 x i8], ptr %i.jp, i64 %i.jm ; 2 uses
  %i.jr = load i32, ptr %i.jq, align 4, !tbaa !15
  %i.js = add i32 %i.jr, 1
  store i32 %i.js, ptr %i.jq, align 4, !tbaa !15
  %i.jt = getelementptr inbounds nuw i8, ptr %i.jp, i64 2176 ; 2 uses
  %i.ju = load i64, ptr %i.jt, align 8, !tbaa !42
  %i.jv = add i64 %i.ju, 1
  store i64 %i.jv, ptr %i.jt, align 8, !tbaa !42
  %i.jw = load i64, ptr %i.hc, align 8, !tbaa !107
  %i.jx = add i64 %i.jw, 1                        ; 2 uses
  store i64 %i.jx, ptr %i.hc, align 8, !tbaa !107
  %i.jy = load i64, ptr %i.hd, align 8, !tbaa !108
  %i.jz = icmp eq i64 %i.jx, %i.jy
  br i1 %i.jz, label %bb.ab, label %BlockSplitterAddSymbolDistance.exit47

bb.ab:                                            ; preds = %bb.aa
  tail call fastcc void @BlockSplitterFinishBlockDistance(ptr noundef nonnull %i.gq, i32 noundef 0)
  br label %BlockSplitterAddSymbolDistance.exit47

BlockSplitterAddSymbolDistance.exit47:            ; preds = %bb.ab, %bb.aa, %bb.z, %._crit_edge69
  %.284.i = phi i8 [ %.183.i.lcssa, %._crit_edge69 ], [ %i.jf, %bb.z ], [ %i.jf, %bb.aa ], [ %i.jf, %bb.ab ]
  %.2.i = phi i8 [ %.177.i.lcssa, %._crit_edge69 ], [ %i.jj, %bb.z ], [ %i.jj, %bb.aa ], [ %i.jj, %bb.ab ]
  %i.ka = add nuw i64 %.178.i75, 1                ; 2 uses
  %exitcond102.not = icmp eq i64 %i.ka, %10
  br i1 %exitcond102.not, label %._crit_edge79, label %bb.w, !llvm.loop !109

._crit_edge79:                                    ; preds = %BlockSplitterAddSymbolDistance.exit47, %.epilog-lcssa
  tail call fastcc void @ContextBlockSplitterFinishBlock(ptr noundef nonnull %i.b, ptr noundef %0, i32 noundef 1)
  tail call fastcc void @BlockSplitterFinishBlockCommand(ptr noundef nonnull %i.gm, i32 noundef 1)
  tail call fastcc void @BlockSplitterFinishBlockDistance(ptr noundef nonnull %i.gq, i32 noundef 1)
  %i.kb = load i64, ptr %11, align 8, !tbaa !51   ; 3 uses
  %i.kc = shl i64 %i.kb, 6                        ; 2 uses
  %i.kd = getelementptr inbounds nuw i8, ptr %11, i64 152
  store i64 %i.kc, ptr %i.kd, align 8, !tbaa !76
  %.not.i48 = icmp eq i64 %i.kc, 0
  br i1 %.not.i48, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %._crit_edge79
  %i.ke = shl i64 %i.kb, 8
  %i.kf = tail call ptr @BrotliAllocate(ptr noundef %0, i64 noundef %i.ke) #8
  %.pre.i = load i64, ptr %11, align 8, !tbaa !51
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %._crit_edge79
  %i.kg = phi i64 [ %.pre.i, %bb.ac ], [ %i.kb, %._crit_edge79 ] ; 2 uses
  %i.kh = phi ptr [ %i.kf, %bb.ac ], [ null, %._crit_edge79 ] ; 3 uses
  %i.ki = getelementptr inbounds nuw i8, ptr %11, i64 144
  store ptr %i.kh, ptr %i.ki, align 8, !tbaa !77
  %.not22.i = icmp eq i64 %i.kg, 0
  br i1 %.not22.i, label %BrotliBuildMetaBlockGreedyInternal.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.ad
  %i.kj = ptrtoaddr ptr %i.kh to i64
  %i.kk = sub i64 %i.kj, %i.a
  %invariant.op = add i64 %i.kk, -1
  %i.kl = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.km = getelementptr inbounds nuw i8, ptr %8, i64 32
  %i.kn = getelementptr inbounds nuw i8, ptr %8, i64 48
  %i.ko = getelementptr inbounds nuw i8, ptr %8, i64 64
  %i.kp = getelementptr inbounds nuw i8, ptr %8, i64 80
  %i.kq = getelementptr inbounds nuw i8, ptr %8, i64 96
  %i.kr = getelementptr inbounds nuw i8, ptr %8, i64 112
  %i.ks = getelementptr inbounds nuw i8, ptr %8, i64 128
  %i.kt = getelementptr inbounds nuw i8, ptr %8, i64 144
  %i.ku = getelementptr inbounds nuw i8, ptr %8, i64 160
  %i.kv = getelementptr inbounds nuw i8, ptr %8, i64 176
  %i.kw = getelementptr inbounds nuw i8, ptr %8, i64 192
  %i.kx = getelementptr inbounds nuw i8, ptr %8, i64 208
  %i.ky = getelementptr inbounds nuw i8, ptr %8, i64 224
  %i.kz = getelementptr inbounds nuw i8, ptr %8, i64 240
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %middle.block
  %.01821.i = phi i64 [ %i.nd, %middle.block ], [ 0, %.lr.ph.i.preheader ] ; 4 uses
  %i.la = mul i64 %.01821.i, %7
  %i.lb = trunc i64 %i.la to i32                  ; 5 uses
  %.idx.i = shl i64 %.01821.i, 8
  %i.lc = getelementptr inbounds nuw i8, ptr %i.kh, i64 %.idx.i ; 20 uses
  %i.ld = shl i64 %.01821.i, 8
  %.reass = add i64 %i.ld, %invariant.op
  %diff.check = icmp ult i64 %.reass, 31
  br i1 %diff.check, label %scalar.ph, label %vector.body

vector.body:                                      ; preds = %.lr.ph.i
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.lb, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 16 uses
  %wide.load = load <4 x i32>, ptr %8, align 4, !tbaa !15
  %wide.load127 = load <4 x i32>, ptr %i.kl, align 4, !tbaa !15
  %i.le = add <4 x i32> %wide.load, %broadcast.splat
  %i.lf = add <4 x i32> %wide.load127, %broadcast.splat
  %i.lg = getelementptr inbounds nuw i8, ptr %i.lc, i64 16
  store <4 x i32> %i.le, ptr %i.lc, align 4, !tbaa !15
  store <4 x i32> %i.lf, ptr %i.lg, align 4, !tbaa !15
  %wide.load.1 = load <4 x i32>, ptr %i.km, align 4, !tbaa !15
  %wide.load127.1 = load <4 x i32>, ptr %i.kn, align 4, !tbaa !15
  %i.lh = add <4 x i32> %wide.load.1, %broadcast.splat
  %i.li = add <4 x i32> %wide.load127.1, %broadcast.splat
  %i.lj = getelementptr inbounds nuw i8, ptr %i.lc, i64 32
  %i.lk = getelementptr inbounds nuw i8, ptr %i.lc, i64 48
  store <4 x i32> %i.lh, ptr %i.lj, align 4, !tbaa !15
  store <4 x i32> %i.li, ptr %i.lk, align 4, !tbaa !15
  %wide.load.2 = load <4 x i32>, ptr %i.ko, align 4, !tbaa !15
  %wide.load127.2 = load <4 x i32>, ptr %i.kp, align 4, !tbaa !15
  %i.ll = add <4 x i32> %wide.load.2, %broadcast.splat
  %i.lm = add <4 x i32> %wide.load127.2, %broadcast.splat
  %i.ln = getelementptr inbounds nuw i8, ptr %i.lc, i64 64
  %i.lo = getelementptr inbounds nuw i8, ptr %i.lc, i64 80
  store <4 x i32> %i.ll, ptr %i.ln, align 4, !tbaa !15
  store <4 x i32> %i.lm, ptr %i.lo, align 4, !tbaa !15
  %wide.load.3 = load <4 x i32>, ptr %i.kq, align 4, !tbaa !15
  %wide.load127.3 = load <4 x i32>, ptr %i.kr, align 4, !tbaa !15
  %i.lp = add <4 x i32> %wide.load.3, %broadcast.splat
  %i.lq = add <4 x i32> %wide.load127.3, %broadcast.splat
  %i.lr = getelementptr inbounds nuw i8, ptr %i.lc, i64 96
  %i.ls = getelementptr inbounds nuw i8, ptr %i.lc, i64 112
  store <4 x i32> %i.lp, ptr %i.lr, align 4, !tbaa !15
  store <4 x i32> %i.lq, ptr %i.ls, align 4, !tbaa !15
  %wide.load.4 = load <4 x i32>, ptr %i.ks, align 4, !tbaa !15
  %wide.load127.4 = load <4 x i32>, ptr %i.kt, align 4, !tbaa !15
  %i.lt = add <4 x i32> %wide.load.4, %broadcast.splat
  %i.lu = add <4 x i32> %wide.load127.4, %broadcast.splat
  %i.lv = getelementptr inbounds nuw i8, ptr %i.lc, i64 128
  %i.lw = getelementptr inbounds nuw i8, ptr %i.lc, i64 144
  store <4 x i32> %i.lt, ptr %i.lv, align 4, !tbaa !15
  store <4 x i32> %i.lu, ptr %i.lw, align 4, !tbaa !15
  %wide.load.5 = load <4 x i32>, ptr %i.ku, align 4, !tbaa !15
  %wide.load127.5 = load <4 x i32>, ptr %i.kv, align 4, !tbaa !15
  %i.lx = add <4 x i32> %wide.load.5, %broadcast.splat
  %i.ly = add <4 x i32> %wide.load127.5, %broadcast.splat
  %i.lz = getelementptr inbounds nuw i8, ptr %i.lc, i64 160
  %i.ma = getelementptr inbounds nuw i8, ptr %i.lc, i64 176
  store <4 x i32> %i.lx, ptr %i.lz, align 4, !tbaa !15
  store <4 x i32> %i.ly, ptr %i.ma, align 4, !tbaa !15
  %wide.load.6 = load <4 x i32>, ptr %i.kw, align 4, !tbaa !15
  %wide.load127.6 = load <4 x i32>, ptr %i.kx, align 4, !tbaa !15
  %i.mb = add <4 x i32> %wide.load.6, %broadcast.splat
  %i.mc = add <4 x i32> %wide.load127.6, %broadcast.splat
  %i.md = getelementptr inbounds nuw i8, ptr %i.lc, i64 192
  %i.me = getelementptr inbounds nuw i8, ptr %i.lc, i64 208
  store <4 x i32> %i.mb, ptr %i.md, align 4, !tbaa !15
  store <4 x i32> %i.mc, ptr %i.me, align 4, !tbaa !15
  %wide.load.7 = load <4 x i32>, ptr %i.ky, align 4, !tbaa !15
  %wide.load127.7 = load <4 x i32>, ptr %i.kz, align 4, !tbaa !15
  %i.mf = add <4 x i32> %wide.load.7, %broadcast.splat
  %i.mg = add <4 x i32> %wide.load127.7, %broadcast.splat
  %i.mh = getelementptr inbounds nuw i8, ptr %i.lc, i64 224
  %i.mi = getelementptr inbounds nuw i8, ptr %i.lc, i64 240
  store <4 x i32> %i.mf, ptr %i.mh, align 4, !tbaa !15
  store <4 x i32> %i.mg, ptr %i.mi, align 4, !tbaa !15
  br label %middle.block

scalar.ph:                                        ; preds = %.lr.ph.i, %scalar.ph
  %.020.i = phi i64 [ %i.nc, %scalar.ph ], [ 0, %.lr.ph.i ] ; 6 uses
  %i.mj = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %.020.i
  %i.mk = load i32, ptr %i.mj, align 4, !tbaa !15
  %i.ml = add i32 %i.mk, %i.lb
  %i.mm = getelementptr inbounds nuw [4 x i8], ptr %i.lc, i64 %.020.i
  store i32 %i.ml, ptr %i.mm, align 4, !tbaa !15
  %i.mn = or disjoint i64 %.020.i, 1              ; 2 uses
  %i.mo = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %i.mn
  %i.mp = load i32, ptr %i.mo, align 4, !tbaa !15
  %i.mq = add i32 %i.mp, %i.lb
  %i.mr = getelementptr inbounds nuw [4 x i8], ptr %i.lc, i64 %i.mn
  store i32 %i.mq, ptr %i.mr, align 4, !tbaa !15
  %i.ms = or disjoint i64 %.020.i, 2              ; 2 uses
  %i.mt = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %i.ms
  %i.mu = load i32, ptr %i.mt, align 4, !tbaa !15
  %i.mv = add i32 %i.mu, %i.lb
  %i.mw = getelementptr inbounds nuw [4 x i8], ptr %i.lc, i64 %i.ms
  store i32 %i.mv, ptr %i.mw, align 4, !tbaa !15
  %i.mx = or disjoint i64 %.020.i, 3              ; 2 uses
  %i.my = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %i.mx
  %i.mz = load i32, ptr %i.my, align 4, !tbaa !15
  %i.na = add i32 %i.mz, %i.lb
  %i.nb = getelementptr inbounds nuw [4 x i8], ptr %i.lc, i64 %i.mx
  store i32 %i.na, ptr %i.nb, align 4, !tbaa !15
  %i.nc = add nuw nsw i64 %.020.i, 4              ; 2 uses
  %exitcond.not.i49.3 = icmp eq i64 %i.nc, 64
  br i1 %exitcond.not.i49.3, label %middle.block, label %scalar.ph, !llvm.loop !134

middle.block:                                     ; preds = %scalar.ph, %vector.body
  %i.nd = add nuw i64 %.01821.i, 1                ; 2 uses
  %exitcond23.not.i = icmp eq i64 %i.nd, %i.kg
  br i1 %exitcond23.not.i, label %BrotliBuildMetaBlockGreedyInternal.exit, label %.lr.ph.i, !llvm.loop !135

BrotliBuildMetaBlockGreedyInternal.exit:          ; preds = %middle.block, %bb.ad, %BrotliBuildMetaBlockGreedyInternal.exit41
  tail call void @BrotliFree(ptr noundef %0, ptr noundef %i.b) #8
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @BrotliOptimizeHistograms(i32 noundef %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #2 {
bb.a:
  %i.a = alloca [704 x i8], align 16              ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 184 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !78
  %.not = icmp eq i64 %i.c, 0
  br i1 %.not, label %.preheader15, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 176
  br label %bb.b

.preheader15:                                     ; preds = %bb.b, %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 200 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !70
  %.not21 = icmp eq i64 %i.f, 0
  br i1 %.not21, label %.preheader, label %.lr.ph18

.lr.ph18:                                         ; preds = %.preheader15
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 192
  br label %bb.c

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %.016 = phi i64 [ 0, %.lr.ph ], [ %i.j, %bb.b ] ; 2 uses
  %i.h = load ptr, ptr %i.d, align 8, !tbaa !79
  %i.i = getelementptr inbounds nuw [1040 x i8], ptr %i.h, i64 %.016
  call void @BrotliOptimizeHuffmanCountsForRle(i64 noundef 256, ptr noundef %i.i, ptr noundef nonnull %i.a) #8
  %i.j = add nuw i64 %.016, 1                     ; 2 uses
  %i.k = load i64, ptr %i.b, align 8, !tbaa !78
  %i.l = icmp ult i64 %i.j, %i.k
  br i1 %i.l, label %bb.b, label %.preheader15, !llvm.loop !136
end_hunk_1
