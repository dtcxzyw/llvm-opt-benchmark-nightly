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
end_hunk_0
begin_hunk_1_@parse_cht:bb.a

._crit_edge814:                                   ; preds = %.lr.ph813, %.preheader688
  %i.bi = phi i8 [ %i.bc, %.preheader688 ], [ %i.bg, %.lr.ph813 ]
  %.lcssa777 = phi ptr [ %i.bb, %.preheader688 ], [ %i.bf, %.lr.ph813 ]
  %i.bj = getelementptr inbounds nuw i8, ptr %.lcssa777, i64 1 ; 4 uses
  store ptr %i.bj, ptr %i.c, align 8, !tbaa !29
  %.not463 = icmp eq i8 %i.bi, 95
  br i1 %.not463, label %.preheader687, label %.thread651

.preheader687:                                    ; preds = %._crit_edge814
  %i.bk = load i8, ptr %i.bj, align 1, !tbaa !27  ; 2 uses
  %i.bl = icmp eq i8 %i.bk, 32
  br i1 %i.bl, label %.lr.ph817, label %._crit_edge818

.lr.ph817:                                        ; preds = %.preheader687, %.lr.ph817
  %i.bm = phi ptr [ %i.bn, %.lr.ph817 ], [ %i.bj, %.preheader687 ]
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 1 ; 4 uses
  store ptr %i.bn, ptr %i.c, align 8, !tbaa !29
  %i.bo = load i8, ptr %i.bn, align 1, !tbaa !27  ; 2 uses
  %i.bp = icmp eq i8 %i.bo, 32
  br i1 %i.bp, label %.lr.ph817, label %._crit_edge818

._crit_edge818:                                   ; preds = %.lr.ph817, %.preheader687
  %i.bq = phi i8 [ %i.bk, %.preheader687 ], [ %i.bo, %.lr.ph817 ]
  %.lcssa778 = phi ptr [ %i.bj, %.preheader687 ], [ %i.bn, %.lr.ph817 ] ; 2 uses
  %i.br = ptrtoint ptr %.lcssa778 to i64
  %i.bs = sub i64 %i.br, %i.r
  %.not464 = icmp slt i64 %i.bs, %i.aw
  br i1 %.not464, label %.preheader686, label %.thread651

.preheader686:                                    ; preds = %._crit_edge818, %.critedge.i490
  %i.bt = phi i8 [ %.pre953, %.critedge.i490 ], [ %i.bq, %._crit_edge818 ]
  %i.bu = phi ptr [ %i.bv, %.critedge.i490 ], [ %.lcssa778, %._crit_edge818 ] ; 2 uses
  switch i8 %i.bt, label %parse_double.exit491 [
    i8 32, label %.critedge.i490
    i8 9, label %.critedge.i490
  ]

.critedge.i490:                                   ; preds = %.preheader686, %.preheader686
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 1 ; 3 uses
  store ptr %i.bv, ptr %i.c, align 8, !tbaa !29
  %.pre953 = load i8, ptr %i.bv, align 1, !tbaa !27
  br label %.preheader686

parse_double.exit491:                             ; preds = %.preheader686
  %i.bw = call reassoc nsz arcp contract afn double @g_ascii_strtod(ptr noundef nonnull %i.bu, ptr noundef nonnull %i.c) #12
  %i.bx = load ptr, ptr %i.c, align 8, !tbaa !29
  %i.by = getelementptr inbounds i8, ptr %i.bx, i64 -1
  store i8 0, ptr %i.by, align 1, !tbaa !27
  %i.bz = fptrunc reassoc nsz arcp contract afn double %i.bw to float ; 2 uses
  %i.ca = load ptr, ptr %i.c, align 8, !tbaa !29  ; 2 uses
  %i.cb = ptrtoint ptr %i.ca to i64
  %i.cc = sub i64 %i.cb, %i.r
  %.not465 = icmp slt i64 %i.cc, %i.aw
  br i1 %.not465, label %.preheader685, label %.thread651

.preheader685:                                    ; preds = %parse_double.exit491, %.critedge.i493
  %i.cd = phi ptr [ %i.cf, %.critedge.i493 ], [ %i.ca, %parse_double.exit491 ] ; 3 uses
  %i.ce = load i8, ptr %i.cd, align 1, !tbaa !27
  switch i8 %i.ce, label %parse_double.exit494 [
    i8 32, label %.critedge.i493
    i8 9, label %.critedge.i493
  ]

.critedge.i493:                                   ; preds = %.preheader685, %.preheader685
  %i.cf = getelementptr inbounds nuw i8, ptr %i.cd, i64 1 ; 2 uses
  store ptr %i.cf, ptr %i.c, align 8, !tbaa !29
  br label %.preheader685

parse_double.exit494:                             ; preds = %.preheader685
  %i.cg = call reassoc nsz arcp contract afn double @g_ascii_strtod(ptr noundef nonnull %i.cd, ptr noundef nonnull %i.c) #12
  %i.ch = load ptr, ptr %i.c, align 8, !tbaa !29
  %i.ci = getelementptr inbounds i8, ptr %i.ch, i64 -1
  store i8 0, ptr %i.ci, align 1, !tbaa !27
  %i.cj = fptrunc reassoc nsz arcp contract afn double %i.cg to float ; 2 uses
  %i.ck = load ptr, ptr %i.c, align 8, !tbaa !29  ; 2 uses
  %i.cl = ptrtoint ptr %i.ck to i64
  %i.cm = sub i64 %i.cl, %i.r
  %.not466 = icmp slt i64 %i.cm, %i.aw
  br i1 %.not466, label %.preheader684, label %.thread651

.preheader684:                                    ; preds = %parse_double.exit494, %.critedge.i496
  %i.cn = phi ptr [ %i.cp, %.critedge.i496 ], [ %i.ck, %parse_double.exit494 ] ; 3 uses
  %i.co = load i8, ptr %i.cn, align 1, !tbaa !27
  switch i8 %i.co, label %parse_double.exit497 [
    i8 32, label %.critedge.i496
    i8 9, label %.critedge.i496
  ]

.critedge.i496:                                   ; preds = %.preheader684, %.preheader684
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cn, i64 1 ; 2 uses
  store ptr %i.cp, ptr %i.c, align 8, !tbaa !29
  br label %.preheader684

parse_double.exit497:                             ; preds = %.preheader684
  %i.cq = call reassoc nsz arcp contract afn double @g_ascii_strtod(ptr noundef nonnull %i.cn, ptr noundef nonnull %i.c) #12
  %i.cr = load ptr, ptr %i.c, align 8, !tbaa !29
  %i.cs = getelementptr inbounds i8, ptr %i.cr, i64 -1
  store i8 0, ptr %i.cs, align 1, !tbaa !27
  %i.ct = fptrunc reassoc nsz arcp contract afn double %i.cq to float ; 2 uses
  %i.cu = load ptr, ptr %i.c, align 8, !tbaa !29  ; 2 uses
  %i.cv = ptrtoint ptr %i.cu to i64
  %i.cw = sub i64 %i.cv, %i.r
  %.not467 = icmp slt i64 %i.cw, %i.aw
  br i1 %.not467, label %.preheader683, label %.thread651

.preheader683:                                    ; preds = %parse_double.exit497, %.critedge.i499
  %i.cx = phi ptr [ %i.cz, %.critedge.i499 ], [ %i.cu, %parse_double.exit497 ] ; 3 uses
  %i.cy = load i8, ptr %i.cx, align 1, !tbaa !27
  switch i8 %i.cy, label %parse_double.exit500 [
    i8 32, label %.critedge.i499
    i8 9, label %.critedge.i499
  ]

.critedge.i499:                                   ; preds = %.preheader683, %.preheader683
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cx, i64 1 ; 2 uses
  store ptr %i.cz, ptr %i.c, align 8, !tbaa !29
  br label %.preheader683

parse_double.exit500:                             ; preds = %.preheader683
  %i.da = call reassoc nsz arcp contract afn double @g_ascii_strtod(ptr noundef nonnull %i.cx, ptr noundef nonnull %i.c) #12
  %i.db = load ptr, ptr %i.c, align 8, !tbaa !29
  %i.dc = getelementptr inbounds i8, ptr %i.db, i64 -1
  store i8 0, ptr %i.dc, align 1, !tbaa !27
  %i.dd = fptrunc reassoc nsz arcp contract afn double %i.da to float ; 2 uses
  %i.de = load ptr, ptr %i.c, align 8, !tbaa !29  ; 2 uses
  %i.df = ptrtoint ptr %i.de to i64
  %i.dg = sub i64 %i.df, %i.r
  %.not468 = icmp slt i64 %i.dg, %i.aw
  br i1 %.not468, label %.preheader682, label %.thread651

.preheader682:                                    ; preds = %parse_double.exit500, %.critedge.i502
  %i.dh = phi ptr [ %i.dj, %.critedge.i502 ], [ %i.de, %parse_double.exit500 ] ; 3 uses
  %i.di = load i8, ptr %i.dh, align 1, !tbaa !27
  switch i8 %i.di, label %parse_double.exit503 [
    i8 32, label %.critedge.i502
    i8 9, label %.critedge.i502
  ]

.critedge.i502:                                   ; preds = %.preheader682, %.preheader682
  %i.dj = getelementptr inbounds nuw i8, ptr %i.dh, i64 1 ; 2 uses
  store ptr %i.dj, ptr %i.c, align 8, !tbaa !29
  br label %.preheader682

parse_double.exit503:                             ; preds = %.preheader682
  %i.dk = call reassoc nsz arcp contract afn double @g_ascii_strtod(ptr noundef nonnull %i.dh, ptr noundef nonnull %i.c) #12
  %i.dl = load ptr, ptr %i.c, align 8, !tbaa !29
  %i.dm = getelementptr inbounds i8, ptr %i.dl, i64 -1
  store i8 0, ptr %i.dm, align 1, !tbaa !27
  %i.dn = fptrunc reassoc nsz arcp contract afn double %i.dk to float ; 2 uses
  %i.do = load ptr, ptr %i.c, align 8, !tbaa !29  ; 2 uses
  %i.dp = ptrtoint ptr %i.do to i64
  %i.dq = sub i64 %i.dp, %i.r
  %.not469 = icmp slt i64 %i.dq, %i.aw
  br i1 %.not469, label %.preheader, label %.thread651

.preheader:                                       ; preds = %parse_double.exit503, %.critedge.i505
  %i.dr = phi ptr [ %i.dt, %.critedge.i505 ], [ %i.do, %parse_double.exit503 ] ; 3 uses
  %i.ds = load i8, ptr %i.dr, align 1, !tbaa !27
  switch i8 %i.ds, label %parse_double.exit506 [
    i8 32, label %.critedge.i505
    i8 9, label %.critedge.i505
  ]

.critedge.i505:                                   ; preds = %.preheader, %.preheader
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dr, i64 1 ; 2 uses
  store ptr %i.dt, ptr %i.c, align 8, !tbaa !29
  br label %.preheader

parse_double.exit506:                             ; preds = %.preheader
  %i.du = call reassoc nsz arcp contract afn double @g_ascii_strtod(ptr noundef nonnull %i.dr, ptr noundef nonnull %i.c) #12
  %i.dv = load ptr, ptr %i.c, align 8, !tbaa !29
  %i.dw = getelementptr inbounds i8, ptr %i.dv, i64 -1
  store i8 0, ptr %i.dw, align 1, !tbaa !27
  %i.dx = fptrunc reassoc nsz arcp contract afn double %i.du to float ; 2 uses
  %i.dy = load ptr, ptr %i.c, align 8, !tbaa !29
  %i.dz = ptrtoint ptr %i.dy to i64
  %i.ea = sub i64 %i.dz, %i.r
  %.not470 = icmp slt i64 %i.ea, %i.aw
  br i1 %.not470, label %bb.m, label %.thread651

bb.m:                                             ; preds = %parse_double.exit506
  %i.eb = call reassoc nsz arcp contract afn fastcc double @parse_double(ptr noundef %i.c)
  %i.ec = load ptr, ptr %i.c, align 8, !tbaa !29
  %i.ed = ptrtoint ptr %i.ec to i64
  %i.ee = sub i64 %i.ed, %i.r
  %.not471 = icmp slt i64 %i.ee, %i.aw
  br i1 %.not471, label %bb.n, label %.thread651

bb.n:                                             ; preds = %bb.m
  %i.ef = call reassoc nsz arcp contract afn fastcc double @parse_double(ptr noundef %i.c)
  %i.eg = insertelement <4 x float> poison, float %i.bz, i64 0
  %i.eh = insertelement <4 x float> %i.eg, float %i.cj, i64 1
  %i.ei = shufflevector <4 x float> %i.eh, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1> ; 3 uses
  %i.ej = fcmp reassoc nsz arcp contract afn olt <4 x float> %i.au, %i.ei
  %i.ek = fcmp reassoc nsz arcp contract afn ogt <4 x float> %i.au, %i.ei
  %i.el = shufflevector <4 x i1> %i.ej, <4 x i1> %i.ek, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.em = insertelement <4 x double> poison, double %i.eb, i64 0
  %i.en = insertelement <4 x double> %i.em, double %i.ef, i64 1
  %i.eo = shufflevector <4 x double> %i.en, <4 x double> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.ep = fptrunc reassoc nsz arcp contract afn <4 x double> %i.eo to <4 x float> ; 4 uses
  %i.eq = select <4 x i1> %i.el, <4 x float> %i.au, <4 x float> %i.ei ; 3 uses
  %i.er = insertelement <4 x float> poison, float %i.ct, i64 0
  %i.es = insertelement <4 x float> %i.er, float %i.dd, i64 1
  %i.et = shufflevector <4 x float> %i.es, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1> ; 3 uses
  %i.eu = fcmp reassoc nsz arcp contract afn olt <4 x float> %i.eq, %i.et
  %i.ev = fcmp reassoc nsz arcp contract afn ogt <4 x float> %i.eq, %i.et
  %i.ew = shufflevector <4 x i1> %i.eu, <4 x i1> %i.ev, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.ex = select <4 x i1> %i.ew, <4 x float> %i.eq, <4 x float> %i.et ; 3 uses
  %i.ey = insertelement <4 x float> poison, float %i.dn, i64 0
  %i.ez = insertelement <4 x float> %i.ey, float %i.dx, i64 1
  %i.fa = shufflevector <4 x float> %i.ez, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1> ; 3 uses
  %i.fb = fcmp reassoc nsz arcp contract afn olt <4 x float> %i.ex, %i.fa
  %i.fc = fcmp reassoc nsz arcp contract afn ogt <4 x float> %i.ex, %i.fa
  %i.fd = shufflevector <4 x i1> %i.fb, <4 x i1> %i.fc, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.fe = select <4 x i1> %i.fd, <4 x float> %i.ex, <4 x float> %i.fa ; 3 uses
  %i.ff = fcmp reassoc nsz arcp contract afn olt <4 x float> %i.fe, %i.ep
  %i.fg = fcmp reassoc nsz arcp contract afn ogt <4 x float> %i.fe, %i.ep
  %i.fh = shufflevector <4 x i1> %i.ff, <4 x i1> %i.fg, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.fi = select <4 x i1> %i.fh, <4 x float> %i.fe, <4 x float> %i.ep
  %i.fj = call noalias dereferenceable_or_null(32) ptr @malloc(i64 noundef 32) #16 ; 8 uses
  store float %i.bz, ptr %i.fj, align 4, !tbaa !31
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fj, i64 4
  store float %i.cj, ptr %i.fk, align 4, !tbaa !32
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fj, i64 8
  store float %i.ct, ptr %i.fl, align 4, !tbaa !31
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fj, i64 12
  store float %i.dd, ptr %i.fm, align 4, !tbaa !32
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fj, i64 16
  store float %i.dn, ptr %i.fn, align 4, !tbaa !31
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fj, i64 20
  store float %i.dx, ptr %i.fo, align 4, !tbaa !32
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fj, i64 24
  %i.fq = shufflevector <4 x float> %i.ep, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  store <2 x float> %i.fq, ptr %i.fp, align 4, !tbaa !24
  %i.fr = load ptr, ptr %i.g, align 8, !tbaa !17
  %i.fs = call ptr @g_list_append(ptr noundef %i.fr, ptr noundef nonnull %i.fj) #12
  store ptr %i.fs, ptr %i.g, align 8, !tbaa !17
  br label %bb.aw

bb.o:                                             ; preds = %bb.k, %bb.k, %bb.k
  %i.ft = getelementptr inbounds nuw i8, ptr %i.ay, i64 1 ; 2 uses
  store i8 0, ptr %i.ay, align 1, !tbaa !27
  %i.fu = ptrtoint ptr %i.ft to i64
  %i.fv = sub i64 %i.fu, %i.r
  %.not445 = icmp slt i64 %i.fv, %i.aw
  br i1 %.not445, label %.preheader699, label %.thread651

.preheader699:                                    ; preds = %bb.o, %.critedge.i509
  %.promoted18.i508 = phi ptr [ %i.fx, %.critedge.i509 ], [ %i.ft, %bb.o ] ; 5 uses
  %i.fw = load i8, ptr %.promoted18.i508, align 1, !tbaa !27 ; 2 uses
  switch i8 %i.fw, label %.preheader.i510 [
    i8 32, label %.critedge.i509
    i8 9, label %.critedge.i509
  ]

.critedge.i509:                                   ; preds = %.preheader699, %.preheader699
  %i.fx = getelementptr inbounds nuw i8, ptr %.promoted18.i508, i64 1 ; 2 uses
  store ptr %i.fx, ptr %i.c, align 8, !tbaa !29
  br label %.preheader699

.preheader.i510:                                  ; preds = %.preheader699, %bb.p
  %i.fy = phi i8 [ %.pre.i511, %bb.p ], [ %i.fw, %.preheader699 ]
  %i.fz = phi ptr [ %i.ga, %bb.p ], [ %.promoted18.i508, %.preheader699 ] ; 2 uses
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fz, i64 1 ; 5 uses
  switch i8 %i.fy, label %bb.p [
    i8 32, label %parse_string.exit512
    i8 9, label %parse_string.exit512
    i8 0, label %parse_string.exit512
    i8 10, label %parse_string.exit512
  ]

bb.p:                                             ; preds = %.preheader.i510
  store ptr %i.ga, ptr %i.c, align 8, !tbaa !29
  %.pre.i511 = load i8, ptr %i.ga, align 1, !tbaa !27
  br label %.preheader.i510

parse_string.exit512:                             ; preds = %.preheader.i510, %.preheader.i510, %.preheader.i510, %.preheader.i510
  store i8 0, ptr %i.fz, align 1, !tbaa !27
  %i.gb = ptrtoint ptr %i.ga to i64
  %i.gc = sub i64 %i.gb, %i.r
  %.not446 = icmp slt i64 %i.gc, %i.aw
  br i1 %.not446, label %.preheader698, label %.thread651

.preheader698:                                    ; preds = %parse_string.exit512, %.critedge.i515
  %.promoted18.i514 = phi ptr [ %i.ge, %.critedge.i515 ], [ %i.ga, %parse_string.exit512 ] ; 5 uses
  %i.gd = load i8, ptr %.promoted18.i514, align 1, !tbaa !27 ; 2 uses
  switch i8 %i.gd, label %.preheader.i516 [
    i8 32, label %.critedge.i515
    i8 9, label %.critedge.i515
  ]

.critedge.i515:                                   ; preds = %.preheader698, %.preheader698
  %i.ge = getelementptr inbounds nuw i8, ptr %.promoted18.i514, i64 1 ; 2 uses
  store ptr %i.ge, ptr %i.c, align 8, !tbaa !29
  br label %.preheader698

.preheader.i516:                                  ; preds = %.preheader698, %bb.q
  %i.gf = phi i8 [ %.pre.i517, %bb.q ], [ %i.gd, %.preheader698 ]
  %i.gg = phi ptr [ %i.gh, %bb.q ], [ %.promoted18.i514, %.preheader698 ] ; 2 uses
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gg, i64 1 ; 5 uses
  switch i8 %i.gf, label %bb.q [
    i8 32, label %parse_string.exit518
    i8 9, label %parse_string.exit518
    i8 0, label %parse_string.exit518
    i8 10, label %parse_string.exit518
  ]

bb.q:                                             ; preds = %.preheader.i516
  store ptr %i.gh, ptr %i.c, align 8, !tbaa !29
  %.pre.i517 = load i8, ptr %i.gh, align 1, !tbaa !27
  br label %.preheader.i516

parse_string.exit518:                             ; preds = %.preheader.i516, %.preheader.i516, %.preheader.i516, %.preheader.i516
  store i8 0, ptr %i.gg, align 1, !tbaa !27
  %i.gi = ptrtoint ptr %i.gh to i64
  %i.gj = sub i64 %i.gi, %i.r
  %.not447 = icmp slt i64 %i.gj, %i.aw
  br i1 %.not447, label %.preheader697, label %.thread651

.preheader697:                                    ; preds = %parse_string.exit518, %.critedge.i521
  %.promoted18.i520 = phi ptr [ %i.gl, %.critedge.i521 ], [ %i.gh, %parse_string.exit518 ] ; 5 uses
  %i.gk = load i8, ptr %.promoted18.i520, align 1, !tbaa !27 ; 2 uses
  switch i8 %i.gk, label %.preheader.i522 [
    i8 32, label %.critedge.i521
    i8 9, label %.critedge.i521
  ]

.critedge.i521:                                   ; preds = %.preheader697, %.preheader697
  %i.gl = getelementptr inbounds nuw i8, ptr %.promoted18.i520, i64 1 ; 2 uses
  store ptr %i.gl, ptr %i.c, align 8, !tbaa !29
  br label %.preheader697

.preheader.i522:                                  ; preds = %.preheader697, %bb.r
  %i.gm = phi i8 [ %.pre.i523, %bb.r ], [ %i.gk, %.preheader697 ]
  %i.gn = phi ptr [ %i.go, %bb.r ], [ %.promoted18.i520, %.preheader697 ] ; 2 uses
  %i.go = getelementptr inbounds nuw i8, ptr %i.gn, i64 1 ; 5 uses
  switch i8 %i.gm, label %bb.r [
    i8 32, label %parse_string.exit524
    i8 9, label %parse_string.exit524
    i8 0, label %parse_string.exit524
    i8 10, label %parse_string.exit524
  ]

bb.r:                                             ; preds = %.preheader.i522
  store ptr %i.go, ptr %i.c, align 8, !tbaa !29
  %.pre.i523 = load i8, ptr %i.go, align 1, !tbaa !27
  br label %.preheader.i522

parse_string.exit524:                             ; preds = %.preheader.i522, %.preheader.i522, %.preheader.i522, %.preheader.i522
  store i8 0, ptr %i.gn, align 1, !tbaa !27
  %i.gp = ptrtoint ptr %i.go to i64
  %i.gq = sub i64 %i.gp, %i.r
  %.not448 = icmp slt i64 %i.gq, %i.aw
  br i1 %.not448, label %.preheader696, label %.thread651

.preheader696:                                    ; preds = %parse_string.exit524, %.critedge.i527
  %.promoted18.i526 = phi ptr [ %i.gs, %.critedge.i527 ], [ %i.go, %parse_string.exit524 ] ; 5 uses
  %i.gr = load i8, ptr %.promoted18.i526, align 1, !tbaa !27 ; 2 uses
  switch i8 %i.gr, label %.preheader.i528 [
    i8 32, label %.critedge.i527
    i8 9, label %.critedge.i527
  ]

.critedge.i527:                                   ; preds = %.preheader696, %.preheader696
  %i.gs = getelementptr inbounds nuw i8, ptr %.promoted18.i526, i64 1 ; 2 uses
  store ptr %i.gs, ptr %i.c, align 8, !tbaa !29
  br label %.preheader696

.preheader.i528:                                  ; preds = %.preheader696, %bb.s
  %i.gt = phi i8 [ %.pre.i529, %bb.s ], [ %i.gr, %.preheader696 ]
  %i.gu = phi ptr [ %i.gv, %bb.s ], [ %.promoted18.i526, %.preheader696 ] ; 2 uses
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gu, i64 1 ; 5 uses
  switch i8 %i.gt, label %bb.s [
    i8 32, label %parse_string.exit530
    i8 9, label %parse_string.exit530
    i8 0, label %parse_string.exit530
    i8 10, label %parse_string.exit530
  ]

bb.s:                                             ; preds = %.preheader.i528
  %.pre.i529 = load i8, ptr %i.gv, align 1, !tbaa !27
  br label %.preheader.i528

parse_string.exit530:                             ; preds = %.preheader.i528, %.preheader.i528, %.preheader.i528, %.preheader.i528
  store ptr %i.gv, ptr %i.c, align 8, !tbaa !29
  store i8 0, ptr %i.gu, align 1, !tbaa !27
  %i.gw = ptrtoint ptr %i.gv to i64
  %i.gx = sub i64 %i.gw, %i.r
  %.not449 = icmp slt i64 %i.gx, %i.aw
  br i1 %.not449, label %.preheader695, label %.thread651

.preheader695:                                    ; preds = %parse_string.exit530, %.critedge.i532
  %i.gy = phi ptr [ %i.ha, %.critedge.i532 ], [ %i.gv, %parse_string.exit530 ] ; 3 uses
  %i.gz = load i8, ptr %i.gy, align 1, !tbaa !27
  switch i8 %i.gz, label %parse_double.exit533 [
    i8 32, label %.critedge.i532
    i8 9, label %.critedge.i532
  ]

.critedge.i532:                                   ; preds = %.preheader695, %.preheader695
end_hunk_1
