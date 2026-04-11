inline.NumInlined: 4
begin_hunk_0_@timestatus:bb.a
  %.sink.i22 = phi double [ %i.ab, %bb.f ], [ 0.000000e+00, %bb.e ]
  %i.ac = fpext float %i.t to double
  %i.ad = fadd double %i.ac, 5.000000e-01
  %4 = insertelement <2 x float> poison, float %i.r, i64 0
  %5 = insertelement <2 x float> %4, float %i.q, i64 1
  %6 = fpext <2 x float> %5 to <2 x double>
  %7 = fadd <2 x double> %6, splat (double 5.000000e-01)
  br label %ts_calc_times.exit23

ts_calc_times.exit23:                             ; preds = %bb.d, %bb.g
  %.sroa.8.0.a = phi double [ %.sink.i22, %bb.g ], [ 0.000000e+00, %bb.d ]
  %.sroa.5.0.a = phi double [ %i.ad, %bb.g ], [ 5.000000e-01, %bb.d ] ; 2 uses
  %8 = phi <2 x double> [ %7, %bb.g ], [ splat (double 5.000000e-01), %bb.d ] ; 2 uses
  %i.ae = icmp sgt i64 %2, 1
  br i1 %i.ae, label %bb.h, label %ts_calc_times.exit23._crit_edge

end_hunk_0
begin_hunk_1_@timestatus:bb.a
  %i.au = trunc nsw i64 %i.at to i32
  %i.av = srem i64 %i.ao, 60
  %i.aw = trunc nsw i64 %i.av to i32
  %i.ax = fptosi double %.sroa.5.0.a to i64       ; 2 uses
  %i.ay = sdiv i64 %i.ax, 3600
  %i.az = trunc i64 %i.ay to i32
  %i.ba = fdiv double %.sroa.5.0.a, 6.000000e+01
  %i.bb = fptosi double %i.ba to i64
  %i.bc = srem i64 %i.bb, 60
  %i.bd = trunc nsw i64 %i.bc to i32
end_hunk_1
begin_hunk_2_@timestatus:bb.a
  %i.bo = trunc nsw i64 %i.bn to i32
  %i.bp = srem i64 %i.bi, 60
  %i.bq = trunc nsw i64 %i.bp to i32
  %9 = extractelement <2 x double> %8, i64 1      ; 2 uses
  %i.br = fptosi double %9 to i64                 ; 2 uses
  %i.bs = sdiv i64 %i.br, 3600
  %i.bt = trunc i64 %i.bs to i32
  %i.bu = fdiv double %9, 6.000000e+01
  %i.bv = fptosi double %i.bu to i64
  %i.bw = srem i64 %i.bv, 60
  %i.bx = trunc nsw i64 %i.bw to i32
  %i.by = srem i64 %i.br, 60
  %i.bz = trunc nsw i64 %i.by to i32
  %10 = extractelement <2 x double> %8, i64 0     ; 2 uses
  %i.ca = fptosi double %10 to i64                ; 2 uses
  %i.cb = sdiv i64 %i.ca, 3600
  %i.cc = trunc i64 %i.cb to i32
  %i.cd = fdiv double %10, 6.000000e+01
  %i.ce = fptosi double %i.cd to i64
  %i.cf = srem i64 %i.ce, 60
  %i.cg = trunc nsw i64 %i.cf to i32
  %i.ch = srem i64 %i.ca, 60
  %i.ci = trunc nsw i64 %i.ch to i32
  %i.cj = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.al, ptr noundef nonnull @.str.1, i64 noundef %1, i64 noundef %.pre-phi, i32 noundef %.0, i32 noundef %i.aq, i32 noundef %i.au, i32 noundef %i.aw, i32 noundef %i.az, i32 noundef %i.bd, i32 noundef %i.bf, i32 noundef %i.bk, i32 noundef %i.bo, i32 noundef %i.bq, i32 noundef %i.bt, i32 noundef %i.bx, i32 noundef %i.bz, double noundef %.sroa.8.0.a, i32 noundef %i.cc, i32 noundef %i.cg, i32 noundef %i.ci) #10 ; 0 uses
  %i.ck = load ptr, ptr @stderr, align 8, !tbaa !17
  %i.cl = call i32 @fflush(ptr noundef %i.ck)     ; 0 uses
  br label %bb.j
end_hunk_2
