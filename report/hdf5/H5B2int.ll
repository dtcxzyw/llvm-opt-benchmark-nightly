begin_hunk_0_@H5B2__split1:bb.a

.unr-lcssa319:                                    ; preds = %bb.y
  %lcmp.mod323.not = icmp eq i64 %xtraiter321, 0
  br i1 %lcmp.mod323.not, label %.epilog-lcssa324, label %.epil.preheader320

.epil.preheader320:                               ; preds = %.unr-lcssa319, %.epilog-lcssa
  %indvars.iv300.epil.init = phi i64 [ 0, %.epilog-lcssa ], [ %indvars.iv.next301.3, %.unr-lcssa319 ]
  %.0297.epil.init = phi i64 [ %i.ga, %.epilog-lcssa ], [ %i.gu, %.unr-lcssa319 ]
  %lcmp.mod326 = icmp ne i64 %xtraiter321, 0
  tail call void @llvm.assume(i1 %lcmp.mod326)
  br label %bb.z

bb.z:                                             ; preds = %bb.z, %.epil.preheader320
  %indvars.iv300.epil = phi i64 [ %indvars.iv300.epil.init, %.epil.preheader320 ], [ %indvars.iv.next301.epil, %bb.z ] ; 2 uses
  %.0297.epil = phi i64 [ %.0297.epil.init, %.epil.preheader320 ], [ %i.gy, %bb.z ]
  %epil.iter322 = phi i64 [ 0, %.epil.preheader320 ], [ %epil.iter322.next, %bb.z ]
  %i.gv = getelementptr inbounds nuw [24 x i8], ptr %.1196, i64 %indvars.iv300.epil
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gv, i64 16
  %i.gx = load i64, ptr %i.gw, align 8, !tbaa !45
  %i.gy = add i64 %i.gx, %.0297.epil              ; 2 uses
  %indvars.iv.next301.epil = add nuw nsw i64 %indvars.iv300.epil, 1
  %epil.iter322.next = add i64 %epil.iter322, 1   ; 2 uses
  %epil.iter322.cmp.not = icmp eq i64 %epil.iter322.next, %xtraiter321
  br i1 %epil.iter322.cmp.not, label %.epilog-lcssa324, label %bb.z, !llvm.loop !54

.epilog-lcssa324:                                 ; preds = %bb.z, %.unr-lcssa319
  %.lcssa = phi i64 [ %i.gu, %.unr-lcssa319 ], [ %i.gy, %bb.z ]
  %i.gz = getelementptr inbounds nuw i8, ptr %i.et, i64 16
  store i64 %.lcssa315, ptr %i.gz, align 8, !tbaa !45
  br label %bb.ab

bb.aa:                                            ; preds = %bb.u
  %i.ha = getelementptr inbounds nuw i8, ptr %i.et, i64 16
  store i64 %i.fb, ptr %i.ha, align 8, !tbaa !45
  %.mask = and i32 %i.dz, 65535
  %i.hb = zext nneg i32 %.mask to i64
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %.epilog-lcssa324
  %.sink = phi i64 [ %i.hb, %bb.aa ], [ %.lcssa, %.epilog-lcssa324 ]
  %i.hc = getelementptr inbounds nuw i8, ptr %i.ey, i64 16
  store i64 %.sink, ptr %i.hc, align 8, !tbaa !45
  %i.hd = load i16, ptr %i.g, align 8, !tbaa !22
  %i.he = add i16 %i.hd, 1
  store i16 %i.he, ptr %i.g, align 8, !tbaa !22
  %i.hf = load i32, ptr %5, align 4, !tbaa !13
  %i.hg = or i32 %i.hf, 2
  store i32 %i.hg, ptr %5, align 4, !tbaa !13
  %i.hh = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.hi = load i16, ptr %i.hh, align 8, !tbaa !44
  %i.hj = add i16 %i.hi, 1
  store i16 %i.hj, ptr %i.hh, align 8, !tbaa !44
  %.not237 = icmp eq ptr %3, null
  br i1 %.not237, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.hk = load i32, ptr %3, align 4, !tbaa !13
  %i.hl = or i32 %i.hk, 2
  store i32 %i.hl, ptr %3, align 4, !tbaa !13
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %i.hm = getelementptr inbounds nuw i8, ptr %0, i64 392
  %i.hn = load i8, ptr %i.hm, align 8, !tbaa !46, !range !10, !noundef !11
  %i.ho = trunc nuw i8 %i.hn to i1
  %or.cond = and i1 %i.ap, %i.ho
  br i1 %or.cond, label %bb.ae, label %H5B2__update_child_flush_depends.exit.thread

bb.ae:                                            ; preds = %bb.ad
  %i.hp = load i8, ptr @H5B2_init_g, align 1, !tbaa !8, !range !10, !noundef !11
  %i.hq = trunc nuw i8 %i.hp to i1
  %i.hr = load i8, ptr @H5_libterm_g, align 1, !range !10
  %i.hs = trunc nuw i8 %i.hr to i1
  %i.ht = xor i1 %i.hs, true
  %i.hu = select i1 %i.hq, i1 true, i1 %i.ht
  br i1 %i.hu, label %.lr.ph.i, label %H5B2__update_child_flush_depends.exit.thread, !prof !55

.lr.ph.i:                                         ; preds = %bb.ae
  %i.hv = load i16, ptr %.2207, align 2, !tbaa !49
  %i.hw = zext i16 %i.hv to i64
  %i.hx = add nsw i32 %i.ao, -1
  br label %bb.ag

bb.af:                                            ; preds = %bb.ag
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  %i.hy = icmp eq i64 %indvars.iv.i, %i.hw
  br i1 %i.hy, label %H5B2__update_child_flush_depends.exit.thread, label %bb.ag, !llvm.loop !56

bb.ag:                                            ; preds = %bb.af, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.af ] ; 3 uses
  %i.hz = getelementptr inbounds nuw [24 x i8], ptr %.1196, i64 %indvars.iv.i
  %i.ia = tail call i32 @H5B2__update_flush_depend(ptr noundef %0, i32 noundef %i.hx, ptr noundef %i.hz, ptr noundef nonnull %.2217, ptr noundef nonnull %.2213)
  %i.ib = icmp slt i32 %i.ia, 0
  br i1 %i.ib, label %bb.ah, label %bb.af

bb.ah:                                            ; preds = %bb.ag
  %i.ic = load i64, ptr @H5E_BTREE_g, align 8, !tbaa !19
  %i.id = load i64, ptr @H5E_CANTUPDATE_g, align 8, !tbaa !19
  %i.ie = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5B2__update_child_flush_depends, i32 noundef 1989, i64 noundef %i.ic, i64 noundef %i.id, ptr noundef nonnull @.str.29) #4 ; 0 uses
  %i.if = load i64, ptr @H5E_BTREE_g, align 8, !tbaa !19
  %i.ig = load i64, ptr @H5E_CANTUPDATE_g, align 8, !tbaa !19
  %i.ih = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5B2__split1, i32 noundef 294, i64 noundef %i.if, i64 noundef %i.ig, ptr noundef nonnull @.str.6) #4 ; 0 uses
  br label %H5B2__update_child_flush_depends.exit.thread

H5B2__update_child_flush_depends.exit.thread:     ; preds = %bb.af, %bb.ah, %bb.ad, %bb.ae
  %.3 = phi i32 [ -1, %bb.ah ], [ 0, %bb.ad ], [ 0, %bb.ae ], [ 0, %bb.af ]
  %i.ii = getelementptr inbounds nuw i8, ptr %0, i64 288 ; 2 uses
  %i.ij = load ptr, ptr %i.ii, align 8, !tbaa !57
  %i.ik = tail call i32 @H5AC_unprotect(ptr noundef %i.ij, ptr noundef nonnull %.2193, i64 noundef %.2225, ptr noundef nonnull %.2217, i32 noundef 2) #4
  %i.il = icmp slt i32 %i.ik, 0
  br i1 %i.il, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %H5B2__update_child_flush_depends.exit.thread
  %i.im = load i64, ptr @H5E_BTREE_g, align 8, !tbaa !19
  %i.in = load i64, ptr @H5E_CANTUNPROTECT_g, align 8, !tbaa !19
  %i.io = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5B2__split1, i32 noundef 313, i64 noundef %i.im, i64 noundef %i.in, ptr noundef nonnull @.str.7) #4 ; 0 uses
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %H5B2__update_child_flush_depends.exit.thread
  %.4.ph = phi i32 [ -1, %bb.ai ], [ %.3, %H5B2__update_child_flush_depends.exit.thread ]
  %i.ip = load ptr, ptr %i.ii, align 8, !tbaa !57
  %i.iq = tail call i32 @H5AC_unprotect(ptr noundef %i.ip, ptr noundef nonnull %.2193, i64 noundef %.2221, ptr noundef nonnull %.2213, i32 noundef 2) #4
  %i.ir = icmp slt i32 %i.iq, 0
  br i1 %i.ir, label %bb.ak, label %.thread

bb.ak:                                            ; preds = %bb.aj
  %i.is = load i64, ptr @H5E_BTREE_g, align 8, !tbaa !19
  %i.it = load i64, ptr @H5E_CANTUNPROTECT_g, align 8, !tbaa !19
  %i.iu = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5B2__split1, i32 noundef 315, i64 noundef %i.is, i64 noundef %i.it, ptr noundef nonnull @.str.7) #4 ; 0 uses
  br label %.thread

.thread:                                          ; preds = %bb.q, %bb.o, %bb.m, %bb.j, %bb.h, %bb.f, %bb.a, %bb.ak, %bb.aj
  %.5 = phi i32 [ -1, %bb.ak ], [ %.4.ph, %bb.aj ], [ 0, %bb.a ], [ -1, %bb.j ], [ -1, %bb.f ], [ -1, %bb.h ], [ -1, %bb.m ], [ -1, %bb.o ], [ -1, %bb.q ]
  ret i32 %.5
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #1

declare i32 @H5B2__create_internal(ptr noundef, ptr noundef, ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

declare ptr @H5B2__protect_internal(ptr noundef, ptr noundef, ptr noundef, i16 noundef zeroext, i1 noundef zeroext, i32 noundef) local_unnamed_addr #2

declare i32 @H5B2__create_leaf(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @H5B2__protect_leaf(ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

declare i32 @H5AC_unprotect(ptr noundef, ptr noundef, i64 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define range(i32 -1, 1) i32 @H5B2__split_root(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %1 = alloca %struct.H5B2_node_ptr_t, align 8    ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #4
  store i32 0, ptr %i.a, align 4, !tbaa !13
  call void @llvm.lifetime.start.p0(ptr nonnull %1)
  %i.b = load i8, ptr @H5B2_init_g, align 1, !tbaa !8, !range !10, !noundef !11
  %i.c = trunc nuw i8 %i.b to i1
  %i.d = load i8, ptr @H5_libterm_g, align 1, !range !10
  %i.e = trunc nuw i8 %i.d to i1
  %i.f = xor i1 %i.e, true
  %i.g = select i1 %i.c, i1 true, i1 %i.f
  br i1 %i.g, label %bb.b, label %.thread, !prof !12

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 284 ; 7 uses
  %i.i = load i16, ptr %i.h, align 4, !tbaa !58
  %i.j = add i16 %i.i, 1                          ; 2 uses
  store i16 %i.j, ptr %i.h, align 4, !tbaa !58
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 368 ; 4 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !59
  %i.m = zext i16 %i.j to i64
  %i.n = add nuw nsw i64 %i.m, 1
  %i.o = tail call ptr @H5FL_seq_realloc(ptr noundef nonnull @H5_H5B2_node_info_t_seq_free_list, ptr noundef %i.l, i64 noundef %i.n) #4 ; 3 uses
  store ptr %i.o, ptr %i.k, align 8, !tbaa !59
  %i.p = icmp eq ptr %i.o, null
  br i1 %i.p, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.q = load i64, ptr @H5E_RESOURCE_g, align 8, !tbaa !19
  %i.r = load i64, ptr @H5E_NOSPACE_g, align 8, !tbaa !19
  %i.s = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5B2__split_root, i32 noundef 351, i64 noundef %i.q, i64 noundef %i.r, ptr noundef nonnull @.str.8) #4 ; 0 uses
  br label %.thread

bb.d:                                             ; preds = %bb.b
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 276
  %i.u = load i32, ptr %i.t, align 4, !tbaa !60
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 330
  %i.w = load i8, ptr %i.v, align 2, !tbaa !61
  %i.x = zext i8 %i.w to i32
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 286
  %i.z = load i8, ptr %i.y, align 2, !tbaa !62
  %i.aa = zext i8 %i.z to i32
  %i.ab = add nuw nsw i32 %i.aa, %i.x
  %i.ac = load i16, ptr %i.h, align 4, !tbaa !58
  %i.ad = zext i16 %i.ac to i64
  %i.ae = getelementptr [48 x i8], ptr %i.o, i64 %i.ad ; 7 uses
  %i.af = getelementptr i8, ptr %i.ae, i64 -24
  %i.ag = load i8, ptr %i.af, align 8, !tbaa !63
  %i.ah = zext i8 %i.ag to i32
  %i.ai = add nuw nsw i32 %i.ab, %i.ah            ; 2 uses
  %.neg82 = add i32 %i.u, -10
  %i.aj = sub i32 %.neg82, %i.ai
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 280
  %i.al = load i32, ptr %i.ak, align 8, !tbaa !66
  %i.am = add i32 %i.ai, %i.al
  %i.an = udiv i32 %i.aj, %i.am                   ; 5 uses
  store i32 %i.an, ptr %i.ae, align 8, !tbaa !67
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 272
  %2 = load i8, ptr %i.ao, align 8, !tbaa !68
  %3 = zext i8 %2 to i32
  %4 = mul i32 %i.an, %3
  %5 = udiv i32 %4, 100
  %6 = getelementptr inbounds nuw i8, ptr %i.ae, i64 4
  store i32 %5, ptr %6, align 4, !tbaa !69
  %7 = getelementptr inbounds nuw i8, ptr %0, i64 273
  %8 = load i8, ptr %7, align 1, !tbaa !70
  %9 = zext i8 %8 to i32
  %10 = mul i32 %i.an, %9
  %11 = udiv i32 %10, 100
  %12 = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  store i32 %11, ptr %12, align 8, !tbaa !71
  %i.ap = add i32 %i.an, 1
  %i.aq = zext i32 %i.ap to i64
  %i.ar = getelementptr i8, ptr %i.ae, i64 -32
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !72
  %i.at = mul i64 %i.as, %i.aq
  %i.au = zext i32 %i.an to i64                   ; 2 uses
  %i.av = add i64 %i.at, %i.au                    ; 9 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  store i64 %i.av, ptr %i.aw, align 8, !tbaa !72
  %i.ax = lshr i64 %i.av, 32                      ; 2 uses
  %.not.i.i = icmp eq i64 %i.ax, 0
  br i1 %.not.i.i, label %bb.l, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ay = lshr i64 %i.av, 48                      ; 2 uses
  %.not26.i.i = icmp eq i64 %i.ay, 0
  br i1 %.not26.i.i, label %bb.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.az = lshr i64 %i.av, 56                      ; 2 uses
  %.not28.i.i = icmp eq i64 %i.az, 0
  br i1 %.not28.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ba = getelementptr inbounds nuw i8, ptr @LogTable256, i64 %i.az
  %i.bb = load i8, ptr %i.ba, align 1, !tbaa !73
  %i.bc = zext i8 %i.bb to i16
  %i.bd = add nuw nsw i16 %i.bc, 56
  br label %H5VM_limit_enc_size.exit

bb.h:                                             ; preds = %bb.f
  %i.be = getelementptr inbounds nuw i8, ptr @LogTable256, i64 %i.ay
  %i.bf = load i8, ptr %i.be, align 1, !tbaa !73
  %i.bg = zext i8 %i.bf to i16
  %i.bh = add nuw nsw i16 %i.bg, 48
  br label %H5VM_limit_enc_size.exit

bb.i:                                             ; preds = %bb.e
  %i.bi = lshr i64 %i.av, 40                      ; 2 uses
  %.not27.i.i = icmp eq i64 %i.bi, 0
  br i1 %.not27.i.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bj = getelementptr inbounds nuw i8, ptr @LogTable256, i64 %i.bi
  %i.bk = load i8, ptr %i.bj, align 1, !tbaa !73
  %i.bl = zext i8 %i.bk to i16
  %i.bm = add nuw nsw i16 %i.bl, 40
  br label %H5VM_limit_enc_size.exit

bb.k:                                             ; preds = %bb.i
  %i.bn = getelementptr inbounds nuw i8, ptr @LogTable256, i64 %i.ax
  %i.bo = load i8, ptr %i.bn, align 1, !tbaa !73
  %i.bp = zext i8 %i.bo to i16
  %i.bq = add nuw nsw i16 %i.bp, 32
  br label %H5VM_limit_enc_size.exit

bb.l:                                             ; preds = %bb.d
  %i.br = lshr i64 %i.av, 16                      ; 2 uses
  %.not23.i.i = icmp eq i64 %i.br, 0
  br i1 %.not23.i.i, label %bb.p, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bs = lshr i64 %i.av, 24                      ; 2 uses
  %.not25.i.i = icmp eq i64 %i.bs, 0
  br i1 %.not25.i.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bt = getelementptr inbounds nuw i8, ptr @LogTable256, i64 %i.bs
  %i.bu = load i8, ptr %i.bt, align 1, !tbaa !73
  %i.bv = zext i8 %i.bu to i16
  %i.bw = add nuw nsw i16 %i.bv, 24
  br label %H5VM_limit_enc_size.exit

bb.o:                                             ; preds = %bb.m
  %i.bx = getelementptr inbounds nuw i8, ptr @LogTable256, i64 %i.br
  %i.by = load i8, ptr %i.bx, align 1, !tbaa !73
  %i.bz = zext i8 %i.by to i16
  %i.ca = add nuw nsw i16 %i.bz, 16
  br label %H5VM_limit_enc_size.exit

bb.p:                                             ; preds = %bb.l
  %i.cb = lshr i64 %i.av, 8                       ; 2 uses
  %.not24.i.i = icmp eq i64 %i.cb, 0
  br i1 %.not24.i.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.cc = getelementptr inbounds nuw i8, ptr @LogTable256, i64 %i.cb
  %i.cd = load i8, ptr %i.cc, align 1, !tbaa !73
  %i.ce = zext i8 %i.cd to i16
  %i.cf = add nuw nsw i16 %i.ce, 8
  br label %H5VM_limit_enc_size.exit

bb.r:                                             ; preds = %bb.p
  %i.cg = getelementptr inbounds nuw i8, ptr @LogTable256, i64 %i.av
  %i.ch = load i8, ptr %i.cg, align 1, !tbaa !73
  %i.ci = zext i8 %i.ch to i16
  br label %H5VM_limit_enc_size.exit

H5VM_limit_enc_size.exit:                         ; preds = %bb.g, %bb.h, %bb.j, %bb.k, %bb.n, %bb.o, %bb.q, %bb.r
  %.0.i.i = phi i16 [ %i.ca, %bb.o ], [ %i.bh, %bb.h ], [ %i.bq, %bb.k ], [ %i.bd, %bb.g ], [ %i.bm, %bb.j ], [ %i.bw, %bb.n ], [ %i.cf, %bb.q ], [ %i.ci, %bb.r ]
  %i.cj = lshr i16 %.0.i.i, 3
  %i.ck = trunc nuw nsw i16 %i.cj to i8
  %i.cl = add nuw nsw i8 %i.ck, 1
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ae, i64 24
  store i8 %i.cl, ptr %i.cm, align 8, !tbaa !63
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 424
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !41
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 16
  %i.cq = load i64, ptr %i.cp, align 8, !tbaa !42
  %i.cr = mul i64 %i.cq, %i.au
  %i.cs = tail call ptr @H5FL_fac_init(i64 noundef %i.cr) #4 ; 2 uses
  %i.ct = load ptr, ptr %i.k, align 8, !tbaa !59
  %i.cu = load i16, ptr %i.h, align 4, !tbaa !58
  %i.cv = zext i16 %i.cu to i64
  %i.cw = getelementptr inbounds nuw [48 x i8], ptr %i.ct, i64 %i.cv ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 32
  store ptr %i.cs, ptr %i.cx, align 8, !tbaa !74
  %i.cy = icmp eq ptr %i.cs, null
  br i1 %i.cy, label %bb.s, label %bb.t

bb.s:                                             ; preds = %H5VM_limit_enc_size.exit
  %i.cz = load i64, ptr @H5E_RESOURCE_g, align 8, !tbaa !19
  %i.da = load i64, ptr @H5E_CANTINIT_g, align 8, !tbaa !19
  %i.db = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5B2__split_root, i32 noundef 365, i64 noundef %i.cz, i64 noundef %i.da, ptr noundef nonnull @.str.9) #4 ; 0 uses
  br label %.thread

bb.t:                                             ; preds = %H5VM_limit_enc_size.exit
  %i.dc = load i32, ptr %i.cw, align 8, !tbaa !67
  %i.dd = add i32 %i.dc, 1
  %i.de = zext i32 %i.dd to i64
  %i.df = mul nuw nsw i64 %i.de, 24
  %i.dg = tail call ptr @H5FL_fac_init(i64 noundef %i.df) #4 ; 2 uses
  %i.dh = load ptr, ptr %i.k, align 8, !tbaa !59
  %i.di = load i16, ptr %i.h, align 4, !tbaa !58  ; 2 uses
  %i.dj = zext i16 %i.di to i64
  %i.dk = getelementptr inbounds nuw [48 x i8], ptr %i.dh, i64 %i.dj
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 40
  store ptr %i.dg, ptr %i.dl, align 8, !tbaa !75
  %i.dm = icmp eq ptr %i.dg, null
  br i1 %i.dm, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.dn = load i64, ptr @H5E_RESOURCE_g, align 8, !tbaa !19
  %i.do = load i64, ptr @H5E_CANTINIT_g, align 8, !tbaa !19
  %i.dp = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5B2__split_root, i32 noundef 369, i64 noundef %i.dn, i64 noundef %i.do, ptr noundef nonnull @.str.10) #4 ; 0 uses
  br label %.thread

bb.v:                                             ; preds = %bb.t
  %i.dq = getelementptr inbounds nuw i8, ptr %0, i64 248 ; 5 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %i.dq, i64 24, i1 false), !tbaa.struct !76
  %i.dr = getelementptr inbounds nuw i8, ptr %0, i64 256
  store i16 0, ptr %i.dr, align 8, !tbaa !77
  %i.ds = tail call i32 @H5B2__create_internal(ptr noundef nonnull %0, ptr noundef nonnull %0, ptr noundef nonnull %i.dq, i16 noundef zeroext %i.di) #4
  %i.dt = icmp slt i32 %i.ds, 0
  br i1 %i.dt, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.du = load i64, ptr @H5E_BTREE_g, align 8, !tbaa !19
  %i.dv = load i64, ptr @H5E_CANTINIT_g, align 8, !tbaa !19
  %i.dw = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5B2__split_root, i32 noundef 377, i64 noundef %i.du, i64 noundef %i.dv, ptr noundef nonnull @.str.2) #4 ; 0 uses
  br label %.thread

bb.x:                                             ; preds = %bb.v
  %i.dx = load i16, ptr %i.h, align 4, !tbaa !58
  %i.dy = tail call ptr @H5B2__protect_internal(ptr noundef nonnull %0, ptr noundef nonnull %0, ptr noundef nonnull %i.dq, i16 noundef zeroext %i.dx, i1 noundef zeroext false, i32 noundef 0) #4 ; 4 uses
  %i.dz = icmp eq ptr %i.dy, null
  br i1 %i.dz, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.ea = load i64, ptr @H5E_BTREE_g, align 8, !tbaa !19
  %i.eb = load i64, ptr @H5E_CANTPROTECT_g, align 8, !tbaa !19
  %i.ec = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5B2__split_root, i32 noundef 382, i64 noundef %i.ea, i64 noundef %i.eb, ptr noundef nonnull @.str.3) #4 ; 0 uses
  br label %.thread

bb.z:                                             ; preds = %bb.x
  %i.ed = getelementptr inbounds nuw i8, ptr %i.dy, i64 264
  %i.ee = load ptr, ptr %i.ed, align 8, !tbaa !43
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ee, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !76
  %i.ef = load i16, ptr %i.h, align 4, !tbaa !58
  %i.eg = call i32 @H5B2__split1(ptr noundef nonnull %0, i16 noundef zeroext %i.ef, ptr noundef nonnull %i.dq, ptr noundef null, ptr noundef nonnull %i.dy, ptr noundef nonnull %i.a, i32 noundef 0)
  %i.eh = icmp slt i32 %i.eg, 0
  br i1 %i.eh, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.ei = load i64, ptr @H5E_BTREE_g, align 8, !tbaa !19
  %i.ej = load i64, ptr @H5E_CANTSPLIT_g, align 8, !tbaa !19
  %i.ek = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5B2__split_root, i32 noundef 389, i64 noundef %i.ei, i64 noundef %i.ej, ptr noundef nonnull @.str.11) #4 ; 0 uses
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %.0 = phi i32 [ 0, %bb.z ], [ -1, %bb.aa ]
  %i.el = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.em = load ptr, ptr %i.el, align 8, !tbaa !57
  %i.en = load i64, ptr %i.dq, align 8, !tbaa !78
  %i.eo = load i32, ptr %i.a, align 4, !tbaa !13
  %i.ep = tail call i32 @H5AC_unprotect(ptr noundef %i.em, ptr noundef nonnull @H5AC_BT2_INT, i64 noundef %i.en, ptr noundef nonnull %i.dy, i32 noundef %i.eo) #4
  %i.eq = icmp slt i32 %i.ep, 0
  br i1 %i.eq, label %bb.ac, label %.thread

bb.ac:                                            ; preds = %bb.ab
  %i.er = load i64, ptr @H5E_BTREE_g, align 8, !tbaa !19
  %i.es = load i64, ptr @H5E_CANTUNPROTECT_g, align 8, !tbaa !19
  %i.et = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5B2__split_root, i32 noundef 394, i64 noundef %i.er, i64 noundef %i.es, ptr noundef nonnull @.str.12) #4 ; 0 uses
  br label %.thread

.thread:                                          ; preds = %bb.y, %bb.w, %bb.u, %bb.s, %bb.c, %bb.ab, %bb.ac, %bb.a
  %.1 = phi i32 [ -1, %bb.ac ], [ %.0, %bb.ab ], [ 0, %bb.a ], [ -1, %bb.c ], [ -1, %bb.s ], [ -1, %bb.u ], [ -1, %bb.w ], [ -1, %bb.y ]
  call void @llvm.lifetime.end.p0(ptr nonnull %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #4
  ret i32 %.1
}

declare ptr @H5FL_seq_realloc(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare ptr @H5FL_fac_init(i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define range(i32 -1, 1) i32 @H5B2__redistribute2(ptr noundef %0, i16 noundef zeroext %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = load i8, ptr @H5B2_init_g, align 1, !tbaa !8, !range !10, !noundef !11
  %i.b = trunc nuw i8 %i.a to i1
  %i.c = load i8, ptr @H5_libterm_g, align 1, !range !10
  %i.d = trunc nuw i8 %i.c to i1
  %i.e = xor i1 %i.d, true
  %i.f = select i1 %i.b, i1 true, i1 %i.e
  br i1 %i.f, label %bb.b, label %.thread, !prof !12

bb.b:                                             ; preds = %bb.a
  %i.g = zext i16 %1 to i32                       ; 2 uses
  %i.h = icmp ugt i16 %1, 1                       ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 264 ; 5 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !43
  %i.k = zext i32 %3 to i64                       ; 3 uses
  %i.l = getelementptr inbounds nuw [24 x i8], ptr %i.j, i64 %i.k ; 2 uses
  br i1 %i.h, label %bb.c, label %bb.h

bb.c:                                             ; preds = %bb.b
  %i.m = add i16 %1, -1                           ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 392 ; 2 uses
  %i.o = load i8, ptr %i.n, align 8, !tbaa !46, !range !10, !noundef !11
  %i.p = trunc nuw i8 %i.o to i1
  %i.q = tail call ptr @H5B2__protect_internal(ptr noundef %0, ptr noundef %2, ptr noundef %i.l, i16 noundef zeroext %i.m, i1 noundef zeroext %i.p, i32 noundef 0) #4 ; 4 uses
  %i.r = icmp eq ptr %i.q, null
  br i1 %i.r, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.s = load i64, ptr @H5E_BTREE_g, align 8, !tbaa !19
  %i.t = load i64, ptr @H5E_CANTPROTECT_g, align 8, !tbaa !19
  %i.u = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5B2__redistribute2, i32 noundef 443, i64 noundef %i.s, i64 noundef %i.t, ptr noundef nonnull @.str.5) #4 ; 0 uses
  br label %.thread

bb.e:                                             ; preds = %bb.c
  %i.v = load ptr, ptr %i.i, align 8, !tbaa !43   ; 2 uses
  %i.w = getelementptr inbounds nuw [24 x i8], ptr %i.v, i64 %i.k
  %i.x = load i64, ptr %i.w, align 8, !tbaa !47
  %i.y = add i32 %3, 1
  %i.z = zext i32 %i.y to i64                     ; 2 uses
  %i.aa = getelementptr inbounds nuw [24 x i8], ptr %i.v, i64 %i.z
  %i.ab = load i8, ptr %i.n, align 8, !tbaa !46, !range !10, !noundef !11
  %i.ac = trunc nuw i8 %i.ab to i1
  %i.ad = tail call ptr @H5B2__protect_internal(ptr noundef nonnull %0, ptr noundef nonnull %2, ptr noundef %i.aa, i16 noundef zeroext %i.m, i1 noundef zeroext %i.ac, i32 noundef 0) #4 ; 4 uses
  %i.ae = icmp eq ptr %i.ad, null
  br i1 %i.ae, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.af = load i64, ptr @H5E_BTREE_g, align 8, !tbaa !19
  %i.ag = load i64, ptr @H5E_CANTPROTECT_g, align 8, !tbaa !19
  %i.ah = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5B2__redistribute2, i32 noundef 448, i64 noundef %i.af, i64 noundef %i.ag, ptr noundef nonnull @.str.5) #4 ; 0 uses
  br label %.thread

bb.g:                                             ; preds = %bb.e
  %i.ai = load ptr, ptr %i.i, align 8, !tbaa !43
  %i.aj = getelementptr inbounds nuw [24 x i8], ptr %i.ai, i64 %i.z
  %i.ak = getelementptr inbounds nuw i8, ptr %i.q, i64 272
  %i.al = getelementptr inbounds nuw i8, ptr %i.ad, i64 272
  %i.am = getelementptr inbounds nuw i8, ptr %i.q, i64 264
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !43
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ad, i64 264
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !43
  br label %bb.m

bb.h:                                             ; preds = %bb.b
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 392 ; 2 uses
  %i.ar = load i8, ptr %i.aq, align 8, !tbaa !46, !range !10, !noundef !11
  %i.as = trunc nuw i8 %i.ar to i1
  %i.at = tail call ptr @H5B2__protect_leaf(ptr noundef %0, ptr noundef %2, ptr noundef %i.l, i1 noundef zeroext %i.as, i32 noundef 0) #4 ; 3 uses
  %i.au = icmp eq ptr %i.at, null
  br i1 %i.au, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.av = load i64, ptr @H5E_BTREE_g, align 8, !tbaa !19
  %i.aw = load i64, ptr @H5E_CANTPROTECT_g, align 8, !tbaa !19
  %i.ax = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5B2__redistribute2, i32 noundef 472, i64 noundef %i.av, i64 noundef %i.aw, ptr noundef nonnull @.str.5) #4 ; 0 uses
  br label %.thread

bb.j:                                             ; preds = %bb.h
  %i.ay = load ptr, ptr %i.i, align 8, !tbaa !43  ; 2 uses
  %i.az = getelementptr inbounds nuw [24 x i8], ptr %i.ay, i64 %i.k
  %i.ba = load i64, ptr %i.az, align 8, !tbaa !47
  %i.bb = add i32 %3, 1
  %i.bc = zext i32 %i.bb to i64                   ; 2 uses
  %i.bd = getelementptr inbounds nuw [24 x i8], ptr %i.ay, i64 %i.bc
  %i.be = load i8, ptr %i.aq, align 8, !tbaa !46, !range !10, !noundef !11
  %i.bf = trunc nuw i8 %i.be to i1
  %i.bg = tail call ptr @H5B2__protect_leaf(ptr noundef nonnull %0, ptr noundef nonnull %2, ptr noundef %i.bd, i1 noundef zeroext %i.bf, i32 noundef 0) #4 ; 3 uses
  %i.bh = icmp eq ptr %i.bg, null
  br i1 %i.bh, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.bi = load i64, ptr @H5E_BTREE_g, align 8, !tbaa !19
  %i.bj = load i64, ptr @H5E_CANTPROTECT_g, align 8, !tbaa !19
  %i.bk = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5B2__redistribute2, i32 noundef 476, i64 noundef %i.bi, i64 noundef %i.bj, ptr noundef nonnull @.str.5) #4 ; 0 uses
  br label %.thread

bb.l:                                             ; preds = %bb.j
  %i.bl = load ptr, ptr %i.i, align 8, !tbaa !43
  %i.bm = getelementptr inbounds nuw [24 x i8], ptr %i.bl, i64 %i.bc
  %i.bn = getelementptr inbounds nuw i8, ptr %i.at, i64 264
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bg, i64 264
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.g
  %.1290 = phi ptr [ %i.an, %bb.g ], [ null, %bb.l ] ; 3 uses
  %.1288 = phi ptr [ %i.ap, %bb.g ], [ null, %bb.l ] ; 17 uses
  %.2268 = phi ptr [ %i.al, %bb.g ], [ %i.bo, %bb.l ] ; 5 uses
  %.2265 = phi ptr [ %i.ak, %bb.g ], [ %i.bn, %bb.l ] ; 10 uses
  %.2257 = phi ptr [ %i.ad, %bb.g ], [ %i.bg, %bb.l ] ; 4 uses
  %.2253 = phi ptr [ %i.q, %bb.g ], [ %i.at, %bb.l ] ; 4 uses
  %.2249.in = phi ptr [ %i.aj, %bb.g ], [ %i.bm, %bb.l ]
  %.2 = phi i64 [ %i.x, %bb.g ], [ %i.ba, %bb.l ]
  %.0242 = phi ptr [ @H5AC_BT2_INT, %bb.g ], [ @H5AC_BT2_LEAF, %bb.l ] ; 2 uses
  %.2249 = load i64, ptr %.2249.in, align 8, !tbaa !47
  %.2293.in = getelementptr inbounds nuw i8, ptr %.2257, i64 256
  %.2293 = load ptr, ptr %.2293.in, align 8, !tbaa !48 ; 8 uses
  %.2296.in = getelementptr inbounds nuw i8, ptr %.2253, i64 256
  %.2296 = load ptr, ptr %.2296.in, align 8, !tbaa !48 ; 4 uses
  %i.bp = load i16, ptr %.2265, align 2, !tbaa !49 ; 6 uses
  %i.bq = zext i16 %i.bp to i32
  %i.br = load i16, ptr %.2268, align 2, !tbaa !49 ; 6 uses
  %i.bs = zext i16 %i.br to i32
  %i.bt = icmp ult i16 %i.bp, %i.br
  %i.bu = add nuw nsw i32 %i.bs, %i.bq
  %i.bv = lshr i32 %i.bu, 1                       ; 4 uses
  %i.bw = trunc nuw i32 %i.bv to i16              ; 8 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 360 ; 7 uses
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !36 ; 4 uses
  br i1 %i.bt, label %bb.n, label %bb.u

bb.n:                                             ; preds = %bb.m
  %i.bz = sub i16 %i.br, %i.bw                    ; 5 uses
  %i.ca = zext i16 %i.bp to i64
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr %i.by, i64 %i.ca
  %i.cc = load i64, ptr %i.cb, align 8, !tbaa !19
  %i.cd = getelementptr inbounds nuw i8, ptr %.2296, i64 %i.cc
  %i.ce = getelementptr inbounds nuw i8, ptr %2, i64 256 ; 2 uses
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !35
  %i.cg = zext i32 %3 to i64                      ; 3 uses
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr %i.by, i64 %i.cg
  %i.ci = load i64, ptr %i.ch, align 8, !tbaa !19
  %i.cj = getelementptr inbounds nuw i8, ptr %i.cf, i64 %i.ci
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 424 ; 4 uses
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !41
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 16
  %i.cn = load i64, ptr %i.cm, align 8, !tbaa !42
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.cd, ptr align 1 %i.cj, i64 %i.cn, i1 false)
  %i.co = zext i16 %i.bz to i32                   ; 2 uses
  %i.cp = icmp ugt i16 %i.bz, 1
  br i1 %i.cp, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.cq = load ptr, ptr %i.bx, align 8, !tbaa !36 ; 2 uses
  %i.cr = load i16, ptr %.2265, align 2, !tbaa !49
  %i.cs = zext i16 %i.cr to i64
  %i.ct = getelementptr inbounds nuw [8 x i8], ptr %i.cq, i64 %i.cs
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 8
  %i.cv = load i64, ptr %i.cu, align 8, !tbaa !19
  %i.cw = getelementptr inbounds nuw i8, ptr %.2296, i64 %i.cv
  %i.cx = load i64, ptr %i.cq, align 8, !tbaa !19
  %i.cy = getelementptr inbounds nuw i8, ptr %.2293, i64 %i.cx
  %i.cz = load ptr, ptr %i.ck, align 8, !tbaa !41
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 16
  %i.db = load i64, ptr %i.da, align 8, !tbaa !42
  %i.dc = add nsw i32 %i.co, -1
  %i.dd = zext nneg i32 %i.dc to i64
  %i.de = mul i64 %i.db, %i.dd
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.cw, ptr align 1 %i.cy, i64 %i.de, i1 false)
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.df = load ptr, ptr %i.ce, align 8, !tbaa !35
  %i.dg = load ptr, ptr %i.bx, align 8, !tbaa !36 ; 2 uses
  %i.dh = getelementptr inbounds nuw [8 x i8], ptr %i.dg, i64 %i.cg
  %i.di = load i64, ptr %i.dh, align 8, !tbaa !19
  %i.dj = getelementptr inbounds nuw i8, ptr %i.df, i64 %i.di
  %i.dk = zext i16 %i.bz to i64                   ; 8 uses
  %i.dl = getelementptr [8 x i8], ptr %i.dg, i64 %i.dk
  %i.dm = getelementptr i8, ptr %i.dl, i64 -8
  %i.dn = load i64, ptr %i.dm, align 8, !tbaa !19
  %i.do = getelementptr inbounds nuw i8, ptr %.2293, i64 %i.dn
  %i.dp = load ptr, ptr %i.ck, align 8, !tbaa !41
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 16
  %i.dr = load i64, ptr %i.dq, align 8, !tbaa !42
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.dj, ptr align 1 %i.do, i64 %i.dr, i1 false)
  %i.ds = load ptr, ptr %i.bx, align 8, !tbaa !36 ; 2 uses
  %i.dt = load i64, ptr %i.ds, align 8, !tbaa !19
  %i.du = getelementptr inbounds nuw i8, ptr %.2293, i64 %i.dt
  %i.dv = getelementptr inbounds nuw [8 x i8], ptr %i.ds, i64 %i.dk
  %i.dw = load i64, ptr %i.dv, align 8, !tbaa !19
  %i.dx = getelementptr inbounds nuw i8, ptr %.2293, i64 %i.dw
  %i.dy = load ptr, ptr %i.ck, align 8, !tbaa !41
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 16
  %i.ea = load i64, ptr %i.dz, align 8, !tbaa !42
  %i.eb = zext nneg i32 %i.bv to i64
  %i.ec = mul i64 %i.ea, %i.eb
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.du, ptr align 1 %i.dx, i64 %i.ec, i1 false)
  br i1 %i.h, label %.preheader, label %.thread355

.preheader:                                       ; preds = %bb.p
  %.not410 = icmp eq i16 %i.br, %i.bw
  br i1 %.not410, label %._crit_edge408, label %.lr.ph407.preheader

.lr.ph407.preheader:                              ; preds = %.preheader
  %xtraiter431 = and i64 %i.dk, 3                 ; 3 uses
  %i.ed = icmp ult i16 %i.bz, 4
  br i1 %i.ed, label %.lr.ph407.epil.preheader, label %.lr.ph407.preheader.new

.lr.ph407.preheader.new:                          ; preds = %.lr.ph407.preheader
  %unroll_iter436 = and i64 %i.dk, 65532
  br label %.lr.ph407

.lr.ph407:                                        ; preds = %.lr.ph407, %.lr.ph407.preheader.new
  %indvars.iv413 = phi i64 [ 0, %.lr.ph407.preheader.new ], [ %indvars.iv.next414.3, %.lr.ph407 ] ; 5 uses
  %.0244405 = phi i64 [ %i.dk, %.lr.ph407.preheader.new ], [ %i.et, %.lr.ph407 ]
  %niter437 = phi i64 [ 0, %.lr.ph407.preheader.new ], [ %niter437.next.3, %.lr.ph407 ]
  %i.ee = getelementptr inbounds nuw [24 x i8], ptr %.1288, i64 %indvars.iv413
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 16
  %i.eg = load i64, ptr %i.ef, align 8, !tbaa !45
  %i.eh = add i64 %i.eg, %.0244405
  %i.ei = getelementptr inbounds nuw [24 x i8], ptr %.1288, i64 %indvars.iv413
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 40
  %i.ek = load i64, ptr %i.ej, align 8, !tbaa !45
  %i.el = add i64 %i.ek, %i.eh
  %i.em = getelementptr inbounds nuw [24 x i8], ptr %.1288, i64 %indvars.iv413
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 64
  %i.eo = load i64, ptr %i.en, align 8, !tbaa !45
  %i.ep = add i64 %i.eo, %i.el
  %i.eq = getelementptr inbounds nuw [24 x i8], ptr %.1288, i64 %indvars.iv413
  %i.er = getelementptr inbounds nuw i8, ptr %i.eq, i64 88
  %i.es = load i64, ptr %i.er, align 8, !tbaa !45
  %i.et = add i64 %i.es, %i.ep                    ; 3 uses
  %indvars.iv.next414.3 = add nuw nsw i64 %indvars.iv413, 4 ; 2 uses
  %niter437.next.3 = add i64 %niter437, 4         ; 2 uses
  %niter437.ncmp.3 = icmp eq i64 %niter437.next.3, %unroll_iter436
  br i1 %niter437.ncmp.3, label %._crit_edge408.loopexit.unr-lcssa, label %.lr.ph407, !llvm.loop !79

._crit_edge408.loopexit.unr-lcssa:                ; preds = %.lr.ph407
  %lcmp.mod433.not = icmp eq i64 %xtraiter431, 0
  br i1 %lcmp.mod433.not, label %._crit_edge408, label %.lr.ph407.epil.preheader

.lr.ph407.epil.preheader:                         ; preds = %._crit_edge408.loopexit.unr-lcssa, %.lr.ph407.preheader
  %indvars.iv413.epil.init = phi i64 [ 0, %.lr.ph407.preheader ], [ %indvars.iv.next414.3, %._crit_edge408.loopexit.unr-lcssa ]
  %.0244405.epil.init = phi i64 [ %i.dk, %.lr.ph407.preheader ], [ %i.et, %._crit_edge408.loopexit.unr-lcssa ]
  %lcmp.mod435 = icmp ne i64 %xtraiter431, 0
  tail call void @llvm.assume(i1 %lcmp.mod435)
  br label %.lr.ph407.epil

.lr.ph407.epil:                                   ; preds = %.lr.ph407.epil, %.lr.ph407.epil.preheader
  %indvars.iv413.epil = phi i64 [ %indvars.iv413.epil.init, %.lr.ph407.epil.preheader ], [ %indvars.iv.next414.epil, %.lr.ph407.epil ] ; 2 uses
  %.0244405.epil = phi i64 [ %.0244405.epil.init, %.lr.ph407.epil.preheader ], [ %i.ex, %.lr.ph407.epil ]
  %epil.iter432 = phi i64 [ 0, %.lr.ph407.epil.preheader ], [ %epil.iter432.next, %.lr.ph407.epil ]
  %i.eu = getelementptr inbounds nuw [24 x i8], ptr %.1288, i64 %indvars.iv413.epil
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 16
  %i.ew = load i64, ptr %i.ev, align 8, !tbaa !45
  %i.ex = add i64 %i.ew, %.0244405.epil           ; 2 uses
  %indvars.iv.next414.epil = add nuw nsw i64 %indvars.iv413.epil, 1
  %epil.iter432.next = add i64 %epil.iter432, 1   ; 2 uses
  %epil.iter432.cmp.not = icmp eq i64 %epil.iter432.next, %xtraiter431
  br i1 %epil.iter432.cmp.not, label %._crit_edge408, label %.lr.ph407.epil, !llvm.loop !80

._crit_edge408:                                   ; preds = %._crit_edge408.loopexit.unr-lcssa, %.lr.ph407.epil, %.preheader
  %.0244.lcssa = phi i64 [ 0, %.preheader ], [ %i.et, %._crit_edge408.loopexit.unr-lcssa ], [ %i.ex, %.lr.ph407.epil ] ; 4 uses
  %i.ey = sub nsw i64 0, %.0244.lcssa             ; 3 uses
  %i.ez = load i16, ptr %.2265, align 2, !tbaa !49
  %i.fa = zext i16 %i.ez to i64
  %i.fb = getelementptr inbounds nuw [24 x i8], ptr %.1290, i64 %i.fa
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fb, i64 24
  %i.fd = mul nuw nsw i64 %i.dk, 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.fc, ptr align 8 %.1288, i64 %i.fd, i1 false)
  %i.fe = getelementptr inbounds nuw [24 x i8], ptr %.1288, i64 %i.dk
  %i.ff = mul nuw nsw i32 %i.bv, 24
  %narrow = add nuw nsw i32 %i.ff, 24
  %i.fg = zext nneg i32 %narrow to i64
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %.1288, ptr noundef nonnull align 8 dereferenceable(1) %i.fe, i64 %i.fg, i1 false)
  %i.fh = getelementptr inbounds nuw i8, ptr %0, i64 392
  %i.fi = load i8, ptr %i.fh, align 8, !tbaa !46, !range !10, !noundef !11
  %i.fj = trunc nuw i8 %i.fi to i1
  br i1 %i.fj, label %bb.q, label %.thread355

bb.q:                                             ; preds = %._crit_edge408
  %i.fk = load i8, ptr @H5B2_init_g, align 1, !tbaa !8, !range !10, !noundef !11
  %i.fl = trunc nuw i8 %i.fk to i1
  %i.fm = load i8, ptr @H5_libterm_g, align 1, !range !10
  %i.fn = trunc nuw i8 %i.fm to i1
  %i.fo = xor i1 %i.fn, true
  %i.fp = select i1 %i.fl, i1 true, i1 %i.fo
  %i.fq = icmp ne i16 %i.br, %i.bw
  %or.cond.i = and i1 %i.fq, %i.fp
  br i1 %or.cond.i, label %.lr.ph.i, label %.thread355, !prof !55

.lr.ph.i:                                         ; preds = %bb.q
  %i.fr = add nuw nsw i32 %i.co, 1
  %i.fs = load i16, ptr %.2265, align 2, !tbaa !49
  %i.ft = zext i16 %i.fs to i32                   ; 2 uses
  %i.fu = add nuw nsw i32 %i.fr, %i.ft
  %i.fv = add nuw nsw i32 %i.ft, 1
  %i.fw = add nsw i32 %i.g, -1
  %i.fx = zext nneg i32 %i.fv to i64
  %zext418 = zext nneg i32 %i.fu to i64
  br label %bb.s

bb.r:                                             ; preds = %bb.s
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.fy = icmp eq i64 %indvars.iv.next.i, %zext418
  br i1 %i.fy, label %.thread355, label %bb.s, !llvm.loop !56

bb.s:                                             ; preds = %bb.r, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %i.fx, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.r ] ; 2 uses
  %i.fz = getelementptr inbounds nuw [24 x i8], ptr %.1290, i64 %indvars.iv.i
  %i.ga = tail call i32 @H5B2__update_flush_depend(ptr noundef %0, i32 noundef %i.fw, ptr noundef %i.fz, ptr noundef nonnull %.2257, ptr noundef nonnull %.2253)
  %i.gb = icmp slt i32 %i.ga, 0
  br i1 %i.gb, label %bb.t, label %bb.r

.thread355:                                       ; preds = %bb.r, %._crit_edge408, %bb.p, %bb.q
  %.0281353 = phi i64 [ %i.ey, %._crit_edge408 ], [ 0, %bb.p ], [ %i.ey, %bb.q ], [ %i.ey, %bb.r ]
  %.0284351 = phi i64 [ %.0244.lcssa, %._crit_edge408 ], [ 0, %bb.p ], [ %.0244.lcssa, %bb.q ], [ %.0244.lcssa, %bb.r ]
  %i.gc = load i16, ptr %.2265, align 2, !tbaa !49
  %i.gd = add i16 %i.gc, %i.bz
  store i16 %i.gd, ptr %.2265, align 2, !tbaa !49
  br label %bb.ac

bb.t:                                             ; preds = %bb.s
  %i.ge = load i64, ptr @H5E_BTREE_g, align 8, !tbaa !19
  %i.gf = load i64, ptr @H5E_CANTUPDATE_g, align 8, !tbaa !19
  %i.gg = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5B2__update_child_flush_depends, i32 noundef 1989, i64 noundef %i.ge, i64 noundef %i.gf, ptr noundef nonnull @.str.29) #4 ; 0 uses
  %i.gh = load i64, ptr @H5E_BTREE_g, align 8, !tbaa !19
  %i.gi = load i64, ptr @H5E_CANTUPDATE_g, align 8, !tbaa !19
  %i.gj = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5B2__redistribute2, i32 noundef 553, i64 noundef %i.gh, i64 noundef %i.gi, ptr noundef nonnull @.str.6) #4 ; 0 uses
  br label %bb.af

bb.u:                                             ; preds = %bb.m
  %i.gk = sub i16 %i.bp, %i.bw                    ; 6 uses
  %i.gl = zext i16 %i.gk to i64                   ; 7 uses
  %i.gm = getelementptr inbounds nuw [8 x i8], ptr %i.by, i64 %i.gl
  %i.gn = load i64, ptr %i.gm, align 8, !tbaa !19
  %i.go = getelementptr inbounds nuw i8, ptr %.2293, i64 %i.gn
  %i.gp = load i64, ptr %i.by, align 8, !tbaa !19
  %i.gq = getelementptr inbounds nuw i8, ptr %.2293, i64 %i.gp
  %i.gr = getelementptr inbounds nuw i8, ptr %0, i64 424 ; 4 uses
  %i.gs = load ptr, ptr %i.gr, align 8, !tbaa !41
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gs, i64 16
  %i.gu = load i64, ptr %i.gt, align 8, !tbaa !42
  %i.gv = zext i16 %i.br to i64
  %i.gw = mul i64 %i.gu, %i.gv
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.go, ptr align 1 %i.gq, i64 %i.gw, i1 false)
  %i.gx = load ptr, ptr %i.bx, align 8, !tbaa !36 ; 2 uses
  %i.gy = zext i16 %i.gk to i32                   ; 3 uses
  %i.gz = add nsw i32 %i.gy, -1
  %i.ha = sext i32 %i.gz to i64                   ; 2 uses
  %i.hb = getelementptr inbounds [8 x i8], ptr %i.gx, i64 %i.ha
  %i.hc = load i64, ptr %i.hb, align 8, !tbaa !19
  %i.hd = getelementptr inbounds nuw i8, ptr %.2293, i64 %i.hc
  %i.he = getelementptr inbounds nuw i8, ptr %2, i64 256 ; 2 uses
  %i.hf = load ptr, ptr %i.he, align 8, !tbaa !35
  %i.hg = zext i32 %3 to i64                      ; 3 uses
  %i.hh = getelementptr inbounds nuw [8 x i8], ptr %i.gx, i64 %i.hg
  %i.hi = load i64, ptr %i.hh, align 8, !tbaa !19
  %i.hj = getelementptr inbounds nuw i8, ptr %i.hf, i64 %i.hi
  %i.hk = load ptr, ptr %i.gr, align 8, !tbaa !41
  %i.hl = getelementptr inbounds nuw i8, ptr %i.hk, i64 16
  %i.hm = load i64, ptr %i.hl, align 8, !tbaa !42
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.hd, ptr align 1 %i.hj, i64 %i.hm, i1 false)
  %i.hn = icmp ugt i16 %i.gk, 1
  br i1 %i.hn, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.ho = load ptr, ptr %i.bx, align 8, !tbaa !36 ; 2 uses
  %i.hp = load i64, ptr %i.ho, align 8, !tbaa !19
  %i.hq = getelementptr inbounds nuw i8, ptr %.2293, i64 %i.hp
  %i.hr = load i16, ptr %.2265, align 2, !tbaa !49
  %i.hs = zext i16 %i.hr to i32
  %i.ht = sub nsw i32 %i.hs, %i.gy
  %i.hu = sext i32 %i.ht to i64
  %i.hv = getelementptr [8 x i8], ptr %i.ho, i64 %i.hu
  %i.hw = getelementptr i8, ptr %i.hv, i64 8
  %i.hx = load i64, ptr %i.hw, align 8, !tbaa !19
  %i.hy = getelementptr inbounds nuw i8, ptr %.2296, i64 %i.hx
  %i.hz = load ptr, ptr %i.gr, align 8, !tbaa !41
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hz, i64 16
  %i.ib = load i64, ptr %i.ia, align 8, !tbaa !42
  %i.ic = mul i64 %i.ib, %i.ha
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.hq, ptr align 1 %i.hy, i64 %i.ic, i1 false)
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %i.id = load ptr, ptr %i.he, align 8, !tbaa !35
  %i.ie = load ptr, ptr %i.bx, align 8, !tbaa !36 ; 2 uses
  %i.if = getelementptr inbounds nuw [8 x i8], ptr %i.ie, i64 %i.hg
  %i.ig = load i64, ptr %i.if, align 8, !tbaa !19
  %i.ih = getelementptr inbounds nuw i8, ptr %i.id, i64 %i.ig
  %i.ii = load i16, ptr %.2265, align 2, !tbaa !49
  %i.ij = zext i16 %i.ii to i32
  %i.ik = sub nsw i32 %i.ij, %i.gy
  %i.il = sext i32 %i.ik to i64
  %i.im = getelementptr inbounds [8 x i8], ptr %i.ie, i64 %i.il
  %i.in = load i64, ptr %i.im, align 8, !tbaa !19
  %i.io = getelementptr inbounds nuw i8, ptr %.2296, i64 %i.in
  %i.ip = load ptr, ptr %i.gr, align 8, !tbaa !41
  %i.iq = getelementptr inbounds nuw i8, ptr %i.ip, i64 16
  %i.ir = load i64, ptr %i.iq, align 8, !tbaa !42
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ih, ptr align 1 %i.io, i64 %i.ir, i1 false)
  br i1 %i.h, label %bb.x, label %.thread370

bb.x:                                             ; preds = %bb.w
  %i.is = getelementptr inbounds nuw [24 x i8], ptr %.1288, i64 %i.gl
  %i.it = load i16, ptr %.2268, align 2, !tbaa !49
  %i.iu = zext i16 %i.it to i64
  %i.iv = mul nuw nsw i64 %i.iu, 24
  %i.iw = add nuw nsw i64 %i.iv, 24
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.is, ptr noundef nonnull align 8 dereferenceable(1) %.1288, i64 %i.iw, i1 false)
  %i.ix = zext nneg i32 %i.bv to i64
  %i.iy = getelementptr inbounds nuw [24 x i8], ptr %.1290, i64 %i.ix
  %i.iz = getelementptr inbounds nuw i8, ptr %i.iy, i64 24
  %i.ja = mul nuw nsw i64 %i.gl, 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.1288, ptr nonnull align 8 %i.iz, i64 %i.ja, i1 false)
  %.not = icmp eq i16 %i.bp, %i.bw
  br i1 %.not, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.x
  %xtraiter = and i64 %i.gl, 3                    ; 3 uses
  %i.jb = icmp ult i16 %i.gk, 4
  br i1 %i.jb, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %i.gl, 65532
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader.new ], [ %indvars.iv.next.3, %.lr.ph ] ; 5 uses
  %.0240403 = phi i64 [ %i.gl, %.lr.ph.preheader.new ], [ %i.jr, %.lr.ph ]
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.3, %.lr.ph ]
  %i.jc = getelementptr inbounds nuw [24 x i8], ptr %.1288, i64 %indvars.iv
  %i.jd = getelementptr inbounds nuw i8, ptr %i.jc, i64 16
  %i.je = load i64, ptr %i.jd, align 8, !tbaa !45
  %i.jf = add i64 %i.je, %.0240403
  %i.jg = getelementptr inbounds nuw [24 x i8], ptr %.1288, i64 %indvars.iv
  %i.jh = getelementptr inbounds nuw i8, ptr %i.jg, i64 40
  %i.ji = load i64, ptr %i.jh, align 8, !tbaa !45
  %i.jj = add i64 %i.ji, %i.jf
  %i.jk = getelementptr inbounds nuw [24 x i8], ptr %.1288, i64 %indvars.iv
  %i.jl = getelementptr inbounds nuw i8, ptr %i.jk, i64 64
  %i.jm = load i64, ptr %i.jl, align 8, !tbaa !45
  %i.jn = add i64 %i.jm, %i.jj
  %i.jo = getelementptr inbounds nuw [24 x i8], ptr %.1288, i64 %indvars.iv
  %i.jp = getelementptr inbounds nuw i8, ptr %i.jo, i64 88
  %i.jq = load i64, ptr %i.jp, align 8, !tbaa !45
  %i.jr = add i64 %i.jq, %i.jn                    ; 3 uses
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !81

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next.3, %._crit_edge.loopexit.unr-lcssa ]
  %.0240403.epil.init = phi i64 [ %i.gl, %.lr.ph.preheader ], [ %i.jr, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod430 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod430)
  br label %.lr.ph.epil

.lr.ph.epil:                                      ; preds = %.lr.ph.epil, %.lr.ph.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.epil.init, %.lr.ph.epil.preheader ], [ %indvars.iv.next.epil, %.lr.ph.epil ] ; 2 uses
  %.0240403.epil = phi i64 [ %.0240403.epil.init, %.lr.ph.epil.preheader ], [ %i.jv, %.lr.ph.epil ]
  %epil.iter = phi i64 [ 0, %.lr.ph.epil.preheader ], [ %epil.iter.next, %.lr.ph.epil ]
  %i.js = getelementptr inbounds nuw [24 x i8], ptr %.1288, i64 %indvars.iv.epil
  %i.jt = getelementptr inbounds nuw i8, ptr %i.js, i64 16
  %i.ju = load i64, ptr %i.jt, align 8, !tbaa !45
  %i.jv = add i64 %i.ju, %.0240403.epil           ; 2 uses
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %.lr.ph.epil, !llvm.loop !82

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.epil, %bb.x
  %.0240.lcssa = phi i64 [ 0, %bb.x ], [ %i.jr, %._crit_edge.loopexit.unr-lcssa ], [ %i.jv, %.lr.ph.epil ] ; 4 uses
  %i.jw = sub nsw i64 0, %.0240.lcssa             ; 3 uses
  %i.jx = getelementptr inbounds nuw i8, ptr %0, i64 392
  %i.jy = load i8, ptr %i.jx, align 8, !tbaa !46, !range !10, !noundef !11
  %i.jz = trunc nuw i8 %i.jy to i1
  br i1 %i.jz, label %bb.y, label %.thread370

bb.y:                                             ; preds = %._crit_edge
  %i.ka = load i8, ptr @H5B2_init_g, align 1, !tbaa !8, !range !10, !noundef !11
  %i.kb = trunc nuw i8 %i.ka to i1
  %i.kc = load i8, ptr @H5_libterm_g, align 1, !range !10
  %i.kd = trunc nuw i8 %i.kc to i1
  %i.ke = xor i1 %i.kd, true
  %i.kf = select i1 %i.kb, i1 true, i1 %i.ke
  %i.kg = icmp ne i16 %i.bp, %i.bw
  %or.cond.i314 = and i1 %i.kg, %i.kf
  br i1 %or.cond.i314, label %.lr.ph.i316, label %.thread370, !prof !55

.lr.ph.i316:                                      ; preds = %bb.y
  %i.kh = add nsw i32 %i.g, -1
  %zext = zext i16 %i.gk to i64
  br label %bb.aa

bb.z:                                             ; preds = %bb.aa
  %indvars.iv.next.i318 = add nuw nsw i64 %indvars.iv.i317, 1 ; 2 uses
  %i.ki = icmp eq i64 %indvars.iv.next.i318, %zext
  br i1 %i.ki, label %.thread370, label %bb.aa, !llvm.loop !56

bb.aa:                                            ; preds = %bb.z, %.lr.ph.i316
  %indvars.iv.i317 = phi i64 [ 0, %.lr.ph.i316 ], [ %indvars.iv.next.i318, %bb.z ] ; 2 uses
  %i.kj = getelementptr inbounds nuw [24 x i8], ptr %.1288, i64 %indvars.iv.i317
  %i.kk = tail call i32 @H5B2__update_flush_depend(ptr noundef %0, i32 noundef %i.kh, ptr noundef nonnull %i.kj, ptr noundef nonnull %.2253, ptr noundef nonnull %.2257)
  %i.kl = icmp slt i32 %i.kk, 0
  br i1 %i.kl, label %bb.ab, label %bb.z

.thread370:                                       ; preds = %bb.z, %._crit_edge, %bb.w, %bb.y
  %.1282368 = phi i64 [ %.0240.lcssa, %._crit_edge ], [ 0, %bb.w ], [ %.0240.lcssa, %bb.y ], [ %.0240.lcssa, %bb.z ]
  %.1285366 = phi i64 [ %i.jw, %._crit_edge ], [ 0, %bb.w ], [ %i.jw, %bb.y ], [ %i.jw, %bb.z ]
  store i16 %i.bw, ptr %.2265, align 2, !tbaa !49
  %i.km = load i16, ptr %.2268, align 2, !tbaa !49
  %i.kn = add i16 %i.km, %i.gk
  br label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.ko = load i64, ptr @H5E_BTREE_g, align 8, !tbaa !19
  %i.kp = load i64, ptr @H5E_CANTUPDATE_g, align 8, !tbaa !19
  %i.kq = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5B2__update_child_flush_depends, i32 noundef 1989, i64 noundef %i.ko, i64 noundef %i.kp, ptr noundef nonnull @.str.29) #4 ; 0 uses
  %i.kr = load i64, ptr @H5E_BTREE_g, align 8, !tbaa !19
  %i.ks = load i64, ptr @H5E_CANTUPDATE_g, align 8, !tbaa !19
  %i.kt = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5B2__redistribute2, i32 noundef 616, i64 noundef %i.kr, i64 noundef %i.ks, ptr noundef nonnull @.str.6) #4 ; 0 uses
  br label %bb.af

bb.ac:                                            ; preds = %.thread370, %.thread355
  %.pre-phi = phi i64 [ %i.hg, %.thread370 ], [ %i.cg, %.thread355 ]
  %storemerge = phi i16 [ %i.kn, %.thread370 ], [ %i.bw, %.thread355 ]
  %.2286 = phi i64 [ %.1285366, %.thread370 ], [ %.0284351, %.thread355 ]
  %.2283 = phi i64 [ %.1282368, %.thread370 ], [ %.0281353, %.thread355 ]
  store i16 %storemerge, ptr %.2268, align 2, !tbaa !49
  %i.ku = load i16, ptr %.2265, align 2, !tbaa !49 ; 2 uses
  %i.kv = getelementptr inbounds nuw i8, ptr %2, i64 264
  %i.kw = load ptr, ptr %i.kv, align 8, !tbaa !43 ; 2 uses
  %i.kx = getelementptr inbounds nuw [24 x i8], ptr %i.kw, i64 %.pre-phi ; 3 uses
  %i.ky = getelementptr inbounds nuw i8, ptr %i.kx, i64 8
  store i16 %i.ku, ptr %i.ky, align 8, !tbaa !44
  %i.kz = load i16, ptr %.2268, align 2, !tbaa !49 ; 2 uses
  %i.la = add i32 %3, 1
  %i.lb = zext i32 %i.la to i64
  %i.lc = getelementptr inbounds nuw [24 x i8], ptr %i.kw, i64 %i.lb ; 2 uses
  %i.ld = getelementptr inbounds nuw i8, ptr %i.lc, i64 8
  store i16 %i.kz, ptr %i.ld, align 8, !tbaa !44
  %i.le = getelementptr inbounds nuw i8, ptr %i.lc, i64 16 ; 3 uses
  br i1 %i.h, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.lf = getelementptr inbounds nuw i8, ptr %i.kx, i64 16 ; 2 uses
  %i.lg = load i64, ptr %i.lf, align 8, !tbaa !45
  %i.lh = add nsw i64 %i.lg, %.2286
  store i64 %i.lh, ptr %i.lf, align 8, !tbaa !45
  %i.li = load i64, ptr %i.le, align 8, !tbaa !45
  %i.lj = add nsw i64 %i.li, %.2283
  store i64 %i.lj, ptr %i.le, align 8, !tbaa !45
  br label %bb.af

bb.ae:                                            ; preds = %bb.ac
  %i.lk = zext i16 %i.ku to i64
  %i.ll = getelementptr inbounds nuw i8, ptr %i.kx, i64 16
  store i64 %i.lk, ptr %i.ll, align 8, !tbaa !45
  %i.lm = zext i16 %i.kz to i64
  store i64 %i.lm, ptr %i.le, align 8, !tbaa !45
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad, %bb.t, %bb.ab
  %.3276 = phi i32 [ 2, %bb.ad ], [ 2, %bb.ae ], [ 0, %bb.t ], [ 0, %bb.ab ] ; 2 uses
  %.6 = phi i32 [ 0, %bb.ad ], [ 0, %bb.ae ], [ -1, %bb.t ], [ -1, %bb.ab ]
  %i.ln = getelementptr inbounds nuw i8, ptr %0, i64 288 ; 2 uses
  %i.lo = load ptr, ptr %i.ln, align 8, !tbaa !57
  %i.lp = tail call i32 @H5AC_unprotect(ptr noundef %i.lo, ptr noundef nonnull %.0242, i64 noundef %.2, ptr noundef nonnull %.2253, i32 noundef %.3276) #4
  %i.lq = icmp slt i32 %i.lp, 0
  br i1 %i.lq, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.lr = load i64, ptr @H5E_BTREE_g, align 8, !tbaa !19
  %i.ls = load i64, ptr @H5E_CANTUNPROTECT_g, align 8, !tbaa !19
  %i.lt = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5B2__redistribute2, i32 noundef 660, i64 noundef %i.lr, i64 noundef %i.ls, ptr noundef nonnull @.str.13) #4 ; 0 uses
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af
  %.7.ph = phi i32 [ -1, %bb.ag ], [ %.6, %bb.af ]
  %i.lu = load ptr, ptr %i.ln, align 8, !tbaa !57
  %i.lv = tail call i32 @H5AC_unprotect(ptr noundef %i.lu, ptr noundef nonnull %.0242, i64 noundef %.2249, ptr noundef nonnull %.2257, i32 noundef %.3276) #4
  %i.lw = icmp slt i32 %i.lv, 0
  br i1 %i.lw, label %bb.ai, label %.thread

bb.ai:                                            ; preds = %bb.ah
  %i.lx = load i64, ptr @H5E_BTREE_g, align 8, !tbaa !19
  %i.ly = load i64, ptr @H5E_CANTUNPROTECT_g, align 8, !tbaa !19
  %i.lz = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5B2__redistribute2, i32 noundef 662, i64 noundef %i.lx, i64 noundef %i.ly, ptr noundef nonnull @.str.13) #4 ; 0 uses
  br label %.thread

.thread:                                          ; preds = %bb.k, %bb.i, %bb.f, %bb.d, %bb.a, %bb.ai, %bb.ah
  %.8 = phi i32 [ -1, %bb.ai ], [ %.7.ph, %bb.ah ], [ 0, %bb.a ], [ -1, %bb.f ], [ -1, %bb.d ], [ -1, %bb.i ], [ -1, %bb.k ]
  ret i32 %.8
}

; Function Attrs: nounwind uwtable
define range(i32 -1, 1) i32 @H5B2__redistribute3(ptr noundef %0, i16 noundef zeroext %1, ptr noundef %2, ptr nofree noundef captures(none) %3, i32 noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = load i8, ptr @H5B2_init_g, align 1, !tbaa !8, !range !10, !noundef !11
  %i.b = trunc nuw i8 %i.a to i1
  %i.c = load i8, ptr @H5_libterm_g, align 1, !range !10
  %i.d = trunc nuw i8 %i.c to i1
  %i.e = xor i1 %i.d, true
  %i.f = select i1 %i.b, i1 true, i1 %i.e
  br i1 %i.f, label %bb.b, label %.thread, !prof !12

bb.b:                                             ; preds = %bb.a
  %i.g = zext i16 %1 to i32                       ; 4 uses
  %i.h = icmp ugt i16 %1, 1                       ; 6 uses
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 264 ; 7 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !43
  %i.k = add i32 %4, -1
  %i.l = zext i32 %i.k to i64                     ; 3 uses
  %i.m = getelementptr inbounds nuw [24 x i8], ptr %i.j, i64 %i.l ; 2 uses
  br i1 %i.h, label %bb.c, label %bb.j

bb.c:                                             ; preds = %bb.b
  %i.n = add i16 %1, -1                           ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 392 ; 3 uses
  %i.p = load i8, ptr %i.o, align 8, !tbaa !46, !range !10, !noundef !11
  %i.q = trunc nuw i8 %i.p to i1
  %i.r = tail call ptr @H5B2__protect_internal(ptr noundef %0, ptr noundef %2, ptr noundef %i.m, i16 noundef zeroext %i.n, i1 noundef zeroext %i.q, i32 noundef 0) #4 ; 4 uses
  %i.s = icmp eq ptr %i.r, null
  br i1 %i.s, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.t = load i64, ptr @H5E_BTREE_g, align 8, !tbaa !19
  %i.u = load i64, ptr @H5E_CANTPROTECT_g, align 8, !tbaa !19
  %i.v = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5B2__redistribute3, i32 noundef 721, i64 noundef %i.t, i64 noundef %i.u, ptr noundef nonnull @.str.3) #4 ; 0 uses
  br label %.thread

bb.e:                                             ; preds = %bb.c
  %i.w = load ptr, ptr %i.i, align 8, !tbaa !43   ; 2 uses
  %i.x = getelementptr inbounds nuw [24 x i8], ptr %i.w, i64 %i.l
  %i.y = load i64, ptr %i.x, align 8, !tbaa !47
  %i.z = zext i32 %4 to i64                       ; 2 uses
  %i.aa = getelementptr inbounds nuw [24 x i8], ptr %i.w, i64 %i.z
  %i.ab = load i8, ptr %i.o, align 8, !tbaa !46, !range !10, !noundef !11
  %i.ac = trunc nuw i8 %i.ab to i1
  %i.ad = tail call ptr @H5B2__protect_internal(ptr noundef nonnull %0, ptr noundef nonnull %2, ptr noundef %i.aa, i16 noundef zeroext %i.n, i1 noundef zeroext %i.ac, i32 noundef 0) #4 ; 4 uses
  %i.ae = icmp eq ptr %i.ad, null
  br i1 %i.ae, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.af = load i64, ptr @H5E_BTREE_g, align 8, !tbaa !19
  %i.ag = load i64, ptr @H5E_CANTPROTECT_g, align 8, !tbaa !19
  %i.ah = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5B2__redistribute3, i32 noundef 726, i64 noundef %i.af, i64 noundef %i.ag, ptr noundef nonnull @.str.3) #4 ; 0 uses
  br label %.thread

bb.g:                                             ; preds = %bb.e
  %i.ai = load ptr, ptr %i.i, align 8, !tbaa !43  ; 2 uses
  %i.aj = getelementptr inbounds nuw [24 x i8], ptr %i.ai, i64 %i.z
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !47
  %i.al = add i32 %4, 1
  %i.am = zext i32 %i.al to i64                   ; 2 uses
  %i.an = getelementptr inbounds nuw [24 x i8], ptr %i.ai, i64 %i.am
  %i.ao = load i8, ptr %i.o, align 8, !tbaa !46, !range !10, !noundef !11
  %i.ap = trunc nuw i8 %i.ao to i1
  %i.aq = tail call ptr @H5B2__protect_internal(ptr noundef nonnull %0, ptr noundef nonnull %2, ptr noundef %i.an, i16 noundef zeroext %i.n, i1 noundef zeroext %i.ap, i32 noundef 0) #4 ; 4 uses
  %i.ar = icmp eq ptr %i.aq, null
  br i1 %i.ar, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.as = load i64, ptr @H5E_BTREE_g, align 8, !tbaa !19
  %i.at = load i64, ptr @H5E_CANTPROTECT_g, align 8, !tbaa !19
  %i.au = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5B2__redistribute3, i32 noundef 731, i64 noundef %i.as, i64 noundef %i.at, ptr noundef nonnull @.str.3) #4 ; 0 uses
  br label %.thread

bb.i:                                             ; preds = %bb.g
end_hunk_0
begin_hunk_1_@H5B2__redistribute3:bb.a

bb.m:                                             ; preds = %bb.l
  %i.bx = load i64, ptr @H5E_BTREE_g, align 8, !tbaa !19
  %i.by = load i64, ptr @H5E_CANTPROTECT_g, align 8, !tbaa !19
  %i.bz = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5B2__redistribute3, i32 noundef 764, i64 noundef %i.bx, i64 noundef %i.by, ptr noundef nonnull @.str.5) #4 ; 0 uses
  br label %.thread

bb.n:                                             ; preds = %bb.l
  %i.ca = load ptr, ptr %i.i, align 8, !tbaa !43  ; 2 uses
  %i.cb = getelementptr inbounds nuw [24 x i8], ptr %i.ca, i64 %i.br
  %i.cc = load i64, ptr %i.cb, align 8, !tbaa !47
  %i.cd = add i32 %4, 1
  %i.ce = zext i32 %i.cd to i64                   ; 2 uses
  %i.cf = getelementptr inbounds nuw [24 x i8], ptr %i.ca, i64 %i.ce
  %i.cg = load i8, ptr %i.bg, align 8, !tbaa !46, !range !10, !noundef !11
  %i.ch = trunc nuw i8 %i.cg to i1
  %i.ci = tail call ptr @H5B2__protect_leaf(ptr noundef nonnull %0, ptr noundef nonnull %2, ptr noundef %i.cf, i1 noundef zeroext %i.ch, i32 noundef 0) #4 ; 3 uses
  %i.cj = icmp eq ptr %i.ci, null
  br i1 %i.cj, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.ck = load i64, ptr @H5E_BTREE_g, align 8, !tbaa !19
  %i.cl = load i64, ptr @H5E_CANTPROTECT_g, align 8, !tbaa !19
  %i.cm = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5B2__redistribute3, i32 noundef 768, i64 noundef %i.ck, i64 noundef %i.cl, ptr noundef nonnull @.str.5) #4 ; 0 uses
  br label %.thread

bb.p:                                             ; preds = %bb.n
  %i.cn = load ptr, ptr %i.i, align 8, !tbaa !43
  %i.co = getelementptr inbounds nuw [24 x i8], ptr %i.cn, i64 %i.ce
  %i.cp = getelementptr inbounds nuw i8, ptr %i.bj, i64 264
  %i.cq = getelementptr inbounds nuw i8, ptr %i.bv, i64 264
  %i.cr = getelementptr inbounds nuw i8, ptr %i.ci, i64 264
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.i
  %.2502 = phi ptr [ %i.ay, %bb.i ], [ %i.cq, %bb.p ] ; 5 uses
  %.2499 = phi ptr [ %i.az, %bb.i ], [ %i.cr, %bb.p ] ; 6 uses
  %.2496 = phi ptr [ %i.ax, %bb.i ], [ %i.cp, %bb.p ] ; 7 uses
  %.2486 = phi ptr [ %i.ad, %bb.i ], [ %i.bv, %bb.p ] ; 6 uses
  %.2482 = phi ptr [ %i.aq, %bb.i ], [ %i.ci, %bb.p ] ; 4 uses
  %.2478 = phi ptr [ %i.r, %bb.i ], [ %i.bj, %bb.p ] ; 4 uses
  %.2474 = phi i64 [ %i.ak, %bb.i ], [ %i.cc, %bb.p ]
  %.2470.in = phi ptr [ %i.aw, %bb.i ], [ %i.co, %bb.p ]
  %.2466 = phi i64 [ %i.y, %bb.i ], [ %i.bq, %bb.p ]
  %.0462 = phi ptr [ @H5AC_BT2_INT, %bb.i ], [ @H5AC_BT2_LEAF, %bb.p ] ; 3 uses
  %.1457 = phi ptr [ %i.bd, %bb.i ], [ null, %bb.p ] ; 20 uses
  %.1454 = phi ptr [ %i.bf, %bb.i ], [ null, %bb.p ] ; 17 uses
  %.1 = phi ptr [ %i.bb, %bb.i ], [ null, %bb.p ] ; 3 uses
  %.2470 = load i64, ptr %.2470.in, align 8, !tbaa !47
  %.2553.in = getelementptr inbounds nuw i8, ptr %.2486, i64 256
  %.2553 = load ptr, ptr %.2553.in, align 8, !tbaa !48 ; 12 uses
  %.2556.in = getelementptr inbounds nuw i8, ptr %.2482, i64 256
  %.2556 = load ptr, ptr %.2556.in, align 8, !tbaa !48 ; 8 uses
  %.2559.in = getelementptr inbounds nuw i8, ptr %.2478, i64 256
  %.2559 = load ptr, ptr %.2559.in, align 8, !tbaa !48 ; 4 uses
  %i.cs = load i16, ptr %.2496, align 2, !tbaa !49 ; 2 uses
  %i.ct = zext i16 %i.cs to i32                   ; 2 uses
  %i.cu = load i16, ptr %.2502, align 2, !tbaa !49 ; 3 uses
  %i.cv = zext i16 %i.cu to i32
  %i.cw = add nuw nsw i32 %i.cv, %i.ct
  %i.cx = load i16, ptr %.2499, align 2, !tbaa !49 ; 2 uses
  %i.cy = zext i16 %i.cx to i32                   ; 2 uses
  %i.cz = add nuw nsw i32 %i.cw, %i.cy            ; 3 uses
  %i.da = udiv i32 %i.cz, 3                       ; 3 uses
  %i.db = trunc nuw i32 %i.da to i16
  %i.dc = sub nsw i32 %i.cz, %i.da
  %i.dd = lshr i32 %i.dc, 1                       ; 4 uses
  %i.de = trunc i32 %i.dd to i16
  %i.df = and i32 %i.dd, 65535                    ; 9 uses
  %i.dg = add nuw i32 %i.da, %i.dd
  %i.dh = sub i32 %i.cz, %i.dg                    ; 2 uses
  %i.di = trunc i32 %i.dh to i16
  %i.dj = icmp samesign ugt i32 %i.df, %i.ct
  br i1 %i.dj, label %bb.r, label %bb.z

bb.r:                                             ; preds = %bb.q
  %i.dk = getelementptr inbounds nuw i8, ptr %0, i64 360 ; 4 uses
  %i.dl = load ptr, ptr %i.dk, align 8, !tbaa !36 ; 2 uses
  %i.dm = zext i16 %i.cs to i64
  %i.dn = getelementptr inbounds nuw [8 x i8], ptr %i.dl, i64 %i.dm
  %i.do = load i64, ptr %i.dn, align 8, !tbaa !19
  %i.dp = getelementptr inbounds nuw i8, ptr %.2559, i64 %i.do
  %i.dq = getelementptr inbounds nuw i8, ptr %2, i64 256 ; 2 uses
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !35
  %i.ds = add i32 %4, -1
  %i.dt = zext i32 %i.ds to i64                   ; 2 uses
  %i.du = getelementptr inbounds nuw [8 x i8], ptr %i.dl, i64 %i.dt
  %i.dv = load i64, ptr %i.du, align 8, !tbaa !19
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dr, i64 %i.dv
  %i.dx = getelementptr inbounds nuw i8, ptr %0, i64 424 ; 4 uses
  %i.dy = load ptr, ptr %i.dx, align 8, !tbaa !41
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 16
  %i.ea = load i64, ptr %i.dz, align 8, !tbaa !42
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.dp, ptr align 1 %i.dw, i64 %i.ea, i1 false)
  %i.eb = add nsw i32 %i.df, -1
  %i.ec = load i16, ptr %.2496, align 2, !tbaa !49
  %i.ed = zext i16 %i.ec to i32                   ; 2 uses
  %i.ee = icmp samesign ugt i32 %i.eb, %i.ed
  br i1 %i.ee, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.ef = add nuw nsw i32 %i.ed, 1                ; 2 uses
  %i.eg = sub nsw i32 %i.dd, %i.ef                ; 2 uses
  %i.eh = trunc i32 %i.eg to i16
  %i.ei = load ptr, ptr %i.dk, align 8, !tbaa !36 ; 2 uses
  %i.ej = zext nneg i32 %i.ef to i64
  %i.ek = getelementptr inbounds nuw [8 x i8], ptr %i.ei, i64 %i.ej
  %i.el = load i64, ptr %i.ek, align 8, !tbaa !19
  %i.em = getelementptr inbounds nuw i8, ptr %.2559, i64 %i.el
  %i.en = load i64, ptr %i.ei, align 8, !tbaa !19
  %i.eo = getelementptr inbounds nuw i8, ptr %.2553, i64 %i.en
  %i.ep = load ptr, ptr %i.dx, align 8, !tbaa !41
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ep, i64 16
  %i.er = load i64, ptr %i.eq, align 8, !tbaa !42
  %.mask = and i32 %i.eg, 65535
  %i.es = zext nneg i32 %.mask to i64
  %i.et = mul i64 %i.er, %i.es
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.em, ptr align 1 %i.eo, i64 %i.et, i1 false)
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %.0459 = phi i16 [ %i.eh, %bb.s ], [ 0, %bb.r ] ; 2 uses
  %i.eu = load ptr, ptr %i.dq, align 8, !tbaa !35
  %i.ev = load ptr, ptr %i.dk, align 8, !tbaa !36 ; 2 uses
  %i.ew = getelementptr inbounds nuw [8 x i8], ptr %i.ev, i64 %i.dt
  %i.ex = load i64, ptr %i.ew, align 8, !tbaa !19
  %i.ey = getelementptr inbounds nuw i8, ptr %i.eu, i64 %i.ex
  %i.ez = zext i16 %.0459 to i64
  %i.fa = getelementptr inbounds nuw [8 x i8], ptr %i.ev, i64 %i.ez
  %i.fb = load i64, ptr %i.fa, align 8, !tbaa !19
  %i.fc = getelementptr inbounds nuw i8, ptr %.2553, i64 %i.fb
  %i.fd = load ptr, ptr %i.dx, align 8, !tbaa !41
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fd, i64 16
  %i.ff = load i64, ptr %i.fe, align 8, !tbaa !42
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ey, ptr align 1 %i.fc, i64 %i.ff, i1 false)
  %i.fg = add i16 %.0459, 1                       ; 4 uses
  %i.fh = load ptr, ptr %i.dk, align 8, !tbaa !36 ; 2 uses
  %i.fi = load i64, ptr %i.fh, align 8, !tbaa !19
  %i.fj = getelementptr inbounds nuw i8, ptr %.2553, i64 %i.fi
  %i.fk = zext i16 %i.fg to i64
  %i.fl = getelementptr inbounds nuw [8 x i8], ptr %i.fh, i64 %i.fk
  %i.fm = load i64, ptr %i.fl, align 8, !tbaa !19
  %i.fn = getelementptr inbounds nuw i8, ptr %.2553, i64 %i.fm
  %i.fo = load ptr, ptr %i.dx, align 8, !tbaa !41
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fo, i64 16
  %i.fq = load i64, ptr %i.fp, align 8, !tbaa !42
  %i.fr = load i16, ptr %.2502, align 2, !tbaa !49
  %i.fs = zext i16 %i.fr to i32
  %i.ft = zext i16 %i.fg to i32                   ; 2 uses
  %i.fu = sub nsw i32 %i.fs, %i.ft
  %i.fv = sext i32 %i.fu to i64
  %i.fw = mul i64 %i.fq, %i.fv
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.fj, ptr align 1 %i.fn, i64 %i.fw, i1 false)
  br i1 %i.h, label %bb.u, label %.thread653

bb.u:                                             ; preds = %bb.t
  %i.fx = load i16, ptr %.2496, align 2, !tbaa !49 ; 2 uses
  %i.fy = zext i16 %i.fx to i32                   ; 2 uses
  %i.fz = sub nsw i32 %i.df, %i.fy                ; 3 uses
  %i.ga = zext i16 %i.fx to i64
  %i.gb = getelementptr inbounds nuw [24 x i8], ptr %.1, i64 %i.ga
  %i.gc = getelementptr inbounds nuw i8, ptr %i.gb, i64 24
  %i.gd = zext i32 %i.fz to i64                   ; 5 uses
  %i.ge = mul nuw nsw i64 %i.gd, 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.gc, ptr align 8 %.1457, i64 %i.ge, i1 false)
  %.not = icmp eq i32 %i.df, %i.fy
  br i1 %.not, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.u
  %xtraiter = and i64 %i.gd, 3                    ; 3 uses
  %i.gf = icmp ult i32 %i.fz, 4
  br i1 %i.gf, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %i.gd, 4294967292
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader.new ], [ %indvars.iv.next.3, %.lr.ph ] ; 5 uses
  %.0458776 = phi i64 [ 0, %.lr.ph.preheader.new ], [ %i.gv, %.lr.ph ]
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.3, %.lr.ph ]
  %i.gg = getelementptr inbounds nuw [24 x i8], ptr %.1457, i64 %indvars.iv
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gg, i64 16
  %i.gi = load i64, ptr %i.gh, align 8, !tbaa !45
  %i.gj = add i64 %i.gi, %.0458776
  %i.gk = getelementptr inbounds nuw [24 x i8], ptr %.1457, i64 %indvars.iv
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gk, i64 40
  %i.gm = load i64, ptr %i.gl, align 8, !tbaa !45
  %i.gn = add i64 %i.gm, %i.gj
  %i.go = getelementptr inbounds nuw [24 x i8], ptr %.1457, i64 %indvars.iv
  %i.gp = getelementptr inbounds nuw i8, ptr %i.go, i64 64
  %i.gq = load i64, ptr %i.gp, align 8, !tbaa !45
  %i.gr = add i64 %i.gq, %i.gn
  %i.gs = getelementptr inbounds nuw [24 x i8], ptr %.1457, i64 %indvars.iv
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gs, i64 88
  %i.gu = load i64, ptr %i.gt, align 8, !tbaa !45
  %i.gv = add i64 %i.gu, %i.gr                    ; 3 uses
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !83

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next.3, %._crit_edge.loopexit.unr-lcssa ]
  %.0458776.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %i.gv, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod854 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod854)
  br label %.lr.ph.epil

.lr.ph.epil:                                      ; preds = %.lr.ph.epil, %.lr.ph.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.next.epil, %.lr.ph.epil ], [ %indvars.iv.epil.init, %.lr.ph.epil.preheader ] ; 2 uses
  %.0458776.epil = phi i64 [ %i.gz, %.lr.ph.epil ], [ %.0458776.epil.init, %.lr.ph.epil.preheader ]
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.epil ], [ 0, %.lr.ph.epil.preheader ]
  %i.gw = getelementptr inbounds nuw [24 x i8], ptr %.1457, i64 %indvars.iv.epil
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gw, i64 16
  %i.gy = load i64, ptr %i.gx, align 8, !tbaa !45
  %i.gz = add i64 %i.gy, %.0458776.epil           ; 2 uses
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %.lr.ph.epil, !llvm.loop !84

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.epil, %bb.u
  %.0458.lcssa = phi i64 [ 0, %bb.u ], [ %i.gv, %._crit_edge.loopexit.unr-lcssa ], [ %i.gz, %.lr.ph.epil ]
  %i.ha = add i64 %.0458.lcssa, %i.gd             ; 4 uses
  %i.hb = sub nsw i64 0, %i.ha                    ; 3 uses
  %i.hc = getelementptr inbounds nuw [24 x i8], ptr %.1457, i64 %i.gd
  %i.hd = load i16, ptr %.2502, align 2, !tbaa !49
  %i.he = zext i16 %i.hd to i32
  %reass.sub = sub nsw i32 %i.he, %i.fz
  %i.hf = add nsw i32 %reass.sub, 1
  %i.hg = zext i32 %i.hf to i64
  %i.hh = mul nuw nsw i64 %i.hg, 24
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %.1457, ptr align 8 %i.hc, i64 %i.hh, i1 false)
  %i.hi = getelementptr inbounds nuw i8, ptr %0, i64 392
  %i.hj = load i8, ptr %i.hi, align 8, !tbaa !46, !range !10, !noundef !11
  %i.hk = trunc nuw i8 %i.hj to i1
  br i1 %i.hk, label %bb.v, label %.thread653

bb.v:                                             ; preds = %._crit_edge
  %i.hl = load i8, ptr @H5B2_init_g, align 1, !tbaa !8, !range !10, !noundef !11
  %i.hm = trunc nuw i8 %i.hl to i1
  %i.hn = load i8, ptr @H5_libterm_g, align 1, !range !10
  %i.ho = trunc nuw i8 %i.hn to i1
  %i.hp = xor i1 %i.ho, true
  %i.hq = select i1 %i.hm, i1 true, i1 %i.hp
  %i.hr = icmp ne i16 %i.fg, 0
  %or.cond.i = and i1 %i.hr, %i.hq
  br i1 %or.cond.i, label %.lr.ph.i, label %.thread653, !prof !55

.lr.ph.i:                                         ; preds = %bb.v
  %i.hs = add nuw nsw i32 %i.ft, 1
  %i.ht = load i16, ptr %.2496, align 2, !tbaa !49
  %i.hu = zext i16 %i.ht to i32                   ; 2 uses
  %i.hv = add nuw nsw i32 %i.hs, %i.hu
  %i.hw = add nuw nsw i32 %i.hu, 1
  %i.hx = add nsw i32 %i.g, -1
  %i.hy = zext nneg i32 %i.hw to i64
  %zext = zext nneg i32 %i.hv to i64
  br label %bb.x

bb.w:                                             ; preds = %bb.x
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.hz = icmp eq i64 %indvars.iv.next.i, %zext
  br i1 %i.hz, label %.thread653, label %bb.x, !llvm.loop !56

bb.x:                                             ; preds = %bb.w, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %i.hy, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.w ] ; 2 uses
  %i.ia = getelementptr inbounds nuw [24 x i8], ptr %.1, i64 %indvars.iv.i
  %i.ib = tail call i32 @H5B2__update_flush_depend(ptr noundef %0, i32 noundef %i.hx, ptr noundef %i.ia, ptr noundef nonnull %.2486, ptr noundef nonnull %.2478)
  %i.ic = icmp slt i32 %i.ib, 0
  br i1 %i.ic, label %bb.y, label %bb.w

.thread653:                                       ; preds = %bb.w, %._crit_edge, %bb.t, %bb.v
  %.0532651 = phi i64 [ %i.hb, %._crit_edge ], [ 0, %bb.t ], [ %i.hb, %bb.v ], [ %i.hb, %bb.w ]
  %.0546649 = phi i64 [ %i.ha, %._crit_edge ], [ 0, %bb.t ], [ %i.ha, %bb.v ], [ %i.ha, %bb.w ]
  %i.id = sub i16 %i.cu, %i.fg
  %.pre = load i16, ptr %.2499, align 2, !tbaa !49 ; 2 uses
  %.pre821 = zext i16 %.pre to i32
  br label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.ie = load i64, ptr @H5E_BTREE_g, align 8, !tbaa !19
  %i.if = load i64, ptr @H5E_CANTUPDATE_g, align 8, !tbaa !19
  %i.ig = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5B2__update_child_flush_depends, i32 noundef 1989, i64 noundef %i.ie, i64 noundef %i.if, ptr noundef nonnull @.str.29) #4 ; 0 uses
  %i.ih = load i64, ptr @H5E_BTREE_g, align 8, !tbaa !19
  %i.ii = load i64, ptr @H5E_CANTUPDATE_g, align 8, !tbaa !19
  %i.ij = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5B2__redistribute3, i32 noundef 849, i64 noundef %i.ih, i64 noundef %i.ii, ptr noundef nonnull @.str.6) #4 ; 0 uses
  br label %.thread715

bb.z:                                             ; preds = %.thread653, %bb.q
  %.pre-phi = phi i32 [ %.pre821, %.thread653 ], [ %i.cy, %bb.q ] ; 3 uses
  %i.ik = phi i16 [ %.pre, %.thread653 ], [ %i.cx, %bb.q ]
  %.1547 = phi i64 [ %.0546649, %.thread653 ], [ 0, %bb.q ] ; 3 uses
  %.1533 = phi i64 [ %.0532651, %.thread653 ], [ 0, %bb.q ] ; 3 uses
  %.1511 = phi i32 [ 2, %.thread653 ], [ 0, %bb.q ] ; 5 uses
  %.1461 = phi i16 [ %i.id, %.thread653 ], [ %i.cu, %bb.q ] ; 3 uses
  %i.il = and i32 %i.dh, 65535                    ; 7 uses
  %i.im = icmp samesign ugt i32 %i.il, %.pre-phi
  br i1 %i.im, label %bb.aa, label %bb.ai

bb.aa:                                            ; preds = %bb.z
  %i.in = sub nuw nsw i32 %i.il, %.pre-phi        ; 7 uses
  %i.io = getelementptr inbounds nuw i8, ptr %0, i64 360 ; 4 uses
  %i.ip = load ptr, ptr %i.io, align 8, !tbaa !36 ; 2 uses
  %i.iq = zext nneg i32 %i.in to i64              ; 6 uses
  %i.ir = getelementptr inbounds nuw [8 x i8], ptr %i.ip, i64 %i.iq
  %i.is = load i64, ptr %i.ir, align 8, !tbaa !19
  %i.it = getelementptr inbounds nuw i8, ptr %.2556, i64 %i.is
  %i.iu = load i64, ptr %i.ip, align 8, !tbaa !19
  %i.iv = getelementptr inbounds nuw i8, ptr %.2556, i64 %i.iu
  %i.iw = getelementptr inbounds nuw i8, ptr %0, i64 424 ; 4 uses
  %i.ix = load ptr, ptr %i.iw, align 8, !tbaa !41
  %i.iy = getelementptr inbounds nuw i8, ptr %i.ix, i64 16
  %i.iz = load i64, ptr %i.iy, align 8, !tbaa !42
  %i.ja = zext i16 %i.ik to i64
  %i.jb = mul i64 %i.iz, %i.ja
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.it, ptr align 1 %i.iv, i64 %i.jb, i1 false)
  %i.jc = load ptr, ptr %i.io, align 8, !tbaa !36 ; 2 uses
  %i.jd = add nsw i32 %i.in, -1
  %i.je = zext i32 %i.jd to i64                   ; 2 uses
  %i.jf = getelementptr inbounds nuw [8 x i8], ptr %i.jc, i64 %i.je
  %i.jg = load i64, ptr %i.jf, align 8, !tbaa !19
  %i.jh = getelementptr inbounds nuw i8, ptr %.2556, i64 %i.jg
  %i.ji = getelementptr inbounds nuw i8, ptr %2, i64 256 ; 2 uses
  %i.jj = load ptr, ptr %i.ji, align 8, !tbaa !35
  %i.jk = zext i32 %4 to i64                      ; 2 uses
  %i.jl = getelementptr inbounds nuw [8 x i8], ptr %i.jc, i64 %i.jk
  %i.jm = load i64, ptr %i.jl, align 8, !tbaa !19
  %i.jn = getelementptr inbounds nuw i8, ptr %i.jj, i64 %i.jm
  %i.jo = load ptr, ptr %i.iw, align 8, !tbaa !41
  %i.jp = getelementptr inbounds nuw i8, ptr %i.jo, i64 16
  %i.jq = load i64, ptr %i.jp, align 8, !tbaa !42
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.jh, ptr align 1 %i.jn, i64 %i.jq, i1 false)
  %i.jr = icmp samesign ugt i32 %i.in, 1
  br i1 %i.jr, label %bb.ab, label %._crit_edge823

._crit_edge823:                                   ; preds = %bb.aa
  %.pre824 = zext i16 %.1461 to i32
  br label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.js = load ptr, ptr %i.io, align 8, !tbaa !36 ; 2 uses
  %i.jt = load i64, ptr %i.js, align 8, !tbaa !19
  %i.ju = getelementptr inbounds nuw i8, ptr %.2556, i64 %i.jt
  %i.jv = zext i16 %.1461 to i32                  ; 2 uses
  %i.jw = add nuw nsw i32 %i.jv, 1
  %i.jx = sub nsw i32 %i.jw, %i.in
  %i.jy = zext i32 %i.jx to i64
  %i.jz = getelementptr inbounds nuw [8 x i8], ptr %i.js, i64 %i.jy
  %i.ka = load i64, ptr %i.jz, align 8, !tbaa !19
  %i.kb = getelementptr inbounds nuw i8, ptr %.2553, i64 %i.ka
  %i.kc = load ptr, ptr %i.iw, align 8, !tbaa !41
  %i.kd = getelementptr inbounds nuw i8, ptr %i.kc, i64 16
  %i.ke = load i64, ptr %i.kd, align 8, !tbaa !42
  %i.kf = mul i64 %i.ke, %i.je
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ju, ptr align 1 %i.kb, i64 %i.kf, i1 false)
  br label %bb.ac

bb.ac:                                            ; preds = %._crit_edge823, %bb.ab
  %.pre-phi825 = phi i32 [ %.pre824, %._crit_edge823 ], [ %i.jv, %bb.ab ]
  %i.kg = load ptr, ptr %i.ji, align 8, !tbaa !35
  %i.kh = load ptr, ptr %i.io, align 8, !tbaa !36 ; 2 uses
  %i.ki = getelementptr inbounds nuw [8 x i8], ptr %i.kh, i64 %i.jk
  %i.kj = load i64, ptr %i.ki, align 8, !tbaa !19
  %i.kk = getelementptr inbounds nuw i8, ptr %i.kg, i64 %i.kj
  %i.kl = sub nsw i32 %.pre-phi825, %i.in         ; 3 uses
  %i.km = zext i32 %i.kl to i64
  %i.kn = getelementptr inbounds nuw [8 x i8], ptr %i.kh, i64 %i.km
  %i.ko = load i64, ptr %i.kn, align 8, !tbaa !19
  %i.kp = getelementptr inbounds nuw i8, ptr %.2553, i64 %i.ko
  %i.kq = load ptr, ptr %i.iw, align 8, !tbaa !41
  %i.kr = getelementptr inbounds nuw i8, ptr %i.kq, i64 16
  %i.ks = load i64, ptr %i.kr, align 8, !tbaa !42
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.kk, ptr align 1 %i.kp, i64 %i.ks, i1 false)
  br i1 %i.h, label %bb.ad, label %.thread670

bb.ad:                                            ; preds = %bb.ac
  %i.kt = getelementptr inbounds nuw [24 x i8], ptr %.1454, i64 %i.iq
  %i.ku = load i16, ptr %.2499, align 2, !tbaa !49
  %i.kv = zext i16 %i.ku to i64
  %i.kw = mul nuw nsw i64 %i.kv, 24
  %i.kx = add nuw nsw i64 %i.kw, 24
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.kt, ptr noundef nonnull align 8 dereferenceable(1) %.1454, i64 %i.kx, i1 false)
  %i.ky = add nsw i32 %i.kl, 1
  %i.kz = zext i32 %i.ky to i64
  %i.la = getelementptr inbounds nuw [24 x i8], ptr %.1457, i64 %i.kz
  %i.lb = mul nuw nsw i64 %i.iq, 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.1454, ptr align 8 %i.la, i64 %i.lb, i1 false)
  %.not796 = icmp eq i32 %i.il, %.pre-phi
  br i1 %.not796, label %._crit_edge782, label %.lr.ph781.preheader

.lr.ph781.preheader:                              ; preds = %bb.ad
  %xtraiter855 = and i64 %i.iq, 3                 ; 3 uses
  %i.lc = icmp samesign ult i32 %i.in, 4
  br i1 %i.lc, label %.lr.ph781.epil.preheader, label %.lr.ph781.preheader.new

.lr.ph781.preheader.new:                          ; preds = %.lr.ph781.preheader
  %unroll_iter860 = and i64 %i.iq, 65532
  br label %.lr.ph781

.lr.ph781:                                        ; preds = %.lr.ph781, %.lr.ph781.preheader.new
  %indvars.iv803 = phi i64 [ 0, %.lr.ph781.preheader.new ], [ %indvars.iv.next804.3, %.lr.ph781 ] ; 5 uses
  %.0452778 = phi i64 [ 0, %.lr.ph781.preheader.new ], [ %i.ls, %.lr.ph781 ]
  %niter861 = phi i64 [ 0, %.lr.ph781.preheader.new ], [ %niter861.next.3, %.lr.ph781 ]
  %i.ld = getelementptr inbounds nuw [24 x i8], ptr %.1454, i64 %indvars.iv803
  %i.le = getelementptr inbounds nuw i8, ptr %i.ld, i64 16
  %i.lf = load i64, ptr %i.le, align 8, !tbaa !45
  %i.lg = add i64 %i.lf, %.0452778
  %i.lh = getelementptr inbounds nuw [24 x i8], ptr %.1454, i64 %indvars.iv803
  %i.li = getelementptr inbounds nuw i8, ptr %i.lh, i64 40
  %i.lj = load i64, ptr %i.li, align 8, !tbaa !45
  %i.lk = add i64 %i.lj, %i.lg
  %i.ll = getelementptr inbounds nuw [24 x i8], ptr %.1454, i64 %indvars.iv803
  %i.lm = getelementptr inbounds nuw i8, ptr %i.ll, i64 64
  %i.ln = load i64, ptr %i.lm, align 8, !tbaa !45
  %i.lo = add i64 %i.ln, %i.lk
  %i.lp = getelementptr inbounds nuw [24 x i8], ptr %.1454, i64 %indvars.iv803
  %i.lq = getelementptr inbounds nuw i8, ptr %i.lp, i64 88
  %i.lr = load i64, ptr %i.lq, align 8, !tbaa !45
  %i.ls = add i64 %i.lr, %i.lo                    ; 3 uses
  %indvars.iv.next804.3 = add nuw nsw i64 %indvars.iv803, 4 ; 2 uses
  %niter861.next.3 = add i64 %niter861, 4         ; 2 uses
  %niter861.ncmp.3 = icmp eq i64 %niter861.next.3, %unroll_iter860
  br i1 %niter861.ncmp.3, label %._crit_edge782.loopexit.unr-lcssa, label %.lr.ph781, !llvm.loop !85

._crit_edge782.loopexit.unr-lcssa:                ; preds = %.lr.ph781
  %lcmp.mod857.not = icmp eq i64 %xtraiter855, 0
  br i1 %lcmp.mod857.not, label %._crit_edge782, label %.lr.ph781.epil.preheader

.lr.ph781.epil.preheader:                         ; preds = %._crit_edge782.loopexit.unr-lcssa, %.lr.ph781.preheader
  %indvars.iv803.epil.init = phi i64 [ 0, %.lr.ph781.preheader ], [ %indvars.iv.next804.3, %._crit_edge782.loopexit.unr-lcssa ]
  %.0452778.epil.init = phi i64 [ 0, %.lr.ph781.preheader ], [ %i.ls, %._crit_edge782.loopexit.unr-lcssa ]
  %lcmp.mod859 = icmp ne i64 %xtraiter855, 0
  tail call void @llvm.assume(i1 %lcmp.mod859)
  br label %.lr.ph781.epil

.lr.ph781.epil:                                   ; preds = %.lr.ph781.epil, %.lr.ph781.epil.preheader
  %indvars.iv803.epil = phi i64 [ %indvars.iv.next804.epil, %.lr.ph781.epil ], [ %indvars.iv803.epil.init, %.lr.ph781.epil.preheader ] ; 2 uses
  %.0452778.epil = phi i64 [ %i.lw, %.lr.ph781.epil ], [ %.0452778.epil.init, %.lr.ph781.epil.preheader ]
  %epil.iter856 = phi i64 [ %epil.iter856.next, %.lr.ph781.epil ], [ 0, %.lr.ph781.epil.preheader ]
  %i.lt = getelementptr inbounds nuw [24 x i8], ptr %.1454, i64 %indvars.iv803.epil
  %i.lu = getelementptr inbounds nuw i8, ptr %i.lt, i64 16
  %i.lv = load i64, ptr %i.lu, align 8, !tbaa !45
  %i.lw = add i64 %i.lv, %.0452778.epil           ; 2 uses
  %indvars.iv.next804.epil = add nuw nsw i64 %indvars.iv803.epil, 1
  %epil.iter856.next = add i64 %epil.iter856, 1   ; 2 uses
  %epil.iter856.cmp.not = icmp eq i64 %epil.iter856.next, %xtraiter855
  br i1 %epil.iter856.cmp.not, label %._crit_edge782, label %.lr.ph781.epil, !llvm.loop !86

._crit_edge782:                                   ; preds = %._crit_edge782.loopexit.unr-lcssa, %.lr.ph781.epil, %bb.ad
  %.0452.lcssa = phi i64 [ 0, %bb.ad ], [ %i.ls, %._crit_edge782.loopexit.unr-lcssa ], [ %i.lw, %.lr.ph781.epil ]
  %i.lx = add i64 %.0452.lcssa, %i.iq             ; 4 uses
  %i.ly = sub nsw i64 %.1533, %i.lx               ; 3 uses
  %i.lz = getelementptr inbounds nuw i8, ptr %0, i64 392
  %i.ma = load i8, ptr %i.lz, align 8, !tbaa !46, !range !10, !noundef !11
  %i.mb = trunc nuw i8 %i.ma to i1
  br i1 %i.mb, label %bb.ae, label %.thread670

bb.ae:                                            ; preds = %._crit_edge782
  %i.mc = load i8, ptr @H5B2_init_g, align 1, !tbaa !8, !range !10, !noundef !11
  %i.md = trunc nuw i8 %i.mc to i1
  %i.me = load i8, ptr @H5_libterm_g, align 1, !range !10
  %i.mf = trunc nuw i8 %i.me to i1
  %i.mg = xor i1 %i.mf, true
  %i.mh = select i1 %i.md, i1 true, i1 %i.mg
  br i1 %i.mh, label %.lr.ph.i589, label %.thread670, !prof !55

.lr.ph.i589:                                      ; preds = %bb.ae
  %i.mi = add nsw i32 %i.g, -1
  br label %bb.ag

bb.af:                                            ; preds = %bb.ag
  %indvars.iv.next.i591 = add nuw nsw i64 %indvars.iv.i590, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next.i591 to i32
  %exitcond808 = icmp eq i32 %i.in, %lftr.wideiv
  br i1 %exitcond808, label %.thread670, label %bb.ag, !llvm.loop !56

bb.ag:                                            ; preds = %bb.af, %.lr.ph.i589
  %indvars.iv.i590 = phi i64 [ 0, %.lr.ph.i589 ], [ %indvars.iv.next.i591, %bb.af ] ; 2 uses
  %i.mj = getelementptr inbounds nuw [24 x i8], ptr %.1454, i64 %indvars.iv.i590
  %i.mk = tail call i32 @H5B2__update_flush_depend(ptr noundef %0, i32 noundef %i.mi, ptr noundef nonnull %i.mj, ptr noundef nonnull %.2486, ptr noundef nonnull %.2482)
  %i.ml = icmp slt i32 %i.mk, 0
  br i1 %i.ml, label %bb.ah, label %bb.af

.thread670:                                       ; preds = %bb.af, %._crit_edge782, %bb.ac, %bb.ae
  %.2534668 = phi i64 [ %i.ly, %._crit_edge782 ], [ %.1533, %bb.ac ], [ %i.ly, %bb.ae ], [ %i.ly, %bb.af ]
  %.0541666 = phi i64 [ %i.lx, %._crit_edge782 ], [ 0, %bb.ac ], [ %i.lx, %bb.ae ], [ %i.lx, %bb.af ]
  %i.mm = trunc i32 %i.kl to i16
  br label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  %i.mn = load i64, ptr @H5E_BTREE_g, align 8, !tbaa !19
  %i.mo = load i64, ptr @H5E_CANTUPDATE_g, align 8, !tbaa !19
  %i.mp = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5B2__update_child_flush_depends, i32 noundef 1989, i64 noundef %i.mn, i64 noundef %i.mo, ptr noundef nonnull @.str.29) #4 ; 0 uses
  %i.mq = load i64, ptr @H5E_BTREE_g, align 8, !tbaa !19
  %i.mr = load i64, ptr @H5E_CANTUPDATE_g, align 8, !tbaa !19
  %i.ms = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5B2__redistribute3, i32 noundef 910, i64 noundef %i.mq, i64 noundef %i.mr, ptr noundef nonnull @.str.6) #4 ; 0 uses
  br label %.thread715

bb.ai:                                            ; preds = %.thread670, %bb.z
  %.1542 = phi i64 [ %.0541666, %.thread670 ], [ 0, %bb.z ] ; 3 uses
  %.3535 = phi i64 [ %.2534668, %.thread670 ], [ %.1533, %bb.z ] ; 3 uses
  %.1521 = phi i32 [ 2, %.thread670 ], [ 0, %bb.z ] ; 3 uses
  %.3513 = phi i32 [ 2, %.thread670 ], [ %.1511, %bb.z ] ; 2 uses
  %.3 = phi i16 [ %i.mm, %.thread670 ], [ %.1461, %bb.z ] ; 3 uses
  %i.mt = load i16, ptr %.2496, align 2, !tbaa !49
  %i.mu = zext i16 %i.mt to i32                   ; 3 uses
  %i.mv = icmp samesign ult i32 %i.df, %i.mu
  br i1 %i.mv, label %bb.aj, label %bb.ar

bb.aj:                                            ; preds = %bb.ai
  %i.mw = sub nuw nsw i32 %i.mu, %i.df            ; 6 uses
  %i.mx = getelementptr inbounds nuw i8, ptr %0, i64 360 ; 4 uses
  %i.my = load ptr, ptr %i.mx, align 8, !tbaa !36 ; 2 uses
  %i.mz = zext nneg i32 %i.mw to i64              ; 6 uses
  %i.na = getelementptr inbounds nuw [8 x i8], ptr %i.my, i64 %i.mz
  %i.nb = load i64, ptr %i.na, align 8, !tbaa !19
  %i.nc = getelementptr inbounds nuw i8, ptr %.2553, i64 %i.nb
  %i.nd = load i64, ptr %i.my, align 8, !tbaa !19
  %i.ne = getelementptr inbounds nuw i8, ptr %.2553, i64 %i.nd
  %i.nf = getelementptr inbounds nuw i8, ptr %0, i64 424 ; 4 uses
  %i.ng = load ptr, ptr %i.nf, align 8, !tbaa !41
  %i.nh = getelementptr inbounds nuw i8, ptr %i.ng, i64 16
  %i.ni = load i64, ptr %i.nh, align 8, !tbaa !42
  %i.nj = zext i16 %.3 to i64                     ; 2 uses
  %i.nk = mul i64 %i.ni, %i.nj
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.nc, ptr align 1 %i.ne, i64 %i.nk, i1 false)
  %i.nl = load ptr, ptr %i.mx, align 8, !tbaa !36 ; 2 uses
  %i.nm = add nsw i32 %i.mw, -1
  %i.nn = zext i32 %i.nm to i64                   ; 2 uses
  %i.no = getelementptr inbounds nuw [8 x i8], ptr %i.nl, i64 %i.nn
  %i.np = load i64, ptr %i.no, align 8, !tbaa !19
  %i.nq = getelementptr inbounds nuw i8, ptr %.2553, i64 %i.np
  %i.nr = getelementptr inbounds nuw i8, ptr %2, i64 256 ; 2 uses
  %i.ns = load ptr, ptr %i.nr, align 8, !tbaa !35
  %i.nt = add i32 %4, -1
  %i.nu = zext i32 %i.nt to i64                   ; 2 uses
  %i.nv = getelementptr inbounds nuw [8 x i8], ptr %i.nl, i64 %i.nu
  %i.nw = load i64, ptr %i.nv, align 8, !tbaa !19
  %i.nx = getelementptr inbounds nuw i8, ptr %i.ns, i64 %i.nw
  %i.ny = load ptr, ptr %i.nf, align 8, !tbaa !41
  %i.nz = getelementptr inbounds nuw i8, ptr %i.ny, i64 16
  %i.oa = load i64, ptr %i.nz, align 8, !tbaa !42
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.nq, ptr align 1 %i.nx, i64 %i.oa, i1 false)
  %i.ob = icmp samesign ugt i32 %i.mw, 1
  br i1 %i.ob, label %bb.ak, label %._crit_edge822

._crit_edge822:                                   ; preds = %bb.aj
  %.pre826 = zext nneg i32 %i.df to i64
  br label %bb.al

bb.ak:                                            ; preds = %bb.aj
  %i.oc = load ptr, ptr %i.mx, align 8, !tbaa !36 ; 2 uses
  %i.od = load i64, ptr %i.oc, align 8, !tbaa !19
  %i.oe = getelementptr inbounds nuw i8, ptr %.2553, i64 %i.od
  %i.of = zext nneg i32 %i.df to i64              ; 2 uses
  %i.og = getelementptr inbounds nuw [8 x i8], ptr %i.oc, i64 %i.of
  %i.oh = getelementptr inbounds nuw i8, ptr %i.og, i64 8
  %i.oi = load i64, ptr %i.oh, align 8, !tbaa !19
  %i.oj = getelementptr inbounds nuw i8, ptr %.2559, i64 %i.oi
  %i.ok = load ptr, ptr %i.nf, align 8, !tbaa !41
  %i.ol = getelementptr inbounds nuw i8, ptr %i.ok, i64 16
  %i.om = load i64, ptr %i.ol, align 8, !tbaa !42
  %i.on = mul i64 %i.om, %i.nn
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.oe, ptr align 1 %i.oj, i64 %i.on, i1 false)
  br label %bb.al

bb.al:                                            ; preds = %._crit_edge822, %bb.ak
  %.pre-phi827 = phi i64 [ %.pre826, %._crit_edge822 ], [ %i.of, %bb.ak ] ; 2 uses
  %i.oo = load ptr, ptr %i.nr, align 8, !tbaa !35
  %i.op = load ptr, ptr %i.mx, align 8, !tbaa !36 ; 2 uses
  %i.oq = getelementptr inbounds nuw [8 x i8], ptr %i.op, i64 %i.nu
  %i.or = load i64, ptr %i.oq, align 8, !tbaa !19
  %i.os = getelementptr inbounds nuw i8, ptr %i.oo, i64 %i.or
  %i.ot = getelementptr inbounds nuw [8 x i8], ptr %i.op, i64 %.pre-phi827
  %i.ou = load i64, ptr %i.ot, align 8, !tbaa !19
  %i.ov = getelementptr inbounds nuw i8, ptr %.2559, i64 %i.ou
  %i.ow = load ptr, ptr %i.nf, align 8, !tbaa !41
  %i.ox = getelementptr inbounds nuw i8, ptr %i.ow, i64 16
  %i.oy = load i64, ptr %i.ox, align 8, !tbaa !42
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.os, ptr align 1 %i.ov, i64 %i.oy, i1 false)
  br i1 %i.h, label %bb.am, label %.thread688

bb.am:                                            ; preds = %bb.al
  %i.oz = getelementptr inbounds nuw [24 x i8], ptr %.1457, i64 %i.mz
  %i.pa = mul nuw nsw i64 %i.nj, 24
  %i.pb = add nuw nsw i64 %i.pa, 24
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.oz, ptr noundef nonnull align 8 dereferenceable(1) %.1457, i64 %i.pb, i1 false)
  %i.pc = getelementptr inbounds nuw [24 x i8], ptr %.1, i64 %.pre-phi827
  %i.pd = getelementptr inbounds nuw i8, ptr %i.pc, i64 24
  %i.pe = mul nuw nsw i64 %i.mz, 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.1457, ptr nonnull align 8 %i.pd, i64 %i.pe, i1 false)
  %.not797 = icmp eq i32 %i.df, %i.mu
  br i1 %.not797, label %._crit_edge788, label %.lr.ph787.preheader

.lr.ph787.preheader:                              ; preds = %bb.am
  %xtraiter862 = and i64 %i.mz, 3                 ; 3 uses
  %i.pf = icmp samesign ult i32 %i.mw, 4
  br i1 %i.pf, label %.lr.ph787.epil.preheader, label %.lr.ph787.preheader.new

.lr.ph787.preheader.new:                          ; preds = %.lr.ph787.preheader
  %unroll_iter867 = and i64 %i.mz, 65532
  br label %.lr.ph787

.lr.ph787:                                        ; preds = %.lr.ph787, %.lr.ph787.preheader.new
  %indvars.iv809 = phi i64 [ 0, %.lr.ph787.preheader.new ], [ %indvars.iv.next810.3, %.lr.ph787 ] ; 5 uses
  %.0449784 = phi i64 [ 0, %.lr.ph787.preheader.new ], [ %i.pv, %.lr.ph787 ]
  %niter868 = phi i64 [ 0, %.lr.ph787.preheader.new ], [ %niter868.next.3, %.lr.ph787 ]
  %i.pg = getelementptr inbounds nuw [24 x i8], ptr %.1457, i64 %indvars.iv809
  %i.ph = getelementptr inbounds nuw i8, ptr %i.pg, i64 16
  %i.pi = load i64, ptr %i.ph, align 8, !tbaa !45
  %i.pj = add i64 %i.pi, %.0449784
  %i.pk = getelementptr inbounds nuw [24 x i8], ptr %.1457, i64 %indvars.iv809
  %i.pl = getelementptr inbounds nuw i8, ptr %i.pk, i64 40
  %i.pm = load i64, ptr %i.pl, align 8, !tbaa !45
  %i.pn = add i64 %i.pm, %i.pj
  %i.po = getelementptr inbounds nuw [24 x i8], ptr %.1457, i64 %indvars.iv809
  %i.pp = getelementptr inbounds nuw i8, ptr %i.po, i64 64
  %i.pq = load i64, ptr %i.pp, align 8, !tbaa !45
  %i.pr = add i64 %i.pq, %i.pn
  %i.ps = getelementptr inbounds nuw [24 x i8], ptr %.1457, i64 %indvars.iv809
  %i.pt = getelementptr inbounds nuw i8, ptr %i.ps, i64 88
  %i.pu = load i64, ptr %i.pt, align 8, !tbaa !45
  %i.pv = add i64 %i.pu, %i.pr                    ; 3 uses
  %indvars.iv.next810.3 = add nuw nsw i64 %indvars.iv809, 4 ; 2 uses
  %niter868.next.3 = add i64 %niter868, 4         ; 2 uses
  %niter868.ncmp.3 = icmp eq i64 %niter868.next.3, %unroll_iter867
  br i1 %niter868.ncmp.3, label %._crit_edge788.loopexit.unr-lcssa, label %.lr.ph787, !llvm.loop !87

._crit_edge788.loopexit.unr-lcssa:                ; preds = %.lr.ph787
  %lcmp.mod864.not = icmp eq i64 %xtraiter862, 0
  br i1 %lcmp.mod864.not, label %._crit_edge788, label %.lr.ph787.epil.preheader

.lr.ph787.epil.preheader:                         ; preds = %._crit_edge788.loopexit.unr-lcssa, %.lr.ph787.preheader
  %indvars.iv809.epil.init = phi i64 [ 0, %.lr.ph787.preheader ], [ %indvars.iv.next810.3, %._crit_edge788.loopexit.unr-lcssa ]
  %.0449784.epil.init = phi i64 [ 0, %.lr.ph787.preheader ], [ %i.pv, %._crit_edge788.loopexit.unr-lcssa ]
  %lcmp.mod866 = icmp ne i64 %xtraiter862, 0
  tail call void @llvm.assume(i1 %lcmp.mod866)
  br label %.lr.ph787.epil

.lr.ph787.epil:                                   ; preds = %.lr.ph787.epil, %.lr.ph787.epil.preheader
  %indvars.iv809.epil = phi i64 [ %indvars.iv.next810.epil, %.lr.ph787.epil ], [ %indvars.iv809.epil.init, %.lr.ph787.epil.preheader ] ; 2 uses
  %.0449784.epil = phi i64 [ %i.pz, %.lr.ph787.epil ], [ %.0449784.epil.init, %.lr.ph787.epil.preheader ]
  %epil.iter863 = phi i64 [ %epil.iter863.next, %.lr.ph787.epil ], [ 0, %.lr.ph787.epil.preheader ]
  %i.pw = getelementptr inbounds nuw [24 x i8], ptr %.1457, i64 %indvars.iv809.epil
  %i.px = getelementptr inbounds nuw i8, ptr %i.pw, i64 16
  %i.py = load i64, ptr %i.px, align 8, !tbaa !45
  %i.pz = add i64 %i.py, %.0449784.epil           ; 2 uses
  %indvars.iv.next810.epil = add nuw nsw i64 %indvars.iv809.epil, 1
  %epil.iter863.next = add i64 %epil.iter863, 1   ; 2 uses
  %epil.iter863.cmp.not = icmp eq i64 %epil.iter863.next, %xtraiter862
  br i1 %epil.iter863.cmp.not, label %._crit_edge788, label %.lr.ph787.epil, !llvm.loop !88

._crit_edge788:                                   ; preds = %._crit_edge788.loopexit.unr-lcssa, %.lr.ph787.epil, %bb.am
  %.0449.lcssa = phi i64 [ 0, %bb.am ], [ %i.pv, %._crit_edge788.loopexit.unr-lcssa ], [ %i.pz, %.lr.ph787.epil ]
  %i.qa = add i64 %.0449.lcssa, %i.mz             ; 2 uses
  %i.qb = sub nsw i64 %.1547, %i.qa               ; 3 uses
  %i.qc = add nsw i64 %i.qa, %.3535               ; 3 uses
  %i.qd = getelementptr inbounds nuw i8, ptr %0, i64 392
  %i.qe = load i8, ptr %i.qd, align 8, !tbaa !46, !range !10, !noundef !11
  %i.qf = trunc nuw i8 %i.qe to i1
  br i1 %i.qf, label %bb.an, label %.thread688

bb.an:                                            ; preds = %._crit_edge788
  %i.qg = load i8, ptr @H5B2_init_g, align 1, !tbaa !8, !range !10, !noundef !11
  %i.qh = trunc nuw i8 %i.qg to i1
  %i.qi = load i8, ptr @H5_libterm_g, align 1, !range !10
  %i.qj = trunc nuw i8 %i.qi to i1
  %i.qk = xor i1 %i.qj, true
  %i.ql = select i1 %i.qh, i1 true, i1 %i.qk
  br i1 %i.ql, label %.lr.ph.i597, label %.thread688, !prof !55

.lr.ph.i597:                                      ; preds = %bb.an
  %i.qm = add nsw i32 %i.g, -1
  br label %bb.ap

bb.ao:                                            ; preds = %bb.ap
  %indvars.iv.next.i599 = add nuw nsw i64 %indvars.iv.i598, 1 ; 2 uses
  %lftr.wideiv814 = trunc i64 %indvars.iv.next.i599 to i32
  %exitcond815 = icmp eq i32 %i.mw, %lftr.wideiv814
  br i1 %exitcond815, label %.thread688, label %bb.ap, !llvm.loop !56

bb.ap:                                            ; preds = %bb.ao, %.lr.ph.i597
  %indvars.iv.i598 = phi i64 [ 0, %.lr.ph.i597 ], [ %indvars.iv.next.i599, %bb.ao ] ; 2 uses
  %i.qn = getelementptr inbounds nuw [24 x i8], ptr %.1457, i64 %indvars.iv.i598
  %i.qo = tail call i32 @H5B2__update_flush_depend(ptr noundef %0, i32 noundef %i.qm, ptr noundef nonnull %i.qn, ptr noundef nonnull %.2478, ptr noundef nonnull %.2486)
  %i.qp = icmp slt i32 %i.qo, 0
  br i1 %i.qp, label %bb.aq, label %bb.ao

.thread688:                                       ; preds = %bb.ao, %._crit_edge788, %bb.al, %bb.an
  %.4536686 = phi i64 [ %i.qc, %._crit_edge788 ], [ %.3535, %bb.al ], [ %i.qc, %bb.an ], [ %i.qc, %bb.ao ]
  %.2548684 = phi i64 [ %i.qb, %._crit_edge788 ], [ %.1547, %bb.al ], [ %i.qb, %bb.an ], [ %i.qb, %bb.ao ]
  %i.qq = trunc nuw i32 %i.mw to i16
  %i.qr = add i16 %.3, %i.qq
  br label %bb.ar

bb.aq:                                            ; preds = %bb.ap
  %i.qs = load i64, ptr @H5E_BTREE_g, align 8, !tbaa !19
  %i.qt = load i64, ptr @H5E_CANTUPDATE_g, align 8, !tbaa !19
  %i.qu = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5B2__update_child_flush_depends, i32 noundef 1989, i64 noundef %i.qs, i64 noundef %i.qt, ptr noundef nonnull @.str.29) #4 ; 0 uses
  %i.qv = load i64, ptr @H5E_BTREE_g, align 8, !tbaa !19
  %i.qw = load i64, ptr @H5E_CANTUPDATE_g, align 8, !tbaa !19
  %i.qx = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5B2__redistribute3, i32 noundef 968, i64 noundef %i.qv, i64 noundef %i.qw, ptr noundef nonnull @.str.6) #4 ; 0 uses
  br label %.thread715

bb.ar:                                            ; preds = %.thread688, %bb.ai
  %.3549 = phi i64 [ %.2548684, %.thread688 ], [ %.1547, %bb.ai ]
  %.5537 = phi i64 [ %.4536686, %.thread688 ], [ %.3535, %bb.ai ] ; 3 uses
  %.3529 = phi i32 [ 2, %.thread688 ], [ %.1511, %bb.ai ] ; 2 uses
  %.5515 = phi i32 [ 2, %.thread688 ], [ %.3513, %bb.ai ] ; 2 uses
  %.5 = phi i16 [ %i.qr, %.thread688 ], [ %.3, %bb.ai ] ; 2 uses
  %i.qy = load i16, ptr %.2499, align 2, !tbaa !49
  %i.qz = zext i16 %i.qy to i32                   ; 2 uses
  %i.ra = icmp samesign ult i32 %i.il, %i.qz
  br i1 %i.ra, label %bb.as, label %..thread706_crit_edge

..thread706_crit_edge:                            ; preds = %bb.ar
  %.pre828 = zext i32 %4 to i64
  br label %.thread706

bb.as:                                            ; preds = %bb.ar
  %i.rb = sub nuw nsw i32 %i.qz, %i.il            ; 4 uses
  %i.rc = getelementptr inbounds nuw i8, ptr %0, i64 360 ; 4 uses
  %i.rd = load ptr, ptr %i.rc, align 8, !tbaa !36 ; 2 uses
  %i.re = zext i16 %.5 to i64
  %i.rf = getelementptr inbounds nuw [8 x i8], ptr %i.rd, i64 %i.re
  %i.rg = load i64, ptr %i.rf, align 8, !tbaa !19
  %i.rh = getelementptr inbounds nuw i8, ptr %.2553, i64 %i.rg
  %i.ri = getelementptr inbounds nuw i8, ptr %2, i64 256 ; 2 uses
  %i.rj = load ptr, ptr %i.ri, align 8, !tbaa !35
  %i.rk = zext i32 %4 to i64                      ; 6 uses
  %i.rl = getelementptr inbounds nuw [8 x i8], ptr %i.rd, i64 %i.rk
  %i.rm = load i64, ptr %i.rl, align 8, !tbaa !19
  %i.rn = getelementptr inbounds nuw i8, ptr %i.rj, i64 %i.rm
  %i.ro = getelementptr inbounds nuw i8, ptr %0, i64 424 ; 4 uses
  %i.rp = load ptr, ptr %i.ro, align 8, !tbaa !41
  %i.rq = getelementptr inbounds nuw i8, ptr %i.rp, i64 16
  %i.rr = load i64, ptr %i.rq, align 8, !tbaa !42
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.rh, ptr align 1 %i.rn, i64 %i.rr, i1 false)
  %i.rs = load ptr, ptr %i.rc, align 8, !tbaa !36 ; 2 uses
  %i.rt = zext i16 %.5 to i32
  %i.ru = add nuw nsw i32 %i.rt, 1                ; 2 uses
  %i.rv = zext nneg i32 %i.ru to i64              ; 3 uses
  %i.rw = getelementptr inbounds nuw [8 x i8], ptr %i.rs, i64 %i.rv
  %i.rx = load i64, ptr %i.rw, align 8, !tbaa !19
  %i.ry = getelementptr inbounds nuw i8, ptr %.2553, i64 %i.rx
  %i.rz = load i64, ptr %i.rs, align 8, !tbaa !19
  %i.sa = getelementptr inbounds nuw i8, ptr %.2556, i64 %i.rz
  %i.sb = load ptr, ptr %i.ro, align 8, !tbaa !41
  %i.sc = getelementptr inbounds nuw i8, ptr %i.sb, i64 16
  %i.sd = load i64, ptr %i.sc, align 8, !tbaa !42
  %i.se = add nsw i32 %i.rb, -1
  %i.sf = zext i32 %i.se to i64                   ; 2 uses
  %i.sg = mul i64 %i.sd, %i.sf
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.ry, ptr align 1 %i.sa, i64 %i.sg, i1 false)
  %i.sh = load ptr, ptr %i.ri, align 8, !tbaa !35
  %i.si = load ptr, ptr %i.rc, align 8, !tbaa !36 ; 2 uses
  %i.sj = getelementptr inbounds nuw [8 x i8], ptr %i.si, i64 %i.rk
  %i.sk = load i64, ptr %i.sj, align 8, !tbaa !19
  %i.sl = getelementptr inbounds nuw i8, ptr %i.sh, i64 %i.sk
  %i.sm = getelementptr inbounds nuw [8 x i8], ptr %i.si, i64 %i.sf
  %i.sn = load i64, ptr %i.sm, align 8, !tbaa !19
  %i.so = getelementptr inbounds nuw i8, ptr %.2556, i64 %i.sn
  %i.sp = load ptr, ptr %i.ro, align 8, !tbaa !41
  %i.sq = getelementptr inbounds nuw i8, ptr %i.sp, i64 16
  %i.sr = load i64, ptr %i.sq, align 8, !tbaa !42
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.sl, ptr align 1 %i.so, i64 %i.sr, i1 false)
  %i.ss = load ptr, ptr %i.rc, align 8, !tbaa !36 ; 2 uses
  %i.st = load i64, ptr %i.ss, align 8, !tbaa !19
  %i.su = getelementptr inbounds nuw i8, ptr %.2556, i64 %i.st
  %i.sv = zext nneg i32 %i.rb to i64              ; 6 uses
  %i.sw = getelementptr inbounds nuw [8 x i8], ptr %i.ss, i64 %i.sv
  %i.sx = load i64, ptr %i.sw, align 8, !tbaa !19
  %i.sy = getelementptr inbounds nuw i8, ptr %.2556, i64 %i.sx
  %i.sz = load ptr, ptr %i.ro, align 8, !tbaa !41
  %i.ta = getelementptr inbounds nuw i8, ptr %i.sz, i64 16
  %i.tb = load i64, ptr %i.ta, align 8, !tbaa !42
  %i.tc = zext nneg i32 %i.il to i64
  %i.td = mul i64 %i.tb, %i.tc
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.su, ptr align 1 %i.sy, i64 %i.td, i1 false)
  br i1 %i.h, label %.lr.ph793.preheader, label %.thread706

.lr.ph793.preheader:                              ; preds = %bb.as
  %i.te = getelementptr inbounds nuw [24 x i8], ptr %.1457, i64 %i.rv
  %i.tf = mul nuw nsw i64 %i.sv, 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.te, ptr align 8 %.1454, i64 %i.tf, i1 false)
  %xtraiter869 = and i64 %i.sv, 3                 ; 3 uses
  %i.tg = add nsw i32 %i.rb, -1
  %i.th = icmp ult i32 %i.tg, 3
  br i1 %i.th, label %.lr.ph793.epil.preheader, label %.lr.ph793.preheader.new

.lr.ph793.preheader.new:                          ; preds = %.lr.ph793.preheader
  %unroll_iter874 = and i64 %i.sv, 65532
  br label %.lr.ph793

.lr.ph793:                                        ; preds = %.lr.ph793, %.lr.ph793.preheader.new
  %indvars.iv816 = phi i64 [ 0, %.lr.ph793.preheader.new ], [ %indvars.iv.next817.3, %.lr.ph793 ] ; 5 uses
  %.0446790 = phi i64 [ 0, %.lr.ph793.preheader.new ], [ %i.tx, %.lr.ph793 ]
  %niter875 = phi i64 [ 0, %.lr.ph793.preheader.new ], [ %niter875.next.3, %.lr.ph793 ]
  %i.ti = getelementptr inbounds nuw [24 x i8], ptr %.1454, i64 %indvars.iv816
  %i.tj = getelementptr inbounds nuw i8, ptr %i.ti, i64 16
  %i.tk = load i64, ptr %i.tj, align 8, !tbaa !45
  %i.tl = add i64 %i.tk, %.0446790
  %i.tm = getelementptr inbounds nuw [24 x i8], ptr %.1454, i64 %indvars.iv816
  %i.tn = getelementptr inbounds nuw i8, ptr %i.tm, i64 40
  %i.to = load i64, ptr %i.tn, align 8, !tbaa !45
  %i.tp = add i64 %i.to, %i.tl
  %i.tq = getelementptr inbounds nuw [24 x i8], ptr %.1454, i64 %indvars.iv816
  %i.tr = getelementptr inbounds nuw i8, ptr %i.tq, i64 64
  %i.ts = load i64, ptr %i.tr, align 8, !tbaa !45
  %i.tt = add i64 %i.ts, %i.tp
  %i.tu = getelementptr inbounds nuw [24 x i8], ptr %.1454, i64 %indvars.iv816
  %i.tv = getelementptr inbounds nuw i8, ptr %i.tu, i64 88
  %i.tw = load i64, ptr %i.tv, align 8, !tbaa !45
  %i.tx = add i64 %i.tw, %i.tt                    ; 3 uses
  %indvars.iv.next817.3 = add nuw nsw i64 %indvars.iv816, 4 ; 2 uses
  %niter875.next.3 = add i64 %niter875, 4         ; 2 uses
  %niter875.ncmp.3 = icmp eq i64 %niter875.next.3, %unroll_iter874
  br i1 %niter875.ncmp.3, label %._crit_edge794.unr-lcssa, label %.lr.ph793, !llvm.loop !89

._crit_edge794.unr-lcssa:                         ; preds = %.lr.ph793
  %lcmp.mod871.not = icmp eq i64 %xtraiter869, 0
  br i1 %lcmp.mod871.not, label %._crit_edge794, label %.lr.ph793.epil.preheader

.lr.ph793.epil.preheader:                         ; preds = %._crit_edge794.unr-lcssa, %.lr.ph793.preheader
  %indvars.iv816.epil.init = phi i64 [ 0, %.lr.ph793.preheader ], [ %indvars.iv.next817.3, %._crit_edge794.unr-lcssa ]
  %.0446790.epil.init = phi i64 [ 0, %.lr.ph793.preheader ], [ %i.tx, %._crit_edge794.unr-lcssa ]
  %lcmp.mod873 = icmp ne i64 %xtraiter869, 0
  tail call void @llvm.assume(i1 %lcmp.mod873)
  br label %.lr.ph793.epil

.lr.ph793.epil:                                   ; preds = %.lr.ph793.epil, %.lr.ph793.epil.preheader
  %indvars.iv816.epil = phi i64 [ %indvars.iv816.epil.init, %.lr.ph793.epil.preheader ], [ %indvars.iv.next817.epil, %.lr.ph793.epil ] ; 2 uses
  %.0446790.epil = phi i64 [ %.0446790.epil.init, %.lr.ph793.epil.preheader ], [ %i.ub, %.lr.ph793.epil ]
  %epil.iter870 = phi i64 [ 0, %.lr.ph793.epil.preheader ], [ %epil.iter870.next, %.lr.ph793.epil ]
  %i.ty = getelementptr inbounds nuw [24 x i8], ptr %.1454, i64 %indvars.iv816.epil
  %i.tz = getelementptr inbounds nuw i8, ptr %i.ty, i64 16
  %i.ua = load i64, ptr %i.tz, align 8, !tbaa !45
  %i.ub = add i64 %i.ua, %.0446790.epil           ; 2 uses
  %indvars.iv.next817.epil = add nuw nsw i64 %indvars.iv816.epil, 1
  %epil.iter870.next = add i64 %epil.iter870, 1   ; 2 uses
  %epil.iter870.cmp.not = icmp eq i64 %epil.iter870.next, %xtraiter869
  br i1 %epil.iter870.cmp.not, label %._crit_edge794, label %.lr.ph793.epil, !llvm.loop !90

._crit_edge794:                                   ; preds = %.lr.ph793.epil, %._crit_edge794.unr-lcssa
  %.lcssa = phi i64 [ %i.tx, %._crit_edge794.unr-lcssa ], [ %i.ub, %.lr.ph793.epil ]
  %i.uc = add i64 %.lcssa, %i.sv                  ; 2 uses
  %i.ud = sub nsw i64 %.1542, %i.uc               ; 3 uses
  %i.ue = add nsw i64 %i.uc, %.5537               ; 3 uses
  %i.uf = getelementptr inbounds nuw [24 x i8], ptr %.1454, i64 %i.sv
  %i.ug = mul nuw nsw i32 %i.il, 24
  %narrow = add nuw nsw i32 %i.ug, 24
  %i.uh = zext nneg i32 %narrow to i64
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %.1454, ptr noundef nonnull align 8 dereferenceable(1) %i.uf, i64 %i.uh, i1 false)
  %i.ui = getelementptr inbounds nuw i8, ptr %0, i64 392
  %i.uj = load i8, ptr %i.ui, align 8, !tbaa !46, !range !10, !noundef !11
  %i.uk = trunc nuw i8 %i.uj to i1
  br i1 %i.uk, label %bb.at, label %.thread706

bb.at:                                            ; preds = %._crit_edge794
  %i.ul = add nuw nsw i32 %i.ru, %i.rb
  %i.um = load i8, ptr @H5B2_init_g, align 1, !tbaa !8, !range !10, !noundef !11
  %i.un = trunc nuw i8 %i.um to i1
  %i.uo = load i8, ptr @H5_libterm_g, align 1, !range !10
  %i.up = trunc nuw i8 %i.uo to i1
  %i.uq = xor i1 %i.up, true
  %i.ur = select i1 %i.un, i1 true, i1 %i.uq
  br i1 %i.ur, label %.lr.ph.i605, label %.thread706, !prof !55

.lr.ph.i605:                                      ; preds = %bb.at
  %i.us = add nsw i32 %i.g, -1
  br label %bb.av

bb.au:                                            ; preds = %bb.av
  %indvars.iv.next.i607 = add nuw nsw i64 %indvars.iv.i606, 1 ; 2 uses
  %lftr.wideiv.i608 = trunc i64 %indvars.iv.next.i607 to i32
  %exitcond.not.i609 = icmp eq i32 %i.ul, %lftr.wideiv.i608
  br i1 %exitcond.not.i609, label %.thread706, label %bb.av, !llvm.loop !56

bb.av:                                            ; preds = %bb.au, %.lr.ph.i605
  %indvars.iv.i606 = phi i64 [ %i.rv, %.lr.ph.i605 ], [ %indvars.iv.next.i607, %bb.au ] ; 2 uses
  %i.ut = getelementptr inbounds nuw [24 x i8], ptr %.1457, i64 %indvars.iv.i606
  %i.uu = tail call i32 @H5B2__update_flush_depend(ptr noundef %0, i32 noundef %i.us, ptr noundef %i.ut, ptr noundef nonnull %.2482, ptr noundef nonnull %.2486)
  %i.uv = icmp slt i32 %i.uu, 0
  br i1 %i.uv, label %bb.aw, label %bb.au

bb.aw:                                            ; preds = %bb.av
  %i.uw = load i64, ptr @H5E_BTREE_g, align 8, !tbaa !19
  %i.ux = load i64, ptr @H5E_CANTUPDATE_g, align 8, !tbaa !19
  %i.uy = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5B2__update_child_flush_depends, i32 noundef 1989, i64 noundef %i.uw, i64 noundef %i.ux, ptr noundef nonnull @.str.29) #4 ; 0 uses
  %i.uz = load i64, ptr @H5E_BTREE_g, align 8, !tbaa !19
  %i.va = load i64, ptr @H5E_CANTUPDATE_g, align 8, !tbaa !19
  %i.vb = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5B2__redistribute3, i32 noundef 1025, i64 noundef %i.uz, i64 noundef %i.va, ptr noundef nonnull @.str.6) #4 ; 0 uses
  br label %.thread715

.thread706:                                       ; preds = %bb.au, %..thread706_crit_edge, %bb.at, %bb.as, %._crit_edge794
  %.pre-phi829 = phi i64 [ %.pre828, %..thread706_crit_edge ], [ %i.rk, %._crit_edge794 ], [ %i.rk, %bb.at ], [ %i.rk, %bb.as ], [ %i.rk, %bb.au ]
  %.3544 = phi i64 [ %.1542, %..thread706_crit_edge ], [ %i.ud, %._crit_edge794 ], [ %i.ud, %bb.at ], [ %.1542, %bb.as ], [ %i.ud, %bb.au ]
  %.7539 = phi i64 [ %.5537, %..thread706_crit_edge ], [ %i.ue, %._crit_edge794 ], [ %i.ue, %bb.at ], [ %.5537, %bb.as ], [ %i.ue, %bb.au ]
  %.3523 = phi i32 [ %.1521, %..thread706_crit_edge ], [ 2, %._crit_edge794 ], [ 2, %bb.at ], [ 2, %bb.as ], [ 2, %bb.au ]
  %.7517 = phi i32 [ %.5515, %..thread706_crit_edge ], [ 2, %._crit_edge794 ], [ 2, %bb.at ], [ 2, %bb.as ], [ 2, %bb.au ]
  store i16 %i.de, ptr %.2496, align 2, !tbaa !49
  store i16 %i.db, ptr %.2502, align 2, !tbaa !49
  store i16 %i.di, ptr %.2499, align 2, !tbaa !49
  %i.vc = load i16, ptr %.2496, align 2, !tbaa !49 ; 2 uses
  %i.vd = getelementptr inbounds nuw i8, ptr %2, i64 264
  %i.ve = load ptr, ptr %i.vd, align 8, !tbaa !43 ; 3 uses
  %i.vf = add i32 %4, -1
  %i.vg = zext i32 %i.vf to i64
  %i.vh = getelementptr inbounds nuw [24 x i8], ptr %i.ve, i64 %i.vg ; 3 uses
  %i.vi = getelementptr inbounds nuw i8, ptr %i.vh, i64 8
  store i16 %i.vc, ptr %i.vi, align 8, !tbaa !44
  %i.vj = load i16, ptr %.2502, align 2, !tbaa !49 ; 2 uses
  %i.vk = getelementptr inbounds nuw [24 x i8], ptr %i.ve, i64 %.pre-phi829 ; 2 uses
  %i.vl = getelementptr inbounds nuw i8, ptr %i.vk, i64 8
  store i16 %i.vj, ptr %i.vl, align 8, !tbaa !44
  %i.vm = load i16, ptr %.2499, align 2, !tbaa !49 ; 2 uses
  %i.vn = add i32 %4, 1
  %i.vo = zext i32 %i.vn to i64
  %i.vp = getelementptr inbounds nuw [24 x i8], ptr %i.ve, i64 %i.vo ; 3 uses
  %i.vq = getelementptr inbounds nuw i8, ptr %i.vp, i64 8
  store i16 %i.vm, ptr %i.vq, align 8, !tbaa !44
  %i.vr = getelementptr inbounds nuw i8, ptr %i.vk, i64 16 ; 3 uses
  br i1 %i.h, label %bb.ax, label %bb.ay

bb.ax:                                            ; preds = %.thread706
  %i.vs = getelementptr inbounds nuw i8, ptr %i.vh, i64 16 ; 2 uses
  %i.vt = load i64, ptr %i.vs, align 8, !tbaa !45
  %i.vu = add nsw i64 %i.vt, %.3549
  store i64 %i.vu, ptr %i.vs, align 8, !tbaa !45
  %i.vv = load i64, ptr %i.vr, align 8, !tbaa !45
  %i.vw = add nsw i64 %i.vv, %.7539
  store i64 %i.vw, ptr %i.vr, align 8, !tbaa !45
  %i.vx = getelementptr inbounds nuw i8, ptr %i.vp, i64 16 ; 2 uses
  %i.vy = load i64, ptr %i.vx, align 8, !tbaa !45
  %i.vz = add nsw i64 %i.vy, %.3544
  store i64 %i.vz, ptr %i.vx, align 8, !tbaa !45
  br label %bb.az

bb.ay:                                            ; preds = %.thread706
  %i.wa = zext i16 %i.vc to i64
  %i.wb = getelementptr inbounds nuw i8, ptr %i.vh, i64 16
  store i64 %i.wa, ptr %i.wb, align 8, !tbaa !45
  %i.wc = zext i16 %i.vj to i64
  store i64 %i.wc, ptr %i.vr, align 8, !tbaa !45
  %i.wd = zext i16 %i.vm to i64
  %i.we = getelementptr inbounds nuw i8, ptr %i.vp, i64 16
  store i64 %i.wd, ptr %i.we, align 8, !tbaa !45
  br label %bb.az

bb.az:                                            ; preds = %bb.ay, %bb.ax
  %i.wf = load i32, ptr %3, align 4, !tbaa !13
  %i.wg = or i32 %i.wf, 2
  store i32 %i.wg, ptr %3, align 4, !tbaa !13
  br label %.thread715

.thread715:                                       ; preds = %bb.az, %bb.aw, %bb.aq, %bb.ah, %bb.y
  %.5531 = phi i32 [ %.3529, %bb.az ], [ 0, %bb.y ], [ %.1511, %bb.ah ], [ %.1511, %bb.aq ], [ %.3529, %bb.aw ]
  %.5525 = phi i32 [ %.3523, %bb.az ], [ 0, %bb.y ], [ 0, %bb.ah ], [ %.1521, %bb.aq ], [ %.1521, %bb.aw ]
  %.9519 = phi i32 [ %.7517, %bb.az ], [ 0, %bb.y ], [ %.1511, %bb.ah ], [ %.3513, %bb.aq ], [ %.5515, %bb.aw ]
  %.12 = phi i32 [ 0, %bb.az ], [ -1, %bb.y ], [ -1, %bb.ah ], [ -1, %bb.aq ], [ -1, %bb.aw ]
  %i.wh = getelementptr inbounds nuw i8, ptr %0, i64 288 ; 3 uses
  %i.wi = load ptr, ptr %i.wh, align 8, !tbaa !57
  %i.wj = tail call i32 @H5AC_unprotect(ptr noundef %i.wi, ptr noundef nonnull %.0462, i64 noundef %.2466, ptr noundef nonnull %.2478, i32 noundef %.5531) #4
  %i.wk = icmp slt i32 %i.wj, 0
  br i1 %i.wk, label %bb.ba, label %bb.bb

bb.ba:                                            ; preds = %.thread715
  %i.wl = load i64, ptr @H5E_BTREE_g, align 8, !tbaa !19
  %i.wm = load i64, ptr @H5E_CANTUNPROTECT_g, align 8, !tbaa !19
  %i.wn = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5B2__redistribute3, i32 noundef 1083, i64 noundef %i.wl, i64 noundef %i.wm, ptr noundef nonnull @.str.13) #4 ; 0 uses
  br label %bb.bb

bb.bb:                                            ; preds = %.thread715, %bb.ba
  %.13 = phi i32 [ -1, %bb.ba ], [ %.12, %.thread715 ]
  %i.wo = load ptr, ptr %i.wh, align 8, !tbaa !57
  %i.wp = tail call i32 @H5AC_unprotect(ptr noundef %i.wo, ptr noundef nonnull %.0462, i64 noundef %.2474, ptr noundef nonnull %.2486, i32 noundef %.9519) #4
  %i.wq = icmp slt i32 %i.wp, 0
  br i1 %i.wq, label %bb.bc, label %bb.bd

bb.bc:                                            ; preds = %bb.bb
  %i.wr = load i64, ptr @H5E_BTREE_g, align 8, !tbaa !19
  %i.ws = load i64, ptr @H5E_CANTUNPROTECT_g, align 8, !tbaa !19
  %i.wt = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5B2__redistribute3, i32 noundef 1086, i64 noundef %i.wr, i64 noundef %i.ws, ptr noundef nonnull @.str.13) #4 ; 0 uses
  br label %bb.bd

bb.bd:                                            ; preds = %bb.bc, %bb.bb
  %.14.ph = phi i32 [ -1, %bb.bc ], [ %.13, %bb.bb ]
  %i.wu = load ptr, ptr %i.wh, align 8, !tbaa !57
  %i.wv = tail call i32 @H5AC_unprotect(ptr noundef %i.wu, ptr noundef nonnull %.0462, i64 noundef %.2470, ptr noundef nonnull %.2482, i32 noundef %.5525) #4
  %i.ww = icmp slt i32 %i.wv, 0
  br i1 %i.ww, label %bb.be, label %.thread

bb.be:                                            ; preds = %bb.bd
  %i.wx = load i64, ptr @H5E_BTREE_g, align 8, !tbaa !19
  %i.wy = load i64, ptr @H5E_CANTUNPROTECT_g, align 8, !tbaa !19
  %i.wz = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5B2__redistribute3, i32 noundef 1088, i64 noundef %i.wx, i64 noundef %i.wy, ptr noundef nonnull @.str.13) #4 ; 0 uses
  br label %.thread

.thread:                                          ; preds = %bb.o, %bb.m, %bb.k, %bb.h, %bb.f, %bb.d, %bb.a, %bb.be, %bb.bd
  %.15 = phi i32 [ -1, %bb.be ], [ %.14.ph, %bb.bd ], [ 0, %bb.a ], [ -1, %bb.h ], [ -1, %bb.d ], [ -1, %bb.f ], [ -1, %bb.k ], [ -1, %bb.m ], [ -1, %bb.o ]
  ret i32 %.15
}

; Function Attrs: nounwind uwtable
define range(i32 -1, 1) i32 @H5B2__merge2(ptr noundef %0, i16 noundef zeroext %1, ptr nofree noundef captures(none) %2, ptr nofree noundef captures(address_is_null) %3, ptr noundef %4, ptr nofree noundef captures(none) %5, i32 noundef %6) local_unnamed_addr #0 {
bb.a:
  %i.a = load i8, ptr @H5B2_init_g, align 1, !tbaa !8, !range !10, !noundef !11
  %i.b = trunc nuw i8 %i.a to i1
  %i.c = load i8, ptr @H5_libterm_g, align 1, !range !10
  %i.d = trunc nuw i8 %i.c to i1
  %i.e = xor i1 %i.d, true
  %i.f = select i1 %i.b, i1 true, i1 %i.e
  br i1 %i.f, label %bb.b, label %.thread, !prof !12

bb.b:                                             ; preds = %bb.a
  %i.g = zext i16 %1 to i32
  %i.h = icmp ugt i16 %1, 1                       ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 264 ; 5 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !43
  %i.k = zext i32 %6 to i64                       ; 6 uses
  %i.l = getelementptr inbounds nuw [24 x i8], ptr %i.j, i64 %i.k ; 2 uses
  br i1 %i.h, label %bb.c, label %bb.h

bb.c:                                             ; preds = %bb.b
  %i.m = add i16 %1, -1                           ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 392
  %i.o = load i8, ptr %i.n, align 8, !tbaa !46, !range !10, !noundef !11
  %i.p = trunc nuw i8 %i.o to i1
  %i.q = tail call ptr @H5B2__protect_internal(ptr noundef %0, ptr noundef %4, ptr noundef %i.l, i16 noundef zeroext %i.m, i1 noundef zeroext %i.p, i32 noundef 0) #4 ; 4 uses
  %i.r = icmp eq ptr %i.q, null
  br i1 %i.r, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.s = load i64, ptr @H5E_BTREE_g, align 8, !tbaa !19
  %i.t = load i64, ptr @H5E_CANTPROTECT_g, align 8, !tbaa !19
  %i.u = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5B2__merge2, i32 noundef 1141, i64 noundef %i.s, i64 noundef %i.t, ptr noundef nonnull @.str.3) #4 ; 0 uses
  br label %.thread

bb.e:                                             ; preds = %bb.c
  %i.v = load ptr, ptr %i.i, align 8, !tbaa !43   ; 2 uses
  %i.w = getelementptr inbounds nuw [24 x i8], ptr %i.v, i64 %i.k
  %i.x = load i64, ptr %i.w, align 8, !tbaa !47
end_hunk_1
begin_hunk_2_@H5B2__merge3:bb.a
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !43
  br label %bb.q

bb.j:                                             ; preds = %bb.b
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 392 ; 2 uses
  %i.bf = load i8, ptr %i.be, align 8, !tbaa !46, !range !10, !noundef !11
  %i.bg = trunc nuw i8 %i.bf to i1
  %i.bh = tail call ptr @H5B2__protect_leaf(ptr noundef %0, ptr noundef %4, ptr noundef %i.m, i1 noundef zeroext %i.bg, i32 noundef 0) #4 ; 3 uses
  %i.bi = icmp eq ptr %i.bh, null
  br i1 %i.bi, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.bj = load i64, ptr @H5E_BTREE_g, align 8, !tbaa !19
  %i.bk = load i64, ptr @H5E_CANTPROTECT_g, align 8, !tbaa !19
  %i.bl = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5B2__merge3, i32 noundef 1360, i64 noundef %i.bj, i64 noundef %i.bk, ptr noundef nonnull @.str.5) #4 ; 0 uses
  br label %.thread

bb.l:                                             ; preds = %bb.j
  %i.bm = load ptr, ptr %i.i, align 8, !tbaa !43  ; 2 uses
  %i.bn = getelementptr inbounds nuw [24 x i8], ptr %i.bm, i64 %i.l
  %i.bo = load i64, ptr %i.bn, align 8, !tbaa !47
  %i.bp = zext i32 %6 to i64                      ; 2 uses
  %i.bq = getelementptr inbounds nuw [24 x i8], ptr %i.bm, i64 %i.bp
  %i.br = load i8, ptr %i.be, align 8, !tbaa !46, !range !10, !noundef !11
  %i.bs = trunc nuw i8 %i.br to i1
  %i.bt = tail call ptr @H5B2__protect_leaf(ptr noundef nonnull %0, ptr noundef nonnull %4, ptr noundef %i.bq, i1 noundef zeroext %i.bs, i32 noundef 0) #4 ; 3 uses
  %i.bu = icmp eq ptr %i.bt, null
  br i1 %i.bu, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.bv = load i64, ptr @H5E_BTREE_g, align 8, !tbaa !19
  %i.bw = load i64, ptr @H5E_CANTPROTECT_g, align 8, !tbaa !19
  %i.bx = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5B2__merge3, i32 noundef 1364, i64 noundef %i.bv, i64 noundef %i.bw, ptr noundef nonnull @.str.5) #4 ; 0 uses
  br label %.thread

bb.n:                                             ; preds = %bb.l
  %i.by = load ptr, ptr %i.i, align 8, !tbaa !43  ; 2 uses
  %i.bz = getelementptr inbounds nuw [24 x i8], ptr %i.by, i64 %i.bp
  %i.ca = load i64, ptr %i.bz, align 8, !tbaa !47
  %i.cb = add i32 %6, 1
  %i.cc = zext i32 %i.cb to i64                   ; 2 uses
  %i.cd = getelementptr inbounds nuw [24 x i8], ptr %i.by, i64 %i.cc
  %i.ce = tail call ptr @H5B2__protect_leaf(ptr noundef nonnull %0, ptr noundef nonnull %4, ptr noundef %i.cd, i1 noundef zeroext false, i32 noundef 0) #4 ; 3 uses
  %i.cf = icmp eq ptr %i.ce, null
  br i1 %i.cf, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.cg = load i64, ptr @H5E_BTREE_g, align 8, !tbaa !19
  %i.ch = load i64, ptr @H5E_CANTPROTECT_g, align 8, !tbaa !19
  %i.ci = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5B2__merge3, i32 noundef 1368, i64 noundef %i.cg, i64 noundef %i.ch, ptr noundef nonnull @.str.5) #4 ; 0 uses
  br label %.thread

bb.p:                                             ; preds = %bb.n
  %i.cj = load ptr, ptr %i.i, align 8, !tbaa !43
  %i.ck = getelementptr inbounds nuw [24 x i8], ptr %i.cj, i64 %i.cc
  %i.cl = getelementptr inbounds nuw i8, ptr %i.bh, i64 264
  %i.cm = getelementptr inbounds nuw i8, ptr %i.bt, i64 264
  %i.cn = getelementptr inbounds nuw i8, ptr %i.ce, i64 264
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.i
  %.2306 = phi ptr [ %i.cl, %bb.p ], [ %i.av, %bb.i ] ; 7 uses
  %.2303 = phi ptr [ %i.cn, %bb.p ], [ %i.ax, %bb.i ] ; 5 uses
  %.2300 = phi ptr [ %i.cm, %bb.p ], [ %i.aw, %bb.i ] ; 11 uses
  %.1288 = phi ptr [ null, %bb.p ], [ %i.az, %bb.i ] ; 2 uses
  %.1286 = phi ptr [ null, %bb.p ], [ %i.bd, %bb.i ]
  %.1284 = phi ptr [ null, %bb.p ], [ %i.bb, %bb.i ] ; 10 uses
  %.2269 = phi ptr [ %i.bt, %bb.p ], [ %i.ad, %bb.i ] ; 4 uses
  %.2265 = phi ptr [ %i.ce, %bb.p ], [ %i.ao, %bb.i ] ; 3 uses
  %.2261 = phi ptr [ %i.bh, %bb.p ], [ %i.r, %bb.i ] ; 3 uses
  %.2254 = phi i64 [ %i.ca, %bb.p ], [ %i.ak, %bb.i ]
  %.2250.in = phi ptr [ %i.ck, %bb.p ], [ %i.au, %bb.i ]
  %.2 = phi i64 [ %i.bo, %bb.p ], [ %i.y, %bb.i ]
  %.0245 = phi ptr [ @H5AC_BT2_LEAF, %bb.p ], [ @H5AC_BT2_INT, %bb.i ] ; 3 uses
  %.2250 = load i64, ptr %.2250.in, align 8, !tbaa !47
  %.2291.in = getelementptr inbounds nuw i8, ptr %.2269, i64 256
  %.2291 = load ptr, ptr %.2291.in, align 8, !tbaa !48 ; 6 uses
  %.2294.in = getelementptr inbounds nuw i8, ptr %.2265, i64 256
  %.2294 = load ptr, ptr %.2294.in, align 8, !tbaa !48
  %.2297.in = getelementptr inbounds nuw i8, ptr %.2261, i64 256
  %.2297 = load ptr, ptr %.2297.in, align 8, !tbaa !48 ; 2 uses
  %i.co = load i16, ptr %.2306, align 2, !tbaa !49 ; 2 uses
  %i.cp = zext i16 %i.co to i32                   ; 3 uses
  %i.cq = load i16, ptr %.2300, align 2, !tbaa !49
  %i.cr = zext i16 %i.cq to i32
  %i.cs = load i16, ptr %.2303, align 2, !tbaa !49
  %i.ct = zext i16 %i.cs to i32
  %i.cu = add nuw nsw i32 %i.cp, 1
  %i.cv = add nuw nsw i32 %i.cu, %i.cr
  %i.cw = add nuw nsw i32 %i.cv, %i.ct
  %i.cx = lshr i32 %i.cw, 1                       ; 2 uses
  %i.cy = sub nsw i32 %i.cx, %i.cp                ; 7 uses
  %i.cz = zext i32 %i.cy to i64                   ; 8 uses
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 360 ; 7 uses
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !36 ; 2 uses
  %i.dc = zext i16 %i.co to i64
  %i.dd = getelementptr inbounds nuw [8 x i8], ptr %i.db, i64 %i.dc
  %i.de = load i64, ptr %i.dd, align 8, !tbaa !19
  %i.df = getelementptr inbounds nuw i8, ptr %.2297, i64 %i.de
  %i.dg = getelementptr inbounds nuw i8, ptr %4, i64 256 ; 4 uses
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !35
  %i.di = getelementptr inbounds nuw [8 x i8], ptr %i.db, i64 %i.l
  %i.dj = load i64, ptr %i.di, align 8, !tbaa !19
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dh, i64 %i.dj
  %i.dl = getelementptr inbounds nuw i8, ptr %0, i64 424 ; 7 uses
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !41
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 16
  %i.do = load i64, ptr %i.dn, align 8, !tbaa !42
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.df, ptr align 1 %i.dk, i64 %i.do, i1 false)
  %i.dp = load ptr, ptr %i.da, align 8, !tbaa !36 ; 2 uses
  %i.dq = load i16, ptr %.2306, align 2, !tbaa !49
  %i.dr = zext i16 %i.dq to i64
  %i.ds = getelementptr inbounds nuw [8 x i8], ptr %i.dp, i64 %i.dr
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 8
  %i.du = load i64, ptr %i.dt, align 8, !tbaa !19
  %i.dv = getelementptr inbounds nuw i8, ptr %.2297, i64 %i.du
  %i.dw = load i64, ptr %i.dp, align 8, !tbaa !19
  %i.dx = getelementptr inbounds nuw i8, ptr %.2291, i64 %i.dw
  %i.dy = load ptr, ptr %i.dl, align 8, !tbaa !41
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 16
  %i.ea = load i64, ptr %i.dz, align 8, !tbaa !42
  %i.eb = add nsw i32 %i.cy, -1
  %i.ec = zext i32 %i.eb to i64                   ; 2 uses
  %i.ed = mul i64 %i.ea, %i.ec
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.dv, ptr align 1 %i.dx, i64 %i.ed, i1 false)
  %i.ee = load ptr, ptr %i.dg, align 8, !tbaa !35
  %i.ef = load ptr, ptr %i.da, align 8, !tbaa !36 ; 2 uses
  %i.eg = getelementptr inbounds nuw [8 x i8], ptr %i.ef, i64 %i.l
  %i.eh = load i64, ptr %i.eg, align 8, !tbaa !19
  %i.ei = getelementptr inbounds nuw i8, ptr %i.ee, i64 %i.eh
  %i.ej = getelementptr inbounds nuw [8 x i8], ptr %i.ef, i64 %i.ec
  %i.ek = load i64, ptr %i.ej, align 8, !tbaa !19
  %i.el = getelementptr inbounds nuw i8, ptr %.2291, i64 %i.ek
  %i.em = load ptr, ptr %i.dl, align 8, !tbaa !41
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 16
  %i.eo = load i64, ptr %i.en, align 8, !tbaa !42
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ei, ptr align 1 %i.el, i64 %i.eo, i1 false)
  %i.ep = load ptr, ptr %i.da, align 8, !tbaa !36 ; 2 uses
  %i.eq = load i64, ptr %i.ep, align 8, !tbaa !19
  %i.er = getelementptr inbounds nuw i8, ptr %.2291, i64 %i.eq
  %i.es = getelementptr inbounds nuw [8 x i8], ptr %i.ep, i64 %i.cz
  %i.et = load i64, ptr %i.es, align 8, !tbaa !19
  %i.eu = getelementptr inbounds nuw i8, ptr %.2291, i64 %i.et
  %i.ev = load ptr, ptr %i.dl, align 8, !tbaa !41
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ev, i64 16
  %i.ex = load i64, ptr %i.ew, align 8, !tbaa !42
  %i.ey = load i16, ptr %.2300, align 2, !tbaa !49
  %i.ez = zext i16 %i.ey to i32
  %i.fa = sub nsw i32 %i.ez, %i.cy
  %i.fb = zext i32 %i.fa to i64
  %i.fc = mul i64 %i.ex, %i.fb
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.er, ptr align 1 %i.eu, i64 %i.fc, i1 false)
  br i1 %i.h, label %bb.r, label %.thread366

.thread366:                                       ; preds = %bb.q
  %i.fd = getelementptr inbounds nuw i8, ptr %0, i64 392
  br label %H5B2__update_child_flush_depends.exit.thread

bb.r:                                             ; preds = %bb.q
  %i.fe = load i16, ptr %.2306, align 2, !tbaa !49
  %i.ff = zext i16 %i.fe to i64
  %i.fg = getelementptr inbounds nuw [24 x i8], ptr %.1288, i64 %i.ff
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fg, i64 24
  %i.fi = mul nuw nsw i64 %i.cz, 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.fh, ptr align 8 %.1284, i64 %i.fi, i1 false)
  %.not433 = icmp eq i32 %i.cx, %i.cp
  br i1 %.not433, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.r
  %xtraiter = and i64 %i.cz, 3                    ; 3 uses
  %i.fj = icmp ult i32 %i.cy, 4
  br i1 %i.fj, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %i.cz, 4294967292
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader.new ], [ %indvars.iv.next.3, %.lr.ph ] ; 5 uses
  %.0281431 = phi i64 [ %i.cz, %.lr.ph.preheader.new ], [ %i.fz, %.lr.ph ]
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.3, %.lr.ph ]
  %i.fk = getelementptr inbounds nuw [24 x i8], ptr %.1284, i64 %indvars.iv
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fk, i64 16
  %i.fm = load i64, ptr %i.fl, align 8, !tbaa !45
  %i.fn = add i64 %i.fm, %.0281431
  %i.fo = getelementptr inbounds nuw [24 x i8], ptr %.1284, i64 %indvars.iv
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fo, i64 40
  %i.fq = load i64, ptr %i.fp, align 8, !tbaa !45
  %i.fr = add i64 %i.fq, %i.fn
  %i.fs = getelementptr inbounds nuw [24 x i8], ptr %.1284, i64 %indvars.iv
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fs, i64 64
  %i.fu = load i64, ptr %i.ft, align 8, !tbaa !45
  %i.fv = add i64 %i.fu, %i.fr
  %i.fw = getelementptr inbounds nuw [24 x i8], ptr %.1284, i64 %indvars.iv
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fw, i64 88
  %i.fy = load i64, ptr %i.fx, align 8, !tbaa !45
  %i.fz = add i64 %i.fy, %i.fv                    ; 3 uses
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !91

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next.3, %._crit_edge.loopexit.unr-lcssa ]
  %.0281431.epil.init = phi i64 [ %i.cz, %.lr.ph.preheader ], [ %i.fz, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod457 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod457)
  br label %.lr.ph.epil

.lr.ph.epil:                                      ; preds = %.lr.ph.epil, %.lr.ph.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.next.epil, %.lr.ph.epil ], [ %indvars.iv.epil.init, %.lr.ph.epil.preheader ] ; 2 uses
  %.0281431.epil = phi i64 [ %i.gd, %.lr.ph.epil ], [ %.0281431.epil.init, %.lr.ph.epil.preheader ]
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.epil ], [ 0, %.lr.ph.epil.preheader ]
  %i.ga = getelementptr inbounds nuw [24 x i8], ptr %.1284, i64 %indvars.iv.epil
  %i.gb = getelementptr inbounds nuw i8, ptr %i.ga, i64 16
  %i.gc = load i64, ptr %i.gb, align 8, !tbaa !45
  %i.gd = add i64 %i.gc, %.0281431.epil           ; 2 uses
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %.lr.ph.epil, !llvm.loop !92

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.epil, %bb.r
  %.0281.lcssa = phi i64 [ 0, %bb.r ], [ %i.fz, %._crit_edge.loopexit.unr-lcssa ], [ %i.gd, %.lr.ph.epil ] ; 3 uses
  %i.ge = getelementptr inbounds nuw [24 x i8], ptr %.1284, i64 %i.cz
  %i.gf = load i16, ptr %.2300, align 2, !tbaa !49
  %i.gg = zext i16 %i.gf to i32
  %reass.sub = sub nsw i32 %i.gg, %i.cy
  %i.gh = add nsw i32 %reass.sub, 1
  %i.gi = zext i32 %i.gh to i64
  %i.gj = mul nuw nsw i64 %i.gi, 24
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %.1284, ptr align 8 %i.ge, i64 %i.gj, i1 false)
  %i.gk = getelementptr inbounds nuw i8, ptr %0, i64 392 ; 4 uses
  %i.gl = load i8, ptr %i.gk, align 8, !tbaa !46, !range !10, !noundef !11
  %i.gm = trunc nuw i8 %i.gl to i1
  br i1 %i.gm, label %bb.s, label %H5B2__update_child_flush_depends.exit.thread

bb.s:                                             ; preds = %._crit_edge
  %i.gn = load i16, ptr %.2306, align 2, !tbaa !49
  %i.go = zext i16 %i.gn to i32                   ; 2 uses
  %i.gp = add nuw nsw i32 %i.go, 1                ; 2 uses
  %i.gq = add nsw i32 %i.cy, 1
  %i.gr = add nsw i32 %i.gq, %i.go                ; 2 uses
  %i.gs = load i8, ptr @H5B2_init_g, align 1, !tbaa !8, !range !10, !noundef !11
  %i.gt = trunc nuw i8 %i.gs to i1
  %i.gu = load i8, ptr @H5_libterm_g, align 1, !range !10
  %i.gv = trunc nuw i8 %i.gu to i1
  %i.gw = xor i1 %i.gv, true
  %i.gx = select i1 %i.gt, i1 true, i1 %i.gw
  %i.gy = icmp ult i32 %i.gp, %i.gr
  %or.cond.i = and i1 %i.gy, %i.gx
  br i1 %or.cond.i, label %.lr.ph.i, label %H5B2__update_child_flush_depends.exit.thread, !prof !55

.lr.ph.i:                                         ; preds = %bb.s
  %i.gz = add nsw i32 %i.g, -1
  %i.ha = zext nneg i32 %i.gp to i64
  br label %bb.u

bb.t:                                             ; preds = %bb.u
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %lftr.wideiv.i = trunc i64 %indvars.iv.next.i to i32
  %exitcond.not.i = icmp eq i32 %i.gr, %lftr.wideiv.i
  br i1 %exitcond.not.i, label %H5B2__update_child_flush_depends.exit.thread, label %bb.u, !llvm.loop !56

bb.u:                                             ; preds = %bb.t, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %i.ha, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.t ] ; 2 uses
  %i.hb = getelementptr inbounds nuw [24 x i8], ptr %.1288, i64 %indvars.iv.i
  %i.hc = tail call i32 @H5B2__update_flush_depend(ptr noundef %0, i32 noundef %i.gz, ptr noundef %i.hb, ptr noundef nonnull %.2269, ptr noundef nonnull %.2261)
  %i.hd = icmp slt i32 %i.hc, 0
  br i1 %i.hd, label %bb.v, label %bb.t

bb.v:                                             ; preds = %bb.u
  %i.he = load i64, ptr @H5E_BTREE_g, align 8, !tbaa !19
  %i.hf = load i64, ptr @H5E_CANTUPDATE_g, align 8, !tbaa !19
  %i.hg = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5B2__update_child_flush_depends, i32 noundef 1989, i64 noundef %i.he, i64 noundef %i.hf, ptr noundef nonnull @.str.29) #4 ; 0 uses
  %i.hh = load i64, ptr @H5E_BTREE_g, align 8, !tbaa !19
  %i.hi = load i64, ptr @H5E_CANTUPDATE_g, align 8, !tbaa !19
  %i.hj = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5B2__merge3, i32 noundef 1429, i64 noundef %i.hh, i64 noundef %i.hi, ptr noundef nonnull @.str.6) #4 ; 0 uses
  br label %bb.ae

H5B2__update_child_flush_depends.exit.thread:     ; preds = %bb.t, %bb.s, %._crit_edge, %.thread366
  %i.hk = phi ptr [ %i.fd, %.thread366 ], [ %i.gk, %._crit_edge ], [ %i.gk, %bb.s ], [ %i.gk, %bb.t ] ; 2 uses
  %.1282370 = phi i64 [ %i.cz, %.thread366 ], [ %.0281.lcssa, %._crit_edge ], [ %.0281.lcssa, %bb.s ], [ %.0281.lcssa, %bb.t ] ; 2 uses
  %i.hl = load i16, ptr %.2306, align 2, !tbaa !49
  %i.hm = trunc i32 %i.cy to i16                  ; 2 uses
  %i.hn = add i16 %i.hl, %i.hm
  store i16 %i.hn, ptr %.2306, align 2, !tbaa !49
  %i.ho = load i16, ptr %.2300, align 2, !tbaa !49
  %i.hp = sub i16 %i.ho, %i.hm                    ; 2 uses
  store i16 %i.hp, ptr %.2300, align 2, !tbaa !49
  %i.hq = load ptr, ptr %i.da, align 8, !tbaa !36 ; 2 uses
  %i.hr = zext i16 %i.hp to i64
  %i.hs = getelementptr inbounds nuw [8 x i8], ptr %i.hq, i64 %i.hr
  %i.ht = load i64, ptr %i.hs, align 8, !tbaa !19
  %i.hu = getelementptr inbounds nuw i8, ptr %.2291, i64 %i.ht
  %i.hv = load ptr, ptr %i.dg, align 8, !tbaa !35
  %i.hw = zext i32 %6 to i64                      ; 3 uses
  %i.hx = getelementptr inbounds nuw [8 x i8], ptr %i.hq, i64 %i.hw
  %i.hy = load i64, ptr %i.hx, align 8, !tbaa !19
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hv, i64 %i.hy
  %i.ia = load ptr, ptr %i.dl, align 8, !tbaa !41
  %i.ib = getelementptr inbounds nuw i8, ptr %i.ia, i64 16
  %i.ic = load i64, ptr %i.ib, align 8, !tbaa !42
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.hu, ptr align 1 %i.hz, i64 %i.ic, i1 false)
  %i.id = load ptr, ptr %i.da, align 8, !tbaa !36 ; 2 uses
  %i.ie = load i16, ptr %.2300, align 2, !tbaa !49
  %i.if = zext i16 %i.ie to i64
  %i.ig = getelementptr inbounds nuw [8 x i8], ptr %i.id, i64 %i.if
  %i.ih = getelementptr inbounds nuw i8, ptr %i.ig, i64 8
  %i.ii = load i64, ptr %i.ih, align 8, !tbaa !19
  %i.ij = getelementptr inbounds nuw i8, ptr %.2291, i64 %i.ii
  %i.ik = load i64, ptr %i.id, align 8, !tbaa !19
  %i.il = getelementptr inbounds nuw i8, ptr %.2294, i64 %i.ik
  %i.im = load ptr, ptr %i.dl, align 8, !tbaa !41
  %i.in = getelementptr inbounds nuw i8, ptr %i.im, i64 16
  %i.io = load i64, ptr %i.in, align 8, !tbaa !42
  %i.ip = load i16, ptr %.2303, align 2, !tbaa !49
  %i.iq = zext i16 %i.ip to i64
  %i.ir = mul i64 %i.io, %i.iq
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ij, ptr align 1 %i.il, i64 %i.ir, i1 false)
  %.pre436 = load i16, ptr %.2300, align 2, !tbaa !49 ; 2 uses
  %.pre439 = load i16, ptr %.2303, align 2, !tbaa !49 ; 2 uses
  br i1 %i.h, label %bb.w, label %.thread380

bb.w:                                             ; preds = %H5B2__update_child_flush_depends.exit.thread
  %i.is = zext i16 %.pre436 to i64
  %i.it = getelementptr inbounds nuw [24 x i8], ptr %.1284, i64 %i.is
  %i.iu = getelementptr inbounds nuw i8, ptr %i.it, i64 24
  %i.iv = zext i16 %.pre439 to i64
  %i.iw = mul nuw nsw i64 %i.iv, 24
  %i.ix = add nuw nsw i64 %i.iw, 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.iu, ptr noundef nonnull align 8 dereferenceable(1) %.1286, i64 %i.ix, i1 false)
  %i.iy = load i8, ptr %i.hk, align 8, !tbaa !46, !range !10, !noundef !11
  %i.iz = trunc nuw i8 %i.iy to i1
  %.pre437 = load i16, ptr %.2300, align 2, !tbaa !49 ; 3 uses
  %.pre440 = load i16, ptr %.2303, align 2, !tbaa !49 ; 3 uses
  br i1 %i.iz, label %bb.x, label %.thread380

bb.x:                                             ; preds = %bb.w
  %i.ja = zext i16 %.pre437 to i32                ; 2 uses
  %i.jb = add nuw nsw i32 %i.ja, 1                ; 2 uses
  %i.jc = zext i16 %.pre440 to i32
  %i.jd = add nuw nsw i32 %i.ja, 2
  %i.je = add nuw nsw i32 %i.jd, %i.jc            ; 2 uses
  %i.jf = load i8, ptr @H5B2_init_g, align 1, !tbaa !8, !range !10, !noundef !11
  %i.jg = trunc nuw i8 %i.jf to i1
  %i.jh = load i8, ptr @H5_libterm_g, align 1, !range !10
  %i.ji = trunc nuw i8 %i.jh to i1
  %i.jj = xor i1 %i.ji, true
  %i.jk = select i1 %i.jg, i1 true, i1 %i.jj
  %i.jl = icmp samesign ult i32 %i.jb, %i.je
  %or.cond.i325 = and i1 %i.jl, %i.jk
  br i1 %or.cond.i325, label %.lr.ph.i327, label %.thread380, !prof !55

.lr.ph.i327:                                      ; preds = %bb.x
  %i.jm = add nsw i32 %i.g, -1
  %i.jn = zext nneg i32 %i.jb to i64
  %zext = zext nneg i32 %i.je to i64
  br label %bb.z

bb.y:                                             ; preds = %bb.z
  %indvars.iv.next.i329 = add nuw nsw i64 %indvars.iv.i328, 1 ; 2 uses
  %i.jo = icmp eq i64 %indvars.iv.next.i329, %zext
  br i1 %i.jo, label %.thread380.loopexit, label %bb.z, !llvm.loop !56

bb.z:                                             ; preds = %bb.y, %.lr.ph.i327
  %indvars.iv.i328 = phi i64 [ %i.jn, %.lr.ph.i327 ], [ %indvars.iv.next.i329, %bb.y ] ; 2 uses
  %i.jp = getelementptr inbounds nuw [24 x i8], ptr %.1284, i64 %indvars.iv.i328
  %i.jq = tail call i32 @H5B2__update_flush_depend(ptr noundef %0, i32 noundef %i.jm, ptr noundef %i.jp, ptr noundef nonnull %.2265, ptr noundef nonnull %.2269)
  %i.jr = icmp slt i32 %i.jq, 0
  br i1 %i.jr, label %bb.aa, label %bb.y

bb.aa:                                            ; preds = %bb.z
  %i.js = load i64, ptr @H5E_BTREE_g, align 8, !tbaa !19
  %i.jt = load i64, ptr @H5E_CANTUPDATE_g, align 8, !tbaa !19
  %i.ju = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5B2__update_child_flush_depends, i32 noundef 1989, i64 noundef %i.js, i64 noundef %i.jt, ptr noundef nonnull @.str.29) #4 ; 0 uses
  %i.jv = load i64, ptr @H5E_BTREE_g, align 8, !tbaa !19
  %i.jw = load i64, ptr @H5E_CANTUPDATE_g, align 8, !tbaa !19
  %i.jx = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5B2__merge3, i32 noundef 1461, i64 noundef %i.jv, i64 noundef %i.jw, ptr noundef nonnull @.str.6) #4 ; 0 uses
  br label %bb.ae

.thread380.loopexit:                              ; preds = %bb.y
  %.pre = load i16, ptr %.2300, align 2, !tbaa !49
  %.pre438 = load i16, ptr %.2303, align 2, !tbaa !49
  br label %.thread380

.thread380:                                       ; preds = %.thread380.loopexit, %bb.x, %H5B2__update_child_flush_depends.exit.thread, %bb.w
  %i.jy = phi i16 [ %.pre438, %.thread380.loopexit ], [ %.pre440, %bb.x ], [ %.pre439, %H5B2__update_child_flush_depends.exit.thread ], [ %.pre440, %bb.w ]
  %i.jz = phi i16 [ %.pre, %.thread380.loopexit ], [ %.pre437, %bb.x ], [ %.pre436, %H5B2__update_child_flush_depends.exit.thread ], [ %.pre437, %bb.w ]
  %i.ka = add i16 %i.jz, 1
  %i.kb = add i16 %i.ka, %i.jy
  store i16 %i.kb, ptr %.2300, align 2, !tbaa !49
  %i.kc = load i8, ptr %i.hk, align 8, !tbaa !46, !range !10, !noundef !11
  %i.kd = trunc nuw i8 %i.kc to i1
  %spec.select = select i1 %i.kd, i32 1, i32 259  ; 2 uses
  %i.ke = load i16, ptr %.2306, align 2, !tbaa !49
  %i.kf = getelementptr inbounds nuw i8, ptr %4, i64 264 ; 2 uses
  %i.kg = load ptr, ptr %i.kf, align 8, !tbaa !43 ; 3 uses
  %i.kh = getelementptr inbounds nuw [24 x i8], ptr %i.kg, i64 %i.l ; 2 uses
  %i.ki = getelementptr inbounds nuw i8, ptr %i.kh, i64 8
  store i16 %i.ke, ptr %i.ki, align 8, !tbaa !44
  %i.kj = load i16, ptr %.2300, align 2, !tbaa !49
  %i.kk = getelementptr inbounds nuw [24 x i8], ptr %i.kg, i64 %i.hw ; 2 uses
  %i.kl = getelementptr inbounds nuw i8, ptr %i.kk, i64 8
  store i16 %i.kj, ptr %i.kl, align 8, !tbaa !44
  %i.km = getelementptr inbounds nuw i8, ptr %i.kh, i64 16 ; 2 uses
  %i.kn = load i64, ptr %i.km, align 8, !tbaa !45
  %i.ko = add i64 %i.kn, %.1282370
  store i64 %i.ko, ptr %i.km, align 8, !tbaa !45
  %i.kp = add i32 %6, 1                           ; 4 uses
  %i.kq = zext i32 %i.kp to i64                   ; 3 uses
  %i.kr = getelementptr inbounds nuw [24 x i8], ptr %i.kg, i64 %i.kq
  %i.ks = getelementptr inbounds nuw i8, ptr %i.kr, i64 16
  %i.kt = load i64, ptr %i.ks, align 8, !tbaa !45
  %i.ku = getelementptr inbounds nuw i8, ptr %i.kk, i64 16 ; 2 uses
  %i.kv = load i64, ptr %i.ku, align 8, !tbaa !45
  %reass.sub434 = sub i64 %i.kt, %.1282370
  %i.kw = add i64 %reass.sub434, 1
  %i.kx = add i64 %i.kw, %i.kv
  store i64 %i.kx, ptr %i.ku, align 8, !tbaa !45
  %i.ky = getelementptr inbounds nuw i8, ptr %4, i64 272 ; 4 uses
  %i.kz = load i16, ptr %i.ky, align 8, !tbaa !22 ; 2 uses
  %i.la = zext i16 %i.kz to i32                   ; 2 uses
  %i.lb = icmp ult i32 %i.kp, %i.la
  br i1 %i.lb, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %.thread380
  %i.lc = load ptr, ptr %i.dg, align 8, !tbaa !35 ; 2 uses
  %i.ld = load ptr, ptr %i.da, align 8, !tbaa !36 ; 2 uses
  %i.le = getelementptr inbounds nuw [8 x i8], ptr %i.ld, i64 %i.hw
  %i.lf = load i64, ptr %i.le, align 8, !tbaa !19
  %i.lg = getelementptr inbounds nuw i8, ptr %i.lc, i64 %i.lf
  %i.lh = getelementptr inbounds nuw [8 x i8], ptr %i.ld, i64 %i.kq
  %i.li = load i64, ptr %i.lh, align 8, !tbaa !19
  %i.lj = getelementptr inbounds nuw i8, ptr %i.lc, i64 %i.li
  %i.lk = load ptr, ptr %i.dl, align 8, !tbaa !41
  %i.ll = getelementptr inbounds nuw i8, ptr %i.lk, i64 16
  %i.lm = load i64, ptr %i.ll, align 8, !tbaa !42
  %i.ln = sub nuw nsw i32 %i.la, %i.kp
  %i.lo = zext nneg i32 %i.ln to i64
  %i.lp = mul i64 %i.lm, %i.lo
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.lg, ptr align 1 %i.lj, i64 %i.lp, i1 false)
  %i.lq = load ptr, ptr %i.kf, align 8, !tbaa !43 ; 2 uses
  %i.lr = getelementptr inbounds nuw [24 x i8], ptr %i.lq, i64 %i.kq
  %i.ls = sext i32 %6 to i64
  %i.lt = getelementptr [24 x i8], ptr %i.lq, i64 %i.ls
  %i.lu = getelementptr i8, ptr %i.lt, i64 48
  %i.lv = load i16, ptr %i.ky, align 8, !tbaa !22
  %i.lw = zext i16 %i.lv to i32
  %i.lx = sub nsw i32 %i.lw, %i.kp
  %i.ly = zext i32 %i.lx to i64
  %i.lz = mul nuw nsw i64 %i.ly, 24
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.lr, ptr align 8 %i.lu, i64 %i.lz, i1 false)
  %.pre441 = load i16, ptr %i.ky, align 8, !tbaa !22
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %.thread380
  %i.ma = phi i16 [ %.pre441, %bb.ab ], [ %i.kz, %.thread380 ]
  %i.mb = add i16 %i.ma, -1
  store i16 %i.mb, ptr %i.ky, align 8, !tbaa !22
  %i.mc = load i32, ptr %5, align 4, !tbaa !13
  %i.md = or i32 %i.mc, 2
  store i32 %i.md, ptr %5, align 4, !tbaa !13
  %i.me = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.mf = load i16, ptr %i.me, align 8, !tbaa !44
  %i.mg = add i16 %i.mf, -1
  store i16 %i.mg, ptr %i.me, align 8, !tbaa !44
  %.not = icmp eq ptr %3, null
  br i1 %.not, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.mh = load i32, ptr %3, align 4, !tbaa !13
  %i.mi = or i32 %i.mh, 2
  store i32 %i.mi, ptr %3, align 4, !tbaa !13
  br label %bb.ae

bb.ae:                                            ; preds = %bb.aa, %bb.ad, %bb.ac, %bb.v
  %.1280 = phi i32 [ 2, %bb.aa ], [ 2, %bb.ad ], [ 2, %bb.ac ], [ 0, %bb.v ] ; 2 uses
  %.1278 = phi i32 [ 0, %bb.aa ], [ %spec.select, %bb.ad ], [ %spec.select, %bb.ac ], [ 0, %bb.v ]
  %.4 = phi i32 [ -1, %bb.aa ], [ 0, %bb.ad ], [ 0, %bb.ac ], [ -1, %bb.v ]
  %i.mj = getelementptr inbounds nuw i8, ptr %0, i64 288 ; 3 uses
  %i.mk = load ptr, ptr %i.mj, align 8, !tbaa !57
  %i.ml = tail call i32 @H5AC_unprotect(ptr noundef %i.mk, ptr noundef nonnull %.0245, i64 noundef %.2, ptr noundef nonnull %.2261, i32 noundef %.1280) #4
  %i.mm = icmp slt i32 %i.ml, 0
  br i1 %i.mm, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %i.mn = load i64, ptr @H5E_BTREE_g, align 8, !tbaa !19
  %i.mo = load i64, ptr @H5E_CANTUNPROTECT_g, align 8, !tbaa !19
  %i.mp = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5B2__merge3, i32 noundef 1518, i64 noundef %i.mn, i64 noundef %i.mo, ptr noundef nonnull @.str.13) #4 ; 0 uses
  br label %bb.ag

bb.ag:                                            ; preds = %bb.ae, %bb.af
  %.5 = phi i32 [ -1, %bb.af ], [ %.4, %bb.ae ]
  %i.mq = load ptr, ptr %i.mj, align 8, !tbaa !57
  %i.mr = tail call i32 @H5AC_unprotect(ptr noundef %i.mq, ptr noundef nonnull %.0245, i64 noundef %.2254, ptr noundef nonnull %.2269, i32 noundef %.1280) #4
  %i.ms = icmp slt i32 %i.mr, 0
  br i1 %i.ms, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  %i.mt = load i64, ptr @H5E_BTREE_g, align 8, !tbaa !19
  %i.mu = load i64, ptr @H5E_CANTUNPROTECT_g, align 8, !tbaa !19
  %i.mv = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5B2__merge3, i32 noundef 1521, i64 noundef %i.mt, i64 noundef %i.mu, ptr noundef nonnull @.str.13) #4 ; 0 uses
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag
  %.6.ph = phi i32 [ -1, %bb.ah ], [ %.5, %bb.ag ]
  %i.mw = load ptr, ptr %i.mj, align 8, !tbaa !57
  %i.mx = tail call i32 @H5AC_unprotect(ptr noundef %i.mw, ptr noundef nonnull %.0245, i64 noundef %.2250, ptr noundef nonnull %.2265, i32 noundef %.1278) #4
  %i.my = icmp slt i32 %i.mx, 0
  br i1 %i.my, label %bb.aj, label %.thread

bb.aj:                                            ; preds = %bb.ai
  %i.mz = load i64, ptr @H5E_BTREE_g, align 8, !tbaa !19
  %i.na = load i64, ptr @H5E_CANTUNPROTECT_g, align 8, !tbaa !19
  %i.nb = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5B2__merge3, i32 noundef 1525, i64 noundef %i.mz, i64 noundef %i.na, ptr noundef nonnull @.str.13) #4 ; 0 uses
  br label %.thread

.thread:                                          ; preds = %bb.o, %bb.m, %bb.k, %bb.h, %bb.f, %bb.d, %bb.a, %bb.aj, %bb.ai
  %.7 = phi i32 [ -1, %bb.aj ], [ %.6.ph, %bb.ai ], [ 0, %bb.a ], [ -1, %bb.h ], [ -1, %bb.d ], [ -1, %bb.f ], [ -1, %bb.k ], [ -1, %bb.m ], [ -1, %bb.o ]
  ret i32 %.7
}

; Function Attrs: nounwind uwtable
define range(i32 -1, 1) i32 @H5B2__insert(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = load i8, ptr @H5B2_init_g, align 1, !tbaa !8, !range !10, !noundef !11
  %i.b = trunc nuw i8 %i.a to i1
  %i.c = load i8, ptr @H5_libterm_g, align 1, !range !10
  %i.d = trunc nuw i8 %i.c to i1
  %i.e = xor i1 %i.d, true
  %i.f = select i1 %i.b, i1 true, i1 %i.e
  br i1 %i.f, label %bb.b, label %bb.o, !prof !12

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 248 ; 4 uses
  %i.h = load i64, ptr %i.g, align 8, !tbaa !78
  %.not = icmp eq i64 %i.h, -1
  br i1 %.not, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.i = tail call i32 @H5B2__create_leaf(ptr noundef nonnull %0, ptr noundef nonnull %0, ptr noundef nonnull %i.g) #4
  %i.j = icmp slt i32 %i.i, 0
  br i1 %i.j, label %bb.d, label %bb.h

bb.d:                                             ; preds = %bb.c
  %i.k = load i64, ptr @H5E_BTREE_g, align 8, !tbaa !19
  %i.l = load i64, ptr @H5E_CANTINIT_g, align 8, !tbaa !19
  %i.m = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5B2__insert, i32 noundef 1554, i64 noundef %i.k, i64 noundef %i.l, ptr noundef nonnull @.str.14) #4 ; 0 uses
  br label %bb.o

bb.e:                                             ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.o = load i16, ptr %i.n, align 8, !tbaa !77
  %i.p = zext i16 %i.o to i32
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 368
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !59
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 284
  %i.t = load i16, ptr %i.s, align 4, !tbaa !58
  %i.u = zext i16 %i.t to i64
  %i.v = getelementptr inbounds nuw [48 x i8], ptr %i.r, i64 %i.u
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 4
  %i.x = load i32, ptr %i.w, align 4, !tbaa !69
  %i.y = icmp eq i32 %i.x, %i.p
  br i1 %i.y, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.z = tail call i32 @H5B2__split_root(ptr noundef nonnull %0)
  %i.aa = icmp slt i32 %i.z, 0
  br i1 %i.aa, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ab = load i64, ptr @H5E_BTREE_g, align 8, !tbaa !19
  %i.ac = load i64, ptr @H5E_CANTSPLIT_g, align 8, !tbaa !19
  %i.ad = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5B2__insert, i32 noundef 1560, i64 noundef %i.ab, i64 noundef %i.ac, ptr noundef nonnull @.str.15) #4 ; 0 uses
  br label %bb.o

bb.h:                                             ; preds = %bb.e, %bb.f, %bb.c
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 284
  %i.af = load i16, ptr %i.ae, align 4, !tbaa !58 ; 2 uses
  %.not24 = icmp eq i16 %i.af, 0
  br i1 %.not24, label %bb.k, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ag = tail call i32 @H5B2__insert_internal(ptr noundef nonnull %0, i16 noundef zeroext %i.af, ptr noundef null, ptr noundef nonnull %i.g, i32 noundef 0, ptr noundef nonnull %0, ptr noundef %1) #4
  %i.ah = icmp slt i32 %i.ag, 0
  br i1 %i.ah, label %bb.j, label %bb.m

bb.j:                                             ; preds = %bb.i
  %i.ai = load i64, ptr @H5E_BTREE_g, align 8, !tbaa !19
  %i.aj = load i64, ptr @H5E_CANTINSERT_g, align 8, !tbaa !19
  %i.ak = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5B2__insert, i32 noundef 1566, i64 noundef %i.ai, i64 noundef %i.aj, ptr noundef nonnull @.str.16) #4 ; 0 uses
  br label %bb.o

bb.k:                                             ; preds = %bb.h
  %i.al = tail call i32 @H5B2__insert_leaf(ptr noundef nonnull %0, ptr noundef nonnull %i.g, i32 noundef 0, ptr noundef nonnull %0, ptr noundef %1) #4
  %i.am = icmp slt i32 %i.al, 0
  br i1 %i.am, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.an = load i64, ptr @H5E_BTREE_g, align 8, !tbaa !19
  %i.ao = load i64, ptr @H5E_CANTINSERT_g, align 8, !tbaa !19
  %i.ap = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5B2__insert, i32 noundef 1570, i64 noundef %i.an, i64 noundef %i.ao, ptr noundef nonnull @.str.17) #4 ; 0 uses
  br label %bb.o

bb.m:                                             ; preds = %bb.k, %bb.i
  %i.aq = tail call i32 @H5B2__hdr_dirty(ptr noundef nonnull %0) #4
  %i.ar = icmp slt i32 %i.aq, 0
  br i1 %i.ar, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.as = load i64, ptr @H5E_BTREE_g, align 8, !tbaa !19
  %i.at = load i64, ptr @H5E_CANTMARKDIRTY_g, align 8, !tbaa !19
  %i.au = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5B2__insert, i32 noundef 1575, i64 noundef %i.as, i64 noundef %i.at, ptr noundef nonnull @.str.18) #4 ; 0 uses
  br label %bb.o

bb.o:                                             ; preds = %bb.d, %bb.g, %bb.j, %bb.l, %bb.n, %bb.m, %bb.a
  %.0 = phi i32 [ -1, %bb.g ], [ -1, %bb.j ], [ -1, %bb.n ], [ 0, %bb.m ], [ -1, %bb.l ], [ -1, %bb.d ], [ 0, %bb.a ]
  ret i32 %.0
}

declare i32 @H5B2__insert_internal(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @H5B2__insert_leaf(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @H5B2__hdr_dirty(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define i32 @H5B2__iterate_node(ptr noundef %0, i16 noundef zeroext %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5) local_unnamed_addr #0 {
bb.a:
  %i.a = load i8, ptr @H5B2_init_g, align 1, !tbaa !8, !range !10, !noundef !11
  %i.b = trunc nuw i8 %i.a to i1
  %i.c = load i8, ptr @H5_libterm_g, align 1, !range !10
  %i.d = trunc nuw i8 %i.c to i1
  %i.e = xor i1 %i.d, true
  %i.f = select i1 %i.b, i1 true, i1 %i.e
  br i1 %i.f, label %bb.b, label %.thread154, !prof !12

bb.b:                                             ; preds = %bb.a
  %i.g = icmp ne i16 %1, 0                        ; 3 uses
  br i1 %i.g, label %bb.c, label %bb.h

bb.c:                                             ; preds = %bb.b
  %i.h = tail call ptr @H5B2__protect_internal(ptr noundef %0, ptr noundef %3, ptr noundef %2, i16 noundef zeroext %1, i1 noundef zeroext false, i32 noundef 128) #4 ; 4 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.j = load i64, ptr @H5E_BTREE_g, align 8, !tbaa !19
  %i.k = load i64, ptr @H5E_CANTPROTECT_g, align 8, !tbaa !19
  %i.l = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5B2__iterate_node, i32 noundef 1621, i64 noundef %i.j, i64 noundef %i.k, ptr noundef nonnull @.str.3) #4 ; 0 uses
  br label %.thread154

bb.e:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %i.h, i64 256
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !35
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 368
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !59
  %i.q = zext i16 %1 to i64                       ; 2 uses
  %i.r = getelementptr inbounds nuw [48 x i8], ptr %i.p, i64 %i.q
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 40
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !75
  %i.u = tail call noalias ptr @H5FL_fac_malloc(ptr noundef %i.t) #4 ; 3 uses
  %i.v = icmp eq ptr %i.u, null
  br i1 %i.v, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.w = load i64, ptr @H5E_RESOURCE_g, align 8, !tbaa !19
  %i.x = load i64, ptr @H5E_NOSPACE_g, align 8, !tbaa !19
  %i.y = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5B2__iterate_node, i32 noundef 1631, i64 noundef %i.w, i64 noundef %i.x, ptr noundef nonnull @.str.19) #4 ; 0 uses
  br label %.thread154

bb.g:                                             ; preds = %bb.e
  %i.z = getelementptr inbounds nuw i8, ptr %i.h, i64 264
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !43
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ac = load i16, ptr %i.ab, align 8, !tbaa !44
  %i.ad = zext i16 %i.ac to i64
  %i.ae = mul nuw nsw i64 %i.ad, 24
  %i.af = add nuw nsw i64 %i.ae, 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.u, ptr noundef nonnull align 8 dereferenceable(1) %i.aa, i64 %i.af, i1 false)
  br label %bb.j

bb.h:                                             ; preds = %bb.b
  %i.ag = tail call ptr @H5B2__protect_leaf(ptr noundef %0, ptr noundef %3, ptr noundef %2, i1 noundef zeroext false, i32 noundef 128) #4 ; 3 uses
  %i.ah = icmp eq ptr %i.ag, null
  br i1 %i.ah, label %bb.i, label %.thread123

.thread123:                                       ; preds = %bb.h
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ag, i64 256
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !93
  br label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ak = load i64, ptr @H5E_BTREE_g, align 8, !tbaa !19
  %i.al = load i64, ptr @H5E_CANTPROTECT_g, align 8, !tbaa !19
  %i.am = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5B2__iterate_node, i32 noundef 1643, i64 noundef %i.ak, i64 noundef %i.al, ptr noundef nonnull @.str.5) #4 ; 0 uses
  br label %.thread154

bb.j:                                             ; preds = %.thread123, %bb.g
  %.pre-phi = phi i64 [ 0, %.thread123 ], [ %i.q, %bb.g ] ; 3 uses
  %.295 = phi ptr [ %i.ag, %.thread123 ], [ %i.h, %bb.g ] ; 3 uses
  %.292 = phi ptr [ %i.aj, %.thread123 ], [ %i.n, %bb.g ]
  %.187 = phi ptr [ null, %.thread123 ], [ %i.u, %bb.g ] ; 4 uses
  %.2 = phi ptr [ @H5AC_BT2_LEAF, %.thread123 ], [ @H5AC_BT2_INT, %bb.g ]
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 368 ; 3 uses
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !59
  %i.ap = getelementptr inbounds nuw [48 x i8], ptr %i.ao, i64 %.pre-phi
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 32
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !74
  %i.as = tail call noalias ptr @H5FL_fac_malloc(ptr noundef %i.ar) #4 ; 6 uses
  %i.at = icmp eq ptr %i.as, null
  br i1 %i.at, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.au = load i64, ptr @H5E_RESOURCE_g, align 8, !tbaa !19
  %i.av = load i64, ptr @H5E_NOSPACE_g, align 8, !tbaa !19
  %i.aw = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5B2__iterate_node, i32 noundef 1654, i64 noundef %i.au, i64 noundef %i.av, ptr noundef nonnull @.str.20) #4 ; 0 uses
  br label %.thread136

bb.l:                                             ; preds = %bb.j
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 424
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !41
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  %i.ba = load i64, ptr %i.az, align 8, !tbaa !42
  %i.bb = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 4 uses
  %i.bc = load i16, ptr %i.bb, align 8, !tbaa !44
  %i.bd = zext i16 %i.bc to i64
  %i.be = mul i64 %i.ba, %i.bd
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.as, ptr align 1 %.292, i64 %i.be, i1 false)
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !57
  %i.bh = load i64, ptr %2, align 8, !tbaa !47
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 392 ; 2 uses
  %i.bj = load i8, ptr %i.bi, align 8, !tbaa !46, !range !10, !noundef !11
  %i.bk = shl nuw nsw i8 %i.bj, 2
  %i.bl = zext nneg i8 %i.bk to i32
  %i.bm = tail call i32 @H5AC_unprotect(ptr noundef %i.bg, ptr noundef nonnull %.2, i64 noundef %i.bh, ptr noundef nonnull %.295, i32 noundef %i.bl) #4
  %i.bn = icmp slt i32 %i.bm, 0
  br i1 %i.bn, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.bo = load i64, ptr @H5E_BTREE_g, align 8, !tbaa !19
  %i.bp = load i64, ptr @H5E_CANTUNPROTECT_g, align 8, !tbaa !19
  %i.bq = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5B2__iterate_node, i32 noundef 1662, i64 noundef %i.bo, i64 noundef %i.bp, ptr noundef nonnull @.str.21) #4 ; 0 uses
  br label %.thread136

bb.n:                                             ; preds = %bb.l
  %i.br = load i8, ptr %i.bi, align 8, !tbaa !46, !range !10, !noundef !11
  %i.bs = trunc nuw i8 %i.br to i1                ; 3 uses
  %.295. = select i1 %i.bs, ptr %.295, ptr null   ; 2 uses
  %i.bt = load i16, ptr %i.bb, align 8, !tbaa !44
  %.not164 = icmp eq i16 %i.bt, 0
  br i1 %.not164, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.n
  %i.bu = add i16 %1, -1
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 360 ; 2 uses
  br i1 %i.g, label %.lr.ph.split.us, label %.thread129

.lr.ph.split.us:                                  ; preds = %.lr.ph, %bb.q
  %indvars.iv170 = phi i64 [ %indvars.iv.next171, %bb.q ], [ 0, %.lr.ph ] ; 4 uses
  %i.bw = getelementptr inbounds nuw [24 x i8], ptr %.187, i64 %indvars.iv170
  %i.bx = tail call i32 @H5B2__iterate_node(ptr noundef nonnull %0, i16 noundef zeroext %i.bu, ptr noundef %i.bw, ptr noundef %.295., ptr noundef %4, ptr noundef %5) ; 4 uses
  %i.by = icmp slt i32 %i.bx, 0
  br i1 %i.by, label %.thread132.us, label %bb.o

bb.o:                                             ; preds = %.lr.ph.split.us
  %.not112.us = icmp eq i32 %i.bx, 0
  br i1 %.not112.us, label %.thread129.us, label %.thread

.thread129.us:                                    ; preds = %bb.o
  %i.bz = load ptr, ptr %i.bv, align 8, !tbaa !36
  %i.ca = getelementptr inbounds nuw [8 x i8], ptr %i.bz, i64 %indvars.iv170
  %i.cb = load i64, ptr %i.ca, align 8, !tbaa !19
  %i.cc = getelementptr inbounds nuw i8, ptr %i.as, i64 %i.cb
  %i.cd = tail call i32 %4(ptr noundef nonnull %i.cc, ptr noundef %5) #4 ; 4 uses
  %i.ce = icmp slt i32 %i.cd, 0
  br i1 %i.ce, label %bb.p, label %bb.q

bb.p:                                             ; preds = %.thread129.us
  %i.cf = load i64, ptr @H5E_BTREE_g, align 8, !tbaa !19
  %i.cg = load i64, ptr @H5E_CANTLIST_g, align 8, !tbaa !19
  %i.ch = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5B2__iterate_node, i32 noundef 1679, i64 noundef %i.cf, i64 noundef %i.cg, ptr noundef nonnull @.str.23) #4 ; 0 uses
  br label %.thread

.thread132.us:                                    ; preds = %.lr.ph.split.us
  %i.ci = load i64, ptr @H5E_BTREE_g, align 8, !tbaa !19
  %i.cj = load i64, ptr @H5E_CANTLIST_g, align 8, !tbaa !19
  %i.ck = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5B2__iterate_node, i32 noundef 1674, i64 noundef %i.ci, i64 noundef %i.cj, ptr noundef nonnull @.str.22) #4 ; 0 uses
  br label %.thread

.thread:                                          ; preds = %bb.o, %bb.p, %.thread132.us
  %.5.us.ph = phi i32 [ %i.bx, %.thread132.us ], [ %i.cd, %bb.p ], [ %i.bx, %bb.o ]
  %indvars.iv.next171185 = add nuw nsw i64 %indvars.iv170, 1
  br label %.critedge

bb.q:                                             ; preds = %.thread129.us
  %indvars.iv.next171 = add nuw nsw i64 %indvars.iv170, 1 ; 3 uses
  %i.cl = load i16, ptr %i.bb, align 8, !tbaa !44
  %i.cm = zext i16 %i.cl to i64
  %i.cn = icmp samesign ult i64 %indvars.iv.next171, %i.cm
  %.not.us = icmp eq i32 %i.cd, 0                 ; 2 uses
  %or.cond116.us = and i1 %.not.us, %i.cn
  br i1 %or.cond116.us, label %.lr.ph.split.us, label %.critedge, !llvm.loop !95

.thread129:                                       ; preds = %.lr.ph, %bb.r
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.r ], [ 0, %.lr.ph ] ; 3 uses
  %i.co = load ptr, ptr %i.bv, align 8, !tbaa !36
  %i.cp = getelementptr inbounds nuw [8 x i8], ptr %i.co, i64 %indvars.iv
  %i.cq = load i64, ptr %i.cp, align 8, !tbaa !19
  %i.cr = getelementptr inbounds nuw i8, ptr %i.as, i64 %i.cq
  %i.cs = tail call i32 %4(ptr noundef nonnull %i.cr, ptr noundef %5) #4 ; 4 uses
  %i.ct = icmp slt i32 %i.cs, 0
  br i1 %i.ct, label %.thread191, label %bb.r

.thread191:                                       ; preds = %.thread129
  %i.cu = load i64, ptr @H5E_BTREE_g, align 8, !tbaa !19
  %i.cv = load i64, ptr @H5E_CANTLIST_g, align 8, !tbaa !19
  %i.cw = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5B2__iterate_node, i32 noundef 1679, i64 noundef %i.cu, i64 noundef %i.cv, ptr noundef nonnull @.str.23) #4 ; 0 uses
  %indvars.iv.next192 = add nuw nsw i64 %indvars.iv, 1
  br label %.critedge

bb.r:                                             ; preds = %.thread129
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %i.cx = load i16, ptr %i.bb, align 8, !tbaa !44
  %i.cy = zext i16 %i.cx to i64
  %i.cz = icmp samesign ult i64 %indvars.iv.next, %i.cy
  %.not = icmp eq i32 %i.cs, 0                    ; 2 uses
  %or.cond116 = and i1 %.not, %i.cz
  br i1 %or.cond116, label %.thread129, label %.critedge, !llvm.loop !95

.critedge:                                        ; preds = %bb.r, %bb.q, %.thread191, %.thread, %bb.n
  %.083.lcssa = phi i64 [ 0, %bb.n ], [ %indvars.iv.next171, %bb.q ], [ %indvars.iv.next171185, %.thread ], [ %indvars.iv.next192, %.thread191 ], [ %indvars.iv.next, %bb.r ]
  %.3.lcssa = phi i32 [ 0, %bb.n ], [ %i.cd, %bb.q ], [ %.5.us.ph, %.thread ], [ %i.cs, %.thread191 ], [ %i.cs, %bb.r ]
  %.not.lcssa = phi i1 [ true, %bb.n ], [ %.not.us, %bb.q ], [ false, %.thread ], [ false, %.thread191 ], [ %.not, %bb.r ]
  %or.cond = and i1 %i.g, %.not.lcssa
  br i1 %or.cond, label %bb.s, label %bb.t

bb.s:                                             ; preds = %.critedge
  %i.da = add i16 %1, -1
  %i.db = getelementptr inbounds nuw [24 x i8], ptr %.187, i64 %.083.lcssa
  %i.dc = tail call i32 @H5B2__iterate_node(ptr noundef %0, i16 noundef zeroext %i.da, ptr noundef %i.db, ptr noundef %.295., ptr noundef %4, ptr noundef %5) ; 4 uses
  %i.dd = icmp slt i32 %i.dc, 0
  br i1 %i.dd, label %.split, label %bb.t

.split:                                           ; preds = %bb.s
  %i.de = load i64, ptr @H5E_BTREE_g, align 8, !tbaa !19
  %i.df = load i64, ptr @H5E_CANTLIST_g, align 8, !tbaa !19
  %i.dg = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5B2__iterate_node, i32 noundef 1686, i64 noundef %i.de, i64 noundef %i.df, ptr noundef nonnull @.str.22) #4 ; 0 uses
  br i1 %i.bs, label %bb.u, label %.thread136

bb.t:                                             ; preds = %.critedge, %bb.s
  %.6 = phi i32 [ %i.dc, %bb.s ], [ %.3.lcssa, %.critedge ] ; 2 uses
  br i1 %i.bs, label %bb.u, label %.thread136

bb.u:                                             ; preds = %.split, %bb.t
  %.6147 = phi i32 [ %i.dc, %.split ], [ %.6, %bb.t ]
  %i.dh = tail call i32 @H5AC_unpin_entry(ptr noundef nonnull %.295) #4
  %i.di = icmp slt i32 %i.dh, 0
  br i1 %i.di, label %bb.v, label %.thread136

bb.v:                                             ; preds = %bb.u
  %i.dj = load i64, ptr @H5E_BTREE_g, align 8, !tbaa !19
  %i.dk = load i64, ptr @H5E_CANTUNPIN_g, align 8, !tbaa !19
  %i.dl = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5B2__iterate_node, i32 noundef 1691, i64 noundef %i.dj, i64 noundef %i.dk, ptr noundef nonnull @.str.24) #4 ; 0 uses
  br label %.thread136

.thread136:                                       ; preds = %bb.m, %bb.k, %.split, %bb.v, %bb.u, %bb.t
  %.7 = phi i32 [ -1, %bb.v ], [ %.6147, %bb.u ], [ %.6, %bb.t ], [ %i.dc, %.split ], [ -1, %bb.m ], [ -1, %bb.k ] ; 2 uses
  %.not113 = icmp eq ptr %.187, null
  br i1 %.not113, label %bb.x, label %bb.w

bb.w:                                             ; preds = %.thread136
  %i.dm = load ptr, ptr %i.an, align 8, !tbaa !59
  %i.dn = getelementptr inbounds nuw [48 x i8], ptr %i.dm, i64 %.pre-phi
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 40
  %i.dp = load ptr, ptr %i.do, align 8, !tbaa !75
  %i.dq = tail call ptr @H5FL_fac_free(ptr noundef %i.dp, ptr noundef nonnull %.187) #4 ; 0 uses
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %.thread136
  %.not114 = icmp eq ptr %i.as, null
  br i1 %.not114, label %.thread154, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.dr = load ptr, ptr %i.an, align 8, !tbaa !59
  %i.ds = getelementptr inbounds nuw [48 x i8], ptr %i.dr, i64 %.pre-phi
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 32
  %i.du = load ptr, ptr %i.dt, align 8, !tbaa !74
  %i.dv = tail call ptr @H5FL_fac_free(ptr noundef %i.du, ptr noundef nonnull %i.as) #4 ; 0 uses
  br label %.thread154

.thread154:                                       ; preds = %bb.i, %bb.d, %bb.f, %bb.a, %bb.y, %bb.x
  %.8 = phi i32 [ %.7, %bb.y ], [ %.7, %bb.x ], [ 0, %bb.a ], [ -1, %bb.f ], [ -1, %bb.d ], [ -1, %bb.i ]
  ret i32 %.8
}

declare noalias ptr @H5FL_fac_malloc(ptr noundef) local_unnamed_addr #2

declare i32 @H5AC_unpin_entry(ptr noundef) local_unnamed_addr #2

declare ptr @H5FL_fac_free(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define noundef range(i32 -1, 1) i32 @H5B2__delete_node(ptr noundef %0, i16 noundef zeroext %1, ptr noundef %2, ptr noundef %3, ptr nofree noundef readonly captures(address_is_null) %4, ptr noundef %5) local_unnamed_addr #0 {
bb.a:
  %i.a = load i8, ptr @H5B2_init_g, align 1, !tbaa !8, !range !10, !noundef !11
  %i.b = trunc nuw i8 %i.a to i1
  %i.c = load i8, ptr @H5_libterm_g, align 1, !range !10
  %i.d = trunc nuw i8 %i.c to i1
  %i.e = xor i1 %i.d, true
  %i.f = select i1 %i.b, i1 true, i1 %i.e
  br i1 %i.f, label %bb.b, label %bb.l, !prof !12

bb.b:                                             ; preds = %bb.a
  %.not = icmp eq i16 %1, 0
  br i1 %.not, label %bb.g, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = tail call ptr @H5B2__protect_internal(ptr noundef %0, ptr noundef %3, ptr noundef %2, i16 noundef zeroext %1, i1 noundef zeroext false, i32 noundef 0) #4 ; 7 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %.thread.thread, label %bb.d

.thread.thread:                                   ; preds = %bb.c
  %i.i = load i64, ptr @H5E_BTREE_g, align 8, !tbaa !19
  %i.j = load i64, ptr @H5E_CANTPROTECT_g, align 8, !tbaa !19
  %i.k = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5B2__delete_node, i32 noundef 1734, i64 noundef %i.i, i64 noundef %i.j, ptr noundef nonnull @.str.3) #4 ; 0 uses
  br label %bb.l

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %i.g, i64 256
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !35
  %i.n = getelementptr inbounds nuw i8, ptr %i.g, i64 272
  %i.o = add i16 %1, -1
  %i.p = getelementptr inbounds nuw i8, ptr %i.g, i64 264
  br label %bb.f

bb.e:                                             ; preds = %bb.f
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %i.q = load i16, ptr %i.n, align 8, !tbaa !22
  %i.r = zext i16 %i.q to i64
  %.not67.not = icmp samesign ult i64 %indvars.iv, %i.r
  br i1 %.not67.not, label %bb.f, label %.loopexit, !llvm.loop !96

bb.f:                                             ; preds = %bb.d, %bb.e
  %indvars.iv = phi i64 [ 0, %bb.d ], [ %indvars.iv.next, %bb.e ] ; 3 uses
  %i.s = load ptr, ptr %i.p, align 8, !tbaa !43
  %i.t = getelementptr inbounds nuw [24 x i8], ptr %i.s, i64 %indvars.iv
  %i.u = tail call i32 @H5B2__delete_node(ptr noundef %0, i16 noundef zeroext %i.o, ptr noundef %i.t, ptr noundef nonnull %i.g, ptr noundef %4, ptr noundef %5)
  %i.v = icmp slt i32 %i.u, 0
  br i1 %i.v, label %.thread.thread100, label %bb.e

.thread.thread100:                                ; preds = %bb.f
  %i.w = load i64, ptr @H5E_BTREE_g, align 8, !tbaa !19
  %i.x = load i64, ptr @H5E_CANTLIST_g, align 8, !tbaa !19
  %i.y = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5B2__delete_node, i32 noundef 1745, i64 noundef %i.w, i64 noundef %i.x, ptr noundef nonnull @.str.25) #4 ; 0 uses
  br label %.thread88

bb.g:                                             ; preds = %bb.b
  %i.z = tail call ptr @H5B2__protect_leaf(ptr noundef %0, ptr noundef %3, ptr noundef %2, i1 noundef zeroext false, i32 noundef 0) #4 ; 3 uses
  %i.aa = icmp eq ptr %i.z, null
  br i1 %i.aa, label %.thread83, label %.thread77

.thread77:                                        ; preds = %bb.g
  %i.ab = getelementptr inbounds nuw i8, ptr %i.z, i64 256
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !93
  br label %.loopexit

.thread83:                                        ; preds = %bb.g
  %i.ad = load i64, ptr @H5E_BTREE_g, align 8, !tbaa !19
  %i.ae = load i64, ptr @H5E_CANTPROTECT_g, align 8, !tbaa !19
  %i.af = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5B2__delete_node, i32 noundef 1753, i64 noundef %i.ad, i64 noundef %i.ae, ptr noundef nonnull @.str.5) #4 ; 0 uses
  br label %bb.l

.loopexit:                                        ; preds = %bb.e, %.thread77
  %.261 = phi ptr [ %i.z, %.thread77 ], [ %i.g, %bb.e ] ; 4 uses
  %.258 = phi ptr [ %i.ac, %.thread77 ], [ %i.m, %bb.e ]
  %.251 = phi ptr [ @H5AC_BT2_LEAF, %.thread77 ], [ @H5AC_BT2_INT, %bb.e ] ; 4 uses
  %.not68 = icmp eq ptr %4, null
  br i1 %.not68, label %.thread88, label %.preheader

.preheader:                                       ; preds = %.loopexit
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.ah = load i16, ptr %i.ag, align 8, !tbaa !44
  %.not107 = icmp eq i16 %i.ah, 0
  br i1 %.not107, label %.thread88, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 360
  br label %bb.i

bb.h:                                             ; preds = %bb.i
  %indvars.iv.next110 = add nuw nsw i64 %indvars.iv109, 1 ; 2 uses
  %i.aj = load i16, ptr %i.ag, align 8, !tbaa !44
  %i.ak = zext i16 %i.aj to i64
  %i.al = icmp samesign ult i64 %indvars.iv.next110, %i.ak
  br i1 %i.al, label %bb.i, label %.thread88, !llvm.loop !97

bb.i:                                             ; preds = %.lr.ph, %bb.h
  %indvars.iv109 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next110, %bb.h ] ; 2 uses
  %i.am = load ptr, ptr %i.ai, align 8, !tbaa !36
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.am, i64 %indvars.iv109
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !19
  %i.ap = getelementptr inbounds nuw i8, ptr %.258, i64 %i.ao
  %i.aq = tail call i32 %4(ptr noundef %i.ap, ptr noundef %5) #4
  %i.ar = icmp slt i32 %i.aq, 0
  br i1 %i.ar, label %bb.j, label %bb.h

bb.j:                                             ; preds = %bb.i
  %i.as = load i64, ptr @H5E_BTREE_g, align 8, !tbaa !19
  %i.at = load i64, ptr @H5E_CANTLIST_g, align 8, !tbaa !19
  %i.au = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5B2__delete_node, i32 noundef 1769, i64 noundef %i.as, i64 noundef %i.at, ptr noundef nonnull @.str.23) #4 ; 0 uses
  br label %.thread88

.thread88:                                        ; preds = %bb.h, %.preheader, %bb.j, %.thread.thread100, %.loopexit
  %.395 = phi ptr [ @H5AC_BT2_INT, %.thread.thread100 ], [ %.251, %.loopexit ], [ %.251, %bb.j ], [ %.251, %.preheader ], [ %.251, %bb.h ]
  %.494 = phi i32 [ -1, %.thread.thread100 ], [ 0, %.loopexit ], [ -1, %bb.j ], [ 0, %.preheader ], [ 0, %bb.h ]
  %.36293 = phi ptr [ %i.g, %.thread.thread100 ], [ %.261, %.loopexit ], [ %.261, %bb.j ], [ %.261, %.preheader ], [ %.261, %bb.h ]
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !57
  %i.ax = load i64, ptr %2, align 8, !tbaa !47
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 392
  %i.az = load i8, ptr %i.ay, align 8, !tbaa !46, !range !10, !noundef !11
  %i.ba = trunc nuw i8 %i.az to i1
  %i.bb = select i1 %i.ba, i32 1, i32 257
  %i.bc = tail call i32 @H5AC_unprotect(ptr noundef %i.aw, ptr noundef nonnull %.395, i64 noundef %i.ax, ptr noundef nonnull %.36293, i32 noundef %i.bb) #4
  %i.bd = icmp slt i32 %i.bc, 0
  br i1 %i.bd, label %bb.k, label %bb.l

bb.k:                                             ; preds = %.thread88
  %i.be = load i64, ptr @H5E_BTREE_g, align 8, !tbaa !19
  %i.bf = load i64, ptr @H5E_CANTUNPROTECT_g, align 8, !tbaa !19
  %i.bg = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5B2__delete_node, i32 noundef 1778, i64 noundef %i.be, i64 noundef %i.bf, ptr noundef nonnull @.str.21) #4 ; 0 uses
  br label %bb.l

bb.l:                                             ; preds = %.thread.thread, %.thread83, %bb.a, %bb.k, %.thread88
  %.5 = phi i32 [ -1, %bb.k ], [ %.494, %.thread88 ], [ -1, %.thread.thread ], [ 0, %bb.a ], [ -1, %.thread83 ]
  ret i32 %.5
}

; Function Attrs: nounwind uwtable
define noundef range(i32 -1, 1) i32 @H5B2__node_size(ptr noundef %0, i16 noundef zeroext %1, ptr noundef %2, ptr noundef %3, ptr nofree noundef captures(none) %4) local_unnamed_addr #0 {
bb.a:
  %i.a = load i8, ptr @H5B2_init_g, align 1, !tbaa !8, !range !10, !noundef !11
  %i.b = trunc nuw i8 %i.a to i1
  %i.c = load i8, ptr @H5_libterm_g, align 1, !range !10
  %i.d = trunc nuw i8 %i.c to i1
  %i.e = xor i1 %i.d, true
  %i.f = select i1 %i.b, i1 true, i1 %i.e
  br i1 %i.f, label %bb.b, label %bb.k, !prof !12

bb.b:                                             ; preds = %bb.a
  %i.g = tail call ptr @H5B2__protect_internal(ptr noundef %0, ptr noundef %3, ptr noundef %2, i16 noundef zeroext %1, i1 noundef zeroext false, i32 noundef 128) #4 ; 5 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %bb.h, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = icmp ugt i16 %1, 1
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 272 ; 2 uses
  br i1 %i.i, label %.preheader, label %bb.g

.preheader:                                       ; preds = %bb.c
  %i.k = add i16 %1, -1
  %i.l = getelementptr inbounds nuw i8, ptr %i.g, i64 264
  br label %bb.e

bb.d:                                             ; preds = %bb.e
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %i.m = load i16, ptr %i.j, align 8, !tbaa !22
  %i.n = zext i16 %i.m to i64
  %.not.not = icmp samesign ult i64 %indvars.iv, %i.n
  br i1 %.not.not, label %bb.e, label %.thread.loopexit, !llvm.loop !98

bb.e:                                             ; preds = %.preheader, %bb.d
  %indvars.iv = phi i64 [ 0, %.preheader ], [ %indvars.iv.next, %bb.d ] ; 3 uses
  %i.o = load ptr, ptr %i.l, align 8, !tbaa !43
  %i.p = getelementptr inbounds nuw [24 x i8], ptr %i.o, i64 %indvars.iv
  %i.q = tail call i32 @H5B2__node_size(ptr noundef %0, i16 noundef zeroext %i.k, ptr noundef %i.p, ptr noundef nonnull %i.g, ptr noundef %4)
  %i.r = icmp slt i32 %i.q, 0
  br i1 %i.r, label %bb.f, label %bb.d

bb.f:                                             ; preds = %bb.e
  %i.s = load i64, ptr @H5E_BTREE_g, align 8, !tbaa !19
  %i.t = load i64, ptr @H5E_CANTLIST_g, align 8, !tbaa !19
  %i.u = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5B2__node_size, i32 noundef 1821, i64 noundef %i.s, i64 noundef %i.t, ptr noundef nonnull @.str.22) #4 ; 0 uses
  br label %bb.i

bb.g:                                             ; preds = %bb.c
  %i.v = load i16, ptr %i.j, align 8, !tbaa !22
  %i.w = zext i16 %i.v to i64
  %i.x = add nuw nsw i64 %i.w, 1
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 276
  %i.z = load i32, ptr %i.y, align 4, !tbaa !60
  %i.aa = zext i32 %i.z to i64                    ; 2 uses
  %i.ab = mul nuw nsw i64 %i.x, %i.aa
  %i.ac = load i64, ptr %4, align 8, !tbaa !19
  %i.ad = add i64 %i.ab, %i.ac
  br label %.thread

.thread.loopexit:                                 ; preds = %bb.d
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 276
  %.pre = load i32, ptr %.phi.trans.insert, align 4, !tbaa !60
  %.pre42 = load i64, ptr %4, align 8, !tbaa !19
  %.pre43 = zext i32 %.pre to i64
  br label %.thread

.thread:                                          ; preds = %.thread.loopexit, %bb.g
  %.pre-phi = phi i64 [ %.pre43, %.thread.loopexit ], [ %i.aa, %bb.g ]
  %i.ae = phi i64 [ %.pre42, %.thread.loopexit ], [ %i.ad, %bb.g ]
  %i.af = add i64 %i.ae, %.pre-phi
  store i64 %i.af, ptr %4, align 8, !tbaa !19
  br label %bb.i

bb.h:                                             ; preds = %bb.b
  %i.ag = load i64, ptr @H5E_BTREE_g, align 8, !tbaa !19
  %i.ah = load i64, ptr @H5E_CANTPROTECT_g, align 8, !tbaa !19
  %i.ai = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5B2__node_size, i32 noundef 1811, i64 noundef %i.ag, i64 noundef %i.ah, ptr noundef nonnull @.str.3) #4 ; 0 uses
  br label %bb.k

bb.i:                                             ; preds = %bb.f, %.thread
  %.2.ph = phi i32 [ -1, %bb.f ], [ 0, %.thread ]
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !57
  %i.al = load i64, ptr %2, align 8, !tbaa !47
  %i.am = tail call i32 @H5AC_unprotect(ptr noundef %i.ak, ptr noundef nonnull @H5AC_BT2_INT, i64 noundef %i.al, ptr noundef nonnull %i.g, i32 noundef 0) #4
  %i.an = icmp slt i32 %i.am, 0
  br i1 %i.an, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ao = load i64, ptr @H5E_BTREE_g, align 8, !tbaa !19
  %i.ap = load i64, ptr @H5E_CANTUNPROTECT_g, align 8, !tbaa !19
  %i.aq = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5B2__node_size, i32 noundef 1831, i64 noundef %i.ao, i64 noundef %i.ap, ptr noundef nonnull @.str.21) #4 ; 0 uses
  br label %bb.k

bb.k:                                             ; preds = %bb.h, %bb.a, %bb.j, %bb.i
  %.3 = phi i32 [ -1, %bb.j ], [ %.2.ph, %bb.i ], [ -1, %bb.h ], [ 0, %bb.a ]
  ret i32 %.3
}

; Function Attrs: nounwind uwtable
define range(i32 -1, 1) i32 @H5B2__create_flush_depend(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = load i8, ptr @H5B2_init_g, align 1, !tbaa !8, !range !10, !noundef !11
  %i.b = trunc nuw i8 %i.a to i1
  %i.c = load i8, ptr @H5_libterm_g, align 1, !range !10
  %i.d = trunc nuw i8 %i.c to i1
  %i.e = xor i1 %i.d, true
  %i.f = select i1 %i.b, i1 true, i1 %i.e
  br i1 %i.f, label %bb.b, label %bb.d, !prof !12

bb.b:                                             ; preds = %bb.a
  %i.g = tail call i32 @H5AC_create_flush_dependency(ptr noundef %0, ptr noundef %1) #4
  %i.h = icmp slt i32 %i.g, 0
  br i1 %i.h, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.i = load i64, ptr @H5E_BTREE_g, align 8, !tbaa !19
  %i.j = load i64, ptr @H5E_CANTDEPEND_g, align 8, !tbaa !19
  %i.k = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5B2__create_flush_depend, i32 noundef 1858, i64 noundef %i.i, i64 noundef %i.j, ptr noundef nonnull @.str.26) #4 ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %.0 = phi i32 [ -1, %bb.c ], [ 0, %bb.b ], [ 0, %bb.a ]
  ret i32 %.0
}

declare i32 @H5AC_create_flush_dependency(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define range(i32 -1, 1) i32 @H5B2__update_flush_depend(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #4
  store i32 0, ptr %i.a, align 4, !tbaa !13
  %i.b = load i8, ptr @H5B2_init_g, align 1, !tbaa !8, !range !10, !noundef !11
  %i.c = trunc nuw i8 %i.b to i1
  %i.d = load i8, ptr @H5_libterm_g, align 1, !range !10
  %i.e = trunc nuw i8 %i.d to i1
  %i.f = xor i1 %i.e, true
  %i.g = select i1 %i.c, i1 true, i1 %i.f
  br i1 %i.g, label %bb.b, label %bb.p, !prof !12

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 288 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !57
  %i.j = load i64, ptr %2, align 8, !tbaa !47
  %i.k = call i32 @H5AC_get_entry_status(ptr noundef %i.i, i64 noundef %i.j, ptr noundef nonnull %i.a) #4
  %i.l = icmp slt i32 %i.k, 0
  br i1 %i.l, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.m = load i64, ptr @H5E_BTREE_g, align 8, !tbaa !19
  %i.n = load i64, ptr @H5E_CANTGET_g, align 8, !tbaa !19
  %i.o = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5B2__update_flush_depend, i32 noundef 1893, i64 noundef %i.m, i64 noundef %i.n, ptr noundef nonnull @.str.27) #4 ; 0 uses
  br label %bb.p

bb.d:                                             ; preds = %bb.b
  %i.p = load i32, ptr %i.a, align 4, !tbaa !13
  %i.q = and i32 %i.p, 1
  %.not = icmp eq i32 %i.q, 0
  br i1 %.not, label %bb.p, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.r = icmp ugt i32 %1, 1
  br i1 %i.r, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.s = trunc i32 %1 to i16
  %i.t = add i16 %i.s, -1
  %i.u = call ptr @H5B2__protect_internal(ptr noundef nonnull %0, ptr noundef %4, ptr noundef nonnull %2, i16 noundef zeroext %i.t, i1 noundef zeroext false, i32 noundef 0) #4 ; 4 uses
  %.not69 = icmp eq ptr %i.u, null
  br i1 %.not69, label %.thread, label %.split

.thread:                                          ; preds = %bb.f
  %i.v = load i64, ptr @H5E_BTREE_g, align 8, !tbaa !19
  %i.w = load i64, ptr @H5E_CANTPROTECT_g, align 8, !tbaa !19
  %i.x = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5B2__update_flush_depend, i32 noundef 1907, i64 noundef %i.v, i64 noundef %i.w, ptr noundef nonnull @.str.3) #4 ; 0 uses
  br label %bb.p

.split:                                           ; preds = %bb.f
  %i.y = getelementptr inbounds nuw i8, ptr %i.u, i64 288 ; 2 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !99
  %i.aa = icmp eq ptr %i.z, %3
  br i1 %i.aa, label %bb.i, label %H5B2__create_flush_depend.exit.thread

bb.g:                                             ; preds = %bb.e
  %i.ab = call ptr @H5B2__protect_leaf(ptr noundef nonnull %0, ptr noundef %4, ptr noundef nonnull %2, i1 noundef zeroext false, i32 noundef 0) #4 ; 4 uses
  %.not68 = icmp eq ptr %i.ab, null
  br i1 %.not68, label %.thread77, label %bb.h

.thread77:                                        ; preds = %bb.g
  %i.ac = load i64, ptr @H5E_BTREE_g, align 8, !tbaa !19
  %i.ad = load i64, ptr @H5E_CANTPROTECT_g, align 8, !tbaa !19
  %i.ae = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5B2__update_flush_depend, i32 noundef 1924, i64 noundef %i.ac, i64 noundef %i.ad, ptr noundef nonnull @.str.5) #4 ; 0 uses
  br label %bb.p

bb.h:                                             ; preds = %bb.g
  %i.af = getelementptr inbounds nuw i8, ptr %i.ab, i64 280 ; 2 uses
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !100
  %i.ah = icmp eq ptr %i.ag, %3
  br i1 %i.ah, label %bb.i, label %H5B2__create_flush_depend.exit.thread

bb.i:                                             ; preds = %.split, %bb.h
  %.24485 = phi ptr [ @H5AC_BT2_INT, %.split ], [ @H5AC_BT2_LEAF, %bb.h ] ; 5 uses
  %.45484 = phi ptr [ %i.y, %.split ], [ %i.af, %bb.h ] ; 2 uses
  %.26282 = phi ptr [ %i.u, %.split ], [ %i.ab, %bb.h ] ; 7 uses
  %i.ai = load i8, ptr @H5B2_init_g, align 1, !tbaa !8, !range !10, !noundef !11
  %i.aj = trunc nuw i8 %i.ai to i1
  %i.ak = load i8, ptr @H5_libterm_g, align 1, !range !10
  %i.al = trunc nuw i8 %i.ak to i1
  %i.am = xor i1 %i.al, true
  %i.an = select i1 %i.aj, i1 true, i1 %i.am
  br i1 %i.an, label %bb.j, label %.thread99, !prof !12

.thread99:                                        ; preds = %bb.i
  store ptr %4, ptr %.45484, align 8, !tbaa !101
  br label %H5B2__create_flush_depend.exit.thread

bb.j:                                             ; preds = %bb.i
  %i.ao = call i32 @H5AC_destroy_flush_dependency(ptr noundef %3, ptr noundef nonnull %.26282) #4
  %i.ap = icmp slt i32 %i.ao, 0
  br i1 %i.ap, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.aq = load i64, ptr @H5E_BTREE_g, align 8, !tbaa !19
  %i.ar = load i64, ptr @H5E_CANTUNDEPEND_g, align 8, !tbaa !19
  %i.as = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5B2__destroy_flush_depend, i32 noundef 2017, i64 noundef %i.aq, i64 noundef %i.ar, ptr noundef nonnull @.str.28) #4 ; 0 uses
  %i.at = load i64, ptr @H5E_BTREE_g, align 8, !tbaa !19
  %i.au = load i64, ptr @H5E_CANTUNDEPEND_g, align 8, !tbaa !19
  %i.av = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5B2__update_flush_depend, i32 noundef 1943, i64 noundef %i.at, i64 noundef %i.au, ptr noundef nonnull @.str.28) #4 ; 0 uses
  br label %H5B2__create_flush_depend.exit.thread

bb.l:                                             ; preds = %bb.j
  %.pre = load i8, ptr @H5B2_init_g, align 1, !tbaa !8, !range !10
  %.pre96 = load i8, ptr @H5_libterm_g, align 1, !range !10
  %i.aw = trunc nuw i8 %.pre to i1
  %i.ax = trunc nuw i8 %.pre96 to i1
  %i.ay = xor i1 %i.ax, true
  %i.az = select i1 %i.aw, i1 true, i1 %i.ay
  store ptr %4, ptr %.45484, align 8, !tbaa !101
  br i1 %i.az, label %bb.m, label %H5B2__create_flush_depend.exit.thread, !prof !102

bb.m:                                             ; preds = %bb.l
  %i.ba = call i32 @H5AC_create_flush_dependency(ptr noundef %4, ptr noundef nonnull %.26282) #4
  %i.bb = icmp slt i32 %i.ba, 0
  br i1 %i.bb, label %bb.n, label %H5B2__create_flush_depend.exit.thread

bb.n:                                             ; preds = %bb.m
  %i.bc = load i64, ptr @H5E_BTREE_g, align 8, !tbaa !19
  %i.bd = load i64, ptr @H5E_CANTDEPEND_g, align 8, !tbaa !19
  %i.be = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5B2__create_flush_depend, i32 noundef 1858, i64 noundef %i.bc, i64 noundef %i.bd, ptr noundef nonnull @.str.26) #4 ; 0 uses
  %i.bf = load i64, ptr @H5E_BTREE_g, align 8, !tbaa !19
  %i.bg = load i64, ptr @H5E_CANTDEPEND_g, align 8, !tbaa !19
  %i.bh = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5B2__update_flush_depend, i32 noundef 1946, i64 noundef %i.bf, i64 noundef %i.bg, ptr noundef nonnull @.str.26) #4 ; 0 uses
  br label %H5B2__create_flush_depend.exit.thread

H5B2__create_flush_depend.exit.thread:            ; preds = %.thread99, %bb.l, %bb.m, %bb.k, %bb.n, %bb.h, %.split
  %.464.ph = phi ptr [ %i.u, %.split ], [ %i.ab, %bb.h ], [ %.26282, %bb.k ], [ %.26282, %bb.n ], [ %.26282, %bb.m ], [ %.26282, %bb.l ], [ %.26282, %.thread99 ]
  %.459.ph = phi i32 [ 0, %.split ], [ 0, %bb.h ], [ -1, %bb.k ], [ -1, %bb.n ], [ 0, %bb.m ], [ 0, %bb.l ], [ 0, %.thread99 ]
  %.4.ph = phi ptr [ @H5AC_BT2_INT, %.split ], [ @H5AC_BT2_LEAF, %bb.h ], [ %.24485, %bb.k ], [ %.24485, %bb.n ], [ %.24485, %bb.m ], [ %.24485, %bb.l ], [ %.24485, %.thread99 ]
  %i.bi = load ptr, ptr %i.h, align 8, !tbaa !57
  %i.bj = load i64, ptr %2, align 8, !tbaa !47
  %i.bk = call i32 @H5AC_unprotect(ptr noundef %i.bi, ptr noundef nonnull %.4.ph, i64 noundef %i.bj, ptr noundef nonnull %.464.ph, i32 noundef 0) #4
  %i.bl = icmp slt i32 %i.bk, 0
  br i1 %i.bl, label %bb.o, label %bb.p

bb.o:                                             ; preds = %H5B2__create_flush_depend.exit.thread
  %i.bm = load i64, ptr @H5E_BTREE_g, align 8, !tbaa !19
  %i.bn = load i64, ptr @H5E_CANTUNPROTECT_g, align 8, !tbaa !19
  %i.bo = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5B2__update_flush_depend, i32 noundef 1954, i64 noundef %i.bm, i64 noundef %i.bn, ptr noundef nonnull @.str.21) #4 ; 0 uses
  br label %bb.p

bb.p:                                             ; preds = %bb.c, %bb.d, %.thread, %.thread77, %bb.a, %H5B2__create_flush_depend.exit.thread, %bb.o
  %.5 = phi i32 [ -1, %bb.o ], [ %.459.ph, %H5B2__create_flush_depend.exit.thread ], [ 0, %bb.a ], [ -1, %bb.c ], [ 0, %bb.d ], [ -1, %.thread77 ], [ -1, %.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #4
  ret i32 %.5
}

declare i32 @H5AC_get_entry_status(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define range(i32 -1, 1) i32 @H5B2__destroy_flush_depend(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = load i8, ptr @H5B2_init_g, align 1, !tbaa !8, !range !10, !noundef !11
  %i.b = trunc nuw i8 %i.a to i1
  %i.c = load i8, ptr @H5_libterm_g, align 1, !range !10
  %i.d = trunc nuw i8 %i.c to i1
  %i.e = xor i1 %i.d, true
  %i.f = select i1 %i.b, i1 true, i1 %i.e
  br i1 %i.f, label %bb.b, label %bb.d, !prof !12

bb.b:                                             ; preds = %bb.a
  %i.g = tail call i32 @H5AC_destroy_flush_dependency(ptr noundef %0, ptr noundef %1) #4
  %i.h = icmp slt i32 %i.g, 0
  br i1 %i.h, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.i = load i64, ptr @H5E_BTREE_g, align 8, !tbaa !19
  %i.j = load i64, ptr @H5E_CANTUNDEPEND_g, align 8, !tbaa !19
  %i.k = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5B2__destroy_flush_depend, i32 noundef 2017, i64 noundef %i.i, i64 noundef %i.j, ptr noundef nonnull @.str.28) #4 ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %.0 = phi i32 [ -1, %bb.c ], [ 0, %bb.b ], [ 0, %bb.a ]
  ret i32 %.0
}

declare i32 @H5AC_destroy_flush_dependency(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #3

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "warn-stack-size"="16384" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #4 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260804081852+44c6aed9bd9b-1~exp1~20260804202019.1766)"}
!3 = !{!4, !5, i64 0}
!4 = !{!"__libc_errno", !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!9, !9, i64 0}
!9 = !{!"_Bool", !6, i64 0}
!10 = !{i8 0, i8 2}
!11 = !{}
!12 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!13 = !{!5, !5, i64 0}
!14 = !{!15, !17, i64 48}
!15 = !{!"H5B2_class_t", !5, i64 0, !16, i64 8, !18, i64 16, !17, i64 24, !17, i64 32, !17, i64 40, !17, i64 48, !17, i64 56, !17, i64 64, !17, i64 72}
!16 = !{!"p1 omnipotent char", !17, i64 0}
!17 = !{!"any pointer", !6, i64 0}
!18 = !{!"long", !6, i64 0}
!19 = !{!18, !18, i64 0}
!20 = distinct !{!20, !21}
!21 = !{!"llvm.loop.mustprogress"}
!22 = !{!23, !33, i64 272}
!23 = !{!"H5B2_internal_t", !24, i64 0, !32, i64 248, !16, i64 256, !17, i64 264, !33, i64 272, !33, i64 274, !34, i64 280, !17, i64 288, !18, i64 296}
!24 = !{!"H5C_cache_entry_t", !25, i64 0, !18, i64 8, !18, i64 16, !17, i64 24, !9, i64 32, !26, i64 40, !9, i64 48, !9, i64 49, !9, i64 50, !9, i64 51, !5, i64 52, !9, i64 56, !9, i64 57, !9, i64 58, !9, i64 59, !9, i64 60, !5, i64 64, !27, i64 72, !5, i64 80, !5, i64 84, !5, i64 88, !5, i64 92, !5, i64 96, !9, i64 100, !9, i64 101, !29, i64 104, !29, i64 112, !29, i64 120, !29, i64 128, !29, i64 136, !29, i64 144, !9, i64 152, !5, i64 156, !9, i64 160, !18, i64 168, !30, i64 176, !18, i64 184, !18, i64 192, !5, i64 200, !9, i64 204, !5, i64 208, !5, i64 212, !9, i64 216, !29, i64 224, !29, i64 232, !31, i64 240}
!25 = !{!"p1 _ZTS5H5C_t", !17, i64 0}
!26 = !{!"p1 _ZTS11H5C_class_t", !17, i64 0}
!27 = !{!"p2 _ZTS17H5C_cache_entry_t", !28, i64 0}
!28 = !{!"any p2 pointer", !17, i64 0}
!29 = !{!"p1 _ZTS17H5C_cache_entry_t", !17, i64 0}
!30 = !{!"p1 long", !17, i64 0}
!31 = !{!"p1 _ZTS14H5C_tag_info_t", !17, i64 0}
!32 = !{!"p1 _ZTS10H5B2_hdr_t", !17, i64 0}
!33 = !{!"short", !6, i64 0}
!34 = !{!"p1 _ZTS18H5AC_proxy_entry_t", !17, i64 0}
!35 = !{!23, !16, i64 256}
!36 = !{!37, !30, i64 360}
!37 = !{!"H5B2_hdr_t", !24, i64 0, !38, i64 248, !6, i64 272, !6, i64 273, !5, i64 276, !5, i64 280, !33, i64 284, !6, i64 286, !39, i64 288, !18, i64 296, !18, i64 304, !18, i64 312, !18, i64 320, !9, i64 328, !6, i64 329, !6, i64 330, !17, i64 336, !17, i64 344, !16, i64 352, !30, i64 360, !17, i64 368, !17, i64 376, !17, i64 384, !9, i64 392, !34, i64 400, !17, i64 408, !18, i64 416, !40, i64 424, !17, i64 432}
!38 = !{!"", !18, i64 0, !33, i64 8, !18, i64 16}
!39 = !{!"p1 _ZTS5H5F_t", !17, i64 0}
!40 = !{!"p1 _ZTS12H5B2_class_t", !17, i64 0}
!41 = !{!37, !40, i64 424}
!42 = !{!15, !18, i64 16}
!43 = !{!23, !17, i64 264}
!44 = !{!38, !33, i64 8}
!45 = !{!38, !18, i64 16}
!46 = !{!37, !9, i64 392}
!47 = !{!38, !18, i64 0}
!48 = !{!16, !16, i64 0}
!49 = !{!33, !33, i64 0}
!50 = distinct !{!50, !21}
!51 = distinct !{!51, !52}
!52 = !{!"llvm.loop.unroll.disable"}
!53 = distinct !{!53, !21}
!54 = distinct !{!54, !52}
!55 = !{!"branch_weights", i32 2000, i32 2002}
!56 = distinct !{!56, !21}
!57 = !{!37, !39, i64 288}
!58 = !{!37, !33, i64 284}
!59 = !{!37, !17, i64 368}
!60 = !{!37, !5, i64 276}
!61 = !{!37, !6, i64 330}
!62 = !{!37, !6, i64 286}
!63 = !{!64, !6, i64 24}
!64 = !{!"", !5, i64 0, !5, i64 4, !5, i64 8, !18, i64 16, !6, i64 24, !65, i64 32, !65, i64 40}
!65 = !{!"p1 _ZTS15H5FL_fac_head_t", !17, i64 0}
!66 = !{!37, !5, i64 280}
!67 = !{!64, !5, i64 0}
!68 = !{!37, !6, i64 272}
!69 = !{!64, !5, i64 4}
!70 = !{!37, !6, i64 273}
!71 = !{!64, !5, i64 8}
!72 = !{!64, !18, i64 16}
!73 = !{!6, !6, i64 0}
!74 = !{!64, !65, i64 32}
!75 = !{!64, !65, i64 40}
!76 = !{i64 0, i64 8, !19, i64 8, i64 2, !49, i64 16, i64 8, !19}
!77 = !{!37, !33, i64 256}
!78 = !{!37, !18, i64 248}
!79 = distinct !{!79, !21}
!80 = distinct !{!80, !52}
!81 = distinct !{!81, !21}
!82 = distinct !{!82, !52}
!83 = distinct !{!83, !21}
!84 = distinct !{!84, !52}
!85 = distinct !{!85, !21}
!86 = distinct !{!86, !52}
!87 = distinct !{!87, !21}
!88 = distinct !{!88, !52}
!89 = distinct !{!89, !21}
!90 = distinct !{!90, !52}
!91 = distinct !{!91, !21}
!92 = distinct !{!92, !52}
!93 = !{!94, !16, i64 256}
!94 = !{!"H5B2_leaf_t", !24, i64 0, !32, i64 248, !16, i64 256, !33, i64 264, !34, i64 272, !17, i64 280, !18, i64 288}
!95 = distinct !{!95, !21}
!96 = distinct !{!96, !21}
!97 = distinct !{!97, !21}
!98 = distinct !{!98, !21}
!99 = !{!23, !17, i64 288}
!100 = !{!94, !17, i64 280}
!101 = !{!17, !17, i64 0}
!102 = !{!"branch_weights", !"expected", i32 -2147483648, i32 0}
end_hunk_2
