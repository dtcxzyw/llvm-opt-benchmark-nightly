Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lodepng/original/lodepng_util?download=true
inline.NumInlined: 864
inline.NumDeleted: 299
loop-unroll.NumCompletelyUnrolled: 10
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 13
begin_hunk_0_@_ZN7lodepng12convertToXYZEPfS0_PKhjjPK12LodePNGState:bb.a
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
  %i.dw = add nuw nsw i64 %.0214400, 1            ; 2 uses
  %exitcond.not = icmp eq i64 %i.dw, %i.dn
  br i1 %exitcond.not, label %.critedge243, label %bb.c, !llvm.loop !110

bb.c:                                             ; preds = %.lr.ph401, %bb.b
  %.0214400 = phi i64 [ 0, %.lr.ph401 ], [ %i.dw, %bb.b ]
  %.0363399 = phi i64 [ 132, %.lr.ph401 ], [ %i.ed, %bb.b ] ; 10 uses
  %3 = add nuw nsw i64 %.0363399, 4               ; 2 uses
  %i.dx = add nuw nsw i64 %.0363399, 8            ; 2 uses
  %i.dy = icmp samesign ugt i64 %i.dx, %2
  br i1 %i.dy, label %_ZN7lodepngL15decodeICCUint32EPKhmPm.exit257, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.dz = getelementptr inbounds nuw i8, ptr %1, i64 %3
  %i.ea = load i32, ptr %i.dz, align 1
  %i.eb = tail call i32 @llvm.bswap.i32(i32 %i.ea)
  %i.ec = zext i32 %i.eb to i64
  br label %_ZN7lodepngL15decodeICCUint32EPKhmPm.exit257

_ZN7lodepngL15decodeICCUint32EPKhmPm.exit257:     ; preds = %bb.c, %bb.d
  %.0.i256 = phi i64 [ %i.ec, %bb.d ], [ 0, %bb.c ] ; 34 uses
  %i.ed = add nuw nsw i64 %.0363399, 12           ; 3 uses
  %i.ee = icmp samesign ugt i64 %i.ed, %2
  br i1 %i.ee, label %_ZN7lodepngL15decodeICCUint32EPKhmPm.exit259, label %bb.e

bb.e:                                             ; preds = %_ZN7lodepngL15decodeICCUint32EPKhmPm.exit257
  %i.ef = getelementptr inbounds nuw i8, ptr %1, i64 %i.dx
  %i.eg = load i32, ptr %i.ef, align 1
  %i.eh = tail call i32 @llvm.bswap.i32(i32 %i.eg)
  br label %_ZN7lodepngL15decodeICCUint32EPKhmPm.exit259

_ZN7lodepngL15decodeICCUint32EPKhmPm.exit259:     ; preds = %_ZN7lodepngL15decodeICCUint32EPKhmPm.exit257, %bb.e
  %.0.i258 = phi i32 [ %i.eh, %bb.e ], [ 0, %_ZN7lodepngL15decodeICCUint32EPKhmPm.exit257 ] ; 2 uses
  %.not226 = icmp samesign ult i64 %i.ed, %2
  br i1 %.not226, label %bb.f, label %.critedge243

bb.f:                                             ; preds = %_ZN7lodepngL15decodeICCUint32EPKhmPm.exit259
  %.not227 = icmp samesign uge i64 %.0.i256, %2
  %i.ei = zext i32 %.0.i258 to i64
  %i.ej = add nuw nsw i64 %.0.i256, %i.ei
  %i.ek = icmp samesign ugt i64 %i.ej, %2
  %or.cond246 = select i1 %.not227, i1 true, i1 %i.ek
  %i.el = icmp ult i32 %.0.i258, 8
  %or.cond247 = or i1 %i.el, %or.cond246
  br i1 %or.cond247, label %.critedge243, label %4

4:                                                ; preds = %bb.f
  %5 = icmp samesign ugt i64 %3, %2
  br i1 %5, label %_ZN7lodepngL9isICCwordEPKhmmPKc.exit284.thread, label %bb.g

bb.g:                                             ; preds = %4
  %i.em = getelementptr inbounds nuw i8, ptr %1, i64 %.0363399 ; 13 uses
  %i.en = load i8, ptr %i.em, align 1, !tbaa !21
  switch i8 %i.en, label %_ZN7lodepngL9isICCwordEPKhmmPKc.exit284.thread [
    i8 119, label %bb.h
    i8 114, label %bb.n
    i8 103, label %bb.t
    i8 98, label %bb.z
  ]

bb.h:                                             ; preds = %bb.g
  %i.eo = getelementptr i8, ptr %i.em, i64 1
  %i.ep = load i8, ptr %i.eo, align 1, !tbaa !21
  %i.eq = icmp eq i8 %i.ep, 116
  br i1 %i.eq, label %bb.i, label %_ZN7lodepngL9isICCwordEPKhmmPKc.exit284.thread

bb.i:                                             ; preds = %bb.h
  %i.er = getelementptr i8, ptr %i.em, i64 2
  %i.es = load i8, ptr %i.er, align 1, !tbaa !21
  %i.et = icmp eq i8 %i.es, 112
  br i1 %i.et, label %_ZN7lodepngL9isICCwordEPKhmmPKc.exit, label %_ZN7lodepngL9isICCwordEPKhmmPKc.exit284.thread

_ZN7lodepngL9isICCwordEPKhmmPKc.exit:             ; preds = %bb.i
  %i.eu = getelementptr i8, ptr %i.em, i64 3
  %i.ev = load i8, ptr %i.eu, align 1, !tbaa !21
  %.not = icmp eq i8 %i.ev, 116
  br i1 %.not, label %bb.j, label %_ZN7lodepngL9isICCwordEPKhmmPKc.exit284.thread

bb.j:                                             ; preds = %_ZN7lodepngL9isICCwordEPKhmmPKc.exit
  %i.ew = add nuw nsw i64 %.0.i256, 12            ; 2 uses
  %i.ex = icmp samesign ugt i64 %i.ew, %2
  br i1 %i.ex, label %_ZN7lodepngL18decodeICC15Fixed16EPKhmPm.exit262, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ey = getelementptr inbounds nuw i8, ptr %1, i64 %.0.i256
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 8
  %i.fa = load i32, ptr %i.ez, align 1
  %i.fb = tail call i32 @llvm.bswap.i32(i32 %i.fa)
  %i.fc = sitofp i32 %i.fb to float
  %i.fd = fmul nnan float %i.fc, f0x37800000
  br label %_ZN7lodepngL18decodeICC15Fixed16EPKhmPm.exit262

_ZN7lodepngL18decodeICC15Fixed16EPKhmPm.exit262:  ; preds = %bb.j, %bb.k
  %.0.i.i261 = phi float [ %i.fd, %bb.k ], [ 0.000000e+00, %bb.j ]
  store float %.0.i.i261, ptr %i.i, align 8, !tbaa !58
  %i.fe = add nuw nsw i64 %.0.i256, 16            ; 2 uses
  %i.ff = icmp samesign ugt i64 %i.fe, %2
  br i1 %i.ff, label %_ZN7lodepngL18decodeICC15Fixed16EPKhmPm.exit264, label %bb.l

bb.l:                                             ; preds = %_ZN7lodepngL18decodeICC15Fixed16EPKhmPm.exit262
  %i.fg = getelementptr inbounds nuw i8, ptr %1, i64 %i.ew
  %i.fh = load i32, ptr %i.fg, align 1
  %i.fi = tail call i32 @llvm.bswap.i32(i32 %i.fh)
  %i.fj = sitofp i32 %i.fi to float
  %i.fk = fmul nnan float %i.fj, f0x37800000
  br label %_ZN7lodepngL18decodeICC15Fixed16EPKhmPm.exit264

_ZN7lodepngL18decodeICC15Fixed16EPKhmPm.exit264:  ; preds = %_ZN7lodepngL18decodeICC15Fixed16EPKhmPm.exit262, %bb.l
  %.0.i.i263 = phi float [ %i.fk, %bb.l ], [ 0.000000e+00, %_ZN7lodepngL18decodeICC15Fixed16EPKhmPm.exit262 ]
  store float %.0.i.i263, ptr %i.k, align 4, !tbaa !58
  %i.fl = add nuw nsw i64 %.0.i256, 20            ; 2 uses
  %i.fm = icmp samesign ugt i64 %i.fl, %2
  br i1 %i.fm, label %_ZN7lodepngL18decodeICC15Fixed16EPKhmPm.exit266, label %bb.m

bb.m:                                             ; preds = %_ZN7lodepngL18decodeICC15Fixed16EPKhmPm.exit264
  %i.fn = getelementptr inbounds nuw i8, ptr %1, i64 %i.fe
  %i.fo = load i32, ptr %i.fn, align 1
  %i.fp = tail call i32 @llvm.bswap.i32(i32 %i.fo)
  %i.fq = sitofp i32 %i.fp to float
  %i.fr = fmul nnan float %i.fq, f0x37800000
  br label %_ZN7lodepngL18decodeICC15Fixed16EPKhmPm.exit266

_ZN7lodepngL18decodeICC15Fixed16EPKhmPm.exit266:  ; preds = %_ZN7lodepngL18decodeICC15Fixed16EPKhmPm.exit264, %bb.m
  %.0.i.i265 = phi float [ %i.fr, %bb.m ], [ 0.000000e+00, %_ZN7lodepngL18decodeICC15Fixed16EPKhmPm.exit264 ]
  store float %.0.i.i265, ptr %i.j, align 8, !tbaa !58
  store i32 1, ptr %i.c, align 4, !tbaa !56
  br label %.critedge

bb.n:                                             ; preds = %bb.g
  %i.fs = getelementptr i8, ptr %i.em, i64 1
  %i.ft = load i8, ptr %i.fs, align 1, !tbaa !21
  %i.fu = icmp eq i8 %i.ft, 88
  br i1 %i.fu, label %bb.o, label %_ZN7lodepngL9isICCwordEPKhmmPKc.exit284.thread

bb.o:                                             ; preds = %bb.n
  %i.fv = getelementptr i8, ptr %i.em, i64 2
  %i.fw = load i8, ptr %i.fv, align 1, !tbaa !21
  %i.fx = icmp eq i8 %i.fw, 89
  br i1 %i.fx, label %_ZN7lodepngL9isICCwordEPKhmmPKc.exit268, label %_ZN7lodepngL9isICCwordEPKhmmPKc.exit284.thread

_ZN7lodepngL9isICCwordEPKhmmPKc.exit268:          ; preds = %bb.o
  %i.fy = getelementptr i8, ptr %i.em, i64 3
  %i.fz = load i8, ptr %i.fy, align 1, !tbaa !21
  %.not390 = icmp eq i8 %i.fz, 90
  br i1 %.not390, label %bb.p, label %_ZN7lodepngL9isICCwordEPKhmmPKc.exit284.thread

bb.p:                                             ; preds = %_ZN7lodepngL9isICCwordEPKhmmPKc.exit268
  %i.ga = add nuw nsw i64 %.0.i256, 12            ; 2 uses
  %i.gb = icmp samesign ugt i64 %i.ga, %2
  br i1 %i.gb, label %_ZN7lodepngL18decodeICC15Fixed16EPKhmPm.exit270, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.gc = getelementptr inbounds nuw i8, ptr %1, i64 %.0.i256
  %i.gd = getelementptr inbounds nuw i8, ptr %i.gc, i64 8
  %i.ge = load i32, ptr %i.gd, align 1
  %i.gf = tail call i32 @llvm.bswap.i32(i32 %i.ge)
  %i.gg = sitofp i32 %i.gf to float
  %i.gh = fmul nnan float %i.gg, f0x37800000
  br label %_ZN7lodepngL18decodeICC15Fixed16EPKhmPm.exit270

_ZN7lodepngL18decodeICC15Fixed16EPKhmPm.exit270:  ; preds = %bb.p, %bb.q
  %.0.i.i269 = phi float [ %i.gh, %bb.q ], [ 0.000000e+00, %bb.p ]
  store float %.0.i.i269, ptr %i.l, align 8, !tbaa !58
  %i.gi = add nuw nsw i64 %.0.i256, 16            ; 2 uses
  %i.gj = icmp samesign ugt i64 %i.gi, %2
  br i1 %i.gj, label %_ZN7lodepngL18decodeICC15Fixed16EPKhmPm.exit272, label %bb.r

bb.r:                                             ; preds = %_ZN7lodepngL18decodeICC15Fixed16EPKhmPm.exit270
  %i.gk = getelementptr inbounds nuw i8, ptr %1, i64 %i.ga
  %i.gl = load i32, ptr %i.gk, align 1
  %i.gm = tail call i32 @llvm.bswap.i32(i32 %i.gl)
  %i.gn = sitofp i32 %i.gm to float
  %i.go = fmul nnan float %i.gn, f0x37800000
  br label %_ZN7lodepngL18decodeICC15Fixed16EPKhmPm.exit272

_ZN7lodepngL18decodeICC15Fixed16EPKhmPm.exit272:  ; preds = %_ZN7lodepngL18decodeICC15Fixed16EPKhmPm.exit270, %bb.r
  %.0.i.i271 = phi float [ %i.go, %bb.r ], [ 0.000000e+00, %_ZN7lodepngL18decodeICC15Fixed16EPKhmPm.exit270 ]
  store float %.0.i.i271, ptr %i.n, align 4, !tbaa !58
  %i.gp = add nuw nsw i64 %.0.i256, 20            ; 2 uses
  %i.gq = icmp samesign ugt i64 %i.gp, %2
  br i1 %i.gq, label %_ZN7lodepngL18decodeICC15Fixed16EPKhmPm.exit274, label %bb.s

bb.s:                                             ; preds = %_ZN7lodepngL18decodeICC15Fixed16EPKhmPm.exit272
  %i.gr = getelementptr inbounds nuw i8, ptr %1, i64 %i.gi
  %i.gs = load i32, ptr %i.gr, align 1
  %i.gt = tail call i32 @llvm.bswap.i32(i32 %i.gs)
  %i.gu = sitofp i32 %i.gt to float
  %i.gv = fmul nnan float %i.gu, f0x37800000
  br label %_ZN7lodepngL18decodeICC15Fixed16EPKhmPm.exit274

_ZN7lodepngL18decodeICC15Fixed16EPKhmPm.exit274:  ; preds = %_ZN7lodepngL18decodeICC15Fixed16EPKhmPm.exit272, %bb.s
  %.0.i.i273 = phi float [ %i.gv, %bb.s ], [ 0.000000e+00, %_ZN7lodepngL18decodeICC15Fixed16EPKhmPm.exit272 ]
  store float %.0.i.i273, ptr %i.m, align 8, !tbaa !58
  store i32 1, ptr %i.b, align 4, !tbaa !55
  br label %.critedge

bb.t:                                             ; preds = %bb.g
  %i.gw = getelementptr i8, ptr %i.em, i64 1
  %i.gx = load i8, ptr %i.gw, align 1, !tbaa !21
  %i.gy = icmp eq i8 %i.gx, 88
  br i1 %i.gy, label %bb.u, label %_ZN7lodepngL9isICCwordEPKhmmPKc.exit284.thread

bb.u:                                             ; preds = %bb.t
  %i.gz = getelementptr i8, ptr %i.em, i64 2
  %i.ha = load i8, ptr %i.gz, align 1, !tbaa !21
  %i.hb = icmp eq i8 %i.ha, 89
  br i1 %i.hb, label %_ZN7lodepngL9isICCwordEPKhmmPKc.exit276, label %_ZN7lodepngL9isICCwordEPKhmmPKc.exit284.thread

_ZN7lodepngL9isICCwordEPKhmmPKc.exit276:          ; preds = %bb.u
  %i.hc = getelementptr i8, ptr %i.em, i64 3
  %i.hd = load i8, ptr %i.hc, align 1, !tbaa !21
  %.not391 = icmp eq i8 %i.hd, 90
  br i1 %.not391, label %bb.v, label %_ZN7lodepngL9isICCwordEPKhmmPKc.exit284.thread

bb.v:                                             ; preds = %_ZN7lodepngL9isICCwordEPKhmmPKc.exit276
  %i.he = add nuw nsw i64 %.0.i256, 12            ; 2 uses
  %i.hf = icmp samesign ugt i64 %i.he, %2
  br i1 %i.hf, label %_ZN7lodepngL18decodeICC15Fixed16EPKhmPm.exit278, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.hg = getelementptr inbounds nuw i8, ptr %1, i64 %.0.i256
  %i.hh = getelementptr inbounds nuw i8, ptr %i.hg, i64 8
  %i.hi = load i32, ptr %i.hh, align 1
  %i.hj = tail call i32 @llvm.bswap.i32(i32 %i.hi)
  %i.hk = sitofp i32 %i.hj to float
  %i.hl = fmul nnan float %i.hk, f0x37800000
  br label %_ZN7lodepngL18decodeICC15Fixed16EPKhmPm.exit278

_ZN7lodepngL18decodeICC15Fixed16EPKhmPm.exit278:  ; preds = %bb.v, %bb.w
  %.0.i.i277 = phi float [ %i.hl, %bb.w ], [ 0.000000e+00, %bb.v ]
  store float %.0.i.i277, ptr %i.o, align 4, !tbaa !58
  %i.hm = add nuw nsw i64 %.0.i256, 16            ; 2 uses
  %i.hn = icmp samesign ugt i64 %i.hm, %2
  br i1 %i.hn, label %_ZN7lodepngL18decodeICC15Fixed16EPKhmPm.exit280, label %bb.x

bb.x:                                             ; preds = %_ZN7lodepngL18decodeICC15Fixed16EPKhmPm.exit278
  %i.ho = getelementptr inbounds nuw i8, ptr %1, i64 %i.he
  %i.hp = load i32, ptr %i.ho, align 1
  %i.hq = tail call i32 @llvm.bswap.i32(i32 %i.hp)
  %i.hr = sitofp i32 %i.hq to float
  %i.hs = fmul nnan float %i.hr, f0x37800000
  br label %_ZN7lodepngL18decodeICC15Fixed16EPKhmPm.exit280

_ZN7lodepngL18decodeICC15Fixed16EPKhmPm.exit280:  ; preds = %_ZN7lodepngL18decodeICC15Fixed16EPKhmPm.exit278, %bb.x
  %.0.i.i279 = phi float [ %i.hs, %bb.x ], [ 0.000000e+00, %_ZN7lodepngL18decodeICC15Fixed16EPKhmPm.exit278 ]
  store float %.0.i.i279, ptr %i.q, align 8, !tbaa !58
  %i.ht = add nuw nsw i64 %.0.i256, 20            ; 2 uses
  %i.hu = icmp samesign ugt i64 %i.ht, %2
  br i1 %i.hu, label %_ZN7lodepngL18decodeICC15Fixed16EPKhmPm.exit282, label %bb.y

bb.y:                                             ; preds = %_ZN7lodepngL18decodeICC15Fixed16EPKhmPm.exit280
  %i.hv = getelementptr inbounds nuw i8, ptr %1, i64 %i.hm
  %i.hw = load i32, ptr %i.hv, align 1
  %i.hx = tail call i32 @llvm.bswap.i32(i32 %i.hw)
  %i.hy = sitofp i32 %i.hx to float
  %i.hz = fmul nnan float %i.hy, f0x37800000
  br label %_ZN7lodepngL18decodeICC15Fixed16EPKhmPm.exit282

_ZN7lodepngL18decodeICC15Fixed16EPKhmPm.exit282:  ; preds = %_ZN7lodepngL18decodeICC15Fixed16EPKhmPm.exit280, %bb.y
  %.0.i.i281 = phi float [ %i.hz, %bb.y ], [ 0.000000e+00, %_ZN7lodepngL18decodeICC15Fixed16EPKhmPm.exit280 ]
  store float %.0.i.i281, ptr %i.p, align 4, !tbaa !58
  store i32 1, ptr %i.b, align 4, !tbaa !55
  br label %.critedge

bb.z:                                             ; preds = %bb.g
  %i.ia = getelementptr i8, ptr %i.em, i64 1
  %i.ib = load i8, ptr %i.ia, align 1, !tbaa !21
  %i.ic = icmp eq i8 %i.ib, 88
  br i1 %i.ic, label %bb.aa, label %_ZN7lodepngL9isICCwordEPKhmmPKc.exit284.thread

bb.aa:                                            ; preds = %bb.z
  %i.id = getelementptr i8, ptr %i.em, i64 2
  %i.ie = load i8, ptr %i.id, align 1, !tbaa !21
  %i.if = icmp eq i8 %i.ie, 89
  br i1 %i.if, label %_ZN7lodepngL9isICCwordEPKhmmPKc.exit284, label %_ZN7lodepngL9isICCwordEPKhmmPKc.exit284.thread

_ZN7lodepngL9isICCwordEPKhmmPKc.exit284:          ; preds = %bb.aa
  %i.ig = getelementptr i8, ptr %i.em, i64 3
  %i.ih = load i8, ptr %i.ig, align 1, !tbaa !21
  %.not392 = icmp eq i8 %i.ih, 90
  br i1 %.not392, label %bb.ab, label %_ZN7lodepngL9isICCwordEPKhmmPKc.exit284.thread

bb.ab:                                            ; preds = %_ZN7lodepngL9isICCwordEPKhmmPKc.exit284
  %i.ii = add nuw nsw i64 %.0.i256, 12            ; 2 uses
  %i.ij = icmp samesign ugt i64 %i.ii, %2
  br i1 %i.ij, label %_ZN7lodepngL18decodeICC15Fixed16EPKhmPm.exit286, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.ik = getelementptr inbounds nuw i8, ptr %1, i64 %.0.i256
  %i.il = getelementptr inbounds nuw i8, ptr %i.ik, i64 8
  %i.im = load i32, ptr %i.il, align 1
  %i.in = tail call i32 @llvm.bswap.i32(i32 %i.im)
  %i.io = sitofp i32 %i.in to float
  %i.ip = fmul nnan float %i.io, f0x37800000
  br label %_ZN7lodepngL18decodeICC15Fixed16EPKhmPm.exit286

_ZN7lodepngL18decodeICC15Fixed16EPKhmPm.exit286:  ; preds = %bb.ab, %bb.ac
  %.0.i.i285 = phi float [ %i.ip, %bb.ac ], [ 0.000000e+00, %bb.ab ]
  store float %.0.i.i285, ptr %i.r, align 8, !tbaa !58
  %i.iq = add nuw nsw i64 %.0.i256, 16            ; 2 uses
  %i.ir = icmp samesign ugt i64 %i.iq, %2
  br i1 %i.ir, label %_ZN7lodepngL18decodeICC15Fixed16EPKhmPm.exit288, label %bb.ad

bb.ad:                                            ; preds = %_ZN7lodepngL18decodeICC15Fixed16EPKhmPm.exit286
  %i.is = getelementptr inbounds nuw i8, ptr %1, i64 %i.ii
  %i.it = load i32, ptr %i.is, align 1
  %i.iu = tail call i32 @llvm.bswap.i32(i32 %i.it)
  %i.iv = sitofp i32 %i.iu to float
  %i.iw = fmul nnan float %i.iv, f0x37800000
  br label %_ZN7lodepngL18decodeICC15Fixed16EPKhmPm.exit288

_ZN7lodepngL18decodeICC15Fixed16EPKhmPm.exit288:  ; preds = %_ZN7lodepngL18decodeICC15Fixed16EPKhmPm.exit286, %bb.ad
  %.0.i.i287 = phi float [ %i.iw, %bb.ad ], [ 0.000000e+00, %_ZN7lodepngL18decodeICC15Fixed16EPKhmPm.exit286 ]
  store float %.0.i.i287, ptr %i.t, align 4, !tbaa !58
  %i.ix = add nuw nsw i64 %.0.i256, 20            ; 2 uses
  %i.iy = icmp samesign ugt i64 %i.ix, %2
  br i1 %i.iy, label %_ZN7lodepngL18decodeICC15Fixed16EPKhmPm.exit290, label %bb.ae

bb.ae:                                            ; preds = %_ZN7lodepngL18decodeICC15Fixed16EPKhmPm.exit288
  %i.iz = getelementptr inbounds nuw i8, ptr %1, i64 %i.iq
  %i.ja = load i32, ptr %i.iz, align 1
  %i.jb = tail call i32 @llvm.bswap.i32(i32 %i.ja)
  %i.jc = sitofp i32 %i.jb to float
  %i.jd = fmul nnan float %i.jc, f0x37800000
  br label %_ZN7lodepngL18decodeICC15Fixed16EPKhmPm.exit290

_ZN7lodepngL18decodeICC15Fixed16EPKhmPm.exit290:  ; preds = %_ZN7lodepngL18decodeICC15Fixed16EPKhmPm.exit288, %bb.ae
  %.0.i.i289 = phi float [ %i.jd, %bb.ae ], [ 0.000000e+00, %_ZN7lodepngL18decodeICC15Fixed16EPKhmPm.exit288 ]
  store float %.0.i.i289, ptr %i.s, align 8, !tbaa !58
  store i32 1, ptr %i.b, align 4, !tbaa !55
  br label %.critedge

_ZN7lodepngL9isICCwordEPKhmmPKc.exit284.thread:   ; preds = %bb.g, %_ZN7lodepngL9isICCwordEPKhmmPKc.exit, %bb.i, %bb.h, %_ZN7lodepngL9isICCwordEPKhmmPKc.exit268, %bb.o, %bb.n, %_ZN7lodepngL9isICCwordEPKhmmPKc.exit276, %bb.u, %bb.t, %4, %bb.z, %bb.aa, %_ZN7lodepngL9isICCwordEPKhmmPKc.exit284
  %i.je = tail call fastcc noundef i32 @_ZN7lodepngL9isICCwordEPKhmmPKc(ptr noundef %1, i64 noundef %2, i64 noundef %.0363399, ptr noundef nonnull @.str.8)
  %.not232 = icmp eq i32 %i.je, 0
  br i1 %.not232, label %bb.ap, label %bb.af

bb.af:                                            ; preds = %_ZN7lodepngL9isICCwordEPKhmmPKc.exit284.thread
  %i.jf = add nuw nsw i64 %.0.i256, 12            ; 2 uses
  %i.jg = icmp samesign ugt i64 %i.jf, %2
  br i1 %i.jg, label %_ZN7lodepngL18decodeICC15Fixed16EPKhmPm.exit292, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.jh = getelementptr inbounds nuw i8, ptr %1, i64 %.0.i256
  %i.ji = getelementptr inbounds nuw i8, ptr %i.jh, i64 8
  %i.jj = load i32, ptr %i.ji, align 1
  %i.jk = tail call i32 @llvm.bswap.i32(i32 %i.jj)
  %i.jl = sitofp i32 %i.jk to float
  %i.jm = fmul nnan float %i.jl, f0x37800000
  br label %_ZN7lodepngL18decodeICC15Fixed16EPKhmPm.exit292

_ZN7lodepngL18decodeICC15Fixed16EPKhmPm.exit292:  ; preds = %bb.af, %bb.ag
  %.0.i.i291 = phi float [ %i.jm, %bb.ag ], [ 0.000000e+00, %bb.af ]
  store float %.0.i.i291, ptr %i.dk, align 8, !tbaa !58
  %i.jn = add nuw nsw i64 %.0.i256, 16            ; 2 uses
  %i.jo = icmp samesign ugt i64 %i.jn, %2
  br i1 %i.jo, label %_ZN7lodepngL18decodeICC15Fixed16EPKhmPm.exit292.1, label %bb.ah

bb.ah:                                            ; preds = %_ZN7lodepngL18decodeICC15Fixed16EPKhmPm.exit292
  %i.jp = getelementptr inbounds nuw i8, ptr %1, i64 %i.jf
  %i.jq = load i32, ptr %i.jp, align 1
  %i.jr = tail call i32 @llvm.bswap.i32(i32 %i.jq)
  %i.js = sitofp i32 %i.jr to float
  %i.jt = fmul nnan float %i.js, f0x37800000
  br label %_ZN7lodepngL18decodeICC15Fixed16EPKhmPm.exit292.1

_ZN7lodepngL18decodeICC15Fixed16EPKhmPm.exit292.1: ; preds = %bb.ah, %_ZN7lodepngL18decodeICC15Fixed16EPKhmPm.exit292
  %.0.i.i291.1 = phi float [ %i.jt, %bb.ah ], [ 0.000000e+00, %_ZN7lodepngL18decodeICC15Fixed16EPKhmPm.exit292 ]
  store float %.0.i.i291.1, ptr %i.do, align 4, !tbaa !58
  %i.ju = add nuw nsw i64 %.0.i256, 20            ; 2 uses
  %i.jv = icmp samesign ugt i64 %i.ju, %2
  br i1 %i.jv, label %_ZN7lodepngL18decodeICC15Fixed16EPKhmPm.exit292.2, label %bb.ai

bb.ai:                                            ; preds = %_ZN7lodepngL18decodeICC15Fixed16EPKhmPm.exit292.1
  %i.jw = getelementptr inbounds nuw i8, ptr %1, i64 %i.jn
  %i.jx = load i32, ptr %i.jw, align 1
  %i.jy = tail call i32 @llvm.bswap.i32(i32 %i.jx)
  %i.jz = sitofp i32 %i.jy to float
  %i.ka = fmul nnan float %i.jz, f0x37800000
  br label %_ZN7lodepngL18decodeICC15Fixed16EPKhmPm.exit292.2

_ZN7lodepngL18decodeICC15Fixed16EPKhmPm.exit292.2: ; preds = %bb.ai, %_ZN7lodepngL18decodeICC15Fixed16EPKhmPm.exit292.1
  %.0.i.i291.2 = phi float [ %i.ka, %bb.ai ], [ 0.000000e+00, %_ZN7lodepngL18decodeICC15Fixed16EPKhmPm.exit292.1 ]
  store float %.0.i.i291.2, ptr %i.dp, align 8, !tbaa !58
  %i.kb = add nuw nsw i64 %.0.i256, 24            ; 2 uses
  %i.kc = icmp samesign ugt i64 %i.kb, %2
  br i1 %i.kc, label %_ZN7lodepngL18decodeICC15Fixed16EPKhmPm.exit292.3, label %bb.aj

bb.aj:                                            ; preds = %_ZN7lodepngL18decodeICC15Fixed16EPKhmPm.exit292.2
  %i.kd = getelementptr inbounds nuw i8, ptr %1, i64 %i.ju
  %i.ke = load i32, ptr %i.kd, align 1
  %i.kf = tail call i32 @llvm.bswap.i32(i32 %i.ke)
  %i.kg = sitofp i32 %i.kf to float
  %i.kh = fmul nnan float %i.kg, f0x37800000
  br label %_ZN7lodepngL18decodeICC15Fixed16EPKhmPm.exit292.3

_ZN7lodepngL18decodeICC15Fixed16EPKhmPm.exit292.3: ; preds = %bb.aj, %_ZN7lodepngL18decodeICC15Fixed16EPKhmPm.exit292.2
  %.0.i.i291.3 = phi float [ %i.kh, %bb.aj ], [ 0.000000e+00, %_ZN7lodepngL18decodeICC15Fixed16EPKhmPm.exit292.2 ]
  store float %.0.i.i291.3, ptr %i.dq, align 4, !tbaa !58
  %i.ki = add nuw nsw i64 %.0.i256, 28            ; 2 uses
  %i.kj = icmp samesign ugt i64 %i.ki, %2
  br i1 %i.kj, label %_ZN7lodepngL18decodeICC15Fixed16EPKhmPm.exit292.4, label %bb.ak

bb.ak:                                            ; preds = %_ZN7lodepngL18decodeICC15Fixed16EPKhmPm.exit292.3
  %i.kk = getelementptr inbounds nuw i8, ptr %1, i64 %i.kb
  %i.kl = load i32, ptr %i.kk, align 1
  %i.km = tail call i32 @llvm.bswap.i32(i32 %i.kl)
  %i.kn = sitofp i32 %i.km to float
  %i.ko = fmul nnan float %i.kn, f0x37800000
  br label %_ZN7lodepngL18decodeICC15Fixed16EPKhmPm.exit292.4

_ZN7lodepngL18decodeICC15Fixed16EPKhmPm.exit292.4: ; preds = %bb.ak, %_ZN7lodepngL18decodeICC15Fixed16EPKhmPm.exit292.3
  %.0.i.i291.4 = phi float [ %i.ko, %bb.ak ], [ 0.000000e+00, %_ZN7lodepngL18decodeICC15Fixed16EPKhmPm.exit292.3 ]
  store float %.0.i.i291.4, ptr %i.dr, align 8, !tbaa !58
  %i.kp = add nuw nsw i64 %.0.i256, 32            ; 2 uses
  %i.kq = icmp samesign ugt i64 %i.kp, %2
  br i1 %i.kq, label %_ZN7lodepngL18decodeICC15Fixed16EPKhmPm.exit292.5, label %bb.al

bb.al:                                            ; preds = %_ZN7lodepngL18decodeICC15Fixed16EPKhmPm.exit292.4
  %i.kr = getelementptr inbounds nuw i8, ptr %1, i64 %i.ki
  %i.ks = load i32, ptr %i.kr, align 1
  %i.kt = tail call i32 @llvm.bswap.i32(i32 %i.ks)
  %i.ku = sitofp i32 %i.kt to float
  %i.kv = fmul nnan float %i.ku, f0x37800000
  br label %_ZN7lodepngL18decodeICC15Fixed16EPKhmPm.exit292.5

_ZN7lodepngL18decodeICC15Fixed16EPKhmPm.exit292.5: ; preds = %bb.al, %_ZN7lodepngL18decodeICC15Fixed16EPKhmPm.exit292.4
  %.0.i.i291.5 = phi float [ %i.kv, %bb.al ], [ 0.000000e+00, %_ZN7lodepngL18decodeICC15Fixed16EPKhmPm.exit292.4 ]
  store float %.0.i.i291.5, ptr %i.ds, align 4, !tbaa !58
  %i.kw = add nuw nsw i64 %.0.i256, 36            ; 2 uses
  %i.kx = icmp samesign ugt i64 %i.kw, %2
  br i1 %i.kx, label %_ZN7lodepngL18decodeICC15Fixed16EPKhmPm.exit292.6, label %bb.am

bb.am:                                            ; preds = %_ZN7lodepngL18decodeICC15Fixed16EPKhmPm.exit292.5
  %i.ky = getelementptr inbounds nuw i8, ptr %1, i64 %i.kp
  %i.kz = load i32, ptr %i.ky, align 1
  %i.la = tail call i32 @llvm.bswap.i32(i32 %i.kz)
  %i.lb = sitofp i32 %i.la to float
  %i.lc = fmul nnan float %i.lb, f0x37800000
  br label %_ZN7lodepngL18decodeICC15Fixed16EPKhmPm.exit292.6

_ZN7lodepngL18decodeICC15Fixed16EPKhmPm.exit292.6: ; preds = %bb.am, %_ZN7lodepngL18decodeICC15Fixed16EPKhmPm.exit292.5
  %.0.i.i291.6 = phi float [ %i.lc, %bb.am ], [ 0.000000e+00, %_ZN7lodepngL18decodeICC15Fixed16EPKhmPm.exit292.5 ]
  store float %.0.i.i291.6, ptr %i.dt, align 8, !tbaa !58
  %i.ld = add nuw nsw i64 %.0.i256, 40            ; 2 uses
  %i.le = icmp samesign ugt i64 %i.ld, %2
  br i1 %i.le, label %_ZN7lodepngL18decodeICC15Fixed16EPKhmPm.exit292.7, label %bb.an

bb.an:                                            ; preds = %_ZN7lodepngL18decodeICC15Fixed16EPKhmPm.exit292.6
  %i.lf = getelementptr inbounds nuw i8, ptr %1, i64 %i.kw
  %i.lg = load i32, ptr %i.lf, align 1
  %i.lh = tail call i32 @llvm.bswap.i32(i32 %i.lg)
  %i.li = sitofp i32 %i.lh to float
  %i.lj = fmul nnan float %i.li, f0x37800000
  br label %_ZN7lodepngL18decodeICC15Fixed16EPKhmPm.exit292.7

_ZN7lodepngL18decodeICC15Fixed16EPKhmPm.exit292.7: ; preds = %bb.an, %_ZN7lodepngL18decodeICC15Fixed16EPKhmPm.exit292.6
  %.0.i.i291.7 = phi float [ %i.lj, %bb.an ], [ 0.000000e+00, %_ZN7lodepngL18decodeICC15Fixed16EPKhmPm.exit292.6 ]
  store float %.0.i.i291.7, ptr %i.du, align 4, !tbaa !58
  %i.lk = add nuw nsw i64 %.0.i256, 44            ; 2 uses
  %i.ll = icmp samesign ugt i64 %i.lk, %2
  br i1 %i.ll, label %_ZN7lodepngL18decodeICC15Fixed16EPKhmPm.exit292.8, label %bb.ao

bb.ao:                                            ; preds = %_ZN7lodepngL18decodeICC15Fixed16EPKhmPm.exit292.7
  %i.lm = getelementptr inbounds nuw i8, ptr %1, i64 %i.ld
  %i.ln = load i32, ptr %i.lm, align 1
  %i.lo = tail call i32 @llvm.bswap.i32(i32 %i.ln)
  %i.lp = sitofp i32 %i.lo to float
  %i.lq = fmul nnan float %i.lp, f0x37800000
  br label %_ZN7lodepngL18decodeICC15Fixed16EPKhmPm.exit292.8

_ZN7lodepngL18decodeICC15Fixed16EPKhmPm.exit292.8: ; preds = %bb.ao, %_ZN7lodepngL18decodeICC15Fixed16EPKhmPm.exit292.7
  %.0.i.i291.8 = phi float [ %i.lq, %bb.ao ], [ 0.000000e+00, %_ZN7lodepngL18decodeICC15Fixed16EPKhmPm.exit292.7 ]
  store float %.0.i.i291.8, ptr %i.dv, align 8, !tbaa !58
  store i32 1, ptr %i.e, align 4, !tbaa !59
  br label %.critedge

bb.ap:                                            ; preds = %_ZN7lodepngL9isICCwordEPKhmmPKc.exit284.thread
  %i.lr = tail call fastcc noundef i32 @_ZN7lodepngL9isICCwordEPKhmmPKc(ptr noundef %1, i64 noundef %2, i64 noundef %.0363399, ptr noundef nonnull @.str.9)
  %.not233 = icmp eq i32 %i.lr, 0
  br i1 %.not233, label %bb.aq, label %bb.at

bb.aq:                                            ; preds = %bb.ap
  %i.ls = tail call fastcc noundef i32 @_ZN7lodepngL9isICCwordEPKhmmPKc(ptr noundef %1, i64 noundef %2, i64 noundef %.0363399, ptr noundef nonnull @.str.10)
  %.not234 = icmp eq i32 %i.ls, 0
  br i1 %.not234, label %bb.ar, label %bb.at

bb.ar:                                            ; preds = %bb.aq
  %i.lt = tail call fastcc noundef i32 @_ZN7lodepngL9isICCwordEPKhmmPKc(ptr noundef %1, i64 noundef %2, i64 noundef %.0363399, ptr noundef nonnull @.str.11)
  %.not235 = icmp eq i32 %i.lt, 0
  br i1 %.not235, label %bb.as, label %bb.at

bb.as:                                            ; preds = %bb.ar
  %i.lu = tail call fastcc noundef i32 @_ZN7lodepngL9isICCwordEPKhmmPKc(ptr noundef %1, i64 noundef %2, i64 noundef %.0363399, ptr noundef nonnull @.str.12)
  %.not236 = icmp eq i32 %i.lu, 0
  br i1 %.not236, label %.critedge, label %bb.at

bb.at:                                            ; preds = %bb.as, %bb.ar, %bb.aq, %bb.ap
  %i.lv = getelementptr inbounds nuw i8, ptr %1, i64 %.0363399
  %i.lw = load i8, ptr %i.lv, align 1, !tbaa !21  ; 2 uses
  %i.lx = icmp eq i8 %i.lw, 98
  %i.ly = icmp eq i8 %i.lw, 103
  %i.lz = zext i1 %i.ly to i32
  %i.ma = select i1 %i.lx, i32 2, i32 %i.lz       ; 2 uses
  %i.mb = tail call fastcc noundef i32 @_ZN7lodepngL9isICCwordEPKhmmPKc(ptr noundef %1, i64 noundef %2, i64 noundef %.0.i256, ptr noundef nonnull @.str.13)
  %.not237 = icmp eq i32 %i.mb, 0
  br i1 %.not237, label %.loopexit, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.mc = zext nneg i32 %i.ma to i64
  %i.md = getelementptr inbounds nuw [56 x i8], ptr %i.f, i64 %i.mc ; 6 uses
  store i32 1, ptr %i.d, align 4, !tbaa !57
  %i.me = add nuw nsw i64 %.0.i256, 12            ; 6 uses
  %i.mf = icmp samesign ugt i64 %i.me, %2
  br i1 %i.mf, label %_ZN7lodepngL15decodeICCUint32EPKhmPm.exit294.thread, label %_ZN7lodepngL15decodeICCUint32EPKhmPm.exit294

_ZN7lodepngL15decodeICCUint32EPKhmPm.exit294:     ; preds = %bb.au
  %i.mg = getelementptr inbounds nuw i8, ptr %1, i64 %.0.i256
  %i.mh = getelementptr inbounds nuw i8, ptr %i.mg, i64 8
  %i.mi = load i32, ptr %i.mh, align 1
  %i.mj = tail call i32 @llvm.bswap.i32(i32 %i.mi) ; 4 uses
  %i.mk = zext i32 %i.mj to i64                   ; 4 uses
  switch i32 %i.mj, label %bb.ax [
    i32 0, label %_ZN7lodepngL15decodeICCUint32EPKhmPm.exit294.thread
    i32 1, label %bb.av
  ]

_ZN7lodepngL15decodeICCUint32EPKhmPm.exit294.thread: ; preds = %bb.au, %_ZN7lodepngL15decodeICCUint32EPKhmPm.exit294
  store i32 0, ptr %i.md, align 8, !tbaa !60
  br label %.loopexit

bb.av:                                            ; preds = %_ZN7lodepngL15decodeICCUint32EPKhmPm.exit294
  store i32 2, ptr %i.md, align 8, !tbaa !60
  %i.ml = add nuw nsw i64 %.0.i256, 14            ; 2 uses
end_hunk_0
