inline.NumInlined: 1036
inline.NumDeleted: 137
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 3
begin_hunk_0_@llvm.fabs.f64
declare double @llvm.fabs.f64(double) #9

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden range(i64 -1, 5) i64 @rb_flo_is_infinite_p(i64 noundef %0) #12 {
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
  %.0.i = phi double [ %i.j, %bb.d ], [ %i.g, %bb.c ], [ 0.000000e+00, %bb.b ] ; 2 uses
  %i.k = tail call double @llvm.fabs.f64(double %.0.i) #30
  %i.l = fcmp oeq double %i.k, +inf
  %i.m = fcmp olt double %.0.i, 0.000000e+00
  %i.n = select i1 %i.m, i64 -1, i64 3
  %.0 = select i1 %i.l, i64 %i.n, i64 4
  ret i64 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden range(i64 0, 21) i64 @rb_flo_is_finite_p(i64 noundef %0) #12 {
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
  %i.k = tail call double @llvm.fabs.f64(double %.0.i)
  %i.l = fcmp one double %i.k, +inf
  %i.m = select i1 %i.l, i64 20, i64 0
  ret i64 %i.m
}

; Function Attrs: nounwind sspstrong uwtable
define hidden i64 @rb_float_floor(i64 noundef %0, i32 noundef %1) local_unnamed_addr #2 {
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
  %.0.i = phi double [ %i.m, %bb.d ], [ %i.j, %bb.c ] ; 7 uses
  %i.n = fcmp oeq double %.0.i, 0.000000e+00
  br i1 %i.n, label %rb_float_value_inline.exit.thread, label %bb.j

rb_float_value_inline.exit.thread:                ; preds = %bb.b, %rb_float_value_inline.exit
  %.0.i43 = phi double [ %.0.i, %rb_float_value_inline.exit ], [ 0.000000e+00, %bb.b ] ; 2 uses
  %i.o = icmp sgt i32 %1, 0
  br i1 %i.o, label %bb.e, label %rb_float_new_inline.exit

bb.e:                                             ; preds = %rb_float_value_inline.exit.thread
  %i.p = bitcast double %.0.i43 to i64            ; 5 uses
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
  store double %.0.i43, ptr %i.ae, align 8, !tbaa !21
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
  %i.ar = tail call double @pow(double noundef 1.000000e+01, double noundef %i.aq) #25, !tbaa !7 ; 3 uses
  %i.as = fmul double %.0.i, %i.ar
  %i.at = tail call double @llvm.floor.f64(double %i.as) ; 2 uses
  %2 = fadd double %i.at, 1.000000e+00
  %3 = fdiv double %2, %i.ar                      ; 2 uses
  %i.au = fcmp ogt double %3, %.0.i
  %4 = fdiv double %i.at, %i.ar
  %.0 = select i1 %i.au, double %4, double %3     ; 2 uses
  %i.av = bitcast double %.0 to i64               ; 5 uses
  %cond.i37 = icmp eq i64 %i.av, 3458764513820540928
  br i1 %cond.i37, label %bb.v, label %bb.s

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
  br label %rb_float_new_inline.exit40

bb.u:                                             ; preds = %bb.s
  %i.be = icmp eq i64 %i.av, 0
  br i1 %i.be, label %rb_float_new_inline.exit40, label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.bf = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @ruby_current_ec)
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !18
  store volatile ptr %i.bg, ptr %i.a, align 8, !tbaa !18
  %.0..0..0..0..0..0..0..0..0..0..i.i.i39 = load volatile ptr, ptr %i.a, align 8, !tbaa !18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.bh = load i64, ptr @rb_cFloat, align 8, !tbaa !11
  %i.bi = tail call i64 @rb_wb_protected_newobj_of(ptr noundef %.0..0..0..0..0..0..0..0..0..0..i.i.i39, i64 noundef %i.bh, i64 noundef 4, i32 noundef 0, i64 noundef 24) #25 ; 3 uses
  %i.bj = inttoptr i64 %i.bi to ptr
  %i.bk = getelementptr i8, ptr %i.bj, i64 16
  store double %.0, ptr %i.bk, align 8, !tbaa !21
  tail call void @rb_obj_freeze_inline(i64 noundef %i.bi) #25
  br label %rb_float_new_inline.exit40

rb_float_new_inline.exit40:                       ; preds = %bb.v, %bb.u, %bb.t, %float_round_underflow.exit, %float_round_overflow.exit
  %.025 = phi i64 [ -9223372036854775806, %float_round_underflow.exit ], [ %0, %float_round_overflow.exit ], [ %i.bd, %bb.t ], [ %i.bi, %bb.v ], [ -9223372036854775806, %bb.u ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #25
  br label %rb_float_new_inline.exit

bb.w:                                             ; preds = %bb.j
  %i.bl = tail call double @llvm.floor.f64(double %.0.i) ; 4 uses
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
  %.0.i41 = phi i64 [ %i.bq, %bb.x ], [ %i.br, %bb.y ] ; 2 uses
  %i.bs = icmp slt i32 %1, 0
  br i1 %i.bs, label %bb.z, label %rb_float_new_inline.exit

bb.z:                                             ; preds = %dbl2ival.exit
  %i.bt = tail call fastcc i64 @rb_int_floor(i64 noundef %.0.i41, i32 noundef %1)
  br label %rb_float_new_inline.exit

rb_float_new_inline.exit:                         ; preds = %bb.i, %bb.h, %bb.g, %dbl2ival.exit, %bb.z, %rb_float_value_inline.exit.thread, %rb_float_new_inline.exit40
  %.1 = phi i64 [ 1, %rb_float_value_inline.exit.thread ], [ %.025, %rb_float_new_inline.exit40 ], [ %.0.i41, %dbl2ival.exit ], [ %i.bt, %bb.z ], [ %i.x, %bb.g ], [ %i.ac, %bb.i ], [ -9223372036854775806, %bb.h ]
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
  %i.af = ashr i64 %0, 1                          ; 2 uses
  %i.ag = sub nsw i64 0, %i.af                    ; 2 uses
  %.not.i.i33 = icmp eq i64 %i.af, -4611686018427387904
  br i1 %.not.i.i33, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ah = shl nuw nsw i64 %i.ag, 1
  %i.ai = or disjoint i64 %i.ah, 1
  br label %rb_int_uminus.exit

bb.i:                                             ; preds = %bb.g
  %i.aj = tail call i64 @rb_int2big(i64 noundef %i.ag) #25
  br label %rb_int_uminus.exit

.thread51:                                        ; preds = %int_neg_p.exit.thread
  %i.ak = tail call i64 @rb_big_uminus(i64 noundef %0) #25
  br label %rb_int_uminus.exit

rb_int_uminus.exit:                               ; preds = %bb.h, %bb.i, %.thread51
  %.0.i32 = phi i64 [ %i.ak, %.thread51 ], [ %i.ai, %bb.h ], [ %i.aj, %bb.i ] ; 7 uses
  %i.al = trunc i64 %.0.i32 to i1
  br i1 %i.al, label %bb.j, label %bb.k

bb.j:                                             ; preds = %rb_int_uminus.exit
  %i.am = tail call fastcc i64 @fix_plus(i64 noundef %.0.i32, i64 noundef %.fr)
  br label %rb_int_plus.exit

bb.k:                                             ; preds = %rb_int_uminus.exit
  %i.an = icmp eq i64 %.0.i32, 0
  %i.ao = and i64 %.0.i32, 6
  %i.ap = icmp ne i64 %i.ao, 0
  %i.aq = or i1 %i.an, %i.ap
  br i1 %i.aq, label %rbimpl_RB_TYPE_P_fastpath.exit.thread.i35, label %rbimpl_RB_TYPE_P_fastpath.exit.i34

rbimpl_RB_TYPE_P_fastpath.exit.i34:               ; preds = %bb.k
  %i.ar = inttoptr i64 %.0.i32 to ptr
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !13
  %i.at = and i64 %i.as, 31
  %i.au = icmp eq i64 %i.at, 10
  br i1 %i.au, label %bb.l, label %rbimpl_RB_TYPE_P_fastpath.exit.thread.i35

bb.l:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i34
  %i.av = tail call i64 @rb_big_plus(i64 noundef %.0.i32, i64 noundef %.fr) #25
  br label %rb_int_plus.exit

rbimpl_RB_TYPE_P_fastpath.exit.thread.i35:        ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i34, %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store i64 %.0.i32, ptr %i.c, align 8, !tbaa !11
  store i64 %.fr, ptr %i.d, align 8, !tbaa !11
end_hunk_0
