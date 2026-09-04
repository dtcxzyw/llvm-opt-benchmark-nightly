Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qemu/original/tcg?download=true
inline.NumInlined: 1043
inline.NumDeleted: 195
loop-unroll.NumCompletelyUnrolled: 15
loop-unroll.NumRuntimeUnrolled: 15
loop-unroll.NumUnrolled: 32
begin_hunk_0_@tcg_can_emit_vec_op:bb.a
    i32 2, label %bb.x
    i32 3, label %bb.f
  ]

bb.f:                                             ; preds = %bb.e
  %i.h = load i32, ptr @cpuinfo, align 4
  %i.i = and i32 %i.h, 6144
  %or.cond26.not = icmp eq i32 %i.i, 6144
  br i1 %or.cond26.not, label %bb.ab, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.j = icmp ugt i32 %1, 4
  %i.k = sext i1 %i.j to i32
  br label %bb.ab

bb.h:                                             ; preds = %bb.a, %bb.a
  %i.l = icmp ne i32 %2, 0
  %i.m = zext i1 %i.l to i32
  br label %bb.ab

bb.i:                                             ; preds = %bb.a
  switch i32 %2, label %bb.aa [
    i32 1, label %bb.ab
    i32 2, label %bb.ab
    i32 3, label %bb.j
  ]

bb.j:                                             ; preds = %bb.i
  %i.n = load i32, ptr @cpuinfo, align 4
  %i.o = and i32 %i.n, 6144
  %i.p = icmp eq i32 %i.o, 6144
  %i.q = zext i1 %i.p to i32
  br label %bb.ab

bb.k:                                             ; preds = %bb.a
  %.not21 = icmp ne i32 %2, 0
  %i.r = sext i1 %.not21 to i32
  br label %bb.ab

bb.l:                                             ; preds = %bb.a, %bb.a
  switch i32 %2, label %bb.ab [
    i32 1, label %bb.m
    i32 2, label %bb.n
    i32 3, label %bb.n
  ]

bb.m:                                             ; preds = %bb.l
  %i.s = load i32, ptr @cpuinfo, align 4
  %i.t = and i32 %i.s, 14336
  %narrow31 = icmp eq i32 %i.t, 14336
  %i.u = zext i1 %narrow31 to i32
  br label %bb.ab

bb.n:                                             ; preds = %bb.l, %bb.l
  %i.v = load i32, ptr @cpuinfo, align 4
  %i.w = and i32 %i.v, 1024
  br label %bb.ab

bb.o:                                             ; preds = %bb.a
  switch i32 %2, label %bb.ab [
    i32 1, label %bb.p
    i32 2, label %bb.q
    i32 3, label %bb.r
  ]

bb.p:                                             ; preds = %bb.o
  %i.x = load i32, ptr @cpuinfo, align 4
  %i.y = and i32 %i.x, 14336
  %narrow30 = icmp eq i32 %i.y, 14336
  %i.z = zext i1 %narrow30 to i32
  br label %bb.ab

bb.q:                                             ; preds = %bb.o
  %i.aa = load i32, ptr @cpuinfo, align 4
  %i.ab = and i32 %i.aa, 1024
  br label %bb.ab

bb.r:                                             ; preds = %bb.o
  %i.ac = load i32, ptr @cpuinfo, align 4
  %i.ad = and i32 %i.ac, 6144
  %i.ae = icmp eq i32 %i.ad, 6144
  %i.af = zext i1 %i.ae to i32
  br label %bb.ab

bb.s:                                             ; preds = %bb.a, %bb.a
  switch i32 %2, label %bb.ab [
    i32 1, label %bb.t
    i32 2, label %bb.u
    i32 3, label %bb.u
  ]

bb.t:                                             ; preds = %bb.s
  %i.ag = load i32, ptr @cpuinfo, align 4
  %i.ah = and i32 %i.ag, 38912
  %narrow29 = icmp eq i32 %i.ah, 38912
  %i.ai = sext i1 %narrow29 to i32
  br label %bb.ab

bb.u:                                             ; preds = %bb.s, %bb.s
  %i.aj = load i32, ptr @cpuinfo, align 4         ; 2 uses
  %i.ak = and i32 %i.aj, 6144
  %or.cond27.not = icmp eq i32 %i.ak, 6144
  %i.al = shl i32 %i.aj, 21
  %sext = ashr i32 %i.al, 31
  %i.am = select i1 %or.cond27.not, i32 1, i32 %sext
  br label %bb.ab

bb.v:                                             ; preds = %bb.a
  switch i32 %2, label %bb.x [
    i32 0, label %bb.ab
    i32 3, label %bb.w
  ]

bb.w:                                             ; preds = %bb.v
  %i.an = load i32, ptr @cpuinfo, align 4
  %i.ao = and i32 %i.an, 22528
  %narrow28 = icmp eq i32 %i.ao, 22528
  %i.ap = zext i1 %narrow28 to i32
  br label %bb.ab

bb.x:                                             ; preds = %bb.e, %bb.e, %bb.v
  br label %bb.ab

bb.y:                                             ; preds = %bb.a, %bb.a, %bb.a, %bb.a
  %i.aq = icmp ult i32 %2, 2
  %i.ar = zext i1 %i.aq to i32
  br label %bb.ab

bb.z:                                             ; preds = %bb.a, %bb.a, %bb.a, %bb.a, %bb.a
  %i.as = icmp ult i32 %2, 3
  %i.at = load i32, ptr @cpuinfo, align 4
  %i.au = and i32 %i.at, 6144
  %i.av = icmp eq i32 %i.au, 6144
  %narrow = select i1 %i.as, i1 true, i1 %i.av
  %i.aw = zext i1 %narrow to i32
  br label %bb.ab

bb.aa:                                            ; preds = %bb.e, %bb.i, %bb.a
  br label %bb.ab

bb.ab:                                            ; preds = %bb.v, %bb.s, %bb.o, %bb.l, %bb.i, %bb.i, %bb.f, %bb.e, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.aa, %bb.z, %bb.y, %bb.x, %bb.w, %bb.u, %bb.t, %bb.r, %bb.q, %bb.p, %bb.n, %bb.m, %bb.k, %bb.j, %bb.h, %bb.g, %bb.d, %bb.c, %bb.b
  %.0 = phi i32 [ 0, %bb.aa ], [ %i.aw, %bb.z ], [ -1, %bb.b ], [ %i.e, %bb.c ], [ %i.g, %bb.d ], [ 1, %bb.i ], [ 1, %bb.a ], [ -1, %bb.v ], [ -1, %bb.e ], [ %i.k, %bb.g ], [ %i.m, %bb.h ], [ 1, %bb.a ], [ 1, %bb.f ], [ %i.q, %bb.j ], [ %i.r, %bb.k ], [ 1, %bb.i ], [ %i.u, %bb.m ], [ %i.w, %bb.n ], [ 0, %bb.l ], [ %i.z, %bb.p ], [ %i.ab, %bb.q ], [ %i.af, %bb.r ], [ 0, %bb.o ], [ %i.ai, %bb.t ], [ %i.am, %bb.u ], [ 1, %bb.x ], [ 0, %bb.s ], [ %i.ap, %bb.w ], [ %i.ar, %bb.y ], [ 1, %bb.a ], [ 1, %bb.a ], [ 1, %bb.a ], [ 1, %bb.a ], [ 1, %bb.a ], [ 1, %bb.a ], [ 1, %bb.a ], [ 1, %bb.a ], [ 1, %bb.a ], [ 1, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @tcg_expand_vec_op(i32 noundef %0, i32 noundef %1, i32 noundef %2, i64 noundef %3, ...) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %i.c = alloca i64, align 8                      ; 5 uses
  %i.d = alloca i64, align 8                      ; 5 uses
  %i.e = alloca i64, align 8                      ; 5 uses
  %i.f = alloca i64, align 8                      ; 5 uses
  %4 = alloca [1 x %struct.__va_list_tag], align 16 ; 24 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %4, i8 0, i64 24, i1 false), !annotation !12
  call void @llvm.va_start.p0(ptr nonnull %4)
  %i.g = load i32, ptr %4, align 16               ; 6 uses
  %i.h = icmp ult i32 %i.g, 41
  br i1 %i.h, label %bb.b, label %.thread

.thread:                                          ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8              ; 2 uses
  %i.k = getelementptr i8, ptr %i.j, i64 8
  store ptr %i.k, ptr %i.i, align 8
  %i.l = load i64, ptr %i.j, align 8
  br label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.n = load ptr, ptr %i.m, align 16
  %i.o = zext nneg i32 %i.g to i64
  %i.p = getelementptr i8, ptr %i.n, i64 %i.o
  %i.q = add nuw nsw i32 %i.g, 8                  ; 3 uses
  store i32 %i.q, ptr %4, align 16
  %i.r = load i64, ptr %i.p, align 8              ; 2 uses
  %i.s = icmp ult i32 %i.g, 33
  br i1 %i.s, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.u = load ptr, ptr %i.t, align 16
  %i.v = zext nneg i32 %i.q to i64
  %i.w = getelementptr i8, ptr %i.u, i64 %i.v
  %i.x = add nuw nsw i32 %i.g, 16                 ; 2 uses
  store i32 %i.x, ptr %4, align 16
  br label %bb.e

bb.d:                                             ; preds = %.thread, %bb.b
  %i.y = phi i64 [ %i.l, %.thread ], [ %i.r, %bb.b ]
  %i.z = phi i32 [ %i.g, %.thread ], [ %i.q, %bb.b ]
  %i.aa = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.ab = load ptr, ptr %i.aa, align 8            ; 2 uses
  %i.ac = getelementptr i8, ptr %i.ab, i64 8
  store ptr %i.ac, ptr %i.aa, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.ad = phi i64 [ %i.r, %bb.c ], [ %i.y, %bb.d ] ; 3 uses
  %i.ae = phi i32 [ %i.x, %bb.c ], [ %i.z, %bb.d ] ; 10 uses
  %i.af = phi ptr [ %i.w, %bb.c ], [ %i.ab, %bb.d ]
  %i.ag = load i64, ptr %i.af, align 8            ; 24 uses
  %i.ah = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @tcg_ctx) ; 51 uses
  %i.ai = load ptr, ptr %i.ah, align 8            ; 11 uses
  %i.aj = ptrtoint ptr %i.ai to i64               ; 6 uses
  %i.ak = sub i64 %3, %i.aj                       ; 10 uses
  %i.al = inttoptr i64 %i.ak to ptr               ; 21 uses
  %i.am = sub i64 %i.ad, %i.aj                    ; 11 uses
  %i.an = inttoptr i64 %i.am to ptr               ; 15 uses
  switch i32 %0, label %expand_vec_shi.exit [
    i32 108, label %bb.f
    i32 109, label %bb.i
    i32 110, label %bb.l
    i32 111, label %bb.ac
    i32 115, label %bb.ak
    i32 119, label %bb.av
    i32 120, label %bb.aw
    i32 88, label %bb.ax
    i32 121, label %bb.bv
    i32 123, label %bb.bz
  ]

bb.f:                                             ; preds = %bb.e
  %i.ao = icmp eq i32 %2, 0
  call void @llvm.assume(i1 %i.ao)
  %i.ap = load i32, ptr @cpuinfo, align 4
  %i.aq = and i32 %i.ap, 1048576
  %.not.i = icmp eq i32 %i.aq, 0
  br i1 %.not.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr @expand_vec_shi.gf2_shi, i64 %i.ag
  %i.as = load i64, ptr %i.ar, align 8
  %5 = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.ak
  %6 = ptrtoint ptr %5 to i64
  %7 = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.am
  %8 = ptrtoint ptr %7 to i64
  %i.at = call ptr @tcg_constant_internal(i32 noundef %1, i64 noundef %i.as)
  %i.au = ptrtoint ptr %i.at to i64
  call void @vec_gen_4(i32 noundef 136, i32 noundef %1, i32 noundef 0, i64 noundef %6, i64 noundef %8, i64 noundef %i.au, i64 noundef 0) #26
  br label %expand_vec_shi.exit

bb.h:                                             ; preds = %bb.f
  %i.av = trunc i64 %i.ag to i32
  %i.aw = shl i32 255, %i.av
  call void @tcg_gen_shli_vec(i32 noundef 1, ptr noundef %i.al, ptr noundef %i.an, i64 noundef %i.ag) #26
  %i.ax = and i32 %i.aw, 255
  %i.ay = zext nneg i32 %i.ax to i64
  %i.az = mul nuw i64 %i.ay, 72340172838076673
  %i.ba = call ptr @tcg_constant_internal(i32 noundef %1, i64 noundef %i.az)
  %i.bb = load ptr, ptr %i.ah, align 8
  %i.bc = ptrtoint ptr %i.ba to i64
  %i.bd = ptrtoint ptr %i.bb to i64
  %i.be = sub i64 %i.bc, %i.bd
  %i.bf = inttoptr i64 %i.be to ptr
  call void @tcg_gen_and_vec(i32 noundef 0, ptr noundef %i.al, ptr noundef %i.al, ptr noundef %i.bf) #26
  br label %expand_vec_shi.exit

bb.i:                                             ; preds = %bb.e
  %i.bg = icmp eq i32 %2, 0
  call void @llvm.assume(i1 %i.bg)
  %i.bh = load i32, ptr @cpuinfo, align 4
  %i.bi = and i32 %i.bh, 1048576
  %.not.i64 = icmp eq i32 %i.bi, 0
  br i1 %.not.i64, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr getelementptr inbounds nuw (i8, ptr @expand_vec_shi.gf2_shi, i64 64), i64 %i.ag
  %i.bk = load i64, ptr %i.bj, align 8
  %9 = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.ak
  %10 = ptrtoint ptr %9 to i64
  %11 = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.am
  %12 = ptrtoint ptr %11 to i64
  %i.bl = call ptr @tcg_constant_internal(i32 noundef %1, i64 noundef %i.bk)
  %i.bm = ptrtoint ptr %i.bl to i64
  call void @vec_gen_4(i32 noundef 136, i32 noundef %1, i32 noundef 0, i64 noundef %10, i64 noundef %12, i64 noundef %i.bm, i64 noundef 0) #26
  br label %expand_vec_shi.exit

bb.k:                                             ; preds = %bb.i
  %i.bn = trunc i64 %i.ag to i32
  %i.bo = lshr i32 255, %i.bn
  call void @tcg_gen_shri_vec(i32 noundef 1, ptr noundef %i.al, ptr noundef %i.an, i64 noundef %i.ag) #26
  %i.bp = zext nneg i32 %i.bo to i64
  %i.bq = mul nuw i64 %i.bp, 72340172838076673
  %i.br = call ptr @tcg_constant_internal(i32 noundef %1, i64 noundef %i.bq)
  %i.bs = load ptr, ptr %i.ah, align 8
  %i.bt = ptrtoint ptr %i.br to i64
  %i.bu = ptrtoint ptr %i.bs to i64
  %i.bv = sub i64 %i.bt, %i.bu
  %i.bw = inttoptr i64 %i.bv to ptr
  call void @tcg_gen_and_vec(i32 noundef 0, ptr noundef %i.al, ptr noundef %i.al, ptr noundef %i.bw) #26
  br label %expand_vec_shi.exit

bb.l:                                             ; preds = %bb.e
  %i.bx = shl i32 8, %2
  %i.by = add i32 %i.bx, -1
  %i.bz = sext i32 %i.by to i64
  %.not.i66 = icmp ult i64 %i.ag, %i.bz
  br i1 %.not.i66, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ca = call ptr @tcg_constant_internal(i32 noundef %1, i64 noundef 0)
  %i.cb = load ptr, ptr %i.ah, align 8
  %i.cc = ptrtoint ptr %i.ca to i64
  %i.cd = ptrtoint ptr %i.cb to i64
  %i.ce = sub i64 %i.cc, %i.cd
  %i.cf = inttoptr i64 %i.ce to ptr
  call void @tcg_gen_cmp_vec(i32 noundef 2, i32 noundef %2, ptr noundef %i.al, ptr noundef %i.an, ptr noundef %i.cf) #26
  br label %expand_vec_shi.exit

bb.n:                                             ; preds = %bb.l
  switch i32 %2, label %bb.ab [
    i32 0, label %bb.o
    i32 3, label %bb.v
  ]

bb.o:                                             ; preds = %bb.n
  %i.cg = load i32, ptr @cpuinfo, align 4
  %i.ch = and i32 %i.cg, 1048576
  %.not62.i = icmp eq i32 %i.ch, 0
  br i1 %.not62.i, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ci = getelementptr inbounds nuw [8 x i8], ptr @expand_vec_sari.gf2_sar, i64 %i.ag
  %i.cj = load i64, ptr %i.ci, align 8
  %13 = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.ak
  %14 = ptrtoint ptr %13 to i64
  %15 = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.am
  %16 = ptrtoint ptr %15 to i64
  %i.ck = call ptr @tcg_constant_internal(i32 noundef %1, i64 noundef %i.cj)
  %i.cl = ptrtoint ptr %i.ck to i64
  call void @vec_gen_4(i32 noundef 136, i32 noundef %1, i32 noundef 0, i64 noundef %14, i64 noundef %16, i64 noundef %i.cl, i64 noundef 0) #26
  br label %expand_vec_shi.exit

bb.q:                                             ; preds = %bb.o
  %i.cm = call ptr @tcg_temp_new_internal(i32 noundef %1, i32 noundef 0)
  %i.cn = load ptr, ptr %i.ah, align 8
  %i.co = ptrtoint ptr %i.cm to i64
  %i.cp = ptrtoint ptr %i.cn to i64
  %i.cq = sub i64 %i.co, %i.cp                    ; 4 uses
  %i.cr = inttoptr i64 %i.cq to ptr               ; 2 uses
  %i.cs = call ptr @tcg_temp_new_internal(i32 noundef %1, i32 noundef 0)
  %i.ct = load ptr, ptr %i.ah, align 8            ; 3 uses
  %i.cu = ptrtoint ptr %i.cs to i64
  %i.cv = ptrtoint ptr %i.ct to i64
  %i.cw = sub i64 %i.cu, %i.cv                    ; 4 uses
  %i.cx = inttoptr i64 %i.cw to ptr               ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.ct, i64 %i.cq
  %i.cz = ptrtoint ptr %i.cy to i64
  %i.da = getelementptr inbounds nuw i8, ptr %i.ct, i64 %i.am
  %i.db = ptrtoint ptr %i.da to i64               ; 2 uses
  call void @vec_gen_3(i32 noundef 131, i32 noundef %1, i32 noundef 0, i64 noundef %i.cz, i64 noundef %i.db, i64 noundef %i.db) #26
  %i.dc = load ptr, ptr %i.ah, align 8            ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 %i.cw
  %i.de = ptrtoint ptr %i.dd to i64
  %i.df = getelementptr inbounds nuw i8, ptr %i.dc, i64 %i.am
  %i.dg = ptrtoint ptr %i.df to i64               ; 2 uses
  call void @vec_gen_3(i32 noundef 132, i32 noundef %1, i32 noundef 0, i64 noundef %i.de, i64 noundef %i.dg, i64 noundef %i.dg) #26
  %i.dh = add i64 %i.ag, 8                        ; 2 uses
  call void @tcg_gen_sari_vec(i32 noundef 1, ptr noundef %i.cr, ptr noundef %i.cr, i64 noundef %i.dh) #26
  call void @tcg_gen_sari_vec(i32 noundef 1, ptr noundef %i.cx, ptr noundef %i.cx, i64 noundef %i.dh) #26
  %i.di = load ptr, ptr %i.ah, align 8            ; 3 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 %i.ak
  %i.dk = ptrtoint ptr %i.dj to i64
  %i.dl = getelementptr inbounds nuw i8, ptr %i.di, i64 %i.cq
  %i.dm = ptrtoint ptr %i.dl to i64
  %i.dn = getelementptr inbounds nuw i8, ptr %i.di, i64 %i.cw
  %i.do = ptrtoint ptr %i.dn to i64
  call void @vec_gen_3(i32 noundef 127, i32 noundef %1, i32 noundef 0, i64 noundef %i.dk, i64 noundef %i.dm, i64 noundef %i.do) #26
  %i.dp = load ptr, ptr %i.ah, align 8            ; 4 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 %i.cq ; 3 uses
  %i.dr = load i64, ptr %i.dq, align 8            ; 4 uses
  %i.ds = lshr i64 %i.dr, 32
  %i.dt = trunc nuw i64 %i.ds to i32
  %i.du = and i32 %i.dt, 7
  switch i32 %i.du, label %bb.s [
    i32 4, label %tcg_temp_free_vec.exit.i
    i32 1, label %tcg_temp_free_vec.exit.i
    i32 0, label %bb.r
  ]

bb.r:                                             ; preds = %bb.q
  %i.dv = and i64 %i.dr, 549755813888
  %i.dw = icmp ne i64 %i.dv, 0
  call void @llvm.assume(i1 %i.dw)
  %i.dx = and i64 %i.dr, -549755813889
  store i64 %i.dx, ptr %i.dq, align 8
  %i.dy = load ptr, ptr %i.ah, align 8
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 672
  %i.ea = ptrtoint ptr %i.dq to i64
  %i.eb = ptrtoint ptr %i.dz to i64
  %i.ec = sub i64 %i.ea, %i.eb
  %i.ed = sdiv exact i64 %i.ec, 56                ; 2 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %i.dp, i64 288
  %i.ef = lshr i64 %i.dr, 16
  %i.eg = and i64 %i.ef, 255
  %i.eh = getelementptr inbounds nuw [64 x i8], ptr %i.ee, i64 %i.eg
  %i.ei = and i64 %i.ed, 63
  %i.ej = shl nuw i64 1, %i.ei
  %i.ek = lshr i64 %i.ed, 6
  %i.el = getelementptr inbounds nuw [8 x i8], ptr %i.eh, i64 %i.ek ; 2 uses
  %i.em = load i64, ptr %i.el, align 8
  %i.en = or i64 %i.ej, %i.em
  store i64 %i.en, ptr %i.el, align 8
  %.pre.i = load ptr, ptr %i.ah, align 8
  br label %tcg_temp_free_vec.exit.i

bb.s:                                             ; preds = %bb.q
  call void @g_assertion_message_expr(ptr noundef null, ptr noundef nonnull @.str, i32 noundef 2204, ptr noundef nonnull @__func__.tcg_temp_free_internal, ptr noundef null) #27
  unreachable

tcg_temp_free_vec.exit.i:                         ; preds = %bb.r, %bb.q, %bb.q
  %i.eo = phi ptr [ %i.dp, %bb.q ], [ %i.dp, %bb.q ], [ %.pre.i, %bb.r ] ; 2 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 %i.cw ; 3 uses
  %i.eq = load i64, ptr %i.ep, align 8            ; 4 uses
  %i.er = lshr i64 %i.eq, 32
  %i.es = trunc nuw i64 %i.er to i32
  %i.et = and i32 %i.es, 7
  switch i32 %i.et, label %bb.u [
    i32 4, label %expand_vec_shi.exit
    i32 1, label %expand_vec_shi.exit
    i32 0, label %bb.t
  ]

bb.t:                                             ; preds = %tcg_temp_free_vec.exit.i
  %i.eu = and i64 %i.eq, 549755813888
  %i.ev = icmp ne i64 %i.eu, 0
  call void @llvm.assume(i1 %i.ev)
  %i.ew = and i64 %i.eq, -549755813889
  store i64 %i.ew, ptr %i.ep, align 8
  %i.ex = load ptr, ptr %i.ah, align 8
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ex, i64 672
  %i.ez = ptrtoint ptr %i.ep to i64
  %i.fa = ptrtoint ptr %i.ey to i64
  %i.fb = sub i64 %i.ez, %i.fa
  %i.fc = sdiv exact i64 %i.fb, 56                ; 2 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %i.eo, i64 288
  %i.fe = lshr i64 %i.eq, 16
  %i.ff = and i64 %i.fe, 255
  %i.fg = getelementptr inbounds nuw [64 x i8], ptr %i.fd, i64 %i.ff
  %i.fh = and i64 %i.fc, 63
  %i.fi = shl nuw i64 1, %i.fh
  %i.fj = lshr i64 %i.fc, 6
  %i.fk = getelementptr inbounds nuw [8 x i8], ptr %i.fg, i64 %i.fj ; 2 uses
  %i.fl = load i64, ptr %i.fk, align 8
  %i.fm = or i64 %i.fi, %i.fl
  store i64 %i.fm, ptr %i.fk, align 8
  br label %expand_vec_shi.exit

bb.u:                                             ; preds = %tcg_temp_free_vec.exit.i
  call void @g_assertion_message_expr(ptr noundef null, ptr noundef nonnull @.str, i32 noundef 2204, ptr noundef nonnull @__func__.tcg_temp_free_internal, ptr noundef null) #27
  unreachable

bb.v:                                             ; preds = %bb.n
  %i.fn = call ptr @tcg_temp_new_internal(i32 noundef %1, i32 noundef 0)
  %i.fo = load ptr, ptr %i.ah, align 8
  %i.fp = ptrtoint ptr %i.fn to i64
  %i.fq = ptrtoint ptr %i.fo to i64
  %i.fr = sub i64 %i.fp, %i.fq                    ; 3 uses
  %i.fs = inttoptr i64 %i.fr to ptr               ; 5 uses
  %i.ft = icmp ult i64 %i.ag, 33
  br i1 %i.ft, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.fu = call i64 @llvm.umin.i64(i64 %i.ag, i64 31)
  call void @tcg_gen_sari_vec(i32 noundef 2, ptr noundef %i.fs, ptr noundef %i.an, i64 noundef %i.fu) #26
  call void @tcg_gen_shri_vec(i32 noundef 3, ptr noundef %i.al, ptr noundef %i.an, i64 noundef %i.ag) #26
  %i.fv = load ptr, ptr %i.ah, align 8            ; 2 uses
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fv, i64 %i.ak
  %i.fx = ptrtoint ptr %i.fw to i64               ; 2 uses
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fv, i64 %i.fr
  %i.fz = ptrtoint ptr %i.fy to i64
  call void @vec_gen_4(i32 noundef 126, i32 noundef %1, i32 noundef 2, i64 noundef %i.fx, i64 noundef %i.fx, i64 noundef %i.fz, i64 noundef 170) #26
  br label %bb.y

bb.x:                                             ; preds = %bb.v
  %i.ga = call ptr @tcg_constant_internal(i32 noundef %1, i64 noundef 0)
  %i.gb = load ptr, ptr %i.ah, align 8
  %i.gc = ptrtoint ptr %i.ga to i64
  %i.gd = ptrtoint ptr %i.gb to i64
  %i.ge = sub i64 %i.gc, %i.gd
  %i.gf = inttoptr i64 %i.ge to ptr
  call void @tcg_gen_cmp_vec(i32 noundef 2, i32 noundef 3, ptr noundef %i.fs, ptr noundef %i.an, ptr noundef %i.gf) #26
  call void @tcg_gen_shri_vec(i32 noundef 3, ptr noundef %i.al, ptr noundef %i.an, i64 noundef %i.ag) #26
  %i.gg = sub i64 64, %i.ag
  call void @tcg_gen_shli_vec(i32 noundef 3, ptr noundef %i.fs, ptr noundef %i.fs, i64 noundef %i.gg) #26
  call void @tcg_gen_or_vec(i32 noundef 3, ptr noundef %i.al, ptr noundef %i.al, ptr noundef %i.fs) #26
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %i.gh = load ptr, ptr %i.ah, align 8            ; 2 uses
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gh, i64 %i.fr ; 3 uses
  %i.gj = load i64, ptr %i.gi, align 8            ; 4 uses
  %i.gk = lshr i64 %i.gj, 32
  %i.gl = trunc nuw i64 %i.gk to i32
  %i.gm = and i32 %i.gl, 7
  switch i32 %i.gm, label %bb.aa [
    i32 4, label %expand_vec_shi.exit
    i32 1, label %expand_vec_shi.exit
    i32 0, label %bb.z
  ]

bb.z:                                             ; preds = %bb.y
  %i.gn = and i64 %i.gj, 549755813888
  %i.go = icmp ne i64 %i.gn, 0
  call void @llvm.assume(i1 %i.go)
  %i.gp = and i64 %i.gj, -549755813889
  store i64 %i.gp, ptr %i.gi, align 8
  %i.gq = load ptr, ptr %i.ah, align 8
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gq, i64 672
  %i.gs = ptrtoint ptr %i.gi to i64
  %i.gt = ptrtoint ptr %i.gr to i64
  %i.gu = sub i64 %i.gs, %i.gt
  %i.gv = sdiv exact i64 %i.gu, 56                ; 2 uses
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gh, i64 288
  %i.gx = lshr i64 %i.gj, 16
  %i.gy = and i64 %i.gx, 255
  %i.gz = getelementptr inbounds nuw [64 x i8], ptr %i.gw, i64 %i.gy
  %i.ha = and i64 %i.gv, 63
  %i.hb = shl nuw i64 1, %i.ha
  %i.hc = lshr i64 %i.gv, 6
  %i.hd = getelementptr inbounds nuw [8 x i8], ptr %i.gz, i64 %i.hc ; 2 uses
  %i.he = load i64, ptr %i.hd, align 8
  %i.hf = or i64 %i.hb, %i.he
  store i64 %i.hf, ptr %i.hd, align 8
  br label %expand_vec_shi.exit

bb.aa:                                            ; preds = %bb.y
  call void @g_assertion_message_expr(ptr noundef null, ptr noundef nonnull @.str, i32 noundef 2204, ptr noundef nonnull @__func__.tcg_temp_free_internal, ptr noundef null) #27
  unreachable

bb.ab:                                            ; preds = %bb.n
  call void @g_assertion_message_expr(ptr noundef null, ptr noundef nonnull @.str.54, i32 noundef 4152, ptr noundef nonnull @__func__.expand_vec_sari, ptr noundef null) #27
  unreachable

bb.ac:                                            ; preds = %bb.e
  %i.hg = icmp eq i32 %2, 0
  %i.hh = load i32, ptr @cpuinfo, align 4         ; 2 uses
  br i1 %i.hg, label %bb.ad, label %bb.af

bb.ad:                                            ; preds = %bb.ac
  %i.hi = and i32 %i.hh, 1048576
  %.not27.i = icmp eq i32 %i.hi, 0
  br i1 %.not27.i, label %bb.ah, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.hj = getelementptr inbounds nuw [8 x i8], ptr @expand_vec_rotli.gf2_rol, i64 %i.ag
  %i.hk = load i64, ptr %i.hj, align 8
  %17 = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.ak
  %18 = ptrtoint ptr %17 to i64
  %19 = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.am
  %20 = ptrtoint ptr %19 to i64
  %i.hl = call ptr @tcg_constant_internal(i32 noundef %1, i64 noundef %i.hk)
  %i.hm = ptrtoint ptr %i.hl to i64
  call void @vec_gen_4(i32 noundef 136, i32 noundef %1, i32 noundef 0, i64 noundef %18, i64 noundef %20, i64 noundef %i.hm, i64 noundef 0) #26
  br label %expand_vec_shi.exit

bb.af:                                            ; preds = %bb.ac
  %i.hn = and i32 %i.hh, 38912
  %or.cond28.not.i = icmp eq i32 %i.hn, 38912
  br i1 %or.cond28.not.i, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %21 = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.ak
  %22 = ptrtoint ptr %21 to i64
  %23 = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.am
  %24 = ptrtoint ptr %23 to i64                   ; 2 uses
  call void @vec_gen_4(i32 noundef 133, i32 noundef %1, i32 noundef %2, i64 noundef %22, i64 noundef %24, i64 noundef %24, i64 noundef %i.ag) #26
  br label %expand_vec_shi.exit

bb.ah:                                            ; preds = %bb.af, %bb.ad
  %i.ho = call ptr @tcg_temp_new_internal(i32 noundef %1, i32 noundef 0)
  %i.hp = load ptr, ptr %i.ah, align 8
  %i.hq = ptrtoint ptr %i.ho to i64
  %i.hr = ptrtoint ptr %i.hp to i64
  %i.hs = sub i64 %i.hq, %i.hr                    ; 2 uses
  %i.ht = inttoptr i64 %i.hs to ptr               ; 2 uses
  call void @tcg_gen_shli_vec(i32 noundef %2, ptr noundef %i.ht, ptr noundef %i.an, i64 noundef %i.ag) #26
  %i.hu = shl i32 8, %2
  %i.hv = sext i32 %i.hu to i64
  %i.hw = sub i64 %i.hv, %i.ag
  call void @tcg_gen_shri_vec(i32 noundef %2, ptr noundef %i.al, ptr noundef %i.an, i64 noundef %i.hw) #26
  call void @tcg_gen_or_vec(i32 noundef %2, ptr noundef %i.al, ptr noundef %i.al, ptr noundef %i.ht) #26
  %i.hx = load ptr, ptr %i.ah, align 8            ; 2 uses
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hx, i64 %i.hs ; 3 uses
  %i.hz = load i64, ptr %i.hy, align 8            ; 4 uses
  %i.ia = lshr i64 %i.hz, 32
  %i.ib = trunc nuw i64 %i.ia to i32
  %i.ic = and i32 %i.ib, 7
  switch i32 %i.ic, label %bb.aj [
    i32 4, label %expand_vec_shi.exit
    i32 1, label %expand_vec_shi.exit
    i32 0, label %bb.ai
  ]

bb.ai:                                            ; preds = %bb.ah
  %i.id = and i64 %i.hz, 549755813888
  %i.ie = icmp ne i64 %i.id, 0
  call void @llvm.assume(i1 %i.ie)
  %i.if = and i64 %i.hz, -549755813889
  store i64 %i.if, ptr %i.hy, align 8
  %i.ig = load ptr, ptr %i.ah, align 8
  %i.ih = getelementptr inbounds nuw i8, ptr %i.ig, i64 672
  %i.ii = ptrtoint ptr %i.hy to i64
  %i.ij = ptrtoint ptr %i.ih to i64
  %i.ik = sub i64 %i.ii, %i.ij
  %i.il = sdiv exact i64 %i.ik, 56                ; 2 uses
  %i.im = getelementptr inbounds nuw i8, ptr %i.hx, i64 288
  %i.in = lshr i64 %i.hz, 16
  %i.io = and i64 %i.in, 255
  %i.ip = getelementptr inbounds nuw [64 x i8], ptr %i.im, i64 %i.io
  %i.iq = and i64 %i.il, 63
  %i.ir = shl nuw i64 1, %i.iq
  %i.is = lshr i64 %i.il, 6
  %i.it = getelementptr inbounds nuw [8 x i8], ptr %i.ip, i64 %i.is ; 2 uses
  %i.iu = load i64, ptr %i.it, align 8
  %i.iv = or i64 %i.ir, %i.iu
  store i64 %i.iv, ptr %i.it, align 8
  br label %expand_vec_shi.exit

bb.aj:                                            ; preds = %bb.ah
  call void @g_assertion_message_expr(ptr noundef null, ptr noundef nonnull @.str, i32 noundef 2204, ptr noundef nonnull @__func__.tcg_temp_free_internal, ptr noundef null) #27
  unreachable

bb.ak:                                            ; preds = %bb.e
  %i.iw = sub i64 %i.ag, %i.aj
  %i.ix = inttoptr i64 %i.iw to ptr               ; 4 uses
  %i.iy = call ptr @tcg_temp_new_internal(i32 noundef %1, i32 noundef 0)
  %i.iz = load ptr, ptr %i.ah, align 8            ; 4 uses
  %i.ja = ptrtoint ptr %i.iy to i64
  %i.jb = ptrtoint ptr %i.iz to i64
  %i.jc = sub i64 %i.ja, %i.jb                    ; 2 uses
  %i.jd = inttoptr i64 %i.jc to ptr               ; 6 uses
  %i.je = icmp ne i32 %2, 0
  call void @llvm.assume(i1 %i.je)
  %i.jf = icmp ugt i32 %2, 1
  %i.jg = load i32, ptr @cpuinfo, align 4         ; 2 uses
  br i1 %i.jf, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
  %i.jh = and i32 %i.jg, 6144
  %or.cond.not.i = icmp eq i32 %i.jh, 6144
  br i1 %or.cond.not.i, label %bb.an, label %bb.ap

bb.am:                                            ; preds = %bb.ak
  %i.ji = and i32 %i.jg, 38912
  %or.cond39.not.i = icmp eq i32 %i.ji, 38912
  br i1 %or.cond39.not.i, label %bb.ao, label %bb.ap

bb.an:                                            ; preds = %bb.al
  call void @tcg_gen_dup_i32_vec(i32 noundef %2, ptr noundef %i.jd, ptr noundef %i.ix) #26
  call void @tcg_gen_rotlv_vec(i32 noundef %2, ptr noundef %i.al, ptr noundef %i.an, ptr noundef %i.jd) #26
  br label %tcg_temp_free_i32.exit.i

bb.ao:                                            ; preds = %bb.am
  call void @tcg_gen_dup_i32_vec(i32 noundef 1, ptr noundef %i.jd, ptr noundef %i.ix) #26
  call fastcc void @expand_vec_rotv(i32 noundef %1, i32 noundef 1, ptr noundef %i.al, ptr noundef %i.an, ptr noundef %i.jd, i1 noundef zeroext false)
  br label %tcg_temp_free_i32.exit.i

bb.ap:                                            ; preds = %bb.am, %bb.al
  %i.jj = getelementptr inbounds nuw i8, ptr %i.iz, i64 48 ; 2 uses
  %i.jk = load i32, ptr %i.jj, align 8            ; 3 uses
  %i.jl = add i32 %i.jk, 1
  store i32 %i.jl, ptr %i.jj, align 8
  %i.jm = icmp sgt i32 %i.jk, 511
  br i1 %i.jm, label %bb.aq, label %tcg_temp_new_i32.exit.i

bb.aq:                                            ; preds = %bb.ap
  call fastcc void @tcg_raise_tb_overflow(ptr noundef nonnull %i.iz) #28
  unreachable

tcg_temp_new_i32.exit.i:                          ; preds = %bb.ap
  %i.jn = getelementptr inbounds nuw i8, ptr %i.iz, i64 672
  %i.jo = sext i32 %i.jk to i64
  %i.jp = getelementptr inbounds [56 x i8], ptr %i.jn, i64 %i.jo ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(56) %i.jp, i8 noundef 0, i64 noundef 56, i1 noundef false) #26
  store i64 554050781184, ptr %i.jp, align 8
  %i.jq = load ptr, ptr %i.ah, align 8
  %i.jr = ptrtoint ptr %i.jp to i64
  %i.js = ptrtoint ptr %i.jq to i64
  %i.jt = sub i64 %i.jr, %i.js                    ; 2 uses
  %i.ju = inttoptr i64 %i.jt to ptr               ; 4 uses
  call void @tcg_gen_neg_i32(ptr noundef %i.ju, ptr noundef %i.ix) #26
  %i.jv = shl i32 8, %2
  %i.jw = add i32 %i.jv, -1
  call void @tcg_gen_andi_i32(ptr noundef %i.ju, ptr noundef %i.ju, i32 noundef %i.jw) #26
  call void @tcg_gen_shls_vec(i32 noundef %2, ptr noundef %i.jd, ptr noundef %i.an, ptr noundef %i.ix) #26
  call void @tcg_gen_shrs_vec(i32 noundef %2, ptr noundef %i.al, ptr noundef %i.an, ptr noundef %i.ju) #26
  call void @tcg_gen_or_vec(i32 noundef %2, ptr noundef %i.al, ptr noundef %i.al, ptr noundef %i.jd) #26
  %i.jx = load ptr, ptr %i.ah, align 8            ; 2 uses
  %i.jy = getelementptr inbounds nuw i8, ptr %i.jx, i64 %i.jt ; 3 uses
  %i.jz = load i64, ptr %i.jy, align 8            ; 4 uses
  %i.ka = lshr i64 %i.jz, 32
  %i.kb = trunc nuw i64 %i.ka to i32
  %i.kc = and i32 %i.kb, 7
  switch i32 %i.kc, label %bb.as [
    i32 4, label %tcg_temp_free_i32.exit.i
    i32 1, label %tcg_temp_free_i32.exit.i
    i32 0, label %bb.ar
  ]

bb.ar:                                            ; preds = %tcg_temp_new_i32.exit.i
  %i.kd = and i64 %i.jz, 549755813888
  %i.ke = icmp ne i64 %i.kd, 0
  call void @llvm.assume(i1 %i.ke)
  %i.kf = and i64 %i.jz, -549755813889
  store i64 %i.kf, ptr %i.jy, align 8
  %i.kg = load ptr, ptr %i.ah, align 8
  %i.kh = getelementptr inbounds nuw i8, ptr %i.kg, i64 672
  %i.ki = ptrtoint ptr %i.jy to i64
  %i.kj = ptrtoint ptr %i.kh to i64
  %i.kk = sub i64 %i.ki, %i.kj
  %i.kl = sdiv exact i64 %i.kk, 56                ; 2 uses
  %i.km = getelementptr inbounds nuw i8, ptr %i.jx, i64 288
  %i.kn = lshr i64 %i.jz, 16
  %i.ko = and i64 %i.kn, 255
  %i.kp = getelementptr inbounds nuw [64 x i8], ptr %i.km, i64 %i.ko
  %i.kq = and i64 %i.kl, 63
  %i.kr = shl nuw i64 1, %i.kq
  %i.ks = lshr i64 %i.kl, 6
  %i.kt = getelementptr inbounds nuw [8 x i8], ptr %i.kp, i64 %i.ks ; 2 uses
  %i.ku = load i64, ptr %i.kt, align 8
  %i.kv = or i64 %i.kr, %i.ku
  store i64 %i.kv, ptr %i.kt, align 8
  br label %tcg_temp_free_i32.exit.i

bb.as:                                            ; preds = %tcg_temp_new_i32.exit.i
  call void @g_assertion_message_expr(ptr noundef null, ptr noundef nonnull @.str, i32 noundef 2204, ptr noundef nonnull @__func__.tcg_temp_free_internal, ptr noundef null) #27
  unreachable

tcg_temp_free_i32.exit.i:                         ; preds = %bb.ar, %tcg_temp_new_i32.exit.i, %tcg_temp_new_i32.exit.i, %bb.ao, %bb.an
  %i.kw = load ptr, ptr %i.ah, align 8            ; 2 uses
  %i.kx = getelementptr inbounds nuw i8, ptr %i.kw, i64 %i.jc ; 3 uses
  %i.ky = load i64, ptr %i.kx, align 8            ; 4 uses
  %i.kz = lshr i64 %i.ky, 32
  %i.la = trunc nuw i64 %i.kz to i32
  %i.lb = and i32 %i.la, 7
  switch i32 %i.lb, label %bb.au [
    i32 4, label %expand_vec_shi.exit
    i32 1, label %expand_vec_shi.exit
    i32 0, label %bb.at
  ]

bb.at:                                            ; preds = %tcg_temp_free_i32.exit.i
  %i.lc = and i64 %i.ky, 549755813888
  %i.ld = icmp ne i64 %i.lc, 0
  call void @llvm.assume(i1 %i.ld)
  %i.le = and i64 %i.ky, -549755813889
  store i64 %i.le, ptr %i.kx, align 8
  %i.lf = load ptr, ptr %i.ah, align 8
  %i.lg = getelementptr inbounds nuw i8, ptr %i.lf, i64 672
  %i.lh = ptrtoint ptr %i.kx to i64
  %i.li = ptrtoint ptr %i.lg to i64
  %i.lj = sub i64 %i.lh, %i.li
  %i.lk = sdiv exact i64 %i.lj, 56                ; 2 uses
  %i.ll = getelementptr inbounds nuw i8, ptr %i.kw, i64 288
  %i.lm = lshr i64 %i.ky, 16
  %i.ln = and i64 %i.lm, 255
  %i.lo = getelementptr inbounds nuw [64 x i8], ptr %i.ll, i64 %i.ln
  %i.lp = and i64 %i.lk, 63
  %i.lq = shl nuw i64 1, %i.lp
  %i.lr = lshr i64 %i.lk, 6
  %i.ls = getelementptr inbounds nuw [8 x i8], ptr %i.lo, i64 %i.lr ; 2 uses
  %i.lt = load i64, ptr %i.ls, align 8
  %i.lu = or i64 %i.lq, %i.lt
  store i64 %i.lu, ptr %i.ls, align 8
  br label %expand_vec_shi.exit

end_hunk_0
