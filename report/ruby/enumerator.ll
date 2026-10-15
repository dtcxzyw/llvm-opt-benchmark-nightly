Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruby/original/enumerator?download=true
inline.NumInlined: 658
inline.NumDeleted: 103
begin_hunk_0_@yielder_yield:bb.a
  br label %rbimpl_check_typeddata.exit.i

rbimpl_check_typeddata.exit.i:                    ; preds = %bb.d, %.critedge.i.i, %RTYPEDDATA_GET_DATA.exit.i.i
  %.1.i.i = phi ptr [ %i.t, %.critedge.i.i ], [ %i.o, %RTYPEDDATA_GET_DATA.exit.i.i ], [ %i.o, %bb.d ] ; 2 uses
  %.not.i = icmp eq ptr %.1.i.i, null
  br i1 %.not.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %rbimpl_check_typeddata.exit.i
  %i.u = load i64, ptr %.1.i.i, align 8, !tbaa !71 ; 2 uses
  %i.v = icmp eq i64 %i.u, 36
  br i1 %i.v, label %bb.f, label %yielder_ptr.exit

bb.f:                                             ; preds = %bb.e, %rbimpl_check_typeddata.exit.i
  %i.w = load i64, ptr @rb_eArgError, align 8, !tbaa !14
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.w, ptr noundef nonnull @.str.140) #17
  unreachable

yielder_ptr.exit:                                 ; preds = %bb.e
  %i.x = tail call i32 @rb_keyword_given_p() #16
  %i.y = icmp ne i32 %i.x, 0
  %i.z = zext i1 %i.y to i32
  %i.aa = tail call i64 @rb_proc_call_kw(i64 noundef %i.u, i64 noundef %1, i32 noundef %i.z) #16
  ret i64 %i.aa
}

; Function Attrs: nounwind sspstrong uwtable
define internal noundef i64 @yielder_yield_push(i64 noundef returned %0, i64 noundef %1) #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 2 uses
  store i64 %1, ptr %i.a, align 8, !tbaa !14
  %i.b = icmp eq i64 %0, 0
  %i.c = and i64 %0, 7
  %i.d = icmp ne i64 %i.c, 0
  %i.e = or i1 %i.b, %i.d
  br i1 %i.e, label %.critedge.i.i, label %rbimpl_RB_TYPE_P_fastpath.exit.i.i, !prof !45

rbimpl_RB_TYPE_P_fastpath.exit.i.i:               ; preds = %bb.a
  %i.f = inttoptr i64 %0 to ptr                   ; 3 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !23
  %i.h = and i64 %i.g, 95
  %or.cond.not.i.i = icmp eq i64 %i.h, 76
  br i1 %or.cond.not.i.i, label %bb.b, label %.critedge.i.i, !prof !26

bb.b:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i.i
  %i.i = getelementptr i8, ptr %i.f, i64 24
  %i.j = load i64, ptr %i.i, align 8, !tbaa !18   ; 2 uses
  %i.k = and i64 %i.j, -2                         ; 2 uses
  %i.l = inttoptr i64 %i.k to ptr
  %i.m = trunc i64 %i.j to i1
  %i.n = getelementptr i8, ptr %i.f, i64 32       ; 2 uses
  br i1 %i.m, label %RTYPEDDATA_GET_DATA.exit.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !19
  br label %RTYPEDDATA_GET_DATA.exit.i.i

RTYPEDDATA_GET_DATA.exit.i.i:                     ; preds = %bb.c, %bb.b
  %i.p = phi ptr [ %i.o, %bb.c ], [ %i.n, %bb.b ] ; 2 uses
  %i.q = icmp eq i64 %i.k, ptrtoint (ptr @yielder_data_type to i64)
  br i1 %i.q, label %rbimpl_check_typeddata.exit.i, label %.preheader.i.i, !prof !27

.preheader.i.i:                                   ; preds = %RTYPEDDATA_GET_DATA.exit.i.i, %bb.d
  %.015.i.i = phi ptr [ %i.s, %bb.d ], [ %i.l, %RTYPEDDATA_GET_DATA.exit.i.i ] ; 2 uses
  %.not.i.i = icmp eq ptr %.015.i.i, null
  br i1 %.not.i.i, label %.critedge.i.i, label %bb.d

bb.d:                                             ; preds = %.preheader.i.i
  %i.r = getelementptr i8, ptr %.015.i.i, i64 48
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !32   ; 2 uses
  %i.t = icmp eq ptr %i.s, @yielder_data_type
  br i1 %i.t, label %rbimpl_check_typeddata.exit.i, label %.preheader.i.i, !llvm.loop !0

.critedge.i.i:                                    ; preds = %.preheader.i.i, %rbimpl_RB_TYPE_P_fastpath.exit.i.i, %bb.a
  %i.u = tail call ptr @rb_check_typeddata(i64 noundef %0, ptr noundef nonnull @yielder_data_type) #16
  br label %rbimpl_check_typeddata.exit.i

rbimpl_check_typeddata.exit.i:                    ; preds = %bb.d, %.critedge.i.i, %RTYPEDDATA_GET_DATA.exit.i.i
  %.1.i.i = phi ptr [ %i.u, %.critedge.i.i ], [ %i.p, %RTYPEDDATA_GET_DATA.exit.i.i ], [ %i.p, %bb.d ] ; 2 uses
  %.not.i = icmp eq ptr %.1.i.i, null
  br i1 %.not.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %rbimpl_check_typeddata.exit.i
  %i.v = load i64, ptr %.1.i.i, align 8, !tbaa !71 ; 2 uses
  %i.w = icmp eq i64 %i.v, 36
  br i1 %i.w, label %bb.f, label %yielder_ptr.exit

bb.f:                                             ; preds = %bb.e, %rbimpl_check_typeddata.exit.i
  %i.x = load i64, ptr @rb_eArgError, align 8, !tbaa !14
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.x, ptr noundef nonnull @.str.140) #17
  unreachable

yielder_ptr.exit:                                 ; preds = %bb.e
  %i.y = call i64 @rb_proc_call_with_block(i64 noundef %i.v, i32 noundef 1, ptr noundef nonnull %i.a, i64 noundef 4) #16 ; 0 uses
  ret i64 %0
}

; Function Attrs: nounwind sspstrong uwtable
define internal i64 @yielder_to_proc(i64 noundef %0) #0 {
bb.a:
  %i.a = load i64, ptr @sym_yield, align 8, !tbaa !14
  %i.b = tail call i64 @rb_obj_method(i64 noundef %0, i64 noundef %i.a) #16
  %i.c = tail call i64 (i64, i64, i32, ...) @rb_funcall(i64 noundef %i.b, i64 noundef 3329, i32 noundef 0) #16
  ret i64 %i.c
}

; Function Attrs: nounwind sspstrong uwtable
define internal i64 @producer_allocate(i64 noundef %0) #0 {
bb.a:
  %i.a = tail call i64 @rb_data_typed_object_zalloc(i64 noundef %0, i64 noundef 24, ptr noundef nonnull @producer_data_type) #16 ; 2 uses
  %i.b = inttoptr i64 %i.a to ptr                 ; 2 uses
  %i.c = getelementptr i8, ptr %i.b, i64 24
  %i.d = load i64, ptr %i.c, align 8, !tbaa !18
  %i.e = trunc i64 %i.d to i1
  %i.f = getelementptr i8, ptr %i.b, i64 32       ; 2 uses
  br i1 %i.e, label %RTYPEDDATA_GET_DATA.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !19
  br label %RTYPEDDATA_GET_DATA.exit

RTYPEDDATA_GET_DATA.exit:                         ; preds = %bb.a, %bb.b
  %i.h = phi ptr [ %i.g, %bb.b ], [ %i.f, %bb.a ] ; 3 uses
  store i64 36, ptr %i.h, align 8, !tbaa !73
  %i.i = getelementptr i8, ptr %i.h, i64 8
  store i64 36, ptr %i.i, align 8, !tbaa !74
  %i.j = getelementptr i8, ptr %i.h, i64 16
  store i64 4, ptr %i.j, align 8, !tbaa !75
  ret i64 %i.a
}

; Function Attrs: nounwind sspstrong uwtable
define internal i64 @producer_each(i64 noundef %0) #0 {
bb.a:
  tail call void @rb_need_block() #16
  %i.a = load i64, ptr @rb_eStopIteration, align 8, !tbaa !14
  %i.b = tail call i64 (ptr, i64, ptr, i64, ...) @rb_rescue2(ptr noundef nonnull @producer_each_i, i64 noundef %0, ptr noundef nonnull @producer_each_stop, i64 noundef 0, i64 noundef %i.a, i64 noundef 0) #16
  ret i64 %i.b
}

declare extern_weak void @rb_define_singleton_method(i64 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define internal range(i64 1, 0) i64 @enumerator_s_produce(i32 noundef %0, ptr nofree noundef readonly captures(none) %1, i64 %2) #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca [1 x i64], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #16
  %i.c = tail call i32 @rb_block_given_p() #16
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = load i64, ptr @rb_eArgError, align 8, !tbaa !14
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.d, ptr noundef nonnull @.str.143) #17
  unreachable

bb.c:                                             ; preds = %bb.a
  %.pr.i = load i64, ptr @enumerator_s_produce.rbimpl_id, align 8, !tbaa !14 ; 2 uses
  %.not4.i = icmp eq i64 %.pr.i, 0
  br i1 %.not4.i, label %.lr.ph.i, label %rb_scan_args_n_opt.exit

.lr.ph.i:                                         ; preds = %bb.c, %.lr.ph.i
  %i.e = tail call i64 @rb_intern2(ptr noundef nonnull @.str.20, i64 noundef 4) #16 ; 3 uses
  store i64 %i.e, ptr @enumerator_s_produce.rbimpl_id, align 8, !tbaa !14
  %.not.i5 = icmp eq i64 %i.e, 0
  br i1 %.not.i5, label %.lr.ph.i, label %rb_scan_args_n_opt.exit, !llvm.loop !1

rb_scan_args_n_opt.exit:                          ; preds = %.lr.ph.i, %bb.c
  %.lcssa.i = phi i64 [ %.pr.i, %bb.c ], [ %i.e, %.lr.ph.i ]
  store i64 %.lcssa.i, ptr %i.b, align 8, !tbaa !14
  %i.f = icmp sgt i32 %0, 0
  br i1 %i.f, label %bb.d, label %rb_scan_args_keyword_p.exit.thread

bb.d:                                             ; preds = %rb_scan_args_n_opt.exit
  %i.g = zext nneg i32 %0 to i64
  %i.h = getelementptr [8 x i8], ptr %1, i64 %i.g
  %i.i = getelementptr i8, ptr %i.h, i64 -8
  %i.j = load i64, ptr %i.i, align 8, !tbaa !14   ; 4 uses
  %i.k = icmp eq i64 %i.j, 0
  %i.l = and i64 %i.j, 7
  %i.m = icmp ne i64 %i.l, 0
  %i.n = or i1 %i.k, %i.m
  br i1 %i.n, label %.preheader.thread36, label %rb_scan_args_keyword_p.exit

rb_scan_args_keyword_p.exit:                      ; preds = %bb.d
  %i.o = inttoptr i64 %i.j to ptr
  %i.p = load i64, ptr %i.o, align 8, !tbaa !23
  %i.q = and i64 %i.p, 31
  %i.r = icmp eq i64 %i.q, 8
  br i1 %i.r, label %.preheader, label %.preheader.thread36

rb_scan_args_keyword_p.exit.thread:               ; preds = %rb_scan_args_n_opt.exit
  %i.s = icmp slt i32 %0, 0
  br i1 %i.s, label %bb.e, label %.preheader.thread

.preheader:                                       ; preds = %rb_scan_args_keyword_p.exit
  %i.t = tail call i64 @rb_hash_dup(i64 noundef %i.j) #16 ; 2 uses
  %i.u = add nsw i32 %0, -1                       ; 2 uses
  %.not13 = icmp eq i32 %i.u, 0
  br i1 %.not13, label %rb_scan_args_set.exit, label %.preheader.thread36

.preheader.thread36:                              ; preds = %rb_scan_args_keyword_p.exit, %bb.d, %.preheader
  %.1.i.ph41 = phi i64 [ %i.t, %.preheader ], [ 4, %bb.d ], [ 4, %rb_scan_args_keyword_p.exit ]
  %.193.i.ph40 = phi i32 [ %i.u, %.preheader ], [ %0, %bb.d ], [ %0, %rb_scan_args_keyword_p.exit ] ; 2 uses
  %i.v = load i64, ptr %1, align 8, !tbaa !14
  %i.w = icmp eq i32 %.193.i.ph40, 1
  br label %.preheader.thread

.preheader.thread:                                ; preds = %rb_scan_args_keyword_p.exit.thread, %.preheader.thread36
  %.193.i2634 = phi i32 [ %.193.i.ph40, %.preheader.thread36 ], [ 0, %rb_scan_args_keyword_p.exit.thread ]
  %.1.i2832 = phi i64 [ %.1.i.ph41, %.preheader.thread36 ], [ 4, %rb_scan_args_keyword_p.exit.thread ]
  %3 = phi i64 [ %i.v, %.preheader.thread36 ], [ 4, %rb_scan_args_keyword_p.exit.thread ]
  %.185.i.lcssa = phi i1 [ %i.w, %.preheader.thread36 ], [ true, %rb_scan_args_keyword_p.exit.thread ]
  br i1 %.185.i.lcssa, label %rb_scan_args_set.exit, label %bb.e

bb.e:                                             ; preds = %.preheader.thread, %rb_scan_args_keyword_p.exit.thread
  %.193.i27 = phi i32 [ %.193.i2634, %.preheader.thread ], [ %0, %rb_scan_args_keyword_p.exit.thread ]
  tail call void @rb_error_arity(i32 noundef %.193.i27, i32 noundef 0, i32 noundef 1) #17
  unreachable

rb_scan_args_set.exit:                            ; preds = %.preheader, %.preheader.thread
  %4 = phi i64 [ %3, %.preheader.thread ], [ 4, %.preheader ] ; 2 uses
  %.1.i283245 = phi i64 [ %.1.i2832, %.preheader.thread ], [ %i.t, %.preheader ] ; 2 uses
  %i.x = call i32 @rb_get_kwargs(i64 noundef %.1.i283245, ptr noundef nonnull %i.b, i32 noundef 0, i32 noundef 1, ptr noundef nonnull %i.a) #16 ; 0 uses
  %i.y = load i64, ptr %i.a, align 8, !tbaa !14   ; 13 uses
  switch i64 %i.y, label %bb.g [
    i64 36, label %bb.f
    i64 4, label %convert_to_feasible_size_value.exit
  ]

bb.f:                                             ; preds = %rb_scan_args_set.exit
  %i.z = call i64 @rb_float_new_in_heap(double noundef +inf) #16
  br label %convert_to_feasible_size_value.exit

bb.g:                                             ; preds = %rb_scan_args_set.exit
  %i.aa = call i32 @rb_respond_to(i64 noundef %i.y, i64 noundef 3473) #16
  %.not.i7 = icmp eq i32 %i.aa, 0
  br i1 %.not.i7, label %bb.h, label %convert_to_feasible_size_value.exit

bb.h:                                             ; preds = %bb.g
  %i.ab = and i64 %i.y, 3
  %i.ac = icmp eq i64 %i.ab, 2
  br i1 %i.ac, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ad = icmp eq i64 %i.y, 0
  %i.ae = and i64 %i.y, 7
  %i.af = icmp ne i64 %i.ae, 0
  %i.ag = or i1 %i.ad, %i.af
  br i1 %i.ag, label %RB_FLOAT_TYPE_P.exit.thread11.i, label %RB_FLOAT_TYPE_P.exit.i

RB_FLOAT_TYPE_P.exit.i:                           ; preds = %bb.i
  %i.ah = inttoptr i64 %i.y to ptr                ; 2 uses
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !23
  %i.aj = and i64 %i.ai, 31
  %i.ak = icmp eq i64 %i.aj, 4
  br i1 %i.ak, label %bb.l, label %RB_FLOAT_TYPE_P.exit.thread11.i

bb.j:                                             ; preds = %bb.h
  %.not.i.i.i = icmp eq i64 %i.y, -9223372036854775806
  br i1 %.not.i.i.i, label %RB_FLOAT_TYPE_P.exit.thread11.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %.neg.i.i.i = ashr i64 %i.y, 63
  %i.al = add nsw i64 %.neg.i.i.i, 2
  %i.am = and i64 %i.y, -4
  %i.an = or i64 %i.al, %i.am                     ; 2 uses
  %i.ao = call noundef i64 @llvm.fshl.i64(i64 range(i64 1, 0) %i.an, i64 range(i64 1, 0) %i.an, i64 61)
  %i.ap = bitcast i64 %i.ao to double
  br label %rb_float_value_inline.exit.i

bb.l:                                             ; preds = %RB_FLOAT_TYPE_P.exit.i
  %i.aq = getelementptr i8, ptr %i.ah, i64 16
  %i.ar = load double, ptr %i.aq, align 8, !tbaa !61
  br label %rb_float_value_inline.exit.i

rb_float_value_inline.exit.i:                     ; preds = %bb.l, %bb.k
  %.0.i9.i = phi double [ %i.ar, %bb.l ], [ %i.ap, %bb.k ]
  %i.as = fcmp oeq double %.0.i9.i, +inf
  br i1 %i.as, label %convert_to_feasible_size_value.exit, label %RB_FLOAT_TYPE_P.exit.thread11.i

RB_FLOAT_TYPE_P.exit.thread11.i:                  ; preds = %rb_float_value_inline.exit.i, %bb.j, %RB_FLOAT_TYPE_P.exit.i, %bb.i
  %i.at = call i64 @rb_to_int(i64 noundef %i.y) #16
  br label %convert_to_feasible_size_value.exit

convert_to_feasible_size_value.exit:              ; preds = %rb_scan_args_set.exit, %RB_FLOAT_TYPE_P.exit.thread11.i, %rb_float_value_inline.exit.i, %bb.g, %bb.f
  %i.au = phi i64 [ %i.z, %bb.f ], [ %i.at, %RB_FLOAT_TYPE_P.exit.thread11.i ], [ %i.y, %rb_scan_args_set.exit ], [ %i.y, %bb.g ], [ %i.y, %rb_float_value_inline.exit.i ]
  store i64 %i.au, ptr %i.a, align 8, !tbaa !14
  switch i32 %0, label %bb.o [
    i32 0, label %bb.n
    i32 1, label %bb.m
  ]

bb.m:                                             ; preds = %convert_to_feasible_size_value.exit
  %i.av = icmp eq i64 %.1.i283245, 4
  br i1 %i.av, label %bb.o, label %bb.n

bb.n:                                             ; preds = %convert_to_feasible_size_value.exit, %bb.m
  br label %bb.o

bb.o:                                             ; preds = %convert_to_feasible_size_value.exit, %bb.n, %bb.m
  %i.aw = phi i64 [ %4, %convert_to_feasible_size_value.exit ], [ 36, %bb.n ], [ %4, %bb.m ] ; 4 uses
  %i.ax = load i64, ptr @rb_cEnumProducer, align 8, !tbaa !14
  %i.ay = call i64 @rb_data_typed_object_zalloc(i64 noundef %i.ax, i64 noundef 24, ptr noundef nonnull @producer_data_type) #16 ; 8 uses
  %i.az = inttoptr i64 %i.ay to ptr               ; 3 uses
  %i.ba = getelementptr i8, ptr %i.az, i64 24     ; 2 uses
  %i.bb = load i64, ptr %i.ba, align 8, !tbaa !18
  %i.bc = trunc i64 %i.bb to i1
  %i.bd = getelementptr i8, ptr %i.az, i64 32     ; 4 uses
  br i1 %i.bc, label %producer_allocate.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !19
  br label %producer_allocate.exit

producer_allocate.exit:                           ; preds = %bb.o, %bb.p
  %i.bf = phi ptr [ %i.be, %bb.p ], [ %i.bd, %bb.o ] ; 3 uses
  store i64 36, ptr %i.bf, align 8, !tbaa !73
  %i.bg = getelementptr i8, ptr %i.bf, i64 8
  store i64 36, ptr %i.bg, align 8, !tbaa !74
  %i.bh = getelementptr i8, ptr %i.bf, i64 16
  store i64 4, ptr %i.bh, align 8, !tbaa !75
  %i.bi = call i64 @rb_block_proc() #16           ; 4 uses
  %i.bj = load i64, ptr %i.a, align 8, !tbaa !14  ; 4 uses
  %i.bk = icmp eq i64 %i.ay, 0
  %i.bl = and i64 %i.ay, 7
  %i.bm = icmp ne i64 %i.bl, 0
  %i.bn = or i1 %i.bk, %i.bm
  br i1 %i.bn, label %.critedge.i.i, label %rbimpl_RB_TYPE_P_fastpath.exit.i.i, !prof !45

rbimpl_RB_TYPE_P_fastpath.exit.i.i:               ; preds = %producer_allocate.exit
  %i.bo = load i64, ptr %i.az, align 8, !tbaa !23
  %i.bp = and i64 %i.bo, 95
  %or.cond.not.i.i = icmp eq i64 %i.bp, 76
  br i1 %or.cond.not.i.i, label %bb.q, label %.critedge.i.i, !prof !26

bb.q:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i.i
  %i.bq = load i64, ptr %i.ba, align 8, !tbaa !18 ; 2 uses
  %i.br = and i64 %i.bq, -2                       ; 2 uses
  %i.bs = inttoptr i64 %i.br to ptr
  %i.bt = trunc i64 %i.bq to i1
  br i1 %i.bt, label %RTYPEDDATA_GET_DATA.exit.i.i, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bu = load ptr, ptr %i.bd, align 8, !tbaa !19
  br label %RTYPEDDATA_GET_DATA.exit.i.i

RTYPEDDATA_GET_DATA.exit.i.i:                     ; preds = %bb.r, %bb.q
  %i.bv = phi ptr [ %i.bu, %bb.r ], [ %i.bd, %bb.q ] ; 2 uses
  %i.bw = icmp eq i64 %i.br, ptrtoint (ptr @producer_data_type to i64)
  br i1 %i.bw, label %rbimpl_check_typeddata.exit.i, label %.preheader.i.i, !prof !27

.preheader.i.i:                                   ; preds = %RTYPEDDATA_GET_DATA.exit.i.i, %bb.s
  %.015.i.i = phi ptr [ %i.by, %bb.s ], [ %i.bs, %RTYPEDDATA_GET_DATA.exit.i.i ] ; 2 uses
  %.not.i.i = icmp eq ptr %.015.i.i, null
  br i1 %.not.i.i, label %.critedge.i.i, label %bb.s

bb.s:                                             ; preds = %.preheader.i.i
  %i.bx = getelementptr i8, ptr %.015.i.i, i64 48
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !32 ; 2 uses
  %i.bz = icmp eq ptr %i.by, @producer_data_type
  br i1 %i.bz, label %rbimpl_check_typeddata.exit.i, label %.preheader.i.i, !llvm.loop !0

.critedge.i.i:                                    ; preds = %.preheader.i.i, %rbimpl_RB_TYPE_P_fastpath.exit.i.i, %producer_allocate.exit
  %i.ca = call ptr @rb_check_typeddata(i64 noundef %i.ay, ptr noundef nonnull @producer_data_type) #16
  br label %rbimpl_check_typeddata.exit.i

rbimpl_check_typeddata.exit.i:                    ; preds = %bb.s, %.critedge.i.i, %RTYPEDDATA_GET_DATA.exit.i.i
  %.1.i.i = phi ptr [ %i.ca, %.critedge.i.i ], [ %i.bv, %RTYPEDDATA_GET_DATA.exit.i.i ], [ %i.bv, %bb.s ] ; 4 uses
  %.not.i9 = icmp eq ptr %.1.i.i, null
  br i1 %.not.i9, label %bb.t, label %bb.u

bb.t:                                             ; preds = %rbimpl_check_typeddata.exit.i
  %i.cb = load i64, ptr @rb_eArgError, align 8, !tbaa !14
  call void (i64, ptr, ...) @rb_raise(i64 noundef %i.cb, ptr noundef nonnull @.str.145) #17
  unreachable

bb.u:                                             ; preds = %rbimpl_check_typeddata.exit.i
  store i64 %i.aw, ptr %.1.i.i, align 8, !tbaa !14
  %i.cc = icmp eq i64 %i.aw, 0
  %i.cd = and i64 %i.aw, 7
  %i.ce = icmp ne i64 %i.cd, 0
  %i.cf = or i1 %i.cc, %i.ce
  br i1 %i.cf, label %rb_obj_write.exit.i, label %bb.v

bb.v:                                             ; preds = %bb.u
  call void @rb_gc_writebarrier(i64 noundef %i.ay, i64 noundef %i.aw) #16
  br label %rb_obj_write.exit.i

rb_obj_write.exit.i:                              ; preds = %bb.v, %bb.u
  %i.cg = getelementptr i8, ptr %.1.i.i, i64 8
  store i64 %i.bi, ptr %i.cg, align 8, !tbaa !14
  %i.ch = icmp eq i64 %i.bi, 0
  %i.ci = and i64 %i.bi, 7
  %i.cj = icmp ne i64 %i.ci, 0
  %i.ck = or i1 %i.ch, %i.cj
  br i1 %i.ck, label %rb_obj_write.exit11.i, label %bb.w

bb.w:                                             ; preds = %rb_obj_write.exit.i
  call void @rb_gc_writebarrier(i64 noundef %i.ay, i64 noundef %i.bi) #16
  br label %rb_obj_write.exit11.i

rb_obj_write.exit11.i:                            ; preds = %bb.w, %rb_obj_write.exit.i
  %i.cl = getelementptr i8, ptr %.1.i.i, i64 16
  store i64 %i.bj, ptr %i.cl, align 8, !tbaa !14
  %i.cm = icmp eq i64 %i.bj, 0
  %i.cn = and i64 %i.bj, 7
  %i.co = icmp ne i64 %i.cn, 0
  %i.cp = or i1 %i.cm, %i.co
  br i1 %i.cp, label %producer_init.exit, label %bb.x

bb.x:                                             ; preds = %rb_obj_write.exit11.i
  call void @rb_gc_writebarrier(i64 noundef %i.ay, i64 noundef %i.bj) #16
  br label %producer_init.exit

producer_init.exit:                               ; preds = %rb_obj_write.exit11.i, %bb.x
  %i.cq = load i64, ptr @sym_each, align 8, !tbaa !14
  %i.cr = call i64 @rb_enumeratorize_with_size_kw(i64 noundef %i.ay, i64 noundef %i.cq, i32 noundef 0, ptr noundef null, ptr noundef nonnull @producer_size, i32 noundef 0)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  ret i64 %i.cr
}

; Function Attrs: nounwind sspstrong uwtable
define internal i64 @enum_chain_allocate(i64 noundef %0) #0 {
bb.a:
  %i.a = tail call i64 @rb_data_typed_object_zalloc(i64 noundef %0, i64 noundef 16, ptr noundef nonnull @enum_chain_data_type) #16 ; 2 uses
  %i.b = inttoptr i64 %i.a to ptr                 ; 2 uses
  %i.c = getelementptr i8, ptr %i.b, i64 24
  %i.d = load i64, ptr %i.c, align 8, !tbaa !18
  %i.e = trunc i64 %i.d to i1
  %i.f = getelementptr i8, ptr %i.b, i64 32       ; 2 uses
  br i1 %i.e, label %RTYPEDDATA_GET_DATA.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !19
  br label %RTYPEDDATA_GET_DATA.exit

RTYPEDDATA_GET_DATA.exit:                         ; preds = %bb.a, %bb.b
  %i.h = phi ptr [ %i.g, %bb.b ], [ %i.f, %bb.a ] ; 2 uses
  store i64 36, ptr %i.h, align 8, !tbaa !77
  %i.i = getelementptr i8, ptr %i.h, i64 8
  store i64 -1, ptr %i.i, align 8, !tbaa !78
  ret i64 %i.a
}

; Function Attrs: nounwind sspstrong uwtable
define internal range(i64 1, 0) i64 @enum_chain_initialize(i64 noundef returned %0, i64 noundef %1) #0 {
bb.a:
  %i.a = icmp ne i64 %0, 0
  %i.b = and i64 %0, 7
  %i.c = icmp eq i64 %i.b, 0
  %.not3.i.i = and i1 %i.a, %i.c
  br i1 %.not3.i.i, label %RB_OBJ_FROZEN.exit.i, label %RB_OBJ_FROZEN.exit.thread.i, !prof !22

RB_OBJ_FROZEN.exit.i:                             ; preds = %bb.a
  %i.d = inttoptr i64 %0 to ptr                   ; 4 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !23   ; 4 uses
  %i.f = and i64 %i.e, 2048
  %.not.i = icmp eq i64 %i.f, 0
  br i1 %.not.i, label %rbimpl_RB_TYPE_P_fastpath.exit.i, label %RB_OBJ_FROZEN.exit.thread.i, !prof !24

RB_OBJ_FROZEN.exit.thread.i:                      ; preds = %RB_OBJ_FROZEN.exit.i, %bb.a
  tail call void @rb_error_frozen_object(i64 noundef %0) #17
  unreachable

rbimpl_RB_TYPE_P_fastpath.exit.i:                 ; preds = %RB_OBJ_FROZEN.exit.i
  %i.g = and i64 %i.e, 31
  %i.h = icmp ne i64 %i.g, 5
  %i.i = and i64 %i.e, 49152
  %.not8.i = icmp eq i64 %i.i, 0
  %or.cond.i = or i1 %i.h, %.not8.i
  br i1 %or.cond.i, label %rbimpl_RB_TYPE_P_fastpath.exit.i7, label %bb.b, !prof !25

bb.b:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i
  tail call void @rb_str_modify(i64 noundef %0) #16
  %.pre = load i64, ptr %i.d, align 8, !tbaa !23
  br label %rbimpl_RB_TYPE_P_fastpath.exit.i7

rbimpl_RB_TYPE_P_fastpath.exit.i7:                ; preds = %bb.b, %rbimpl_RB_TYPE_P_fastpath.exit.i
  %i.j = phi i64 [ %.pre, %bb.b ], [ %i.e, %rbimpl_RB_TYPE_P_fastpath.exit.i ]
  %i.k = and i64 %i.j, 95
  %or.cond.not.i = icmp eq i64 %i.k, 76
  br i1 %or.cond.not.i, label %bb.c, label %.critedge.i, !prof !26

bb.c:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i7
  %i.l = getelementptr i8, ptr %i.d, i64 24
  %i.m = load i64, ptr %i.l, align 8, !tbaa !18   ; 2 uses
  %i.n = and i64 %i.m, -2                         ; 2 uses
  %i.o = inttoptr i64 %i.n to ptr
  %i.p = trunc i64 %i.m to i1
  %i.q = getelementptr i8, ptr %i.d, i64 32       ; 2 uses
  br i1 %i.p, label %RTYPEDDATA_GET_DATA.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !19
  br label %RTYPEDDATA_GET_DATA.exit.i

RTYPEDDATA_GET_DATA.exit.i:                       ; preds = %bb.d, %bb.c
  %i.s = phi ptr [ %i.r, %bb.d ], [ %i.q, %bb.c ] ; 2 uses
  %i.t = icmp eq i64 %i.n, ptrtoint (ptr @enum_chain_data_type to i64)
  br i1 %i.t, label %rbimpl_check_typeddata.exit, label %.preheader.i, !prof !27
end_hunk_0
