inline.NumInlined: 21
inline.NumDeleted: 11
begin_hunk_0_@main:bb.a
  br i1 %exitcond34.not.i, label %_Z8mkmatrixii.exit, label %.lr.ph.us.i, !llvm.loop !16

_Z8mkmatrixii.exit:                               ; preds = %.lr.ph.us.i
  %i.ad = tail call noalias dereferenceable_or_null(240) ptr @malloc(i64 noundef 240) #12 ; 45 uses
  br label %.lr.ph.us.i15

.lr.ph.us.i15:                                    ; preds = %.lr.ph.us.i15, %_Z8mkmatrixii.exit
end_hunk_0
begin_hunk_1_@main:bb.a
  %i.by = load ptr, ptr %i.ad, align 8, !tbaa !8  ; 4 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.ca = getelementptr inbounds nuw i8, ptr %i.ad, i64 24
  %2 = getelementptr inbounds nuw i8, ptr %i.ad, i64 40
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ad, i64 56
  %3 = getelementptr inbounds nuw i8, ptr %i.ad, i64 72
  %4 = getelementptr inbounds nuw i8, ptr %i.ad, i64 88
  %5 = getelementptr inbounds nuw i8, ptr %i.ad, i64 104
  %6 = load <2 x ptr>, ptr %i.bz, align 8, !tbaa !8 ; 6 uses
  %7 = load <2 x ptr>, ptr %i.ca, align 8, !tbaa !8 ; 6 uses
  %8 = load <2 x ptr>, ptr %2, align 8, !tbaa !8  ; 6 uses
  %9 = load <2 x ptr>, ptr %i.cb, align 8, !tbaa !8 ; 6 uses
  %i.cc = load <2 x ptr>, ptr %3, align 8, !tbaa !8 ; 6 uses
  %10 = load <2 x ptr>, ptr %4, align 8, !tbaa !8 ; 6 uses
  %11 = load <2 x ptr>, ptr %5, align 8, !tbaa !8 ; 6 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.ad, i64 120
  %i.ce = load <8 x ptr>, ptr %i.cd, align 8, !tbaa !8 ; 18 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ad, i64 184
end_hunk_1
begin_hunk_2_@main:bb.a
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ad, i64 232
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !8  ; 4 uses
  %scevgep57 = getelementptr i8, ptr %i.by, i64 120
  %12 = getelementptr i8, <2 x ptr> %6, i64 120
  %13 = getelementptr i8, <2 x ptr> %7, i64 120
  %14 = getelementptr i8, <2 x ptr> %8, i64 120
  %15 = getelementptr i8, <2 x ptr> %9, i64 120
  %i.cn = getelementptr i8, <2 x ptr> %i.cc, i64 120
  %16 = getelementptr i8, <2 x ptr> %10, i64 120
  %17 = getelementptr i8, <2 x ptr> %11, i64 120
  %i.co = getelementptr i8, <8 x ptr> %i.ce, i64 120
  %i.cp = getelementptr i8, <4 x ptr> %i.cg, i64 120
  %scevgep84 = getelementptr i8, ptr %i.ci, i64 120
  %scevgep85 = getelementptr i8, ptr %i.ck, i64 120
  %scevgep86 = getelementptr i8, ptr %i.cm, i64 120
  %18 = shufflevector <2 x ptr> %17, <2 x ptr> poison, <16 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %19 = shufflevector <2 x ptr> %16, <2 x ptr> poison, <16 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %20 = shufflevector <2 x ptr> %i.cn, <2 x ptr> poison, <16 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %21 = shufflevector <2 x ptr> %15, <2 x ptr> poison, <16 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %22 = shufflevector <2 x ptr> %14, <2 x ptr> poison, <16 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %23 = shufflevector <2 x ptr> %13, <2 x ptr> poison, <16 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.cq = shufflevector <2 x ptr> %12, <2 x ptr> poison, <16 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.cr = shufflevector <2 x ptr> %6, <2 x ptr> poison, <16 x i32> <i32 poison, i32 poison, i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %24 = shufflevector <2 x ptr> %11, <2 x ptr> poison, <16 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %25 = shufflevector <2 x ptr> %10, <2 x ptr> poison, <16 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %26 = shufflevector <2 x ptr> %i.cc, <2 x ptr> poison, <16 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %27 = shufflevector <2 x ptr> %9, <2 x ptr> poison, <16 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %28 = shufflevector <2 x ptr> %8, <2 x ptr> poison, <16 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %29 = shufflevector <2 x ptr> %7, <2 x ptr> poison, <16 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.cs = extractelement <2 x ptr> %11, i64 0
  %i.ct = extractelement <2 x ptr> %11, i64 1
  %i.cu = extractelement <2 x ptr> %10, i64 0
  %i.cv = extractelement <2 x ptr> %10, i64 1
  %i.cw = extractelement <2 x ptr> %i.cc, i64 0
  %i.cx = extractelement <2 x ptr> %i.cc, i64 1
  %i.cy = extractelement <2 x ptr> %9, i64 0
  %i.cz = extractelement <2 x ptr> %9, i64 1
  %i.da = extractelement <2 x ptr> %8, i64 0
  %i.db = extractelement <2 x ptr> %8, i64 1
  %i.dc = extractelement <2 x ptr> %7, i64 0
  %i.dd = extractelement <2 x ptr> %7, i64 1
  %i.de = extractelement <2 x ptr> %6, i64 0
  %i.df = extractelement <2 x ptr> %6, i64 1
  %i.dg = extractelement <8 x ptr> %i.ce, i64 0
  %i.dh = extractelement <8 x ptr> %i.ce, i64 1
  %i.di = extractelement <8 x ptr> %i.ce, i64 2
end_hunk_2
begin_hunk_3_@main:bb.a
  %i.dp = extractelement <4 x ptr> %i.cg, i64 1
  %i.dq = extractelement <4 x ptr> %i.cg, i64 2
  %i.dr = extractelement <4 x ptr> %i.cg, i64 3
  %i.ds = extractelement <2 x ptr> %6, i64 0
  %i.dt = extractelement <2 x ptr> %6, i64 1
  %i.du = extractelement <2 x ptr> %7, i64 0
  %i.dv = extractelement <2 x ptr> %7, i64 1
  %i.dw = extractelement <2 x ptr> %8, i64 0
  %i.dx = extractelement <2 x ptr> %8, i64 1
  %i.dy = extractelement <2 x ptr> %9, i64 0
  %i.dz = extractelement <2 x ptr> %9, i64 1
  %i.ea = extractelement <2 x ptr> %i.cc, i64 0
  %i.eb = extractelement <2 x ptr> %i.cc, i64 1
  %i.ec = extractelement <2 x ptr> %10, i64 0
  %i.ed = extractelement <2 x ptr> %10, i64 1
  %i.ee = extractelement <2 x ptr> %11, i64 0
  %i.ef = extractelement <2 x ptr> %11, i64 1
  %i.eg = extractelement <8 x ptr> %i.ce, i64 0
  %i.eh = extractelement <8 x ptr> %i.ce, i64 1
  %i.ei = extractelement <8 x ptr> %i.ce, i64 2
end_hunk_3
begin_hunk_4_@main:bb.a
  %i.ga = shufflevector <16 x ptr> %i.fz, <16 x ptr> poison, <16 x i32> zeroinitializer
  %i.gb = insertelement <16 x ptr> poison, ptr %scevgep56, i64 0
  %i.gc = insertelement <16 x ptr> %i.gb, ptr %scevgep57, i64 1
  %30 = shufflevector <16 x ptr> %i.gc, <16 x ptr> %18, <16 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 16, i32 17>
  %31 = shufflevector <16 x ptr> %30, <16 x ptr> %19, <16 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 16, i32 17, i32 14, i32 15>
  %32 = shufflevector <16 x ptr> %31, <16 x ptr> %20, <16 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 16, i32 17, i32 12, i32 13, i32 14, i32 15>
  %33 = shufflevector <16 x ptr> %32, <16 x ptr> %21, <16 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 16, i32 17, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %34 = shufflevector <16 x ptr> %33, <16 x ptr> %22, <16 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 16, i32 17, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %35 = shufflevector <16 x ptr> %34, <16 x ptr> %23, <16 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 16, i32 17, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.gd = shufflevector <16 x ptr> %35, <16 x ptr> %i.cq, <16 x i32> <i32 0, i32 1, i32 16, i32 17, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.ge = icmp ult <16 x ptr> %i.ga, %i.gd
  %i.gf = insertelement <16 x ptr> %i.cr, ptr %i.ev, i64 0
  %i.gg = insertelement <16 x ptr> %i.gf, ptr %i.by, i64 1
  %36 = shufflevector <16 x ptr> %i.gg, <16 x ptr> %24, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 16, i32 17>
  %37 = shufflevector <16 x ptr> %36, <16 x ptr> %25, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 16, i32 17, i32 14, i32 15>
  %38 = shufflevector <16 x ptr> %37, <16 x ptr> %26, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 16, i32 17, i32 12, i32 13, i32 14, i32 15>
  %39 = shufflevector <16 x ptr> %38, <16 x ptr> %27, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 16, i32 17, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %40 = shufflevector <16 x ptr> %39, <16 x ptr> %28, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 16, i32 17, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %41 = shufflevector <16 x ptr> %40, <16 x ptr> %29, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 16, i32 17, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.gh = insertelement <16 x ptr> poison, ptr %scevgep, i64 0
  %i.gi = shufflevector <16 x ptr> %i.gh, <16 x ptr> poison, <16 x i32> zeroinitializer
  %i.gj = icmp ult <16 x ptr> %41, %i.gi
  %i.gk = and <16 x i1> %i.ge, %i.gj              ; 2 uses
  %i.gl = insertelement <8 x ptr> poison, ptr %i.eu, i64 0
  %i.gm = shufflevector <8 x ptr> %i.gl, <8 x ptr> poison, <8 x i32> zeroinitializer
end_hunk_4
begin_hunk_5_@main:bb.a
  %wide.load209 = load <4 x i32>, ptr %i.iq, align 4, !tbaa !4, !alias.scope !35
  %i.ir = mul nsw <4 x i32> %wide.load209, %broadcast.splat211
  %i.is = add nsw <4 x i32> %i.ir, %i.ip
  %i.it = getelementptr inbounds nuw [4 x i8], ptr %i.dc, i64 %index
  %wide.load212 = load <4 x i32>, ptr %i.it, align 4, !tbaa !4, !alias.scope !37
  %i.iu = mul nsw <4 x i32> %wide.load212, %broadcast.splat214
  %i.iv = add nsw <4 x i32> %i.iu, %i.is
  %i.iw = getelementptr inbounds nuw [4 x i8], ptr %i.dd, i64 %index
  %wide.load215 = load <4 x i32>, ptr %i.iw, align 4, !tbaa !4, !alias.scope !39
  %i.ix = mul nsw <4 x i32> %wide.load215, %broadcast.splat217
  %i.iy = add nsw <4 x i32> %i.ix, %i.iv
  %i.iz = getelementptr inbounds nuw [4 x i8], ptr %i.da, i64 %index
  %wide.load218 = load <4 x i32>, ptr %i.iz, align 4, !tbaa !4, !alias.scope !41
  %i.ja = mul nsw <4 x i32> %wide.load218, %broadcast.splat220
  %i.jb = add nsw <4 x i32> %i.ja, %i.iy
  %i.jc = getelementptr inbounds nuw [4 x i8], ptr %i.db, i64 %index
  %wide.load221 = load <4 x i32>, ptr %i.jc, align 4, !tbaa !4, !alias.scope !43
  %i.jd = mul nsw <4 x i32> %wide.load221, %broadcast.splat223
  %i.je = add nsw <4 x i32> %i.jd, %i.jb
  %i.jf = getelementptr inbounds nuw [4 x i8], ptr %i.cy, i64 %index
  %wide.load224 = load <4 x i32>, ptr %i.jf, align 4, !tbaa !4, !alias.scope !45
  %i.jg = mul nsw <4 x i32> %wide.load224, %broadcast.splat226
  %i.jh = add nsw <4 x i32> %i.jg, %i.je
  %i.ji = getelementptr inbounds nuw [4 x i8], ptr %i.cz, i64 %index
  %wide.load227 = load <4 x i32>, ptr %i.ji, align 4, !tbaa !4, !alias.scope !47
  %i.jj = mul nsw <4 x i32> %wide.load227, %broadcast.splat229
  %i.jk = add nsw <4 x i32> %i.jj, %i.jh
  %i.jl = getelementptr inbounds nuw [4 x i8], ptr %i.cw, i64 %index
  %wide.load230 = load <4 x i32>, ptr %i.jl, align 4, !tbaa !4, !alias.scope !49
  %i.jm = mul nsw <4 x i32> %wide.load230, %broadcast.splat232
  %i.jn = add nsw <4 x i32> %i.jm, %i.jk
  %i.jo = getelementptr inbounds nuw [4 x i8], ptr %i.cx, i64 %index
  %wide.load233 = load <4 x i32>, ptr %i.jo, align 4, !tbaa !4, !alias.scope !51
  %i.jp = mul nsw <4 x i32> %wide.load233, %broadcast.splat235
  %i.jq = add nsw <4 x i32> %i.jp, %i.jn
  %i.jr = getelementptr inbounds nuw [4 x i8], ptr %i.cu, i64 %index
  %wide.load236 = load <4 x i32>, ptr %i.jr, align 4, !tbaa !4, !alias.scope !53
  %i.js = mul nsw <4 x i32> %wide.load236, %broadcast.splat238
  %i.jt = add nsw <4 x i32> %i.js, %i.jq
  %i.ju = getelementptr inbounds nuw [4 x i8], ptr %i.cv, i64 %index
  %wide.load239 = load <4 x i32>, ptr %i.ju, align 4, !tbaa !4, !alias.scope !55
  %i.jv = mul nsw <4 x i32> %wide.load239, %broadcast.splat241
  %i.jw = add nsw <4 x i32> %i.jv, %i.jt
  %i.jx = getelementptr inbounds nuw [4 x i8], ptr %i.cs, i64 %index
  %wide.load242 = load <4 x i32>, ptr %i.jx, align 4, !tbaa !4, !alias.scope !57
  %i.jy = mul nsw <4 x i32> %wide.load242, %broadcast.splat244
  %i.jz = add nsw <4 x i32> %i.jy, %i.jw
  %i.ka = getelementptr inbounds nuw [4 x i8], ptr %i.ct, i64 %index
  %wide.load245 = load <4 x i32>, ptr %i.ka, align 4, !tbaa !4, !alias.scope !59
  %i.kb = mul nsw <4 x i32> %wide.load245, %broadcast.splat247
  %i.kc = add nsw <4 x i32> %i.kb, %i.jz
end_hunk_5
