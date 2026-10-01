Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/hdf5/original/H5T?download=true
inline.NumInlined: 12
inline.NumDeleted: 5
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 9
begin_hunk_0_@H5T__register:bb.a
  %i.gr = load i64, ptr @H5E_CANTINIT_g, align 8, !tbaa !16
  %i.gs = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.H5T__register, i32 noundef 3376, i64 noundef %i.gq, i64 noundef %i.gr, ptr noundef nonnull @.str.451) #17 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #17
  %i.gt = load ptr, ptr %i.gp, align 8, !tbaa !65 ; 2 uses
  %.not164 = icmp eq ptr %i.gt, null
  br i1 %.not164, label %bb.bm, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.gu = call i32 @H5T_close_real(ptr noundef nonnull %i.gt)
  %i.gv = icmp slt i32 %i.gu, 0
  br i1 %i.gv, label %bb.bl, label %bb.bm

bb.bl:                                            ; preds = %bb.bk
  %i.gw = load i64, ptr @H5E_DATATYPE_g, align 8, !tbaa !16
  %i.gx = load i64, ptr @H5E_CANTCLOSEOBJ_g, align 8, !tbaa !16
  %i.gy = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.H5T__register, i32 noundef 3415, i64 noundef %i.gw, i64 noundef %i.gx, ptr noundef nonnull @.str.433) #17 ; 0 uses
  br label %bb.bm

bb.bm:                                            ; preds = %bb.bl, %bb.bk, %bb.bj
  %i.gz = getelementptr inbounds nuw i8, ptr %i.ew, i64 40
  %i.ha = load ptr, ptr %i.gz, align 8, !tbaa !66 ; 2 uses
  %.not165 = icmp eq ptr %i.ha, null
  br i1 %.not165, label %bb.bp, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.hb = call i32 @H5T_close_real(ptr noundef nonnull %i.ha)
  %i.hc = icmp slt i32 %i.hb, 0
  br i1 %i.hc, label %bb.bo, label %bb.bp

bb.bo:                                            ; preds = %bb.bn
  %i.hd = load i64, ptr @H5E_DATATYPE_g, align 8, !tbaa !16
  %i.he = load i64, ptr @H5E_CANTCLOSEOBJ_g, align 8, !tbaa !16
  %i.hf = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.H5T__register, i32 noundef 3417, i64 noundef %i.hd, i64 noundef %i.he, ptr noundef nonnull @.str.433) #17 ; 0 uses
  br label %bb.bp

bb.bp:                                            ; preds = %bb.bo, %bb.bn, %bb.bm
  %i.hg = call ptr @H5FL_reg_free(ptr noundef nonnull @H5_H5T_path_t_reg_free_list, ptr noundef nonnull %i.ew) #17 ; 0 uses
  br label %bb.bq

bb.bq:                                            ; preds = %.thread186, %bb.bp
  %.5118184 = phi i64 [ %.1114, %bb.bp ], [ %.4117.ph, %.thread186 ] ; 2 uses
  %.5124183 = phi i64 [ %.1120, %bb.bp ], [ %.4123.ph, %.thread186 ] ; 2 uses
  %.5130182 = phi ptr [ %.1126, %bb.bp ], [ %.4129.ph, %.thread186 ] ; 2 uses
  %.5136181 = phi ptr [ %.1132, %bb.bp ], [ %.4135.ph, %.thread186 ] ; 2 uses
  %.10 = phi i32 [ -1, %bb.bp ], [ %.6.ph, %.thread186 ] ; 3 uses
  %i.hh = icmp sgt i64 %.5124183, -1
  br i1 %i.hh, label %bb.br, label %bb.bt

bb.br:                                            ; preds = %bb.bq
  %i.hi = call i32 @H5I_dec_ref(i64 noundef %.5124183) #17
  %i.hj = icmp slt i32 %i.hi, 0
  br i1 %i.hj, label %bb.bs, label %bb.bw

bb.bs:                                            ; preds = %bb.br
  %i.hk = load i64, ptr @H5E_DATATYPE_g, align 8, !tbaa !16
  %i.hl = load i64, ptr @H5E_CANTDEC_g, align 8, !tbaa !16
  %i.hm = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.H5T__register, i32 noundef 3424, i64 noundef %i.hk, i64 noundef %i.hl, ptr noundef nonnull @.str.452) #17 ; 0 uses
  br label %bb.bw

bb.bt:                                            ; preds = %bb.bq
  %.not166 = icmp eq ptr %.5136181, null
  br i1 %.not166, label %bb.bw, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  %i.hn = call i32 @H5T_close(ptr noundef nonnull %.5136181)
  %i.ho = icmp slt i32 %i.hn, 0
  br i1 %i.ho, label %bb.bv, label %bb.bw

bb.bv:                                            ; preds = %bb.bu
  %i.hp = load i64, ptr @H5E_DATATYPE_g, align 8, !tbaa !16
  %i.hq = load i64, ptr @H5E_CANTCLOSEOBJ_g, align 8, !tbaa !16
  %i.hr = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.H5T__register, i32 noundef 3428, i64 noundef %i.hp, i64 noundef %i.hq, ptr noundef nonnull @.str.453) #17 ; 0 uses
  br label %bb.bw

bb.bw:                                            ; preds = %bb.bt, %bb.bv, %bb.bu, %bb.br, %bb.bs
  %.11 = phi i32 [ -1, %bb.bs ], [ %.10, %bb.br ], [ -1, %bb.bv ], [ %.10, %bb.bu ], [ %.10, %bb.bt ] ; 3 uses
  %i.hs = icmp sgt i64 %.5118184, -1
  br i1 %i.hs, label %bb.bx, label %bb.bz

bb.bx:                                            ; preds = %bb.bw
  %i.ht = call i32 @H5I_dec_ref(i64 noundef %.5118184) #17
  %i.hu = icmp slt i32 %i.ht, 0
  br i1 %i.hu, label %bb.by, label %.thread218

bb.by:                                            ; preds = %bb.bx
  %i.hv = load i64, ptr @H5E_DATATYPE_g, align 8, !tbaa !16
  %i.hw = load i64, ptr @H5E_CANTDEC_g, align 8, !tbaa !16
  %i.hx = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.H5T__register, i32 noundef 3432, i64 noundef %i.hv, i64 noundef %i.hw, ptr noundef nonnull @.str.452) #17 ; 0 uses
  br label %.thread218

bb.bz:                                            ; preds = %bb.bw
  %.not167 = icmp eq ptr %.5130182, null
  br i1 %.not167, label %.thread218, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  %i.hy = call i32 @H5T_close(ptr noundef nonnull %.5130182)
  %i.hz = icmp slt i32 %i.hy, 0
  br i1 %i.hz, label %bb.cb, label %.thread218

bb.cb:                                            ; preds = %bb.ca
  %i.ia = load i64, ptr @H5E_DATATYPE_g, align 8, !tbaa !16
  %i.ib = load i64, ptr @H5E_CANTCLOSEOBJ_g, align 8, !tbaa !16
  %i.ic = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.H5T__register, i32 noundef 3436, i64 noundef %i.ia, i64 noundef %i.ib, ptr noundef nonnull @.str.453) #17 ; 0 uses
  br label %.thread218

.thread218.loopexit.unr-lcssa:                    ; preds = %bb.n
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.thread218, label %.epil.preheader

.epil.preheader:                                  ; preds = %.thread218.loopexit.unr-lcssa, %.lr.ph333
  %indvars.iv423.epil.init = phi i64 [ 0, %.lr.ph333 ], [ %indvars.iv.next424.3, %.thread218.loopexit.unr-lcssa ]
  %lcmp.mod702 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod702)
  br label %bb.cc

bb.cc:                                            ; preds = %bb.ce, %.epil.preheader
  %indvars.iv423.epil = phi i64 [ %indvars.iv423.epil.init, %.epil.preheader ], [ %indvars.iv.next424.epil, %bb.ce ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.ce ]
  %i.id = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %indvars.iv423.epil
  %i.ie = load ptr, ptr %i.id, align 8, !tbaa !60 ; 2 uses
  %.not163.epil = icmp eq ptr %i.i, %i.ie
  br i1 %.not163.epil, label %bb.ce, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  %i.if = getelementptr inbounds nuw i8, ptr %i.ie, i64 80
  store i8 1, ptr %i.if, align 8, !tbaa !75
  br label %bb.ce

bb.ce:                                            ; preds = %bb.cd, %bb.cc
  %indvars.iv.next424.epil = add nuw nsw i64 %indvars.iv423.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.thread218, label %bb.cc, !llvm.loop !128

.thread218:                                       ; preds = %.thread218.loopexit.unr-lcssa, %bb.ce, %.preheader, %bb.e, %bb.c, %bb.a, %bb.bz, %bb.cb, %bb.ca, %bb.bx, %bb.by
  %.12 = phi i32 [ -1, %bb.by ], [ %.11, %bb.bx ], [ -1, %bb.cb ], [ %.11, %bb.ca ], [ %.11, %bb.bz ], [ 0, %bb.a ], [ 0, %bb.c ], [ -1, %bb.e ], [ 0, %.preheader ], [ 0, %bb.ce ], [ 0, %.thread218.loopexit.unr-lcssa ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #17
  ret i32 %.12
}

; Function Attrs: nounwind uwtable
define range(i32 -1, 1) i32 @H5T_unregister(i32 noundef %0, ptr nofree noundef readonly captures(address_is_null) %1, ptr nofree noundef readonly captures(address) %2, ptr nofree noundef readonly captures(address) %3, ptr nofree noundef readnone captures(address) %4, ptr nofree noundef readnone captures(address) %5) local_unnamed_addr #0 {
bb.a:
  %6 = alloca %struct.H5T_conv_ctx_t, align 8     ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #17
  %i.a = getelementptr inbounds nuw i8, ptr %6, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, i8 0, i64 32, i1 false)
  %i.b = load i8, ptr @H5T_init_g, align 1, !tbaa !11, !range !12, !noundef !13
  %i.c = trunc nuw i8 %i.b to i1                  ; 2 uses
  %i.d = load i8, ptr @H5_libterm_g, align 1, !range !12
  %i.e = trunc nuw i8 %i.d to i1                  ; 2 uses
  %i.f = select i1 %i.c, i1 true, i1 %i.e
  br i1 %i.f, label %bb.d, label %bb.b, !prof !14

bb.b:                                             ; preds = %bb.a
  store i8 1, ptr @H5T_init_g, align 1, !tbaa !11
  %i.g = tail call i32 @H5T__init_package()
  %i.h = icmp slt i32 %i.g, 0
  br i1 %i.h, label %bb.c, label %._crit_edge

._crit_edge:                                      ; preds = %bb.b
  %.pre = load i8, ptr @H5T_init_g, align 1, !tbaa !11, !range !12
  %.pre105 = load i8, ptr @H5_libterm_g, align 1, !range !12
  %.pre107 = trunc nuw i8 %.pre to i1
  %.pre108.a = trunc nuw i8 %.pre105 to i1
  br label %bb.d

bb.c:                                             ; preds = %bb.b
  store i8 0, ptr @H5T_init_g, align 1, !tbaa !11
  %i.i = load i64, ptr @H5E_FUNC_g, align 8, !tbaa !16
  %i.j = load i64, ptr @H5E_CANTINIT_g, align 8, !tbaa !16
  %i.k = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.H5T_unregister, i32 noundef 3513, i64 noundef %i.i, i64 noundef %i.j, ptr noundef nonnull @.str.3) #17 ; 0 uses
  br label %.loopexit

bb.d:                                             ; preds = %._crit_edge, %bb.a
  %.pre-phi109 = phi i1 [ %.pre108.a, %._crit_edge ], [ %i.e, %bb.a ]
  %.pre-phi = phi i1 [ %.pre107, %._crit_edge ], [ %i.c, %bb.a ]
  %i.l = xor i1 %.pre-phi109, true
  %i.m = select i1 %.pre-phi, i1 true, i1 %i.l
  br i1 %i.m, label %bb.e, label %.loopexit, !prof !14

bb.e:                                             ; preds = %bb.d
  %i.n = icmp ne i32 %0, -1
  %i.o = icmp ne i32 %0, 1
  %or.cond.not56 = and i1 %i.n, %i.o
  %i.p = icmp ne ptr %4, null                     ; 2 uses
  %or.cond3 = or i1 %or.cond.not56, %i.p
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %6, i8 -1, i64 16, i1 false)
  br i1 %or.cond3, label %.loopexit68, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.q = load i32, ptr @H5T_g.3, align 8, !tbaa !57 ; 12 uses
  %i.r = icmp sgt i32 %i.q, 0
  br i1 %i.r, label %.lr.ph, label %.loopexit68

.lr.ph:                                           ; preds = %bb.f
  %.04769 = add nsw i32 %i.q, -1
  %i.s = load ptr, ptr @H5T_g.5, align 8, !tbaa !56 ; 5 uses
  %.not = icmp eq ptr %1, null
  %.not59 = icmp eq ptr %2, null                  ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 4 uses
  %.not61 = icmp eq ptr %3, null                  ; 4 uses
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 40 ; 4 uses
  %.not63 = icmp eq ptr %5, null                  ; 5 uses
  %i.v = zext nneg i32 %.04769 to i64             ; 5 uses
  br i1 %.not, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph
  br i1 %.not59, label %.lr.ph.split.us.split.us, label %.lr.ph.split.us.split

.lr.ph.split.us.split.us:                         ; preds = %.lr.ph.split.us, %bb.k
  %indvars.iv99 = phi i64 [ %indvars.iv.next100, %bb.k ], [ %i.v, %.lr.ph.split.us ] ; 4 uses
  %.047.in70.us.us = phi i32 [ %i.am, %bb.k ], [ %i.q, %.lr.ph.split.us ]
  %i.w = phi i32 [ %i.ak, %bb.k ], [ %i.q, %.lr.ph.split.us ] ; 4 uses
  %i.x = getelementptr inbounds nuw [56 x i8], ptr %i.s, i64 %indvars.iv99 ; 4 uses
  br i1 %.not61, label %bb.h, label %bb.g

bb.g:                                             ; preds = %.lr.ph.split.us.split.us
  %i.y = load ptr, ptr %i.u, align 8, !tbaa !26
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 12
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !32
  %i.ab = getelementptr inbounds nuw i8, ptr %i.x, i64 36
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !78
  %.not62.us.us = icmp eq i32 %i.aa, %i.ac
  br i1 %.not62.us.us, label %bb.h, label %bb.k

bb.h:                                             ; preds = %bb.g, %.lr.ph.split.us.split.us
  br i1 %.not63, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ad = getelementptr inbounds nuw i8, ptr %i.x, i64 48
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !31
  %.not64.us.us = icmp eq ptr %5, %i.ae
  br i1 %.not64.us.us, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.af = getelementptr inbounds nuw i8, ptr %i.x, i64 56
  %i.ag = sub nsw i32 %i.w, %.047.in70.us.us
  %i.ah = sext i32 %i.ag to i64
  %i.ai = mul nsw i64 %i.ah, 56
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.x, ptr nonnull align 8 %i.af, i64 %i.ai, i1 false)
  %i.aj = add nsw i32 %i.w, -1                    ; 2 uses
  store i32 %i.aj, ptr @H5T_g.3, align 8, !tbaa !57
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i, %bb.g
  %i.ak = phi i32 [ %i.w, %bb.i ], [ %i.w, %bb.g ], [ %i.aj, %bb.j ]
  %indvars.iv.next100 = add nsw i64 %indvars.iv99, -1
  %i.al = icmp sgt i64 %indvars.iv99, 0
  %i.am = trunc nuw nsw i64 %indvars.iv99 to i32
  br i1 %i.al, label %.lr.ph.split.us.split.us, label %.loopexit68, !llvm.loop !131

.lr.ph.split.us.split:                            ; preds = %.lr.ph.split.us
  %.pre113 = load ptr, ptr %i.t, align 8, !tbaa !26 ; 2 uses
  br i1 %.not61, label %.lr.ph.split.us.split.split.us, label %.lr.ph.split.us.split.split

.lr.ph.split.us.split.split.us:                   ; preds = %.lr.ph.split.us.split, %bb.o
  %7 = phi ptr [ %8, %bb.o ], [ %.pre113, %.lr.ph.split.us.split ] ; 3 uses
  %indvars.iv96 = phi i64 [ %indvars.iv.next97, %bb.o ], [ %i.v, %.lr.ph.split.us.split ] ; 4 uses
  %.047.in70.us.us78 = phi i32 [ %i.bc, %bb.o ], [ %i.q, %.lr.ph.split.us.split ]
  %i.an = phi i32 [ %i.ba, %bb.o ], [ %i.q, %.lr.ph.split.us.split ] ; 4 uses
  %i.ao = getelementptr inbounds nuw [56 x i8], ptr %i.s, i64 %indvars.iv96 ; 4 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %7, i64 12
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !32
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ao, i64 32
  %i.as = load i32, ptr %i.ar, align 8, !tbaa !77
  %.not60.us.us = icmp eq i32 %i.aq, %i.as
  br i1 %.not60.us.us, label %bb.l, label %bb.o

bb.l:                                             ; preds = %.lr.ph.split.us.split.split.us
  br i1 %.not63, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.at = getelementptr inbounds nuw i8, ptr %i.ao, i64 48
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !31
  %.not64.us.us79 = icmp eq ptr %5, %i.au
  br i1 %.not64.us.us79, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.av = getelementptr inbounds nuw i8, ptr %i.ao, i64 56
  %i.aw = sub nsw i32 %i.an, %.047.in70.us.us78
  %i.ax = sext i32 %i.aw to i64
  %i.ay = mul nsw i64 %i.ax, 56
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ao, ptr nonnull align 8 %i.av, i64 %i.ay, i1 false)
  %i.az = add nsw i32 %i.an, -1                   ; 2 uses
  store i32 %i.az, ptr @H5T_g.3, align 8, !tbaa !57
  %.pre112 = load ptr, ptr %i.t, align 8, !tbaa !26
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m, %.lr.ph.split.us.split.split.us
  %8 = phi ptr [ %7, %bb.m ], [ %.pre112, %bb.n ], [ %7, %.lr.ph.split.us.split.split.us ]
  %i.ba = phi i32 [ %i.an, %bb.m ], [ %i.az, %bb.n ], [ %i.an, %.lr.ph.split.us.split.split.us ]
  %indvars.iv.next97 = add nsw i64 %indvars.iv96, -1
  %i.bb = icmp sgt i64 %indvars.iv96, 0
  %i.bc = trunc nuw nsw i64 %indvars.iv96 to i32
  br i1 %i.bb, label %.lr.ph.split.us.split.split.us, label %.loopexit68, !llvm.loop !131

.lr.ph.split.us.split.split:                      ; preds = %.lr.ph.split.us.split, %bb.t
  %9 = phi ptr [ %10, %bb.t ], [ %.pre113, %.lr.ph.split.us.split ] ; 4 uses
  %indvars.iv93 = phi i64 [ %indvars.iv.next94, %bb.t ], [ %i.v, %.lr.ph.split.us.split ] ; 4 uses
  %.047.in70.us = phi i32 [ %i.bx, %bb.t ], [ %i.q, %.lr.ph.split.us.split ]
  %i.bd = phi i32 [ %i.bv, %bb.t ], [ %i.q, %.lr.ph.split.us.split ] ; 5 uses
  %i.be = getelementptr inbounds nuw [56 x i8], ptr %i.s, i64 %indvars.iv93 ; 5 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %9, i64 12
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !32
  %i.bh = getelementptr inbounds nuw i8, ptr %i.be, i64 32
  %i.bi = load i32, ptr %i.bh, align 8, !tbaa !77
  %.not60.us = icmp eq i32 %i.bg, %i.bi
  br i1 %.not60.us, label %bb.p, label %bb.t

bb.p:                                             ; preds = %.lr.ph.split.us.split.split
  %i.bj = load ptr, ptr %i.u, align 8, !tbaa !26
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 12
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !32
  %i.bm = getelementptr inbounds nuw i8, ptr %i.be, i64 36
  %i.bn = load i32, ptr %i.bm, align 4, !tbaa !78
  %.not62.us = icmp eq i32 %i.bl, %i.bn
  br i1 %.not62.us, label %bb.q, label %bb.t

bb.q:                                             ; preds = %bb.p
  br i1 %.not63, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bo = getelementptr inbounds nuw i8, ptr %i.be, i64 48
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !31
  %.not64.us = icmp eq ptr %5, %i.bp
  br i1 %.not64.us, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.bq = getelementptr inbounds nuw i8, ptr %i.be, i64 56
  %i.br = sub nsw i32 %i.bd, %.047.in70.us
  %i.bs = sext i32 %i.br to i64
  %i.bt = mul nsw i64 %i.bs, 56
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.be, ptr nonnull align 8 %i.bq, i64 %i.bt, i1 false)
  %i.bu = add nsw i32 %i.bd, -1                   ; 2 uses
  store i32 %i.bu, ptr @H5T_g.3, align 8, !tbaa !57
  %.pre110 = load ptr, ptr %i.t, align 8, !tbaa !26
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r, %bb.p, %.lr.ph.split.us.split.split
  %10 = phi ptr [ %9, %bb.r ], [ %9, %bb.p ], [ %9, %.lr.ph.split.us.split.split ], [ %.pre110, %bb.s ]
  %i.bv = phi i32 [ %i.bd, %bb.r ], [ %i.bd, %bb.p ], [ %i.bd, %.lr.ph.split.us.split.split ], [ %i.bu, %bb.s ]
  %indvars.iv.next94 = add nsw i64 %indvars.iv93, -1
  %i.bw = icmp sgt i64 %indvars.iv93, 0
  %i.bx = trunc nuw nsw i64 %indvars.iv93 to i32
  br i1 %i.bw, label %.lr.ph.split.us.split.split, label %.loopexit68, !llvm.loop !131

.lr.ph.split:                                     ; preds = %.lr.ph
  %.pre109 = load i8, ptr %1, align 1, !tbaa !31  ; 2 uses
  br i1 %.not59, label %.lr.ph.split.split.us, label %.lr.ph.split.split

.lr.ph.split.split.us:                            ; preds = %.lr.ph.split, %bb.aa
  %11 = phi i8 [ %12, %bb.aa ], [ %.pre109, %.lr.ph.split ] ; 4 uses
  %indvars.iv90 = phi i64 [ %indvars.iv.next91, %bb.aa ], [ %i.v, %.lr.ph.split ] ; 4 uses
  %.047.in70.us73 = phi i32 [ %i.cp, %bb.aa ], [ %i.q, %.lr.ph.split ]
  %i.by = phi i32 [ %i.cn, %bb.aa ], [ %i.q, %.lr.ph.split ] ; 5 uses
  %i.bz = getelementptr inbounds nuw [56 x i8], ptr %i.s, i64 %indvars.iv90 ; 5 uses
  %.not57.us = icmp eq i8 %11, 0
  br i1 %.not57.us, label %bb.v, label %bb.u

bb.u:                                             ; preds = %.lr.ph.split.split.us
  %i.ca = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(1) %i.bz) #19
  %.not58.us = icmp eq i32 %i.ca, 0
  br i1 %.not58.us, label %bb.v, label %bb.aa

bb.v:                                             ; preds = %bb.u, %.lr.ph.split.split.us
  br i1 %.not61, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.cb = load ptr, ptr %i.u, align 8, !tbaa !26
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 12
  %i.cd = load i32, ptr %i.cc, align 4, !tbaa !32
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bz, i64 36
  %i.cf = load i32, ptr %i.ce, align 4, !tbaa !78
  %.not62.us74 = icmp eq i32 %i.cd, %i.cf
  br i1 %.not62.us74, label %bb.x, label %bb.aa

bb.x:                                             ; preds = %bb.w, %bb.v
  br i1 %.not63, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.cg = getelementptr inbounds nuw i8, ptr %i.bz, i64 48
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !31
  %.not64.us75 = icmp eq ptr %5, %i.ch
  br i1 %.not64.us75, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y, %bb.x
  %i.ci = getelementptr inbounds nuw i8, ptr %i.bz, i64 56
  %i.cj = sub nsw i32 %i.by, %.047.in70.us73
  %i.ck = sext i32 %i.cj to i64
  %i.cl = mul nsw i64 %i.ck, 56
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.bz, ptr nonnull align 8 %i.ci, i64 %i.cl, i1 false)
  %i.cm = add nsw i32 %i.by, -1                   ; 2 uses
  store i32 %i.cm, ptr @H5T_g.3, align 8, !tbaa !57
  %.pre108 = load i8, ptr %1, align 1, !tbaa !31
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y, %bb.w, %bb.u
  %12 = phi i8 [ %11, %bb.y ], [ %11, %bb.w ], [ %.pre108, %bb.z ], [ %11, %bb.u ]
  %i.cn = phi i32 [ %i.by, %bb.y ], [ %i.by, %bb.w ], [ %i.cm, %bb.z ], [ %i.by, %bb.u ]
  %indvars.iv.next91 = add nsw i64 %indvars.iv90, -1
  %i.co = icmp sgt i64 %indvars.iv90, 0
  %i.cp = trunc nuw nsw i64 %indvars.iv90 to i32
  br i1 %i.co, label %.lr.ph.split.split.us, label %.loopexit68, !llvm.loop !131

.lr.ph.split.split:                               ; preds = %.lr.ph.split, %bb.ai
  %13 = phi i8 [ %14, %bb.ai ], [ %.pre109, %.lr.ph.split ] ; 5 uses
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.ai ], [ %i.v, %.lr.ph.split ] ; 4 uses
  %.047.in70 = phi i32 [ %i.dm, %bb.ai ], [ %i.q, %.lr.ph.split ]
  %i.cq = phi i32 [ %i.dk, %bb.ai ], [ %i.q, %.lr.ph.split ] ; 6 uses
  %i.cr = getelementptr inbounds nuw [56 x i8], ptr %i.s, i64 %indvars.iv ; 6 uses
  %.not57 = icmp eq i8 %13, 0
  br i1 %.not57, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %.lr.ph.split.split
  %i.cs = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(1) %i.cr) #19
  %.not58 = icmp eq i32 %i.cs, 0
  br i1 %.not58, label %bb.ac, label %bb.ai

bb.ac:                                            ; preds = %bb.ab, %.lr.ph.split.split
  %i.ct = load ptr, ptr %i.t, align 8, !tbaa !26
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 12
  %i.cv = load i32, ptr %i.cu, align 4, !tbaa !32
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cr, i64 32
  %i.cx = load i32, ptr %i.cw, align 8, !tbaa !77
  %.not60 = icmp eq i32 %i.cv, %i.cx
  br i1 %.not60, label %bb.ad, label %bb.ai

bb.ad:                                            ; preds = %bb.ac
  br i1 %.not61, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.cy = load ptr, ptr %i.u, align 8, !tbaa !26
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 12
  %i.da = load i32, ptr %i.cz, align 4, !tbaa !32
  %i.db = getelementptr inbounds nuw i8, ptr %i.cr, i64 36
  %i.dc = load i32, ptr %i.db, align 4, !tbaa !78
  %.not62 = icmp eq i32 %i.da, %i.dc
  br i1 %.not62, label %bb.af, label %bb.ai

bb.af:                                            ; preds = %bb.ae, %bb.ad
  br i1 %.not63, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.dd = getelementptr inbounds nuw i8, ptr %i.cr, i64 48
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !31
  %.not64 = icmp eq ptr %5, %i.de
  br i1 %.not64, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag, %bb.af
  %i.df = getelementptr inbounds nuw i8, ptr %i.cr, i64 56
  %i.dg = sub nsw i32 %i.cq, %.047.in70
  %i.dh = sext i32 %i.dg to i64
  %i.di = mul nsw i64 %i.dh, 56
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.cr, ptr nonnull align 8 %i.df, i64 %i.di, i1 false)
  %i.dj = add nsw i32 %i.cq, -1                   ; 2 uses
  store i32 %i.dj, ptr @H5T_g.3, align 8, !tbaa !57
  %.pre106 = load i8, ptr %1, align 1, !tbaa !31
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ag, %bb.ae, %bb.ac, %bb.ab, %bb.ah
  %14 = phi i8 [ %13, %bb.ag ], [ %13, %bb.ae ], [ %13, %bb.ac ], [ %13, %bb.ab ], [ %.pre106, %bb.ah ]
  %i.dk = phi i32 [ %i.cq, %bb.ag ], [ %i.cq, %bb.ae ], [ %i.cq, %bb.ac ], [ %i.cq, %bb.ab ], [ %i.dj, %bb.ah ]
  %indvars.iv.next = add nsw i64 %indvars.iv, -1
  %i.dl = icmp sgt i64 %indvars.iv, 0
  %i.dm = trunc nuw nsw i64 %indvars.iv to i32
  br i1 %i.dl, label %.lr.ph.split.split, label %.loopexit68, !llvm.loop !131

.loopexit68:                                      ; preds = %bb.ai, %bb.aa, %bb.t, %bb.o, %bb.k, %bb.f, %bb.e
  %i.dn = load i32, ptr @H5T_g.0, align 8, !tbaa !54 ; 2 uses
  %i.do = icmp sgt i32 %i.dn, 1
  br i1 %i.do, label %.lr.ph84, label %.loopexit

.lr.ph84:                                         ; preds = %.loopexit68
  %.not.i = icmp eq ptr %1, null
  %.not29.i = icmp eq ptr %2, null
  %.not31.i = icmp eq ptr %3, null
  %.not34.i = icmp eq ptr %5, null
  %i.dp = zext nneg i32 %i.dn to i64
  br label %bb.aj

bb.aj:                                            ; preds = %.lr.ph84, %bb.ba
  %indvars.iv102 = phi i64 [ %i.dp, %.lr.ph84 ], [ %indvars.iv.next103, %bb.ba ] ; 3 uses
  %indvars.iv.next103 = add nsw i64 %indvars.iv102, -1 ; 3 uses
  %i.dq = load ptr, ptr @H5T_g.2, align 8, !tbaa !53
  %i.dr = getelementptr inbounds nuw [8 x i8], ptr %i.dq, i64 %indvars.iv.next103
  %i.ds = load ptr, ptr %i.dr, align 8, !tbaa !60 ; 10 uses
  %i.dt = load i8, ptr @H5T_init_g, align 1, !tbaa !11, !range !12, !noundef !13
  %i.du = trunc nuw i8 %i.dt to i1
  %i.dv = load i8, ptr @H5_libterm_g, align 1, !range !12
  %i.dw = trunc nuw i8 %i.dv to i1
  %i.dx = xor i1 %i.dw, true
  %i.dy = select i1 %i.du, i1 true, i1 %i.dx
  br i1 %i.dy, label %bb.ak, label %bb.az, !prof !14

bb.ak:                                            ; preds = %bb.aj
  switch i32 %0, label %bb.an [
    i32 1, label %bb.al
    i32 0, label %bb.am
  ]

bb.al:                                            ; preds = %bb.ak
  %i.dz = getelementptr inbounds nuw i8, ptr %i.ds, i64 64
  %i.ea = load i8, ptr %i.dz, align 8, !tbaa !80, !range !12, !noundef !13
  %i.eb = trunc nuw i8 %i.ea to i1
  br i1 %i.eb, label %H5T_path_match.exit, label %bb.an

bb.am:                                            ; preds = %bb.ak
  %i.ec = getelementptr inbounds nuw i8, ptr %i.ds, i64 64
  %i.ed = load i8, ptr %i.ec, align 8, !tbaa !80, !range !12, !noundef !13
  %i.ee = trunc nuw i8 %i.ed to i1
  br i1 %i.ee, label %bb.an, label %H5T_path_match.exit

bb.an:                                            ; preds = %bb.am, %bb.al, %bb.ak
  br i1 %.not.i, label %bb.aq, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.ef = load i8, ptr %1, align 1, !tbaa !31
  %.not27.i = icmp eq i8 %i.ef, 0
  br i1 %.not27.i, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.eg = call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %1, ptr noundef nonnull readonly dereferenceable(1) %i.ds) #19
  %.not28.i = icmp eq i32 %i.eg, 0
  br i1 %.not28.i, label %bb.aq, label %H5T_path_match.exit

bb.aq:                                            ; preds = %bb.ap, %bb.ao, %bb.an
  br i1 %.not29.i, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.eh = getelementptr inbounds nuw i8, ptr %i.ds, i64 32
  %i.ei = load ptr, ptr %i.eh, align 8, !tbaa !65
  %i.ej = call i32 @H5T_cmp(ptr noundef nonnull readonly %2, ptr noundef %i.ei, i1 noundef zeroext false)
  %.not30.i = icmp eq i32 %i.ej, 0
  br i1 %.not30.i, label %bb.as, label %H5T_path_match.exit

bb.as:                                            ; preds = %bb.ar, %bb.aq
  br i1 %.not31.i, label %bb.au, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ds, i64 40
  %i.el = load ptr, ptr %i.ek, align 8, !tbaa !66
  %i.em = call i32 @H5T_cmp(ptr noundef nonnull readonly %3, ptr noundef %i.el, i1 noundef zeroext false)
  %.not32.i = icmp eq i32 %i.em, 0
  br i1 %.not32.i, label %bb.au, label %H5T_path_match.exit

bb.au:                                            ; preds = %bb.at, %bb.as
  br i1 %i.p, label %bb.av, label %bb.ax

bb.av:                                            ; preds = %bb.au
  %i.en = getelementptr inbounds nuw i8, ptr %i.ds, i64 32
  %i.eo = load ptr, ptr %i.en, align 8, !tbaa !65
  %i.ep = call fastcc zeroext i1 @H5T_path_match_find_type_with_volobj(ptr noundef %i.eo, ptr noundef readnone %4)
  br i1 %i.ep, label %bb.ax, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ds, i64 40
  %i.er = load ptr, ptr %i.eq, align 8, !tbaa !66
  %i.es = call fastcc zeroext i1 @H5T_path_match_find_type_with_volobj(ptr noundef %i.er, ptr noundef readnone %4)
  br i1 %i.es, label %bb.ax, label %H5T_path_match.exit

bb.ax:                                            ; preds = %bb.aw, %bb.av, %bb.au
  br i1 %.not34.i, label %bb.az, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.et = getelementptr inbounds nuw i8, ptr %i.ds, i64 56
  %i.eu = load ptr, ptr %i.et, align 8, !tbaa !31
  %.not35.i = icmp eq ptr %5, %i.eu
  br i1 %.not35.i, label %bb.az, label %H5T_path_match.exit

H5T_path_match.exit:                              ; preds = %bb.ay, %bb.aw, %bb.at, %bb.ar, %bb.ap, %bb.am, %bb.al
  %i.ev = getelementptr inbounds nuw i8, ptr %i.ds, i64 80
  store i8 1, ptr %i.ev, align 8, !tbaa !75
  br label %bb.ba

bb.az:                                            ; preds = %bb.ay, %bb.ax, %bb.aj
  %i.ew = load ptr, ptr @H5T_g.2, align 8, !tbaa !53
  %i.ex = getelementptr inbounds nuw [8 x i8], ptr %i.ew, i64 %indvars.iv.next103 ; 2 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ex, i64 8
  %i.ez = load i32, ptr @H5T_g.0, align 8, !tbaa !54 ; 2 uses
  %i.fa = trunc nuw nsw i64 %indvars.iv102 to i32
  %i.fb = sub nsw i32 %i.ez, %i.fa
  %i.fc = sext i32 %i.fb to i64
  %i.fd = shl nsw i64 %i.fc, 3
  call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.ex, ptr nonnull align 8 %i.ey, i64 %i.fd, i1 false)
  %i.fe = add nsw i32 %i.ez, -1
  store i32 %i.fe, ptr @H5T_g.0, align 8, !tbaa !54
  %i.ff = call fastcc i32 @H5T__path_free(ptr noundef %i.ds, ptr noundef %6)
  %i.fg = icmp slt i32 %i.ff, 0
  br i1 %i.fg, label %.thread, label %bb.ba

.thread:                                          ; preds = %bb.az
  %i.fh = load i64, ptr @H5E_DATATYPE_g, align 8, !tbaa !16
  %i.fi = load i64, ptr @H5E_CANTFREE_g, align 8, !tbaa !16
  %i.fj = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.H5T_unregister, i32 noundef 3578, i64 noundef %i.fh, i64 noundef %i.fi, ptr noundef nonnull @.str.368) #17 ; 0 uses
  br label %.loopexit

bb.ba:                                            ; preds = %H5T_path_match.exit, %bb.az
  %i.fk = icmp samesign ugt i64 %indvars.iv102, 2
  br i1 %i.fk, label %bb.aj, label %.loopexit, !llvm.loop !132

.loopexit:                                        ; preds = %bb.ba, %.loopexit68, %.thread, %bb.d, %bb.c
  %.050 = phi i32 [ 0, %bb.d ], [ -1, %bb.c ], [ -1, %.thread ], [ 0, %.loopexit68 ], [ 0, %bb.ba ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #17
  ret i32 %.050
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nounwind uwtable
define range(i32 -1, 1) i32 @H5Tunregister(i32 noundef %0, ptr nofree noundef readonly captures(address_is_null) %1, i64 noundef %2, i64 noundef %3, ptr nofree noundef readnone captures(address) %4) local_unnamed_addr #0 {
bb.a:
  %5 = alloca %struct.H5CX_node_t, align 8        ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #17
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(480) %5, i8 0, i64 480, i1 false)
  %i.a = load i8, ptr @H5_libinit_g, align 1, !tbaa !11, !range !12, !noundef !13
  %i.b = trunc nuw i8 %i.a to i1
  %i.c = load i8, ptr @H5_libterm_g, align 1, !range !12 ; 2 uses
  %i.d = trunc nuw i8 %i.c to i1
  %i.e = select i1 %i.b, i1 true, i1 %i.d
  br i1 %i.e, label %bb.d, label %bb.b, !prof !14

bb.b:                                             ; preds = %bb.a
  %i.f = tail call i32 @H5_init_library() #17
  %i.g = icmp slt i32 %i.f, 0
  br i1 %i.g, label %bb.c, label %._crit_edge, !prof !67

._crit_edge:                                      ; preds = %bb.b
  %.pre = load i8, ptr @H5_libterm_g, align 1, !range !12
  br label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.h = load i64, ptr @H5E_FUNC_g, align 8, !tbaa !16
  %i.i = load i64, ptr @H5E_CANTINIT_g, align 8, !tbaa !16
  %i.j = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.H5Tunregister, i32 noundef 3605, i64 noundef %i.h, i64 noundef %i.i, ptr noundef nonnull @.str.325) #17 ; 0 uses
  br label %.thread33

bb.d:                                             ; preds = %._crit_edge, %bb.a
  %i.k = phi i8 [ %.pre, %._crit_edge ], [ %i.c, %bb.a ]
  %i.l = load i8, ptr @H5T_init_g, align 1, !tbaa !11, !range !12, !noundef !13
  %i.m = trunc nuw i8 %i.l to i1
  %i.n = trunc nuw i8 %i.k to i1
  %i.o = select i1 %i.m, i1 true, i1 %i.n
  br i1 %i.o, label %bb.g, label %bb.e, !prof !14

bb.e:                                             ; preds = %bb.d
  store i8 1, ptr @H5T_init_g, align 1, !tbaa !11
  %i.p = tail call i32 @H5T__init_package()
  %i.q = icmp slt i32 %i.p, 0
  br i1 %i.q, label %bb.f, label %bb.g, !prof !68

bb.f:                                             ; preds = %bb.e
  store i8 0, ptr @H5T_init_g, align 1, !tbaa !11
  %i.r = load i64, ptr @H5E_FUNC_g, align 8, !tbaa !16
  %i.s = load i64, ptr @H5E_CANTINIT_g, align 8, !tbaa !16
  %i.t = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.H5Tunregister, i32 noundef 3605, i64 noundef %i.r, i64 noundef %i.s, ptr noundef nonnull @.str.3) #17 ; 0 uses
  br label %.thread33

end_hunk_0
