Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/linux/original/efi-stub-helper?download=true
inline.NumInlined: 130
inline.NumDeleted: 12
begin_hunk_0_@efi_parse_options:bb.a
  %i.cc = call i32 @strncmp(ptr noundef nonnull %i.bz, ptr noundef nonnull @.str.15, i64 noundef %i.cb) #6
  %i.cd = icmp eq i32 %i.cc, 0
  br i1 %i.cd, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.ce = load ptr, ptr %i.e, align 8
  %i.cf = call i64 @strlen(ptr noundef nonnull @.str.15) #6
  %i.cg = getelementptr inbounds nuw i8, ptr %i.ce, i64 %i.cf
  call void @efi_parse_option_graphics(ptr noundef %i.cg) #6
  br label %bb.ae

bb.ae:                                            ; preds = %bb.i, %bb.m, %bb.s, %bb.t, %bb.r, %bb.ab, %bb.ac, %bb.ad, %bb.z, %bb.aa, %bb.o, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #5
  %i.ch = load i8, ptr %i.ak, align 1
  %.not26 = icmp eq i8 %i.ch, 0
  br i1 %.not26, label %.loopexit, label %.lr.ph

.loopexit:                                        ; preds = %bb.ae, %bb.f, %.thread, %bb.e
  %.0.ph = phi i64 [ %i.ac, %bb.e ], [ 0, %.thread ], [ 0, %bb.f ], [ 0, %bb.ae ] ; 3 uses
  %.pr = load ptr, ptr %i.b, align 8              ; 3 uses
  %.not.i = icmp eq ptr %.pr, null
  br i1 %.not.i, label %__free_efi_pool.exit, label %bb.af

bb.af:                                            ; preds = %.loopexit
  br i1 %i.i, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.ci = load ptr, ptr @efi_system_table, align 8
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 96
  %i.ck = load ptr, ptr %i.cj, align 8
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 72
  %i.cm = load ptr, ptr %i.cl, align 8
  %i.cn = call win64cc i64 %i.cm(ptr noundef nonnull %.pr) #6, !inline_history !6 ; 0 uses
  br label %__free_efi_pool.exit

bb.ah:                                            ; preds = %bb.af
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #5
  %i.co = load ptr, ptr @efi_system_table, align 8
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 60
  %i.cq = load i32, ptr %i.cp, align 4
  %i.cr = zext i32 %i.cq to i64
  %i.cs = inttoptr i64 %i.cr to ptr
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 48
  %i.cu = load i32, ptr %i.ct, align 8
  %i.cv = call i64 (i32, ...) @__efi64_thunk(i32 noundef %i.cu, ptr noundef nonnull %.pr, ptr noundef nonnull %i.a) #6 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  br label %__free_efi_pool.exit

__free_efi_pool.exit:                             ; preds = %bb.a, %.loopexit, %bb.ag, %bb.ah
  %.038 = phi i64 [ %.0.ph, %bb.ah ], [ %.0.ph, %.loopexit ], [ %.0.ph, %bb.ag ], [ 0, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #5
  ret i64 %.038
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

; Function Attrs: noredzone optsize
declare hidden i64 @strnlen(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: noredzone optsize
declare hidden i64 @__efi64_thunk(i32 noundef, ...) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: noredzone optsize
declare hidden ptr @memcpy(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: noredzone optsize
declare hidden ptr @skip_spaces(ptr noundef) local_unnamed_addr #3

; Function Attrs: noredzone optsize
declare hidden ptr @next_arg(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noredzone optsize
declare hidden i32 @strcmp(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noredzone optsize
declare hidden zeroext i1 @parse_option_str(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noredzone optsize
declare hidden void @efi_parse_option_graphics(ptr noundef) local_unnamed_addr #3

; Function Attrs: noredzone optsize
declare hidden i64 @strlen(ptr noundef) local_unnamed_addr #3

; Function Attrs: noredzone nounwind optsize
define hidden void @efi_apply_loadoptions_quirk(ptr nofree noundef captures(none) %0, ptr nofree noundef captures(none) %1) local_unnamed_addr #1 {
bb.a:
  %i.a = load ptr, ptr %0, align 8                ; 4 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %efi_load_option_unpack.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load i32, ptr %1, align 4                ; 2 uses
  %i.c = zext i32 %i.b to i64
  %i.d = icmp ult i32 %i.b, 6
  br i1 %i.d, label %efi_load_option_unpack.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = load i32, ptr %i.a, align 1
  %i.f = and i32 %i.e, -7946
  %.not11 = icmp eq i32 %i.f, 0
  br i1 %.not11, label %bb.d, label %efi_load_option_unpack.exit.thread

bb.d:                                             ; preds = %bb.c
  %i.g = add nsw i64 %i.c, -6                     ; 2 uses
  %i.h = icmp ult i64 %i.g, 2
  br i1 %i.h, label %efi_load_option_unpack.exit.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.d
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 6
  br label %bb.f

bb.e:                                             ; preds = %bb.f
  %i.j = icmp ult i64 %i.m, 2
  br i1 %i.j, label %efi_load_option_unpack.exit.thread, label %bb.f, !llvm.loop !7

bb.f:                                             ; preds = %.lr.ph, %bb.e
  %.0.i36 = phi ptr [ %i.i, %.lr.ph ], [ %i.l, %bb.e ] ; 2 uses
  %.043.i35 = phi i64 [ %i.g, %.lr.ph ], [ %i.m, %bb.e ]
  %i.k = load i16, ptr %.0.i36, align 2
  %i.l = getelementptr inbounds nuw i8, ptr %.0.i36, i64 2 ; 3 uses
  %i.m = add nsw i64 %.043.i35, -2                ; 3 uses
  %.not49.i = icmp eq i16 %i.k, 0
  br i1 %.not49.i, label %.critedge.i, label %bb.e, !llvm.loop !7

.critedge.i:                                      ; preds = %bb.f, %bb.h
  %.144.i = phi i64 [ %i.s, %bb.h ], [ %i.m, %bb.f ] ; 3 uses
  %.1.i = phi ptr [ %i.r, %bb.h ], [ %i.l, %bb.f ] ; 4 uses
  %i.n = icmp ult i64 %.144.i, 4
  br i1 %i.n, label %efi_load_option_unpack.exit.thread, label %bb.g

bb.g:                                             ; preds = %.critedge.i
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.1.i, i64 2
  %.sroa.6.0.copyload.i = load i16, ptr %.sroa.6.0..sroa_idx.i, align 1 ; 2 uses
  %i.o = zext i16 %.sroa.6.0.copyload.i to i64    ; 3 uses
  %i.p = icmp ult i16 %.sroa.6.0.copyload.i, 4
  %i.q = icmp ult i64 %.144.i, %i.o
  %or.cond52.i = or i1 %i.p, %i.q
  br i1 %or.cond52.i, label %efi_load_option_unpack.exit.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.1.i, i64 1
  %.sroa.5.0.copyload.i = load i8, ptr %.sroa.5.0..sroa_idx.i, align 1
  %.sroa.0.0.copyload.i = load i8, ptr %.1.i, align 1
  %i.r = getelementptr inbounds nuw i8, ptr %.1.i, i64 %i.o ; 3 uses
  %i.s = sub nuw nsw i64 %.144.i, %i.o            ; 3 uses
  %i.t = and i8 %.sroa.0.0.copyload.i, 127
  %or.cond.i = icmp ne i8 %i.t, 127
  %i.u = icmp ne i8 %.sroa.5.0.copyload.i, -1
  %or.cond7.i = select i1 %or.cond.i, i1 true, i1 %i.u
  br i1 %or.cond7.i, label %.critedge.i, label %bb.i, !llvm.loop !9

bb.i:                                             ; preds = %bb.h
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.w = load i16, ptr %i.v, align 1
  %i.x = zext i16 %i.w to i64
  %i.y = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.x
  %.not50.i = icmp eq ptr %i.r, %i.y
  br i1 %.not50.i, label %bb.j, label %efi_load_option_unpack.exit.thread

bb.j:                                             ; preds = %bb.i
  %i.z = trunc nuw i64 %i.s to i32
  %.not51.i = icmp eq i64 %i.s, 0
  %i.aa = select i1 %.not51.i, ptr null, ptr %i.r
  %.b = load i1, ptr @efi_apply_loadoptions_quirk.__print_once, align 1
  br i1 %.b, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  store i1 true, ptr @efi_apply_loadoptions_quirk.__print_once, align 1
  %i.ab = tail call i32 (ptr, ...) @efi_printk(ptr noundef nonnull @.str.16) #6 ; 0 uses
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.b10 = load i1, ptr @efi_apply_loadoptions_quirk.__print_once.17, align 1
  br i1 %.b10, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  store i1 true, ptr @efi_apply_loadoptions_quirk.__print_once.17, align 1
  %i.ac = tail call i32 (ptr, ...) @efi_printk(ptr noundef nonnull @.str.18) #6 ; 0 uses
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  store ptr %i.aa, ptr %0, align 8
  store i32 %i.z, ptr %1, align 4
  br label %efi_load_option_unpack.exit.thread

efi_load_option_unpack.exit.thread:               ; preds = %bb.e, %.critedge.i, %bb.g, %bb.d, %bb.i, %bb.c, %bb.b, %bb.a, %bb.n
  ret void
}

; Function Attrs: noredzone optsize
declare hidden i32 @efi_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: noredzone nounwind optsize
define hidden ptr @efi_convert_cmdline(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #1 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %i.c = alloca i64, align 8                      ; 8 uses
  %i.d = alloca [3 x i64], align 16               ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #5
  %i.e = load i8, ptr @efi_is64, align 1, !range !4, !noundef !5
  %i.f = trunc nuw i8 %i.e to i1                  ; 2 uses
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.h = load ptr, ptr %i.g, align 8
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.j = load i32, ptr %i.i, align 4
  %i.k = zext i32 %i.j to i64
  %i.l = inttoptr i64 %i.k to ptr
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.in.v = phi i64 [ 48, %bb.b ], [ 24, %bb.c ]
  %i.m = phi ptr [ %i.h, %bb.b ], [ %i.l, %bb.c ] ; 2 uses
  store ptr %i.m, ptr %i.a, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #5
  %.in = getelementptr inbounds nuw i8, ptr %0, i64 %.in.v
  %i.n = load i32, ptr %.in, align 8              ; 3 uses
  store i32 %i.n, ptr %i.b, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #5
  store i64 0, ptr %i.c, align 8
  %.not = icmp eq i32 %i.n, 0
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = ptrtoint ptr %i.m to i64
  %i.p = zext i32 %i.n to i64
  %i.q = tail call fastcc i64 @efi_measure_tagged_event(i64 noundef %i.o, i64 noundef %i.p, i32 noundef 1) #7 ; 0 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  call void @efi_apply_loadoptions_quirk(ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) #7
  %i.r = load ptr, ptr %i.a, align 8              ; 3 uses
  %.not59 = icmp eq ptr %i.r, null
  br i1 %.not59, label %.critedge.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.s = load i32, ptr %i.b, align 4
  %i.t = lshr i32 %i.s, 1
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.t
  %.03976 = phi i32 [ %i.t, %bb.g ], [ %.2, %bb.t ] ; 3 uses
  %.04075 = phi i1 [ false, %bb.g ], [ %.242, %bb.t ] ; 6 uses
  %.04374 = phi ptr [ %i.r, %bb.g ], [ %.245, %bb.t ] ; 3 uses
  %.04673 = phi i32 [ 0, %bb.g ], [ %.248, %bb.t ] ; 7 uses
  %.04972 = phi i32 [ 0, %bb.g ], [ %.251, %bb.t ] ; 6 uses
  %i.u = add i32 %.03976, -1                      ; 4 uses
  %.not60 = icmp eq i32 %.03976, 0
  br i1 %.not60, label %.critedge.thread, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.v = getelementptr inbounds nuw i8, ptr %.04374, i64 2 ; 5 uses
  %i.w = load i16, ptr %.04374, align 2           ; 5 uses
  %i.x = icmp ult i16 %i.w, 128
  br i1 %i.x, label %bb.j, label %bb.o

bb.j:                                             ; preds = %bb.i
  switch i16 %i.w, label %bb.l [
    i16 10, label %.critedge.thread
    i16 0, label %.critedge.thread
    i16 34, label %bb.k
  ]

bb.k:                                             ; preds = %bb.j
  %i.y = xor i1 %.04075, true
  br label %bb.n

bb.l:                                             ; preds = %bb.j
  br i1 %.04075, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.z = zext nneg i16 %i.w to i64
  %i.aa = getelementptr inbounds nuw i8, ptr @_ctype, i64 %i.z
  %i.ab = load i8, ptr %i.aa, align 1
  %i.ac = and i8 %i.ab, 32
  %.not62 = icmp eq i8 %i.ac, 0
  %spec.select = select i1 %.not62, i32 %.04673, i32 %.04972
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l, %bb.k
  %.147 = phi i32 [ %.04673, %bb.k ], [ %.04673, %bb.l ], [ %spec.select, %bb.m ]
  %.141 = phi i1 [ %i.y, %bb.k ], [ true, %bb.l ], [ false, %bb.m ]
  %i.ad = add nsw i32 %.04972, 1
  br label %bb.t, !llvm.loop !10

bb.o:                                             ; preds = %bb.i
  %i.ae = icmp ugt i16 %i.w, 2047
  %i.af = select i1 %i.ae, i32 3, i32 2
  %i.ag = add nsw i32 %i.af, %.04972              ; 4 uses
  %i.ah = and i16 %i.w, -1024
  %i.ai = icmp eq i16 %i.ah, -10240
  br i1 %i.ai, label %bb.p, label %bb.t

bb.p:                                             ; preds = %bb.o
  %.not61 = icmp eq i32 %i.u, 0
  br i1 %.not61, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.aj = add nsw i32 %i.ag, -3
  br label %bb.t

bb.r:                                             ; preds = %bb.p
  %i.ak = load i16, ptr %i.v, align 2
  %i.al = and i16 %i.ak, -1024
  %i.am = icmp eq i16 %i.al, -9216
  br i1 %i.am, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.an = add nsw i32 %i.ag, 1
  %i.ao = add i32 %.03976, -2
  %i.ap = getelementptr inbounds nuw i8, ptr %.04374, i64 4
  br label %bb.t

bb.t:                                             ; preds = %bb.o, %bb.r, %bb.s, %bb.q, %bb.n
  %.251 = phi i32 [ %i.aj, %bb.q ], [ %i.ad, %bb.n ], [ %i.ag, %bb.o ], [ %i.an, %bb.s ], [ %i.ag, %bb.r ] ; 2 uses
  %.248 = phi i32 [ %.04673, %bb.q ], [ %.147, %bb.n ], [ %.04673, %bb.o ], [ %.04673, %bb.s ], [ %.04673, %bb.r ] ; 3 uses
  %.245 = phi ptr [ %i.v, %bb.q ], [ %i.v, %bb.n ], [ %i.v, %bb.o ], [ %i.ap, %bb.s ], [ %i.v, %bb.r ]
  %.242 = phi i1 [ %.04075, %bb.q ], [ %.141, %bb.n ], [ %.04075, %bb.o ], [ %.04075, %bb.s ], [ %.04075, %bb.r ]
  %.2 = phi i32 [ 0, %bb.q ], [ %i.u, %bb.n ], [ %i.u, %bb.o ], [ %i.ao, %bb.s ], [ %i.u, %bb.r ]
  %i.aq = icmp slt i32 %.251, 2048
  br i1 %i.aq, label %bb.h, label %.critedge

.critedge:                                        ; preds = %bb.t
  %i.ar = tail call i32 (ptr, ...) @efi_printk(ptr noundef nonnull @.str.19, i32 noundef %.248) #6 ; 0 uses
  br label %.critedge.thread

.critedge.thread:                                 ; preds = %bb.j, %bb.j, %bb.h, %.critedge, %bb.f
  %.4 = phi i32 [ %.248, %.critedge ], [ 0, %bb.f ], [ %.04972, %bb.h ], [ %.04972, %bb.j ], [ %.04972, %bb.j ] ; 2 uses
  %i.as = add nsw i32 %.4, 1                      ; 3 uses
  br i1 %i.f, label %bb.u, label %bb.v

bb.u:                                             ; preds = %.critedge.thread
  %i.at = load ptr, ptr @efi_system_table, align 8
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 96
  %i.av = load ptr, ptr %i.au, align 8
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 64
  %i.ax = load ptr, ptr %i.aw, align 8
  %i.ay = sext i32 %i.as to i64
  %i.az = call win64cc i64 %i.ax(i32 noundef 2, i64 noundef %i.ay, ptr noundef nonnull %i.c) #6
  br label %bb.w

bb.v:                                             ; preds = %.critedge.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #5
  %i.ba = load ptr, ptr @efi_system_table, align 8
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 60
  %i.bc = load i32, ptr %i.bb, align 4
  %i.bd = zext i32 %i.bc to i64
  %i.be = inttoptr i64 %i.bd to ptr
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 44
  %i.bg = load i32, ptr %i.bf, align 4
  %i.bh = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  store i32 0, ptr %i.bh, align 4
  %i.bi = call i64 (i32, ...) @__efi64_thunk(i32 noundef %i.bg, i32 noundef 2, i32 noundef %i.as, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #5
  %i.bj = trunc i64 %i.bi to i32                  ; 2 uses
  %i.bk = call noundef i32 @llvm.fshl.i32(i32 %i.bj, i32 %i.bj, i32 1)
  %i.bl = zext i32 %i.bk to i64                   ; 2 uses
  %i.bm = call range(i64 0, -9223372034707292160) i64 @llvm.fshl.i64(i64 range(i64 0, 4294967296) %i.bl, i64 range(i64 0, 4294967296) %i.bl, i64 63)
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %i.bn = phi i64 [ %i.az, %bb.u ], [ %i.bm, %bb.v ]
  %.not63 = icmp eq i64 %i.bn, 0
  br i1 %.not63, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.bo = load i64, ptr %i.c, align 8
  %i.bp = inttoptr i64 %i.bo to ptr
  %i.bq = sext i32 %i.as to i64
  %i.br = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %i.bp, i64 noundef %i.bq, ptr noundef nonnull @.str.20, i32 noundef %.4, ptr noundef %i.r) #6 ; 0 uses
  %i.bs = load i64, ptr %i.c, align 8
  %i.bt = inttoptr i64 %i.bs to ptr
  br label %bb.y

bb.y:                                             ; preds = %bb.w, %bb.x
  %.0 = phi ptr [ %i.bt, %bb.x ], [ null, %bb.w ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  ret ptr %.0
}

; Function Attrs: noredzone nounwind optsize
define internal fastcc noundef i64 @efi_measure_tagged_event(i64 noundef %0, i64 noundef range(i64 1, 0) %1, i32 noundef range(i32 0, 2) %2) unnamed_addr #1 {
bb.a:
  %i.a = alloca [3 x i64], align 16               ; 3 uses
  %i.b = alloca ptr, align 8                      ; 10 uses
  %3 = alloca %struct.guid_t, align 4             ; 5 uses
  %i.c = alloca ptr, align 8                      ; 8 uses
  %4 = alloca %union.efistub_event, align 4       ; 18 uses
  %i.d = alloca [3 x i64], align 16               ; 3 uses
  %5 = alloca %struct.guid_t, align 4             ; 10 uses
  %i.e = alloca ptr, align 8                      ; 14 uses
  %i.f = alloca [3 x i64], align 16               ; 3 uses
  %i.g = alloca [3 x i64], align 16               ; 3 uses
  %i.h = alloca [3 x i64], align 16               ; 3 uses
  %i.i = alloca [3 x i64], align 16               ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #5
  store ptr null, ptr %i.b, align 8
  %i.j = zext nneg i32 %2 to i64
  %i.k = getelementptr inbounds nuw [64 x i8], ptr @events, i64 %i.j ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.m = load i32, ptr %i.l, align 8              ; 2 uses
  %i.n = zext i32 %i.m to i64                     ; 2 uses
  %i.o = add nuw nsw i64 %i.n, 26                 ; 2 uses
  %i.p = trunc i64 %i.o to i32                    ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #5
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %3, ptr noundef nonnull align 4 dereferenceable(16) @__const.efi_measure_tagged_event.tcg2_guid, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #5
  store ptr null, ptr %i.c, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #5
  %i.q = load i8, ptr @efi_is64, align 1, !range !4, !noundef !5
  %i.r = trunc nuw i8 %i.q to i1                  ; 4 uses
  br i1 %i.r, label %bb.b, label %.thread

bb.b:                                             ; preds = %bb.a
  %i.s = load ptr, ptr @efi_system_table, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 96
  %i.u = load ptr, ptr %i.t, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 320
  %i.w = load ptr, ptr %i.v, align 8
  %i.x = call win64cc i64 %i.w(ptr noundef nonnull %3, ptr noundef null, ptr noundef nonnull %i.c) #6 ; 0 uses
  %i.y = load ptr, ptr %i.c, align 8              ; 3 uses
  %.not = icmp eq ptr %i.y, null
  br i1 %.not, label %bb.c, label %.thread74

.thread:                                          ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #5
  %i.z = load ptr, ptr @efi_system_table, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 60
  %i.ab = load i32, ptr %i.aa, align 4
  %i.ac = zext i32 %i.ab to i64
  %i.ad = inttoptr i64 %i.ac to ptr
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 172
  %i.af = load i32, ptr %i.ae, align 4
  %i.ag = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  store i32 0, ptr %i.ag, align 4
  %i.ah = call i64 (i32, ...) @__efi64_thunk(i32 noundef %i.af, ptr noundef nonnull %3, ptr noundef null, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d) #6 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #5
  %i.ai = load ptr, ptr %i.c, align 8             ; 3 uses
  %.not58 = icmp eq ptr %i.ai, null
  br i1 %.not58, label %bb.d, label %.thread81

.thread74:                                        ; preds = %bb.b
  store i32 %i.p, ptr %4, align 4
  %.sroa.213.0..sroa_idx90 = getelementptr inbounds nuw i8, ptr %4, i64 4
  store i32 14, ptr %.sroa.213.0..sroa_idx90, align 4
  %.sroa.314.0..sroa_idx91 = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i16 1, ptr %.sroa.314.0..sroa_idx91, align 4
  %.sroa.415.0..sroa_idx92 = getelementptr inbounds nuw i8, ptr %4, i64 10
  store i32 9, ptr %.sroa.415.0..sroa_idx92, align 2
  %.sroa.516.0..sroa_idx93 = getelementptr inbounds nuw i8, ptr %4, i64 14
  store i32 6, ptr %.sroa.516.0..sroa_idx93, align 2
  %i.aj = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %i.ak = load ptr, ptr %i.aj, align 8
  br label %bb.j

.thread81:                                        ; preds = %.thread
  store i32 %i.p, ptr %4, align 4
  %.sroa.213.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 4
  store i32 14, ptr %.sroa.213.0..sroa_idx, align 4
  %.sroa.314.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i16 1, ptr %.sroa.314.0..sroa_idx, align 4
  %.sroa.415.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 10
  store i32 9, ptr %.sroa.415.0..sroa_idx, align 2
  %.sroa.516.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 14
  store i32 6, ptr %.sroa.516.0..sroa_idx, align 2
  %i.al = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %i.am = load i32, ptr %i.al, align 8
  br label %bb.k

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #5
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %5, ptr noundef nonnull align 4 dereferenceable(16) @__const.efi_measure_tagged_event.cc_guid, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #5
  store ptr null, ptr %i.e, align 8
  %i.an = load ptr, ptr @efi_system_table, align 8
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 96
  %i.ap = load ptr, ptr %i.ao, align 8
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 320
  %i.ar = load ptr, ptr %i.aq, align 8
  %i.as = call win64cc i64 %i.ar(ptr noundef nonnull %5, ptr noundef null, ptr noundef nonnull %i.e) #6 ; 0 uses
  br label %bb.e

bb.d:                                             ; preds = %.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #5
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %5, ptr noundef nonnull align 4 dereferenceable(16) @__const.efi_measure_tagged_event.cc_guid, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #5
  store ptr null, ptr %i.e, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #5
  %i.at = load ptr, ptr @efi_system_table, align 8
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 60
  %i.av = load i32, ptr %i.au, align 4
  %i.aw = zext i32 %i.av to i64
  %i.ax = inttoptr i64 %i.aw to ptr
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 172
  %i.az = load i32, ptr %i.ay, align 4
  %i.ba = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  store i32 0, ptr %i.ba, align 4
  %i.bb = call i64 (i32, ...) @__efi64_thunk(i32 noundef %i.az, ptr noundef nonnull %5, ptr noundef null, ptr noundef nonnull %i.e, ptr noundef nonnull %i.f) #6 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #5
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.bc = load ptr, ptr %i.e, align 8             ; 5 uses
  %.not52 = icmp eq ptr %i.bc, null
  br i1 %.not52, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  store i32 %i.p, ptr %4, align 4
  %.sroa.28.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 4
  store i32 14, ptr %.sroa.28.0..sroa_idx, align 4
  %.sroa.39.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i16 1, ptr %.sroa.39.0..sroa_idx, align 4
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 10 ; 3 uses
  store i32 0, ptr %.sroa.4.0..sroa_idx, align 2
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 14
  store i32 6, ptr %.sroa.5.0..sroa_idx, align 2
  br i1 %i.r, label %bb.g, label %.thread60

bb.g:                                             ; preds = %bb.f
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 24
  %i.be = load ptr, ptr %i.bd, align 8
  %i.bf = call win64cc i64 %i.be(ptr noundef nonnull %i.bc, i32 noundef 9, ptr noundef nonnull %.sroa.4.0..sroa_idx) #6 ; 2 uses
  %.not53 = icmp eq i64 %i.bf, 0
  br i1 %.not53, label %.thread86, label %.thread69

.thread60:                                        ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #5
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bc, i64 12
  %i.bh = load i32, ptr %i.bg, align 4
  %i.bi = call i64 (i32, ...) @__efi64_thunk(i32 noundef %i.bh, ptr noundef nonnull %i.bc, i32 noundef 9, ptr noundef nonnull %.sroa.4.0..sroa_idx, ptr noundef nonnull %i.g) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #5
  %i.bj = trunc i64 %i.bi to i32                  ; 3 uses
  %i.bk = call noundef i32 @llvm.fshl.i32(i32 %i.bj, i32 %i.bj, i32 1)
  %i.bl = zext i32 %i.bk to i64                   ; 2 uses
  %i.bm = call range(i64 0, -9223372034707292160) i64 @llvm.fshl.i64(i64 range(i64 0, 4294967296) %i.bl, i64 range(i64 0, 4294967296) %i.bl, i64 63)
  %.not5361 = icmp eq i32 %i.bj, 0
  br i1 %.not5361, label %bb.i, label %.thread69

.thread86:                                        ; preds = %bb.g
  %i.bn = load ptr, ptr %i.e, align 8             ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 16
  %i.bp = load ptr, ptr %i.bo, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #5
  br label %bb.j

.thread69:                                        ; preds = %bb.g, %.thread60
  %.044.ph = phi i64 [ %i.bm, %.thread60 ], [ %i.bf, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #5
  br label %bb.q

bb.h:                                             ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #5
  br label %bb.r

bb.i:                                             ; preds = %.thread60
  %i.bq = load ptr, ptr %i.e, align 8             ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 8
  %i.bs = load i32, ptr %i.br, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #5
  br label %bb.k

bb.j:                                             ; preds = %.thread86, %.thread74
  %.sroa.029.180 = phi ptr [ %i.ak, %.thread74 ], [ %i.bp, %.thread86 ]
  %.14778 = phi ptr [ %i.y, %.thread74 ], [ %i.bn, %.thread86 ]
end_hunk_0
