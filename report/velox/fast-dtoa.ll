Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/velox/original/fast-dtoa?download=true
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
  switch i32 %1, label %bb.ag [
    i32 0, label %bb.b
    i32 1, label %bb.b
    i32 2, label %bb.r
  ]

bb.b:                                             ; preds = %bb.a, %bb.a
  %i.c = bitcast double %0 to i64                 ; 6 uses
  %i.d = and i64 %i.c, 9218868437227405312
  %i.e = icmp eq i64 %i.d, 0                      ; 3 uses
  %i.f = or i64 %i.c, 4503599627370496
  %i.g = lshr i64 %i.c, 52
  %i.h = trunc nuw nsw i64 %i.g to i32
  %i.i = and i32 %i.h, 2047
  %i.j = add nsw i32 %i.i, -1075                  ; 2 uses
  br i1 %i.e, label %.lr.ph.i.i, label %_ZNK14arrow_vendored17double_conversion6Double17AsNormalizedDiyFpEv.exit.i

.lr.ph.i.i:                                       ; preds = %bb.b, %.lr.ph.i.i
  %.010.i.i = phi i32 [ %i.l, %.lr.ph.i.i ], [ -1074, %bb.b ]
  %.079.i.i = phi i64 [ %i.k, %.lr.ph.i.i ], [ %i.c, %bb.b ] ; 2 uses
  %i.k = shl i64 %.079.i.i, 1                     ; 2 uses
  %i.l = add nsw i32 %.010.i.i, -1                ; 2 uses
  %i.m = and i64 %.079.i.i, 2251799813685248
  %i.n = icmp eq i64 %i.m, 0
  br i1 %i.n, label %.lr.ph.i.i, label %_ZNK14arrow_vendored17double_conversion6Double17AsNormalizedDiyFpEv.exit.i, !llvm.loop !8

_ZNK14arrow_vendored17double_conversion6Double17AsNormalizedDiyFpEv.exit.i: ; preds = %.lr.ph.i.i, %bb.b
  %.07.lcssa.i.i = phi i64 [ %i.f, %bb.b ], [ %i.k, %.lr.ph.i.i ]
  %.0.lcssa.i.i = phi i32 [ %i.j, %bb.b ], [ %i.l, %.lr.ph.i.i ] ; 3 uses
  %i.o = shl i64 %.07.lcssa.i.i, 11               ; 2 uses
  %i.p = icmp eq i32 %1, 0
  br i1 %i.p, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_ZNK14arrow_vendored17double_conversion6Double17AsNormalizedDiyFpEv.exit.i
  %9 = and i64 %i.c, 4503599627370495             ; 3 uses
  %10 = or disjoint i64 %9, 4503599627370496
  %.0.i.i.i.i = select i1 %i.e, i64 %9, i64 %10   ; 2 uses
  %.0.i1.i.i.i = select i1 %i.e, i32 -1074, i32 %i.j ; 2 uses
  %i.q = shl nuw nsw i64 %.0.i.i.i.i, 1           ; 2 uses
  %i.r = or disjoint i64 %i.q, 1
  %i.s = add nsw i32 %.0.i1.i.i.i, -1             ; 2 uses
  br label %.lr.ph.i.i.i.i

.preheader.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i
  %i.t = icmp sgt i64 %i.u, -1
  br i1 %i.t, label %.lr.ph15.i.i.i.i, label %_ZNK14arrow_vendored17double_conversion6Double20NormalizedBoundariesEPNS0_5DiyFpES3_.exit.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i, %bb.c
  %.011.i.i.i.i = phi i32 [ %i.v, %.lr.ph.i.i.i.i ], [ %i.s, %bb.c ]
  %.0810.i.i.i.i = phi i64 [ %i.u, %.lr.ph.i.i.i.i ], [ %i.r, %bb.c ] ; 2 uses
  %i.u = shl nuw i64 %.0810.i.i.i.i, 10           ; 4 uses
  %i.v = add nsw i32 %.011.i.i.i.i, -10           ; 3 uses
  %i.w = icmp ult i64 %.0810.i.i.i.i, 17592186044416
  br i1 %i.w, label %.lr.ph.i.i.i.i, label %.preheader.i.i.i.i, !llvm.loop !9

.lr.ph15.i.i.i.i:                                 ; preds = %.preheader.i.i.i.i, %.lr.ph15.i.i.i.i
  %.114.i.i.i.i = phi i32 [ %i.y, %.lr.ph15.i.i.i.i ], [ %i.v, %.preheader.i.i.i.i ]
  %.1913.i.i.i.i = phi i64 [ %i.x, %.lr.ph15.i.i.i.i ], [ %i.u, %.preheader.i.i.i.i ]
  %i.x = shl nuw i64 %.1913.i.i.i.i, 1            ; 3 uses
  %i.y = add nsw i32 %.114.i.i.i.i, -1            ; 2 uses
  %i.z = icmp sgt i64 %i.x, -1
  br i1 %i.z, label %.lr.ph15.i.i.i.i, label %_ZNK14arrow_vendored17double_conversion6Double20NormalizedBoundariesEPNS0_5DiyFpES3_.exit.i, !llvm.loop !10

_ZNK14arrow_vendored17double_conversion6Double20NormalizedBoundariesEPNS0_5DiyFpES3_.exit.i: ; preds = %.lr.ph15.i.i.i.i, %.preheader.i.i.i.i
  %.19.lcssa.i.i.i.i = phi i64 [ %i.u, %.preheader.i.i.i.i ], [ %i.x, %.lr.ph15.i.i.i.i ]
  %.1.lcssa.i.i.i.i = phi i32 [ %i.v, %.preheader.i.i.i.i ], [ %i.y, %.lr.ph15.i.i.i.i ]
  %i.aa = icmp eq i64 %9, 0
  %i.ab = and i64 %i.c, 9214364837600034816
  %i.ac = icmp ne i64 %i.ab, 0
  %i.ad = and i1 %i.aa, %i.ac                     ; 2 uses
  %i.ae = shl nuw nsw i64 %.0.i.i.i.i, 2
  %i.af = add nsw i32 %.0.i1.i.i.i, -2
  %.sroa.8.0.i.i = select i1 %i.ad, i32 %i.af, i32 %i.s
  %.sroa.012.0.v.i.i = select i1 %i.ad, i64 %i.ae, i64 %i.q
  %i.ag = sub nsw i32 %.sroa.8.0.i.i, %.1.lcssa.i.i.i.i
  br label %bb.e

bb.d:                                             ; preds = %_ZNK14arrow_vendored17double_conversion6Double17AsNormalizedDiyFpEv.exit.i
  %i.ah = fptrunc double %0 to float
  %i.ai = bitcast float %i.ah to i32              ; 4 uses
  %i.aj = and i32 %i.ai, 8388607                  ; 3 uses
  %i.ak = and i32 %i.ai, 2139095040
  %i.al = icmp eq i32 %i.ak, 0                    ; 2 uses
  %i.am = or disjoint i32 %i.aj, 8388608
  %.0.i.i.i40.i = select i1 %i.al, i32 %i.aj, i32 %i.am
  %i.an = zext nneg i32 %.0.i.i.i40.i to i64      ; 2 uses
  %i.ao = lshr i32 %i.ai, 23
  %i.ap = and i32 %i.ao, 255
  %i.aq = add nsw i32 %i.ap, -150
  %.0.i1.i.i41.i = select i1 %i.al, i32 -149, i32 %i.aq ; 2 uses
  %i.ar = shl nuw nsw i64 %i.an, 1                ; 2 uses
  %i.as = or disjoint i64 %i.ar, 1
  %i.at = add nsw i32 %.0.i1.i.i41.i, -1          ; 2 uses
  br label %.lr.ph.i.i.i42.i

.preheader.i.i.i45.i:                             ; preds = %.lr.ph.i.i.i42.i
  %i.au = icmp sgt i64 %i.av, -1
  br i1 %i.au, label %.lr.ph15.i.i.i53.i, label %_ZNK14arrow_vendored17double_conversion6Single20NormalizedBoundariesEPNS0_5DiyFpES3_.exit.i

.lr.ph.i.i.i42.i:                                 ; preds = %.lr.ph.i.i.i42.i, %bb.d
  %.011.i.i.i43.i = phi i32 [ %i.aw, %.lr.ph.i.i.i42.i ], [ %i.at, %bb.d ]
  %.0810.i.i.i44.i = phi i64 [ %i.av, %.lr.ph.i.i.i42.i ], [ %i.as, %bb.d ] ; 2 uses
  %i.av = shl nuw i64 %.0810.i.i.i44.i, 10        ; 4 uses
  %i.aw = add nsw i32 %.011.i.i.i43.i, -10        ; 3 uses
  %i.ax = icmp ult i64 %.0810.i.i.i44.i, 17592186044416
  br i1 %i.ax, label %.lr.ph.i.i.i42.i, label %.preheader.i.i.i45.i, !llvm.loop !9

.lr.ph15.i.i.i53.i:                               ; preds = %.preheader.i.i.i45.i, %.lr.ph15.i.i.i53.i
  %.114.i.i.i54.i = phi i32 [ %i.az, %.lr.ph15.i.i.i53.i ], [ %i.aw, %.preheader.i.i.i45.i ]
  %.1913.i.i.i55.i = phi i64 [ %i.ay, %.lr.ph15.i.i.i53.i ], [ %i.av, %.preheader.i.i.i45.i ]
  %i.ay = shl nuw i64 %.1913.i.i.i55.i, 1         ; 3 uses
  %i.az = add nsw i32 %.114.i.i.i54.i, -1         ; 2 uses
  %i.ba = icmp sgt i64 %i.ay, -1
  br i1 %i.ba, label %.lr.ph15.i.i.i53.i, label %_ZNK14arrow_vendored17double_conversion6Single20NormalizedBoundariesEPNS0_5DiyFpES3_.exit.i, !llvm.loop !10

_ZNK14arrow_vendored17double_conversion6Single20NormalizedBoundariesEPNS0_5DiyFpES3_.exit.i: ; preds = %.lr.ph15.i.i.i53.i, %.preheader.i.i.i45.i
  %.19.lcssa.i.i.i46.i = phi i64 [ %i.av, %.preheader.i.i.i45.i ], [ %i.ay, %.lr.ph15.i.i.i53.i ]
  %.1.lcssa.i.i.i47.i = phi i32 [ %i.aw, %.preheader.i.i.i45.i ], [ %i.az, %.lr.ph15.i.i.i53.i ]
  %i.bb = icmp eq i32 %i.aj, 0
  %i.bc = and i32 %i.ai, 2130706432
  %i.bd = icmp ne i32 %i.bc, 0
  %i.be = and i1 %i.bb, %i.bd                     ; 2 uses
  %i.bf = shl nuw nsw i64 %i.an, 2
  %i.bg = add nsw i32 %.0.i1.i.i41.i, -2
  %.sroa.8.0.i48.i = select i1 %i.be, i32 %i.bg, i32 %i.at
  %.sroa.012.0.v.i49.i = select i1 %i.be, i64 %i.bf, i64 %i.ar
  %i.bh = sub nsw i32 %.sroa.8.0.i48.i, %.1.lcssa.i.i.i47.i
  br label %bb.e

bb.e:                                             ; preds = %_ZNK14arrow_vendored17double_conversion6Single20NormalizedBoundariesEPNS0_5DiyFpES3_.exit.i, %_ZNK14arrow_vendored17double_conversion6Double20NormalizedBoundariesEPNS0_5DiyFpES3_.exit.i
  %.sink177.i = phi i32 [ %i.bh, %_ZNK14arrow_vendored17double_conversion6Single20NormalizedBoundariesEPNS0_5DiyFpES3_.exit.i ], [ %i.ag, %_ZNK14arrow_vendored17double_conversion6Double20NormalizedBoundariesEPNS0_5DiyFpES3_.exit.i ]
  %.sroa.012.0.i50.sink.in.i = phi i64 [ %.sroa.012.0.v.i49.i, %_ZNK14arrow_vendored17double_conversion6Single20NormalizedBoundariesEPNS0_5DiyFpES3_.exit.i ], [ %.sroa.012.0.v.i.i, %_ZNK14arrow_vendored17double_conversion6Double20NormalizedBoundariesEPNS0_5DiyFpES3_.exit.i ]
  %.sroa.073.0.i = phi i64 [ %.19.lcssa.i.i.i46.i, %_ZNK14arrow_vendored17double_conversion6Single20NormalizedBoundariesEPNS0_5DiyFpES3_.exit.i ], [ %.19.lcssa.i.i.i.i, %_ZNK14arrow_vendored17double_conversion6Double20NormalizedBoundariesEPNS0_5DiyFpES3_.exit.i ] ; 2 uses
  %.sroa.012.0.i50.sink.i = add nsw i64 %.sroa.012.0.i50.sink.in.i, -1
  %i.bi = zext nneg i32 %.sink177.i to i64
  %i.bj = shl i64 %.sroa.012.0.i50.sink.i, %i.bi  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #5
  store i64 0, ptr %8, align 8, !tbaa !19
  %i.bk = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  store i32 0, ptr %i.bk, align 8, !tbaa !20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #5
  %i.bl = sub nsw i32 -113, %.0.lcssa.i.i
  %i.bm = sub nsw i32 -85, %.0.lcssa.i.i
  call void @_ZN14arrow_vendored17double_conversion16PowersOfTenCache36GetCachedPowerForBinaryExponentRangeEiiPNS0_5DiyFpEPi(i32 noundef %i.bl, i32 noundef %i.bm, ptr noundef nonnull %8, ptr noundef nonnull %i.b)
  %i.bn = lshr i64 %i.o, 32                       ; 2 uses
  %i.bo = and i64 %i.o, 4294965248                ; 2 uses
  %i.bp = load i64, ptr %8, align 8, !tbaa !19    ; 2 uses
  %i.bq = lshr i64 %i.bp, 32                      ; 6 uses
  %i.br = and i64 %i.bp, 4294967295               ; 6 uses
  %i.bs = mul nuw i64 %i.bq, %i.bn
  %i.bt = mul nuw i64 %i.bq, %i.bo                ; 2 uses
  %i.bu = mul nuw i64 %i.br, %i.bn                ; 2 uses
  %i.bv = mul nuw i64 %i.br, %i.bo
  %i.bw = lshr i64 %i.bv, 32
  %i.bx = and i64 %i.bu, 4294967295
  %i.by = and i64 %i.bt, 4294965248
  %i.bz = add nuw nsw i64 %i.bx, 2147483648
  %i.ca = add nuw nsw i64 %i.bz, %i.bw
  %i.cb = add nuw nsw i64 %i.ca, %i.by
  %i.cc = load i32, ptr %i.bk, align 8, !tbaa !20
  %i.cd = add i32 %.0.lcssa.i.i, 53
  %i.ce = add i32 %i.cd, %i.cc                    ; 2 uses
  %i.cf = lshr i64 %i.bu, 32
  %i.cg = lshr i64 %i.bt, 32
  %i.ch = lshr i64 %i.cb, 32
  %i.ci = lshr i64 %i.bj, 32                      ; 2 uses
  %i.cj = and i64 %i.bj, 4294967295               ; 2 uses
  %i.ck = mul nuw i64 %i.bq, %i.ci
  %i.cl = mul nuw i64 %i.bq, %i.cj                ; 2 uses
  %i.cm = mul nuw i64 %i.br, %i.ci                ; 2 uses
  %i.cn = mul nuw i64 %i.br, %i.cj
  %i.co = lshr i64 %i.cn, 32
  %i.cp = and i64 %i.cm, 4294967295
  %i.cq = and i64 %i.cl, 4294967295
  %i.cr = add nuw nsw i64 %i.cp, 2147483648
  %i.cs = add nuw nsw i64 %i.cr, %i.co
  %i.ct = add nuw nsw i64 %i.cs, %i.cq
  %i.cu = lshr i64 %i.cm, 32
  %i.cv = lshr i64 %i.cl, 32
  %i.cw = lshr i64 %i.ct, 32
  %i.cx = lshr i64 %.sroa.073.0.i, 32             ; 2 uses
  %i.cy = and i64 %.sroa.073.0.i, 4294967295      ; 2 uses
  %i.cz = mul nuw i64 %i.bq, %i.cx
  %i.da = mul nuw i64 %i.bq, %i.cy                ; 2 uses
  %i.db = mul nuw i64 %i.br, %i.cx                ; 2 uses
  %i.dc = mul nuw i64 %i.br, %i.cy
  %i.dd = lshr i64 %i.dc, 32
  %i.de = and i64 %i.db, 4294967295
  %i.df = and i64 %i.da, 4294967295
  %i.dg = add nuw nsw i64 %i.de, 2147483648
  %i.dh = add nuw nsw i64 %i.dg, %i.dd
  %i.di = add nuw nsw i64 %i.dh, %i.df
  %i.dj = lshr i64 %i.db, 32
  %i.dk = add nuw i64 %i.dj, %i.cz
  %i.dl = lshr i64 %i.da, 32
  %i.dm = add nuw i64 %i.dk, %i.dl
  %i.dn = lshr i64 %i.di, 32
  %i.do = add i64 %i.dm, %i.dn                    ; 2 uses
  %i.dp = add i64 %i.do, 1                        ; 3 uses
  %i.dq = add nuw i64 %i.cu, %i.ck
  %i.dr = add nuw i64 %i.dq, %i.cv
  %i.ds = add i64 %i.dr, %i.cw
  %i.dt = sub i64 %i.do, %i.ds                    ; 2 uses
  %i.du = add i64 %i.dt, 2                        ; 5 uses
  %i.dv = sub nsw i32 0, %i.ce
  %i.dw = zext nneg i32 %i.dv to i64              ; 5 uses
  %i.dx = shl nuw i64 1, %i.dw                    ; 6 uses
  %i.dy = lshr i64 %i.dp, %i.dw
  %i.dz = trunc i64 %i.dy to i32                  ; 2 uses
  %i.ea = add i64 %i.dx, -1                       ; 2 uses
  %i.eb = and i64 %i.dp, %i.ea                    ; 2 uses
  %i.ec = mul i32 %i.ce, 1233
  %i.ed = add i32 %i.ec, 80145
  %i.ee = ashr i32 %i.ed, 12                      ; 2 uses
  %i.ef = add nsw i32 %i.ee, 1                    ; 2 uses
  %i.eg = sext i32 %i.ef to i64
  %i.eh = getelementptr inbounds [4 x i8], ptr @_ZN14arrow_vendored17double_conversionL17kSmallPowersOfTenE, i64 %i.eg
  %i.ei = load i32, ptr %i.eh, align 4, !tbaa !21
  %i.ej = icmp ugt i32 %i.ei, %i.dz
  %spec.select.i.i.i = select i1 %i.ej, i32 %i.ee, i32 %i.ef ; 4 uses
  %i.ek = sext i32 %spec.select.i.i.i to i64
  %i.el = getelementptr inbounds [4 x i8], ptr @_ZN14arrow_vendored17double_conversionL17kSmallPowersOfTenE, i64 %i.ek
  %i.em = load i32, ptr %i.el, align 4, !tbaa !21
  store i32 0, ptr %5, align 4, !tbaa !21
  %i.en = add nuw i64 %i.cf, %i.bs
  %i.eo = add nuw i64 %i.en, %i.cg
  %i.ep = add nuw i64 %i.eo, %i.ch
  %i.eq = sub i64 %i.dp, %i.ep                    ; 3 uses
  %i.er = add i64 %i.eq, -1                       ; 4 uses
  %i.es = add i64 %i.eq, 1                        ; 4 uses
  %i.et = add i64 %i.dt, -2
  %smin.i = call i32 @llvm.smin.i32(i32 %spec.select.i.i.i, i32 0)
  %i.eu = icmp sgt i32 %spec.select.i.i.i, 0
  br i1 %i.eu, label %.lr.ph, label %.preheader.i.i.preheader

.preheader.i.i.preheader:                         ; preds = %bb.f, %bb.e
  %.2.i.i.ph = phi i1 [ undef, %bb.e ], [ %.1.i.i, %bb.f ]
end_hunk_0
