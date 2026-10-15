Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/hdf5/original/H5Omessage?download=true
inline.NumInlined: 8
inline.NumDeleted: 1
begin_hunk_0_@H5O__copy_mesg:bb.a

bb.c:                                             ; preds = %bb.b
  %i.n = load i64, ptr @H5E_OHDR_g, align 8, !tbaa !17
  %i.o = load i64, ptr @H5E_CANTPROTECT_g, align 8, !tbaa !17
  %i.p = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5O__copy_mesg, i32 noundef 1810, i64 noundef %i.n, i64 noundef %i.o, ptr noundef nonnull @.str.50) #8 ; 0 uses
  br label %.thread

bb.d:                                             ; preds = %bb.b
  %i.q = getelementptr inbounds nuw i8, ptr %i.c, i64 24 ; 3 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !51   ; 3 uses
  %i.s = load i8, ptr @H5O_init_g, align 1, !tbaa !12, !range !13, !noundef !14
  %i.t = trunc nuw i8 %i.s to i1
  %i.u = load i8, ptr @H5_libterm_g, align 1, !range !13
  %i.v = trunc nuw i8 %i.u to i1
  %i.w = xor i1 %i.v, true
  %i.x = select i1 %i.t, i1 true, i1 %i.w
  %i.y = icmp ne ptr %i.r, null
  %or.cond.i = and i1 %i.y, %i.x
  br i1 %or.cond.i, label %bb.e, label %H5O__msg_reset_real.exit, !prof !52

bb.e:                                             ; preds = %bb.d
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !53  ; 2 uses
  %.not.i = icmp eq ptr %i.aa, null
  br i1 %.not.i, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ab = tail call i32 %i.aa(ptr noundef nonnull %i.r) #8, !inline_history !0
  %i.ac = icmp slt i32 %i.ab, 0
  br i1 %i.ac, label %bb.g, label %H5O__msg_reset_real.exit

bb.g:                                             ; preds = %bb.f
  %i.ad = load i64, ptr @H5E_OHDR_g, align 8, !tbaa !17
  %i.ae = load i64, ptr @H5E_CANTRELEASE_g, align 8, !tbaa !17
  %i.af = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5O__msg_reset_real, i32 noundef 559, i64 noundef %i.ad, i64 noundef %i.ae, ptr noundef nonnull @.str.47) #8 ; 0 uses
  br label %H5O__msg_reset_real.exit

bb.h:                                             ; preds = %bb.e
  %i.ag = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !54
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.r, i8 0, i64 %i.ah, i1 false)
  br label %H5O__msg_reset_real.exit

H5O__msg_reset_real.exit:                         ; preds = %bb.d, %bb.f, %bb.g, %bb.h
  %i.ai = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !55
  %i.ak = load ptr, ptr %i.q, align 8, !tbaa !51
  %i.al = tail call ptr %i.aj(ptr noundef %4, ptr noundef %i.ak) #8 ; 2 uses
  store ptr %i.al, ptr %i.q, align 8, !tbaa !51
  %i.am = icmp ne ptr %i.al, null                 ; 2 uses
  br i1 %i.am, label %bb.j, label %bb.i

bb.i:                                             ; preds = %H5O__msg_reset_real.exit
  %i.an = load i64, ptr @H5E_OHDR_g, align 8, !tbaa !17
  %i.ao = load i64, ptr @H5E_CANTINIT_g, align 8, !tbaa !17
  %i.ap = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5O__copy_mesg, i32 noundef 1817, i64 noundef %i.an, i64 noundef %i.ao, ptr noundef nonnull @.str.51) #8 ; 0 uses
  br label %bb.o

bb.j:                                             ; preds = %H5O__msg_reset_real.exit
  %i.aq = trunc i32 %5 to i8
  %i.ar = getelementptr inbounds nuw i8, ptr %i.c, i64 9
  store i8 %i.aq, ptr %i.ar, align 1, !tbaa !56
  %i.as = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i8 1, ptr %i.as, align 8, !tbaa !57
  %i.at = tail call i32 @H5O__chunk_unprotect(ptr noundef %0, ptr noundef nonnull %i.l, i1 noundef zeroext true) #8
  %i.au = icmp slt i32 %i.at, 0
  br i1 %i.au, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.av = load i64, ptr @H5E_OHDR_g, align 8, !tbaa !17
  %i.aw = load i64, ptr @H5E_CANTUNPROTECT_g, align 8, !tbaa !17
  %i.ax = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5O__copy_mesg, i32 noundef 1828, i64 noundef %i.av, i64 noundef %i.aw, ptr noundef nonnull @.str.52) #8 ; 0 uses
  br label %bb.o

bb.l:                                             ; preds = %bb.j
  %i.ay = and i32 %6, 1
  %.not = icmp eq i32 %i.ay, 0
  br i1 %.not, label %.thread, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.az = tail call i32 @H5O_touch_oh(ptr noundef %0, ptr noundef nonnull %1, i1 noundef zeroext false) #8
  %i.ba = icmp slt i32 %i.az, 0
  br i1 %i.ba, label %bb.n, label %.thread

bb.n:                                             ; preds = %bb.m
  %i.bb = load i64, ptr @H5E_OHDR_g, align 8, !tbaa !17
  %i.bc = load i64, ptr @H5E_CANTUPDATE_g, align 8, !tbaa !17
  %i.bd = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5O__copy_mesg, i32 noundef 1834, i64 noundef %i.bb, i64 noundef %i.bc, ptr noundef nonnull @.str.30) #8 ; 0 uses
  br label %.thread

bb.o:                                             ; preds = %bb.i, %bb.k
  %i.be = tail call i32 @H5O__chunk_unprotect(ptr noundef %0, ptr noundef nonnull %i.l, i1 noundef zeroext %i.am) #8
  %i.bf = icmp slt i32 %i.be, 0
  br i1 %i.bf, label %bb.p, label %.thread

bb.p:                                             ; preds = %bb.o
  %i.bg = load i64, ptr @H5E_OHDR_g, align 8, !tbaa !17
  %i.bh = load i64, ptr @H5E_CANTUNPROTECT_g, align 8, !tbaa !17
  %i.bi = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5O__copy_mesg, i32 noundef 1839, i64 noundef %i.bg, i64 noundef %i.bh, ptr noundef nonnull @.str.52) #8 ; 0 uses
  br label %.thread

.thread:                                          ; preds = %bb.l, %bb.m, %bb.n, %bb.c, %bb.o, %bb.p, %bb.a
  %.1 = phi i32 [ -1, %bb.p ], [ -1, %bb.o ], [ 0, %bb.a ], [ 0, %bb.l ], [ 0, %bb.m ], [ -1, %bb.n ], [ -1, %bb.c ]
  ret i32 %.1
}

; Function Attrs: nounwind uwtable
define range(i32 -1, 1) i32 @H5O_msg_write(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = load i8, ptr @H5O_init_g, align 1, !tbaa !12, !range !13, !noundef !14
  %i.b = trunc nuw i8 %i.a to i1                  ; 2 uses
  %i.c = load i8, ptr @H5_libterm_g, align 1, !range !13
  %i.d = trunc nuw i8 %i.c to i1                  ; 2 uses
  %i.e = select i1 %i.b, i1 true, i1 %i.d
  br i1 %i.e, label %bb.d, label %bb.b, !prof !15

bb.b:                                             ; preds = %bb.a
  store i8 1, ptr @H5O_init_g, align 1, !tbaa !12
  %i.f = tail call i32 @H5O__init_package() #8
  %i.g = icmp slt i32 %i.f, 0
  br i1 %i.g, label %bb.c, label %._crit_edge

._crit_edge:                                      ; preds = %bb.b
  %.pre = load i8, ptr @H5O_init_g, align 1, !tbaa !12, !range !13
  %.pre20 = load i8, ptr @H5_libterm_g, align 1, !range !13
  %.pre21 = trunc nuw i8 %.pre to i1
  %.pre22 = trunc nuw i8 %.pre20 to i1
  br label %bb.d

bb.c:                                             ; preds = %bb.b
  store i8 0, ptr @H5O_init_g, align 1, !tbaa !12
  %i.h = load i64, ptr @H5E_FUNC_g, align 8, !tbaa !17
  %i.i = load i64, ptr @H5E_CANTINIT_g, align 8, !tbaa !17
  %i.j = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5O_msg_write, i32 noundef 228, i64 noundef %i.h, i64 noundef %i.i, ptr noundef nonnull @.str.1) #8 ; 0 uses
  br label %.thread

bb.d:                                             ; preds = %._crit_edge, %bb.a
  %.pre-phi23 = phi i1 [ %.pre22, %._crit_edge ], [ %i.d, %bb.a ]
  %.pre-phi = phi i1 [ %.pre21, %._crit_edge ], [ %i.b, %bb.a ]
  %i.k = xor i1 %.pre-phi23, true
  %i.l = select i1 %.pre-phi, i1 true, i1 %i.k
  br i1 %i.l, label %bb.e, label %.thread, !prof !15

bb.e:                                             ; preds = %bb.d
  %i.m = zext i32 %1 to i64
  %i.n = getelementptr inbounds nuw [8 x i8], ptr @H5O_msg_class_g, i64 %i.m
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !23
  %i.p = tail call ptr @H5O_pin(ptr noundef %0) #8 ; 3 uses
  %i.q = icmp eq ptr %i.p, null
  br i1 %i.q, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.r = load i64, ptr @H5E_OHDR_g, align 8, !tbaa !17
  %i.s = load i64, ptr @H5E_CANTPIN_g, align 8, !tbaa !17
  %i.t = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5O_msg_write, i32 noundef 243, i64 noundef %i.r, i64 noundef %i.s, ptr noundef nonnull @.str.2) #8 ; 0 uses
  br label %.thread

bb.g:                                             ; preds = %bb.e
  %i.u = load ptr, ptr %0, align 8, !tbaa !21
  %i.v = tail call i32 @H5O__msg_write_real(ptr noundef %i.u, ptr noundef nonnull %i.p, ptr noundef %i.o, i32 noundef %2, i32 noundef %3, ptr noundef %4)
  %i.w = icmp slt i32 %i.v, 0
  br i1 %i.w, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.x = load i64, ptr @H5E_OHDR_g, align 8, !tbaa !17
  %i.y = load i64, ptr @H5E_WRITEERROR_g, align 8, !tbaa !17
  %i.z = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5O_msg_write, i32 noundef 247, i64 noundef %i.x, i64 noundef %i.y, ptr noundef nonnull @.str.8) #8 ; 0 uses
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.0 = phi i32 [ -1, %bb.h ], [ 0, %bb.g ]
  %i.aa = tail call i32 @H5O_unpin(ptr noundef nonnull %i.p) #8
  %i.ab = icmp slt i32 %i.aa, 0
  br i1 %i.ab, label %bb.j, label %.thread

bb.j:                                             ; preds = %bb.i
  %i.ac = load i64, ptr @H5E_OHDR_g, align 8, !tbaa !17
  %i.ad = load i64, ptr @H5E_CANTUNPIN_g, align 8, !tbaa !17
  %i.ae = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5O_msg_write, i32 noundef 251, i64 noundef %i.ac, i64 noundef %i.ad, ptr noundef nonnull @.str.4) #8 ; 0 uses
  br label %.thread

.thread:                                          ; preds = %bb.f, %bb.c, %bb.i, %bb.j, %bb.d
  %.1 = phi i32 [ -1, %bb.j ], [ %.0, %bb.i ], [ 0, %bb.d ], [ -1, %bb.c ], [ -1, %bb.f ]
  ret i32 %.1
}

; Function Attrs: nounwind uwtable
define range(i32 -1, 1) i32 @H5O__msg_write_real(ptr noundef %0, ptr noundef %1, ptr nofree noundef readonly captures(address) %2, i32 noundef %3, i32 noundef %4, ptr noundef %5) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 3 uses
  store i32 %3, ptr %i.a, align 4, !tbaa !24
  %i.b = load i8, ptr @H5O_init_g, align 1, !tbaa !12, !range !13, !noundef !14
  %i.c = trunc nuw i8 %i.b to i1
  %i.d = load i8, ptr @H5_libterm_g, align 1, !range !13
  %i.e = trunc nuw i8 %i.d to i1
  %i.f = xor i1 %i.e, true
  %i.g = select i1 %i.c, i1 true, i1 %i.f
  br i1 %i.g, label %bb.b, label %.thread, !prof !15

bb.b:                                             ; preds = %bb.a
  %6 = getelementptr inbounds nuw i8, ptr %1, i64 352
  %7 = load ptr, ptr %6, align 8, !tbaa !44       ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 336
  %i.i = load i64, ptr %i.h, align 8, !tbaa !46   ; 3 uses
  %.not55 = icmp eq i64 %i.i, 0
  br i1 %.not55, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b, %bb.c
  %.03648 = phi i64 [ %i.l, %bb.c ], [ 0, %bb.b ] ; 2 uses
  %.03747 = phi ptr [ %i.m, %bb.c ], [ %7, %bb.b ] ; 3 uses
  %i.j = load ptr, ptr %.03747, align 8, !tbaa !48
  %i.k = icmp eq ptr %2, %i.j
  br i1 %i.k, label %._crit_edge, label %bb.c

bb.c:                                             ; preds = %.lr.ph
  %i.l = add nuw i64 %.03648, 1                   ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.03747, i64 48
  %exitcond.not = icmp eq i64 %i.l, %i.i
  br i1 %exitcond.not, label %._crit_edge.thread, label %.lr.ph, !llvm.loop !93

._crit_edge:                                      ; preds = %.lr.ph, %bb.b
  %.037.lcssa = phi ptr [ %7, %bb.b ], [ %.03747, %.lr.ph ] ; 3 uses
  %.036.lcssa = phi i64 [ 0, %bb.b ], [ %.03648, %.lr.ph ] ; 2 uses
  %i.n = icmp eq i64 %.036.lcssa, %i.i
  br i1 %i.n, label %._crit_edge.thread, label %bb.d

._crit_edge.thread:                               ; preds = %bb.c, %._crit_edge
  %i.o = load i64, ptr @H5E_OHDR_g, align 8, !tbaa !17
  %i.p = load i64, ptr @H5E_NOTFOUND_g, align 8, !tbaa !17
  %i.q = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5O__msg_write_real, i32 noundef 337, i64 noundef %i.o, i64 noundef %i.p, ptr noundef nonnull @.str.9) #8 ; 0 uses
  br label %.thread

bb.d:                                             ; preds = %._crit_edge
  %i.r = and i32 %4, 2
  %.not = icmp ne i32 %i.r, 0
  %i.s = getelementptr inbounds nuw i8, ptr %.037.lcssa, i64 9
  %i.t = load i8, ptr %i.s, align 1, !tbaa !56    ; 2 uses
  %i.u = and i8 %i.t, 1
  %.not40 = icmp eq i8 %i.u, 0
  %or.cond64 = select i1 %.not, i1 true, i1 %.not40
  br i1 %or.cond64, label %._crit_edge56, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.v = load i64, ptr @H5E_OHDR_g, align 8, !tbaa !17
  %i.w = load i64, ptr @H5E_WRITEERROR_g, align 8, !tbaa !17
  %i.x = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5O__msg_write_real, i32 noundef 341, i64 noundef %i.v, i64 noundef %i.w, ptr noundef nonnull @.str.10) #8 ; 0 uses
  br label %.thread

._crit_edge56:                                    ; preds = %bb.d
  %i.y = and i8 %i.t, 66
  %or.cond = icmp eq i8 %i.y, 0
  br i1 %or.cond, label %bb.l, label %bb.f

bb.f:                                             ; preds = %._crit_edge56
  %i.z = getelementptr inbounds nuw i8, ptr %.037.lcssa, i64 24
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !51
  %i.ab = tail call i32 @H5SM_delete(ptr noundef %0, ptr noundef nonnull %1, ptr noundef %i.aa) #8
  %i.ac = icmp slt i32 %i.ab, 0
  br i1 %i.ac, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ad = load i64, ptr @H5E_OHDR_g, align 8, !tbaa !17
  %i.ae = load i64, ptr @H5E_CANTDELETE_g, align 8, !tbaa !17
  %i.af = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5O__msg_write_real, i32 noundef 368, i64 noundef %i.ad, i64 noundef %i.ae, ptr noundef nonnull @.str.11) #8 ; 0 uses
  br label %.thread

bb.h:                                             ; preds = %bb.f
  %i.ag = and i32 %3, 2
  %.not43 = icmp eq i32 %i.ag, 0
  %i.ah = select i1 %.not43, ptr %1, ptr null
  %i.ai = load ptr, ptr %.037.lcssa, align 8, !tbaa !48
  %i.aj = load i32, ptr %i.ai, align 8, !tbaa !27
  %i.ak = call i32 @H5SM_try_share(ptr noundef %0, ptr noundef %i.ah, i32 noundef 0, i32 noundef %i.aj, ptr noundef %5, ptr noundef nonnull %i.a) #8 ; 2 uses
  %i.al = icmp slt i32 %i.ak, 0
  br i1 %i.al, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.am = load i64, ptr @H5E_OHDR_g, align 8, !tbaa !17
  %i.an = load i64, ptr @H5E_BADMESG_g, align 8, !tbaa !17
  %i.ao = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5O__msg_write_real, i32 noundef 379, i64 noundef %i.am, i64 noundef %i.an, ptr noundef nonnull @.str.12) #8 ; 0 uses
  br label %.thread

bb.j:                                             ; preds = %bb.h
  %i.ap = icmp ne i32 %i.ak, 0
  %.pre57 = load i32, ptr %i.a, align 4, !tbaa !24 ; 2 uses
  %i.aq = and i32 %.pre57, 2
  %.not44 = icmp eq i32 %i.aq, 0
  %or.cond65 = select i1 %i.ap, i1 true, i1 %.not44
  br i1 %or.cond65, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ar = load i64, ptr @H5E_OHDR_g, align 8, !tbaa !17
  %i.as = load i64, ptr @H5E_BADMESG_g, align 8, !tbaa !17
  %i.at = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5O__msg_write_real, i32 noundef 381, i64 noundef %i.ar, i64 noundef %i.as, ptr noundef nonnull @.str.13) #8 ; 0 uses
  br label %.thread

bb.l:                                             ; preds = %bb.j, %._crit_edge56
  %i.au = phi i32 [ %3, %._crit_edge56 ], [ %.pre57, %bb.j ]
  %i.av = call fastcc i32 @H5O__copy_mesg(ptr noundef %0, ptr noundef nonnull %1, i64 noundef %.036.lcssa, ptr noundef %2, ptr noundef %5, i32 noundef %i.au, i32 noundef %4)
  %i.aw = icmp slt i32 %i.av, 0
  br i1 %i.aw, label %bb.m, label %.thread

bb.m:                                             ; preds = %bb.l
  %i.ax = load i64, ptr @H5E_OHDR_g, align 8, !tbaa !17
  %i.ay = load i64, ptr @H5E_CANTINIT_g, align 8, !tbaa !17
  %i.az = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5O__msg_write_real, i32 noundef 386, i64 noundef %i.ax, i64 noundef %i.ay, ptr noundef nonnull @.str.7) #8 ; 0 uses
  br label %.thread

.thread:                                          ; preds = %bb.k, %bb.i, %bb.g, %bb.a, %bb.l, %bb.m, %bb.e, %._crit_edge.thread
  %.2 = phi i32 [ -1, %._crit_edge.thread ], [ -1, %bb.m ], [ 0, %bb.l ], [ 0, %bb.a ], [ -1, %bb.e ], [ -1, %bb.g ], [ -1, %bb.i ], [ -1, %bb.k ]
  ret i32 %.2
}

; Function Attrs: nounwind uwtable
define range(i32 -1, 1) i32 @H5O_msg_write_oh(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, ptr noundef %5) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  store i64 -1, ptr %i.a, align 8, !tbaa !17
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load i64, ptr %i.b, align 8, !tbaa !94
  call void @H5AC_tag(i64 noundef %i.c, ptr noundef nonnull %i.a) #8
  %i.d = load i8, ptr @H5O_init_g, align 1, !tbaa !12, !range !13, !noundef !14
  %i.e = trunc nuw i8 %i.d to i1                  ; 2 uses
  %i.f = load i8, ptr @H5_libterm_g, align 1, !range !13
  %i.g = trunc nuw i8 %i.f to i1                  ; 2 uses
  %i.h = select i1 %i.e, i1 true, i1 %i.g
  br i1 %i.h, label %bb.d, label %bb.b, !prof !15

bb.b:                                             ; preds = %bb.a
  store i8 1, ptr @H5O_init_g, align 1, !tbaa !12
  %i.i = call i32 @H5O__init_package() #8
  %i.j = icmp slt i32 %i.i, 0
  br i1 %i.j, label %bb.c, label %._crit_edge

._crit_edge:                                      ; preds = %bb.b
  %.pre = load i8, ptr @H5O_init_g, align 1, !tbaa !12, !range !13
  %.pre10 = load i8, ptr @H5_libterm_g, align 1, !range !13
  %.pre11 = trunc nuw i8 %.pre to i1
  %.pre12 = trunc nuw i8 %.pre10 to i1
  br label %bb.d

bb.c:                                             ; preds = %bb.b
  store i8 0, ptr @H5O_init_g, align 1, !tbaa !12
  %i.k = load i64, ptr @H5E_FUNC_g, align 8, !tbaa !17
  %i.l = load i64, ptr @H5E_CANTINIT_g, align 8, !tbaa !17
  %i.m = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5O_msg_write_oh, i32 noundef 278, i64 noundef %i.k, i64 noundef %i.l, ptr noundef nonnull @.str.1) #8 ; 0 uses
  br label %bb.g

bb.d:                                             ; preds = %._crit_edge, %bb.a
  %.pre-phi13 = phi i1 [ %.pre12, %._crit_edge ], [ %i.g, %bb.a ]
  %.pre-phi = phi i1 [ %.pre11, %._crit_edge ], [ %i.e, %bb.a ]
  %i.n = xor i1 %.pre-phi13, true
  %i.o = select i1 %.pre-phi, i1 true, i1 %i.n
  br i1 %i.o, label %bb.e, label %bb.g, !prof !15

bb.e:                                             ; preds = %bb.d
  %i.p = zext i32 %2 to i64
  %i.q = getelementptr inbounds nuw [8 x i8], ptr @H5O_msg_class_g, i64 %i.p
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !23
  %i.s = call i32 @H5O__msg_write_real(ptr noundef %0, ptr noundef nonnull %1, ptr noundef %i.r, i32 noundef %3, i32 noundef %4, ptr noundef %5)
  %i.t = icmp slt i32 %i.s, 0
  br i1 %i.t, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.u = load i64, ptr @H5E_OHDR_g, align 8, !tbaa !17
  %i.v = load i64, ptr @H5E_WRITEERROR_g, align 8, !tbaa !17
  %i.w = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5O_msg_write_oh, i32 noundef 292, i64 noundef %i.u, i64 noundef %i.v, ptr noundef nonnull @.str.8) #8 ; 0 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.c, %bb.f, %bb.e, %bb.d
  %.0 = phi i32 [ -1, %bb.c ], [ -1, %bb.f ], [ 0, %bb.e ], [ 0, %bb.d ]
  %i.x = load i64, ptr %i.a, align 8, !tbaa !17
  call void @H5AC_tag(i64 noundef %i.x, ptr noundef null) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  ret i32 %.0
}

declare void @H5AC_tag(i64 noundef, ptr noundef) local_unnamed_addr #2

declare i32 @H5SM_delete(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @H5SM_try_share(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define ptr @H5O_msg_read(ptr noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  store i64 -1, ptr %i.a, align 8, !tbaa !17
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.b, align 8, !tbaa !58
  call void @H5AC_tag(i64 noundef %i.c, ptr noundef nonnull %i.a) #8
  %i.d = load i8, ptr @H5O_init_g, align 1, !tbaa !12, !range !13, !noundef !14
  %i.e = trunc nuw i8 %i.d to i1                  ; 2 uses
  %i.f = load i8, ptr @H5_libterm_g, align 1, !range !13
  %i.g = trunc nuw i8 %i.f to i1                  ; 2 uses
  %i.h = select i1 %i.e, i1 true, i1 %i.g
  br i1 %i.h, label %bb.d, label %bb.b, !prof !15

bb.b:                                             ; preds = %bb.a
  store i8 1, ptr @H5O_init_g, align 1, !tbaa !12
  %i.i = call i32 @H5O__init_package() #8
  %i.j = icmp slt i32 %i.i, 0
  br i1 %i.j, label %bb.c, label %._crit_edge

._crit_edge:                                      ; preds = %bb.b
  %.pre = load i8, ptr @H5O_init_g, align 1, !tbaa !12, !range !13
  %.pre20 = load i8, ptr @H5_libterm_g, align 1, !range !13
  %.pre21 = trunc nuw i8 %.pre to i1
  %.pre22 = trunc nuw i8 %.pre20 to i1
  br label %bb.d

bb.c:                                             ; preds = %bb.b
  store i8 0, ptr @H5O_init_g, align 1, !tbaa !12
  %i.k = load i64, ptr @H5E_FUNC_g, align 8, !tbaa !17
  %i.l = load i64, ptr @H5E_CANTINIT_g, align 8, !tbaa !17
  %i.m = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5O_msg_read, i32 noundef 420, i64 noundef %i.k, i64 noundef %i.l, ptr noundef nonnull @.str.1) #8 ; 0 uses
  br label %.thread

bb.d:                                             ; preds = %._crit_edge, %bb.a
  %.pre-phi23 = phi i1 [ %.pre22, %._crit_edge ], [ %i.g, %bb.a ]
  %.pre-phi = phi i1 [ %.pre21, %._crit_edge ], [ %i.e, %bb.a ]
  %i.n = xor i1 %.pre-phi23, true
  %i.o = select i1 %.pre-phi, i1 true, i1 %i.n
  br i1 %i.o, label %bb.e, label %.thread, !prof !15

bb.e:                                             ; preds = %bb.d
  %i.p = call ptr @H5O_protect(ptr noundef nonnull %0, i32 noundef 128, i1 noundef zeroext false) #8 ; 3 uses
  %i.q = icmp eq ptr %i.p, null
  br i1 %i.q, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.r = load i64, ptr @H5E_OHDR_g, align 8, !tbaa !17
  %i.s = load i64, ptr @H5E_CANTPROTECT_g, align 8, !tbaa !17
  %i.t = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5O_msg_read, i32 noundef 430, i64 noundef %i.r, i64 noundef %i.s, ptr noundef nonnull @.str.14) #8 ; 0 uses
  br label %.thread

bb.g:                                             ; preds = %bb.e
  %i.u = load ptr, ptr %0, align 8, !tbaa !21
  %i.v = call ptr @H5O_msg_read_oh(ptr noundef %i.u, ptr noundef nonnull %i.p, i32 noundef %1, ptr noundef %2) ; 2 uses
  %i.w = icmp eq ptr %i.v, null
  br i1 %i.w, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.x = load i64, ptr @H5E_OHDR_g, align 8, !tbaa !17
  %i.y = load i64, ptr @H5E_READERROR_g, align 8, !tbaa !17
  %i.z = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5O_msg_read, i32 noundef 434, i64 noundef %i.x, i64 noundef %i.y, ptr noundef nonnull @.str.15) #8 ; 0 uses
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.aa = call i32 @H5O_unprotect(ptr noundef nonnull %0, ptr noundef nonnull %i.p, i32 noundef 0) #8
  %i.ab = icmp slt i32 %i.aa, 0
  br i1 %i.ab, label %bb.j, label %.thread

bb.j:                                             ; preds = %bb.i
  %i.ac = load i64, ptr @H5E_OHDR_g, align 8, !tbaa !17
  %i.ad = load i64, ptr @H5E_CANTUNPROTECT_g, align 8, !tbaa !17
  %i.ae = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5O_msg_read, i32 noundef 438, i64 noundef %i.ac, i64 noundef %i.ad, ptr noundef nonnull @.str.16) #8 ; 0 uses
  br label %.thread

.thread:                                          ; preds = %bb.f, %bb.c, %bb.i, %bb.j, %bb.d
  %.1 = phi ptr [ null, %bb.j ], [ %i.v, %bb.i ], [ null, %bb.d ], [ null, %bb.c ], [ null, %bb.f ]
  %i.af = load i64, ptr %i.a, align 8, !tbaa !17
  call void @H5AC_tag(i64 noundef %i.af, ptr noundef null) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  ret ptr %.1
}

declare ptr @H5O_protect(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define ptr @H5O_msg_read_oh(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 6 uses
  %i.b = load i8, ptr @H5O_init_g, align 1, !tbaa !12, !range !13, !noundef !14
  %i.c = trunc nuw i8 %i.b to i1
  %i.d = load i8, ptr @H5_libterm_g, align 1, !range !13
  %i.e = trunc nuw i8 %i.d to i1
  %i.f = xor i1 %i.e, true
  %i.g = select i1 %i.c, i1 true, i1 %i.f
  br i1 %i.g, label %bb.b, label %bb.q, !prof !15

bb.b:                                             ; preds = %bb.a
  %i.h = zext i32 %2 to i64
  %i.i = getelementptr inbounds nuw [8 x i8], ptr @H5O_msg_class_g, i64 %i.h
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !23   ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 336
  %i.l = load i64, ptr %i.k, align 8, !tbaa !46   ; 3 uses
  %.not77 = icmp eq i64 %i.l, 0
  br i1 %.not77, label %._crit_edge.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 352
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !44
  br label %bb.d

bb.c:                                             ; preds = %bb.d
  %i.o = add i32 %.06172, 1                       ; 2 uses
end_hunk_0
