inline.NumInlined: 48
inline.NumDeleted: 10
loop-unroll.NumCompletelyUnrolled: 21
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 24
begin_hunk_0
@.str.21 = private unnamed_addr constant [97 x i8] c"tiling failed for module '%s%s'. the output most likely will be OK, but you might want to check.\00", align 1
@.str.22 = private unnamed_addr constant [85 x i8] c"[default_process_tiling_roi] [%s] fall back to standard processing for module '%s%s'\00", align 1
@.str.23 = private unnamed_addr constant [45 x i8] c"     {%5d %5d ->%5d %5d (%5dx%5d)  %.6f } %s\00", align 1
@.str.24 = private unnamed_addr constant [16 x i8] c"tile iroi_probe\00", align 1
@.str.25 = private unnamed_addr constant [14 x i8] c"tile oroi old\00", align 1
@.str.26 = private unnamed_addr constant [14 x i8] c"tile oroi new\00", align 1
@.str.27 = private unnamed_addr constant [67 x i8] c"[_nm_fit_output_to_input_roi] _simplex: %d, delta: %d, epsilon: %f\00", align 1
@.str.28 = private unnamed_addr constant [115 x i8] c"[default_process_tiling_ptp] [%s]  no need to use tiling for module '%s%s' as no real memory saving to be expected\00", align 1
@.str.29 = private unnamed_addr constant [77 x i8] c"[default_process_tiling_ptp] buffer exceeds singlebuffer, corrected to %dx%d\00", align 1
@.str.30 = private unnamed_addr constant [80 x i8] c"[default_process_tiling_roi] use squares because of overlap, corrected to %dx%d\00", align 1
@.str.31 = private unnamed_addr constant [92 x i8] c"[default_process_tiling_ptp] [%s] gave up tiling for module '%s%s'. too many tiles: %d x %d\00", align 1
@.str.32 = private unnamed_addr constant [81 x i8] c"[default_process_tiling_ptp] [%s] could not alloc input buffer for module '%s%s'\00", align 1
@.str.33 = private unnamed_addr constant [83 x i8] c"[default_process_tiling_ptp] [%s]  could not alloc output buffer for module '%s%s'\00", align 1
@.str.34 = private unnamed_addr constant [20 x i8] c"default *tiled* ptp\00", align 1
@.str.35 = private unnamed_addr constant [37 x i8] c" %dx%d tiles, size=%dx%d, overlap=%d\00", align 1
@.str.36 = private unnamed_addr constant [19 x i8] c"  tile ptp skipped\00", align 1
@.str.37 = private unnamed_addr constant [11 x i8] c"  tile ptp\00", align 1
@.str.38 = private unnamed_addr constant [95 x i8] c"[default_process_tiling_ptp] [%s] processed_maximum[%d] differs between tiles in module '%s%s'\00", align 1
@.str.39 = private unnamed_addr constant [85 x i8] c"[default_process_tiling_ptp] [%s] fall back to standard processing for module '%s%s'\00", align 1

; Function Attrs: nounwind uwtable
define void @default_process_tiling(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, i32 noundef %6) local_unnamed_addr #0 {
bb.a:
  %7 = alloca %struct.dt_iop_buffer_dsc_t, align 16 ; 4 uses
  %8 = alloca %struct.dt_develop_tiling_t, align 4 ; 15 uses
  %i.a = alloca [4 x float], align 16             ; 4 uses
  %9 = alloca %struct.dt_iop_roi_t, align 8       ; 9 uses
  %10 = alloca %struct.dt_iop_roi_t, align 8      ; 8 uses
  %11 = alloca %struct.dt_iop_roi_t, align 16     ; 5 uses
  %12 = alloca %struct.dt_iop_roi_t, align 8      ; 6 uses
  %13 = alloca %struct.dt_iop_roi_t, align 16     ; 5 uses
  %14 = alloca %struct.dt_iop_roi_t, align 8      ; 6 uses
  %15 = alloca %struct.dt_iop_roi_t, align 16     ; 5 uses
  %16 = alloca %struct.dt_iop_roi_t, align 16     ; 5 uses
  %17 = alloca %struct.dt_iop_roi_t, align 16     ; 5 uses
  %18 = alloca %struct.dt_iop_roi_t, align 16     ; 5 uses
  %19 = alloca %struct.dt_iop_roi_t, align 16     ; 5 uses
  %20 = alloca %struct.dt_iop_roi_t, align 16     ; 5 uses
  %21 = alloca %struct.dt_iop_roi_t, align 16     ; 5 uses
  %22 = alloca %struct.dt_iop_roi_t, align 16     ; 5 uses
  %23 = alloca %struct.dt_iop_roi_t, align 16     ; 25 uses
  %24 = alloca %struct.dt_iop_roi_t, align 16     ; 25 uses
  %25 = alloca %struct.dt_iop_roi_t, align 16     ; 12 uses
  %26 = alloca %struct.dt_iop_roi_t, align 4      ; 5 uses
  %27 = alloca %struct.dt_iop_buffer_dsc_t, align 16 ; 4 uses
  %28 = alloca %struct.dt_develop_tiling_t, align 4 ; 15 uses
  %i.b = alloca [4 x float], align 16             ; 4 uses
  %29 = alloca %struct.dt_iop_roi_t, align 8      ; 12 uses
  %30 = alloca %struct.dt_iop_roi_t, align 8      ; 14 uses
  %31 = alloca %struct.dt_iop_roi_t, align 16     ; 41 uses
  %32 = alloca %struct.dt_iop_roi_t, align 16     ; 37 uses
  %i.c = load i128, ptr %4, align 1
  %i.d = load i128, ptr %5, align 1
  %i.e = xor i128 %i.c, %i.d
  %i.f = getelementptr i8, ptr %4, i64 16
  %i.g = getelementptr i8, ptr %5, i64 16
  %i.h = load i32, ptr %i.f, align 1
  %i.i = load i32, ptr %i.g, align 1
  %i.j = zext i32 %i.h to i128
  %i.k = zext i32 %i.i to i128
  %i.l = xor i128 %i.j, %i.k
  %i.m = or i128 %i.e, %i.l
  %i.n = icmp ne i128 %i.m, 0
  %i.o = zext i1 %i.n to i32
  %.not = icmp eq i32 %i.o, 0
  br i1 %.not, label %bb.b, label %.critedge

bb.b:                                             ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.q = load ptr, ptr %i.p, align 16, !tbaa !11
  %i.r = tail call i32 %i.q() #11
  %i.s = and i32 %i.r, 64
  %.not29 = icmp eq i32 %i.s, 0
  br i1 %.not29, label %bb.ef, label %.critedge

.critedge:                                        ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #11
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.u = load ptr, ptr %i.t, align 16, !tbaa !29
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 19 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !30
  call void %i.u(ptr noundef %0, ptr noundef %i.w, ptr noundef %1, ptr noundef nonnull %27) #11, !inline_history !43
  %i.x = call i64 @dt_iop_buffer_dsc_to_bpp(ptr noundef nonnull %27) #11 ; 2 uses
  %i.y = trunc i64 %i.x to i32                    ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 8 uses
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !44  ; 2 uses
  %i.ab = mul nsw i32 %i.aa, %6
  %i.ac = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 6 uses
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !44 ; 2 uses
  %i.ae = mul nsw i32 %i.ad, %i.y
  %i.af = call i32 @llvm.smax.i32(i32 %6, i32 %i.y) ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.ah = load float, ptr %i.ag, align 4, !tbaa !45
  %i.ai = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.aj = load float, ptr %i.ai, align 4, !tbaa !45
  %i.ak = fdiv reassoc nsz arcp contract afn float %i.ah, %i.aj
  %i.al = sitofp reassoc nsz arcp contract afn i32 %i.aa to float
  %i.am = getelementptr inbounds nuw i8, ptr %4, i64 12 ; 5 uses
  %i.an = load i32, ptr %i.am, align 4, !tbaa !46
  %i.ao = sitofp reassoc nsz arcp contract afn i32 %i.an to float
  %i.ap = fmul reassoc nnan nsz arcp contract afn float %i.ao, %i.al
  %i.aq = sitofp reassoc nsz arcp contract afn i32 %i.ad to float
  %i.ar = getelementptr inbounds nuw i8, ptr %5, i64 12 ; 5 uses
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !46
  %i.at = sitofp reassoc nsz arcp contract afn i32 %i.as to float
  %i.au = fmul reassoc nnan nsz arcp contract afn float %i.at, %i.aq
  %i.av = fdiv reassoc nsz arcp contract afn float %i.ap, %i.au
  %i.aw = call reassoc nsz arcp contract afn float @llvm.sqrt.f32(float %i.av)
  %i.ax = call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.ak, float %i.aw) ; 2 uses
  %i.ay = call reassoc nsz arcp contract afn float @llvm.ceil.f32(float %i.ax)
  %i.az = fptosi float %i.ay to i32               ; 8 uses
  %.neg548.i = mul i32 %i.az, -5                  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #11
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %28, i8 0, i64 28, i1 false)
  %i.ba = getelementptr inbounds nuw i8, ptr %28, i64 12 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %28, i64 4 ; 3 uses
  call void @llvm.masked.store.v3f32.p0(<3 x float> <float -1.000000e+00, float poison, float -1.000000e+00>, ptr align 4 %i.bb, <3 x i1> <i1 true, i1 false, i1 true>), !tbaa !47
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !48
  call void %i.bd(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %4, ptr noundef nonnull %5, ptr noundef nonnull %28) #11, !inline_history !43
  %i.be = load float, ptr %i.bb, align 4, !tbaa !49
  %i.bf = fcmp reassoc nsz arcp contract afn olt float %i.be, 0.000000e+00
  br i1 %i.bf, label %bb.c, label %bb.d

bb.c:                                             ; preds = %.critedge
  %i.bg = load float, ptr %28, align 4, !tbaa !51
  store float %i.bg, ptr %i.bb, align 4, !tbaa !49
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %.critedge
  %i.bh = load float, ptr %i.ba, align 4, !tbaa !52
  %i.bi = fcmp reassoc nsz arcp contract afn olt float %i.bh, 0.000000e+00
  br i1 %i.bi, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.bj = getelementptr inbounds nuw i8, ptr %28, i64 8
  %i.bk = load float, ptr %i.bj, align 4, !tbaa !53
  store float %i.bk, ptr %i.ba, align 4, !tbaa !52
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.bl = load float, ptr %28, align 4, !tbaa !51
  %i.bm = fcmp reassoc nsz arcp contract afn olt float %i.bl, 2.200000e+00
  br i1 %i.bm, label %bb.g, label %._crit_edge619.i

._crit_edge619.i:                                 ; preds = %bb.f
  %.pre620.i = sitofp reassoc nsz arcp contract afn i32 %i.af to float
  br label %bb.j

bb.g:                                             ; preds = %bb.f
  %i.bn = getelementptr inbounds nuw i8, ptr %28, i64 16
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !54
  %i.bp = uitofp reassoc nsz arcp contract afn i32 %i.bo to float
  %i.bq = load <2 x i32>, ptr %i.z, align 4, !tbaa !55
  %i.br = sitofp <2 x i32> %i.bq to <2 x float>   ; 2 uses
  %i.bs = sitofp reassoc nsz arcp contract afn i32 %i.af to float ; 2 uses
  %i.bt = fmul reassoc nnan nsz arcp contract afn float %i.bs, 2.000000e-01
  %i.bu = extractelement <2 x float> %i.br, i64 0
  %i.bv = fmul reassoc nsz arcp contract afn float %i.bt, %i.bu
  %i.bw = extractelement <2 x float> %i.br, i64 1
  %i.bx = fmul reassoc nsz arcp contract afn float %i.bv, %i.bw
  %i.by = fcmp reassoc nsz arcp contract afn ogt float %i.bx, %i.bp
  br i1 %i.by, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  %i.bz = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 8), align 8, !tbaa !56
  %i.ca = and i32 %i.bz, 8388608
  %.not503.i = icmp eq i32 %i.ca, 0
  br i1 %.not503.i, label %bb.ec, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.cb = load ptr, ptr %i.v, align 8, !tbaa !30
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 644
  %i.cd = load i32, ptr %i.cc, align 4, !tbaa !97
  %i.ce = call ptr @dt_dev_pixelpipe_type_to_str(i32 noundef %i.cd) #11
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 456
  %i.cg = call ptr @dt_iop_get_instance_id(ptr noundef nonnull %0) #11
  call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.1, ptr noundef %i.ce, ptr noundef nonnull %i.cf, ptr noundef %i.cg) #11
  br label %bb.ec

bb.j:                                             ; preds = %bb.g, %._crit_edge619.i
  %.pre-phi.i = phi float [ %.pre620.i, %._crit_edge619.i ], [ %i.bs, %bb.g ]
  %i.ch = load ptr, ptr %i.v, align 8, !tbaa !30
  %i.ci = call i64 @dt_get_available_pipe_mem(ptr noundef %i.ch) #11
  %i.cj = uitofp reassoc nsz arcp contract afn i64 %i.ci to float
  %i.ck = load i32, ptr %i.ac, align 4, !tbaa !44
  %i.cl = sitofp reassoc nsz arcp contract afn i32 %i.ck to float
  %i.cm = load i32, ptr %i.ar, align 4, !tbaa !46
  %i.cn = sitofp reassoc nsz arcp contract afn i32 %i.cm to float
  %i.co = sitofp reassoc nsz arcp contract afn i32 %i.y to float
  %i.cp = load i32, ptr %i.z, align 4, !tbaa !44
  %i.cq = sitofp reassoc nsz arcp contract afn i32 %i.cp to float
  %i.cr = load i32, ptr %i.am, align 4, !tbaa !46
  %i.cs = sitofp reassoc nsz arcp contract afn i32 %i.cr to float
  %i.ct = sitofp reassoc nsz arcp contract afn i32 %6 to float
  %i.cu = getelementptr inbounds nuw i8, ptr %28, i64 16
  %i.cv = load i32, ptr %i.cu, align 4, !tbaa !54
  %i.cw = uitofp reassoc nsz arcp contract afn i32 %i.cv to float
  %.neg543.i = fmul reassoc nnan nsz arcp contract afn float %i.cl, %i.co
  %.neg543.i.neg = fmul reassoc nnan nsz arcp contract afn float %i.cq, %i.ct
  %.neg544.i = fmul reassoc nsz arcp contract afn float %.neg543.i, %i.cn
  %.neg544.i.neg = fmul reassoc nsz arcp contract afn float %.neg543.i.neg, %i.cs
  %reass.add = fadd reassoc nsz arcp contract afn float %.neg544.i, %.neg544.i.neg
  %i.cx = fadd reassoc nsz arcp contract afn float %reass.add, %i.cw
  %i.cy = fsub reassoc nsz arcp contract afn float %i.cj, %i.cx
  %i.cz = call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.cy, float 0.000000e+00)
  %i.da = call i64 (...) @dt_get_singlebuffer_mem() #11
  %i.db = uitofp reassoc nsz arcp contract afn i64 %i.da to float
  %i.dc = load float, ptr %28, align 4, !tbaa !51
  %i.dd = call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.dc, float 1.000000e+00)
  %i.de = getelementptr inbounds nuw i8, ptr %28, i64 8
  %i.df = load float, ptr %i.de, align 4, !tbaa !53
  %i.dg = call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.df, float 1.000000e+00)
  %i.dh = fdiv reassoc nsz arcp contract afn float %i.cz, %i.dd
  %i.di = call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.dh, float %i.db) ; 2 uses
  %i.dj = load i32, ptr %i.z, align 4, !tbaa !44
  %i.dk = load i32, ptr %i.ac, align 4, !tbaa !44
  %..i = call i32 @llvm.smax.i32(i32 %i.dj, i32 %i.dk) ; 5 uses
  %i.dl = load i32, ptr %i.am, align 4, !tbaa !46
  %i.dm = load i32, ptr %i.ar, align 4, !tbaa !46
  %i.dn = call i32 @llvm.smax.i32(i32 %i.dl, i32 %i.dm) ; 5 uses
  %i.do = getelementptr inbounds nuw i8, ptr %28, i64 24
  %i.dp = load i32, ptr %i.do, align 4, !tbaa !110 ; 20 uses
  %i.dq = sitofp reassoc nsz arcp contract afn i32 %..i to float ; 3 uses
  %i.dr = sitofp reassoc nsz arcp contract afn i32 %i.dn to float ; 3 uses
  %i.ds = fmul reassoc nsz arcp contract afn float %i.dg, %.pre-phi.i
  %i.dt = fmul reassoc nsz arcp contract afn float %i.ds, %i.dq
  %i.du = fmul reassoc nsz arcp contract afn float %i.dt, %i.dr ; 2 uses
  %i.dv = fcmp reassoc nsz arcp contract afn ogt float %i.du, %i.di
  br i1 %i.dv, label %bb.k, label %bb.r

bb.k:                                             ; preds = %bb.j
  %i.dw = fdiv reassoc nsz arcp contract afn float %i.di, %i.du ; 4 uses
  %i.dx = icmp slt i32 %..i, %i.dn
  %i.dy = fcmp reassoc nsz arcp contract afn oge float %i.dw, 3.330000e-01 ; 2 uses
  %or.cond.i = and i1 %i.dx, %i.dy
  br i1 %or.cond.i, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.dz = fmul reassoc nsz arcp contract afn float %i.dw, %i.dr
  %i.ea = call reassoc nsz arcp contract afn float @llvm.floor.f32(float %i.dz)
  %i.eb = fptosi float %i.ea to i32               ; 2 uses
  %i.ec = srem i32 %i.eb, %i.dp
  %i.ed = sub nsw i32 %i.eb, %i.ec
  br label %bb.p

bb.m:                                             ; preds = %bb.k
  %i.ee = icmp sle i32 %i.dn, %..i
  %or.cond4.i = and i1 %i.ee, %i.dy
  br i1 %or.cond4.i, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.ef = fmul reassoc nsz arcp contract afn float %i.dw, %i.dq
  %i.eg = call reassoc nsz arcp contract afn float @llvm.floor.f32(float %i.ef)
  %i.eh = fptosi float %i.eg to i32               ; 2 uses
  %i.ei = srem i32 %i.eh, %i.dp
  %i.ej = sub nsw i32 %i.eh, %i.ei
  br label %bb.p

bb.o:                                             ; preds = %bb.m
  %i.ek = call reassoc nsz arcp contract afn float @llvm.sqrt.f32(float %i.dw) ; 2 uses
  %i.el = fmul reassoc nsz arcp contract afn float %i.ek, %i.dq
  %i.em = call reassoc nsz arcp contract afn float @llvm.floor.f32(float %i.el)
  %i.en = fptosi float %i.em to i32               ; 2 uses
  %i.eo = srem i32 %i.en, %i.dp
  %i.ep = sub nsw i32 %i.en, %i.eo
  %i.eq = fmul reassoc nsz arcp contract afn float %i.ek, %i.dr
  %i.er = call reassoc nsz arcp contract afn float @llvm.floor.f32(float %i.eq)
  %i.es = fptosi float %i.er to i32               ; 2 uses
  %i.et = srem i32 %i.es, %i.dp
  %i.eu = sub nsw i32 %i.es, %i.et
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n, %bb.l
  %.0424.i = phi i32 [ %i.ed, %bb.l ], [ %i.dn, %bb.n ], [ %i.eu, %bb.o ] ; 3 uses
  %.0421.i = phi i32 [ %..i, %bb.l ], [ %i.ej, %bb.n ], [ %i.ep, %bb.o ] ; 3 uses
  %i.ev = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 8), align 8, !tbaa !56
  %i.ew = and i32 %i.ev, 25165824
  %or.cond505.not.i = icmp eq i32 %i.ew, 25165824
  br i1 %or.cond505.not.i, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.ex = load ptr, ptr %i.v, align 8, !tbaa !30
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ex, i64 644
  %i.ez = load i32, ptr %i.ey, align 4, !tbaa !97
  %i.fa = call ptr @dt_dev_pixelpipe_type_to_str(i32 noundef %i.ez) #11
  call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.2, ptr noundef %i.fa, i32 noundef %.0421.i, i32 noundef %.0424.i) #11
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p, %bb.j
  %.1425.i = phi i32 [ %i.dn, %bb.j ], [ %.0424.i, %bb.q ], [ %.0424.i, %bb.p ] ; 3 uses
  %.1422.i = phi i32 [ %..i, %bb.j ], [ %.0421.i, %bb.q ], [ %.0421.i, %bb.p ] ; 3 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %28, i64 20 ; 2 uses
  %i.fc = load i32, ptr %i.fb, align 4, !tbaa !111 ; 3 uses
  %i.fd = mul i32 %i.fc, 3                        ; 2 uses
  %i.fe = icmp ugt i32 %i.fd, %.1422.i
  %i.ff = icmp ugt i32 %i.fd, %.1425.i
  %or.cond506.i = select i1 %i.fe, i1 true, i1 %i.ff
  br i1 %or.cond506.i, label %bb.s, label %bb.u

bb.s:                                             ; preds = %bb.r
  %i.fg = sitofp reassoc nsz arcp contract afn i32 %.1422.i to float
  %i.fh = sitofp reassoc nsz arcp contract afn i32 %.1425.i to float
  %i.fi = fmul reassoc nnan nsz arcp contract afn float %i.fg, %i.fh
  %i.fj = call reassoc nsz arcp contract afn float @llvm.sqrt.f32(float %i.fi)
  %i.fk = call reassoc nsz arcp contract afn float @llvm.floor.f32(float %i.fj)
  %i.fl = fptosi float %i.fk to i32               ; 2 uses
  %i.fm = srem i32 %i.fl, %i.dp
  %i.fn = sub nsw i32 %i.fl, %i.fm                ; 6 uses
  %i.fo = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 8), align 8, !tbaa !56
  %i.fp = and i32 %i.fo, 25165824
  %or.cond507.not.i = icmp eq i32 %i.fp, 25165824
  br i1 %or.cond507.not.i, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.fq = load ptr, ptr %i.v, align 8, !tbaa !30
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fq, i64 644
  %i.fs = load i32, ptr %i.fr, align 4, !tbaa !97
  %i.ft = call ptr @dt_dev_pixelpipe_type_to_str(i32 noundef %i.fs) #11
  call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.3, ptr noundef %i.ft, i32 noundef %i.fn, i32 noundef %i.fn) #11
  %.pre.i = load i32, ptr %i.fb, align 4, !tbaa !111
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s, %bb.r
  %i.fu = phi i32 [ %i.fc, %bb.r ], [ %.pre.i, %bb.t ], [ %i.fc, %bb.s ] ; 2 uses
  %.2426.i = phi i32 [ %.1425.i, %bb.r ], [ %i.fn, %bb.t ], [ %i.fn, %bb.s ] ; 4 uses
  %.2423.i = phi i32 [ %.1422.i, %bb.r ], [ %i.fn, %bb.t ], [ %i.fn, %bb.s ] ; 4 uses
  %i.fv = add nsw i32 %i.fu, %i.dp
  %i.fw = srem i32 %i.fu, %i.dp
  %i.fx = sub i32 %i.fv, %i.fw                    ; 4 uses
  %i.fy = sitofp reassoc nsz arcp contract afn i32 %i.fx to float
  %i.fz = fdiv reassoc nsz arcp contract afn float %i.fy, %i.ax
  %i.ga = call reassoc nsz arcp contract afn float @llvm.ceil.f32(float %i.fz)
  %i.gb = fptosi float %i.ga to i32               ; 2 uses
  %i.gc = load i32, ptr %i.z, align 4, !tbaa !44  ; 3 uses
  %i.gd = load i32, ptr %i.ac, align 4, !tbaa !44 ; 5 uses
  %i.ge = icmp sgt i32 %i.gc, %i.gd
  br i1 %i.ge, label %bb.v, label %bb.x

bb.v:                                             ; preds = %bb.u
  %i.gf = icmp slt i32 %.2423.i, %i.gc
  br i1 %i.gf, label %bb.w, label %bb.z

bb.w:                                             ; preds = %bb.v
  %i.gg = sitofp reassoc nsz arcp contract afn i32 %i.gc to float
  %.neg550.i = add i32 %.2423.i, %.neg548.i
  %i.gh = shl i32 %i.fx, 1
  %i.gi = sub i32 %.neg550.i, %i.gh
  %spec.select541.i = call i32 @llvm.smax.i32(i32 %i.gi, i32 1)
  %spec.select.i = uitofp nneg i32 %spec.select541.i to float
  %i.gj = fdiv reassoc nsz arcp contract afn float %i.gg, %spec.select.i
  %i.gk = call reassoc nsz arcp contract afn float @llvm.ceil.f32(float %i.gj)
  %i.gl = fptosi float %i.gk to i32
  br label %bb.z

bb.x:                                             ; preds = %bb.u
  %i.gm = icmp slt i32 %.2423.i, %i.gd
  br i1 %i.gm, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.gn = sitofp reassoc nsz arcp contract afn i32 %i.gd to float
  %i.go = shl nsw i32 %i.gb, 1
  %i.gp = sub nsw i32 %.2423.i, %i.go
  %i.gq = call i32 @llvm.smax.i32(i32 %i.gp, i32 1)
  %i.gr = uitofp nneg i32 %i.gq to float
  %i.gs = fdiv reassoc nsz arcp contract afn float %i.gn, %i.gr
  %i.gt = call reassoc nsz arcp contract afn float @llvm.ceil.f32(float %i.gs)
  %i.gu = fptosi float %i.gt to i32
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x, %bb.w, %bb.v
  %.0427.i = phi i32 [ 1, %bb.v ], [ %i.gl, %bb.w ], [ %i.gu, %bb.y ], [ 1, %bb.x ] ; 6 uses
  %i.gv = load i32, ptr %i.am, align 4, !tbaa !46 ; 3 uses
  %i.gw = load i32, ptr %i.ar, align 4, !tbaa !46 ; 5 uses
  %i.gx = icmp sgt i32 %i.gv, %i.gw
  br i1 %i.gx, label %bb.aa, label %bb.ac

bb.aa:                                            ; preds = %bb.z
  %i.gy = icmp slt i32 %.2426.i, %i.gv
  br i1 %i.gy, label %bb.ab, label %bb.ae

bb.ab:                                            ; preds = %bb.aa
  %i.gz = sitofp reassoc nsz arcp contract afn i32 %i.gv to float
  %.neg552.i = add i32 %.2426.i, %.neg548.i
  %i.ha = shl i32 %i.fx, 1
  %i.hb = sub i32 %.neg552.i, %i.ha
  %spec.select508542.i = call i32 @llvm.smax.i32(i32 %i.hb, i32 1)
  %spec.select508.i = uitofp nneg i32 %spec.select508542.i to float
  %i.hc = fdiv reassoc nsz arcp contract afn float %i.gz, %spec.select508.i
  %i.hd = call reassoc nsz arcp contract afn float @llvm.ceil.f32(float %i.hc)
  %i.he = fptosi float %i.hd to i32
  br label %bb.ae

bb.ac:                                            ; preds = %bb.z
  %i.hf = icmp slt i32 %.2426.i, %i.gw
  br i1 %i.hf, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.hg = sitofp reassoc nsz arcp contract afn i32 %i.gw to float
  %i.hh = shl nsw i32 %i.gb, 1
  %i.hi = sub nsw i32 %.2426.i, %i.hh
  %i.hj = call i32 @llvm.smax.i32(i32 %i.hi, i32 1)
  %i.hk = uitofp nneg i32 %i.hj to float
end_hunk_0
begin_hunk_1_@default_process_tiling:bb.a
  %i.afr = load double, ptr %i.afq, align 8, !tbaa !122 ; 2 uses
  %i.afs = getelementptr inbounds nuw i8, ptr %i.aew, i64 24 ; 2 uses
  %i.aft = load double, ptr %i.afs, align 8, !tbaa !122
  %i.afu = fsub reassoc nsz arcp contract afn double %i.aft, %i.afr
  %i.afv = fmul reassoc nsz arcp contract afn double %i.afu, 5.000000e-01
  %i.afw = fadd reassoc nsz arcp contract afn double %i.afv, %i.afr
  store double %i.afw, ptr %i.afs, align 8, !tbaa !122
  %.not.1.i.i.i.i = icmp eq i32 %.1331.4.i.i.i.i, 1
  br i1 %.not.1.i.i.i.i, label %.loopexit.2.i.i.i.i, label %.loopexit.1.i.i.i.i

.loopexit.1.i.i.i.i:                              ; preds = %.loopexit.i.i.i.i, %.preheader3.i.i.i.i
  %i.afx = load ptr, ptr %i.rx, align 8, !tbaa !120 ; 5 uses
  %i.afy = load double, ptr %.pre.i.i.i, align 8, !tbaa !122 ; 2 uses
  %i.afz = load double, ptr %i.afx, align 8, !tbaa !122
  %i.aga = fsub reassoc nsz arcp contract afn double %i.afz, %i.afy
  %i.agb = fmul reassoc nsz arcp contract afn double %i.aga, 5.000000e-01
  %i.agc = fadd reassoc nsz arcp contract afn double %i.agb, %i.afy
  store double %i.agc, ptr %i.afx, align 8, !tbaa !122
  %i.agd = getelementptr inbounds nuw i8, ptr %.pre.i.i.i, i64 8
  %i.age = load double, ptr %i.agd, align 8, !tbaa !122 ; 2 uses
  %i.agf = getelementptr inbounds nuw i8, ptr %i.afx, i64 8 ; 2 uses
  %i.agg = load double, ptr %i.agf, align 8, !tbaa !122
  %i.agh = fsub reassoc nsz arcp contract afn double %i.agg, %i.age
  %i.agi = fmul reassoc nsz arcp contract afn double %i.agh, 5.000000e-01
  %i.agj = fadd reassoc nsz arcp contract afn double %i.agi, %i.age
  store double %i.agj, ptr %i.agf, align 8, !tbaa !122
  %i.agk = getelementptr inbounds nuw i8, ptr %.pre.i.i.i, i64 16
  %i.agl = load double, ptr %i.agk, align 8, !tbaa !122 ; 2 uses
  %i.agm = getelementptr inbounds nuw i8, ptr %i.afx, i64 16 ; 2 uses
  %i.agn = load double, ptr %i.agm, align 8, !tbaa !122
  %i.ago = fsub reassoc nsz arcp contract afn double %i.agn, %i.agl
  %i.agp = fmul reassoc nsz arcp contract afn double %i.ago, 5.000000e-01
  %i.agq = fadd reassoc nsz arcp contract afn double %i.agp, %i.agl
  store double %i.agq, ptr %i.agm, align 8, !tbaa !122
  %i.agr = getelementptr inbounds nuw i8, ptr %.pre.i.i.i, i64 24
  %i.ags = load double, ptr %i.agr, align 8, !tbaa !122 ; 2 uses
  %i.agt = getelementptr inbounds nuw i8, ptr %i.afx, i64 24 ; 2 uses
  %i.agu = load double, ptr %i.agt, align 8, !tbaa !122
  %i.agv = fsub reassoc nsz arcp contract afn double %i.agu, %i.ags
  %i.agw = fmul reassoc nsz arcp contract afn double %i.agv, 5.000000e-01
  %i.agx = fadd reassoc nsz arcp contract afn double %i.agw, %i.ags
  store double %i.agx, ptr %i.agt, align 8, !tbaa !122
  %.not.2.i.i.i.i = icmp eq i32 %.1331.4.i.i.i.i, 2
  br i1 %.not.2.i.i.i.i, label %.preheader.3.i.i.i.i, label %.loopexit.2.i.i.i.i

.loopexit.2.i.i.i.i:                              ; preds = %.loopexit.1.i.i.i.i, %.loopexit.i.i.i.i
  %i.agy = load ptr, ptr %i.rz, align 8, !tbaa !120 ; 5 uses
  %i.agz = load double, ptr %.pre.i.i.i, align 8, !tbaa !122 ; 2 uses
  %i.aha = load double, ptr %i.agy, align 8, !tbaa !122
  %i.ahb = fsub reassoc nsz arcp contract afn double %i.aha, %i.agz
  %i.ahc = fmul reassoc nsz arcp contract afn double %i.ahb, 5.000000e-01
  %i.ahd = fadd reassoc nsz arcp contract afn double %i.ahc, %i.agz
  store double %i.ahd, ptr %i.agy, align 8, !tbaa !122
  %i.ahe = getelementptr inbounds nuw i8, ptr %.pre.i.i.i, i64 8
  %i.ahf = load double, ptr %i.ahe, align 8, !tbaa !122 ; 2 uses
  %i.ahg = getelementptr inbounds nuw i8, ptr %i.agy, i64 8 ; 2 uses
  %i.ahh = load double, ptr %i.ahg, align 8, !tbaa !122
  %i.ahi = fsub reassoc nsz arcp contract afn double %i.ahh, %i.ahf
  %i.ahj = fmul reassoc nsz arcp contract afn double %i.ahi, 5.000000e-01
  %i.ahk = fadd reassoc nsz arcp contract afn double %i.ahj, %i.ahf
  store double %i.ahk, ptr %i.ahg, align 8, !tbaa !122
  %i.ahl = getelementptr inbounds nuw i8, ptr %.pre.i.i.i, i64 16
  %i.ahm = load double, ptr %i.ahl, align 8, !tbaa !122 ; 2 uses
  %i.ahn = getelementptr inbounds nuw i8, ptr %i.agy, i64 16 ; 2 uses
  %i.aho = load double, ptr %i.ahn, align 8, !tbaa !122
  %i.ahp = fsub reassoc nsz arcp contract afn double %i.aho, %i.ahm
  %i.ahq = fmul reassoc nsz arcp contract afn double %i.ahp, 5.000000e-01
  %i.ahr = fadd reassoc nsz arcp contract afn double %i.ahq, %i.ahm
  store double %i.ahr, ptr %i.ahn, align 8, !tbaa !122
  %i.ahs = getelementptr inbounds nuw i8, ptr %.pre.i.i.i, i64 24
  %i.aht = load double, ptr %i.ahs, align 8, !tbaa !122 ; 2 uses
  %i.ahu = getelementptr inbounds nuw i8, ptr %i.agy, i64 24 ; 2 uses
  %i.ahv = load double, ptr %i.ahu, align 8, !tbaa !122
  %i.ahw = fsub reassoc nsz arcp contract afn double %i.ahv, %i.aht
  %i.ahx = fmul reassoc nsz arcp contract afn double %i.ahw, 5.000000e-01
  %i.ahy = fadd reassoc nsz arcp contract afn double %i.ahx, %i.aht
  store double %i.ahy, ptr %i.ahu, align 8, !tbaa !122
  %.not.3.i.i.i.i = and i1 %i.xe, %i.xi
  br i1 %.not.3.i.i.i.i, label %.loopexit.3.i.i.i.i, label %.preheader.3.i.i.i.i

.preheader.3.i.i.i.i:                             ; preds = %.loopexit.2.i.i.i.i, %.loopexit.1.i.i.i.i
  %i.ahz = load ptr, ptr %i.sb, align 8, !tbaa !120 ; 5 uses
  %i.aia = load double, ptr %.pre.i.i.i, align 8, !tbaa !122 ; 2 uses
  %i.aib = load double, ptr %i.ahz, align 8, !tbaa !122
  %i.aic = fsub reassoc nsz arcp contract afn double %i.aib, %i.aia
  %i.aid = fmul reassoc nsz arcp contract afn double %i.aic, 5.000000e-01
  %i.aie = fadd reassoc nsz arcp contract afn double %i.aid, %i.aia
  store double %i.aie, ptr %i.ahz, align 8, !tbaa !122
  %i.aif = getelementptr inbounds nuw i8, ptr %.pre.i.i.i, i64 8
  %i.aig = load double, ptr %i.aif, align 8, !tbaa !122 ; 2 uses
  %i.aih = getelementptr inbounds nuw i8, ptr %i.ahz, i64 8 ; 2 uses
  %i.aii = load double, ptr %i.aih, align 8, !tbaa !122
  %i.aij = fsub reassoc nsz arcp contract afn double %i.aii, %i.aig
  %i.aik = fmul reassoc nsz arcp contract afn double %i.aij, 5.000000e-01
  %i.ail = fadd reassoc nsz arcp contract afn double %i.aik, %i.aig
  store double %i.ail, ptr %i.aih, align 8, !tbaa !122
  %i.aim = getelementptr inbounds nuw i8, ptr %.pre.i.i.i, i64 16
  %i.ain = load double, ptr %i.aim, align 8, !tbaa !122 ; 2 uses
  %i.aio = getelementptr inbounds nuw i8, ptr %i.ahz, i64 16 ; 2 uses
  %i.aip = load double, ptr %i.aio, align 8, !tbaa !122
  %i.aiq = fsub reassoc nsz arcp contract afn double %i.aip, %i.ain
  %i.air = fmul reassoc nsz arcp contract afn double %i.aiq, 5.000000e-01
  %i.ais = fadd reassoc nsz arcp contract afn double %i.air, %i.ain
  store double %i.ais, ptr %i.aio, align 8, !tbaa !122
  %i.ait = getelementptr inbounds nuw i8, ptr %.pre.i.i.i, i64 24
  %i.aiu = load double, ptr %i.ait, align 8, !tbaa !122 ; 2 uses
  %i.aiv = getelementptr inbounds nuw i8, ptr %i.ahz, i64 24 ; 2 uses
  %i.aiw = load double, ptr %i.aiv, align 8, !tbaa !122
  %i.aix = fsub reassoc nsz arcp contract afn double %i.aiw, %i.aiu
  %i.aiy = fmul reassoc nsz arcp contract afn double %i.aix, 5.000000e-01
  %i.aiz = fadd reassoc nsz arcp contract afn double %i.aiy, %i.aiu
  store double %i.aiz, ptr %i.aiv, align 8, !tbaa !122
  br label %.loopexit.3.i.i.i.i

.loopexit.3.i.i.i.i:                              ; preds = %.preheader.3.i.i.i.i, %.loopexit.2.i.i.i.i
  br i1 %i.xi, label %.preheader.4.i.i.i.i, label %.loopexit.4.i.i.i.i

.preheader.4.i.i.i.i:                             ; preds = %.loopexit.3.i.i.i.i
  %i.aja = load ptr, ptr %i.sd, align 8, !tbaa !120 ; 5 uses
  %i.ajb = load double, ptr %.pre.i.i.i, align 8, !tbaa !122 ; 2 uses
  %i.ajc = load double, ptr %i.aja, align 8, !tbaa !122
  %i.ajd = fsub reassoc nsz arcp contract afn double %i.ajc, %i.ajb
  %i.aje = fmul reassoc nsz arcp contract afn double %i.ajd, 5.000000e-01
  %i.ajf = fadd reassoc nsz arcp contract afn double %i.aje, %i.ajb
  store double %i.ajf, ptr %i.aja, align 8, !tbaa !122
  %i.ajg = getelementptr inbounds nuw i8, ptr %.pre.i.i.i, i64 8
  %i.ajh = load double, ptr %i.ajg, align 8, !tbaa !122 ; 2 uses
  %i.aji = getelementptr inbounds nuw i8, ptr %i.aja, i64 8 ; 2 uses
  %i.ajj = load double, ptr %i.aji, align 8, !tbaa !122
  %i.ajk = fsub reassoc nsz arcp contract afn double %i.ajj, %i.ajh
  %i.ajl = fmul reassoc nsz arcp contract afn double %i.ajk, 5.000000e-01
  %i.ajm = fadd reassoc nsz arcp contract afn double %i.ajl, %i.ajh
  store double %i.ajm, ptr %i.aji, align 8, !tbaa !122
  %i.ajn = getelementptr inbounds nuw i8, ptr %.pre.i.i.i, i64 16
  %i.ajo = load double, ptr %i.ajn, align 8, !tbaa !122 ; 2 uses
  %i.ajp = getelementptr inbounds nuw i8, ptr %i.aja, i64 16 ; 2 uses
  %i.ajq = load double, ptr %i.ajp, align 8, !tbaa !122
  %i.ajr = fsub reassoc nsz arcp contract afn double %i.ajq, %i.ajo
  %i.ajs = fmul reassoc nsz arcp contract afn double %i.ajr, 5.000000e-01
  %i.ajt = fadd reassoc nsz arcp contract afn double %i.ajs, %i.ajo
  store double %i.ajt, ptr %i.ajp, align 8, !tbaa !122
  %i.aju = getelementptr inbounds nuw i8, ptr %.pre.i.i.i, i64 24
  %i.ajv = load double, ptr %i.aju, align 8, !tbaa !122 ; 2 uses
  %i.ajw = getelementptr inbounds nuw i8, ptr %i.aja, i64 24 ; 2 uses
  %i.ajx = load double, ptr %i.ajw, align 8, !tbaa !122
  %i.ajy = fsub reassoc nsz arcp contract afn double %i.ajx, %i.ajv
  %i.ajz = fmul reassoc nsz arcp contract afn double %i.ajy, 5.000000e-01
  %i.aka = fadd reassoc nsz arcp contract afn double %i.ajz, %i.ajv
  store double %i.aka, ptr %i.ajw, align 8, !tbaa !122
  br label %.loopexit.4.i.i.i.i

.loopexit.4.i.i.i.i:                              ; preds = %.preheader.4.i.i.i.i, %.loopexit.3.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #11
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(20) %13, ptr noundef nonnull align 16 dereferenceable(20) %32, i64 20, i1 false), !tbaa.struct !118
  %i.akb = load <2 x i32>, ptr %i.ka, align 4, !tbaa !55
  %i.akc = shufflevector <2 x i32> %i.akb, <2 x i32> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.akd = sitofp <4 x i32> %i.akc to <4 x double>
  %i.ake = load <4 x double>, ptr %i.abi, align 8, !tbaa !122
  %i.akf = fmul reassoc nsz arcp contract afn <4 x double> %i.ake, %i.akd
  %i.akg = fptosi <4 x double> %i.akf to <4 x i32>
  store <4 x i32> %i.akg, ptr %13, align 16, !tbaa !55
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #11
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %14, ptr noundef nonnull readonly align 16 dereferenceable(20) %31, i64 20, i1 false), !tbaa.struct !118
  %i.akh = load ptr, ptr %i.jl, align 8, !tbaa !115
  call void %i.akh(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef nonnull %13, ptr noundef nonnull %14) #11, !inline_history !123
  %i.aki = getelementptr inbounds nuw [8 x i8], ptr %i.rq, i64 %i.acc
  %i.akj = load <2 x i32>, ptr %14, align 8, !tbaa !55 ; 2 uses
  %i.akk = load <2 x i32>, ptr %31, align 16, !tbaa !55 ; 2 uses
  %i.akl = load <2 x i32>, ptr %i.kc, align 8, !tbaa !55 ; 2 uses
  %i.akm = load <2 x i32>, ptr %i.jp, align 8, !tbaa !55 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #11
  %i.akn = load ptr, ptr %i.aki, align 8, !tbaa !120
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #11
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(20) %11, ptr noundef nonnull align 16 dereferenceable(20) %32, i64 20, i1 false), !tbaa.struct !118
  %i.ako = load <2 x i32>, ptr %i.ka, align 4, !tbaa !55
  %i.akp = shufflevector <2 x i32> %i.ako, <2 x i32> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.akq = sitofp <4 x i32> %i.akp to <4 x double>
  %i.akr = load <4 x double>, ptr %i.akn, align 8, !tbaa !122
  %i.aks = fmul reassoc nsz arcp contract afn <4 x double> %i.akr, %i.akq
  %i.akt = fptosi <4 x double> %i.aks to <4 x i32>
  store <4 x i32> %i.akt, ptr %11, align 16, !tbaa !55
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #11
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %12, ptr noundef nonnull readonly align 16 dereferenceable(20) %31, i64 20, i1 false), !tbaa.struct !118
  %i.aku = load ptr, ptr %i.jl, align 8, !tbaa !115
  call void %i.aku(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef nonnull %11, ptr noundef nonnull %12) #11, !inline_history !123
  %i.akv = load i32, ptr %31, align 16, !tbaa !116
  %i.akw = load <2 x i32>, ptr %12, align 8, !tbaa !55 ; 2 uses
  %i.akx = shufflevector <2 x i32> %i.akj, <2 x i32> %i.akw, <2 x i32> <i32 0, i32 2>
  %i.aky = insertelement <2 x i32> %i.akk, i32 %i.akv, i64 1
  %i.akz = sub nsw <2 x i32> %i.akx, %i.aky
  %i.ala = sitofp <2 x i32> %i.akz to <2 x double> ; 2 uses
  %i.alb = fmul reassoc nnan nsz arcp contract afn <2 x double> %i.ala, %i.ala
  %i.alc = load i32, ptr %i.jo, align 4, !tbaa !117
  %i.ald = shufflevector <2 x i32> %i.akj, <2 x i32> %i.akw, <2 x i32> <i32 1, i32 3>
  %i.ale = shufflevector <2 x i32> %i.akk, <2 x i32> poison, <2 x i32> <i32 1, i32 poison>
  %i.alf = insertelement <2 x i32> %i.ale, i32 %i.alc, i64 1
  %i.alg = sub nsw <2 x i32> %i.ald, %i.alf
  %i.alh = sitofp <2 x i32> %i.alg to <2 x double> ; 2 uses
  %i.ali = fmul reassoc nnan nsz arcp contract afn <2 x double> %i.alh, %i.alh
  %i.alj = fadd reassoc nsz arcp contract afn <2 x double> %i.alb, %i.ali
  %i.alk = load i32, ptr %i.jp, align 8, !tbaa !44
  %i.all = load <2 x i32>, ptr %i.kd, align 8, !tbaa !55 ; 2 uses
  %i.alm = shufflevector <2 x i32> %i.akl, <2 x i32> %i.all, <2 x i32> <i32 0, i32 2>
  %i.aln = insertelement <2 x i32> %i.akm, i32 %i.alk, i64 1
  %i.alo = sub nsw <2 x i32> %i.alm, %i.aln
  %i.alp = sitofp <2 x i32> %i.alo to <2 x double> ; 2 uses
  %i.alq = fmul reassoc nnan nsz arcp contract afn <2 x double> %i.alp, %i.alp
  %i.alr = fadd reassoc nsz arcp contract afn <2 x double> %i.alj, %i.alq
  %i.als = load i32, ptr %i.jq, align 4, !tbaa !46
  %i.alt = shufflevector <2 x i32> %i.akl, <2 x i32> %i.all, <2 x i32> <i32 1, i32 3>
  %i.alu = shufflevector <2 x i32> %i.akm, <2 x i32> poison, <2 x i32> <i32 1, i32 poison>
  %i.alv = insertelement <2 x i32> %i.alu, i32 %i.als, i64 1
  %i.alw = sub nsw <2 x i32> %i.alt, %i.alv
  %i.alx = sitofp <2 x i32> %i.alw to <2 x double> ; 2 uses
  %i.aly = fmul reassoc nnan nsz arcp contract afn <2 x double> %i.alx, %i.alx
  %i.alz = fadd reassoc nsz arcp contract afn <2 x double> %i.aly, %i.alr ; 2 uses
  %i.ama = extractelement <2 x double> %i.alz, i64 0
  store double %i.ama, ptr %i.xl, align 8, !tbaa !122
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #11
  %i.amb = extractelement <2 x double> %i.alz, i64 1
  store double %i.amb, ptr %i.acd, align 8, !tbaa !122
  br label %bb.cv

bb.cv:                                            ; preds = %.loopexit.4.i.i.i.i, %.preheader2.i.i.i.i, %bb.cs
  %i.amc = load double, ptr %.phi.trans.insert141.i.i.i.i, align 8, !tbaa !122 ; 3 uses
  %i.amd = load <4 x double>, ptr %i.rr, align 8, !tbaa !122 ; 3 uses
  %op.rdx123 = call reassoc nsz arcp contract afn double @llvm.vector.reduce.fadd.v4f64(double %i.amc, <4 x double> %i.amd)
  %i.ame = fmul reassoc nsz arcp contract afn double %op.rdx123, 2.000000e-01 ; 2 uses
  %i.amf = insertelement <4 x double> poison, double %i.ame, i64 0
  %i.amg = shufflevector <4 x double> %i.amf, <4 x double> poison, <4 x i32> zeroinitializer
  %i.amh = fsub reassoc nsz arcp contract afn <4 x double> %i.amd, %i.amg ; 2 uses
  %i.ami = fmul reassoc nsz arcp contract afn <4 x double> %i.amh, %i.amh
  %i.amj = fsub reassoc nsz arcp contract afn double %i.amc, %i.ame ; 2 uses
  %i.amk = fmul reassoc nsz arcp contract afn double %i.amj, %i.amj
  %op.rdx = call reassoc nsz arcp contract afn double @llvm.vector.reduce.fadd.v4f64(double %i.amk, <4 x double> %i.ami)
  %i.aml = fmul reassoc nsz arcp contract afn double %op.rdx, 2.500000e-01
  %i.amm = call reassoc nsz arcp contract afn double @llvm.sqrt.f64(double %i.aml)
  %i.amn = fcmp reassoc nsz arcp contract afn olt double %i.amm, %i.wc
  br i1 %i.amn, label %_simplex.exit.i.i.i, label %bb.cw

bb.cw:                                            ; preds = %bb.cv
  %i.amo = add nuw nsw i32 %.034848.i.i.i.i, 1    ; 2 uses
  %exitcond128.not.i.i.i.i = icmp eq i32 %i.amo, 1001
  br i1 %exitcond128.not.i.i.i.i, label %_simplex.exit.i.i.i, label %.preheader14.i.i.i.i

_simplex.exit.i.i.i:                              ; preds = %bb.cw, %bb.cv
  %.0348.lcssa.i.i.i.i = phi i32 [ %.034848.i.i.i.i, %bb.cv ], [ 1001, %bb.cw ] ; 2 uses
  call void @free(ptr noundef nonnull %i.rr) #11
  call void @free(ptr noundef nonnull %i.rs) #11
  call void @free(ptr noundef %i.rt) #11
  call void @free(ptr noundef %i.ru) #11
  %i.amp = load ptr, ptr %i.rq, align 8, !tbaa !120
  call void @free(ptr noundef %i.amp) #11
  %i.amq = load ptr, ptr %i.rx, align 8, !tbaa !120
  call void @free(ptr noundef %i.amq) #11
  %i.amr = load ptr, ptr %i.rz, align 8, !tbaa !120
  call void @free(ptr noundef %i.amr) #11
  %i.ams = load ptr, ptr %i.sb, align 8, !tbaa !120
  call void @free(ptr noundef %i.ams) #11
  %i.amt = load ptr, ptr %i.sd, align 8, !tbaa !120
  call void @free(ptr noundef %i.amt) #11
  call void @free(ptr noundef nonnull %i.rq) #11
  %i.amu = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 8), align 8, !tbaa !56 ; 2 uses
  %i.amv = and i32 %i.amu, 25165824
  %or.cond.not.i53.i.i = icmp eq i32 %i.amv, 25165824
  br i1 %or.cond.not.i53.i.i, label %bb.cx, label %_fit_output_to_input_roi.exit.i

bb.cx:                                            ; preds = %_simplex.exit.i.i.i
  call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.27, i32 noundef %.0348.lcssa.i.i.i.i, i32 noundef %i.az, double noundef %i.wc) #11
  %.pre601.pre.i = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 8), align 8, !tbaa !56
  br label %_fit_output_to_input_roi.exit.i

_fit_output_to_input_roi.exit.i:                  ; preds = %bb.cx, %_simplex.exit.i.i.i
  %.pre601.i = phi i32 [ %i.amu, %_simplex.exit.i.i.i ], [ %.pre601.pre.i, %bb.cx ] ; 2 uses
  %i.amw = load <2 x i32>, ptr %i.ka, align 4, !tbaa !55
  %i.amx = shufflevector <2 x i32> %i.amw, <2 x i32> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.amy = sitofp <4 x i32> %i.amx to <4 x double>
  %i.amz = fmul reassoc nsz arcp contract afn <4 x double> %i.amy, %i.rp
  %i.ana = fptosi <4 x double> %i.amz to <4 x i32>
  store <4 x i32> %i.ana, ptr %32, align 16, !tbaa !55
  %i.anb = icmp samesign ugt i32 %.0348.lcssa.i.i.i.i, 1000
  call void @llvm.lifetime.end.p0(ptr nonnull %26)
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #11
  br i1 %i.anb, label %bb.cy, label %bb.cz

bb.cy:                                            ; preds = %_fit_output_to_input_roi.exit.i
  %i.anc = and i32 %.pre601.i, 8388608
  %.not496.i = icmp eq i32 %i.anc, 0
  br i1 %.not496.i, label %.thread537.i, label %.thread537.sink.split.i

bb.cz:                                            ; preds = %_fit_output_to_input_roi.exit.i, %_fit_output_to_input_roi.exit.thread.i
  %i.and = phi i32 [ %.pre600.i, %_fit_output_to_input_roi.exit.thread.i ], [ %.pre601.i, %_fit_output_to_input_roi.exit.i ] ; 2 uses
  %i.ane = and i32 %i.and, 25165824
  %or.cond.not.i519.i = icmp eq i32 %i.ane, 25165824
  br i1 %or.cond.not.i519.i, label %bb.da, label %_print_roi.exit520.i

bb.da:                                            ; preds = %bb.cz
  %i.anf = load i32, ptr %31, align 16, !tbaa !116 ; 2 uses
  %i.ang = load i32, ptr %i.jo, align 4, !tbaa !117 ; 2 uses
  %i.anh = load i32, ptr %i.jp, align 8, !tbaa !44 ; 2 uses
  %i.ani = add nsw i32 %i.anh, %i.anf
  %i.anj = load i32, ptr %i.jq, align 4, !tbaa !46 ; 2 uses
  %i.ank = add nsw i32 %i.anj, %i.ang
  %i.anl = load float, ptr %i.jr, align 16, !tbaa !45
  %i.anm = fpext reassoc nsz arcp contract afn float %i.anl to double
  call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.23, i32 noundef %i.anf, i32 noundef %i.ang, i32 noundef %i.ani, i32 noundef %i.ank, i32 noundef %i.anh, i32 noundef %i.anj, double noundef %i.anm, ptr noundef nonnull @.str.12) #11
  %.pre602.i = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 8), align 8, !tbaa !56
  br label %_print_roi.exit520.i

_print_roi.exit520.i:                             ; preds = %bb.da, %bb.cz
  %i.ann = phi i32 [ %i.and, %bb.cz ], [ %.pre602.i, %bb.da ]
  %i.ano = and i32 %i.ann, 25165824
  %or.cond.not.i521.i = icmp eq i32 %i.ano, 25165824
  %i.anp = load <2 x i32>, ptr %32, align 16, !tbaa !55 ; 3 uses
  %i.anq = load <2 x i32>, ptr %i.jt, align 8, !tbaa !55 ; 3 uses
  br i1 %or.cond.not.i521.i, label %bb.db, label %_print_roi.exit522.i

bb.db:                                            ; preds = %_print_roi.exit520.i
  %i.anr = extractelement <2 x i32> %i.anq, i64 0 ; 2 uses
  %i.ans = extractelement <2 x i32> %i.anp, i64 0 ; 2 uses
  %i.ant = add nsw i32 %i.anr, %i.ans
  %i.anu = extractelement <2 x i32> %i.anq, i64 1 ; 2 uses
  %i.anv = extractelement <2 x i32> %i.anp, i64 1 ; 2 uses
  %i.anw = add nsw i32 %i.anu, %i.anv
  %i.anx = load float, ptr %i.jv, align 16, !tbaa !45
  %i.any = fpext reassoc nsz arcp contract afn float %i.anx to double
  call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.23, i32 noundef %i.ans, i32 noundef %i.anv, i32 noundef %i.ant, i32 noundef %i.anw, i32 noundef %i.anr, i32 noundef %i.anu, double noundef %i.any, ptr noundef nonnull @.str.13) #11
  %i.anz = load <2 x i32>, ptr %32, align 16, !tbaa !55
  %i.aoa = load <2 x i32>, ptr %i.jt, align 8, !tbaa !55
  br label %_print_roi.exit522.i

_print_roi.exit522.i:                             ; preds = %bb.db, %_print_roi.exit520.i
  %i.aob = phi <2 x i32> [ %i.anq, %_print_roi.exit520.i ], [ %i.aoa, %bb.db ]
  %i.aoc = phi <2 x i32> [ %i.anp, %_print_roi.exit520.i ], [ %i.anz, %bb.db ]
  %i.aod = load <2 x i32>, ptr %30, align 8, !tbaa !55 ; 2 uses
  %i.aoe = call <2 x i32> @llvm.smin.v2i32(<2 x i32> %i.aoc, <2 x i32> %i.aod) ; 2 uses
  %i.aof = load <2 x i32>, ptr %i.ji, align 8, !tbaa !55
  %i.aog = sub <2 x i32> %i.aod, %i.aoe
  %i.aoh = add <2 x i32> %i.aog, %i.aof
  %i.aoi = call <2 x i32> @llvm.smax.v2i32(<2 x i32> %i.aob, <2 x i32> %i.aoh)
  %i.aoj = load <2 x i32>, ptr %5, align 4, !tbaa !55 ; 2 uses
  %i.aok = call <2 x i32> @llvm.smax.v2i32(<2 x i32> %i.aoe, <2 x i32> %i.aoj) ; 3 uses
  %i.aol = extractelement <2 x i32> %i.aok, i64 0
  store i32 %i.aol, ptr %32, align 16, !tbaa !116
  %i.aom = extractelement <2 x i32> %i.aok, i64 1
  store i32 %i.aom, ptr %i.js, align 4, !tbaa !117
  %i.aon = load <2 x i32>, ptr %i.ac, align 4, !tbaa !55
  %i.aoo = sub <2 x i32> %i.aoj, %i.aok
  %i.aop = add <2 x i32> %i.aoo, %i.aon
  %i.aoq = call <2 x i32> @llvm.smin.v2i32(<2 x i32> %i.aoi, <2 x i32> %i.aop)
  store <2 x i32> %i.aoq, ptr %i.jt, align 8, !tbaa !55
  %i.aor = load ptr, ptr %i.jl, align 8, !tbaa !115
  call void %i.aor(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef nonnull %32, ptr noundef nonnull %31) #11, !inline_history !43
  %i.aos = load <2 x i32>, ptr %31, align 16, !tbaa !55
  %i.aot = load <2 x i32>, ptr %4, align 4, !tbaa !55 ; 2 uses
  %i.aou = call <2 x i32> @llvm.smax.v2i32(<2 x i32> %i.aos, <2 x i32> %i.aot) ; 3 uses
  %i.aov = extractelement <2 x i32> %i.aou, i64 0 ; 3 uses
  store i32 %i.aov, ptr %31, align 16, !tbaa !116
  %i.aow = extractelement <2 x i32> %i.aou, i64 1 ; 3 uses
  store i32 %i.aow, ptr %i.jo, align 4, !tbaa !117
  %i.aox = load <2 x i32>, ptr %i.jp, align 8, !tbaa !55
  %i.aoy = load <2 x i32>, ptr %i.z, align 4, !tbaa !55
  %i.aoz = sub <2 x i32> %i.aot, %i.aou
  %i.apa = add <2 x i32> %i.aoz, %i.aoy
  %i.apb = call <2 x i32> @llvm.smin.v2i32(<2 x i32> %i.aox, <2 x i32> %i.apa) ; 3 uses
  store <2 x i32> %i.apb, ptr %i.jp, align 8, !tbaa !55
  %i.apc = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 8), align 8, !tbaa !56 ; 2 uses
  %i.apd = and i32 %i.apc, 25165824
  %or.cond.not.i523.i = icmp eq i32 %i.apd, 25165824
  br i1 %or.cond.not.i523.i, label %bb.dc, label %_print_roi.exit524.i

bb.dc:                                            ; preds = %_print_roi.exit522.i
  %i.ape = extractelement <2 x i32> %i.apb, i64 0 ; 2 uses
  %i.apf = add nsw i32 %i.ape, %i.aov
  %i.apg = extractelement <2 x i32> %i.apb, i64 1 ; 2 uses
  %i.aph = add nsw i32 %i.apg, %i.aow
  %i.api = load float, ptr %i.jr, align 16, !tbaa !45
  %i.apj = fpext reassoc nsz arcp contract afn float %i.api to double
  call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.23, i32 noundef %i.aov, i32 noundef %i.aow, i32 noundef %i.apf, i32 noundef %i.aph, i32 noundef %i.ape, i32 noundef %i.apg, double noundef %i.apj, ptr noundef nonnull @.str.14) #11
  %.pre611.i = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 8), align 8, !tbaa !56
  br label %_print_roi.exit524.i

_print_roi.exit524.i:                             ; preds = %bb.dc, %_print_roi.exit522.i
  %i.apk = phi i32 [ %i.apc, %_print_roi.exit522.i ], [ %.pre611.i, %bb.dc ] ; 2 uses
  %i.apl = and i32 %i.apk, 25165824
  %or.cond.not.i525.i = icmp eq i32 %i.apl, 25165824
  br i1 %or.cond.not.i525.i, label %bb.dd, label %_print_roi.exit526.i

bb.dd:                                            ; preds = %_print_roi.exit524.i
  %i.apm = load i32, ptr %32, align 16, !tbaa !116 ; 2 uses
  %i.apn = load i32, ptr %i.js, align 4, !tbaa !117 ; 2 uses
  %i.apo = load i32, ptr %i.jt, align 8, !tbaa !44 ; 2 uses
  %i.app = add nsw i32 %i.apo, %i.apm
  %i.apq = load i32, ptr %i.ju, align 4, !tbaa !46 ; 2 uses
  %i.apr = add nsw i32 %i.apq, %i.apn
  %i.aps = load float, ptr %i.jv, align 16, !tbaa !45
  %i.apt = fpext reassoc nsz arcp contract afn float %i.aps to double
  call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.23, i32 noundef %i.apm, i32 noundef %i.apn, i32 noundef %i.app, i32 noundef %i.apr, i32 noundef %i.apo, i32 noundef %i.apq, double noundef %i.apt, ptr noundef nonnull @.str.15) #11
  %.pre612.i = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 8), align 8, !tbaa !56
  br label %_print_roi.exit526.i

_print_roi.exit526.i:                             ; preds = %bb.dd, %_print_roi.exit524.i
  %i.apu = phi i32 [ %i.apk, %_print_roi.exit524.i ], [ %.pre612.i, %bb.dd ]
  %i.apv = load i32, ptr %i.jo, align 4, !tbaa !117
  %i.apw = sext i32 %i.apv to i64
  %i.apx = load i32, ptr %i.jc, align 4, !tbaa !117
  %i.apy = sext i32 %i.apx to i64
  %i.apz = sub nsw i64 %i.apw, %i.apy
  %i.aqa = mul nsw i64 %i.apz, %i.ke
  %i.aqb = load i32, ptr %31, align 16, !tbaa !116
  %i.aqc = sext i32 %i.aqb to i64
  %i.aqd = load i32, ptr %4, align 4, !tbaa !116
  %i.aqe = sext i32 %i.aqd to i64
  %i.aqf = sub nsw i64 %i.aqc, %i.aqe
  %i.aqg = mul nsw i64 %i.aqf, %i.kf
end_hunk_1
begin_hunk_2_@default_process_tiling:bb.a
  %i.avz = and i32 %i.auq, 3
  %lcmp.mod131 = icmp ne i32 %i.avz, 0
  call void @llvm.assume(i1 %lcmp.mod131)
  br label %bb.dz

bb.dz:                                            ; preds = %bb.dz, %.epil.preheader
  %.0408578.i.epil = phi i64 [ %.0408578.i.epil.init, %.epil.preheader ], [ %i.awh, %bb.dz ] ; 3 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.dz ]
  %i.awa = mul i64 %.0408578.i.epil, %i.kg
  %i.awb = getelementptr inbounds nuw i8, ptr %i.aso, i64 %i.awa
  %i.awc = add i64 %.0408578.i.epil, %i.asq
  %i.awd = mul i64 %i.awc, %i.ass
  %i.awe = add i64 %i.awd, %i.asu
  %i.awf = mul i64 %i.awe, %i.kh
  %i.awg = getelementptr inbounds nuw i8, ptr %i.arm, i64 %i.awf
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.awb, ptr nonnull align 1 %i.awg, i64 %i.asx, i1 false)
  %i.awh = add nuw i64 %.0408578.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge.i, label %bb.dz, !llvm.loop !125

._crit_edge.i:                                    ; preds = %._crit_edge.i.loopexit.unr-lcssa, %bb.dz, %bb.dx
  call void @free(ptr noundef nonnull %i.arc) #11
  call void @free(ptr noundef nonnull %i.arm) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #11
  %exitcond589.not.i = icmp eq i64 %i.kz, %i.iy
  br i1 %exitcond589.not.i, label %bb.ea, label %bb.aj

.thread537.sink.split.i:                          ; preds = %bb.di, %bb.dg, %bb.cy
  %.str.19.sink.i = phi ptr [ @.str.18, %bb.dg ], [ @.str.11, %bb.cy ], [ @.str.19, %bb.di ]
  %.3.ph.ph.i = phi ptr [ null, %bb.dg ], [ null, %bb.cy ], [ %i.arc, %bb.di ]
  %i.awi = load ptr, ptr %i.v, align 8, !tbaa !30
  %i.awj = getelementptr inbounds nuw i8, ptr %i.awi, i64 644
  %i.awk = load i32, ptr %i.awj, align 4, !tbaa !97
  %i.awl = call ptr @dt_dev_pixelpipe_type_to_str(i32 noundef %i.awk) #11
  %i.awm = call ptr @dt_iop_get_instance_id(ptr noundef nonnull %0) #11
  call void (ptr, ...) @dt_print_ext(ptr noundef nonnull %.str.19.sink.i, ptr noundef %i.awl, ptr noundef nonnull %i.kj, ptr noundef %i.awm) #11
  br label %.thread537.i

.thread537.i:                                     ; preds = %.thread537.sink.split.i, %bb.di, %bb.dg, %bb.cy
  %.3.ph.i = phi ptr [ %i.arc, %bb.di ], [ null, %bb.dg ], [ null, %bb.cy ], [ %.3.ph.ph.i, %.thread537.sink.split.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #11
  br label %bb.eb

bb.ea:                                            ; preds = %._crit_edge.i
  %exitcond591.not.i = icmp eq i64 %i.kk, %i.ix
  br i1 %exitcond591.not.i, label %.preheader.i, label %.preheader570.i

bb.eb:                                            ; preds = %.thread537.i, %bb.ag, %bb.af
  %.6.i = phi ptr [ %.3.ph.i, %.thread537.i ], [ null, %bb.ag ], [ null, %bb.af ]
  %i.awn = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.21, i32 noundef 5) #11
  %i.awo = getelementptr inbounds nuw i8, ptr %0, i64 456
  %i.awp = call ptr @dt_iop_get_instance_id(ptr noundef nonnull %0) #11
  call void (ptr, ...) @dt_control_log(ptr noundef %i.awn, ptr noundef nonnull %i.awo, ptr noundef %i.awp) #11
  br label %bb.ec

bb.ec:                                            ; preds = %bb.eb, %bb.i, %bb.h
  %.7.i = phi ptr [ %.6.i, %bb.eb ], [ null, %bb.i ], [ null, %bb.h ]
  call void @free(ptr noundef %.7.i) #11
  %i.awq = load ptr, ptr %i.v, align 8, !tbaa !30 ; 2 uses
  %i.awr = getelementptr inbounds nuw i8, ptr %i.awq, i64 624
  store i32 0, ptr %i.awr, align 16, !tbaa !114
  %i.aws = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 8), align 8, !tbaa !56
  %i.awt = and i32 %i.aws, 8388608
  %.not504.i = icmp eq i32 %i.awt, 0
  br i1 %.not504.i, label %bb.ee, label %bb.ed

bb.ed:                                            ; preds = %bb.ec
  %i.awu = getelementptr inbounds nuw i8, ptr %i.awq, i64 644
  %i.awv = load i32, ptr %i.awu, align 4, !tbaa !97
  %i.aww = call ptr @dt_dev_pixelpipe_type_to_str(i32 noundef %i.awv) #11
  %i.awx = getelementptr inbounds nuw i8, ptr %0, i64 456
  %i.awy = call ptr @dt_iop_get_instance_id(ptr noundef nonnull %0) #11
  call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.22, ptr noundef %i.aww, ptr noundef nonnull %i.awx, ptr noundef %i.awy) #11
  br label %bb.ee

bb.ee:                                            ; preds = %bb.ed, %bb.ec
  %i.awz = getelementptr inbounds nuw i8, ptr %0, i64 360
  %i.axa = load ptr, ptr %i.awz, align 8, !tbaa !124
  call void %i.axa(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %4, ptr noundef nonnull %5) #11, !inline_history !43
  br label %_default_process_tiling_roi.exit

_default_process_tiling_roi.exit:                 ; preds = %.preheader.i, %bb.ee
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.gl

bb.ef:                                            ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #11
  %i.axb = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.axc = load ptr, ptr %i.axb, align 16, !tbaa !29
  %i.axd = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 17 uses
  %i.axe = load ptr, ptr %i.axd, align 8, !tbaa !30
  call void %i.axc(ptr noundef nonnull %0, ptr noundef %i.axe, ptr noundef %1, ptr noundef nonnull %7) #11, !inline_history !127
  %i.axf = call i64 @dt_iop_buffer_dsc_to_bpp(ptr noundef nonnull %7) #11 ; 2 uses
  %i.axg = trunc i64 %i.axf to i32                ; 3 uses
  %i.axh = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 6 uses
  %i.axi = load i32, ptr %i.axh, align 4, !tbaa !44
  %i.axj = mul nsw i32 %i.axi, %6
  %i.axk = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.axl = load i32, ptr %i.axk, align 4, !tbaa !44
  %i.axm = mul nsw i32 %i.axl, %i.axg
  %i.axn = call i32 @llvm.smax.i32(i32 %6, i32 %i.axg) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #11
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %8, i8 0, i64 28, i1 false)
  %i.axo = getelementptr inbounds nuw i8, ptr %8, i64 12 ; 2 uses
  %i.axp = getelementptr inbounds nuw i8, ptr %8, i64 4 ; 3 uses
  call void @llvm.masked.store.v3f32.p0(<3 x float> <float -1.000000e+00, float poison, float -1.000000e+00>, ptr align 4 %i.axp, <3 x i1> <i1 true, i1 false, i1 true>), !tbaa !47
  %i.axq = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.axr = load ptr, ptr %i.axq, align 8, !tbaa !48
  call void %i.axr(ptr noundef nonnull %0, ptr noundef %1, ptr noundef nonnull %4, ptr noundef nonnull %5, ptr noundef nonnull %8) #11, !inline_history !127
  %i.axs = load float, ptr %i.axp, align 4, !tbaa !49
  %i.axt = fcmp reassoc nsz arcp contract afn olt float %i.axs, 0.000000e+00
  br i1 %i.axt, label %bb.eg, label %bb.eh

bb.eg:                                            ; preds = %bb.ef
  %i.axu = load float, ptr %8, align 4, !tbaa !51
  store float %i.axu, ptr %i.axp, align 4, !tbaa !49
  br label %bb.eh

bb.eh:                                            ; preds = %bb.eg, %bb.ef
  %i.axv = load float, ptr %i.axo, align 4, !tbaa !52
  %i.axw = fcmp reassoc nsz arcp contract afn olt float %i.axv, 0.000000e+00
  br i1 %i.axw, label %bb.ei, label %bb.ej

bb.ei:                                            ; preds = %bb.eh
  %i.axx = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.axy = load float, ptr %i.axx, align 4, !tbaa !53
  store float %i.axy, ptr %i.axo, align 4, !tbaa !52
  br label %bb.ej

bb.ej:                                            ; preds = %bb.ei, %bb.eh
  %i.axz = load float, ptr %8, align 4, !tbaa !51
  %i.aya = fcmp reassoc nsz arcp contract afn olt float %i.axz, 2.200000e+00
  br i1 %i.aya, label %bb.ek, label %._crit_edge404.i

._crit_edge404.i:                                 ; preds = %bb.ej
  %.pre405.i = sitofp reassoc nsz arcp contract afn i32 %i.axn to float
  br label %bb.en

bb.ek:                                            ; preds = %bb.ej
  %i.ayb = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.ayc = load i32, ptr %i.ayb, align 4, !tbaa !54
  %i.ayd = uitofp reassoc nsz arcp contract afn i32 %i.ayc to float
  %i.aye = load <2 x i32>, ptr %i.axh, align 4, !tbaa !55
  %i.ayf = sitofp <2 x i32> %i.aye to <2 x float> ; 2 uses
  %i.ayg = sitofp reassoc nsz arcp contract afn i32 %i.axn to float ; 2 uses
  %i.ayh = fmul reassoc nnan nsz arcp contract afn float %i.ayg, 2.000000e-01
  %i.ayi = extractelement <2 x float> %i.ayf, i64 0
  %i.ayj = fmul reassoc nsz arcp contract afn float %i.ayh, %i.ayi
  %i.ayk = extractelement <2 x float> %i.ayf, i64 1
  %i.ayl = fmul reassoc nsz arcp contract afn float %i.ayj, %i.ayk
  %i.aym = fcmp reassoc nsz arcp contract afn ogt float %i.ayl, %i.ayd
  br i1 %i.aym, label %bb.el, label %bb.en

bb.el:                                            ; preds = %bb.ek
  %i.ayn = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 8), align 8, !tbaa !56
  %i.ayo = and i32 %i.ayn, 41943040
  %.not340.i = icmp eq i32 %i.ayo, 0
  br i1 %.not340.i, label %bb.gi, label %bb.em

bb.em:                                            ; preds = %bb.el
  %i.ayp = load ptr, ptr %i.axd, align 8, !tbaa !30
  %i.ayq = getelementptr inbounds nuw i8, ptr %i.ayp, i64 644
  %i.ayr = load i32, ptr %i.ayq, align 4, !tbaa !97
  %i.ays = call ptr @dt_dev_pixelpipe_type_to_str(i32 noundef %i.ayr) #11
  %i.ayt = getelementptr inbounds nuw i8, ptr %0, i64 456
  %i.ayu = call ptr @dt_iop_get_instance_id(ptr noundef nonnull %0) #11
  call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.28, ptr noundef %i.ays, ptr noundef nonnull %i.ayt, ptr noundef %i.ayu) #11
  br label %bb.gi

bb.en:                                            ; preds = %bb.ek, %._crit_edge404.i
  %.pre-phi.i17 = phi float [ %.pre405.i, %._crit_edge404.i ], [ %i.ayg, %bb.ek ]
  %i.ayv = load ptr, ptr %i.axd, align 8, !tbaa !30
  %i.ayw = call i64 @dt_get_available_pipe_mem(ptr noundef %i.ayv) #11
  %i.ayx = uitofp reassoc nsz arcp contract afn i64 %i.ayw to float
  %i.ayy = load i32, ptr %i.axk, align 4, !tbaa !44
  %i.ayz = sitofp reassoc nsz arcp contract afn i32 %i.ayy to float
  %i.aza = getelementptr inbounds nuw i8, ptr %5, i64 12
  %i.azb = load i32, ptr %i.aza, align 4, !tbaa !46
  %i.azc = sitofp reassoc nsz arcp contract afn i32 %i.azb to float
  %i.azd = sitofp reassoc nsz arcp contract afn i32 %i.axg to float
  %i.aze = load i32, ptr %i.axh, align 4, !tbaa !44
  %i.azf = sitofp reassoc nsz arcp contract afn i32 %i.aze to float
  %i.azg = getelementptr inbounds nuw i8, ptr %4, i64 12 ; 4 uses
  %i.azh = load i32, ptr %i.azg, align 4, !tbaa !46
  %i.azi = sitofp reassoc nsz arcp contract afn i32 %i.azh to float
  %i.azj = sitofp reassoc nsz arcp contract afn i32 %6 to float
  %i.azk = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.azl = load i32, ptr %i.azk, align 4, !tbaa !54
  %i.azm = uitofp reassoc nsz arcp contract afn i32 %i.azl to float
  %.neg345.i = fmul reassoc nnan nsz arcp contract afn float %i.ayz, %i.azd
  %.neg345.i.neg = fmul reassoc nnan nsz arcp contract afn float %i.azf, %i.azj
  %.neg346.i = fmul reassoc nsz arcp contract afn float %.neg345.i, %i.azc
  %.neg346.i.neg = fmul reassoc nsz arcp contract afn float %.neg345.i.neg, %i.azi
  %reass.add51 = fadd reassoc nsz arcp contract afn float %.neg346.i, %.neg346.i.neg
  %i.azn = fadd reassoc nsz arcp contract afn float %reass.add51, %i.azm
  %i.azo = fsub reassoc nsz arcp contract afn float %i.ayx, %i.azn
  %i.azp = call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.azo, float 0.000000e+00)
  %i.azq = call i64 (...) @dt_get_singlebuffer_mem() #11
  %i.azr = uitofp reassoc nsz arcp contract afn i64 %i.azq to float
  %i.azs = load float, ptr %8, align 4, !tbaa !51
  %i.azt = call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.azs, float 1.000000e+00)
  %i.azu = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.azv = load float, ptr %i.azu, align 4, !tbaa !53
  %i.azw = call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.azv, float 1.000000e+00)
  %i.azx = fdiv reassoc nsz arcp contract afn float %i.azp, %i.azt
  %i.azy = call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.azx, float %i.azr) ; 2 uses
  %i.azz = load i32, ptr %i.axh, align 4, !tbaa !44 ; 5 uses
  %i.baa = load i32, ptr %i.azg, align 4, !tbaa !46 ; 5 uses
  %i.bab = sitofp reassoc nsz arcp contract afn i32 %i.azz to float ; 3 uses
  %i.bac = sitofp reassoc nsz arcp contract afn i32 %i.baa to float ; 3 uses
  %i.bad = fmul reassoc nsz arcp contract afn float %i.azw, %.pre-phi.i17
  %i.bae = fmul reassoc nsz arcp contract afn float %i.bad, %i.bab
  %i.baf = fmul reassoc nsz arcp contract afn float %i.bae, %i.bac ; 2 uses
  %i.bag = fcmp reassoc nsz arcp contract afn ogt float %i.baf, %i.azy
  br i1 %i.bag, label %bb.eo, label %bb.ev

bb.eo:                                            ; preds = %bb.en
  %i.bah = fdiv reassoc nsz arcp contract afn float %i.azy, %i.baf ; 4 uses
  %i.bai = icmp slt i32 %i.azz, %i.baa
  %i.baj = fcmp reassoc nsz arcp contract afn oge float %i.bah, 3.330000e-01 ; 2 uses
  %or.cond.i28 = and i1 %i.bai, %i.baj
  br i1 %or.cond.i28, label %bb.ep, label %bb.eq

bb.ep:                                            ; preds = %bb.eo
  %i.bak = fmul reassoc nsz arcp contract afn float %i.bah, %i.bac
  %i.bal = call reassoc nsz arcp contract afn float @llvm.floor.f32(float %i.bak)
  %i.bam = fptosi float %i.bal to i32
  br label %bb.et

bb.eq:                                            ; preds = %bb.eo
  %i.ban = icmp sle i32 %i.baa, %i.azz
  %or.cond3.i = and i1 %i.ban, %i.baj
  br i1 %or.cond3.i, label %bb.er, label %bb.es

bb.er:                                            ; preds = %bb.eq
  %i.bao = fmul reassoc nsz arcp contract afn float %i.bah, %i.bab
  %i.bap = call reassoc nsz arcp contract afn float @llvm.floor.f32(float %i.bao)
  %i.baq = fptosi float %i.bap to i32
  br label %bb.et

bb.es:                                            ; preds = %bb.eq
  %i.bar = call reassoc nsz arcp contract afn float @llvm.sqrt.f32(float %i.bah) ; 2 uses
  %i.bas = fmul reassoc nsz arcp contract afn float %i.bar, %i.bab
  %i.bat = call reassoc nsz arcp contract afn float @llvm.floor.f32(float %i.bas)
  %i.bau = fptosi float %i.bat to i32
  %i.bav = fmul reassoc nsz arcp contract afn float %i.bar, %i.bac
  %i.baw = call reassoc nsz arcp contract afn float @llvm.floor.f32(float %i.bav)
  %i.bax = fptosi float %i.baw to i32
  br label %bb.et

bb.et:                                            ; preds = %bb.es, %bb.er, %bb.ep
  %.0308.i = phi i32 [ %i.bam, %bb.ep ], [ %i.baa, %bb.er ], [ %i.bax, %bb.es ] ; 3 uses
  %.0304.i = phi i32 [ %i.azz, %bb.ep ], [ %i.baq, %bb.er ], [ %i.bau, %bb.es ] ; 3 uses
  %i.bay = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 8), align 8, !tbaa !56
  %i.baz = and i32 %i.bay, 25165824
  %or.cond342.not.i = icmp eq i32 %i.baz, 25165824
  br i1 %or.cond342.not.i, label %bb.eu, label %bb.ev

bb.eu:                                            ; preds = %bb.et
  call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.29, i32 noundef %.0304.i, i32 noundef %.0308.i) #11
  br label %bb.ev

bb.ev:                                            ; preds = %bb.eu, %bb.et, %bb.en
  %.1309.i = phi i32 [ %i.baa, %bb.en ], [ %.0308.i, %bb.eu ], [ %.0308.i, %bb.et ] ; 3 uses
  %.1305.i = phi i32 [ %i.azz, %bb.en ], [ %.0304.i, %bb.eu ], [ %.0304.i, %bb.et ] ; 3 uses
  %i.bba = getelementptr inbounds nuw i8, ptr %8, i64 20 ; 2 uses
  %i.bbb = load i32, ptr %i.bba, align 4, !tbaa !111
  %i.bbc = mul i32 %i.bbb, 3                      ; 2 uses
  %i.bbd = icmp ugt i32 %i.bbc, %.1305.i
  %i.bbe = icmp ugt i32 %i.bbc, %.1309.i
  %or.cond343.i = select i1 %i.bbd, i1 true, i1 %i.bbe
  br i1 %or.cond343.i, label %bb.ew, label %bb.ey

bb.ew:                                            ; preds = %bb.ev
  %i.bbf = sitofp reassoc nsz arcp contract afn i32 %.1305.i to float
  %i.bbg = sitofp reassoc nsz arcp contract afn i32 %.1309.i to float
  %i.bbh = fmul reassoc nnan nsz arcp contract afn float %i.bbf, %i.bbg
  %i.bbi = call reassoc nsz arcp contract afn float @llvm.sqrt.f32(float %i.bbh)
  %i.bbj = call reassoc nsz arcp contract afn float @llvm.floor.f32(float %i.bbi)
  %i.bbk = fptosi float %i.bbj to i32             ; 6 uses
  %i.bbl = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 8), align 8, !tbaa !56
  %i.bbm = and i32 %i.bbl, 25165824
  %or.cond344.not.i = icmp eq i32 %i.bbm, 25165824
  br i1 %or.cond344.not.i, label %bb.ex, label %bb.ey

bb.ex:                                            ; preds = %bb.ew
  call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.30, i32 noundef %i.bbk, i32 noundef %i.bbk) #11
  br label %bb.ey

bb.ey:                                            ; preds = %bb.ex, %bb.ew, %bb.ev
  %.2310.i = phi i32 [ %.1309.i, %bb.ev ], [ %i.bbk, %bb.ex ], [ %i.bbk, %bb.ew ]
  %.2.i = phi i32 [ %.1305.i, %bb.ev ], [ %i.bbk, %bb.ex ], [ %i.bbk, %bb.ew ]
  %.2310.fr.i = freeze i32 %.2310.i               ; 4 uses
  %.2.fr.i = freeze i32 %.2.i                     ; 4 uses
  %i.bbn = getelementptr inbounds nuw i8, ptr %8, i64 24
  %i.bbo = load i32, ptr %i.bbn, align 4, !tbaa !110 ; 5 uses
  %i.bbp = load i32, ptr %i.axh, align 4, !tbaa !44 ; 3 uses
  %i.bbq = icmp slt i32 %.2.fr.i, %i.bbp
  br i1 %i.bbq, label %bb.ez, label %bb.fa

bb.ez:                                            ; preds = %bb.ey
  %i.bbr = urem i32 %.2.fr.i, %i.bbo
  %i.bbs = sub nuw i32 %.2.fr.i, %i.bbr
  br label %bb.fa

bb.fa:                                            ; preds = %bb.ez, %bb.ey
  %.3.i = phi i32 [ %i.bbs, %bb.ez ], [ %.2.fr.i, %bb.ey ] ; 3 uses
  %i.bbt = load i32, ptr %i.azg, align 4, !tbaa !46 ; 3 uses
  %i.bbu = icmp slt i32 %.2310.fr.i, %i.bbt
  br i1 %i.bbu, label %bb.fb, label %bb.fc

bb.fb:                                            ; preds = %bb.fa
  %i.bbv = urem i32 %.2310.fr.i, %i.bbo
  %i.bbw = sub nuw i32 %.2310.fr.i, %i.bbv
  br label %bb.fc

bb.fc:                                            ; preds = %bb.fb, %bb.fa
  %.3311.i = phi i32 [ %i.bbw, %bb.fb ], [ %.2310.fr.i, %bb.fa ] ; 3 uses
  %i.bbx = load i32, ptr %i.bba, align 4, !tbaa !111 ; 3 uses
  %i.bby = urem i32 %i.bbx, %i.bbo
  %i.bbz = udiv i32 %i.bbx, %i.bbo
  %.not331.i = icmp eq i32 %i.bby, 0
  %i.bca = add i32 %i.bbz, 1
  %i.bcb = mul i32 %i.bca, %i.bbo
  %i.bcc = select i1 %.not331.i, i32 %i.bbx, i32 %i.bcb ; 3 uses
  %i.bcd = shl i32 %i.bcc, 1                      ; 3 uses
  %i.bce = sub nsw i32 %.3.i, %i.bcd
  %i.bcf = call i32 @llvm.smax.i32(i32 %i.bce, i32 1) ; 3 uses
  %i.bcg = sub i32 %.3311.i, %i.bcd
  %i.bch = call i32 @llvm.smax.i32(i32 %i.bcg, i32 1) ; 3 uses
  %i.bci = icmp slt i32 %.3.i, %i.bbp
  br i1 %i.bci, label %bb.fd, label %bb.fe

bb.fd:                                            ; preds = %bb.fc
  %i.bcj = sitofp reassoc nsz arcp contract afn i32 %i.bbp to float
  %i.bck = uitofp nneg i32 %i.bcf to float
  %i.bcl = fdiv reassoc nsz arcp contract afn float %i.bcj, %i.bck
  %i.bcm = call reassoc nsz arcp contract afn float @llvm.ceil.f32(float %i.bcl)
  %i.bcn = fptosi float %i.bcm to i32
  br label %bb.fe

bb.fe:                                            ; preds = %bb.fd, %bb.fc
  %i.bco = phi i32 [ %i.bcn, %bb.fd ], [ 1, %bb.fc ] ; 5 uses
  %i.bcp = icmp slt i32 %.3311.i, %i.bbt
  br i1 %i.bcp, label %bb.ff, label %bb.fg

bb.ff:                                            ; preds = %bb.fe
  %i.bcq = sitofp reassoc nsz arcp contract afn i32 %i.bbt to float
  %i.bcr = uitofp nneg i32 %i.bch to float
  %i.bcs = fdiv reassoc nsz arcp contract afn float %i.bcq, %i.bcr
  %i.bct = call reassoc nsz arcp contract afn float @llvm.ceil.f32(float %i.bcs)
  %i.bcu = fptosi float %i.bct to i32
  br label %bb.fg

bb.fg:                                            ; preds = %bb.ff, %bb.fe
  %i.bcv = phi i32 [ %i.bcu, %bb.ff ], [ 1, %bb.fe ] ; 5 uses
  %i.bcw = mul nsw i32 %i.bcv, %i.bco
  %i.bcx = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 3568), align 8, !tbaa !112
  %i.bcy = icmp eq i32 %i.bcx, 3
  %i.bcz = select i1 %i.bcy, i32 1073741824, i32 10000
  %i.bda = icmp sgt i32 %i.bcw, %i.bcz
  br i1 %i.bda, label %bb.fh, label %bb.fj

bb.fh:                                            ; preds = %bb.fg
  %i.bdb = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 8), align 8, !tbaa !56
  %i.bdc = and i32 %i.bdb, 41943040
  %.not339.i = icmp eq i32 %i.bdc, 0
  br i1 %.not339.i, label %bb.gh, label %bb.fi

bb.fi:                                            ; preds = %bb.fh
  %i.bdd = load ptr, ptr %i.axd, align 8, !tbaa !30
  %i.bde = getelementptr inbounds nuw i8, ptr %i.bdd, i64 644
  %i.bdf = load i32, ptr %i.bde, align 4, !tbaa !97
  %i.bdg = call ptr @dt_dev_pixelpipe_type_to_str(i32 noundef %i.bdf) #11
  %i.bdh = getelementptr inbounds nuw i8, ptr %0, i64 456
  %i.bdi = call ptr @dt_iop_get_instance_id(ptr noundef nonnull %0) #11
  call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.31, ptr noundef %i.bdg, ptr noundef nonnull %i.bdh, ptr noundef %i.bdi, i32 noundef %i.bco, i32 noundef %i.bcv) #11
  br label %bb.gh

bb.fj:                                            ; preds = %bb.fg
  %i.bdj = sext i32 %.3.i to i64                  ; 3 uses
  %i.bdk = sext i32 %.3311.i to i64               ; 5 uses
  %i.bdl = mul nsw i64 %i.bdk, %i.bdj             ; 2 uses
  %i.bdm = sext i32 %6 to i64                     ; 3 uses
  %i.bdn = mul i64 %i.bdl, %i.bdm
  %i.bdo = call ptr @dt_alloc_aligned(i64 noundef %i.bdn) #11 ; 10 uses
  %i.bdp = icmp eq ptr %i.bdo, null
  br i1 %i.bdp, label %bb.fk, label %bb.fm

bb.fk:                                            ; preds = %bb.fj
  %i.bdq = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 8), align 8, !tbaa !56
  %i.bdr = and i32 %i.bdq, 8388608
  %.not338.i = icmp eq i32 %i.bdr, 0
  br i1 %.not338.i, label %bb.gh, label %bb.fl
end_hunk_2
