Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/php/original/zend_operators?download=true
inline.NumInlined: 54
inline.NumDeleted: 5
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 14
loop-unroll.NumUnrolled: 19
begin_hunk_0_@sub_function_slow:bb.a
bb.h:                                             ; preds = %bb.e
  %i.w = load double, ptr %.030, align 8, !tbaa !12
  %i.x = load double, ptr %.0, align 8, !tbaa !12
  %i.y = fsub double %i.w, %i.x
  store double %i.y, ptr %0, align 8, !tbaa !12
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 5, ptr %i.z, align 8, !tbaa !12
  br label %sub_function_fast.exit39.thread

bb.i:                                             ; preds = %bb.e
  %i.aa = load i64, ptr %.030, align 8, !tbaa !12
  %i.ab = sitofp i64 %i.aa to double
  %i.ac = load double, ptr %.0, align 8, !tbaa !12
  %i.ad = fsub double %i.ab, %i.ac
  store double %i.ad, ptr %0, align 8, !tbaa !12
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 5, ptr %i.ae, align 8, !tbaa !12
  br label %sub_function_fast.exit39.thread

bb.j:                                             ; preds = %bb.e
  %i.af = load double, ptr %.030, align 8, !tbaa !12
  %i.ag = load i64, ptr %.0, align 8, !tbaa !12
  %i.ah = sitofp i64 %i.ag to double
  %i.ai = fsub double %i.af, %i.ah
  store double %i.ai, ptr %0, align 8, !tbaa !12
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 5, ptr %i.aj, align 8, !tbaa !12
  br label %sub_function_fast.exit39.thread

sub_function_fast.exit39:                         ; preds = %bb.e
  %i.ak = icmp eq i8 %i.m, 8
  br i1 %i.ak, label %bb.k, label %bb.m, !prof !47

bb.k:                                             ; preds = %sub_function_fast.exit39
  %i.al = load ptr, ptr %.030, align 8, !tbaa !12
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 24
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !21
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 184
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !98 ; 2 uses
  %.not = icmp eq ptr %i.ap, null
  br i1 %.not, label %bb.m, label %bb.l, !prof !44

bb.l:                                             ; preds = %bb.k
  %i.aq = tail call i32 %i.ap(i8 noundef zeroext 2, ptr noundef %0, ptr noundef nonnull %.030, ptr noundef nonnull %.0) #24
  %i.ar = icmp eq i32 %i.aq, 0
  br i1 %i.ar, label %sub_function_fast.exit39.thread, label %bb.p, !prof !44

bb.m:                                             ; preds = %bb.k, %sub_function_fast.exit39
  %i.as = icmp eq i8 %i.k, 8
  br i1 %i.as, label %bb.n, label %bb.p, !prof !47

bb.n:                                             ; preds = %bb.m
  %i.at = load ptr, ptr %.0, align 8, !tbaa !12
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 24
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !21
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 184
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !98 ; 2 uses
  %.not36 = icmp eq ptr %i.ax, null
  br i1 %.not36, label %bb.p, label %bb.o, !prof !44

bb.o:                                             ; preds = %bb.n
  %i.ay = tail call i32 %i.ax(i8 noundef zeroext 2, ptr noundef %0, ptr noundef nonnull %.030, ptr noundef nonnull %.0) #24
  %i.az = icmp eq i32 %i.ay, 0
  br i1 %i.az, label %sub_function_fast.exit39.thread, label %bb.p, !prof !44

bb.p:                                             ; preds = %bb.m, %bb.n, %bb.o, %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  %i.ba = load i8, ptr %i.l, align 8, !tbaa !12
  %i.bb = and i8 %i.ba, -2
  %switch = icmp eq i8 %i.bb, 4
  br i1 %switch, label %zendi_try_convert_scalar_to_number.exit42.thread, label %zendi_try_convert_scalar_to_number.exit42

zendi_try_convert_scalar_to_number.exit42.thread: ; preds = %bb.p
  %i.bc = load ptr, ptr %.030, align 8, !tbaa !12
  %i.bd = load i32, ptr %i.l, align 8, !tbaa !12
  store ptr %i.bc, ptr %3, align 8, !tbaa !12
  %i.be = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 %i.bd, ptr %i.be, align 8, !tbaa !12
  br label %bb.q

zendi_try_convert_scalar_to_number.exit42:        ; preds = %bb.p
  %i.bf = call fastcc i32 @_zendi_try_convert_scalar_to_number(ptr noundef nonnull %.030, ptr noundef nonnull %3)
  %i.bg = icmp eq i32 %i.bf, -1
  br i1 %i.bg, label %bb.r, label %bb.q, !prof !99

bb.q:                                             ; preds = %zendi_try_convert_scalar_to_number.exit42.thread, %zendi_try_convert_scalar_to_number.exit42
  %i.bh = load i8, ptr %i.o, align 8, !tbaa !12
  %i.bi = and i8 %i.bh, -2
  %switch48 = icmp eq i8 %i.bi, 4
  br i1 %switch48, label %zendi_try_convert_scalar_to_number.exit.thread, label %zendi_try_convert_scalar_to_number.exit

zendi_try_convert_scalar_to_number.exit.thread:   ; preds = %bb.q
  %i.bj = load ptr, ptr %.0, align 8, !tbaa !12
  %i.bk = load i32, ptr %i.o, align 8, !tbaa !12
  store ptr %i.bj, ptr %4, align 8, !tbaa !12
  %i.bl = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 %i.bk, ptr %i.bl, align 8, !tbaa !12
  br label %bb.s

zendi_try_convert_scalar_to_number.exit:          ; preds = %bb.q
  %i.bm = call fastcc i32 @_zendi_try_convert_scalar_to_number(ptr noundef nonnull %.0, ptr noundef nonnull %4)
  %i.bn = icmp eq i32 %i.bm, -1
  br i1 %i.bn, label %bb.r, label %bb.s, !prof !100

bb.r:                                             ; preds = %zendi_try_convert_scalar_to_number.exit, %zendi_try_convert_scalar_to_number.exit42
  call fastcc void @zend_binop_error(ptr noundef nonnull @.str.38, ptr noundef nonnull %.030, ptr noundef nonnull %.0)
  %.not37 = icmp eq ptr %0, %.030
  br i1 %.not37, label %sub_function_fast.exit, label %sub_function_fast.exit.sink.split

bb.s:                                             ; preds = %zendi_try_convert_scalar_to_number.exit.thread, %zendi_try_convert_scalar_to_number.exit
  %i.bo = icmp eq ptr %0, %.030
  br i1 %i.bo, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  call void @zval_ptr_dtor(ptr noundef %0) #24
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %i.bp = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.bq = load i8, ptr %i.bp, align 8, !tbaa !12
  %i.br = shl i8 %i.bq, 4
  %i.bs = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.bt = load i8, ptr %i.bs, align 8, !tbaa !12
  %i.bu = or i8 %i.br, %i.bt
  switch i8 %i.bu, label %unreachable [
    i8 68, label %bb.v
    i8 85, label %bb.x
    i8 69, label %bb.y
    i8 84, label %bb.z
  ], !prof !101

bb.v:                                             ; preds = %bb.u
  callbr void asm sideeffect "movq\09($1), %rax\0A\09subq   ($2), %rax\0A\09jo     ${5:l}\0A\09movq   %rax, ($0)\0A\09movl   $3, ${4:c}($0)\0A", "r,r,r,n,n,!i,~{rax},~{cc},~{memory},~{dirflag},~{fpsr},~{flags}"(ptr %0, ptr nonnull %3, ptr nonnull %4, i32 4, i64 8) #24
          to label %sub_function_fast.exit [label %bb.w], !srcloc !102

bb.w:                                             ; preds = %bb.v
  %i.bv = load i64, ptr %3, align 8, !tbaa !12
  %i.bw = sitofp i64 %i.bv to double
  %i.bx = load i64, ptr %4, align 8, !tbaa !12
  %i.by = sitofp i64 %i.bx to double
  %i.bz = fsub double %i.bw, %i.by
  br label %sub_function_fast.exit.sink.split.sink.split

bb.x:                                             ; preds = %bb.u
  %i.ca = load double, ptr %3, align 8, !tbaa !12
  %i.cb = load double, ptr %4, align 8, !tbaa !12
  %i.cc = fsub double %i.ca, %i.cb
  br label %sub_function_fast.exit.sink.split.sink.split

bb.y:                                             ; preds = %bb.u
  %i.cd = load i64, ptr %3, align 8, !tbaa !12
  %i.ce = sitofp i64 %i.cd to double
  %i.cf = load double, ptr %4, align 8, !tbaa !12
  %i.cg = fsub double %i.ce, %i.cf
  br label %sub_function_fast.exit.sink.split.sink.split

bb.z:                                             ; preds = %bb.u
  %i.ch = load double, ptr %3, align 8, !tbaa !12
  %i.ci = load i64, ptr %4, align 8, !tbaa !12
  %i.cj = sitofp i64 %i.ci to double
  %i.ck = fsub double %i.ch, %i.cj
  br label %sub_function_fast.exit.sink.split.sink.split

unreachable:                                      ; preds = %bb.u
  unreachable

sub_function_fast.exit.sink.split.sink.split:     ; preds = %bb.z, %bb.y, %bb.x, %bb.w
  %.sink55 = phi double [ %i.bz, %bb.w ], [ %i.cc, %bb.x ], [ %i.cg, %bb.y ], [ %i.ck, %bb.z ]
  store double %.sink55, ptr %0, align 8, !tbaa !12
  br label %sub_function_fast.exit.sink.split

sub_function_fast.exit.sink.split:                ; preds = %sub_function_fast.exit.sink.split.sink.split, %bb.r
  %.sink = phi i32 [ 0, %bb.r ], [ 5, %sub_function_fast.exit.sink.split.sink.split ]
  %.031.ph = phi i32 [ -1, %bb.r ], [ 0, %sub_function_fast.exit.sink.split.sink.split ]
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %.sink, ptr %i.cl, align 8, !tbaa !12
  br label %sub_function_fast.exit

sub_function_fast.exit:                           ; preds = %sub_function_fast.exit.sink.split, %bb.v, %bb.r
  %.031 = phi i32 [ -1, %bb.r ], [ 0, %bb.v ], [ %.031.ph, %sub_function_fast.exit.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  br label %sub_function_fast.exit39.thread

sub_function_fast.exit39.thread:                  ; preds = %bb.g, %bb.f, %bb.j, %bb.i, %bb.h, %bb.o, %bb.l, %sub_function_fast.exit
  %.1 = phi i32 [ 0, %bb.l ], [ 0, %bb.o ], [ %.031, %sub_function_fast.exit ], [ 0, %bb.h ], [ 0, %bb.i ], [ 0, %bb.j ], [ 0, %bb.f ], [ 0, %bb.g ]
  ret i32 %.1
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 -1, 1) i32 @mul_function(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load i8, ptr %i.a, align 8, !tbaa !12
  %i.c = shl i8 %i.b, 4
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.e = load i8, ptr %i.d, align 8, !tbaa !12
  %i.f = or i8 %i.c, %i.e
  switch i8 %i.f, label %mul_function_fast.exit [
    i8 68, label %3
    i8 85, label %bb.c
    i8 69, label %bb.d
    i8 84, label %bb.e
  ], !prof !101

3:                                                ; preds = %bb.a
  %4 = load i64, ptr %1, align 8, !tbaa !12       ; 3 uses
  %5 = load i64, ptr %2, align 8, !tbaa !12       ; 3 uses
  %6 = tail call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %4, i64 %5)
  %7 = extractvalue { i64, i1 } %6, 1
  br i1 %7, label %8, label %13

8:                                                ; preds = %3
  %9 = sitofp i64 %4 to double
  %10 = sitofp i64 %5 to double
  %11 = fmul nnan double %9, %10
  %12 = bitcast double %11 to i64
  br label %bb.b

13:                                               ; preds = %3
  %14 = mul nsw i64 %5, %4
  br label %bb.b

bb.b:                                             ; preds = %13, %8
  %15 = phi i32 [ 4, %13 ], [ 5, %8 ]
  %storemerge.i = phi i64 [ %14, %13 ], [ %12, %8 ]
  store i64 %storemerge.i, ptr %0, align 8, !tbaa !12
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %15, ptr %i.g, align 8, !tbaa !12
  br label %mul_function_fast.exit.thread

bb.c:                                             ; preds = %bb.a
  %i.h = load double, ptr %1, align 8, !tbaa !12
  %i.i = load double, ptr %2, align 8, !tbaa !12
  %i.j = fmul double %i.h, %i.i
  store double %i.j, ptr %0, align 8, !tbaa !12
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 5, ptr %i.k, align 8, !tbaa !12
  br label %mul_function_fast.exit.thread

bb.d:                                             ; preds = %bb.a
  %i.l = load i64, ptr %1, align 8, !tbaa !12
  %i.m = sitofp i64 %i.l to double
  %i.n = load double, ptr %2, align 8, !tbaa !12
  %i.o = fmul double %i.n, %i.m
  store double %i.o, ptr %0, align 8, !tbaa !12
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 5, ptr %i.p, align 8, !tbaa !12
  br label %mul_function_fast.exit.thread

bb.e:                                             ; preds = %bb.a
  %i.q = load double, ptr %1, align 8, !tbaa !12
  %i.r = load i64, ptr %2, align 8, !tbaa !12
  %i.s = sitofp i64 %i.r to double
  %i.t = fmul double %i.q, %i.s
  store double %i.t, ptr %0, align 8, !tbaa !12
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 5, ptr %i.u, align 8, !tbaa !12
  br label %mul_function_fast.exit.thread

mul_function_fast.exit:                           ; preds = %bb.a
  %i.v = tail call fastcc i32 @mul_function_slow(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull %2)
  br label %mul_function_fast.exit.thread

mul_function_fast.exit.thread:                    ; preds = %bb.e, %bb.d, %bb.c, %bb.b, %mul_function_fast.exit
  %.0 = phi i32 [ %i.v, %mul_function_fast.exit ], [ 0, %bb.b ], [ 0, %bb.c ], [ 0, %bb.d ], [ 0, %bb.e ]
  ret i32 %.0
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc range(i32 -1, 1) i32 @mul_function_slow(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #3 {
bb.a:
  %3 = alloca %struct._zval_struct, align 8       ; 10 uses
  %4 = alloca %struct._zval_struct, align 8       ; 10 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load i8, ptr %i.a, align 8, !tbaa !12
  %i.c = icmp eq i8 %i.b, 10
  br i1 %i.c, label %bb.b, label %bb.c, !prof !47

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %1, align 8, !tbaa !12
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.030 = phi ptr [ %i.e, %bb.b ], [ %1, %bb.a ]  ; 13 uses
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.g = load i8, ptr %i.f, align 8, !tbaa !12    ; 2 uses
  %i.h = icmp eq i8 %i.g, 10
  br i1 %i.h, label %bb.d, label %bb.e, !prof !47

bb.d:                                             ; preds = %bb.c
  %i.i = load ptr, ptr %2, align 8, !tbaa !12     ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %.pre = load i8, ptr %.phi.trans.insert, align 8, !tbaa !12
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %i.k = phi i8 [ %.pre, %bb.d ], [ %i.g, %bb.c ] ; 2 uses
  %.0 = phi ptr [ %i.j, %bb.d ], [ %2, %bb.c ]    ; 11 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.030, i64 8 ; 3 uses
  %i.m = load i8, ptr %i.l, align 8, !tbaa !12    ; 2 uses
  %i.n = shl i8 %i.m, 4
  %i.o = getelementptr inbounds nuw i8, ptr %.0, i64 8 ; 2 uses
  %i.p = or i8 %i.n, %i.k
  switch i8 %i.p, label %mul_function_fast.exit40 [
    i8 68, label %5
    i8 85, label %bb.g
    i8 69, label %bb.h
    i8 84, label %bb.i
  ], !prof !101

5:                                                ; preds = %bb.e
  %6 = load i64, ptr %.030, align 8, !tbaa !12    ; 3 uses
  %7 = load i64, ptr %.0, align 8, !tbaa !12      ; 3 uses
  %8 = tail call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %6, i64 %7)
  %9 = extractvalue { i64, i1 } %8, 1
  br i1 %9, label %10, label %15

10:                                               ; preds = %5
  %11 = sitofp i64 %6 to double
  %12 = sitofp i64 %7 to double
  %13 = fmul nnan double %11, %12
  %14 = bitcast double %13 to i64
  br label %bb.f

15:                                               ; preds = %5
  %16 = mul nsw i64 %7, %6
  br label %bb.f

bb.f:                                             ; preds = %15, %10
  %17 = phi i32 [ 4, %15 ], [ 5, %10 ]
  %storemerge.i39 = phi i64 [ %16, %15 ], [ %14, %10 ]
  store i64 %storemerge.i39, ptr %0, align 8, !tbaa !12
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %17, ptr %i.q, align 8, !tbaa !12
  br label %mul_function_fast.exit40.thread

bb.g:                                             ; preds = %bb.e
  %i.r = load double, ptr %.030, align 8, !tbaa !12
  %i.s = load double, ptr %.0, align 8, !tbaa !12
  %i.t = fmul double %i.r, %i.s
  store double %i.t, ptr %0, align 8, !tbaa !12
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 5, ptr %i.u, align 8, !tbaa !12
  br label %mul_function_fast.exit40.thread

bb.h:                                             ; preds = %bb.e
  %i.v = load i64, ptr %.030, align 8, !tbaa !12
  %i.w = sitofp i64 %i.v to double
  %i.x = load double, ptr %.0, align 8, !tbaa !12
  %i.y = fmul double %i.x, %i.w
  store double %i.y, ptr %0, align 8, !tbaa !12
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 5, ptr %i.z, align 8, !tbaa !12
  br label %mul_function_fast.exit40.thread

bb.i:                                             ; preds = %bb.e
  %i.aa = load double, ptr %.030, align 8, !tbaa !12
  %i.ab = load i64, ptr %.0, align 8, !tbaa !12
  %i.ac = sitofp i64 %i.ab to double
  %i.ad = fmul double %i.aa, %i.ac
  store double %i.ad, ptr %0, align 8, !tbaa !12
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 5, ptr %i.ae, align 8, !tbaa !12
  br label %mul_function_fast.exit40.thread

mul_function_fast.exit40:                         ; preds = %bb.e
  %i.af = icmp eq i8 %i.m, 8
  br i1 %i.af, label %bb.j, label %bb.l, !prof !47

bb.j:                                             ; preds = %mul_function_fast.exit40
  %i.ag = load ptr, ptr %.030, align 8, !tbaa !12
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 24
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !21
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 184
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !98 ; 2 uses
  %.not = icmp eq ptr %i.ak, null
  br i1 %.not, label %bb.l, label %bb.k, !prof !44

bb.k:                                             ; preds = %bb.j
  %i.al = tail call i32 %i.ak(i8 noundef zeroext 3, ptr noundef %0, ptr noundef nonnull %.030, ptr noundef nonnull %.0) #24
  %i.am = icmp eq i32 %i.al, 0
  br i1 %i.am, label %mul_function_fast.exit40.thread, label %bb.o, !prof !44

bb.l:                                             ; preds = %bb.j, %mul_function_fast.exit40
  %i.an = icmp eq i8 %i.k, 8
  br i1 %i.an, label %bb.m, label %bb.o, !prof !47

bb.m:                                             ; preds = %bb.l
  %i.ao = load ptr, ptr %.0, align 8, !tbaa !12
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 24
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !21
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 184
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !98 ; 2 uses
  %.not36 = icmp eq ptr %i.as, null
  br i1 %.not36, label %bb.o, label %bb.n, !prof !44

bb.n:                                             ; preds = %bb.m
  %i.at = tail call i32 %i.as(i8 noundef zeroext 3, ptr noundef %0, ptr noundef nonnull %.030, ptr noundef nonnull %.0) #24
  %i.au = icmp eq i32 %i.at, 0
  br i1 %i.au, label %mul_function_fast.exit40.thread, label %bb.o, !prof !44

bb.o:                                             ; preds = %bb.l, %bb.m, %bb.n, %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  %i.av = load i8, ptr %i.l, align 8, !tbaa !12
  %i.aw = and i8 %i.av, -2
  %switch = icmp eq i8 %i.aw, 4
  br i1 %switch, label %zendi_try_convert_scalar_to_number.exit43.thread, label %zendi_try_convert_scalar_to_number.exit43

zendi_try_convert_scalar_to_number.exit43.thread: ; preds = %bb.o
  %i.ax = load ptr, ptr %.030, align 8, !tbaa !12
  %i.ay = load i32, ptr %i.l, align 8, !tbaa !12
  store ptr %i.ax, ptr %3, align 8, !tbaa !12
  %i.az = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 %i.ay, ptr %i.az, align 8, !tbaa !12
  br label %bb.p

zendi_try_convert_scalar_to_number.exit43:        ; preds = %bb.o
  %i.ba = call fastcc i32 @_zendi_try_convert_scalar_to_number(ptr noundef nonnull %.030, ptr noundef nonnull %3)
  %i.bb = icmp eq i32 %i.ba, -1
  br i1 %i.bb, label %bb.q, label %bb.p, !prof !99

bb.p:                                             ; preds = %zendi_try_convert_scalar_to_number.exit43.thread, %zendi_try_convert_scalar_to_number.exit43
  %i.bc = load i8, ptr %i.o, align 8, !tbaa !12
  %i.bd = and i8 %i.bc, -2
  %switch48 = icmp eq i8 %i.bd, 4
  br i1 %switch48, label %zendi_try_convert_scalar_to_number.exit.thread, label %zendi_try_convert_scalar_to_number.exit

zendi_try_convert_scalar_to_number.exit.thread:   ; preds = %bb.p
  %i.be = load ptr, ptr %.0, align 8, !tbaa !12
  %i.bf = load i32, ptr %i.o, align 8, !tbaa !12
  store ptr %i.be, ptr %4, align 8, !tbaa !12
  %i.bg = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 %i.bf, ptr %i.bg, align 8, !tbaa !12
  br label %bb.r

zendi_try_convert_scalar_to_number.exit:          ; preds = %bb.p
  %i.bh = call fastcc i32 @_zendi_try_convert_scalar_to_number(ptr noundef nonnull %.0, ptr noundef nonnull %4)
  %i.bi = icmp eq i32 %i.bh, -1
  br i1 %i.bi, label %bb.q, label %bb.r, !prof !100

bb.q:                                             ; preds = %zendi_try_convert_scalar_to_number.exit, %zendi_try_convert_scalar_to_number.exit43
  call fastcc void @zend_binop_error(ptr noundef nonnull @.str.39, ptr noundef nonnull %.030, ptr noundef nonnull %.0)
  %.not37 = icmp eq ptr %0, %.030
  br i1 %.not37, label %mul_function_fast.exit, label %mul_function_fast.exit.sink.split

bb.r:                                             ; preds = %zendi_try_convert_scalar_to_number.exit.thread, %zendi_try_convert_scalar_to_number.exit
  %i.bj = icmp eq ptr %0, %.030
  br i1 %i.bj, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  call void @zval_ptr_dtor(ptr noundef %0) #24
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %i.bk = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.bl = load i8, ptr %i.bk, align 8, !tbaa !12
  %i.bm = shl i8 %i.bl, 4
  %i.bn = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.bo = load i8, ptr %i.bn, align 8, !tbaa !12
  %i.bp = or i8 %i.bm, %i.bo
  switch i8 %i.bp, label %unreachable [
    i8 68, label %18
    i8 85, label %bb.v
    i8 69, label %bb.w
    i8 84, label %bb.x
  ], !prof !101

18:                                               ; preds = %bb.t
  %19 = load i64, ptr %3, align 8, !tbaa !12      ; 3 uses
  %20 = load i64, ptr %4, align 8, !tbaa !12      ; 3 uses
  %21 = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %19, i64 %20)
  %22 = extractvalue { i64, i1 } %21, 1
  br i1 %22, label %bb.u, label %23

bb.u:                                             ; preds = %18
  %i.bq = sitofp i64 %19 to double
  %i.br = sitofp i64 %20 to double
  %i.bs = fmul nnan double %i.bq, %i.br
  %i.bt = bitcast double %i.bs to i64
  br label %25

23:                                               ; preds = %18
  %24 = mul nsw i64 %20, %19
  br label %25

25:                                               ; preds = %23, %bb.u
  %26 = phi i32 [ 4, %23 ], [ 5, %bb.u ]
  %storemerge.i = phi i64 [ %24, %23 ], [ %i.bt, %bb.u ]
  store i64 %storemerge.i, ptr %0, align 8, !tbaa !12
  br label %mul_function_fast.exit.sink.split

bb.v:                                             ; preds = %bb.t
  %i.bu = load double, ptr %3, align 8, !tbaa !12
  %i.bv = load double, ptr %4, align 8, !tbaa !12
  %i.bw = fmul double %i.bu, %i.bv
  store double %i.bw, ptr %0, align 8, !tbaa !12
  br label %mul_function_fast.exit.sink.split

bb.w:                                             ; preds = %bb.t
  %i.bx = load i64, ptr %3, align 8, !tbaa !12
  %i.by = sitofp i64 %i.bx to double
  %i.bz = load double, ptr %4, align 8, !tbaa !12
  %i.ca = fmul double %i.bz, %i.by
  store double %i.ca, ptr %0, align 8, !tbaa !12
  br label %mul_function_fast.exit.sink.split

bb.x:                                             ; preds = %bb.t
  %i.cb = load double, ptr %3, align 8, !tbaa !12
  %i.cc = load i64, ptr %4, align 8, !tbaa !12
  %i.cd = sitofp i64 %i.cc to double
  %i.ce = fmul double %i.cb, %i.cd
  store double %i.ce, ptr %0, align 8, !tbaa !12
  br label %mul_function_fast.exit.sink.split

unreachable:                                      ; preds = %bb.t
  unreachable

mul_function_fast.exit.sink.split:                ; preds = %bb.q, %25, %bb.v, %bb.w, %bb.x
  %.sink = phi i32 [ 5, %bb.x ], [ 5, %bb.w ], [ 5, %bb.v ], [ %26, %25 ], [ 0, %bb.q ]
  %.031.ph = phi i32 [ 0, %bb.x ], [ 0, %bb.w ], [ 0, %bb.v ], [ 0, %25 ], [ -1, %bb.q ]
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %.sink, ptr %i.cf, align 8, !tbaa !12
  br label %mul_function_fast.exit

mul_function_fast.exit:                           ; preds = %mul_function_fast.exit.sink.split, %bb.q
  %.031 = phi i32 [ -1, %bb.q ], [ %.031.ph, %mul_function_fast.exit.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  br label %mul_function_fast.exit40.thread

mul_function_fast.exit40.thread:                  ; preds = %bb.i, %bb.h, %bb.g, %bb.f, %bb.n, %bb.k, %mul_function_fast.exit
  %.1 = phi i32 [ 0, %bb.k ], [ 0, %bb.n ], [ %.031, %mul_function_fast.exit ], [ 0, %bb.f ], [ 0, %bb.g ], [ 0, %bb.h ], [ 0, %bb.i ]
  ret i32 %.1
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 -1, 1) i32 @pow_function(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %3 = alloca %struct._zval_struct, align 8       ; 6 uses
  %4 = alloca %struct._zval_struct, align 8       ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load i8, ptr %i.a, align 8, !tbaa !12
  %i.c = icmp eq i8 %i.b, 10
  br i1 %i.c, label %bb.b, label %bb.c, !prof !47

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %1, align 8, !tbaa !12
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.030 = phi ptr [ %i.e, %bb.b ], [ %1, %bb.a ]  ; 10 uses
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.g = load i8, ptr %i.f, align 8, !tbaa !12
  %i.h = icmp eq i8 %i.g, 10
  br i1 %i.h, label %bb.d, label %bb.e, !prof !47

bb.d:                                             ; preds = %bb.c
  %i.i = load ptr, ptr %2, align 8, !tbaa !12
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %.0 = phi ptr [ %i.j, %bb.d ], [ %2, %bb.c ]    ; 9 uses
  %i.k = tail call fastcc i32 @pow_function_base(ptr noundef %0, ptr noundef nonnull %.030, ptr noundef nonnull %.0)
  %i.l = icmp eq i32 %i.k, 0
  br i1 %i.l, label %bb.t, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.m = getelementptr inbounds nuw i8, ptr %.030, i64 8 ; 3 uses
  %i.n = load i8, ptr %i.m, align 8, !tbaa !12
  %i.o = icmp eq i8 %i.n, 8
  br i1 %i.o, label %bb.g, label %bb.i, !prof !47

bb.g:                                             ; preds = %bb.f
  %i.p = load ptr, ptr %.030, align 8, !tbaa !12
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !21
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 184
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !98   ; 2 uses
  %.not = icmp eq ptr %i.t, null
  br i1 %.not, label %bb.i, label %bb.h, !prof !44

bb.h:                                             ; preds = %bb.g
  %i.u = tail call i32 %i.t(i8 noundef zeroext 12, ptr noundef %0, ptr noundef nonnull %.030, ptr noundef nonnull %.0) #24
  %i.v = icmp eq i32 %i.u, 0
  br i1 %i.v, label %bb.t, label %bb.l, !prof !44

bb.i:                                             ; preds = %bb.g, %bb.f
  %i.w = getelementptr inbounds nuw i8, ptr %.0, i64 8
  %i.x = load i8, ptr %i.w, align 8, !tbaa !12
  %i.y = icmp eq i8 %i.x, 8
  br i1 %i.y, label %bb.j, label %bb.l, !prof !47

bb.j:                                             ; preds = %bb.i
  %i.z = load ptr, ptr %.0, align 8, !tbaa !12
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 24
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !21
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 184
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !98 ; 2 uses
  %.not36 = icmp eq ptr %i.ad, null
  br i1 %.not36, label %bb.l, label %bb.k, !prof !44

bb.k:                                             ; preds = %bb.j
  %i.ae = tail call i32 %i.ad(i8 noundef zeroext 12, ptr noundef %0, ptr noundef nonnull %.030, ptr noundef nonnull %.0) #24
  %i.af = icmp eq i32 %i.ae, 0
  br i1 %i.af, label %bb.t, label %bb.l, !prof !44

bb.l:                                             ; preds = %bb.i, %bb.j, %bb.k, %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  %i.ag = load i8, ptr %i.m, align 8, !tbaa !12
  %i.ah = and i8 %i.ag, -2
  %switch = icmp eq i8 %i.ah, 4
  br i1 %switch, label %zendi_try_convert_scalar_to_number.exit39.thread, label %zendi_try_convert_scalar_to_number.exit39

zendi_try_convert_scalar_to_number.exit39.thread: ; preds = %bb.l
  %i.ai = load ptr, ptr %.030, align 8, !tbaa !12
  %i.aj = load i32, ptr %i.m, align 8, !tbaa !12
  store ptr %i.ai, ptr %3, align 8, !tbaa !12
  %i.ak = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 %i.aj, ptr %i.ak, align 8, !tbaa !12
  br label %bb.m

zendi_try_convert_scalar_to_number.exit39:        ; preds = %bb.l
  %i.al = call fastcc i32 @_zendi_try_convert_scalar_to_number(ptr noundef nonnull %.030, ptr noundef nonnull %3)
  %i.am = icmp eq i32 %i.al, -1
  br i1 %i.am, label %bb.n, label %bb.m, !prof !103

bb.m:                                             ; preds = %zendi_try_convert_scalar_to_number.exit39.thread, %zendi_try_convert_scalar_to_number.exit39
  %i.an = getelementptr inbounds nuw i8, ptr %.0, i64 8 ; 2 uses
  %i.ao = load i8, ptr %i.an, align 8, !tbaa !12
  %i.ap = and i8 %i.ao, -2
  %switch43 = icmp eq i8 %i.ap, 4
  br i1 %switch43, label %zendi_try_convert_scalar_to_number.exit.thread, label %zendi_try_convert_scalar_to_number.exit

zendi_try_convert_scalar_to_number.exit.thread:   ; preds = %bb.m
  %i.aq = load ptr, ptr %.0, align 8, !tbaa !12
  %i.ar = load i32, ptr %i.an, align 8, !tbaa !12
  store ptr %i.aq, ptr %4, align 8, !tbaa !12
  %i.as = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 %i.ar, ptr %i.as, align 8, !tbaa !12
  br label %bb.p

zendi_try_convert_scalar_to_number.exit:          ; preds = %bb.m
  %i.at = call fastcc i32 @_zendi_try_convert_scalar_to_number(ptr noundef nonnull %.0, ptr noundef nonnull %4)
  %i.au = icmp eq i32 %i.at, -1
  br i1 %i.au, label %bb.n, label %bb.p, !prof !103

bb.n:                                             ; preds = %zendi_try_convert_scalar_to_number.exit, %zendi_try_convert_scalar_to_number.exit39
  call fastcc void @zend_binop_error(ptr noundef nonnull @.str.9, ptr noundef nonnull %.030, ptr noundef nonnull %.0)
  %.not37 = icmp eq ptr %0, %.030
  br i1 %.not37, label %bb.s, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 0, ptr %i.av, align 8, !tbaa !12
  br label %bb.s

bb.p:                                             ; preds = %zendi_try_convert_scalar_to_number.exit.thread, %zendi_try_convert_scalar_to_number.exit
  %i.aw = icmp eq ptr %0, %.030
  br i1 %i.aw, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  call void @zval_ptr_dtor(ptr noundef %0) #24
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.ax = call fastcc i32 @pow_function_base(ptr noundef %0, ptr noundef nonnull %3, ptr noundef nonnull %4) ; 0 uses
  br label %bb.s

bb.s:                                             ; preds = %bb.n, %bb.o, %bb.r
  %.031 = phi i32 [ 0, %bb.r ], [ -1, %bb.o ], [ -1, %bb.n ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  br label %bb.t

bb.t:                                             ; preds = %bb.k, %bb.h, %bb.e, %bb.s
  %.1 = phi i32 [ 0, %bb.h ], [ 0, %bb.e ], [ %.031, %bb.s ], [ 0, %bb.k ]
  ret i32 %.1
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -1, 1) i32 @pow_function_base(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load i8, ptr %i.a, align 8, !tbaa !12
  %i.c = shl i8 %i.b, 4
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.e = load i8, ptr %i.d, align 8, !tbaa !12
  %i.f = or i8 %i.c, %i.e
  switch i8 %i.f, label %.critedge91 [
    i8 68, label %bb.b
    i8 85, label %bb.n
    i8 69, label %bb.p
    i8 84, label %bb.r
  ], !prof !101

bb.b:                                             ; preds = %bb.a
  %i.g = load i64, ptr %2, align 8, !tbaa !12     ; 4 uses
  %i.h = icmp sgt i64 %i.g, -1
  br i1 %i.h, label %bb.c, label %bb.l

bb.c:                                             ; preds = %bb.b
  %i.i = icmp eq i64 %i.g, 0
  br i1 %i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i64 1, ptr %0, align 8, !tbaa !12
  br label %.critedge91.sink.split

bb.e:                                             ; preds = %bb.c
  %i.j = load i64, ptr %1, align 8, !tbaa !12     ; 2 uses
  %i.k = icmp eq i64 %i.j, 0
  br i1 %i.k, label %bb.f, label %.lr.ph

bb.f:                                             ; preds = %bb.e
  store i64 0, ptr %0, align 8, !tbaa !12
  br label %.critedge91.sink.split

.lr.ph:                                           ; preds = %bb.e, %bb.k
  %.072102 = phi i64 [ %.375, %bb.k ], [ 1, %bb.e ] ; 5 uses
  %.076101 = phi i64 [ %.379, %bb.k ], [ %i.j, %bb.e ] ; 9 uses
  %.080100 = phi i64 [ %.282, %bb.k ], [ %i.g, %bb.e ] ; 3 uses
  %i.l = and i64 %.080100, 1
  %.not = icmp eq i64 %i.l, 0
  br i1 %.not, label %bb.i, label %bb.g

bb.g:                                             ; preds = %.lr.ph
  %i.m = add nsw i64 %.080100, -1                 ; 2 uses
  %i.n = tail call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %.072102, i64 %.076101)
  %i.o = extractvalue { i64, i1 } %i.n, 1
  br i1 %i.o, label %bb.h, label %3

3:                                                ; preds = %bb.g
  %4 = mul nsw i64 %.072102, %.076101
  br label %bb.k

bb.h:                                             ; preds = %bb.g
  %i.p = sitofp i64 %.072102 to double
  %i.q = sitofp i64 %.076101 to double            ; 2 uses
  %i.r = fmul nnan double %i.q, %i.p
  %i.s = uitofp nneg i64 %i.m to double
  %i.t = tail call double @pow(double noundef %i.q, double noundef %i.s) #24
  %i.u = fmul double %i.r, %i.t
  store double %i.u, ptr %0, align 8, !tbaa !12
  br label %.critedge91.sink.split

bb.i:                                             ; preds = %.lr.ph
  %i.v = lshr exact i64 %.080100, 1               ; 2 uses
  %i.w = tail call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %.076101, i64 %.076101)
  %i.x = extractvalue { i64, i1 } %i.w, 1
  %5 = mul nsw i64 %.076101, %.076101
  br i1 %i.x, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.y = sitofp i64 %.076101 to double            ; 2 uses
  %i.z = fmul nnan double %i.y, %i.y
  %i.aa = sitofp i64 %.072102 to double
  %i.ab = uitofp nneg i64 %i.v to double
  %i.ac = tail call double @pow(double noundef %i.z, double noundef %i.ab) #24
  %i.ad = fmul double %i.ac, %i.aa
  store double %i.ad, ptr %0, align 8, !tbaa !12
  br label %.critedge91.sink.split

bb.k:                                             ; preds = %3, %bb.i
  %.282 = phi i64 [ %i.m, %3 ], [ %i.v, %bb.i ]   ; 2 uses
  %.379 = phi i64 [ %.076101, %3 ], [ %5, %bb.i ]
  %.375 = phi i64 [ %4, %3 ], [ %.072102, %bb.i ] ; 2 uses
  %i.ae = icmp sgt i64 %.282, 0
  br i1 %i.ae, label %.lr.ph, label %.critedge, !llvm.loop !104

.critedge:                                        ; preds = %bb.k
  store i64 %.375, ptr %0, align 8, !tbaa !12
  br label %.critedge91.sink.split

bb.l:                                             ; preds = %bb.b
  %i.af = load i64, ptr %1, align 8, !tbaa !12    ; 2 uses
  %i.ag = sitofp i64 %i.af to double
  %i.ah = sitofp i64 %i.g to double
  %i.ai = icmp eq i64 %i.af, 0
  br i1 %i.ai, label %bb.m, label %safe_pow.exit, !prof !47

bb.m:                                             ; preds = %bb.l
  tail call void (i32, ptr, ...) @zend_error(i32 noundef 8192, ptr noundef nonnull @.str.40) #24
  br label %safe_pow.exit

safe_pow.exit:                                    ; preds = %bb.l, %bb.m
  %i.aj = tail call double @pow(double noundef %i.ag, double noundef %i.ah) #24
  store double %i.aj, ptr %0, align 8, !tbaa !12
  br label %.critedge91.sink.split

bb.n:                                             ; preds = %bb.a
  %i.ak = load double, ptr %1, align 8, !tbaa !12 ; 2 uses
  %i.al = load double, ptr %2, align 8, !tbaa !12 ; 2 uses
  %i.am = fcmp oeq double %i.ak, 0.000000e+00
  %i.an = fcmp olt double %i.al, 0.000000e+00
  %i.ao = and i1 %i.am, %i.an
  br i1 %i.ao, label %bb.o, label %safe_pow.exit92, !prof !47

bb.o:                                             ; preds = %bb.n
  tail call void (i32, ptr, ...) @zend_error(i32 noundef 8192, ptr noundef nonnull @.str.40) #24
  br label %safe_pow.exit92

safe_pow.exit92:                                  ; preds = %bb.n, %bb.o
  %i.ap = tail call double @pow(double noundef %i.ak, double noundef %i.al) #24
  store double %i.ap, ptr %0, align 8, !tbaa !12
  br label %.critedge91.sink.split

bb.p:                                             ; preds = %bb.a
  %i.aq = load i64, ptr %1, align 8, !tbaa !12    ; 2 uses
  %i.ar = sitofp i64 %i.aq to double
  %i.as = load double, ptr %2, align 8, !tbaa !12 ; 2 uses
  %i.at = icmp eq i64 %i.aq, 0
  %i.au = fcmp olt double %i.as, 0.000000e+00
  %i.av = and i1 %i.at, %i.au
  br i1 %i.av, label %bb.q, label %safe_pow.exit93, !prof !47

bb.q:                                             ; preds = %bb.p
  tail call void (i32, ptr, ...) @zend_error(i32 noundef 8192, ptr noundef nonnull @.str.40) #24
  br label %safe_pow.exit93

safe_pow.exit93:                                  ; preds = %bb.p, %bb.q
  %i.aw = tail call double @pow(double noundef %i.ar, double noundef %i.as) #24
  store double %i.aw, ptr %0, align 8, !tbaa !12
  br label %.critedge91.sink.split

bb.r:                                             ; preds = %bb.a
  %i.ax = load double, ptr %1, align 8, !tbaa !12 ; 2 uses
  %i.ay = load i64, ptr %2, align 8, !tbaa !12    ; 2 uses
  %i.az = sitofp i64 %i.ay to double
  %i.ba = fcmp oeq double %i.ax, 0.000000e+00
  %i.bb = icmp slt i64 %i.ay, 0
  %i.bc = and i1 %i.ba, %i.bb
  br i1 %i.bc, label %bb.s, label %safe_pow.exit94, !prof !47

bb.s:                                             ; preds = %bb.r
  tail call void (i32, ptr, ...) @zend_error(i32 noundef 8192, ptr noundef nonnull @.str.40) #24
  br label %safe_pow.exit94

safe_pow.exit94:                                  ; preds = %bb.r, %bb.s
  %i.bd = tail call double @pow(double noundef %i.ax, double noundef %i.az) #24
  store double %i.bd, ptr %0, align 8, !tbaa !12
  br label %.critedge91.sink.split

.critedge91.sink.split:                           ; preds = %safe_pow.exit92, %safe_pow.exit93, %safe_pow.exit94, %.critedge, %safe_pow.exit, %bb.h, %bb.j, %bb.f, %bb.d
  %.sink = phi i32 [ 4, %bb.d ], [ 4, %bb.f ], [ 5, %bb.j ], [ 5, %bb.h ], [ 5, %safe_pow.exit ], [ 4, %.critedge ], [ 5, %safe_pow.exit94 ], [ 5, %safe_pow.exit93 ], [ 5, %safe_pow.exit92 ]
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %.sink, ptr %i.be, align 8, !tbaa !12
  br label %.critedge91

.critedge91:                                      ; preds = %.critedge91.sink.split, %bb.a
  %.3 = phi i32 [ -1, %bb.a ], [ 0, %.critedge91.sink.split ]
  ret i32 %.3
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @zend_binop_error(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #3 {
bb.a:
  %i.a = load ptr, ptr getelementptr inbounds nuw (i8, ptr @executor_globals, i64 960), align 8, !tbaa !48
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @zend_zval_type_name(ptr noundef %1) #24
  %i.c = tail call ptr @zend_zval_type_name(ptr noundef %2) #24
  tail call void (ptr, ...) @zend_type_error(ptr noundef nonnull @.str.41, ptr noundef %i.b, ptr noundef %0, ptr noundef %i.c) #24
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #4

; Function Attrs: nounwind uwtable
define dso_local range(i32 -1, 1) i32 @div_function(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %3 = alloca %struct._zval_struct, align 8       ; 3 uses
  %4 = alloca %struct._zval_struct, align 8       ; 4 uses
  %5 = alloca %struct._zval_struct, align 8       ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load i8, ptr %i.a, align 8, !tbaa !12
  %i.c = icmp eq i8 %i.b, 10
  br i1 %i.c, label %bb.b, label %bb.c, !prof !47

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %1, align 8, !tbaa !12
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.043 = phi ptr [ %i.e, %bb.b ], [ %1, %bb.a ]  ; 11 uses
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.g = load i8, ptr %i.f, align 8, !tbaa !12
  %i.h = icmp eq i8 %i.g, 10
  br i1 %i.h, label %bb.d, label %bb.e, !prof !47

bb.d:                                             ; preds = %bb.c
  %i.i = load ptr, ptr %2, align 8, !tbaa !12
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %.044 = phi ptr [ %i.j, %bb.d ], [ %2, %bb.c ]  ; 9 uses
  %i.k = tail call fastcc i32 @div_function_base(ptr noundef %0, ptr noundef nonnull %.043, ptr noundef nonnull %.044) ; 2 uses
  switch i32 %i.k, label %bb.f [
    i32 0, label %bb.w
    i32 1, label %bb.t
  ], !prof !105

bb.f:                                             ; preds = %bb.e
  %i.l = getelementptr inbounds nuw i8, ptr %.043, i64 8 ; 3 uses
  %i.m = load i8, ptr %i.l, align 8, !tbaa !12
  %i.n = icmp eq i8 %i.m, 8
  br i1 %i.n, label %bb.g, label %bb.i, !prof !47

bb.g:                                             ; preds = %bb.f
  %i.o = load ptr, ptr %.043, align 8, !tbaa !12
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !21
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 184
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !98   ; 2 uses
  %.not = icmp eq ptr %i.s, null
  br i1 %.not, label %bb.i, label %bb.h, !prof !44

bb.h:                                             ; preds = %bb.g
  %i.t = tail call i32 %i.s(i8 noundef zeroext 4, ptr noundef %0, ptr noundef nonnull %.043, ptr noundef nonnull %.044) #24
  %i.u = icmp eq i32 %i.t, 0
  br i1 %i.u, label %bb.w, label %bb.l, !prof !44

bb.i:                                             ; preds = %bb.g, %bb.f
  %i.v = getelementptr inbounds nuw i8, ptr %.044, i64 8
  %i.w = load i8, ptr %i.v, align 8, !tbaa !12
  %i.x = icmp eq i8 %i.w, 8
  br i1 %i.x, label %bb.j, label %bb.l, !prof !47

bb.j:                                             ; preds = %bb.i
  %i.y = load ptr, ptr %.044, align 8, !tbaa !12
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 24
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !21
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 184
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !98 ; 2 uses
  %.not51 = icmp eq ptr %i.ac, null
  br i1 %.not51, label %bb.l, label %bb.k, !prof !44

bb.k:                                             ; preds = %bb.j
  %i.ad = tail call i32 %i.ac(i8 noundef zeroext 4, ptr noundef %0, ptr noundef nonnull %.043, ptr noundef nonnull %.044) #24
  %i.ae = icmp eq i32 %i.ad, 0
  br i1 %i.ae, label %bb.w, label %bb.l, !prof !44

bb.l:                                             ; preds = %bb.i, %bb.j, %bb.k, %bb.h
  %i.af = load i8, ptr %i.l, align 8, !tbaa !12
  %i.ag = and i8 %i.af, -2
  %switch = icmp eq i8 %i.ag, 4
  br i1 %switch, label %zendi_try_convert_scalar_to_number.exit55.thread, label %zendi_try_convert_scalar_to_number.exit55

zendi_try_convert_scalar_to_number.exit55.thread: ; preds = %bb.l
  %i.ah = load ptr, ptr %.043, align 8, !tbaa !12
  %i.ai = load i32, ptr %i.l, align 8, !tbaa !12
  store ptr %i.ah, ptr %4, align 8, !tbaa !12
  %i.aj = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 %i.ai, ptr %i.aj, align 8, !tbaa !12
  br label %bb.m

zendi_try_convert_scalar_to_number.exit55:        ; preds = %bb.l
  %i.ak = call fastcc i32 @_zendi_try_convert_scalar_to_number(ptr noundef nonnull %.043, ptr noundef nonnull %4)
  %i.al = icmp eq i32 %i.ak, -1
end_hunk_0
