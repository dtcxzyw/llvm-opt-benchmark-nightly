Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/linux/original/pci_link?download=true
inline.NumInlined: 25
inline.NumDeleted: 16
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@acpi_irq_penalty_init:bb.a
  %.027 = phi ptr [ %.0, %.loopexit ], [ %.025, %bb.a ] ; 4 uses
  %i.a = getelementptr i8, ptr %.027, i64 31
  %i.b = load i8, ptr %i.a, align 1               ; 3 uses
  %.not22 = icmp eq i8 %i.b, 0
  br i1 %.not22, label %bb.f, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %.rhs.trunc = zext i8 %i.b to i16
  %i.c = udiv i16 256, %.rhs.trunc
  %.zext = zext nneg i16 %i.c to i32
  %i.d = getelementptr i8, ptr %.027, i64 32
  %wide.trip.count = zext i8 %i.b to i64
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.e
  %indvars.iv = phi i64 [ 0, %bb.b ], [ %indvars.iv.next, %bb.e ] ; 2 uses
  %i.e = getelementptr [4 x i8], ptr %i.d, i64 %indvars.iv
  %i.f = load i32, ptr %i.e, align 4              ; 2 uses
  %i.g = icmp ult i32 %i.f, 16
  br i1 %i.g, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.h = zext nneg i32 %i.f to i64
  %i.i = getelementptr [4 x i8], ptr @acpi_isa_irq_penalty, i64 %i.h ; 2 uses
  %i.j = load i32, ptr %i.i, align 4
  %i.k = add i32 %i.j, %.zext
  store i32 %i.k, ptr %i.i, align 4
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %bb.c, !llvm.loop !11

bb.f:                                             ; preds = %.lr.ph
  %i.l = getelementptr i8, ptr %.027, i64 24
  %i.m = load i32, ptr %i.l, align 8              ; 2 uses
  %i.n = add i32 %i.m, -1
  %or.cond = icmp ult i32 %i.n, 15
  br i1 %or.cond, label %bb.g, label %.loopexit

bb.g:                                             ; preds = %bb.f
  %i.o = zext nneg i32 %i.m to i64
  %i.p = getelementptr [4 x i8], ptr @acpi_isa_irq_penalty, i64 %i.o ; 2 uses
  %i.q = load i32, ptr %i.p, align 4
  %i.r = add i32 %i.q, 256
  store i32 %i.r, ptr %i.p, align 4
  br label %.loopexit

.loopexit:                                        ; preds = %bb.e, %bb.g, %bb.f
  %.0 = load ptr, ptr %.027, align 8              ; 2 uses
  %.not = icmp eq ptr %.0, @acpi_link_list
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !12

._crit_edge:                                      ; preds = %.loopexit, %bb.a
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local range(i32 -19, 1) i32 @acpi_pci_link_allocate_irq(ptr noundef %0, i32 noundef %1, ptr nofree noundef writeonly captures(address_is_null) %2, ptr nofree noundef writeonly captures(address_is_null) %3, ptr nofree noundef writeonly captures(address_is_null) %4, ptr nofree noundef writeonly captures(none) %5) local_unnamed_addr #2 align 16 prefalign(16) {
bb.a:
  %i.a = tail call ptr @acpi_fetch_acpi_dev(ptr noundef %0) #14 ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ptr, ptr, ...) @acpi_handle_printk(ptr noundef nonnull @.str, ptr noundef %0, ptr noundef nonnull @.str.1) #14
  br label %bb.ba

bb.c:                                             ; preds = %bb.a
  %i.b = getelementptr i8, ptr %i.a, i64 600
  %.val = load ptr, ptr %i.b, align 8             ; 14 uses
  %.not30 = icmp eq ptr %.val, null
  br i1 %.not30, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, ptr, ptr, ...) @acpi_handle_printk(ptr noundef nonnull @.str, ptr noundef %0, ptr noundef nonnull @.str.2) #14
  br label %bb.ba

bb.e:                                             ; preds = %bb.c
  %.not31 = icmp eq i32 %1, 0
  br i1 %.not31, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void (ptr, ptr, ptr, ...) @acpi_handle_printk(ptr noundef nonnull @.str, ptr noundef %0, ptr noundef nonnull @.str.3, i32 noundef %1) #14
  br label %bb.ba

bb.g:                                             ; preds = %bb.e
  tail call void @mutex_lock(ptr noundef nonnull @acpi_link_lock) #14
  %i.c = getelementptr i8, ptr %.val, i64 16      ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = getelementptr i8, ptr %i.d, i64 8
  %i.f = load ptr, ptr %i.e, align 8              ; 3 uses
  %i.g = getelementptr i8, ptr %.val, i64 24      ; 8 uses
  %i.h = getelementptr i8, ptr %.val, i64 96      ; 3 uses
  %i.i = load i8, ptr %i.h, align 8
  %i.j = and i8 %i.i, 1
  %.not.i = icmp eq i8 %i.j, 0
  br i1 %.not.i, label %.preheader.i, label %bb.h

.preheader.i:                                     ; preds = %bb.g
  %i.k = getelementptr i8, ptr %.val, i64 31      ; 2 uses
  %i.l = load i8, ptr %i.k, align 1               ; 6 uses
  %i.m = zext i8 %i.l to i32
  %.not113.i = icmp eq i8 %i.l, 0
  br i1 %.not113.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader.i
  %i.n = load i32, ptr %i.g, align 8
  %i.o = getelementptr i8, ptr %.val, i64 32
  %wide.trip.count.i = zext i8 %i.l to i64
  br label %bb.j

bb.h:                                             ; preds = %bb.g
  %i.p = getelementptr i8, ptr %.val, i64 100
  %i.q = load i32, ptr %i.p, align 4
  %i.r = icmp eq i32 %i.q, 0
  br i1 %i.r, label %bb.i, label %bb.ar

bb.i:                                             ; preds = %bb.h
  %i.s = load i32, ptr %i.g, align 8
  %i.t = tail call fastcc i32 @acpi_pci_link_set(ptr noundef nonnull %.val, i32 noundef %i.s) #15, !srcloc !17 ; 0 uses
  br label %bb.ar

bb.j:                                             ; preds = %bb.k, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.k ] ; 3 uses
  %i.u = getelementptr [4 x i8], ptr %i.o, i64 %indvars.iv.i
  %i.v = load i32, ptr %i.u, align 4
  %i.w = icmp eq i32 %i.n, %i.v
  br i1 %i.w, label %._crit_edge.loopexit.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %._crit_edge.thread.i, label %bb.j, !llvm.loop !13

._crit_edge.loopexit.i:                           ; preds = %bb.j
  %i.x = trunc nuw nsw i64 %indvars.iv.i to i32
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.loopexit.i, %.preheader.i
  %.0.lcssa.i = phi i32 [ 0, %.preheader.i ], [ %i.x, %._crit_edge.loopexit.i ]
  %i.y = icmp eq i32 %.0.lcssa.i, %i.m
  br i1 %i.y, label %._crit_edge.thread.i, label %bb.m

._crit_edge.thread.i:                             ; preds = %bb.k, %._crit_edge.i
  %i.z = load i32, ptr @acpi_strict, align 4
  %.not44.i = icmp eq i32 %i.z, 0
  br i1 %.not44.i, label %.thread.i, label %bb.l

bb.l:                                             ; preds = %._crit_edge.thread.i
  %i.aa = load i32, ptr %i.g, align 8
  tail call void (ptr, ptr, ptr, ...) @acpi_handle_printk(ptr noundef nonnull @.str.7, ptr noundef %i.f, ptr noundef nonnull @.str.8, i32 noundef %i.aa) #14
  %.pre.pre.i = load i8, ptr %i.k, align 1
  br label %.thread.i

.thread.i:                                        ; preds = %bb.l, %._crit_edge.thread.i
  %.pre.i = phi i8 [ %i.l, %._crit_edge.thread.i ], [ %.pre.pre.i, %bb.l ]
  store i32 0, ptr %i.g, align 8
  br label %.thread141.i

bb.m:                                             ; preds = %._crit_edge.i
  %.pr.i = load i32, ptr %i.g, align 8            ; 3 uses
  %.not45.i = icmp eq i32 %.pr.i, 0
  br i1 %.not45.i, label %.thread141.i, label %bb.n

.thread141.i:                                     ; preds = %bb.m, %.thread.i
  %i.ab = phi i8 [ %.pre.i, %.thread.i ], [ %i.l, %bb.m ] ; 2 uses
  %i.ac = zext i8 %i.ab to i64
  %i.ad = getelementptr i8, ptr %.val, i64 28
  %i.ae = getelementptr [4 x i8], ptr %i.ad, i64 %i.ac
  %i.af = load i32, ptr %i.ae, align 4
  br label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.ag = load i32, ptr @acpi_irq_balance, align 4
  %.not46.not.i = icmp eq i32 %i.ag, 0
  br i1 %.not46.not.i, label %..loopexit_crit_edge.i, label %bb.o

..loopexit_crit_edge.i:                           ; preds = %bb.n
  %.pre127.i = load i32, ptr @sci_irq, align 4
  %.pre129.i = load i32, ptr @sci_penalty, align 4
  br label %.loopexit.i

bb.o:                                             ; preds = %bb.n, %.thread141.i
  %.039146.i = phi i32 [ %i.af, %.thread141.i ], [ %.pr.i, %bb.n ] ; 3 uses
  %i.ah = phi i8 [ %i.ab, %.thread141.i ], [ %i.l, %bb.n ] ; 2 uses
  %.not114.i = icmp eq i8 %i.ah, 0
  %.pre128.i = load i32, ptr @sci_irq, align 4    ; 7 uses
  %.pre130.i = load i32, ptr @sci_penalty, align 4 ; 7 uses
  br i1 %.not114.i, label %.loopexit.i, label %.lr.ph110.i

.lr.ph110.i:                                      ; preds = %bb.o
  %i.ai = zext i8 %i.ah to i64
  %.1106.i = add nuw nsw i64 %i.ai, 4294967295
  %.025.i.i.i = load ptr, ptr @acpi_link_list, align 8
  %.025.i.i.fr.i = freeze ptr %.025.i.i.i         ; 3 uses
  %.not26.i.i.i = icmp eq ptr %.025.i.i.fr.i, @acpi_link_list
  %i.aj = getelementptr i8, ptr %.val, i64 32     ; 2 uses
  %6 = and i64 %.1106.i, 4294967295               ; 2 uses
  br i1 %.not26.i.i.i, label %.lr.ph110.split.us.split.us.i, label %.lr.ph110.split.i

.lr.ph110.split.us.split.us.i:                    ; preds = %.lr.ph110.i, %acpi_irq_get_penalty.exit72.us.us.i
  %indvars.iv124.i = phi i64 [ %indvars.iv.next125.i, %acpi_irq_get_penalty.exit72.us.us.i ], [ %6, %.lr.ph110.i ] ; 3 uses
  %.140107.us.us.i = phi i32 [ %spec.select.us.us.i, %acpi_irq_get_penalty.exit72.us.us.i ], [ %.039146.i, %.lr.ph110.i ] ; 4 uses
  %i.ak = icmp ult i32 %.140107.us.us.i, 16
  br i1 %i.ak, label %bb.p, label %acpi_irq_get_penalty.exit.us.us.i

bb.p:                                             ; preds = %.lr.ph110.split.us.split.us.i
  %i.al = zext nneg i32 %.140107.us.us.i to i64
  %i.am = getelementptr [4 x i8], ptr @acpi_isa_irq_penalty, i64 %i.al
  %i.an = load i32, ptr %i.am, align 4
  br label %acpi_irq_get_penalty.exit.us.us.i

acpi_irq_get_penalty.exit.us.us.i:                ; preds = %bb.p, %.lr.ph110.split.us.split.us.i
  %.pn.i.us.us.i = phi i32 [ %i.an, %bb.p ], [ 0, %.lr.ph110.split.us.split.us.i ]
  %i.ao = icmp eq i32 %.140107.us.us.i, %.pre128.i
  %spec.select.i.us.us.i = select i1 %i.ao, i32 %.pre130.i, i32 0
  %.08.i.us.us.i = add i32 %.pn.i.us.us.i, %spec.select.i.us.us.i
  %i.ap = getelementptr [4 x i8], ptr %i.aj, i64 %indvars.iv124.i
  %i.aq = load i32, ptr %i.ap, align 4            ; 4 uses
  %i.ar = icmp ult i32 %i.aq, 16
  br i1 %i.ar, label %bb.q, label %acpi_irq_get_penalty.exit72.us.us.i

bb.q:                                             ; preds = %acpi_irq_get_penalty.exit.us.us.i
  %i.as = zext nneg i32 %i.aq to i64
  %i.at = getelementptr [4 x i8], ptr @acpi_isa_irq_penalty, i64 %i.as
  %i.au = load i32, ptr %i.at, align 4
  br label %acpi_irq_get_penalty.exit72.us.us.i

acpi_irq_get_penalty.exit72.us.us.i:              ; preds = %bb.q, %acpi_irq_get_penalty.exit.us.us.i
  %.pn.i68.us.us.i = phi i32 [ %i.au, %bb.q ], [ 0, %acpi_irq_get_penalty.exit.us.us.i ]
  %i.av = icmp eq i32 %i.aq, %.pre128.i
  %spec.select.i69.us.us.i = select i1 %i.av, i32 %.pre130.i, i32 0
  %.08.i70.us.us.i = add i32 %.pn.i68.us.us.i, %spec.select.i69.us.us.i
  %i.aw = icmp sgt i32 %.08.i.us.us.i, %.08.i70.us.us.i
  %spec.select.us.us.i = select i1 %i.aw, i32 %i.aq, i32 %.140107.us.us.i ; 2 uses
  %indvars.iv.next125.i = add nsw i64 %indvars.iv124.i, -1
  %i.ax = icmp sgt i64 %indvars.iv124.i, 0
  br i1 %i.ax, label %.lr.ph110.split.us.split.us.i, label %.loopexit.i, !llvm.loop !14

.lr.ph110.split.i:                                ; preds = %.lr.ph110.i, %acpi_irq_get_penalty.exit72.i
  %indvars.iv118.i = phi i64 [ %indvars.iv.next119.i, %acpi_irq_get_penalty.exit72.i ], [ %6, %.lr.ph110.i ] ; 3 uses
  %.140107.i = phi i32 [ %spec.select.i, %acpi_irq_get_penalty.exit72.i ], [ %.039146.i, %.lr.ph110.i ] ; 8 uses
  %i.ay = icmp ult i32 %.140107.i, 16
  br i1 %i.ay, label %bb.r, label %.lr.ph29.i.i.i

bb.r:                                             ; preds = %.lr.ph110.split.i
  %i.az = zext nneg i32 %.140107.i to i64
  %i.ba = getelementptr [4 x i8], ptr @acpi_isa_irq_penalty, i64 %i.az
  %i.bb = load i32, ptr %i.ba, align 4
  br label %acpi_irq_get_penalty.exit.i

.loopexit.i.i.i.loopexit.unr-lcssa:               ; preds = %bb.x
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit.i.i.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %.loopexit.i.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i
  %indvars.iv.i.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.i.i ], [ %indvars.iv.next.i.i.i.1, %.loopexit.i.i.i.loopexit.unr-lcssa ]
  %.224.i.i.i.epil.init = phi i32 [ %.1.i.i.i, %.lr.ph.i.i.i ], [ %.3.i.i.i.1, %.loopexit.i.i.i.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod63 = trunc i8 %i.bm to i1
  tail call void @llvm.assume(i1 %lcmp.mod63)
  %i.bc = getelementptr [4 x i8], ptr %i.bn, i64 %indvars.iv.i.i.i.epil.init
  %i.bd = load i32, ptr %i.bc, align 4
  %i.be = icmp eq i32 %i.bd, %.140107.i
  br i1 %i.be, label %bb.s, label %.loopexit.i.i.i

bb.s:                                             ; preds = %.epil.preheader
  %i.bf = udiv i16 256, %.rhs.trunc.i.i.i
  %.zext.i.i.i.epil = zext nneg i16 %i.bf to i32
  %i.bg = add i32 %.224.i.i.i.epil.init, %.zext.i.i.i.epil
  br label %.loopexit.i.i.i

.loopexit.i.i.i:                                  ; preds = %.loopexit.i.i.i.loopexit.unr-lcssa, %bb.s, %.epil.preheader, %.lr.ph29.i.i.i
  %.2.lcssa.i.i.i = phi i32 [ %.1.i.i.i, %.lr.ph29.i.i.i ], [ %.3.i.i.i.1, %.loopexit.i.i.i.loopexit.unr-lcssa ], [ %i.bg, %bb.s ], [ %.224.i.i.i.epil.init, %.epil.preheader ] ; 2 uses
  %.0.i.i.i = load ptr, ptr %.028.i.i.i, align 8  ; 2 uses
  %.not.i.i.i = icmp eq ptr %.0.i.i.i, @acpi_link_list
  br i1 %.not.i.i.i, label %acpi_irq_get_penalty.exit.i, label %.lr.ph29.i.i.i, !llvm.loop !15

.lr.ph29.i.i.i:                                   ; preds = %.lr.ph110.split.i, %.loopexit.i.i.i
  %.028.i.i.i = phi ptr [ %.0.i.i.i, %.loopexit.i.i.i ], [ %.025.i.i.fr.i, %.lr.ph110.split.i ] ; 4 uses
  %.01827.i.i.i = phi i32 [ %.2.lcssa.i.i.i, %.loopexit.i.i.i ], [ 0, %.lr.ph110.split.i ] ; 2 uses
  %i.bh = getelementptr i8, ptr %.028.i.i.i, i64 24
  %i.bi = load i32, ptr %i.bh, align 8
  %i.bj = icmp eq i32 %i.bi, %.140107.i
  %i.bk = add i32 %.01827.i.i.i, 4096
  %.1.i.i.i = select i1 %i.bj, i32 %i.bk, i32 %.01827.i.i.i ; 3 uses
  %i.bl = getelementptr i8, ptr %.028.i.i.i, i64 31
  %i.bm = load i8, ptr %i.bl, align 1             ; 5 uses
  %.not31.i.i.i = icmp eq i8 %i.bm, 0
  br i1 %.not31.i.i.i, label %.loopexit.i.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph29.i.i.i
  %i.bn = getelementptr i8, ptr %.028.i.i.i, i64 32 ; 3 uses
  %.rhs.trunc.i.i.i = zext i8 %i.bm to i16        ; 3 uses
  %wide.trip.count.i.i.i = zext i8 %i.bm to i64   ; 2 uses
  %xtraiter = and i64 %wide.trip.count.i.i.i, 1
  %i.bo = icmp eq i8 %i.bm, 1
  br i1 %i.bo, label %.epil.preheader, label %.lr.ph.i.i.i.new

.lr.ph.i.i.i.new:                                 ; preds = %.lr.ph.i.i.i
  %unroll_iter = and i64 %wide.trip.count.i.i.i, 254
  br label %bb.t

bb.t:                                             ; preds = %bb.x, %.lr.ph.i.i.i.new
  %indvars.iv.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i.new ], [ %indvars.iv.next.i.i.i.1, %bb.x ] ; 3 uses
  %.224.i.i.i = phi i32 [ %.1.i.i.i, %.lr.ph.i.i.i.new ], [ %.3.i.i.i.1, %bb.x ] ; 2 uses
  %niter = phi i64 [ 0, %.lr.ph.i.i.i.new ], [ %niter.next.1, %bb.x ]
  %i.bp = getelementptr [4 x i8], ptr %i.bn, i64 %indvars.iv.i.i.i
  %i.bq = load i32, ptr %i.bp, align 4
  %i.br = icmp eq i32 %i.bq, %.140107.i
  br i1 %i.br, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.bs = udiv i16 256, %.rhs.trunc.i.i.i
  %.zext.i.i.i = zext nneg i16 %i.bs to i32
  %i.bt = add i32 %.224.i.i.i, %.zext.i.i.i
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %.3.i.i.i = phi i32 [ %i.bt, %bb.u ], [ %.224.i.i.i, %bb.t ] ; 2 uses
  %i.bu = getelementptr [4 x i8], ptr %i.bn, i64 %indvars.iv.i.i.i
  %i.bv = getelementptr i8, ptr %i.bu, i64 4
  %i.bw = load i32, ptr %i.bv, align 4
  %i.bx = icmp eq i32 %i.bw, %.140107.i
  br i1 %i.bx, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.by = udiv i16 256, %.rhs.trunc.i.i.i
  %.zext.i.i.i.1 = zext nneg i16 %i.by to i32
  %i.bz = add i32 %.3.i.i.i, %.zext.i.i.i.1
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %.3.i.i.i.1 = phi i32 [ %i.bz, %bb.w ], [ %.3.i.i.i, %bb.v ] ; 3 uses
  %indvars.iv.next.i.i.i.1 = add nuw nsw i64 %indvars.iv.i.i.i, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.i.i.i.loopexit.unr-lcssa, label %bb.t, !llvm.loop !16

acpi_irq_get_penalty.exit.i:                      ; preds = %.loopexit.i.i.i, %bb.r
  %.pn.i.i = phi i32 [ %i.bb, %bb.r ], [ %.2.lcssa.i.i.i, %.loopexit.i.i.i ]
  %i.ca = icmp eq i32 %.140107.i, %.pre128.i
  %spec.select.i.i = select i1 %i.ca, i32 %.pre130.i, i32 0
  %.08.i.i = add i32 %.pn.i.i, %spec.select.i.i
  %i.cb = getelementptr [4 x i8], ptr %i.aj, i64 %indvars.iv118.i
  %i.cc = load i32, ptr %i.cb, align 4            ; 8 uses
  %i.cd = icmp ult i32 %i.cc, 16
  br i1 %i.cd, label %bb.y, label %.lr.ph29.i.i51.i

bb.y:                                             ; preds = %acpi_irq_get_penalty.exit.i
  %i.ce = zext nneg i32 %i.cc to i64
  %i.cf = getelementptr [4 x i8], ptr @acpi_isa_irq_penalty, i64 %i.ce
  %i.cg = load i32, ptr %i.cf, align 4
  br label %acpi_irq_get_penalty.exit72.i

.loopexit.i.i64.i.loopexit.unr-lcssa:             ; preds = %bb.ae
  %lcmp.mod66.not = icmp eq i64 %xtraiter65, 0
  br i1 %lcmp.mod66.not, label %.loopexit.i.i64.i, label %.epil.preheader64

.epil.preheader64:                                ; preds = %.loopexit.i.i64.i.loopexit.unr-lcssa, %.lr.ph.i.i56.i
  %indvars.iv.i.i59.i.epil.init = phi i64 [ 0, %.lr.ph.i.i56.i ], [ %indvars.iv.next.i.i62.i.1, %.loopexit.i.i64.i.loopexit.unr-lcssa ]
  %.224.i.i60.i.epil.init = phi i32 [ %.1.i.i54.i, %.lr.ph.i.i56.i ], [ %.3.i.i61.i.1, %.loopexit.i.i64.i.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod68 = trunc i8 %i.cr to i1
  tail call void @llvm.assume(i1 %lcmp.mod68)
  %i.ch = getelementptr [4 x i8], ptr %i.cs, i64 %indvars.iv.i.i59.i.epil.init
  %i.ci = load i32, ptr %i.ch, align 4
  %i.cj = icmp eq i32 %i.ci, %i.cc
  br i1 %i.cj, label %bb.z, label %.loopexit.i.i64.i

bb.z:                                             ; preds = %.epil.preheader64
  %i.ck = udiv i16 256, %.rhs.trunc.i.i57.i
  %.zext.i.i71.i.epil = zext nneg i16 %i.ck to i32
  %i.cl = add i32 %.224.i.i60.i.epil.init, %.zext.i.i71.i.epil
  br label %.loopexit.i.i64.i

.loopexit.i.i64.i:                                ; preds = %.loopexit.i.i64.i.loopexit.unr-lcssa, %bb.z, %.epil.preheader64, %.lr.ph29.i.i51.i
  %.2.lcssa.i.i65.i = phi i32 [ %.1.i.i54.i, %.lr.ph29.i.i51.i ], [ %.3.i.i61.i.1, %.loopexit.i.i64.i.loopexit.unr-lcssa ], [ %i.cl, %bb.z ], [ %.224.i.i60.i.epil.init, %.epil.preheader64 ] ; 2 uses
  %.0.i.i66.i = load ptr, ptr %.028.i.i52.i, align 8 ; 2 uses
  %.not.i.i67.i = icmp eq ptr %.0.i.i66.i, @acpi_link_list
  br i1 %.not.i.i67.i, label %acpi_irq_get_penalty.exit72.i, label %.lr.ph29.i.i51.i, !llvm.loop !15

.lr.ph29.i.i51.i:                                 ; preds = %acpi_irq_get_penalty.exit.i, %.loopexit.i.i64.i
  %.028.i.i52.i = phi ptr [ %.0.i.i66.i, %.loopexit.i.i64.i ], [ %.025.i.i.fr.i, %acpi_irq_get_penalty.exit.i ] ; 4 uses
  %.01827.i.i53.i = phi i32 [ %.2.lcssa.i.i65.i, %.loopexit.i.i64.i ], [ 0, %acpi_irq_get_penalty.exit.i ] ; 2 uses
  %i.cm = getelementptr i8, ptr %.028.i.i52.i, i64 24
  %i.cn = load i32, ptr %i.cm, align 8
  %i.co = icmp eq i32 %i.cn, %i.cc
  %i.cp = add i32 %.01827.i.i53.i, 4096
  %.1.i.i54.i = select i1 %i.co, i32 %i.cp, i32 %.01827.i.i53.i ; 3 uses
  %i.cq = getelementptr i8, ptr %.028.i.i52.i, i64 31
  %i.cr = load i8, ptr %i.cq, align 1             ; 5 uses
  %.not31.i.i55.i = icmp eq i8 %i.cr, 0
  br i1 %.not31.i.i55.i, label %.loopexit.i.i64.i, label %.lr.ph.i.i56.i

.lr.ph.i.i56.i:                                   ; preds = %.lr.ph29.i.i51.i
  %i.cs = getelementptr i8, ptr %.028.i.i52.i, i64 32 ; 3 uses
  %.rhs.trunc.i.i57.i = zext i8 %i.cr to i16      ; 3 uses
  %wide.trip.count.i.i58.i = zext i8 %i.cr to i64 ; 2 uses
  %xtraiter65 = and i64 %wide.trip.count.i.i58.i, 1
  %i.ct = icmp eq i8 %i.cr, 1
  br i1 %i.ct, label %.epil.preheader64, label %.lr.ph.i.i56.i.new

.lr.ph.i.i56.i.new:                               ; preds = %.lr.ph.i.i56.i
  %unroll_iter69 = and i64 %wide.trip.count.i.i58.i, 254
  br label %bb.aa

bb.aa:                                            ; preds = %bb.ae, %.lr.ph.i.i56.i.new
  %indvars.iv.i.i59.i = phi i64 [ 0, %.lr.ph.i.i56.i.new ], [ %indvars.iv.next.i.i62.i.1, %bb.ae ] ; 3 uses
  %.224.i.i60.i = phi i32 [ %.1.i.i54.i, %.lr.ph.i.i56.i.new ], [ %.3.i.i61.i.1, %bb.ae ] ; 2 uses
  %niter70 = phi i64 [ 0, %.lr.ph.i.i56.i.new ], [ %niter70.next.1, %bb.ae ]
  %i.cu = getelementptr [4 x i8], ptr %i.cs, i64 %indvars.iv.i.i59.i
  %i.cv = load i32, ptr %i.cu, align 4
  %i.cw = icmp eq i32 %i.cv, %i.cc
  br i1 %i.cw, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.cx = udiv i16 256, %.rhs.trunc.i.i57.i
  %.zext.i.i71.i = zext nneg i16 %i.cx to i32
  %i.cy = add i32 %.224.i.i60.i, %.zext.i.i71.i
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %.3.i.i61.i = phi i32 [ %i.cy, %bb.ab ], [ %.224.i.i60.i, %bb.aa ] ; 2 uses
  %i.cz = getelementptr [4 x i8], ptr %i.cs, i64 %indvars.iv.i.i59.i
  %i.da = getelementptr i8, ptr %i.cz, i64 4
  %i.db = load i32, ptr %i.da, align 4
  %i.dc = icmp eq i32 %i.db, %i.cc
  br i1 %i.dc, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.dd = udiv i16 256, %.rhs.trunc.i.i57.i
  %.zext.i.i71.i.1 = zext nneg i16 %i.dd to i32
  %i.de = add i32 %.3.i.i61.i, %.zext.i.i71.i.1
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  %.3.i.i61.i.1 = phi i32 [ %i.de, %bb.ad ], [ %.3.i.i61.i, %bb.ac ] ; 3 uses
  %indvars.iv.next.i.i62.i.1 = add nuw nsw i64 %indvars.iv.i.i59.i, 2 ; 2 uses
  %niter70.next.1 = add i64 %niter70, 2           ; 2 uses
  %niter70.ncmp.1 = icmp eq i64 %niter70.next.1, %unroll_iter69
  br i1 %niter70.ncmp.1, label %.loopexit.i.i64.i.loopexit.unr-lcssa, label %bb.aa, !llvm.loop !16

end_hunk_0
