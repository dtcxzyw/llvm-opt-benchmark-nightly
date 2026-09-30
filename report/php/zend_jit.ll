Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/php/original/zend_jit?download=true
inline.NumInlined: 2176
inline.NumDeleted: 168
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 21
loop-unroll.NumUnrolled: 25
begin_hunk_0
@.str.221 = private unnamed_addr constant [29 x i8] c"JIT$$hybrid_loop_hot_counter\00", align 1
@.str.222 = private unnamed_addr constant [31 x i8] c"JIT$$hybrid_func_trace_counter\00", align 1
@.str.223 = private unnamed_addr constant [30 x i8] c"JIT$$hybrid_ret_trace_counter\00", align 1
@.str.224 = private unnamed_addr constant [31 x i8] c"JIT$$hybrid_loop_trace_counter\00", align 1
@.str.225 = private unnamed_addr constant [16 x i8] c"JIT$$trace_halt\00", align 1
@.str.226 = private unnamed_addr constant [18 x i8] c"JIT$$trace_escape\00", align 1
@.str.227 = private unnamed_addr constant [16 x i8] c"JIT$$trace_exit\00", align 1
@.str.228 = private unnamed_addr constant [22 x i8] c"JIT$$undefined_offset\00", align 1
@.str.229 = private unnamed_addr constant [19 x i8] c"JIT$$undefined_key\00", align 1
@.str.230 = private unnamed_addr constant [24 x i8] c"JIT$$cannot_add_element\00", align 1
@.str.231 = private unnamed_addr constant [18 x i8] c"JIT$$assign_const\00", align 1
@.str.232 = private unnamed_addr constant [16 x i8] c"JIT$$assign_tmp\00", align 1
@.str.233 = private unnamed_addr constant [16 x i8] c"JIT$$assign_var\00", align 1
@.str.234 = private unnamed_addr constant [21 x i8] c"JIT$$assign_cv_noref\00", align 1
@.str.235 = private unnamed_addr constant [15 x i8] c"JIT$$assign_cv\00", align 1
@.str.236 = private unnamed_addr constant [15 x i8] c"JIT$$new_array\00", align 1
@zend_jit_stubs = internal unnamed_addr constant [32 x { ptr, ptr, i32, [4 x i8] }] [{ ptr, ptr, i32, [4 x i8] } { ptr @.str.205, ptr @zend_jit_exception_handler_stub, i32 32768, [4 x i8] zeroinitializer }, { ptr, ptr, i32, [4 x i8] } { ptr @.str.206, ptr @zend_jit_exception_handler_undef_stub, i32 32768, [4 x i8] zeroinitializer }, { ptr, ptr, i32, [4 x i8] } { ptr @.str.207, ptr @zend_jit_exception_handler_free_op2_stub, i32 32768, [4 x i8] zeroinitializer }, { ptr, ptr, i32, [4 x i8] } { ptr @.str.208, ptr @zend_jit_exception_handler_free_op1_op2_stub, i32 32768, [4 x i8] zeroinitializer }, { ptr, ptr, i32, [4 x i8] } { ptr @.str.209, ptr @zend_jit_interrupt_handler_stub, i32 32768, [4 x i8] zeroinitializer }, { ptr, ptr, i32, [4 x i8] } { ptr @.str.210, ptr @zend_jit_leave_function_handler_stub, i32 32768, [4 x i8] zeroinitializer }, { ptr, ptr, i32, [4 x i8] } { ptr @.str.211, ptr @zend_jit_negative_shift_stub, i32 32768, [4 x i8] zeroinitializer }, { ptr, ptr, i32, [4 x i8] } { ptr @.str.212, ptr @zend_jit_mod_by_zero_stub, i32 32768, [4 x i8] zeroinitializer }, { ptr, ptr, i32, [4 x i8] } { ptr @.str.213, ptr @zend_jit_invalid_this_stub, i32 32768, [4 x i8] zeroinitializer }, { ptr, ptr, i32, [4 x i8] } { ptr @.str.214, ptr @zend_jit_undefined_function_stub, i32 32768, [4 x i8] zeroinitializer }, { ptr, ptr, i32, [4 x i8] } { ptr @.str.215, ptr @zend_jit_throw_cannot_pass_by_ref_stub, i32 32768, [4 x i8] zeroinitializer }, { ptr, ptr, i32, [4 x i8] } { ptr @.str.216, ptr @zend_jit_icall_throw_stub, i32 32768, [4 x i8] zeroinitializer }, { ptr, ptr, i32, [4 x i8] } { ptr @.str.217, ptr @zend_jit_leave_throw_stub, i32 32768, [4 x i8] zeroinitializer }, { ptr, ptr, i32, [4 x i8] } { ptr @.str.218, ptr @zend_jit_hybrid_runtime_jit_stub, i32 98304, [4 x i8] zeroinitializer }, { ptr, ptr, i32, [4 x i8] } { ptr @.str.219, ptr @zend_jit_hybrid_profile_jit_stub, i32 98304, [4 x i8] zeroinitializer }, { ptr, ptr, i32, [4 x i8] } { ptr @.str.220, ptr @zend_jit_hybrid_func_hot_counter_stub, i32 98304, [4 x i8] zeroinitializer }, { ptr, ptr, i32, [4 x i8] } { ptr @.str.221, ptr @zend_jit_hybrid_loop_hot_counter_stub, i32 98304, [4 x i8] zeroinitializer }, { ptr, ptr, i32, [4 x i8] } { ptr @.str.222, ptr @zend_jit_hybrid_func_trace_counter_stub, i32 98304, [4 x i8] zeroinitializer }, { ptr, ptr, i32, [4 x i8] } { ptr @.str.223, ptr @zend_jit_hybrid_ret_trace_counter_stub, i32 98304, [4 x i8] zeroinitializer }, { ptr, ptr, i32, [4 x i8] } { ptr @.str.224, ptr @zend_jit_hybrid_loop_trace_counter_stub, i32 98304, [4 x i8] zeroinitializer }, { ptr, ptr, i32, [4 x i8] } { ptr @.str.225, ptr @zend_jit_trace_halt_stub, i32 32768, [4 x i8] zeroinitializer }, { ptr, ptr, i32, [4 x i8] } { ptr @.str.226, ptr @zend_jit_trace_escape_stub, i32 32768, [4 x i8] zeroinitializer }, { ptr, ptr, i32, [4 x i8] } { ptr @.str.227, ptr @zend_jit_trace_exit_stub, i32 32768, [4 x i8] zeroinitializer }, { ptr, ptr, i32, [4 x i8] } { ptr @.str.228, ptr @zend_jit_undefined_offset_stub, i32 258, [4 x i8] zeroinitializer }, { ptr, ptr, i32, [4 x i8] } { ptr @.str.229, ptr @zend_jit_undefined_key_stub, i32 258, [4 x i8] zeroinitializer }, { ptr, ptr, i32, [4 x i8] } { ptr @.str.230, ptr @zend_jit_cannot_add_element_stub, i32 258, [4 x i8] zeroinitializer }, { ptr, ptr, i32, [4 x i8] } { ptr @.str.231, ptr @zend_jit_assign_const_stub, i32 258, [4 x i8] zeroinitializer }, { ptr, ptr, i32, [4 x i8] } { ptr @.str.232, ptr @zend_jit_assign_tmp_stub, i32 258, [4 x i8] zeroinitializer }, { ptr, ptr, i32, [4 x i8] } { ptr @.str.233, ptr @zend_jit_assign_var_stub, i32 258, [4 x i8] zeroinitializer }, { ptr, ptr, i32, [4 x i8] } { ptr @.str.234, ptr @zend_jit_assign_cv_noref_stub, i32 258, [4 x i8] zeroinitializer }, { ptr, ptr, i32, [4 x i8] } { ptr @.str.235, ptr @zend_jit_assign_cv_stub, i32 258, [4 x i8] zeroinitializer }, { ptr, ptr, i32, [4 x i8] } { ptr @.str.236, ptr @zend_jit_new_array_stub, i32 258, [4 x i8] zeroinitializer }], align 16
@zend_ce_arithmetic_error = external local_unnamed_addr global ptr, align 8
@.str.238 = private unnamed_addr constant [29 x i8] c"Bit shift by negative number\00", align 1
@zend_ce_division_by_zero_error = external local_unnamed_addr global ptr, align 8
@.str.239 = private unnamed_addr constant [15 x i8] c"Modulo by zero\00", align 1
@.str.240 = private unnamed_addr constant [39 x i8] c"Using $this when not in object context\00", align 1
@.str.241 = private unnamed_addr constant [32 x i8] c"Call to undefined function %s()\00", align 1
@.str.242 = private unnamed_addr constant [72 x i8] c"Cannot add element to the array as the next element is already occupied\00", align 1
@.str.243 = private unnamed_addr constant [4 x i8] c"var\00", align 1
@.str.244 = private unnamed_addr constant [4 x i8] c"val\00", align 1
@.str.245 = private unnamed_addr constant [43 x i8] c"Could not allocate JIT root traces buffer!\00", align 1
@.str.246 = private unnamed_addr constant [43 x i8] c"Could not allocate JIT exit groups buffer!\00", align 1
@.str.247 = private unnamed_addr constant [36 x i8] c"Could not obtain JIT traces buffer!\00", align 1
@.str.248 = private unnamed_addr constant [41 x i8] c"Could not obtain JIT exit groups buffer!\00", align 1
@.str.249 = private unnamed_addr constant [45 x i8] c"Could not allocate JIT exit counters buffer!\00", align 1
@switch.table.zend_jit_incdec_obj = private unnamed_addr constant [4 x ptr] [ptr @zend_jit_inc_typed_prop, ptr @zend_jit_dec_typed_prop, ptr @zend_jit_inc_typed_prop, ptr @zend_jit_dec_typed_prop], align 8
@switch.table.zend_jit_incdec_obj.43 = private unnamed_addr constant [4 x ptr] [ptr @zend_jit_pre_inc_typed_prop, ptr @zend_jit_pre_dec_typed_prop, ptr @zend_jit_post_inc_typed_prop, ptr @zend_jit_post_dec_typed_prop], align 8
@switch.table.zend_jit_incdec_obj.44 = private unnamed_addr constant [4 x ptr] [ptr @zend_jit_pre_inc_typed_ref, ptr @zend_jit_pre_dec_typed_ref, ptr @zend_jit_post_inc_typed_ref, ptr @zend_jit_post_dec_typed_ref], align 8
@switch.table.zend_jit_incdec_obj.45 = private unnamed_addr constant [4 x ptr] [ptr @zend_jit_pre_inc_obj_helper, ptr @zend_jit_pre_dec_obj_helper, ptr @zend_jit_post_inc_obj_helper, ptr @zend_jit_post_dec_obj_helper], align 8

; Function Attrs: nounwind uwtable
define hidden i32 @zend_jit_duplicate_exit_point(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef captures(none) %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !34   ; 4 uses
  %i.c = icmp ugt i32 %i.b, 511
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i32 -28, ptr %i.d, align 8, !tbaa !53
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.e = add nuw nsw i32 %i.b, 1
  store i32 %i.e, ptr %i.a, align 8, !tbaa !34
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 4 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !54   ; 2 uses
  %i.h = zext nneg i32 %i.b to i64                ; 5 uses
  %i.i = getelementptr inbounds nuw [48 x i8], ptr %i.g, i64 %i.h
  %i.j = zext i32 %2 to i64
  %i.k = getelementptr inbounds nuw [48 x i8], ptr %i.g, i64 %i.j
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.i, ptr noundef nonnull align 8 dereferenceable(48) %i.k, i64 48, i1 false)
  %i.l = load ptr, ptr %i.f, align 8, !tbaa !54   ; 2 uses
  %i.m = getelementptr inbounds nuw [48 x i8], ptr %i.l, i64 %i.h
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 20
  %i.o = load i32, ptr %i.n, align 4, !tbaa !57   ; 3 uses
  %.not = icmp eq i32 %i.o, 0
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.q = load i32, ptr %i.p, align 8, !tbaa !58   ; 3 uses
  %i.r = add i32 %i.q, %i.o                       ; 2 uses
  store i32 %i.r, ptr %i.p, align 8, !tbaa !58
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !59
  %i.u = zext i32 %i.r to i64
  %i.v = shl nuw nsw i64 %i.u, 3
  %i.w = tail call ptr @_erealloc(ptr noundef %i.t, i64 noundef %i.v) #33 ; 3 uses
  store ptr %i.w, ptr %i.s, align 8, !tbaa !59
  %i.x = zext i32 %i.q to i64
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %i.x
  %i.z = load ptr, ptr %i.f, align 8, !tbaa !54
  %i.aa = getelementptr inbounds nuw [48 x i8], ptr %i.z, i64 %i.h
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 24
  %i.ac = load i32, ptr %i.ab, align 8, !tbaa !60
  %i.ad = zext i32 %i.ac to i64
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %i.ad
  %i.af = zext i32 %i.o to i64
  %i.ag = shl nuw nsw i64 %i.af, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.y, ptr align 4 %i.ae, i64 %i.ag, i1 false)
  %i.ah = load ptr, ptr %i.f, align 8, !tbaa !54  ; 2 uses
  %i.ai = getelementptr inbounds nuw [48 x i8], ptr %i.ah, i64 %i.h
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 24
  store i32 %i.q, ptr %i.aj, align 8, !tbaa !60
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.ak = phi ptr [ %i.ah, %bb.d ], [ %i.l, %bb.c ]
  %i.al = getelementptr inbounds nuw [48 x i8], ptr %i.ak, i64 %i.h
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 16 ; 2 uses
  %i.an = load i32, ptr %i.am, align 8, !tbaa !61
  %i.ao = and i32 %i.an, 2147483647
  store i32 %i.ao, ptr %i.am, align 8, !tbaa !61
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.b
  %.0 = phi i32 [ %2, %bb.b ], [ %i.b, %bb.e ]
  ret i32 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: allocsize(1)
declare ptr @_erealloc(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nounwind uwtable
define hidden ptr @zend_jit_snapshot_handler(ptr noundef %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2, ptr noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1016
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !71   ; 8 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 2
  %i.d = load i16, ptr %i.c, align 2, !tbaa !72   ; 2 uses
  %i.e = zext i16 %i.d to i32                     ; 3 uses
  %i.f = load ptr, ptr @zend_jit_traces, align 8, !tbaa !73
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.h = load i32, ptr %i.g, align 8, !tbaa !34
  %i.i = add i32 %i.h, 31
  %i.j = lshr i32 %i.i, 5                         ; 2 uses
  %.not16.i = icmp eq i32 %i.j, 0
  br i1 %.not16.i, label %zend_jit_exit_point_by_addr.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a
  %i.k = load ptr, ptr @zend_jit_exit_groups, align 8, !tbaa !74
  %wide.trip.count.i = zext nneg i32 %i.j to i64
  br label %bb.b

bb.b:                                             ; preds = %bb.d, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.d ] ; 3 uses
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %indvars.iv.i
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !75   ; 3 uses
  %.not.i = icmp ult ptr %3, %i.m
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 124
  %.not13.i = icmp ugt ptr %3, %i.n
  %or.cond.i = select i1 %.not.i, i1 true, i1 %.not13.i
  br i1 %or.cond.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.o = trunc nuw nsw i64 %indvars.iv.i to i32
  %i.p = shl nuw i32 %i.o, 5
  %i.q = ptrtoint ptr %3 to i64
  %i.r = ptrtoint ptr %i.m to i64
  %i.s = sub i64 %i.q, %i.r
  %i.t = sdiv i64 %i.s, 4
  %i.u = trunc i64 %i.t to i32
  %i.v = add i32 %i.p, %i.u
  br label %zend_jit_exit_point_by_addr.exit

bb.d:                                             ; preds = %bb.b
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %zend_jit_exit_point_by_addr.exit, label %bb.b, !llvm.loop !0

zend_jit_exit_point_by_addr.exit:                 ; preds = %bb.d, %bb.a, %bb.c
  %.010.i = phi i32 [ %i.v, %bb.c ], [ -1, %bb.a ], [ -1, %bb.d ] ; 7 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 13 uses
  %i.x = load i32, ptr %i.w, align 8, !tbaa !34
  %i.y = icmp ult i32 %.010.i, %i.x
  tail call void @llvm.assume(i1 %i.y)
  %i.z = getelementptr inbounds nuw i8, ptr %i.b, i64 72 ; 34 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !54
  %i.ab = zext i32 %.010.i to i64                 ; 5 uses
  %i.ac = getelementptr inbounds nuw [48 x i8], ptr %i.aa, i64 %i.ab
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !61 ; 7 uses
  %i.af = and i32 %i.ae, 512
  %.not = icmp eq i32 %i.af, 0
  br i1 %.not, label %bb.q, label %bb.e

bb.e:                                             ; preds = %zend_jit_exit_point_by_addr.exit
  %i.ag = add nsw i32 %i.e, -1
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 2 uses
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !469 ; 2 uses
  %i.aj = sext i32 %1 to i64                      ; 2 uses
  %i.ak = getelementptr inbounds [4 x i8], ptr %i.ai, i64 %i.aj
  %i.al = sext i32 %i.ag to i64                   ; 2 uses
  %i.am = getelementptr inbounds i8, ptr %i.ak, i64 %i.al
  %i.an = load i8, ptr %i.am, align 1, !tbaa !72  ; 3 uses
  %i.ao = icmp ne i8 %i.an, -1
  tail call void @llvm.assume(i1 %i.ao)
  %.not.i252 = icmp ult i8 %i.an, 64
  br i1 %.not.i252, label %zend_jit_resolve_ref_snapshot.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.aq = load i32, ptr %i.ap, align 8, !tbaa !77
  %4 = and i32 %i.aq, 2048
  %.not15.i = icmp eq i32 %4, 0
  %5 = select i1 %.not15.i, i8 68, i8 69
  %i.ar = getelementptr inbounds [4 x i8], ptr %2, i64 %i.al
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !78
  %i.at = tail call i32 @ir_get_spill_slot_offset(ptr noundef nonnull %0, i32 noundef %i.as) #34
  %.pre = load ptr, ptr %i.ah, align 8, !tbaa !469
  br label %zend_jit_resolve_ref_snapshot.exit

zend_jit_resolve_ref_snapshot.exit:               ; preds = %bb.e, %bb.f
  %i.au = phi ptr [ %.pre, %bb.f ], [ %i.ai, %bb.e ]
  %.014.i = phi i8 [ %5, %bb.f ], [ %i.an, %bb.e ] ; 3 uses
  %.0.i = phi i32 [ %i.at, %bb.f ], [ 0, %bb.e ]  ; 2 uses
  %i.av = getelementptr inbounds [4 x i8], ptr %i.au, i64 %i.aj
  %i.aw = zext i16 %i.d to i64                    ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.av, i64 %i.aw
  %i.ay = load i8, ptr %i.ax, align 1, !tbaa !72  ; 3 uses
  %i.az = icmp ne i8 %i.ay, -1
  tail call void @llvm.assume(i1 %i.az)
  %.not.i253 = icmp ult i8 %i.ay, 64
  br i1 %.not.i253, label %zend_jit_resolve_ref_snapshot.exit257, label %bb.g

bb.g:                                             ; preds = %zend_jit_resolve_ref_snapshot.exit
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.bb = load i32, ptr %i.ba, align 8, !tbaa !77
  %6 = and i32 %i.bb, 2048
  %.not15.i254 = icmp eq i32 %6, 0
  %7 = select i1 %.not15.i254, i8 68, i8 69
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.aw
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !78
  %i.be = tail call i32 @ir_get_spill_slot_offset(ptr noundef nonnull %0, i32 noundef %i.bd) #34
  br label %zend_jit_resolve_ref_snapshot.exit257

zend_jit_resolve_ref_snapshot.exit257:            ; preds = %zend_jit_resolve_ref_snapshot.exit, %bb.g
  %.014.i255 = phi i8 [ %7, %bb.g ], [ %i.ay, %zend_jit_resolve_ref_snapshot.exit ] ; 3 uses
  %.0.i256 = phi i32 [ %i.be, %bb.g ], [ 0, %zend_jit_resolve_ref_snapshot.exit ] ; 2 uses
  %.not226 = icmp sgt i32 %i.ae, -1
  %.pre326.a = load ptr, ptr %i.z, align 8, !tbaa !54 ; 6 uses
  br i1 %.not226, label %zend_jit_ref_snapshot_equals.exit260.thread, label %bb.h

bb.h:                                             ; preds = %zend_jit_resolve_ref_snapshot.exit257
  %i.bf = getelementptr inbounds nuw [48 x i8], ptr %.pre326.a, i64 %i.ab ; 5 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 28
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bf, i64 32
  %i.bi = load i8, ptr %i.bh, align 4, !tbaa !79
  %i.bj = icmp eq i8 %i.bi, %.014.i
  br i1 %i.bj, label %bb.i, label %zend_jit_ref_snapshot_equals.exit.thread308

bb.i:                                             ; preds = %bb.h
  %.not.i258.a = icmp samesign ult i8 %.014.i, 64
  br i1 %.not.i258.a, label %zend_jit_ref_snapshot_equals.exit.thread, label %zend_jit_ref_snapshot_equals.exit

zend_jit_ref_snapshot_equals.exit:                ; preds = %bb.i
  %i.bk = load i32, ptr %i.bg, align 4, !tbaa !72
  %i.bl = icmp eq i32 %i.bk, %.0.i
  br i1 %i.bl, label %zend_jit_ref_snapshot_equals.exit.thread, label %zend_jit_ref_snapshot_equals.exit.thread308

zend_jit_ref_snapshot_equals.exit.thread:         ; preds = %bb.i, %zend_jit_ref_snapshot_equals.exit
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bf, i64 36
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bf, i64 40
  %i.bo = load i8, ptr %i.bn, align 4, !tbaa !79
  %i.bp = icmp eq i8 %i.bo, %.014.i255
  br i1 %i.bp, label %bb.j, label %zend_jit_ref_snapshot_equals.exit.thread308

bb.j:                                             ; preds = %zend_jit_ref_snapshot_equals.exit.thread
  %.not.i259 = icmp samesign ult i8 %.014.i255, 64
  br i1 %.not.i259, label %zend_jit_ref_snapshot_equals.exit260.thread, label %zend_jit_ref_snapshot_equals.exit260

zend_jit_ref_snapshot_equals.exit260:             ; preds = %bb.j
  %i.bq = load i32, ptr %i.bm, align 4, !tbaa !72
  %i.br = icmp eq i32 %i.bq, %.0.i256
  br i1 %i.br, label %zend_jit_ref_snapshot_equals.exit260.thread, label %zend_jit_ref_snapshot_equals.exit.thread308

zend_jit_ref_snapshot_equals.exit.thread308:      ; preds = %zend_jit_ref_snapshot_equals.exit.thread, %bb.h, %zend_jit_ref_snapshot_equals.exit260, %zend_jit_ref_snapshot_equals.exit
  %i.bs = load i32, ptr %i.w, align 8, !tbaa !34  ; 4 uses
  %i.bt = icmp ugt i32 %i.bs, 511
  br i1 %i.bt, label %bb.k, label %bb.l

bb.k:                                             ; preds = %zend_jit_ref_snapshot_equals.exit.thread308
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i32 -28, ptr %i.bu, align 8, !tbaa !53
  br label %zend_jit_duplicate_exit_point.exit

bb.l:                                             ; preds = %zend_jit_ref_snapshot_equals.exit.thread308
  %i.bv = add nuw nsw i32 %i.bs, 1
  store i32 %i.bv, ptr %i.w, align 8, !tbaa !34
  %i.bw = zext nneg i32 %i.bs to i64              ; 5 uses
  %i.bx = getelementptr inbounds nuw [48 x i8], ptr %.pre326.a, i64 %i.bw
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.bx, ptr noundef nonnull align 8 dereferenceable(48) %i.bf, i64 48, i1 false)
  %i.by = load ptr, ptr %i.z, align 8, !tbaa !54  ; 2 uses
  %i.bz = getelementptr inbounds nuw [48 x i8], ptr %i.by, i64 %i.bw
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 20
  %i.cb = load i32, ptr %i.ca, align 4, !tbaa !57 ; 3 uses
  %.not.i261 = icmp eq i32 %i.cb, 0
  br i1 %.not.i261, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.cc = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 2 uses
  %i.cd = load i32, ptr %i.cc, align 8, !tbaa !58 ; 3 uses
  %i.ce = add i32 %i.cd, %i.cb                    ; 2 uses
  store i32 %i.ce, ptr %i.cc, align 8, !tbaa !58
  %i.cf = getelementptr inbounds nuw i8, ptr %i.b, i64 80 ; 2 uses
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !59
  %i.ch = zext i32 %i.ce to i64
  %i.ci = shl nuw nsw i64 %i.ch, 3
  %i.cj = tail call ptr @_erealloc(ptr noundef %i.cg, i64 noundef %i.ci) #33 ; 3 uses
  store ptr %i.cj, ptr %i.cf, align 8, !tbaa !59
  %i.ck = zext i32 %i.cd to i64
  %i.cl = getelementptr inbounds nuw [8 x i8], ptr %i.cj, i64 %i.ck
  %i.cm = load ptr, ptr %i.z, align 8, !tbaa !54
  %i.cn = getelementptr inbounds nuw [48 x i8], ptr %i.cm, i64 %i.bw
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 24
  %i.cp = load i32, ptr %i.co, align 8, !tbaa !60
  %i.cq = zext i32 %i.cp to i64
  %i.cr = getelementptr inbounds nuw [8 x i8], ptr %i.cj, i64 %i.cq
  %i.cs = zext i32 %i.cb to i64
  %i.ct = shl nuw nsw i64 %i.cs, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.cl, ptr align 4 %i.cr, i64 %i.ct, i1 false)
  %i.cu = load ptr, ptr %i.z, align 8, !tbaa !54  ; 2 uses
  %i.cv = getelementptr inbounds nuw [48 x i8], ptr %i.cu, i64 %i.bw
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 24
  store i32 %i.cd, ptr %i.cw, align 8, !tbaa !60
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.cx = phi ptr [ %i.cu, %bb.m ], [ %i.by, %bb.l ] ; 2 uses
  %i.cy = getelementptr inbounds nuw [48 x i8], ptr %i.cx, i64 %i.bw
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 16 ; 2 uses
  %i.da = load i32, ptr %i.cz, align 8, !tbaa !61
  %i.db = and i32 %i.da, 2147483647
  store i32 %i.db, ptr %i.cz, align 8, !tbaa !61
  br label %zend_jit_duplicate_exit_point.exit

zend_jit_duplicate_exit_point.exit:               ; preds = %bb.k, %bb.n
  %.pre325362 = phi ptr [ %.pre326.a, %bb.k ], [ %i.cx, %bb.n ]
  %.0.i262 = phi i32 [ %.010.i, %bb.k ], [ %i.bs, %bb.n ] ; 6 uses
  %i.dc = load ptr, ptr @zend_jit_traces, align 8, !tbaa !73
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 16
  %i.de = load i32, ptr %i.dd, align 8, !tbaa !34
  %.not.i263 = icmp ult i32 %.0.i262, %i.de
  br i1 %.not.i263, label %bb.p, label %bb.o, !prof !80

bb.o:                                             ; preds = %zend_jit_duplicate_exit_point.exit
  %i.df = tail call fastcc ptr @zend_jit_trace_allocate_exit_point(i32 noundef %.0.i262)
  %.pre325.pre = load ptr, ptr %i.z, align 8, !tbaa !54
  br label %zend_jit_trace_get_exit_addr.exit

bb.p:                                             ; preds = %zend_jit_duplicate_exit_point.exit
  %i.dg = load ptr, ptr @zend_jit_exit_groups, align 8, !tbaa !74
  %i.dh = lshr i32 %.0.i262, 5
  %i.di = zext nneg i32 %i.dh to i64
  %i.dj = getelementptr inbounds nuw [8 x i8], ptr %i.dg, i64 %i.di
  %i.dk = load ptr, ptr %i.dj, align 8, !tbaa !75
  %i.dl = shl i32 %.0.i262, 2
  %i.dm = and i32 %i.dl, 124
  %i.dn = zext nneg i32 %i.dm to i64
  %i.do = getelementptr inbounds nuw i8, ptr %i.dk, i64 %i.dn
  br label %zend_jit_trace_get_exit_addr.exit

zend_jit_trace_get_exit_addr.exit:                ; preds = %bb.o, %bb.p
  %.pre325 = phi ptr [ %.pre325.pre, %bb.o ], [ %.pre325362, %bb.p ]
  %.0.i264 = phi ptr [ %i.df, %bb.o ], [ %i.do, %bb.p ]
  %i.dp = and i32 %i.ae, 2147483647
  %.pre401 = zext i32 %.0.i262 to i64
  br label %zend_jit_ref_snapshot_equals.exit260.thread

zend_jit_ref_snapshot_equals.exit260.thread:      ; preds = %bb.j, %zend_jit_trace_get_exit_addr.exit, %zend_jit_ref_snapshot_equals.exit260, %zend_jit_resolve_ref_snapshot.exit257
  %.pre-phi402 = phi i64 [ %i.ab, %bb.j ], [ %.pre401, %zend_jit_trace_get_exit_addr.exit ], [ %i.ab, %zend_jit_ref_snapshot_equals.exit260 ], [ %i.ab, %zend_jit_resolve_ref_snapshot.exit257 ] ; 2 uses
  %i.dq = phi ptr [ %.pre326.a, %bb.j ], [ %.pre325, %zend_jit_trace_get_exit_addr.exit ], [ %.pre326.a, %zend_jit_ref_snapshot_equals.exit260 ], [ %.pre326.a, %zend_jit_resolve_ref_snapshot.exit257 ]
  %.0212 = phi i32 [ %.010.i, %bb.j ], [ %.0.i262, %zend_jit_trace_get_exit_addr.exit ], [ %.010.i, %zend_jit_ref_snapshot_equals.exit260 ], [ %.010.i, %zend_jit_resolve_ref_snapshot.exit257 ]
  %.0202 = phi i32 [ %i.ae, %bb.j ], [ %i.dp, %zend_jit_trace_get_exit_addr.exit ], [ %i.ae, %zend_jit_ref_snapshot_equals.exit260 ], [ %i.ae, %zend_jit_resolve_ref_snapshot.exit257 ]
  %.0 = phi ptr [ %3, %bb.j ], [ %.0.i264, %zend_jit_trace_get_exit_addr.exit ], [ %3, %zend_jit_ref_snapshot_equals.exit260 ], [ %3, %zend_jit_resolve_ref_snapshot.exit257 ]
  %i.dr = getelementptr inbounds nuw [48 x i8], ptr %i.dq, i64 %.pre-phi402
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 28
  %.sroa.5302.0.insert.ext = zext nneg i8 %.014.i to i64
  %.sroa.5302.0.insert.shift = shl nuw nsw i64 %.sroa.5302.0.insert.ext, 32
  %.sroa.0301.0.insert.ext = zext i32 %.0.i to i64
  %.sroa.0301.0.insert.insert = or disjoint i64 %.sroa.5302.0.insert.shift, %.sroa.0301.0.insert.ext
  store i64 %.sroa.0301.0.insert.insert, ptr %i.ds, align 4
  %i.dt = load ptr, ptr %i.z, align 8, !tbaa !54
  %i.du = getelementptr inbounds nuw [48 x i8], ptr %i.dt, i64 %.pre-phi402
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 36
  %.sroa.5.0.insert.ext = zext nneg i8 %.014.i255 to i64
  %.sroa.5.0.insert.shift = shl nuw nsw i64 %.sroa.5.0.insert.ext, 32
  %.sroa.0.0.insert.ext = zext i32 %.0.i256 to i64
  %.sroa.0.0.insert.insert = or disjoint i64 %.sroa.5.0.insert.shift, %.sroa.0.0.insert.ext
  store i64 %.sroa.0.0.insert.insert, ptr %i.dv, align 4
  %i.dw = add nsw i32 %i.e, -2
  br label %bb.q

bb.q:                                             ; preds = %zend_jit_ref_snapshot_equals.exit260.thread, %zend_jit_exit_point_by_addr.exit
  %.1213 = phi i32 [ %.0212, %zend_jit_ref_snapshot_equals.exit260.thread ], [ %.010.i, %zend_jit_exit_point_by_addr.exit ] ; 2 uses
  %.1203 = phi i32 [ %.0202, %zend_jit_ref_snapshot_equals.exit260.thread ], [ %i.ae, %zend_jit_exit_point_by_addr.exit ]
  %.0201 = phi i32 [ %i.dw, %zend_jit_ref_snapshot_equals.exit260.thread ], [ %i.e, %zend_jit_exit_point_by_addr.exit ] ; 2 uses
  %.1 = phi ptr [ %.0, %zend_jit_ref_snapshot_equals.exit260.thread ], [ %3, %zend_jit_exit_point_by_addr.exit ] ; 2 uses
  %.not227315 = icmp slt i32 %.0201, 2
  br i1 %.not227315, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.q
  %i.dx = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.dy = sext i32 %1 to i64
  %i.dz = getelementptr inbounds nuw i8, ptr %i.b, i64 80 ; 21 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 10 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 5 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %i.b, i64 88 ; 2 uses
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.b, i64 96 ; 2 uses
  %i.ed = add nuw nsw i32 %.0201, 1
  %wide.trip.count = zext nneg i32 %i.ed to i64
  br label %bb.r

bb.r:                                             ; preds = %.lr.ph, %bb.ca
  %indvars.iv = phi i64 [ 2, %.lr.ph ], [ %indvars.iv.next, %bb.ca ] ; 4 uses
  %.2319 = phi ptr [ %.1, %.lr.ph ], [ %.9, %bb.ca ] ; 14 uses
  %.2204317 = phi i32 [ %.1203, %.lr.ph ], [ %.9211, %bb.ca ] ; 24 uses
  %.2214316 = phi i32 [ %.1213, %.lr.ph ], [ %.9221, %bb.ca ] ; 20 uses
  %i.ee = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv
  %i.ef = load i32, ptr %i.ee, align 4, !tbaa !78 ; 5 uses
  %.not228 = icmp eq i32 %i.ef, 0
  br i1 %.not228, label %bb.ca, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.eg = load ptr, ptr %i.dx, align 8, !tbaa !469
  %i.eh = getelementptr inbounds [4 x i8], ptr %i.eg, i64 %i.dy
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eh, i64 %indvars.iv
  %i.ej = load i8, ptr %i.ei, align 1, !tbaa !72  ; 8 uses
  %i.ek = add nsw i64 %indvars.iv, -2             ; 2 uses
  %i.el = load ptr, ptr %i.z, align 8, !tbaa !54  ; 11 uses
  %i.em = zext i32 %.2214316 to i64               ; 9 uses
  %i.en = getelementptr inbounds nuw [48 x i8], ptr %i.el, i64 %i.em ; 7 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %i.en, i64 20
  %i.ep = load i32, ptr %i.eo, align 4, !tbaa !57
  %i.eq = zext i32 %i.ep to i64
  %i.er = icmp samesign ult i64 %i.ek, %i.eq
  tail call void @llvm.assume(i1 %i.er)
  %i.es = load ptr, ptr %i.dz, align 8, !tbaa !59 ; 12 uses
end_hunk_0
begin_hunk_1_@zend_jit_trace:bb.a
  br i1 %i.jeq, label %bb.atp, label %bb.atq

bb.atp:                                           ; preds = %bb.ato
  %i.jer = load ptr, ptr %i.byg, align 8, !tbaa !236
  %i.jes = getelementptr inbounds [40 x i8], ptr %i.jer, i64 %i.jel
  %i.jet = getelementptr inbounds nuw i8, ptr %i.jes, i64 4 ; 2 uses
  %i.jeu = load i8, ptr %i.jet, align 4
  %i.jev = or i8 %i.jeu, 64
  store i8 %i.jev, ptr %i.jet, align 4
  br label %bb.atq

bb.atq:                                           ; preds = %bb.atp, %bb.ato, %bb.atn
  %i.jew = getelementptr inbounds nuw i8, ptr %i.byu, i64 31
  %i.jex = load i8, ptr %i.jew, align 1, !tbaa !254 ; 2 uses
  %i.jey = icmp eq i8 %i.jex, 0
  br i1 %i.jey, label %.thread11158, label %bb.atr

bb.atr:                                           ; preds = %bb.atq
  %i.jez = load ptr, ptr %i.byi, align 8, !tbaa !324 ; 2 uses
  %.not7634 = icmp eq ptr %i.jez, null
  br i1 %.not7634, label %bb.atu, label %bb.ats

bb.ats:                                           ; preds = %bb.atr
  %i.jfa = getelementptr inbounds nuw i8, ptr %.06572, i64 20
  %i.jfb = load i32, ptr %i.jfa, align 4, !tbaa !335 ; 2 uses
  %i.jfc = icmp sgt i32 %i.jfb, -1
  br i1 %i.jfc, label %bb.att, label %bb.atu

bb.att:                                           ; preds = %bb.ats
  %i.jfd = zext nneg i32 %i.jfb to i64
  %i.jfe = getelementptr inbounds nuw [8 x i8], ptr %i.jez, i64 %i.jfd
  %i.jff = load i32, ptr %i.jfe, align 4, !tbaa !323
  %.not7635 = icmp eq i32 %i.jff, 0
  br i1 %.not7635, label %bb.atu, label %.thread11158

bb.atu:                                           ; preds = %bb.att, %bb.ats, %bb.atr
  %i.jfg = icmp eq i8 %i.jex, 1
  br i1 %i.jfg, label %bb.atv, label %.thread11160

bb.atv:                                           ; preds = %bb.atu
  %i.jfh = getelementptr inbounds nuw i8, ptr %i.byu, i64 16
  %i.jfi = load i32, ptr %i.jfh, align 8, !tbaa !72
  %i.jfj = sext i32 %i.jfi to i64
  %i.jfk = getelementptr inbounds i8, ptr %i.byu, i64 %i.jfj
  %i.jfl = ptrtoint ptr %i.jfk to i64
  %i.jfm = and i64 %i.jfl, 3
  %i.jfn = icmp eq i64 %i.jfm, 2
  br i1 %i.jfn, label %.thread11158, label %.thread11160

.thread11160:                                     ; preds = %bb.atu, %bb.atv
  %i.jfo = call fastcc zeroext i1 @zend_jit_trace_next_is_send_result(ptr noundef nonnull %i.byu, ptr noundef nonnull %.3, ptr noundef %.06539)
  br i1 %i.jfo, label %bb.atw, label %.thread11158

bb.atw:                                           ; preds = %.thread11160
  call fastcc void @zend_jit_reuse_ip(ptr noundef %4)
  br label %.thread11158

.thread11158:                                     ; preds = %bb.att, %bb.atq, %bb.atw, %bb.atv, %.thread11160
  %.46445 = phi i8 [ %.06441, %bb.atv ], [ 1, %bb.atw ], [ %.06441, %.thread11160 ], [ %.06441, %bb.atq ], [ %.06441, %bb.att ]
  %i.jfp = load i64, ptr %i.g, align 8, !tbaa !144 ; 2 uses
  %i.jfq = and i32 %.0.i902511156, -1025
  br label %bb.aua

bb.atx:                                           ; preds = %bb.atl
  %i.jfr = load i32, ptr %i.e, align 4, !tbaa !78
  %i.jfs = and i32 %i.jfr, 1024
  %.not7632 = icmp eq i32 %i.jfs, 0
  br i1 %.not7632, label %bb.aua, label %bb.aty

bb.aty:                                           ; preds = %bb.atx
  %i.jft = call fastcc zeroext i1 @zend_jit_noref_guard(ptr noundef %4, ptr noundef nonnull %i.byu, i64 noundef %i.jdh)
  br i1 %i.jft, label %bb.atz, label %.thread9299

bb.atz:                                           ; preds = %bb.aty
  %i.jfu = load i32, ptr %i.e, align 4, !tbaa !78
  %i.jfv = and i32 %i.jfu, -1025
  store i32 %i.jfv, ptr %i.e, align 4, !tbaa !78
  %i.jfw = and i32 %.0.i902511156, -1025
  br label %bb.aua

bb.aua:                                           ; preds = %.thread11158, %bb.atz, %bb.atx, %bb.atk
  %i.jfx = phi i64 [ %i.jfp, %.thread11158 ], [ %i.jdh, %bb.atz ], [ %i.jdh, %bb.atx ], [ %i.jdh, %bb.atk ]
  %.06454 = phi i64 [ %i.jfp, %.thread11158 ], [ %i.jdi, %bb.atz ], [ %i.jdi, %bb.atx ], [ %i.jdi, %bb.atk ]
  %.56446 = phi i8 [ %.46445, %.thread11158 ], [ %.06441, %bb.atz ], [ %.06441, %bb.atx ], [ %.06441, %bb.atk ] ; 3 uses
  %.26419 = phi i32 [ %i.jfq, %.thread11158 ], [ %i.jfw, %bb.atz ], [ %.0.i902511156, %bb.atx ], [ %.0.i902511156, %bb.atk ]
  %i.jfy = getelementptr inbounds nuw i8, ptr %i.byu, i64 31
  %i.jfz = load i8, ptr %i.jfy, align 1, !tbaa !254 ; 2 uses
  %i.jga = icmp eq i8 %i.jfz, 0
  br i1 %i.jga, label %bb.aum, label %bb.aub

bb.aub:                                           ; preds = %bb.aua
  %i.jgb = load ptr, ptr %i.byi, align 8, !tbaa !324 ; 2 uses
  %.not7637 = icmp eq ptr %i.jgb, null
  br i1 %.not7637, label %bb.auf, label %bb.auc

bb.auc:                                           ; preds = %bb.aub
  %i.jgc = getelementptr inbounds nuw i8, ptr %.06572, i64 20
  %i.jgd = load i32, ptr %i.jgc, align 4, !tbaa !335 ; 2 uses
  %i.jge = icmp sgt i32 %i.jgd, -1
  br i1 %i.jge, label %bb.aud, label %bb.auf

bb.aud:                                           ; preds = %bb.auc
  %i.jgf = zext nneg i32 %i.jgd to i64            ; 2 uses
  %i.jgg = getelementptr inbounds nuw [8 x i8], ptr %i.jgb, i64 %i.jgf
  %i.jgh = load i32, ptr %i.jgg, align 4, !tbaa !323
  %.not7638 = icmp eq i32 %i.jgh, 0
  br i1 %.not7638, label %bb.auf, label %bb.aue

bb.aue:                                           ; preds = %bb.aud
  %i.jgi = shl nuw nsw i64 %i.jgf, 2
  %i.jgj = or disjoint i64 %i.jgi, 2
  br label %bb.aui

bb.auf:                                           ; preds = %bb.aud, %bb.auc, %bb.aub
  %i.jgk = icmp eq i8 %i.jfz, 1
  %i.jgl = getelementptr inbounds nuw i8, ptr %i.byu, i64 16
  %i.jgm = load i32, ptr %i.jgl, align 8, !tbaa !72 ; 2 uses
  br i1 %i.jgk, label %bb.aug, label %bb.auh

bb.aug:                                           ; preds = %bb.auf
  %i.jgn = sext i32 %i.jgm to i64
  %i.jgo = getelementptr inbounds i8, ptr %i.byu, i64 %i.jgn
  %i.jgp = ptrtoint ptr %i.jgo to i64
  br label %bb.aui

bb.auh:                                           ; preds = %bb.auf
  %i.jgq = zext i32 %i.jgm to i64
  %i.jgr = shl nuw nsw i64 %i.jgq, 8
  %i.jgs = or disjoint i64 %i.jgr, 49
  br label %bb.aui

bb.aui:                                           ; preds = %bb.aug, %bb.auh, %bb.aue
  %i.jgt = phi i64 [ %i.jgj, %bb.aue ], [ %i.jgp, %bb.aug ], [ %i.jgs, %bb.auh ] ; 3 uses
  %i.jgu = load ptr, ptr %i.byg, align 8, !tbaa !236 ; 2 uses
  %.not.i8398 = icmp eq ptr %i.jgu, null
  br i1 %.not.i8398, label %get_ssa_var_info.exit9041, label %_ssa_result_def_info.exit8399

_ssa_result_def_info.exit8399:                    ; preds = %bb.aui
  %i.jgv = getelementptr inbounds nuw i8, ptr %.06572, i64 20
  %i.jgw = load i32, ptr %i.jgv, align 4, !tbaa !335 ; 2 uses
  %i.jgx = icmp sgt i32 %i.jgw, -1
  br i1 %i.jgx, label %bb.auj, label %get_ssa_var_info.exit9041

bb.auj:                                           ; preds = %_ssa_result_def_info.exit8399
  %i.jgy = zext nneg i32 %i.jgw to i64
  %i.jgz = getelementptr inbounds nuw [40 x i8], ptr %i.jgu, i64 %i.jgy
  %i.jha = load i32, ptr %i.jgz, align 8, !tbaa !346
  br label %get_ssa_var_info.exit9041

get_ssa_var_info.exit9041:                        ; preds = %bb.aui, %_ssa_result_def_info.exit8399, %bb.auj
  %.0.i9040 = phi i32 [ %i.jha, %bb.auj ], [ -486539265, %_ssa_result_def_info.exit8399 ], [ -486539265, %bb.aui ] ; 3 uses
  %i.jhb = and i64 %i.jgt, 3
  %.not7639 = icmp eq i64 %i.jhb, 2
  br i1 %.not7639, label %bb.aum, label %bb.auk

bb.auk:                                           ; preds = %get_ssa_var_info.exit9041
  %i.jhc = call fastcc zeroext i1 @zend_jit_trace_next_is_send_result(ptr noundef nonnull %i.byu, ptr noundef nonnull %.3, ptr noundef %.06539)
  br i1 %i.jhc, label %bb.aul, label %bb.aum

bb.aul:                                           ; preds = %bb.auk
  %i.jhd = getelementptr inbounds nuw i8, ptr %i.byu, i64 48
  %i.jhe = load i32, ptr %i.jhd, align 8, !tbaa !72
  %i.jhf = zext i32 %i.jhe to i64
  %i.jhg = shl nuw nsw i64 %i.jhf, 8
  %i.jhh = or disjoint i64 %i.jhg, 53
  call fastcc void @zend_jit_reuse_ip(ptr noundef %4)
  br label %bb.aum

bb.aum:                                           ; preds = %bb.aua, %bb.aul, %get_ssa_var_info.exit9041, %bb.auk
  %.46462 = phi i64 [ %i.jgt, %get_ssa_var_info.exit9041 ], [ %i.jhh, %bb.aul ], [ %i.jgt, %bb.auk ], [ 0, %bb.aua ]
  %.66447 = phi i8 [ %.56446, %get_ssa_var_info.exit9041 ], [ 1, %bb.aul ], [ %.56446, %bb.auk ], [ %.56446, %bb.aua ] ; 4 uses
  %.16426 = phi i32 [ %.0.i9040, %get_ssa_var_info.exit9041 ], [ %.0.i9040, %bb.aul ], [ %.0.i9040, %bb.auk ], [ -1, %bb.aua ]
  %i.jhi = load i32, ptr %i.e, align 4, !tbaa !78 ; 2 uses
  %i.jhj = load i32, ptr %i.f, align 4, !tbaa !78 ; 2 uses
  %i.jhk = load i64, ptr %i.h, align 8, !tbaa !144
  %i.jhl = load i64, ptr %i.i, align 8, !tbaa !144
  %i.jhm = call zeroext i1 @zend_may_throw_ex(ptr noundef nonnull %i.byu, ptr noundef nonnull %.06572, ptr noundef %.06374, ptr noundef nonnull %i.aa, i32 noundef %i.jhi, i32 noundef %i.jhj) #34
  %i.jhn = zext i1 %i.jhm to i32
  call fastcc void @zend_jit_assign(ptr noundef %4, ptr noundef nonnull %i.byu, i32 noundef %i.jhi, i64 noundef %i.jfx, i32 noundef %.26419, i64 noundef %.06454, i32 noundef %i.jhj, i64 noundef %i.jhk, i64 noundef %.06457, i32 noundef %.16426, i64 noundef %.46462, i64 noundef %i.jhl, i32 noundef %i.jhn)
  %i.jho = load i32, ptr %i.isf, align 4, !tbaa !359 ; 2 uses
  %i.jhp = icmp sgt i32 %i.jho, -1
  br i1 %i.jhp, label %bb.aun, label %bb.aut

bb.aun:                                           ; preds = %bb.aum
  %i.jhq = load i64, ptr %i.h, align 8, !tbaa !144
  %i.jhr = and i64 %i.jhq, 3
  %i.jhs = icmp eq i64 %i.jhr, 2
  br i1 %i.jhs, label %bb.auo, label %bb.aut

bb.auo:                                           ; preds = %bb.aun
  %i.jht = load ptr, ptr %i.byh, align 8, !tbaa !239
  %i.jhu = zext nneg i32 %i.jho to i64
  %i.jhv = getelementptr inbounds nuw [48 x i8], ptr %i.jht, i64 %i.jhu ; 3 uses
  %i.jhw = getelementptr inbounds nuw i8, ptr %i.jhv, i64 40
  %i.jhx = load i8, ptr %i.jhw, align 8
  %i.jhy = trunc i8 %i.jhx to i1
  br i1 %i.jhy, label %bb.aup, label %bb.aut

bb.aup:                                           ; preds = %bb.auo
  %i.jhz = load i32, ptr %i.f, align 4, !tbaa !78
  %7 = and i32 %i.jhz, 16
  %.not7640 = icmp eq i32 %7, 0
  %8 = select i1 %.not7640, i8 5, i8 4            ; 4 uses
  %i.jia = getelementptr inbounds nuw i8, ptr %i.byu, i64 12
  %i.jib = load i32, ptr %i.jia, align 4, !tbaa !72
  %i.jic = lshr i32 %i.jib, 4
  %i.jid = add nsw i32 %i.jic, -5                 ; 2 uses
  %i.jie = zext i32 %i.jid to i64
  %i.jif = getelementptr inbounds nuw [8 x i8], ptr %.06545, i64 %i.jie ; 5 uses
  %i.jig = getelementptr inbounds nuw i8, ptr %i.jif, i64 1 ; 2 uses
  %i.jih = load i8, ptr %i.jig, align 1, !tbaa !72
  %.not7641 = icmp eq i8 %i.jih, %8
  br i1 %.not7641, label %bb.aut, label %bb.auq

bb.auq:                                           ; preds = %bb.aup
  %i.jii = getelementptr inbounds nuw i8, ptr %i.jhv, i64 12
  %i.jij = load i32, ptr %i.jii, align 4, !tbaa !242
  %i.jik = icmp slt i32 %i.jij, 0
  br i1 %i.jik, label %bb.aur, label %bb.aut

bb.aur:                                           ; preds = %bb.auq
  %i.jil = getelementptr inbounds nuw i8, ptr %i.jhv, i64 24
  %i.jim = load ptr, ptr %i.jil, align 8, !tbaa !243
  %.not7642 = icmp eq ptr %i.jim, null
  br i1 %.not7642, label %bb.aus, label %bb.aut

bb.aus:                                           ; preds = %bb.aur
  call fastcc void @zend_jit_store_type(ptr noundef %4, i32 noundef %i.jid, i8 noundef zeroext %8)
  store i8 %8, ptr %i.jif, align 4, !tbaa !72
  store i8 %8, ptr %i.jig, align 1, !tbaa !72
  %i.jin = getelementptr inbounds nuw i8, ptr %i.jif, i64 2
  store i8 -1, ptr %i.jin, align 2, !tbaa !72
  %i.jio = getelementptr inbounds nuw i8, ptr %i.jif, i64 3
  %i.jip = getelementptr inbounds nuw i8, ptr %i.jif, i64 4
  store i32 0, ptr %i.jip, align 4, !tbaa !82
  store i8 0, ptr %i.jio, align 1, !tbaa !72
  br label %bb.aut

bb.aut:                                           ; preds = %bb.aus, %bb.aur, %bb.auq, %bb.aup, %bb.auo, %bb.aun, %bb.aum
  %i.jiq = load i8, ptr %i.isc, align 2, !tbaa !355
  %i.jir = icmp eq i8 %i.jiq, 8
  br i1 %i.jir, label %bb.auu, label %thread-pre-split9690

bb.auu:                                           ; preds = %bb.aut
  %i.jis = load i32, ptr %i.isf, align 4, !tbaa !359 ; 2 uses
  %i.jit = icmp sgt i32 %i.jis, -1
  br i1 %i.jit, label %bb.auv, label %thread-pre-split9690

bb.auv:                                           ; preds = %bb.auu
  %i.jiu = load ptr, ptr %i.byh, align 8, !tbaa !239
  %i.jiv = zext nneg i32 %i.jis to i64            ; 2 uses
  %i.jiw = getelementptr inbounds nuw [48 x i8], ptr %i.jiu, i64 %i.jiv
  %i.jix = getelementptr inbounds nuw i8, ptr %i.jiw, i64 40
  %i.jiy = load i8, ptr %i.jix, align 8
  %i.jiz = and i8 %i.jiy, 12
  %i.jja = icmp eq i8 %i.jiz, 0
  br i1 %i.jja, label %bb.auw, label %thread-pre-split9690

bb.auw:                                           ; preds = %bb.auv
  %i.jjb = load ptr, ptr %i.byg, align 8, !tbaa !236 ; 2 uses
  %i.jjc = getelementptr inbounds nuw i8, ptr %.06572, i64 4
  %i.jjd = load i32, ptr %i.jjc, align 4, !tbaa !342
  %i.jje = sext i32 %i.jjd to i64
  %i.jjf = getelementptr inbounds [40 x i8], ptr %i.jjb, i64 %i.jje
  %i.jjg = getelementptr inbounds nuw i8, ptr %i.jjf, i64 4
  %i.jjh = load i8, ptr %i.jjg, align 4
  %i.jji = getelementptr inbounds nuw [40 x i8], ptr %i.jjb, i64 %i.jiv
  %i.jjj = getelementptr inbounds nuw i8, ptr %i.jji, i64 4 ; 2 uses
  %.lobit7643 = and i8 %i.jjh, 64
  %i.jjk = load i8, ptr %i.jjj, align 4
  %i.jjl = and i8 %i.jjk, -65
  %i.jjm = or disjoint i8 %i.jjl, %.lobit7643
  store i8 %i.jjm, ptr %i.jjj, align 4
  br label %thread-pre-split9690

bb.aux:                                           ; preds = %bb.nz
  %i.jjn = getelementptr inbounds nuw i8, ptr %i.byu, i64 20
  %i.jjo = load i32, ptr %i.jjn, align 4, !tbaa !356
  %i.jjp = zext i8 %.16633 to i32
  %.not7591 = icmp eq i32 %i.jjo, %i.jjp
  br i1 %.not7591, label %bb.auy, label %bb.cqb

bb.auy:                                           ; preds = %bb.aux, %bb.nz
  %i.jjq = load ptr, ptr %i.byi, align 8, !tbaa !324 ; 3 uses
  %.not7592 = icmp eq ptr %i.jjq, null            ; 2 uses
  br i1 %.not7592, label %bb.avc, label %bb.auz

bb.auz:                                           ; preds = %bb.auy
  %i.jjr = load i32, ptr %.06572, align 4, !tbaa !341 ; 2 uses
  %i.jjs = icmp sgt i32 %i.jjr, -1
  br i1 %i.jjs, label %bb.ava, label %bb.avc

bb.ava:                                           ; preds = %bb.auz
  %i.jjt = zext nneg i32 %i.jjr to i64            ; 2 uses
  %i.jju = getelementptr inbounds nuw [8 x i8], ptr %i.jjq, i64 %i.jjt
  %i.jjv = load i32, ptr %i.jju, align 4, !tbaa !323
  %.not7593 = icmp eq i32 %i.jjv, 0
  br i1 %.not7593, label %bb.avc, label %bb.avb

bb.avb:                                           ; preds = %bb.ava
  %i.jjw = shl nuw nsw i64 %i.jjt, 2
  %i.jjx = or disjoint i64 %i.jjw, 2
  br label %bb.avf

bb.avc:                                           ; preds = %bb.ava, %bb.auz, %bb.auy
  %i.jjy = getelementptr inbounds nuw i8, ptr %i.byu, i64 29
  %i.jjz = load i8, ptr %i.jjy, align 1, !tbaa !296
  %i.jka = icmp eq i8 %i.jjz, 1
  %i.jkb = getelementptr inbounds nuw i8, ptr %i.byu, i64 8
  %i.jkc = load i32, ptr %i.jkb, align 8, !tbaa !72 ; 2 uses
  br i1 %i.jka, label %bb.avd, label %bb.ave

bb.avd:                                           ; preds = %bb.avc
  %i.jkd = sext i32 %i.jkc to i64
  %i.jke = getelementptr inbounds i8, ptr %i.byu, i64 %i.jkd
  %i.jkf = ptrtoint ptr %i.jke to i64
  br label %bb.avf

bb.ave:                                           ; preds = %bb.avc
  %i.jkg = zext i32 %i.jkc to i64
  %i.jkh = shl nuw nsw i64 %i.jkg, 8
  %i.jki = or disjoint i64 %i.jkh, 49
  br label %bb.avf

bb.avf:                                           ; preds = %bb.avd, %bb.ave, %bb.avb
  %i.jkj = phi i64 [ %i.jjx, %bb.avb ], [ %i.jkf, %bb.avd ], [ %i.jki, %bb.ave ] ; 4 uses
  store i64 %i.jkj, ptr %i.g, align 8, !tbaa !144
  %i.jkk = getelementptr inbounds nuw i8, ptr %.06572, i64 12 ; 3 uses
  %i.jkl = load i32, ptr %i.jkk, align 4, !tbaa !353 ; 3 uses
  %i.jkm = icmp slt i32 %i.jkl, 0
  br i1 %i.jkm, label %bb.avo, label %bb.avg

bb.avg:                                           ; preds = %bb.avf
  %i.jkn = and i64 %i.jkj, 3
  %i.jko = icmp eq i64 %i.jkn, 2
  br i1 %i.jko, label %bb.avh, label %bb.avi

bb.avh:                                           ; preds = %bb.avg
  %i.jkp = load ptr, ptr %i.byh, align 8, !tbaa !239
  %i.jkq = zext nneg i32 %i.jkl to i64
  %i.jkr = getelementptr inbounds nuw [48 x i8], ptr %i.jkp, i64 %i.jkq
  %i.jks = getelementptr inbounds nuw i8, ptr %i.jkr, i64 40
  %i.jkt = load i8, ptr %i.jks, align 8
  %i.jku = trunc i8 %i.jkt to i1
  br i1 %i.jku, label %bb.avo, label %bb.avi

bb.avi:                                           ; preds = %bb.avh, %bb.avg
  br i1 %.not7592, label %bb.avl, label %bb.avj

bb.avj:                                           ; preds = %bb.avi
  %i.jkv = zext nneg i32 %i.jkl to i64            ; 2 uses
  %i.jkw = getelementptr inbounds nuw [8 x i8], ptr %i.jjq, i64 %i.jkv
  %i.jkx = load i32, ptr %i.jkw, align 4, !tbaa !323
  %.not7595 = icmp eq i32 %i.jkx, 0
  br i1 %.not7595, label %bb.avl, label %bb.avk

bb.avk:                                           ; preds = %bb.avj
  %i.jky = shl nuw nsw i64 %i.jkv, 2
  %i.jkz = or disjoint i64 %i.jky, 2
  br label %bb.avo

bb.avl:                                           ; preds = %bb.avj, %bb.avi
  %i.jla = getelementptr inbounds nuw i8, ptr %i.byu, i64 29
  %i.jlb = load i8, ptr %i.jla, align 1, !tbaa !296
  %i.jlc = icmp eq i8 %i.jlb, 1
  %i.jld = getelementptr inbounds nuw i8, ptr %i.byu, i64 8
  %i.jle = load i32, ptr %i.jld, align 8, !tbaa !72 ; 2 uses
  br i1 %i.jlc, label %bb.avm, label %bb.avn

bb.avm:                                           ; preds = %bb.avl
  %i.jlf = sext i32 %i.jle to i64
  %i.jlg = getelementptr inbounds i8, ptr %i.byu, i64 %i.jlf
  %i.jlh = ptrtoint ptr %i.jlg to i64
  br label %bb.avo

bb.avn:                                           ; preds = %bb.avl
  %i.jli = zext i32 %i.jle to i64
  %i.jlj = shl nuw nsw i64 %i.jli, 8
  %i.jlk = or disjoint i64 %i.jlj, 49
  br label %bb.avo

bb.avo:                                           ; preds = %bb.avf, %bb.avh, %bb.avk, %bb.avn, %bb.avm
  %.16455 = phi i64 [ %i.jlk, %bb.avn ], [ %i.jkz, %bb.avk ], [ %i.jlh, %bb.avm ], [ %i.jkj, %bb.avh ], [ %i.jkj, %bb.avf ]
  %i.jll = getelementptr inbounds nuw i8, ptr %i.byu, i64 29 ; 2 uses
  %i.jlm = load i8, ptr %i.jll, align 1, !tbaa !296
  %i.jln = icmp eq i8 %i.jlm, 1
  br i1 %i.jln, label %bb.avp, label %bb.avx

bb.avp:                                           ; preds = %bb.avo
  %i.jlo = getelementptr inbounds nuw i8, ptr %.06374, i64 4
  %i.jlp = load i32, ptr %i.jlo, align 4, !tbaa !111
  %i.jlq = and i32 %i.jlp, 33554432
  %.not9.i8325 = icmp eq i32 %i.jlq, 0
  br i1 %.not9.i8325, label %bb.avr, label %bb.avq

bb.avq:                                           ; preds = %bb.avp
  %i.jlr = getelementptr inbounds nuw i8, ptr %i.byu, i64 8
  %i.jls = load i32, ptr %i.jlr, align 8, !tbaa !72
  %i.jlt = sext i32 %i.jls to i64
  %i.jlu = getelementptr inbounds i8, ptr %i.byu, i64 %i.jlt
  br label %bb.avs

bb.avr:                                           ; preds = %bb.avp
  %i.jlv = getelementptr inbounds nuw i8, ptr %.06374, i64 192
  %i.jlw = load ptr, ptr %i.jlv, align 8, !tbaa !354
  %i.jlx = getelementptr inbounds nuw i8, ptr %i.byu, i64 8
  %i.jly = load i32, ptr %i.jlx, align 8, !tbaa !72
  %i.jlz = zext i32 %i.jly to i64
  %i.jma = getelementptr inbounds nuw [16 x i8], ptr %i.jlw, i64 %i.jlz
  br label %bb.avs

bb.avs:                                           ; preds = %bb.avr, %bb.avq
  %i.jmb = phi ptr [ %i.jlu, %bb.avq ], [ %i.jma, %bb.avr ] ; 3 uses
  %i.jmc = getelementptr inbounds nuw i8, ptr %i.jmb, i64 8
  %i.jmd = load i8, ptr %i.jmc, align 8, !tbaa !72 ; 3 uses
  switch i8 %i.jmd, label %bb.avu [
    i8 11, label %_ssa_op1_info.exit8326.thread
    i8 7, label %bb.avt
  ]

bb.avt:                                           ; preds = %bb.avs
  %i.jme = call i32 @zend_array_type_info(ptr noundef nonnull %i.jmb) #34
  br label %_ssa_op1_info.exit8326

bb.avu:                                           ; preds = %bb.avs
  %i.jmf = zext nneg i8 %i.jmd to i32
  %i.jmg = shl nuw i32 1, %i.jmf                  ; 2 uses
  %i.jmh = getelementptr inbounds nuw i8, ptr %i.jmb, i64 9
  %i.jmi = load i8, ptr %i.jmh, align 1, !tbaa !72
  %.not.i8834 = icmp eq i8 %i.jmi, 0
end_hunk_1
begin_hunk_2_@zend_jit_trace:bb.a
  %i.jnw = zext i32 %i.jnv to i64
  %i.jnx = getelementptr inbounds nuw [8 x i8], ptr %.06545, i64 %i.jnw
  %i.jny = getelementptr inbounds nuw i8, ptr %i.jnx, i64 3
  store i8 0, ptr %i.jny, align 1, !tbaa !72
  %i.jnz = load i32, ptr %i.jms, align 8, !tbaa !72
  %i.joa = lshr i32 %i.jnz, 4
  %i.job = add nsw i32 %i.joa, -5
  %i.joc = zext i32 %i.job to i64
  %i.jod = getelementptr inbounds nuw [8 x i8], ptr %.06545, i64 %i.joc
  %i.joe = getelementptr inbounds nuw i8, ptr %i.jod, i64 4
  store i32 0, ptr %i.joe, align 4, !tbaa !82
  %i.jof = load i32, ptr %i.jms, align 8, !tbaa !72
  %i.jog = lshr i32 %i.jof, 4
  %i.joh = add nsw i32 %i.jog, -5
  %i.joi = zext i32 %i.joh to i64
  %i.joj = getelementptr inbounds nuw [8 x i8], ptr %.06545, i64 %i.joi
  %i.jok = getelementptr inbounds nuw i8, ptr %i.joj, i64 3
  store i8 0, ptr %i.jok, align 1, !tbaa !72
  %i.jol = zext nneg i8 %i.byx to i32
  %i.jom = shl nuw i32 1, %i.jol                  ; 2 uses
  %i.jon = icmp ult i8 %i.byx, 6
  %.not.i8590 = icmp eq i8 %i.byx, 7
  %i.joo = or disjoint i32 %i.jom, -1073741824
  %spec.select9841 = select i1 %.not.i8590, i32 -520095616, i32 %i.joo
  %.0.i8591 = select i1 %i.jon, i32 %i.jom, i32 %spec.select9841
  store i32 %.0.i8591, ptr %i.e, align 4, !tbaa !78
  br label %bb.awd

bb.awc:                                           ; preds = %bb.awb
  store i8 %i.byx, ptr %i.jng, align 4, !tbaa !72
  %i.jop = load i32, ptr %i.jms, align 8, !tbaa !72
  %i.joq = lshr i32 %i.jop, 4
  %i.jor = add nsw i32 %i.joq, -5
  %i.jos = zext i32 %i.jor to i64
  %i.jot = getelementptr inbounds nuw [8 x i8], ptr %.06545, i64 %i.jos
  %i.jou = getelementptr inbounds nuw i8, ptr %i.jot, i64 1
  store i8 %i.byx, ptr %i.jou, align 1, !tbaa !72
  %i.jov = load i32, ptr %i.jms, align 8, !tbaa !72
  %i.jow = lshr i32 %i.jov, 4
  %i.jox = add nsw i32 %i.jow, -5
  %i.joy = zext i32 %i.jox to i64
  %i.joz = getelementptr inbounds nuw [8 x i8], ptr %.06545, i64 %i.joy
  %i.jpa = getelementptr inbounds nuw i8, ptr %i.joz, i64 2
  store i8 -1, ptr %i.jpa, align 2, !tbaa !72
  %i.jpb = load i32, ptr %i.jms, align 8, !tbaa !72
  %i.jpc = lshr i32 %i.jpb, 4
  %i.jpd = add nsw i32 %i.jpc, -5
  %i.jpe = zext i32 %i.jpd to i64
  %i.jpf = getelementptr inbounds nuw [8 x i8], ptr %.06545, i64 %i.jpe
  %i.jpg = getelementptr inbounds nuw i8, ptr %i.jpf, i64 3
  store i8 0, ptr %i.jpg, align 1, !tbaa !72
  %i.jph = load i32, ptr %i.jms, align 8, !tbaa !72
  %i.jpi = lshr i32 %i.jph, 4
  %i.jpj = add nsw i32 %i.jpi, -5
  %i.jpk = zext i32 %i.jpj to i64
  %i.jpl = getelementptr inbounds nuw [8 x i8], ptr %.06545, i64 %i.jpk
  %i.jpm = getelementptr inbounds nuw i8, ptr %i.jpl, i64 4
  store i32 0, ptr %i.jpm, align 4, !tbaa !82
  %i.jpn = load i32, ptr %i.jms, align 8, !tbaa !72
  %i.jpo = lshr i32 %i.jpn, 4
  %i.jpp = add nsw i32 %i.jpo, -5
  %i.jpq = zext i32 %i.jpp to i64
  %i.jpr = getelementptr inbounds nuw [8 x i8], ptr %.06545, i64 %i.jpq
  %i.jps = getelementptr inbounds nuw i8, ptr %i.jpr, i64 3
  store i8 0, ptr %i.jps, align 1, !tbaa !72
  %i.jpt = load i32, ptr %i.e, align 4, !tbaa !78
  %i.jpu = and i32 %i.jpt, -268435457             ; 2 uses
  store i32 %i.jpu, ptr %i.e, align 4, !tbaa !78
  %i.jpv = load ptr, ptr %i.byg, align 8, !tbaa !236
  %i.jpw = load i32, ptr %.06572, align 4, !tbaa !341
  %i.jpx = sext i32 %i.jpw to i64
  %i.jpy = getelementptr inbounds [40 x i8], ptr %i.jpv, i64 %i.jpx ; 2 uses
  %i.jpz = load i32, ptr %i.jpy, align 8, !tbaa !346
  %i.jqa = and i32 %i.jpz, %i.jpu
  store i32 %i.jqa, ptr %i.jpy, align 8, !tbaa !346
  br label %bb.awd

bb.awd:                                           ; preds = %_ssa_op1_info.exit8326.thread, %bb.awc, %zend_jit_trace_type_to_info_ex.exit8592, %_ssa_op1_info.exit8326
  %i.jqb = load ptr, ptr %i.byg, align 8, !tbaa !236 ; 2 uses
  %.not.i8396 = icmp eq ptr %i.jqb, null
  br i1 %.not.i8396, label %get_ssa_var_info.exit9044, label %_ssa_result_def_info.exit8397

_ssa_result_def_info.exit8397:                    ; preds = %bb.awd
  %i.jqc = getelementptr inbounds nuw i8, ptr %.06572, i64 20
  %i.jqd = load i32, ptr %i.jqc, align 4, !tbaa !335 ; 2 uses
  %i.jqe = icmp sgt i32 %i.jqd, -1
  br i1 %i.jqe, label %bb.awe, label %get_ssa_var_info.exit9044

bb.awe:                                           ; preds = %_ssa_result_def_info.exit8397
  %i.jqf = zext nneg i32 %i.jqd to i64
  %i.jqg = getelementptr inbounds nuw [40 x i8], ptr %i.jqb, i64 %i.jqf
  %i.jqh = load i32, ptr %i.jqg, align 8, !tbaa !346
  br label %get_ssa_var_info.exit9044

get_ssa_var_info.exit9044:                        ; preds = %bb.awd, %_ssa_result_def_info.exit8397, %bb.awe
  %.0.i9043 = phi i32 [ %i.jqh, %bb.awe ], [ -486539265, %_ssa_result_def_info.exit8397 ], [ -486539265, %bb.awd ]
  %i.jqi = getelementptr inbounds nuw i8, ptr %i.byu, i64 16
  %i.jqj = load i32, ptr %i.jqi, align 8, !tbaa !72 ; 3 uses
  %i.jqk = lshr i32 %i.jqj, 4
  %i.jql = add nsw i32 %i.jqk, -5
  %i.jqm = zext i32 %i.jql to i64
  %i.jqn = getelementptr inbounds nuw [8 x i8], ptr %.06545, i64 %i.jqm ; 2 uses
  %i.jqo = getelementptr inbounds nuw i8, ptr %i.jqn, i64 1
  %i.jqp = load i8, ptr %i.jqo, align 1, !tbaa !72 ; 5 uses
  %i.jqq = icmp eq i8 %i.jqp, -1
  br i1 %i.jqq, label %zend_jit_trace_type_to_info_ex.exit8595, label %bb.awf

bb.awf:                                           ; preds = %get_ssa_var_info.exit9044
  %i.jqr = zext nneg i8 %i.jqp to i32
  %i.jqs = shl nuw i32 1, %i.jqr                  ; 2 uses
  %i.jqt = icmp ult i8 %i.jqp, 6
  br i1 %i.jqt, label %zend_jit_trace_type_to_info_ex.exit8595, label %bb.awg

bb.awg:                                           ; preds = %bb.awf
  %.not.i8593 = icmp eq i8 %i.jqp, 7
  %i.jqu = or i32 %i.jqs, -1073741824
  %spec.select9842 = select i1 %.not.i8593, i32 -520095616, i32 %i.jqu
  br label %zend_jit_trace_type_to_info_ex.exit8595

zend_jit_trace_type_to_info_ex.exit8595:          ; preds = %bb.awg, %get_ssa_var_info.exit9044, %bb.awf
  %.0.i8594 = phi i32 [ %i.jqs, %bb.awf ], [ -1, %get_ssa_var_info.exit9044 ], [ %spec.select9842, %bb.awg ] ; 2 uses
  %i.jqv = getelementptr inbounds nuw i8, ptr %i.byu, i64 31
  %i.jqw = load i8, ptr %i.jqv, align 1, !tbaa !254 ; 2 uses
  %i.jqx = icmp eq i8 %i.jqw, 8
  %i.jqy = and i32 %.0.i8594, 63
  %spec.select8073 = select i1 %i.jqx, i32 %i.jqy, i32 %.0.i8594 ; 3 uses
  %i.jqz = load ptr, ptr %i.byi, align 8, !tbaa !324 ; 2 uses
  %.not7600 = icmp eq ptr %i.jqz, null
  br i1 %.not7600, label %bb.awk, label %bb.awh

bb.awh:                                           ; preds = %zend_jit_trace_type_to_info_ex.exit8595
  %i.jra = getelementptr inbounds nuw i8, ptr %.06572, i64 20
  %i.jrb = load i32, ptr %i.jra, align 4, !tbaa !335 ; 2 uses
  %i.jrc = icmp sgt i32 %i.jrb, -1
  br i1 %i.jrc, label %bb.awi, label %bb.awk

bb.awi:                                           ; preds = %bb.awh
  %i.jrd = zext nneg i32 %i.jrb to i64            ; 2 uses
  %i.jre = getelementptr inbounds nuw [8 x i8], ptr %i.jqz, i64 %i.jrd
  %i.jrf = load i32, ptr %i.jre, align 4, !tbaa !323
  %.not7601 = icmp eq i32 %i.jrf, 0
  br i1 %.not7601, label %bb.awk, label %bb.awj

bb.awj:                                           ; preds = %bb.awi
  %i.jrg = shl nuw nsw i64 %i.jrd, 2
  %i.jrh = or disjoint i64 %i.jrg, 2
  br label %bb.awn

bb.awk:                                           ; preds = %bb.awi, %bb.awh, %zend_jit_trace_type_to_info_ex.exit8595
  %i.jri = icmp eq i8 %i.jqw, 1
  br i1 %i.jri, label %bb.awl, label %bb.awm

bb.awl:                                           ; preds = %bb.awk
  %i.jrj = sext i32 %i.jqj to i64
  %i.jrk = getelementptr inbounds i8, ptr %i.byu, i64 %i.jrj
  %i.jrl = ptrtoint ptr %i.jrk to i64
  br label %bb.awn

bb.awm:                                           ; preds = %bb.awk
  %i.jrm = zext i32 %i.jqj to i64
  %i.jrn = shl nuw nsw i64 %i.jrm, 8
  %i.jro = or disjoint i64 %i.jrn, 49
  br label %bb.awn

bb.awn:                                           ; preds = %bb.awl, %bb.awm, %bb.awj
  %i.jrp = phi i64 [ %i.jrh, %bb.awj ], [ %i.jrl, %bb.awl ], [ %i.jro, %bb.awm ] ; 2 uses
  %i.jrq = and i64 %i.jrp, 3
  %.not7602 = icmp eq i64 %i.jrq, 2
  br i1 %.not7602, label %bb.awp, label %bb.awo

bb.awo:                                           ; preds = %bb.awn
  %i.jrr = load i8, ptr %i.jqn, align 4, !tbaa !72
  %.not7603 = icmp eq i8 %i.jrr, %i.jqp
  %i.jrs = or i32 %spec.select8073, 2
  %spec.select8074 = select i1 %.not7603, i32 %spec.select8073, i32 %i.jrs
  br label %bb.awp

bb.awp:                                           ; preds = %bb.awo, %bb.awn
  %.56432 = phi i32 [ %spec.select8073, %bb.awn ], [ %spec.select8074, %bb.awo ]
  %i.jrt = load i32, ptr %i.e, align 4, !tbaa !78
  %i.jru = load i64, ptr %i.g, align 8, !tbaa !144 ; 2 uses
  call fastcc void @zend_jit_qm_assign(ptr noundef %4, ptr noundef nonnull %i.byu, i32 noundef %i.jrt, i64 noundef %i.jru, i64 noundef %.16455, i32 noundef %.56432, i32 noundef %.0.i9043, i64 noundef %i.jrp)
  %i.jrv = load i32, ptr %i.jkk, align 4, !tbaa !353 ; 2 uses
  %i.jrw = icmp sgt i32 %i.jrv, -1
  %i.jrx = and i64 %i.jru, 3
  %i.jry = icmp eq i64 %i.jrx, 2
  %or.cond11325 = and i1 %i.jrw, %i.jry
  br i1 %or.cond11325, label %bb.awq, label %bb.awv

bb.awq:                                           ; preds = %bb.awp
  %i.jrz = load ptr, ptr %i.byh, align 8, !tbaa !239
  %i.jsa = zext nneg i32 %i.jrv to i64
  %i.jsb = getelementptr inbounds nuw [48 x i8], ptr %i.jrz, i64 %i.jsa ; 3 uses
  %i.jsc = getelementptr inbounds nuw i8, ptr %i.jsb, i64 40
  %i.jsd = load i8, ptr %i.jsc, align 8
  %i.jse = trunc i8 %i.jsd to i1
  br i1 %i.jse, label %bb.awr, label %bb.awv

bb.awr:                                           ; preds = %bb.awq
  %i.jsf = load i32, ptr %i.e, align 4, !tbaa !78
  %9 = and i32 %i.jsf, 16
  %.not7604 = icmp eq i32 %9, 0
  %10 = select i1 %.not7604, i8 5, i8 4           ; 4 uses
  %i.jsg = getelementptr inbounds nuw i8, ptr %i.byu, i64 8
  %i.jsh = load i32, ptr %i.jsg, align 8, !tbaa !72
  %i.jsi = lshr i32 %i.jsh, 4
  %i.jsj = add nsw i32 %i.jsi, -5                 ; 2 uses
  %i.jsk = zext i32 %i.jsj to i64
  %i.jsl = getelementptr inbounds nuw [8 x i8], ptr %.06545, i64 %i.jsk ; 5 uses
  %i.jsm = getelementptr inbounds nuw i8, ptr %i.jsl, i64 1 ; 2 uses
  %i.jsn = load i8, ptr %i.jsm, align 1, !tbaa !72
  %.not7605 = icmp eq i8 %i.jsn, %10
  br i1 %.not7605, label %bb.awv, label %bb.aws

bb.aws:                                           ; preds = %bb.awr
  %i.jso = getelementptr inbounds nuw i8, ptr %i.jsb, i64 12
  %i.jsp = load i32, ptr %i.jso, align 4, !tbaa !242
  %i.jsq = icmp slt i32 %i.jsp, 0
  br i1 %i.jsq, label %bb.awt, label %bb.awv

bb.awt:                                           ; preds = %bb.aws
  %i.jsr = getelementptr inbounds nuw i8, ptr %i.jsb, i64 24
  %i.jss = load ptr, ptr %i.jsr, align 8, !tbaa !243
  %.not7606 = icmp eq ptr %i.jss, null
  br i1 %.not7606, label %bb.awu, label %bb.awv

bb.awu:                                           ; preds = %bb.awt
  call fastcc void @zend_jit_store_type(ptr noundef %4, i32 noundef %i.jsj, i8 noundef zeroext %10)
  store i8 %10, ptr %i.jsl, align 4, !tbaa !72
  store i8 %10, ptr %i.jsm, align 1, !tbaa !72
  %i.jst = getelementptr inbounds nuw i8, ptr %i.jsl, i64 2
  store i8 -1, ptr %i.jst, align 2, !tbaa !72
  %i.jsu = getelementptr inbounds nuw i8, ptr %i.jsl, i64 3
  %i.jsv = getelementptr inbounds nuw i8, ptr %i.jsl, i64 4
  store i32 0, ptr %i.jsv, align 4, !tbaa !82
  store i8 0, ptr %i.jsu, align 1, !tbaa !72
  br label %bb.awv

bb.awv:                                           ; preds = %bb.awu, %bb.awt, %bb.aws, %bb.awr, %bb.awq, %bb.awp
  %i.jsw = load i8, ptr %i.jll, align 1, !tbaa !296
  %i.jsx = icmp eq i8 %i.jsw, 8
  br i1 %i.jsx, label %bb.aww, label %thread-pre-split9690

bb.aww:                                           ; preds = %bb.awv
  %i.jsy = load i32, ptr %i.jkk, align 4, !tbaa !353 ; 2 uses
  %i.jsz = icmp sgt i32 %i.jsy, -1
  br i1 %i.jsz, label %bb.awx, label %thread-pre-split9690

bb.awx:                                           ; preds = %bb.aww
  %i.jta = load ptr, ptr %i.byh, align 8, !tbaa !239
  %i.jtb = zext nneg i32 %i.jsy to i64            ; 2 uses
  %i.jtc = getelementptr inbounds nuw [48 x i8], ptr %i.jta, i64 %i.jtb
  %i.jtd = getelementptr inbounds nuw i8, ptr %i.jtc, i64 40
  %i.jte = load i8, ptr %i.jtd, align 8
  %i.jtf = and i8 %i.jte, 12
  %i.jtg = icmp eq i8 %i.jtf, 0
  br i1 %i.jtg, label %bb.awy, label %thread-pre-split9690

bb.awy:                                           ; preds = %bb.awx
  %i.jth = load ptr, ptr %i.byg, align 8, !tbaa !236 ; 2 uses
  %i.jti = load i32, ptr %.06572, align 4, !tbaa !341
  %i.jtj = sext i32 %i.jti to i64
  %i.jtk = getelementptr inbounds [40 x i8], ptr %i.jth, i64 %i.jtj
  %i.jtl = getelementptr inbounds nuw i8, ptr %i.jtk, i64 4
  %i.jtm = load i8, ptr %i.jtl, align 4
  %i.jtn = getelementptr inbounds nuw [40 x i8], ptr %i.jth, i64 %i.jtb
  %i.jto = getelementptr inbounds nuw i8, ptr %i.jtn, i64 4 ; 2 uses
  %.lobit7607 = and i8 %i.jtm, 64
  %i.jtp = load i8, ptr %i.jto, align 4
  %i.jtq = and i8 %i.jtp, -65
  %i.jtr = or disjoint i8 %i.jtq, %.lobit7607
  store i8 %i.jtr, ptr %i.jto, align 4
  br label %thread-pre-split9690

bb.awz:                                           ; preds = %bb.nz, %bb.nz, %bb.nz
  %i.jts = getelementptr inbounds nuw i8, ptr %.06376, i64 24
  %i.jtt = load ptr, ptr %i.jts, align 8, !tbaa !314 ; 2 uses
  %.not7589 = icmp eq ptr %i.jtt, null
  br i1 %.not7589, label %bb.axb, label %bb.axa

bb.axa:                                           ; preds = %bb.awz
  %i.jtu = getelementptr inbounds nuw i8, ptr %.06374, i64 104
  %i.jtv = load ptr, ptr %i.jtu, align 8, !tbaa !110
  %i.jtw = ptrtoint ptr %i.byu to i64
  %i.jtx = ptrtoint ptr %i.jtv to i64
  %i.jty = sub i64 %i.jtw, %i.jtx
  %i.jtz = ashr exact i64 %i.jty, 3
  %i.jua = getelementptr inbounds i8, ptr %i.jtt, i64 %i.jtz
  %i.jub = load i32, ptr %i.jua, align 4, !tbaa !78
  br label %bb.axb

bb.axb:                                           ; preds = %bb.awz, %bb.axa
  %i.juc = phi i32 [ %i.jub, %bb.axa ], [ -1, %bb.awz ]
  %i.jud = getelementptr inbounds nuw i8, ptr %.06539, i64 40
  %i.jue = load i32, ptr %i.jud, align 8, !tbaa !389
  %i.juf = getelementptr inbounds nuw i8, ptr %.3, i64 16
  %i.jug = sub nsw i32 %.36597, %.06589
  %i.juh = call fastcc i32 @zend_jit_init_fcall(ptr noundef %4, ptr noundef nonnull %i.byu, i32 noundef %i.juc, ptr noundef %.06374, ptr noundef %i.aa, ptr noundef %.06572, i32 noundef %i.jue, ptr noundef nonnull %i.juf, i32 noundef %i.jug)
  %.not7590 = icmp eq i32 %i.juh, 0
  br i1 %.not7590, label %.thread9299, label %thread-pre-split9690

bb.axc:                                           ; preds = %bb.nz, %bb.nz
  %i.jui = getelementptr inbounds nuw i8, ptr %i.byu, i64 30
  %i.juj = load i8, ptr %i.jui, align 2, !tbaa !355
  %i.juk = icmp eq i8 %i.juj, 1
  br i1 %i.juk, label %bb.cqb, label %bb.axd

bb.axd:                                           ; preds = %bb.axc
  %i.jul = icmp eq i8 %i.bzr, 116
  br i1 %i.jul, label %bb.axe, label %bb.axf

bb.axe:                                           ; preds = %bb.axd
  %i.jum = getelementptr inbounds nuw i8, ptr %i.byu, i64 12
  %i.jun = load i32, ptr %i.jum, align 4, !tbaa !72
  %i.juo = icmp ugt i32 %i.jun, 12
  br i1 %i.juo, label %bb.cqb, label %bb.axf

bb.axf:                                           ; preds = %bb.axe, %bb.axd
  %i.jup = getelementptr inbounds nuw i8, ptr %i.byu, i64 29 ; 3 uses
  %i.juq = load i8, ptr %i.jup, align 1, !tbaa !296
  %i.jur = icmp eq i8 %i.juq, 1
  br i1 %i.jur, label %bb.axg, label %bb.axo

bb.axg:                                           ; preds = %bb.axf
  %i.jus = getelementptr inbounds nuw i8, ptr %.06374, i64 4
  %i.jut = load i32, ptr %i.jus, align 4, !tbaa !111
  %i.juu = and i32 %i.jut, 33554432
  %.not9.i8321 = icmp eq i32 %i.juu, 0
  br i1 %.not9.i8321, label %bb.axi, label %bb.axh

bb.axh:                                           ; preds = %bb.axg
  %i.juv = getelementptr inbounds nuw i8, ptr %i.byu, i64 8
  %i.juw = load i32, ptr %i.juv, align 8, !tbaa !72
  %i.jux = sext i32 %i.juw to i64
  %i.juy = getelementptr inbounds i8, ptr %i.byu, i64 %i.jux
  br label %bb.axj

bb.axi:                                           ; preds = %bb.axg
  %i.juz = getelementptr inbounds nuw i8, ptr %.06374, i64 192
  %i.jva = load ptr, ptr %i.juz, align 8, !tbaa !354
  %i.jvb = getelementptr inbounds nuw i8, ptr %i.byu, i64 8
  %i.jvc = load i32, ptr %i.jvb, align 8, !tbaa !72
  %i.jvd = zext i32 %i.jvc to i64
  %i.jve = getelementptr inbounds nuw [16 x i8], ptr %i.jva, i64 %i.jvd
  br label %bb.axj

bb.axj:                                           ; preds = %bb.axi, %bb.axh
  %i.jvf = phi ptr [ %i.juy, %bb.axh ], [ %i.jve, %bb.axi ] ; 3 uses
  %i.jvg = getelementptr inbounds nuw i8, ptr %i.jvf, i64 8
  %i.jvh = load i8, ptr %i.jvg, align 8, !tbaa !72 ; 3 uses
  switch i8 %i.jvh, label %bb.axl [
    i8 11, label %_ssa_op1_info.exit8322.thread
    i8 7, label %bb.axk
  ]

bb.axk:                                           ; preds = %bb.axj
  %i.jvi = call i32 @zend_array_type_info(ptr noundef nonnull %i.jvf) #34
  br label %_ssa_op1_info.exit8322

bb.axl:                                           ; preds = %bb.axj
  %i.jvj = zext nneg i8 %i.jvh to i32
  %i.jvk = shl nuw i32 1, %i.jvj                  ; 2 uses
  %i.jvl = getelementptr inbounds nuw i8, ptr %i.jvf, i64 9
  %i.jvm = load i8, ptr %i.jvl, align 1, !tbaa !72
  %.not.i8838 = icmp eq i8 %i.jvm, 0
  br i1 %.not.i8838, label %bb.axn, label %bb.axm

bb.axm:                                           ; preds = %bb.axl
  %i.jvn = or i32 %i.jvk, -1073741824
  br label %_ssa_op1_info.exit8322

bb.axn:                                           ; preds = %bb.axl
  %i.jvo = icmp eq i8 %i.jvh, 6
  %spec.select.i8840 = select i1 %i.jvo, i32 -2147483584, i32 %i.jvk
  br label %_ssa_op1_info.exit8322

bb.axo:                                           ; preds = %bb.axf
  %i.jvp = load ptr, ptr %i.byg, align 8, !tbaa !236 ; 2 uses
  %.not.i8319 = icmp eq ptr %i.jvp, null
  br i1 %.not.i8319, label %_ssa_op1_info.exit8322.thread, label %bb.axp

bb.axp:                                           ; preds = %bb.axo
  %i.jvq = load i32, ptr %.06572, align 4, !tbaa !341 ; 2 uses
  %i.jvr = icmp sgt i32 %i.jvq, -1
  br i1 %i.jvr, label %bb.axq, label %_ssa_op1_info.exit8322.thread

bb.axq:                                           ; preds = %bb.axp
  %i.jvs = zext nneg i32 %i.jvq to i64
  %i.jvt = getelementptr inbounds nuw [40 x i8], ptr %i.jvp, i64 %i.jvs
  %i.jvu = load i32, ptr %i.jvt, align 8, !tbaa !346
  br label %_ssa_op1_info.exit8322

_ssa_op1_info.exit8322.thread:                    ; preds = %bb.axj, %bb.axp, %bb.axo
  %.0.i8320.ph = phi i32 [ -521143298, %bb.axj ], [ -486539265, %bb.axp ], [ -486539265, %bb.axo ] ; 2 uses
  store i32 %.0.i8320.ph, ptr %i.e, align 4, !tbaa !78
  br label %bb.axu

_ssa_op1_info.exit8322:                           ; preds = %bb.axq, %bb.axn, %bb.axm, %bb.axk
  %.0.i8320 = phi i32 [ %spec.select.i8840, %bb.axn ], [ %i.jvu, %bb.axq ], [ %i.jvi, %bb.axk ], [ %i.jvn, %bb.axm ] ; 3 uses
  store i32 %.0.i8320, ptr %i.e, align 4, !tbaa !78
  %i.jvv = and i32 %.0.i8320, 268435456
  %.not7581 = icmp eq i32 %i.jvv, 0
  %or.cond8075 = select i1 %.not7212, i1 true, i1 %.not7581
  br i1 %or.cond8075, label %bb.axu, label %bb.axr

bb.axr:                                           ; preds = %_ssa_op1_info.exit8322
  %i.jvw = getelementptr inbounds nuw i8, ptr %i.byu, i64 8 ; 12 uses
  %i.jvx = load i32, ptr %i.jvw, align 8, !tbaa !72
  %i.jvy = call fastcc i32 @zend_jit_type_guard(ptr noundef %4, ptr noundef nonnull %i.byu, i32 noundef %i.jvx, i8 noundef zeroext %i.byx)
  %.not7582 = icmp eq i32 %i.jvy, 0
  br i1 %.not7582, label %.thread9299, label %bb.axs

bb.axs:                                           ; preds = %bb.axr
  %i.jvz = load ptr, ptr %i.byh, align 8, !tbaa !239
  %i.jwa = load i32, ptr %.06572, align 4, !tbaa !341
  %i.jwb = sext i32 %i.jwa to i64
  %i.jwc = getelementptr inbounds [48 x i8], ptr %i.jvz, i64 %i.jwb
  %i.jwd = getelementptr inbounds nuw i8, ptr %i.jwc, i64 40
  %i.jwe = load i8, ptr %i.jwd, align 8
  %i.jwf = and i8 %i.jwe, 12
  %.not7583 = icmp eq i8 %i.jwf, 0
  %i.jwg = load i32, ptr %i.jvw, align 8, !tbaa !72
  %i.jwh = lshr i32 %i.jwg, 4
  %i.jwi = add nsw i32 %i.jwh, -5
  %i.jwj = zext i32 %i.jwi to i64
  %i.jwk = getelementptr inbounds nuw [8 x i8], ptr %.06545, i64 %i.jwj ; 2 uses
  br i1 %.not7583, label %bb.axt, label %zend_jit_trace_type_to_info_ex.exit8598

zend_jit_trace_type_to_info_ex.exit8598:          ; preds = %bb.axs
  store i8 -1, ptr %i.jwk, align 4, !tbaa !72
end_hunk_2
begin_hunk_3_@zend_jit_trace:bb.a
    i8 11, label %_ssa_op1_info.exit8314.thread
    i8 7, label %bb.azv
  ]

bb.azv:                                           ; preds = %bb.azu
  %i.kfe = call i32 @zend_array_type_info(ptr noundef nonnull %i.kfb) #34
  br label %_ssa_op1_info.exit8314

bb.azw:                                           ; preds = %bb.azu
  %i.kff = zext nneg i8 %i.kfd to i32
  %i.kfg = shl nuw i32 1, %i.kff                  ; 2 uses
  %i.kfh = getelementptr inbounds nuw i8, ptr %i.kfb, i64 9
  %i.kfi = load i8, ptr %i.kfh, align 1, !tbaa !72
  %.not.i8846 = icmp eq i8 %i.kfi, 0
  br i1 %.not.i8846, label %bb.azy, label %bb.azx

bb.azx:                                           ; preds = %bb.azw
  %i.kfj = or i32 %i.kfg, -1073741824
  br label %_ssa_op1_info.exit8314

bb.azy:                                           ; preds = %bb.azw
  %i.kfk = icmp eq i8 %i.kfd, 6
  %spec.select.i8848 = select i1 %i.kfk, i32 -2147483584, i32 %i.kfg
  br label %_ssa_op1_info.exit8314

bb.azz:                                           ; preds = %bb.azq
  %i.kfl = load ptr, ptr %i.byg, align 8, !tbaa !236 ; 2 uses
  %.not.i8311 = icmp eq ptr %i.kfl, null
  br i1 %.not.i8311, label %_ssa_op1_info.exit8314.thread, label %bb.baa

bb.baa:                                           ; preds = %bb.azz
  %i.kfm = load i32, ptr %.06572, align 4, !tbaa !341 ; 2 uses
  %i.kfn = icmp sgt i32 %i.kfm, -1
  br i1 %i.kfn, label %bb.bab, label %_ssa_op1_info.exit8314.thread

bb.bab:                                           ; preds = %bb.baa
  %i.kfo = zext nneg i32 %i.kfm to i64
  %i.kfp = getelementptr inbounds nuw [40 x i8], ptr %i.kfl, i64 %i.kfo
  %i.kfq = load i32, ptr %i.kfp, align 8, !tbaa !346
  br label %_ssa_op1_info.exit8314

_ssa_op1_info.exit8314.thread:                    ; preds = %bb.azu, %bb.baa, %bb.azz
  %.0.i8312.ph = phi i32 [ -521143298, %bb.azu ], [ -486539265, %bb.baa ], [ -486539265, %bb.azz ] ; 2 uses
  store i32 %.0.i8312.ph, ptr %i.e, align 4, !tbaa !78
  br label %bb.baf

_ssa_op1_info.exit8314:                           ; preds = %bb.bab, %bb.azy, %bb.azx, %bb.azv
  %.0.i8312 = phi i32 [ %spec.select.i8848, %bb.azy ], [ %i.kfq, %bb.bab ], [ %i.kfe, %bb.azv ], [ %i.kfj, %bb.azx ] ; 3 uses
  store i32 %.0.i8312, ptr %i.e, align 4, !tbaa !78
  %i.kfr = and i32 %.0.i8312, 268435456
  %.not7569 = icmp eq i32 %i.kfr, 0
  %or.cond8077 = select i1 %.not7212, i1 true, i1 %.not7569
  br i1 %or.cond8077, label %bb.baf, label %bb.bac

bb.bac:                                           ; preds = %_ssa_op1_info.exit8314
  %i.kfs = getelementptr inbounds nuw i8, ptr %i.byu, i64 8 ; 12 uses
  %i.kft = load i32, ptr %i.kfs, align 8, !tbaa !72
  %i.kfu = call fastcc i32 @zend_jit_type_guard(ptr noundef %4, ptr noundef nonnull %i.byu, i32 noundef %i.kft, i8 noundef zeroext %i.byx)
  %.not7570 = icmp eq i32 %i.kfu, 0
  br i1 %.not7570, label %.thread9299, label %bb.bad

bb.bad:                                           ; preds = %bb.bac
  %i.kfv = load ptr, ptr %i.byh, align 8, !tbaa !239
  %i.kfw = load i32, ptr %.06572, align 4, !tbaa !341
  %i.kfx = sext i32 %i.kfw to i64
  %i.kfy = getelementptr inbounds [48 x i8], ptr %i.kfv, i64 %i.kfx
  %i.kfz = getelementptr inbounds nuw i8, ptr %i.kfy, i64 40
  %i.kga = load i8, ptr %i.kfz, align 8
  %i.kgb = and i8 %i.kga, 12
  %.not7571 = icmp eq i8 %i.kgb, 0
  %i.kgc = load i32, ptr %i.kfs, align 8, !tbaa !72
  %i.kgd = lshr i32 %i.kgc, 4
  %i.kge = add nsw i32 %i.kgd, -5
  %i.kgf = zext i32 %i.kge to i64
  %i.kgg = getelementptr inbounds nuw [8 x i8], ptr %.06545, i64 %i.kgf ; 2 uses
  br i1 %.not7571, label %bb.bae, label %zend_jit_trace_type_to_info_ex.exit8601

zend_jit_trace_type_to_info_ex.exit8601:          ; preds = %bb.bad
  store i8 -1, ptr %i.kgg, align 4, !tbaa !72
  %i.kgh = load i32, ptr %i.kfs, align 8, !tbaa !72
  %i.kgi = lshr i32 %i.kgh, 4
  %i.kgj = add nsw i32 %i.kgi, -5
  %i.kgk = zext i32 %i.kgj to i64
  %i.kgl = getelementptr inbounds nuw [8 x i8], ptr %.06545, i64 %i.kgk
  %i.kgm = getelementptr inbounds nuw i8, ptr %i.kgl, i64 1
  store i8 -1, ptr %i.kgm, align 1, !tbaa !72
  %i.kgn = load i32, ptr %i.kfs, align 8, !tbaa !72
  %i.kgo = lshr i32 %i.kgn, 4
  %i.kgp = add nsw i32 %i.kgo, -5
  %i.kgq = zext i32 %i.kgp to i64
  %i.kgr = getelementptr inbounds nuw [8 x i8], ptr %.06545, i64 %i.kgq
  %i.kgs = getelementptr inbounds nuw i8, ptr %i.kgr, i64 2
  store i8 -1, ptr %i.kgs, align 2, !tbaa !72
  %i.kgt = load i32, ptr %i.kfs, align 8, !tbaa !72
  %i.kgu = lshr i32 %i.kgt, 4
  %i.kgv = add nsw i32 %i.kgu, -5
  %i.kgw = zext i32 %i.kgv to i64
  %i.kgx = getelementptr inbounds nuw [8 x i8], ptr %.06545, i64 %i.kgw
  %i.kgy = getelementptr inbounds nuw i8, ptr %i.kgx, i64 3
  store i8 0, ptr %i.kgy, align 1, !tbaa !72
  %i.kgz = load i32, ptr %i.kfs, align 8, !tbaa !72
  %i.kha = lshr i32 %i.kgz, 4
  %i.khb = add nsw i32 %i.kha, -5
  %i.khc = zext i32 %i.khb to i64
  %i.khd = getelementptr inbounds nuw [8 x i8], ptr %.06545, i64 %i.khc
  %i.khe = getelementptr inbounds nuw i8, ptr %i.khd, i64 4
  store i32 0, ptr %i.khe, align 4, !tbaa !82
  %i.khf = load i32, ptr %i.kfs, align 8, !tbaa !72
  %i.khg = lshr i32 %i.khf, 4
  %i.khh = add nsw i32 %i.khg, -5
  %i.khi = zext i32 %i.khh to i64
  %i.khj = getelementptr inbounds nuw [8 x i8], ptr %.06545, i64 %i.khi
  %i.khk = getelementptr inbounds nuw i8, ptr %i.khj, i64 3
  store i8 0, ptr %i.khk, align 1, !tbaa !72
  %i.khl = zext nneg i8 %i.byx to i32
  %i.khm = shl nuw i32 1, %i.khl                  ; 2 uses
  %i.khn = icmp ult i8 %i.byx, 6
  %.not.i8599 = icmp eq i8 %i.byx, 7
  %i.kho = or disjoint i32 %i.khm, -1073741824
  %spec.select9844 = select i1 %.not.i8599, i32 -520095616, i32 %i.kho
  %.0.i8600 = select i1 %i.khn, i32 %i.khm, i32 %spec.select9844 ; 2 uses
  store i32 %.0.i8600, ptr %i.e, align 4, !tbaa !78
  br label %bb.baf

bb.bae:                                           ; preds = %bb.bad
  store i8 %i.byx, ptr %i.kgg, align 4, !tbaa !72
  %i.khp = load i32, ptr %i.kfs, align 8, !tbaa !72
  %i.khq = lshr i32 %i.khp, 4
  %i.khr = add nsw i32 %i.khq, -5
  %i.khs = zext i32 %i.khr to i64
  %i.kht = getelementptr inbounds nuw [8 x i8], ptr %.06545, i64 %i.khs
  %i.khu = getelementptr inbounds nuw i8, ptr %i.kht, i64 1
  store i8 %i.byx, ptr %i.khu, align 1, !tbaa !72
  %i.khv = load i32, ptr %i.kfs, align 8, !tbaa !72
  %i.khw = lshr i32 %i.khv, 4
  %i.khx = add nsw i32 %i.khw, -5
  %i.khy = zext i32 %i.khx to i64
  %i.khz = getelementptr inbounds nuw [8 x i8], ptr %.06545, i64 %i.khy
  %i.kia = getelementptr inbounds nuw i8, ptr %i.khz, i64 2
  store i8 -1, ptr %i.kia, align 2, !tbaa !72
  %i.kib = load i32, ptr %i.kfs, align 8, !tbaa !72
  %i.kic = lshr i32 %i.kib, 4
  %i.kid = add nsw i32 %i.kic, -5
  %i.kie = zext i32 %i.kid to i64
  %i.kif = getelementptr inbounds nuw [8 x i8], ptr %.06545, i64 %i.kie
  %i.kig = getelementptr inbounds nuw i8, ptr %i.kif, i64 3
  store i8 0, ptr %i.kig, align 1, !tbaa !72
  %i.kih = load i32, ptr %i.kfs, align 8, !tbaa !72
  %i.kii = lshr i32 %i.kih, 4
  %i.kij = add nsw i32 %i.kii, -5
  %i.kik = zext i32 %i.kij to i64
  %i.kil = getelementptr inbounds nuw [8 x i8], ptr %.06545, i64 %i.kik
  %i.kim = getelementptr inbounds nuw i8, ptr %i.kil, i64 4
  store i32 0, ptr %i.kim, align 4, !tbaa !82
  %i.kin = load i32, ptr %i.kfs, align 8, !tbaa !72
  %i.kio = lshr i32 %i.kin, 4
  %i.kip = add nsw i32 %i.kio, -5
  %i.kiq = zext i32 %i.kip to i64
  %i.kir = getelementptr inbounds nuw [8 x i8], ptr %.06545, i64 %i.kiq
  %i.kis = getelementptr inbounds nuw i8, ptr %i.kir, i64 3
  store i8 0, ptr %i.kis, align 1, !tbaa !72
  %i.kit = load i32, ptr %i.e, align 4, !tbaa !78
  %i.kiu = and i32 %i.kit, -268435457             ; 2 uses
  store i32 %i.kiu, ptr %i.e, align 4, !tbaa !78
  %i.kiv = load ptr, ptr %i.byg, align 8, !tbaa !236
  %i.kiw = load i32, ptr %.06572, align 4, !tbaa !341
  %i.kix = sext i32 %i.kiw to i64
  %i.kiy = getelementptr inbounds [40 x i8], ptr %i.kiv, i64 %i.kix ; 2 uses
  %i.kiz = load i32, ptr %i.kiy, align 8, !tbaa !346
  %i.kja = and i32 %i.kiz, %i.kiu
  store i32 %i.kja, ptr %i.kiy, align 8, !tbaa !346
  %.pre10391 = load i32, ptr %i.e, align 4, !tbaa !78
  br label %bb.baf

bb.baf:                                           ; preds = %_ssa_op1_info.exit8314.thread, %bb.bae, %zend_jit_trace_type_to_info_ex.exit8601, %_ssa_op1_info.exit8314
  %i.kjb = phi i32 [ %.0.i8312.ph, %_ssa_op1_info.exit8314.thread ], [ %.pre10391, %bb.bae ], [ %.0.i8600, %zend_jit_trace_type_to_info_ex.exit8601 ], [ %.0.i8312, %_ssa_op1_info.exit8314 ]
  %i.kjc = load i64, ptr %i.g, align 8, !tbaa !144 ; 2 uses
  %i.kjd = call fastcc i32 @zend_jit_send_var(ptr noundef %4, ptr noundef nonnull %i.byu, i32 noundef %i.kjb, i64 noundef %i.kjc, i64 noundef %.26456)
  %.not7572 = icmp eq i32 %i.kjd, 0
  br i1 %.not7572, label %.thread9299, label %bb.bag

bb.bag:                                           ; preds = %bb.baf
  %i.kje = load i32, ptr %i.kdk, align 4, !tbaa !353 ; 2 uses
  %i.kjf = icmp sgt i32 %i.kje, -1
  %i.kjg = and i64 %i.kjc, 3
  %i.kjh = icmp eq i64 %i.kjg, 2
  %or.cond11327 = and i1 %i.kjf, %i.kjh
  br i1 %or.cond11327, label %bb.bah, label %bb.bam

bb.bah:                                           ; preds = %bb.bag
  %i.kji = load ptr, ptr %i.byh, align 8, !tbaa !239
  %i.kjj = zext nneg i32 %i.kje to i64
  %i.kjk = getelementptr inbounds nuw [48 x i8], ptr %i.kji, i64 %i.kjj ; 3 uses
  %i.kjl = getelementptr inbounds nuw i8, ptr %i.kjk, i64 40
  %i.kjm = load i8, ptr %i.kjl, align 8
  %i.kjn = trunc i8 %i.kjm to i1
  br i1 %i.kjn, label %bb.bai, label %bb.bam

bb.bai:                                           ; preds = %bb.bah
  %i.kjo = load i32, ptr %i.e, align 4, !tbaa !78
  %11 = and i32 %i.kjo, 16
  %.not7573 = icmp eq i32 %11, 0
  %12 = select i1 %.not7573, i8 5, i8 4           ; 4 uses
  %i.kjp = getelementptr inbounds nuw i8, ptr %i.byu, i64 8
  %i.kjq = load i32, ptr %i.kjp, align 8, !tbaa !72
  %i.kjr = lshr i32 %i.kjq, 4
  %i.kjs = add nsw i32 %i.kjr, -5                 ; 2 uses
  %i.kjt = zext i32 %i.kjs to i64
  %i.kju = getelementptr inbounds nuw [8 x i8], ptr %.06545, i64 %i.kjt ; 5 uses
  %i.kjv = getelementptr inbounds nuw i8, ptr %i.kju, i64 1 ; 2 uses
  %i.kjw = load i8, ptr %i.kjv, align 1, !tbaa !72
  %.not7574 = icmp eq i8 %i.kjw, %12
  br i1 %.not7574, label %bb.bam, label %bb.baj

bb.baj:                                           ; preds = %bb.bai
  %i.kjx = getelementptr inbounds nuw i8, ptr %i.kjk, i64 12
  %i.kjy = load i32, ptr %i.kjx, align 4, !tbaa !242
  %i.kjz = icmp slt i32 %i.kjy, 0
  br i1 %i.kjz, label %bb.bak, label %bb.bam

bb.bak:                                           ; preds = %bb.baj
  %i.kka = getelementptr inbounds nuw i8, ptr %i.kjk, i64 24
  %i.kkb = load ptr, ptr %i.kka, align 8, !tbaa !243
  %.not7575 = icmp eq ptr %i.kkb, null
  br i1 %.not7575, label %bb.bal, label %bb.bam

bb.bal:                                           ; preds = %bb.bak
  call fastcc void @zend_jit_store_type(ptr noundef %4, i32 noundef %i.kjs, i8 noundef zeroext %12)
  store i8 %12, ptr %i.kju, align 4, !tbaa !72
  store i8 %12, ptr %i.kjv, align 1, !tbaa !72
  %i.kkc = getelementptr inbounds nuw i8, ptr %i.kju, i64 2
  store i8 -1, ptr %i.kkc, align 2, !tbaa !72
  %i.kkd = getelementptr inbounds nuw i8, ptr %i.kju, i64 3
  %i.kke = getelementptr inbounds nuw i8, ptr %i.kju, i64 4
  store i32 0, ptr %i.kke, align 4, !tbaa !82
  store i8 0, ptr %i.kkd, align 1, !tbaa !72
  br label %bb.bam

bb.bam:                                           ; preds = %bb.bal, %bb.bak, %bb.baj, %bb.bai, %bb.bah, %bb.bag
  %i.kkf = load i8, ptr %i.kel, align 1, !tbaa !296
  %i.kkg = icmp eq i8 %i.kkf, 8
  br i1 %i.kkg, label %bb.ban, label %bb.baq

bb.ban:                                           ; preds = %bb.bam
  %i.kkh = load i32, ptr %i.kdk, align 4, !tbaa !353 ; 2 uses
  %i.kki = icmp sgt i32 %i.kkh, -1
  br i1 %i.kki, label %bb.bao, label %bb.baq

bb.bao:                                           ; preds = %bb.ban
  %i.kkj = load ptr, ptr %i.byh, align 8, !tbaa !239
  %i.kkk = zext nneg i32 %i.kkh to i64            ; 2 uses
  %i.kkl = getelementptr inbounds nuw [48 x i8], ptr %i.kkj, i64 %i.kkk
  %i.kkm = getelementptr inbounds nuw i8, ptr %i.kkl, i64 40
  %i.kkn = load i8, ptr %i.kkm, align 8
  %i.kko = and i8 %i.kkn, 12
  %i.kkp = icmp eq i8 %i.kko, 0
  br i1 %i.kkp, label %bb.bap, label %bb.baq

bb.bap:                                           ; preds = %bb.bao
  %i.kkq = load ptr, ptr %i.byg, align 8, !tbaa !236 ; 2 uses
  %i.kkr = load i32, ptr %.06572, align 4, !tbaa !341
  %i.kks = sext i32 %i.kkr to i64
  %i.kkt = getelementptr inbounds [40 x i8], ptr %i.kkq, i64 %i.kks
  %i.kku = getelementptr inbounds nuw i8, ptr %i.kkt, i64 4
  %i.kkv = load i8, ptr %i.kku, align 4
  %i.kkw = getelementptr inbounds nuw [40 x i8], ptr %i.kkq, i64 %i.kkk
  %i.kkx = getelementptr inbounds nuw i8, ptr %i.kkw, i64 4 ; 2 uses
  %.lobit7576 = and i8 %i.kkv, 64
  %i.kky = load i8, ptr %i.kkx, align 4
  %i.kkz = and i8 %i.kky, -65
  %i.kla = or disjoint i8 %i.kkz, %.lobit7576
  store i8 %i.kla, ptr %i.kkx, align 4
  br label %bb.baq

bb.baq:                                           ; preds = %bb.bap, %bb.bao, %bb.ban, %bb.bam
  %i.klb = load ptr, ptr %.06539, align 8, !tbaa !395 ; 3 uses
  %.not7577 = icmp eq ptr %i.klb, null
  br i1 %.not7577, label %thread-pre-split9690, label %bb.bar

bb.bar:                                           ; preds = %bb.baq
  %i.klc = getelementptr inbounds nuw i8, ptr %i.klb, i64 16
  %i.kld = load ptr, ptr %i.klc, align 8, !tbaa !383 ; 4 uses
  %.not7578 = icmp eq ptr %i.kld, null
  br i1 %.not7578, label %thread-pre-split9690, label %bb.bas

bb.bas:                                           ; preds = %bb.bar
  %i.kle = load i8, ptr %i.bzq, align 4, !tbaa !113 ; 2 uses
  switch i8 %i.kle, label %bb.bav [
    i8 66, label %bb.bat
    i8 -71, label %bb.bat
  ]

bb.bat:                                           ; preds = %bb.bas, %bb.bas
  %i.klf = getelementptr inbounds nuw i8, ptr %i.byu, i64 12
  %i.klg = load i32, ptr %i.klf, align 4, !tbaa !72
  %i.klh = add i32 %i.klg, -1                     ; 2 uses
  %i.kli = getelementptr inbounds nuw i8, ptr %i.kld, i64 32
  %i.klj = load i32, ptr %i.kli, align 8, !tbaa !72 ; 2 uses
  %.not.i8486 = icmp ult i32 %i.klh, %i.klj
  br i1 %.not.i8486, label %.split11162, label %bb.bau, !prof !80

bb.bau:                                           ; preds = %bb.bat
  %i.klk = getelementptr inbounds nuw i8, ptr %i.kld, i64 4
  %i.kll = load i32, ptr %i.klk, align 4, !tbaa !72
  %i.klm = and i32 %i.kll, 16384
  %i.kln = icmp eq i32 %i.klm, 0
  br i1 %i.kln, label %zend_check_arg_send_type.exit, label %.split11162, !prof !80

.split11162:                                      ; preds = %bb.bau, %bb.bat
  %.08.i = phi i32 [ %i.klh, %bb.bat ], [ %i.klj, %bb.bau ]
  %i.klo = getelementptr inbounds nuw i8, ptr %i.kld, i64 40
  %i.klp = load ptr, ptr %i.klo, align 8, !tbaa !72
  %i.klq = zext i32 %.08.i to i64
  %i.klr = getelementptr inbounds nuw [32 x i8], ptr %i.klp, i64 %i.klq
  %i.kls = getelementptr inbounds nuw i8, ptr %i.klr, i64 16
  %i.klt = load i32, ptr %i.kls, align 8, !tbaa !397
  %i.klu = and i32 %i.klt, 100663296
  %i.klv = icmp ne i32 %i.klu, 0
  %i.klw = or i1 %.not7212, %i.klv
  br i1 %i.klw, label %thread-pre-split9690, label %bb.baw

zend_check_arg_send_type.exit:                    ; preds = %bb.bau
  br i1 %.not7212, label %thread-pre-split9690, label %bb.baw

bb.bav:                                           ; preds = %bb.bas
  br i1 %.not7212, label %bb.crh, label %bb.baw

bb.baw:                                           ; preds = %.split11162, %zend_check_arg_send_type.exit, %bb.bav
  %spec.select8078 = call i8 @llvm.umax.i8(i8 %i.byx, i8 1)
  call fastcc void @zend_jit_trace_send_type(ptr noundef nonnull %i.byu, ptr noundef nonnull %i.klb, i8 noundef zeroext %spec.select8078)
  br label %thread-pre-split9690

bb.bax:                                           ; preds = %bb.nz
  %i.klx = load ptr, ptr getelementptr inbounds nuw (i8, ptr @jit_globals, i64 184), align 8, !tbaa !380 ; 2 uses
  %.not7562 = icmp eq ptr %i.klx, null
  br i1 %.not7562, label %bb.cqb, label %bb.bay

bb.bay:                                           ; preds = %bb.bax
  %i.kly = load ptr, ptr %i.klx, align 8, !tbaa !395 ; 3 uses
  %.not7563 = icmp eq ptr %i.kly, null
  br i1 %.not7563, label %bb.cqb, label %bb.baz

bb.baz:                                           ; preds = %bb.bay
  %i.klz = getelementptr inbounds nuw i8, ptr %i.kly, i64 16
  %i.kma = load ptr, ptr %i.klz, align 8, !tbaa !383
  %.not7564 = icmp eq ptr %i.kma, null
  br i1 %.not7564, label %bb.cqb, label %bb.bba

bb.bba:                                           ; preds = %bb.baz
  %i.kmb = getelementptr inbounds nuw i8, ptr %i.byu, i64 30
  %i.kmc = load i8, ptr %i.kmb, align 2, !tbaa !355
  %i.kmd = icmp eq i8 %i.kmc, 1
  br i1 %i.kmd, label %bb.bbc, label %bb.bbb

bb.bbb:                                           ; preds = %bb.bba
  %i.kme = getelementptr inbounds nuw i8, ptr %i.byu, i64 12
  %i.kmf = load i32, ptr %i.kme, align 4, !tbaa !72 ; 2 uses
  %i.kmg = icmp ugt i32 %i.kmf, 12
  br i1 %i.kmg, label %bb.bbc, label %bb.bbd

bb.bbc:                                           ; preds = %bb.bba, %bb.bbb
  %i.kmh = getelementptr inbounds nuw i8, ptr %i.kly, i64 44 ; 2 uses
  %i.kmi = load i32, ptr %i.kmh, align 4, !tbaa !390
  %i.kmj = and i32 %i.kmi, -7
  store i32 %i.kmj, ptr %i.kmh, align 4, !tbaa !390
  br label %bb.cqb

bb.bbd:                                           ; preds = %bb.bbb
  call fastcc void @zend_jit_check_func_arg(ptr noundef %4, i32 %i.kmf)
  br label %thread-pre-split9690

bb.bbe:                                           ; preds = %bb.nz
  %i.kmk = load ptr, ptr getelementptr inbounds nuw (i8, ptr @jit_globals, i64 184), align 8, !tbaa !380 ; 2 uses
  %.not7560 = icmp eq ptr %i.kmk, null
  br i1 %.not7560, label %bb.bbh, label %bb.bbf

bb.bbf:                                           ; preds = %bb.bbe
  %i.kml = load ptr, ptr %i.kmk, align 8, !tbaa !395 ; 2 uses
  %.not7561 = icmp eq ptr %i.kml, null
  br i1 %.not7561, label %bb.bbh, label %bb.bbg

bb.bbg:                                           ; preds = %bb.bbf
  %i.kmm = getelementptr inbounds nuw i8, ptr %i.kml, i64 44 ; 2 uses
  %i.kmn = load i32, ptr %i.kmm, align 4, !tbaa !390
  %i.kmo = or i32 %i.kmn, -65536
  store i32 %i.kmo, ptr %i.kmm, align 4, !tbaa !390
  br label %bb.bbh

bb.bbh:                                           ; preds = %bb.bbg, %bb.bbf, %bb.bbe
  call fastcc void @zend_jit_check_undef_args(ptr noundef %4, ptr noundef nonnull %i.byu)
  br label %thread-pre-split9690

bb.bbi:                                           ; preds = %bb.nz, %bb.nz, %bb.nz, %bb.nz
  %i.kmp = getelementptr inbounds nuw i8, ptr %.06539, i64 40
  %i.kmq = load i32, ptr %i.kmp, align 8, !tbaa !389
  %i.kmr = getelementptr inbounds nuw i8, ptr %.3, i64 16
  %i.kms = call fastcc i32 @zend_jit_do_fcall(ptr noundef %4, ptr noundef nonnull %i.byu, ptr noundef %.06374, ptr noundef %.06376, i32 noundef %i.kmq, ptr noundef nonnull %i.kmr)
  %.not7559 = icmp eq i32 %i.kms, 0
  br i1 %.not7559, label %.thread9299, label %thread-pre-split9690

bb.bbj:                                           ; preds = %bb.nz, %bb.nz, %bb.nz, %bb.nz, %bb.nz
  %i.kmt = getelementptr inbounds nuw i8, ptr %i.byu, i64 29 ; 3 uses
  %i.kmu = load i8, ptr %i.kmt, align 1, !tbaa !296
  %i.kmv = icmp eq i8 %i.kmu, 1
  br i1 %i.kmv, label %bb.bbk, label %bb.bbs

bb.bbk:                                           ; preds = %bb.bbj
  %i.kmw = getelementptr inbounds nuw i8, ptr %.06374, i64 4
  %i.kmx = load i32, ptr %i.kmw, align 4, !tbaa !111
  %i.kmy = and i32 %i.kmx, 33554432
  %.not9.i8309 = icmp eq i32 %i.kmy, 0
  br i1 %.not9.i8309, label %bb.bbm, label %bb.bbl

bb.bbl:                                           ; preds = %bb.bbk
  %i.kmz = getelementptr inbounds nuw i8, ptr %i.byu, i64 8
  %i.kna = load i32, ptr %i.kmz, align 8, !tbaa !72
  %i.knb = sext i32 %i.kna to i64
  %i.knc = getelementptr inbounds i8, ptr %i.byu, i64 %i.knb
  br label %bb.bbn

bb.bbm:                                           ; preds = %bb.bbk
  %i.knd = getelementptr inbounds nuw i8, ptr %.06374, i64 192
  %i.kne = load ptr, ptr %i.knd, align 8, !tbaa !354
  %i.knf = getelementptr inbounds nuw i8, ptr %i.byu, i64 8
  %i.kng = load i32, ptr %i.knf, align 8, !tbaa !72
  %i.knh = zext i32 %i.kng to i64
  %i.kni = getelementptr inbounds nuw [16 x i8], ptr %i.kne, i64 %i.knh
  br label %bb.bbn

bb.bbn:                                           ; preds = %bb.bbm, %bb.bbl
end_hunk_3
begin_hunk_4_@zend_jit_finish:bb.a
  %i.ho = getelementptr i8, ptr %i.hn, i64 32
  store i32 0, ptr %i.ho, align 8, !tbaa !72
  %i.hp = getelementptr [16 x i8], ptr %.3115.i, i64 %indvars.iv128.i
  %i.hq = getelementptr i8, ptr %i.hp, i64 48
  store i32 0, ptr %i.hq, align 8, !tbaa !72
  %indvars.iv.next129.i.3 = add nsw i64 %indvars.iv128.i, 4 ; 3 uses
  %i.hr = getelementptr inbounds [16 x i8], ptr %.3115.i, i64 %indvars.iv.next129.i.3
  store i32 0, ptr %i.hr, align 8, !tbaa !72
  %i.hs = icmp eq i64 %indvars.iv.next129.i.3, %i.ff
  br i1 %i.hs, label %._crit_edge114.i.loopexit, label %.lr.ph113.i, !llvm.loop !684

._crit_edge114.i.loopexit:                        ; preds = %.lr.ph113.i, %.lr.ph113.i.prol.loopexit
  %i.ht = getelementptr inbounds nuw [16 x i8], ptr %.3115.i, i64 %i.ff
  %i.hu = getelementptr inbounds nuw i8, ptr %i.ht, i64 16 ; 2 uses
  %.pr92.i = load i8, ptr %i.hu, align 8, !tbaa !72
  %i.hv = icmp eq i8 %.pr92.i, 63
  br i1 %i.hv, label %.lr.ph116.i.split, label %.loopexit94.i, !llvm.loop !682

.loopexit94.i:                                    ; preds = %._crit_edge109.i, %._crit_edge114.i.loopexit, %._crit_edge114.i.us, %._crit_edge114.i.us.us, %._crit_edge.i, %bb.z, %bb.y, %.lr.ph120.i
  %i.hw = add nuw nsw i32 %.080117.i, 1           ; 2 uses
  %i.hx = getelementptr inbounds nuw i8, ptr %.076118.i, i64 4
  %exitcond132.not.i = icmp eq i32 %i.hw, %i.em
  br i1 %exitcond132.not.i, label %_zend_jit_fix_merges.exit, label %.lr.ph120.i, !llvm.loop !685

bb.al:                                            ; preds = %zend_string_copy.exit
  %i.hy = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.hz = load i32, ptr %i.hy, align 8, !tbaa !281
  %i.ia = or i32 %i.hz, 16384
  store i32 %i.ia, ptr %i.hy, align 8, !tbaa !281
  br label %_zend_jit_fix_merges.exit

_zend_jit_fix_merges.exit:                        ; preds = %.loopexit94.i, %bb.x, %bb.al
  %i.ib = icmp ne ptr %.056, null                 ; 3 uses
  %i.ic = getelementptr inbounds nuw i8, ptr %.056, i64 24 ; 4 uses
  %i.id = select i1 %i.ib, ptr %i.ic, ptr null
  %i.ie = call fastcc ptr @zend_jit_ir_compile(ptr noundef %0, ptr noundef %i.b, ptr noundef %i.id) ; 10 uses
  %.not64 = icmp eq ptr %i.ie, null
  br i1 %.not64, label %.loopexit80, label %bb.am

bb.am:                                            ; preds = %_zend_jit_fix_merges.exit
  %i.if = load i64, ptr getelementptr inbounds nuw (i8, ptr @jit_globals, i64 24), align 8, !tbaa !162 ; 3 uses
  %i.ig = and i64 %i.if, 305
  %i.ih = icmp ne i64 %i.ig, 0
  %or.cond = and i1 %i.ib, %i.ih
  br i1 %or.cond, label %bb.an, label %bb.as

bb.an:                                            ; preds = %bb.am
  %i.ii = and i64 %i.if, 256
  %.not65 = icmp eq i64 %i.ii, 0
  br i1 %.not65, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.ij = load i64, ptr %i.b, align 8, !tbaa !144
  %i.ik = call i32 @ir_gdb_register(ptr noundef nonnull %i.ic, ptr noundef nonnull %i.ie, i64 noundef %i.ij, i32 noundef 8, i32 noundef 0) #34 ; 0 uses
  %.pre = load i64, ptr getelementptr inbounds nuw (i8, ptr @jit_globals, i64 24), align 8, !tbaa !162
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %bb.an
  %i.il = phi i64 [ %.pre, %bb.ao ], [ %i.if, %bb.an ]
  %i.im = and i64 %i.il, 48
  %.not66 = icmp eq i64 %i.im, 0
  br i1 %.not66, label %bb.as, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.in = load i64, ptr %i.b, align 8, !tbaa !144
  call void @ir_perf_map_register(ptr noundef nonnull %i.ic, ptr noundef nonnull %i.ie, i64 noundef %i.in) #34
  %i.io = load i64, ptr getelementptr inbounds nuw (i8, ptr @jit_globals, i64 24), align 8, !tbaa !162
  %i.ip = and i64 %i.io, 32
  %.not67 = icmp eq i64 %i.ip, 0
  br i1 %.not67, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.iq = load i64, ptr %i.b, align 8, !tbaa !144
  %i.ir = call i32 @ir_perf_jitdump_register(ptr noundef nonnull %i.ic, ptr noundef nonnull %i.ie, i64 noundef %i.iq) #34 ; 0 uses
  br label %bb.as

bb.as:                                            ; preds = %bb.aq, %bb.ar, %bb.ap, %bb.am
  %i.is = load ptr, ptr %i.ei, align 8, !tbaa !292 ; 3 uses
  %.not68 = icmp eq ptr %i.is, null
  br i1 %.not68, label %bb.au, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.it = getelementptr inbounds nuw i8, ptr %i.is, i64 104
  %i.iu = load ptr, ptr %i.it, align 8, !tbaa !110 ; 5 uses
  %i.iv = getelementptr inbounds nuw i8, ptr %i.is, i64 4
  %i.iw = load i32, ptr %i.iv, align 4, !tbaa !111
  %i.ix = and i32 %i.iw, 256
  %.not72 = icmp eq i32 %i.ix, 0
  br i1 %.not72, label %.preheader81, label %.loopexit82

.preheader81:                                     ; preds = %bb.at, %.preheader81
  %.055 = phi ptr [ %i.jb, %.preheader81 ], [ %i.iu, %bb.at ] ; 3 uses
  %i.iy = getelementptr inbounds nuw i8, ptr %.055, i64 28
  %i.iz = load i8, ptr %i.iy, align 4, !tbaa !113
  %i.ja = icmp eq i8 %i.iz, 63
  %i.jb = getelementptr inbounds nuw i8, ptr %.055, i64 32
  br i1 %i.ja, label %.preheader81, label %.loopexit82, !llvm.loop !686

.loopexit82:                                      ; preds = %.preheader81, %bb.at
  %.1 = phi ptr [ %i.iu, %bb.at ], [ %.055, %.preheader81 ]
  store ptr %i.ie, ptr %.1, align 8, !tbaa !114
  %i.jc = getelementptr inbounds nuw i8, ptr %0, i64 320
  %i.jd = load i32, ptr %i.jc, align 8, !tbaa !689 ; 4 uses
  %.not73 = icmp eq i32 %i.jd, 0
  br i1 %.not73, label %.loopexit80, label %.preheader79

.preheader79:                                     ; preds = %.loopexit82
  %i.je = load ptr, ptr %0, align 8, !tbaa !348   ; 3 uses
  %i.jf = getelementptr inbounds nuw i8, ptr %0, i64 328
  %i.jg = load ptr, ptr %i.jf, align 8, !tbaa !690 ; 3 uses
  %i.jh = sext i32 %i.jd to i64                   ; 2 uses
  %i.ji = and i32 %i.jd, 1
  %lcmp.mod143.not = icmp eq i32 %i.ji, 0
  br i1 %lcmp.mod143.not, label %.prol.loopexit, label %.prol.loopexit.unr-lcssa

.prol.loopexit.unr-lcssa:                         ; preds = %.preheader79
  %indvars.iv.next.prol = add nsw i64 %i.jh, -1   ; 2 uses
  %i.jj = getelementptr inbounds [4 x i8], ptr %i.jg, i64 %indvars.iv.next.prol
  %i.jk = load i32, ptr %i.jj, align 4, !tbaa !78
  %i.jl = zext i32 %i.jk to i64
  %i.jm = getelementptr inbounds nuw [16 x i8], ptr %i.je, i64 %i.jl ; 2 uses
  %i.jn = getelementptr inbounds nuw i8, ptr %i.jm, i64 8
  %i.jo = getelementptr inbounds nuw i8, ptr %i.jm, i64 12
  %i.jp = load i32, ptr %i.jo, align 4, !tbaa !72
  %i.jq = sext i32 %i.jp to i64
  %i.jr = getelementptr inbounds i8, ptr %i.ie, i64 %i.jq
  %i.js = load i32, ptr %i.jn, align 8, !tbaa !72
  %i.jt = sext i32 %i.js to i64
  %i.ju = getelementptr inbounds [32 x i8], ptr %i.iu, i64 %i.jt
  store ptr %i.jr, ptr %i.ju, align 8, !tbaa !114
  br label %.prol.loopexit

.prol.loopexit:                                   ; preds = %.prol.loopexit.unr-lcssa, %.preheader79
  %indvars.iv.unr = phi i64 [ %i.jh, %.preheader79 ], [ %indvars.iv.next.prol, %.prol.loopexit.unr-lcssa ]
  %i.jv = icmp eq i32 %i.jd, 1
  br i1 %i.jv, label %.loopexit80, label %.preheader79.new

.preheader79.new:                                 ; preds = %.prol.loopexit, %.preheader79.new
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %.preheader79.new ], [ %indvars.iv.unr, %.prol.loopexit ] ; 2 uses
  %i.jw = getelementptr [4 x i8], ptr %i.jg, i64 %indvars.iv
  %i.jx = getelementptr i8, ptr %i.jw, i64 -4
  %i.jy = load i32, ptr %i.jx, align 4, !tbaa !78
  %i.jz = zext i32 %i.jy to i64
  %i.ka = getelementptr inbounds nuw [16 x i8], ptr %i.je, i64 %i.jz ; 2 uses
  %i.kb = getelementptr inbounds nuw i8, ptr %i.ka, i64 8
  %i.kc = getelementptr inbounds nuw i8, ptr %i.ka, i64 12
  %i.kd = load i32, ptr %i.kc, align 4, !tbaa !72
  %i.ke = sext i32 %i.kd to i64
  %i.kf = getelementptr inbounds i8, ptr %i.ie, i64 %i.ke
  %i.kg = load i32, ptr %i.kb, align 8, !tbaa !72
  %i.kh = sext i32 %i.kg to i64
  %i.ki = getelementptr inbounds [32 x i8], ptr %i.iu, i64 %i.kh
  store ptr %i.kf, ptr %i.ki, align 8, !tbaa !114
  %indvars.iv.next.1 = add nsw i64 %indvars.iv, -2 ; 3 uses
  %i.kj = getelementptr inbounds [4 x i8], ptr %i.jg, i64 %indvars.iv.next.1
  %i.kk = load i32, ptr %i.kj, align 4, !tbaa !78
  %i.kl = zext i32 %i.kk to i64
  %i.km = getelementptr inbounds nuw [16 x i8], ptr %i.je, i64 %i.kl ; 2 uses
  %i.kn = getelementptr inbounds nuw i8, ptr %i.km, i64 8
  %i.ko = getelementptr inbounds nuw i8, ptr %i.km, i64 12
  %i.kp = load i32, ptr %i.ko, align 4, !tbaa !72
  %i.kq = sext i32 %i.kp to i64
  %i.kr = getelementptr inbounds i8, ptr %i.ie, i64 %i.kq
  %i.ks = load i32, ptr %i.kn, align 8, !tbaa !72
  %i.kt = sext i32 %i.ks to i64
  %i.ku = getelementptr inbounds [32 x i8], ptr %i.iu, i64 %i.kt
  store ptr %i.kr, ptr %i.ku, align 8, !tbaa !114
  %.not74.1 = icmp eq i64 %indvars.iv.next.1, 0
  br i1 %.not74.1, label %.loopexit80, label %.preheader79.new, !llvm.loop !687

bb.au:                                            ; preds = %bb.as
  %i.kv = getelementptr inbounds nuw i8, ptr %0, i64 1016
  %i.kw = load ptr, ptr %i.kv, align 8, !tbaa !71 ; 3 uses
  %.not69 = icmp eq ptr %i.kw, null
  br i1 %.not69, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.au
  %i.kx = getelementptr inbounds nuw i8, ptr %i.kw, i64 32 ; 2 uses
  %i.ky = load i32, ptr %i.kx, align 8, !tbaa !58 ; 2 uses
  %.not88 = icmp eq i32 %i.ky, 0
  br i1 %.not88, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.kz = getelementptr inbounds nuw i8, ptr %i.kw, i64 80
  %i.la = getelementptr inbounds nuw i8, ptr %0, i64 40
  br label %bb.av

bb.av:                                            ; preds = %.lr.ph, %bb.ax
  %i.lb = phi i32 [ %i.ky, %.lr.ph ], [ %i.lm, %bb.ax ]
  %indvars.iv96 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next97, %bb.ax ] ; 2 uses
  %i.lc = load ptr, ptr %i.kz, align 8, !tbaa !59
  %i.ld = getelementptr inbounds nuw [8 x i8], ptr %i.lc, i64 %indvars.iv96 ; 3 uses
  %i.le = getelementptr inbounds nuw i8, ptr %i.ld, i64 3
  %i.lf = load i8, ptr %i.le, align 1, !tbaa !72
  %i.lg = and i8 %i.lf, 8
  %.not70 = icmp eq i8 %i.lg, 0
  br i1 %.not70, label %bb.ax, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.lh = load i32, ptr %i.la, align 8, !tbaa !281
  %2 = and i32 %i.lh, 2048
  %.not71 = icmp eq i32 %2, 0
  %3 = select i1 %.not71, i8 4, i8 5
  %i.li = getelementptr inbounds nuw i8, ptr %i.ld, i64 2
  store i8 %3, ptr %i.li, align 2, !tbaa !72
  %i.lj = getelementptr inbounds nuw i8, ptr %i.ld, i64 4 ; 2 uses
  %i.lk = load i32, ptr %i.lj, align 4, !tbaa !82
  %i.ll = call i32 @ir_get_spill_slot_offset(ptr noundef nonnull %0, i32 noundef %i.lk) #34
  store i32 %i.ll, ptr %i.lj, align 4, !tbaa !82
  %.pre99 = load i32, ptr %i.kx, align 8, !tbaa !58
  br label %bb.ax

bb.ax:                                            ; preds = %bb.av, %bb.aw
  %i.lm = phi i32 [ %i.lb, %bb.av ], [ %.pre99, %bb.aw ] ; 2 uses
  %indvars.iv.next97 = add nuw nsw i64 %indvars.iv96, 1 ; 2 uses
  %i.ln = zext i32 %i.lm to i64
  %i.lo = icmp samesign ult i64 %indvars.iv.next97, %i.ln
  br i1 %i.lo, label %bb.av, label %.loopexit, !llvm.loop !688

.loopexit:                                        ; preds = %bb.ax, %.preheader, %bb.au
  %i.lp = load i64, ptr %i.b, align 8, !tbaa !144
  %i.lq = trunc i64 %i.lp to i32
  %i.lr = load ptr, ptr @zend_jit_traces, align 8, !tbaa !73 ; 2 uses
  %i.ls = load i32, ptr %i.lr, align 8, !tbaa !201
  %i.lt = zext i32 %i.ls to i64
  %i.lu = getelementptr inbounds nuw [104 x i8], ptr %i.lr, i64 %i.lt ; 2 uses
  %i.lv = getelementptr inbounds nuw i8, ptr %i.lu, i64 64
  store ptr %i.ie, ptr %i.lv, align 8, !tbaa !232
  %i.lw = getelementptr inbounds nuw i8, ptr %i.lu, i64 24
  store i32 %i.lq, ptr %i.lw, align 8, !tbaa !272
  br label %.loopexit80

.loopexit80:                                      ; preds = %.prol.loopexit, %.preheader79.new, %.loopexit82, %.loopexit, %_zend_jit_fix_merges.exit
  br i1 %i.ib, label %bb.ay, label %zend_string_release.exit

bb.ay:                                            ; preds = %.loopexit80
  %i.lx = getelementptr inbounds nuw i8, ptr %.056, i64 4
  %i.ly = load i32, ptr %i.lx, align 4, !tbaa !72 ; 2 uses
  %i.lz = and i32 %i.ly, 64
  %.not.i = icmp eq i32 %i.lz, 0
  br i1 %.not.i, label %bb.az, label %zend_string_release.exit

bb.az:                                            ; preds = %bb.ay
  %i.ma = load i32, ptr %.056, align 4, !tbaa !294 ; 2 uses
  %i.mb = icmp ne i32 %i.ma, 0
  call void @llvm.assume(i1 %i.mb)
  %i.mc = add i32 %i.ma, -1                       ; 2 uses
  store i32 %i.mc, ptr %.056, align 4, !tbaa !294
  %i.md = icmp eq i32 %i.mc, 0
  br i1 %i.md, label %bb.ba, label %zend_string_release.exit

bb.ba:                                            ; preds = %bb.az
  %i.me = and i32 %i.ly, 128
  %.not5.i = icmp eq i32 %i.me, 0
  br i1 %.not5.i, label %bb.bc, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  call void @free(ptr noundef nonnull %.056) #34
  br label %zend_string_release.exit

bb.bc:                                            ; preds = %bb.ba
  call void @_efree(ptr noundef nonnull %.056) #34
  br label %zend_string_release.exit

zend_string_release.exit:                         ; preds = %bb.bc, %bb.bb, %bb.az, %bb.ay, %.loopexit80
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #34
  ret ptr %i.ie
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @zend_jit_trace_setup_ret_counter(ptr nofree noundef captures(none) %0, i64 noundef %1) unnamed_addr #18 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.b = load i64, ptr getelementptr inbounds nuw (i8, ptr @jit_globals, i64 88), align 8, !tbaa !404
  %.not = icmp eq i64 %i.b, 0
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 %1 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 24 ; 2 uses
  %i.e = load i8, ptr %i.d, align 8, !tbaa !72
  %.not9 = icmp eq i8 %i.e, 0
  br i1 %.not9, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !72
  %.not10 = icmp eq ptr %i.g, null
  br i1 %.not10, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.h = load ptr, ptr @zend_jit_traces, align 8, !tbaa !73
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 4 ; 3 uses
  %i.j = load i32, ptr %i.i, align 4, !tbaa !255
  %i.k = zext i32 %i.j to i64
  %i.l = getelementptr inbounds nuw [2 x i8], ptr @zend_jit_hot_counters, i64 %i.k
  store ptr %i.l, ptr %i.f, align 8, !tbaa !72
  %i.m = load i32, ptr %i.i, align 4, !tbaa !255
  %i.n = add i32 %i.m, 1
  %i.o = and i32 %i.n, 127
  store i32 %i.o, ptr %i.i, align 4, !tbaa !255
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  store i8 4, ptr %i.d, align 8, !tbaa !72
  %i.p = load ptr, ptr @zend_jit_ret_trace_counter_handler, align 8, !tbaa !75
  store ptr %i.p, ptr %i.a, align 8, !tbaa !114
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.b, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @zend_jit_free_ctx(ptr noundef nonnull %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 984
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !295  ; 6 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %zend_string_release.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.d = load i32, ptr %i.c, align 4, !tbaa !72   ; 2 uses
  %i.e = and i32 %i.d, 64
  %.not.i = icmp eq i32 %i.e, 0
  br i1 %.not.i, label %bb.c, label %zend_string_release.exit

bb.c:                                             ; preds = %bb.b
  %i.f = load i32, ptr %i.b, align 4, !tbaa !294  ; 2 uses
  %i.g = icmp ne i32 %i.f, 0
  tail call void @llvm.assume(i1 %i.g)
  %i.h = add i32 %i.f, -1                         ; 2 uses
  store i32 %i.h, ptr %i.b, align 4, !tbaa !294
  %i.i = icmp eq i32 %i.h, 0
  br i1 %i.i, label %bb.d, label %zend_string_release.exit

bb.d:                                             ; preds = %bb.c
  %i.j = and i32 %i.d, 128
  %.not5.i = icmp eq i32 %i.j, 0
  br i1 %.not5.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @free(ptr noundef nonnull %i.b) #34
  br label %zend_string_release.exit

bb.f:                                             ; preds = %bb.d
  tail call void @_efree(ptr noundef nonnull %i.b) #34
  br label %zend_string_release.exit

zend_string_release.exit:                         ; preds = %bb.f, %bb.e, %bb.c, %bb.b, %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 1056
  tail call void @zend_hash_destroy(ptr noundef nonnull %i.k) #34
  tail call void @ir_free(ptr noundef nonnull %0) #34
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc noundef nonnull ptr @zend_jit_trace_build_ssa(ptr noundef %0) unnamed_addr #0 {
bb.a:
  %1 = alloca %struct._zend_cfg, align 8          ; 8 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.b = load i32, ptr @zend_func_info_rid, align 4, !tbaa !78
  %i.c = sext i32 %i.b to i64
  %i.d = getelementptr inbounds [8 x i8], ptr %i.a, i64 %i.c
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !75   ; 12 uses
  store i32 0, ptr %i.e, align 8, !tbaa !405
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 4 ; 2 uses
  %i.g = load i32, ptr %i.f, align 4, !tbaa !199
  %i.h = and i32 %i.g, 122880
  store i32 %i.h, ptr %i.f, align 4, !tbaa !199
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 7 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %i.i, i8 0, i64 144, i1 false)
  %i.j = load i8, ptr getelementptr inbounds nuw (i8, ptr @jit_globals, i64 3), align 1, !tbaa !95 ; 2 uses
  %i.k = icmp ugt i8 %i.j, 2
  br i1 %i.k, label %bb.b, label %zend_jit_op_array_analyze2.exit

bb.b:                                             ; preds = %bb.a
  %i.l = tail call fastcc i32 @zend_jit_op_array_analyze1(ptr noundef nonnull %0, ptr noundef null, ptr noundef nonnull %i.i)
  %.not = icmp eq i32 %i.l, 0
  br i1 %.not, label %bb.c, label %zend_jit_op_array_analyze2.exitthread-pre-split

bb.c:                                             ; preds = %bb.b
  %i.m = load i8, ptr getelementptr inbounds nuw (i8, ptr @jit_globals, i64 3), align 1, !tbaa !95 ; 2 uses
  %i.n = icmp ugt i8 %i.m, 3
  br i1 %i.n, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  tail call void @zend_analyze_calls(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @compiler_globals, i64 360), ptr noundef null, i32 noundef 8388608, ptr noundef nonnull %0, ptr noundef nonnull %i.e) #34
  %i.o = tail call ptr @zend_build_call_map(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @compiler_globals, i64 360), ptr noundef nonnull %i.e, ptr noundef nonnull %0) #34
  %i.p = getelementptr inbounds nuw i8, ptr %i.e, i64 104
  store ptr %i.o, ptr %i.p, align 8, !tbaa !691
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.r = load i32, ptr %i.q, align 4, !tbaa !111
  %i.s = and i32 %i.r, 8192
  %.not34 = icmp eq i32 %i.s, 0
  br i1 %.not34, label %thread-pre-split, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.t = getelementptr inbounds nuw i8, ptr %i.e, i64 112
  tail call void @zend_init_func_return_info(ptr noundef nonnull %0, ptr noundef null, ptr noundef nonnull %i.t) #34
  br label %thread-pre-split

thread-pre-split:                                 ; preds = %bb.e, %bb.d
  %.pr = load i8, ptr getelementptr inbounds nuw (i8, ptr @jit_globals, i64 3), align 1, !tbaa !95
end_hunk_4
