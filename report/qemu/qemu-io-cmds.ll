Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qemu/original/qemu-io-cmds?download=true
inline.NumInlined: 169
inline.NumDeleted: 33
begin_hunk_0_@init_qemuio_commands:qemuio_add_command.exit
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.ji, ptr noundef nonnull align 8 dereferenceable(72) @wait_break_cmd, i64 72, i1 false)
  %i.jj = sext i32 %i.jf to i64
  tail call void @qsort(ptr noundef %i.je, i64 noundef %i.jj, i64 noundef 72, ptr noundef nonnull @compare_cmdname) #24
  %i.jk = load i32, ptr @ncmds, align 4
  %i.jl = add i32 %i.jk, 1                        ; 2 uses
  store i32 %i.jl, ptr @ncmds, align 4
  %i.jm = load ptr, ptr @cmdtab, align 8
  %i.jn = sext i32 %i.jl to i64
  %i.jo = tail call ptr @g_realloc_n(ptr noundef %i.jm, i64 noundef %i.jn, i64 noundef 72) #24 ; 3 uses
  store ptr %i.jo, ptr @cmdtab, align 8
  %i.jp = load i32, ptr @ncmds, align 4           ; 2 uses
  %i.jq = add i32 %i.jp, -1
  %i.jr = sext i32 %i.jq to i64
  %i.js = getelementptr inbounds [72 x i8], ptr %i.jo, i64 %i.jr
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.js, ptr noundef nonnull align 8 dereferenceable(72) @abort_cmd, i64 72, i1 false)
  %i.jt = sext i32 %i.jp to i64
  tail call void @qsort(ptr noundef %i.jo, i64 noundef %i.jt, i64 noundef 72, ptr noundef nonnull @compare_cmdname) #24
  %i.ju = load i32, ptr @ncmds, align 4
  %i.jv = add i32 %i.ju, 1                        ; 2 uses
  store i32 %i.jv, ptr @ncmds, align 4
  %i.jw = load ptr, ptr @cmdtab, align 8
  %i.jx = sext i32 %i.jv to i64
  %i.jy = tail call ptr @g_realloc_n(ptr noundef %i.jw, i64 noundef %i.jx, i64 noundef 72) #24 ; 3 uses
  store ptr %i.jy, ptr @cmdtab, align 8
  %i.jz = load i32, ptr @ncmds, align 4           ; 2 uses
  %i.ka = add i32 %i.jz, -1
  %i.kb = sext i32 %i.ka to i64
  %i.kc = getelementptr inbounds [72 x i8], ptr %i.jy, i64 %i.kb
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.kc, ptr noundef nonnull align 8 dereferenceable(72) @sleep_cmd, i64 72, i1 false)
  %i.kd = sext i32 %i.jz to i64
  tail call void @qsort(ptr noundef %i.jy, i64 noundef %i.kd, i64 noundef 72, ptr noundef nonnull @compare_cmdname) #24
  %i.ke = load i32, ptr @ncmds, align 4
  %i.kf = add i32 %i.ke, 1                        ; 2 uses
  store i32 %i.kf, ptr @ncmds, align 4
  %i.kg = load ptr, ptr @cmdtab, align 8
  %i.kh = sext i32 %i.kf to i64
  %i.ki = tail call ptr @g_realloc_n(ptr noundef %i.kg, i64 noundef %i.kh, i64 noundef 72) #24 ; 3 uses
  store ptr %i.ki, ptr @cmdtab, align 8
  %i.kj = load i32, ptr @ncmds, align 4           ; 2 uses
  %i.kk = add i32 %i.kj, -1
  %i.kl = sext i32 %i.kk to i64
  %i.km = getelementptr inbounds [72 x i8], ptr %i.ki, i64 %i.kl
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.km, ptr noundef nonnull align 8 dereferenceable(72) @sigraise_cmd, i64 72, i1 false)
  %i.kn = sext i32 %i.kj to i64
  tail call void @qsort(ptr noundef %i.ki, i64 noundef %i.kn, i64 noundef 72, ptr noundef nonnull @compare_cmdname) #24
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #6

; Function Attrs: allocsize(0)
declare noalias ptr @g_malloc(i64 noundef) local_unnamed_addr #7

declare noalias ptr @g_strdup(ptr noundef) local_unnamed_addr #3

; Function Attrs: allocsize(0)
declare noalias ptr @g_malloc0(i64 noundef) local_unnamed_addr #7

; Function Attrs: allocsize(0,1)
declare noalias ptr @g_malloc0_n(i64 noundef, i64 noundef) local_unnamed_addr #8

declare ptr @qemu_strsep(ptr noundef, ptr noundef) local_unnamed_addr #3

declare zeroext i1 @blk_is_available(ptr noundef) #3

declare void @blk_get_perm(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @blk_set_perm(ptr noundef, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #3

declare void @error_report_err(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind sspstrong uwtable
define internal range(i32 -22, 1) i32 @help_f(ptr nofree readnone captures(none) %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2) #0 {
bb.a:
  %i.a = icmp slt i32 %1, 2
  br i1 %i.a, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.b = load i32, ptr @ncmds, align 4
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %.lr.ph.preheader.i, label %help_all.exit

.lr.ph.preheader.i:                               ; preds = %bb.b
  %i.d = load ptr, ptr @cmdtab, align 8
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %help_oneline.exit.i, %.lr.ph.preheader.i
  %.04.i = phi ptr [ %i.m, %help_oneline.exit.i ], [ %i.d, %.lr.ph.preheader.i ] ; 4 uses
  %i.e = load ptr, ptr %.04.i, align 8
  %i.f = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.16, ptr noundef %i.e) #24 ; 0 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.04.i, i64 40
  %i.h = load ptr, ptr %i.g, align 8              ; 2 uses
  %.not.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i, label %help_oneline.exit.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i
  %i.i = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.16, ptr noundef nonnull %i.h) #24 ; 0 uses
  br label %help_oneline.exit.i

help_oneline.exit.i:                              ; preds = %bb.c, %.lr.ph.i
  %i.j = getelementptr inbounds nuw i8, ptr %.04.i, i64 48
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.17, ptr noundef %i.k) #24 ; 0 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.04.i, i64 72 ; 2 uses
  %i.n = load ptr, ptr @cmdtab, align 8
  %i.o = load i32, ptr @ncmds, align 4
  %i.p = sext i32 %i.o to i64
  %i.q = getelementptr inbounds [72 x i8], ptr %i.n, i64 %i.p
  %i.r = icmp ult ptr %i.m, %i.q
  br i1 %i.r, label %.lr.ph.i, label %help_all.exit, !llvm.loop !13

help_all.exit:                                    ; preds = %help_oneline.exit.i, %bb.b
  %i.s = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.15) #24 ; 0 uses
  br label %help_onecmd.exit

bb.d:                                             ; preds = %bb.a
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.u = load ptr, ptr %i.t, align 8              ; 4 uses
  %i.v = load ptr, ptr @cmdtab, align 8           ; 2 uses
  %i.w = load i32, ptr @ncmds, align 4            ; 2 uses
  %i.x = sext i32 %i.w to i64
  %.idx.i = mul nsw i64 %i.x, 72
  %i.y = getelementptr inbounds i8, ptr %i.v, i64 %.idx.i
  %i.z = icmp sgt i32 %i.w, 0
  br i1 %i.z, label %.lr.ph.i7, label %.loopexit

.lr.ph.i7:                                        ; preds = %bb.d, %bb.g
  %.011.i = phi ptr [ %i.ah, %bb.g ], [ %i.v, %bb.d ] ; 6 uses
  %i.aa = load ptr, ptr %.011.i, align 8
  %i.ab = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.aa, ptr noundef nonnull readonly dereferenceable(1) %i.u) #25
  %i.ac = icmp eq i32 %i.ab, 0
  br i1 %i.ac, label %find_command.exit, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i7
  %i.ad = getelementptr inbounds nuw i8, ptr %.011.i, i64 8
  %i.ae = load ptr, ptr %i.ad, align 8            ; 2 uses
  %.not.i = icmp eq ptr %i.ae, null
  br i1 %.not.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.af = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.ae, ptr noundef nonnull readonly dereferenceable(1) %i.u) #25
  %i.ag = icmp eq i32 %i.af, 0
  br i1 %i.ag, label %find_command.exit, label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.ah = getelementptr inbounds nuw i8, ptr %.011.i, i64 72 ; 2 uses
  %i.ai = icmp ult ptr %i.ah, %i.y
  br i1 %i.ai, label %.lr.ph.i7, label %.loopexit, !llvm.loop !10

.loopexit:                                        ; preds = %bb.g, %bb.d
  %i.aj = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.14, ptr noundef %i.u) #24 ; 0 uses
  br label %help_onecmd.exit

find_command.exit:                                ; preds = %bb.f, %.lr.ph.i7
  %i.ak = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.16, ptr noundef nonnull %i.u) #24 ; 0 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.011.i, i64 40
  %i.am = load ptr, ptr %i.al, align 8            ; 2 uses
  %.not.i.i8 = icmp eq ptr %i.am, null
  br i1 %.not.i.i8, label %help_oneline.exit.i9, label %bb.h

bb.h:                                             ; preds = %find_command.exit
  %i.an = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.16, ptr noundef nonnull %i.am) #24 ; 0 uses
  br label %help_oneline.exit.i9

help_oneline.exit.i9:                             ; preds = %bb.h, %find_command.exit
  %i.ao = getelementptr inbounds nuw i8, ptr %.011.i, i64 48
  %i.ap = load ptr, ptr %i.ao, align 8
  %i.aq = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.17, ptr noundef %i.ap) #24 ; 0 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.011.i, i64 56
  %i.as = load ptr, ptr %i.ar, align 8            ; 2 uses
  %.not.i10 = icmp eq ptr %i.as, null
  br i1 %.not.i10, label %help_onecmd.exit, label %bb.i

bb.i:                                             ; preds = %help_oneline.exit.i9
  tail call void %i.as() #24, !inline_history !14
  br label %help_onecmd.exit

help_onecmd.exit:                                 ; preds = %bb.i, %help_oneline.exit.i9, %.loopexit, %help_all.exit
  %.0 = phi i32 [ 0, %help_all.exit ], [ -22, %.loopexit ], [ 0, %help_oneline.exit.i9 ], [ 0, %bb.i ]
  ret i32 %.0
}

; Function Attrs: nounwind sspstrong uwtable
define internal range(i32 -2147483648, 1) i32 @read_f(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %i.c = alloca i64, align 8                      ; 5 uses
  %i.d = alloca ptr, align 8                      ; 6 uses
  %i.e = alloca i64, align 8                      ; 5 uses
  %3 = alloca %struct.timespec, align 8           ; 6 uses
  %4 = alloca %struct.timespec, align 8           ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i64 16, i1 false), !annotation !11
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, i8 0, i64 16, i1 false), !annotation !11
  br label %bb.b

bb.b:                                             ; preds = %.backedge, %bb.a
  %.0106 = phi i1 [ false, %bb.a ], [ %.0106.be, %.backedge ] ; 9 uses
  %.0104.a = phi i1 [ false, %bb.a ], [ %.0104.be.a, %.backedge ] ; 9 uses
  %.0102.a = phi i1 [ false, %bb.a ], [ %.0102.be.a, %.backedge ] ; 10 uses
  %.0100.a = phi i1 [ false, %bb.a ], [ %.0100.be.a, %.backedge ] ; 9 uses
  %.098.a = phi i1 [ false, %bb.a ], [ %.098.be.a, %.backedge ] ; 10 uses
  %.096 = phi i1 [ false, %bb.a ], [ %.096.be, %.backedge ] ; 10 uses
  %.091.a = phi i32 [ 0, %bb.a ], [ %.091.be.a, %.backedge ] ; 9 uses
  %.089.a = phi i64 [ 0, %bb.a ], [ %.089.be.a, %.backedge ] ; 12 uses
  %.087.a = phi i64 [ 0, %bb.a ], [ %.087.be.a, %.backedge ] ; 9 uses
  %.085.a = phi i32 [ 0, %bb.a ], [ %.085.be.a, %.backedge ] ; 12 uses
  %.084 = phi i1 [ false, %bb.a ], [ %.084.be, %.backedge ] ; 9 uses
  %i.f = call i32 @getopt(i32 noundef %1, ptr noundef %2, ptr noundef nonnull @.str.22) #24
  switch i32 %i.f, label %bb.n [
    i32 -1, label %bb.o
    i32 98, label %bb.c
    i32 67, label %bb.d
    i32 108, label %bb.e
    i32 112, label %.backedge
    i32 80, label %bb.g
    i32 113, label %bb.i
    i32 114, label %bb.j
    i32 115, label %bb.k
    i32 118, label %bb.m
  ]

bb.c:                                             ; preds = %bb.b
  br label %.backedge

bb.d:                                             ; preds = %bb.b
  br label %.backedge

bb.e:                                             ; preds = %bb.b
  %i.g = load ptr, ptr @optarg, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #24
  store i64 0, ptr %i.e, align 8, !annotation !11
  %i.h = call i32 @qemu_strtosz(ptr noundef %i.g, ptr noundef null, ptr noundef nonnull %i.e) #24 ; 2 uses
  %i.i = icmp slt i32 %i.h, 0
  %i.j = sext i32 %i.h to i64
  %i.k = load i64, ptr %i.e, align 8              ; 2 uses
  %i.l = icmp slt i64 %i.k, 0
  %..i = select i1 %i.l, i64 -34, i64 %i.k
  %.0.i = select i1 %i.i, i64 %i.j, i64 %..i      ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #24
  %i.m = icmp slt i64 %.0.i, 0
  br i1 %i.m, label %bb.f, label %.backedge

bb.f:                                             ; preds = %bb.e
  %i.n = load ptr, ptr @optarg, align 8
  %switch.selectcmp.i = icmp eq i64 %.0.i, -34
  %switch.select.i = select i1 %switch.selectcmp.i, ptr @.str.31, ptr @.str.32
  %switch.selectcmp3.i = icmp eq i64 %.0.i, -22
  %switch.select4.i = select i1 %switch.selectcmp3.i, ptr @.str.30, ptr %switch.select.i
  %i.o = call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull %switch.select4.i, ptr noundef %i.n) #24 ; 0 uses
  %i.p = trunc nsw i64 %.0.i to i32
  br label %bb.at

bb.g:                                             ; preds = %bb.b
  %i.q = load ptr, ptr @optarg, align 8           ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #24
  store ptr null, ptr %i.d, align 8
  %i.r = call i64 @__isoc23_strtol(ptr noundef %i.q, ptr noundef nonnull %i.d, i32 noundef 0) #24 ; 2 uses
  %or.cond.i = icmp ugt i64 %i.r, 255
  br i1 %or.cond.i, label %parse_pattern.exit.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.s = load ptr, ptr %i.d, align 8
  %i.t = load i8, ptr %i.s, align 1
  %.not.i = icmp eq i8 %i.t, 0
  br i1 %.not.i, label %parse_pattern.exit, label %parse_pattern.exit.thread

parse_pattern.exit.thread:                        ; preds = %bb.g, %bb.h
  %i.u = call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.33, ptr noundef %i.q) #24 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #24
  br label %bb.at

parse_pattern.exit:                               ; preds = %bb.h
  %i.v = trunc nuw nsw i64 %i.r to i32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #24
  br label %.backedge

.backedge:                                        ; preds = %parse_pattern.exit, %bb.b, %bb.k, %bb.e, %bb.m, %bb.j, %bb.i, %bb.d, %bb.c
  %.0106.be = phi i1 [ %.0106, %bb.c ], [ %.0106, %bb.d ], [ %.0106, %bb.e ], [ %.0106, %bb.b ], [ %.0106, %parse_pattern.exit ], [ true, %bb.i ], [ %.0106, %bb.j ], [ %.0106, %bb.k ], [ %.0106, %bb.m ]
  %.0104.be.a = phi i1 [ %.0104.a, %bb.c ], [ %.0104.a, %bb.d ], [ %.0104.a, %bb.e ], [ %.0104.a, %bb.b ], [ %.0104.a, %parse_pattern.exit ], [ %.0104.a, %bb.i ], [ %.0104.a, %bb.j ], [ %.0104.a, %bb.k ], [ true, %bb.m ]
  %.0102.be.a = phi i1 [ %.0102.a, %bb.c ], [ %.0102.a, %bb.d ], [ %.0102.a, %bb.e ], [ %.0102.a, %bb.b ], [ true, %parse_pattern.exit ], [ %.0102.a, %bb.i ], [ %.0102.a, %bb.j ], [ %.0102.a, %bb.k ], [ %.0102.a, %bb.m ]
  %.0100.be.a = phi i1 [ %.0100.a, %bb.c ], [ %.0100.a, %bb.d ], [ %.0100.a, %bb.e ], [ %.0100.a, %bb.b ], [ %.0100.a, %parse_pattern.exit ], [ %.0100.a, %bb.i ], [ %.0100.a, %bb.j ], [ true, %bb.k ], [ %.0100.a, %bb.m ]
  %.098.be.a = phi i1 [ %.098.a, %bb.c ], [ %.098.a, %bb.d ], [ true, %bb.e ], [ %.098.a, %bb.b ], [ %.098.a, %parse_pattern.exit ], [ %.098.a, %bb.i ], [ %.098.a, %bb.j ], [ %.098.a, %bb.k ], [ %.098.a, %bb.m ]
  %.096.be = phi i1 [ true, %bb.c ], [ %.096, %bb.d ], [ %.096, %bb.e ], [ %.096, %bb.b ], [ %.096, %parse_pattern.exit ], [ %.096, %bb.i ], [ %.096, %bb.j ], [ %.096, %bb.k ], [ %.096, %bb.m ]
  %.091.be.a = phi i32 [ %.091.a, %bb.c ], [ %.091.a, %bb.d ], [ %.091.a, %bb.e ], [ %.091.a, %bb.b ], [ %i.v, %parse_pattern.exit ], [ %.091.a, %bb.i ], [ %.091.a, %bb.j ], [ %.091.a, %bb.k ], [ %.091.a, %bb.m ]
  %.089.be.a = phi i64 [ %.089.a, %bb.c ], [ %.089.a, %bb.d ], [ %.089.a, %bb.e ], [ %.089.a, %bb.b ], [ %.089.a, %parse_pattern.exit ], [ %.089.a, %bb.i ], [ %.089.a, %bb.j ], [ %.0.i128, %bb.k ], [ %.089.a, %bb.m ]
  %.087.be.a = phi i64 [ %.087.a, %bb.c ], [ %.087.a, %bb.d ], [ %.0.i, %bb.e ], [ %.087.a, %bb.b ], [ %.087.a, %parse_pattern.exit ], [ %.087.a, %bb.i ], [ %.087.a, %bb.j ], [ %.087.a, %bb.k ], [ %.087.a, %bb.m ]
  %.085.be.a = phi i32 [ %.085.a, %bb.c ], [ %.085.a, %bb.d ], [ %.085.a, %bb.e ], [ %.085.a, %bb.b ], [ %.085.a, %parse_pattern.exit ], [ %.085.a, %bb.i ], [ %i.w, %bb.j ], [ %.085.a, %bb.k ], [ %.085.a, %bb.m ]
  %.084.be = phi i1 [ %.084, %bb.c ], [ true, %bb.d ], [ %.084, %bb.e ], [ %.084, %bb.b ], [ %.084, %parse_pattern.exit ], [ %.084, %bb.i ], [ %.084, %bb.j ], [ %.084, %bb.k ], [ %.084, %bb.m ]
  br label %bb.b, !llvm.loop !15

bb.i:                                             ; preds = %bb.b
  br label %.backedge

bb.j:                                             ; preds = %bb.b
  %i.w = or i32 %.085.a, 8
  br label %.backedge

bb.k:                                             ; preds = %bb.b
  %i.x = load ptr, ptr @optarg, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #24
  store i64 0, ptr %i.c, align 8, !annotation !11
  %i.y = call i32 @qemu_strtosz(ptr noundef %i.x, ptr noundef null, ptr noundef nonnull %i.c) #24 ; 2 uses
  %i.z = icmp slt i32 %i.y, 0
  %i.aa = sext i32 %i.y to i64
  %i.ab = load i64, ptr %i.c, align 8             ; 2 uses
  %i.ac = icmp slt i64 %i.ab, 0
  %..i127 = select i1 %i.ac, i64 -34, i64 %i.ab
  %.0.i128 = select i1 %i.z, i64 %i.aa, i64 %..i127 ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #24
  %i.ad = icmp slt i64 %.0.i128, 0
  br i1 %i.ad, label %bb.l, label %.backedge

bb.l:                                             ; preds = %bb.k
  %i.ae = load ptr, ptr @optarg, align 8
  %switch.selectcmp.i129 = icmp eq i64 %.0.i128, -34
  %switch.select.i130 = select i1 %switch.selectcmp.i129, ptr @.str.31, ptr @.str.32
  %switch.selectcmp3.i131 = icmp eq i64 %.0.i128, -22
  %switch.select4.i132 = select i1 %switch.selectcmp3.i131, ptr @.str.30, ptr %switch.select.i130
  %i.af = call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull %switch.select4.i132, ptr noundef %i.ae) #24 ; 0 uses
  %i.ag = trunc nsw i64 %.0.i128 to i32
  br label %bb.at

bb.m:                                             ; preds = %bb.b
  br label %.backedge

bb.n:                                             ; preds = %bb.b
  %i.ah = call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.21) #24 ; 0 uses
  br label %bb.at

bb.o:                                             ; preds = %bb.b
  %i.ai = load i32, ptr @optind, align 4          ; 2 uses
  %i.aj = add i32 %1, -2
  %.not119 = icmp eq i32 %i.ai, %i.aj
  br i1 %.not119, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ak = call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.21) #24 ; 0 uses
  br label %bb.at

bb.q:                                             ; preds = %bb.o
  %i.al = sext i32 %i.ai to i64
  %i.am = getelementptr inbounds [8 x i8], ptr %2, i64 %i.al
  %i.an = load ptr, ptr %i.am, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #24
  store i64 0, ptr %i.b, align 8, !annotation !11
  %i.ao = call i32 @qemu_strtosz(ptr noundef %i.an, ptr noundef null, ptr noundef nonnull %i.b) #24 ; 2 uses
  %i.ap = icmp slt i32 %i.ao, 0
  %i.aq = sext i32 %i.ao to i64
  %i.ar = load i64, ptr %i.b, align 8             ; 2 uses
  %i.as = icmp slt i64 %i.ar, 0
  %..i133 = select i1 %i.as, i64 -34, i64 %i.ar
  %.0.i134 = select i1 %i.ap, i64 %i.aq, i64 %..i133 ; 11 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #24
  %i.at = icmp slt i64 %.0.i134, 0
  %i.au = load i32, ptr @optind, align 4          ; 2 uses
  br i1 %i.at, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.av = sext i32 %i.au to i64
  %i.aw = getelementptr inbounds [8 x i8], ptr %2, i64 %i.av
  %i.ax = load ptr, ptr %i.aw, align 8
  %switch.selectcmp.i135 = icmp eq i64 %.0.i134, -34
  %switch.select.i136 = select i1 %switch.selectcmp.i135, ptr @.str.31, ptr @.str.32
  %switch.selectcmp3.i137 = icmp eq i64 %.0.i134, -22
  %switch.select4.i138 = select i1 %switch.selectcmp3.i137, ptr @.str.30, ptr %switch.select.i136
  %i.ay = call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull %switch.select4.i138, ptr noundef %i.ax) #24 ; 0 uses
  %i.az = trunc nsw i64 %.0.i134 to i32
  br label %bb.at

bb.s:                                             ; preds = %bb.q
  %i.ba = add i32 %i.au, 1                        ; 2 uses
  store i32 %i.ba, ptr @optind, align 4
  %i.bb = sext i32 %i.ba to i64
  %i.bc = getelementptr inbounds [8 x i8], ptr %2, i64 %i.bb
  %i.bd = load ptr, ptr %i.bc, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  store i64 0, ptr %i.a, align 8, !annotation !11
  %i.be = call i32 @qemu_strtosz(ptr noundef %i.bd, ptr noundef null, ptr noundef nonnull %i.a) #24 ; 2 uses
  %i.bf = icmp slt i32 %i.be, 0
  %i.bg = sext i32 %i.be to i64
  %i.bh = load i64, ptr %i.a, align 8             ; 2 uses
  %i.bi = icmp slt i64 %i.bh, 0
  %..i139 = select i1 %i.bi, i64 -34, i64 %i.bh
  %.0.i140 = select i1 %i.bf, i64 %i.bg, i64 %..i139 ; 16 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  %i.bj = icmp slt i64 %.0.i140, 0
  br i1 %i.bj, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.bk = load i32, ptr @optind, align 4
  %i.bl = sext i32 %i.bk to i64
  %i.bm = getelementptr inbounds [8 x i8], ptr %2, i64 %i.bl
  %i.bn = load ptr, ptr %i.bm, align 8
  %switch.selectcmp.i141 = icmp eq i64 %.0.i140, -34
  %switch.select.i142 = select i1 %switch.selectcmp.i141, ptr @.str.31, ptr @.str.32
  %switch.selectcmp3.i143 = icmp eq i64 %.0.i140, -22
  %switch.select4.i144 = select i1 %switch.selectcmp3.i143, ptr @.str.30, ptr %switch.select.i142
  %i.bo = call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull %switch.select4.i144, ptr noundef %i.bn) #24 ; 0 uses
  %i.bp = trunc nsw i64 %.0.i140 to i32
  br label %bb.at

bb.u:                                             ; preds = %bb.s
  %i.bq = icmp samesign ugt i64 %.0.i140, 2147483136
  br i1 %i.bq, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.br = load i32, ptr @optind, align 4
  %i.bs = sext i32 %i.br to i64
  %i.bt = getelementptr inbounds [8 x i8], ptr %2, i64 %i.bs
  %i.bu = load ptr, ptr %i.bt, align 8
  %i.bv = call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.23, i64 noundef 2147483136, ptr noundef %i.bu) #24 ; 0 uses
  br label %bb.at

bb.w:                                             ; preds = %bb.u
  %.not = xor i1 %.0102.a, true
  %or.cond = or i1 %.098.a, %.0100.a
  %or.cond123 = and i1 %or.cond, %.not
  br i1 %or.cond123, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.bw = call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.21) #24 ; 0 uses
  br label %bb.at

bb.y:                                             ; preds = %bb.w
  %i.bx = sub nsw i64 %.0.i140, %.089.a
  %spec.select = select i1 %.098.a, i64 %.087.a, i64 %i.bx ; 6 uses
  %i.by = icmp slt i64 %spec.select, 0
  %i.bz = add nuw i64 %spec.select, %.089.a
  %i.ca = icmp sgt i64 %i.bz, %.0.i140
  %or.cond125 = select i1 %i.by, i1 true, i1 %i.ca
  br i1 %or.cond125, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.cb = call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.24) #24 ; 0 uses
  br label %bb.at

bb.aa:                                            ; preds = %bb.y
  br i1 %.096, label %bb.ab, label %._crit_edge

._crit_edge:                                      ; preds = %bb.aa
  %.pre = and i32 %.085.a, 8
  %i.cc = icmp ne i32 %.pre, 0
  br label %bb.ah

bb.ab:                                            ; preds = %bb.aa
  %i.cd = and i64 %.0.i134, 511
  %i.ce = icmp eq i64 %i.cd, 0
  br i1 %i.ce, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.cf = call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.25, i64 noundef %.0.i134) #24 ; 0 uses
  br label %bb.at

bb.ad:                                            ; preds = %bb.ab
  %i.cg = and i64 %.0.i140, 511
  %i.ch = icmp eq i64 %i.cg, 0
  br i1 %i.ch, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.ci = call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.26, i64 noundef %.0.i140) #24 ; 0 uses
  br label %bb.at

bb.af:                                            ; preds = %bb.ad
  %i.cj = and i32 %.085.a, 8
  %.not120 = icmp eq i32 %i.cj, 0
  br i1 %.not120, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.ck = call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.27) #24 ; 0 uses
  br label %bb.at

bb.ah:                                            ; preds = %._crit_edge, %bb.af
  %.pre-phi = phi i1 [ %i.cc, %._crit_edge ], [ false, %bb.af ] ; 2 uses
  %i.cl = call fastcc ptr @qemu_io_alloc(ptr noundef %0, i64 noundef %.0.i140, i32 noundef 171, i1 noundef zeroext %.pre-phi) ; 5 uses
  %i.cm = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %3) #24 ; 0 uses
  br i1 %.096, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  %i.cn = trunc nuw nsw i64 %.0.i140 to i32
  %i.co = call i32 @blk_load_vmstate(ptr noundef %0, ptr noundef %i.cl, i64 noundef range(i64 0, -9223372036854775808) %.0.i134, i32 noundef %i.cn) #24 ; 3 uses
  %i.cp = zext nneg i32 %i.co to i64
  %i.cq = icmp slt i32 %i.co, 0
  br i1 %i.cq, label %select.unfold, label %bb.ak

bb.aj:                                            ; preds = %bb.ah
  %i.cr = call i32 @blk_pread(ptr noundef %0, i64 noundef range(i64 0, -9223372036854775808) %.0.i134, i64 noundef range(i64 0, 2147483137) %.0.i140, ptr noundef %i.cl, i32 noundef range(i32 0, 16) %.085.a) #24 ; 2 uses
  %i.cs = icmp slt i32 %i.cr, 0
  br i1 %i.cs, label %select.unfold, label %bb.ak

select.unfold:                                    ; preds = %bb.ai, %bb.aj
  %.093.ph = phi i32 [ %i.cr, %bb.aj ], [ %i.co, %bb.ai ] ; 2 uses
  %i.ct = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %4) #24 ; 0 uses
  %i.cu = sub i32 0, %.093.ph
  %i.cv = call ptr @strerror(i32 noundef %i.cu) #24
  %i.cw = call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.28, ptr noundef %i.cv) #24 ; 0 uses
  br label %bb.as

bb.ak:                                            ; preds = %bb.aj, %bb.ai
  %.0147 = phi i64 [ %i.cp, %bb.ai ], [ %.0.i140, %bb.aj ]
  %i.cx = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %4) #24 ; 0 uses
  br i1 %.0102.a, label %bb.al, label %bb.ao

bb.al:                                            ; preds = %bb.ak
  %i.cy = call noalias ptr @g_malloc(i64 noundef %spec.select) #26 ; 3 uses
  %i.cz = trunc i32 %.091.a to i8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 %i.cy, i8 noundef %i.cz, i64 noundef %spec.select, i1 noundef false) #24
  %i.da = getelementptr inbounds nuw i8, ptr %i.cl, i64 %.089.a
  %bcmp = call i32 @bcmp(ptr %i.da, ptr nonnull %i.cy, i64 %spec.select)
  %.not121 = icmp eq i32 %bcmp, 0
  br i1 %.not121, label %bb.an, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.db = add nuw i64 %.0.i134, %.089.a
  %i.dc = call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.29, i64 noundef %i.db, i64 noundef %spec.select) #24 ; 0 uses
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.al
  %.194 = phi i32 [ -22, %bb.am ], [ 0, %bb.al ]
  call void @g_free(ptr noundef nonnull %i.cy) #24
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.ak
  %.295 = phi i32 [ %.194, %bb.an ], [ 0, %bb.ak ] ; 2 uses
  br i1 %.0106, label %bb.as, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  br i1 %.0104.a, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %bb.ap
  call fastcc void @dump_buffer(ptr noundef %i.cl, i64 noundef %.0.i134, i64 noundef %.0.i140)
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %bb.ap
  %i.dd = load i64, ptr %4, align 8
  %i.de = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.df = load i64, ptr %i.de, align 8
  %i.dg = load i64, ptr %3, align 8
  %i.dh = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.di = load i64, ptr %i.dh, align 8
  %i.dj = sub i64 %i.df, %i.di                    ; 4 uses
  %i.dk = icmp slt i64 %i.dj, 0
  %i.dl = add nsw i64 %i.dj, 1000000000
  %.lobit.i = ashr i64 %i.dj, 63
  %.sroa.6.0.i = select i1 %i.dk, i64 %i.dl, i64 %i.dj
  %.sroa.01.0.i = sub i64 %i.dd, %i.dg
  %i.dm = add i64 %.sroa.01.0.i, %.lobit.i
  store i64 %i.dm, ptr %4, align 8
  store i64 %.sroa.6.0.i, ptr %i.de, align 8
  call fastcc void @print_report(ptr noundef nonnull @.str.18, ptr noundef %4, i64 noundef %.0.i134, i64 noundef %.0.i140, i64 noundef %.0147, i32 noundef 1, i1 noundef zeroext %.084)
  br label %bb.as

bb.as:                                            ; preds = %bb.ao, %bb.ar, %select.unfold
  %.3 = phi i32 [ %.093.ph, %select.unfold ], [ %.295, %bb.ao ], [ %.295, %bb.ar ]
  call fastcc void @qemu_io_free(ptr noundef %0, ptr noundef %i.cl, i64 noundef %.0.i140, i1 noundef zeroext %.pre-phi)
  br label %bb.at

bb.at:                                            ; preds = %parse_pattern.exit.thread, %bb.as, %bb.ag, %bb.ae, %bb.ac, %bb.z, %bb.x, %bb.v, %bb.t, %bb.r, %bb.p, %bb.n, %bb.l, %bb.f
  %.0 = phi i32 [ -22, %bb.n ], [ %i.p, %bb.f ], [ -22, %bb.x ], [ %i.ag, %bb.l ], [ -22, %bb.p ], [ %i.az, %bb.r ], [ %i.bp, %bb.t ], [ -22, %bb.v ], [ -22, %bb.z ], [ -22, %bb.ag ], [ %.3, %bb.as ], [ -22, %bb.ae ], [ -22, %bb.ac ], [ -22, %parse_pattern.exit.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  ret i32 %.0
}

; Function Attrs: nounwind sspstrong uwtable
define internal void @read_help() #0 {
bb.a:
  %i.a = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.55) #24 ; 0 uses
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #9

; Function Attrs: nounwind
declare i32 @getopt(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #10

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc range(i64 -2147483648, -9223372036854775808) i64 @cvtnum(ptr noundef %0) unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  store i64 0, ptr %i.a, align 8, !annotation !11
  %i.b = call i32 @qemu_strtosz(ptr noundef %0, ptr noundef null, ptr noundef nonnull %i.a) #24 ; 2 uses
  %i.c = icmp slt i32 %i.b, 0
  %i.d = sext i32 %i.b to i64
  %i.e = load i64, ptr %i.a, align 8              ; 2 uses
  %i.f = icmp slt i64 %i.e, 0
  %. = select i1 %i.f, i64 -34, i64 %i.e
  %.0 = select i1 %i.c, i64 %i.d, i64 %.
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  ret i64 %.0
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc ptr @qemu_io_alloc(ptr noundef %0, i64 noundef range(i64 0, -9223372036854775808) %1, i32 noundef range(i32 0, -2147483648) %2, i1 noundef zeroext %3) unnamed_addr #0 {
bb.a:
  %i.a = load i8, ptr @qemuio_misalign, align 1, !range !16, !noundef !17
  %i.b = shl nuw nsw i8 %i.a, 4
  %i.c = zext nneg i8 %i.b to i64
  %spec.select = add nuw i64 %1, %i.c             ; 3 uses
  %i.d = tail call ptr @blk_blockalign(ptr noundef %0, i64 noundef %spec.select) #24 ; 3 uses
  %i.e = trunc i32 %2 to i8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 %i.d, i8 noundef %i.e, i64 noundef %spec.select, i1 noundef false) #24
  br i1 %3, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = tail call zeroext i1 @blk_register_buf(ptr noundef %0, ptr noundef nonnull %i.d, i64 noundef %spec.select, ptr noundef nonnull @error_abort) #24 ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.g = load i8, ptr @qemuio_misalign, align 1, !range !16, !noundef !17
  %i.h = shl nuw nsw i8 %i.g, 4
  %spec.select12.idx = zext nneg i8 %i.h to i64
  %spec.select12 = getelementptr inbounds nuw i8, ptr %i.d, i64 %spec.select12.idx
  ret ptr %spec.select12
}

; Function Attrs: nounwind
declare i32 @clock_gettime(i32 noundef, ptr noundef) local_unnamed_addr #10

; Function Attrs: nounwind
declare ptr @strerror(i32 noundef) local_unnamed_addr #10

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @dump_buffer(ptr nofree noundef readonly captures(none) %0, i64 noundef %1, i64 noundef %2) unnamed_addr #0 {
bb.a:
  %.not40 = icmp eq i64 %2, 0
  br i1 %.not40, label %._crit_edge, label %.lr.ph39.preheader

.lr.ph39.preheader:                               ; preds = %bb.a
  %i.a = add i64 %2, -1
  br label %.lr.ph39

.lr.ph39:                                         ; preds = %.lr.ph39.preheader, %.critedge2
  %indvars.iv45 = phi i64 [ %i.a, %.lr.ph39.preheader ], [ %indvars.iv.next46, %.critedge2 ] ; 2 uses
  %.02338 = phi ptr [ %0, %.lr.ph39.preheader ], [ %i.g, %.critedge2 ] ; 2 uses
  %.02637 = phi i64 [ 0, %.lr.ph39.preheader ], [ %i.x, %.critedge2 ] ; 3 uses
  %umin = tail call i64 @llvm.umin.i64(i64 %indvars.iv45, i64 15)
  %i.b = add i64 %.02637, %1
  %i.c = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.34, i64 noundef %i.b) #24 ; 0 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph39, %bb.b
  %indvars.iv = phi i64 [ 0, %.lr.ph39 ], [ %indvars.iv.next, %bb.b ] ; 2 uses
  %.134 = phi ptr [ %.02338, %.lr.ph39 ], [ %i.g, %bb.b ] ; 2 uses
  %i.d = load i8, ptr %.134, align 1
  %i.e = zext i8 %i.d to i32
  %i.f = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.35, i32 noundef %i.e) #24 ; 0 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.134, i64 1 ; 2 uses
  %i.h = icmp samesign ult i64 %indvars.iv, 15
  %i.i = or disjoint i64 %.02637, %indvars.iv.next
  %i.j = icmp ult i64 %i.i, %2
  %or.cond = select i1 %i.h, i1 %i.j, i1 false
  br i1 %or.cond, label %bb.b, label %.lr.ph, !llvm.loop !18

.lr.ph:                                           ; preds = %bb.b
  %i.k = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.4) #24 ; 0 uses
  %i.l = tail call ptr @__ctype_b_loc() #27
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.f
  %indvars.iv42 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next43, %bb.f ] ; 2 uses
  %.036 = phi ptr [ %.02338, %.lr.ph ], [ %i.v, %bb.f ] ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8
  %i.n = load i8, ptr %.036, align 1              ; 2 uses
  %i.o = zext i8 %i.n to i64
  %i.p = getelementptr inbounds nuw [2 x i8], ptr %i.m, i64 %i.o
  %i.q = load i16, ptr %i.p, align 2
  %i.r = and i16 %i.q, 8
  %.not = icmp eq i16 %i.r, 0
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.s = zext i8 %i.n to i32
  %i.t = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.36, i32 noundef %i.s) #24 ; 0 uses
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.u = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.37) #24 ; 0 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %indvars.iv.next43 = add nuw nsw i64 %indvars.iv42, 1
  %i.v = getelementptr inbounds nuw i8, ptr %.036, i64 1
  %exitcond.not = icmp eq i64 %indvars.iv42, %umin
  br i1 %exitcond.not, label %.critedge2, label %bb.c, !llvm.loop !19

.critedge2:                                       ; preds = %bb.f
  %i.w = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.38) #24 ; 0 uses
  %i.x = add i64 %.02637, 16                      ; 2 uses
  %i.y = icmp ult i64 %i.x, %2
  %indvars.iv.next46 = add i64 %indvars.iv45, -16
  br i1 %i.y, label %.lr.ph39, label %._crit_edge, !llvm.loop !20

._crit_edge:                                      ; preds = %.critedge2, %bb.a
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @print_report(ptr noundef %0, ptr nofree noundef nonnull readonly captures(none) %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i32 noundef range(i32 0, -2147483648) %5, i1 noundef zeroext %6) unnamed_addr #0 {
bb.a:
  %i.a = alloca [64 x i8], align 16               ; 5 uses
  %i.b = alloca [64 x i8], align 16               ; 5 uses
  %i.c = alloca [64 x i8], align 16               ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.a, i8 0, i64 64, i1 false), !annotation !11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.b, i8 0, i64 64, i1 false), !annotation !11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.c, i8 0, i64 64, i1 false), !annotation !11
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.e = load i64, ptr %i.d, align 8
  %i.f = sitofp i64 %i.e to double
  %i.g = fdiv double %i.f, 1.000000e+09           ; 2 uses
  %.pre.i = load i64, ptr %1, align 8             ; 4 uses
  %.not24.i = icmp ne i64 %.pre.i, 0
  %or.cond.i.not = select i1 %6, i1 true, i1 %.not24.i
  br i1 %or.cond.i.not, label %.thread.i, label %bb.b

.thread.i:                                        ; preds = %bb.a
  %i.h = sdiv i64 %.pre.i, 3600
  %i.i = trunc i64 %i.h to i32
  %i.j = srem i64 %.pre.i, 3600
  %.lhs.trunc.i = trunc nsw i64 %i.j to i16
  %i.k = sdiv i16 %.lhs.trunc.i, 60
  %i.l = sext i16 %i.k to i32
  %i.m = srem i64 %.pre.i, 60
  %i.n = sitofp i64 %i.m to double
  %i.o = fadd double %i.g, %i.n
  %i.p = call i32 (ptr, i64, i32, i64, ptr, ...) @__snprintf_chk(ptr noundef nonnull %i.c, i64 noundef 64, i32 noundef 1, i64 noundef 64, ptr noundef nonnull @.str.43, i32 noundef %i.i, i32 noundef %i.l, double noundef %i.o) #24 ; 0 uses
  br label %timestr.exit

bb.b:                                             ; preds = %bb.a
  %i.q = call i32 (ptr, i64, i32, i64, ptr, ...) @__snprintf_chk(ptr noundef nonnull %i.c, i64 noundef 64, i32 noundef 1, i64 noundef 64, ptr noundef nonnull @.str.44, double noundef %i.g) #24 ; 0 uses
  br label %timestr.exit

timestr.exit:                                     ; preds = %.thread.i, %bb.b
  %i.r = sitofp i64 %4 to double                  ; 3 uses
  br i1 %6, label %bb.d, label %bb.c

bb.c:                                             ; preds = %timestr.exit
  call fastcc void @cvtstr(double noundef %i.r, ptr noundef %i.a)
  %i.s = load i64, ptr %1, align 8
  %i.t = load i64, ptr %i.d, align 8
  %i.u = sitofp i64 %i.s to double
  %i.v = sitofp i64 %i.t to double
  %i.w = fdiv double %i.v, 1.000000e+09
  %i.x = fadd double %i.w, %i.u
  %i.y = fdiv double %i.r, %i.x
  call fastcc void @cvtstr(double noundef %i.y, ptr noundef %i.b)
  %i.z = call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.39, ptr noundef %0, i64 noundef %4, i64 noundef %3, i64 noundef %2) #24 ; 0 uses
  %i.aa = uitofp nneg i32 %5 to double
  %i.ab = load i64, ptr %1, align 8
  %i.ac = load i64, ptr %i.d, align 8
  %i.ad = sitofp i64 %i.ab to double
  %i.ae = sitofp i64 %i.ac to double
  %i.af = fdiv double %i.ae, 1.000000e+09
  %i.ag = fadd double %i.af, %i.ad
  %i.ah = fdiv double %i.aa, %i.ag
  %i.ai = call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.40, ptr noundef nonnull %i.a, i32 noundef %5, ptr noundef nonnull %i.c, ptr noundef nonnull %i.b, double noundef %i.ah) #24 ; 0 uses
  br label %bb.e

bb.d:                                             ; preds = %timestr.exit
  %i.aj = load i64, ptr %1, align 8
  %i.ak = load i64, ptr %i.d, align 8
  %i.al = sitofp i64 %i.aj to double
  %i.am = sitofp i64 %i.ak to double
  %i.an = fdiv double %i.am, 1.000000e+09
  %i.ao = fadd double %i.an, %i.al                ; 2 uses
  %i.ap = fdiv double %i.r, %i.ao
  %i.aq = uitofp nneg i32 %5 to double
  %i.ar = fdiv double %i.aq, %i.ao
  %i.as = call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.41, i64 noundef %4, i32 noundef %5, ptr noundef nonnull %i.c, double noundef %i.ap, double noundef %i.ar) #24 ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @qemu_io_free(ptr noundef %0, ptr noundef %1, i64 noundef %2, i1 noundef zeroext %3) unnamed_addr #0 {
bb.a:
  %i.a = load i8, ptr @qemuio_misalign, align 1, !range !16, !noundef !17
  %i.b = trunc nuw i8 %i.a to i1                  ; 2 uses
  %.0.idx = select i1 %i.b, i64 -16, i64 0
  %.0 = getelementptr inbounds i8, ptr %1, i64 %.0.idx ; 2 uses
  br i1 %3, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = add i64 %2, 16
  %.06 = select i1 %i.b, i64 %i.c, i64 %2
  tail call void @blk_unregister_buf(ptr noundef %0, ptr noundef %.0, i64 noundef %.06) #24
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  tail call void @qemu_vfree(ptr noundef %.0) #24
  ret void
}

declare i32 @qemu_strtosz(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare i64 @__isoc23_strtol(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #10

declare ptr @blk_blockalign(ptr noundef, i64 noundef) local_unnamed_addr #3

declare zeroext i1 @blk_register_buf(ptr noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #3

declare i32 @blk_load_vmstate(ptr noundef, ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #3

declare i32 @blk_pread(ptr noundef, i64 noundef, i64 noundef, ptr noundef, i32 noundef) #3

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__ctype_b_loc() local_unnamed_addr #11

; Function Attrs: nofree nounwind sspstrong uwtable
define internal fastcc void @cvtstr(double noundef %0, ptr noundef nonnull %1) unnamed_addr #12 {
bb.a:
  %i.a = fcmp ult double %0, f0x43B0000000000000
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = fmul nnan double %0, f0x3C30000000000000
  %i.c = tail call i32 (ptr, i64, i32, i64, ptr, ...) @__snprintf_chk(ptr noundef nonnull %1, i64 noundef 60, i32 noundef 1, i64 noundef -1, ptr noundef nonnull @.str.46, double noundef %i.b) #24 ; 0 uses
  br label %bb.n

bb.c:                                             ; preds = %bb.a
  %i.d = fcmp ult double %0, f0x4310000000000000
  br i1 %i.d, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = fmul nnan double %0, f0x3CD0000000000000
  %i.f = tail call i32 (ptr, i64, i32, i64, ptr, ...) @__snprintf_chk(ptr noundef nonnull %1, i64 noundef 60, i32 noundef 1, i64 noundef -1, ptr noundef nonnull @.str.46, double noundef %i.e) #24 ; 0 uses
  br label %bb.n

bb.e:                                             ; preds = %bb.c
  %i.g = fcmp ult double %0, f0x4270000000000000
  br i1 %i.g, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.h = fmul nnan double %0, f0x3D70000000000000
  %i.i = tail call i32 (ptr, i64, i32, i64, ptr, ...) @__snprintf_chk(ptr noundef nonnull %1, i64 noundef 60, i32 noundef 1, i64 noundef -1, ptr noundef nonnull @.str.46, double noundef %i.h) #24 ; 0 uses
  br label %bb.n

bb.g:                                             ; preds = %bb.e
  %i.j = fcmp ult double %0, f0x41D0000000000000
  br i1 %i.j, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.k = fmul nnan double %0, f0x3E10000000000000
  %i.l = tail call i32 (ptr, i64, i32, i64, ptr, ...) @__snprintf_chk(ptr noundef nonnull %1, i64 noundef 60, i32 noundef 1, i64 noundef -1, ptr noundef nonnull @.str.46, double noundef %i.k) #24 ; 0 uses
  br label %bb.n

bb.i:                                             ; preds = %bb.g
  %i.m = fcmp ult double %0, f0x4130000000000000
  br i1 %i.m, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.n = fmul nnan double %0, f0x3EB0000000000000
  %i.o = tail call i32 (ptr, i64, i32, i64, ptr, ...) @__snprintf_chk(ptr noundef nonnull %1, i64 noundef 60, i32 noundef 1, i64 noundef -1, ptr noundef nonnull @.str.46, double noundef %i.n) #24 ; 0 uses
  br label %bb.n

bb.k:                                             ; preds = %bb.i
  %i.p = fcmp ult double %0, 1.024000e+03
  br i1 %i.p, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.q = fmul nnan double %0, f0x3F50000000000000
  %i.r = tail call i32 (ptr, i64, i32, i64, ptr, ...) @__snprintf_chk(ptr noundef nonnull %1, i64 noundef 60, i32 noundef 1, i64 noundef -1, ptr noundef nonnull @.str.46, double noundef %i.q) #24 ; 0 uses
  br label %bb.n

bb.m:                                             ; preds = %bb.k
  %i.s = tail call i32 (ptr, i64, i32, i64, ptr, ...) @__snprintf_chk(ptr noundef nonnull %1, i64 noundef 58, i32 noundef 1, i64 noundef -1, ptr noundef nonnull @.str.53, double noundef %0) #24 ; 0 uses
  br label %bb.n

bb.n:                                             ; preds = %bb.d, %bb.h, %bb.l, %bb.m, %bb.j, %bb.f, %bb.b
  %.0 = phi ptr [ @.str.45, %bb.b ], [ @.str.47, %bb.d ], [ @.str.48, %bb.f ], [ @.str.49, %bb.h ], [ @.str.50, %bb.j ], [ @.str.51, %bb.l ], [ @.str.52, %bb.m ] ; 2 uses
  %i.t = tail call ptr @strstr(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(1) @.str.54) #25 ; 2 uses
  %.not = icmp eq ptr %i.t, null
  br i1 %.not, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %strcpy = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %i.t, ptr noundef nonnull dereferenceable(1) %.0) ; 0 uses
  br label %bb.q

bb.p:                                             ; preds = %bb.n
  %strcat = tail call ptr @strcat(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(1) %.0) ; 0 uses
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  ret void
}

; Function Attrs: nofree
declare i32 @__snprintf_chk(ptr noundef, i64 noundef, i32 noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare ptr @strstr(ptr noundef, ptr noundef captures(none)) local_unnamed_addr #6

declare void @blk_unregister_buf(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

declare void @qemu_vfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind sspstrong uwtable
define internal range(i32 -2147483648, 1) i32 @readv_f(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %i.c = alloca ptr, align 8                      ; 6 uses
  %3 = alloca %struct.timespec, align 8           ; 6 uses
  %4 = alloca %struct.timespec, align 8           ; 8 uses
  %5 = alloca %struct.QEMUIOVector, align 8       ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i64 16, i1 false), !annotation !11
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, i8 0, i64 16, i1 false), !annotation !11
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %5, i8 0, i64 40, i1 false), !annotation !11
  br label %.outer

.outer:                                           ; preds = %.loopexit163, %bb.a
  %.052.ph = phi i1 [ true, %.loopexit163 ], [ false, %bb.a ]
  %.050.ph = phi i1 [ %.050.ph124, %.loopexit163 ], [ false, %bb.a ]
  %.046.ph = phi i32 [ %.046.ph130, %.loopexit163 ], [ 0, %bb.a ]
  %.044.ph = phi i1 [ %.044.ph131, %.loopexit163 ], [ false, %bb.a ]
  %.042.ph = phi i32 [ %.042.ph135, %.loopexit163 ], [ 0, %bb.a ]
  %.041.ph = phi i1 [ %.041.lcssa139.a, %.loopexit163 ], [ false, %bb.a ]
  br label %.outer123

.outer123:                                        ; preds = %.outer, %.loopexit165
  %.050.ph124 = phi i1 [ %.050.ph, %.outer ], [ true, %.loopexit165 ] ; 2 uses
  %.046.ph125 = phi i32 [ %.046.ph, %.outer ], [ %.046.ph130, %.loopexit165 ]
  %.044.ph126 = phi i1 [ %.044.ph, %.outer ], [ %.044.ph131, %.loopexit165 ]
  %.042.ph127 = phi i32 [ %.042.ph, %.outer ], [ %.042.ph135, %.loopexit165 ]
  %.041.ph128 = phi i1 [ %.041.ph, %.outer ], [ %.041.lcssa141, %.loopexit165 ]
  br label %.outer129

.outer129:                                        ; preds = %.outer123, %parse_pattern.exit
  %.046.ph130 = phi i32 [ %.046.ph125, %.outer123 ], [ %i.k, %parse_pattern.exit ] ; 3 uses
  %.044.ph131 = phi i1 [ %.044.ph126, %.outer123 ], [ true, %parse_pattern.exit ] ; 3 uses
  %.042.ph132 = phi i32 [ %.042.ph127, %.outer123 ], [ %.042.ph135, %parse_pattern.exit ] ; 2 uses
  %.041.ph133 = phi i1 [ %.041.ph128, %.outer123 ], [ %.041.lcssa138.a, %parse_pattern.exit ]
  %6 = or i32 %.042.ph132, 8
  br label %.outer134

.outer134:                                        ; preds = %.outer129, %.loopexit164
  %.042.ph135 = phi i32 [ %.042.ph132, %.outer129 ], [ %6, %.loopexit164 ] ; 5 uses
  %.041.ph136 = phi i1 [ %.041.ph133, %.outer129 ], [ %.041.lcssa140.a, %.loopexit164 ] ; 5 uses
  %i.d = call i32 @getopt(i32 noundef %1, ptr noundef %2, ptr noundef nonnull @.str.58) #24
  switch i32 %i.d, label %.loopexit [
    i32 -1, label %.loopexit161
    i32 67, label %.outer134.peel.newph
    i32 80, label %.loopexit162.a
    i32 113, label %.loopexit163
    i32 114, label %.loopexit164
    i32 118, label %.loopexit165
  ]

.outer134.peel.newph:                             ; preds = %.outer134, %.outer134.peel.newph
  %i.e = call i32 @getopt(i32 noundef %1, ptr noundef %2, ptr noundef nonnull @.str.58) #24
  switch i32 %i.e, label %.loopexit [
    i32 -1, label %.loopexit161
    i32 67, label %.outer134.peel.newph
    i32 80, label %.loopexit162.a
    i32 113, label %.loopexit163
    i32 114, label %.loopexit164
    i32 118, label %.loopexit165
  ], !llvm.loop !21

.loopexit162.a:                                   ; preds = %.outer134, %.outer134.peel.newph
  %.041.lcssa138.a = phi i1 [ true, %.outer134.peel.newph ], [ %.041.ph136, %.outer134 ]
  %i.f = load ptr, ptr @optarg, align 8           ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #24
  store ptr null, ptr %i.c, align 8
  %i.g = call i64 @__isoc23_strtol(ptr noundef %i.f, ptr noundef nonnull %i.c, i32 noundef 0) #24 ; 2 uses
  %or.cond.i = icmp ugt i64 %i.g, 255
  br i1 %or.cond.i, label %parse_pattern.exit.thread, label %bb.b

bb.b:                                             ; preds = %.loopexit162.a
  %i.h = load ptr, ptr %i.c, align 8
  %i.i = load i8, ptr %i.h, align 1
  %.not.i = icmp eq i8 %i.i, 0
  br i1 %.not.i, label %parse_pattern.exit, label %parse_pattern.exit.thread

parse_pattern.exit.thread:                        ; preds = %.loopexit162.a, %bb.b
  %i.j = call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.33, ptr noundef %i.f) #24 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #24
  br label %bb.s

parse_pattern.exit:                               ; preds = %bb.b
  %i.k = trunc nuw nsw i64 %i.g to i32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #24
  br label %.outer129, !llvm.loop !23

.loopexit163:                                     ; preds = %.outer134, %.outer134.peel.newph
  %.041.lcssa139.a = phi i1 [ true, %.outer134.peel.newph ], [ %.041.ph136, %.outer134 ]
  br label %.outer, !llvm.loop !23

.loopexit164:                                     ; preds = %.outer134.peel.newph, %.outer134
  %.041.lcssa140.a = phi i1 [ %.041.ph136, %.outer134 ], [ true, %.outer134.peel.newph ]
  br label %.outer134, !llvm.loop !23

.loopexit165:                                     ; preds = %.outer134, %.outer134.peel.newph
  %.041.lcssa141 = phi i1 [ true, %.outer134.peel.newph ], [ %.041.ph136, %.outer134 ]
  br label %.outer123, !llvm.loop !23

.loopexit:                                        ; preds = %.outer134, %.outer134.peel.newph
  %i.l = call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.56, ptr noundef nonnull @.str.57, ptr noundef nonnull @.str.21) #24 ; 0 uses
  br label %bb.s

.loopexit161:                                     ; preds = %.outer134, %.outer134.peel.newph
  %.041.lcssa137 = phi i1 [ true, %.outer134.peel.newph ], [ %.041.ph136, %.outer134 ]
  %i.m = load i32, ptr @optind, align 4           ; 2 uses
  %i.n = add i32 %1, -2
  %i.o = icmp sgt i32 %i.m, %i.n
  br i1 %i.o, label %bb.c, label %bb.d

bb.c:                                             ; preds = %.loopexit161
  %i.p = call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.56, ptr noundef nonnull @.str.57, ptr noundef nonnull @.str.21) #24 ; 0 uses
  br label %bb.s

bb.d:                                             ; preds = %.loopexit161
  %i.q = sext i32 %i.m to i64
  %i.r = getelementptr inbounds [8 x i8], ptr %2, i64 %i.q
  %i.s = load ptr, ptr %i.r, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #24
  store i64 0, ptr %i.b, align 8, !annotation !11
  %i.t = call i32 @qemu_strtosz(ptr noundef %i.s, ptr noundef null, ptr noundef nonnull %i.b) #24 ; 2 uses
  %i.u = icmp slt i32 %i.t, 0
  %i.v = sext i32 %i.t to i64
  %i.w = load i64, ptr %i.b, align 8              ; 2 uses
  %i.x = icmp slt i64 %i.w, 0
  %..i = select i1 %i.x, i64 -34, i64 %i.w
  %.0.i63 = select i1 %i.u, i64 %i.v, i64 %..i    ; 8 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #24
  %i.y = icmp slt i64 %.0.i63, 0
  %i.z = load i32, ptr @optind, align 4           ; 2 uses
  br i1 %i.y, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.aa = sext i32 %i.z to i64
  %i.ab = getelementptr inbounds [8 x i8], ptr %2, i64 %i.aa
  %i.ac = load ptr, ptr %i.ab, align 8
  %switch.selectcmp.i = icmp eq i64 %.0.i63, -34
  %switch.select.i = select i1 %switch.selectcmp.i, ptr @.str.31, ptr @.str.32
  %switch.selectcmp3.i = icmp eq i64 %.0.i63, -22
  %switch.select4.i = select i1 %switch.selectcmp3.i, ptr @.str.30, ptr %switch.select.i
  %i.ad = call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull %switch.select4.i, ptr noundef %i.ac) #24 ; 0 uses
  %i.ae = trunc nsw i64 %.0.i63 to i32
  br label %bb.s

bb.f:                                             ; preds = %bb.d
  %i.af = add i32 %i.z, 1                         ; 3 uses
  store i32 %i.af, ptr @optind, align 4
  %i.ag = sub i32 %1, %i.af
  %i.ah = sext i32 %i.af to i64
  %i.ai = getelementptr inbounds [8 x i8], ptr %2, i64 %i.ah
  %i.aj = and i32 %.042.ph135, 8
  %i.ak = icmp ne i32 %i.aj, 0                    ; 2 uses
  %i.al = call fastcc ptr @create_iovec(ptr noundef %0, ptr noundef nonnull %5, ptr noundef %i.ai, i32 noundef %i.ag, i32 noundef 171, i1 noundef zeroext %i.ak) ; 4 uses
  %i.am = icmp eq ptr %i.al, null
  br i1 %i.am, label %bb.s, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.an = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %3) #24 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  store i32 2147483647, ptr %i.a, align 4
  %i.ao = call ptr @blk_aio_preadv(ptr noundef %0, i64 noundef range(i64 0, -9223372036854775808) %.0.i63, ptr noundef nonnull %5, i32 noundef range(i32 0, 16) %.042.ph135, ptr noundef nonnull @aio_rw_done, ptr noundef nonnull %i.a) #24 ; 0 uses
  %i.ap = load i32, ptr %i.a, align 4             ; 2 uses
  %i.aq = icmp eq i32 %i.ap, 2147483647
  br i1 %i.aq, label %.lr.ph.i, label %do_aio_readv.exit

.lr.ph.i:                                         ; preds = %bb.g, %.lr.ph.i
  call void @main_loop_wait(i32 noundef 0) #24
  %i.ar = load i32, ptr %i.a, align 4             ; 2 uses
  %i.as = icmp eq i32 %i.ar, 2147483647
  br i1 %i.as, label %.lr.ph.i, label %do_aio_readv.exit, !llvm.loop !24

do_aio_readv.exit:                                ; preds = %.lr.ph.i, %bb.g
  %.lcssa.i = phi i32 [ %i.ap, %bb.g ], [ %i.ar, %.lr.ph.i ] ; 3 uses
  %i.at = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 6 uses
  %i.au = load i64, ptr %i.at, align 8
  %i.av = icmp slt i32 %.lcssa.i, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  %i.aw = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %4) #24 ; 0 uses
  br i1 %i.av, label %bb.h, label %bb.i

bb.h:                                             ; preds = %do_aio_readv.exit
  %i.ax = sub i32 0, %.lcssa.i
  %i.ay = call ptr @strerror(i32 noundef %i.ax) #24
  %i.az = call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.59, ptr noundef %i.ay) #24 ; 0 uses
  br label %bb.q

bb.i:                                             ; preds = %do_aio_readv.exit
  br i1 %.044.ph131, label %bb.j, label %bb.m

bb.j:                                             ; preds = %bb.i
  %i.ba = load i64, ptr %i.at, align 8
  %i.bb = call noalias ptr @g_malloc(i64 noundef %i.ba) #26 ; 3 uses
  %i.bc = load i64, ptr %i.at, align 8            ; 3 uses
  %i.bd = trunc i32 %.046.ph130 to i8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 %i.bb, i8 noundef %i.bd, i64 noundef %i.bc, i1 noundef false) #24
  %bcmp = call i32 @bcmp(ptr nonnull %i.al, ptr nonnull %i.bb, i64 %i.bc)
  %.not62 = icmp eq i32 %bcmp, 0
  br i1 %.not62, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.be = call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.60, i64 noundef %.0.i63, i64 noundef %i.bc) #24 ; 0 uses
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.048 = phi i32 [ -22, %bb.k ], [ 0, %bb.j ]
  call void @g_free(ptr noundef nonnull %i.bb) #24
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.i
  %.149 = phi i32 [ %.048, %bb.l ], [ 0, %bb.i ]  ; 2 uses
  br i1 %.052.ph, label %bb.q, label %bb.n

bb.n:                                             ; preds = %bb.m
  br i1 %.050.ph124, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.bf = load i64, ptr %i.at, align 8
  call fastcc void @dump_buffer(ptr noundef nonnull %i.al, i64 noundef %.0.i63, i64 noundef %i.bf)
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.bg = load i64, ptr %4, align 8
  %i.bh = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.bi = load i64, ptr %i.bh, align 8
  %i.bj = load i64, ptr %3, align 8
  %i.bk = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.bl = load i64, ptr %i.bk, align 8
  %i.bm = sub i64 %i.bi, %i.bl                    ; 4 uses
  %i.bn = icmp slt i64 %i.bm, 0
  %i.bo = add nsw i64 %i.bm, 1000000000
  %.lobit.i = ashr i64 %i.bm, 63
  %.sroa.6.0.i = select i1 %i.bn, i64 %i.bo, i64 %i.bm
  %.sroa.01.0.i = sub i64 %i.bg, %i.bj
  %i.bp = add i64 %.sroa.01.0.i, %.lobit.i
  store i64 %i.bp, ptr %4, align 8
  store i64 %.sroa.6.0.i, ptr %i.bh, align 8
  %i.bq = load i64, ptr %i.at, align 8
  %sext = shl i64 %i.au, 32
  %i.br = ashr exact i64 %sext, 32
  call fastcc void @print_report(ptr noundef nonnull @.str.18, ptr noundef %4, i64 noundef %.0.i63, i64 noundef %i.bq, i64 noundef %i.br, i32 noundef 1, i1 noundef zeroext %.041.lcssa137)
  br label %bb.q

bb.q:                                             ; preds = %bb.m, %bb.p, %bb.h
  %.2 = phi i32 [ %.lcssa.i, %bb.h ], [ %.149, %bb.m ], [ %.149, %bb.p ]
  %i.bs = load i8, ptr @qemuio_misalign, align 1, !range !16, !noundef !17
  %i.bt = trunc nuw i8 %i.bs to i1                ; 2 uses
  %.0.idx.i = select i1 %i.bt, i64 -16, i64 0
  %.0.i64 = getelementptr inbounds i8, ptr %i.al, i64 %.0.idx.i ; 2 uses
  br i1 %i.ak, label %bb.r, label %qemu_io_free.exit

bb.r:                                             ; preds = %bb.q
  %i.bu = load i64, ptr %i.at, align 8            ; 2 uses
  %i.bv = add i64 %i.bu, 16
  %.06.i = select i1 %i.bt, i64 %i.bv, i64 %i.bu
  call void @blk_unregister_buf(ptr noundef %0, ptr noundef nonnull %.0.i64, i64 noundef %.06.i) #24
  br label %qemu_io_free.exit

qemu_io_free.exit:                                ; preds = %bb.q, %bb.r
  call void @qemu_vfree(ptr noundef nonnull %.0.i64) #24
  call void @qemu_iovec_destroy(ptr noundef nonnull %5) #24
  br label %bb.s

bb.s:                                             ; preds = %parse_pattern.exit.thread, %bb.f, %qemu_io_free.exit, %bb.e, %bb.c, %.loopexit
  %.0 = phi i32 [ -22, %.loopexit ], [ %.2, %qemu_io_free.exit ], [ -22, %bb.c ], [ %i.ae, %bb.e ], [ -22, %parse_pattern.exit.thread ], [ -22, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  ret i32 %.0
}

; Function Attrs: nounwind sspstrong uwtable
define internal void @readv_help() #0 {
bb.a:
  %i.a = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.63) #24 ; 0 uses
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc ptr @create_iovec(ptr noundef %0, ptr noundef %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3, i32 noundef range(i32 0, -2147483648) %4, i1 noundef zeroext %5) unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = sext i32 %3 to i64
  %i.c = tail call noalias ptr @g_malloc0_n(i64 noundef %i.b, i64 noundef 8) #28 ; 3 uses
  %i.d = icmp sgt i32 %3, 0                       ; 2 uses
  br i1 %i.d, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count = zext nneg i32 %3 to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.g
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.g ] ; 3 uses
  %.05369 = phi i64 [ 0, %.lr.ph.preheader ], [ %i.t, %bb.g ] ; 2 uses
  %i.e = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv
  %i.f = load ptr, ptr %i.e, align 8              ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  store i64 0, ptr %i.a, align 8, !annotation !11
  %i.g = call i32 @qemu_strtosz(ptr noundef %i.f, ptr noundef null, ptr noundef nonnull %i.a) #24 ; 2 uses
  %i.h = icmp slt i32 %i.g, 0
  %i.i = sext i32 %i.g to i64
  %i.j = load i64, ptr %i.a, align 8              ; 2 uses
  %i.k = icmp slt i64 %i.j, 0
  %..i = select i1 %i.k, i64 -34, i64 %i.j
  %.0.i = select i1 %i.h, i64 %i.i, i64 %..i      ; 7 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  %i.l = icmp slt i64 %.0.i, 0
  br i1 %i.l, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph
  %switch.selectcmp.i = icmp eq i64 %.0.i, -34
  %switch.select.i = select i1 %switch.selectcmp.i, ptr @.str.31, ptr @.str.32
  %switch.selectcmp3.i = icmp eq i64 %.0.i, -22
  %switch.select4.i = select i1 %switch.selectcmp3.i, ptr @.str.30, ptr %switch.select.i
  %i.m = call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull %switch.select4.i, ptr noundef %i.f) #24 ; 0 uses
  br label %.thread

bb.c:                                             ; preds = %.lr.ph
  %i.n = icmp samesign ugt i64 %.0.i, 2147483136
  br i1 %i.n, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.o = call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.61, ptr noundef %i.f, i64 noundef 2147483136) #24 ; 0 uses
  br label %.thread

bb.e:                                             ; preds = %bb.c
  %i.p = sub nuw nsw i64 2147483136, %.0.i
  %i.q = icmp ugt i64 %.05369, %i.p
  br i1 %i.q, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.r = call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.62, i64 noundef 2147483136) #24 ; 0 uses
  br label %.thread

bb.g:                                             ; preds = %bb.e
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv
  store i64 %.0.i, ptr %i.s, align 8
  %i.t = add nuw nsw i64 %.0.i, %.05369           ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !25

._crit_edge:                                      ; preds = %bb.g, %bb.a
  %.053.lcssa = phi i64 [ 0, %bb.a ], [ %i.t, %bb.g ]
  call void @qemu_iovec_init(ptr noundef %1, i32 noundef %3) #24
  %i.u = load i8, ptr @qemuio_misalign, align 1, !range !16, !noundef !17
  %i.v = shl nuw nsw i8 %i.u, 4
  %i.w = zext nneg i8 %i.v to i64
  %spec.select.i = add nuw nsw i64 %.053.lcssa, %i.w ; 3 uses
  %i.x = call ptr @blk_blockalign(ptr noundef %0, i64 noundef %spec.select.i) #24 ; 3 uses
  %i.y = trunc i32 %4 to i8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 %i.x, i8 noundef %i.y, i64 noundef %spec.select.i, i1 noundef false) #24
  br i1 %5, label %bb.h, label %qemu_io_alloc.exit

bb.h:                                             ; preds = %._crit_edge
  %i.z = call zeroext i1 @blk_register_buf(ptr noundef %0, ptr noundef nonnull %i.x, i64 noundef %spec.select.i, ptr noundef nonnull @error_abort) #24 ; 0 uses
  br label %qemu_io_alloc.exit

qemu_io_alloc.exit:                               ; preds = %._crit_edge, %bb.h
  %i.aa = load i8, ptr @qemuio_misalign, align 1, !range !16, !noundef !17
  %i.ab = shl nuw nsw i8 %i.aa, 4
  %spec.select12.idx.i = zext nneg i8 %i.ab to i64
  %spec.select12.i = getelementptr inbounds nuw i8, ptr %i.x, i64 %spec.select12.idx.i ; 3 uses
  br i1 %i.d, label %.lr.ph73.preheader, label %.thread

.lr.ph73.preheader:                               ; preds = %qemu_io_alloc.exit
  %wide.trip.count85 = zext nneg i32 %3 to i64
  br label %.lr.ph73

.lr.ph73:                                         ; preds = %.lr.ph73.preheader, %.lr.ph73
  %indvars.iv82 = phi i64 [ 0, %.lr.ph73.preheader ], [ %indvars.iv.next83, %.lr.ph73 ] ; 2 uses
  %.05171 = phi ptr [ %spec.select12.i, %.lr.ph73.preheader ], [ %i.af, %.lr.ph73 ] ; 2 uses
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv82 ; 2 uses
  %i.ad = load i64, ptr %i.ac, align 8
  call void @qemu_iovec_add(ptr noundef %1, ptr noundef %.05171, i64 noundef %i.ad) #24
  %i.ae = load i64, ptr %i.ac, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %.05171, i64 %i.ae
  %indvars.iv.next83 = add nuw nsw i64 %indvars.iv82, 1 ; 2 uses
  %exitcond86.not = icmp eq i64 %indvars.iv.next83, %wide.trip.count85
  br i1 %exitcond86.not, label %.thread, label %.lr.ph73, !llvm.loop !26

.thread:                                          ; preds = %.lr.ph73, %qemu_io_alloc.exit, %bb.f, %bb.d, %bb.b
  %.052 = phi ptr [ null, %bb.f ], [ null, %bb.b ], [ null, %bb.d ], [ %spec.select12.i, %qemu_io_alloc.exit ], [ %spec.select12.i, %.lr.ph73 ]
  call void @g_free(ptr noundef %i.c) #24
  ret ptr %.052
}

declare void @qemu_iovec_destroy(ptr noundef) local_unnamed_addr #3

declare void @qemu_iovec_init(ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @qemu_iovec_add(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

declare ptr @blk_aio_preadv(ptr noundef, i64 noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(argmem: write) uwtable
define internal void @aio_rw_done(ptr nofree noundef writeonly captures(none) initializes((0, 4)) %0, i32 noundef %1) #13 {
bb.a:
  store i32 %1, ptr %0, align 4
  ret void
}

declare void @main_loop_wait(i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind sspstrong uwtable
define internal range(i32 -2147483648, 1) i32 @write_f(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 6 uses
  %3 = alloca %struct.timespec, align 8           ; 7 uses
  %4 = alloca %struct.timespec, align 8           ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i64 16, i1 false), !annotation !11
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, i8 0, i64 16, i1 false), !annotation !11
  br label %bb.b
end_hunk_0
