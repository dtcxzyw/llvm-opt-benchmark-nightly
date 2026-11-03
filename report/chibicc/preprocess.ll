Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/chibicc/original/preprocess?download=true
begin_hunk_0_@line_macro:bb.a
  %5 = getelementptr inbounds nuw %struct.File, ptr %i.k, i32 0, i32 4
  %i.l = load i32, ptr %5, align 8
  %i.m = add nsw i32 %i.i, %i.l
  store i32 %i.m, ptr %i.b, align 4
  %i.n = load i32, ptr %i.b, align 4
  %i.o = load ptr, ptr %i.a, align 8
  %i.p = call ptr @new_num_token(i32 noundef %i.n, ptr noundef %i.o)
  ret ptr %i.p
}

; Function Attrs: noinline nounwind optnone uwtable
define internal ptr @counter_macro(ptr noundef %0) #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 2 uses
  store ptr %0, ptr %i.a, align 8
  %i.b = load i32, ptr @counter_macro.i, align 4  ; 2 uses
  %i.c = add nsw i32 %i.b, 1
  store i32 %i.c, ptr @counter_macro.i, align 4
  %i.d = load ptr, ptr %i.a, align 8
  %i.e = call ptr @new_num_token(i32 noundef %i.b, ptr noundef %i.d)
  ret ptr %i.e
}

; Function Attrs: noinline nounwind optnone uwtable
define internal ptr @timestamp_macro(ptr noundef %0) #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 3 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %1 = alloca %struct.stat, align 8               ; 2 uses
  %i.c = alloca [30 x i8], align 16               ; 3 uses
  store ptr %0, ptr %i.b, align 8
  %i.d = load ptr, ptr %i.b, align 8
  %2 = getelementptr inbounds nuw %struct.Token, ptr %i.d, i32 0, i32 8
  %i.e = load ptr, ptr %2, align 16
  %3 = getelementptr inbounds nuw %struct.File, ptr %i.e, i32 0, i32 0
  %i.f = load ptr, ptr %3, align 8
  %i.g = call i32 @stat(ptr noundef %i.f, ptr noundef %1) #13
  %i.h = icmp ne i32 %i.g, 0
  br i1 %i.h, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = load ptr, ptr %i.b, align 8
  %i.j = call ptr @new_str_token(ptr noundef @.str.64, ptr noundef %i.i)
  store ptr %i.j, ptr %i.a, align 8
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %4 = getelementptr inbounds nuw %struct.stat, ptr %1, i32 0, i32 12
  %5 = getelementptr inbounds nuw %struct.timespec, ptr %4, i32 0, i32 0
  %i.k = getelementptr inbounds nuw [30 x i8], ptr %i.c, i64 0, i64 0
  %i.l = call ptr @ctime_r(ptr noundef %5, ptr noundef %i.k) #13 ; 0 uses
  %i.m = getelementptr inbounds nuw [30 x i8], ptr %i.c, i64 0, i64 24
  store i8 0, ptr %i.m, align 8
  %i.n = getelementptr inbounds nuw [30 x i8], ptr %i.c, i64 0, i64 0
  %i.o = load ptr, ptr %i.b, align 8
  %i.p = call ptr @new_str_token(ptr noundef %i.n, ptr noundef %i.o)
  store ptr %i.p, ptr %i.a, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.q = load ptr, ptr %i.a, align 8
  ret ptr %i.q
}

; Function Attrs: noinline nounwind optnone uwtable
define internal ptr @base_file_macro(ptr noundef %0) #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 2 uses
  store ptr %0, ptr %i.a, align 8
  %i.b = load ptr, ptr @base_file, align 8
  %i.c = load ptr, ptr %i.a, align 8
  %i.d = call ptr @new_str_token(ptr noundef %i.b, ptr noundef %i.c)
  ret ptr %i.d
}

; Function Attrs: nounwind
declare i64 @time(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare ptr @localtime(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optnone uwtable
define internal ptr @format_date(ptr noundef %0) unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  store ptr %0, ptr %i.a, align 8
  %i.b = load ptr, ptr %i.a, align 8
  %1 = getelementptr inbounds nuw %struct.tm, ptr %i.b, i32 0, i32 4
  %i.c = load i32, ptr %1, align 8
  %i.d = sext i32 %i.c to i64
  %i.e = getelementptr inbounds [12 x [4 x i8]], ptr @format_date.mon, i64 0, i64 %i.d
  %i.f = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 0, i64 0
  %i.g = load ptr, ptr %i.a, align 8
  %2 = getelementptr inbounds nuw %struct.tm, ptr %i.g, i32 0, i32 3
  %i.h = load i32, ptr %2, align 4
  %i.i = load ptr, ptr %i.a, align 8
  %3 = getelementptr inbounds nuw %struct.tm, ptr %i.i, i32 0, i32 5
  %i.j = load i32, ptr %3, align 4
  %i.k = add nsw i32 %i.j, 1900
  %i.l = call ptr (ptr, ...) @format(ptr noundef @.str.65, ptr noundef %i.f, i32 noundef %i.h, i32 noundef %i.k)
  ret ptr %i.l
}

; Function Attrs: noinline nounwind optnone uwtable
define internal ptr @format_time(ptr noundef %0) unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  store ptr %0, ptr %i.a, align 8
  %i.b = load ptr, ptr %i.a, align 8
  %1 = getelementptr inbounds nuw %struct.tm, ptr %i.b, i32 0, i32 2
  %i.c = load i32, ptr %1, align 8
  %i.d = load ptr, ptr %i.a, align 8
  %2 = getelementptr inbounds nuw %struct.tm, ptr %i.d, i32 0, i32 1
  %i.e = load i32, ptr %2, align 4
  %i.f = load ptr, ptr %i.a, align 8
  %3 = getelementptr inbounds nuw %struct.tm, ptr %i.f, i32 0, i32 0
  %i.g = load i32, ptr %3, align 8
  %i.h = call ptr (ptr, ...) @format(ptr noundef @.str.66, i32 noundef %i.c, i32 noundef %i.e, i32 noundef %i.g)
  ret ptr %i.h
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local ptr @preprocess(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 7 uses
  %i.b = alloca ptr, align 8                      ; 6 uses
  store ptr %0, ptr %i.a, align 8
  %i.c = load ptr, ptr %i.a, align 8
  %i.d = call ptr @preprocess2(ptr noundef %i.c)
  store ptr %i.d, ptr %i.a, align 8
  %i.e = load ptr, ptr @cond_incl, align 8
  %i.f = icmp ne ptr %i.e, null
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = load ptr, ptr @cond_incl, align 8
  %1 = getelementptr inbounds nuw %struct.CondIncl, ptr %i.g, i32 0, i32 2
  %i.h = load ptr, ptr %1, align 8
  call void (ptr, ptr, ...) @error_tok(ptr noundef %i.h, ptr noundef @.str.62) #14
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.i = load ptr, ptr %i.a, align 8
  call void @convert_pp_tokens(ptr noundef %i.i)
  %i.j = load ptr, ptr %i.a, align 8
  call void @join_adjacent_string_literals(ptr noundef %i.j)
  %i.k = load ptr, ptr %i.a, align 8
  store ptr %i.k, ptr %i.b, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.f, %bb.c
  %i.l = load ptr, ptr %i.b, align 8
  %i.m = icmp ne ptr %i.l, null
  br i1 %i.m, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.n = load ptr, ptr %i.b, align 8
  %2 = getelementptr inbounds nuw %struct.Token, ptr %i.n, i32 0, i32 11
  %i.o = load i32, ptr %2, align 4
  %i.p = load ptr, ptr %i.b, align 8
  %3 = getelementptr inbounds nuw %struct.Token, ptr %i.p, i32 0, i32 10 ; 2 uses
  %i.q = load i32, ptr %3, align 16
  %i.r = add nsw i32 %i.q, %i.o
  store i32 %i.r, ptr %3, align 16
  br label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.s = load ptr, ptr %i.b, align 8
  %4 = getelementptr inbounds nuw %struct.Token, ptr %i.s, i32 0, i32 1
  %i.t = load ptr, ptr %4, align 8
  store ptr %i.t, ptr %i.b, align 8
  br label %bb.d, !llvm.loop !12

bb.g:                                             ; preds = %bb.d
  %i.u = load ptr, ptr %i.a, align 8
  ret ptr %i.u
}

; Function Attrs: noinline nounwind optnone uwtable
define internal ptr @preprocess2(ptr noundef %0) unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 91 uses
  %1 = alloca %struct.Token, align 16             ; 3 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %i.c = alloca ptr, align 8                      ; 9 uses
  %i.d = alloca i8, align 1                       ; 2 uses
  %i.e = alloca ptr, align 8                      ; 5 uses
  %i.f = alloca ptr, align 8                      ; 3 uses
  %i.g = alloca ptr, align 8                      ; 3 uses
  %i.h = alloca i8, align 1
  %i.i = alloca ptr, align 8                      ; 3 uses
  %i.j = alloca ptr, align 8                      ; 3 uses
  %i.k = alloca i64, align 8                      ; 3 uses
  %i.l = alloca i8, align 1                       ; 3 uses
  %i.m = alloca i8, align 1                       ; 3 uses
  store ptr %0, ptr %i.a, align 8
  call void @llvm.memset.p0.i64(ptr align 16 %1, i8 0, i64 128, i1 false)
  store ptr %1, ptr %i.b, align 8
  br label %bb.b

bb.b:                                             ; preds = %bb.bw, %bb.bs, %bb.bn, %bb.bk, %bb.bi, %bb.bg, %bb.bc, %bb.av, %bb.am, %bb.ai, %bb.ae, %bb.aa, %bb.w, %bb.u, %bb.p, %bb.k, %bb.f, %bb.d, %bb.a
  %i.n = load ptr, ptr %i.a, align 8
  %2 = getelementptr inbounds nuw %struct.Token, ptr %i.n, i32 0, i32 0
  %i.o = load i32, ptr %2, align 16
  %i.p = icmp ne i32 %i.o, 6
  br i1 %i.p, label %bb.c, label %bb.by

bb.c:                                             ; preds = %bb.b
  %i.q = load ptr, ptr %i.a, align 8
  %i.r = call zeroext i1 @expand_macro(ptr noundef %i.a, ptr noundef %i.q)
  br i1 %i.r, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  br label %bb.b, !llvm.loop !13

bb.e:                                             ; preds = %bb.c
  %i.s = load ptr, ptr %i.a, align 8
  %i.t = call zeroext i1 @is_hash(ptr noundef %i.s)
  br i1 %i.t, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.u = load ptr, ptr %i.a, align 8
  %3 = getelementptr inbounds nuw %struct.Token, ptr %i.u, i32 0, i32 8
  %i.v = load ptr, ptr %3, align 16
  %4 = getelementptr inbounds nuw %struct.File, ptr %i.v, i32 0, i32 4
  %i.w = load i32, ptr %4, align 8
  %i.x = load ptr, ptr %i.a, align 8
  %5 = getelementptr inbounds nuw %struct.Token, ptr %i.x, i32 0, i32 11
  store i32 %i.w, ptr %5, align 4
  %i.y = load ptr, ptr %i.a, align 8
  %6 = getelementptr inbounds nuw %struct.Token, ptr %i.y, i32 0, i32 8
  %i.z = load ptr, ptr %6, align 16
  %7 = getelementptr inbounds nuw %struct.File, ptr %i.z, i32 0, i32 3
  %i.aa = load ptr, ptr %7, align 8
  %i.ab = load ptr, ptr %i.a, align 8
  %8 = getelementptr inbounds nuw %struct.Token, ptr %i.ab, i32 0, i32 9
  store ptr %i.aa, ptr %8, align 8
  %i.ac = load ptr, ptr %i.a, align 8             ; 2 uses
  %i.ad = load ptr, ptr %i.b, align 8
  %9 = getelementptr inbounds nuw %struct.Token, ptr %i.ad, i32 0, i32 1
  store ptr %i.ac, ptr %9, align 8
  store ptr %i.ac, ptr %i.b, align 8
  %i.ae = load ptr, ptr %i.a, align 8
  %10 = getelementptr inbounds nuw %struct.Token, ptr %i.ae, i32 0, i32 1
  %i.af = load ptr, ptr %10, align 8
  store ptr %i.af, ptr %i.a, align 8
  br label %bb.b, !llvm.loop !13

bb.g:                                             ; preds = %bb.e
  %i.ag = load ptr, ptr %i.a, align 8
  store ptr %i.ag, ptr %i.c, align 8
  %i.ah = load ptr, ptr %i.a, align 8
  %11 = getelementptr inbounds nuw %struct.Token, ptr %i.ah, i32 0, i32 1
  %i.ai = load ptr, ptr %11, align 8
  store ptr %i.ai, ptr %i.a, align 8
  %i.aj = load ptr, ptr %i.a, align 8
  %i.ak = call zeroext i1 @equal(ptr noundef %i.aj, ptr noundef @.str.67)
  br i1 %i.ak, label %bb.h, label %bb.q

bb.h:                                             ; preds = %bb.g
  %i.al = load ptr, ptr %i.a, align 8
  %12 = getelementptr inbounds nuw %struct.Token, ptr %i.al, i32 0, i32 1
  %i.am = load ptr, ptr %12, align 8
  %i.an = call ptr @read_include_filename(ptr noundef %i.a, ptr noundef %i.am, ptr noundef %i.d)
  store ptr %i.an, ptr %i.e, align 8
  %i.ao = load ptr, ptr %i.e, align 8
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 0
  %i.aq = load i8, ptr %i.ap, align 1
  %i.ar = sext i8 %i.aq to i32
  %i.as = icmp ne i32 %i.ar, 47
  br i1 %i.as, label %bb.i, label %bb.m

bb.i:                                             ; preds = %bb.h
  %i.at = load i8, ptr %i.d, align 1
  %i.au = icmp ne i8 %i.at, 0
  br i1 %i.au, label %bb.j, label %bb.m

bb.j:                                             ; preds = %bb.i
  %i.av = load ptr, ptr %i.c, align 8
  %13 = getelementptr inbounds nuw %struct.Token, ptr %i.av, i32 0, i32 8
  %i.aw = load ptr, ptr %13, align 16
  %14 = getelementptr inbounds nuw %struct.File, ptr %i.aw, i32 0, i32 0
  %i.ax = load ptr, ptr %14, align 8
  %i.ay = call noalias ptr @strdup(ptr noundef %i.ax) #13
  %i.az = call ptr @dirname(ptr noundef %i.ay) #13
  %i.ba = load ptr, ptr %i.e, align 8
  %i.bb = call ptr (ptr, ...) @format(ptr noundef @.str, ptr noundef %i.az, ptr noundef %i.ba)
  store ptr %i.bb, ptr %i.f, align 8
  %i.bc = load ptr, ptr %i.f, align 8
  %i.bd = call zeroext i1 @file_exists(ptr noundef %i.bc)
  br i1 %i.bd, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.be = load ptr, ptr %i.a, align 8
  %i.bf = load ptr, ptr %i.f, align 8
  %i.bg = load ptr, ptr %i.c, align 8
  %15 = getelementptr inbounds nuw %struct.Token, ptr %i.bg, i32 0, i32 1
  %i.bh = load ptr, ptr %15, align 8
  %16 = getelementptr inbounds nuw %struct.Token, ptr %i.bh, i32 0, i32 1
  %i.bi = load ptr, ptr %16, align 8
  %i.bj = call ptr @include_file(ptr noundef %i.be, ptr noundef %i.bf, ptr noundef %i.bi)
  store ptr %i.bj, ptr %i.a, align 8
  br label %bb.b, !llvm.loop !13

bb.l:                                             ; preds = %bb.j
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.i, %bb.h
  %i.bk = load ptr, ptr %i.e, align 8
  %i.bl = call ptr @search_include_paths(ptr noundef %i.bk)
  store ptr %i.bl, ptr %i.g, align 8
  %i.bm = load ptr, ptr %i.a, align 8
  %i.bn = load ptr, ptr %i.g, align 8
  %i.bo = icmp ne ptr %i.bn, null
  br i1 %i.bo, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.bp = load ptr, ptr %i.g, align 8
  br label %bb.p

bb.o:                                             ; preds = %bb.m
  %i.bq = load ptr, ptr %i.e, align 8
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.br = phi ptr [ %i.bp, %bb.n ], [ %i.bq, %bb.o ]
  %i.bs = load ptr, ptr %i.c, align 8
  %17 = getelementptr inbounds nuw %struct.Token, ptr %i.bs, i32 0, i32 1
  %i.bt = load ptr, ptr %17, align 8
  %18 = getelementptr inbounds nuw %struct.Token, ptr %i.bt, i32 0, i32 1
  %i.bu = load ptr, ptr %18, align 8
  %i.bv = call ptr @include_file(ptr noundef %i.bm, ptr noundef %i.br, ptr noundef %i.bu)
  store ptr %i.bv, ptr %i.a, align 8
  br label %bb.b, !llvm.loop !13

bb.q:                                             ; preds = %bb.g
  %i.bw = load ptr, ptr %i.a, align 8
  %i.bx = call zeroext i1 @equal(ptr noundef %i.bw, ptr noundef @.str.68)
  br i1 %i.bx, label %bb.r, label %bb.v

bb.r:                                             ; preds = %bb.q
  %i.by = load ptr, ptr %i.a, align 8
  %19 = getelementptr inbounds nuw %struct.Token, ptr %i.by, i32 0, i32 1
  %i.bz = load ptr, ptr %19, align 8
  %i.ca = call ptr @read_include_filename(ptr noundef %i.a, ptr noundef %i.bz, ptr noundef %i.h)
  store ptr %i.ca, ptr %i.i, align 8
  %i.cb = load ptr, ptr %i.i, align 8
  %i.cc = call ptr @search_include_next(ptr noundef %i.cb)
  store ptr %i.cc, ptr %i.j, align 8
  %i.cd = load ptr, ptr %i.a, align 8
  %i.ce = load ptr, ptr %i.j, align 8
  %i.cf = icmp ne ptr %i.ce, null
  br i1 %i.cf, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.cg = load ptr, ptr %i.j, align 8
  br label %bb.u

bb.t:                                             ; preds = %bb.r
  %i.ch = load ptr, ptr %i.i, align 8
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %i.ci = phi ptr [ %i.cg, %bb.s ], [ %i.ch, %bb.t ]
  %i.cj = load ptr, ptr %i.c, align 8
  %20 = getelementptr inbounds nuw %struct.Token, ptr %i.cj, i32 0, i32 1
  %i.ck = load ptr, ptr %20, align 8
  %21 = getelementptr inbounds nuw %struct.Token, ptr %i.ck, i32 0, i32 1
  %i.cl = load ptr, ptr %21, align 8
  %i.cm = call ptr @include_file(ptr noundef %i.cd, ptr noundef %i.ci, ptr noundef %i.cl)
  store ptr %i.cm, ptr %i.a, align 8
  br label %bb.b, !llvm.loop !13

bb.v:                                             ; preds = %bb.q
  %i.cn = load ptr, ptr %i.a, align 8
  %i.co = call zeroext i1 @equal(ptr noundef %i.cn, ptr noundef @.str.69)
  br i1 %i.co, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.cp = load ptr, ptr %i.a, align 8
  %22 = getelementptr inbounds nuw %struct.Token, ptr %i.cp, i32 0, i32 1
  %i.cq = load ptr, ptr %22, align 8
  call void @read_macro_definition(ptr noundef %i.a, ptr noundef %i.cq)
  br label %bb.b, !llvm.loop !13

bb.x:                                             ; preds = %bb.v
  %i.cr = load ptr, ptr %i.a, align 8
  %i.cs = call zeroext i1 @equal(ptr noundef %i.cr, ptr noundef @.str.70)
  br i1 %i.cs, label %bb.y, label %bb.ab

bb.y:                                             ; preds = %bb.x
  %i.ct = load ptr, ptr %i.a, align 8
  %23 = getelementptr inbounds nuw %struct.Token, ptr %i.ct, i32 0, i32 1
  %i.cu = load ptr, ptr %23, align 8
  store ptr %i.cu, ptr %i.a, align 8
  %i.cv = load ptr, ptr %i.a, align 8
  %24 = getelementptr inbounds nuw %struct.Token, ptr %i.cv, i32 0, i32 0
  %i.cw = load i32, ptr %24, align 16
  %i.cx = icmp ne i32 %i.cw, 0
  br i1 %i.cx, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.cy = load ptr, ptr %i.a, align 8
  call void (ptr, ptr, ...) @error_tok(ptr noundef %i.cy, ptr noundef @.str.71) #14
  unreachable

bb.aa:                                            ; preds = %bb.y
  %i.cz = load ptr, ptr %i.a, align 8
  %25 = getelementptr inbounds nuw %struct.Token, ptr %i.cz, i32 0, i32 4
  %i.da = load ptr, ptr %25, align 16
  %i.db = load ptr, ptr %i.a, align 8
  %26 = getelementptr inbounds nuw %struct.Token, ptr %i.db, i32 0, i32 5
  %i.dc = load i32, ptr %26, align 8
  %i.dd = sext i32 %i.dc to i64
  %i.de = call noalias ptr @strndup(ptr noundef %i.da, i64 noundef %i.dd) #13
  call void @undef_macro(ptr noundef %i.de)
  %i.df = load ptr, ptr %i.a, align 8
  %27 = getelementptr inbounds nuw %struct.Token, ptr %i.df, i32 0, i32 1
  %i.dg = load ptr, ptr %27, align 8
  %i.dh = call ptr @skip_line(ptr noundef %i.dg)
  store ptr %i.dh, ptr %i.a, align 8
  br label %bb.b, !llvm.loop !13

bb.ab:                                            ; preds = %bb.x
  %i.di = load ptr, ptr %i.a, align 8
  %i.dj = call zeroext i1 @equal(ptr noundef %i.di, ptr noundef @.str.72)
  br i1 %i.dj, label %bb.ac, label %bb.af

bb.ac:                                            ; preds = %bb.ab
  %i.dk = load ptr, ptr %i.a, align 8
  %i.dl = call i64 @eval_const_expr(ptr noundef %i.a, ptr noundef %i.dk)
  store i64 %i.dl, ptr %i.k, align 8
  %i.dm = load ptr, ptr %i.c, align 8
  %i.dn = load i64, ptr %i.k, align 8
  %i.do = icmp ne i64 %i.dn, 0
  %i.dp = call ptr @push_cond_incl(ptr noundef %i.dm, i1 noundef zeroext %i.do) ; 0 uses
  %i.dq = load i64, ptr %i.k, align 8
  %i.dr = icmp ne i64 %i.dq, 0
  br i1 %i.dr, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.ds = load ptr, ptr %i.a, align 8
  %i.dt = call ptr @skip_cond_incl(ptr noundef %i.ds)
  store ptr %i.dt, ptr %i.a, align 8
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  br label %bb.b, !llvm.loop !13

bb.af:                                            ; preds = %bb.ab
  %i.du = load ptr, ptr %i.a, align 8
  %i.dv = call zeroext i1 @equal(ptr noundef %i.du, ptr noundef @.str.73)
  br i1 %i.dv, label %bb.ag, label %bb.aj

bb.ag:                                            ; preds = %bb.af
  %i.dw = load ptr, ptr %i.a, align 8
  %28 = getelementptr inbounds nuw %struct.Token, ptr %i.dw, i32 0, i32 1
  %i.dx = load ptr, ptr %28, align 8
  %i.dy = call ptr @find_macro(ptr noundef %i.dx)
  %i.dz = icmp ne ptr %i.dy, null
  %i.ea = zext i1 %i.dz to i8
  store i8 %i.ea, ptr %i.l, align 1
  %i.eb = load ptr, ptr %i.a, align 8
  %i.ec = load i8, ptr %i.l, align 1
  %i.ed = icmp ne i8 %i.ec, 0
  %i.ee = call ptr @push_cond_incl(ptr noundef %i.eb, i1 noundef zeroext %i.ed) ; 0 uses
  %i.ef = load ptr, ptr %i.a, align 8
  %29 = getelementptr inbounds nuw %struct.Token, ptr %i.ef, i32 0, i32 1
  %i.eg = load ptr, ptr %29, align 8
  %30 = getelementptr inbounds nuw %struct.Token, ptr %i.eg, i32 0, i32 1
  %i.eh = load ptr, ptr %30, align 8
  %i.ei = call ptr @skip_line(ptr noundef %i.eh)
  store ptr %i.ei, ptr %i.a, align 8
  %i.ej = load i8, ptr %i.l, align 1
  %i.ek = icmp ne i8 %i.ej, 0
  br i1 %i.ek, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.el = load ptr, ptr %i.a, align 8
  %i.em = call ptr @skip_cond_incl(ptr noundef %i.el)
  store ptr %i.em, ptr %i.a, align 8
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag
  br label %bb.b, !llvm.loop !13

bb.aj:                                            ; preds = %bb.af
  %i.en = load ptr, ptr %i.a, align 8
  %i.eo = call zeroext i1 @equal(ptr noundef %i.en, ptr noundef @.str.74)
  br i1 %i.eo, label %bb.ak, label %bb.an

bb.ak:                                            ; preds = %bb.aj
  %i.ep = load ptr, ptr %i.a, align 8
  %31 = getelementptr inbounds nuw %struct.Token, ptr %i.ep, i32 0, i32 1
  %i.eq = load ptr, ptr %31, align 8
  %i.er = call ptr @find_macro(ptr noundef %i.eq)
  %i.es = icmp ne ptr %i.er, null
  %i.et = zext i1 %i.es to i8
  store i8 %i.et, ptr %i.m, align 1
  %i.eu = load ptr, ptr %i.a, align 8
  %i.ev = load i8, ptr %i.m, align 1
  %i.ew = icmp ne i8 %i.ev, 0
  %i.ex = xor i1 %i.ew, true
  %i.ey = call ptr @push_cond_incl(ptr noundef %i.eu, i1 noundef zeroext %i.ex) ; 0 uses
  %i.ez = load ptr, ptr %i.a, align 8
  %32 = getelementptr inbounds nuw %struct.Token, ptr %i.ez, i32 0, i32 1
  %i.fa = load ptr, ptr %32, align 8
  %33 = getelementptr inbounds nuw %struct.Token, ptr %i.fa, i32 0, i32 1
  %i.fb = load ptr, ptr %33, align 8
  %i.fc = call ptr @skip_line(ptr noundef %i.fb)
  store ptr %i.fc, ptr %i.a, align 8
  %i.fd = load i8, ptr %i.m, align 1
  %i.fe = icmp ne i8 %i.fd, 0
  br i1 %i.fe, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
  %i.ff = load ptr, ptr %i.a, align 8
  %i.fg = call ptr @skip_cond_incl(ptr noundef %i.ff)
  store ptr %i.fg, ptr %i.a, align 8
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.ak
  br label %bb.b, !llvm.loop !13

bb.an:                                            ; preds = %bb.aj
  %i.fh = load ptr, ptr %i.a, align 8
  %i.fi = call zeroext i1 @equal(ptr noundef %i.fh, ptr noundef @.str.75)
  br i1 %i.fi, label %bb.ao, label %bb.aw

bb.ao:                                            ; preds = %bb.an
  %i.fj = load ptr, ptr @cond_incl, align 8
  %i.fk = icmp ne ptr %i.fj, null
  br i1 %i.fk, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %bb.ao
  %i.fl = load ptr, ptr @cond_incl, align 8
  %34 = getelementptr inbounds nuw %struct.CondIncl, ptr %i.fl, i32 0, i32 1
  %i.fm = load i32, ptr %34, align 8
  %i.fn = icmp eq i32 %i.fm, 2
  br i1 %i.fn, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %bb.ap, %bb.ao
  %i.fo = load ptr, ptr %i.c, align 8
  call void (ptr, ptr, ...) @error_tok(ptr noundef %i.fo, ptr noundef @.str.76) #14
  unreachable

bb.ar:                                            ; preds = %bb.ap
  %i.fp = load ptr, ptr @cond_incl, align 8
  %35 = getelementptr inbounds nuw %struct.CondIncl, ptr %i.fp, i32 0, i32 1
  store i32 1, ptr %35, align 8
  %i.fq = load ptr, ptr @cond_incl, align 8
  %36 = getelementptr inbounds nuw %struct.CondIncl, ptr %i.fq, i32 0, i32 3
  %i.fr = load i8, ptr %36, align 8
  %i.fs = icmp ne i8 %i.fr, 0
  br i1 %i.fs, label %bb.au, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.ft = load ptr, ptr %i.a, align 8
  %i.fu = call i64 @eval_const_expr(ptr noundef %i.a, ptr noundef %i.ft)
  %i.fv = icmp ne i64 %i.fu, 0
  br i1 %i.fv, label %bb.at, label %bb.au

bb.at:                                            ; preds = %bb.as
  %i.fw = load ptr, ptr @cond_incl, align 8
  %37 = getelementptr inbounds nuw %struct.CondIncl, ptr %i.fw, i32 0, i32 3
  store i8 1, ptr %37, align 8
  br label %bb.av

bb.au:                                            ; preds = %bb.as, %bb.ar
  %i.fx = load ptr, ptr %i.a, align 8
  %i.fy = call ptr @skip_cond_incl(ptr noundef %i.fx)
  store ptr %i.fy, ptr %i.a, align 8
  br label %bb.av

bb.av:                                            ; preds = %bb.au, %bb.at
  br label %bb.b, !llvm.loop !13

bb.aw:                                            ; preds = %bb.an
  %i.fz = load ptr, ptr %i.a, align 8
  %i.ga = call zeroext i1 @equal(ptr noundef %i.fz, ptr noundef @.str.77)
  br i1 %i.ga, label %bb.ax, label %bb.bd

bb.ax:                                            ; preds = %bb.aw
  %i.gb = load ptr, ptr @cond_incl, align 8
  %i.gc = icmp ne ptr %i.gb, null
  br i1 %i.gc, label %bb.ay, label %bb.az

bb.ay:                                            ; preds = %bb.ax
  %i.gd = load ptr, ptr @cond_incl, align 8
  %38 = getelementptr inbounds nuw %struct.CondIncl, ptr %i.gd, i32 0, i32 1
  %i.ge = load i32, ptr %38, align 8
  %i.gf = icmp eq i32 %i.ge, 2
  br i1 %i.gf, label %bb.az, label %bb.ba

bb.az:                                            ; preds = %bb.ay, %bb.ax
  %i.gg = load ptr, ptr %i.c, align 8
  call void (ptr, ptr, ...) @error_tok(ptr noundef %i.gg, ptr noundef @.str.78) #14
  unreachable

bb.ba:                                            ; preds = %bb.ay
  %i.gh = load ptr, ptr @cond_incl, align 8
  %39 = getelementptr inbounds nuw %struct.CondIncl, ptr %i.gh, i32 0, i32 1
  store i32 2, ptr %39, align 8
  %i.gi = load ptr, ptr %i.a, align 8
  %40 = getelementptr inbounds nuw %struct.Token, ptr %i.gi, i32 0, i32 1
  %i.gj = load ptr, ptr %40, align 8
  %i.gk = call ptr @skip_line(ptr noundef %i.gj)
  store ptr %i.gk, ptr %i.a, align 8
  %i.gl = load ptr, ptr @cond_incl, align 8
  %41 = getelementptr inbounds nuw %struct.CondIncl, ptr %i.gl, i32 0, i32 3
  %i.gm = load i8, ptr %41, align 8
  %i.gn = icmp ne i8 %i.gm, 0
  br i1 %i.gn, label %bb.bb, label %bb.bc

bb.bb:                                            ; preds = %bb.ba
  %i.go = load ptr, ptr %i.a, align 8
  %i.gp = call ptr @skip_cond_incl(ptr noundef %i.go)
  store ptr %i.gp, ptr %i.a, align 8
  br label %bb.bc

bb.bc:                                            ; preds = %bb.bb, %bb.ba
  br label %bb.b, !llvm.loop !13

bb.bd:                                            ; preds = %bb.aw
  %i.gq = load ptr, ptr %i.a, align 8
  %i.gr = call zeroext i1 @equal(ptr noundef %i.gq, ptr noundef @.str.79)
  br i1 %i.gr, label %bb.be, label %bb.bh

bb.be:                                            ; preds = %bb.bd
  %i.gs = load ptr, ptr @cond_incl, align 8
  %i.gt = icmp ne ptr %i.gs, null
  br i1 %i.gt, label %bb.bg, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.gu = load ptr, ptr %i.c, align 8
  call void (ptr, ptr, ...) @error_tok(ptr noundef %i.gu, ptr noundef @.str.80) #14
  unreachable

bb.bg:                                            ; preds = %bb.be
  %i.gv = load ptr, ptr @cond_incl, align 8
  %42 = getelementptr inbounds nuw %struct.CondIncl, ptr %i.gv, i32 0, i32 0
  %i.gw = load ptr, ptr %42, align 8
  store ptr %i.gw, ptr @cond_incl, align 8
  %i.gx = load ptr, ptr %i.a, align 8
  %43 = getelementptr inbounds nuw %struct.Token, ptr %i.gx, i32 0, i32 1
  %i.gy = load ptr, ptr %43, align 8
  %i.gz = call ptr @skip_line(ptr noundef %i.gy)
  store ptr %i.gz, ptr %i.a, align 8
  br label %bb.b, !llvm.loop !13

bb.bh:                                            ; preds = %bb.bd
  %i.ha = load ptr, ptr %i.a, align 8
  %i.hb = call zeroext i1 @equal(ptr noundef %i.ha, ptr noundef @.str.81)
  br i1 %i.hb, label %bb.bi, label %bb.bj

bb.bi:                                            ; preds = %bb.bh
  %i.hc = load ptr, ptr %i.a, align 8
  %44 = getelementptr inbounds nuw %struct.Token, ptr %i.hc, i32 0, i32 1
  %i.hd = load ptr, ptr %44, align 8
  call void @read_line_marker(ptr noundef %i.a, ptr noundef %i.hd)
  br label %bb.b, !llvm.loop !13

bb.bj:                                            ; preds = %bb.bh
  %i.he = load ptr, ptr %i.a, align 8
  %45 = getelementptr inbounds nuw %struct.Token, ptr %i.he, i32 0, i32 0
  %i.hf = load i32, ptr %45, align 16
  %i.hg = icmp eq i32 %i.hf, 5
  br i1 %i.hg, label %bb.bk, label %bb.bl

bb.bk:                                            ; preds = %bb.bj
  %i.hh = load ptr, ptr %i.a, align 8
  call void @read_line_marker(ptr noundef %i.a, ptr noundef %i.hh)
  br label %bb.b, !llvm.loop !13

bb.bl:                                            ; preds = %bb.bj
  %i.hi = load ptr, ptr %i.a, align 8
  %i.hj = call zeroext i1 @equal(ptr noundef %i.hi, ptr noundef @.str.82)
  br i1 %i.hj, label %bb.bm, label %bb.bo

bb.bm:                                            ; preds = %bb.bl
  %i.hk = load ptr, ptr %i.a, align 8
  %46 = getelementptr inbounds nuw %struct.Token, ptr %i.hk, i32 0, i32 1
  %i.hl = load ptr, ptr %46, align 8
  %i.hm = call zeroext i1 @equal(ptr noundef %i.hl, ptr noundef @.str.83)
  br i1 %i.hm, label %bb.bn, label %bb.bo

bb.bn:                                            ; preds = %bb.bm
  %i.hn = load ptr, ptr %i.a, align 8
  %47 = getelementptr inbounds nuw %struct.Token, ptr %i.hn, i32 0, i32 8
  %i.ho = load ptr, ptr %47, align 16
  %48 = getelementptr inbounds nuw %struct.File, ptr %i.ho, i32 0, i32 0
  %i.hp = load ptr, ptr %48, align 8
  call void @hashmap_put(ptr noundef @pragma_once, ptr noundef %i.hp, ptr noundef inttoptr (i64 1 to ptr))
  %i.hq = load ptr, ptr %i.a, align 8
  %49 = getelementptr inbounds nuw %struct.Token, ptr %i.hq, i32 0, i32 1
  %i.hr = load ptr, ptr %49, align 8
  %50 = getelementptr inbounds nuw %struct.Token, ptr %i.hr, i32 0, i32 1
  %i.hs = load ptr, ptr %50, align 8
  %i.ht = call ptr @skip_line(ptr noundef %i.hs)
  store ptr %i.ht, ptr %i.a, align 8
  br label %bb.b, !llvm.loop !13

bb.bo:                                            ; preds = %bb.bm, %bb.bl
  %i.hu = load ptr, ptr %i.a, align 8
  %i.hv = call zeroext i1 @equal(ptr noundef %i.hu, ptr noundef @.str.82)
  br i1 %i.hv, label %bb.bp, label %bb.bt

bb.bp:                                            ; preds = %bb.bo
  br label %bb.bq

bb.bq:                                            ; preds = %bb.br, %bb.bp
  %i.hw = load ptr, ptr %i.a, align 8
  %51 = getelementptr inbounds nuw %struct.Token, ptr %i.hw, i32 0, i32 1
  %i.hx = load ptr, ptr %51, align 8
  store ptr %i.hx, ptr %i.a, align 8
  br label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.hy = load ptr, ptr %i.a, align 8
  %52 = getelementptr inbounds nuw %struct.Token, ptr %i.hy, i32 0, i32 12
  %i.hz = load i8, ptr %52, align 8
  %i.ia = icmp ne i8 %i.hz, 0
  %i.ib = xor i1 %i.ia, true
  br i1 %i.ib, label %bb.bq, label %bb.bs, !llvm.loop !14

bb.bs:                                            ; preds = %bb.br
  br label %bb.b, !llvm.loop !13

bb.bt:                                            ; preds = %bb.bo
  %i.ic = load ptr, ptr %i.a, align 8
  %i.id = call zeroext i1 @equal(ptr noundef %i.ic, ptr noundef @.str.84)
  br i1 %i.id, label %bb.bu, label %bb.bv

bb.bu:                                            ; preds = %bb.bt
  %i.ie = load ptr, ptr %i.a, align 8
  call void (ptr, ptr, ...) @error_tok(ptr noundef %i.ie, ptr noundef @.str.84) #14
  unreachable

bb.bv:                                            ; preds = %bb.bt
  %i.if = load ptr, ptr %i.a, align 8
  %53 = getelementptr inbounds nuw %struct.Token, ptr %i.if, i32 0, i32 12
  %i.ig = load i8, ptr %53, align 8
  %i.ih = icmp ne i8 %i.ig, 0
  br i1 %i.ih, label %bb.bw, label %bb.bx

bb.bw:                                            ; preds = %bb.bv
  br label %bb.b, !llvm.loop !13

bb.bx:                                            ; preds = %bb.bv
  %i.ii = load ptr, ptr %i.a, align 8
  call void (ptr, ptr, ...) @error_tok(ptr noundef %i.ii, ptr noundef @.str.85) #14
  unreachable

bb.by:                                            ; preds = %bb.b
  %i.ij = load ptr, ptr %i.a, align 8
  %i.ik = load ptr, ptr %i.b, align 8
  %54 = getelementptr inbounds nuw %struct.Token, ptr %i.ik, i32 0, i32 1
  store ptr %i.ij, ptr %54, align 8
  %55 = getelementptr inbounds nuw %struct.Token, ptr %1, i32 0, i32 1
  %i.il = load ptr, ptr %55, align 8
  ret ptr %i.il
}

; Function Attrs: noreturn
declare void @error_tok(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

declare void @convert_pp_tokens(ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optnone uwtable
define internal void @join_adjacent_string_literals(ptr noundef %0) unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 3 uses
  %i.b = alloca ptr, align 8                      ; 13 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca ptr, align 8                      ; 4 uses
  %i.e = alloca ptr, align 8                      ; 7 uses
  %i.f = alloca i32, align 4                      ; 4 uses
  %i.g = alloca ptr, align 8                      ; 7 uses
  %i.h = alloca ptr, align 8                      ; 18 uses
  %i.i = alloca ptr, align 8                      ; 8 uses
  %i.j = alloca i32, align 4                      ; 5 uses
  %i.k = alloca ptr, align 8                      ; 5 uses
  %i.l = alloca ptr, align 8                      ; 3 uses
  %i.m = alloca i32, align 4                      ; 4 uses
  %i.n = alloca ptr, align 8                      ; 8 uses
  store ptr %0, ptr %i.a, align 8
  %i.o = load ptr, ptr %i.a, align 8
  store ptr %i.o, ptr %i.b, align 8
  br label %bb.b

bb.b:                                             ; preds = %bb.aa, %bb.e, %bb.a
  %i.p = load ptr, ptr %i.b, align 8
  %1 = getelementptr inbounds nuw %struct.Token, ptr %i.p, i32 0, i32 0
  %i.q = load i32, ptr %1, align 16
  %i.r = icmp ne i32 %i.q, 6
  br i1 %i.r, label %bb.c, label %bb.ab

bb.c:                                             ; preds = %bb.b
  %i.s = load ptr, ptr %i.b, align 8
  %2 = getelementptr inbounds nuw %struct.Token, ptr %i.s, i32 0, i32 0
  %i.t = load i32, ptr %2, align 16
  %i.u = icmp ne i32 %i.t, 3
  br i1 %i.u, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.v = load ptr, ptr %i.b, align 8
  %3 = getelementptr inbounds nuw %struct.Token, ptr %i.v, i32 0, i32 1
  %i.w = load ptr, ptr %3, align 8
  %4 = getelementptr inbounds nuw %struct.Token, ptr %i.w, i32 0, i32 0
  %i.x = load i32, ptr %4, align 16
  %i.y = icmp ne i32 %i.x, 3
  br i1 %i.y, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.z = load ptr, ptr %i.b, align 8
  %5 = getelementptr inbounds nuw %struct.Token, ptr %i.z, i32 0, i32 1
  %i.aa = load ptr, ptr %5, align 8
  store ptr %i.aa, ptr %i.b, align 8
  br label %bb.b, !llvm.loop !15

bb.f:                                             ; preds = %bb.d
  %i.ab = load ptr, ptr %i.b, align 8
  %i.ac = call i32 @getStringKind(ptr noundef %i.ab)
  store i32 %i.ac, ptr %i.c, align 4
  %i.ad = load ptr, ptr %i.b, align 8
  %6 = getelementptr inbounds nuw %struct.Token, ptr %i.ad, i32 0, i32 6
  %i.ae = load ptr, ptr %6, align 16
  %7 = getelementptr inbounds nuw %struct.Type, ptr %i.ae, i32 0, i32 6
  %i.af = load ptr, ptr %7, align 8
  store ptr %i.af, ptr %i.d, align 8
  %i.ag = load ptr, ptr %i.b, align 8
  %8 = getelementptr inbounds nuw %struct.Token, ptr %i.ag, i32 0, i32 1
  %i.ah = load ptr, ptr %8, align 8
  store ptr %i.ah, ptr %i.e, align 8
  br label %bb.g

bb.g:                                             ; preds = %bb.o, %bb.f
  %i.ai = load ptr, ptr %i.e, align 8
  %9 = getelementptr inbounds nuw %struct.Token, ptr %i.ai, i32 0, i32 0
  %i.aj = load i32, ptr %9, align 16
  %i.ak = icmp eq i32 %i.aj, 3
  br i1 %i.ak, label %bb.h, label %bb.p

bb.h:                                             ; preds = %bb.g
  %i.al = load ptr, ptr %i.e, align 8
  %i.am = call i32 @getStringKind(ptr noundef %i.al)
  store i32 %i.am, ptr %i.f, align 4
  %i.an = load i32, ptr %i.c, align 4
  %i.ao = icmp eq i32 %i.an, 0
  br i1 %i.ao, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ap = load i32, ptr %i.f, align 4
  store i32 %i.ap, ptr %i.c, align 4
  %i.aq = load ptr, ptr %i.e, align 8
  %10 = getelementptr inbounds nuw %struct.Token, ptr %i.aq, i32 0, i32 6
  %i.ar = load ptr, ptr %10, align 16
  %11 = getelementptr inbounds nuw %struct.Type, ptr %i.ar, i32 0, i32 6
  %i.as = load ptr, ptr %11, align 8
  store ptr %i.as, ptr %i.d, align 8
  br label %bb.n

bb.j:                                             ; preds = %bb.h
  %i.at = load i32, ptr %i.f, align 4
  %i.au = icmp ne i32 %i.at, 0
  br i1 %i.au, label %bb.k, label %bb.m

bb.k:                                             ; preds = %bb.j
  %i.av = load i32, ptr %i.c, align 4
  %i.aw = load i32, ptr %i.f, align 4
  %i.ax = icmp ne i32 %i.av, %i.aw
  br i1 %i.ax, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.ay = load ptr, ptr %i.e, align 8
  call void (ptr, ptr, ...) @error_tok(ptr noundef %i.ay, ptr noundef @.str.112) #14
  unreachable

bb.m:                                             ; preds = %bb.k, %bb.j
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.i
  br label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.az = load ptr, ptr %i.e, align 8
  %12 = getelementptr inbounds nuw %struct.Token, ptr %i.az, i32 0, i32 1
  %i.ba = load ptr, ptr %12, align 8
  store ptr %i.ba, ptr %i.e, align 8
  br label %bb.g, !llvm.loop !16

bb.p:                                             ; preds = %bb.g
  %i.bb = load ptr, ptr %i.d, align 8
  %13 = getelementptr inbounds nuw %struct.Type, ptr %i.bb, i32 0, i32 1
  %i.bc = load i32, ptr %13, align 4
  %i.bd = icmp sgt i32 %i.bc, 1
  br i1 %i.bd, label %bb.q, label %bb.x

bb.q:                                             ; preds = %bb.p
  %i.be = load ptr, ptr %i.b, align 8
  store ptr %i.be, ptr %i.g, align 8
  br label %bb.r

bb.r:                                             ; preds = %bb.v, %bb.q
  %i.bf = load ptr, ptr %i.g, align 8
  %14 = getelementptr inbounds nuw %struct.Token, ptr %i.bf, i32 0, i32 0
  %i.bg = load i32, ptr %14, align 16
  %i.bh = icmp eq i32 %i.bg, 3
  br i1 %i.bh, label %bb.s, label %bb.w

bb.s:                                             ; preds = %bb.r
  %i.bi = load ptr, ptr %i.g, align 8
  %15 = getelementptr inbounds nuw %struct.Token, ptr %i.bi, i32 0, i32 6
  %i.bj = load ptr, ptr %15, align 16
  %16 = getelementptr inbounds nuw %struct.Type, ptr %i.bj, i32 0, i32 6
  %i.bk = load ptr, ptr %16, align 8
  %17 = getelementptr inbounds nuw %struct.Type, ptr %i.bk, i32 0, i32 1
  %i.bl = load i32, ptr %17, align 4
  %i.bm = icmp eq i32 %i.bl, 1
  br i1 %i.bm, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.bn = load ptr, ptr %i.g, align 8
  %i.bo = load ptr, ptr %i.g, align 8
  %i.bp = load ptr, ptr %i.d, align 8
  %i.bq = call ptr @tokenize_string_literal(ptr noundef %i.bo, ptr noundef %i.bp)
  call void @llvm.memcpy.p0.p0.i64(ptr align 16 %i.bn, ptr align 16 %i.bq, i64 128, i1 false)
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  br label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.br = load ptr, ptr %i.g, align 8
  %18 = getelementptr inbounds nuw %struct.Token, ptr %i.br, i32 0, i32 1
  %i.bs = load ptr, ptr %18, align 8
  store ptr %i.bs, ptr %i.g, align 8
  br label %bb.r, !llvm.loop !17

bb.w:                                             ; preds = %bb.r
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.p
  br label %bb.y

bb.y:                                             ; preds = %bb.z, %bb.x
  %i.bt = load ptr, ptr %i.b, align 8
  %19 = getelementptr inbounds nuw %struct.Token, ptr %i.bt, i32 0, i32 0
  %i.bu = load i32, ptr %19, align 16
  %i.bv = icmp eq i32 %i.bu, 3
  br i1 %i.bv, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.bw = load ptr, ptr %i.b, align 8
  %20 = getelementptr inbounds nuw %struct.Token, ptr %i.bw, i32 0, i32 1
  %i.bx = load ptr, ptr %20, align 8
  store ptr %i.bx, ptr %i.b, align 8
  br label %bb.y, !llvm.loop !18

bb.aa:                                            ; preds = %bb.y
  br label %bb.b, !llvm.loop !15

bb.ab:                                            ; preds = %bb.b
  %i.by = load ptr, ptr %i.a, align 8
  store ptr %i.by, ptr %i.h, align 8
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ar, %bb.af, %bb.ab
  %i.bz = load ptr, ptr %i.h, align 8
  %21 = getelementptr inbounds nuw %struct.Token, ptr %i.bz, i32 0, i32 0
  %i.ca = load i32, ptr %21, align 16
  %i.cb = icmp ne i32 %i.ca, 6
  br i1 %i.cb, label %bb.ad, label %bb.as

bb.ad:                                            ; preds = %bb.ac
  %i.cc = load ptr, ptr %i.h, align 8
  %22 = getelementptr inbounds nuw %struct.Token, ptr %i.cc, i32 0, i32 0
  %i.cd = load i32, ptr %22, align 16
  %i.ce = icmp ne i32 %i.cd, 3
  br i1 %i.ce, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.cf = load ptr, ptr %i.h, align 8
  %23 = getelementptr inbounds nuw %struct.Token, ptr %i.cf, i32 0, i32 1
  %i.cg = load ptr, ptr %23, align 8
  %24 = getelementptr inbounds nuw %struct.Token, ptr %i.cg, i32 0, i32 0
  %i.ch = load i32, ptr %24, align 16
  %i.ci = icmp ne i32 %i.ch, 3
  br i1 %i.ci, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae, %bb.ad
  %i.cj = load ptr, ptr %i.h, align 8
  %25 = getelementptr inbounds nuw %struct.Token, ptr %i.cj, i32 0, i32 1
  %i.ck = load ptr, ptr %25, align 8
  store ptr %i.ck, ptr %i.h, align 8
  br label %bb.ac, !llvm.loop !19

bb.ag:                                            ; preds = %bb.ae
  %i.cl = load ptr, ptr %i.h, align 8
  %26 = getelementptr inbounds nuw %struct.Token, ptr %i.cl, i32 0, i32 1
  %i.cm = load ptr, ptr %26, align 8
  store ptr %i.cm, ptr %i.i, align 8
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ai, %bb.ag
  %i.cn = load ptr, ptr %i.i, align 8
  %27 = getelementptr inbounds nuw %struct.Token, ptr %i.cn, i32 0, i32 0
  %i.co = load i32, ptr %27, align 16
  %i.cp = icmp eq i32 %i.co, 3
  br i1 %i.cp, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  %i.cq = load ptr, ptr %i.i, align 8
  %28 = getelementptr inbounds nuw %struct.Token, ptr %i.cq, i32 0, i32 1
  %i.cr = load ptr, ptr %28, align 8
  store ptr %i.cr, ptr %i.i, align 8
  br label %bb.ah, !llvm.loop !20

bb.aj:                                            ; preds = %bb.ah
  %i.cs = load ptr, ptr %i.h, align 8
  %29 = getelementptr inbounds nuw %struct.Token, ptr %i.cs, i32 0, i32 6
  %i.ct = load ptr, ptr %29, align 16
  %30 = getelementptr inbounds nuw %struct.Type, ptr %i.ct, i32 0, i32 9
  %i.cu = load i32, ptr %30, align 8
  store i32 %i.cu, ptr %i.j, align 4
  %i.cv = load ptr, ptr %i.h, align 8
  %31 = getelementptr inbounds nuw %struct.Token, ptr %i.cv, i32 0, i32 1
  %i.cw = load ptr, ptr %31, align 8
  store ptr %i.cw, ptr %i.k, align 8
  br label %bb.ak

bb.ak:                                            ; preds = %bb.am, %bb.aj
  %i.cx = load ptr, ptr %i.k, align 8
  %i.cy = load ptr, ptr %i.i, align 8
  %i.cz = icmp ne ptr %i.cx, %i.cy
  br i1 %i.cz, label %bb.al, label %bb.an

bb.al:                                            ; preds = %bb.ak
  %i.da = load i32, ptr %i.j, align 4
  %i.db = load ptr, ptr %i.k, align 8
  %32 = getelementptr inbounds nuw %struct.Token, ptr %i.db, i32 0, i32 6
  %i.dc = load ptr, ptr %32, align 16
  %33 = getelementptr inbounds nuw %struct.Type, ptr %i.dc, i32 0, i32 9
  %i.dd = load i32, ptr %33, align 8
  %i.de = add nsw i32 %i.da, %i.dd
  %i.df = sub nsw i32 %i.de, 1
  store i32 %i.df, ptr %i.j, align 4
  br label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.dg = load ptr, ptr %i.k, align 8
  %34 = getelementptr inbounds nuw %struct.Token, ptr %i.dg, i32 0, i32 1
  %i.dh = load ptr, ptr %34, align 8
  store ptr %i.dh, ptr %i.k, align 8
  br label %bb.ak, !llvm.loop !21

bb.an:                                            ; preds = %bb.ak
  %i.di = load ptr, ptr %i.h, align 8
  %35 = getelementptr inbounds nuw %struct.Token, ptr %i.di, i32 0, i32 6
  %i.dj = load ptr, ptr %35, align 16
  %36 = getelementptr inbounds nuw %struct.Type, ptr %i.dj, i32 0, i32 6
  %i.dk = load ptr, ptr %36, align 8
  %37 = getelementptr inbounds nuw %struct.Type, ptr %i.dk, i32 0, i32 1
  %i.dl = load i32, ptr %37, align 4
  %i.dm = sext i32 %i.dl to i64
  %i.dn = load i32, ptr %i.j, align 4
  %i.do = sext i32 %i.dn to i64
  %i.dp = call noalias ptr @calloc(i64 noundef %i.dm, i64 noundef %i.do) #12
  store ptr %i.dp, ptr %i.l, align 8
  store i32 0, ptr %i.m, align 4
  %i.dq = load ptr, ptr %i.h, align 8
  store ptr %i.dq, ptr %i.n, align 8
  br label %bb.ao

bb.ao:                                            ; preds = %bb.aq, %bb.an
  %i.dr = load ptr, ptr %i.n, align 8
  %i.ds = load ptr, ptr %i.i, align 8
  %i.dt = icmp ne ptr %i.dr, %i.ds
  br i1 %i.dt, label %bb.ap, label %bb.ar

bb.ap:                                            ; preds = %bb.ao
  %i.du = load ptr, ptr %i.l, align 8
  %i.dv = load i32, ptr %i.m, align 4
  %i.dw = sext i32 %i.dv to i64
  %i.dx = getelementptr inbounds i8, ptr %i.du, i64 %i.dw
  %i.dy = load ptr, ptr %i.n, align 8
  %38 = getelementptr inbounds nuw %struct.Token, ptr %i.dy, i32 0, i32 7
  %i.dz = load ptr, ptr %38, align 8
  %i.ea = load ptr, ptr %i.n, align 8
  %39 = getelementptr inbounds nuw %struct.Token, ptr %i.ea, i32 0, i32 6
  %i.eb = load ptr, ptr %39, align 16
  %40 = getelementptr inbounds nuw %struct.Type, ptr %i.eb, i32 0, i32 1
  %i.ec = load i32, ptr %40, align 4
  %i.ed = sext i32 %i.ec to i64
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.dx, ptr align 1 %i.dz, i64 %i.ed, i1 false)
  %i.ee = load i32, ptr %i.m, align 4
  %i.ef = load ptr, ptr %i.n, align 8
  %41 = getelementptr inbounds nuw %struct.Token, ptr %i.ef, i32 0, i32 6
  %i.eg = load ptr, ptr %41, align 16
  %42 = getelementptr inbounds nuw %struct.Type, ptr %i.eg, i32 0, i32 1
  %i.eh = load i32, ptr %42, align 4
  %i.ei = add nsw i32 %i.ee, %i.eh
  %i.ej = load ptr, ptr %i.n, align 8
  %43 = getelementptr inbounds nuw %struct.Token, ptr %i.ej, i32 0, i32 6
  %i.ek = load ptr, ptr %43, align 16
  %44 = getelementptr inbounds nuw %struct.Type, ptr %i.ek, i32 0, i32 6
  %i.el = load ptr, ptr %44, align 8
  %45 = getelementptr inbounds nuw %struct.Type, ptr %i.el, i32 0, i32 1
  %i.em = load i32, ptr %45, align 4
  %i.en = sub nsw i32 %i.ei, %i.em
  store i32 %i.en, ptr %i.m, align 4
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.eo = load ptr, ptr %i.n, align 8
  %46 = getelementptr inbounds nuw %struct.Token, ptr %i.eo, i32 0, i32 1
  %i.ep = load ptr, ptr %46, align 8
  store ptr %i.ep, ptr %i.n, align 8
  br label %bb.ao, !llvm.loop !22

bb.ar:                                            ; preds = %bb.ao
  %i.eq = load ptr, ptr %i.h, align 8
  %i.er = load ptr, ptr %i.h, align 8
  %i.es = call ptr @copy_token(ptr noundef %i.er)
  call void @llvm.memcpy.p0.p0.i64(ptr align 16 %i.eq, ptr align 16 %i.es, i64 128, i1 false)
  %i.et = load ptr, ptr %i.h, align 8
  %47 = getelementptr inbounds nuw %struct.Token, ptr %i.et, i32 0, i32 6
  %i.eu = load ptr, ptr %47, align 16
  %48 = getelementptr inbounds nuw %struct.Type, ptr %i.eu, i32 0, i32 6
  %i.ev = load ptr, ptr %48, align 8
  %i.ew = load i32, ptr %i.j, align 4
  %i.ex = call ptr @array_of(ptr noundef %i.ev, i32 noundef %i.ew)
  %i.ey = load ptr, ptr %i.h, align 8
  %49 = getelementptr inbounds nuw %struct.Token, ptr %i.ey, i32 0, i32 6
  store ptr %i.ex, ptr %49, align 16
  %i.ez = load ptr, ptr %i.l, align 8
  %i.fa = load ptr, ptr %i.h, align 8
  %50 = getelementptr inbounds nuw %struct.Token, ptr %i.fa, i32 0, i32 7
  store ptr %i.ez, ptr %50, align 8
  %i.fb = load ptr, ptr %i.i, align 8
  %i.fc = load ptr, ptr %i.h, align 8
  %51 = getelementptr inbounds nuw %struct.Token, ptr %i.fc, i32 0, i32 1
  store ptr %i.fb, ptr %51, align 8
  %i.fd = load ptr, ptr %i.i, align 8
  store ptr %i.fd, ptr %i.h, align 8
  br label %bb.ac, !llvm.loop !19

bb.as:                                            ; preds = %bb.ac
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optnone uwtable
define internal ptr @new_str_token(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 2 uses
  %i.b = alloca ptr, align 8                      ; 3 uses
  %i.c = alloca ptr, align 8                      ; 2 uses
  store ptr %0, ptr %i.a, align 8
  store ptr %1, ptr %i.b, align 8
  %i.d = load ptr, ptr %i.a, align 8
  %i.e = call ptr @quote_string(ptr noundef %i.d)
  store ptr %i.e, ptr %i.c, align 8
  %i.f = load ptr, ptr %i.b, align 8
  %2 = getelementptr inbounds nuw %struct.Token, ptr %i.f, i32 0, i32 8
  %i.g = load ptr, ptr %2, align 16
  %3 = getelementptr inbounds nuw %struct.File, ptr %i.g, i32 0, i32 0
  %i.h = load ptr, ptr %3, align 8
  %i.i = load ptr, ptr %i.b, align 8
  %4 = getelementptr inbounds nuw %struct.Token, ptr %i.i, i32 0, i32 8
  %i.j = load ptr, ptr %4, align 16
  %5 = getelementptr inbounds nuw %struct.File, ptr %i.j, i32 0, i32 1
  %i.k = load i32, ptr %5, align 8
  %i.l = load ptr, ptr %i.c, align 8
  %i.m = call ptr @new_file(ptr noundef %i.h, i32 noundef %i.k, ptr noundef %i.l)
  %i.n = call ptr @tokenize(ptr noundef %i.m)
  ret ptr %i.n
}

; Function Attrs: noinline nounwind optnone uwtable
define internal ptr @quote_string(ptr noundef %0) unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 8 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 6 uses
  %i.d = alloca ptr, align 8                      ; 3 uses
  %i.e = alloca ptr, align 8                      ; 11 uses
  %i.f = alloca i32, align 4                      ; 7 uses
  store ptr %0, ptr %i.a, align 8
  store i32 3, ptr %i.b, align 4
  store i32 0, ptr %i.c, align 4
  br label %bb.b

bb.b:                                             ; preds = %bb.g, %bb.a
  %i.g = load ptr, ptr %i.a, align 8
  %i.h = load i32, ptr %i.c, align 4
  %i.i = sext i32 %i.h to i64
  %i.j = getelementptr inbounds i8, ptr %i.g, i64 %i.i
  %i.k = load i8, ptr %i.j, align 1
  %i.l = icmp ne i8 %i.k, 0
  br i1 %i.l, label %bb.c, label %bb.h

bb.c:                                             ; preds = %bb.b
  %i.m = load ptr, ptr %i.a, align 8
  %i.n = load i32, ptr %i.c, align 4
  %i.o = sext i32 %i.n to i64
  %i.p = getelementptr inbounds i8, ptr %i.m, i64 %i.o
  %i.q = load i8, ptr %i.p, align 1
  %i.r = sext i8 %i.q to i32
  %i.s = icmp eq i32 %i.r, 92
  br i1 %i.s, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.t = load ptr, ptr %i.a, align 8
  %i.u = load i32, ptr %i.c, align 4
  %i.v = sext i32 %i.u to i64
  %i.w = getelementptr inbounds i8, ptr %i.t, i64 %i.v
  %i.x = load i8, ptr %i.w, align 1
  %i.y = sext i8 %i.x to i32
  %i.z = icmp eq i32 %i.y, 34
  br i1 %i.z, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.aa = load i32, ptr %i.b, align 4
  %i.ab = add nsw i32 %i.aa, 1
  store i32 %i.ab, ptr %i.b, align 4
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.ac = load i32, ptr %i.b, align 4
  %i.ad = add nsw i32 %i.ac, 1
  store i32 %i.ad, ptr %i.b, align 4
  br label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ae = load i32, ptr %i.c, align 4
  %i.af = add nsw i32 %i.ae, 1
  store i32 %i.af, ptr %i.c, align 4
  br label %bb.b, !llvm.loop !23

bb.h:                                             ; preds = %bb.b
  %i.ag = load i32, ptr %i.b, align 4
  %i.ah = sext i32 %i.ag to i64
  %i.ai = call noalias ptr @calloc(i64 noundef 1, i64 noundef %i.ah) #12
  store ptr %i.ai, ptr %i.d, align 8
  %i.aj = load ptr, ptr %i.d, align 8
  store ptr %i.aj, ptr %i.e, align 8
  %i.ak = load ptr, ptr %i.e, align 8             ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i32 1
  store ptr %i.al, ptr %i.e, align 8
  store i8 34, ptr %i.ak, align 1
  store i32 0, ptr %i.f, align 4
  br label %bb.i

bb.i:                                             ; preds = %bb.n, %bb.h
  %i.am = load ptr, ptr %i.a, align 8
  %i.an = load i32, ptr %i.f, align 4
  %i.ao = sext i32 %i.an to i64
  %i.ap = getelementptr inbounds i8, ptr %i.am, i64 %i.ao
  %i.aq = load i8, ptr %i.ap, align 1
  %i.ar = icmp ne i8 %i.aq, 0
  br i1 %i.ar, label %bb.j, label %bb.o

bb.j:                                             ; preds = %bb.i
  %i.as = load ptr, ptr %i.a, align 8
  %i.at = load i32, ptr %i.f, align 4
  %i.au = sext i32 %i.at to i64
  %i.av = getelementptr inbounds i8, ptr %i.as, i64 %i.au
  %i.aw = load i8, ptr %i.av, align 1
  %i.ax = sext i8 %i.aw to i32
  %i.ay = icmp eq i32 %i.ax, 92
  br i1 %i.ay, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.az = load ptr, ptr %i.a, align 8
  %i.ba = load i32, ptr %i.f, align 4
  %i.bb = sext i32 %i.ba to i64
  %i.bc = getelementptr inbounds i8, ptr %i.az, i64 %i.bb
  %i.bd = load i8, ptr %i.bc, align 1
  %i.be = sext i8 %i.bd to i32
  %i.bf = icmp eq i32 %i.be, 34
  br i1 %i.bf, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.bg = load ptr, ptr %i.e, align 8             ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i32 1
  store ptr %i.bh, ptr %i.e, align 8
  store i8 92, ptr %i.bg, align 1
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.bi = load ptr, ptr %i.a, align 8
  %i.bj = load i32, ptr %i.f, align 4
  %i.bk = sext i32 %i.bj to i64
  %i.bl = getelementptr inbounds i8, ptr %i.bi, i64 %i.bk
  %i.bm = load i8, ptr %i.bl, align 1
  %i.bn = load ptr, ptr %i.e, align 8             ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i32 1
  store ptr %i.bo, ptr %i.e, align 8
  store i8 %i.bm, ptr %i.bn, align 1
  br label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bp = load i32, ptr %i.f, align 4
  %i.bq = add nsw i32 %i.bp, 1
  store i32 %i.bq, ptr %i.f, align 4
  br label %bb.i, !llvm.loop !24

bb.o:                                             ; preds = %bb.i
  %i.br = load ptr, ptr %i.e, align 8             ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i32 1
  store ptr %i.bs, ptr %i.e, align 8
  store i8 34, ptr %i.br, align 1
  %i.bt = load ptr, ptr %i.e, align 8             ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i32 1
  store ptr %i.bu, ptr %i.e, align 8
  store i8 0, ptr %i.bt, align 1
  %i.bv = load ptr, ptr %i.d, align 8
  ret ptr %i.bv
}

; Function Attrs: noinline nounwind optnone uwtable
define internal ptr @new_num_token(i32 noundef %0, ptr noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 2 uses
  %i.b = alloca ptr, align 8                      ; 3 uses
  %i.c = alloca ptr, align 8                      ; 2 uses
  store i32 %0, ptr %i.a, align 4
  store ptr %1, ptr %i.b, align 8
  %i.d = load i32, ptr %i.a, align 4
  %i.e = call ptr (ptr, ...) @format(ptr noundef @.str.63, i32 noundef %i.d)
  store ptr %i.e, ptr %i.c, align 8
  %i.f = load ptr, ptr %i.b, align 8
  %2 = getelementptr inbounds nuw %struct.Token, ptr %i.f, i32 0, i32 8
  %i.g = load ptr, ptr %2, align 16
  %3 = getelementptr inbounds nuw %struct.File, ptr %i.g, i32 0, i32 0
  %i.h = load ptr, ptr %3, align 8
  %i.i = load ptr, ptr %i.b, align 8
  %4 = getelementptr inbounds nuw %struct.Token, ptr %i.i, i32 0, i32 8
  %i.j = load ptr, ptr %4, align 16
  %5 = getelementptr inbounds nuw %struct.File, ptr %i.j, i32 0, i32 1
  %i.k = load i32, ptr %5, align 8
  %i.l = load ptr, ptr %i.c, align 8
  %i.m = call ptr @new_file(ptr noundef %i.h, i32 noundef %i.k, ptr noundef %i.l)
end_hunk_0
begin_hunk_1_@read_macro_definition:bb.a
  %i.al = load ptr, ptr %i.b, align 8
  %i.am = call ptr @copy_line(ptr noundef %i.ak, ptr noundef %i.al)
  %i.an = call ptr @add_macro(ptr noundef %i.aj, i1 noundef zeroext true, ptr noundef %i.am) ; 0 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write)
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

bb.b:                                             ; preds = %bb.m, %bb.g, %bb.a
  %i.b = load ptr, ptr %i.a, align 8
  %1 = getelementptr inbounds nuw %struct.Token, ptr %i.b, i32 0, i32 0
  %i.c = load i32, ptr %1, align 16
  %i.d = icmp ne i32 %i.c, 6
  br i1 %i.d, label %bb.c, label %bb.n

bb.c:                                             ; preds = %bb.b
  %i.e = load ptr, ptr %i.a, align 8
  %i.f = call zeroext i1 @is_hash(ptr noundef %i.e)
  br i1 %i.f, label %bb.d, label %bb.h

bb.d:                                             ; preds = %bb.c
  %i.g = load ptr, ptr %i.a, align 8
  %2 = getelementptr inbounds nuw %struct.Token, ptr %i.g, i32 0, i32 1
  %i.h = load ptr, ptr %2, align 8
  %i.i = call zeroext i1 @equal(ptr noundef %i.h, ptr noundef @.str.72)
  br i1 %i.i, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.j = load ptr, ptr %i.a, align 8
  %3 = getelementptr inbounds nuw %struct.Token, ptr %i.j, i32 0, i32 1
  %i.k = load ptr, ptr %3, align 8
  %i.l = call zeroext i1 @equal(ptr noundef %i.k, ptr noundef @.str.73)
  br i1 %i.l, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.m = load ptr, ptr %i.a, align 8
  %4 = getelementptr inbounds nuw %struct.Token, ptr %i.m, i32 0, i32 1
  %i.n = load ptr, ptr %4, align 8
  %i.o = call zeroext i1 @equal(ptr noundef %i.n, ptr noundef @.str.74)
  br i1 %i.o, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.d
  %i.p = load ptr, ptr %i.a, align 8
  %5 = getelementptr inbounds nuw %struct.Token, ptr %i.p, i32 0, i32 1
  %i.q = load ptr, ptr %5, align 8
  %6 = getelementptr inbounds nuw %struct.Token, ptr %i.q, i32 0, i32 1
  %i.r = load ptr, ptr %6, align 8
  %i.s = call ptr @skip_cond_incl2(ptr noundef %i.r)
  store ptr %i.s, ptr %i.a, align 8
  br label %bb.b, !llvm.loop !31

bb.h:                                             ; preds = %bb.f, %bb.c
  %i.t = load ptr, ptr %i.a, align 8
  %i.u = call zeroext i1 @is_hash(ptr noundef %i.t)
  br i1 %i.u, label %bb.i, label %bb.m

bb.i:                                             ; preds = %bb.h
  %i.v = load ptr, ptr %i.a, align 8
  %7 = getelementptr inbounds nuw %struct.Token, ptr %i.v, i32 0, i32 1
  %i.w = load ptr, ptr %7, align 8
  %i.x = call zeroext i1 @equal(ptr noundef %i.w, ptr noundef @.str.75)
  br i1 %i.x, label %bb.l, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.y = load ptr, ptr %i.a, align 8
  %8 = getelementptr inbounds nuw %struct.Token, ptr %i.y, i32 0, i32 1
  %i.z = load ptr, ptr %8, align 8
  %i.aa = call zeroext i1 @equal(ptr noundef %i.z, ptr noundef @.str.77)
  br i1 %i.aa, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ab = load ptr, ptr %i.a, align 8
  %9 = getelementptr inbounds nuw %struct.Token, ptr %i.ab, i32 0, i32 1
  %i.ac = load ptr, ptr %9, align 8
  %i.ad = call zeroext i1 @equal(ptr noundef %i.ac, ptr noundef @.str.79)
  br i1 %i.ad, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k, %bb.j, %bb.i
  br label %bb.n

bb.m:                                             ; preds = %bb.k, %bb.h
  %i.ae = load ptr, ptr %i.a, align 8
  %10 = getelementptr inbounds nuw %struct.Token, ptr %i.ae, i32 0, i32 1
  %i.af = load ptr, ptr %10, align 8
  store ptr %i.af, ptr %i.a, align 8
  br label %bb.b, !llvm.loop !31

bb.n:                                             ; preds = %bb.l, %bb.b
  %i.ag = load ptr, ptr %i.a, align 8
  ret ptr %i.ag
}

; Function Attrs: noinline nounwind optnone uwtable
define internal ptr @find_macro(ptr noundef %0) unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 3 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  store ptr %0, ptr %i.b, align 8
  %i.c = load ptr, ptr %i.b, align 8
  %1 = getelementptr inbounds nuw %struct.Token, ptr %i.c, i32 0, i32 0
  %i.d = load i32, ptr %1, align 16
  %i.e = icmp ne i32 %i.d, 0
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store ptr null, ptr %i.a, align 8
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %i.b, align 8
  %2 = getelementptr inbounds nuw %struct.Token, ptr %i.f, i32 0, i32 4
  %i.g = load ptr, ptr %2, align 16
  %i.h = load ptr, ptr %i.b, align 8
  %3 = getelementptr inbounds nuw %struct.Token, ptr %i.h, i32 0, i32 5
  %i.i = load i32, ptr %3, align 8
  %i.j = call ptr @hashmap_get2(ptr noundef @macros, ptr noundef %i.g, i32 noundef %i.i)
  store ptr %i.j, ptr %i.a, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.k = load ptr, ptr %i.a, align 8
  ret ptr %i.k
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @read_line_marker(ptr noundef nonnull %0, ptr noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 2 uses
  %i.b = alloca ptr, align 8                      ; 14 uses
  %i.c = alloca ptr, align 8                      ; 4 uses
  store ptr %0, ptr %i.a, align 8
  store ptr %1, ptr %i.b, align 8
  %i.d = load ptr, ptr %i.b, align 8
  store ptr %i.d, ptr %i.c, align 8
  %i.e = load ptr, ptr %i.a, align 8
  %i.f = load ptr, ptr %i.b, align 8
  %i.g = call ptr @copy_line(ptr noundef %i.e, ptr noundef %i.f)
  %i.h = call ptr @preprocess(ptr noundef %i.g)
  store ptr %i.h, ptr %i.b, align 8
  %i.i = load ptr, ptr %i.b, align 8
  %2 = getelementptr inbounds nuw %struct.Token, ptr %i.i, i32 0, i32 0
  %i.j = load i32, ptr %2, align 16
  %i.k = icmp ne i32 %i.j, 4
  br i1 %i.k, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = load ptr, ptr %i.b, align 8
  %3 = getelementptr inbounds nuw %struct.Token, ptr %i.l, i32 0, i32 6
  %i.m = load ptr, ptr %3, align 16
  %4 = getelementptr inbounds nuw %struct.Type, ptr %i.m, i32 0, i32 0
  %i.n = load i32, ptr %4, align 8
  %i.o = icmp ne i32 %i.n, 4
  br i1 %i.o, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.p = load ptr, ptr %i.b, align 8
  call void (ptr, ptr, ...) @error_tok(ptr noundef %i.p, ptr noundef @.str.110) #14
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.q = load ptr, ptr %i.b, align 8
  %5 = getelementptr inbounds nuw %struct.Token, ptr %i.q, i32 0, i32 2
  %i.r = load i64, ptr %5, align 16
  %i.s = load ptr, ptr %i.c, align 8
  %6 = getelementptr inbounds nuw %struct.Token, ptr %i.s, i32 0, i32 10
  %i.t = load i32, ptr %6, align 16
  %i.u = sext i32 %i.t to i64
  %i.v = sub nsw i64 %i.r, %i.u
  %i.w = trunc i64 %i.v to i32
  %i.x = load ptr, ptr %i.c, align 8
  %7 = getelementptr inbounds nuw %struct.Token, ptr %i.x, i32 0, i32 8
  %i.y = load ptr, ptr %7, align 16
  %8 = getelementptr inbounds nuw %struct.File, ptr %i.y, i32 0, i32 4
  store i32 %i.w, ptr %8, align 8
  %i.z = load ptr, ptr %i.b, align 8
  %9 = getelementptr inbounds nuw %struct.Token, ptr %i.z, i32 0, i32 1
  %i.aa = load ptr, ptr %9, align 8
  store ptr %i.aa, ptr %i.b, align 8
  %i.ab = load ptr, ptr %i.b, align 8
  %10 = getelementptr inbounds nuw %struct.Token, ptr %i.ab, i32 0, i32 0
  %i.ac = load i32, ptr %10, align 16
  %i.ad = icmp eq i32 %i.ac, 6
  br i1 %i.ad, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  br label %bb.i

bb.f:                                             ; preds = %bb.d
  %i.ae = load ptr, ptr %i.b, align 8
  %11 = getelementptr inbounds nuw %struct.Token, ptr %i.ae, i32 0, i32 0
  %i.af = load i32, ptr %11, align 16
  %i.ag = icmp ne i32 %i.af, 3
  br i1 %i.ag, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ah = load ptr, ptr %i.b, align 8
  call void (ptr, ptr, ...) @error_tok(ptr noundef %i.ah, ptr noundef @.str.111) #14
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.ai = load ptr, ptr %i.b, align 8
  %12 = getelementptr inbounds nuw %struct.Token, ptr %i.ai, i32 0, i32 7
  %i.aj = load ptr, ptr %12, align 8
  %i.ak = load ptr, ptr %i.c, align 8
  %13 = getelementptr inbounds nuw %struct.Token, ptr %i.ak, i32 0, i32 8
  %i.al = load ptr, ptr %13, align 16
  %14 = getelementptr inbounds nuw %struct.File, ptr %i.al, i32 0, i32 3
  store ptr %i.aj, ptr %14, align 8
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.e
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal zeroext i1 @hideset_contains(ptr noundef %0, ptr noundef %1, i32 noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca i1, align 1                       ; 3 uses
  %i.b = alloca ptr, align 8                      ; 6 uses
  %i.c = alloca ptr, align 8                      ; 2 uses
  %i.d = alloca i32, align 4                      ; 3 uses
  store ptr %0, ptr %i.b, align 8
  store ptr %1, ptr %i.c, align 8
  store i32 %2, ptr %i.d, align 4
  br label %bb.b

bb.b:                                             ; preds = %bb.g, %bb.a
  %i.e = load ptr, ptr %i.b, align 8
  %i.f = icmp ne ptr %i.e, null
  br i1 %i.f, label %bb.c, label %bb.h

bb.c:                                             ; preds = %bb.b
  %i.g = load ptr, ptr %i.b, align 8
  %3 = getelementptr inbounds nuw %struct.Hideset, ptr %i.g, i32 0, i32 1
  %i.h = load ptr, ptr %3, align 8
  %i.i = call i64 @strlen(ptr noundef %i.h) #16
  %i.j = load i32, ptr %i.d, align 4
  %i.k = sext i32 %i.j to i64
  %i.l = icmp eq i64 %i.i, %i.k
  br i1 %i.l, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.m = load ptr, ptr %i.b, align 8
  %4 = getelementptr inbounds nuw %struct.Hideset, ptr %i.m, i32 0, i32 1
  %i.n = load ptr, ptr %4, align 8
  %i.o = load ptr, ptr %i.c, align 8
  %i.p = load i32, ptr %i.d, align 4
  %i.q = sext i32 %i.p to i64
  %i.r = call i32 @strncmp(ptr noundef %i.n, ptr noundef %i.o, i64 noundef %i.q) #16
  %i.s = icmp ne i32 %i.r, 0
  br i1 %i.s, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  store i1 true, ptr %i.a, align 1
  br label %bb.i

bb.f:                                             ; preds = %bb.d, %bb.c
  br label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.t = load ptr, ptr %i.b, align 8
  %5 = getelementptr inbounds nuw %struct.Hideset, ptr %i.t, i32 0, i32 0
  %i.u = load ptr, ptr %5, align 8
  store ptr %i.u, ptr %i.b, align 8
  br label %bb.b, !llvm.loop !32

bb.h:                                             ; preds = %bb.b
  store i1 false, ptr %i.a, align 1
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.e
  %i.v = load i1, ptr %i.a, align 1
  ret i1 %i.v
}

; Function Attrs: noinline nounwind optnone uwtable
define internal ptr @hideset_union(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = alloca ptr, align 8                      ; 2 uses
  %2 = alloca %struct.Hideset, align 8            ; 3 uses
  %i.c = alloca ptr, align 8                      ; 4 uses
  store ptr %0, ptr %i.a, align 8
  store ptr %1, ptr %i.b, align 8
  call void @llvm.memset.p0.i64(ptr align 8 %2, i8 0, i64 16, i1 false)
  store ptr %2, ptr %i.c, align 8
  br label %bb.b

end_hunk_1
begin_hunk_2_@read_macro_args:bb.a
  br label %bb.b

bb.b:                                             ; preds = %bb.f, %bb.a
  %i.n = load ptr, ptr %i.g, align 8
  %i.o = icmp ne ptr %i.n, null
  br i1 %i.o, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.p = load ptr, ptr %i.f, align 8
  %i.q = icmp ne ptr %i.p, %4
  br i1 %i.q, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.r = load ptr, ptr %i.b, align 8
  %i.s = call ptr @skip(ptr noundef %i.r, ptr noundef @.str.87)
  store ptr %i.s, ptr %i.b, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.t = load ptr, ptr %i.b, align 8
  %i.u = call ptr @read_macro_arg_one(ptr noundef %i.b, ptr noundef %i.t, i1 noundef zeroext false) ; 2 uses
  %i.v = load ptr, ptr %i.f, align 8
  %7 = getelementptr inbounds nuw %struct.MacroArg, ptr %i.v, i32 0, i32 0
  store ptr %i.u, ptr %7, align 8
  store ptr %i.u, ptr %i.f, align 8
  %i.w = load ptr, ptr %i.g, align 8
  %8 = getelementptr inbounds nuw %struct.MacroParam, ptr %i.w, i32 0, i32 1
  %i.x = load ptr, ptr %8, align 8
  %i.y = load ptr, ptr %i.f, align 8
  %9 = getelementptr inbounds nuw %struct.MacroArg, ptr %i.y, i32 0, i32 1
  store ptr %i.x, ptr %9, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.z = load ptr, ptr %i.g, align 8
  %10 = getelementptr inbounds nuw %struct.MacroParam, ptr %i.z, i32 0, i32 0
  %i.aa = load ptr, ptr %10, align 8
  store ptr %i.aa, ptr %i.g, align 8
  br label %bb.b, !llvm.loop !36

bb.g:                                             ; preds = %bb.b
  %i.ab = load ptr, ptr %i.d, align 8
  %i.ac = icmp ne ptr %i.ab, null
  br i1 %i.ac, label %bb.h, label %bb.n

bb.h:                                             ; preds = %bb.g
  %i.ad = load ptr, ptr %i.b, align 8
  %i.ae = call zeroext i1 @equal(ptr noundef %i.ad, ptr noundef @.str.88)
  br i1 %i.ae, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.af = call noalias ptr @calloc(i64 noundef 1, i64 noundef 32) #12
  store ptr %i.af, ptr %i.h, align 8
  %i.ag = load ptr, ptr %i.b, align 8
  %i.ah = call ptr @new_eof(ptr noundef %i.ag)
  %i.ai = load ptr, ptr %i.h, align 8
  %11 = getelementptr inbounds nuw %struct.MacroArg, ptr %i.ai, i32 0, i32 3
  store ptr %i.ah, ptr %11, align 8
  br label %bb.m

bb.j:                                             ; preds = %bb.h
  %i.aj = load ptr, ptr %i.g, align 8
  %i.ak = load ptr, ptr %i.c, align 8
  %i.al = icmp ne ptr %i.aj, %i.ak
  br i1 %i.al, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.am = load ptr, ptr %i.b, align 8
  %i.an = call ptr @skip(ptr noundef %i.am, ptr noundef @.str.87)
  store ptr %i.an, ptr %i.b, align 8
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.ao = load ptr, ptr %i.b, align 8
  %i.ap = call ptr @read_macro_arg_one(ptr noundef %i.b, ptr noundef %i.ao, i1 noundef zeroext true)
  store ptr %i.ap, ptr %i.h, align 8
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.i
  %i.aq = load ptr, ptr %i.d, align 8
  %i.ar = load ptr, ptr %i.h, align 8
  %12 = getelementptr inbounds nuw %struct.MacroArg, ptr %i.ar, i32 0, i32 1
  store ptr %i.aq, ptr %12, align 8
  %i.as = load ptr, ptr %i.h, align 8
  %13 = getelementptr inbounds nuw %struct.MacroArg, ptr %i.as, i32 0, i32 2
  store i8 1, ptr %13, align 8
  %i.at = load ptr, ptr %i.h, align 8             ; 2 uses
  %i.au = load ptr, ptr %i.f, align 8
  %14 = getelementptr inbounds nuw %struct.MacroArg, ptr %i.au, i32 0, i32 0
  store ptr %i.at, ptr %14, align 8
  store ptr %i.at, ptr %i.f, align 8
  br label %bb.q

bb.n:                                             ; preds = %bb.g
  %i.av = load ptr, ptr %i.g, align 8
  %i.aw = icmp ne ptr %i.av, null
  br i1 %i.aw, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.ax = load ptr, ptr %i.e, align 8
  call void (ptr, ptr, ...) @error_tok(ptr noundef %i.ax, ptr noundef @.str.89) #14
  unreachable

bb.p:                                             ; preds = %bb.n
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.m
  %i.ay = load ptr, ptr %i.b, align 8
  %i.az = call ptr @skip(ptr noundef %i.ay, ptr noundef @.str.88) ; 0 uses
  %i.ba = load ptr, ptr %i.b, align 8
  %i.bb = load ptr, ptr %i.a, align 8
  store ptr %i.ba, ptr %i.bb, align 8
  %15 = getelementptr inbounds nuw %struct.MacroArg, ptr %4, i32 0, i32 0
  %i.bc = load ptr, ptr %15, align 8
  ret ptr %i.bc
}

; Function Attrs: noinline nounwind optnone uwtable
define internal ptr @hideset_intersection(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 7 uses
  %i.b = alloca ptr, align 8                      ; 2 uses
  %2 = alloca %struct.Hideset, align 8            ; 3 uses
  %i.c = alloca ptr, align 8                      ; 3 uses
  store ptr %0, ptr %i.a, align 8
  store ptr %1, ptr %i.b, align 8
  call void @llvm.memset.p0.i64(ptr align 8 %2, i8 0, i64 16, i1 false)
  store ptr %2, ptr %i.c, align 8
  br label %bb.b

bb.b:                                             ; preds = %bb.f, %bb.a
  %i.d = load ptr, ptr %i.a, align 8
  %i.e = icmp ne ptr %i.d, null
  br i1 %i.e, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.f = load ptr, ptr %i.b, align 8
  %i.g = load ptr, ptr %i.a, align 8
  %3 = getelementptr inbounds nuw %struct.Hideset, ptr %i.g, i32 0, i32 1
  %i.h = load ptr, ptr %3, align 8
  %i.i = load ptr, ptr %i.a, align 8
  %4 = getelementptr inbounds nuw %struct.Hideset, ptr %i.i, i32 0, i32 1
  %i.j = load ptr, ptr %4, align 8
  %i.k = call i64 @strlen(ptr noundef %i.j) #16
  %i.l = trunc i64 %i.k to i32
  %i.m = call zeroext i1 @hideset_contains(ptr noundef %i.f, ptr noundef %i.h, i32 noundef %i.l)
  br i1 %i.m, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.n = load ptr, ptr %i.a, align 8
  %5 = getelementptr inbounds nuw %struct.Hideset, ptr %i.n, i32 0, i32 1
  %i.o = load ptr, ptr %5, align 8
  %i.p = call ptr @new_hideset(ptr noundef %i.o)  ; 2 uses
  %i.q = load ptr, ptr %i.c, align 8
  %6 = getelementptr inbounds nuw %struct.Hideset, ptr %i.q, i32 0, i32 0
  store ptr %i.p, ptr %6, align 8
  store ptr %i.p, ptr %i.c, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  br label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.r = load ptr, ptr %i.a, align 8
  %7 = getelementptr inbounds nuw %struct.Hideset, ptr %i.r, i32 0, i32 0
  %i.s = load ptr, ptr %7, align 8
  store ptr %i.s, ptr %i.a, align 8
  br label %bb.b, !llvm.loop !37

bb.g:                                             ; preds = %bb.b
  %8 = getelementptr inbounds nuw %struct.Hideset, ptr %2, i32 0, i32 0
  %i.t = load ptr, ptr %8, align 8
  ret ptr %i.t
}

; Function Attrs: noinline nounwind optnone uwtable
define internal ptr @subst(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 46 uses
  %i.b = alloca ptr, align 8                      ; 7 uses
  %2 = alloca %struct.Token, align 16             ; 4 uses
  %i.c = alloca ptr, align 8                      ; 25 uses
  %i.d = alloca ptr, align 8                      ; 3 uses
  %i.e = alloca ptr, align 8                      ; 4 uses
  %i.f = alloca ptr, align 8                      ; 5 uses
  %i.g = alloca ptr, align 8                      ; 5 uses
  %i.h = alloca ptr, align 8                      ; 6 uses
  %i.i = alloca ptr, align 8                      ; 4 uses
  %i.j = alloca ptr, align 8                      ; 3 uses
  %i.k = alloca ptr, align 8                      ; 5 uses
  %i.l = alloca ptr, align 8                      ; 5 uses
  %i.m = alloca ptr, align 8                      ; 2 uses
  %i.n = alloca ptr, align 8                      ; 5 uses
  %i.o = alloca ptr, align 8                      ; 7 uses
  store ptr %0, ptr %i.a, align 8
  store ptr %1, ptr %i.b, align 8
  call void @llvm.memset.p0.i64(ptr align 16 %2, i8 0, i64 128, i1 false)
  store ptr %2, ptr %i.c, align 8
  br label %bb.b

bb.b:                                             ; preds = %bb.bi, %bb.bh, %bb.bb, %bb.as, %bb.an, %bb.ac, %bb.ab, %bb.n, %bb.f, %bb.a
  %i.p = load ptr, ptr %i.a, align 8
  %3 = getelementptr inbounds nuw %struct.Token, ptr %i.p, i32 0, i32 0
  %i.q = load i32, ptr %3, align 16
  %i.r = icmp ne i32 %i.q, 6
  br i1 %i.r, label %bb.c, label %bb.bj

bb.c:                                             ; preds = %bb.b
  %i.s = load ptr, ptr %i.a, align 8
  %i.t = call zeroext i1 @equal(ptr noundef %i.s, ptr noundef @.str.91)
  br i1 %i.t, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.u = load ptr, ptr %i.b, align 8
  %i.v = load ptr, ptr %i.a, align 8
  %4 = getelementptr inbounds nuw %struct.Token, ptr %i.v, i32 0, i32 1
  %i.w = load ptr, ptr %4, align 8
  %i.x = call ptr @find_arg(ptr noundef %i.u, ptr noundef %i.w)
  store ptr %i.x, ptr %i.d, align 8
  %i.y = load ptr, ptr %i.d, align 8
  %i.z = icmp ne ptr %i.y, null
  br i1 %i.z, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.aa = load ptr, ptr %i.a, align 8
  %5 = getelementptr inbounds nuw %struct.Token, ptr %i.aa, i32 0, i32 1
  %i.ab = load ptr, ptr %5, align 8
  call void (ptr, ptr, ...) @error_tok(ptr noundef %i.ab, ptr noundef @.str.92) #14
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.ac = load ptr, ptr %i.a, align 8
  %i.ad = load ptr, ptr %i.d, align 8
  %6 = getelementptr inbounds nuw %struct.MacroArg, ptr %i.ad, i32 0, i32 3
  %i.ae = load ptr, ptr %6, align 8
  %i.af = call ptr @stringize(ptr noundef %i.ac, ptr noundef %i.ae) ; 2 uses
  %i.ag = load ptr, ptr %i.c, align 8
  %7 = getelementptr inbounds nuw %struct.Token, ptr %i.ag, i32 0, i32 1
  store ptr %i.af, ptr %7, align 8
  store ptr %i.af, ptr %i.c, align 8
  %i.ah = load ptr, ptr %i.a, align 8
  %8 = getelementptr inbounds nuw %struct.Token, ptr %i.ah, i32 0, i32 1
  %i.ai = load ptr, ptr %8, align 8
  %9 = getelementptr inbounds nuw %struct.Token, ptr %i.ai, i32 0, i32 1
  %i.aj = load ptr, ptr %9, align 8
  store ptr %i.aj, ptr %i.a, align 8
  br label %bb.b, !llvm.loop !38

bb.g:                                             ; preds = %bb.c
  %i.ak = load ptr, ptr %i.a, align 8
  %i.al = call zeroext i1 @equal(ptr noundef %i.ak, ptr noundef @.str.87)
  br i1 %i.al, label %bb.h, label %bb.p

bb.h:                                             ; preds = %bb.g
  %i.am = load ptr, ptr %i.a, align 8
  %10 = getelementptr inbounds nuw %struct.Token, ptr %i.am, i32 0, i32 1
  %i.an = load ptr, ptr %10, align 8
  %i.ao = call zeroext i1 @equal(ptr noundef %i.an, ptr noundef @.str.93)
  br i1 %i.ao, label %bb.i, label %bb.p

bb.i:                                             ; preds = %bb.h
  %i.ap = load ptr, ptr %i.b, align 8
  %i.aq = load ptr, ptr %i.a, align 8
  %11 = getelementptr inbounds nuw %struct.Token, ptr %i.aq, i32 0, i32 1
  %i.ar = load ptr, ptr %11, align 8
  %12 = getelementptr inbounds nuw %struct.Token, ptr %i.ar, i32 0, i32 1
  %i.as = load ptr, ptr %12, align 8
  %i.at = call ptr @find_arg(ptr noundef %i.ap, ptr noundef %i.as)
  store ptr %i.at, ptr %i.e, align 8
  %i.au = load ptr, ptr %i.e, align 8
  %i.av = icmp ne ptr %i.au, null
  br i1 %i.av, label %bb.j, label %bb.o

bb.j:                                             ; preds = %bb.i
  %i.aw = load ptr, ptr %i.e, align 8
  %13 = getelementptr inbounds nuw %struct.MacroArg, ptr %i.aw, i32 0, i32 2
  %i.ax = load i8, ptr %13, align 8
  %i.ay = icmp ne i8 %i.ax, 0
  br i1 %i.ay, label %bb.k, label %bb.o

bb.k:                                             ; preds = %bb.j
  %i.az = load ptr, ptr %i.e, align 8
  %14 = getelementptr inbounds nuw %struct.MacroArg, ptr %i.az, i32 0, i32 3
  %i.ba = load ptr, ptr %14, align 8
  %15 = getelementptr inbounds nuw %struct.Token, ptr %i.ba, i32 0, i32 0
  %i.bb = load i32, ptr %15, align 16
  %i.bc = icmp eq i32 %i.bb, 6
  br i1 %i.bc, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.bd = load ptr, ptr %i.a, align 8
  %16 = getelementptr inbounds nuw %struct.Token, ptr %i.bd, i32 0, i32 1
  %i.be = load ptr, ptr %16, align 8
  %17 = getelementptr inbounds nuw %struct.Token, ptr %i.be, i32 0, i32 1
  %i.bf = load ptr, ptr %17, align 8
  %18 = getelementptr inbounds nuw %struct.Token, ptr %i.bf, i32 0, i32 1
  %i.bg = load ptr, ptr %18, align 8
  store ptr %i.bg, ptr %i.a, align 8
  br label %bb.n

bb.m:                                             ; preds = %bb.k
  %i.bh = load ptr, ptr %i.a, align 8
  %i.bi = call ptr @copy_token(ptr noundef %i.bh) ; 2 uses
  %i.bj = load ptr, ptr %i.c, align 8
  %19 = getelementptr inbounds nuw %struct.Token, ptr %i.bj, i32 0, i32 1
  store ptr %i.bi, ptr %19, align 8
  store ptr %i.bi, ptr %i.c, align 8
  %i.bk = load ptr, ptr %i.a, align 8
  %20 = getelementptr inbounds nuw %struct.Token, ptr %i.bk, i32 0, i32 1
  %i.bl = load ptr, ptr %20, align 8
  %21 = getelementptr inbounds nuw %struct.Token, ptr %i.bl, i32 0, i32 1
  %i.bm = load ptr, ptr %21, align 8
  store ptr %i.bm, ptr %i.a, align 8
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  br label %bb.b, !llvm.loop !38

bb.o:                                             ; preds = %bb.j, %bb.i
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.h, %bb.g
  %i.bn = load ptr, ptr %i.a, align 8
  %i.bo = call zeroext i1 @equal(ptr noundef %i.bn, ptr noundef @.str.93)
  br i1 %i.bo, label %bb.q, label %bb.ad

bb.q:                                             ; preds = %bb.p
  %i.bp = load ptr, ptr %i.c, align 8
  %i.bq = icmp eq ptr %i.bp, %2
  br i1 %i.bq, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.br = load ptr, ptr %i.a, align 8
  call void (ptr, ptr, ...) @error_tok(ptr noundef %i.br, ptr noundef @.str.94) #14
  unreachable

bb.s:                                             ; preds = %bb.q
  %i.bs = load ptr, ptr %i.a, align 8
  %22 = getelementptr inbounds nuw %struct.Token, ptr %i.bs, i32 0, i32 1
  %i.bt = load ptr, ptr %22, align 8
  %23 = getelementptr inbounds nuw %struct.Token, ptr %i.bt, i32 0, i32 0
  %i.bu = load i32, ptr %23, align 16
  %i.bv = icmp eq i32 %i.bu, 6
  br i1 %i.bv, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.bw = load ptr, ptr %i.a, align 8
  call void (ptr, ptr, ...) @error_tok(ptr noundef %i.bw, ptr noundef @.str.95) #14
  unreachable

bb.u:                                             ; preds = %bb.s
  %i.bx = load ptr, ptr %i.b, align 8
  %i.by = load ptr, ptr %i.a, align 8
  %24 = getelementptr inbounds nuw %struct.Token, ptr %i.by, i32 0, i32 1
  %i.bz = load ptr, ptr %24, align 8
  %i.ca = call ptr @find_arg(ptr noundef %i.bx, ptr noundef %i.bz)
  store ptr %i.ca, ptr %i.f, align 8
  %i.cb = load ptr, ptr %i.f, align 8
  %i.cc = icmp ne ptr %i.cb, null
  br i1 %i.cc, label %bb.v, label %bb.ac

bb.v:                                             ; preds = %bb.u
  %i.cd = load ptr, ptr %i.f, align 8
  %25 = getelementptr inbounds nuw %struct.MacroArg, ptr %i.cd, i32 0, i32 3
  %i.ce = load ptr, ptr %25, align 8
  %26 = getelementptr inbounds nuw %struct.Token, ptr %i.ce, i32 0, i32 0
  %i.cf = load i32, ptr %26, align 16
  %i.cg = icmp ne i32 %i.cf, 6
  br i1 %i.cg, label %bb.w, label %bb.ab

bb.w:                                             ; preds = %bb.v
  %i.ch = load ptr, ptr %i.c, align 8
  %i.ci = load ptr, ptr %i.c, align 8
  %i.cj = load ptr, ptr %i.f, align 8
  %27 = getelementptr inbounds nuw %struct.MacroArg, ptr %i.cj, i32 0, i32 3
  %i.ck = load ptr, ptr %27, align 8
  %i.cl = call ptr @paste(ptr noundef %i.ci, ptr noundef %i.ck)
  call void @llvm.memcpy.p0.p0.i64(ptr align 16 %i.ch, ptr align 16 %i.cl, i64 128, i1 false)
  %i.cm = load ptr, ptr %i.f, align 8
  %28 = getelementptr inbounds nuw %struct.MacroArg, ptr %i.cm, i32 0, i32 3
  %i.cn = load ptr, ptr %28, align 8
  %29 = getelementptr inbounds nuw %struct.Token, ptr %i.cn, i32 0, i32 1
  %i.co = load ptr, ptr %29, align 8
  store ptr %i.co, ptr %i.g, align 8
  br label %bb.x

bb.x:                                             ; preds = %bb.z, %bb.w
  %i.cp = load ptr, ptr %i.g, align 8
  %30 = getelementptr inbounds nuw %struct.Token, ptr %i.cp, i32 0, i32 0
  %i.cq = load i32, ptr %30, align 16
  %i.cr = icmp ne i32 %i.cq, 6
  br i1 %i.cr, label %bb.y, label %bb.aa

bb.y:                                             ; preds = %bb.x
  %i.cs = load ptr, ptr %i.g, align 8
  %i.ct = call ptr @copy_token(ptr noundef %i.cs) ; 2 uses
  %i.cu = load ptr, ptr %i.c, align 8
  %31 = getelementptr inbounds nuw %struct.Token, ptr %i.cu, i32 0, i32 1
  store ptr %i.ct, ptr %31, align 8
  store ptr %i.ct, ptr %i.c, align 8
  br label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.cv = load ptr, ptr %i.g, align 8
  %32 = getelementptr inbounds nuw %struct.Token, ptr %i.cv, i32 0, i32 1
  %i.cw = load ptr, ptr %32, align 8
  store ptr %i.cw, ptr %i.g, align 8
  br label %bb.x, !llvm.loop !39

bb.aa:                                            ; preds = %bb.x
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.v
  %i.cx = load ptr, ptr %i.a, align 8
  %33 = getelementptr inbounds nuw %struct.Token, ptr %i.cx, i32 0, i32 1
  %i.cy = load ptr, ptr %33, align 8
  %34 = getelementptr inbounds nuw %struct.Token, ptr %i.cy, i32 0, i32 1
  %i.cz = load ptr, ptr %34, align 8
  store ptr %i.cz, ptr %i.a, align 8
  br label %bb.b, !llvm.loop !38

bb.ac:                                            ; preds = %bb.u
  %i.da = load ptr, ptr %i.c, align 8
  %i.db = load ptr, ptr %i.c, align 8
  %i.dc = load ptr, ptr %i.a, align 8
  %35 = getelementptr inbounds nuw %struct.Token, ptr %i.dc, i32 0, i32 1
  %i.dd = load ptr, ptr %35, align 8
  %i.de = call ptr @paste(ptr noundef %i.db, ptr noundef %i.dd)
  call void @llvm.memcpy.p0.p0.i64(ptr align 16 %i.da, ptr align 16 %i.de, i64 128, i1 false)
  %i.df = load ptr, ptr %i.a, align 8
  %36 = getelementptr inbounds nuw %struct.Token, ptr %i.df, i32 0, i32 1
  %i.dg = load ptr, ptr %36, align 8
  %37 = getelementptr inbounds nuw %struct.Token, ptr %i.dg, i32 0, i32 1
  %i.dh = load ptr, ptr %37, align 8
  store ptr %i.dh, ptr %i.a, align 8
  br label %bb.b, !llvm.loop !38

bb.ad:                                            ; preds = %bb.p
  %i.di = load ptr, ptr %i.b, align 8
  %i.dj = load ptr, ptr %i.a, align 8
  %i.dk = call ptr @find_arg(ptr noundef %i.di, ptr noundef %i.dj)
  store ptr %i.dk, ptr %i.h, align 8
  %i.dl = load ptr, ptr %i.h, align 8
  %i.dm = icmp ne ptr %i.dl, null
  br i1 %i.dm, label %bb.ae, label %bb.at

bb.ae:                                            ; preds = %bb.ad
  %i.dn = load ptr, ptr %i.a, align 8
  %38 = getelementptr inbounds nuw %struct.Token, ptr %i.dn, i32 0, i32 1
  %i.do = load ptr, ptr %38, align 8
  %i.dp = call zeroext i1 @equal(ptr noundef %i.do, ptr noundef @.str.93)
  br i1 %i.dp, label %bb.af, label %bb.at

bb.af:                                            ; preds = %bb.ae
  %i.dq = load ptr, ptr %i.a, align 8
  %39 = getelementptr inbounds nuw %struct.Token, ptr %i.dq, i32 0, i32 1
  %i.dr = load ptr, ptr %39, align 8
  %40 = getelementptr inbounds nuw %struct.Token, ptr %i.dr, i32 0, i32 1
  %i.ds = load ptr, ptr %40, align 8
  store ptr %i.ds, ptr %i.i, align 8
  %i.dt = load ptr, ptr %i.h, align 8
  %41 = getelementptr inbounds nuw %struct.MacroArg, ptr %i.dt, i32 0, i32 3
  %i.du = load ptr, ptr %41, align 8
  %42 = getelementptr inbounds nuw %struct.Token, ptr %i.du, i32 0, i32 0
  %i.dv = load i32, ptr %42, align 16
  %i.dw = icmp eq i32 %i.dv, 6
  br i1 %i.dw, label %bb.ag, label %bb.ao

bb.ag:                                            ; preds = %bb.af
  %i.dx = load ptr, ptr %i.b, align 8
  %i.dy = load ptr, ptr %i.i, align 8
  %i.dz = call ptr @find_arg(ptr noundef %i.dx, ptr noundef %i.dy)
  store ptr %i.dz, ptr %i.j, align 8
  %i.ea = load ptr, ptr %i.j, align 8
  %i.eb = icmp ne ptr %i.ea, null
  br i1 %i.eb, label %bb.ah, label %bb.am

bb.ah:                                            ; preds = %bb.ag
  %i.ec = load ptr, ptr %i.j, align 8
  %43 = getelementptr inbounds nuw %struct.MacroArg, ptr %i.ec, i32 0, i32 3
  %i.ed = load ptr, ptr %43, align 8
  store ptr %i.ed, ptr %i.k, align 8
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ak, %bb.ah
  %i.ee = load ptr, ptr %i.k, align 8
  %44 = getelementptr inbounds nuw %struct.Token, ptr %i.ee, i32 0, i32 0
  %i.ef = load i32, ptr %44, align 16
  %i.eg = icmp ne i32 %i.ef, 6
  br i1 %i.eg, label %bb.aj, label %bb.al

bb.aj:                                            ; preds = %bb.ai
  %i.eh = load ptr, ptr %i.k, align 8
  %i.ei = call ptr @copy_token(ptr noundef %i.eh) ; 2 uses
  %i.ej = load ptr, ptr %i.c, align 8
  %45 = getelementptr inbounds nuw %struct.Token, ptr %i.ej, i32 0, i32 1
  store ptr %i.ei, ptr %45, align 8
  store ptr %i.ei, ptr %i.c, align 8
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.ek = load ptr, ptr %i.k, align 8
  %46 = getelementptr inbounds nuw %struct.Token, ptr %i.ek, i32 0, i32 1
  %i.el = load ptr, ptr %46, align 8
  store ptr %i.el, ptr %i.k, align 8
  br label %bb.ai, !llvm.loop !40

bb.al:                                            ; preds = %bb.ai
  br label %bb.an

bb.am:                                            ; preds = %bb.ag
  %i.em = load ptr, ptr %i.i, align 8
  %i.en = call ptr @copy_token(ptr noundef %i.em) ; 2 uses
  %i.eo = load ptr, ptr %i.c, align 8
  %47 = getelementptr inbounds nuw %struct.Token, ptr %i.eo, i32 0, i32 1
  store ptr %i.en, ptr %47, align 8
  store ptr %i.en, ptr %i.c, align 8
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.al
  %i.ep = load ptr, ptr %i.i, align 8
  %48 = getelementptr inbounds nuw %struct.Token, ptr %i.ep, i32 0, i32 1
  %i.eq = load ptr, ptr %48, align 8
  store ptr %i.eq, ptr %i.a, align 8
  br label %bb.b, !llvm.loop !38

bb.ao:                                            ; preds = %bb.af
  %i.er = load ptr, ptr %i.h, align 8
  %49 = getelementptr inbounds nuw %struct.MacroArg, ptr %i.er, i32 0, i32 3
  %i.es = load ptr, ptr %49, align 8
  store ptr %i.es, ptr %i.l, align 8
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ar, %bb.ao
  %i.et = load ptr, ptr %i.l, align 8
  %50 = getelementptr inbounds nuw %struct.Token, ptr %i.et, i32 0, i32 0
  %i.eu = load i32, ptr %50, align 16
  %i.ev = icmp ne i32 %i.eu, 6
  br i1 %i.ev, label %bb.aq, label %bb.as

bb.aq:                                            ; preds = %bb.ap
  %i.ew = load ptr, ptr %i.l, align 8
  %i.ex = call ptr @copy_token(ptr noundef %i.ew) ; 2 uses
  %i.ey = load ptr, ptr %i.c, align 8
  %51 = getelementptr inbounds nuw %struct.Token, ptr %i.ey, i32 0, i32 1
  store ptr %i.ex, ptr %51, align 8
  store ptr %i.ex, ptr %i.c, align 8
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.ez = load ptr, ptr %i.l, align 8
  %52 = getelementptr inbounds nuw %struct.Token, ptr %i.ez, i32 0, i32 1
  %i.fa = load ptr, ptr %52, align 8
  store ptr %i.fa, ptr %i.l, align 8
  br label %bb.ap, !llvm.loop !41

bb.as:                                            ; preds = %bb.ap
  %i.fb = load ptr, ptr %i.a, align 8
  %53 = getelementptr inbounds nuw %struct.Token, ptr %i.fb, i32 0, i32 1
  %i.fc = load ptr, ptr %53, align 8
  store ptr %i.fc, ptr %i.a, align 8
  br label %bb.b, !llvm.loop !38

bb.at:                                            ; preds = %bb.ae, %bb.ad
  %i.fd = load ptr, ptr %i.a, align 8
  %i.fe = call zeroext i1 @equal(ptr noundef %i.fd, ptr noundef @.str.96)
  br i1 %i.fe, label %bb.au, label %bb.bc

bb.au:                                            ; preds = %bb.at
  %i.ff = load ptr, ptr %i.a, align 8
  %54 = getelementptr inbounds nuw %struct.Token, ptr %i.ff, i32 0, i32 1
  %i.fg = load ptr, ptr %54, align 8
  %i.fh = call zeroext i1 @equal(ptr noundef %i.fg, ptr noundef @.str.86)
  br i1 %i.fh, label %bb.av, label %bb.bc

bb.av:                                            ; preds = %bb.au
  %i.fi = load ptr, ptr %i.a, align 8
  %55 = getelementptr inbounds nuw %struct.Token, ptr %i.fi, i32 0, i32 1
  %i.fj = load ptr, ptr %55, align 8
  %56 = getelementptr inbounds nuw %struct.Token, ptr %i.fj, i32 0, i32 1
  %i.fk = load ptr, ptr %56, align 8
  %i.fl = call ptr @read_macro_arg_one(ptr noundef %i.a, ptr noundef %i.fk, i1 noundef zeroext true)
  store ptr %i.fl, ptr %i.m, align 8
  %i.fm = load ptr, ptr %i.b, align 8
  %i.fn = call zeroext i1 @has_varargs(ptr noundef %i.fm)
  br i1 %i.fn, label %bb.aw, label %bb.bb

bb.aw:                                            ; preds = %bb.av
  %i.fo = load ptr, ptr %i.m, align 8
  %57 = getelementptr inbounds nuw %struct.MacroArg, ptr %i.fo, i32 0, i32 3
  %i.fp = load ptr, ptr %57, align 8
  store ptr %i.fp, ptr %i.n, align 8
  br label %bb.ax

bb.ax:                                            ; preds = %bb.az, %bb.aw
  %i.fq = load ptr, ptr %i.n, align 8
  %58 = getelementptr inbounds nuw %struct.Token, ptr %i.fq, i32 0, i32 0
  %i.fr = load i32, ptr %58, align 16
  %i.fs = icmp ne i32 %i.fr, 6
  br i1 %i.fs, label %bb.ay, label %bb.ba

bb.ay:                                            ; preds = %bb.ax
  %i.ft = load ptr, ptr %i.n, align 8             ; 2 uses
  %i.fu = load ptr, ptr %i.c, align 8
  %59 = getelementptr inbounds nuw %struct.Token, ptr %i.fu, i32 0, i32 1
  store ptr %i.ft, ptr %59, align 8
  store ptr %i.ft, ptr %i.c, align 8
  br label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.fv = load ptr, ptr %i.n, align 8
  %60 = getelementptr inbounds nuw %struct.Token, ptr %i.fv, i32 0, i32 1
  %i.fw = load ptr, ptr %60, align 8
  store ptr %i.fw, ptr %i.n, align 8
  br label %bb.ax, !llvm.loop !42

bb.ba:                                            ; preds = %bb.ax
  br label %bb.bb

bb.bb:                                            ; preds = %bb.ba, %bb.av
  %i.fx = load ptr, ptr %i.a, align 8
  %i.fy = call ptr @skip(ptr noundef %i.fx, ptr noundef @.str.88)
  store ptr %i.fy, ptr %i.a, align 8
  br label %bb.b, !llvm.loop !38

bb.bc:                                            ; preds = %bb.au, %bb.at
  %i.fz = load ptr, ptr %i.h, align 8
  %i.ga = icmp ne ptr %i.fz, null
  br i1 %i.ga, label %bb.bd, label %bb.bi

bb.bd:                                            ; preds = %bb.bc
  %i.gb = load ptr, ptr %i.h, align 8
  %61 = getelementptr inbounds nuw %struct.MacroArg, ptr %i.gb, i32 0, i32 3
  %i.gc = load ptr, ptr %61, align 8
  %i.gd = call ptr @preprocess2(ptr noundef %i.gc)
  store ptr %i.gd, ptr %i.o, align 8
  %i.ge = load ptr, ptr %i.a, align 8
  %62 = getelementptr inbounds nuw %struct.Token, ptr %i.ge, i32 0, i32 12
  %i.gf = load i8, ptr %62, align 8
  %i.gg = icmp ne i8 %i.gf, 0
  %i.gh = load ptr, ptr %i.o, align 8
  %63 = getelementptr inbounds nuw %struct.Token, ptr %i.gh, i32 0, i32 12
  %i.gi = zext i1 %i.gg to i8
  store i8 %i.gi, ptr %63, align 8
  %i.gj = load ptr, ptr %i.a, align 8
  %64 = getelementptr inbounds nuw %struct.Token, ptr %i.gj, i32 0, i32 13
  %i.gk = load i8, ptr %64, align 1
  %i.gl = icmp ne i8 %i.gk, 0
  %i.gm = load ptr, ptr %i.o, align 8
  %65 = getelementptr inbounds nuw %struct.Token, ptr %i.gm, i32 0, i32 13
  %i.gn = zext i1 %i.gl to i8
  store i8 %i.gn, ptr %65, align 1
  br label %bb.be

bb.be:                                            ; preds = %bb.bg, %bb.bd
  %i.go = load ptr, ptr %i.o, align 8
  %66 = getelementptr inbounds nuw %struct.Token, ptr %i.go, i32 0, i32 0
  %i.gp = load i32, ptr %66, align 16
  %i.gq = icmp ne i32 %i.gp, 6
  br i1 %i.gq, label %bb.bf, label %bb.bh

bb.bf:                                            ; preds = %bb.be
  %i.gr = load ptr, ptr %i.o, align 8
  %i.gs = call ptr @copy_token(ptr noundef %i.gr) ; 2 uses
  %i.gt = load ptr, ptr %i.c, align 8
  %67 = getelementptr inbounds nuw %struct.Token, ptr %i.gt, i32 0, i32 1
  store ptr %i.gs, ptr %67, align 8
  store ptr %i.gs, ptr %i.c, align 8
  br label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.gu = load ptr, ptr %i.o, align 8
  %68 = getelementptr inbounds nuw %struct.Token, ptr %i.gu, i32 0, i32 1
  %i.gv = load ptr, ptr %68, align 8
  store ptr %i.gv, ptr %i.o, align 8
  br label %bb.be, !llvm.loop !43

bb.bh:                                            ; preds = %bb.be
  %i.gw = load ptr, ptr %i.a, align 8
  %69 = getelementptr inbounds nuw %struct.Token, ptr %i.gw, i32 0, i32 1
  %i.gx = load ptr, ptr %69, align 8
  store ptr %i.gx, ptr %i.a, align 8
  br label %bb.b, !llvm.loop !38

bb.bi:                                            ; preds = %bb.bc
  %i.gy = load ptr, ptr %i.a, align 8
  %i.gz = call ptr @copy_token(ptr noundef %i.gy) ; 2 uses
  %i.ha = load ptr, ptr %i.c, align 8
  %70 = getelementptr inbounds nuw %struct.Token, ptr %i.ha, i32 0, i32 1
  store ptr %i.gz, ptr %70, align 8
  store ptr %i.gz, ptr %i.c, align 8
  %i.hb = load ptr, ptr %i.a, align 8
  %71 = getelementptr inbounds nuw %struct.Token, ptr %i.hb, i32 0, i32 1
  %i.hc = load ptr, ptr %71, align 8
  store ptr %i.hc, ptr %i.a, align 8
  br label %bb.b, !llvm.loop !38

bb.bj:                                            ; preds = %bb.b
  %i.hd = load ptr, ptr %i.a, align 8
  %i.he = load ptr, ptr %i.c, align 8
  %72 = getelementptr inbounds nuw %struct.Token, ptr %i.he, i32 0, i32 1
  store ptr %i.hd, ptr %72, align 8
  %73 = getelementptr inbounds nuw %struct.Token, ptr %2, i32 0, i32 1
  %i.hf = load ptr, ptr %73, align 8
  ret ptr %i.hf
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #8

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strncmp(ptr noundef captures(none), ptr noundef captures(none), i64 noundef) local_unnamed_addr #8

; Function Attrs: noinline nounwind optnone uwtable
define internal ptr @copy_token(ptr noundef %0) unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 2 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  store ptr %0, ptr %i.a, align 8
  %i.c = call noalias ptr @calloc(i64 noundef 1, i64 noundef 128) #12
  store ptr %i.c, ptr %i.b, align 8
  %i.d = load ptr, ptr %i.b, align 8
  %i.e = load ptr, ptr %i.a, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 16 %i.d, ptr align 16 %i.e, i64 128, i1 false)
  %i.f = load ptr, ptr %i.b, align 8
  %1 = getelementptr inbounds nuw %struct.Token, ptr %i.f, i32 0, i32 1
  store ptr null, ptr %1, align 8
  %i.g = load ptr, ptr %i.b, align 8
  ret ptr %i.g
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #9

declare ptr @skip(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optnone uwtable
define internal ptr @read_macro_arg_one(ptr noundef nonnull %0, ptr noundef %1, i1 noundef zeroext %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 2 uses
  %i.b = alloca ptr, align 8                      ; 12 uses
  %i.c = alloca i8, align 1                       ; 2 uses
  %3 = alloca %struct.Token, align 16             ; 3 uses
  %i.d = alloca ptr, align 8                      ; 4 uses
  %i.e = alloca i32, align 4                      ; 7 uses
  %i.f = alloca ptr, align 8                      ; 3 uses
  store ptr %0, ptr %i.a, align 8
  store ptr %1, ptr %i.b, align 8
  %i.g = zext i1 %2 to i8
  store i8 %i.g, ptr %i.c, align 1
  call void @llvm.memset.p0.i64(ptr align 16 %3, i8 0, i64 128, i1 false)
  store ptr %3, ptr %i.d, align 8
  store i32 0, ptr %i.e, align 4
  br label %bb.b

bb.b:                                             ; preds = %bb.p, %bb.a
  %i.h = load i32, ptr %i.e, align 4
  %i.i = icmp eq i32 %i.h, 0
  br i1 %i.i, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.j = load ptr, ptr %i.b, align 8
  %i.k = call zeroext i1 @equal(ptr noundef %i.j, ptr noundef @.str.88)
  br i1 %i.k, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  br label %bb.q

bb.e:                                             ; preds = %bb.c, %bb.b
  %i.l = load i32, ptr %i.e, align 4
  %i.m = icmp eq i32 %i.l, 0
  br i1 %i.m, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  %i.n = load i8, ptr %i.c, align 1
  %i.o = icmp ne i8 %i.n, 0
  br i1 %i.o, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.p = load ptr, ptr %i.b, align 8
  %i.q = call zeroext i1 @equal(ptr noundef %i.p, ptr noundef @.str.87)
  br i1 %i.q, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  br label %bb.q

bb.i:                                             ; preds = %bb.g, %bb.f, %bb.e
  %i.r = load ptr, ptr %i.b, align 8
  %4 = getelementptr inbounds nuw %struct.Token, ptr %i.r, i32 0, i32 0
  %i.s = load i32, ptr %4, align 16
  %i.t = icmp eq i32 %i.s, 6
  br i1 %i.t, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.u = load ptr, ptr %i.b, align 8
  call void (ptr, ptr, ...) @error_tok(ptr noundef %i.u, ptr noundef @.str.90) #14
  unreachable

bb.k:                                             ; preds = %bb.i
  %i.v = load ptr, ptr %i.b, align 8
  %i.w = call zeroext i1 @equal(ptr noundef %i.v, ptr noundef @.str.86)
  br i1 %i.w, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.x = load i32, ptr %i.e, align 4
  %i.y = add nsw i32 %i.x, 1
  store i32 %i.y, ptr %i.e, align 4
  br label %bb.p

bb.m:                                             ; preds = %bb.k
  %i.z = load ptr, ptr %i.b, align 8
  %i.aa = call zeroext i1 @equal(ptr noundef %i.z, ptr noundef @.str.88)
  br i1 %i.aa, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.ab = load i32, ptr %i.e, align 4
  %i.ac = add nsw i32 %i.ab, -1
  store i32 %i.ac, ptr %i.e, align 4
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.l
  %i.ad = load ptr, ptr %i.b, align 8
  %i.ae = call ptr @copy_token(ptr noundef %i.ad) ; 2 uses
  %i.af = load ptr, ptr %i.d, align 8
  %5 = getelementptr inbounds nuw %struct.Token, ptr %i.af, i32 0, i32 1
  store ptr %i.ae, ptr %5, align 8
  store ptr %i.ae, ptr %i.d, align 8
  %i.ag = load ptr, ptr %i.b, align 8
  %6 = getelementptr inbounds nuw %struct.Token, ptr %i.ag, i32 0, i32 1
  %i.ah = load ptr, ptr %6, align 8
  store ptr %i.ah, ptr %i.b, align 8
  br label %bb.b

bb.q:                                             ; preds = %bb.h, %bb.d
  %i.ai = load ptr, ptr %i.b, align 8
  %i.aj = call ptr @new_eof(ptr noundef %i.ai)
  %i.ak = load ptr, ptr %i.d, align 8
  %7 = getelementptr inbounds nuw %struct.Token, ptr %i.ak, i32 0, i32 1
  store ptr %i.aj, ptr %7, align 8
  %i.al = call noalias ptr @calloc(i64 noundef 1, i64 noundef 32) #12
  store ptr %i.al, ptr %i.f, align 8
  %8 = getelementptr inbounds nuw %struct.Token, ptr %3, i32 0, i32 1
  %i.am = load ptr, ptr %8, align 8
  %i.an = load ptr, ptr %i.f, align 8
  %9 = getelementptr inbounds nuw %struct.MacroArg, ptr %i.an, i32 0, i32 3
  store ptr %i.am, ptr %9, align 8
  %i.ao = load ptr, ptr %i.b, align 8
  %i.ap = load ptr, ptr %i.a, align 8
  store ptr %i.ao, ptr %i.ap, align 8
  %i.aq = load ptr, ptr %i.f, align 8
  ret ptr %i.aq
}

; Function Attrs: noinline nounwind optnone uwtable
define internal ptr @new_eof(ptr noundef %0) unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 2 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  store ptr %0, ptr %i.a, align 8
  %i.c = load ptr, ptr %i.a, align 8
  %i.d = call ptr @copy_token(ptr noundef %i.c)
  store ptr %i.d, ptr %i.b, align 8
  %i.e = load ptr, ptr %i.b, align 8
  %1 = getelementptr inbounds nuw %struct.Token, ptr %i.e, i32 0, i32 0
  store i32 6, ptr %1, align 16
  %i.f = load ptr, ptr %i.b, align 8
  %2 = getelementptr inbounds nuw %struct.Token, ptr %i.f, i32 0, i32 5
  store i32 0, ptr %2, align 8
  %i.g = load ptr, ptr %i.b, align 8
  ret ptr %i.g
}

; Function Attrs: noinline nounwind optnone uwtable
define internal ptr @find_arg(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 3 uses
  %i.b = alloca ptr, align 8                      ; 2 uses
  %i.c = alloca ptr, align 8                      ; 4 uses
  %i.d = alloca ptr, align 8                      ; 7 uses
  store ptr %0, ptr %i.b, align 8
  store ptr %1, ptr %i.c, align 8
  %i.e = load ptr, ptr %i.b, align 8
  store ptr %i.e, ptr %i.d, align 8
  br label %bb.b

bb.b:                                             ; preds = %bb.g, %bb.a
  %i.f = load ptr, ptr %i.d, align 8
  %i.g = icmp ne ptr %i.f, null
  br i1 %i.g, label %bb.c, label %bb.h

bb.c:                                             ; preds = %bb.b
  %i.h = load ptr, ptr %i.c, align 8
  %2 = getelementptr inbounds nuw %struct.Token, ptr %i.h, i32 0, i32 5
end_hunk_2
begin_hunk_3_@join_tokens:bb.a
  %i.ar = load ptr, ptr %i.g, align 8
  %7 = getelementptr inbounds nuw %struct.Token, ptr %i.ar, i32 0, i32 13
  %i.as = load i8, ptr %7, align 1
  %i.at = icmp ne i8 %i.as, 0
  br i1 %i.at, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.au = load ptr, ptr %i.e, align 8
  %i.av = load i32, ptr %i.f, align 4             ; 2 uses
  %i.aw = add nsw i32 %i.av, 1
  store i32 %i.aw, ptr %i.f, align 4
  %i.ax = sext i32 %i.av to i64
  %i.ay = getelementptr inbounds i8, ptr %i.au, i64 %i.ax
  store i8 32, ptr %i.ay, align 1
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o, %bb.n
  %i.az = load ptr, ptr %i.e, align 8
  %i.ba = load i32, ptr %i.f, align 4
  %i.bb = sext i32 %i.ba to i64
  %i.bc = getelementptr inbounds i8, ptr %i.az, i64 %i.bb
  %i.bd = load ptr, ptr %i.g, align 8
  %8 = getelementptr inbounds nuw %struct.Token, ptr %i.bd, i32 0, i32 4
  %i.be = load ptr, ptr %8, align 16
  %i.bf = load ptr, ptr %i.g, align 8
  %9 = getelementptr inbounds nuw %struct.Token, ptr %i.bf, i32 0, i32 5
  %i.bg = load i32, ptr %9, align 8
  %i.bh = sext i32 %i.bg to i64
  %i.bi = call ptr @strncpy(ptr noundef %i.bc, ptr noundef %i.be, i64 noundef %i.bh) #13 ; 0 uses
  %i.bj = load ptr, ptr %i.g, align 8
  %10 = getelementptr inbounds nuw %struct.Token, ptr %i.bj, i32 0, i32 5
  %i.bk = load i32, ptr %10, align 8
  %i.bl = load i32, ptr %i.f, align 4
  %i.bm = add nsw i32 %i.bl, %i.bk
  store i32 %i.bm, ptr %i.f, align 4
  br label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bn = load ptr, ptr %i.g, align 8
  %11 = getelementptr inbounds nuw %struct.Token, ptr %i.bn, i32 0, i32 1
  %i.bo = load ptr, ptr %11, align 8
  store ptr %i.bo, ptr %i.g, align 8
  br label %bb.k, !llvm.loop !47

bb.s:                                             ; preds = %bb.m
  %i.bp = load ptr, ptr %i.e, align 8
  %i.bq = load i32, ptr %i.f, align 4
  %i.br = sext i32 %i.bq to i64
  %i.bs = getelementptr inbounds i8, ptr %i.bp, i64 %i.br
  store i8 0, ptr %i.bs, align 1
  %i.bt = load ptr, ptr %i.e, align 8
  ret ptr %i.bt
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare ptr @strncpy(ptr noalias noundef returned writeonly, ptr noalias noundef readonly captures(none), i64 noundef) local_unnamed_addr #10

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #8

; Function Attrs: noinline nounwind optnone uwtable
define internal ptr @copy_line(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 2 uses
  %i.b = alloca ptr, align 8                      ; 7 uses
  %2 = alloca %struct.Token, align 16             ; 3 uses
  %i.c = alloca ptr, align 8                      ; 4 uses
  store ptr %0, ptr %i.a, align 8
  store ptr %1, ptr %i.b, align 8
  call void @llvm.memset.p0.i64(ptr align 16 %2, i8 0, i64 128, i1 false)
  store ptr %2, ptr %i.c, align 8
  br label %bb.b

bb.b:                                             ; preds = %bb.d, %bb.a
  %i.d = load ptr, ptr %i.b, align 8
  %3 = getelementptr inbounds nuw %struct.Token, ptr %i.d, i32 0, i32 12
  %i.e = load i8, ptr %3, align 8
  %i.f = icmp ne i8 %i.e, 0
  %i.g = xor i1 %i.f, true
  br i1 %i.g, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.h = load ptr, ptr %i.b, align 8
  %i.i = call ptr @copy_token(ptr noundef %i.h)   ; 2 uses
  %i.j = load ptr, ptr %i.c, align 8
  %4 = getelementptr inbounds nuw %struct.Token, ptr %i.j, i32 0, i32 1
  store ptr %i.i, ptr %4, align 8
  store ptr %i.i, ptr %i.c, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = load ptr, ptr %i.b, align 8
  %5 = getelementptr inbounds nuw %struct.Token, ptr %i.k, i32 0, i32 1
  %i.l = load ptr, ptr %5, align 8
  store ptr %i.l, ptr %i.b, align 8
  br label %bb.b, !llvm.loop !48

bb.e:                                             ; preds = %bb.b
  %i.m = load ptr, ptr %i.b, align 8
  %i.n = call ptr @new_eof(ptr noundef %i.m)
  %i.o = load ptr, ptr %i.c, align 8
  %6 = getelementptr inbounds nuw %struct.Token, ptr %i.o, i32 0, i32 1
  store ptr %i.n, ptr %6, align 8
  %i.p = load ptr, ptr %i.b, align 8
  %i.q = load ptr, ptr %i.a, align 8
  store ptr %i.p, ptr %i.q, align 8
  %7 = getelementptr inbounds nuw %struct.Token, ptr %2, i32 0, i32 1
  %i.r = load ptr, ptr %7, align 8
  ret ptr %i.r
}

declare ptr @tokenize_file(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare ptr @strerror(i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__errno_location() local_unnamed_addr #11

; Function Attrs: noinline nounwind optnone uwtable
define internal ptr @detect_include_guard(ptr noundef %0) unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 6 uses
  %i.b = alloca ptr, align 8                      ; 26 uses
  %i.c = alloca ptr, align 8                      ; 3 uses
  store ptr %0, ptr %i.b, align 8
  %i.d = load ptr, ptr %i.b, align 8
  %i.e = call zeroext i1 @is_hash(ptr noundef %i.d)
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %i.b, align 8
  %1 = getelementptr inbounds nuw %struct.Token, ptr %i.f, i32 0, i32 1
  %i.g = load ptr, ptr %1, align 8
  %i.h = call zeroext i1 @equal(ptr noundef %i.g, ptr noundef @.str.74)
  br i1 %i.h, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  store ptr null, ptr %i.a, align 8
  br label %bb.x

bb.d:                                             ; preds = %bb.b
  %i.i = load ptr, ptr %i.b, align 8
  %2 = getelementptr inbounds nuw %struct.Token, ptr %i.i, i32 0, i32 1
  %i.j = load ptr, ptr %2, align 8
  %3 = getelementptr inbounds nuw %struct.Token, ptr %i.j, i32 0, i32 1
  %i.k = load ptr, ptr %3, align 8
  store ptr %i.k, ptr %i.b, align 8
  %i.l = load ptr, ptr %i.b, align 8
  %4 = getelementptr inbounds nuw %struct.Token, ptr %i.l, i32 0, i32 0
  %i.m = load i32, ptr %4, align 16
  %i.n = icmp ne i32 %i.m, 0
  br i1 %i.n, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  store ptr null, ptr %i.a, align 8
  br label %bb.x

bb.f:                                             ; preds = %bb.d
  %i.o = load ptr, ptr %i.b, align 8
  %5 = getelementptr inbounds nuw %struct.Token, ptr %i.o, i32 0, i32 4
  %i.p = load ptr, ptr %5, align 16
  %i.q = load ptr, ptr %i.b, align 8
  %6 = getelementptr inbounds nuw %struct.Token, ptr %i.q, i32 0, i32 5
  %i.r = load i32, ptr %6, align 8
  %i.s = sext i32 %i.r to i64
  %i.t = call noalias ptr @strndup(ptr noundef %i.p, i64 noundef %i.s) #13
  store ptr %i.t, ptr %i.c, align 8
  %i.u = load ptr, ptr %i.b, align 8
  %7 = getelementptr inbounds nuw %struct.Token, ptr %i.u, i32 0, i32 1
  %i.v = load ptr, ptr %7, align 8
  store ptr %i.v, ptr %i.b, align 8
  %i.w = load ptr, ptr %i.b, align 8
  %i.x = call zeroext i1 @is_hash(ptr noundef %i.w)
  br i1 %i.x, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.y = load ptr, ptr %i.b, align 8
  %8 = getelementptr inbounds nuw %struct.Token, ptr %i.y, i32 0, i32 1
  %i.z = load ptr, ptr %8, align 8
  %i.aa = call zeroext i1 @equal(ptr noundef %i.z, ptr noundef @.str.69)
  br i1 %i.aa, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ab = load ptr, ptr %i.b, align 8
  %9 = getelementptr inbounds nuw %struct.Token, ptr %i.ab, i32 0, i32 1
  %i.ac = load ptr, ptr %9, align 8
  %10 = getelementptr inbounds nuw %struct.Token, ptr %i.ac, i32 0, i32 1
  %i.ad = load ptr, ptr %10, align 8
  %i.ae = load ptr, ptr %i.c, align 8
  %i.af = call zeroext i1 @equal(ptr noundef %i.ad, ptr noundef %i.ae)
  br i1 %i.af, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %bb.f
  store ptr null, ptr %i.a, align 8
  br label %bb.x

bb.j:                                             ; preds = %bb.h
  br label %bb.k

bb.k:                                             ; preds = %bb.v, %bb.m, %bb.j
  %i.ag = load ptr, ptr %i.b, align 8
  %11 = getelementptr inbounds nuw %struct.Token, ptr %i.ag, i32 0, i32 0
  %i.ah = load i32, ptr %11, align 16
  %i.ai = icmp ne i32 %i.ah, 6
  br i1 %i.ai, label %bb.l, label %bb.w

bb.l:                                             ; preds = %bb.k
  %i.aj = load ptr, ptr %i.b, align 8
  %i.ak = call zeroext i1 @is_hash(ptr noundef %i.aj)
  br i1 %i.ak, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.al = load ptr, ptr %i.b, align 8
  %12 = getelementptr inbounds nuw %struct.Token, ptr %i.al, i32 0, i32 1
  %i.am = load ptr, ptr %12, align 8
  store ptr %i.am, ptr %i.b, align 8
  br label %bb.k, !llvm.loop !49

bb.n:                                             ; preds = %bb.l
  %i.an = load ptr, ptr %i.b, align 8
  %13 = getelementptr inbounds nuw %struct.Token, ptr %i.an, i32 0, i32 1
  %i.ao = load ptr, ptr %13, align 8
  %i.ap = call zeroext i1 @equal(ptr noundef %i.ao, ptr noundef @.str.79)
  br i1 %i.ap, label %bb.o, label %bb.q

bb.o:                                             ; preds = %bb.n
  %i.aq = load ptr, ptr %i.b, align 8
  %14 = getelementptr inbounds nuw %struct.Token, ptr %i.aq, i32 0, i32 1
  %i.ar = load ptr, ptr %14, align 8
  %15 = getelementptr inbounds nuw %struct.Token, ptr %i.ar, i32 0, i32 1
  %i.as = load ptr, ptr %15, align 8
  %16 = getelementptr inbounds nuw %struct.Token, ptr %i.as, i32 0, i32 0
  %i.at = load i32, ptr %16, align 16
  %i.au = icmp eq i32 %i.at, 6
  br i1 %i.au, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.av = load ptr, ptr %i.c, align 8
  store ptr %i.av, ptr %i.a, align 8
  br label %bb.x

bb.q:                                             ; preds = %bb.o, %bb.n
  %i.aw = load ptr, ptr %i.b, align 8
  %i.ax = call zeroext i1 @equal(ptr noundef %i.aw, ptr noundef @.str.72)
  br i1 %i.ax, label %bb.t, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ay = load ptr, ptr %i.b, align 8
  %i.az = call zeroext i1 @equal(ptr noundef %i.ay, ptr noundef @.str.73)
  br i1 %i.az, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ba = load ptr, ptr %i.b, align 8
  %i.bb = call zeroext i1 @equal(ptr noundef %i.ba, ptr noundef @.str.74)
  br i1 %i.bb, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s, %bb.r, %bb.q
  %i.bc = load ptr, ptr %i.b, align 8
  %17 = getelementptr inbounds nuw %struct.Token, ptr %i.bc, i32 0, i32 1
  %i.bd = load ptr, ptr %17, align 8
  %i.be = call ptr @skip_cond_incl(ptr noundef %i.bd)
  store ptr %i.be, ptr %i.b, align 8
  br label %bb.v

bb.u:                                             ; preds = %bb.s
  %i.bf = load ptr, ptr %i.b, align 8
  %18 = getelementptr inbounds nuw %struct.Token, ptr %i.bf, i32 0, i32 1
  %i.bg = load ptr, ptr %18, align 8
  store ptr %i.bg, ptr %i.b, align 8
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  br label %bb.k, !llvm.loop !49

bb.w:                                             ; preds = %bb.k
  store ptr null, ptr %i.a, align 8
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.p, %bb.i, %bb.e, %bb.c
  %i.bh = load ptr, ptr %i.a, align 8
  ret ptr %i.bh
}

; Function Attrs: noinline nounwind optnone uwtable
define internal ptr @read_macro_params(ptr noundef nonnull %0, ptr noundef %1, ptr noundef nonnull %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %i.c = alloca ptr, align 8                      ; 17 uses
  %i.d = alloca ptr, align 8                      ; 3 uses
  %3 = alloca %struct.MacroParam, align 8         ; 6 uses
  %i.e = alloca ptr, align 8                      ; 4 uses
  %i.f = alloca ptr, align 8                      ; 3 uses
  store ptr %0, ptr %i.b, align 8
  store ptr %1, ptr %i.c, align 8
  store ptr %2, ptr %i.d, align 8
  call void @llvm.memset.p0.i64(ptr align 8 %3, i8 0, i64 16, i1 false)
  store ptr %3, ptr %i.e, align 8
  br label %bb.b

bb.b:                                             ; preds = %bb.k, %bb.a
  %i.g = load ptr, ptr %i.c, align 8
  %i.h = call zeroext i1 @equal(ptr noundef %i.g, ptr noundef @.str.88)
  %i.i = xor i1 %i.h, true
  br i1 %i.i, label %bb.c, label %bb.l

bb.c:                                             ; preds = %bb.b
  %i.j = load ptr, ptr %i.e, align 8
  %i.k = icmp ne ptr %i.j, %3
  br i1 %i.k, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.l = load ptr, ptr %i.c, align 8
  %i.m = call ptr @skip(ptr noundef %i.l, ptr noundef @.str.87)
  store ptr %i.m, ptr %i.c, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.n = load ptr, ptr %i.c, align 8
  %i.o = call zeroext i1 @equal(ptr noundef %i.n, ptr noundef @.str.105)
  br i1 %i.o, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.p = load ptr, ptr %i.d, align 8
  store ptr @.str.99, ptr %i.p, align 8
  %i.q = load ptr, ptr %i.c, align 8
  %4 = getelementptr inbounds nuw %struct.Token, ptr %i.q, i32 0, i32 1
  %i.r = load ptr, ptr %4, align 8
  %i.s = call ptr @skip(ptr noundef %i.r, ptr noundef @.str.88)
  %i.t = load ptr, ptr %i.b, align 8
  store ptr %i.s, ptr %i.t, align 8
  %5 = getelementptr inbounds nuw %struct.MacroParam, ptr %3, i32 0, i32 0
  %i.u = load ptr, ptr %5, align 8
  store ptr %i.u, ptr %i.a, align 8
  br label %bb.m

bb.g:                                             ; preds = %bb.e
  %i.v = load ptr, ptr %i.c, align 8
  %6 = getelementptr inbounds nuw %struct.Token, ptr %i.v, i32 0, i32 0
  %i.w = load i32, ptr %6, align 16
  %i.x = icmp ne i32 %i.w, 0
  br i1 %i.x, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.y = load ptr, ptr %i.c, align 8
  call void (ptr, ptr, ...) @error_tok(ptr noundef %i.y, ptr noundef @.str.106) #14
  unreachable

bb.i:                                             ; preds = %bb.g
  %i.z = load ptr, ptr %i.c, align 8
  %7 = getelementptr inbounds nuw %struct.Token, ptr %i.z, i32 0, i32 1
  %i.aa = load ptr, ptr %7, align 8
  %i.ab = call zeroext i1 @equal(ptr noundef %i.aa, ptr noundef @.str.105)
  br i1 %i.ab, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ac = load ptr, ptr %i.c, align 8
  %8 = getelementptr inbounds nuw %struct.Token, ptr %i.ac, i32 0, i32 4
  %i.ad = load ptr, ptr %8, align 16
  %i.ae = load ptr, ptr %i.c, align 8
  %9 = getelementptr inbounds nuw %struct.Token, ptr %i.ae, i32 0, i32 5
  %i.af = load i32, ptr %9, align 8
  %i.ag = sext i32 %i.af to i64
  %i.ah = call noalias ptr @strndup(ptr noundef %i.ad, i64 noundef %i.ag) #13
  %i.ai = load ptr, ptr %i.d, align 8
  store ptr %i.ah, ptr %i.ai, align 8
  %i.aj = load ptr, ptr %i.c, align 8
  %10 = getelementptr inbounds nuw %struct.Token, ptr %i.aj, i32 0, i32 1
  %i.ak = load ptr, ptr %10, align 8
  %11 = getelementptr inbounds nuw %struct.Token, ptr %i.ak, i32 0, i32 1
  %i.al = load ptr, ptr %11, align 8
  %i.am = call ptr @skip(ptr noundef %i.al, ptr noundef @.str.88)
  %i.an = load ptr, ptr %i.b, align 8
  store ptr %i.am, ptr %i.an, align 8
  %12 = getelementptr inbounds nuw %struct.MacroParam, ptr %3, i32 0, i32 0
  %i.ao = load ptr, ptr %12, align 8
  store ptr %i.ao, ptr %i.a, align 8
  br label %bb.m

bb.k:                                             ; preds = %bb.i
  %i.ap = call noalias ptr @calloc(i64 noundef 1, i64 noundef 16) #12
  store ptr %i.ap, ptr %i.f, align 8
  %i.aq = load ptr, ptr %i.c, align 8
  %13 = getelementptr inbounds nuw %struct.Token, ptr %i.aq, i32 0, i32 4
  %i.ar = load ptr, ptr %13, align 16
  %i.as = load ptr, ptr %i.c, align 8
  %14 = getelementptr inbounds nuw %struct.Token, ptr %i.as, i32 0, i32 5
  %i.at = load i32, ptr %14, align 8
  %i.au = sext i32 %i.at to i64
  %i.av = call noalias ptr @strndup(ptr noundef %i.ar, i64 noundef %i.au) #13
  %i.aw = load ptr, ptr %i.f, align 8
  %15 = getelementptr inbounds nuw %struct.MacroParam, ptr %i.aw, i32 0, i32 1
  store ptr %i.av, ptr %15, align 8
  %i.ax = load ptr, ptr %i.f, align 8             ; 2 uses
  %i.ay = load ptr, ptr %i.e, align 8
  %16 = getelementptr inbounds nuw %struct.MacroParam, ptr %i.ay, i32 0, i32 0
  store ptr %i.ax, ptr %16, align 8
  store ptr %i.ax, ptr %i.e, align 8
  %i.az = load ptr, ptr %i.c, align 8
  %17 = getelementptr inbounds nuw %struct.Token, ptr %i.az, i32 0, i32 1
  %i.ba = load ptr, ptr %17, align 8
  store ptr %i.ba, ptr %i.c, align 8
  br label %bb.b, !llvm.loop !50

bb.l:                                             ; preds = %bb.b
  %i.bb = load ptr, ptr %i.c, align 8
  %18 = getelementptr inbounds nuw %struct.Token, ptr %i.bb, i32 0, i32 1
  %i.bc = load ptr, ptr %18, align 8
  %i.bd = load ptr, ptr %i.b, align 8
  store ptr %i.bc, ptr %i.bd, align 8
  %19 = getelementptr inbounds nuw %struct.MacroParam, ptr %3, i32 0, i32 0
  %i.be = load ptr, ptr %19, align 8
  store ptr %i.be, ptr %i.a, align 8
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.j, %bb.f
  %i.bf = load ptr, ptr %i.a, align 8
  ret ptr %i.bf
}

declare void @warn_tok(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: noinline nounwind optnone uwtable
define internal ptr @read_const_expr(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 2 uses
  %i.b = alloca ptr, align 8                      ; 18 uses
  %2 = alloca %struct.Token, align 16             ; 3 uses
  %i.c = alloca ptr, align 8                      ; 6 uses
  %i.d = alloca ptr, align 8                      ; 3 uses
  %i.e = alloca i8, align 1                       ; 2 uses
  %i.f = alloca ptr, align 8                      ; 2 uses
  store ptr %0, ptr %i.a, align 8
  store ptr %1, ptr %i.b, align 8
  %i.g = load ptr, ptr %i.a, align 8
  %i.h = load ptr, ptr %i.b, align 8
  %i.i = call ptr @copy_line(ptr noundef %i.g, ptr noundef %i.h)
  store ptr %i.i, ptr %i.b, align 8
  call void @llvm.memset.p0.i64(ptr align 16 %2, i8 0, i64 128, i1 false)
  store ptr %2, ptr %i.c, align 8
  br label %bb.b

bb.b:                                             ; preds = %bb.i, %bb.h, %bb.a
  %i.j = load ptr, ptr %i.b, align 8
  %3 = getelementptr inbounds nuw %struct.Token, ptr %i.j, i32 0, i32 0
  %i.k = load i32, ptr %3, align 16
  %i.l = icmp ne i32 %i.k, 6
  br i1 %i.l, label %bb.c, label %bb.j

bb.c:                                             ; preds = %bb.b
  %i.m = load ptr, ptr %i.b, align 8
  %i.n = call zeroext i1 @equal(ptr noundef %i.m, ptr noundef @.str.109)
  br i1 %i.n, label %bb.d, label %bb.i

bb.d:                                             ; preds = %bb.c
  %i.o = load ptr, ptr %i.b, align 8
  store ptr %i.o, ptr %i.d, align 8
  %i.p = load ptr, ptr %i.b, align 8
  %4 = getelementptr inbounds nuw %struct.Token, ptr %i.p, i32 0, i32 1
  %i.q = load ptr, ptr %4, align 8
  %i.r = call zeroext i1 @consume(ptr noundef %i.b, ptr noundef %i.q, ptr noundef @.str.86)
  %i.s = zext i1 %i.r to i8
  store i8 %i.s, ptr %i.e, align 1
  %i.t = load ptr, ptr %i.b, align 8
  %5 = getelementptr inbounds nuw %struct.Token, ptr %i.t, i32 0, i32 0
  %i.u = load i32, ptr %5, align 16
  %i.v = icmp ne i32 %i.u, 0
  br i1 %i.v, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.w = load ptr, ptr %i.d, align 8
  call void (ptr, ptr, ...) @error_tok(ptr noundef %i.w, ptr noundef @.str.71) #14
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.x = load ptr, ptr %i.b, align 8
  %i.y = call ptr @find_macro(ptr noundef %i.x)
  store ptr %i.y, ptr %i.f, align 8
  %i.z = load ptr, ptr %i.b, align 8
  %6 = getelementptr inbounds nuw %struct.Token, ptr %i.z, i32 0, i32 1
  %i.aa = load ptr, ptr %6, align 8
  store ptr %i.aa, ptr %i.b, align 8
  %i.ab = load i8, ptr %i.e, align 1
  %i.ac = icmp ne i8 %i.ab, 0
  br i1 %i.ac, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ad = load ptr, ptr %i.b, align 8
  %i.ae = call ptr @skip(ptr noundef %i.ad, ptr noundef @.str.88)
  store ptr %i.ae, ptr %i.b, align 8
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.af = load ptr, ptr %i.f, align 8
  %i.ag = icmp ne ptr %i.af, null                 ; 2 uses
  %i.ah = zext i1 %i.ag to i64                    ; 0 uses
  %i.ai = select i1 %i.ag, i32 1, i32 0
  %i.aj = load ptr, ptr %i.d, align 8
  %i.ak = call ptr @new_num_token(i32 noundef %i.ai, ptr noundef %i.aj) ; 2 uses
  %i.al = load ptr, ptr %i.c, align 8
  %7 = getelementptr inbounds nuw %struct.Token, ptr %i.al, i32 0, i32 1
  store ptr %i.ak, ptr %7, align 8
  store ptr %i.ak, ptr %i.c, align 8
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
  br label %bb.b, !llvm.loop !51

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

bb.b:                                             ; preds = %bb.k, %bb.g, %bb.a
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
  br label %bb.b, !llvm.loop !52

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
attributes #7 = { mustprogress nofree nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
end_hunk_3
