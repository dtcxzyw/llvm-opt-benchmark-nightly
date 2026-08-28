Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/postgres/original/rangetypes_selfuncs?download=true
inline.NumInlined: 48
inline.NumDeleted: 17
begin_hunk_0_@rangesel:bb.a
  br i1 %exitcond.not.i.i, label %bb.ap, label %bb.an, !llvm.loop !6

bb.an:                                            ; preds = %bb.am, %bb.al
  %indvars.iv.i.i = phi i64 [ 0, %bb.al ], [ %indvars.iv.next.i.i, %bb.am ] ; 4 uses
  %i.df = load ptr, ptr %i.de, align 8
  %i.dg = getelementptr inbounds nuw [8 x i8], ptr %i.df, i64 %indvars.iv.i.i
  %i.dh = load i64, ptr %i.dg, align 8
  %i.di = inttoptr i64 %i.dh to ptr
  %i.dj = call ptr @pg_detoast_datum(ptr noundef %i.di) #8
  %i.dk = getelementptr inbounds nuw [16 x i8], ptr %i.dc, i64 %indvars.iv.i.i
  %i.dl = getelementptr inbounds nuw [16 x i8], ptr %i.dd, i64 %indvars.iv.i.i
  call void @range_deserialize(ptr noundef %.026, ptr noundef %i.dj, ptr noundef %i.dk, ptr noundef %i.dl, ptr noundef nonnull %i.a) #8
  %i.dm = load i8, ptr %i.a, align 1, !range !4, !noundef !5
  %i.dn = trunc nuw i8 %i.dm to i1
  br i1 %i.dn, label %bb.ao, label %bb.am

bb.ao:                                            ; preds = %bb.an
  %i.do = call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #9 ; 0 uses
  %i.dp = call i32 (ptr, ...) @errmsg_internal(ptr noundef nonnull @.str.3) #8 ; 0 uses
  call void @errfinish(ptr noundef nonnull @.str.1, i32 noundef 423, ptr noundef nonnull @__func__.calc_hist_selectivity) #8
  unreachable

bb.ap:                                            ; preds = %bb.am
  switch i32 %.028, label %bb.at [
    i32 3892, label %bb.aq
    i32 3890, label %bb.aq
  ]

bb.aq:                                            ; preds = %bb.ap, %bb.ap
  %i.dq = load ptr, ptr %i.bs, align 8            ; 2 uses
  %.not79.i.i = icmp eq ptr %i.dq, null
  br i1 %.not79.i.i, label %calc_hist_selectivity.exit.thread35.i, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.dr = call zeroext i1 @get_attstatsslot(ptr noundef nonnull %2, ptr noundef nonnull %i.dq, i32 noundef 6, i32 noundef 0, i32 noundef 1) #8
  br i1 %i.dr, label %bb.as, label %calc_hist_selectivity.exit.thread35.i

bb.as:                                            ; preds = %bb.ar
  %i.ds = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.dt = load i32, ptr %i.ds, align 8
  %i.du = icmp slt i32 %i.dt, 2
  br i1 %i.du, label %calc_hist_selectivity.exit.i, label %bb.au

bb.at:                                            ; preds = %bb.ap
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %2, i8 0, i64 64, i1 false)
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %bb.as
  call void @range_deserialize(ptr noundef %.026, ptr noundef nonnull %.0, ptr noundef nonnull %3, ptr noundef nonnull %4, ptr noundef nonnull %i.a) #8
  switch i32 %.028, label %bb.bk [
    i32 3884, label %bb.av
    i32 3885, label %bb.aw
    i32 3887, label %bb.ax
    i32 3886, label %bb.ay
    i32 3893, label %bb.az
    i32 3894, label %bb.ba
    i32 3896, label %bb.bb
    i32 3895, label %bb.bc
    i32 3888, label %bb.bd
    i32 3889, label %bb.bd
    i32 3890, label %bb.be
    i32 3892, label %bb.bf
  ]

bb.av:                                            ; preds = %bb.au
  %i.dv = call fastcc double @calc_hist_selectivity_scalar(ptr noundef %.026, ptr noundef %3, ptr noundef %i.dc, i32 noundef %i.cz, i1 noundef zeroext false)
  br label %calc_hist_selectivity.exit.i

bb.aw:                                            ; preds = %bb.au
  %i.dw = call fastcc double @calc_hist_selectivity_scalar(ptr noundef %.026, ptr noundef %3, ptr noundef %i.dc, i32 noundef %i.cz, i1 noundef zeroext true)
  br label %calc_hist_selectivity.exit.i

bb.ax:                                            ; preds = %bb.au
  %i.dx = call fastcc double @calc_hist_selectivity_scalar(ptr noundef %.026, ptr noundef %3, ptr noundef %i.dc, i32 noundef %i.cz, i1 noundef zeroext false)
  %i.dy = fsub double 1.000000e+00, %i.dx
  br label %calc_hist_selectivity.exit.i

bb.ay:                                            ; preds = %bb.au
  %i.dz = call fastcc double @calc_hist_selectivity_scalar(ptr noundef %.026, ptr noundef %3, ptr noundef %i.dc, i32 noundef %i.cz, i1 noundef zeroext true)
  %i.ea = fsub double 1.000000e+00, %i.dz
  br label %calc_hist_selectivity.exit.i

bb.az:                                            ; preds = %bb.au
  %i.eb = call fastcc double @calc_hist_selectivity_scalar(ptr noundef %.026, ptr noundef %3, ptr noundef %i.dd, i32 noundef %i.cz, i1 noundef zeroext false)
  br label %calc_hist_selectivity.exit.i

bb.ba:                                            ; preds = %bb.au
  %i.ec = call fastcc double @calc_hist_selectivity_scalar(ptr noundef %.026, ptr noundef %4, ptr noundef %i.dc, i32 noundef %i.cz, i1 noundef zeroext true)
  %i.ed = fsub double 1.000000e+00, %i.ec
  br label %calc_hist_selectivity.exit.i

bb.bb:                                            ; preds = %bb.au
  %i.ee = call fastcc double @calc_hist_selectivity_scalar(ptr noundef %.026, ptr noundef %3, ptr noundef %i.dc, i32 noundef %i.cz, i1 noundef zeroext false)
  %i.ef = fsub double 1.000000e+00, %i.ee
  br label %calc_hist_selectivity.exit.i

bb.bc:                                            ; preds = %bb.au
  %i.eg = call fastcc double @calc_hist_selectivity_scalar(ptr noundef %.026, ptr noundef %4, ptr noundef %i.dd, i32 noundef %i.cz, i1 noundef zeroext true)
  br label %calc_hist_selectivity.exit.i

bb.bd:                                            ; preds = %bb.au, %bb.au
  %i.eh = call fastcc double @calc_hist_selectivity_scalar(ptr noundef %.026, ptr noundef %3, ptr noundef %i.dd, i32 noundef %i.cz, i1 noundef zeroext false)
  %i.ei = call fastcc double @calc_hist_selectivity_scalar(ptr noundef %.026, ptr noundef %4, ptr noundef %i.dc, i32 noundef %i.cz, i1 noundef zeroext true)
  %i.ej = fsub double 1.000000e+00, %i.ei
  %i.ek = fadd double %i.eh, %i.ej
  %i.el = fsub double 1.000000e+00, %i.ek
  br label %calc_hist_selectivity.exit.i

bb.be:                                            ; preds = %bb.au
  %i.em = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.en = load ptr, ptr %i.em, align 8
  %i.eo = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.ep = load i32, ptr %i.eo, align 8
  %i.eq = call fastcc double @calc_hist_selectivity_contains(ptr noundef %.026, ptr noundef %3, ptr noundef %4, ptr noundef %i.dc, i32 noundef %i.cz, ptr noundef %i.en, i32 noundef %i.ep)
  br label %calc_hist_selectivity.exit.i

bb.bf:                                            ; preds = %bb.au
  %i.er = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.es = load i8, ptr %i.er, align 8, !range !4, !noundef !5
  %i.et = trunc nuw i8 %i.es to i1
  br i1 %i.et, label %bb.bg, label %bb.bh

bb.bg:                                            ; preds = %bb.bf
  %i.eu = call fastcc double @calc_hist_selectivity_scalar(ptr noundef %.026, ptr noundef %4, ptr noundef %i.dd, i32 noundef %i.cz, i1 noundef zeroext true)
  br label %calc_hist_selectivity.exit.i

bb.bh:                                            ; preds = %bb.bf
  %i.ev = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ew = load i8, ptr %i.ev, align 8, !range !4, !noundef !5
  %i.ex = trunc nuw i8 %i.ew to i1
  br i1 %i.ex, label %bb.bi, label %bb.bj

bb.bi:                                            ; preds = %bb.bh
  %i.ey = call fastcc double @calc_hist_selectivity_scalar(ptr noundef %.026, ptr noundef %3, ptr noundef %i.dc, i32 noundef %i.cz, i1 noundef zeroext false)
  %i.ez = fsub double 1.000000e+00, %i.ey
  br label %calc_hist_selectivity.exit.i

bb.bj:                                            ; preds = %bb.bh
  %i.fa = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.fb = load ptr, ptr %i.fa, align 8
  %i.fc = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.fd = load i32, ptr %i.fc, align 8
  %i.fe = call fastcc double @calc_hist_selectivity_contained(ptr noundef %.026, ptr noundef %3, ptr noundef %4, ptr noundef %i.dc, i32 noundef %i.cz, ptr noundef %i.fb, i32 noundef %i.fd)
  br label %calc_hist_selectivity.exit.i

bb.bk:                                            ; preds = %bb.au
  %i.ff = call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #9 ; 0 uses
  %i.fg = call i32 (ptr, ...) @errmsg_internal(ptr noundef nonnull @.str.4, i32 noundef %.028) #8 ; 0 uses
  call void @errfinish(ptr noundef nonnull @.str.1, i32 noundef 579, ptr noundef nonnull @__func__.calc_hist_selectivity) #8
  unreachable

calc_hist_selectivity.exit.thread35.i:            ; preds = %bb.ar, %bb.aq, %bb.ak
  call void @free_attstatsslot(ptr noundef nonnull %1) #8
  br label %.sink.split.i

calc_hist_selectivity.exit.i:                     ; preds = %bb.bj, %bb.bi, %bb.bg, %bb.be, %bb.bd, %bb.bc, %bb.bb, %bb.ba, %bb.az, %bb.ay, %bb.ax, %bb.aw, %bb.av, %bb.as
  %.073.ph.ph.i.i = phi double [ -1.000000e+00, %bb.as ], [ %i.dv, %bb.av ], [ %i.dw, %bb.aw ], [ %i.dy, %bb.ax ], [ %i.ea, %bb.ay ], [ %i.eb, %bb.az ], [ %i.ed, %bb.ba ], [ %i.ef, %bb.bb ], [ %i.eg, %bb.bc ], [ %i.el, %bb.bd ], [ %i.eq, %bb.be ], [ %i.eu, %bb.bg ], [ %i.ez, %bb.bi ], [ %i.fe, %bb.bj ] ; 2 uses
  call void @free_attstatsslot(ptr noundef nonnull %2) #8
  call void @free_attstatsslot(ptr noundef nonnull %1) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #8
  %i.fh = fcmp olt double %.073.ph.ph.i.i, 0.000000e+00
  br i1 %i.fh, label %bb.bl, label %default_range_selectivity.exit.i

.sink.split.i:                                    ; preds = %calc_hist_selectivity.exit.thread35.i, %bb.aj, %bb.ai, %bb.ah, %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #8
  br label %bb.bl

bb.bl:                                            ; preds = %.sink.split.i, %calc_hist_selectivity.exit.i
  %switch.tableidx67 = add i32 %.028, -3884       ; 2 uses
  %i.fi = icmp ult i32 %switch.tableidx67, 13
  br i1 %i.fi, label %switch.lookup68, label %default_range_selectivity.exit.i

switch.lookup68:                                  ; preds = %bb.bl
  %i.fj = zext nneg i32 %switch.tableidx67 to i64
  %switch.gep69 = getelementptr inbounds nuw [8 x i8], ptr @switch.table.rangesel.3, i64 %i.fj
  %switch.load70 = load double, ptr %switch.gep69, align 8
  br label %default_range_selectivity.exit.i

default_range_selectivity.exit.i:                 ; preds = %bb.bl, %switch.lookup68, %calc_hist_selectivity.exit.i
  %.028.i = phi double [ %.073.ph.ph.i.i, %calc_hist_selectivity.exit.i ], [ %switch.load70, %switch.lookup68 ], [ 1.000000e-02, %bb.bl ] ; 2 uses
  %i.fk = icmp eq i32 %.028, 3892
  %i.fl = fsub double 1.000000e+00, %.1.i         ; 2 uses
  br i1 %i.fk, label %bb.bm, label %bb.bn

bb.bm:                                            ; preds = %default_range_selectivity.exit.i
  %i.fm = call double @llvm.fmuladd.f64(double %i.fl, double %.028.i, double %.1.i)
  br label %bb.bo

bb.bn:                                            ; preds = %default_range_selectivity.exit.i
  %i.fn = fmul double %i.fl, %.028.i
  br label %bb.bo

bb.bo:                                            ; preds = %bb.aa, %bb.aa, %bb.aa, %bb.aa, %bb.aa, %bb.aa, %bb.ab, %bb.ac, %bb.ad, %bb.bm, %bb.bn
  %.026.i = phi double [ %i.fn, %bb.bn ], [ %.1.i, %bb.ab ], [ 1.000000e+00, %bb.ac ], [ %i.cn, %bb.ad ], [ %i.fm, %bb.bm ], [ 0.000000e+00, %bb.aa ], [ 0.000000e+00, %bb.aa ], [ 0.000000e+00, %bb.aa ], [ 0.000000e+00, %bb.aa ], [ 0.000000e+00, %bb.aa ], [ 0.000000e+00, %bb.aa ]
  %i.fo = fsub double 1.000000e+00, %.0.i45
  %i.fp = fmul double %i.fo, %.026.i              ; 3 uses
  %i.fq = fcmp olt double %i.fp, 0.000000e+00
  %9 = fcmp ogt double %i.fp, 1.000000e+00
  %spec.store.select.i = select i1 %9, double 1.000000e+00, double %i.fp
  %.127.i = select i1 %i.fq, double 0.000000e+00, double %spec.store.select.i
  br label %calc_rangesel.exit

.thread:                                          ; preds = %bb.q, %bb.s
  %switch.tableidx71 = add i32 %.028, -3884       ; 2 uses
  %i.fr = icmp ult i32 %switch.tableidx71, 13
  br i1 %i.fr, label %switch.lookup72, label %calc_rangesel.exit

switch.lookup72:                                  ; preds = %.thread
  %i.fs = zext nneg i32 %switch.tableidx71 to i64
  %switch.gep73 = getelementptr inbounds nuw [8 x i8], ptr @switch.table.rangesel.4, i64 %i.fs
  %switch.load74 = load double, ptr %switch.gep73, align 8
  br label %calc_rangesel.exit

calc_rangesel.exit:                               ; preds = %.thread, %switch.lookup72, %bb.o, %bb.n, %bb.bo
  %.027 = phi double [ %.127.i, %bb.bo ], [ %switch.load74, %switch.lookup72 ], [ 5.000000e-03, %bb.n ], [ 5.000000e-03, %bb.o ], [ 1.000000e-02, %.thread ] ; 2 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.fu = load ptr, ptr %i.ft, align 8            ; 2 uses
  %.not40 = icmp eq ptr %i.fu, null
  br i1 %.not40, label %bb.bq, label %bb.bp

bb.bp:                                            ; preds = %calc_rangesel.exit
  %i.fv = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.fw = load ptr, ptr %i.fv, align 8
  call void %i.fw(ptr noundef nonnull %i.fu) #8
  br label %bb.bq

bb.bq:                                            ; preds = %calc_rangesel.exit, %bb.bp
  %10 = fcmp olt double %.027, 0.000000e+00
  %i.fx = bitcast double %.027 to i64
  %i.fy = select i1 %10, i64 0, i64 %i.fx
  br label %default_range_selectivity.exit

switch.lookup:                                    ; preds = %bb.b
  %i.fz = zext nneg i32 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table.rangesel.2, i64 %i.fz
  %switch.load = load i64, ptr %switch.gep, align 8
  br label %default_range_selectivity.exit

switch.lookup64:                                  ; preds = %bb.f
  %i.ga = zext nneg i32 %switch.tableidx63 to i64
  %switch.gep65 = getelementptr inbounds nuw [8 x i8], ptr @switch.table.rangesel.2, i64 %i.ga
  %switch.load66 = load i64, ptr %switch.gep65, align 8
  br label %default_range_selectivity.exit

default_range_selectivity.exit:                   ; preds = %bb.b, %bb.f, %switch.lookup64, %switch.lookup, %bb.l, %bb.m, %bb.h, %bb.i, %bb.bq
  %.029 = phi i64 [ 4576918229304087675, %bb.l ], [ %i.fy, %bb.bq ], [ 0, %bb.h ], [ %switch.load, %switch.lookup ], [ 0, %bb.i ], [ 4576918229304087675, %bb.m ], [ %switch.load66, %switch.lookup64 ], [ 4576918229304087675, %bb.f ], [ 4576918229304087675, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #8
  ret i64 %.029
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare zeroext i1 @get_restriction_variable(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @get_commutator(i32 noundef) local_unnamed_addr #2

declare ptr @range_get_typcache(ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @range_serialize(ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

declare ptr @pg_detoast_datum(ptr noundef) local_unnamed_addr #2

declare zeroext i1 @get_attstatsslot(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold
declare zeroext i1 @errstart_cold(i32 noundef, ptr noundef) local_unnamed_addr #3

declare i32 @errmsg_internal(ptr noundef, ...) local_unnamed_addr #2

declare void @errfinish(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare void @free_attstatsslot(ptr noundef) local_unnamed_addr #2

declare signext i8 @range_get_flags(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #4

declare zeroext i1 @statistic_proc_security_check(ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @palloc_mul(i64 noundef, i64 noundef) local_unnamed_addr #2

declare void @range_deserialize(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #5

; Function Attrs: nounwind uwtable
define internal fastcc double @calc_hist_selectivity_scalar(ptr noundef %0, ptr noundef nonnull %1, ptr noundef %2, i32 noundef range(i32 2, -2147483648) %3, i1 noundef zeroext %4) unnamed_addr #0 {
bb.a:
  %i.a = add nsw i32 %3, -1                       ; 3 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %bb.a
  %.020.i = phi i32 [ %i.a, %bb.a ], [ %.1.i, %bb.b ] ; 2 uses
  %.01519.i = phi i32 [ -1, %bb.a ], [ %.116.i, %bb.b ] ; 2 uses
  %i.b = add nsw i32 %.020.i, 1
  %i.c = add i32 %i.b, %.01519.i
  %i.d = sdiv i32 %i.c, 2                         ; 3 uses
  %i.e = sext i32 %i.d to i64
  %i.f = getelementptr inbounds [16 x i8], ptr %2, i64 %i.e
  %i.g = tail call i32 @range_cmp_bounds(ptr noundef %0, ptr noundef %i.f, ptr noundef nonnull %1) #8 ; 2 uses
  %i.h = icmp slt i32 %i.g, 0
  %i.i = icmp eq i32 %i.g, 0
  %or.cond.i = and i1 %4, %i.i
  %or.cond18.i = or i1 %i.h, %or.cond.i           ; 2 uses
  %i.j = add nsw i32 %i.d, -1
  %.116.i = select i1 %or.cond18.i, i32 %i.d, i32 %.01519.i ; 6 uses
  %.1.i = select i1 %or.cond18.i, i32 %.020.i, i32 %i.j ; 2 uses
  %i.k = icmp slt i32 %.116.i, %.1.i
  br i1 %i.k, label %bb.b, label %rbound_bsearch.exit, !llvm.loop !8

rbound_bsearch.exit:                              ; preds = %bb.b
  %i.l = tail call i32 @llvm.smax.i32(i32 %.116.i, i32 0)
  %i.m = uitofp nneg i32 %i.l to double
  %i.n = uitofp nneg i32 %i.a to double           ; 2 uses
  %i.o = fdiv double %i.m, %i.n                   ; 2 uses
  %i.p = icmp sgt i32 %.116.i, -1
  %i.q = icmp slt i32 %.116.i, %i.a
  %or.cond = select i1 %i.p, i1 %i.q, i1 false
  br i1 %or.cond, label %bb.c, label %bb.n

bb.c:                                             ; preds = %rbound_bsearch.exit
  %i.r = zext nneg i32 %.116.i to i64
  %i.s = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %i.r ; 5 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 400 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 408
  %i.w = load i32, ptr %i.v, align 8
  %.not.i = icmp eq i32 %i.w, 0
  %i.x = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.y = load i8, ptr %i.x, align 8, !range !4, !noundef !5
  %i.z = trunc nuw i8 %i.y to i1
  %i.aa = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  %i.ab = load i8, ptr %i.aa, align 8, !range !4, !noundef !5
  %i.ac = trunc nuw i8 %i.ab to i1                ; 2 uses
  br i1 %i.z, label %bb.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ae = load i8, ptr %i.ad, align 8, !range !4, !noundef !5
  %i.af = trunc nuw i8 %i.ae to i1                ; 2 uses
  br i1 %i.ac, label %bb.l, label %bb.e

bb.e:                                             ; preds = %bb.d
  %brmerge.i = select i1 %i.af, i1 true, i1 %.not.i
  br i1 %brmerge.i, label %get_position.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 300 ; 2 uses
  %i.ah = load i32, ptr %i.ag, align 4
  %i.ai = load i64, ptr %i.t, align 8
  %i.aj = load i64, ptr %i.s, align 8
  %i.ak = tail call i64 @FunctionCall2Coll(ptr noundef nonnull %i.u, i32 noundef %i.ah, i64 noundef %i.ai, i64 noundef %i.aj) #8
  %i.al = bitcast i64 %i.ak to double             ; 2 uses
  %or.cond.i20 = fcmp ule double %i.al, 0.000000e+00
  br i1 %or.cond.i20, label %get_position.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.am = load i32, ptr %i.ag, align 4
  %i.an = load i64, ptr %1, align 8
  %i.ao = load i64, ptr %i.s, align 8
  %i.ap = tail call i64 @FunctionCall2Coll(ptr noundef nonnull %i.u, i32 noundef %i.am, i64 noundef %i.an, i64 noundef %i.ao) #8
  %i.aq = bitcast i64 %i.ap to double
  %i.ar = fdiv double %i.aq, %i.al                ; 3 uses
  %i.as = fcmp uno double %i.ar, 0.000000e+00
  br i1 %i.as, label %get_position.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.at = fcmp ogt double %i.ar, 0.000000e+00
  %i.au = select i1 %i.at, double %i.ar, double 0.000000e+00 ; 2 uses
  %i.av = fcmp olt double %i.au, 1.000000e+00
  %i.aw = select i1 %i.av, double %i.au, double 1.000000e+00
  br label %get_position.exit

bb.i:                                             ; preds = %bb.c
  br i1 %i.ac, label %get_position.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ay = load i8, ptr %i.ax, align 8, !range !4, !noundef !5
  %i.az = trunc nuw i8 %i.ay to i1
  br i1 %i.az, label %bb.k, label %get_position.exit

bb.k:                                             ; preds = %bb.j
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 10
  %i.bb = load i8, ptr %i.ba, align 2, !range !4, !noundef !5
  %i.bc = trunc nuw i8 %i.bb to i1
  %i.bd = select i1 %i.bc, double 0.000000e+00, double 1.000000e+00
  br label %get_position.exit

bb.l:                                             ; preds = %bb.d
  br i1 %i.af, label %bb.m, label %get_position.exit

bb.m:                                             ; preds = %bb.l
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 10
  %i.bf = load i8, ptr %i.be, align 2, !range !4, !noundef !5
  %i.bg = trunc nuw i8 %i.bf to i1
  %i.bh = select i1 %i.bg, double 0.000000e+00, double 1.000000e+00
  br label %get_position.exit

get_position.exit:                                ; preds = %bb.e, %bb.f, %bb.g, %bb.h, %bb.i, %bb.j, %bb.k, %bb.l, %bb.m
  %.1.i21 = phi double [ %i.bh, %bb.m ], [ %i.bd, %bb.k ], [ 5.000000e-01, %bb.g ], [ 5.000000e-01, %bb.e ], [ 5.000000e-01, %bb.i ], [ 5.000000e-01, %bb.f ], [ %i.aw, %bb.h ], [ 1.000000e+00, %bb.j ], [ 0.000000e+00, %bb.l ]
  %i.bi = fdiv double %.1.i21, %i.n
  %i.bj = fadd double %i.o, %i.bi
  br label %bb.n

bb.n:                                             ; preds = %get_position.exit, %rbound_bsearch.exit
  %.0 = phi double [ %i.bj, %get_position.exit ], [ %i.o, %rbound_bsearch.exit ]
  ret double %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc double @calc_hist_selectivity_contains(ptr noundef %0, ptr noundef nonnull %1, ptr nofree noundef nonnull readonly captures(none) %2, ptr noundef %3, i32 noundef range(i32 2, -2147483648) %4, ptr nofree noundef readonly captures(none) %5, i32 noundef %6) unnamed_addr #0 {
bb.a:
  %i.a = add nsw i32 %4, -1                       ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %bb.a
  %.020.i = phi i32 [ %i.a, %bb.a ], [ %.1.i, %bb.b ] ; 2 uses
  %.01519.i = phi i32 [ -1, %bb.a ], [ %.116.i, %bb.b ] ; 2 uses
  %i.b = add nsw i32 %.020.i, 1
  %i.c = add i32 %i.b, %.01519.i
  %i.d = sdiv i32 %i.c, 2                         ; 3 uses
end_hunk_0
