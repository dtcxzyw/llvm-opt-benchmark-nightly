Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/postgres/original/guc?download=true
inline.NumInlined: 182
inline.NumDeleted: 22
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumUnrolled: 9
begin_hunk_0_@ShowGUCOption:bb.a
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = load i8, ptr %i.l, align 1, !range !8, !noundef !9
  %i.n = trunc nuw i8 %i.m to i1
  %i.o = select i1 %i.n, ptr @.str.75, ptr @.str.76
  br label %config_enum_lookup_by_value.exit

bb.e:                                             ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.q = load ptr, ptr %i.p, align 8              ; 2 uses
  %.not48 = icmp eq ptr %i.q, null
  br i1 %.not48, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.r = tail call ptr %i.q() #28
  br label %config_enum_lookup_by_value.exit

bb.g:                                             ; preds = %bb.e
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 152
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #28
  %i.t = load ptr, ptr %i.s, align 8
  %i.u = load i32, ptr %i.t, align 4              ; 2 uses
  %i.v = sext i32 %i.u to i64                     ; 4 uses
  store i64 %i.v, ptr %i.b, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #28
  %i.w = icmp sgt i32 %i.u, 0
  %or.cond = select i1 %1, i1 %i.w, i1 false
  br i1 %or.cond, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.y = load i32, ptr %i.x, align 8
  %i.z = and i32 %i.y, 2130706432                 ; 2 uses
  %.not49 = icmp eq i32 %i.z, 0
  br i1 %.not49, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  call fastcc void @convert_int_from_base_unit(i64 noundef %i.v, i32 noundef %i.z, ptr noundef %i.b, ptr noundef %i.c)
  %.pre56 = load i64, ptr %i.b, align 8
  %.pre57 = load ptr, ptr %i.c, align 8
  br label %bb.j

bb.j:                                             ; preds = %bb.g, %bb.h, %bb.i
  %i.aa = phi ptr [ %.pre57, %bb.i ], [ @.str.8, %bb.h ], [ @.str.8, %bb.g ]
  %i.ab = phi i64 [ %.pre56, %bb.i ], [ %i.v, %bb.h ], [ %i.v, %bb.g ]
  %i.ac = call i32 (ptr, i64, ptr, ...) @pg_snprintf(ptr noundef nonnull %i.a, i64 noundef 256, ptr noundef nonnull @.str.93, i64 noundef %i.ab, ptr noundef %i.aa) #28 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #28
  br label %config_enum_lookup_by_value.exit

bb.k:                                             ; preds = %bb.a
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.ae = load ptr, ptr %i.ad, align 8            ; 2 uses
  %.not46 = icmp eq ptr %i.ae, null
  br i1 %.not46, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.af = tail call ptr %i.ae() #28
  br label %config_enum_lookup_by_value.exit

bb.m:                                             ; preds = %bb.k
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 152
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #28
  %i.ah = load ptr, ptr %i.ag, align 8
  %i.ai = load double, ptr %i.ah, align 8         ; 5 uses
  store double %i.ai, ptr %i.d, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #28
  %i.aj = fcmp ogt double %i.ai, 0.000000e+00
  %or.cond3 = select i1 %1, i1 %i.aj, i1 false
  br i1 %or.cond3, label %bb.n, label %bb.p

bb.n:                                             ; preds = %bb.m
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.al = load i32, ptr %i.ak, align 8
  %i.am = and i32 %i.al, 2130706432               ; 2 uses
  %.not47 = icmp eq i32 %i.am, 0
  br i1 %.not47, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  call fastcc void @convert_real_from_base_unit(double noundef %i.ai, i32 noundef %i.am, ptr noundef %i.d, ptr noundef %i.e)
  %.pre = load double, ptr %i.d, align 8
  %.pre55 = load ptr, ptr %i.e, align 8
  br label %bb.p

bb.p:                                             ; preds = %bb.m, %bb.n, %bb.o
  %i.an = phi ptr [ %.pre55, %bb.o ], [ @.str.8, %bb.n ], [ @.str.8, %bb.m ]
  %i.ao = phi double [ %.pre, %bb.o ], [ %i.ai, %bb.n ], [ %i.ai, %bb.m ]
  %i.ap = call i32 (ptr, i64, ptr, ...) @pg_snprintf(ptr noundef nonnull %i.a, i64 noundef 256, ptr noundef nonnull @.str.94, double noundef %i.ao, ptr noundef %i.an) #28 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #28
  br label %config_enum_lookup_by_value.exit

bb.q:                                             ; preds = %bb.a
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.ar = load ptr, ptr %i.aq, align 8            ; 2 uses
  %.not43 = icmp eq ptr %i.ar, null
  br i1 %.not43, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.as = tail call ptr %i.ar() #28
  br label %config_enum_lookup_by_value.exit

bb.s:                                             ; preds = %bb.q
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.au = load ptr, ptr %i.at, align 8
  %i.av = load ptr, ptr %i.au, align 8            ; 3 uses
  %.not44 = icmp eq ptr %i.av, null
  br i1 %.not44, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.aw = load i8, ptr %i.av, align 1
  %.not45 = icmp eq i8 %i.aw, 0
  br i1 %.not45, label %bb.u, label %config_enum_lookup_by_value.exit

bb.u:                                             ; preds = %bb.t, %bb.s
  br label %config_enum_lookup_by_value.exit

bb.v:                                             ; preds = %bb.a
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.ay = load ptr, ptr %i.ax, align 8            ; 2 uses
  %.not = icmp eq ptr %i.ay, null
  br i1 %.not, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.az = tail call ptr %i.ay() #28
  br label %config_enum_lookup_by_value.exit

bb.x:                                             ; preds = %bb.v
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.bb = load ptr, ptr %i.ba, align 8
  %i.bc = load i32, ptr %i.bb, align 4            ; 3 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.be = load ptr, ptr %i.bd, align 8            ; 4 uses
  %.not16.i = icmp eq ptr %i.be, null
  br i1 %.not16.i, label %._crit_edge.i, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.x
  %i.bf = load ptr, ptr %i.be, align 8            ; 2 uses
  %.not13.i52 = icmp eq ptr %i.bf, null
  br i1 %.not13.i52, label %._crit_edge.i, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.lr.ph.i.preheader
  %i.bg = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  %i.bh = load i32, ptr %i.bg, align 8
  %i.bi = icmp eq i32 %i.bh, %i.bc
  br i1 %i.bi, label %config_enum_lookup_by_value.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.preheader, %.lr.ph
  %.01017.i5371 = phi ptr [ %i.bj, %.lr.ph ], [ %i.be, %.lr.ph.preheader ] ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %.01017.i5371, i64 16 ; 2 uses
  %i.bk = load ptr, ptr %i.bj, align 8            ; 2 uses
  %.not13.i = icmp eq ptr %i.bk, null
  br i1 %.not13.i, label %._crit_edge.i, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.i
  %i.bl = getelementptr inbounds nuw i8, ptr %.01017.i5371, i64 24
  %i.bm = load i32, ptr %i.bl, align 8
  %i.bn = icmp eq i32 %i.bm, %i.bc
  br i1 %i.bn, label %config_enum_lookup_by_value.exit, label %.lr.ph.i

._crit_edge.i:                                    ; preds = %.lr.ph.i, %.lr.ph.i.preheader, %bb.x
  %i.bo = tail call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #30 ; 0 uses
  %i.bp = load ptr, ptr %0, align 8
  %i.bq = tail call i32 (ptr, ...) @errmsg_internal(ptr noundef nonnull @.str.58, i32 noundef %i.bc, ptr noundef %i.bp) #28 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.3, i32 noundef 2936, ptr noundef nonnull @__func__.config_enum_lookup_by_value) #28
  unreachable

config_enum_lookup_by_value.exit:                 ; preds = %.lr.ph, %.lr.ph.preheader, %bb.a, %bb.w, %bb.r, %bb.u, %bb.t, %bb.l, %bb.p, %bb.f, %bb.j, %bb.c, %bb.d
  %.5 = phi ptr [ @.str.95, %bb.a ], [ %i.av, %bb.t ], [ %i.o, %bb.d ], [ %i.a, %bb.j ], [ %i.a, %bb.p ], [ %i.j, %bb.c ], [ %i.r, %bb.f ], [ %i.af, %bb.l ], [ %i.as, %bb.r ], [ @.str.8, %bb.u ], [ %i.az, %bb.w ], [ %i.bf, %.lr.ph.preheader ], [ %i.bk, %.lr.ph ]
  %i.br = call ptr @pstrdup(ptr noundef %.5) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  ret ptr %i.br
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: write) uwtable
define internal fastcc void @convert_int_from_base_unit(i64 noundef range(i64 1, -9223372036854775808) %0, i32 noundef range(i32 1, 2130706433) %1, ptr nofree noundef nonnull writeonly captures(none) %2, ptr nofree noundef nonnull writeonly captures(none) initializes((0, 8)) %3) unnamed_addr #20 {
bb.a:
  store ptr null, ptr %3, align 8
  %i.a = and i32 %1, 251658240
  %.not = icmp eq i32 %i.a, 0
  %time_unit_conversion_table.memory_unit_conversion_table = select i1 %.not, ptr @time_unit_conversion_table, ptr @memory_unit_conversion_table ; 3 uses
  %i.b = load i8, ptr %time_unit_conversion_table.memory_unit_conversion_table, align 16
  %.not2124 = icmp eq i8 %i.b, 0
  br i1 %.not2124, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.e
  %i.c = phi ptr [ %i.r, %bb.e ], [ %time_unit_conversion_table.memory_unit_conversion_table, %bb.a ] ; 3 uses
  %.025 = phi i32 [ %i.p, %bb.e ], [ 0, %bb.a ]
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.e = load i32, ptr %i.d, align 4
  %i.f = icmp eq i32 %1, %i.e
  br i1 %i.f, label %bb.b, label %bb.e

bb.b:                                             ; preds = %.lr.ph
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.h = load double, ptr %i.g, align 8           ; 3 uses
  %i.i = fcmp ugt double %i.h, 1.000000e+00
  br i1 %i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.j = fptosi double %i.h to i64
  %4 = urem i64 %0, %i.j
  %i.k = icmp eq i64 %4, 0
  br i1 %i.k, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.l = uitofp nneg i64 %0 to double
  %i.m = fdiv double %i.l, %i.h
  %i.n = tail call double @llvm.rint.f64(double %i.m)
  %i.o = fptosi double %i.n to i64
  store i64 %i.o, ptr %2, align 8
  store ptr %i.c, ptr %3, align 8
  br label %.loopexit

bb.e:                                             ; preds = %.lr.ph, %bb.c
  %i.p = add i32 %.025, 1                         ; 2 uses
  %i.q = sext i32 %i.p to i64
  %i.r = getelementptr inbounds [16 x i8], ptr %time_unit_conversion_table.memory_unit_conversion_table, i64 %i.q ; 2 uses
  %i.s = load i8, ptr %i.r, align 16
  %.not21 = icmp eq i8 %i.s, 0
  br i1 %.not21, label %.loopexit, label %.lr.ph, !llvm.loop !43

.loopexit:                                        ; preds = %bb.e, %bb.a, %bb.d
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc void @convert_real_from_base_unit(double noundef %0, i32 noundef range(i32 1, 2130706433) %1, ptr nofree noundef nonnull captures(none) %2, ptr nofree noundef nonnull writeonly captures(none) initializes((0, 8)) %3) unnamed_addr #21 {
bb.a:
  store ptr null, ptr %3, align 8
  %i.a = and i32 %1, 251658240
  %.not = icmp eq i32 %i.a, 0
  %time_unit_conversion_table.memory_unit_conversion_table = select i1 %.not, ptr @time_unit_conversion_table, ptr @memory_unit_conversion_table ; 3 uses
  %i.b = load i8, ptr %time_unit_conversion_table.memory_unit_conversion_table, align 16
  %.not1920 = icmp eq i8 %i.b, 0
  br i1 %.not1920, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.d
  %i.c = phi ptr [ %i.s, %bb.d ], [ %time_unit_conversion_table.memory_unit_conversion_table, %bb.a ] ; 3 uses
  %.021 = phi i32 [ %i.q, %bb.d ], [ 0, %bb.a ]
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.e = load i32, ptr %i.d, align 4
  %i.f = icmp eq i32 %1, %i.e
  br i1 %i.f, label %bb.b, label %bb.d

bb.b:                                             ; preds = %.lr.ph
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.h = load double, ptr %i.g, align 8
  %i.i = fdiv double %0, %i.h
  store double %i.i, ptr %2, align 8
  store ptr %i.c, ptr %3, align 8
  %i.j = load double, ptr %2, align 8             ; 3 uses
  %i.k = fcmp ogt double %i.j, 0.000000e+00
  br i1 %i.k, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.l = tail call double @llvm.rint.f64(double %i.j)
  %i.m = fdiv double %i.l, %i.j
  %i.n = fadd double %i.m, -1.000000e+00
  %i.o = tail call double @llvm.fabs.f64(double %i.n)
  %i.p = fcmp ugt double %i.o, 1.000000e-08
  br i1 %i.p, label %bb.d, label %._crit_edge

bb.d:                                             ; preds = %.lr.ph, %bb.c, %bb.b
  %i.q = add i32 %.021, 1                         ; 2 uses
  %i.r = sext i32 %i.q to i64
  %i.s = getelementptr inbounds [16 x i8], ptr %time_unit_conversion_table.memory_unit_conversion_table, i64 %i.r ; 2 uses
  %i.t = load i8, ptr %i.s, align 16
  %.not19 = icmp eq i8 %i.t, 0
  br i1 %.not19, label %._crit_edge, label %.lr.ph, !llvm.loop !44

._crit_edge:                                      ; preds = %bb.d, %bb.c, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local i64 @EstimateGUCStateSpace() local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr getelementptr inbounds nuw (i8, ptr @guc_nondef_list, i64 8), align 8 ; 3 uses
  %.not = icmp eq ptr %i.a, null
  %.not81838 = icmp eq ptr %i.a, @guc_nondef_list
  %.not818 = or i1 %.not, %.not81838
  br i1 %.not818, label %select.unfold._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %estimate_variable_size.exit
  %.020 = phi i64 [ %i.ba, %estimate_variable_size.exit ], [ 8, %bb.a ]
  %.sroa.0.019 = phi ptr [ %i.bc, %estimate_variable_size.exit ], [ %i.a, %bb.a ] ; 10 uses
  %i.b = getelementptr inbounds i8, ptr %.sroa.0.019, i64 -96 ; 2 uses
  %i.c = getelementptr inbounds i8, ptr %.sroa.0.019, i64 -88
  %i.d = load i32, ptr %i.c, align 8
  %switch.i.i = icmp ult i32 %i.d, 2
  br i1 %switch.i.i, label %estimate_variable_size.exit, label %can_skip_gucvar.exit.i

can_skip_gucvar.exit.i:                           ; preds = %.lr.ph
  %i.e = getelementptr inbounds i8, ptr %.sroa.0.019, i64 -52
  %i.f = load i32, ptr %i.e, align 4
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %estimate_variable_size.exit, label %bb.b

bb.b:                                             ; preds = %can_skip_gucvar.exit.i
  %i.h = load ptr, ptr %i.b, align 8
  %i.i = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.h) #29
  %i.j = add i64 %i.i, 1
  %i.k = getelementptr inbounds i8, ptr %.sroa.0.019, i64 -60
  %i.l = load i32, ptr %i.k, align 4
  switch i32 %i.l, label %bb.i [
    i32 0, label %bb.c
    i32 1, label %bb.d
    i32 2, label %bb.e
    i32 3, label %bb.f
    i32 4, label %bb.h
  ]

bb.c:                                             ; preds = %bb.b
  br label %bb.i

bb.d:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.0.019, i64 56
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = load i32, ptr %i.n, align 4
  %i.p = tail call i32 @llvm.abs.i32(i32 %i.o, i1 false)
  %i.q = icmp slt i32 %i.p, 1000
  %..i = select i1 %i.q, i64 4, i64 11
  br label %bb.i

bb.e:                                             ; preds = %bb.b
  br label %bb.i

bb.f:                                             ; preds = %bb.b
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.0.019, i64 56
  %i.s = load ptr, ptr %i.r, align 8
  %i.t = load ptr, ptr %i.s, align 8              ; 2 uses
  %.not.i = icmp eq ptr %i.t, null
  br i1 %.not.i, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.u = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.t) #29
  br label %bb.i

bb.h:                                             ; preds = %bb.b
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.0.019, i64 56
  %i.w = load ptr, ptr %i.v, align 8
  %i.x = load i32, ptr %i.w, align 4              ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.0.019, i64 72
  %i.z = load ptr, ptr %i.y, align 8              ; 4 uses
  %.not16.i.i = icmp eq ptr %i.z, null
  br i1 %.not16.i.i, label %._crit_edge.i.i, label %.lr.ph.i.preheader.i

.lr.ph.i.preheader.i:                             ; preds = %bb.h
  %i.aa = load ptr, ptr %i.z, align 8             ; 2 uses
  %.not13.i34.i = icmp eq ptr %i.aa, null
  br i1 %.not13.i34.i, label %._crit_edge.i.i, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %.lr.ph.i.preheader.i
  %i.ab = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.ac = load i32, ptr %i.ab, align 8
  %i.ad = icmp eq i32 %i.ac, %i.x
  br i1 %i.ad, label %config_enum_lookup_by_value.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %.01017.i35.i17 = phi ptr [ %i.ae, %.lr.ph.i ], [ %i.z, %.lr.ph.i.preheader ] ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.01017.i35.i17, i64 16 ; 2 uses
  %i.af = load ptr, ptr %i.ae, align 8            ; 2 uses
  %.not13.i.i = icmp eq ptr %i.af, null
  br i1 %.not13.i.i, label %._crit_edge.i.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.i
  %i.ag = getelementptr inbounds nuw i8, ptr %.01017.i35.i17, i64 24
  %i.ah = load i32, ptr %i.ag, align 8
  %i.ai = icmp eq i32 %i.ah, %i.x
  br i1 %i.ai, label %config_enum_lookup_by_value.exit.i, label %.lr.ph.i.i

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.preheader.i, %bb.h, %.lr.ph.i.i
  %i.aj = tail call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #30 ; 0 uses
  %i.ak = load ptr, ptr %i.b, align 8
  %i.al = tail call i32 (ptr, ...) @errmsg_internal(ptr noundef nonnull @.str.58, i32 noundef %i.x, ptr noundef %i.ak) #28 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.3, i32 noundef 2936, ptr noundef nonnull @__func__.config_enum_lookup_by_value) #28
  unreachable

config_enum_lookup_by_value.exit.i:               ; preds = %.lr.ph.i, %.lr.ph.i.preheader
  %.lcssa = phi ptr [ %i.aa, %.lr.ph.i.preheader ], [ %i.af, %.lr.ph.i ]
  %i.am = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %.lcssa) #29
  br label %bb.i

bb.i:                                             ; preds = %config_enum_lookup_by_value.exit.i, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  %.2.i = phi i64 [ 0, %bb.b ], [ 5, %bb.c ], [ %..i, %bb.d ], [ 25, %bb.e ], [ %i.am, %config_enum_lookup_by_value.exit.i ], [ %i.u, %bb.g ], [ 0, %bb.f ]
  %i.an = add i64 %.2.i, 1
  %i.ao = tail call i64 @add_size(i64 noundef %i.j, i64 noundef %i.an) #28 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.sroa.0.019, i64 40 ; 2 uses
  %i.aq = load ptr, ptr %i.ap, align 8            ; 2 uses
  %.not30.i = icmp eq ptr %i.aq, null
  br i1 %.not30.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ar = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.aq) #29
  %i.as = tail call i64 @add_size(i64 noundef %i.ao, i64 noundef %i.ar) #28
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.025.i = phi i64 [ %i.as, %bb.j ], [ %i.ao, %bb.i ]
  %i.at = tail call i64 @add_size(i64 noundef %.025.i, i64 noundef 1) #28 ; 3 uses
  %i.au = load ptr, ptr %i.ap, align 8            ; 2 uses
end_hunk_0
