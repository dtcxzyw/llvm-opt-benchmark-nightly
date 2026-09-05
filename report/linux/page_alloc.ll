Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/linux/original/page_alloc?download=true
inline.NumInlined: 954
inline.NumDeleted: 320
loop-unroll.NumCompletelyUnrolled: 13
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 16
begin_hunk_0_@__free_one_page:bb.a
  br label %bb.ac

bb.z:                                             ; preds = %set_buddy_order.exit
  %i.cm = icmp ugt i32 %.062.lcssa, 8
  br i1 %i.cm, label %buddy_merge_likely.exit.thread, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.cn = sub i64 %.286, %.059.lcssa
  %i.co = getelementptr [64 x i8], ptr %.058.lcssa, i64 %i.cn ; 2 uses
  %i.cp = shl nuw nsw i32 2, %.062.lcssa
  %i.cq = zext nneg i32 %i.cp to i64
  %i.cr = xor i64 %.286, %i.cq
  %i.cs = sub i64 %i.cr, %.286
  %i.ct = getelementptr [64 x i8], ptr %i.co, i64 %i.cs ; 4 uses
  %i.cu = getelementptr i8, ptr %i.ct, i64 48
  %i.cv = load i32, ptr %i.cu, align 16
  %.mask.i.i.i.i = and i32 %i.cv, -16777216
  %.not.i.i.i80 = icmp eq i32 %.mask.i.i.i.i, -268435456
  br i1 %.not.i.i.i80, label %bb.ab, label %buddy_merge_likely.exit.thread

bb.ab:                                            ; preds = %bb.aa
  %i.cw = add nuw nsw i32 %.062.lcssa, 1
  %i.cx = getelementptr i8, ptr %i.ct, i64 40
  %.val.i.i.i = load i64, ptr %i.cx, align 8
  %i.cy = trunc i64 %.val.i.i.i to i32
  %.not6.i.i.i = icmp eq i32 %i.cw, %i.cy
  br i1 %.not6.i.i.i, label %buddy_merge_likely.exit, label %buddy_merge_likely.exit.thread

buddy_merge_likely.exit.thread:                   ; preds = %bb.z, %bb.ab, %bb.aa
  %i.cz = getelementptr i8, ptr %2, i64 192
  %i.da = getelementptr [72 x i8], ptr %i.cz, i64 %i.ca ; 2 uses
  %i.db = shl nuw i32 1, %.062.lcssa
  %i.dc = getelementptr i8, ptr %.058.lcssa, i64 8
  %i.dd = sext i32 %4 to i64
  %i.de = getelementptr [16 x i8], ptr %i.da, i64 %i.dd
  %i.df = getelementptr i8, ptr %.058.lcssa, i64 16
  br label %bb.ad

buddy_merge_likely.exit:                          ; preds = %bb.ab
  %.val9.i.i.i = load i64, ptr %i.co, align 16
  %.val8.i.i.i = load i64, ptr %i.ct, align 16
  %.not7.unshifted.i.i.i = xor i64 %.val8.i.i.i, %.val9.i.i.i
  %.not7.unshifted.i.fr.i.i = freeze i64 %.not7.unshifted.i.i.i
  %.not7.i.i.i = icmp ult i64 %.not7.unshifted.i.fr.i.i, 72057594037927936
  %i.dg = icmp ne ptr %i.ct, null
  %i.dh = and i1 %i.dg, %.not7.i.i.i
  %i.di = getelementptr i8, ptr %2, i64 192
  %i.dj = getelementptr [72 x i8], ptr %i.di, i64 %i.ca ; 3 uses
  %i.dk = shl nuw nsw i32 1, %.062.lcssa          ; 2 uses
  %i.dl = getelementptr i8, ptr %.058.lcssa, i64 8 ; 2 uses
  %i.dm = sext i32 %4 to i64
  %i.dn = getelementptr [16 x i8], ptr %i.dj, i64 %i.dm ; 2 uses
  %i.do = getelementptr i8, ptr %.058.lcssa, i64 16 ; 2 uses
  br i1 %i.dh, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %buddy_merge_likely.exit.thread102, %buddy_merge_likely.exit
  %i.dp = phi ptr [ %i.cl, %buddy_merge_likely.exit.thread102 ], [ %i.do, %buddy_merge_likely.exit ]
  %i.dq = phi ptr [ %i.ck, %buddy_merge_likely.exit.thread102 ], [ %i.dn, %buddy_merge_likely.exit ] ; 2 uses
  %i.dr = phi ptr [ %i.ci, %buddy_merge_likely.exit.thread102 ], [ %i.dl, %buddy_merge_likely.exit ] ; 3 uses
  %i.ds = phi i32 [ %i.ch, %buddy_merge_likely.exit.thread102 ], [ %i.dk, %buddy_merge_likely.exit ]
  %i.dt = phi ptr [ %i.cg, %buddy_merge_likely.exit.thread102 ], [ %i.dj, %buddy_merge_likely.exit ]
  %i.du = getelementptr i8, ptr %i.dq, i64 8      ; 2 uses
  %i.dv = load ptr, ptr %i.du, align 8            ; 2 uses
  store ptr %i.dr, ptr %i.du, align 8
  store ptr %i.dq, ptr %i.dr, align 8
  store ptr %i.dv, ptr %i.dp, align 8
  store volatile ptr %i.dr, ptr %i.dv, align 8
  br label %bb.ae

bb.ad:                                            ; preds = %buddy_merge_likely.exit.thread, %buddy_merge_likely.exit
  %i.dw = phi ptr [ %i.df, %buddy_merge_likely.exit.thread ], [ %i.do, %buddy_merge_likely.exit ]
  %i.dx = phi ptr [ %i.de, %buddy_merge_likely.exit.thread ], [ %i.dn, %buddy_merge_likely.exit ] ; 3 uses
  %i.dy = phi ptr [ %i.dc, %buddy_merge_likely.exit.thread ], [ %i.dl, %buddy_merge_likely.exit ] ; 3 uses
  %i.dz = phi i32 [ %i.db, %buddy_merge_likely.exit.thread ], [ %i.dk, %buddy_merge_likely.exit ]
  %i.ea = phi ptr [ %i.da, %buddy_merge_likely.exit.thread ], [ %i.dj, %buddy_merge_likely.exit ]
  %i.eb = load ptr, ptr %i.dx, align 8            ; 2 uses
  %i.ec = getelementptr i8, ptr %i.eb, i64 8
  store ptr %i.dy, ptr %i.ec, align 8
  store ptr %i.eb, ptr %i.dy, align 8
  store ptr %i.dx, ptr %i.dw, align 8
  store volatile ptr %i.dy, ptr %i.dx, align 8
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  %i.ed = phi i32 [ %i.dz, %bb.ad ], [ %i.ds, %bb.ac ]
  %i.ee = phi ptr [ %i.ea, %bb.ad ], [ %i.dt, %bb.ac ]
  %i.ef = getelementptr i8, ptr %i.ee, i64 64     ; 2 uses
  %i.eg = load i64, ptr %i.ef, align 8
  %i.eh = add i64 %i.eg, 1
  store i64 %i.eh, ptr %i.ef, align 8
  %i.ei = icmp ugt i32 %.062.lcssa, 8
  br i1 %i.ei, label %bb.af, label %account_freepages.exit75.thread95

bb.af:                                            ; preds = %bb.ae
  %i.ej = sext i32 %i.ed to i64
  tail call void @__mod_zone_page_state(ptr noundef %2, i32 noundef 1, i64 noundef %i.ej) #23
  br label %account_freepages.exit75.thread95

account_freepages.exit75.thread95:                ; preds = %bb.af, %bb.ae, %.loopexit, %bb.o
  ret void
}

; Function Attrs: fn_ret_thunk_extern nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong memory(argmem: readwrite, inaccessiblemem: readwrite)
define dso_local noundef zeroext i1 @__zone_watermark_ok(ptr nofree noundef captures(address) %0, i32 noundef %1, i64 noundef %2, i32 noundef %3, i32 noundef %4, i64 noundef %5) local_unnamed_addr #7 align 16 prefalign(16) {
bb.a:
  %notmask.i = shl nsw i32 -1, %1
  %i.a = xor i32 %notmask.i, -1
  %i.b = zext nneg i32 %i.a to i64                ; 3 uses
  %i.c = and i32 %4, 568
  %.not.i = icmp eq i32 %i.c, 0
  br i1 %.not.i, label %__zone_watermark_unusable_free.exit.thread, label %bb.b, !prof !32

__zone_watermark_unusable_free.exit.thread:       ; preds = %bb.a
  %i.d = getelementptr i8, ptr %0, i64 48
  %i.e = load volatile i64, ptr %i.d, align 16
  %i.f = add i64 %i.e, %i.b
  br label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.g = and i32 %4, 32
  %.not39 = icmp eq i32 %i.g, 0
  br i1 %.not39, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.neg = sdiv i64 %2, -2
  %i.h = add i64 %.neg, %2                        ; 3 uses
  %i.i = and i32 %4, 16
  %.not40 = icmp eq i32 %i.i, 0
  br i1 %.not40, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.neg41 = sdiv i64 %i.h, -4
  %i.j = add i64 %.neg41, %i.h
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d, %bb.b
  %.035 = phi i64 [ %i.j, %bb.d ], [ %i.h, %bb.c ], [ %2, %bb.b ] ; 3 uses
  %i.k = and i32 %4, 8
  %.not42 = icmp eq i32 %i.k, 0
  br i1 %.not42, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %.neg43 = sdiv i64 %.035, -2
  %i.l = add i64 %.neg43, %.035
  br label %bb.g

bb.g:                                             ; preds = %__zone_watermark_unusable_free.exit.thread, %bb.e, %bb.f
  %.pn = phi i64 [ %i.b, %bb.f ], [ %i.b, %bb.e ], [ %i.f, %__zone_watermark_unusable_free.exit.thread ]
  %.1 = phi i64 [ %i.l, %bb.f ], [ %.035, %bb.e ], [ %2, %__zone_watermark_unusable_free.exit.thread ]
  %i.m = sub i64 %5, %.pn
  %i.n = getelementptr i8, ptr %0, i64 56
  %i.o = sext i32 %3 to i64
  %i.p = getelementptr [8 x i8], ptr %i.n, i64 %i.o
  %i.q = load i64, ptr %i.p, align 8
  %i.r = add i64 %i.q, %.1
  %.not44 = icmp sgt i64 %i.m, %i.r
  br i1 %.not44, label %bb.h, label %.thread

bb.h:                                             ; preds = %bb.g
  %.not45 = icmp eq i32 %1, 0
  br i1 %.not45, label %.thread, label %.preheader50

.preheader50:                                     ; preds = %bb.h
  %i.s = icmp slt i32 %1, 11
  br i1 %i.s, label %.lr.ph, label %.thread

.lr.ph:                                           ; preds = %.preheader50
  %i.t = getelementptr i8, ptr %0, i64 192        ; 2 uses
  %i.u = and i32 %4, 520
  %.not47 = icmp eq i32 %i.u, 0
  %i.v = sext i32 %1 to i64                       ; 2 uses
  br i1 %.not47, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %.loopexit
  %indvars.iv65 = phi i64 [ %indvars.iv.next66, %.loopexit ], [ %i.v, %.lr.ph ] ; 2 uses
  %i.w = getelementptr [72 x i8], ptr %i.t, i64 %indvars.iv65 ; 5 uses
  %i.x = getelementptr i8, ptr %i.w, i64 64
  %i.y = load i64, ptr %i.x, align 8
  %.not46.us = icmp eq i64 %i.y, 0
  br i1 %.not46.us, label %.loopexit, label %.preheader.us.preheader

.preheader.us.preheader:                          ; preds = %.lr.ph.split.us
  %i.z = load volatile ptr, ptr %i.w, align 8
  %i.aa = icmp eq ptr %i.z, %i.w
  br i1 %i.aa, label %.preheader.us.1, label %.thread

.preheader.us.1:                                  ; preds = %.preheader.us.preheader
  %i.ab = getelementptr i8, ptr %i.w, i64 16      ; 2 uses
  %i.ac = load volatile ptr, ptr %i.ab, align 8
  %i.ad = icmp eq ptr %i.ac, %i.ab
  br i1 %i.ad, label %.preheader.us.2, label %.thread

.preheader.us.2:                                  ; preds = %.preheader.us.1
  %i.ae = getelementptr i8, ptr %i.w, i64 32      ; 2 uses
  %i.af = load volatile ptr, ptr %i.ae, align 8
  %i.ag = icmp eq ptr %i.af, %i.ae
  br i1 %i.ag, label %.loopexit, label %.thread

.loopexit:                                        ; preds = %.preheader.us.2, %.lr.ph.split.us
  %indvars.iv.next66 = add nsw i64 %indvars.iv65, 1 ; 2 uses
  %6 = and i64 %indvars.iv.next66, 4294967295
  %exitcond68.not = icmp eq i64 %6, 11
  br i1 %exitcond68.not, label %.thread, label %.lr.ph.split.us, !llvm.loop !176

.lr.ph.split:                                     ; preds = %.lr.ph, %bb.j
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.j ], [ %i.v, %.lr.ph ] ; 2 uses
  %i.ah = getelementptr [72 x i8], ptr %i.t, i64 %indvars.iv ; 6 uses
  %i.ai = getelementptr i8, ptr %i.ah, i64 64
  %i.aj = load i64, ptr %i.ai, align 8
  %.not46 = icmp eq i64 %i.aj, 0
  br i1 %.not46, label %bb.j, label %.preheader.preheader

.preheader.preheader:                             ; preds = %.lr.ph.split
  %i.ak = load volatile ptr, ptr %i.ah, align 8
  %i.al = icmp eq ptr %i.ak, %i.ah
  br i1 %i.al, label %.preheader.1, label %.thread

.preheader.1:                                     ; preds = %.preheader.preheader
  %i.am = getelementptr i8, ptr %i.ah, i64 16     ; 2 uses
  %i.an = load volatile ptr, ptr %i.am, align 8
  %i.ao = icmp eq ptr %i.an, %i.am
  br i1 %i.ao, label %.preheader.2, label %.thread

.preheader.2:                                     ; preds = %.preheader.1
  %i.ap = getelementptr i8, ptr %i.ah, i64 32     ; 2 uses
  %i.aq = load volatile ptr, ptr %i.ap, align 8
  %i.ar = icmp eq ptr %i.aq, %i.ap
  br i1 %i.ar, label %bb.i, label %.thread

bb.i:                                             ; preds = %.preheader.2
  %i.as = getelementptr i8, ptr %i.ah, i64 48     ; 2 uses
  %i.at = load volatile ptr, ptr %i.as, align 8
  %i.au = icmp eq ptr %i.at, %i.as
  br i1 %i.au, label %bb.j, label %.thread

bb.j:                                             ; preds = %bb.i, %.lr.ph.split
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %7 = and i64 %indvars.iv.next, 4294967295
  %exitcond.not = icmp eq i64 %7, 11
  br i1 %exitcond.not, label %.thread, label %.lr.ph.split, !llvm.loop !176

.thread:                                          ; preds = %bb.j, %bb.i, %.preheader.preheader, %.preheader.1, %.preheader.2, %.loopexit, %.preheader.us.preheader, %.preheader.us.1, %.preheader.us.2, %.preheader50, %bb.h, %bb.g
  %.2 = phi i1 [ false, %bb.g ], [ true, %.preheader.us.preheader ], [ true, %bb.h ], [ false, %.preheader50 ], [ true, %.preheader.us.1 ], [ true, %.preheader.us.2 ], [ false, %.loopexit ], [ true, %bb.i ], [ false, %bb.j ], [ true, %.preheader.1 ], [ true, %.preheader.2 ], [ true, %.preheader.preheader ]
  ret i1 %.2
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local void @warn_alloc(i32 noundef %0, ptr noundef %1, ptr noundef %2, ...) local_unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %i.a = alloca i32, align 4                      ; 3 uses
  %3 = alloca %struct.va_format, align 8          ; 5 uses
  %4 = alloca [1 x %struct.__va_list_tag], align 16 ; 6 uses
  store i32 %0, ptr %i.a, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #21
  %i.b = and i32 %0, 8192
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.b, label %has_managed_dma.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @___ratelimit(ptr noundef nonnull @warn_alloc.nopage_rs, ptr noundef nonnull @__func__.warn_alloc) #23
  %.not4 = icmp eq i32 %i.c, 0
  br i1 %.not4, label %has_managed_dma.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %4, i8 0, i64 24, i1 false), !annotation !78
  %i.d = and i32 %0, 1
  %.not5 = icmp eq i32 %i.d, 0
  br i1 %.not5, label %has_managed_dma.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = tail call ptr @first_online_pgdat() #23  ; 2 uses
  %.not6.not.i.i = icmp eq ptr %i.e, null
  br i1 %.not6.not.i.i, label %has_managed_dma.exit.thread, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.d, %bb.e
  %.07.i.i = phi ptr [ %i.h, %bb.e ], [ %i.e, %bb.d ] ; 2 uses
  %i.f = getelementptr i8, ptr %.07.i.i, i64 144
  %i.g = load volatile i64, ptr %i.f, align 8
  %.not5.not.i.not.i = icmp eq i64 %i.g, 0
  br i1 %.not5.not.i.not.i, label %bb.e, label %has_managed_dma.exit

bb.e:                                             ; preds = %.lr.ph.i.i
  %i.h = tail call ptr @next_online_pgdat(ptr noundef nonnull %.07.i.i) #23 ; 2 uses
  %.not.not.i.i = icmp eq ptr %i.h, null
  br i1 %.not.not.i.i, label %has_managed_dma.exit.thread, label %.lr.ph.i.i, !llvm.loop !4

has_managed_dma.exit:                             ; preds = %.lr.ph.i.i, %bb.c
  call void @llvm.va_start.p0(ptr nonnull %4)
  store ptr %2, ptr %3, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %4, ptr %i.i, align 8
  %i.j = call i64 asm "movq %gs:${1:a}, $0", "=r,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @current_task) #24, !srcloc !64
  %i.k = inttoptr i64 %i.j to ptr                 ; 3 uses
  %i.l = getelementptr i8, ptr %i.k, i64 2008
  %.not.i = icmp eq ptr %1, null
  %i.m = select i1 %.not.i, i32 0, i32 64
  %i.n = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef %i.l, ptr noundef nonnull %3, i32 noundef %0, ptr noundef nonnull %i.a, i32 noundef %i.m, ptr noundef %1) #26 ; 0 uses
  call void @llvm.va_end.p0(ptr nonnull %4)
  call void @cpuset_print_current_mems_allowed() #23
  %i.o = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11) #26 ; 0 uses
  call void @dump_stack() #26
  %i.p = load i32, ptr %i.a, align 4              ; 3 uses
  %i.q = and i32 %i.p, 524288
  %.not.i6 = icmp eq i32 %i.q, 0
  br i1 %.not.i6, label %bb.f, label %warn_alloc_show_mem.exit

bb.f:                                             ; preds = %has_managed_dma.exit
  %i.r = getelementptr i8, ptr %i.k, i64 2096
  %.val.i = load ptr, ptr %i.r, align 16
  %i.s = getelementptr i8, ptr %.val.i, i64 1064
  %.val.val.i = load ptr, ptr %i.s, align 8
  %.not9.i = icmp eq ptr %.val.val.i, null
  br i1 %.not9.i, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.t = getelementptr i8, ptr %i.k, i64 44
  %i.u = load i32, ptr %i.t, align 4
  %i.v = and i32 %i.u, 2052
  %.not6.i = icmp eq i32 %i.v, 0
  br i1 %.not6.i, label %warn_alloc_show_mem.exit, label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  br label %warn_alloc_show_mem.exit

warn_alloc_show_mem.exit:                         ; preds = %has_managed_dma.exit, %bb.g, %bb.h
  %.0.i = phi i32 [ 1, %has_managed_dma.exit ], [ 0, %bb.h ], [ 1, %bb.g ]
  %i.w = call i32 asm "movl %gs:$1, $0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i32) @__preempt_count) #25, !srcloc !79
  %i.x = and i32 %i.w, 16711936
  %.not7.i = icmp ne i32 %i.x, 0
  %i.y = and i32 %i.p, 1024
  %.not8.i = icmp eq i32 %i.y, 0
  %or.cond.i = or i1 %.not8.i, %.not7.i
  %.1.i = select i1 %or.cond.i, i32 0, i32 %.0.i
  %i.z = shl i32 %i.p, 1
  %i.aa = and i32 %i.z, 30
  %i.ab = lshr i32 20054306, %i.aa
  %i.ac = and i32 %i.ab, 3
  call void @__show_mem(i32 noundef %.1.i, ptr noundef %1, i32 noundef %i.ac) #23
  br label %has_managed_dma.exit.thread

has_managed_dma.exit.thread:                      ; preds = %bb.e, %bb.d, %bb.a, %bb.b, %warn_alloc_show_mem.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #8

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #9

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start.p0(ptr) #10

; Function Attrs: cold noredzone null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #11

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end.p0(ptr) #10

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @cpuset_print_current_mems_allowed() local_unnamed_addr #9

; Function Attrs: cold noredzone null_pointer_is_valid
declare dso_local void @dump_stack() local_unnamed_addr #11

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal fastcc void @warn_alloc_show_mem(i32 noundef %0, ptr noundef %1) unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %i.a = and i32 %0, 524288
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i64 asm "movq %gs:${1:a}, $0", "=r,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @current_task) #24, !srcloc !64
  %i.c = inttoptr i64 %i.b to ptr                 ; 2 uses
  %i.d = getelementptr i8, ptr %i.c, i64 2096
  %.val = load ptr, ptr %i.d, align 16
  %i.e = getelementptr i8, ptr %.val, i64 1064
  %.val.val = load ptr, ptr %i.e, align 8
  %.not9 = icmp eq ptr %.val.val, null
  br i1 %.not9, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr i8, ptr %i.c, i64 44
  %i.g = load i32, ptr %i.f, align 4
  %i.h = and i32 %i.g, 2052
  %.not6 = icmp eq i32 %i.h, 0
  br i1 %.not6, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d, %bb.a
  %.0 = phi i32 [ 1, %bb.a ], [ 0, %bb.d ], [ 1, %bb.c ]
  %i.i = tail call i32 asm "movl %gs:$1, $0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i32) @__preempt_count) #25, !srcloc !79
  %i.j = and i32 %i.i, 16711936
  %.not7 = icmp ne i32 %i.j, 0
  %i.k = and i32 %0, 1024
  %.not8 = icmp eq i32 %i.k, 0
  %or.cond = or i1 %.not8, %.not7
  %.1 = select i1 %or.cond, i32 0, i32 %.0
  %i.l = shl i32 %0, 1
  %i.m = and i32 %i.l, 30
  %i.n = lshr i32 20054306, %i.m
  %i.o = and i32 %i.n, 3
  tail call void @__show_mem(i32 noundef %.1, ptr noundef %1, i32 noundef %i.o) #23
  ret void
}

; Function Attrs: fn_ret_thunk_extern nofree noredzone nounwind null_pointer_is_valid sspstrong memory(read)
define dso_local noundef zeroext i1 @gfp_pfmemalloc_allowed(i32 noundef %0) local_unnamed_addr #12 align 16 prefalign(16) {
bb.a:
  %i.a = and i32 %0, 524288
  %.not.i = icmp eq i32 %i.a, 0
  br i1 %.not.i, label %bb.b, label %__gfp_pfmemalloc_flags.exit, !prof !32

bb.b:                                             ; preds = %bb.a
  %i.b = and i32 %0, 131072
  %.not3.i = icmp eq i32 %i.b, 0
  br i1 %.not3.i, label %bb.c, label %__gfp_pfmemalloc_flags.exit

bb.c:                                             ; preds = %bb.b
  %i.c = tail call i32 asm "movl %gs:$1, $0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i32) @__preempt_count) #25, !srcloc !79 ; 2 uses
  %i.d = and i32 %i.c, 256
  %.not4.i = icmp eq i32 %i.d, 0
  br i1 %.not4.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = tail call i64 asm "movq %gs:${1:a}, $0", "=r,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @current_task) #24, !srcloc !64
  %i.f = inttoptr i64 %i.e to ptr
  %i.g = getelementptr i8, ptr %i.f, i64 44
  %i.h = load i32, ptr %i.g, align 4
  %i.i = and i32 %i.h, 2048
  %.not5.i = icmp eq i32 %i.i, 0
  br i1 %.not5.i, label %bb.e, label %__gfp_pfmemalloc_flags.exit

end_hunk_0
