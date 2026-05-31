inline.NumInlined: 822
inline.NumDeleted: 151
begin_hunk_0
@rb_cFloat = external local_unnamed_addr global i64, align 8
@ruby_current_ec = external thread_local local_unnamed_addr global ptr, align 8
@.str.96 = private unnamed_addr constant [49 x i8] c"hash representation was changed during iteration\00", align 1
@.str.97 = private unnamed_addr constant [40 x i8] c"ret: %d, hash modified during iteration\00", align 1
@.str.98 = private unnamed_addr constant [27 x i8] c"too much nested iterations\00", align 1
@.str.99 = private unnamed_addr constant [26 x i8] c"iteration level underflow\00", align 1
@.str.100 = private unnamed_addr constant [40 x i8] c"block supersedes default value argument\00", align 1
@.str.101 = private unnamed_addr constant [20 x i8] c"key not found: %li\0B\00", align 1
@.str.102 = private unnamed_addr constant [44 x i8] c"default_proc takes two arguments (2 for %d)\00", align 1
@.str.103 = private unnamed_addr constant [47 x i8] c"can't add a new key into hash during iteration\00", align 1
@ruby_single_main_ractor = external local_unnamed_addr global ptr, align 8
@.str.104 = private unnamed_addr constant [46 x i8] c"wrong element type %s at %ld (expected array)\00", align 1
@.str.105 = private unnamed_addr constant [42 x i8] c"invalid number of elements (%ld for 1..2)\00", align 1
@.str.106 = private unnamed_addr constant [33 x i8] c"odd number of arguments for Hash\00", align 1
@.str.107 = private unnamed_addr constant [36 x i8] c"can't replace hash during iteration\00", align 1
@.str.108 = private unnamed_addr constant [3 x i8] c"{}\00", align 1
@.str.109 = private unnamed_addr constant [6 x i8] c"{...}\00", align 1
@.str.110 = private unnamed_addr constant [2 x i8] c"{\00", align 1
@.str.111 = private unnamed_addr constant [2 x i8] c"}\00", align 1
@.str.112 = private unnamed_addr constant [3 x i8] c", \00", align 1
@.str.113 = private unnamed_addr constant [3 x i8] c": \00", align 1
@.str.114 = private unnamed_addr constant [5 x i8] c" => \00", align 1
@.str.115 = private unnamed_addr constant [21 x i8] c"given block not used\00", align 1
@.str.116 = private unnamed_addr constant [5 x i8] c"name\00", align 1
@.str.117 = private unnamed_addr constant [61 x i8] c"bad environment variable %s: ASCII incompatible encoding: %s\00", align 1
@.str.118 = private unnamed_addr constant [48 x i8] c"bad environment variable %s: contains null byte\00", align 1
@.str.119 = private unnamed_addr constant [22 x i8] c"key not found: \22%li\0B\22\00", align 1
@.str.120 = private unnamed_addr constant [6 x i8] c"value\00", align 1
@.str.121 = private unnamed_addr constant [18 x i8] c"cannot freeze ENV\00", align 1
@.str.123 = private unnamed_addr constant [62 x i8] c"Cannot clone ENV, use ENV.to_h to get a copy of ENV as a hash\00", align 1
@.str.124 = private unnamed_addr constant [60 x i8] c"Cannot dup ENV, use ENV.to_h to get a copy of ENV as a hash\00", align 1

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @rb_hash_freeze(i64 noundef %0) #0 {
bb.a:
  %i.a = tail call i64 @rb_obj_freeze(i64 noundef %0) #29
  ret i64 %i.a
}

declare i64 @rb_obj_freeze(i64 noundef) local_unnamed_addr #1

; Function Attrs: nounwind sspstrong uwtable
define dso_local noundef i64 @rb_hash_set_ifnone(i64 noundef returned %0, i64 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = inttoptr i64 %0 to ptr
  %i.b = getelementptr i8, ptr %i.a, i64 16
  store i64 %1, ptr %i.b, align 8, !tbaa !11
  %i.c = icmp eq i64 %1, 0
  %i.d = and i64 %1, 7
  %i.e = icmp ne i64 %i.d, 0
  %i.f = or i1 %i.c, %i.e
  br i1 %i.f, label %rb_obj_write.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @rb_gc_writebarrier(i64 noundef %0, i64 noundef %1) #29
  br label %rb_obj_write.exit

rb_obj_write.exit:                                ; preds = %bb.a, %bb.b
  ret i64 %0
}

; Function Attrs: nounwind sspstrong uwtable
define hidden i32 @rb_any_cmp(i64 noundef %0, i64 noundef %1) #0 {
bb.a:
  %i.a = icmp eq i64 %0, %1
  br i1 %i.a, label %RB_SYMBOL_P.exit22.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = icmp eq i64 %0, 0
  %i.c = and i64 %0, 7
  %i.d = icmp ne i64 %i.c, 0
  %i.e = or i1 %i.b, %i.d                         ; 2 uses
  br i1 %i.e, label %rbimpl_RB_TYPE_P_fastpath.exit21.thread, label %rbimpl_RB_TYPE_P_fastpath.exit21

rbimpl_RB_TYPE_P_fastpath.exit21:                 ; preds = %bb.b
  %i.f = inttoptr i64 %0 to ptr                   ; 2 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !13
  %i.h = and i64 %i.g, 31
  %i.i = icmp eq i64 %i.h, 5
  br i1 %i.i, label %bb.c, label %rbimpl_RB_TYPE_P_fastpath.exit21.thread

bb.c:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit21
  %i.j = getelementptr i8, ptr %i.f, i64 8
  %i.k = load i64, ptr %i.j, align 8, !tbaa !15   ; 2 uses
  %i.l = load i64, ptr @rb_cString, align 8, !tbaa !11
  %i.m = icmp eq i64 %i.k, %i.l
  br i1 %i.m, label %bb.d, label %rbimpl_RB_TYPE_P_fastpath.exit21.thread

bb.d:                                             ; preds = %bb.c
  %i.n = icmp eq i64 %1, 0
  %i.o = and i64 %1, 7
  %i.p = icmp ne i64 %i.o, 0
  %i.q = or i1 %i.n, %i.p
  br i1 %i.q, label %rbimpl_RB_TYPE_P_fastpath.exit21.thread, label %rbimpl_RB_TYPE_P_fastpath.exit

rbimpl_RB_TYPE_P_fastpath.exit:                   ; preds = %bb.d
  %i.r = inttoptr i64 %1 to ptr                   ; 2 uses
  %i.s = load i64, ptr %i.r, align 8, !tbaa !13
  %i.t = and i64 %i.s, 31
  %i.u = icmp eq i64 %i.t, 5
  br i1 %i.u, label %bb.e, label %rbimpl_RB_TYPE_P_fastpath.exit21.thread

bb.e:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit
  %i.v = getelementptr i8, ptr %i.r, i64 8
  %i.w = load i64, ptr %i.v, align 8, !tbaa !15
  %i.x = icmp eq i64 %i.w, %i.k
  br i1 %i.x, label %bb.f, label %rbimpl_RB_TYPE_P_fastpath.exit21.thread

bb.f:                                             ; preds = %bb.e
  %i.y = tail call i32 @rb_str_hash_cmp(i64 noundef %0, i64 noundef %1) #29
  br label %RB_SYMBOL_P.exit22.thread

rbimpl_RB_TYPE_P_fastpath.exit21.thread:          ; preds = %bb.d, %bb.b, %bb.e, %rbimpl_RB_TYPE_P_fastpath.exit, %bb.c, %rbimpl_RB_TYPE_P_fastpath.exit21
  %i.z = icmp eq i64 %0, 36
  %i.aa = icmp eq i64 %1, 36
  %or.cond = or i1 %i.z, %i.aa
  br i1 %or.cond, label %RB_SYMBOL_P.exit22.thread, label %bb.g

bb.g:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit21.thread
  %i.ab = and i64 %0, 255
  %i.ac = icmp eq i64 %i.ab, 12
  br i1 %i.ac, label %RB_SYMBOL_P.exit.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  br i1 %i.e, label %RB_SYMBOL_P.exit.thread25, label %RB_SYMBOL_P.exit

RB_SYMBOL_P.exit:                                 ; preds = %bb.h
  %i.ad = inttoptr i64 %0 to ptr
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !13
  %i.af = and i64 %i.ae, 31
  %i.ag = icmp eq i64 %i.af, 20
  br i1 %i.ag, label %RB_SYMBOL_P.exit.thread, label %RB_SYMBOL_P.exit.thread25

RB_SYMBOL_P.exit.thread:                          ; preds = %bb.g, %RB_SYMBOL_P.exit
  %i.ah = and i64 %1, 255
  %i.ai = icmp eq i64 %i.ah, 12
  br i1 %i.ai, label %RB_SYMBOL_P.exit22.thread, label %bb.i

bb.i:                                             ; preds = %RB_SYMBOL_P.exit.thread
  %i.aj = icmp eq i64 %1, 0
  %i.ak = and i64 %1, 7
  %i.al = icmp ne i64 %i.ak, 0
  %i.am = or i1 %i.aj, %i.al
  br i1 %i.am, label %RB_SYMBOL_P.exit.thread25, label %RB_SYMBOL_P.exit22

RB_SYMBOL_P.exit22:                               ; preds = %bb.i
  %i.an = inttoptr i64 %1 to ptr
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !13
  %i.ap = and i64 %i.ao, 31
  %i.aq = icmp eq i64 %i.ap, 20
  br i1 %i.aq, label %RB_SYMBOL_P.exit22.thread, label %RB_SYMBOL_P.exit.thread25

RB_SYMBOL_P.exit.thread25:                        ; preds = %bb.i, %bb.h, %RB_SYMBOL_P.exit22, %RB_SYMBOL_P.exit
  %i.ar = tail call i32 @rb_eql(i64 noundef %0, i64 noundef %1) #29
  %.not = icmp eq i32 %i.ar, 0
  %i.as = zext i1 %.not to i32
  br label %RB_SYMBOL_P.exit22.thread

RB_SYMBOL_P.exit22.thread:                        ; preds = %RB_SYMBOL_P.exit.thread, %RB_SYMBOL_P.exit22, %rbimpl_RB_TYPE_P_fastpath.exit21.thread, %bb.a, %RB_SYMBOL_P.exit.thread25, %bb.f
  %.0 = phi i32 [ %i.as, %RB_SYMBOL_P.exit.thread25 ], [ %i.y, %bb.f ], [ 0, %bb.a ], [ -1, %rbimpl_RB_TYPE_P_fastpath.exit21.thread ], [ 1, %RB_SYMBOL_P.exit.thread ], [ 1, %RB_SYMBOL_P.exit22 ]
  ret i32 %.0
}

declare i32 @rb_str_hash_cmp(i64 noundef, i64 noundef) local_unnamed_addr #1

declare i32 @rb_eql(i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nounwind sspstrong uwtable
define hidden i64 @rb_dbl_long_hash(double noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = fcmp oeq double %0, 0.000000e+00
  %i.b = bitcast double %0 to i64
  %i.c = select i1 %i.a, i64 0, i64 %i.b
  %i.d = tail call i64 @rb_hash_start(i64 noundef %i.c) #29
  %i.e = add i64 %i.d, 2198850233
  %i.f = zext i64 %i.e to i128
  %i.g = mul nuw nsw i128 %i.f, 3317948294049201653 ; 2 uses
  %i.h = lshr i128 %i.g, 64
  %i.i = xor i128 %i.h, %i.g
  %i.j = trunc i128 %i.i to i64
  ret i64 %i.j
}

; Function Attrs: nounwind sspstrong uwtable
define hidden range(i64 -4611686018427387904, 4611686018427387904) i64 @rb_any_hash(i64 noundef %0) #0 {
bb.a:
  %i.a = tail call fastcc i64 @any_hash(i64 noundef %0, ptr noundef nonnull @obj_any_hash)
  ret i64 %i.a
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define internal fastcc range(i64 -4611686018427387904, 4611686018427387904) i64 @any_hash(i64 noundef %0, ptr noundef readonly captures(none) %1) unnamed_addr #2 {
bb.a:
  %i.a = icmp eq i64 %0, 0
  %i.b = and i64 %0, 7
  %i.c = icmp ne i64 %i.b, 0
  %i.d = or i1 %i.a, %i.c
  br i1 %i.d, label %bb.b, label %rb_type.exit

bb.b:                                             ; preds = %bb.a
  switch i64 %0, label %bb.c [
    i64 0, label %rb_type.exit.thread
    i64 4, label %rb_type.exit.thread
    i64 20, label %rb_type.exit.thread
    i64 36, label %rb_type.exit.thread16
  ]

bb.c:                                             ; preds = %bb.b
  %i.e = trunc i64 %0 to i1
  br i1 %i.e, label %rb_type.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = and i64 %0, 254
  %i.g = icmp eq i64 %i.f, 12
  br i1 %i.g, label %rb_type.exit.thread18, label %rb_type.exit.thread20

rb_type.exit:                                     ; preds = %bb.a
  %i.h = inttoptr i64 %0 to ptr
  %i.i = load i64, ptr %i.h, align 8, !tbaa !13
  %i.j = trunc i64 %i.i to i32
  %i.k = and i32 %i.j, 31
  switch i32 %i.k, label %rb_type.exit.thread16 [
    i32 20, label %rb_type.exit.thread18
    i32 21, label %rb_type.exit.thread
    i32 18, label %rb_type.exit.thread
    i32 19, label %rb_type.exit.thread
    i32 17, label %rb_type.exit.thread
    i32 5, label %bb.g
    i32 10, label %bb.h
    i32 4, label %rb_type.exit.thread20
  ]

rb_type.exit.thread18:                            ; preds = %bb.d, %rb_type.exit
  %i.l = and i64 %0, 255
  %i.m = icmp eq i64 %i.l, 12
  br i1 %i.m, label %bb.e, label %bb.f

bb.e:                                             ; preds = %rb_type.exit.thread18
  %i.n = lshr i64 %0, 12
  %i.o = tail call i64 @rb_hash_start(i64 noundef %i.n) #29
  br label %bb.i

bb.f:                                             ; preds = %rb_type.exit.thread18
  %i.p = inttoptr i64 %0 to ptr
  %i.q = getelementptr i8, ptr %i.p, i64 16
  %i.r = load i64, ptr %i.q, align 8, !tbaa !16
  %i.s = lshr i64 %i.r, 1
  br label %bb.i

rb_type.exit.thread:                              ; preds = %bb.b, %bb.b, %bb.c, %bb.b, %rb_type.exit, %rb_type.exit, %rb_type.exit, %rb_type.exit
  %i.t = tail call i64 @rb_hash_start(i64 noundef %0) #29
  %i.u = add i64 %i.t, 2198850233
  %i.v = zext i64 %i.u to i128
  %i.w = mul nuw nsw i128 %i.v, 3317948294049201653 ; 2 uses
  %i.x = lshr i128 %i.w, 64
  %i.y = xor i128 %i.x, %i.w
  %i.z = trunc i128 %i.y to i64
  br label %bb.i

bb.g:                                             ; preds = %rb_type.exit
  %i.aa = tail call i64 @rb_str_hash(i64 noundef %0) #29
  br label %bb.i

bb.h:                                             ; preds = %rb_type.exit
  %i.ab = tail call i64 @rb_big_hash(i64 noundef %0) #29
  %i.ac = ashr i64 %i.ab, 1
  br label %bb.i

rb_type.exit.thread20:                            ; preds = %bb.d, %rb_type.exit
  %i.ad = tail call double @rb_float_value(i64 noundef %0) #30 ; 2 uses
  %i.ae = fcmp oeq double %i.ad, 0.000000e+00
  %i.af = bitcast double %i.ad to i64
  %i.ag = select i1 %i.ae, i64 0, i64 %i.af
  %i.ah = tail call i64 @rb_hash_start(i64 noundef %i.ag) #29
  %i.ai = add i64 %i.ah, 2198850233
  %i.aj = zext i64 %i.ai to i128
  %i.ak = mul nuw nsw i128 %i.aj, 3317948294049201653 ; 2 uses
  %i.al = lshr i128 %i.ak, 64
  %i.am = xor i128 %i.al, %i.ak
  %i.an = trunc i128 %i.am to i64
  br label %bb.i

rb_type.exit.thread16:                            ; preds = %bb.b, %rb_type.exit
  %i.ao = tail call i64 %1(i64 noundef %0) #29, !callees !18
  br label %bb.i

bb.i:                                             ; preds = %bb.e, %bb.f, %rb_type.exit.thread16, %rb_type.exit.thread20, %bb.h, %bb.g, %rb_type.exit.thread
  %.0 = phi i64 [ %i.ao, %rb_type.exit.thread16 ], [ %i.o, %bb.e ], [ %i.s, %bb.f ], [ %i.z, %rb_type.exit.thread ], [ %i.aa, %bb.g ], [ %i.ac, %bb.h ], [ %i.an, %rb_type.exit.thread20 ] ; 2 uses
  %i.ap = icmp sgt i64 %.0, 0
  %i.aq = and i64 %.0, 4611686018427387903
  %masksel = select i1 %i.ap, i64 0, i64 -4611686018427387904
  %.1 = or disjoint i64 %masksel, %i.aq
  ret i64 %.1
}

; Function Attrs: nounwind sspstrong uwtable
define internal range(i64 -4611686018427387904, 4611686018427387904) i64 @obj_any_hash(i64 noundef %0) #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %i.c = icmp eq i64 %0, 0
  %i.d = and i64 %0, 7
  %i.e = icmp ne i64 %i.d, 0
  %i.f = or i1 %i.c, %i.e
  br i1 %i.f, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = inttoptr i64 %0 to ptr
  %i.h = getelementptr i8, ptr %i.g, i64 8
  br label %rb_class_of.exit

bb.c:                                             ; preds = %bb.a
  switch i64 %0, label %bb.f [
    i64 0, label %rb_class_of.exit
    i64 4, label %bb.d
    i64 20, label %bb.e
  ]

bb.d:                                             ; preds = %bb.c
  br label %rb_class_of.exit

bb.e:                                             ; preds = %bb.c
  br label %rb_class_of.exit

bb.f:                                             ; preds = %bb.c
  %i.i = trunc i64 %0 to i1
  br i1 %i.i, label %rb_class_of.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.j = and i64 %0, 254
  %i.k = icmp eq i64 %i.j, 12
  %spec.select.i = select i1 %i.k, ptr @rb_cSymbol, ptr @rb_cFloat
  br label %rb_class_of.exit

rb_class_of.exit:                                 ; preds = %bb.b, %bb.c, %bb.d, %bb.e, %bb.f, %bb.g
  %.0.in.i = phi ptr [ %i.h, %bb.b ], [ @rb_cNilClass, %bb.d ], [ @rb_cTrueClass, %bb.e ], [ @rb_cFalseClass, %bb.c ], [ @rb_cInteger, %bb.f ], [ %spec.select.i, %bb.g ]
  %.0.i22 = load i64, ptr %.0.in.i, align 8, !tbaa !11 ; 2 uses
  %.not = icmp eq i64 %.0.i22, 0
  br i1 %.not, label %.thread, label %bb.h

bb.h:                                             ; preds = %rb_class_of.exit
  %i.l = load i64, ptr @id_hash, align 8, !tbaa !11
  %i.m = tail call ptr @rb_callable_method_entry(i64 noundef %.0.i22, i64 noundef %i.l) #29 ; 5 uses
  %.not20 = icmp eq ptr %i.m, null
  br i1 %.not20, label %.thread, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.n = load i64, ptr %i.m, align 8, !tbaa !19
  %i.o = and i64 %i.n, 262144
  %.not21 = icmp eq i64 %i.o, 0
  br i1 %.not21, label %.thread, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.p = getelementptr i8, ptr %i.m, i64 16
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !23   ; 2 uses
  %i.r = load i8, ptr %i.q, align 8
  %i.s = and i8 %i.r, 15
  %i.t = icmp eq i8 %i.s, 1
  br i1 %i.t, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.u = getelementptr i8, ptr %i.q, i64 8
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !24
  %i.w = icmp eq ptr %i.v, @rb_obj_hash
  br i1 %i.w, label %.thread24, label %bb.l

.thread24:                                        ; preds = %bb.k
  %i.x = tail call fastcc i64 @any_hash(i64 noundef %0, ptr noundef nonnull @objid_hash) ; 2 uses
  %i.y = and i64 %i.x, 4611686018427387903
  %i.z = icmp slt i64 %i.x, 0
  %masksel.i.i = select i1 %i.z, i64 -4611686018427387904, i64 0
  %.0.i.i = or disjoint i64 %masksel.i.i, %i.y
  %i.aa = shl nsw i64 %.0.i.i, 1
  %i.ab = or disjoint i64 %i.aa, 1
  br label %bb.n

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.ac = getelementptr i8, ptr %i.m, i64 8
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !25
  %i.ae = inttoptr i64 %i.ad to ptr
  %i.af = getelementptr i8, ptr %i.ae, i64 8
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !15
  %i.ah = load i64, ptr @rb_mKernel, align 8, !tbaa !11
  %i.ai = icmp eq i64 %i.ag, %i.ah
  br i1 %i.ai, label %bb.m, label %.thread

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.aj = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @ruby_current_ec)
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !26
  store volatile ptr %i.ak, ptr %i.a, align 8, !tbaa !26
  %.0..0..0..0..0..0..i = load volatile ptr, ptr %i.a, align 8, !tbaa !26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.al = load i64, ptr @id_hash, align 8, !tbaa !11
  %i.am = tail call i64 @rb_vm_call0(ptr noundef %.0..0..0..0..0..0..i, i64 noundef %0, i64 noundef %i.al, i32 noundef 0, ptr noundef null, ptr noundef nonnull %i.m, i32 noundef 0) #29 ; 2 uses
  %i.an = icmp eq i64 %i.am, 36
  br i1 %i.an, label %.thread, label %bb.n

.thread:                                          ; preds = %bb.h, %bb.i, %bb.l, %rb_class_of.exit, %bb.m
  %i.ao = load i64, ptr @id_hash, align 8, !tbaa !11
  %i.ap = tail call i64 @rb_exec_recursive_outer_mid(ptr noundef nonnull @hash_recursive, i64 noundef %0, i64 noundef 0, i64 noundef %i.ao) #29
  br label %bb.n

bb.n:                                             ; preds = %.thread24, %.thread, %bb.m
  %.2 = phi i64 [ %i.ap, %.thread ], [ %i.am, %bb.m ], [ %i.ab, %.thread24 ] ; 3 uses
end_hunk_0
begin_hunk_1_@env_values:bb.a
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = tail call i64 @rb_ary_new() #29          ; 2 uses
  %i.c = tail call ptr @rb_locale_encoding() #29
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #29
  %i.d = load ptr, ptr @ruby_single_main_ractor, align 8, !tbaa !88
  %.not.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i, label %bb.b, label %rb_vm_lock_enter.exit

bb.b:                                             ; preds = %bb.a
  call void @rb_vm_lock_enter_body(ptr noundef nonnull %i.a) #29
  br label %rb_vm_lock_enter.exit

rb_vm_lock_enter.exit:                            ; preds = %bb.b, %bb.a
  %i.e = load ptr, ptr @environ, align 8, !tbaa !92 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !95   ; 2 uses
  %.not1114 = icmp eq ptr %i.f, null
  br i1 %.not1114, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %rb_vm_lock_enter.exit, %bb.e
  %i.g = phi ptr [ %i.o, %bb.e ], [ %i.f, %rb_vm_lock_enter.exit ]
  %.0815 = phi ptr [ %i.n, %bb.e ], [ %i.e, %rb_vm_lock_enter.exit ]
  %i.h = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %i.g, i32 noundef 61) #30 ; 2 uses
  %.not12 = icmp eq ptr %i.h, null
  br i1 %.not12, label %bb.e, label %bb.c

bb.c:                                             ; preds = %.lr.ph
  %i.i = getelementptr i8, ptr %i.h, i64 1        ; 3 uses
  %.not.i = icmp eq ptr %i.i, null
  br i1 %.not.i, label %env_str_new2.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.i) #30
  %i.k = call i64 @rb_external_str_new_with_enc(ptr noundef nonnull %i.i, i64 noundef %i.j, ptr noundef %i.c) #29 ; 2 uses
  %i.l = call i64 @rb_obj_freeze(i64 noundef %i.k) #29 ; 0 uses
  br label %env_str_new2.exit

env_str_new2.exit:                                ; preds = %bb.c, %bb.d
  %.0.i = phi i64 [ %i.k, %bb.d ], [ 4, %bb.c ]
  %i.m = call i64 @rb_ary_push(i64 noundef %i.b, i64 noundef %.0.i) #29 ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %env_str_new2.exit, %.lr.ph
  %i.n = getelementptr i8, ptr %.0815, i64 8      ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !95   ; 2 uses
  %.not11 = icmp eq ptr %i.o, null
  br i1 %.not11, label %._crit_edge, label %.lr.ph, !llvm.loop !168

._crit_edge:                                      ; preds = %bb.e, %rb_vm_lock_enter.exit
  %i.p = load ptr, ptr @ruby_single_main_ractor, align 8, !tbaa !88
  %.not.i.i13 = icmp eq ptr %i.p, null
  br i1 %.not.i.i13, label %bb.f, label %rb_vm_lock_leave.exit

bb.f:                                             ; preds = %._crit_edge
  call void @rb_vm_lock_leave_body(ptr noundef nonnull %i.a) #29
  br label %rb_vm_lock_leave.exit

rb_vm_lock_leave.exit:                            ; preds = %._crit_edge, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #29
  ret i64 %i.b
}

; Function Attrs: nounwind sspstrong uwtable
define internal noundef i32 @env_replace_i(i64 noundef %0, i64 noundef %1, i64 noundef %2) #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  store i64 %0, ptr %i.a, align 8, !tbaa !11
  %i.b = call i64 @rb_string_value(ptr noundef nonnull %i.a) #29 ; 0 uses
  %i.c = load volatile i64, ptr %i.a, align 8, !tbaa !11
  %i.d = call fastcc ptr @get_env_cstr(i64 noundef %i.c, ptr noundef nonnull @.str.116) ; 0 uses
  %i.e = load i64, ptr %i.a, align 8, !tbaa !11
  %i.f = call fastcc i64 @env_aset(i64 noundef %i.e, i64 noundef %1) ; 0 uses
  %i.g = load i64, ptr %i.a, align 8, !tbaa !11
  %i.h = inttoptr i64 %i.g to ptr                 ; 3 uses
  %i.i = load i64, ptr %i.h, align 8, !tbaa !13
  %i.j = and i64 %i.i, 8192
  %.not.i.i = icmp eq i64 %i.j, 0
  %i.k = getelementptr i8, ptr %i.h, i64 24       ; 2 uses
  br i1 %.not.i.i, label %RSTRING_PTR.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !24
  br label %RSTRING_PTR.exit.i

RSTRING_PTR.exit.i:                               ; preds = %bb.b, %bb.a
  %i.m = phi ptr [ %i.l, %bb.b ], [ %i.k, %bb.a ]
  %i.n = getelementptr i8, ptr %i.h, i64 16
  %i.o = load i64, ptr %i.n, align 8, !tbaa !148  ; 2 uses
  %i.p = inttoptr i64 %2 to ptr                   ; 3 uses
  %i.q = getelementptr i8, ptr %i.p, i64 16       ; 2 uses
  %i.r = getelementptr i8, ptr %i.p, i64 32
  br label %bb.c

bb.c:                                             ; preds = %bb.h, %RSTRING_PTR.exit.i
  %.0.i = phi i64 [ 0, %RSTRING_PTR.exit.i ], [ %i.an, %bb.h ] ; 7 uses
  %i.s = load i64, ptr %i.p, align 8, !tbaa !13   ; 2 uses
  %i.t = and i64 %i.s, 8192
  %.not.i17.i = icmp eq i64 %i.t, 0
  br i1 %.not.i17.i, label %rb_array_len.exit.i, label %rb_array_len.exit.thread.i

rb_array_len.exit.i:                              ; preds = %bb.c
  %i.u = load i64, ptr %i.q, align 8, !tbaa !24
  %i.v = icmp slt i64 %.0.i, %i.u
  br i1 %i.v, label %bb.d, label %keylist_delete.exit

rb_array_len.exit.thread.i:                       ; preds = %bb.c
  %i.w = lshr i64 %i.s, 15
  %i.x = and i64 %i.w, 127
  %i.y = icmp slt i64 %.0.i, %i.x
  br i1 %i.y, label %RARRAY_AREF.exit.i, label %keylist_delete.exit

bb.d:                                             ; preds = %rb_array_len.exit.i
  %i.z = load ptr, ptr %i.r, align 8, !tbaa !24
  br label %RARRAY_AREF.exit.i

RARRAY_AREF.exit.i:                               ; preds = %bb.d, %rb_array_len.exit.thread.i
  %.0.i.i.i = phi ptr [ %i.z, %bb.d ], [ %i.q, %rb_array_len.exit.thread.i ]
  %i.aa = getelementptr [8 x i8], ptr %.0.i.i.i, i64 %.0.i
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !11
  %i.ac = inttoptr i64 %i.ab to ptr               ; 3 uses
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !13
  %i.ae = and i64 %i.ad, 8192
  %.not.i18.i = icmp eq i64 %i.ae, 0
  %i.af = getelementptr i8, ptr %i.ac, i64 24     ; 2 uses
  br i1 %.not.i18.i, label %RSTRING_PTR.exit19.i, label %bb.e

bb.e:                                             ; preds = %RARRAY_AREF.exit.i
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !24
  br label %RSTRING_PTR.exit19.i

RSTRING_PTR.exit19.i:                             ; preds = %bb.e, %RARRAY_AREF.exit.i
  %i.ah = phi ptr [ %i.ag, %bb.e ], [ %i.af, %RARRAY_AREF.exit.i ]
  %i.ai = getelementptr i8, ptr %i.ac, i64 16
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !148
  %.not.i = icmp eq i64 %i.aj, %i.o
  br i1 %.not.i, label %bb.f, label %bb.h

bb.f:                                             ; preds = %RSTRING_PTR.exit19.i
  %bcmp.i = call i32 @bcmp(ptr %i.m, ptr %i.ah, i64 %i.o)
  %i.ak = icmp eq i32 %bcmp.i, 0
  br i1 %i.ak, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.al = call i64 @rb_ary_delete_at(i64 noundef %2, i64 noundef %.0.i) #29 ; 0 uses
  %i.am = add i64 %.0.i, -1
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %RSTRING_PTR.exit19.i
  %.1.i = phi i64 [ %.0.i, %RSTRING_PTR.exit19.i ], [ %i.am, %bb.g ], [ %.0.i, %bb.f ]
  %i.an = add i64 %.1.i, 1
  br label %bb.c, !llvm.loop !169

keylist_delete.exit:                              ; preds = %rb_array_len.exit.i, %rb_array_len.exit.thread.i
  ret i32 0
}

declare i64 @rb_ary_delete_at(i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nounwind sspstrong uwtable
define internal noundef i32 @env_update_block_i(i64 noundef %0, i64 noundef %1, i64 %2) #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 %0, ptr %i.a, align 8, !tbaa !11
  %i.b = call i64 @rb_string_value(ptr noundef nonnull %i.a) #29 ; 0 uses
  %i.c = load volatile i64, ptr %i.a, align 8, !tbaa !11
  %i.d = call fastcc ptr @get_env_cstr(i64 noundef %i.c, ptr noundef nonnull @.str.116)
  %i.e = call fastcc noundef i64 @getenv_with_lock(ptr noundef %i.d) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.f = icmp eq i64 %i.e, 4
  br i1 %i.f, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = call i64 (i32, ...) @rb_yield_values(i32 noundef 3, i64 noundef %0, i64 noundef %i.e, i64 noundef %1) #29
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0 = phi i64 [ %1, %bb.a ], [ %i.g, %bb.b ]
  %i.h = call fastcc i64 @env_aset(i64 noundef %0, i64 noundef %.0) ; 0 uses
  ret i32 0
}

; Function Attrs: nounwind sspstrong uwtable
define internal noundef i32 @env_update_i(i64 noundef %0, i64 noundef %1, i64 %2) #0 {
bb.a:
  %i.a = tail call fastcc i64 @env_aset(i64 noundef %0, i64 noundef %1) ; 0 uses
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strncmp(ptr noundef captures(none), ptr noundef captures(none), i64 noundef) local_unnamed_addr #21

declare i64 @rb_check_string_type(i64 noundef) local_unnamed_addr #1

declare i64 @rb_str_new(ptr noundef, i64 noundef) local_unnamed_addr #1

declare i64 @rb_get_freeze_opt(i32 noundef, ptr noundef) local_unnamed_addr #1

declare i32 @rb_keyword_given_p() local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #26

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #27

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #27

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #28

attributes #0 = { nounwind sspstrong uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { inlinehint nounwind sspstrong uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(read, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { noreturn nounwind sspstrong uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nofree nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #17 = { noinline nounwind sspstrong uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { nofree norecurse nosync nounwind sspstrong memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { cold "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { inlinehint noreturn nounwind sspstrong uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #23 = { mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(write, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #24 = { cold noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #25 = { nofree nounwind memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #26 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #27 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #28 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #29 = { nounwind }
attributes #30 = { nounwind willreturn memory(read) }
attributes #31 = { noreturn nounwind }
attributes #32 = { cold nounwind }
attributes #33 = { noreturn }
attributes #34 = { nounwind willreturn memory(none) }
attributes #35 = { cold noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5}
!llvm.ident = !{!6}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!6 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!7 = !{!8, !8, i64 0}
!8 = !{!"int", !9, i64 0}
!9 = !{!"omnipotent char", !10, i64 0}
!10 = !{!"Simple C/C++ TBAA"}
!11 = !{!12, !12, i64 0}
!12 = !{!"long", !9, i64 0}
!13 = !{!14, !12, i64 0}
!14 = !{!"RBasic", !12, i64 0, !12, i64 8}
!15 = !{!14, !12, i64 8}
!16 = !{!17, !12, i64 16}
!17 = !{!"RSymbol", !14, i64 0, !12, i64 16, !12, i64 24, !12, i64 32}
!18 = !{ptr @obj_any_hash, ptr @objid_hash}
!19 = !{!20, !12, i64 0}
!20 = !{!"rb_callable_method_entry_struct", !12, i64 0, !12, i64 8, !21, i64 16, !12, i64 24, !12, i64 32}
!21 = !{!"p1 _ZTS27rb_method_definition_struct", !22, i64 0}
!22 = !{!"any pointer", !9, i64 0}
!23 = !{!20, !21, i64 16}
!24 = !{!9, !9, i64 0}
!25 = !{!20, !12, i64 8}
!26 = !{!27, !27, i64 0}
!27 = !{!"p1 _ZTS27rb_execution_context_struct", !22, i64 0}
!28 = distinct !{!28, !29}
!29 = !{!"llvm.loop.mustprogress"}
!30 = !{i64 0, i64 1, !24, i64 1, i64 1, !24, i64 2, i64 1, !24, i64 4, i64 4, !7, i64 8, i64 8, !31, i64 16, i64 8, !11, i64 24, i64 8, !33, i64 32, i64 8, !11, i64 40, i64 8, !11, i64 48, i64 8, !35}
!31 = !{!32, !32, i64 0}
!32 = !{!"p1 _ZTS12st_hash_type", !22, i64 0}
!33 = !{!34, !34, i64 0}
!34 = !{!"p1 long", !22, i64 0}
!35 = !{!36, !36, i64 0}
!36 = !{!"p1 _ZTS14st_table_entry", !22, i64 0}
!37 = !{!38, !34, i64 24}
!38 = !{!"st_table", !9, i64 0, !9, i64 1, !9, i64 2, !8, i64 4, !32, i64 8, !12, i64 16, !34, i64 24, !12, i64 32, !12, i64 40, !36, i64 48}
!39 = !{!38, !36, i64 48}
!40 = !{!41, !42, i64 0}
!41 = !{!"foreach_safe_arg", !42, i64 0, !22, i64 8, !12, i64 16}
!42 = !{!"p1 _ZTS8st_table", !22, i64 0}
!43 = !{!41, !22, i64 8}
!44 = !{!41, !12, i64 16}
!45 = !{!46, !12, i64 0}
!46 = !{!"ar_table_pair_struct", !12, i64 0, !12, i64 8}
!47 = !{!46, !12, i64 8}
!48 = distinct !{null, null, null}
!49 = distinct !{!49, !29}
!50 = distinct !{null, null}
!51 = !{!38, !12, i64 16}
!52 = !{!53, !12, i64 0}
!53 = !{!"hash_foreach_arg", !12, i64 0, !22, i64 8, !12, i64 16}
!54 = !{!53, !22, i64 8}
!55 = !{!53, !12, i64 16}
!56 = distinct !{null, null}
!57 = distinct !{!57, !29}
!58 = distinct !{!58, !29}
!59 = !{!60, !12, i64 16}
!60 = !{!"RHash", !14, i64 0, !12, i64 16}
!61 = distinct !{!61, !29}
!62 = distinct !{!62, !63}
!63 = !{!"llvm.loop.unroll.disable"}
!64 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!65 = distinct !{!65, !29}
!66 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!67 = !{!"branch_weights", i32 -2146410, i32 2146410}
!68 = !{!"branch_weights", i32 4001, i32 1}
!69 = !{i64 0, i64 8, !24, i64 8, i64 128, !24}
!70 = !{!38, !32, i64 8}
!71 = !{!72, !72, i64 0}
!72 = !{!"short", !9, i64 0}
!73 = !{!"branch_weights", i32 2146410443, i32 1073205}
!74 = !{!"branch_weights", !"expected", i32 -2147483648, i32 0}
!75 = !{!76, !12, i64 0}
!76 = !{!"update_arg", !12, i64 0, !22, i64 8, !12, i64 16, !12, i64 24, !12, i64 32}
!77 = !{!76, !22, i64 8}
!78 = !{!76, !12, i64 16}
!79 = !{!76, !12, i64 24}
!80 = !{!76, !12, i64 32}
!81 = distinct !{!81, !29}
!82 = distinct !{!82, !29}
!83 = !{!84, !12, i64 0}
!84 = !{!"update_func_arg", !12, i64 0, !12, i64 8, !22, i64 16}
!85 = !{!84, !22, i64 16}
!86 = !{!84, !12, i64 8}
!87 = distinct !{!87, !29}
!88 = !{!89, !89, i64 0}
!89 = !{!"p1 _ZTS16rb_ractor_struct", !22, i64 0}
!90 = distinct !{!90, !29}
!91 = !{i64 2156639167}
!92 = !{!93, !93, i64 0}
!93 = !{!"p2 omnipotent char", !94, i64 0}
!94 = !{!"any p2 pointer", !22, i64 0}
!95 = !{!96, !96, i64 0}
!96 = !{!"p1 omnipotent char", !22, i64 0}
!97 = distinct !{!97, !29}
!98 = distinct !{!98, !63}
!99 = distinct !{!99, !29}
!100 = distinct !{!100, !29}
!101 = !{!60, !12, i64 0}
!102 = !{!103, !12, i64 0}
!103 = !{!"transform_keys_args", !12, i64 0, !12, i64 8, !8, i64 16}
!104 = !{!103, !8, i64 16}
!105 = !{!103, !12, i64 8}
!106 = distinct !{!106, !29}
!107 = distinct !{!107, !29}
!108 = distinct !{!108, !29}
!109 = !{!110, !12, i64 0}
!110 = !{!"shift_var", !12, i64 0, !12, i64 8}
!111 = distinct !{!111, !29}
!112 = !{!110, !12, i64 8}
!113 = distinct !{!113, !29}
!114 = distinct !{!114, !29}
!115 = !{!116, !12, i64 0}
!116 = !{!"update_call_args", !12, i64 0, !12, i64 8, !34, i64 16, !8, i64 24, !117, i64 28, !117, i64 29}
!117 = !{!"_Bool", !9, i64 0}
!118 = !{!116, !12, i64 8}
!119 = !{!116, !34, i64 16}
!120 = !{!116, !8, i64 24}
!121 = !{!116, !117, i64 28}
!122 = !{!116, !117, i64 29}
!123 = !{!124, !22, i64 0}
!124 = !{!"st_hash_type", !22, i64 0, !22, i64 8}
!125 = !{!124, !22, i64 8}
!126 = !{!127, !42, i64 0}
!127 = !{!"assoc_arg", !42, i64 0, !12, i64 8}
!128 = !{!127, !12, i64 8}
!129 = !{!"branch_weights", i32 1073205, i32 2146410443}
!130 = distinct !{!130, !29}
!131 = distinct !{!131, !29}
!132 = distinct !{!132, !29}
!133 = distinct !{!133, !29}
!134 = distinct !{!134, !29}
!135 = distinct !{!135, !29}
!136 = distinct !{!136, !29}
!137 = distinct !{!137, !29}
!138 = !{i64 2156633902}
!139 = distinct !{!139, !29}
!140 = !{i64 2156636404}
!141 = distinct !{!141, !29}
!142 = !{i64 2156637733}
!143 = distinct !{!143, !29}
!144 = !{i64 2156645907}
!145 = distinct !{!145, !29}
!146 = distinct !{!146, !29}
!147 = distinct !{!147, !29}
!148 = !{!149, !12, i64 16}
!149 = !{!"RString", !14, i64 0, !12, i64 16, !9, i64 24}
!150 = distinct !{!150, !29}
!151 = distinct !{!151, !29}
!152 = distinct !{!152, !29}
!153 = !{i64 0, i64 8, !11, i64 8, i64 8, !11}
!154 = distinct !{!154, !29}
!155 = distinct !{!155, !29}
!156 = distinct !{null}
!157 = !{!158, !12, i64 8}
!158 = !{!"equal_data", !12, i64 0, !12, i64 8, !8, i64 16}
!159 = !{!158, !8, i64 16}
!160 = !{!158, !12, i64 0}
!161 = !{i8 0, i8 2}
!162 = !{}
!163 = distinct !{!163, !29}
!164 = !{!165, !8, i64 20}
!165 = !{!"OnigEncodingTypeST", !22, i64 0, !96, i64 8, !8, i64 16, !8, i64 20, !22, i64 24, !22, i64 32, !22, i64 40, !22, i64 48, !22, i64 56, !22, i64 64, !22, i64 72, !22, i64 80, !22, i64 88, !22, i64 96, !22, i64 104, !22, i64 112, !22, i64 120, !8, i64 128, !8, i64 132}
!166 = !{!165, !96, i64 8}
!167 = distinct !{!167, !29}
!168 = distinct !{!168, !29}
!169 = distinct !{!169, !29}
end_hunk_1
