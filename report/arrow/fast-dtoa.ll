inline.NumInlined: 153
inline.NumDeleted: 41
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.arrow_vendored::double_conversion::DiyFp" = type <{ i64, i32, [4 x i8] }>

@_ZN14arrow_vendored17double_conversionL17kSmallPowersOfTenE = internal unnamed_addr constant [11 x i32] [i32 0, i32 1, i32 10, i32 100, i32 1000, i32 10000, i32 100000, i32 1000000, i32 10000000, i32 100000000, i32 1000000000], align 16

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN14arrow_vendored17double_conversion8FastDtoaEdNS0_12FastDtoaModeEiNS0_6VectorIcEEPiS4_(double noundef %0, i32 noundef %1, i32 noundef %2, ptr nofree captures(none) %3, i32 %4, ptr nofree noundef captures(none) %5, ptr nofree noundef writeonly captures(none) %6) local_unnamed_addr #0 {
bb.a:
  %7 = alloca %"class.arrow_vendored::double_conversion::DiyFp", align 8 ; 8 uses
  %i.a = alloca i32, align 4                      ; 7 uses
  %8 = alloca %"class.arrow_vendored::double_conversion::DiyFp", align 8 ; 6 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  switch i32 %1, label %bb.ai [
    i32 0, label %bb.b
    i32 1, label %bb.b
    i32 2, label %bb.t
  ]

bb.b:                                             ; preds = %bb.a, %bb.a
  %i.c = bitcast double %0 to i64                 ; 4 uses
  %i.d = and i64 %i.c, 4503599627370495           ; 4 uses
  %i.e = and i64 %i.c, 9218868437227405312
  %i.f = icmp eq i64 %i.e, 0                      ; 3 uses
  %i.g = or disjoint i64 %i.d, 4503599627370496   ; 2 uses
  %i.h = lshr i64 %i.c, 52
  %i.i = trunc nuw nsw i64 %i.h to i32
  %i.j = and i32 %i.i, 2047
  %i.k = add nsw i32 %i.j, -1075                  ; 2 uses
  br i1 %i.f, label %.lr.ph.i.i, label %_ZNK14arrow_vendored17double_conversion6Double17AsNormalizedDiyFpEv.exit.i

.lr.ph.i.i:                                       ; preds = %bb.b, %.lr.ph.i.i
  %.010.i.i = phi i32 [ %i.m, %.lr.ph.i.i ], [ -1074, %bb.b ]
  %.079.i.i = phi i64 [ %i.l, %.lr.ph.i.i ], [ %i.d, %bb.b ] ; 2 uses
  %i.l = shl i64 %.079.i.i, 1                     ; 2 uses
  %i.m = add nsw i32 %.010.i.i, -1                ; 2 uses
  %i.n = and i64 %.079.i.i, 2251799813685248
  %i.o = icmp eq i64 %i.n, 0
  br i1 %i.o, label %.lr.ph.i.i, label %_ZNK14arrow_vendored17double_conversion6Double17AsNormalizedDiyFpEv.exit.i, !llvm.loop !7

_ZNK14arrow_vendored17double_conversion6Double17AsNormalizedDiyFpEv.exit.i: ; preds = %.lr.ph.i.i, %bb.b
  %.07.lcssa.i.i = phi i64 [ %i.g, %bb.b ], [ %i.l, %.lr.ph.i.i ]
  %.0.lcssa.i.i = phi i32 [ %i.k, %bb.b ], [ %i.m, %.lr.ph.i.i ] ; 3 uses
  %i.p = shl i64 %.07.lcssa.i.i, 11               ; 2 uses
  %i.q = icmp eq i32 %1, 0
  br i1 %i.q, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_ZNK14arrow_vendored17double_conversion6Double17AsNormalizedDiyFpEv.exit.i
  %.0.i.i.i.i = select i1 %i.f, i64 %i.d, i64 %i.g ; 2 uses
  %.0.i1.i.i.i = select i1 %i.f, i32 -1074, i32 %i.k ; 2 uses
  %i.r = shl nuw nsw i64 %.0.i.i.i.i, 1           ; 2 uses
  %i.s = or disjoint i64 %i.r, 1
  %i.t = add nsw i32 %.0.i1.i.i.i, -1             ; 2 uses
  br label %.lr.ph.i.i.i.i

.preheader.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i
  %i.u = icmp sgt i64 %i.v, -1
  br i1 %i.u, label %.lr.ph15.i.i.i.i, label %_ZNK14arrow_vendored17double_conversion6Double20NormalizedBoundariesEPNS0_5DiyFpES3_.exit.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i, %bb.c
  %.011.i.i.i.i = phi i64 [ %i.v, %.lr.ph.i.i.i.i ], [ %i.s, %bb.c ] ; 2 uses
  %.0810.i.i.i.i = phi i32 [ %i.w, %.lr.ph.i.i.i.i ], [ %i.t, %bb.c ]
  %i.v = shl nuw i64 %.011.i.i.i.i, 10            ; 4 uses
  %i.w = add nsw i32 %.0810.i.i.i.i, -10          ; 3 uses
  %i.x = icmp ult i64 %.011.i.i.i.i, 17592186044416
  br i1 %i.x, label %.lr.ph.i.i.i.i, label %.preheader.i.i.i.i, !llvm.loop !9

.lr.ph15.i.i.i.i:                                 ; preds = %.preheader.i.i.i.i, %.lr.ph15.i.i.i.i
  %.114.i.i.i.i = phi i64 [ %i.y, %.lr.ph15.i.i.i.i ], [ %i.v, %.preheader.i.i.i.i ]
  %.1913.i.i.i.i = phi i32 [ %i.z, %.lr.ph15.i.i.i.i ], [ %i.w, %.preheader.i.i.i.i ]
  %i.y = shl nuw i64 %.114.i.i.i.i, 1             ; 3 uses
  %i.z = add nsw i32 %.1913.i.i.i.i, -1           ; 2 uses
  %i.aa = icmp sgt i64 %i.y, -1
  br i1 %i.aa, label %.lr.ph15.i.i.i.i, label %_ZNK14arrow_vendored17double_conversion6Double20NormalizedBoundariesEPNS0_5DiyFpES3_.exit.i, !llvm.loop !10

_ZNK14arrow_vendored17double_conversion6Double20NormalizedBoundariesEPNS0_5DiyFpES3_.exit.i: ; preds = %.lr.ph15.i.i.i.i, %.preheader.i.i.i.i
  %.19.lcssa.i.i.i.i = phi i32 [ %i.w, %.preheader.i.i.i.i ], [ %i.z, %.lr.ph15.i.i.i.i ]
  %.1.lcssa.i.i.i.i = phi i64 [ %i.v, %.preheader.i.i.i.i ], [ %i.y, %.lr.ph15.i.i.i.i ]
  %i.ab = icmp eq i64 %i.d, 0
  %i.ac = and i64 %i.c, 9214364837600034816
  %i.ad = icmp ne i64 %i.ac, 0
  %i.ae = and i1 %i.ab, %i.ad                     ; 2 uses
  %i.af = shl nuw nsw i64 %.0.i.i.i.i, 2
  %i.ag = add nsw i32 %.0.i1.i.i.i, -2
  %.sroa.012.0.v.i.i = select i1 %i.ae, i64 %i.af, i64 %i.r
  %.sroa.8.0.i.i = select i1 %i.ae, i32 %i.ag, i32 %i.t
  %i.ah = sub nsw i32 %.sroa.8.0.i.i, %.19.lcssa.i.i.i.i
  br label %bb.e

bb.d:                                             ; preds = %_ZNK14arrow_vendored17double_conversion6Double17AsNormalizedDiyFpEv.exit.i
  %i.ai = fptrunc double %0 to float
  %i.aj = bitcast float %i.ai to i32              ; 4 uses
  %i.ak = and i32 %i.aj, 8388607                  ; 3 uses
  %i.al = and i32 %i.aj, 2139095040
  %i.am = icmp eq i32 %i.al, 0                    ; 2 uses
  %i.an = or disjoint i32 %i.ak, 8388608
  %.0.i.i.i40.i = select i1 %i.am, i32 %i.ak, i32 %i.an
  %i.ao = zext nneg i32 %.0.i.i.i40.i to i64      ; 2 uses
  %i.ap = lshr i32 %i.aj, 23
  %i.aq = and i32 %i.ap, 255
  %i.ar = add nsw i32 %i.aq, -150
  %.0.i1.i.i41.i = select i1 %i.am, i32 -149, i32 %i.ar ; 2 uses
  %i.as = shl nuw nsw i64 %i.ao, 1                ; 2 uses
  %i.at = or disjoint i64 %i.as, 1
  %i.au = add nsw i32 %.0.i1.i.i41.i, -1          ; 2 uses
  br label %.lr.ph.i.i.i42.i

.preheader.i.i.i45.i:                             ; preds = %.lr.ph.i.i.i42.i
  %i.av = icmp sgt i64 %i.aw, -1
  br i1 %i.av, label %.lr.ph15.i.i.i53.i, label %_ZNK14arrow_vendored17double_conversion6Single20NormalizedBoundariesEPNS0_5DiyFpES3_.exit.i

.lr.ph.i.i.i42.i:                                 ; preds = %.lr.ph.i.i.i42.i, %bb.d
  %.011.i.i.i43.i = phi i64 [ %i.aw, %.lr.ph.i.i.i42.i ], [ %i.at, %bb.d ] ; 2 uses
  %.0810.i.i.i44.i = phi i32 [ %i.ax, %.lr.ph.i.i.i42.i ], [ %i.au, %bb.d ]
  %i.aw = shl nuw i64 %.011.i.i.i43.i, 10         ; 4 uses
  %i.ax = add nsw i32 %.0810.i.i.i44.i, -10       ; 3 uses
  %i.ay = icmp ult i64 %.011.i.i.i43.i, 17592186044416
  br i1 %i.ay, label %.lr.ph.i.i.i42.i, label %.preheader.i.i.i45.i, !llvm.loop !9

.lr.ph15.i.i.i53.i:                               ; preds = %.preheader.i.i.i45.i, %.lr.ph15.i.i.i53.i
  %.114.i.i.i54.i = phi i64 [ %i.az, %.lr.ph15.i.i.i53.i ], [ %i.aw, %.preheader.i.i.i45.i ]
  %.1913.i.i.i55.i = phi i32 [ %i.ba, %.lr.ph15.i.i.i53.i ], [ %i.ax, %.preheader.i.i.i45.i ]
  %i.az = shl nuw i64 %.114.i.i.i54.i, 1          ; 3 uses
  %i.ba = add nsw i32 %.1913.i.i.i55.i, -1        ; 2 uses
  %i.bb = icmp sgt i64 %i.az, -1
  br i1 %i.bb, label %.lr.ph15.i.i.i53.i, label %_ZNK14arrow_vendored17double_conversion6Single20NormalizedBoundariesEPNS0_5DiyFpES3_.exit.i, !llvm.loop !10

_ZNK14arrow_vendored17double_conversion6Single20NormalizedBoundariesEPNS0_5DiyFpES3_.exit.i: ; preds = %.lr.ph15.i.i.i53.i, %.preheader.i.i.i45.i
  %.19.lcssa.i.i.i46.i = phi i32 [ %i.ax, %.preheader.i.i.i45.i ], [ %i.ba, %.lr.ph15.i.i.i53.i ]
  %.1.lcssa.i.i.i47.i = phi i64 [ %i.aw, %.preheader.i.i.i45.i ], [ %i.az, %.lr.ph15.i.i.i53.i ]
  %i.bc = icmp eq i32 %i.ak, 0
  %i.bd = and i32 %i.aj, 2130706432
  %i.be = icmp ne i32 %i.bd, 0
  %i.bf = and i1 %i.bc, %i.be                     ; 2 uses
  %i.bg = shl nuw nsw i64 %i.ao, 2
  %i.bh = add nsw i32 %.0.i1.i.i41.i, -2
  %.sroa.012.0.v.i48.i = select i1 %i.bf, i64 %i.bg, i64 %i.as
  %.sroa.8.0.i50.i = select i1 %i.bf, i32 %i.bh, i32 %i.au
  %i.bi = sub nsw i32 %.sroa.8.0.i50.i, %.19.lcssa.i.i.i46.i
  br label %bb.e

bb.e:                                             ; preds = %_ZNK14arrow_vendored17double_conversion6Single20NormalizedBoundariesEPNS0_5DiyFpES3_.exit.i, %_ZNK14arrow_vendored17double_conversion6Double20NormalizedBoundariesEPNS0_5DiyFpES3_.exit.i
  %.sink159.i = phi i32 [ %i.bi, %_ZNK14arrow_vendored17double_conversion6Single20NormalizedBoundariesEPNS0_5DiyFpES3_.exit.i ], [ %i.ah, %_ZNK14arrow_vendored17double_conversion6Double20NormalizedBoundariesEPNS0_5DiyFpES3_.exit.i ]
  %.sroa.012.0.i49.sink.in.i = phi i64 [ %.sroa.012.0.v.i48.i, %_ZNK14arrow_vendored17double_conversion6Single20NormalizedBoundariesEPNS0_5DiyFpES3_.exit.i ], [ %.sroa.012.0.v.i.i, %_ZNK14arrow_vendored17double_conversion6Double20NormalizedBoundariesEPNS0_5DiyFpES3_.exit.i ]
  %.sroa.073.0.i = phi i64 [ %.1.lcssa.i.i.i47.i, %_ZNK14arrow_vendored17double_conversion6Single20NormalizedBoundariesEPNS0_5DiyFpES3_.exit.i ], [ %.1.lcssa.i.i.i.i, %_ZNK14arrow_vendored17double_conversion6Double20NormalizedBoundariesEPNS0_5DiyFpES3_.exit.i ] ; 2 uses
  %.sroa.012.0.i49.sink.i = add nsw i64 %.sroa.012.0.i49.sink.in.i, -1
  %i.bj = zext nneg i32 %.sink159.i to i64
  %i.bk = shl i64 %.sroa.012.0.i49.sink.i, %i.bj  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #5
  store i64 0, ptr %8, align 8, !tbaa !11
  %i.bl = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  store i32 0, ptr %i.bl, align 8, !tbaa !14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #5
  %i.bm = sub nsw i32 -113, %.0.lcssa.i.i
  %i.bn = sub nsw i32 -85, %.0.lcssa.i.i
  call void @_ZN14arrow_vendored17double_conversion16PowersOfTenCache36GetCachedPowerForBinaryExponentRangeEiiPNS0_5DiyFpEPi(i32 noundef %i.bm, i32 noundef %i.bn, ptr noundef nonnull %8, ptr noundef nonnull %i.b)
  %i.bo = lshr i64 %i.p, 32                       ; 2 uses
  %i.bp = and i64 %i.p, 4294965248                ; 2 uses
  %i.bq = load i64, ptr %8, align 8, !tbaa !11    ; 2 uses
  %i.br = lshr i64 %i.bq, 32                      ; 6 uses
  %i.bs = and i64 %i.bq, 4294967295               ; 6 uses
  %i.bt = mul nuw i64 %i.br, %i.bo
  %i.bu = mul nuw i64 %i.br, %i.bp                ; 2 uses
  %i.bv = mul nuw i64 %i.bs, %i.bo                ; 2 uses
  %i.bw = mul nuw i64 %i.bs, %i.bp
  %i.bx = lshr i64 %i.bw, 32
  %i.by = and i64 %i.bv, 4294967295
  %i.bz = and i64 %i.bu, 4294965248
  %i.ca = add nuw nsw i64 %i.by, 2147483648
  %i.cb = add nuw nsw i64 %i.ca, %i.bx
  %i.cc = add nuw nsw i64 %i.cb, %i.bz
  %i.cd = load i32, ptr %i.bl, align 8, !tbaa !14
  %i.ce = add i32 %.0.lcssa.i.i, 53
  %i.cf = add i32 %i.ce, %i.cd                    ; 2 uses
  %i.cg = lshr i64 %i.bv, 32
  %i.ch = lshr i64 %i.bu, 32
  %i.ci = lshr i64 %i.cc, 32
  %i.cj = lshr i64 %i.bk, 32                      ; 2 uses
  %9 = and i64 %i.bk, 4294967295                  ; 2 uses
  %10 = mul nuw i64 %i.br, %i.cj
  %11 = mul nuw i64 %i.br, %9                     ; 2 uses
  %12 = mul nuw i64 %i.bs, %i.cj                  ; 2 uses
  %i.ck = mul nuw i64 %i.bs, %9
  %13 = lshr i64 %i.ck, 32
  %14 = and i64 %12, 4294967295
  %15 = and i64 %11, 4294967295
  %16 = add nuw nsw i64 %14, 2147483648
  %17 = add nuw nsw i64 %16, %13
  %18 = add nuw nsw i64 %17, %15
  %19 = lshr i64 %12, 32
  %20 = lshr i64 %11, 32
  %21 = lshr i64 %18, 32
  %22 = lshr i64 %.sroa.073.0.i, 32               ; 2 uses
  %23 = and i64 %.sroa.073.0.i, 4294967295        ; 2 uses
  %24 = mul nuw i64 %i.br, %22
  %25 = mul nuw i64 %i.br, %23                    ; 2 uses
  %26 = mul nuw i64 %i.bs, %22                    ; 2 uses
  %27 = mul nuw i64 %i.bs, %23
  %28 = lshr i64 %27, 32
  %29 = and i64 %26, 4294967295
  %30 = and i64 %25, 4294967295
  %31 = add nuw nsw i64 %29, 2147483648
  %32 = add nuw nsw i64 %31, %28
  %33 = add nuw nsw i64 %32, %30
  %34 = lshr i64 %26, 32
  %i.cl = add nuw i64 %34, %24
  %35 = lshr i64 %25, 32
  %36 = add nuw i64 %i.cl, %35
  %37 = lshr i64 %33, 32
  %38 = add i64 %36, %37                          ; 2 uses
  %39 = add i64 %38, 1                            ; 3 uses
  %40 = add nuw i64 %19, %10
  %i.cm = add nuw i64 %40, %20
  %41 = add i64 %i.cm, %21
  %i.cn = sub i64 %38, %41                        ; 2 uses
  %i.co = add i64 %i.cn, 2                        ; 4 uses
  %i.cp = sub nsw i32 0, %i.cf
  %i.cq = zext nneg i32 %i.cp to i64              ; 5 uses
  %i.cr = shl nuw i64 1, %i.cq                    ; 5 uses
  %i.cs = lshr i64 %39, %i.cq
  %i.ct = trunc i64 %i.cs to i32                  ; 2 uses
  %i.cu = add i64 %i.cr, -1                       ; 2 uses
  %i.cv = and i64 %39, %i.cu                      ; 2 uses
  %i.cw = mul i32 %i.cf, 1233
  %i.cx = add i32 %i.cw, 80145
  %i.cy = ashr i32 %i.cx, 12                      ; 2 uses
  %i.cz = add nsw i32 %i.cy, 1                    ; 2 uses
  %i.da = sext i32 %i.cz to i64
  %i.db = getelementptr inbounds [4 x i8], ptr @_ZN14arrow_vendored17double_conversionL17kSmallPowersOfTenE, i64 %i.da
  %i.dc = load i32, ptr %i.db, align 4, !tbaa !3
  %i.dd = icmp ugt i32 %i.dc, %i.ct
  %spec.select.i.i.i = select i1 %i.dd, i32 %i.cy, i32 %i.cz ; 4 uses
  %i.de = sext i32 %spec.select.i.i.i to i64
  %i.df = getelementptr inbounds [4 x i8], ptr @_ZN14arrow_vendored17double_conversionL17kSmallPowersOfTenE, i64 %i.de
  %i.dg = load i32, ptr %i.df, align 4, !tbaa !3
  store i32 0, ptr %5, align 4, !tbaa !3
  %i.dh = add nuw i64 %i.cg, %i.bt
  %i.di = add nuw i64 %i.dh, %i.ch
  %i.dj = add nuw i64 %i.di, %i.ci
  %i.dk = sub i64 %39, %i.dj                      ; 3 uses
  %i.dl = add i64 %i.dk, -1                       ; 5 uses
  %i.dm = add i64 %i.dk, 1                        ; 4 uses
  %i.dn = add i64 %i.cn, -2
  %smin.i = call i32 @llvm.smin.i32(i32 %spec.select.i.i.i, i32 0)
  %i.do = icmp sgt i32 %spec.select.i.i.i, 0
  br i1 %i.do, label %.lr.ph, label %.preheader.i.i.preheader

.preheader.i.i.preheader:                         ; preds = %bb.f, %bb.e
  %.2.i.i.ph = phi i1 [ undef, %bb.e ], [ %.1.i.i, %bb.f ]
  br label %.preheader.i.i

bb.f:                                             ; preds = %_ZN14arrow_vendored17double_conversionL9RoundWeedENS0_6VectorIcEEimmmmm.exit.i.i
  %i.dp = icmp sgt i32 %.0.i205, 1
  br i1 %i.dp, label %.lr.ph, label %.preheader.i.i.preheader, !llvm.loop !15

.lr.ph:                                           ; preds = %bb.e, %bb.f
  %.0.i.i208 = phi i1 [ %.1.i.i, %bb.f ], [ undef, %bb.e ]
  %.048.i.i207 = phi i32 [ %i.dy, %bb.f ], [ %i.ct, %bb.e ] ; 2 uses
  %.037.i.i206 = phi i32 [ %.138.i.i, %bb.f ], [ %i.dg, %bb.e ] ; 7 uses
  %.0.i205 = phi i32 [ %i.dz, %bb.f ], [ %spec.select.i.i.i, %bb.e ] ; 2 uses
  %i.dq = udiv i32 %.048.i.i207, %.037.i.i206
  %i.dr = trunc i32 %i.dq to i8
  %i.ds = add i8 %i.dr, 48
  %i.dt = load i32, ptr %5, align 4, !tbaa !3
  %i.du = sext i32 %i.dt to i64
  %i.dv = getelementptr inbounds i8, ptr %3, i64 %i.du
  store i8 %i.ds, ptr %i.dv, align 1, !tbaa !16
  %i.dw = load i32, ptr %5, align 4, !tbaa !3
  %i.dx = add nsw i32 %i.dw, 1                    ; 2 uses
  store i32 %i.dx, ptr %5, align 4, !tbaa !3
  %i.dy = urem i32 %.048.i.i207, %.037.i.i206     ; 2 uses
  %i.dz = add nsw i32 %.0.i205, -1                ; 2 uses
  %i.ea = zext i32 %i.dy to i64
  %i.eb = shl i64 %i.ea, %i.cq
  %i.ec = add i64 %i.eb, %i.cv                    ; 5 uses
  %.not54.i.i = icmp ult i64 %i.ec, %i.co         ; 2 uses
  br i1 %.not54.i.i, label %bb.g, label %bb.m

bb.g:                                             ; preds = %.lr.ph
  %i.ed = zext i32 %.037.i.i206 to i64
  %i.ee = shl i64 %i.ed, %i.cq                    ; 4 uses
  %i.ef = icmp uge i64 %i.ec, %i.dl
  %i.eg = sub nuw i64 %i.co, %i.ec
  %.not50.i.i.i = icmp ult i64 %i.eg, %i.ee       ; 2 uses
  %or.cond51.i.i.i = or i1 %i.ef, %.not50.i.i.i
  br i1 %or.cond51.i.i.i, label %.critedge.i.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.g
  %i.eh = sext i32 %i.dx to i64
  %i.ei = getelementptr i8, ptr %3, i64 %i.eh
  %i.ej = getelementptr i8, ptr %i.ei, i64 -1     ; 2 uses
  br label %bb.h

bb.h:                                             ; preds = %.critedge2.i.i.i, %.lr.ph.i.i.i
  %.04052.i.i.i = phi i64 [ %i.ec, %.lr.ph.i.i.i ], [ %i.ek, %.critedge2.i.i.i ] ; 3 uses
  %i.ek = add i64 %.04052.i.i.i, %i.ee            ; 6 uses
  %i.el = icmp ult i64 %i.ek, %i.dl
  br i1 %i.el, label %.critedge2.i.i.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.em = sub i64 %i.dl, %.04052.i.i.i
  %i.en = sub nuw i64 %i.ek, %i.dl
  %.not46.i.i.i = icmp ult i64 %i.em, %i.en
  br i1 %.not46.i.i.i, label %.critedge.i.i.i, label %.critedge2.i.i.i

.critedge2.i.i.i:                                 ; preds = %bb.i, %bb.h
  %i.eo = load i8, ptr %i.ej, align 1, !tbaa !16
  %i.ep = add i8 %i.eo, -1
  store i8 %i.ep, ptr %i.ej, align 1, !tbaa !16
  %i.eq = icmp uge i64 %i.ek, %i.dl
  %i.er = sub i64 %i.co, %i.ek
  %.not.i.i.i = icmp ult i64 %i.er, %i.ee         ; 2 uses
  %or.cond.i.i.i = or i1 %i.eq, %.not.i.i.i
  br i1 %or.cond.i.i.i, label %.critedge.i.i.i, label %bb.h, !llvm.loop !17

.critedge.i.i.i:                                  ; preds = %.critedge2.i.i.i, %bb.i, %bb.g
  %.040.lcssa.i.i.i = phi i64 [ %i.ec, %bb.g ], [ %.04052.i.i.i, %bb.i ], [ %i.ek, %.critedge2.i.i.i ] ; 5 uses
  %.not.lcssa.i.i.i = phi i1 [ %.not50.i.i.i, %bb.g ], [ false, %bb.i ], [ %.not.i.i.i, %.critedge2.i.i.i ]
  %i.es = icmp uge i64 %.040.lcssa.i.i.i, %i.dm
  %or.cond49.i.i.i = or i1 %i.es, %.not.lcssa.i.i.i
  br i1 %or.cond49.i.i.i, label %bb.l, label %bb.j

bb.j:                                             ; preds = %.critedge.i.i.i
  %i.et = add i64 %.040.lcssa.i.i.i, %i.ee        ; 2 uses
  %i.eu = icmp ult i64 %i.et, %i.dm
  br i1 %i.eu, label %_ZN14arrow_vendored17double_conversionL9RoundWeedENS0_6VectorIcEEimmmmm.exit.i.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ev = sub i64 %i.dm, %.040.lcssa.i.i.i
  %i.ew = sub nuw i64 %i.et, %i.dm
  %i.ex = icmp ugt i64 %i.ev, %i.ew
  br i1 %i.ex, label %_ZN14arrow_vendored17double_conversionL9RoundWeedENS0_6VectorIcEEimmmmm.exit.i.i, label %bb.l

bb.l:                                             ; preds = %bb.k, %.critedge.i.i.i
  %.not48.i.i.i = icmp ugt i64 %.040.lcssa.i.i.i, 1
  %i.ey = icmp ule i64 %.040.lcssa.i.i.i, %i.dn
  %i.ez = and i1 %.not48.i.i.i, %i.ey
  br label %_ZN14arrow_vendored17double_conversionL9RoundWeedENS0_6VectorIcEEimmmmm.exit.i.i

bb.m:                                             ; preds = %.lr.ph
  %i.fa = udiv i32 %.037.i.i206, 10
  br label %_ZN14arrow_vendored17double_conversionL9RoundWeedENS0_6VectorIcEEimmmmm.exit.i.i

_ZN14arrow_vendored17double_conversionL9RoundWeedENS0_6VectorIcEEimmmmm.exit.i.i: ; preds = %bb.m, %bb.l, %bb.k, %bb.j
  %.138.i.i = phi i32 [ %i.fa, %bb.m ], [ %.037.i.i206, %bb.j ], [ %.037.i.i206, %bb.k ], [ %.037.i.i206, %bb.l ]
  %.1.i.i = phi i1 [ %.0.i.i208, %bb.m ], [ false, %bb.j ], [ false, %bb.k ], [ %i.ez, %bb.l ] ; 3 uses
  br i1 %.not54.i.i, label %_ZN14arrow_vendored17double_conversionL6Grisu3EdNS0_12FastDtoaModeENS0_6VectorIcEEPiS4_.exit, label %bb.f, !llvm.loop !15

.preheader.i.i:                                   ; preds = %.preheader.i.i.preheader, %_ZN14arrow_vendored17double_conversionL9RoundWeedENS0_6VectorIcEEimmmmm.exit79.i.i
  %.1.i = phi i32 [ %i.fn, %_ZN14arrow_vendored17double_conversionL9RoundWeedENS0_6VectorIcEEimmmmm.exit79.i.i ], [ %smin.i, %.preheader.i.i.preheader ]
  %.sroa.015.0.i.i = phi i64 [ %i.fd, %_ZN14arrow_vendored17double_conversionL9RoundWeedENS0_6VectorIcEEimmmmm.exit79.i.i ], [ %i.co, %.preheader.i.i.preheader ]
  %.049.i.i = phi i64 [ %i.fm, %_ZN14arrow_vendored17double_conversionL9RoundWeedENS0_6VectorIcEEimmmmm.exit79.i.i ], [ %i.cv, %.preheader.i.i.preheader ]
  %.047.i.i = phi i64 [ %i.fc, %_ZN14arrow_vendored17double_conversionL9RoundWeedENS0_6VectorIcEEimmmmm.exit79.i.i ], [ 1, %.preheader.i.i.preheader ] ; 3 uses
  %.2.i.i = phi i1 [ %.3.i.i, %_ZN14arrow_vendored17double_conversionL9RoundWeedENS0_6VectorIcEEimmmmm.exit79.i.i ], [ %.2.i.i.ph, %.preheader.i.i.preheader ]
  %i.fb = mul i64 %.049.i.i, 10                   ; 2 uses
  %i.fc = mul i64 %.047.i.i, 10                   ; 4 uses
  %i.fd = mul i64 %.sroa.015.0.i.i, 10            ; 5 uses
  %i.fe = lshr i64 %i.fb, %i.cq
  %i.ff = trunc i64 %i.fe to i8
  %i.fg = add i8 %i.ff, 48
  %i.fh = load i32, ptr %5, align 4, !tbaa !3
  %i.fi = sext i32 %i.fh to i64
  %i.fj = getelementptr inbounds i8, ptr %3, i64 %i.fi
  store i8 %i.fg, ptr %i.fj, align 1, !tbaa !16
  %i.fk = load i32, ptr %5, align 4, !tbaa !3
  %i.fl = add nsw i32 %i.fk, 1                    ; 2 uses
  store i32 %i.fl, ptr %5, align 4, !tbaa !3
  %i.fm = and i64 %i.fb, %i.cu                    ; 6 uses
  %i.fn = add nsw i32 %.1.i, -1                   ; 2 uses
  %.not.i.i = icmp ult i64 %i.fm, %i.fd           ; 2 uses
  br i1 %.not.i.i, label %bb.n, label %_ZN14arrow_vendored17double_conversionL9RoundWeedENS0_6VectorIcEEimmmmm.exit79.i.i

bb.n:                                             ; preds = %.preheader.i.i
  %i.fo = mul i64 %i.fc, %i.dk                    ; 2 uses
  %i.fp = sub i64 %i.fo, %i.fc                    ; 5 uses
  %i.fq = add i64 %i.fo, %i.fc                    ; 4 uses
  %i.fr = icmp uge i64 %i.fm, %i.fp
  %i.fs = sub nuw i64 %i.fd, %i.fm
  %.not50.i65.i.i = icmp ult i64 %i.fs, %i.cr     ; 2 uses
  %or.cond51.i66.i.i = or i1 %.not50.i65.i.i, %i.fr
  br i1 %or.cond51.i66.i.i, label %.critedge.i73.i.i, label %.lr.ph.i67.i.i

.lr.ph.i67.i.i:                                   ; preds = %bb.n
  %i.ft = sext i32 %i.fl to i64
  %i.fu = getelementptr i8, ptr %3, i64 %i.ft
  %i.fv = getelementptr i8, ptr %i.fu, i64 -1     ; 2 uses
  br label %bb.o

bb.o:                                             ; preds = %.critedge2.i70.i.i, %.lr.ph.i67.i.i
  %.04052.i68.i.i = phi i64 [ %i.fm, %.lr.ph.i67.i.i ], [ %i.fw, %.critedge2.i70.i.i ] ; 3 uses
  %i.fw = add i64 %.04052.i68.i.i, %i.cr          ; 6 uses
  %i.fx = icmp ult i64 %i.fw, %i.fp
  br i1 %i.fx, label %.critedge2.i70.i.i, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.fy = sub i64 %i.fp, %.04052.i68.i.i
  %i.fz = sub nuw i64 %i.fw, %i.fp
  %.not46.i69.i.i = icmp ult i64 %i.fy, %i.fz
  br i1 %.not46.i69.i.i, label %.critedge.i73.i.i, label %.critedge2.i70.i.i

.critedge2.i70.i.i:                               ; preds = %bb.p, %bb.o
  %i.ga = load i8, ptr %i.fv, align 1, !tbaa !16
  %i.gb = add i8 %i.ga, -1
  store i8 %i.gb, ptr %i.fv, align 1, !tbaa !16
  %i.gc = icmp uge i64 %i.fw, %i.fp
  %i.gd = sub i64 %i.fd, %i.fw
  %.not.i71.i.i = icmp ult i64 %i.gd, %i.cr       ; 2 uses
  %or.cond.i72.i.i = or i1 %i.gc, %.not.i71.i.i
  br i1 %or.cond.i72.i.i, label %.critedge.i73.i.i, label %bb.o, !llvm.loop !17

.critedge.i73.i.i:                                ; preds = %.critedge2.i70.i.i, %bb.p, %bb.n
  %.040.lcssa.i74.i.i = phi i64 [ %i.fm, %bb.n ], [ %.04052.i68.i.i, %bb.p ], [ %i.fw, %.critedge2.i70.i.i ] ; 5 uses
  %.not.lcssa.i75.i.i = phi i1 [ %.not50.i65.i.i, %bb.n ], [ false, %bb.p ], [ %.not.i71.i.i, %.critedge2.i70.i.i ]
  %i.ge = icmp uge i64 %.040.lcssa.i74.i.i, %i.fq
  %or.cond49.i76.i.i = or i1 %i.ge, %.not.lcssa.i75.i.i
  br i1 %or.cond49.i76.i.i, label %bb.s, label %bb.q

bb.q:                                             ; preds = %.critedge.i73.i.i
  %i.gf = add i64 %.040.lcssa.i74.i.i, %i.cr      ; 2 uses
  %i.gg = icmp ult i64 %i.gf, %i.fq
  br i1 %i.gg, label %_ZN14arrow_vendored17double_conversionL9RoundWeedENS0_6VectorIcEEimmmmm.exit79.i.i, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.gh = sub i64 %i.fq, %.040.lcssa.i74.i.i
  %i.gi = sub nuw i64 %i.gf, %i.fq
  %i.gj = icmp ugt i64 %i.gh, %i.gi
  br i1 %i.gj, label %_ZN14arrow_vendored17double_conversionL9RoundWeedENS0_6VectorIcEEimmmmm.exit79.i.i, label %bb.s

bb.s:                                             ; preds = %bb.r, %.critedge.i73.i.i
  %i.gk = mul i64 %.047.i.i, 20
  %.not48.i77.i.i = icmp ule i64 %i.gk, %.040.lcssa.i74.i.i
  %.neg.i.i = mul i64 %.047.i.i, -40
  %i.gl = add i64 %.neg.i.i, %i.fd
  %i.gm = icmp ule i64 %.040.lcssa.i74.i.i, %i.gl
  %i.gn = and i1 %.not48.i77.i.i, %i.gm
  br label %_ZN14arrow_vendored17double_conversionL9RoundWeedENS0_6VectorIcEEimmmmm.exit79.i.i

_ZN14arrow_vendored17double_conversionL9RoundWeedENS0_6VectorIcEEimmmmm.exit79.i.i: ; preds = %bb.s, %bb.r, %bb.q, %.preheader.i.i
  %.3.i.i = phi i1 [ %.2.i.i, %.preheader.i.i ], [ %i.gn, %bb.s ], [ false, %bb.r ], [ false, %bb.q ] ; 2 uses
  br i1 %.not.i.i, label %_ZN14arrow_vendored17double_conversionL6Grisu3EdNS0_12FastDtoaModeENS0_6VectorIcEEPiS4_.exit, label %.preheader.i.i, !llvm.loop !18
end_hunk_0
