Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/colorchart?download=true
inline.NumInlined: 41
inline.NumDeleted: 14
loop-unroll.NumCompletelyUnrolled: 17
loop-unroll.NumUnrolled: 17
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._GHashTableIter = type { ptr, ptr, ptr, i32, i32, ptr }

@.str = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@stderr = external local_unnamed_addr global ptr, align 8
@.str.1 = private unnamed_addr constant [20 x i8] c"error opening `%s'\0A\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"BOXES\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"_\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"%s .. %s\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"BOX_SHRINK\00", align 1
@.str.6 = private unnamed_addr constant [13 x i8] c"REF_ROTATION\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"XLIST\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"YLIST\00", align 1
@.str.9 = private unnamed_addr constant [9 x i8] c"EXPECTED\00", align 1
@.str.10 = private unnamed_addr constant [4 x i8] c"XYZ\00", align 1
@.str.11 = private unnamed_addr constant [4 x i8] c"LAB\00", align 1
@.str.12 = private unnamed_addr constant [22 x i8] c"unknown keyword `%s'\0A\00", align 1
@.str.13 = private unnamed_addr constant [15 x i8] c"cht `%s' done\0A\00", align 1
@.str.14 = private unnamed_addr constant [33 x i8] c"error parsing CHT file, (%s:%d)\0A\00", align 1
@__FUNCTION__.parse_cht = private unnamed_addr constant [10 x i8] c"parse_cht\00", align 1
@.str.15 = private unnamed_addr constant [29 x i8] c"error loading IT8 file `%s'\0A\00", align 1
@.str.16 = private unnamed_addr constant [77 x i8] c"error with the IT8 file, we only support files with one table at the moment\0A\00", align 1
@.str.17 = private unnamed_addr constant [49 x i8] c"error with the IT8 file, can't get column types\0A\00", align 1
@.str.18 = private unnamed_addr constant [10 x i8] c"SAMPLE_ID\00", align 1
@.str.19 = private unnamed_addr constant [6 x i8] c"XYZ_X\00", align 1
@.str.20 = private unnamed_addr constant [6 x i8] c"XYZ_Y\00", align 1
@.str.21 = private unnamed_addr constant [6 x i8] c"XYZ_Z\00", align 1
@.str.22 = private unnamed_addr constant [6 x i8] c"LAB_L\00", align 1
@.str.23 = private unnamed_addr constant [6 x i8] c"LAB_A\00", align 1
@.str.24 = private unnamed_addr constant [6 x i8] c"LAB_B\00", align 1
@.str.25 = private unnamed_addr constant [58 x i8] c"error with the IT8 file, can't find the SAMPLE_ID column\0A\00", align 1
@.str.26 = private unnamed_addr constant [56 x i8] c"error with the IT8 file, can't find XYZ or Lab columns\0A\00", align 1
@.str.27 = private unnamed_addr constant [49 x i8] c"error with the IT8 file, can't find sample `%s'\0A\00", align 1
@.str.28 = private unnamed_addr constant [15 x i8] c"it8 `%s' done\0A\00", align 1

; Function Attrs: nounwind uwtable
define dso_local void @free_chart(ptr noundef captures(address_is_null) %0) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = load ptr, ptr %0, align 8, !tbaa !17
  tail call void @g_list_free_full(ptr noundef %i.a, ptr noundef nonnull @free) #12
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !18   ; 2 uses
  %.not12 = icmp eq ptr %i.c, null
  br i1 %.not12, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @g_hash_table_unref(ptr noundef nonnull %i.c) #12
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !19   ; 2 uses
  %.not13 = icmp eq ptr %i.e, null
  br i1 %.not13, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @g_hash_table_unref(ptr noundef nonnull %i.e) #12
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !20   ; 2 uses
  %.not14 = icmp eq ptr %i.g, null
  br i1 %.not14, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @g_hash_table_unref(ptr noundef nonnull %i.g) #12
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  tail call void @free(ptr noundef nonnull %0) #12
  br label %bb.i

bb.i:                                             ; preds = %bb.a, %bb.h
  ret void
}

declare void @g_list_free_full(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) #2

declare void @g_hash_table_unref(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @checker_set_color(ptr nofree noundef writeonly captures(none) initializes((16, 20), (32, 44), (48, 60)) %0, i32 noundef %1, float noundef %2, float noundef %3, float noundef %4) local_unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %1, ptr %i.a, align 16, !tbaa !23
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  store float %2, ptr %i.b, align 16, !tbaa !24
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 36
  store float %3, ptr %i.c, align 4, !tbaa !24
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40
  store float %4, ptr %i.d, align 8, !tbaa !24
  %i.e = insertelement <2 x float> poison, float %4, i64 0
  %i.f = insertelement <2 x float> %i.e, float %2, i64 1
  %i.g = fpext reassoc nsz arcp contract afn <2 x float> %i.f to <2 x double>
  %i.h = fpext reassoc nsz arcp contract afn float %3 to double
  %i.i = fmul reassoc nsz arcp contract afn double %i.h, 1.000000e-02
  %i.j = fptrunc reassoc nsz arcp contract afn double %i.i to float
  %i.k = fmul reassoc nsz arcp contract afn <2 x double> %i.g, splat (double 1.000000e-02)
  %i.l = fptrunc reassoc nsz arcp contract afn <2 x double> %i.k to <2 x float>
  switch i32 %1, label %.preheader [
    i32 5, label %bb.c
    i32 6, label %bb.b
  ]

.preheader:                                       ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 48
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(12) %i.m, i8 0, i64 12, i1 false), !tbaa !24
  br label %.loopexit

bb.b:                                             ; preds = %bb.a
  %i.n = fmul reassoc nsz arcp contract afn float %3, 2.000000e-03
  %i.o = fmul reassoc nsz arcp contract afn float %2, 8.620690e-03
  %i.p = fadd reassoc nsz arcp contract afn float %i.o, f0x3E0D3DCB ; 7 uses
  %i.q = fmul reassoc nsz arcp contract afn float %4, 5.000000e-03
  %i.r = fcmp reassoc nsz arcp contract afn ogt float %i.p, f0x3E53DCB1
  %i.s = fmul reassoc nsz arcp contract afn float %i.p, %i.p
  %i.t = fmul reassoc nsz arcp contract afn float %i.s, %i.p
  %i.u = fmul reassoc nsz arcp contract afn float %i.p, f0x3E038026
  %i.v = fadd reassoc nsz arcp contract afn float %i.u, f0xBC911AA6
  %i.w = select reassoc nsz arcp contract afn i1 %i.r, float %i.t, float %i.v
  %i.x = fadd reassoc nsz arcp contract afn float %i.p, %i.n
  %i.y = fsub reassoc nsz arcp contract afn float %i.p, %i.q
  %i.z = insertelement <2 x float> poison, float %i.y, i64 0
  %i.aa = insertelement <2 x float> %i.z, float %i.x, i64 1 ; 5 uses
  %i.ab = fcmp reassoc nsz arcp contract afn ogt <2 x float> %i.aa, splat (float f0x3E53DCB1)
  %i.ac = fmul reassoc nsz arcp contract afn <2 x float> %i.aa, %i.aa
  %i.ad = fmul reassoc nsz arcp contract afn <2 x float> %i.ac, %i.aa
  %i.ae = fmul reassoc nsz arcp contract afn <2 x float> %i.aa, splat (float f0x3E038026)
  %i.af = fadd reassoc nsz arcp contract afn <2 x float> %i.ae, splat (float f0xBC911AA6)
  %i.ag = select <2 x i1> %i.ab, <2 x float> %i.ad, <2 x float> %i.af
  %i.ah = fmul reassoc nsz arcp contract afn <2 x float> %i.ag, <float f0x3F532CA5, float 9.642000e-01>
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.5.0 = phi nsz float [ %i.j, %bb.a ], [ %i.w, %bb.b ] ; 4 uses
  %i.ai = phi <2 x float> [ %i.l, %bb.a ], [ %i.ah, %bb.b ] ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ak = extractelement <2 x float> %i.ai, i64 1 ; 4 uses
  %i.al = fmul reassoc nsz arcp contract afn float %i.ak, f0x40489119
  %i.am = fmul reassoc nsz arcp contract afn float %.sroa.5.0, f0x3FCEF57D
  %i.an = fsub reassoc nsz arcp contract afn float %i.al, %i.am
  %i.ao = extractelement <2 x float> %i.ai, i64 0 ; 4 uses
  %i.ap = fmul reassoc nsz arcp contract afn float %i.ao, f0xBEFB31D6
  %i.aq = fadd reassoc nsz arcp contract afn float %i.an, %i.ap ; 3 uses
  %i.ar = fmul reassoc nsz arcp contract afn float %i.ak, f0x3F7A9091
  %i.as = fmul reassoc nsz arcp contract afn float %.sroa.5.0, f0x3FF54420
  %i.at = fsub reassoc nsz arcp contract afn float %i.as, %i.ar
  %i.au = fmul reassoc nsz arcp contract afn float %i.ao, 3.345400e-02
  %i.av = fadd reassoc nsz arcp contract afn float %i.at, %i.au ; 3 uses
  %i.aw = fmul reassoc nsz arcp contract afn float %i.ak, 7.194530e-02
  %i.ax = fmul reassoc nsz arcp contract afn float %.sroa.5.0, f0x3E6A7CB9
  %i.ay = fmul reassoc nsz arcp contract afn float %i.ao, f0x3FB3DEFE
  %i.az = fadd reassoc nsz arcp contract afn float %.sroa.5.0, %i.ak
  %i.ba = fsub reassoc nsz arcp contract afn float %i.aw, %i.ax
  %i.bb = fadd reassoc nsz arcp contract afn float %i.ba, %i.ay ; 2 uses
  %i.bc = fadd reassoc nsz arcp contract afn float %i.az, %i.ao
  %i.bd = fmul reassoc nsz arcp contract afn float %i.bc, 0.000000e+00 ; 2 uses
  %i.be = insertelement <4 x float> poison, float %i.aq, i64 0
  %i.bf = insertelement <4 x float> %i.be, float %i.av, i64 1
  %i.bg = insertelement <4 x float> %i.bf, float %i.bb, i64 2
  %i.bh = insertelement <4 x float> %i.bg, float %i.bd, i64 3
  %i.bi = bitcast <4 x float> %i.bh to <4 x i32>  ; 2 uses
  %i.bj = and <4 x i32> %i.bi, splat (i32 8388607)
  %i.bk = or disjoint <4 x i32> %i.bj, splat (i32 1065353216)
  %i.bl = bitcast <4 x i32> %i.bk to <4 x float>  ; 5 uses
  %i.bm = lshr <4 x i32> %i.bi, splat (i32 23)
  %i.bn = and <4 x i32> %i.bm, splat (i32 255)
  %i.bo = add nsw <4 x i32> %i.bn, splat (i32 -127)
  %i.bp = sitofp <4 x i32> %i.bo to <4 x float>
  %i.bq = fmul reassoc nnan nsz arcp contract afn <4 x float> %i.bl, splat (float f0x3D74552F)
  %i.br = fadd reassoc nnan nsz arcp contract afn <4 x float> %i.bq, splat (float f0xBEEE7397)
  %i.bs = fmul reassoc nnan nsz arcp contract afn <4 x float> %i.br, %i.bl
  %i.bt = fadd reassoc nnan nsz arcp contract afn <4 x float> %i.bs, splat (float f0x3FBD96DD)
  %i.bu = fmul reassoc nnan nsz arcp contract afn <4 x float> %i.bt, %i.bl
  %i.bv = fadd reassoc nnan nsz arcp contract afn <4 x float> %i.bu, splat (float f0xC02153F6)
  %i.bw = fmul reassoc nnan nsz arcp contract afn <4 x float> %i.bv, %i.bl
  %i.bx = fadd reassoc nnan nsz arcp contract afn <4 x float> %i.bw, splat (float f0x4038D96C)
  %i.by = fadd reassoc nnan nsz arcp contract afn <4 x float> %i.bl, splat (float -1.000000e+00)
  %i.bz = fmul reassoc nsz arcp contract afn <4 x float> %i.bx, %i.by
  %i.ca = fadd reassoc nsz arcp contract afn <4 x float> %i.bz, %i.bp
  %i.cb = fmul reassoc nsz arcp contract afn <4 x float> %i.ca, splat (float f0x3ED55555)
  %i.cc = tail call reassoc nsz arcp contract afn <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.cb, <4 x float> splat (float 1.290000e+02))
  %i.cd = tail call reassoc nsz arcp contract afn <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.cc, <4 x float> splat (float f0xC2FDFFFF)) ; 4 uses
  %i.ce = fadd reassoc nsz arcp contract afn <4 x float> %i.cd, splat (float -5.000000e-01)
  %i.cf = tail call <4 x i32> @llvm.x86.sse2.cvtps2dq(<4 x float> %i.ce)
  %i.cg = sitofp reassoc nsz arcp contract afn <4 x i32> %i.cf to <4 x float> ; 5 uses
  %i.ch = fcmp reassoc nsz arcp contract afn ugt float %i.aq, 3.130800e-03
  br i1 %i.ch, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ci = fmul reassoc nnan nsz arcp contract afn float %i.aq, 1.292000e+01
  br label %dt_XYZ_to_sRGB_clipped.exit

bb.e:                                             ; preds = %bb.c
  %.sroa.014.0.vec.extract.i.i.i.i = extractelement <4 x float> %i.cg, i64 0
  %foldExtExtBinop = fsub reassoc nsz arcp contract afn <4 x float> %i.cd, %i.cg
  %i.cj = extractelement <4 x float> %foldExtExtBinop, i64 0 ; 4 uses
  %i.ck = fmul reassoc nsz arcp contract afn float %i.cj, f0x3C5DBE69
  %i.cl = fadd reassoc nsz arcp contract afn float %i.ck, f0x3D5509F9
  %i.cm = fmul reassoc nsz arcp contract afn float %i.cl, %i.cj
  %i.cn = fadd reassoc nsz arcp contract afn float %i.cm, f0x3E773CC5
  %i.co = fmul reassoc nsz arcp contract afn float %i.cn, %i.cj
  %i.cp = fadd reassoc nsz arcp contract afn float %i.co, f0x3F3168B3
  %i.cq = fmul reassoc nsz arcp contract afn float %i.cp, %i.cj
  %i.cr = fadd reassoc nsz arcp contract afn float %i.cq, f0x3F800016
  %i.cs = fptosi float %.sroa.014.0.vec.extract.i.i.i.i to i32
  %i.ct = shl i32 %i.cs, 23
  %i.cu = add i32 %i.ct, 1065353216
  %i.cv = bitcast i32 %i.cu to float
  %i.cw = fmul reassoc nnan nsz arcp contract afn float %i.cv, 1.055000e+00
  %i.cx = fmul reassoc nsz arcp contract afn float %i.cw, %i.cr
  %i.cy = fadd reassoc nsz arcp contract afn float %i.cx, -5.500000e-02
  br label %dt_XYZ_to_sRGB_clipped.exit

dt_XYZ_to_sRGB_clipped.exit:                      ; preds = %bb.d, %bb.e
  %i.cz = phi reassoc nsz arcp contract afn float [ %i.ci, %bb.d ], [ %i.cy, %bb.e ]
  %.sroa.014.4.vec.extract.i.i.i.i = extractelement <4 x float> %i.cg, i64 1
  %foldExtExtBinop31 = fsub reassoc nsz arcp contract afn <4 x float> %i.cd, %i.cg
  %i.da = extractelement <4 x float> %foldExtExtBinop31, i64 1 ; 4 uses
  %i.db = fmul reassoc nsz arcp contract afn float %i.da, f0x3C5DBE69
  %i.dc = fadd reassoc nsz arcp contract afn float %i.db, f0x3D5509F9
  %i.dd = fmul reassoc nsz arcp contract afn float %i.dc, %i.da
  %i.de = fadd reassoc nsz arcp contract afn float %i.dd, f0x3E773CC5
  %i.df = fmul reassoc nsz arcp contract afn float %i.de, %i.da
  %i.dg = fadd reassoc nsz arcp contract afn float %i.df, f0x3F3168B3
  %i.dh = fmul reassoc nsz arcp contract afn float %i.dg, %i.da
  %i.di = fadd reassoc nsz arcp contract afn float %i.dh, f0x3F800016
  %i.dj = fptosi float %.sroa.014.4.vec.extract.i.i.i.i to i32
  %i.dk = shl i32 %i.dj, 23
  %i.dl = add i32 %i.dk, 1065353216
  %i.dm = bitcast i32 %i.dl to float
  %i.dn = fmul reassoc nsz arcp contract afn float %i.av, 1.292000e+01
  %i.do = fcmp reassoc nsz arcp contract afn ugt float %i.av, 3.130800e-03
  %i.dp = fmul reassoc nnan nsz arcp contract afn float %i.dm, 1.055000e+00
  %i.dq = fmul reassoc nsz arcp contract afn float %i.dp, %i.di
  %i.dr = fadd reassoc nsz arcp contract afn float %i.dq, -5.500000e-02
  %i.ds = select reassoc nsz arcp contract afn i1 %i.do, float %i.dr, float %i.dn
  %i.dt = insertelement <2 x float> poison, float %i.bb, i64 0
  %i.du = insertelement <2 x float> %i.dt, float %i.bd, i64 1 ; 2 uses
  %i.dv = fcmp reassoc nsz arcp contract afn ugt <2 x float> %i.du, splat (float 3.130800e-03)
  %i.dw = shufflevector <4 x float> %i.cd, <4 x float> poison, <2 x i32> <i32 2, i32 3>
  %i.dx = shufflevector <4 x float> %i.cg, <4 x float> poison, <2 x i32> <i32 2, i32 3> ; 2 uses
  %i.dy = fsub reassoc nsz arcp contract afn <2 x float> %i.dw, %i.dx ; 4 uses
  %i.dz = fmul reassoc nsz arcp contract afn <2 x float> %i.dy, splat (float f0x3C5DBE69)
  %i.ea = fadd reassoc nsz arcp contract afn <2 x float> %i.dz, splat (float f0x3D5509F9)
  %i.eb = fmul reassoc nsz arcp contract afn <2 x float> %i.ea, %i.dy
  %i.ec = fadd reassoc nsz arcp contract afn <2 x float> %i.eb, splat (float f0x3E773CC5)
  %i.ed = fmul reassoc nsz arcp contract afn <2 x float> %i.ec, %i.dy
  %i.ee = fadd reassoc nsz arcp contract afn <2 x float> %i.ed, splat (float f0x3F3168B3)
  %i.ef = fmul reassoc nsz arcp contract afn <2 x float> %i.ee, %i.dy
  %i.eg = fadd reassoc nsz arcp contract afn <2 x float> %i.ef, splat (float f0x3F800016)
  %i.eh = fptosi <2 x float> %i.dx to <2 x i32>
  %i.ei = shl <2 x i32> %i.eh, splat (i32 23)
  %i.ej = add <2 x i32> %i.ei, splat (i32 1065353216)
  %i.ek = bitcast <2 x i32> %i.ej to <2 x float>
  %i.el = fmul reassoc nsz arcp contract afn <2 x float> %i.du, <float 1.292000e+01, float 1.000000e+00>
  %i.em = fmul reassoc nnan nsz arcp contract afn <2 x float> %i.ek, splat (float 1.055000e+00)
  %i.en = fmul reassoc nsz arcp contract afn <2 x float> %i.em, %i.eg
  %i.eo = fadd reassoc nsz arcp contract afn <2 x float> %i.en, splat (float -5.500000e-02)
  %i.ep = select <2 x i1> %i.dv, <2 x float> %i.eo, <2 x float> %i.el
  %i.eq = insertelement <4 x float> poison, float %i.cz, i64 0
  %i.er = insertelement <4 x float> %i.eq, float %i.ds, i64 1
  %i.es = shufflevector <2 x float> %i.ep, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.et = shufflevector <4 x float> %i.er, <4 x float> %i.es, <4 x i32> <i32 0, i32 1, i32 4, i32 5> ; 3 uses
  %i.eu = fcmp reassoc nsz arcp contract afn ult <4 x float> %i.et, zeroinitializer
  %i.ev = fcmp reassoc nsz arcp contract afn ole <4 x float> %i.et, splat (float 1.000000e+00)
  %i.ew = select <4 x i1> %i.ev, <4 x float> %i.et, <4 x float> splat (float 1.000000e+00)
  %i.ex = select <4 x i1> %i.eu, <4 x float> zeroinitializer, <4 x float> %i.ew
  store <4 x float> %i.ex, ptr %i.aj, align 16, !tbaa !24
  br label %.loopexit

.loopexit:                                        ; preds = %.preheader, %dt_XYZ_to_sRGB_clipped.exit
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #4

; Function Attrs: nounwind uwtable
define dso_local noalias noundef ptr @parse_cht(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [512 x i8], align 16              ; 17 uses
  %i.b = alloca ptr, align 8                      ; 26 uses
  %i.c = alloca ptr, align 8                      ; 64 uses
  %1 = alloca %struct._GHashTableIter, align 8    ; 8 uses
  %i.d = alloca ptr, align 8                      ; 6 uses
  %i.e = alloca ptr, align 8                      ; 8 uses
  %i.f = alloca ptr, align 8                      ; 16 uses
  %i.g = tail call noalias dereferenceable_or_null(48) ptr @calloc(i64 noundef 1, i64 noundef 48) #13 ; 16 uses
  %i.h = tail call noalias ptr @fopen(ptr noundef %0, ptr noundef nonnull @.str) ; 8 uses
  %.not = icmp eq ptr %i.h, null                  ; 2 uses
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = load ptr, ptr @stderr, align 8, !tbaa !26
  %i.j = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.i, ptr noundef nonnull @.str.1, ptr noundef %0) #14 ; 0 uses
  br label %.loopexit708

bb.c:                                             ; preds = %bb.a
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(512) %i.a, i8 0, i64 512, i1 false)
  %i.k = tail call ptr @g_hash_table_new_full(ptr noundef nonnull @g_str_hash, ptr noundef nonnull @g_str_equal, ptr noundef nonnull @g_free, ptr noundef nonnull @free) #12
  %i.l = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 3 uses
  store ptr %i.k, ptr %i.l, align 8, !tbaa !18
  %i.m = tail call ptr @g_hash_table_new_full(ptr noundef nonnull @g_str_hash, ptr noundef nonnull @g_str_equal, ptr noundef nonnull @g_free, ptr noundef nonnull @free) #12 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 3 uses
  store ptr %i.m, ptr %i.n, align 8, !tbaa !19
  %i.o = tail call ptr @g_hash_table_new_full(ptr noundef nonnull @g_str_hash, ptr noundef nonnull @g_str_equal, ptr noundef nonnull @g_free, ptr noundef nonnull @free_labels_list) #12
  %i.p = getelementptr inbounds nuw i8, ptr %i.g, i64 24 ; 2 uses
  store ptr %i.o, ptr %i.p, align 8, !tbaa !20
  %i.q = call ptr @fgets(ptr noundef nonnull %i.a, i32 noundef 512, ptr noundef nonnull %i.h)
  %.not429856 = icmp eq ptr %i.q, null
  br i1 %.not429856, label %free_chart.exit.thread, label %.lr.ph865

.lr.ph865:                                        ; preds = %bb.c
  %i.r = ptrtoint ptr %i.a to i64                 ; 26 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.g, i64 44
  %i.t = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  %i.u = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph865, %.backedge
  %i.v = phi ptr [ %i.m, %.lr.ph865 ], [ %i.y, %.backedge ] ; 9 uses
  %.0411858 = phi i32 [ 0, %.lr.ph865 ], [ %.0411.be, %.backedge ] ; 9 uses
  %.0414857 = phi i32 [ 0, %.lr.ph865 ], [ %.0414.be, %.backedge ]
  %i.w = phi <4 x float> [ <float f0x7F7FFFFF, float f0x7F7FFFFF, float f0x00800000, float f0x00800000>, %.lr.ph865 ], [ %i.z, %.backedge ] ; 10 uses
  %i.x = load i8, ptr %i.a, align 16, !tbaa !27   ; 2 uses
  switch i8 %i.x, label %bb.e [
    i8 10, label %.backedge
    i8 0, label %.backedge
  ]

.backedge:                                        ; preds = %.thread, %bb.d, %bb.d, %bb.e, %.loopexit1004
  %i.y = phi ptr [ %i.v, %.loopexit1004 ], [ %i.v, %bb.e ], [ %i.v, %bb.d ], [ %i.v, %bb.d ], [ %.ph, %.thread ]
  %.0414.be = phi i32 [ 0, %.loopexit1004 ], [ 1, %bb.e ], [ 0, %bb.d ], [ 0, %bb.d ], [ %.2416.ph, %.thread ]
  %.0411.be = phi i32 [ 6, %.loopexit1004 ], [ %.0411858, %bb.e ], [ %.0411858, %bb.d ], [ %.0411858, %bb.d ], [ %.2413.ph, %.thread ]
  %i.z = phi <4 x float> [ %i.w, %.loopexit1004 ], [ %i.w, %bb.e ], [ %i.w, %bb.d ], [ %i.w, %bb.d ], [ %i.rj, %.thread ]
  %i.aa = call ptr @fgets(ptr noundef nonnull %i.a, i32 noundef 512, ptr noundef nonnull %i.h)
  %.not429 = icmp eq ptr %i.aa, null
  br i1 %.not429, label %free_chart.exit.thread, label %bb.d

bb.e:                                             ; preds = %bb.d
  %.not430 = icmp eq i32 %.0414857, 0
  br i1 %.not430, label %bb.f, label %.backedge

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #12
  %i.ab = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.a) #15 ; 5 uses
  br label %bb.g

bb.g:                                             ; preds = %.critedge.i, %bb.f
  %i.ac = phi i8 [ %.pre, %.critedge.i ], [ %i.x, %bb.f ] ; 2 uses
  %.promoted18.i = phi ptr [ %i.ad, %.critedge.i ], [ %i.a, %bb.f ] ; 9 uses
  switch i8 %i.ac, label %.preheader.i [
    i8 32, label %.critedge.i
    i8 9, label %.critedge.i
  ]

.critedge.i:                                      ; preds = %bb.g, %bb.g
  %i.ad = getelementptr inbounds nuw i8, ptr %.promoted18.i, i64 1 ; 3 uses
  store ptr %i.ad, ptr %i.b, align 8, !tbaa !29
  %.pre = load i8, ptr %i.ad, align 1, !tbaa !27
  br label %bb.g

.preheader.i:                                     ; preds = %bb.g, %bb.h
  %i.ae = phi i8 [ %.pre.i, %bb.h ], [ %i.ac, %bb.g ]
  %i.af = phi ptr [ %i.ag, %bb.h ], [ %.promoted18.i, %bb.g ] ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 1 ; 3 uses
  switch i8 %i.ae, label %bb.h [
    i8 32, label %parse_string.exit
    i8 9, label %parse_string.exit
    i8 0, label %parse_string.exit
    i8 10, label %parse_string.exit
  ]

bb.h:                                             ; preds = %.preheader.i
  %.pre.i = load i8, ptr %i.ag, align 1, !tbaa !27
  br label %.preheader.i

parse_string.exit:                                ; preds = %.preheader.i, %.preheader.i, %.preheader.i, %.preheader.i
  store ptr %i.ag, ptr %i.b, align 8, !tbaa !29
  store i8 0, ptr %i.af, align 1, !tbaa !27
  %i.ah = call i32 @g_strcmp0(ptr noundef nonnull %.promoted18.i, ptr noundef nonnull @.str.2) #12
  %i.ai = or i32 %i.ah, %.0411858
  %or.cond9 = icmp eq i32 %i.ai, 0
  br i1 %or.cond9, label %bb.i, label %bb.ay

bb.i:                                             ; preds = %parse_string.exit
  %i.aj = load ptr, ptr %i.b, align 8, !tbaa !29  ; 2 uses
  %i.ak = ptrtoint ptr %i.aj to i64
  %i.al = sub i64 %i.ak, %i.r
  %.not443 = icmp slt i64 %i.al, %i.ab
  br i1 %.not443, label %.preheader703, label %.thread665

.preheader703:                                    ; preds = %bb.i, %.critedge.i488
  %i.am = phi ptr [ %i.ao, %.critedge.i488 ], [ %i.aj, %bb.i ] ; 3 uses
  %i.an = load i8, ptr %i.am, align 1, !tbaa !27
  switch i8 %i.an, label %parse_double.exit [
    i8 32, label %.critedge.i488
    i8 9, label %.critedge.i488
  ]

.critedge.i488:                                   ; preds = %.preheader703, %.preheader703
  %i.ao = getelementptr inbounds nuw i8, ptr %i.am, i64 1 ; 2 uses
  store ptr %i.ao, ptr %i.b, align 8, !tbaa !29
  br label %.preheader703

parse_double.exit:                                ; preds = %.preheader703
  %i.ap = call reassoc nsz arcp contract afn double @g_ascii_strtod(ptr noundef nonnull %i.am, ptr noundef nonnull %i.b) #12
  %i.aq = load ptr, ptr %i.b, align 8, !tbaa !29
  %i.ar = getelementptr inbounds i8, ptr %i.aq, i64 -1
  store i8 0, ptr %i.ar, align 1, !tbaa !27
  %i.as = fptoui double %i.ap to i32
  %i.at = call ptr @fgets(ptr noundef nonnull %i.a, i32 noundef 512, ptr noundef nonnull %i.h)
  %.not444820 = icmp eq ptr %i.at, null
  br i1 %.not444820, label %._crit_edge826, label %.lr.ph825

.lr.ph825:                                        ; preds = %parse_double.exit, %bb.aw
  %i.au = phi <4 x float> [ %i.ma, %bb.aw ], [ %i.w, %parse_double.exit ] ; 8 uses
  %i.av = load i8, ptr %i.a, align 16, !tbaa !27  ; 2 uses
  switch i8 %i.av, label %bb.j [
    i8 10, label %._crit_edge826
    i8 0, label %._crit_edge826
  ]

bb.j:                                             ; preds = %.lr.ph825
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #12
  %i.aw = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.a) #15 ; 18 uses
  br label %bb.k

bb.k:                                             ; preds = %bb.l, %bb.j
  %i.ax = phi i8 [ %.pre952, %bb.l ], [ %i.av, %bb.j ] ; 4 uses
  %i.ay = phi ptr [ %i.az, %bb.l ], [ %i.a, %bb.j ] ; 4 uses
  switch i8 %i.ax, label %.thread651 [
    i8 32, label %bb.l
    i8 70, label %.preheader689
    i8 68, label %bb.o
    i8 88, label %bb.o
    i8 89, label %bb.o
  ]

bb.l:                                             ; preds = %bb.k
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 1 ; 3 uses
  store ptr %i.az, ptr %i.c, align 8, !tbaa !29
  %.pre952 = load i8, ptr %i.az, align 1, !tbaa !27
  br label %bb.k

.preheader689:                                    ; preds = %bb.k, %.preheader689
  %.pn = phi ptr [ %storemerge, %.preheader689 ], [ %i.ay, %bb.k ] ; 2 uses
  %storemerge = getelementptr inbounds nuw i8, ptr %.pn, i64 1 ; 2 uses
  %i.ba = load i8, ptr %storemerge, align 1, !tbaa !27
  switch i8 %i.ba, label %.thread651 [
    i8 32, label %.preheader689
    i8 95, label %.preheader688
  ]

.preheader688:                                    ; preds = %.preheader689
  %i.bb = getelementptr inbounds nuw i8, ptr %.pn, i64 2 ; 3 uses
end_hunk_0
