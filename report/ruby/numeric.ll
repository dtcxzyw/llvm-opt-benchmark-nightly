inline.NumInlined: 1036
inline.NumDeleted: 137
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 3
begin_hunk_0_@rb_float_floor:bb.a

bb.m:                                             ; preds = %bb.k
  %.nonneg.i = sub i32 0, %i.ah
  %i.ak = udiv i32 %.nonneg.i, 3
  %i.al = xor i32 %i.ak, -1
  br label %float_round_overflow.exit

float_round_overflow.exit:                        ; preds = %bb.l, %bb.m
  %i.am = phi i32 [ %i.aj, %bb.l ], [ %i.al, %bb.m ]
  %i.an = sub nsw i32 17, %i.am
  %.not.i.not = icmp slt i32 %1, %i.an
  br i1 %.not.i.not, label %bb.n, label %rb_float_new_inline.exit40

bb.n:                                             ; preds = %float_round_overflow.exit
  %i.ao = fcmp ogt double %.0.i, 0.000000e+00
  br i1 %i.ao, label %bb.o, label %bb.r

bb.o:                                             ; preds = %bb.n
  br i1 %i.ai, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.ap = udiv i32 %i.ah, 3
  %.neg.i = xor i32 %i.ap, -1
  br label %float_round_underflow.exit

bb.q:                                             ; preds = %bb.o
  %.nonneg.i34 = sub i32 0, %i.ah
  %.neg6910.i = lshr i32 %.nonneg.i34, 2
  br label %float_round_underflow.exit

float_round_underflow.exit:                       ; preds = %bb.p, %bb.q
  %.neg7.i = phi i32 [ %.neg.i, %bb.p ], [ %.neg6910.i, %bb.q ]
  %.not = icmp slt i32 %1, %.neg7.i
  br i1 %.not, label %rb_float_new_inline.exit40, label %bb.r

bb.r:                                             ; preds = %float_round_underflow.exit, %bb.n
  %i.aq = uitofp nneg i32 %1 to double
  %i.ar = tail call double @pow(double noundef 1.000000e+01, double noundef %i.aq) #25, !tbaa !7 ; 2 uses
  %i.as = fmul double %.0.i, %i.ar
  %i.at = tail call double @llvm.floor.f64(double %i.as)
  %i.au = insertelement <2 x double> poison, double %i.at, i64 0
  %i.av = shufflevector <2 x double> %i.au, <2 x double> poison, <2 x i32> zeroinitializer
  %i.aw = fadd <2 x double> %i.av, <double 1.000000e+00, double -0.000000e+00>
  %i.ax = insertelement <2 x double> poison, double %i.ar, i64 0
  %i.ay = shufflevector <2 x double> %i.ax, <2 x double> poison, <2 x i32> zeroinitializer
  %i.az = fdiv <2 x double> %i.aw, %i.ay          ; 2 uses
  %i.ba = extractelement <2 x double> %i.az, i64 0 ; 2 uses
  %i.bb = fcmp ogt double %i.ba, %.0.i
  %i.bc = extractelement <2 x double> %i.az, i64 1
  %.0 = select i1 %i.bb, double %i.bc, double %i.ba ; 2 uses
  %i.bd = bitcast double %.0 to i64               ; 5 uses
  %cond.i37 = icmp eq i64 %i.bd, 3458764513820540928
  br i1 %cond.i37, label %bb.v, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.be = lshr i64 %i.bd, 60
  %i.bf = trunc nuw nsw i64 %i.be to i32
  %i.bg = and i32 %i.bf, 7
  %i.bh = add nsw i32 %i.bg, -5
  %i.bi = icmp ult i32 %i.bh, -2
  br i1 %i.bi, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bj = tail call noundef i64 @llvm.fshl.i64(i64 range(i64 3458764513820540929, 3458764513820540928) %i.bd, i64 range(i64 3458764513820540929, 3458764513820540928) %i.bd, i64 3)
  %i.bk = and i64 %i.bj, -4
  %i.bl = or disjoint i64 %i.bk, 2
  br label %rb_float_new_inline.exit40

bb.u:                                             ; preds = %bb.s
  %i.bm = icmp eq i64 %i.bd, 0
  br i1 %i.bm, label %rb_float_new_inline.exit40, label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.bn = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @ruby_current_ec)
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !18
  store volatile ptr %i.bo, ptr %i.a, align 8, !tbaa !18
  %.0..0..0..0..0..0..0..0..0..0..i.i.i39 = load volatile ptr, ptr %i.a, align 8, !tbaa !18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.bp = load i64, ptr @rb_cFloat, align 8, !tbaa !11
  %i.bq = tail call i64 @rb_wb_protected_newobj_of(ptr noundef %.0..0..0..0..0..0..0..0..0..0..i.i.i39, i64 noundef %i.bp, i64 noundef 4, i32 noundef 0, i64 noundef 24) #25 ; 3 uses
  %i.br = inttoptr i64 %i.bq to ptr
  %i.bs = getelementptr i8, ptr %i.br, i64 16
  store double %.0, ptr %i.bs, align 8, !tbaa !21
  tail call void @rb_obj_freeze_inline(i64 noundef %i.bq) #25
  br label %rb_float_new_inline.exit40

rb_float_new_inline.exit40:                       ; preds = %bb.v, %bb.u, %bb.t, %float_round_underflow.exit, %float_round_overflow.exit
  %.025 = phi i64 [ -9223372036854775806, %float_round_underflow.exit ], [ %0, %float_round_overflow.exit ], [ %i.bl, %bb.t ], [ %i.bq, %bb.v ], [ -9223372036854775806, %bb.u ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #25
  br label %rb_float_new_inline.exit

bb.w:                                             ; preds = %bb.j
  %i.bt = tail call double @llvm.floor.f64(double %.0.i) ; 4 uses
  %i.bu = fcmp olt double %i.bt, f0x43D0000000000000
  %i.bv = fcmp oge double %i.bt, f0xC3D0000000000000
  %or.cond.i = and i1 %i.bu, %i.bv
  br i1 %or.cond.i, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.bw = fptosi double %i.bt to i64
  %i.bx = shl i64 %i.bw, 1
  %i.by = or disjoint i64 %i.bx, 1
  br label %dbl2ival.exit

bb.y:                                             ; preds = %bb.w
  %i.bz = tail call i64 @rb_dbl2big(double noundef %i.bt) #25
  br label %dbl2ival.exit

dbl2ival.exit:                                    ; preds = %bb.x, %bb.y
  %.0.i41 = phi i64 [ %i.by, %bb.x ], [ %i.bz, %bb.y ] ; 2 uses
  %i.ca = icmp slt i32 %1, 0
  br i1 %i.ca, label %bb.z, label %rb_float_new_inline.exit

bb.z:                                             ; preds = %dbl2ival.exit
  %i.cb = tail call fastcc i64 @rb_int_floor(i64 noundef %.0.i41, i32 noundef %1)
  br label %rb_float_new_inline.exit

rb_float_new_inline.exit:                         ; preds = %bb.i, %bb.h, %bb.g, %dbl2ival.exit, %bb.z, %rb_float_value_inline.exit.thread, %rb_float_new_inline.exit40
  %.1 = phi i64 [ 1, %rb_float_value_inline.exit.thread ], [ %.025, %rb_float_new_inline.exit40 ], [ %.0.i41, %dbl2ival.exit ], [ %i.cb, %bb.z ], [ %i.x, %bb.g ], [ %i.ac, %bb.i ], [ -9223372036854775806, %bb.h ]
  ret i64 %.1
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare double @frexp(double noundef, ptr noundef captures(none)) local_unnamed_addr #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.floor.f64(double) #9

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i64 @rb_int_floor(i64 noundef %0, i32 noundef range(i32 -2147483648, 0) %1) unnamed_addr #2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %i.c = alloca i64, align 8                      ; 5 uses
  %i.d = alloca i64, align 8                      ; 5 uses
  %i.e = sub i32 0, %1
  %i.f = sext i32 %i.e to i64
  %i.g = tail call fastcc i64 @int_pow(i64 noundef 10, i64 noundef %i.f)
  %.fr = freeze i64 %i.g                          ; 8 uses
  %i.h = trunc i64 %0 to i1
  br i1 %i.h, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.i = trunc i64 %.fr to i1
  br i1 %i.i, label %bb.c, label %int_neg_p.exit

bb.c:                                             ; preds = %bb.b
  %i.j = ashr i64 %0, 1                           ; 3 uses
  %i.k = ashr i64 %.fr, 1                         ; 2 uses
  %i.l = icmp slt i64 %i.j, 0                     ; 2 uses
  %i.m = xor i64 %i.j, -1
  %i.n = add nsw i64 %i.k, %i.m
  %.027 = select i1 %i.l, i64 %i.n, i64 %i.j      ; 2 uses
  %i.o = srem i64 %.027, %i.k
  %i.p = sub nsw i64 %.027, %i.o                  ; 2 uses
  %i.q = sub i64 0, %i.p
  %.128 = select i1 %i.l, i64 %i.q, i64 %i.p      ; 3 uses
  %i.r = add i64 %.128, 4611686018427387904
  %or.cond.i = icmp sgt i64 %i.r, -1
  br i1 %or.cond.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.s = shl nsw i64 %.128, 1
  %i.t = or disjoint i64 %i.s, 1
  br label %rb_long2num_inline.exit

bb.e:                                             ; preds = %bb.c
  %i.u = tail call i64 @rb_int2big(i64 noundef %.128) #25
  br label %rb_long2num_inline.exit

bb.f:                                             ; preds = %bb.a
  %i.v = icmp eq i64 %0, 0
  %i.w = and i64 %0, 6
  %i.x = icmp ne i64 %i.w, 0
  %i.y = or i1 %i.v, %i.x
  br i1 %i.y, label %rbimpl_RB_TYPE_P_fastpath.exit.thread.i, label %rbimpl_RB_TYPE_P_fastpath.exit.i

rbimpl_RB_TYPE_P_fastpath.exit.i:                 ; preds = %bb.f
  %i.z = inttoptr i64 %0 to ptr
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !13  ; 2 uses
  %i.ab = and i64 %i.aa, 31
  %i.ac = icmp eq i64 %i.ab, 10
  br i1 %i.ac, label %int_neg_p.exit.thread, label %rbimpl_RB_TYPE_P_fastpath.exit.thread.i

rbimpl_RB_TYPE_P_fastpath.exit.thread.i:          ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i, %bb.f
  %i.ad = load i64, ptr @rb_eTypeError, align 8, !tbaa !11
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.ad, ptr noundef nonnull @.str.140) #24
  unreachable

int_neg_p.exit:                                   ; preds = %bb.b
  %.not = icmp sgt i64 %0, -1
  br i1 %.not, label %rb_int_minus.exit, label %bb.g

int_neg_p.exit.thread:                            ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i
  %i.ae = and i64 %i.aa, 8192
  %.not.i.i.not = icmp eq i64 %i.ae, 0
  br i1 %.not.i.i.not, label %.thread51, label %rb_int_minus.exit

bb.g:                                             ; preds = %int_neg_p.exit
  %.not.i.i33 = icmp samesign ult i64 %0, -9223372036854775806
  br i1 %.not.i.i33, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %2 = and i64 %0, -2
  %3 = sub nsw i64 1, %2
  br label %rb_int_uminus.exit

bb.i:                                             ; preds = %bb.g
  %i.af = tail call i64 @rb_int2big(i64 noundef 4611686018427387904) #25
  br label %rb_int_uminus.exit

.thread51:                                        ; preds = %int_neg_p.exit.thread
  %i.ag = tail call i64 @rb_big_uminus(i64 noundef %0) #25
  br label %rb_int_uminus.exit

rb_int_uminus.exit:                               ; preds = %bb.h, %bb.i, %.thread51
  %.0.i32 = phi i64 [ %i.ag, %.thread51 ], [ %3, %bb.h ], [ %i.af, %bb.i ] ; 7 uses
  %i.ah = trunc i64 %.0.i32 to i1
  br i1 %i.ah, label %bb.j, label %bb.k

bb.j:                                             ; preds = %rb_int_uminus.exit
  %i.ai = tail call fastcc i64 @fix_plus(i64 noundef %.0.i32, i64 noundef %.fr)
  br label %rb_int_plus.exit

bb.k:                                             ; preds = %rb_int_uminus.exit
  %i.aj = icmp eq i64 %.0.i32, 0
  %i.ak = and i64 %.0.i32, 6
  %i.al = icmp ne i64 %i.ak, 0
  %i.am = or i1 %i.aj, %i.al
  br i1 %i.am, label %rbimpl_RB_TYPE_P_fastpath.exit.thread.i35, label %rbimpl_RB_TYPE_P_fastpath.exit.i34

rbimpl_RB_TYPE_P_fastpath.exit.i34:               ; preds = %bb.k
  %i.an = inttoptr i64 %.0.i32 to ptr
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !13
  %i.ap = and i64 %i.ao, 31
  %i.aq = icmp eq i64 %i.ap, 10
  br i1 %i.aq, label %bb.l, label %rbimpl_RB_TYPE_P_fastpath.exit.thread.i35

bb.l:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i34
  %i.ar = tail call i64 @rb_big_plus(i64 noundef %.0.i32, i64 noundef %.fr) #25
  br label %rb_int_plus.exit

rbimpl_RB_TYPE_P_fastpath.exit.thread.i35:        ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i34, %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store i64 %.0.i32, ptr %i.c, align 8, !tbaa !11
  store i64 %.fr, ptr %i.d, align 8, !tbaa !11
  call fastcc void @do_coerce(ptr noundef nonnull %i.c, ptr noundef nonnull %i.d, i32 noundef 1)
  %i.as = load i64, ptr %i.c, align 8, !tbaa !11
  %i.at = load i64, ptr %i.d, align 8, !tbaa !11
  %i.au = call i64 (i64, i64, i32, ...) @rb_funcall(i64 noundef %i.as, i64 noundef 43, i32 noundef 1, i64 noundef %i.at) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %rb_int_plus.exit

rb_int_plus.exit:                                 ; preds = %bb.j, %bb.l, %rbimpl_RB_TYPE_P_fastpath.exit.thread.i35
  %.0.i36 = phi i64 [ %i.ai, %bb.j ], [ %i.ar, %bb.l ], [ %i.au, %rbimpl_RB_TYPE_P_fastpath.exit.thread.i35 ] ; 7 uses
  %i.av = trunc i64 %.0.i36 to i1
  br i1 %i.av, label %bb.m, label %bb.o

bb.m:                                             ; preds = %rb_int_plus.exit
  %i.aw = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %.0.i36, i64 -2) ; 2 uses
  %i.ax = extractvalue { i64, i1 } %i.aw, 1
  %i.ay = extractvalue { i64, i1 } %i.aw, 0       ; 2 uses
  br i1 %i.ax, label %bb.n, label %rb_int_minus.exit

bb.n:                                             ; preds = %bb.m
  %i.az = ashr i64 %i.ay, 1
  %i.ba = xor i64 %i.az, -9223372036854775808
  %i.bb = call i64 @rb_int2big(i64 noundef %i.ba) #25
  br label %rb_int_minus.exit

bb.o:                                             ; preds = %rb_int_plus.exit
  %i.bc = icmp eq i64 %.0.i36, 0
  %i.bd = and i64 %.0.i36, 6
  %i.be = icmp ne i64 %i.bd, 0
  %i.bf = or i1 %i.bc, %i.be
  br i1 %i.bf, label %rbimpl_RB_TYPE_P_fastpath.exit.thread.i38, label %rbimpl_RB_TYPE_P_fastpath.exit.i37

rbimpl_RB_TYPE_P_fastpath.exit.i37:               ; preds = %bb.o
  %i.bg = inttoptr i64 %.0.i36 to ptr
  %i.bh = load i64, ptr %i.bg, align 8, !tbaa !13
  %i.bi = and i64 %i.bh, 31
  %i.bj = icmp eq i64 %i.bi, 10
  br i1 %i.bj, label %bb.p, label %rbimpl_RB_TYPE_P_fastpath.exit.thread.i38

bb.p:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i37
  %i.bk = call i64 @rb_big_minus(i64 noundef %.0.i36, i64 noundef 3) #25
  br label %rb_int_minus.exit

rbimpl_RB_TYPE_P_fastpath.exit.thread.i38:        ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i37, %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 %.0.i36, ptr %i.a, align 8, !tbaa !11
  store i64 3, ptr %i.b, align 8, !tbaa !11
  call fastcc void @do_coerce(ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, i32 noundef 1)
  %i.bl = load i64, ptr %i.a, align 8, !tbaa !11
  %i.bm = load i64, ptr %i.b, align 8, !tbaa !11
  %i.bn = call i64 (i64, i64, i32, ...) @rb_funcall(i64 noundef %i.bl, i64 noundef 45, i32 noundef 1, i64 noundef %i.bm) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %rb_int_minus.exit

rb_int_minus.exit:                                ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.thread.i38, %bb.p, %bb.m, %bb.n, %int_neg_p.exit.thread, %int_neg_p.exit
  %.not50 = phi i1 [ true, %int_neg_p.exit.thread ], [ true, %int_neg_p.exit ], [ false, %bb.n ], [ false, %bb.m ], [ false, %bb.p ], [ false, %rbimpl_RB_TYPE_P_fastpath.exit.thread.i38 ]
  %.026 = phi i64 [ %0, %int_neg_p.exit.thread ], [ %0, %int_neg_p.exit ], [ %i.bb, %bb.n ], [ %i.ay, %bb.m ], [ %i.bk, %bb.p ], [ %i.bn, %rbimpl_RB_TYPE_P_fastpath.exit.thread.i38 ] ; 6 uses
  %i.bo = trunc i64 %.026 to i1
  br i1 %i.bo, label %bb.q, label %bb.r

bb.q:                                             ; preds = %rb_int_minus.exit
  %i.bp = call fastcc i64 @fix_divide(i64 noundef %.026, i64 noundef %.fr, i64 noundef 47), !inline_history !28
  br label %rb_int_div.exit

bb.r:                                             ; preds = %rb_int_minus.exit
  %i.bq = icmp eq i64 %.026, 0
  %i.br = and i64 %.026, 6
  %i.bs = icmp ne i64 %i.br, 0
  %i.bt = or i1 %i.bq, %i.bs
  br i1 %i.bt, label %rb_int_div.exit, label %rbimpl_RB_TYPE_P_fastpath.exit.i40

rbimpl_RB_TYPE_P_fastpath.exit.i40:               ; preds = %bb.r
  %i.bu = inttoptr i64 %.026 to ptr
  %i.bv = load i64, ptr %i.bu, align 8, !tbaa !13
  %i.bw = and i64 %i.bv, 31
  %i.bx = icmp eq i64 %i.bw, 10
  br i1 %i.bx, label %bb.s, label %rb_int_div.exit

bb.s:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i40
  %i.by = call i64 @rb_big_div(i64 noundef %.026, i64 noundef %.fr) #25, !inline_history !29
  br label %rb_int_div.exit

rb_int_div.exit:                                  ; preds = %bb.r, %bb.q, %rbimpl_RB_TYPE_P_fastpath.exit.i40, %bb.s
  %.0.i41 = phi i64 [ %i.bp, %bb.q ], [ %i.by, %bb.s ], [ 4, %rbimpl_RB_TYPE_P_fastpath.exit.i40 ], [ 4, %bb.r ]
  %i.bz = call i64 @rb_int_mul(i64 noundef %.0.i41, i64 noundef %.fr) ; 5 uses
  br i1 %.not50, label %rb_long2num_inline.exit, label %bb.t

bb.t:                                             ; preds = %rb_int_div.exit
  %i.ca = trunc i64 %i.bz to i1
  br i1 %i.ca, label %bb.u, label %bb.x

bb.u:                                             ; preds = %bb.t
  %.not.i.i43 = icmp slt i64 %i.bz, -9223372036854775806
  br i1 %.not.i.i43, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %4 = and i64 %i.bz, -2
  %5 = sub i64 1, %4
  br label %rb_long2num_inline.exit

bb.w:                                             ; preds = %bb.u
  %i.cb = call i64 @rb_int2big(i64 noundef 4611686018427387904) #25
  br label %rb_long2num_inline.exit

bb.x:                                             ; preds = %bb.t
  %i.cc = call i64 @rb_big_uminus(i64 noundef %i.bz) #25
  br label %rb_long2num_inline.exit

rb_long2num_inline.exit:                          ; preds = %bb.x, %bb.w, %bb.v, %bb.e, %bb.d, %rb_int_div.exit
  %.0 = phi i64 [ %i.bz, %rb_int_div.exit ], [ %i.u, %bb.e ], [ %i.t, %bb.d ], [ %i.cc, %bb.x ], [ %5, %bb.v ], [ %i.cb, %bb.w ]
  ret i64 %.0
}

; Function Attrs: nounwind sspstrong uwtable
define hidden i64 @rb_float_ceil(i64 noundef %0, i32 noundef %1) local_unnamed_addr #2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = and i64 %0, 3
  %i.e = icmp eq i64 %i.d, 2
  br i1 %i.e, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %.not.i.i = icmp eq i64 %0, -9223372036854775806
  br i1 %.not.i.i, label %rb_float_value_inline.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.neg.i.i = ashr i64 %0, 63
  %i.f = add nsw i64 %.neg.i.i, 2
  %i.g = and i64 %0, -4
  %i.h = or i64 %i.f, %i.g                        ; 2 uses
  %i.i = tail call noundef i64 @llvm.fshl.i64(i64 range(i64 1, 0) %i.h, i64 range(i64 1, 0) %i.h, i64 61)
  %i.j = bitcast i64 %i.i to double
  br label %rb_float_value_inline.exit

bb.d:                                             ; preds = %bb.a
  %i.k = inttoptr i64 %0 to ptr
  %i.l = getelementptr i8, ptr %i.k, i64 16
  %i.m = load double, ptr %i.l, align 8, !tbaa !21
  br label %rb_float_value_inline.exit

rb_float_value_inline.exit:                       ; preds = %bb.c, %bb.d
  %.0.i = phi double [ %i.m, %bb.d ], [ %i.j, %bb.c ] ; 6 uses
  %i.n = fcmp oeq double %.0.i, 0.000000e+00
  br i1 %i.n, label %rb_float_value_inline.exit.thread, label %bb.j

rb_float_value_inline.exit.thread:                ; preds = %bb.b, %rb_float_value_inline.exit
  %.0.i36 = phi double [ %.0.i, %rb_float_value_inline.exit ], [ 0.000000e+00, %bb.b ] ; 2 uses
  %i.o = icmp sgt i32 %1, 0
  br i1 %i.o, label %bb.e, label %rb_float_new_inline.exit

bb.e:                                             ; preds = %rb_float_value_inline.exit.thread
  %i.p = bitcast double %.0.i36 to i64            ; 5 uses
  %cond.i = icmp eq i64 %i.p, 3458764513820540928
  br i1 %cond.i, label %bb.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.q = lshr i64 %i.p, 60
  %i.r = trunc nuw nsw i64 %i.q to i32
  %i.s = and i32 %i.r, 7
  %i.t = add nsw i32 %i.s, -5
  %i.u = icmp ult i32 %i.t, -2
  br i1 %i.u, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.v = tail call noundef i64 @llvm.fshl.i64(i64 range(i64 3458764513820540929, 3458764513820540928) %i.p, i64 range(i64 3458764513820540929, 3458764513820540928) %i.p, i64 3)
  %i.w = and i64 %i.v, -4
  %i.x = or disjoint i64 %i.w, 2
  br label %rb_float_new_inline.exit

bb.h:                                             ; preds = %bb.f
  %i.y = icmp eq i64 %i.p, 0
  br i1 %i.y, label %rb_float_new_inline.exit, label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.z = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @ruby_current_ec)
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !18
  store volatile ptr %i.aa, ptr %i.b, align 8, !tbaa !18
  %.0..0..0..0..0..0..0..0..0..0..i.i.i = load volatile ptr, ptr %i.b, align 8, !tbaa !18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.ab = load i64, ptr @rb_cFloat, align 8, !tbaa !11
  %i.ac = tail call i64 @rb_wb_protected_newobj_of(ptr noundef %.0..0..0..0..0..0..0..0..0..0..i.i.i, i64 noundef %i.ab, i64 noundef 4, i32 noundef 0, i64 noundef 24) #25 ; 3 uses
  %i.ad = inttoptr i64 %i.ac to ptr
  %i.ae = getelementptr i8, ptr %i.ad, i64 16
  store double %.0.i36, ptr %i.ae, align 8, !tbaa !21
  tail call void @rb_obj_freeze_inline(i64 noundef %i.ac) #25
  br label %rb_float_new_inline.exit

bb.j:                                             ; preds = %rb_float_value_inline.exit
  %i.af = icmp sgt i32 %1, 0
  br i1 %i.af, label %bb.k, label %bb.w

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #25
  %i.ag = call double @frexp(double noundef %.0.i, ptr noundef nonnull %i.c) #25 ; 0 uses
  %i.ah = load i32, ptr %i.c, align 4, !tbaa !7   ; 5 uses
  %i.ai = icmp sgt i32 %i.ah, 0                   ; 2 uses
  br i1 %i.ai, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.aj = lshr i32 %i.ah, 2
  br label %float_round_overflow.exit

bb.m:                                             ; preds = %bb.k
  %.nonneg.i = sub i32 0, %i.ah
  %i.ak = udiv i32 %.nonneg.i, 3
  %i.al = xor i32 %i.ak, -1
  br label %float_round_overflow.exit

float_round_overflow.exit:                        ; preds = %bb.l, %bb.m
  %i.am = phi i32 [ %i.aj, %bb.l ], [ %i.al, %bb.m ]
  %i.an = sub nsw i32 17, %i.am
  %.not.i.not = icmp slt i32 %1, %i.an
  br i1 %.not.i.not, label %bb.n, label %rb_float_new_inline.exit33

bb.n:                                             ; preds = %float_round_overflow.exit
  %i.ao = fcmp olt double %.0.i, 0.000000e+00
  br i1 %i.ao, label %bb.o, label %bb.r

bb.o:                                             ; preds = %bb.n
  br i1 %i.ai, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.ap = udiv i32 %i.ah, 3
  %.neg.i = xor i32 %i.ap, -1
  br label %float_round_underflow.exit

bb.q:                                             ; preds = %bb.o
  %.nonneg.i27 = sub i32 0, %i.ah
  %.neg6910.i = lshr i32 %.nonneg.i27, 2
  br label %float_round_underflow.exit

float_round_underflow.exit:                       ; preds = %bb.p, %bb.q
  %.neg7.i = phi i32 [ %.neg.i, %bb.p ], [ %.neg6910.i, %bb.q ]
  %.not = icmp slt i32 %1, %.neg7.i
  br i1 %.not, label %rb_float_new_inline.exit33, label %bb.r

bb.r:                                             ; preds = %float_round_underflow.exit, %bb.n
  %i.aq = uitofp nneg i32 %1 to double
  %i.ar = tail call double @pow(double noundef 1.000000e+01, double noundef %i.aq) #25, !tbaa !7 ; 2 uses
  %i.as = fmul double %.0.i, %i.ar
  %i.at = tail call double @llvm.ceil.f64(double %i.as)
  %i.au = fdiv double %i.at, %i.ar                ; 2 uses
  %i.av = bitcast double %i.au to i64             ; 5 uses
  %cond.i30 = icmp eq i64 %i.av, 3458764513820540928
  br i1 %cond.i30, label %bb.v, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.aw = lshr i64 %i.av, 60
  %i.ax = trunc nuw nsw i64 %i.aw to i32
  %i.ay = and i32 %i.ax, 7
  %i.az = add nsw i32 %i.ay, -5
  %i.ba = icmp ult i32 %i.az, -2
  br i1 %i.ba, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bb = tail call noundef i64 @llvm.fshl.i64(i64 range(i64 3458764513820540929, 3458764513820540928) %i.av, i64 range(i64 3458764513820540929, 3458764513820540928) %i.av, i64 3)
  %i.bc = and i64 %i.bb, -4
  %i.bd = or disjoint i64 %i.bc, 2
  br label %rb_float_new_inline.exit33

bb.u:                                             ; preds = %bb.s
  %i.be = icmp eq i64 %i.av, 0
  br i1 %i.be, label %rb_float_new_inline.exit33, label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.bf = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @ruby_current_ec)
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !18
  store volatile ptr %i.bg, ptr %i.a, align 8, !tbaa !18
  %.0..0..0..0..0..0..0..0..0..0..i.i.i32 = load volatile ptr, ptr %i.a, align 8, !tbaa !18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.bh = load i64, ptr @rb_cFloat, align 8, !tbaa !11
  %i.bi = tail call i64 @rb_wb_protected_newobj_of(ptr noundef %.0..0..0..0..0..0..0..0..0..0..i.i.i32, i64 noundef %i.bh, i64 noundef 4, i32 noundef 0, i64 noundef 24) #25 ; 3 uses
  %i.bj = inttoptr i64 %i.bi to ptr
  %i.bk = getelementptr i8, ptr %i.bj, i64 16
  store double %i.au, ptr %i.bk, align 8, !tbaa !21
  tail call void @rb_obj_freeze_inline(i64 noundef %i.bi) #25
  br label %rb_float_new_inline.exit33

rb_float_new_inline.exit33:                       ; preds = %bb.v, %bb.u, %bb.t, %float_round_underflow.exit, %float_round_overflow.exit
  %.0 = phi i64 [ -9223372036854775806, %float_round_underflow.exit ], [ %0, %float_round_overflow.exit ], [ %i.bd, %bb.t ], [ %i.bi, %bb.v ], [ -9223372036854775806, %bb.u ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #25
  br label %rb_float_new_inline.exit

bb.w:                                             ; preds = %bb.j
  %i.bl = tail call double @llvm.ceil.f64(double %.0.i) ; 4 uses
  %i.bm = fcmp olt double %i.bl, f0x43D0000000000000
  %i.bn = fcmp oge double %i.bl, f0xC3D0000000000000
  %or.cond.i = and i1 %i.bm, %i.bn
  br i1 %or.cond.i, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.bo = fptosi double %i.bl to i64
  %i.bp = shl i64 %i.bo, 1
  %i.bq = or disjoint i64 %i.bp, 1
  br label %dbl2ival.exit

bb.y:                                             ; preds = %bb.w
  %i.br = tail call i64 @rb_dbl2big(double noundef %i.bl) #25
  br label %dbl2ival.exit

dbl2ival.exit:                                    ; preds = %bb.x, %bb.y
  %.0.i34 = phi i64 [ %i.bq, %bb.x ], [ %i.br, %bb.y ] ; 2 uses
  %i.bs = icmp slt i32 %1, 0
  br i1 %i.bs, label %bb.z, label %rb_float_new_inline.exit

bb.z:                                             ; preds = %dbl2ival.exit
  %i.bt = tail call fastcc i64 @rb_int_ceil(i64 noundef %.0.i34, i32 noundef %1)
  br label %rb_float_new_inline.exit

rb_float_new_inline.exit:                         ; preds = %bb.i, %bb.h, %bb.g, %dbl2ival.exit, %bb.z, %rb_float_value_inline.exit.thread, %rb_float_new_inline.exit33
  %.1 = phi i64 [ 1, %rb_float_value_inline.exit.thread ], [ %.0, %rb_float_new_inline.exit33 ], [ %.0.i34, %dbl2ival.exit ], [ %i.bt, %bb.z ], [ %i.x, %bb.g ], [ %i.ac, %bb.i ], [ -9223372036854775806, %bb.h ]
  ret i64 %.1
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.ceil.f64(double) #9

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i64 @rb_int_ceil(i64 noundef %0, i32 noundef range(i32 -2147483648, 0) %1) unnamed_addr #2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %i.c = alloca i64, align 8                      ; 5 uses
  %i.d = alloca i64, align 8                      ; 5 uses
  %i.e = sub i32 0, %1
  %i.f = sext i32 %i.e to i64
  %i.g = tail call fastcc i64 @int_pow(i64 noundef 10, i64 noundef %i.f) ; 12 uses
  %i.h = trunc i64 %0 to i1                       ; 2 uses
  br i1 %i.h, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.i = trunc i64 %i.g to i1
  br i1 %i.i, label %bb.c, label %int_neg_p.exit

bb.c:                                             ; preds = %bb.b
  %i.j = ashr i64 %0, 1                           ; 3 uses
  %i.k = ashr i64 %i.g, 1                         ; 2 uses
  %i.l = icmp slt i64 %i.j, 0                     ; 2 uses
  %i.m = sub nsw i64 0, %i.j
  %i.n = add nsw i64 %i.j, -1
  %i.o = add nsw i64 %i.n, %i.k
  %.029 = select i1 %i.l, i64 %i.m, i64 %i.o
  %.029.fr = freeze i64 %.029                     ; 2 uses
  %i.p = srem i64 %.029.fr, %i.k
  %i.q = sub nsw i64 %.029.fr, %i.p               ; 2 uses
  %i.r = sub i64 0, %i.q
  %.130 = select i1 %i.l, i64 %i.r, i64 %i.q      ; 3 uses
  %i.s = add i64 %.130, 4611686018427387904
  %or.cond.i = icmp sgt i64 %i.s, -1
  br i1 %or.cond.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.t = shl nsw i64 %.130, 1
  %i.u = or disjoint i64 %i.t, 1
  br label %rb_long2num_inline.exit

bb.e:                                             ; preds = %bb.c
  %i.v = tail call i64 @rb_int2big(i64 noundef %.130) #25
  br label %rb_long2num_inline.exit

bb.f:                                             ; preds = %bb.a
  %i.w = icmp eq i64 %0, 0
  %i.x = and i64 %0, 6
  %i.y = icmp ne i64 %i.x, 0
  %i.z = or i1 %i.w, %i.y
  br i1 %i.z, label %rbimpl_RB_TYPE_P_fastpath.exit.thread.i, label %rbimpl_RB_TYPE_P_fastpath.exit.i

rbimpl_RB_TYPE_P_fastpath.exit.i:                 ; preds = %bb.f
  %i.aa = inttoptr i64 %0 to ptr
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !13 ; 2 uses
  %i.ac = and i64 %i.ab, 31
  %i.ad = icmp eq i64 %i.ac, 10
  br i1 %i.ad, label %int_neg_p.exit.thread, label %rbimpl_RB_TYPE_P_fastpath.exit.thread.i

rbimpl_RB_TYPE_P_fastpath.exit.thread.i:          ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i, %bb.f
  %i.ae = load i64, ptr @rb_eTypeError, align 8, !tbaa !11
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.ae, ptr noundef nonnull @.str.140) #24
  unreachable

int_neg_p.exit:                                   ; preds = %bb.b
  %.not = icmp sgt i64 %0, -1
  br i1 %.not, label %.thread, label %bb.g

int_neg_p.exit.thread:                            ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i
  %i.af = and i64 %i.ab, 8192
  %.not.i.i.not = icmp eq i64 %i.af, 0
  br i1 %.not.i.i.not, label %.thread55, label %bb.j

bb.g:                                             ; preds = %int_neg_p.exit
  %.not.i.i35 = icmp samesign ult i64 %0, -9223372036854775806
  br i1 %.not.i.i35, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %2 = and i64 %0, -2
  %3 = sub nsw i64 1, %2
  br label %rb_int_uminus.exit

bb.i:                                             ; preds = %bb.g
  %i.ag = tail call i64 @rb_int2big(i64 noundef 4611686018427387904) #25
  br label %rb_int_uminus.exit

.thread55:                                        ; preds = %int_neg_p.exit.thread
  %i.ah = tail call i64 @rb_big_uminus(i64 noundef %0) #25
  br label %rb_int_uminus.exit

bb.j:                                             ; preds = %int_neg_p.exit.thread
  %.pre = trunc i64 %i.g to i1
  br i1 %.pre, label %bb.k, label %.thread

bb.k:                                             ; preds = %bb.j
  %i.ai = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %i.g, i64 -2) ; 2 uses
  %i.aj = extractvalue { i64, i1 } %i.ai, 1
  %i.ak = extractvalue { i64, i1 } %i.ai, 0       ; 2 uses
  br i1 %i.aj, label %bb.l, label %rb_int_minus.exit.thread

bb.l:                                             ; preds = %bb.k
  %i.al = ashr i64 %i.ak, 1
  %i.am = xor i64 %i.al, -9223372036854775808
  %i.an = tail call i64 @rb_int2big(i64 noundef %i.am) #25
  br label %rb_int_minus.exit.thread

.thread:                                          ; preds = %int_neg_p.exit, %bb.j
  %i.ao = icmp eq i64 %i.g, 0
  %i.ap = and i64 %i.g, 6
  %i.aq = icmp ne i64 %i.ap, 0
  %i.ar = or i1 %i.ao, %i.aq
  br i1 %i.ar, label %rbimpl_RB_TYPE_P_fastpath.exit.thread.i37, label %rbimpl_RB_TYPE_P_fastpath.exit.i36

rbimpl_RB_TYPE_P_fastpath.exit.i36:               ; preds = %.thread
  %i.as = inttoptr i64 %i.g to ptr
  %i.at = load i64, ptr %i.as, align 8, !tbaa !13
  %i.au = and i64 %i.at, 31
  %i.av = icmp eq i64 %i.au, 10
  br i1 %i.av, label %bb.m, label %rbimpl_RB_TYPE_P_fastpath.exit.thread.i37

bb.m:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i36
  %i.aw = tail call i64 @rb_big_minus(i64 noundef %i.g, i64 noundef 3) #25
  br label %rb_int_minus.exit

rbimpl_RB_TYPE_P_fastpath.exit.thread.i37:        ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i36, %.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store i64 %i.g, ptr %i.c, align 8, !tbaa !11
  store i64 3, ptr %i.d, align 8, !tbaa !11
  call fastcc void @do_coerce(ptr noundef nonnull %i.c, ptr noundef nonnull %i.d, i32 noundef 1)
  %i.ax = load i64, ptr %i.c, align 8, !tbaa !11
  %i.ay = load i64, ptr %i.d, align 8, !tbaa !11
  %i.az = call i64 (i64, i64, i32, ...) @rb_funcall(i64 noundef %i.ax, i64 noundef 45, i32 noundef 1, i64 noundef %i.ay) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %rb_int_minus.exit

rb_int_minus.exit:                                ; preds = %bb.m, %rbimpl_RB_TYPE_P_fastpath.exit.thread.i37
  %.0.i38 = phi i64 [ %i.az, %rbimpl_RB_TYPE_P_fastpath.exit.thread.i37 ], [ %i.aw, %bb.m ] ; 2 uses
  br i1 %i.h, label %bb.n, label %rb_int_minus.exit.thread

bb.n:                                             ; preds = %rb_int_minus.exit
  %i.ba = call fastcc i64 @fix_plus(i64 noundef %0, i64 noundef %.0.i38)
  br label %rb_int_uminus.exit

rb_int_minus.exit.thread:                         ; preds = %bb.k, %bb.l, %rb_int_minus.exit
  %.0.i3864 = phi i64 [ %.0.i38, %rb_int_minus.exit ], [ %i.an, %bb.l ], [ %i.ak, %bb.k ] ; 2 uses
  %i.bb = and i64 %0, 6
  %.not59 = icmp eq i64 %i.bb, 0
  br i1 %.not59, label %rbimpl_RB_TYPE_P_fastpath.exit.i39, label %rbimpl_RB_TYPE_P_fastpath.exit.thread.i40

rbimpl_RB_TYPE_P_fastpath.exit.i39:               ; preds = %rb_int_minus.exit.thread
  %i.bc = inttoptr i64 %0 to ptr
  %i.bd = load i64, ptr %i.bc, align 8, !tbaa !13
  %i.be = and i64 %i.bd, 31
  %i.bf = icmp eq i64 %i.be, 10
  br i1 %i.bf, label %bb.o, label %rbimpl_RB_TYPE_P_fastpath.exit.thread.i40

bb.o:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i39
  %i.bg = call i64 @rb_big_plus(i64 noundef %0, i64 noundef %.0.i3864) #25
  br label %rb_int_uminus.exit

rbimpl_RB_TYPE_P_fastpath.exit.thread.i40:        ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i39, %rb_int_minus.exit.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 %0, ptr %i.a, align 8, !tbaa !11
  store i64 %.0.i3864, ptr %i.b, align 8, !tbaa !11
  call fastcc void @do_coerce(ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, i32 noundef 1)
  %i.bh = load i64, ptr %i.a, align 8, !tbaa !11
  %i.bi = load i64, ptr %i.b, align 8, !tbaa !11
  %i.bj = call i64 (i64, i64, i32, ...) @rb_funcall(i64 noundef %i.bh, i64 noundef 43, i32 noundef 1, i64 noundef %i.bi) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %rb_int_uminus.exit

rb_int_uminus.exit:                               ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.thread.i40, %bb.o, %bb.n, %.thread55, %bb.i, %bb.h
  %.not52 = phi i1 [ false, %bb.i ], [ false, %.thread55 ], [ false, %bb.h ], [ true, %bb.n ], [ true, %bb.o ], [ true, %rbimpl_RB_TYPE_P_fastpath.exit.thread.i40 ]
  %.028 = phi i64 [ %i.ag, %bb.i ], [ %i.ah, %.thread55 ], [ %3, %bb.h ], [ %i.ba, %bb.n ], [ %i.bg, %bb.o ], [ %i.bj, %rbimpl_RB_TYPE_P_fastpath.exit.thread.i40 ] ; 6 uses
  %i.bk = trunc i64 %.028 to i1
  br i1 %i.bk, label %bb.p, label %bb.q

bb.p:                                             ; preds = %rb_int_uminus.exit
  %i.bl = call fastcc i64 @fix_divide(i64 noundef %.028, i64 noundef %i.g, i64 noundef 47), !inline_history !30
  br label %rb_int_div.exit

bb.q:                                             ; preds = %rb_int_uminus.exit
  %i.bm = icmp eq i64 %.028, 0
  %i.bn = and i64 %.028, 6
  %i.bo = icmp ne i64 %i.bn, 0
  %i.bp = or i1 %i.bm, %i.bo
  br i1 %i.bp, label %rb_int_div.exit, label %rbimpl_RB_TYPE_P_fastpath.exit.i42

rbimpl_RB_TYPE_P_fastpath.exit.i42:               ; preds = %bb.q
  %i.bq = inttoptr i64 %.028 to ptr
  %i.br = load i64, ptr %i.bq, align 8, !tbaa !13
  %i.bs = and i64 %i.br, 31
  %i.bt = icmp eq i64 %i.bs, 10
  br i1 %i.bt, label %bb.r, label %rb_int_div.exit

bb.r:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i42
  %i.bu = call i64 @rb_big_div(i64 noundef %.028, i64 noundef %i.g) #25, !inline_history !29
  br label %rb_int_div.exit

rb_int_div.exit:                                  ; preds = %bb.p, %bb.q, %rbimpl_RB_TYPE_P_fastpath.exit.i42, %bb.r
  %.0.i44 = phi i64 [ %i.bl, %bb.p ], [ %i.bu, %bb.r ], [ 4, %rbimpl_RB_TYPE_P_fastpath.exit.i42 ], [ 4, %bb.q ]
  %i.bv = call i64 @rb_int_mul(i64 noundef %.0.i44, i64 noundef %i.g) ; 5 uses
  br i1 %.not52, label %rb_long2num_inline.exit, label %bb.s

bb.s:                                             ; preds = %rb_int_div.exit
  %i.bw = trunc i64 %i.bv to i1
  br i1 %i.bw, label %bb.t, label %bb.w

bb.t:                                             ; preds = %bb.s
  %.not.i.i46 = icmp slt i64 %i.bv, -9223372036854775806
  br i1 %.not.i.i46, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %4 = and i64 %i.bv, -2
  %5 = sub i64 1, %4
  br label %rb_long2num_inline.exit

bb.v:                                             ; preds = %bb.t
  %i.bx = call i64 @rb_int2big(i64 noundef 4611686018427387904) #25
  br label %rb_long2num_inline.exit

bb.w:                                             ; preds = %bb.s
  %i.by = call i64 @rb_big_uminus(i64 noundef %i.bv) #25
  br label %rb_long2num_inline.exit

rb_long2num_inline.exit:                          ; preds = %bb.w, %bb.v, %bb.u, %bb.e, %bb.d, %rb_int_div.exit
  %.0 = phi i64 [ %i.bv, %rb_int_div.exit ], [ %i.v, %bb.e ], [ %i.u, %bb.d ], [ %i.by, %bb.w ], [ %5, %bb.u ], [ %i.bx, %bb.v ]
  ret i64 %.0
}

; Function Attrs: nounwind sspstrong uwtable
define hidden i64 @rb_int_truncate(i64 noundef %0, i32 noundef %1) local_unnamed_addr #2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %i.c = alloca i64, align 8                      ; 5 uses
  %i.d = alloca i64, align 8                      ; 5 uses
  %i.e = trunc i64 %0 to i1                       ; 4 uses
  br i1 %i.e, label %int_round_zero_p.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = icmp eq i64 %0, 0
  %i.g = and i64 %0, 6
  %i.h = icmp ne i64 %i.g, 0
  %i.i = or i1 %i.f, %i.h
  br i1 %i.i, label %rbimpl_RB_TYPE_P_fastpath.exit.thread.i, label %rbimpl_RB_TYPE_P_fastpath.exit.i

rbimpl_RB_TYPE_P_fastpath.exit.i:                 ; preds = %bb.b
  %i.j = inttoptr i64 %0 to ptr
  %i.k = load i64, ptr %i.j, align 8, !tbaa !13
  %i.l = and i64 %i.k, 31
  %i.m = icmp eq i64 %i.l, 10
  br i1 %i.m, label %bb.c, label %rbimpl_RB_TYPE_P_fastpath.exit.thread.i

bb.c:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i
  %i.n = tail call i64 @rb_big_size(i64 noundef %0) #25
  br label %int_round_zero_p.exit

rbimpl_RB_TYPE_P_fastpath.exit.thread.i:          ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i, %bb.b
  %i.o = tail call i64 (i64, i64, i32, ...) @rb_funcall(i64 noundef %0, i64 noundef 3041, i32 noundef 0) #25 ; 3 uses
  %i.p = trunc i64 %i.o to i1
  br i1 %i.p, label %bb.d, label %bb.e

bb.d:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.thread.i
  %i.q = ashr i64 %i.o, 1
  br label %int_round_zero_p.exit

bb.e:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.thread.i
  %i.r = tail call i64 @rb_num2long(i64 noundef %i.o)
  br label %int_round_zero_p.exit

int_round_zero_p.exit:                            ; preds = %bb.a, %bb.c, %bb.d, %bb.e
  %.0.i = phi i64 [ 8, %bb.a ], [ %i.n, %bb.c ], [ %i.q, %bb.d ], [ %i.r, %bb.e ]
  %i.s = sitofp i32 %1 to double
  %i.t = tail call double @llvm.fmuladd.f64(double %i.s, double -4.152410e-01, double -1.250000e-01)
  %i.u = sitofp i64 %.0.i to double
  %i.v = fcmp ule double %i.t, %i.u
  br i1 %i.v, label %bb.f, label %rb_long2num_inline.exit

bb.f:                                             ; preds = %int_round_zero_p.exit
  %i.w = sub i32 0, %1
  %i.x = sext i32 %i.w to i64
  %i.y = tail call fastcc i64 @int_pow(i64 noundef 10, i64 noundef %i.x) ; 12 uses
  %i.z = trunc i64 %i.y to i1                     ; 2 uses
  %or.cond = select i1 %i.e, i1 %i.z, i1 false
  br i1 %or.cond, label %bb.g, label %bb.j

bb.g:                                             ; preds = %bb.f
  %i.aa = ashr i64 %0, 1                          ; 2 uses
  %i.ab = ashr i64 %i.y, 1
  %i.ac = icmp slt i64 %i.aa, 0
  %spec.select = tail call i64 @llvm.abs.i64(i64 %i.aa, i1 true) ; 2 uses
  %i.ad = srem i64 %spec.select, %i.ab
  %i.ae = sub nsw i64 %spec.select, %i.ad         ; 2 uses
  %i.af = sub nsw i64 0, %i.ae
  %.1 = select i1 %i.ac, i64 %i.af, i64 %i.ae     ; 3 uses
  %.not55 = icmp eq i64 %.1, 4611686018427387904
  br i1 %.not55, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ag = shl nsw i64 %.1, 1
  %i.ah = or disjoint i64 %i.ag, 1
  br label %rb_long2num_inline.exit

bb.i:                                             ; preds = %bb.g
  %i.ai = tail call i64 @rb_int2big(i64 noundef %.1) #25
  br label %rb_long2num_inline.exit

bb.j:                                             ; preds = %bb.f
  %i.aj = and i64 %i.y, 3
  %i.ak = icmp eq i64 %i.aj, 2
  br i1 %i.ak, label %rb_long2num_inline.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.al = icmp eq i64 %i.y, 0                     ; 2 uses
  %i.am = and i64 %i.y, 7
  %i.an = icmp ne i64 %i.am, 0
  %i.ao = or i1 %i.al, %i.an
  br i1 %i.ao, label %RB_FLOAT_TYPE_P.exit.thread46, label %RB_FLOAT_TYPE_P.exit

RB_FLOAT_TYPE_P.exit:                             ; preds = %bb.k
  %i.ap = inttoptr i64 %i.y to ptr
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !13
  %i.ar = and i64 %i.aq, 31
  %i.as = icmp eq i64 %i.ar, 4
  br i1 %i.as, label %rb_long2num_inline.exit, label %RB_FLOAT_TYPE_P.exit.thread46

RB_FLOAT_TYPE_P.exit.thread46:                    ; preds = %bb.k, %RB_FLOAT_TYPE_P.exit
  %i.at = tail call i64 @rb_int_modulo(i64 noundef %0, i64 noundef %i.y) ; 5 uses
  br i1 %i.e, label %int_neg_p.exit, label %bb.l

bb.l:                                             ; preds = %RB_FLOAT_TYPE_P.exit.thread46
  %i.au = icmp eq i64 %0, 0
  %i.av = and i64 %0, 6
  %i.aw = icmp ne i64 %i.av, 0
  %i.ax = or i1 %i.au, %i.aw
  br i1 %i.ax, label %rbimpl_RB_TYPE_P_fastpath.exit.thread.i33, label %rbimpl_RB_TYPE_P_fastpath.exit.i32

rbimpl_RB_TYPE_P_fastpath.exit.i32:               ; preds = %bb.l
  %i.ay = inttoptr i64 %0 to ptr
  %i.az = load i64, ptr %i.ay, align 8, !tbaa !13 ; 2 uses
  %i.ba = and i64 %i.az, 31
  %i.bb = icmp eq i64 %i.ba, 10
  br i1 %i.bb, label %int_neg_p.exit.thread, label %rbimpl_RB_TYPE_P_fastpath.exit.thread.i33

rbimpl_RB_TYPE_P_fastpath.exit.thread.i33:        ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i32, %bb.l
  %i.bc = load i64, ptr @rb_eTypeError, align 8, !tbaa !11
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.bc, ptr noundef nonnull @.str.140) #24
  unreachable

int_neg_p.exit:                                   ; preds = %RB_FLOAT_TYPE_P.exit.thread46
  %.not29 = icmp sgt i64 %0, -1
  br i1 %.not29, label %bb.t, label %bb.m

int_neg_p.exit.thread:                            ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i32
  %i.bd = and i64 %i.az, 8192
  %.not.i.i.not = icmp eq i64 %i.bd, 0
  br i1 %.not.i.i.not, label %bb.m, label %rbimpl_RB_TYPE_P_fastpath.exit.i41

bb.m:                                             ; preds = %int_neg_p.exit.thread, %int_neg_p.exit
  br i1 %i.z, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.be = tail call fastcc i64 @fix_minus(i64 noundef %i.y, i64 noundef %i.at)
  br label %rb_int_minus.exit

bb.o:                                             ; preds = %bb.m
  %i.bf = and i64 %i.y, 6
  %i.bg = icmp ne i64 %i.bf, 0
  %i.bh = or i1 %i.al, %i.bg
  br i1 %i.bh, label %rbimpl_RB_TYPE_P_fastpath.exit.thread.i36, label %rbimpl_RB_TYPE_P_fastpath.exit.i35

rbimpl_RB_TYPE_P_fastpath.exit.i35:               ; preds = %bb.o
  %i.bi = inttoptr i64 %i.y to ptr
  %i.bj = load i64, ptr %i.bi, align 8, !tbaa !13
  %i.bk = and i64 %i.bj, 31
  %i.bl = icmp eq i64 %i.bk, 10
  br i1 %i.bl, label %bb.p, label %rbimpl_RB_TYPE_P_fastpath.exit.thread.i36

bb.p:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i35
  %i.bm = tail call i64 @rb_big_minus(i64 noundef %i.y, i64 noundef %i.at) #25
  br label %rb_int_minus.exit

rbimpl_RB_TYPE_P_fastpath.exit.thread.i36:        ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i35, %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store i64 %i.y, ptr %i.c, align 8, !tbaa !11
  store i64 %i.at, ptr %i.d, align 8, !tbaa !11
  call fastcc void @do_coerce(ptr noundef nonnull %i.c, ptr noundef nonnull %i.d, i32 noundef 1)
  %i.bn = load i64, ptr %i.c, align 8, !tbaa !11
  %i.bo = load i64, ptr %i.d, align 8, !tbaa !11
  %i.bp = call i64 (i64, i64, i32, ...) @rb_funcall(i64 noundef %i.bn, i64 noundef 45, i32 noundef 1, i64 noundef %i.bo) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %rb_int_minus.exit

rb_int_minus.exit:                                ; preds = %bb.n, %bb.p, %rbimpl_RB_TYPE_P_fastpath.exit.thread.i36
  %.0.i37 = phi i64 [ %i.be, %bb.n ], [ %i.bm, %bb.p ], [ %i.bp, %rbimpl_RB_TYPE_P_fastpath.exit.thread.i36 ] ; 3 uses
  br i1 %i.e, label %bb.q, label %bb.r

bb.q:                                             ; preds = %rb_int_minus.exit
  %i.bq = call fastcc i64 @fix_plus(i64 noundef %0, i64 noundef %.0.i37)
  br label %rb_long2num_inline.exit

bb.r:                                             ; preds = %rb_int_minus.exit
  %i.br = and i64 %0, 6
  %.not = icmp eq i64 %i.br, 0
  br i1 %.not, label %rbimpl_RB_TYPE_P_fastpath.exit.i38, label %rbimpl_RB_TYPE_P_fastpath.exit.thread.i39

rbimpl_RB_TYPE_P_fastpath.exit.i38:               ; preds = %bb.r
  %i.bs = inttoptr i64 %0 to ptr
  %i.bt = load i64, ptr %i.bs, align 8, !tbaa !13
  %i.bu = and i64 %i.bt, 31
  %i.bv = icmp eq i64 %i.bu, 10
  br i1 %i.bv, label %bb.s, label %rbimpl_RB_TYPE_P_fastpath.exit.thread.i39

bb.s:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i38
  %i.bw = call i64 @rb_big_plus(i64 noundef %0, i64 noundef %.0.i37) #25
  br label %rb_long2num_inline.exit

rbimpl_RB_TYPE_P_fastpath.exit.thread.i39:        ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i38, %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 %0, ptr %i.a, align 8, !tbaa !11
  store i64 %.0.i37, ptr %i.b, align 8, !tbaa !11
  call fastcc void @do_coerce(ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, i32 noundef 1)
  %i.bx = load i64, ptr %i.a, align 8, !tbaa !11
end_hunk_0
begin_hunk_1_@rb_int128_to_numeric:bb.a
  %i.b = trunc nsw i128 %0 to i64
  %i.c = shl nsw i64 %i.b, 1
  %i.d = or disjoint i64 %i.c, 1
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.e = tail call i64 @rb_int128t2big(i128 noundef %0) #25
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi i64 [ %i.d, %bb.b ], [ %i.e, %bb.c ]
  ret i64 %.0
}

declare i64 @rb_int128t2big(i128 noundef) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define hidden i64 @rb_int_odd_p(i64 noundef %0) local_unnamed_addr #2 {
bb.a:
  %i.a = trunc i64 %0 to i1
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = and i64 %0, 2
  %.not = icmp eq i64 %i.b, 0
  %i.c = select i1 %.not, i64 0, i64 20
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.d = tail call i64 @rb_big_odd_p(i64 noundef %0) #25
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi i64 [ %i.c, %bb.b ], [ %i.d, %bb.c ]
  ret i64 %.0
}

declare i64 @rb_big_odd_p(i64 noundef) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define hidden i64 @rb_int_even_p(i64 noundef %0) local_unnamed_addr #2 {
bb.a:
  %i.a = trunc i64 %0 to i1
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = and i64 %0, 2
  %i.c = icmp eq i64 %i.b, 0
  %i.d = select i1 %i.c, i64 20, i64 0
  br label %int_even_p.exit

bb.c:                                             ; preds = %bb.a
  %i.e = tail call i64 @rb_big_even_p(i64 noundef %0) #25
  br label %int_even_p.exit

int_even_p.exit:                                  ; preds = %bb.b, %bb.c
  %.0.i = phi i64 [ %i.d, %bb.b ], [ %i.e, %bb.c ]
  ret i64 %.0.i
}

; Function Attrs: nounwind sspstrong uwtable
define hidden i64 @rb_int_succ(i64 noundef %0) #2 {
bb.a:
  %i.a = alloca [2 x i64], align 16               ; 5 uses
  %i.b = trunc i64 %0 to i1
  br i1 %i.b, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.c = ashr i64 %0, 1                           ; 2 uses
  %i.d = add nsw i64 %i.c, 1                      ; 2 uses
  %.not = icmp eq i64 %i.c, 4611686018427387903
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = shl nsw i64 %i.d, 1
  %i.f = or disjoint i64 %i.e, 1
  br label %rb_long2num_inline.exit

bb.d:                                             ; preds = %bb.b
  %i.g = tail call i64 @rb_int2big(i64 noundef %i.d) #25
  br label %rb_long2num_inline.exit

bb.e:                                             ; preds = %bb.a
  %i.h = icmp eq i64 %0, 0
  %i.i = and i64 %0, 6
  %i.j = icmp ne i64 %i.i, 0
  %i.k = or i1 %i.h, %i.j
  br i1 %i.k, label %rbimpl_RB_TYPE_P_fastpath.exit.thread, label %rbimpl_RB_TYPE_P_fastpath.exit

rbimpl_RB_TYPE_P_fastpath.exit:                   ; preds = %bb.e
  %i.l = inttoptr i64 %0 to ptr
  %i.m = load i64, ptr %i.l, align 8, !tbaa !13
  %i.n = and i64 %i.m, 31
  %i.o = icmp eq i64 %i.n, 10
  br i1 %i.o, label %bb.f, label %rbimpl_RB_TYPE_P_fastpath.exit.thread

bb.f:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit
  %i.p = tail call i64 @rb_big_plus(i64 noundef %0, i64 noundef 3) #25
  br label %rb_long2num_inline.exit

rbimpl_RB_TYPE_P_fastpath.exit.thread:            ; preds = %bb.e, %rbimpl_RB_TYPE_P_fastpath.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  store i64 43, ptr %i.a, align 16, !tbaa !11
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %0, ptr %i.q, align 8, !tbaa !11
  %i.r = ptrtoint ptr %i.a to i64
  %i.s = call i64 @rb_exec_recursive_paired(ptr noundef nonnull @num_funcall_op_1, i64 noundef 3, i64 noundef %0, i64 noundef %i.r) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  br label %rb_long2num_inline.exit

rb_long2num_inline.exit:                          ; preds = %bb.d, %bb.c, %rbimpl_RB_TYPE_P_fastpath.exit.thread, %bb.f
  %.0 = phi i64 [ %i.s, %rbimpl_RB_TYPE_P_fastpath.exit.thread ], [ %i.p, %bb.f ], [ %i.f, %bb.c ], [ %i.g, %bb.d ]
  ret i64 %.0
}

declare i64 @rb_big_plus(i64 noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @rb_enc_uint_chr(i32 noundef %0, ptr noundef %1) local_unnamed_addr #2 {
bb.a:
  %i.a = tail call i32 @rb_enc_codelen(i32 noundef %0, ptr noundef %1) #25 ; 3 uses
  switch i32 %i.a, label %bb.d [
    i32 -400, label %bb.b
    i32 -401, label %bb.c
    i32 0, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  %i.b = load i64, ptr @rb_eRangeError, align 8, !tbaa !11
  %i.c = getelementptr i8, ptr %1, i64 8
  %.val17 = load ptr, ptr %i.c, align 8, !tbaa !39
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.b, ptr noundef nonnull @.str.22, i32 noundef %0, ptr noundef %.val17) #24
  unreachable

bb.c:                                             ; preds = %bb.a, %bb.a
  %i.d = load i64, ptr @rb_eRangeError, align 8, !tbaa !11
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.d, ptr noundef nonnull @.str.23, i32 noundef %0) #24
  unreachable

bb.d:                                             ; preds = %bb.a
  %i.e = sext i32 %i.a to i64
  %i.f = tail call i64 @rb_enc_str_new(ptr noundef null, i64 noundef %i.e, ptr noundef %1) #25, !callees !42 ; 2 uses
  %i.g = inttoptr i64 %i.f to ptr                 ; 4 uses
  %i.h = load i64, ptr %i.g, align 8, !tbaa !13
  %i.i = and i64 %i.h, 8192
  %.not.i = icmp eq i64 %i.i, 0
  %i.j = getelementptr i8, ptr %i.g, i64 24       ; 4 uses
  br i1 %.not.i, label %RSTRING_PTR.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !15
  br label %RSTRING_PTR.exit

RSTRING_PTR.exit:                                 ; preds = %bb.d, %bb.e
  %i.l = phi ptr [ %i.k, %bb.e ], [ %i.j, %bb.d ]
  %i.m = getelementptr i8, ptr %1, i64 48
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !43
  %i.o = tail call i32 %i.n(i32 noundef %0, ptr noundef %i.l, ptr noundef %1) #25, !inline_history !44 ; 0 uses
  %i.p = load i64, ptr %i.g, align 8, !tbaa !13
  %i.q = and i64 %i.p, 8192
  %.not.i18 = icmp eq i64 %i.q, 0
  br i1 %.not.i18, label %RSTRING_END.exit, label %bb.f

bb.f:                                             ; preds = %RSTRING_PTR.exit
  %i.r = load ptr, ptr %i.j, align 8, !tbaa !15
  br label %RSTRING_END.exit

RSTRING_END.exit:                                 ; preds = %RSTRING_PTR.exit, %bb.f
  %i.s = phi ptr [ %i.r, %bb.f ], [ %i.j, %RSTRING_PTR.exit ] ; 2 uses
  %i.t = getelementptr i8, ptr %i.g, i64 16
  %i.u = load i64, ptr %i.t, align 8, !tbaa !16
  %i.v = getelementptr i8, ptr %i.s, i64 %i.u
  %i.w = tail call i32 @rb_enc_precise_mbclen(ptr noundef %i.s, ptr noundef %i.v, ptr noundef nonnull %1) #25
  %.not = icmp eq i32 %i.w, %i.a
  br i1 %.not, label %bb.h, label %bb.g

bb.g:                                             ; preds = %RSTRING_END.exit
  %i.x = load i64, ptr @rb_eRangeError, align 8, !tbaa !11
  %i.y = getelementptr i8, ptr %1, i64 8
  %.val = load ptr, ptr %i.y, align 8, !tbaa !39
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.x, ptr noundef nonnull @.str.22, i32 noundef %0, ptr noundef %.val) #24
  unreachable

bb.h:                                             ; preds = %RSTRING_END.exit
  ret i64 %i.f
}

declare i32 @rb_enc_codelen(i32 noundef, ptr noundef) local_unnamed_addr #4

declare i64 @rb_enc_str_new(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #4

declare i32 @rb_enc_precise_mbclen(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define hidden i64 @rb_int_uminus(i64 noundef %0) local_unnamed_addr #2 {
bb.a:
  %i.a = trunc i64 %0 to i1
  br i1 %i.a, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %.not.i = icmp slt i64 %0, -9223372036854775806
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %1 = and i64 %0, -2
  %2 = sub i64 0, %1
  %i.b = or disjoint i64 %2, 1
  br label %fix_uminus.exit

bb.d:                                             ; preds = %bb.b
  %i.c = tail call i64 @rb_int2big(i64 noundef 4611686018427387904) #25
  br label %fix_uminus.exit

bb.e:                                             ; preds = %bb.a
  %i.d = tail call i64 @rb_big_uminus(i64 noundef %0) #25
  br label %fix_uminus.exit

fix_uminus.exit:                                  ; preds = %bb.d, %bb.c, %bb.e
  %.0 = phi i64 [ %i.d, %bb.e ], [ %i.b, %bb.c ], [ %i.c, %bb.d ]
  ret i64 %.0
}

declare i64 @rb_big_uminus(i64 noundef) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @rb_fix2str(i64 noundef %0, i32 noundef %1) local_unnamed_addr #2 {
bb.a:
  %i.a = alloca [65 x i8], align 16               ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 65 ; 2 uses
  %i.c = ashr i64 %0, 1                           ; 3 uses
  %i.d = add i32 %1, -37
  %or.cond = icmp ult i32 %i.d, -35
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = load i64, ptr @rb_eArgError, align 8, !tbaa !11
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.e, ptr noundef nonnull @.str.24, i32 noundef %1) #24
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.f = icmp eq i64 %i.c, 0
  br i1 %i.f, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.g = tail call i64 @rb_usascii_str_new_static(ptr noundef nonnull @.str.25, i64 noundef 1) #25
  br label %bb.j

bb.e:                                             ; preds = %bb.c
  %.020 = tail call i64 @llvm.abs.i64(i64 %i.c, i1 true)
  %i.h = zext nneg i32 %1 to i64                  ; 3 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %bb.e
  %.022 = phi ptr [ %i.b, %bb.e ], [ %i.l, %bb.f ] ; 2 uses
  %.1 = phi i64 [ %.020, %bb.e ], [ %i.m, %bb.f ] ; 3 uses
  %i.i = urem i64 %.1, %i.h
  %i.j = getelementptr i8, ptr @ruby_digitmap, i64 %i.i
  %i.k = load i8, ptr %i.j, align 1, !tbaa !15
  %i.l = getelementptr i8, ptr %.022, i64 -1      ; 3 uses
  store i8 %i.k, ptr %i.l, align 1, !tbaa !15
  %i.m = udiv i64 %.1, %i.h
  %.not = icmp samesign ult i64 %.1, %i.h
  br i1 %.not, label %bb.g, label %bb.f, !llvm.loop !45

bb.g:                                             ; preds = %bb.f
  %i.n = icmp sgt i64 %i.c, -1
  br i1 %i.n, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.o = getelementptr i8, ptr %.022, i64 -2      ; 2 uses
  store i8 45, ptr %i.o, align 1, !tbaa !15
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h
  %.123 = phi ptr [ %i.o, %bb.h ], [ %i.l, %bb.g ] ; 2 uses
  %i.p = ptrtoint ptr %i.b to i64
  %i.q = ptrtoint ptr %.123 to i64
  %i.r = sub i64 %i.p, %i.q
  %i.s = call i64 @rb_usascii_str_new(ptr noundef nonnull %.123, i64 noundef %i.r) #25
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.d
  %.021 = phi i64 [ %i.g, %bb.d ], [ %i.s, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  ret i64 %.021
}

declare i64 @rb_usascii_str_new_static(ptr noundef, i64 noundef) local_unnamed_addr #4

declare i64 @rb_usascii_str_new(ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define hidden i64 @rb_fix_to_s(i64 noundef %0) local_unnamed_addr #2 {
bb.a:
  %i.a = alloca [65 x i8], align 16               ; 3 uses
  %i.b = ashr i64 %0, 1                           ; 4 uses
  %or.cond = icmp ult i64 %i.b, 10
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr [8 x i8], ptr @rb_fix_to_s_static, i64 %i.b
  %i.d = load i64, ptr %i.c, align 8, !tbaa !11
  br label %bb.g

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 65 ; 2 uses
  %.020.i = tail call i64 @llvm.abs.i64(i64 %i.b, i1 true)
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %bb.c
  %.022.i = phi ptr [ %i.e, %bb.c ], [ %i.i, %bb.d ] ; 2 uses
  %.1.i = phi i64 [ %.020.i, %bb.c ], [ %i.j, %bb.d ] ; 3 uses
  %i.f = urem i64 %.1.i, 10
  %i.g = getelementptr i8, ptr @ruby_digitmap, i64 %i.f
  %i.h = load i8, ptr %i.g, align 1, !tbaa !15
  %i.i = getelementptr i8, ptr %.022.i, i64 -1    ; 3 uses
  store i8 %i.h, ptr %i.i, align 1, !tbaa !15
  %i.j = udiv i64 %.1.i, 10
  %.not.i = icmp samesign ult i64 %.1.i, 10
  br i1 %.not.i, label %bb.e, label %bb.d, !llvm.loop !45

bb.e:                                             ; preds = %bb.d
  %i.k = icmp sgt i64 %i.b, -1
  br i1 %i.k, label %rb_fix2str.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.l = getelementptr i8, ptr %.022.i, i64 -2    ; 2 uses
  store i8 45, ptr %i.l, align 1, !tbaa !15
  br label %rb_fix2str.exit

rb_fix2str.exit:                                  ; preds = %bb.e, %bb.f
  %.123.i = phi ptr [ %i.l, %bb.f ], [ %i.i, %bb.e ] ; 2 uses
  %i.m = ptrtoint ptr %i.e to i64
  %i.n = ptrtoint ptr %.123.i to i64
  %i.o = sub i64 %i.m, %i.n
  %i.p = call i64 @rb_usascii_str_new(ptr noundef nonnull %.123.i, i64 noundef %i.o) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  br label %bb.g

bb.g:                                             ; preds = %rb_fix2str.exit, %bb.b
  %.0 = phi i64 [ %i.d, %bb.b ], [ %i.p, %rb_fix2str.exit ]
  ret i64 %.0
}

; Function Attrs: nounwind sspstrong uwtable
define hidden i64 @rb_int_to_s(i32 noundef %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2) #2 {
bb.a:
  %or.cond.i = icmp ugt i32 %0, 1
  br i1 %or.cond.i, label %bb.b, label %rb_check_arity.exit

bb.b:                                             ; preds = %bb.a
  tail call void @rb_error_arity(i32 noundef %0, i32 noundef 0, i32 noundef 1) #24
  unreachable

rb_check_arity.exit:                              ; preds = %bb.a
  %.not = icmp eq i32 %0, 0
  br i1 %.not, label %bb.h, label %bb.c

bb.c:                                             ; preds = %rb_check_arity.exit
  %i.a = load i64, ptr %1, align 8, !tbaa !11     ; 3 uses
  %i.b = trunc i64 %i.a to i1
  br i1 %i.b, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.c = ashr i64 %i.a, 1                         ; 3 uses
  %i.d = add nsw i64 %i.c, 2147483648
  %.not.i.i.i = icmp ult i64 %i.d, 4294967296
  br i1 %.not.i.i.i, label %rb_num2int_inline.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @rb_out_of_int(i64 noundef %i.c) #29
  unreachable

bb.f:                                             ; preds = %bb.c
  %i.e = tail call i64 @rb_num2long(i64 noundef %i.a) ; 3 uses
  %i.f = add i64 %i.e, 2147483648
  %.not.i.i4.i = icmp ult i64 %i.f, 4294967296
  br i1 %.not.i.i4.i, label %rb_num2int_inline.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @rb_out_of_int(i64 noundef %i.e) #29
  unreachable

rb_num2int_inline.exit:                           ; preds = %bb.d, %bb.f
  %.0.i = phi i64 [ %i.c, %bb.d ], [ %i.e, %bb.f ]
  %i.g = trunc nsw i64 %.0.i to i32
  br label %bb.h

bb.h:                                             ; preds = %rb_check_arity.exit, %rb_num2int_inline.exit
  %.0 = phi i32 [ %i.g, %rb_num2int_inline.exit ], [ 10, %rb_check_arity.exit ]
  %i.h = tail call i64 @rb_int2str(i64 noundef %2, i32 noundef %.0)
  ret i64 %i.h
}

; Function Attrs: nounwind sspstrong uwtable
define hidden i64 @rb_int2str(i64 noundef %0, i32 noundef %1) local_unnamed_addr #2 {
bb.a:
  %i.a = alloca [65 x i8], align 16               ; 3 uses
  %i.b = trunc i64 %0 to i1
  br i1 %i.b, label %bb.b, label %bb.k

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 65 ; 2 uses
  %i.d = ashr i64 %0, 1                           ; 3 uses
  %i.e = add i32 %1, -37
  %or.cond.i = icmp ult i32 %i.e, -35
  br i1 %or.cond.i, label %bb.c, label %bb.d

end_hunk_1
begin_hunk_2_@rb_int_divmod:bb.a
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !13
  %i.af = and i64 %i.ae, 31
  switch i64 %i.af, label %RB_FLOAT_TYPE_P.exit.thread31.i [
    i64 10, label %bb.m
    i64 4, label %bb.p
  ]

bb.m:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i
  %i.ag = ashr i64 %0, 1
  %i.ah = tail call i64 @rb_int2big(i64 noundef %i.ag) #25
  %i.ai = tail call i64 @rb_big_divmod(i64 noundef %i.ah, i64 noundef %1) #25
  br label %fix_divmod.exit

rbimpl_RB_TYPE_P_fastpath.exit.thread.i:          ; preds = %bb.l
  %i.aj = and i64 %1, 2
  %.not.i = icmp eq i64 %i.aj, 0
  br i1 %.not.i, label %RB_FLOAT_TYPE_P.exit.thread31.i, label %bb.n

bb.n:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.thread.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %.not.i.i.i = icmp eq i64 %1, -9223372036854775806
  br i1 %.not.i.i.i, label %.thread36.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  %.neg.i.i.i = ashr i64 %1, 63
  %i.ak = add nsw i64 %.neg.i.i.i, 2
  %i.al = and i64 %1, -4
  %i.am = or i64 %i.ak, %i.al                     ; 2 uses
  %i.an = tail call noundef i64 @llvm.fshl.i64(i64 range(i64 1, 0) %i.am, i64 range(i64 1, 0) %i.am, i64 61)
  %i.ao = bitcast i64 %i.an to double
  br label %rb_float_value_inline.exit.i

bb.p:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.ap = getelementptr i8, ptr %i.ad, i64 16
  %i.aq = load double, ptr %i.ap, align 8, !tbaa !21
  br label %rb_float_value_inline.exit.i

rb_float_value_inline.exit.i:                     ; preds = %bb.p, %bb.o
  %.0.i17.i = phi double [ %i.aq, %bb.p ], [ %i.ao, %bb.o ] ; 9 uses
  %.in.i = ashr i64 %0, 1                         ; 2 uses
  %i.ar = sitofp i64 %.in.i to double             ; 3 uses
  %i.as = fcmp uno double %.0.i17.i, 0.000000e+00
  br i1 %i.as, label %flodivmod.exit.i, label %bb.q

bb.q:                                             ; preds = %rb_float_value_inline.exit.i
  %i.at = fcmp oeq double %.0.i17.i, 0.000000e+00
  br i1 %i.at, label %.thread36.i, label %._crit_edge.i.i

.thread36.i:                                      ; preds = %bb.q, %bb.n
  tail call void @rb_num_zerodiv() #29
  unreachable

._crit_edge.i.i:                                  ; preds = %bb.q
  %i.au = icmp ne i64 %.in.i, 0
  %i.av = tail call double @llvm.fabs.f64(double %.0.i17.i) #30
  %i.aw = fcmp une double %i.av, +inf
  %or.cond.i = and i1 %i.au, %i.aw
  %i.ax = frem double %i.ar, %.0.i17.i
  %.0.i19.i = select i1 %or.cond.i, double %i.ax, double %i.ar ; 3 uses
  %i.ay = fsub double %i.ar, %.0.i19.i
  %i.az = fdiv double %i.ay, %.0.i17.i
  %i.ba = tail call double @llvm.round.f64(double %i.az) ; 2 uses
  %i.bb = fmul double %.0.i17.i, %.0.i19.i
  %i.bc = fcmp olt double %i.bb, 0.000000e+00     ; 2 uses
  %i.bd = select i1 %i.bc, double %.0.i17.i, double -0.000000e+00
  %.163.i.i = fadd double %.0.i19.i, %i.bd
  %i.be = fadd double %i.ba, -1.000000e+00
  %.136.i.i = select i1 %i.bc, double %i.be, double %i.ba
  br label %flodivmod.exit.i

flodivmod.exit.i:                                 ; preds = %._crit_edge.i.i, %rb_float_value_inline.exit.i
  %.026.i = phi double [ %.136.i.i, %._crit_edge.i.i ], [ %.0.i17.i, %rb_float_value_inline.exit.i ] ; 4 uses
  %.025.i = phi double [ %.163.i.i, %._crit_edge.i.i ], [ %.0.i17.i, %rb_float_value_inline.exit.i ] ; 2 uses
  %i.bf = fcmp olt double %.026.i, f0x43D0000000000000
  %i.bg = fcmp oge double %.026.i, f0xC3D0000000000000
  %or.cond.i20.i = and i1 %i.bf, %i.bg
  br i1 %or.cond.i20.i, label %bb.r, label %bb.s

bb.r:                                             ; preds = %flodivmod.exit.i
  %i.bh = fptosi double %.026.i to i64
  %i.bi = shl i64 %i.bh, 1
  %i.bj = or disjoint i64 %i.bi, 1
  br label %dbl2ival.exit.i

bb.s:                                             ; preds = %flodivmod.exit.i
  %i.bk = tail call i64 @rb_dbl2big(double noundef %.026.i) #25
  br label %dbl2ival.exit.i

dbl2ival.exit.i:                                  ; preds = %bb.s, %bb.r
  %.0.i21.i = phi i64 [ %i.bj, %bb.r ], [ %i.bk, %bb.s ]
  store volatile i64 %.0.i21.i, ptr %i.d, align 8, !tbaa !11
  %i.bl = bitcast double %.025.i to i64           ; 5 uses
  %cond.i.i = icmp eq i64 %i.bl, 3458764513820540928
  br i1 %cond.i.i, label %bb.w, label %bb.t

bb.t:                                             ; preds = %dbl2ival.exit.i
  %i.bm = lshr i64 %i.bl, 60
  %i.bn = trunc nuw nsw i64 %i.bm to i32
  %i.bo = and i32 %i.bn, 7
  %i.bp = add nsw i32 %i.bo, -5
  %i.bq = icmp ult i32 %i.bp, -2
  br i1 %i.bq, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.br = tail call noundef i64 @llvm.fshl.i64(i64 range(i64 3458764513820540929, 3458764513820540928) %i.bl, i64 range(i64 3458764513820540929, 3458764513820540928) %i.bl, i64 3)
  %i.bs = and i64 %i.br, -4
  %i.bt = or disjoint i64 %i.bs, 2
  br label %rb_float_new_inline.exit.i

bb.v:                                             ; preds = %bb.t
  %i.bu = icmp eq i64 %i.bl, 0
  br i1 %i.bu, label %rb_float_new_inline.exit.i, label %bb.w

bb.w:                                             ; preds = %bb.v, %dbl2ival.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.bv = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @ruby_current_ec)
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !18
  store volatile ptr %i.bw, ptr %i.c, align 8, !tbaa !18
  %.0..0..0..0..0..0..0..0..0..0..0..0..i.i.i.i = load volatile ptr, ptr %i.c, align 8, !tbaa !18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.bx = load i64, ptr @rb_cFloat, align 8, !tbaa !11
  %i.by = tail call i64 @rb_wb_protected_newobj_of(ptr noundef %.0..0..0..0..0..0..0..0..0..0..0..0..i.i.i.i, i64 noundef %i.bx, i64 noundef 4, i32 noundef 0, i64 noundef 24) #25 ; 3 uses
  %i.bz = inttoptr i64 %i.by to ptr
  %i.ca = getelementptr i8, ptr %i.bz, i64 16
  store double %.025.i, ptr %i.ca, align 8, !tbaa !21
  tail call void @rb_obj_freeze_inline(i64 noundef %i.by) #25
  br label %rb_float_new_inline.exit.i

rb_float_new_inline.exit.i:                       ; preds = %bb.w, %bb.v, %bb.u
  %.0.i22.i = phi i64 [ %i.bt, %bb.u ], [ %i.by, %bb.w ], [ -9223372036854775806, %bb.v ]
  store volatile i64 %.0.i22.i, ptr %i.e, align 8, !tbaa !11
  %.0..0..0..0..0..0.1.i = load volatile i64, ptr %i.d, align 8, !tbaa !11
  %.0..0..0..0..0..0..i = load volatile i64, ptr %i.e, align 8, !tbaa !11
  %i.cb = tail call i64 @rb_assoc_new(i64 noundef %.0..0..0..0..0..0.1.i, i64 noundef %.0..0..0..0..0..0..i) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %fix_divmod.exit

RB_FLOAT_TYPE_P.exit.thread31.i:                  ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.thread.i, %rbimpl_RB_TYPE_P_fastpath.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 %0, ptr %i.a, align 8, !tbaa !11
  store i64 %1, ptr %i.b, align 8, !tbaa !11
  call fastcc void @do_coerce(ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, i32 noundef 1)
  %i.cc = load i64, ptr %i.a, align 8, !tbaa !11
  %i.cd = load i64, ptr %i.b, align 8, !tbaa !11
  %i.ce = call i64 (i64, i64, i32, ...) @rb_funcall(i64 noundef %i.cc, i64 noundef 3601, i32 noundef 1, i64 noundef %i.cd) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %fix_divmod.exit

bb.x:                                             ; preds = %bb.a
  %i.cf = icmp eq i64 %0, 0
  %i.cg = and i64 %0, 6
  %i.ch = icmp ne i64 %i.cg, 0
  %i.ci = or i1 %i.cf, %i.ch
  br i1 %i.ci, label %fix_divmod.exit, label %rbimpl_RB_TYPE_P_fastpath.exit

rbimpl_RB_TYPE_P_fastpath.exit:                   ; preds = %bb.x
  %i.cj = inttoptr i64 %0 to ptr
  %i.ck = load i64, ptr %i.cj, align 8, !tbaa !13
  %i.cl = and i64 %i.ck, 31
  %i.cm = icmp eq i64 %i.cl, 10
  br i1 %i.cm, label %bb.y, label %fix_divmod.exit

bb.y:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit
  %i.cn = tail call i64 @rb_big_divmod(i64 noundef %0, i64 noundef %1) #25
  br label %fix_divmod.exit

fix_divmod.exit:                                  ; preds = %bb.x, %RB_FLOAT_TYPE_P.exit.thread31.i, %rb_float_new_inline.exit.i, %bb.m, %rb_fix_divmod_fix.exit.i, %rbimpl_RB_TYPE_P_fastpath.exit, %bb.y
  %.0 = phi i64 [ 4, %rbimpl_RB_TYPE_P_fastpath.exit ], [ %i.cn, %bb.y ], [ %i.y, %rb_fix_divmod_fix.exit.i ], [ %i.ai, %bb.m ], [ %i.cb, %rb_float_new_inline.exit.i ], [ %i.ce, %RB_FLOAT_TYPE_P.exit.thread31.i ], [ 4, %bb.x ]
  ret i64 %.0
}

declare i64 @rb_big_divmod(i64 noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @rb_int_positive_pow(i64 noundef %0, i64 noundef %1) local_unnamed_addr #2 {
bb.a:
  %i.a = tail call fastcc i64 @int_pow(i64 noundef %0, i64 noundef %1)
  ret i64 %i.a
}

; Function Attrs: nounwind sspstrong uwtable
define hidden i64 @rb_int_pow(i64 noundef %0, i64 noundef %1) #2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %i.c = trunc i64 %0 to i1
  br i1 %i.c, label %bb.b, label %bb.aa

bb.b:                                             ; preds = %bb.a
  %i.d = ashr i64 %0, 1                           ; 9 uses
  %i.e = trunc i64 %1 to i1
  br i1 %i.e, label %bb.c, label %bb.m

bb.c:                                             ; preds = %bb.b
  %i.f = ashr i64 %1, 1                           ; 4 uses
  switch i64 %i.d, label %bb.e [
    i64 1, label %fix_pow.exit
    i64 -1, label %bb.d
  ]

bb.d:                                             ; preds = %bb.c
  %i.g = shl i64 %1, 1
  %i.h = and i64 %i.g, 4
  %i.i = sub nsw i64 3, %i.h
  br label %fix_pow.exit

bb.e:                                             ; preds = %bb.c
  %i.j = icmp slt i64 %i.f, 0
  br i1 %i.j, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  %.not.i13 = icmp eq i64 %i.f, -4611686018427387904
  br i1 %.not.i13, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %2 = and i64 %1, -2
  %3 = sub i64 0, %2
  %i.k = or disjoint i64 %3, 1
  br label %fix_uminus.exit

bb.h:                                             ; preds = %bb.f
  %i.l = tail call i64 @rb_int2big(i64 noundef 4611686018427387904) #25
  br label %fix_uminus.exit

fix_uminus.exit:                                  ; preds = %bb.g, %bb.h
  %.0.i.i14 = phi i64 [ %i.k, %bb.g ], [ %i.l, %bb.h ]
  %i.m = tail call fastcc i64 @fix_pow_inverted(i64 noundef %0, i64 noundef %.0.i.i14), !inline_history !48
  br label %fix_pow.exit

bb.i:                                             ; preds = %bb.e
  switch i64 %i.f, label %bb.k [
    i64 0, label %fix_pow.exit
    i64 1, label %bb.j
  ]

bb.j:                                             ; preds = %bb.i
  br label %fix_pow.exit

bb.k:                                             ; preds = %bb.i
  %i.n = icmp eq i64 %i.d, 0
  br i1 %i.n, label %fix_pow.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.o = tail call fastcc i64 @int_pow(i64 noundef %i.d, i64 noundef %i.f), !inline_history !48
  br label %fix_pow.exit

bb.m:                                             ; preds = %bb.b
  %i.p = icmp eq i64 %1, 0
  %i.q = and i64 %1, 6
  %i.r = icmp ne i64 %i.q, 0
  %i.s = or i1 %i.p, %i.r
  br i1 %i.s, label %rbimpl_RB_TYPE_P_fastpath.exit.i.thread, label %rbimpl_RB_TYPE_P_fastpath.exit.i

rbimpl_RB_TYPE_P_fastpath.exit.i:                 ; preds = %bb.m
  %i.t = inttoptr i64 %1 to ptr                   ; 2 uses
  %i.u = load i64, ptr %i.t, align 8, !tbaa !13   ; 2 uses
  %i.v = and i64 %i.u, 31
  switch i64 %i.v, label %RB_FLOAT_TYPE_P.exit.thread18 [
    i64 10, label %bb.n
    i64 4, label %bb.u
  ]

bb.n:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i
  switch i64 %i.d, label %bb.o [
    i64 1, label %fix_pow.exit
    i64 -1, label %int_even_p.exit
  ]

int_even_p.exit:                                  ; preds = %bb.n
  %i.w = tail call i64 @rb_big_even_p(i64 noundef %1) #25
  %.not.i = icmp eq i64 %i.w, 0
  %i.x = select i1 %.not.i, i64 -1, i64 3
  br label %fix_pow.exit

bb.o:                                             ; preds = %bb.n
  %i.y = and i64 %i.u, 8192
  %.not.i11 = icmp eq i64 %i.y, 0
  br i1 %.not.i11, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.z = tail call i64 @rb_big_uminus(i64 noundef %1) #25, !inline_history !48
  %i.aa = tail call fastcc i64 @fix_pow_inverted(i64 noundef %0, i64 noundef %i.z), !inline_history !48
  br label %fix_pow.exit

bb.q:                                             ; preds = %bb.o
  %i.ab = icmp eq i64 %i.d, 0
  br i1 %i.ab, label %fix_pow.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ac = tail call i64 @rb_int2big(i64 noundef %i.d) #25, !inline_history !48
  %i.ad = tail call i64 @rb_big_pow(i64 noundef %i.ac, i64 noundef %1) #25, !inline_history !48
  br label %fix_pow.exit

rbimpl_RB_TYPE_P_fastpath.exit.i.thread:          ; preds = %bb.m
  %i.ae = and i64 %1, 2
  %.not = icmp eq i64 %i.ae, 0
  br i1 %.not, label %RB_FLOAT_TYPE_P.exit.thread18, label %bb.s

bb.s:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i.thread
  %.not.i.i = icmp eq i64 %1, -9223372036854775806
  br i1 %.not.i.i, label %fix_pow.exit, label %bb.t

bb.t:                                             ; preds = %bb.s
  %.neg.i.i = ashr i64 %1, 63
  %i.af = add nsw i64 %.neg.i.i, 2
  %i.ag = and i64 %1, -4
  %i.ah = or i64 %i.af, %i.ag                     ; 2 uses
  %i.ai = tail call noundef i64 @llvm.fshl.i64(i64 range(i64 1, 0) %i.ah, i64 range(i64 1, 0) %i.ah, i64 61)
  %i.aj = bitcast i64 %i.ai to double
  br label %rb_float_value_inline.exit

bb.u:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i
  %i.ak = getelementptr i8, ptr %i.t, i64 16
  %i.al = load double, ptr %i.ak, align 8, !tbaa !21
  br label %rb_float_value_inline.exit

rb_float_value_inline.exit:                       ; preds = %bb.t, %bb.u
  %.0.i9 = phi double [ %i.al, %bb.u ], [ %i.aj, %bb.t ] ; 7 uses
  %i.am = fcmp oeq double %.0.i9, 0.000000e+00
  br i1 %i.am, label %fix_pow.exit, label %bb.v

bb.v:                                             ; preds = %rb_float_value_inline.exit
  switch i64 %i.d, label %bb.x [
    i64 0, label %bb.w
    i64 1, label %fix_pow.exit
  ]

bb.w:                                             ; preds = %bb.v
  %i.an = fcmp olt double %.0.i9, 0.000000e+00
  %i.ao = select i1 %i.an, double +inf, double 0.000000e+00
  %i.ap = tail call fastcc i64 @rb_float_new_inline(double noundef %i.ao), !inline_history !48
  br label %fix_pow.exit

bb.x:                                             ; preds = %bb.v
  %i.aq = icmp slt i64 %i.d, 0
  %i.ar = tail call double @llvm.round.f64(double %.0.i9)
  %i.as = fcmp une double %.0.i9, %i.ar
  %or.cond.i = and i1 %i.aq, %i.as
  %i.at = sitofp i64 %i.d to double               ; 2 uses
  br i1 %or.cond.i, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.au = fneg double %i.at
  %i.av = tail call double @pow(double noundef %i.au, double noundef %.0.i9) #25, !tbaa !7, !inline_history !48
  %i.aw = tail call i64 @rb_dbl_complex_new_polar_pi(double noundef %i.av, double noundef %.0.i9) #25, !inline_history !48
  br label %fix_pow.exit

bb.z:                                             ; preds = %bb.x
  %i.ax = tail call double @pow(double noundef %i.at, double noundef %.0.i9) #25, !tbaa !7, !inline_history !48
  %i.ay = tail call fastcc i64 @rb_float_new_inline(double noundef %i.ax), !inline_history !48
  br label %fix_pow.exit

RB_FLOAT_TYPE_P.exit.thread18:                    ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i, %rbimpl_RB_TYPE_P_fastpath.exit.i.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 %0, ptr %i.a, align 8, !tbaa !11
  store i64 %1, ptr %i.b, align 8, !tbaa !11
  call fastcc void @do_coerce(ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, i32 noundef 1)
  %i.az = load i64, ptr %i.a, align 8, !tbaa !11
  %i.ba = load i64, ptr %i.b, align 8, !tbaa !11
  %i.bb = call i64 (i64, i64, i32, ...) @rb_funcall(i64 noundef %i.az, i64 noundef 134, i32 noundef 1, i64 noundef %i.ba) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %fix_pow.exit

bb.aa:                                            ; preds = %bb.a
  %i.bc = icmp eq i64 %0, 0
  %i.bd = and i64 %0, 6
  %i.be = icmp ne i64 %i.bd, 0
  %i.bf = or i1 %i.bc, %i.be
  br i1 %i.bf, label %fix_pow.exit, label %rbimpl_RB_TYPE_P_fastpath.exit

rbimpl_RB_TYPE_P_fastpath.exit:                   ; preds = %bb.aa
  %i.bg = inttoptr i64 %0 to ptr
  %i.bh = load i64, ptr %i.bg, align 8, !tbaa !13
  %i.bi = and i64 %i.bh, 31
  %i.bj = icmp eq i64 %i.bi, 10
  br i1 %i.bj, label %bb.ab, label %fix_pow.exit

bb.ab:                                            ; preds = %rbimpl_RB_TYPE_P_fastpath.exit
  %i.bk = tail call i64 @rb_big_pow(i64 noundef %0, i64 noundef %1) #25
  br label %fix_pow.exit

fix_pow.exit:                                     ; preds = %bb.aa, %bb.s, %RB_FLOAT_TYPE_P.exit.thread18, %bb.z, %bb.y, %bb.w, %bb.r, %bb.q, %bb.p, %int_even_p.exit, %bb.n, %bb.l, %bb.k, %bb.j, %bb.i, %fix_uminus.exit, %bb.d, %bb.c, %rb_float_value_inline.exit, %bb.v, %rbimpl_RB_TYPE_P_fastpath.exit, %bb.ab
  %.0 = phi i64 [ 4, %rbimpl_RB_TYPE_P_fastpath.exit ], [ %i.bk, %bb.ab ], [ %i.bb, %RB_FLOAT_TYPE_P.exit.thread18 ], [ 1, %bb.k ], [ %i.x, %int_even_p.exit ], [ %i.aa, %bb.p ], [ 3, %bb.n ], [ %i.ad, %bb.r ], [ 1, %bb.q ], [ %i.o, %bb.l ], [ %i.i, %bb.d ], [ %i.m, %fix_uminus.exit ], [ 3, %bb.c ], [ %0, %bb.j ], [ 3, %bb.i ], [ %i.ay, %bb.z ], [ %i.ap, %bb.w ], [ -36028797018963966, %rb_float_value_inline.exit ], [ %i.aw, %bb.y ], [ -36028797018963966, %bb.s ], [ -36028797018963966, %bb.v ], [ 4, %bb.aa ]
  ret i64 %.0
}

declare i64 @rb_big_pow(i64 noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define hidden i64 @rb_num_pow(i64 noundef %0, i64 noundef %1) local_unnamed_addr #2 {
bb.a:
  %i.a = tail call i64 @rb_int_pow(i64 noundef %0, i64 noundef %1) ; 2 uses
  %i.b = icmp eq i64 %i.a, 4
  br i1 %i.b, label %bb.b, label %RB_FLOAT_TYPE_P.exit.thread15.thread

bb.b:                                             ; preds = %bb.a
  %i.c = and i64 %0, 3
  %i.d = icmp eq i64 %i.c, 2
  br i1 %i.d, label %RB_FLOAT_TYPE_P.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = icmp eq i64 %0, 0
  %i.f = and i64 %0, 7
  %i.g = icmp ne i64 %i.f, 0
  %i.h = or i1 %i.e, %i.g
  br i1 %i.h, label %RB_FLOAT_TYPE_P.exit.thread15.thread, label %RB_FLOAT_TYPE_P.exit

RB_FLOAT_TYPE_P.exit:                             ; preds = %bb.c
  %i.i = inttoptr i64 %0 to ptr
  %i.j = load i64, ptr %i.i, align 8, !tbaa !13
  %i.k = and i64 %i.j, 31
  %i.l = icmp eq i64 %i.k, 4
  br i1 %i.l, label %RB_FLOAT_TYPE_P.exit.thread, label %RB_FLOAT_TYPE_P.exit.thread15

RB_FLOAT_TYPE_P.exit.thread:                      ; preds = %bb.b, %RB_FLOAT_TYPE_P.exit
  %i.m = tail call i64 @rb_float_pow(i64 noundef %0, i64 noundef %1)
  br label %RB_FLOAT_TYPE_P.exit.thread15.thread

RB_FLOAT_TYPE_P.exit.thread15:                    ; preds = %RB_FLOAT_TYPE_P.exit
  %i.n = inttoptr i64 %0 to ptr
end_hunk_2
begin_hunk_3_@flo_is_nan_p:bb.a
bb.d:                                             ; preds = %bb.a
  %i.h = inttoptr i64 %0 to ptr
  %i.i = getelementptr i8, ptr %i.h, i64 16
  %i.j = load double, ptr %i.i, align 8, !tbaa !21
  br label %rb_float_value_inline.exit

rb_float_value_inline.exit:                       ; preds = %bb.b, %bb.c, %bb.d
  %.0.i = phi double [ %i.j, %bb.d ], [ %i.g, %bb.c ], [ 0.000000e+00, %bb.b ]
  %i.k = fcmp uno double %.0.i, 0.000000e+00
  %i.l = select i1 %i.k, i64 20, i64 0
  ret i64 %i.l
}

; Function Attrs: nounwind sspstrong uwtable
define internal i64 @flo_next_float(i64 noundef %0) #2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = tail call double @rb_num2dbl(i64 noundef %0) #25
  %i.c = tail call double @nextafter(double noundef %i.b, double noundef +inf) #25, !tbaa !7 ; 2 uses
  %i.d = bitcast double %i.c to i64               ; 5 uses
  %cond.i.i = icmp eq i64 %i.d, 3458764513820540928
  br i1 %cond.i.i, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = lshr i64 %i.d, 60
  %i.f = trunc nuw nsw i64 %i.e to i32
  %i.g = and i32 %i.f, 7
  %i.h = add nsw i32 %i.g, -5
  %i.i = icmp ult i32 %i.h, -2
  br i1 %i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = tail call noundef i64 @llvm.fshl.i64(i64 range(i64 3458764513820540929, 3458764513820540928) %i.d, i64 range(i64 3458764513820540929, 3458764513820540928) %i.d, i64 3)
  %i.k = and i64 %i.j, -4
  %i.l = or disjoint i64 %i.k, 2
  br label %flo_nextafter.exit

bb.d:                                             ; preds = %bb.b
  %i.m = icmp eq i64 %i.d, 0
  br i1 %i.m, label %flo_nextafter.exit, label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.n = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @ruby_current_ec)
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !18
  store volatile ptr %i.o, ptr %i.a, align 8, !tbaa !18
  %.0..0..0..0..0..0..0..0..0..0..0..0..i.i.i.i = load volatile ptr, ptr %i.a, align 8, !tbaa !18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.p = load i64, ptr @rb_cFloat, align 8, !tbaa !11
  %i.q = tail call i64 @rb_wb_protected_newobj_of(ptr noundef %.0..0..0..0..0..0..0..0..0..0..0..0..i.i.i.i, i64 noundef %i.p, i64 noundef 4, i32 noundef 0, i64 noundef 24) #25 ; 3 uses
  %i.r = inttoptr i64 %i.q to ptr
  %i.s = getelementptr i8, ptr %i.r, i64 16
  store double %i.c, ptr %i.s, align 8, !tbaa !21
  tail call void @rb_obj_freeze_inline(i64 noundef %i.q) #25
  br label %flo_nextafter.exit

flo_nextafter.exit:                               ; preds = %bb.c, %bb.d, %bb.e
  %.0.i.i = phi i64 [ %i.l, %bb.c ], [ %i.q, %bb.e ], [ -9223372036854775806, %bb.d ]
  ret i64 %.0.i.i
}

; Function Attrs: nounwind sspstrong uwtable
define internal i64 @flo_prev_float(i64 noundef %0) #2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = tail call double @rb_num2dbl(i64 noundef %0) #25
  %i.c = tail call double @nextafter(double noundef %i.b, double noundef -inf) #25, !tbaa !7 ; 2 uses
  %i.d = bitcast double %i.c to i64               ; 5 uses
  %cond.i.i = icmp eq i64 %i.d, 3458764513820540928
  br i1 %cond.i.i, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = lshr i64 %i.d, 60
  %i.f = trunc nuw nsw i64 %i.e to i32
  %i.g = and i32 %i.f, 7
  %i.h = add nsw i32 %i.g, -5
  %i.i = icmp ult i32 %i.h, -2
  br i1 %i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = tail call noundef i64 @llvm.fshl.i64(i64 range(i64 3458764513820540929, 3458764513820540928) %i.d, i64 range(i64 3458764513820540929, 3458764513820540928) %i.d, i64 3)
  %i.k = and i64 %i.j, -4
  %i.l = or disjoint i64 %i.k, 2
  br label %flo_nextafter.exit

bb.d:                                             ; preds = %bb.b
  %i.m = icmp eq i64 %i.d, 0
  br i1 %i.m, label %flo_nextafter.exit, label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.n = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @ruby_current_ec)
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !18
  store volatile ptr %i.o, ptr %i.a, align 8, !tbaa !18
  %.0..0..0..0..0..0..0..0..0..0..0..0..i.i.i.i = load volatile ptr, ptr %i.a, align 8, !tbaa !18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.p = load i64, ptr @rb_cFloat, align 8, !tbaa !11
  %i.q = tail call i64 @rb_wb_protected_newobj_of(ptr noundef %.0..0..0..0..0..0..0..0..0..0..0..0..i.i.i.i, i64 noundef %i.p, i64 noundef 4, i32 noundef 0, i64 noundef 24) #25 ; 3 uses
  %i.r = inttoptr i64 %i.q to ptr
  %i.s = getelementptr i8, ptr %i.r, i64 16
  store double %i.c, ptr %i.s, align 8, !tbaa !21
  tail call void @rb_obj_freeze_inline(i64 noundef %i.q) #25
  br label %flo_nextafter.exit

flo_nextafter.exit:                               ; preds = %bb.c, %bb.d, %bb.e
  %.0.i.i = phi i64 [ %i.l, %bb.c ], [ %i.q, %bb.e ], [ -9223372036854775806, %bb.d ]
  ret i64 %.0.i.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local double @rb_float_value(i64 noundef %0) local_unnamed_addr #12 {
bb.a:
  %i.a = and i64 %0, 3
  %i.b = icmp eq i64 %i.a, 2
  br i1 %i.b, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %.not.i.i = icmp eq i64 %0, -9223372036854775806
  br i1 %.not.i.i, label %rb_float_value_inline.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.neg.i.i = ashr i64 %0, 63
  %i.c = add nsw i64 %.neg.i.i, 2
  %i.d = and i64 %0, -4
  %i.e = or i64 %i.c, %i.d                        ; 2 uses
  %i.f = tail call noundef i64 @llvm.fshl.i64(i64 range(i64 1, 0) %i.e, i64 range(i64 1, 0) %i.e, i64 61)
  %i.g = bitcast i64 %i.f to double
  br label %rb_float_value_inline.exit

bb.d:                                             ; preds = %bb.a
  %i.h = inttoptr i64 %0 to ptr
  %i.i = getelementptr i8, ptr %i.h, i64 16
  %i.j = load double, ptr %i.i, align 8, !tbaa !21
  br label %rb_float_value_inline.exit

rb_float_value_inline.exit:                       ; preds = %bb.b, %bb.c, %bb.d
  %.0.i = phi double [ %i.j, %bb.d ], [ %i.g, %bb.c ], [ 0.000000e+00, %bb.b ]
  ret double %.0.i
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @rb_float_new(double noundef %0) local_unnamed_addr #2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = bitcast double %0 to i64                 ; 5 uses
  %cond.i = icmp eq i64 %i.b, 3458764513820540928
  br i1 %cond.i, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = lshr i64 %i.b, 60
  %i.d = trunc nuw nsw i64 %i.c to i32
  %i.e = and i32 %i.d, 7
  %i.f = add nsw i32 %i.e, -5
  %i.g = icmp ult i32 %i.f, -2
  br i1 %i.g, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = tail call noundef i64 @llvm.fshl.i64(i64 range(i64 3458764513820540929, 3458764513820540928) %i.b, i64 range(i64 3458764513820540929, 3458764513820540928) %i.b, i64 3)
  %i.i = and i64 %i.h, -4
  %i.j = or disjoint i64 %i.i, 2
  br label %rb_float_new_inline.exit

bb.d:                                             ; preds = %bb.b
  %i.k = icmp eq i64 %i.b, 0
  br i1 %i.k, label %rb_float_new_inline.exit, label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.l = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @ruby_current_ec)
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !18
  store volatile ptr %i.m, ptr %i.a, align 8, !tbaa !18
  %.0..0..0..0..0..0..0..0..0..0..i.i.i = load volatile ptr, ptr %i.a, align 8, !tbaa !18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.n = load i64, ptr @rb_cFloat, align 8, !tbaa !11
  %i.o = tail call i64 @rb_wb_protected_newobj_of(ptr noundef %.0..0..0..0..0..0..0..0..0..0..i.i.i, i64 noundef %i.n, i64 noundef 4, i32 noundef 0, i64 noundef 24) #25 ; 3 uses
  %i.p = inttoptr i64 %i.o to ptr
  %i.q = getelementptr i8, ptr %i.p, i64 16
  store double %0, ptr %i.q, align 8, !tbaa !21
  tail call void @rb_obj_freeze_inline(i64 noundef %i.o) #25
  br label %rb_float_new_inline.exit

rb_float_new_inline.exit:                         ; preds = %bb.c, %bb.d, %bb.e
  %.0.i = phi i64 [ %i.j, %bb.c ], [ %i.o, %bb.e ], [ -9223372036854775806, %bb.d ]
  ret i64 %.0.i
}

; Function Attrs: nounwind sspstrong uwtable
define hidden void @Init_builtin_numeric() local_unnamed_addr #2 {
bb.a:
  tail call void @rb_load_with_builtin_functions(ptr noundef nonnull @.str.139, ptr noundef nonnull @Init_builtin_numeric.numeric_table) #25
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal i64 @builtin_inline_class_106(ptr nofree readnone captures(none) %0, i64 noundef %1) #2 {
bb.a:
  %i.a = trunc i64 %1 to i1
  br i1 %i.a, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %.not.i.i = icmp slt i64 %1, -9223372036854775806
  br i1 %.not.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %2 = and i64 %1, -2
  %3 = sub i64 1, %2
  br label %rb_int_uminus.exit

bb.d:                                             ; preds = %bb.b
  %i.b = tail call i64 @rb_int2big(i64 noundef 4611686018427387904) #25
  br label %rb_int_uminus.exit

bb.e:                                             ; preds = %bb.a
  %i.c = tail call i64 @rb_big_uminus(i64 noundef %1) #25
  br label %rb_int_uminus.exit

rb_int_uminus.exit:                               ; preds = %bb.c, %bb.d, %bb.e
  %.0.i = phi i64 [ %i.c, %bb.e ], [ %3, %bb.c ], [ %i.b, %bb.d ]
  ret i64 %.0.i
}

; Function Attrs: nounwind sspstrong uwtable
define internal i64 @builtin_inline_class_125(ptr nofree readnone captures(none) %0, i64 noundef %1) #2 {
bb.a:
  %i.a = trunc i64 %1 to i1
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = xor i64 %1, -1
  %i.c = or disjoint i64 %i.b, 1
  br label %rb_int_comp.exit

bb.c:                                             ; preds = %bb.a
  %i.d = icmp eq i64 %1, 0
  %i.e = and i64 %1, 6
  %i.f = icmp ne i64 %i.e, 0
  %i.g = or i1 %i.d, %i.f
  br i1 %i.g, label %rb_int_comp.exit, label %rbimpl_RB_TYPE_P_fastpath.exit.i

rbimpl_RB_TYPE_P_fastpath.exit.i:                 ; preds = %bb.c
  %i.h = inttoptr i64 %1 to ptr
  %i.i = load i64, ptr %i.h, align 8, !tbaa !13
  %i.j = and i64 %i.i, 31
  %i.k = icmp eq i64 %i.j, 10
  br i1 %i.k, label %bb.d, label %rb_int_comp.exit

bb.d:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i
  %i.l = tail call i64 @rb_big_comp(i64 noundef %1) #25
  br label %rb_int_comp.exit

rb_int_comp.exit:                                 ; preds = %bb.b, %bb.c, %rbimpl_RB_TYPE_P_fastpath.exit.i, %bb.d
  %.0.i = phi i64 [ %i.c, %bb.b ], [ %i.l, %bb.d ], [ 4, %rbimpl_RB_TYPE_P_fastpath.exit.i ], [ 4, %bb.c ]
  ret i64 %.0.i
}

; Function Attrs: nounwind sspstrong uwtable
define internal i64 @builtin_inline_class_139(ptr nofree readnone captures(none) %0, i64 noundef %1) #2 {
bb.a:
  %i.a = trunc i64 %1 to i1
  br i1 %i.a, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.b = ashr i64 %1, 1
  %spec.select.i.i = tail call i64 @llvm.abs.i64(i64 %i.b, i1 true) ; 2 uses
  %i.c = icmp samesign ult i64 %spec.select.i.i, 4611686018427387904
  br i1 %i.c, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.d = shl nuw nsw i64 %spec.select.i.i, 1
  %i.e = or disjoint i64 %i.d, 1
  br label %rb_int_abs.exit

bb.d:                                             ; preds = %bb.b
  %i.f = tail call i64 @rb_int2big(i64 noundef 4611686018427387904) #25
  br label %rb_int_abs.exit

bb.e:                                             ; preds = %bb.a
  %i.g = icmp eq i64 %1, 0
  %i.h = and i64 %1, 6
  %i.i = icmp ne i64 %i.h, 0
  %i.j = or i1 %i.g, %i.i
  br i1 %i.j, label %rb_int_abs.exit, label %rbimpl_RB_TYPE_P_fastpath.exit.i

rbimpl_RB_TYPE_P_fastpath.exit.i:                 ; preds = %bb.e
  %i.k = inttoptr i64 %1 to ptr
  %i.l = load i64, ptr %i.k, align 8, !tbaa !13
  %i.m = and i64 %i.l, 31
  %i.n = icmp eq i64 %i.m, 10
  br i1 %i.n, label %bb.f, label %rb_int_abs.exit

bb.f:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i
  %i.o = tail call i64 @rb_big_abs(i64 noundef %1) #25
  br label %rb_int_abs.exit

rb_int_abs.exit:                                  ; preds = %bb.c, %bb.d, %bb.e, %rbimpl_RB_TYPE_P_fastpath.exit.i, %bb.f
  %.0.i = phi i64 [ 4, %rbimpl_RB_TYPE_P_fastpath.exit.i ], [ %i.o, %bb.f ], [ %i.e, %bb.c ], [ %i.f, %bb.d ], [ 4, %bb.e ]
  ret i64 %.0.i
}

; Function Attrs: nounwind sspstrong uwtable
define internal i64 @builtin_inline_class_186(ptr nofree readnone captures(none) %0, i64 noundef %1) #2 {
bb.a:
  %i.a = trunc i64 %1 to i1
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = ashr i64 %1, 1
  %.lobit.i.i = ashr i64 %1, 63
  %spec.select.i.i = xor i64 %i.b, %.lobit.i.i
  %i.c = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %spec.select.i.i, i1 false)
  %i.d = shl nuw nsw i64 %i.c, 1
  %i.e = sub nuw nsw i64 129, %i.d
  br label %rb_int_bit_length.exit

bb.c:                                             ; preds = %bb.a
  %i.f = icmp eq i64 %1, 0
  %i.g = and i64 %1, 6
  %i.h = icmp ne i64 %i.g, 0
  %i.i = or i1 %i.f, %i.h
  br i1 %i.i, label %rb_int_bit_length.exit, label %rbimpl_RB_TYPE_P_fastpath.exit.i

rbimpl_RB_TYPE_P_fastpath.exit.i:                 ; preds = %bb.c
  %i.j = inttoptr i64 %1 to ptr
  %i.k = load i64, ptr %i.j, align 8, !tbaa !13
  %i.l = and i64 %i.k, 31
  %i.m = icmp eq i64 %i.l, 10
  br i1 %i.m, label %bb.d, label %rb_int_bit_length.exit

bb.d:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i
  %i.n = tail call i64 @rb_big_bit_length(i64 noundef %1) #25
  br label %rb_int_bit_length.exit

rb_int_bit_length.exit:                           ; preds = %bb.b, %bb.c, %rbimpl_RB_TYPE_P_fastpath.exit.i, %bb.d
  %.0.i = phi i64 [ %i.e, %bb.b ], [ %i.n, %bb.d ], [ 4, %rbimpl_RB_TYPE_P_fastpath.exit.i ], [ 4, %bb.c ]
  ret i64 %.0.i
}

; Function Attrs: nounwind sspstrong uwtable
define internal i64 @builtin_inline_class_195(ptr nofree readnone captures(none) %0, i64 noundef %1) #2 {
bb.a:
  %i.a = trunc i64 %1 to i1
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = and i64 %1, 2
  %i.c = icmp eq i64 %i.b, 0
  %i.d = select i1 %i.c, i64 20, i64 0
  br label %rb_int_even_p.exit

bb.c:                                             ; preds = %bb.a
  %i.e = tail call i64 @rb_big_even_p(i64 noundef %1) #25
  br label %rb_int_even_p.exit

rb_int_even_p.exit:                               ; preds = %bb.b, %bb.c
  %.0.i.i = phi i64 [ %i.d, %bb.b ], [ %i.e, %bb.c ]
  ret i64 %.0.i.i
}

; Function Attrs: nounwind sspstrong uwtable
define internal i64 @builtin_inline_class_214(ptr nofree readnone captures(none) %0, i64 noundef %1) #2 {
bb.a:
  %i.a = trunc i64 %1 to i1
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = and i64 %1, 2
  %.not.i = icmp eq i64 %i.b, 0
  %i.c = select i1 %.not.i, i64 0, i64 20
  br label %rb_int_odd_p.exit

bb.c:                                             ; preds = %bb.a
  %i.d = tail call i64 @rb_big_odd_p(i64 noundef %1) #25
  br label %rb_int_odd_p.exit

rb_int_odd_p.exit:                                ; preds = %bb.b, %bb.c
  %.0.i = phi i64 [ %i.c, %bb.b ], [ %i.d, %bb.c ]
  ret i64 %.0.i
}

; Function Attrs: nounwind sspstrong uwtable
define internal i64 @builtin_inline_class_241(ptr nofree readnone captures(none) %0, i64 noundef %1) #2 {
bb.a:
  %i.a = trunc i64 %1 to i1
  br i1 %i.a, label %rb_int_size.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = icmp eq i64 %1, 0
  %i.c = and i64 %1, 6
  %i.d = icmp ne i64 %i.c, 0
  %i.e = or i1 %i.b, %i.d
  br i1 %i.e, label %rb_int_size.exit, label %rbimpl_RB_TYPE_P_fastpath.exit.i

rbimpl_RB_TYPE_P_fastpath.exit.i:                 ; preds = %bb.b
  %i.f = inttoptr i64 %1 to ptr
  %i.g = load i64, ptr %i.f, align 8, !tbaa !13
  %i.h = and i64 %i.g, 31
  %i.i = icmp eq i64 %i.h, 10
  br i1 %i.i, label %bb.c, label %rb_int_size.exit

bb.c:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i
  %i.j = tail call i64 @rb_big_size_m(i64 noundef %1) #25
  br label %rb_int_size.exit

rb_int_size.exit:                                 ; preds = %bb.a, %bb.b, %rbimpl_RB_TYPE_P_fastpath.exit.i, %bb.c
  %.0.i = phi i64 [ 4, %rbimpl_RB_TYPE_P_fastpath.exit.i ], [ %i.j, %bb.c ], [ 17, %bb.a ], [ 4, %bb.b ]
  ret i64 %.0.i
}

; Function Attrs: nounwind sspstrong uwtable
define internal i64 @builtin_inline_class_258(ptr nofree readnone captures(none) %0, i64 noundef %1) #2 {
bb.a:
  %i.a = tail call i64 @rb_frame_this_func() #25
  %i.b = tail call i64 @rb_id2sym(i64 noundef %i.a) #25
  %i.c = tail call i64 @rb_enumeratorize_with_size(i64 noundef %1, i64 noundef %i.b, i32 noundef 0, ptr noundef null, ptr noundef nonnull @int_dotimes_size) #25
  ret i64 %i.c
}

; Function Attrs: nounwind sspstrong uwtable
end_hunk_3
