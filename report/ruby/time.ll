inline.NumInlined: 958
inline.NumDeleted: 130
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumUnrolled: 7
begin_hunk_0_@timew2timespec:bb.a
  br label %rb_num2long_inline.exit

bb.k:                                             ; preds = %wv2timet.exit
  %i.aj = tail call i64 @rb_num2long(i64 noundef %.06.i4.i.i) #18
  br label %rb_num2long_inline.exit

rb_num2long_inline.exit:                          ; preds = %bb.j, %bb.k
  %.0.i = phi i64 [ %i.ai, %bb.j ], [ %i.aj, %bb.k ]
  %.fca.0.insert = insertvalue { i64, i64 } poison, i64 %.0.i.i, 0
  %.fca.1.insert = insertvalue { i64, i64 } %.fca.0.insert, i64 %.0.i, 1
  ret { i64, i64 } %.fca.1.insert
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #4

; Function Attrs: nounwind sspstrong uwtable
define dso_local { i64, i64 } @rb_time_timespec(i64 noundef %0) local_unnamed_addr #1 {
bb.a:
  %i.a = tail call i32 @rb_typeddata_is_kind_of(i64 noundef %0, ptr noundef nonnull @time_data_type) #18
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = icmp eq i64 %0, 0
  %i.c = and i64 %0, 7
  %i.d = icmp ne i64 %i.c, 0
  %i.e = or i1 %i.b, %i.d
  br i1 %i.e, label %.critedge.i.i, label %rbimpl_RB_TYPE_P_fastpath.exit.i.i, !prof !29

rbimpl_RB_TYPE_P_fastpath.exit.i.i:               ; preds = %bb.b
  %i.f = inttoptr i64 %0 to ptr                   ; 3 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !30
  %i.h = and i64 %i.g, 95
  %or.cond.not.i.i = icmp eq i64 %i.h, 76
  br i1 %or.cond.not.i.i, label %bb.c, label %.critedge.i.i, !prof !31

bb.c:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i.i
  %i.i = getelementptr i8, ptr %i.f, i64 24
  %i.j = load i64, ptr %i.i, align 8, !tbaa !17   ; 2 uses
  %i.k = and i64 %i.j, -2                         ; 2 uses
  %i.l = inttoptr i64 %i.k to ptr
  %i.m = trunc i64 %i.j to i1
  %i.n = getelementptr i8, ptr %i.f, i64 32       ; 2 uses
  br i1 %i.m, label %RTYPEDDATA_GET_DATA.exit.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !21
  br label %RTYPEDDATA_GET_DATA.exit.i.i

RTYPEDDATA_GET_DATA.exit.i.i:                     ; preds = %bb.d, %bb.c
  %i.p = phi ptr [ %i.o, %bb.d ], [ %i.n, %bb.c ] ; 2 uses
  %i.q = icmp eq i64 %i.k, ptrtoint (ptr @time_data_type to i64)
  br i1 %i.q, label %rbimpl_check_typeddata.exit.i, label %.preheader.i.i, !prof !15

.preheader.i.i:                                   ; preds = %RTYPEDDATA_GET_DATA.exit.i.i, %bb.e
  %.016.i.i = phi ptr [ %i.s, %bb.e ], [ %i.l, %RTYPEDDATA_GET_DATA.exit.i.i ] ; 2 uses
  %.not.i.i = icmp eq ptr %.016.i.i, null
  br i1 %.not.i.i, label %.critedge.i.i, label %bb.e

bb.e:                                             ; preds = %.preheader.i.i
  %i.r = getelementptr i8, ptr %.016.i.i, i64 48
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !32   ; 2 uses
  %i.t = icmp eq ptr %i.s, @time_data_type
  br i1 %i.t, label %rbimpl_check_typeddata.exit.i, label %.preheader.i.i, !llvm.loop !37

.critedge.i.i:                                    ; preds = %.preheader.i.i, %rbimpl_RB_TYPE_P_fastpath.exit.i.i, %bb.b
  %i.u = tail call ptr @rb_check_typeddata(i64 noundef %0, ptr noundef nonnull @time_data_type) #18
  br label %rbimpl_check_typeddata.exit.i

rbimpl_check_typeddata.exit.i:                    ; preds = %bb.e, %.critedge.i.i, %RTYPEDDATA_GET_DATA.exit.i.i
  %.1.i.i = phi ptr [ %i.u, %.critedge.i.i ], [ %i.p, %RTYPEDDATA_GET_DATA.exit.i.i ], [ %i.p, %bb.e ] ; 2 uses
  %i.v = getelementptr i8, ptr %.1.i.i, i64 40
  %i.w = load i64, ptr %i.v, align 8
  %i.x = and i64 %i.w, 61572651155456
  %.not.i = icmp eq i64 %i.x, 26388279066624
  br i1 %.not.i, label %bb.f, label %get_timeval.exit

bb.f:                                             ; preds = %rbimpl_check_typeddata.exit.i
  %i.y = load i64, ptr @rb_eTypeError, align 8, !tbaa !13
  %i.z = tail call i64 @rb_obj_class(i64 noundef %0) #18
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.y, ptr noundef nonnull @.str.92, i64 noundef %i.z) #19
  unreachable

get_timeval.exit:                                 ; preds = %rbimpl_check_typeddata.exit.i
  %i.aa = load i64, ptr %.1.i.i, align 8, !tbaa !22
  %i.ab = tail call fastcc { i64, i64 } @timew2timespec(i64 noundef %i.aa)
  br label %bb.h

bb.g:                                             ; preds = %bb.a
  %i.ac = tail call fastcc { i64, i64 } @time_timespec(i64 noundef %0, i32 noundef 0)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %get_timeval.exit
  %.pn = phi { i64, i64 } [ %i.ab, %get_timeval.exit ], [ %i.ac, %bb.g ]
  ret { i64, i64 } %.pn
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc { i64, i64 } @time_timespec(i64 noundef %0, i32 noundef range(i32 0, 2) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = icmp ne i32 %1, 0                        ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  %i.c = trunc i64 %0 to i1
  br i1 %i.c, label %rb_num2long_inline.exit, label %bb.c

rb_num2long_inline.exit:                          ; preds = %bb.a
  %i.d = ashr i64 %0, 1                           ; 2 uses
  %i.e = icmp slt i64 %i.d, 0
  %or.cond = and i1 %i.b, %i.e
  br i1 %or.cond, label %bb.b, label %rb_num2long_inline.exit59

bb.b:                                             ; preds = %rb_num2long_inline.exit
  %i.f = load i64, ptr @rb_eArgError, align 8, !tbaa !13
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.f, ptr noundef nonnull @.str.99) #19
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.g = and i64 %0, 2
  %.not = icmp eq i64 %i.g, 0
  br i1 %.not, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.h = icmp eq i64 %0, 0
  %i.i = and i64 %0, 4
  %i.j = icmp ne i64 %i.i, 0
  %i.k = or i1 %i.h, %i.j
  br i1 %i.k, label %rbimpl_RB_TYPE_P_fastpath.exit.thread, label %RB_FLOAT_TYPE_P.exit

RB_FLOAT_TYPE_P.exit:                             ; preds = %bb.d
  %i.l = inttoptr i64 %0 to ptr                   ; 2 uses
  %i.m = load i64, ptr %i.l, align 8, !tbaa !30
  %i.n = and i64 %i.m, 31
  %i.o = icmp eq i64 %i.n, 4
  br i1 %i.o, label %bb.g, label %rbimpl_RB_TYPE_P_fastpath.exit

bb.e:                                             ; preds = %bb.c
  %.not.i.i = icmp eq i64 %0, -9223372036854775806
  br i1 %.not.i.i, label %rb_float_value_inline.exit.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %.neg.i.i = ashr i64 %0, 63
  %i.p = add nsw i64 %.neg.i.i, 2
  %i.q = and i64 %0, -4
  %i.r = or i64 %i.p, %i.q                        ; 2 uses
  %i.s = tail call noundef i64 @llvm.fshl.i64(i64 range(i64 1, 0) %i.r, i64 range(i64 1, 0) %i.r, i64 61)
  %i.t = bitcast i64 %i.s to double
  br label %rb_float_value_inline.exit

bb.g:                                             ; preds = %RB_FLOAT_TYPE_P.exit
  %i.u = getelementptr i8, ptr %i.l, i64 16
  %i.v = load double, ptr %i.u, align 8, !tbaa !58
  br label %rb_float_value_inline.exit

rb_float_value_inline.exit:                       ; preds = %bb.f, %bb.g
  %.0.i53 = phi double [ %i.v, %bb.g ], [ %i.t, %bb.f ] ; 2 uses
  %i.w = fcmp olt double %.0.i53, 0.000000e+00
  %or.cond4 = select i1 %i.b, i1 %i.w, i1 false
  br i1 %or.cond4, label %bb.h, label %rb_float_value_inline.exit.thread

bb.h:                                             ; preds = %rb_float_value_inline.exit
  %i.x = load i64, ptr @rb_eArgError, align 8, !tbaa !13
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.x, ptr noundef nonnull @.str.99) #19
  unreachable

rb_float_value_inline.exit.thread:                ; preds = %bb.e, %rb_float_value_inline.exit
  %.0.i5365 = phi double [ %.0.i53, %rb_float_value_inline.exit ], [ 0.000000e+00, %bb.e ] ; 2 uses
  %i.y = tail call { double, double } @llvm.modf.f64(double %.0.i5365) ; 2 uses
  %i.z = extractvalue { double, double } %i.y, 0  ; 3 uses
  %i.aa = extractvalue { double, double } %i.y, 1 ; 4 uses
  %i.ab = fcmp ult double %i.z, 0.000000e+00
  br i1 %i.ab, label %bb.k, label %bb.i

bb.i:                                             ; preds = %rb_float_value_inline.exit.thread
  %i.ac = tail call double @llvm.fmuladd.f64(double %i.z, double 1.000000e+09, double 5.000000e-01)
  %i.ad = fptosi double %i.ac to i32              ; 2 uses
  %i.ae = sext i32 %i.ad to i64                   ; 2 uses
  %i.af = icmp sgt i32 %i.ad, 999999999
  br i1 %i.af, label %bb.j, label %bb.m

bb.j:                                             ; preds = %bb.i
  %i.ag = add nsw i64 %i.ae, -1000000000
  %i.ah = fadd double %i.aa, 1.000000e+00
  br label %bb.m

bb.k:                                             ; preds = %rb_float_value_inline.exit.thread
  %i.ai = fneg double %i.z
  %i.aj = tail call double @llvm.fmuladd.f64(double %i.ai, double 1.000000e+09, double 5.000000e-01)
  %i.ak = fptosi double %i.aj to i32              ; 2 uses
  %i.al = sext i32 %i.ak to i64                   ; 2 uses
  %i.am = icmp sgt i32 %i.ak, 0
  br i1 %i.am, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.an = sub nsw i64 1000000000, %i.al
  %i.ao = fadd double %i.aa, -1.000000e+00
  br label %bb.m

bb.m:                                             ; preds = %bb.k, %bb.l, %bb.i, %bb.j
  %.sroa.9.0 = phi i64 [ %i.ag, %bb.j ], [ %i.ae, %bb.i ], [ %i.an, %bb.l ], [ %i.al, %bb.k ]
  %.0 = phi double [ %i.ah, %bb.j ], [ %i.aa, %bb.i ], [ %i.ao, %bb.l ], [ %i.aa, %bb.k ] ; 2 uses
  %i.ap = fptosi double %.0 to i64                ; 2 uses
  %i.aq = sitofp i64 %i.ap to double
  %i.ar = fcmp une double %.0, %i.aq
  br i1 %i.ar, label %bb.n, label %rb_num2long_inline.exit59

bb.n:                                             ; preds = %bb.m
  %i.as = load i64, ptr @rb_eRangeError, align 8, !tbaa !13
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.as, ptr noundef nonnull @.str.100, double noundef %.0.i5365) #19
  unreachable

rbimpl_RB_TYPE_P_fastpath.exit:                   ; preds = %RB_FLOAT_TYPE_P.exit
  %i.at = inttoptr i64 %0 to ptr
  %i.au = load i64, ptr %i.at, align 8, !tbaa !30
  %i.av = and i64 %i.au, 31
  %i.aw = icmp eq i64 %i.av, 10
  br i1 %i.aw, label %rb_num2long_inline.exit55, label %rbimpl_RB_TYPE_P_fastpath.exit.thread

rb_num2long_inline.exit55:                        ; preds = %rbimpl_RB_TYPE_P_fastpath.exit
  %i.ax = tail call i64 @rb_num2long(i64 noundef %0) #18 ; 2 uses
  %i.ay = icmp slt i64 %i.ax, 0
  %or.cond7 = select i1 %i.b, i1 %i.ay, i1 false
  br i1 %or.cond7, label %bb.o, label %rb_num2long_inline.exit59

bb.o:                                             ; preds = %rb_num2long_inline.exit55
  %i.az = load i64, ptr @rb_eArgError, align 8, !tbaa !13
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.az, ptr noundef nonnull @.str.99) #19
  unreachable

rbimpl_RB_TYPE_P_fastpath.exit.thread:            ; preds = %bb.d, %rbimpl_RB_TYPE_P_fastpath.exit
  store i64 3, ptr %i.a, align 8, !tbaa !13
  %i.ba = call i64 @rb_check_funcall(i64 noundef %0, i64 noundef 3601, i32 noundef 1, ptr noundef nonnull %i.a) #18 ; 2 uses
  %i.bb = icmp eq i64 %i.ba, 36
  br i1 %i.bb, label %bb.x, label %bb.p

bb.p:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.thread
  %i.bc = call i64 @rb_check_array_type(i64 noundef %i.ba) #18 ; 3 uses
  %i.bd = icmp eq i64 %i.bc, 4
  br i1 %i.bd, label %bb.x, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.be = call i64 @rb_ary_entry(i64 noundef %i.bc, i64 noundef 0) #21 ; 4 uses
  store i64 %i.be, ptr %i.a, align 8, !tbaa !13
  %i.bf = call i64 @rb_ary_entry(i64 noundef %i.bc, i64 noundef 1) #21
  %i.bg = trunc i64 %i.be to i1
  br i1 %i.bg, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.bh = ashr i64 %i.be, 1
  br label %rb_num2long_inline.exit57

bb.s:                                             ; preds = %bb.q
  %i.bi = call i64 @rb_num2long(i64 noundef %i.be) #18
  br label %rb_num2long_inline.exit57

rb_num2long_inline.exit57:                        ; preds = %bb.r, %bb.s
  %.0.i56 = phi i64 [ %i.bh, %bb.r ], [ %i.bi, %bb.s ] ; 3 uses
  %i.bj = icmp slt i64 %.0.i56, 0
  %or.cond10 = select i1 %i.b, i1 %i.bj, i1 false
  br i1 %or.cond10, label %bb.t, label %bb.u

bb.t:                                             ; preds = %rb_num2long_inline.exit57
  %i.bk = load i64, ptr @rb_eArgError, align 8, !tbaa !13
  call void (i64, ptr, ...) @rb_raise(i64 noundef %i.bk, ptr noundef nonnull @.str.99) #19
  unreachable

bb.u:                                             ; preds = %rb_num2long_inline.exit57
  %i.bl = call i64 (i64, i64, i32, ...) @rb_funcall(i64 noundef %i.bf, i64 noundef 42, i32 noundef 1, i64 noundef 2000000001) #18 ; 3 uses
  %i.bm = trunc i64 %i.bl to i1
  br i1 %i.bm, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.bn = ashr i64 %i.bl, 1
  br label %rb_num2long_inline.exit59

bb.w:                                             ; preds = %bb.u
  %i.bo = call i64 @rb_num2long(i64 noundef %i.bl) #18
  br label %rb_num2long_inline.exit59

bb.x:                                             ; preds = %bb.p, %rbimpl_RB_TYPE_P_fastpath.exit.thread
  %i.bp = select i1 %i.b, ptr @.str.98, ptr @.str.96
  %i.bq = load i64, ptr @rb_eTypeError, align 8, !tbaa !13
  %i.br = call i64 @rb_obj_class(i64 noundef %0) #18
  call void (i64, ptr, ...) @rb_raise(i64 noundef %i.bq, ptr noundef nonnull @.str.101, i64 noundef %i.br, ptr noundef nonnull %i.bp) #19
  unreachable

rb_num2long_inline.exit59:                        ; preds = %bb.w, %bb.v, %rb_num2long_inline.exit55, %bb.m, %rb_num2long_inline.exit
  %.sroa.0.0 = phi i64 [ %i.ax, %rb_num2long_inline.exit55 ], [ %i.d, %rb_num2long_inline.exit ], [ %i.ap, %bb.m ], [ %.0.i56, %bb.v ], [ %.0.i56, %bb.w ]
  %.sroa.9.1 = phi i64 [ 0, %rb_num2long_inline.exit55 ], [ 0, %rb_num2long_inline.exit ], [ %.sroa.9.0, %bb.m ], [ %i.bn, %bb.v ], [ %i.bo, %bb.w ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  %.fca.0.insert = insertvalue { i64, i64 } poison, i64 %.sroa.0.0, 0
  %.fca.1.insert = insertvalue { i64, i64 } %.fca.0.insert, i64 %.sroa.9.1, 1
  ret { i64, i64 } %.fca.1.insert
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local { i64, i64 } @rb_time_timespec_interval(i64 noundef %0) local_unnamed_addr #1 {
bb.a:
  %i.a = tail call fastcc { i64, i64 } @time_timespec(i64 noundef %0, i32 noundef 1)
  ret { i64, i64 } %i.a
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @rb_time_utc_offset(i64 noundef %0) #1 {
bb.a:
  %i.a = icmp eq i64 %0, 0
  %i.b = and i64 %0, 7
  %i.c = icmp ne i64 %i.b, 0
  %i.d = or i1 %i.a, %i.c
  br i1 %i.d, label %.critedge.i.i, label %rbimpl_RB_TYPE_P_fastpath.exit.i.i, !prof !29

rbimpl_RB_TYPE_P_fastpath.exit.i.i:               ; preds = %bb.a
  %i.e = inttoptr i64 %0 to ptr                   ; 3 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !30
  %i.g = and i64 %i.f, 95
  %or.cond.not.i.i = icmp eq i64 %i.g, 76
  br i1 %or.cond.not.i.i, label %bb.b, label %.critedge.i.i, !prof !31

bb.b:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i.i
  %i.h = getelementptr i8, ptr %i.e, i64 24
  %i.i = load i64, ptr %i.h, align 8, !tbaa !17   ; 2 uses
  %i.j = and i64 %i.i, -2                         ; 2 uses
  %i.k = inttoptr i64 %i.j to ptr
  %i.l = trunc i64 %i.i to i1
  %i.m = getelementptr i8, ptr %i.e, i64 32       ; 2 uses
  br i1 %i.l, label %RTYPEDDATA_GET_DATA.exit.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !21
  br label %RTYPEDDATA_GET_DATA.exit.i.i

RTYPEDDATA_GET_DATA.exit.i.i:                     ; preds = %bb.c, %bb.b
  %i.o = phi ptr [ %i.n, %bb.c ], [ %i.m, %bb.b ] ; 2 uses
  %i.p = icmp eq i64 %i.j, ptrtoint (ptr @time_data_type to i64)
  br i1 %i.p, label %rbimpl_check_typeddata.exit.i, label %.preheader.i.i, !prof !15

.preheader.i.i:                                   ; preds = %RTYPEDDATA_GET_DATA.exit.i.i, %bb.d
  %.016.i.i = phi ptr [ %i.r, %bb.d ], [ %i.k, %RTYPEDDATA_GET_DATA.exit.i.i ] ; 2 uses
  %.not.i.i = icmp eq ptr %.016.i.i, null
  br i1 %.not.i.i, label %.critedge.i.i, label %bb.d

bb.d:                                             ; preds = %.preheader.i.i
  %i.q = getelementptr i8, ptr %.016.i.i, i64 48
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !32   ; 2 uses
  %i.s = icmp eq ptr %i.r, @time_data_type
  br i1 %i.s, label %rbimpl_check_typeddata.exit.i, label %.preheader.i.i, !llvm.loop !37

.critedge.i.i:                                    ; preds = %.preheader.i.i, %rbimpl_RB_TYPE_P_fastpath.exit.i.i, %bb.a
  %i.t = tail call ptr @rb_check_typeddata(i64 noundef %0, ptr noundef nonnull @time_data_type) #18
  br label %rbimpl_check_typeddata.exit.i

rbimpl_check_typeddata.exit.i:                    ; preds = %bb.d, %.critedge.i.i, %RTYPEDDATA_GET_DATA.exit.i.i
  %.1.i.i = phi ptr [ %i.t, %.critedge.i.i ], [ %i.o, %RTYPEDDATA_GET_DATA.exit.i.i ], [ %i.o, %bb.d ] ; 2 uses
  %i.u = getelementptr i8, ptr %.1.i.i, i64 40
  %i.v = load i64, ptr %i.u, align 8              ; 3 uses
  %i.w = and i64 %i.v, 61572651155456
  switch i64 %i.w, label %bb.f [
    i64 26388279066624, label %bb.e
    i64 8796093022208, label %bb.k
  ]

bb.e:                                             ; preds = %rbimpl_check_typeddata.exit.i
  %i.x = load i64, ptr @rb_eTypeError, align 8, !tbaa !13
  %i.y = tail call i64 @rb_obj_class(i64 noundef %0) #18
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.x, ptr noundef nonnull @.str.92, i64 noundef %i.y) #19
  unreachable

bb.f:                                             ; preds = %rbimpl_check_typeddata.exit.i
  %i.z = and i64 %i.v, 70368744177664
  %i.aa = icmp eq i64 %i.z, 0
  br i1 %i.aa, label %bb.g, label %time_get_tm.exit

bb.g:                                             ; preds = %bb.f
  %i.ab = lshr i64 %i.v, 43
  %i.ac = trunc nuw nsw i64 %i.ab to i32
  %i.ad = and i32 %i.ac, 7
  switch i32 %i.ad, label %bb.j [
    i32 1, label %bb.h
    i32 2, label %bb.i
  ]

bb.h:                                             ; preds = %bb.g
  %i.ae = tail call i64 @time_gmtime(i64 noundef %0), !inline_history !61 ; 0 uses
  br label %time_get_tm.exit

bb.i:                                             ; preds = %bb.g
  %i.af = tail call fastcc i64 @time_fixoff(i64 noundef %0), !inline_history !61 ; 0 uses
  br label %time_get_tm.exit

bb.j:                                             ; preds = %bb.g
  %i.ag = tail call fastcc i64 @time_localtime(i64 noundef %0), !inline_history !61 ; 0 uses
  br label %time_get_tm.exit

time_get_tm.exit:                                 ; preds = %bb.j, %bb.i, %bb.h, %bb.f
  %i.ah = getelementptr i8, ptr %.1.i.i, i64 24
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !47
  br label %bb.k

bb.k:                                             ; preds = %rbimpl_check_typeddata.exit.i, %time_get_tm.exit
  %.0 = phi i64 [ %i.ai, %time_get_tm.exit ], [ 1, %rbimpl_check_typeddata.exit.i ]
  ret i64 %.0
end_hunk_0
begin_hunk_1_@time_strftime:bb.a
  %i.bz = load i64, ptr %i.a, align 8, !tbaa !13
  call void @rb_str_tmp_frozen_release(i64 noundef %i.bz, i64 noundef %i.bg) #18
  %.not23 = icmp eq i64 %i.by, 0
  br i1 %.not23, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.ca = load i64, ptr @rb_eArgError, align 8, !tbaa !13
  %i.cb = load i64, ptr %i.a, align 8, !tbaa !13
  call void (i64, ptr, ...) @rb_raise(i64 noundef %i.ca, ptr noundef nonnull @.str.134, i64 noundef %i.cb) #19
  unreachable

bb.u:                                             ; preds = %bb.s, %bb.r
  %.0 = phi i64 [ %i.bs, %bb.r ], [ %i.by, %bb.s ]
  ret i64 %.0
}

; Function Attrs: nounwind sspstrong uwtable
define internal i64 @time_xmlschema(i32 noundef %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2) #1 {
bb.a:
  %or.cond.i = icmp ugt i32 %0, 1
  br i1 %or.cond.i, label %bb.b, label %rb_check_arity.exit

bb.b:                                             ; preds = %bb.a
  tail call void @rb_error_arity(i32 noundef %0, i32 noundef 0, i32 noundef 1) #19
  unreachable

rb_check_arity.exit:                              ; preds = %bb.a
  %i.a = icmp eq i32 %0, 1
  br i1 %i.a, label %bb.c, label %bb.f

bb.c:                                             ; preds = %rb_check_arity.exit
  %i.b = load i64, ptr %1, align 8, !tbaa !13     ; 3 uses
  %i.c = trunc i64 %i.b to i1
  br i1 %i.c, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.d = ashr i64 %i.b, 1
  br label %rb_num2long_inline.exit

bb.e:                                             ; preds = %bb.c
  %i.e = tail call i64 @rb_num2long(i64 noundef %i.b) #18
  br label %rb_num2long_inline.exit

rb_num2long_inline.exit:                          ; preds = %bb.d, %bb.e
  %.0.i = phi i64 [ %i.d, %bb.d ], [ %i.e, %bb.e ]
  %spec.store.select = tail call i64 @llvm.smax.i64(i64 %.0.i, i64 0)
  br label %bb.f

bb.f:                                             ; preds = %rb_num2long_inline.exit, %rb_check_arity.exit
  %.0 = phi i64 [ %spec.store.select, %rb_num2long_inline.exit ], [ 0, %rb_check_arity.exit ] ; 12 uses
  %i.f = icmp eq i64 %2, 0
  %i.g = and i64 %2, 7
  %i.h = icmp ne i64 %i.g, 0
  %i.i = or i1 %i.f, %i.h
  br i1 %i.i, label %.critedge.i.i, label %rbimpl_RB_TYPE_P_fastpath.exit.i.i, !prof !29

rbimpl_RB_TYPE_P_fastpath.exit.i.i:               ; preds = %bb.f
  %i.j = inttoptr i64 %2 to ptr                   ; 3 uses
  %i.k = load i64, ptr %i.j, align 8, !tbaa !30
  %i.l = and i64 %i.k, 95
  %or.cond.not.i.i = icmp eq i64 %i.l, 76
  br i1 %or.cond.not.i.i, label %bb.g, label %.critedge.i.i, !prof !31

bb.g:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i.i
  %i.m = getelementptr i8, ptr %i.j, i64 24
  %i.n = load i64, ptr %i.m, align 8, !tbaa !17   ; 2 uses
  %i.o = and i64 %i.n, -2                         ; 2 uses
  %i.p = inttoptr i64 %i.o to ptr
  %i.q = trunc i64 %i.n to i1
  %i.r = getelementptr i8, ptr %i.j, i64 32       ; 2 uses
  br i1 %i.q, label %RTYPEDDATA_GET_DATA.exit.i.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !21
  br label %RTYPEDDATA_GET_DATA.exit.i.i

RTYPEDDATA_GET_DATA.exit.i.i:                     ; preds = %bb.h, %bb.g
  %i.t = phi ptr [ %i.s, %bb.h ], [ %i.r, %bb.g ] ; 2 uses
  %i.u = icmp eq i64 %i.o, ptrtoint (ptr @time_data_type to i64)
  br i1 %i.u, label %rbimpl_check_typeddata.exit.i, label %.preheader.i.i, !prof !15

.preheader.i.i:                                   ; preds = %RTYPEDDATA_GET_DATA.exit.i.i, %bb.i
  %.016.i.i = phi ptr [ %i.w, %bb.i ], [ %i.p, %RTYPEDDATA_GET_DATA.exit.i.i ] ; 2 uses
  %.not.i.i = icmp eq ptr %.016.i.i, null
  br i1 %.not.i.i, label %.critedge.i.i, label %bb.i

bb.i:                                             ; preds = %.preheader.i.i
  %i.v = getelementptr i8, ptr %.016.i.i, i64 48
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !32   ; 2 uses
  %i.x = icmp eq ptr %i.w, @time_data_type
  br i1 %i.x, label %rbimpl_check_typeddata.exit.i, label %.preheader.i.i, !llvm.loop !37

.critedge.i.i:                                    ; preds = %.preheader.i.i, %rbimpl_RB_TYPE_P_fastpath.exit.i.i, %bb.f
  %i.y = tail call ptr @rb_check_typeddata(i64 noundef %2, ptr noundef nonnull @time_data_type) #18
  br label %rbimpl_check_typeddata.exit.i

rbimpl_check_typeddata.exit.i:                    ; preds = %bb.i, %.critedge.i.i, %RTYPEDDATA_GET_DATA.exit.i.i
  %.1.i.i = phi ptr [ %i.y, %.critedge.i.i ], [ %i.t, %RTYPEDDATA_GET_DATA.exit.i.i ], [ %i.t, %bb.i ] ; 3 uses
  %i.z = getelementptr i8, ptr %.1.i.i, i64 40    ; 12 uses
  %i.aa = load i64, ptr %i.z, align 8             ; 3 uses
  %i.ab = and i64 %i.aa, 61572651155456
  %.not.i = icmp eq i64 %i.ab, 26388279066624
  br i1 %.not.i, label %bb.j, label %get_timeval.exit

bb.j:                                             ; preds = %rbimpl_check_typeddata.exit.i
  %i.ac = load i64, ptr @rb_eTypeError, align 8, !tbaa !13
  %i.ad = tail call i64 @rb_obj_class(i64 noundef %2) #18
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.ac, ptr noundef nonnull @.str.92, i64 noundef %i.ad) #19
  unreachable

get_timeval.exit:                                 ; preds = %rbimpl_check_typeddata.exit.i
  %i.ae = getelementptr i8, ptr %.1.i.i, i64 8
  %i.af = and i64 %i.aa, 70368744177664
  %i.ag = icmp eq i64 %i.af, 0
  br i1 %i.ag, label %bb.k, label %time_get_tm.exit

bb.k:                                             ; preds = %get_timeval.exit
  %i.ah = lshr i64 %i.aa, 43
  %i.ai = trunc nuw nsw i64 %i.ah to i32
  %i.aj = and i32 %i.ai, 7
  switch i32 %i.aj, label %bb.n [
    i32 1, label %bb.l
    i32 2, label %bb.m
  ]

bb.l:                                             ; preds = %bb.k
  %i.ak = tail call i64 @time_gmtime(i64 noundef %2), !inline_history !61 ; 0 uses
  br label %time_get_tm.exit

bb.m:                                             ; preds = %bb.k
  %i.al = tail call fastcc i64 @time_fixoff(i64 noundef %2), !inline_history !61 ; 0 uses
  br label %time_get_tm.exit

bb.n:                                             ; preds = %bb.k
  %i.am = tail call fastcc i64 @time_localtime(i64 noundef %2), !inline_history !61 ; 0 uses
  br label %time_get_tm.exit

time_get_tm.exit:                                 ; preds = %bb.n, %bb.m, %bb.l, %get_timeval.exit
  %i.an = add nuw i64 %.0, 22
  %i.ao = icmp ne i64 %.0, 0                      ; 2 uses
  %i.ap = zext i1 %i.ao to i64
  %i.aq = add nuw i64 %i.an, %i.ap                ; 2 uses
  %i.ar = load i64, ptr %i.ae, align 8, !tbaa !45 ; 3 uses
  %i.as = trunc i64 %i.ar to i1
  br i1 %i.as, label %bb.o, label %bb.q

bb.o:                                             ; preds = %time_get_tm.exit
  %i.at = ashr i64 %i.ar, 1                       ; 3 uses
  %.lobit = lshr i64 %i.at, 63
  %i.au = trunc nuw nsw i64 %.lobit to i32        ; 2 uses
  %i.av = or disjoint i32 %i.au, 4                ; 2 uses
  %i.aw = add nsw i64 %i.at, 9999
  %or.cond = icmp ult i64 %i.aw, 19999
  %i.ax = or disjoint i32 %i.au, 20
  %i.ay = select i1 %or.cond, i32 %i.av, i32 %i.ax ; 2 uses
  %i.az = zext nneg i32 %i.ay to i64
  %i.ba = add nuw i64 %i.aq, %i.az
  %i.bb = tail call i64 @rb_usascii_str_new(ptr noundef null, i64 noundef %i.ba) #18, !callees !64 ; 2 uses
  %i.bc = inttoptr i64 %i.bb to ptr               ; 2 uses
  %i.bd = load i64, ptr %i.bc, align 8, !tbaa !30
  %i.be = and i64 %i.bd, 8192
  %.not.i142 = icmp eq i64 %i.be, 0
  %i.bf = getelementptr i8, ptr %i.bc, i64 24     ; 2 uses
  br i1 %.not.i142, label %RSTRING_PTR.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !53
  br label %RSTRING_PTR.exit

RSTRING_PTR.exit:                                 ; preds = %bb.o, %bb.p
  %i.bh = phi ptr [ %i.bg, %bb.p ], [ %i.bf, %bb.o ] ; 2 uses
  %i.bi = add nuw nsw i32 %i.ay, 1
  %i.bj = zext nneg i32 %i.bi to i64
  %i.bk = tail call i32 (ptr, i64, ptr, ...) @ruby_snprintf(ptr noundef %i.bh, i64 noundef %i.bj, ptr noundef nonnull @.str.135, i32 noundef %i.av, i64 noundef %i.at) #18
  %i.bl = sext i32 %i.bk to i64
  %i.bm = getelementptr i8, ptr %i.bh, i64 %i.bl
  br label %bb.s

bb.q:                                             ; preds = %time_get_tm.exit
  %i.bn = tail call i64 @rb_int2str(i64 noundef %i.ar, i32 noundef 10) #18 ; 3 uses
  tail call void @rb_str_modify_expand(i64 noundef %i.bn, i64 noundef %i.aq) #18
  %i.bo = inttoptr i64 %i.bn to ptr               ; 3 uses
  %i.bp = load i64, ptr %i.bo, align 8, !tbaa !30
  %i.bq = and i64 %i.bp, 8192
  %.not.i143 = icmp eq i64 %i.bq, 0
  %i.br = getelementptr i8, ptr %i.bo, i64 24     ; 2 uses
  br i1 %.not.i143, label %RSTRING_END.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !53
  br label %RSTRING_END.exit

RSTRING_END.exit:                                 ; preds = %bb.q, %bb.r
  %i.bt = phi ptr [ %i.bs, %bb.r ], [ %i.br, %bb.q ]
  %i.bu = getelementptr i8, ptr %i.bo, i64 16
  %i.bv = load i64, ptr %i.bu, align 8, !tbaa !56
  %i.bw = getelementptr i8, ptr %i.bt, i64 %i.bv
  br label %bb.s

bb.s:                                             ; preds = %RSTRING_PTR.exit, %RSTRING_END.exit
  %.0136 = phi i64 [ %i.bn, %RSTRING_END.exit ], [ %i.bb, %RSTRING_PTR.exit ] ; 3 uses
  %.1135 = phi ptr [ %i.bw, %RSTRING_END.exit ], [ %i.bm, %RSTRING_PTR.exit ] ; 17 uses
  %i.bx = getelementptr i8, ptr %.1135, i64 1
  store i8 45, ptr %.1135, align 1, !tbaa !53
  %i.by = load i64, ptr %i.z, align 8
  %i.bz = and i64 %i.by, 7168
  %.cmp = icmp samesign ugt i64 %i.bz, 4608
  %i.ca = zext i1 %.cmp to i8
  %i.cb = or disjoint i8 %i.ca, 48
  %i.cc = getelementptr i8, ptr %.1135, i64 2
  store i8 %i.cb, ptr %i.bx, align 1, !tbaa !53
  %i.cd = load i64, ptr %i.z, align 8
  %.fr = freeze i64 %i.cd
  %i.ce = trunc i64 %.fr to i32
  %i.cf = lshr i32 %i.ce, 9
  %i.cg = and i32 %i.cf, 15                       ; 3 uses
  %.urem = add nuw nsw i32 %i.cg, 246
  %.cmp159 = icmp samesign ult i32 %i.cg, 10
  %i.ch = select i1 %.cmp159, i32 %i.cg, i32 %.urem
  %i.ci = trunc i32 %i.ch to i8
  %i.cj = or disjoint i8 %i.ci, 48
  %i.ck = getelementptr i8, ptr %.1135, i64 3
  store i8 %i.cj, ptr %i.cc, align 1, !tbaa !53
  %i.cl = getelementptr i8, ptr %.1135, i64 4
  store i8 45, ptr %i.ck, align 1, !tbaa !53
  %i.cm = load i64, ptr %i.z, align 8
  %i.cn = lshr i64 %i.cm, 13
  %i.co = trunc i64 %i.cn to i8
  %.lhs.trunc = and i8 %i.co, 30
  %i.cp = udiv i8 %.lhs.trunc, 10
  %i.cq = or disjoint i8 %i.cp, 48
  %i.cr = getelementptr i8, ptr %.1135, i64 5
  store i8 %i.cq, ptr %i.cl, align 1, !tbaa !53
  %i.cs = load i64, ptr %i.z, align 8
  %i.ct = lshr i64 %i.cs, 13
  %i.cu = trunc i64 %i.ct to i8
  %.lhs.trunc160 = and i8 %i.cu, 31
  %i.cv = urem i8 %.lhs.trunc160, 10
  %i.cw = or disjoint i8 %i.cv, 48
  %i.cx = getelementptr i8, ptr %.1135, i64 6
  store i8 %i.cw, ptr %i.cr, align 1, !tbaa !53
  %i.cy = getelementptr i8, ptr %.1135, i64 7
  store i8 84, ptr %i.cx, align 1, !tbaa !53
  %i.cz = load i64, ptr %i.z, align 8
  %i.da = lshr i64 %i.cz, 18
  %i.db = trunc i64 %i.da to i8
  %.lhs.trunc162 = and i8 %i.db, 30
  %i.dc = udiv i8 %.lhs.trunc162, 10
  %i.dd = or disjoint i8 %i.dc, 48
  %i.de = getelementptr i8, ptr %.1135, i64 8
  store i8 %i.dd, ptr %i.cy, align 1, !tbaa !53
  %i.df = load i64, ptr %i.z, align 8
  %i.dg = lshr i64 %i.df, 18
  %i.dh = trunc i64 %i.dg to i8
  %.lhs.trunc164 = and i8 %i.dh, 31
  %i.di = urem i8 %.lhs.trunc164, 10
  %i.dj = or disjoint i8 %i.di, 48
  %i.dk = getelementptr i8, ptr %.1135, i64 9
  store i8 %i.dj, ptr %i.de, align 1, !tbaa !53
  %i.dl = getelementptr i8, ptr %.1135, i64 10
  store i8 58, ptr %i.dk, align 1, !tbaa !53
  %i.dm = load i64, ptr %i.z, align 8
  %i.dn = lshr i64 %i.dm, 23
  %i.do = trunc i64 %i.dn to i8
  %.lhs.trunc166 = and i8 %i.do, 62
  %i.dp = udiv i8 %.lhs.trunc166, 10
  %i.dq = or disjoint i8 %i.dp, 48
  %i.dr = getelementptr i8, ptr %.1135, i64 11
  store i8 %i.dq, ptr %i.dl, align 1, !tbaa !53
  %i.ds = load i64, ptr %i.z, align 8
  %i.dt = lshr i64 %i.ds, 23
  %i.du = trunc i64 %i.dt to i8
  %.lhs.trunc168 = and i8 %i.du, 63
  %i.dv = urem i8 %.lhs.trunc168, 10
  %i.dw = or disjoint i8 %i.dv, 48
  %i.dx = getelementptr i8, ptr %.1135, i64 12
  store i8 %i.dw, ptr %i.dr, align 1, !tbaa !53
  %i.dy = getelementptr i8, ptr %.1135, i64 13
  store i8 58, ptr %i.dx, align 1, !tbaa !53
  %i.dz = load i64, ptr %i.z, align 8
  %i.ea = lshr i64 %i.dz, 32
  %i.eb = trunc i64 %i.ea to i8
  %i.ec = and i8 %i.eb, 62
  %i.ed = udiv i8 %i.ec, 10
  %i.ee = or disjoint i8 %i.ed, 48
  %i.ef = getelementptr i8, ptr %.1135, i64 14
  store i8 %i.ee, ptr %i.dy, align 1, !tbaa !53
  %i.eg = load i64, ptr %i.z, align 8
  %i.eh = lshr i64 %i.eg, 32
  %i.ei = trunc i64 %i.eh to i8
  %i.ej = and i8 %i.ei, 63
  %i.ek = urem i8 %i.ej, 10
  %i.el = or disjoint i8 %i.ek, 48
  %i.em = getelementptr i8, ptr %.1135, i64 15    ; 2 uses
  store i8 %i.el, ptr %i.ef, align 1, !tbaa !53
  br i1 %i.ao, label %bb.t, label %ruby_nonempty_memcpy.exit

bb.t:                                             ; preds = %bb.s
  %i.en = getelementptr i8, ptr %.1.i.i, i64 16
  %i.eo = load i64, ptr %i.en, align 8, !tbaa !46 ; 8 uses
  %i.ep = getelementptr i8, ptr %.1135, i64 16    ; 4 uses
  store i8 46, ptr %i.em, align 1, !tbaa !53
  %i.eq = icmp samesign ult i64 %.0, 10
  br i1 %i.eq, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.er = trunc nuw nsw i64 %.0 to i32
  %i.es = sub nuw nsw i32 9, %i.er
  br label %bb.ac

bb.v:                                             ; preds = %bb.t
  %i.et = add nsw i64 %.0, -9
  %i.eu = tail call i64 @rb_int_positive_pow(i64 noundef 10, i64 noundef %i.et) #18 ; 4 uses
  %i.ev = and i64 %i.eo, 1
  %i.ew = and i64 %i.ev, %i.eu
  %or.cond.not.i = icmp eq i64 %i.ew, 0
  br i1 %or.cond.not.i, label %bb.z, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ex = ashr i64 %i.eo, 1
  %i.ey = ashr i64 %i.eu, 1
  %i.ez = sext i64 %i.ex to i128
  %i.fa = sext i64 %i.ey to i128
  %i.fb = mul nsw i128 %i.fa, %i.ez               ; 3 uses
  %i.fc = add nsw i128 %i.fb, 4611686018427387904
  %or.cond.i.i = icmp ult i128 %i.fc, 9223372036854775808
  br i1 %or.cond.i.i, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.fd = trunc nsw i128 %i.fb to i64
  %i.fe = shl nsw i64 %i.fd, 1
  %i.ff = or disjoint i64 %i.fe, 1
  br label %mulv.exit

bb.y:                                             ; preds = %bb.w
  %i.fg = tail call i64 @rb_int128t2big(i128 noundef %i.fb) #18
  br label %mulv.exit

bb.z:                                             ; preds = %bb.v
  %i.fh = icmp eq i64 %i.eo, 0
  %i.fi = and i64 %i.eo, 7
  %i.fj = icmp ne i64 %i.fi, 0
  %i.fk = or i1 %i.fh, %i.fj
  br i1 %i.fk, label %rbimpl_RB_TYPE_P_fastpath.exit.thread.i, label %rbimpl_RB_TYPE_P_fastpath.exit.i

rbimpl_RB_TYPE_P_fastpath.exit.i:                 ; preds = %bb.z
  %i.fl = inttoptr i64 %i.eo to ptr
  %i.fm = load i64, ptr %i.fl, align 8, !tbaa !30
  %i.fn = and i64 %i.fm, 31
  %i.fo = icmp eq i64 %i.fn, 10
  br i1 %i.fo, label %bb.aa, label %rbimpl_RB_TYPE_P_fastpath.exit.thread.i

bb.aa:                                            ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i
  %i.fp = tail call i64 @rb_big_mul(i64 noundef %i.eo, i64 noundef %i.eu) #18
  br label %mulv.exit

rbimpl_RB_TYPE_P_fastpath.exit.thread.i:          ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i, %bb.z
  %i.fq = tail call i64 (i64, i64, i32, ...) @rb_funcall(i64 noundef %i.eo, i64 noundef 42, i32 noundef 1, i64 noundef %i.eu) #18
  br label %mulv.exit

mulv.exit:                                        ; preds = %bb.x, %bb.y, %bb.aa, %rbimpl_RB_TYPE_P_fastpath.exit.thread.i
  %.0.i144 = phi i64 [ %i.fq, %rbimpl_RB_TYPE_P_fastpath.exit.thread.i ], [ %i.fp, %bb.aa ], [ %i.ff, %bb.x ], [ %i.fg, %bb.y ] ; 7 uses
  %i.fr = trunc i64 %.0.i144 to i1
  br i1 %i.fr, label %rb_integer_type_p.exit.thread, label %bb.ab

bb.ab:                                            ; preds = %mulv.exit
  %i.fs = icmp eq i64 %.0.i144, 0
  %i.ft = and i64 %.0.i144, 6
  %i.fu = icmp ne i64 %i.ft, 0
  %i.fv = or i1 %i.fs, %i.fu
  br i1 %i.fv, label %rb_integer_type_p.exit.thread157, label %rb_integer_type_p.exit

rb_integer_type_p.exit:                           ; preds = %bb.ab
  %i.fw = inttoptr i64 %.0.i144 to ptr
  %i.fx = load i64, ptr %i.fw, align 8, !tbaa !30
  %i.fy = and i64 %i.fx, 31
  %i.fz = icmp eq i64 %i.fy, 10
  br i1 %i.fz, label %rb_integer_type_p.exit.thread, label %rb_integer_type_p.exit.thread157

rb_integer_type_p.exit.thread157:                 ; preds = %bb.ab, %rb_integer_type_p.exit
  %i.ga = tail call i64 @rb_Integer(i64 noundef %.0.i144) #18
  br label %rb_integer_type_p.exit.thread

rb_integer_type_p.exit.thread:                    ; preds = %mulv.exit, %rb_integer_type_p.exit.thread157, %rb_integer_type_p.exit
  %.0135 = phi i64 [ %.0.i144, %rb_integer_type_p.exit ], [ %i.ga, %rb_integer_type_p.exit.thread157 ], [ %.0.i144, %mulv.exit ] ; 2 uses
  %i.gb = trunc i64 %.0135 to i32
  %i.gc = or i32 %i.gb, -2
  %.neg = add nsw i32 %i.gc, 1
  br label %bb.ac

bb.ac:                                            ; preds = %rb_integer_type_p.exit.thread, %bb.u
  %.1136 = phi i64 [ %i.eo, %bb.u ], [ %.0135, %rb_integer_type_p.exit.thread ] ; 4 uses
  %.1133 = phi i32 [ %i.es, %bb.u ], [ %.neg, %rb_integer_type_p.exit.thread ] ; 3 uses
  %i.gd = icmp sgt i32 %.1133, -1
  %i.ge = icmp samesign ult i64 %.0, 2147483647
  %or.cond5 = select i1 %i.gd, i1 %i.ge, i1 false
  br i1 %or.cond5, label %bb.ad, label %bb.ah

bb.ad:                                            ; preds = %bb.ac
  %i.gf = trunc i64 %.1136 to i1
  br i1 %i.gf, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %i.gg = ashr i64 %.1136, 1
  br label %rb_num2long_inline.exit147

bb.af:                                            ; preds = %bb.ad
  %i.gh = tail call i64 @rb_num2long(i64 noundef %.1136) #18
  br label %rb_num2long_inline.exit147

rb_num2long_inline.exit147:                       ; preds = %bb.ae, %bb.af
  %.0.i146 = phi i64 [ %i.gg, %bb.ae ], [ %i.gh, %bb.af ] ; 2 uses
  %.not174 = icmp eq i32 %.1133, 0
  br i1 %.not174, label %ruby_nonempty_memcpy.exit.loopexit, label %bb.ag

bb.ag:                                            ; preds = %rb_num2long_inline.exit147
  %i.gi = uitofp nneg i32 %.1133 to double
  %i.gj = tail call double @pow(double noundef 1.000000e+01, double noundef %i.gi) #18, !tbaa !7
  %i.gk = fptosi double %i.gj to i64
  %i.gl = sdiv i64 %.0.i146, %i.gk
  br label %ruby_nonempty_memcpy.exit.loopexit

ruby_nonempty_memcpy.exit.loopexit:               ; preds = %bb.ag, %rb_num2long_inline.exit147
  %.0134 = phi i64 [ %i.gl, %bb.ag ], [ %.0.i146, %rb_num2long_inline.exit147 ]
  %i.gm = add nuw nsw i64 %.0, 1
  %i.gn = trunc nuw nsw i64 %.0 to i32
  %i.go = tail call i32 (ptr, i64, ptr, ...) @ruby_snprintf(ptr noundef %i.ep, i64 noundef %i.gm, ptr noundef nonnull @.str.135, i32 noundef %i.gn, i64 noundef %.0134) #18
  %i.gp = sext i32 %i.go to i64
  %i.gq = getelementptr i8, ptr %i.ep, i64 %i.gp
  br label %ruby_nonempty_memcpy.exit

bb.ah:                                            ; preds = %bb.ac
  %i.gr = tail call i64 @rb_int2str(i64 noundef %.1136, i32 noundef 10) #18
  %i.gs = inttoptr i64 %i.gr to ptr               ; 3 uses
  %i.gt = getelementptr i8, ptr %i.gs, i64 16
  %i.gu = load i64, ptr %i.gt, align 8, !tbaa !56 ; 3 uses
  %i.gv = icmp sgt i64 %.0, %i.gu
  br i1 %i.gv, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  %i.gw = sub i64 %.0, %i.gu
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 %i.ep, i8 noundef 48, i64 noundef %i.gw, i1 noundef false) #18
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ah, %bb.ai
  %.0128 = phi i64 [ %i.gu, %bb.ai ], [ %.0, %bb.ah ] ; 3 uses
  %i.gx = getelementptr i8, ptr %i.ep, i64 %.0    ; 3 uses
  %i.gy = sub i64 0, %.0128
  %i.gz = getelementptr i8, ptr %i.gx, i64 %i.gy
  %i.ha = load i64, ptr %i.gs, align 8, !tbaa !30
  %i.hb = and i64 %i.ha, 8192
  %.not.i148 = icmp eq i64 %i.hb, 0
  %i.hc = getelementptr i8, ptr %i.gs, i64 24     ; 2 uses
  br i1 %.not.i148, label %RSTRING_PTR.exit149, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.hd = load ptr, ptr %i.hc, align 8, !tbaa !53
  br label %RSTRING_PTR.exit149

RSTRING_PTR.exit149:                              ; preds = %bb.aj, %bb.ak
  %i.he = phi ptr [ %i.hd, %bb.ak ], [ %i.hc, %bb.aj ]
  %.not.i150 = icmp eq i64 %.0128, 0
  br i1 %.not.i150, label %ruby_nonempty_memcpy.exit, label %bb.al

bb.al:                                            ; preds = %RSTRING_PTR.exit149
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %i.gz, ptr noundef nonnull readonly align 1 %i.he, i64 noundef %.0128, i1 noundef false) #18
  br label %ruby_nonempty_memcpy.exit

ruby_nonempty_memcpy.exit:                        ; preds = %ruby_nonempty_memcpy.exit.loopexit, %bb.al, %RSTRING_PTR.exit149, %bb.s
  %.4 = phi ptr [ %i.em, %bb.s ], [ %i.gx, %bb.al ], [ %i.gx, %RSTRING_PTR.exit149 ], [ %i.gq, %ruby_nonempty_memcpy.exit.loopexit ] ; 9 uses
  %i.hf = load i64, ptr %i.z, align 8
  %i.hg = and i64 %i.hf, 61572651155456
  %i.hh = icmp eq i64 %i.hg, 8796093022208
  br i1 %i.hh, label %bb.am, label %bb.an

bb.am:                                            ; preds = %ruby_nonempty_memcpy.exit
  store i8 90, ptr %.4, align 1, !tbaa !53
  %i.hi = getelementptr i8, ptr %.4, i64 1
  br label %bb.aq

bb.an:                                            ; preds = %ruby_nonempty_memcpy.exit
  %i.hj = tail call i64 @rb_time_utc_offset(i64 noundef %2) ; 3 uses
  %i.hk = trunc i64 %i.hj to i1
  br i1 %i.hk, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %bb.an
  %i.hl = ashr i64 %i.hj, 1
  br label %rb_num2long_inline.exit153

bb.ap:                                            ; preds = %bb.an
  %i.hm = tail call i64 @rb_num2long(i64 noundef %i.hj) #18
  br label %rb_num2long_inline.exit153

rb_num2long_inline.exit153:                       ; preds = %bb.ao, %bb.ap
  %.0.i152 = phi i64 [ %i.hl, %bb.ao ], [ %i.hm, %bb.ap ] ; 2 uses
  %i.hn = icmp slt i64 %.0.i152, 0
  %i.ho = select i1 %i.hn, i8 45, i8 43
  %spec.select141 = tail call i64 @llvm.abs.i64(i64 %.0.i152, i1 false) ; 3 uses
  %i.hp = sdiv i64 %spec.select141, 60
  %i.hq = getelementptr i8, ptr %.4, i64 1
  store i8 %i.ho, ptr %.4, align 1, !tbaa !53
  %i.hr = sdiv i64 %spec.select141, 3600
  %i.hs = sdiv i64 %spec.select141, 36000
  %i.ht = trunc i64 %i.hs to i8
  %i.hu = add i8 %i.ht, 48
  %i.hv = getelementptr i8, ptr %.4, i64 2
  store i8 %i.hu, ptr %i.hq, align 1, !tbaa !53
  %i.hw = srem i64 %i.hr, 10
  %i.hx = trunc nsw i64 %i.hw to i8
  %i.hy = add nsw i8 %i.hx, 48
  %i.hz = getelementptr i8, ptr %.4, i64 3
  store i8 %i.hy, ptr %i.hv, align 1, !tbaa !53
  %i.ia = getelementptr i8, ptr %.4, i64 4
  store i8 58, ptr %i.hz, align 1, !tbaa !53
  %i.ib = srem i64 %i.hp, 60
  %.lhs.trunc170 = trunc nsw i64 %i.ib to i8      ; 2 uses
  %i.ic = sdiv i8 %.lhs.trunc170, 10
  %i.id = add nsw i8 %i.ic, 48
  %i.ie = getelementptr i8, ptr %.4, i64 5
  store i8 %i.id, ptr %i.ia, align 1, !tbaa !53
  %i.if = srem i8 %.lhs.trunc170, 10
  %i.ig = add nsw i8 %i.if, 48
  %i.ih = getelementptr i8, ptr %.4, i64 6
  store i8 %i.ig, ptr %i.ie, align 1, !tbaa !53
  br label %bb.aq

bb.aq:                                            ; preds = %rb_num2long_inline.exit153, %bb.am
  %.5 = phi ptr [ %i.hi, %bb.am ], [ %i.ih, %rb_num2long_inline.exit153 ]
  %i.ii = inttoptr i64 %.0136 to ptr              ; 2 uses
  %i.ij = load i64, ptr %i.ii, align 8, !tbaa !30
  %i.ik = and i64 %i.ij, 8192
  %.not.i154 = icmp eq i64 %i.ik, 0
  %i.il = getelementptr i8, ptr %i.ii, i64 24     ; 2 uses
  br i1 %.not.i154, label %RSTRING_PTR.exit155, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.im = load ptr, ptr %i.il, align 8, !tbaa !53
  br label %RSTRING_PTR.exit155

RSTRING_PTR.exit155:                              ; preds = %bb.aq, %bb.ar
  %i.in = phi ptr [ %i.im, %bb.ar ], [ %i.il, %bb.aq ]
  %i.io = ptrtoint ptr %.5 to i64
  %i.ip = ptrtoint ptr %i.in to i64
  %i.iq = sub i64 %i.io, %i.ip
  tail call void @rb_str_set_len(i64 noundef %.0136, i64 noundef %i.iq) #18
  ret i64 %.0136
}

declare extern_weak void @rb_define_private_method(i64 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nounwind sspstrong uwtable
define internal noundef i64 @time_dump(i32 noundef %0, ptr nofree readnone captures(none) %1, i64 noundef %2) #1 {
bb.a:
  %i.a = alloca [17 x i8], align 16               ; 10 uses
  %3 = alloca %struct.vtm, align 8                ; 6 uses
  %i.b = alloca [2 x i8], align 1                 ; 5 uses
  %or.cond.i = icmp ugt i32 %0, 1
  br i1 %or.cond.i, label %bb.b, label %rb_check_arity.exit

bb.b:                                             ; preds = %bb.a
  tail call void @rb_error_arity(i32 noundef %0, i32 noundef 0, i32 noundef 1) #19
  unreachable

rb_check_arity.exit:                              ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #18
  %i.c = icmp eq i64 %2, 0
  %i.d = and i64 %2, 7
  %i.e = icmp ne i64 %i.d, 0
  %i.f = or i1 %i.c, %i.e
  br i1 %i.f, label %.critedge.i.i.i, label %rbimpl_RB_TYPE_P_fastpath.exit.i.i.i, !prof !29

rbimpl_RB_TYPE_P_fastpath.exit.i.i.i:             ; preds = %rb_check_arity.exit
  %i.g = inttoptr i64 %2 to ptr                   ; 3 uses
  %i.h = load i64, ptr %i.g, align 8, !tbaa !30
  %i.i = and i64 %i.h, 95
  %or.cond.not.i.i.i = icmp eq i64 %i.i, 76
  br i1 %or.cond.not.i.i.i, label %bb.c, label %.critedge.i.i.i, !prof !31

bb.c:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i.i.i
  %i.j = getelementptr i8, ptr %i.g, i64 24
  %i.k = load i64, ptr %i.j, align 8, !tbaa !17   ; 2 uses
  %i.l = and i64 %i.k, -2                         ; 2 uses
  %i.m = inttoptr i64 %i.l to ptr
  %i.n = trunc i64 %i.k to i1
  %i.o = getelementptr i8, ptr %i.g, i64 32       ; 2 uses
  br i1 %i.n, label %RTYPEDDATA_GET_DATA.exit.i.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !21
  br label %RTYPEDDATA_GET_DATA.exit.i.i.i

RTYPEDDATA_GET_DATA.exit.i.i.i:                   ; preds = %bb.d, %bb.c
  %i.q = phi ptr [ %i.p, %bb.d ], [ %i.o, %bb.c ] ; 2 uses
  %i.r = icmp eq i64 %i.l, ptrtoint (ptr @time_data_type to i64)
  br i1 %i.r, label %rbimpl_check_typeddata.exit.i.i, label %.preheader.i.i.i, !prof !15

.preheader.i.i.i:                                 ; preds = %RTYPEDDATA_GET_DATA.exit.i.i.i, %bb.e
  %.016.i.i.i = phi ptr [ %i.t, %bb.e ], [ %i.m, %RTYPEDDATA_GET_DATA.exit.i.i.i ] ; 2 uses
  %.not.i.i.i = icmp eq ptr %.016.i.i.i, null
  br i1 %.not.i.i.i, label %.critedge.i.i.i, label %bb.e

bb.e:                                             ; preds = %.preheader.i.i.i
  %i.s = getelementptr i8, ptr %.016.i.i.i, i64 48
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !32   ; 2 uses
  %i.u = icmp eq ptr %i.t, @time_data_type
  br i1 %i.u, label %rbimpl_check_typeddata.exit.i.i, label %.preheader.i.i.i, !llvm.loop !37

.critedge.i.i.i:                                  ; preds = %.preheader.i.i.i, %rbimpl_RB_TYPE_P_fastpath.exit.i.i.i, %rb_check_arity.exit
  %i.v = tail call ptr @rb_check_typeddata(i64 noundef %2, ptr noundef nonnull @time_data_type) #18
  br label %rbimpl_check_typeddata.exit.i.i

rbimpl_check_typeddata.exit.i.i:                  ; preds = %bb.e, %.critedge.i.i.i, %RTYPEDDATA_GET_DATA.exit.i.i.i
  %.1.i.i.i = phi ptr [ %i.v, %.critedge.i.i.i ], [ %i.q, %RTYPEDDATA_GET_DATA.exit.i.i.i ], [ %i.q, %bb.e ] ; 3 uses
  %i.w = getelementptr i8, ptr %.1.i.i.i, i64 40  ; 3 uses
  %i.x = load i64, ptr %i.w, align 8
  %i.y = and i64 %i.x, 61572651155456
  %.not.i.i = icmp eq i64 %i.y, 26388279066624
  br i1 %.not.i.i, label %bb.f, label %get_timeval.exit.i

bb.f:                                             ; preds = %rbimpl_check_typeddata.exit.i.i
  %i.z = load i64, ptr @rb_eTypeError, align 8, !tbaa !13
  %i.aa = tail call i64 @rb_obj_class(i64 noundef %2) #18
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.z, ptr noundef nonnull @.str.92, i64 noundef %i.aa) #19
  unreachable

get_timeval.exit.i:                               ; preds = %rbimpl_check_typeddata.exit.i.i
  %i.ab = load i64, ptr %.1.i.i.i, align 8, !tbaa !22
  %i.ac = call fastcc ptr @gmtimew(i64 noundef %i.ab, ptr noundef %3) ; 0 uses
  %i.ad = load i64, ptr %3, align 8, !tbaa !65    ; 7 uses
  %i.ae = trunc i64 %i.ad to i1
  br i1 %i.ae, label %bb.g, label %bb.m

bb.g:                                             ; preds = %get_timeval.exit.i
  %i.af = ashr i64 %i.ad, 1                       ; 5 uses
  %i.ag = icmp sgt i64 %i.af, 67435
  br i1 %i.ag, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ah = add nsw i64 %i.ad, -134870
  br label %rb_long2num_inline.exit.i

bb.i:                                             ; preds = %bb.g
  %i.ai = icmp slt i64 %i.af, 1900
  br i1 %i.ai, label %bb.j, label %rb_long2num_inline.exit.i

bb.j:                                             ; preds = %bb.i
  %i.aj = sub nsw i64 1900, %i.af                 ; 2 uses
  %notsub.i = add i64 %i.af, -4611686018427389805
  %or.cond.i.i = icmp slt i64 %notsub.i, 0
  br i1 %or.cond.i.i, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ak = shl nuw nsw i64 %i.aj, 1
  %i.al = or disjoint i64 %i.ak, 1
  br label %rb_long2num_inline.exit.i

bb.l:                                             ; preds = %bb.j
  %i.am = call i64 @rb_int2big(i64 noundef %i.aj) #18
  br label %rb_long2num_inline.exit.i

bb.m:                                             ; preds = %get_timeval.exit.i
  %i.an = call i32 @rb_int_positive_p(i64 noundef %i.ad) #18
  %.not.i = icmp eq i32 %i.an, 0
  br i1 %.not.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ao = call i64 @rb_int_minus(i64 noundef %i.ad, i64 noundef 134871) #18
  br label %rb_long2num_inline.exit.i

bb.o:                                             ; preds = %bb.m
  %i.ap = call i64 @rb_int_minus(i64 noundef 3801, i64 noundef %i.ad) #18
  br label %rb_long2num_inline.exit.i

rb_long2num_inline.exit.i:                        ; preds = %bb.o, %bb.n, %bb.l, %bb.k, %bb.i, %bb.h
  %.079.i = phi i64 [ 67435, %bb.h ], [ 1900, %bb.o ], [ %i.af, %bb.i ], [ 67435, %bb.n ], [ 1900, %bb.k ], [ 1900, %bb.l ] ; 2 uses
  %.077.i = phi i64 [ %i.ah, %bb.h ], [ %i.ap, %bb.o ], [ 4, %bb.i ], [ %i.ao, %bb.n ], [ %i.al, %bb.k ], [ %i.am, %bb.l ] ; 3 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !66 ; 3 uses
  %i.as = trunc i64 %i.ar to i1
  br i1 %i.as, label %divmodv.exit.thread.i, label %bb.p

divmodv.exit.thread.i:                            ; preds = %rb_long2num_inline.exit.i
  %i.at = ashr i64 %i.ar, 1                       ; 2 uses
  %i.au = sdiv i64 %i.at, 1000
  %i.av = srem i64 %i.at, 1000
  br label %bb.r

bb.p:                                             ; preds = %rb_long2num_inline.exit.i
  %i.aw = call i64 (i64, i64, i32, ...) @rb_funcall(i64 noundef %i.ar, i64 noundef 3601, i32 noundef 1, i64 noundef 3) #18 ; 2 uses
  %i.ax = call i64 @rb_check_array_type(i64 noundef %i.aw) #18 ; 3 uses
  %i.ay = icmp eq i64 %i.ax, 4
  br i1 %i.ay, label %bb.q, label %divmodv.exit.i

bb.q:                                             ; preds = %bb.p
  %i.az = load i64, ptr @rb_eTypeError, align 8, !tbaa !13
  %i.ba = call i64 @rb_obj_class(i64 noundef %i.aw) #18
  call void (i64, ptr, ...) @rb_raise(i64 noundef %i.az, ptr noundef nonnull @.str.93, i64 noundef %i.ba) #19
  unreachable

divmodv.exit.i:                                   ; preds = %bb.p
  %i.bb = call i64 @rb_ary_entry(i64 noundef %i.ax, i64 noundef 0) #21
  %i.bc = call i64 @rb_ary_entry(i64 noundef %i.ax, i64 noundef 1) #21 ; 3 uses
  %i.bd = ashr i64 %i.bb, 1                       ; 2 uses
  %i.be = sdiv i64 %i.bd, 1000                    ; 2 uses
  %i.bf = srem i64 %i.bd, 1000                    ; 3 uses
  %i.bg = and i64 %i.bc, 1
  %or.cond.not.i.i = icmp eq i64 %i.bg, 0
  br i1 %or.cond.not.i.i, label %bb.u, label %bb.r

bb.r:                                             ; preds = %divmodv.exit.i, %divmodv.exit.thread.i
  %i.bh = phi i64 [ %i.av, %divmodv.exit.thread.i ], [ %i.bf, %divmodv.exit.i ] ; 3 uses
  %i.bi = phi i64 [ %i.au, %divmodv.exit.thread.i ], [ %i.be, %divmodv.exit.i ] ; 2 uses
  %storemerge.i130.i = phi i64 [ 1, %divmodv.exit.thread.i ], [ %i.bc, %divmodv.exit.i ]
  %i.bj = ashr i64 %storemerge.i130.i, 1
  %i.bk = add nsw i64 %i.bj, %i.bh                ; 3 uses
  %i.bl = add i64 %i.bk, 4611686018427387904
  %or.cond.i.i.i = icmp sgt i64 %i.bl, -1
  br i1 %or.cond.i.i.i, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.bm = shl nsw i64 %i.bk, 1
  %i.bn = or disjoint i64 %i.bm, 1
  br label %addv.exit.i

bb.t:                                             ; preds = %bb.r
  %i.bo = call i64 @rb_int2big(i64 noundef %i.bk) #18
  br label %addv.exit.i

bb.u:                                             ; preds = %divmodv.exit.i
  %i.bp = shl nsw i64 %i.bf, 1
  %i.bq = or disjoint i64 %i.bp, 1
  %i.br = call i64 (i64, i64, i32, ...) @rb_funcall(i64 noundef %i.bq, i64 noundef 43, i32 noundef 1, i64 noundef %i.bc) #18
  br label %addv.exit.i

addv.exit.i:                                      ; preds = %bb.u, %bb.t, %bb.s
  %i.bs = phi i64 [ %i.bf, %bb.u ], [ %i.bh, %bb.t ], [ %i.bh, %bb.s ] ; 2 uses
  %i.bt = phi i64 [ %i.be, %bb.u ], [ %i.bi, %bb.t ], [ %i.bi, %bb.s ] ; 2 uses
  %.0.i91.i = phi i64 [ %i.br, %bb.u ], [ %i.bo, %bb.t ], [ %i.bn, %bb.s ] ; 5 uses
  %i.bu = load i64, ptr %i.w, align 8
  %i.bv = and i64 %i.bu, 61572651155456
  %i.bw = icmp eq i64 %i.bv, 8796093022208
  %i.bx = select i1 %i.bw, i64 3221225472, i64 2147483648
  %i.by = shl nuw nsw i64 %.079.i, 14
  %i.bz = add nsw i64 %i.by, -31129600
  %i.ca = or i64 %i.bx, %i.bz
end_hunk_1
begin_hunk_2_@time_init_parse:bb.a
  %.not = icmp eq i64 %i.bt, 1
  br i1 %.not, label %.critedge2, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.bx = load i8, ptr %i.bw, align 1, !tbaa !53
  %i.by = add i8 %i.bx, -58
  %i.bz = icmp ult i8 %i.by, -10
  br i1 %i.bz, label %.critedge2, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.ca = call fastcc i32 @two_digits(ptr noundef nonnull %i.bw, ptr noundef %i.r, ptr noundef %i.a, ptr noundef nonnull @.str.22) ; 7 uses
  %i.cb = icmp ugt i32 %i.ca, 31
  br i1 %i.cb, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.cc = load i64, ptr @rb_eArgError, align 8, !tbaa !13
  call void (i64, ptr, ...) @rb_raise(i64 noundef %i.cc, ptr noundef nonnull @.str.107) #19
  unreachable

bb.ad:                                            ; preds = %bb.ab
  %i.cd = load ptr, ptr %i.a, align 8, !tbaa !69  ; 5 uses
  %i.ce = ptrtoint ptr %i.cd to i64
  %i.cf = sub i64 %i.ak, %i.ce
  %i.cg = icmp sgt i64 %i.cf, 0
  br i1 %i.cg, label %bb.ae, label %bb.ag

bb.ae:                                            ; preds = %bb.ad
  %i.ch = load i8, ptr %i.cd, align 1, !tbaa !53
  switch i8 %i.ch, label %bb.ag [
    i8 46, label %bb.af
    i8 58, label %bb.ah
  ]

bb.af:                                            ; preds = %bb.ae
  %i.ci = load i64, ptr @rb_eArgError, align 8, !tbaa !13
  %i.cj = getelementptr i8, ptr %i.cd, i64 1
  %i.ck = ptrtoint ptr %i.cj to i64
  %i.cl = ptrtoint ptr %i.bw to i64
  %i.cm = sub i64 %i.ck, %i.cl
  %i.cn = trunc i64 %i.cm to i32
  call void (i64, ptr, ...) @rb_raise(i64 noundef %i.ci, ptr noundef nonnull @.str.147, i32 noundef %i.cn, ptr noundef nonnull %i.bw) #19
  unreachable

bb.ag:                                            ; preds = %bb.ae, %bb.ad
  %i.co = load i64, ptr @rb_eArgError, align 8, !tbaa !13
  %i.cp = getelementptr i8, ptr %i.cd, i64 1
  %i.cq = ptrtoint ptr %i.cp to i64
  %i.cr = ptrtoint ptr %i.bw to i64
  %i.cs = sub i64 %i.cq, %i.cr
  %i.ct = trunc i64 %i.cs to i32
  call void (i64, ptr, ...) @rb_raise(i64 noundef %i.co, ptr noundef nonnull @.str.148, i32 noundef %i.ct, ptr noundef nonnull %i.bw) #19
  unreachable

bb.ah:                                            ; preds = %bb.ae
  %i.cu = getelementptr i8, ptr %i.cd, i64 1
  %i.cv = call fastcc i32 @two_digits(ptr noundef %i.cu, ptr noundef %i.r, ptr noundef %i.a, ptr noundef nonnull @.str.23) ; 7 uses
  %i.cw = icmp ugt i32 %i.cv, 63
  br i1 %i.cw, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  %i.cx = load i64, ptr @rb_eArgError, align 8, !tbaa !13
  call void (i64, ptr, ...) @rb_raise(i64 noundef %i.cx, ptr noundef nonnull @.str.108) #19
  unreachable

bb.aj:                                            ; preds = %bb.ah
  %i.cy = load ptr, ptr %i.a, align 8, !tbaa !69  ; 5 uses
  %i.cz = ptrtoint ptr %i.cy to i64
  %i.da = sub i64 %i.ak, %i.cz
  %i.db = icmp sgt i64 %i.da, 0
  br i1 %i.db, label %bb.ak, label %bb.am

bb.ak:                                            ; preds = %bb.aj
  %i.dc = load i8, ptr %i.cy, align 1, !tbaa !53
  switch i8 %i.dc, label %bb.am [
    i8 46, label %bb.al
    i8 58, label %bb.an
  ]

bb.al:                                            ; preds = %bb.ak
  %i.dd = load i64, ptr @rb_eArgError, align 8, !tbaa !13
  %i.de = getelementptr i8, ptr %i.cy, i64 1
  %i.df = ptrtoint ptr %i.de to i64
  %i.dg = ptrtoint ptr %i.bw to i64
  %i.dh = sub i64 %i.df, %i.dg
  %i.di = trunc i64 %i.dh to i32
  call void (i64, ptr, ...) @rb_raise(i64 noundef %i.dd, ptr noundef nonnull @.str.149, i32 noundef %i.di, ptr noundef nonnull %i.bw) #19
  unreachable

bb.am:                                            ; preds = %bb.ak, %bb.aj
  %i.dj = load i64, ptr @rb_eArgError, align 8, !tbaa !13
  %i.dk = getelementptr i8, ptr %i.cy, i64 1
  %i.dl = ptrtoint ptr %i.dk to i64
  %i.dm = ptrtoint ptr %i.bw to i64
  %i.dn = sub i64 %i.dl, %i.dm
  %i.do = trunc i64 %i.dn to i32
  call void (i64, ptr, ...) @rb_raise(i64 noundef %i.dj, ptr noundef nonnull @.str.150, i32 noundef %i.do, ptr noundef nonnull %i.bw) #19
  unreachable

bb.an:                                            ; preds = %bb.ak
  %i.dp = getelementptr i8, ptr %i.cy, i64 1
  %i.dq = call fastcc i32 @two_digits(ptr noundef %i.dp, ptr noundef %i.r, ptr noundef %i.a, ptr noundef nonnull @.str.24) ; 7 uses
  %i.dr = icmp ugt i32 %i.dq, 63
  br i1 %i.dr, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %bb.an
  %i.ds = load i64, ptr @rb_eArgError, align 8, !tbaa !13
  call void (i64, ptr, ...) @rb_raise(i64 noundef %i.ds, ptr noundef nonnull @.str.109) #19
  unreachable

bb.ap:                                            ; preds = %bb.an
  %i.dt = load ptr, ptr %i.a, align 8, !tbaa !69  ; 5 uses
  %i.du = ptrtoint ptr %i.dt to i64
  %i.dv = sub i64 %i.ak, %i.du
  %i.dw = icmp sgt i64 %i.dv, 0
  br i1 %i.dw, label %bb.aq, label %.critedge2

bb.aq:                                            ; preds = %bb.ap
  %i.dx = load i8, ptr %i.dt, align 1, !tbaa !53
  %i.dy = icmp eq i8 %i.dx, 46
  br i1 %i.dy, label %bb.ar, label %.critedge2

bb.ar:                                            ; preds = %bb.aq
  %i.dz = getelementptr i8, ptr %i.dt, i64 1      ; 5 uses
  store ptr %i.dz, ptr %i.a, align 8, !tbaa !69
  %i.ea = ptrtoint ptr %i.dz to i64
  %i.eb = sub i64 %i.ak, %i.ea                    ; 2 uses
  store i64 0, ptr %i.b, align 8, !tbaa !13
  %i.ec = icmp ne i64 %i.w, 0
  %i.ed = icmp sgt i64 %i.eb, 0
  %or.cond192 = and i1 %i.ec, %i.ed
  br i1 %or.cond192, label %.lr.ph, label %.critedge.thread

.lr.ph:                                           ; preds = %bb.ar, %bb.as
  %storemerge193 = phi i64 [ %i.ei, %bb.as ], [ 0, %bb.ar ] ; 4 uses
  %i.ee = getelementptr i8, ptr %i.dz, i64 %storemerge193
  %i.ef = load i8, ptr %i.ee, align 1, !tbaa !53
  %i.eg = add i8 %i.ef, -58
  %i.eh = icmp ult i8 %i.eg, -10
  br i1 %i.eh, label %.critedge, label %bb.as

bb.as:                                            ; preds = %.lr.ph
  %i.ei = add nuw nsw i64 %storemerge193, 1       ; 5 uses
  store i64 %i.ei, ptr %i.b, align 8, !tbaa !13
  %i.ej = icmp ult i64 %i.ei, %i.w
  %i.ek = icmp slt i64 %i.ei, %i.eb
  %or.cond = and i1 %i.ej, %i.ek
  br i1 %or.cond, label %.lr.ph, label %.critedge.thread257, !llvm.loop !72

.critedge:                                        ; preds = %.lr.ph
  %.not129 = icmp eq i64 %storemerge193, 0
  br i1 %.not129, label %.critedge.thread, label %.critedge.thread257

.critedge.thread:                                 ; preds = %bb.ar, %.critedge
  %i.el = call ptr @rb_enc_get(i64 noundef %i.c) #18
  %i.em = call i32 @rb_enc_precise_mbclen(ptr noundef %i.dz, ptr noundef %i.r, ptr noundef %i.el) #18
  %spec.store.select = call i32 @llvm.smax.i32(i32 %i.em, i32 0)
  %i.en = load i64, ptr @rb_eArgError, align 8, !tbaa !13
  %i.eo = load ptr, ptr %i.a, align 8, !tbaa !69
  %i.ep = ptrtoint ptr %i.eo to i64
  %i.eq = ptrtoint ptr %i.bw to i64
  %i.er = sub i64 %i.ep, %i.eq
  %i.es = trunc i64 %i.er to i32
  %i.et = add i32 %spec.store.select, %i.es
  call void (i64, ptr, ...) @rb_raise(i64 noundef %i.en, ptr noundef nonnull @.str.151, i32 noundef %i.et, ptr noundef nonnull %i.bw) #19
  unreachable

.critedge.thread257:                              ; preds = %bb.as, %.critedge
  %storemerge.lcssa260 = phi i64 [ %storemerge193, %.critedge ], [ %i.ei, %bb.as ]
  %i.eu = call i64 @rb_int_parse_cstr(ptr noundef %i.dz, i64 noundef %storemerge.lcssa260, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, i32 noundef 10, i32 noundef 0) #18 ; 4 uses
  %i.ev = icmp eq i64 %i.eu, 4
  %.promoted198.pre = load ptr, ptr %i.a, align 8, !tbaa !69 ; 6 uses
  br i1 %i.ev, label %.critedge2, label %.preheader

.preheader:                                       ; preds = %.critedge.thread257
  %i.ew = icmp ult ptr %.promoted198.pre, %i.r
  br i1 %i.ew, label %.lr.ph196.preheader.a, label %.critedge2

.lr.ph196.preheader.a:                            ; preds = %.preheader
  %.promoted210 = ptrtoaddr ptr %.promoted198.pre to i64
  %i.ex = add i64 %i.q, %i.o
  %i.ey = sub i64 %i.ex, %.promoted210
  %scevgep = getelementptr i8, ptr %.promoted198.pre, i64 %i.ey ; 2 uses
  br label %.lr.ph196.a

.lr.ph196.a:                                      ; preds = %.lr.ph196.preheader.a, %bb.at
  %i.ez = phi ptr [ %i.fe, %bb.at ], [ %.promoted198.pre, %.lr.ph196.preheader.a ] ; 3 uses
  %i.fa = load i8, ptr %i.ez, align 1, !tbaa !53
  %i.fb = sext i8 %i.fa to i32
  %i.fc = add nsw i32 %i.fb, -58
  %i.fd = icmp ult i32 %i.fc, -10
  br i1 %i.fd, label %.critedge2, label %bb.at

bb.at:                                            ; preds = %.lr.ph196.a
  %i.fe = getelementptr i8, ptr %i.ez, i64 1      ; 3 uses
  store ptr %i.fe, ptr %i.a, align 8, !tbaa !69
  %exitcond.not = icmp eq ptr %i.fe, %scevgep
  br i1 %exitcond.not, label %.critedge2, label %.lr.ph196.a, !llvm.loop !73

.critedge2:                                       ; preds = %bb.at, %.lr.ph196.a, %bb.y, %.preheader, %bb.z, %bb.x, %bb.aa, %.critedge.thread257, %bb.aq, %bb.ap, %bb.t, %bb.u, %bb.p, %bb.q
  %.promoted198 = phi ptr [ %i.aw, %bb.p ], [ %i.br, %bb.y ], [ %i.dt, %bb.ap ], [ %i.bh, %bb.u ], [ %i.bh, %bb.t ], [ %i.aw, %bb.q ], [ %i.br, %bb.aa ], [ %.promoted198.pre, %.critedge.thread257 ], [ %i.br, %bb.x ], [ %i.br, %bb.z ], [ %i.dt, %bb.aq ], [ %.promoted198.pre, %.preheader ], [ %scevgep, %bb.at ], [ %i.ez, %.lr.ph196.a ] ; 6 uses
  %.2105 = phi i64 [ 4, %bb.p ], [ 4, %bb.y ], [ 4, %bb.ap ], [ 4, %bb.u ], [ 4, %bb.t ], [ 4, %bb.q ], [ 4, %bb.aa ], [ 4, %.critedge.thread257 ], [ 4, %bb.x ], [ 4, %bb.z ], [ 4, %bb.aq ], [ %i.eu, %.preheader ], [ %i.eu, %.lr.ph196.a ], [ %i.eu, %bb.at ] ; 4 uses
  %.1101 = phi i32 [ -1, %bb.p ], [ %i.be, %bb.y ], [ %i.be, %bb.ap ], [ %i.be, %bb.u ], [ %i.be, %bb.t ], [ -1, %bb.q ], [ %i.be, %bb.aa ], [ %i.be, %.critedge.thread257 ], [ %i.be, %bb.x ], [ %i.be, %bb.z ], [ %i.be, %bb.aq ], [ %i.be, %.preheader ], [ %i.be, %.lr.ph196.a ], [ %i.be, %bb.at ] ; 3 uses
  %.198 = phi i32 [ -1, %bb.p ], [ %i.bo, %bb.y ], [ %i.bo, %bb.ap ], [ -1, %bb.u ], [ -1, %bb.t ], [ -1, %bb.q ], [ %i.bo, %bb.aa ], [ %i.bo, %.critedge.thread257 ], [ %i.bo, %bb.x ], [ %i.bo, %bb.z ], [ %i.bo, %bb.aq ], [ %i.bo, %.preheader ], [ %i.bo, %.lr.ph196.a ], [ %i.bo, %bb.at ] ; 3 uses
  %.095 = phi i32 [ -1, %bb.p ], [ -1, %bb.y ], [ %i.ca, %bb.ap ], [ -1, %bb.u ], [ -1, %bb.t ], [ -1, %bb.q ], [ -1, %bb.aa ], [ %i.ca, %.critedge.thread257 ], [ -1, %bb.x ], [ -1, %bb.z ], [ %i.ca, %bb.aq ], [ %i.ca, %.preheader ], [ %i.ca, %.lr.ph196.a ], [ %i.ca, %bb.at ] ; 4 uses
  %.093 = phi i32 [ -1, %bb.p ], [ -1, %bb.y ], [ %i.cv, %bb.ap ], [ -1, %bb.u ], [ -1, %bb.t ], [ -1, %bb.q ], [ -1, %bb.aa ], [ %i.cv, %.critedge.thread257 ], [ -1, %bb.x ], [ -1, %bb.z ], [ %i.cv, %bb.aq ], [ %i.cv, %.preheader ], [ %i.cv, %.lr.ph196.a ], [ %i.cv, %bb.at ] ; 3 uses
  %.192 = phi i32 [ -1, %bb.p ], [ -1, %bb.y ], [ %i.dq, %bb.ap ], [ -1, %bb.u ], [ -1, %bb.t ], [ -1, %bb.q ], [ -1, %bb.aa ], [ %i.dq, %.critedge.thread257 ], [ -1, %bb.x ], [ -1, %bb.z ], [ %i.dq, %bb.aq ], [ %i.dq, %.preheader ], [ %i.dq, %.lr.ph196.a ], [ %i.dq, %bb.at ] ; 3 uses
  %.promoted198211 = ptrtoaddr ptr %.promoted198 to i64 ; 2 uses
  %i.ff = icmp ult ptr %.promoted198, %i.r
  br i1 %i.ff, label %.lr.ph199.preheader, label %.critedge4

.lr.ph199.preheader:                              ; preds = %.critedge2
  %i.fg = add i64 %i.q, %i.o
  %i.fh = sub i64 %i.fg, %.promoted198211
  %scevgep212.a = getelementptr i8, ptr %.promoted198, i64 %i.fh ; 2 uses
  br label %.lr.ph199

.lr.ph199:                                        ; preds = %.lr.ph199.preheader, %bb.au
  %i.fi = phi ptr [ %i.fo, %bb.au ], [ %.promoted198, %.lr.ph199.preheader ] ; 4 uses
  %i.fj = load i8, ptr %i.fi, align 1, !tbaa !53  ; 2 uses
  %i.fk = sext i8 %i.fj to i32
  %i.fl = icmp ne i8 %i.fj, 32
  %i.fm = add nsw i32 %i.fk, -14
  %i.fn = icmp ult i32 %i.fm, -5
  %narrow.i137.not = select i1 %i.fl, i1 %i.fn, i1 false
  br i1 %narrow.i137.not, label %.critedge4.loopexit, label %bb.au

bb.au:                                            ; preds = %.lr.ph199
  %i.fo = getelementptr i8, ptr %i.fi, i64 1      ; 4 uses
  store ptr %i.fo, ptr %i.a, align 8, !tbaa !69
  %exitcond213.not.a = icmp eq ptr %i.fo, %scevgep212.a
  br i1 %exitcond213.not.a, label %.critedge4.loopexit, label %.lr.ph199, !llvm.loop !74

.critedge4.loopexit:                              ; preds = %bb.au, %.lr.ph199
  %.promoted203223 = phi ptr [ %i.fi, %.lr.ph199 ], [ %i.fo, %bb.au ] ; 2 uses
  %.lcssa191.ph = phi ptr [ %i.fi, %.lr.ph199 ], [ %scevgep212.a, %bb.au ]
  %.pre = ptrtoaddr ptr %.promoted203223 to i64
  br label %.critedge4

.critedge4:                                       ; preds = %.critedge4.loopexit, %.critedge2
  %.promoted203214.pre-phi = phi i64 [ %.pre, %.critedge4.loopexit ], [ %.promoted198211, %.critedge2 ] ; 2 uses
  %.promoted203 = phi ptr [ %.promoted203223, %.critedge4.loopexit ], [ %.promoted198, %.critedge2 ] ; 5 uses
  %.lcssa191 = phi ptr [ %.lcssa191.ph, %.critedge4.loopexit ], [ %.promoted198, %.critedge2 ] ; 2 uses
  %i.fp = icmp ult ptr %.promoted203, %i.r
  br i1 %i.fp, label %.lr.ph204.preheader, label %.critedge6

.lr.ph204.preheader:                              ; preds = %.critedge4
  %i.fq = add i64 %i.q, %i.o
  %i.fr = sub i64 %i.fq, %.promoted203214.pre-phi
  %scevgep215.a = getelementptr i8, ptr %.promoted203, i64 %i.fr ; 2 uses
  br label %.lr.ph204

.lr.ph204:                                        ; preds = %.lr.ph204.preheader, %bb.av
  %i.fs = phi ptr [ %i.fy, %bb.av ], [ %.promoted203, %.lr.ph204.preheader ] ; 4 uses
  %i.ft = load i8, ptr %i.fs, align 1, !tbaa !53  ; 2 uses
  %i.fu = sext i8 %i.ft to i32
  %i.fv = icmp ne i8 %i.ft, 32
  %i.fw = add nsw i32 %i.fu, -14
  %i.fx = icmp ult i32 %i.fw, -5
  %narrow.i138.not = select i1 %i.fv, i1 %i.fx, i1 false
  br i1 %narrow.i138.not, label %bb.av, label %.critedge6.loopexit

bb.av:                                            ; preds = %.lr.ph204
  %i.fy = getelementptr i8, ptr %i.fs, i64 1      ; 4 uses
  store ptr %i.fy, ptr %i.a, align 8, !tbaa !69
  %exitcond216.not.a = icmp eq ptr %i.fy, %scevgep215.a
  br i1 %exitcond216.not.a, label %.critedge6.loopexit, label %.lr.ph204, !llvm.loop !75

.critedge6.loopexit:                              ; preds = %bb.av, %.lr.ph204
  %.promoted208225 = phi ptr [ %i.fs, %.lr.ph204 ], [ %i.fy, %bb.av ] ; 2 uses
  %.lcssa.ph = phi ptr [ %i.fs, %.lr.ph204 ], [ %scevgep215.a, %bb.av ]
  %.pre226 = ptrtoaddr ptr %.promoted208225 to i64
  br label %.critedge6

.critedge6:                                       ; preds = %.critedge6.loopexit, %.critedge4
  %.promoted208217.pre-phi = phi i64 [ %.pre226, %.critedge6.loopexit ], [ %.promoted203214.pre-phi, %.critedge4 ]
  %.promoted208 = phi ptr [ %.promoted208225, %.critedge6.loopexit ], [ %.promoted203, %.critedge4 ] ; 3 uses
  %.lcssa = phi ptr [ %.lcssa.ph, %.critedge6.loopexit ], [ %.promoted203, %.critedge4 ] ; 2 uses
  %i.fz = icmp ult ptr %.promoted208, %i.r
  br i1 %i.fz, label %.lr.ph209.preheader, label %.critedge8

.lr.ph209.preheader:                              ; preds = %.critedge6
  %i.ga = add i64 %i.q, %i.o
  %i.gb = sub i64 %i.ga, %.promoted208217.pre-phi
  %scevgep218 = getelementptr i8, ptr %.promoted208, i64 %i.gb
  br label %.lr.ph209

.lr.ph209:                                        ; preds = %.lr.ph209.preheader, %bb.aw
  %i.gc = phi ptr [ %i.gi, %bb.aw ], [ %.promoted208, %.lr.ph209.preheader ] ; 2 uses
  %i.gd = load i8, ptr %i.gc, align 1, !tbaa !53  ; 2 uses
  %i.ge = sext i8 %i.gd to i32
  %i.gf = icmp ne i8 %i.gd, 32
  %i.gg = add nsw i32 %i.ge, -14
  %i.gh = icmp ult i32 %i.gg, -5
  %narrow.i139.not = select i1 %i.gf, i1 %i.gh, i1 false
  br i1 %narrow.i139.not, label %bb.ax, label %bb.aw

bb.aw:                                            ; preds = %.lr.ph209
  %i.gi = getelementptr i8, ptr %i.gc, i64 1      ; 3 uses
  store ptr %i.gi, ptr %i.a, align 8, !tbaa !69
  %exitcond219.not = icmp eq ptr %i.gi, %scevgep218
  br i1 %exitcond219.not, label %.critedge8, label %.lr.ph209, !llvm.loop !76

bb.ax:                                            ; preds = %.lr.ph209
  %i.gj = call fastcc i64 @rbimpl_str_new_cstr()  ; 2 uses
  %i.gk = load ptr, ptr %i.a, align 8, !tbaa !69  ; 2 uses
  %i.gl = ptrtoint ptr %i.gk to i64
  %i.gm = sub i64 %i.ak, %i.gl
  %i.gn = call i64 @rb_str_cat(i64 noundef %i.gj, ptr noundef %i.gk, i64 noundef %i.gm) #18 ; 0 uses
  %i.go = load i64, ptr @rb_eArgError, align 8, !tbaa !13
  %i.gp = call i64 @rb_exc_new_str(i64 noundef %i.go, i64 noundef %i.gj) #18
  call void @rb_exc_raise(i64 noundef %i.gp) #19
  unreachable

.critedge8:                                       ; preds = %bb.aw, %.critedge6
  %i.gq = icmp ugt ptr %.lcssa, %.lcssa191
  br i1 %i.gq, label %bb.ay, label %bb.az

bb.ay:                                            ; preds = %.critedge8
  %i.gr = ptrtoint ptr %.lcssa191 to i64          ; 2 uses
  %i.gs = sub i64 %i.gr, %i.al
  %i.gt = ptrtoint ptr %.lcssa to i64
  %i.gu = sub i64 %i.gt, %i.gr
  %i.gv = call i64 @rb_str_subseq(i64 noundef %i.c, i64 noundef %i.gs, i64 noundef %i.gu) #18
  br label %bb.bb

bb.az:                                            ; preds = %.critedge8
  %i.gw = icmp eq i32 %.095, -1
  br i1 %i.gw, label %bb.ba, label %bb.bb

bb.ba:                                            ; preds = %bb.az
  %i.gx = load i64, ptr @rb_eArgError, align 8, !tbaa !13
  call void (i64, ptr, ...) @rb_raise(i64 noundef %i.gx, ptr noundef nonnull @.str.153) #19
  unreachable

bb.bb:                                            ; preds = %bb.az, %bb.ay
  %.090 = phi i64 [ %i.gv, %bb.ay ], [ %3, %bb.az ] ; 3 uses
  %i.gy = icmp eq i64 %.2105, 4
  br i1 %i.gy, label %.thread149, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.gz = load i64, ptr %i.b, align 8, !tbaa !13  ; 4 uses
  %i.ha = icmp ult i64 %i.gz, 9
  br i1 %i.ha, label %bb.bd, label %bb.be

bb.bd:                                            ; preds = %bb.bc
  %i.hb = sub nuw nsw i64 9, %i.gz
  %i.hc = call i64 @rb_int_positive_pow(i64 noundef 10, i64 noundef %i.hb) #18
  %i.hd = call i64 @rb_int_mul(i64 noundef %.2105, i64 noundef %i.hc) #18
  br label %bb.bg

bb.be:                                            ; preds = %bb.bc
  %.not134 = icmp eq i64 %i.gz, 9
  br i1 %.not134, label %.thread170, label %bb.bf

.thread170:                                       ; preds = %bb.be
  store i64 %i.am, ptr %5, align 8, !tbaa !65
  %i.he = getelementptr inbounds nuw i8, ptr %5, i64 8
  br label %bb.bh

bb.bf:                                            ; preds = %bb.be
  %i.hf = add i64 %i.gz, -9
  %i.hg = call i64 @rb_int_positive_pow(i64 noundef 10, i64 noundef %i.hf) #18
  %i.hh = call i64 @rb_rational_new(i64 noundef %.2105, i64 noundef %i.hg) #18
  br label %bb.bg

.thread149:                                       ; preds = %bb.o, %bb.bb
  %.2102.ph = phi i32 [ %.1101, %bb.bb ], [ -1, %bb.o ]
  %.299.ph = phi i32 [ %.198, %bb.bb ], [ -1, %bb.o ]
  %.196.ph = phi i32 [ %.095, %bb.bb ], [ -1, %bb.o ]
  %.194.ph = phi i32 [ %.093, %bb.bb ], [ -1, %bb.o ]
  %.2.ph = phi i32 [ %.192, %bb.bb ], [ -1, %bb.o ]
  %.1.ph = phi i64 [ %.090, %bb.bb ], [ %3, %bb.o ]
  store i64 %i.am, ptr %5, align 8, !tbaa !65
  %i.hi = getelementptr inbounds nuw i8, ptr %5, i64 8
  br label %bb.bh

bb.bg:                                            ; preds = %bb.bf, %bb.bd
  %.3 = phi i64 [ %i.hh, %bb.bf ], [ %i.hd, %bb.bd ]
  %.3.fr = freeze i64 %.3                         ; 2 uses
  store i64 %i.am, ptr %5, align 8, !tbaa !65
  %i.hj = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.hk = icmp eq i64 %.3.fr, 4
  %spec.select = select i1 %i.hk, i64 1, i64 %.3.fr
  br label %bb.bh

bb.bh:                                            ; preds = %bb.bg, %.thread149, %.thread170
  %i.hl = phi ptr [ %i.he, %.thread170 ], [ %i.hj, %bb.bg ], [ %i.hi, %.thread149 ]
  %.1168 = phi i64 [ %.090, %.thread170 ], [ %.090, %bb.bg ], [ %.1.ph, %.thread149 ]
  %.2164 = phi i32 [ %.192, %.thread170 ], [ %.192, %bb.bg ], [ %.2.ph, %.thread149 ]
  %.194166 = phi i32 [ %.093, %.thread170 ], [ %.093, %bb.bg ], [ %.194.ph, %.thread149 ]
  %.196164 = phi i32 [ %.095, %.thread170 ], [ %.095, %bb.bg ], [ %.196.ph, %.thread149 ]
  %.299162 = phi i32 [ %.198, %.thread170 ], [ %.198, %bb.bg ], [ %.299.ph, %.thread149 ] ; 2 uses
  %.2102160 = phi i32 [ %.1101, %.thread170 ], [ %.1101, %bb.bg ], [ %.2102.ph, %.thread149 ] ; 2 uses
  %i.hm = phi i64 [ %.2105, %.thread170 ], [ %spec.select, %bb.bg ], [ 1, %.thread149 ]
  store i64 %i.hm, ptr %i.hl, align 8, !tbaa !66
  %i.hn = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i64 0, ptr %i.hn, align 8, !tbaa !70
  %i.ho = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.hp = load i64, ptr @str_empty, align 8, !tbaa !13
  store i64 %i.hp, ptr %i.ho, align 8, !tbaa !71
  %i.hq = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.hr = icmp slt i32 %.2102160, 0
  %i.hs = shl i32 %.2102160, 9
  %i.ht = and i32 %i.hs, 7680
  %spec.select181 = select i1 %i.hr, i32 512, i32 %i.ht
  %i.hu = icmp slt i32 %.299162, 0
  %i.hv = shl i32 %.299162, 13
  %i.hw = and i32 %i.hv, 253952
  %i.hx = select i1 %i.hu, i32 8192, i32 %i.hw
  %i.hy = call i32 @llvm.smax.i32(i32 %.196164, i32 0)
  %i.hz = shl i32 %i.hy, 18
  %i.ia = and i32 %i.hz, 8126464
  %i.ib = call i32 @llvm.smax.i32(i32 %.194166, i32 0)
  %i.ic = shl i32 %i.ib, 23
  %i.id = and i32 %i.ic, 528482304
  %6 = or disjoint i32 %i.ia, %i.id
  %7 = or disjoint i32 %6, %i.hx
  %i.ie = or disjoint i32 %7, %spec.select181
  %i.if = zext nneg i32 %i.ie to i64
  %i.ig = call i32 @llvm.smax.i32(i32 %.2164, i32 0)
  %i.ih = and i32 %i.ig, 63
  %i.ii = zext nneg i32 %i.ih to i64
  %i.ij = shl nuw nsw i64 %i.ii, 32
  %i.ik = or disjoint i64 %i.ij, %i.if
  %i.il = or disjoint i64 %i.ik, 1924145348608
  store i64 %i.il, ptr %i.hq, align 8
  %i.im = call fastcc i64 @time_init_vtm(i64 noundef %1, ptr noundef nonnull byval(%struct.vtm) align 8 %5, i64 noundef %.1168) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  br label %bb.bi

bb.bi:                                            ; preds = %bb.a, %bb.bh
  %.0 = phi i64 [ %1, %bb.bh ], [ 4, %bb.a ]
  ret i64 %.0
}

; Function Attrs: nounwind sspstrong uwtable
define internal range(i64 1, 0) i64 @time_init_args(ptr nofree readnone captures(none) %0, i64 noundef returned %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %6, i64 noundef %7, i64 noundef %8) #1 {
bb.a:
  %9 = alloca %struct.vtm, align 8                ; 7 uses
  %i.a = alloca i64, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #18
  %i.b = getelementptr inbounds nuw i8, ptr %9, i64 32 ; 2 uses
  %i.c = load i64, ptr @str_empty, align 8, !tbaa !13
  %i.d = getelementptr inbounds nuw i8, ptr %9, i64 24
  store i64 %i.c, ptr %i.d, align 8, !tbaa !71
  %i.e = icmp eq i64 %2, 0
  %i.f = and i64 %2, 7
  %i.g = icmp ne i64 %i.f, 0
  %i.h = or i1 %i.e, %i.g
  br i1 %i.h, label %rbimpl_RB_TYPE_P_fastpath.exit.thread.i, label %rbimpl_RB_TYPE_P_fastpath.exit.i

rbimpl_RB_TYPE_P_fastpath.exit.i:                 ; preds = %bb.a
  %i.i = inttoptr i64 %2 to ptr
  %i.j = load i64, ptr %i.i, align 8, !tbaa !30
  %i.k = and i64 %i.j, 31
  %i.l = icmp eq i64 %i.k, 5
  br i1 %i.l, label %bb.b, label %rbimpl_RB_TYPE_P_fastpath.exit.thread.i

bb.b:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i
  %i.m = tail call i64 @rb_str_to_inum(i64 noundef %2, i32 noundef 10, i32 noundef 1) #18
  br label %obj2vint.exit

rbimpl_RB_TYPE_P_fastpath.exit.thread.i:          ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i, %bb.a
  %i.n = tail call i64 @rb_to_int(i64 noundef %2) #18
  br label %obj2vint.exit

obj2vint.exit:                                    ; preds = %bb.b, %rbimpl_RB_TYPE_P_fastpath.exit.thread.i
  %.0.i = phi i64 [ %i.m, %bb.b ], [ %i.n, %rbimpl_RB_TYPE_P_fastpath.exit.thread.i ]
  store i64 %.0.i, ptr %9, align 8, !tbaa !65
  %i.o = icmp eq i64 %3, 4
  br i1 %i.o, label %bb.d, label %bb.c

bb.c:                                             ; preds = %obj2vint.exit
  %i.p = tail call fastcc i32 @month_arg(i64 noundef %3)
  %i.q = shl nuw nsw i32 %i.p, 9
  %i.r = zext nneg i32 %i.q to i64
  %i.s = or disjoint i64 %i.r, 1924145348608
  br label %bb.d

bb.d:                                             ; preds = %obj2vint.exit, %bb.c
  %i.t = phi i64 [ %i.s, %bb.c ], [ 1924145349120, %obj2vint.exit ] ; 2 uses
  store i64 %i.t, ptr %i.b, align 8
  %i.u = icmp eq i64 %4, 4
  br i1 %i.u, label %bb.j, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.v = icmp eq i64 %4, 0
  %i.w = and i64 %4, 7
  %i.x = icmp ne i64 %i.w, 0
  %i.y = or i1 %i.v, %i.x
  br i1 %i.y, label %rbimpl_RB_TYPE_P_fastpath.exit.thread.i.i, label %rbimpl_RB_TYPE_P_fastpath.exit.i.i

rbimpl_RB_TYPE_P_fastpath.exit.i.i:               ; preds = %bb.e
  %i.z = inttoptr i64 %4 to ptr
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !30
  %i.ab = and i64 %i.aa, 31
  %i.ac = icmp eq i64 %i.ab, 5
  br i1 %i.ac, label %bb.f, label %rbimpl_RB_TYPE_P_fastpath.exit.thread.i.i

bb.f:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i.i
  %i.ad = tail call i64 @rb_str_to_inum(i64 noundef %4, i32 noundef 10, i32 noundef 1) #18
  br label %rbimpl_RB_TYPE_P_fastpath.exit.thread.i.i

rbimpl_RB_TYPE_P_fastpath.exit.thread.i.i:        ; preds = %bb.f, %rbimpl_RB_TYPE_P_fastpath.exit.i.i, %bb.e
  %.0.i.i = phi i64 [ %i.ad, %bb.f ], [ %4, %rbimpl_RB_TYPE_P_fastpath.exit.i.i ], [ %4, %bb.e ] ; 3 uses
  %i.ae = trunc i64 %.0.i.i to i1
  br i1 %i.ae, label %bb.g, label %bb.h

bb.g:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.thread.i.i
  %i.af = tail call i64 @rb_fix2int(i64 noundef %.0.i.i) #18
  br label %obj2int.exit.i

bb.h:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.thread.i.i
  %i.ag = tail call i64 @rb_num2int(i64 noundef %.0.i.i) #18
  br label %obj2int.exit.i

obj2int.exit.i:                                   ; preds = %bb.h, %bb.g
  %.0.i3.i.i = phi i64 [ %i.af, %bb.g ], [ %i.ag, %bb.h ] ; 2 uses
  %i.ah = and i64 %.0.i3.i.i, 4294967264
  %.not.i = icmp eq i64 %i.ah, 0
  br i1 %.not.i, label %obj2ubits.exit, label %bb.i

bb.i:                                             ; preds = %obj2int.exit.i
  %i.ai = load i64, ptr @rb_eArgError, align 8, !tbaa !13
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.ai, ptr noundef nonnull @.str.104) #19
  unreachable

obj2ubits.exit:                                   ; preds = %obj2int.exit.i
  %i.aj = shl i64 %.0.i3.i.i, 13
  %i.ak = and i64 %i.aj, 253952
  br label %bb.j

bb.j:                                             ; preds = %bb.d, %obj2ubits.exit
  %i.al = phi i64 [ %i.ak, %obj2ubits.exit ], [ 8192, %bb.d ]
  %i.am = and i64 %i.t, -8380417
  %i.an = or disjoint i64 %i.al, %i.am            ; 2 uses
  %i.ao = icmp eq i64 %5, 4
  br i1 %i.ao, label %bb.p, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ap = icmp eq i64 %5, 0
  %i.aq = and i64 %5, 7
  %i.ar = icmp ne i64 %i.aq, 0
  %i.as = or i1 %i.ap, %i.ar
  br i1 %i.as, label %rbimpl_RB_TYPE_P_fastpath.exit.thread.i.i14, label %rbimpl_RB_TYPE_P_fastpath.exit.i.i13

rbimpl_RB_TYPE_P_fastpath.exit.i.i13:             ; preds = %bb.k
  %i.at = inttoptr i64 %5 to ptr
  %i.au = load i64, ptr %i.at, align 8, !tbaa !30
  %i.av = and i64 %i.au, 31
  %i.aw = icmp eq i64 %i.av, 5
  br i1 %i.aw, label %bb.l, label %rbimpl_RB_TYPE_P_fastpath.exit.thread.i.i14

bb.l:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i.i13
  %i.ax = tail call i64 @rb_str_to_inum(i64 noundef %5, i32 noundef 10, i32 noundef 1) #18
  br label %rbimpl_RB_TYPE_P_fastpath.exit.thread.i.i14

rbimpl_RB_TYPE_P_fastpath.exit.thread.i.i14:      ; preds = %bb.l, %rbimpl_RB_TYPE_P_fastpath.exit.i.i13, %bb.k
  %.0.i.i15 = phi i64 [ %i.ax, %bb.l ], [ %5, %rbimpl_RB_TYPE_P_fastpath.exit.i.i13 ], [ %5, %bb.k ] ; 3 uses
  %i.ay = trunc i64 %.0.i.i15 to i1
  br i1 %i.ay, label %bb.m, label %bb.n

bb.m:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.thread.i.i14
  %i.az = tail call i64 @rb_fix2int(i64 noundef %.0.i.i15) #18
  br label %obj2int.exit.i16

bb.n:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.thread.i.i14
  %i.ba = tail call i64 @rb_num2int(i64 noundef %.0.i.i15) #18
  br label %obj2int.exit.i16

obj2int.exit.i16:                                 ; preds = %bb.n, %bb.m
  %.0.i3.i.i17 = phi i64 [ %i.az, %bb.m ], [ %i.ba, %bb.n ] ; 2 uses
  %i.bb = and i64 %.0.i3.i.i17, 4294967264
  %.not.i18 = icmp eq i64 %i.bb, 0
  br i1 %.not.i18, label %obj2ubits.exit19, label %bb.o

bb.o:                                             ; preds = %obj2int.exit.i16
  %i.bc = load i64, ptr @rb_eArgError, align 8, !tbaa !13
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.bc, ptr noundef nonnull @.str.104) #19
  unreachable

obj2ubits.exit19:                                 ; preds = %obj2int.exit.i16
  %i.bd = shl i64 %.0.i3.i.i17, 18
  %i.be = and i64 %i.bd, 8126464
  %i.bf = or disjoint i64 %i.be, %i.an
  br label %bb.p

bb.p:                                             ; preds = %bb.j, %obj2ubits.exit19
  %i.bg = phi i64 [ %i.bf, %obj2ubits.exit19 ], [ %i.an, %bb.j ]
  %i.bh = icmp eq i64 %6, 4
  br i1 %i.bh, label %bb.v, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bi = icmp eq i64 %6, 0
  %i.bj = and i64 %6, 7
  %i.bk = icmp ne i64 %i.bj, 0
  %i.bl = or i1 %i.bi, %i.bk
  br i1 %i.bl, label %rbimpl_RB_TYPE_P_fastpath.exit.thread.i.i21, label %rbimpl_RB_TYPE_P_fastpath.exit.i.i20

rbimpl_RB_TYPE_P_fastpath.exit.i.i20:             ; preds = %bb.q
  %i.bm = inttoptr i64 %6 to ptr
  %i.bn = load i64, ptr %i.bm, align 8, !tbaa !30
  %i.bo = and i64 %i.bn, 31
  %i.bp = icmp eq i64 %i.bo, 5
  br i1 %i.bp, label %bb.r, label %rbimpl_RB_TYPE_P_fastpath.exit.thread.i.i21

bb.r:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i.i20
  %i.bq = tail call i64 @rb_str_to_inum(i64 noundef %6, i32 noundef 10, i32 noundef 1) #18
  br label %rbimpl_RB_TYPE_P_fastpath.exit.thread.i.i21

rbimpl_RB_TYPE_P_fastpath.exit.thread.i.i21:      ; preds = %bb.r, %rbimpl_RB_TYPE_P_fastpath.exit.i.i20, %bb.q
  %.0.i.i22 = phi i64 [ %i.bq, %bb.r ], [ %6, %rbimpl_RB_TYPE_P_fastpath.exit.i.i20 ], [ %6, %bb.q ] ; 3 uses
  %i.br = trunc i64 %.0.i.i22 to i1
  br i1 %i.br, label %bb.s, label %bb.t

bb.s:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.thread.i.i21
  %i.bs = tail call i64 @rb_fix2int(i64 noundef %.0.i.i22) #18
  br label %obj2int.exit.i23

end_hunk_2
begin_hunk_3_@gmtimew_noleapsecond:bb.a
bb.l:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i
  %i.ca = tail call i64 @rb_big_modulo(i64 noundef %.06.i.i, i64 noundef 15) #18
  br label %modv.exit

rbimpl_RB_TYPE_P_fastpath.exit.thread.i:          ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i, %bb.k
  %i.cb = tail call i64 (i64, i64, i32, ...) @rb_funcall(i64 noundef %.06.i.i, i64 noundef 37, i32 noundef 1, i64 noundef 15) #18
  br label %modv.exit

modv.exit:                                        ; preds = %bb.j, %bb.l, %rbimpl_RB_TYPE_P_fastpath.exit.thread.i
  %.0.i = phi i64 [ %i.cb, %rbimpl_RB_TYPE_P_fastpath.exit.thread.i ], [ %i.ca, %bb.l ], [ %i.br, %bb.j ] ; 3 uses
  %i.cc = trunc i64 %.0.i to i1
  br i1 %i.cc, label %bb.m, label %bb.n

bb.m:                                             ; preds = %modv.exit
  %i.cd = tail call i64 @rb_fix2int(i64 noundef %.0.i) #18
  br label %rb_num2int_inline.exit

bb.n:                                             ; preds = %modv.exit
  %i.ce = tail call i64 @rb_num2int(i64 noundef %.0.i) #18
  br label %rb_num2int_inline.exit

rb_num2int_inline.exit:                           ; preds = %bb.m, %bb.n
  %.0.i63 = phi i64 [ %i.cd, %bb.m ], [ %i.ce, %bb.n ]
  %i.cf = trunc i64 %.0.i63 to i32
  %i.cg = add i32 %i.cf, 4
  %i.ch = srem i32 %i.cg, 7
  %i.ci = load i64, ptr %i.g, align 8
  %i.cj = and i32 %i.ch, 7
  %i.ck = zext nneg i32 %i.cj to i64
  %i.cl = shl nuw nsw i64 %i.ck, 38
  %i.cm = and i64 %i.ci, -1924145348609
  %i.cn = or disjoint i64 %i.cl, %i.cm
  store i64 %i.cn, ptr %i.g, align 8
  %i.co = trunc i64 %.06.i4.i to i1
  br i1 %i.co, label %bb.o, label %bb.p

bb.o:                                             ; preds = %rb_num2int_inline.exit
  %i.cp = tail call i64 @rb_fix2int(i64 noundef %.06.i4.i) #18
  br label %rb_num2int_inline.exit65

bb.p:                                             ; preds = %rb_num2int_inline.exit
  %i.cq = tail call i64 @rb_num2int(i64 noundef %.06.i4.i) #18
  br label %rb_num2int_inline.exit65

rb_num2int_inline.exit65:                         ; preds = %bb.o, %bb.p
  %.0.i64 = phi i64 [ %i.cp, %bb.o ], [ %i.cq, %bb.p ]
  %i.cr = trunc i64 %.0.i64 to i32                ; 3 uses
  %i.cs = srem i32 %i.cr, 60
  %i.ct = load i64, ptr %i.g, align 8
  %i.cu = and i32 %i.cs, 63
  %i.cv = zext nneg i32 %i.cu to i64
  %i.cw = shl nuw nsw i64 %i.cv, 32
  %i.cx = and i64 %i.ct, -271119548417
  %i.cy = or disjoint i64 %i.cw, %i.cx
  %i.cz = sdiv i32 %i.cr, 60
  %i.da = srem i32 %i.cz, 60
  %i.db = shl nsw i32 %i.da, 23
  %i.dc = and i32 %i.db, 528482304
  %i.dd = zext nneg i32 %i.dc to i64
  %i.de = or disjoint i64 %i.cy, %i.dd
  %i.df = sdiv i32 %i.cr, 3600
  %i.dg = shl i32 %i.df, 18
  %i.dh = and i32 %i.dg, 8126464
  %i.di = zext nneg i32 %i.dh to i64
  %i.dj = or disjoint i64 %i.de, %i.di
  store i64 %i.dj, ptr %i.g, align 8
  call fastcc void @divmodv(i64 noundef %.06.i.i, i64 noundef 292195, ptr noundef %i.f, ptr noundef %i.e)
  %i.dk = load i64, ptr %i.f, align 8, !tbaa !13  ; 7 uses
  %i.dl = and i64 %i.dk, 1
  %or.cond.not.i = icmp eq i64 %i.dl, 0
  br i1 %or.cond.not.i, label %bb.t, label %bb.q

bb.q:                                             ; preds = %rb_num2int_inline.exit65
  %i.dm = ashr i64 %i.dk, 1
  %i.dn = sext i64 %i.dm to i128
  %i.do = mul nsw i128 %i.dn, 400                 ; 3 uses
  %i.dp = add nsw i128 %i.do, 4611686018427387904
  %or.cond.i.i = icmp ult i128 %i.dp, 9223372036854775808
  br i1 %or.cond.i.i, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.dq = trunc nsw i128 %i.do to i64
  %i.dr = shl nsw i64 %i.dq, 1
  %i.ds = or disjoint i64 %i.dr, 1
  br label %mulv.exit

bb.s:                                             ; preds = %bb.q
  %i.dt = tail call i64 @rb_int128t2big(i128 noundef %i.do) #18
  br label %mulv.exit

bb.t:                                             ; preds = %rb_num2int_inline.exit65
  %i.du = icmp eq i64 %i.dk, 0
  %i.dv = and i64 %i.dk, 6
  %i.dw = icmp ne i64 %i.dv, 0
  %i.dx = or i1 %i.du, %i.dw
  br i1 %i.dx, label %rbimpl_RB_TYPE_P_fastpath.exit.thread.i68, label %rbimpl_RB_TYPE_P_fastpath.exit.i67

rbimpl_RB_TYPE_P_fastpath.exit.i67:               ; preds = %bb.t
  %i.dy = inttoptr i64 %i.dk to ptr
  %i.dz = load i64, ptr %i.dy, align 8, !tbaa !30
  %i.ea = and i64 %i.dz, 31
  %i.eb = icmp eq i64 %i.ea, 10
  br i1 %i.eb, label %bb.u, label %rbimpl_RB_TYPE_P_fastpath.exit.thread.i68

bb.u:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i67
  %i.ec = tail call i64 @rb_big_mul(i64 noundef %i.dk, i64 noundef 801) #18
  br label %mulv.exit

rbimpl_RB_TYPE_P_fastpath.exit.thread.i68:        ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i67, %bb.t
  %i.ed = tail call i64 (i64, i64, i32, ...) @rb_funcall(i64 noundef %i.dk, i64 noundef 42, i32 noundef 1, i64 noundef 801) #18
  br label %mulv.exit

mulv.exit:                                        ; preds = %bb.r, %bb.s, %bb.u, %rbimpl_RB_TYPE_P_fastpath.exit.thread.i68
  %.0.i66 = phi i64 [ %i.ed, %rbimpl_RB_TYPE_P_fastpath.exit.thread.i68 ], [ %i.ec, %bb.u ], [ %i.ds, %bb.r ], [ %i.dt, %bb.s ]
  store i64 %.0.i66, ptr %1, align 8, !tbaa !65
  %i.ee = load i64, ptr %i.e, align 8, !tbaa !13  ; 3 uses
  %i.ef = trunc i64 %i.ee to i1
  br i1 %i.ef, label %bb.v, label %bb.w

bb.v:                                             ; preds = %mulv.exit
  %i.eg = tail call i64 @rb_fix2int(i64 noundef %i.ee) #18
  br label %rb_num2int_inline.exit70

bb.w:                                             ; preds = %mulv.exit
  %i.eh = tail call i64 @rb_num2int(i64 noundef %i.ee) #18
  br label %rb_num2int_inline.exit70

rb_num2int_inline.exit70:                         ; preds = %bb.v, %bb.w
  %.0.i69 = phi i64 [ %i.eg, %bb.v ], [ %i.eh, %bb.w ]
  %i.ei = trunc i64 %.0.i69 to i32                ; 5 uses
  %i.ej = icmp sgt i32 %i.ei, 11015
  br i1 %i.ej, label %bb.x, label %bb.aa

bb.x:                                             ; preds = %rb_num2int_inline.exit70
  %i.ek = icmp samesign ult i32 %i.ei, 11323
  br i1 %i.ek, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.el = add nsw i32 %i.ei, -10957
  br label %bb.aj

bb.z:                                             ; preds = %bb.x
  %i.em = add nsw i32 %i.ei, -1
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %rb_num2int_inline.exit70
  %.0.a = phi i32 [ %i.em, %bb.z ], [ %i.ei, %rb_num2int_inline.exit70 ] ; 2 uses
  %i.en = sdiv i32 %.0.a, 36524
  %i.eo = srem i32 %.0.a, 36524                   ; 5 uses
  %i.ep = mul nsw i32 %i.en, 100                  ; 2 uses
  %i.eq = add nsw i32 %i.ep, 1970
  %i.er = icmp sgt i32 %i.eo, 11015
  br i1 %i.er, label %bb.ab, label %bb.ae

bb.ab:                                            ; preds = %bb.aa
  %i.es = icmp samesign ult i32 %i.eo, 11322
  br i1 %i.es, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.et = add nsw i32 %i.ep, 2000
  %i.eu = add nsw i32 %i.eo, -10957
  br label %bb.aj

bb.ad:                                            ; preds = %bb.ab
  %i.ev = add nuw nsw i32 %i.eo, 1
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.aa
  %.1 = phi i32 [ %i.ev, %bb.ad ], [ %i.eo, %bb.aa ] ; 2 uses
  %i.ew = sdiv i32 %.1, 1461
  %i.ex = srem i32 %.1, 1461                      ; 5 uses
  %i.ey = shl nsw i32 %i.ew, 2
  %i.ez = add nsw i32 %i.eq, %i.ey                ; 2 uses
  %i.fa = icmp sgt i32 %i.ex, 788
  br i1 %i.fa, label %bb.af, label %bb.ai

bb.af:                                            ; preds = %bb.ae
  %i.fb = icmp samesign ult i32 %i.ex, 1096
  br i1 %i.fb, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.fc = add nsw i32 %i.ez, 2
  %i.fd = add nsw i32 %i.ex, -730
  br label %bb.aj

bb.ah:                                            ; preds = %bb.af
  %i.fe = add nsw i32 %i.ex, -1
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ae
  %.2 = phi i32 [ %i.fe, %bb.ah ], [ %i.ex, %bb.ae ]
  %.lhs.trunc84 = trunc nsw i32 %.2 to i16        ; 2 uses
  %i.ff = sdiv i16 %.lhs.trunc84, 365
  %.sext = sext i16 %i.ff to i32
  %i.fg = srem i16 %.lhs.trunc84, 365
  %.sext86 = sext i16 %i.fg to i32
  %i.fh = add nsw i32 %i.ez, %.sext
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ag, %bb.ac, %bb.y
  %.056 = phi i32 [ %i.el, %bb.y ], [ %i.eu, %bb.ac ], [ %i.fd, %bb.ag ], [ %.sext86, %bb.ai ] ; 2 uses
  %.3 = phi i32 [ 2000, %bb.y ], [ %i.et, %bb.ac ], [ %i.fc, %bb.ag ], [ %i.fh, %bb.ai ] ; 2 uses
  %i.fi = add nsw i32 %.056, 1
  %i.fj = load i64, ptr %i.g, align 8
  %i.fk = and i32 %i.fi, 511
  %i.fl = zext nneg i32 %i.fk to i64
  %i.fm = and i64 %i.fj, -512
  %i.fn = or disjoint i64 %i.fm, %i.fl
  store i64 %i.fn, ptr %i.g, align 8
  %i.fo = load i64, ptr %1, align 8, !tbaa !65    ; 7 uses
  %i.fp = sext i32 %.3 to i64                     ; 4 uses
  %i.fq = shl nsw i64 %i.fp, 1
  %i.fr = or disjoint i64 %i.fq, 1                ; 2 uses
  %i.fs = and i64 %i.fo, 1
  %or.cond.not.i71 = icmp eq i64 %i.fs, 0
  br i1 %or.cond.not.i71, label %bb.an, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.ft = ashr i64 %i.fo, 1
  %i.fu = add nsw i64 %i.ft, %i.fp                ; 3 uses
  %i.fv = add i64 %i.fu, 4611686018427387904
  %or.cond.i.i72 = icmp sgt i64 %i.fv, -1
  br i1 %or.cond.i.i72, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
  %i.fw = shl nsw i64 %i.fu, 1
  %i.fx = or disjoint i64 %i.fw, 1
  br label %addv.exit

bb.am:                                            ; preds = %bb.ak
  %i.fy = tail call i64 @rb_int2big(i64 noundef %i.fu) #18
  br label %addv.exit

bb.an:                                            ; preds = %bb.aj
  %i.fz = icmp eq i64 %i.fo, 0
  %i.ga = and i64 %i.fo, 6
  %i.gb = icmp ne i64 %i.ga, 0
  %i.gc = or i1 %i.fz, %i.gb
  br i1 %i.gc, label %rbimpl_RB_TYPE_P_fastpath.exit.thread.i75, label %rbimpl_RB_TYPE_P_fastpath.exit.i74

rbimpl_RB_TYPE_P_fastpath.exit.i74:               ; preds = %bb.an
  %i.gd = inttoptr i64 %i.fo to ptr
  %i.ge = load i64, ptr %i.gd, align 8, !tbaa !30
  %i.gf = and i64 %i.ge, 31
  %i.gg = icmp eq i64 %i.gf, 10
  br i1 %i.gg, label %bb.ao, label %rbimpl_RB_TYPE_P_fastpath.exit.thread.i75

bb.ao:                                            ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i74
  %i.gh = tail call i64 @rb_big_plus(i64 noundef %i.fo, i64 noundef %i.fr) #18
  br label %addv.exit

rbimpl_RB_TYPE_P_fastpath.exit.thread.i75:        ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i74, %bb.an
  %i.gi = tail call i64 (i64, i64, i32, ...) @rb_funcall(i64 noundef %i.fo, i64 noundef 43, i32 noundef 1, i64 noundef %i.fr) #18
  br label %addv.exit

addv.exit:                                        ; preds = %bb.al, %bb.am, %bb.ao, %rbimpl_RB_TYPE_P_fastpath.exit.thread.i75
  %.0.i73 = phi i64 [ %i.gi, %rbimpl_RB_TYPE_P_fastpath.exit.thread.i75 ], [ %i.gh, %bb.ao ], [ %i.fx, %bb.al ], [ %i.fy, %bb.am ]
  store i64 %.0.i73, ptr %1, align 8, !tbaa !65
  %i.gj = icmp sgt i32 %.3, -1
  br i1 %i.gj, label %bb.aq, label %bb.ap, !prof !15

bb.ap:                                            ; preds = %addv.exit
  %i.gk = sub nsw i64 0, %i.fp
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %addv.exit
  %i.gl = phi i64 [ %i.gk, %bb.ap ], [ %i.fp, %addv.exit ] ; 3 uses
  %i.gm = and i64 %i.gl, 3
  %.not.i = icmp eq i64 %i.gm, 0
  br i1 %.not.i, label %bb.ar, label %leap_year_p.exit.thread, !prof !16

bb.ar:                                            ; preds = %bb.aq
  %.lhs.trunc = trunc nuw nsw i64 %i.gl to i32
  %i.gn = udiv i32 %.lhs.trunc, 100
  %.zext = zext nneg i32 %i.gn to i64             ; 2 uses
  %i.go = mul nuw nsw i64 %.zext, 100
  %.not11.i = icmp eq i64 %i.gl, %i.go
  br i1 %.not11.i, label %leap_year_p.exit, label %leap_year_p.exit.thread81, !prof !16

leap_year_p.exit:                                 ; preds = %bb.ar
  %i.gp = and i64 %.zext, 3
  %.not = icmp eq i64 %i.gp, 0
  br i1 %.not, label %leap_year_p.exit.thread81, label %leap_year_p.exit.thread

leap_year_p.exit.thread:                          ; preds = %bb.aq, %leap_year_p.exit
  br label %leap_year_p.exit.thread81

leap_year_p.exit.thread81:                        ; preds = %leap_year_p.exit, %bb.ar, %leap_year_p.exit.thread
  %common_year_mon_of_yday.sink = phi ptr [ @common_year_mon_of_yday, %leap_year_p.exit.thread ], [ @leap_year_mon_of_yday, %bb.ar ], [ @leap_year_mon_of_yday, %leap_year_p.exit ]
  %common_year_mday_of_yday.sink = phi ptr [ @common_year_mday_of_yday, %leap_year_p.exit.thread ], [ @leap_year_mday_of_yday, %bb.ar ], [ @leap_year_mday_of_yday, %leap_year_p.exit ]
  %i.gq = sext i32 %.056 to i64                   ; 2 uses
  %i.gr = getelementptr i8, ptr %common_year_mon_of_yday.sink, i64 %i.gq
  %i.gs = load i8, ptr %i.gr, align 1, !tbaa !53
  %i.gt = load i64, ptr %i.g, align 8
  %i.gu = zext i8 %i.gs to i64
  %i.gv = shl nuw nsw i64 %i.gu, 9
  %i.gw = and i64 %i.gt, -261633
  %i.gx = getelementptr i8, ptr %common_year_mday_of_yday.sink, i64 %i.gq
  %i.gy = load i8, ptr %i.gx, align 1, !tbaa !53
  %i.gz = and i8 %i.gy, 31
  %i.ha = zext nneg i8 %i.gz to i64
  %i.hb = shl nuw nsw i64 %i.ha, 13
  %.masked = and i64 %i.gv, 7680
  %i.hc = or disjoint i64 %.masked, %i.gw
  %i.hd = or disjoint i64 %i.hb, %i.hc
  store i64 %i.hd, ptr %i.g, align 8
  %i.he = getelementptr i8, ptr %1, i64 16
  store i64 1, ptr %i.he, align 8, !tbaa !70
  %i.hf = load i64, ptr @str_utc, align 8, !tbaa !13
  %i.hg = getelementptr i8, ptr %1, i64 24
  store i64 %i.hf, ptr %i.hg, align 8, !tbaa !71
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #18
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @init_leap_second_info() unnamed_addr #1 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %0 = alloca %struct.tm, align 8                 ; 11 uses
  %1 = alloca %struct.vtm, align 8                ; 7 uses
  %i.b = load i64, ptr @this_year, align 8, !tbaa !13
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %bb.b, label %bb.p

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #18
  %i.d = tail call i64 @time(ptr noundef null) #18
  store i64 %i.d, ptr %i.a, align 8, !tbaa !13
  %i.e = call ptr @gmtime_r(ptr noundef nonnull %i.a, ptr noundef nonnull %0) #18 ; 0 uses
  %i.f = call fastcc ptr @gmtime_with_leapsecond(ptr noundef nonnull %i.a, ptr noundef %0) ; 2 uses
  %.not = icmp eq ptr %i.f, null
  br i1 %.not, label %bb.o, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr i8, ptr %i.f, i64 20
  %i.h = load i32, ptr %i.g, align 4, !tbaa !77
  %i.i = sext i32 %i.h to i64
  store i64 %i.i, ptr @this_year, align 8, !tbaa !13
  %i.j = load i64, ptr %i.a, align 8, !tbaa !13
  %i.k = call i64 @llvm.umin.i64(i64 %i.j, i64 9223372036823153407)
  %storemerge = add nuw nsw i64 %i.k, 31622400
  store i64 %storemerge, ptr @known_leap_seconds_limit, align 8, !tbaa !13
  %i.l = call fastcc ptr @gmtime_with_leapsecond(ptr noundef nonnull @known_leap_seconds_limit, ptr noundef %0)
  %.not2 = icmp eq ptr %i.l, null
  br i1 %.not2, label %bb.o, label %rb_long2num_inline.exit

rb_long2num_inline.exit:                          ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.n = load i32, ptr %i.m, align 4, !tbaa !77
  %i.o = add i32 %i.n, 1900
  %i.p = sext i32 %i.o to i64
  %i.q = shl nsw i64 %i.p, 1
  %i.r = or disjoint i64 %i.q, 1
  store i64 %i.r, ptr %1, align 8, !tbaa !65
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.t = load i32, ptr %i.s, align 8, !tbaa !79
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.v = shl i32 %i.t, 9
  %i.w = add i32 %i.v, 512
  %i.x = and i32 %i.w, 7680
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.z = load i32, ptr %i.y, align 4, !tbaa !80
  %i.aa = shl i32 %i.z, 13
  %i.ab = and i32 %i.aa, 253952
  %i.ac = or disjoint i32 %i.ab, %i.x
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !81
  %i.af = shl i32 %i.ae, 18
  %i.ag = and i32 %i.af, 8126464
  %i.ah = or disjoint i32 %i.ag, %i.ac
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !82
  %i.ak = shl i32 %i.aj, 23
  %i.al = and i32 %i.ak, 528482304
  %i.am = or disjoint i32 %i.al, %i.ah
  %i.an = zext nneg i32 %i.am to i64
  %i.ao = load i32, ptr %0, align 8, !tbaa !83
  %i.ap = and i32 %i.ao, 63
  %i.aq = zext nneg i32 %i.ap to i64
  %i.ar = shl nuw nsw i64 %i.aq, 32
  %i.as = or disjoint i64 %i.ar, %i.an
  store i64 %i.as, ptr %i.u, align 8
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 1, ptr %i.at, align 8, !tbaa !66
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i64 1, ptr %i.au, align 8, !tbaa !70
  %i.av = call fastcc i64 @timegmw_noleapsecond(ptr noundef nonnull %1) ; 3 uses
  %i.aw = load i64, ptr @known_leap_seconds_limit, align 8, !tbaa !13 ; 3 uses
  %i.ax = add i64 %i.aw, 4611686018427387904
  %or.cond.i.i = icmp sgt i64 %i.ax, -1
  br i1 %or.cond.i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %rb_long2num_inline.exit
  %i.ay = shl nsw i64 %i.aw, 1
  %i.az = or disjoint i64 %i.ay, 1
  br label %rb_long2num_inline.exit.i

bb.e:                                             ; preds = %rb_long2num_inline.exit
  %i.ba = call i64 @rb_int2big(i64 noundef %i.aw) #18
  br label %rb_long2num_inline.exit.i

rb_long2num_inline.exit.i:                        ; preds = %bb.e, %bb.d
  %.0.i.i = phi i64 [ %i.az, %bb.d ], [ %i.ba, %bb.e ] ; 6 uses
  %i.bb = icmp eq i64 %.0.i.i, 0
  %i.bc = and i64 %.0.i.i, 7
  %i.bd = icmp ne i64 %i.bc, 0
  %i.be = or i1 %i.bb, %i.bd
  br i1 %i.be, label %timet2wv.exit, label %rbimpl_RB_TYPE_P_fastpath.exit.i.i

rbimpl_RB_TYPE_P_fastpath.exit.i.i:               ; preds = %rb_long2num_inline.exit.i
  %i.bf = inttoptr i64 %.0.i.i to ptr             ; 3 uses
  %i.bg = load i64, ptr %i.bf, align 8, !tbaa !30
  %i.bh = and i64 %i.bg, 31
  %i.bi = icmp eq i64 %i.bh, 15
  br i1 %i.bi, label %bb.f, label %timet2wv.exit

bb.f:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i.i
  %i.bj = getelementptr i8, ptr %i.bf, i64 24
  %i.bk = load i64, ptr %i.bj, align 8, !tbaa !39
  %.not.i.i = icmp eq i64 %i.bk, 3
  br i1 %.not.i.i, label %bb.g, label %timet2wv.exit

bb.g:                                             ; preds = %bb.f
  %i.bl = getelementptr i8, ptr %i.bf, i64 16
  %i.bm = load i64, ptr %i.bl, align 8, !tbaa !41
  br label %timet2wv.exit

timet2wv.exit:                                    ; preds = %rb_long2num_inline.exit.i, %rbimpl_RB_TYPE_P_fastpath.exit.i.i, %bb.f, %bb.g
  %.06.i.i = phi i64 [ %.0.i.i, %bb.f ], [ %i.bm, %bb.g ], [ %.0.i.i, %rbimpl_RB_TYPE_P_fastpath.exit.i.i ], [ %.0.i.i, %rb_long2num_inline.exit.i ]
  %i.bn = and i64 %i.av, 1
  %or.cond24.not.i.i.i = icmp eq i64 %i.bn, 0
  br i1 %or.cond24.not.i.i.i, label %bb.j, label %bb.h

bb.h:                                             ; preds = %timet2wv.exit
  %i.bo = ashr i64 %i.av, 1                       ; 2 uses
  %i.bp = sdiv i64 %i.bo, 1000000000              ; 2 uses
  %i.bq = mul nsw i64 %i.bp, 1000000000
  %i.br = icmp eq i64 %i.bq, %i.bo
  br i1 %i.br, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.bs = shl nsw i64 %i.bp, 1
  %i.bt = or disjoint i64 %i.bs, 1
  br label %rb_time_unmagnify_to_rational.exit.i

bb.j:                                             ; preds = %bb.h, %timet2wv.exit
  %i.bu = call i64 @rb_numeric_quo(i64 noundef %i.av, i64 noundef 2000000001) #18
  br label %rb_time_unmagnify_to_rational.exit.i

rb_time_unmagnify_to_rational.exit.i:             ; preds = %bb.j, %bb.i
  %.1.i.i.i = phi i64 [ %i.bu, %bb.j ], [ %i.bt, %bb.i ] ; 6 uses
  %i.bv = icmp eq i64 %.1.i.i.i, 0
  %i.bw = and i64 %.1.i.i.i, 7
  %i.bx = icmp ne i64 %i.bw, 0
  %i.by = or i1 %i.bv, %i.bx
  br i1 %i.by, label %rb_time_unmagnify.exit, label %rbimpl_RB_TYPE_P_fastpath.exit.i.i3

rbimpl_RB_TYPE_P_fastpath.exit.i.i3:              ; preds = %rb_time_unmagnify_to_rational.exit.i
  %i.bz = inttoptr i64 %.1.i.i.i to ptr           ; 3 uses
  %i.ca = load i64, ptr %i.bz, align 8, !tbaa !30
  %i.cb = and i64 %i.ca, 31
  %i.cc = icmp eq i64 %i.cb, 15
  br i1 %i.cc, label %bb.k, label %rb_time_unmagnify.exit

bb.k:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i.i3
  %i.cd = getelementptr i8, ptr %i.bz, i64 24
  %i.ce = load i64, ptr %i.cd, align 8, !tbaa !39
  %.not.i.i5 = icmp eq i64 %i.ce, 3
  br i1 %.not.i.i5, label %bb.l, label %rb_time_unmagnify.exit

bb.l:                                             ; preds = %bb.k
  %i.cf = getelementptr i8, ptr %i.bz, i64 16
  %i.cg = load i64, ptr %i.cf, align 8, !tbaa !41
  br label %rb_time_unmagnify.exit

rb_time_unmagnify.exit:                           ; preds = %rb_time_unmagnify_to_rational.exit.i, %rbimpl_RB_TYPE_P_fastpath.exit.i.i3, %bb.k, %bb.l
  %.06.i.i4 = phi i64 [ %.1.i.i.i, %bb.k ], [ %i.cg, %bb.l ], [ %.1.i.i.i, %rbimpl_RB_TYPE_P_fastpath.exit.i.i3 ], [ %.1.i.i.i, %rb_time_unmagnify_to_rational.exit.i ]
  %i.ch = call fastcc i64 @wsub(i64 noundef %.06.i.i, i64 noundef %.06.i.i4) ; 3 uses
  %i.ci = trunc i64 %i.ch to i1
  br i1 %i.ci, label %bb.m, label %bb.n

bb.m:                                             ; preds = %rb_time_unmagnify.exit
  %i.cj = call i64 @rb_fix2int(i64 noundef %i.ch) #18
  br label %rb_num2int_inline.exit

bb.n:                                             ; preds = %rb_time_unmagnify.exit
  %i.ck = call i64 @rb_num2int(i64 noundef %i.ch) #18
  br label %rb_num2int_inline.exit

rb_num2int_inline.exit:                           ; preds = %bb.m, %bb.n
  %.0.i6 = phi i64 [ %i.cj, %bb.m ], [ %i.ck, %bb.n ]
  %i.cl = trunc i64 %.0.i6 to i32
  store i32 %i.cl, ptr @number_of_leap_seconds_known, align 4, !tbaa !7
  br label %bb.o

bb.o:                                             ; preds = %bb.c, %bb.b, %rb_num2int_inline.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.a
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc noundef ptr @gmtime_with_leapsecond(ptr noundef %0, ptr noundef nonnull %1) unnamed_addr #1 {
bb.a:
  %i.a = load i8, ptr @ruby_tz_uptodate_p, align 1, !tbaa !11, !range !87, !noundef !88
  %i.b = trunc nuw i8 %i.a to i1
  br i1 %i.b, label %rb_localtime_r.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i8 1, ptr @ruby_tz_uptodate_p, align 1, !tbaa !11
  tail call void @tzset() #18
  br label %rb_localtime_r.exit

rb_localtime_r.exit:                              ; preds = %bb.a, %bb.b
  %i.c = tail call ptr @localtime_r(ptr noundef %0, ptr noundef nonnull %1) #18 ; 2 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.af, label %bb.c

bb.c:                                             ; preds = %rb_localtime_r.exit
  %i.e = getelementptr i8, ptr %i.c, i64 40
  %i.f = load i64, ptr %i.e, align 8, !tbaa !89   ; 2 uses
  %i.g = icmp slt i64 %i.f, 0
  %.088 = select i1 %i.g, i32 1, i32 -1           ; 3 uses
  %.082 = tail call i64 @llvm.abs.i64(i64 %i.f, i1 false) ; 3 uses
  %i.h = srem i64 %.082, 60                       ; 2 uses
  %i.i = sdiv i64 %.082, 60
  %i.j = srem i64 %i.i, 60
  %i.k = trunc nsw i64 %i.j to i32
  %i.l = sdiv i64 %.082, 3600
  %i.m = trunc i64 %i.l to i32
  %i.n = mul nsw i32 %.088, %i.k                  ; 3 uses
  %i.o = mul i32 %.088, %i.m                      ; 3 uses
  %.not = icmp eq i64 %i.h, 0
  br i1 %.not, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.p = trunc nsw i64 %i.h to i32
  %i.q = mul nsw i32 %.088, %i.p
  %i.r = load i32, ptr %1, align 8, !tbaa !83
  %i.s = add i32 %i.r, %i.q                       ; 4 uses
  store i32 %i.s, ptr %1, align 8, !tbaa !83
  %i.t = icmp slt i32 %i.s, 0
  br i1 %i.t, label %.sink.split, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.u = icmp samesign ugt i32 %i.s, 59
  br i1 %i.u, label %.sink.split, label %bb.f

.sink.split:                                      ; preds = %bb.e, %bb.d
  %.sink169 = phi i32 [ 60, %bb.d ], [ -60, %bb.e ]
  %.sink = phi i32 [ -1, %bb.d ], [ 1, %bb.e ]
  %i.v = add nsw i32 %i.s, %.sink169
  store i32 %i.v, ptr %1, align 8, !tbaa !83
  %i.w = add nsw i32 %i.n, %.sink
  br label %bb.f

bb.f:                                             ; preds = %.sink.split, %bb.e, %bb.c
  %.188 = phi i32 [ %i.n, %bb.c ], [ %i.n, %bb.e ], [ %i.w, %.sink.split ] ; 2 uses
  %.not101 = icmp eq i32 %.188, 0
  br i1 %.not101, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.x = getelementptr i8, ptr %1, i64 4          ; 3 uses
  %i.y = load i32, ptr %i.x, align 4, !tbaa !82
  %i.z = add i32 %i.y, %.188                      ; 4 uses
  store i32 %i.z, ptr %i.x, align 4, !tbaa !82
  %i.aa = icmp slt i32 %i.z, 0
  br i1 %i.aa, label %.sink.split170, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ab = icmp samesign ugt i32 %i.z, 59
  br i1 %i.ab, label %.sink.split170, label %bb.i

.sink.split170:                                   ; preds = %bb.h, %bb.g
  %.sink173 = phi i32 [ 60, %bb.g ], [ -60, %bb.h ]
  %.sink171 = phi i32 [ -1, %bb.g ], [ 1, %bb.h ]
  %i.ac = add nsw i32 %i.z, %.sink173
  store i32 %i.ac, ptr %i.x, align 4, !tbaa !82
  %i.ad = add i32 %i.o, %.sink171
  br label %bb.i

bb.i:                                             ; preds = %.sink.split170, %bb.h, %bb.f
  %.186 = phi i32 [ %i.o, %bb.f ], [ %i.o, %bb.h ], [ %i.ad, %.sink.split170 ] ; 2 uses
  %.not102 = icmp eq i32 %.186, 0
  br i1 %.not102, label %.thread119, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ae = getelementptr i8, ptr %1, i64 8         ; 3 uses
  %i.af = load i32, ptr %i.ae, align 8, !tbaa !81
  %i.ag = add i32 %i.af, %.186                    ; 4 uses
  %i.ah = icmp slt i32 %i.ag, 0
  %i.ai = add nsw i32 %i.ag, 24
  %spec.select = select i1 %i.ah, i32 %i.ai, i32 %i.ag ; 3 uses
  store i32 %spec.select, ptr %i.ae, align 8, !tbaa !81
  %i.aj = icmp sgt i32 %spec.select, 23
  br i1 %i.aj, label %bb.w, label %bb.k

bb.k:                                             ; preds = %bb.j
  %.not103 = icmp sgt i32 %i.ag, -1
  br i1 %.not103, label %.thread119, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ak = getelementptr i8, ptr %1, i64 28        ; 2 uses
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !85 ; 3 uses
  %i.am = icmp eq i32 %i.al, 0
  %i.an = getelementptr i8, ptr %1, i64 12        ; 4 uses
  br i1 %i.am, label %bb.m, label %bb.q

bb.m:                                             ; preds = %bb.l
  store i32 31, ptr %i.an, align 4, !tbaa !80
  %i.ao = getelementptr i8, ptr %1, i64 16
  store i32 11, ptr %i.ao, align 8, !tbaa !79
  %i.ap = getelementptr i8, ptr %1, i64 20        ; 2 uses
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !77 ; 2 uses
  %i.ar = add i32 %i.aq, -1
  store i32 %i.ar, ptr %i.ap, align 4, !tbaa !77
  %i.as = add i32 %i.aq, 1899                     ; 2 uses
  %i.at = sext i32 %i.as to i64                   ; 2 uses
  %i.au = icmp sgt i32 %i.as, -1
  br i1 %i.au, label %bb.o, label %bb.n, !prof !15

bb.n:                                             ; preds = %bb.m
  %i.av = sub nsw i64 0, %i.at
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.aw = phi i64 [ %i.av, %bb.n ], [ %i.at, %bb.m ]
  %.fr150 = freeze i64 %i.aw                      ; 3 uses
  %i.ax = and i64 %.fr150, 3
  %.not.i = icmp eq i64 %i.ax, 0
  br i1 %.not.i, label %bb.p, label %leap_year_p.exit.thread, !prof !16

bb.p:                                             ; preds = %bb.o
  %.lhs.trunc143 = trunc i64 %.fr150 to i32
  %i.ay = udiv i32 %.lhs.trunc143, 100
  %.zext144 = zext nneg i32 %i.ay to i64          ; 2 uses
  %i.az = mul nuw nsw i64 %.zext144, 100
  %.not11.i = icmp eq i64 %.fr150, %i.az
  br i1 %.not11.i, label %leap_year_p.exit, label %leap_year_p.exit.thread131, !prof !16

leap_year_p.exit:                                 ; preds = %bb.p
  %i.ba = and i64 %.zext144, 3
  %.not151 = icmp eq i64 %i.ba, 0
  br i1 %.not151, label %leap_year_p.exit.thread131, label %leap_year_p.exit.thread

leap_year_p.exit.thread:                          ; preds = %bb.o, %leap_year_p.exit
  br label %leap_year_p.exit.thread131

bb.q:                                             ; preds = %bb.l
  %i.bb = load i32, ptr %i.an, align 4, !tbaa !80 ; 2 uses
  %i.bc = icmp eq i32 %i.bb, 1
  br i1 %i.bc, label %bb.r, label %bb.v

bb.r:                                             ; preds = %bb.q
  %i.bd = getelementptr i8, ptr %1, i64 20
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !77
  %i.bf = add i32 %i.be, 1900                     ; 2 uses
  %i.bg = sext i32 %i.bf to i64                   ; 2 uses
  %i.bh = icmp sgt i32 %i.bf, -1
  br i1 %i.bh, label %bb.t, label %bb.s, !prof !15

bb.s:                                             ; preds = %bb.r
  %i.bi = sub nsw i64 0, %i.bg
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %i.bj = phi i64 [ %i.bi, %bb.s ], [ %i.bg, %bb.r ]
  %.fr = freeze i64 %i.bj                         ; 3 uses
  %i.bk = and i64 %.fr, 3
  %.not.i108 = icmp eq i64 %i.bk, 0
  br i1 %.not.i108, label %bb.u, label %leap_year_p.exit111.thread, !prof !16

bb.u:                                             ; preds = %bb.t
  %.lhs.trunc145 = trunc i64 %.fr to i32
  %i.bl = udiv i32 %.lhs.trunc145, 100
  %.zext146 = zext nneg i32 %i.bl to i64          ; 2 uses
  %i.bm = mul nuw nsw i64 %.zext146, 100
  %.not11.i110 = icmp eq i64 %.fr, %i.bm
  br i1 %.not11.i110, label %leap_year_p.exit111, label %leap_year_p.exit111.thread139, !prof !16

leap_year_p.exit111:                              ; preds = %bb.u
  %i.bn = and i64 %.zext146, 3
  %.not147 = icmp eq i64 %i.bn, 0
  br i1 %.not147, label %leap_year_p.exit111.thread139, label %leap_year_p.exit111.thread

leap_year_p.exit111.thread:                       ; preds = %bb.t, %leap_year_p.exit111
  br label %leap_year_p.exit111.thread139

leap_year_p.exit111.thread139:                    ; preds = %bb.u, %leap_year_p.exit111, %leap_year_p.exit111.thread
  %i.bo = phi ptr [ @common_year_days_in_month, %leap_year_p.exit111.thread ], [ @leap_year_days_in_month, %leap_year_p.exit111 ], [ @leap_year_days_in_month, %bb.u ]
  %i.bp = getelementptr i8, ptr %1, i64 16        ; 2 uses
  %i.bq = load i32, ptr %i.bp, align 8, !tbaa !79
  %i.br = add i32 %i.bq, -1                       ; 2 uses
  store i32 %i.br, ptr %i.bp, align 8, !tbaa !79
  %i.bs = sext i32 %i.br to i64
  %i.bt = getelementptr i8, ptr %i.bo, i64 %i.bs
  %i.bu = load i8, ptr %i.bt, align 1, !tbaa !53
  %i.bv = sext i8 %i.bu to i32
  store i32 %i.bv, ptr %i.an, align 4, !tbaa !80
  %i.bw = add i32 %i.al, -1
  br label %leap_year_p.exit.thread131

bb.v:                                             ; preds = %bb.q
  %i.bx = add i32 %i.bb, -1
  store i32 %i.bx, ptr %i.an, align 4, !tbaa !80
  %i.by = add i32 %i.al, -1
  br label %leap_year_p.exit.thread131

leap_year_p.exit.thread131:                       ; preds = %leap_year_p.exit.thread, %leap_year_p.exit, %bb.p, %leap_year_p.exit111.thread139, %bb.v
  %.sink174 = phi i32 [ %i.bw, %leap_year_p.exit111.thread139 ], [ %i.by, %bb.v ], [ 364, %leap_year_p.exit.thread ], [ 365, %leap_year_p.exit ], [ 365, %bb.p ]
  store i32 %.sink174, ptr %i.ak, align 4, !tbaa !85
  br label %.thread119.sink.split

bb.w:                                             ; preds = %bb.j
  %i.bz = add nsw i32 %spec.select, -24
  store i32 %i.bz, ptr %i.ae, align 8, !tbaa !81
  %i.ca = getelementptr i8, ptr %1, i64 20        ; 2 uses
  %i.cb = load i32, ptr %i.ca, align 4, !tbaa !77 ; 2 uses
  %i.cc = add i32 %i.cb, 1900                     ; 2 uses
  %i.cd = sext i32 %i.cc to i64                   ; 2 uses
  %i.ce = icmp sgt i32 %i.cc, -1
  br i1 %i.ce, label %bb.y, label %bb.x, !prof !15

bb.x:                                             ; preds = %bb.w
  %i.cf = sub nsw i64 0, %i.cd
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %i.cg = phi i64 [ %i.cf, %bb.x ], [ %i.cd, %bb.w ]
  %.fr189 = freeze i64 %i.cg                      ; 3 uses
  %i.ch = and i64 %.fr189, 3
  %.not.i112.not = icmp eq i64 %i.ch, 0
  br i1 %.not.i112.not, label %bb.z, label %.sink.split176, !prof !16

bb.z:                                             ; preds = %bb.y
  %.lhs.trunc = trunc i64 %.fr189 to i32
  %i.ci = udiv i32 %.lhs.trunc, 100
  %.zext = zext nneg i32 %i.ci to i64             ; 2 uses
end_hunk_3
