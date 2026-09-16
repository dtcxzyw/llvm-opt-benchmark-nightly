Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/linux/original/sg?download=true
inline.NumInlined: 293
inline.NumDeleted: 86
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@sg_rq_end_io:bb.a
  %.not82 = icmp eq i8 %i.bd, 0
  br i1 %.not82, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.be = getelementptr i8, ptr %i.b, i64 242
  store i8 0, ptr %i.be, align 2
  br label %.critedge87

bb.t:                                             ; preds = %bb.r
  store i8 0, ptr %i.c, align 1
  %i.bf = load volatile i64, ptr @jiffies, align 64
  %i.bg = trunc i64 %i.bf to i32
  %i.bh = getelementptr i8, ptr %i.b, i64 132     ; 2 uses
  %i.bi = load i32, ptr %i.bh, align 4
  %spec.select = call i32 @llvm.usub.sat.i32(i32 %i.bg, i32 %i.bi)
  store i32 %spec.select, ptr %i.bh, align 4
  call void @_raw_write_unlock_irqrestore(ptr noundef %i.ay, i64 noundef %i.az) #17
  %i.bj = getelementptr i8, ptr %i.b, i64 264     ; 2 uses
  store i64 4503599625273344, ptr %i.bj, align 8
  %i.bk = getelementptr i8, ptr %i.b, i64 272     ; 3 uses
  store volatile ptr %i.bk, ptr %i.bk, align 8
  %i.bl = getelementptr i8, ptr %i.b, i64 280
  store volatile ptr %i.bk, ptr %i.bl, align 8
  %i.bm = getelementptr i8, ptr %i.b, i64 288
  store ptr @sg_rq_end_io_usercontext, ptr %i.bm, align 8
  %i.bn = load ptr, ptr @system_percpu_wq, align 8
  %i.bo = call zeroext i1 @queue_work_on(i32 noundef 64, ptr noundef %i.bn, ptr noundef %i.bj) #17 ; 0 uses
  br label %kref_put.exit

.critedge87:                                      ; preds = %bb.q, %bb.s
  store i8 1, ptr %i.c, align 1
  %i.bp = load volatile i64, ptr @jiffies, align 64
  %i.bq = trunc i64 %i.bp to i32
  %i.br = getelementptr i8, ptr %i.b, i64 132     ; 2 uses
  %i.bs = load i32, ptr %i.br, align 4
  %spec.select.c = call i32 @llvm.usub.sat.i32(i32 %i.bq, i32 %i.bs)
  store i32 %spec.select.c, ptr %i.br, align 4
  call void @_raw_write_unlock_irqrestore(ptr noundef %i.ay, i64 noundef %i.az) #17
  %i.bt = getelementptr i8, ptr %i.f, i64 24
  %i.bu = call i32 @__wake_up(ptr noundef %i.bt, i32 noundef 1, i32 noundef 1, ptr noundef null) #17 ; 0 uses
  %i.bv = getelementptr i8, ptr %i.f, i64 136
  call void @kill_fasync(ptr noundef %i.bv, i32 noundef 29, i32 noundef 1) #17
  %i.bw = getelementptr i8, ptr %i.f, i64 4888    ; 3 uses
  %i.bx = call i32 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock xaddl $0, $1", "=r,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.bw, i32 -1, ptr elementtype(i32) %i.bw) #18, !srcloc !17 ; 2 uses
  %i.by = icmp eq i32 %i.bx, 1
  br i1 %i.by, label %bb.w, label %bb.u

bb.u:                                             ; preds = %.critedge87
  %i.bz = icmp slt i32 %i.bx, 1
  br i1 %i.bz, label %bb.v, label %kref_put.exit, !prof !15

bb.v:                                             ; preds = %bb.u
  call void @refcount_warn_saturate(ptr noundef %i.bw, i32 noundef 3) #17
  br label %kref_put.exit

bb.w:                                             ; preds = %.critedge87
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #18, !srcloc !18
  %i.ca = load ptr, ptr %i.h, align 8
  %i.cb = getelementptr i8, ptr %i.ca, i64 80     ; 2 uses
  %i.cc = call i64 @_raw_write_lock_irqsave(ptr noundef %i.cb) #17
  %i.cd = getelementptr i8, ptr %i.f, i64 8       ; 2 uses
  %i.ce = load ptr, ptr %i.cd, align 8            ; 2 uses
  %i.cf = load ptr, ptr %i.f, align 8             ; 2 uses
  %i.cg = getelementptr i8, ptr %i.cf, i64 8
  store ptr %i.ce, ptr %i.cg, align 8
  store volatile ptr %i.cf, ptr %i.ce, align 8
  store ptr inttoptr (i64 -2401263026318606080 to ptr), ptr %i.f, align 8
  store ptr inttoptr (i64 -2401263026318606046 to ptr), ptr %i.cd, align 8
  call void @_raw_write_unlock_irqrestore(ptr noundef %i.cb, i64 noundef %i.cc) #17
  %i.ch = getelementptr i8, ptr %i.f, i64 4896    ; 2 uses
  store i64 4503599625273344, ptr %i.ch, align 8
  %i.ci = getelementptr i8, ptr %i.f, i64 4904    ; 3 uses
  store volatile ptr %i.ci, ptr %i.ci, align 8
  %i.cj = getelementptr i8, ptr %i.f, i64 4912
  store volatile ptr %i.ci, ptr %i.cj, align 8
  %i.ck = getelementptr i8, ptr %i.f, i64 4920
  store ptr @sg_remove_sfp_usercontext, ptr %i.ck, align 8
  %i.cl = load ptr, ptr @system_percpu_wq, align 8
  %i.cm = call zeroext i1 @queue_work_on(i32 noundef 64, ptr noundef %i.cl, ptr noundef %i.ch) #17 ; 0 uses
  br label %kref_put.exit

kref_put.exit:                                    ; preds = %bb.w, %bb.v, %bb.u, %bb.c, %bb.b, %bb.t
  ret i32 0
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @blk_execute_rq_nowait(ptr noundef, i1 noundef zeroext) local_unnamed_addr #0

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local ptr @scsi_alloc_request(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: fn_ret_thunk_extern nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong memory(argmem: readwrite)
define internal fastcc void @sg_link_reserve(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef nonnull writeonly captures(none) initializes((240, 241)) %1, i32 noundef range(i32 1, -2147483648) %2) unnamed_addr #10 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 24
  %i.b = getelementptr i8, ptr %0, i64 88
  %i.c = getelementptr i8, ptr %1, i64 240
  store i8 1, ptr %i.c, align 8
  %i.d = getelementptr i8, ptr %0, i64 112        ; 2 uses
  %i.e = load i32, ptr %i.d, align 8
  %i.f = add i32 %i.e, 12
  %i.g = shl nuw i32 1, %i.f                      ; 2 uses
  %i.h = load i16, ptr %i.b, align 8              ; 2 uses
  %i.i = zext i16 %i.h to i32
  %.not28 = icmp eq i16 %i.h, 0
  br i1 %.not28, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.c
  %.027 = phi i32 [ %i.u, %bb.c ], [ %2, %bb.a ]  ; 2 uses
  %.02326 = phi i32 [ %i.v, %bb.c ], [ 0, %bb.a ] ; 2 uses
  %.not = icmp sgt i32 %.027, %i.g
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.j = trunc nuw i32 %.02326 to i16
  %i.k = add nuw i16 %i.j, 1
  store i16 %i.k, ptr %i.a, align 8
  %i.l = getelementptr i8, ptr %0, i64 92
  %i.m = load i32, ptr %i.l, align 4
  %i.n = getelementptr i8, ptr %1, i64 28
  store i32 %i.m, ptr %i.n, align 4
  %i.o = getelementptr i8, ptr %0, i64 104
  %i.p = load ptr, ptr %i.o, align 8
  %i.q = getelementptr i8, ptr %1, i64 40
  store ptr %i.p, ptr %i.q, align 8
  %i.r = getelementptr i8, ptr %1, i64 32
  store i32 %2, ptr %i.r, align 8
  %i.s = load i32, ptr %i.d, align 8
  %i.t = getelementptr i8, ptr %1, i64 48
  store i32 %i.s, ptr %i.t, align 8
  br label %.loopexit

bb.c:                                             ; preds = %.lr.ph
  %i.u = sub i32 %.027, %i.g
  %i.v = add nuw nsw i32 %.02326, 1               ; 2 uses
  %exitcond.not = icmp eq i32 %i.v, %i.i
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph, !llvm.loop !89

.loopexit:                                        ; preds = %bb.c, %bb.a, %bb.b
  ret void
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal fastcc range(i32 -2147483648, 1) i32 @sg_build_indirect(ptr nofree noundef captures(none) %0, i32 %.16.val.56.val, i32 noundef %1) unnamed_addr #2 align 16 {
bb.a:
  %i.a = icmp slt i32 %1, 0
  br i1 %i.a, label %sg_build_sgat.exit.thread, label %_kzalloc_noprof.exit.i

_kzalloc_noprof.exit.i:                           ; preds = %bb.a
  %spec.select = tail call i32 @llvm.umax.i32(i32 %1, i32 1)
  %i.b = add nuw i32 %spec.select, 511            ; 2 uses
  %i.c = and i32 %i.b, -512                       ; 2 uses
  %i.d = shl i32 %.16.val.56.val, 3               ; 2 uses
  %i.e = sext i32 %i.d to i64
  %i.f = tail call noalias align 8 ptr @__kmalloc_noprof(i64 noundef range(i64 -2147483648, 2147483648) %i.e, i32 noundef range(i32 3264, 10752) 10528) #24 ; 2 uses
  %i.g = getelementptr i8, ptr %0, i64 16         ; 4 uses
  store ptr %i.f, ptr %i.g, align 8
  %.not.i70 = icmp eq ptr %i.f, null
  br i1 %.not.i70, label %sg_build_sgat.exit.thread, label %sg_build_sgat.exit

sg_build_sgat.exit:                               ; preds = %_kzalloc_noprof.exit.i
  %i.h = getelementptr i8, ptr %0, i64 4
  store i32 %i.d, ptr %i.h, align 4
  %i.i = icmp slt i32 %.16.val.56.val, 0
  br i1 %i.i, label %sg_build_sgat.exit.thread, label %bb.b

bb.b:                                             ; preds = %sg_build_sgat.exit
  %i.j = load i32, ptr @scatter_elem_sz, align 4  ; 4 uses
  %i.k = load i32, ptr @scatter_elem_sz_prev, align 4
  %.not = icmp eq i32 %i.j, %i.k
  br i1 %.not, label %get_order.exit, label %bb.c, !prof !20

bb.c:                                             ; preds = %bb.b
  %i.l = icmp ult i32 %i.j, 4096
  br i1 %i.l, label %bb.d, label %.sink.split

bb.d:                                             ; preds = %bb.c
  store i32 4096, ptr @scatter_elem_sz, align 4
  br label %.sink.split

.sink.split:                                      ; preds = %bb.c, %bb.d
  %.sink = phi i32 [ 4096, %bb.d ], [ %i.j, %bb.c ]
  store i32 %.sink, ptr @scatter_elem_sz_prev, align 4
  br label %get_order.exit

get_order.exit:                                   ; preds = %.sink.split, %bb.b
  %i.m = sext i32 %i.j to i64
  %i.n = add nsw i64 %i.m, -1
  %i.o = lshr i64 %i.n, 12
  %i.p = tail call i32 asm "bsrq $1,${0:q}", "=r,r,0,~{dirflag},~{fpsr},~{flags}"(i64 range(i64 -2147483649, 4503599627370496) %i.o, i32 -1) #22, !srcloc !92
  %i.q = add i32 %i.p, 1                          ; 2 uses
  %i.r = icmp sgt i32 %i.b, 511                   ; 2 uses
  %i.s = icmp ne i32 %.16.val.56.val, 0
  %i.t = select i1 %i.r, i1 %i.s, i1 false
  br i1 %i.t, label %.lr.ph.us.preheader, label %._crit_edge9

.lr.ph.us.preheader:                              ; preds = %get_order.exit
  %i.u = zext nneg i32 %.16.val.56.val to i64
  br label %.lr.ph.us

.lr.ph.us:                                        ; preds = %.lr.ph.us.preheader, %._crit_edge15
  %.056.us = phi i32 [ %5, %._crit_edge15 ], [ %i.q, %.lr.ph.us.preheader ] ; 5 uses
  %i.v = add i32 %.056.us, 12
  %i.w = shl nuw i32 1, %i.v                      ; 5 uses
  %.pre = load i32, ptr @scatter_elem_sz_prev, align 4
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph.us, %bb.h
  %i.x = phi i32 [ %.pre, %.lr.ph.us ], [ %i.ai, %bb.h ]
  %indvars.iv27 = phi i32 [ 0, %.lr.ph.us ], [ %indvars.iv.next28, %bb.h ] ; 2 uses
  %indvars.iv = phi i64 [ 0, %.lr.ph.us ], [ %indvars.iv.next, %bb.h ] ; 4 uses
  %.0586.us = phi i32 [ %i.c, %.lr.ph.us ], [ %i.aj, %bb.h ] ; 2 uses
  %i.y = tail call ptr @alloc_pages_noprof(i32 noundef 272672, i32 noundef %.056.us) #17
  %i.z = load ptr, ptr %i.g, align 8
  %i.aa = getelementptr [8 x i8], ptr %i.z, i64 %indvars.iv
  store ptr %i.y, ptr %i.aa, align 8
  %i.ab = load ptr, ptr %i.g, align 8
  %i.ac = getelementptr [8 x i8], ptr %i.ab, i64 %indvars.iv
  %i.ad = load ptr, ptr %i.ac, align 8
  %.not66.us = icmp eq ptr %i.ad, null
  br i1 %.not66.us, label %.preheader, label %bb.f

.preheader:                                       ; preds = %bb.e
  %.not16 = icmp eq i64 %indvars.iv, 0
  br i1 %.not16, label %._crit_edge15, label %.lr.ph14.preheader

.lr.ph14.preheader:                               ; preds = %.preheader
  %wide.trip.count = zext nneg i32 %indvars.iv27 to i64
  br label %.lr.ph14

bb.f:                                             ; preds = %bb.e
  %i.ae = tail call i32 @llvm.smin.i32(i32 %.0586.us, i32 %i.x)
  %i.af = load i32, ptr @scatter_elem_sz_prev, align 4 ; 3 uses
  %i.ag = icmp eq i32 %i.ae, %i.af
  %i.ah = icmp sgt i32 %i.w, %i.af
  %or.cond.us = select i1 %i.ag, i1 %i.ah, i1 false, !prof !93
  br i1 %or.cond.us, label %bb.g, label %bb.h, !prof !93

bb.g:                                             ; preds = %bb.f
  store i32 %i.w, ptr @scatter_elem_sz, align 4
  store i32 %i.w, ptr @scatter_elem_sz_prev, align 4
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.ai = phi i32 [ %i.w, %bb.g ], [ %i.af, %bb.f ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %i.aj = sub i32 %.0586.us, %i.w                 ; 2 uses
  %i.ak = icmp sgt i32 %i.aj, 0                   ; 2 uses
  %i.al = icmp samesign ult i64 %indvars.iv.next, %i.u
  %i.am = select i1 %i.ak, i1 %i.al, i1 false
  %indvars.iv.next28 = add nuw nsw i32 %indvars.iv27, 1
  br i1 %i.am, label %bb.e, label %._crit_edge9.loopexit, !llvm.loop !90

._crit_edge9.loopexit:                            ; preds = %bb.h
  %i.an = trunc i64 %indvars.iv.next to i16
  br label %._crit_edge9

._crit_edge9:                                     ; preds = %._crit_edge9.loopexit, %get_order.exit
  %.056.lcssa = phi i32 [ %i.q, %get_order.exit ], [ %.056.us, %._crit_edge9.loopexit ]
  %.059.lcssa = phi i16 [ 0, %get_order.exit ], [ %i.an, %._crit_edge9.loopexit ]
  %.lcssa = phi i1 [ %i.r, %get_order.exit ], [ %i.ak, %._crit_edge9.loopexit ]
  %i.ao = getelementptr i8, ptr %0, i64 24
  store i32 %.056.lcssa, ptr %i.ao, align 8
  store i16 %.059.lcssa, ptr %0, align 8
  %i.ap = getelementptr i8, ptr %0, i64 8
  store i32 %i.c, ptr %i.ap, align 8
  %. = select i1 %.lcssa, i32 -12, i32 0
  br label %sg_build_sgat.exit.thread

.lr.ph14:                                         ; preds = %.lr.ph14.preheader, %.lr.ph14
  %indvars.iv23 = phi i64 [ 0, %.lr.ph14.preheader ], [ %indvars.iv.next24, %.lr.ph14 ] ; 2 uses
  %2 = load ptr, ptr %i.g, align 8
  %3 = getelementptr [8 x i8], ptr %2, i64 %indvars.iv23
  %4 = load ptr, ptr %3, align 8
  tail call void @__free_pages(ptr noundef %4, i32 noundef %.056.us) #17
  %indvars.iv.next24 = add nuw nsw i64 %indvars.iv23, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next24, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge15, label %.lr.ph14, !llvm.loop !91

._crit_edge15:                                    ; preds = %.lr.ph14, %.preheader
  %5 = add i32 %.056.us, -1                       ; 2 uses
  %6 = icmp sgt i32 %5, -1
  br i1 %6, label %.lr.ph.us, label %sg_build_sgat.exit.thread

sg_build_sgat.exit.thread:                        ; preds = %._crit_edge15, %_kzalloc_noprof.exit.i, %._crit_edge9, %sg_build_sgat.exit, %bb.a
  %.0 = phi i32 [ %.16.val.56.val, %sg_build_sgat.exit ], [ -14, %bb.a ], [ %., %._crit_edge9 ], [ -12, %_kzalloc_noprof.exit.i ], [ -12, %._crit_edge15 ]
  ret i32 %.0
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @blk_rq_map_user_io(ptr noundef, ptr noundef, ptr noundef, i64 noundef, i32 noundef, i1 noundef zeroext, i32 noundef, i1 noundef zeroext, i32 noundef) local_unnamed_addr #0

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local ptr @alloc_pages_noprof(i32 noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @__scsi_print_sense(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local zeroext i1 @scsi_normalize_sense(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @kill_fasync(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @sg_rq_end_io_usercontext(ptr nofree noundef captures(address) %0) #2 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 -264       ; 5 uses
  %i.b = getelementptr i8, ptr %0, i64 -248       ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8              ; 14 uses
  %i.d = tail call fastcc i32 @sg_finish_rem_req(ptr noundef %i.a) #23, !srcloc !94 ; 0 uses
  %i.e = icmp ne ptr %i.c, null
  %i.f = icmp ne ptr %i.a, null
  %or.cond.i = and i1 %i.f, %i.e
  br i1 %or.cond.i, label %bb.b, label %sg_remove_request.exit

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr i8, ptr %i.c, i64 120      ; 2 uses
  %i.h = load volatile ptr, ptr %i.g, align 8
  %.not.i = icmp eq ptr %i.h, %i.g
  br i1 %.not.i, label %sg_remove_request.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr i8, ptr %i.c, i64 48       ; 2 uses
  %i.j = tail call i64 @_raw_write_lock_irqsave(ptr noundef %i.i) #17
  %i.k = load volatile ptr, ptr %i.a, align 8     ; 3 uses
  %.not19.i = icmp eq ptr %i.k, %i.a
  br i1 %.not19.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr i8, ptr %0, i64 -256       ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8              ; 2 uses
  %i.n = getelementptr i8, ptr %i.k, i64 8
  store ptr %i.m, ptr %i.n, align 8
  store volatile ptr %i.k, ptr %i.m, align 8
  store ptr inttoptr (i64 -2401263026318606080 to ptr), ptr %i.a, align 8
  store ptr inttoptr (i64 -2401263026318606046 to ptr), ptr %i.l, align 8
  store ptr null, ptr %i.b, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  tail call void @_raw_write_unlock_irqrestore(ptr noundef %i.i, i64 noundef %i.j) #17
  %i.o = getelementptr i8, ptr %i.c, i64 16
  %i.p = load ptr, ptr %i.o, align 8
  %i.q = getelementptr i8, ptr %i.p, i64 88
  %i.r = load volatile i32, ptr %i.q, align 4
  %.not18.i = icmp eq i32 %i.r, 0
  br i1 %.not18.i, label %sg_remove_request.exit, label %bb.f, !prof !20

bb.f:                                             ; preds = %bb.e
  %i.s = getelementptr i8, ptr %i.c, i64 24
  %i.t = tail call i32 @__wake_up(ptr noundef %i.s, i32 noundef 1, i32 noundef 0, ptr noundef null) #17 ; 0 uses
  br label %sg_remove_request.exit

sg_remove_request.exit:                           ; preds = %bb.a, %bb.b, %bb.e, %bb.f
  %i.u = getelementptr i8, ptr %i.c, i64 4888     ; 3 uses
  %i.v = tail call i32 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock xaddl $0, $1", "=r,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.u, i32 -1, ptr elementtype(i32) %i.u) #18, !srcloc !17 ; 2 uses
  %i.w = icmp eq i32 %i.v, 1
  br i1 %i.w, label %bb.i, label %bb.g

bb.g:                                             ; preds = %sg_remove_request.exit
  %i.x = icmp slt i32 %i.v, 1
  br i1 %i.x, label %bb.h, label %kref_put.exit, !prof !15

bb.h:                                             ; preds = %bb.g
  tail call void @refcount_warn_saturate(ptr noundef %i.u, i32 noundef 3) #17
  br label %kref_put.exit

bb.i:                                             ; preds = %sg_remove_request.exit
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #18, !srcloc !18
  %i.y = getelementptr i8, ptr %i.c, i64 16
  %i.z = load ptr, ptr %i.y, align 8
  %i.aa = getelementptr i8, ptr %i.z, i64 80      ; 2 uses
  %i.ab = tail call i64 @_raw_write_lock_irqsave(ptr noundef %i.aa) #17
  %i.ac = getelementptr i8, ptr %i.c, i64 8       ; 2 uses
  %i.ad = load ptr, ptr %i.ac, align 8            ; 2 uses
  %i.ae = load ptr, ptr %i.c, align 8             ; 2 uses
  %i.af = getelementptr i8, ptr %i.ae, i64 8
  store ptr %i.ad, ptr %i.af, align 8
  store volatile ptr %i.ae, ptr %i.ad, align 8
  store ptr inttoptr (i64 -2401263026318606080 to ptr), ptr %i.c, align 8
  store ptr inttoptr (i64 -2401263026318606046 to ptr), ptr %i.ac, align 8
  tail call void @_raw_write_unlock_irqrestore(ptr noundef %i.aa, i64 noundef %i.ab) #17
  %i.ag = getelementptr i8, ptr %i.c, i64 4896    ; 2 uses
  store i64 4503599625273344, ptr %i.ag, align 8
  %i.ah = getelementptr i8, ptr %i.c, i64 4904    ; 3 uses
  store volatile ptr %i.ah, ptr %i.ah, align 8
  %i.ai = getelementptr i8, ptr %i.c, i64 4912
  store volatile ptr %i.ah, ptr %i.ai, align 8
  %i.aj = getelementptr i8, ptr %i.c, i64 4920
  store ptr @sg_remove_sfp_usercontext, ptr %i.aj, align 8
  %i.ak = load ptr, ptr @system_percpu_wq, align 8
  %i.al = tail call zeroext i1 @queue_work_on(i32 noundef 64, ptr noundef %i.ak, ptr noundef %i.ag) #17 ; 0 uses
  br label %kref_put.exit

kref_put.exit:                                    ; preds = %bb.g, %bb.h, %bb.i
  ret void
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @sg_remove_sfp_usercontext(ptr noundef %0) #2 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 -4896
  %i.b = getelementptr i8, ptr %0, i64 -4880
  %i.c = load ptr, ptr %i.b, align 8              ; 5 uses
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = getelementptr i8, ptr %0, i64 -4848      ; 4 uses
  %i.f = tail call i64 @_raw_write_lock_irqsave(ptr noundef %i.e) #17 ; 2 uses
  %i.g = getelementptr i8, ptr %0, i64 -4776      ; 4 uses
  %i.h = load volatile ptr, ptr %i.g, align 8     ; 2 uses
  %.not25 = icmp eq ptr %i.h, %i.g
  br i1 %.not25, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %i.i = phi ptr [ %i.q, %.lr.ph ], [ %i.h, %bb.a ] ; 5 uses
  %.026 = phi i64 [ %i.p, %.lr.ph ], [ %i.f, %bb.a ]
  %i.j = getelementptr i8, ptr %i.i, i64 8        ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8              ; 2 uses
  %i.l = load ptr, ptr %i.i, align 8              ; 2 uses
  %i.m = getelementptr i8, ptr %i.l, i64 8
  store ptr %i.k, ptr %i.m, align 8
  store volatile ptr %i.l, ptr %i.k, align 8
  store ptr inttoptr (i64 -2401263026318606080 to ptr), ptr %i.i, align 8
  store ptr inttoptr (i64 -2401263026318606046 to ptr), ptr %i.j, align 8
  tail call void @_raw_write_unlock_irqrestore(ptr noundef %i.e, i64 noundef %.026) #17
  %i.n = tail call fastcc i32 @sg_finish_rem_req(ptr noundef %i.i) #23, !srcloc !96 ; 0 uses
  %i.o = getelementptr i8, ptr %i.i, i64 16
  store ptr null, ptr %i.o, align 8
  %i.p = tail call i64 @_raw_write_lock_irqsave(ptr noundef %i.e) #17 ; 2 uses
  %i.q = load volatile ptr, ptr %i.g, align 8     ; 2 uses
  %.not = icmp eq ptr %i.q, %i.g
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !95

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %.0.lcssa = phi i64 [ %i.f, %bb.a ], [ %i.p, %.lr.ph ]
  tail call void @_raw_write_unlock_irqrestore(ptr noundef %i.e, i64 noundef %.0.lcssa) #17
  %i.r = getelementptr i8, ptr %0, i64 -4800
  %i.s = load i32, ptr %i.r, align 8
  %.not23 = icmp eq i32 %i.s, 0
  br i1 %.not23, label %bb.g, label %bb.b

bb.b:                                             ; preds = %._crit_edge
  %i.t = getelementptr i8, ptr %0, i64 -4808      ; 3 uses
  %i.u = getelementptr i8, ptr %0, i64 -4792      ; 3 uses
  %i.v = load ptr, ptr %i.u, align 8              ; 2 uses
  %.not.i = icmp eq ptr %i.v, null
  br i1 %.not.i, label %sg_remove_scat.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.w = getelementptr i8, ptr %0, i64 -4804
  %i.x = load i32, ptr %i.w, align 4
  %.not13.i = icmp eq i32 %i.x, 0
  br i1 %.not13.i, label %sg_remove_scat.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.y = getelementptr i8, ptr %0, i64 -4780
  %i.z = load i8, ptr %i.y, align 4
  %.not14.i = icmp eq i8 %i.z, 0
  br i1 %.not14.i, label %.preheader.i, label %sg_remove_scat.exit

.preheader.i:                                     ; preds = %bb.d
  %i.aa = load i16, ptr %i.t, align 8
  %.not3.i = icmp eq i16 %i.aa, 0
  br i1 %.not3.i, label %.critedge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader.i
  %i.ab = getelementptr i8, ptr %0, i64 -4784
  br label %bb.e

bb.e:                                             ; preds = %bb.f, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.f ] ; 2 uses
  %i.ac = load ptr, ptr %i.u, align 8             ; 2 uses
  %i.ad = getelementptr [8 x i8], ptr %i.ac, i64 %indvars.iv.i
  %i.ae = load ptr, ptr %i.ad, align 8            ; 2 uses
  %.not15.i = icmp eq ptr %i.ae, null
  br i1 %.not15.i, label %.critedge.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.af = load i32, ptr %i.ab, align 8
  tail call void @__free_pages(ptr noundef nonnull %i.ae, i32 noundef %i.af) #17
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.ag = load i16, ptr %i.t, align 8
  %i.ah = zext i16 %i.ag to i64
end_hunk_0
