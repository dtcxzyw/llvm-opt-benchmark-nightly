inline.NumInlined: 3252
inline.NumDeleted: 426
begin_hunk_0_@unixGetTempname:bb.a
  store i8 %i.bd, ptr %i.ay, align 1, !tbaa !37
  %i.be = getelementptr i8, ptr %2, i64 %i.ax
  %i.bf = getelementptr i8, ptr %i.be, i64 1      ; 2 uses
  %4 = getelementptr i8, ptr %2, i64 %i.ax
  %5 = getelementptr i8, ptr %4, i64 2
  %6 = getelementptr i8, ptr %2, i64 %i.ax
  %i.bg = getelementptr i8, ptr %6, i64 3
  %7 = getelementptr i8, ptr %2, i64 %i.ax
  %8 = getelementptr i8, ptr %7, i64 4
  %i.bh = getelementptr i8, ptr %2, i64 %i.ax
  %i.bi = getelementptr i8, ptr %i.bh, i64 5
  %9 = getelementptr i8, ptr %2, i64 %i.ax
  %10 = getelementptr i8, ptr %9, i64 6
  %11 = getelementptr i8, ptr %2, i64 %i.ax
  %i.bj = getelementptr i8, ptr %11, i64 7
  %12 = getelementptr i8, ptr %2, i64 %i.ax
  %13 = getelementptr i8, ptr %12, i64 8
  %i.bk = getelementptr i8, ptr %2, i64 %i.ax
  %i.bl = getelementptr i8, ptr %i.bk, i64 9
  %14 = getelementptr i8, ptr %2, i64 %i.ax
  %15 = getelementptr i8, ptr %14, i64 10
  %16 = getelementptr i8, ptr %2, i64 %i.ax
  %i.bm = getelementptr i8, ptr %16, i64 11
  %17 = getelementptr i8, ptr %2, i64 %i.ax
  %18 = getelementptr i8, ptr %17, i64 12
  %i.bn = getelementptr i8, ptr %2, i64 %i.ax
  %i.bo = getelementptr i8, ptr %i.bn, i64 13
  %19 = getelementptr i8, ptr %2, i64 %i.ax
  %20 = getelementptr i8, ptr %19, i64 14
  %21 = load <14 x i8>, ptr %i.bf, align 1, !tbaa !37
  %22 = urem <14 x i8> %21, splat (i8 62)         ; 14 uses
  %23 = extractelement <14 x i8> %22, i64 0
  %24 = zext nneg i8 %23 to i64
  %i.bp = getelementptr inbounds nuw i8, ptr @unixGetTempname.zChars, i64 %24
  %25 = load i8, ptr %i.bp, align 1, !tbaa !37
  store i8 %25, ptr %i.bf, align 1, !tbaa !37
  %26 = extractelement <14 x i8> %22, i64 1
  %i.bq = zext nneg i8 %26 to i64
  %i.br = getelementptr inbounds nuw i8, ptr @unixGetTempname.zChars, i64 %i.bq
  %i.bs = load i8, ptr %i.br, align 1, !tbaa !37
  store i8 %i.bs, ptr %5, align 1, !tbaa !37
  %27 = extractelement <14 x i8> %22, i64 2
  %i.bt = zext nneg i8 %27 to i64
  %i.bu = getelementptr inbounds nuw i8, ptr @unixGetTempname.zChars, i64 %i.bt
  %i.bv = load i8, ptr %i.bu, align 1, !tbaa !37
  store i8 %i.bv, ptr %i.bg, align 1, !tbaa !37
  %28 = extractelement <14 x i8> %22, i64 3
  %29 = zext nneg i8 %28 to i64
  %i.bw = getelementptr inbounds nuw i8, ptr @unixGetTempname.zChars, i64 %29
  %30 = load i8, ptr %i.bw, align 1, !tbaa !37
  store i8 %30, ptr %8, align 1, !tbaa !37
  %31 = extractelement <14 x i8> %22, i64 4
  %32 = zext nneg i8 %31 to i64
  %i.bx = getelementptr inbounds nuw i8, ptr @unixGetTempname.zChars, i64 %32
  %33 = load i8, ptr %i.bx, align 1, !tbaa !37
  store i8 %33, ptr %i.bi, align 1, !tbaa !37
  %34 = extractelement <14 x i8> %22, i64 5
  %35 = zext nneg i8 %34 to i64
  %i.by = getelementptr inbounds nuw i8, ptr @unixGetTempname.zChars, i64 %35
  %36 = load i8, ptr %i.by, align 1, !tbaa !37
  store i8 %36, ptr %10, align 1, !tbaa !37
  %i.bz = extractelement <14 x i8> %22, i64 6
  %i.ca = zext nneg i8 %i.bz to i64
  %i.cb = getelementptr inbounds nuw i8, ptr @unixGetTempname.zChars, i64 %i.ca
  %i.cc = load i8, ptr %i.cb, align 1, !tbaa !37
  store i8 %i.cc, ptr %i.bj, align 1, !tbaa !37
  %i.cd = extractelement <14 x i8> %22, i64 7
  %i.ce = zext nneg i8 %i.cd to i64
  %i.cf = getelementptr inbounds nuw i8, ptr @unixGetTempname.zChars, i64 %i.ce
  %i.cg = load i8, ptr %i.cf, align 1, !tbaa !37
  store i8 %i.cg, ptr %13, align 1, !tbaa !37
  %i.ch = extractelement <14 x i8> %22, i64 8
  %i.ci = zext nneg i8 %i.ch to i64
  %i.cj = getelementptr inbounds nuw i8, ptr @unixGetTempname.zChars, i64 %i.ci
  %i.ck = load i8, ptr %i.cj, align 1, !tbaa !37
  store i8 %i.ck, ptr %i.bl, align 1, !tbaa !37
  %i.cl = extractelement <14 x i8> %22, i64 9
  %i.cm = zext nneg i8 %i.cl to i64
  %i.cn = getelementptr inbounds nuw i8, ptr @unixGetTempname.zChars, i64 %i.cm
  %i.co = load i8, ptr %i.cn, align 1, !tbaa !37
  store i8 %i.co, ptr %15, align 1, !tbaa !37
  %i.cp = extractelement <14 x i8> %22, i64 10
  %i.cq = zext nneg i8 %i.cp to i64
  %i.cr = getelementptr inbounds nuw i8, ptr @unixGetTempname.zChars, i64 %i.cq
  %i.cs = load i8, ptr %i.cr, align 1, !tbaa !37
  store i8 %i.cs, ptr %i.bm, align 1, !tbaa !37
  %i.ct = extractelement <14 x i8> %22, i64 11
  %i.cu = zext nneg i8 %i.ct to i64
  %i.cv = getelementptr inbounds nuw i8, ptr @unixGetTempname.zChars, i64 %i.cu
  %i.cw = load i8, ptr %i.cv, align 1, !tbaa !37
  store i8 %i.cw, ptr %18, align 1, !tbaa !37
  %i.cx = extractelement <14 x i8> %22, i64 12
  %i.cy = zext nneg i8 %i.cx to i64
  %i.cz = getelementptr inbounds nuw i8, ptr @unixGetTempname.zChars, i64 %i.cy
  %i.da = load i8, ptr %i.cz, align 1, !tbaa !37
  store i8 %i.da, ptr %i.bo, align 1, !tbaa !37
  %i.db = extractelement <14 x i8> %22, i64 13
  %i.dc = zext nneg i8 %i.db to i64
  %i.dd = getelementptr inbounds nuw i8, ptr @unixGetTempname.zChars, i64 %i.dc
  %i.de = load i8, ptr %i.dd, align 1, !tbaa !37
  store i8 %i.de, ptr %20, align 1, !tbaa !37
  %i.df = shl i64 %i.au, 32
  %sext43 = add i64 %i.df, 64424509440
  %i.dg = ashr exact i64 %sext43, 32
end_hunk_0
