Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lodepng/original/lodepng_util?download=true
inline.NumInlined: 864
inline.NumDeleted: 299
loop-unroll.NumCompletelyUnrolled: 10
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 13
begin_hunk_0_@_ZN7lodepng12convertToXYZEPfS0_PKhjjPK12LodePNGState:bb.a
  %i.ad = call noalias noundef ptr @malloc(i64 noundef %mul.val.i130) #32 ; 8 uses
  %i.ae = call noundef i32 @_Z15lodepng_convertPhPKhPK16LodePNGColorModeS4_jj(ptr noundef %i.ad, ptr noundef %2, ptr noundef nonnull %6, ptr noundef nonnull %i.a, i32 noundef %3, i32 noundef %4) ; 2 uses
  %.not124 = icmp eq i32 %i.ae, 0
  br i1 %.not124, label %bb.h, label %bb.n

bb.h:                                             ; preds = %bb.g
  %i.af = icmp ne i32 %.0109, 0
  %i.ag = icmp eq i32 %i.z, 2
  %or.cond = and i1 %i.af, %i.ag
  br i1 %or.cond, label %bb.i, label %bb.m

bb.i:                                             ; preds = %bb.h
  %i.ah = select i1 %i.e, i64 786432, i64 3072
  %i.ai = call noalias noundef ptr @malloc(i64 noundef %i.ah) #32 ; 4 uses
  %i.aj = add nsw i64 %i.f, -1
  %i.ak = uitofp nneg i64 %i.aj to float
  %i.al = fdiv float 1.000000e+00, %i.ak          ; 3 uses
  %i.am = getelementptr inbounds nuw i8, ptr %7, i64 128
  br label %bb.j

bb.j:                                             ; preds = %bb.j, %bb.i
  %.050.i = phi i64 [ 0, %bb.i ], [ %i.ar, %bb.j ] ; 3 uses
  %i.an = uitofp nneg i64 %.050.i to float
  %i.ao = fmul float %i.al, %i.an
  %i.ap = call fastcc noundef float @_ZN7lodepngL13iccForwardTRCEPKNS_15LodePNGICCCurveEf(ptr noundef readonly %i.am, float noundef %i.ao)
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %.050.i
  store float %i.ap, ptr %i.aq, align 4, !tbaa !58
  %i.ar = add nuw nsw i64 %.050.i, 1              ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.ar, %i.f
  br i1 %exitcond.not.i, label %_ZN7lodepngL24convertToXYZ_gamma_tableEPfmmPK11LodePNGInfojPKNS_10LodePNGICCE.exit, label %bb.j, !llvm.loop !1

_ZN7lodepngL24convertToXYZ_gamma_tableEPfmmPK11LodePNGInfojPKNS_10LodePNGICCE.exit: ; preds = %bb.j
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %i.f ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %7, i64 184
  br label %bb.k

bb.k:                                             ; preds = %bb.k, %_ZN7lodepngL24convertToXYZ_gamma_tableEPfmmPK11LodePNGInfojPKNS_10LodePNGICCE.exit
  %.050.i132 = phi i64 [ 0, %_ZN7lodepngL24convertToXYZ_gamma_tableEPfmmPK11LodePNGInfojPKNS_10LodePNGICCE.exit ], [ %i.ay, %bb.k ] ; 3 uses
  %i.au = uitofp nneg i64 %.050.i132 to float
  %i.av = fmul float %i.al, %i.au
  %i.aw = call fastcc noundef float @_ZN7lodepngL13iccForwardTRCEPKNS_15LodePNGICCCurveEf(ptr noundef readonly %i.at, float noundef %i.av)
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %i.as, i64 %.050.i132
  store float %i.aw, ptr %i.ax, align 4, !tbaa !58
  %i.ay = add nuw nsw i64 %.050.i132, 1           ; 2 uses
  %exitcond.not.i133 = icmp eq i64 %i.ay, %i.f
  br i1 %exitcond.not.i133, label %_ZN7lodepngL24convertToXYZ_gamma_tableEPfmmPK11LodePNGInfojPKNS_10LodePNGICCE.exit134, label %bb.k, !llvm.loop !1

_ZN7lodepngL24convertToXYZ_gamma_tableEPfmmPK11LodePNGInfojPKNS_10LodePNGICCE.exit134: ; preds = %bb.k
  %.idx = shl nuw nsw i64 %i.f, 3
  %i.az = getelementptr inbounds nuw i8, ptr %i.ai, i64 %.idx ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %7, i64 240
  br label %bb.l

bb.l:                                             ; preds = %bb.l, %_ZN7lodepngL24convertToXYZ_gamma_tableEPfmmPK11LodePNGInfojPKNS_10LodePNGICCE.exit134
  %.050.i135 = phi i64 [ 0, %_ZN7lodepngL24convertToXYZ_gamma_tableEPfmmPK11LodePNGInfojPKNS_10LodePNGICCE.exit134 ], [ %i.bf, %bb.l ] ; 3 uses
  %i.bb = uitofp nneg i64 %.050.i135 to float
  %i.bc = fmul float %i.al, %i.bb
  %i.bd = call fastcc noundef float @_ZN7lodepngL13iccForwardTRCEPKNS_15LodePNGICCCurveEf(ptr noundef readonly %i.ba, float noundef %i.bc)
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %i.az, i64 %.050.i135
  store float %i.bd, ptr %i.be, align 4, !tbaa !58
  %i.bf = add nuw nsw i64 %.050.i135, 1           ; 2 uses
  %exitcond.not.i136 = icmp eq i64 %i.bf, %i.f
  br i1 %exitcond.not.i136, label %_ZN7lodepngL24convertToXYZ_gamma_tableEPfmmPK11LodePNGInfojPKNS_10LodePNGICCE.exit137, label %bb.l, !llvm.loop !1

bb.m:                                             ; preds = %bb.h
  %i.bg = shl nuw nsw i64 %i.f, 2
  %i.bh = call noalias noundef ptr @malloc(i64 noundef %i.bg) #32 ; 4 uses
  call fastcc void @_ZN7lodepngL24convertToXYZ_gamma_tableEPfmmPK11LodePNGInfojPKNS_10LodePNGICCE(ptr noundef %i.bh, i64 noundef %i.f, i64 noundef 0, ptr noundef nonnull %i.b, i32 noundef %.0109, ptr noundef %7)
  br label %_ZN7lodepngL24convertToXYZ_gamma_tableEPfmmPK11LodePNGInfojPKNS_10LodePNGICCE.exit137

_ZN7lodepngL24convertToXYZ_gamma_tableEPfmmPK11LodePNGInfojPKNS_10LodePNGICCE.exit137: ; preds = %bb.l, %bb.m
  %.0108 = phi ptr [ %i.bh, %bb.m ], [ %i.ai, %bb.l ] ; 3 uses
  %.0107 = phi ptr [ %i.bh, %bb.m ], [ %i.as, %bb.l ] ; 2 uses
  %.0 = phi ptr [ %i.bh, %bb.m ], [ %i.az, %bb.l ] ; 2 uses
  %.not151 = icmp eq i64 %mul.i141, 0             ; 2 uses
  br i1 %i.e, label %.preheader, label %.preheader145

.preheader145:                                    ; preds = %_ZN7lodepngL24convertToXYZ_gamma_tableEPfmmPK11LodePNGInfojPKNS_10LodePNGICCE.exit137
  br i1 %.not151, label %.loopexit, label %.lr.ph

.preheader:                                       ; preds = %_ZN7lodepngL24convertToXYZ_gamma_tableEPfmmPK11LodePNGInfojPKNS_10LodePNGICCE.exit137
  br i1 %.not151, label %.loopexit, label %.lr.ph149

.lr.ph149:                                        ; preds = %.preheader, %.lr.ph149
  %.0112148 = phi i64 [ %i.cy, %.lr.ph149 ], [ 0, %.preheader ] ; 3 uses
  %i.bi = shl i64 %.0112148, 3
  %i.bj = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.bi ; 8 uses
  %i.bk = load i8, ptr %i.bj, align 1, !tbaa !21
  %i.bl = zext i8 %i.bk to i64
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bj, i64 1
  %i.bn = load i8, ptr %i.bm, align 1, !tbaa !21
  %i.bo = zext i8 %i.bn to i64
  %.idx125 = shl nuw nsw i64 %i.bl, 10
  %i.bp = getelementptr inbounds nuw i8, ptr %.0108, i64 %.idx125
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr %i.bp, i64 %i.bo
  %i.br = load float, ptr %i.bq, align 4, !tbaa !58
  %.idx144 = shl i64 %.0112148, 4
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 %.idx144 ; 4 uses
  store float %i.br, ptr %i.bs, align 4, !tbaa !58
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bj, i64 2
  %i.bu = load i8, ptr %i.bt, align 1, !tbaa !21
  %i.bv = zext i8 %i.bu to i64
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bj, i64 3
  %i.bx = load i8, ptr %i.bw, align 1, !tbaa !21
  %i.by = zext i8 %i.bx to i64
  %.idx126 = shl nuw nsw i64 %i.bv, 10
  %i.bz = getelementptr inbounds nuw i8, ptr %.0107, i64 %.idx126
  %i.ca = getelementptr inbounds nuw [4 x i8], ptr %i.bz, i64 %i.by
  %i.cb = load float, ptr %i.ca, align 4, !tbaa !58
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bs, i64 4
  store float %i.cb, ptr %i.cc, align 4, !tbaa !58
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bj, i64 4
  %i.ce = load i8, ptr %i.cd, align 1, !tbaa !21
  %i.cf = zext i8 %i.ce to i64
  %i.cg = getelementptr inbounds nuw i8, ptr %i.bj, i64 5
  %i.ch = load i8, ptr %i.cg, align 1, !tbaa !21
  %i.ci = zext i8 %i.ch to i64
  %.idx127 = shl nuw nsw i64 %i.cf, 10
  %i.cj = getelementptr inbounds nuw i8, ptr %.0, i64 %.idx127
  %i.ck = getelementptr inbounds nuw [4 x i8], ptr %i.cj, i64 %i.ci
  %i.cl = load float, ptr %i.ck, align 4, !tbaa !58
  %i.cm = getelementptr inbounds nuw i8, ptr %i.bs, i64 8
  store float %i.cl, ptr %i.cm, align 4, !tbaa !58
  %i.cn = getelementptr inbounds nuw i8, ptr %i.bj, i64 6
  %i.co = load i8, ptr %i.cn, align 1, !tbaa !21
  %i.cp = zext i8 %i.co to i32
  %i.cq = shl nuw nsw i32 %i.cp, 8
  %i.cr = getelementptr inbounds nuw i8, ptr %i.bj, i64 7
  %i.cs = load i8, ptr %i.cr, align 1, !tbaa !21
  %i.ct = zext i8 %i.cs to i32
  %i.cu = or disjoint i32 %i.cq, %i.ct
  %i.cv = uitofp nneg i32 %i.cu to float
  %i.cw = fmul nnan float %i.cv, f0x37800080
  %i.cx = getelementptr inbounds nuw i8, ptr %i.bs, i64 12
  store float %i.cw, ptr %i.cx, align 4, !tbaa !58
  %i.cy = add nuw i64 %.0112148, 1                ; 2 uses
  %exitcond153.not = icmp eq i64 %i.cy, %mul.i141
  br i1 %exitcond153.not, label %.loopexit, label %.lr.ph149, !llvm.loop !108

.lr.ph:                                           ; preds = %.preheader145, %.lr.ph
  %.1113147 = phi i64 [ %i.ea, %.lr.ph ], [ 0, %.preheader145 ] ; 2 uses
  %i.cz = shl i64 %.1113147, 2                    ; 5 uses
  %i.da = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.cz
  %i.db = load i8, ptr %i.da, align 1, !tbaa !21
  %i.dc = zext i8 %i.db to i64
  %i.dd = getelementptr inbounds nuw [4 x i8], ptr %.0108, i64 %i.dc
  %i.de = load float, ptr %i.dd, align 4, !tbaa !58
  %i.df = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.cz
  store float %i.de, ptr %i.df, align 4, !tbaa !58
  %i.dg = or disjoint i64 %i.cz, 1                ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.dg
  %i.di = load i8, ptr %i.dh, align 1, !tbaa !21
  %i.dj = zext i8 %i.di to i64
  %i.dk = getelementptr inbounds nuw [4 x i8], ptr %.0107, i64 %i.dj
  %i.dl = load float, ptr %i.dk, align 4, !tbaa !58
  %i.dm = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.dg
  store float %i.dl, ptr %i.dm, align 4, !tbaa !58
  %i.dn = or disjoint i64 %i.cz, 2                ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.dn
  %i.dp = load i8, ptr %i.do, align 1, !tbaa !21
  %i.dq = zext i8 %i.dp to i64
  %i.dr = getelementptr inbounds nuw [4 x i8], ptr %.0, i64 %i.dq
  %i.ds = load float, ptr %i.dr, align 4, !tbaa !58
  %i.dt = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.dn
  store float %i.ds, ptr %i.dt, align 4, !tbaa !58
  %i.du = or disjoint i64 %i.cz, 3                ; 2 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.du
  %i.dw = load i8, ptr %i.dv, align 1, !tbaa !21
  %i.dx = uitofp i8 %i.dw to float
  %i.dy = fmul nnan float %i.dx, f0x3B808081
  %i.dz = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.du
  store float %i.dy, ptr %i.dz, align 4, !tbaa !58
  %i.ea = add nuw i64 %.1113147, 1                ; 2 uses
  %exitcond.not = icmp eq i64 %i.ea, %mul.i141
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph, !llvm.loop !109

.loopexit:                                        ; preds = %.lr.ph, %.lr.ph149, %.preheader145, %.preheader
  %i.eb = call fastcc noundef i32 @_ZN7lodepngL17convertToXYZ_chrmEPfjjPK11LodePNGInfojPKNS_10LodePNGICCES0_(ptr noundef %0, i32 noundef %3, i32 noundef %4, ptr noundef nonnull %i.b, i32 noundef %.0109, ptr noundef %7, ptr noundef %1)
  br label %bb.n

bb.n:                                             ; preds = %.loopexit, %bb.g, %_ZN7lodepngL11validateICCEPKNS_10LodePNGICCE.exit, %bb.b
  %.3 = phi i32 [ 1, %bb.b ], [ %i.eb, %.loopexit ], [ 92, %_ZN7lodepngL11validateICCEPKNS_10LodePNGICCE.exit ], [ %i.ae, %bb.g ]
  %.0111 = phi ptr [ null, %bb.b ], [ %i.ad, %.loopexit ], [ null, %_ZN7lodepngL11validateICCEPKNS_10LodePNGICCE.exit ], [ %i.ad, %bb.g ]
  %.1 = phi ptr [ null, %bb.b ], [ %.0108, %.loopexit ], [ null, %_ZN7lodepngL11validateICCEPKNS_10LodePNGICCE.exit ], [ null, %bb.g ]
  %i.ec = load ptr, ptr %i.h, align 8, !tbaa !48
  call void @free(ptr noundef %i.ec) #28
  %i.ed = load ptr, ptr %i.i, align 8, !tbaa !48
  call void @free(ptr noundef %i.ed) #28
  %i.ee = load ptr, ptr %i.j, align 8, !tbaa !48
  call void @free(ptr noundef %i.ee) #28
  call void @free(ptr noundef %.0111) #28
  call void @free(ptr noundef %.1) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28
  ret i32 %.3
}

declare void @_Z23lodepng_color_mode_make16LodePNGColorTypej(ptr dead_on_unwind writable sret(%struct.LodePNGColorMode) align 8, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind memory(write, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none) uwtable
define internal fastcc noundef range(i32 0, 2) i32 @_ZN7lodepngL8parseICCEPNS_10LodePNGICCEPKhm(ptr nofree noundef nonnull writeonly captures(none) %0, ptr nofree noundef readonly %1, i64 noundef range(i64 0, 4294967296) %2) unnamed_addr #8 {
bb.a:
  %i.a = icmp samesign ult i64 %2, 132
  br i1 %i.a, label %.critedge243, label %_ZN7lodepngL18decodeICC15Fixed16EPKhmPm.exit

_ZN7lodepngL18decodeICC15Fixed16EPKhmPm.exit:     ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 84 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 68 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 124 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 2 uses
  store i32 0, ptr %i.e, align 4, !tbaa !59
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 240
  store i32 0, ptr %i.g, align 8, !tbaa !60
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 184
  store i32 0, ptr %i.h, align 8, !tbaa !60
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 76
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 92
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 100
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 108
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 116
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(64) %i.c, i8 0, i64 64, i1 false)
  %3 = load i8, ptr %i.u, align 1, !tbaa !21
  %4 = zext i8 %3 to i32
  %5 = getelementptr i8, ptr %1, i64 9
  %6 = load i8, ptr %5, align 1, !tbaa !21
  %7 = zext i8 %6 to i32                          ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %4, ptr %i.v, align 4, !tbaa !112
  %i.w = lshr i32 %7, 4
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %i.w, ptr %i.x, align 8, !tbaa !113
  %i.y = and i32 %7, 15
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 %i.y, ptr %i.z, align 4, !tbaa !114
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ab = load i32, ptr %i.aa, align 1            ; 2 uses
  %switch.selectcmp = icmp eq i32 %i.ab, 541214546
  %switch.select = select i1 %switch.selectcmp, i32 2, i32 0
  %switch.selectcmp419 = icmp eq i32 %i.ab, 1497453127
  %switch.select420 = select i1 %switch.selectcmp419, i32 1, i32 %switch.select
  store i32 %switch.select420, ptr %0, align 8, !tbaa !54
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 68
  %8 = load i8, ptr %i.ac, align 1, !tbaa !21
  %9 = zext i8 %8 to i32
  %10 = shl nuw i32 %9, 24
  %11 = getelementptr i8, ptr %1, i64 69
  %12 = load i8, ptr %11, align 1, !tbaa !21
  %13 = zext i8 %12 to i32
  %14 = shl nuw nsw i32 %13, 16
  %15 = or disjoint i32 %14, %10
  %16 = getelementptr i8, ptr %1, i64 70
  %17 = load i8, ptr %16, align 1, !tbaa !21
  %18 = zext i8 %17 to i32
  %19 = shl nuw nsw i32 %18, 8
  %20 = or disjoint i32 %15, %19
  %21 = getelementptr i8, ptr %1, i64 71
  %22 = load i8, ptr %21, align 1, !tbaa !21
  %23 = zext i8 %22 to i32
  %24 = or disjoint i32 %20, %23
  %i.ad = sitofp i32 %24 to float
  %i.ae = fmul nnan float %i.ad, f0x37800000
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 16
  store float %i.ae, ptr %i.af, align 8, !tbaa !58
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 72
  %25 = load i8, ptr %i.ag, align 1, !tbaa !21
  %26 = zext i8 %25 to i32
  %27 = shl nuw i32 %26, 24
  %28 = getelementptr i8, ptr %1, i64 73
  %29 = load i8, ptr %28, align 1, !tbaa !21
  %30 = zext i8 %29 to i32
  %31 = shl nuw nsw i32 %30, 16
  %32 = or disjoint i32 %31, %27
  %33 = getelementptr i8, ptr %1, i64 74
  %34 = load i8, ptr %33, align 1, !tbaa !21
  %35 = zext i8 %34 to i32
  %36 = shl nuw nsw i32 %35, 8
  %37 = or disjoint i32 %32, %36
  %38 = getelementptr i8, ptr %1, i64 75
  %39 = load i8, ptr %38, align 1, !tbaa !21
  %40 = zext i8 %39 to i32
  %41 = or disjoint i32 %37, %40
  %i.ah = sitofp i32 %41 to float
  %i.ai = fmul nnan float %i.ah, f0x37800000
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 20
  store float %i.ai, ptr %i.aj, align 4, !tbaa !58
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 76
  %42 = load i8, ptr %i.ak, align 1, !tbaa !21
  %43 = zext i8 %42 to i32
  %44 = shl nuw i32 %43, 24
  %45 = getelementptr i8, ptr %1, i64 77
  %46 = load i8, ptr %45, align 1, !tbaa !21
  %47 = zext i8 %46 to i32
  %48 = shl nuw nsw i32 %47, 16
  %49 = or disjoint i32 %48, %44
  %50 = getelementptr i8, ptr %1, i64 78
  %51 = load i8, ptr %50, align 1, !tbaa !21
  %52 = zext i8 %51 to i32
  %53 = shl nuw nsw i32 %52, 8
  %54 = or disjoint i32 %49, %53
  %55 = getelementptr i8, ptr %1, i64 79
  %56 = load i8, ptr %55, align 1, !tbaa !21
  %57 = zext i8 %56 to i32
  %58 = or disjoint i32 %54, %57
  %i.al = sitofp i32 %58 to float
  %i.am = fmul nnan float %i.al, f0x37800000
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 24
  store float %i.am, ptr %i.an, align 8, !tbaa !58
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 128
  %59 = load i8, ptr %i.ao, align 1, !tbaa !21
  %60 = zext i8 %59 to i64
  %61 = shl nuw nsw i64 %60, 24                   ; 2 uses
  %62 = getelementptr i8, ptr %1, i64 129
  %63 = load i8, ptr %62, align 1, !tbaa !21
  %64 = zext i8 %63 to i64
  %65 = shl nuw nsw i64 %64, 16                   ; 2 uses
  %66 = getelementptr i8, ptr %1, i64 130
  %67 = load i8, ptr %66, align 1, !tbaa !21
  %68 = zext i8 %67 to i64
  %69 = shl nuw nsw i64 %68, 8                    ; 2 uses
  %70 = getelementptr i8, ptr %1, i64 131
  %71 = load i8, ptr %70, align 1, !tbaa !21
  %i.ap = zext i8 %71 to i64                      ; 2 uses
  %.not225.not = icmp eq i64 %2, 132
  br i1 %.not225.not, label %.critedge243, label %.preheader

.preheader:                                       ; preds = %_ZN7lodepngL18decodeICC15Fixed16EPKhmPm.exit
  %72 = or disjoint i64 %65, %61
  %73 = or disjoint i64 %72, %69
  %74 = or disjoint i64 %73, %i.ap
  %.not410 = icmp eq i64 %74, 0
  br i1 %.not410, label %.critedge243, label %.lr.ph401

.lr.ph401:                                        ; preds = %.preheader
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 32
  %75 = or disjoint i64 %61, %65
  %76 = or disjoint i64 %75, %69
  %77 = or disjoint i64 %76, %i.ap
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 64
  br label %bb.c

bb.b:                                             ; preds = %.critedge
  %i.az = add nuw nsw i64 %.0214400, 1            ; 2 uses
  %exitcond.not = icmp eq i64 %i.az, %77
  br i1 %exitcond.not, label %.critedge243, label %bb.c, !llvm.loop !110

bb.c:                                             ; preds = %.lr.ph401, %bb.b
  %.0214400 = phi i64 [ 0, %.lr.ph401 ], [ %i.az, %bb.b ]
  %.0363399 = phi i64 [ 132, %.lr.ph401 ], [ %i.bh, %bb.b ] ; 10 uses
  %i.ba = add nuw nsw i64 %.0363399, 8            ; 2 uses
  %i.bb = icmp samesign ugt i64 %i.ba, %2
  br i1 %i.bb, label %_ZN7lodepngL15decodeICCUint32EPKhmPm.exit257, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 %.0363399
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 4
  %i.be = load i32, ptr %i.bd, align 1
  %i.bf = tail call i32 @llvm.bswap.i32(i32 %i.be)
  %i.bg = zext i32 %i.bf to i64
  br label %_ZN7lodepngL15decodeICCUint32EPKhmPm.exit257

_ZN7lodepngL15decodeICCUint32EPKhmPm.exit257:     ; preds = %bb.c, %bb.d
  %.0.i256 = phi i64 [ %i.bg, %bb.d ], [ 0, %bb.c ] ; 34 uses
  %i.bh = add nuw nsw i64 %.0363399, 12           ; 3 uses
  %i.bi = icmp samesign ugt i64 %i.bh, %2
  br i1 %i.bi, label %_ZN7lodepngL15decodeICCUint32EPKhmPm.exit259, label %bb.e

bb.e:                                             ; preds = %_ZN7lodepngL15decodeICCUint32EPKhmPm.exit257
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 %i.ba
  %i.bk = load i32, ptr %i.bj, align 1
  %i.bl = tail call i32 @llvm.bswap.i32(i32 %i.bk)
  br label %_ZN7lodepngL15decodeICCUint32EPKhmPm.exit259

_ZN7lodepngL15decodeICCUint32EPKhmPm.exit259:     ; preds = %_ZN7lodepngL15decodeICCUint32EPKhmPm.exit257, %bb.e
  %.0.i258 = phi i32 [ %i.bl, %bb.e ], [ 0, %_ZN7lodepngL15decodeICCUint32EPKhmPm.exit257 ] ; 2 uses
  %.not226 = icmp samesign ult i64 %i.bh, %2
  br i1 %.not226, label %bb.f, label %.critedge243

bb.f:                                             ; preds = %_ZN7lodepngL15decodeICCUint32EPKhmPm.exit259
  %.not227 = icmp samesign uge i64 %.0.i256, %2
  %i.bm = zext i32 %.0.i258 to i64
  %i.bn = add nuw nsw i64 %.0.i256, %i.bm
  %i.bo = icmp samesign ugt i64 %i.bn, %2
  %or.cond246 = select i1 %.not227, i1 true, i1 %i.bo
  %i.bp = icmp ult i32 %.0.i258, 8
  %or.cond247 = or i1 %i.bp, %or.cond246
  br i1 %or.cond247, label %.critedge243, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bq = getelementptr inbounds nuw i8, ptr %1, i64 %.0363399 ; 13 uses
  %i.br = load i8, ptr %i.bq, align 1, !tbaa !21
  switch i8 %i.br, label %_ZN7lodepngL9isICCwordEPKhmmPKc.exit284.thread [
    i8 119, label %bb.h
    i8 114, label %bb.n
    i8 103, label %bb.t
    i8 98, label %bb.z
  ]

bb.h:                                             ; preds = %bb.g
  %i.bs = getelementptr i8, ptr %i.bq, i64 1
  %i.bt = load i8, ptr %i.bs, align 1, !tbaa !21
  %i.bu = icmp eq i8 %i.bt, 116
  br i1 %i.bu, label %bb.i, label %_ZN7lodepngL9isICCwordEPKhmmPKc.exit284.thread

bb.i:                                             ; preds = %bb.h
  %i.bv = getelementptr i8, ptr %i.bq, i64 2
  %i.bw = load i8, ptr %i.bv, align 1, !tbaa !21
  %i.bx = icmp eq i8 %i.bw, 112
  br i1 %i.bx, label %_ZN7lodepngL9isICCwordEPKhmmPKc.exit, label %_ZN7lodepngL9isICCwordEPKhmmPKc.exit284.thread

_ZN7lodepngL9isICCwordEPKhmmPKc.exit:             ; preds = %bb.i
  %i.by = getelementptr i8, ptr %i.bq, i64 3
  %i.bz = load i8, ptr %i.by, align 1, !tbaa !21
  %.not = icmp eq i8 %i.bz, 116
  br i1 %.not, label %bb.j, label %_ZN7lodepngL9isICCwordEPKhmmPKc.exit284.thread

bb.j:                                             ; preds = %_ZN7lodepngL9isICCwordEPKhmmPKc.exit
  %i.ca = add nuw nsw i64 %.0.i256, 12            ; 2 uses
  %i.cb = icmp samesign ugt i64 %i.ca, %2
  br i1 %i.cb, label %_ZN7lodepngL18decodeICC15Fixed16EPKhmPm.exit262, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.cc = getelementptr inbounds nuw i8, ptr %1, i64 %.0.i256
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 8
  %i.ce = load i32, ptr %i.cd, align 1
  %i.cf = tail call i32 @llvm.bswap.i32(i32 %i.ce)
  %i.cg = sitofp i32 %i.cf to float
  %i.ch = fmul nnan float %i.cg, f0x37800000
  br label %_ZN7lodepngL18decodeICC15Fixed16EPKhmPm.exit262

_ZN7lodepngL18decodeICC15Fixed16EPKhmPm.exit262:  ; preds = %bb.j, %bb.k
  %.0.i.i261 = phi float [ %i.ch, %bb.k ], [ 0.000000e+00, %bb.j ]
  store float %.0.i.i261, ptr %i.i, align 8, !tbaa !58
  %i.ci = add nuw nsw i64 %.0.i256, 16            ; 2 uses
  %i.cj = icmp samesign ugt i64 %i.ci, %2
  br i1 %i.cj, label %_ZN7lodepngL18decodeICC15Fixed16EPKhmPm.exit264, label %bb.l

bb.l:                                             ; preds = %_ZN7lodepngL18decodeICC15Fixed16EPKhmPm.exit262
  %i.ck = getelementptr inbounds nuw i8, ptr %1, i64 %i.ca
  %i.cl = load i32, ptr %i.ck, align 1
  %i.cm = tail call i32 @llvm.bswap.i32(i32 %i.cl)
  %i.cn = sitofp i32 %i.cm to float
  %i.co = fmul nnan float %i.cn, f0x37800000
  br label %_ZN7lodepngL18decodeICC15Fixed16EPKhmPm.exit264

_ZN7lodepngL18decodeICC15Fixed16EPKhmPm.exit264:  ; preds = %_ZN7lodepngL18decodeICC15Fixed16EPKhmPm.exit262, %bb.l
  %.0.i.i263 = phi float [ %i.co, %bb.l ], [ 0.000000e+00, %_ZN7lodepngL18decodeICC15Fixed16EPKhmPm.exit262 ]
  store float %.0.i.i263, ptr %i.k, align 4, !tbaa !58
  %i.cp = add nuw nsw i64 %.0.i256, 20            ; 2 uses
  %i.cq = icmp samesign ugt i64 %i.cp, %2
  br i1 %i.cq, label %_ZN7lodepngL18decodeICC15Fixed16EPKhmPm.exit266, label %bb.m

bb.m:                                             ; preds = %_ZN7lodepngL18decodeICC15Fixed16EPKhmPm.exit264
  %i.cr = getelementptr inbounds nuw i8, ptr %1, i64 %i.ci
  %i.cs = load i32, ptr %i.cr, align 1
  %i.ct = tail call i32 @llvm.bswap.i32(i32 %i.cs)
  %i.cu = sitofp i32 %i.ct to float
  %i.cv = fmul nnan float %i.cu, f0x37800000
  br label %_ZN7lodepngL18decodeICC15Fixed16EPKhmPm.exit266

_ZN7lodepngL18decodeICC15Fixed16EPKhmPm.exit266:  ; preds = %_ZN7lodepngL18decodeICC15Fixed16EPKhmPm.exit264, %bb.m
  %.0.i.i265 = phi float [ %i.cv, %bb.m ], [ 0.000000e+00, %_ZN7lodepngL18decodeICC15Fixed16EPKhmPm.exit264 ]
  store float %.0.i.i265, ptr %i.j, align 8, !tbaa !58
  store i32 1, ptr %i.c, align 4, !tbaa !56
  br label %.critedge

bb.n:                                             ; preds = %bb.g
  %i.cw = getelementptr i8, ptr %i.bq, i64 1
  %i.cx = load i8, ptr %i.cw, align 1, !tbaa !21
  %i.cy = icmp eq i8 %i.cx, 88
  br i1 %i.cy, label %bb.o, label %_ZN7lodepngL9isICCwordEPKhmmPKc.exit284.thread

bb.o:                                             ; preds = %bb.n
  %i.cz = getelementptr i8, ptr %i.bq, i64 2
  %i.da = load i8, ptr %i.cz, align 1, !tbaa !21
  %i.db = icmp eq i8 %i.da, 89
  br i1 %i.db, label %_ZN7lodepngL9isICCwordEPKhmmPKc.exit268, label %_ZN7lodepngL9isICCwordEPKhmmPKc.exit284.thread

_ZN7lodepngL9isICCwordEPKhmmPKc.exit268:          ; preds = %bb.o
  %i.dc = getelementptr i8, ptr %i.bq, i64 3
  %i.dd = load i8, ptr %i.dc, align 1, !tbaa !21
  %.not390 = icmp eq i8 %i.dd, 90
  br i1 %.not390, label %bb.p, label %_ZN7lodepngL9isICCwordEPKhmmPKc.exit284.thread

bb.p:                                             ; preds = %_ZN7lodepngL9isICCwordEPKhmmPKc.exit268
  %i.de = add nuw nsw i64 %.0.i256, 12            ; 2 uses
  %i.df = icmp samesign ugt i64 %i.de, %2
  br i1 %i.df, label %_ZN7lodepngL18decodeICC15Fixed16EPKhmPm.exit270, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.dg = getelementptr inbounds nuw i8, ptr %1, i64 %.0.i256
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 8
  %i.di = load i32, ptr %i.dh, align 1
  %i.dj = tail call i32 @llvm.bswap.i32(i32 %i.di)
  %i.dk = sitofp i32 %i.dj to float
  %i.dl = fmul nnan float %i.dk, f0x37800000
  br label %_ZN7lodepngL18decodeICC15Fixed16EPKhmPm.exit270

_ZN7lodepngL18decodeICC15Fixed16EPKhmPm.exit270:  ; preds = %bb.p, %bb.q
  %.0.i.i269 = phi float [ %i.dl, %bb.q ], [ 0.000000e+00, %bb.p ]
  store float %.0.i.i269, ptr %i.l, align 8, !tbaa !58
  %i.dm = add nuw nsw i64 %.0.i256, 16            ; 2 uses
  %i.dn = icmp samesign ugt i64 %i.dm, %2
  br i1 %i.dn, label %_ZN7lodepngL18decodeICC15Fixed16EPKhmPm.exit272, label %bb.r

bb.r:                                             ; preds = %_ZN7lodepngL18decodeICC15Fixed16EPKhmPm.exit270
  %i.do = getelementptr inbounds nuw i8, ptr %1, i64 %i.de
  %i.dp = load i32, ptr %i.do, align 1
  %i.dq = tail call i32 @llvm.bswap.i32(i32 %i.dp)
  %i.dr = sitofp i32 %i.dq to float
  %i.ds = fmul nnan float %i.dr, f0x37800000
  br label %_ZN7lodepngL18decodeICC15Fixed16EPKhmPm.exit272

_ZN7lodepngL18decodeICC15Fixed16EPKhmPm.exit272:  ; preds = %_ZN7lodepngL18decodeICC15Fixed16EPKhmPm.exit270, %bb.r
  %.0.i.i271 = phi float [ %i.ds, %bb.r ], [ 0.000000e+00, %_ZN7lodepngL18decodeICC15Fixed16EPKhmPm.exit270 ]
  store float %.0.i.i271, ptr %i.n, align 4, !tbaa !58
  %i.dt = add nuw nsw i64 %.0.i256, 20            ; 2 uses
  %i.du = icmp samesign ugt i64 %i.dt, %2
  br i1 %i.du, label %_ZN7lodepngL18decodeICC15Fixed16EPKhmPm.exit274, label %bb.s

bb.s:                                             ; preds = %_ZN7lodepngL18decodeICC15Fixed16EPKhmPm.exit272
  %i.dv = getelementptr inbounds nuw i8, ptr %1, i64 %i.dm
  %i.dw = load i32, ptr %i.dv, align 1
  %i.dx = tail call i32 @llvm.bswap.i32(i32 %i.dw)
  %i.dy = sitofp i32 %i.dx to float
  %i.dz = fmul nnan float %i.dy, f0x37800000
  br label %_ZN7lodepngL18decodeICC15Fixed16EPKhmPm.exit274

_ZN7lodepngL18decodeICC15Fixed16EPKhmPm.exit274:  ; preds = %_ZN7lodepngL18decodeICC15Fixed16EPKhmPm.exit272, %bb.s
  %.0.i.i273 = phi float [ %i.dz, %bb.s ], [ 0.000000e+00, %_ZN7lodepngL18decodeICC15Fixed16EPKhmPm.exit272 ]
  store float %.0.i.i273, ptr %i.m, align 8, !tbaa !58
  store i32 1, ptr %i.b, align 4, !tbaa !55
  br label %.critedge

bb.t:                                             ; preds = %bb.g
  %i.ea = getelementptr i8, ptr %i.bq, i64 1
  %i.eb = load i8, ptr %i.ea, align 1, !tbaa !21
  %i.ec = icmp eq i8 %i.eb, 88
  br i1 %i.ec, label %bb.u, label %_ZN7lodepngL9isICCwordEPKhmmPKc.exit284.thread

bb.u:                                             ; preds = %bb.t
  %i.ed = getelementptr i8, ptr %i.bq, i64 2
  %i.ee = load i8, ptr %i.ed, align 1, !tbaa !21
  %i.ef = icmp eq i8 %i.ee, 89
end_hunk_0
begin_hunk_1_@_ZN7lodepngL8parseICCEPNS_10LodePNGICCEPKhm:bb.a
  %.0.i.i287 = phi float [ %i.ga, %bb.ad ], [ 0.000000e+00, %_ZN7lodepngL18decodeICC15Fixed16EPKhmPm.exit286 ]
  store float %.0.i.i287, ptr %i.t, align 4, !tbaa !58
  %i.gb = add nuw nsw i64 %.0.i256, 20            ; 2 uses
  %i.gc = icmp samesign ugt i64 %i.gb, %2
  br i1 %i.gc, label %_ZN7lodepngL18decodeICC15Fixed16EPKhmPm.exit290, label %bb.ae

bb.ae:                                            ; preds = %_ZN7lodepngL18decodeICC15Fixed16EPKhmPm.exit288
  %i.gd = getelementptr inbounds nuw i8, ptr %1, i64 %i.fu
  %i.ge = load i32, ptr %i.gd, align 1
  %i.gf = tail call i32 @llvm.bswap.i32(i32 %i.ge)
  %i.gg = sitofp i32 %i.gf to float
  %i.gh = fmul nnan float %i.gg, f0x37800000
  br label %_ZN7lodepngL18decodeICC15Fixed16EPKhmPm.exit290

_ZN7lodepngL18decodeICC15Fixed16EPKhmPm.exit290:  ; preds = %_ZN7lodepngL18decodeICC15Fixed16EPKhmPm.exit288, %bb.ae
  %.0.i.i289 = phi float [ %i.gh, %bb.ae ], [ 0.000000e+00, %_ZN7lodepngL18decodeICC15Fixed16EPKhmPm.exit288 ]
  store float %.0.i.i289, ptr %i.s, align 8, !tbaa !58
  store i32 1, ptr %i.b, align 4, !tbaa !55
  br label %.critedge

_ZN7lodepngL9isICCwordEPKhmmPKc.exit284.thread:   ; preds = %bb.g, %_ZN7lodepngL9isICCwordEPKhmmPKc.exit, %bb.i, %bb.h, %_ZN7lodepngL9isICCwordEPKhmmPKc.exit268, %bb.o, %bb.n, %_ZN7lodepngL9isICCwordEPKhmmPKc.exit276, %bb.u, %bb.t, %bb.z, %bb.aa, %_ZN7lodepngL9isICCwordEPKhmmPKc.exit284
  %i.gi = tail call fastcc noundef i32 @_ZN7lodepngL9isICCwordEPKhmmPKc(ptr noundef nonnull %1, i64 noundef %2, i64 noundef %.0363399, ptr noundef nonnull @.str.8)
  %.not232 = icmp eq i32 %i.gi, 0
  br i1 %.not232, label %bb.ap, label %bb.af

bb.af:                                            ; preds = %_ZN7lodepngL9isICCwordEPKhmmPKc.exit284.thread
  %i.gj = add nuw nsw i64 %.0.i256, 12            ; 2 uses
  %i.gk = icmp samesign ugt i64 %i.gj, %2
  br i1 %i.gk, label %_ZN7lodepngL18decodeICC15Fixed16EPKhmPm.exit292, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.gl = getelementptr inbounds nuw i8, ptr %1, i64 %.0.i256
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gl, i64 8
  %i.gn = load i32, ptr %i.gm, align 1
  %i.go = tail call i32 @llvm.bswap.i32(i32 %i.gn)
  %i.gp = sitofp i32 %i.go to float
  %i.gq = fmul nnan float %i.gp, f0x37800000
  br label %_ZN7lodepngL18decodeICC15Fixed16EPKhmPm.exit292

_ZN7lodepngL18decodeICC15Fixed16EPKhmPm.exit292:  ; preds = %bb.af, %bb.ag
  %.0.i.i291 = phi float [ %i.gq, %bb.ag ], [ 0.000000e+00, %bb.af ]
  store float %.0.i.i291, ptr %i.aq, align 8, !tbaa !58
  %i.gr = add nuw nsw i64 %.0.i256, 16            ; 2 uses
  %i.gs = icmp samesign ugt i64 %i.gr, %2
  br i1 %i.gs, label %_ZN7lodepngL18decodeICC15Fixed16EPKhmPm.exit292.1, label %bb.ah

bb.ah:                                            ; preds = %_ZN7lodepngL18decodeICC15Fixed16EPKhmPm.exit292
  %i.gt = getelementptr inbounds nuw i8, ptr %1, i64 %i.gj
  %i.gu = load i32, ptr %i.gt, align 1
  %i.gv = tail call i32 @llvm.bswap.i32(i32 %i.gu)
  %i.gw = sitofp i32 %i.gv to float
  %i.gx = fmul nnan float %i.gw, f0x37800000
  br label %_ZN7lodepngL18decodeICC15Fixed16EPKhmPm.exit292.1

_ZN7lodepngL18decodeICC15Fixed16EPKhmPm.exit292.1: ; preds = %bb.ah, %_ZN7lodepngL18decodeICC15Fixed16EPKhmPm.exit292
  %.0.i.i291.1 = phi float [ %i.gx, %bb.ah ], [ 0.000000e+00, %_ZN7lodepngL18decodeICC15Fixed16EPKhmPm.exit292 ]
  store float %.0.i.i291.1, ptr %i.ar, align 4, !tbaa !58
  %i.gy = add nuw nsw i64 %.0.i256, 20            ; 2 uses
  %i.gz = icmp samesign ugt i64 %i.gy, %2
  br i1 %i.gz, label %_ZN7lodepngL18decodeICC15Fixed16EPKhmPm.exit292.2, label %bb.ai

bb.ai:                                            ; preds = %_ZN7lodepngL18decodeICC15Fixed16EPKhmPm.exit292.1
  %i.ha = getelementptr inbounds nuw i8, ptr %1, i64 %i.gr
  %i.hb = load i32, ptr %i.ha, align 1
  %i.hc = tail call i32 @llvm.bswap.i32(i32 %i.hb)
  %i.hd = sitofp i32 %i.hc to float
  %i.he = fmul nnan float %i.hd, f0x37800000
  br label %_ZN7lodepngL18decodeICC15Fixed16EPKhmPm.exit292.2

_ZN7lodepngL18decodeICC15Fixed16EPKhmPm.exit292.2: ; preds = %bb.ai, %_ZN7lodepngL18decodeICC15Fixed16EPKhmPm.exit292.1
  %.0.i.i291.2 = phi float [ %i.he, %bb.ai ], [ 0.000000e+00, %_ZN7lodepngL18decodeICC15Fixed16EPKhmPm.exit292.1 ]
  store float %.0.i.i291.2, ptr %i.as, align 8, !tbaa !58
  %i.hf = add nuw nsw i64 %.0.i256, 24            ; 2 uses
  %i.hg = icmp samesign ugt i64 %i.hf, %2
  br i1 %i.hg, label %_ZN7lodepngL18decodeICC15Fixed16EPKhmPm.exit292.3, label %bb.aj

bb.aj:                                            ; preds = %_ZN7lodepngL18decodeICC15Fixed16EPKhmPm.exit292.2
  %i.hh = getelementptr inbounds nuw i8, ptr %1, i64 %i.gy
  %i.hi = load i32, ptr %i.hh, align 1
  %i.hj = tail call i32 @llvm.bswap.i32(i32 %i.hi)
  %i.hk = sitofp i32 %i.hj to float
  %i.hl = fmul nnan float %i.hk, f0x37800000
  br label %_ZN7lodepngL18decodeICC15Fixed16EPKhmPm.exit292.3

_ZN7lodepngL18decodeICC15Fixed16EPKhmPm.exit292.3: ; preds = %bb.aj, %_ZN7lodepngL18decodeICC15Fixed16EPKhmPm.exit292.2
  %.0.i.i291.3 = phi float [ %i.hl, %bb.aj ], [ 0.000000e+00, %_ZN7lodepngL18decodeICC15Fixed16EPKhmPm.exit292.2 ]
  store float %.0.i.i291.3, ptr %i.at, align 4, !tbaa !58
  %i.hm = add nuw nsw i64 %.0.i256, 28            ; 2 uses
  %i.hn = icmp samesign ugt i64 %i.hm, %2
  br i1 %i.hn, label %_ZN7lodepngL18decodeICC15Fixed16EPKhmPm.exit292.4, label %bb.ak

bb.ak:                                            ; preds = %_ZN7lodepngL18decodeICC15Fixed16EPKhmPm.exit292.3
  %i.ho = getelementptr inbounds nuw i8, ptr %1, i64 %i.hf
  %i.hp = load i32, ptr %i.ho, align 1
  %i.hq = tail call i32 @llvm.bswap.i32(i32 %i.hp)
  %i.hr = sitofp i32 %i.hq to float
  %i.hs = fmul nnan float %i.hr, f0x37800000
  br label %_ZN7lodepngL18decodeICC15Fixed16EPKhmPm.exit292.4

_ZN7lodepngL18decodeICC15Fixed16EPKhmPm.exit292.4: ; preds = %bb.ak, %_ZN7lodepngL18decodeICC15Fixed16EPKhmPm.exit292.3
  %.0.i.i291.4 = phi float [ %i.hs, %bb.ak ], [ 0.000000e+00, %_ZN7lodepngL18decodeICC15Fixed16EPKhmPm.exit292.3 ]
  store float %.0.i.i291.4, ptr %i.au, align 8, !tbaa !58
  %i.ht = add nuw nsw i64 %.0.i256, 32            ; 2 uses
  %i.hu = icmp samesign ugt i64 %i.ht, %2
  br i1 %i.hu, label %_ZN7lodepngL18decodeICC15Fixed16EPKhmPm.exit292.5, label %bb.al

bb.al:                                            ; preds = %_ZN7lodepngL18decodeICC15Fixed16EPKhmPm.exit292.4
  %i.hv = getelementptr inbounds nuw i8, ptr %1, i64 %i.hm
  %i.hw = load i32, ptr %i.hv, align 1
  %i.hx = tail call i32 @llvm.bswap.i32(i32 %i.hw)
  %i.hy = sitofp i32 %i.hx to float
  %i.hz = fmul nnan float %i.hy, f0x37800000
  br label %_ZN7lodepngL18decodeICC15Fixed16EPKhmPm.exit292.5

_ZN7lodepngL18decodeICC15Fixed16EPKhmPm.exit292.5: ; preds = %bb.al, %_ZN7lodepngL18decodeICC15Fixed16EPKhmPm.exit292.4
  %.0.i.i291.5 = phi float [ %i.hz, %bb.al ], [ 0.000000e+00, %_ZN7lodepngL18decodeICC15Fixed16EPKhmPm.exit292.4 ]
  store float %.0.i.i291.5, ptr %i.av, align 4, !tbaa !58
  %i.ia = add nuw nsw i64 %.0.i256, 36            ; 2 uses
  %i.ib = icmp samesign ugt i64 %i.ia, %2
  br i1 %i.ib, label %_ZN7lodepngL18decodeICC15Fixed16EPKhmPm.exit292.6, label %bb.am

bb.am:                                            ; preds = %_ZN7lodepngL18decodeICC15Fixed16EPKhmPm.exit292.5
  %i.ic = getelementptr inbounds nuw i8, ptr %1, i64 %i.ht
  %i.id = load i32, ptr %i.ic, align 1
  %i.ie = tail call i32 @llvm.bswap.i32(i32 %i.id)
  %i.if = sitofp i32 %i.ie to float
  %i.ig = fmul nnan float %i.if, f0x37800000
  br label %_ZN7lodepngL18decodeICC15Fixed16EPKhmPm.exit292.6

_ZN7lodepngL18decodeICC15Fixed16EPKhmPm.exit292.6: ; preds = %bb.am, %_ZN7lodepngL18decodeICC15Fixed16EPKhmPm.exit292.5
  %.0.i.i291.6 = phi float [ %i.ig, %bb.am ], [ 0.000000e+00, %_ZN7lodepngL18decodeICC15Fixed16EPKhmPm.exit292.5 ]
  store float %.0.i.i291.6, ptr %i.aw, align 8, !tbaa !58
  %i.ih = add nuw nsw i64 %.0.i256, 40            ; 2 uses
  %i.ii = icmp samesign ugt i64 %i.ih, %2
  br i1 %i.ii, label %_ZN7lodepngL18decodeICC15Fixed16EPKhmPm.exit292.7, label %bb.an

bb.an:                                            ; preds = %_ZN7lodepngL18decodeICC15Fixed16EPKhmPm.exit292.6
  %i.ij = getelementptr inbounds nuw i8, ptr %1, i64 %i.ia
  %i.ik = load i32, ptr %i.ij, align 1
  %i.il = tail call i32 @llvm.bswap.i32(i32 %i.ik)
  %i.im = sitofp i32 %i.il to float
  %i.in = fmul nnan float %i.im, f0x37800000
  br label %_ZN7lodepngL18decodeICC15Fixed16EPKhmPm.exit292.7

_ZN7lodepngL18decodeICC15Fixed16EPKhmPm.exit292.7: ; preds = %bb.an, %_ZN7lodepngL18decodeICC15Fixed16EPKhmPm.exit292.6
  %.0.i.i291.7 = phi float [ %i.in, %bb.an ], [ 0.000000e+00, %_ZN7lodepngL18decodeICC15Fixed16EPKhmPm.exit292.6 ]
  store float %.0.i.i291.7, ptr %i.ax, align 4, !tbaa !58
  %i.io = add nuw nsw i64 %.0.i256, 44            ; 2 uses
  %i.ip = icmp samesign ugt i64 %i.io, %2
  br i1 %i.ip, label %_ZN7lodepngL18decodeICC15Fixed16EPKhmPm.exit292.8, label %bb.ao

bb.ao:                                            ; preds = %_ZN7lodepngL18decodeICC15Fixed16EPKhmPm.exit292.7
  %i.iq = getelementptr inbounds nuw i8, ptr %1, i64 %i.ih
  %i.ir = load i32, ptr %i.iq, align 1
  %i.is = tail call i32 @llvm.bswap.i32(i32 %i.ir)
  %i.it = sitofp i32 %i.is to float
  %i.iu = fmul nnan float %i.it, f0x37800000
  br label %_ZN7lodepngL18decodeICC15Fixed16EPKhmPm.exit292.8

_ZN7lodepngL18decodeICC15Fixed16EPKhmPm.exit292.8: ; preds = %bb.ao, %_ZN7lodepngL18decodeICC15Fixed16EPKhmPm.exit292.7
  %.0.i.i291.8 = phi float [ %i.iu, %bb.ao ], [ 0.000000e+00, %_ZN7lodepngL18decodeICC15Fixed16EPKhmPm.exit292.7 ]
  store float %.0.i.i291.8, ptr %i.ay, align 8, !tbaa !58
  store i32 1, ptr %i.e, align 4, !tbaa !59
  br label %.critedge

bb.ap:                                            ; preds = %_ZN7lodepngL9isICCwordEPKhmmPKc.exit284.thread
  %i.iv = tail call fastcc noundef i32 @_ZN7lodepngL9isICCwordEPKhmmPKc(ptr noundef %1, i64 noundef %2, i64 noundef %.0363399, ptr noundef nonnull @.str.9)
  %.not233 = icmp eq i32 %i.iv, 0
  br i1 %.not233, label %bb.aq, label %bb.at

bb.aq:                                            ; preds = %bb.ap
  %i.iw = tail call fastcc noundef i32 @_ZN7lodepngL9isICCwordEPKhmmPKc(ptr noundef %1, i64 noundef %2, i64 noundef %.0363399, ptr noundef nonnull @.str.10)
  %.not234 = icmp eq i32 %i.iw, 0
  br i1 %.not234, label %bb.ar, label %bb.at

bb.ar:                                            ; preds = %bb.aq
  %i.ix = tail call fastcc noundef i32 @_ZN7lodepngL9isICCwordEPKhmmPKc(ptr noundef %1, i64 noundef %2, i64 noundef %.0363399, ptr noundef nonnull @.str.11)
  %.not235 = icmp eq i32 %i.ix, 0
  br i1 %.not235, label %bb.as, label %bb.at

bb.as:                                            ; preds = %bb.ar
  %i.iy = tail call fastcc noundef i32 @_ZN7lodepngL9isICCwordEPKhmmPKc(ptr noundef %1, i64 noundef %2, i64 noundef %.0363399, ptr noundef nonnull @.str.12)
  %.not236 = icmp eq i32 %i.iy, 0
  br i1 %.not236, label %.critedge, label %bb.at

bb.at:                                            ; preds = %bb.as, %bb.ar, %bb.aq, %bb.ap
  %i.iz = getelementptr inbounds nuw i8, ptr %1, i64 %.0363399
  %i.ja = load i8, ptr %i.iz, align 1, !tbaa !21  ; 2 uses
  %i.jb = icmp eq i8 %i.ja, 98
  %i.jc = icmp eq i8 %i.ja, 103
  %i.jd = zext i1 %i.jc to i32
  %i.je = select i1 %i.jb, i32 2, i32 %i.jd       ; 2 uses
  %i.jf = tail call fastcc noundef i32 @_ZN7lodepngL9isICCwordEPKhmmPKc(ptr noundef %1, i64 noundef %2, i64 noundef %.0.i256, ptr noundef nonnull @.str.13)
  %.not237 = icmp eq i32 %i.jf, 0
  br i1 %.not237, label %.loopexit, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.jg = zext nneg i32 %i.je to i64
  %i.jh = getelementptr inbounds nuw [56 x i8], ptr %i.f, i64 %i.jg ; 6 uses
  store i32 1, ptr %i.d, align 4, !tbaa !57
  %i.ji = add nuw nsw i64 %.0.i256, 12            ; 6 uses
  %i.jj = icmp samesign ugt i64 %i.ji, %2
  br i1 %i.jj, label %_ZN7lodepngL15decodeICCUint32EPKhmPm.exit294.thread, label %_ZN7lodepngL15decodeICCUint32EPKhmPm.exit294

_ZN7lodepngL15decodeICCUint32EPKhmPm.exit294:     ; preds = %bb.au
  %i.jk = getelementptr inbounds nuw i8, ptr %1, i64 %.0.i256
  %i.jl = getelementptr inbounds nuw i8, ptr %i.jk, i64 8
  %i.jm = load i32, ptr %i.jl, align 1
  %i.jn = tail call i32 @llvm.bswap.i32(i32 %i.jm) ; 4 uses
  %i.jo = zext i32 %i.jn to i64                   ; 4 uses
  switch i32 %i.jn, label %bb.ax [
    i32 0, label %_ZN7lodepngL15decodeICCUint32EPKhmPm.exit294.thread
    i32 1, label %bb.av
  ]

_ZN7lodepngL15decodeICCUint32EPKhmPm.exit294.thread: ; preds = %bb.au, %_ZN7lodepngL15decodeICCUint32EPKhmPm.exit294
  store i32 0, ptr %i.jh, align 8, !tbaa !60
  br label %.loopexit

bb.av:                                            ; preds = %_ZN7lodepngL15decodeICCUint32EPKhmPm.exit294
  store i32 2, ptr %i.jh, align 8, !tbaa !60
  %i.jp = add nuw nsw i64 %.0.i256, 14            ; 2 uses
  %i.jq = icmp samesign ugt i64 %i.jp, %2
  br i1 %i.jq, label %_ZN7lodepngL15decodeICCUint16EPKhmPm.exit, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.jr = getelementptr inbounds nuw i8, ptr %1, i64 %i.ji ; 2 uses
  %i.js = load i8, ptr %i.jr, align 1, !tbaa !21
  %i.jt = zext i8 %i.js to i32
  %i.ju = shl nuw nsw i32 %i.jt, 8
  %i.jv = getelementptr i8, ptr %i.jr, i64 1
  %i.jw = load i8, ptr %i.jv, align 1, !tbaa !21
  %i.jx = zext i8 %i.jw to i32
  %i.jy = or disjoint i32 %i.ju, %i.jx
  %i.jz = uitofp nneg i32 %i.jy to float
  %i.ka = fmul nnan float %i.jz, 3.906250e-03
  br label %_ZN7lodepngL15decodeICCUint16EPKhmPm.exit

_ZN7lodepngL15decodeICCUint16EPKhmPm.exit:        ; preds = %bb.av, %bb.aw
  %.0.i295 = phi float [ %i.ka, %bb.aw ], [ 0.000000e+00, %bb.av ]
  %i.kb = getelementptr inbounds nuw i8, ptr %i.jh, i64 24
  store float %.0.i295, ptr %i.kb, align 8, !tbaa !61
  br label %.loopexit

bb.ax:                                            ; preds = %_ZN7lodepngL15decodeICCUint32EPKhmPm.exit294
  store i32 1, ptr %i.jh, align 8, !tbaa !60
  %i.kc = shl nuw nsw i64 %i.jo, 1
  %i.kd = add nuw nsw i64 %i.kc, %i.ji
  %i.ke = icmp samesign ugt i64 %i.kd, %2
  %i.kf = icmp ugt i32 %i.jn, 16777216
  %or.cond = or i1 %i.kf, %i.ke
  br i1 %or.cond, label %.critedge243, label %.lr.ph.preheader.a

.lr.ph.preheader.a:                               ; preds = %bb.ax
  %i.kg = getelementptr inbounds nuw i8, ptr %i.jh, i64 16
  store i64 %i.jo, ptr %i.kg, align 8, !tbaa !62
  %i.kh = shl nuw nsw i64 %i.jo, 2
  %i.ki = tail call noalias noundef ptr @malloc(i64 noundef %i.kh) #32 ; 4 uses
  %i.kj = getelementptr inbounds nuw i8, ptr %i.jh, i64 8
  store ptr %i.ki, ptr %i.kj, align 8, !tbaa !48
  %umax = tail call i64 @llvm.umax.i64(i64 %i.jo, i64 1) ; 3 uses
  %xtraiter = and i64 %umax, 1
  %78 = icmp ult i32 %i.jn, 2
  br i1 %78, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader.a
  %unroll_iter = and i64 %umax, 33554430
  br label %.lr.ph

.lr.ph:                                           ; preds = %_ZN7lodepngL15decodeICCUint16EPKhmPm.exit297.1, %.lr.ph.preheader.new
  %.1213398 = phi i64 [ 0, %.lr.ph.preheader.new ], [ %i.ll, %_ZN7lodepngL15decodeICCUint16EPKhmPm.exit297.1 ] ; 3 uses
  %.1397 = phi i64 [ %i.ji, %.lr.ph.preheader.new ], [ %i.kx, %_ZN7lodepngL15decodeICCUint16EPKhmPm.exit297.1 ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.1, %_ZN7lodepngL15decodeICCUint16EPKhmPm.exit297.1 ]
  %i.kk = add nuw nsw i64 %.1397, 2               ; 2 uses
  %i.kl = icmp samesign ugt i64 %i.kk, %2
  br i1 %i.kl, label %_ZN7lodepngL15decodeICCUint16EPKhmPm.exit297, label %bb.ay

bb.ay:                                            ; preds = %.lr.ph
  %i.km = getelementptr inbounds nuw i8, ptr %1, i64 %.1397 ; 2 uses
  %i.kn = load i8, ptr %i.km, align 1, !tbaa !21
  %i.ko = zext i8 %i.kn to i32
  %i.kp = shl nuw nsw i32 %i.ko, 8
  %i.kq = getelementptr i8, ptr %i.km, i64 1
  %i.kr = load i8, ptr %i.kq, align 1, !tbaa !21
  %i.ks = zext i8 %i.kr to i32
  %i.kt = or disjoint i32 %i.kp, %i.ks
  %i.ku = uitofp nneg i32 %i.kt to float
  %i.kv = fmul nnan float %i.ku, f0x37800080
  br label %_ZN7lodepngL15decodeICCUint16EPKhmPm.exit297

_ZN7lodepngL15decodeICCUint16EPKhmPm.exit297:     ; preds = %.lr.ph, %bb.ay
  %.0.i296 = phi float [ %i.kv, %bb.ay ], [ 0.000000e+00, %.lr.ph ]
  %i.kw = getelementptr inbounds nuw [4 x i8], ptr %i.ki, i64 %.1213398
  store float %.0.i296, ptr %i.kw, align 4, !tbaa !58
  %i.kx = add nuw nsw i64 %.1397, 4               ; 4 uses
  %i.ky = icmp samesign ugt i64 %i.kx, %2
  br i1 %i.ky, label %_ZN7lodepngL15decodeICCUint16EPKhmPm.exit297.1, label %bb.az

bb.az:                                            ; preds = %_ZN7lodepngL15decodeICCUint16EPKhmPm.exit297
  %i.kz = getelementptr inbounds nuw i8, ptr %1, i64 %i.kk ; 2 uses
  %i.la = load i8, ptr %i.kz, align 1, !tbaa !21
  %i.lb = zext i8 %i.la to i32
  %i.lc = shl nuw nsw i32 %i.lb, 8
  %i.ld = getelementptr i8, ptr %i.kz, i64 1
  %i.le = load i8, ptr %i.ld, align 1, !tbaa !21
  %i.lf = zext i8 %i.le to i32
  %i.lg = or disjoint i32 %i.lc, %i.lf
  %i.lh = uitofp nneg i32 %i.lg to float
  %i.li = fmul nnan float %i.lh, f0x37800080
  br label %_ZN7lodepngL15decodeICCUint16EPKhmPm.exit297.1

_ZN7lodepngL15decodeICCUint16EPKhmPm.exit297.1:   ; preds = %bb.az, %_ZN7lodepngL15decodeICCUint16EPKhmPm.exit297
  %.0.i296.1 = phi float [ %i.li, %bb.az ], [ 0.000000e+00, %_ZN7lodepngL15decodeICCUint16EPKhmPm.exit297 ]
  %i.lj = getelementptr inbounds nuw [4 x i8], ptr %i.ki, i64 %.1213398
  %i.lk = getelementptr inbounds nuw i8, ptr %i.lj, i64 4
  store float %.0.i296.1, ptr %i.lk, align 4, !tbaa !58
  %i.ll = add nuw nsw i64 %.1213398, 2            ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1.not = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1.not, label %.loopexit.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !111

.loopexit.loopexit.unr-lcssa:                     ; preds = %_ZN7lodepngL15decodeICCUint16EPKhmPm.exit297.1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph.preheader.a
  %.1213398.epil.init = phi i64 [ 0, %.lr.ph.preheader.a ], [ %i.ll, %.loopexit.loopexit.unr-lcssa ]
  %.1397.epil.init = phi i64 [ %i.ji, %.lr.ph.preheader.a ], [ %i.kx, %.loopexit.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod422 = trunc i64 %umax to i1
  tail call void @llvm.assume(i1 %lcmp.mod422)
  %i.lm = add nuw nsw i64 %.1397.epil.init, 2     ; 2 uses
  %i.ln = icmp samesign ugt i64 %i.lm, %2
  br i1 %i.ln, label %_ZN7lodepngL15decodeICCUint16EPKhmPm.exit297.epil, label %bb.ba

bb.ba:                                            ; preds = %.lr.ph.epil.preheader
  %i.lo = getelementptr inbounds nuw i8, ptr %1, i64 %.1397.epil.init ; 2 uses
  %i.lp = load i8, ptr %i.lo, align 1, !tbaa !21
  %i.lq = zext i8 %i.lp to i32
  %i.lr = shl nuw nsw i32 %i.lq, 8
  %i.ls = getelementptr i8, ptr %i.lo, i64 1
  %i.lt = load i8, ptr %i.ls, align 1, !tbaa !21
  %i.lu = zext i8 %i.lt to i32
  %i.lv = or disjoint i32 %i.lr, %i.lu
  %i.lw = uitofp nneg i32 %i.lv to float
  %i.lx = fmul nnan float %i.lw, f0x37800080
  br label %_ZN7lodepngL15decodeICCUint16EPKhmPm.exit297.epil

_ZN7lodepngL15decodeICCUint16EPKhmPm.exit297.epil: ; preds = %bb.ba, %.lr.ph.epil.preheader
  %.0.i296.epil = phi float [ %i.lx, %bb.ba ], [ 0.000000e+00, %.lr.ph.epil.preheader ]
  %i.ly = getelementptr inbounds nuw [4 x i8], ptr %i.ki, i64 %.1213398.epil.init
  store float %.0.i296.epil, ptr %i.ly, align 4, !tbaa !58
  br label %.loopexit

.loopexit:                                        ; preds = %_ZN7lodepngL15decodeICCUint16EPKhmPm.exit297.epil, %.loopexit.loopexit.unr-lcssa, %_ZN7lodepngL15decodeICCUint16EPKhmPm.exit, %_ZN7lodepngL15decodeICCUint32EPKhmPm.exit294.thread, %bb.at
  %.2 = phi i64 [ %.0.i256, %bb.at ], [ %i.jp, %_ZN7lodepngL15decodeICCUint16EPKhmPm.exit ], [ %i.ji, %_ZN7lodepngL15decodeICCUint32EPKhmPm.exit294.thread ], [ %i.kx, %.loopexit.loopexit.unr-lcssa ], [ %i.lm, %_ZN7lodepngL15decodeICCUint16EPKhmPm.exit297.epil ] ; 12 uses
  %i.lz = tail call fastcc noundef i32 @_ZN7lodepngL9isICCwordEPKhmmPKc(ptr noundef %1, i64 noundef %2, i64 noundef %.2, ptr noundef nonnull @.str.14)
  %.not238 = icmp eq i32 %i.lz, 0
  br i1 %.not238, label %.critedge, label %bb.bb

bb.bb:                                            ; preds = %.loopexit
  %i.ma = zext nneg i32 %i.je to i64
  %i.mb = getelementptr inbounds nuw [56 x i8], ptr %i.f, i64 %i.ma ; 8 uses
  store i32 1, ptr %i.d, align 4, !tbaa !57
  %i.mc = add i64 %.2, 10
  %i.md = icmp ugt i64 %i.mc, %2
  br i1 %i.md, label %_ZN7lodepngL15decodeICCUint16EPKhmPm.exit299.thread, label %_ZN7lodepngL15decodeICCUint16EPKhmPm.exit299

_ZN7lodepngL15decodeICCUint16EPKhmPm.exit299:     ; preds = %bb.bb
  %i.me = getelementptr i8, ptr %1, i64 %.2       ; 2 uses
  %i.mf = getelementptr i8, ptr %i.me, i64 8
  %i.mg = load i8, ptr %i.mf, align 1, !tbaa !21
  %i.mh = zext i8 %i.mg to i32
  %i.mi = shl nuw nsw i32 %i.mh, 8
  %i.mj = getelementptr i8, ptr %i.me, i64 9
  %i.mk = load i8, ptr %i.mj, align 1, !tbaa !21
  %i.ml = zext i8 %i.mk to i32
  %i.mm = or disjoint i32 %i.mi, %i.ml            ; 2 uses
  %i.mn = icmp samesign ult i32 %i.mm, 5
  br i1 %i.mn, label %_ZN7lodepngL15decodeICCUint16EPKhmPm.exit299.thread, label %.critedge243

_ZN7lodepngL15decodeICCUint16EPKhmPm.exit299.thread: ; preds = %bb.bb, %_ZN7lodepngL15decodeICCUint16EPKhmPm.exit299
  %.0.i298381 = phi i32 [ %i.mm, %_ZN7lodepngL15decodeICCUint16EPKhmPm.exit299 ], [ 0, %bb.bb ] ; 5 uses
  %i.mo = add nuw nsw i32 %.0.i298381, 2
  store i32 %i.mo, ptr %i.mb, align 8, !tbaa !60
  %i.mp = add i64 %.2, 16                         ; 3 uses
  %i.mq = icmp ugt i64 %i.mp, %2
  br i1 %i.mq, label %_ZN7lodepngL18decodeICC15Fixed16EPKhmPm.exit301, label %bb.bc

bb.bc:                                            ; preds = %_ZN7lodepngL15decodeICCUint16EPKhmPm.exit299.thread
  %i.mr = getelementptr i8, ptr %1, i64 %.2
  %i.ms = getelementptr i8, ptr %i.mr, i64 12
  %i.mt = load i32, ptr %i.ms, align 1
  %i.mu = tail call i32 @llvm.bswap.i32(i32 %i.mt)
  %i.mv = sitofp i32 %i.mu to float
  %i.mw = fmul nnan float %i.mv, f0x37800000
  br label %_ZN7lodepngL18decodeICC15Fixed16EPKhmPm.exit301

_ZN7lodepngL18decodeICC15Fixed16EPKhmPm.exit301:  ; preds = %_ZN7lodepngL15decodeICCUint16EPKhmPm.exit299.thread, %bb.bc
  %.0.i.i300 = phi float [ %i.mw, %bb.bc ], [ 0.000000e+00, %_ZN7lodepngL15decodeICCUint16EPKhmPm.exit299.thread ]
  %i.mx = getelementptr inbounds nuw i8, ptr %i.mb, i64 24
  store float %.0.i.i300, ptr %i.mx, align 8, !tbaa !61
  %.not239 = icmp eq i32 %.0.i298381, 0
  br i1 %.not239, label %.critedge, label %bb.bd

bb.bd:                                            ; preds = %_ZN7lodepngL18decodeICC15Fixed16EPKhmPm.exit301
  %i.my = add i64 %.2, 20                         ; 2 uses
  %i.mz = icmp ugt i64 %i.my, %2
  br i1 %i.mz, label %_ZN7lodepngL18decodeICC15Fixed16EPKhmPm.exit303, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.na = getelementptr inbounds nuw i8, ptr %1, i64 %i.mp
  %i.nb = load i32, ptr %i.na, align 1
  %i.nc = tail call i32 @llvm.bswap.i32(i32 %i.nb)
  %i.nd = sitofp i32 %i.nc to float
  %i.ne = fmul nnan float %i.nd, f0x37800000
  br label %_ZN7lodepngL18decodeICC15Fixed16EPKhmPm.exit303

_ZN7lodepngL18decodeICC15Fixed16EPKhmPm.exit303:  ; preds = %bb.bd, %bb.be
  %.0.i.i302 = phi float [ %i.ne, %bb.be ], [ 0.000000e+00, %bb.bd ]
  %i.nf = getelementptr inbounds nuw i8, ptr %i.mb, i64 28
  store float %.0.i.i302, ptr %i.nf, align 4, !tbaa !63
  %i.ng = add i64 %.2, 24                         ; 3 uses
  %i.nh = icmp ugt i64 %i.ng, %2
  br i1 %i.nh, label %bb.bg, label %bb.bf

bb.bf:                                            ; preds = %_ZN7lodepngL18decodeICC15Fixed16EPKhmPm.exit303
  %i.ni = getelementptr inbounds nuw i8, ptr %1, i64 %i.my
  %i.nj = load i32, ptr %i.ni, align 1
  %i.nk = tail call i32 @llvm.bswap.i32(i32 %i.nj)
  %i.nl = sitofp i32 %i.nk to float
  %i.nm = fmul nnan float %i.nl, f0x37800000
  br label %bb.bg

bb.bg:                                            ; preds = %bb.bf, %_ZN7lodepngL18decodeICC15Fixed16EPKhmPm.exit303
  %.0.i.i304 = phi float [ %i.nm, %bb.bf ], [ 0.000000e+00, %_ZN7lodepngL18decodeICC15Fixed16EPKhmPm.exit303 ]
  %i.nn = getelementptr inbounds nuw i8, ptr %i.mb, i64 32
  store float %.0.i.i304, ptr %i.nn, align 8, !tbaa !64
  %.not393 = icmp eq i32 %.0.i298381, 1
  br i1 %.not393, label %.critedge, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.no = add i64 %.2, 28                         ; 3 uses
  %i.np = icmp ugt i64 %i.no, %2
  br i1 %i.np, label %bb.bj, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.nq = getelementptr inbounds nuw i8, ptr %1, i64 %i.ng
  %i.nr = load i32, ptr %i.nq, align 1
  %i.ns = tail call i32 @llvm.bswap.i32(i32 %i.nr)
  %i.nt = sitofp i32 %i.ns to float
  %i.nu = fmul nnan float %i.nt, f0x37800000
  br label %bb.bj

bb.bj:                                            ; preds = %bb.bi, %bb.bh
  %.0.i.i306 = phi float [ %i.nu, %bb.bi ], [ 0.000000e+00, %bb.bh ]
  %i.nv = getelementptr inbounds nuw i8, ptr %i.mb, i64 36
  store float %.0.i.i306, ptr %i.nv, align 4, !tbaa !65
  %i.nw = icmp samesign ugt i32 %.0.i298381, 2
  br i1 %i.nw, label %bb.bk, label %.critedge

bb.bk:                                            ; preds = %bb.bj
  %i.nx = add i64 %.2, 32                         ; 3 uses
  %i.ny = icmp ugt i64 %i.nx, %2
  br i1 %i.ny, label %bb.bm, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.nz = getelementptr inbounds nuw i8, ptr %1, i64 %i.no
  %i.oa = load i32, ptr %i.nz, align 1
  %i.ob = tail call i32 @llvm.bswap.i32(i32 %i.oa)
  %i.oc = sitofp i32 %i.ob to float
  %i.od = fmul nnan float %i.oc, f0x37800000
  br label %bb.bm

bb.bm:                                            ; preds = %bb.bl, %bb.bk
  %.0.i.i308 = phi float [ %i.od, %bb.bl ], [ 0.000000e+00, %bb.bk ]
  %i.oe = getelementptr inbounds nuw i8, ptr %i.mb, i64 40
  store float %.0.i.i308, ptr %i.oe, align 8, !tbaa !66
  %i.of = icmp eq i32 %.0.i298381, 4
  br i1 %i.of, label %bb.bn, label %.critedge

bb.bn:                                            ; preds = %bb.bm
  %i.og = add i64 %.2, 36                         ; 2 uses
  %i.oh = icmp ugt i64 %i.og, %2
  br i1 %i.oh, label %_ZN7lodepngL18decodeICC15Fixed16EPKhmPm.exit311, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.oi = getelementptr inbounds nuw i8, ptr %1, i64 %i.nx
  %i.oj = load i32, ptr %i.oi, align 1
  %i.ok = tail call i32 @llvm.bswap.i32(i32 %i.oj)
  %i.ol = sitofp i32 %i.ok to float
  %i.om = fmul nnan float %i.ol, f0x37800000
  br label %_ZN7lodepngL18decodeICC15Fixed16EPKhmPm.exit311

_ZN7lodepngL18decodeICC15Fixed16EPKhmPm.exit311:  ; preds = %bb.bn, %bb.bo
  %.0.i.i310 = phi float [ %i.om, %bb.bo ], [ 0.000000e+00, %bb.bn ]
  %i.on = getelementptr inbounds nuw i8, ptr %i.mb, i64 44
  store float %.0.i.i310, ptr %i.on, align 4, !tbaa !115
  %i.oo = add i64 %.2, 40                         ; 2 uses
  %i.op = icmp ugt i64 %i.oo, %2
  br i1 %i.op, label %_ZN7lodepngL18decodeICC15Fixed16EPKhmPm.exit313, label %bb.bp

bb.bp:                                            ; preds = %_ZN7lodepngL18decodeICC15Fixed16EPKhmPm.exit311
  %i.oq = getelementptr inbounds nuw i8, ptr %1, i64 %i.og
  %i.or = load i32, ptr %i.oq, align 1
  %i.os = tail call i32 @llvm.bswap.i32(i32 %i.or)
  %i.ot = sitofp i32 %i.os to float
  %i.ou = fmul nnan float %i.ot, f0x37800000
  br label %_ZN7lodepngL18decodeICC15Fixed16EPKhmPm.exit313

_ZN7lodepngL18decodeICC15Fixed16EPKhmPm.exit313:  ; preds = %_ZN7lodepngL18decodeICC15Fixed16EPKhmPm.exit311, %bb.bp
  %.0.i.i312 = phi float [ %i.ou, %bb.bp ], [ 0.000000e+00, %_ZN7lodepngL18decodeICC15Fixed16EPKhmPm.exit311 ]
  %i.ov = getelementptr inbounds nuw i8, ptr %i.mb, i64 48
  store float %.0.i.i312, ptr %i.ov, align 8, !tbaa !67
  br label %.critedge

.critedge:                                        ; preds = %_ZN7lodepngL18decodeICC15Fixed16EPKhmPm.exit301, %bb.bg, %bb.bj, %_ZN7lodepngL18decodeICC15Fixed16EPKhmPm.exit313, %bb.bm, %.loopexit, %_ZN7lodepngL18decodeICC15Fixed16EPKhmPm.exit274, %_ZN7lodepngL18decodeICC15Fixed16EPKhmPm.exit290, %bb.as, %_ZN7lodepngL18decodeICC15Fixed16EPKhmPm.exit292.8, %_ZN7lodepngL18decodeICC15Fixed16EPKhmPm.exit282, %_ZN7lodepngL18decodeICC15Fixed16EPKhmPm.exit266
  %.7 = phi i64 [ %.0.i256, %bb.as ], [ %.2, %.loopexit ], [ %i.cp, %_ZN7lodepngL18decodeICC15Fixed16EPKhmPm.exit266 ], [ %i.io, %_ZN7lodepngL18decodeICC15Fixed16EPKhmPm.exit292.8 ], [ %i.gb, %_ZN7lodepngL18decodeICC15Fixed16EPKhmPm.exit290 ], [ %i.ex, %_ZN7lodepngL18decodeICC15Fixed16EPKhmPm.exit282 ], [ %i.dt, %_ZN7lodepngL18decodeICC15Fixed16EPKhmPm.exit274 ], [ %i.oo, %_ZN7lodepngL18decodeICC15Fixed16EPKhmPm.exit313 ], [ %i.nx, %bb.bm ], [ %i.no, %bb.bj ], [ %i.ng, %bb.bg ], [ %i.mp, %_ZN7lodepngL18decodeICC15Fixed16EPKhmPm.exit301 ]
  %.not394 = icmp ugt i64 %.7, %2
  br i1 %.not394, label %.critedge243, label %bb.b

.critedge243:                                     ; preds = %.critedge, %bb.b, %bb.ax, %_ZN7lodepngL15decodeICCUint16EPKhmPm.exit299, %bb.f, %_ZN7lodepngL15decodeICCUint32EPKhmPm.exit259, %.preheader, %_ZN7lodepngL18decodeICC15Fixed16EPKhmPm.exit, %bb.a
  %.8 = phi i32 [ 1, %_ZN7lodepngL18decodeICC15Fixed16EPKhmPm.exit ], [ 1, %bb.a ], [ 0, %.preheader ], [ 1, %bb.f ], [ 1, %_ZN7lodepngL15decodeICCUint16EPKhmPm.exit299 ], [ 1, %bb.ax ], [ 0, %bb.b ], [ 1, %.critedge ], [ 1, %_ZN7lodepngL15decodeICCUint32EPKhmPm.exit259 ]
  ret i32 %.8
}

declare noundef i32 @_Z15lodepng_convertPhPKhPK16LodePNGColorModeS4_jj(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @_ZN7lodepngL24convertToXYZ_gamma_tableEPfmmPK11LodePNGInfojPKNS_10LodePNGICCE(ptr nofree noundef writeonly captures(none) %0, i64 noundef range(i64 256, 65537) %1, i64 noundef range(i64 0, 3) %2, ptr nofree noundef readonly captures(none) %3, i32 noundef range(i32 0, 2) %4, ptr nofree noundef nonnull readonly captures(none) %5) unnamed_addr #9 {
bb.a:
  %i.a = add nsw i64 %1, -1
  %i.b = uitofp nneg i64 %i.a to float
  %i.c = fdiv float 1.000000e+00, %i.b            ; 5 uses
  %.not = icmp eq i32 %4, 0
  br i1 %.not, label %bb.c, label %.preheader48

.preheader48:                                     ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 128
  %i.e = getelementptr inbounds nuw [56 x i8], ptr %i.d, i64 %2
  br label %bb.b

bb.b:                                             ; preds = %.preheader48, %bb.b
  %.050 = phi i64 [ 0, %.preheader48 ], [ %i.j, %bb.b ] ; 3 uses
  %i.f = uitofp nneg i64 %.050 to float
  %i.g = fmul float %i.c, %i.f
  %i.h = tail call fastcc noundef float @_ZN7lodepngL13iccForwardTRCEPKNS_15LodePNGICCCurveEf(ptr noundef %i.e, float noundef %i.g)
  %i.i = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.050
  store float %i.h, ptr %i.i, align 4, !tbaa !58
  %i.j = add nuw nsw i64 %.050, 1                 ; 2 uses
  %exitcond.not = icmp eq i64 %i.j, %1
  br i1 %exitcond.not, label %.loopexit, label %bb.b, !llvm.loop !1

bb.c:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 200
  %i.l = load i32, ptr %i.k, align 8, !tbaa !68
end_hunk_1
