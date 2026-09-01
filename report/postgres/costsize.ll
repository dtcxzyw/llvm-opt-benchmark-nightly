Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/postgres/original/costsize?download=true
inline.NumInlined: 163
inline.NumDeleted: 26
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@cost_samplescan:bb.a
  %i.r = getelementptr inbounds [8 x i8], ptr %.val, i64 %i.q
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.in = phi ptr [ %i.h, %bb.b ], [ %i.r, %bb.c ]
  %i.s = load ptr, ptr %.in, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 48
  %i.u = load ptr, ptr %i.t, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 4
  %i.w = load i32, ptr %i.v, align 4
  %i.x = tail call ptr @GetTsmRoutine(i32 noundef %i.w) #14
  %.not41 = icmp eq ptr %3, null                  ; 2 uses
  %spec.select52 = select i1 %.not41, ptr %2, ptr %3
  %.sink.in = getelementptr inbounds nuw i8, ptr %spec.select52, i64 16
  %.sink = load double, ptr %.sink.in, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  store double %.sink, ptr %i.y, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 116
  %i.aa = load i32, ptr %i.z, align 4
  call void @get_tablespace_page_costs(i32 noundef %i.aa, ptr noundef nonnull %i.b, ptr noundef nonnull %i.a) #14
  %i.ab = getelementptr inbounds nuw i8, ptr %i.x, i64 48
  %i.ac = load ptr, ptr %i.ab, align 8
  %i.ad = load double, ptr %i.b, align 8
  %i.ae = load double, ptr %i.a, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 192
  %i.ag = load i32, ptr %i.af, align 8
  br i1 %.not41, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ah = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.ai = load ptr, ptr %i.ah, align 8            ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #14
  store ptr %1, ptr %4, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ai, i64 4 ; 2 uses
  %.not.i.i = icmp eq ptr %i.ai, null
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aj, i8 0, i64 16, i1 false)
  br i1 %.not.i.i, label %cost_qual_eval.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.e
  %i.al = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  %i.am = load i32, ptr %i.ak, align 4
  %i.an = icmp sgt i32 %i.am, 0
  br i1 %i.an, label %.lr.ph14.i.i, label %cost_qual_eval.exit.i

.lr.ph14.i.i:                                     ; preds = %.lr.ph.i.i, %.lr.ph14.i.i
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %.lr.ph14.i.i ], [ 0, %.lr.ph.i.i ] ; 2 uses
  %i.ao = load ptr, ptr %i.al, align 8
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %indvars.iv.i.i
  %i.aq = load ptr, ptr %i.ap, align 8
  %i.ar = call zeroext i1 @cost_qual_eval_walker(ptr noundef %i.aq, ptr noundef nonnull %4) ; 0 uses
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %i.as = load i32, ptr %i.ak, align 4
  %i.at = sext i32 %i.as to i64
  %i.au = icmp slt i64 %indvars.iv.next.i.i, %i.at
  br i1 %i.au, label %.lr.ph14.i.i, label %cost_qual_eval.exit.i.loopexit

cost_qual_eval.exit.i.loopexit:                   ; preds = %.lr.ph14.i.i
  %i.av = load <2 x double>, ptr %i.aj, align 8
  br label %cost_qual_eval.exit.i

cost_qual_eval.exit.i:                            ; preds = %cost_qual_eval.exit.i.loopexit, %.lr.ph.i.i, %bb.e
  %i.aw = phi <2 x double> [ %i.av, %cost_qual_eval.exit.i.loopexit ], [ zeroinitializer, %.lr.ph.i.i ], [ zeroinitializer, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #14
  %i.ax = getelementptr inbounds nuw i8, ptr %2, i64 328
  %i.ay = load <2 x double>, ptr %i.ax, align 8
  %i.az = fadd <2 x double> %i.aw, %i.ay
  br label %get_restriction_qual_cost.exit

bb.f:                                             ; preds = %bb.d
  %i.ba = getelementptr inbounds nuw i8, ptr %2, i64 328
  %i.bb = load <2 x double>, ptr %i.ba, align 8
  br label %get_restriction_qual_cost.exit

get_restriction_qual_cost.exit:                   ; preds = %cost_qual_eval.exit.i, %bb.f
  %i.bc = phi <2 x double> [ %i.bb, %bb.f ], [ %i.az, %cost_qual_eval.exit.i ]
  %i.bd = load double, ptr @cpu_tuple_cost, align 8
  %i.be = getelementptr inbounds nuw i8, ptr %2, i64 200
  %i.bf = load double, ptr %i.be, align 8
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bh = load ptr, ptr %i.bg, align 8            ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 24
  %i.bj = load double, ptr %i.bi, align 8
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bh, i64 32
  %i.bl = load double, ptr %i.bk, align 8
  %i.bm = load double, ptr %i.y, align 8
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.bo = load i32, ptr %i.bn, align 4
  %i.bp = icmp eq i32 %i.bo, 0
  %spec.select = select i1 %i.bp, i64 -262145, i64 -1
  %.not42 = icmp eq ptr %i.ac, null
  %i.bq = select i1 %.not42, double %i.ae, double %i.ad
  %i.br = uitofp i32 %i.ag to double
  %i.bs = call double @llvm.fmuladd.f64(double %i.bq, double %i.br, double 0.000000e+00)
  %i.bt = insertelement <2 x double> <double 0.000000e+00, double poison>, double %i.bd, i64 1
  %i.bu = fadd <2 x double> %i.bc, %i.bt          ; 2 uses
  %i.bv = extractelement <2 x double> %i.bu, i64 1
  %i.bw = call double @llvm.fmuladd.f64(double %i.bv, double %i.bf, double %i.bs)
  %i.bx = call double @llvm.fmuladd.f64(double %i.bl, double %i.bm, double %i.bw)
  %i.by = extractelement <2 x double> %i.bu, i64 0
  %i.bz = fadd double %i.by, %i.bj                ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.cb = load i64, ptr %i.ca, align 8
  %i.cc = or i64 %spec.select, %i.cb
  %i.cd = icmp ne i64 %i.cc, -1
  %i.ce = zext i1 %i.cd to i32
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i32 %i.ce, ptr %i.cf, align 8
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 56
  store double %i.bz, ptr %i.cg, align 8
  %i.ch = fadd double %i.bz, %i.bx
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 64
  store double %i.ch, ptr %i.ci, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  ret void
}

declare ptr @GetTsmRoutine(i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @cost_gather(ptr nofree noundef captures(none) initializes((40, 52), (56, 72)) %0, ptr nofree noundef readnone captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(address_is_null) %3, ptr nofree noundef readonly captures(address_is_null) %4) local_unnamed_addr #5 {
bb.a:
  %.not = icmp eq ptr %4, null
  br i1 %.not, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %.not23 = icmp eq ptr %3, null
  br i1 %.not23, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 16
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 16
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.c, %bb.d
  %.sink.in = phi ptr [ %i.a, %bb.c ], [ %i.b, %bb.d ], [ %4, %bb.a ]
  %.sink = load double, ptr %.sink.in, align 8    ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  store double %.sink, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.e = load ptr, ptr %i.d, align 8              ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 56
  %i.g = load double, ptr %i.f, align 8           ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 64
  %i.i = load double, ptr %i.h, align 8
  %i.j = fsub double %i.i, %i.g
  %i.k = load double, ptr @parallel_setup_cost, align 8
  %i.l = fadd double %i.g, %i.k                   ; 2 uses
  %i.m = load double, ptr @parallel_tuple_cost, align 8
  %i.n = tail call double @llvm.fmuladd.f64(double %i.m, double %.sink, double %i.j)
  %i.o = getelementptr inbounds nuw i8, ptr %i.e, i64 48
  %i.p = load i32, ptr %i.o, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.r = load i64, ptr %i.q, align 8
  %i.s = and i64 %i.r, 16384
  %.not24 = icmp eq i64 %i.s, 0
  %i.t = zext i1 %.not24 to i32
  %i.u = add i32 %i.p, %i.t
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i32 %i.u, ptr %i.v, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 56
  store double %i.l, ptr %i.w, align 8
  %i.x = fadd double %i.l, %i.n
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 64
  store double %i.x, ptr %i.y, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, errnomem: readwrite, target_mem: none) uwtable
define dso_local void @cost_gather_merge(ptr nofree noundef captures(none) initializes((40, 52), (56, 72)) %0, ptr nofree noundef readnone captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(address_is_null) %3, i32 noundef %4, double noundef %5, double noundef %6, ptr nofree noundef readonly captures(address_is_null) %7) local_unnamed_addr #6 {
bb.a:
  %.not = icmp eq ptr %7, null
  br i1 %.not, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %.not34 = icmp eq ptr %3, null
  br i1 %.not34, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 16
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 16
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.c, %bb.d
  %.sink.in = phi ptr [ %i.a, %bb.c ], [ %i.b, %bb.d ], [ %7, %bb.a ]
  %.sink = load double, ptr %.sink.in, align 8    ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  store double %.sink, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.e = load i32, ptr %i.d, align 8
  %i.f = sitofp i32 %i.e to double
  %i.g = fadd double %i.f, 1.000000e+00           ; 2 uses
  %i.h = tail call double @log(double noundef %i.g) #14
  %8 = fdiv double %i.h, f0x3FE62E42FEFA39EC
  %9 = load double, ptr @cpu_operator_cost, align 8 ; 2 uses
  %i.i = fmul double %9, 2.000000e+00
  %i.j = insertelement <2 x double> poison, double %i.g, i64 0
  %i.k = insertelement <2 x double> %i.j, double %.sink, i64 1
  %i.l = insertelement <2 x double> poison, double %i.i, i64 0
  %i.m = shufflevector <2 x double> %i.l, <2 x double> poison, <2 x i32> zeroinitializer
  %i.n = fmul <2 x double> %i.k, %i.m
  %i.o = insertelement <2 x double> poison, double %8, i64 0
  %i.p = shufflevector <2 x double> %i.o, <2 x double> poison, <2 x i32> zeroinitializer
  %i.q = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.n, <2 x double> %i.p, <2 x double> zeroinitializer) ; 2 uses
  %i.r = extractelement <2 x double> %i.q, i64 1
  %i.s = tail call double @llvm.fmuladd.f64(double %9, double %.sink, double %i.r)
  %i.t = load double, ptr @parallel_setup_cost, align 8
  %i.u = extractelement <2 x double> %i.q, i64 0
  %i.v = fadd double %i.t, %i.u                   ; 2 uses
  %i.w = load double, ptr @parallel_tuple_cost, align 8
  %i.x = fmul double %.sink, %i.w
  %i.y = tail call double @llvm.fmuladd.f64(double %i.x, double 1.050000e+00, double %i.s)
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.aa = load ptr, ptr %i.z, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 48
  %i.ac = load i32, ptr %i.ab, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.ae = load i64, ptr %i.ad, align 8
  %i.af = and i64 %i.ae, 32768
  %.not35 = icmp eq i64 %i.af, 0
  %i.ag = zext i1 %.not35 to i32
  %i.ah = add i32 %i.ac, %i.ag
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i32 %i.ah, ptr %i.ai, align 8
  %i.aj = fadd double %5, %i.v
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 56
  store double %i.aj, ptr %i.ak, align 8
  %i.al = fadd double %i.v, %i.y
  %i.am = fadd double %6, %i.al
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 64
  store double %i.am, ptr %i.an, align 8
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @log(double noundef) local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define dso_local void @cost_index(ptr noundef initializes((40, 48)) %0, ptr noundef %1, double noundef %2, i1 noundef zeroext %3) local_unnamed_addr #2 {
bb.a:
  %4 = alloca %struct.cost_qual_eval_context, align 8 ; 6 uses
  %i.a = alloca double, align 8                   ; 4 uses
  %i.b = alloca double, align 8                   ; 4 uses
  %i.c = alloca double, align 8                   ; 6 uses
  %i.d = alloca double, align 8                   ; 4 uses
  %i.e = alloca double, align 8                   ; 4 uses
  %i.f = alloca double, align 8                   ; 5 uses
  %i.g = alloca double, align 8                   ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.i = load ptr, ptr %i.h, align 8              ; 5 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.k = load ptr, ptr %i.j, align 8              ; 11 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.m = load i32, ptr %i.l, align 4
  %i.n = icmp eq i32 %i.m, 360                    ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #14
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8              ; 4 uses
  %.not = icmp eq ptr %i.p, null
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.i, i64 160 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 3 uses
  br i1 %.not, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.t = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.u = load double, ptr %i.t, align 8
  store double %i.u, ptr %i.q, align 8
  %i.v = load ptr, ptr %i.r, align 8              ; 3 uses
  %i.w = load ptr, ptr %i.s, align 8              ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.v, i64 4 ; 2 uses
  %.not.i = icmp eq ptr %i.v, null
  br i1 %.not.i, label %extract_nonindex_conditions.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b
  %i.y = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %i.z = load i32, ptr %i.x, align 4
  %i.aa = icmp sgt i32 %i.z, 0
  br i1 %i.aa, label %.lr.ph22.i, label %extract_nonindex_conditions.exit

.lr.ph22.i:                                       ; preds = %.lr.ph.i, %bb.e
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.e ], [ 0, %.lr.ph.i ] ; 2 uses
  %.0121521.i = phi ptr [ %.1.i, %bb.e ], [ null, %.lr.ph.i ] ; 3 uses
  %i.ab = load ptr, ptr %i.y, align 8
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %indvars.iv.i
  %i.ad = load ptr, ptr %i.ac, align 8            ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 18
  %i.af = load i8, ptr %i.ae, align 2, !range !4, !noundef !5
  %i.ag = trunc nuw i8 %i.af to i1
  br i1 %i.ag, label %bb.e, label %bb.c

bb.c:                                             ; preds = %.lr.ph22.i
  %i.ah = tail call zeroext i1 @is_redundant_with_indexclauses(ptr noundef nonnull %i.ad, ptr noundef %i.w) #14
  br i1 %i.ah, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ai = tail call ptr @lappend(ptr noundef %.0121521.i, ptr noundef nonnull %i.ad) #14
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %.lr.ph22.i
  %.1.i = phi ptr [ %i.ai, %bb.d ], [ %.0121521.i, %.lr.ph22.i ], [ %.0121521.i, %bb.c ] ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.aj = load i32, ptr %i.x, align 4
  %i.ak = sext i32 %i.aj to i64
  %i.al = icmp slt i64 %indvars.iv.next.i, %i.ak
  br i1 %i.al, label %.lr.ph22.i, label %extract_nonindex_conditions.exit.loopexit

extract_nonindex_conditions.exit.loopexit:        ; preds = %bb.e
  %.pre = load ptr, ptr %i.o, align 8
  %.pre152 = load ptr, ptr %i.s, align 8
  br label %extract_nonindex_conditions.exit

extract_nonindex_conditions.exit:                 ; preds = %extract_nonindex_conditions.exit.loopexit, %bb.b, %.lr.ph.i
  %i.am = phi ptr [ %i.w, %bb.b ], [ %i.w, %.lr.ph.i ], [ %.pre152, %extract_nonindex_conditions.exit.loopexit ]
  %i.an = phi ptr [ %i.p, %bb.b ], [ %i.p, %.lr.ph.i ], [ %.pre, %extract_nonindex_conditions.exit.loopexit ]
  %.012.lcssa.i = phi ptr [ null, %bb.b ], [ null, %.lr.ph.i ], [ %.1.i, %extract_nonindex_conditions.exit.loopexit ]
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 24
  %i.ap = load ptr, ptr %i.ao, align 8            ; 3 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 4 ; 2 uses
  %.not.i115 = icmp eq ptr %i.ap, null
  br i1 %.not.i115, label %extract_nonindex_conditions.exit123, label %.lr.ph.i116

.lr.ph.i116:                                      ; preds = %extract_nonindex_conditions.exit
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  %i.as = load i32, ptr %i.aq, align 4
  %i.at = icmp sgt i32 %i.as, 0
  br i1 %i.at, label %.lr.ph22.i118, label %extract_nonindex_conditions.exit123

.lr.ph22.i118:                                    ; preds = %.lr.ph.i116, %bb.h
  %indvars.iv.i119 = phi i64 [ %indvars.iv.next.i122, %bb.h ], [ 0, %.lr.ph.i116 ] ; 2 uses
  %.0121521.i120 = phi ptr [ %.1.i121, %bb.h ], [ null, %.lr.ph.i116 ] ; 3 uses
  %i.au = load ptr, ptr %i.ar, align 8
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %indvars.iv.i119
  %i.aw = load ptr, ptr %i.av, align 8            ; 3 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 18
  %i.ay = load i8, ptr %i.ax, align 2, !range !4, !noundef !5
  %i.az = trunc nuw i8 %i.ay to i1
  br i1 %i.az, label %bb.h, label %bb.f

bb.f:                                             ; preds = %.lr.ph22.i118
  %i.ba = tail call zeroext i1 @is_redundant_with_indexclauses(ptr noundef nonnull %i.aw, ptr noundef %i.am) #14
  br i1 %i.ba, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bb = tail call ptr @lappend(ptr noundef %.0121521.i120, ptr noundef nonnull %i.aw) #14
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %.lr.ph22.i118
  %.1.i121 = phi ptr [ %i.bb, %bb.g ], [ %.0121521.i120, %.lr.ph22.i118 ], [ %.0121521.i120, %bb.f ] ; 2 uses
  %indvars.iv.next.i122 = add nuw nsw i64 %indvars.iv.i119, 1 ; 2 uses
  %i.bc = load i32, ptr %i.aq, align 4
  %i.bd = sext i32 %i.bc to i64
  %i.be = icmp slt i64 %indvars.iv.next.i122, %i.bd
  br i1 %i.be, label %.lr.ph22.i118, label %extract_nonindex_conditions.exit123

extract_nonindex_conditions.exit123:              ; preds = %bb.h, %extract_nonindex_conditions.exit, %.lr.ph.i116
  %.012.lcssa.i117 = phi ptr [ null, %extract_nonindex_conditions.exit ], [ null, %.lr.ph.i116 ], [ %.1.i121, %bb.h ]
  %i.bf = tail call ptr @list_concat(ptr noundef %.012.lcssa.i, ptr noundef %.012.lcssa.i117) #14
  br label %extract_nonindex_conditions.exit132

bb.i:                                             ; preds = %bb.a
  %i.bg = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.bh = load double, ptr %i.bg, align 8
  store double %i.bh, ptr %i.q, align 8
  %i.bi = load ptr, ptr %i.r, align 8             ; 3 uses
  %i.bj = load ptr, ptr %i.s, align 8
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bi, i64 4 ; 2 uses
  %.not.i124 = icmp eq ptr %i.bi, null
  br i1 %.not.i124, label %extract_nonindex_conditions.exit132, label %.lr.ph.i125

.lr.ph.i125:                                      ; preds = %bb.i
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bi, i64 16
  %i.bm = load i32, ptr %i.bk, align 4
  %i.bn = icmp sgt i32 %i.bm, 0
  br i1 %i.bn, label %.lr.ph22.i127, label %extract_nonindex_conditions.exit132

.lr.ph22.i127:                                    ; preds = %.lr.ph.i125, %bb.l
  %indvars.iv.i128 = phi i64 [ %indvars.iv.next.i131, %bb.l ], [ 0, %.lr.ph.i125 ] ; 2 uses
  %.0121521.i129 = phi ptr [ %.1.i130, %bb.l ], [ null, %.lr.ph.i125 ] ; 3 uses
  %i.bo = load ptr, ptr %i.bl, align 8
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr %i.bo, i64 %indvars.iv.i128
  %i.bq = load ptr, ptr %i.bp, align 8            ; 3 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 18
  %i.bs = load i8, ptr %i.br, align 2, !range !4, !noundef !5
  %i.bt = trunc nuw i8 %i.bs to i1
  br i1 %i.bt, label %bb.l, label %bb.j

bb.j:                                             ; preds = %.lr.ph22.i127
  %i.bu = tail call zeroext i1 @is_redundant_with_indexclauses(ptr noundef nonnull %i.bq, ptr noundef %i.bj) #14
  br i1 %i.bu, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bv = tail call ptr @lappend(ptr noundef %.0121521.i129, ptr noundef nonnull %i.bq) #14
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j, %.lr.ph22.i127
  %.1.i130 = phi ptr [ %i.bv, %bb.k ], [ %.0121521.i129, %.lr.ph22.i127 ], [ %.0121521.i129, %bb.j ] ; 2 uses
  %indvars.iv.next.i131 = add nuw nsw i64 %indvars.iv.i128, 1 ; 2 uses
  %i.bw = load i32, ptr %i.bk, align 4
  %i.bx = sext i32 %i.bw to i64
end_hunk_0
begin_hunk_1_@cost_append:bb.a
  %i.ic = fadd double %i.ia, %i.ib
  store double %i.ic, ptr %i.fl, align 8
  %indvars.iv.next155.i = add nsw i64 %indvars.iv154.i205, 1 ; 2 uses
  %i.id = load i32, ptr %i.du, align 4
  %i.ie = sext i32 %i.id to i64
  %i.if = icmp slt i64 %indvars.iv.next155.i, %i.ie
  br i1 %i.if, label %.lr.ph135.i, label %..critedge76.i.loopexit192_crit_edge, !llvm.loop !14

..critedge76.i.loopexit192_crit_edge:             ; preds = %.lr.ph207
  br label %.critedge76.i, !llvm.loop !14

.critedge76.i:                                    ; preds = %.lr.ph135.i, %._crit_edge.us.i, %.lr.ph135.i.preheader, %..critedge76.i.loopexit192_crit_edge, %.lr.ph139.preheader.i
  br i1 %i.ge, label %.lr.ph142.preheader.i, label %._crit_edge.i

.lr.ph142.preheader.i:                            ; preds = %.critedge76.i, %.lr.ph125.split.us.split.i
  %wide.trip.count167.i = zext nneg i32 %i.fj to i64 ; 2 uses
  %.pre169.i = load double, ptr %i.fl, align 8    ; 2 uses
  %xtraiter225 = and i64 %wide.trip.count167.i, 1
  %i.ig = icmp eq i32 %i.fj, 1
  br i1 %i.ig, label %.lr.ph142.i.epil.preheader, label %.lr.ph142.preheader.i.new

.lr.ph142.preheader.i.new:                        ; preds = %.lr.ph142.preheader.i
  %unroll_iter231 = and i64 %wide.trip.count167.i, 2147483646
  br label %.lr.ph142.i

._crit_edge.loopexit.i.unr-lcssa:                 ; preds = %.lr.ph142.i
  %lcmp.mod228.not = icmp eq i64 %xtraiter225, 0
  br i1 %lcmp.mod228.not, label %._crit_edge.loopexit.i, label %.lr.ph142.i.epil.preheader

.lr.ph142.i.epil.preheader:                       ; preds = %._crit_edge.loopexit.i.unr-lcssa, %.lr.ph142.preheader.i
  %.epil.init227 = phi double [ %.pre169.i, %.lr.ph142.preheader.i ], [ %i.iy, %._crit_edge.loopexit.i.unr-lcssa ]
  %indvars.iv164.i.epil.init = phi i64 [ 0, %.lr.ph142.preheader.i ], [ %indvars.iv.next165.i.1, %._crit_edge.loopexit.i.unr-lcssa ] ; 2 uses
  %.057140.i.epil.init = phi i32 [ 0, %.lr.ph142.preheader.i ], [ %spec.select77.i.1, %._crit_edge.loopexit.i.unr-lcssa ]
  %lcmp.mod230 = trunc i32 %i.fj to i1
  tail call void @llvm.assume(i1 %lcmp.mod230)
  %i.ih = getelementptr inbounds nuw [8 x i8], ptr %i.fl, i64 %indvars.iv164.i.epil.init
  %i.ii = load double, ptr %i.ih, align 8
  %i.ij = fcmp ogt double %i.ii, %.epil.init227
  %i.ik = trunc nuw nsw i64 %indvars.iv164.i.epil.init to i32
  %spec.select77.i.epil = select i1 %i.ij, i32 %i.ik, i32 %.057140.i.epil.init
  br label %._crit_edge.loopexit.i

._crit_edge.loopexit.i:                           ; preds = %._crit_edge.loopexit.i.unr-lcssa, %.lr.ph142.i.epil.preheader
  %spec.select77.i.lcssa = phi i32 [ %spec.select77.i.1, %._crit_edge.loopexit.i.unr-lcssa ], [ %spec.select77.i.epil, %.lr.ph142.i.epil.preheader ]
  %i.il = zext nneg i32 %spec.select77.i.lcssa to i64
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.loopexit.i, %.critedge76.i, %bb.s, %.lr.ph125.split.split.i
  %.057.lcssa.i = phi i64 [ 0, %.critedge76.i ], [ %i.il, %._crit_edge.loopexit.i ], [ 0, %.lr.ph125.split.split.i ], [ 0, %bb.s ]
  %i.im = getelementptr inbounds nuw [8 x i8], ptr %i.fl, i64 %.057.lcssa.i
  %i.in = load double, ptr %i.im, align 8
  %.pre168 = load double, ptr %i.p, align 8
  %.pre169.pre = load double, ptr %i.q, align 8
  br label %append_nonpartial_cost.exit

.lr.ph142.i:                                      ; preds = %.lr.ph142.i, %.lr.ph142.preheader.i.new
  %i.io = phi double [ %.pre169.i, %.lr.ph142.preheader.i.new ], [ %i.iy, %.lr.ph142.i ] ; 2 uses
  %indvars.iv164.i = phi i64 [ 0, %.lr.ph142.preheader.i.new ], [ %indvars.iv.next165.i.1, %.lr.ph142.i ] ; 4 uses
  %.057140.i = phi i32 [ 0, %.lr.ph142.preheader.i.new ], [ %spec.select77.i.1, %.lr.ph142.i ]
  %niter232 = phi i64 [ 0, %.lr.ph142.preheader.i.new ], [ %niter232.next.1, %.lr.ph142.i ]
  %i.ip = getelementptr inbounds nuw [8 x i8], ptr %i.fl, i64 %indvars.iv164.i
  %i.iq = load double, ptr %i.ip, align 8         ; 2 uses
  %i.ir = fcmp ogt double %i.iq, %i.io            ; 2 uses
  %i.is = trunc nuw nsw i64 %indvars.iv164.i to i32
  %spec.select77.i = select i1 %i.ir, i32 %i.is, i32 %.057140.i
  %indvars.iv.next165.i = or disjoint i64 %indvars.iv164.i, 1 ; 2 uses
  %i.it = select i1 %i.ir, double %i.iq, double %i.io ; 2 uses
  %i.iu = getelementptr inbounds nuw [8 x i8], ptr %i.fl, i64 %indvars.iv.next165.i
  %i.iv = load double, ptr %i.iu, align 8         ; 2 uses
  %i.iw = fcmp ogt double %i.iv, %i.it            ; 2 uses
  %i.ix = trunc nuw nsw i64 %indvars.iv.next165.i to i32
  %spec.select77.i.1 = select i1 %i.iw, i32 %i.ix, i32 %spec.select77.i ; 3 uses
  %indvars.iv.next165.i.1 = add nuw nsw i64 %indvars.iv164.i, 2 ; 2 uses
  %i.iy = select i1 %i.iw, double %i.iv, double %i.it ; 2 uses
  %niter232.next.1 = add i64 %niter232, 2         ; 2 uses
  %niter232.ncmp.1 = icmp eq i64 %niter232.next.1, %unroll_iter231
  br i1 %niter232.ncmp.1, label %._crit_edge.loopexit.i.unr-lcssa, label %.lr.ph142.i, !llvm.loop !15

append_nonpartial_cost.exit:                      ; preds = %.critedge123, %._crit_edge.i
  %.pre169 = phi double [ %.pre169.pre, %._crit_edge.i ], [ %.pre169171, %.critedge123 ]
  %i.iz = phi double [ %.pre168, %._crit_edge.i ], [ %i.fg, %.critedge123 ]
  %.055.i = phi double [ %i.in, %._crit_edge.i ], [ 0.000000e+00, %.critedge123 ]
  %i.ja = fadd double %.055.i, %i.iz
  br label %.critedge

bb.t:                                             ; preds = %clamp_row_est.exit, %.peel.next
  %i.jb = phi i32 [ %i.ez, %.peel.next ], [ %i.ki, %clamp_row_est.exit ]
  %i.jc = phi double [ %i.ev, %.peel.next ], [ %i.ke, %clamp_row_est.exit ] ; 2 uses
  %i.jd = phi double [ %.0.i130.peel, %.peel.next ], [ %.0.i130, %clamp_row_est.exit ] ; 2 uses
  %i.je = phi double [ %i.ed, %.peel.next ], [ %i.jm, %clamp_row_est.exit ] ; 3 uses
  %indvars.iv161 = phi i64 [ 1, %.peel.next ], [ %indvars.iv.next162, %clamp_row_est.exit ] ; 4 uses
  %i.jf = load ptr, ptr %i.dx, align 8
  %i.jg = getelementptr inbounds nuw [8 x i8], ptr %i.jf, i64 %indvars.iv161
  %i.jh = load ptr, ptr %i.jg, align 8            ; 6 uses
  %i.ji = icmp slt i64 %indvars.iv161, %sext
  br i1 %i.ji, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.jj = getelementptr inbounds nuw i8, ptr %i.jh, i64 56
  %i.jk = load double, ptr %i.jj, align 8         ; 2 uses
  %i.jl = fcmp olt double %i.je, %i.jk
  %. = select i1 %i.jl, double %i.je, double %i.jk ; 2 uses
  store double %., ptr %i.o, align 8
  br label %bb.v

bb.v:                                             ; preds = %bb.t, %bb.u
  %i.jm = phi double [ %i.je, %bb.t ], [ %., %bb.u ]
  %i.jn = icmp slt i64 %indvars.iv161, %sext167
  br i1 %i.jn, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.jo = getelementptr inbounds nuw i8, ptr %i.jh, i64 40
  %i.jp = load double, ptr %i.jo, align 8
  %i.jq = fdiv double %i.jp, %.1.i
  %i.jr = fadd double %i.jd, %i.jq                ; 2 uses
  store double %i.jr, ptr %i.q, align 8
  br label %bb.z

bb.x:                                             ; preds = %bb.v
  %i.js = getelementptr i8, ptr %i.jh, i64 36
  %.val124 = load i32, ptr %i.js, align 4
  %i.jt = sitofp i32 %.val124 to double           ; 3 uses
  br i1 %i.dq, label %bb.y, label %get_parallel_divisor.exit128

bb.y:                                             ; preds = %bb.x
  %i.ju = tail call double @llvm.fmuladd.f64(double %i.jt, double -3.000000e-01, double 1.000000e+00) ; 2 uses
  %i.jv = fcmp ogt double %i.ju, 0.000000e+00
  %i.jw = select i1 %i.jv, double %i.ju, double -0.000000e+00
  %.0.i127 = fadd double %i.jw, %i.jt
  br label %get_parallel_divisor.exit128

get_parallel_divisor.exit128:                     ; preds = %bb.x, %bb.y
  %.1.i126 = phi double [ %.0.i127, %bb.y ], [ %i.jt, %bb.x ]
  %i.jx = getelementptr inbounds nuw i8, ptr %i.jh, i64 40
  %i.jy = load double, ptr %i.jx, align 8
  %i.jz = fdiv double %.1.i126, %.1.i
  %i.ka = tail call double @llvm.fmuladd.f64(double %i.jy, double %i.jz, double %i.jd) ; 2 uses
  store double %i.ka, ptr %i.q, align 8
  %i.kb = getelementptr inbounds nuw i8, ptr %i.jh, i64 64
  %i.kc = load double, ptr %i.kb, align 8
  %i.kd = fadd double %i.kc, %i.jc                ; 2 uses
  store double %i.kd, ptr %i.p, align 8
  br label %bb.z

bb.z:                                             ; preds = %get_parallel_divisor.exit128, %bb.w
  %i.ke = phi double [ %i.kd, %get_parallel_divisor.exit128 ], [ %i.jc, %bb.w ] ; 2 uses
  %i.kf = phi double [ %i.ka, %get_parallel_divisor.exit128 ], [ %i.jr, %bb.w ] ; 4 uses
  %i.kg = getelementptr inbounds nuw i8, ptr %i.jh, i64 48
  %i.kh = load i32, ptr %i.kg, align 8
  %i.ki = add i32 %i.jb, %i.kh                    ; 2 uses
  store i32 %i.ki, ptr %i.n, align 8
  %i.kj = fcmp ogt double %i.kf, 1.000000e+100
  %i.kk = fcmp uno double %i.kf, 0.000000e+00
  %or.cond.i129 = or i1 %i.kj, %i.kk
  br i1 %or.cond.i129, label %clamp_row_est.exit, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.kl = fcmp ugt double %i.kf, 1.000000e+00
  br i1 %i.kl, label %bb.ab, label %clamp_row_est.exit

bb.ab:                                            ; preds = %bb.aa
  %i.km = tail call double @llvm.rint.f64(double %i.kf)
  br label %clamp_row_est.exit

clamp_row_est.exit:                               ; preds = %bb.z, %bb.aa, %bb.ab
  %.0.i130 = phi double [ %i.km, %bb.ab ], [ 1.000000e+100, %bb.z ], [ 1.000000e+00, %bb.aa ] ; 3 uses
  store double %.0.i130, ptr %i.q, align 8
  %indvars.iv.next162 = add nuw nsw i64 %indvars.iv161, 1 ; 2 uses
  %i.kn = load i32, ptr %i.du, align 4
  %i.ko = sext i32 %i.kn to i64
  %i.kp = icmp slt i64 %indvars.iv.next162, %i.ko
  br i1 %i.kp, label %bb.t, label %.critedge123, !llvm.loop !16

.critedge:                                        ; preds = %bb.i, %.lr.ph142, %.preheader, %bb.d, %append_nonpartial_cost.exit
  %i.kq = phi double [ %i.bd, %.lr.ph142 ], [ %i.ja, %append_nonpartial_cost.exit ], [ 0.000000e+00, %.preheader ], [ 0.000000e+00, %bb.d ], [ %i.dl, %bb.i ]
  %i.kr = phi double [ %i.ax, %.lr.ph142 ], [ %.pre169, %append_nonpartial_cost.exit ], [ 0.000000e+00, %.preheader ], [ 0.000000e+00, %bb.d ], [ %i.cz, %bb.i ]
  %i.ks = load double, ptr @cpu_tuple_cost, align 8
  %i.kt = fmul double %i.ks, 5.000000e-01
  %i.ku = call double @llvm.fmuladd.f64(double %i.kt, double %i.kr, double %i.kq)
  store double %i.ku, ptr %i.p, align 8
  br label %bb.ac

bb.ac:                                            ; preds = %bb.a, %.critedge
  ret void
}

declare zeroext i1 @pathkeys_count_contained_in(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, errnomem: readwrite, target_mem: none) uwtable
define dso_local void @cost_merge_append(ptr nofree noundef captures(none) initializes((48, 52), (56, 72)) %0, ptr nofree noundef readnone captures(none) %1, ptr nofree noundef readnone captures(none) %2, i32 noundef %3, i32 noundef %4, double noundef %5, double noundef %6, double noundef %7) local_unnamed_addr #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.d = load i32, ptr %i.c, align 4
  %i.e = icmp eq i32 %i.d, 0
  %spec.select = select i1 %i.e, i64 -270337, i64 -8193
  %i.f = tail call i32 @llvm.smax.i32(i32 %3, i32 2)
  %i.g = uitofp nneg i32 %i.f to double           ; 2 uses
  %i.h = tail call double @log(double noundef %i.g) #14
  %8 = fdiv double %i.h, f0x3FE62E42FEFA39EC
  %9 = load double, ptr @cpu_operator_cost, align 8
  %i.i = fmul double %9, 2.000000e+00
  %i.j = insertelement <2 x double> poison, double %i.i, i64 0
  %i.k = shufflevector <2 x double> %i.j, <2 x double> poison, <2 x i32> zeroinitializer
  %i.l = insertelement <2 x double> poison, double %i.g, i64 0
  %i.m = insertelement <2 x double> %i.l, double %7, i64 1
  %i.n = fmul <2 x double> %i.k, %i.m
  %i.o = insertelement <2 x double> poison, double %8, i64 0
  %i.p = shufflevector <2 x double> %i.o, <2 x double> poison, <2 x i32> zeroinitializer
  %i.q = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.n, <2 x double> %i.p, <2 x double> zeroinitializer) ; 2 uses
  %i.r = load double, ptr @cpu_tuple_cost, align 8
  %i.s = fmul double %i.r, 5.000000e-01
  %i.t = extractelement <2 x double> %i.q, i64 1
  %i.u = tail call double @llvm.fmuladd.f64(double %i.s, double %7, double %i.t)
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.w = load i64, ptr %i.v, align 8
  %i.x = or i64 %i.w, %spec.select
  %i.y = icmp ne i64 %i.x, -1
  %i.z = zext i1 %i.y to i32
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ab = add i32 %4, %i.z
  store i32 %i.ab, ptr %i.aa, align 8
  %i.ac = extractelement <2 x double> %i.q, i64 0 ; 2 uses
  %i.ad = fadd double %5, %i.ac
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 56
  store double %i.ad, ptr %i.ae, align 8
  %i.af = fadd double %i.ac, %i.u
  %i.ag = fadd double %6, %i.af
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 64
  store double %i.ag, ptr %i.ah, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: write, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @cost_material(ptr nofree noundef writeonly captures(none) initializes((40, 52), (56, 72)) %0, i1 noundef zeroext %1, i32 noundef %2, double noundef %3, double noundef %4, double noundef %5, i32 noundef %6) local_unnamed_addr #12 {
bb.a:
  %i.a = fsub double %4, %3
  %i.b = sext i32 %6 to i64
  %i.c = add nsw i64 %i.b, 7
  %i.d = and i64 %i.c, -8
  %i.e = add nsw i64 %i.d, 24
  %i.f = uitofp i64 %i.e to double
  %i.g = fmul double %5, %i.f                     ; 2 uses
  %i.h = load i32, ptr @work_mem, align 4
  %i.i = sext i32 %i.h to i64
  %i.j = shl nsw i64 %i.i, 10
  %i.k = uitofp i64 %i.j to double
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 40
  store double %5, ptr %i.l, align 8
  %i.m = load double, ptr @cpu_operator_cost, align 8
  %i.n = fmul double %i.m, 2.000000e+00
  %i.o = tail call double @llvm.fmuladd.f64(double %i.n, double %5, double %i.a) ; 2 uses
  %i.p = fcmp ogt double %i.g, %i.k
  br i1 %i.p, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.q = fmul double %i.g, f0x3F20000000000000
  %i.r = tail call double @llvm.ceil.f64(double %i.q)
  %i.s = load double, ptr @seq_page_cost, align 8
  %i.t = tail call double @llvm.fmuladd.f64(double %i.s, double %i.r, double %i.o)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0 = phi double [ %i.t, %bb.b ], [ %i.o, %bb.a ]
  %not. = xor i1 %1, true
  %i.u = zext i1 %not. to i32
  %i.v = add i32 %2, %i.u
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i32 %i.v, ptr %i.w, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 56
  store double %3, ptr %i.x, align 8
  %i.y = fadd double %3, %.0
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 64
  store double %i.y, ptr %i.z, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @cost_agg(ptr nofree noundef writeonly captures(none) %0, ptr noundef %1, i32 noundef %2, ptr nofree noundef readonly captures(address_is_null) %3, i32 noundef %4, double noundef %5, ptr noundef %6, i32 noundef %7, double noundef %8, double noundef %9, double noundef %10, double noundef %11) local_unnamed_addr #2 {
bb.a:
  %12 = alloca %struct.cost_qual_eval_context, align 8 ; 6 uses
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = icmp eq ptr %3, null                     ; 6 uses
  %i.e = icmp eq i32 %2, 0
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  br i1 %i.d, label %.cont163.thread, label %.else

.cont163.thread:                                  ; preds = %bb.b
  %i.f = fadd double %9, 0.000000e+00
  %i.g = tail call double @llvm.fmuladd.f64(double %10, double 0.000000e+00, double %i.f)
  %i.h = fadd double %i.g, 0.000000e+00
  br label %.thread

.else:                                            ; preds = %bb.b
  %.else.val195 = load double, ptr %3, align 8
  %i.i = fadd double %9, %.else.val195
  %.sroa.gep141 = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.else.val176 = load double, ptr %.sroa.gep141, align 8
  %i.j = tail call double @llvm.fmuladd.f64(double %.else.val176, double %10, double %i.i)
  %.sroa.gep144 = getelementptr inbounds nuw i8, ptr %3, i64 16
  %.else.val165 = load double, ptr %.sroa.gep144, align 8
  %i.k = fadd double %i.j, %.else.val165
  %.sroa.gep147 = getelementptr inbounds nuw i8, ptr %3, i64 24
  %.else.val154 = load double, ptr %.sroa.gep147, align 8
  %i.l = fadd double %i.k, %.else.val154
  br label %.thread

.thread:                                          ; preds = %.else, %.cont163.thread
  %i.m = phi double [ %i.h, %.cont163.thread ], [ %i.l, %.else ] ; 2 uses
  %i.n = load double, ptr @cpu_tuple_cost, align 8
  %i.o = fadd double %i.m, %i.n
  br label %bb.i

bb.c:                                             ; preds = %bb.a
  %i.p = and i32 %2, -3
  %or.cond = icmp eq i32 %i.p, 1
  br i1 %or.cond, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %.not210 = icmp eq i32 %2, 3
  %i.q = load i8, ptr @enable_hashagg, align 1, !range !4
  %i.r = xor i8 %i.q, 1
  %i.s = zext nneg i8 %i.r to i32
  %not.or.cond3 = select i1 %.not210, i32 %i.s, i32 0
  br i1 %i.d, label %.cont188.thread, label %.else179

.cont188.thread:                                  ; preds = %bb.d
  %i.t = fadd double %9, 0.000000e+00
  br label %.cont177

.else179:                                         ; preds = %bb.d
  %.else.val191 = load double, ptr %3, align 8
  %i.u = fadd double %9, %.else.val191
  %.sroa.gep132 = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.else.val180 = load double, ptr %.sroa.gep132, align 8
  br label %.cont177

.cont177:                                         ; preds = %.cont188.thread, %.else179
  %i.v = phi double [ %i.t, %.cont188.thread ], [ %i.u, %.else179 ]
  %i.w = phi double [ 0.000000e+00, %.cont188.thread ], [ %.else.val180, %.else179 ]
  %i.x = tail call double @llvm.fmuladd.f64(double %i.w, double %10, double %i.v)
  %i.y = load double, ptr @cpu_operator_cost, align 8
  %i.z = sitofp i32 %4 to double
  %i.aa = fmul double %i.y, %i.z
  %i.ab = tail call double @llvm.fmuladd.f64(double %i.aa, double %10, double %i.x) ; 2 uses
  br i1 %i.d, label %.cont166.thread, label %.else157

.cont166.thread:                                  ; preds = %.cont177
  %i.ac = fadd double %i.ab, 0.000000e+00
  br label %.cont155

.else157:                                         ; preds = %.cont177
  %.sroa.gep135 = getelementptr inbounds nuw i8, ptr %3, i64 16
  %.else.val169 = load double, ptr %.sroa.gep135, align 8
  %i.ad = fadd double %i.ab, %.else.val169
  %.sroa.gep138 = getelementptr inbounds nuw i8, ptr %3, i64 24
  %.else.val158 = load double, ptr %.sroa.gep138, align 8
  br label %.cont155

.cont155:                                         ; preds = %.cont166.thread, %.else157
  %i.ae = phi double [ %i.ac, %.cont166.thread ], [ %i.ad, %.else157 ]
  %i.af = phi double [ 0.000000e+00, %.cont166.thread ], [ %.else.val158, %.else157 ]
  %i.ag = tail call double @llvm.fmuladd.f64(double %i.af, double %5, double %i.ae)
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.ah = load i8, ptr @enable_hashagg, align 1, !range !4, !noundef !5
  %i.ai = xor i8 %i.ah, 1
  %i.aj = zext nneg i8 %i.ai to i32
  br i1 %i.d, label %.cont185.thread, label %.else183

.cont185.thread:                                  ; preds = %bb.e
  %i.ak = fadd double %9, 0.000000e+00
  br label %.cont181

.else183:                                         ; preds = %bb.e
  %.else.val187 = load double, ptr %3, align 8
  %i.al = fadd double %9, %.else.val187
  %.sroa.gep124 = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.else.val184 = load double, ptr %.sroa.gep124, align 8
  br label %.cont181

.cont181:                                         ; preds = %.cont185.thread, %.else183
  %i.am = phi double [ %i.ak, %.cont185.thread ], [ %i.al, %.else183 ]
  %i.an = phi double [ 0.000000e+00, %.cont185.thread ], [ %.else.val184, %.else183 ]
  %i.ao = tail call double @llvm.fmuladd.f64(double %i.an, double %10, double %i.am)
  %i.ap = load double, ptr @cpu_operator_cost, align 8
  %i.aq = sitofp i32 %4 to double
  %i.ar = fmul double %i.ap, %i.aq
  %i.as = tail call double @llvm.fmuladd.f64(double %i.ar, double %10, double %i.ao) ; 2 uses
  br i1 %i.d, label %.cont170.thread, label %.else161

.cont170.thread:                                  ; preds = %.cont181
  %i.at = fadd double %i.as, 0.000000e+00
  br label %.cont159

.else161:                                         ; preds = %.cont181
  %.sroa.gep126 = getelementptr inbounds nuw i8, ptr %3, i64 16
  %.else.val173 = load double, ptr %.sroa.gep126, align 8
  %i.au = fadd double %i.as, %.else.val173
  %.sroa.gep129 = getelementptr inbounds nuw i8, ptr %3, i64 24
  %.else.val162 = load double, ptr %.sroa.gep129, align 8
  br label %.cont159

end_hunk_1
