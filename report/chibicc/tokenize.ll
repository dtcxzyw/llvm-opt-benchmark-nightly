Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/chibicc/original/tokenize?download=true
begin_hunk_0_@is_keyword:bb.a
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.a
  %i.n = load ptr, ptr %i.a, align 8
  %1 = getelementptr inbounds nuw %struct.Token, ptr %i.n, i32 0, i32 4
  %i.o = load ptr, ptr %1, align 16
  %i.p = load ptr, ptr %i.a, align 8
  %2 = getelementptr inbounds nuw %struct.Token, ptr %i.p, i32 0, i32 5
  %i.q = load i32, ptr %2, align 8
  %i.r = call ptr @hashmap_get2(ptr noundef @is_keyword.map, ptr noundef %i.o, i32 noundef %i.q)
  %i.s = icmp ne ptr %i.r, null
  ret i1 %i.s
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @convert_pp_number(ptr noundef %0) unnamed_addr #4 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 9 uses
  %i.b = alloca ptr, align 8                      ; 10 uses
  %i.c = alloca x86_fp80, align 16                ; 2 uses
  %i.d = alloca ptr, align 8                      ; 4 uses
  store ptr %0, ptr %i.a, align 8
  %i.e = load ptr, ptr %i.a, align 8
  %i.f = call zeroext i1 @convert_pp_int(ptr noundef %i.e)
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  br label %bb.n

bb.c:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %i.a, align 8
  %1 = getelementptr inbounds nuw %struct.Token, ptr %i.g, i32 0, i32 4
  %i.h = load ptr, ptr %1, align 16
  %i.i = call x86_fp80 @strtold(ptr noundef %i.h, ptr noundef %i.b) #14
  store x86_fp80 %i.i, ptr %i.c, align 16
  %i.j = load ptr, ptr %i.b, align 8
  %i.k = load i8, ptr %i.j, align 1
  %i.l = sext i8 %i.k to i32
  %i.m = icmp eq i32 %i.l, 102
  br i1 %i.m, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.n = load ptr, ptr %i.b, align 8
  %i.o = load i8, ptr %i.n, align 1
  %i.p = sext i8 %i.o to i32
  %i.q = icmp eq i32 %i.p, 70
  br i1 %i.q, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.r = load ptr, ptr @ty_float, align 8
  store ptr %i.r, ptr %i.d, align 8
  %i.s = load ptr, ptr %i.b, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i32 1
  store ptr %i.t, ptr %i.b, align 8
  br label %bb.k

bb.f:                                             ; preds = %bb.d
  %i.u = load ptr, ptr %i.b, align 8
  %i.v = load i8, ptr %i.u, align 1
  %i.w = sext i8 %i.v to i32
  %i.x = icmp eq i32 %i.w, 108
  br i1 %i.x, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.y = load ptr, ptr %i.b, align 8
  %i.z = load i8, ptr %i.y, align 1
  %i.aa = sext i8 %i.z to i32
  %i.ab = icmp eq i32 %i.aa, 76
  br i1 %i.ab, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.ac = load ptr, ptr @ty_ldouble, align 8
  store ptr %i.ac, ptr %i.d, align 8
  %i.ad = load ptr, ptr %i.b, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i32 1
  store ptr %i.ae, ptr %i.b, align 8
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.af = load ptr, ptr @ty_double, align 8
  store ptr %i.af, ptr %i.d, align 8
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.e
  %i.ag = load ptr, ptr %i.a, align 8
  %2 = getelementptr inbounds nuw %struct.Token, ptr %i.ag, i32 0, i32 4
  %i.ah = load ptr, ptr %2, align 16
  %i.ai = load ptr, ptr %i.a, align 8
  %3 = getelementptr inbounds nuw %struct.Token, ptr %i.ai, i32 0, i32 5
  %i.aj = load i32, ptr %3, align 8
  %i.ak = sext i32 %i.aj to i64
  %i.al = getelementptr inbounds i8, ptr %i.ah, i64 %i.ak
  %i.am = load ptr, ptr %i.b, align 8
  %i.an = icmp ne ptr %i.al, %i.am
  br i1 %i.an, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.ao = load ptr, ptr %i.a, align 8
  call void (ptr, ptr, ...) @error_tok(ptr noundef %i.ao, ptr noundef @.str.67) #17
  unreachable

bb.m:                                             ; preds = %bb.k
  %i.ap = load ptr, ptr %i.a, align 8
  %4 = getelementptr inbounds nuw %struct.Token, ptr %i.ap, i32 0, i32 0
  store i32 4, ptr %4, align 16
  %i.aq = load x86_fp80, ptr %i.c, align 16
  %i.ar = load ptr, ptr %i.a, align 8
  %5 = getelementptr inbounds nuw %struct.Token, ptr %i.ar, i32 0, i32 3
  store x86_fp80 %i.aq, ptr %5, align 16
  %i.as = load ptr, ptr %i.d, align 8
  %i.at = load ptr, ptr %i.a, align 8
  %6 = getelementptr inbounds nuw %struct.Token, ptr %i.at, i32 0, i32 6
  store ptr %i.as, ptr %6, align 16
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.b
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local ptr @tokenize_string_literal(ptr noundef %0, ptr noundef %1) local_unnamed_addr #4 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 6 uses
  %i.b = alloca ptr, align 8                      ; 3 uses
  %i.c = alloca ptr, align 8                      ; 4 uses
  store ptr %0, ptr %i.a, align 8
  store ptr %1, ptr %i.b, align 8
  %i.d = load ptr, ptr %i.b, align 8
  %2 = getelementptr inbounds nuw %struct.Type, ptr %i.d, i32 0, i32 1
  %i.e = load i32, ptr %2, align 4
  %i.f = icmp eq i32 %i.e, 2
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %i.a, align 8
  %3 = getelementptr inbounds nuw %struct.Token, ptr %i.g, i32 0, i32 4
  %i.h = load ptr, ptr %3, align 16
  %i.i = load ptr, ptr %i.a, align 8
  %4 = getelementptr inbounds nuw %struct.Token, ptr %i.i, i32 0, i32 4
  %i.j = load ptr, ptr %4, align 16
  %i.k = call ptr @read_utf16_string_literal(ptr noundef %i.h, ptr noundef %i.j)
  store ptr %i.k, ptr %i.c, align 8
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.l = load ptr, ptr %i.a, align 8
  %5 = getelementptr inbounds nuw %struct.Token, ptr %i.l, i32 0, i32 4
  %i.m = load ptr, ptr %5, align 16
  %i.n = load ptr, ptr %i.a, align 8
  %6 = getelementptr inbounds nuw %struct.Token, ptr %i.n, i32 0, i32 4
  %i.o = load ptr, ptr %6, align 16
  %i.p = load ptr, ptr %i.b, align 8
  %i.q = call ptr @read_utf32_string_literal(ptr noundef %i.m, ptr noundef %i.o, ptr noundef %i.p)
  store ptr %i.q, ptr %i.c, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.r = load ptr, ptr %i.a, align 8
  %7 = getelementptr inbounds nuw %struct.Token, ptr %i.r, i32 0, i32 1
  %i.s = load ptr, ptr %7, align 8
  %i.t = load ptr, ptr %i.c, align 8
  %8 = getelementptr inbounds nuw %struct.Token, ptr %i.t, i32 0, i32 1
  store ptr %i.s, ptr %8, align 8
  %i.u = load ptr, ptr %i.c, align 8
  ret ptr %i.u
}

; Function Attrs: noinline nounwind optnone uwtable
define internal ptr @read_utf16_string_literal(ptr noundef %0, ptr noundef %1) unnamed_addr #4 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 3 uses
  %i.b = alloca ptr, align 8                      ; 3 uses
  %i.c = alloca ptr, align 8                      ; 4 uses
  %i.d = alloca ptr, align 8                      ; 6 uses
  %i.e = alloca i32, align 4                      ; 10 uses
  %i.f = alloca ptr, align 8                      ; 7 uses
  %i.g = alloca i32, align 4                      ; 7 uses
  %i.h = alloca ptr, align 8                      ; 4 uses
  store ptr %0, ptr %i.a, align 8
  store ptr %1, ptr %i.b, align 8
  %i.i = load ptr, ptr %i.b, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 1
  %i.k = call ptr @string_literal_end(ptr noundef %i.j)
  store ptr %i.k, ptr %i.c, align 8
  %i.l = load ptr, ptr %i.c, align 8
  %i.m = load ptr, ptr %i.a, align 8
  %i.n = ptrtoint ptr %i.l to i64
  %i.o = ptrtoint ptr %i.m to i64
  %i.p = sub i64 %i.n, %i.o
  %i.q = call noalias ptr @calloc(i64 noundef 2, i64 noundef %i.p) #18
  store ptr %i.q, ptr %i.d, align 8
  store i32 0, ptr %i.e, align 4
  %i.r = load ptr, ptr %i.b, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 1
  store ptr %i.s, ptr %i.f, align 8
  br label %bb.b

bb.b:                                             ; preds = %.backedge, %bb.a
  %i.t = load ptr, ptr %i.f, align 8
  %i.u = load ptr, ptr %i.c, align 8
  %i.v = icmp ult ptr %i.t, %i.u
  br i1 %i.v, label %bb.c, label %bb.i

bb.c:                                             ; preds = %bb.b
  %i.w = load ptr, ptr %i.f, align 8
  %i.x = load i8, ptr %i.w, align 1
  %i.y = sext i8 %i.x to i32
  %i.z = icmp eq i32 %i.y, 92
  br i1 %i.z, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.aa = load ptr, ptr %i.f, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 1
  %i.ac = call i32 @read_escaped_char(ptr noundef %i.f, ptr noundef %i.ab)
  %i.ad = trunc i32 %i.ac to i16
  %i.ae = load ptr, ptr %i.d, align 8
  %i.af = load i32, ptr %i.e, align 4             ; 2 uses
  %i.ag = add nsw i32 %i.af, 1
  store i32 %i.ag, ptr %i.e, align 4
  %i.ah = sext i32 %i.af to i64
  %i.ai = getelementptr inbounds i16, ptr %i.ae, i64 %i.ah
  store i16 %i.ad, ptr %i.ai, align 2
  br label %.backedge

.backedge:                                        ; preds = %bb.d, %bb.h
  br label %bb.b, !llvm.loop !14

bb.e:                                             ; preds = %bb.c
  %i.aj = load ptr, ptr %i.f, align 8
  %i.ak = call i32 @decode_utf8(ptr noundef %i.f, ptr noundef %i.aj)
  store i32 %i.ak, ptr %i.g, align 4
  %i.al = load i32, ptr %i.g, align 4
  %i.am = icmp ult i32 %i.al, 65536
  br i1 %i.am, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.an = load i32, ptr %i.g, align 4
  %i.ao = trunc i32 %i.an to i16
  %i.ap = load ptr, ptr %i.d, align 8
  %i.aq = load i32, ptr %i.e, align 4             ; 2 uses
  %i.ar = add nsw i32 %i.aq, 1
  store i32 %i.ar, ptr %i.e, align 4
  %i.as = sext i32 %i.aq to i64
  %i.at = getelementptr inbounds i16, ptr %i.ap, i64 %i.as
  store i16 %i.ao, ptr %i.at, align 2
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.au = load i32, ptr %i.g, align 4
  %i.av = sub i32 %i.au, 65536
  store i32 %i.av, ptr %i.g, align 4
  %i.aw = load i32, ptr %i.g, align 4
  %i.ax = lshr i32 %i.aw, 10
  %i.ay = and i32 %i.ax, 1023
  %i.az = add nuw nsw i32 55296, %i.ay
  %i.ba = trunc nuw i32 %i.az to i16
  %i.bb = load ptr, ptr %i.d, align 8
  %i.bc = load i32, ptr %i.e, align 4             ; 2 uses
  %i.bd = add nsw i32 %i.bc, 1
  store i32 %i.bd, ptr %i.e, align 4
  %i.be = sext i32 %i.bc to i64
  %i.bf = getelementptr inbounds i16, ptr %i.bb, i64 %i.be
  store i16 %i.ba, ptr %i.bf, align 2
  %i.bg = load i32, ptr %i.g, align 4
  %i.bh = and i32 %i.bg, 1023
  %i.bi = add nuw nsw i32 56320, %i.bh
  %i.bj = trunc nuw i32 %i.bi to i16
  %i.bk = load ptr, ptr %i.d, align 8
  %i.bl = load i32, ptr %i.e, align 4             ; 2 uses
  %i.bm = add nsw i32 %i.bl, 1
  store i32 %i.bm, ptr %i.e, align 4
  %i.bn = sext i32 %i.bl to i64
  %i.bo = getelementptr inbounds i16, ptr %i.bk, i64 %i.bn
  store i16 %i.bj, ptr %i.bo, align 2
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  br label %.backedge

bb.i:                                             ; preds = %bb.b
  %i.bp = load ptr, ptr %i.a, align 8
  %i.bq = load ptr, ptr %i.c, align 8
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 1
  %i.bs = call ptr @new_token(i32 noundef 3, ptr noundef %i.bp, ptr noundef %i.br)
  store ptr %i.bs, ptr %i.h, align 8
  %i.bt = load ptr, ptr @ty_ushort, align 8
  %i.bu = load i32, ptr %i.e, align 4
  %i.bv = add nsw i32 %i.bu, 1
  %i.bw = call ptr @array_of(ptr noundef %i.bt, i32 noundef %i.bv)
  %i.bx = load ptr, ptr %i.h, align 8
  %2 = getelementptr inbounds nuw %struct.Token, ptr %i.bx, i32 0, i32 6
  store ptr %i.bw, ptr %2, align 16
  %i.by = load ptr, ptr %i.d, align 8
  %i.bz = load ptr, ptr %i.h, align 8
  %3 = getelementptr inbounds nuw %struct.Token, ptr %i.bz, i32 0, i32 7
  store ptr %i.by, ptr %3, align 8
  %i.ca = load ptr, ptr %i.h, align 8
  ret ptr %i.ca
}

; Function Attrs: noinline nounwind optnone uwtable
define internal ptr @read_utf32_string_literal(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #4 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 2 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %i.c = alloca ptr, align 8                      ; 2 uses
  %i.d = alloca ptr, align 8                      ; 4 uses
  %i.e = alloca ptr, align 8                      ; 4 uses
  %i.f = alloca i32, align 4                      ; 6 uses
  %i.g = alloca ptr, align 8                      ; 7 uses
  %i.h = alloca ptr, align 8                      ; 4 uses
  store ptr %0, ptr %i.a, align 8
  store ptr %1, ptr %i.b, align 8
  store ptr %2, ptr %i.c, align 8
  %i.i = load ptr, ptr %i.b, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 1
  %i.k = call ptr @string_literal_end(ptr noundef %i.j)
  store ptr %i.k, ptr %i.d, align 8
  %i.l = load ptr, ptr %i.d, align 8
  %i.m = load ptr, ptr %i.b, align 8
  %i.n = ptrtoint ptr %i.l to i64
  %i.o = ptrtoint ptr %i.m to i64
  %i.p = sub i64 %i.n, %i.o
  %i.q = call noalias ptr @calloc(i64 noundef 4, i64 noundef %i.p) #18
  store ptr %i.q, ptr %i.e, align 8
  store i32 0, ptr %i.f, align 4
  %i.r = load ptr, ptr %i.b, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 1
  store ptr %i.s, ptr %i.g, align 8
  br label %bb.b

bb.b:                                             ; preds = %bb.f, %bb.a
  %i.t = load ptr, ptr %i.g, align 8
  %i.u = load ptr, ptr %i.d, align 8
  %i.v = icmp ult ptr %i.t, %i.u
  br i1 %i.v, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.w = load ptr, ptr %i.g, align 8
  %i.x = load i8, ptr %i.w, align 1
  %i.y = sext i8 %i.x to i32
  %i.z = icmp eq i32 %i.y, 92
  br i1 %i.z, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.aa = load ptr, ptr %i.g, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 1
  %i.ac = call i32 @read_escaped_char(ptr noundef %i.g, ptr noundef %i.ab)
  %i.ad = load ptr, ptr %i.e, align 8
  %i.ae = load i32, ptr %i.f, align 4             ; 2 uses
  %i.af = add nsw i32 %i.ae, 1
  store i32 %i.af, ptr %i.f, align 4
  %i.ag = sext i32 %i.ae to i64
  %i.ah = getelementptr inbounds i32, ptr %i.ad, i64 %i.ag
  store i32 %i.ac, ptr %i.ah, align 4
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.ai = load ptr, ptr %i.g, align 8
  %i.aj = call i32 @decode_utf8(ptr noundef %i.g, ptr noundef %i.ai)
  %i.ak = load ptr, ptr %i.e, align 8
  %i.al = load i32, ptr %i.f, align 4             ; 2 uses
  %i.am = add nsw i32 %i.al, 1
  store i32 %i.am, ptr %i.f, align 4
  %i.an = sext i32 %i.al to i64
  %i.ao = getelementptr inbounds i32, ptr %i.ak, i64 %i.an
  store i32 %i.aj, ptr %i.ao, align 4
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  br label %bb.b, !llvm.loop !15

bb.g:                                             ; preds = %bb.b
  %i.ap = load ptr, ptr %i.a, align 8
  %i.aq = load ptr, ptr %i.d, align 8
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 1
  %i.as = call ptr @new_token(i32 noundef 3, ptr noundef %i.ap, ptr noundef %i.ar)
  store ptr %i.as, ptr %i.h, align 8
  %i.at = load ptr, ptr %i.c, align 8
  %i.au = load i32, ptr %i.f, align 4
  %i.av = add nsw i32 %i.au, 1
  %i.aw = call ptr @array_of(ptr noundef %i.at, i32 noundef %i.av)
  %i.ax = load ptr, ptr %i.h, align 8
  %3 = getelementptr inbounds nuw %struct.Token, ptr %i.ax, i32 0, i32 6
  store ptr %i.aw, ptr %3, align 16
  %i.ay = load ptr, ptr %i.e, align 8
  %i.az = load ptr, ptr %i.h, align 8
  %4 = getelementptr inbounds nuw %struct.Token, ptr %i.az, i32 0, i32 7
  store ptr %i.ay, ptr %4, align 8
  %i.ba = load ptr, ptr %i.h, align 8
  ret ptr %i.ba
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local ptr @tokenize(ptr noundef %0) local_unnamed_addr #4 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 3 uses
  %i.b = alloca ptr, align 8                      ; 92 uses
  %1 = alloca %struct.Token, align 16             ; 4 uses
  %i.c = alloca ptr, align 8                      ; 41 uses
  %i.d = alloca ptr, align 8                      ; 3 uses
  %i.e = alloca ptr, align 8                      ; 2 uses
  %i.f = alloca i32, align 4                      ; 3 uses
  %i.g = alloca i32, align 4                      ; 3 uses
  store ptr %0, ptr %i.a, align 8
  %i.h = load ptr, ptr %i.a, align 8
  store ptr %i.h, ptr @current_file, align 8
  %i.i = load ptr, ptr %i.a, align 8
  %2 = getelementptr inbounds nuw %struct.File, ptr %i.i, i32 0, i32 2
  %i.j = load ptr, ptr %2, align 8
  store ptr %i.j, ptr %i.b, align 8
  call void @llvm.memset.p0.i64(ptr align 16 %1, i8 0, i64 128, i1 false)
  store ptr %1, ptr %i.c, align 8
  store i1 true, ptr @at_bol, align 1
  store i1 false, ptr @has_space, align 1
  br label %bb.b

bb.b:                                             ; preds = %.backedge, %bb.a
  %i.k = load ptr, ptr %i.b, align 8
  %i.l = load i8, ptr %i.k, align 1
  %i.m = icmp ne i8 %i.l, 0
  br i1 %i.m, label %bb.c, label %bb.bc

bb.c:                                             ; preds = %bb.b
  %i.n = load ptr, ptr %i.b, align 8
  %i.o = call zeroext i1 @startswith(ptr noundef %i.n, ptr noundef @.str.2)
  br i1 %i.o, label %bb.d, label %bb.h

bb.d:                                             ; preds = %bb.c
  %i.p = load ptr, ptr %i.b, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 2
  store ptr %i.q, ptr %i.b, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.f, %bb.d
  %i.r = load ptr, ptr %i.b, align 8
  %i.s = load i8, ptr %i.r, align 1
  %i.t = sext i8 %i.s to i32
  %i.u = icmp ne i32 %i.t, 10
  br i1 %i.u, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.v = load ptr, ptr %i.b, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i32 1
  store ptr %i.w, ptr %i.b, align 8
  br label %bb.e, !llvm.loop !16

bb.g:                                             ; preds = %bb.e
  store i1 true, ptr @has_space, align 1
  br label %.backedge

.backedge:                                        ; preds = %bb.g, %bb.k, %bb.m, %bb.o, %bb.ae, %bb.ag, %bb.ai, %bb.ak, %bb.am, %bb.ao, %bb.aq, %bb.as, %bb.au, %bb.aw, %bb.ay, %bb.ba
  br label %bb.b, !llvm.loop !17

bb.h:                                             ; preds = %bb.c
  %i.x = load ptr, ptr %i.b, align 8
  %i.y = call zeroext i1 @startswith(ptr noundef %i.x, ptr noundef @.str.3)
  br i1 %i.y, label %bb.i, label %bb.l

bb.i:                                             ; preds = %bb.h
  %i.z = load ptr, ptr %i.b, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 2
  %i.ab = call ptr @strstr(ptr noundef %i.aa, ptr noundef @.str.4) #16
  store ptr %i.ab, ptr %i.d, align 8
  %i.ac = load ptr, ptr %i.d, align 8
  %i.ad = icmp ne ptr %i.ac, null
  br i1 %i.ad, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ae = load ptr, ptr %i.b, align 8
  call void (ptr, ptr, ...) @error_at(ptr noundef %i.ae, ptr noundef @.str.5) #17
  unreachable

bb.k:                                             ; preds = %bb.i
  %i.af = load ptr, ptr %i.d, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 2
  store ptr %i.ag, ptr %i.b, align 8
  store i1 true, ptr @has_space, align 1
  br label %.backedge

bb.l:                                             ; preds = %bb.h
  %i.ah = load ptr, ptr %i.b, align 8
  %i.ai = load i8, ptr %i.ah, align 1
  %i.aj = sext i8 %i.ai to i32
  %i.ak = icmp eq i32 %i.aj, 10
  br i1 %i.ak, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.al = load ptr, ptr %i.b, align 8
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i32 1
  store ptr %i.am, ptr %i.b, align 8
  store i1 true, ptr @at_bol, align 1
  store i1 false, ptr @has_space, align 1
  br label %.backedge

bb.n:                                             ; preds = %bb.l
  %i.an = call ptr @__ctype_b_loc() #19
  %i.ao = load ptr, ptr %i.an, align 8
  %i.ap = load ptr, ptr %i.b, align 8
  %i.aq = load i8, ptr %i.ap, align 1
  %i.ar = sext i8 %i.aq to i32
  %i.as = sext i32 %i.ar to i64
  %i.at = getelementptr inbounds i16, ptr %i.ao, i64 %i.as
  %i.au = load i16, ptr %i.at, align 2
  %i.av = zext i16 %i.au to i32
  %i.aw = and i32 %i.av, 8192
  %i.ax = icmp ne i32 %i.aw, 0
  br i1 %i.ax, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.ay = load ptr, ptr %i.b, align 8
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i32 1
  store ptr %i.az, ptr %i.b, align 8
  store i1 true, ptr @has_space, align 1
  br label %.backedge

bb.p:                                             ; preds = %bb.n
  %i.ba = call ptr @__ctype_b_loc() #19
  %i.bb = load ptr, ptr %i.ba, align 8
  %i.bc = load ptr, ptr %i.b, align 8
  %i.bd = load i8, ptr %i.bc, align 1
  %i.be = sext i8 %i.bd to i32
  %i.bf = sext i32 %i.be to i64
  %i.bg = getelementptr inbounds i16, ptr %i.bb, i64 %i.bf
  %i.bh = load i16, ptr %i.bg, align 2
  %i.bi = zext i16 %i.bh to i32
  %i.bj = and i32 %i.bi, 2048
  %i.bk = icmp ne i32 %i.bj, 0
  br i1 %i.bk, label %bb.s, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bl = load ptr, ptr %i.b, align 8
  %i.bm = load i8, ptr %i.bl, align 1
  %i.bn = sext i8 %i.bm to i32
  %i.bo = icmp eq i32 %i.bn, 46
  br i1 %i.bo, label %bb.r, label %bb.af

bb.r:                                             ; preds = %bb.q
  %i.bp = call ptr @__ctype_b_loc() #19
  %i.bq = load ptr, ptr %i.bp, align 8
  %i.br = load ptr, ptr %i.b, align 8
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 1
  %i.bt = load i8, ptr %i.bs, align 1
  %i.bu = sext i8 %i.bt to i32
  %i.bv = sext i32 %i.bu to i64
  %i.bw = getelementptr inbounds i16, ptr %i.bq, i64 %i.bv
  %i.bx = load i16, ptr %i.bw, align 2
  %i.by = zext i16 %i.bx to i32
  %i.bz = and i32 %i.by, 2048
  %i.ca = icmp ne i32 %i.bz, 0
  br i1 %i.ca, label %bb.s, label %bb.af

bb.s:                                             ; preds = %bb.r, %bb.p
  %i.cb = load ptr, ptr %i.b, align 8             ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i32 1
  store ptr %i.cc, ptr %i.b, align 8
  store ptr %i.cb, ptr %i.e, align 8
  br label %bb.t

bb.t:                                             ; preds = %bb.ad, %bb.s
  %i.cd = load ptr, ptr %i.b, align 8
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 0
  %i.cf = load i8, ptr %i.ce, align 1
  %i.cg = sext i8 %i.cf to i32
  %i.ch = icmp ne i32 %i.cg, 0
  br i1 %i.ch, label %bb.u, label %bb.y

bb.u:                                             ; preds = %bb.t
  %i.ci = load ptr, ptr %i.b, align 8
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 1
  %i.ck = load i8, ptr %i.cj, align 1
  %i.cl = sext i8 %i.ck to i32
  %i.cm = icmp ne i32 %i.cl, 0
  br i1 %i.cm, label %bb.v, label %bb.y

bb.v:                                             ; preds = %bb.u
  %i.cn = load ptr, ptr %i.b, align 8
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 0
  %i.cp = load i8, ptr %i.co, align 1
  %i.cq = sext i8 %i.cp to i32
  %i.cr = call ptr @strchr(ptr noundef @.str.6, i32 noundef %i.cq) #16
  %i.cs = icmp ne ptr %i.cr, null
  br i1 %i.cs, label %bb.w, label %bb.y

bb.w:                                             ; preds = %bb.v
  %i.ct = load ptr, ptr %i.b, align 8
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 1
  %i.cv = load i8, ptr %i.cu, align 1
  %i.cw = sext i8 %i.cv to i32
  %i.cx = call ptr @strchr(ptr noundef @.str.7, i32 noundef %i.cw) #16
  %i.cy = icmp ne ptr %i.cx, null
  br i1 %i.cy, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.cz = load ptr, ptr %i.b, align 8
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 2
  store ptr %i.da, ptr %i.b, align 8
  br label %bb.ad

bb.y:                                             ; preds = %bb.w, %bb.v, %bb.u, %bb.t
  %i.db = call ptr @__ctype_b_loc() #19
  %i.dc = load ptr, ptr %i.db, align 8
  %i.dd = load ptr, ptr %i.b, align 8
  %i.de = load i8, ptr %i.dd, align 1
  %i.df = sext i8 %i.de to i32
  %i.dg = sext i32 %i.df to i64
  %i.dh = getelementptr inbounds i16, ptr %i.dc, i64 %i.dg
  %i.di = load i16, ptr %i.dh, align 2
  %i.dj = zext i16 %i.di to i32
  %i.dk = and i32 %i.dj, 8
  %i.dl = icmp ne i32 %i.dk, 0
  br i1 %i.dl, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.dm = load ptr, ptr %i.b, align 8
  %i.dn = load i8, ptr %i.dm, align 1
  %i.do = sext i8 %i.dn to i32
  %i.dp = icmp eq i32 %i.do, 46
  br i1 %i.dp, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z, %bb.y
  %i.dq = load ptr, ptr %i.b, align 8
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i32 1
  store ptr %i.dr, ptr %i.b, align 8
  br label %bb.ac

bb.ab:                                            ; preds = %bb.z
  br label %bb.ae

bb.ac:                                            ; preds = %bb.aa
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.x
  br label %bb.t

bb.ae:                                            ; preds = %bb.ab
  %i.ds = load ptr, ptr %i.e, align 8
  %i.dt = load ptr, ptr %i.b, align 8
  %i.du = call ptr @new_token(i32 noundef 5, ptr noundef %i.ds, ptr noundef %i.dt) ; 2 uses
  %i.dv = load ptr, ptr %i.c, align 8
  %3 = getelementptr inbounds nuw %struct.Token, ptr %i.dv, i32 0, i32 1
  store ptr %i.du, ptr %3, align 8
  store ptr %i.du, ptr %i.c, align 8
  br label %.backedge

bb.af:                                            ; preds = %bb.r, %bb.q
  %i.dw = load ptr, ptr %i.b, align 8
  %i.dx = load i8, ptr %i.dw, align 1
  %i.dy = sext i8 %i.dx to i32
  %i.dz = icmp eq i32 %i.dy, 34
  br i1 %i.dz, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.ea = load ptr, ptr %i.b, align 8
  %i.eb = load ptr, ptr %i.b, align 8
  %i.ec = call ptr @read_string_literal(ptr noundef %i.ea, ptr noundef %i.eb) ; 2 uses
  %i.ed = load ptr, ptr %i.c, align 8
  %4 = getelementptr inbounds nuw %struct.Token, ptr %i.ed, i32 0, i32 1
  store ptr %i.ec, ptr %4, align 8
  store ptr %i.ec, ptr %i.c, align 8
  %i.ee = load ptr, ptr %i.c, align 8
  %5 = getelementptr inbounds nuw %struct.Token, ptr %i.ee, i32 0, i32 5
  %i.ef = load i32, ptr %5, align 8
  %i.eg = load ptr, ptr %i.b, align 8
  %i.eh = sext i32 %i.ef to i64
  %i.ei = getelementptr inbounds i8, ptr %i.eg, i64 %i.eh
  store ptr %i.ei, ptr %i.b, align 8
  br label %.backedge

bb.ah:                                            ; preds = %bb.af
  %i.ej = load ptr, ptr %i.b, align 8
  %i.ek = call zeroext i1 @startswith(ptr noundef %i.ej, ptr noundef @.str.8)
  br i1 %i.ek, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  %i.el = load ptr, ptr %i.b, align 8
  %i.em = load ptr, ptr %i.b, align 8
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 2
  %i.eo = call ptr @read_string_literal(ptr noundef %i.el, ptr noundef %i.en) ; 2 uses
  %i.ep = load ptr, ptr %i.c, align 8
  %6 = getelementptr inbounds nuw %struct.Token, ptr %i.ep, i32 0, i32 1
  store ptr %i.eo, ptr %6, align 8
  store ptr %i.eo, ptr %i.c, align 8
  %i.eq = load ptr, ptr %i.c, align 8
  %7 = getelementptr inbounds nuw %struct.Token, ptr %i.eq, i32 0, i32 5
  %i.er = load i32, ptr %7, align 8
  %i.es = load ptr, ptr %i.b, align 8
  %i.et = sext i32 %i.er to i64
  %i.eu = getelementptr inbounds i8, ptr %i.es, i64 %i.et
  store ptr %i.eu, ptr %i.b, align 8
  br label %.backedge

bb.aj:                                            ; preds = %bb.ah
  %i.ev = load ptr, ptr %i.b, align 8
  %i.ew = call zeroext i1 @startswith(ptr noundef %i.ev, ptr noundef @.str.9)
  br i1 %i.ew, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  %i.ex = load ptr, ptr %i.b, align 8
  %i.ey = load ptr, ptr %i.b, align 8
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 1
  %i.fa = call ptr @read_utf16_string_literal(ptr noundef %i.ex, ptr noundef %i.ez) ; 2 uses
  %i.fb = load ptr, ptr %i.c, align 8
  %8 = getelementptr inbounds nuw %struct.Token, ptr %i.fb, i32 0, i32 1
  store ptr %i.fa, ptr %8, align 8
  store ptr %i.fa, ptr %i.c, align 8
  %i.fc = load ptr, ptr %i.c, align 8
  %9 = getelementptr inbounds nuw %struct.Token, ptr %i.fc, i32 0, i32 5
  %i.fd = load i32, ptr %9, align 8
  %i.fe = load ptr, ptr %i.b, align 8
  %i.ff = sext i32 %i.fd to i64
  %i.fg = getelementptr inbounds i8, ptr %i.fe, i64 %i.ff
  store ptr %i.fg, ptr %i.b, align 8
  br label %.backedge

bb.al:                                            ; preds = %bb.aj
  %i.fh = load ptr, ptr %i.b, align 8
  %i.fi = call zeroext i1 @startswith(ptr noundef %i.fh, ptr noundef @.str.10)
  br i1 %i.fi, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al
  %i.fj = load ptr, ptr %i.b, align 8
  %i.fk = load ptr, ptr %i.b, align 8
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fk, i64 1
  %i.fm = load ptr, ptr @ty_int, align 8
  %i.fn = call ptr @read_utf32_string_literal(ptr noundef %i.fj, ptr noundef %i.fl, ptr noundef %i.fm) ; 2 uses
  %i.fo = load ptr, ptr %i.c, align 8
  %10 = getelementptr inbounds nuw %struct.Token, ptr %i.fo, i32 0, i32 1
  store ptr %i.fn, ptr %10, align 8
  store ptr %i.fn, ptr %i.c, align 8
  %i.fp = load ptr, ptr %i.c, align 8
  %11 = getelementptr inbounds nuw %struct.Token, ptr %i.fp, i32 0, i32 5
  %i.fq = load i32, ptr %11, align 8
  %i.fr = load ptr, ptr %i.b, align 8
  %i.fs = sext i32 %i.fq to i64
  %i.ft = getelementptr inbounds i8, ptr %i.fr, i64 %i.fs
  store ptr %i.ft, ptr %i.b, align 8
  br label %.backedge

bb.an:                                            ; preds = %bb.al
  %i.fu = load ptr, ptr %i.b, align 8
  %i.fv = call zeroext i1 @startswith(ptr noundef %i.fu, ptr noundef @.str.11)
  br i1 %i.fv, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %bb.an
  %i.fw = load ptr, ptr %i.b, align 8
  %i.fx = load ptr, ptr %i.b, align 8
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fx, i64 1
  %i.fz = load ptr, ptr @ty_uint, align 8
  %i.ga = call ptr @read_utf32_string_literal(ptr noundef %i.fw, ptr noundef %i.fy, ptr noundef %i.fz) ; 2 uses
  %i.gb = load ptr, ptr %i.c, align 8
  %12 = getelementptr inbounds nuw %struct.Token, ptr %i.gb, i32 0, i32 1
  store ptr %i.ga, ptr %12, align 8
  store ptr %i.ga, ptr %i.c, align 8
  %i.gc = load ptr, ptr %i.c, align 8
  %13 = getelementptr inbounds nuw %struct.Token, ptr %i.gc, i32 0, i32 5
  %i.gd = load i32, ptr %13, align 8
  %i.ge = load ptr, ptr %i.b, align 8
  %i.gf = sext i32 %i.gd to i64
  %i.gg = getelementptr inbounds i8, ptr %i.ge, i64 %i.gf
  store ptr %i.gg, ptr %i.b, align 8
  br label %.backedge

bb.ap:                                            ; preds = %bb.an
  %i.gh = load ptr, ptr %i.b, align 8
  %i.gi = load i8, ptr %i.gh, align 1
  %i.gj = sext i8 %i.gi to i32
  %i.gk = icmp eq i32 %i.gj, 39
  br i1 %i.gk, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %bb.ap
  %i.gl = load ptr, ptr %i.b, align 8
  %i.gm = load ptr, ptr %i.b, align 8
  %i.gn = load ptr, ptr @ty_int, align 8
  %i.go = call ptr @read_char_literal(ptr noundef %i.gl, ptr noundef %i.gm, ptr noundef %i.gn) ; 2 uses
  %i.gp = load ptr, ptr %i.c, align 8
  %14 = getelementptr inbounds nuw %struct.Token, ptr %i.gp, i32 0, i32 1
  store ptr %i.go, ptr %14, align 8
  store ptr %i.go, ptr %i.c, align 8
  %i.gq = load ptr, ptr %i.c, align 8
  %15 = getelementptr inbounds nuw %struct.Token, ptr %i.gq, i32 0, i32 2
  %i.gr = load i64, ptr %15, align 16
  %i.gs = trunc i64 %i.gr to i8
  %i.gt = sext i8 %i.gs to i64
  %i.gu = load ptr, ptr %i.c, align 8
  %16 = getelementptr inbounds nuw %struct.Token, ptr %i.gu, i32 0, i32 2
  store i64 %i.gt, ptr %16, align 16
  %i.gv = load ptr, ptr %i.c, align 8
  %17 = getelementptr inbounds nuw %struct.Token, ptr %i.gv, i32 0, i32 5
  %i.gw = load i32, ptr %17, align 8
  %i.gx = load ptr, ptr %i.b, align 8
  %i.gy = sext i32 %i.gw to i64
  %i.gz = getelementptr inbounds i8, ptr %i.gx, i64 %i.gy
  store ptr %i.gz, ptr %i.b, align 8
  br label %.backedge

bb.ar:                                            ; preds = %bb.ap
  %i.ha = load ptr, ptr %i.b, align 8
  %i.hb = call zeroext i1 @startswith(ptr noundef %i.ha, ptr noundef @.str.12)
  br i1 %i.hb, label %bb.as, label %bb.at

bb.as:                                            ; preds = %bb.ar
  %i.hc = load ptr, ptr %i.b, align 8
  %i.hd = load ptr, ptr %i.b, align 8
  %i.he = getelementptr inbounds nuw i8, ptr %i.hd, i64 1
  %i.hf = load ptr, ptr @ty_ushort, align 8
  %i.hg = call ptr @read_char_literal(ptr noundef %i.hc, ptr noundef %i.he, ptr noundef %i.hf) ; 2 uses
  %i.hh = load ptr, ptr %i.c, align 8
  %18 = getelementptr inbounds nuw %struct.Token, ptr %i.hh, i32 0, i32 1
  store ptr %i.hg, ptr %18, align 8
  store ptr %i.hg, ptr %i.c, align 8
  %i.hi = load ptr, ptr %i.c, align 8
  %19 = getelementptr inbounds nuw %struct.Token, ptr %i.hi, i32 0, i32 2 ; 2 uses
  %i.hj = load i64, ptr %19, align 16
  %i.hk = and i64 %i.hj, 65535
  store i64 %i.hk, ptr %19, align 16
  %i.hl = load ptr, ptr %i.c, align 8
  %20 = getelementptr inbounds nuw %struct.Token, ptr %i.hl, i32 0, i32 5
  %i.hm = load i32, ptr %20, align 8
  %i.hn = load ptr, ptr %i.b, align 8
  %i.ho = sext i32 %i.hm to i64
  %i.hp = getelementptr inbounds i8, ptr %i.hn, i64 %i.ho
  store ptr %i.hp, ptr %i.b, align 8
  br label %.backedge

bb.at:                                            ; preds = %bb.ar
  %i.hq = load ptr, ptr %i.b, align 8
  %i.hr = call zeroext i1 @startswith(ptr noundef %i.hq, ptr noundef @.str.13)
  br i1 %i.hr, label %bb.au, label %bb.av

bb.au:                                            ; preds = %bb.at
  %i.hs = load ptr, ptr %i.b, align 8
  %i.ht = load ptr, ptr %i.b, align 8
  %i.hu = getelementptr inbounds nuw i8, ptr %i.ht, i64 1
  %i.hv = load ptr, ptr @ty_int, align 8
  %i.hw = call ptr @read_char_literal(ptr noundef %i.hs, ptr noundef %i.hu, ptr noundef %i.hv) ; 2 uses
  %i.hx = load ptr, ptr %i.c, align 8
  %21 = getelementptr inbounds nuw %struct.Token, ptr %i.hx, i32 0, i32 1
  store ptr %i.hw, ptr %21, align 8
  store ptr %i.hw, ptr %i.c, align 8
  %i.hy = load ptr, ptr %i.c, align 8
  %22 = getelementptr inbounds nuw %struct.Token, ptr %i.hy, i32 0, i32 5
  %i.hz = load i32, ptr %22, align 8
  %i.ia = load ptr, ptr %i.b, align 8
  %i.ib = sext i32 %i.hz to i64
  %i.ic = getelementptr inbounds i8, ptr %i.ia, i64 %i.ib
  store ptr %i.ic, ptr %i.b, align 8
  br label %.backedge

bb.av:                                            ; preds = %bb.at
  %i.id = load ptr, ptr %i.b, align 8
  %i.ie = call zeroext i1 @startswith(ptr noundef %i.id, ptr noundef @.str.14)
  br i1 %i.ie, label %bb.aw, label %bb.ax

bb.aw:                                            ; preds = %bb.av
  %i.if = load ptr, ptr %i.b, align 8
  %i.ig = load ptr, ptr %i.b, align 8
  %i.ih = getelementptr inbounds nuw i8, ptr %i.ig, i64 1
  %i.ii = load ptr, ptr @ty_uint, align 8
  %i.ij = call ptr @read_char_literal(ptr noundef %i.if, ptr noundef %i.ih, ptr noundef %i.ii) ; 2 uses
  %i.ik = load ptr, ptr %i.c, align 8
  %23 = getelementptr inbounds nuw %struct.Token, ptr %i.ik, i32 0, i32 1
  store ptr %i.ij, ptr %23, align 8
  store ptr %i.ij, ptr %i.c, align 8
  %i.il = load ptr, ptr %i.c, align 8
  %24 = getelementptr inbounds nuw %struct.Token, ptr %i.il, i32 0, i32 5
  %i.im = load i32, ptr %24, align 8
  %i.in = load ptr, ptr %i.b, align 8
  %i.io = sext i32 %i.im to i64
  %i.ip = getelementptr inbounds i8, ptr %i.in, i64 %i.io
  store ptr %i.ip, ptr %i.b, align 8
  br label %.backedge

bb.ax:                                            ; preds = %bb.av
  %i.iq = load ptr, ptr %i.b, align 8
  %i.ir = call i32 @read_ident(ptr noundef %i.iq)
  store i32 %i.ir, ptr %i.f, align 4
  %i.is = load i32, ptr %i.f, align 4
  %i.it = icmp ne i32 %i.is, 0
  br i1 %i.it, label %bb.ay, label %bb.az

bb.ay:                                            ; preds = %bb.ax
  %i.iu = load ptr, ptr %i.b, align 8
  %i.iv = load ptr, ptr %i.b, align 8
  %i.iw = load i32, ptr %i.f, align 4
  %i.ix = sext i32 %i.iw to i64
  %i.iy = getelementptr inbounds i8, ptr %i.iv, i64 %i.ix
  %i.iz = call ptr @new_token(i32 noundef 0, ptr noundef %i.iu, ptr noundef %i.iy) ; 2 uses
  %i.ja = load ptr, ptr %i.c, align 8
  %25 = getelementptr inbounds nuw %struct.Token, ptr %i.ja, i32 0, i32 1
  store ptr %i.iz, ptr %25, align 8
  store ptr %i.iz, ptr %i.c, align 8
  %i.jb = load ptr, ptr %i.c, align 8
  %26 = getelementptr inbounds nuw %struct.Token, ptr %i.jb, i32 0, i32 5
  %i.jc = load i32, ptr %26, align 8
  %i.jd = load ptr, ptr %i.b, align 8
  %i.je = sext i32 %i.jc to i64
  %i.jf = getelementptr inbounds i8, ptr %i.jd, i64 %i.je
  store ptr %i.jf, ptr %i.b, align 8
  br label %.backedge

bb.az:                                            ; preds = %bb.ax
  %i.jg = load ptr, ptr %i.b, align 8
  %i.jh = call i32 @read_punct(ptr noundef %i.jg)
  store i32 %i.jh, ptr %i.g, align 4
  %i.ji = load i32, ptr %i.g, align 4
  %i.jj = icmp ne i32 %i.ji, 0
  br i1 %i.jj, label %bb.ba, label %bb.bb

bb.ba:                                            ; preds = %bb.az
  %i.jk = load ptr, ptr %i.b, align 8
  %i.jl = load ptr, ptr %i.b, align 8
  %i.jm = load i32, ptr %i.g, align 4
  %i.jn = sext i32 %i.jm to i64
  %i.jo = getelementptr inbounds i8, ptr %i.jl, i64 %i.jn
  %i.jp = call ptr @new_token(i32 noundef 1, ptr noundef %i.jk, ptr noundef %i.jo) ; 2 uses
  %i.jq = load ptr, ptr %i.c, align 8
  %27 = getelementptr inbounds nuw %struct.Token, ptr %i.jq, i32 0, i32 1
  store ptr %i.jp, ptr %27, align 8
  store ptr %i.jp, ptr %i.c, align 8
  %i.jr = load ptr, ptr %i.c, align 8
  %28 = getelementptr inbounds nuw %struct.Token, ptr %i.jr, i32 0, i32 5
  %i.js = load i32, ptr %28, align 8
  %i.jt = load ptr, ptr %i.b, align 8
  %i.ju = sext i32 %i.js to i64
  %i.jv = getelementptr inbounds i8, ptr %i.jt, i64 %i.ju
  store ptr %i.jv, ptr %i.b, align 8
  br label %.backedge

bb.bb:                                            ; preds = %bb.az
  %i.jw = load ptr, ptr %i.b, align 8
  call void (ptr, ptr, ...) @error_at(ptr noundef %i.jw, ptr noundef @.str.15) #17
  unreachable

bb.bc:                                            ; preds = %bb.b
  %i.jx = load ptr, ptr %i.b, align 8
  %i.jy = load ptr, ptr %i.b, align 8
  %i.jz = call ptr @new_token(i32 noundef 6, ptr noundef %i.jx, ptr noundef %i.jy) ; 2 uses
  %i.ka = load ptr, ptr %i.c, align 8
  %29 = getelementptr inbounds nuw %struct.Token, ptr %i.ka, i32 0, i32 1
  store ptr %i.jz, ptr %29, align 8
  store ptr %i.jz, ptr %i.c, align 8
  %30 = getelementptr inbounds nuw %struct.Token, ptr %1, i32 0, i32 1
  %i.kb = load ptr, ptr %30, align 8
  call void @add_line_numbers(ptr noundef %i.kb)
  %31 = getelementptr inbounds nuw %struct.Token, ptr %1, i32 0, i32 1
  %i.kc = load ptr, ptr %31, align 8
  ret ptr %i.kc
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #6

; Function Attrs: noinline nounwind optnone uwtable
define internal zeroext i1 @startswith(ptr noundef %0, ptr noundef %1) unnamed_addr #4 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 2 uses
  %i.b = alloca ptr, align 8                      ; 3 uses
  store ptr %0, ptr %i.a, align 8
  store ptr %1, ptr %i.b, align 8
  %i.c = load ptr, ptr %i.a, align 8
  %i.d = load ptr, ptr %i.b, align 8
  %i.e = load ptr, ptr %i.b, align 8
  %i.f = call i64 @strlen(ptr noundef %i.e) #16
  %i.g = call i32 @strncmp(ptr noundef %i.c, ptr noundef %i.d, i64 noundef %i.f) #16
  %i.h = icmp eq i32 %i.g, 0
  ret i1 %i.h
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare ptr @strstr(ptr noundef, ptr noundef captures(none)) local_unnamed_addr #5

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__ctype_b_loc() local_unnamed_addr #7

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: noinline nounwind optnone uwtable
define internal ptr @new_token(i32 noundef range(i32 0, 7) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #4 {
bb.a:
  %i.a = alloca i32, align 4                      ; 2 uses
  %i.b = alloca ptr, align 8                      ; 3 uses
  %i.c = alloca ptr, align 8                      ; 2 uses
  %i.d = alloca ptr, align 8                      ; 9 uses
  store i32 %0, ptr %i.a, align 4
  store ptr %1, ptr %i.b, align 8
  store ptr %2, ptr %i.c, align 8
  %i.e = call noalias ptr @calloc(i64 noundef 1, i64 noundef 128) #18
  store ptr %i.e, ptr %i.d, align 8
  %i.f = load i32, ptr %i.a, align 4
  %i.g = load ptr, ptr %i.d, align 8
  %3 = getelementptr inbounds nuw %struct.Token, ptr %i.g, i32 0, i32 0
  store i32 %i.f, ptr %3, align 16
  %i.h = load ptr, ptr %i.b, align 8
  %i.i = load ptr, ptr %i.d, align 8
  %4 = getelementptr inbounds nuw %struct.Token, ptr %i.i, i32 0, i32 4
  store ptr %i.h, ptr %4, align 16
  %i.j = load ptr, ptr %i.c, align 8
  %i.k = load ptr, ptr %i.b, align 8
  %i.l = ptrtoint ptr %i.j to i64
  %i.m = ptrtoint ptr %i.k to i64
  %i.n = sub i64 %i.l, %i.m
  %i.o = trunc i64 %i.n to i32
  %i.p = load ptr, ptr %i.d, align 8
  %5 = getelementptr inbounds nuw %struct.Token, ptr %i.p, i32 0, i32 5
  store i32 %i.o, ptr %5, align 8
  %i.q = load ptr, ptr @current_file, align 8
  %i.r = load ptr, ptr %i.d, align 8
  %6 = getelementptr inbounds nuw %struct.Token, ptr %i.r, i32 0, i32 8
  store ptr %i.q, ptr %6, align 16
  %i.s = load ptr, ptr @current_file, align 8
  %7 = getelementptr inbounds nuw %struct.File, ptr %i.s, i32 0, i32 3
  %i.t = load ptr, ptr %7, align 8
  %i.u = load ptr, ptr %i.d, align 8
  %8 = getelementptr inbounds nuw %struct.Token, ptr %i.u, i32 0, i32 9
  store ptr %i.t, ptr %8, align 8
  %.b = load i1, ptr @at_bol, align 1
  %i.v = zext i1 %.b to i8
  %i.w = icmp ne i8 %i.v, 0
  %i.x = load ptr, ptr %i.d, align 8
  %9 = getelementptr inbounds nuw %struct.Token, ptr %i.x, i32 0, i32 12
  %i.y = zext i1 %i.w to i8
  store i8 %i.y, ptr %9, align 8
  %.b1 = load i1, ptr @has_space, align 1
  %i.z = zext i1 %.b1 to i8
  %i.aa = icmp ne i8 %i.z, 0
  %i.ab = load ptr, ptr %i.d, align 8
  %10 = getelementptr inbounds nuw %struct.Token, ptr %i.ab, i32 0, i32 13
  %i.ac = zext i1 %i.aa to i8
  store i8 %i.ac, ptr %10, align 1
  store i1 false, ptr @has_space, align 1
  store i1 false, ptr @at_bol, align 1
  %i.ad = load ptr, ptr %i.d, align 8
  ret ptr %i.ad
}

; Function Attrs: noinline nounwind optnone uwtable
define internal ptr @read_string_literal(ptr noundef %0, ptr noundef %1) unnamed_addr #4 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 2 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %i.c = alloca ptr, align 8                      ; 4 uses
  %i.d = alloca ptr, align 8                      ; 4 uses
  %i.e = alloca i32, align 4                      ; 6 uses
  %i.f = alloca ptr, align 8                      ; 7 uses
  %i.g = alloca ptr, align 8                      ; 4 uses
  store ptr %0, ptr %i.a, align 8
  store ptr %1, ptr %i.b, align 8
  %i.h = load ptr, ptr %i.b, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 1
  %i.j = call ptr @string_literal_end(ptr noundef %i.i)
  store ptr %i.j, ptr %i.c, align 8
  %i.k = load ptr, ptr %i.c, align 8
  %i.l = load ptr, ptr %i.b, align 8
  %i.m = ptrtoint ptr %i.k to i64
  %i.n = ptrtoint ptr %i.l to i64
  %i.o = sub i64 %i.m, %i.n
  %i.p = call noalias ptr @calloc(i64 noundef 1, i64 noundef %i.o) #18
  store ptr %i.p, ptr %i.d, align 8
  store i32 0, ptr %i.e, align 4
  %i.q = load ptr, ptr %i.b, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 1
  store ptr %i.r, ptr %i.f, align 8
  br label %bb.b

bb.b:                                             ; preds = %bb.f, %bb.a
  %i.s = load ptr, ptr %i.f, align 8
  %i.t = load ptr, ptr %i.c, align 8
  %i.u = icmp ult ptr %i.s, %i.t
  br i1 %i.u, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.v = load ptr, ptr %i.f, align 8
  %i.w = load i8, ptr %i.v, align 1
  %i.x = sext i8 %i.w to i32
  %i.y = icmp eq i32 %i.x, 92
  br i1 %i.y, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.z = load ptr, ptr %i.f, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 1
  %i.ab = call i32 @read_escaped_char(ptr noundef %i.f, ptr noundef %i.aa)
  %i.ac = trunc i32 %i.ab to i8
  %i.ad = load ptr, ptr %i.d, align 8
  %i.ae = load i32, ptr %i.e, align 4             ; 2 uses
  %i.af = add nsw i32 %i.ae, 1
  store i32 %i.af, ptr %i.e, align 4
  %i.ag = sext i32 %i.ae to i64
  %i.ah = getelementptr inbounds i8, ptr %i.ad, i64 %i.ag
  store i8 %i.ac, ptr %i.ah, align 1
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.ai = load ptr, ptr %i.f, align 8             ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i32 1
  store ptr %i.aj, ptr %i.f, align 8
  %i.ak = load i8, ptr %i.ai, align 1
  %i.al = load ptr, ptr %i.d, align 8
  %i.am = load i32, ptr %i.e, align 4             ; 2 uses
  %i.an = add nsw i32 %i.am, 1
  store i32 %i.an, ptr %i.e, align 4
  %i.ao = sext i32 %i.am to i64
  %i.ap = getelementptr inbounds i8, ptr %i.al, i64 %i.ao
  store i8 %i.ak, ptr %i.ap, align 1
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  br label %bb.b, !llvm.loop !18

bb.g:                                             ; preds = %bb.b
  %i.aq = load ptr, ptr %i.a, align 8
  %i.ar = load ptr, ptr %i.c, align 8
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 1
  %i.at = call ptr @new_token(i32 noundef 3, ptr noundef %i.aq, ptr noundef %i.as)
  store ptr %i.at, ptr %i.g, align 8
  %i.au = load ptr, ptr @ty_char, align 8
  %i.av = load i32, ptr %i.e, align 4
  %i.aw = add nsw i32 %i.av, 1
  %i.ax = call ptr @array_of(ptr noundef %i.au, i32 noundef %i.aw)
  %i.ay = load ptr, ptr %i.g, align 8
  %2 = getelementptr inbounds nuw %struct.Token, ptr %i.ay, i32 0, i32 6
  store ptr %i.ax, ptr %2, align 16
  %i.az = load ptr, ptr %i.d, align 8
  %i.ba = load ptr, ptr %i.g, align 8
  %3 = getelementptr inbounds nuw %struct.Token, ptr %i.ba, i32 0, i32 7
  store ptr %i.az, ptr %3, align 8
  %i.bb = load ptr, ptr %i.g, align 8
end_hunk_0
