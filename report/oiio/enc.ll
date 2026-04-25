inline.NumInlined: 51
inline.NumDeleted: 23
begin_hunk_0_@FTransform_C:.preheader.preheader
  %i.x = load i8, ptr %i.w, align 1, !tbaa !12
  %i.y = zext i8 %i.x to i32
  %i.z = sub nsw i32 %i.v, %i.y                   ; 2 uses
  %3 = add nsw i32 %i.z, %i.e                     ; 2 uses
  %i.aa = add nsw i32 %i.s, %i.l                  ; 2 uses
  %i.ab = sub nsw i32 %i.l, %i.s                  ; 2 uses
  %i.ac = sub nsw i32 %i.e, %i.z                  ; 2 uses
  %4 = add nsw i32 %3, %i.aa
  %5 = shl nsw i32 %4, 3                          ; 3 uses
  %i.ad = mul nsw i32 %i.ab, 2217
  %i.ae = mul nsw i32 %i.ac, 5352
  %6 = add nsw i32 %i.ad, 1812
  %7 = add nsw i32 %6, %i.ae
  %8 = ashr i32 %7, 9                             ; 3 uses
  %9 = sub nsw i32 %3, %i.aa
  %10 = shl nsw i32 %9, 3                         ; 3 uses
  %i.af = mul nsw i32 %i.ac, 2217
  %.neg60 = mul nsw i32 %i.ab, -5352
  %11 = add nsw i32 %.neg60, 937
  %12 = add nsw i32 %11, %i.af
  %13 = ashr i32 %12, 9                           ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ai = load i8, ptr %i.ag, align 1, !tbaa !12
end_hunk_0
begin_hunk_1_@FTransform_C:.preheader.preheader
  %i.bf = load i8, ptr %i.be, align 1, !tbaa !12
  %i.bg = zext i8 %i.bf to i32
  %i.bh = sub nsw i32 %i.bd, %i.bg                ; 2 uses
  %14 = add nsw i32 %i.bh, %i.am                  ; 2 uses
  %i.bi = add nsw i32 %i.ba, %i.at                ; 2 uses
  %i.bj = sub nsw i32 %i.at, %i.ba                ; 2 uses
  %i.bk = sub nsw i32 %i.am, %i.bh                ; 2 uses
  %15 = add nsw i32 %14, %i.bi
  %16 = shl nsw i32 %15, 3                        ; 2 uses
  %i.bl = mul nsw i32 %i.bj, 2217
  %i.bm = mul nsw i32 %i.bk, 5352
  %17 = add nsw i32 %i.bl, 1812
  %18 = add nsw i32 %17, %i.bm
  %19 = ashr i32 %18, 9                           ; 2 uses
  %20 = sub nsw i32 %14, %i.bi
  %21 = shl nsw i32 %20, 3                        ; 2 uses
  %i.bn = mul nsw i32 %i.bk, 2217
  %.neg60.1 = mul nsw i32 %i.bj, -5352
  %22 = add nsw i32 %.neg60.1, 937
  %23 = add nsw i32 %22, %i.bn
  %24 = ashr i32 %23, 9                           ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.bp = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.bq = load i8, ptr %i.bo, align 1, !tbaa !12
end_hunk_1
begin_hunk_2_@FTransform_C:.preheader.preheader
  %i.cn = load i8, ptr %i.cm, align 1, !tbaa !12
  %i.co = zext i8 %i.cn to i32
  %i.cp = sub nsw i32 %i.cl, %i.co                ; 2 uses
  %25 = add nsw i32 %i.cp, %i.bu                  ; 2 uses
  %i.cq = add nsw i32 %i.ci, %i.cb                ; 2 uses
  %i.cr = sub nsw i32 %i.cb, %i.ci                ; 2 uses
  %i.cs = sub nsw i32 %i.bu, %i.cp                ; 2 uses
  %26 = add nsw i32 %25, %i.cq
  %27 = shl nsw i32 %26, 3                        ; 2 uses
  %i.ct = mul nsw i32 %i.cr, 2217
  %i.cu = mul nsw i32 %i.cs, 5352
  %28 = add nsw i32 %i.ct, 1812
  %29 = add nsw i32 %28, %i.cu
  %30 = ashr i32 %29, 9                           ; 2 uses
  %31 = sub nsw i32 %25, %i.cq
  %32 = shl nsw i32 %31, 3                        ; 2 uses
  %i.cv = mul nsw i32 %i.cs, 2217
  %.neg60.2 = mul nsw i32 %i.cr, -5352
  %33 = add nsw i32 %.neg60.2, 937
  %34 = add nsw i32 %33, %i.cv
  %35 = ashr i32 %34, 9                           ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.cx = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.cy = load i8, ptr %i.cw, align 1, !tbaa !12
end_hunk_2
begin_hunk_3_@FTransform_C:.preheader.preheader
  %i.dv = load i8, ptr %i.du, align 1, !tbaa !12
  %i.dw = zext i8 %i.dv to i32
  %i.dx = sub nsw i32 %i.dt, %i.dw                ; 2 uses
  %36 = add nsw i32 %i.dx, %i.dc                  ; 2 uses
  %i.dy = add nsw i32 %i.dq, %i.dj                ; 2 uses
  %i.dz = sub nsw i32 %i.dj, %i.dq                ; 2 uses
  %i.ea = sub nsw i32 %i.dc, %i.dx                ; 2 uses
  %37 = add nsw i32 %36, %i.dy
  %38 = shl nsw i32 %37, 3                        ; 3 uses
  %i.eb = mul nsw i32 %i.dz, 2217
  %i.ec = mul nsw i32 %i.ea, 5352
  %39 = add nsw i32 %i.eb, 1812
  %40 = add nsw i32 %39, %i.ec
  %41 = ashr i32 %40, 9                           ; 3 uses
  %42 = sub nsw i32 %36, %i.dy
  %43 = shl nsw i32 %42, 3                        ; 3 uses
  %44 = mul nsw i32 %i.ea, 2217
  %.neg60.3 = mul nsw i32 %i.dz, -5352
  %45 = add nsw i32 %.neg60.3, 937
  %46 = add nsw i32 %45, %44
  %47 = ashr i32 %46, 9                           ; 3 uses
  %i.ed = add nsw i32 %38, %5                     ; 2 uses
  %i.ee = add nsw i32 %27, %16                    ; 2 uses
  %i.ef = sub nsw i32 %16, %27                    ; 2 uses
  %48 = sub nsw i32 %5, %38                       ; 2 uses
  %i.eg = add nsw i32 %i.ed, %i.ee
  %49 = lshr i32 %i.eg, 4
  %50 = trunc i32 %49 to i16
  store i16 %50, ptr %2, align 2, !tbaa !18
  %51 = mul nsw i32 %i.ef, 2217
  %52 = mul nsw i32 %48, 5352
  %i.eh = add nsw i32 %52, 12000
  %i.ei = add nsw i32 %i.eh, %51
  %53 = lshr i32 %i.ei, 16
  %54 = icmp ne i32 %5, %38
  %55 = zext i1 %54 to i32
  %i.ej = add nuw nsw i32 %53, %55
  %56 = trunc i32 %i.ej to i16
  %57 = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i16 %56, ptr %57, align 2, !tbaa !18
  %58 = sub nsw i32 %i.ed, %i.ee
  %59 = lshr i32 %58, 4
  %60 = trunc i32 %59 to i16
  %61 = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i16 %60, ptr %61, align 2, !tbaa !18
  %62 = mul nsw i32 %48, 2217
  %.neg = mul nsw i32 %i.ef, -5352
  %i.ek = add nsw i32 %62, 51000
  %i.el = add nsw i32 %i.ek, %.neg
  %63 = lshr i32 %i.el, 16
  %64 = trunc nuw i32 %63 to i16
  %65 = getelementptr inbounds nuw i8, ptr %2, i64 24
  store i16 %64, ptr %65, align 2, !tbaa !18
  %i.em = add nsw i32 %41, %8
  %i.en = add nsw i32 %30, %19                    ; 2 uses
  %i.eo = sub nsw i32 %19, %30                    ; 2 uses
  %66 = sub nsw i32 %8, %41                       ; 2 uses
  %i.ep = add nsw i32 %i.em, 7                    ; 2 uses
  %i.eq = add nsw i32 %i.ep, %i.en
  %67 = lshr i32 %i.eq, 4
  %68 = trunc i32 %67 to i16
  %69 = getelementptr inbounds nuw i8, ptr %2, i64 2
  store i16 %68, ptr %69, align 2, !tbaa !18
  %70 = mul nsw i32 %i.eo, 2217
  %71 = mul nsw i32 %66, 5352
  %i.er = add nsw i32 %71, 12000
  %i.es = add nsw i32 %i.er, %70
  %i.et = lshr i32 %i.es, 16
  %72 = icmp ne i32 %8, %41
  %73 = zext i1 %72 to i32
  %74 = add nuw nsw i32 %i.et, %73
  %i.eu = trunc i32 %74 to i16
  %75 = getelementptr inbounds nuw i8, ptr %2, i64 10
  store i16 %i.eu, ptr %75, align 2, !tbaa !18
  %i.ev = sub nsw i32 %i.ep, %i.en
  %76 = lshr i32 %i.ev, 4
  %77 = trunc i32 %76 to i16
  %78 = getelementptr inbounds nuw i8, ptr %2, i64 18
  store i16 %77, ptr %78, align 2, !tbaa !18
  %79 = mul nsw i32 %66, 2217
  %.neg.1.a = mul nsw i32 %i.eo, -5352
  %i.ew = add nsw i32 %79, 51000
  %i.ex = add nsw i32 %i.ew, %.neg.1.a
  %i.ey = lshr i32 %i.ex, 16
  %i.ez = trunc nuw i32 %i.ey to i16
  %80 = getelementptr inbounds nuw i8, ptr %2, i64 26
  store i16 %i.ez, ptr %80, align 2, !tbaa !18
  %i.fa = add nsw i32 %43, %10                    ; 2 uses
  %i.fb = add nsw i32 %32, %21                    ; 2 uses
  %81 = sub nsw i32 %21, %32                      ; 2 uses
  %82 = sub nsw i32 %10, %43                      ; 2 uses
  %83 = add nsw i32 %i.fa, %i.fb
  %84 = lshr i32 %83, 4
  %85 = trunc i32 %84 to i16
  %86 = getelementptr inbounds nuw i8, ptr %2, i64 4
  store i16 %85, ptr %86, align 2, !tbaa !18
  %i.fc = mul nsw i32 %81, 2217
  %i.fd = mul nsw i32 %82, 5352
  %i.fe = add nsw i32 %i.fd, 12000
  %i.ff = add nsw i32 %i.fe, %i.fc
  %i.fg = lshr i32 %i.ff, 16
  %87 = icmp ne i32 %10, %43
  %88 = zext i1 %87 to i32
  %i.fh = add nuw nsw i32 %i.fg, %88
  %89 = trunc i32 %i.fh to i16
  %90 = getelementptr inbounds nuw i8, ptr %2, i64 12
  store i16 %89, ptr %90, align 2, !tbaa !18
  %i.fi = sub nsw i32 %i.fa, %i.fb
  %i.fj = lshr i32 %i.fi, 4
  %i.fk = trunc i32 %i.fj to i16
  %91 = getelementptr inbounds nuw i8, ptr %2, i64 20
  store i16 %i.fk, ptr %91, align 2, !tbaa !18
  %i.fl = mul nsw i32 %82, 2217
  %.neg.2 = mul nsw i32 %81, -5352
  %i.fm = add nsw i32 %i.fl, 51000
  %i.fn = add nsw i32 %i.fm, %.neg.2
  %i.fo = lshr i32 %i.fn, 16
  %i.fp = trunc nuw i32 %i.fo to i16
  %92 = getelementptr inbounds nuw i8, ptr %2, i64 28
  store i16 %i.fp, ptr %92, align 2, !tbaa !18
  %i.fq = add nsw i32 %47, %13
  %i.fr = add nsw i32 %35, %24                    ; 2 uses
  %93 = sub nsw i32 %24, %35                      ; 2 uses
  %94 = sub nsw i32 %13, %47                      ; 2 uses
  %95 = add nsw i32 %i.fq, 7                      ; 2 uses
  %96 = add nsw i32 %95, %i.fr
  %97 = lshr i32 %96, 4
  %98 = trunc i32 %97 to i16
  %99 = getelementptr inbounds nuw i8, ptr %2, i64 6
  store i16 %98, ptr %99, align 2, !tbaa !18
  %i.fs = mul nsw i32 %93, 2217
  %i.ft = mul nsw i32 %94, 5352
  %i.fu = add nsw i32 %i.ft, 12000
  %i.fv = add nsw i32 %i.fu, %i.fs
  %100 = lshr i32 %i.fv, 16
  %101 = icmp ne i32 %13, %47
  %102 = zext i1 %101 to i32
  %i.fw = add nuw nsw i32 %100, %102
  %103 = trunc i32 %i.fw to i16
  %104 = getelementptr inbounds nuw i8, ptr %2, i64 14
  store i16 %103, ptr %104, align 2, !tbaa !18
  %i.fx = sub nsw i32 %95, %i.fr
  %i.fy = lshr i32 %i.fx, 4
  %i.fz = trunc i32 %i.fy to i16
  %i.ga = getelementptr inbounds nuw i8, ptr %2, i64 22
  store i16 %i.fz, ptr %i.ga, align 2, !tbaa !18
  %i.gb = mul nsw i32 %94, 2217
  %.neg.3 = mul nsw i32 %93, -5352
  %i.gc = add nsw i32 %i.gb, 51000
  %i.gd = add nsw i32 %i.gc, %.neg.3
  %i.ge = lshr i32 %i.gd, 16
end_hunk_3
