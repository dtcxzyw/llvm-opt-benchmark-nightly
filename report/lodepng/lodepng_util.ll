Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lodepng/original/lodepng_util?download=true
inline.NumInlined: 864
inline.NumDeleted: 299
loop-unroll.NumCompletelyUnrolled: 10
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 14
begin_hunk_0_@_ZN7lodepng12convertToXYZEPfS0_PKhjjPK12LodePNGState:bb.a
  %i.db = load i8, ptr %i.da, align 1, !tbaa !20
  %i.dc = zext i8 %i.db to i64
  %i.dd = getelementptr inbounds nuw [4 x i8], ptr %.0108, i64 %i.dc
  %i.de = load float, ptr %i.dd, align 4, !tbaa !82
  %i.df = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.cz
  store float %i.de, ptr %i.df, align 4, !tbaa !82
  %i.dg = or disjoint i64 %i.cz, 1                ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.dg
  %i.di = load i8, ptr %i.dh, align 1, !tbaa !20
  %i.dj = zext i8 %i.di to i64
  %i.dk = getelementptr inbounds nuw [4 x i8], ptr %.0107, i64 %i.dj
  %i.dl = load float, ptr %i.dk, align 4, !tbaa !82
  %i.dm = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.dg
  store float %i.dl, ptr %i.dm, align 4, !tbaa !82
  %i.dn = or disjoint i64 %i.cz, 2                ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.dn
  %i.dp = load i8, ptr %i.do, align 1, !tbaa !20
  %i.dq = zext i8 %i.dp to i64
  %i.dr = getelementptr inbounds nuw [4 x i8], ptr %.0, i64 %i.dq
  %i.ds = load float, ptr %i.dr, align 4, !tbaa !82
  %i.dt = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.dn
  store float %i.ds, ptr %i.dt, align 4, !tbaa !82
  %i.du = or disjoint i64 %i.cz, 3                ; 2 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.du
  %i.dw = load i8, ptr %i.dv, align 1, !tbaa !20
  %i.dx = uitofp i8 %i.dw to float
  %i.dy = fmul nnan float %i.dx, f0x3B808081
  %i.dz = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.du
  store float %i.dy, ptr %i.dz, align 4, !tbaa !82
  %i.ea = add nuw i64 %.1112147, 1                ; 2 uses
  %exitcond.not = icmp eq i64 %i.ea, %mul.i141
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph, !llvm.loop !85

.loopexit:                                        ; preds = %.lr.ph, %.lr.ph149, %.preheader145, %.preheader
  %i.eb = call fastcc noundef i32 @_ZN7lodepngL17convertToXYZ_chrmEPfjjPK11LodePNGInfojPKNS_10LodePNGICCES0_(ptr noundef %0, i32 noundef %3, i32 noundef %4, ptr noundef nonnull %i.b, i32 noundef %.0109, ptr noundef %7, ptr noundef %1)
  br label %bb.n

bb.n:                                             ; preds = %.loopexit, %bb.g, %_ZN7lodepngL11validateICCEPKNS_10LodePNGICCE.exit, %bb.b
  %.0115 = phi ptr [ null, %bb.b ], [ %i.ad, %.loopexit ], [ null, %_ZN7lodepngL11validateICCEPKNS_10LodePNGICCE.exit ], [ %i.ad, %bb.g ]
  %.1114 = phi ptr [ null, %bb.b ], [ %.0108, %.loopexit ], [ null, %_ZN7lodepngL11validateICCEPKNS_10LodePNGICCE.exit ], [ null, %bb.g ]
  %.3 = phi i32 [ 1, %bb.b ], [ %i.eb, %.loopexit ], [ 92, %_ZN7lodepngL11validateICCEPKNS_10LodePNGICCE.exit ], [ %i.ae, %bb.g ]
  %i.ec = load ptr, ptr %i.h, align 8, !tbaa !69
  call void @free(ptr noundef %i.ec) #28
  %i.ed = load ptr, ptr %i.i, align 8, !tbaa !69
  call void @free(ptr noundef %i.ed) #28
  %i.ee = load ptr, ptr %i.j, align 8, !tbaa !69
  call void @free(ptr noundef %i.ee) #28
  call void @free(ptr noundef %.0115) #28
  call void @free(ptr noundef %.1114) #28
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
  store i32 0, ptr %i.e, align 4, !tbaa !86
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 240
  store i32 0, ptr %i.g, align 8, !tbaa !87
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 184
  store i32 0, ptr %i.h, align 8, !tbaa !87
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
  %i.v = load i8, ptr %i.u, align 1, !tbaa !20
  %i.w = zext i8 %i.v to i32
  %i.x = getelementptr i8, ptr %1, i64 9
  %i.y = load i8, ptr %i.x, align 1, !tbaa !20
  %i.z = zext i8 %i.y to i32                      ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %i.w, ptr %i.aa, align 4, !tbaa !88
  %i.ab = lshr i32 %i.z, 4
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %i.ab, ptr %i.ac, align 8, !tbaa !89
  %i.ad = and i32 %i.z, 15
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 %i.ad, ptr %i.ae, align 4, !tbaa !90
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ag = load i32, ptr %i.af, align 1            ; 2 uses
  %switch.selectcmp = icmp eq i32 %i.ag, 541214546
  %switch.select = select i1 %switch.selectcmp, i32 2, i32 0
  %switch.selectcmp419 = icmp eq i32 %i.ag, 1497453127
  %switch.select420 = select i1 %switch.selectcmp419, i32 1, i32 %switch.select
  store i32 %switch.select420, ptr %0, align 8, !tbaa !77
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 68
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !20
  %i.aj = zext i8 %i.ai to i32
  %i.ak = shl nuw i32 %i.aj, 24
  %i.al = getelementptr i8, ptr %1, i64 69
  %i.am = load i8, ptr %i.al, align 1, !tbaa !20
  %i.an = zext i8 %i.am to i32
  %i.ao = shl nuw nsw i32 %i.an, 16
  %i.ap = or disjoint i32 %i.ao, %i.ak
  %i.aq = getelementptr i8, ptr %1, i64 70
  %i.ar = load i8, ptr %i.aq, align 1, !tbaa !20
  %i.as = zext i8 %i.ar to i32
  %i.at = shl nuw nsw i32 %i.as, 8
  %i.au = or disjoint i32 %i.ap, %i.at
  %i.av = getelementptr i8, ptr %1, i64 71
  %i.aw = load i8, ptr %i.av, align 1, !tbaa !20
  %i.ax = zext i8 %i.aw to i32
  %i.ay = or disjoint i32 %i.au, %i.ax
  %i.az = sitofp i32 %i.ay to float
  %i.ba = fmul nnan float %i.az, f0x37800000
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 16
  store float %i.ba, ptr %i.bb, align 8, !tbaa !82
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.bd = load i8, ptr %i.bc, align 1, !tbaa !20
  %i.be = zext i8 %i.bd to i32
  %i.bf = shl nuw i32 %i.be, 24
  %i.bg = getelementptr i8, ptr %1, i64 73
  %i.bh = load i8, ptr %i.bg, align 1, !tbaa !20
  %i.bi = zext i8 %i.bh to i32
  %i.bj = shl nuw nsw i32 %i.bi, 16
  %i.bk = or disjoint i32 %i.bj, %i.bf
  %i.bl = getelementptr i8, ptr %1, i64 74
  %i.bm = load i8, ptr %i.bl, align 1, !tbaa !20
  %i.bn = zext i8 %i.bm to i32
  %i.bo = shl nuw nsw i32 %i.bn, 8
  %i.bp = or disjoint i32 %i.bk, %i.bo
  %i.bq = getelementptr i8, ptr %1, i64 75
  %i.br = load i8, ptr %i.bq, align 1, !tbaa !20
  %i.bs = zext i8 %i.br to i32
  %i.bt = or disjoint i32 %i.bp, %i.bs
  %i.bu = sitofp i32 %i.bt to float
  %i.bv = fmul nnan float %i.bu, f0x37800000
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 20
  store float %i.bv, ptr %i.bw, align 4, !tbaa !82
  %i.bx = getelementptr inbounds nuw i8, ptr %1, i64 76
  %i.by = load i8, ptr %i.bx, align 1, !tbaa !20
  %i.bz = zext i8 %i.by to i32
  %i.ca = shl nuw i32 %i.bz, 24
  %i.cb = getelementptr i8, ptr %1, i64 77
  %i.cc = load i8, ptr %i.cb, align 1, !tbaa !20
  %i.cd = zext i8 %i.cc to i32
  %i.ce = shl nuw nsw i32 %i.cd, 16
  %i.cf = or disjoint i32 %i.ce, %i.ca
  %i.cg = getelementptr i8, ptr %1, i64 78
  %i.ch = load i8, ptr %i.cg, align 1, !tbaa !20
  %i.ci = zext i8 %i.ch to i32
  %i.cj = shl nuw nsw i32 %i.ci, 8
  %i.ck = or disjoint i32 %i.cf, %i.cj
  %i.cl = getelementptr i8, ptr %1, i64 79
  %i.cm = load i8, ptr %i.cl, align 1, !tbaa !20
  %i.cn = zext i8 %i.cm to i32
  %i.co = or disjoint i32 %i.ck, %i.cn
  %i.cp = sitofp i32 %i.co to float
  %i.cq = fmul nnan float %i.cp, f0x37800000
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 24
  store float %i.cq, ptr %i.cr, align 8, !tbaa !82
  %i.cs = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.ct = load i8, ptr %i.cs, align 1, !tbaa !20
  %i.cu = zext i8 %i.ct to i64
  %i.cv = shl nuw nsw i64 %i.cu, 24               ; 2 uses
  %i.cw = getelementptr i8, ptr %1, i64 129
  %i.cx = load i8, ptr %i.cw, align 1, !tbaa !20
  %i.cy = zext i8 %i.cx to i64
  %i.cz = shl nuw nsw i64 %i.cy, 16               ; 2 uses
  %i.da = getelementptr i8, ptr %1, i64 130
  %i.db = load i8, ptr %i.da, align 1, !tbaa !20
  %i.dc = zext i8 %i.db to i64
  %i.dd = shl nuw nsw i64 %i.dc, 8                ; 2 uses
  %i.de = getelementptr i8, ptr %1, i64 131
  %i.df = load i8, ptr %i.de, align 1, !tbaa !20
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
  %i.dl = or disjoint i64 %i.cv, %i.cz
  %i.dm = or disjoint i64 %i.dl, %i.dd
  %i.dn = or disjoint i64 %i.dm, %i.dg
  %i.do = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.dp = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.dq = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.dr = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ds = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.dt = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.du = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.dv = getelementptr inbounds nuw i8, ptr %0, i64 64
  br label %bb.c

bb.b:                                             ; preds = %.critedge
  %i.dw = add nuw nsw i64 %.0212400, 1            ; 2 uses
  %exitcond.not.a = icmp eq i64 %i.dw, %i.dn
  br i1 %exitcond.not.a, label %.critedge243, label %bb.c, !llvm.loop !91

bb.c:                                             ; preds = %.lr.ph401, %bb.b
  %.0212400 = phi i64 [ 0, %.lr.ph401 ], [ %i.dw, %bb.b ]
  %.0363399 = phi i64 [ 132, %.lr.ph401 ], [ %i.ee, %bb.b ] ; 10 uses
  %i.dx = add nuw nsw i64 %.0363399, 8            ; 2 uses
  %i.dy = icmp samesign ugt i64 %i.dx, %2
  br i1 %i.dy, label %_ZN7lodepngL15decodeICCUint32EPKhmPm.exit257, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.dz = getelementptr inbounds nuw i8, ptr %1, i64 %.0363399
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 4
  %i.eb = load i32, ptr %i.ea, align 1
  %i.ec = tail call i32 @llvm.bswap.i32(i32 %i.eb)
  %i.ed = zext i32 %i.ec to i64
  br label %_ZN7lodepngL15decodeICCUint32EPKhmPm.exit257

_ZN7lodepngL15decodeICCUint32EPKhmPm.exit257:     ; preds = %bb.c, %bb.d
  %.0.i256 = phi i64 [ %i.ed, %bb.d ], [ 0, %bb.c ] ; 34 uses
  %i.ee = add nuw nsw i64 %.0363399, 12           ; 3 uses
  %i.ef = icmp samesign ugt i64 %i.ee, %2
  br i1 %i.ef, label %_ZN7lodepngL15decodeICCUint32EPKhmPm.exit259, label %bb.e

bb.e:                                             ; preds = %_ZN7lodepngL15decodeICCUint32EPKhmPm.exit257
  %i.eg = getelementptr inbounds nuw i8, ptr %1, i64 %i.dx
  %i.eh = load i32, ptr %i.eg, align 1
  %i.ei = tail call i32 @llvm.bswap.i32(i32 %i.eh)
  br label %_ZN7lodepngL15decodeICCUint32EPKhmPm.exit259

_ZN7lodepngL15decodeICCUint32EPKhmPm.exit259:     ; preds = %_ZN7lodepngL15decodeICCUint32EPKhmPm.exit257, %bb.e
  %.0.i258 = phi i32 [ %i.ei, %bb.e ], [ 0, %_ZN7lodepngL15decodeICCUint32EPKhmPm.exit257 ] ; 2 uses
  %.not226 = icmp samesign ult i64 %i.ee, %2
  br i1 %.not226, label %bb.f, label %.critedge243

bb.f:                                             ; preds = %_ZN7lodepngL15decodeICCUint32EPKhmPm.exit259
  %.not227 = icmp samesign uge i64 %.0.i256, %2
  %i.ej = zext i32 %.0.i258 to i64
  %i.ek = add nuw nsw i64 %.0.i256, %i.ej
  %i.el = icmp samesign ugt i64 %i.ek, %2
  %or.cond246 = select i1 %.not227, i1 true, i1 %i.el
  %i.em = icmp ult i32 %.0.i258, 8
  %or.cond247 = or i1 %i.em, %or.cond246
  br i1 %or.cond247, label %.critedge243, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.en = getelementptr inbounds nuw i8, ptr %1, i64 %.0363399 ; 13 uses
  %i.eo = load i8, ptr %i.en, align 1, !tbaa !20
  switch i8 %i.eo, label %_ZN7lodepngL9isICCwordEPKhmmPKc.exit284.thread [
    i8 119, label %bb.h
    i8 114, label %bb.n
    i8 103, label %bb.t
    i8 98, label %bb.z
  ]

bb.h:                                             ; preds = %bb.g
  %i.ep = getelementptr i8, ptr %i.en, i64 1
  %i.eq = load i8, ptr %i.ep, align 1, !tbaa !20
  %i.er = icmp eq i8 %i.eq, 116
  br i1 %i.er, label %bb.i, label %_ZN7lodepngL9isICCwordEPKhmmPKc.exit284.thread

bb.i:                                             ; preds = %bb.h
  %i.es = getelementptr i8, ptr %i.en, i64 2
  %i.et = load i8, ptr %i.es, align 1, !tbaa !20
  %i.eu = icmp eq i8 %i.et, 112
  br i1 %i.eu, label %_ZN7lodepngL9isICCwordEPKhmmPKc.exit, label %_ZN7lodepngL9isICCwordEPKhmmPKc.exit284.thread

_ZN7lodepngL9isICCwordEPKhmmPKc.exit:             ; preds = %bb.i
  %i.ev = getelementptr i8, ptr %i.en, i64 3
  %i.ew = load i8, ptr %i.ev, align 1, !tbaa !20
  %.not = icmp eq i8 %i.ew, 116
  br i1 %.not, label %bb.j, label %_ZN7lodepngL9isICCwordEPKhmmPKc.exit284.thread

bb.j:                                             ; preds = %_ZN7lodepngL9isICCwordEPKhmmPKc.exit
  %i.ex = add nuw nsw i64 %.0.i256, 12            ; 2 uses
  %i.ey = icmp samesign ugt i64 %i.ex, %2
  br i1 %i.ey, label %_ZN7lodepngL18decodeICC15Fixed16EPKhmPm.exit262, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ez = getelementptr inbounds nuw i8, ptr %1, i64 %.0.i256
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ez, i64 8
  %i.fb = load i32, ptr %i.fa, align 1
  %i.fc = tail call i32 @llvm.bswap.i32(i32 %i.fb)
  %i.fd = sitofp i32 %i.fc to float
  %i.fe = fmul nnan float %i.fd, f0x37800000
  br label %_ZN7lodepngL18decodeICC15Fixed16EPKhmPm.exit262

_ZN7lodepngL18decodeICC15Fixed16EPKhmPm.exit262:  ; preds = %bb.j, %bb.k
  %.0.i.i261 = phi float [ %i.fe, %bb.k ], [ 0.000000e+00, %bb.j ]
  store float %.0.i.i261, ptr %i.i, align 8, !tbaa !82
  %i.ff = add nuw nsw i64 %.0.i256, 16            ; 2 uses
  %i.fg = icmp samesign ugt i64 %i.ff, %2
  br i1 %i.fg, label %_ZN7lodepngL18decodeICC15Fixed16EPKhmPm.exit264, label %bb.l

bb.l:                                             ; preds = %_ZN7lodepngL18decodeICC15Fixed16EPKhmPm.exit262
  %i.fh = getelementptr inbounds nuw i8, ptr %1, i64 %i.ex
  %i.fi = load i32, ptr %i.fh, align 1
  %i.fj = tail call i32 @llvm.bswap.i32(i32 %i.fi)
  %i.fk = sitofp i32 %i.fj to float
  %i.fl = fmul nnan float %i.fk, f0x37800000
  br label %_ZN7lodepngL18decodeICC15Fixed16EPKhmPm.exit264

_ZN7lodepngL18decodeICC15Fixed16EPKhmPm.exit264:  ; preds = %_ZN7lodepngL18decodeICC15Fixed16EPKhmPm.exit262, %bb.l
  %.0.i.i263 = phi float [ %i.fl, %bb.l ], [ 0.000000e+00, %_ZN7lodepngL18decodeICC15Fixed16EPKhmPm.exit262 ]
  store float %.0.i.i263, ptr %i.k, align 4, !tbaa !82
  %i.fm = add nuw nsw i64 %.0.i256, 20            ; 2 uses
  %i.fn = icmp samesign ugt i64 %i.fm, %2
  br i1 %i.fn, label %_ZN7lodepngL18decodeICC15Fixed16EPKhmPm.exit266, label %bb.m

bb.m:                                             ; preds = %_ZN7lodepngL18decodeICC15Fixed16EPKhmPm.exit264
  %i.fo = getelementptr inbounds nuw i8, ptr %1, i64 %i.ff
  %i.fp = load i32, ptr %i.fo, align 1
  %i.fq = tail call i32 @llvm.bswap.i32(i32 %i.fp)
  %i.fr = sitofp i32 %i.fq to float
  %i.fs = fmul nnan float %i.fr, f0x37800000
  br label %_ZN7lodepngL18decodeICC15Fixed16EPKhmPm.exit266

_ZN7lodepngL18decodeICC15Fixed16EPKhmPm.exit266:  ; preds = %_ZN7lodepngL18decodeICC15Fixed16EPKhmPm.exit264, %bb.m
  %.0.i.i265 = phi float [ %i.fs, %bb.m ], [ 0.000000e+00, %_ZN7lodepngL18decodeICC15Fixed16EPKhmPm.exit264 ]
  store float %.0.i.i265, ptr %i.j, align 8, !tbaa !82
  store i32 1, ptr %i.c, align 4, !tbaa !80
  br label %.critedge

bb.n:                                             ; preds = %bb.g
  %i.ft = getelementptr i8, ptr %i.en, i64 1
  %i.fu = load i8, ptr %i.ft, align 1, !tbaa !20
  %i.fv = icmp eq i8 %i.fu, 88
  br i1 %i.fv, label %bb.o, label %_ZN7lodepngL9isICCwordEPKhmmPKc.exit284.thread

bb.o:                                             ; preds = %bb.n
  %i.fw = getelementptr i8, ptr %i.en, i64 2
  %i.fx = load i8, ptr %i.fw, align 1, !tbaa !20
  %i.fy = icmp eq i8 %i.fx, 89
  br i1 %i.fy, label %_ZN7lodepngL9isICCwordEPKhmmPKc.exit268, label %_ZN7lodepngL9isICCwordEPKhmmPKc.exit284.thread

_ZN7lodepngL9isICCwordEPKhmmPKc.exit268:          ; preds = %bb.o
  %i.fz = getelementptr i8, ptr %i.en, i64 3
  %i.ga = load i8, ptr %i.fz, align 1, !tbaa !20
  %.not390 = icmp eq i8 %i.ga, 90
  br i1 %.not390, label %bb.p, label %_ZN7lodepngL9isICCwordEPKhmmPKc.exit284.thread

bb.p:                                             ; preds = %_ZN7lodepngL9isICCwordEPKhmmPKc.exit268
  %i.gb = add nuw nsw i64 %.0.i256, 12            ; 2 uses
  %i.gc = icmp samesign ugt i64 %i.gb, %2
  br i1 %i.gc, label %_ZN7lodepngL18decodeICC15Fixed16EPKhmPm.exit270, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.gd = getelementptr inbounds nuw i8, ptr %1, i64 %.0.i256
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gd, i64 8
  %i.gf = load i32, ptr %i.ge, align 1
  %i.gg = tail call i32 @llvm.bswap.i32(i32 %i.gf)
  %i.gh = sitofp i32 %i.gg to float
  %i.gi = fmul nnan float %i.gh, f0x37800000
  br label %_ZN7lodepngL18decodeICC15Fixed16EPKhmPm.exit270

_ZN7lodepngL18decodeICC15Fixed16EPKhmPm.exit270:  ; preds = %bb.p, %bb.q
  %.0.i.i269 = phi float [ %i.gi, %bb.q ], [ 0.000000e+00, %bb.p ]
  store float %.0.i.i269, ptr %i.l, align 8, !tbaa !82
  %i.gj = add nuw nsw i64 %.0.i256, 16            ; 2 uses
  %i.gk = icmp samesign ugt i64 %i.gj, %2
  br i1 %i.gk, label %_ZN7lodepngL18decodeICC15Fixed16EPKhmPm.exit272, label %bb.r

bb.r:                                             ; preds = %_ZN7lodepngL18decodeICC15Fixed16EPKhmPm.exit270
  %i.gl = getelementptr inbounds nuw i8, ptr %1, i64 %i.gb
  %i.gm = load i32, ptr %i.gl, align 1
  %i.gn = tail call i32 @llvm.bswap.i32(i32 %i.gm)
  %i.go = sitofp i32 %i.gn to float
  %i.gp = fmul nnan float %i.go, f0x37800000
  br label %_ZN7lodepngL18decodeICC15Fixed16EPKhmPm.exit272

_ZN7lodepngL18decodeICC15Fixed16EPKhmPm.exit272:  ; preds = %_ZN7lodepngL18decodeICC15Fixed16EPKhmPm.exit270, %bb.r
  %.0.i.i271 = phi float [ %i.gp, %bb.r ], [ 0.000000e+00, %_ZN7lodepngL18decodeICC15Fixed16EPKhmPm.exit270 ]
  store float %.0.i.i271, ptr %i.n, align 4, !tbaa !82
  %i.gq = add nuw nsw i64 %.0.i256, 20            ; 2 uses
  %i.gr = icmp samesign ugt i64 %i.gq, %2
  br i1 %i.gr, label %_ZN7lodepngL18decodeICC15Fixed16EPKhmPm.exit274, label %bb.s

bb.s:                                             ; preds = %_ZN7lodepngL18decodeICC15Fixed16EPKhmPm.exit272
  %i.gs = getelementptr inbounds nuw i8, ptr %1, i64 %i.gj
  %i.gt = load i32, ptr %i.gs, align 1
  %i.gu = tail call i32 @llvm.bswap.i32(i32 %i.gt)
  %i.gv = sitofp i32 %i.gu to float
  %i.gw = fmul nnan float %i.gv, f0x37800000
  br label %_ZN7lodepngL18decodeICC15Fixed16EPKhmPm.exit274

_ZN7lodepngL18decodeICC15Fixed16EPKhmPm.exit274:  ; preds = %_ZN7lodepngL18decodeICC15Fixed16EPKhmPm.exit272, %bb.s
  %.0.i.i273 = phi float [ %i.gw, %bb.s ], [ 0.000000e+00, %_ZN7lodepngL18decodeICC15Fixed16EPKhmPm.exit272 ]
  store float %.0.i.i273, ptr %i.m, align 8, !tbaa !82
  store i32 1, ptr %i.b, align 4, !tbaa !79
  br label %.critedge

bb.t:                                             ; preds = %bb.g
  %i.gx = getelementptr i8, ptr %i.en, i64 1
  %i.gy = load i8, ptr %i.gx, align 1, !tbaa !20
  %i.gz = icmp eq i8 %i.gy, 88
  br i1 %i.gz, label %bb.u, label %_ZN7lodepngL9isICCwordEPKhmmPKc.exit284.thread

bb.u:                                             ; preds = %bb.t
  %i.ha = getelementptr i8, ptr %i.en, i64 2
  %i.hb = load i8, ptr %i.ha, align 1, !tbaa !20
  %i.hc = icmp eq i8 %i.hb, 89
  br i1 %i.hc, label %_ZN7lodepngL9isICCwordEPKhmmPKc.exit276, label %_ZN7lodepngL9isICCwordEPKhmmPKc.exit284.thread

_ZN7lodepngL9isICCwordEPKhmmPKc.exit276:          ; preds = %bb.u
  %i.hd = getelementptr i8, ptr %i.en, i64 3
  %i.he = load i8, ptr %i.hd, align 1, !tbaa !20
  %.not391 = icmp eq i8 %i.he, 90
  br i1 %.not391, label %bb.v, label %_ZN7lodepngL9isICCwordEPKhmmPKc.exit284.thread

bb.v:                                             ; preds = %_ZN7lodepngL9isICCwordEPKhmmPKc.exit276
  %i.hf = add nuw nsw i64 %.0.i256, 12            ; 2 uses
  %i.hg = icmp samesign ugt i64 %i.hf, %2
  br i1 %i.hg, label %_ZN7lodepngL18decodeICC15Fixed16EPKhmPm.exit278, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.hh = getelementptr inbounds nuw i8, ptr %1, i64 %.0.i256
  %i.hi = getelementptr inbounds nuw i8, ptr %i.hh, i64 8
  %i.hj = load i32, ptr %i.hi, align 1
  %i.hk = tail call i32 @llvm.bswap.i32(i32 %i.hj)
  %i.hl = sitofp i32 %i.hk to float
  %i.hm = fmul nnan float %i.hl, f0x37800000
  br label %_ZN7lodepngL18decodeICC15Fixed16EPKhmPm.exit278

_ZN7lodepngL18decodeICC15Fixed16EPKhmPm.exit278:  ; preds = %bb.v, %bb.w
  %.0.i.i277 = phi float [ %i.hm, %bb.w ], [ 0.000000e+00, %bb.v ]
  store float %.0.i.i277, ptr %i.o, align 4, !tbaa !82
  %i.hn = add nuw nsw i64 %.0.i256, 16            ; 2 uses
  %i.ho = icmp samesign ugt i64 %i.hn, %2
  br i1 %i.ho, label %_ZN7lodepngL18decodeICC15Fixed16EPKhmPm.exit280, label %bb.x

bb.x:                                             ; preds = %_ZN7lodepngL18decodeICC15Fixed16EPKhmPm.exit278
  %i.hp = getelementptr inbounds nuw i8, ptr %1, i64 %i.hf
  %i.hq = load i32, ptr %i.hp, align 1
  %i.hr = tail call i32 @llvm.bswap.i32(i32 %i.hq)
end_hunk_0
