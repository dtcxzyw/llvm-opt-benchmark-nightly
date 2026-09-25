Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/hdf5/original/H5B2int?download=true
inline.NumInlined: 14
inline.NumDeleted: 3
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 9
begin_hunk_0_@H5B2__split1:bb.a
  %epil.iter322 = phi i64 [ 0, %.epil.preheader320 ], [ %epil.iter322.next, %bb.z ]
  %i.gv = getelementptr inbounds nuw [24 x i8], ptr %.1191, i64 %indvars.iv300.epil
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gv, i64 16
  %i.gx = load i64, ptr %i.gw, align 8, !tbaa !44
  %i.gy = add i64 %i.gx, %.0297.epil              ; 2 uses
  %indvars.iv.next301.epil = add nuw nsw i64 %indvars.iv300.epil, 1
  %epil.iter322.next = add i64 %epil.iter322, 1   ; 2 uses
  %epil.iter322.cmp.not = icmp eq i64 %epil.iter322.next, %xtraiter321
  br i1 %epil.iter322.cmp.not, label %.epilog-lcssa324, label %bb.z, !llvm.loop !68

.epilog-lcssa324:                                 ; preds = %bb.z, %.unr-lcssa319
  %.lcssa = phi i64 [ %i.gu, %.unr-lcssa319 ], [ %i.gy, %bb.z ]
  %i.gz = getelementptr inbounds nuw i8, ptr %i.et, i64 16
  store i64 %.lcssa315, ptr %i.gz, align 8, !tbaa !44
  br label %bb.ab

bb.aa:                                            ; preds = %bb.u
  %i.ha = getelementptr inbounds nuw i8, ptr %i.et, i64 16
  store i64 %i.fb, ptr %i.ha, align 8, !tbaa !44
  %.mask = and i32 %i.dz, 65535
  %i.hb = zext nneg i32 %.mask to i64
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %.epilog-lcssa324
  %.sink = phi i64 [ %i.hb, %bb.aa ], [ %.lcssa, %.epilog-lcssa324 ]
  %i.hc = getelementptr inbounds nuw i8, ptr %i.ey, i64 16
  store i64 %.sink, ptr %i.hc, align 8, !tbaa !44
  %i.hd = load i16, ptr %i.g, align 8, !tbaa !33
  %i.he = add i16 %i.hd, 1
  store i16 %i.he, ptr %i.g, align 8, !tbaa !33
  %i.hf = load i32, ptr %5, align 4, !tbaa !14
  %i.hg = or i32 %i.hf, 2
  store i32 %i.hg, ptr %5, align 4, !tbaa !14
  %i.hh = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.hi = load i16, ptr %i.hh, align 8, !tbaa !43
  %i.hj = add i16 %i.hi, 1
  store i16 %i.hj, ptr %i.hh, align 8, !tbaa !43
  %.not237 = icmp eq ptr %3, null
  br i1 %.not237, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.hk = load i32, ptr %3, align 4, !tbaa !14
  %i.hl = or i32 %i.hk, 2
  store i32 %i.hl, ptr %3, align 4, !tbaa !14
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %i.hm = getelementptr inbounds nuw i8, ptr %0, i64 392
  %i.hn = load i8, ptr %i.hm, align 8, !tbaa !45, !range !11, !noundef !12
  %i.ho = trunc nuw i8 %i.hn to i1
  %or.cond = and i1 %i.ap, %i.ho
  br i1 %or.cond, label %bb.ae, label %H5B2__update_child_flush_depends.exit.thread

bb.ae:                                            ; preds = %bb.ad
  %i.hp = load i8, ptr @H5B2_init_g, align 1, !tbaa !10, !range !11, !noundef !12
  %i.hq = trunc nuw i8 %i.hp to i1
  %i.hr = load i8, ptr @H5_libterm_g, align 1, !range !11
  %i.hs = trunc nuw i8 %i.hr to i1
  %i.ht = xor i1 %i.hs, true
  %i.hu = select i1 %i.hq, i1 true, i1 %i.ht
  br i1 %i.hu, label %.lr.ph.i, label %H5B2__update_child_flush_depends.exit.thread, !prof !50

.lr.ph.i:                                         ; preds = %bb.ae
  %i.hv = load i16, ptr %.2202, align 2, !tbaa !48
  %i.hw = zext i16 %i.hv to i64
  %i.hx = add nsw i32 %i.ao, -1
  br label %bb.ag

bb.af:                                            ; preds = %bb.ag
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  %i.hy = icmp eq i64 %indvars.iv.i, %i.hw
  br i1 %i.hy, label %H5B2__update_child_flush_depends.exit.thread, label %bb.ag, !llvm.loop !0

bb.ag:                                            ; preds = %bb.af, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.af ] ; 3 uses
  %i.hz = getelementptr inbounds nuw [24 x i8], ptr %.1191, i64 %indvars.iv.i
  %i.ia = tail call i32 @H5B2__update_flush_depend(ptr noundef %0, i32 noundef %i.hx, ptr noundef %i.hz, ptr noundef nonnull %.2212, ptr noundef nonnull %.2208)
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
  %i.ij = load ptr, ptr %i.ii, align 8, !tbaa !51
  %i.ik = tail call i32 @H5AC_unprotect(ptr noundef %i.ij, ptr noundef nonnull %.2224, i64 noundef %.2220, ptr noundef nonnull %.2212, i32 noundef 2) #4
  %i.il = icmp slt i32 %i.ik, 0
  br i1 %i.il, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %H5B2__update_child_flush_depends.exit.thread
  %i.im = load i64, ptr @H5E_BTREE_g, align 8, !tbaa !19
  %i.in = load i64, ptr @H5E_CANTUNPROTECT_g, align 8, !tbaa !19
  %i.io = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5B2__split1, i32 noundef 313, i64 noundef %i.im, i64 noundef %i.in, ptr noundef nonnull @.str.7) #4 ; 0 uses
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %H5B2__update_child_flush_depends.exit.thread
  %.4.ph = phi i32 [ -1, %bb.ai ], [ %.3, %H5B2__update_child_flush_depends.exit.thread ]
  %i.ip = load ptr, ptr %i.ii, align 8, !tbaa !51
  %i.iq = tail call i32 @H5AC_unprotect(ptr noundef %i.ip, ptr noundef nonnull %.2224, i64 noundef %.2216, ptr noundef nonnull %.2208, i32 noundef 2) #4
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
  store i32 0, ptr %i.a, align 4, !tbaa !14
  call void @llvm.lifetime.start.p0(ptr nonnull %1)
  %i.b = load i8, ptr @H5B2_init_g, align 1, !tbaa !10, !range !11, !noundef !12
  %i.c = trunc nuw i8 %i.b to i1
  %i.d = load i8, ptr @H5_libterm_g, align 1, !range !11
  %i.e = trunc nuw i8 %i.d to i1
  %i.f = xor i1 %i.e, true
  %i.g = select i1 %i.c, i1 true, i1 %i.f
  br i1 %i.g, label %bb.b, label %.thread, !prof !13

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 284 ; 7 uses
  %i.i = load i16, ptr %i.h, align 4, !tbaa !52
  %i.j = add i16 %i.i, 1                          ; 2 uses
  store i16 %i.j, ptr %i.h, align 4, !tbaa !52
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 368 ; 4 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !53
  %i.m = zext i16 %i.j to i64
  %i.n = add nuw nsw i64 %i.m, 1
  %i.o = tail call ptr @H5FL_seq_realloc(ptr noundef nonnull @H5_H5B2_node_info_t_seq_free_list, ptr noundef %i.l, i64 noundef %i.n) #4 ; 3 uses
  store ptr %i.o, ptr %i.k, align 8, !tbaa !53
  %i.p = icmp eq ptr %i.o, null
  br i1 %i.p, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.q = load i64, ptr @H5E_RESOURCE_g, align 8, !tbaa !19
  %i.r = load i64, ptr @H5E_NOSPACE_g, align 8, !tbaa !19
  %i.s = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5B2__split_root, i32 noundef 351, i64 noundef %i.q, i64 noundef %i.r, ptr noundef nonnull @.str.8) #4 ; 0 uses
  br label %.thread

bb.d:                                             ; preds = %bb.b
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 276
  %i.u = load i32, ptr %i.t, align 4, !tbaa !54
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 330
  %i.w = load i8, ptr %i.v, align 2, !tbaa !69
  %i.x = zext i8 %i.w to i32
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 286
  %i.z = load i8, ptr %i.y, align 2, !tbaa !70
  %i.aa = zext i8 %i.z to i32
  %i.ab = add nuw nsw i32 %i.aa, %i.x
  %i.ac = load i16, ptr %i.h, align 4, !tbaa !52
  %i.ad = zext i16 %i.ac to i64
  %i.ae = getelementptr [48 x i8], ptr %i.o, i64 %i.ad ; 6 uses
  %i.af = getelementptr i8, ptr %i.ae, i64 -24
  %i.ag = load i8, ptr %i.af, align 8, !tbaa !71
  %i.ah = zext i8 %i.ag to i32
  %i.ai = add nuw nsw i32 %i.ab, %i.ah            ; 2 uses
  %.neg82 = add i32 %i.u, -10
  %i.aj = sub i32 %.neg82, %i.ai
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 280
  %i.al = load i32, ptr %i.ak, align 8, !tbaa !72
  %i.am = add i32 %i.ai, %i.al
  %i.an = udiv i32 %i.aj, %i.am                   ; 5 uses
  store i32 %i.an, ptr %i.ae, align 8, !tbaa !73
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ae, i64 4
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 273
  %i.ar = load i8, ptr %i.ao, align 8, !tbaa !74
  %2 = zext i8 %i.ar to i32
  %3 = mul i32 %i.an, %2
  %4 = load i8, ptr %i.aq, align 1, !tbaa !75
  %5 = zext i8 %4 to i32
  %i.as = mul i32 %i.an, %5
  %i.at = insertelement <2 x i32> poison, i32 %3, i64 0
  %i.au = insertelement <2 x i32> %i.at, i32 %i.as, i64 1
  %i.av = udiv <2 x i32> %i.au, splat (i32 100)
  store <2 x i32> %i.av, ptr %i.ap, align 4, !tbaa !14
  %i.aw = add i32 %i.an, 1
  %i.ax = zext i32 %i.aw to i64
  %i.ay = getelementptr i8, ptr %i.ae, i64 -32
  %i.az = load i64, ptr %i.ay, align 8, !tbaa !76
  %i.ba = mul i64 %i.az, %i.ax
  %i.bb = zext i32 %i.an to i64                   ; 2 uses
  %i.bc = add i64 %i.ba, %i.bb                    ; 9 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  store i64 %i.bc, ptr %i.bd, align 8, !tbaa !76
  %i.be = lshr i64 %i.bc, 32                      ; 2 uses
  %.not.i.i = icmp eq i64 %i.be, 0
  br i1 %.not.i.i, label %bb.l, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.bf = lshr i64 %i.bc, 48                      ; 2 uses
  %.not26.i.i = icmp eq i64 %i.bf, 0
  br i1 %.not26.i.i, label %bb.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.bg = lshr i64 %i.bc, 56                      ; 2 uses
  %.not28.i.i = icmp eq i64 %i.bg, 0
  br i1 %.not28.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bh = getelementptr inbounds nuw i8, ptr @LogTable256, i64 %i.bg
  %i.bi = load i8, ptr %i.bh, align 1, !tbaa !77
  %i.bj = zext i8 %i.bi to i16
  %i.bk = add nuw nsw i16 %i.bj, 56
  br label %H5VM_limit_enc_size.exit

bb.h:                                             ; preds = %bb.f
  %i.bl = getelementptr inbounds nuw i8, ptr @LogTable256, i64 %i.bf
  %i.bm = load i8, ptr %i.bl, align 1, !tbaa !77
  %i.bn = zext i8 %i.bm to i16
  %i.bo = add nuw nsw i16 %i.bn, 48
  br label %H5VM_limit_enc_size.exit

bb.i:                                             ; preds = %bb.e
  %i.bp = lshr i64 %i.bc, 40                      ; 2 uses
  %.not27.i.i = icmp eq i64 %i.bp, 0
  br i1 %.not27.i.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bq = getelementptr inbounds nuw i8, ptr @LogTable256, i64 %i.bp
  %i.br = load i8, ptr %i.bq, align 1, !tbaa !77
  %i.bs = zext i8 %i.br to i16
  %i.bt = add nuw nsw i16 %i.bs, 40
  br label %H5VM_limit_enc_size.exit

bb.k:                                             ; preds = %bb.i
  %i.bu = getelementptr inbounds nuw i8, ptr @LogTable256, i64 %i.be
  %i.bv = load i8, ptr %i.bu, align 1, !tbaa !77
  %i.bw = zext i8 %i.bv to i16
  %i.bx = add nuw nsw i16 %i.bw, 32
  br label %H5VM_limit_enc_size.exit

bb.l:                                             ; preds = %bb.d
  %i.by = lshr i64 %i.bc, 16                      ; 2 uses
  %.not23.i.i = icmp eq i64 %i.by, 0
  br i1 %.not23.i.i, label %bb.p, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bz = lshr i64 %i.bc, 24                      ; 2 uses
  %.not25.i.i = icmp eq i64 %i.bz, 0
  br i1 %.not25.i.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ca = getelementptr inbounds nuw i8, ptr @LogTable256, i64 %i.bz
  %i.cb = load i8, ptr %i.ca, align 1, !tbaa !77
  %i.cc = zext i8 %i.cb to i16
  %i.cd = add nuw nsw i16 %i.cc, 24
  br label %H5VM_limit_enc_size.exit

bb.o:                                             ; preds = %bb.m
  %i.ce = getelementptr inbounds nuw i8, ptr @LogTable256, i64 %i.by
  %i.cf = load i8, ptr %i.ce, align 1, !tbaa !77
  %i.cg = zext i8 %i.cf to i16
  %i.ch = add nuw nsw i16 %i.cg, 16
  br label %H5VM_limit_enc_size.exit

bb.p:                                             ; preds = %bb.l
  %i.ci = lshr i64 %i.bc, 8                       ; 2 uses
  %.not24.i.i = icmp eq i64 %i.ci, 0
  br i1 %.not24.i.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.cj = getelementptr inbounds nuw i8, ptr @LogTable256, i64 %i.ci
  %i.ck = load i8, ptr %i.cj, align 1, !tbaa !77
  %i.cl = zext i8 %i.ck to i16
  %i.cm = add nuw nsw i16 %i.cl, 8
  br label %H5VM_limit_enc_size.exit

bb.r:                                             ; preds = %bb.p
  %i.cn = getelementptr inbounds nuw i8, ptr @LogTable256, i64 %i.bc
  %i.co = load i8, ptr %i.cn, align 1, !tbaa !77
  %i.cp = zext i8 %i.co to i16
  br label %H5VM_limit_enc_size.exit

H5VM_limit_enc_size.exit:                         ; preds = %bb.g, %bb.h, %bb.j, %bb.k, %bb.n, %bb.o, %bb.q, %bb.r
  %.0.i.i = phi i16 [ %i.ch, %bb.o ], [ %i.bo, %bb.h ], [ %i.bx, %bb.k ], [ %i.bk, %bb.g ], [ %i.bt, %bb.j ], [ %i.cd, %bb.n ], [ %i.cm, %bb.q ], [ %i.cp, %bb.r ]
  %i.cq = lshr i16 %.0.i.i, 3
  %i.cr = trunc nuw nsw i16 %i.cq to i8
  %i.cs = add nuw nsw i8 %i.cr, 1
  %i.ct = getelementptr inbounds nuw i8, ptr %i.ae, i64 24
  store i8 %i.cs, ptr %i.ct, align 8, !tbaa !71
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 424
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !40
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 16
  %i.cx = load i64, ptr %i.cw, align 8, !tbaa !41
  %i.cy = mul i64 %i.cx, %i.bb
  %i.cz = tail call ptr @H5FL_fac_init(i64 noundef %i.cy) #4 ; 2 uses
  %i.da = load ptr, ptr %i.k, align 8, !tbaa !53
  %i.db = load i16, ptr %i.h, align 4, !tbaa !52
  %i.dc = zext i16 %i.db to i64
  %i.dd = getelementptr inbounds nuw [48 x i8], ptr %i.da, i64 %i.dc ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 32
  store ptr %i.cz, ptr %i.de, align 8, !tbaa !57
  %i.df = icmp eq ptr %i.cz, null
  br i1 %i.df, label %bb.s, label %bb.t

bb.s:                                             ; preds = %H5VM_limit_enc_size.exit
  %i.dg = load i64, ptr @H5E_RESOURCE_g, align 8, !tbaa !19
  %i.dh = load i64, ptr @H5E_CANTINIT_g, align 8, !tbaa !19
  %i.di = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5B2__split_root, i32 noundef 365, i64 noundef %i.dg, i64 noundef %i.dh, ptr noundef nonnull @.str.9) #4 ; 0 uses
  br label %.thread

bb.t:                                             ; preds = %H5VM_limit_enc_size.exit
  %i.dj = load i32, ptr %i.dd, align 8, !tbaa !73
  %i.dk = add i32 %i.dj, 1
  %i.dl = zext i32 %i.dk to i64
  %i.dm = mul nuw nsw i64 %i.dl, 24
  %i.dn = tail call ptr @H5FL_fac_init(i64 noundef %i.dm) #4 ; 2 uses
  %i.do = load ptr, ptr %i.k, align 8, !tbaa !53
  %i.dp = load i16, ptr %i.h, align 4, !tbaa !52  ; 2 uses
  %i.dq = zext i16 %i.dp to i64
  %i.dr = getelementptr inbounds nuw [48 x i8], ptr %i.do, i64 %i.dq
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 40
  store ptr %i.dn, ptr %i.ds, align 8, !tbaa !58
  %i.dt = icmp eq ptr %i.dn, null
  br i1 %i.dt, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.du = load i64, ptr @H5E_RESOURCE_g, align 8, !tbaa !19
  %i.dv = load i64, ptr @H5E_CANTINIT_g, align 8, !tbaa !19
  %i.dw = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5B2__split_root, i32 noundef 369, i64 noundef %i.du, i64 noundef %i.dv, ptr noundef nonnull @.str.10) #4 ; 0 uses
  br label %.thread

bb.v:                                             ; preds = %bb.t
  %i.dx = getelementptr inbounds nuw i8, ptr %0, i64 248 ; 5 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %i.dx, i64 24, i1 false), !tbaa.struct !78
  %i.dy = getelementptr inbounds nuw i8, ptr %0, i64 256
  store i16 0, ptr %i.dy, align 8, !tbaa !59
  %i.dz = tail call i32 @H5B2__create_internal(ptr noundef nonnull %0, ptr noundef nonnull %0, ptr noundef nonnull %i.dx, i16 noundef zeroext %i.dp) #4
  %i.ea = icmp slt i32 %i.dz, 0
  br i1 %i.ea, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.eb = load i64, ptr @H5E_BTREE_g, align 8, !tbaa !19
  %i.ec = load i64, ptr @H5E_CANTINIT_g, align 8, !tbaa !19
  %i.ed = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5B2__split_root, i32 noundef 377, i64 noundef %i.eb, i64 noundef %i.ec, ptr noundef nonnull @.str.2) #4 ; 0 uses
  br label %.thread

bb.x:                                             ; preds = %bb.v
  %i.ee = load i16, ptr %i.h, align 4, !tbaa !52
  %i.ef = tail call ptr @H5B2__protect_internal(ptr noundef nonnull %0, ptr noundef nonnull %0, ptr noundef nonnull %i.dx, i16 noundef zeroext %i.ee, i1 noundef zeroext false, i32 noundef 0) #4 ; 4 uses
  %i.eg = icmp eq ptr %i.ef, null
  br i1 %i.eg, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.eh = load i64, ptr @H5E_BTREE_g, align 8, !tbaa !19
  %i.ei = load i64, ptr @H5E_CANTPROTECT_g, align 8, !tbaa !19
  %i.ej = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5B2__split_root, i32 noundef 382, i64 noundef %i.eh, i64 noundef %i.ei, ptr noundef nonnull @.str.3) #4 ; 0 uses
  br label %.thread

bb.z:                                             ; preds = %bb.x
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ef, i64 264
  %i.el = load ptr, ptr %i.ek, align 8, !tbaa !42
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.el, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !78
  %i.em = load i16, ptr %i.h, align 4, !tbaa !52
  %i.en = call i32 @H5B2__split1(ptr noundef nonnull %0, i16 noundef zeroext %i.em, ptr noundef nonnull %i.dx, ptr noundef null, ptr noundef nonnull %i.ef, ptr noundef nonnull %i.a, i32 noundef 0)
  %i.eo = icmp slt i32 %i.en, 0
  br i1 %i.eo, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.ep = load i64, ptr @H5E_BTREE_g, align 8, !tbaa !19
  %i.eq = load i64, ptr @H5E_CANTSPLIT_g, align 8, !tbaa !19
  %i.er = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5B2__split_root, i32 noundef 389, i64 noundef %i.ep, i64 noundef %i.eq, ptr noundef nonnull @.str.11) #4 ; 0 uses
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %.0 = phi i32 [ 0, %bb.z ], [ -1, %bb.aa ]
  %i.es = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.et = load ptr, ptr %i.es, align 8, !tbaa !51
  %i.eu = load i64, ptr %i.dx, align 8, !tbaa !60
  %i.ev = load i32, ptr %i.a, align 4, !tbaa !14
  %i.ew = tail call i32 @H5AC_unprotect(ptr noundef %i.et, ptr noundef nonnull @H5AC_BT2_INT, i64 noundef %i.eu, ptr noundef nonnull %i.ef, i32 noundef %i.ev) #4
  %i.ex = icmp slt i32 %i.ew, 0
  br i1 %i.ex, label %bb.ac, label %.thread
end_hunk_0
begin_hunk_1_@H5B2__update_flush_depend:bb.a
bb.h:                                             ; preds = %bb.g
  %i.af = getelementptr inbounds nuw i8, ptr %i.ab, i64 280 ; 2 uses
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !99
  %i.ah = icmp eq ptr %i.ag, %3
  br i1 %i.ah, label %bb.i, label %H5B2__create_flush_depend.exit.thread

bb.i:                                             ; preds = %.split, %bb.h
  %.44885 = phi ptr [ %i.y, %.split ], [ %i.af, %bb.h ] ; 2 uses
  %.25683 = phi ptr [ %i.u, %.split ], [ %i.ab, %bb.h ] ; 7 uses
  %.26182 = phi ptr [ @H5AC_BT2_INT, %.split ], [ @H5AC_BT2_LEAF, %bb.h ] ; 5 uses
  %i.ai = load i8, ptr @H5B2_init_g, align 1, !tbaa !10, !range !11, !noundef !12
  %i.aj = trunc nuw i8 %i.ai to i1
  %i.ak = load i8, ptr @H5_libterm_g, align 1, !range !11
  %i.al = trunc nuw i8 %i.ak to i1
  %i.am = xor i1 %i.al, true
  %i.an = select i1 %i.aj, i1 true, i1 %i.am
  br i1 %i.an, label %bb.j, label %.thread99, !prof !13

.thread99:                                        ; preds = %bb.i
  store ptr %4, ptr %.44885, align 8, !tbaa !100
  br label %H5B2__create_flush_depend.exit.thread

bb.j:                                             ; preds = %bb.i
  %i.ao = call i32 @H5AC_destroy_flush_dependency(ptr noundef %3, ptr noundef nonnull %.25683) #4
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
  %.pre = load i8, ptr @H5B2_init_g, align 1, !tbaa !10, !range !11
  %.pre96 = load i8, ptr @H5_libterm_g, align 1, !range !11
  %i.aw = trunc nuw i8 %.pre to i1
  %i.ax = trunc nuw i8 %.pre96 to i1
  %i.ay = xor i1 %i.ax, true
  %i.az = select i1 %i.aw, i1 true, i1 %i.ay
  store ptr %4, ptr %.44885, align 8, !tbaa !100
  br i1 %i.az, label %bb.m, label %H5B2__create_flush_depend.exit.thread, !prof !101

bb.m:                                             ; preds = %bb.l
  %i.ba = call i32 @H5AC_create_flush_dependency(ptr noundef %4, ptr noundef nonnull %.25683) #4
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
  %.463.ph = phi ptr [ @H5AC_BT2_INT, %.split ], [ @H5AC_BT2_LEAF, %bb.h ], [ %.26182, %bb.k ], [ %.26182, %bb.n ], [ %.26182, %bb.m ], [ %.26182, %bb.l ], [ %.26182, %.thread99 ]
  %.458.ph = phi ptr [ %i.u, %.split ], [ %i.ab, %bb.h ], [ %.25683, %bb.k ], [ %.25683, %bb.n ], [ %.25683, %bb.m ], [ %.25683, %bb.l ], [ %.25683, %.thread99 ]
  %.453.ph = phi i32 [ 0, %.split ], [ 0, %bb.h ], [ -1, %bb.k ], [ -1, %bb.n ], [ 0, %bb.m ], [ 0, %bb.l ], [ 0, %.thread99 ]
  %i.bi = load ptr, ptr %i.h, align 8, !tbaa !51
  %i.bj = load i64, ptr %2, align 8, !tbaa !46
  %i.bk = call i32 @H5AC_unprotect(ptr noundef %i.bi, ptr noundef nonnull %.463.ph, i64 noundef %i.bj, ptr noundef nonnull %.458.ph, i32 noundef 0) #4
  %i.bl = icmp slt i32 %i.bk, 0
  br i1 %i.bl, label %bb.o, label %bb.p

bb.o:                                             ; preds = %H5B2__create_flush_depend.exit.thread
  %i.bm = load i64, ptr @H5E_BTREE_g, align 8, !tbaa !19
  %i.bn = load i64, ptr @H5E_CANTUNPROTECT_g, align 8, !tbaa !19
  %i.bo = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5B2__update_flush_depend, i32 noundef 1954, i64 noundef %i.bm, i64 noundef %i.bn, ptr noundef nonnull @.str.21) #4 ; 0 uses
  br label %bb.p

bb.p:                                             ; preds = %bb.c, %bb.d, %.thread, %.thread77, %bb.a, %H5B2__create_flush_depend.exit.thread, %bb.o
  %.5 = phi i32 [ -1, %bb.o ], [ %.453.ph, %H5B2__create_flush_depend.exit.thread ], [ 0, %bb.a ], [ -1, %bb.c ], [ 0, %bb.d ], [ -1, %.thread77 ], [ -1, %.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #4
  ret i32 %.5
}

declare i32 @H5AC_get_entry_status(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define range(i32 -1, 1) i32 @H5B2__destroy_flush_depend(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = load i8, ptr @H5B2_init_g, align 1, !tbaa !10, !range !11, !noundef !12
  %i.b = trunc nuw i8 %i.a to i1
  %i.c = load i8, ptr @H5_libterm_g, align 1, !range !11
  %i.d = trunc nuw i8 %i.c to i1
  %i.e = xor i1 %i.d, true
  %i.f = select i1 %i.b, i1 true, i1 %i.e
  br i1 %i.f, label %bb.b, label %bb.d, !prof !13

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

!llvm.module.flags = !{!1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = distinct !{!0, !20}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260804081852+44c6aed9bd9b-1~exp1~20260804202019.1766)"}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = !{!"_Bool", !5, i64 0}
!10 = !{!9, !9, i64 0}
!11 = !{i8 0, i8 2}
!12 = !{}
!13 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!14 = !{!6, !6, i64 0}
!15 = !{!"any pointer", !5, i64 0}
!16 = !{!"p1 omnipotent char", !15, i64 0}
!17 = !{!"long", !5, i64 0}
!18 = !{!"H5B2_class_t", !6, i64 0, !16, i64 8, !17, i64 16, !15, i64 24, !15, i64 32, !15, i64 40, !15, i64 48, !15, i64 56, !15, i64 64, !15, i64 72}
!19 = !{!17, !17, i64 0}
!20 = !{!"llvm.loop.mustprogress"}
!21 = !{!"p1 _ZTS5H5C_t", !15, i64 0}
!22 = !{!"p1 _ZTS11H5C_class_t", !15, i64 0}
!23 = !{!"any p2 pointer", !15, i64 0}
!24 = !{!"p2 _ZTS17H5C_cache_entry_t", !23, i64 0}
!25 = !{!"p1 _ZTS17H5C_cache_entry_t", !15, i64 0}
!26 = !{!"p1 long", !15, i64 0}
!27 = !{!"p1 _ZTS14H5C_tag_info_t", !15, i64 0}
!28 = !{!"H5C_cache_entry_t", !21, i64 0, !17, i64 8, !17, i64 16, !15, i64 24, !9, i64 32, !22, i64 40, !9, i64 48, !9, i64 49, !9, i64 50, !9, i64 51, !6, i64 52, !9, i64 56, !9, i64 57, !9, i64 58, !9, i64 59, !9, i64 60, !6, i64 64, !24, i64 72, !6, i64 80, !6, i64 84, !6, i64 88, !6, i64 92, !6, i64 96, !9, i64 100, !9, i64 101, !25, i64 104, !25, i64 112, !25, i64 120, !25, i64 128, !25, i64 136, !25, i64 144, !9, i64 152, !6, i64 156, !9, i64 160, !17, i64 168, !26, i64 176, !17, i64 184, !17, i64 192, !6, i64 200, !9, i64 204, !6, i64 208, !6, i64 212, !9, i64 216, !25, i64 224, !25, i64 232, !27, i64 240}
!29 = !{!"p1 _ZTS10H5B2_hdr_t", !15, i64 0}
!30 = !{!"short", !5, i64 0}
!31 = !{!"p1 _ZTS18H5AC_proxy_entry_t", !15, i64 0}
!32 = !{!"H5B2_internal_t", !28, i64 0, !29, i64 248, !16, i64 256, !15, i64 264, !30, i64 272, !30, i64 274, !31, i64 280, !15, i64 288, !17, i64 296}
!33 = !{!32, !30, i64 272}
!34 = !{!32, !16, i64 256}
!35 = !{!"", !17, i64 0, !30, i64 8, !17, i64 16}
!36 = !{!"p1 _ZTS5H5F_t", !15, i64 0}
!37 = !{!"p1 _ZTS12H5B2_class_t", !15, i64 0}
!38 = !{!"H5B2_hdr_t", !28, i64 0, !35, i64 248, !5, i64 272, !5, i64 273, !6, i64 276, !6, i64 280, !30, i64 284, !5, i64 286, !36, i64 288, !17, i64 296, !17, i64 304, !17, i64 312, !17, i64 320, !9, i64 328, !5, i64 329, !5, i64 330, !15, i64 336, !15, i64 344, !16, i64 352, !26, i64 360, !15, i64 368, !15, i64 376, !15, i64 384, !9, i64 392, !31, i64 400, !15, i64 408, !17, i64 416, !37, i64 424, !15, i64 432}
!39 = !{!38, !26, i64 360}
!40 = !{!38, !37, i64 424}
!41 = !{!18, !17, i64 16}
!42 = !{!32, !15, i64 264}
!43 = !{!35, !30, i64 8}
!44 = !{!35, !17, i64 16}
!45 = !{!38, !9, i64 392}
!46 = !{!35, !17, i64 0}
!47 = !{!16, !16, i64 0}
!48 = !{!30, !30, i64 0}
!49 = !{!"llvm.loop.unroll.disable"}
!50 = !{!"branch_weights", i32 2000, i32 2002}
!51 = !{!38, !36, i64 288}
!52 = !{!38, !30, i64 284}
!53 = !{!38, !15, i64 368}
!54 = !{!38, !6, i64 276}
!55 = !{!"p1 _ZTS15H5FL_fac_head_t", !15, i64 0}
!56 = !{!"", !6, i64 0, !6, i64 4, !6, i64 8, !17, i64 16, !5, i64 24, !55, i64 32, !55, i64 40}
!57 = !{!56, !55, i64 32}
!58 = !{!56, !55, i64 40}
!59 = !{!38, !30, i64 256}
!60 = !{!38, !17, i64 248}
!61 = !{!"H5B2_leaf_t", !28, i64 0, !29, i64 248, !16, i64 256, !30, i64 264, !31, i64 272, !15, i64 280, !17, i64 288}
!62 = !{!61, !16, i64 256}
!63 = distinct !{!63, !20}
!64 = !{!18, !15, i64 48}
!65 = distinct !{!65, !20}
!66 = distinct !{!66, !49}
!67 = distinct !{!67, !20}
!68 = distinct !{!68, !49}
!69 = !{!38, !5, i64 330}
!70 = !{!38, !5, i64 286}
!71 = !{!56, !5, i64 24}
!72 = !{!38, !6, i64 280}
!73 = !{!56, !6, i64 0}
!74 = !{!38, !5, i64 272}
!75 = !{!38, !5, i64 273}
!76 = !{!56, !17, i64 16}
!77 = !{!5, !5, i64 0}
!78 = !{i64 0, i64 8, !19, i64 8, i64 2, !48, i64 16, i64 8, !19}
!79 = distinct !{!79, !20}
!80 = distinct !{!80, !49}
!81 = distinct !{!81, !20}
!82 = distinct !{!82, !49}
!83 = distinct !{!83, !20}
!84 = distinct !{!84, !49}
!85 = distinct !{!85, !20}
!86 = distinct !{!86, !49}
!87 = distinct !{!87, !20}
!88 = distinct !{!88, !49}
!89 = distinct !{!89, !20}
!90 = distinct !{!90, !49}
!91 = distinct !{!91, !20}
!92 = distinct !{!92, !49}
!93 = !{!56, !6, i64 4}
!94 = distinct !{!94, !20}
!95 = distinct !{!95, !20}
!96 = distinct !{!96, !20}
!97 = distinct !{!97, !20}
!98 = !{!32, !15, i64 288}
!99 = !{!61, !15, i64 280}
!100 = !{!15, !15, i64 0}
!101 = !{!"branch_weights", !"expected", i32 -2147483648, i32 0}
end_hunk_1
