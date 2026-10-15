Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qemu/original/tcg?download=true
inline.NumInlined: 1043
inline.NumDeleted: 195
loop-unroll.NumCompletelyUnrolled: 15
loop-unroll.NumRuntimeUnrolled: 15
loop-unroll.NumUnrolled: 32
begin_hunk_0_@temp_load:bb.a
  br i1 %i.ai, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.aj = trunc i64 %storemerge to i32
  %i.ak = and i32 %i.aj, 255
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 29400
  %i.am = and i64 %storemerge, 255
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %i.am ; 2 uses
  %i.ao = load ptr, ptr %i.an, align 8
  %i.ap = icmp eq ptr %i.ao, %1
  tail call void @llvm.assume(i1 %i.ap)
  %i.aq = icmp eq i32 %i.ak, %.040
  br i1 %i.aq, label %set_temp_val_reg.exit, label %.thread.i

.thread.i:                                        ; preds = %bb.k
  store ptr null, ptr %i.an, align 8
  br label %bb.l

bb.l:                                             ; preds = %.thread.i, %bb.j
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 29400
  %i.as = zext i32 %.040 to i64                   ; 2 uses
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.ar, i64 %i.as
  store ptr %1, ptr %i.at, align 8
  %i.au = load i64, ptr %1, align 8
  %i.av = and i64 %i.au, -65536
  %i.aw = and i64 %i.as, 255
  %i.ax = or disjoint i64 %i.aw, %i.av
  %i.ay = or disjoint i64 %i.ax, 256
  store i64 %i.ay, ptr %1, align 8
  br label %set_temp_val_reg.exit

set_temp_val_reg.exit:                            ; preds = %bb.l, %bb.k, %bb.a
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @temp_allocate_frame(ptr noundef %0, ptr nofree noundef captures(none) %1) unnamed_addr #0 {
bb.a:
  %i.a = load i64, ptr %1, align 8                ; 2 uses
  %i.b = trunc i64 %i.a to i32
  %i.c = lshr i32 %i.b, 16
  %i.d = and i32 %i.c, 255                        ; 3 uses
  %i.e = icmp samesign ugt i32 %i.d, 2
  %i.f = add nsw i32 %i.d, -2
  %spec.select.i = select i1 %i.e, i32 %i.f, i32 %i.d ; 2 uses
  %i.g = lshr i64 %i.a, 16                        ; 2 uses
  %trunc = trunc i64 %i.g to i8
  %i.h = icmp ult i8 %trunc, 6
  br i1 %i.h, label %switch.lookup, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @g_assertion_message_expr(ptr noundef null, ptr noundef nonnull @.str, i32 noundef 4477, ptr noundef nonnull @__func__.temp_allocate_frame, ptr noundef null) #27
  unreachable

switch.lookup:                                    ; preds = %bb.a
  %i.i = shl nuw nsw i32 4, %spec.select.i
  %i.j = and i64 %i.g, 7
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table.temp_allocate_frame, i64 %i.j
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i64       ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.l = load i64, ptr %i.k, align 8
  %i.m = add nsw i64 %switch.ext, -1
  %i.n = add i64 %i.m, %i.l
  %i.o = sub nsw i64 0, %switch.ext
  %i.p = and i64 %i.n, %i.o                       ; 5 uses
  %i.q = zext nneg i32 %i.i to i64
  %i.r = add i64 %i.p, %i.q                       ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.t = load i64, ptr %i.s, align 8
  %i.u = icmp sgt i64 %i.r, %i.t
  br i1 %i.u, label %bb.c, label %bb.d

bb.c:                                             ; preds = %switch.lookup
  tail call fastcc void @tcg_raise_tb_overflow(ptr noundef nonnull %0) #28
  unreachable

bb.d:                                             ; preds = %switch.lookup
  store i64 %i.r, ptr %i.k, align 8
  %i.v = load i64, ptr %1, align 8                ; 3 uses
  %i.w = trunc i64 %i.v to i32                    ; 3 uses
  %i.x = lshr i32 %i.w, 16
  %i.y = and i32 %i.x, 255
  %i.z = lshr i32 %i.w, 24                        ; 3 uses
  %.not = icmp eq i32 %i.y, %i.z
  br i1 %.not, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.aa = icmp ugt i32 %i.w, 50331647
  %i.ab = add nsw i32 %i.z, -2
  %spec.select.i45 = select i1 %i.aa, i32 %i.ab, i32 %i.z ; 2 uses
  %shl.dividend = shl nuw nsw i32 1, %spec.select.i
  %i.ac = lshr i32 %shl.dividend, %spec.select.i45 ; 4 uses
  %i.ad = lshr i64 %i.v, 40
  %i.ae = and i64 %i.ad, 3
  %i.af = sub nsw i64 0, %i.ae
  %i.ag = getelementptr inbounds [56 x i8], ptr %1, i64 %i.af ; 3 uses
  %.not47 = icmp eq i32 %i.ac, 0
  br i1 %.not47, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.e
  %i.ah = add nsw i32 %spec.select.i45, 2         ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 3 uses
  %wide.trip.count = zext nneg i32 %i.ac to i64   ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.aj = icmp eq i32 %i.ac, 1
  br i1 %i.aj, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %wide.trip.count, 2147483646
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %.lr.ph.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.new ], [ %indvars.iv.next.1, %bb.f ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.1, %bb.f ]
  %i.ak = trunc nuw nsw i64 %indvars.iv to i32
  %i.al = shl i32 %i.ak, %i.ah
  %i.am = sext i32 %i.al to i64
  %i.an = add i64 %i.p, %i.am
  %i.ao = getelementptr inbounds nuw [56 x i8], ptr %i.ag, i64 %indvars.iv ; 4 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 24
  store i64 %i.an, ptr %i.ap, align 8
  %i.aq = load ptr, ptr %i.ai, align 8
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  store ptr %i.aq, ptr %i.ar, align 8
  %i.as = load i64, ptr %i.ao, align 8
  %i.at = or i64 %i.as, 274877906944
  store i64 %i.at, ptr %i.ao, align 8
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.au = trunc nuw nsw i64 %indvars.iv.next to i32
  %i.av = shl i32 %i.au, %i.ah
  %i.aw = sext i32 %i.av to i64
  %i.ax = add i64 %i.p, %i.aw
  %i.ay = getelementptr inbounds nuw [56 x i8], ptr %i.ag, i64 %indvars.iv.next ; 4 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 24
  store i64 %i.ax, ptr %i.az, align 8
  %i.ba = load ptr, ptr %i.ai, align 8
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  store ptr %i.ba, ptr %i.bb, align 8
  %i.bc = load i64, ptr %i.ay, align 8
  %i.bd = or i64 %i.bc, 274877906944
  store i64 %i.bd, ptr %i.ay, align 8
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.loopexit.unr-lcssa, label %bb.f, !llvm.loop !104

bb.g:                                             ; preds = %bb.d
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 24
  store i64 %i.p, ptr %i.be, align 8
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.bg = load ptr, ptr %i.bf, align 8
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 16
  store ptr %i.bg, ptr %i.bh, align 8
  %i.bi = or i64 %i.v, 274877906944
  store i64 %i.bi, ptr %1, align 8
  br label %.loopexit

.loopexit.loopexit.unr-lcssa:                     ; preds = %bb.f
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit, label %.epil.preheader

.epil.preheader:                                  ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next.1, %.loopexit.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod51 = trunc i32 %i.ac to i1
  tail call void @llvm.assume(i1 %lcmp.mod51)
  %i.bj = trunc nuw nsw i64 %indvars.iv.epil.init to i32
  %i.bk = shl i32 %i.bj, %i.ah
  %i.bl = sext i32 %i.bk to i64
  %i.bm = add i64 %i.p, %i.bl
  %i.bn = getelementptr inbounds nuw [56 x i8], ptr %i.ag, i64 %indvars.iv.epil.init ; 4 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 24
  store i64 %i.bm, ptr %i.bo, align 8
  %i.bp = load ptr, ptr %i.ai, align 8
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bn, i64 16
  store ptr %i.bp, ptr %i.bq, align 8
  %i.br = load i64, ptr %i.bn, align 8
  %i.bs = or i64 %i.br, 274877906944
  store i64 %i.bs, ptr %i.bn, align 8
  br label %.loopexit

.loopexit:                                        ; preds = %.epil.preheader, %.loopexit.loopexit.unr-lcssa, %bb.e, %bb.g
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i32 @tcg_reg_alloc(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i1 noundef zeroext %4) unnamed_addr #0 {
bb.a:
  %i.a = alloca [2 x i32], align 4                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  %i.b = xor i32 %2, -1
  %i.c = and i32 %1, %i.b                         ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store i32 %i.c, ptr %i.d, align 4
  %i.e = icmp ne i32 %i.c, 0
  tail call void @llvm.assume(i1 %i.e)
  %i.f = and i32 %i.c, %3                         ; 3 uses
  store i32 %i.f, ptr %i.a, align 4
  %i.g = icmp eq i32 %i.f, 0
  %i.h = icmp eq i32 %i.f, %i.c
  %i.i = select i1 %4, ptr @indirect_reg_alloc_order, ptr @tcg_target_reg_alloc_order ; 62 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 29400 ; 34 uses
  %i.k = or i1 %i.h, %i.g                         ; 3 uses
  %umax = zext i1 %i.k to i64
  %i.l = load i32, ptr %i.i, align 16             ; 3 uses
  %i.m = zext i32 %i.l to i64
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %i.m
  %i.o = shl nuw i32 1, %i.l
  %5 = getelementptr inbounds nuw i8, ptr %i.i, i64 4
  %6 = load i32, ptr %5, align 4                  ; 3 uses
  %i.p = zext i32 %6 to i64
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %i.p
  %i.r = shl nuw i32 1, %6
  %7 = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %8 = load i32, ptr %7, align 8                  ; 3 uses
  %i.s = zext i32 %8 to i64
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %i.s
  %i.u = shl nuw i32 1, %8
  %9 = getelementptr inbounds nuw i8, ptr %i.i, i64 12
  %10 = load i32, ptr %9, align 4                 ; 3 uses
  %i.v = zext i32 %10 to i64
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %i.v
  %i.x = shl nuw i32 1, %10
  %11 = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %12 = load i32, ptr %11, align 16               ; 3 uses
  %i.y = zext i32 %12 to i64
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %i.y
  %i.aa = shl nuw i32 1, %12
  %13 = getelementptr inbounds nuw i8, ptr %i.i, i64 20
  %14 = load i32, ptr %13, align 4                ; 3 uses
  %i.ab = zext i32 %14 to i64
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %i.ab
  %i.ad = shl nuw i32 1, %14
  %15 = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %16 = load i32, ptr %15, align 8                ; 3 uses
  %i.ae = zext i32 %16 to i64
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %i.ae
  %i.ag = shl nuw i32 1, %16
  %17 = getelementptr inbounds nuw i8, ptr %i.i, i64 28
  %18 = load i32, ptr %17, align 4                ; 3 uses
  %i.ah = zext i32 %18 to i64
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %i.ah
  %i.aj = shl nuw i32 1, %18
  %19 = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  %20 = load i32, ptr %19, align 16               ; 3 uses
  %i.ak = zext i32 %20 to i64
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %i.ak
  %i.am = shl nuw i32 1, %20
  %21 = getelementptr inbounds nuw i8, ptr %i.i, i64 36
  %22 = load i32, ptr %21, align 4                ; 3 uses
  %i.an = zext i32 %22 to i64
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %i.an
  %i.ap = shl nuw i32 1, %22
  %23 = getelementptr inbounds nuw i8, ptr %i.i, i64 40
  %24 = load i32, ptr %23, align 8                ; 3 uses
  %i.aq = zext i32 %24 to i64
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %i.aq
  %i.as = shl nuw i32 1, %24
  %25 = getelementptr inbounds nuw i8, ptr %i.i, i64 44
  %26 = load i32, ptr %25, align 4                ; 3 uses
  %i.at = zext i32 %26 to i64
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %i.at
  %i.av = shl nuw i32 1, %26
  %27 = getelementptr inbounds nuw i8, ptr %i.i, i64 48
  %28 = load i32, ptr %27, align 16               ; 3 uses
  %i.aw = zext i32 %28 to i64
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %i.aw
  %i.ay = shl nuw i32 1, %28
  %29 = getelementptr inbounds nuw i8, ptr %i.i, i64 52
  %30 = load i32, ptr %29, align 4                ; 3 uses
  %i.az = zext i32 %30 to i64
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %i.az
  %i.bb = shl nuw i32 1, %30
  %31 = getelementptr inbounds nuw i8, ptr %i.i, i64 56
  %32 = load i32, ptr %31, align 8                ; 3 uses
  %i.bc = zext i32 %32 to i64
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %i.bc
  %i.be = shl nuw i32 1, %32
  %33 = getelementptr inbounds nuw i8, ptr %i.i, i64 60
  %34 = load i32, ptr %33, align 4                ; 3 uses
  %i.bf = zext i32 %34 to i64
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %i.bf
  %i.bh = shl nuw i32 1, %34
  %35 = getelementptr inbounds nuw i8, ptr %i.i, i64 64
  %36 = load i32, ptr %35, align 16               ; 3 uses
  %i.bi = zext i32 %36 to i64
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %i.bi
  %i.bk = shl nuw i32 1, %36
  %37 = getelementptr inbounds nuw i8, ptr %i.i, i64 68
  %38 = load i32, ptr %37, align 4                ; 3 uses
  %i.bl = zext i32 %38 to i64
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %i.bl
  %i.bn = shl nuw i32 1, %38
  %39 = getelementptr inbounds nuw i8, ptr %i.i, i64 72
  %40 = load i32, ptr %39, align 8                ; 3 uses
  %i.bo = zext i32 %40 to i64
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %i.bo
  %i.bq = shl nuw i32 1, %40
  %41 = getelementptr inbounds nuw i8, ptr %i.i, i64 76
  %42 = load i32, ptr %41, align 4                ; 3 uses
  %i.br = zext i32 %42 to i64
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %i.br
  %i.bt = shl nuw i32 1, %42
  %43 = getelementptr inbounds nuw i8, ptr %i.i, i64 80
  %44 = load i32, ptr %43, align 16               ; 3 uses
  %i.bu = zext i32 %44 to i64
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %i.bu
  %i.bw = shl nuw i32 1, %44
  %45 = getelementptr inbounds nuw i8, ptr %i.i, i64 84
  %46 = load i32, ptr %45, align 4                ; 3 uses
  %i.bx = zext i32 %46 to i64
  %i.by = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %i.bx
  %i.bz = shl nuw i32 1, %46
  %47 = getelementptr inbounds nuw i8, ptr %i.i, i64 88
  %48 = load i32, ptr %47, align 8                ; 3 uses
  %i.ca = zext i32 %48 to i64
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %i.ca
  %i.cc = shl nuw i32 1, %48
  %49 = getelementptr inbounds nuw i8, ptr %i.i, i64 92
  %50 = load i32, ptr %49, align 4                ; 3 uses
  %i.cd = zext i32 %50 to i64
  %i.ce = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %i.cd
  %i.cf = shl nuw i32 1, %50
  %51 = getelementptr inbounds nuw i8, ptr %i.i, i64 96
  %52 = load i32, ptr %51, align 16               ; 3 uses
  %i.cg = zext i32 %52 to i64
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %i.cg
  %i.ci = shl nuw i32 1, %52
  %53 = getelementptr inbounds nuw i8, ptr %i.i, i64 100
  %54 = load i32, ptr %53, align 4                ; 3 uses
  %i.cj = zext i32 %54 to i64
  %i.ck = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %i.cj
  %i.cl = shl nuw i32 1, %54
  %55 = getelementptr inbounds nuw i8, ptr %i.i, i64 104
  %56 = load i32, ptr %55, align 8                ; 3 uses
  %i.cm = zext i32 %56 to i64
  %i.cn = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %i.cm
  %i.co = shl nuw i32 1, %56
  %57 = getelementptr inbounds nuw i8, ptr %i.i, i64 108
  %58 = load i32, ptr %57, align 4                ; 3 uses
  %i.cp = zext i32 %58 to i64
  %i.cq = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %i.cp
  %i.cr = shl nuw i32 1, %58
  %59 = getelementptr inbounds nuw i8, ptr %i.i, i64 112
  %60 = load i32, ptr %59, align 16               ; 3 uses
  %i.cs = zext i32 %60 to i64
  %i.ct = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %i.cs
  %i.cu = shl nuw i32 1, %60
  %61 = getelementptr inbounds nuw i8, ptr %i.i, i64 116
  %62 = load i32, ptr %61, align 4                ; 3 uses
  %i.cv = zext i32 %62 to i64
  %i.cw = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %i.cv
  %i.cx = shl nuw i32 1, %62
  %63 = getelementptr inbounds nuw i8, ptr %i.i, i64 120
  %64 = load i32, ptr %63, align 8                ; 3 uses
  %i.cy = zext i32 %64 to i64
  %i.cz = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %i.cy
  %i.da = shl nuw i32 1, %64
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %.thread69
  %indvars.iv = phi i64 [ %umax, %bb.a ], [ 1, %.thread69 ] ; 2 uses
  %i.db = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv
  %i.dc = load i32, ptr %i.db, align 4            ; 33 uses
  %i.dd = tail call range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %i.dc)
  %i.de = icmp samesign ult i32 %i.dd, 2
  br i1 %i.de, label %bb.c, label %.preheader80.preheader

.preheader80.preheader:                           ; preds = %bb.b
  %i.df = load ptr, ptr %i.n, align 8
  %i.dg = icmp ne ptr %i.df, null
  %i.dh = and i32 %i.o, %i.dc
  %.not62 = icmp eq i32 %i.dh, 0
  %or.cond = select i1 %i.dg, i1 true, i1 %.not62
  br i1 %or.cond, label %.preheader80.1, label %.thread73

.preheader80.1:                                   ; preds = %.preheader80.preheader
  %i.di = load ptr, ptr %i.q, align 8
  %i.dj = icmp ne ptr %i.di, null
  %i.dk = and i32 %i.r, %i.dc
  %.not62.1 = icmp eq i32 %i.dk, 0
  %or.cond226 = select i1 %i.dj, i1 true, i1 %.not62.1
  br i1 %or.cond226, label %.preheader80.2, label %.thread73

.preheader80.2:                                   ; preds = %.preheader80.1
  %i.dl = load ptr, ptr %i.t, align 8
  %i.dm = icmp ne ptr %i.dl, null
  %i.dn = and i32 %i.u, %i.dc
  %.not62.2 = icmp eq i32 %i.dn, 0
  %or.cond227 = select i1 %i.dm, i1 true, i1 %.not62.2
  br i1 %or.cond227, label %.preheader80.3, label %.thread73

.preheader80.3:                                   ; preds = %.preheader80.2
  %i.do = load ptr, ptr %i.w, align 8
  %i.dp = icmp ne ptr %i.do, null
  %i.dq = and i32 %i.x, %i.dc
  %.not62.3 = icmp eq i32 %i.dq, 0
  %or.cond228 = select i1 %i.dp, i1 true, i1 %.not62.3
  br i1 %or.cond228, label %.preheader80.4, label %.thread73

.preheader80.4:                                   ; preds = %.preheader80.3
  %i.dr = load ptr, ptr %i.z, align 8
  %i.ds = icmp ne ptr %i.dr, null
  %i.dt = and i32 %i.aa, %i.dc
  %.not62.4 = icmp eq i32 %i.dt, 0
  %or.cond229 = select i1 %i.ds, i1 true, i1 %.not62.4
  br i1 %or.cond229, label %.preheader80.5, label %.thread73

.preheader80.5:                                   ; preds = %.preheader80.4
  %i.du = load ptr, ptr %i.ac, align 8
  %i.dv = icmp ne ptr %i.du, null
  %i.dw = and i32 %i.ad, %i.dc
  %.not62.5 = icmp eq i32 %i.dw, 0
  %or.cond230 = select i1 %i.dv, i1 true, i1 %.not62.5
  br i1 %or.cond230, label %.preheader80.6, label %.thread73

.preheader80.6:                                   ; preds = %.preheader80.5
  %i.dx = load ptr, ptr %i.af, align 8
  %i.dy = icmp ne ptr %i.dx, null
  %i.dz = and i32 %i.ag, %i.dc
  %.not62.6 = icmp eq i32 %i.dz, 0
  %or.cond231 = select i1 %i.dy, i1 true, i1 %.not62.6
  br i1 %or.cond231, label %.preheader80.7, label %.thread73

.preheader80.7:                                   ; preds = %.preheader80.6
  %i.ea = load ptr, ptr %i.ai, align 8
  %i.eb = icmp ne ptr %i.ea, null
  %i.ec = and i32 %i.aj, %i.dc
  %.not62.7 = icmp eq i32 %i.ec, 0
  %or.cond232 = select i1 %i.eb, i1 true, i1 %.not62.7
  br i1 %or.cond232, label %.preheader80.8, label %.thread73

.preheader80.8:                                   ; preds = %.preheader80.7
  %i.ed = load ptr, ptr %i.al, align 8
  %i.ee = icmp ne ptr %i.ed, null
  %i.ef = and i32 %i.am, %i.dc
  %.not62.8 = icmp eq i32 %i.ef, 0
  %or.cond233 = select i1 %i.ee, i1 true, i1 %.not62.8
  br i1 %or.cond233, label %.preheader80.9, label %.thread73

.preheader80.9:                                   ; preds = %.preheader80.8
  %i.eg = load ptr, ptr %i.ao, align 8
  %i.eh = icmp ne ptr %i.eg, null
  %i.ei = and i32 %i.ap, %i.dc
  %.not62.9 = icmp eq i32 %i.ei, 0
  %or.cond234 = select i1 %i.eh, i1 true, i1 %.not62.9
  br i1 %or.cond234, label %.preheader80.10, label %.thread73

.preheader80.10:                                  ; preds = %.preheader80.9
  %i.ej = load ptr, ptr %i.ar, align 8
  %i.ek = icmp ne ptr %i.ej, null
  %i.el = and i32 %i.as, %i.dc
  %.not62.10 = icmp eq i32 %i.el, 0
  %or.cond235 = select i1 %i.ek, i1 true, i1 %.not62.10
  br i1 %or.cond235, label %.preheader80.11, label %.thread73

.preheader80.11:                                  ; preds = %.preheader80.10
  %i.em = load ptr, ptr %i.au, align 8
  %i.en = icmp ne ptr %i.em, null
  %i.eo = and i32 %i.av, %i.dc
  %.not62.11 = icmp eq i32 %i.eo, 0
  %or.cond236 = select i1 %i.en, i1 true, i1 %.not62.11
  br i1 %or.cond236, label %.preheader80.12, label %.thread73

.preheader80.12:                                  ; preds = %.preheader80.11
  %i.ep = load ptr, ptr %i.ax, align 8
  %i.eq = icmp ne ptr %i.ep, null
  %i.er = and i32 %i.ay, %i.dc
  %.not62.12 = icmp eq i32 %i.er, 0
  %or.cond237 = select i1 %i.eq, i1 true, i1 %.not62.12
  br i1 %or.cond237, label %.preheader80.13, label %.thread73

.preheader80.13:                                  ; preds = %.preheader80.12
  %i.es = load ptr, ptr %i.ba, align 8
  %i.et = icmp ne ptr %i.es, null
  %i.eu = and i32 %i.bb, %i.dc
  %.not62.13 = icmp eq i32 %i.eu, 0
  %or.cond238 = select i1 %i.et, i1 true, i1 %.not62.13
  br i1 %or.cond238, label %.preheader80.14, label %.thread73

.preheader80.14:                                  ; preds = %.preheader80.13
  %i.ev = load ptr, ptr %i.bd, align 8
  %i.ew = icmp ne ptr %i.ev, null
  %i.ex = and i32 %i.be, %i.dc
  %.not62.14 = icmp eq i32 %i.ex, 0
  %or.cond239 = select i1 %i.ew, i1 true, i1 %.not62.14
  br i1 %or.cond239, label %.preheader80.15, label %.thread73

.preheader80.15:                                  ; preds = %.preheader80.14
  %i.ey = load ptr, ptr %i.bg, align 8
  %i.ez = icmp ne ptr %i.ey, null
  %i.fa = and i32 %i.bh, %i.dc
  %.not62.15 = icmp eq i32 %i.fa, 0
  %or.cond240 = select i1 %i.ez, i1 true, i1 %.not62.15
  br i1 %or.cond240, label %.preheader80.16, label %.thread73

.preheader80.16:                                  ; preds = %.preheader80.15
  %i.fb = load ptr, ptr %i.bj, align 8
  %i.fc = icmp ne ptr %i.fb, null
  %i.fd = and i32 %i.bk, %i.dc
  %.not62.16 = icmp eq i32 %i.fd, 0
  %or.cond241 = select i1 %i.fc, i1 true, i1 %.not62.16
  br i1 %or.cond241, label %.preheader80.17, label %.thread73

.preheader80.17:                                  ; preds = %.preheader80.16
  %i.fe = load ptr, ptr %i.bm, align 8
  %i.ff = icmp ne ptr %i.fe, null
  %i.fg = and i32 %i.bn, %i.dc
  %.not62.17 = icmp eq i32 %i.fg, 0
  %or.cond242 = select i1 %i.ff, i1 true, i1 %.not62.17
  br i1 %or.cond242, label %.preheader80.18, label %.thread73

.preheader80.18:                                  ; preds = %.preheader80.17
  %i.fh = load ptr, ptr %i.bp, align 8
  %i.fi = icmp ne ptr %i.fh, null
  %i.fj = and i32 %i.bq, %i.dc
  %.not62.18 = icmp eq i32 %i.fj, 0
  %or.cond243 = select i1 %i.fi, i1 true, i1 %.not62.18
  br i1 %or.cond243, label %.preheader80.19, label %.thread73

.preheader80.19:                                  ; preds = %.preheader80.18
  %i.fk = load ptr, ptr %i.bs, align 8
  %i.fl = icmp ne ptr %i.fk, null
  %i.fm = and i32 %i.bt, %i.dc
  %.not62.19 = icmp eq i32 %i.fm, 0
  %or.cond244 = select i1 %i.fl, i1 true, i1 %.not62.19
  br i1 %or.cond244, label %.preheader80.20, label %.thread73

.preheader80.20:                                  ; preds = %.preheader80.19
  %i.fn = load ptr, ptr %i.bv, align 8
  %i.fo = icmp ne ptr %i.fn, null
  %i.fp = and i32 %i.bw, %i.dc
  %.not62.20 = icmp eq i32 %i.fp, 0
  %or.cond245 = select i1 %i.fo, i1 true, i1 %.not62.20
  br i1 %or.cond245, label %.preheader80.21, label %.thread73

.preheader80.21:                                  ; preds = %.preheader80.20
  %i.fq = load ptr, ptr %i.by, align 8
  %i.fr = icmp ne ptr %i.fq, null
  %i.fs = and i32 %i.bz, %i.dc
  %.not62.21 = icmp eq i32 %i.fs, 0
  %or.cond246 = select i1 %i.fr, i1 true, i1 %.not62.21
  br i1 %or.cond246, label %.preheader80.22, label %.thread73

.preheader80.22:                                  ; preds = %.preheader80.21
  %i.ft = load ptr, ptr %i.cb, align 8
  %i.fu = icmp ne ptr %i.ft, null
  %i.fv = and i32 %i.cc, %i.dc
  %.not62.22 = icmp eq i32 %i.fv, 0
  %or.cond247 = select i1 %i.fu, i1 true, i1 %.not62.22
  br i1 %or.cond247, label %.preheader80.23, label %.thread73

.preheader80.23:                                  ; preds = %.preheader80.22
  %i.fw = load ptr, ptr %i.ce, align 8
  %i.fx = icmp ne ptr %i.fw, null
  %i.fy = and i32 %i.cf, %i.dc
  %.not62.23 = icmp eq i32 %i.fy, 0
  %or.cond248 = select i1 %i.fx, i1 true, i1 %.not62.23
  br i1 %or.cond248, label %.preheader80.24, label %.thread73

.preheader80.24:                                  ; preds = %.preheader80.23
  %i.fz = load ptr, ptr %i.ch, align 8
  %i.ga = icmp ne ptr %i.fz, null
  %i.gb = and i32 %i.ci, %i.dc
  %.not62.24 = icmp eq i32 %i.gb, 0
  %or.cond249 = select i1 %i.ga, i1 true, i1 %.not62.24
  br i1 %or.cond249, label %.preheader80.25, label %.thread73

.preheader80.25:                                  ; preds = %.preheader80.24
  %i.gc = load ptr, ptr %i.ck, align 8
  %i.gd = icmp ne ptr %i.gc, null
  %i.ge = and i32 %i.cl, %i.dc
  %.not62.25 = icmp eq i32 %i.ge, 0
  %or.cond250 = select i1 %i.gd, i1 true, i1 %.not62.25
  br i1 %or.cond250, label %.preheader80.26, label %.thread73

.preheader80.26:                                  ; preds = %.preheader80.25
  %i.gf = load ptr, ptr %i.cn, align 8
  %i.gg = icmp ne ptr %i.gf, null
  %i.gh = and i32 %i.co, %i.dc
  %.not62.26 = icmp eq i32 %i.gh, 0
  %or.cond251 = select i1 %i.gg, i1 true, i1 %.not62.26
  br i1 %or.cond251, label %.preheader80.27, label %.thread73

.preheader80.27:                                  ; preds = %.preheader80.26
  %i.gi = load ptr, ptr %i.cq, align 8
  %i.gj = icmp ne ptr %i.gi, null
  %i.gk = and i32 %i.cr, %i.dc
  %.not62.27 = icmp eq i32 %i.gk, 0
  %or.cond252 = select i1 %i.gj, i1 true, i1 %.not62.27
  br i1 %or.cond252, label %.preheader80.28, label %.thread73

.preheader80.28:                                  ; preds = %.preheader80.27
  %i.gl = load ptr, ptr %i.ct, align 8
  %i.gm = icmp ne ptr %i.gl, null
  %i.gn = and i32 %i.cu, %i.dc
  %.not62.28 = icmp eq i32 %i.gn, 0
  %or.cond253 = select i1 %i.gm, i1 true, i1 %.not62.28
  br i1 %or.cond253, label %.preheader80.29, label %.thread73

.preheader80.29:                                  ; preds = %.preheader80.28
  %i.go = load ptr, ptr %i.cw, align 8
  %i.gp = icmp ne ptr %i.go, null
  %i.gq = and i32 %i.cx, %i.dc
  %.not62.29 = icmp eq i32 %i.gq, 0
  %or.cond254 = select i1 %i.gp, i1 true, i1 %.not62.29
  br i1 %or.cond254, label %.preheader80.30, label %.thread73

.preheader80.30:                                  ; preds = %.preheader80.29
  %i.gr = load ptr, ptr %i.cz, align 8
  %i.gs = icmp ne ptr %i.gr, null
  %i.gt = and i32 %i.da, %i.dc
  %.not62.30 = icmp eq i32 %i.gt, 0
  %or.cond255 = select i1 %i.gs, i1 true, i1 %.not62.30
  br i1 %or.cond255, label %.thread69, label %.thread73

bb.c:                                             ; preds = %bb.b
  %i.gu = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %i.dc, i1 false) ; 2 uses
  %i.gv = zext nneg i32 %i.gu to i64
  %i.gw = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %i.gv
  %i.gx = load ptr, ptr %i.gw, align 8
  %.not63.not = icmp eq ptr %i.gx, null
  br i1 %.not63.not, label %.thread73, label %.thread69

.thread69:                                        ; preds = %.preheader80.30, %bb.c
  %i.gy = icmp eq i64 %indvars.iv, 0
  br i1 %i.gy, label %bb.b, label %.preheader79.preheader, !llvm.loop !105

.preheader79.preheader:                           ; preds = %.thread69
  %i.gz = load i32, ptr %i.i, align 16            ; 3 uses
  %i.ha = shl nuw i32 1, %i.gz                    ; 2 uses
  %65 = getelementptr inbounds nuw i8, ptr %i.i, i64 4
  %66 = load i32, ptr %65, align 4                ; 3 uses
  %i.hb = shl nuw i32 1, %66                      ; 2 uses
  %67 = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %68 = load i32, ptr %67, align 8                ; 3 uses
  %i.hc = shl nuw i32 1, %68                      ; 2 uses
  %69 = getelementptr inbounds nuw i8, ptr %i.i, i64 12
  %70 = load i32, ptr %69, align 4                ; 3 uses
  %i.hd = shl nuw i32 1, %70                      ; 2 uses
  %71 = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %72 = load i32, ptr %71, align 16               ; 3 uses
  %i.he = shl nuw i32 1, %72                      ; 2 uses
  %73 = getelementptr inbounds nuw i8, ptr %i.i, i64 20
  %74 = load i32, ptr %73, align 4                ; 3 uses
  %i.hf = shl nuw i32 1, %74                      ; 2 uses
  %75 = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %76 = load i32, ptr %75, align 8                ; 3 uses
  %i.hg = shl nuw i32 1, %76                      ; 2 uses
  %77 = getelementptr inbounds nuw i8, ptr %i.i, i64 28
  %78 = load i32, ptr %77, align 4                ; 3 uses
  %i.hh = shl nuw i32 1, %78                      ; 2 uses
  %79 = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  %80 = load i32, ptr %79, align 16               ; 3 uses
  %i.hi = shl nuw i32 1, %80                      ; 2 uses
  %81 = getelementptr inbounds nuw i8, ptr %i.i, i64 36
  %82 = load i32, ptr %81, align 4                ; 3 uses
  %i.hj = shl nuw i32 1, %82                      ; 2 uses
  %83 = getelementptr inbounds nuw i8, ptr %i.i, i64 40
  %84 = load i32, ptr %83, align 8                ; 3 uses
  %i.hk = shl nuw i32 1, %84                      ; 2 uses
  %85 = getelementptr inbounds nuw i8, ptr %i.i, i64 44
  %86 = load i32, ptr %85, align 4                ; 3 uses
  %i.hl = shl nuw i32 1, %86                      ; 2 uses
  %87 = getelementptr inbounds nuw i8, ptr %i.i, i64 48
  %88 = load i32, ptr %87, align 16               ; 3 uses
  %i.hm = shl nuw i32 1, %88                      ; 2 uses
  %89 = getelementptr inbounds nuw i8, ptr %i.i, i64 52
  %90 = load i32, ptr %89, align 4                ; 3 uses
  %i.hn = shl nuw i32 1, %90                      ; 2 uses
  %91 = getelementptr inbounds nuw i8, ptr %i.i, i64 56
  %92 = load i32, ptr %91, align 8                ; 3 uses
  %i.ho = shl nuw i32 1, %92                      ; 2 uses
  %93 = getelementptr inbounds nuw i8, ptr %i.i, i64 60
  %94 = load i32, ptr %93, align 4                ; 3 uses
  %i.hp = shl nuw i32 1, %94                      ; 2 uses
  %95 = getelementptr inbounds nuw i8, ptr %i.i, i64 64
  %96 = load i32, ptr %95, align 16               ; 3 uses
  %i.hq = shl nuw i32 1, %96                      ; 2 uses
  %97 = getelementptr inbounds nuw i8, ptr %i.i, i64 68
  %98 = load i32, ptr %97, align 4                ; 3 uses
  %i.hr = shl nuw i32 1, %98                      ; 2 uses
  %99 = getelementptr inbounds nuw i8, ptr %i.i, i64 72
  %100 = load i32, ptr %99, align 8               ; 3 uses
  %i.hs = shl nuw i32 1, %100                     ; 2 uses
  %101 = getelementptr inbounds nuw i8, ptr %i.i, i64 76
  %102 = load i32, ptr %101, align 4              ; 3 uses
  %i.ht = shl nuw i32 1, %102                     ; 2 uses
  %103 = getelementptr inbounds nuw i8, ptr %i.i, i64 80
  %104 = load i32, ptr %103, align 16             ; 3 uses
  %i.hu = shl nuw i32 1, %104                     ; 2 uses
  %105 = getelementptr inbounds nuw i8, ptr %i.i, i64 84
  %106 = load i32, ptr %105, align 4              ; 3 uses
  %i.hv = shl nuw i32 1, %106                     ; 2 uses
  %107 = getelementptr inbounds nuw i8, ptr %i.i, i64 88
  %108 = load i32, ptr %107, align 8              ; 3 uses
  %i.hw = shl nuw i32 1, %108                     ; 2 uses
  %109 = getelementptr inbounds nuw i8, ptr %i.i, i64 92
  %110 = load i32, ptr %109, align 4              ; 3 uses
  %i.hx = shl nuw i32 1, %110                     ; 2 uses
  %111 = getelementptr inbounds nuw i8, ptr %i.i, i64 96
  %112 = load i32, ptr %111, align 16             ; 3 uses
  %i.hy = shl nuw i32 1, %112                     ; 2 uses
  %113 = getelementptr inbounds nuw i8, ptr %i.i, i64 100
  %114 = load i32, ptr %113, align 4              ; 3 uses
  %i.hz = shl nuw i32 1, %114                     ; 2 uses
  %115 = getelementptr inbounds nuw i8, ptr %i.i, i64 104
  %116 = load i32, ptr %115, align 8              ; 3 uses
  %i.ia = shl nuw i32 1, %116                     ; 2 uses
  %117 = getelementptr inbounds nuw i8, ptr %i.i, i64 108
  %118 = load i32, ptr %117, align 4              ; 3 uses
  %i.ib = shl nuw i32 1, %118                     ; 2 uses
  %119 = getelementptr inbounds nuw i8, ptr %i.i, i64 112
  %120 = load i32, ptr %119, align 16             ; 3 uses
  %i.ic = shl nuw i32 1, %120                     ; 2 uses
  %121 = getelementptr inbounds nuw i8, ptr %i.i, i64 116
  %122 = load i32, ptr %121, align 4              ; 3 uses
  %i.id = shl nuw i32 1, %122                     ; 2 uses
  %123 = getelementptr inbounds nuw i8, ptr %i.i, i64 120
  %124 = load i32, ptr %123, align 8              ; 3 uses
  %i.ie = shl nuw i32 1, %124                     ; 2 uses
  %umax.sroa.sel.idx = select i1 %i.k, i64 4, i64 0
  %umax.sroa.sel = getelementptr inbounds nuw i8, ptr %i.a, i64 %umax.sroa.sel.idx
  %i.if = load i32, ptr %umax.sroa.sel, align 4   ; 33 uses
  %i.ig = tail call range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %i.if)
  %i.ih = icmp samesign ult i32 %i.ig, 2
  br i1 %i.ih, label %.loopexit, label %tcg_reg_free.exit65.preheader.peel

tcg_reg_free.exit65.preheader.peel:               ; preds = %.preheader79.preheader
  %i.ii = and i32 %i.ha, %i.if
  %.not.peel = icmp eq i32 %i.ii, 0
  br i1 %.not.peel, label %tcg_reg_free.exit65.1.peel, label %.loopexit265

tcg_reg_free.exit65.1.peel:                       ; preds = %tcg_reg_free.exit65.preheader.peel
  %i.ij = and i32 %i.hb, %i.if
  %.not.1.peel = icmp eq i32 %i.ij, 0
  br i1 %.not.1.peel, label %tcg_reg_free.exit65.2.peel, label %.loopexit265

tcg_reg_free.exit65.2.peel:                       ; preds = %tcg_reg_free.exit65.1.peel
  %i.ik = and i32 %i.hc, %i.if
  %.not.2.peel = icmp eq i32 %i.ik, 0
  br i1 %.not.2.peel, label %tcg_reg_free.exit65.3.peel, label %.loopexit265

tcg_reg_free.exit65.3.peel:                       ; preds = %tcg_reg_free.exit65.2.peel
  %i.il = and i32 %i.hd, %i.if
  %.not.3.peel = icmp eq i32 %i.il, 0
  br i1 %.not.3.peel, label %tcg_reg_free.exit65.4.peel, label %.loopexit265

tcg_reg_free.exit65.4.peel:                       ; preds = %tcg_reg_free.exit65.3.peel
  %i.im = and i32 %i.he, %i.if
  %.not.4.peel = icmp eq i32 %i.im, 0
  br i1 %.not.4.peel, label %tcg_reg_free.exit65.5.peel, label %.loopexit265

tcg_reg_free.exit65.5.peel:                       ; preds = %tcg_reg_free.exit65.4.peel
  %i.in = and i32 %i.hf, %i.if
  %.not.5.peel = icmp eq i32 %i.in, 0
  br i1 %.not.5.peel, label %tcg_reg_free.exit65.6.peel, label %.loopexit265

tcg_reg_free.exit65.6.peel:                       ; preds = %tcg_reg_free.exit65.5.peel
  %i.io = and i32 %i.hg, %i.if
  %.not.6.peel = icmp eq i32 %i.io, 0
  br i1 %.not.6.peel, label %tcg_reg_free.exit65.7.peel, label %.loopexit265

tcg_reg_free.exit65.7.peel:                       ; preds = %tcg_reg_free.exit65.6.peel
  %i.ip = and i32 %i.hh, %i.if
  %.not.7.peel = icmp eq i32 %i.ip, 0
  br i1 %.not.7.peel, label %tcg_reg_free.exit65.8.peel, label %.loopexit265

tcg_reg_free.exit65.8.peel:                       ; preds = %tcg_reg_free.exit65.7.peel
  %i.iq = and i32 %i.hi, %i.if
  %.not.8.peel = icmp eq i32 %i.iq, 0
  br i1 %.not.8.peel, label %tcg_reg_free.exit65.9.peel, label %.loopexit265

tcg_reg_free.exit65.9.peel:                       ; preds = %tcg_reg_free.exit65.8.peel
  %i.ir = and i32 %i.hj, %i.if
  %.not.9.peel = icmp eq i32 %i.ir, 0
  br i1 %.not.9.peel, label %tcg_reg_free.exit65.10.peel, label %.loopexit265

tcg_reg_free.exit65.10.peel:                      ; preds = %tcg_reg_free.exit65.9.peel
  %i.is = and i32 %i.hk, %i.if
  %.not.10.peel = icmp eq i32 %i.is, 0
  br i1 %.not.10.peel, label %tcg_reg_free.exit65.11.peel, label %.loopexit265

tcg_reg_free.exit65.11.peel:                      ; preds = %tcg_reg_free.exit65.10.peel
  %i.it = and i32 %i.hl, %i.if
  %.not.11.peel = icmp eq i32 %i.it, 0
  br i1 %.not.11.peel, label %tcg_reg_free.exit65.12.peel, label %.loopexit265

tcg_reg_free.exit65.12.peel:                      ; preds = %tcg_reg_free.exit65.11.peel
  %i.iu = and i32 %i.hm, %i.if
  %.not.12.peel = icmp eq i32 %i.iu, 0
  br i1 %.not.12.peel, label %tcg_reg_free.exit65.13.peel, label %.loopexit265

tcg_reg_free.exit65.13.peel:                      ; preds = %tcg_reg_free.exit65.12.peel
  %i.iv = and i32 %i.hn, %i.if
  %.not.13.peel = icmp eq i32 %i.iv, 0
  br i1 %.not.13.peel, label %tcg_reg_free.exit65.14.peel, label %.loopexit265

tcg_reg_free.exit65.14.peel:                      ; preds = %tcg_reg_free.exit65.13.peel
  %i.iw = and i32 %i.ho, %i.if
  %.not.14.peel = icmp eq i32 %i.iw, 0
  br i1 %.not.14.peel, label %tcg_reg_free.exit65.15.peel, label %.loopexit265

tcg_reg_free.exit65.15.peel:                      ; preds = %tcg_reg_free.exit65.14.peel
  %i.ix = and i32 %i.hp, %i.if
  %.not.15.peel = icmp eq i32 %i.ix, 0
  br i1 %.not.15.peel, label %tcg_reg_free.exit65.16.peel, label %.loopexit265

tcg_reg_free.exit65.16.peel:                      ; preds = %tcg_reg_free.exit65.15.peel
  %i.iy = and i32 %i.hq, %i.if
  %.not.16.peel = icmp eq i32 %i.iy, 0
  br i1 %.not.16.peel, label %tcg_reg_free.exit65.17.peel, label %.loopexit265

tcg_reg_free.exit65.17.peel:                      ; preds = %tcg_reg_free.exit65.16.peel
  %i.iz = and i32 %i.hr, %i.if
  %.not.17.peel = icmp eq i32 %i.iz, 0
  br i1 %.not.17.peel, label %tcg_reg_free.exit65.18.peel, label %.loopexit265

tcg_reg_free.exit65.18.peel:                      ; preds = %tcg_reg_free.exit65.17.peel
  %i.ja = and i32 %i.hs, %i.if
  %.not.18.peel = icmp eq i32 %i.ja, 0
  br i1 %.not.18.peel, label %tcg_reg_free.exit65.19.peel, label %.loopexit265

tcg_reg_free.exit65.19.peel:                      ; preds = %tcg_reg_free.exit65.18.peel
  %i.jb = and i32 %i.ht, %i.if
  %.not.19.peel = icmp eq i32 %i.jb, 0
  br i1 %.not.19.peel, label %tcg_reg_free.exit65.20.peel, label %.loopexit265

tcg_reg_free.exit65.20.peel:                      ; preds = %tcg_reg_free.exit65.19.peel
  %i.jc = and i32 %i.hu, %i.if
  %.not.20.peel = icmp eq i32 %i.jc, 0
  br i1 %.not.20.peel, label %tcg_reg_free.exit65.21.peel, label %.loopexit265

tcg_reg_free.exit65.21.peel:                      ; preds = %tcg_reg_free.exit65.20.peel
  %i.jd = and i32 %i.hv, %i.if
  %.not.21.peel = icmp eq i32 %i.jd, 0
  br i1 %.not.21.peel, label %tcg_reg_free.exit65.22.peel, label %.loopexit265

tcg_reg_free.exit65.22.peel:                      ; preds = %tcg_reg_free.exit65.21.peel
  %i.je = and i32 %i.hw, %i.if
  %.not.22.peel = icmp eq i32 %i.je, 0
  br i1 %.not.22.peel, label %tcg_reg_free.exit65.23.peel, label %.loopexit265

tcg_reg_free.exit65.23.peel:                      ; preds = %tcg_reg_free.exit65.22.peel
  %i.jf = and i32 %i.hx, %i.if
  %.not.23.peel = icmp eq i32 %i.jf, 0
  br i1 %.not.23.peel, label %tcg_reg_free.exit65.24.peel, label %.loopexit265

tcg_reg_free.exit65.24.peel:                      ; preds = %tcg_reg_free.exit65.23.peel
  %i.jg = and i32 %i.hy, %i.if
  %.not.24.peel = icmp eq i32 %i.jg, 0
  br i1 %.not.24.peel, label %tcg_reg_free.exit65.25.peel, label %.loopexit265

tcg_reg_free.exit65.25.peel:                      ; preds = %tcg_reg_free.exit65.24.peel
  %i.jh = and i32 %i.hz, %i.if
  %.not.25.peel = icmp eq i32 %i.jh, 0
  br i1 %.not.25.peel, label %tcg_reg_free.exit65.26.peel, label %.loopexit265

tcg_reg_free.exit65.26.peel:                      ; preds = %tcg_reg_free.exit65.25.peel
  %i.ji = and i32 %i.ia, %i.if
  %.not.26.peel = icmp eq i32 %i.ji, 0
  br i1 %.not.26.peel, label %tcg_reg_free.exit65.27.peel, label %.loopexit265

tcg_reg_free.exit65.27.peel:                      ; preds = %tcg_reg_free.exit65.26.peel
  %i.jj = and i32 %i.ib, %i.if
  %.not.27.peel = icmp eq i32 %i.jj, 0
  br i1 %.not.27.peel, label %tcg_reg_free.exit65.28.peel, label %.loopexit265

tcg_reg_free.exit65.28.peel:                      ; preds = %tcg_reg_free.exit65.27.peel
  %i.jk = and i32 %i.ic, %i.if
  %.not.28.peel = icmp eq i32 %i.jk, 0
  br i1 %.not.28.peel, label %tcg_reg_free.exit65.29.peel, label %.loopexit265

tcg_reg_free.exit65.29.peel:                      ; preds = %tcg_reg_free.exit65.28.peel
  %i.jl = and i32 %i.id, %i.if
  %.not.29.peel = icmp eq i32 %i.jl, 0
  br i1 %.not.29.peel, label %tcg_reg_free.exit65.30.peel, label %.loopexit265

tcg_reg_free.exit65.30.peel:                      ; preds = %tcg_reg_free.exit65.29.peel
  %i.jm = and i32 %i.ie, %i.if
  %.not.30.peel = icmp eq i32 %i.jm, 0
  br i1 %.not.30.peel, label %tcg_reg_free.exit.peel, label %.loopexit265

tcg_reg_free.exit.peel:                           ; preds = %tcg_reg_free.exit65.30.peel
  br i1 %i.k, label %.loopexit266, label %.preheader79.preheader.peel.newph

.preheader79.preheader.peel.newph:                ; preds = %tcg_reg_free.exit.peel
  %i.jn = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.jo = load i32, ptr %i.jn, align 4            ; 33 uses
  %i.jp = tail call range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %i.jo)
  %i.jq = icmp samesign ult i32 %i.jp, 2
  %i.jr = and i32 %i.ha, %i.jo
  %.not = icmp eq i32 %i.jr, 0
  %i.js = and i32 %i.hb, %i.jo
  %.not.1 = icmp eq i32 %i.js, 0
  %i.jt = and i32 %i.hc, %i.jo
  %.not.2 = icmp eq i32 %i.jt, 0
  %i.ju = and i32 %i.hd, %i.jo
  %.not.3 = icmp eq i32 %i.ju, 0
  %i.jv = and i32 %i.he, %i.jo
  %.not.4 = icmp eq i32 %i.jv, 0
  %i.jw = and i32 %i.hf, %i.jo
  %.not.5 = icmp eq i32 %i.jw, 0
  %i.jx = and i32 %i.hg, %i.jo
  %.not.6 = icmp eq i32 %i.jx, 0
  %i.jy = and i32 %i.hh, %i.jo
  %.not.7 = icmp eq i32 %i.jy, 0
  %i.jz = and i32 %i.hi, %i.jo
  %.not.8 = icmp eq i32 %i.jz, 0
  %i.ka = and i32 %i.hj, %i.jo
  %.not.9 = icmp eq i32 %i.ka, 0
  %i.kb = and i32 %i.hk, %i.jo
  %.not.10 = icmp eq i32 %i.kb, 0
  %i.kc = and i32 %i.hl, %i.jo
  %.not.11 = icmp eq i32 %i.kc, 0
  %i.kd = and i32 %i.hm, %i.jo
  %.not.12 = icmp eq i32 %i.kd, 0
  %i.ke = and i32 %i.hn, %i.jo
  %.not.13 = icmp eq i32 %i.ke, 0
  %i.kf = and i32 %i.ho, %i.jo
  %.not.14 = icmp eq i32 %i.kf, 0
  %i.kg = and i32 %i.hp, %i.jo
  %.not.15 = icmp eq i32 %i.kg, 0
  %i.kh = and i32 %i.hq, %i.jo
  %.not.16 = icmp eq i32 %i.kh, 0
  %i.ki = and i32 %i.hr, %i.jo
  %.not.17 = icmp eq i32 %i.ki, 0
  %i.kj = and i32 %i.hs, %i.jo
  %.not.18 = icmp eq i32 %i.kj, 0
  %i.kk = and i32 %i.ht, %i.jo
  %.not.19 = icmp eq i32 %i.kk, 0
  %i.kl = and i32 %i.hu, %i.jo
  %.not.20 = icmp eq i32 %i.kl, 0
  %i.km = and i32 %i.hv, %i.jo
  %.not.21 = icmp eq i32 %i.km, 0
  %i.kn = and i32 %i.hw, %i.jo
  %.not.22 = icmp eq i32 %i.kn, 0
  %i.ko = and i32 %i.hx, %i.jo
  %.not.23 = icmp eq i32 %i.ko, 0
  %i.kp = and i32 %i.hy, %i.jo
  %.not.24 = icmp eq i32 %i.kp, 0
  %i.kq = and i32 %i.hz, %i.jo
  %.not.25 = icmp eq i32 %i.kq, 0
  %i.kr = and i32 %i.ia, %i.jo
  %.not.26 = icmp eq i32 %i.kr, 0
  %i.ks = and i32 %i.ib, %i.jo
  %.not.27 = icmp eq i32 %i.ks, 0
  %i.kt = and i32 %i.ic, %i.jo
  %.not.28 = icmp eq i32 %i.kt, 0
  %i.ku = and i32 %i.id, %i.jo
  %.not.29 = icmp eq i32 %i.ku, 0
  %i.kv = and i32 %i.ie, %i.jo
  %.not.30 = icmp eq i32 %i.kv, 0
  br i1 %i.jq, label %.loopexit, label %tcg_reg_free.exit65.preheader

tcg_reg_free.exit65.preheader:                    ; preds = %.preheader79.preheader.peel.newph
  %.not.not = xor i1 %.not, true                  ; 2 uses
  %.not.1.not = xor i1 %.not.1, true
  %brmerge = select i1 %.not.not, i1 true, i1 %.not.1.not ; 2 uses
  %.mux = select i1 %.not.not, i32 %i.gz, i32 %66
  %.not.2.not = xor i1 %.not.2, true
  %brmerge271 = select i1 %brmerge, i1 true, i1 %.not.2.not ; 2 uses
  %.mux.mux = select i1 %brmerge, i32 %.mux, i32 %68
  %.not.3.not = xor i1 %.not.3, true
  %brmerge272 = select i1 %brmerge271, i1 true, i1 %.not.3.not ; 2 uses
  %.mux.mux.mux = select i1 %brmerge271, i32 %.mux.mux, i32 %70
  %.not.4.not = xor i1 %.not.4, true
  %brmerge273 = select i1 %brmerge272, i1 true, i1 %.not.4.not ; 2 uses
  %.mux.mux.mux.mux = select i1 %brmerge272, i32 %.mux.mux.mux, i32 %72
  %.not.5.not = xor i1 %.not.5, true
  %brmerge274 = select i1 %brmerge273, i1 true, i1 %.not.5.not ; 2 uses
  %.mux.mux.mux.mux.mux = select i1 %brmerge273, i32 %.mux.mux.mux.mux, i32 %74
  %.not.6.not = xor i1 %.not.6, true
  %brmerge275 = select i1 %brmerge274, i1 true, i1 %.not.6.not ; 2 uses
  %.mux.mux.mux.mux.mux.mux = select i1 %brmerge274, i32 %.mux.mux.mux.mux.mux, i32 %76
  %.not.7.not = xor i1 %.not.7, true
  %brmerge276 = select i1 %brmerge275, i1 true, i1 %.not.7.not ; 2 uses
  %.mux.mux.mux.mux.mux.mux.mux = select i1 %brmerge275, i32 %.mux.mux.mux.mux.mux.mux, i32 %78
  %.not.8.not = xor i1 %.not.8, true
  %brmerge277 = select i1 %brmerge276, i1 true, i1 %.not.8.not ; 2 uses
  %.mux.mux.mux.mux.mux.mux.mux.mux = select i1 %brmerge276, i32 %.mux.mux.mux.mux.mux.mux.mux, i32 %80
  %.not.9.not = xor i1 %.not.9, true
  %brmerge278 = select i1 %brmerge277, i1 true, i1 %.not.9.not ; 2 uses
  %.mux.mux.mux.mux.mux.mux.mux.mux.mux = select i1 %brmerge277, i32 %.mux.mux.mux.mux.mux.mux.mux.mux, i32 %82
  %.not.10.not = xor i1 %.not.10, true
  %brmerge279 = select i1 %brmerge278, i1 true, i1 %.not.10.not ; 2 uses
  %.mux.mux.mux.mux.mux.mux.mux.mux.mux.mux = select i1 %brmerge278, i32 %.mux.mux.mux.mux.mux.mux.mux.mux.mux, i32 %84
  %.not.11.not = xor i1 %.not.11, true
  %brmerge280 = select i1 %brmerge279, i1 true, i1 %.not.11.not ; 2 uses
  %.mux.mux.mux.mux.mux.mux.mux.mux.mux.mux.mux = select i1 %brmerge279, i32 %.mux.mux.mux.mux.mux.mux.mux.mux.mux.mux, i32 %86
  %.not.12.not = xor i1 %.not.12, true
  %brmerge281 = select i1 %brmerge280, i1 true, i1 %.not.12.not ; 2 uses
  %.mux.mux.mux.mux.mux.mux.mux.mux.mux.mux.mux.mux = select i1 %brmerge280, i32 %.mux.mux.mux.mux.mux.mux.mux.mux.mux.mux.mux, i32 %88
  %.not.13.not = xor i1 %.not.13, true
  %brmerge282 = select i1 %brmerge281, i1 true, i1 %.not.13.not ; 2 uses
  %.mux.mux.mux.mux.mux.mux.mux.mux.mux.mux.mux.mux.mux = select i1 %brmerge281, i32 %.mux.mux.mux.mux.mux.mux.mux.mux.mux.mux.mux.mux, i32 %90
  %.not.14.not = xor i1 %.not.14, true
  %brmerge283 = select i1 %brmerge282, i1 true, i1 %.not.14.not ; 2 uses
  %.mux.mux.mux.mux.mux.mux.mux.mux.mux.mux.mux.mux.mux.mux = select i1 %brmerge282, i32 %.mux.mux.mux.mux.mux.mux.mux.mux.mux.mux.mux.mux.mux, i32 %92
  %.not.15.not = xor i1 %.not.15, true
  %brmerge284 = select i1 %brmerge283, i1 true, i1 %.not.15.not ; 2 uses
  %.mux.mux.mux.mux.mux.mux.mux.mux.mux.mux.mux.mux.mux.mux.mux = select i1 %brmerge283, i32 %.mux.mux.mux.mux.mux.mux.mux.mux.mux.mux.mux.mux.mux.mux, i32 %94
  %.not.16.not = xor i1 %.not.16, true
  %brmerge285 = select i1 %brmerge284, i1 true, i1 %.not.16.not ; 2 uses
  %.mux.mux.mux.mux.mux.mux.mux.mux.mux.mux.mux.mux.mux.mux.mux.mux = select i1 %brmerge284, i32 %.mux.mux.mux.mux.mux.mux.mux.mux.mux.mux.mux.mux.mux.mux.mux, i32 %96
  %.not.17.not = xor i1 %.not.17, true
  %brmerge286 = select i1 %brmerge285, i1 true, i1 %.not.17.not ; 2 uses
  %.mux.mux.mux.mux.mux.mux.mux.mux.mux.mux.mux.mux.mux.mux.mux.mux.mux = select i1 %brmerge285, i32 %.mux.mux.mux.mux.mux.mux.mux.mux.mux.mux.mux.mux.mux.mux.mux.mux, i32 %98
  %.not.18.not = xor i1 %.not.18, true
  %brmerge287 = select i1 %brmerge286, i1 true, i1 %.not.18.not ; 2 uses
  %.mux.mux.mux.mux.mux.mux.mux.mux.mux.mux.mux.mux.mux.mux.mux.mux.mux.mux = select i1 %brmerge286, i32 %.mux.mux.mux.mux.mux.mux.mux.mux.mux.mux.mux.mux.mux.mux.mux.mux.mux, i32 %100
  %.not.19.not = xor i1 %.not.19, true
  %brmerge288 = select i1 %brmerge287, i1 true, i1 %.not.19.not ; 2 uses
  %.mux.mux.mux.mux.mux.mux.mux.mux.mux.mux.mux.mux.mux.mux.mux.mux.mux.mux.mux = select i1 %brmerge287, i32 %.mux.mux.mux.mux.mux.mux.mux.mux.mux.mux.mux.mux.mux.mux.mux.mux.mux.mux, i32 %102
  %.not.20.not = xor i1 %.not.20, true
  %brmerge289 = select i1 %brmerge288, i1 true, i1 %.not.20.not ; 2 uses
  %.mux.mux.mux.mux.mux.mux.mux.mux.mux.mux.mux.mux.mux.mux.mux.mux.mux.mux.mux.mux = select i1 %brmerge288, i32 %.mux.mux.mux.mux.mux.mux.mux.mux.mux.mux.mux.mux.mux.mux.mux.mux.mux.mux.mux, i32 %104
  %.not.21.not = xor i1 %.not.21, true
  %brmerge290 = select i1 %brmerge289, i1 true, i1 %.not.21.not ; 2 uses
  %.mux.mux.mux.mux.mux.mux.mux.mux.mux.mux.mux.mux.mux.mux.mux.mux.mux.mux.mux.mux.mux = select i1 %brmerge289, i32 %.mux.mux.mux.mux.mux.mux.mux.mux.mux.mux.mux.mux.mux.mux.mux.mux.mux.mux.mux.mux, i32 %106
  %.not.22.not = xor i1 %.not.22, true
  %brmerge291 = select i1 %brmerge290, i1 true, i1 %.not.22.not ; 2 uses
  %.mux.mux.mux.mux.mux.mux.mux.mux.mux.mux.mux.mux.mux.mux.mux.mux.mux.mux.mux.mux.mux.mux = select i1 %brmerge290, i32 %.mux.mux.mux.mux.mux.mux.mux.mux.mux.mux.mux.mux.mux.mux.mux.mux.mux.mux.mux.mux.mux, i32 %108
  %.not.23.not = xor i1 %.not.23, true
  %brmerge292 = select i1 %brmerge291, i1 true, i1 %.not.23.not ; 2 uses
  %.mux.mux.mux.mux.mux.mux.mux.mux.mux.mux.mux.mux.mux.mux.mux.mux.mux.mux.mux.mux.mux.mux.mux = select i1 %brmerge291, i32 %.mux.mux.mux.mux.mux.mux.mux.mux.mux.mux.mux.mux.mux.mux.mux.mux.mux.mux.mux.mux.mux.mux, i32 %110
  %.not.24.not = xor i1 %.not.24, true
  %brmerge293 = select i1 %brmerge292, i1 true, i1 %.not.24.not ; 2 uses
  %.mux.mux.mux.mux.mux.mux.mux.mux.mux.mux.mux.mux.mux.mux.mux.mux.mux.mux.mux.mux.mux.mux.mux.mux = select i1 %brmerge292, i32 %.mux.mux.mux.mux.mux.mux.mux.mux.mux.mux.mux.mux.mux.mux.mux.mux.mux.mux.mux.mux.mux.mux.mux, i32 %112
  %.not.25.not = xor i1 %.not.25, true
  %brmerge294 = select i1 %brmerge293, i1 true, i1 %.not.25.not ; 2 uses
  %.mux.mux.mux.mux.mux.mux.mux.mux.mux.mux.mux.mux.mux.mux.mux.mux.mux.mux.mux.mux.mux.mux.mux.mux.mux = select i1 %brmerge293, i32 %.mux.mux.mux.mux.mux.mux.mux.mux.mux.mux.mux.mux.mux.mux.mux.mux.mux.mux.mux.mux.mux.mux.mux.mux, i32 %114
  %.not.26.not = xor i1 %.not.26, true
  %brmerge295 = select i1 %brmerge294, i1 true, i1 %.not.26.not ; 2 uses
  %.mux.mux.mux.mux.mux.mux.mux.mux.mux.mux.mux.mux.mux.mux.mux.mux.mux.mux.mux.mux.mux.mux.mux.mux.mux.mux = select i1 %brmerge294, i32 %.mux.mux.mux.mux.mux.mux.mux.mux.mux.mux.mux.mux.mux.mux.mux.mux.mux.mux.mux.mux.mux.mux.mux.mux.mux, i32 %116
  %.not.27.not = xor i1 %.not.27, true
  %brmerge296 = select i1 %brmerge295, i1 true, i1 %.not.27.not ; 2 uses
  %.mux.mux.mux.mux.mux.mux.mux.mux.mux.mux.mux.mux.mux.mux.mux.mux.mux.mux.mux.mux.mux.mux.mux.mux.mux.mux.mux = select i1 %brmerge295, i32 %.mux.mux.mux.mux.mux.mux.mux.mux.mux.mux.mux.mux.mux.mux.mux.mux.mux.mux.mux.mux.mux.mux.mux.mux.mux.mux, i32 %118
  %.not.28.not = xor i1 %.not.28, true
  %brmerge297 = select i1 %brmerge296, i1 true, i1 %.not.28.not ; 2 uses
  %.mux.mux.mux.mux.mux.mux.mux.mux.mux.mux.mux.mux.mux.mux.mux.mux.mux.mux.mux.mux.mux.mux.mux.mux.mux.mux.mux.mux = select i1 %brmerge296, i32 %.mux.mux.mux.mux.mux.mux.mux.mux.mux.mux.mux.mux.mux.mux.mux.mux.mux.mux.mux.mux.mux.mux.mux.mux.mux.mux.mux, i32 %120
  %.not.29.not = xor i1 %.not.29, true
  %brmerge298 = select i1 %brmerge297, i1 true, i1 %.not.29.not ; 2 uses
  %.mux.mux.mux.mux.mux.mux.mux.mux.mux.mux.mux.mux.mux.mux.mux.mux.mux.mux.mux.mux.mux.mux.mux.mux.mux.mux.mux.mux.mux = select i1 %brmerge297, i32 %.mux.mux.mux.mux.mux.mux.mux.mux.mux.mux.mux.mux.mux.mux.mux.mux.mux.mux.mux.mux.mux.mux.mux.mux.mux.mux.mux.mux, i32 %122
  %.not.30.not = xor i1 %.not.30, true
  %brmerge299 = select i1 %brmerge298, i1 true, i1 %.not.30.not
  %.mux.mux.mux.mux.mux.mux.mux.mux.mux.mux.mux.mux.mux.mux.mux.mux.mux.mux.mux.mux.mux.mux.mux.mux.mux.mux.mux.mux.mux.mux = select i1 %brmerge298, i32 %.mux.mux.mux.mux.mux.mux.mux.mux.mux.mux.mux.mux.mux.mux.mux.mux.mux.mux.mux.mux.mux.mux.mux.mux.mux.mux.mux.mux.mux, i32 %124
  br i1 %brmerge299, label %.loopexit265, label %.loopexit266

.loopexit:                                        ; preds = %.preheader79.preheader.peel.newph, %.preheader79.preheader
  %.lcssa260 = phi i32 [ %i.if, %.preheader79.preheader ], [ %i.jo, %.preheader79.preheader.peel.newph ]
  %i.kw = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.lcssa260, i1 false) ; 3 uses
  %i.kx = zext nneg i32 %i.kw to i64
  %i.ky = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %i.kx
  %i.kz = load ptr, ptr %i.ky, align 8            ; 2 uses
  %.not.i = icmp eq ptr %i.kz, null
  br i1 %.not.i, label %.thread73, label %.thread73.sink.split

.loopexit265:                                     ; preds = %tcg_reg_free.exit65.preheader, %tcg_reg_free.exit65.30.peel, %tcg_reg_free.exit65.29.peel, %tcg_reg_free.exit65.28.peel, %tcg_reg_free.exit65.27.peel, %tcg_reg_free.exit65.26.peel, %tcg_reg_free.exit65.25.peel, %tcg_reg_free.exit65.24.peel, %tcg_reg_free.exit65.23.peel, %tcg_reg_free.exit65.22.peel, %tcg_reg_free.exit65.21.peel, %tcg_reg_free.exit65.20.peel, %tcg_reg_free.exit65.19.peel, %tcg_reg_free.exit65.18.peel, %tcg_reg_free.exit65.17.peel, %tcg_reg_free.exit65.16.peel, %tcg_reg_free.exit65.15.peel, %tcg_reg_free.exit65.14.peel, %tcg_reg_free.exit65.13.peel, %tcg_reg_free.exit65.12.peel, %tcg_reg_free.exit65.11.peel, %tcg_reg_free.exit65.10.peel, %tcg_reg_free.exit65.9.peel, %tcg_reg_free.exit65.8.peel, %tcg_reg_free.exit65.7.peel, %tcg_reg_free.exit65.6.peel, %tcg_reg_free.exit65.5.peel, %tcg_reg_free.exit65.4.peel, %tcg_reg_free.exit65.3.peel, %tcg_reg_free.exit65.2.peel, %tcg_reg_free.exit65.1.peel, %tcg_reg_free.exit65.preheader.peel
  %.lcssa = phi i32 [ %i.gz, %tcg_reg_free.exit65.preheader.peel ], [ %66, %tcg_reg_free.exit65.1.peel ], [ %68, %tcg_reg_free.exit65.2.peel ], [ %70, %tcg_reg_free.exit65.3.peel ], [ %72, %tcg_reg_free.exit65.4.peel ], [ %74, %tcg_reg_free.exit65.5.peel ], [ %76, %tcg_reg_free.exit65.6.peel ], [ %78, %tcg_reg_free.exit65.7.peel ], [ %80, %tcg_reg_free.exit65.8.peel ], [ %82, %tcg_reg_free.exit65.9.peel ], [ %84, %tcg_reg_free.exit65.10.peel ], [ %86, %tcg_reg_free.exit65.11.peel ], [ %88, %tcg_reg_free.exit65.12.peel ], [ %90, %tcg_reg_free.exit65.13.peel ], [ %92, %tcg_reg_free.exit65.14.peel ], [ %94, %tcg_reg_free.exit65.15.peel ], [ %96, %tcg_reg_free.exit65.16.peel ], [ %98, %tcg_reg_free.exit65.17.peel ], [ %100, %tcg_reg_free.exit65.18.peel ], [ %102, %tcg_reg_free.exit65.19.peel ], [ %104, %tcg_reg_free.exit65.20.peel ], [ %106, %tcg_reg_free.exit65.21.peel ], [ %108, %tcg_reg_free.exit65.22.peel ], [ %110, %tcg_reg_free.exit65.23.peel ], [ %112, %tcg_reg_free.exit65.24.peel ], [ %114, %tcg_reg_free.exit65.25.peel ], [ %116, %tcg_reg_free.exit65.26.peel ], [ %118, %tcg_reg_free.exit65.27.peel ], [ %120, %tcg_reg_free.exit65.28.peel ], [ %122, %tcg_reg_free.exit65.29.peel ], [ %124, %tcg_reg_free.exit65.30.peel ], [ %.mux.mux.mux.mux.mux.mux.mux.mux.mux.mux.mux.mux.mux.mux.mux.mux.mux.mux.mux.mux.mux.mux.mux.mux.mux.mux.mux.mux.mux.mux, %tcg_reg_free.exit65.preheader ] ; 3 uses
  %i.la = zext i32 %.lcssa to i64
  %i.lb = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %i.la
  %i.lc = load ptr, ptr %i.lb, align 8            ; 2 uses
  %.not.i64 = icmp eq ptr %i.lc, null
  br i1 %.not.i64, label %.thread73, label %.thread73.sink.split

.loopexit266:                                     ; preds = %tcg_reg_free.exit65.preheader, %tcg_reg_free.exit.peel
  tail call void @g_assertion_message_expr(ptr noundef null, ptr noundef nonnull @.str, i32 noundef 4704, ptr noundef nonnull @__func__.tcg_reg_alloc, ptr noundef null) #27
  unreachable

.thread73.sink.split:                             ; preds = %.loopexit265, %.loopexit
  %.sink = phi ptr [ %i.kz, %.loopexit ], [ %i.lc, %.loopexit265 ]
  %.10.ph = phi i32 [ %i.kw, %.loopexit ], [ %.lcssa, %.loopexit265 ]
  tail call fastcc void @temp_sync(ptr noundef nonnull %0, ptr noundef nonnull %.sink, i32 noundef %2, i32 noundef 0, i32 noundef -1)
  br label %.thread73

.thread73:                                        ; preds = %bb.c, %.preheader80.preheader, %.preheader80.1, %.preheader80.2, %.preheader80.3, %.preheader80.4, %.preheader80.5, %.preheader80.6, %.preheader80.7, %.preheader80.8, %.preheader80.9, %.preheader80.10, %.preheader80.11, %.preheader80.12, %.preheader80.13, %.preheader80.14, %.preheader80.15, %.preheader80.16, %.preheader80.17, %.preheader80.18, %.preheader80.19, %.preheader80.20, %.preheader80.21, %.preheader80.22, %.preheader80.23, %.preheader80.24, %.preheader80.25, %.preheader80.26, %.preheader80.27, %.preheader80.28, %.preheader80.29, %.preheader80.30, %.thread73.sink.split, %.loopexit265, %.loopexit
  %.10 = phi i32 [ %i.kw, %.loopexit ], [ %.lcssa, %.loopexit265 ], [ %.10.ph, %.thread73.sink.split ], [ %i.l, %.preheader80.preheader ], [ %64, %.preheader80.30 ], [ %i.gu, %bb.c ], [ %62, %.preheader80.29 ], [ %60, %.preheader80.28 ], [ %58, %.preheader80.27 ], [ %56, %.preheader80.26 ], [ %54, %.preheader80.25 ], [ %52, %.preheader80.24 ], [ %50, %.preheader80.23 ], [ %48, %.preheader80.22 ], [ %46, %.preheader80.21 ], [ %44, %.preheader80.20 ], [ %42, %.preheader80.19 ], [ %40, %.preheader80.18 ], [ %38, %.preheader80.17 ], [ %36, %.preheader80.16 ], [ %34, %.preheader80.15 ], [ %32, %.preheader80.14 ], [ %30, %.preheader80.13 ], [ %28, %.preheader80.12 ], [ %26, %.preheader80.11 ], [ %24, %.preheader80.10 ], [ %22, %.preheader80.9 ], [ %20, %.preheader80.8 ], [ %18, %.preheader80.7 ], [ %16, %.preheader80.6 ], [ %14, %.preheader80.5 ], [ %12, %.preheader80.4 ], [ %10, %.preheader80.3 ], [ %8, %.preheader80.2 ], [ %6, %.preheader80.1 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  ret i32 %.10
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @temp_sync(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) unnamed_addr #0 {
bb.a:
  %.val = load i64, ptr %1, align 8               ; 5 uses
  %i.a = and i64 %.val, 30064771072
  %i.b = icmp samesign ult i64 %i.a, 8589934593
  %i.c = and i64 %.val, 137438953472
  %.not = icmp eq i64 %i.c, 0
  %or.cond = and i1 %i.b, %.not
  br i1 %or.cond, label %bb.b, label %bb.m

bb.b:                                             ; preds = %bb.a
  %i.d = and i64 %.val, 274877906944
  %.not26 = icmp eq i64 %i.d, 0
  br i1 %.not26, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call fastcc void @temp_allocate_frame(ptr noundef %0, ptr noundef nonnull %1)
  %.pre = load i64, ptr %1, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.e = phi i64 [ %.pre, %bb.c ], [ %.val, %bb.b ] ; 4 uses
  %i.f = lshr i64 %i.e, 8
  %trunc = trunc i64 %i.f to i8
  switch i8 %trunc, label %bb.k [
    i8 3, label %bb.e
    i8 1, label %bb.j
    i8 2, label %bb.l
  ]

bb.e:                                             ; preds = %bb.d
  %.not27 = icmp eq i32 %4, 0
  br i1 %.not27, label %.tcg_out_sti.exit.thread_crit_edge, label %bb.f

.tcg_out_sti.exit.thread_crit_edge:               ; preds = %bb.e
  %.pre33 = lshr i64 %i.e, 24
  br label %tcg_out_sti.exit.thread

bb.f:                                             ; preds = %bb.e
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = load i64, ptr %i.g, align 8              ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = load i64, ptr %i.j, align 8
  %i.l = trunc i64 %i.k to i32                    ; 2 uses
  %i.m = and i32 %i.l, 255
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.o = load i64, ptr %i.n, align 8
  %i.p = lshr i64 %i.e, 24                        ; 3 uses
  %trunc31 = trunc i64 %i.p to i8
  switch i8 %trunc31, label %tcg_out_sti.exit.thread [
    i8 1, label %bb.g
    i8 0, label %bb.h
  ]

bb.g:                                             ; preds = %bb.f
  %i.q = add i64 %i.h, 2147483648
  %.not12.i = icmp ult i64 %i.q, 4294967296
  br i1 %.not12.i, label %bb.h, label %tcg_out_sti.exit.thread

bb.h:                                             ; preds = %bb.g, %bb.f
  %.0.i = phi i32 [ 0, %bb.f ], [ 8, %bb.g ]
  %i.r = lshr i32 %i.l, 3
  %i.s = and i32 %i.r, 1
  %i.t = or disjoint i32 %.0.i, %i.s              ; 2 uses
  %.not37.i.i.i = icmp eq i32 %i.t, 0
  br i1 %.not37.i.i.i, label %tcg_out_sti.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.u = trunc nuw nsw i32 %i.t to i8
  %i.v = or disjoint i8 %i.u, 64
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.x = load ptr, ptr %i.w, align 8              ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 1
  store ptr %i.y, ptr %i.w, align 8
  store i8 %i.v, ptr %i.x, align 1
  br label %tcg_out_sti.exit

tcg_out_sti.exit:                                 ; preds = %bb.h, %bb.i
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 4 uses
  %i.aa = load ptr, ptr %i.z, align 8             ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 1
  store ptr %i.ab, ptr %i.z, align 8
  store i8 -57, ptr %i.aa, align 1
  tail call fastcc void @tcg_out_sib_offset(ptr noundef %0, i32 noundef 0, i32 noundef %i.m, i32 noundef -1, i32 noundef 0, i64 noundef %i.o)
  %i.ac = trunc i64 %i.h to i32
  %i.ad = load ptr, ptr %i.z, align 8             ; 2 uses
  store i32 %i.ac, ptr %i.ad, align 1
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 4
  store ptr %i.ae, ptr %i.z, align 8
  br label %bb.l

tcg_out_sti.exit.thread:                          ; preds = %.tcg_out_sti.exit.thread_crit_edge, %bb.f, %bb.g
  %.pre-phi = phi i64 [ %.pre33, %.tcg_out_sti.exit.thread_crit_edge ], [ %i.p, %bb.f ], [ %i.p, %bb.g ]
  %i.af = and i64 %.pre-phi, 255
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr @tcg_target_available_regs, i64 %i.af
  %i.ah = load i32, ptr %i.ag, align 4
  tail call fastcc void @temp_load(ptr noundef %0, ptr noundef nonnull %1, i32 noundef %i.ah, i32 noundef %2, i32 noundef %3)
  %.pre32 = load i64, ptr %1, align 8
  br label %bb.j

bb.j:                                             ; preds = %tcg_out_sti.exit.thread, %bb.d
  %i.ai = phi i64 [ %.pre32, %tcg_out_sti.exit.thread ], [ %i.e, %bb.d ]
  %i.aj = trunc i64 %i.ai to i32                  ; 2 uses
  %i.ak = lshr i32 %i.aj, 24
  %i.al = and i32 %i.aj, 255
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.an = load ptr, ptr %i.am, align 8
  %i.ao = load i64, ptr %i.an, align 8
  %i.ap = trunc i64 %i.ao to i32
  %i.aq = and i32 %i.ap, 255
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.as = load i64, ptr %i.ar, align 8
  tail call void @tcg_out_st(ptr noundef %0, i32 noundef %i.ak, i32 noundef %i.al, i32 noundef %i.aq, i64 noundef %i.as)
  br label %bb.l

bb.k:                                             ; preds = %bb.d
  tail call void @g_assertion_message_expr(ptr noundef null, ptr noundef nonnull @.str, i32 noundef 4617, ptr noundef nonnull @__func__.temp_sync, ptr noundef null) #27
  unreachable

bb.l:                                             ; preds = %tcg_out_sti.exit, %bb.j, %bb.d
  %i.at = load i64, ptr %1, align 8
  %i.au = or i64 %i.at, 137438953472              ; 2 uses
  store i64 %i.au, ptr %1, align 8
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.a
  %i.av = phi i64 [ %i.au, %bb.l ], [ %.val, %bb.a ] ; 4 uses
  %.not28 = icmp eq i32 %4, 0
  br i1 %.not28, label %temp_free_or_dead.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.aw = lshr i64 %i.av, 32
  %i.ax = trunc nuw i64 %i.aw to i32
  %i.ay = and i32 %i.ax, 7
  switch i32 %i.ay, label %bb.q [
    i32 3, label %temp_free_or_dead.exit
    i32 2, label %bb.r
    i32 1, label %bb.r
    i32 0, label %bb.o
    i32 4, label %bb.p
  ]

bb.o:                                             ; preds = %bb.n
  %i.az = lshr i32 %4, 22
  %i.ba = and i32 %i.az, 512
  %i.bb = zext nneg i32 %i.ba to i64
  br label %bb.r

bb.p:                                             ; preds = %bb.n
  br label %bb.r

bb.q:                                             ; preds = %bb.n
  tail call void @g_assertion_message_expr(ptr noundef null, ptr noundef nonnull @.str, i32 noundef 4571, ptr noundef nonnull @__func__.temp_free_or_dead, ptr noundef null) #27
  unreachable

bb.r:                                             ; preds = %bb.p, %bb.o, %bb.n, %bb.n
  %.0.i29 = phi i64 [ 768, %bb.p ], [ %i.bb, %bb.o ], [ 512, %bb.n ], [ 512, %bb.n ]
  %i.bc = and i64 %i.av, 65280
  %i.bd = icmp eq i64 %i.bc, 256
  br i1 %i.bd, label %bb.s, label %set_temp_val_nonreg.exit.i

bb.s:                                             ; preds = %bb.r
  %i.be = and i64 %i.av, 255
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 29400
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %i.bf, i64 %i.be ; 2 uses
  %i.bh = load ptr, ptr %i.bg, align 8
  %i.bi = icmp eq ptr %i.bh, %1
  tail call void @llvm.assume(i1 %i.bi)
  store ptr null, ptr %i.bg, align 8
  %.pre.i.i = load i64, ptr %1, align 8
  br label %set_temp_val_nonreg.exit.i

set_temp_val_nonreg.exit.i:                       ; preds = %bb.s, %bb.r
  %i.bj = phi i64 [ %.pre.i.i, %bb.s ], [ %i.av, %bb.r ]
  %i.bk = and i64 %i.bj, -65281
  %i.bl = or disjoint i64 %i.bk, %.0.i29
  store i64 %i.bl, ptr %1, align 8
  br label %temp_free_or_dead.exit

temp_free_or_dead.exit:                           ; preds = %set_temp_val_nonreg.exit.i, %bb.n, %bb.m
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @tcg_out_dupi_vec(ptr nofree noundef captures(none) %0, i32 noundef range(i32 0, 256) %1, i32 noundef %2, i64 noundef %3) unnamed_addr #0 {
bb.a:
  %i.a = icmp eq i32 %1, 5
  %i.b = select i1 %i.a, i32 524288, i32 0        ; 2 uses
  switch i64 %3, label %bb.f [
    i64 0, label %bb.b
    i64 -1, label %bb.e
  ]

bb.b:                                             ; preds = %bb.a
end_hunk_0
begin_hunk_1_@tcg_out_dupm_vec:bb.a
  store i8 %i.bc, ptr %i.bd, align 1
  br label %tcg_out_vex_opc.exit39

tcg_out_vex_opc.exit39:                           ; preds = %bb.i, %bb.j
  %.1.i38 = phi i32 [ %i.az, %bb.i ], [ 1, %bb.j ]
  %i.bf = shl i32 %3, 3
  %i.bg = and i32 %i.bf, 120
  %i.bh = xor i32 %i.bg, 120
  %i.bi = or i32 %.1.i38, %i.bh
  %i.bj = trunc nuw i32 %i.bi to i8
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 6 uses
  %i.bl = load ptr, ptr %i.bk, align 8            ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 1
  store ptr %i.bm, ptr %i.bk, align 8
  store i8 %i.bj, ptr %i.bl, align 1
  %i.bn = load ptr, ptr %i.bk, align 8            ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 1
  store ptr %i.bo, ptr %i.bk, align 8
  store i8 -60, ptr %i.bn, align 1
  tail call fastcc void @tcg_out_sib_offset(ptr noundef nonnull %0, i32 noundef %3, i32 noundef %4, i32 noundef -1, i32 noundef 0, i64 noundef %5)
  %i.bp = load ptr, ptr %i.bk, align 8            ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 1
  store ptr %i.bq, ptr %i.bk, align 8
  store i8 0, ptr %i.bp, align 1
  tail call fastcc void @tcg_out_dup_vec(ptr noundef nonnull %0, i32 noundef %1, i32 noundef 1, i32 noundef %3, i32 noundef %3)
  br label %bb.m

bb.k:                                             ; preds = %bb.c
  %i.br = tail call i32 @llvm.smax.i32(i32 %4, i32 0)
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 10 uses
  %i.bt = load ptr, ptr %i.bs, align 8            ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 1
  store ptr %i.bu, ptr %i.bs, align 8
  store i8 -60, ptr %i.bt, align 1
  %i.bv = shl i32 %3, 4
  %i.bw = and i32 %i.bv, 128
  %i.bx = shl i32 %i.br, 2
  %i.by = and i32 %i.bx, 32
  %i.bz = or disjoint i32 %i.by, %i.bw
  %i.ca = trunc nuw i32 %i.bz to i8
  %i.cb = xor i8 %i.ca, -29
  %i.cc = load ptr, ptr %i.bs, align 8            ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 1
  store ptr %i.cd, ptr %i.bs, align 8
  store i8 %i.cb, ptr %i.cc, align 1
  %.tr = trunc i32 %3 to i8
  %i.ce = shl i8 %.tr, 3
  %i.cf = and i8 %i.ce, 120
  %i.cg = xor i8 %i.cf, 121
  %i.ch = load ptr, ptr %i.bs, align 8            ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 1
  store ptr %i.ci, ptr %i.bs, align 8
  store i8 %i.cg, ptr %i.ch, align 1
  %i.cj = load ptr, ptr %i.bs, align 8            ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 1
  store ptr %i.ck, ptr %i.bs, align 8
  store i8 32, ptr %i.cj, align 1
  tail call fastcc void @tcg_out_sib_offset(ptr noundef %0, i32 noundef %3, i32 noundef %4, i32 noundef -1, i32 noundef 0, i64 noundef %5)
  %i.cl = load ptr, ptr %i.bs, align 8            ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 1
  store ptr %i.cm, ptr %i.bs, align 8
  store i8 0, ptr %i.cl, align 1
  tail call fastcc void @tcg_out_dup_vec(ptr noundef %0, i32 noundef %1, i32 noundef 0, i32 noundef %3, i32 noundef %3)
  br label %bb.m

bb.l:                                             ; preds = %bb.c
  tail call void @g_assertion_message_expr(ptr noundef null, ptr noundef nonnull @.str.54, i32 noundef 951, ptr noundef nonnull @__func__.tcg_out_dupm_vec, ptr noundef null) #27
  unreachable

bb.m:                                             ; preds = %tcg_out_vex_opc.exit, %bb.g, %tcg_out_vex_opc.exit39, %bb.k, %bb.b
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @tcg_out_branch(ptr nofree noundef captures(none) %0, i32 noundef range(i32 0, 2) %1, ptr noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 120        ; 8 uses
  %.val = load ptr, ptr %i.a, align 8             ; 6 uses
  %.not.i.i = icmp eq ptr %.val, null
  %i.b = load i64, ptr @tcg_splitwx_diff, align 8
  %i.c = getelementptr inbounds i8, ptr %.val, i64 %i.b
  %i.d = select i1 %.not.i.i, ptr null, ptr %i.c
  %i.e = ptrtoint ptr %2 to i64                   ; 2 uses
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f                       ; 2 uses
  %i.h = add i64 %i.g, 2147483643
  %i.i = icmp ult i64 %i.h, 4294967296
  br i1 %i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.j = trunc i64 %i.g to i32
  %i.k = add i32 %i.j, -5
  %.not14 = icmp eq i32 %1, 0
  %i.l = select i1 %.not14, i8 -23, i8 -24
  %i.m = getelementptr inbounds nuw i8, ptr %.val, i64 1
  store ptr %i.m, ptr %i.a, align 8
  store i8 %i.l, ptr %.val, align 1
  br label %bb.h

bb.c:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %.val, i64 1
  store ptr %i.n, ptr %i.a, align 8
  store i8 -1, ptr %.val, align 1
  %.not = icmp eq i32 %1, 0
  %i.o = select i1 %.not, i8 37, i8 21
  %i.p = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 1
  store ptr %i.q, ptr %i.a, align 8
  store i8 %i.o, ptr %i.p, align 1
  %i.r = load ptr, ptr %i.a, align 8
  %i.s = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @tcg_ctx)
  %i.t = load ptr, ptr %i.s, align 8              ; 4 uses
  %i.u = load i64, ptr %i.t, align 8              ; 2 uses
  %i.v = add i64 %i.u, 40                         ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.x = load i64, ptr %i.w, align 8
  %i.y = icmp ugt i64 %i.v, %i.x
  br i1 %i.y, label %bb.d, label %bb.e, !prof !11

bb.d:                                             ; preds = %bb.c
  %i.z = tail call ptr @tcg_malloc_internal(ptr noundef nonnull %i.t, i32 noundef 40)
  br label %new_pool_alloc.exit.i

bb.e:                                             ; preds = %bb.c
  store i64 %i.v, ptr %i.t, align 8
  %i.aa = inttoptr i64 %i.u to ptr
  br label %new_pool_alloc.exit.i

new_pool_alloc.exit.i:                            ; preds = %bb.e, %bb.d
  %.0.i.i.i = phi ptr [ %i.z, %bb.d ], [ %i.aa, %bb.e ] ; 7 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 8
  store ptr %i.r, ptr %i.ab, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 16
  store i64 -4, ptr %i.ac, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 24
  store i32 2, ptr %i.ad, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 28
  store i32 1, ptr %i.ae, align 4
  %i.af = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 32 ; 2 uses
  store i64 %i.e, ptr %i.af, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 3 uses
  %i.ah = load ptr, ptr %i.ag, align 8            ; 2 uses
  %.not17.i.i = icmp eq ptr %i.ah, null
  br i1 %.not17.i.i, label %new_pool_label.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %new_pool_alloc.exit.i, %bb.g
  %i.ai = phi ptr [ %i.ar, %bb.g ], [ %i.ah, %new_pool_alloc.exit.i ] ; 7 uses
  %.018.i.i = phi ptr [ %i.ai, %bb.g ], [ %i.ag, %new_pool_alloc.exit.i ] ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 28
  %i.ak = load i32, ptr %i.aj, align 4
  switch i32 %i.ak, label %bb.g [
    i32 0, label %new_pool_label.exit
    i32 1, label %bb.f
  ]

bb.f:                                             ; preds = %.lr.ph.i.i
  %i.al = getelementptr inbounds nuw i8, ptr %i.ai, i64 32
  %i.am = load i64, ptr %i.af, align 1
  %i.an = load i64, ptr %i.al, align 1
  %i.ao = tail call i64 @llvm.bswap.i64(i64 %i.am)
  %i.ap = tail call i64 @llvm.bswap.i64(i64 %i.an)
  %i.aq = icmp uge i64 %i.ao, %i.ap
  br i1 %i.aq, label %new_pool_label.exit, label %bb.g

bb.g:                                             ; preds = %bb.f, %.lr.ph.i.i
  %i.ar = load ptr, ptr %i.ai, align 8            ; 2 uses
  %.not.i.i15 = icmp eq ptr %i.ar, null
  br i1 %.not.i.i15, label %new_pool_label.exit, label %.lr.ph.i.i, !llvm.loop !3

new_pool_label.exit:                              ; preds = %.lr.ph.i.i, %bb.f, %bb.g, %new_pool_alloc.exit.i
  %.0.lcssa.i.i = phi ptr [ %i.ag, %new_pool_alloc.exit.i ], [ %.018.i.i, %bb.f ], [ %.018.i.i, %.lr.ph.i.i ], [ %i.ai, %bb.g ]
  %.lcssa.i.i = phi ptr [ null, %new_pool_alloc.exit.i ], [ %i.ai, %bb.f ], [ %i.ai, %.lr.ph.i.i ], [ null, %bb.g ]
  store ptr %.lcssa.i.i, ptr %.0.i.i.i, align 8
  store ptr %.0.i.i.i, ptr %.0.lcssa.i.i, align 8
  br label %bb.h

bb.h:                                             ; preds = %new_pool_label.exit, %bb.b
  %.sink = phi i32 [ 0, %new_pool_label.exit ], [ %i.k, %bb.b ]
  %i.as = load ptr, ptr %i.a, align 8             ; 2 uses
  store i32 %.sink, ptr %i.as, align 1
  %storemerge = getelementptr inbounds nuw i8, ptr %i.as, i64 4
  store ptr %storemerge, ptr %i.a, align 8
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i32 @tcg_reg_alloc_pair(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i1 noundef zeroext %4) unnamed_addr #0 {
.preheader:
  %i.a = alloca [2 x i32], align 4                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  %i.b = lshr i32 %2, 1
  %i.c = or i32 %i.b, %2
  %i.d = xor i32 %i.c, -1
  %i.e = and i32 %1, %i.d                         ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store i32 %i.e, ptr %i.f, align 4
  %i.g = icmp ne i32 %i.e, 0
  tail call void @llvm.assume(i1 %i.g)
  %i.h = and i32 %i.e, %3                         ; 3 uses
  store i32 %i.h, ptr %i.a, align 4
  %i.i = select i1 %4, ptr @indirect_reg_alloc_order, ptr @tcg_target_reg_alloc_order ; 35 uses
  %i.j = icmp eq i32 %i.h, 0
  %i.k = icmp eq i32 %i.h, %i.e
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 29400 ; 11 uses
  %i.m = or i1 %i.k, %i.j
  %umax = zext i1 %i.m to i64                     ; 3 uses
  br label %bb.a

bb.a:                                             ; preds = %.preheader, %tcg_reg_free.exit46
  %indvars.iv65 = phi i64 [ %umax, %.preheader ], [ 1, %tcg_reg_free.exit46 ] ; 2 uses
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv65
  %i.o = load i32, ptr %i.n, align 4              ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.i, %bb.a
  %indvars.iv = phi i64 [ 0, %bb.a ], [ %indvars.iv.next.1117, %bb.i ] ; 4 uses
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %indvars.iv
  %i.q = load i32, ptr %i.p, align 8              ; 4 uses
  %i.r = shl nuw i32 1, %i.q
  %i.s = and i32 %i.r, %i.o
  %.not = icmp eq i32 %i.s, 0
  br i1 %.not, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.t = zext i32 %i.q to i64
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %i.t
  %i.v = load ptr, ptr %i.u, align 8
  %.not42 = icmp eq ptr %i.v, null                ; 2 uses
  %i.w = add i32 %i.q, 1
  %i.x = zext i32 %i.w to i64                     ; 2 uses
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %i.x
  %i.z = load ptr, ptr %i.y, align 8
  %.not43 = icmp eq ptr %i.z, null
  %i.aa = and i1 %.not43, %.not42
  br i1 %i.aa, label %.loopexit, label %bb.f

.loopexit72:                                      ; preds = %bb.as, %bb.ar, %bb.aq, %bb.ap, %bb.ao, %bb.an, %bb.am, %bb.al, %bb.ak, %bb.aj, %bb.ai, %bb.ah, %bb.ag, %bb.af, %bb.ae, %bb.ad, %bb.ac, %bb.ab, %bb.aa, %bb.z, %bb.y, %bb.x, %bb.w, %bb.v, %bb.u, %bb.t, %bb.s, %bb.r, %bb.q, %bb.p, %.preheader.2
  %.lcssa102 = phi i32 [ %i.cb, %.preheader.2 ], [ %6, %bb.p ], [ %8, %bb.q ], [ %10, %bb.r ], [ %12, %bb.s ], [ %14, %bb.t ], [ %16, %bb.u ], [ %18, %bb.v ], [ %20, %bb.w ], [ %22, %bb.x ], [ %24, %bb.y ], [ %26, %bb.z ], [ %28, %bb.aa ], [ %30, %bb.ab ], [ %32, %bb.ac ], [ %34, %bb.ad ], [ %36, %bb.ae ], [ %38, %bb.af ], [ %40, %bb.ag ], [ %42, %bb.ah ], [ %44, %bb.ai ], [ %46, %bb.aj ], [ %48, %bb.ak ], [ %50, %bb.al ], [ %52, %bb.am ], [ %54, %bb.an ], [ %56, %bb.ao ], [ %58, %bb.ap ], [ %60, %bb.aq ], [ %62, %bb.ar ], [ %64, %bb.as ] ; 4 uses
  %i.ab = add i32 %.lcssa102, 1
  %i.ac = zext i32 %i.ab to i64
  %i.ad = zext i32 %.lcssa102 to i64
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %i.ad
  %i.af = load ptr, ptr %i.ae, align 8            ; 2 uses
  %.not42.2 = icmp eq ptr %i.af, null
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %i.ac ; 2 uses
  br i1 %.not42.2, label %tcg_reg_free.exit, label %bb.d

.loopexit:                                        ; preds = %bb.c, %bb.h, %bb.k, %bb.n
  %.lcssa62 = phi i32 [ %i.bp, %bb.n ], [ %i.bc, %bb.k ], [ %i.q, %bb.c ], [ %i.an, %bb.h ] ; 2 uses
  %.lcssa61 = phi ptr [ %i.bu, %bb.n ], [ %i.bh, %bb.k ], [ null, %bb.h ], [ null, %bb.c ]
  %.not42.lcssa = phi i1 [ %.not42.1.1, %bb.n ], [ %.not42.1, %bb.k ], [ %.not42, %bb.c ], [ %.not42.1115, %bb.h ]
  %.lcssa = phi i64 [ %i.bw, %bb.n ], [ %i.bj, %bb.k ], [ %i.x, %bb.c ], [ %i.au, %bb.h ]
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %.lcssa ; 2 uses
  br i1 %.not42.lcssa, label %tcg_reg_free.exit, label %bb.d

bb.d:                                             ; preds = %.loopexit72, %.loopexit
  %i.ai = phi ptr [ %i.ag, %.loopexit72 ], [ %i.ah, %.loopexit ]
  %.lcssa6179 = phi ptr [ %i.af, %.loopexit72 ], [ %.lcssa61, %.loopexit ]
  %.lcssa6277 = phi i32 [ %.lcssa102, %.loopexit72 ], [ %.lcssa62, %.loopexit ]
  tail call fastcc void @temp_sync(ptr noundef nonnull %0, ptr noundef nonnull %.lcssa6179, i32 noundef %2, i32 noundef 0, i32 noundef -1), !inline_history !2
  br label %tcg_reg_free.exit

tcg_reg_free.exit:                                ; preds = %.loopexit72, %.loopexit, %bb.d
  %i.aj = phi ptr [ %i.ag, %.loopexit72 ], [ %i.ah, %.loopexit ], [ %i.ai, %bb.d ]
  %.lcssa6278 = phi i32 [ %.lcssa102, %.loopexit72 ], [ %.lcssa62, %.loopexit ], [ %.lcssa6277, %bb.d ]
  %i.ak = load ptr, ptr %i.aj, align 8            ; 2 uses
  %.not.i45 = icmp eq ptr %i.ak, null
  br i1 %.not.i45, label %bb.au, label %bb.e

bb.e:                                             ; preds = %tcg_reg_free.exit
  tail call fastcc void @temp_sync(ptr noundef nonnull %0, ptr noundef nonnull %i.ak, i32 noundef %2, i32 noundef 0, i32 noundef -1), !inline_history !2
  br label %bb.au

bb.f:                                             ; preds = %bb.b, %bb.c
  %exitcond = icmp eq i64 %indvars.iv, 30
  br i1 %exitcond, label %tcg_reg_free.exit46, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %indvars.iv
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 4
  %i.an = load i32, ptr %i.am, align 4            ; 4 uses
  %i.ao = shl nuw i32 1, %i.an
  %i.ap = and i32 %i.ao, %i.o
  %.not.1114 = icmp eq i32 %i.ap, 0
  br i1 %.not.1114, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.aq = zext i32 %i.an to i64
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %i.aq
  %i.as = load ptr, ptr %i.ar, align 8
  %.not42.1115 = icmp eq ptr %i.as, null          ; 2 uses
  %i.at = add i32 %i.an, 1
  %i.au = zext i32 %i.at to i64                   ; 2 uses
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %i.au
  %i.aw = load ptr, ptr %i.av, align 8
  %.not43.1116 = icmp eq ptr %i.aw, null
  %i.ax = and i1 %.not43.1116, %.not42.1115
  br i1 %i.ax, label %.loopexit, label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %indvars.iv.next.1117 = add nuw nsw i64 %indvars.iv, 2
  br label %bb.b

tcg_reg_free.exit46:                              ; preds = %bb.f
  %i.ay = icmp eq i64 %indvars.iv65, 0
  br i1 %i.ay, label %bb.a, label %.preheader.1, !llvm.loop !106

.preheader.1:                                     ; preds = %tcg_reg_free.exit46, %tcg_reg_free.exit46.1
  %indvars.iv65.1 = phi i64 [ 1, %tcg_reg_free.exit46.1 ], [ %umax, %tcg_reg_free.exit46 ] ; 2 uses
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv65.1
  %i.ba = load i32, ptr %i.az, align 4            ; 2 uses
  br label %bb.j

bb.j:                                             ; preds = %bb.o, %.preheader.1
  %indvars.iv.1 = phi i64 [ 0, %.preheader.1 ], [ %indvars.iv.next.1.1, %bb.o ] ; 4 uses
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %indvars.iv.1
  %i.bc = load i32, ptr %i.bb, align 8            ; 4 uses
  %i.bd = shl nuw i32 1, %i.bc
  %i.be = and i32 %i.bd, %i.ba
  %.not.1 = icmp eq i32 %i.be, 0
  br i1 %.not.1, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bf = zext i32 %i.bc to i64
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %i.bf
  %i.bh = load ptr, ptr %i.bg, align 8            ; 2 uses
  %.not42.1 = icmp eq ptr %i.bh, null             ; 2 uses
  %i.bi = add i32 %i.bc, 1
  %i.bj = zext i32 %i.bi to i64                   ; 2 uses
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %i.bj
  %i.bl = load ptr, ptr %i.bk, align 8
  %.not43.1 = icmp eq ptr %i.bl, null
  %i.bm = or i1 %.not43.1, %.not42.1
  br i1 %i.bm, label %.loopexit, label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %exitcond.1 = icmp eq i64 %indvars.iv.1, 30
  br i1 %exitcond.1, label %tcg_reg_free.exit46.1, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bn = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %indvars.iv.1
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 4
  %i.bp = load i32, ptr %i.bo, align 4            ; 4 uses
  %i.bq = shl nuw i32 1, %i.bp
  %i.br = and i32 %i.bq, %i.ba
  %.not.1.1 = icmp eq i32 %i.br, 0
  br i1 %.not.1.1, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bs = zext i32 %i.bp to i64
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %i.bs
  %i.bu = load ptr, ptr %i.bt, align 8            ; 2 uses
  %.not42.1.1 = icmp eq ptr %i.bu, null           ; 2 uses
  %i.bv = add i32 %i.bp, 1
  %i.bw = zext i32 %i.bv to i64                   ; 2 uses
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %i.bw
  %i.by = load ptr, ptr %i.bx, align 8
  %.not43.1.1 = icmp eq ptr %i.by, null
  %i.bz = or i1 %.not43.1.1, %.not42.1.1
  br i1 %i.bz, label %.loopexit, label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %indvars.iv.next.1.1 = add nuw nsw i64 %indvars.iv.1, 2
  br label %bb.j

tcg_reg_free.exit46.1:                            ; preds = %bb.l
  %i.ca = icmp eq i64 %indvars.iv65.1, 0
  br i1 %i.ca, label %.preheader.1, label %.preheader.2.preheader, !llvm.loop !106

.preheader.2.preheader:                           ; preds = %tcg_reg_free.exit46.1
  %i.cb = load i32, ptr %i.i, align 16            ; 2 uses
  %i.cc = shl nuw i32 1, %i.cb
  %5 = getelementptr inbounds nuw i8, ptr %i.i, i64 4
  %6 = load i32, ptr %5, align 4                  ; 2 uses
  %i.cd = shl nuw i32 1, %6
  %7 = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %8 = load i32, ptr %7, align 8                  ; 2 uses
  %i.ce = shl nuw i32 1, %8
  %9 = getelementptr inbounds nuw i8, ptr %i.i, i64 12
  %10 = load i32, ptr %9, align 4                 ; 2 uses
  %i.cf = shl nuw i32 1, %10
  %11 = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %12 = load i32, ptr %11, align 16               ; 2 uses
  %i.cg = shl nuw i32 1, %12
  %13 = getelementptr inbounds nuw i8, ptr %i.i, i64 20
  %14 = load i32, ptr %13, align 4                ; 2 uses
  %i.ch = shl nuw i32 1, %14
  %15 = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %16 = load i32, ptr %15, align 8                ; 2 uses
  %i.ci = shl nuw i32 1, %16
  %17 = getelementptr inbounds nuw i8, ptr %i.i, i64 28
  %18 = load i32, ptr %17, align 4                ; 2 uses
  %i.cj = shl nuw i32 1, %18
  %19 = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  %20 = load i32, ptr %19, align 16               ; 2 uses
  %i.ck = shl nuw i32 1, %20
  %21 = getelementptr inbounds nuw i8, ptr %i.i, i64 36
  %22 = load i32, ptr %21, align 4                ; 2 uses
  %i.cl = shl nuw i32 1, %22
  %23 = getelementptr inbounds nuw i8, ptr %i.i, i64 40
  %24 = load i32, ptr %23, align 8                ; 2 uses
  %i.cm = shl nuw i32 1, %24
  %25 = getelementptr inbounds nuw i8, ptr %i.i, i64 44
  %26 = load i32, ptr %25, align 4                ; 2 uses
  %i.cn = shl nuw i32 1, %26
  %27 = getelementptr inbounds nuw i8, ptr %i.i, i64 48
  %28 = load i32, ptr %27, align 16               ; 2 uses
  %i.co = shl nuw i32 1, %28
  %29 = getelementptr inbounds nuw i8, ptr %i.i, i64 52
  %30 = load i32, ptr %29, align 4                ; 2 uses
  %i.cp = shl nuw i32 1, %30
  %31 = getelementptr inbounds nuw i8, ptr %i.i, i64 56
  %32 = load i32, ptr %31, align 8                ; 2 uses
  %i.cq = shl nuw i32 1, %32
  %33 = getelementptr inbounds nuw i8, ptr %i.i, i64 60
  %34 = load i32, ptr %33, align 4                ; 2 uses
  %i.cr = shl nuw i32 1, %34
  %35 = getelementptr inbounds nuw i8, ptr %i.i, i64 64
  %36 = load i32, ptr %35, align 16               ; 2 uses
  %i.cs = shl nuw i32 1, %36
  %37 = getelementptr inbounds nuw i8, ptr %i.i, i64 68
  %38 = load i32, ptr %37, align 4                ; 2 uses
  %i.ct = shl nuw i32 1, %38
  %39 = getelementptr inbounds nuw i8, ptr %i.i, i64 72
  %40 = load i32, ptr %39, align 8                ; 2 uses
  %i.cu = shl nuw i32 1, %40
  %41 = getelementptr inbounds nuw i8, ptr %i.i, i64 76
  %42 = load i32, ptr %41, align 4                ; 2 uses
  %i.cv = shl nuw i32 1, %42
  %43 = getelementptr inbounds nuw i8, ptr %i.i, i64 80
  %44 = load i32, ptr %43, align 16               ; 2 uses
  %i.cw = shl nuw i32 1, %44
  %45 = getelementptr inbounds nuw i8, ptr %i.i, i64 84
  %46 = load i32, ptr %45, align 4                ; 2 uses
  %i.cx = shl nuw i32 1, %46
  %47 = getelementptr inbounds nuw i8, ptr %i.i, i64 88
  %48 = load i32, ptr %47, align 8                ; 2 uses
  %i.cy = shl nuw i32 1, %48
  %49 = getelementptr inbounds nuw i8, ptr %i.i, i64 92
  %50 = load i32, ptr %49, align 4                ; 2 uses
  %i.cz = shl nuw i32 1, %50
  %51 = getelementptr inbounds nuw i8, ptr %i.i, i64 96
  %52 = load i32, ptr %51, align 16               ; 2 uses
  %i.da = shl nuw i32 1, %52
  %53 = getelementptr inbounds nuw i8, ptr %i.i, i64 100
  %54 = load i32, ptr %53, align 4                ; 2 uses
  %i.db = shl nuw i32 1, %54
  %55 = getelementptr inbounds nuw i8, ptr %i.i, i64 104
  %56 = load i32, ptr %55, align 8                ; 2 uses
  %i.dc = shl nuw i32 1, %56
  %57 = getelementptr inbounds nuw i8, ptr %i.i, i64 108
  %58 = load i32, ptr %57, align 4                ; 2 uses
  %i.dd = shl nuw i32 1, %58
  %59 = getelementptr inbounds nuw i8, ptr %i.i, i64 112
  %60 = load i32, ptr %59, align 16               ; 2 uses
  %i.de = shl nuw i32 1, %60
  %61 = getelementptr inbounds nuw i8, ptr %i.i, i64 116
  %62 = load i32, ptr %61, align 4                ; 2 uses
  %i.df = shl nuw i32 1, %62
  %63 = getelementptr inbounds nuw i8, ptr %i.i, i64 120
  %64 = load i32, ptr %63, align 8                ; 2 uses
  %i.dg = shl nuw i32 1, %64
  br label %.preheader.2

.preheader.2:                                     ; preds = %.preheader.2.preheader, %tcg_reg_free.exit46.2
  %indvars.iv65.2 = phi i64 [ 1, %tcg_reg_free.exit46.2 ], [ %umax, %.preheader.2.preheader ] ; 2 uses
  %i.dh = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv65.2
  %i.di = load i32, ptr %i.dh, align 4            ; 31 uses
  %i.dj = and i32 %i.cc, %i.di
  %.not.2 = icmp eq i32 %i.dj, 0
  br i1 %.not.2, label %bb.p, label %.loopexit72

bb.p:                                             ; preds = %.preheader.2
  %i.dk = and i32 %i.cd, %i.di
  %.not.2.1 = icmp eq i32 %i.dk, 0
  br i1 %.not.2.1, label %bb.q, label %.loopexit72

bb.q:                                             ; preds = %bb.p
  %i.dl = and i32 %i.ce, %i.di
  %.not.2.2 = icmp eq i32 %i.dl, 0
  br i1 %.not.2.2, label %bb.r, label %.loopexit72

bb.r:                                             ; preds = %bb.q
  %i.dm = and i32 %i.cf, %i.di
  %.not.2.3 = icmp eq i32 %i.dm, 0
  br i1 %.not.2.3, label %bb.s, label %.loopexit72

bb.s:                                             ; preds = %bb.r
  %i.dn = and i32 %i.cg, %i.di
  %.not.2.4 = icmp eq i32 %i.dn, 0
  br i1 %.not.2.4, label %bb.t, label %.loopexit72

bb.t:                                             ; preds = %bb.s
  %i.do = and i32 %i.ch, %i.di
  %.not.2.5 = icmp eq i32 %i.do, 0
  br i1 %.not.2.5, label %bb.u, label %.loopexit72

bb.u:                                             ; preds = %bb.t
  %i.dp = and i32 %i.ci, %i.di
  %.not.2.6 = icmp eq i32 %i.dp, 0
  br i1 %.not.2.6, label %bb.v, label %.loopexit72

bb.v:                                             ; preds = %bb.u
  %i.dq = and i32 %i.cj, %i.di
  %.not.2.7 = icmp eq i32 %i.dq, 0
  br i1 %.not.2.7, label %bb.w, label %.loopexit72

bb.w:                                             ; preds = %bb.v
  %i.dr = and i32 %i.ck, %i.di
  %.not.2.8 = icmp eq i32 %i.dr, 0
  br i1 %.not.2.8, label %bb.x, label %.loopexit72

bb.x:                                             ; preds = %bb.w
  %i.ds = and i32 %i.cl, %i.di
  %.not.2.9 = icmp eq i32 %i.ds, 0
  br i1 %.not.2.9, label %bb.y, label %.loopexit72

bb.y:                                             ; preds = %bb.x
  %i.dt = and i32 %i.cm, %i.di
  %.not.2.10 = icmp eq i32 %i.dt, 0
  br i1 %.not.2.10, label %bb.z, label %.loopexit72

bb.z:                                             ; preds = %bb.y
  %i.du = and i32 %i.cn, %i.di
  %.not.2.11 = icmp eq i32 %i.du, 0
  br i1 %.not.2.11, label %bb.aa, label %.loopexit72

bb.aa:                                            ; preds = %bb.z
  %i.dv = and i32 %i.co, %i.di
  %.not.2.12 = icmp eq i32 %i.dv, 0
  br i1 %.not.2.12, label %bb.ab, label %.loopexit72

bb.ab:                                            ; preds = %bb.aa
  %i.dw = and i32 %i.cp, %i.di
  %.not.2.13 = icmp eq i32 %i.dw, 0
  br i1 %.not.2.13, label %bb.ac, label %.loopexit72

bb.ac:                                            ; preds = %bb.ab
  %i.dx = and i32 %i.cq, %i.di
  %.not.2.14 = icmp eq i32 %i.dx, 0
  br i1 %.not.2.14, label %bb.ad, label %.loopexit72

bb.ad:                                            ; preds = %bb.ac
  %i.dy = and i32 %i.cr, %i.di
  %.not.2.15 = icmp eq i32 %i.dy, 0
  br i1 %.not.2.15, label %bb.ae, label %.loopexit72

bb.ae:                                            ; preds = %bb.ad
  %i.dz = and i32 %i.cs, %i.di
  %.not.2.16 = icmp eq i32 %i.dz, 0
  br i1 %.not.2.16, label %bb.af, label %.loopexit72

bb.af:                                            ; preds = %bb.ae
  %i.ea = and i32 %i.ct, %i.di
  %.not.2.17 = icmp eq i32 %i.ea, 0
  br i1 %.not.2.17, label %bb.ag, label %.loopexit72

bb.ag:                                            ; preds = %bb.af
  %i.eb = and i32 %i.cu, %i.di
  %.not.2.18 = icmp eq i32 %i.eb, 0
  br i1 %.not.2.18, label %bb.ah, label %.loopexit72

bb.ah:                                            ; preds = %bb.ag
  %i.ec = and i32 %i.cv, %i.di
  %.not.2.19 = icmp eq i32 %i.ec, 0
  br i1 %.not.2.19, label %bb.ai, label %.loopexit72

bb.ai:                                            ; preds = %bb.ah
  %i.ed = and i32 %i.cw, %i.di
  %.not.2.20 = icmp eq i32 %i.ed, 0
  br i1 %.not.2.20, label %bb.aj, label %.loopexit72

bb.aj:                                            ; preds = %bb.ai
  %i.ee = and i32 %i.cx, %i.di
  %.not.2.21 = icmp eq i32 %i.ee, 0
  br i1 %.not.2.21, label %bb.ak, label %.loopexit72

bb.ak:                                            ; preds = %bb.aj
  %i.ef = and i32 %i.cy, %i.di
  %.not.2.22 = icmp eq i32 %i.ef, 0
  br i1 %.not.2.22, label %bb.al, label %.loopexit72

bb.al:                                            ; preds = %bb.ak
  %i.eg = and i32 %i.cz, %i.di
  %.not.2.23 = icmp eq i32 %i.eg, 0
  br i1 %.not.2.23, label %bb.am, label %.loopexit72

bb.am:                                            ; preds = %bb.al
  %i.eh = and i32 %i.da, %i.di
  %.not.2.24 = icmp eq i32 %i.eh, 0
  br i1 %.not.2.24, label %bb.an, label %.loopexit72

bb.an:                                            ; preds = %bb.am
  %i.ei = and i32 %i.db, %i.di
  %.not.2.25 = icmp eq i32 %i.ei, 0
  br i1 %.not.2.25, label %bb.ao, label %.loopexit72

bb.ao:                                            ; preds = %bb.an
  %i.ej = and i32 %i.dc, %i.di
  %.not.2.26 = icmp eq i32 %i.ej, 0
  br i1 %.not.2.26, label %bb.ap, label %.loopexit72

bb.ap:                                            ; preds = %bb.ao
  %i.ek = and i32 %i.dd, %i.di
  %.not.2.27 = icmp eq i32 %i.ek, 0
  br i1 %.not.2.27, label %bb.aq, label %.loopexit72

bb.aq:                                            ; preds = %bb.ap
  %i.el = and i32 %i.de, %i.di
  %.not.2.28 = icmp eq i32 %i.el, 0
  br i1 %.not.2.28, label %bb.ar, label %.loopexit72

bb.ar:                                            ; preds = %bb.aq
  %i.em = and i32 %i.df, %i.di
  %.not.2.29 = icmp eq i32 %i.em, 0
  br i1 %.not.2.29, label %bb.as, label %.loopexit72

bb.as:                                            ; preds = %bb.ar
  %i.en = and i32 %i.dg, %i.di
  %.not.2.30 = icmp eq i32 %i.en, 0
  br i1 %.not.2.30, label %tcg_reg_free.exit46.2, label %.loopexit72

tcg_reg_free.exit46.2:                            ; preds = %bb.as
  %i.eo = icmp eq i64 %indvars.iv65.2, 0
  br i1 %i.eo, label %.preheader.2, label %bb.at, !llvm.loop !106

bb.at:                                            ; preds = %tcg_reg_free.exit46.2
  tail call void @g_assertion_message_expr(ptr noundef null, ptr noundef nonnull @.str, i32 noundef 4750, ptr noundef nonnull @__func__.tcg_reg_alloc_pair, ptr noundef null) #27
  unreachable

bb.au:                                            ; preds = %bb.e, %tcg_reg_free.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  ret i32 %.lcssa6278
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @tcg_out_cmp_vec(ptr nofree noundef captures(none) %0, i32 noundef range(i32 0, 256) %1, i32 noundef range(i32 0, 256) %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6) unnamed_addr #0 {
bb.a:
  %i.a = icmp samesign ult i32 %2, 2
  %i.b = load i32, ptr @cpuinfo, align 4          ; 2 uses
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = and i32 %i.b, 14336
  %or.cond35.not = icmp eq i32 %i.c, 14336
  br i1 %or.cond35.not, label %bb.d, label %bb.h

bb.c:                                             ; preds = %bb.a
  %i.d = and i32 %i.b, 22528
  %or.cond37.not = icmp eq i32 %i.d, 22528
  br i1 %or.cond37.not, label %bb.d, label %bb.h

bb.d:                                             ; preds = %bb.c, %bb.b
  switch i32 %6, label %bb.g [
    i32 8, label %bb.h
    i32 6, label %bb.h
    i32 2, label %bb.h
    i32 13, label %bb.e
    i32 12, label %bb.f
  ]

bb.e:                                             ; preds = %bb.d
end_hunk_1
