Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/double_conversion/original/fast-dtoa?download=true
inline.NumInlined: 153
inline.NumDeleted: 41
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.double_conversion::DiyFp" = type <{ i64, i32, [4 x i8] }>

@_ZN17double_conversionL17kSmallPowersOfTenE = internal unnamed_addr constant [11 x i32] [i32 0, i32 1, i32 10, i32 100, i32 1000, i32 10000, i32 100000, i32 1000000, i32 10000000, i32 100000000, i32 1000000000], align 16

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN17double_conversion8FastDtoaEdNS_12FastDtoaModeEiNS_6VectorIcEEPiS3_(double noundef %0, i32 noundef %1, i32 noundef %2, ptr nofree captures(none) %3, i32 %4, ptr nofree noundef captures(none) %5, ptr nofree noundef writeonly captures(none) %6) local_unnamed_addr #0 {
bb.a:
  %7 = alloca %"class.double_conversion::DiyFp", align 8 ; 8 uses
  %i.a = alloca i32, align 4                      ; 7 uses
  %8 = alloca %"class.double_conversion::DiyFp", align 8 ; 6 uses
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
  br i1 %i.f, label %.lr.ph.i.i, label %_ZNK17double_conversion6Double17AsNormalizedDiyFpEv.exit.i

.lr.ph.i.i:                                       ; preds = %bb.b, %.lr.ph.i.i
  %.010.i.i = phi i32 [ %i.m, %.lr.ph.i.i ], [ -1074, %bb.b ]
  %.079.i.i = phi i64 [ %i.l, %.lr.ph.i.i ], [ %i.d, %bb.b ] ; 2 uses
  %i.l = shl i64 %.079.i.i, 1                     ; 2 uses
  %i.m = add nsw i32 %.010.i.i, -1                ; 2 uses
  %i.n = and i64 %.079.i.i, 2251799813685248
  %i.o = icmp eq i64 %i.n, 0
  br i1 %i.o, label %.lr.ph.i.i, label %_ZNK17double_conversion6Double17AsNormalizedDiyFpEv.exit.i, !llvm.loop !8

_ZNK17double_conversion6Double17AsNormalizedDiyFpEv.exit.i: ; preds = %.lr.ph.i.i, %bb.b
  %.07.lcssa.i.i = phi i64 [ %i.g, %bb.b ], [ %i.l, %.lr.ph.i.i ]
  %.0.lcssa.i.i = phi i32 [ %i.k, %bb.b ], [ %i.m, %.lr.ph.i.i ] ; 3 uses
  %i.p = shl i64 %.07.lcssa.i.i, 11               ; 2 uses
  %i.q = icmp eq i32 %1, 0
  br i1 %i.q, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_ZNK17double_conversion6Double17AsNormalizedDiyFpEv.exit.i
  %.0.i.i.i.i = select i1 %i.f, i64 %i.d, i64 %i.g ; 2 uses
  %.0.i1.i.i.i = select i1 %i.f, i32 -1074, i32 %i.k ; 2 uses
  %i.r = shl nuw nsw i64 %.0.i.i.i.i, 1           ; 2 uses
  %i.s = or disjoint i64 %i.r, 1
  %i.t = add nsw i32 %.0.i1.i.i.i, -1             ; 2 uses
  br label %.lr.ph.i.i.i.i

.preheader.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i
  %i.u = icmp sgt i64 %i.v, -1
  br i1 %i.u, label %.lr.ph15.i.i.i.i, label %_ZNK17double_conversion6Double20NormalizedBoundariesEPNS_5DiyFpES2_.exit.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i, %bb.c
  %.011.i.i.i.i = phi i32 [ %i.w, %.lr.ph.i.i.i.i ], [ %i.t, %bb.c ]
  %.0810.i.i.i.i = phi i64 [ %i.v, %.lr.ph.i.i.i.i ], [ %i.s, %bb.c ] ; 2 uses
  %i.v = shl nuw i64 %.0810.i.i.i.i, 10           ; 4 uses
  %i.w = add nsw i32 %.011.i.i.i.i, -10           ; 3 uses
  %i.x = icmp ult i64 %.0810.i.i.i.i, 17592186044416
  br i1 %i.x, label %.lr.ph.i.i.i.i, label %.preheader.i.i.i.i, !llvm.loop !10

.lr.ph15.i.i.i.i:                                 ; preds = %.preheader.i.i.i.i, %.lr.ph15.i.i.i.i
  %.114.i.i.i.i = phi i32 [ %i.z, %.lr.ph15.i.i.i.i ], [ %i.w, %.preheader.i.i.i.i ]
  %.1913.i.i.i.i = phi i64 [ %i.y, %.lr.ph15.i.i.i.i ], [ %i.v, %.preheader.i.i.i.i ]
  %i.y = shl nuw i64 %.1913.i.i.i.i, 1            ; 3 uses
  %i.z = add nsw i32 %.114.i.i.i.i, -1            ; 2 uses
  %i.aa = icmp sgt i64 %i.y, -1
  br i1 %i.aa, label %.lr.ph15.i.i.i.i, label %_ZNK17double_conversion6Double20NormalizedBoundariesEPNS_5DiyFpES2_.exit.i, !llvm.loop !11

_ZNK17double_conversion6Double20NormalizedBoundariesEPNS_5DiyFpES2_.exit.i: ; preds = %.lr.ph15.i.i.i.i, %.preheader.i.i.i.i
  %.19.lcssa.i.i.i.i = phi i64 [ %i.v, %.preheader.i.i.i.i ], [ %i.y, %.lr.ph15.i.i.i.i ]
  %.1.lcssa.i.i.i.i = phi i32 [ %i.w, %.preheader.i.i.i.i ], [ %i.z, %.lr.ph15.i.i.i.i ]
  %i.ab = icmp eq i64 %i.d, 0
  %i.ac = and i64 %i.c, 9214364837600034816
  %i.ad = icmp ne i64 %i.ac, 0
  %i.ae = and i1 %i.ab, %i.ad                     ; 2 uses
  %i.af = shl nuw nsw i64 %.0.i.i.i.i, 2
  %i.ag = add nsw i32 %.0.i1.i.i.i, -2
  %.sroa.8.0.i.i = select i1 %i.ae, i32 %i.ag, i32 %i.t
  %.sroa.012.0.v.i.i = select i1 %i.ae, i64 %i.af, i64 %i.r
  %i.ah = sub nsw i32 %.sroa.8.0.i.i, %.1.lcssa.i.i.i.i
  br label %bb.e

bb.d:                                             ; preds = %_ZNK17double_conversion6Double17AsNormalizedDiyFpEv.exit.i
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
  br i1 %i.av, label %.lr.ph15.i.i.i53.i, label %_ZNK17double_conversion6Single20NormalizedBoundariesEPNS_5DiyFpES2_.exit.i

.lr.ph.i.i.i42.i:                                 ; preds = %.lr.ph.i.i.i42.i, %bb.d
  %.011.i.i.i43.i = phi i32 [ %i.ax, %.lr.ph.i.i.i42.i ], [ %i.au, %bb.d ]
  %.0810.i.i.i44.i = phi i64 [ %i.aw, %.lr.ph.i.i.i42.i ], [ %i.at, %bb.d ] ; 2 uses
  %i.aw = shl nuw i64 %.0810.i.i.i44.i, 10        ; 4 uses
  %i.ax = add nsw i32 %.011.i.i.i43.i, -10        ; 3 uses
  %i.ay = icmp ult i64 %.0810.i.i.i44.i, 17592186044416
  br i1 %i.ay, label %.lr.ph.i.i.i42.i, label %.preheader.i.i.i45.i, !llvm.loop !10

.lr.ph15.i.i.i53.i:                               ; preds = %.preheader.i.i.i45.i, %.lr.ph15.i.i.i53.i
  %.114.i.i.i54.i = phi i32 [ %i.ba, %.lr.ph15.i.i.i53.i ], [ %i.ax, %.preheader.i.i.i45.i ]
  %.1913.i.i.i55.i = phi i64 [ %i.az, %.lr.ph15.i.i.i53.i ], [ %i.aw, %.preheader.i.i.i45.i ]
  %i.az = shl nuw i64 %.1913.i.i.i55.i, 1         ; 3 uses
  %i.ba = add nsw i32 %.114.i.i.i54.i, -1         ; 2 uses
  %i.bb = icmp sgt i64 %i.az, -1
  br i1 %i.bb, label %.lr.ph15.i.i.i53.i, label %_ZNK17double_conversion6Single20NormalizedBoundariesEPNS_5DiyFpES2_.exit.i, !llvm.loop !11

_ZNK17double_conversion6Single20NormalizedBoundariesEPNS_5DiyFpES2_.exit.i: ; preds = %.lr.ph15.i.i.i53.i, %.preheader.i.i.i45.i
  %.19.lcssa.i.i.i46.i = phi i64 [ %i.aw, %.preheader.i.i.i45.i ], [ %i.az, %.lr.ph15.i.i.i53.i ]
  %.1.lcssa.i.i.i47.i = phi i32 [ %i.ax, %.preheader.i.i.i45.i ], [ %i.ba, %.lr.ph15.i.i.i53.i ]
  %i.bc = icmp eq i32 %i.ak, 0
  %i.bd = and i32 %i.aj, 2130706432
  %i.be = icmp ne i32 %i.bd, 0
  %i.bf = and i1 %i.bc, %i.be                     ; 2 uses
  %i.bg = shl nuw nsw i64 %i.ao, 2
  %i.bh = add nsw i32 %.0.i1.i.i41.i, -2
  %.sroa.8.0.i48.i = select i1 %i.bf, i32 %i.bh, i32 %i.au
  %.sroa.012.0.v.i49.i = select i1 %i.bf, i64 %i.bg, i64 %i.as
  %i.bi = sub nsw i32 %.sroa.8.0.i48.i, %.1.lcssa.i.i.i47.i
  br label %bb.e

bb.e:                                             ; preds = %_ZNK17double_conversion6Single20NormalizedBoundariesEPNS_5DiyFpES2_.exit.i, %_ZNK17double_conversion6Double20NormalizedBoundariesEPNS_5DiyFpES2_.exit.i
  %.sink159.i = phi i32 [ %i.bi, %_ZNK17double_conversion6Single20NormalizedBoundariesEPNS_5DiyFpES2_.exit.i ], [ %i.ah, %_ZNK17double_conversion6Double20NormalizedBoundariesEPNS_5DiyFpES2_.exit.i ]
  %.sroa.012.0.i49.sink.in.i = phi i64 [ %.sroa.012.0.v.i49.i, %_ZNK17double_conversion6Single20NormalizedBoundariesEPNS_5DiyFpES2_.exit.i ], [ %.sroa.012.0.v.i.i, %_ZNK17double_conversion6Double20NormalizedBoundariesEPNS_5DiyFpES2_.exit.i ]
  %.sroa.073.0.i = phi i64 [ %.19.lcssa.i.i.i46.i, %_ZNK17double_conversion6Single20NormalizedBoundariesEPNS_5DiyFpES2_.exit.i ], [ %.19.lcssa.i.i.i.i, %_ZNK17double_conversion6Double20NormalizedBoundariesEPNS_5DiyFpES2_.exit.i ] ; 2 uses
  %.sroa.012.0.i49.sink.i = add nsw i64 %.sroa.012.0.i49.sink.in.i, -1
  %i.bj = zext nneg i32 %.sink159.i to i64
  %i.bk = shl i64 %.sroa.012.0.i49.sink.i, %i.bj  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #5
  store i64 0, ptr %8, align 8, !tbaa !12
  %i.bl = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  store i32 0, ptr %i.bl, align 8, !tbaa !15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #5
  %i.bm = sub nsw i32 -113, %.0.lcssa.i.i
  %i.bn = sub nsw i32 -85, %.0.lcssa.i.i
  call void @_ZN17double_conversion16PowersOfTenCache36GetCachedPowerForBinaryExponentRangeEiiPNS_5DiyFpEPi(i32 noundef %i.bm, i32 noundef %i.bn, ptr noundef nonnull %8, ptr noundef nonnull %i.b)
  %i.bo = lshr i64 %i.p, 32                       ; 2 uses
  %i.bp = and i64 %i.p, 4294965248                ; 2 uses
  %i.bq = load i64, ptr %8, align 8, !tbaa !12    ; 2 uses
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
  %i.cd = load i32, ptr %i.bl, align 8, !tbaa !15
  %i.ce = add i32 %.0.lcssa.i.i, 53
  %i.cf = add i32 %i.ce, %i.cd                    ; 2 uses
  %i.cg = lshr i64 %i.bv, 32
  %i.ch = lshr i64 %i.bu, 32
  %i.ci = lshr i64 %i.cc, 32
  %i.cj = lshr i64 %i.bk, 32                      ; 2 uses
  %i.ck = and i64 %i.bk, 4294967295               ; 2 uses
  %i.cl = mul nuw i64 %i.br, %i.cj
  %i.cm = mul nuw i64 %i.br, %i.ck                ; 2 uses
  %i.cn = mul nuw i64 %i.bs, %i.cj                ; 2 uses
  %i.co = mul nuw i64 %i.bs, %i.ck
  %i.cp = lshr i64 %i.co, 32
  %i.cq = and i64 %i.cn, 4294967295
  %i.cr = and i64 %i.cm, 4294967295
  %i.cs = add nuw nsw i64 %i.cq, 2147483648
  %i.ct = add nuw nsw i64 %i.cs, %i.cp
  %i.cu = add nuw nsw i64 %i.ct, %i.cr
  %i.cv = lshr i64 %i.cn, 32
  %i.cw = lshr i64 %i.cm, 32
  %i.cx = lshr i64 %i.cu, 32
  %i.cy = lshr i64 %.sroa.073.0.i, 32             ; 2 uses
  %i.cz = and i64 %.sroa.073.0.i, 4294967295      ; 2 uses
  %i.da = mul nuw i64 %i.br, %i.cy
  %i.db = mul nuw i64 %i.br, %i.cz                ; 2 uses
  %i.dc = mul nuw i64 %i.bs, %i.cy                ; 2 uses
  %i.dd = mul nuw i64 %i.bs, %i.cz
  %i.de = lshr i64 %i.dd, 32
  %i.df = and i64 %i.dc, 4294967295
  %i.dg = and i64 %i.db, 4294967295
  %i.dh = add nuw nsw i64 %i.df, 2147483648
  %i.di = add nuw nsw i64 %i.dh, %i.de
  %i.dj = add nuw nsw i64 %i.di, %i.dg
  %i.dk = lshr i64 %i.dc, 32
  %i.dl = add nuw i64 %i.dk, %i.da
  %i.dm = lshr i64 %i.db, 32
  %i.dn = add nuw i64 %i.dl, %i.dm
  %i.do = lshr i64 %i.dj, 32
  %i.dp = add i64 %i.dn, %i.do                    ; 2 uses
  %i.dq = add i64 %i.dp, 1                        ; 3 uses
  %i.dr = add nuw i64 %i.cv, %i.cl
  %i.ds = add nuw i64 %i.dr, %i.cw
  %i.dt = add i64 %i.ds, %i.cx
  %i.du = sub i64 %i.dp, %i.dt                    ; 2 uses
  %i.dv = add i64 %i.du, 2                        ; 4 uses
  %i.dw = sub nsw i32 0, %i.cf
  %i.dx = zext nneg i32 %i.dw to i64              ; 5 uses
  %i.dy = shl nuw i64 1, %i.dx                    ; 5 uses
  %i.dz = lshr i64 %i.dq, %i.dx
  %i.ea = trunc i64 %i.dz to i32                  ; 2 uses
  %i.eb = add i64 %i.dy, -1                       ; 2 uses
  %i.ec = and i64 %i.dq, %i.eb                    ; 2 uses
  %i.ed = mul i32 %i.cf, 1233
  %i.ee = add i32 %i.ed, 80145
  %i.ef = ashr i32 %i.ee, 12                      ; 2 uses
  %i.eg = add nsw i32 %i.ef, 1                    ; 2 uses
  %i.eh = sext i32 %i.eg to i64
  %i.ei = getelementptr inbounds [4 x i8], ptr @_ZN17double_conversionL17kSmallPowersOfTenE, i64 %i.eh
  %i.ej = load i32, ptr %i.ei, align 4, !tbaa !16
  %i.ek = icmp ugt i32 %i.ej, %i.ea
  %spec.select.i.i.i = select i1 %i.ek, i32 %i.ef, i32 %i.eg ; 4 uses
  %i.el = sext i32 %spec.select.i.i.i to i64
  %i.em = getelementptr inbounds [4 x i8], ptr @_ZN17double_conversionL17kSmallPowersOfTenE, i64 %i.el
  %i.en = load i32, ptr %i.em, align 4, !tbaa !16
  store i32 0, ptr %5, align 4, !tbaa !16
  %i.eo = add nuw i64 %i.cg, %i.bt
  %i.ep = add nuw i64 %i.eo, %i.ch
  %i.eq = add nuw i64 %i.ep, %i.ci
  %i.er = sub i64 %i.dq, %i.eq                    ; 3 uses
  %i.es = add i64 %i.er, -1                       ; 5 uses
  %i.et = add i64 %i.er, 1                        ; 4 uses
  %i.eu = add i64 %i.du, -2
  %smin.i = call i32 @llvm.smin.i32(i32 %spec.select.i.i.i, i32 0)
  %i.ev = icmp sgt i32 %spec.select.i.i.i, 0
  br i1 %i.ev, label %.lr.ph, label %.preheader.i.i.preheader

.preheader.i.i.preheader:                         ; preds = %bb.f, %bb.e
  %.2.i.i.ph = phi i1 [ undef, %bb.e ], [ %.1.i.i, %bb.f ]
  br label %.preheader.i.i

bb.f:                                             ; preds = %_ZN17double_conversionL9RoundWeedENS_6VectorIcEEimmmmm.exit.i.i
  %i.ew = icmp sgt i32 %.0.i205, 1
  br i1 %i.ew, label %.lr.ph, label %.preheader.i.i.preheader, !llvm.loop !17

.lr.ph:                                           ; preds = %bb.e, %bb.f
  %.0.i.i208 = phi i1 [ %.1.i.i, %bb.f ], [ undef, %bb.e ]
  %.048.i.i207 = phi i32 [ %i.ff, %bb.f ], [ %i.ea, %bb.e ] ; 2 uses
  %.037.i.i206 = phi i32 [ %.138.i.i, %bb.f ], [ %i.en, %bb.e ] ; 7 uses
  %.0.i205 = phi i32 [ %i.fg, %bb.f ], [ %spec.select.i.i.i, %bb.e ] ; 2 uses
  %i.ex = udiv i32 %.048.i.i207, %.037.i.i206
  %i.ey = trunc i32 %i.ex to i8
  %i.ez = add i8 %i.ey, 48
  %i.fa = load i32, ptr %5, align 4, !tbaa !16
  %i.fb = sext i32 %i.fa to i64
  %i.fc = getelementptr inbounds i8, ptr %3, i64 %i.fb
  store i8 %i.ez, ptr %i.fc, align 1, !tbaa !18
  %i.fd = load i32, ptr %5, align 4, !tbaa !16
  %i.fe = add nsw i32 %i.fd, 1                    ; 2 uses
  store i32 %i.fe, ptr %5, align 4, !tbaa !16
  %i.ff = urem i32 %.048.i.i207, %.037.i.i206     ; 2 uses
  %i.fg = add nsw i32 %.0.i205, -1                ; 2 uses
  %i.fh = zext i32 %i.ff to i64
  %i.fi = shl i64 %i.fh, %i.dx
  %i.fj = add i64 %i.fi, %i.ec                    ; 5 uses
  %.not54.i.i = icmp ult i64 %i.fj, %i.dv         ; 2 uses
  br i1 %.not54.i.i, label %bb.g, label %bb.m

bb.g:                                             ; preds = %.lr.ph
  %i.fk = zext i32 %.037.i.i206 to i64
  %i.fl = shl i64 %i.fk, %i.dx                    ; 4 uses
  %i.fm = icmp uge i64 %i.fj, %i.es
  %i.fn = sub nuw i64 %i.dv, %i.fj
  %.not50.i.i.i = icmp ult i64 %i.fn, %i.fl       ; 2 uses
  %or.cond51.i.i.i = or i1 %i.fm, %.not50.i.i.i
  br i1 %or.cond51.i.i.i, label %.critedge.i.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.g
  %i.fo = sext i32 %i.fe to i64
  %i.fp = getelementptr i8, ptr %3, i64 %i.fo
  %i.fq = getelementptr i8, ptr %i.fp, i64 -1     ; 2 uses
  br label %bb.h

bb.h:                                             ; preds = %.critedge2.i.i.i, %.lr.ph.i.i.i
  %.04052.i.i.i = phi i64 [ %i.fj, %.lr.ph.i.i.i ], [ %i.fr, %.critedge2.i.i.i ] ; 3 uses
  %i.fr = add i64 %.04052.i.i.i, %i.fl            ; 6 uses
  %i.fs = icmp ult i64 %i.fr, %i.es
  br i1 %i.fs, label %.critedge2.i.i.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ft = sub nuw i64 %i.es, %.04052.i.i.i
  %i.fu = sub nuw i64 %i.fr, %i.es
  %.not46.i.i.i = icmp ult i64 %i.ft, %i.fu
  br i1 %.not46.i.i.i, label %.critedge.i.i.i, label %.critedge2.i.i.i

.critedge2.i.i.i:                                 ; preds = %bb.i, %bb.h
  %i.fv = load i8, ptr %i.fq, align 1, !tbaa !18
  %i.fw = add i8 %i.fv, -1
  store i8 %i.fw, ptr %i.fq, align 1, !tbaa !18
  %i.fx = icmp uge i64 %i.fr, %i.es
  %i.fy = sub i64 %i.dv, %i.fr
  %.not.i.i.i = icmp ult i64 %i.fy, %i.fl         ; 2 uses
  %or.cond.i.i.i = or i1 %i.fx, %.not.i.i.i
  br i1 %or.cond.i.i.i, label %.critedge.i.i.i, label %bb.h, !llvm.loop !19

.critedge.i.i.i:                                  ; preds = %.critedge2.i.i.i, %bb.i, %bb.g
  %.040.lcssa.i.i.i = phi i64 [ %i.fj, %bb.g ], [ %.04052.i.i.i, %bb.i ], [ %i.fr, %.critedge2.i.i.i ] ; 5 uses
  %.not.lcssa.i.i.i = phi i1 [ %.not50.i.i.i, %bb.g ], [ false, %bb.i ], [ %.not.i.i.i, %.critedge2.i.i.i ]
  %i.fz = icmp uge i64 %.040.lcssa.i.i.i, %i.et
  %or.cond49.i.i.i = or i1 %i.fz, %.not.lcssa.i.i.i
  br i1 %or.cond49.i.i.i, label %bb.l, label %bb.j

bb.j:                                             ; preds = %.critedge.i.i.i
  %i.ga = add i64 %.040.lcssa.i.i.i, %i.fl        ; 2 uses
  %i.gb = icmp ult i64 %i.ga, %i.et
  br i1 %i.gb, label %_ZN17double_conversionL9RoundWeedENS_6VectorIcEEimmmmm.exit.i.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.gc = sub nuw i64 %i.et, %.040.lcssa.i.i.i
  %i.gd = sub nuw i64 %i.ga, %i.et
  %i.ge = icmp ugt i64 %i.gc, %i.gd
  br i1 %i.ge, label %_ZN17double_conversionL9RoundWeedENS_6VectorIcEEimmmmm.exit.i.i, label %bb.l

bb.l:                                             ; preds = %bb.k, %.critedge.i.i.i
  %.not48.i.i.i = icmp ugt i64 %.040.lcssa.i.i.i, 1
  %i.gf = icmp ule i64 %.040.lcssa.i.i.i, %i.eu
  %i.gg = and i1 %.not48.i.i.i, %i.gf
  br label %_ZN17double_conversionL9RoundWeedENS_6VectorIcEEimmmmm.exit.i.i

bb.m:                                             ; preds = %.lr.ph
  %i.gh = udiv i32 %.037.i.i206, 10
  br label %_ZN17double_conversionL9RoundWeedENS_6VectorIcEEimmmmm.exit.i.i

_ZN17double_conversionL9RoundWeedENS_6VectorIcEEimmmmm.exit.i.i: ; preds = %bb.m, %bb.l, %bb.k, %bb.j
  %.138.i.i = phi i32 [ %i.gh, %bb.m ], [ %.037.i.i206, %bb.j ], [ %.037.i.i206, %bb.k ], [ %.037.i.i206, %bb.l ]
  %.1.i.i = phi i1 [ %.0.i.i208, %bb.m ], [ false, %bb.j ], [ false, %bb.k ], [ %i.gg, %bb.l ] ; 3 uses
  br i1 %.not54.i.i, label %_ZN17double_conversionL6Grisu3EdNS_12FastDtoaModeENS_6VectorIcEEPiS3_.exit, label %bb.f, !llvm.loop !17

.preheader.i.i:                                   ; preds = %.preheader.i.i.preheader, %_ZN17double_conversionL9RoundWeedENS_6VectorIcEEimmmmm.exit79.i.i
  %.1.i = phi i32 [ %i.gu, %_ZN17double_conversionL9RoundWeedENS_6VectorIcEEimmmmm.exit79.i.i ], [ %smin.i, %.preheader.i.i.preheader ]
  %.sroa.015.0.i.i = phi i64 [ %i.gk, %_ZN17double_conversionL9RoundWeedENS_6VectorIcEEimmmmm.exit79.i.i ], [ %i.dv, %.preheader.i.i.preheader ]
  %.049.i.i = phi i64 [ %i.gt, %_ZN17double_conversionL9RoundWeedENS_6VectorIcEEimmmmm.exit79.i.i ], [ %i.ec, %.preheader.i.i.preheader ]
  %.047.i.i = phi i64 [ %i.gj, %_ZN17double_conversionL9RoundWeedENS_6VectorIcEEimmmmm.exit79.i.i ], [ 1, %.preheader.i.i.preheader ] ; 3 uses
  %.2.i.i = phi i1 [ %.3.i.i, %_ZN17double_conversionL9RoundWeedENS_6VectorIcEEimmmmm.exit79.i.i ], [ %.2.i.i.ph, %.preheader.i.i.preheader ]
  %i.gi = mul i64 %.049.i.i, 10                   ; 2 uses
  %i.gj = mul i64 %.047.i.i, 10                   ; 4 uses
  %i.gk = mul i64 %.sroa.015.0.i.i, 10            ; 5 uses
  %i.gl = lshr i64 %i.gi, %i.dx
  %i.gm = trunc i64 %i.gl to i8
  %i.gn = add i8 %i.gm, 48
  %i.go = load i32, ptr %5, align 4, !tbaa !16
  %i.gp = sext i32 %i.go to i64
  %i.gq = getelementptr inbounds i8, ptr %3, i64 %i.gp
  store i8 %i.gn, ptr %i.gq, align 1, !tbaa !18
  %i.gr = load i32, ptr %5, align 4, !tbaa !16
  %i.gs = add nsw i32 %i.gr, 1                    ; 2 uses
  store i32 %i.gs, ptr %5, align 4, !tbaa !16
  %i.gt = and i64 %i.gi, %i.eb                    ; 6 uses
  %i.gu = add nsw i32 %.1.i, -1                   ; 2 uses
  %.not.i.i = icmp ult i64 %i.gt, %i.gk           ; 2 uses
  br i1 %.not.i.i, label %bb.n, label %_ZN17double_conversionL9RoundWeedENS_6VectorIcEEimmmmm.exit79.i.i

bb.n:                                             ; preds = %.preheader.i.i
  %i.gv = mul i64 %i.gj, %i.er                    ; 2 uses
  %i.gw = sub i64 %i.gv, %i.gj                    ; 5 uses
  %i.gx = add i64 %i.gv, %i.gj                    ; 4 uses
  %i.gy = icmp uge i64 %i.gt, %i.gw
  %i.gz = sub nuw i64 %i.gk, %i.gt
  %.not50.i65.i.i = icmp ult i64 %i.gz, %i.dy     ; 2 uses
  %or.cond51.i66.i.i = or i1 %.not50.i65.i.i, %i.gy
  br i1 %or.cond51.i66.i.i, label %.critedge.i73.i.i, label %.lr.ph.i67.i.i

.lr.ph.i67.i.i:                                   ; preds = %bb.n
  %i.ha = sext i32 %i.gs to i64
  %i.hb = getelementptr i8, ptr %3, i64 %i.ha
  %i.hc = getelementptr i8, ptr %i.hb, i64 -1     ; 2 uses
  br label %bb.o

bb.o:                                             ; preds = %.critedge2.i70.i.i, %.lr.ph.i67.i.i
  %.04052.i68.i.i = phi i64 [ %i.gt, %.lr.ph.i67.i.i ], [ %i.hd, %.critedge2.i70.i.i ] ; 3 uses
  %i.hd = add i64 %.04052.i68.i.i, %i.dy          ; 6 uses
  %i.he = icmp ult i64 %i.hd, %i.gw
  br i1 %i.he, label %.critedge2.i70.i.i, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.hf = sub nuw i64 %i.gw, %.04052.i68.i.i
  %i.hg = sub nuw i64 %i.hd, %i.gw
  %.not46.i69.i.i = icmp ult i64 %i.hf, %i.hg
  br i1 %.not46.i69.i.i, label %.critedge.i73.i.i, label %.critedge2.i70.i.i

.critedge2.i70.i.i:                               ; preds = %bb.p, %bb.o
  %i.hh = load i8, ptr %i.hc, align 1, !tbaa !18
  %i.hi = add i8 %i.hh, -1
  store i8 %i.hi, ptr %i.hc, align 1, !tbaa !18
  %i.hj = icmp uge i64 %i.hd, %i.gw
  %i.hk = sub i64 %i.gk, %i.hd
  %.not.i71.i.i = icmp ult i64 %i.hk, %i.dy       ; 2 uses
  %or.cond.i72.i.i = or i1 %i.hj, %.not.i71.i.i
  br i1 %or.cond.i72.i.i, label %.critedge.i73.i.i, label %bb.o, !llvm.loop !19

.critedge.i73.i.i:                                ; preds = %.critedge2.i70.i.i, %bb.p, %bb.n
  %.040.lcssa.i74.i.i = phi i64 [ %i.gt, %bb.n ], [ %.04052.i68.i.i, %bb.p ], [ %i.hd, %.critedge2.i70.i.i ] ; 5 uses
  %.not.lcssa.i75.i.i = phi i1 [ %.not50.i65.i.i, %bb.n ], [ false, %bb.p ], [ %.not.i71.i.i, %.critedge2.i70.i.i ]
  %i.hl = icmp uge i64 %.040.lcssa.i74.i.i, %i.gx
  %or.cond49.i76.i.i = or i1 %i.hl, %.not.lcssa.i75.i.i
  br i1 %or.cond49.i76.i.i, label %bb.s, label %bb.q

bb.q:                                             ; preds = %.critedge.i73.i.i
  %i.hm = add i64 %.040.lcssa.i74.i.i, %i.dy      ; 2 uses
  %i.hn = icmp ult i64 %i.hm, %i.gx
  br i1 %i.hn, label %_ZN17double_conversionL9RoundWeedENS_6VectorIcEEimmmmm.exit79.i.i, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ho = sub nuw i64 %i.gx, %.040.lcssa.i74.i.i
  %i.hp = sub nuw i64 %i.hm, %i.gx
  %i.hq = icmp ugt i64 %i.ho, %i.hp
  br i1 %i.hq, label %_ZN17double_conversionL9RoundWeedENS_6VectorIcEEimmmmm.exit79.i.i, label %bb.s

bb.s:                                             ; preds = %bb.r, %.critedge.i73.i.i
  %i.hr = mul i64 %.047.i.i, 20
  %.not48.i77.i.i = icmp ule i64 %i.hr, %.040.lcssa.i74.i.i
  %.neg.i.i = mul i64 %.047.i.i, -40
  %i.hs = add i64 %.neg.i.i, %i.gk
  %i.ht = icmp ule i64 %.040.lcssa.i74.i.i, %i.hs
  %i.hu = and i1 %.not48.i77.i.i, %i.ht
  br label %_ZN17double_conversionL9RoundWeedENS_6VectorIcEEimmmmm.exit79.i.i

_ZN17double_conversionL9RoundWeedENS_6VectorIcEEimmmmm.exit79.i.i: ; preds = %bb.s, %bb.r, %bb.q, %.preheader.i.i
  %.3.i.i = phi i1 [ %.2.i.i, %.preheader.i.i ], [ %i.hu, %bb.s ], [ false, %bb.r ], [ false, %bb.q ] ; 2 uses
  br i1 %.not.i.i, label %_ZN17double_conversionL6Grisu3EdNS_12FastDtoaModeENS_6VectorIcEEPiS3_.exit, label %.preheader.i.i, !llvm.loop !20

_ZN17double_conversionL6Grisu3EdNS_12FastDtoaModeENS_6VectorIcEEPiS3_.exit: ; preds = %_ZN17double_conversionL9RoundWeedENS_6VectorIcEEimmmmm.exit.i.i, %_ZN17double_conversionL9RoundWeedENS_6VectorIcEEimmmmm.exit79.i.i
  %.2.i = phi i32 [ %i.gu, %_ZN17double_conversionL9RoundWeedENS_6VectorIcEEimmmmm.exit79.i.i ], [ %i.fg, %_ZN17double_conversionL9RoundWeedENS_6VectorIcEEimmmmm.exit.i.i ]
  %.4.i.i = phi i1 [ %.3.i.i, %_ZN17double_conversionL9RoundWeedENS_6VectorIcEEimmmmm.exit79.i.i ], [ %.1.i.i, %_ZN17double_conversionL9RoundWeedENS_6VectorIcEEimmmmm.exit.i.i ]
  %i.hv = load i32, ptr %i.b, align 4, !tbaa !16
  %i.hw = sub nsw i32 %.2.i, %i.hv
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #5
  br i1 %.4.i.i, label %bb.ak, label %bb.al

bb.t:                                             ; preds = %bb.a
  %i.hx = bitcast double %0 to i64                ; 4 uses
  %i.hy = and i64 %i.hx, 9218868437227405312
  %i.hz = icmp eq i64 %i.hy, 0
  %i.ia = or i64 %i.hx, 4503599627370496
  %i.ib = lshr i64 %i.hx, 52
  %i.ic = trunc nuw nsw i64 %i.ib to i32
  %i.id = and i32 %i.ic, 2047
  %i.ie = add nsw i32 %i.id, -1075
  br i1 %i.hz, label %.lr.ph.i.i25, label %_ZNK17double_conversion6Double17AsNormalizedDiyFpEv.exit.i14

.lr.ph.i.i25:                                     ; preds = %bb.t, %.lr.ph.i.i25
  %.010.i.i26 = phi i32 [ %i.ig, %.lr.ph.i.i25 ], [ -1074, %bb.t ]
  %.079.i.i27 = phi i64 [ %i.if, %.lr.ph.i.i25 ], [ %i.hx, %bb.t ] ; 2 uses
  %i.if = shl i64 %.079.i.i27, 1                  ; 2 uses
  %i.ig = add nsw i32 %.010.i.i26, -1             ; 2 uses
  %i.ih = and i64 %.079.i.i27, 2251799813685248
  %i.ii = icmp eq i64 %i.ih, 0
  br i1 %i.ii, label %.lr.ph.i.i25, label %_ZNK17double_conversion6Double17AsNormalizedDiyFpEv.exit.i14, !llvm.loop !8

_ZNK17double_conversion6Double17AsNormalizedDiyFpEv.exit.i14: ; preds = %.lr.ph.i.i25, %bb.t
  %.07.lcssa.i.i15 = phi i64 [ %i.ia, %bb.t ], [ %i.if, %.lr.ph.i.i25 ]
  %.0.lcssa.i.i16 = phi i32 [ %i.ie, %bb.t ], [ %i.ig, %.lr.ph.i.i25 ] ; 3 uses
  %i.ij = shl i64 %.07.lcssa.i.i15, 11            ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #5
  store i64 0, ptr %7, align 8, !tbaa !12
  %i.ik = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  store i32 0, ptr %i.ik, align 8, !tbaa !15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #5
  %i.il = sub nsw i32 -113, %.0.lcssa.i.i16
  %i.im = sub nsw i32 -85, %.0.lcssa.i.i16
  call void @_ZN17double_conversion16PowersOfTenCache36GetCachedPowerForBinaryExponentRangeEiiPNS_5DiyFpEPi(i32 noundef %i.il, i32 noundef %i.im, ptr noundef nonnull %7, ptr noundef nonnull %i.a)
  %i.in = lshr i64 %i.ij, 32                      ; 2 uses
  %i.io = and i64 %i.ij, 4294965248               ; 2 uses
  %i.ip = load i64, ptr %7, align 8, !tbaa !12    ; 2 uses
  %i.iq = lshr i64 %i.ip, 32                      ; 2 uses
  %i.ir = and i64 %i.ip, 4294967295               ; 2 uses
  %i.is = mul nuw i64 %i.iq, %i.in
  %i.it = mul nuw i64 %i.iq, %i.io                ; 2 uses
  %i.iu = mul nuw i64 %i.ir, %i.in                ; 2 uses
  %i.iv = mul nuw i64 %i.ir, %i.io
  %i.iw = lshr i64 %i.iv, 32
  %i.ix = and i64 %i.iu, 4294967295
  %i.iy = and i64 %i.it, 4294965248
  %i.iz = add nuw nsw i64 %i.ix, 2147483648
  %i.ja = add nuw nsw i64 %i.iz, %i.iw
  %i.jb = add nuw nsw i64 %i.ja, %i.iy
  %i.jc = load i32, ptr %i.ik, align 8, !tbaa !15
  %i.jd = add i32 %.0.lcssa.i.i16, 53
  %i.je = add i32 %i.jd, %i.jc                    ; 2 uses
  %i.jf = lshr i64 %i.iu, 32
  %i.jg = add nuw i64 %i.jf, %i.is
  %i.jh = lshr i64 %i.it, 32
  %i.ji = add nuw i64 %i.jg, %i.jh
  %i.jj = lshr i64 %i.jb, 32
  %i.jk = add nuw i64 %i.ji, %i.jj                ; 2 uses
  %i.jl = sub nsw i32 0, %i.je
  %i.jm = zext nneg i32 %i.jl to i64              ; 5 uses
  %i.jn = shl nuw i64 1, %i.jm                    ; 6 uses
  %i.jo = lshr i64 %i.jk, %i.jm
  %i.jp = trunc i64 %i.jo to i32                  ; 3 uses
  %i.jq = add i64 %i.jn, -1                       ; 2 uses
  %i.jr = and i64 %i.jk, %i.jq                    ; 3 uses
  %i.js = mul i32 %i.je, 1233
  %i.jt = add i32 %i.js, 80145
  %i.ju = ashr i32 %i.jt, 12                      ; 2 uses
  %i.jv = add nsw i32 %i.ju, 1                    ; 2 uses
  %i.jw = sext i32 %i.jv to i64
  %i.jx = getelementptr inbounds [4 x i8], ptr @_ZN17double_conversionL17kSmallPowersOfTenE, i64 %i.jw
  %i.jy = load i32, ptr %i.jx, align 4, !tbaa !16
  %i.jz = icmp ugt i32 %i.jy, %i.jp
  %spec.select.i.i.i17 = select i1 %i.jz, i32 %i.ju, i32 %i.jv ; 4 uses
  %i.ka = sext i32 %spec.select.i.i.i17 to i64
  %i.kb = getelementptr inbounds [4 x i8], ptr @_ZN17double_conversionL17kSmallPowersOfTenE, i64 %i.ka
  %i.kc = load i32, ptr %i.kb, align 4, !tbaa !16 ; 2 uses
  store i32 0, ptr %5, align 4, !tbaa !16
  %i.kd = icmp sgt i32 %spec.select.i.i.i17, 0
  br i1 %i.kd, label %.lr.ph.i21.i, label %._crit_edge.i.i

.lr.ph.i21.i:                                     ; preds = %_ZNK17double_conversion6Double17AsNormalizedDiyFpEv.exit.i14, %bb.u
  %i.ke = phi i32 [ %i.kl, %bb.u ], [ 0, %_ZNK17double_conversion6Double17AsNormalizedDiyFpEv.exit.i14 ]
  %.4.i = phi i32 [ %i.ko, %bb.u ], [ %spec.select.i.i.i17, %_ZNK17double_conversion6Double17AsNormalizedDiyFpEv.exit.i14 ] ; 2 uses
  %.04094.i.i = phi i32 [ %i.km, %bb.u ], [ %2, %_ZNK17double_conversion6Double17AsNormalizedDiyFpEv.exit.i14 ]
  %.04293.i.i = phi i32 [ %i.kn, %bb.u ], [ %i.jp, %_ZNK17double_conversion6Double17AsNormalizedDiyFpEv.exit.i14 ] ; 2 uses
  %.07792.i.i = phi i32 [ %i.kq, %bb.u ], [ %i.kc, %_ZNK17double_conversion6Double17AsNormalizedDiyFpEv.exit.i14 ] ; 4 uses
  %i.kf = udiv i32 %.04293.i.i, %.07792.i.i
  %i.kg = trunc i32 %i.kf to i8
  %i.kh = add i8 %i.kg, 48
  %i.ki = sext i32 %i.ke to i64
  %i.kj = getelementptr inbounds i8, ptr %3, i64 %i.ki
  store i8 %i.kh, ptr %i.kj, align 1, !tbaa !18
  %i.kk = load i32, ptr %5, align 4, !tbaa !16
  %i.kl = add nsw i32 %i.kk, 1                    ; 4 uses
  store i32 %i.kl, ptr %5, align 4, !tbaa !16
  %i.km = add nsw i32 %.04094.i.i, -1             ; 3 uses
  %i.kn = urem i32 %.04293.i.i, %.07792.i.i       ; 3 uses
  %i.ko = add nsw i32 %.4.i, -1                   ; 3 uses
  %i.kp = icmp eq i32 %i.km, 0
  br i1 %i.kp, label %.thread82.i.i, label %bb.u

bb.u:                                             ; preds = %.lr.ph.i21.i
  %i.kq = udiv i32 %.07792.i.i, 10                ; 2 uses
  %i.kr = icmp samesign ugt i32 %.4.i, 1
  br i1 %i.kr, label %.lr.ph.i21.i, label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %bb.u, %_ZNK17double_conversion6Double17AsNormalizedDiyFpEv.exit.i14
  %.pr.i = phi i32 [ 0, %_ZNK17double_conversion6Double17AsNormalizedDiyFpEv.exit.i14 ], [ %i.kl, %bb.u ] ; 2 uses
  %.0.i18 = phi i32 [ %spec.select.i.i.i17, %_ZNK17double_conversion6Double17AsNormalizedDiyFpEv.exit.i14 ], [ %i.ko, %bb.u ] ; 2 uses
  %.077.lcssa.i.i = phi i32 [ %i.kc, %_ZNK17double_conversion6Double17AsNormalizedDiyFpEv.exit.i14 ], [ %i.kq, %bb.u ]
  %.042.lcssa.i.i = phi i32 [ %i.jp, %_ZNK17double_conversion6Double17AsNormalizedDiyFpEv.exit.i14 ], [ %i.kn, %bb.u ]
  %.040.lcssa.i.i = phi i32 [ %2, %_ZNK17double_conversion6Double17AsNormalizedDiyFpEv.exit.i14 ], [ %i.km, %bb.u ] ; 3 uses
  %i.ks = icmp eq i32 %.040.lcssa.i.i, 0
  br i1 %i.ks, label %.thread82.i.i, label %.preheader.i.i19

.preheader.i.i19:                                 ; preds = %._crit_edge.i.i
  %i.kt = icmp sgt i32 %.040.lcssa.i.i, 0
  %i.ku = icmp ugt i64 %i.jr, 1
  %i.kv = select i1 %i.kt, i1 %i.ku, i1 false
  br i1 %i.kv, label %.lr.ph100.i.i, label %.thread

.thread82.i.i:                                    ; preds = %.lr.ph.i21.i, %._crit_edge.i.i
  %i.kw = phi i32 [ %.pr.i, %._crit_edge.i.i ], [ %i.kl, %.lr.ph.i21.i ] ; 2 uses
  %.3.i = phi i32 [ %.0.i18, %._crit_edge.i.i ], [ %i.ko, %.lr.ph.i21.i ] ; 3 uses
  %.07790.i.i = phi i32 [ %.077.lcssa.i.i, %._crit_edge.i.i ], [ %.07792.i.i, %.lr.ph.i21.i ]
  %.14385.i.i = phi i32 [ %.042.lcssa.i.i, %._crit_edge.i.i ], [ %i.kn, %.lr.ph.i21.i ]
  %i.kx = zext i32 %.14385.i.i to i64
  %i.ky = shl i64 %i.kx, %i.jm
  %i.kz = add i64 %i.ky, %i.jr                    ; 5 uses
  %i.la = zext i32 %.07790.i.i to i64
  %i.lb = shl i64 %i.la, %i.jm                    ; 4 uses
  %or.cond.i.i.i23 = icmp ugt i64 %i.lb, 2
  br i1 %or.cond.i.i.i23, label %bb.v, label %.thread

bb.v:                                             ; preds = %.thread82.i.i
  %i.lc = sub i64 %i.lb, %i.kz
  %i.ld = icmp ugt i64 %i.lc, %i.kz
  br i1 %i.ld, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.le = shl i64 %i.kz, 1
  %i.lf = sub i64 %i.lb, %i.le
  %.not31.i.i.i = icmp ult i64 %i.lf, 2
  br i1 %.not31.i.i.i, label %bb.x, label %.thread35

bb.x:                                             ; preds = %bb.w, %bb.v
  %i.lg = icmp ugt i64 %i.kz, 1
  br i1 %i.lg, label %bb.y, label %.thread

bb.y:                                             ; preds = %bb.x
  %i.lh = add i64 %i.kz, -1                       ; 2 uses
  %i.li = sub i64 %i.lb, %i.lh
  %.not32.i.i.i = icmp ugt i64 %i.li, %i.lh
  br i1 %.not32.i.i.i, label %.thread, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.lj = add nsw i32 %i.kw, -1                   ; 2 uses
  %i.lk = sext i32 %i.lj to i64
  %i.ll = getelementptr inbounds i8, ptr %3, i64 %i.lk ; 2 uses
  %i.lm = load i8, ptr %i.ll, align 1, !tbaa !18
  %i.ln = add i8 %i.lm, 1
  store i8 %i.ln, ptr %i.ll, align 1, !tbaa !18
  %i.lo = icmp sgt i32 %i.kw, 1
  br i1 %i.lo, label %.lr.ph.preheader.i.i.i, label %._crit_edge.i.i.i

.lr.ph.preheader.i.i.i:                           ; preds = %bb.z
  %.phi.trans.insert.i.i.i = zext nneg i32 %i.lj to i64 ; 2 uses
  %.phi.trans.insert41.i.i.i = getelementptr inbounds nuw i8, ptr %3, i64 %.phi.trans.insert.i.i.i
  %.pre.i.i.i = load i8, ptr %.phi.trans.insert41.i.i.i, align 1, !tbaa !18
  br label %.lr.ph.i.i.i24

.lr.ph.i.i.i24:                                   ; preds = %bb.aa, %.lr.ph.preheader.i.i.i
  %indvars.iv116.i.i = phi i64 [ %indvars.iv.next117.i.i, %bb.aa ], [ %.phi.trans.insert.i.i.i, %.lr.ph.preheader.i.i.i ] ; 3 uses
  %i.lp = phi i8 [ %i.lt, %bb.aa ], [ %.pre.i.i.i, %.lr.ph.preheader.i.i.i ]
  %.not33.i.i.i = icmp eq i8 %i.lp, 58
end_hunk_0
