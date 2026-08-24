Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/linux/original/mem?download=true
inline.NumInlined: 49
inline.NumDeleted: 6
begin_hunk_0_@efi_get_memory_map:bb.a
  br i1 %1, label %bb.p, label %bb.r

bb.p:                                             ; preds = %bb.o
  br i1 %i.j, label %.thread42, label %bb.q

bb.q:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #4
  %i.dn = load ptr, ptr @efi_system_table, align 8
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 60
  %i.dp = load i32, ptr %i.do, align 4
  %i.dq = zext i32 %i.dp to i64
  %i.dr = inttoptr i64 %i.dq to ptr
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 108
  %i.dt = load i32, ptr %i.ds, align 4
  %i.du = call i64 (i32, ...) @__efi64_thunk(i32 noundef %i.dt, ptr noundef nonnull %3, ptr noundef null, ptr noundef nonnull %i.g) #5 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #4
  br label %bb.r

.thread38:                                        ; preds = %bb.n
  %i.dv = load ptr, ptr %i.b, align 8
  store ptr %i.dv, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #4
  br label %__free_efi_pool.exit

bb.r:                                             ; preds = %.thread, %bb.o, %bb.q, %bb.j, %bb.e
  %.0.ph = phi i64 [ -9223372036854775807, %.thread ], [ %i.dm, %bb.o ], [ %i.dm, %bb.q ], [ %i.bl, %bb.e ], [ %i.cg, %bb.j ] ; 3 uses
  %.pr = load ptr, ptr %i.b, align 8              ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #4
  %.not.i = icmp eq ptr %.pr, null
  br i1 %.not.i, label %__free_efi_pool.exit, label %bb.s

.thread53:                                        ; preds = %bb.b
  %.pr55 = load ptr, ptr %i.b, align 8            ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #4
  %.not.i56 = icmp eq ptr %.pr55, null
  br i1 %.not.i56, label %__free_efi_pool.exit, label %.thread48

.thread42:                                        ; preds = %bb.p
  %i.dw = load ptr, ptr @efi_system_table, align 8
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 96
  %i.dy = load ptr, ptr %i.dx, align 8
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 192
  %i.ea = load ptr, ptr %i.dz, align 8
  %i.eb = call win64cc i64 %i.ea(ptr noundef nonnull %3, ptr noundef null) #5 ; 0 uses
  %.pr44 = load ptr, ptr %i.b, align 8            ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #4
  %.not.i45 = icmp eq ptr %.pr44, null
  br i1 %.not.i45, label %__free_efi_pool.exit, label %.thread48

bb.s:                                             ; preds = %bb.r
  br i1 %i.j, label %.thread48, label %bb.t

.thread48:                                        ; preds = %.thread53, %.thread42, %bb.s
  %.0.ph4652 = phi i64 [ %.0.ph, %bb.s ], [ %i.dm, %.thread42 ], [ -9223372036854775807, %.thread53 ]
  %.pr4751 = phi ptr [ %.pr, %bb.s ], [ %.pr44, %.thread42 ], [ %.pr55, %.thread53 ]
  %i.ec = load ptr, ptr @efi_system_table, align 8
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 96
  %i.ee = load ptr, ptr %i.ed, align 8
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 72
  %i.eg = load ptr, ptr %i.ef, align 8
  %i.eh = call win64cc i64 %i.eg(ptr noundef nonnull %.pr4751) #5, !inline_history !6 ; 0 uses
  br label %__free_efi_pool.exit

bb.t:                                             ; preds = %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #4
  %i.ei = load ptr, ptr @efi_system_table, align 8
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 60
  %i.ek = load i32, ptr %i.ej, align 4
  %i.el = zext i32 %i.ek to i64
  %i.em = inttoptr i64 %i.el to ptr
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 48
  %i.eo = load i32, ptr %i.en, align 8
  %i.ep = call i64 (i32, ...) @__efi64_thunk(i32 noundef %i.eo, ptr noundef nonnull %.pr, ptr noundef nonnull %i.a) #5 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #4
  br label %__free_efi_pool.exit

__free_efi_pool.exit:                             ; preds = %.thread53, %.thread42, %.thread38, %bb.r, %.thread48, %bb.t
  %.041 = phi i64 [ 0, %.thread38 ], [ %.0.ph, %bb.r ], [ %.0.ph4652, %.thread48 ], [ %.0.ph, %bb.t ], [ %i.dm, %.thread42 ], [ -9223372036854775807, %.thread53 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #4
  ret i64 %.041
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: noredzone optsize
declare hidden i64 @__efi64_thunk(i32 noundef, ...) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: noredzone nounwind optsize
define hidden i64 @efi_allocate_pages(i64 noundef %0, ptr nofree noundef writeonly captures(none) %1, i64 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca [3 x i64], align 16               ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #4
  %i.c = load i8, ptr @efi_is64, align 1, !range !4, !noundef !5
  %i.d = trunc nuw i8 %i.c to i1                  ; 2 uses
  %i.e = tail call i64 @llvm.umin.i64(i64 %2, i64 4294967295)
  %i.f = select i1 %i.d, i64 %2, i64 %i.e
  %i.g = add i64 %i.f, 1
  %i.h = and i64 %i.g, -4096
  %i.i = add i64 %i.h, -1
  store i64 %i.i, ptr %i.a, align 8
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.j = load ptr, ptr @efi_system_table, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 96
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 40
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = add i64 %0, 4095
  %i.p = lshr i64 %i.o, 12
  %i.q = call win64cc i64 %i.n(i32 noundef 1, i32 noundef 2, i64 noundef %i.p, ptr noundef nonnull %i.a) #5
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #4
  %i.r = load ptr, ptr @efi_system_table, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 60
  %i.t = load i32, ptr %i.s, align 4
  %i.u = zext i32 %i.t to i64
  %i.v = inttoptr i64 %i.u to ptr
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 32
  %i.x = load i32, ptr %i.w, align 8
  %i.y = add i64 %0, 4095
  %i.z = lshr i64 %i.y, 12
  %i.aa = call i64 (i32, ...) @__efi64_thunk(i32 noundef %i.x, i32 noundef 1, i32 noundef 2, i64 noundef %i.z, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #4
  %i.ab = trunc i64 %i.aa to i32                  ; 2 uses
  %i.ac = call noundef i32 @llvm.fshl.i32(i32 %i.ab, i32 %i.ab, i32 1)
  %i.ad = zext i32 %i.ac to i64                   ; 2 uses
  %i.ae = call range(i64 0, -9223372034707292160) i64 @llvm.fshl.i64(i64 range(i64 0, 4294967296) %i.ad, i64 range(i64 0, 4294967296) %i.ad, i64 63)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.af = phi i64 [ %i.q, %bb.b ], [ %i.ae, %bb.c ] ; 2 uses
  %.not = icmp eq i64 %i.af, 0
  br i1 %.not, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.ag = load i64, ptr %i.a, align 8
  store i64 %i.ag, ptr %1, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #4
  ret i64 %i.af
}

; Function Attrs: noredzone nounwind optsize
define hidden void @efi_free(i64 noundef %0, i64 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [3 x i64], align 16               ; 3 uses
  %.not = icmp eq i64 %0, 0
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = add i64 %0, 4095
  %i.c = lshr i64 %i.b, 12                        ; 2 uses
  %i.d = load i8, ptr @efi_is64, align 1, !range !4, !noundef !5
  %i.e = trunc nuw i8 %i.d to i1
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.f = load ptr, ptr @efi_system_table, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 96
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 48
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = tail call win64cc i64 %i.j(i64 noundef %1, i64 noundef %i.c) #5 ; 0 uses
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #4
  %i.l = load ptr, ptr @efi_system_table, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 60
  %i.n = load i32, ptr %i.m, align 4
  %i.o = zext i32 %i.n to i64
  %i.p = inttoptr i64 %i.o to ptr
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 36
  %i.r = load i32, ptr %i.q, align 4
  %i.s = call i64 (i32, ...) @__efi64_thunk(i32 noundef %i.r, i64 noundef %1, i32 noundef 0, i64 noundef %i.c, ptr noundef nonnull %i.a) #5 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #4
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d, %bb.a
  ret void
}

; Function Attrs: noredzone nounwind optsize
define hidden i64 @efi_low_alloc_above(i64 noundef %0, i64 noundef %1, ptr nofree noundef writeonly captures(none) %2, i64 noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [3 x i64], align 16               ; 3 uses
  %i.b = alloca ptr, align 8                      ; 7 uses
  %i.c = alloca i64, align 8                      ; 8 uses
  %i.d = alloca [3 x i64], align 16               ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #4
  store ptr null, ptr %i.b, align 8
  %i.e = call i64 @efi_get_memory_map(ptr noundef nonnull %i.b, i1 noundef zeroext false) #6 ; 3 uses
  %.not = icmp eq i64 %i.e, 0
  %.pre55 = load ptr, ptr %i.b, align 8           ; 6 uses
  br i1 %.not, label %bb.b, label %bb.m

bb.b:                                             ; preds = %bb.a
  %i.f = add i64 %0, 4095                         ; 2 uses
  %i.g = and i64 %i.f, -4096
  %i.h = lshr i64 %i.f, 12                        ; 3 uses
  %4 = load i64, ptr %.pre55, align 8             ; 2 uses
  %5 = getelementptr inbounds nuw i8, ptr %.pre55, i64 8
  %i.i = load i64, ptr %5, align 8                ; 3 uses
  %.not48 = icmp ugt i64 %i.i, %4
  br i1 %.not48, label %.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %spec.store.select = tail call i64 @llvm.umax.i64(i64 %1, i64 4096)
  %i.j = add i64 %spec.store.select, -1
  %i.k = load i8, ptr @efi_is64, align 1, !range !4
  %i.l = trunc nuw i8 %i.k to i1
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.l
  %6 = phi ptr [ %.pre55, %.lr.ph ], [ %9, %bb.l ] ; 5 uses
  %i.m = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.l ] ; 3 uses
  %i.n = phi i64 [ %i.i, %.lr.ph ], [ %12, %bb.l ]
  %7 = getelementptr inbounds nuw i8, ptr %6, i64 40
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #4
  %i.o = mul i64 %i.n, %i.m
  %i.p = getelementptr inbounds nuw i8, ptr %7, i64 %i.o ; 4 uses
  %i.q = load i32, ptr %i.p, align 8
  %.not34 = icmp eq i32 %i.q, 7
  br i1 %.not34, label %bb.d, label %bb.l

bb.d:                                             ; preds = %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 32
  %i.s = load i64, ptr %i.r, align 8
  %i.t = and i64 %i.s, 1048576
  %.not35 = icmp eq i64 %i.t, 0
  br i1 %.not35, label %bb.e, label %bb.l

bb.e:                                             ; preds = %bb.d
  %i.u = getelementptr inbounds nuw i8, ptr %i.p, i64 24 ; 2 uses
  %i.v = load i64, ptr %i.u, align 8
  %i.w = icmp ult i64 %i.v, %i.h
  br i1 %i.w, label %bb.l, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.x = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %8 = load i64, ptr %i.x, align 8                ; 3 uses
  store i64 %8, ptr %i.c, align 8
  %i.y = load i64, ptr %i.u, align 8
  %i.z = shl i64 %i.y, 12
  %i.aa = add i64 %i.z, %8
  %spec.store.select36 = call i64 @llvm.umax.i64(i64 %8, i64 %3)
  %i.ab = add i64 %spec.store.select36, -1
  %i.ac = or i64 %i.ab, %i.j
  %i.ad = add i64 %i.ac, 1                        ; 2 uses
  store i64 %i.ad, ptr %i.c, align 8
  %i.ae = add i64 %i.ad, %i.g
  %i.af = icmp ugt i64 %i.ae, %i.aa
  br i1 %i.af, label %bb.l, label %bb.g

bb.g:                                             ; preds = %bb.f
  br i1 %i.l, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ag = load ptr, ptr @efi_system_table, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 96
  %i.ai = load ptr, ptr %i.ah, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 40
  %i.ak = load ptr, ptr %i.aj, align 8
  %i.al = call win64cc i64 %i.ak(i32 noundef 2, i32 noundef 2, i64 noundef %i.h, ptr noundef nonnull %i.c) #5
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #4
  %i.am = load ptr, ptr @efi_system_table, align 8
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 60
  %i.ao = load i32, ptr %i.an, align 4
  %i.ap = zext i32 %i.ao to i64
  %i.aq = inttoptr i64 %i.ap to ptr
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 32
  %i.as = load i32, ptr %i.ar, align 8
  %i.at = call i64 (i32, ...) @__efi64_thunk(i32 noundef %i.as, i32 noundef 2, i32 noundef 2, i64 noundef %i.h, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #4
  %i.au = trunc i64 %i.at to i32                  ; 2 uses
  %i.av = call noundef i32 @llvm.fshl.i32(i32 %i.au, i32 %i.au, i32 1)
  %i.aw = zext i32 %i.av to i64                   ; 2 uses
  %i.ax = call range(i64 0, -9223372034707292160) i64 @llvm.fshl.i64(i64 range(i64 0, 4294967296) %i.aw, i64 range(i64 0, 4294967296) %i.aw, i64 63)
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.ay = phi i64 [ %i.al, %bb.h ], [ %i.ax, %bb.i ]
  %i.az = icmp eq i64 %i.ay, 0
  br i1 %i.az, label %bb.k, label %._crit_edge

._crit_edge:                                      ; preds = %bb.j
  %.pre = load ptr, ptr %i.b, align 8
  br label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ba = load i64, ptr %i.c, align 8
  store i64 %i.ba, ptr %2, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #4
  %.pre44 = load ptr, ptr %i.b, align 8           ; 3 uses
  %.pre53 = load i64, ptr %.pre44, align 8
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre44, i64 8
  %.pre54 = load i64, ptr %.phi.trans.insert, align 8
  br label %.thread

bb.l:                                             ; preds = %._crit_edge, %bb.c, %bb.f, %bb.d, %bb.e
  %9 = phi ptr [ %.pre, %._crit_edge ], [ %6, %bb.c ], [ %6, %bb.f ], [ %6, %bb.d ], [ %6, %bb.e ] ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #4
  %indvars.iv.next = add nuw nsw i64 %i.m, 1      ; 3 uses
  %10 = load i64, ptr %9, align 8                 ; 2 uses
  %11 = getelementptr inbounds nuw i8, ptr %9, i64 8
  %12 = load i64, ptr %11, align 8                ; 3 uses
  %i.bb = udiv i64 %10, %12
  %i.bc = icmp ugt i64 %i.bb, %indvars.iv.next
  br i1 %i.bc, label %bb.c, label %.thread, !llvm.loop !7

.thread:                                          ; preds = %bb.l, %bb.k, %bb.b
  %i.bd = phi i64 [ %.pre54, %bb.k ], [ %i.i, %bb.b ], [ %12, %bb.l ]
  %i.be = phi i64 [ %.pre53, %bb.k ], [ %4, %bb.b ], [ %10, %bb.l ]
  %13 = phi ptr [ %.pre44, %bb.k ], [ %.pre55, %bb.b ], [ %9, %bb.l ]
  %i.bf = phi i64 [ %i.m, %bb.k ], [ 0, %bb.b ], [ %indvars.iv.next, %bb.l ]
  %i.bg = udiv i64 %i.be, %i.bd
  %i.bh = icmp eq i64 %i.bg, %i.bf
  %. = select i1 %i.bh, i64 -9223372036854775794, i64 0
  br label %bb.n

bb.m:                                             ; preds = %bb.a
  %.not.i = icmp eq ptr %.pre55, null
  br i1 %.not.i, label %__free_efi_pool.exit, label %bb.n

bb.n:                                             ; preds = %.thread, %bb.m
  %.064 = phi i64 [ %., %.thread ], [ %i.e, %bb.m ] ; 2 uses
  %14 = phi ptr [ %13, %.thread ], [ %.pre55, %bb.m ] ; 2 uses
  %i.bi = load i8, ptr @efi_is64, align 1, !range !4, !noundef !5
  %i.bj = trunc nuw i8 %i.bi to i1
  br i1 %i.bj, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.bk = load ptr, ptr @efi_system_table, align 8
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 96
  %i.bm = load ptr, ptr %i.bl, align 8
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 72
  %i.bo = load ptr, ptr %i.bn, align 8
  %i.bp = call win64cc i64 %i.bo(ptr noundef nonnull %14) #5, !inline_history !6 ; 0 uses
  br label %__free_efi_pool.exit

bb.p:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #4
  %i.bq = load ptr, ptr @efi_system_table, align 8
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 60
  %i.bs = load i32, ptr %i.br, align 4
  %i.bt = zext i32 %i.bs to i64
  %i.bu = inttoptr i64 %i.bt to ptr
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 48
  %i.bw = load i32, ptr %i.bv, align 8
  %i.bx = call i64 (i32, ...) @__efi64_thunk(i32 noundef %i.bw, ptr noundef nonnull %14, ptr noundef nonnull %i.a) #5 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #4
  br label %__free_efi_pool.exit

__free_efi_pool.exit:                             ; preds = %bb.m, %bb.o, %bb.p
  %.065 = phi i64 [ %i.e, %bb.m ], [ %.064, %bb.o ], [ %.064, %bb.p ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #4
  ret i64 %.065
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.fshl.i64(i64, i64, i64) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.fshl.i32(i32, i32, i32) #3

attributes #0 = { noredzone nounwind optsize "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+x87,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { noredzone optsize "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+x87,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-xop" "tune-cpu"="generic" }
attributes #3 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { nounwind }
attributes #5 = { nobuiltin noredzone nounwind optsize "no-builtins" }
attributes #6 = { nobuiltin noredzone optsize "no-builtins" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 2}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 1, !"Code Model", i32 1}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!4 = !{i8 0, i8 2}
!5 = !{}
!6 = distinct !{null}
!7 = distinct !{!7, !8}
!8 = !{!"llvm.loop.mustprogress"}
end_hunk_0
