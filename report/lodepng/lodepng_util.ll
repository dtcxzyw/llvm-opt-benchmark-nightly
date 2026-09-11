Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lodepng/original/lodepng_util?download=true
inline.NumInlined: 864
inline.NumDeleted: 299
loop-unroll.NumCompletelyUnrolled: 10
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 14
begin_hunk_0_@_ZN7lodepng12convertToXYZEPfS0_PKhjjPK12LodePNGState:bb.a
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
  %i.v = load i8, ptr %i.u, align 1, !tbaa !21
  %i.w = zext i8 %i.v to i32
  %i.x = getelementptr i8, ptr %1, i64 9
  %i.y = load i8, ptr %i.x, align 1, !tbaa !21
  %i.z = zext i8 %i.y to i32                      ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %i.w, ptr %i.aa, align 4, !tbaa !112
  %i.ab = lshr i32 %i.z, 4
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %i.ab, ptr %i.ac, align 8, !tbaa !113
  %i.ad = and i32 %i.z, 15
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 %i.ad, ptr %i.ae, align 4, !tbaa !114
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ag = load i32, ptr %i.af, align 1            ; 2 uses
  %switch.selectcmp = icmp eq i32 %i.ag, 541214546
  %switch.select = select i1 %switch.selectcmp, i32 2, i32 0
  %switch.selectcmp419 = icmp eq i32 %i.ag, 1497453127
  %switch.select420 = select i1 %switch.selectcmp419, i32 1, i32 %switch.select
  store i32 %switch.select420, ptr %0, align 8, !tbaa !54
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 68
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !21
  %i.aj = zext i8 %i.ai to i32
  %i.ak = shl nuw i32 %i.aj, 24
  %i.al = getelementptr i8, ptr %1, i64 69
  %i.am = load i8, ptr %i.al, align 1, !tbaa !21
  %i.an = zext i8 %i.am to i32
  %i.ao = shl nuw nsw i32 %i.an, 16
  %i.ap = or disjoint i32 %i.ao, %i.ak
  %i.aq = getelementptr i8, ptr %1, i64 70
  %i.ar = load i8, ptr %i.aq, align 1, !tbaa !21
  %i.as = zext i8 %i.ar to i32
  %i.at = shl nuw nsw i32 %i.as, 8
  %i.au = or disjoint i32 %i.ap, %i.at
  %i.av = getelementptr i8, ptr %1, i64 71
  %i.aw = load i8, ptr %i.av, align 1, !tbaa !21
  %i.ax = zext i8 %i.aw to i32
  %i.ay = or disjoint i32 %i.au, %i.ax
  %i.az = sitofp i32 %i.ay to float
  %i.ba = fmul nnan float %i.az, f0x37800000
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 16
  store float %i.ba, ptr %i.bb, align 8, !tbaa !58
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.bd = load i8, ptr %i.bc, align 1, !tbaa !21
  %i.be = zext i8 %i.bd to i32
  %i.bf = shl nuw i32 %i.be, 24
  %i.bg = getelementptr i8, ptr %1, i64 73
  %i.bh = load i8, ptr %i.bg, align 1, !tbaa !21
  %i.bi = zext i8 %i.bh to i32
  %i.bj = shl nuw nsw i32 %i.bi, 16
  %i.bk = or disjoint i32 %i.bj, %i.bf
  %i.bl = getelementptr i8, ptr %1, i64 74
  %i.bm = load i8, ptr %i.bl, align 1, !tbaa !21
  %i.bn = zext i8 %i.bm to i32
  %i.bo = shl nuw nsw i32 %i.bn, 8
  %i.bp = or disjoint i32 %i.bk, %i.bo
  %i.bq = getelementptr i8, ptr %1, i64 75
  %i.br = load i8, ptr %i.bq, align 1, !tbaa !21
  %i.bs = zext i8 %i.br to i32
  %i.bt = or disjoint i32 %i.bp, %i.bs
  %i.bu = sitofp i32 %i.bt to float
  %i.bv = fmul nnan float %i.bu, f0x37800000
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 20
  store float %i.bv, ptr %i.bw, align 4, !tbaa !58
  %i.bx = getelementptr inbounds nuw i8, ptr %1, i64 76
  %i.by = load i8, ptr %i.bx, align 1, !tbaa !21
  %i.bz = zext i8 %i.by to i32
  %i.ca = shl nuw i32 %i.bz, 24
  %i.cb = getelementptr i8, ptr %1, i64 77
  %i.cc = load i8, ptr %i.cb, align 1, !tbaa !21
  %i.cd = zext i8 %i.cc to i32
  %i.ce = shl nuw nsw i32 %i.cd, 16
  %i.cf = or disjoint i32 %i.ce, %i.ca
  %i.cg = getelementptr i8, ptr %1, i64 78
  %i.ch = load i8, ptr %i.cg, align 1, !tbaa !21
  %i.ci = zext i8 %i.ch to i32
  %i.cj = shl nuw nsw i32 %i.ci, 8
  %i.ck = or disjoint i32 %i.cf, %i.cj
  %i.cl = getelementptr i8, ptr %1, i64 79
  %i.cm = load i8, ptr %i.cl, align 1, !tbaa !21
  %i.cn = zext i8 %i.cm to i32
  %i.co = or disjoint i32 %i.ck, %i.cn
  %i.cp = sitofp i32 %i.co to float
  %i.cq = fmul nnan float %i.cp, f0x37800000
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 24
  store float %i.cq, ptr %i.cr, align 8, !tbaa !58
  %i.cs = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.ct = load i8, ptr %i.cs, align 1, !tbaa !21
  %i.cu = zext i8 %i.ct to i64
  %i.cv = shl nuw nsw i64 %i.cu, 24               ; 2 uses
  %i.cw = getelementptr i8, ptr %1, i64 129
  %i.cx = load i8, ptr %i.cw, align 1, !tbaa !21
  %i.cy = zext i8 %i.cx to i64
  %i.cz = shl nuw nsw i64 %i.cy, 16               ; 2 uses
  %i.da = getelementptr i8, ptr %1, i64 130
  %i.db = load i8, ptr %i.da, align 1, !tbaa !21
  %i.dc = zext i8 %i.db to i64
  %i.dd = shl nuw nsw i64 %i.dc, 8                ; 2 uses
  %i.de = getelementptr i8, ptr %1, i64 131
  %i.df = load i8, ptr %i.de, align 1, !tbaa !21
  %i.dg = zext i8 %i.df to i64                    ; 2 uses
  %.not225.not = icmp eq i64 %2, 132
  br i1 %.not225.not, label %.critedge243, label %.preheader

.preheader:                                       ; preds = %_ZN7lodepngL18decodeICC15Fixed16EPKhmPm.exit
  %i.dh = or disjoint i64 %i.cz, %i.cv
  %i.di = or disjoint i64 %i.dh, %i.dd
  %i.dj = or disjoint i64 %i.di, %i.dg
  %.not410 = icmp eq i64 %i.dj, 0
  br i1 %.not410, label %.critedge243, label %.lr.ph401

.lr.ph401:                                        ; preds = %.preheader
  %i.dk = getelementptr inbounds nuw i8, ptr %0, i64 32
  %umax = tail call i64 @llvm.umax.i64(i64 %2, i64 144)
  %i.dl = trunc nuw i64 %umax to i32
  %.lhs.trunc = add i32 %i.dl, -133
  %i.dm = udiv i32 %.lhs.trunc, 12
  %.zext = zext nneg i32 %i.dm to i64
  %i.dn = or disjoint i64 %i.cv, %i.cz
  %i.do = or disjoint i64 %i.dn, %i.dd
  %i.dp = or disjoint i64 %i.do, %i.dg
  %i.dq = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.dr = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ds = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.dt = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.du = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.dv = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.dw = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.dx = getelementptr inbounds nuw i8, ptr %0, i64 64
  br label %bb.c

bb.b:                                             ; preds = %.critedge
  %i.dy = add nuw nsw i64 %.0214400, 1            ; 2 uses
  %exitcond413.not = icmp eq i64 %i.dy, %i.dp
  br i1 %exitcond413.not, label %.critedge243, label %bb.c, !llvm.loop !110

bb.c:                                             ; preds = %.lr.ph401, %bb.b
  %.0214400 = phi i64 [ 0, %.lr.ph401 ], [ %i.dy, %bb.b ] ; 2 uses
  %.0363399 = phi i64 [ 132, %.lr.ph401 ], [ %i.eg, %bb.b ] ; 10 uses
  %i.dz = add nuw nsw i64 %.0363399, 8            ; 2 uses
  %i.ea = icmp samesign ugt i64 %i.dz, %2
  br i1 %i.ea, label %_ZN7lodepngL15decodeICCUint32EPKhmPm.exit257, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.eb = getelementptr inbounds nuw i8, ptr %1, i64 %.0363399
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 4
  %i.ed = load i32, ptr %i.ec, align 1
  %i.ee = tail call i32 @llvm.bswap.i32(i32 %i.ed)
  %i.ef = zext i32 %i.ee to i64
  br label %_ZN7lodepngL15decodeICCUint32EPKhmPm.exit257

_ZN7lodepngL15decodeICCUint32EPKhmPm.exit257:     ; preds = %bb.c, %bb.d
  %.0.i256 = phi i64 [ %i.ef, %bb.d ], [ 0, %bb.c ] ; 34 uses
  %i.eg = add nuw nsw i64 %.0363399, 12           ; 2 uses
  %i.eh = icmp samesign ugt i64 %i.eg, %2
  br i1 %i.eh, label %_ZN7lodepngL15decodeICCUint32EPKhmPm.exit259, label %bb.e

bb.e:                                             ; preds = %_ZN7lodepngL15decodeICCUint32EPKhmPm.exit257
  %i.ei = getelementptr inbounds nuw i8, ptr %1, i64 %i.dz
  %i.ej = load i32, ptr %i.ei, align 1
  %i.ek = tail call i32 @llvm.bswap.i32(i32 %i.ej)
  br label %_ZN7lodepngL15decodeICCUint32EPKhmPm.exit259

_ZN7lodepngL15decodeICCUint32EPKhmPm.exit259:     ; preds = %_ZN7lodepngL15decodeICCUint32EPKhmPm.exit257, %bb.e
  %.0.i258 = phi i32 [ %i.ek, %bb.e ], [ 0, %_ZN7lodepngL15decodeICCUint32EPKhmPm.exit257 ] ; 2 uses
  %exitcond.not = icmp eq i64 %.0214400, %.zext
  br i1 %exitcond.not, label %.critedge243, label %bb.f

bb.f:                                             ; preds = %_ZN7lodepngL15decodeICCUint32EPKhmPm.exit259
  %.not227 = icmp samesign uge i64 %.0.i256, %2
  %i.el = zext i32 %.0.i258 to i64
  %i.em = add nuw nsw i64 %.0.i256, %i.el
  %i.en = icmp samesign ugt i64 %i.em, %2
  %or.cond246 = select i1 %.not227, i1 true, i1 %i.en
  %i.eo = icmp ult i32 %.0.i258, 8
  %or.cond247 = or i1 %i.eo, %or.cond246
  br i1 %or.cond247, label %.critedge243, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ep = getelementptr inbounds nuw i8, ptr %1, i64 %.0363399 ; 13 uses
  %i.eq = load i8, ptr %i.ep, align 1, !tbaa !21
  switch i8 %i.eq, label %_ZN7lodepngL9isICCwordEPKhmmPKc.exit284.thread [
    i8 119, label %bb.h
    i8 114, label %bb.n
    i8 103, label %bb.t
    i8 98, label %bb.z
  ]

bb.h:                                             ; preds = %bb.g
  %i.er = getelementptr i8, ptr %i.ep, i64 1
  %i.es = load i8, ptr %i.er, align 1, !tbaa !21
  %i.et = icmp eq i8 %i.es, 116
  br i1 %i.et, label %bb.i, label %_ZN7lodepngL9isICCwordEPKhmmPKc.exit284.thread

bb.i:                                             ; preds = %bb.h
  %i.eu = getelementptr i8, ptr %i.ep, i64 2
  %i.ev = load i8, ptr %i.eu, align 1, !tbaa !21
  %i.ew = icmp eq i8 %i.ev, 112
  br i1 %i.ew, label %_ZN7lodepngL9isICCwordEPKhmmPKc.exit, label %_ZN7lodepngL9isICCwordEPKhmmPKc.exit284.thread

_ZN7lodepngL9isICCwordEPKhmmPKc.exit:             ; preds = %bb.i
  %i.ex = getelementptr i8, ptr %i.ep, i64 3
  %i.ey = load i8, ptr %i.ex, align 1, !tbaa !21
  %.not = icmp eq i8 %i.ey, 116
  br i1 %.not, label %bb.j, label %_ZN7lodepngL9isICCwordEPKhmmPKc.exit284.thread

bb.j:                                             ; preds = %_ZN7lodepngL9isICCwordEPKhmmPKc.exit
  %i.ez = add nuw nsw i64 %.0.i256, 12            ; 2 uses
  %i.fa = icmp samesign ugt i64 %i.ez, %2
  br i1 %i.fa, label %_ZN7lodepngL18decodeICC15Fixed16EPKhmPm.exit262, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.fb = getelementptr inbounds nuw i8, ptr %1, i64 %.0.i256
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fb, i64 8
  %i.fd = load i32, ptr %i.fc, align 1
  %i.fe = tail call i32 @llvm.bswap.i32(i32 %i.fd)
  %i.ff = sitofp i32 %i.fe to float
  %i.fg = fmul nnan float %i.ff, f0x37800000
  br label %_ZN7lodepngL18decodeICC15Fixed16EPKhmPm.exit262

_ZN7lodepngL18decodeICC15Fixed16EPKhmPm.exit262:  ; preds = %bb.j, %bb.k
  %.0.i.i261 = phi float [ %i.fg, %bb.k ], [ 0.000000e+00, %bb.j ]
  store float %.0.i.i261, ptr %i.i, align 8, !tbaa !58
  %i.fh = add nuw nsw i64 %.0.i256, 16            ; 2 uses
  %i.fi = icmp samesign ugt i64 %i.fh, %2
  br i1 %i.fi, label %_ZN7lodepngL18decodeICC15Fixed16EPKhmPm.exit264, label %bb.l

bb.l:                                             ; preds = %_ZN7lodepngL18decodeICC15Fixed16EPKhmPm.exit262
  %i.fj = getelementptr inbounds nuw i8, ptr %1, i64 %i.ez
  %i.fk = load i32, ptr %i.fj, align 1
  %i.fl = tail call i32 @llvm.bswap.i32(i32 %i.fk)
  %i.fm = sitofp i32 %i.fl to float
  %i.fn = fmul nnan float %i.fm, f0x37800000
  br label %_ZN7lodepngL18decodeICC15Fixed16EPKhmPm.exit264

_ZN7lodepngL18decodeICC15Fixed16EPKhmPm.exit264:  ; preds = %_ZN7lodepngL18decodeICC15Fixed16EPKhmPm.exit262, %bb.l
  %.0.i.i263 = phi float [ %i.fn, %bb.l ], [ 0.000000e+00, %_ZN7lodepngL18decodeICC15Fixed16EPKhmPm.exit262 ]
  store float %.0.i.i263, ptr %i.k, align 4, !tbaa !58
  %i.fo = add nuw nsw i64 %.0.i256, 20            ; 2 uses
  %i.fp = icmp samesign ugt i64 %i.fo, %2
  br i1 %i.fp, label %_ZN7lodepngL18decodeICC15Fixed16EPKhmPm.exit266, label %bb.m

bb.m:                                             ; preds = %_ZN7lodepngL18decodeICC15Fixed16EPKhmPm.exit264
  %i.fq = getelementptr inbounds nuw i8, ptr %1, i64 %i.fh
  %i.fr = load i32, ptr %i.fq, align 1
  %i.fs = tail call i32 @llvm.bswap.i32(i32 %i.fr)
  %i.ft = sitofp i32 %i.fs to float
  %i.fu = fmul nnan float %i.ft, f0x37800000
  br label %_ZN7lodepngL18decodeICC15Fixed16EPKhmPm.exit266

_ZN7lodepngL18decodeICC15Fixed16EPKhmPm.exit266:  ; preds = %_ZN7lodepngL18decodeICC15Fixed16EPKhmPm.exit264, %bb.m
  %.0.i.i265 = phi float [ %i.fu, %bb.m ], [ 0.000000e+00, %_ZN7lodepngL18decodeICC15Fixed16EPKhmPm.exit264 ]
  store float %.0.i.i265, ptr %i.j, align 8, !tbaa !58
  store i32 1, ptr %i.c, align 4, !tbaa !56
  br label %.critedge

bb.n:                                             ; preds = %bb.g
  %i.fv = getelementptr i8, ptr %i.ep, i64 1
  %i.fw = load i8, ptr %i.fv, align 1, !tbaa !21
  %i.fx = icmp eq i8 %i.fw, 88
  br i1 %i.fx, label %bb.o, label %_ZN7lodepngL9isICCwordEPKhmmPKc.exit284.thread

bb.o:                                             ; preds = %bb.n
  %i.fy = getelementptr i8, ptr %i.ep, i64 2
  %i.fz = load i8, ptr %i.fy, align 1, !tbaa !21
  %i.ga = icmp eq i8 %i.fz, 89
  br i1 %i.ga, label %_ZN7lodepngL9isICCwordEPKhmmPKc.exit268, label %_ZN7lodepngL9isICCwordEPKhmmPKc.exit284.thread

_ZN7lodepngL9isICCwordEPKhmmPKc.exit268:          ; preds = %bb.o
  %i.gb = getelementptr i8, ptr %i.ep, i64 3
  %i.gc = load i8, ptr %i.gb, align 1, !tbaa !21
  %.not390 = icmp eq i8 %i.gc, 90
  br i1 %.not390, label %bb.p, label %_ZN7lodepngL9isICCwordEPKhmmPKc.exit284.thread

bb.p:                                             ; preds = %_ZN7lodepngL9isICCwordEPKhmmPKc.exit268
  %i.gd = add nuw nsw i64 %.0.i256, 12            ; 2 uses
  %i.ge = icmp samesign ugt i64 %i.gd, %2
  br i1 %i.ge, label %_ZN7lodepngL18decodeICC15Fixed16EPKhmPm.exit270, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.gf = getelementptr inbounds nuw i8, ptr %1, i64 %.0.i256
  %i.gg = getelementptr inbounds nuw i8, ptr %i.gf, i64 8
  %i.gh = load i32, ptr %i.gg, align 1
  %i.gi = tail call i32 @llvm.bswap.i32(i32 %i.gh)
  %i.gj = sitofp i32 %i.gi to float
  %i.gk = fmul nnan float %i.gj, f0x37800000
  br label %_ZN7lodepngL18decodeICC15Fixed16EPKhmPm.exit270

_ZN7lodepngL18decodeICC15Fixed16EPKhmPm.exit270:  ; preds = %bb.p, %bb.q
  %.0.i.i269 = phi float [ %i.gk, %bb.q ], [ 0.000000e+00, %bb.p ]
  store float %.0.i.i269, ptr %i.l, align 8, !tbaa !58
  %i.gl = add nuw nsw i64 %.0.i256, 16            ; 2 uses
  %i.gm = icmp samesign ugt i64 %i.gl, %2
  br i1 %i.gm, label %_ZN7lodepngL18decodeICC15Fixed16EPKhmPm.exit272, label %bb.r

bb.r:                                             ; preds = %_ZN7lodepngL18decodeICC15Fixed16EPKhmPm.exit270
  %i.gn = getelementptr inbounds nuw i8, ptr %1, i64 %i.gd
  %i.go = load i32, ptr %i.gn, align 1
  %i.gp = tail call i32 @llvm.bswap.i32(i32 %i.go)
  %i.gq = sitofp i32 %i.gp to float
  %i.gr = fmul nnan float %i.gq, f0x37800000
  br label %_ZN7lodepngL18decodeICC15Fixed16EPKhmPm.exit272

_ZN7lodepngL18decodeICC15Fixed16EPKhmPm.exit272:  ; preds = %_ZN7lodepngL18decodeICC15Fixed16EPKhmPm.exit270, %bb.r
  %.0.i.i271 = phi float [ %i.gr, %bb.r ], [ 0.000000e+00, %_ZN7lodepngL18decodeICC15Fixed16EPKhmPm.exit270 ]
  store float %.0.i.i271, ptr %i.n, align 4, !tbaa !58
  %i.gs = add nuw nsw i64 %.0.i256, 20            ; 2 uses
  %i.gt = icmp samesign ugt i64 %i.gs, %2
  br i1 %i.gt, label %_ZN7lodepngL18decodeICC15Fixed16EPKhmPm.exit274, label %bb.s

bb.s:                                             ; preds = %_ZN7lodepngL18decodeICC15Fixed16EPKhmPm.exit272
  %i.gu = getelementptr inbounds nuw i8, ptr %1, i64 %i.gl
  %i.gv = load i32, ptr %i.gu, align 1
  %i.gw = tail call i32 @llvm.bswap.i32(i32 %i.gv)
  %i.gx = sitofp i32 %i.gw to float
end_hunk_0
