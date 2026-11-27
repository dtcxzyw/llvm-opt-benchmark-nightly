Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruby/original/vm_backtrace?download=true
inline.NumInlined: 295
inline.NumDeleted: 97
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 3
begin_hunk_0_@rb_location_ary_to_backtrace:bb.a
.critedge:                                        ; preds = %RARRAY_AREF.exit39
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  br label %rbimpl_RB_TYPE_P_fastpath.exit.thread

rbimpl_RB_TYPE_P_fastpath.exit.thread:            ; preds = %rb_array_len.exit36, %rb_array_len.exit36.thread, %.critedge, %bb.a, %rb_array_len.exit.thread, %rbimpl_RB_TYPE_P_fastpath.exit, %rb_array_len.exit, %RARRAY_AREF.exit
  %.4 = phi i64 [ 0, %bb.a ], [ 0, %RARRAY_AREF.exit ], [ 0, %rb_array_len.exit ], [ 0, %rbimpl_RB_TYPE_P_fastpath.exit ], [ 0, %rb_array_len.exit.thread ], [ 0, %.critedge ], [ %i.ae, %rb_array_len.exit36.thread ], [ %i.ae, %rb_array_len.exit36 ]
  ret i64 %.4
}

; Function Attrs: nounwind sspstrong uwtable
define hidden i64 @rb_ec_backtrace_str_ary(ptr nofree noundef readonly captures(none) %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #0 !guid !230 {
bb.a:
  %i.a = tail call fastcc i64 @rb_ec_partial_backtrace_object(ptr noundef %0, i64 noundef %1, i64 noundef %2, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) ; 6 uses
  %i.b = icmp eq i64 %i.a, 0
  %i.c = and i64 %i.a, 7
  %i.d = icmp ne i64 %i.c, 0
  %i.e = or i1 %i.b, %i.d
  br i1 %i.e, label %.critedge.i.i, label %rbimpl_RB_TYPE_P_fastpath.exit.i.i, !prof !102

rbimpl_RB_TYPE_P_fastpath.exit.i.i:               ; preds = %bb.a
  %i.f = inttoptr i64 %i.a to ptr                 ; 3 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !99
  %i.h = and i64 %i.g, 95
  %or.cond.not.i.i = icmp eq i64 %i.h, 76
  br i1 %or.cond.not.i.i, label %bb.b, label %.critedge.i.i, !prof !103

bb.b:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i.i
  %i.i = getelementptr i8, ptr %i.f, i64 24
  %i.j = load i64, ptr %i.i, align 8, !tbaa !105  ; 2 uses
  %i.k = and i64 %i.j, -2                         ; 2 uses
  %i.l = inttoptr i64 %i.k to ptr
  %i.m = trunc i64 %i.j to i1
  %i.n = getelementptr i8, ptr %i.f, i64 32       ; 2 uses
  br i1 %i.m, label %RTYPEDDATA_GET_DATA.exit.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !106
  br label %RTYPEDDATA_GET_DATA.exit.i.i

RTYPEDDATA_GET_DATA.exit.i.i:                     ; preds = %bb.c, %bb.b
  %i.p = phi ptr [ %i.o, %bb.c ], [ %i.n, %bb.b ] ; 2 uses
  %i.q = icmp eq i64 %i.k, ptrtoint (ptr @backtrace_data_type to i64)
  br i1 %i.q, label %rbimpl_check_typeddata.exit.i, label %.preheader.i.i, !prof !107

.preheader.i.i:                                   ; preds = %RTYPEDDATA_GET_DATA.exit.i.i, %bb.d
  %.015.i.i = phi ptr [ %i.s, %bb.d ], [ %i.l, %RTYPEDDATA_GET_DATA.exit.i.i ] ; 2 uses
  %.not.i.i = icmp eq ptr %.015.i.i, null
  br i1 %.not.i.i, label %.critedge.i.i, label %bb.d

bb.d:                                             ; preds = %.preheader.i.i
  %i.r = getelementptr i8, ptr %.015.i.i, i64 48
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !112  ; 2 uses
  %i.t = icmp eq ptr %i.s, @backtrace_data_type
  br i1 %i.t, label %rbimpl_check_typeddata.exit.i, label %.preheader.i.i, !llvm.loop !0

.critedge.i.i:                                    ; preds = %.preheader.i.i, %rbimpl_RB_TYPE_P_fastpath.exit.i.i, %bb.a
  %i.u = tail call ptr @rb_check_typeddata(i64 noundef %i.a, ptr noundef nonnull @backtrace_data_type) #7
  br label %rbimpl_check_typeddata.exit.i

rbimpl_check_typeddata.exit.i:                    ; preds = %bb.d, %.critedge.i.i, %RTYPEDDATA_GET_DATA.exit.i.i
  %.1.i.i = phi ptr [ %i.u, %.critedge.i.i ], [ %i.p, %RTYPEDDATA_GET_DATA.exit.i.i ], [ %i.p, %bb.d ]
  %i.v = getelementptr i8, ptr %.1.i.i, i64 8     ; 3 uses
  %i.w = load i64, ptr %i.v, align 8, !tbaa !135  ; 2 uses
  %.not.i = icmp eq i64 %i.w, 0
  br i1 %.not.i, label %bb.e, label %rb_backtrace_to_str_ary.exit

bb.e:                                             ; preds = %rbimpl_check_typeddata.exit.i
  %i.x = tail call fastcc i64 @backtrace_to_str_ary(i64 noundef %i.a) ; 5 uses
  store i64 %i.x, ptr %i.v, align 8, !tbaa !71
  %i.y = icmp eq i64 %i.x, 0
  %i.z = and i64 %i.x, 7
  %i.aa = icmp ne i64 %i.z, 0
  %i.ab = or i1 %i.y, %i.aa
  br i1 %i.ab, label %rb_backtrace_to_str_ary.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @rb_gc_writebarrier(i64 noundef %i.a, i64 noundef %i.x) #7
  %.pre.i = load i64, ptr %i.v, align 8, !tbaa !135
  br label %rb_backtrace_to_str_ary.exit

rb_backtrace_to_str_ary.exit:                     ; preds = %rbimpl_check_typeddata.exit.i, %bb.e, %bb.f
  %i.ac = phi i64 [ %.pre.i, %bb.f ], [ %i.x, %bb.e ], [ %i.w, %rbimpl_check_typeddata.exit.i ]
  ret i64 %i.ac
}

; Function Attrs: nounwind sspstrong uwtable
define hidden i64 @rb_ec_backtrace_location_ary(ptr nofree noundef readonly captures(none) %0, i64 noundef %1, i64 noundef %2, i1 noundef zeroext %3) local_unnamed_addr #0 !guid !231 {
bb.a:
  %i.a = tail call fastcc i64 @rb_ec_partial_backtrace_object(ptr noundef %0, i64 noundef %1, i64 noundef %2, ptr noundef null, i1 noundef zeroext %3, i1 noundef zeroext false) ; 6 uses
  %i.b = icmp eq i64 %i.a, 0
  %i.c = and i64 %i.a, 7
  %i.d = icmp ne i64 %i.c, 0
  %i.e = or i1 %i.b, %i.d
  br i1 %i.e, label %.critedge.i.i, label %rbimpl_RB_TYPE_P_fastpath.exit.i.i, !prof !102

rbimpl_RB_TYPE_P_fastpath.exit.i.i:               ; preds = %bb.a
  %i.f = inttoptr i64 %i.a to ptr                 ; 3 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !99
  %i.h = and i64 %i.g, 95
  %or.cond.not.i.i = icmp eq i64 %i.h, 76
  br i1 %or.cond.not.i.i, label %bb.b, label %.critedge.i.i, !prof !103

bb.b:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i.i
  %i.i = getelementptr i8, ptr %i.f, i64 24
  %i.j = load i64, ptr %i.i, align 8, !tbaa !105  ; 2 uses
  %i.k = and i64 %i.j, -2                         ; 2 uses
  %i.l = inttoptr i64 %i.k to ptr
  %i.m = trunc i64 %i.j to i1
  %i.n = getelementptr i8, ptr %i.f, i64 32       ; 2 uses
  br i1 %i.m, label %RTYPEDDATA_GET_DATA.exit.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !106
  br label %RTYPEDDATA_GET_DATA.exit.i.i

RTYPEDDATA_GET_DATA.exit.i.i:                     ; preds = %bb.c, %bb.b
  %i.p = phi ptr [ %i.o, %bb.c ], [ %i.n, %bb.b ] ; 2 uses
  %i.q = icmp eq i64 %i.k, ptrtoint (ptr @backtrace_data_type to i64)
  br i1 %i.q, label %rbimpl_check_typeddata.exit.i, label %.preheader.i.i, !prof !107

.preheader.i.i:                                   ; preds = %RTYPEDDATA_GET_DATA.exit.i.i, %bb.d
  %.015.i.i = phi ptr [ %i.s, %bb.d ], [ %i.l, %RTYPEDDATA_GET_DATA.exit.i.i ] ; 2 uses
  %.not.i.i = icmp eq ptr %.015.i.i, null
  br i1 %.not.i.i, label %.critedge.i.i, label %bb.d

bb.d:                                             ; preds = %.preheader.i.i
  %i.r = getelementptr i8, ptr %.015.i.i, i64 48
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !112  ; 2 uses
  %i.t = icmp eq ptr %i.s, @backtrace_data_type
  br i1 %i.t, label %rbimpl_check_typeddata.exit.i, label %.preheader.i.i, !llvm.loop !0

.critedge.i.i:                                    ; preds = %.preheader.i.i, %rbimpl_RB_TYPE_P_fastpath.exit.i.i, %bb.a
  %i.u = tail call ptr @rb_check_typeddata(i64 noundef %i.a, ptr noundef nonnull @backtrace_data_type) #7
  br label %rbimpl_check_typeddata.exit.i

rbimpl_check_typeddata.exit.i:                    ; preds = %bb.d, %.critedge.i.i, %RTYPEDDATA_GET_DATA.exit.i.i
  %.1.i.i = phi ptr [ %i.u, %.critedge.i.i ], [ %i.p, %RTYPEDDATA_GET_DATA.exit.i.i ], [ %i.p, %bb.d ]
  %i.v = getelementptr i8, ptr %.1.i.i, i64 16    ; 3 uses
  %i.w = load i64, ptr %i.v, align 8, !tbaa !137  ; 2 uses
  %.not.i = icmp eq i64 %i.w, 0
  br i1 %.not.i, label %bb.e, label %rb_backtrace_to_location_ary.exit

bb.e:                                             ; preds = %rbimpl_check_typeddata.exit.i
  %i.x = tail call fastcc i64 @backtrace_to_location_ary(i64 noundef %i.a) ; 5 uses
  store i64 %i.x, ptr %i.v, align 8, !tbaa !71
  %i.y = icmp eq i64 %i.x, 0
  %i.z = and i64 %i.x, 7
  %i.aa = icmp ne i64 %i.z, 0
  %i.ab = or i1 %i.y, %i.aa
  br i1 %i.ab, label %rb_backtrace_to_location_ary.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @rb_gc_writebarrier(i64 noundef %i.a, i64 noundef %i.x) #7
  %.pre.i = load i64, ptr %i.v, align 8, !tbaa !137
  br label %rb_backtrace_to_location_ary.exit

rb_backtrace_to_location_ary.exit:                ; preds = %rbimpl_check_typeddata.exit.i, %bb.e, %bb.f
  %i.ac = phi i64 [ %.pre.i, %bb.f ], [ %i.x, %bb.e ], [ %i.w, %rbimpl_check_typeddata.exit.i ]
  ret i64 %i.ac
}

; Function Attrs: nounwind sspstrong uwtable
define hidden void @rb_backtrace_print_as_bugreport(ptr noundef %0) local_unnamed_addr #0 !guid !232 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @ruby_current_ec)
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !140
  store volatile ptr %i.c, ptr %i.a, align 8, !tbaa !140
  %.0..0..0..0..0..0..0..0..i = load volatile ptr, ptr %i.a, align 8, !tbaa !140 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.d = getelementptr i8, ptr %.0..0..0..0..0..0..0..0..i, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !130  ; 2 uses
  %.val.i = load ptr, ptr %.0..0..0..0..0..0..0..0..i, align 8, !tbaa !131
  %i.f = getelementptr i8, ptr %.0..0..0..0..0..0..0..0..i, i64 8
  %.val34.i = load i64, ptr %i.f, align 8, !tbaa !132
  %i.g = getelementptr [8 x i8], ptr %.val.i, i64 %.val34.i ; 2 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %backtrace_each.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr i8, ptr %i.g, i64 -112     ; 3 uses
  %i.j = icmp ult ptr %i.i, %i.e
  br i1 %i.j, label %backtrace_each.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = ptrtoint ptr %i.e to i64
  %i.m = sub i64 %i.k, %i.l                       ; 2 uses
  %i.n = sdiv exact i64 %i.m, 56
  %i.o = icmp sgt i64 %i.m, -56
  br i1 %i.o, label %.lr.ph.i.preheader, label %backtrace_each.exit

.lr.ph.i.preheader:                               ; preds = %bb.c
  %i.p = load ptr, ptr @ruby_current_vm_ptr, align 8, !tbaa !142
  %i.q = getelementptr i8, ptr %i.p, i64 1216
  %i.r = load i64, ptr %i.q, align 8, !tbaa !165
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %oldbt_bugreport.exit
  %.sroa.5.0 = phi i64 [ 0, %.lr.ph.i.preheader ], [ %.sroa.5.1, %oldbt_bugreport.exit ] ; 5 uses
  %.sroa.6.0 = phi i32 [ 0, %.lr.ph.i.preheader ], [ %.sroa.6.1, %oldbt_bugreport.exit ] ; 5 uses
  %.sroa.0.0 = phi i64 [ %i.r, %.lr.ph.i.preheader ], [ %.sroa.0.1, %oldbt_bugreport.exit ] ; 5 uses
  %.036.i = phi i64 [ 0, %.lr.ph.i.preheader ], [ %i.bx, %oldbt_bugreport.exit ] ; 2 uses
  %.02935.i = phi ptr [ %i.i, %.lr.ph.i.preheader ], [ %i.by, %oldbt_bugreport.exit ] ; 4 uses
  %i.s = getelementptr i8, ptr %.02935.i, i64 16
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !72   ; 4 uses
  %.not.i = icmp eq ptr %i.t, null
  br i1 %.not.i, label %bb.l, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i
  %i.u = load ptr, ptr %.02935.i, align 8, !tbaa !73 ; 3 uses
  %.not33.i = icmp eq ptr %i.u, null
  br i1 %.not33.i, label %oldbt_bugreport.exit, label %oldbt_iter_iseq.exit

oldbt_iter_iseq.exit:                             ; preds = %bb.d
  %i.v = tail call i64 @rb_iseq_path(ptr noundef nonnull %i.t) #7 ; 4 uses
  %i.w = getelementptr i8, ptr %i.t, i64 16
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !76   ; 2 uses
  %i.y = getelementptr i8, ptr %i.x, i64 80
  %i.z = load i64, ptr %i.y, align 8, !tbaa !166  ; 2 uses
  %i.aa = getelementptr i8, ptr %i.x, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !96 ; 2 uses
  %i.ac = ptrtoint ptr %i.u to i64
  %i.ad = ptrtoint ptr %i.ab to i64
  %i.ae = sub i64 %i.ac, %i.ad
  %i.af = ashr exact i64 %i.ae, 3                 ; 2 uses
  %i.ag = icmp sgt i64 %i.af, -1
  tail call void @llvm.assume(i1 %i.ag)
  %.not.i.i.i = icmp eq ptr %i.u, %i.ab
  %i.ah = add nsw i64 %i.af, -1
  %spec.select.i.i.i = select i1 %.not.i.i.i, i64 0, i64 %i.ah, !prof !97
  %i.ai = tail call i32 @rb_iseq_line_no(ptr noundef nonnull %i.t, i64 noundef %spec.select.i.i.i) #7 ; 4 uses
  %i.aj = icmp eq i64 %i.v, 4
  br i1 %i.aj, label %RSTRING_PTR.exit.i, label %bb.e

bb.e:                                             ; preds = %oldbt_iter_iseq.exit
  %i.ak = inttoptr i64 %i.v to ptr                ; 2 uses
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !99
  %i.am = and i64 %i.al, 8192
  %.not.i.i8 = icmp eq i64 %i.am, 0
  %i.an = getelementptr i8, ptr %i.ak, i64 24     ; 2 uses
  br i1 %.not.i.i8, label %RSTRING_PTR.exit.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !100
  br label %RSTRING_PTR.exit.i

RSTRING_PTR.exit.i:                               ; preds = %bb.f, %bb.e, %oldbt_iter_iseq.exit
  %i.ap = phi ptr [ @.str.30, %oldbt_iter_iseq.exit ], [ %i.ao, %bb.f ], [ %i.an, %bb.e ] ; 2 uses
  %.not.i9 = icmp eq i64 %.sroa.5.0, 0
  br i1 %.not.i9, label %bb.g, label %bb.h

bb.g:                                             ; preds = %RSTRING_PTR.exit.i
  %i.aq = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @.str.31) #7 ; 0 uses
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %RSTRING_PTR.exit.i
  %.sroa.5.2 = phi i64 [ 1, %bb.g ], [ %.sroa.5.0, %RSTRING_PTR.exit.i ] ; 2 uses
  %i.ar = icmp eq i64 %i.z, 4
  br i1 %i.ar, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.as = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @.str.32, ptr noundef %i.ap, i32 noundef %i.ai) #7 ; 0 uses
  br label %oldbt_bugreport.exit

bb.j:                                             ; preds = %bb.h
  %i.at = inttoptr i64 %i.z to ptr                ; 2 uses
  %i.au = load i64, ptr %i.at, align 8, !tbaa !99
  %i.av = and i64 %i.au, 8192
  %.not.i14.i = icmp eq i64 %i.av, 0
  %i.aw = getelementptr i8, ptr %i.at, i64 24     ; 2 uses
  br i1 %.not.i14.i, label %RSTRING_PTR.exit15.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !100
  br label %RSTRING_PTR.exit15.i

RSTRING_PTR.exit15.i:                             ; preds = %bb.k, %bb.j
  %i.ay = phi ptr [ %i.ax, %bb.k ], [ %i.aw, %bb.j ]
  %i.az = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @.str.33, ptr noundef %i.ap, i32 noundef %i.ai, ptr noundef %i.ay) #7 ; 0 uses
  br label %oldbt_bugreport.exit

bb.l:                                             ; preds = %.lr.ph.i
  %i.ba = tail call ptr @rb_vm_frame_method_entry(ptr noundef nonnull %.02935.i) #7
  %i.bb = getelementptr i8, ptr %i.ba, i64 16
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !169
  %i.bd = getelementptr i8, ptr %i.bc, i64 32
  %i.be = load i64, ptr %i.bd, align 8, !tbaa !171
  %i.bf = tail call i64 @rb_id2str(i64 noundef %i.be) #7 ; 2 uses
  %.not.i.i = icmp eq i64 %i.bf, 0
  %..i.i = select i1 %.not.i.i, i64 4, i64 %i.bf  ; 2 uses
  %i.bg = icmp eq i64 %.sroa.0.0, 4
  br i1 %i.bg, label %RSTRING_PTR.exit.i11, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bh = inttoptr i64 %.sroa.0.0 to ptr          ; 2 uses
  %i.bi = load i64, ptr %i.bh, align 8, !tbaa !99
  %i.bj = and i64 %i.bi, 8192
  %.not.i.i10 = icmp eq i64 %i.bj, 0
  %i.bk = getelementptr i8, ptr %i.bh, i64 24     ; 2 uses
  br i1 %.not.i.i10, label %RSTRING_PTR.exit.i11, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !100
  br label %RSTRING_PTR.exit.i11

RSTRING_PTR.exit.i11:                             ; preds = %bb.n, %bb.m, %bb.l
  %i.bm = phi ptr [ @.str.30, %bb.l ], [ %i.bl, %bb.n ], [ %i.bk, %bb.m ] ; 2 uses
  %.not.i12 = icmp eq i64 %.sroa.5.0, 0
  br i1 %.not.i12, label %bb.o, label %bb.p

bb.o:                                             ; preds = %RSTRING_PTR.exit.i11
  %i.bn = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @.str.31) #7 ; 0 uses
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %RSTRING_PTR.exit.i11
  %.sroa.5.3 = phi i64 [ 1, %bb.o ], [ %.sroa.5.0, %RSTRING_PTR.exit.i11 ] ; 2 uses
  %i.bo = icmp eq i64 %..i.i, 4
  br i1 %i.bo, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.bp = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @.str.32, ptr noundef %i.bm, i32 noundef %.sroa.6.0) #7 ; 0 uses
  br label %oldbt_bugreport.exit

bb.r:                                             ; preds = %bb.p
  %i.bq = inttoptr i64 %..i.i to ptr              ; 2 uses
  %i.br = load i64, ptr %i.bq, align 8, !tbaa !99
  %i.bs = and i64 %i.br, 8192
  %.not.i14.i13 = icmp eq i64 %i.bs, 0
  %i.bt = getelementptr i8, ptr %i.bq, i64 24     ; 2 uses
  br i1 %.not.i14.i13, label %RSTRING_PTR.exit15.i14, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !100
  br label %RSTRING_PTR.exit15.i14

RSTRING_PTR.exit15.i14:                           ; preds = %bb.s, %bb.r
  %i.bv = phi ptr [ %i.bu, %bb.s ], [ %i.bt, %bb.r ]
  %i.bw = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @.str.33, ptr noundef %i.bm, i32 noundef %.sroa.6.0, ptr noundef %i.bv) #7 ; 0 uses
  br label %oldbt_bugreport.exit

oldbt_bugreport.exit:                             ; preds = %RSTRING_PTR.exit15.i14, %bb.q, %RSTRING_PTR.exit15.i, %bb.i, %bb.d
  %.sroa.5.1 = phi i64 [ %.sroa.5.2, %RSTRING_PTR.exit15.i ], [ %.sroa.5.0, %bb.d ], [ %.sroa.5.2, %bb.i ], [ %.sroa.5.3, %bb.q ], [ %.sroa.5.3, %RSTRING_PTR.exit15.i14 ]
  %.sroa.6.1 = phi i32 [ %i.ai, %RSTRING_PTR.exit15.i ], [ %.sroa.6.0, %bb.d ], [ %i.ai, %bb.i ], [ %.sroa.6.0, %bb.q ], [ %.sroa.6.0, %RSTRING_PTR.exit15.i14 ]
  %.sroa.0.1 = phi i64 [ %i.v, %RSTRING_PTR.exit15.i ], [ %.sroa.0.0, %bb.d ], [ %i.v, %bb.i ], [ %.sroa.0.0, %bb.q ], [ %.sroa.0.0, %RSTRING_PTR.exit15.i14 ]
  %i.bx = add nuw nsw i64 %.036.i, 1
  %i.by = getelementptr i8, ptr %.02935.i, i64 -56
  %exitcond.not.i = icmp eq i64 %.036.i, %i.n
  br i1 %exitcond.not.i, label %backtrace_each.exit, label %.lr.ph.i, !llvm.loop !2

backtrace_each.exit:                              ; preds = %oldbt_bugreport.exit, %bb.a, %bb.b, %bb.c
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #3

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @rb_backtrace() local_unnamed_addr #0 !guid !233 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = load ptr, ptr @stderr, align 8, !tbaa !235 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.c = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @ruby_current_ec)
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !140
  store volatile ptr %i.d, ptr %i.a, align 8, !tbaa !140
  %.0..0..0..0..0..0..0..0..0..0..i.i = load volatile ptr, ptr %i.a, align 8, !tbaa !140 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.e = getelementptr i8, ptr %.0..0..0..0..0..0..0..0..0..0..i.i, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !130  ; 2 uses
  %.val.i.i = load ptr, ptr %.0..0..0..0..0..0..0..0..0..0..i.i, align 8, !tbaa !131
  %i.g = getelementptr i8, ptr %.0..0..0..0..0..0..0..0..0..0..i.i, i64 8
  %.val34.i.i = load i64, ptr %i.g, align 8, !tbaa !132
  %i.h = getelementptr [8 x i8], ptr %.val.i.i, i64 %.val34.i.i ; 2 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %vm_backtrace_print.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr i8, ptr %i.h, i64 -112     ; 3 uses
  %i.k = icmp ult ptr %i.j, %i.f
  br i1 %i.k, label %vm_backtrace_print.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = ptrtoint ptr %i.j to i64
  %i.m = ptrtoint ptr %i.f to i64
  %i.n = sub i64 %i.l, %i.m                       ; 2 uses
  %i.o = sdiv exact i64 %i.n, 56
  %i.p = icmp sgt i64 %i.n, -56
  br i1 %i.p, label %.lr.ph.i.preheader.i, label %vm_backtrace_print.exit

.lr.ph.i.preheader.i:                             ; preds = %bb.c
  %i.q = load ptr, ptr @ruby_current_vm_ptr, align 8, !tbaa !142
  %i.r = getelementptr i8, ptr %i.q, i64 1216
  %i.s = load i64, ptr %i.r, align 8, !tbaa !165
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %oldbt_print.exit.i, %.lr.ph.i.preheader.i
  %.sroa.6.0.i = phi i32 [ %.sroa.6.1.i, %oldbt_print.exit.i ], [ 0, %.lr.ph.i.preheader.i ] ; 5 uses
  %.sroa.0.0.i = phi i64 [ %.sroa.0.1.i, %oldbt_print.exit.i ], [ %i.s, %.lr.ph.i.preheader.i ] ; 4 uses
  %.036.i.i = phi i64 [ %i.bz, %oldbt_print.exit.i ], [ 0, %.lr.ph.i.preheader.i ] ; 2 uses
  %.02935.i.i = phi ptr [ %i.ca, %oldbt_print.exit.i ], [ %i.j, %.lr.ph.i.preheader.i ] ; 4 uses
  %i.t = getelementptr i8, ptr %.02935.i.i, i64 16
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !72   ; 4 uses
  %.not.i.i = icmp eq ptr %i.u, null
  br i1 %.not.i.i, label %bb.j, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i.i
  %i.v = load ptr, ptr %.02935.i.i, align 8, !tbaa !73 ; 3 uses
  %.not33.i.i = icmp eq ptr %i.v, null
  br i1 %.not33.i.i, label %oldbt_print.exit.i, label %oldbt_iter_iseq.exit.i

oldbt_iter_iseq.exit.i:                           ; preds = %bb.d
  %i.w = tail call i64 @rb_iseq_path(ptr noundef nonnull %i.u) #7 ; 3 uses
  %i.x = getelementptr i8, ptr %i.u, i64 16
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !76   ; 2 uses
  %i.z = getelementptr i8, ptr %i.y, i64 80
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !166 ; 2 uses
  %i.ab = getelementptr i8, ptr %i.y, i64 8
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !96 ; 2 uses
  %i.ad = ptrtoint ptr %i.v to i64
  %i.ae = ptrtoint ptr %i.ac to i64
  %i.af = sub i64 %i.ad, %i.ae
  %i.ag = ashr exact i64 %i.af, 3                 ; 2 uses
  %i.ah = icmp sgt i64 %i.ag, -1
  tail call void @llvm.assume(i1 %i.ah)
  %.not.i.i.i.i = icmp eq ptr %i.v, %i.ac
  %i.ai = add nsw i64 %i.ag, -1
  %spec.select.i.i.i.i = select i1 %.not.i.i.i.i, i64 0, i64 %i.ai, !prof !97
  %i.aj = tail call i32 @rb_iseq_line_no(ptr noundef nonnull %i.u, i64 noundef %spec.select.i.i.i.i) #7 ; 4 uses
  %i.ak = icmp eq i64 %i.aa, 4
  %i.al = inttoptr i64 %i.w to ptr                ; 2 uses
  %i.am = load i64, ptr %i.al, align 8, !tbaa !99
  %i.an = and i64 %i.am, 8192
  %.not.i.i8.i = icmp eq i64 %i.an, 0             ; 2 uses
  %i.ao = getelementptr i8, ptr %i.al, i64 24     ; 4 uses
  br i1 %i.ak, label %bb.e, label %bb.g

bb.e:                                             ; preds = %oldbt_iter_iseq.exit.i
  br i1 %.not.i.i8.i, label %RSTRING_PTR.exit.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !100
  br label %RSTRING_PTR.exit.i.i

RSTRING_PTR.exit.i.i:                             ; preds = %bb.f, %bb.e
  %i.aq = phi ptr [ %i.ap, %bb.f ], [ %i.ao, %bb.e ]
  %i.ar = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %i.b, i32 noundef 1, ptr noundef nonnull @.str.34, ptr noundef %i.aq, i32 noundef %i.aj) #7 ; 0 uses
  br label %oldbt_print.exit.i

bb.g:                                             ; preds = %oldbt_iter_iseq.exit.i
  br i1 %.not.i.i8.i, label %RSTRING_PTR.exit9.i.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.as = load ptr, ptr %i.ao, align 8, !tbaa !100
  br label %RSTRING_PTR.exit9.i.i

RSTRING_PTR.exit9.i.i:                            ; preds = %bb.h, %bb.g
  %i.at = phi ptr [ %i.as, %bb.h ], [ %i.ao, %bb.g ]
  %i.au = inttoptr i64 %i.aa to ptr               ; 2 uses
  %i.av = load i64, ptr %i.au, align 8, !tbaa !99
  %i.aw = and i64 %i.av, 8192
  %.not.i10.i.i = icmp eq i64 %i.aw, 0
  %i.ax = getelementptr i8, ptr %i.au, i64 24     ; 2 uses
  br i1 %.not.i10.i.i, label %RSTRING_PTR.exit11.i.i, label %bb.i

bb.i:                                             ; preds = %RSTRING_PTR.exit9.i.i
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !100
  br label %RSTRING_PTR.exit11.i.i

RSTRING_PTR.exit11.i.i:                           ; preds = %bb.i, %RSTRING_PTR.exit9.i.i
  %i.az = phi ptr [ %i.ay, %bb.i ], [ %i.ax, %RSTRING_PTR.exit9.i.i ]
  %i.ba = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %i.b, i32 noundef 1, ptr noundef nonnull @.str.35, ptr noundef %i.at, i32 noundef %i.aj, ptr noundef %i.az) #7 ; 0 uses
  br label %oldbt_print.exit.i

bb.j:                                             ; preds = %.lr.ph.i.i
  %i.bb = tail call ptr @rb_vm_frame_method_entry(ptr noundef nonnull %.02935.i.i) #7
  %i.bc = getelementptr i8, ptr %i.bb, i64 16
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !169
  %i.be = getelementptr i8, ptr %i.bd, i64 32
  %i.bf = load i64, ptr %i.be, align 8, !tbaa !171
  %i.bg = tail call i64 @rb_id2str(i64 noundef %i.bf) #7 ; 2 uses
  %i.bh = and i64 %i.bg, -5
  %i.bi = icmp eq i64 %i.bh, 0
  %i.bj = inttoptr i64 %.sroa.0.0.i to ptr        ; 2 uses
  %i.bk = load i64, ptr %i.bj, align 8, !tbaa !99
  %i.bl = and i64 %i.bk, 8192
  %.not.i.i9.i = icmp eq i64 %i.bl, 0             ; 2 uses
  %i.bm = getelementptr i8, ptr %i.bj, i64 24     ; 4 uses
  br i1 %i.bi, label %bb.k, label %bb.m

bb.k:                                             ; preds = %bb.j
  br i1 %.not.i.i9.i, label %RSTRING_PTR.exit.i13.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !100
  br label %RSTRING_PTR.exit.i13.i

RSTRING_PTR.exit.i13.i:                           ; preds = %bb.l, %bb.k
  %i.bo = phi ptr [ %i.bn, %bb.l ], [ %i.bm, %bb.k ]
  %i.bp = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %i.b, i32 noundef 1, ptr noundef nonnull @.str.34, ptr noundef %i.bo, i32 noundef %.sroa.6.0.i) #7 ; 0 uses
  br label %oldbt_print.exit.i

bb.m:                                             ; preds = %bb.j
  br i1 %.not.i.i9.i, label %RSTRING_PTR.exit9.i10.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bq = load ptr, ptr %i.bm, align 8, !tbaa !100
  br label %RSTRING_PTR.exit9.i10.i

RSTRING_PTR.exit9.i10.i:                          ; preds = %bb.n, %bb.m
  %i.br = phi ptr [ %i.bq, %bb.n ], [ %i.bm, %bb.m ]
  %i.bs = inttoptr i64 %i.bg to ptr               ; 2 uses
  %i.bt = load i64, ptr %i.bs, align 8, !tbaa !99
  %i.bu = and i64 %i.bt, 8192
  %.not.i10.i11.i = icmp eq i64 %i.bu, 0
  %i.bv = getelementptr i8, ptr %i.bs, i64 24     ; 2 uses
  br i1 %.not.i10.i11.i, label %RSTRING_PTR.exit11.i12.i, label %bb.o

bb.o:                                             ; preds = %RSTRING_PTR.exit9.i10.i
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !100
  br label %RSTRING_PTR.exit11.i12.i

RSTRING_PTR.exit11.i12.i:                         ; preds = %bb.o, %RSTRING_PTR.exit9.i10.i
  %i.bx = phi ptr [ %i.bw, %bb.o ], [ %i.bv, %RSTRING_PTR.exit9.i10.i ]
  %i.by = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %i.b, i32 noundef 1, ptr noundef nonnull @.str.35, ptr noundef %i.br, i32 noundef %.sroa.6.0.i, ptr noundef %i.bx) #7 ; 0 uses
  br label %oldbt_print.exit.i

oldbt_print.exit.i:                               ; preds = %RSTRING_PTR.exit11.i12.i, %RSTRING_PTR.exit.i13.i, %RSTRING_PTR.exit11.i.i, %RSTRING_PTR.exit.i.i, %bb.d
  %.sroa.6.1.i = phi i32 [ %i.aj, %RSTRING_PTR.exit11.i.i ], [ %.sroa.6.0.i, %bb.d ], [ %i.aj, %RSTRING_PTR.exit.i.i ], [ %.sroa.6.0.i, %RSTRING_PTR.exit.i13.i ], [ %.sroa.6.0.i, %RSTRING_PTR.exit11.i12.i ]
  %.sroa.0.1.i = phi i64 [ %i.w, %RSTRING_PTR.exit11.i.i ], [ %.sroa.0.0.i, %bb.d ], [ %i.w, %RSTRING_PTR.exit.i.i ], [ %.sroa.0.0.i, %RSTRING_PTR.exit.i13.i ], [ %.sroa.0.0.i, %RSTRING_PTR.exit11.i12.i ]
  %i.bz = add nuw nsw i64 %.036.i.i, 1
  %i.ca = getelementptr i8, ptr %.02935.i.i, i64 -56
  %exitcond.not.i.i = icmp eq i64 %.036.i.i, %i.o
  br i1 %exitcond.not.i.i, label %vm_backtrace_print.exit, label %.lr.ph.i.i, !llvm.loop !2

vm_backtrace_print.exit:                          ; preds = %oldbt_print.exit.i, %bb.a, %bb.b, %bb.c
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define hidden void @rb_backtrace_each(ptr nofree noundef readonly captures(none) %0, i64 noundef %1) local_unnamed_addr #0 !guid !236 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
end_hunk_0
