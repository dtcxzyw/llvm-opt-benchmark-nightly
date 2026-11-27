Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/chibicc/original/preprocess?download=true
begin_hunk_0_@expand_macro:bb.a
  br label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.de = load ptr, ptr %i.m, align 8
  %30 = getelementptr inbounds nuw %struct.Token, ptr %i.de, i32 0, i32 1
  %i.df = load ptr, ptr %30, align 8
  store ptr %i.df, ptr %i.m, align 8
  br label %bb.p, !llvm.loop !26

bb.s:                                             ; preds = %bb.p
  %i.dg = load ptr, ptr %i.l, align 8
  %i.dh = load ptr, ptr %i.c, align 8
  %31 = getelementptr inbounds nuw %struct.Token, ptr %i.dh, i32 0, i32 1
  %i.di = load ptr, ptr %31, align 8
  %i.dj = call ptr @append(ptr noundef %i.dg, ptr noundef %i.di)
  %i.dk = load ptr, ptr %i.b, align 8
  store ptr %i.dj, ptr %i.dk, align 8
  %i.dl = load ptr, ptr %i.h, align 8
  %32 = getelementptr inbounds nuw %struct.Token, ptr %i.dl, i32 0, i32 12
  %i.dm = load i8, ptr %32, align 8
  %i.dn = icmp ne i8 %i.dm, 0
  %i.do = load ptr, ptr %i.b, align 8
  %i.dp = load ptr, ptr %i.do, align 8
  %33 = getelementptr inbounds nuw %struct.Token, ptr %i.dp, i32 0, i32 12
  %i.dq = zext i1 %i.dn to i8
  store i8 %i.dq, ptr %33, align 8
  %i.dr = load ptr, ptr %i.h, align 8
  %34 = getelementptr inbounds nuw %struct.Token, ptr %i.dr, i32 0, i32 13
  %i.ds = load i8, ptr %34, align 1
  %i.dt = icmp ne i8 %i.ds, 0
  %i.du = load ptr, ptr %i.b, align 8
  %i.dv = load ptr, ptr %i.du, align 8
  %35 = getelementptr inbounds nuw %struct.Token, ptr %i.dv, i32 0, i32 13
  %i.dw = zext i1 %i.dt to i8
  store i8 %i.dw, ptr %35, align 1
  store i1 true, ptr %i.a, align 1
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.n, %bb.l, %bb.f, %bb.d, %bb.b
  %i.dx = load i1, ptr %i.a, align 1
  ret i1 %i.dx
}

; Function Attrs: noinline nounwind optnone uwtable
define internal zeroext i1 @is_hash(ptr noundef %0) unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 3 uses
  store ptr %0, ptr %i.a, align 8
  %i.b = load ptr, ptr %i.a, align 8
  %1 = getelementptr inbounds nuw %struct.Token, ptr %i.b, i32 0, i32 12
  %i.c = load i8, ptr %1, align 8
  %i.d = icmp ne i8 %i.c, 0
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %i.a, align 8
  %i.f = call zeroext i1 @equal(ptr noundef %i.e, ptr noundef @.str.91)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.g = phi i1 [ false, %bb.a ], [ %i.f, %bb.b ]
  ret i1 %i.g
}

declare zeroext i1 @equal(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optnone uwtable
define internal ptr @read_include_filename(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %i.c = alloca ptr, align 8                      ; 18 uses
  %i.d = alloca ptr, align 8                      ; 4 uses
  %i.e = alloca ptr, align 8                      ; 2 uses
  %i.f = alloca ptr, align 8                      ; 3 uses
  store ptr %0, ptr %i.b, align 8
  store ptr %1, ptr %i.c, align 8
  store ptr %2, ptr %i.d, align 8
  %i.g = load ptr, ptr %i.c, align 8
  %3 = getelementptr inbounds nuw %struct.Token, ptr %i.g, i32 0, i32 0
  %i.h = load i32, ptr %3, align 16
  %i.i = icmp eq i32 %i.h, 3
  br i1 %i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.j = load ptr, ptr %i.d, align 8
  store i8 1, ptr %i.j, align 1
  %i.k = load ptr, ptr %i.c, align 8
  %4 = getelementptr inbounds nuw %struct.Token, ptr %i.k, i32 0, i32 1
  %i.l = load ptr, ptr %4, align 8
  %i.m = call ptr @skip_line(ptr noundef %i.l)
  %i.n = load ptr, ptr %i.b, align 8
  store ptr %i.m, ptr %i.n, align 8
  %i.o = load ptr, ptr %i.c, align 8
  %5 = getelementptr inbounds nuw %struct.Token, ptr %i.o, i32 0, i32 4
  %i.p = load ptr, ptr %5, align 16
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 1
  %i.r = load ptr, ptr %i.c, align 8
  %6 = getelementptr inbounds nuw %struct.Token, ptr %i.r, i32 0, i32 5
  %i.s = load i32, ptr %6, align 8
  %i.t = sub nsw i32 %i.s, 2
  %i.u = sext i32 %i.t to i64
  %i.v = call noalias ptr @strndup(ptr noundef %i.q, i64 noundef %i.u) #13
  store ptr %i.v, ptr %i.a, align 8
  br label %bb.o

bb.c:                                             ; preds = %bb.a
  %i.w = load ptr, ptr %i.c, align 8
  %i.x = call zeroext i1 @equal(ptr noundef %i.w, ptr noundef @.str.100)
  br i1 %i.x, label %bb.d, label %bb.l

bb.d:                                             ; preds = %bb.c
  %i.y = load ptr, ptr %i.c, align 8
  store ptr %i.y, ptr %i.e, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.j, %bb.d
  %i.z = load ptr, ptr %i.c, align 8
  %i.aa = call zeroext i1 @equal(ptr noundef %i.z, ptr noundef @.str.101)
  %i.ab = xor i1 %i.aa, true
  br i1 %i.ab, label %bb.f, label %bb.k

bb.f:                                             ; preds = %bb.e
  %i.ac = load ptr, ptr %i.c, align 8
  %7 = getelementptr inbounds nuw %struct.Token, ptr %i.ac, i32 0, i32 12
  %i.ad = load i8, ptr %7, align 8
  %i.ae = icmp ne i8 %i.ad, 0
  br i1 %i.ae, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.af = load ptr, ptr %i.c, align 8
  %8 = getelementptr inbounds nuw %struct.Token, ptr %i.af, i32 0, i32 0
  %i.ag = load i32, ptr %8, align 16
  %i.ah = icmp eq i32 %i.ag, 6
  br i1 %i.ah, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.ai = load ptr, ptr %i.c, align 8
  call void (ptr, ptr, ...) @error_tok(ptr noundef %i.ai, ptr noundef @.str.102) #14
  unreachable

bb.i:                                             ; preds = %bb.g
  br label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.aj = load ptr, ptr %i.c, align 8
  %9 = getelementptr inbounds nuw %struct.Token, ptr %i.aj, i32 0, i32 1
  %i.ak = load ptr, ptr %9, align 8
  store ptr %i.ak, ptr %i.c, align 8
  br label %bb.e, !llvm.loop !27

bb.k:                                             ; preds = %bb.e
  %i.al = load ptr, ptr %i.d, align 8
  store i8 0, ptr %i.al, align 1
  %i.am = load ptr, ptr %i.c, align 8
  %10 = getelementptr inbounds nuw %struct.Token, ptr %i.am, i32 0, i32 1
  %i.an = load ptr, ptr %10, align 8
  %i.ao = call ptr @skip_line(ptr noundef %i.an)
  %i.ap = load ptr, ptr %i.b, align 8
  store ptr %i.ao, ptr %i.ap, align 8
  %i.aq = load ptr, ptr %i.e, align 8
  %11 = getelementptr inbounds nuw %struct.Token, ptr %i.aq, i32 0, i32 1
  %i.ar = load ptr, ptr %11, align 8
  %i.as = load ptr, ptr %i.c, align 8
  %i.at = call ptr @join_tokens(ptr noundef %i.ar, ptr noundef %i.as)
  store ptr %i.at, ptr %i.a, align 8
  br label %bb.o

bb.l:                                             ; preds = %bb.c
  %i.au = load ptr, ptr %i.c, align 8
  %12 = getelementptr inbounds nuw %struct.Token, ptr %i.au, i32 0, i32 0
  %i.av = load i32, ptr %12, align 16
  %i.aw = icmp eq i32 %i.av, 0
  br i1 %i.aw, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.ax = load ptr, ptr %i.b, align 8
  %i.ay = load ptr, ptr %i.c, align 8
  %i.az = call ptr @copy_line(ptr noundef %i.ax, ptr noundef %i.ay)
  %i.ba = call ptr @preprocess2(ptr noundef %i.az)
  store ptr %i.ba, ptr %i.f, align 8
  %i.bb = load ptr, ptr %i.f, align 8
  %i.bc = load ptr, ptr %i.d, align 8
  %i.bd = call ptr @read_include_filename(ptr noundef %i.f, ptr noundef %i.bb, ptr noundef %i.bc)
  store ptr %i.bd, ptr %i.a, align 8
  br label %bb.o

bb.n:                                             ; preds = %bb.l
  %i.be = load ptr, ptr %i.c, align 8
  call void (ptr, ptr, ...) @error_tok(ptr noundef %i.be, ptr noundef @.str.103) #14
  unreachable

bb.o:                                             ; preds = %bb.m, %bb.k, %bb.b
  %i.bf = load ptr, ptr %i.a, align 8
  ret ptr %i.bf
}

; Function Attrs: nounwind
declare ptr @dirname(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc") memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write)
declare noalias ptr @strdup(ptr noundef readonly captures(none)) local_unnamed_addr #7

; Function Attrs: noinline nounwind optnone uwtable
define internal ptr @include_file(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %i.c = alloca ptr, align 8                      ; 6 uses
  %i.d = alloca ptr, align 8                      ; 2 uses
  %i.e = alloca ptr, align 8                      ; 6 uses
  %i.f = alloca ptr, align 8                      ; 4 uses
  store ptr %0, ptr %i.b, align 8
  store ptr %1, ptr %i.c, align 8
  store ptr %2, ptr %i.d, align 8
  %i.g = load ptr, ptr %i.c, align 8
  %i.h = call ptr @hashmap_get(ptr noundef @pragma_once, ptr noundef %i.g)
  %i.i = icmp ne ptr %i.h, null
  br i1 %i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.j = load ptr, ptr %i.b, align 8
  store ptr %i.j, ptr %i.a, align 8
  br label %bb.k

bb.c:                                             ; preds = %bb.a
  %i.k = load ptr, ptr %i.c, align 8
  %i.l = call ptr @hashmap_get(ptr noundef @include_file.include_guards, ptr noundef %i.k)
  store ptr %i.l, ptr %i.e, align 8
  %i.m = load ptr, ptr %i.e, align 8
  %i.n = icmp ne ptr %i.m, null
  br i1 %i.n, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.o = load ptr, ptr %i.e, align 8
  %i.p = call ptr @hashmap_get(ptr noundef @macros, ptr noundef %i.o)
  %i.q = icmp ne ptr %i.p, null
  br i1 %i.q, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.r = load ptr, ptr %i.b, align 8
  store ptr %i.r, ptr %i.a, align 8
  br label %bb.k

bb.f:                                             ; preds = %bb.d, %bb.c
  %i.s = load ptr, ptr %i.c, align 8
  %i.t = call ptr @tokenize_file(ptr noundef %i.s)
  store ptr %i.t, ptr %i.f, align 8
  %i.u = load ptr, ptr %i.f, align 8
  %i.v = icmp ne ptr %i.u, null
  br i1 %i.v, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.w = load ptr, ptr %i.d, align 8
  %i.x = load ptr, ptr %i.c, align 8
  %i.y = call ptr @__errno_location() #15
  %i.z = load i32, ptr %i.y, align 4
  %i.aa = call ptr @strerror(i32 noundef %i.z) #13
  call void (ptr, ptr, ...) @error_tok(ptr noundef %i.w, ptr noundef @.str.104, ptr noundef %i.x, ptr noundef %i.aa) #14
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.ab = load ptr, ptr %i.f, align 8
  %i.ac = call ptr @detect_include_guard(ptr noundef %i.ab)
  store ptr %i.ac, ptr %i.e, align 8
  %i.ad = load ptr, ptr %i.e, align 8
  %i.ae = icmp ne ptr %i.ad, null
  br i1 %i.ae, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.af = load ptr, ptr %i.c, align 8
  %i.ag = load ptr, ptr %i.e, align 8
  call void @hashmap_put(ptr noundef @include_file.include_guards, ptr noundef %i.af, ptr noundef %i.ag)
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.ah = load ptr, ptr %i.f, align 8
  %i.ai = load ptr, ptr %i.b, align 8
  %i.aj = call ptr @append(ptr noundef %i.ah, ptr noundef %i.ai)
  store ptr %i.aj, ptr %i.a, align 8
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.e, %bb.b
  %i.ak = load ptr, ptr %i.a, align 8
  ret ptr %i.ak
}

; Function Attrs: noinline nounwind optnone uwtable
define internal ptr @search_include_next(ptr noundef %0) unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 3 uses
  %i.b = alloca ptr, align 8                      ; 2 uses
  %i.c = alloca ptr, align 8                      ; 3 uses
  store ptr %0, ptr %i.b, align 8
  br label %bb.b

bb.b:                                             ; preds = %bb.f, %bb.a
  %i.d = load i32, ptr @include_next_idx, align 4
  %i.e = load i32, ptr getelementptr inbounds nuw (i8, ptr @include_paths, i64 12), align 4
  %i.f = icmp slt i32 %i.d, %i.e
  br i1 %i.f, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.g = load ptr, ptr @include_paths, align 8
  %i.h = load i32, ptr @include_next_idx, align 4
  %i.i = sext i32 %i.h to i64
  %i.j = getelementptr inbounds ptr, ptr %i.g, i64 %i.i
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = load ptr, ptr %i.b, align 8
  %i.m = call ptr (ptr, ...) @format(ptr noundef @.str, ptr noundef %i.k, ptr noundef %i.l)
  store ptr %i.m, ptr %i.c, align 8
  %i.n = load ptr, ptr %i.c, align 8
  %i.o = call zeroext i1 @file_exists(ptr noundef %i.n)
  br i1 %i.o, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.p = load ptr, ptr %i.c, align 8
  store ptr %i.p, ptr %i.a, align 8
  br label %bb.h

bb.e:                                             ; preds = %bb.c
  br label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.q = load i32, ptr @include_next_idx, align 4
  %i.r = add nsw i32 %i.q, 1
  store i32 %i.r, ptr @include_next_idx, align 4
  br label %bb.b, !llvm.loop !28

bb.g:                                             ; preds = %bb.b
  store ptr null, ptr %i.a, align 8
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.d
  %i.s = load ptr, ptr %i.a, align 8
  ret ptr %i.s
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @read_macro_definition(ptr noundef nonnull %0, ptr noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 3 uses
  %i.b = alloca ptr, align 8                      ; 13 uses
  %i.c = alloca ptr, align 8                      ; 3 uses
  %i.d = alloca ptr, align 8                      ; 3 uses
  %i.e = alloca ptr, align 8                      ; 2 uses
  %i.f = alloca ptr, align 8                      ; 3 uses
  store ptr %0, ptr %i.a, align 8
  store ptr %1, ptr %i.b, align 8
  %i.g = load ptr, ptr %i.b, align 8
  %2 = getelementptr inbounds nuw %struct.Token, ptr %i.g, i32 0, i32 0
  %i.h = load i32, ptr %2, align 16
  %i.i = icmp ne i32 %i.h, 0
  br i1 %i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.j = load ptr, ptr %i.b, align 8
  call void (ptr, ptr, ...) @error_tok(ptr noundef %i.j, ptr noundef @.str.71) #14
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.k = load ptr, ptr %i.b, align 8
  %3 = getelementptr inbounds nuw %struct.Token, ptr %i.k, i32 0, i32 4
  %i.l = load ptr, ptr %3, align 16
  %i.m = load ptr, ptr %i.b, align 8
  %4 = getelementptr inbounds nuw %struct.Token, ptr %i.m, i32 0, i32 5
  %i.n = load i32, ptr %4, align 8
  %i.o = sext i32 %i.n to i64
  %i.p = call noalias ptr @strndup(ptr noundef %i.l, i64 noundef %i.o) #13
  store ptr %i.p, ptr %i.c, align 8
  %i.q = load ptr, ptr %i.b, align 8
  %5 = getelementptr inbounds nuw %struct.Token, ptr %i.q, i32 0, i32 1
  %i.r = load ptr, ptr %5, align 8
  store ptr %i.r, ptr %i.b, align 8
  %i.s = load ptr, ptr %i.b, align 8
  %6 = getelementptr inbounds nuw %struct.Token, ptr %i.s, i32 0, i32 13
  %i.t = load i8, ptr %6, align 1
  %i.u = icmp ne i8 %i.t, 0
  br i1 %i.u, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.v = load ptr, ptr %i.b, align 8
  %i.w = call zeroext i1 @equal(ptr noundef %i.v, ptr noundef @.str.86)
  br i1 %i.w, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  store ptr null, ptr %i.d, align 8
  %i.x = load ptr, ptr %i.b, align 8
  %7 = getelementptr inbounds nuw %struct.Token, ptr %i.x, i32 0, i32 1
  %i.y = load ptr, ptr %7, align 8
  %i.z = call ptr @read_macro_params(ptr noundef %i.b, ptr noundef %i.y, ptr noundef %i.d)
  store ptr %i.z, ptr %i.e, align 8
  %i.aa = load ptr, ptr %i.c, align 8
  %i.ab = load ptr, ptr %i.a, align 8
  %i.ac = load ptr, ptr %i.b, align 8
  %i.ad = call ptr @copy_line(ptr noundef %i.ab, ptr noundef %i.ac)
  %i.ae = call ptr @add_macro(ptr noundef %i.aa, i1 noundef zeroext false, ptr noundef %i.ad)
  store ptr %i.ae, ptr %i.f, align 8
  %i.af = load ptr, ptr %i.e, align 8
  %i.ag = load ptr, ptr %i.f, align 8
  %8 = getelementptr inbounds nuw %struct.Macro, ptr %i.ag, i32 0, i32 2
  store ptr %i.af, ptr %8, align 8
  %i.ah = load ptr, ptr %i.d, align 8
  %i.ai = load ptr, ptr %i.f, align 8
  %9 = getelementptr inbounds nuw %struct.Macro, ptr %i.ai, i32 0, i32 3
  store ptr %i.ah, ptr %9, align 8
  br label %bb.g

bb.f:                                             ; preds = %bb.d, %bb.c
  %i.aj = load ptr, ptr %i.c, align 8
  %i.ak = load ptr, ptr %i.a, align 8
  %i.al = load ptr, ptr %i.b, align 8
  %i.am = call ptr @copy_line(ptr noundef %i.ak, ptr noundef %i.al)
  %i.an = call ptr @add_macro(ptr noundef %i.aj, i1 noundef zeroext true, ptr noundef %i.am) ; 0 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc") memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write)
declare noalias ptr @strndup(ptr noundef readonly captures(none), i64 noundef) local_unnamed_addr #7

; Function Attrs: noinline nounwind optnone uwtable
define internal ptr @skip_line(ptr noundef %0) unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 3 uses
  %i.b = alloca ptr, align 8                      ; 8 uses
  store ptr %0, ptr %i.b, align 8
  %i.c = load ptr, ptr %i.b, align 8
  %1 = getelementptr inbounds nuw %struct.Token, ptr %i.c, i32 0, i32 12
  %i.d = load i8, ptr %1, align 8
  %i.e = icmp ne i8 %i.d, 0
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %i.b, align 8
  store ptr %i.f, ptr %i.a, align 8
  br label %bb.g

bb.c:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %i.b, align 8
  call void (ptr, ptr, ...) @warn_tok(ptr noundef %i.g, ptr noundef @.str.107)
  br label %bb.d

bb.d:                                             ; preds = %bb.e, %bb.c
  %i.h = load ptr, ptr %i.b, align 8
  %2 = getelementptr inbounds nuw %struct.Token, ptr %i.h, i32 0, i32 12
  %i.i = load i8, ptr %2, align 8
  %i.j = icmp ne i8 %i.i, 0
  br i1 %i.j, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.k = load ptr, ptr %i.b, align 8
  %3 = getelementptr inbounds nuw %struct.Token, ptr %i.k, i32 0, i32 1
  %i.l = load ptr, ptr %3, align 8
  store ptr %i.l, ptr %i.b, align 8
  br label %bb.d, !llvm.loop !29

bb.f:                                             ; preds = %bb.d
  %i.m = load ptr, ptr %i.b, align 8
  store ptr %i.m, ptr %i.a, align 8
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.b
  %i.n = load ptr, ptr %i.a, align 8
  ret ptr %i.n
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @eval_const_expr(ptr noundef nonnull %0, ptr noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 2 uses
  %i.b = alloca ptr, align 8                      ; 3 uses
  %i.c = alloca ptr, align 8                      ; 2 uses
  %i.d = alloca ptr, align 8                      ; 7 uses
  %i.e = alloca ptr, align 8                      ; 9 uses
  %i.f = alloca ptr, align 8                      ; 2 uses
  %i.g = alloca ptr, align 8                      ; 3 uses
  %i.h = alloca i64, align 8                      ; 2 uses
  store ptr %0, ptr %i.a, align 8
  store ptr %1, ptr %i.b, align 8
  %i.i = load ptr, ptr %i.b, align 8
  store ptr %i.i, ptr %i.c, align 8
  %i.j = load ptr, ptr %i.a, align 8
  %i.k = load ptr, ptr %i.b, align 8
  %2 = getelementptr inbounds nuw %struct.Token, ptr %i.k, i32 0, i32 1
  %i.l = load ptr, ptr %2, align 8
  %i.m = call ptr @read_const_expr(ptr noundef %i.j, ptr noundef %i.l)
  store ptr %i.m, ptr %i.d, align 8
  %i.n = load ptr, ptr %i.d, align 8
  %i.o = call ptr @preprocess2(ptr noundef %i.n)
  store ptr %i.o, ptr %i.d, align 8
  %i.p = load ptr, ptr %i.d, align 8
  %3 = getelementptr inbounds nuw %struct.Token, ptr %i.p, i32 0, i32 0
  %i.q = load i32, ptr %3, align 16
  %i.r = icmp eq i32 %i.q, 6
  br i1 %i.r, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.s = load ptr, ptr %i.c, align 8
  call void (ptr, ptr, ...) @error_tok(ptr noundef %i.s, ptr noundef @.str.108) #14
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.t = load ptr, ptr %i.d, align 8
  store ptr %i.t, ptr %i.e, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.h, %bb.c
  %i.u = load ptr, ptr %i.e, align 8
  %4 = getelementptr inbounds nuw %struct.Token, ptr %i.u, i32 0, i32 0
  %i.v = load i32, ptr %4, align 16
  %i.w = icmp ne i32 %i.v, 6
  br i1 %i.w, label %bb.e, label %bb.i

bb.e:                                             ; preds = %bb.d
  %i.x = load ptr, ptr %i.e, align 8
  %5 = getelementptr inbounds nuw %struct.Token, ptr %i.x, i32 0, i32 0
  %i.y = load i32, ptr %5, align 16
  %i.z = icmp eq i32 %i.y, 0
  br i1 %i.z, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.aa = load ptr, ptr %i.e, align 8
  %6 = getelementptr inbounds nuw %struct.Token, ptr %i.aa, i32 0, i32 1
  %i.ab = load ptr, ptr %6, align 8
  store ptr %i.ab, ptr %i.f, align 8
  %i.ac = load ptr, ptr %i.e, align 8
  %i.ad = load ptr, ptr %i.e, align 8
  %i.ae = call ptr @new_num_token(i32 noundef 0, ptr noundef %i.ad)
  call void @llvm.memcpy.p0.p0.i64(ptr align 16 %i.ac, ptr align 16 %i.ae, i64 128, i1 false)
  %i.af = load ptr, ptr %i.f, align 8
  %i.ag = load ptr, ptr %i.e, align 8
  %7 = getelementptr inbounds nuw %struct.Token, ptr %i.ag, i32 0, i32 1
  store ptr %i.af, ptr %7, align 8
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  br label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ah = load ptr, ptr %i.e, align 8
  %8 = getelementptr inbounds nuw %struct.Token, ptr %i.ah, i32 0, i32 1
  %i.ai = load ptr, ptr %8, align 8
  store ptr %i.ai, ptr %i.e, align 8
  br label %bb.d, !llvm.loop !30

bb.i:                                             ; preds = %bb.d
  %i.aj = load ptr, ptr %i.d, align 8
  call void @convert_pp_tokens(ptr noundef %i.aj)
  %i.ak = load ptr, ptr %i.d, align 8
  %i.al = call i64 @const_expr(ptr noundef %i.g, ptr noundef %i.ak)
  store i64 %i.al, ptr %i.h, align 8
  %i.am = load ptr, ptr %i.g, align 8
  %9 = getelementptr inbounds nuw %struct.Token, ptr %i.am, i32 0, i32 0
  %i.an = load i32, ptr %9, align 16
  %i.ao = icmp ne i32 %i.an, 6
  br i1 %i.ao, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ap = load ptr, ptr %i.g, align 8
  call void (ptr, ptr, ...) @error_tok(ptr noundef %i.ap, ptr noundef @.str.107) #14
  unreachable

bb.k:                                             ; preds = %bb.i
  %i.aq = load i64, ptr %i.h, align 8
  ret i64 %i.aq
}

; Function Attrs: noinline nounwind optnone uwtable
define internal ptr @push_cond_incl(ptr noundef %0, i1 noundef zeroext %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 2 uses
  %i.b = alloca i8, align 1                       ; 2 uses
  %i.c = alloca ptr, align 8                      ; 7 uses
  store ptr %0, ptr %i.a, align 8
  %i.d = zext i1 %1 to i8
  store i8 %i.d, ptr %i.b, align 1
  %i.e = call noalias ptr @calloc(i64 noundef 1, i64 noundef 32) #12
  store ptr %i.e, ptr %i.c, align 8
  %i.f = load ptr, ptr @cond_incl, align 8
  %i.g = load ptr, ptr %i.c, align 8
  %2 = getelementptr inbounds nuw %struct.CondIncl, ptr %i.g, i32 0, i32 0
  store ptr %i.f, ptr %2, align 8
  %i.h = load ptr, ptr %i.c, align 8
  %3 = getelementptr inbounds nuw %struct.CondIncl, ptr %i.h, i32 0, i32 1
  store i32 0, ptr %3, align 8
  %i.i = load ptr, ptr %i.a, align 8
  %i.j = load ptr, ptr %i.c, align 8
  %4 = getelementptr inbounds nuw %struct.CondIncl, ptr %i.j, i32 0, i32 2
  store ptr %i.i, ptr %4, align 8
  %i.k = load i8, ptr %i.b, align 1
  %i.l = icmp ne i8 %i.k, 0
  %i.m = load ptr, ptr %i.c, align 8
  %5 = getelementptr inbounds nuw %struct.CondIncl, ptr %i.m, i32 0, i32 3
  %i.n = zext i1 %i.l to i8
  store i8 %i.n, ptr %5, align 8
  %i.o = load ptr, ptr %i.c, align 8
  store ptr %i.o, ptr @cond_incl, align 8
  %i.p = load ptr, ptr %i.c, align 8
  ret ptr %i.p
}

; Function Attrs: noinline nounwind optnone uwtable
define internal ptr @skip_cond_incl(ptr noundef %0) unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 15 uses
  store ptr %0, ptr %i.a, align 8
  br label %bb.b

bb.b:                                             ; preds = %.backedge, %bb.a
  %i.b = load ptr, ptr %i.a, align 8
  %1 = getelementptr inbounds nuw %struct.Token, ptr %i.b, i32 0, i32 0
  %i.c = load i32, ptr %1, align 16
  %i.d = icmp ne i32 %i.c, 6
  br i1 %i.d, label %bb.c, label %.loopexit

bb.c:                                             ; preds = %bb.b
  %i.e = load ptr, ptr %i.a, align 8
  %i.f = call zeroext i1 @is_hash(ptr noundef %i.e)
end_hunk_0
begin_hunk_1_@read_const_expr:bb.a
  %i.ak = call ptr @new_num_token(i32 noundef %i.ai, ptr noundef %i.aj) ; 2 uses
  %i.al = load ptr, ptr %i.c, align 8
  %7 = getelementptr inbounds nuw %struct.Token, ptr %i.al, i32 0, i32 1
  store ptr %i.ak, ptr %7, align 8
  store ptr %i.ak, ptr %i.c, align 8
  br label %.backedge

.backedge:                                        ; preds = %bb.h, %bb.i
  br label %bb.b, !llvm.loop !51

bb.i:                                             ; preds = %bb.c
  %i.am = load ptr, ptr %i.b, align 8             ; 2 uses
  %i.an = load ptr, ptr %i.c, align 8
  %8 = getelementptr inbounds nuw %struct.Token, ptr %i.an, i32 0, i32 1
  store ptr %i.am, ptr %8, align 8
  store ptr %i.am, ptr %i.c, align 8
  %i.ao = load ptr, ptr %i.b, align 8
  %9 = getelementptr inbounds nuw %struct.Token, ptr %i.ao, i32 0, i32 1
  %i.ap = load ptr, ptr %9, align 8
  store ptr %i.ap, ptr %i.b, align 8
  br label %.backedge

bb.j:                                             ; preds = %bb.b
  %i.aq = load ptr, ptr %i.b, align 8
  %i.ar = load ptr, ptr %i.c, align 8
  %10 = getelementptr inbounds nuw %struct.Token, ptr %i.ar, i32 0, i32 1
  store ptr %i.aq, ptr %10, align 8
  %11 = getelementptr inbounds nuw %struct.Token, ptr %2, i32 0, i32 1
  %i.as = load ptr, ptr %11, align 8
  ret ptr %i.as
}

declare i64 @const_expr(ptr noundef, ptr noundef) local_unnamed_addr #1

declare zeroext i1 @consume(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optnone uwtable
define internal ptr @skip_cond_incl2(ptr noundef %0) unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 3 uses
  %i.b = alloca ptr, align 8                      ; 14 uses
  store ptr %0, ptr %i.b, align 8
  br label %bb.b

bb.b:                                             ; preds = %.backedge, %bb.a
  %i.c = load ptr, ptr %i.b, align 8
  %1 = getelementptr inbounds nuw %struct.Token, ptr %i.c, i32 0, i32 0
  %i.d = load i32, ptr %1, align 16
  %i.e = icmp ne i32 %i.d, 6
  br i1 %i.e, label %bb.c, label %bb.l

bb.c:                                             ; preds = %bb.b
  %i.f = load ptr, ptr %i.b, align 8
  %i.g = call zeroext i1 @is_hash(ptr noundef %i.f)
  br i1 %i.g, label %bb.d, label %bb.h

bb.d:                                             ; preds = %bb.c
  %i.h = load ptr, ptr %i.b, align 8
  %2 = getelementptr inbounds nuw %struct.Token, ptr %i.h, i32 0, i32 1
  %i.i = load ptr, ptr %2, align 8
  %i.j = call zeroext i1 @equal(ptr noundef %i.i, ptr noundef @.str.72)
  br i1 %i.j, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.k = load ptr, ptr %i.b, align 8
  %3 = getelementptr inbounds nuw %struct.Token, ptr %i.k, i32 0, i32 1
  %i.l = load ptr, ptr %3, align 8
  %i.m = call zeroext i1 @equal(ptr noundef %i.l, ptr noundef @.str.73)
  br i1 %i.m, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.n = load ptr, ptr %i.b, align 8
  %4 = getelementptr inbounds nuw %struct.Token, ptr %i.n, i32 0, i32 1
  %i.o = load ptr, ptr %4, align 8
  %i.p = call zeroext i1 @equal(ptr noundef %i.o, ptr noundef @.str.74)
  br i1 %i.p, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.d
  %i.q = load ptr, ptr %i.b, align 8
  %5 = getelementptr inbounds nuw %struct.Token, ptr %i.q, i32 0, i32 1
  %i.r = load ptr, ptr %5, align 8
  %6 = getelementptr inbounds nuw %struct.Token, ptr %i.r, i32 0, i32 1
  %i.s = load ptr, ptr %6, align 8
  %i.t = call ptr @skip_cond_incl2(ptr noundef %i.s)
  store ptr %i.t, ptr %i.b, align 8
  br label %.backedge

.backedge:                                        ; preds = %bb.g, %bb.k
  br label %bb.b, !llvm.loop !52

bb.h:                                             ; preds = %bb.f, %bb.c
  %i.u = load ptr, ptr %i.b, align 8
  %i.v = call zeroext i1 @is_hash(ptr noundef %i.u)
  br i1 %i.v, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.w = load ptr, ptr %i.b, align 8
  %7 = getelementptr inbounds nuw %struct.Token, ptr %i.w, i32 0, i32 1
  %i.x = load ptr, ptr %7, align 8
  %i.y = call zeroext i1 @equal(ptr noundef %i.x, ptr noundef @.str.79)
  br i1 %i.y, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.z = load ptr, ptr %i.b, align 8
  %8 = getelementptr inbounds nuw %struct.Token, ptr %i.z, i32 0, i32 1
  %i.aa = load ptr, ptr %8, align 8
  %9 = getelementptr inbounds nuw %struct.Token, ptr %i.aa, i32 0, i32 1
  %i.ab = load ptr, ptr %9, align 8
  store ptr %i.ab, ptr %i.a, align 8
  br label %bb.m

bb.k:                                             ; preds = %bb.i, %bb.h
  %i.ac = load ptr, ptr %i.b, align 8
  %10 = getelementptr inbounds nuw %struct.Token, ptr %i.ac, i32 0, i32 1
  %i.ad = load ptr, ptr %10, align 8
  store ptr %i.ad, ptr %i.b, align 8
  br label %.backedge

bb.l:                                             ; preds = %bb.b
  %i.ae = load ptr, ptr %i.b, align 8
  store ptr %i.ae, ptr %i.a, align 8
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.j
  %i.af = load ptr, ptr %i.a, align 8
  ret ptr %i.af
}

declare ptr @hashmap_get2(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @getStringKind(ptr noundef %0) unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 6 uses
  %i.b = alloca ptr, align 8                      ; 3 uses
  store ptr %0, ptr %i.b, align 8
  %i.c = load ptr, ptr %i.b, align 8
  %1 = getelementptr inbounds nuw %struct.Token, ptr %i.c, i32 0, i32 4
  %i.d = load ptr, ptr %1, align 16
  %i.e = call i32 @strcmp(ptr noundef %i.d, ptr noundef @.str.113) #16
  %i.f = icmp ne i32 %i.e, 0
  br i1 %i.f, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i32 1, ptr %i.a, align 4
  br label %bb.i

bb.c:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %i.b, align 8
  %2 = getelementptr inbounds nuw %struct.Token, ptr %i.g, i32 0, i32 4
  %i.h = load ptr, ptr %2, align 16
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 0
  %i.j = load i8, ptr %i.i, align 1
  %i.k = sext i8 %i.j to i32
  switch i32 %i.k, label %bb.h [
    i32 34, label %bb.d
    i32 117, label %bb.e
    i32 85, label %bb.f
    i32 76, label %bb.g
  ]

bb.d:                                             ; preds = %bb.c
  store i32 0, ptr %i.a, align 4
  br label %bb.i

bb.e:                                             ; preds = %bb.c
  store i32 2, ptr %i.a, align 4
  br label %bb.i

bb.f:                                             ; preds = %bb.c
  store i32 3, ptr %i.a, align 4
  br label %bb.i

bb.g:                                             ; preds = %bb.c
  store i32 4, ptr %i.a, align 4
  br label %bb.i

bb.h:                                             ; preds = %bb.c
  call void (ptr, ...) @error(ptr noundef @.str.114, ptr noundef @.str.115, i32 noundef 1129) #14
  unreachable

bb.i:                                             ; preds = %bb.g, %bb.f, %bb.e, %bb.d, %bb.b
  %i.l = load i32, ptr %i.a, align 4
  ret i32 %i.l
}

declare ptr @tokenize_string_literal(ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @array_of(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noreturn
declare void @error(ptr noundef, ...) local_unnamed_addr #3

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #7 = { mustprogress nofree nounwind willreturn allockind("alloc") memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #10 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree nosync nounwind willreturn memory(none) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nounwind allocsize(0,1) }
attributes #13 = { nounwind }
attributes #14 = { noreturn }
attributes #15 = { nounwind willreturn memory(none) }
attributes #16 = { nounwind willreturn memory(read) }

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
end_hunk_1
