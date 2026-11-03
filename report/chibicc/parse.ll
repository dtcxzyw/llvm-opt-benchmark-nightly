Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/chibicc/original/parse?download=true
begin_hunk_0
@.str.148 = private unnamed_addr constant [9 x i8] c"__func__\00", align 1
@.str.149 = private unnamed_addr constant [13 x i8] c"__FUNCTION__\00", align 1
@.str.150 = private unnamed_addr constant [23 x i8] c"parameter name omitted\00", align 1
@.str.151 = private unnamed_addr constant [24 x i8] c"use of undeclared label\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local ptr @new_cast(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 2 uses
  %i.c = alloca ptr, align 8                      ; 6 uses
  store ptr %0, ptr %i.a, align 8
  store ptr %1, ptr %i.b, align 8
  %i.d = load ptr, ptr %i.a, align 8
  call void @add_type(ptr noundef %i.d)
  %i.e = call noalias ptr @calloc(i64 noundef 1, i64 noundef 288) #8
  store ptr %i.e, ptr %i.c, align 8
  %i.f = load ptr, ptr %i.c, align 8
  %2 = getelementptr inbounds nuw %struct.Node, ptr %i.f, i32 0, i32 0
  store i32 43, ptr %2, align 16
  %i.g = load ptr, ptr %i.a, align 8
  %3 = getelementptr inbounds nuw %struct.Node, ptr %i.g, i32 0, i32 3
  %i.h = load ptr, ptr %3, align 8
  %i.i = load ptr, ptr %i.c, align 8
  %4 = getelementptr inbounds nuw %struct.Node, ptr %i.i, i32 0, i32 3
  store ptr %i.h, ptr %4, align 8
  %i.j = load ptr, ptr %i.a, align 8
  %i.k = load ptr, ptr %i.c, align 8
  %5 = getelementptr inbounds nuw %struct.Node, ptr %i.k, i32 0, i32 4
  store ptr %i.j, ptr %5, align 16
  %i.l = load ptr, ptr %i.b, align 8
  %i.m = call ptr @copy_type(ptr noundef %i.l)
  %i.n = load ptr, ptr %i.c, align 8
  %6 = getelementptr inbounds nuw %struct.Node, ptr %i.n, i32 0, i32 2
  store ptr %i.m, ptr %6, align 16
  %i.o = load ptr, ptr %i.c, align 8
  ret ptr %i.o
}

declare void @add_type(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #2

declare ptr @copy_type(ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @const_expr(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 2 uses
  %i.b = alloca ptr, align 8                      ; 2 uses
  %i.c = alloca ptr, align 8                      ; 2 uses
  store ptr %0, ptr %i.a, align 8
  store ptr %1, ptr %i.b, align 8
  %i.d = load ptr, ptr %i.a, align 8
  %i.e = load ptr, ptr %i.b, align 8
  %i.f = call ptr @conditional(ptr noundef %i.d, ptr noundef %i.e)
  store ptr %i.f, ptr %i.c, align 8
  %i.g = load ptr, ptr %i.c, align 8
  %i.h = call i64 @eval(ptr noundef %i.g)
  ret i64 %i.h
}

; Function Attrs: noinline nounwind optnone uwtable
define internal ptr @conditional(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %i.c = alloca ptr, align 8                      ; 19 uses
  %i.d = alloca ptr, align 8                      ; 6 uses
  %i.e = alloca ptr, align 8                      ; 4 uses
  %i.f = alloca ptr, align 8                      ; 2 uses
  %i.g = alloca ptr, align 8                      ; 5 uses
  %i.h = alloca ptr, align 8                      ; 5 uses
  store ptr %0, ptr %i.b, align 8
  store ptr %1, ptr %i.c, align 8
  %i.i = load ptr, ptr %i.c, align 8
  %i.j = call ptr @logor(ptr noundef %i.c, ptr noundef %i.i)
  store ptr %i.j, ptr %i.d, align 8
  %i.k = load ptr, ptr %i.c, align 8
  %i.l = call zeroext i1 @equal(ptr noundef %i.k, ptr noundef @.str.2)
  br i1 %i.l, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.m = load ptr, ptr %i.c, align 8
  %i.n = load ptr, ptr %i.b, align 8
  store ptr %i.m, ptr %i.n, align 8
  %i.o = load ptr, ptr %i.d, align 8
  store ptr %i.o, ptr %i.a, align 8
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.p = load ptr, ptr %i.c, align 8
  %2 = getelementptr inbounds nuw %struct.Token, ptr %i.p, i32 0, i32 1
  %i.q = load ptr, ptr %2, align 8
  %i.r = call zeroext i1 @equal(ptr noundef %i.q, ptr noundef @.str.3)
  br i1 %i.r, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.s = load ptr, ptr %i.d, align 8
  call void @add_type(ptr noundef %i.s)
  %i.t = load ptr, ptr %i.d, align 8
  %3 = getelementptr inbounds nuw %struct.Node, ptr %i.t, i32 0, i32 2
  %i.u = load ptr, ptr %3, align 16
  %i.v = call ptr @new_lvar(ptr noundef @.str.4, ptr noundef %i.u)
  store ptr %i.v, ptr %i.e, align 8
  %i.w = load ptr, ptr %i.e, align 8
  %i.x = load ptr, ptr %i.c, align 8
  %i.y = call ptr @new_var_node(ptr noundef %i.w, ptr noundef %i.x)
  %i.z = load ptr, ptr %i.d, align 8
  %i.aa = load ptr, ptr %i.c, align 8
  %i.ab = call ptr @new_binary(i32 noundef 16, ptr noundef %i.y, ptr noundef %i.z, ptr noundef %i.aa)
  store ptr %i.ab, ptr %i.f, align 8
  %i.ac = load ptr, ptr %i.c, align 8
  %i.ad = call ptr @new_node(i32 noundef 17, ptr noundef %i.ac)
  store ptr %i.ad, ptr %i.g, align 8
  %i.ae = load ptr, ptr %i.e, align 8
  %i.af = load ptr, ptr %i.c, align 8
  %i.ag = call ptr @new_var_node(ptr noundef %i.ae, ptr noundef %i.af)
  %i.ah = load ptr, ptr %i.g, align 8
  %4 = getelementptr inbounds nuw %struct.Node, ptr %i.ah, i32 0, i32 6
  store ptr %i.ag, ptr %4, align 16
  %i.ai = load ptr, ptr %i.e, align 8
  %i.aj = load ptr, ptr %i.c, align 8
  %i.ak = call ptr @new_var_node(ptr noundef %i.ai, ptr noundef %i.aj)
  %i.al = load ptr, ptr %i.g, align 8
  %5 = getelementptr inbounds nuw %struct.Node, ptr %i.al, i32 0, i32 7
  store ptr %i.ak, ptr %5, align 8
  %i.am = load ptr, ptr %i.b, align 8
  %i.an = load ptr, ptr %i.c, align 8
  %6 = getelementptr inbounds nuw %struct.Token, ptr %i.an, i32 0, i32 1
  %i.ao = load ptr, ptr %6, align 8
  %7 = getelementptr inbounds nuw %struct.Token, ptr %i.ao, i32 0, i32 1
  %i.ap = load ptr, ptr %7, align 8
  %i.aq = call ptr @conditional(ptr noundef %i.am, ptr noundef %i.ap)
  %i.ar = load ptr, ptr %i.g, align 8
  %8 = getelementptr inbounds nuw %struct.Node, ptr %i.ar, i32 0, i32 8
  store ptr %i.aq, ptr %8, align 16
  %i.as = load ptr, ptr %i.f, align 8
  %i.at = load ptr, ptr %i.g, align 8
  %i.au = load ptr, ptr %i.c, align 8
  %i.av = call ptr @new_binary(i32 noundef 18, ptr noundef %i.as, ptr noundef %i.at, ptr noundef %i.au)
  store ptr %i.av, ptr %i.a, align 8
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.aw = load ptr, ptr %i.c, align 8
  %i.ax = call ptr @new_node(i32 noundef 17, ptr noundef %i.aw)
  store ptr %i.ax, ptr %i.h, align 8
  %i.ay = load ptr, ptr %i.d, align 8
  %i.az = load ptr, ptr %i.h, align 8
  %9 = getelementptr inbounds nuw %struct.Node, ptr %i.az, i32 0, i32 6
  store ptr %i.ay, ptr %9, align 16
  %i.ba = load ptr, ptr %i.c, align 8
  %10 = getelementptr inbounds nuw %struct.Token, ptr %i.ba, i32 0, i32 1
  %i.bb = load ptr, ptr %10, align 8
  %i.bc = call ptr @expr(ptr noundef %i.c, ptr noundef %i.bb)
  %i.bd = load ptr, ptr %i.h, align 8
  %11 = getelementptr inbounds nuw %struct.Node, ptr %i.bd, i32 0, i32 7
  store ptr %i.bc, ptr %11, align 8
  %i.be = load ptr, ptr %i.c, align 8
  %i.bf = call ptr @skip(ptr noundef %i.be, ptr noundef @.str.3)
  store ptr %i.bf, ptr %i.c, align 8
  %i.bg = load ptr, ptr %i.b, align 8
  %i.bh = load ptr, ptr %i.c, align 8
  %i.bi = call ptr @conditional(ptr noundef %i.bg, ptr noundef %i.bh)
  %i.bj = load ptr, ptr %i.h, align 8
  %12 = getelementptr inbounds nuw %struct.Node, ptr %i.bj, i32 0, i32 8
  store ptr %i.bi, ptr %12, align 16
  %i.bk = load ptr, ptr %i.h, align 8
  store ptr %i.bk, ptr %i.a, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.b
  %i.bl = load ptr, ptr %i.a, align 8
  ret ptr %i.bl
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @eval(ptr noundef %0) unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 2 uses
  store ptr %0, ptr %i.a, align 8
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = call i64 @eval2(ptr noundef %i.b, ptr noundef null)
  ret i64 %i.c
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local ptr @parse(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 11 uses
  %1 = alloca %struct.VarAttr, align 4            ; 5 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %i.c = alloca ptr, align 8                      ; 6 uses
  store ptr %0, ptr %i.a, align 8
  call void @declare_builtin_functions()
  store ptr null, ptr @globals, align 8
  br label %bb.b

bb.b:                                             ; preds = %.backedge, %bb.a
  %i.d = load ptr, ptr %i.a, align 8
  %2 = getelementptr inbounds nuw %struct.Token, ptr %i.d, i32 0, i32 0
  %i.e = load i32, ptr %2, align 16
  %i.f = icmp ne i32 %i.e, 6
  br i1 %i.f, label %bb.c, label %bb.h

bb.c:                                             ; preds = %bb.b
  call void @llvm.memset.p0.i64(ptr align 4 %1, i8 0, i64 12, i1 false)
  %i.g = load ptr, ptr %i.a, align 8
  %i.h = call ptr @declspec(ptr noundef %i.a, ptr noundef %i.g, ptr noundef %1)
  store ptr %i.h, ptr %i.b, align 8
  %3 = getelementptr inbounds nuw %struct.VarAttr, ptr %1, i32 0, i32 0
  %i.i = load i8, ptr %3, align 4
  %i.j = icmp ne i8 %i.i, 0
  br i1 %i.j, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.k = load ptr, ptr %i.a, align 8
  %i.l = load ptr, ptr %i.b, align 8
  %i.m = call ptr @parse_typedef(ptr noundef %i.k, ptr noundef %i.l)
  store ptr %i.m, ptr %i.a, align 8
  br label %.backedge

.backedge:                                        ; preds = %bb.d, %bb.f, %bb.g
  br label %bb.b, !llvm.loop !9

bb.e:                                             ; preds = %bb.c
  %i.n = load ptr, ptr %i.a, align 8
  %i.o = call zeroext i1 @is_function(ptr noundef %i.n)
  br i1 %i.o, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.p = load ptr, ptr %i.a, align 8
  %i.q = load ptr, ptr %i.b, align 8
  %i.r = call ptr @function(ptr noundef %i.p, ptr noundef %i.q, ptr noundef %1)
  store ptr %i.r, ptr %i.a, align 8
  br label %.backedge

bb.g:                                             ; preds = %bb.e
  %i.s = load ptr, ptr %i.a, align 8
  %i.t = load ptr, ptr %i.b, align 8
  %i.u = call ptr @global_variable(ptr noundef %i.s, ptr noundef %i.t, ptr noundef %1)
  store ptr %i.u, ptr %i.a, align 8
  br label %.backedge

bb.h:                                             ; preds = %bb.b
  %i.v = load ptr, ptr @globals, align 8
  store ptr %i.v, ptr %i.c, align 8
  br label %bb.i

bb.i:                                             ; preds = %bb.m, %bb.h
  %i.w = load ptr, ptr %i.c, align 8
  %i.x = icmp ne ptr %i.w, null
  br i1 %i.x, label %bb.j, label %bb.n

bb.j:                                             ; preds = %bb.i
  %i.y = load ptr, ptr %i.c, align 8
  %4 = getelementptr inbounds nuw %struct.Obj, ptr %i.y, i32 0, i32 22
  %i.z = load i8, ptr %4, align 1
  %i.aa = icmp ne i8 %i.z, 0
  br i1 %i.aa, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ab = load ptr, ptr %i.c, align 8
  call void @mark_live(ptr noundef %i.ab)
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  br label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ac = load ptr, ptr %i.c, align 8
  %5 = getelementptr inbounds nuw %struct.Obj, ptr %i.ac, i32 0, i32 0
  %i.ad = load ptr, ptr %5, align 8
  store ptr %i.ad, ptr %i.c, align 8
  br label %bb.i, !llvm.loop !10

bb.n:                                             ; preds = %bb.i
  call void @scan_globals()
  %i.ae = load ptr, ptr @globals, align 8
  ret ptr %i.ae
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @declare_builtin_functions() unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 3 uses
  %i.b = load ptr, ptr @ty_void, align 8
  %i.c = call ptr @pointer_to(ptr noundef %i.b)
  %i.d = call ptr @func_type(ptr noundef %i.c)
  store ptr %i.d, ptr %i.a, align 8
  %i.e = load ptr, ptr @ty_int, align 8
  %i.f = call ptr @copy_type(ptr noundef %i.e)
  %i.g = load ptr, ptr %i.a, align 8
  %0 = getelementptr inbounds nuw %struct.Type, ptr %i.g, i32 0, i32 16
  store ptr %i.f, ptr %0, align 8
  %i.h = load ptr, ptr %i.a, align 8
  %i.i = call ptr @new_gvar(ptr noundef @.str.130, ptr noundef %i.h)
  store ptr %i.i, ptr @builtin_alloca, align 8
  %i.j = load ptr, ptr @builtin_alloca, align 8
  %1 = getelementptr inbounds nuw %struct.Obj, ptr %i.j, i32 0, i32 8
  store i8 0, ptr %1, align 1
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #3

; Function Attrs: noinline nounwind optnone uwtable
define internal ptr @declspec(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 2 uses
  %i.b = alloca ptr, align 8                      ; 84 uses
  %i.c = alloca ptr, align 8                      ; 15 uses
  %i.d = alloca ptr, align 8                      ; 24 uses
  %i.e = alloca i32, align 4                      ; 25 uses
  %i.f = alloca i8, align 1                       ; 3 uses
  %i.g = alloca ptr, align 8                      ; 3 uses
  store ptr %0, ptr %i.a, align 8
  store ptr %1, ptr %i.b, align 8
  store ptr %2, ptr %i.c, align 8
  %i.h = load ptr, ptr @ty_int, align 8
  store ptr %i.h, ptr %i.d, align 8
  store i32 0, ptr %i.e, align 4
  store i8 0, ptr %i.f, align 1
  br label %bb.b

bb.b:                                             ; preds = %.backedge, %bb.a
  %i.i = load ptr, ptr %i.b, align 8
  %i.j = call zeroext i1 @is_typename(ptr noundef %i.i)
  br i1 %i.j, label %bb.c, label %.loopexit

bb.c:                                             ; preds = %bb.b
  %i.k = load ptr, ptr %i.b, align 8
  %i.l = call zeroext i1 @equal(ptr noundef %i.k, ptr noundef @.str.34)
  br i1 %i.l, label %bb.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = load ptr, ptr %i.b, align 8
  %i.n = call zeroext i1 @equal(ptr noundef %i.m, ptr noundef @.str.36)
  br i1 %i.n, label %bb.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = load ptr, ptr %i.b, align 8
  %i.p = call zeroext i1 @equal(ptr noundef %i.o, ptr noundef @.str.37)
  br i1 %i.p, label %bb.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.q = load ptr, ptr %i.b, align 8
  %i.r = call zeroext i1 @equal(ptr noundef %i.q, ptr noundef @.str.52)
  br i1 %i.r, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.s = load ptr, ptr %i.b, align 8
  %i.t = call zeroext i1 @equal(ptr noundef %i.s, ptr noundef @.str.53)
  br i1 %i.t, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.u = load ptr, ptr %i.b, align 8
  %i.v = call zeroext i1 @equal(ptr noundef %i.u, ptr noundef @.str.54)
  br i1 %i.v, label %bb.i, label %bb.aa

bb.i:                                             ; preds = %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c
  %i.w = load ptr, ptr %i.c, align 8
  %i.x = icmp ne ptr %i.w, null
  br i1 %i.x, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.y = load ptr, ptr %i.b, align 8
  call void (ptr, ptr, ...) @error_tok(ptr noundef %i.y, ptr noundef @.str.131) #9
  unreachable

bb.k:                                             ; preds = %bb.i
  %i.z = load ptr, ptr %i.b, align 8
  %i.aa = call zeroext i1 @equal(ptr noundef %i.z, ptr noundef @.str.34)
  br i1 %i.aa, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.ab = load ptr, ptr %i.c, align 8
  %3 = getelementptr inbounds nuw %struct.VarAttr, ptr %i.ab, i32 0, i32 0
  store i8 1, ptr %3, align 4
  br label %bb.w

bb.m:                                             ; preds = %bb.k
  %i.ac = load ptr, ptr %i.b, align 8
  %i.ad = call zeroext i1 @equal(ptr noundef %i.ac, ptr noundef @.str.36)
  br i1 %i.ad, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.ae = load ptr, ptr %i.c, align 8
  %4 = getelementptr inbounds nuw %struct.VarAttr, ptr %i.ae, i32 0, i32 1
  store i8 1, ptr %4, align 1
  br label %bb.v

bb.o:                                             ; preds = %bb.m
  %i.af = load ptr, ptr %i.b, align 8
  %i.ag = call zeroext i1 @equal(ptr noundef %i.af, ptr noundef @.str.37)
  br i1 %i.ag, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.ah = load ptr, ptr %i.c, align 8
  %5 = getelementptr inbounds nuw %struct.VarAttr, ptr %i.ah, i32 0, i32 2
  store i8 1, ptr %5, align 2
  br label %bb.u

bb.q:                                             ; preds = %bb.o
  %i.ai = load ptr, ptr %i.b, align 8
  %i.aj = call zeroext i1 @equal(ptr noundef %i.ai, ptr noundef @.str.52)
  br i1 %i.aj, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.ak = load ptr, ptr %i.c, align 8
  %6 = getelementptr inbounds nuw %struct.VarAttr, ptr %i.ak, i32 0, i32 3
  store i8 1, ptr %6, align 1
  br label %bb.t

bb.s:                                             ; preds = %bb.q
  %i.al = load ptr, ptr %i.c, align 8
  %7 = getelementptr inbounds nuw %struct.VarAttr, ptr %i.al, i32 0, i32 4
  store i8 1, ptr %7, align 4
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.p
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.n
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.l
  %i.am = load ptr, ptr %i.c, align 8
  %8 = getelementptr inbounds nuw %struct.VarAttr, ptr %i.am, i32 0, i32 0
  %i.an = load i8, ptr %8, align 4
  %i.ao = icmp ne i8 %i.an, 0
  br i1 %i.ao, label %bb.x, label %bb.z

bb.x:                                             ; preds = %bb.w
  %i.ap = load ptr, ptr %i.c, align 8
  %9 = getelementptr inbounds nuw %struct.VarAttr, ptr %i.ap, i32 0, i32 1
  %i.aq = load i8, ptr %9, align 1
  %i.ar = icmp ne i8 %i.aq, 0
  %i.as = zext i1 %i.ar to i32
  %i.at = load ptr, ptr %i.c, align 8
  %10 = getelementptr inbounds nuw %struct.VarAttr, ptr %i.at, i32 0, i32 2
  %i.au = load i8, ptr %10, align 2
  %i.av = icmp ne i8 %i.au, 0
  %i.aw = zext i1 %i.av to i32
  %i.ax = add nuw nsw i32 %i.as, %i.aw
  %i.ay = load ptr, ptr %i.c, align 8
  %11 = getelementptr inbounds nuw %struct.VarAttr, ptr %i.ay, i32 0, i32 3
  %i.az = load i8, ptr %11, align 1
  %i.ba = icmp ne i8 %i.az, 0
  %i.bb = zext i1 %i.ba to i32
  %i.bc = add nuw nsw i32 %i.ax, %i.bb
  %i.bd = load ptr, ptr %i.c, align 8
  %12 = getelementptr inbounds nuw %struct.VarAttr, ptr %i.bd, i32 0, i32 4
  %i.be = load i8, ptr %12, align 4
  %i.bf = icmp ne i8 %i.be, 0
  %i.bg = zext i1 %i.bf to i32
  %i.bh = add nuw nsw i32 %i.bc, %i.bg
  %i.bi = icmp sgt i32 %i.bh, 1
  br i1 %i.bi, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.bj = load ptr, ptr %i.b, align 8
  call void (ptr, ptr, ...) @error_tok(ptr noundef %i.bj, ptr noundef @.str.132) #9
  unreachable

bb.z:                                             ; preds = %bb.x, %bb.w
  %i.bk = load ptr, ptr %i.b, align 8
  %13 = getelementptr inbounds nuw %struct.Token, ptr %i.bk, i32 0, i32 1
  %i.bl = load ptr, ptr %13, align 8
  store ptr %i.bl, ptr %i.b, align 8
  br label %.backedge

.backedge:                                        ; preds = %bb.z, %bb.ai, %bb.am, %bb.at, %bb.bn, %bb.dh
  br label %bb.b, !llvm.loop !11

bb.aa:                                            ; preds = %bb.h
  %i.bm = load ptr, ptr %i.b, align 8
  %i.bn = call zeroext i1 @consume(ptr noundef %i.b, ptr noundef %i.bm, ptr noundef @.str.41)
  br i1 %i.bn, label %bb.ai, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.bo = load ptr, ptr %i.b, align 8
  %i.bp = call zeroext i1 @consume(ptr noundef %i.b, ptr noundef %i.bo, ptr noundef @.str.42)
  br i1 %i.bp, label %bb.ai, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.bq = load ptr, ptr %i.b, align 8
  %i.br = call zeroext i1 @consume(ptr noundef %i.b, ptr noundef %i.bq, ptr noundef @.str.43)
  br i1 %i.br, label %bb.ai, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.bs = load ptr, ptr %i.b, align 8
  %i.bt = call zeroext i1 @consume(ptr noundef %i.b, ptr noundef %i.bs, ptr noundef @.str.44)
  br i1 %i.bt, label %bb.ai, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.bu = load ptr, ptr %i.b, align 8
  %i.bv = call zeroext i1 @consume(ptr noundef %i.b, ptr noundef %i.bu, ptr noundef @.str.45)
  br i1 %i.bv, label %bb.ai, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.bw = load ptr, ptr %i.b, align 8
  %i.bx = call zeroext i1 @consume(ptr noundef %i.b, ptr noundef %i.bw, ptr noundef @.str.46)
  br i1 %i.bx, label %bb.ai, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.by = load ptr, ptr %i.b, align 8
  %i.bz = call zeroext i1 @consume(ptr noundef %i.b, ptr noundef %i.by, ptr noundef @.str.47)
  br i1 %i.bz, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.ca = load ptr, ptr %i.b, align 8
  %i.cb = call zeroext i1 @consume(ptr noundef %i.b, ptr noundef %i.ca, ptr noundef @.str.48)
  br i1 %i.cb, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah, %bb.ag, %bb.af, %bb.ae, %bb.ad, %bb.ac, %bb.ab, %bb.aa
  br label %.backedge

bb.aj:                                            ; preds = %bb.ah
  %i.cc = load ptr, ptr %i.b, align 8
  %i.cd = call zeroext i1 @equal(ptr noundef %i.cc, ptr noundef @.str.55)
  br i1 %i.cd, label %bb.ak, label %bb.an

bb.ak:                                            ; preds = %bb.aj
  %i.ce = load ptr, ptr %i.b, align 8
  %14 = getelementptr inbounds nuw %struct.Token, ptr %i.ce, i32 0, i32 1
  %i.cf = load ptr, ptr %14, align 8
  store ptr %i.cf, ptr %i.b, align 8
  %i.cg = load ptr, ptr %i.b, align 8
  %i.ch = call zeroext i1 @equal(ptr noundef %i.cg, ptr noundef @.str.23)
  br i1 %i.ch, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
  %i.ci = load ptr, ptr %i.b, align 8
  %15 = getelementptr inbounds nuw %struct.Token, ptr %i.ci, i32 0, i32 1
  %i.cj = load ptr, ptr %15, align 8
  %i.ck = call ptr @typename(ptr noundef %i.b, ptr noundef %i.cj)
  store ptr %i.ck, ptr %i.d, align 8
  %i.cl = load ptr, ptr %i.b, align 8
  %i.cm = call ptr @skip(ptr noundef %i.cl, ptr noundef @.str.24)
  store ptr %i.cm, ptr %i.b, align 8
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.ak
  store i8 1, ptr %i.f, align 1
  br label %.backedge

bb.an:                                            ; preds = %bb.aj
  %i.cn = load ptr, ptr %i.b, align 8
  %i.co = call zeroext i1 @equal(ptr noundef %i.cn, ptr noundef @.str.38)
  br i1 %i.co, label %bb.ao, label %bb.au

bb.ao:                                            ; preds = %bb.an
  %i.cp = load ptr, ptr %i.c, align 8
  %i.cq = icmp ne ptr %i.cp, null
  br i1 %i.cq, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.cr = load ptr, ptr %i.b, align 8
  call void (ptr, ptr, ...) @error_tok(ptr noundef %i.cr, ptr noundef @.str.133) #9
  unreachable

bb.aq:                                            ; preds = %bb.ao
  %i.cs = load ptr, ptr %i.b, align 8
  %16 = getelementptr inbounds nuw %struct.Token, ptr %i.cs, i32 0, i32 1
  %i.ct = load ptr, ptr %16, align 8
  %i.cu = call ptr @skip(ptr noundef %i.ct, ptr noundef @.str.23)
  store ptr %i.cu, ptr %i.b, align 8
  %i.cv = load ptr, ptr %i.b, align 8
  %i.cw = call zeroext i1 @is_typename(ptr noundef %i.cv)
  br i1 %i.cw, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %bb.aq
  %i.cx = load ptr, ptr %i.b, align 8
  %i.cy = call ptr @typename(ptr noundef %i.b, ptr noundef %i.cx)
  %17 = getelementptr inbounds nuw %struct.Type, ptr %i.cy, i32 0, i32 2
  %i.cz = load i32, ptr %17, align 8
  %i.da = load ptr, ptr %i.c, align 8
  %18 = getelementptr inbounds nuw %struct.VarAttr, ptr %i.da, i32 0, i32 5
  store i32 %i.cz, ptr %18, align 4
  br label %bb.at

bb.as:                                            ; preds = %bb.aq
  %i.db = load ptr, ptr %i.b, align 8
  %i.dc = call i64 @const_expr(ptr noundef %i.b, ptr noundef %i.db)
  %i.dd = trunc i64 %i.dc to i32
  %i.de = load ptr, ptr %i.c, align 8
  %19 = getelementptr inbounds nuw %struct.VarAttr, ptr %i.de, i32 0, i32 5
  store i32 %i.dd, ptr %19, align 4
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %bb.ar
  %i.df = load ptr, ptr %i.b, align 8
  %i.dg = call ptr @skip(ptr noundef %i.df, ptr noundef @.str.24)
  store ptr %i.dg, ptr %i.b, align 8
  br label %.backedge

bb.au:                                            ; preds = %bb.an
  %i.dh = load ptr, ptr %i.b, align 8
  %i.di = call ptr @find_typedef(ptr noundef %i.dh)
  store ptr %i.di, ptr %i.g, align 8
  %i.dj = load ptr, ptr %i.b, align 8
  %i.dk = call zeroext i1 @equal(ptr noundef %i.dj, ptr noundef @.str.32)
  br i1 %i.dk, label %bb.az, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.dl = load ptr, ptr %i.b, align 8
  %i.dm = call zeroext i1 @equal(ptr noundef %i.dl, ptr noundef @.str.33)
  br i1 %i.dm, label %bb.az, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.dn = load ptr, ptr %i.b, align 8
  %i.do = call zeroext i1 @equal(ptr noundef %i.dn, ptr noundef @.str.35)
  br i1 %i.do, label %bb.az, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.dp = load ptr, ptr %i.b, align 8
  %i.dq = call zeroext i1 @equal(ptr noundef %i.dp, ptr noundef @.str.51)
  br i1 %i.dq, label %bb.az, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.dr = load ptr, ptr %i.g, align 8
  %i.ds = icmp ne ptr %i.dr, null
  br i1 %i.ds, label %bb.az, label %bb.bo

bb.az:                                            ; preds = %bb.ay, %bb.ax, %bb.aw, %bb.av, %bb.au
  %i.dt = load i32, ptr %i.e, align 4
  %i.du = icmp ne i32 %i.dt, 0
  br i1 %i.du, label %bb.ba, label %bb.bb

bb.ba:                                            ; preds = %bb.az
  br label %bb.di

bb.bb:                                            ; preds = %bb.az
  %i.dv = load ptr, ptr %i.b, align 8
  %i.dw = call zeroext i1 @equal(ptr noundef %i.dv, ptr noundef @.str.32)
  br i1 %i.dw, label %bb.bc, label %bb.bd

bb.bc:                                            ; preds = %bb.bb
  %i.dx = load ptr, ptr %i.b, align 8
  %20 = getelementptr inbounds nuw %struct.Token, ptr %i.dx, i32 0, i32 1
  %i.dy = load ptr, ptr %20, align 8
  %i.dz = call ptr @struct_decl(ptr noundef %i.b, ptr noundef %i.dy)
  store ptr %i.dz, ptr %i.d, align 8
  br label %bb.bn

bb.bd:                                            ; preds = %bb.bb
  %i.ea = load ptr, ptr %i.b, align 8
  %i.eb = call zeroext i1 @equal(ptr noundef %i.ea, ptr noundef @.str.33)
  br i1 %i.eb, label %bb.be, label %bb.bf

bb.be:                                            ; preds = %bb.bd
  %i.ec = load ptr, ptr %i.b, align 8
  %21 = getelementptr inbounds nuw %struct.Token, ptr %i.ec, i32 0, i32 1
  %i.ed = load ptr, ptr %21, align 8
  %i.ee = call ptr @union_decl(ptr noundef %i.b, ptr noundef %i.ed)
  store ptr %i.ee, ptr %i.d, align 8
  br label %bb.bm

bb.bf:                                            ; preds = %bb.bd
  %i.ef = load ptr, ptr %i.b, align 8
  %i.eg = call zeroext i1 @equal(ptr noundef %i.ef, ptr noundef @.str.35)
  br i1 %i.eg, label %bb.bg, label %bb.bh

bb.bg:                                            ; preds = %bb.bf
  %i.eh = load ptr, ptr %i.b, align 8
  %22 = getelementptr inbounds nuw %struct.Token, ptr %i.eh, i32 0, i32 1
  %i.ei = load ptr, ptr %22, align 8
  %i.ej = call ptr @enum_specifier(ptr noundef %i.b, ptr noundef %i.ei)
  store ptr %i.ej, ptr %i.d, align 8
  br label %bb.bl

bb.bh:                                            ; preds = %bb.bf
  %i.ek = load ptr, ptr %i.b, align 8
  %i.el = call zeroext i1 @equal(ptr noundef %i.ek, ptr noundef @.str.51)
  br i1 %i.el, label %bb.bi, label %bb.bj

bb.bi:                                            ; preds = %bb.bh
  %i.em = load ptr, ptr %i.b, align 8
  %23 = getelementptr inbounds nuw %struct.Token, ptr %i.em, i32 0, i32 1
  %i.en = load ptr, ptr %23, align 8
  %i.eo = call ptr @typeof_specifier(ptr noundef %i.b, ptr noundef %i.en)
  store ptr %i.eo, ptr %i.d, align 8
  br label %bb.bk

bb.bj:                                            ; preds = %bb.bh
  %i.ep = load ptr, ptr %i.g, align 8
  store ptr %i.ep, ptr %i.d, align 8
  %i.eq = load ptr, ptr %i.b, align 8
  %24 = getelementptr inbounds nuw %struct.Token, ptr %i.eq, i32 0, i32 1
  %i.er = load ptr, ptr %24, align 8
  store ptr %i.er, ptr %i.b, align 8
  br label %bb.bk

bb.bk:                                            ; preds = %bb.bj, %bb.bi
  br label %bb.bl

bb.bl:                                            ; preds = %bb.bk, %bb.bg
  br label %bb.bm

bb.bm:                                            ; preds = %bb.bl, %bb.be
  br label %bb.bn

bb.bn:                                            ; preds = %bb.bm, %bb.bc
  %i.es = load i32, ptr %i.e, align 4
  %i.et = add nsw i32 %i.es, 65536
  store i32 %i.et, ptr %i.e, align 4
  br label %.backedge

bb.bo:                                            ; preds = %bb.ay
  %i.eu = load ptr, ptr %i.b, align 8
  %i.ev = call zeroext i1 @equal(ptr noundef %i.eu, ptr noundef @.str.26)
  br i1 %i.ev, label %bb.bp, label %bb.bq

bb.bp:                                            ; preds = %bb.bo
  %i.ew = load i32, ptr %i.e, align 4
  %i.ex = add nsw i32 %i.ew, 1
  store i32 %i.ex, ptr %i.e, align 4
  br label %bb.cs

bb.bq:                                            ; preds = %bb.bo
  %i.ey = load ptr, ptr %i.b, align 8
  %i.ez = call zeroext i1 @equal(ptr noundef %i.ey, ptr noundef @.str.27)
  br i1 %i.ez, label %bb.br, label %bb.bs

bb.br:                                            ; preds = %bb.bq
  %i.fa = load i32, ptr %i.e, align 4
  %i.fb = add nsw i32 %i.fa, 4
  store i32 %i.fb, ptr %i.e, align 4
  br label %bb.cr

bb.bs:                                            ; preds = %bb.bq
  %i.fc = load ptr, ptr %i.b, align 8
  %i.fd = call zeroext i1 @equal(ptr noundef %i.fc, ptr noundef @.str.28)
  br i1 %i.fd, label %bb.bt, label %bb.bu

bb.bt:                                            ; preds = %bb.bs
  %i.fe = load i32, ptr %i.e, align 4
  %i.ff = add nsw i32 %i.fe, 16
  store i32 %i.ff, ptr %i.e, align 4
  br label %bb.cq

bb.bu:                                            ; preds = %bb.bs
  %i.fg = load ptr, ptr %i.b, align 8
  %i.fh = call zeroext i1 @equal(ptr noundef %i.fg, ptr noundef @.str.29)
  br i1 %i.fh, label %bb.bv, label %bb.bw

bb.bv:                                            ; preds = %bb.bu
  %i.fi = load i32, ptr %i.e, align 4
  %i.fj = add nsw i32 %i.fi, 64
  store i32 %i.fj, ptr %i.e, align 4
  br label %bb.cp

bb.bw:                                            ; preds = %bb.bu
  %i.fk = load ptr, ptr %i.b, align 8
  %i.fl = call zeroext i1 @equal(ptr noundef %i.fk, ptr noundef @.str.30)
  br i1 %i.fl, label %bb.bx, label %bb.by

bb.bx:                                            ; preds = %bb.bw
  %i.fm = load i32, ptr %i.e, align 4
  %i.fn = add nsw i32 %i.fm, 256
  store i32 %i.fn, ptr %i.e, align 4
  br label %bb.co

bb.by:                                            ; preds = %bb.bw
  %i.fo = load ptr, ptr %i.b, align 8
  %i.fp = call zeroext i1 @equal(ptr noundef %i.fo, ptr noundef @.str.31)
  br i1 %i.fp, label %bb.bz, label %bb.ca

bb.bz:                                            ; preds = %bb.by
  %i.fq = load i32, ptr %i.e, align 4
  %i.fr = add nsw i32 %i.fq, 1024
  store i32 %i.fr, ptr %i.e, align 4
  br label %bb.cn

bb.ca:                                            ; preds = %bb.by
  %i.fs = load ptr, ptr %i.b, align 8
  %i.ft = call zeroext i1 @equal(ptr noundef %i.fs, ptr noundef @.str.49)
  br i1 %i.ft, label %bb.cb, label %bb.cc

bb.cb:                                            ; preds = %bb.ca
  %i.fu = load i32, ptr %i.e, align 4
  %i.fv = add nsw i32 %i.fu, 4096
  store i32 %i.fv, ptr %i.e, align 4
  br label %bb.cm

bb.cc:                                            ; preds = %bb.ca
  %i.fw = load ptr, ptr %i.b, align 8
  %i.fx = call zeroext i1 @equal(ptr noundef %i.fw, ptr noundef @.str.50)
  br i1 %i.fx, label %bb.cd, label %bb.ce

bb.cd:                                            ; preds = %bb.cc
  %i.fy = load i32, ptr %i.e, align 4
  %i.fz = add nsw i32 %i.fy, 16384
  store i32 %i.fz, ptr %i.e, align 4
  br label %bb.cl

bb.ce:                                            ; preds = %bb.cc
  %i.ga = load ptr, ptr %i.b, align 8
  %i.gb = call zeroext i1 @equal(ptr noundef %i.ga, ptr noundef @.str.39)
  br i1 %i.gb, label %bb.cf, label %bb.cg

bb.cf:                                            ; preds = %bb.ce
  %i.gc = load i32, ptr %i.e, align 4
  %i.gd = or i32 %i.gc, 131072
  store i32 %i.gd, ptr %i.e, align 4
  br label %bb.ck

bb.cg:                                            ; preds = %bb.ce
  %i.ge = load ptr, ptr %i.b, align 8
  %i.gf = call zeroext i1 @equal(ptr noundef %i.ge, ptr noundef @.str.40)
  br i1 %i.gf, label %bb.ch, label %bb.ci

bb.ch:                                            ; preds = %bb.cg
  %i.gg = load i32, ptr %i.e, align 4
  %i.gh = or i32 %i.gg, 262144
  store i32 %i.gh, ptr %i.e, align 4
  br label %bb.cj

bb.ci:                                            ; preds = %bb.cg
  call void (ptr, ...) @error(ptr noundef @.str.70, ptr noundef @.str.71, i32 noundef 506) #9
  unreachable

bb.cj:                                            ; preds = %bb.ch
  br label %bb.ck

bb.ck:                                            ; preds = %bb.cj, %bb.cf
  br label %bb.cl

bb.cl:                                            ; preds = %bb.ck, %bb.cd
  br label %bb.cm

bb.cm:                                            ; preds = %bb.cl, %bb.cb
  br label %bb.cn

bb.cn:                                            ; preds = %bb.cm, %bb.bz
  br label %bb.co

bb.co:                                            ; preds = %bb.cn, %bb.bx
  br label %bb.cp

bb.cp:                                            ; preds = %bb.co, %bb.bv
  br label %bb.cq

bb.cq:                                            ; preds = %bb.cp, %bb.bt
  br label %bb.cr

bb.cr:                                            ; preds = %bb.cq, %bb.br
  br label %bb.cs

bb.cs:                                            ; preds = %bb.cr, %bb.bp
  %i.gi = load i32, ptr %i.e, align 4
  switch i32 %i.gi, label %bb.dg [
    i32 1, label %bb.ct
    i32 4, label %bb.cu
    i32 16, label %bb.cv
    i32 131088, label %bb.cv
    i32 262160, label %bb.cw
    i32 64, label %bb.cx
    i32 320, label %bb.cx
    i32 131136, label %bb.cx
    i32 131392, label %bb.cx
    i32 262208, label %bb.cy
    i32 262464, label %bb.cy
    i32 256, label %bb.cz
    i32 131072, label %bb.cz
    i32 131328, label %bb.cz
    i32 262144, label %bb.da
    i32 262400, label %bb.da
    i32 1024, label %bb.db
    i32 1280, label %bb.db
    i32 2048, label %bb.db
    i32 2304, label %bb.db
    i32 132096, label %bb.db
    i32 132352, label %bb.db
    i32 133120, label %bb.db
    i32 133376, label %bb.db
    i32 263168, label %bb.dc
    i32 263424, label %bb.dc
    i32 264192, label %bb.dc
    i32 264448, label %bb.dc
    i32 4096, label %bb.dd
    i32 16384, label %bb.de
    i32 17408, label %bb.df
  ]

bb.ct:                                            ; preds = %bb.cs
  %i.gj = load ptr, ptr @ty_void, align 8
  store ptr %i.gj, ptr %i.d, align 8
  br label %bb.dh

bb.cu:                                            ; preds = %bb.cs
  %i.gk = load ptr, ptr @ty_bool, align 8
  store ptr %i.gk, ptr %i.d, align 8
  br label %bb.dh

bb.cv:                                            ; preds = %bb.cs, %bb.cs
  %i.gl = load ptr, ptr @ty_char, align 8
  store ptr %i.gl, ptr %i.d, align 8
  br label %bb.dh

bb.cw:                                            ; preds = %bb.cs
  %i.gm = load ptr, ptr @ty_uchar, align 8
  store ptr %i.gm, ptr %i.d, align 8
  br label %bb.dh

bb.cx:                                            ; preds = %bb.cs, %bb.cs, %bb.cs, %bb.cs
  %i.gn = load ptr, ptr @ty_short, align 8
  store ptr %i.gn, ptr %i.d, align 8
  br label %bb.dh

bb.cy:                                            ; preds = %bb.cs, %bb.cs
  %i.go = load ptr, ptr @ty_ushort, align 8
  store ptr %i.go, ptr %i.d, align 8
  br label %bb.dh

bb.cz:                                            ; preds = %bb.cs, %bb.cs, %bb.cs
  %i.gp = load ptr, ptr @ty_int, align 8
  store ptr %i.gp, ptr %i.d, align 8
  br label %bb.dh

bb.da:                                            ; preds = %bb.cs, %bb.cs
  %i.gq = load ptr, ptr @ty_uint, align 8
  store ptr %i.gq, ptr %i.d, align 8
  br label %bb.dh

bb.db:                                            ; preds = %bb.cs, %bb.cs, %bb.cs, %bb.cs, %bb.cs, %bb.cs, %bb.cs, %bb.cs
  %i.gr = load ptr, ptr @ty_long, align 8
  store ptr %i.gr, ptr %i.d, align 8
  br label %bb.dh

bb.dc:                                            ; preds = %bb.cs, %bb.cs, %bb.cs, %bb.cs
  %i.gs = load ptr, ptr @ty_ulong, align 8
  store ptr %i.gs, ptr %i.d, align 8
  br label %bb.dh

bb.dd:                                            ; preds = %bb.cs
  %i.gt = load ptr, ptr @ty_float, align 8
  store ptr %i.gt, ptr %i.d, align 8
  br label %bb.dh

bb.de:                                            ; preds = %bb.cs
  %i.gu = load ptr, ptr @ty_double, align 8
  store ptr %i.gu, ptr %i.d, align 8
  br label %bb.dh

bb.df:                                            ; preds = %bb.cs
  %i.gv = load ptr, ptr @ty_ldouble, align 8
  store ptr %i.gv, ptr %i.d, align 8
  br label %bb.dh

bb.dg:                                            ; preds = %bb.cs
  %i.gw = load ptr, ptr %i.b, align 8
  call void (ptr, ptr, ...) @error_tok(ptr noundef %i.gw, ptr noundef @.str.134) #9
  unreachable

bb.dh:                                            ; preds = %bb.df, %bb.de, %bb.dd, %bb.dc, %bb.db, %bb.da, %bb.cz, %bb.cy, %bb.cx, %bb.cw, %bb.cv, %bb.cu, %bb.ct
  %i.gx = load ptr, ptr %i.b, align 8
  %25 = getelementptr inbounds nuw %struct.Token, ptr %i.gx, i32 0, i32 1
  %i.gy = load ptr, ptr %25, align 8
  store ptr %i.gy, ptr %i.b, align 8
  br label %.backedge

.loopexit:                                        ; preds = %bb.b
  br label %bb.di

bb.di:                                            ; preds = %.loopexit, %bb.ba
  %i.gz = load i8, ptr %i.f, align 1
  %i.ha = icmp ne i8 %i.gz, 0
  br i1 %i.ha, label %bb.dj, label %bb.dk

bb.dj:                                            ; preds = %bb.di
  %i.hb = load ptr, ptr %i.d, align 8
  %i.hc = call ptr @copy_type(ptr noundef %i.hb)
  store ptr %i.hc, ptr %i.d, align 8
  %i.hd = load ptr, ptr %i.d, align 8
  %26 = getelementptr inbounds nuw %struct.Type, ptr %i.hd, i32 0, i32 4
  store i8 1, ptr %26, align 1
  br label %bb.dk

bb.dk:                                            ; preds = %bb.dj, %bb.di
  %i.he = load ptr, ptr %i.b, align 8
  %i.hf = load ptr, ptr %i.a, align 8
  store ptr %i.he, ptr %i.hf, align 8
  %i.hg = load ptr, ptr %i.d, align 8
  ret ptr %i.hg
}

; Function Attrs: noinline nounwind optnone uwtable
define internal ptr @parse_typedef(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 8 uses
  %i.b = alloca ptr, align 8                      ; 2 uses
  %i.c = alloca i8, align 1                       ; 3 uses
  %i.d = alloca ptr, align 8                      ; 5 uses
  store ptr %0, ptr %i.a, align 8
  store ptr %1, ptr %i.b, align 8
  store i8 1, ptr %i.c, align 1
  br label %bb.b

bb.b:                                             ; preds = %bb.g, %bb.a
  %i.e = load ptr, ptr %i.a, align 8
  %i.f = call zeroext i1 @consume(ptr noundef %i.a, ptr noundef %i.e, ptr noundef @.str.99)
  %i.g = xor i1 %i.f, true
  br i1 %i.g, label %bb.c, label %bb.h

bb.c:                                             ; preds = %bb.b
  %i.h = load i8, ptr %i.c, align 1
  %i.i = icmp ne i8 %i.h, 0
  br i1 %i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = load ptr, ptr %i.a, align 8
  %i.k = call ptr @skip(ptr noundef %i.j, ptr noundef @.str.57)
  store ptr %i.k, ptr %i.a, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  store i8 0, ptr %i.c, align 1
  %i.l = load ptr, ptr %i.a, align 8
  %i.m = load ptr, ptr %i.b, align 8
  %i.n = call ptr @declarator(ptr noundef %i.a, ptr noundef %i.l, ptr noundef %i.m)
  store ptr %i.n, ptr %i.d, align 8
  %i.o = load ptr, ptr %i.d, align 8
  %2 = getelementptr inbounds nuw %struct.Type, ptr %i.o, i32 0, i32 7
  %i.p = load ptr, ptr %2, align 8
  %i.q = icmp ne ptr %i.p, null
  br i1 %i.q, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.r = load ptr, ptr %i.d, align 8
  %3 = getelementptr inbounds nuw %struct.Type, ptr %i.r, i32 0, i32 8
  %i.s = load ptr, ptr %3, align 8
  call void (ptr, ptr, ...) @error_tok(ptr noundef %i.s, ptr noundef @.str.141) #9
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.t = load ptr, ptr %i.d, align 8
  %i.u = load ptr, ptr %i.d, align 8
  %4 = getelementptr inbounds nuw %struct.Type, ptr %i.u, i32 0, i32 7
  %i.v = load ptr, ptr %4, align 8
  %i.w = call ptr @get_ident(ptr noundef %i.v)
  %i.x = call ptr @push_scope(ptr noundef %i.w)
  %5 = getelementptr inbounds nuw %struct.VarScope, ptr %i.x, i32 0, i32 1
  store ptr %i.t, ptr %5, align 8
  br label %bb.b, !llvm.loop !12

bb.h:                                             ; preds = %bb.b
  %i.y = load ptr, ptr %i.a, align 8
  ret ptr %i.y
}

; Function Attrs: noinline nounwind optnone uwtable
define internal zeroext i1 @is_function(ptr noundef %0) unnamed_addr #0 {
bb.a:
  %i.a = alloca i1, align 1                       ; 3 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %1 = alloca %struct.Type, align 8               ; 2 uses
  %i.c = alloca ptr, align 8                      ; 2 uses
  store ptr %0, ptr %i.b, align 8
  %i.d = load ptr, ptr %i.b, align 8
  %i.e = call zeroext i1 @equal(ptr noundef %i.d, ptr noundef @.str.99)
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i1 false, ptr %i.a, align 1
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  call void @llvm.memset.p0.i64(ptr align 8 %1, i8 0, i64 120, i1 false)
  %i.f = load ptr, ptr %i.b, align 8
  %i.g = call ptr @declarator(ptr noundef %i.b, ptr noundef %i.f, ptr noundef %1)
  store ptr %i.g, ptr %i.c, align 8
  %i.h = load ptr, ptr %i.c, align 8
  %2 = getelementptr inbounds nuw %struct.Type, ptr %i.h, i32 0, i32 0
  %i.i = load i32, ptr %2, align 8
  %i.j = icmp eq i32 %i.i, 11
  store i1 %i.j, ptr %i.a, align 1
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.k = load i1, ptr %i.a, align 1
  ret i1 %i.k
}

; Function Attrs: noinline nounwind optnone uwtable
define internal ptr @function(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 3 uses
  %i.b = alloca ptr, align 8                      ; 17 uses
  %i.c = alloca ptr, align 8                      ; 2 uses
  %i.d = alloca ptr, align 8                      ; 6 uses
  %i.e = alloca ptr, align 8                      ; 8 uses
  %i.f = alloca ptr, align 8                      ; 4 uses
  %i.g = alloca ptr, align 8                      ; 25 uses
  %i.h = alloca ptr, align 8                      ; 5 uses
  store ptr %0, ptr %i.b, align 8
  store ptr %1, ptr %i.c, align 8
  store ptr %2, ptr %i.d, align 8
  %i.i = load ptr, ptr %i.b, align 8
  %i.j = load ptr, ptr %i.c, align 8
  %i.k = call ptr @declarator(ptr noundef %i.b, ptr noundef %i.i, ptr noundef %i.j)
  store ptr %i.k, ptr %i.e, align 8
  %i.l = load ptr, ptr %i.e, align 8
  %3 = getelementptr inbounds nuw %struct.Type, ptr %i.l, i32 0, i32 7
  %i.m = load ptr, ptr %3, align 8
  %i.n = icmp ne ptr %i.m, null
  br i1 %i.n, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.o = load ptr, ptr %i.e, align 8
  %4 = getelementptr inbounds nuw %struct.Type, ptr %i.o, i32 0, i32 8
  %i.p = load ptr, ptr %4, align 8
  call void (ptr, ptr, ...) @error_tok(ptr noundef %i.p, ptr noundef @.str.142) #9
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.q = load ptr, ptr %i.e, align 8
  %5 = getelementptr inbounds nuw %struct.Type, ptr %i.q, i32 0, i32 7
  %i.r = load ptr, ptr %5, align 8
  %i.s = call ptr @get_ident(ptr noundef %i.r)
  store ptr %i.s, ptr %i.f, align 8
  %i.t = load ptr, ptr %i.f, align 8
  %i.u = call ptr @find_func(ptr noundef %i.t)
  store ptr %i.u, ptr %i.g, align 8
  %i.v = load ptr, ptr %i.g, align 8
  %i.w = icmp ne ptr %i.v, null
  br i1 %i.w, label %bb.d, label %bb.o

bb.d:                                             ; preds = %bb.c
  %i.x = load ptr, ptr %i.g, align 8
  %6 = getelementptr inbounds nuw %struct.Obj, ptr %i.x, i32 0, i32 7
  %i.y = load i8, ptr %6, align 4
  %i.z = icmp ne i8 %i.y, 0
  br i1 %i.z, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.aa = load ptr, ptr %i.b, align 8
  call void (ptr, ptr, ...) @error_tok(ptr noundef %i.aa, ptr noundef @.str.143) #9
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.ab = load ptr, ptr %i.g, align 8
  %7 = getelementptr inbounds nuw %struct.Obj, ptr %i.ab, i32 0, i32 8
  %i.ac = load i8, ptr %7, align 1
  %i.ad = icmp ne i8 %i.ac, 0
  br i1 %i.ad, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.ae = load ptr, ptr %i.b, align 8
  %i.af = call zeroext i1 @equal(ptr noundef %i.ae, ptr noundef @.str.25)
  br i1 %i.af, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ag = load ptr, ptr %i.b, align 8
  %i.ah = load ptr, ptr %i.f, align 8
  call void (ptr, ptr, ...) @error_tok(ptr noundef %i.ag, ptr noundef @.str.144, ptr noundef %i.ah) #9
  unreachable

bb.i:                                             ; preds = %bb.g, %bb.f
  %i.ai = load ptr, ptr %i.g, align 8
  %8 = getelementptr inbounds nuw %struct.Obj, ptr %i.ai, i32 0, i32 9
  %i.aj = load i8, ptr %8, align 2
  %i.ak = icmp ne i8 %i.aj, 0
  br i1 %i.ak, label %bb.l, label %bb.j

bb.j:                                             ; preds = %bb.i
end_hunk_0
begin_hunk_1_@function:bb.a
  %i.en = load ptr, ptr %i.b, align 8
  %i.eo = call ptr @compound_stmt(ptr noundef %i.b, ptr noundef %i.en)
  %i.ep = load ptr, ptr %i.g, align 8
  %38 = getelementptr inbounds nuw %struct.Obj, ptr %i.ep, i32 0, i32 16
  store ptr %i.eo, ptr %38, align 8
  %i.eq = load ptr, ptr @locals, align 8
  %i.er = load ptr, ptr %i.g, align 8
  %39 = getelementptr inbounds nuw %struct.Obj, ptr %i.er, i32 0, i32 17
  store ptr %i.eq, ptr %39, align 8
  call void @leave_scope()
  call void @resolve_goto_labels()
  %i.es = load ptr, ptr %i.b, align 8
  store ptr %i.es, ptr %i.a, align 8
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.w
  %i.et = load ptr, ptr %i.a, align 8
  ret ptr %i.et
}

; Function Attrs: noinline nounwind optnone uwtable
define internal ptr @global_variable(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 11 uses
  %i.b = alloca ptr, align 8                      ; 2 uses
  %i.c = alloca ptr, align 8                      ; 8 uses
  %i.d = alloca i8, align 1                       ; 3 uses
  %i.e = alloca ptr, align 8                      ; 5 uses
  %i.f = alloca ptr, align 8                      ; 7 uses
  store ptr %0, ptr %i.a, align 8
  store ptr %1, ptr %i.b, align 8
  store ptr %2, ptr %i.c, align 8
  store i8 1, ptr %i.d, align 1
  br label %bb.b

bb.b:                                             ; preds = %bb.o, %bb.a
  %i.g = load ptr, ptr %i.a, align 8
  %i.h = call zeroext i1 @consume(ptr noundef %i.a, ptr noundef %i.g, ptr noundef @.str.99)
  %i.i = xor i1 %i.h, true
  br i1 %i.i, label %bb.c, label %bb.p

bb.c:                                             ; preds = %bb.b
  %i.j = load i8, ptr %i.d, align 1
  %i.k = icmp ne i8 %i.j, 0
  br i1 %i.k, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = load ptr, ptr %i.a, align 8
  %i.m = call ptr @skip(ptr noundef %i.l, ptr noundef @.str.57)
  store ptr %i.m, ptr %i.a, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  store i8 0, ptr %i.d, align 1
  %i.n = load ptr, ptr %i.a, align 8
  %i.o = load ptr, ptr %i.b, align 8
  %i.p = call ptr @declarator(ptr noundef %i.a, ptr noundef %i.n, ptr noundef %i.o)
  store ptr %i.p, ptr %i.e, align 8
  %i.q = load ptr, ptr %i.e, align 8
  %3 = getelementptr inbounds nuw %struct.Type, ptr %i.q, i32 0, i32 7
  %i.r = load ptr, ptr %3, align 8
  %i.s = icmp ne ptr %i.r, null
  br i1 %i.s, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.t = load ptr, ptr %i.e, align 8
  %4 = getelementptr inbounds nuw %struct.Type, ptr %i.t, i32 0, i32 8
  %i.u = load ptr, ptr %4, align 8
  call void (ptr, ptr, ...) @error_tok(ptr noundef %i.u, ptr noundef @.str.101) #9
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.v = load ptr, ptr %i.e, align 8
  %5 = getelementptr inbounds nuw %struct.Type, ptr %i.v, i32 0, i32 7
  %i.w = load ptr, ptr %5, align 8
  %i.x = call ptr @get_ident(ptr noundef %i.w)
  %i.y = load ptr, ptr %i.e, align 8
  %i.z = call ptr @new_gvar(ptr noundef %i.x, ptr noundef %i.y)
  store ptr %i.z, ptr %i.f, align 8
  %i.aa = load ptr, ptr %i.c, align 8
  %6 = getelementptr inbounds nuw %struct.VarAttr, ptr %i.aa, i32 0, i32 2
  %i.ab = load i8, ptr %6, align 2
  %i.ac = icmp ne i8 %i.ab, 0
  %i.ad = xor i1 %i.ac, true
  %i.ae = load ptr, ptr %i.f, align 8
  %7 = getelementptr inbounds nuw %struct.Obj, ptr %i.ae, i32 0, i32 8
  %i.af = zext i1 %i.ad to i8
  store i8 %i.af, ptr %7, align 1
  %i.ag = load ptr, ptr %i.c, align 8
  %8 = getelementptr inbounds nuw %struct.VarAttr, ptr %i.ag, i32 0, i32 1
  %i.ah = load i8, ptr %8, align 1
  %i.ai = icmp ne i8 %i.ah, 0
  %i.aj = load ptr, ptr %i.f, align 8
  %9 = getelementptr inbounds nuw %struct.Obj, ptr %i.aj, i32 0, i32 9
  %i.ak = zext i1 %i.ai to i8
  store i8 %i.ak, ptr %9, align 2
  %i.al = load ptr, ptr %i.c, align 8
  %10 = getelementptr inbounds nuw %struct.VarAttr, ptr %i.al, i32 0, i32 4
  %i.am = load i8, ptr %10, align 4
  %i.an = icmp ne i8 %i.am, 0
  %i.ao = load ptr, ptr %i.f, align 8
  %11 = getelementptr inbounds nuw %struct.Obj, ptr %i.ao, i32 0, i32 11
  %i.ap = zext i1 %i.an to i8
  store i8 %i.ap, ptr %11, align 8
  %i.aq = load ptr, ptr %i.c, align 8
  %12 = getelementptr inbounds nuw %struct.VarAttr, ptr %i.aq, i32 0, i32 5
  %i.ar = load i32, ptr %12, align 4
  %i.as = icmp ne i32 %i.ar, 0
  br i1 %i.as, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.at = load ptr, ptr %i.c, align 8
  %13 = getelementptr inbounds nuw %struct.VarAttr, ptr %i.at, i32 0, i32 5
  %i.au = load i32, ptr %13, align 4
  %i.av = load ptr, ptr %i.f, align 8
  %14 = getelementptr inbounds nuw %struct.Obj, ptr %i.av, i32 0, i32 5
  store i32 %i.au, ptr %14, align 4
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.aw = load ptr, ptr %i.a, align 8
  %i.ax = call zeroext i1 @equal(ptr noundef %i.aw, ptr noundef @.str.76)
  br i1 %i.ax, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ay = load ptr, ptr %i.a, align 8
  %15 = getelementptr inbounds nuw %struct.Token, ptr %i.ay, i32 0, i32 1
  %i.az = load ptr, ptr %15, align 8
  %i.ba = load ptr, ptr %i.f, align 8
  call void @gvar_initializer(ptr noundef %i.a, ptr noundef %i.az, ptr noundef %i.ba)
  br label %bb.o

bb.k:                                             ; preds = %bb.i
  %i.bb = load ptr, ptr %i.c, align 8
  %16 = getelementptr inbounds nuw %struct.VarAttr, ptr %i.bb, i32 0, i32 2
  %i.bc = load i8, ptr %16, align 2
  %i.bd = icmp ne i8 %i.bc, 0
  br i1 %i.bd, label %bb.n, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.be = load ptr, ptr %i.c, align 8
  %17 = getelementptr inbounds nuw %struct.VarAttr, ptr %i.be, i32 0, i32 4
  %i.bf = load i8, ptr %17, align 4
  %i.bg = icmp ne i8 %i.bf, 0
  br i1 %i.bg, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bh = load ptr, ptr %i.f, align 8
  %18 = getelementptr inbounds nuw %struct.Obj, ptr %i.bh, i32 0, i32 10
  store i8 1, ptr %18, align 1
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l, %bb.k
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.j
  br label %bb.b, !llvm.loop !13

bb.p:                                             ; preds = %bb.b
  %i.bi = load ptr, ptr %i.a, align 8
  ret ptr %i.bi
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mark_live(ptr noundef %0) unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 6 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %i.c = alloca ptr, align 8                      ; 3 uses
  store ptr %0, ptr %i.a, align 8
  %i.d = load ptr, ptr %i.a, align 8
  %1 = getelementptr inbounds nuw %struct.Obj, ptr %i.d, i32 0, i32 7
  %i.e = load i8, ptr %1, align 4
  %i.f = icmp ne i8 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %i.a, align 8
  %2 = getelementptr inbounds nuw %struct.Obj, ptr %i.g, i32 0, i32 21
  %i.h = load i8, ptr %2, align 4
  %i.i = icmp ne i8 %i.h, 0
  br i1 %i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b, %bb.a
  br label %bb.j

bb.d:                                             ; preds = %bb.b
  %i.j = load ptr, ptr %i.a, align 8
  %3 = getelementptr inbounds nuw %struct.Obj, ptr %i.j, i32 0, i32 21
  store i8 1, ptr %3, align 4
  store i32 0, ptr %i.b, align 4
  br label %bb.e

bb.e:                                             ; preds = %bb.i, %bb.d
  %i.k = load i32, ptr %i.b, align 4
  %i.l = load ptr, ptr %i.a, align 8
  %4 = getelementptr inbounds nuw %struct.Obj, ptr %i.l, i32 0, i32 23
  %5 = getelementptr inbounds nuw %struct.StringArray, ptr %4, i32 0, i32 2
  %i.m = load i32, ptr %5, align 4
  %i.n = icmp slt i32 %i.k, %i.m
  br i1 %i.n, label %bb.f, label %.loopexit

bb.f:                                             ; preds = %bb.e
  %i.o = load ptr, ptr %i.a, align 8
  %6 = getelementptr inbounds nuw %struct.Obj, ptr %i.o, i32 0, i32 23
  %7 = getelementptr inbounds nuw %struct.StringArray, ptr %6, i32 0, i32 0
  %i.p = load ptr, ptr %7, align 8
  %i.q = load i32, ptr %i.b, align 4
  %i.r = sext i32 %i.q to i64
  %i.s = getelementptr inbounds ptr, ptr %i.p, i64 %i.r
  %i.t = load ptr, ptr %i.s, align 8
  %i.u = call ptr @find_func(ptr noundef %i.t)
  store ptr %i.u, ptr %i.c, align 8
  %i.v = load ptr, ptr %i.c, align 8
  %i.w = icmp ne ptr %i.v, null
  br i1 %i.w, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.x = load ptr, ptr %i.c, align 8
  call void @mark_live(ptr noundef %i.x)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  br label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.y = load i32, ptr %i.b, align 4
  %i.z = add nsw i32 %i.y, 1
  store i32 %i.z, ptr %i.b, align 4
  br label %bb.e, !llvm.loop !14

.loopexit:                                        ; preds = %bb.e
  br label %bb.j

bb.j:                                             ; preds = %.loopexit, %bb.c
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @scan_globals() unnamed_addr #0 {
bb.a:
  %0 = alloca %struct.Obj, align 8                ; 2 uses
  %i.a = alloca ptr, align 8                      ; 6 uses
  %i.b = alloca ptr, align 8                      ; 9 uses
  %i.c = alloca ptr, align 8                      ; 8 uses
  store ptr %0, ptr %i.a, align 8
  %i.d = load ptr, ptr @globals, align 8
  store ptr %i.d, ptr %i.b, align 8
  br label %bb.b

bb.b:                                             ; preds = %bb.p, %bb.a
  %i.e = load ptr, ptr %i.b, align 8
  %i.f = icmp ne ptr %i.e, null
  br i1 %i.f, label %bb.c, label %bb.q

bb.c:                                             ; preds = %bb.b
  %i.g = load ptr, ptr %i.b, align 8
  %1 = getelementptr inbounds nuw %struct.Obj, ptr %i.g, i32 0, i32 10
  %i.h = load i8, ptr %1, align 1
  %i.i = icmp ne i8 %i.h, 0
  br i1 %i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = load ptr, ptr %i.b, align 8              ; 2 uses
  %i.k = load ptr, ptr %i.a, align 8
  %2 = getelementptr inbounds nuw %struct.Obj, ptr %i.k, i32 0, i32 0
  store ptr %i.j, ptr %2, align 8
  store ptr %i.j, ptr %i.a, align 8
  br label %bb.p

bb.e:                                             ; preds = %bb.c
  %i.l = load ptr, ptr @globals, align 8
  store ptr %i.l, ptr %i.c, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.l, %bb.e
  %i.m = load ptr, ptr %i.c, align 8
  %i.n = icmp ne ptr %i.m, null
  br i1 %i.n, label %bb.g, label %.loopexit

bb.g:                                             ; preds = %bb.f
  %i.o = load ptr, ptr %i.b, align 8
  %i.p = load ptr, ptr %i.c, align 8
  %i.q = icmp ne ptr %i.o, %i.p
  br i1 %i.q, label %bb.h, label %bb.k

bb.h:                                             ; preds = %bb.g
  %i.r = load ptr, ptr %i.c, align 8
  %3 = getelementptr inbounds nuw %struct.Obj, ptr %i.r, i32 0, i32 8
  %i.s = load i8, ptr %3, align 1
  %i.t = icmp ne i8 %i.s, 0
  br i1 %i.t, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.u = load ptr, ptr %i.b, align 8
  %4 = getelementptr inbounds nuw %struct.Obj, ptr %i.u, i32 0, i32 1
  %i.v = load ptr, ptr %4, align 8
  %i.w = load ptr, ptr %i.c, align 8
  %5 = getelementptr inbounds nuw %struct.Obj, ptr %i.w, i32 0, i32 1
  %i.x = load ptr, ptr %5, align 8
  %i.y = call i32 @strcmp(ptr noundef %i.v, ptr noundef %i.x) #10
  %i.z = icmp ne i32 %i.y, 0
  br i1 %i.z, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  br label %bb.m

bb.k:                                             ; preds = %bb.i, %bb.h, %bb.g
  br label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.aa = load ptr, ptr %i.c, align 8
  %6 = getelementptr inbounds nuw %struct.Obj, ptr %i.aa, i32 0, i32 0
  %i.ab = load ptr, ptr %6, align 8
  store ptr %i.ab, ptr %i.c, align 8
  br label %bb.f, !llvm.loop !15

.loopexit:                                        ; preds = %bb.f
  br label %bb.m

bb.m:                                             ; preds = %.loopexit, %bb.j
  %i.ac = load ptr, ptr %i.c, align 8
  %i.ad = icmp ne ptr %i.ac, null
  br i1 %i.ad, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ae = load ptr, ptr %i.b, align 8             ; 2 uses
  %i.af = load ptr, ptr %i.a, align 8
  %7 = getelementptr inbounds nuw %struct.Obj, ptr %i.af, i32 0, i32 0
  store ptr %i.ae, ptr %7, align 8
  store ptr %i.ae, ptr %i.a, align 8
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.d
  %i.ag = load ptr, ptr %i.b, align 8
  %8 = getelementptr inbounds nuw %struct.Obj, ptr %i.ag, i32 0, i32 0
  %i.ah = load ptr, ptr %8, align 8
  store ptr %i.ah, ptr %i.b, align 8
  br label %bb.b, !llvm.loop !16

bb.q:                                             ; preds = %bb.b
  %i.ai = load ptr, ptr %i.a, align 8
  %9 = getelementptr inbounds nuw %struct.Obj, ptr %i.ai, i32 0, i32 0
  store ptr null, ptr %9, align 8
  %10 = getelementptr inbounds nuw %struct.Obj, ptr %0, i32 0, i32 0
  %i.aj = load ptr, ptr %10, align 8
  store ptr %i.aj, ptr @globals, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @eval2(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 37 uses
  %i.b = alloca ptr, align 8                      ; 80 uses
  %i.c = alloca ptr, align 8                      ; 13 uses
  %i.d = alloca i64, align 8                      ; 8 uses
  store ptr %0, ptr %i.b, align 8
  store ptr %1, ptr %i.c, align 8
  %i.e = load ptr, ptr %i.b, align 8
  call void @add_type(ptr noundef %i.e)
  %i.f = load ptr, ptr %i.b, align 8
  %2 = getelementptr inbounds nuw %struct.Node, ptr %i.f, i32 0, i32 2
  %i.g = load ptr, ptr %2, align 16
  %i.h = call zeroext i1 @is_flonum(ptr noundef %i.g)
  br i1 %i.h, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = load ptr, ptr %i.b, align 8
  %i.j = call double @eval_double(ptr noundef %i.i)
  %i.k = fptosi double %i.j to i64
  store i64 %i.k, ptr %i.a, align 8
  br label %bb.bv

bb.c:                                             ; preds = %bb.a
  %i.l = load ptr, ptr %i.b, align 8
  %3 = getelementptr inbounds nuw %struct.Node, ptr %i.l, i32 0, i32 0
  %i.m = load i32, ptr %3, align 16
  switch i32 %i.m, label %bb.bu [
    i32 1, label %bb.d
    i32 2, label %bb.e
    i32 3, label %bb.f
    i32 4, label %bb.g
    i32 5, label %bb.j
    i32 6, label %bb.k
    i32 7, label %bb.n
    i32 8, label %bb.o
    i32 9, label %bb.p
    i32 10, label %bb.q
    i32 11, label %bb.r
    i32 12, label %bb.v
    i32 13, label %bb.w
    i32 14, label %bb.x
    i32 15, label %bb.aa
    i32 17, label %bb.ad
    i32 18, label %bb.ah
    i32 22, label %bb.ai
    i32 23, label %bb.aj
    i32 24, label %bb.ak
    i32 25, label %bb.an
    i32 43, label %bb.aq
    i32 20, label %bb.bg
    i32 36, label %bb.bh
    i32 19, label %bb.bi
    i32 40, label %bb.bn
    i32 42, label %bb.bt
  ]

bb.d:                                             ; preds = %bb.c
  %i.n = load ptr, ptr %i.b, align 8
  %4 = getelementptr inbounds nuw %struct.Node, ptr %i.n, i32 0, i32 4
  %i.o = load ptr, ptr %4, align 16
  %i.p = load ptr, ptr %i.c, align 8
  %i.q = call i64 @eval2(ptr noundef %i.o, ptr noundef %i.p)
  %i.r = load ptr, ptr %i.b, align 8
  %5 = getelementptr inbounds nuw %struct.Node, ptr %i.r, i32 0, i32 5
  %i.s = load ptr, ptr %5, align 8
  %i.t = call i64 @eval(ptr noundef %i.s)
  %i.u = add nsw i64 %i.q, %i.t
  store i64 %i.u, ptr %i.a, align 8
  br label %bb.bv

bb.e:                                             ; preds = %bb.c
  %i.v = load ptr, ptr %i.b, align 8
  %6 = getelementptr inbounds nuw %struct.Node, ptr %i.v, i32 0, i32 4
  %i.w = load ptr, ptr %6, align 16
  %i.x = load ptr, ptr %i.c, align 8
  %i.y = call i64 @eval2(ptr noundef %i.w, ptr noundef %i.x)
  %i.z = load ptr, ptr %i.b, align 8
  %7 = getelementptr inbounds nuw %struct.Node, ptr %i.z, i32 0, i32 5
  %i.aa = load ptr, ptr %7, align 8
  %i.ab = call i64 @eval(ptr noundef %i.aa)
  %i.ac = sub nsw i64 %i.y, %i.ab
  store i64 %i.ac, ptr %i.a, align 8
  br label %bb.bv

bb.f:                                             ; preds = %bb.c
  %i.ad = load ptr, ptr %i.b, align 8
  %8 = getelementptr inbounds nuw %struct.Node, ptr %i.ad, i32 0, i32 4
  %i.ae = load ptr, ptr %8, align 16
  %i.af = call i64 @eval(ptr noundef %i.ae)
  %i.ag = load ptr, ptr %i.b, align 8
  %9 = getelementptr inbounds nuw %struct.Node, ptr %i.ag, i32 0, i32 5
  %i.ah = load ptr, ptr %9, align 8
  %i.ai = call i64 @eval(ptr noundef %i.ah)
  %i.aj = mul nsw i64 %i.af, %i.ai
  store i64 %i.aj, ptr %i.a, align 8
  br label %bb.bv

bb.g:                                             ; preds = %bb.c
  %i.ak = load ptr, ptr %i.b, align 8
  %10 = getelementptr inbounds nuw %struct.Node, ptr %i.ak, i32 0, i32 2
  %i.al = load ptr, ptr %10, align 16
  %11 = getelementptr inbounds nuw %struct.Type, ptr %i.al, i32 0, i32 3
  %i.am = load i8, ptr %11, align 4
  %i.an = icmp ne i8 %i.am, 0
  br i1 %i.an, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ao = load ptr, ptr %i.b, align 8
  %12 = getelementptr inbounds nuw %struct.Node, ptr %i.ao, i32 0, i32 4
  %i.ap = load ptr, ptr %12, align 16
  %i.aq = call i64 @eval(ptr noundef %i.ap)
  %i.ar = load ptr, ptr %i.b, align 8
  %13 = getelementptr inbounds nuw %struct.Node, ptr %i.ar, i32 0, i32 5
  %i.as = load ptr, ptr %13, align 8
  %i.at = call i64 @eval(ptr noundef %i.as)
  %i.au = udiv i64 %i.aq, %i.at
  store i64 %i.au, ptr %i.a, align 8
  br label %bb.bv

bb.i:                                             ; preds = %bb.g
  %i.av = load ptr, ptr %i.b, align 8
  %14 = getelementptr inbounds nuw %struct.Node, ptr %i.av, i32 0, i32 4
  %i.aw = load ptr, ptr %14, align 16
  %i.ax = call i64 @eval(ptr noundef %i.aw)
  %i.ay = load ptr, ptr %i.b, align 8
  %15 = getelementptr inbounds nuw %struct.Node, ptr %i.ay, i32 0, i32 5
  %i.az = load ptr, ptr %15, align 8
  %i.ba = call i64 @eval(ptr noundef %i.az)
  %i.bb = sdiv i64 %i.ax, %i.ba
  store i64 %i.bb, ptr %i.a, align 8
  br label %bb.bv

bb.j:                                             ; preds = %bb.c
  %i.bc = load ptr, ptr %i.b, align 8
  %16 = getelementptr inbounds nuw %struct.Node, ptr %i.bc, i32 0, i32 4
  %i.bd = load ptr, ptr %16, align 16
  %i.be = call i64 @eval(ptr noundef %i.bd)
  %i.bf = sub nsw i64 0, %i.be
  store i64 %i.bf, ptr %i.a, align 8
  br label %bb.bv

bb.k:                                             ; preds = %bb.c
  %i.bg = load ptr, ptr %i.b, align 8
  %17 = getelementptr inbounds nuw %struct.Node, ptr %i.bg, i32 0, i32 2
  %i.bh = load ptr, ptr %17, align 16
  %18 = getelementptr inbounds nuw %struct.Type, ptr %i.bh, i32 0, i32 3
  %i.bi = load i8, ptr %18, align 4
  %i.bj = icmp ne i8 %i.bi, 0
  br i1 %i.bj, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.bk = load ptr, ptr %i.b, align 8
  %19 = getelementptr inbounds nuw %struct.Node, ptr %i.bk, i32 0, i32 4
  %i.bl = load ptr, ptr %19, align 16
  %i.bm = call i64 @eval(ptr noundef %i.bl)
  %i.bn = load ptr, ptr %i.b, align 8
  %20 = getelementptr inbounds nuw %struct.Node, ptr %i.bn, i32 0, i32 5
  %i.bo = load ptr, ptr %20, align 8
  %i.bp = call i64 @eval(ptr noundef %i.bo)
  %i.bq = urem i64 %i.bm, %i.bp
  store i64 %i.bq, ptr %i.a, align 8
  br label %bb.bv

bb.m:                                             ; preds = %bb.k
  %i.br = load ptr, ptr %i.b, align 8
  %21 = getelementptr inbounds nuw %struct.Node, ptr %i.br, i32 0, i32 4
end_hunk_1
begin_hunk_2_@expr:bb.a
  %i.i = load ptr, ptr %i.d, align 8
  %i.j = load ptr, ptr %i.b, align 8
  %i.k = load ptr, ptr %i.c, align 8
  %2 = getelementptr inbounds nuw %struct.Token, ptr %i.k, i32 0, i32 1
  %i.l = load ptr, ptr %2, align 8
  %i.m = call ptr @expr(ptr noundef %i.j, ptr noundef %i.l)
  %i.n = load ptr, ptr %i.c, align 8
  %i.o = call ptr @new_binary(i32 noundef 18, ptr noundef %i.i, ptr noundef %i.m, ptr noundef %i.n)
  store ptr %i.o, ptr %i.a, align 8
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.p = load ptr, ptr %i.c, align 8
  %i.q = load ptr, ptr %i.b, align 8
  store ptr %i.p, ptr %i.q, align 8
  %i.r = load ptr, ptr %i.d, align 8
  store ptr %i.r, ptr %i.a, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.s = load ptr, ptr %i.a, align 8
  ret ptr %i.s
}

declare ptr @skip(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optnone uwtable
define internal ptr @logand(ptr noundef nonnull %0, ptr noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 2 uses
  %i.b = alloca ptr, align 8                      ; 8 uses
  %i.c = alloca ptr, align 8                      ; 4 uses
  %i.d = alloca ptr, align 8                      ; 2 uses
  store ptr %0, ptr %i.a, align 8
  store ptr %1, ptr %i.b, align 8
  %i.e = load ptr, ptr %i.b, align 8
  %i.f = call ptr @bitor(ptr noundef %i.b, ptr noundef %i.e)
  store ptr %i.f, ptr %i.c, align 8
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %bb.a
  %i.g = load ptr, ptr %i.b, align 8
  %i.h = call zeroext i1 @equal(ptr noundef %i.g, ptr noundef @.str.6)
  br i1 %i.h, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.i = load ptr, ptr %i.b, align 8
  store ptr %i.i, ptr %i.d, align 8
  %i.j = load ptr, ptr %i.c, align 8
  %i.k = load ptr, ptr %i.b, align 8
  %2 = getelementptr inbounds nuw %struct.Token, ptr %i.k, i32 0, i32 1
  %i.l = load ptr, ptr %2, align 8
  %i.m = call ptr @bitor(ptr noundef %i.b, ptr noundef %i.l)
  %i.n = load ptr, ptr %i.d, align 8
  %i.o = call ptr @new_binary(i32 noundef 24, ptr noundef %i.j, ptr noundef %i.m, ptr noundef %i.n)
  store ptr %i.o, ptr %i.c, align 8
  br label %bb.b, !llvm.loop !18

bb.d:                                             ; preds = %bb.b
  %i.p = load ptr, ptr %i.b, align 8
  %i.q = load ptr, ptr %i.a, align 8
  store ptr %i.p, ptr %i.q, align 8
  %i.r = load ptr, ptr %i.c, align 8
  ret ptr %i.r
}

; Function Attrs: noinline nounwind optnone uwtable
define internal ptr @bitor(ptr noundef nonnull %0, ptr noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 2 uses
  %i.b = alloca ptr, align 8                      ; 8 uses
  %i.c = alloca ptr, align 8                      ; 4 uses
  %i.d = alloca ptr, align 8                      ; 2 uses
  store ptr %0, ptr %i.a, align 8
  store ptr %1, ptr %i.b, align 8
  %i.e = load ptr, ptr %i.b, align 8
  %i.f = call ptr @bitxor(ptr noundef %i.b, ptr noundef %i.e)
  store ptr %i.f, ptr %i.c, align 8
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %bb.a
  %i.g = load ptr, ptr %i.b, align 8
  %i.h = call zeroext i1 @equal(ptr noundef %i.g, ptr noundef @.str.7)
  br i1 %i.h, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.i = load ptr, ptr %i.b, align 8
  store ptr %i.i, ptr %i.d, align 8
  %i.j = load ptr, ptr %i.c, align 8
  %i.k = load ptr, ptr %i.b, align 8
  %2 = getelementptr inbounds nuw %struct.Token, ptr %i.k, i32 0, i32 1
  %i.l = load ptr, ptr %2, align 8
  %i.m = call ptr @bitxor(ptr noundef %i.b, ptr noundef %i.l)
  %i.n = load ptr, ptr %i.d, align 8
  %i.o = call ptr @new_binary(i32 noundef 8, ptr noundef %i.j, ptr noundef %i.m, ptr noundef %i.n)
  store ptr %i.o, ptr %i.c, align 8
  br label %bb.b, !llvm.loop !19

bb.d:                                             ; preds = %bb.b
  %i.p = load ptr, ptr %i.b, align 8
  %i.q = load ptr, ptr %i.a, align 8
  store ptr %i.p, ptr %i.q, align 8
  %i.r = load ptr, ptr %i.c, align 8
  ret ptr %i.r
}

; Function Attrs: noinline nounwind optnone uwtable
define internal ptr @bitxor(ptr noundef nonnull %0, ptr noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 2 uses
  %i.b = alloca ptr, align 8                      ; 8 uses
  %i.c = alloca ptr, align 8                      ; 4 uses
  %i.d = alloca ptr, align 8                      ; 2 uses
  store ptr %0, ptr %i.a, align 8
  store ptr %1, ptr %i.b, align 8
  %i.e = load ptr, ptr %i.b, align 8
  %i.f = call ptr @bitand(ptr noundef %i.b, ptr noundef %i.e)
  store ptr %i.f, ptr %i.c, align 8
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %bb.a
  %i.g = load ptr, ptr %i.b, align 8
  %i.h = call zeroext i1 @equal(ptr noundef %i.g, ptr noundef @.str.8)
  br i1 %i.h, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.i = load ptr, ptr %i.b, align 8
  store ptr %i.i, ptr %i.d, align 8
  %i.j = load ptr, ptr %i.c, align 8
  %i.k = load ptr, ptr %i.b, align 8
  %2 = getelementptr inbounds nuw %struct.Token, ptr %i.k, i32 0, i32 1
  %i.l = load ptr, ptr %2, align 8
  %i.m = call ptr @bitand(ptr noundef %i.b, ptr noundef %i.l)
  %i.n = load ptr, ptr %i.d, align 8
  %i.o = call ptr @new_binary(i32 noundef 9, ptr noundef %i.j, ptr noundef %i.m, ptr noundef %i.n)
  store ptr %i.o, ptr %i.c, align 8
  br label %bb.b, !llvm.loop !20

bb.d:                                             ; preds = %bb.b
  %i.p = load ptr, ptr %i.b, align 8
  %i.q = load ptr, ptr %i.a, align 8
  store ptr %i.p, ptr %i.q, align 8
  %i.r = load ptr, ptr %i.c, align 8
  ret ptr %i.r
}

; Function Attrs: noinline nounwind optnone uwtable
define internal ptr @bitand(ptr noundef nonnull %0, ptr noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 2 uses
  %i.b = alloca ptr, align 8                      ; 8 uses
  %i.c = alloca ptr, align 8                      ; 4 uses
  %i.d = alloca ptr, align 8                      ; 2 uses
  store ptr %0, ptr %i.a, align 8
  store ptr %1, ptr %i.b, align 8
  %i.e = load ptr, ptr %i.b, align 8
  %i.f = call ptr @equality(ptr noundef %i.b, ptr noundef %i.e)
  store ptr %i.f, ptr %i.c, align 8
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %bb.a
  %i.g = load ptr, ptr %i.b, align 8
  %i.h = call zeroext i1 @equal(ptr noundef %i.g, ptr noundef @.str.9)
  br i1 %i.h, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.i = load ptr, ptr %i.b, align 8
  store ptr %i.i, ptr %i.d, align 8
  %i.j = load ptr, ptr %i.c, align 8
  %i.k = load ptr, ptr %i.b, align 8
  %2 = getelementptr inbounds nuw %struct.Token, ptr %i.k, i32 0, i32 1
  %i.l = load ptr, ptr %2, align 8
  %i.m = call ptr @equality(ptr noundef %i.b, ptr noundef %i.l)
  %i.n = load ptr, ptr %i.d, align 8
  %i.o = call ptr @new_binary(i32 noundef 7, ptr noundef %i.j, ptr noundef %i.m, ptr noundef %i.n)
  store ptr %i.o, ptr %i.c, align 8
  br label %bb.b, !llvm.loop !21

bb.d:                                             ; preds = %bb.b
  %i.p = load ptr, ptr %i.b, align 8
  %i.q = load ptr, ptr %i.a, align 8
  store ptr %i.p, ptr %i.q, align 8
  %i.r = load ptr, ptr %i.c, align 8
  ret ptr %i.r
}

; Function Attrs: noinline nounwind optnone uwtable
define internal ptr @equality(ptr noundef nonnull %0, ptr noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 2 uses
  %i.b = alloca ptr, align 8                      ; 11 uses
  %i.c = alloca ptr, align 8                      ; 6 uses
  %i.d = alloca ptr, align 8                      ; 3 uses
  store ptr %0, ptr %i.a, align 8
  store ptr %1, ptr %i.b, align 8
  %i.e = load ptr, ptr %i.b, align 8
  %i.f = call ptr @relational(ptr noundef %i.b, ptr noundef %i.e)
  store ptr %i.f, ptr %i.c, align 8
  br label %bb.b

bb.b:                                             ; preds = %.backedge, %bb.a
  %i.g = load ptr, ptr %i.b, align 8
  store ptr %i.g, ptr %i.d, align 8
  %i.h = load ptr, ptr %i.b, align 8
  %i.i = call zeroext i1 @equal(ptr noundef %i.h, ptr noundef @.str.10)
  br i1 %i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.j = load ptr, ptr %i.c, align 8
  %i.k = load ptr, ptr %i.b, align 8
  %2 = getelementptr inbounds nuw %struct.Token, ptr %i.k, i32 0, i32 1
  %i.l = load ptr, ptr %2, align 8
  %i.m = call ptr @relational(ptr noundef %i.b, ptr noundef %i.l)
  %i.n = load ptr, ptr %i.d, align 8
  %i.o = call ptr @new_binary(i32 noundef 12, ptr noundef %i.j, ptr noundef %i.m, ptr noundef %i.n)
  store ptr %i.o, ptr %i.c, align 8
  br label %.backedge

.backedge:                                        ; preds = %bb.c, %bb.e
  br label %bb.b

bb.d:                                             ; preds = %bb.b
  %i.p = load ptr, ptr %i.b, align 8
  %i.q = call zeroext i1 @equal(ptr noundef %i.p, ptr noundef @.str.11)
  br i1 %i.q, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.r = load ptr, ptr %i.c, align 8
  %i.s = load ptr, ptr %i.b, align 8
  %3 = getelementptr inbounds nuw %struct.Token, ptr %i.s, i32 0, i32 1
  %i.t = load ptr, ptr %3, align 8
  %i.u = call ptr @relational(ptr noundef %i.b, ptr noundef %i.t)
  %i.v = load ptr, ptr %i.d, align 8
  %i.w = call ptr @new_binary(i32 noundef 13, ptr noundef %i.r, ptr noundef %i.u, ptr noundef %i.v)
  store ptr %i.w, ptr %i.c, align 8
  br label %.backedge

bb.f:                                             ; preds = %bb.d
  %i.x = load ptr, ptr %i.b, align 8
  %i.y = load ptr, ptr %i.a, align 8
  store ptr %i.x, ptr %i.y, align 8
  %i.z = load ptr, ptr %i.c, align 8
  ret ptr %i.z
}

; Function Attrs: noinline nounwind optnone uwtable
define internal ptr @relational(ptr noundef nonnull %0, ptr noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 2 uses
  %i.b = alloca ptr, align 8                      ; 17 uses
  %i.c = alloca ptr, align 8                      ; 10 uses
  %i.d = alloca ptr, align 8                      ; 5 uses
  store ptr %0, ptr %i.a, align 8
  store ptr %1, ptr %i.b, align 8
  %i.e = load ptr, ptr %i.b, align 8
  %i.f = call ptr @shift(ptr noundef %i.b, ptr noundef %i.e)
  store ptr %i.f, ptr %i.c, align 8
  br label %bb.b

bb.b:                                             ; preds = %.backedge, %bb.a
  %i.g = load ptr, ptr %i.b, align 8
  store ptr %i.g, ptr %i.d, align 8
  %i.h = load ptr, ptr %i.b, align 8
  %i.i = call zeroext i1 @equal(ptr noundef %i.h, ptr noundef @.str.12)
  br i1 %i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.j = load ptr, ptr %i.c, align 8
  %i.k = load ptr, ptr %i.b, align 8
  %2 = getelementptr inbounds nuw %struct.Token, ptr %i.k, i32 0, i32 1
  %i.l = load ptr, ptr %2, align 8
  %i.m = call ptr @shift(ptr noundef %i.b, ptr noundef %i.l)
  %i.n = load ptr, ptr %i.d, align 8
  %i.o = call ptr @new_binary(i32 noundef 14, ptr noundef %i.j, ptr noundef %i.m, ptr noundef %i.n)
  store ptr %i.o, ptr %i.c, align 8
  br label %.backedge

.backedge:                                        ; preds = %bb.c, %bb.e, %bb.g, %bb.i
  br label %bb.b

bb.d:                                             ; preds = %bb.b
  %i.p = load ptr, ptr %i.b, align 8
  %i.q = call zeroext i1 @equal(ptr noundef %i.p, ptr noundef @.str.13)
  br i1 %i.q, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.r = load ptr, ptr %i.c, align 8
  %i.s = load ptr, ptr %i.b, align 8
  %3 = getelementptr inbounds nuw %struct.Token, ptr %i.s, i32 0, i32 1
  %i.t = load ptr, ptr %3, align 8
  %i.u = call ptr @shift(ptr noundef %i.b, ptr noundef %i.t)
  %i.v = load ptr, ptr %i.d, align 8
  %i.w = call ptr @new_binary(i32 noundef 15, ptr noundef %i.r, ptr noundef %i.u, ptr noundef %i.v)
  store ptr %i.w, ptr %i.c, align 8
  br label %.backedge

bb.f:                                             ; preds = %bb.d
  %i.x = load ptr, ptr %i.b, align 8
  %i.y = call zeroext i1 @equal(ptr noundef %i.x, ptr noundef @.str.14)
  br i1 %i.y, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.z = load ptr, ptr %i.b, align 8
  %4 = getelementptr inbounds nuw %struct.Token, ptr %i.z, i32 0, i32 1
  %i.aa = load ptr, ptr %4, align 8
  %i.ab = call ptr @shift(ptr noundef %i.b, ptr noundef %i.aa)
  %i.ac = load ptr, ptr %i.c, align 8
  %i.ad = load ptr, ptr %i.d, align 8
  %i.ae = call ptr @new_binary(i32 noundef 14, ptr noundef %i.ab, ptr noundef %i.ac, ptr noundef %i.ad)
  store ptr %i.ae, ptr %i.c, align 8
  br label %.backedge

bb.h:                                             ; preds = %bb.f
  %i.af = load ptr, ptr %i.b, align 8
  %i.ag = call zeroext i1 @equal(ptr noundef %i.af, ptr noundef @.str.15)
  br i1 %i.ag, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ah = load ptr, ptr %i.b, align 8
  %5 = getelementptr inbounds nuw %struct.Token, ptr %i.ah, i32 0, i32 1
  %i.ai = load ptr, ptr %5, align 8
  %i.aj = call ptr @shift(ptr noundef %i.b, ptr noundef %i.ai)
  %i.ak = load ptr, ptr %i.c, align 8
  %i.al = load ptr, ptr %i.d, align 8
  %i.am = call ptr @new_binary(i32 noundef 15, ptr noundef %i.aj, ptr noundef %i.ak, ptr noundef %i.al)
  store ptr %i.am, ptr %i.c, align 8
  br label %.backedge

bb.j:                                             ; preds = %bb.h
  %i.an = load ptr, ptr %i.b, align 8
  %i.ao = load ptr, ptr %i.a, align 8
  store ptr %i.an, ptr %i.ao, align 8
  %i.ap = load ptr, ptr %i.c, align 8
  ret ptr %i.ap
}

; Function Attrs: noinline nounwind optnone uwtable
define internal ptr @shift(ptr noundef nonnull %0, ptr noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 2 uses
  %i.b = alloca ptr, align 8                      ; 11 uses
  %i.c = alloca ptr, align 8                      ; 6 uses
  %i.d = alloca ptr, align 8                      ; 3 uses
  store ptr %0, ptr %i.a, align 8
  store ptr %1, ptr %i.b, align 8
  %i.e = load ptr, ptr %i.b, align 8
  %i.f = call ptr @add(ptr noundef %i.b, ptr noundef %i.e)
  store ptr %i.f, ptr %i.c, align 8
  br label %bb.b

bb.b:                                             ; preds = %.backedge, %bb.a
  %i.g = load ptr, ptr %i.b, align 8
  store ptr %i.g, ptr %i.d, align 8
  %i.h = load ptr, ptr %i.b, align 8
  %i.i = call zeroext i1 @equal(ptr noundef %i.h, ptr noundef @.str.16)
  br i1 %i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.j = load ptr, ptr %i.c, align 8
  %i.k = load ptr, ptr %i.b, align 8
  %2 = getelementptr inbounds nuw %struct.Token, ptr %i.k, i32 0, i32 1
  %i.l = load ptr, ptr %2, align 8
  %i.m = call ptr @add(ptr noundef %i.b, ptr noundef %i.l)
  %i.n = load ptr, ptr %i.d, align 8
  %i.o = call ptr @new_binary(i32 noundef 10, ptr noundef %i.j, ptr noundef %i.m, ptr noundef %i.n)
  store ptr %i.o, ptr %i.c, align 8
  br label %.backedge

.backedge:                                        ; preds = %bb.c, %bb.e
  br label %bb.b

bb.d:                                             ; preds = %bb.b
  %i.p = load ptr, ptr %i.b, align 8
  %i.q = call zeroext i1 @equal(ptr noundef %i.p, ptr noundef @.str.17)
  br i1 %i.q, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.r = load ptr, ptr %i.c, align 8
  %i.s = load ptr, ptr %i.b, align 8
  %3 = getelementptr inbounds nuw %struct.Token, ptr %i.s, i32 0, i32 1
  %i.t = load ptr, ptr %3, align 8
  %i.u = call ptr @add(ptr noundef %i.b, ptr noundef %i.t)
  %i.v = load ptr, ptr %i.d, align 8
  %i.w = call ptr @new_binary(i32 noundef 11, ptr noundef %i.r, ptr noundef %i.u, ptr noundef %i.v)
  store ptr %i.w, ptr %i.c, align 8
  br label %.backedge

bb.f:                                             ; preds = %bb.d
  %i.x = load ptr, ptr %i.b, align 8
  %i.y = load ptr, ptr %i.a, align 8
  store ptr %i.x, ptr %i.y, align 8
  %i.z = load ptr, ptr %i.c, align 8
  ret ptr %i.z
}

; Function Attrs: noinline nounwind optnone uwtable
define internal ptr @add(ptr noundef nonnull %0, ptr noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 2 uses
  %i.b = alloca ptr, align 8                      ; 11 uses
  %i.c = alloca ptr, align 8                      ; 6 uses
  %i.d = alloca ptr, align 8                      ; 3 uses
  store ptr %0, ptr %i.a, align 8
  store ptr %1, ptr %i.b, align 8
  %i.e = load ptr, ptr %i.b, align 8
  %i.f = call ptr @mul(ptr noundef %i.b, ptr noundef %i.e)
  store ptr %i.f, ptr %i.c, align 8
  br label %bb.b

bb.b:                                             ; preds = %.backedge, %bb.a
  %i.g = load ptr, ptr %i.b, align 8
  store ptr %i.g, ptr %i.d, align 8
  %i.h = load ptr, ptr %i.b, align 8
  %i.i = call zeroext i1 @equal(ptr noundef %i.h, ptr noundef @.str.18)
  br i1 %i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.j = load ptr, ptr %i.c, align 8
  %i.k = load ptr, ptr %i.b, align 8
  %2 = getelementptr inbounds nuw %struct.Token, ptr %i.k, i32 0, i32 1
  %i.l = load ptr, ptr %2, align 8
  %i.m = call ptr @mul(ptr noundef %i.b, ptr noundef %i.l)
  %i.n = load ptr, ptr %i.d, align 8
  %i.o = call ptr @new_add(ptr noundef %i.j, ptr noundef %i.m, ptr noundef %i.n)
  store ptr %i.o, ptr %i.c, align 8
  br label %.backedge

.backedge:                                        ; preds = %bb.c, %bb.e
  br label %bb.b

bb.d:                                             ; preds = %bb.b
  %i.p = load ptr, ptr %i.b, align 8
  %i.q = call zeroext i1 @equal(ptr noundef %i.p, ptr noundef @.str.19)
  br i1 %i.q, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.r = load ptr, ptr %i.c, align 8
  %i.s = load ptr, ptr %i.b, align 8
  %3 = getelementptr inbounds nuw %struct.Token, ptr %i.s, i32 0, i32 1
  %i.t = load ptr, ptr %3, align 8
  %i.u = call ptr @mul(ptr noundef %i.b, ptr noundef %i.t)
  %i.v = load ptr, ptr %i.d, align 8
  %i.w = call ptr @new_sub(ptr noundef %i.r, ptr noundef %i.u, ptr noundef %i.v)
  store ptr %i.w, ptr %i.c, align 8
  br label %.backedge

bb.f:                                             ; preds = %bb.d
  %i.x = load ptr, ptr %i.b, align 8
  %i.y = load ptr, ptr %i.a, align 8
  store ptr %i.x, ptr %i.y, align 8
  %i.z = load ptr, ptr %i.c, align 8
  ret ptr %i.z
}

; Function Attrs: noinline nounwind optnone uwtable
define internal ptr @mul(ptr noundef nonnull %0, ptr noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 2 uses
  %i.b = alloca ptr, align 8                      ; 14 uses
  %i.c = alloca ptr, align 8                      ; 8 uses
  %i.d = alloca ptr, align 8                      ; 4 uses
  store ptr %0, ptr %i.a, align 8
  store ptr %1, ptr %i.b, align 8
  %i.e = load ptr, ptr %i.b, align 8
  %i.f = call ptr @cast(ptr noundef %i.b, ptr noundef %i.e)
  store ptr %i.f, ptr %i.c, align 8
  br label %bb.b

bb.b:                                             ; preds = %.backedge, %bb.a
  %i.g = load ptr, ptr %i.b, align 8
  store ptr %i.g, ptr %i.d, align 8
  %i.h = load ptr, ptr %i.b, align 8
  %i.i = call zeroext i1 @equal(ptr noundef %i.h, ptr noundef @.str.20)
  br i1 %i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.j = load ptr, ptr %i.c, align 8
  %i.k = load ptr, ptr %i.b, align 8
  %2 = getelementptr inbounds nuw %struct.Token, ptr %i.k, i32 0, i32 1
  %i.l = load ptr, ptr %2, align 8
  %i.m = call ptr @cast(ptr noundef %i.b, ptr noundef %i.l)
  %i.n = load ptr, ptr %i.d, align 8
  %i.o = call ptr @new_binary(i32 noundef 3, ptr noundef %i.j, ptr noundef %i.m, ptr noundef %i.n)
  store ptr %i.o, ptr %i.c, align 8
  br label %.backedge

.backedge:                                        ; preds = %bb.c, %bb.e, %bb.g
  br label %bb.b

bb.d:                                             ; preds = %bb.b
  %i.p = load ptr, ptr %i.b, align 8
  %i.q = call zeroext i1 @equal(ptr noundef %i.p, ptr noundef @.str.21)
  br i1 %i.q, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.r = load ptr, ptr %i.c, align 8
  %i.s = load ptr, ptr %i.b, align 8
  %3 = getelementptr inbounds nuw %struct.Token, ptr %i.s, i32 0, i32 1
  %i.t = load ptr, ptr %3, align 8
  %i.u = call ptr @cast(ptr noundef %i.b, ptr noundef %i.t)
  %i.v = load ptr, ptr %i.d, align 8
  %i.w = call ptr @new_binary(i32 noundef 4, ptr noundef %i.r, ptr noundef %i.u, ptr noundef %i.v)
  store ptr %i.w, ptr %i.c, align 8
  br label %.backedge

bb.f:                                             ; preds = %bb.d
  %i.x = load ptr, ptr %i.b, align 8
  %i.y = call zeroext i1 @equal(ptr noundef %i.x, ptr noundef @.str.22)
  br i1 %i.y, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.z = load ptr, ptr %i.c, align 8
  %i.aa = load ptr, ptr %i.b, align 8
  %4 = getelementptr inbounds nuw %struct.Token, ptr %i.aa, i32 0, i32 1
  %i.ab = load ptr, ptr %4, align 8
  %i.ac = call ptr @cast(ptr noundef %i.b, ptr noundef %i.ab)
  %i.ad = load ptr, ptr %i.d, align 8
  %i.ae = call ptr @new_binary(i32 noundef 6, ptr noundef %i.z, ptr noundef %i.ac, ptr noundef %i.ad)
  store ptr %i.ae, ptr %i.c, align 8
  br label %.backedge

bb.h:                                             ; preds = %bb.f
  %i.af = load ptr, ptr %i.b, align 8
  %i.ag = load ptr, ptr %i.a, align 8
  store ptr %i.af, ptr %i.ag, align 8
  %i.ah = load ptr, ptr %i.c, align 8
  ret ptr %i.ah
}

; Function Attrs: noinline nounwind optnone uwtable
define internal ptr @new_add(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 13 uses
  %i.c = alloca ptr, align 8                      ; 14 uses
  %i.d = alloca ptr, align 8                      ; 9 uses
  %i.e = alloca ptr, align 8                      ; 2 uses
  store ptr %0, ptr %i.b, align 8
  store ptr %1, ptr %i.c, align 8
  store ptr %2, ptr %i.d, align 8
  %i.f = load ptr, ptr %i.b, align 8
  call void @add_type(ptr noundef %i.f)
  %i.g = load ptr, ptr %i.c, align 8
  call void @add_type(ptr noundef %i.g)
  %i.h = load ptr, ptr %i.b, align 8
  %3 = getelementptr inbounds nuw %struct.Node, ptr %i.h, i32 0, i32 2
  %i.i = load ptr, ptr %3, align 16
  %i.j = call zeroext i1 @is_numeric(ptr noundef %i.i)
  br i1 %i.j, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.k = load ptr, ptr %i.c, align 8
  %4 = getelementptr inbounds nuw %struct.Node, ptr %i.k, i32 0, i32 2
  %i.l = load ptr, ptr %4, align 16
  %i.m = call zeroext i1 @is_numeric(ptr noundef %i.l)
  br i1 %i.m, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.n = load ptr, ptr %i.b, align 8
  %i.o = load ptr, ptr %i.c, align 8
  %i.p = load ptr, ptr %i.d, align 8
  %i.q = call ptr @new_binary(i32 noundef 1, ptr noundef %i.n, ptr noundef %i.o, ptr noundef %i.p)
  store ptr %i.q, ptr %i.a, align 8
  br label %bb.m

bb.d:                                             ; preds = %bb.b, %bb.a
  %i.r = load ptr, ptr %i.b, align 8
  %5 = getelementptr inbounds nuw %struct.Node, ptr %i.r, i32 0, i32 2
  %i.s = load ptr, ptr %5, align 16
  %6 = getelementptr inbounds nuw %struct.Type, ptr %i.s, i32 0, i32 6
  %i.t = load ptr, ptr %6, align 8
  %i.u = icmp ne ptr %i.t, null
  br i1 %i.u, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.v = load ptr, ptr %i.c, align 8
  %7 = getelementptr inbounds nuw %struct.Node, ptr %i.v, i32 0, i32 2
  %i.w = load ptr, ptr %7, align 16
  %8 = getelementptr inbounds nuw %struct.Type, ptr %i.w, i32 0, i32 6
  %i.x = load ptr, ptr %8, align 8
  %i.y = icmp ne ptr %i.x, null
  br i1 %i.y, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.z = load ptr, ptr %i.d, align 8
  call void (ptr, ptr, ...) @error_tok(ptr noundef %i.z, ptr noundef @.str.129) #9
  unreachable

bb.g:                                             ; preds = %bb.e, %bb.d
  %i.aa = load ptr, ptr %i.b, align 8
  %9 = getelementptr inbounds nuw %struct.Node, ptr %i.aa, i32 0, i32 2
  %i.ab = load ptr, ptr %9, align 16
  %10 = getelementptr inbounds nuw %struct.Type, ptr %i.ab, i32 0, i32 6
  %i.ac = load ptr, ptr %10, align 8
  %i.ad = icmp ne ptr %i.ac, null
  br i1 %i.ad, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ae = load ptr, ptr %i.c, align 8
  %11 = getelementptr inbounds nuw %struct.Node, ptr %i.ae, i32 0, i32 2
  %i.af = load ptr, ptr %11, align 16
  %12 = getelementptr inbounds nuw %struct.Type, ptr %i.af, i32 0, i32 6
  %i.ag = load ptr, ptr %12, align 8
  %i.ah = icmp ne ptr %i.ag, null
  br i1 %i.ah, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ai = load ptr, ptr %i.b, align 8
  store ptr %i.ai, ptr %i.e, align 8
  %i.aj = load ptr, ptr %i.c, align 8
  store ptr %i.aj, ptr %i.b, align 8
  %i.ak = load ptr, ptr %i.e, align 8
  store ptr %i.ak, ptr %i.c, align 8
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %bb.g
  %i.al = load ptr, ptr %i.b, align 8
  %13 = getelementptr inbounds nuw %struct.Node, ptr %i.al, i32 0, i32 2
  %i.am = load ptr, ptr %13, align 16
  %14 = getelementptr inbounds nuw %struct.Type, ptr %i.am, i32 0, i32 6
  %i.an = load ptr, ptr %14, align 8
  %15 = getelementptr inbounds nuw %struct.Type, ptr %i.an, i32 0, i32 0
  %i.ao = load i32, ptr %15, align 8
  %i.ap = icmp eq i32 %i.ao, 13
  br i1 %i.ap, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.aq = load ptr, ptr %i.c, align 8
  %i.ar = load ptr, ptr %i.b, align 8
  %16 = getelementptr inbounds nuw %struct.Node, ptr %i.ar, i32 0, i32 2
  %i.as = load ptr, ptr %16, align 16
  %17 = getelementptr inbounds nuw %struct.Type, ptr %i.as, i32 0, i32 6
  %i.at = load ptr, ptr %17, align 8
  %18 = getelementptr inbounds nuw %struct.Type, ptr %i.at, i32 0, i32 11
  %i.au = load ptr, ptr %18, align 8
  %i.av = load ptr, ptr %i.d, align 8
  %i.aw = call ptr @new_var_node(ptr noundef %i.au, ptr noundef %i.av)
  %i.ax = load ptr, ptr %i.d, align 8
  %i.ay = call ptr @new_binary(i32 noundef 3, ptr noundef %i.aq, ptr noundef %i.aw, ptr noundef %i.ax)
  store ptr %i.ay, ptr %i.c, align 8
  %i.az = load ptr, ptr %i.b, align 8
  %i.ba = load ptr, ptr %i.c, align 8
  %i.bb = load ptr, ptr %i.d, align 8
  %i.bc = call ptr @new_binary(i32 noundef 1, ptr noundef %i.az, ptr noundef %i.ba, ptr noundef %i.bb)
  store ptr %i.bc, ptr %i.a, align 8
  br label %bb.m

bb.l:                                             ; preds = %bb.j
  %i.bd = load ptr, ptr %i.c, align 8
  %i.be = load ptr, ptr %i.b, align 8
  %19 = getelementptr inbounds nuw %struct.Node, ptr %i.be, i32 0, i32 2
  %i.bf = load ptr, ptr %19, align 16
  %20 = getelementptr inbounds nuw %struct.Type, ptr %i.bf, i32 0, i32 6
  %i.bg = load ptr, ptr %20, align 8
  %21 = getelementptr inbounds nuw %struct.Type, ptr %i.bg, i32 0, i32 1
  %i.bh = load i32, ptr %21, align 4
  %i.bi = sext i32 %i.bh to i64
  %i.bj = load ptr, ptr %i.d, align 8
  %i.bk = call ptr @new_long(i64 noundef %i.bi, ptr noundef %i.bj)
  %i.bl = load ptr, ptr %i.d, align 8
  %i.bm = call ptr @new_binary(i32 noundef 3, ptr noundef %i.bd, ptr noundef %i.bk, ptr noundef %i.bl)
  store ptr %i.bm, ptr %i.c, align 8
  %i.bn = load ptr, ptr %i.b, align 8
  %i.bo = load ptr, ptr %i.c, align 8
  %i.bp = load ptr, ptr %i.d, align 8
  %i.bq = call ptr @new_binary(i32 noundef 1, ptr noundef %i.bn, ptr noundef %i.bo, ptr noundef %i.bp)
  store ptr %i.bq, ptr %i.a, align 8
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k, %bb.c
  %i.br = load ptr, ptr %i.a, align 8
  ret ptr %i.br
}

; Function Attrs: noinline nounwind optnone uwtable
define internal ptr @new_sub(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = alloca ptr, align 8                      ; 15 uses
  %i.c = alloca ptr, align 8                      ; 15 uses
  %i.d = alloca ptr, align 8                      ; 12 uses
  %i.e = alloca ptr, align 8                      ; 3 uses
  %i.f = alloca ptr, align 8                      ; 3 uses
  %i.g = alloca ptr, align 8                      ; 3 uses
  store ptr %0, ptr %i.b, align 8
  store ptr %1, ptr %i.c, align 8
  store ptr %2, ptr %i.d, align 8
  %i.h = load ptr, ptr %i.b, align 8
  call void @add_type(ptr noundef %i.h)
  %i.i = load ptr, ptr %i.c, align 8
  call void @add_type(ptr noundef %i.i)
  %i.j = load ptr, ptr %i.b, align 8
  %3 = getelementptr inbounds nuw %struct.Node, ptr %i.j, i32 0, i32 2
  %i.k = load ptr, ptr %3, align 16
  %i.l = call zeroext i1 @is_numeric(ptr noundef %i.k)
  br i1 %i.l, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.m = load ptr, ptr %i.c, align 8
  %4 = getelementptr inbounds nuw %struct.Node, ptr %i.m, i32 0, i32 2
  %i.n = load ptr, ptr %4, align 16
  %i.o = call zeroext i1 @is_numeric(ptr noundef %i.n)
  br i1 %i.o, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.p = load ptr, ptr %i.b, align 8
  %i.q = load ptr, ptr %i.c, align 8
  %i.r = load ptr, ptr %i.d, align 8
  %i.s = call ptr @new_binary(i32 noundef 2, ptr noundef %i.p, ptr noundef %i.q, ptr noundef %i.r)
  store ptr %i.s, ptr %i.a, align 8
  br label %bb.m

bb.d:                                             ; preds = %bb.b, %bb.a
  %i.t = load ptr, ptr %i.b, align 8
  %5 = getelementptr inbounds nuw %struct.Node, ptr %i.t, i32 0, i32 2
  %i.u = load ptr, ptr %5, align 16
  %6 = getelementptr inbounds nuw %struct.Type, ptr %i.u, i32 0, i32 6
  %i.v = load ptr, ptr %6, align 8
  %7 = getelementptr inbounds nuw %struct.Type, ptr %i.v, i32 0, i32 0
  %i.w = load i32, ptr %7, align 8
end_hunk_2
begin_hunk_3_@abstract_declarator:bb.a
  %i.q = load ptr, ptr %i.b, align 8
  %i.r = load ptr, ptr %i.c, align 8
  %i.s = load ptr, ptr %i.d, align 8
  %i.t = call ptr @type_suffix(ptr noundef %i.q, ptr noundef %i.r, ptr noundef %i.s)
  store ptr %i.t, ptr %i.d, align 8
  %i.u = load ptr, ptr %i.e, align 8
  %5 = getelementptr inbounds nuw %struct.Token, ptr %i.u, i32 0, i32 1
  %i.v = load ptr, ptr %5, align 8
  %i.w = load ptr, ptr %i.d, align 8
  %i.x = call ptr @abstract_declarator(ptr noundef %i.c, ptr noundef %i.v, ptr noundef %i.w)
  store ptr %i.x, ptr %i.a, align 8
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.y = load ptr, ptr %i.b, align 8
  %i.z = load ptr, ptr %i.c, align 8
  %i.aa = load ptr, ptr %i.d, align 8
  %i.ab = call ptr @type_suffix(ptr noundef %i.y, ptr noundef %i.z, ptr noundef %i.aa)
  store ptr %i.ab, ptr %i.a, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.ac = load ptr, ptr %i.a, align 8
  ret ptr %i.ac
}

; Function Attrs: noinline nounwind optnone uwtable
define internal ptr @pointers(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 2 uses
  %i.b = alloca ptr, align 8                      ; 11 uses
  %i.c = alloca ptr, align 8                      ; 4 uses
  store ptr %0, ptr %i.a, align 8
  store ptr %1, ptr %i.b, align 8
  store ptr %2, ptr %i.c, align 8
  br label %bb.b

bb.b:                                             ; preds = %bb.k, %bb.a
  %i.d = load ptr, ptr %i.b, align 8
  %i.e = call zeroext i1 @consume(ptr noundef %i.b, ptr noundef %i.d, ptr noundef @.str.20)
  br i1 %i.e, label %bb.c, label %bb.l

bb.c:                                             ; preds = %bb.b
  %i.f = load ptr, ptr %i.c, align 8
  %i.g = call ptr @pointer_to(ptr noundef %i.f)
  store ptr %i.g, ptr %i.c, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.j, %bb.c
  %i.h = load ptr, ptr %i.b, align 8
  %i.i = call zeroext i1 @equal(ptr noundef %i.h, ptr noundef @.str.41)
  br i1 %i.i, label %bb.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.j = load ptr, ptr %i.b, align 8
  %i.k = call zeroext i1 @equal(ptr noundef %i.j, ptr noundef @.str.42)
  br i1 %i.k, label %bb.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.l = load ptr, ptr %i.b, align 8
  %i.m = call zeroext i1 @equal(ptr noundef %i.l, ptr noundef @.str.45)
  br i1 %i.m, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.n = load ptr, ptr %i.b, align 8
  %i.o = call zeroext i1 @equal(ptr noundef %i.n, ptr noundef @.str.46)
  br i1 %i.o, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.p = load ptr, ptr %i.b, align 8
  %i.q = call zeroext i1 @equal(ptr noundef %i.p, ptr noundef @.str.47)
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %bb.f, %bb.e, %bb.d
  %i.r = phi i1 [ true, %bb.g ], [ true, %bb.f ], [ true, %bb.e ], [ true, %bb.d ], [ %i.q, %bb.h ]
  br i1 %i.r, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.s = load ptr, ptr %i.b, align 8
  %3 = getelementptr inbounds nuw %struct.Token, ptr %i.s, i32 0, i32 1
  %i.t = load ptr, ptr %3, align 8
  store ptr %i.t, ptr %i.b, align 8
  br label %bb.d, !llvm.loop !24

bb.k:                                             ; preds = %bb.i
  br label %bb.b, !llvm.loop !25

bb.l:                                             ; preds = %bb.b
  %i.u = load ptr, ptr %i.b, align 8
  %i.v = load ptr, ptr %i.a, align 8
  store ptr %i.u, ptr %i.v, align 8
  %i.w = load ptr, ptr %i.c, align 8
  ret ptr %i.w
}

; Function Attrs: noinline nounwind optnone uwtable
define internal ptr @type_suffix(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %i.c = alloca ptr, align 8                      ; 6 uses
  %i.d = alloca ptr, align 8                      ; 4 uses
  store ptr %0, ptr %i.b, align 8
  store ptr %1, ptr %i.c, align 8
  store ptr %2, ptr %i.d, align 8
  %i.e = load ptr, ptr %i.c, align 8
  %i.f = call zeroext i1 @equal(ptr noundef %i.e, ptr noundef @.str.23)
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %i.b, align 8
  %i.h = load ptr, ptr %i.c, align 8
  %3 = getelementptr inbounds nuw %struct.Token, ptr %i.h, i32 0, i32 1
  %i.i = load ptr, ptr %3, align 8
  %i.j = load ptr, ptr %i.d, align 8
  %i.k = call ptr @func_params(ptr noundef %i.g, ptr noundef %i.i, ptr noundef %i.j)
  store ptr %i.k, ptr %i.a, align 8
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.l = load ptr, ptr %i.c, align 8
  %i.m = call zeroext i1 @equal(ptr noundef %i.l, ptr noundef @.str.56)
  br i1 %i.m, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.n = load ptr, ptr %i.b, align 8
  %i.o = load ptr, ptr %i.c, align 8
  %4 = getelementptr inbounds nuw %struct.Token, ptr %i.o, i32 0, i32 1
  %i.p = load ptr, ptr %4, align 8
  %i.q = load ptr, ptr %i.d, align 8
  %i.r = call ptr @array_dimensions(ptr noundef %i.n, ptr noundef %i.p, ptr noundef %i.q)
  store ptr %i.r, ptr %i.a, align 8
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.s = load ptr, ptr %i.c, align 8
  %i.t = load ptr, ptr %i.b, align 8
  store ptr %i.s, ptr %i.t, align 8
  %i.u = load ptr, ptr %i.d, align 8
  store ptr %i.u, ptr %i.a, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.b
  %i.v = load ptr, ptr %i.a, align 8
  ret ptr %i.v
}

declare zeroext i1 @consume(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @pointer_to(ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optnone uwtable
define internal ptr @func_params(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 3 uses
  %i.b = alloca ptr, align 8                      ; 3 uses
  %i.c = alloca ptr, align 8                      ; 16 uses
  %i.d = alloca ptr, align 8                      ; 7 uses
  %3 = alloca %struct.Type, align 8               ; 5 uses
  %i.e = alloca ptr, align 8                      ; 5 uses
  %i.f = alloca i8, align 1                       ; 4 uses
  %i.g = alloca ptr, align 8                      ; 13 uses
  %i.h = alloca ptr, align 8                      ; 3 uses
  store ptr %0, ptr %i.b, align 8
  store ptr %1, ptr %i.c, align 8
  store ptr %2, ptr %i.d, align 8
  %i.i = load ptr, ptr %i.c, align 8
  %i.j = call zeroext i1 @equal(ptr noundef %i.i, ptr noundef @.str.26)
  br i1 %i.j, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.k = load ptr, ptr %i.c, align 8
  %4 = getelementptr inbounds nuw %struct.Token, ptr %i.k, i32 0, i32 1
  %i.l = load ptr, ptr %4, align 8
  %i.m = call zeroext i1 @equal(ptr noundef %i.l, ptr noundef @.str.24)
  br i1 %i.m, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.n = load ptr, ptr %i.c, align 8
  %5 = getelementptr inbounds nuw %struct.Token, ptr %i.n, i32 0, i32 1
  %i.o = load ptr, ptr %5, align 8
  %6 = getelementptr inbounds nuw %struct.Token, ptr %i.o, i32 0, i32 1
  %i.p = load ptr, ptr %6, align 8
  %i.q = load ptr, ptr %i.b, align 8
  store ptr %i.p, ptr %i.q, align 8
  %i.r = load ptr, ptr %i.d, align 8
  %i.s = call ptr @func_type(ptr noundef %i.r)
  store ptr %i.s, ptr %i.a, align 8
  br label %bb.s

bb.d:                                             ; preds = %bb.b, %bb.a
  call void @llvm.memset.p0.i64(ptr align 8 %3, i8 0, i64 120, i1 false)
  store ptr %3, ptr %i.e, align 8
  store i8 0, ptr %i.f, align 1
  br label %bb.e

bb.e:                                             ; preds = %bb.o, %bb.d
  %i.t = load ptr, ptr %i.c, align 8
  %i.u = call zeroext i1 @equal(ptr noundef %i.t, ptr noundef @.str.24)
  %i.v = xor i1 %i.u, true
  br i1 %i.v, label %bb.f, label %.loopexit

bb.f:                                             ; preds = %bb.e
  %i.w = load ptr, ptr %i.e, align 8
  %i.x = icmp ne ptr %i.w, %3
  br i1 %i.x, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.y = load ptr, ptr %i.c, align 8
  %i.z = call ptr @skip(ptr noundef %i.y, ptr noundef @.str.57)
  store ptr %i.z, ptr %i.c, align 8
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.aa = load ptr, ptr %i.c, align 8
  %i.ab = call zeroext i1 @equal(ptr noundef %i.aa, ptr noundef @.str.58)
  br i1 %i.ab, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store i8 1, ptr %i.f, align 1
  %i.ac = load ptr, ptr %i.c, align 8
  %7 = getelementptr inbounds nuw %struct.Token, ptr %i.ac, i32 0, i32 1
  %i.ad = load ptr, ptr %7, align 8
  store ptr %i.ad, ptr %i.c, align 8
  %i.ae = load ptr, ptr %i.c, align 8
  %i.af = call ptr @skip(ptr noundef %i.ae, ptr noundef @.str.24) ; 0 uses
  br label %bb.p

bb.j:                                             ; preds = %bb.h
  %i.ag = load ptr, ptr %i.c, align 8
  %i.ah = call ptr @declspec(ptr noundef %i.c, ptr noundef %i.ag, ptr noundef null)
  store ptr %i.ah, ptr %i.g, align 8
  %i.ai = load ptr, ptr %i.c, align 8
  %i.aj = load ptr, ptr %i.g, align 8
  %i.ak = call ptr @declarator(ptr noundef %i.c, ptr noundef %i.ai, ptr noundef %i.aj)
  store ptr %i.ak, ptr %i.g, align 8
  %i.al = load ptr, ptr %i.g, align 8
  %8 = getelementptr inbounds nuw %struct.Type, ptr %i.al, i32 0, i32 7
  %i.am = load ptr, ptr %8, align 8
  store ptr %i.am, ptr %i.h, align 8
  %i.an = load ptr, ptr %i.g, align 8
  %9 = getelementptr inbounds nuw %struct.Type, ptr %i.an, i32 0, i32 0
  %i.ao = load i32, ptr %9, align 8
  %i.ap = icmp eq i32 %i.ao, 12
  br i1 %i.ap, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.aq = load ptr, ptr %i.g, align 8
  %10 = getelementptr inbounds nuw %struct.Type, ptr %i.aq, i32 0, i32 6
  %i.ar = load ptr, ptr %10, align 8
  %i.as = call ptr @pointer_to(ptr noundef %i.ar)
  store ptr %i.as, ptr %i.g, align 8
  %i.at = load ptr, ptr %i.h, align 8
  %i.au = load ptr, ptr %i.g, align 8
  %11 = getelementptr inbounds nuw %struct.Type, ptr %i.au, i32 0, i32 7
  store ptr %i.at, ptr %11, align 8
  br label %bb.o

bb.l:                                             ; preds = %bb.j
  %i.av = load ptr, ptr %i.g, align 8
  %12 = getelementptr inbounds nuw %struct.Type, ptr %i.av, i32 0, i32 0
  %i.aw = load i32, ptr %12, align 8
  %i.ax = icmp eq i32 %i.aw, 11
  br i1 %i.ax, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.ay = load ptr, ptr %i.g, align 8
  %i.az = call ptr @pointer_to(ptr noundef %i.ay)
  store ptr %i.az, ptr %i.g, align 8
  %i.ba = load ptr, ptr %i.h, align 8
  %i.bb = load ptr, ptr %i.g, align 8
  %13 = getelementptr inbounds nuw %struct.Type, ptr %i.bb, i32 0, i32 7
  store ptr %i.ba, ptr %13, align 8
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.k
  %i.bc = load ptr, ptr %i.g, align 8
  %i.bd = call ptr @copy_type(ptr noundef %i.bc)  ; 2 uses
  %i.be = load ptr, ptr %i.e, align 8
  %14 = getelementptr inbounds nuw %struct.Type, ptr %i.be, i32 0, i32 18
  store ptr %i.bd, ptr %14, align 8
  store ptr %i.bd, ptr %i.e, align 8
  br label %bb.e, !llvm.loop !26

.loopexit:                                        ; preds = %bb.e
  br label %bb.p

bb.p:                                             ; preds = %.loopexit, %bb.i
  %i.bf = load ptr, ptr %i.e, align 8
  %i.bg = icmp eq ptr %i.bf, %3
  br i1 %i.bg, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  store i8 1, ptr %i.f, align 1
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.bh = load ptr, ptr %i.d, align 8
  %i.bi = call ptr @func_type(ptr noundef %i.bh)
  store ptr %i.bi, ptr %i.d, align 8
  %15 = getelementptr inbounds nuw %struct.Type, ptr %3, i32 0, i32 18
  %i.bj = load ptr, ptr %15, align 8
  %i.bk = load ptr, ptr %i.d, align 8
  %16 = getelementptr inbounds nuw %struct.Type, ptr %i.bk, i32 0, i32 16
  store ptr %i.bj, ptr %16, align 8
  %i.bl = load i8, ptr %i.f, align 1
  %i.bm = icmp ne i8 %i.bl, 0
  %i.bn = load ptr, ptr %i.d, align 8
  %17 = getelementptr inbounds nuw %struct.Type, ptr %i.bn, i32 0, i32 17
  %i.bo = zext i1 %i.bm to i8
  store i8 %i.bo, ptr %17, align 8
  %i.bp = load ptr, ptr %i.c, align 8
  %18 = getelementptr inbounds nuw %struct.Token, ptr %i.bp, i32 0, i32 1
  %i.bq = load ptr, ptr %18, align 8
  %i.br = load ptr, ptr %i.b, align 8
  store ptr %i.bq, ptr %i.br, align 8
  %i.bs = load ptr, ptr %i.d, align 8
  store ptr %i.bs, ptr %i.a, align 8
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.c
  %i.bt = load ptr, ptr %i.a, align 8
  ret ptr %i.bt
}

; Function Attrs: noinline nounwind optnone uwtable
define internal ptr @array_dimensions(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 3 uses
  %i.c = alloca ptr, align 8                      ; 12 uses
  %i.d = alloca ptr, align 8                      ; 9 uses
  %i.e = alloca ptr, align 8                      ; 4 uses
  store ptr %0, ptr %i.b, align 8
  store ptr %1, ptr %i.c, align 8
  store ptr %2, ptr %i.d, align 8
  br label %bb.b

bb.b:                                             ; preds = %bb.e, %bb.a
  %i.f = load ptr, ptr %i.c, align 8
  %i.g = call zeroext i1 @equal(ptr noundef %i.f, ptr noundef @.str.36)
  br i1 %i.g, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = load ptr, ptr %i.c, align 8
  %i.i = call zeroext i1 @equal(ptr noundef %i.h, ptr noundef @.str.45)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.j = phi i1 [ true, %bb.b ], [ %i.i, %bb.c ]
  br i1 %i.j, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.k = load ptr, ptr %i.c, align 8
  %3 = getelementptr inbounds nuw %struct.Token, ptr %i.k, i32 0, i32 1
  %i.l = load ptr, ptr %3, align 8
  store ptr %i.l, ptr %i.c, align 8
  br label %bb.b, !llvm.loop !27

bb.f:                                             ; preds = %bb.d
  %i.m = load ptr, ptr %i.c, align 8
  %i.n = call zeroext i1 @equal(ptr noundef %i.m, ptr noundef @.str.59)
  br i1 %i.n, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.o = load ptr, ptr %i.b, align 8
  %i.p = load ptr, ptr %i.c, align 8
  %4 = getelementptr inbounds nuw %struct.Token, ptr %i.p, i32 0, i32 1
  %i.q = load ptr, ptr %4, align 8
  %i.r = load ptr, ptr %i.d, align 8
  %i.s = call ptr @type_suffix(ptr noundef %i.o, ptr noundef %i.q, ptr noundef %i.r)
  store ptr %i.s, ptr %i.d, align 8
  %i.t = load ptr, ptr %i.d, align 8
  %i.u = call ptr @array_of(ptr noundef %i.t, i32 noundef -1)
  store ptr %i.u, ptr %i.a, align 8
  br label %bb.l

bb.h:                                             ; preds = %bb.f
  %i.v = load ptr, ptr %i.c, align 8
  %i.w = call ptr @conditional(ptr noundef %i.c, ptr noundef %i.v)
  store ptr %i.w, ptr %i.e, align 8
  %i.x = load ptr, ptr %i.c, align 8
  %i.y = call ptr @skip(ptr noundef %i.x, ptr noundef @.str.59)
  store ptr %i.y, ptr %i.c, align 8
  %i.z = load ptr, ptr %i.b, align 8
  %i.aa = load ptr, ptr %i.c, align 8
  %i.ab = load ptr, ptr %i.d, align 8
  %i.ac = call ptr @type_suffix(ptr noundef %i.z, ptr noundef %i.aa, ptr noundef %i.ab)
  store ptr %i.ac, ptr %i.d, align 8
  %i.ad = load ptr, ptr %i.d, align 8
  %5 = getelementptr inbounds nuw %struct.Type, ptr %i.ad, i32 0, i32 0
  %i.ae = load i32, ptr %5, align 8
  %i.af = icmp eq i32 %i.ae, 13
  br i1 %i.af, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ag = load ptr, ptr %i.e, align 8
  %i.ah = call zeroext i1 @is_const_expr(ptr noundef %i.ag)
  br i1 %i.ah, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.ai = load ptr, ptr %i.d, align 8
  %i.aj = load ptr, ptr %i.e, align 8
  %i.ak = call ptr @vla_of(ptr noundef %i.ai, ptr noundef %i.aj)
  store ptr %i.ak, ptr %i.a, align 8
  br label %bb.l

bb.k:                                             ; preds = %bb.i
  %i.al = load ptr, ptr %i.d, align 8
  %i.am = load ptr, ptr %i.e, align 8
  %i.an = call i64 @eval(ptr noundef %i.am)
  %i.ao = trunc i64 %i.an to i32
  %i.ap = call ptr @array_of(ptr noundef %i.al, i32 noundef %i.ao)
  store ptr %i.ap, ptr %i.a, align 8
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j, %bb.g
  %i.aq = load ptr, ptr %i.a, align 8
  ret ptr %i.aq
}

declare ptr @func_type(ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optnone uwtable
define internal ptr @declarator(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 3 uses
  %i.b = alloca ptr, align 8                      ; 3 uses
  %i.c = alloca ptr, align 8                      ; 16 uses
  %i.d = alloca ptr, align 8                      ; 11 uses
  %i.e = alloca ptr, align 8                      ; 3 uses
  %3 = alloca %struct.Type, align 8               ; 2 uses
  %i.f = alloca ptr, align 8                      ; 3 uses
  %i.g = alloca ptr, align 8                      ; 2 uses
  store ptr %0, ptr %i.b, align 8
  store ptr %1, ptr %i.c, align 8
  store ptr %2, ptr %i.d, align 8
  %i.h = load ptr, ptr %i.c, align 8
  %i.i = load ptr, ptr %i.d, align 8
  %i.j = call ptr @pointers(ptr noundef %i.c, ptr noundef %i.h, ptr noundef %i.i)
  store ptr %i.j, ptr %i.d, align 8
  %i.k = load ptr, ptr %i.c, align 8
  %i.l = call zeroext i1 @equal(ptr noundef %i.k, ptr noundef @.str.23)
  br i1 %i.l, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.m = load ptr, ptr %i.c, align 8
  store ptr %i.m, ptr %i.e, align 8
  call void @llvm.memset.p0.i64(ptr align 8 %3, i8 0, i64 120, i1 false)
  %i.n = load ptr, ptr %i.e, align 8
  %4 = getelementptr inbounds nuw %struct.Token, ptr %i.n, i32 0, i32 1
  %i.o = load ptr, ptr %4, align 8
  %i.p = call ptr @declarator(ptr noundef %i.c, ptr noundef %i.o, ptr noundef %3) ; 0 uses
  %i.q = load ptr, ptr %i.c, align 8
  %i.r = call ptr @skip(ptr noundef %i.q, ptr noundef @.str.24)
  store ptr %i.r, ptr %i.c, align 8
  %i.s = load ptr, ptr %i.b, align 8
  %i.t = load ptr, ptr %i.c, align 8
  %i.u = load ptr, ptr %i.d, align 8
  %i.v = call ptr @type_suffix(ptr noundef %i.s, ptr noundef %i.t, ptr noundef %i.u)
  store ptr %i.v, ptr %i.d, align 8
  %i.w = load ptr, ptr %i.e, align 8
  %5 = getelementptr inbounds nuw %struct.Token, ptr %i.w, i32 0, i32 1
  %i.x = load ptr, ptr %5, align 8
  %i.y = load ptr, ptr %i.d, align 8
  %i.z = call ptr @declarator(ptr noundef %i.c, ptr noundef %i.x, ptr noundef %i.y)
  store ptr %i.z, ptr %i.a, align 8
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  store ptr null, ptr %i.f, align 8
  %i.aa = load ptr, ptr %i.c, align 8
  store ptr %i.aa, ptr %i.g, align 8
  %i.ab = load ptr, ptr %i.c, align 8
  %6 = getelementptr inbounds nuw %struct.Token, ptr %i.ab, i32 0, i32 0
  %i.ac = load i32, ptr %6, align 16
  %i.ad = icmp eq i32 %i.ac, 0
  br i1 %i.ad, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.ae = load ptr, ptr %i.c, align 8
  store ptr %i.ae, ptr %i.f, align 8
  %i.af = load ptr, ptr %i.c, align 8
  %7 = getelementptr inbounds nuw %struct.Token, ptr %i.af, i32 0, i32 1
  %i.ag = load ptr, ptr %7, align 8
  store ptr %i.ag, ptr %i.c, align 8
  br label %bb.e

end_hunk_3
begin_hunk_4_@to_assign:bb.a
  %47 = getelementptr inbounds nuw %struct.Node, ptr %i.gn, i32 0, i32 1
  store ptr %i.gm, ptr %47, align 8
  store ptr %i.gm, ptr %i.i, align 8
  %i.go = load ptr, ptr %i.c, align 8
  %i.gp = call ptr @new_node(i32 noundef 39, ptr noundef %i.go)
  store ptr %i.gp, ptr %i.q, align 8
  %48 = getelementptr inbounds nuw %struct.Node, ptr %1, i32 0, i32 1
  %i.gq = load ptr, ptr %48, align 8
  %i.gr = load ptr, ptr %i.q, align 8
  %49 = getelementptr inbounds nuw %struct.Node, ptr %i.gr, i32 0, i32 13
  store ptr %i.gq, ptr %49, align 8
  %i.gs = load ptr, ptr %i.q, align 8
  store ptr %i.gs, ptr %i.a, align 8
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.gt = load ptr, ptr %i.b, align 8
  %50 = getelementptr inbounds nuw %struct.Node, ptr %i.gt, i32 0, i32 4
  %i.gu = load ptr, ptr %50, align 16
  %51 = getelementptr inbounds nuw %struct.Node, ptr %i.gu, i32 0, i32 2
  %i.gv = load ptr, ptr %51, align 16
  %i.gw = call ptr @pointer_to(ptr noundef %i.gv)
  %i.gx = call ptr @new_lvar(ptr noundef @.str.4, ptr noundef %i.gw)
  store ptr %i.gx, ptr %i.r, align 8
  %i.gy = load ptr, ptr %i.r, align 8
  %i.gz = load ptr, ptr %i.c, align 8
  %i.ha = call ptr @new_var_node(ptr noundef %i.gy, ptr noundef %i.gz)
  %i.hb = load ptr, ptr %i.b, align 8
  %52 = getelementptr inbounds nuw %struct.Node, ptr %i.hb, i32 0, i32 4
  %i.hc = load ptr, ptr %52, align 16
  %i.hd = load ptr, ptr %i.c, align 8
  %i.he = call ptr @new_unary(i32 noundef 20, ptr noundef %i.hc, ptr noundef %i.hd)
  %i.hf = load ptr, ptr %i.c, align 8
  %i.hg = call ptr @new_binary(i32 noundef 16, ptr noundef %i.ha, ptr noundef %i.he, ptr noundef %i.hf)
  store ptr %i.hg, ptr %i.s, align 8
  %i.hh = load ptr, ptr %i.r, align 8
  %i.hi = load ptr, ptr %i.c, align 8
  %i.hj = call ptr @new_var_node(ptr noundef %i.hh, ptr noundef %i.hi)
  %i.hk = load ptr, ptr %i.c, align 8
  %i.hl = call ptr @new_unary(i32 noundef 21, ptr noundef %i.hj, ptr noundef %i.hk)
  %i.hm = load ptr, ptr %i.b, align 8
  %53 = getelementptr inbounds nuw %struct.Node, ptr %i.hm, i32 0, i32 0
  %i.hn = load i32, ptr %53, align 16
  %i.ho = load ptr, ptr %i.r, align 8
  %i.hp = load ptr, ptr %i.c, align 8
  %i.hq = call ptr @new_var_node(ptr noundef %i.ho, ptr noundef %i.hp)
  %i.hr = load ptr, ptr %i.c, align 8
  %i.hs = call ptr @new_unary(i32 noundef 21, ptr noundef %i.hq, ptr noundef %i.hr)
  %i.ht = load ptr, ptr %i.b, align 8
  %54 = getelementptr inbounds nuw %struct.Node, ptr %i.ht, i32 0, i32 5
  %i.hu = load ptr, ptr %54, align 8
  %i.hv = load ptr, ptr %i.c, align 8
  %i.hw = call ptr @new_binary(i32 noundef %i.hn, ptr noundef %i.hs, ptr noundef %i.hu, ptr noundef %i.hv)
  %i.hx = load ptr, ptr %i.c, align 8
  %i.hy = call ptr @new_binary(i32 noundef 16, ptr noundef %i.hl, ptr noundef %i.hw, ptr noundef %i.hx)
  store ptr %i.hy, ptr %i.t, align 8
  %i.hz = load ptr, ptr %i.s, align 8
  %i.ia = load ptr, ptr %i.t, align 8
  %i.ib = load ptr, ptr %i.c, align 8
  %i.ic = call ptr @new_binary(i32 noundef 18, ptr noundef %i.hz, ptr noundef %i.ia, ptr noundef %i.ib)
  store ptr %i.ic, ptr %i.a, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.b
  %i.id = load ptr, ptr %i.a, align 8
  ret ptr %i.id
}

; Function Attrs: noinline nounwind optnone uwtable
define internal ptr @new_num(i64 noundef %0, ptr noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 2 uses
  %i.b = alloca ptr, align 8                      ; 2 uses
  %i.c = alloca ptr, align 8                      ; 3 uses
  store i64 %0, ptr %i.a, align 8
  store ptr %1, ptr %i.b, align 8
  %i.d = load ptr, ptr %i.b, align 8
  %i.e = call ptr @new_node(i32 noundef 42, ptr noundef %i.d)
  store ptr %i.e, ptr %i.c, align 8
  %i.f = load i64, ptr %i.a, align 8
  %i.g = load ptr, ptr %i.c, align 8
  %2 = getelementptr inbounds nuw %struct.Node, ptr %i.g, i32 0, i32 33
  store i64 %i.f, ptr %2, align 8
  %i.h = load ptr, ptr %i.c, align 8
  ret ptr %i.h
}

; Function Attrs: noinline nounwind optnone uwtable
define internal ptr @get_ident(ptr noundef %0) unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  store ptr %0, ptr %i.a, align 8
  %i.b = load ptr, ptr %i.a, align 8
  %1 = getelementptr inbounds nuw %struct.Token, ptr %i.b, i32 0, i32 0
  %i.c = load i32, ptr %1, align 16
  %i.d = icmp ne i32 %i.c, 0
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %i.a, align 8
  call void (ptr, ptr, ...) @error_tok(ptr noundef %i.e, ptr noundef @.str.66) #9
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %i.a, align 8
  %2 = getelementptr inbounds nuw %struct.Token, ptr %i.f, i32 0, i32 4
  %i.g = load ptr, ptr %2, align 16
  %i.h = load ptr, ptr %i.a, align 8
  %3 = getelementptr inbounds nuw %struct.Token, ptr %i.h, i32 0, i32 5
  %i.i = load i32, ptr %3, align 8
  %i.j = sext i32 %i.i to i64
  %i.k = call noalias ptr @strndup(ptr noundef %i.g, i64 noundef %i.j) #11
  ret ptr %i.k
}

; Function Attrs: noinline nounwind optnone uwtable
define internal ptr @postfix(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %i.c = alloca ptr, align 8                      ; 40 uses
  %i.d = alloca ptr, align 8                      ; 3 uses
  %i.e = alloca ptr, align 8                      ; 3 uses
  %i.f = alloca ptr, align 8                      ; 3 uses
  %i.g = alloca ptr, align 8                      ; 3 uses
  %i.h = alloca ptr, align 8                      ; 2 uses
  %i.i = alloca ptr, align 8                      ; 2 uses
  %i.j = alloca ptr, align 8                      ; 16 uses
  %i.k = alloca ptr, align 8                      ; 3 uses
  %i.l = alloca ptr, align 8                      ; 2 uses
  store ptr %0, ptr %i.b, align 8
  store ptr %1, ptr %i.c, align 8
  %i.m = load ptr, ptr %i.c, align 8
  %i.n = call zeroext i1 @equal(ptr noundef %i.m, ptr noundef @.str.23)
  br i1 %i.n, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.o = load ptr, ptr %i.c, align 8
  %2 = getelementptr inbounds nuw %struct.Token, ptr %i.o, i32 0, i32 1
  %i.p = load ptr, ptr %2, align 8
  %i.q = call zeroext i1 @is_typename(ptr noundef %i.p)
  br i1 %i.q, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.r = load ptr, ptr %i.c, align 8
  store ptr %i.r, ptr %i.d, align 8
  %i.s = load ptr, ptr %i.c, align 8
  %3 = getelementptr inbounds nuw %struct.Token, ptr %i.s, i32 0, i32 1
  %i.t = load ptr, ptr %3, align 8
  %i.u = call ptr @typename(ptr noundef %i.c, ptr noundef %i.t)
  store ptr %i.u, ptr %i.e, align 8
  %i.v = load ptr, ptr %i.c, align 8
  %i.w = call ptr @skip(ptr noundef %i.v, ptr noundef @.str.24)
  store ptr %i.w, ptr %i.c, align 8
  %i.x = load ptr, ptr @scope, align 8
  %4 = getelementptr inbounds nuw %struct.Scope, ptr %i.x, i32 0, i32 0
  %i.y = load ptr, ptr %4, align 8
  %i.z = icmp eq ptr %i.y, null
  br i1 %i.z, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.aa = load ptr, ptr %i.e, align 8
  %i.ab = call ptr @new_anon_gvar(ptr noundef %i.aa)
  store ptr %i.ab, ptr %i.f, align 8
  %i.ac = load ptr, ptr %i.b, align 8
  %i.ad = load ptr, ptr %i.c, align 8
  %i.ae = load ptr, ptr %i.f, align 8
  call void @gvar_initializer(ptr noundef %i.ac, ptr noundef %i.ad, ptr noundef %i.ae)
  %i.af = load ptr, ptr %i.f, align 8
  %i.ag = load ptr, ptr %i.d, align 8
  %i.ah = call ptr @new_var_node(ptr noundef %i.af, ptr noundef %i.ag)
  store ptr %i.ah, ptr %i.a, align 8
  br label %bb.t

bb.e:                                             ; preds = %bb.c
  %i.ai = load ptr, ptr %i.e, align 8
  %i.aj = call ptr @new_lvar(ptr noundef @.str.4, ptr noundef %i.ai)
  store ptr %i.aj, ptr %i.g, align 8
  %i.ak = load ptr, ptr %i.b, align 8
  %i.al = load ptr, ptr %i.c, align 8
  %i.am = load ptr, ptr %i.g, align 8
  %i.an = call ptr @lvar_initializer(ptr noundef %i.ak, ptr noundef %i.al, ptr noundef %i.am)
  store ptr %i.an, ptr %i.h, align 8
  %i.ao = load ptr, ptr %i.g, align 8
  %i.ap = load ptr, ptr %i.c, align 8
  %i.aq = call ptr @new_var_node(ptr noundef %i.ao, ptr noundef %i.ap)
  store ptr %i.aq, ptr %i.i, align 8
  %i.ar = load ptr, ptr %i.h, align 8
  %i.as = load ptr, ptr %i.i, align 8
  %i.at = load ptr, ptr %i.d, align 8
  %i.au = call ptr @new_binary(i32 noundef 18, ptr noundef %i.ar, ptr noundef %i.as, ptr noundef %i.at)
  store ptr %i.au, ptr %i.a, align 8
  br label %bb.t

bb.f:                                             ; preds = %bb.b, %bb.a
  %i.av = load ptr, ptr %i.c, align 8
  %i.aw = call ptr @primary(ptr noundef %i.c, ptr noundef %i.av)
  store ptr %i.aw, ptr %i.j, align 8
  br label %bb.g

bb.g:                                             ; preds = %.backedge, %bb.f
  %i.ax = load ptr, ptr %i.c, align 8
  %i.ay = call zeroext i1 @equal(ptr noundef %i.ax, ptr noundef @.str.23)
  br i1 %i.ay, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.az = load ptr, ptr %i.c, align 8
  %5 = getelementptr inbounds nuw %struct.Token, ptr %i.az, i32 0, i32 1
  %i.ba = load ptr, ptr %5, align 8
  %i.bb = load ptr, ptr %i.j, align 8
  %i.bc = call ptr @funcall(ptr noundef %i.c, ptr noundef %i.ba, ptr noundef %i.bb)
  store ptr %i.bc, ptr %i.j, align 8
  br label %.backedge

.backedge:                                        ; preds = %bb.h, %bb.j, %bb.l, %bb.n, %bb.p, %bb.r
  br label %bb.g

bb.i:                                             ; preds = %bb.g
  %i.bd = load ptr, ptr %i.c, align 8
  %i.be = call zeroext i1 @equal(ptr noundef %i.bd, ptr noundef @.str.56)
  br i1 %i.be, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.bf = load ptr, ptr %i.c, align 8
  store ptr %i.bf, ptr %i.k, align 8
  %i.bg = load ptr, ptr %i.c, align 8
  %6 = getelementptr inbounds nuw %struct.Token, ptr %i.bg, i32 0, i32 1
  %i.bh = load ptr, ptr %6, align 8
  %i.bi = call ptr @expr(ptr noundef %i.c, ptr noundef %i.bh)
  store ptr %i.bi, ptr %i.l, align 8
  %i.bj = load ptr, ptr %i.c, align 8
  %i.bk = call ptr @skip(ptr noundef %i.bj, ptr noundef @.str.59)
  store ptr %i.bk, ptr %i.c, align 8
  %i.bl = load ptr, ptr %i.j, align 8
  %i.bm = load ptr, ptr %i.l, align 8
  %i.bn = load ptr, ptr %i.k, align 8
  %i.bo = call ptr @new_add(ptr noundef %i.bl, ptr noundef %i.bm, ptr noundef %i.bn)
  %i.bp = load ptr, ptr %i.k, align 8
  %i.bq = call ptr @new_unary(i32 noundef 21, ptr noundef %i.bo, ptr noundef %i.bp)
  store ptr %i.bq, ptr %i.j, align 8
  br label %.backedge

bb.k:                                             ; preds = %bb.i
  %i.br = load ptr, ptr %i.c, align 8
  %i.bs = call zeroext i1 @equal(ptr noundef %i.br, ptr noundef @.str.67)
  br i1 %i.bs, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.bt = load ptr, ptr %i.j, align 8
  %i.bu = load ptr, ptr %i.c, align 8
  %7 = getelementptr inbounds nuw %struct.Token, ptr %i.bu, i32 0, i32 1
  %i.bv = load ptr, ptr %7, align 8
  %i.bw = call ptr @struct_ref(ptr noundef %i.bt, ptr noundef %i.bv)
  store ptr %i.bw, ptr %i.j, align 8
  %i.bx = load ptr, ptr %i.c, align 8
  %8 = getelementptr inbounds nuw %struct.Token, ptr %i.bx, i32 0, i32 1
  %i.by = load ptr, ptr %8, align 8
  %9 = getelementptr inbounds nuw %struct.Token, ptr %i.by, i32 0, i32 1
  %i.bz = load ptr, ptr %9, align 8
  store ptr %i.bz, ptr %i.c, align 8
  br label %.backedge

bb.m:                                             ; preds = %bb.k
  %i.ca = load ptr, ptr %i.c, align 8
  %i.cb = call zeroext i1 @equal(ptr noundef %i.ca, ptr noundef @.str.68)
  br i1 %i.cb, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.cc = load ptr, ptr %i.j, align 8
  %i.cd = load ptr, ptr %i.c, align 8
  %i.ce = call ptr @new_unary(i32 noundef 21, ptr noundef %i.cc, ptr noundef %i.cd)
  store ptr %i.ce, ptr %i.j, align 8
  %i.cf = load ptr, ptr %i.j, align 8
  %i.cg = load ptr, ptr %i.c, align 8
  %10 = getelementptr inbounds nuw %struct.Token, ptr %i.cg, i32 0, i32 1
  %i.ch = load ptr, ptr %10, align 8
  %i.ci = call ptr @struct_ref(ptr noundef %i.cf, ptr noundef %i.ch)
  store ptr %i.ci, ptr %i.j, align 8
  %i.cj = load ptr, ptr %i.c, align 8
  %11 = getelementptr inbounds nuw %struct.Token, ptr %i.cj, i32 0, i32 1
  %i.ck = load ptr, ptr %11, align 8
  %12 = getelementptr inbounds nuw %struct.Token, ptr %i.ck, i32 0, i32 1
  %i.cl = load ptr, ptr %12, align 8
  store ptr %i.cl, ptr %i.c, align 8
  br label %.backedge

bb.o:                                             ; preds = %bb.m
  %i.cm = load ptr, ptr %i.c, align 8
  %i.cn = call zeroext i1 @equal(ptr noundef %i.cm, ptr noundef @.str.63)
  br i1 %i.cn, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.co = load ptr, ptr %i.j, align 8
  %i.cp = load ptr, ptr %i.c, align 8
  %i.cq = call ptr @new_inc_dec(ptr noundef %i.co, ptr noundef %i.cp, i32 noundef 1)
  store ptr %i.cq, ptr %i.j, align 8
  %i.cr = load ptr, ptr %i.c, align 8
  %13 = getelementptr inbounds nuw %struct.Token, ptr %i.cr, i32 0, i32 1
  %i.cs = load ptr, ptr %13, align 8
  store ptr %i.cs, ptr %i.c, align 8
  br label %.backedge

bb.q:                                             ; preds = %bb.o
  %i.ct = load ptr, ptr %i.c, align 8
  %i.cu = call zeroext i1 @equal(ptr noundef %i.ct, ptr noundef @.str.64)
  br i1 %i.cu, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.cv = load ptr, ptr %i.j, align 8
  %i.cw = load ptr, ptr %i.c, align 8
  %i.cx = call ptr @new_inc_dec(ptr noundef %i.cv, ptr noundef %i.cw, i32 noundef -1)
  store ptr %i.cx, ptr %i.j, align 8
  %i.cy = load ptr, ptr %i.c, align 8
  %14 = getelementptr inbounds nuw %struct.Token, ptr %i.cy, i32 0, i32 1
  %i.cz = load ptr, ptr %14, align 8
  store ptr %i.cz, ptr %i.c, align 8
  br label %.backedge

bb.s:                                             ; preds = %bb.q
  %i.da = load ptr, ptr %i.c, align 8
  %i.db = load ptr, ptr %i.b, align 8
  store ptr %i.da, ptr %i.db, align 8
  %i.dc = load ptr, ptr %i.j, align 8
  store ptr %i.dc, ptr %i.a, align 8
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.e, %bb.d
  %i.dd = load ptr, ptr %i.a, align 8
  ret ptr %i.dd
}

; Function Attrs: noinline nounwind optnone uwtable
define internal ptr @new_unique_name() unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr @new_unique_name.id, align 4 ; 2 uses
  %i.b = add nsw i32 %i.a, 1
  store i32 %i.b, ptr @new_unique_name.id, align 4
  %i.c = call ptr (ptr, ...) @format(ptr noundef @.str.65, i32 noundef %i.a)
  ret ptr %i.c
}

declare ptr @format(ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write)
declare noalias ptr @strndup(ptr noundef readonly captures(none), i64 noundef) local_unnamed_addr #5

; Function Attrs: noinline nounwind optnone uwtable
define internal ptr @new_anon_gvar(ptr noundef %0) unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 2 uses
  store ptr %0, ptr %i.a, align 8
  %i.b = call ptr @new_unique_name()
  %i.c = load ptr, ptr %i.a, align 8
  %i.d = call ptr @new_gvar(ptr noundef %i.b, ptr noundef %i.c)
  ret ptr %i.d
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gvar_initializer(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 2 uses
  %i.b = alloca ptr, align 8                      ; 2 uses
  %i.c = alloca ptr, align 8                      ; 7 uses
  %i.d = alloca ptr, align 8                      ; 2 uses
  %3 = alloca %struct.Relocation, align 8         ; 3 uses
  %i.e = alloca ptr, align 8                      ; 3 uses
  store ptr %0, ptr %i.a, align 8
  store ptr %1, ptr %i.b, align 8
  store ptr %2, ptr %i.c, align 8
  %i.f = load ptr, ptr %i.a, align 8
  %i.g = load ptr, ptr %i.b, align 8
  %i.h = load ptr, ptr %i.c, align 8
  %4 = getelementptr inbounds nuw %struct.Obj, ptr %i.h, i32 0, i32 2
  %i.i = load ptr, ptr %4, align 8
  %i.j = load ptr, ptr %i.c, align 8
  %5 = getelementptr inbounds nuw %struct.Obj, ptr %i.j, i32 0, i32 2
  %i.k = call ptr @initializer(ptr noundef %i.f, ptr noundef %i.g, ptr noundef %i.i, ptr noundef %5)
  store ptr %i.k, ptr %i.d, align 8
  call void @llvm.memset.p0.i64(ptr align 8 %3, i8 0, i64 32, i1 false)
  %i.l = load ptr, ptr %i.c, align 8
  %6 = getelementptr inbounds nuw %struct.Obj, ptr %i.l, i32 0, i32 2
  %i.m = load ptr, ptr %6, align 8
  %7 = getelementptr inbounds nuw %struct.Type, ptr %i.m, i32 0, i32 1
  %i.n = load i32, ptr %7, align 4
  %i.o = sext i32 %i.n to i64
  %i.p = call noalias ptr @calloc(i64 noundef 1, i64 noundef %i.o) #8
  store ptr %i.p, ptr %i.e, align 8
  %i.q = load ptr, ptr %i.d, align 8
  %i.r = load ptr, ptr %i.c, align 8
  %8 = getelementptr inbounds nuw %struct.Obj, ptr %i.r, i32 0, i32 2
  %i.s = load ptr, ptr %8, align 8
  %i.t = load ptr, ptr %i.e, align 8
  %i.u = call ptr @write_gvar_data(ptr noundef %3, ptr noundef %i.q, ptr noundef %i.s, ptr noundef %i.t, i32 noundef 0) ; 0 uses
  %i.v = load ptr, ptr %i.e, align 8
  %i.w = load ptr, ptr %i.c, align 8
  %9 = getelementptr inbounds nuw %struct.Obj, ptr %i.w, i32 0, i32 12
  store ptr %i.v, ptr %9, align 8
  %10 = getelementptr inbounds nuw %struct.Relocation, ptr %3, i32 0, i32 0
  %i.x = load ptr, ptr %10, align 8
  %i.y = load ptr, ptr %i.c, align 8
  %11 = getelementptr inbounds nuw %struct.Obj, ptr %i.y, i32 0, i32 13
  store ptr %i.x, ptr %11, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal ptr @lvar_initializer(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 2 uses
  %i.b = alloca ptr, align 8                      ; 5 uses
  %i.c = alloca ptr, align 8                      ; 6 uses
  %i.d = alloca ptr, align 8                      ; 2 uses
  %3 = alloca %struct.InitDesg, align 8           ; 6 uses
  %i.e = alloca ptr, align 8                      ; 3 uses
  %i.f = alloca ptr, align 8                      ; 2 uses
  store ptr %0, ptr %i.a, align 8
  store ptr %1, ptr %i.b, align 8
  store ptr %2, ptr %i.c, align 8
  %i.g = load ptr, ptr %i.a, align 8
  %i.h = load ptr, ptr %i.b, align 8
  %i.i = load ptr, ptr %i.c, align 8
  %4 = getelementptr inbounds nuw %struct.Obj, ptr %i.i, i32 0, i32 2
  %i.j = load ptr, ptr %4, align 8
  %i.k = load ptr, ptr %i.c, align 8
  %5 = getelementptr inbounds nuw %struct.Obj, ptr %i.k, i32 0, i32 2
  %i.l = call ptr @initializer(ptr noundef %i.g, ptr noundef %i.h, ptr noundef %i.j, ptr noundef %5)
  store ptr %i.l, ptr %i.d, align 8
  call void @llvm.memset.p0.i64(ptr align 8 %3, i8 0, i64 32, i1 false)
  %6 = getelementptr inbounds nuw %struct.InitDesg, ptr %3, i32 0, i32 0 ; 0 uses
  %7 = getelementptr inbounds nuw %struct.InitDesg, ptr %3, i32 0, i32 1 ; 0 uses
  %8 = getelementptr inbounds nuw %struct.InitDesg, ptr %3, i32 0, i32 2 ; 0 uses
  %9 = getelementptr inbounds nuw %struct.InitDesg, ptr %3, i32 0, i32 3
  %i.m = load ptr, ptr %i.c, align 8
  store ptr %i.m, ptr %9, align 8
  %i.n = load ptr, ptr %i.b, align 8
  %i.o = call ptr @new_node(i32 noundef 44, ptr noundef %i.n)
  store ptr %i.o, ptr %i.e, align 8
  %i.p = load ptr, ptr %i.c, align 8
  %i.q = load ptr, ptr %i.e, align 8
  %10 = getelementptr inbounds nuw %struct.Node, ptr %i.q, i32 0, i32 32
  store ptr %i.p, ptr %10, align 16
  %i.r = load ptr, ptr %i.d, align 8
  %i.s = load ptr, ptr %i.c, align 8
  %11 = getelementptr inbounds nuw %struct.Obj, ptr %i.s, i32 0, i32 2
  %i.t = load ptr, ptr %11, align 8
  %i.u = load ptr, ptr %i.b, align 8
  %i.v = call ptr @create_lvar_init(ptr noundef %i.r, ptr noundef %i.t, ptr noundef %3, ptr noundef %i.u)
  store ptr %i.v, ptr %i.f, align 8
  %i.w = load ptr, ptr %i.e, align 8
  %i.x = load ptr, ptr %i.f, align 8
  %i.y = load ptr, ptr %i.b, align 8
  %i.z = call ptr @new_binary(i32 noundef 18, ptr noundef %i.w, ptr noundef %i.x, ptr noundef %i.y)
  ret ptr %i.z
}

; Function Attrs: noinline nounwind optnone uwtable
define internal ptr @primary(ptr noundef nonnull %0, ptr noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 21 uses
  %i.b = alloca ptr, align 8                      ; 15 uses
  %i.c = alloca ptr, align 8                      ; 102 uses
  %i.d = alloca ptr, align 8                      ; 6 uses
  %i.e = alloca ptr, align 8                      ; 3 uses
  %i.f = alloca ptr, align 8                      ; 2 uses
  %i.g = alloca ptr, align 8                      ; 7 uses
  %i.h = alloca ptr, align 8                      ; 2 uses
  %i.i = alloca ptr, align 8                      ; 2 uses
  %i.j = alloca ptr, align 8                      ; 5 uses
  %i.k = alloca ptr, align 8                      ; 2 uses
  %i.l = alloca ptr, align 8                      ; 3 uses
  %i.m = alloca ptr, align 8                      ; 2 uses
  %i.n = alloca ptr, align 8                      ; 2 uses
  %i.o = alloca ptr, align 8                      ; 4 uses
  %i.p = alloca ptr, align 8                      ; 5 uses
  %i.q = alloca ptr, align 8                      ; 4 uses
  %i.r = alloca ptr, align 8                      ; 11 uses
  %i.s = alloca ptr, align 8                      ; 2 uses
  %i.t = alloca ptr, align 8                      ; 5 uses
  store ptr %0, ptr %i.b, align 8
  store ptr %1, ptr %i.c, align 8
  %i.u = load ptr, ptr %i.c, align 8
  store ptr %i.u, ptr %i.d, align 8
  %i.v = load ptr, ptr %i.c, align 8
  %i.w = call zeroext i1 @equal(ptr noundef %i.v, ptr noundef @.str.23)
  br i1 %i.w, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.x = load ptr, ptr %i.c, align 8
  %2 = getelementptr inbounds nuw %struct.Token, ptr %i.x, i32 0, i32 1
  %i.y = load ptr, ptr %2, align 8
  %i.z = call zeroext i1 @equal(ptr noundef %i.y, ptr noundef @.str.25)
  br i1 %i.z, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.aa = load ptr, ptr %i.c, align 8
  %i.ab = call ptr @new_node(i32 noundef 39, ptr noundef %i.aa)
  store ptr %i.ab, ptr %i.e, align 8
  %i.ac = load ptr, ptr %i.c, align 8
  %3 = getelementptr inbounds nuw %struct.Token, ptr %i.ac, i32 0, i32 1
  %i.ad = load ptr, ptr %3, align 8
  %4 = getelementptr inbounds nuw %struct.Token, ptr %i.ad, i32 0, i32 1
  %i.ae = load ptr, ptr %4, align 8
  %i.af = call ptr @compound_stmt(ptr noundef %i.c, ptr noundef %i.ae)
  %5 = getelementptr inbounds nuw %struct.Node, ptr %i.af, i32 0, i32 13
  %i.ag = load ptr, ptr %5, align 8
  %i.ah = load ptr, ptr %i.e, align 8
  %6 = getelementptr inbounds nuw %struct.Node, ptr %i.ah, i32 0, i32 13
  store ptr %i.ag, ptr %6, align 8
  %i.ai = load ptr, ptr %i.c, align 8
  %i.aj = call ptr @skip(ptr noundef %i.ai, ptr noundef @.str.24)
  %i.ak = load ptr, ptr %i.b, align 8
  store ptr %i.aj, ptr %i.ak, align 8
  %i.al = load ptr, ptr %i.e, align 8
  store ptr %i.al, ptr %i.a, align 8
  br label %bb.bl

bb.d:                                             ; preds = %bb.b, %bb.a
end_hunk_4
begin_hunk_5_@initializer:bb.a
  store ptr %2, ptr %i.d, align 8
  store ptr %3, ptr %i.e, align 8
  %i.h = load ptr, ptr %i.d, align 8
  %i.i = call ptr @new_initializer(ptr noundef %i.h, i1 noundef zeroext true)
  store ptr %i.i, ptr %i.f, align 8
  %i.j = load ptr, ptr %i.b, align 8
  %i.k = load ptr, ptr %i.c, align 8
  %i.l = load ptr, ptr %i.f, align 8
  call void @initializer2(ptr noundef %i.j, ptr noundef %i.k, ptr noundef %i.l)
  %i.m = load ptr, ptr %i.d, align 8
  %4 = getelementptr inbounds nuw %struct.Type, ptr %i.m, i32 0, i32 0
  %i.n = load i32, ptr %4, align 8
  %i.o = icmp eq i32 %i.n, 14
  br i1 %i.o, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.p = load ptr, ptr %i.d, align 8
  %5 = getelementptr inbounds nuw %struct.Type, ptr %i.p, i32 0, i32 0
  %i.q = load i32, ptr %5, align 8
  %i.r = icmp eq i32 %i.q, 15
  br i1 %i.r, label %bb.c, label %bb.h

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.s = load ptr, ptr %i.d, align 8
  %6 = getelementptr inbounds nuw %struct.Type, ptr %i.s, i32 0, i32 13
  %i.t = load i8, ptr %6, align 8
  %i.u = icmp ne i8 %i.t, 0
  br i1 %i.u, label %bb.d, label %bb.h

bb.d:                                             ; preds = %bb.c
  %i.v = load ptr, ptr %i.d, align 8
  %i.w = call ptr @copy_struct_type(ptr noundef %i.v)
  store ptr %i.w, ptr %i.d, align 8
  %i.x = load ptr, ptr %i.d, align 8
  %7 = getelementptr inbounds nuw %struct.Type, ptr %i.x, i32 0, i32 12
  %i.y = load ptr, ptr %7, align 8
  store ptr %i.y, ptr %i.g, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.f, %bb.d
  %i.z = load ptr, ptr %i.g, align 8
  %8 = getelementptr inbounds nuw %struct.Member, ptr %i.z, i32 0, i32 0
  %i.aa = load ptr, ptr %8, align 8
  %i.ab = icmp ne ptr %i.aa, null
  br i1 %i.ab, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ac = load ptr, ptr %i.g, align 8
  %9 = getelementptr inbounds nuw %struct.Member, ptr %i.ac, i32 0, i32 0
  %i.ad = load ptr, ptr %9, align 8
  store ptr %i.ad, ptr %i.g, align 8
  br label %bb.e, !llvm.loop !29

bb.g:                                             ; preds = %bb.e
  %i.ae = load ptr, ptr %i.f, align 8
  %10 = getelementptr inbounds nuw %struct.Initializer, ptr %i.ae, i32 0, i32 5
  %i.af = load ptr, ptr %10, align 8
  %i.ag = load ptr, ptr %i.g, align 8
  %11 = getelementptr inbounds nuw %struct.Member, ptr %i.ag, i32 0, i32 4
  %i.ah = load i32, ptr %11, align 8
  %i.ai = sext i32 %i.ah to i64
  %i.aj = getelementptr inbounds ptr, ptr %i.af, i64 %i.ai
  %i.ak = load ptr, ptr %i.aj, align 8
  %12 = getelementptr inbounds nuw %struct.Initializer, ptr %i.ak, i32 0, i32 1
  %i.al = load ptr, ptr %12, align 8
  %i.am = load ptr, ptr %i.g, align 8
  %13 = getelementptr inbounds nuw %struct.Member, ptr %i.am, i32 0, i32 1
  store ptr %i.al, ptr %13, align 8
  %i.an = load ptr, ptr %i.g, align 8
  %14 = getelementptr inbounds nuw %struct.Member, ptr %i.an, i32 0, i32 1
  %i.ao = load ptr, ptr %14, align 8
  %15 = getelementptr inbounds nuw %struct.Type, ptr %i.ao, i32 0, i32 1
  %i.ap = load i32, ptr %15, align 4
  %i.aq = load ptr, ptr %i.d, align 8
  %16 = getelementptr inbounds nuw %struct.Type, ptr %i.aq, i32 0, i32 1 ; 2 uses
  %i.ar = load i32, ptr %16, align 4
  %i.as = add nsw i32 %i.ar, %i.ap
  store i32 %i.as, ptr %16, align 4
  %i.at = load ptr, ptr %i.d, align 8
  %i.au = load ptr, ptr %i.e, align 8
  store ptr %i.at, ptr %i.au, align 8
  %i.av = load ptr, ptr %i.f, align 8
  store ptr %i.av, ptr %i.a, align 8
  br label %bb.i

bb.h:                                             ; preds = %bb.c, %bb.b
  %i.aw = load ptr, ptr %i.f, align 8
  %17 = getelementptr inbounds nuw %struct.Initializer, ptr %i.aw, i32 0, i32 1
  %i.ax = load ptr, ptr %17, align 8
  %i.ay = load ptr, ptr %i.e, align 8
  store ptr %i.ax, ptr %i.ay, align 8
  %i.az = load ptr, ptr %i.f, align 8
  store ptr %i.az, ptr %i.a, align 8
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.ba = load ptr, ptr %i.a, align 8
  ret ptr %i.ba
}

; Function Attrs: noinline nounwind optnone uwtable
define internal ptr @write_gvar_data(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4) unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 10 uses
  %i.b = alloca ptr, align 8                      ; 15 uses
  %i.c = alloca ptr, align 8                      ; 12 uses
  %i.d = alloca ptr, align 8                      ; 11 uses
  %i.e = alloca ptr, align 8                      ; 8 uses
  %i.f = alloca i32, align 4                      ; 9 uses
  %i.g = alloca i32, align 4                      ; 2 uses
  %i.h = alloca i32, align 4                      ; 6 uses
  %i.i = alloca ptr, align 8                      ; 14 uses
  %i.j = alloca ptr, align 8                      ; 3 uses
  %i.k = alloca ptr, align 8                      ; 3 uses
  %i.l = alloca i64, align 8                      ; 2 uses
  %i.m = alloca i64, align 8                      ; 2 uses
  %i.n = alloca i64, align 8                      ; 2 uses
  %i.o = alloca i64, align 8                      ; 2 uses
  %i.p = alloca ptr, align 8                      ; 4 uses
  %i.q = alloca i64, align 8                      ; 3 uses
  %i.r = alloca ptr, align 8                      ; 5 uses
  store ptr %0, ptr %i.b, align 8
  store ptr %1, ptr %i.c, align 8
  store ptr %2, ptr %i.d, align 8
  store ptr %3, ptr %i.e, align 8
  store i32 %4, ptr %i.f, align 4
  %i.s = load ptr, ptr %i.d, align 8
  %5 = getelementptr inbounds nuw %struct.Type, ptr %i.s, i32 0, i32 0
  %i.t = load i32, ptr %5, align 8
  %i.u = icmp eq i32 %i.t, 12
  br i1 %i.u, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.v = load ptr, ptr %i.d, align 8
  %6 = getelementptr inbounds nuw %struct.Type, ptr %i.v, i32 0, i32 6
  %i.w = load ptr, ptr %6, align 8
  %7 = getelementptr inbounds nuw %struct.Type, ptr %i.w, i32 0, i32 1
  %i.x = load i32, ptr %7, align 4
  store i32 %i.x, ptr %i.g, align 4
  store i32 0, ptr %i.h, align 4
  br label %bb.c

bb.c:                                             ; preds = %bb.e, %bb.b
  %i.y = load i32, ptr %i.h, align 4
  %i.z = load ptr, ptr %i.d, align 8
  %8 = getelementptr inbounds nuw %struct.Type, ptr %i.z, i32 0, i32 9
  %i.aa = load i32, ptr %8, align 8
  %i.ab = icmp slt i32 %i.y, %i.aa
  br i1 %i.ab, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.ac = load ptr, ptr %i.b, align 8
  %i.ad = load ptr, ptr %i.c, align 8
  %9 = getelementptr inbounds nuw %struct.Initializer, ptr %i.ad, i32 0, i32 5
  %i.ae = load ptr, ptr %9, align 8
  %i.af = load i32, ptr %i.h, align 4
  %i.ag = sext i32 %i.af to i64
  %i.ah = getelementptr inbounds ptr, ptr %i.ae, i64 %i.ag
  %i.ai = load ptr, ptr %i.ah, align 8
  %i.aj = load ptr, ptr %i.d, align 8
  %10 = getelementptr inbounds nuw %struct.Type, ptr %i.aj, i32 0, i32 6
  %i.ak = load ptr, ptr %10, align 8
  %i.al = load ptr, ptr %i.e, align 8
  %i.am = load i32, ptr %i.f, align 4
  %i.an = load i32, ptr %i.g, align 4
  %i.ao = load i32, ptr %i.h, align 4
  %i.ap = mul nsw i32 %i.an, %i.ao
  %i.aq = add nsw i32 %i.am, %i.ap
  %i.ar = call ptr @write_gvar_data(ptr noundef %i.ac, ptr noundef %i.ai, ptr noundef %i.ak, ptr noundef %i.al, i32 noundef %i.aq)
  store ptr %i.ar, ptr %i.b, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.as = load i32, ptr %i.h, align 4
  %i.at = add nsw i32 %i.as, 1
  store i32 %i.at, ptr %i.h, align 4
  br label %bb.c, !llvm.loop !30

bb.f:                                             ; preds = %bb.c
  %i.au = load ptr, ptr %i.b, align 8
  store ptr %i.au, ptr %i.a, align 8
  br label %bb.ae

bb.g:                                             ; preds = %bb.a
  %i.av = load ptr, ptr %i.d, align 8
  %11 = getelementptr inbounds nuw %struct.Type, ptr %i.av, i32 0, i32 0
  %i.aw = load i32, ptr %11, align 8
  %i.ax = icmp eq i32 %i.aw, 14
  br i1 %i.ax, label %bb.h, label %bb.r

bb.h:                                             ; preds = %bb.g
  %i.ay = load ptr, ptr %i.d, align 8
  %12 = getelementptr inbounds nuw %struct.Type, ptr %i.ay, i32 0, i32 12
  %i.az = load ptr, ptr %12, align 8
  store ptr %i.az, ptr %i.i, align 8
  br label %bb.i

bb.i:                                             ; preds = %bb.p, %bb.h
  %i.ba = load ptr, ptr %i.i, align 8
  %i.bb = icmp ne ptr %i.ba, null
  br i1 %i.bb, label %bb.j, label %.loopexit

bb.j:                                             ; preds = %bb.i
  %i.bc = load ptr, ptr %i.i, align 8
  %13 = getelementptr inbounds nuw %struct.Member, ptr %i.bc, i32 0, i32 7
  %i.bd = load i8, ptr %13, align 4
  %i.be = icmp ne i8 %i.bd, 0
  br i1 %i.be, label %bb.k, label %bb.n

bb.k:                                             ; preds = %bb.j
  %i.bf = load ptr, ptr %i.c, align 8
  %14 = getelementptr inbounds nuw %struct.Initializer, ptr %i.bf, i32 0, i32 5
  %i.bg = load ptr, ptr %14, align 8
  %i.bh = load ptr, ptr %i.i, align 8
  %15 = getelementptr inbounds nuw %struct.Member, ptr %i.bh, i32 0, i32 4
  %i.bi = load i32, ptr %15, align 8
  %i.bj = sext i32 %i.bi to i64
  %i.bk = getelementptr inbounds ptr, ptr %i.bg, i64 %i.bj
  %i.bl = load ptr, ptr %i.bk, align 8
  %16 = getelementptr inbounds nuw %struct.Initializer, ptr %i.bl, i32 0, i32 4
  %i.bm = load ptr, ptr %16, align 8
  store ptr %i.bm, ptr %i.j, align 8
  %i.bn = load ptr, ptr %i.j, align 8
  %i.bo = icmp ne ptr %i.bn, null
  br i1 %i.bo, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  br label %bb.q

bb.m:                                             ; preds = %bb.k
  %i.bp = load ptr, ptr %i.e, align 8
  %i.bq = load i32, ptr %i.f, align 4
  %i.br = sext i32 %i.bq to i64
  %i.bs = getelementptr inbounds i8, ptr %i.bp, i64 %i.br
  %i.bt = load ptr, ptr %i.i, align 8
  %17 = getelementptr inbounds nuw %struct.Member, ptr %i.bt, i32 0, i32 6
  %i.bu = load i32, ptr %17, align 8
  %i.bv = sext i32 %i.bu to i64
  %i.bw = getelementptr inbounds i8, ptr %i.bs, i64 %i.bv
  store ptr %i.bw, ptr %i.k, align 8
  %i.bx = load ptr, ptr %i.k, align 8
  %i.by = load ptr, ptr %i.i, align 8
  %18 = getelementptr inbounds nuw %struct.Member, ptr %i.by, i32 0, i32 1
  %i.bz = load ptr, ptr %18, align 8
  %19 = getelementptr inbounds nuw %struct.Type, ptr %i.bz, i32 0, i32 1
  %i.ca = load i32, ptr %19, align 4
  %i.cb = call i64 @read_buf(ptr noundef %i.bx, i32 noundef %i.ca)
  store i64 %i.cb, ptr %i.l, align 8
  %i.cc = load ptr, ptr %i.j, align 8
  %i.cd = call i64 @eval(ptr noundef %i.cc)
  store i64 %i.cd, ptr %i.m, align 8
  %i.ce = load ptr, ptr %i.i, align 8
  %20 = getelementptr inbounds nuw %struct.Member, ptr %i.ce, i32 0, i32 9
  %i.cf = load i32, ptr %20, align 4
  %i.cg = zext i32 %i.cf to i64
  %i.ch = shl nuw i64 1, %i.cg
  %i.ci = sub nsw i64 %i.ch, 1
  store i64 %i.ci, ptr %i.n, align 8
  %i.cj = load i64, ptr %i.l, align 8
  %i.ck = load i64, ptr %i.m, align 8
  %i.cl = load i64, ptr %i.n, align 8
  %i.cm = and i64 %i.ck, %i.cl
  %i.cn = load ptr, ptr %i.i, align 8
  %21 = getelementptr inbounds nuw %struct.Member, ptr %i.cn, i32 0, i32 8
  %i.co = load i32, ptr %21, align 8
  %i.cp = zext i32 %i.co to i64
  %i.cq = shl i64 %i.cm, %i.cp
  %i.cr = or i64 %i.cj, %i.cq
  store i64 %i.cr, ptr %i.o, align 8
  %i.cs = load ptr, ptr %i.k, align 8
  %i.ct = load i64, ptr %i.o, align 8
  %i.cu = load ptr, ptr %i.i, align 8
  %22 = getelementptr inbounds nuw %struct.Member, ptr %i.cu, i32 0, i32 1
  %i.cv = load ptr, ptr %22, align 8
  %23 = getelementptr inbounds nuw %struct.Type, ptr %i.cv, i32 0, i32 1
  %i.cw = load i32, ptr %23, align 4
  call void @write_buf(ptr noundef %i.cs, i64 noundef %i.ct, i32 noundef %i.cw)
  br label %bb.o

bb.n:                                             ; preds = %bb.j
  %i.cx = load ptr, ptr %i.b, align 8
  %i.cy = load ptr, ptr %i.c, align 8
  %24 = getelementptr inbounds nuw %struct.Initializer, ptr %i.cy, i32 0, i32 5
  %i.cz = load ptr, ptr %24, align 8
  %i.da = load ptr, ptr %i.i, align 8
  %25 = getelementptr inbounds nuw %struct.Member, ptr %i.da, i32 0, i32 4
  %i.db = load i32, ptr %25, align 8
  %i.dc = sext i32 %i.db to i64
  %i.dd = getelementptr inbounds ptr, ptr %i.cz, i64 %i.dc
  %i.de = load ptr, ptr %i.dd, align 8
  %i.df = load ptr, ptr %i.i, align 8
  %26 = getelementptr inbounds nuw %struct.Member, ptr %i.df, i32 0, i32 1
  %i.dg = load ptr, ptr %26, align 8
  %i.dh = load ptr, ptr %i.e, align 8
  %i.di = load i32, ptr %i.f, align 4
  %i.dj = load ptr, ptr %i.i, align 8
  %27 = getelementptr inbounds nuw %struct.Member, ptr %i.dj, i32 0, i32 6
  %i.dk = load i32, ptr %27, align 8
  %i.dl = add nsw i32 %i.di, %i.dk
  %i.dm = call ptr @write_gvar_data(ptr noundef %i.cx, ptr noundef %i.de, ptr noundef %i.dg, ptr noundef %i.dh, i32 noundef %i.dl)
  store ptr %i.dm, ptr %i.b, align 8
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  br label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.dn = load ptr, ptr %i.i, align 8
  %28 = getelementptr inbounds nuw %struct.Member, ptr %i.dn, i32 0, i32 0
  %i.do = load ptr, ptr %28, align 8
  store ptr %i.do, ptr %i.i, align 8
  br label %bb.i, !llvm.loop !31

.loopexit:                                        ; preds = %bb.i
  br label %bb.q

bb.q:                                             ; preds = %.loopexit, %bb.l
  %i.dp = load ptr, ptr %i.b, align 8
  store ptr %i.dp, ptr %i.a, align 8
  br label %bb.ae

bb.r:                                             ; preds = %bb.g
  %i.dq = load ptr, ptr %i.d, align 8
  %29 = getelementptr inbounds nuw %struct.Type, ptr %i.dq, i32 0, i32 0
  %i.dr = load i32, ptr %29, align 8
  %i.ds = icmp eq i32 %i.dr, 15
  br i1 %i.ds, label %bb.s, label %bb.v

bb.s:                                             ; preds = %bb.r
  %i.dt = load ptr, ptr %i.c, align 8
  %30 = getelementptr inbounds nuw %struct.Initializer, ptr %i.dt, i32 0, i32 6
  %i.du = load ptr, ptr %30, align 8
  %i.dv = icmp ne ptr %i.du, null
  br i1 %i.dv, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.dw = load ptr, ptr %i.b, align 8
  store ptr %i.dw, ptr %i.a, align 8
  br label %bb.ae

bb.u:                                             ; preds = %bb.s
  %i.dx = load ptr, ptr %i.b, align 8
  %i.dy = load ptr, ptr %i.c, align 8
  %31 = getelementptr inbounds nuw %struct.Initializer, ptr %i.dy, i32 0, i32 5
  %i.dz = load ptr, ptr %31, align 8
  %i.ea = load ptr, ptr %i.c, align 8
  %32 = getelementptr inbounds nuw %struct.Initializer, ptr %i.ea, i32 0, i32 6
  %i.eb = load ptr, ptr %32, align 8
  %33 = getelementptr inbounds nuw %struct.Member, ptr %i.eb, i32 0, i32 4
  %i.ec = load i32, ptr %33, align 8
  %i.ed = sext i32 %i.ec to i64
  %i.ee = getelementptr inbounds ptr, ptr %i.dz, i64 %i.ed
  %i.ef = load ptr, ptr %i.ee, align 8
  %i.eg = load ptr, ptr %i.c, align 8
  %34 = getelementptr inbounds nuw %struct.Initializer, ptr %i.eg, i32 0, i32 6
  %i.eh = load ptr, ptr %34, align 8
  %35 = getelementptr inbounds nuw %struct.Member, ptr %i.eh, i32 0, i32 1
  %i.ei = load ptr, ptr %35, align 8
  %i.ej = load ptr, ptr %i.e, align 8
  %i.ek = load i32, ptr %i.f, align 4
  %i.el = call ptr @write_gvar_data(ptr noundef %i.dx, ptr noundef %i.ef, ptr noundef %i.ei, ptr noundef %i.ej, i32 noundef %i.ek)
  store ptr %i.el, ptr %i.a, align 8
  br label %bb.ae

bb.v:                                             ; preds = %bb.r
  %i.em = load ptr, ptr %i.c, align 8
  %36 = getelementptr inbounds nuw %struct.Initializer, ptr %i.em, i32 0, i32 4
  %i.en = load ptr, ptr %36, align 8
  %i.eo = icmp ne ptr %i.en, null
  br i1 %i.eo, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ep = load ptr, ptr %i.b, align 8
  store ptr %i.ep, ptr %i.a, align 8
  br label %bb.ae

bb.x:                                             ; preds = %bb.v
  %i.eq = load ptr, ptr %i.d, align 8
  %37 = getelementptr inbounds nuw %struct.Type, ptr %i.eq, i32 0, i32 0
  %i.er = load i32, ptr %37, align 8
  %i.es = icmp eq i32 %i.er, 6
  br i1 %i.es, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.et = load ptr, ptr %i.c, align 8
  %38 = getelementptr inbounds nuw %struct.Initializer, ptr %i.et, i32 0, i32 4
  %i.eu = load ptr, ptr %38, align 8
  %i.ev = call double @eval_double(ptr noundef %i.eu)
  %i.ew = fptrunc double %i.ev to float
  %i.ex = load ptr, ptr %i.e, align 8
  %i.ey = load i32, ptr %i.f, align 4
  %i.ez = sext i32 %i.ey to i64
  %i.fa = getelementptr inbounds i8, ptr %i.ex, i64 %i.ez
  store float %i.ew, ptr %i.fa, align 4
  %i.fb = load ptr, ptr %i.b, align 8
  store ptr %i.fb, ptr %i.a, align 8
  br label %bb.ae

bb.z:                                             ; preds = %bb.x
  %i.fc = load ptr, ptr %i.d, align 8
  %39 = getelementptr inbounds nuw %struct.Type, ptr %i.fc, i32 0, i32 0
  %i.fd = load i32, ptr %39, align 8
  %i.fe = icmp eq i32 %i.fd, 7
  br i1 %i.fe, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.ff = load ptr, ptr %i.c, align 8
  %40 = getelementptr inbounds nuw %struct.Initializer, ptr %i.ff, i32 0, i32 4
  %i.fg = load ptr, ptr %40, align 8
  %i.fh = call double @eval_double(ptr noundef %i.fg)
  %i.fi = load ptr, ptr %i.e, align 8
  %i.fj = load i32, ptr %i.f, align 4
  %i.fk = sext i32 %i.fj to i64
  %i.fl = getelementptr inbounds i8, ptr %i.fi, i64 %i.fk
  store double %i.fh, ptr %i.fl, align 8
  %i.fm = load ptr, ptr %i.b, align 8
  store ptr %i.fm, ptr %i.a, align 8
  br label %bb.ae

bb.ab:                                            ; preds = %bb.z
  store ptr null, ptr %i.p, align 8
  %i.fn = load ptr, ptr %i.c, align 8
  %41 = getelementptr inbounds nuw %struct.Initializer, ptr %i.fn, i32 0, i32 4
  %i.fo = load ptr, ptr %41, align 8
  %i.fp = call i64 @eval2(ptr noundef %i.fo, ptr noundef %i.p)
  store i64 %i.fp, ptr %i.q, align 8
  %i.fq = load ptr, ptr %i.p, align 8
  %i.fr = icmp ne ptr %i.fq, null
  br i1 %i.fr, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.fs = load ptr, ptr %i.e, align 8
  %i.ft = load i32, ptr %i.f, align 4
  %i.fu = sext i32 %i.ft to i64
  %i.fv = getelementptr inbounds i8, ptr %i.fs, i64 %i.fu
  %i.fw = load i64, ptr %i.q, align 8
  %i.fx = load ptr, ptr %i.d, align 8
  %42 = getelementptr inbounds nuw %struct.Type, ptr %i.fx, i32 0, i32 1
  %i.fy = load i32, ptr %42, align 4
  call void @write_buf(ptr noundef %i.fv, i64 noundef %i.fw, i32 noundef %i.fy)
  %i.fz = load ptr, ptr %i.b, align 8
  store ptr %i.fz, ptr %i.a, align 8
  br label %bb.ae

bb.ad:                                            ; preds = %bb.ab
  %i.ga = call noalias ptr @calloc(i64 noundef 1, i64 noundef 32) #8
  store ptr %i.ga, ptr %i.r, align 8
  %i.gb = load i32, ptr %i.f, align 4
  %i.gc = load ptr, ptr %i.r, align 8
  %43 = getelementptr inbounds nuw %struct.Relocation, ptr %i.gc, i32 0, i32 1
  store i32 %i.gb, ptr %43, align 8
  %i.gd = load ptr, ptr %i.p, align 8
  %i.ge = load ptr, ptr %i.r, align 8
  %44 = getelementptr inbounds nuw %struct.Relocation, ptr %i.ge, i32 0, i32 2
  store ptr %i.gd, ptr %44, align 8
  %i.gf = load i64, ptr %i.q, align 8
  %i.gg = load ptr, ptr %i.r, align 8
  %45 = getelementptr inbounds nuw %struct.Relocation, ptr %i.gg, i32 0, i32 3
  store i64 %i.gf, ptr %45, align 8
  %i.gh = load ptr, ptr %i.r, align 8
  %i.gi = load ptr, ptr %i.b, align 8
  %46 = getelementptr inbounds nuw %struct.Relocation, ptr %i.gi, i32 0, i32 0
  store ptr %i.gh, ptr %46, align 8
  %i.gj = load ptr, ptr %i.b, align 8
  %47 = getelementptr inbounds nuw %struct.Relocation, ptr %i.gj, i32 0, i32 0
  %i.gk = load ptr, ptr %47, align 8
  store ptr %i.gk, ptr %i.a, align 8
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac, %bb.aa, %bb.y, %bb.w, %bb.u, %bb.t, %bb.q, %bb.f
  %i.gl = load ptr, ptr %i.a, align 8
  ret ptr %i.gl
}

; Function Attrs: noinline nounwind optnone uwtable
define internal ptr @new_initializer(ptr noundef %0, i1 noundef zeroext %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = alloca ptr, align 8                      ; 12 uses
  %i.c = alloca i8, align 1                       ; 3 uses
  %i.d = alloca ptr, align 8                      ; 12 uses
  %i.e = alloca i32, align 4                      ; 5 uses
  %i.f = alloca i32, align 4                      ; 4 uses
  %i.g = alloca ptr, align 8                      ; 4 uses
  %i.h = alloca ptr, align 8                      ; 9 uses
  %i.i = alloca ptr, align 8                      ; 4 uses
  store ptr %0, ptr %i.b, align 8
  %i.j = zext i1 %1 to i8
  store i8 %i.j, ptr %i.c, align 1
  %i.k = call noalias ptr @calloc(i64 noundef 1, i64 noundef 56) #8
  store ptr %i.k, ptr %i.d, align 8
  %i.l = load ptr, ptr %i.b, align 8
  %i.m = load ptr, ptr %i.d, align 8
  %2 = getelementptr inbounds nuw %struct.Initializer, ptr %i.m, i32 0, i32 1
  store ptr %i.l, ptr %2, align 8
  %i.n = load ptr, ptr %i.b, align 8
  %3 = getelementptr inbounds nuw %struct.Type, ptr %i.n, i32 0, i32 0
  %i.o = load i32, ptr %3, align 8
  %i.p = icmp eq i32 %i.o, 12
  br i1 %i.p, label %bb.b, label %bb.j

bb.b:                                             ; preds = %bb.a
  %i.q = load i8, ptr %i.c, align 1
  %i.r = icmp ne i8 %i.q, 0
  br i1 %i.r, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.s = load ptr, ptr %i.b, align 8
  %4 = getelementptr inbounds nuw %struct.Type, ptr %i.s, i32 0, i32 1
  %i.t = load i32, ptr %4, align 4
  %i.u = icmp slt i32 %i.t, 0
  br i1 %i.u, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.v = load ptr, ptr %i.d, align 8
  %5 = getelementptr inbounds nuw %struct.Initializer, ptr %i.v, i32 0, i32 3
  store i8 1, ptr %5, align 8
end_hunk_5
begin_hunk_6_@array_initializer1:bb.a
  %i.bl = getelementptr inbounds ptr, ptr %i.bi, i64 %i.bk
  %i.bm = load ptr, ptr %i.bl, align 8
  call void @designation(ptr noundef %i.j, ptr noundef %i.bg, ptr noundef %i.bm)
  br label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bn = load i32, ptr %i.k, align 4
  %i.bo = add nsw i32 %i.bn, 1
  store i32 %i.bo, ptr %i.k, align 4
  br label %bb.k, !llvm.loop !39

bb.n:                                             ; preds = %bb.k
  %i.bp = load ptr, ptr %i.j, align 8
  store ptr %i.bp, ptr %i.b, align 8
  %i.bq = load i32, ptr %i.i, align 4
  store i32 %i.bq, ptr %i.g, align 4
  br label %bb.s

bb.o:                                             ; preds = %bb.i
  %i.br = load i32, ptr %i.g, align 4
  %i.bs = load ptr, ptr %i.c, align 8
  %13 = getelementptr inbounds nuw %struct.Initializer, ptr %i.bs, i32 0, i32 1
  %i.bt = load ptr, ptr %13, align 8
  %14 = getelementptr inbounds nuw %struct.Type, ptr %i.bt, i32 0, i32 9
  %i.bu = load i32, ptr %14, align 8
  %i.bv = icmp slt i32 %i.br, %i.bu
  br i1 %i.bv, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.bw = load ptr, ptr %i.b, align 8
  %i.bx = load ptr, ptr %i.c, align 8
  %15 = getelementptr inbounds nuw %struct.Initializer, ptr %i.bx, i32 0, i32 5
  %i.by = load ptr, ptr %15, align 8
  %i.bz = load i32, ptr %i.g, align 4
  %i.ca = sext i32 %i.bz to i64
  %i.cb = getelementptr inbounds ptr, ptr %i.by, i64 %i.ca
  %i.cc = load ptr, ptr %i.cb, align 8
  call void @initializer2(ptr noundef %i.b, ptr noundef %i.bw, ptr noundef %i.cc)
  br label %bb.r

bb.q:                                             ; preds = %bb.o
  %i.cd = load ptr, ptr %i.b, align 8
  %i.ce = call ptr @skip_excess_element(ptr noundef %i.cd)
  store ptr %i.ce, ptr %i.b, align 8
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.n
  %i.cf = load i32, ptr %i.g, align 4
  %i.cg = add nsw i32 %i.cf, 1
  store i32 %i.cg, ptr %i.g, align 4
  br label %bb.f, !llvm.loop !40

bb.t:                                             ; preds = %bb.f
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @array_initializer2(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef range(i32 -2147483647, -2147483648) %3) unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 3 uses
  %i.b = alloca ptr, align 8                      ; 11 uses
  %i.c = alloca ptr, align 8                      ; 7 uses
  %i.d = alloca i32, align 4                      ; 6 uses
  %i.e = alloca i32, align 4                      ; 2 uses
  %i.f = alloca ptr, align 8                      ; 2 uses
  store ptr %0, ptr %i.a, align 8
  store ptr %1, ptr %i.b, align 8
  store ptr %2, ptr %i.c, align 8
  store i32 %3, ptr %i.d, align 4
  %i.g = load ptr, ptr %i.c, align 8
  %4 = getelementptr inbounds nuw %struct.Initializer, ptr %i.g, i32 0, i32 3
  %i.h = load i8, ptr %4, align 8
  %i.i = icmp ne i8 %i.h, 0
  br i1 %i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.j = load ptr, ptr %i.b, align 8
  %i.k = load ptr, ptr %i.c, align 8
  %5 = getelementptr inbounds nuw %struct.Initializer, ptr %i.k, i32 0, i32 1
  %i.l = load ptr, ptr %5, align 8
  %i.m = call i32 @count_array_init_elements(ptr noundef %i.j, ptr noundef %i.l)
  store i32 %i.m, ptr %i.e, align 4
  %i.n = load ptr, ptr %i.c, align 8
  %i.o = load ptr, ptr %i.c, align 8
  %6 = getelementptr inbounds nuw %struct.Initializer, ptr %i.o, i32 0, i32 1
  %i.p = load ptr, ptr %6, align 8
  %7 = getelementptr inbounds nuw %struct.Type, ptr %i.p, i32 0, i32 6
  %i.q = load ptr, ptr %7, align 8
  %i.r = load i32, ptr %i.e, align 4
  %i.s = call ptr @array_of(ptr noundef %i.q, i32 noundef %i.r)
  %i.t = call ptr @new_initializer(ptr noundef %i.s, i1 noundef zeroext false)
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.n, ptr align 8 %i.t, i64 56, i1 false)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  br label %bb.d

bb.d:                                             ; preds = %bb.m, %bb.c
  %i.u = load i32, ptr %i.d, align 4
  %i.v = load ptr, ptr %i.c, align 8
  %8 = getelementptr inbounds nuw %struct.Initializer, ptr %i.v, i32 0, i32 1
  %i.w = load ptr, ptr %8, align 8
  %9 = getelementptr inbounds nuw %struct.Type, ptr %i.w, i32 0, i32 9
  %i.x = load i32, ptr %9, align 8
  %i.y = icmp slt i32 %i.u, %i.x
  br i1 %i.y, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.z = load ptr, ptr %i.b, align 8
  %i.aa = call zeroext i1 @is_end(ptr noundef %i.z)
  %i.ab = xor i1 %i.aa, true
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.ac = phi i1 [ false, %bb.d ], [ %i.ab, %bb.e ]
  br i1 %i.ac, label %bb.g, label %bb.n

bb.g:                                             ; preds = %bb.f
  %i.ad = load ptr, ptr %i.b, align 8
  store ptr %i.ad, ptr %i.f, align 8
  %i.ae = load i32, ptr %i.d, align 4
  %i.af = icmp sgt i32 %i.ae, 0
  br i1 %i.af, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ag = load ptr, ptr %i.b, align 8
  %i.ah = call ptr @skip(ptr noundef %i.ag, ptr noundef @.str.57)
  store ptr %i.ah, ptr %i.b, align 8
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.ai = load ptr, ptr %i.b, align 8
  %i.aj = call zeroext i1 @equal(ptr noundef %i.ai, ptr noundef @.str.56)
  br i1 %i.aj, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ak = load ptr, ptr %i.b, align 8
  %i.al = call zeroext i1 @equal(ptr noundef %i.ak, ptr noundef @.str.67)
  br i1 %i.al, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.am = load ptr, ptr %i.f, align 8
  %i.an = load ptr, ptr %i.a, align 8
  store ptr %i.am, ptr %i.an, align 8
  br label %bb.o

bb.l:                                             ; preds = %bb.j
  %i.ao = load ptr, ptr %i.b, align 8
  %i.ap = load ptr, ptr %i.c, align 8
  %10 = getelementptr inbounds nuw %struct.Initializer, ptr %i.ap, i32 0, i32 5
  %i.aq = load ptr, ptr %10, align 8
  %i.ar = load i32, ptr %i.d, align 4
  %i.as = sext i32 %i.ar to i64
  %i.at = getelementptr inbounds ptr, ptr %i.aq, i64 %i.as
  %i.au = load ptr, ptr %i.at, align 8
  call void @initializer2(ptr noundef %i.b, ptr noundef %i.ao, ptr noundef %i.au)
  br label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.av = load i32, ptr %i.d, align 4
  %i.aw = add nsw i32 %i.av, 1
  store i32 %i.aw, ptr %i.d, align 4
  br label %bb.d, !llvm.loop !41

bb.n:                                             ; preds = %bb.f
  %i.ax = load ptr, ptr %i.b, align 8
  %i.ay = load ptr, ptr %i.a, align 8
  store ptr %i.ax, ptr %i.ay, align 8
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.k
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @struct_initializer1(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 2 uses
  %i.b = alloca ptr, align 8                      ; 15 uses
  %i.c = alloca ptr, align 8                      ; 5 uses
  %i.d = alloca ptr, align 8                      ; 9 uses
  %i.e = alloca i8, align 1                       ; 3 uses
  store ptr %0, ptr %i.a, align 8
  store ptr %1, ptr %i.b, align 8
  store ptr %2, ptr %i.c, align 8
  %i.f = load ptr, ptr %i.b, align 8
  %i.g = call ptr @skip(ptr noundef %i.f, ptr noundef @.str.25)
  store ptr %i.g, ptr %i.b, align 8
  %i.h = load ptr, ptr %i.c, align 8
  %3 = getelementptr inbounds nuw %struct.Initializer, ptr %i.h, i32 0, i32 1
  %i.i = load ptr, ptr %3, align 8
  %4 = getelementptr inbounds nuw %struct.Type, ptr %i.i, i32 0, i32 12
  %i.j = load ptr, ptr %4, align 8
  store ptr %i.j, ptr %i.d, align 8
  store i8 1, ptr %i.e, align 1
  br label %bb.b

bb.b:                                             ; preds = %.backedge, %bb.a
  %i.k = load ptr, ptr %i.a, align 8
  %i.l = load ptr, ptr %i.b, align 8
  %i.m = call zeroext i1 @consume_end(ptr noundef %i.k, ptr noundef %i.l)
  %i.n = xor i1 %i.m, true
  br i1 %i.n, label %bb.c, label %bb.k

bb.c:                                             ; preds = %bb.b
  %i.o = load i8, ptr %i.e, align 1
  %i.p = icmp ne i8 %i.o, 0
  br i1 %i.p, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.q = load ptr, ptr %i.b, align 8
  %i.r = call ptr @skip(ptr noundef %i.q, ptr noundef @.str.57)
  store ptr %i.r, ptr %i.b, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  store i8 0, ptr %i.e, align 1
  %i.s = load ptr, ptr %i.b, align 8
  %i.t = call zeroext i1 @equal(ptr noundef %i.s, ptr noundef @.str.67)
  br i1 %i.t, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.u = load ptr, ptr %i.b, align 8
  %i.v = load ptr, ptr %i.c, align 8
  %5 = getelementptr inbounds nuw %struct.Initializer, ptr %i.v, i32 0, i32 1
  %i.w = load ptr, ptr %5, align 8
  %i.x = call ptr @struct_designator(ptr noundef %i.b, ptr noundef %i.u, ptr noundef %i.w)
  store ptr %i.x, ptr %i.d, align 8
  %i.y = load ptr, ptr %i.b, align 8
  %i.z = load ptr, ptr %i.c, align 8
  %6 = getelementptr inbounds nuw %struct.Initializer, ptr %i.z, i32 0, i32 5
  %i.aa = load ptr, ptr %6, align 8
  %i.ab = load ptr, ptr %i.d, align 8
  %7 = getelementptr inbounds nuw %struct.Member, ptr %i.ab, i32 0, i32 4
  %i.ac = load i32, ptr %7, align 8
  %i.ad = sext i32 %i.ac to i64
  %i.ae = getelementptr inbounds ptr, ptr %i.aa, i64 %i.ad
  %i.af = load ptr, ptr %i.ae, align 8
  call void @designation(ptr noundef %i.b, ptr noundef %i.y, ptr noundef %i.af)
  %i.ag = load ptr, ptr %i.d, align 8
  %8 = getelementptr inbounds nuw %struct.Member, ptr %i.ag, i32 0, i32 0
  %i.ah = load ptr, ptr %8, align 8
  store ptr %i.ah, ptr %i.d, align 8
  br label %.backedge

.backedge:                                        ; preds = %bb.f, %bb.j
  br label %bb.b, !llvm.loop !42

bb.g:                                             ; preds = %bb.e
  %i.ai = load ptr, ptr %i.d, align 8
  %i.aj = icmp ne ptr %i.ai, null
  br i1 %i.aj, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ak = load ptr, ptr %i.b, align 8
  %i.al = load ptr, ptr %i.c, align 8
  %9 = getelementptr inbounds nuw %struct.Initializer, ptr %i.al, i32 0, i32 5
  %i.am = load ptr, ptr %9, align 8
  %i.an = load ptr, ptr %i.d, align 8
  %10 = getelementptr inbounds nuw %struct.Member, ptr %i.an, i32 0, i32 4
  %i.ao = load i32, ptr %10, align 8
  %i.ap = sext i32 %i.ao to i64
  %i.aq = getelementptr inbounds ptr, ptr %i.am, i64 %i.ap
  %i.ar = load ptr, ptr %i.aq, align 8
  call void @initializer2(ptr noundef %i.b, ptr noundef %i.ak, ptr noundef %i.ar)
  %i.as = load ptr, ptr %i.d, align 8
  %11 = getelementptr inbounds nuw %struct.Member, ptr %i.as, i32 0, i32 0
  %i.at = load ptr, ptr %11, align 8
  store ptr %i.at, ptr %i.d, align 8
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.au = load ptr, ptr %i.b, align 8
  %i.av = call ptr @skip_excess_element(ptr noundef %i.au)
  store ptr %i.av, ptr %i.b, align 8
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  br label %.backedge

bb.k:                                             ; preds = %bb.b
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal ptr @assign(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 13 uses
  %i.b = alloca ptr, align 8                      ; 13 uses
  %i.c = alloca ptr, align 8                      ; 37 uses
  %i.d = alloca ptr, align 8                      ; 13 uses
  store ptr %0, ptr %i.b, align 8
  store ptr %1, ptr %i.c, align 8
  %i.e = load ptr, ptr %i.c, align 8
  %i.f = call ptr @conditional(ptr noundef %i.c, ptr noundef %i.e)
  store ptr %i.f, ptr %i.d, align 8
  %i.g = load ptr, ptr %i.c, align 8
  %i.h = call zeroext i1 @equal(ptr noundef %i.g, ptr noundef @.str.76)
  br i1 %i.h, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = load ptr, ptr %i.d, align 8
  %i.j = load ptr, ptr %i.b, align 8
  %i.k = load ptr, ptr %i.c, align 8
  %2 = getelementptr inbounds nuw %struct.Token, ptr %i.k, i32 0, i32 1
  %i.l = load ptr, ptr %2, align 8
  %i.m = call ptr @assign(ptr noundef %i.j, ptr noundef %i.l)
  %i.n = load ptr, ptr %i.c, align 8
  %i.o = call ptr @new_binary(i32 noundef 16, ptr noundef %i.i, ptr noundef %i.m, ptr noundef %i.n)
  store ptr %i.o, ptr %i.a, align 8
  br label %bb.x

bb.c:                                             ; preds = %bb.a
  %i.p = load ptr, ptr %i.c, align 8
  %i.q = call zeroext i1 @equal(ptr noundef %i.p, ptr noundef @.str.79)
  br i1 %i.q, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.r = load ptr, ptr %i.d, align 8
  %i.s = load ptr, ptr %i.b, align 8
  %i.t = load ptr, ptr %i.c, align 8
  %3 = getelementptr inbounds nuw %struct.Token, ptr %i.t, i32 0, i32 1
  %i.u = load ptr, ptr %3, align 8
  %i.v = call ptr @assign(ptr noundef %i.s, ptr noundef %i.u)
  %i.w = load ptr, ptr %i.c, align 8
  %i.x = call ptr @new_add(ptr noundef %i.r, ptr noundef %i.v, ptr noundef %i.w)
  %i.y = call ptr @to_assign(ptr noundef %i.x)
  store ptr %i.y, ptr %i.a, align 8
  br label %bb.x

bb.e:                                             ; preds = %bb.c
  %i.z = load ptr, ptr %i.c, align 8
  %i.aa = call zeroext i1 @equal(ptr noundef %i.z, ptr noundef @.str.80)
  br i1 %i.aa, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ab = load ptr, ptr %i.d, align 8
  %i.ac = load ptr, ptr %i.b, align 8
  %i.ad = load ptr, ptr %i.c, align 8
  %4 = getelementptr inbounds nuw %struct.Token, ptr %i.ad, i32 0, i32 1
  %i.ae = load ptr, ptr %4, align 8
  %i.af = call ptr @assign(ptr noundef %i.ac, ptr noundef %i.ae)
  %i.ag = load ptr, ptr %i.c, align 8
  %i.ah = call ptr @new_sub(ptr noundef %i.ab, ptr noundef %i.af, ptr noundef %i.ag)
  %i.ai = call ptr @to_assign(ptr noundef %i.ah)
  store ptr %i.ai, ptr %i.a, align 8
  br label %bb.x

bb.g:                                             ; preds = %bb.e
  %i.aj = load ptr, ptr %i.c, align 8
  %i.ak = call zeroext i1 @equal(ptr noundef %i.aj, ptr noundef @.str.81)
  br i1 %i.ak, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.al = load ptr, ptr %i.d, align 8
  %i.am = load ptr, ptr %i.b, align 8
  %i.an = load ptr, ptr %i.c, align 8
  %5 = getelementptr inbounds nuw %struct.Token, ptr %i.an, i32 0, i32 1
  %i.ao = load ptr, ptr %5, align 8
  %i.ap = call ptr @assign(ptr noundef %i.am, ptr noundef %i.ao)
  %i.aq = load ptr, ptr %i.c, align 8
  %i.ar = call ptr @new_binary(i32 noundef 3, ptr noundef %i.al, ptr noundef %i.ap, ptr noundef %i.aq)
  %i.as = call ptr @to_assign(ptr noundef %i.ar)
  store ptr %i.as, ptr %i.a, align 8
  br label %bb.x

bb.i:                                             ; preds = %bb.g
  %i.at = load ptr, ptr %i.c, align 8
  %i.au = call zeroext i1 @equal(ptr noundef %i.at, ptr noundef @.str.82)
  br i1 %i.au, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.av = load ptr, ptr %i.d, align 8
  %i.aw = load ptr, ptr %i.b, align 8
  %i.ax = load ptr, ptr %i.c, align 8
  %6 = getelementptr inbounds nuw %struct.Token, ptr %i.ax, i32 0, i32 1
  %i.ay = load ptr, ptr %6, align 8
  %i.az = call ptr @assign(ptr noundef %i.aw, ptr noundef %i.ay)
  %i.ba = load ptr, ptr %i.c, align 8
  %i.bb = call ptr @new_binary(i32 noundef 4, ptr noundef %i.av, ptr noundef %i.az, ptr noundef %i.ba)
  %i.bc = call ptr @to_assign(ptr noundef %i.bb)
  store ptr %i.bc, ptr %i.a, align 8
  br label %bb.x

bb.k:                                             ; preds = %bb.i
  %i.bd = load ptr, ptr %i.c, align 8
  %i.be = call zeroext i1 @equal(ptr noundef %i.bd, ptr noundef @.str.83)
  br i1 %i.be, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.bf = load ptr, ptr %i.d, align 8
  %i.bg = load ptr, ptr %i.b, align 8
  %i.bh = load ptr, ptr %i.c, align 8
  %7 = getelementptr inbounds nuw %struct.Token, ptr %i.bh, i32 0, i32 1
  %i.bi = load ptr, ptr %7, align 8
  %i.bj = call ptr @assign(ptr noundef %i.bg, ptr noundef %i.bi)
  %i.bk = load ptr, ptr %i.c, align 8
  %i.bl = call ptr @new_binary(i32 noundef 6, ptr noundef %i.bf, ptr noundef %i.bj, ptr noundef %i.bk)
  %i.bm = call ptr @to_assign(ptr noundef %i.bl)
  store ptr %i.bm, ptr %i.a, align 8
  br label %bb.x

bb.m:                                             ; preds = %bb.k
  %i.bn = load ptr, ptr %i.c, align 8
  %i.bo = call zeroext i1 @equal(ptr noundef %i.bn, ptr noundef @.str.84)
  br i1 %i.bo, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.bp = load ptr, ptr %i.d, align 8
  %i.bq = load ptr, ptr %i.b, align 8
  %i.br = load ptr, ptr %i.c, align 8
  %8 = getelementptr inbounds nuw %struct.Token, ptr %i.br, i32 0, i32 1
  %i.bs = load ptr, ptr %8, align 8
  %i.bt = call ptr @assign(ptr noundef %i.bq, ptr noundef %i.bs)
  %i.bu = load ptr, ptr %i.c, align 8
  %i.bv = call ptr @new_binary(i32 noundef 7, ptr noundef %i.bp, ptr noundef %i.bt, ptr noundef %i.bu)
  %i.bw = call ptr @to_assign(ptr noundef %i.bv)
  store ptr %i.bw, ptr %i.a, align 8
  br label %bb.x

bb.o:                                             ; preds = %bb.m
  %i.bx = load ptr, ptr %i.c, align 8
  %i.by = call zeroext i1 @equal(ptr noundef %i.bx, ptr noundef @.str.85)
  br i1 %i.by, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.bz = load ptr, ptr %i.d, align 8
  %i.ca = load ptr, ptr %i.b, align 8
  %i.cb = load ptr, ptr %i.c, align 8
  %9 = getelementptr inbounds nuw %struct.Token, ptr %i.cb, i32 0, i32 1
  %i.cc = load ptr, ptr %9, align 8
  %i.cd = call ptr @assign(ptr noundef %i.ca, ptr noundef %i.cc)
  %i.ce = load ptr, ptr %i.c, align 8
  %i.cf = call ptr @new_binary(i32 noundef 8, ptr noundef %i.bz, ptr noundef %i.cd, ptr noundef %i.ce)
  %i.cg = call ptr @to_assign(ptr noundef %i.cf)
  store ptr %i.cg, ptr %i.a, align 8
  br label %bb.x

bb.q:                                             ; preds = %bb.o
  %i.ch = load ptr, ptr %i.c, align 8
  %i.ci = call zeroext i1 @equal(ptr noundef %i.ch, ptr noundef @.str.86)
  br i1 %i.ci, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.cj = load ptr, ptr %i.d, align 8
  %i.ck = load ptr, ptr %i.b, align 8
  %i.cl = load ptr, ptr %i.c, align 8
  %10 = getelementptr inbounds nuw %struct.Token, ptr %i.cl, i32 0, i32 1
  %i.cm = load ptr, ptr %10, align 8
  %i.cn = call ptr @assign(ptr noundef %i.ck, ptr noundef %i.cm)
  %i.co = load ptr, ptr %i.c, align 8
  %i.cp = call ptr @new_binary(i32 noundef 9, ptr noundef %i.cj, ptr noundef %i.cn, ptr noundef %i.co)
  %i.cq = call ptr @to_assign(ptr noundef %i.cp)
  store ptr %i.cq, ptr %i.a, align 8
  br label %bb.x

bb.s:                                             ; preds = %bb.q
  %i.cr = load ptr, ptr %i.c, align 8
  %i.cs = call zeroext i1 @equal(ptr noundef %i.cr, ptr noundef @.str.87)
  br i1 %i.cs, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.ct = load ptr, ptr %i.d, align 8
  %i.cu = load ptr, ptr %i.b, align 8
  %i.cv = load ptr, ptr %i.c, align 8
  %11 = getelementptr inbounds nuw %struct.Token, ptr %i.cv, i32 0, i32 1
  %i.cw = load ptr, ptr %11, align 8
  %i.cx = call ptr @assign(ptr noundef %i.cu, ptr noundef %i.cw)
  %i.cy = load ptr, ptr %i.c, align 8
  %i.cz = call ptr @new_binary(i32 noundef 10, ptr noundef %i.ct, ptr noundef %i.cx, ptr noundef %i.cy)
  %i.da = call ptr @to_assign(ptr noundef %i.cz)
  store ptr %i.da, ptr %i.a, align 8
  br label %bb.x

bb.u:                                             ; preds = %bb.s
  %i.db = load ptr, ptr %i.c, align 8
  %i.dc = call zeroext i1 @equal(ptr noundef %i.db, ptr noundef @.str.88)
  br i1 %i.dc, label %bb.v, label %bb.w

end_hunk_6
begin_hunk_7_@create_lvar_init:bb.a
  %25 = getelementptr inbounds nuw %struct.Member, ptr %i.bu, i32 0, i32 0
  %i.bv = load ptr, ptr %25, align 8
  store ptr %i.bv, ptr %i.j, align 8
  br label %bb.j, !llvm.loop !49

bb.m:                                             ; preds = %bb.j
  %i.bw = load ptr, ptr %i.i, align 8
  store ptr %i.bw, ptr %i.a, align 8
  br label %bb.v

bb.n:                                             ; preds = %bb.h, %bb.g
  %i.bx = load ptr, ptr %i.c, align 8
  %26 = getelementptr inbounds nuw %struct.Type, ptr %i.bx, i32 0, i32 0
  %i.by = load i32, ptr %26, align 8
  %i.bz = icmp eq i32 %i.by, 15
  br i1 %i.bz, label %bb.o, label %bb.s

bb.o:                                             ; preds = %bb.n
  %i.ca = load ptr, ptr %i.b, align 8
  %27 = getelementptr inbounds nuw %struct.Initializer, ptr %i.ca, i32 0, i32 6
  %i.cb = load ptr, ptr %27, align 8
  %i.cc = icmp ne ptr %i.cb, null
  br i1 %i.cc, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.cd = load ptr, ptr %i.b, align 8
  %28 = getelementptr inbounds nuw %struct.Initializer, ptr %i.cd, i32 0, i32 6
  %i.ce = load ptr, ptr %28, align 8
  br label %bb.r

bb.q:                                             ; preds = %bb.o
  %i.cf = load ptr, ptr %i.c, align 8
  %29 = getelementptr inbounds nuw %struct.Type, ptr %i.cf, i32 0, i32 12
  %i.cg = load ptr, ptr %29, align 8
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.ch = phi ptr [ %i.ce, %bb.p ], [ %i.cg, %bb.q ]
  store ptr %i.ch, ptr %i.l, align 8
  %30 = getelementptr inbounds nuw %struct.InitDesg, ptr %6, i32 0, i32 0
  %i.ci = load ptr, ptr %i.d, align 8
  store ptr %i.ci, ptr %30, align 8
  %31 = getelementptr inbounds nuw %struct.InitDesg, ptr %6, i32 0, i32 1
  store i32 0, ptr %31, align 8
  %i.cj = getelementptr i8, ptr %6, i64 12
  call void @llvm.memset.p0.i64(ptr align 4 %i.cj, i8 0, i64 4, i1 false)
  %32 = getelementptr inbounds nuw %struct.InitDesg, ptr %6, i32 0, i32 2
  %i.ck = load ptr, ptr %i.l, align 8
  store ptr %i.ck, ptr %32, align 8
  %33 = getelementptr inbounds nuw %struct.InitDesg, ptr %6, i32 0, i32 3
  store ptr null, ptr %33, align 8
  %i.cl = load ptr, ptr %i.b, align 8
  %34 = getelementptr inbounds nuw %struct.Initializer, ptr %i.cl, i32 0, i32 5
  %i.cm = load ptr, ptr %34, align 8
  %i.cn = load ptr, ptr %i.l, align 8
  %35 = getelementptr inbounds nuw %struct.Member, ptr %i.cn, i32 0, i32 4
  %i.co = load i32, ptr %35, align 8
  %i.cp = sext i32 %i.co to i64
  %i.cq = getelementptr inbounds ptr, ptr %i.cm, i64 %i.cp
  %i.cr = load ptr, ptr %i.cq, align 8
  %i.cs = load ptr, ptr %i.l, align 8
  %36 = getelementptr inbounds nuw %struct.Member, ptr %i.cs, i32 0, i32 1
  %i.ct = load ptr, ptr %36, align 8
  %i.cu = load ptr, ptr %i.e, align 8
  %i.cv = call ptr @create_lvar_init(ptr noundef %i.cr, ptr noundef %i.ct, ptr noundef %6, ptr noundef %i.cu)
  store ptr %i.cv, ptr %i.a, align 8
  br label %bb.v

bb.s:                                             ; preds = %bb.n
  %i.cw = load ptr, ptr %i.b, align 8
  %37 = getelementptr inbounds nuw %struct.Initializer, ptr %i.cw, i32 0, i32 4
  %i.cx = load ptr, ptr %37, align 8
  %i.cy = icmp ne ptr %i.cx, null
  br i1 %i.cy, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.cz = load ptr, ptr %i.e, align 8
  %i.da = call ptr @new_node(i32 noundef 0, ptr noundef %i.cz)
  store ptr %i.da, ptr %i.a, align 8
  br label %bb.v

bb.u:                                             ; preds = %bb.s
  %i.db = load ptr, ptr %i.d, align 8
  %i.dc = load ptr, ptr %i.e, align 8
  %i.dd = call ptr @init_desg_expr(ptr noundef %i.db, ptr noundef %i.dc)
  store ptr %i.dd, ptr %i.m, align 8
  %i.de = load ptr, ptr %i.m, align 8
  %i.df = load ptr, ptr %i.b, align 8
  %38 = getelementptr inbounds nuw %struct.Initializer, ptr %i.df, i32 0, i32 4
  %i.dg = load ptr, ptr %38, align 8
  %i.dh = load ptr, ptr %i.e, align 8
  %i.di = call ptr @new_binary(i32 noundef 16, ptr noundef %i.de, ptr noundef %i.dg, ptr noundef %i.dh)
  store ptr %i.di, ptr %i.a, align 8
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t, %bb.r, %bb.m, %bb.f
  %i.dj = load ptr, ptr %i.a, align 8
  ret ptr %i.dj
}

; Function Attrs: noinline nounwind optnone uwtable
define internal ptr @init_desg_expr(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 8 uses
  %i.c = alloca ptr, align 8                      ; 8 uses
  %i.d = alloca ptr, align 8                      ; 3 uses
  %i.e = alloca ptr, align 8                      ; 2 uses
  %i.f = alloca ptr, align 8                      ; 2 uses
  store ptr %0, ptr %i.b, align 8
  store ptr %1, ptr %i.c, align 8
  %i.g = load ptr, ptr %i.b, align 8
  %2 = getelementptr inbounds nuw %struct.InitDesg, ptr %i.g, i32 0, i32 3
  %i.h = load ptr, ptr %2, align 8
  %i.i = icmp ne ptr %i.h, null
  br i1 %i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.j = load ptr, ptr %i.b, align 8
  %3 = getelementptr inbounds nuw %struct.InitDesg, ptr %i.j, i32 0, i32 3
  %i.k = load ptr, ptr %3, align 8
  %i.l = load ptr, ptr %i.c, align 8
  %i.m = call ptr @new_var_node(ptr noundef %i.k, ptr noundef %i.l)
  store ptr %i.m, ptr %i.a, align 8
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.n = load ptr, ptr %i.b, align 8
  %4 = getelementptr inbounds nuw %struct.InitDesg, ptr %i.n, i32 0, i32 2
  %i.o = load ptr, ptr %4, align 8
  %i.p = icmp ne ptr %i.o, null
  br i1 %i.p, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.q = load ptr, ptr %i.b, align 8
  %5 = getelementptr inbounds nuw %struct.InitDesg, ptr %i.q, i32 0, i32 0
  %i.r = load ptr, ptr %5, align 8
  %i.s = load ptr, ptr %i.c, align 8
  %i.t = call ptr @init_desg_expr(ptr noundef %i.r, ptr noundef %i.s)
  %i.u = load ptr, ptr %i.c, align 8
  %i.v = call ptr @new_unary(i32 noundef 19, ptr noundef %i.t, ptr noundef %i.u)
  store ptr %i.v, ptr %i.d, align 8
  %i.w = load ptr, ptr %i.b, align 8
  %6 = getelementptr inbounds nuw %struct.InitDesg, ptr %i.w, i32 0, i32 2
  %i.x = load ptr, ptr %6, align 8
  %i.y = load ptr, ptr %i.d, align 8
  %7 = getelementptr inbounds nuw %struct.Node, ptr %i.y, i32 0, i32 14
  store ptr %i.x, ptr %7, align 16
  %i.z = load ptr, ptr %i.d, align 8
  store ptr %i.z, ptr %i.a, align 8
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.aa = load ptr, ptr %i.b, align 8
  %8 = getelementptr inbounds nuw %struct.InitDesg, ptr %i.aa, i32 0, i32 0
  %i.ab = load ptr, ptr %8, align 8
  %i.ac = load ptr, ptr %i.c, align 8
  %i.ad = call ptr @init_desg_expr(ptr noundef %i.ab, ptr noundef %i.ac)
  store ptr %i.ad, ptr %i.e, align 8
  %i.ae = load ptr, ptr %i.b, align 8
  %9 = getelementptr inbounds nuw %struct.InitDesg, ptr %i.ae, i32 0, i32 1
  %i.af = load i32, ptr %9, align 8
  %i.ag = sext i32 %i.af to i64
  %i.ah = load ptr, ptr %i.c, align 8
  %i.ai = call ptr @new_num(i64 noundef %i.ag, ptr noundef %i.ah)
  store ptr %i.ai, ptr %i.f, align 8
  %i.aj = load ptr, ptr %i.e, align 8
  %i.ak = load ptr, ptr %i.f, align 8
  %i.al = load ptr, ptr %i.c, align 8
  %i.am = call ptr @new_add(ptr noundef %i.aj, ptr noundef %i.ak, ptr noundef %i.al)
  %i.an = load ptr, ptr %i.c, align 8
  %i.ao = call ptr @new_unary(i32 noundef 21, ptr noundef %i.am, ptr noundef %i.an)
  store ptr %i.ao, ptr %i.a, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.b
  %i.ap = load ptr, ptr %i.a, align 8
  ret ptr %i.ap
}

; Function Attrs: noinline nounwind optnone uwtable
define internal ptr @compound_stmt(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 2 uses
  %i.b = alloca ptr, align 8                      ; 19 uses
  %i.c = alloca ptr, align 8                      ; 3 uses
  %2 = alloca %struct.Node, align 16              ; 3 uses
  %i.d = alloca ptr, align 8                      ; 6 uses
  %3 = alloca %struct.VarAttr, align 4            ; 7 uses
  %i.e = alloca ptr, align 8                      ; 5 uses
  store ptr %0, ptr %i.a, align 8
  store ptr %1, ptr %i.b, align 8
  %i.f = load ptr, ptr %i.b, align 8
  %i.g = call ptr @new_node(i32 noundef 32, ptr noundef %i.f)
  store ptr %i.g, ptr %i.c, align 8
  call void @llvm.memset.p0.i64(ptr align 16 %2, i8 0, i64 288, i1 false)
  store ptr %2, ptr %i.d, align 8
  call void @enter_scope()
  br label %bb.b

bb.b:                                             ; preds = %.backedge, %bb.a
  %i.h = load ptr, ptr %i.b, align 8
  %i.i = call zeroext i1 @equal(ptr noundef %i.h, ptr noundef @.str.69)
  %i.j = xor i1 %i.i, true
  br i1 %i.j, label %bb.c, label %bb.n

bb.c:                                             ; preds = %bb.b
  %i.k = load ptr, ptr %i.b, align 8
  %i.l = call zeroext i1 @is_typename(ptr noundef %i.k)
  br i1 %i.l, label %bb.d, label %bb.l

bb.d:                                             ; preds = %bb.c
  %i.m = load ptr, ptr %i.b, align 8
  %4 = getelementptr inbounds nuw %struct.Token, ptr %i.m, i32 0, i32 1
  %i.n = load ptr, ptr %4, align 8
  %i.o = call zeroext i1 @equal(ptr noundef %i.n, ptr noundef @.str.3)
  br i1 %i.o, label %bb.l, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.memset.p0.i64(ptr align 4 %3, i8 0, i64 12, i1 false)
  %i.p = load ptr, ptr %i.b, align 8
  %i.q = call ptr @declspec(ptr noundef %i.b, ptr noundef %i.p, ptr noundef %3)
  store ptr %i.q, ptr %i.e, align 8
  %5 = getelementptr inbounds nuw %struct.VarAttr, ptr %3, i32 0, i32 0
  %i.r = load i8, ptr %5, align 4
  %i.s = icmp ne i8 %i.r, 0
  br i1 %i.s, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.t = load ptr, ptr %i.b, align 8
  %i.u = load ptr, ptr %i.e, align 8
  %i.v = call ptr @parse_typedef(ptr noundef %i.t, ptr noundef %i.u)
  store ptr %i.v, ptr %i.b, align 8
  br label %.backedge

.backedge:                                        ; preds = %bb.f, %bb.h, %bb.j, %bb.m
  br label %bb.b, !llvm.loop !50

bb.g:                                             ; preds = %bb.e
  %i.w = load ptr, ptr %i.b, align 8
  %i.x = call zeroext i1 @is_function(ptr noundef %i.w)
  br i1 %i.x, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.y = load ptr, ptr %i.b, align 8
  %i.z = load ptr, ptr %i.e, align 8
  %i.aa = call ptr @function(ptr noundef %i.y, ptr noundef %i.z, ptr noundef %3)
  store ptr %i.aa, ptr %i.b, align 8
  br label %.backedge

bb.i:                                             ; preds = %bb.g
  %6 = getelementptr inbounds nuw %struct.VarAttr, ptr %3, i32 0, i32 2
  %i.ab = load i8, ptr %6, align 2
  %i.ac = icmp ne i8 %i.ab, 0
  br i1 %i.ac, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ad = load ptr, ptr %i.b, align 8
  %i.ae = load ptr, ptr %i.e, align 8
  %i.af = call ptr @global_variable(ptr noundef %i.ad, ptr noundef %i.ae, ptr noundef %3)
  store ptr %i.af, ptr %i.b, align 8
  br label %.backedge

bb.k:                                             ; preds = %bb.i
  %i.ag = load ptr, ptr %i.b, align 8
  %i.ah = load ptr, ptr %i.e, align 8
  %i.ai = call ptr @declaration(ptr noundef %i.b, ptr noundef %i.ag, ptr noundef %i.ah, ptr noundef %3) ; 2 uses
  %i.aj = load ptr, ptr %i.d, align 8
  %7 = getelementptr inbounds nuw %struct.Node, ptr %i.aj, i32 0, i32 1
  store ptr %i.ai, ptr %7, align 8
  store ptr %i.ai, ptr %i.d, align 8
  br label %bb.m

bb.l:                                             ; preds = %bb.d, %bb.c
  %i.ak = load ptr, ptr %i.b, align 8
  %i.al = call ptr @stmt(ptr noundef %i.b, ptr noundef %i.ak) ; 2 uses
  %i.am = load ptr, ptr %i.d, align 8
  %8 = getelementptr inbounds nuw %struct.Node, ptr %i.am, i32 0, i32 1
  store ptr %i.al, ptr %8, align 8
  store ptr %i.al, ptr %i.d, align 8
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.an = load ptr, ptr %i.d, align 8
  call void @add_type(ptr noundef %i.an)
  br label %.backedge

bb.n:                                             ; preds = %bb.b
  call void @leave_scope()
  %9 = getelementptr inbounds nuw %struct.Node, ptr %2, i32 0, i32 1
  %i.ao = load ptr, ptr %9, align 8
  %i.ap = load ptr, ptr %i.c, align 8
  %10 = getelementptr inbounds nuw %struct.Node, ptr %i.ap, i32 0, i32 13
  store ptr %i.ao, ptr %10, align 8
  %i.aq = load ptr, ptr %i.b, align 8
  %11 = getelementptr inbounds nuw %struct.Token, ptr %i.aq, i32 0, i32 1
  %i.ar = load ptr, ptr %11, align 8
  %i.as = load ptr, ptr %i.a, align 8
  store ptr %i.ar, ptr %i.as, align 8
  %i.at = load ptr, ptr %i.c, align 8
  ret ptr %i.at
}

; Function Attrs: noinline nounwind optnone uwtable
define internal ptr @compute_vla_size(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 3 uses
  %i.b = alloca ptr, align 8                      ; 10 uses
  %i.c = alloca ptr, align 8                      ; 10 uses
  %i.d = alloca ptr, align 8                      ; 5 uses
  %i.e = alloca ptr, align 8                      ; 3 uses
  %i.f = alloca ptr, align 8                      ; 2 uses
  store ptr %0, ptr %i.b, align 8
  store ptr %1, ptr %i.c, align 8
  %i.g = load ptr, ptr %i.c, align 8
  %i.h = call ptr @new_node(i32 noundef 0, ptr noundef %i.g)
  store ptr %i.h, ptr %i.d, align 8
  %i.i = load ptr, ptr %i.b, align 8
  %2 = getelementptr inbounds nuw %struct.Type, ptr %i.i, i32 0, i32 6
  %i.j = load ptr, ptr %2, align 8
  %i.k = icmp ne ptr %i.j, null
  br i1 %i.k, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.l = load ptr, ptr %i.d, align 8
  %i.m = load ptr, ptr %i.b, align 8
  %3 = getelementptr inbounds nuw %struct.Type, ptr %i.m, i32 0, i32 6
  %i.n = load ptr, ptr %3, align 8
  %i.o = load ptr, ptr %i.c, align 8
  %i.p = call ptr @compute_vla_size(ptr noundef %i.n, ptr noundef %i.o)
  %i.q = load ptr, ptr %i.c, align 8
  %i.r = call ptr @new_binary(i32 noundef 18, ptr noundef %i.l, ptr noundef %i.p, ptr noundef %i.q)
  store ptr %i.r, ptr %i.d, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.s = load ptr, ptr %i.b, align 8
  %4 = getelementptr inbounds nuw %struct.Type, ptr %i.s, i32 0, i32 0
  %i.t = load i32, ptr %4, align 8
  %i.u = icmp ne i32 %i.t, 13
  br i1 %i.u, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.v = load ptr, ptr %i.d, align 8
  store ptr %i.v, ptr %i.a, align 8
  br label %bb.i

bb.e:                                             ; preds = %bb.c
  %i.w = load ptr, ptr %i.b, align 8
  %5 = getelementptr inbounds nuw %struct.Type, ptr %i.w, i32 0, i32 6
  %i.x = load ptr, ptr %5, align 8
  %6 = getelementptr inbounds nuw %struct.Type, ptr %i.x, i32 0, i32 0
  %i.y = load i32, ptr %6, align 8
  %i.z = icmp eq i32 %i.y, 13
  br i1 %i.z, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.aa = load ptr, ptr %i.b, align 8
  %7 = getelementptr inbounds nuw %struct.Type, ptr %i.aa, i32 0, i32 6
  %i.ab = load ptr, ptr %7, align 8
  %8 = getelementptr inbounds nuw %struct.Type, ptr %i.ab, i32 0, i32 11
  %i.ac = load ptr, ptr %8, align 8
  %i.ad = load ptr, ptr %i.c, align 8
  %i.ae = call ptr @new_var_node(ptr noundef %i.ac, ptr noundef %i.ad)
  store ptr %i.ae, ptr %i.e, align 8
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.af = load ptr, ptr %i.b, align 8
  %9 = getelementptr inbounds nuw %struct.Type, ptr %i.af, i32 0, i32 6
  %i.ag = load ptr, ptr %9, align 8
  %10 = getelementptr inbounds nuw %struct.Type, ptr %i.ag, i32 0, i32 1
  %i.ah = load i32, ptr %10, align 4
  %i.ai = sext i32 %i.ah to i64
  %i.aj = load ptr, ptr %i.c, align 8
  %i.ak = call ptr @new_num(i64 noundef %i.ai, ptr noundef %i.aj)
  store ptr %i.ak, ptr %i.e, align 8
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.al = load ptr, ptr @ty_ulong, align 8
  %i.am = call ptr @new_lvar(ptr noundef @.str.4, ptr noundef %i.al)
  %i.an = load ptr, ptr %i.b, align 8
  %11 = getelementptr inbounds nuw %struct.Type, ptr %i.an, i32 0, i32 11
  store ptr %i.am, ptr %11, align 8
  %i.ao = load ptr, ptr %i.b, align 8
  %12 = getelementptr inbounds nuw %struct.Type, ptr %i.ao, i32 0, i32 11
  %i.ap = load ptr, ptr %12, align 8
  %i.aq = load ptr, ptr %i.c, align 8
  %i.ar = call ptr @new_var_node(ptr noundef %i.ap, ptr noundef %i.aq)
  %i.as = load ptr, ptr %i.b, align 8
  %13 = getelementptr inbounds nuw %struct.Type, ptr %i.as, i32 0, i32 10
  %i.at = load ptr, ptr %13, align 8
  %i.au = load ptr, ptr %i.e, align 8
  %i.av = load ptr, ptr %i.c, align 8
  %i.aw = call ptr @new_binary(i32 noundef 3, ptr noundef %i.at, ptr noundef %i.au, ptr noundef %i.av)
  %i.ax = load ptr, ptr %i.c, align 8
  %i.ay = call ptr @new_binary(i32 noundef 16, ptr noundef %i.ar, ptr noundef %i.aw, ptr noundef %i.ax)
  store ptr %i.ay, ptr %i.f, align 8
  %i.az = load ptr, ptr %i.d, align 8
  %i.ba = load ptr, ptr %i.f, align 8
  %i.bb = load ptr, ptr %i.c, align 8
  %i.bc = call ptr @new_binary(i32 noundef 18, ptr noundef %i.az, ptr noundef %i.ba, ptr noundef %i.bb)
  store ptr %i.bc, ptr %i.a, align 8
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.d
  %i.bd = load ptr, ptr %i.a, align 8
  ret ptr %i.bd
}

; Function Attrs: noinline nounwind optnone uwtable
define internal ptr @new_ulong(i64 noundef range(i64 -2147483648, 2147483648) %0, ptr noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 2 uses
  %i.b = alloca ptr, align 8                      ; 2 uses
  %i.c = alloca ptr, align 8                      ; 4 uses
  store i64 %0, ptr %i.a, align 8
  store ptr %1, ptr %i.b, align 8
  %i.d = load ptr, ptr %i.b, align 8
  %i.e = call ptr @new_node(i32 noundef 42, ptr noundef %i.d)
  store ptr %i.e, ptr %i.c, align 8
  %i.f = load i64, ptr %i.a, align 8
  %i.g = load ptr, ptr %i.c, align 8
  %2 = getelementptr inbounds nuw %struct.Node, ptr %i.g, i32 0, i32 33
  store i64 %i.f, ptr %2, align 8
  %i.h = load ptr, ptr @ty_ulong, align 8
  %i.i = load ptr, ptr %i.c, align 8
  %3 = getelementptr inbounds nuw %struct.Node, ptr %i.i, i32 0, i32 2
  store ptr %i.h, ptr %3, align 16
  %i.j = load ptr, ptr %i.c, align 8
  ret ptr %i.j
}

; Function Attrs: noinline nounwind optnone uwtable
define internal ptr @generic_selection(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 2 uses
  %i.b = alloca ptr, align 8                      ; 20 uses
  %i.c = alloca ptr, align 8                      ; 2 uses
  %i.d = alloca ptr, align 8                      ; 3 uses
  %i.e = alloca ptr, align 8                      ; 8 uses
  %i.f = alloca ptr, align 8                      ; 6 uses
  %i.g = alloca ptr, align 8                      ; 2 uses
  %i.h = alloca ptr, align 8                      ; 2 uses
  %i.i = alloca ptr, align 8                      ; 2 uses
  store ptr %0, ptr %i.a, align 8
  store ptr %1, ptr %i.b, align 8
  %i.j = load ptr, ptr %i.b, align 8
  store ptr %i.j, ptr %i.c, align 8
  %i.k = load ptr, ptr %i.b, align 8
  %i.l = call ptr @skip(ptr noundef %i.k, ptr noundef @.str.23)
  store ptr %i.l, ptr %i.b, align 8
  %i.m = load ptr, ptr %i.b, align 8
  %i.n = call ptr @assign(ptr noundef %i.b, ptr noundef %i.m)
  store ptr %i.n, ptr %i.d, align 8
  %i.o = load ptr, ptr %i.d, align 8
  call void @add_type(ptr noundef %i.o)
  %i.p = load ptr, ptr %i.d, align 8
  %2 = getelementptr inbounds nuw %struct.Node, ptr %i.p, i32 0, i32 2
  %i.q = load ptr, ptr %2, align 16
  store ptr %i.q, ptr %i.e, align 8
  %i.r = load ptr, ptr %i.e, align 8
  %3 = getelementptr inbounds nuw %struct.Type, ptr %i.r, i32 0, i32 0
  %i.s = load i32, ptr %3, align 8
  %i.t = icmp eq i32 %i.s, 11
  br i1 %i.t, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.u = load ptr, ptr %i.e, align 8
  %i.v = call ptr @pointer_to(ptr noundef %i.u)
  store ptr %i.v, ptr %i.e, align 8
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.w = load ptr, ptr %i.e, align 8
  %4 = getelementptr inbounds nuw %struct.Type, ptr %i.w, i32 0, i32 0
  %i.x = load i32, ptr %4, align 8
  %i.y = icmp eq i32 %i.x, 12
  br i1 %i.y, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.z = load ptr, ptr %i.e, align 8
  %5 = getelementptr inbounds nuw %struct.Type, ptr %i.z, i32 0, i32 6
  %i.aa = load ptr, ptr %5, align 8
  %i.ab = call ptr @pointer_to(ptr noundef %i.aa)
  store ptr %i.ab, ptr %i.e, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.b
  store ptr null, ptr %i.f, align 8
  br label %bb.g

bb.g:                                             ; preds = %bb.k, %bb.f
  %i.ac = load ptr, ptr %i.a, align 8
  %i.ad = load ptr, ptr %i.b, align 8
  %i.ae = call zeroext i1 @consume(ptr noundef %i.ac, ptr noundef %i.ad, ptr noundef @.str.24)
  %i.af = xor i1 %i.ae, true
  br i1 %i.af, label %bb.h, label %bb.o

bb.h:                                             ; preds = %bb.g
  %i.ag = load ptr, ptr %i.b, align 8
  %i.ah = call ptr @skip(ptr noundef %i.ag, ptr noundef @.str.57)
  store ptr %i.ah, ptr %i.b, align 8
  %i.ai = load ptr, ptr %i.b, align 8
  %i.aj = call zeroext i1 @equal(ptr noundef %i.ai, ptr noundef @.str.111)
  br i1 %i.aj, label %bb.i, label %bb.l

bb.i:                                             ; preds = %bb.h
  %i.ak = load ptr, ptr %i.b, align 8
  %6 = getelementptr inbounds nuw %struct.Token, ptr %i.ak, i32 0, i32 1
  %i.al = load ptr, ptr %6, align 8
  %i.am = call ptr @skip(ptr noundef %i.al, ptr noundef @.str.3)
  store ptr %i.am, ptr %i.b, align 8
  %i.an = load ptr, ptr %i.b, align 8
  %i.ao = call ptr @assign(ptr noundef %i.b, ptr noundef %i.an)
  store ptr %i.ao, ptr %i.g, align 8
  %i.ap = load ptr, ptr %i.f, align 8
  %i.aq = icmp ne ptr %i.ap, null
  br i1 %i.aq, label %7, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ar = load ptr, ptr %i.g, align 8
  store ptr %i.ar, ptr %i.f, align 8
  br label %7

7:                                                ; preds = %bb.j, %bb.i
  br label %bb.k

bb.k:                                             ; preds = %7, %bb.n
  br label %bb.g, !llvm.loop !51

bb.l:                                             ; preds = %bb.h
  %i.as = load ptr, ptr %i.b, align 8
  %i.at = call ptr @typename(ptr noundef %i.b, ptr noundef %i.as)
  store ptr %i.at, ptr %i.h, align 8
  %i.au = load ptr, ptr %i.b, align 8
  %i.av = call ptr @skip(ptr noundef %i.au, ptr noundef @.str.3)
  store ptr %i.av, ptr %i.b, align 8
  %i.aw = load ptr, ptr %i.b, align 8
  %i.ax = call ptr @assign(ptr noundef %i.b, ptr noundef %i.aw)
  store ptr %i.ax, ptr %i.i, align 8
  %i.ay = load ptr, ptr %i.e, align 8
  %i.az = load ptr, ptr %i.h, align 8
  %i.ba = call zeroext i1 @is_compatible(ptr noundef %i.ay, ptr noundef %i.az)
  br i1 %i.ba, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.bb = load ptr, ptr %i.i, align 8
  store ptr %i.bb, ptr %i.f, align 8
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  br label %bb.k

bb.o:                                             ; preds = %bb.g
  %i.bc = load ptr, ptr %i.f, align 8
  %i.bd = icmp ne ptr %i.bc, null
  br i1 %i.bd, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.be = load ptr, ptr %i.c, align 8
  call void (ptr, ptr, ...) @error_tok(ptr noundef %i.be, ptr noundef @.str.123) #9
  unreachable

bb.q:                                             ; preds = %bb.o
  %i.bf = load ptr, ptr %i.f, align 8
  ret ptr %i.bf
}

declare zeroext i1 @is_compatible(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @strarray_push(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optnone uwtable
define internal ptr @new_string_literal(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 2 uses
  %i.b = alloca ptr, align 8                      ; 2 uses
  %i.c = alloca ptr, align 8                      ; 3 uses
  store ptr %0, ptr %i.a, align 8
  store ptr %1, ptr %i.b, align 8
  %i.d = load ptr, ptr %i.b, align 8
  %i.e = call ptr @new_anon_gvar(ptr noundef %i.d)
  store ptr %i.e, ptr %i.c, align 8
  %i.f = load ptr, ptr %i.a, align 8
  %i.g = load ptr, ptr %i.c, align 8
  %2 = getelementptr inbounds nuw %struct.Obj, ptr %i.g, i32 0, i32 12
  store ptr %i.f, ptr %2, align 8
  %i.h = load ptr, ptr %i.c, align 8
  ret ptr %i.h
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @enter_scope() unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 3 uses
  %i.b = call noalias ptr @calloc(i64 noundef 1, i64 noundef 40) #8
  store ptr %i.b, ptr %i.a, align 8
  %i.c = load ptr, ptr @scope, align 8
  %i.d = load ptr, ptr %i.a, align 8
  %0 = getelementptr inbounds nuw %struct.Scope, ptr %i.d, i32 0, i32 0
  store ptr %i.c, ptr %0, align 8
  %i.e = load ptr, ptr %i.a, align 8
  store ptr %i.e, ptr @scope, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal ptr @declaration(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 2 uses
  %i.b = alloca ptr, align 8                      ; 20 uses
  %i.c = alloca ptr, align 8                      ; 2 uses
  %i.d = alloca ptr, align 8                      ; 6 uses
  %4 = alloca %struct.Node, align 16              ; 3 uses
  %i.e = alloca ptr, align 8                      ; 7 uses
  %i.f = alloca i32, align 4                      ; 3 uses
  %i.g = alloca ptr, align 8                      ; 16 uses
  %i.h = alloca ptr, align 8                      ; 3 uses
  %i.i = alloca ptr, align 8                      ; 2 uses
  %i.j = alloca ptr, align 8                      ; 5 uses
  %i.k = alloca ptr, align 8                      ; 2 uses
  %i.l = alloca ptr, align 8                      ; 5 uses
  %i.m = alloca ptr, align 8                      ; 2 uses
  %i.n = alloca ptr, align 8                      ; 3 uses
  store ptr %0, ptr %i.a, align 8
  store ptr %1, ptr %i.b, align 8
  store ptr %2, ptr %i.c, align 8
  store ptr %3, ptr %i.d, align 8
  call void @llvm.memset.p0.i64(ptr align 16 %4, i8 0, i64 288, i1 false)
  store ptr %4, ptr %i.e, align 8
  store i32 0, ptr %i.f, align 4
  br label %bb.b

bb.b:                                             ; preds = %bb.m, %bb.a
  %i.o = load ptr, ptr %i.b, align 8
  %i.p = call zeroext i1 @equal(ptr noundef %i.o, ptr noundef @.str.99)
  %i.q = xor i1 %i.p, true
  br i1 %i.q, label %bb.c, label %bb.ab

bb.c:                                             ; preds = %bb.b
  %i.r = load i32, ptr %i.f, align 4              ; 2 uses
  %i.s = add nsw i32 %i.r, 1
  store i32 %i.s, ptr %i.f, align 4
  %i.t = icmp sgt i32 %i.r, 0
  br i1 %i.t, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.u = load ptr, ptr %i.b, align 8
  %i.v = call ptr @skip(ptr noundef %i.u, ptr noundef @.str.57)
  store ptr %i.v, ptr %i.b, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.w = load ptr, ptr %i.b, align 8
  %i.x = load ptr, ptr %i.c, align 8
  %i.y = call ptr @declarator(ptr noundef %i.b, ptr noundef %i.w, ptr noundef %i.x)
  store ptr %i.y, ptr %i.g, align 8
  %i.z = load ptr, ptr %i.g, align 8
  %5 = getelementptr inbounds nuw %struct.Type, ptr %i.z, i32 0, i32 0
  %i.aa = load i32, ptr %5, align 8
  %i.ab = icmp eq i32 %i.aa, 0
  br i1 %i.ab, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ac = load ptr, ptr %i.b, align 8
  call void (ptr, ptr, ...) @error_tok(ptr noundef %i.ac, ptr noundef @.str.100) #9
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.ad = load ptr, ptr %i.g, align 8
  %6 = getelementptr inbounds nuw %struct.Type, ptr %i.ad, i32 0, i32 7
  %i.ae = load ptr, ptr %6, align 8
  %i.af = icmp ne ptr %i.ae, null
  br i1 %i.af, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ag = load ptr, ptr %i.g, align 8
  %7 = getelementptr inbounds nuw %struct.Type, ptr %i.ag, i32 0, i32 8
  %i.ah = load ptr, ptr %7, align 8
  call void (ptr, ptr, ...) @error_tok(ptr noundef %i.ah, ptr noundef @.str.101) #9
  unreachable

bb.i:                                             ; preds = %bb.g
  %i.ai = load ptr, ptr %i.d, align 8
  %i.aj = icmp ne ptr %i.ai, null
  br i1 %i.aj, label %bb.j, label %bb.n

bb.j:                                             ; preds = %bb.i
  %i.ak = load ptr, ptr %i.d, align 8
  %8 = getelementptr inbounds nuw %struct.VarAttr, ptr %i.ak, i32 0, i32 1
  %i.al = load i8, ptr %8, align 1
  %i.am = icmp ne i8 %i.al, 0
  br i1 %i.am, label %bb.k, label %bb.n

bb.k:                                             ; preds = %bb.j
  %i.an = load ptr, ptr %i.g, align 8
  %i.ao = call ptr @new_anon_gvar(ptr noundef %i.an)
  store ptr %i.ao, ptr %i.h, align 8
  %i.ap = load ptr, ptr %i.h, align 8
  %i.aq = load ptr, ptr %i.g, align 8
  %9 = getelementptr inbounds nuw %struct.Type, ptr %i.aq, i32 0, i32 7
  %i.ar = load ptr, ptr %9, align 8
  %i.as = call ptr @get_ident(ptr noundef %i.ar)
  %i.at = call ptr @push_scope(ptr noundef %i.as)
  %10 = getelementptr inbounds nuw %struct.VarScope, ptr %i.at, i32 0, i32 0
  store ptr %i.ap, ptr %10, align 8
  %i.au = load ptr, ptr %i.b, align 8
  %i.av = call zeroext i1 @equal(ptr noundef %i.au, ptr noundef @.str.76)
  br i1 %i.av, label %bb.l, label %12

bb.l:                                             ; preds = %bb.k
  %i.aw = load ptr, ptr %i.b, align 8
  %11 = getelementptr inbounds nuw %struct.Token, ptr %i.aw, i32 0, i32 1
  %i.ax = load ptr, ptr %11, align 8
  %i.ay = load ptr, ptr %i.h, align 8
  call void @gvar_initializer(ptr noundef %i.b, ptr noundef %i.ax, ptr noundef %i.ay)
  br label %12

12:                                               ; preds = %bb.l, %bb.k
  br label %bb.m

bb.m:                                             ; preds = %12, %bb.q, %bb.aa
  br label %bb.b, !llvm.loop !52

bb.n:                                             ; preds = %bb.j, %bb.i
  %i.az = load ptr, ptr %i.g, align 8
  %i.ba = load ptr, ptr %i.b, align 8
  %i.bb = call ptr @compute_vla_size(ptr noundef %i.az, ptr noundef %i.ba)
  %i.bc = load ptr, ptr %i.b, align 8
  %i.bd = call ptr @new_unary(i32 noundef 38, ptr noundef %i.bb, ptr noundef %i.bc) ; 2 uses
  %i.be = load ptr, ptr %i.e, align 8
  %13 = getelementptr inbounds nuw %struct.Node, ptr %i.be, i32 0, i32 1
  store ptr %i.bd, ptr %13, align 8
  store ptr %i.bd, ptr %i.e, align 8
  %i.bf = load ptr, ptr %i.g, align 8
  %14 = getelementptr inbounds nuw %struct.Type, ptr %i.bf, i32 0, i32 0
  %i.bg = load i32, ptr %14, align 8
  %i.bh = icmp eq i32 %i.bg, 13
  br i1 %i.bh, label %bb.o, label %bb.r

bb.o:                                             ; preds = %bb.n
  %i.bi = load ptr, ptr %i.b, align 8
  %i.bj = call zeroext i1 @equal(ptr noundef %i.bi, ptr noundef @.str.76)
  br i1 %i.bj, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.bk = load ptr, ptr %i.b, align 8
  call void (ptr, ptr, ...) @error_tok(ptr noundef %i.bk, ptr noundef @.str.102) #9
  unreachable

bb.q:                                             ; preds = %bb.o
  %i.bl = load ptr, ptr %i.g, align 8
  %15 = getelementptr inbounds nuw %struct.Type, ptr %i.bl, i32 0, i32 7
  %i.bm = load ptr, ptr %15, align 8
  %i.bn = call ptr @get_ident(ptr noundef %i.bm)
  %i.bo = load ptr, ptr %i.g, align 8
  %i.bp = call ptr @new_lvar(ptr noundef %i.bn, ptr noundef %i.bo)
  store ptr %i.bp, ptr %i.i, align 8
  %i.bq = load ptr, ptr %i.g, align 8
  %16 = getelementptr inbounds nuw %struct.Type, ptr %i.bq, i32 0, i32 7
  %i.br = load ptr, ptr %16, align 8
  store ptr %i.br, ptr %i.j, align 8
  %i.bs = load ptr, ptr %i.i, align 8
  %i.bt = load ptr, ptr %i.j, align 8
  %i.bu = call ptr @new_vla_ptr(ptr noundef %i.bs, ptr noundef %i.bt)
  %i.bv = load ptr, ptr %i.g, align 8
  %17 = getelementptr inbounds nuw %struct.Type, ptr %i.bv, i32 0, i32 11
  %i.bw = load ptr, ptr %17, align 8
  %i.bx = load ptr, ptr %i.j, align 8
  %i.by = call ptr @new_var_node(ptr noundef %i.bw, ptr noundef %i.bx)
  %i.bz = call ptr @new_alloca(ptr noundef %i.by)
  %i.ca = load ptr, ptr %i.j, align 8
  %i.cb = call ptr @new_binary(i32 noundef 16, ptr noundef %i.bu, ptr noundef %i.bz, ptr noundef %i.ca)
  store ptr %i.cb, ptr %i.k, align 8
  %i.cc = load ptr, ptr %i.k, align 8
  %i.cd = load ptr, ptr %i.j, align 8
  %i.ce = call ptr @new_unary(i32 noundef 38, ptr noundef %i.cc, ptr noundef %i.cd) ; 2 uses
  %i.cf = load ptr, ptr %i.e, align 8
  %18 = getelementptr inbounds nuw %struct.Node, ptr %i.cf, i32 0, i32 1
  store ptr %i.ce, ptr %18, align 8
  store ptr %i.ce, ptr %i.e, align 8
  br label %bb.m

bb.r:                                             ; preds = %bb.n
  %i.cg = load ptr, ptr %i.g, align 8
  %19 = getelementptr inbounds nuw %struct.Type, ptr %i.cg, i32 0, i32 7
  %i.ch = load ptr, ptr %19, align 8
  %i.ci = call ptr @get_ident(ptr noundef %i.ch)
  %i.cj = load ptr, ptr %i.g, align 8
  %i.ck = call ptr @new_lvar(ptr noundef %i.ci, ptr noundef %i.cj)
  store ptr %i.ck, ptr %i.l, align 8
  %i.cl = load ptr, ptr %i.d, align 8
  %i.cm = icmp ne ptr %i.cl, null
  br i1 %i.cm, label %bb.s, label %bb.u

bb.s:                                             ; preds = %bb.r
  %i.cn = load ptr, ptr %i.d, align 8
  %20 = getelementptr inbounds nuw %struct.VarAttr, ptr %i.cn, i32 0, i32 5
  %i.co = load i32, ptr %20, align 4
  %i.cp = icmp ne i32 %i.co, 0
  br i1 %i.cp, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.cq = load ptr, ptr %i.d, align 8
  %21 = getelementptr inbounds nuw %struct.VarAttr, ptr %i.cq, i32 0, i32 5
  %i.cr = load i32, ptr %21, align 4
  %i.cs = load ptr, ptr %i.l, align 8
  %22 = getelementptr inbounds nuw %struct.Obj, ptr %i.cs, i32 0, i32 5
  store i32 %i.cr, ptr %22, align 4
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s, %bb.r
  %i.ct = load ptr, ptr %i.b, align 8
  %i.cu = call zeroext i1 @equal(ptr noundef %i.ct, ptr noundef @.str.76)
  br i1 %i.cu, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.cv = load ptr, ptr %i.b, align 8
  %23 = getelementptr inbounds nuw %struct.Token, ptr %i.cv, i32 0, i32 1
  %i.cw = load ptr, ptr %23, align 8
  %i.cx = load ptr, ptr %i.l, align 8
  %i.cy = call ptr @lvar_initializer(ptr noundef %i.b, ptr noundef %i.cw, ptr noundef %i.cx)
  store ptr %i.cy, ptr %i.m, align 8
  %i.cz = load ptr, ptr %i.m, align 8
  %i.da = load ptr, ptr %i.b, align 8
  %i.db = call ptr @new_unary(i32 noundef 38, ptr noundef %i.cz, ptr noundef %i.da) ; 2 uses
  %i.dc = load ptr, ptr %i.e, align 8
  %24 = getelementptr inbounds nuw %struct.Node, ptr %i.dc, i32 0, i32 1
  store ptr %i.db, ptr %24, align 8
  store ptr %i.db, ptr %i.e, align 8
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %i.dd = load ptr, ptr %i.l, align 8
  %25 = getelementptr inbounds nuw %struct.Obj, ptr %i.dd, i32 0, i32 2
  %i.de = load ptr, ptr %25, align 8
  %26 = getelementptr inbounds nuw %struct.Type, ptr %i.de, i32 0, i32 1
  %i.df = load i32, ptr %26, align 4
  %i.dg = icmp slt i32 %i.df, 0
  br i1 %i.dg, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.dh = load ptr, ptr %i.g, align 8
  %27 = getelementptr inbounds nuw %struct.Type, ptr %i.dh, i32 0, i32 7
  %i.di = load ptr, ptr %27, align 8
  call void (ptr, ptr, ...) @error_tok(ptr noundef %i.di, ptr noundef @.str.103) #9
  unreachable

bb.y:                                             ; preds = %bb.w
  %i.dj = load ptr, ptr %i.l, align 8
  %28 = getelementptr inbounds nuw %struct.Obj, ptr %i.dj, i32 0, i32 2
  %i.dk = load ptr, ptr %28, align 8
  %29 = getelementptr inbounds nuw %struct.Type, ptr %i.dk, i32 0, i32 0
  %i.dl = load i32, ptr %29, align 8
  %i.dm = icmp eq i32 %i.dl, 0
  br i1 %i.dm, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.dn = load ptr, ptr %i.g, align 8
  %30 = getelementptr inbounds nuw %struct.Type, ptr %i.dn, i32 0, i32 7
  %i.do = load ptr, ptr %30, align 8
  call void (ptr, ptr, ...) @error_tok(ptr noundef %i.do, ptr noundef @.str.100) #9
  unreachable

bb.aa:                                            ; preds = %bb.y
  br label %bb.m

bb.ab:                                            ; preds = %bb.b
  %i.dp = load ptr, ptr %i.b, align 8
  %i.dq = call ptr @new_node(i32 noundef 32, ptr noundef %i.dp)
  store ptr %i.dq, ptr %i.n, align 8
  %31 = getelementptr inbounds nuw %struct.Node, ptr %4, i32 0, i32 1
  %i.dr = load ptr, ptr %31, align 8
  %i.ds = load ptr, ptr %i.n, align 8
  %32 = getelementptr inbounds nuw %struct.Node, ptr %i.ds, i32 0, i32 13
  store ptr %i.dr, ptr %32, align 8
  %i.dt = load ptr, ptr %i.b, align 8
  %33 = getelementptr inbounds nuw %struct.Token, ptr %i.dt, i32 0, i32 1
  %i.du = load ptr, ptr %33, align 8
  %i.dv = load ptr, ptr %i.a, align 8
  store ptr %i.du, ptr %i.dv, align 8
  %i.dw = load ptr, ptr %i.n, align 8
  ret ptr %i.dw
}

; Function Attrs: noinline nounwind optnone uwtable
define internal ptr @stmt(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 18 uses
  %i.b = alloca ptr, align 8                      ; 18 uses
  %i.c = alloca ptr, align 8                      ; 120 uses
  %i.d = alloca ptr, align 8                      ; 4 uses
  %i.e = alloca ptr, align 8                      ; 5 uses
  %i.f = alloca ptr, align 8                      ; 3 uses
  %i.g = alloca ptr, align 8                      ; 5 uses
  %i.h = alloca ptr, align 8                      ; 6 uses
  %i.i = alloca ptr, align 8                      ; 2 uses
  %i.j = alloca ptr, align 8                      ; 2 uses
  %i.k = alloca ptr, align 8                      ; 8 uses
  %i.l = alloca i32, align 4                      ; 4 uses
  %i.m = alloca i32, align 4                      ; 4 uses
  %i.n = alloca ptr, align 8                      ; 5 uses
  %i.o = alloca ptr, align 8                      ; 9 uses
  %i.p = alloca ptr, align 8                      ; 2 uses
  %i.q = alloca ptr, align 8                      ; 2 uses
  %i.r = alloca ptr, align 8                      ; 2 uses
  %i.s = alloca ptr, align 8                      ; 6 uses
  %i.t = alloca ptr, align 8                      ; 2 uses
  %i.u = alloca ptr, align 8                      ; 2 uses
  %i.v = alloca ptr, align 8                      ; 6 uses
  %i.w = alloca ptr, align 8                      ; 2 uses
  %i.x = alloca ptr, align 8                      ; 2 uses
  %i.y = alloca ptr, align 8                      ; 3 uses
  %i.z = alloca ptr, align 8                      ; 5 uses
  %i.aa = alloca ptr, align 8                     ; 3 uses
  %i.ab = alloca ptr, align 8                     ; 3 uses
  %i.ac = alloca ptr, align 8                     ; 7 uses
  store ptr %0, ptr %i.b, align 8
  store ptr %1, ptr %i.c, align 8
  %i.ad = load ptr, ptr %i.c, align 8
  %i.ae = call zeroext i1 @equal(ptr noundef %i.ad, ptr noundef @.str.104)
  br i1 %i.ae, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.af = load ptr, ptr %i.c, align 8
  %i.ag = call ptr @new_node(i32 noundef 26, ptr noundef %i.af)
  store ptr %i.ag, ptr %i.d, align 8
  %i.ah = load ptr, ptr %i.b, align 8
  %i.ai = load ptr, ptr %i.c, align 8
  %2 = getelementptr inbounds nuw %struct.Token, ptr %i.ai, i32 0, i32 1
  %i.aj = load ptr, ptr %2, align 8
  %i.ak = call zeroext i1 @consume(ptr noundef %i.ah, ptr noundef %i.aj, ptr noundef @.str.99)
  br i1 %i.ak, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.al = load ptr, ptr %i.d, align 8
  store ptr %i.al, ptr %i.a, align 8
  br label %bb.bh

bb.d:                                             ; preds = %bb.b
  %i.am = load ptr, ptr %i.c, align 8
  %3 = getelementptr inbounds nuw %struct.Token, ptr %i.am, i32 0, i32 1
  %i.an = load ptr, ptr %3, align 8
  %i.ao = call ptr @expr(ptr noundef %i.c, ptr noundef %i.an)
  store ptr %i.ao, ptr %i.e, align 8
  %i.ap = load ptr, ptr %i.c, align 8
  %i.aq = call ptr @skip(ptr noundef %i.ap, ptr noundef @.str.99)
  %i.ar = load ptr, ptr %i.b, align 8
  store ptr %i.aq, ptr %i.ar, align 8
  %i.as = load ptr, ptr %i.e, align 8
  call void @add_type(ptr noundef %i.as)
  %i.at = load ptr, ptr @current_fn, align 8
  %4 = getelementptr inbounds nuw %struct.Obj, ptr %i.at, i32 0, i32 2
  %i.au = load ptr, ptr %4, align 8
  %5 = getelementptr inbounds nuw %struct.Type, ptr %i.au, i32 0, i32 15
  %i.av = load ptr, ptr %5, align 8
  store ptr %i.av, ptr %i.f, align 8
  %i.aw = load ptr, ptr %i.f, align 8
  %6 = getelementptr inbounds nuw %struct.Type, ptr %i.aw, i32 0, i32 0
  %i.ax = load i32, ptr %6, align 8
  %i.ay = icmp ne i32 %i.ax, 14
  br i1 %i.ay, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.az = load ptr, ptr %i.f, align 8
  %7 = getelementptr inbounds nuw %struct.Type, ptr %i.az, i32 0, i32 0
  %i.ba = load i32, ptr %7, align 8
  %i.bb = icmp ne i32 %i.ba, 15
  br i1 %i.bb, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.bc = load ptr, ptr %i.e, align 8
  %i.bd = load ptr, ptr @current_fn, align 8
  %8 = getelementptr inbounds nuw %struct.Obj, ptr %i.bd, i32 0, i32 2
  %i.be = load ptr, ptr %8, align 8
  %9 = getelementptr inbounds nuw %struct.Type, ptr %i.be, i32 0, i32 15
  %i.bf = load ptr, ptr %9, align 8
  %i.bg = call ptr @new_cast(ptr noundef %i.bc, ptr noundef %i.bf)
  store ptr %i.bg, ptr %i.e, align 8
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.d
  %i.bh = load ptr, ptr %i.e, align 8
  %i.bi = load ptr, ptr %i.d, align 8
  %10 = getelementptr inbounds nuw %struct.Node, ptr %i.bi, i32 0, i32 4
  store ptr %i.bh, ptr %10, align 16
  %i.bj = load ptr, ptr %i.d, align 8
  store ptr %i.bj, ptr %i.a, align 8
  br label %bb.bh

bb.h:                                             ; preds = %bb.a
  %i.bk = load ptr, ptr %i.c, align 8
  %i.bl = call zeroext i1 @equal(ptr noundef %i.bk, ptr noundef @.str.105)
  br i1 %i.bl, label %bb.i, label %bb.l

bb.i:                                             ; preds = %bb.h
  %i.bm = load ptr, ptr %i.c, align 8
  %i.bn = call ptr @new_node(i32 noundef 27, ptr noundef %i.bm)
  store ptr %i.bn, ptr %i.g, align 8
  %i.bo = load ptr, ptr %i.c, align 8
  %11 = getelementptr inbounds nuw %struct.Token, ptr %i.bo, i32 0, i32 1
  %i.bp = load ptr, ptr %11, align 8
  %i.bq = call ptr @skip(ptr noundef %i.bp, ptr noundef @.str.23)
  store ptr %i.bq, ptr %i.c, align 8
  %i.br = load ptr, ptr %i.c, align 8
  %i.bs = call ptr @expr(ptr noundef %i.c, ptr noundef %i.br)
  %i.bt = load ptr, ptr %i.g, align 8
  %12 = getelementptr inbounds nuw %struct.Node, ptr %i.bt, i32 0, i32 6
  store ptr %i.bs, ptr %12, align 16
  %i.bu = load ptr, ptr %i.c, align 8
  %i.bv = call ptr @skip(ptr noundef %i.bu, ptr noundef @.str.24)
  store ptr %i.bv, ptr %i.c, align 8
  %i.bw = load ptr, ptr %i.c, align 8
  %i.bx = call ptr @stmt(ptr noundef %i.c, ptr noundef %i.bw)
  %i.by = load ptr, ptr %i.g, align 8
  %13 = getelementptr inbounds nuw %struct.Node, ptr %i.by, i32 0, i32 7
  store ptr %i.bx, ptr %13, align 8
  %i.bz = load ptr, ptr %i.c, align 8
  %i.ca = call zeroext i1 @equal(ptr noundef %i.bz, ptr noundef @.str.106)
  br i1 %i.ca, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.cb = load ptr, ptr %i.c, align 8
  %14 = getelementptr inbounds nuw %struct.Token, ptr %i.cb, i32 0, i32 1
  %i.cc = load ptr, ptr %14, align 8
  %i.cd = call ptr @stmt(ptr noundef %i.c, ptr noundef %i.cc)
  %i.ce = load ptr, ptr %i.g, align 8
  %15 = getelementptr inbounds nuw %struct.Node, ptr %i.ce, i32 0, i32 8
  store ptr %i.cd, ptr %15, align 16
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.cf = load ptr, ptr %i.c, align 8
  %i.cg = load ptr, ptr %i.b, align 8
  store ptr %i.cf, ptr %i.cg, align 8
  %i.ch = load ptr, ptr %i.g, align 8
  store ptr %i.ch, ptr %i.a, align 8
  br label %bb.bh

bb.l:                                             ; preds = %bb.h
  %i.ci = load ptr, ptr %i.c, align 8
  %i.cj = call zeroext i1 @equal(ptr noundef %i.ci, ptr noundef @.str.107)
  br i1 %i.cj, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.ck = load ptr, ptr %i.c, align 8
  %i.cl = call ptr @new_node(i32 noundef 30, ptr noundef %i.ck)
  store ptr %i.cl, ptr %i.h, align 8
  %i.cm = load ptr, ptr %i.c, align 8
  %16 = getelementptr inbounds nuw %struct.Token, ptr %i.cm, i32 0, i32 1
  %i.cn = load ptr, ptr %16, align 8
  %i.co = call ptr @skip(ptr noundef %i.cn, ptr noundef @.str.23)
  store ptr %i.co, ptr %i.c, align 8
  %i.cp = load ptr, ptr %i.c, align 8
  %i.cq = call ptr @expr(ptr noundef %i.c, ptr noundef %i.cp)
  %i.cr = load ptr, ptr %i.h, align 8
  %17 = getelementptr inbounds nuw %struct.Node, ptr %i.cr, i32 0, i32 6
  store ptr %i.cq, ptr %17, align 16
  %i.cs = load ptr, ptr %i.c, align 8
  %i.ct = call ptr @skip(ptr noundef %i.cs, ptr noundef @.str.24)
  store ptr %i.ct, ptr %i.c, align 8
  %i.cu = load ptr, ptr @current_switch, align 8
  store ptr %i.cu, ptr %i.i, align 8
  %i.cv = load ptr, ptr %i.h, align 8
  store ptr %i.cv, ptr @current_switch, align 8
  %i.cw = load ptr, ptr @brk_label, align 8
  store ptr %i.cw, ptr %i.j, align 8
  %i.cx = call ptr @new_unique_name()             ; 2 uses
  %i.cy = load ptr, ptr %i.h, align 8
  %18 = getelementptr inbounds nuw %struct.Node, ptr %i.cy, i32 0, i32 11
  store ptr %i.cx, ptr %18, align 8
  store ptr %i.cx, ptr @brk_label, align 8
  %i.cz = load ptr, ptr %i.b, align 8
  %i.da = load ptr, ptr %i.c, align 8
  %i.db = call ptr @stmt(ptr noundef %i.cz, ptr noundef %i.da)
  %i.dc = load ptr, ptr %i.h, align 8
  %19 = getelementptr inbounds nuw %struct.Node, ptr %i.dc, i32 0, i32 7
  store ptr %i.db, ptr %19, align 8
  %i.dd = load ptr, ptr %i.i, align 8
end_hunk_7
begin_hunk_8_@typeof_specifier:bb.a
  br i1 %i.h, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = load ptr, ptr %i.b, align 8
  %i.j = call ptr @typename(ptr noundef %i.b, ptr noundef %i.i)
  store ptr %i.j, ptr %i.c, align 8
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.k = load ptr, ptr %i.b, align 8
  %i.l = call ptr @expr(ptr noundef %i.b, ptr noundef %i.k)
  store ptr %i.l, ptr %i.d, align 8
  %i.m = load ptr, ptr %i.d, align 8
  call void @add_type(ptr noundef %i.m)
  %i.n = load ptr, ptr %i.d, align 8
  %2 = getelementptr inbounds nuw %struct.Node, ptr %i.n, i32 0, i32 2
  %i.o = load ptr, ptr %2, align 16
  store ptr %i.o, ptr %i.c, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.p = load ptr, ptr %i.b, align 8
  %i.q = call ptr @skip(ptr noundef %i.p, ptr noundef @.str.24)
  %i.r = load ptr, ptr %i.a, align 8
  store ptr %i.q, ptr %i.r, align 8
  %i.s = load ptr, ptr %i.c, align 8
  ret ptr %i.s
}

; Function Attrs: noinline nounwind optnone uwtable
define internal ptr @struct_union_decl(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = alloca ptr, align 8                      ; 3 uses
  %i.c = alloca ptr, align 8                      ; 14 uses
  %i.d = alloca ptr, align 8                      ; 10 uses
  %i.e = alloca ptr, align 8                      ; 9 uses
  %i.f = alloca ptr, align 8                      ; 3 uses
  %i.g = alloca ptr, align 8                      ; 4 uses
  store ptr %0, ptr %i.b, align 8
  store ptr %1, ptr %i.c, align 8
  %i.h = call ptr @struct_type()
  store ptr %i.h, ptr %i.d, align 8
  %i.i = load ptr, ptr %i.c, align 8
  %i.j = load ptr, ptr %i.d, align 8
  %i.k = call ptr @attribute_list(ptr noundef %i.i, ptr noundef %i.j)
  store ptr %i.k, ptr %i.c, align 8
  store ptr null, ptr %i.e, align 8
  %i.l = load ptr, ptr %i.c, align 8
  %2 = getelementptr inbounds nuw %struct.Token, ptr %i.l, i32 0, i32 0
  %i.m = load i32, ptr %2, align 16
  %i.n = icmp eq i32 %i.m, 0
  br i1 %i.n, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.o = load ptr, ptr %i.c, align 8
  store ptr %i.o, ptr %i.e, align 8
  %i.p = load ptr, ptr %i.c, align 8
  %3 = getelementptr inbounds nuw %struct.Token, ptr %i.p, i32 0, i32 1
  %i.q = load ptr, ptr %3, align 8
  store ptr %i.q, ptr %i.c, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.r = load ptr, ptr %i.e, align 8
  %i.s = icmp ne ptr %i.r, null
  br i1 %i.s, label %bb.d, label %bb.h

bb.d:                                             ; preds = %bb.c
  %i.t = load ptr, ptr %i.c, align 8
  %i.u = call zeroext i1 @equal(ptr noundef %i.t, ptr noundef @.str.25)
  br i1 %i.u, label %bb.h, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.v = load ptr, ptr %i.c, align 8
  %i.w = load ptr, ptr %i.b, align 8
  store ptr %i.v, ptr %i.w, align 8
  %i.x = load ptr, ptr %i.e, align 8
  %i.y = call ptr @find_tag(ptr noundef %i.x)
  store ptr %i.y, ptr %i.f, align 8
  %i.z = load ptr, ptr %i.f, align 8
  %i.aa = icmp ne ptr %i.z, null
  br i1 %i.aa, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ab = load ptr, ptr %i.f, align 8
  store ptr %i.ab, ptr %i.a, align 8
  br label %bb.m

bb.g:                                             ; preds = %bb.e
  %i.ac = load ptr, ptr %i.d, align 8
  %4 = getelementptr inbounds nuw %struct.Type, ptr %i.ac, i32 0, i32 1
  store i32 -1, ptr %4, align 4
  %i.ad = load ptr, ptr %i.e, align 8
  %i.ae = load ptr, ptr %i.d, align 8
  call void @push_tag_scope(ptr noundef %i.ad, ptr noundef %i.ae)
  %i.af = load ptr, ptr %i.d, align 8
  store ptr %i.af, ptr %i.a, align 8
  br label %bb.m

bb.h:                                             ; preds = %bb.d, %bb.c
  %i.ag = load ptr, ptr %i.c, align 8
  %i.ah = call ptr @skip(ptr noundef %i.ag, ptr noundef @.str.25)
  store ptr %i.ah, ptr %i.c, align 8
  %i.ai = load ptr, ptr %i.c, align 8
  %i.aj = load ptr, ptr %i.d, align 8
  call void @struct_members(ptr noundef %i.c, ptr noundef %i.ai, ptr noundef %i.aj)
  %i.ak = load ptr, ptr %i.c, align 8
  %i.al = load ptr, ptr %i.d, align 8
  %i.am = call ptr @attribute_list(ptr noundef %i.ak, ptr noundef %i.al)
  %i.an = load ptr, ptr %i.b, align 8
  store ptr %i.am, ptr %i.an, align 8
  %i.ao = load ptr, ptr %i.e, align 8
  %i.ap = icmp ne ptr %i.ao, null
  br i1 %i.ap, label %bb.i, label %bb.l

bb.i:                                             ; preds = %bb.h
  %i.aq = load ptr, ptr @scope, align 8
  %5 = getelementptr inbounds nuw %struct.Scope, ptr %i.aq, i32 0, i32 2
  %i.ar = load ptr, ptr %i.e, align 8
  %6 = getelementptr inbounds nuw %struct.Token, ptr %i.ar, i32 0, i32 4
  %i.as = load ptr, ptr %6, align 16
  %i.at = load ptr, ptr %i.e, align 8
  %7 = getelementptr inbounds nuw %struct.Token, ptr %i.at, i32 0, i32 5
  %i.au = load i32, ptr %7, align 8
  %i.av = call ptr @hashmap_get2(ptr noundef %5, ptr noundef %i.as, i32 noundef %i.au)
  store ptr %i.av, ptr %i.g, align 8
  %i.aw = load ptr, ptr %i.g, align 8
  %i.ax = icmp ne ptr %i.aw, null
  br i1 %i.ax, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ay = load ptr, ptr %i.g, align 8
  %i.az = load ptr, ptr %i.d, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.ay, ptr align 8 %i.az, i64 120, i1 false)
  %i.ba = load ptr, ptr %i.g, align 8
  store ptr %i.ba, ptr %i.a, align 8
  br label %bb.m

bb.k:                                             ; preds = %bb.i
  %i.bb = load ptr, ptr %i.e, align 8
  %i.bc = load ptr, ptr %i.d, align 8
  call void @push_tag_scope(ptr noundef %i.bb, ptr noundef %i.bc)
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.h
  %i.bd = load ptr, ptr %i.d, align 8
  store ptr %i.bd, ptr %i.a, align 8
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.j, %bb.g, %bb.f
  %i.be = load ptr, ptr %i.a, align 8
  ret ptr %i.be
}

declare i32 @align_to(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @align_down(i32 noundef range(i32 -268435456, 268435456) %0, i32 noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 2 uses
  %i.b = alloca i32, align 4                      ; 3 uses
  store i32 %0, ptr %i.a, align 4
  store i32 %1, ptr %i.b, align 4
  %i.c = load i32, ptr %i.a, align 4
  %i.d = load i32, ptr %i.b, align 4
  %i.e = sub nsw i32 %i.c, %i.d
  %i.f = add nsw i32 %i.e, 1
  %i.g = load i32, ptr %i.b, align 4
  %i.h = call i32 @align_to(i32 noundef %i.f, i32 noundef %i.g)
  ret i32 %i.h
}

declare ptr @struct_type() local_unnamed_addr #1

; Function Attrs: noinline nounwind optnone uwtable
define internal ptr @attribute_list(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 25 uses
  %i.b = alloca ptr, align 8                      ; 3 uses
  %i.c = alloca i8, align 1                       ; 3 uses
  store ptr %0, ptr %i.a, align 8
  store ptr %1, ptr %i.b, align 8
  br label %bb.b

bb.b:                                             ; preds = %bb.l, %bb.a
  %i.d = load ptr, ptr %i.a, align 8
  %i.e = call zeroext i1 @consume(ptr noundef %i.a, ptr noundef %i.d, ptr noundef @.str.135)
  br i1 %i.e, label %bb.c, label %bb.m

bb.c:                                             ; preds = %bb.b
  %i.f = load ptr, ptr %i.a, align 8
  %i.g = call ptr @skip(ptr noundef %i.f, ptr noundef @.str.23)
  store ptr %i.g, ptr %i.a, align 8
  %i.h = load ptr, ptr %i.a, align 8
  %i.i = call ptr @skip(ptr noundef %i.h, ptr noundef @.str.23)
  store ptr %i.i, ptr %i.a, align 8
  store i8 1, ptr %i.c, align 1
  br label %bb.d

bb.d:                                             ; preds = %.backedge, %bb.c
  %i.j = load ptr, ptr %i.a, align 8
  %i.k = call zeroext i1 @consume(ptr noundef %i.a, ptr noundef %i.j, ptr noundef @.str.24)
  %i.l = xor i1 %i.k, true
  br i1 %i.l, label %bb.e, label %bb.l

bb.e:                                             ; preds = %bb.d
  %i.m = load i8, ptr %i.c, align 1
  %i.n = icmp ne i8 %i.m, 0
  br i1 %i.n, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.o = load ptr, ptr %i.a, align 8
  %i.p = call ptr @skip(ptr noundef %i.o, ptr noundef @.str.57)
  store ptr %i.p, ptr %i.a, align 8
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  store i8 0, ptr %i.c, align 1
  %i.q = load ptr, ptr %i.a, align 8
  %i.r = call zeroext i1 @consume(ptr noundef %i.a, ptr noundef %i.q, ptr noundef @.str.136)
  br i1 %i.r, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.s = load ptr, ptr %i.b, align 8
  %2 = getelementptr inbounds nuw %struct.Type, ptr %i.s, i32 0, i32 14
  store i8 1, ptr %2, align 1
  br label %.backedge

.backedge:                                        ; preds = %bb.h, %bb.j
  br label %bb.d, !llvm.loop !57

bb.i:                                             ; preds = %bb.g
  %i.t = load ptr, ptr %i.a, align 8
  %i.u = call zeroext i1 @consume(ptr noundef %i.a, ptr noundef %i.t, ptr noundef @.str.137)
  br i1 %i.u, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.v = load ptr, ptr %i.a, align 8
  %i.w = call ptr @skip(ptr noundef %i.v, ptr noundef @.str.23)
  store ptr %i.w, ptr %i.a, align 8
  %i.x = load ptr, ptr %i.a, align 8
  %i.y = call i64 @const_expr(ptr noundef %i.a, ptr noundef %i.x)
  %i.z = trunc i64 %i.y to i32
  %i.aa = load ptr, ptr %i.b, align 8
  %3 = getelementptr inbounds nuw %struct.Type, ptr %i.aa, i32 0, i32 2
  store i32 %i.z, ptr %3, align 8
  %i.ab = load ptr, ptr %i.a, align 8
  %i.ac = call ptr @skip(ptr noundef %i.ab, ptr noundef @.str.24)
  store ptr %i.ac, ptr %i.a, align 8
  br label %.backedge

bb.k:                                             ; preds = %bb.i
  %i.ad = load ptr, ptr %i.a, align 8
  call void (ptr, ptr, ...) @error_tok(ptr noundef %i.ad, ptr noundef @.str.138) #9
  unreachable

bb.l:                                             ; preds = %bb.d
  %i.ae = load ptr, ptr %i.a, align 8
  %i.af = call ptr @skip(ptr noundef %i.ae, ptr noundef @.str.24)
  store ptr %i.af, ptr %i.a, align 8
  br label %bb.b, !llvm.loop !58

bb.m:                                             ; preds = %bb.b
  %i.ag = load ptr, ptr %i.a, align 8
  ret ptr %i.ag
}

; Function Attrs: noinline nounwind optnone uwtable
define internal ptr @find_tag(ptr noundef %0) unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 3 uses
  %i.b = alloca ptr, align 8                      ; 3 uses
  %i.c = alloca ptr, align 8                      ; 5 uses
  %i.d = alloca ptr, align 8                      ; 3 uses
  store ptr %0, ptr %i.b, align 8
  %i.e = load ptr, ptr @scope, align 8
  store ptr %i.e, ptr %i.c, align 8
  br label %bb.b

bb.b:                                             ; preds = %bb.f, %bb.a
  %i.f = load ptr, ptr %i.c, align 8
  %i.g = icmp ne ptr %i.f, null
  br i1 %i.g, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.h = load ptr, ptr %i.c, align 8
  %1 = getelementptr inbounds nuw %struct.Scope, ptr %i.h, i32 0, i32 2
  %i.i = load ptr, ptr %i.b, align 8
  %2 = getelementptr inbounds nuw %struct.Token, ptr %i.i, i32 0, i32 4
  %i.j = load ptr, ptr %2, align 16
  %i.k = load ptr, ptr %i.b, align 8
  %3 = getelementptr inbounds nuw %struct.Token, ptr %i.k, i32 0, i32 5
  %i.l = load i32, ptr %3, align 8
  %i.m = call ptr @hashmap_get2(ptr noundef %1, ptr noundef %i.j, i32 noundef %i.l)
  store ptr %i.m, ptr %i.d, align 8
  %i.n = load ptr, ptr %i.d, align 8
  %i.o = icmp ne ptr %i.n, null
  br i1 %i.o, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.p = load ptr, ptr %i.d, align 8
  store ptr %i.p, ptr %i.a, align 8
  br label %bb.h

bb.e:                                             ; preds = %bb.c
  br label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.q = load ptr, ptr %i.c, align 8
  %4 = getelementptr inbounds nuw %struct.Scope, ptr %i.q, i32 0, i32 0
  %i.r = load ptr, ptr %4, align 8
  store ptr %i.r, ptr %i.c, align 8
  br label %bb.b, !llvm.loop !59

bb.g:                                             ; preds = %bb.b
  store ptr null, ptr %i.a, align 8
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.d
  %i.s = load ptr, ptr %i.a, align 8
  ret ptr %i.s
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @push_tag_scope(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 3 uses
  %i.b = alloca ptr, align 8                      ; 2 uses
  store ptr %0, ptr %i.a, align 8
  store ptr %1, ptr %i.b, align 8
  %i.c = load ptr, ptr @scope, align 8
  %2 = getelementptr inbounds nuw %struct.Scope, ptr %i.c, i32 0, i32 2
  %i.d = load ptr, ptr %i.a, align 8
  %3 = getelementptr inbounds nuw %struct.Token, ptr %i.d, i32 0, i32 4
  %i.e = load ptr, ptr %3, align 16
  %i.f = load ptr, ptr %i.a, align 8
  %4 = getelementptr inbounds nuw %struct.Token, ptr %i.f, i32 0, i32 5
  %i.g = load i32, ptr %4, align 8
  %i.h = load ptr, ptr %i.b, align 8
  call void @hashmap_put2(ptr noundef %2, ptr noundef %i.e, i32 noundef %i.g, ptr noundef %i.h)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @struct_members(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 2 uses
  %i.b = alloca ptr, align 8                      ; 17 uses
  %i.c = alloca ptr, align 8                      ; 3 uses
  %3 = alloca %struct.Member, align 8             ; 4 uses
  %i.d = alloca ptr, align 8                      ; 10 uses
  %i.e = alloca i32, align 4                      ; 5 uses
  %4 = alloca %struct.VarAttr, align 4            ; 6 uses
  %i.f = alloca ptr, align 8                      ; 5 uses
  %i.g = alloca i8, align 1                       ; 3 uses
  %i.h = alloca ptr, align 8                      ; 6 uses
  %i.i = alloca ptr, align 8                      ; 10 uses
  store ptr %0, ptr %i.a, align 8
  store ptr %1, ptr %i.b, align 8
  store ptr %2, ptr %i.c, align 8
  call void @llvm.memset.p0.i64(ptr align 8 %3, i8 0, i64 56, i1 false)
  store ptr %3, ptr %i.d, align 8
  store i32 0, ptr %i.e, align 4
  br label %bb.b

bb.b:                                             ; preds = %.backedge, %bb.a
  %i.j = load ptr, ptr %i.b, align 8
  %i.k = call zeroext i1 @equal(ptr noundef %i.j, ptr noundef @.str.69)
  %i.l = xor i1 %i.k, true
  br i1 %i.l, label %bb.c, label %bb.u

bb.c:                                             ; preds = %bb.b
  call void @llvm.memset.p0.i64(ptr align 4 %4, i8 0, i64 12, i1 false)
  %i.m = load ptr, ptr %i.b, align 8
  %i.n = call ptr @declspec(ptr noundef %i.b, ptr noundef %i.m, ptr noundef %4)
  store ptr %i.n, ptr %i.f, align 8
  store i8 1, ptr %i.g, align 1
  %i.o = load ptr, ptr %i.f, align 8
  %5 = getelementptr inbounds nuw %struct.Type, ptr %i.o, i32 0, i32 0
  %i.p = load i32, ptr %5, align 8
  %i.q = icmp eq i32 %i.p, 14
  br i1 %i.q, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.r = load ptr, ptr %i.f, align 8
  %6 = getelementptr inbounds nuw %struct.Type, ptr %i.r, i32 0, i32 0
  %i.s = load i32, ptr %6, align 8
  %i.t = icmp eq i32 %i.s, 15
  br i1 %i.t, label %bb.e, label %bb.j

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.u = load ptr, ptr %i.b, align 8
  %i.v = call zeroext i1 @consume(ptr noundef %i.b, ptr noundef %i.u, ptr noundef @.str.99)
  br i1 %i.v, label %bb.f, label %bb.j

bb.f:                                             ; preds = %bb.e
  %i.w = call noalias ptr @calloc(i64 noundef 1, i64 noundef 56) #8
  store ptr %i.w, ptr %i.h, align 8
  %i.x = load ptr, ptr %i.f, align 8
  %i.y = load ptr, ptr %i.h, align 8
  %7 = getelementptr inbounds nuw %struct.Member, ptr %i.y, i32 0, i32 1
  store ptr %i.x, ptr %7, align 8
  %i.z = load i32, ptr %i.e, align 4              ; 2 uses
  %i.aa = add nsw i32 %i.z, 1
  store i32 %i.aa, ptr %i.e, align 4
  %i.ab = load ptr, ptr %i.h, align 8
  %8 = getelementptr inbounds nuw %struct.Member, ptr %i.ab, i32 0, i32 4
  store i32 %i.z, ptr %8, align 8
  %9 = getelementptr inbounds nuw %struct.VarAttr, ptr %4, i32 0, i32 5
  %i.ac = load i32, ptr %9, align 4
  %i.ad = icmp ne i32 %i.ac, 0
  br i1 %i.ad, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %10 = getelementptr inbounds nuw %struct.VarAttr, ptr %4, i32 0, i32 5
  %i.ae = load i32, ptr %10, align 4
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.af = load ptr, ptr %i.h, align 8
  %11 = getelementptr inbounds nuw %struct.Member, ptr %i.af, i32 0, i32 1
  %i.ag = load ptr, ptr %11, align 8
  %12 = getelementptr inbounds nuw %struct.Type, ptr %i.ag, i32 0, i32 2
  %i.ah = load i32, ptr %12, align 8
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.ai = phi i32 [ %i.ae, %bb.g ], [ %i.ah, %bb.h ]
  %i.aj = load ptr, ptr %i.h, align 8
  %13 = getelementptr inbounds nuw %struct.Member, ptr %i.aj, i32 0, i32 5
  store i32 %i.ai, ptr %13, align 4
  %i.ak = load ptr, ptr %i.h, align 8             ; 2 uses
  %i.al = load ptr, ptr %i.d, align 8
  %14 = getelementptr inbounds nuw %struct.Member, ptr %i.al, i32 0, i32 0
  store ptr %i.ak, ptr %14, align 8
  store ptr %i.ak, ptr %i.d, align 8
  br label %.backedge

.backedge:                                        ; preds = %bb.i, %bb.t
  br label %bb.b, !llvm.loop !60

bb.j:                                             ; preds = %bb.e, %bb.d
  br label %bb.k

bb.k:                                             ; preds = %bb.s, %bb.j
  %i.am = load ptr, ptr %i.b, align 8
  %i.an = call zeroext i1 @consume(ptr noundef %i.b, ptr noundef %i.am, ptr noundef @.str.99)
  %i.ao = xor i1 %i.an, true
  br i1 %i.ao, label %bb.l, label %bb.t

bb.l:                                             ; preds = %bb.k
  %i.ap = load i8, ptr %i.g, align 1
  %i.aq = icmp ne i8 %i.ap, 0
  br i1 %i.aq, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ar = load ptr, ptr %i.b, align 8
  %i.as = call ptr @skip(ptr noundef %i.ar, ptr noundef @.str.57)
  store ptr %i.as, ptr %i.b, align 8
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  store i8 0, ptr %i.g, align 1
  %i.at = call noalias ptr @calloc(i64 noundef 1, i64 noundef 56) #8
  store ptr %i.at, ptr %i.i, align 8
  %i.au = load ptr, ptr %i.b, align 8
  %i.av = load ptr, ptr %i.f, align 8
  %i.aw = call ptr @declarator(ptr noundef %i.b, ptr noundef %i.au, ptr noundef %i.av)
  %i.ax = load ptr, ptr %i.i, align 8
  %15 = getelementptr inbounds nuw %struct.Member, ptr %i.ax, i32 0, i32 1
  store ptr %i.aw, ptr %15, align 8
  %i.ay = load ptr, ptr %i.i, align 8
  %16 = getelementptr inbounds nuw %struct.Member, ptr %i.ay, i32 0, i32 1
  %i.az = load ptr, ptr %16, align 8
  %17 = getelementptr inbounds nuw %struct.Type, ptr %i.az, i32 0, i32 7
  %i.ba = load ptr, ptr %17, align 8
  %i.bb = load ptr, ptr %i.i, align 8
  %18 = getelementptr inbounds nuw %struct.Member, ptr %i.bb, i32 0, i32 3
  store ptr %i.ba, ptr %18, align 8
  %i.bc = load i32, ptr %i.e, align 4             ; 2 uses
  %i.bd = add nsw i32 %i.bc, 1
  store i32 %i.bd, ptr %i.e, align 4
  %i.be = load ptr, ptr %i.i, align 8
  %19 = getelementptr inbounds nuw %struct.Member, ptr %i.be, i32 0, i32 4
  store i32 %i.bc, ptr %19, align 8
  %20 = getelementptr inbounds nuw %struct.VarAttr, ptr %4, i32 0, i32 5
  %i.bf = load i32, ptr %20, align 4
  %i.bg = icmp ne i32 %i.bf, 0
  br i1 %i.bg, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %21 = getelementptr inbounds nuw %struct.VarAttr, ptr %4, i32 0, i32 5
  %i.bh = load i32, ptr %21, align 4
  br label %bb.q

bb.p:                                             ; preds = %bb.n
  %i.bi = load ptr, ptr %i.i, align 8
  %22 = getelementptr inbounds nuw %struct.Member, ptr %i.bi, i32 0, i32 1
  %i.bj = load ptr, ptr %22, align 8
  %23 = getelementptr inbounds nuw %struct.Type, ptr %i.bj, i32 0, i32 2
  %i.bk = load i32, ptr %23, align 8
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.bl = phi i32 [ %i.bh, %bb.o ], [ %i.bk, %bb.p ]
  %i.bm = load ptr, ptr %i.i, align 8
  %24 = getelementptr inbounds nuw %struct.Member, ptr %i.bm, i32 0, i32 5
  store i32 %i.bl, ptr %24, align 4
  %i.bn = load ptr, ptr %i.b, align 8
  %i.bo = call zeroext i1 @consume(ptr noundef %i.b, ptr noundef %i.bn, ptr noundef @.str.3)
  br i1 %i.bo, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.bp = load ptr, ptr %i.i, align 8
  %25 = getelementptr inbounds nuw %struct.Member, ptr %i.bp, i32 0, i32 7
  store i8 1, ptr %25, align 4
  %i.bq = load ptr, ptr %i.b, align 8
  %i.br = call i64 @const_expr(ptr noundef %i.b, ptr noundef %i.bq)
  %i.bs = trunc i64 %i.br to i32
  %i.bt = load ptr, ptr %i.i, align 8
  %26 = getelementptr inbounds nuw %struct.Member, ptr %i.bt, i32 0, i32 9
  store i32 %i.bs, ptr %26, align 4
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.bu = load ptr, ptr %i.i, align 8             ; 2 uses
  %i.bv = load ptr, ptr %i.d, align 8
  %27 = getelementptr inbounds nuw %struct.Member, ptr %i.bv, i32 0, i32 0
  store ptr %i.bu, ptr %27, align 8
  store ptr %i.bu, ptr %i.d, align 8
  br label %bb.k, !llvm.loop !61

bb.t:                                             ; preds = %bb.k
  br label %.backedge

bb.u:                                             ; preds = %bb.b
  %i.bw = load ptr, ptr %i.d, align 8
  %i.bx = icmp ne ptr %i.bw, %3
  br i1 %i.bx, label %bb.v, label %bb.y

bb.v:                                             ; preds = %bb.u
  %i.by = load ptr, ptr %i.d, align 8
  %28 = getelementptr inbounds nuw %struct.Member, ptr %i.by, i32 0, i32 1
  %i.bz = load ptr, ptr %28, align 8
  %29 = getelementptr inbounds nuw %struct.Type, ptr %i.bz, i32 0, i32 0
  %i.ca = load i32, ptr %29, align 8
  %i.cb = icmp eq i32 %i.ca, 12
  br i1 %i.cb, label %bb.w, label %bb.y

bb.w:                                             ; preds = %bb.v
  %i.cc = load ptr, ptr %i.d, align 8
  %30 = getelementptr inbounds nuw %struct.Member, ptr %i.cc, i32 0, i32 1
  %i.cd = load ptr, ptr %30, align 8
  %31 = getelementptr inbounds nuw %struct.Type, ptr %i.cd, i32 0, i32 9
  %i.ce = load i32, ptr %31, align 8
  %i.cf = icmp slt i32 %i.ce, 0
  br i1 %i.cf, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.cg = load ptr, ptr %i.d, align 8
  %32 = getelementptr inbounds nuw %struct.Member, ptr %i.cg, i32 0, i32 1
  %i.ch = load ptr, ptr %32, align 8
  %33 = getelementptr inbounds nuw %struct.Type, ptr %i.ch, i32 0, i32 6
  %i.ci = load ptr, ptr %33, align 8
  %i.cj = call ptr @array_of(ptr noundef %i.ci, i32 noundef 0)
  %i.ck = load ptr, ptr %i.d, align 8
  %34 = getelementptr inbounds nuw %struct.Member, ptr %i.ck, i32 0, i32 1
  store ptr %i.cj, ptr %34, align 8
  %i.cl = load ptr, ptr %i.c, align 8
  %35 = getelementptr inbounds nuw %struct.Type, ptr %i.cl, i32 0, i32 13
  store i8 1, ptr %35, align 8
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w, %bb.v, %bb.u
  %i.cm = load ptr, ptr %i.b, align 8
  %36 = getelementptr inbounds nuw %struct.Token, ptr %i.cm, i32 0, i32 1
  %i.cn = load ptr, ptr %36, align 8
  %i.co = load ptr, ptr %i.a, align 8
  store ptr %i.cn, ptr %i.co, align 8
  %37 = getelementptr inbounds nuw %struct.Member, ptr %3, i32 0, i32 0
  %i.cp = load ptr, ptr %37, align 8
  %i.cq = load ptr, ptr %i.c, align 8
  %38 = getelementptr inbounds nuw %struct.Type, ptr %i.cq, i32 0, i32 12
  store ptr %i.cp, ptr %38, align 8
  ret void
}

declare void @hashmap_put2(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

declare ptr @enum_type() local_unnamed_addr #1

; Function Attrs: noinline nounwind optnone uwtable
define internal ptr @find_func(ptr noundef %0) unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 3 uses
  %i.b = alloca ptr, align 8                      ; 2 uses
  %i.c = alloca ptr, align 8                      ; 5 uses
  %i.d = alloca ptr, align 8                      ; 5 uses
  store ptr %0, ptr %i.b, align 8
  %i.e = load ptr, ptr @scope, align 8
  store ptr %i.e, ptr %i.c, align 8
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %bb.a
  %i.f = load ptr, ptr %i.c, align 8
  %1 = getelementptr inbounds nuw %struct.Scope, ptr %i.f, i32 0, i32 0
  %i.g = load ptr, ptr %1, align 8
  %i.h = icmp ne ptr %i.g, null
  br i1 %i.h, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.i = load ptr, ptr %i.c, align 8
  %2 = getelementptr inbounds nuw %struct.Scope, ptr %i.i, i32 0, i32 0
  %i.j = load ptr, ptr %2, align 8
  store ptr %i.j, ptr %i.c, align 8
  br label %bb.b, !llvm.loop !62

bb.d:                                             ; preds = %bb.b
  %i.k = load ptr, ptr %i.c, align 8
  %3 = getelementptr inbounds nuw %struct.Scope, ptr %i.k, i32 0, i32 1
  %i.l = load ptr, ptr %i.b, align 8
  %i.m = call ptr @hashmap_get(ptr noundef %3, ptr noundef %i.l)
  store ptr %i.m, ptr %i.d, align 8
  %i.n = load ptr, ptr %i.d, align 8
  %i.o = icmp ne ptr %i.n, null
  br i1 %i.o, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.d
  %i.p = load ptr, ptr %i.d, align 8
  %4 = getelementptr inbounds nuw %struct.VarScope, ptr %i.p, i32 0, i32 0
  %i.q = load ptr, ptr %4, align 8
  %i.r = icmp ne ptr %i.q, null
  br i1 %i.r, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.s = load ptr, ptr %i.d, align 8
  %5 = getelementptr inbounds nuw %struct.VarScope, ptr %i.s, i32 0, i32 0
  %i.t = load ptr, ptr %5, align 8
  %6 = getelementptr inbounds nuw %struct.Obj, ptr %i.t, i32 0, i32 7
  %i.u = load i8, ptr %6, align 4
  %i.v = icmp ne i8 %i.u, 0
  br i1 %i.v, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.w = load ptr, ptr %i.d, align 8
  %7 = getelementptr inbounds nuw %struct.VarScope, ptr %i.w, i32 0, i32 0
  %i.x = load ptr, ptr %7, align 8
  store ptr %i.x, ptr %i.a, align 8
  br label %bb.i

bb.h:                                             ; preds = %bb.f, %bb.e, %bb.d
  store ptr null, ptr %i.a, align 8
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.y = load ptr, ptr %i.a, align 8
  ret ptr %i.y
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @create_param_lvars(ptr noundef %0) unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 7 uses
  store ptr %0, ptr %i.a, align 8
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = icmp ne ptr %i.b, null
  br i1 %i.c, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %i.a, align 8
  %1 = getelementptr inbounds nuw %struct.Type, ptr %i.d, i32 0, i32 18
  %i.e = load ptr, ptr %1, align 8
  call void @create_param_lvars(ptr noundef %i.e)
  %i.f = load ptr, ptr %i.a, align 8
  %2 = getelementptr inbounds nuw %struct.Type, ptr %i.f, i32 0, i32 7
  %i.g = load ptr, ptr %2, align 8
  %i.h = icmp ne ptr %i.g, null
  br i1 %i.h, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = load ptr, ptr %i.a, align 8
  %3 = getelementptr inbounds nuw %struct.Type, ptr %i.i, i32 0, i32 8
  %i.j = load ptr, ptr %3, align 8
  call void (ptr, ptr, ...) @error_tok(ptr noundef %i.j, ptr noundef @.str.150) #9
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.k = load ptr, ptr %i.a, align 8
  %4 = getelementptr inbounds nuw %struct.Type, ptr %i.k, i32 0, i32 7
  %i.l = load ptr, ptr %4, align 8
  %i.m = call ptr @get_ident(ptr noundef %i.l)
  %i.n = load ptr, ptr %i.a, align 8
  %i.o = call ptr @new_lvar(ptr noundef %i.m, ptr noundef %i.n) ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.a
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #7

; Function Attrs: noinline nounwind optnone uwtable
define internal void @resolve_goto_labels() unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 8 uses
  %i.b = alloca ptr, align 8                      ; 6 uses
  %i.c = load ptr, ptr @gotos, align 8
  store ptr %i.c, ptr %i.a, align 8
  br label %bb.b

bb.b:                                             ; preds = %bb.l, %bb.a
  %i.d = load ptr, ptr %i.a, align 8
  %i.e = icmp ne ptr %i.d, null
  br i1 %i.e, label %bb.c, label %bb.m

bb.c:                                             ; preds = %bb.b
  %i.f = load ptr, ptr @labels, align 8
  store ptr %i.f, ptr %i.b, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.h, %bb.c
  %i.g = load ptr, ptr %i.b, align 8
  %i.h = icmp ne ptr %i.g, null
  br i1 %i.h, label %bb.e, label %.loopexit

bb.e:                                             ; preds = %bb.d
  %i.i = load ptr, ptr %i.a, align 8
  %0 = getelementptr inbounds nuw %struct.Node, ptr %i.i, i32 0, i32 19
  %i.j = load ptr, ptr %0, align 8
  %i.k = load ptr, ptr %i.b, align 8
  %1 = getelementptr inbounds nuw %struct.Node, ptr %i.k, i32 0, i32 19
  %i.l = load ptr, ptr %1, align 8
  %i.m = call i32 @strcmp(ptr noundef %i.j, ptr noundef %i.l) #10
  %i.n = icmp ne i32 %i.m, 0
  br i1 %i.n, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.o = load ptr, ptr %i.b, align 8
  %2 = getelementptr inbounds nuw %struct.Node, ptr %i.o, i32 0, i32 20
  %i.p = load ptr, ptr %2, align 16
  %i.q = load ptr, ptr %i.a, align 8
  %3 = getelementptr inbounds nuw %struct.Node, ptr %i.q, i32 0, i32 20
  store ptr %i.p, ptr %3, align 16
  br label %bb.i

bb.g:                                             ; preds = %bb.e
  br label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.r = load ptr, ptr %i.b, align 8
  %4 = getelementptr inbounds nuw %struct.Node, ptr %i.r, i32 0, i32 21
  %i.s = load ptr, ptr %4, align 8
  store ptr %i.s, ptr %i.b, align 8
  br label %bb.d, !llvm.loop !63

.loopexit:                                        ; preds = %bb.d
  br label %bb.i

bb.i:                                             ; preds = %.loopexit, %bb.f
  %i.t = load ptr, ptr %i.a, align 8
  %5 = getelementptr inbounds nuw %struct.Node, ptr %i.t, i32 0, i32 20
  %i.u = load ptr, ptr %5, align 16
  %i.v = icmp eq ptr %i.u, null
  br i1 %i.v, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.w = load ptr, ptr %i.a, align 8
  %6 = getelementptr inbounds nuw %struct.Node, ptr %i.w, i32 0, i32 3
  %i.x = load ptr, ptr %6, align 8
  %7 = getelementptr inbounds nuw %struct.Token, ptr %i.x, i32 0, i32 1
  %i.y = load ptr, ptr %7, align 8
  call void (ptr, ptr, ...) @error_tok(ptr noundef %i.y, ptr noundef @.str.151) #9
  unreachable

bb.k:                                             ; preds = %bb.i
  br label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.z = load ptr, ptr %i.a, align 8
  %8 = getelementptr inbounds nuw %struct.Node, ptr %i.z, i32 0, i32 21
  %i.aa = load ptr, ptr %8, align 8
  store ptr %i.aa, ptr %i.a, align 8
  br label %bb.b, !llvm.loop !64

bb.m:                                             ; preds = %bb.b
  store ptr null, ptr @labels, align 8
  store ptr null, ptr @gotos, align 8
  ret void
}

declare ptr @hashmap_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #7

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #4 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #7 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nounwind allocsize(0,1) }
attributes #9 = { noreturn }
attributes #10 = { nounwind willreturn memory(read) }
attributes #11 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5, !6}
!llvm.ident = !{!7}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 1, !"long-double-type", !"x86_fp80"}
!3 = !{i32 8, !"PIC Level", i32 2}
!4 = !{i32 7, !"PIE Level", i32 2}
!5 = !{i32 7, !"uwtable", i32 2}
!6 = !{i32 7, !"frame-pointer", i32 2}
!7 = !{!"Ubuntu clang version 24.0.0 (++20260816081927+7cb5d896117c-1~exp1~20260816201937.1790)"}
!8 = !{!"llvm.loop.mustprogress"}
!9 = distinct !{!9, !8}
!10 = distinct !{!10, !8}
!11 = distinct !{!11, !8}
!12 = distinct !{!12, !8}
!13 = distinct !{!13, !8}
!14 = distinct !{!14, !8}
!15 = distinct !{!15, !8}
!16 = distinct !{!16, !8}
!17 = distinct !{!17, !8}
!18 = distinct !{!18, !8}
!19 = distinct !{!19, !8}
!20 = distinct !{!20, !8}
!21 = distinct !{!21, !8}
!22 = distinct !{!22, !8}
!23 = distinct !{!23, !8}
!24 = distinct !{!24, !8}
!25 = distinct !{!25, !8}
!26 = distinct !{!26, !8}
!27 = distinct !{!27, !8}
!28 = distinct !{!28, !8}
!29 = distinct !{!29, !8}
!30 = distinct !{!30, !8}
!31 = distinct !{!31, !8}
!32 = distinct !{!32, !8}
!33 = distinct !{!33, !8}
!34 = distinct !{!34, !8}
!35 = distinct !{!35, !8}
!36 = distinct !{!36, !8}
!37 = distinct !{!37, !8}
!38 = distinct !{!38, !8}
!39 = distinct !{!39, !8}
!40 = distinct !{!40, !8}
!41 = distinct !{!41, !8}
!42 = distinct !{!42, !8}
!43 = distinct !{!43, !8}
!44 = distinct !{!44, !8}
!45 = distinct !{!45, !8}
!46 = distinct !{!46, !8}
!47 = distinct !{!47, !8}
!48 = distinct !{!48, !8}
!49 = distinct !{!49, !8}
!50 = distinct !{!50, !8}
!51 = distinct !{!51, !8}
!52 = distinct !{!52, !8}
!53 = distinct !{!53, !8}
!54 = distinct !{!54, !8}
!55 = distinct !{!55, !8}
!56 = distinct !{!56, !8}
!57 = distinct !{!57, !8}
!58 = distinct !{!58, !8}
!59 = distinct !{!59, !8}
!60 = distinct !{!60, !8}
!61 = distinct !{!61, !8}
!62 = distinct !{!62, !8}
!63 = distinct !{!63, !8}
!64 = distinct !{!64, !8}
end_hunk_8
