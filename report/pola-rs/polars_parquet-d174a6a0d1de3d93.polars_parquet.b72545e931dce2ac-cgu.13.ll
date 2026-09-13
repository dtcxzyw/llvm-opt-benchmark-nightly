Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pola-rs/original/polars_parquet-d174a6a0d1de3d93.polars_parquet.b72545e931dce2ac-cgu.13?download=true
inline.NumInlined: 1332
inline.NumDeleted: 801
loop-unroll.NumCompletelyUnrolled: 27
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 42
begin_hunk_0_@_RINvNtNtCsk4ZPsEfLtLH_6brotli3enc8bit_cost20BrotliPopulationCostNtNtB4_9histogram16HistogramCommandECsfISxE4fmY1Y_14polars_parquet:bb.a
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %.sroa.05.079.lcssa, i64 noundef 5, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @17) #29, !dbg !4024
  unreachable, !dbg !4024

.thread:                                          ; preds = %bb.g, %bb.e, %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !4029
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(72) %i.a, i8 0, i64 72, i1 false), !dbg !4030
  %i.t = icmp ult i64 %i.d, 256, !dbg !4031
  br i1 %i.t, label %bb.y, label %bb.w, !dbg !4031

bb.i:                                             ; preds = %bb.b
  %i.u = uitofp i64 %i.d to float, !dbg !4032
  %i.v = fadd float %i.u, 2.000000e+01, !dbg !4033
  br label %bb.r, !dbg !4034

bb.j:                                             ; preds = %bb.b
  %i.w = load i64, ptr %i.b, align 8, !dbg !4035, !noundef !636 ; 3 uses
  %i.x = icmp ult i64 %i.w, 704, !dbg !4036
  br i1 %i.x, label %bb.l, label %bb.m, !dbg !4036

bb.k:                                             ; preds = %bb.b
  %i.y = load i64, ptr %i.b, align 8, !dbg !4037, !noundef !636 ; 3 uses
  %i.z = icmp ult i64 %i.y, 704, !dbg !4038
  br i1 %i.z, label %bb.t, label %bb.s, !dbg !4038

bb.l:                                             ; preds = %bb.j
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.w, !dbg !4036
  %i.ab = load i32, ptr %i.aa, align 4, !dbg !4036, !noundef !636 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !4039
  %i.ad = load i64, ptr %i.ac, align 8, !dbg !4039, !noundef !636 ; 3 uses
  %i.ae = icmp ult i64 %i.ad, 704, !dbg !4040
  br i1 %i.ae, label %bb.n, label %bb.o, !dbg !4040

bb.m:                                             ; preds = %bb.j
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %i.w, i64 noundef 704, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @18) #29, !dbg !4036
  unreachable, !dbg !4036

bb.n:                                             ; preds = %bb.l
  %i.af = getelementptr inbounds nuw i8, ptr %i.b, i64 16, !dbg !4041
  %i.ag = load i64, ptr %i.af, align 8, !dbg !4041, !noundef !636 ; 3 uses
  %i.ah = icmp ult i64 %i.ag, 704, !dbg !4042
  br i1 %i.ah, label %bb.p, label %bb.q, !dbg !4042

bb.o:                                             ; preds = %bb.l
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %i.ad, i64 noundef 704, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @19) #29, !dbg !4040
  unreachable, !dbg !4040

bb.p:                                             ; preds = %bb.n
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.ad, !dbg !4040
  %i.aj = load i32, ptr %i.ai, align 4, !dbg !4040, !noundef !636 ; 2 uses
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.ag, !dbg !4042
  %i.al = load i32, ptr %i.ak, align 4, !dbg !4042, !noundef !636 ; 2 uses
  %.sroa.0.0.i = tail call noundef i32 @llvm.umax.i32(i32 %i.al, i32 %i.aj), !dbg !4043
  %.sroa.0.0.i69 = tail call noundef i32 @llvm.umax.i32(i32 %.sroa.0.0.i, i32 %i.ab), !dbg !4044
  %i.am = add i32 %i.aj, %i.ab, !dbg !4045
  %i.an = add i32 %i.am, %i.al, !dbg !4046
  %i.ao = shl i32 %i.an, 1, !dbg !4047
  %i.ap = uitofp i32 %i.ao to float, !dbg !4048
  %i.aq = fadd float %i.ap, 2.800000e+01, !dbg !4049
  %i.ar = uitofp i32 %.sroa.0.0.i69 to float, !dbg !4050
  %i.as = fsub float %i.aq, %i.ar, !dbg !4049
  br label %bb.r, !dbg !4034

bb.q:                                             ; preds = %bb.n
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %i.ag, i64 noundef 704, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @20) #29, !dbg !4042
  unreachable, !dbg !4042

.lr.ph:                                           ; preds = %bb.v
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.bp, !dbg !4038
  %i.au = load i32, ptr %i.at, align 4, !dbg !4038, !noundef !636 ; 2 uses
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.bs, !dbg !4038
  %i.aw = load i32, ptr %i.av, align 4, !dbg !4038, !noundef !636 ; 2 uses
  %spec.select = tail call i32 @llvm.umax.i32(i32 %i.bn, i32 %i.bi), !dbg !4051 ; 2 uses
  %spec.select156 = tail call i32 @llvm.umin.i32(i32 %i.bn, i32 %i.bi), !dbg !4051 ; 2 uses
  %.sroa.0.2 = tail call i32 @llvm.umax.i32(i32 %i.au, i32 %spec.select), !dbg !4051 ; 2 uses
  %.sroa.19.5 = tail call i32 @llvm.umin.i32(i32 %i.au, i32 %spec.select), !dbg !4051 ; 2 uses
  %.sroa.0.3128 = tail call i32 @llvm.umax.i32(i32 %i.aw, i32 %.sroa.0.2), !dbg !4051 ; 2 uses
  %.sroa.27.5 = tail call i32 @llvm.umin.i32(i32 %i.aw, i32 %.sroa.0.2), !dbg !4051 ; 2 uses
  %.sroa.11.2 = tail call i32 @llvm.umax.i32(i32 %.sroa.19.5, i32 %spec.select156), !dbg !4051 ; 2 uses
  %.sroa.19.1 = tail call i32 @llvm.umin.i32(i32 %.sroa.19.5, i32 %spec.select156), !dbg !4051
  %.sroa.11.4 = tail call i32 @llvm.umax.i32(i32 %.sroa.27.5, i32 %.sroa.11.2), !dbg !4051
  %.sroa.27.4 = tail call i32 @llvm.umin.i32(i32 %.sroa.27.5, i32 %.sroa.11.2), !dbg !4051
  %i.ax = add i32 %.sroa.19.1, %.sroa.27.4, !dbg !4052 ; 2 uses
  %.sroa.0.0.i70 = tail call noundef i32 @llvm.umax.i32(i32 %.sroa.0.3128, i32 %i.ax), !dbg !4053
  %i.ay = mul i32 %i.ax, 3, !dbg !4054
  %i.az = uitofp i32 %i.ay to float, !dbg !4055
  %i.ba = fadd float %i.az, 3.700000e+01, !dbg !4056
  %i.bb = add i32 %.sroa.11.4, %.sroa.0.3128, !dbg !4057
  %i.bc = shl i32 %i.bb, 1, !dbg !4058
  %i.bd = uitofp i32 %i.bc to float, !dbg !4059
  %i.be = fadd float %i.ba, %i.bd, !dbg !4056
  %i.bf = uitofp i32 %.sroa.0.0.i70 to float, !dbg !4060
  %i.bg = fsub float %i.be, %i.bf, !dbg !4056
  br label %bb.r, !dbg !4034

bb.r:                                             ; preds = %bb.i, %bb.p, %.lr.ph, %bb.a, %bb.b, %bb.aa
  %.sroa.0.1 = phi float [ %i.ck, %bb.aa ], [ %i.bg, %.lr.ph ], [ 1.200000e+01, %bb.a ], [ %i.v, %bb.i ], [ %i.as, %bb.p ], [ 1.200000e+01, %bb.b ], !dbg !4061
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !4062
  ret float %.sroa.0.1, !dbg !4063

bb.s:                                             ; preds = %bb.v, %bb.u, %bb.t, %bb.k
  %.lcssa98 = phi i64 [ %i.y, %bb.k ], [ %i.bk, %bb.t ], [ %i.bp, %bb.u ], [ %i.bs, %bb.v ], !dbg !4037
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %.lcssa98, i64 noundef 704, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @21) #29, !dbg !4038
  unreachable, !dbg !4038

bb.t:                                             ; preds = %bb.k
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.y, !dbg !4038
  %i.bi = load i32, ptr %i.bh, align 4, !dbg !4038, !noundef !636 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !4037
  %i.bk = load i64, ptr %i.bj, align 8, !dbg !4037, !noundef !636 ; 3 uses
  %i.bl = icmp ult i64 %i.bk, 704, !dbg !4038
  br i1 %i.bl, label %bb.u, label %bb.s, !dbg !4038

bb.u:                                             ; preds = %bb.t
  %i.bm = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.bk, !dbg !4038
  %i.bn = load i32, ptr %i.bm, align 4, !dbg !4038, !noundef !636 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.b, i64 16, !dbg !4037
  %i.bp = load i64, ptr %i.bo, align 8, !dbg !4037, !noundef !636 ; 3 uses
  %i.bq = icmp ult i64 %i.bp, 704, !dbg !4038
  br i1 %i.bq, label %bb.v, label %bb.s, !dbg !4038

bb.v:                                             ; preds = %bb.u
  %i.br = getelementptr inbounds nuw i8, ptr %i.b, i64 24, !dbg !4037
  %i.bs = load i64, ptr %i.br, align 8, !dbg !4037, !noundef !636 ; 3 uses
  %i.bt = icmp ult i64 %i.bs, 704, !dbg !4038
  br i1 %i.bt, label %.lr.ph, label %bb.s, !dbg !4038

bb.w:                                             ; preds = %.thread
  %i.bu = uitofp i64 %i.d to float, !dbg !4064
  %i.bv = tail call float @llvm.log2.f32(float %i.bu), !dbg !4065
  br label %bb.x, !dbg !4066

bb.x:                                             ; preds = %bb.y, %bb.w
  %.sroa.018.0 = phi float [ %i.by, %bb.y ], [ %i.bv, %bb.w ], !dbg !4067
  %i.bw = getelementptr inbounds nuw i8, ptr %i.a, i64 68
  br label %bb.z, !dbg !4068

bb.y:                                             ; preds = %.thread
  %i.bx = getelementptr inbounds nuw [4 x i8], ptr @_RNvNtNtCsk4ZPsEfLtLH_6brotli3enc11log_table_86logs_8, i64 %i.d, !dbg !4069
  %i.by = load float, ptr %i.bx, align 4, !dbg !4069, !noundef !636
  br label %bb.x, !dbg !4066

bb.z:                                             ; preds = %bb.x, %bb.ad
  %.lcssa8796 = phi i32 [ 0, %bb.x ], [ %.lcssa8794, %bb.ad ] ; 4 uses
  %.sroa.0.291 = phi float [ 0.000000e+00, %bb.x ], [ %.sroa.0.3, %bb.ad ] ; 4 uses
  %.sroa.016.090 = phi i64 [ 1, %bb.x ], [ %.sroa.016.1, %bb.ad ] ; 2 uses
  %.sroa.019.089 = phi i32 [ 0, %bb.x ], [ %.sroa.019.1, %bb.ad ] ; 5 uses
  %.sroa.026.0.idx88 = phi i64 [ 0, %bb.x ], [ %.sroa.026.0.add, %bb.ad ] ; 2 uses
  %.sroa.026.0.ptr = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.026.0.idx88, !dbg !4070
  %.sroa.026.0.add = add nuw nsw i64 %.sroa.026.0.idx88, 4, !dbg !4071 ; 2 uses
  %i.bz = load i32, ptr %.sroa.026.0.ptr, align 4, !dbg !4072, !noundef !636 ; 3 uses
  %i.ca = icmp eq i32 %i.bz, 0, !dbg !4072
  br i1 %i.ca, label %bb.ab, label %bb.ac, !dbg !4072

bb.aa:                                            ; preds = %bb.ad
  store i32 %.lcssa8794, ptr %i.bw, align 4
  %i.cb = shl nuw nsw i64 %.sroa.016.1, 1, !dbg !4073
  %i.cc = add nuw nsw i64 %i.cb, 18, !dbg !4074
  %i.cd = uitofp nneg i64 %i.cc to float, !dbg !4075
  %i.ce = fadd float %.sroa.0.3, %i.cd, !dbg !4076
  %i.cf = call { float, i64 } @_RNvNtNtCsk4ZPsEfLtLH_6brotli3enc8bit_cost15shannon_entropy(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) %i.a, i64 noundef 18, i64 noundef 18), !dbg !4077 ; 2 uses
  %i.cg = extractvalue { float, i64 } %i.cf, 0, !dbg !4077 ; 2 uses
  %i.ch = extractvalue { float, i64 } %i.cf, 1, !dbg !4077
  %i.ci = uitofp i64 %i.ch to float, !dbg !4078   ; 2 uses
  %i.cj = fcmp olt float %i.cg, %i.ci, !dbg !4079
  %spec.store.select = select i1 %i.cj, float %i.ci, float %i.cg, !dbg !4079
  %i.ck = fadd float %i.ce, %spec.store.select, !dbg !4080
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !4081
  br label %bb.r, !dbg !4063

bb.ab:                                            ; preds = %bb.z
  %i.cl = add i32 %.sroa.019.089, 1, !dbg !4082
  br label %bb.ad, !dbg !4083

bb.ac:                                            ; preds = %bb.z
  %i.cm = icmp eq i32 %.sroa.019.089, 0, !dbg !4084
  br i1 %i.cm, label %.loopexit, label %bb.ae, !dbg !4084

bb.ad:                                            ; preds = %.loopexit, %bb.ab
  %.lcssa8794 = phi i32 [ %.lcssa8796, %bb.ab ], [ %.lcssa8795, %.loopexit ] ; 2 uses
  %.sroa.019.1 = phi i32 [ %i.cl, %bb.ab ], [ 0, %.loopexit ], !dbg !4085
  %.sroa.016.1 = phi i64 [ %.sroa.016.090, %bb.ab ], [ %.sroa.0.0.i72, %.loopexit ], !dbg !4061 ; 2 uses
  %.sroa.0.3 = phi float [ %.sroa.0.291, %bb.ab ], [ %i.df, %.loopexit ], !dbg !4086 ; 2 uses
  %i.cn = icmp eq i64 %.sroa.026.0.add, 2816, !dbg !4070
  br i1 %i.cn, label %bb.aa, label %bb.z, !dbg !4068

bb.ae:                                            ; preds = %bb.ac
  %i.co = icmp ult i32 %.sroa.019.089, 3, !dbg !4087
  br i1 %i.co, label %bb.af, label %.lr.ph86.preheader, !dbg !4087

.lr.ph86.preheader:                               ; preds = %bb.ae
  %i.cp = add i32 %.sroa.019.089, -2, !dbg !4088
  br label %.lr.ph86, !dbg !4089

bb.af:                                            ; preds = %bb.ae
  %i.cq = load i32, ptr %i.a, align 4, !dbg !4090, !noundef !636
  %i.cr = add i32 %i.cq, %.sroa.019.089, !dbg !4090
  store i32 %i.cr, ptr %i.a, align 4, !dbg !4090
  br label %.loopexit, !dbg !4091

.lr.ph86:                                         ; preds = %.lr.ph86.preheader, %.lr.ph86
  %i.cs = phi i32 [ %.lcssa8796, %.lr.ph86.preheader ], [ %i.ct, %.lr.ph86 ], !dbg !4092
  %.sroa.0.585 = phi float [ %.sroa.0.291, %.lr.ph86.preheader ], [ %i.cu, %.lr.ph86 ]
  %.sroa.019.384 = phi i32 [ %i.cp, %.lr.ph86.preheader ], [ %i.cv, %.lr.ph86 ]
  %i.ct = add i32 %i.cs, 1, !dbg !4092            ; 2 uses
  %i.cu = fadd float %.sroa.0.585, 3.000000e+00, !dbg !4093 ; 2 uses
  %i.cv = lshr i32 %.sroa.019.384, 3, !dbg !4094  ; 2 uses
  %.not68 = icmp eq i32 %i.cv, 0, !dbg !4089
  br i1 %.not68, label %.loopexit, label %.lr.ph86, !dbg !4089

.loopexit:                                        ; preds = %.lr.ph86, %bb.ac, %bb.af
  %.lcssa8795 = phi i32 [ %.lcssa8796, %bb.ac ], [ %.lcssa8796, %bb.af ], [ %i.ct, %.lr.ph86 ]
  %.sroa.0.4 = phi float [ %.sroa.0.291, %bb.ac ], [ %.sroa.0.291, %bb.af ], [ %i.cu, %.lr.ph86 ], !dbg !4095
  %i.cw = and i32 %i.bz, 65535, !dbg !4096
  %i.cx = zext nneg i32 %i.cw to i64, !dbg !4096
  %i.cy = getelementptr inbounds nuw [4 x i8], ptr @_RNvNtNtCsk4ZPsEfLtLH_6brotli3enc12log_table_167logs_16, i64 %i.cx, !dbg !4097
  %i.cz = load float, ptr %i.cy, align 4, !dbg !4097, !noundef !636
  %i.da = fsub float %.sroa.018.0, %i.cz, !dbg !4098 ; 2 uses
  %i.db = fadd float %i.da, 5.000000e-01, !dbg !4099
  %i.dc = tail call i64 @llvm.fptoui.sat.i64.f32(float %i.db), !dbg !4099
  %.sroa.0.0.i71 = tail call noundef i64 @llvm.umin.i64(i64 %i.dc, i64 15), !dbg !4100 ; 2 uses
  %.sroa.0.0.i72 = tail call noundef i64 @llvm.umax.i64(i64 %.sroa.016.090, i64 %.sroa.0.0.i71), !dbg !4101
  %i.dd = uitofp i32 %i.bz to float, !dbg !4102
  %i.de = fmul float %i.da, %i.dd, !dbg !4102
  %i.df = fadd float %.sroa.0.4, %i.de, !dbg !4103
  %i.dg = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %.sroa.0.0.i71, !dbg !4104 ; 2 uses
  %i.dh = load i32, ptr %i.dg, align 4, !dbg !4104, !noundef !636
  %i.di = add i32 %i.dh, 1, !dbg !4104
  store i32 %i.di, ptr %i.dg, align 4, !dbg !4104
  br label %bb.ad, !dbg !4083
}

; Function Attrs: nonlazybind uwtable
define hidden noundef float @_RINvNtNtCsk4ZPsEfLtLH_6brotli3enc8bit_cost20BrotliPopulationCostNtNtB4_9histogram16HistogramLiteralECsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef readonly align 8 captures(none) dereferenceable(1040) %0, ptr noalias nofree noundef nonnull readnone captures(none) %1) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !4105 {
bb.a:
  %i.a = alloca [72 x i8], align 4                ; 8 uses
  %i.b = alloca [40 x i8], align 8                ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !4198
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.b, i8 0, i64 40, i1 false), !dbg !4199
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1024, !dbg !4200
  %i.d = load i64, ptr %i.c, align 8, !dbg !4200, !alias.scope !4166, !noundef !636 ; 5 uses
  %i.e = icmp eq i64 %i.d, 0, !dbg !4201
  br i1 %i.e, label %bb.r, label %.preheader75, !dbg !4201

.preheader75:                                     ; preds = %bb.a, %bb.f
  %.sroa.05.079 = phi i64 [ %.sroa.05.2.1, %bb.f ], [ 0, %bb.a ] ; 6 uses
  %.sroa.036.078 = phi i64 [ %i.j, %bb.f ], [ 0, %bb.a ] ; 4 uses
  %i.f = or disjoint i64 %.sroa.036.078, 1, !dbg !4202 ; 2 uses
  %i.g = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.sroa.036.078, !dbg !4203
  %i.h = load i32, ptr %i.g, align 8, !dbg !4203, !noundef !636
  %.not = icmp eq i32 %i.h, 0, !dbg !4203
  br i1 %.not, label %.preheader75.1, label %bb.c, !dbg !4203

bb.b:                                             ; preds = %bb.f
  switch i64 %.sroa.05.2.1, label %.thread [
    i64 1, label %bb.r
    i64 2, label %bb.i
    i64 3, label %bb.j
    i64 4, label %bb.k
  ], !dbg !4204

bb.c:                                             ; preds = %.preheader75
  %i.i = icmp samesign ult i64 %.sroa.05.079, 5, !dbg !4205
  br i1 %i.i, label %bb.g, label %bb.h, !dbg !4205

.preheader75.1:                                   ; preds = %bb.g, %.preheader75
  %.sroa.05.2 = phi i64 [ %i.r, %bb.g ], [ %.sroa.05.079, %.preheader75 ], !dbg !4206 ; 6 uses
  %i.j = add nuw nsw i64 %.sroa.036.078, 2, !dbg !4202 ; 2 uses
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.f, !dbg !4203
  %i.l = load i32, ptr %i.k, align 4, !dbg !4203, !noundef !636
  %.not.1 = icmp eq i32 %i.l, 0, !dbg !4203
  br i1 %.not.1, label %bb.f, label %bb.d, !dbg !4203

bb.d:                                             ; preds = %.preheader75.1
  %i.m = icmp samesign ult i64 %.sroa.05.2, 5, !dbg !4205
  br i1 %i.m, label %bb.e, label %bb.h, !dbg !4205

bb.e:                                             ; preds = %bb.d
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.sroa.05.2, !dbg !4205
  store i64 %i.f, ptr %i.n, align 8, !dbg !4205
  %i.o = add nuw nsw i64 %.sroa.05.2, 1, !dbg !4207
  %i.p = icmp eq i64 %.sroa.05.2, 4, !dbg !4208
  br i1 %i.p, label %.thread, label %bb.f, !dbg !4208

bb.f:                                             ; preds = %bb.e, %.preheader75.1
  %.sroa.05.2.1 = phi i64 [ %i.o, %bb.e ], [ %.sroa.05.2, %.preheader75.1 ], !dbg !4206 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %i.j, 256, !dbg !4209
  br i1 %exitcond.not.1, label %bb.b, label %.preheader75, !dbg !4172

bb.g:                                             ; preds = %bb.c
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.sroa.05.079, !dbg !4205
  store i64 %.sroa.036.078, ptr %i.q, align 8, !dbg !4205
  %i.r = add nuw nsw i64 %.sroa.05.079, 1, !dbg !4207
  %i.s = icmp eq i64 %.sroa.05.079, 4, !dbg !4208
  br i1 %i.s, label %.thread, label %.preheader75.1, !dbg !4208

bb.h:                                             ; preds = %bb.d, %bb.c
  %.sroa.05.079.lcssa = phi i64 [ %.sroa.05.079, %bb.c ], [ %.sroa.05.2, %bb.d ]
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %.sroa.05.079.lcssa, i64 noundef 5, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @17) #29, !dbg !4205
  unreachable, !dbg !4205

.thread:                                          ; preds = %bb.g, %bb.e, %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !4210
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(72) %i.a, i8 0, i64 72, i1 false), !dbg !4211
  %i.t = icmp ult i64 %i.d, 256, !dbg !4212
  br i1 %i.t, label %bb.y, label %bb.w, !dbg !4212

bb.i:                                             ; preds = %bb.b
  %i.u = uitofp i64 %i.d to float, !dbg !4213
  %i.v = fadd float %i.u, 2.000000e+01, !dbg !4214
  br label %bb.r, !dbg !4215

bb.j:                                             ; preds = %bb.b
  %i.w = load i64, ptr %i.b, align 8, !dbg !4216, !noundef !636 ; 3 uses
  %i.x = icmp ult i64 %i.w, 256, !dbg !4217
  br i1 %i.x, label %bb.l, label %bb.m, !dbg !4217

bb.k:                                             ; preds = %bb.b
  %i.y = load i64, ptr %i.b, align 8, !dbg !4218, !noundef !636 ; 3 uses
  %i.z = icmp ult i64 %i.y, 256, !dbg !4219
  br i1 %i.z, label %bb.t, label %bb.s, !dbg !4219

bb.l:                                             ; preds = %bb.j
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.w, !dbg !4217
  %i.ab = load i32, ptr %i.aa, align 4, !dbg !4217, !noundef !636 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !4220
  %i.ad = load i64, ptr %i.ac, align 8, !dbg !4220, !noundef !636 ; 3 uses
  %i.ae = icmp ult i64 %i.ad, 256, !dbg !4221
  br i1 %i.ae, label %bb.n, label %bb.o, !dbg !4221

bb.m:                                             ; preds = %bb.j
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %i.w, i64 noundef 256, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @18) #29, !dbg !4217
  unreachable, !dbg !4217

bb.n:                                             ; preds = %bb.l
  %i.af = getelementptr inbounds nuw i8, ptr %i.b, i64 16, !dbg !4222
  %i.ag = load i64, ptr %i.af, align 8, !dbg !4222, !noundef !636 ; 3 uses
  %i.ah = icmp ult i64 %i.ag, 256, !dbg !4223
  br i1 %i.ah, label %bb.p, label %bb.q, !dbg !4223

bb.o:                                             ; preds = %bb.l
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %i.ad, i64 noundef 256, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @19) #29, !dbg !4221
  unreachable, !dbg !4221

bb.p:                                             ; preds = %bb.n
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.ad, !dbg !4221
  %i.aj = load i32, ptr %i.ai, align 4, !dbg !4221, !noundef !636 ; 2 uses
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.ag, !dbg !4223
  %i.al = load i32, ptr %i.ak, align 4, !dbg !4223, !noundef !636 ; 2 uses
  %.sroa.0.0.i = tail call noundef i32 @llvm.umax.i32(i32 %i.al, i32 %i.aj), !dbg !4224
  %.sroa.0.0.i69 = tail call noundef i32 @llvm.umax.i32(i32 %.sroa.0.0.i, i32 %i.ab), !dbg !4225
  %i.am = add i32 %i.aj, %i.ab, !dbg !4226
  %i.an = add i32 %i.am, %i.al, !dbg !4227
  %i.ao = shl i32 %i.an, 1, !dbg !4228
  %i.ap = uitofp i32 %i.ao to float, !dbg !4229
  %i.aq = fadd float %i.ap, 2.800000e+01, !dbg !4230
  %i.ar = uitofp i32 %.sroa.0.0.i69 to float, !dbg !4231
  %i.as = fsub float %i.aq, %i.ar, !dbg !4230
  br label %bb.r, !dbg !4215

bb.q:                                             ; preds = %bb.n
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %i.ag, i64 noundef 256, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @20) #29, !dbg !4223
  unreachable, !dbg !4223

.lr.ph:                                           ; preds = %bb.v
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.bp, !dbg !4219
  %i.au = load i32, ptr %i.at, align 4, !dbg !4219, !noundef !636 ; 2 uses
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.bs, !dbg !4219
  %i.aw = load i32, ptr %i.av, align 4, !dbg !4219, !noundef !636 ; 2 uses
  %spec.select = tail call i32 @llvm.umax.i32(i32 %i.bn, i32 %i.bi), !dbg !4232 ; 2 uses
  %spec.select156 = tail call i32 @llvm.umin.i32(i32 %i.bn, i32 %i.bi), !dbg !4232 ; 2 uses
  %.sroa.0.2 = tail call i32 @llvm.umax.i32(i32 %i.au, i32 %spec.select), !dbg !4232 ; 2 uses
  %.sroa.19.5 = tail call i32 @llvm.umin.i32(i32 %i.au, i32 %spec.select), !dbg !4232 ; 2 uses
  %.sroa.0.3128 = tail call i32 @llvm.umax.i32(i32 %i.aw, i32 %.sroa.0.2), !dbg !4232 ; 2 uses
  %.sroa.27.5 = tail call i32 @llvm.umin.i32(i32 %i.aw, i32 %.sroa.0.2), !dbg !4232 ; 2 uses
  %.sroa.11.2 = tail call i32 @llvm.umax.i32(i32 %.sroa.19.5, i32 %spec.select156), !dbg !4232 ; 2 uses
  %.sroa.19.1 = tail call i32 @llvm.umin.i32(i32 %.sroa.19.5, i32 %spec.select156), !dbg !4232
  %.sroa.11.4 = tail call i32 @llvm.umax.i32(i32 %.sroa.27.5, i32 %.sroa.11.2), !dbg !4232
  %.sroa.27.4 = tail call i32 @llvm.umin.i32(i32 %.sroa.27.5, i32 %.sroa.11.2), !dbg !4232
  %i.ax = add i32 %.sroa.19.1, %.sroa.27.4, !dbg !4233 ; 2 uses
  %.sroa.0.0.i70 = tail call noundef i32 @llvm.umax.i32(i32 %.sroa.0.3128, i32 %i.ax), !dbg !4234
  %i.ay = mul i32 %i.ax, 3, !dbg !4235
  %i.az = uitofp i32 %i.ay to float, !dbg !4236
  %i.ba = fadd float %i.az, 3.700000e+01, !dbg !4237
  %i.bb = add i32 %.sroa.11.4, %.sroa.0.3128, !dbg !4238
  %i.bc = shl i32 %i.bb, 1, !dbg !4239
  %i.bd = uitofp i32 %i.bc to float, !dbg !4240
  %i.be = fadd float %i.ba, %i.bd, !dbg !4237
  %i.bf = uitofp i32 %.sroa.0.0.i70 to float, !dbg !4241
  %i.bg = fsub float %i.be, %i.bf, !dbg !4237
  br label %bb.r, !dbg !4215

bb.r:                                             ; preds = %bb.i, %bb.p, %.lr.ph, %bb.a, %bb.b, %bb.aa
  %.sroa.0.1 = phi float [ %i.ck, %bb.aa ], [ %i.bg, %.lr.ph ], [ 1.200000e+01, %bb.a ], [ %i.v, %bb.i ], [ %i.as, %bb.p ], [ 1.200000e+01, %bb.b ], !dbg !4242
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !4243
  ret float %.sroa.0.1, !dbg !4244

bb.s:                                             ; preds = %bb.v, %bb.u, %bb.t, %bb.k
  %.lcssa98 = phi i64 [ %i.y, %bb.k ], [ %i.bk, %bb.t ], [ %i.bp, %bb.u ], [ %i.bs, %bb.v ], !dbg !4218
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %.lcssa98, i64 noundef 256, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @21) #29, !dbg !4219
  unreachable, !dbg !4219

bb.t:                                             ; preds = %bb.k
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.y, !dbg !4219
  %i.bi = load i32, ptr %i.bh, align 4, !dbg !4219, !noundef !636 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !4218
  %i.bk = load i64, ptr %i.bj, align 8, !dbg !4218, !noundef !636 ; 3 uses
  %i.bl = icmp ult i64 %i.bk, 256, !dbg !4219
  br i1 %i.bl, label %bb.u, label %bb.s, !dbg !4219

bb.u:                                             ; preds = %bb.t
  %i.bm = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.bk, !dbg !4219
  %i.bn = load i32, ptr %i.bm, align 4, !dbg !4219, !noundef !636 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.b, i64 16, !dbg !4218
  %i.bp = load i64, ptr %i.bo, align 8, !dbg !4218, !noundef !636 ; 3 uses
  %i.bq = icmp ult i64 %i.bp, 256, !dbg !4219
  br i1 %i.bq, label %bb.v, label %bb.s, !dbg !4219

bb.v:                                             ; preds = %bb.u
  %i.br = getelementptr inbounds nuw i8, ptr %i.b, i64 24, !dbg !4218
  %i.bs = load i64, ptr %i.br, align 8, !dbg !4218, !noundef !636 ; 3 uses
  %i.bt = icmp ult i64 %i.bs, 256, !dbg !4219
  br i1 %i.bt, label %.lr.ph, label %bb.s, !dbg !4219

bb.w:                                             ; preds = %.thread
  %i.bu = uitofp i64 %i.d to float, !dbg !4245
  %i.bv = tail call float @llvm.log2.f32(float %i.bu), !dbg !4246
  br label %bb.x, !dbg !4247

bb.x:                                             ; preds = %bb.y, %bb.w
  %.sroa.018.0 = phi float [ %i.by, %bb.y ], [ %i.bv, %bb.w ], !dbg !4248
  %i.bw = getelementptr inbounds nuw i8, ptr %i.a, i64 68
  br label %bb.z, !dbg !4249

bb.y:                                             ; preds = %.thread
  %i.bx = getelementptr inbounds nuw [4 x i8], ptr @_RNvNtNtCsk4ZPsEfLtLH_6brotli3enc11log_table_86logs_8, i64 %i.d, !dbg !4250
  %i.by = load float, ptr %i.bx, align 4, !dbg !4250, !noundef !636
  br label %bb.x, !dbg !4247

bb.z:                                             ; preds = %bb.x, %bb.ad
  %.lcssa8796 = phi i32 [ 0, %bb.x ], [ %.lcssa8794, %bb.ad ] ; 4 uses
  %.sroa.0.291 = phi float [ 0.000000e+00, %bb.x ], [ %.sroa.0.3, %bb.ad ] ; 4 uses
  %.sroa.016.090 = phi i64 [ 1, %bb.x ], [ %.sroa.016.1, %bb.ad ] ; 2 uses
  %.sroa.019.089 = phi i32 [ 0, %bb.x ], [ %.sroa.019.1, %bb.ad ] ; 5 uses
  %.sroa.026.0.idx88 = phi i64 [ 0, %bb.x ], [ %.sroa.026.0.add, %bb.ad ] ; 2 uses
  %.sroa.026.0.ptr = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.026.0.idx88, !dbg !4251
  %.sroa.026.0.add = add nuw nsw i64 %.sroa.026.0.idx88, 4, !dbg !4252 ; 2 uses
  %i.bz = load i32, ptr %.sroa.026.0.ptr, align 4, !dbg !4253, !noundef !636 ; 3 uses
  %i.ca = icmp eq i32 %i.bz, 0, !dbg !4253
  br i1 %i.ca, label %bb.ab, label %bb.ac, !dbg !4253

bb.aa:                                            ; preds = %bb.ad
  store i32 %.lcssa8794, ptr %i.bw, align 4
  %i.cb = shl nuw nsw i64 %.sroa.016.1, 1, !dbg !4254
  %i.cc = add nuw nsw i64 %i.cb, 18, !dbg !4255
  %i.cd = uitofp nneg i64 %i.cc to float, !dbg !4256
  %i.ce = fadd float %.sroa.0.3, %i.cd, !dbg !4257
  %i.cf = call { float, i64 } @_RNvNtNtCsk4ZPsEfLtLH_6brotli3enc8bit_cost15shannon_entropy(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) %i.a, i64 noundef 18, i64 noundef 18), !dbg !4258 ; 2 uses
  %i.cg = extractvalue { float, i64 } %i.cf, 0, !dbg !4258 ; 2 uses
  %i.ch = extractvalue { float, i64 } %i.cf, 1, !dbg !4258
  %i.ci = uitofp i64 %i.ch to float, !dbg !4259   ; 2 uses
  %i.cj = fcmp olt float %i.cg, %i.ci, !dbg !4260
  %spec.store.select = select i1 %i.cj, float %i.ci, float %i.cg, !dbg !4260
  %i.ck = fadd float %i.ce, %spec.store.select, !dbg !4261
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !4262
  br label %bb.r, !dbg !4244

bb.ab:                                            ; preds = %bb.z
  %i.cl = add i32 %.sroa.019.089, 1, !dbg !4263
  br label %bb.ad, !dbg !4264

bb.ac:                                            ; preds = %bb.z
  %i.cm = icmp eq i32 %.sroa.019.089, 0, !dbg !4265
  br i1 %i.cm, label %.loopexit, label %bb.ae, !dbg !4265

bb.ad:                                            ; preds = %.loopexit, %bb.ab
  %.lcssa8794 = phi i32 [ %.lcssa8796, %bb.ab ], [ %.lcssa8795, %.loopexit ] ; 2 uses
  %.sroa.019.1 = phi i32 [ %i.cl, %bb.ab ], [ 0, %.loopexit ], !dbg !4266
  %.sroa.016.1 = phi i64 [ %.sroa.016.090, %bb.ab ], [ %.sroa.0.0.i72, %.loopexit ], !dbg !4242 ; 2 uses
  %.sroa.0.3 = phi float [ %.sroa.0.291, %bb.ab ], [ %i.df, %.loopexit ], !dbg !4267 ; 2 uses
  %i.cn = icmp eq i64 %.sroa.026.0.add, 1024, !dbg !4251
  br i1 %i.cn, label %bb.aa, label %bb.z, !dbg !4249

bb.ae:                                            ; preds = %bb.ac
  %i.co = icmp ult i32 %.sroa.019.089, 3, !dbg !4268
  br i1 %i.co, label %bb.af, label %.lr.ph86.preheader, !dbg !4268

.lr.ph86.preheader:                               ; preds = %bb.ae
  %i.cp = add i32 %.sroa.019.089, -2, !dbg !4269
  br label %.lr.ph86, !dbg !4270

bb.af:                                            ; preds = %bb.ae
  %i.cq = load i32, ptr %i.a, align 4, !dbg !4271, !noundef !636
  %i.cr = add i32 %i.cq, %.sroa.019.089, !dbg !4271
  store i32 %i.cr, ptr %i.a, align 4, !dbg !4271
  br label %.loopexit, !dbg !4272

.lr.ph86:                                         ; preds = %.lr.ph86.preheader, %.lr.ph86
  %i.cs = phi i32 [ %.lcssa8796, %.lr.ph86.preheader ], [ %i.ct, %.lr.ph86 ], !dbg !4273
  %.sroa.0.585 = phi float [ %.sroa.0.291, %.lr.ph86.preheader ], [ %i.cu, %.lr.ph86 ]
  %.sroa.019.384 = phi i32 [ %i.cp, %.lr.ph86.preheader ], [ %i.cv, %.lr.ph86 ]
  %i.ct = add i32 %i.cs, 1, !dbg !4273            ; 2 uses
  %i.cu = fadd float %.sroa.0.585, 3.000000e+00, !dbg !4274 ; 2 uses
  %i.cv = lshr i32 %.sroa.019.384, 3, !dbg !4275  ; 2 uses
  %.not68 = icmp eq i32 %i.cv, 0, !dbg !4270
  br i1 %.not68, label %.loopexit, label %.lr.ph86, !dbg !4270

.loopexit:                                        ; preds = %.lr.ph86, %bb.ac, %bb.af
  %.lcssa8795 = phi i32 [ %.lcssa8796, %bb.ac ], [ %.lcssa8796, %bb.af ], [ %i.ct, %.lr.ph86 ]
  %.sroa.0.4 = phi float [ %.sroa.0.291, %bb.ac ], [ %.sroa.0.291, %bb.af ], [ %i.cu, %.lr.ph86 ], !dbg !4276
  %i.cw = and i32 %i.bz, 65535, !dbg !4277
  %i.cx = zext nneg i32 %i.cw to i64, !dbg !4277
  %i.cy = getelementptr inbounds nuw [4 x i8], ptr @_RNvNtNtCsk4ZPsEfLtLH_6brotli3enc12log_table_167logs_16, i64 %i.cx, !dbg !4278
  %i.cz = load float, ptr %i.cy, align 4, !dbg !4278, !noundef !636
  %i.da = fsub float %.sroa.018.0, %i.cz, !dbg !4279 ; 2 uses
  %i.db = fadd float %i.da, 5.000000e-01, !dbg !4280
  %i.dc = tail call i64 @llvm.fptoui.sat.i64.f32(float %i.db), !dbg !4280
  %.sroa.0.0.i71 = tail call noundef i64 @llvm.umin.i64(i64 %i.dc, i64 15), !dbg !4281 ; 2 uses
  %.sroa.0.0.i72 = tail call noundef i64 @llvm.umax.i64(i64 %.sroa.016.090, i64 %.sroa.0.0.i71), !dbg !4282
  %i.dd = uitofp i32 %i.bz to float, !dbg !4283
  %i.de = fmul float %i.da, %i.dd, !dbg !4283
  %i.df = fadd float %.sroa.0.4, %i.de, !dbg !4284
  %i.dg = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %.sroa.0.0.i71, !dbg !4285 ; 2 uses
  %i.dh = load i32, ptr %i.dg, align 4, !dbg !4285, !noundef !636
  %i.di = add i32 %i.dh, 1, !dbg !4285
  store i32 %i.di, ptr %i.dg, align 4, !dbg !4285
  br label %bb.ad, !dbg !4264
}

; Function Attrs: nonlazybind uwtable
define hidden noundef float @_RINvNtNtCsk4ZPsEfLtLH_6brotli3enc8bit_cost20BrotliPopulationCostNtNtB4_9histogram17HistogramDistanceECsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef readonly align 8 captures(none) dereferenceable(2192) %0, ptr noalias nofree noundef nonnull readnone captures(none) %1) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !4286 {
bb.a:
  %i.a = alloca [72 x i8], align 4                ; 8 uses
  %i.b = alloca [40 x i8], align 8                ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !4379
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.b, i8 0, i64 40, i1 false), !dbg !4380
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 2176, !dbg !4381
  %i.d = load i64, ptr %i.c, align 8, !dbg !4381, !alias.scope !4347, !noundef !636 ; 5 uses
  %i.e = icmp eq i64 %i.d, 0, !dbg !4382
  br i1 %i.e, label %bb.r, label %.preheader75, !dbg !4382

.preheader75:                                     ; preds = %bb.a, %bb.f
  %.sroa.05.079 = phi i64 [ %.sroa.05.2.1, %bb.f ], [ 0, %bb.a ] ; 6 uses
  %.sroa.036.078 = phi i64 [ %i.j, %bb.f ], [ 0, %bb.a ] ; 4 uses
  %i.f = or disjoint i64 %.sroa.036.078, 1, !dbg !4383 ; 2 uses
  %i.g = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.sroa.036.078, !dbg !4384
  %i.h = load i32, ptr %i.g, align 8, !dbg !4384, !noundef !636
  %.not = icmp eq i32 %i.h, 0, !dbg !4384
  br i1 %.not, label %.preheader75.1, label %bb.c, !dbg !4384

bb.b:                                             ; preds = %bb.f
  switch i64 %.sroa.05.2.1, label %.thread [
    i64 1, label %bb.r
    i64 2, label %bb.i
    i64 3, label %bb.j
    i64 4, label %bb.k
  ], !dbg !4385

bb.c:                                             ; preds = %.preheader75
  %i.i = icmp samesign ult i64 %.sroa.05.079, 5, !dbg !4386
  br i1 %i.i, label %bb.g, label %bb.h, !dbg !4386

.preheader75.1:                                   ; preds = %bb.g, %.preheader75
  %.sroa.05.2 = phi i64 [ %i.r, %bb.g ], [ %.sroa.05.079, %.preheader75 ], !dbg !4387 ; 6 uses
  %i.j = add nuw nsw i64 %.sroa.036.078, 2, !dbg !4383 ; 2 uses
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.f, !dbg !4384
  %i.l = load i32, ptr %i.k, align 4, !dbg !4384, !noundef !636
  %.not.1 = icmp eq i32 %i.l, 0, !dbg !4384
  br i1 %.not.1, label %bb.f, label %bb.d, !dbg !4384

bb.d:                                             ; preds = %.preheader75.1
  %i.m = icmp samesign ult i64 %.sroa.05.2, 5, !dbg !4386
  br i1 %i.m, label %bb.e, label %bb.h, !dbg !4386

bb.e:                                             ; preds = %bb.d
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.sroa.05.2, !dbg !4386
  store i64 %i.f, ptr %i.n, align 8, !dbg !4386
  %i.o = add nuw nsw i64 %.sroa.05.2, 1, !dbg !4388
  %i.p = icmp eq i64 %.sroa.05.2, 4, !dbg !4389
  br i1 %i.p, label %.thread, label %bb.f, !dbg !4389

bb.f:                                             ; preds = %bb.e, %.preheader75.1
  %.sroa.05.2.1 = phi i64 [ %i.o, %bb.e ], [ %.sroa.05.2, %.preheader75.1 ], !dbg !4387 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %i.j, 544, !dbg !4390
  br i1 %exitcond.not.1, label %bb.b, label %.preheader75, !dbg !4353

bb.g:                                             ; preds = %bb.c
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.sroa.05.079, !dbg !4386
  store i64 %.sroa.036.078, ptr %i.q, align 8, !dbg !4386
  %i.r = add nuw nsw i64 %.sroa.05.079, 1, !dbg !4388
  %i.s = icmp eq i64 %.sroa.05.079, 4, !dbg !4389
  br i1 %i.s, label %.thread, label %.preheader75.1, !dbg !4389

bb.h:                                             ; preds = %bb.d, %bb.c
  %.sroa.05.079.lcssa = phi i64 [ %.sroa.05.079, %bb.c ], [ %.sroa.05.2, %bb.d ]
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %.sroa.05.079.lcssa, i64 noundef 5, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @17) #29, !dbg !4386
  unreachable, !dbg !4386

.thread:                                          ; preds = %bb.g, %bb.e, %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !4391
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(72) %i.a, i8 0, i64 72, i1 false), !dbg !4392
  %i.t = icmp ult i64 %i.d, 256, !dbg !4393
  br i1 %i.t, label %bb.y, label %bb.w, !dbg !4393

bb.i:                                             ; preds = %bb.b
  %i.u = uitofp i64 %i.d to float, !dbg !4394
  %i.v = fadd float %i.u, 2.000000e+01, !dbg !4395
  br label %bb.r, !dbg !4396

bb.j:                                             ; preds = %bb.b
  %i.w = load i64, ptr %i.b, align 8, !dbg !4397, !noundef !636 ; 3 uses
  %i.x = icmp ult i64 %i.w, 544, !dbg !4398
  br i1 %i.x, label %bb.l, label %bb.m, !dbg !4398

bb.k:                                             ; preds = %bb.b
  %i.y = load i64, ptr %i.b, align 8, !dbg !4399, !noundef !636 ; 3 uses
  %i.z = icmp ult i64 %i.y, 544, !dbg !4400
  br i1 %i.z, label %bb.t, label %bb.s, !dbg !4400

bb.l:                                             ; preds = %bb.j
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.w, !dbg !4398
  %i.ab = load i32, ptr %i.aa, align 4, !dbg !4398, !noundef !636 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !4401
  %i.ad = load i64, ptr %i.ac, align 8, !dbg !4401, !noundef !636 ; 3 uses
  %i.ae = icmp ult i64 %i.ad, 544, !dbg !4402
  br i1 %i.ae, label %bb.n, label %bb.o, !dbg !4402

bb.m:                                             ; preds = %bb.j
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %i.w, i64 noundef 544, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @18) #29, !dbg !4398
  unreachable, !dbg !4398

bb.n:                                             ; preds = %bb.l
  %i.af = getelementptr inbounds nuw i8, ptr %i.b, i64 16, !dbg !4403
  %i.ag = load i64, ptr %i.af, align 8, !dbg !4403, !noundef !636 ; 3 uses
  %i.ah = icmp ult i64 %i.ag, 544, !dbg !4404
  br i1 %i.ah, label %bb.p, label %bb.q, !dbg !4404

bb.o:                                             ; preds = %bb.l
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %i.ad, i64 noundef 544, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @19) #29, !dbg !4402
  unreachable, !dbg !4402

bb.p:                                             ; preds = %bb.n
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.ad, !dbg !4402
  %i.aj = load i32, ptr %i.ai, align 4, !dbg !4402, !noundef !636 ; 2 uses
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.ag, !dbg !4404
  %i.al = load i32, ptr %i.ak, align 4, !dbg !4404, !noundef !636 ; 2 uses
  %.sroa.0.0.i = tail call noundef i32 @llvm.umax.i32(i32 %i.al, i32 %i.aj), !dbg !4405
  %.sroa.0.0.i69 = tail call noundef i32 @llvm.umax.i32(i32 %.sroa.0.0.i, i32 %i.ab), !dbg !4406
  %i.am = add i32 %i.aj, %i.ab, !dbg !4407
  %i.an = add i32 %i.am, %i.al, !dbg !4408
  %i.ao = shl i32 %i.an, 1, !dbg !4409
  %i.ap = uitofp i32 %i.ao to float, !dbg !4410
  %i.aq = fadd float %i.ap, 2.800000e+01, !dbg !4411
  %i.ar = uitofp i32 %.sroa.0.0.i69 to float, !dbg !4412
  %i.as = fsub float %i.aq, %i.ar, !dbg !4411
  br label %bb.r, !dbg !4396

bb.q:                                             ; preds = %bb.n
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %i.ag, i64 noundef 544, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @20) #29, !dbg !4404
  unreachable, !dbg !4404

.lr.ph:                                           ; preds = %bb.v
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.bp, !dbg !4400
  %i.au = load i32, ptr %i.at, align 4, !dbg !4400, !noundef !636 ; 2 uses
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.bs, !dbg !4400
  %i.aw = load i32, ptr %i.av, align 4, !dbg !4400, !noundef !636 ; 2 uses
  %spec.select = tail call i32 @llvm.umax.i32(i32 %i.bn, i32 %i.bi), !dbg !4413 ; 2 uses
  %spec.select156 = tail call i32 @llvm.umin.i32(i32 %i.bn, i32 %i.bi), !dbg !4413 ; 2 uses
  %.sroa.0.2 = tail call i32 @llvm.umax.i32(i32 %i.au, i32 %spec.select), !dbg !4413 ; 2 uses
  %.sroa.19.5 = tail call i32 @llvm.umin.i32(i32 %i.au, i32 %spec.select), !dbg !4413 ; 2 uses
  %.sroa.0.3128 = tail call i32 @llvm.umax.i32(i32 %i.aw, i32 %.sroa.0.2), !dbg !4413 ; 2 uses
  %.sroa.27.5 = tail call i32 @llvm.umin.i32(i32 %i.aw, i32 %.sroa.0.2), !dbg !4413 ; 2 uses
  %.sroa.11.2 = tail call i32 @llvm.umax.i32(i32 %.sroa.19.5, i32 %spec.select156), !dbg !4413 ; 2 uses
  %.sroa.19.1 = tail call i32 @llvm.umin.i32(i32 %.sroa.19.5, i32 %spec.select156), !dbg !4413
  %.sroa.11.4 = tail call i32 @llvm.umax.i32(i32 %.sroa.27.5, i32 %.sroa.11.2), !dbg !4413
  %.sroa.27.4 = tail call i32 @llvm.umin.i32(i32 %.sroa.27.5, i32 %.sroa.11.2), !dbg !4413
  %i.ax = add i32 %.sroa.19.1, %.sroa.27.4, !dbg !4414 ; 2 uses
  %.sroa.0.0.i70 = tail call noundef i32 @llvm.umax.i32(i32 %.sroa.0.3128, i32 %i.ax), !dbg !4415
  %i.ay = mul i32 %i.ax, 3, !dbg !4416
  %i.az = uitofp i32 %i.ay to float, !dbg !4417
  %i.ba = fadd float %i.az, 3.700000e+01, !dbg !4418
  %i.bb = add i32 %.sroa.11.4, %.sroa.0.3128, !dbg !4419
  %i.bc = shl i32 %i.bb, 1, !dbg !4420
  %i.bd = uitofp i32 %i.bc to float, !dbg !4421
  %i.be = fadd float %i.ba, %i.bd, !dbg !4418
  %i.bf = uitofp i32 %.sroa.0.0.i70 to float, !dbg !4422
  %i.bg = fsub float %i.be, %i.bf, !dbg !4418
  br label %bb.r, !dbg !4396

bb.r:                                             ; preds = %bb.i, %bb.p, %.lr.ph, %bb.a, %bb.b, %bb.aa
  %.sroa.0.1 = phi float [ %i.ck, %bb.aa ], [ %i.bg, %.lr.ph ], [ 1.200000e+01, %bb.a ], [ %i.v, %bb.i ], [ %i.as, %bb.p ], [ 1.200000e+01, %bb.b ], !dbg !4423
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !4424
  ret float %.sroa.0.1, !dbg !4425

bb.s:                                             ; preds = %bb.v, %bb.u, %bb.t, %bb.k
  %.lcssa98 = phi i64 [ %i.y, %bb.k ], [ %i.bk, %bb.t ], [ %i.bp, %bb.u ], [ %i.bs, %bb.v ], !dbg !4399
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %.lcssa98, i64 noundef 544, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @21) #29, !dbg !4400
  unreachable, !dbg !4400

bb.t:                                             ; preds = %bb.k
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.y, !dbg !4400
  %i.bi = load i32, ptr %i.bh, align 4, !dbg !4400, !noundef !636 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !4399
  %i.bk = load i64, ptr %i.bj, align 8, !dbg !4399, !noundef !636 ; 3 uses
  %i.bl = icmp ult i64 %i.bk, 544, !dbg !4400
  br i1 %i.bl, label %bb.u, label %bb.s, !dbg !4400

bb.u:                                             ; preds = %bb.t
  %i.bm = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.bk, !dbg !4400
  %i.bn = load i32, ptr %i.bm, align 4, !dbg !4400, !noundef !636 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.b, i64 16, !dbg !4399
  %i.bp = load i64, ptr %i.bo, align 8, !dbg !4399, !noundef !636 ; 3 uses
  %i.bq = icmp ult i64 %i.bp, 544, !dbg !4400
  br i1 %i.bq, label %bb.v, label %bb.s, !dbg !4400

bb.v:                                             ; preds = %bb.u
  %i.br = getelementptr inbounds nuw i8, ptr %i.b, i64 24, !dbg !4399
  %i.bs = load i64, ptr %i.br, align 8, !dbg !4399, !noundef !636 ; 3 uses
  %i.bt = icmp ult i64 %i.bs, 544, !dbg !4400
  br i1 %i.bt, label %.lr.ph, label %bb.s, !dbg !4400

bb.w:                                             ; preds = %.thread
  %i.bu = uitofp i64 %i.d to float, !dbg !4426
  %i.bv = tail call float @llvm.log2.f32(float %i.bu), !dbg !4427
  br label %bb.x, !dbg !4428

bb.x:                                             ; preds = %bb.y, %bb.w
  %.sroa.018.0 = phi float [ %i.by, %bb.y ], [ %i.bv, %bb.w ], !dbg !4429
  %i.bw = getelementptr inbounds nuw i8, ptr %i.a, i64 68
  br label %bb.z, !dbg !4430

bb.y:                                             ; preds = %.thread
  %i.bx = getelementptr inbounds nuw [4 x i8], ptr @_RNvNtNtCsk4ZPsEfLtLH_6brotli3enc11log_table_86logs_8, i64 %i.d, !dbg !4431
  %i.by = load float, ptr %i.bx, align 4, !dbg !4431, !noundef !636
  br label %bb.x, !dbg !4428

bb.z:                                             ; preds = %bb.x, %bb.ad
  %.lcssa8796 = phi i32 [ 0, %bb.x ], [ %.lcssa8794, %bb.ad ] ; 4 uses
  %.sroa.0.291 = phi float [ 0.000000e+00, %bb.x ], [ %.sroa.0.3, %bb.ad ] ; 4 uses
  %.sroa.016.090 = phi i64 [ 1, %bb.x ], [ %.sroa.016.1, %bb.ad ] ; 2 uses
  %.sroa.019.089 = phi i32 [ 0, %bb.x ], [ %.sroa.019.1, %bb.ad ] ; 5 uses
  %.sroa.026.0.idx88 = phi i64 [ 0, %bb.x ], [ %.sroa.026.0.add, %bb.ad ] ; 2 uses
  %.sroa.026.0.ptr = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.026.0.idx88, !dbg !4432
  %.sroa.026.0.add = add nuw nsw i64 %.sroa.026.0.idx88, 4, !dbg !4433 ; 2 uses
  %i.bz = load i32, ptr %.sroa.026.0.ptr, align 4, !dbg !4434, !noundef !636 ; 3 uses
  %i.ca = icmp eq i32 %i.bz, 0, !dbg !4434
  br i1 %i.ca, label %bb.ab, label %bb.ac, !dbg !4434

bb.aa:                                            ; preds = %bb.ad
  store i32 %.lcssa8794, ptr %i.bw, align 4
  %i.cb = shl nuw nsw i64 %.sroa.016.1, 1, !dbg !4435
  %i.cc = add nuw nsw i64 %i.cb, 18, !dbg !4436
  %i.cd = uitofp nneg i64 %i.cc to float, !dbg !4437
  %i.ce = fadd float %.sroa.0.3, %i.cd, !dbg !4438
  %i.cf = call { float, i64 } @_RNvNtNtCsk4ZPsEfLtLH_6brotli3enc8bit_cost15shannon_entropy(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) %i.a, i64 noundef 18, i64 noundef 18), !dbg !4439 ; 2 uses
  %i.cg = extractvalue { float, i64 } %i.cf, 0, !dbg !4439 ; 2 uses
  %i.ch = extractvalue { float, i64 } %i.cf, 1, !dbg !4439
  %i.ci = uitofp i64 %i.ch to float, !dbg !4440   ; 2 uses
  %i.cj = fcmp olt float %i.cg, %i.ci, !dbg !4441
  %spec.store.select = select i1 %i.cj, float %i.ci, float %i.cg, !dbg !4441
  %i.ck = fadd float %i.ce, %spec.store.select, !dbg !4442
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !4443
  br label %bb.r, !dbg !4425

bb.ab:                                            ; preds = %bb.z
  %i.cl = add i32 %.sroa.019.089, 1, !dbg !4444
  br label %bb.ad, !dbg !4445

bb.ac:                                            ; preds = %bb.z
  %i.cm = icmp eq i32 %.sroa.019.089, 0, !dbg !4446
  br i1 %i.cm, label %.loopexit, label %bb.ae, !dbg !4446

bb.ad:                                            ; preds = %.loopexit, %bb.ab
  %.lcssa8794 = phi i32 [ %.lcssa8796, %bb.ab ], [ %.lcssa8795, %.loopexit ] ; 2 uses
  %.sroa.019.1 = phi i32 [ %i.cl, %bb.ab ], [ 0, %.loopexit ], !dbg !4447
  %.sroa.016.1 = phi i64 [ %.sroa.016.090, %bb.ab ], [ %.sroa.0.0.i72, %.loopexit ], !dbg !4423 ; 2 uses
  %.sroa.0.3 = phi float [ %.sroa.0.291, %bb.ab ], [ %i.df, %.loopexit ], !dbg !4448 ; 2 uses
  %i.cn = icmp eq i64 %.sroa.026.0.add, 2176, !dbg !4432
  br i1 %i.cn, label %bb.aa, label %bb.z, !dbg !4430

bb.ae:                                            ; preds = %bb.ac
  %i.co = icmp ult i32 %.sroa.019.089, 3, !dbg !4449
  br i1 %i.co, label %bb.af, label %.lr.ph86.preheader, !dbg !4449

.lr.ph86.preheader:                               ; preds = %bb.ae
  %i.cp = add i32 %.sroa.019.089, -2, !dbg !4450
  br label %.lr.ph86, !dbg !4451

bb.af:                                            ; preds = %bb.ae
  %i.cq = load i32, ptr %i.a, align 4, !dbg !4452, !noundef !636
  %i.cr = add i32 %i.cq, %.sroa.019.089, !dbg !4452
  store i32 %i.cr, ptr %i.a, align 4, !dbg !4452
  br label %.loopexit, !dbg !4453

.lr.ph86:                                         ; preds = %.lr.ph86.preheader, %.lr.ph86
  %i.cs = phi i32 [ %.lcssa8796, %.lr.ph86.preheader ], [ %i.ct, %.lr.ph86 ], !dbg !4454
  %.sroa.0.585 = phi float [ %.sroa.0.291, %.lr.ph86.preheader ], [ %i.cu, %.lr.ph86 ]
  %.sroa.019.384 = phi i32 [ %i.cp, %.lr.ph86.preheader ], [ %i.cv, %.lr.ph86 ]
  %i.ct = add i32 %i.cs, 1, !dbg !4454            ; 2 uses
  %i.cu = fadd float %.sroa.0.585, 3.000000e+00, !dbg !4455 ; 2 uses
  %i.cv = lshr i32 %.sroa.019.384, 3, !dbg !4456  ; 2 uses
  %.not68 = icmp eq i32 %i.cv, 0, !dbg !4451
  br i1 %.not68, label %.loopexit, label %.lr.ph86, !dbg !4451

.loopexit:                                        ; preds = %.lr.ph86, %bb.ac, %bb.af
  %.lcssa8795 = phi i32 [ %.lcssa8796, %bb.ac ], [ %.lcssa8796, %bb.af ], [ %i.ct, %.lr.ph86 ]
  %.sroa.0.4 = phi float [ %.sroa.0.291, %bb.ac ], [ %.sroa.0.291, %bb.af ], [ %i.cu, %.lr.ph86 ], !dbg !4457
  %i.cw = and i32 %i.bz, 65535, !dbg !4458
  %i.cx = zext nneg i32 %i.cw to i64, !dbg !4458
  %i.cy = getelementptr inbounds nuw [4 x i8], ptr @_RNvNtNtCsk4ZPsEfLtLH_6brotli3enc12log_table_167logs_16, i64 %i.cx, !dbg !4459
  %i.cz = load float, ptr %i.cy, align 4, !dbg !4459, !noundef !636
  %i.da = fsub float %.sroa.018.0, %i.cz, !dbg !4460 ; 2 uses
  %i.db = fadd float %i.da, 5.000000e-01, !dbg !4461
  %i.dc = tail call i64 @llvm.fptoui.sat.i64.f32(float %i.db), !dbg !4461
  %.sroa.0.0.i71 = tail call noundef i64 @llvm.umin.i64(i64 %i.dc, i64 15), !dbg !4462 ; 2 uses
  %.sroa.0.0.i72 = tail call noundef i64 @llvm.umax.i64(i64 %.sroa.016.090, i64 %.sroa.0.0.i71), !dbg !4463
  %i.dd = uitofp i32 %i.bz to float, !dbg !4464
  %i.de = fmul float %i.da, %i.dd, !dbg !4464
  %i.df = fadd float %.sroa.0.4, %i.de, !dbg !4465
  %i.dg = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %.sroa.0.0.i71, !dbg !4466 ; 2 uses
  %i.dh = load i32, ptr %i.dg, align 4, !dbg !4466, !noundef !636
  %i.di = add i32 %i.dh, 1, !dbg !4466
  store i32 %i.di, ptr %i.dg, align 4, !dbg !4466
  br label %bb.ad, !dbg !4445
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc5write18default_ipc_fieldsINtNtNtCse4dvU5uQ85g_8indexmap3map4iter6ValuesNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNtNtNtB8_9datatypes5field5FieldEECsfISxE4fmY1Y_14polars_parquet(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noundef nonnull %1, ptr noundef %2) unnamed_addr #0 !dbg !4467 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !4487
  store i64 0, ptr %i.b, align 8, !dbg !4488
  store ptr %1, ptr %i.a, align 8, !dbg !4489, !alias.scope !4482, !noalias !4483
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !4489
  store ptr %2, ptr %i.c, align 8, !dbg !4489, !alias.scope !4482, !noalias !4483
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !4489
  store ptr %i.b, ptr %i.d, align 8, !dbg !4489, !alias.scope !4482, !noalias !4483
  call void @_RNvXNtNtCsgZ49sUHp3tW_5alloc3vec14spec_from_iterINtB4_3VecNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc8IpcFieldEINtB2_12SpecFromIterBU_INtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtCse4dvU5uQ85g_8indexmap3map4iter6ValuesNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNtNtNtB10_9datatypes5field5FieldENCINvNtBW_5write18default_ipc_fieldsB2U_E0EE9from_iterCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.a), !dbg !4490
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !4491
  ret void, !dbg !4492
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow5write17fixed_size_binary24build_statistics_decimalnEB8_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([184 x i8]) align 8 captures(none) dereferenceable(184) %0, ptr noundef nonnull align 8 %1, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(104) %2, i64 noundef %3, ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %4) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !4493 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [16 x i8], align 16               ; 4 uses
  %i.c = alloca [56 x i8], align 8                ; 9 uses
  %i.d = alloca [24 x i8], align 8                ; 6 uses
  %i.e = alloca [16 x i8], align 16               ; 4 uses
  %i.f = alloca [56 x i8], align 8                ; 9 uses
  %i.g = alloca [24 x i8], align 8                ; 8 uses
  %i.h = alloca [104 x i8], align 8               ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !dbg !4980
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.h, ptr noundef nonnull align 8 dereferenceable(104) %2, i64 104, i1 false), !dbg !4980
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 19, !dbg !4981
  %i.j = load i8, ptr %i.i, align 1, !dbg !4981, !range !860, !noundef !636
  %.val.i = load i8, ptr %1, align 8, !dbg !4982, !range !861, !noundef !636
  %i.k = icmp eq i8 %.val.i, 0, !dbg !4983
  br i1 %i.k, label %bb.c, label %bb.b, !dbg !4984

bb.b:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 56, !dbg !4985 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !dbg !4985, !noundef !636
  %.not.i.i = icmp eq ptr %i.m, null, !dbg !4985
  br i1 %.not.i.i, label %_RNvYINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArraynENtB7_5Array10null_countCsfISxE4fmY1Y_14polars_parquet.exit, label %bb.d, !dbg !4986

bb.c:                                             ; preds = %bb.a
  %i.n = getelementptr i8, ptr %1, i64 48, !dbg !4987
  %.val4.i = load i64, ptr %i.n, align 8, !dbg !4987, !noundef !636
  br label %_RNvYINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArraynENtB7_5Array10null_countCsfISxE4fmY1Y_14polars_parquet.exit, !dbg !4988

bb.d:                                             ; preds = %bb.b
  %i.o = invoke noundef i64 @_RNvMs_NtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutableNtB4_6Bitmap10unset_bits(ptr noundef nonnull align 8 %i.l)
          to label %_RNvYINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArraynENtB7_5Array10null_countCsfISxE4fmY1Y_14polars_parquet.exit unwind label %.loopexit.split-lp107.loopexit.split-lp, !dbg !4989

.loopexit.split-lp107:                            ; preds = %.loopexit106, %.loopexit.split-lp107.loopexit.split-lp, %.loopexit.split-lp107.loopexit, %.loopexit.split-lp
  %.pn = phi { ptr, i32 } [ %lpad.phi, %.loopexit.split-lp ], [ %lpad.loopexit108, %.loopexit106 ], [ %lpad.loopexit110, %.loopexit.split-lp107.loopexit ], [ %lpad.loopexit.split-lp111, %.loopexit.split-lp107.loopexit.split-lp ]
  %i.p = getelementptr inbounds nuw i8, ptr %i.h, i64 71, !dbg !4990
  %i.q = load i8, ptr %i.p, align 1, !dbg !4990, !range !832, !alias.scope !4945, !noundef !636
  %i.r = icmp eq i8 %i.q, -40, !dbg !4991
  br i1 %i.r, label %bb.e, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet6schema5types12parquet_type13PrimitiveTypeEBQ_.exit, !dbg !4991, !prof !737

bb.e:                                             ; preds = %.loopexit.split-lp107
  %i.s = getelementptr inbounds nuw i8, ptr %i.h, i64 48, !dbg !4992
  invoke void @_RNvNvXs2_NtCs7VARH73bmU_11compact_str4reprNtB7_4ReprNtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4drop13outlined_drop(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.s)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet6schema5types12parquet_type13PrimitiveTypeEBQ_.exit unwind label %bb.af, !dbg !4993

.loopexit106:                                     ; preds = %_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i.i.i.i.i.i.i
  %lpad.loopexit108 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp107

.loopexit.split-lp107.loopexit:                   ; preds = %_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i.i.i.i.i.us.i.i.i.i
  %lpad.loopexit110 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp107

.loopexit.split-lp107.loopexit.split-lp:          ; preds = %bb.p, %bb.o, %bb.n, %bb.g, %bb.d
  %lpad.loopexit.split-lp111 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp107

_RNvYINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArraynENtB7_5Array10null_countCsfISxE4fmY1Y_14polars_parquet.exit: ; preds = %bb.c, %bb.b, %bb.d
  %.sroa.0.1.i = phi i64 [ %.val4.i, %bb.c ], [ 0, %bb.b ], [ %i.o, %bb.d ], !dbg !4994
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !dbg !4995
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 17, !dbg !4995
  %i.u = load i8, ptr %i.t, align 1, !dbg !4995, !range !860, !noundef !636
  %i.v = trunc nuw i8 %i.u to i1, !dbg !4995
  br i1 %i.v, label %bb.g, label %bb.f, !dbg !4996

bb.f:                                             ; preds = %_RNvYINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArraynENtB7_5Array10null_countCsfISxE4fmY1Y_14polars_parquet.exit
  store i64 -9223372036854775808, ptr %i.g, align 8, !dbg !4997
  br label %bb.s, !dbg !4997

bb.g:                                             ; preds = %_RNvYINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArraynENtB7_5Array10null_countCsfISxE4fmY1Y_14polars_parquet.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !dbg !4998, !noalias !4948
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 40, !dbg !4999
  %i.x = load ptr, ptr %i.w, align 8, !dbg !4999, !noalias !4948, !nonnull !636, !noundef !636 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 48, !dbg !5000
  %i.z = load i64, ptr %i.y, align 8, !dbg !5000, !noalias !4948, !noundef !636
  %i.aa = getelementptr inbounds nuw [16 x i8], ptr %i.x, i64 %i.z, !dbg !5001
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 56, !dbg !5002 ; 2 uses
  %i.ac = load ptr, ptr %i.ab, align 8, !dbg !5002, !noalias !4948, !noundef !636
  %.not.i = icmp eq ptr %i.ac, null, !dbg !5002
  %..i = select i1 %.not.i, ptr null, ptr %i.ab, !dbg !5003
  invoke void @_RNvMs4_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validityINtB5_11ZipValidityRnINtNtNtCscgRAwXFJnXP_4core5slice4iter4IternENtNtB7_8iterator10BitmapIterE17new_with_validityCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.f, ptr noundef nonnull %i.x, ptr noundef nonnull %i.aa, ptr noundef align 8 %..i)
          to label %.noexc11 unwind label %.loopexit.split-lp107.loopexit.split-lp, !dbg !5004

.noexc11:                                         ; preds = %bb.g
  %.sroa.46.sroa.0.0.copyload.i = load ptr, ptr %i.f, align 8, !dbg !5005, !noalias !4948
  %.sroa.46.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8, !dbg !5005
  %.sroa.46.sroa.4.0.copyload.i = load ptr, ptr %.sroa.46.sroa.4.0..sroa_idx.i, align 8, !dbg !5005, !noalias !4948 ; 5 uses
  %.sroa.46.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 16, !dbg !5005
  %.sroa.46.sroa.5.0.copyload.i = load ptr, ptr %.sroa.46.sroa.5.0..sroa_idx.i, align 8, !dbg !5005, !noalias !4948
  %.sroa.46.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 32, !dbg !5005
  %.sroa.46.sroa.7.0.copyload.i = load i64, ptr %.sroa.46.sroa.7.0..sroa_idx.i, align 8, !dbg !5005, !noalias !4948
  %.sroa.46.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 40, !dbg !5005
  %.sroa.46.sroa.8.0.copyload.i = load i64, ptr %.sroa.46.sroa.8.0..sroa_idx.i, align 8, !dbg !5005, !noalias !4948 ; 2 uses
  %.sroa.46.sroa.9.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 48, !dbg !5005
  %.sroa.46.sroa.9.0.copyload.i = load i64, ptr %.sroa.46.sroa.9.0..sroa_idx.i, align 8, !dbg !5005, !noalias !4948 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !5006, !noalias !4948
  br label %.split.us.i.i.i.i, !dbg !5007

.split.us.i.i.i.i:                                ; preds = %.noexc12, %.noexc11
  %.sroa.9.0.copyload32.i.i = phi i64 [ %.sroa.9.0.copyload30.i.i, %.noexc12 ], [ %.sroa.46.sroa.9.0.copyload.i, %.noexc11 ] ; 3 uses
  %.sroa.8.0.copyload27.i.i = phi i64 [ %.sroa.8.0.copyload28.i.i, %.noexc12 ], [ %.sroa.46.sroa.8.0.copyload.i, %.noexc11 ] ; 2 uses
  %i.ad = phi ptr [ %i.au, %.noexc12 ], [ %.sroa.46.sroa.5.0.copyload.i, %.noexc11 ] ; 6 uses
  %i.ae = phi i64 [ %i.av, %.noexc12 ], [ %.sroa.46.sroa.9.0.copyload.i, %.noexc11 ] ; 4 uses
  %.pre.i.i.i.i.i.i13.us.i.i.i.i = phi i64 [ %.pre.i.i.i.i.i.i12.us.i.i.i.i, %.noexc12 ], [ %.sroa.46.sroa.7.0.copyload.i, %.noexc11 ] ; 3 uses
  %i.af = phi i64 [ %i.aw, %.noexc12 ], [ %.sroa.46.sroa.8.0.copyload.i, %.noexc11 ] ; 2 uses
  %i.ag = phi ptr [ %spec.select.i, %.noexc12 ], [ %.sroa.46.sroa.0.0.copyload.i, %.noexc11 ] ; 4 uses
  %.not.i.i.i.i.us.i.i.i.i = icmp eq ptr %i.ag, null, !dbg !5008
  br i1 %.not.i.i.i.i.us.i.i.i.i, label %.split18.us.i.i.i.i, label %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IternENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsfISxE4fmY1Y_14polars_parquet.exit.i.i.i.i.i.us.i.i.i.i, !dbg !5007

_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IternENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsfISxE4fmY1Y_14polars_parquet.exit.i.i.i.i.i.us.i.i.i.i: ; preds = %.split.us.i.i.i.i
  %i.ah = icmp eq ptr %i.ag, %.sroa.46.sroa.4.0.copyload.i, !dbg !5009 ; 2 uses
  %spec.select.idx.i = select i1 %i.ah, i64 0, i64 16, !dbg !5010
  %spec.select.i = getelementptr inbounds nuw i8, ptr %i.ag, i64 %spec.select.idx.i, !dbg !5010 ; 2 uses
  %spec.select6.i = select i1 %i.ah, ptr null, ptr %i.ag, !dbg !5010
  %i.ai = icmp eq i64 %i.af, 0, !dbg !5011
  br i1 %i.ai, label %bb.h, label %._crit_edge.i.i.i.i.i.i.us.i.i.i.i, !dbg !5011

bb.h:                                             ; preds = %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IternENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsfISxE4fmY1Y_14polars_parquet.exit.i.i.i.i.i.us.i.i.i.i
  %i.aj = icmp eq i64 %i.ae, 0, !dbg !5012
  br i1 %i.aj, label %_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i.i.i.i.i.us.i.i.i.i, label %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsfISxE4fmY1Y_14polars_parquet.exit.i.i.i.i.i.i.us.i.i.i.i, !dbg !5012

_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsfISxE4fmY1Y_14polars_parquet.exit.i.i.i.i.i.i.us.i.i.i.i: ; preds = %bb.h
  %.sroa.0.0.i.i.i.i.i.i.i.us.i.i.i.i = tail call noundef i64 @llvm.umin.i64(i64 %i.ae, i64 64), !dbg !5013 ; 2 uses
  %i.ak = sub nuw i64 %i.ae, %.sroa.0.0.i.i.i.i.i.i.i.us.i.i.i.i, !dbg !5014 ; 2 uses
  %.sroa.02.0.copyload.i.i.i.i.i.i.us.i.i.i.i = load i64, ptr %i.ad, align 1, !dbg !5015, !noalias !4949
  %i.al = getelementptr inbounds nuw i8, ptr %i.ad, i64 8, !dbg !5016
  br label %._crit_edge.i.i.i.i.i.i.us.i.i.i.i, !dbg !5017

._crit_edge.i.i.i.i.i.i.us.i.i.i.i:               ; preds = %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsfISxE4fmY1Y_14polars_parquet.exit.i.i.i.i.i.i.us.i.i.i.i, %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IternENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsfISxE4fmY1Y_14polars_parquet.exit.i.i.i.i.i.us.i.i.i.i
  %.sroa.9.0.copyload31.i.i = phi i64 [ %i.ak, %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsfISxE4fmY1Y_14polars_parquet.exit.i.i.i.i.i.i.us.i.i.i.i ], [ %.sroa.9.0.copyload32.i.i, %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IternENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsfISxE4fmY1Y_14polars_parquet.exit.i.i.i.i.i.us.i.i.i.i ]
  %i.am = phi ptr [ %i.al, %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsfISxE4fmY1Y_14polars_parquet.exit.i.i.i.i.i.i.us.i.i.i.i ], [ %i.ad, %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IternENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsfISxE4fmY1Y_14polars_parquet.exit.i.i.i.i.i.us.i.i.i.i ]
  %i.an = phi i64 [ %i.ak, %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsfISxE4fmY1Y_14polars_parquet.exit.i.i.i.i.i.i.us.i.i.i.i ], [ %i.ae, %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IternENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsfISxE4fmY1Y_14polars_parquet.exit.i.i.i.i.i.us.i.i.i.i ]
  %i.ao = phi i64 [ %.sroa.0.0.i.i.i.i.i.i.i.us.i.i.i.i, %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsfISxE4fmY1Y_14polars_parquet.exit.i.i.i.i.i.i.us.i.i.i.i ], [ %i.af, %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IternENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsfISxE4fmY1Y_14polars_parquet.exit.i.i.i.i.i.us.i.i.i.i ], !dbg !5018
  %i.ap = phi i64 [ %.sroa.02.0.copyload.i.i.i.i.i.i.us.i.i.i.i, %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsfISxE4fmY1Y_14polars_parquet.exit.i.i.i.i.i.i.us.i.i.i.i ], [ %.pre.i.i.i.i.i.i13.us.i.i.i.i, %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IternENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsfISxE4fmY1Y_14polars_parquet.exit.i.i.i.i.i.us.i.i.i.i ], !dbg !5019 ; 2 uses
  %i.aq = trunc i64 %i.ap to i8, !dbg !5019
  %i.ar = lshr i64 %i.ap, 1, !dbg !5020
  %i.as = add i64 %i.ao, -1, !dbg !5018           ; 2 uses
  %i.at = and i8 %i.aq, 1, !dbg !5021
  br label %_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i.i.i.i.i.us.i.i.i.i, !dbg !5022

_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i.i.i.i.i.us.i.i.i.i: ; preds = %._crit_edge.i.i.i.i.i.i.us.i.i.i.i, %bb.h
  %.sroa.9.0.copyload30.i.i = phi i64 [ %.sroa.9.0.copyload31.i.i, %._crit_edge.i.i.i.i.i.i.us.i.i.i.i ], [ %.sroa.9.0.copyload32.i.i, %bb.h ] ; 2 uses
  %.sroa.8.0.copyload28.i.i = phi i64 [ %i.as, %._crit_edge.i.i.i.i.i.i.us.i.i.i.i ], [ %.sroa.8.0.copyload27.i.i, %bb.h ] ; 2 uses
  %i.au = phi ptr [ %i.am, %._crit_edge.i.i.i.i.i.i.us.i.i.i.i ], [ %i.ad, %bb.h ] ; 2 uses
  %i.av = phi i64 [ %i.an, %._crit_edge.i.i.i.i.i.i.us.i.i.i.i ], [ 0, %bb.h ]
  %.pre.i.i.i.i.i.i12.us.i.i.i.i = phi i64 [ %i.ar, %._crit_edge.i.i.i.i.i.i.us.i.i.i.i ], [ %.pre.i.i.i.i.i.i13.us.i.i.i.i, %bb.h ] ; 2 uses
  %i.aw = phi i64 [ %i.as, %._crit_edge.i.i.i.i.i.i.us.i.i.i.i ], [ 0, %bb.h ]
  %.sroa.0.0.i8.i.i.i.i.i.us.i.i.i.i = phi i8 [ %i.at, %._crit_edge.i.i.i.i.i.i.us.i.i.i.i ], [ 2, %bb.h ], !dbg !5023
  %i.ax = invoke { i8, ptr } @_RINvMNtCscgRAwXFJnXP_4core6optionINtB3_6OptionbE3zipRnECsfISxE4fmY1Y_14polars_parquet(i8 noundef %.sroa.0.0.i8.i.i.i.i.i.us.i.i.i.i, ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable_or_null(16) %spec.select6.i)
          to label %.noexc12 unwind label %.loopexit.split-lp107.loopexit, !dbg !5024 ; 2 uses

end_hunk_0
