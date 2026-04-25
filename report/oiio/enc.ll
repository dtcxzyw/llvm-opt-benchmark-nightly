inline.NumInlined: 51
inline.NumDeleted: 23
begin_hunk_0_@FTransform_C:.preheader.preheader
  %i.x = load i8, ptr %i.w, align 1, !tbaa !12
  %i.y = zext i8 %i.x to i32
  %i.z = sub nsw i32 %i.v, %i.y                   ; 2 uses
  %i.aa = add nsw i32 %i.s, %i.l                  ; 2 uses
  %i.ab = sub nsw i32 %i.l, %i.s                  ; 2 uses
  %i.ac = sub nsw i32 %i.e, %i.z                  ; 2 uses
  %i.ad = mul nsw i32 %i.ab, 2217
  %i.ae = mul nsw i32 %i.ac, 5352
  %i.af = mul nsw i32 %i.ac, 2217
  %.neg60 = mul nsw i32 %i.ab, -5352
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ai = load i8, ptr %i.ag, align 1, !tbaa !12
end_hunk_0
begin_hunk_1_@FTransform_C:.preheader.preheader
  %i.bf = load i8, ptr %i.be, align 1, !tbaa !12
  %i.bg = zext i8 %i.bf to i32
  %i.bh = sub nsw i32 %i.bd, %i.bg                ; 2 uses
  %i.bi = add nsw i32 %i.ba, %i.at                ; 2 uses
  %i.bj = sub nsw i32 %i.at, %i.ba                ; 2 uses
  %i.bk = sub nsw i32 %i.am, %i.bh                ; 2 uses
  %i.bl = mul nsw i32 %i.bj, 2217
  %i.bm = mul nsw i32 %i.bk, 5352
  %i.bn = mul nsw i32 %i.bk, 2217
  %.neg60.1 = mul nsw i32 %i.bj, -5352
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.bp = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.bq = load i8, ptr %i.bo, align 1, !tbaa !12
end_hunk_1
begin_hunk_2_@FTransform_C:.preheader.preheader
  %i.cn = load i8, ptr %i.cm, align 1, !tbaa !12
  %i.co = zext i8 %i.cn to i32
  %i.cp = sub nsw i32 %i.cl, %i.co                ; 2 uses
  %i.cq = add nsw i32 %i.ci, %i.cb                ; 2 uses
  %i.cr = sub nsw i32 %i.cb, %i.ci                ; 2 uses
  %i.cs = sub nsw i32 %i.bu, %i.cp                ; 2 uses
  %i.ct = mul nsw i32 %i.cr, 2217
  %i.cu = mul nsw i32 %i.cs, 5352
  %i.cv = mul nsw i32 %i.cs, 2217
  %.neg60.2 = mul nsw i32 %i.cr, -5352
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.cx = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.cy = load i8, ptr %i.cw, align 1, !tbaa !12
end_hunk_2
begin_hunk_3_@FTransform_C:.preheader.preheader
  %i.dv = load i8, ptr %i.du, align 1, !tbaa !12
  %i.dw = zext i8 %i.dv to i32
  %i.dx = sub nsw i32 %i.dt, %i.dw                ; 2 uses
  %i.dy = add nsw i32 %i.dq, %i.dj                ; 2 uses
  %i.dz = sub nsw i32 %i.dj, %i.dq                ; 2 uses
  %i.ea = sub nsw i32 %i.dc, %i.dx                ; 2 uses
  %3 = mul nsw i32 %i.dz, 2217
  %4 = mul nsw i32 %i.ea, 5352
  %i.eb = mul nsw i32 %i.ea, 2217
  %i.ec = mul nsw i32 %i.dz, -5352
  %5 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %6 = getelementptr inbounds nuw i8, ptr %2, i64 16
  %7 = getelementptr inbounds nuw i8, ptr %2, i64 24
  %8 = getelementptr inbounds nuw i8, ptr %2, i64 2
  %9 = getelementptr inbounds nuw i8, ptr %2, i64 18
  %10 = getelementptr inbounds nuw i8, ptr %2, i64 26
  %11 = getelementptr inbounds nuw i8, ptr %2, i64 4
  %12 = getelementptr inbounds nuw i8, ptr %2, i64 20
  %13 = getelementptr inbounds nuw i8, ptr %2, i64 28
  %14 = getelementptr inbounds nuw i8, ptr %2, i64 6
  %i.ed = add nsw i32 %i.z, %i.e                  ; 2 uses
  %i.ee = add nsw i32 %i.ad, 1812
  %i.ef = sub nsw i32 %i.ed, %i.aa
  %15 = add nsw i32 %.neg60, 937
  %16 = add nsw i32 %15, %i.af
  %i.eg = add nsw i32 %i.ee, %i.ae
  %17 = add nsw i32 %i.ed, %i.aa
  %18 = ashr i32 %16, 9                           ; 3 uses
  %19 = shl nsw i32 %i.ef, 3                      ; 3 uses
  %20 = ashr i32 %i.eg, 9                         ; 3 uses
  %21 = shl nsw i32 %17, 3                        ; 3 uses
  %i.eh = add nsw i32 %i.bh, %i.am                ; 2 uses
  %i.ei = add nsw i32 %i.bl, 1812
  %22 = sub nsw i32 %i.eh, %i.bi
  %23 = add nsw i32 %.neg60.1, 937
  %24 = add nsw i32 %23, %i.bn
  %i.ej = add nsw i32 %i.ei, %i.bm
  %25 = add nsw i32 %i.eh, %i.bi
  %26 = ashr i32 %24, 9                           ; 2 uses
  %27 = shl nsw i32 %22, 3                        ; 2 uses
  %28 = ashr i32 %i.ej, 9                         ; 2 uses
  %29 = shl nsw i32 %25, 3                        ; 2 uses
  %30 = add nsw i32 %i.cp, %i.bu                  ; 2 uses
  %31 = add nsw i32 %i.ct, 1812
  %32 = sub nsw i32 %30, %i.cq
  %33 = add nsw i32 %.neg60.2, 937
  %34 = add nsw i32 %33, %i.cv
  %i.ek = add nsw i32 %31, %i.cu
  %i.el = add nsw i32 %30, %i.cq
  %35 = ashr i32 %34, 9                           ; 2 uses
  %36 = shl nsw i32 %32, 3                        ; 2 uses
  %37 = ashr i32 %i.ek, 9                         ; 2 uses
  %38 = shl nsw i32 %i.el, 3                      ; 2 uses
  %i.em = add nsw i32 %i.dx, %i.dc                ; 2 uses
  %i.en = add nsw i32 %3, 1812
  %i.eo = sub nsw i32 %i.em, %i.dy
  %39 = add nsw i32 %i.ec, 937
  %i.ep = add nsw i32 %39, %i.eb
  %i.eq = add nsw i32 %i.en, %4
  %40 = add nsw i32 %i.em, %i.dy
  %41 = ashr i32 %i.ep, 9                         ; 3 uses
  %42 = shl nsw i32 %i.eo, 3                      ; 3 uses
  %43 = ashr i32 %i.eq, 9                         ; 3 uses
  %44 = shl nsw i32 %40, 3                        ; 3 uses
  %45 = add nsw i32 %44, %21                      ; 2 uses
  %i.er = add nsw i32 %38, %29                    ; 2 uses
  %i.es = add nsw i32 %45, %i.er
  %i.et = lshr i32 %i.es, 4
  %46 = trunc i32 %i.et to i16
  store i16 %46, ptr %2, align 2, !tbaa !18
  %47 = sub nsw i32 %45, %i.er
  %48 = lshr i32 %47, 4
  %i.eu = trunc i32 %48 to i16
  store i16 %i.eu, ptr %6, align 2, !tbaa !18
  %49 = sub nsw i32 %18, %41                      ; 2 uses
  %50 = sub nsw i32 %19, %42                      ; 2 uses
  %51 = sub nsw i32 %20, %43                      ; 2 uses
  %i.ev = sub nsw i32 %21, %44                    ; 2 uses
  %52 = mul nsw i32 %i.ev, 2217
  %53 = sub nsw i32 %26, %35                      ; 2 uses
  %54 = sub nsw i32 %27, %36                      ; 2 uses
  %55 = sub nsw i32 %28, %37                      ; 2 uses
  %56 = sub nsw i32 %29, %38                      ; 2 uses
  %.neg.1.a = mul nsw i32 %56, -5352
  %i.ew = add nsw i32 %52, 51000
  %i.ex = add nsw i32 %i.ew, %.neg.1.a
  %i.ey = lshr i32 %i.ex, 16
  %i.ez = trunc nuw i32 %i.ey to i16
  store i16 %i.ez, ptr %7, align 2, !tbaa !18
  %57 = add nsw i32 %43, %20
  %58 = add nsw i32 %37, %28                      ; 2 uses
  %i.fa = add nsw i32 %57, 7                      ; 2 uses
  %i.fb = add nsw i32 %i.fa, %58
  %59 = lshr i32 %i.fb, 4
  %60 = trunc i32 %59 to i16
  store i16 %60, ptr %8, align 2, !tbaa !18
  %61 = sub nsw i32 %i.fa, %58
  %62 = lshr i32 %61, 4
  %63 = trunc i32 %62 to i16
  store i16 %63, ptr %9, align 2, !tbaa !18
  %i.fc = mul nsw i32 %51, 2217
  %i.fd = mul nsw i32 %55, -5352
  %i.fe = add nsw i32 %i.fc, 51000
  %i.ff = add nsw i32 %i.fe, %i.fd
  %i.fg = lshr i32 %i.ff, 16
  %64 = trunc nuw i32 %i.fg to i16
  store i16 %64, ptr %10, align 2, !tbaa !18
  %65 = add nsw i32 %42, %19                      ; 2 uses
  %66 = add nsw i32 %36, %27                      ; 2 uses
  %i.fh = add nsw i32 %65, %66
  %67 = lshr i32 %i.fh, 4
  %68 = trunc i32 %67 to i16
  store i16 %68, ptr %11, align 2, !tbaa !18
  %i.fi = sub nsw i32 %65, %66
  %i.fj = lshr i32 %i.fi, 4
  %i.fk = trunc i32 %i.fj to i16
  store i16 %i.fk, ptr %12, align 2, !tbaa !18
  %i.fl = mul nsw i32 %50, 2217
  %.neg.2 = mul nsw i32 %54, -5352
  %i.fm = add nsw i32 %i.fl, 51000
  %i.fn = add nsw i32 %i.fm, %.neg.2
  %i.fo = lshr i32 %i.fn, 16
  %i.fp = trunc nuw i32 %i.fo to i16
  store i16 %i.fp, ptr %13, align 2, !tbaa !18
  %69 = add nsw i32 %41, %18
  %70 = add nsw i32 %35, %26                      ; 2 uses
  %i.fq = add nsw i32 %69, 7                      ; 2 uses
  %i.fr = add nsw i32 %i.fq, %70
  %71 = lshr i32 %i.fr, 4
  %72 = trunc i32 %71 to i16
  store i16 %72, ptr %14, align 2, !tbaa !18
  %73 = mul nsw i32 %53, 2217
  %74 = mul nsw i32 %54, 2217
  %75 = mul nsw i32 %55, 2217
  %76 = mul nsw i32 %56, 2217
  %77 = mul nsw i32 %49, 5352
  %78 = mul nsw i32 %50, 5352
  %i.fs = mul nsw i32 %51, 5352
  %i.ft = mul nsw i32 %i.ev, 5352
  %79 = add nsw i32 %77, 12000
  %80 = add nsw i32 %78, 12000
  %i.fu = add nsw i32 %i.fs, 12000
  %i.fv = add nsw i32 %i.ft, 12000
  %81 = add nsw i32 %79, %73
  %82 = add nsw i32 %80, %74
  %83 = add nsw i32 %i.fu, %75
  %i.fw = add nsw i32 %i.fv, %76
  %84 = insertelement <4 x i32> poison, i32 %i.fw, i64 0
  %85 = insertelement <4 x i32> %84, i32 %83, i64 1
  %86 = insertelement <4 x i32> %85, i32 %82, i64 2
  %87 = insertelement <4 x i32> %86, i32 %81, i64 3
  %88 = lshr <4 x i32> %87, splat (i32 16)
  %89 = insertelement <4 x i32> poison, i32 %21, i64 0
  %90 = insertelement <4 x i32> %89, i32 %20, i64 1
  %91 = insertelement <4 x i32> %90, i32 %19, i64 2
  %92 = insertelement <4 x i32> %91, i32 %18, i64 3
  %93 = insertelement <4 x i32> poison, i32 %44, i64 0
  %94 = insertelement <4 x i32> %93, i32 %43, i64 1
  %95 = insertelement <4 x i32> %94, i32 %42, i64 2
  %96 = insertelement <4 x i32> %95, i32 %41, i64 3
  %97 = icmp ne <4 x i32> %92, %96
  %98 = zext <4 x i1> %97 to <4 x i32>
  %99 = add nuw nsw <4 x i32> %88, %98
  %100 = trunc <4 x i32> %99 to <4 x i16>
  store <4 x i16> %100, ptr %5, align 2, !tbaa !18
  %i.fx = sub nsw i32 %i.fq, %70
  %i.fy = lshr i32 %i.fx, 4
  %i.fz = trunc i32 %i.fy to i16
  %i.ga = getelementptr inbounds nuw i8, ptr %2, i64 22
  store i16 %i.fz, ptr %i.ga, align 2, !tbaa !18
  %i.gb = mul nsw i32 %49, 2217
  %.neg.3 = mul nsw i32 %53, -5352
  %i.gc = add nsw i32 %i.gb, 51000
  %i.gd = add nsw i32 %i.gc, %.neg.3
  %i.ge = lshr i32 %i.gd, 16
end_hunk_3
