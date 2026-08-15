inline.NumInlined: 49
inline.NumDeleted: 6
begin_hunk_0_@efi_get_memory_map:bb.a
  %i.cr = getelementptr inbounds nuw i8, ptr %i.ci, i64 8
  %i.cs = getelementptr inbounds nuw i8, ptr %i.ci, i64 16
  %i.ct = call win64cc i64 %i.co(ptr noundef nonnull %i.ci, ptr noundef nonnull %i.cp, ptr noundef nonnull %i.cq, ptr noundef nonnull %i.cr, ptr noundef nonnull %i.cs) #5
  br label %bb.n

bb.m:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #4
  %i.cu = load ptr, ptr @efi_system_table, align 8
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 60
  %i.cw = load i32, ptr %i.cv, align 4
  %i.cx = zext i32 %i.cw to i64
  %i.cy = inttoptr i64 %i.cx to ptr
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 40
  %i.da = load i32, ptr %i.cz, align 8
  %i.db = getelementptr inbounds nuw i8, ptr %i.ci, i64 40
  %i.dc = getelementptr inbounds nuw i8, ptr %i.ci, i64 24
  %i.dd = getelementptr inbounds nuw i8, ptr %i.ci, i64 28
  store i32 0, ptr %i.dd, align 4
  %i.de = getelementptr inbounds nuw i8, ptr %i.ci, i64 8
  %i.df = getelementptr inbounds nuw i8, ptr %i.ci, i64 12
  store i32 0, ptr %i.df, align 4
  %i.dg = getelementptr inbounds nuw i8, ptr %i.ci, i64 16
  %i.dh = call i64 (i32, ...) @__efi64_thunk(i32 noundef %i.da, ptr noundef nonnull %i.ci, ptr noundef nonnull %i.db, ptr noundef nonnull %i.dc, ptr noundef nonnull %i.de, ptr noundef nonnull %i.dg, ptr noundef nonnull %i.f) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #4
  %i.di = trunc i64 %i.dh to i32                  ; 2 uses
  %i.dj = call noundef i32 @llvm.fshl.i32(i32 %i.di, i32 %i.di, i32 1)
  %i.dk = zext i32 %i.dj to i64                   ; 2 uses
  %i.dl = call range(i64 0, -9223372034707292160) i64 @llvm.fshl.i64(i64 range(i64 0, 4294967296) %i.dk, i64 range(i64 0, 4294967296) %i.dk, i64 63)
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.dm = phi i64 [ %i.ct, %bb.l ], [ %i.dl, %bb.m ] ; 5 uses
  %.not30 = icmp eq i64 %i.dm, 0
  br i1 %.not30, label %.thread38, label %bb.o

bb.o:                                             ; preds = %bb.n
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
  %i.b = alloca ptr, align 8                      ; 5 uses
  %i.c = alloca i64, align 8                      ; 7 uses
  %i.d = alloca [3 x i64], align 16               ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #4
  store ptr null, ptr %i.b, align 8
  %i.e = call i64 @efi_get_memory_map(ptr noundef nonnull %i.b, i1 noundef zeroext false) #6 ; 3 uses
  %.not = icmp eq i64 %i.e, 0
  %.pre55 = load ptr, ptr %i.b, align 8           ; 8 uses
  br i1 %.not, label %bb.b, label %bb.m

bb.b:                                             ; preds = %bb.a
  %i.f = add i64 %0, 4095                         ; 2 uses
  %4 = and i64 %i.f, -4096
  %i.g = lshr i64 %i.f, 12                        ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.pre55, i64 8 ; 3 uses
  %i.i = load i64, ptr %.pre55, align 8           ; 3 uses
  %i.j = load i64, ptr %i.h, align 8              ; 3 uses
  %.not48 = icmp ugt i64 %i.j, %i.i
  br i1 %.not48, label %.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %spec.store.select = tail call i64 @llvm.umax.i64(i64 %1, i64 4096)
  %i.k = getelementptr inbounds nuw i8, ptr %.pre55, i64 40
  %i.l = add i64 %spec.store.select, -1
  %i.m = load i8, ptr @efi_is64, align 1, !range !4
  %i.n = trunc nuw i8 %i.m to i1
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.l
  %i.o = phi i64 [ %i.j, %.lr.ph ], [ %i.bd, %bb.l ] ; 5 uses
  %i.p = phi i64 [ %i.i, %.lr.ph ], [ %i.be, %bb.l ] ; 4 uses
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.l ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #4
  %i.q = mul i64 %i.o, %indvars.iv
  %i.r = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.q ; 4 uses
  %i.s = load i32, ptr %i.r, align 8
  %.not34 = icmp eq i32 %i.s, 7
  br i1 %.not34, label %bb.d, label %bb.l

bb.d:                                             ; preds = %bb.c
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 32
  %i.u = load i64, ptr %i.t, align 8
  %i.v = and i64 %i.u, 1048576
  %.not35 = icmp eq i64 %i.v, 0
  br i1 %.not35, label %bb.e, label %bb.l

bb.e:                                             ; preds = %bb.d
  %i.w = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  %i.x = load i64, ptr %i.w, align 8              ; 2 uses
  %i.y = icmp ult i64 %i.x, %i.g
  br i1 %i.y, label %bb.l, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.z = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.aa = load i64, ptr %i.z, align 8             ; 2 uses
  %i.ab = shl i64 %i.x, 12
  %i.ac = add i64 %i.ab, %i.aa
  %spec.store.select36 = call i64 @llvm.umax.i64(i64 %i.aa, i64 %3)
  %i.ad = add i64 %spec.store.select36, -1
  %i.ae = or i64 %i.ad, %i.l
  %i.af = add i64 %i.ae, 1                        ; 2 uses
  store i64 %i.af, ptr %i.c, align 8
  %i.ag = add i64 %i.af, %4
  %i.ah = icmp ugt i64 %i.ag, %i.ac
  br i1 %i.ah, label %bb.l, label %bb.g

bb.g:                                             ; preds = %bb.f
  br i1 %i.n, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ai = load ptr, ptr @efi_system_table, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 96
  %i.ak = load ptr, ptr %i.aj, align 8
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 40
  %i.am = load ptr, ptr %i.al, align 8
  %i.an = call win64cc i64 %i.am(i32 noundef 2, i32 noundef 2, i64 noundef %i.g, ptr noundef nonnull %i.c) #5
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #4
  %i.ao = load ptr, ptr @efi_system_table, align 8
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 60
  %i.aq = load i32, ptr %i.ap, align 4
  %i.ar = zext i32 %i.aq to i64
  %i.as = inttoptr i64 %i.ar to ptr
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 32
  %i.au = load i32, ptr %i.at, align 8
  %i.av = call i64 (i32, ...) @__efi64_thunk(i32 noundef %i.au, i32 noundef 2, i32 noundef 2, i64 noundef %i.g, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #4
  %i.aw = trunc i64 %i.av to i32                  ; 2 uses
  %i.ax = call noundef i32 @llvm.fshl.i32(i32 %i.aw, i32 %i.aw, i32 1)
  %i.ay = zext i32 %i.ax to i64                   ; 2 uses
  %i.az = call range(i64 0, -9223372034707292160) i64 @llvm.fshl.i64(i64 range(i64 0, 4294967296) %i.ay, i64 range(i64 0, 4294967296) %i.ay, i64 63)
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.ba = phi i64 [ %i.an, %bb.h ], [ %i.az, %bb.i ]
  %i.bb = icmp eq i64 %i.ba, 0
  br i1 %i.bb, label %bb.k, label %._crit_edge

._crit_edge:                                      ; preds = %bb.j
  %.pre = load i64, ptr %.pre55, align 8
  %.pre52 = load i64, ptr %i.h, align 8
  br label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.bc = load i64, ptr %i.c, align 8
  store i64 %i.bc, ptr %2, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #4
  %.pre53 = load i64, ptr %.pre55, align 8
  %.pre54 = load i64, ptr %i.h, align 8
  br label %.thread

bb.l:                                             ; preds = %._crit_edge, %bb.c, %bb.f, %bb.d, %bb.e
  %i.bd = phi i64 [ %.pre52, %._crit_edge ], [ %i.o, %bb.c ], [ %i.o, %bb.f ], [ %i.o, %bb.d ], [ %i.o, %bb.e ] ; 3 uses
  %i.be = phi i64 [ %.pre, %._crit_edge ], [ %i.p, %bb.c ], [ %i.p, %bb.f ], [ %i.p, %bb.d ], [ %i.p, %bb.e ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %i.bf = udiv i64 %i.be, %i.bd
  %i.bg = icmp ugt i64 %i.bf, %indvars.iv.next
  br i1 %i.bg, label %bb.c, label %.thread, !llvm.loop !7

.thread:                                          ; preds = %bb.l, %bb.k, %bb.b
  %i.bh = phi i64 [ %.pre54, %bb.k ], [ %i.j, %bb.b ], [ %i.bd, %bb.l ]
  %i.bi = phi i64 [ %.pre53, %bb.k ], [ %i.i, %bb.b ], [ %i.be, %bb.l ]
  %i.bj = phi i64 [ %indvars.iv, %bb.k ], [ 0, %bb.b ], [ %indvars.iv.next, %bb.l ]
  %i.bk = udiv i64 %i.bi, %i.bh
  %i.bl = icmp eq i64 %i.bk, %i.bj
  %. = select i1 %i.bl, i64 -9223372036854775794, i64 0
  br label %bb.n

bb.m:                                             ; preds = %bb.a
  %.not.i = icmp eq ptr %.pre55, null
  br i1 %.not.i, label %__free_efi_pool.exit, label %bb.n

bb.n:                                             ; preds = %.thread, %bb.m
  %.064 = phi i64 [ %., %.thread ], [ %i.e, %bb.m ] ; 2 uses
  %i.bm = load i8, ptr @efi_is64, align 1, !range !4, !noundef !5
  %i.bn = trunc nuw i8 %i.bm to i1
  br i1 %i.bn, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.bo = load ptr, ptr @efi_system_table, align 8
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 96
  %i.bq = load ptr, ptr %i.bp, align 8
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 72
  %i.bs = load ptr, ptr %i.br, align 8
  %i.bt = call win64cc i64 %i.bs(ptr noundef nonnull %.pre55) #5, !inline_history !6 ; 0 uses
  br label %__free_efi_pool.exit

bb.p:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #4
  %i.bu = load ptr, ptr @efi_system_table, align 8
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 60
  %i.bw = load i32, ptr %i.bv, align 4
  %i.bx = zext i32 %i.bw to i64
  %i.by = inttoptr i64 %i.bx to ptr
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 48
  %i.ca = load i32, ptr %i.bz, align 8
  %i.cb = call i64 (i32, ...) @__efi64_thunk(i32 noundef %i.ca, ptr noundef nonnull %.pre55, ptr noundef nonnull %i.a) #5 ; 0 uses
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
