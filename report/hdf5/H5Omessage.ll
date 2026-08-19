inline.NumInlined: 8
inline.NumDeleted: 1
begin_hunk_0_@H5O_msg_free_real:bb.a
bb.g:                                             ; preds = %H5O__msg_reset_real.exit
  %i.t = tail call ptr @H5MM_xfree(ptr noundef nonnull %1) #8 ; 0 uses
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.a
  ret ptr null
}

; Function Attrs: nounwind uwtable
define noundef i32 @H5O__msg_free_mesg(ptr nofree noundef captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = load i8, ptr @H5O_init_g, align 1, !tbaa !8, !range !10, !noundef !11
  %i.b = trunc nuw i8 %i.a to i1
  %i.c = load i8, ptr @H5_libterm_g, align 1, !range !10
  %i.d = trunc nuw i8 %i.c to i1
  %i.e = xor i1 %i.d, true
  %i.f = select i1 %i.b, i1 true, i1 %i.e
  br i1 %i.f, label %bb.b, label %bb.i, !prof !12

bb.b:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %0, align 8, !tbaa !46     ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !52   ; 5 uses
  %.not = icmp eq ptr %i.i, null
  br i1 %.not, label %H5O_msg_free_real.exit, label %bb.c, !prof !76

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 64
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !54   ; 2 uses
  %.not.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = tail call i32 %i.k(ptr noundef nonnull %i.i) #8, !inline_history !77
  %i.m = icmp slt i32 %i.l, 0
  br i1 %i.m, label %bb.e, label %H5O__msg_reset_real.exit.i

bb.e:                                             ; preds = %bb.d
  %i.n = load i64, ptr @H5E_OHDR_g, align 8, !tbaa !13
  %i.o = load i64, ptr @H5E_CANTRELEASE_g, align 8, !tbaa !13
  %i.p = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5O__msg_reset_real, i32 noundef 559, i64 noundef %i.n, i64 noundef %i.o, ptr noundef nonnull @.str.47) #8 ; 0 uses
  br label %H5O__msg_reset_real.exit.i

bb.f:                                             ; preds = %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.r = load i64, ptr %i.q, align 8, !tbaa !56
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.i, i8 0, i64 %i.r, i1 false)
  br label %H5O__msg_reset_real.exit.i

H5O__msg_reset_real.exit.i:                       ; preds = %bb.f, %bb.e, %bb.d
  %i.s = getelementptr inbounds nuw i8, ptr %i.g, i64 72
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !78   ; 2 uses
  %.not11.i = icmp eq ptr %i.t, null
  br i1 %.not11.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %H5O__msg_reset_real.exit.i
  %i.u = tail call i32 %i.t(ptr noundef nonnull %i.i) #8, !inline_history !79 ; 0 uses
  br label %H5O_msg_free_real.exit

bb.h:                                             ; preds = %H5O__msg_reset_real.exit.i
  %i.v = tail call ptr @H5MM_xfree(ptr noundef nonnull %i.i) #8 ; 0 uses
  br label %H5O_msg_free_real.exit

H5O_msg_free_real.exit:                           ; preds = %bb.b, %bb.g, %bb.h
  store ptr null, ptr %i.h, align 8, !tbaa !52
  br label %bb.i

bb.i:                                             ; preds = %H5O_msg_free_real.exit, %bb.a
  ret i32 0
}

declare ptr @H5MM_xfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define ptr @H5O_msg_copy(i32 noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = load i8, ptr @H5O_init_g, align 1, !tbaa !8, !range !10, !noundef !11
  %i.b = trunc nuw i8 %i.a to i1                  ; 2 uses
  %i.c = load i8, ptr @H5_libterm_g, align 1, !range !10
  %i.d = trunc nuw i8 %i.c to i1                  ; 2 uses
  %i.e = select i1 %i.b, i1 true, i1 %i.d
  br i1 %i.e, label %bb.d, label %bb.b, !prof !12

bb.b:                                             ; preds = %bb.a
  store i8 1, ptr @H5O_init_g, align 1, !tbaa !8
  %i.f = tail call i32 @H5O__init_package() #8
  %i.g = icmp slt i32 %i.f, 0
  br i1 %i.g, label %bb.c, label %._crit_edge

._crit_edge:                                      ; preds = %bb.b
  %.pre = load i8, ptr @H5O_init_g, align 1, !tbaa !8, !range !10
  %.pre7 = load i8, ptr @H5_libterm_g, align 1, !range !10
  %.pre8 = trunc nuw i8 %.pre to i1
  %.pre9 = trunc nuw i8 %.pre7 to i1
  br label %bb.d

bb.c:                                             ; preds = %bb.b
  store i8 0, ptr @H5O_init_g, align 1, !tbaa !8
  %i.h = load i64, ptr @H5E_FUNC_g, align 8, !tbaa !13
  %i.i = load i64, ptr @H5E_CANTINIT_g, align 8, !tbaa !13
  %i.j = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5O_msg_copy, i32 noundef 669, i64 noundef %i.h, i64 noundef %i.i, ptr noundef nonnull @.str.1) #8 ; 0 uses
  br label %bb.g

bb.d:                                             ; preds = %._crit_edge, %bb.a
  %.pre-phi10 = phi i1 [ %.pre9, %._crit_edge ], [ %i.d, %bb.a ]
  %.pre-phi = phi i1 [ %.pre8, %._crit_edge ], [ %i.b, %bb.a ]
  %i.k = xor i1 %.pre-phi10, true
  %i.l = select i1 %.pre-phi, i1 true, i1 %i.k
  br i1 %i.l, label %bb.e, label %bb.g, !prof !12

bb.e:                                             ; preds = %bb.d
  %i.m = zext i32 %0 to i64
  %i.n = getelementptr inbounds nuw [8 x i8], ptr @H5O_msg_class_g, i64 %i.m
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !19
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 48
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !57
  %i.r = tail call ptr %i.q(ptr noundef %1, ptr noundef %2) #8 ; 2 uses
  %i.s = icmp eq ptr %i.r, null
  br i1 %i.s, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.t = load i64, ptr @H5E_OHDR_g, align 8, !tbaa !13
  %i.u = load i64, ptr @H5E_CANTINIT_g, align 8, !tbaa !13
  %i.v = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5O_msg_copy, i32 noundef 679, i64 noundef %i.t, i64 noundef %i.u, ptr noundef nonnull @.str.21) #8 ; 0 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.c, %bb.f, %bb.e, %bb.d
  %.0 = phi ptr [ null, %bb.c ], [ null, %bb.f ], [ %i.r, %bb.e ], [ null, %bb.d ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define i32 @H5O_msg_count(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = load i8, ptr @H5O_init_g, align 1, !tbaa !8, !range !10, !noundef !11
  %i.b = trunc nuw i8 %i.a to i1                  ; 2 uses
  %i.c = load i8, ptr @H5_libterm_g, align 1, !range !10
  %i.d = trunc nuw i8 %i.c to i1                  ; 2 uses
  %i.e = select i1 %i.b, i1 true, i1 %i.d
  br i1 %i.e, label %bb.d, label %bb.b, !prof !12

bb.b:                                             ; preds = %bb.a
  store i8 1, ptr @H5O_init_g, align 1, !tbaa !8
  %i.f = tail call i32 @H5O__init_package() #8
  %i.g = icmp slt i32 %i.f, 0
  br i1 %i.g, label %bb.c, label %._crit_edge

._crit_edge:                                      ; preds = %bb.b
  %.pre = load i8, ptr @H5O_init_g, align 1, !tbaa !8, !range !10
  %.pre19 = load i8, ptr @H5_libterm_g, align 1, !range !10
  %.pre20 = trunc nuw i8 %.pre to i1
  %.pre21 = trunc nuw i8 %.pre19 to i1
  br label %bb.d

bb.c:                                             ; preds = %bb.b
  store i8 0, ptr @H5O_init_g, align 1, !tbaa !8
  %i.h = load i64, ptr @H5E_FUNC_g, align 8, !tbaa !13
  %i.i = load i64, ptr @H5E_CANTINIT_g, align 8, !tbaa !13
  %i.j = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5O_msg_count, i32 noundef 705, i64 noundef %i.h, i64 noundef %i.i, ptr noundef nonnull @.str.1) #8 ; 0 uses
  br label %H5O__msg_count_real.exit

bb.d:                                             ; preds = %._crit_edge, %bb.a
  %.pre-phi22 = phi i1 [ %.pre21, %._crit_edge ], [ %i.d, %bb.a ]
  %.pre-phi = phi i1 [ %.pre20, %._crit_edge ], [ %i.b, %bb.a ]
  %i.k = xor i1 %.pre-phi22, true
  %i.l = select i1 %.pre-phi, i1 true, i1 %i.k
  br i1 %i.l, label %bb.e, label %H5O__msg_count_real.exit, !prof !12

bb.e:                                             ; preds = %bb.d
  %i.m = zext i32 %1 to i64
  %i.n = getelementptr inbounds nuw [8 x i8], ptr @H5O_msg_class_g, i64 %i.m
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !19   ; 2 uses
  %i.p = tail call ptr @H5O_protect(ptr noundef %0, i32 noundef 128, i1 noundef zeroext false) #8 ; 4 uses
  %i.q = icmp eq ptr %i.p, null
  br i1 %i.q, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.r = load i64, ptr @H5E_OHDR_g, align 8, !tbaa !13
  %i.s = load i64, ptr @H5E_CANTPROTECT_g, align 8, !tbaa !13
  %i.t = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5O_msg_count, i32 noundef 717, i64 noundef %i.r, i64 noundef %i.s, ptr noundef nonnull @.str.14) #8 ; 0 uses
  br label %H5O__msg_count_real.exit

bb.g:                                             ; preds = %bb.e
  %i.u = load i8, ptr @H5O_init_g, align 1, !tbaa !8, !range !10, !noundef !11
  %i.v = trunc nuw i8 %i.u to i1
  %i.w = load i8, ptr @H5_libterm_g, align 1, !range !10
  %i.x = trunc nuw i8 %i.w to i1
  %i.y = xor i1 %i.x, true
  %i.z = select i1 %i.v, i1 true, i1 %i.y
  br i1 %i.z, label %.preheader.i, label %.loopexit, !prof !12

.preheader.i:                                     ; preds = %bb.g
  %i.aa = getelementptr inbounds nuw i8, ptr %i.p, i64 336
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !45 ; 6 uses
  %.not.i = icmp eq i64 %i.ab, 0
  br i1 %.not.i, label %.loopexit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader.i
  %i.ac = getelementptr inbounds nuw i8, ptr %i.p, i64 352
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !30 ; 5 uses
  %min.iters.check = icmp ult i64 %i.ab, 11
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.lr.ph.i
  %i.ae = add i64 %i.ab, -1                       ; 2 uses
  %i.af = and i64 %i.ae, 4294967295
  %i.ag = icmp eq i64 %i.af, 4294967295
  %i.ah = icmp ugt i64 %i.ae, 4294967295
  %i.ai = or i1 %i.ag, %i.ah
  br i1 %i.ai, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.scevcheck
  %i.aj = and i64 %i.ab, 3                        ; 2 uses
  %i.ak = icmp eq i64 %i.aj, 0
  %i.al = select i1 %i.ak, i64 4, i64 %i.aj
  %n.vec = sub nsw i64 %i.ab, %i.al               ; 3 uses
  %2 = trunc i64 %n.vec to i32
  %broadcast.splatinsert = insertelement <2 x ptr> poison, ptr %i.o, i64 0
  %broadcast.splat = shufflevector <2 x ptr> %broadcast.splatinsert, <2 x ptr> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 5 uses
  %vec.phi = phi <2 x i32> [ zeroinitializer, %vector.ph ], [ %i.bf, %vector.body ]
  %vec.phi24 = phi <2 x i32> [ zeroinitializer, %vector.ph ], [ %i.bg, %vector.body ]
  %i.am = getelementptr inbounds nuw [48 x i8], ptr %i.ad, i64 %index
  %i.an = getelementptr inbounds nuw [48 x i8], ptr %i.ad, i64 %index
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 48
  %i.ap = getelementptr inbounds nuw [48 x i8], ptr %i.ad, i64 %index
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 96
  %i.ar = getelementptr inbounds nuw [48 x i8], ptr %i.ad, i64 %index
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 144
  %i.at = load ptr, ptr %i.am, align 8, !tbaa !46
  %i.au = load ptr, ptr %i.ao, align 8, !tbaa !46
  %i.av = insertelement <2 x ptr> poison, ptr %i.at, i64 0
  %i.aw = insertelement <2 x ptr> %i.av, ptr %i.au, i64 1
  %i.ax = load ptr, ptr %i.aq, align 8, !tbaa !46
  %i.ay = load ptr, ptr %i.as, align 8, !tbaa !46
  %i.az = insertelement <2 x ptr> poison, ptr %i.ax, i64 0
  %i.ba = insertelement <2 x ptr> %i.az, ptr %i.ay, i64 1
  %i.bb = icmp eq <2 x ptr> %i.aw, %broadcast.splat
  %i.bc = icmp eq <2 x ptr> %i.ba, %broadcast.splat
  %i.bd = zext <2 x i1> %i.bb to <2 x i32>
  %i.be = zext <2 x i1> %i.bc to <2 x i32>
  %i.bf = add <2 x i32> %vec.phi, %i.bd           ; 2 uses
  %i.bg = add <2 x i32> %vec.phi24, %i.be         ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bh = icmp eq i64 %index.next, %n.vec
  br i1 %i.bh, label %middle.block, label %vector.body, !llvm.loop !80

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <2 x i32> %i.bg, %i.bf
  %i.bi = tail call i32 @llvm.vector.reduce.add.v2i32(<2 x i32> %bin.rdx)
  br label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.scevcheck, %.lr.ph.i, %middle.block
  %indvars.iv.i.ph = phi i64 [ 0, %vector.scevcheck ], [ 0, %.lr.ph.i ], [ %n.vec, %middle.block ]
  %.010.i.ph = phi i32 [ 0, %vector.scevcheck ], [ 0, %.lr.ph.i ], [ %i.bi, %middle.block ]
  %.079.i.ph = phi i32 [ 0, %vector.scevcheck ], [ 0, %.lr.ph.i ], [ %2, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv.i = phi i64 [ %4, %scalar.ph ], [ %indvars.iv.i.ph, %scalar.ph.preheader ]
  %.010.i = phi i32 [ %spec.select.i, %scalar.ph ], [ %.010.i.ph, %scalar.ph.preheader ]
  %.010.i.a = phi i32 [ %3, %scalar.ph ], [ %.079.i.ph, %scalar.ph.preheader ]
  %i.bj = getelementptr inbounds nuw [48 x i8], ptr %i.ad, i64 %indvars.iv.i
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !46
  %i.bl = icmp eq ptr %i.bk, %i.o
  %i.bm = zext i1 %i.bl to i32
  %spec.select.i = add i32 %.010.i, %i.bm         ; 2 uses
  %3 = add i32 %.010.i.a, 1                       ; 2 uses
  %4 = zext i32 %3 to i64                         ; 2 uses
  %i.bn = icmp ugt i64 %i.ab, %4
  br i1 %i.bn, label %scalar.ph, label %.loopexit, !llvm.loop !83

.loopexit:                                        ; preds = %scalar.ph, %bb.g, %.preheader.i
  %.0.ph = phi i32 [ 0, %bb.g ], [ 0, %.preheader.i ], [ %spec.select.i, %scalar.ph ]
  %i.bo = tail call i32 @H5O_unprotect(ptr noundef %0, ptr noundef nonnull %i.p, i32 noundef 0) #8
  %i.bp = icmp slt i32 %i.bo, 0
  br i1 %i.bp, label %bb.h, label %H5O__msg_count_real.exit

bb.h:                                             ; preds = %.loopexit
  %i.bq = load i64, ptr @H5E_OHDR_g, align 8, !tbaa !13
  %i.br = load i64, ptr @H5E_CANTUNPROTECT_g, align 8, !tbaa !13
  %i.bs = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5O_msg_count, i32 noundef 725, i64 noundef %i.bq, i64 noundef %i.br, ptr noundef nonnull @.str.16) #8 ; 0 uses
  br label %H5O__msg_count_real.exit

H5O__msg_count_real.exit:                         ; preds = %bb.c, %bb.f, %.loopexit, %bb.h, %bb.d
  %.1 = phi i32 [ -1, %bb.h ], [ %.0.ph, %.loopexit ], [ -1, %bb.d ], [ -1, %bb.c ], [ -1, %bb.f ]
  ret i32 %.1
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define i32 @H5O__msg_count_real(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readnone captures(address) %1) local_unnamed_addr #3 {
bb.a:
  %i.a = load i8, ptr @H5O_init_g, align 1, !tbaa !8, !range !10, !noundef !11
  %i.b = trunc nuw i8 %i.a to i1
  %i.c = load i8, ptr @H5_libterm_g, align 1, !range !10
  %i.d = trunc nuw i8 %i.c to i1
  %i.e = xor i1 %i.d, true
  %i.f = select i1 %i.b, i1 true, i1 %i.e
  br i1 %i.f, label %.preheader, label %.loopexit, !prof !12

.preheader:                                       ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 336
  %i.h = load i64, ptr %i.g, align 8, !tbaa !45   ; 6 uses
  %.not = icmp eq i64 %i.h, 0
  br i1 %.not, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 352
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !30   ; 5 uses
  %min.iters.check = icmp ult i64 %i.h, 11
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.lr.ph
  %i.k = add i64 %i.h, -1                         ; 2 uses
  %i.l = and i64 %i.k, 4294967295
  %i.m = icmp eq i64 %i.l, 4294967295
  %i.n = icmp ugt i64 %i.k, 4294967295
  %i.o = or i1 %i.m, %i.n
  br i1 %i.o, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.scevcheck
  %i.p = and i64 %i.h, 3                          ; 2 uses
  %i.q = icmp eq i64 %i.p, 0
  %i.r = select i1 %i.q, i64 4, i64 %i.p
  %n.vec = sub nsw i64 %i.h, %i.r                 ; 3 uses
  %2 = trunc i64 %n.vec to i32
  %broadcast.splatinsert = insertelement <2 x ptr> poison, ptr %1, i64 0
  %broadcast.splat = shufflevector <2 x ptr> %broadcast.splatinsert, <2 x ptr> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 5 uses
  %vec.phi = phi <2 x i32> [ zeroinitializer, %vector.ph ], [ %i.al, %vector.body ]
  %vec.phi12 = phi <2 x i32> [ zeroinitializer, %vector.ph ], [ %i.am, %vector.body ]
  %i.s = getelementptr inbounds nuw [48 x i8], ptr %i.j, i64 %index
  %i.t = getelementptr inbounds nuw [48 x i8], ptr %i.j, i64 %index
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 48
  %i.v = getelementptr inbounds nuw [48 x i8], ptr %i.j, i64 %index
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 96
  %i.x = getelementptr inbounds nuw [48 x i8], ptr %i.j, i64 %index
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 144
  %i.z = load ptr, ptr %i.s, align 8, !tbaa !46
  %i.aa = load ptr, ptr %i.u, align 8, !tbaa !46
  %i.ab = insertelement <2 x ptr> poison, ptr %i.z, i64 0
  %i.ac = insertelement <2 x ptr> %i.ab, ptr %i.aa, i64 1
  %i.ad = load ptr, ptr %i.w, align 8, !tbaa !46
  %i.ae = load ptr, ptr %i.y, align 8, !tbaa !46
  %i.af = insertelement <2 x ptr> poison, ptr %i.ad, i64 0
  %i.ag = insertelement <2 x ptr> %i.af, ptr %i.ae, i64 1
  %i.ah = icmp eq <2 x ptr> %i.ac, %broadcast.splat
  %i.ai = icmp eq <2 x ptr> %i.ag, %broadcast.splat
  %i.aj = zext <2 x i1> %i.ah to <2 x i32>
  %i.ak = zext <2 x i1> %i.ai to <2 x i32>
  %i.al = add <2 x i32> %vec.phi, %i.aj           ; 2 uses
  %i.am = add <2 x i32> %vec.phi12, %i.ak         ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.an = icmp eq i64 %index.next, %n.vec
  br i1 %i.an, label %middle.block, label %vector.body, !llvm.loop !84

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <2 x i32> %i.am, %i.al
  %i.ao = tail call i32 @llvm.vector.reduce.add.v2i32(<2 x i32> %bin.rdx)
  br label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.scevcheck, %.lr.ph, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %vector.scevcheck ], [ 0, %.lr.ph ], [ %n.vec, %middle.block ]
  %.010.ph = phi i32 [ 0, %vector.scevcheck ], [ 0, %.lr.ph ], [ %i.ao, %middle.block ]
  %.079.ph = phi i32 [ 0, %vector.scevcheck ], [ 0, %.lr.ph ], [ %2, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %4, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ]
  %.010 = phi i32 [ %spec.select, %scalar.ph ], [ %.010.ph, %scalar.ph.preheader ]
  %.010.a = phi i32 [ %3, %scalar.ph ], [ %.079.ph, %scalar.ph.preheader ]
  %i.ap = getelementptr inbounds nuw [48 x i8], ptr %i.j, i64 %indvars.iv
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !46
  %i.ar = icmp eq ptr %i.aq, %1
  %i.as = zext i1 %i.ar to i32
  %spec.select = add i32 %.010, %i.as             ; 2 uses
  %3 = add i32 %.010.a, 1                         ; 2 uses
  %4 = zext i32 %3 to i64                         ; 2 uses
  %i.at = icmp ugt i64 %i.h, %4
  br i1 %i.at, label %scalar.ph, label %.loopexit, !llvm.loop !85

.loopexit:                                        ; preds = %scalar.ph, %.preheader, %bb.a
  %.2 = phi i32 [ 0, %bb.a ], [ 0, %.preheader ], [ %spec.select, %scalar.ph ]
  ret i32 %.2
}

; Function Attrs: nounwind uwtable
define range(i32 -1, 2) i32 @H5O_msg_exists(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  store i64 -1, ptr %i.a, align 8, !tbaa !13
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.b, align 8, !tbaa !62
  call void @H5AC_tag(i64 noundef %i.c, ptr noundef nonnull %i.a) #8
  %i.d = load i8, ptr @H5O_init_g, align 1, !tbaa !8, !range !10, !noundef !11
  %i.e = trunc nuw i8 %i.d to i1                  ; 2 uses
  %i.f = load i8, ptr @H5_libterm_g, align 1, !range !10
  %i.g = trunc nuw i8 %i.f to i1                  ; 2 uses
  %i.h = select i1 %i.e, i1 true, i1 %i.g
  br i1 %i.h, label %bb.d, label %bb.b, !prof !12

bb.b:                                             ; preds = %bb.a
  store i8 1, ptr @H5O_init_g, align 1, !tbaa !8
  %i.i = call i32 @H5O__init_package() #8
  %i.j = icmp slt i32 %i.i, 0
  br i1 %i.j, label %bb.c, label %._crit_edge

._crit_edge:                                      ; preds = %bb.b
  %.pre = load i8, ptr @H5O_init_g, align 1, !tbaa !8, !range !10
  %.pre25 = load i8, ptr @H5_libterm_g, align 1, !range !10
  %.pre26 = trunc nuw i8 %.pre to i1
  %.pre27 = trunc nuw i8 %.pre25 to i1
  br label %bb.d

bb.c:                                             ; preds = %bb.b
  store i8 0, ptr @H5O_init_g, align 1, !tbaa !8
  %i.k = load i64, ptr @H5E_FUNC_g, align 8, !tbaa !13
  %i.l = load i64, ptr @H5E_CANTINIT_g, align 8, !tbaa !13
  %i.m = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5O_msg_exists, i32 noundef 783, i64 noundef %i.k, i64 noundef %i.l, ptr noundef nonnull @.str.1) #8 ; 0 uses
  br label %H5O_msg_exists_oh.exit.thread

bb.d:                                             ; preds = %._crit_edge, %bb.a
  %.pre-phi28 = phi i1 [ %.pre27, %._crit_edge ], [ %i.g, %bb.a ]
  %.pre-phi = phi i1 [ %.pre26, %._crit_edge ], [ %i.e, %bb.a ]
  %i.n = xor i1 %.pre-phi28, true
  %i.o = select i1 %.pre-phi, i1 true, i1 %i.n
  br i1 %i.o, label %bb.e, label %H5O_msg_exists_oh.exit.thread, !prof !12

bb.e:                                             ; preds = %bb.d
  %i.p = call ptr @H5O_protect(ptr noundef nonnull %0, i32 noundef 128, i1 noundef zeroext false) #8 ; 4 uses
  %i.q = icmp eq ptr %i.p, null
  br i1 %i.q, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.r = load i64, ptr @H5E_OHDR_g, align 8, !tbaa !13
  %i.s = load i64, ptr @H5E_CANTPROTECT_g, align 8, !tbaa !13
  %i.t = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5O_msg_exists, i32 noundef 791, i64 noundef %i.r, i64 noundef %i.s, ptr noundef nonnull @.str.14) #8 ; 0 uses
  br label %H5O_msg_exists_oh.exit.thread

bb.g:                                             ; preds = %bb.e
  %i.u = load i8, ptr @H5O_init_g, align 1, !tbaa !8, !range !10, !noundef !11
  %i.v = trunc nuw i8 %i.u to i1
  %i.w = load i8, ptr @H5_libterm_g, align 1, !range !10
  %i.x = trunc nuw i8 %i.w to i1
  %i.y = xor i1 %i.x, true
  %i.z = select i1 %i.v, i1 true, i1 %i.y
  br i1 %i.z, label %bb.h, label %H5O_msg_exists_oh.exit.thread19, !prof !12

bb.h:                                             ; preds = %bb.g
  %i.aa = zext i32 %1 to i64
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr @H5O_msg_class_g, i64 %i.aa
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !19
  %i.ad = getelementptr inbounds nuw i8, ptr %i.p, i64 336
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !45 ; 2 uses
  %.not.i = icmp eq i64 %i.ae, 0
  br i1 %.not.i, label %H5O_msg_exists_oh.exit.thread19, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.h
  %i.af = getelementptr inbounds nuw i8, ptr %i.p, i64 352
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !30
  br label %bb.j

bb.i:                                             ; preds = %bb.j
  %i.ah = add i32 %.079.i, 1                      ; 2 uses
  %i.ai = zext i32 %i.ah to i64                   ; 2 uses
  %i.aj = icmp ugt i64 %i.ae, %i.ai
  br i1 %i.aj, label %bb.j, label %H5O_msg_exists_oh.exit.thread19, !llvm.loop !86

bb.j:                                             ; preds = %bb.i, %.lr.ph.i
  %i.ak = phi i64 [ 0, %.lr.ph.i ], [ %i.ai, %bb.i ]
  %.079.i = phi i32 [ 0, %.lr.ph.i ], [ %i.ah, %bb.i ]
  %i.al = getelementptr inbounds nuw [48 x i8], ptr %i.ag, i64 %i.ak
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !46
  %i.an = icmp eq ptr %i.ac, %i.am
  br i1 %i.an, label %H5O_msg_exists_oh.exit.thread19, label %bb.i

H5O_msg_exists_oh.exit.thread19:                  ; preds = %bb.i, %bb.j, %bb.h, %bb.g
  %.024 = phi i32 [ 0, %bb.h ], [ 0, %bb.g ], [ 1, %bb.j ], [ 0, %bb.i ]
  %i.ao = call i32 @H5O_unprotect(ptr noundef nonnull %0, ptr noundef nonnull %i.p, i32 noundef 0) #8
  %i.ap = icmp slt i32 %i.ao, 0
  br i1 %i.ap, label %bb.k, label %H5O_msg_exists_oh.exit.thread

bb.k:                                             ; preds = %H5O_msg_exists_oh.exit.thread19
  %i.aq = load i64, ptr @H5E_OHDR_g, align 8, !tbaa !13
  %i.ar = load i64, ptr @H5E_CANTUNPROTECT_g, align 8, !tbaa !13
  %i.as = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5O_msg_exists, i32 noundef 799, i64 noundef %i.aq, i64 noundef %i.ar, ptr noundef nonnull @.str.16) #8 ; 0 uses
  br label %H5O_msg_exists_oh.exit.thread

H5O_msg_exists_oh.exit.thread:                    ; preds = %bb.f, %bb.c, %H5O_msg_exists_oh.exit.thread19, %bb.k, %bb.d
  %.1 = phi i32 [ -1, %bb.k ], [ %.024, %H5O_msg_exists_oh.exit.thread19 ], [ -1, %bb.f ], [ -1, %bb.d ], [ -1, %bb.c ]
  %i.at = load i64, ptr %i.a, align 8, !tbaa !13
  call void @H5AC_tag(i64 noundef %i.at, ptr noundef null) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  ret i32 %.1
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define range(i32 0, 2) i32 @H5O_msg_exists_oh(ptr nofree noundef readonly captures(none) %0, i32 noundef %1) local_unnamed_addr #3 {
bb.a:
  %i.a = load i8, ptr @H5O_init_g, align 1, !tbaa !8, !range !10, !noundef !11
  %i.b = trunc nuw i8 %i.a to i1
  %i.c = load i8, ptr @H5_libterm_g, align 1, !range !10
  %i.d = trunc nuw i8 %i.c to i1
  %i.e = xor i1 %i.d, true
  %i.f = select i1 %i.b, i1 true, i1 %i.e
  br i1 %i.f, label %bb.b, label %.loopexit, !prof !12

bb.b:                                             ; preds = %bb.a
  %i.g = zext i32 %1 to i64
  %i.h = getelementptr inbounds nuw [8 x i8], ptr @H5O_msg_class_g, i64 %i.g
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !19
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 336
  %i.k = load i64, ptr %i.j, align 8, !tbaa !45   ; 2 uses
  %.not = icmp eq i64 %i.k, 0
  br i1 %.not, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 352
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !30
  br label %bb.d

bb.c:                                             ; preds = %bb.d
  %i.n = add i32 %.079, 1                         ; 2 uses
  %i.o = zext i32 %i.n to i64                     ; 2 uses
  %i.p = icmp ugt i64 %i.k, %i.o
  br i1 %i.p, label %bb.d, label %.loopexit, !llvm.loop !86

bb.d:                                             ; preds = %.lr.ph, %bb.c
  %i.q = phi i64 [ 0, %.lr.ph ], [ %i.o, %bb.c ]
  %.079 = phi i32 [ 0, %.lr.ph ], [ %i.n, %bb.c ]
  %i.r = getelementptr inbounds nuw [48 x i8], ptr %i.m, i64 %i.q
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !46
  %i.t = icmp eq ptr %i.i, %i.s
  br i1 %i.t, label %.loopexit, label %bb.c

.loopexit:                                        ; preds = %bb.c, %bb.d, %bb.b, %bb.a
  %.0 = phi i32 [ 0, %bb.a ], [ 0, %bb.b ], [ 0, %bb.c ], [ 1, %bb.d ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define range(i32 -1, 1) i32 @H5O_msg_remove(ptr noundef %0, i32 noundef %1, i32 noundef %2, i1 noundef zeroext %3) local_unnamed_addr #0 {
bb.a:
  %i.a = load i8, ptr @H5O_init_g, align 1, !tbaa !8, !range !10, !noundef !11
  %i.b = trunc nuw i8 %i.a to i1                  ; 2 uses
  %i.c = load i8, ptr @H5_libterm_g, align 1, !range !10
  %i.d = trunc nuw i8 %i.c to i1                  ; 2 uses
  %i.e = select i1 %i.b, i1 true, i1 %i.d
  br i1 %i.e, label %bb.d, label %bb.b, !prof !12

bb.b:                                             ; preds = %bb.a
  store i8 1, ptr @H5O_init_g, align 1, !tbaa !8
  %i.f = tail call i32 @H5O__init_package() #8
  %i.g = icmp slt i32 %i.f, 0
  br i1 %i.g, label %bb.c, label %._crit_edge

._crit_edge:                                      ; preds = %bb.b
  %.pre = load i8, ptr @H5O_init_g, align 1, !tbaa !8, !range !10
  %.pre20 = load i8, ptr @H5_libterm_g, align 1, !range !10
  %.pre21 = trunc nuw i8 %.pre to i1
  %.pre22 = trunc nuw i8 %.pre20 to i1
  br label %bb.d

bb.c:                                             ; preds = %bb.b
  store i8 0, ptr @H5O_init_g, align 1, !tbaa !8
  %i.h = load i64, ptr @H5E_FUNC_g, align 8, !tbaa !13
  %i.i = load i64, ptr @H5E_CANTINIT_g, align 8, !tbaa !13
  %i.j = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5O_msg_remove, i32 noundef 865, i64 noundef %i.h, i64 noundef %i.i, ptr noundef nonnull @.str.1) #8 ; 0 uses
  br label %.thread

bb.d:                                             ; preds = %._crit_edge, %bb.a
  %.pre-phi23 = phi i1 [ %.pre22, %._crit_edge ], [ %i.d, %bb.a ]
  %.pre-phi = phi i1 [ %.pre21, %._crit_edge ], [ %i.b, %bb.a ]
  %i.k = xor i1 %.pre-phi23, true
  %i.l = select i1 %.pre-phi, i1 true, i1 %i.k
  br i1 %i.l, label %bb.e, label %.thread, !prof !12

bb.e:                                             ; preds = %bb.d
end_hunk_0
