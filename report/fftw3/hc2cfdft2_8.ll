Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/fftw3/original/hc2cfdft2_8?download=true
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.hc2c_desc_s = type { i64, ptr, ptr, ptr, %struct.opcnt }
%struct.opcnt = type { double, double, double, double }
%struct.tw_instr = type { i8, i8, i16 }
%struct.hc2c_genus = type { ptr, i32, i64 }

@desc = internal constant %struct.hc2c_desc_s { i64 8, ptr @.str, ptr @twinstr, ptr @fftw_rdft_hc2cf_genus, %struct.opcnt { double 7.200000e+01, double 3.800000e+01, double 1.800000e+01, double 0.000000e+00 } }, align 8
@fftw_an_INT_guaranteed_to_be_zero = external local_unnamed_addr constant i64, align 8
@.str = private unnamed_addr constant [12 x i8] c"hc2cfdft2_8\00", align 1
@twinstr = internal constant [4 x %struct.tw_instr] [%struct.tw_instr { i8 2, i8 1, i16 1 }, %struct.tw_instr { i8 2, i8 1, i16 3 }, %struct.tw_instr { i8 2, i8 1, i16 7 }, %struct.tw_instr { i8 3, i8 1, i16 0 }], align 16
@fftw_rdft_hc2cf_genus = external constant %struct.hc2c_genus, align 8

; Function Attrs: nounwind uwtable
define dso_local void @fftw_codelet_hc2cfdft2_8(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  tail call void @fftw_khc2c_register(ptr noundef %0, ptr noundef nonnull @hc2cfdft2_8, ptr noundef nonnull @desc, i32 noundef 1) #4
  ret void
}

declare void @fftw_khc2c_register(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @hc2cfdft2_8(ptr nofree noundef captures(none) %0, ptr nofree noundef captures(none) %1, ptr nofree noundef captures(none) %2, ptr nofree noundef captures(none) %3, ptr nofree noundef readonly captures(none) %4, ptr nofree noundef readonly captures(none) %5, i64 noundef %6, i64 noundef %7, i64 noundef %8) #2 {
bb.a:
  %i.a = icmp slt i64 %6, %7
  br i1 %i.a, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %.idx = mul i64 %6, 48
  %i.b = getelementptr i8, ptr %4, i64 %.idx
  %i.c = getelementptr i8, ptr %i.b, i64 -48
  %i.d = sub i64 0, %8                            ; 2 uses
  %i.e = load i64, ptr @fftw_an_INT_guaranteed_to_be_zero, align 8, !tbaa !11
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %.0313 = phi ptr [ %0, %.lr.ph ], [ %i.er, %bb.b ] ; 6 uses
  %.0301312 = phi ptr [ %1, %.lr.ph ], [ %i.es, %bb.b ] ; 6 uses
  %.0302311 = phi ptr [ %2, %.lr.ph ], [ %i.et, %bb.b ] ; 6 uses
  %.0303310 = phi ptr [ %3, %.lr.ph ], [ %i.eu, %bb.b ] ; 6 uses
  %.0304309 = phi ptr [ %i.c, %.lr.ph ], [ %i.ev, %bb.b ] ; 6 uses
  %.0305308 = phi ptr [ %5, %.lr.ph ], [ %i.ew, %bb.b ] ; 4 uses
  %.0306307 = phi i64 [ %6, %.lr.ph ], [ %i.eq, %bb.b ]
  %i.f = getelementptr inbounds nuw i8, ptr %.0304309, i64 8
  %i.g = getelementptr inbounds nuw i8, ptr %.0304309, i64 16
  %i.h = getelementptr inbounds nuw i8, ptr %.0304309, i64 24
  %i.i = getelementptr inbounds nuw i8, ptr %.0304309, i64 32
  %i.j = load <2 x double>, ptr %.0304309, align 8, !tbaa !13 ; 5 uses
  %i.k = load double, ptr %i.f, align 8, !tbaa !13 ; 6 uses
  %i.l = extractelement <2 x double> %i.j, i64 0  ; 2 uses
  %i.m = load <2 x double>, ptr %i.i, align 8, !tbaa !13 ; 7 uses
  %i.n = extractelement <2 x double> %i.m, i64 1  ; 3 uses
  %i.o = fmul double %i.k, %i.n
  %i.p = extractelement <2 x double> %i.m, i64 0  ; 2 uses
  %i.q = fneg double %i.p                         ; 2 uses
  %i.r = insertelement <2 x double> poison, double %i.o, i64 0
  %i.s = load double, ptr %.0301312, align 8, !tbaa !13 ; 2 uses
  %i.t = load double, ptr %.0303310, align 8, !tbaa !13 ; 2 uses
  %i.u = fadd double %i.s, %i.t                   ; 2 uses
  %i.v = load double, ptr %.0302311, align 8, !tbaa !13 ; 2 uses
  %i.w = load double, ptr %.0313, align 8, !tbaa !13 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.0305308, i64 16
  %i.y = load i64, ptr %i.x, align 8, !tbaa !11   ; 4 uses
  %i.z = getelementptr inbounds [8 x i8], ptr %.0301312, i64 %i.y ; 2 uses
  %i.aa = load double, ptr %i.z, align 8, !tbaa !13 ; 2 uses
  %i.ab = getelementptr inbounds [8 x i8], ptr %.0303310, i64 %i.y ; 2 uses
  %i.ac = load double, ptr %i.ab, align 8, !tbaa !13 ; 2 uses
  %9 = fsub double %i.aa, %i.ac                   ; 2 uses
  %i.ad = getelementptr inbounds [8 x i8], ptr %.0313, i64 %i.y ; 2 uses
  %i.ae = load double, ptr %i.ad, align 8, !tbaa !13 ; 2 uses
  %i.af = getelementptr inbounds [8 x i8], ptr %.0302311, i64 %i.y ; 2 uses
  %i.ag = load double, ptr %i.af, align 8, !tbaa !13 ; 2 uses
  %10 = fadd double %i.ae, %i.ag                  ; 2 uses
  %11 = fsub double %i.s, %i.t                    ; 2 uses
  %12 = fadd double %i.v, %i.w                    ; 2 uses
  %13 = fneg double %10
  %i.ah = fadd double %i.aa, %i.ac                ; 2 uses
  %i.ai = insertelement <2 x double> poison, double %i.ah, i64 0
  %i.aj = fneg double %i.u
  %i.ak = fsub double %i.ae, %i.ag                ; 2 uses
  %i.al = fneg double %i.ak
  %i.am = fsub double %i.v, %i.w                  ; 2 uses
  %i.an = insertelement <2 x double> poison, double %i.al, i64 0
  %i.ao = insertelement <2 x double> %i.an, double %i.u, i64 1
  %i.ap = insertelement <2 x double> %i.ai, double %i.am, i64 1
  %i.aq = insertelement <2 x double> poison, double %i.aj, i64 0
  %i.ar = insertelement <2 x double> %i.aq, double %i.ah, i64 1
  %i.as = insertelement <2 x double> poison, double %i.am, i64 0
  %i.at = insertelement <2 x double> %i.as, double %i.ak, i64 1
  %i.au = getelementptr inbounds nuw i8, ptr %.0305308, i64 8
  %i.av = load i64, ptr %i.au, align 8, !tbaa !11 ; 4 uses
  %i.aw = getelementptr inbounds [8 x i8], ptr %.0301312, i64 %i.av ; 2 uses
  %i.ax = load double, ptr %i.aw, align 8, !tbaa !13 ; 2 uses
  %i.ay = getelementptr inbounds [8 x i8], ptr %.0303310, i64 %i.av ; 2 uses
  %i.az = load double, ptr %i.ay, align 8, !tbaa !13 ; 2 uses
  %i.ba = getelementptr inbounds [8 x i8], ptr %.0313, i64 %i.av ; 2 uses
  %i.bb = load double, ptr %i.ba, align 8, !tbaa !13 ; 2 uses
  %i.bc = getelementptr inbounds [8 x i8], ptr %.0302311, i64 %i.av ; 2 uses
  %i.bd = load double, ptr %i.bc, align 8, !tbaa !13 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %.0305308, i64 24
  %i.bf = load i64, ptr %i.be, align 8, !tbaa !11 ; 4 uses
  %i.bg = getelementptr inbounds [8 x i8], ptr %.0301312, i64 %i.bf ; 2 uses
  %i.bh = load double, ptr %i.bg, align 8, !tbaa !13 ; 2 uses
  %i.bi = getelementptr inbounds [8 x i8], ptr %.0303310, i64 %i.bf ; 2 uses
  %i.bj = load double, ptr %i.bi, align 8, !tbaa !13 ; 2 uses
  %i.bk = getelementptr inbounds [8 x i8], ptr %.0313, i64 %i.bf ; 2 uses
  %i.bl = load double, ptr %i.bk, align 8, !tbaa !13 ; 2 uses
  %i.bm = getelementptr inbounds [8 x i8], ptr %.0302311, i64 %i.bf ; 2 uses
  %i.bn = load double, ptr %i.bm, align 8, !tbaa !13 ; 2 uses
  %i.bo = fmul double %i.k, %i.q
  %i.bp = tail call double @llvm.fmuladd.f64(double %i.l, double %i.n, double %i.bo) ; 2 uses
  %i.bq = insertelement <2 x double> poison, double %i.bh, i64 0
  %i.br = insertelement <2 x double> %i.bq, double %i.ax, i64 1
  %i.bs = insertelement <2 x double> poison, double %i.bj, i64 0
  %i.bt = insertelement <2 x double> %i.bs, double %i.az, i64 1
  %i.bu = fsub <2 x double> %i.br, %i.bt          ; 2 uses
  %i.bv = insertelement <2 x double> poison, double %i.bl, i64 0
  %i.bw = insertelement <2 x double> %i.bv, double %i.bb, i64 1
  %i.bx = insertelement <2 x double> poison, double %i.bn, i64 0
  %i.by = insertelement <2 x double> %i.bx, double %i.bd, i64 1
  %i.bz = fadd <2 x double> %i.bw, %i.by          ; 2 uses
  %i.ca = fneg <2 x double> %i.bz
  %i.cb = shufflevector <2 x double> %i.ca, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.cc = shufflevector <2 x double> %i.bu, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.cd = insertelement <2 x double> poison, double %i.bp, i64 0
  %i.ce = load <2 x double>, ptr %i.g, align 8, !tbaa !13 ; 5 uses
  %i.cf = load double, ptr %i.h, align 8, !tbaa !13 ; 3 uses
  %i.cg = extractelement <2 x double> %i.ce, i64 0
  %foldExtExtBinop = fmul <2 x double> %i.j, %i.ce
  %14 = extractelement <2 x double> %foldExtExtBinop, i64 0 ; 2 uses
  %15 = fmul double %i.k, %i.cg                   ; 2 uses
  %16 = fmul double %i.k, %i.cf                   ; 2 uses
  %17 = fmul double %i.l, %i.cf                   ; 2 uses
  %18 = fsub double %14, %16                      ; 2 uses
  %19 = fadd double %15, %17                      ; 2 uses
  %20 = fadd double %14, %16                      ; 4 uses
  %i.ch = insertelement <2 x double> %i.j, double %20, i64 1
  %21 = fmul double %19, %13
  %22 = tail call double @llvm.fmuladd.f64(double %18, double %9, double %21) ; 2 uses
  %23 = fmul double %19, %9
  %24 = tail call double @llvm.fmuladd.f64(double %18, double %10, double %23) ; 2 uses
  %i.ci = insertelement <2 x double> poison, double %i.ax, i64 0
  %25 = insertelement <2 x double> %i.ci, double %i.bh, i64 1
  %26 = insertelement <2 x double> poison, double %i.az, i64 0
  %27 = insertelement <2 x double> %26, double %i.bj, i64 1
  %28 = fadd <2 x double> %25, %27                ; 2 uses
  %29 = insertelement <2 x double> poison, double %i.bb, i64 0
  %30 = insertelement <2 x double> %29, double %i.bl, i64 1
  %i.cj = insertelement <2 x double> poison, double %i.bd, i64 0
  %31 = insertelement <2 x double> %i.cj, double %i.bn, i64 1
  %32 = fsub <2 x double> %30, %31                ; 2 uses
  %i.ck = fsub double %17, %15                    ; 4 uses
  %i.cl = fmul double %i.ck, %i.q
  %i.cm = insertelement <2 x double> %i.r, double %i.cl, i64 1
  %i.cn = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ch, <2 x double> %i.m, <2 x double> %i.cm) ; 4 uses
  %i.co = fmul double %i.ck, %i.n
  %i.cp = shufflevector <2 x double> %i.cn, <2 x double> %i.j, <2 x i32> <i32 1, i32 2>
  %i.cq = tail call double @llvm.fmuladd.f64(double %20, double %i.p, double %i.co) ; 2 uses
  %i.cr = fmul <2 x double> %i.cp, %i.ao
  %i.cs = insertelement <2 x double> poison, double %i.cq, i64 0
  %i.ct = insertelement <2 x double> %i.cs, double %i.k, i64 1
  %i.cu = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ct, <2 x double> %i.ap, <2 x double> %i.cr) ; 2 uses
  %33 = extractelement <2 x double> %i.cu, i64 0  ; 2 uses
  %34 = extractelement <2 x double> %i.cu, i64 1  ; 2 uses
  %35 = fsub double %34, %33                      ; 2 uses
  %i.cv = insertelement <2 x double> %i.cn, double %i.k, i64 0
  %i.cw = fmul <2 x double> %i.cv, %i.ar
  %i.cx = insertelement <2 x double> %i.j, double %i.cq, i64 1
  %i.cy = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cx, <2 x double> %i.at, <2 x double> %i.cw) ; 2 uses
  %i.cz = extractelement <2 x double> %i.cy, i64 0 ; 2 uses
  %i.da = extractelement <2 x double> %i.cy, i64 1 ; 2 uses
  %i.db = fadd double %i.cz, %i.da                ; 2 uses
  %i.dc = insertelement <2 x double> poison, double %i.ck, i64 0
  %i.dd = insertelement <2 x double> %i.dc, double %i.bp, i64 1
  %i.de = shufflevector <2 x double> %i.cn, <2 x double> poison, <2 x i32> <i32 poison, i32 0>
  %i.df = insertelement <2 x double> %i.de, double %20, i64 0
  %i.dg = fmul <2 x double> %i.dd, %i.cb
  %i.dh = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.df, <2 x double> %i.cc, <2 x double> %i.dg) ; 2 uses
  %i.di = insertelement <2 x double> %i.cd, double %i.ck, i64 1
  %i.dj = fmul <2 x double> %i.di, %i.bu
  %i.dk = insertelement <2 x double> %i.cn, double %20, i64 1
  %i.dl = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.dk, <2 x double> %i.bz, <2 x double> %i.dj) ; 2 uses
  %36 = fneg <2 x double> %32
  %37 = shufflevector <2 x double> %i.m, <2 x double> %i.ce, <2 x i32> <i32 3, i32 1>
  %38 = fmul <2 x double> %37, %36
  %39 = shufflevector <2 x double> %i.ce, <2 x double> %i.m, <2 x i32> <i32 0, i32 2>
  %40 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %39, <2 x double> %28, <2 x double> %38) ; 2 uses
  %i.dm = extractelement <2 x double> %40, i64 0  ; 2 uses
  %41 = extractelement <2 x double> %40, i64 1    ; 2 uses
  %42 = fsub double %41, %i.dm                    ; 2 uses
  %i.dn = insertelement <2 x double> %i.m, double %i.cf, i64 0
  %43 = fmul <2 x double> %i.dn, %28
  %44 = shufflevector <2 x double> %i.ce, <2 x double> %i.m, <2 x i32> <i32 0, i32 2>
  %45 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %44, <2 x double> %32, <2 x double> %43) ; 2 uses
  %46 = extractelement <2 x double> %45, i64 0    ; 2 uses
  %i.do = extractelement <2 x double> %45, i64 1  ; 2 uses
  %47 = fsub double %46, %i.do                    ; 2 uses
  %48 = fsub double %11, %22                      ; 2 uses
  %i.dp = extractelement <2 x double> %i.dl, i64 0 ; 2 uses
  %49 = extractelement <2 x double> %i.dl, i64 1  ; 2 uses
  %50 = fsub double %49, %i.dp                    ; 2 uses
  %51 = fsub double %48, %50
  %52 = fmul double %51, 5.000000e-01             ; 2 uses
  %53 = fadd double %48, %50
  %54 = fmul double %53, 5.000000e-01             ; 2 uses
  %i.dq = fsub double %42, %47                    ; 2 uses
  %55 = fadd double %i.db, %35                    ; 2 uses
  %i.dr = fsub double %i.dq, %55
  %i.ds = fmul double %i.dr, f0x3FD6A09E667F3BCD  ; 2 uses
  %i.dt = fadd double %55, %i.dq
  %56 = fmul double %i.dt, f0x3FD6A09E667F3BCD    ; 2 uses
  %i.du = fadd double %47, %42                    ; 2 uses
  %i.dv = fsub double %i.db, %35                  ; 2 uses
  %i.dw = fadd double %i.dv, %i.du
  %57 = fmul double %i.dw, f0x3FD6A09E667F3BCD    ; 2 uses
  %58 = fsub double %i.dv, %i.du
  %59 = fmul double %58, f0x3FD6A09E667F3BCD      ; 2 uses
  %i.dx = fsub double %12, %24                    ; 2 uses
  %60 = extractelement <2 x double> %i.dh, i64 0  ; 2 uses
  %i.dy = extractelement <2 x double> %i.dh, i64 1 ; 2 uses
  %i.dz = fsub double %60, %i.dy                  ; 2 uses
  %61 = fsub double %i.dx, %i.dz
  %62 = fmul double %61, 5.000000e-01             ; 2 uses
  %63 = fadd double %i.dx, %i.dz
  %64 = fmul double %63, 5.000000e-01             ; 2 uses
  %65 = fadd double %52, %57
  store double %65, ptr %i.aw, align 8, !tbaa !13
  %66 = fadd double %64, %56
  store double %66, ptr %i.ba, align 8, !tbaa !13
  %67 = fsub double %57, %52
  store double %67, ptr %i.ab, align 8, !tbaa !13
  %68 = fsub double %64, %56
  store double %68, ptr %i.af, align 8, !tbaa !13
  %69 = fsub double %62, %59
  store double %69, ptr %.0302311, align 8, !tbaa !13
  %i.ea = fsub double %i.ds, %54
  store double %i.ea, ptr %.0303310, align 8, !tbaa !13
  %70 = fadd double %62, %59
  store double %70, ptr %i.bk, align 8, !tbaa !13
  %71 = fadd double %54, %i.ds
  store double %71, ptr %i.bg, align 8, !tbaa !13
  %72 = fadd double %60, %i.dy                    ; 2 uses
  %73 = fadd double %11, %22                      ; 2 uses
  %74 = fadd double %73, %72                      ; 2 uses
  %75 = fsub double %73, %72                      ; 2 uses
  %76 = fadd double %i.dm, %41                    ; 2 uses
  %77 = fadd double %34, %33                      ; 2 uses
  %i.eb = fsub double %76, %77                    ; 2 uses
  %78 = fadd double %77, %76                      ; 2 uses
  %79 = fsub double %i.cz, %i.da                  ; 2 uses
  %80 = fadd double %46, %i.do                    ; 2 uses
  %i.ec = fsub double %79, %80                    ; 2 uses
  %i.ed = fadd double %79, %80                    ; 2 uses
  %i.ee = fadd double %12, %24                    ; 2 uses
  %i.ef = fadd double %49, %i.dp                  ; 2 uses
  %i.eg = fsub double %i.ee, %i.ef                ; 2 uses
  %i.eh = fadd double %i.ee, %i.ef                ; 2 uses
  %81 = fadd double %i.ec, %74
  %82 = fmul double %81, 5.000000e-01
  store double %82, ptr %.0301312, align 8, !tbaa !13
  %83 = fadd double %i.eh, %78
  %84 = fmul double %83, 5.000000e-01
  store double %84, ptr %.0313, align 8, !tbaa !13
  %85 = fsub double %i.ec, %74
  %86 = fmul double %85, 5.000000e-01
  store double %86, ptr %i.bi, align 8, !tbaa !13
  %87 = fsub double %i.eh, %78
  %88 = fmul double %87, 5.000000e-01
  store double %88, ptr %i.bm, align 8, !tbaa !13
  %i.ei = fsub double %i.eg, %i.ed
  %i.ej = fmul double %i.ei, 5.000000e-01
  store double %i.ej, ptr %i.bc, align 8, !tbaa !13
  %i.ek = fsub double %i.eb, %75
  %i.el = fmul double %i.ek, 5.000000e-01
  store double %i.el, ptr %i.ay, align 8, !tbaa !13
  %i.em = fadd double %i.eg, %i.ed
  %i.en = fmul double %i.em, 5.000000e-01
  store double %i.en, ptr %i.ad, align 8, !tbaa !13
  %i.eo = fadd double %75, %i.eb
  %i.ep = fmul double %i.eo, 5.000000e-01
  store double %i.ep, ptr %i.z, align 8, !tbaa !13
  %i.eq = add nsw i64 %.0306307, 1                ; 2 uses
  %i.er = getelementptr inbounds [8 x i8], ptr %.0313, i64 %8
  %i.es = getelementptr inbounds [8 x i8], ptr %.0301312, i64 %8
  %i.et = getelementptr inbounds [8 x i8], ptr %.0302311, i64 %i.d
  %i.eu = getelementptr inbounds [8 x i8], ptr %.0303310, i64 %i.d
  %i.ev = getelementptr inbounds nuw i8, ptr %.0304309, i64 48
  %i.ew = getelementptr inbounds [8 x i8], ptr %.0305308, i64 %i.e
  %exitcond.not = icmp eq i64 %i.eq, %7
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !9

._crit_edge:                                      ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fmuladd.v2f64(<2 x double>, <2 x double>, <2 x double>) #3

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="icelake-server" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="icelake-server" }
attributes #2 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="icelake-server" }
attributes #3 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260903081701+7ece48b9e5bb-1~exp1~20260903201841.1826)"}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = distinct !{!9, !14}
!10 = !{!"long", !5, i64 0}
!11 = !{!10, !10, i64 0}
!12 = !{!"double", !5, i64 0}
!13 = !{!12, !12, i64 0}
!14 = !{!"llvm.loop.mustprogress"}
end_hunk_0
