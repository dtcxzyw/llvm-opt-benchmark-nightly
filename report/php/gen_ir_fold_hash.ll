Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/php/original/gen_ir_fold_hash?download=true
begin_hunk_0_@ir_strtab_free
define dso_local void @ir_strtab_free(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 7 uses
  %i.b = alloca i32, align 4                      ; 2 uses
  %i.c = alloca ptr, align 8                      ; 2 uses
  store ptr %0, ptr %i.a, align 8
  %i.d = load ptr, ptr %i.a, align 8
  %1 = getelementptr inbounds nuw %struct._ir_strtab, ptr %i.d, i32 0, i32 1
  %i.e = load i32, ptr %1, align 8
  %i.f = sub nsw i32 0, %i.e
  store i32 %i.f, ptr %i.b, align 4
  %i.g = load ptr, ptr %i.a, align 8
  %2 = getelementptr inbounds nuw %struct._ir_strtab, ptr %i.g, i32 0, i32 0
  %i.h = load ptr, ptr %2, align 8
  %i.i = load i32, ptr %i.b, align 4
  %i.j = zext i32 %i.i to i64
  %i.k = mul nuw nsw i64 %i.j, 4
  %i.l = sub nsw i64 0, %i.k
  %i.m = getelementptr inbounds i8, ptr %i.h, i64 %i.l
  store ptr %i.m, ptr %i.c, align 8
  %i.n = load ptr, ptr %i.c, align 8
  call void @free(ptr noundef %i.n) #10
  %i.o = load ptr, ptr %i.a, align 8
  %3 = getelementptr inbounds nuw %struct._ir_strtab, ptr %i.o, i32 0, i32 0
  store ptr null, ptr %3, align 8
  %i.p = load ptr, ptr %i.a, align 8
  %4 = getelementptr inbounds nuw %struct._ir_strtab, ptr %i.p, i32 0, i32 5
  %i.q = load ptr, ptr %4, align 8
  %i.r = icmp ne ptr %i.q, null
  br i1 %i.r, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.s = load ptr, ptr %i.a, align 8
  %5 = getelementptr inbounds nuw %struct._ir_strtab, ptr %i.s, i32 0, i32 5
  %i.t = load ptr, ptr %5, align 8
  call void @free(ptr noundef %i.t) #10
  %i.u = load ptr, ptr %i.a, align 8
  %6 = getelementptr inbounds nuw %struct._ir_strtab, ptr %i.u, i32 0, i32 5
  store ptr null, ptr %6, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ir_strtab_apply(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 3 uses
  %i.b = alloca ptr, align 8                      ; 2 uses
  %i.c = alloca i32, align 4                      ; 5 uses
  %i.d = alloca ptr, align 8                      ; 4 uses
  store ptr %0, ptr %i.a, align 8
  store ptr %1, ptr %i.b, align 8
  store i32 0, ptr %i.c, align 4
  br label %bb.b

bb.b:                                             ; preds = %bb.d, %bb.a
  %i.e = load i32, ptr %i.c, align 4
  %i.f = load ptr, ptr %i.a, align 8
  %2 = getelementptr inbounds nuw %struct._ir_strtab, ptr %i.f, i32 0, i32 3
  %i.g = load i32, ptr %2, align 8
  %i.h = icmp ult i32 %i.e, %i.g
  br i1 %i.h, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.i = load ptr, ptr %i.a, align 8
  %3 = getelementptr inbounds nuw %struct._ir_strtab, ptr %i.i, i32 0, i32 0
  %i.j = load ptr, ptr %3, align 8
  %i.k = load i32, ptr %i.c, align 4
  %i.l = zext i32 %i.k to i64
  %4 = getelementptr inbounds nuw %struct._ir_strtab_bucket, ptr %i.j, i64 %i.l
  store ptr %4, ptr %i.d, align 8
  %i.m = load ptr, ptr %i.b, align 8
  %i.n = load ptr, ptr %i.d, align 8
  %5 = getelementptr inbounds nuw %struct._ir_strtab_bucket, ptr %i.n, i32 0, i32 2
  %i.o = load ptr, ptr %5, align 8
  %i.p = load ptr, ptr %i.d, align 8
  %6 = getelementptr inbounds nuw %struct._ir_strtab_bucket, ptr %i.p, i32 0, i32 1
  %i.q = load i32, ptr %6, align 4
  %i.r = load ptr, ptr %i.d, align 8
  %7 = getelementptr inbounds nuw %struct._ir_strtab_bucket, ptr %i.r, i32 0, i32 4
  %i.s = load i32, ptr %7, align 4
  call void %i.m(ptr noundef %i.o, i32 noundef %i.q, i32 noundef %i.s)
  br label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.t = load i32, ptr %i.c, align 4
  %i.u = add i32 %i.t, 1
  store i32 %i.u, ptr %i.c, align 4
  br label %bb.b, !llvm.loop !13

bb.e:                                             ; preds = %bb.b
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @print_hash(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 2 uses
  %i.b = alloca i32, align 4                      ; 3 uses
  %i.c = alloca i32, align 4                      ; 5 uses
  store ptr %0, ptr %i.a, align 8
  store i32 %1, ptr %i.b, align 4
  %i.d = load i32, ptr %i.b, align 4
  %i.e = add i32 %i.d, 1
  %i.f = call i32 (ptr, ...) @printf(ptr noundef @.str, i32 noundef %i.e) ; 0 uses
  store i32 0, ptr %i.c, align 4
  br label %bb.b

bb.b:                                             ; preds = %bb.d, %bb.a
  %i.g = load i32, ptr %i.c, align 4
  %i.h = load i32, ptr %i.b, align 4
  %i.i = icmp ult i32 %i.g, %i.h
  br i1 %i.i, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.j = load ptr, ptr %i.a, align 8
  %i.k = load i32, ptr %i.c, align 4
  %i.l = zext i32 %i.k to i64
  %i.m = getelementptr inbounds nuw i32, ptr %i.j, i64 %i.l
  %i.n = load i32, ptr %i.m, align 4
  %i.o = call i32 (ptr, ...) @printf(ptr noundef @.str.1, i32 noundef %i.n) ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.p = load i32, ptr %i.c, align 4
  %i.q = add i32 %i.p, 1
  store i32 %i.q, ptr %i.c, align 4
  br label %bb.b, !llvm.loop !14

bb.e:                                             ; preds = %bb.b
  %i.r = call i32 (ptr, ...) @printf(ptr noundef @.str.2, i32 noundef 0) ; 0 uses
  %i.s = call i32 (ptr, ...) @printf(ptr noundef @.str.3) ; 0 uses
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #6

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @find_hash(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 3 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca [8192 x i32], align 16            ; 8 uses
  %i.e = alloca i32, align 4                      ; 8 uses
  %i.f = alloca i32, align 4                      ; 6 uses
  %i.g = alloca i32, align 4                      ; 6 uses
  %i.h = alloca i32, align 4                      ; 8 uses
  %i.i = alloca i32, align 4                      ; 7 uses
  %i.j = alloca i32, align 4                      ; 3 uses
  store ptr %0, ptr %i.b, align 8
  store i32 %1, ptr %i.c, align 4
  %i.k = load i32, ptr %i.c, align 4
  %i.l = or i32 %i.k, 1
  store i32 %i.l, ptr %i.e, align 4
  br label %bb.b

bb.b:                                             ; preds = %bb.x, %bb.a
  %i.m = load i32, ptr %i.e, align 4
  %i.n = icmp ult i32 %i.m, 8192
  br i1 %i.n, label %bb.c, label %bb.y

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.j, align 4
  store i32 0, ptr %i.f, align 4
  br label %bb.d

bb.d:                                             ; preds = %bb.v, %bb.c
  %i.o = load i32, ptr %i.f, align 4
  %i.p = icmp ult i32 %i.o, 31
  br i1 %i.p, label %bb.e, label %bb.w

bb.e:                                             ; preds = %bb.d
  store i32 0, ptr %i.g, align 4
  br label %bb.f

bb.f:                                             ; preds = %bb.t, %bb.e
  %i.q = load i32, ptr %i.g, align 4
  %i.r = icmp ult i32 %i.q, 32
  br i1 %i.r, label %bb.g, label %bb.u

bb.g:                                             ; preds = %bb.f
  %i.s = getelementptr inbounds nuw [8192 x i32], ptr %i.d, i64 0, i64 0
  %i.t = load i32, ptr %i.e, align 4
  %i.u = zext i32 %i.t to i64
  %i.v = mul nuw nsw i64 %i.u, 4
  call void @llvm.memset.p0.i64(ptr align 16 %i.s, i8 0, i64 %i.v, i1 false)
  store i32 0, ptr %i.h, align 4
  br label %bb.h

bb.h:                                             ; preds = %bb.n, %bb.g
  %i.w = load i32, ptr %i.h, align 4
  %i.x = load i32, ptr %i.c, align 4
  %i.y = icmp ult i32 %i.w, %i.x
  br i1 %i.y, label %bb.i, label %.loopexit

bb.i:                                             ; preds = %bb.h
  %i.z = load ptr, ptr %i.b, align 8
  %i.aa = load i32, ptr %i.h, align 4
  %i.ab = zext i32 %i.aa to i64
  %i.ac = getelementptr inbounds nuw i32, ptr %i.z, i64 %i.ab
  %i.ad = load i32, ptr %i.ac, align 4
  %i.ae = and i32 %i.ad, 2097151
  %i.af = load i32, ptr %i.f, align 4
  %i.ag = load i32, ptr %i.g, align 4
  %i.ah = call i32 @hash_shl2(i32 noundef %i.ae, i32 noundef %i.af, i32 noundef %i.ag)
  %i.ai = load i32, ptr %i.e, align 4
  %i.aj = urem i32 %i.ah, %i.ai
  store i32 %i.aj, ptr %i.i, align 4
  %i.ak = load i32, ptr %i.i, align 4
  %i.al = zext i32 %i.ak to i64
  %i.am = getelementptr inbounds nuw [8192 x i32], ptr %i.d, i64 0, i64 %i.al
  %i.an = load i32, ptr %i.am, align 4
  %i.ao = icmp ne i32 %i.an, 0
  br i1 %i.ao, label %bb.j, label %bb.m

bb.j:                                             ; preds = %bb.i
  %i.ap = load i32, ptr %i.i, align 4
  %i.aq = add i32 %i.ap, 1
  store i32 %i.aq, ptr %i.i, align 4
  %i.ar = load i32, ptr %i.i, align 4
  %i.as = zext i32 %i.ar to i64
  %i.at = getelementptr inbounds nuw [8192 x i32], ptr %i.d, i64 0, i64 %i.as
  %i.au = load i32, ptr %i.at, align 4
  %i.av = icmp ne i32 %i.au, 0
  br i1 %i.av, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.aw = load ptr, ptr %i.b, align 8
  %i.ax = load i32, ptr %i.h, align 4
  %i.ay = zext i32 %i.ax to i64
  %i.az = getelementptr inbounds nuw i32, ptr %i.aw, i64 %i.ay
  %i.ba = load i32, ptr %i.az, align 4
  %i.bb = load i32, ptr %i.i, align 4
  %i.bc = zext i32 %i.bb to i64
  %i.bd = getelementptr inbounds nuw [8192 x i32], ptr %i.d, i64 0, i64 %i.bc
  store i32 %i.ba, ptr %i.bd, align 4
  store i32 1, ptr %i.j, align 4
  br label %bb.n

bb.l:                                             ; preds = %bb.j
  br label %bb.o

bb.m:                                             ; preds = %bb.i
  %i.be = load ptr, ptr %i.b, align 8
  %i.bf = load i32, ptr %i.h, align 4
  %i.bg = zext i32 %i.bf to i64
  %i.bh = getelementptr inbounds nuw i32, ptr %i.be, i64 %i.bg
  %i.bi = load i32, ptr %i.bh, align 4
  %i.bj = load i32, ptr %i.i, align 4
  %i.bk = zext i32 %i.bj to i64
  %i.bl = getelementptr inbounds nuw [8192 x i32], ptr %i.d, i64 0, i64 %i.bk
  store i32 %i.bi, ptr %i.bl, align 4
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.k
  %i.bm = load i32, ptr %i.h, align 4
  %i.bn = add i32 %i.bm, 1
  store i32 %i.bn, ptr %i.h, align 4
  br label %bb.h, !llvm.loop !15

.loopexit:                                        ; preds = %bb.h
  br label %bb.o

bb.o:                                             ; preds = %.loopexit, %bb.l
  %i.bo = load i32, ptr %i.h, align 4
  %i.bp = load i32, ptr %i.c, align 4
  %i.bq = icmp eq i32 %i.bo, %i.bp
  br i1 %i.bq, label %bb.p, label %bb.s

bb.p:                                             ; preds = %bb.o
  %i.br = getelementptr inbounds nuw [8192 x i32], ptr %i.d, i64 0, i64 0
  %i.bs = load i32, ptr %i.e, align 4
  call void @print_hash(ptr noundef %i.br, i32 noundef %i.bs)
  %i.bt = load i32, ptr %i.j, align 4
  %i.bu = icmp ne i32 %i.bt, 0
  br i1 %i.bu, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.bv = call i32 (ptr, ...) @printf(ptr noundef @.str.4) ; 0 uses
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.bw = load i32, ptr %i.f, align 4
  %i.bx = load i32, ptr %i.g, align 4
  %i.by = load i32, ptr %i.e, align 4
  %i.bz = call i32 (ptr, ...) @printf(ptr noundef @.str.5, i32 noundef %i.bw, i32 noundef %i.bx, i32 noundef %i.by) ; 0 uses
  store i32 1, ptr %i.a, align 4
  br label %bb.z

bb.s:                                             ; preds = %bb.o
  br label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ca = load i32, ptr %i.g, align 4
  %i.cb = add i32 %i.ca, 1
  store i32 %i.cb, ptr %i.g, align 4
  br label %bb.f, !llvm.loop !16

bb.u:                                             ; preds = %bb.f
  br label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.cc = load i32, ptr %i.f, align 4
  %i.cd = add i32 %i.cc, 1
  store i32 %i.cd, ptr %i.f, align 4
  br label %bb.d, !llvm.loop !17

bb.w:                                             ; preds = %bb.d
  br label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.ce = load i32, ptr %i.e, align 4
  %i.cf = add i32 %i.ce, 2
  store i32 %i.cf, ptr %i.e, align 4
  br label %bb.b, !llvm.loop !18

bb.y:                                             ; preds = %bb.b
  %i.cg = getelementptr inbounds nuw [8192 x i32], ptr %i.d, i64 0, i64 0
  store i32 0, ptr %i.cg, align 16
  %i.ch = getelementptr inbounds nuw [8192 x i32], ptr %i.d, i64 0, i64 0
  call void @print_hash(ptr noundef %i.ch, i32 noundef 1)
  %i.ci = call i32 (ptr, ...) @printf(ptr noundef @.str.6) ; 0 uses
  store i32 0, ptr %i.a, align 4
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.r
  %i.cj = load i32, ptr %i.a, align 4
  ret i32 %i.cj
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hash_shl2(i32 noundef range(i32 0, 2097152) %0, i32 noundef %1, i32 noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 3 uses
  %i.b = alloca i32, align 4                      ; 2 uses
  %i.c = alloca i32, align 4                      ; 2 uses
  store i32 %0, ptr %i.a, align 4
  store i32 %1, ptr %i.b, align 4
  store i32 %2, ptr %i.c, align 4
  %i.d = load i32, ptr %i.a, align 4
  %i.e = load i32, ptr %i.b, align 4
  %i.f = shl i32 %i.d, %i.e
  %i.g = load i32, ptr %i.a, align 4
  %i.h = sub i32 %i.f, %i.g
  %i.i = load i32, ptr %i.c, align 4
  %i.j = shl i32 %i.h, %i.i
  ret i32 %i.j
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 6 uses
  %i.b = alloca i32, align 4
  %i.c = alloca ptr, align 8
  %i.d = alloca [4096 x i8], align 16             ; 8 uses
  %i.e = alloca ptr, align 8                      ; 2 uses
  %i.f = alloca i32, align 4                      ; 5 uses
  %i.g = alloca i32, align 4                      ; 9 uses
  %i.h = alloca i32, align 4                      ; 8 uses
  %i.i = alloca [2048 x i32], align 16            ; 2 uses
  %i.j = alloca [2048 x i32], align 16            ; 2 uses
  %i.k = alloca i64, align 8                      ; 8 uses
  store i32 0, ptr %i.a, align 4
  store i32 %0, ptr %i.b, align 4
  store ptr %1, ptr %i.c, align 8
  %i.l = load ptr, ptr @stdin, align 8
  store ptr %i.l, ptr %i.e, align 8
  store i32 0, ptr %i.f, align 4
  store i32 0, ptr %i.g, align 4
  call void @ir_strtab_init(ptr noundef @strtab, i32 noundef 121, i32 noundef 0)
  %i.m = call i32 @ir_strtab_lookup(ptr noundef @strtab, ptr noundef @.str.7, i32 noundef 3, i32 noundef 1) ; 0 uses
  %i.n = call i32 @ir_strtab_lookup(ptr noundef @strtab, ptr noundef @.str.8, i32 noundef 6, i32 noundef 2) ; 0 uses
  %i.o = call i32 @ir_strtab_lookup(ptr noundef @strtab, ptr noundef @.str.9, i32 noundef 4, i32 noundef 3) ; 0 uses
  %i.p = call i32 @ir_strtab_lookup(ptr noundef @strtab, ptr noundef @.str.10, i32 noundef 5, i32 noundef 4) ; 0 uses
  %i.q = call i32 @ir_strtab_lookup(ptr noundef @strtab, ptr noundef @.str.11, i32 noundef 5, i32 noundef 5) ; 0 uses
  %i.r = call i32 @ir_strtab_lookup(ptr noundef @strtab, ptr noundef @.str.12, i32 noundef 5, i32 noundef 6) ; 0 uses
  %i.s = call i32 @ir_strtab_lookup(ptr noundef @strtab, ptr noundef @.str.13, i32 noundef 6, i32 noundef 7) ; 0 uses
  %i.t = call i32 @ir_strtab_lookup(ptr noundef @strtab, ptr noundef @.str.14, i32 noundef 6, i32 noundef 8) ; 0 uses
  %i.u = call i32 @ir_strtab_lookup(ptr noundef @strtab, ptr noundef @.str.15, i32 noundef 4, i32 noundef 9) ; 0 uses
  %i.v = call i32 @ir_strtab_lookup(ptr noundef @strtab, ptr noundef @.str.16, i32 noundef 5, i32 noundef 10) ; 0 uses
  %i.w = call i32 @ir_strtab_lookup(ptr noundef @strtab, ptr noundef @.str.17, i32 noundef 5, i32 noundef 11) ; 0 uses
  %i.x = call i32 @ir_strtab_lookup(ptr noundef @strtab, ptr noundef @.str.18, i32 noundef 5, i32 noundef 12) ; 0 uses
  %i.y = call i32 @ir_strtab_lookup(ptr noundef @strtab, ptr noundef @.str.19, i32 noundef 8, i32 noundef 13) ; 0 uses
  %i.z = call i32 @ir_strtab_lookup(ptr noundef @strtab, ptr noundef @.str.20, i32 noundef 7, i32 noundef 14) ; 0 uses
  %i.aa = call i32 @ir_strtab_lookup(ptr noundef @strtab, ptr noundef @.str.21, i32 noundef 2, i32 noundef 15) ; 0 uses
  %i.ab = call i32 @ir_strtab_lookup(ptr noundef @strtab, ptr noundef @.str.22, i32 noundef 2, i32 noundef 16) ; 0 uses
  %i.ac = call i32 @ir_strtab_lookup(ptr noundef @strtab, ptr noundef @.str.23, i32 noundef 2, i32 noundef 17) ; 0 uses
  %i.ad = call i32 @ir_strtab_lookup(ptr noundef @strtab, ptr noundef @.str.24, i32 noundef 2, i32 noundef 18) ; 0 uses
  %i.ae = call i32 @ir_strtab_lookup(ptr noundef @strtab, ptr noundef @.str.25, i32 noundef 2, i32 noundef 19) ; 0 uses
  %i.af = call i32 @ir_strtab_lookup(ptr noundef @strtab, ptr noundef @.str.26, i32 noundef 2, i32 noundef 20) ; 0 uses
  %i.ag = call i32 @ir_strtab_lookup(ptr noundef @strtab, ptr noundef @.str.27, i32 noundef 3, i32 noundef 21) ; 0 uses
  %i.ah = call i32 @ir_strtab_lookup(ptr noundef @strtab, ptr noundef @.str.28, i32 noundef 3, i32 noundef 22) ; 0 uses
  %i.ai = call i32 @ir_strtab_lookup(ptr noundef @strtab, ptr noundef @.str.29, i32 noundef 3, i32 noundef 23) ; 0 uses
  %i.aj = call i32 @ir_strtab_lookup(ptr noundef @strtab, ptr noundef @.str.30, i32 noundef 3, i32 noundef 24) ; 0 uses
  %i.ak = call i32 @ir_strtab_lookup(ptr noundef @strtab, ptr noundef @.str.31, i32 noundef 7, i32 noundef 25) ; 0 uses
  %i.al = call i32 @ir_strtab_lookup(ptr noundef @strtab, ptr noundef @.str.32, i32 noundef 9, i32 noundef 26) ; 0 uses
  %i.am = call i32 @ir_strtab_lookup(ptr noundef @strtab, ptr noundef @.str.33, i32 noundef 3, i32 noundef 27) ; 0 uses
  %i.an = call i32 @ir_strtab_lookup(ptr noundef @strtab, ptr noundef @.str.34, i32 noundef 3, i32 noundef 28) ; 0 uses
  %i.ao = call i32 @ir_strtab_lookup(ptr noundef @strtab, ptr noundef @.str.35, i32 noundef 3, i32 noundef 29) ; 0 uses
  %i.ap = call i32 @ir_strtab_lookup(ptr noundef @strtab, ptr noundef @.str.36, i32 noundef 3, i32 noundef 30) ; 0 uses
  %i.aq = call i32 @ir_strtab_lookup(ptr noundef @strtab, ptr noundef @.str.37, i32 noundef 3, i32 noundef 31) ; 0 uses
  %i.ar = call i32 @ir_strtab_lookup(ptr noundef @strtab, ptr noundef @.str.38, i32 noundef 3, i32 noundef 32) ; 0 uses
  %i.as = call i32 @ir_strtab_lookup(ptr noundef @strtab, ptr noundef @.str.39, i32 noundef 3, i32 noundef 33) ; 0 uses
  %i.at = call i32 @ir_strtab_lookup(ptr noundef @strtab, ptr noundef @.str.40, i32 noundef 4, i32 noundef 34) ; 0 uses
  %i.au = call i32 @ir_strtab_lookup(ptr noundef @strtab, ptr noundef @.str.41, i32 noundef 4, i32 noundef 35) ; 0 uses
  %i.av = call i32 @ir_strtab_lookup(ptr noundef @strtab, ptr noundef @.str.42, i32 noundef 5, i32 noundef 36) ; 0 uses
  %i.aw = call i32 @ir_strtab_lookup(ptr noundef @strtab, ptr noundef @.str.43, i32 noundef 7, i32 noundef 37) ; 0 uses
  %i.ax = call i32 @ir_strtab_lookup(ptr noundef @strtab, ptr noundef @.str.44, i32 noundef 6, i32 noundef 38) ; 0 uses
  %i.ay = call i32 @ir_strtab_lookup(ptr noundef @strtab, ptr noundef @.str.45, i32 noundef 6, i32 noundef 39) ; 0 uses
  %i.az = call i32 @ir_strtab_lookup(ptr noundef @strtab, ptr noundef @.str.46, i32 noundef 5, i32 noundef 40) ; 0 uses
  %i.ba = call i32 @ir_strtab_lookup(ptr noundef @strtab, ptr noundef @.str.47, i32 noundef 5, i32 noundef 41) ; 0 uses
  %i.bb = call i32 @ir_strtab_lookup(ptr noundef @strtab, ptr noundef @.str.48, i32 noundef 6, i32 noundef 42) ; 0 uses
  %i.bc = call i32 @ir_strtab_lookup(ptr noundef @strtab, ptr noundef @.str.49, i32 noundef 6, i32 noundef 43) ; 0 uses
  %i.bd = call i32 @ir_strtab_lookup(ptr noundef @strtab, ptr noundef @.str.50, i32 noundef 6, i32 noundef 44) ; 0 uses
  %i.be = call i32 @ir_strtab_lookup(ptr noundef @strtab, ptr noundef @.str.51, i32 noundef 8, i32 noundef 45) ; 0 uses
  %i.bf = call i32 @ir_strtab_lookup(ptr noundef @strtab, ptr noundef @.str.52, i32 noundef 3, i32 noundef 46) ; 0 uses
  %i.bg = call i32 @ir_strtab_lookup(ptr noundef @strtab, ptr noundef @.str.53, i32 noundef 2, i32 noundef 47) ; 0 uses
  %i.bh = call i32 @ir_strtab_lookup(ptr noundef @strtab, ptr noundef @.str.54, i32 noundef 3, i32 noundef 48) ; 0 uses
  %i.bi = call i32 @ir_strtab_lookup(ptr noundef @strtab, ptr noundef @.str.55, i32 noundef 3, i32 noundef 49) ; 0 uses
  %i.bj = call i32 @ir_strtab_lookup(ptr noundef @strtab, ptr noundef @.str.56, i32 noundef 3, i32 noundef 50) ; 0 uses
  %i.bk = call i32 @ir_strtab_lookup(ptr noundef @strtab, ptr noundef @.str.57, i32 noundef 3, i32 noundef 51) ; 0 uses
  %i.bl = call i32 @ir_strtab_lookup(ptr noundef @strtab, ptr noundef @.str.58, i32 noundef 3, i32 noundef 52) ; 0 uses
  %i.bm = call i32 @ir_strtab_lookup(ptr noundef @strtab, ptr noundef @.str.59, i32 noundef 3, i32 noundef 53) ; 0 uses
  %i.bn = call i32 @ir_strtab_lookup(ptr noundef @strtab, ptr noundef @.str.60, i32 noundef 3, i32 noundef 54) ; 0 uses
  %i.bo = call i32 @ir_strtab_lookup(ptr noundef @strtab, ptr noundef @.str.61, i32 noundef 5, i32 noundef 55) ; 0 uses
  %i.bp = call i32 @ir_strtab_lookup(ptr noundef @strtab, ptr noundef @.str.62, i32 noundef 5, i32 noundef 56) ; 0 uses
  %i.bq = call i32 @ir_strtab_lookup(ptr noundef @strtab, ptr noundef @.str.63, i32 noundef 4, i32 noundef 57) ; 0 uses
  %i.br = call i32 @ir_strtab_lookup(ptr noundef @strtab, ptr noundef @.str.64, i32 noundef 4, i32 noundef 58) ; 0 uses
  %i.bs = call i32 @ir_strtab_lookup(ptr noundef @strtab, ptr noundef @.str.65, i32 noundef 3, i32 noundef 59) ; 0 uses
  %i.bt = call i32 @ir_strtab_lookup(ptr noundef @strtab, ptr noundef @.str.66, i32 noundef 3, i32 noundef 60) ; 0 uses
  %i.bu = call i32 @ir_strtab_lookup(ptr noundef @strtab, ptr noundef @.str.67, i32 noundef 4, i32 noundef 61) ; 0 uses
  %i.bv = call i32 @ir_strtab_lookup(ptr noundef @strtab, ptr noundef @.str.68, i32 noundef 5, i32 noundef 62) ; 0 uses
  %i.bw = call i32 @ir_strtab_lookup(ptr noundef @strtab, ptr noundef @.str.69, i32 noundef 10, i32 noundef 63) ; 0 uses
  %i.bx = call i32 @ir_strtab_lookup(ptr noundef @strtab, ptr noundef @.str.70, i32 noundef 3, i32 noundef 64) ; 0 uses
  %i.by = call i32 @ir_strtab_lookup(ptr noundef @strtab, ptr noundef @.str.71, i32 noundef 4, i32 noundef 65) ; 0 uses
  %i.bz = call i32 @ir_strtab_lookup(ptr noundef @strtab, ptr noundef @.str.72, i32 noundef 2, i32 noundef 66) ; 0 uses
  %i.ca = call i32 @ir_strtab_lookup(ptr noundef @strtab, ptr noundef @.str.73, i32 noundef 6, i32 noundef 67) ; 0 uses
  %i.cb = call i32 @ir_strtab_lookup(ptr noundef @strtab, ptr noundef @.str.74, i32 noundef 5, i32 noundef 68) ; 0 uses
  %i.cc = call i32 @ir_strtab_lookup(ptr noundef @strtab, ptr noundef @.str.75, i32 noundef 3, i32 noundef 69) ; 0 uses
  %i.cd = call i32 @ir_strtab_lookup(ptr noundef @strtab, ptr noundef @.str.76, i32 noundef 9, i32 noundef 70) ; 0 uses
  %i.ce = call i32 @ir_strtab_lookup(ptr noundef @strtab, ptr noundef @.str.77, i32 noundef 4, i32 noundef 71) ; 0 uses
  %i.cf = call i32 @ir_strtab_lookup(ptr noundef @strtab, ptr noundef @.str.78, i32 noundef 3, i32 noundef 72) ; 0 uses
  %i.cg = call i32 @ir_strtab_lookup(ptr noundef @strtab, ptr noundef @.str.79, i32 noundef 5, i32 noundef 73) ; 0 uses
  %i.ch = call i32 @ir_strtab_lookup(ptr noundef @strtab, ptr noundef @.str.80, i32 noundef 3, i32 noundef 74) ; 0 uses
  %i.ci = call i32 @ir_strtab_lookup(ptr noundef @strtab, ptr noundef @.str.81, i32 noundef 4, i32 noundef 75) ; 0 uses
  %i.cj = call i32 @ir_strtab_lookup(ptr noundef @strtab, ptr noundef @.str.82, i32 noundef 8, i32 noundef 76) ; 0 uses
  %i.ck = call i32 @ir_strtab_lookup(ptr noundef @strtab, ptr noundef @.str.83, i32 noundef 6, i32 noundef 77) ; 0 uses
  %i.cl = call i32 @ir_strtab_lookup(ptr noundef @strtab, ptr noundef @.str.84, i32 noundef 5, i32 noundef 78) ; 0 uses
  %i.cm = call i32 @ir_strtab_lookup(ptr noundef @strtab, ptr noundef @.str.85, i32 noundef 11, i32 noundef 79) ; 0 uses
  %i.cn = call i32 @ir_strtab_lookup(ptr noundef @strtab, ptr noundef @.str.86, i32 noundef 9, i32 noundef 80) ; 0 uses
  %i.co = call i32 @ir_strtab_lookup(ptr noundef @strtab, ptr noundef @.str.87, i32 noundef 5, i32 noundef 81) ; 0 uses
  %i.cp = call i32 @ir_strtab_lookup(ptr noundef @strtab, ptr noundef @.str.88, i32 noundef 7, i32 noundef 82) ; 0 uses
  %i.cq = call i32 @ir_strtab_lookup(ptr noundef @strtab, ptr noundef @.str.89, i32 noundef 6, i32 noundef 83) ; 0 uses
  %i.cr = call i32 @ir_strtab_lookup(ptr noundef @strtab, ptr noundef @.str.90, i32 noundef 8, i32 noundef 84) ; 0 uses
  %i.cs = call i32 @ir_strtab_lookup(ptr noundef @strtab, ptr noundef @.str.91, i32 noundef 5, i32 noundef 85) ; 0 uses
  %i.ct = call i32 @ir_strtab_lookup(ptr noundef @strtab, ptr noundef @.str.92, i32 noundef 6, i32 noundef 86) ; 0 uses
  %i.cu = call i32 @ir_strtab_lookup(ptr noundef @strtab, ptr noundef @.str.93, i32 noundef 4, i32 noundef 87) ; 0 uses
  %i.cv = call i32 @ir_strtab_lookup(ptr noundef @strtab, ptr noundef @.str.94, i32 noundef 6, i32 noundef 88) ; 0 uses
  %i.cw = call i32 @ir_strtab_lookup(ptr noundef @strtab, ptr noundef @.str.95, i32 noundef 5, i32 noundef 89) ; 0 uses
  %i.cx = call i32 @ir_strtab_lookup(ptr noundef @strtab, ptr noundef @.str.96, i32 noundef 7, i32 noundef 90) ; 0 uses
  %i.cy = call i32 @ir_strtab_lookup(ptr noundef @strtab, ptr noundef @.str.97, i32 noundef 3, i32 noundef 91) ; 0 uses
  %i.cz = call i32 @ir_strtab_lookup(ptr noundef @strtab, ptr noundef @.str.98, i32 noundef 4, i32 noundef 92) ; 0 uses
  %i.da = call i32 @ir_strtab_lookup(ptr noundef @strtab, ptr noundef @.str.99, i32 noundef 8, i32 noundef 93) ; 0 uses
end_hunk_0
