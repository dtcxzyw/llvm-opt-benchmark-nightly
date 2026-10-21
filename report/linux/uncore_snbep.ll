Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/linux/original/uncore_snbep?download=true
inline.NumInlined: 201
inline.NumDeleted: 57
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 11
begin_hunk_0_@uncore_get_uncores:bb.a
  %.122 = phi ptr [ %.016.lcssa, %.lr.ph24.preheader.new ], [ %i.cq, %.lr.ph24 ] ; 9 uses
  %niter = phi i64 [ 0, %.lr.ph24.preheader.new ], [ %niter.next.7, %.lr.ph24 ]
  %i.bm = getelementptr [8 x i8], ptr %2, i64 %indvars.iv
  %i.bn = load ptr, ptr %i.bm, align 8
  store ptr %i.bn, ptr %.122, align 8
  %i.bo = getelementptr i8, ptr %.122, i64 8
  %i.bp = getelementptr [8 x i8], ptr %2, i64 %indvars.iv
  %i.bq = getelementptr i8, ptr %i.bp, i64 8
  %i.br = load ptr, ptr %i.bq, align 8
  store ptr %i.br, ptr %i.bo, align 8
  %i.bs = getelementptr i8, ptr %.122, i64 16
  %i.bt = getelementptr [8 x i8], ptr %2, i64 %indvars.iv
  %i.bu = getelementptr i8, ptr %i.bt, i64 16
  %i.bv = load ptr, ptr %i.bu, align 8
  store ptr %i.bv, ptr %i.bs, align 8
  %i.bw = getelementptr i8, ptr %.122, i64 24
  %i.bx = getelementptr [8 x i8], ptr %2, i64 %indvars.iv
  %i.by = getelementptr i8, ptr %i.bx, i64 24
  %i.bz = load ptr, ptr %i.by, align 8
  store ptr %i.bz, ptr %i.bw, align 8
  %i.ca = getelementptr i8, ptr %.122, i64 32
  %i.cb = getelementptr [8 x i8], ptr %2, i64 %indvars.iv
  %i.cc = getelementptr i8, ptr %i.cb, i64 32
  %i.cd = load ptr, ptr %i.cc, align 8
  store ptr %i.cd, ptr %i.ca, align 8
  %i.ce = getelementptr i8, ptr %.122, i64 40
  %i.cf = getelementptr [8 x i8], ptr %2, i64 %indvars.iv
  %i.cg = getelementptr i8, ptr %i.cf, i64 40
  %i.ch = load ptr, ptr %i.cg, align 8
  store ptr %i.ch, ptr %i.ce, align 8
  %i.ci = getelementptr i8, ptr %.122, i64 48
  %i.cj = getelementptr [8 x i8], ptr %2, i64 %indvars.iv
  %i.ck = getelementptr i8, ptr %i.cj, i64 48
  %i.cl = load ptr, ptr %i.ck, align 8
  store ptr %i.cl, ptr %i.ci, align 8
  %i.cm = getelementptr i8, ptr %.122, i64 56
  %i.cn = getelementptr [8 x i8], ptr %2, i64 %indvars.iv
  %i.co = getelementptr i8, ptr %i.cn, i64 56
  %i.cp = load ptr, ptr %i.co, align 8
  store ptr %i.cp, ptr %i.cm, align 8
  %indvars.iv.next.7 = add nuw nsw i64 %indvars.iv, 8 ; 2 uses
  %i.cq = getelementptr i8, ptr %.122, i64 64     ; 2 uses
  %niter.next.7 = add i64 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph24, !llvm.loop !52

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph24
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph24.epil.preheader

.lr.ph24.epil.preheader:                          ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph24.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph24.preheader ], [ %indvars.iv.next.7, %._crit_edge.loopexit.unr-lcssa ]
  %.122.epil.init = phi ptr [ %.016.lcssa, %.lr.ph24.preheader ], [ %i.cq, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod47 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod47)
  br label %.lr.ph24.epil

.lr.ph24.epil:                                    ; preds = %.lr.ph24.epil, %.lr.ph24.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.epil.init, %.lr.ph24.epil.preheader ], [ %indvars.iv.next.epil, %.lr.ph24.epil ] ; 2 uses
  %.122.epil = phi ptr [ %.122.epil.init, %.lr.ph24.epil.preheader ], [ %i.ct, %.lr.ph24.epil ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.lr.ph24.epil.preheader ], [ %epil.iter.next, %.lr.ph24.epil ]
  %i.cr = getelementptr [8 x i8], ptr %2, i64 %indvars.iv.epil
  %i.cs = load ptr, ptr %i.cr, align 8
  store ptr %i.cs, ptr %.122.epil, align 8
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %i.ct = getelementptr i8, ptr %.122.epil, i64 8
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %.lr.ph24.epil, !llvm.loop !53

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph24.epil, %.preheader
  ret ptr %i.a
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local ptr @intel_uncore_generic_init_uncores(i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local void @spr_uncore_cpu_init() local_unnamed_addr #1 align 16 prefalign(16) {
bb.a:
  %i.a = tail call ptr @uncore_get_uncores(i32 noundef 0, i32 noundef 1, ptr noundef @spr_msr_uncores, i32 noundef 15, ptr noundef @spr_uncores) #21 ; 3 uses
  store ptr %i.a, ptr @uncore_msr_uncores, align 8
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %.not7.i = icmp eq ptr %i.b, null
  br i1 %.not7.i, label %uncore_find_type_by_id.exit.thread, label %.lr.ph.i

bb.b:                                             ; preds = %.lr.ph.i
  %i.c = getelementptr i8, ptr %.058.i, i64 8     ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %.not.i = icmp eq ptr %i.d, null
  br i1 %.not.i, label %uncore_find_type_by_id.exit.thread, label %.lr.ph.i, !llvm.loop !0

.lr.ph.i:                                         ; preds = %bb.a, %bb.b
  %i.e = phi ptr [ %i.d, %bb.b ], [ %i.b, %bb.a ] ; 2 uses
  %.058.i = phi ptr [ %i.c, %bb.b ], [ %i.a, %bb.a ]
  %i.f = getelementptr i8, ptr %i.e, i64 28
  %i.g = load i32, ptr %i.f, align 4
  %i.h = icmp eq i32 %i.g, 0
  br i1 %i.h, label %uncore_find_type_by_id.exit, label %bb.b

uncore_find_type_by_id.exit:                      ; preds = %.lr.ph.i
  %i.i = tail call { i64, i64 } asm sideeffect "1: rdmsr\0A2:\0A .pushsection __ex_table, \22aM\22, @progbits, 12\0A .balign 4\0A .long (1b) - .\0A .long (2b) - .\0A .long 9 \0A .popsection\0A", "={ax},={dx},{cx},~{dirflag},~{fpsr},~{flags}"(i32 range(i32 1, 0) 12286) #22, !srcloc !24 ; 2 uses
  %i.j = extractvalue { i64, i64 } %i.i, 0        ; 2 uses
  %i.k = extractvalue { i64, i64 } %i.i, 1
  %i.l = shl i64 %i.k, 32
  %i.m = or i64 %i.l, %i.j                        ; 2 uses
  callbr void asm sideeffect "1: jmp ${2:l} # objtool NOPs this \0A\09.pushsection __jump_table,  \22aw\22 \0A\09 .balign 8 \0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A.long 1b - . \0A\09.long ${2:l} - . \0A\09 .quad  ${0:c} + ${1:c} + 2 - . \0A\09.popsection \0A\09", "i,i,!i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull getelementptr inbounds nuw (i8, ptr @__tracepoint_read_msr, i64 8), i1 false) #22
          to label %native_read_msr.exit [label %bb.c], !srcloc !25

bb.c:                                             ; preds = %uncore_find_type_by_id.exit
  tail call void @do_trace_read_msr(i32 noundef 12286, i64 noundef %i.m, i32 noundef 0) #23
  br label %native_read_msr.exit

native_read_msr.exit:                             ; preds = %uncore_find_type_by_id.exit, %bb.c
  %.not4 = icmp eq i64 %i.m, 0
  br i1 %.not4, label %uncore_find_type_by_id.exit.thread, label %bb.d

bb.d:                                             ; preds = %native_read_msr.exit
  %i.n = trunc i64 %i.j to i32
  %i.o = getelementptr i8, ptr %i.e, i64 12
  store i32 %i.n, ptr %i.o, align 4
  br label %uncore_find_type_by_id.exit.thread

uncore_find_type_by_id.exit.thread:               ; preds = %bb.b, %bb.a, %native_read_msr.exit, %bb.d
  %i.p = load ptr, ptr @uncore_msr_uncores, align 8 ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8              ; 2 uses
  %.not7.i.i = icmp eq ptr %i.q, null
  br i1 %.not7.i.i, label %uncore_type_max_boxes.exit, label %.lr.ph.i.i

bb.e:                                             ; preds = %.lr.ph.i.i
  %i.r = getelementptr i8, ptr %.058.i.i, i64 8   ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8              ; 2 uses
  %.not.i.i = icmp eq ptr %i.s, null
  br i1 %.not.i.i, label %uncore_type_max_boxes.exit, label %.lr.ph.i.i, !llvm.loop !0

.lr.ph.i.i:                                       ; preds = %uncore_find_type_by_id.exit.thread, %bb.e
  %i.t = phi ptr [ %i.s, %bb.e ], [ %i.q, %uncore_find_type_by_id.exit.thread ] ; 2 uses
  %.058.i.i = phi ptr [ %i.r, %bb.e ], [ %i.p, %uncore_find_type_by_id.exit.thread ]
  %i.u = getelementptr i8, ptr %i.t, i64 28
  %i.v = load i32, ptr %i.u, align 4
  %i.w = icmp eq i32 %i.v, 1
  br i1 %i.w, label %uncore_find_type_by_id.exit.i, label %bb.e

uncore_find_type_by_id.exit.i:                    ; preds = %.lr.ph.i.i
  %i.x = getelementptr i8, ptr %i.t, i64 208
  %i.y = load ptr, ptr %i.x, align 8
  %.val.i = load ptr, ptr %i.y, align 8           ; 2 uses
  %.not.i19.i = icmp eq ptr %.val.i, null
  br i1 %.not.i19.i, label %uncore_type_max_boxes.exit, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %uncore_find_type_by_id.exit.i, %.preheader.i.i
  %.0.i.i = phi ptr [ %i.aa, %.preheader.i.i ], [ %.val.i, %uncore_find_type_by_id.exit.i ] ; 2 uses
  %i.z = getelementptr i8, ptr %.0.i.i, i64 16
  %i.aa = load ptr, ptr %i.z, align 8             ; 2 uses
  %.not9.i.i = icmp eq ptr %i.aa, null
  br i1 %.not9.i.i, label %.lr.ph.i5, label %.preheader.i.i, !llvm.loop !1

.lr.ph.i5:                                        ; preds = %.preheader.i.i, %.lr.ph.i5
  %.01425.i = phi i32 [ %.1.i, %.lr.ph.i5 ], [ 0, %.preheader.i.i ] ; 2 uses
  %.01524.i = phi ptr [ %i.af, %.lr.ph.i5 ], [ %.0.i.i, %.preheader.i.i ] ; 2 uses
  %i.ab = getelementptr i8, ptr %.01524.i, i64 28
  %i.ac = load i32, ptr %i.ab, align 4            ; 2 uses
  %i.ad = icmp ult i32 %i.ac, 32768
  %i.ae = tail call i32 @llvm.umax.i32(i32 %i.ac, i32 %.01425.i)
  %.1.i = select i1 %i.ad, i32 %i.ae, i32 %.01425.i ; 2 uses
  %i.af = tail call ptr @rb_next(ptr noundef nonnull %.01524.i) #23 ; 2 uses
  %.not18.i = icmp eq ptr %i.af, null
  br i1 %.not18.i, label %._crit_edge.loopexit.i, label %.lr.ph.i5, !llvm.loop !2

._crit_edge.loopexit.i:                           ; preds = %.lr.ph.i5
  %i.ag = add nuw nsw i32 %.1.i, 1
  br label %uncore_type_max_boxes.exit

uncore_type_max_boxes.exit:                       ; preds = %bb.e, %uncore_find_type_by_id.exit.thread, %uncore_find_type_by_id.exit.i, %._crit_edge.loopexit.i
  %.0.i = phi i32 [ %i.ag, %._crit_edge.loopexit.i ], [ 0, %uncore_find_type_by_id.exit.thread ], [ 1, %uncore_find_type_by_id.exit.i ], [ 0, %bb.e ]
  store i32 %.0.i, ptr getelementptr inbounds nuw (i8, ptr @spr_uncore_iio_free_running, i64 12), align 4
  ret void
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local range(i32 -2147483648, 1) i32 @spr_uncore_pci_init() local_unnamed_addr #1 align 16 prefalign(16) {
bb.a:
  %i.a = tail call fastcc i32 @snbep_pci2phy_map_init(i32 noundef 12880, i32 noundef 192, i32 noundef 212, i1 noundef zeroext true) #21, !srcloc !55 ; 2 uses
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call fastcc void @spr_update_device_location(i32 noundef 8) #21, !srcloc !56
  tail call fastcc void @spr_update_device_location(i32 noundef 9) #21, !srcloc !57
  %i.b = tail call ptr @uncore_get_uncores(i32 noundef 2, i32 noundef 2, ptr noundef @spr_pci_uncores, i32 noundef 15, ptr noundef @spr_uncores) #21
  store ptr %i.b, ptr @uncore_pci_uncores, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret i32 %i.a
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal fastcc void @spr_update_device_location(i32 noundef range(i32 8, 10) %0) unnamed_addr #1 align 16 prefalign(16) {
_kzalloc_noprof.exit:
  %i.a = icmp eq i32 %0, 8                        ; 5 uses
  %.040 = select i1 %i.a, i32 9, i32 41           ; 2 uses
  %.039 = select i1 %i.a, i32 12865, i32 12870    ; 3 uses
  %i.b = load ptr, ptr getelementptr inbounds nuw (i8, ptr @kmalloc_caches, i64 24), align 8
  %i.c = tail call noalias align 8 dereferenceable_or_null(8) ptr @__kmalloc_cache_noprof(ptr noundef %i.b, i32 noundef 3520, i64 noundef range(i64 -103079215104, 103079215057) 8) #25 ; 5 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.a, label %bb.b

bb.a:                                             ; preds = %_kzalloc_noprof.exit
  %1 = select i1 %i.a, ptr getelementptr inbounds nuw (i8, ptr @spr_uncore_upi, i64 12), ptr getelementptr inbounds nuw (i8, ptr @spr_uncore_m3upi, i64 12)
  store i32 0, ptr %1, align 4
  br label %bb.e

bb.b:                                             ; preds = %_kzalloc_noprof.exit
  store ptr null, ptr %i.c, align 8
  %i.d = tail call ptr @pci_get_device(i32 noundef 32902, i32 noundef %.039, ptr noundef null) #23 ; 3 uses
  %.not4552 = icmp eq ptr %i.d, null
  br i1 %.not4552, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %2 = lshr i32 %.040, 3                          ; 2 uses
  %3 = shl nuw nsw i32 %.040, 12                  ; 2 uses
  br i1 %i.a, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %.backedge.us
  %4 = phi ptr [ %28, %.backedge.us ], [ %i.d, %.lr.ph ] ; 3 uses
  %5 = getelementptr i8, ptr %4, i64 16           ; 2 uses
  %6 = load ptr, ptr %5, align 8
  %7 = tail call i32 @uncore_pcibus_to_dieid(ptr noundef %6) #23 ; 2 uses
  %8 = icmp slt i32 %7, 0
  br i1 %8, label %.backedge.us, label %_kzalloc_noprof.exit49.us

_kzalloc_noprof.exit49.us:                        ; preds = %.lr.ph.split.us
  %9 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @kmalloc_caches, i64 48), align 16
  %10 = tail call noalias align 8 dereferenceable_or_null(48) ptr @__kmalloc_cache_noprof(ptr noundef %9, i32 noundef 3520, i64 noundef range(i64 -103079215104, 103079215057) 48) #25 ; 6 uses
  %.not46.us = icmp eq ptr %10, null
  br i1 %.not46.us, label %.backedge.us, label %bb.c

bb.c:                                             ; preds = %_kzalloc_noprof.exit49.us
  %11 = getelementptr i8, ptr %10, i64 32
  store i32 %7, ptr %11, align 8
  %12 = getelementptr i8, ptr %4, i64 56
  %13 = load i32, ptr %12, align 8
  %i.e = lshr i32 %13, 3
  %14 = and i32 %i.e, 31
  %15 = sub nsw i32 %14, %2                       ; 2 uses
  %16 = getelementptr i8, ptr %10, i64 28
  store i32 %15, ptr %16, align 4
  %17 = load ptr, ptr %5, align 8                 ; 2 uses
  %18 = getelementptr i8, ptr %17, i64 200
  %.val.us = load ptr, ptr %18, align 8
  %.val.val.us = load i32, ptr %.val.us, align 8
  %19 = shl i32 %.val.val.us, 28
  %20 = getelementptr i8, ptr %17, i64 216
  %21 = load i8, ptr %20, align 8
  %22 = zext i8 %21 to i32
  %i.f = shl nuw nsw i32 %22, 20
  %23 = or disjoint i32 %19, %i.f
  %.val50.us = load i32, ptr getelementptr inbounds nuw (i8, ptr @spr_uncore_upi, i64 56), align 8
  %24 = or i32 %23, %.val50.us
  %25 = or i32 %24, %3
  %26 = zext i32 %25 to i64
  %27 = getelementptr i8, ptr %10, i64 40
  store i64 %26, ptr %27, align 8
  %i.g = getelementptr i8, ptr %10, i64 24
  store i32 %15, ptr %i.g, align 8
  tail call void @uncore_find_add_unit(ptr noundef nonnull %10, ptr noundef nonnull %i.c, ptr noundef null) #23
  br label %.backedge.us

.backedge.us:                                     ; preds = %bb.c, %_kzalloc_noprof.exit49.us, %.lr.ph.split.us
  %28 = tail call ptr @pci_get_device(i32 noundef 32902, i32 noundef %.039, ptr noundef nonnull %4) #23 ; 2 uses
  %.not45.us = icmp eq ptr %28, null
  br i1 %.not45.us, label %._crit_edge, label %.lr.ph.split.us, !llvm.loop !58

.lr.ph.split:                                     ; preds = %.lr.ph, %.backedge
  %i.h = phi ptr [ %i.ah, %.backedge ], [ %i.d, %.lr.ph ] ; 3 uses
  %i.i = getelementptr i8, ptr %i.h, i64 16       ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = tail call i32 @uncore_pcibus_to_dieid(ptr noundef %i.j) #23 ; 2 uses
  %i.l = icmp slt i32 %i.k, 0
  br i1 %i.l, label %.backedge, label %_kzalloc_noprof.exit49

_kzalloc_noprof.exit49:                           ; preds = %.lr.ph.split
  %i.m = load ptr, ptr getelementptr inbounds nuw (i8, ptr @kmalloc_caches, i64 48), align 16
  %i.n = tail call noalias align 8 dereferenceable_or_null(48) ptr @__kmalloc_cache_noprof(ptr noundef %i.m, i32 noundef 3520, i64 noundef range(i64 -103079215104, 103079215057) 48) #25 ; 6 uses
  %.not46 = icmp eq ptr %i.n, null
  br i1 %.not46, label %.backedge, label %bb.d

bb.d:                                             ; preds = %_kzalloc_noprof.exit49
  %i.o = getelementptr i8, ptr %i.n, i64 32
  store i32 %i.k, ptr %i.o, align 8
  %i.p = getelementptr i8, ptr %i.h, i64 56
  %i.q = load i32, ptr %i.p, align 8
  %i.r = lshr i32 %i.q, 3
  %i.s = and i32 %i.r, 31
  %i.t = sub nsw i32 %i.s, %2                     ; 2 uses
  %i.u = getelementptr i8, ptr %i.n, i64 28
  store i32 %i.t, ptr %i.u, align 4
  %i.v = load ptr, ptr %i.i, align 8              ; 2 uses
  %i.w = getelementptr i8, ptr %i.v, i64 200
  %.val = load ptr, ptr %i.w, align 8
  %.val.val = load i32, ptr %.val, align 8
  %i.x = shl i32 %.val.val, 28
  %i.y = getelementptr i8, ptr %i.v, i64 216
  %i.z = load i8, ptr %i.y, align 8
  %i.aa = zext i8 %i.z to i32
  %i.ab = shl nuw nsw i32 %i.aa, 20
  %i.ac = or disjoint i32 %i.x, %i.ab
  %.val51 = load i32, ptr getelementptr inbounds nuw (i8, ptr @spr_uncore_m3upi, i64 56), align 8
  %29 = or i32 %i.ac, %.val51
  %i.ad = or i32 %29, %3
  %i.ae = zext i32 %i.ad to i64
  %i.af = getelementptr i8, ptr %i.n, i64 40
  store i64 %i.ae, ptr %i.af, align 8
  %i.ag = getelementptr i8, ptr %i.n, i64 24
  store i32 %i.t, ptr %i.ag, align 8
  tail call void @uncore_find_add_unit(ptr noundef nonnull %i.n, ptr noundef nonnull %i.c, ptr noundef null) #23
  br label %.backedge

.backedge:                                        ; preds = %bb.d, %.lr.ph.split, %_kzalloc_noprof.exit49
  %i.ah = tail call ptr @pci_get_device(i32 noundef 32902, i32 noundef %.039, ptr noundef nonnull %i.h) #23 ; 2 uses
  %.not45 = icmp eq ptr %i.ah, null
  br i1 %.not45, label %._crit_edge, label %.lr.ph.split, !llvm.loop !58

._crit_edge:                                      ; preds = %.backedge, %.backedge.us, %bb.b
  %30 = select i1 %i.a, ptr getelementptr inbounds nuw (i8, ptr @spr_uncore_upi, i64 208), ptr getelementptr inbounds nuw (i8, ptr @spr_uncore_m3upi, i64 208)
  store ptr %i.c, ptr %30, align 8
  br label %bb.e

bb.e:                                             ; preds = %._crit_edge, %bb.a
  ret void
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local void @spr_uncore_mmio_init() local_unnamed_addr #1 align 16 prefalign(16) {
bb.a:
  %i.a = tail call fastcc i32 @snbep_pci2phy_map_init(i32 noundef 12880, i32 noundef 192, i32 noundef 212, i1 noundef zeroext true) #21, !srcloc !59
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @uncore_get_uncores(i32 noundef 1, i32 noundef 0, ptr noundef null, i32 noundef 15, ptr noundef @spr_uncores) #21
  store ptr %i.b, ptr @uncore_mmio_uncores, align 8
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.c = tail call ptr @uncore_get_uncores(i32 noundef 1, i32 noundef 1, ptr noundef @spr_mmio_uncores, i32 noundef 15, ptr noundef @spr_uncores) #21 ; 3 uses
  store ptr %i.c, ptr @uncore_mmio_uncores, align 8
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %.not7.i.i = icmp eq ptr %i.d, null
  br i1 %.not7.i.i, label %uncore_type_max_boxes.exit, label %.lr.ph.i.i

bb.d:                                             ; preds = %.lr.ph.i.i
  %i.e = getelementptr i8, ptr %.058.i.i, i64 8   ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8              ; 2 uses
  %.not.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i, label %uncore_type_max_boxes.exit, label %.lr.ph.i.i, !llvm.loop !0

.lr.ph.i.i:                                       ; preds = %bb.c, %bb.d
  %i.g = phi ptr [ %i.f, %bb.d ], [ %i.d, %bb.c ] ; 2 uses
  %.058.i.i = phi ptr [ %i.e, %bb.d ], [ %i.c, %bb.c ]
  %i.h = getelementptr i8, ptr %i.g, i64 28
  %i.i = load i32, ptr %i.h, align 4
  %i.j = icmp eq i32 %i.i, 6
  br i1 %i.j, label %uncore_find_type_by_id.exit.i, label %bb.d

uncore_find_type_by_id.exit.i:                    ; preds = %.lr.ph.i.i
  %i.k = getelementptr i8, ptr %i.g, i64 208
  %i.l = load ptr, ptr %i.k, align 8
  %.val.i = load ptr, ptr %i.l, align 8           ; 2 uses
  %.not.i19.i = icmp eq ptr %.val.i, null
  br i1 %.not.i19.i, label %uncore_type_max_boxes.exit, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %uncore_find_type_by_id.exit.i, %.preheader.i.i
  %.0.i.i = phi ptr [ %i.n, %.preheader.i.i ], [ %.val.i, %uncore_find_type_by_id.exit.i ] ; 2 uses
  %i.m = getelementptr i8, ptr %.0.i.i, i64 16
  %i.n = load ptr, ptr %i.m, align 8              ; 2 uses
  %.not9.i.i = icmp eq ptr %i.n, null
  br i1 %.not9.i.i, label %.lr.ph.i, label %.preheader.i.i, !llvm.loop !1

.lr.ph.i:                                         ; preds = %.preheader.i.i, %.lr.ph.i
  %.01425.i = phi i32 [ %.1.i, %.lr.ph.i ], [ 0, %.preheader.i.i ] ; 2 uses
  %.01524.i = phi ptr [ %i.s, %.lr.ph.i ], [ %.0.i.i, %.preheader.i.i ] ; 2 uses
  %i.o = getelementptr i8, ptr %.01524.i, i64 28
  %i.p = load i32, ptr %i.o, align 4              ; 2 uses
  %i.q = icmp ult i32 %i.p, 32768
  %i.r = tail call i32 @llvm.umax.i32(i32 %i.p, i32 %.01425.i)
  %.1.i = select i1 %i.q, i32 %i.r, i32 %.01425.i ; 2 uses
  %i.s = tail call ptr @rb_next(ptr noundef nonnull %.01524.i) #23 ; 2 uses
  %.not18.i = icmp eq ptr %i.s, null
  br i1 %.not18.i, label %._crit_edge.loopexit.i, label %.lr.ph.i, !llvm.loop !2

._crit_edge.loopexit.i:                           ; preds = %.lr.ph.i
  %i.t = add nuw nsw i32 %.1.i, 1
  %i.u = lshr i32 %i.t, 1
  br label %uncore_type_max_boxes.exit

uncore_type_max_boxes.exit:                       ; preds = %bb.d, %bb.c, %uncore_find_type_by_id.exit.i, %._crit_edge.loopexit.i
  %.0.i = phi i32 [ %i.u, %._crit_edge.loopexit.i ], [ 0, %bb.c ], [ 0, %uncore_find_type_by_id.exit.i ], [ 0, %bb.d ]
  store i32 %.0.i, ptr getelementptr inbounds nuw (i8, ptr @spr_uncore_imc_free_running, i64 12), align 4
  br label %bb.e

bb.e:                                             ; preds = %uncore_type_max_boxes.exit, %bb.b
  ret void
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local void @gnr_uncore_cpu_init() local_unnamed_addr #1 align 16 prefalign(16) {
bb.a:
  %i.a = tail call ptr @uncore_get_uncores(i32 noundef 0, i32 noundef 1, ptr noundef @spr_msr_uncores, i32 noundef 23, ptr noundef @gnr_uncores) #21 ; 3 uses
  store ptr %i.a, ptr @uncore_msr_uncores, align 8
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %.not7.i.i = icmp eq ptr %i.b, null
  br i1 %.not7.i.i, label %uncore_type_max_boxes.exit, label %.lr.ph.i.i

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.c = getelementptr i8, ptr %.058.i.i, i64 8   ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %.not.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i, label %uncore_type_max_boxes.exit, label %.lr.ph.i.i, !llvm.loop !0

.lr.ph.i.i:                                       ; preds = %bb.a, %bb.b
  %i.e = phi ptr [ %i.d, %bb.b ], [ %i.b, %bb.a ] ; 2 uses
  %.058.i.i = phi ptr [ %i.c, %bb.b ], [ %i.a, %bb.a ]
  %i.f = getelementptr i8, ptr %i.e, i64 28
  %i.g = load i32, ptr %i.f, align 4
  %i.h = icmp eq i32 %i.g, 1
  br i1 %i.h, label %uncore_find_type_by_id.exit.i, label %bb.b

uncore_find_type_by_id.exit.i:                    ; preds = %.lr.ph.i.i
  %i.i = getelementptr i8, ptr %i.e, i64 208
  %i.j = load ptr, ptr %i.i, align 8
  %.val.i = load ptr, ptr %i.j, align 8           ; 2 uses
  %.not.i19.i = icmp eq ptr %.val.i, null
  br i1 %.not.i19.i, label %uncore_type_max_boxes.exit, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %uncore_find_type_by_id.exit.i, %.preheader.i.i
  %.0.i.i = phi ptr [ %i.l, %.preheader.i.i ], [ %.val.i, %uncore_find_type_by_id.exit.i ] ; 2 uses
  %i.k = getelementptr i8, ptr %.0.i.i, i64 16
  %i.l = load ptr, ptr %i.k, align 8              ; 2 uses
  %.not9.i.i = icmp eq ptr %i.l, null
  br i1 %.not9.i.i, label %.lr.ph.i, label %.preheader.i.i, !llvm.loop !1

.lr.ph.i:                                         ; preds = %.preheader.i.i, %.lr.ph.i
  %.01425.i = phi i32 [ %.1.i, %.lr.ph.i ], [ 0, %.preheader.i.i ] ; 2 uses
  %.01524.i = phi ptr [ %i.q, %.lr.ph.i ], [ %.0.i.i, %.preheader.i.i ] ; 2 uses
  %i.m = getelementptr i8, ptr %.01524.i, i64 28
  %i.n = load i32, ptr %i.m, align 4              ; 2 uses
  %i.o = icmp ult i32 %i.n, 32768
  %i.p = tail call i32 @llvm.umax.i32(i32 %i.n, i32 %.01425.i)
  %.1.i = select i1 %i.o, i32 %i.p, i32 %.01425.i ; 2 uses
  %i.q = tail call ptr @rb_next(ptr noundef nonnull %.01524.i) #23 ; 2 uses
  %.not18.i = icmp eq ptr %i.q, null
  br i1 %.not18.i, label %._crit_edge.loopexit.i, label %.lr.ph.i, !llvm.loop !2

._crit_edge.loopexit.i:                           ; preds = %.lr.ph.i
  %i.r = add nuw nsw i32 %.1.i, 1
  br label %uncore_type_max_boxes.exit

uncore_type_max_boxes.exit:                       ; preds = %bb.b, %bb.a, %uncore_find_type_by_id.exit.i, %._crit_edge.loopexit.i
  %.0.i = phi i32 [ %i.r, %._crit_edge.loopexit.i ], [ 0, %bb.a ], [ 1, %uncore_find_type_by_id.exit.i ], [ 0, %bb.b ]
  store i32 %.0.i, ptr getelementptr inbounds nuw (i8, ptr @spr_uncore_iio_free_running, i64 12), align 4
  store ptr @gnr_iio_freerunning, ptr getelementptr inbounds nuw (i8, ptr @spr_uncore_iio_free_running, i64 152), align 8
  ret void
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local noundef i32 @gnr_uncore_pci_init() local_unnamed_addr #1 align 16 prefalign(16) {
bb.a:
  %i.a = tail call ptr @uncore_get_uncores(i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef 23, ptr noundef @gnr_uncores) #21
  store ptr %i.a, ptr @uncore_pci_uncores, align 8
  ret i32 0
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local void @gnr_uncore_mmio_init() local_unnamed_addr #1 align 16 prefalign(16) {
bb.a:
  %i.a = tail call ptr @uncore_get_uncores(i32 noundef 1, i32 noundef 0, ptr noundef null, i32 noundef 23, ptr noundef @gnr_uncores) #21
  store ptr %i.a, ptr @uncore_mmio_uncores, align 8
  ret void
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local noundef i32 @dmr_uncore_pci_init() local_unnamed_addr #1 align 16 prefalign(16) {
bb.a:
  %i.a = tail call ptr @uncore_get_uncores(i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef 52, ptr noundef @dmr_uncores) #21
  store ptr %i.a, ptr @uncore_pci_uncores, align 8
  ret i32 0
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local void @dmr_uncore_mmio_init() local_unnamed_addr #1 align 16 prefalign(16) {
bb.a:
  %i.a = tail call ptr @uncore_get_uncores(i32 noundef 1, i32 noundef 1, ptr noundef @dmr_mmio_uncores, i32 noundef 52, ptr noundef @dmr_uncores) #21 ; 3 uses
  store ptr %i.a, ptr @uncore_mmio_uncores, align 8
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %.not7.i.i = icmp eq ptr %i.b, null
  br i1 %.not7.i.i, label %uncore_type_max_boxes.exit, label %.lr.ph.i.i

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.c = getelementptr i8, ptr %.058.i.i, i64 8   ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %.not.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i, label %uncore_type_max_boxes.exit, label %.lr.ph.i.i, !llvm.loop !0

.lr.ph.i.i:                                       ; preds = %bb.a, %bb.b
  %i.e = phi ptr [ %i.d, %bb.b ], [ %i.b, %bb.a ] ; 2 uses
  %.058.i.i = phi ptr [ %i.c, %bb.b ], [ %i.a, %bb.a ]
  %i.f = getelementptr i8, ptr %i.e, i64 28
  %i.g = load i32, ptr %i.f, align 4
  %i.h = icmp eq i32 %i.g, 48
  br i1 %i.h, label %uncore_find_type_by_id.exit.i, label %bb.b

uncore_find_type_by_id.exit.i:                    ; preds = %.lr.ph.i.i
  %i.i = getelementptr i8, ptr %i.e, i64 208
  %i.j = load ptr, ptr %i.i, align 8
  %.val.i = load ptr, ptr %i.j, align 8           ; 2 uses
  %.not.i19.i = icmp eq ptr %.val.i, null
  br i1 %.not.i19.i, label %uncore_type_max_boxes.exit, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %uncore_find_type_by_id.exit.i, %.preheader.i.i
  %.0.i.i = phi ptr [ %i.l, %.preheader.i.i ], [ %.val.i, %uncore_find_type_by_id.exit.i ] ; 2 uses
  %i.k = getelementptr i8, ptr %.0.i.i, i64 16
  %i.l = load ptr, ptr %i.k, align 8              ; 2 uses
  %.not9.i.i = icmp eq ptr %i.l, null
  br i1 %.not9.i.i, label %.lr.ph.i, label %.preheader.i.i, !llvm.loop !1

end_hunk_0
