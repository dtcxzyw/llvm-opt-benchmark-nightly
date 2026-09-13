Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruby/original/time?download=true
inline.NumInlined: 958
inline.NumDeleted: 130
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumUnrolled: 7
begin_hunk_0_@timew2timespec:bb.a
  %i.ag = tail call i64 @rb_num2long(i64 noundef %.06.i.i.i) #18
  br label %wv2timet.exit

wv2timet.exit:                                    ; preds = %bb.h, %bb.i
  %.0.i.i = phi i64 [ %i.af, %bb.h ], [ %i.ag, %bb.i ]
  %i.ah = trunc i64 %.06.i4.i.i to i1
  br i1 %i.ah, label %bb.j, label %bb.k

bb.j:                                             ; preds = %wv2timet.exit
  %i.ai = ashr i64 %.06.i4.i.i, 1
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
  br i1 %i.e, label %.critedge.i.i, label %rbimpl_RB_TYPE_P_fastpath.exit.i.i, !prof !32

rbimpl_RB_TYPE_P_fastpath.exit.i.i:               ; preds = %bb.b
  %i.f = inttoptr i64 %0 to ptr                   ; 3 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !33
  %i.h = and i64 %i.g, 95
  %or.cond.not.i.i = icmp eq i64 %i.h, 76
  br i1 %or.cond.not.i.i, label %bb.c, label %.critedge.i.i, !prof !34

bb.c:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i.i
  %i.i = getelementptr i8, ptr %i.f, i64 24
  %i.j = load i64, ptr %i.i, align 8, !tbaa !23   ; 2 uses
  %i.k = and i64 %i.j, -2                         ; 2 uses
  %i.l = inttoptr i64 %i.k to ptr
  %i.m = trunc i64 %i.j to i1
  %i.n = getelementptr i8, ptr %i.f, i64 32       ; 2 uses
  br i1 %i.m, label %RTYPEDDATA_GET_DATA.exit.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !24
  br label %RTYPEDDATA_GET_DATA.exit.i.i

RTYPEDDATA_GET_DATA.exit.i.i:                     ; preds = %bb.d, %bb.c
  %i.p = phi ptr [ %i.o, %bb.d ], [ %i.n, %bb.c ] ; 2 uses
  %i.q = icmp eq i64 %i.k, ptrtoint (ptr @time_data_type to i64)
  br i1 %i.q, label %rbimpl_check_typeddata.exit.i, label %.preheader.i.i, !prof !18

.preheader.i.i:                                   ; preds = %RTYPEDDATA_GET_DATA.exit.i.i, %bb.e
  %.015.i.i = phi ptr [ %i.s, %bb.e ], [ %i.l, %RTYPEDDATA_GET_DATA.exit.i.i ] ; 2 uses
  %.not.i.i = icmp eq ptr %.015.i.i, null
  br i1 %.not.i.i, label %.critedge.i.i, label %bb.e

bb.e:                                             ; preds = %.preheader.i.i
  %i.r = getelementptr i8, ptr %.015.i.i, i64 48
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !39   ; 2 uses
  %i.t = icmp eq ptr %i.s, @time_data_type
  br i1 %i.t, label %rbimpl_check_typeddata.exit.i, label %.preheader.i.i, !llvm.loop !0

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
  %i.y = load i64, ptr @rb_eTypeError, align 8, !tbaa !17
  %i.z = tail call i64 @rb_obj_class(i64 noundef %0) #18
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.y, ptr noundef nonnull @.str.92, i64 noundef %i.z) #19
  unreachable

get_timeval.exit:                                 ; preds = %rbimpl_check_typeddata.exit.i
  %i.aa = load i64, ptr %.1.i.i, align 8, !tbaa !27
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
  %i.f = load i64, ptr @rb_eArgError, align 8, !tbaa !17
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.f, ptr noundef nonnull @.str.99) #19
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.g = and i64 %0, 2
  %.not.a = icmp eq i64 %i.g, 0
  br i1 %.not.a, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.h = icmp eq i64 %0, 0
  %i.i = and i64 %0, 4
  %i.j = icmp ne i64 %i.i, 0
  %i.k = or i1 %i.h, %i.j
  br i1 %i.k, label %rbimpl_RB_TYPE_P_fastpath.exit.thread, label %RB_FLOAT_TYPE_P.exit

RB_FLOAT_TYPE_P.exit:                             ; preds = %bb.d
  %i.l = inttoptr i64 %0 to ptr                   ; 2 uses
  %i.m = load i64, ptr %i.l, align 8, !tbaa !33
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
  %i.v = load double, ptr %i.u, align 8, !tbaa !84
  br label %rb_float_value_inline.exit

rb_float_value_inline.exit:                       ; preds = %bb.f, %bb.g
  %.0.i53 = phi double [ %i.v, %bb.g ], [ %i.t, %bb.f ] ; 2 uses
  %i.w = fcmp olt double %.0.i53, 0.000000e+00
  %or.cond4 = select i1 %i.b, i1 %i.w, i1 false
  br i1 %or.cond4, label %bb.h, label %rb_float_value_inline.exit.thread

bb.h:                                             ; preds = %rb_float_value_inline.exit
  %i.x = load i64, ptr @rb_eArgError, align 8, !tbaa !17
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
  %.not = icmp eq i32 %i.ak, 0
  br i1 %.not, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %2 = zext nneg i32 %i.ak to i64
  %i.al = sub nsw i64 1000000000, %2
  %i.am = fadd double %i.aa, -1.000000e+00
  br label %bb.m

bb.m:                                             ; preds = %bb.k, %bb.l, %bb.i, %bb.j
  %.sroa.9.0 = phi i64 [ %i.ag, %bb.j ], [ %i.ae, %bb.i ], [ %i.al, %bb.l ], [ 0, %bb.k ]
  %.0 = phi double [ %i.ah, %bb.j ], [ %i.aa, %bb.i ], [ %i.am, %bb.l ], [ %i.aa, %bb.k ] ; 2 uses
  %i.an = fptosi double %.0 to i64                ; 2 uses
  %i.ao = sitofp i64 %i.an to double
  %i.ap = fcmp une double %.0, %i.ao
  br i1 %i.ap, label %bb.n, label %rb_num2long_inline.exit59

bb.n:                                             ; preds = %bb.m
  %i.aq = load i64, ptr @rb_eRangeError, align 8, !tbaa !17
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.aq, ptr noundef nonnull @.str.100, double noundef %.0.i5365) #19
  unreachable

rbimpl_RB_TYPE_P_fastpath.exit:                   ; preds = %RB_FLOAT_TYPE_P.exit
  %i.ar = inttoptr i64 %0 to ptr
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !33
  %i.at = and i64 %i.as, 31
  %i.au = icmp eq i64 %i.at, 10
  br i1 %i.au, label %rb_num2long_inline.exit55, label %rbimpl_RB_TYPE_P_fastpath.exit.thread

rb_num2long_inline.exit55:                        ; preds = %rbimpl_RB_TYPE_P_fastpath.exit
  %i.av = tail call i64 @rb_num2long(i64 noundef %0) #18 ; 2 uses
  %i.aw = icmp slt i64 %i.av, 0
  %or.cond7 = select i1 %i.b, i1 %i.aw, i1 false
  br i1 %or.cond7, label %bb.o, label %rb_num2long_inline.exit59

bb.o:                                             ; preds = %rb_num2long_inline.exit55
  %i.ax = load i64, ptr @rb_eArgError, align 8, !tbaa !17
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.ax, ptr noundef nonnull @.str.99) #19
  unreachable

rbimpl_RB_TYPE_P_fastpath.exit.thread:            ; preds = %bb.d, %rbimpl_RB_TYPE_P_fastpath.exit
  store i64 3, ptr %i.a, align 8, !tbaa !17
  %i.ay = call i64 @rb_check_funcall(i64 noundef %0, i64 noundef 3601, i32 noundef 1, ptr noundef nonnull %i.a) #18 ; 2 uses
  %i.az = icmp eq i64 %i.ay, 36
  br i1 %i.az, label %bb.x, label %bb.p

bb.p:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.thread
  %i.ba = call i64 @rb_check_array_type(i64 noundef %i.ay) #18 ; 3 uses
  %i.bb = icmp eq i64 %i.ba, 4
  br i1 %i.bb, label %bb.x, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bc = call i64 @rb_ary_entry(i64 noundef %i.ba, i64 noundef 0) #21 ; 4 uses
  store i64 %i.bc, ptr %i.a, align 8, !tbaa !17
  %i.bd = call i64 @rb_ary_entry(i64 noundef %i.ba, i64 noundef 1) #21
  %i.be = trunc i64 %i.bc to i1
  br i1 %i.be, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.bf = ashr i64 %i.bc, 1
  br label %rb_num2long_inline.exit57

bb.s:                                             ; preds = %bb.q
  %i.bg = call i64 @rb_num2long(i64 noundef %i.bc) #18
  br label %rb_num2long_inline.exit57

rb_num2long_inline.exit57:                        ; preds = %bb.r, %bb.s
  %.0.i56 = phi i64 [ %i.bf, %bb.r ], [ %i.bg, %bb.s ] ; 3 uses
  %i.bh = icmp slt i64 %.0.i56, 0
  %or.cond10 = select i1 %i.b, i1 %i.bh, i1 false
  br i1 %or.cond10, label %bb.t, label %bb.u

bb.t:                                             ; preds = %rb_num2long_inline.exit57
  %i.bi = load i64, ptr @rb_eArgError, align 8, !tbaa !17
  call void (i64, ptr, ...) @rb_raise(i64 noundef %i.bi, ptr noundef nonnull @.str.99) #19
  unreachable

bb.u:                                             ; preds = %rb_num2long_inline.exit57
  %i.bj = call i64 (i64, i64, i32, ...) @rb_funcall(i64 noundef %i.bd, i64 noundef 42, i32 noundef 1, i64 noundef 2000000001) #18 ; 3 uses
  %i.bk = trunc i64 %i.bj to i1
  br i1 %i.bk, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.bl = ashr i64 %i.bj, 1
  br label %rb_num2long_inline.exit59

bb.w:                                             ; preds = %bb.u
  %i.bm = call i64 @rb_num2long(i64 noundef %i.bj) #18
  br label %rb_num2long_inline.exit59

bb.x:                                             ; preds = %bb.p, %rbimpl_RB_TYPE_P_fastpath.exit.thread
  %i.bn = select i1 %i.b, ptr @.str.98, ptr @.str.96
  %i.bo = load i64, ptr @rb_eTypeError, align 8, !tbaa !17
  %i.bp = call i64 @rb_obj_class(i64 noundef %0) #18
  call void (i64, ptr, ...) @rb_raise(i64 noundef %i.bo, ptr noundef nonnull @.str.101, i64 noundef %i.bp, ptr noundef nonnull %i.bn) #19
  unreachable

rb_num2long_inline.exit59:                        ; preds = %bb.w, %bb.v, %rb_num2long_inline.exit55, %bb.m, %rb_num2long_inline.exit
  %.sroa.0.0 = phi i64 [ %i.av, %rb_num2long_inline.exit55 ], [ %i.d, %rb_num2long_inline.exit ], [ %i.an, %bb.m ], [ %.0.i56, %bb.v ], [ %.0.i56, %bb.w ]
  %.sroa.9.1 = phi i64 [ 0, %rb_num2long_inline.exit55 ], [ 0, %rb_num2long_inline.exit ], [ %.sroa.9.0, %bb.m ], [ %i.bl, %bb.v ], [ %i.bm, %bb.w ]
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
  br i1 %i.d, label %.critedge.i.i, label %rbimpl_RB_TYPE_P_fastpath.exit.i.i, !prof !32

rbimpl_RB_TYPE_P_fastpath.exit.i.i:               ; preds = %bb.a
  %i.e = inttoptr i64 %0 to ptr                   ; 3 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !33
  %i.g = and i64 %i.f, 95
  %or.cond.not.i.i = icmp eq i64 %i.g, 76
  br i1 %or.cond.not.i.i, label %bb.b, label %.critedge.i.i, !prof !34

bb.b:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i.i
  %i.h = getelementptr i8, ptr %i.e, i64 24
  %i.i = load i64, ptr %i.h, align 8, !tbaa !23   ; 2 uses
  %i.j = and i64 %i.i, -2                         ; 2 uses
  %i.k = inttoptr i64 %i.j to ptr
  %i.l = trunc i64 %i.i to i1
  %i.m = getelementptr i8, ptr %i.e, i64 32       ; 2 uses
  br i1 %i.l, label %RTYPEDDATA_GET_DATA.exit.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !24
  br label %RTYPEDDATA_GET_DATA.exit.i.i

RTYPEDDATA_GET_DATA.exit.i.i:                     ; preds = %bb.c, %bb.b
  %i.o = phi ptr [ %i.n, %bb.c ], [ %i.m, %bb.b ] ; 2 uses
  %i.p = icmp eq i64 %i.j, ptrtoint (ptr @time_data_type to i64)
  br i1 %i.p, label %rbimpl_check_typeddata.exit.i, label %.preheader.i.i, !prof !18

.preheader.i.i:                                   ; preds = %RTYPEDDATA_GET_DATA.exit.i.i, %bb.d
  %.015.i.i = phi ptr [ %i.r, %bb.d ], [ %i.k, %RTYPEDDATA_GET_DATA.exit.i.i ] ; 2 uses
  %.not.i.i = icmp eq ptr %.015.i.i, null
  br i1 %.not.i.i, label %.critedge.i.i, label %bb.d

bb.d:                                             ; preds = %.preheader.i.i
  %i.q = getelementptr i8, ptr %.015.i.i, i64 48
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !39   ; 2 uses
  %i.s = icmp eq ptr %i.r, @time_data_type
  br i1 %i.s, label %rbimpl_check_typeddata.exit.i, label %.preheader.i.i, !llvm.loop !0

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
  %i.x = load i64, ptr @rb_eTypeError, align 8, !tbaa !17
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
  %i.ae = tail call i64 @time_gmtime(i64 noundef %0), !inline_history !2 ; 0 uses
  br label %time_get_tm.exit

bb.i:                                             ; preds = %bb.g
  %i.af = tail call fastcc i64 @time_fixoff(i64 noundef %0), !inline_history !2 ; 0 uses
  br label %time_get_tm.exit

bb.j:                                             ; preds = %bb.g
  %i.ag = tail call fastcc i64 @time_localtime(i64 noundef %0), !inline_history !2 ; 0 uses
  br label %time_get_tm.exit

time_get_tm.exit:                                 ; preds = %bb.j, %bb.i, %bb.h, %bb.f
  %i.ah = getelementptr i8, ptr %.1.i.i, i64 24
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !49
  br label %bb.k

bb.k:                                             ; preds = %rbimpl_check_typeddata.exit.i, %time_get_tm.exit
  %.0 = phi i64 [ %i.ai, %time_get_tm.exit ], [ 1, %rbimpl_check_typeddata.exit.i ]
end_hunk_0
