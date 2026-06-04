inline.NumInlined: 295
inline.NumDeleted: 97
begin_hunk_0_@location_inspect_m:bb.a
  %i.c = icmp ne i64 %i.b, 0
  %i.d = or i1 %i.a, %i.c
  br i1 %i.d, label %.critedge.i.i, label %rbimpl_RB_TYPE_P_fastpath.exit.i.i, !prof !50

rbimpl_RB_TYPE_P_fastpath.exit.i.i:               ; preds = %bb.a
  %i.e = inttoptr i64 %0 to ptr                   ; 3 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !44
  %i.g = and i64 %i.f, 95
  %or.cond.not.i.i = icmp eq i64 %i.g, 76
  br i1 %or.cond.not.i.i, label %bb.b, label %.critedge.i.i, !prof !51

bb.b:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i.i
  %i.h = getelementptr i8, ptr %i.e, i64 24
  %i.i = load i64, ptr %i.h, align 8, !tbaa !52   ; 2 uses
  %i.j = and i64 %i.i, -2                         ; 2 uses
  %i.k = inttoptr i64 %i.j to ptr
  %i.l = trunc i64 %i.i to i1
  %i.m = getelementptr i8, ptr %i.e, i64 32       ; 2 uses
  br i1 %i.l, label %RTYPEDDATA_GET_DATA.exit.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !54
  br label %RTYPEDDATA_GET_DATA.exit.i.i

RTYPEDDATA_GET_DATA.exit.i.i:                     ; preds = %bb.c, %bb.b
  %i.o = phi ptr [ %i.n, %bb.c ], [ %i.m, %bb.b ] ; 2 uses
  %i.p = icmp eq i64 %i.j, ptrtoint (ptr @location_data_type to i64)
  br i1 %i.p, label %location_ptr.exit, label %.preheader.i.i, !prof !55

.preheader.i.i:                                   ; preds = %RTYPEDDATA_GET_DATA.exit.i.i, %bb.d
  %.016.i.i = phi ptr [ %i.r, %bb.d ], [ %i.k, %RTYPEDDATA_GET_DATA.exit.i.i ] ; 2 uses
  %.not.i.i = icmp eq ptr %.016.i.i, null
  br i1 %.not.i.i, label %.critedge.i.i, label %bb.d

bb.d:                                             ; preds = %.preheader.i.i
  %i.q = getelementptr i8, ptr %.016.i.i, i64 48
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !56   ; 2 uses
  %i.s = icmp eq ptr %i.r, @location_data_type
  br i1 %i.s, label %location_ptr.exit, label %.preheader.i.i, !llvm.loop !61

.critedge.i.i:                                    ; preds = %.preheader.i.i, %rbimpl_RB_TYPE_P_fastpath.exit.i.i, %bb.a
  %i.t = tail call ptr @rb_check_typeddata(i64 noundef %0, ptr noundef nonnull @location_data_type) #7
  br label %location_ptr.exit

location_ptr.exit:                                ; preds = %bb.d, %RTYPEDDATA_GET_DATA.exit.i.i, %.critedge.i.i
  %.1.i.i = phi ptr [ %i.t, %.critedge.i.i ], [ %i.o, %RTYPEDDATA_GET_DATA.exit.i.i ], [ %i.o, %bb.d ]
  %i.u = load ptr, ptr %.1.i.i, align 8, !tbaa !63
  %i.v = tail call fastcc i64 @location_to_str(ptr noundef %i.u)
  %i.w = tail call i64 @rb_str_inspect(i64 noundef %i.v) #7
  ret i64 %i.w
}

declare extern_weak void @rb_define_global_function(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define internal i64 @rb_f_caller(i32 noundef %0, ptr noundef readonly captures(none) %1, i64 %2) #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca ptr, align 8                      ; 5 uses
  %i.e = alloca ptr, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.f = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @ruby_current_ec)
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !100
  store volatile ptr %i.g, ptr %i.e, align 8, !tbaa !100
  %.0..0..0..0..0..0..i = load volatile ptr, ptr %i.e, align 8, !tbaa !100 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #7
  %i.h = call fastcc i64 @ec_backtrace_range(ptr noundef readonly %.0..0..0..0..0..0..i, i32 noundef %0, ptr noundef readonly %1, i32 noundef 1, i32 noundef 1, ptr noundef %i.a) ; 2 uses
  %i.i = icmp slt i64 %i.h, 0
  br i1 %i.i, label %ec_backtrace_to_ary.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = load i64, ptr %i.a, align 8, !tbaa !17   ; 2 uses
  %i.k = icmp eq i64 %i.j, 0
  br i1 %i.k, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.l = tail call i64 @rb_ary_new() #7
  br label %ec_backtrace_to_ary.exit

bb.d:                                             ; preds = %bb.b
  %i.m = call fastcc i64 @rb_ec_partial_backtrace_object(ptr noundef readonly %.0..0..0..0..0..0..i, i64 noundef %i.h, i64 noundef %i.j, ptr noundef nonnull %i.c, i1 noundef zeroext false, i1 noundef zeroext false) ; 2 uses
  store i64 %i.m, ptr %i.b, align 8, !tbaa !17
  %i.n = load i32, ptr %i.c, align 4, !tbaa !7
  %.not.i = icmp eq i32 %i.n, 0
  br i1 %.not.i, label %bb.e, label %ec_backtrace_to_ary.exit

bb.e:                                             ; preds = %bb.d
  %i.o = call fastcc i64 @backtrace_to_str_ary(i64 noundef %i.m)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #7
  store ptr %i.b, ptr %i.d, align 8, !tbaa !93
  call void asm sideeffect "", "*m,~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(ptr) %i.d) #7, !srcloc !150
  %i.p = load ptr, ptr %i.d, align 8, !tbaa !93
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #7
  %i.q = load volatile i64, ptr %i.p, align 8, !tbaa !17 ; 0 uses
  br label %ec_backtrace_to_ary.exit

ec_backtrace_to_ary.exit:                         ; preds = %bb.a, %bb.c, %bb.d, %bb.e
  %.0.i = phi i64 [ %i.o, %bb.e ], [ %i.l, %bb.c ], [ 4, %bb.a ], [ 4, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  ret i64 %.0.i
}

; Function Attrs: nounwind sspstrong uwtable
define internal i64 @rb_f_caller_locations(i32 noundef %0, ptr noundef readonly captures(none) %1, i64 %2) #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca ptr, align 8                      ; 5 uses
  %i.e = alloca ptr, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.f = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @ruby_current_ec)
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !100
  store volatile ptr %i.g, ptr %i.e, align 8, !tbaa !100
  %.0..0..0..0..0..0..i = load volatile ptr, ptr %i.e, align 8, !tbaa !100 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #7
  %i.h = call fastcc i64 @ec_backtrace_range(ptr noundef readonly %.0..0..0..0..0..0..i, i32 noundef %0, ptr noundef readonly %1, i32 noundef 1, i32 noundef 1, ptr noundef %i.a) ; 2 uses
  %i.i = icmp slt i64 %i.h, 0
  br i1 %i.i, label %ec_backtrace_to_ary.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = load i64, ptr %i.a, align 8, !tbaa !17   ; 2 uses
  %i.k = icmp eq i64 %i.j, 0
  br i1 %i.k, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.l = tail call i64 @rb_ary_new() #7
  br label %ec_backtrace_to_ary.exit

bb.d:                                             ; preds = %bb.b
  %i.m = call fastcc i64 @rb_ec_partial_backtrace_object(ptr noundef readonly %.0..0..0..0..0..0..i, i64 noundef %i.h, i64 noundef %i.j, ptr noundef nonnull %i.c, i1 noundef zeroext false, i1 noundef zeroext false) ; 2 uses
  store i64 %i.m, ptr %i.b, align 8, !tbaa !17
  %i.n = load i32, ptr %i.c, align 4, !tbaa !7
  %.not.i = icmp eq i32 %i.n, 0
  br i1 %.not.i, label %bb.e, label %ec_backtrace_to_ary.exit

bb.e:                                             ; preds = %bb.d
  %i.o = call fastcc i64 @backtrace_to_location_ary(i64 noundef %i.m)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #7
  store ptr %i.b, ptr %i.d, align 8, !tbaa !93
  call void asm sideeffect "", "*m,~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(ptr) %i.d) #7, !srcloc !150
  %i.p = load ptr, ptr %i.d, align 8, !tbaa !93
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #7
  %i.q = load volatile i64, ptr %i.p, align 8, !tbaa !17 ; 0 uses
  br label %ec_backtrace_to_ary.exit

ec_backtrace_to_ary.exit:                         ; preds = %bb.a, %bb.c, %bb.d, %bb.e
  %.0.i = phi i64 [ %i.o, %bb.e ], [ %i.l, %bb.c ], [ 4, %bb.a ], [ 4, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  ret i64 %.0.i
}

; Function Attrs: nounwind sspstrong uwtable
define internal noundef i64 @each_caller_location(i32 noundef %0, ptr noundef readonly captures(none) %1, i64 %2) #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.c = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @ruby_current_ec)
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !100
  store volatile ptr %i.d, ptr %i.a, align 8, !tbaa !100
  %.0..0..0..0..0..0..i = load volatile ptr, ptr %i.a, align 8, !tbaa !100 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #7
  %i.e = call fastcc i64 @ec_backtrace_range(ptr noundef %.0..0..0..0..0..0..i, i32 noundef %0, ptr noundef %1, i32 noundef 1, i32 noundef 1, ptr noundef %i.b) ; 2 uses
  %i.f = icmp sgt i64 %i.e, -1
  %i.g = load i64, ptr %i.b, align 8              ; 2 uses
  %i.h = icmp ne i64 %i.g, 0
  %or.cond = select i1 %i.f, i1 %i.h, i1 false
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = tail call fastcc i64 @rb_ec_partial_backtrace_object(ptr noundef %.0..0..0..0..0..0..i, i64 noundef %i.e, i64 noundef %i.g, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext true) ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #7
  ret i64 4
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @rb_debug_inspector_open(ptr noundef readonly captures(none) %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %i.c = alloca ptr, align 8                      ; 4 uses
  %2 = alloca %struct.rb_debug_inspector_struct, align 8 ; 7 uses
  %i.d = alloca i64, align 8                      ; 4 uses
  %i.e = alloca ptr, align 8                      ; 6 uses
  %3 = alloca %struct.rb_vm_tag, align 8          ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.f = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @ruby_current_ec)
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !100
  store volatile ptr %i.g, ptr %i.c, align 8, !tbaa !100
  %.0..0..0..0..0..0..i = load volatile ptr, ptr %i.c, align 8, !tbaa !100 ; 10 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  tail call void @rb_vm_stack_to_heap(ptr noundef %.0..0..0..0..0..0..i) #7
  store ptr %.0..0..0..0..0..0..i, ptr %2, align 8, !tbaa !153
  %i.h = getelementptr i8, ptr %.0..0..0..0..0..0..i, i64 16 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !71
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %i.i, ptr %i.j, align 8, !tbaa !155
  %i.k = tail call i64 @rb_ary_new() #7           ; 2 uses
  %i.l = load ptr, ptr %i.h, align 8, !tbaa !71   ; 2 uses
  %.val.i.i = load ptr, ptr %.0..0..0..0..0..0..i, align 8, !tbaa !81
  %i.m = getelementptr i8, ptr %.0..0..0..0..0..0..i, i64 8 ; 2 uses
  %.val34.i.i = load i64, ptr %i.m, align 8, !tbaa !82
  %i.n = getelementptr [8 x i8], ptr %.val.i.i, i64 %.val34.i.i ; 2 uses
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %.loopexit.sink.split.i.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.p = getelementptr i8, ptr %i.n, i64 -112     ; 3 uses
  %i.q = icmp ult ptr %i.p, %i.l
  br i1 %i.q, label %.loopexit.sink.split.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.r = ptrtoint ptr %i.p to i64
  %i.s = ptrtoint ptr %i.l to i64
  %i.t = sub i64 %i.r, %i.s                       ; 2 uses
  %i.u = sdiv exact i64 %i.t, 56                  ; 2 uses
  %i.v = mul nsw i64 %i.u, 24
  %i.w = add nsw i64 %i.v, 48
  %i.x = load i64, ptr @rb_cBacktrace, align 8, !tbaa !17
  %i.y = tail call i64 @rb_data_typed_object_zalloc(i64 noundef %i.x, i64 noundef %i.w, ptr noundef nonnull @backtrace_data_type) #7 ; 11 uses
  %i.z = icmp eq i64 %i.y, 0
  %i.aa = and i64 %i.y, 7
  %i.ab = icmp ne i64 %i.aa, 0
  %i.ac = or i1 %i.z, %i.ab                       ; 3 uses
  br i1 %i.ac, label %.critedge.i.i.i27.i, label %rbimpl_RB_TYPE_P_fastpath.exit.i.i.i25.i, !prof !50

rbimpl_RB_TYPE_P_fastpath.exit.i.i.i25.i:         ; preds = %bb.c
  %i.ad = inttoptr i64 %i.y to ptr                ; 3 uses
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !44
  %i.af = and i64 %i.ae, 95
  %or.cond.not.i.i.i26.i = icmp eq i64 %i.af, 76
  br i1 %or.cond.not.i.i.i26.i, label %bb.d, label %.critedge.i.i.i27.i, !prof !51

bb.d:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i.i.i25.i
  %i.ag = getelementptr i8, ptr %i.ad, i64 24
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !52 ; 2 uses
  %i.ai = and i64 %i.ah, -2                       ; 2 uses
  %i.aj = inttoptr i64 %i.ai to ptr
  %i.ak = trunc i64 %i.ah to i1
  %i.al = getelementptr i8, ptr %i.ad, i64 32     ; 2 uses
  br i1 %i.ak, label %RTYPEDDATA_GET_DATA.exit.i.i.i29.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !54
  br label %RTYPEDDATA_GET_DATA.exit.i.i.i29.i

RTYPEDDATA_GET_DATA.exit.i.i.i29.i:               ; preds = %bb.e, %bb.d
  %i.an = phi ptr [ %i.am, %bb.e ], [ %i.al, %bb.d ] ; 2 uses
  %i.ao = icmp eq i64 %i.ai, ptrtoint (ptr @backtrace_data_type to i64)
  br i1 %i.ao, label %collect_caller_bindings_init.exit33.i, label %.preheader.i.i.i30.i, !prof !55

.preheader.i.i.i30.i:                             ; preds = %RTYPEDDATA_GET_DATA.exit.i.i.i29.i, %bb.f
  %.016.i.i.i31.i = phi ptr [ %i.aq, %bb.f ], [ %i.aj, %RTYPEDDATA_GET_DATA.exit.i.i.i29.i ] ; 2 uses
  %.not.i.i.i32.i = icmp eq ptr %.016.i.i.i31.i, null
  br i1 %.not.i.i.i32.i, label %.critedge.i.i.i27.i, label %bb.f

bb.f:                                             ; preds = %.preheader.i.i.i30.i
  %i.ap = getelementptr i8, ptr %.016.i.i.i31.i, i64 48
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !56 ; 2 uses
  %i.ar = icmp eq ptr %i.aq, @backtrace_data_type
  br i1 %i.ar, label %collect_caller_bindings_init.exit33.i, label %.preheader.i.i.i30.i, !llvm.loop !61

.critedge.i.i.i27.i:                              ; preds = %.preheader.i.i.i30.i, %rbimpl_RB_TYPE_P_fastpath.exit.i.i.i25.i, %bb.c
  %i.as = tail call ptr @rb_check_typeddata(i64 noundef %i.y, ptr noundef nonnull @backtrace_data_type) #7
  br label %collect_caller_bindings_init.exit33.i

collect_caller_bindings_init.exit33.i:            ; preds = %bb.f, %.critedge.i.i.i27.i, %RTYPEDDATA_GET_DATA.exit.i.i.i29.i
  %.1.i.i.i28.i = phi ptr [ %i.as, %.critedge.i.i.i27.i ], [ %i.an, %RTYPEDDATA_GET_DATA.exit.i.i.i29.i ], [ %i.an, %bb.f ] ; 5 uses
  %i.at = icmp sgt i64 %i.t, -56
  br i1 %i.at, label %.lr.ph.i.preheader.i, label %backtrace_each.exit.i

.lr.ph.i.preheader.i:                             ; preds = %collect_caller_bindings_init.exit33.i
  %i.au = getelementptr i8, ptr %.1.i.i.i28.i, i64 24 ; 2 uses
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.u, %.lr.ph.i.preheader.i
  %.036.i.i = phi ptr [ %i.ep, %bb.u ], [ %i.p, %.lr.ph.i.preheader.i ] ; 13 uses
  %.02835.i.i = phi i64 [ %i.eo, %bb.u ], [ 0, %.lr.ph.i.preheader.i ] ; 2 uses
  %i.av = getelementptr i8, ptr %.036.i.i, i64 16 ; 3 uses
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !18
  %.not.i.i = icmp eq ptr %i.aw, null
  br i1 %.not.i.i, label %bb.o, label %bb.g

bb.g:                                             ; preds = %.lr.ph.i.i
  %i.ax = load ptr, ptr %.036.i.i, align 8, !tbaa !19
  %.not33.i.i = icmp eq ptr %i.ax, null
  br i1 %.not33.i.i, label %bb.u, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ay = call i64 @rb_ary_new_capa(i64 noundef 6) #7 ; 7 uses
  %i.az = getelementptr i8, ptr %.036.i.i, i64 24
  %i.ba = load i64, ptr %i.az, align 8, !tbaa !156
  call void @rb_ary_store(i64 noundef %i.ay, i64 noundef 0, i64 noundef %i.ba) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  %i.bb = call i32 @rb_vm_control_frame_id_and_class(ptr noundef nonnull %.036.i.i, ptr noundef null, ptr noundef null, ptr noundef nonnull %i.a) #7
  %.not.i.i16.i = icmp eq i32 %i.bb, 0
  br i1 %.not.i.i16.i, label %get_klass.exit.i18.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bc = load i64, ptr %i.a, align 8, !tbaa !17  ; 5 uses
  %i.bd = icmp eq i64 %i.bc, 0
  %i.be = and i64 %i.bc, 7
  %i.bf = icmp ne i64 %i.be, 0
  %i.bg = or i1 %i.bd, %i.bf
  br i1 %i.bg, label %get_klass.exit.i18.i, label %rbimpl_RB_TYPE_P_fastpath.exit.i.i17.i

rbimpl_RB_TYPE_P_fastpath.exit.i.i17.i:           ; preds = %bb.i
  %i.bh = inttoptr i64 %i.bc to ptr               ; 2 uses
  %i.bi = load i64, ptr %i.bh, align 8, !tbaa !44
  %i.bj = and i64 %i.bi, 31
  %i.bk = icmp eq i64 %i.bj, 28
  br i1 %i.bk, label %bb.j, label %get_klass.exit.i18.i

bb.j:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i.i17.i
  %i.bl = getelementptr i8, ptr %i.bh, i64 8
  %i.bm = load i64, ptr %i.bl, align 8, !tbaa !157
  br label %get_klass.exit.i18.i

get_klass.exit.i18.i:                             ; preds = %bb.j, %rbimpl_RB_TYPE_P_fastpath.exit.i.i17.i, %bb.i, %bb.h
  %.0.i.i19.i = phi i64 [ %i.bm, %bb.j ], [ %i.bc, %rbimpl_RB_TYPE_P_fastpath.exit.i.i17.i ], [ 4, %bb.h ], [ %i.bc, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  call void @rb_ary_store(i64 noundef %i.ay, i64 noundef 1, i64 noundef %.0.i.i19.i) #7
  %i.bn = ptrtoint ptr %.036.i.i to i64           ; 2 uses
  %i.bo = or i64 %i.bn, 1                         ; 2 uses
  call void @rb_ary_store(i64 noundef %i.ay, i64 noundef 2, i64 noundef %i.bo) #7
  %i.bp = load ptr, ptr %i.av, align 8, !tbaa !18 ; 2 uses
  %.not.i20.i = icmp eq ptr %i.bp, null
  %i.bq = ptrtoint ptr %i.bp to i64
  %spec.select.i.i = select i1 %.not.i20.i, i64 4, i64 %i.bq
  call void @rb_ary_store(i64 noundef %i.ay, i64 noundef 3, i64 noundef %spec.select.i.i) #7
  call void @rb_ary_store(i64 noundef %i.ay, i64 noundef 4, i64 noundef %i.bo) #7
  %i.br = load i32, ptr %.1.i.i.i28.i, align 8, !tbaa !83 ; 2 uses
  %i.bs = add i32 %i.br, 1
  store i32 %i.bs, ptr %.1.i.i.i28.i, align 8, !tbaa !83
  %i.bt = sext i32 %i.br to i64
  %i.bu = getelementptr [24 x i8], ptr %i.au, i64 %i.bt ; 4 uses
  %i.bv = call ptr @rb_vm_frame_method_entry(ptr noundef nonnull %.036.i.i) #7 ; 2 uses
  %i.bw = ptrtoint ptr %i.bv to i64               ; 3 uses
  store i64 %i.bw, ptr %i.bu, align 8, !tbaa !17
  %i.bx = icmp eq ptr %i.bv, null
  %i.by = and i64 %i.bw, 7
  %i.bz = icmp ne i64 %i.by, 0
  %i.ca = or i1 %i.bx, %i.bz
  br i1 %i.ca, label %rb_obj_write.exit.i21.i, label %bb.k

bb.k:                                             ; preds = %get_klass.exit.i18.i
  call void @rb_gc_writebarrier(i64 noundef %i.y, i64 noundef %i.bw) #7
  br label %rb_obj_write.exit.i21.i

rb_obj_write.exit.i21.i:                          ; preds = %bb.k, %get_klass.exit.i18.i
  %i.cb = getelementptr i8, ptr %i.bu, i64 8
  %i.cc = load ptr, ptr %i.av, align 8, !tbaa !18 ; 2 uses
  %i.cd = ptrtoint ptr %i.cc to i64               ; 3 uses
  store i64 %i.cd, ptr %i.cb, align 8, !tbaa !17
  %i.ce = icmp eq ptr %i.cc, null
  %i.cf = and i64 %i.cd, 7
  %i.cg = icmp ne i64 %i.cf, 0
  %i.ch = or i1 %i.ce, %i.cg
  br i1 %i.ch, label %rb_obj_write.exit31.i.i, label %bb.l

bb.l:                                             ; preds = %rb_obj_write.exit.i21.i
  call void @rb_gc_writebarrier(i64 noundef %i.y, i64 noundef %i.cd) #7
  br label %rb_obj_write.exit31.i.i

rb_obj_write.exit31.i.i:                          ; preds = %bb.l, %rb_obj_write.exit.i21.i
  %i.ci = load ptr, ptr %.036.i.i, align 8, !tbaa !19
  %i.cj = getelementptr i8, ptr %i.bu, i64 16
  store ptr %i.ci, ptr %i.cj, align 8, !tbaa !69
  %i.ck = load i64, ptr @rb_cBacktraceLocation, align 8, !tbaa !17
  %i.cl = call i64 @rb_data_typed_object_zalloc(i64 noundef %i.ck, i64 noundef 16, ptr noundef nonnull @location_data_type) #7 ; 3 uses
  %i.cm = inttoptr i64 %i.cl to ptr               ; 2 uses
  %i.cn = getelementptr i8, ptr %i.cm, i64 24
  %i.co = load i64, ptr %i.cn, align 8, !tbaa !52
  %i.cp = trunc i64 %i.co to i1
  %i.cq = getelementptr i8, ptr %i.cm, i64 32     ; 2 uses
  br i1 %i.cp, label %RTYPEDDATA_GET_DATA.exit.i.i22.i, label %bb.m

bb.m:                                             ; preds = %rb_obj_write.exit31.i.i
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !54
  br label %RTYPEDDATA_GET_DATA.exit.i.i22.i

RTYPEDDATA_GET_DATA.exit.i.i22.i:                 ; preds = %bb.m, %rb_obj_write.exit31.i.i
end_hunk_0
begin_hunk_1_@rb_debug_inspector_open:bb.a

.sink.split.i:                                    ; preds = %collect_caller_bindings_cfunc.exit.i, %collect_caller_bindings_iseq.exit.i
  %.sink62.i = phi i64 [ %i.dk, %collect_caller_bindings_cfunc.exit.i ], [ %i.bn, %collect_caller_bindings_iseq.exit.i ]
  %.sink56.i = phi i64 [ %i.cv, %collect_caller_bindings_cfunc.exit.i ], [ %i.ay, %collect_caller_bindings_iseq.exit.i ] ; 2 uses
  %.val.i15.i = load ptr, ptr %.0..0..0..0..0..0..i, align 8, !tbaa !81
  %.val24.i.i = load i64, ptr %i.m, align 8, !tbaa !82
  %i.eh = getelementptr [8 x i8], ptr %.val.i15.i, i64 %.val24.i.i
  %i.ei = ptrtoint ptr %i.eh to i64
  %i.ej = sub i64 %i.ei, %.sink62.i
  %i.ek = sdiv exact i64 %i.ej, 56
  %sext.i.i = shl i64 %i.ek, 32
  %i.el = ashr exact i64 %sext.i.i, 31
  %i.em = or disjoint i64 %i.el, 1
  call void @rb_ary_store(i64 noundef %.sink56.i, i64 noundef 6, i64 noundef %i.em) #7
  %i.en = call i64 @rb_ary_push(i64 noundef %i.k, i64 noundef %.sink56.i) #7 ; 0 uses
  br label %bb.u

bb.u:                                             ; preds = %.sink.split.i, %bb.g
  %i.eo = add nuw nsw i64 %.02835.i.i, 1
  %i.ep = getelementptr i8, ptr %.036.i.i, i64 -56
  %exitcond.not.i.i = icmp eq i64 %.02835.i.i, %i.u
  br i1 %exitcond.not.i.i, label %backtrace_each.exit.i, label %.lr.ph.i.i, !llvm.loop !133

.loopexit.sink.split.i.i:                         ; preds = %bb.b, %bb.a
  %i.eq = load i64, ptr @rb_cBacktrace, align 8, !tbaa !17
  %i.er = tail call i64 @rb_data_typed_object_zalloc(i64 noundef %i.eq, i64 noundef 24, ptr noundef nonnull @backtrace_data_type) #7 ; 4 uses
  %i.es = icmp eq i64 %i.er, 0
  %i.et = and i64 %i.er, 7
  %i.eu = icmp ne i64 %i.et, 0
  %i.ev = or i1 %i.es, %i.eu
  br i1 %i.ev, label %.critedge.i.i.i.i, label %rbimpl_RB_TYPE_P_fastpath.exit.i.i.i.i, !prof !50

rbimpl_RB_TYPE_P_fastpath.exit.i.i.i.i:           ; preds = %.loopexit.sink.split.i.i
  %i.ew = inttoptr i64 %i.er to ptr               ; 2 uses
  %i.ex = load i64, ptr %i.ew, align 8, !tbaa !44
  %i.ey = and i64 %i.ex, 95
  %or.cond.not.i.i.i.i = icmp eq i64 %i.ey, 76
  br i1 %or.cond.not.i.i.i.i, label %RTYPEDDATA_GET_DATA.exit.i.i.i.i, label %.critedge.i.i.i.i, !prof !51

RTYPEDDATA_GET_DATA.exit.i.i.i.i:                 ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i.i.i.i
  %i.ez = getelementptr i8, ptr %i.ew, i64 24
  %i.fa = load i64, ptr %i.ez, align 8, !tbaa !52
  %i.fb = and i64 %i.fa, -2                       ; 2 uses
  %i.fc = icmp eq i64 %i.fb, ptrtoint (ptr @backtrace_data_type to i64)
  br i1 %i.fc, label %backtrace_each.exit.i, label %.preheader.i.i.i.preheader.i, !prof !55

.preheader.i.i.i.preheader.i:                     ; preds = %RTYPEDDATA_GET_DATA.exit.i.i.i.i
  %i.fd = inttoptr i64 %i.fb to ptr
  br label %.preheader.i.i.i.i

.preheader.i.i.i.i:                               ; preds = %bb.v, %.preheader.i.i.i.preheader.i
  %.016.i.i.i.i = phi ptr [ %i.ff, %bb.v ], [ %i.fd, %.preheader.i.i.i.preheader.i ] ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %.016.i.i.i.i, null
  br i1 %.not.i.i.i.i, label %.critedge.i.i.i.i, label %bb.v

bb.v:                                             ; preds = %.preheader.i.i.i.i
  %i.fe = getelementptr i8, ptr %.016.i.i.i.i, i64 48
  %i.ff = load ptr, ptr %i.fe, align 8, !tbaa !56 ; 2 uses
  %i.fg = icmp eq ptr %i.ff, @backtrace_data_type
  br i1 %i.fg, label %backtrace_each.exit.i, label %.preheader.i.i.i.i, !llvm.loop !61

.critedge.i.i.i.i:                                ; preds = %.preheader.i.i.i.i, %rbimpl_RB_TYPE_P_fastpath.exit.i.i.i.i, %.loopexit.sink.split.i.i
  %i.fh = tail call ptr @rb_check_typeddata(i64 noundef %i.er, ptr noundef nonnull @backtrace_data_type) #7 ; 0 uses
  br label %backtrace_each.exit.i

backtrace_each.exit.i:                            ; preds = %bb.u, %bb.v, %.critedge.i.i.i.i, %RTYPEDDATA_GET_DATA.exit.i.i.i.i, %collect_caller_bindings_init.exit33.i
  %i.fi = call i64 @rb_ary_reverse(i64 noundef %i.k) #7 ; 4 uses
  %i.fj = inttoptr i64 %i.fi to ptr               ; 3 uses
  %i.fk = getelementptr i8, ptr %i.fj, i64 16     ; 2 uses
  br label %bb.w

bb.w:                                             ; preds = %bb.ab, %backtrace_each.exit.i
  %.0.i = phi i32 [ 0, %backtrace_each.exit.i ], [ %i.fy, %bb.ab ] ; 2 uses
  %i.fl = sext i32 %.0.i to i64                   ; 2 uses
  %i.fm = load i64, ptr %i.fj, align 8, !tbaa !44 ; 2 uses
  %i.fn = and i64 %i.fm, 8192
  %.not.i14.i = icmp eq i64 %i.fn, 0
  br i1 %.not.i14.i, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.fo = lshr i64 %i.fm, 15
  %i.fp = and i64 %i.fo, 127
  br label %rb_array_len.exit.i

bb.y:                                             ; preds = %bb.w
  %i.fq = load i64, ptr %i.fk, align 8, !tbaa !46
  br label %rb_array_len.exit.i

rb_array_len.exit.i:                              ; preds = %bb.y, %bb.x
  %.0.i.i = phi i64 [ %i.fp, %bb.x ], [ %i.fq, %bb.y ]
  %i.fr = icmp sgt i64 %.0.i.i, %i.fl
  br i1 %i.fr, label %bb.z, label %collect_caller_bindings.exit

bb.z:                                             ; preds = %rb_array_len.exit.i
  %i.fs = call i64 @rb_ary_entry(i64 noundef %i.fi, i64 noundef %i.fl) #19 ; 2 uses
  %i.ft = call i64 @rb_ary_entry(i64 noundef %i.fs, i64 noundef 2) #19 ; 2 uses
  %i.fu = icmp eq i64 %i.ft, 4
  br i1 %i.fu, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.fv = and i64 %i.ft, -4
  %i.fw = inttoptr i64 %i.fv to ptr
  %i.fx = call i64 @rb_vm_make_binding(ptr noundef nonnull %.0..0..0..0..0..0..i, ptr noundef %i.fw) #7
  call void @rb_ary_store(i64 noundef %i.fs, i64 noundef 2, i64 noundef %i.fx) #7
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %i.fy = add i32 %.0.i, 1
  br label %bb.w, !llvm.loop !158

collect_caller_bindings.exit:                     ; preds = %rb_array_len.exit.i
  %i.fz = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i64 %i.fi, ptr %i.fz, align 8, !tbaa !159
  %i.ga = call i64 @rb_ary_new() #7               ; 2 uses
  %i.gb = getelementptr inbounds nuw i8, ptr %2, i64 24
  store i64 %i.ga, ptr %i.gb, align 8, !tbaa !160
  br label %bb.ac

bb.ac:                                            ; preds = %bb.af, %collect_caller_bindings.exit
  %.0 = phi i32 [ 0, %collect_caller_bindings.exit ], [ %i.gm, %bb.af ] ; 2 uses
  %i.gc = sext i32 %.0 to i64                     ; 2 uses
  %i.gd = load i64, ptr %i.fj, align 8, !tbaa !44 ; 2 uses
  %i.ge = and i64 %i.gd, 8192
  %.not.i = icmp eq i64 %i.ge, 0
  br i1 %.not.i, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.gf = lshr i64 %i.gd, 15
  %i.gg = and i64 %i.gf, 127
  br label %rb_array_len.exit

bb.ae:                                            ; preds = %bb.ac
  %i.gh = load i64, ptr %i.fk, align 8, !tbaa !46
  br label %rb_array_len.exit

rb_array_len.exit:                                ; preds = %bb.ad, %bb.ae
  %.0.i21 = phi i64 [ %i.gg, %bb.ad ], [ %i.gh, %bb.ae ]
  %i.gi = icmp sgt i64 %.0.i21, %i.gc
  br i1 %i.gi, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %rb_array_len.exit
  %i.gj = call i64 @rb_ary_entry(i64 noundef %i.fi, i64 noundef %i.gc) #19
  %i.gk = call i64 @rb_ary_entry(i64 noundef %i.gj, i64 noundef 5) #19
  %i.gl = call i64 @rb_ary_push(i64 noundef %i.ga, i64 noundef %i.gk) #7 ; 0 uses
  %i.gm = add i32 %.0, 1
  br label %bb.ac, !llvm.loop !161

bb.ag:                                            ; preds = %rb_array_len.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store ptr %.0..0..0..0..0..0..i, ptr %i.e, align 8, !tbaa !100
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #7
  %i.gn = getelementptr inbounds nuw i8, ptr %3, i64 64
  store i32 0, ptr %i.gn, align 8, !tbaa !162
  store i64 36, ptr %3, align 8, !tbaa !164
  %i.go = getelementptr i8, ptr %.0..0..0..0..0..0..i, i64 24 ; 4 uses
  %i.gp = load ptr, ptr %i.go, align 8, !tbaa !165
  %i.gq = getelementptr inbounds nuw i8, ptr %3, i64 56 ; 3 uses
  store ptr %i.gp, ptr %i.gq, align 8, !tbaa !166
  %i.gr = getelementptr i8, ptr %.0..0..0..0..0..0..i, i64 48
  %.0.1.val = load ptr, ptr %i.gr, align 8, !tbaa !167 ; 3 uses
  %.not.i.i22 = icmp eq ptr %.0.1.val, null
  br i1 %.not.i.i22, label %rb_ec_ractor_ptr.exit.i, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.gs = getelementptr i8, ptr %.0.1.val, i64 32
  %i.gt = load ptr, ptr %i.gs, align 8, !tbaa !168
  %i.gu = getelementptr i8, ptr %.0.1.val, i64 24
  %i.gv = load ptr, ptr %i.gu, align 8, !tbaa !169
  br label %rb_ec_ractor_ptr.exit.i

rb_ec_ractor_ptr.exit.i:                          ; preds = %bb.ah, %bb.ag
  %.0.i2.i = phi ptr [ %i.gt, %bb.ah ], [ null, %bb.ag ] ; 2 uses
  %.0.i7.i = phi ptr [ %i.gv, %bb.ah ], [ null, %bb.ag ]
  %i.gw = getelementptr i8, ptr %.0.i2.i, i64 88
  %.val5.i = load ptr, ptr %i.gw, align 8, !tbaa !170
  %i.gx = icmp eq ptr %.val5.i, %.0.i7.i
  br i1 %i.gx, label %bb.ai, label %rb_ec_vm_lock_rec.exit

bb.ai:                                            ; preds = %rb_ec_ractor_ptr.exit.i
  %i.gy = getelementptr i8, ptr %.0.i2.i, i64 96
  %i.gz = load i32, ptr %i.gy, align 8, !tbaa !171
  br label %rb_ec_vm_lock_rec.exit

rb_ec_vm_lock_rec.exit:                           ; preds = %rb_ec_ractor_ptr.exit.i, %bb.ai
  %.0.i23 = phi i32 [ %i.gz, %bb.ai ], [ 0, %rb_ec_ractor_ptr.exit.i ]
  %i.ha = getelementptr inbounds nuw i8, ptr %3, i64 68
  store i32 %.0.i23, ptr %i.ha, align 4, !tbaa !172
  %i.hb = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.hc = call ptr @llvm.frameaddress.p0(i32 0)
  store ptr %i.hc, ptr %i.hb, align 8
  %i.hd = call ptr @llvm.stacksave.p0()
  %i.he = getelementptr inbounds nuw i8, ptr %3, i64 32
  store ptr %i.hd, ptr %i.he, align 8
  %i.hf = call i32 @llvm.eh.sjlj.setjmp(ptr nonnull %i.hb)
  %.not = icmp eq i32 %i.hf, 0
  br i1 %.not, label %bb.ak, label %bb.aj, !prof !55

bb.aj:                                            ; preds = %rb_ec_vm_lock_rec.exit
  %.0..0..0..0.2 = load volatile ptr, ptr %i.e, align 8, !tbaa !100
  %i.hg = call fastcc i32 @rb_ec_tag_state(ptr noundef %.0..0..0..0.2)
  %i.hh = load ptr, ptr %i.gq, align 8, !tbaa !166
  %.0..0..0..0.4 = load ptr, ptr %i.e, align 8, !tbaa !100
  %4 = getelementptr i8, ptr %.0..0..0..0.4, i64 24
  store ptr %i.hh, ptr %4, align 8, !tbaa !165
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %.val = load ptr, ptr %i.go, align 8, !tbaa !165 ; 2 uses
  %i.hi = getelementptr i8, ptr %.val, i64 64
  store i32 %i.hg, ptr %i.hi, align 8, !tbaa !162
  %i.hj = getelementptr i8, ptr %.val, i64 16
  call void @llvm.eh.sjlj.longjmp(ptr %i.hj)
  unreachable

bb.ak:                                            ; preds = %rb_ec_vm_lock_rec.exit
  store ptr %3, ptr %i.go, align 8, !tbaa !165
  %i.hk = call i64 %0(ptr noundef nonnull %2, ptr noundef %1) #7
  store volatile i64 %i.hk, ptr %i.d, align 8, !tbaa !17
  %i.hl = load ptr, ptr %i.gq, align 8, !tbaa !166
  store ptr %i.hl, ptr %i.go, align 8, !tbaa !165
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %.0..0..0..0.8 = load volatile i64, ptr %i.d, align 8, !tbaa !17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #7
  ret i64 %.0..0..0..0.8
}

declare void @rb_vm_stack_to_heap(ptr noundef) local_unnamed_addr #2

declare i64 @rb_ary_new() local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare i64 @rb_ary_entry(i64 noundef, i64 noundef) local_unnamed_addr #4

declare i64 @rb_ary_push(i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare ptr @llvm.frameaddress.p0(i32 immarg) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare ptr @llvm.stacksave.p0() #6

; Function Attrs: nounwind
declare i32 @llvm.eh.sjlj.setjmp(ptr) #7

; Function Attrs: inlinehint nounwind sspstrong uwtable
define internal fastcc range(i32 1, 9) i32 @rb_ec_tag_state(ptr noundef %0) unnamed_addr #8 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !165  ; 2 uses
  %i.c = getelementptr i8, ptr %i.b, i64 64       ; 2 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !162  ; 3 uses
  store i32 0, ptr %i.c, align 8, !tbaa !162
  %i.e = getelementptr i8, ptr %i.b, i64 68
  %i.f = load i32, ptr %i.e, align 4, !tbaa !172  ; 2 uses
  %i.g = getelementptr i8, ptr %0, i64 48
  %.val.i = load ptr, ptr %i.g, align 8, !tbaa !167 ; 3 uses
  %.not.i.i.i = icmp eq ptr %.val.i, null
  br i1 %.not.i.i.i, label %rb_ec_ractor_ptr.exit.i.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr i8, ptr %.val.i, i64 32
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !168
  %i.j = getelementptr i8, ptr %.val.i, i64 24
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !169
  br label %rb_ec_ractor_ptr.exit.i.i

rb_ec_ractor_ptr.exit.i.i:                        ; preds = %bb.b, %bb.a
  %.0.i2.i.i = phi ptr [ %i.i, %bb.b ], [ null, %bb.a ] ; 2 uses
  %.0.i7.i.i = phi ptr [ %i.k, %bb.b ], [ null, %bb.a ]
  %i.l = getelementptr i8, ptr %.0.i2.i.i, i64 88
  %.val5.i.i = load ptr, ptr %i.l, align 8, !tbaa !170
  %i.m = icmp eq ptr %.val5.i.i, %.0.i7.i.i
  br i1 %i.m, label %bb.c, label %rb_ec_vm_lock_rec.exit.i

bb.c:                                             ; preds = %rb_ec_ractor_ptr.exit.i.i
  %i.n = getelementptr i8, ptr %.0.i2.i.i, i64 96
  %i.o = load i32, ptr %i.n, align 8, !tbaa !171
  br label %rb_ec_vm_lock_rec.exit.i

rb_ec_vm_lock_rec.exit.i:                         ; preds = %bb.c, %rb_ec_ractor_ptr.exit.i.i
  %.0.i.i = phi i32 [ %i.o, %bb.c ], [ 0, %rb_ec_ractor_ptr.exit.i.i ] ; 2 uses
  %.not.i = icmp eq i32 %.0.i.i, %i.f
  br i1 %.not.i, label %rb_ec_vm_lock_rec_check.exit, label %bb.d

bb.d:                                             ; preds = %rb_ec_vm_lock_rec.exit.i
  tail call void @rb_ec_vm_lock_rec_release(ptr noundef nonnull %0, i32 noundef %i.f, i32 noundef %.0.i.i) #7
  br label %rb_ec_vm_lock_rec_check.exit

rb_ec_vm_lock_rec_check.exit:                     ; preds = %rb_ec_vm_lock_rec.exit.i, %bb.d
  %i.p = icmp ne i32 %i.d, 0
  tail call void @llvm.assume(i1 %i.p)
  %i.q = icmp ult i32 %i.d, 9
  tail call void @llvm.assume(i1 %i.q)
  ret i32 %i.d
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @rb_debug_inspector_frame_self_get(ptr noundef readonly captures(none) %0, i64 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp slt i64 %1, 0
  br i1 %i.a, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr i8, ptr %0, i64 16
  %i.c = load i64, ptr %i.b, align 8, !tbaa !159  ; 2 uses
  %i.d = inttoptr i64 %i.c to ptr                 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !44   ; 2 uses
  %i.f = and i64 %i.e, 8192
  %.not.i.i = icmp eq i64 %i.f, 0
  br i1 %.not.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = lshr i64 %i.e, 15
  %i.h = and i64 %i.g, 127
  br label %rb_array_len.exit.i

bb.d:                                             ; preds = %bb.b
  %i.i = getelementptr i8, ptr %i.d, i64 16
  %i.j = load i64, ptr %i.i, align 8, !tbaa !46
  br label %rb_array_len.exit.i

rb_array_len.exit.i:                              ; preds = %bb.d, %bb.c
  %.0.i.i = phi i64 [ %i.h, %bb.c ], [ %i.j, %bb.d ]
  %.not.i = icmp slt i64 %1, %.0.i.i
  br i1 %.not.i, label %frame_get.exit, label %bb.e

bb.e:                                             ; preds = %rb_array_len.exit.i, %bb.a
  %i.k = load i64, ptr @rb_eArgError, align 8, !tbaa !17
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.k, ptr noundef nonnull @.str.42) #17
  unreachable

frame_get.exit:                                   ; preds = %rb_array_len.exit.i
  %i.l = tail call i64 @rb_ary_entry(i64 noundef %i.c, i64 noundef %1) #19
  %i.m = tail call i64 @rb_ary_entry(i64 noundef %i.l, i64 noundef 0) #19
  ret i64 %i.m
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @rb_debug_inspector_frame_class_get(ptr noundef readonly captures(none) %0, i64 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp slt i64 %1, 0
  br i1 %i.a, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr i8, ptr %0, i64 16
  %i.c = load i64, ptr %i.b, align 8, !tbaa !159  ; 2 uses
  %i.d = inttoptr i64 %i.c to ptr                 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !44   ; 2 uses
  %i.f = and i64 %i.e, 8192
  %.not.i.i = icmp eq i64 %i.f, 0
  br i1 %.not.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = lshr i64 %i.e, 15
  %i.h = and i64 %i.g, 127
  br label %rb_array_len.exit.i

bb.d:                                             ; preds = %bb.b
  %i.i = getelementptr i8, ptr %i.d, i64 16
  %i.j = load i64, ptr %i.i, align 8, !tbaa !46
  br label %rb_array_len.exit.i

rb_array_len.exit.i:                              ; preds = %bb.d, %bb.c
  %.0.i.i = phi i64 [ %i.h, %bb.c ], [ %i.j, %bb.d ]
  %.not.i = icmp slt i64 %1, %.0.i.i
  br i1 %.not.i, label %frame_get.exit, label %bb.e

bb.e:                                             ; preds = %rb_array_len.exit.i, %bb.a
  %i.k = load i64, ptr @rb_eArgError, align 8, !tbaa !17
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.k, ptr noundef nonnull @.str.42) #17
  unreachable

frame_get.exit:                                   ; preds = %rb_array_len.exit.i
  %i.l = tail call i64 @rb_ary_entry(i64 noundef %i.c, i64 noundef %1) #19
  %i.m = tail call i64 @rb_ary_entry(i64 noundef %i.l, i64 noundef 1) #19
  ret i64 %i.m
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @rb_debug_inspector_frame_binding_get(ptr noundef readonly captures(none) %0, i64 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp slt i64 %1, 0
  br i1 %i.a, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr i8, ptr %0, i64 16
  %i.c = load i64, ptr %i.b, align 8, !tbaa !159  ; 2 uses
  %i.d = inttoptr i64 %i.c to ptr                 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !44   ; 2 uses
  %i.f = and i64 %i.e, 8192
  %.not.i.i = icmp eq i64 %i.f, 0
  br i1 %.not.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = lshr i64 %i.e, 15
  %i.h = and i64 %i.g, 127
  br label %rb_array_len.exit.i

bb.d:                                             ; preds = %bb.b
  %i.i = getelementptr i8, ptr %i.d, i64 16
  %i.j = load i64, ptr %i.i, align 8, !tbaa !46
  br label %rb_array_len.exit.i

rb_array_len.exit.i:                              ; preds = %bb.d, %bb.c
  %.0.i.i = phi i64 [ %i.h, %bb.c ], [ %i.j, %bb.d ]
  %.not.i = icmp slt i64 %1, %.0.i.i
  br i1 %.not.i, label %frame_get.exit, label %bb.e

bb.e:                                             ; preds = %rb_array_len.exit.i, %bb.a
end_hunk_1
