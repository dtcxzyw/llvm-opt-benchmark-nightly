inline.NumInlined: 3252
inline.NumDeleted: 426
begin_hunk_0_@unixGetTempname:bb.a
  store i8 %i.bd, ptr %i.ay, align 1, !tbaa !37
  %i.be = getelementptr i8, ptr %2, i64 %i.ax
  %i.bf = getelementptr i8, ptr %i.be, i64 1      ; 2 uses
  %4 = load i8, ptr %i.bf, align 1, !tbaa !37
  %5 = urem i8 %4, 62
  %6 = zext nneg i8 %5 to i64
  %i.bg = getelementptr inbounds nuw i8, ptr @unixGetTempname.zChars, i64 %6
  %7 = load i8, ptr %i.bg, align 1, !tbaa !37
  store i8 %7, ptr %i.bf, align 1, !tbaa !37
  %i.bh = getelementptr i8, ptr %2, i64 %i.ax
  %i.bi = getelementptr i8, ptr %i.bh, i64 2      ; 2 uses
  %8 = load i8, ptr %i.bi, align 1, !tbaa !37
  %9 = urem i8 %8, 62
  %10 = zext nneg i8 %9 to i64
  %i.bj = getelementptr inbounds nuw i8, ptr @unixGetTempname.zChars, i64 %10
  %11 = load i8, ptr %i.bj, align 1, !tbaa !37
  store i8 %11, ptr %i.bi, align 1, !tbaa !37
  %i.bk = getelementptr i8, ptr %2, i64 %i.ax
  %i.bl = getelementptr i8, ptr %i.bk, i64 3      ; 2 uses
  %12 = load i8, ptr %i.bl, align 1, !tbaa !37
  %13 = urem i8 %12, 62
  %14 = zext nneg i8 %13 to i64
  %i.bm = getelementptr inbounds nuw i8, ptr @unixGetTempname.zChars, i64 %14
  %15 = load i8, ptr %i.bm, align 1, !tbaa !37
  store i8 %15, ptr %i.bl, align 1, !tbaa !37
  %i.bn = getelementptr i8, ptr %2, i64 %i.ax
  %i.bo = getelementptr i8, ptr %i.bn, i64 4      ; 2 uses
  %16 = load i8, ptr %i.bo, align 1, !tbaa !37
  %17 = urem i8 %16, 62
  %18 = zext nneg i8 %17 to i64
  %19 = getelementptr inbounds nuw i8, ptr @unixGetTempname.zChars, i64 %18
  %20 = load i8, ptr %19, align 1, !tbaa !37
  store i8 %20, ptr %i.bo, align 1, !tbaa !37
  %i.bp = getelementptr i8, ptr %2, i64 %i.ax
  %21 = getelementptr i8, ptr %i.bp, i64 5        ; 2 uses
  %22 = load i8, ptr %21, align 1, !tbaa !37
  %23 = urem i8 %22, 62
  %i.bq = zext nneg i8 %23 to i64
  %i.br = getelementptr inbounds nuw i8, ptr @unixGetTempname.zChars, i64 %i.bq
  %i.bs = load i8, ptr %i.br, align 1, !tbaa !37
  store i8 %i.bs, ptr %21, align 1, !tbaa !37
  %24 = getelementptr i8, ptr %2, i64 %i.ax
  %25 = getelementptr i8, ptr %24, i64 6          ; 2 uses
  %26 = load i8, ptr %25, align 1, !tbaa !37
  %27 = urem i8 %26, 62
  %i.bt = zext nneg i8 %27 to i64
  %i.bu = getelementptr inbounds nuw i8, ptr @unixGetTempname.zChars, i64 %i.bt
  %i.bv = load i8, ptr %i.bu, align 1, !tbaa !37
  store i8 %i.bv, ptr %25, align 1, !tbaa !37
  %28 = getelementptr i8, ptr %2, i64 %i.ax
  %29 = getelementptr i8, ptr %28, i64 7          ; 2 uses
  %30 = getelementptr i8, ptr %2, i64 %i.ax
  %31 = getelementptr i8, ptr %30, i64 8
  %32 = getelementptr i8, ptr %2, i64 %i.ax
  %i.bw = getelementptr i8, ptr %32, i64 9
  %33 = getelementptr i8, ptr %2, i64 %i.ax
  %34 = getelementptr i8, ptr %33, i64 10
  %35 = getelementptr i8, ptr %2, i64 %i.ax
  %36 = getelementptr i8, ptr %35, i64 11
  %i.bx = getelementptr i8, ptr %2, i64 %i.ax
  %37 = getelementptr i8, ptr %i.bx, i64 12
  %38 = getelementptr i8, ptr %2, i64 %i.ax
  %39 = getelementptr i8, ptr %38, i64 13
  %40 = getelementptr i8, ptr %2, i64 %i.ax
  %i.by = getelementptr i8, ptr %40, i64 14
  %41 = load <8 x i8>, ptr %29, align 1, !tbaa !37
  %42 = urem <8 x i8> %41, splat (i8 62)          ; 8 uses
  %i.bz = extractelement <8 x i8> %42, i64 0
  %i.ca = zext nneg i8 %i.bz to i64
  %i.cb = getelementptr inbounds nuw i8, ptr @unixGetTempname.zChars, i64 %i.ca
  %i.cc = load i8, ptr %i.cb, align 1, !tbaa !37
  store i8 %i.cc, ptr %29, align 1, !tbaa !37
  %i.cd = extractelement <8 x i8> %42, i64 1
  %i.ce = zext nneg i8 %i.cd to i64
  %i.cf = getelementptr inbounds nuw i8, ptr @unixGetTempname.zChars, i64 %i.ce
  %i.cg = load i8, ptr %i.cf, align 1, !tbaa !37
  store i8 %i.cg, ptr %31, align 1, !tbaa !37
  %i.ch = extractelement <8 x i8> %42, i64 2
  %i.ci = zext nneg i8 %i.ch to i64
  %i.cj = getelementptr inbounds nuw i8, ptr @unixGetTempname.zChars, i64 %i.ci
  %i.ck = load i8, ptr %i.cj, align 1, !tbaa !37
  store i8 %i.ck, ptr %i.bw, align 1, !tbaa !37
  %i.cl = extractelement <8 x i8> %42, i64 3
  %i.cm = zext nneg i8 %i.cl to i64
  %i.cn = getelementptr inbounds nuw i8, ptr @unixGetTempname.zChars, i64 %i.cm
  %i.co = load i8, ptr %i.cn, align 1, !tbaa !37
  store i8 %i.co, ptr %34, align 1, !tbaa !37
  %i.cp = extractelement <8 x i8> %42, i64 4
  %i.cq = zext nneg i8 %i.cp to i64
  %i.cr = getelementptr inbounds nuw i8, ptr @unixGetTempname.zChars, i64 %i.cq
  %i.cs = load i8, ptr %i.cr, align 1, !tbaa !37
  store i8 %i.cs, ptr %36, align 1, !tbaa !37
  %i.ct = extractelement <8 x i8> %42, i64 5
  %i.cu = zext nneg i8 %i.ct to i64
  %i.cv = getelementptr inbounds nuw i8, ptr @unixGetTempname.zChars, i64 %i.cu
  %i.cw = load i8, ptr %i.cv, align 1, !tbaa !37
  store i8 %i.cw, ptr %37, align 1, !tbaa !37
  %i.cx = extractelement <8 x i8> %42, i64 6
  %i.cy = zext nneg i8 %i.cx to i64
  %i.cz = getelementptr inbounds nuw i8, ptr @unixGetTempname.zChars, i64 %i.cy
  %i.da = load i8, ptr %i.cz, align 1, !tbaa !37
  store i8 %i.da, ptr %39, align 1, !tbaa !37
  %i.db = extractelement <8 x i8> %42, i64 7
  %i.dc = zext nneg i8 %i.db to i64
  %i.dd = getelementptr inbounds nuw i8, ptr @unixGetTempname.zChars, i64 %i.dc
  %i.de = load i8, ptr %i.dd, align 1, !tbaa !37
  store i8 %i.de, ptr %i.by, align 1, !tbaa !37
  %i.df = shl i64 %i.au, 32
  %sext43 = add i64 %i.df, 64424509440
  %i.dg = ashr exact i64 %sext43, 32
end_hunk_0
