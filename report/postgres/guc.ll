Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/postgres/original/guc?download=true
inline.NumInlined: 182
inline.NumDeleted: 22
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumUnrolled: 9
begin_hunk_0_@parse_int:bb.a
bb.g:                                             ; preds = %bb.e, %bb.e, %bb.e, %bb.f
  store i32 0, ptr %i.c, align 4
  %i.j = call double @strtod(ptr noundef %0, ptr noundef nonnull %i.b) #28 ; 2 uses
  store double %i.j, ptr %i.a, align 8
  %.pre = load ptr, ptr %i.b, align 8
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.k = phi double [ %i.j, %bb.g ], [ %i.e, %bb.f ] ; 3 uses
  %i.l = phi ptr [ %.pre, %bb.g ], [ %i.f, %bb.f ] ; 4 uses
  %i.m = icmp eq ptr %i.l, %0
  br i1 %i.m, label %bb.u, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.n = load i32, ptr %i.c, align 4
  %i.o = icmp eq i32 %i.n, 34
  %i.p = fcmp uno double %i.k, 0.000000e+00
  %or.cond29 = select i1 %i.o, i1 true, i1 %i.p
  br i1 %or.cond29, label %bb.u, label %.preheader

.preheader:                                       ; preds = %bb.i
  %i.q = tail call ptr @__ctype_b_loc() #31       ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8
  %i.s = load i8, ptr %i.l, align 1               ; 2 uses
  %i.t = zext i8 %i.s to i64
  %i.u = getelementptr inbounds nuw [2 x i8], ptr %i.r, i64 %i.t
  %i.v = load i16, ptr %i.u, align 2
  %i.w = and i16 %i.v, 8192
  %.not2531 = icmp eq i16 %i.w, 0
  br i1 %.not2531, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader, %.lr.ph
  %i.x = phi ptr [ %i.y, %.lr.ph ], [ %i.l, %.preheader ]
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 1 ; 4 uses
  store ptr %i.y, ptr %i.b, align 8
  %i.z = load ptr, ptr %i.q, align 8
  %i.aa = load i8, ptr %i.y, align 1              ; 2 uses
  %i.ab = zext i8 %i.aa to i64
  %i.ac = getelementptr inbounds nuw [2 x i8], ptr %i.z, i64 %i.ab
  %i.ad = load i16, ptr %i.ac, align 2
  %i.ae = and i16 %i.ad, 8192
  %.not25 = icmp eq i16 %i.ae, 0
  br i1 %.not25, label %._crit_edge, label %.lr.ph, !llvm.loop !30

._crit_edge:                                      ; preds = %.lr.ph, %.preheader
  %.lcssa30 = phi ptr [ %i.l, %.preheader ], [ %i.y, %.lr.ph ]
  %.lcssa = phi i8 [ %i.s, %.preheader ], [ %i.aa, %.lr.ph ]
  %.not26 = icmp eq i8 %.lcssa, 0
  br i1 %.not26, label %bb.p, label %bb.j

bb.j:                                             ; preds = %._crit_edge
  %i.af = and i32 %2, 2130706432                  ; 2 uses
  %i.ag = icmp eq i32 %i.af, 0
  br i1 %i.ag, label %bb.u, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ah = call fastcc zeroext i1 @convert_to_base_unit(double noundef %i.k, ptr noundef nonnull %.lcssa30, i32 noundef %i.af, ptr noundef %i.a)
  br i1 %i.ah, label %._crit_edge35, label %bb.l

._crit_edge35:                                    ; preds = %bb.k
  %.pre36 = load double, ptr %i.a, align 8
  br label %bb.p

bb.l:                                             ; preds = %bb.k
  br i1 %.not24, label %bb.u, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ai = and i32 %2, 251658240
  %.not27 = icmp eq i32 %i.ai, 0
  br i1 %.not27, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  store ptr @.str.55, ptr %3, align 8
  br label %bb.u

bb.o:                                             ; preds = %bb.m
  store ptr @.str.56, ptr %3, align 8
  br label %bb.u

bb.p:                                             ; preds = %._crit_edge35, %._crit_edge
  %i.aj = phi double [ %.pre36, %._crit_edge35 ], [ %i.k, %._crit_edge ]
  %i.ak = call double @llvm.rint.f64(double %i.aj) ; 3 uses
  %i.al = fcmp ogt double %i.ak, f0x41DFFFFFFFC00000
  %i.am = fcmp olt double %i.ak, f0xC1E0000000000000
  %or.cond = or i1 %i.al, %i.am
  br i1 %or.cond, label %bb.q, label %bb.s

bb.q:                                             ; preds = %bb.p
  br i1 %.not24, label %bb.u, label %bb.r

bb.r:                                             ; preds = %bb.q
  store ptr @.str.57, ptr %3, align 8
  br label %bb.u

bb.s:                                             ; preds = %bb.p
  br i1 %.not, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.an = fptosi double %i.ak to i32
  store i32 %i.an, ptr %1, align 4
  br label %bb.u

bb.u:                                             ; preds = %bb.s, %bb.t, %bb.q, %bb.r, %bb.l, %bb.o, %bb.n, %bb.j, %bb.h, %bb.i
  %.0 = phi i1 [ false, %bb.j ], [ false, %bb.h ], [ true, %bb.s ], [ false, %bb.l ], [ false, %bb.q ], [ false, %bb.i ], [ false, %bb.n ], [ false, %bb.o ], [ false, %bb.r ], [ true, %bb.t ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  ret i1 %.0
}

; Function Attrs: nounwind
declare i64 @__isoc23_strtol(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #13

; Function Attrs: mustprogress nocallback nofree nounwind willreturn
declare double @strtod(ptr noundef readonly, ptr noundef captures(none)) local_unnamed_addr #14

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__ctype_b_loc() local_unnamed_addr #10

; Function Attrs: nofree nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc noundef zeroext i1 @convert_to_base_unit(double noundef %0, ptr nofree noundef readonly captures(none) %1, i32 noundef range(i32 1, 2130706433) %2, ptr nofree noundef nonnull writeonly captures(none) %3) unnamed_addr #15 {
bb.a:
  %i.a = alloca [4 x i8], align 1                 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  %i.b = load i8, ptr %1, align 1                 ; 3 uses
  %.not51 = icmp eq i8 %i.b, 0
  %.pre = tail call ptr @__ctype_b_loc() #31      ; 2 uses
  br i1 %.not51, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.c = load ptr, ptr %.pre, align 8             ; 3 uses
  %i.d = zext i8 %i.b to i64
  %i.e = getelementptr inbounds nuw [2 x i8], ptr %i.c, i64 %i.d
  %i.f = load i16, ptr %i.e, align 2
  %i.g = and i16 %i.f, 8192
  %i.h = icmp eq i16 %i.g, 0
  br i1 %i.h, label %bb.b, label %.critedge

bb.b:                                             ; preds = %.lr.ph
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 1 ; 3 uses
  store i8 %i.b, ptr %i.a, align 1
  %i.j = load i8, ptr %i.i, align 1               ; 3 uses
  %.not = icmp eq i8 %i.j, 0
  br i1 %.not, label %.critedge, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = zext i8 %i.j to i64
  %i.l = getelementptr inbounds nuw [2 x i8], ptr %i.c, i64 %i.k
  %i.m = load i16, ptr %i.l, align 2
  %i.n = and i16 %i.m, 8192
  %i.o = icmp eq i16 %i.n, 0
  br i1 %i.o, label %bb.d, label %.critedge

bb.d:                                             ; preds = %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 2 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  store i8 %i.j, ptr %i.q, align 1
  %i.r = load i8, ptr %i.p, align 1               ; 3 uses
  %.not.1 = icmp eq i8 %i.r, 0
  br i1 %.not.1, label %.critedge, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.s = zext i8 %i.r to i64
  %i.t = getelementptr inbounds nuw [2 x i8], ptr %i.c, i64 %i.s
  %i.u = load i16, ptr %i.t, align 2
  %i.v = and i16 %i.u, 8192
  %i.w = icmp eq i16 %i.v, 0
  br i1 %i.w, label %bb.f, label %.critedge

bb.f:                                             ; preds = %bb.e
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 3
  %i.y = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  store i8 %i.r, ptr %i.y, align 1
  br label %.critedge

.critedge:                                        ; preds = %bb.f, %.lr.ph, %bb.c, %bb.e, %bb.b, %bb.d, %bb.a
  %.040.lcssa = phi ptr [ %1, %bb.a ], [ %i.x, %bb.f ], [ %i.i, %bb.b ], [ %i.p, %bb.d ], [ %1, %.lr.ph ], [ %i.i, %bb.c ], [ %i.p, %bb.e ]
  %.038.lcssa = phi i64 [ 0, %bb.a ], [ 3, %bb.f ], [ 1, %bb.b ], [ 2, %bb.d ], [ 0, %.lr.ph ], [ 1, %bb.c ], [ 2, %bb.e ]
  %i.z = getelementptr inbounds nuw i8, ptr %i.a, i64 %.038.lcssa
  store i8 0, ptr %i.z, align 1
  %i.aa = load ptr, ptr %.pre, align 8
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %.critedge
  %.141 = phi ptr [ %.040.lcssa, %.critedge ], [ %i.ag, %bb.g ] ; 2 uses
  %i.ab = load i8, ptr %.141, align 1             ; 2 uses
  %i.ac = zext i8 %i.ab to i64
  %i.ad = getelementptr inbounds nuw [2 x i8], ptr %i.aa, i64 %i.ac
  %i.ae = load i16, ptr %i.ad, align 2
  %i.af = and i16 %i.ae, 8192
  %.not43 = icmp eq i16 %i.af, 0
  %i.ag = getelementptr inbounds nuw i8, ptr %.141, i64 1
  br i1 %.not43, label %bb.h, label %bb.g, !llvm.loop !31

bb.h:                                             ; preds = %bb.g
  %.not44 = icmp eq i8 %i.ab, 0
  br i1 %.not44, label %bb.i, label %.loopexit

bb.i:                                             ; preds = %bb.h
  %i.ah = and i32 %2, 251658240
  %.not45 = icmp eq i32 %i.ah, 0
  %time_unit_conversion_table.memory_unit_conversion_table = select i1 %.not45, ptr @time_unit_conversion_table, ptr @memory_unit_conversion_table ; 3 uses
  br label %.lr.ph60

.lr.ph60:                                         ; preds = %bb.i, %bb.o
  %i.ai = phi ptr [ %i.bf, %bb.o ], [ %time_unit_conversion_table.memory_unit_conversion_table, %bb.i ] ; 3 uses
  %.03559 = phi i32 [ %i.bd, %bb.o ], [ 0, %bb.i ] ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 4
  %i.ak = load i32, ptr %i.aj, align 4
  %i.al = icmp eq i32 %2, %i.ak
  br i1 %i.al, label %bb.j, label %bb.o

bb.j:                                             ; preds = %.lr.ph60
  %i.am = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.a, ptr noundef nonnull dereferenceable(1) %i.ai) #29
  %i.an = icmp eq i32 %i.am, 0
  br i1 %i.an, label %bb.k, label %bb.o

bb.k:                                             ; preds = %bb.j
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %i.ap = load double, ptr %i.ao, align 8
  %i.aq = fmul double %0, %i.ap                   ; 3 uses
  %i.ar = add i32 %.03559, 1
  %i.as = sext i32 %i.ar to i64
  %i.at = getelementptr inbounds [16 x i8], ptr %time_unit_conversion_table.memory_unit_conversion_table, i64 %i.as ; 3 uses
  %i.au = load i8, ptr %i.at, align 16
  %.not47 = icmp eq i8 %i.au, 0
  br i1 %.not47, label %bb.n, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.av = getelementptr inbounds nuw i8, ptr %i.at, i64 4
  %i.aw = load i32, ptr %i.av, align 4
  %i.ax = icmp eq i32 %2, %i.aw
  br i1 %i.ax, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.ay = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %i.az = load double, ptr %i.ay, align 8         ; 2 uses
  %i.ba = fdiv double %i.aq, %i.az
  %i.bb = tail call double @llvm.rint.f64(double %i.ba)
  %i.bc = fmul double %i.az, %i.bb
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l, %bb.k
  %.0 = phi double [ %i.bc, %bb.m ], [ %i.aq, %bb.l ], [ %i.aq, %bb.k ]
  store double %.0, ptr %3, align 8
  br label %.loopexit

bb.o:                                             ; preds = %.lr.ph60, %bb.j
  %i.bd = add i32 %.03559, 1                      ; 2 uses
  %i.be = sext i32 %i.bd to i64
  %i.bf = getelementptr inbounds [16 x i8], ptr %time_unit_conversion_table.memory_unit_conversion_table, i64 %i.be ; 2 uses
  %i.bg = load i8, ptr %i.bf, align 16
  %.not46.not = icmp eq i8 %i.bg, 0
  br i1 %.not46.not, label %.loopexit, label %.lr.ph60, !llvm.loop !32

.loopexit:                                        ; preds = %bb.o, %bb.n, %bb.h
  %.1 = phi i1 [ false, %bb.h ], [ true, %bb.n ], [ false, %bb.o ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  ret i1 %.1
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.rint.f64(double) #16

; Function Attrs: nofree nounwind uwtable
define dso_local noundef zeroext i1 @parse_real(ptr noundef %0, ptr nofree noundef writeonly captures(address_is_null) %1, i32 noundef %2, ptr nofree noundef writeonly captures(address_is_null) %3) local_unnamed_addr #17 {
bb.a:
  %i.a = alloca double, align 8                   ; 5 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #28
  %.not = icmp eq ptr %1, null                    ; 2 uses
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store double 0.000000e+00, ptr %1, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.not18 = icmp eq ptr %3, null                  ; 2 uses
  br i1 %.not18, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  store ptr null, ptr %3, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.c = tail call ptr @__errno_location() #31    ; 2 uses
  store i32 0, ptr %i.c, align 4
  %i.d = call double @strtod(ptr noundef %0, ptr noundef nonnull %i.b) #28 ; 3 uses
  store double %i.d, ptr %i.a, align 8
  %i.e = load ptr, ptr %i.b, align 8              ; 2 uses
  %i.f = icmp eq ptr %i.e, %0
  br i1 %i.f, label %bb.q, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.g = load i32, ptr %i.c, align 4
  %i.h = icmp eq i32 %i.g, 34
  %i.i = fcmp uno double %i.d, 0.000000e+00
  %or.cond = select i1 %i.h, i1 true, i1 %i.i
  br i1 %or.cond, label %bb.q, label %.preheader

.preheader:                                       ; preds = %bb.f
  %i.j = tail call ptr @__ctype_b_loc() #31
  %i.k = load ptr, ptr %i.j, align 8
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %.preheader
  %i.l = phi ptr [ %i.e, %.preheader ], [ %i.r, %bb.g ] ; 3 uses
  %i.m = load i8, ptr %i.l, align 1               ; 2 uses
  %i.n = zext i8 %i.m to i64
  %i.o = getelementptr inbounds nuw [2 x i8], ptr %i.k, i64 %i.n
  %i.p = load i16, ptr %i.o, align 2
  %i.q = and i16 %i.p, 8192
  %.not19 = icmp eq i16 %i.q, 0
  %i.r = getelementptr inbounds nuw i8, ptr %i.l, i64 1
  br i1 %.not19, label %bb.h, label %bb.g, !llvm.loop !33

bb.h:                                             ; preds = %bb.g
  %.not20 = icmp eq i8 %i.m, 0
  br i1 %.not20, label %bb.o, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.s = and i32 %2, 2130706432                   ; 2 uses
  %i.t = icmp eq i32 %i.s, 0
  br i1 %i.t, label %bb.q, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.u = call fastcc zeroext i1 @convert_to_base_unit(double noundef %i.d, ptr noundef nonnull %i.l, i32 noundef %i.s, ptr noundef %i.a)
  br i1 %i.u, label %bb.o, label %bb.k

bb.k:                                             ; preds = %bb.j
  br i1 %.not18, label %bb.q, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.v = and i32 %2, 251658240
  %.not21 = icmp eq i32 %i.v, 0
  br i1 %.not21, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  store ptr @.str.55, ptr %3, align 8
  br label %bb.q

bb.n:                                             ; preds = %bb.l
  store ptr @.str.56, ptr %3, align 8
  br label %bb.q

bb.o:                                             ; preds = %bb.j, %bb.h
  br i1 %.not, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.w = load double, ptr %i.a, align 8
  store double %i.w, ptr %1, align 8
  br label %bb.q

bb.q:                                             ; preds = %bb.o, %bb.p, %bb.k, %bb.n, %bb.m, %bb.i, %bb.e, %bb.f
  %.0 = phi i1 [ false, %bb.i ], [ false, %bb.e ], [ true, %bb.o ], [ false, %bb.k ], [ false, %bb.f ], [ false, %bb.m ], [ false, %bb.n ], [ true, %bb.p ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  ret i1 %.0
}

; Function Attrs: nounwind uwtable
define dso_local nonnull ptr @config_enum_lookup_by_value(ptr nofree noundef readonly captures(none) %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.b = load ptr, ptr %i.a, align 8              ; 3 uses
  %.not16 = icmp eq ptr %i.b, null
  br i1 %.not16, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.c = load ptr, ptr %i.b, align 8              ; 2 uses
  %.not1323 = icmp eq ptr %i.c, null
  br i1 %.not1323, label %._crit_edge, label %.lr.ph25

.lr.ph:                                           ; preds = %.lr.ph25
  %i.d = getelementptr inbounds nuw i8, ptr %.0101724, i64 16 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8              ; 2 uses
  %.not13 = icmp eq ptr %i.e, null
  br i1 %.not13, label %._crit_edge, label %.lr.ph25

.lr.ph25:                                         ; preds = %.lr.ph.preheader, %.lr.ph
  %i.f = phi ptr [ %i.e, %.lr.ph ], [ %i.c, %.lr.ph.preheader ]
  %.0101724 = phi ptr [ %i.d, %.lr.ph ], [ %i.b, %.lr.ph.preheader ] ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.0101724, i64 8
  %i.h = load i32, ptr %i.g, align 8
  %i.i = icmp eq i32 %i.h, %1
  br i1 %i.i, label %.critedge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %.lr.ph.preheader, %bb.a
  %i.j = tail call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #30 ; 0 uses
  %i.k = load ptr, ptr %0, align 8
  %i.l = tail call i32 (ptr, ...) @errmsg_internal(ptr noundef nonnull @.str.58, i32 noundef %1, ptr noundef %i.k) #28 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.3, i32 noundef 2936, ptr noundef nonnull @__func__.config_enum_lookup_by_value) #28
  unreachable

.critedge:                                        ; preds = %.lr.ph25
  ret ptr %i.f
}

; Function Attrs: nounwind uwtable
define dso_local noundef zeroext i1 @config_enum_lookup_by_name(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, ptr nofree noundef writeonly captures(none) %2) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8              ; 3 uses
  %.not16 = icmp eq ptr %i.b, null
  br i1 %.not16, label %.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.c = load ptr, ptr %i.b, align 8              ; 2 uses
  %.not1323 = icmp eq ptr %i.c, null
  br i1 %.not1323, label %.loopexit, label %.lr.ph25

.lr.ph25:                                         ; preds = %.lr.ph.preheader, %.lr.ph
  %i.d = phi ptr [ %i.h, %.lr.ph ], [ %i.c, %.lr.ph.preheader ]
  %.0101724 = phi ptr [ %i.g, %.lr.ph ], [ %i.b, %.lr.ph.preheader ] ; 2 uses
  %i.e = tail call i32 @pg_strcasecmp(ptr noundef %1, ptr noundef nonnull %i.d) #28
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph25
  %i.g = getelementptr inbounds nuw i8, ptr %.0101724, i64 16 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8              ; 2 uses
  %.not13 = icmp eq ptr %i.h, null
  br i1 %.not13, label %.loopexit, label %.lr.ph25

.critedge:                                        ; preds = %.lr.ph25
  %i.i = getelementptr inbounds nuw i8, ptr %.0101724, i64 8
  %i.j = load i32, ptr %i.i, align 8
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph, %.lr.ph.preheader, %bb.a, %.critedge
  %storemerge = phi i32 [ %i.j, %.critedge ], [ 0, %bb.a ], [ 0, %.lr.ph.preheader ], [ 0, %.lr.ph ]
  %.1 = phi i1 [ true, %.critedge ], [ false, %bb.a ], [ false, %.lr.ph.preheader ], [ false, %.lr.ph ]
  store i32 %storemerge, ptr %2, align 4
  ret i1 %.1
}

declare i32 @pg_strcasecmp(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local ptr @config_enum_get_options(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 {
bb.a:
  %4 = alloca %struct.StringInfoData, align 8     ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #28
  call void @initStringInfo(ptr noundef nonnull %4) #28
  call void @appendStringInfoString(ptr noundef nonnull %4, ptr noundef %1) #28
  %i.a = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %3) #29
  %i.b = trunc i64 %i.a to i32                    ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load ptr, ptr %i.c, align 8              ; 3 uses
  %.not18 = icmp eq ptr %i.d, null
  br i1 %.not18, label %.critedge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.e = load ptr, ptr %i.d, align 8              ; 2 uses
  %.not1624 = icmp eq ptr %i.e, null
end_hunk_0
begin_hunk_1_@ShowGUCOption:bb.a
  %i.g = load i32, ptr %i.f, align 4
  switch i32 %i.g, label %config_enum_lookup_by_value.exit [
    i32 0, label %bb.b
    i32 1, label %bb.e
    i32 2, label %bb.k
    i32 3, label %bb.q
    i32 4, label %bb.v
  ]

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.i = load ptr, ptr %i.h, align 8              ; 2 uses
  %.not50 = icmp eq ptr %i.i, null
  br i1 %.not50, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = tail call ptr %i.i() #28
  br label %config_enum_lookup_by_value.exit

bb.d:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 152
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
  %time_unit_conversion_table.memory_unit_conversion_table = select i1 %.not, ptr @time_unit_conversion_table, ptr @memory_unit_conversion_table ; 2 uses
  br label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.e
  %i.b = phi ptr [ %i.r, %bb.e ], [ %time_unit_conversion_table.memory_unit_conversion_table, %bb.a ] ; 3 uses
  %.025 = phi i32 [ %i.p, %bb.e ], [ 0, %bb.a ]
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.d = load i32, ptr %i.c, align 4
  %i.e = icmp eq i32 %1, %i.d
  br i1 %i.e, label %bb.b, label %bb.e

bb.b:                                             ; preds = %.lr.ph
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.g = load double, ptr %i.f, align 8           ; 3 uses
  %i.h = fcmp ugt double %i.g, 1.000000e+00
  br i1 %i.h, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.i = fptosi double %i.g to i64
  %i.j = urem i64 %0, %i.i
  %i.k = icmp eq i64 %i.j, 0
  br i1 %i.k, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.l = uitofp nneg i64 %0 to double
  %i.m = fdiv double %i.l, %i.g
  %i.n = tail call double @llvm.rint.f64(double %i.m)
  %i.o = fptosi double %i.n to i64
  store i64 %i.o, ptr %2, align 8
  store ptr %i.b, ptr %3, align 8
  br label %.loopexit

bb.e:                                             ; preds = %.lr.ph, %bb.c
  %i.p = add i32 %.025, 1                         ; 2 uses
  %i.q = sext i32 %i.p to i64
  %i.r = getelementptr inbounds [16 x i8], ptr %time_unit_conversion_table.memory_unit_conversion_table, i64 %i.q ; 2 uses
  %i.s = load i8, ptr %i.r, align 16
  %.not21 = icmp eq i8 %i.s, 0
  br i1 %.not21, label %.loopexit, label %.lr.ph, !llvm.loop !43

.loopexit:                                        ; preds = %bb.e, %bb.d
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc void @convert_real_from_base_unit(double noundef %0, i32 noundef range(i32 1, 2130706433) %1, ptr nofree noundef nonnull captures(none) %2, ptr nofree noundef nonnull writeonly captures(none) initializes((0, 8)) %3) unnamed_addr #21 {
bb.a:
  store ptr null, ptr %3, align 8
  %i.a = and i32 %1, 251658240
  %.not = icmp eq i32 %i.a, 0
  %time_unit_conversion_table.memory_unit_conversion_table = select i1 %.not, ptr @time_unit_conversion_table, ptr @memory_unit_conversion_table ; 2 uses
  br label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.d
  %i.b = phi ptr [ %i.r, %bb.d ], [ %time_unit_conversion_table.memory_unit_conversion_table, %bb.a ] ; 3 uses
  %.021 = phi i32 [ %i.p, %bb.d ], [ 0, %bb.a ]
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.d = load i32, ptr %i.c, align 4
  %i.e = icmp eq i32 %1, %i.d
  br i1 %i.e, label %bb.b, label %bb.d

bb.b:                                             ; preds = %.lr.ph
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.g = load double, ptr %i.f, align 8
  %i.h = fdiv double %0, %i.g
  store double %i.h, ptr %2, align 8
  store ptr %i.b, ptr %3, align 8
  %i.i = load double, ptr %2, align 8             ; 3 uses
  %i.j = fcmp ogt double %i.i, 0.000000e+00
  br i1 %i.j, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.k = tail call double @llvm.rint.f64(double %i.i)
  %i.l = fdiv double %i.k, %i.i
  %i.m = fadd double %i.l, -1.000000e+00
  %i.n = tail call double @llvm.fabs.f64(double %i.m)
  %i.o = fcmp ugt double %i.n, 1.000000e-08
  br i1 %i.o, label %bb.d, label %._crit_edge

bb.d:                                             ; preds = %.lr.ph, %bb.c, %bb.b
  %i.p = add i32 %.021, 1                         ; 2 uses
  %i.q = sext i32 %i.p to i64
  %i.r = getelementptr inbounds [16 x i8], ptr %time_unit_conversion_table.memory_unit_conversion_table, i64 %i.q ; 2 uses
  %i.s = load i8, ptr %i.r, align 16
  %.not19 = icmp eq i8 %i.s, 0
  br i1 %.not19, label %._crit_edge, label %.lr.ph, !llvm.loop !44

._crit_edge:                                      ; preds = %bb.d, %bb.c
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
  %.not31.i = icmp eq ptr %i.au, null
  br i1 %.not31.i, label %bb.n, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.av = load i8, ptr %i.au, align 1
  %.not32.i = icmp eq i8 %i.av, 0
  br i1 %.not32.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.aw = tail call i64 @add_size(i64 noundef %i.at, i64 noundef 4) #28
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l, %bb.k
  %.126.i = phi i64 [ %i.aw, %bb.m ], [ %i.at, %bb.l ], [ %i.at, %bb.k ]
  %i.ax = tail call i64 @add_size(i64 noundef %.126.i, i64 noundef 4) #28
  %i.ay = tail call i64 @add_size(i64 noundef %i.ax, i64 noundef 4) #28
  %i.az = tail call i64 @add_size(i64 noundef %i.ay, i64 noundef 4) #28
  br label %estimate_variable_size.exit

estimate_variable_size.exit:                      ; preds = %.lr.ph, %can_skip_gucvar.exit.i, %bb.n
  %.0.i = phi i64 [ %i.az, %bb.n ], [ 0, %can_skip_gucvar.exit.i ], [ 0, %.lr.ph ]
  %i.ba = tail call i64 @add_size(i64 noundef %.020, i64 noundef %.0.i) #28 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %.sroa.0.019, i64 8
  %i.bc = load ptr, ptr %i.bb, align 8            ; 2 uses
  %.not8 = icmp eq ptr %i.bc, @guc_nondef_list
  br i1 %.not8, label %select.unfold._crit_edge, label %.lr.ph, !llvm.loop !45

select.unfold._crit_edge:                         ; preds = %estimate_variable_size.exit, %bb.a
  %.0.lcssa = phi i64 [ 8, %bb.a ], [ %i.ba, %estimate_variable_size.exit ]
  ret i64 %.0.lcssa
}

declare i64 @add_size(i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @SerializeGUCState(i64 noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 14 uses
  %i.b = alloca i64, align 8                      ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #28
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr %i.c, ptr %i.a, align 8
  %i.d = add i64 %0, -8                           ; 4 uses
  store i64 %i.d, ptr %i.b, align 8
  %i.e = load ptr, ptr getelementptr inbounds nuw (i8, ptr @guc_nondef_list, i64 8), align 8 ; 3 uses
  %.not = icmp eq ptr %i.e, null
  %.not92142 = icmp eq ptr %i.e, @guc_nondef_list
  %.not921 = or i1 %.not, %.not92142
  br i1 %.not921, label %select.unfold._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %serialize_variable.exit
  %i.f = phi i64 [ %i.cd, %serialize_variable.exit ], [ %i.d, %bb.a ] ; 2 uses
  %.sroa.0.022 = phi ptr [ %i.cf, %serialize_variable.exit ], [ %i.e, %bb.a ] ; 15 uses
  %i.g = getelementptr inbounds i8, ptr %.sroa.0.022, i64 -96 ; 2 uses
  %i.h = getelementptr inbounds i8, ptr %.sroa.0.022, i64 -88
  %i.i = load i32, ptr %i.h, align 8
  %switch.i.i = icmp ult i32 %i.i, 2
  br i1 %switch.i.i, label %serialize_variable.exit, label %can_skip_gucvar.exit.i

can_skip_gucvar.exit.i:                           ; preds = %.lr.ph
  %i.j = getelementptr inbounds i8, ptr %.sroa.0.022, i64 -52 ; 2 uses
  %i.k = load i32, ptr %i.j, align 4
  %i.l = icmp eq i32 %i.k, 0
  br i1 %i.l, label %serialize_variable.exit, label %bb.b

bb.b:                                             ; preds = %can_skip_gucvar.exit.i
  %i.m = load ptr, ptr %i.g, align 8
  call void (ptr, ptr, ptr, ...) @do_serialize(ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef nonnull @.str.84, ptr noundef %i.m)
  %i.n = getelementptr inbounds i8, ptr %.sroa.0.022, i64 -60
end_hunk_1
