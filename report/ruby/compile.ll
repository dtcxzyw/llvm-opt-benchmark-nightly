inline.NumInlined: 6675
inline.NumDeleted: 333
begin_hunk_0_@iseq_setup:ISEQ_COMPILE_DATA.exit
  br label %rb_array_const_ptr.exit56.i

rb_array_const_ptr.exit56.i:                      ; preds = %bb.dd, %bb.dc
  %.0.i55.i = phi ptr [ %i.tj, %bb.dc ], [ %i.tl, %bb.dd ] ; 5 uses
  %i.tm = getelementptr [32 x i8], ptr %i.tc, i64 %indvars.iv.i ; 7 uses
  %i.tn = load i64, ptr %.0.i55.i, align 8, !tbaa !36 ; 2 uses
  %i.to = trunc i64 %i.tn to i32
  %i.tp = and i32 %i.to, 65535
  store i32 %i.tp, ptr %i.tm, align 8, !tbaa !153
  %i.tq = getelementptr i8, ptr %.0.i55.i, i64 8
  %i.tr = load i64, ptr %i.tq, align 8, !tbaa !36
  %i.ts = and i64 %i.tr, -2
  %i.tt = inttoptr i64 %i.ts to ptr
  %i.tu = getelementptr i8, ptr %i.tt, i64 28
  %.val48.i = load i32, ptr %i.tu, align 4, !tbaa !104
  %i.tv = getelementptr i8, ptr %i.tm, i64 16
  store i32 %.val48.i, ptr %i.tv, align 8, !tbaa !155
  %i.tw = getelementptr i8, ptr %.0.i55.i, i64 16
  %i.tx = load i64, ptr %i.tw, align 8, !tbaa !36
  %i.ty = and i64 %i.tx, -2
  %i.tz = inttoptr i64 %i.ty to ptr
  %i.ua = getelementptr i8, ptr %i.tz, i64 28
  %.val47.i = load i32, ptr %i.ua, align 4, !tbaa !104
  %i.ub = getelementptr i8, ptr %i.tm, i64 20
  store i32 %.val47.i, ptr %i.ub, align 4, !tbaa !156
  %i.uc = getelementptr i8, ptr %.0.i55.i, i64 24
  %i.ud = load i64, ptr %i.uc, align 8, !tbaa !36 ; 4 uses
  %i.ue = inttoptr i64 %i.ud to ptr
  %i.uf = getelementptr i8, ptr %i.tm, i64 8
  store ptr %i.ue, ptr %i.uf, align 8, !tbaa !157
  %i.ug = icmp eq i64 %i.ud, 0
  %i.uh = and i64 %i.ud, 7
  %i.ui = icmp ne i64 %i.uh, 0
  %i.uj = or i1 %i.ug, %i.ui
  br i1 %i.uj, label %rb_obj_written.exit.i22, label %bb.de

bb.de:                                            ; preds = %rb_array_const_ptr.exit56.i
  call void @rb_gc_writebarrier(i64 noundef %i.td, i64 noundef %i.ud) #37
  br label %rb_obj_written.exit.i22

rb_obj_written.exit.i22:                          ; preds = %bb.de, %rb_array_const_ptr.exit56.i
  %i.uk = getelementptr i8, ptr %.0.i55.i, i64 32
  %i.ul = load i64, ptr %i.uk, align 8, !tbaa !36 ; 2 uses
  %.not46.i = icmp eq i64 %i.ul, 0
  br i1 %.not46.i, label %bb.dh, label %bb.df

bb.df:                                            ; preds = %rb_obj_written.exit.i22
  %i.um = and i64 %i.ul, -2
  %i.un = inttoptr i64 %i.um to ptr               ; 2 uses
  %i.uo = getelementptr i8, ptr %i.un, i64 28
  %.val.i23 = load i32, ptr %i.uo, align 4, !tbaa !104
  %i.up = getelementptr i8, ptr %i.tm, i64 24
  store i32 %.val.i23, ptr %i.up, align 8, !tbaa !158
  %i.uq = getelementptr i8, ptr %i.un, i64 36
  %.val49.i = load i32, ptr %i.uq, align 4, !tbaa !93 ; 2 uses
  %i.ur = getelementptr i8, ptr %i.tm, i64 28     ; 2 uses
  store i32 %.val49.i, ptr %i.ur, align 4, !tbaa !159
  %trunc.i = trunc i64 %i.tn to i16
  switch i16 %trunc.i, label %bb.di [
    i16 3, label %bb.dg
    i16 9, label %bb.dg
    i16 13, label %bb.dg
  ]

bb.dg:                                            ; preds = %bb.df, %bb.df, %bb.df
  %i.us = add i32 %.val49.i, -1
  store i32 %i.us, ptr %i.ur, align 4, !tbaa !159
  br label %bb.di

bb.dh:                                            ; preds = %rb_obj_written.exit.i22
  %i.ut = getelementptr i8, ptr %i.tm, i64 24
  store i32 0, ptr %i.ut, align 8, !tbaa !158
  br label %bb.di

bb.di:                                            ; preds = %bb.dh, %bb.dg, %bb.df
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.uu = load i32, ptr %i.tb, align 1, !tbaa !7
  %i.uv = zext i32 %i.uu to i64
  %i.uw = icmp samesign ult i64 %indvars.iv.next.i, %i.uv
  br i1 %i.uw, label %bb.db, label %ISEQ_COMPILE_DATA.exit59.i, !llvm.loop !160

ISEQ_COMPILE_DATA.exit59.i:                       ; preds = %bb.di
  %i.ux = load ptr, ptr %i.g, align 8, !tbaa !46
  %i.uy = getelementptr i8, ptr %i.ux, i64 160
  store ptr %i.tb, ptr %i.uy, align 8, !tbaa !152
  %i.uz = load ptr, ptr %i.c, align 8, !tbaa !20
  %i.va = getelementptr i8, ptr %i.uz, i64 8
  store i64 0, ptr %i.va, align 8, !tbaa !36
  br label %bb.dj

bb.dj:                                            ; preds = %ISEQ_COMPILE_DATA.exit59.i, %rb_array_const_ptr.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #37
  store ptr %i.a, ptr %i.b, align 8, !tbaa !89
  call void asm sideeffect "", "*m,~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(ptr) %i.b) #37, !srcloc !161
  %i.vb = load ptr, ptr %i.b, align 8, !tbaa !89
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #37
  %i.vc = load volatile i64, ptr %i.vb, align 8, !tbaa !36 ; 0 uses
  %.val.pre = load ptr, ptr %i.g, align 8, !tbaa !46
  br label %iseq_set_exception_table.exit

iseq_set_exception_table.exit:                    ; preds = %bb.cv, %bb.dj
  %.val = phi ptr [ %i.se, %bb.cv ], [ %.val.pre, %bb.dj ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #37
  %i.vd = getelementptr i8, ptr %.val, i64 16
  %i.ve = getelementptr i8, ptr %.val, i64 48
  %i.vf = load ptr, ptr %i.ve, align 8, !tbaa !162 ; 5 uses
  %i.vg = load i16, ptr %i.vd, align 8
  %i.vh = and i16 %i.vg, 2
  %.not.i24 = icmp eq i16 %i.vh, 0
  br i1 %.not.i24, label %iseq_set_optargs_table.exit, label %.preheader.i25

.preheader.i25:                                   ; preds = %iseq_set_exception_table.exit
  %i.vi = getelementptr i8, ptr %.val, i64 28
  %i.vj = load i32, ptr %i.vi, align 4, !tbaa !163 ; 3 uses
  %i.vk = icmp ult i32 %i.vj, 2147483647
  br i1 %i.vk, label %.lr.ph.preheader.i, label %iseq_set_optargs_table.exit

.lr.ph.preheader.i:                               ; preds = %.preheader.i25
  %i.vl = add nuw nsw i32 %i.vj, 1
  %wide.trip.count.i = zext nneg i32 %i.vl to i64 ; 2 uses
  %xtraiter = and i64 %wide.trip.count.i, 3       ; 3 uses
  %i.vm = icmp ult i32 %i.vj, 3
  br i1 %i.vm, label %.lr.ph.i26.epil.preheader, label %.lr.ph.preheader.i.new

.lr.ph.preheader.i.new:                           ; preds = %.lr.ph.preheader.i
  %unroll_iter = and i64 %wide.trip.count.i, 2147483644
  br label %.lr.ph.i26

.lr.ph.i26:                                       ; preds = %.lr.ph.i26, %.lr.ph.preheader.i.new
  %indvars.iv.i27 = phi i64 [ 0, %.lr.ph.preheader.i.new ], [ %indvars.iv.next.i29.3, %.lr.ph.i26 ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.i.new ], [ %niter.next.3, %.lr.ph.i26 ]
  %i.vn = getelementptr [8 x i8], ptr %i.vf, i64 %indvars.iv.i27 ; 2 uses
  %i.vo = load i64, ptr %i.vn, align 8, !tbaa !36
  %i.vp = inttoptr i64 %i.vo to ptr
  %i.vq = getelementptr i8, ptr %i.vp, i64 28
  %.val.i28 = load i32, ptr %i.vq, align 4, !tbaa !104
  %i.vr = sext i32 %.val.i28 to i64
  store i64 %i.vr, ptr %i.vn, align 8, !tbaa !36
  %i.vs = getelementptr [8 x i8], ptr %i.vf, i64 %indvars.iv.i27
  %i.vt = getelementptr i8, ptr %i.vs, i64 8      ; 2 uses
  %i.vu = load i64, ptr %i.vt, align 8, !tbaa !36
  %i.vv = inttoptr i64 %i.vu to ptr
  %i.vw = getelementptr i8, ptr %i.vv, i64 28
  %.val.i28.1 = load i32, ptr %i.vw, align 4, !tbaa !104
  %i.vx = sext i32 %.val.i28.1 to i64
  store i64 %i.vx, ptr %i.vt, align 8, !tbaa !36
  %i.vy = getelementptr [8 x i8], ptr %i.vf, i64 %indvars.iv.i27
  %i.vz = getelementptr i8, ptr %i.vy, i64 16     ; 2 uses
  %i.wa = load i64, ptr %i.vz, align 8, !tbaa !36
  %i.wb = inttoptr i64 %i.wa to ptr
  %i.wc = getelementptr i8, ptr %i.wb, i64 28
  %.val.i28.2 = load i32, ptr %i.wc, align 4, !tbaa !104
  %i.wd = sext i32 %.val.i28.2 to i64
  store i64 %i.wd, ptr %i.vz, align 8, !tbaa !36
  %i.we = getelementptr [8 x i8], ptr %i.vf, i64 %indvars.iv.i27
  %i.wf = getelementptr i8, ptr %i.we, i64 24     ; 2 uses
  %i.wg = load i64, ptr %i.wf, align 8, !tbaa !36
  %i.wh = inttoptr i64 %i.wg to ptr
  %i.wi = getelementptr i8, ptr %i.wh, i64 28
  %.val.i28.3 = load i32, ptr %i.wi, align 4, !tbaa !104
  %i.wj = sext i32 %.val.i28.3 to i64
  store i64 %i.wj, ptr %i.wf, align 8, !tbaa !36
  %indvars.iv.next.i29.3 = add nuw nsw i64 %indvars.iv.i27, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %iseq_set_optargs_table.exit.loopexit.unr-lcssa, label %.lr.ph.i26, !llvm.loop !164

iseq_set_optargs_table.exit.loopexit.unr-lcssa:   ; preds = %.lr.ph.i26
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %iseq_set_optargs_table.exit, label %.lr.ph.i26.epil.preheader

.lr.ph.i26.epil.preheader:                        ; preds = %iseq_set_optargs_table.exit.loopexit.unr-lcssa, %.lr.ph.preheader.i
  %indvars.iv.i27.epil.init = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i29.3, %iseq_set_optargs_table.exit.loopexit.unr-lcssa ]
  %lcmp.mod292 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod292)
  br label %.lr.ph.i26.epil

.lr.ph.i26.epil:                                  ; preds = %.lr.ph.i26.epil, %.lr.ph.i26.epil.preheader
  %indvars.iv.i27.epil = phi i64 [ %indvars.iv.i27.epil.init, %.lr.ph.i26.epil.preheader ], [ %indvars.iv.next.i29.epil, %.lr.ph.i26.epil ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.lr.ph.i26.epil.preheader ], [ %epil.iter.next, %.lr.ph.i26.epil ]
  %i.wk = getelementptr [8 x i8], ptr %i.vf, i64 %indvars.iv.i27.epil ; 2 uses
  %i.wl = load i64, ptr %i.wk, align 8, !tbaa !36
  %i.wm = inttoptr i64 %i.wl to ptr
  %i.wn = getelementptr i8, ptr %i.wm, i64 28
  %.val.i28.epil = load i32, ptr %i.wn, align 4, !tbaa !104
  %i.wo = sext i32 %.val.i28.epil to i64
  store i64 %i.wo, ptr %i.wk, align 8, !tbaa !36
  %indvars.iv.next.i29.epil = add nuw nsw i64 %indvars.iv.i27.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %iseq_set_optargs_table.exit, label %.lr.ph.i26.epil, !llvm.loop !165

iseq_set_optargs_table.exit:                      ; preds = %iseq_set_optargs_table.exit.loopexit.unr-lcssa, %.lr.ph.i26.epil, %iseq_set_exception_table.exit, %.preheader.i25
  %i.wp = call ptr @rb_vm_get_insns_address_table() #37
  %i.wq = load ptr, ptr %i.g, align 8, !tbaa !46  ; 3 uses
  %i.wr = getelementptr i8, ptr %i.wq, i64 8      ; 2 uses
  %i.ws = load ptr, ptr %i.wr, align 8, !tbaa !144
  %i.wt = getelementptr i8, ptr %i.wq, i64 4      ; 2 uses
  %i.wu = load i32, ptr %i.wt, align 4, !tbaa !145 ; 2 uses
  %.not.i30 = icmp eq i32 %i.wu, 0                ; 2 uses
  br i1 %.not.i30, label %._crit_edge.i33, label %.lr.ph.i31

.lr.ph.i31:                                       ; preds = %iseq_set_optargs_table.exit, %.lr.ph.i31
  %.012.i = phi i32 [ %i.xf, %.lr.ph.i31 ], [ 0, %iseq_set_optargs_table.exit ] ; 2 uses
  %i.wv = zext i32 %.012.i to i64
  %i.ww = getelementptr [8 x i8], ptr %i.ws, i64 %i.wv ; 2 uses
  %i.wx = load i64, ptr %i.ww, align 8, !tbaa !36
  %sext.i32 = shl i64 %i.wx, 32
  %i.wy = ashr exact i64 %sext.i32, 32            ; 2 uses
  %i.wz = getelementptr i8, ptr @rb_vm_insn_len_info, i64 %i.wy
  %i.xa = load i8, ptr %i.wz, align 1, !tbaa !20
  %i.xb = zext i8 %i.xa to i32
  %i.xc = getelementptr [8 x i8], ptr %i.wp, i64 %i.wy
  %i.xd = load ptr, ptr %i.xc, align 8, !tbaa !167
  %i.xe = ptrtoint ptr %i.xd to i64
  store i64 %i.xe, ptr %i.ww, align 8, !tbaa !36
  %i.xf = add i32 %.012.i, %i.xb                  ; 2 uses
  %i.xg = icmp ult i32 %i.xf, %i.wu
  br i1 %i.xg, label %.lr.ph.i31, label %._crit_edge.i33, !llvm.loop !168

._crit_edge.i33:                                  ; preds = %.lr.ph.i31, %iseq_set_optargs_table.exit
  %3 = ptrtoint ptr %0 to i64
  %4 = and i64 %3, 7
  %5 = icmp eq i64 %4, 0
  br i1 %5, label %6, label %rb_iseq_translate_threaded_code.exit

6:                                                ; preds = %._crit_edge.i33
  %7 = load i64, ptr %0, align 8, !tbaa !75
  %8 = or i64 %7, 524288
  store i64 %8, ptr %0, align 8, !tbaa !75
  br label %rb_iseq_translate_threaded_code.exit

rb_iseq_translate_threaded_code.exit:             ; preds = %._crit_edge.i33, %6
  %i.xh = load i64, ptr @rb_yjit_live_iseq_count, align 8, !tbaa !36
  %i.xi = add i64 %i.xh, 1
  store i64 %i.xi, ptr @rb_yjit_live_iseq_count, align 8, !tbaa !36
  %i.xj = load i64, ptr @rb_yjit_iseq_alloc_count, align 8, !tbaa !36
  %i.xk = add i64 %i.xj, 1
  store i64 %i.xk, ptr @rb_yjit_iseq_alloc_count, align 8, !tbaa !36
  %i.xl = getelementptr i8, ptr %i.wq, i64 160
  %i.xm = load ptr, ptr %i.xl, align 8, !tbaa !152 ; 3 uses
  br i1 %.not.i30, label %set_catch_except_p.exit.i, label %.lr.ph.i35

.lr.ph.i35:                                       ; preds = %rb_iseq_translate_threaded_code.exit, %bb.dm
  %.031.i = phi i32 [ %i.yh, %bb.dm ], [ 0, %rb_iseq_translate_threaded_code.exit ] ; 2 uses
  %i.xn = load ptr, ptr %i.wr, align 8, !tbaa !144
  %i.xo = zext i32 %.031.i to i64
  %i.xp = getelementptr [8 x i8], ptr %i.xn, i64 %i.xo
  %i.xq = load i64, ptr %i.xp, align 8, !tbaa !36
  %i.xr = call i32 @rb_vm_insn_decode(i64 noundef %i.xq) #37 ; 2 uses
  %i.xs = icmp eq i32 %i.xr, 71
  br i1 %i.xs, label %bb.dk, label %bb.dm

bb.dk:                                            ; preds = %.lr.ph.i35
  %.pre10.i.i = load ptr, ptr %i.c, align 8, !tbaa !20
  br label %tailrecurse.i.i

tailrecurse.i.i:                                  ; preds = %ISEQ_COMPILE_DATA.exit7.i.i, %bb.dk
  %i.xt = phi ptr [ %.pre10.i.i, %bb.dk ], [ %i.yc, %ISEQ_COMPILE_DATA.exit7.i.i ]
  %.tr.i.i = phi ptr [ %0, %bb.dk ], [ %i.xy, %ISEQ_COMPILE_DATA.exit7.i.i ]
  %i.xu = getelementptr i8, ptr %i.xt, i64 184
  store i8 1, ptr %i.xu, align 8, !tbaa !169
  %i.xv = getelementptr i8, ptr %.tr.i.i, i64 16
  %i.xw = load ptr, ptr %i.xv, align 8, !tbaa !46
  %i.xx = getelementptr i8, ptr %i.xw, i64 168
  %i.xy = load ptr, ptr %i.xx, align 8, !tbaa !170 ; 4 uses
  %.not.i.i40 = icmp eq ptr %i.xy, null
  br i1 %.not.i.i40, label %set_catch_except_p.exit.i, label %bb.dl

bb.dl:                                            ; preds = %tailrecurse.i.i
  %i.xz = load i64, ptr %i.xy, align 8, !tbaa !37
  %i.ya = and i64 %i.xz, 262144
  %.not.i5.i.i = icmp eq i64 %i.ya, 0
  br i1 %.not.i5.i.i, label %set_catch_except_p.exit.i, label %ISEQ_COMPILE_DATA.exit7.i.i

ISEQ_COMPILE_DATA.exit7.i.i:                      ; preds = %bb.dl
  %i.yb = getelementptr i8, ptr %i.xy, i64 24
  %i.yc = load ptr, ptr %i.yb, align 8, !tbaa !20 ; 2 uses
  %.not4.i.i = icmp eq ptr %i.yc, null
  br i1 %.not4.i.i, label %set_catch_except_p.exit.i, label %tailrecurse.i.i

bb.dm:                                            ; preds = %.lr.ph.i35
  %i.yd = sext i32 %i.xr to i64
  %i.ye = getelementptr i8, ptr @rb_vm_insn_len_info, i64 %i.yd
  %i.yf = load i8, ptr %i.ye, align 1, !tbaa !20
  %i.yg = zext i8 %i.yf to i32
  %i.yh = add i32 %.031.i, %i.yg                  ; 2 uses
  %i.yi = load i32, ptr %i.wt, align 4, !tbaa !145
  %i.yj = icmp ult i32 %i.yh, %i.yi
  br i1 %i.yj, label %.lr.ph.i35, label %set_catch_except_p.exit.i, !llvm.loop !171

set_catch_except_p.exit.i:                        ; preds = %bb.dm, %ISEQ_COMPILE_DATA.exit7.i.i, %bb.dl, %tailrecurse.i.i, %rb_iseq_translate_threaded_code.exit
  %i.yk = icmp eq ptr %i.xm, null
  br i1 %i.yk, label %update_catch_except_flags.exit, label %.preheader.i36

.preheader.i36:                                   ; preds = %set_catch_except_p.exit.i
  %i.yl = load i32, ptr %i.xm, align 1, !tbaa !7  ; 2 uses
  %i.ym = zext i32 %i.yl to i64
  %.not34.i = icmp eq i32 %i.yl, 0
  br i1 %.not34.i, label %update_catch_except_flags.exit, label %.lr.ph33.i

.lr.ph33.i:                                       ; preds = %.preheader.i36
  %i.yn = getelementptr i8, ptr %i.xm, i64 4
  br label %bb.dn

bb.dn:                                            ; preds = %bb.dp, %.lr.ph33.i
  %.02132.i = phi i64 [ 0, %.lr.ph33.i ], [ %i.ys, %bb.dp ] ; 2 uses
  %i.yo = getelementptr [32 x i8], ptr %i.yn, i64 %.02132.i
  %i.yp = load i32, ptr %i.yo, align 8, !tbaa !153
  switch i32 %i.yp, label %bb.do [
    i32 9, label %bb.dp
    i32 13, label %bb.dp
    i32 11, label %bb.dp
  ]

bb.do:                                            ; preds = %bb.dn
  %i.yq = load ptr, ptr %i.c, align 8, !tbaa !20
  %i.yr = getelementptr i8, ptr %i.yq, i64 184
  store i8 1, ptr %i.yr, align 8, !tbaa !169
  br label %update_catch_except_flags.exit

bb.dp:                                            ; preds = %bb.dn, %bb.dn, %bb.dn
  %i.ys = add nuw nsw i64 %.02132.i, 1            ; 2 uses
  %exitcond.not.i37 = icmp eq i64 %i.ys, %i.ym
  br i1 %exitcond.not.i37, label %update_catch_except_flags.exit, label %bb.dn, !llvm.loop !172

update_catch_except_flags.exit:                   ; preds = %bb.dp, %set_catch_except_p.exit.i, %.preheader.i36, %bb.do
  %i.yt = load ptr, ptr %i.c, align 8, !tbaa !20
  %i.yu = getelementptr i8, ptr %i.yt, i64 184
  %i.yv = load i8, ptr %i.yu, align 8, !tbaa !169, !range !147, !noundef !148
  %i.yw = trunc nuw i8 %i.yv to i1
  %.pre = load ptr, ptr %i.g, align 8, !tbaa !46  ; 3 uses
  br i1 %i.yw, label %bb.ds, label %bb.dq

bb.dq:                                            ; preds = %update_catch_except_flags.exit
  %i.yx = getelementptr i8, ptr %.pre, i64 160
  %i.yy = load ptr, ptr %i.yx, align 8, !tbaa !152 ; 2 uses
  %.not16 = icmp eq ptr %i.yy, null
  br i1 %.not16, label %bb.ds, label %bb.dr

bb.dr:                                            ; preds = %bb.dq
  call void @ruby_xfree(ptr noundef nonnull %i.yy) #37
  %i.yz = load ptr, ptr %i.g, align 8, !tbaa !46  ; 2 uses
  %i.za = getelementptr i8, ptr %i.yz, i64 160
  store ptr null, ptr %i.za, align 8, !tbaa !152
  br label %bb.ds

bb.ds:                                            ; preds = %bb.dr, %bb.dq, %update_catch_except_flags.exit
  %i.zb = phi ptr [ %i.yz, %bb.dr ], [ %.pre, %bb.dq ], [ %.pre, %update_catch_except_flags.exit ]
  %i.zc = getelementptr i8, ptr %i.zb, i64 136
  %i.zd = load ptr, ptr %i.zc, align 8, !tbaa !173
  %i.ze = icmp eq ptr %i.zd, null
  br i1 %i.ze, label %bb.dt, label %iseq_set_sequence.exit.thread

bb.dt:                                            ; preds = %bb.ds
  call void @rb_iseq_insns_info_encode_positions(ptr noundef nonnull %0) #37
  br label %iseq_set_sequence.exit.thread

iseq_set_sequence.exit.thread:                    ; preds = %bb.e, %.critedge.i.i, %bb.k, %bb.q, %bb.ct, %bb.ce, %bb.g, %bb.ds, %bb.dt, %ISEQ_COMPILE_DATA.exit
  %.0 = phi i32 [ 0, %ISEQ_COMPILE_DATA.exit ], [ 1, %bb.ds ], [ 1, %bb.dt ], [ 0, %bb.g ], [ 0, %bb.ce ], [ 0, %bb.ct ], [ 0, %bb.q ], [ 0, %bb.k ], [ 0, %.critedge.i.i ], [ 0, %bb.e ]
  ret i32 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local range(i64 0, 2) i64 @rb_iseq_compile_node(ptr noundef %0, ptr noundef %1) local_unnamed_addr #1 {
bb.a:
  %2 = alloca [1 x %struct.iseq_link_anchor], align 16 ; 18 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #37
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 38 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %2, i8 0, i64 24, i1 false)
  store ptr %2, ptr %i.a, align 8, !tbaa !11
  %i.b = icmp eq ptr %1, null
  br i1 %i.b, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr i8, ptr %0, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !20
  %i.e = getelementptr i8, ptr %i.d, i64 128
  %i.f = load i32, ptr %i.e, align 8, !tbaa !21   ; 2 uses
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %bb.c, label %iseq_compile_each.exit

bb.c:                                             ; preds = %bb.b
  %i.h = call i64 @rb_iseq_first_lineno(ptr noundef nonnull %0) #37, !inline_history !174
  %i.i = call i64 @rb_fix2int(i64 noundef %i.h) #37, !inline_history !174
  %i.j = trunc i64 %i.i to i32
  br label %iseq_compile_each.exit

iseq_compile_each.exit:                           ; preds = %bb.b, %bb.c
  %.0.i = phi i32 [ %i.j, %bb.c ], [ %i.f, %bb.b ]
  %i.k = call fastcc noundef ptr @new_insn_core(ptr noundef nonnull %0, i32 noundef %.0.i, i32 noundef -1, i32 noundef 17, i32 noundef 0, ptr noundef null), !inline_history !174 ; 3 uses
  %i.l = load ptr, ptr %i.a, align 8, !tbaa !11   ; 2 uses
  %i.m = getelementptr i8, ptr %i.k, i64 16
  store ptr %i.l, ptr %i.m, align 8, !tbaa !34
  %i.n = getelementptr i8, ptr %i.l, i64 8
  store ptr %i.k, ptr %i.n, align 8, !tbaa !35
  store ptr %i.k, ptr %i.a, align 8, !tbaa !11
  %.phi.trans.insert.i = getelementptr i8, ptr %0, i64 16
  %.pre.i = load ptr, ptr %.phi.trans.insert.i, align 8, !tbaa !46
  %i.o = getelementptr i8, ptr %.pre.i, i64 240
  store i32 0, ptr %i.o, align 8, !tbaa !175
  br label %bb.eg

bb.d:                                             ; preds = %bb.a
  %.val = load i64, ptr %1, align 8, !tbaa !176   ; 3 uses
  %i.p = and i64 %.val, 32512
  %i.q = icmp eq i64 %i.p, 0
  br i1 %i.q, label %bb.e, label %bb.ea

bb.e:                                             ; preds = %bb.d
  %i.r = getelementptr i8, ptr %1, i64 32
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !178  ; 3 uses
  %i.t = getelementptr i8, ptr %1, i64 56         ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !182  ; 6 uses
  %.not.i = icmp eq ptr %i.s, null
  br i1 %.not.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.v = load i32, ptr %i.s, align 8, !tbaa !7
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.w = phi i32 [ %i.v, %bb.f ], [ 0, %bb.e ]    ; 6 uses
  %.not40.i = icmp eq ptr %i.u, null
  br i1 %.not40.i, label %.thread.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.x = getelementptr i8, ptr %i.u, i64 104
  %i.y = load i8, ptr %i.x, align 8
  %i.z = and i8 %i.y, 2
end_hunk_0
begin_hunk_1_@rb_iseq_build_from_ary:bb.a
  %i.ep = phi i32 [ %i.em, %bb.ag ], [ 0, %bb.ah ]
  %.pr.i = load i64, ptr @rb_iseq_build_from_ary.rbimpl_id, align 8, !tbaa !36 ; 2 uses
  %.not4.i = icmp eq i64 %.pr.i, 0
  br i1 %.not4.i, label %.lr.ph.i, label %rbimpl_intern_const.exit

.lr.ph.i:                                         ; preds = %int_param.exit122, %.lr.ph.i
  %i.eq = call i64 @rb_intern2(ptr noundef nonnull @.str.20, i64 noundef 8) #37 ; 3 uses
  store i64 %i.eq, ptr @rb_iseq_build_from_ary.rbimpl_id, align 8, !tbaa !36
  %.not.i = icmp eq i64 %i.eq, 0
  br i1 %.not.i, label %.lr.ph.i, label %rbimpl_intern_const.exit, !llvm.loop !230

rbimpl_intern_const.exit:                         ; preds = %.lr.ph.i, %int_param.exit122
  %.lcssa.i = phi i64 [ %.pr.i, %int_param.exit122 ], [ %i.eq, %.lr.ph.i ]
  %i.er = call i64 @rb_id2sym(i64 noundef %.lcssa.i) #37
  %i.es = call i64 @rb_hash_aref(i64 noundef %1, i64 noundef %i.er) #37 ; 4 uses
  %i.et = icmp eq i64 %i.es, 0
  %i.eu = and i64 %i.es, 7
  %i.ev = icmp ne i64 %i.eu, 0
  %i.ew = or i1 %i.et, %i.ev
  br i1 %i.ew, label %rbimpl_RB_TYPE_P_fastpath.exit105.thread, label %rbimpl_RB_TYPE_P_fastpath.exit105

rbimpl_RB_TYPE_P_fastpath.exit105:                ; preds = %rbimpl_intern_const.exit
  %i.ex = inttoptr i64 %i.es to ptr
  %i.ey = load i64, ptr %i.ex, align 8, !tbaa !75
  %i.ez = and i64 %i.ey, 31
  %i.fa = icmp eq i64 %i.ez, 7
  br i1 %i.fa, label %bb.aj, label %rbimpl_RB_TYPE_P_fastpath.exit105.thread

rbimpl_RB_TYPE_P_fastpath.exit105.thread:         ; preds = %rbimpl_intern_const.exit, %rbimpl_RB_TYPE_P_fastpath.exit105
  %i.fb = load i64, ptr @rb_eTypeError, align 8, !tbaa !36
  call void (i64, ptr, ...) @rb_raise(i64 noundef %i.fb, ptr noundef nonnull @.str.21) #41
  unreachable

bb.aj:                                            ; preds = %rbimpl_RB_TYPE_P_fastpath.exit105
  %i.fc = icmp eq i64 %i.n, 0
  %i.fd = and i64 %i.n, 7
  %i.fe = icmp ne i64 %i.fd, 0
  %i.ff = or i1 %i.fc, %i.fe
  br i1 %i.ff, label %rbimpl_RB_TYPE_P_fastpath.exit103.thread, label %rbimpl_RB_TYPE_P_fastpath.exit103

rbimpl_RB_TYPE_P_fastpath.exit103:                ; preds = %bb.aj
  %i.fg = inttoptr i64 %i.n to ptr                ; 5 uses
  %i.fh = load i64, ptr %i.fg, align 8, !tbaa !75 ; 3 uses
  %i.fi = and i64 %i.fh, 31
  %i.fj = icmp eq i64 %i.fi, 7
  br i1 %i.fj, label %bb.ak, label %rbimpl_RB_TYPE_P_fastpath.exit103.thread

bb.ak:                                            ; preds = %rbimpl_RB_TYPE_P_fastpath.exit103
  %i.fk = and i64 %i.fh, 8192
  %.not.i.i123 = icmp eq i64 %i.fk, 0
  br i1 %.not.i.i123, label %bb.am, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.fl = lshr i64 %i.fh, 15
  %i.fm = and i64 %i.fl, 127
  br label %rb_array_len.exit.i124

bb.am:                                            ; preds = %bb.ak
  %i.fn = getelementptr i8, ptr %i.fg, i64 16
  %i.fo = load i64, ptr %i.fn, align 8, !tbaa !20
  br label %rb_array_len.exit.i124

rb_array_len.exit.i124:                           ; preds = %bb.am, %bb.al
  %.0.i.i125 = phi i64 [ %i.fm, %bb.al ], [ %i.fo, %bb.am ] ; 5 uses
  %i.fp = add i64 %.0.i.i125, 2147483648
  %.not.i1.i126 = icmp ult i64 %i.fp, 4294967296
  br i1 %.not.i1.i126, label %RARRAY_LENINT.exit127, label %bb.an

bb.an:                                            ; preds = %rb_array_len.exit.i124
  call void @rb_out_of_int(i64 noundef %.0.i.i125) #38
  unreachable

RARRAY_LENINT.exit127:                            ; preds = %rb_array_len.exit.i124
  %i.fq = trunc nsw i64 %.0.i.i125 to i32         ; 2 uses
  %i.fr = add i32 %i.fq, -1                       ; 2 uses
  %i.fs = icmp sgt i32 %i.fr, -1
  %i.ft = load ptr, ptr %i.ad, align 8, !tbaa !46
  %i.fu = getelementptr i8, ptr %i.ft, i64 16     ; 2 uses
  %i.fv = load i16, ptr %i.fu, align 8
  %i.fw = select i1 %i.fs, i16 2, i16 0
  %i.fx = and i16 %i.fv, -3
  %i.fy = or disjoint i16 %i.fx, %i.fw
  store i16 %i.fy, ptr %i.fu, align 8
  %i.fz = load ptr, ptr %i.ad, align 8, !tbaa !46
  %i.ga = getelementptr i8, ptr %i.fz, i64 16
  %i.gb = load i16, ptr %i.ga, align 8
  %i.gc = and i16 %i.gb, 2
  %.not99 = icmp eq i16 %i.gc, 0
  br i1 %.not99, label %bb.as, label %bb.ao

bb.ao:                                            ; preds = %RARRAY_LENINT.exit127
  %i.gd = call noalias nonnull ptr @ruby_xmalloc2(i64 noundef %.0.i.i125, i64 noundef 8) #39 ; 2 uses
  %i.ge = icmp sgt i64 %.0.i.i125, 0
  br i1 %i.ge, label %.lr.ph254, label %._crit_edge255

.lr.ph254:                                        ; preds = %bb.ao
  %i.gf = getelementptr i8, ptr %i.fg, i64 16
  %i.gg = getelementptr i8, ptr %i.fg, i64 32
  %smax304 = call i32 @llvm.smax.i32(i32 %i.fq, i32 1)
  %wide.trip.count305 = zext nneg i32 %smax304 to i64
  br label %bb.ap

bb.ap:                                            ; preds = %.lr.ph254, %RARRAY_AREF.exit130
  %indvars.iv301 = phi i64 [ 0, %.lr.ph254 ], [ %indvars.iv.next302, %RARRAY_AREF.exit130 ] ; 3 uses
  %i.gh = load i64, ptr %i.fg, align 8, !tbaa !75
  %i.gi = and i64 %i.gh, 8192
  %.not.i.i128 = icmp eq i64 %i.gi, 0
  br i1 %.not.i.i128, label %bb.aq, label %RARRAY_AREF.exit130

bb.aq:                                            ; preds = %bb.ap
  %i.gj = load ptr, ptr %i.gg, align 8, !tbaa !20
  br label %RARRAY_AREF.exit130

RARRAY_AREF.exit130:                              ; preds = %bb.ap, %bb.aq
  %.0.i.i129 = phi ptr [ %i.gj, %bb.aq ], [ %i.gf, %bb.ap ]
  %i.gk = getelementptr [8 x i8], ptr %.0.i.i129, i64 %indvars.iv301
  %i.gl = load i64, ptr %i.gk, align 8, !tbaa !36
  %i.gm = call fastcc ptr @register_label(ptr noundef %0, ptr noundef %i.j, i64 noundef %i.gl)
  %i.gn = ptrtoint ptr %i.gm to i64
  %i.go = getelementptr [8 x i8], ptr %i.gd, i64 %indvars.iv301
  store i64 %i.gn, ptr %i.go, align 8, !tbaa !36
  %indvars.iv.next302 = add nuw nsw i64 %indvars.iv301, 1 ; 2 uses
  %exitcond306.not = icmp eq i64 %indvars.iv.next302, %wide.trip.count305
  br i1 %exitcond306.not, label %._crit_edge255, label %bb.ap, !llvm.loop !296

._crit_edge255:                                   ; preds = %RARRAY_AREF.exit130, %bb.ao
  %i.gp = load ptr, ptr %i.ad, align 8, !tbaa !46 ; 2 uses
  %i.gq = getelementptr i8, ptr %i.gp, i64 28
  store i32 %i.fr, ptr %i.gq, align 4, !tbaa !163
  %i.gr = getelementptr i8, ptr %i.gp, i64 48
  store ptr %i.gd, ptr %i.gr, align 8, !tbaa !162
  br label %bb.as

rbimpl_RB_TYPE_P_fastpath.exit103.thread:         ; preds = %bb.aj, %rbimpl_RB_TYPE_P_fastpath.exit103
  %i.gs = icmp eq i64 %i.n, 4
  br i1 %i.gs, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %rbimpl_RB_TYPE_P_fastpath.exit103.thread
  %i.gt = load i64, ptr @rb_eTypeError, align 8, !tbaa !36
  call void (i64, ptr, ...) @rb_raise(i64 noundef %i.gt, ptr noundef nonnull @.str.22, i64 noundef %i.n) #41
  unreachable

bb.as:                                            ; preds = %._crit_edge255, %RARRAY_LENINT.exit127, %rbimpl_RB_TYPE_P_fastpath.exit103.thread
  %i.gu = icmp eq i64 %i.q, 0
  %i.gv = and i64 %i.q, 7
  %i.gw = icmp ne i64 %i.gv, 0
  %i.gx = or i1 %i.gu, %i.gw
  br i1 %i.gx, label %rbimpl_RB_TYPE_P_fastpath.exit.thread, label %rbimpl_RB_TYPE_P_fastpath.exit

rbimpl_RB_TYPE_P_fastpath.exit:                   ; preds = %bb.as
  %i.gy = inttoptr i64 %i.q to ptr                ; 8 uses
  %i.gz = load i64, ptr %i.gy, align 8, !tbaa !75 ; 3 uses
  %i.ha = and i64 %i.gz, 31
  %i.hb = icmp eq i64 %i.ha, 7
  br i1 %i.hb, label %bb.at, label %rbimpl_RB_TYPE_P_fastpath.exit.thread

bb.at:                                            ; preds = %rbimpl_RB_TYPE_P_fastpath.exit
  %i.hc = and i64 %i.gz, 8192
  %.not.i.i.i = icmp eq i64 %i.hc, 0
  br i1 %.not.i.i.i, label %bb.av, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.hd = lshr i64 %i.gz, 15
  %i.he = and i64 %i.hd, 127
  br label %rb_array_len.exit.i.i

bb.av:                                            ; preds = %bb.at
  %i.hf = getelementptr i8, ptr %i.gy, i64 16
  %i.hg = load i64, ptr %i.hf, align 8, !tbaa !20
  br label %rb_array_len.exit.i.i

rb_array_len.exit.i.i:                            ; preds = %bb.av, %bb.au
  %.0.i.i.i = phi i64 [ %i.he, %bb.au ], [ %i.hg, %bb.av ] ; 5 uses
  %i.hh = add i64 %.0.i.i.i, 2147483648
  %.not.i1.i.i = icmp ult i64 %i.hh, 4294967296
  br i1 %.not.i1.i.i, label %RARRAY_LENINT.exit.i, label %bb.aw

bb.aw:                                            ; preds = %rb_array_len.exit.i.i
  call void @rb_out_of_int(i64 noundef %.0.i.i.i) #38
  unreachable

RARRAY_LENINT.exit.i:                             ; preds = %rb_array_len.exit.i.i
  %i.hi = trunc nsw i64 %.0.i.i.i to i32          ; 5 uses
  %i.hj = call noalias nonnull dereferenceable(32) ptr @ruby_xcalloc(i64 noundef 1, i64 noundef 32) #39 ; 6 uses
  %i.hk = load ptr, ptr %i.ad, align 8, !tbaa !46
  %i.hl = getelementptr i8, ptr %i.hk, i64 16     ; 2 uses
  %i.hm = load i16, ptr %i.hl, align 8
  %i.hn = or i16 %i.hm, 16
  store i16 %i.hn, ptr %i.hl, align 8
  store i32 %i.hi, ptr %i.hj, align 8, !tbaa !220
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hj, i64 8 ; 2 uses
  %i.hp = call i64 @rb_intern2(ptr noundef nonnull @.str.197, i64 noundef 6) #37
  %i.hq = call i64 @rb_id2sym(i64 noundef %i.hp) #37 ; 2 uses
  %i.hr = call i64 @rb_hash_aref(i64 noundef %3, i64 noundef %i.hq) #37 ; 4 uses
  %i.hs = trunc i64 %i.hr to i1
  br i1 %i.hs, label %bb.ax, label %bb.ay

bb.ax:                                            ; preds = %RARRAY_LENINT.exit.i
  %i.ht = call i64 @rb_fix2int(i64 noundef %i.hr) #37
  %i.hu = trunc i64 %i.ht to i32                  ; 2 uses
  store i32 %i.hu, ptr %i.ho, align 4, !tbaa !7
  br label %int_param.exit.i

bb.ay:                                            ; preds = %RARRAY_LENINT.exit.i
  %i.hv = icmp eq i64 %i.hr, 4
  br i1 %i.hv, label %.int_param.exit_crit_edge.i, label %bb.az

.int_param.exit_crit_edge.i:                      ; preds = %bb.ay
  %.pre.i = load i32, ptr %i.ho, align 8, !tbaa !215
  br label %int_param.exit.i

bb.az:                                            ; preds = %bb.ay
  %i.hw = load i64, ptr @rb_eTypeError, align 8, !tbaa !36
  call void (i64, ptr, ...) @rb_raise(i64 noundef %i.hw, ptr noundef nonnull @.str.196, i64 noundef %i.hq, i64 noundef %i.hr) #41
  unreachable

int_param.exit.i:                                 ; preds = %.int_param.exit_crit_edge.i, %bb.ax
  %i.hx = phi i32 [ %.pre.i, %.int_param.exit_crit_edge.i ], [ %i.hu, %bb.ax ]
  %i.hy = sub i32 %i.hx, %i.hi
  %i.hz = load ptr, ptr %i.ad, align 8, !tbaa !46
  %i.ia = getelementptr i8, ptr %i.hz, i64 144
  %i.ib = load ptr, ptr %i.ia, align 8, !tbaa !188
  %i.ic = sext i32 %i.hy to i64
  %i.id = getelementptr [8 x i8], ptr %i.ib, i64 %i.ic ; 5 uses
  %i.ie = icmp sgt i64 %.0.i.i.i, 0
  br i1 %i.ie, label %.lr.ph.i133, label %.thread.i

.lr.ph.i133:                                      ; preds = %int_param.exit.i
  %i.if = getelementptr i8, ptr %i.gy, i64 16
  %i.ig = getelementptr i8, ptr %i.gy, i64 32
  %i.ih = getelementptr inbounds nuw i8, ptr %i.hj, i64 4 ; 2 uses
  br label %bb.ba

bb.ba:                                            ; preds = %RB_SYMBOL_P.exit.thread.i, %.lr.ph.i133
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i133 ], [ %indvars.iv.next.i, %RB_SYMBOL_P.exit.thread.i ] ; 5 uses
  %i.ii = load i64, ptr %i.gy, align 8, !tbaa !75
  %i.ij = and i64 %i.ii, 8192
  %.not.i.i60.i = icmp eq i64 %i.ij, 0
  br i1 %.not.i.i60.i, label %bb.bb, label %RARRAY_AREF.exit.i

bb.bb:                                            ; preds = %bb.ba
  %i.ik = load ptr, ptr %i.ig, align 8, !tbaa !20
  br label %RARRAY_AREF.exit.i

RARRAY_AREF.exit.i:                               ; preds = %bb.bb, %bb.ba
  %.0.i.i61.i = phi ptr [ %i.ik, %bb.bb ], [ %i.if, %bb.ba ]
  %i.il = getelementptr [8 x i8], ptr %.0.i.i61.i, i64 %indvars.iv.i
  %i.im = load i64, ptr %i.il, align 8, !tbaa !36 ; 5 uses
  %i.in = and i64 %i.im, 255
  %i.io = icmp eq i64 %i.in, 12
  br i1 %i.io, label %RB_SYMBOL_P.exit.thread.i, label %bb.bc

bb.bc:                                            ; preds = %RARRAY_AREF.exit.i
  %i.ip = icmp eq i64 %i.im, 0
  %i.iq = and i64 %i.im, 7
  %i.ir = icmp ne i64 %i.iq, 0
  %i.is = or i1 %i.ip, %i.ir
  br i1 %i.is, label %.thread.loopexit.split.loop.exit.i, label %RB_SYMBOL_P.exit.i

RB_SYMBOL_P.exit.i:                               ; preds = %bb.bc
  %i.it = inttoptr i64 %i.im to ptr
  %i.iu = load i64, ptr %i.it, align 8, !tbaa !75
  %i.iv = and i64 %i.iu, 31
  %i.iw = icmp eq i64 %i.iv, 20
  br i1 %i.iw, label %RB_SYMBOL_P.exit.thread.i, label %.thread.loopexit.split.loop.exit95.i

RB_SYMBOL_P.exit.thread.i:                        ; preds = %RB_SYMBOL_P.exit.i, %RARRAY_AREF.exit.i
  %i.ix = call i64 @rb_sym2id(i64 noundef %i.im) #37
  %i.iy = getelementptr [8 x i8], ptr %i.id, i64 %indvars.iv.i
  store i64 %i.ix, ptr %i.iy, align 8, !tbaa !36
  %i.iz = load i32, ptr %i.ih, align 4, !tbaa !226
  %i.ja = add i32 %i.iz, 1
  store i32 %i.ja, ptr %i.ih, align 4, !tbaa !226
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %.0.i.i.i
  br i1 %exitcond.not.i, label %iseq_build_kw.exit, label %bb.ba, !llvm.loop !297

.thread.loopexit.split.loop.exit.i:               ; preds = %bb.bc
  %i.jb = trunc nuw nsw i64 %indvars.iv.i to i32
  br label %.thread.i

.thread.loopexit.split.loop.exit95.i:             ; preds = %RB_SYMBOL_P.exit.i
  %i.jc = trunc nuw nsw i64 %indvars.iv.i to i32
  br label %.thread.i

.thread.i:                                        ; preds = %.thread.loopexit.split.loop.exit95.i, %.thread.loopexit.split.loop.exit.i, %int_param.exit.i
  %.054.lcssa.i = phi i32 [ 0, %int_param.exit.i ], [ %i.jc, %.thread.loopexit.split.loop.exit95.i ], [ %i.jb, %.thread.loopexit.split.loop.exit.i ] ; 4 uses
  %i.jd = icmp eq i32 %.054.lcssa.i, %i.hi
  br i1 %i.jd, label %iseq_build_kw.exit, label %bb.bd

bb.bd:                                            ; preds = %.thread.i
  %i.je = sub i32 %i.hi, %.054.lcssa.i            ; 3 uses
  %i.jf = icmp sgt i32 %i.je, -1
  call void @llvm.assume(i1 %i.jf)
  %i.jg = zext nneg i32 %i.je to i64
  %i.jh = call noalias nonnull ptr @ruby_xmalloc2(i64 noundef %i.jg, i64 noundef 8) #39 ; 2 uses
  %i.ji = icmp slt i32 %.054.lcssa.i, %i.hi
  br i1 %i.ji, label %.lr.ph84.i, label %._crit_edge.i

.lr.ph84.i:                                       ; preds = %bb.bd
  %i.jj = getelementptr i8, ptr %i.gy, i64 16
  %i.jk = getelementptr i8, ptr %i.gy, i64 32
  %i.jl = ptrtoint ptr %0 to i64
  %i.jm = zext i32 %.054.lcssa.i to i64
  br label %bb.be

bb.be:                                            ; preds = %rb_obj_write.exit.i, %.lr.ph84.i
  %indvars.iv87.i = phi i64 [ %i.jm, %.lr.ph84.i ], [ %indvars.iv.next88.i, %rb_obj_write.exit.i ] ; 3 uses
  %.05582.i = phi i32 [ 0, %.lr.ph84.i ], [ %i.kr, %rb_obj_write.exit.i ] ; 2 uses
  %i.jn = load i64, ptr %i.gy, align 8, !tbaa !75
  %i.jo = and i64 %i.jn, 8192
  %.not.i.i62.i = icmp eq i64 %i.jo, 0
  br i1 %.not.i.i62.i, label %bb.bf, label %RARRAY_AREF.exit64.i

bb.bf:                                            ; preds = %bb.be
  %i.jp = load ptr, ptr %i.jk, align 8, !tbaa !20
  br label %RARRAY_AREF.exit64.i

RARRAY_AREF.exit64.i:                             ; preds = %bb.bf, %bb.be
  %.0.i.i63.i = phi ptr [ %i.jp, %bb.bf ], [ %i.jj, %bb.be ]
  %i.jq = getelementptr [8 x i8], ptr %.0.i.i63.i, i64 %indvars.iv87.i
  %i.jr = load i64, ptr %i.jq, align 8, !tbaa !36 ; 3 uses
  %i.js = call i64 @rb_to_array_type(i64 noundef %i.jr) #37 ; 0 uses
  %i.jt = inttoptr i64 %i.jr to ptr               ; 6 uses
  %i.ju = load i64, ptr %i.jt, align 8, !tbaa !75 ; 2 uses
  %i.jv = and i64 %i.ju, 8192
  %.not.i.i131 = icmp eq i64 %i.jv, 0             ; 3 uses
  br i1 %.not.i.i131, label %bb.bh, label %bb.bg

bb.bg:                                            ; preds = %RARRAY_AREF.exit64.i
  %i.jw = lshr i64 %i.ju, 15
  %i.jx = and i64 %i.jw, 127
  br label %rb_array_len.exit.i132

bb.bh:                                            ; preds = %RARRAY_AREF.exit64.i
  %i.jy = getelementptr i8, ptr %i.jt, i64 16
  %i.jz = load i64, ptr %i.jy, align 8, !tbaa !20
  br label %rb_array_len.exit.i132

rb_array_len.exit.i132:                           ; preds = %bb.bh, %bb.bg
  %.0.i65.i = phi i64 [ %i.jx, %bb.bg ], [ %i.jz, %bb.bh ]
  switch i64 %.0.i65.i, label %bb.bo [
    i64 1, label %bb.bi
    i64 2, label %bb.bl
  ]

bb.bi:                                            ; preds = %rb_array_len.exit.i132
  br i1 %.not.i.i131, label %bb.bk, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.ka = getelementptr i8, ptr %i.jt, i64 16
  br label %RARRAY_AREF.exit68.i

bb.bk:                                            ; preds = %bb.bi
  %i.kb = getelementptr i8, ptr %i.jt, i64 32
  %i.kc = load ptr, ptr %i.kb, align 8, !tbaa !20
  br label %RARRAY_AREF.exit68.i

bb.bl:                                            ; preds = %rb_array_len.exit.i132
  br i1 %.not.i.i131, label %bb.bn, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.kd = getelementptr i8, ptr %i.jt, i64 16
  br label %RARRAY_AREF.exit74.i

bb.bn:                                            ; preds = %bb.bl
  %i.ke = getelementptr i8, ptr %i.jt, i64 32
  %i.kf = load ptr, ptr %i.ke, align 8, !tbaa !20
  br label %RARRAY_AREF.exit74.i

RARRAY_AREF.exit74.i:                             ; preds = %bb.bn, %bb.bm
  %.in.i = phi ptr [ %i.kd, %bb.bm ], [ %i.kf, %bb.bn ] ; 2 uses
  %i.kg = getelementptr i8, ptr %.in.i, i64 8
  %i.kh = load i64, ptr %i.kg, align 8, !tbaa !36
  br label %RARRAY_AREF.exit68.i

bb.bo:                                            ; preds = %rb_array_len.exit.i132
  %i.ki = load i64, ptr @rb_eTypeError, align 8, !tbaa !36
  call void (i64, ptr, ...) @rb_raise(i64 noundef %i.ki, ptr noundef nonnull @.str.198, i64 noundef %i.jr) #41
  unreachable

RARRAY_AREF.exit68.i:                             ; preds = %RARRAY_AREF.exit74.i, %bb.bk, %bb.bj
  %.057.i = phi i64 [ %i.kh, %RARRAY_AREF.exit74.i ], [ 36, %bb.bj ], [ 36, %bb.bk ] ; 4 uses
  %.056.in.i = phi ptr [ %.in.i, %RARRAY_AREF.exit74.i ], [ %i.ka, %bb.bj ], [ %i.kc, %bb.bk ]
  %.056.i = load i64, ptr %.056.in.i, align 8, !tbaa !36
  %i.kj = call i64 @rb_sym2id(i64 noundef %.056.i) #37
  %i.kk = getelementptr [8 x i8], ptr %i.id, i64 %indvars.iv87.i
  store i64 %i.kj, ptr %i.kk, align 8, !tbaa !36
  %i.kl = sext i32 %.05582.i to i64
  %i.km = getelementptr [8 x i8], ptr %i.jh, i64 %i.kl
  store i64 %.057.i, ptr %i.km, align 8, !tbaa !36
  %i.kn = icmp eq i64 %.057.i, 0
  %i.ko = and i64 %.057.i, 7
  %i.kp = icmp ne i64 %i.ko, 0
  %i.kq = or i1 %i.kn, %i.kp
  br i1 %i.kq, label %rb_obj_write.exit.i, label %bb.bp

bb.bp:                                            ; preds = %RARRAY_AREF.exit68.i
  call void @rb_gc_writebarrier(i64 noundef %i.jl, i64 noundef %.057.i) #37
  br label %rb_obj_write.exit.i

end_hunk_1
begin_hunk_2_@rb_ibf_load_iseq_complete:bb.a
  %.reass2916 = add i32 %i.dbl, %invariant.op2915
  %i.dbm = zext i32 %.reass2916 to i64
  %i.dbn = getelementptr i8, ptr %i.x, i64 %i.dbm
  %i.dbo = load i8, ptr %i.dbn, align 1, !tbaa !20
  %i.dbp = zext i8 %i.dbo to i64
  %i.dbq = shl i64 %i.dbk, 16
  %i.dbr = shl nuw nsw i64 %i.dbp, 8
  %i.dbs = or disjoint i64 %i.dbq, %i.dbr
  %i.dbt = trunc i64 %indvars.iv.i148 to i32
  %.reass2918 = add i32 %i.dbt, %invariant.op2917
  %i.dbu = zext i32 %.reass2918 to i64
  %i.dbv = getelementptr i8, ptr %i.x, i64 %i.dbu
  %i.dbw = load i8, ptr %i.dbv, align 1, !tbaa !20
  %i.dbx = zext i8 %i.dbw to i64
  %i.dby = or disjoint i64 %i.dbs, %i.dbx         ; 3 uses
  %indvars.iv.next.i149.3 = add nuw nsw i64 %indvars.iv.i148, 4 ; 2 uses
  %niter2365.next.3 = add i64 %niter2365, 4       ; 2 uses
  %niter2365.ncmp.3 = icmp eq i64 %niter2365.next.3, %unroll_iter2364
  br i1 %niter2365.ncmp.3, label %ibf_load_small_value.exit.loopexit.unr-lcssa, label %.lr.ph.i147, !llvm.loop !361

ibf_load_small_value.exit.loopexit.unr-lcssa:     ; preds = %.lr.ph.i147
  %lcmp.mod2361.not = icmp eq i64 %xtraiter2359, 0
  br i1 %lcmp.mod2361.not, label %ibf_load_small_value.exit, label %.lr.ph.i147.epil.preheader

.lr.ph.i147.epil.preheader:                       ; preds = %ibf_load_small_value.exit.loopexit.unr-lcssa, %bb.ee
  %indvars.iv.i148.epil.init = phi i64 [ 1, %bb.ee ], [ %indvars.iv.next.i149.3, %ibf_load_small_value.exit.loopexit.unr-lcssa ]
  %.0211.i.epil.init = phi i64 [ %i.das, %bb.ee ], [ %i.dby, %ibf_load_small_value.exit.loopexit.unr-lcssa ]
  %lcmp.mod2363 = icmp ne i64 %xtraiter2359, 0
  tail call void @llvm.assume(i1 %lcmp.mod2363)
  br label %.lr.ph.i147.epil

.lr.ph.i147.epil:                                 ; preds = %.lr.ph.i147.epil, %.lr.ph.i147.epil.preheader
  %indvars.iv.i148.epil = phi i64 [ %indvars.iv.next.i149.epil, %.lr.ph.i147.epil ], [ %indvars.iv.i148.epil.init, %.lr.ph.i147.epil.preheader ] ; 2 uses
  %.0211.i.epil = phi i64 [ %i.dcg, %.lr.ph.i147.epil ], [ %.0211.i.epil.init, %.lr.ph.i147.epil.preheader ]
  %epil.iter2360 = phi i64 [ %epil.iter2360.next, %.lr.ph.i147.epil ], [ 0, %.lr.ph.i147.epil.preheader ]
  %i.dbz = shl i64 %.0211.i.epil, 8
  %i.dca = trunc nuw nsw i64 %indvars.iv.i148.epil to i32
  %i.dcb = add i32 %i.czz, %i.dca
  %i.dcc = zext i32 %i.dcb to i64
  %i.dcd = getelementptr i8, ptr %i.x, i64 %i.dcc
  %i.dce = load i8, ptr %i.dcd, align 1, !tbaa !20
  %i.dcf = zext i8 %i.dce to i64
  %i.dcg = or disjoint i64 %i.dbz, %i.dcf         ; 2 uses
  %indvars.iv.next.i149.epil = add nuw nsw i64 %indvars.iv.i148.epil, 1
  %epil.iter2360.next = add i64 %epil.iter2360, 1 ; 2 uses
  %epil.iter2360.cmp.not = icmp eq i64 %epil.iter2360.next, %xtraiter2359
  br i1 %epil.iter2360.cmp.not, label %ibf_load_small_value.exit, label %.lr.ph.i147.epil, !llvm.loop !405

ibf_load_small_value.exit:                        ; preds = %ibf_load_small_value.exit.loopexit.unr-lcssa, %.lr.ph.i147.epil, %.thread4.i
  %.021.lcssa.i = phi i64 [ %i.dao, %.thread4.i ], [ %i.dby, %ibf_load_small_value.exit.loopexit.unr-lcssa ], [ %i.dcg, %.lr.ph.i147.epil ]
  %i.dch = icmp ne i64 %.021.lcssa.i, 0
  %i.dci = zext i1 %i.dch to i8
  %i.dcj = tail call fastcc i64 @ibf_load_object(ptr noundef %i.i, i64 noundef %.021.lcssa.i474), !inline_history !357 ; 4 uses
  %i.dck = icmp eq i64 %i.dcj, 0
  %i.dcl = and i64 %i.dcj, 7
  %i.dcm = icmp ne i64 %i.dcl, 0
  %i.dcn = or i1 %i.dck, %i.dcm
  br i1 %i.dcn, label %rbimpl_RB_TYPE_P_fastpath.exit258.i.thread, label %rbimpl_RB_TYPE_P_fastpath.exit260.i

rbimpl_RB_TYPE_P_fastpath.exit260.i:              ; preds = %ibf_load_small_value.exit
  %i.dco = inttoptr i64 %i.dcj to ptr             ; 7 uses
  %i.dcp = load i64, ptr %i.dco, align 8, !tbaa !75 ; 3 uses
  %i.dcq = and i64 %i.dcp, 31
  switch i64 %i.dcq, label %rbimpl_RB_TYPE_P_fastpath.exit258.i.thread [
    i64 5, label %bb.ef
    i64 7, label %bb.eg
  ]

bb.ef:                                            ; preds = %rbimpl_RB_TYPE_P_fastpath.exit260.i
  %i.dcr = tail call i64 @rb_fstring(i64 noundef %i.dcj) #37, !inline_history !357 ; 2 uses
  br label %bb.en

bb.eg:                                            ; preds = %rbimpl_RB_TYPE_P_fastpath.exit260.i
  %i.dcs = and i64 %i.dcp, 8192
  %.not.i143 = icmp eq i64 %i.dcs, 0
  br i1 %.not.i143, label %rb_array_len.exit, label %rb_array_len.exit.thread

rb_array_len.exit:                                ; preds = %bb.eg
  %i.dct = getelementptr i8, ptr %i.dco, i64 16
  %i.dcu = load i64, ptr %i.dct, align 8, !tbaa !20
  %.not.i = icmp eq i64 %i.dcu, 2
  br i1 %.not.i, label %bb.ei, label %bb.eh

rb_array_len.exit.thread:                         ; preds = %bb.eg
  %i.dcv = and i64 %i.dcp, 4161536
  %.not.i738 = icmp eq i64 %i.dcv, 65536
  br i1 %.not.i738, label %.thread739, label %bb.eh

bb.eh:                                            ; preds = %rb_array_len.exit.thread, %rb_array_len.exit
  %i.dcw = load i64, ptr @rb_eRuntimeError, align 8, !tbaa !36
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.dcw, ptr noundef nonnull @.str.233) #41, !inline_history !357
  unreachable

.thread739:                                       ; preds = %rb_array_len.exit.thread
  %i.dcx = getelementptr i8, ptr %i.dco, i64 16
  br label %RARRAY_AREF.exit142

bb.ei:                                            ; preds = %rb_array_len.exit
  %i.dcy = getelementptr i8, ptr %i.dco, i64 32
  %i.dcz = load ptr, ptr %i.dcy, align 8, !tbaa !20
  br label %RARRAY_AREF.exit142

RARRAY_AREF.exit142:                              ; preds = %.thread739, %bb.ei
  %.0.i.i141 = phi ptr [ %i.dcx, %.thread739 ], [ %i.dcz, %bb.ei ]
  %i.dda = load i64, ptr %.0.i.i141, align 8, !tbaa !36
  %i.ddb = tail call i64 @rb_fstring(i64 noundef %i.dda) #37, !inline_history !357 ; 3 uses
  %i.ddc = load i64, ptr %i.dco, align 8, !tbaa !75
  %i.ddd = and i64 %i.ddc, 8192
  %.not.i.i138 = icmp eq i64 %i.ddd, 0
  br i1 %.not.i.i138, label %bb.ek, label %bb.ej

bb.ej:                                            ; preds = %RARRAY_AREF.exit142
  %i.dde = getelementptr i8, ptr %i.dco, i64 16
  br label %RARRAY_AREF.exit

bb.ek:                                            ; preds = %RARRAY_AREF.exit142
  %i.ddf = getelementptr i8, ptr %i.dco, i64 32
  %i.ddg = load ptr, ptr %i.ddf, align 8, !tbaa !20
  br label %RARRAY_AREF.exit

RARRAY_AREF.exit:                                 ; preds = %bb.ej, %bb.ek
  %.0.i.i139 = phi ptr [ %i.dde, %bb.ej ], [ %i.ddg, %bb.ek ]
  %i.ddh = getelementptr i8, ptr %.0.i.i139, i64 8
  %i.ddi = load i64, ptr %i.ddh, align 8, !tbaa !36 ; 7 uses
  %i.ddj = icmp eq i64 %i.ddi, 4
  br i1 %i.ddj, label %bb.en, label %bb.el

bb.el:                                            ; preds = %RARRAY_AREF.exit
  %i.ddk = icmp eq i64 %i.ddi, 0
  %i.ddl = and i64 %i.ddi, 7
  %i.ddm = icmp ne i64 %i.ddl, 0
  %i.ddn = or i1 %i.ddk, %i.ddm
  br i1 %i.ddn, label %rbimpl_RB_TYPE_P_fastpath.exit.i.thread, label %rbimpl_RB_TYPE_P_fastpath.exit.i

rbimpl_RB_TYPE_P_fastpath.exit.i:                 ; preds = %bb.el
  %i.ddo = inttoptr i64 %i.ddi to ptr
  %i.ddp = load i64, ptr %i.ddo, align 8, !tbaa !75
  %i.ddq = and i64 %i.ddp, 31
  %i.ddr = icmp eq i64 %i.ddq, 5
  br i1 %i.ddr, label %bb.em, label %rbimpl_RB_TYPE_P_fastpath.exit.i.thread

rbimpl_RB_TYPE_P_fastpath.exit.i.thread:          ; preds = %bb.el, %rbimpl_RB_TYPE_P_fastpath.exit.i
  %i.dds = load i64, ptr @rb_eArgError, align 8, !tbaa !36
  %i.ddt = tail call fastcc i32 @rb_type(i64 noundef %i.ddi) #44, !inline_history !357
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.dds, ptr noundef nonnull @.str.234, i64 noundef %i.ddi, i32 noundef %i.ddt, i64 noundef %i.ddb) #41, !inline_history !357
  unreachable

bb.em:                                            ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i
  %i.ddu = tail call i64 @rb_fstring(i64 noundef %i.ddi) #37, !inline_history !357
  br label %bb.en

rbimpl_RB_TYPE_P_fastpath.exit258.i.thread:       ; preds = %rbimpl_RB_TYPE_P_fastpath.exit260.i, %ibf_load_small_value.exit
  %i.ddv = load i64, ptr @rb_eRuntimeError, align 8, !tbaa !36
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.ddv, ptr noundef nonnull @.str.235) #41, !inline_history !357
  unreachable

bb.en:                                            ; preds = %bb.em, %RARRAY_AREF.exit, %bb.ef
  %.1.i = phi i64 [ %i.dcr, %bb.ef ], [ 4, %RARRAY_AREF.exit ], [ %i.ddu, %bb.em ]
  %.0.i = phi i64 [ %i.dcr, %bb.ef ], [ %i.ddb, %RARRAY_AREF.exit ], [ %i.ddb, %bb.em ] ; 2 uses
  tail call void @rb_iseq_pathobj_set(ptr noundef %0, i64 noundef %.0.i, i64 noundef %.1.i) #37, !inline_history !357
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.ddw = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @ruby_current_ec)
  %i.ddx = load ptr, ptr %i.ddw, align 8, !tbaa !406
  store volatile ptr %i.ddx, ptr %i.a, align 8, !tbaa !406
  %.0..0..0..0..0..0..i = load volatile ptr, ptr %i.a, align 8, !tbaa !406 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #37
  %i.ddy = tail call i64 @rb_vm_push_frame_fname(ptr noundef %.0..0..0..0..0..0..i, i64 noundef %.0.i) #37, !inline_history !357
  store i64 %i.ddy, ptr %i.c, align 8, !tbaa !36
  store i32 %.021.lcssa.i628, ptr %i.u, align 8, !tbaa !47
  %i.ddz = getelementptr i8, ptr %i.u, i64 264
  store i32 %.021.lcssa.i166, ptr %i.ddz, align 8, !tbaa !146
  %i.dea = getelementptr i8, ptr %i.u, i64 16     ; 4 uses
  %i.deb = trunc i64 %.021.lcssa.i584 to i16      ; 2 uses
  %i.dec = load i16, ptr %i.dea, align 8
  %i.ded = and i16 %i.dec, -16384
  %i.dee = and i16 %i.deb, 16367
  %i.def = or disjoint i16 %i.ded, %i.dee
  store i16 %i.def, ptr %i.dea, align 8
  %i.deg = getelementptr i8, ptr %i.u, i64 20
  store i32 %.021.lcssa.i573, ptr %i.deg, align 4, !tbaa !259
  %i.deh = getelementptr i8, ptr %i.u, i64 24
  store i32 %.021.lcssa.i562, ptr %i.deh, align 8, !tbaa !190
  %i.dei = getelementptr i8, ptr %i.u, i64 28
  store i32 %.021.lcssa.i551, ptr %i.dei, align 4, !tbaa !163
  %i.dej = getelementptr i8, ptr %i.u, i64 32
  store i32 %.021.lcssa.i540, ptr %i.dej, align 8, !tbaa !205
  %i.dek = getelementptr i8, ptr %i.u, i64 36
  store i32 %.021.lcssa.i529, ptr %i.dek, align 4, !tbaa !207
  %i.del = getelementptr i8, ptr %i.u, i64 40
  store i32 %.021.lcssa.i518, ptr %i.del, align 8, !tbaa !209
  %i.dem = getelementptr i8, ptr %i.u, i64 44
  store i32 %.021.lcssa.i507, ptr %i.dem, align 4, !tbaa !231
  %i.den = getelementptr i8, ptr %i.u, i64 240
  store i32 %i.cjc, ptr %i.den, align 8, !tbaa !175
  %i.deo = getelementptr i8, ptr %i.u, i64 260
  store i32 %i.cvd, ptr %i.deo, align 4, !tbaa !110
  %i.dep = getelementptr i8, ptr %i.u, i64 112    ; 2 uses
  %i.deq = getelementptr i8, ptr %i.u, i64 128
  store i32 %i.bip, ptr %i.deq, align 8, !tbaa !151
  %i.der = ptrtoint ptr %0 to i64                 ; 10 uses
  %i.des = load ptr, ptr %i.v, align 8, !tbaa !46 ; 2 uses
  %i.det = getelementptr i8, ptr %i.des, i64 216
  store i64 4, ptr %i.det, align 8, !tbaa !36
  %i.deu = getelementptr i8, ptr %i.des, i64 232  ; 2 uses
  %i.dev = load ptr, ptr %i.deu, align 8, !tbaa !281
  store ptr null, ptr %i.deu, align 8, !tbaa !281
  tail call void @ruby_xfree(ptr noundef %i.dev) #37
  %i.dew = getelementptr i8, ptr %i.u, i64 200
  store i64 %.021.lcssa.i243, ptr %i.dew, align 8, !tbaa !408
  %i.dex = getelementptr i8, ptr %i.u, i64 208
  store i64 4, ptr %i.dex, align 8, !tbaa !409
  %i.dey = getelementptr i8, ptr %i.u, i64 88
  store i32 %.021.lcssa.i441, ptr %i.dey, align 8, !tbaa !270
  %i.dez = getelementptr i8, ptr %i.u, i64 92
  store i32 %.021.lcssa.i430, ptr %i.dez, align 4, !tbaa !410
  %i.dfa = getelementptr i8, ptr %i.u, i64 96
  store i32 %.021.lcssa.i419, ptr %i.dfa, align 8, !tbaa !411
  %i.dfb = getelementptr i8, ptr %i.u, i64 100
  store i32 %.021.lcssa.i408, ptr %i.dfb, align 4, !tbaa !412
  %i.dfc = getelementptr i8, ptr %i.u, i64 104
  store i32 %.021.lcssa.i397, ptr %i.dfc, align 8, !tbaa !272
  %i.dfd = getelementptr i8, ptr %i.u, i64 108
  store i32 %.021.lcssa.i386, ptr %i.dfd, align 4, !tbaa !413
  %i.dfe = getelementptr i8, ptr %i.u, i64 268
  store i32 %.021.lcssa.i155, ptr %i.dfe, align 4, !tbaa !414
  %i.dff = getelementptr i8, ptr %i.u, i64 272
  store i8 %i.dci, ptr %i.dff, align 8, !tbaa !415
  %i.dfg = getelementptr i8, ptr %i.u, i64 252
  store i32 %.021.lcssa.i221, ptr %i.dfg, align 4, !tbaa !123
  %i.dfh = getelementptr i8, ptr %i.u, i64 256
  store i32 %.021.lcssa.i210, ptr %i.dfh, align 8, !tbaa !122
  %i.dfi = getelementptr i8, ptr %i.u, i64 248
  store i32 %.021.lcssa.i199, ptr %i.dfi, align 8, !tbaa !121
  %i.dfj = getelementptr i8, ptr %i.u, i64 244
  store i32 %.021.lcssa.i188, ptr %i.dfj, align 4, !tbaa !124
  %i.dfk = add i32 %.021.lcssa.i210, %.021.lcssa.i221
  %i.dfl = add i32 %i.dfk, %.021.lcssa.i199
  %i.dfm = add i32 %i.dfl, %.021.lcssa.i188       ; 2 uses
  %.not253.i = icmp eq i32 %i.dfm, 0
  br i1 %.not253.i, label %bb.ep, label %bb.eo

bb.eo:                                            ; preds = %bb.en
  %i.dfn = zext i32 %i.dfm to i64
  %i.dfo = tail call noalias nonnull ptr @ruby_xcalloc(i64 noundef %i.dfn, i64 noundef 16) #39, !inline_history !357
  br label %bb.ep

bb.ep:                                            ; preds = %bb.en, %bb.eo
  %.sink = phi ptr [ %i.dfo, %bb.eo ], [ null, %bb.en ]
  %i.dfp = getelementptr i8, ptr %i.u, i64 184
  store ptr %.sink, ptr %i.dfp, align 8, !tbaa !109
  %i.dfq = getelementptr i8, ptr %i.u, i64 192    ; 2 uses
  %.not.i116 = icmp eq i32 %i.cvd, 0
  br i1 %.not.i116, label %bb.eq, label %bb.er

bb.eq:                                            ; preds = %bb.ep
  store ptr null, ptr %i.dfq, align 8, !tbaa !416
  br label %ibf_load_ci_entries.exit

bb.er:                                            ; preds = %bb.ep
  %i.dfr = and i64 %.021.lcssa.i177, 4294967295   ; 2 uses
  %i.dfs = tail call noalias nonnull ptr @ruby_xcalloc(i64 noundef %i.dfr, i64 noundef 16) #39 ; 3 uses
  store ptr %i.dfs, ptr %i.dfq, align 8, !tbaa !416
  br label %bb.es

bb.es:                                            ; preds = %bb.fu, %bb.er
  %indvars.iv118.i = phi i64 [ 0, %bb.er ], [ %indvars.iv.next119.i, %bb.fu ] ; 3 uses
  %.098110.i = phi i32 [ %i.cbz, %bb.er ], [ %.3.i125, %bb.fu ] ; 8 uses
  %.val52.i = load ptr, ptr %i.w, align 8, !tbaa !358 ; 3 uses
  %i.dft = load ptr, ptr %.val52.i, align 8, !tbaa !359 ; 6 uses
  %i.dfu = zext i32 %.098110.i to i64
  %i.dfv = getelementptr i8, ptr %i.dft, i64 %i.dfu
  %i.dfw = load i8, ptr %i.dfv, align 1, !tbaa !20 ; 4 uses
  %i.dfx = zext i8 %i.dfw to i32                  ; 2 uses
  %i.dfy = and i32 %i.dfx, 1
  %.not.i.i117 = icmp eq i32 %i.dfy, 0
  br i1 %.not.i.i117, label %bb.et, label %.thread.i.i118

bb.et:                                            ; preds = %bb.es
  %i.dfz = icmp eq i8 %i.dfw, 0
  %i.dga = tail call range(i32 0, 8) i32 @llvm.cttz.i32(i32 range(i32 1, 256) %i.dfx, i1 true)
  %i.dgb = add nuw nsw i32 %i.dga, 1
  %i.dgc = select i1 %i.dfz, i32 9, i32 %i.dgb    ; 3 uses
  %i.dgd = add i32 %i.dgc, %.098110.i             ; 3 uses
  %i.dge = getelementptr i8, ptr %.val52.i, i64 8
  %i.dgf = load i32, ptr %i.dge, align 8, !tbaa !360
  %i.dgg = icmp ugt i32 %i.dgd, %i.dgf
  br i1 %i.dgg, label %bb.eu, label %bb.ev

.thread.i.i118:                                   ; preds = %bb.es
  %i.dgh = add i32 %.098110.i, 1                  ; 2 uses
  %i.dgi = getelementptr i8, ptr %.val52.i, i64 8
  %i.dgj = load i32, ptr %i.dgi, align 8, !tbaa !360
  %i.dgk = icmp ugt i32 %i.dgh, %i.dgj
  br i1 %i.dgk, label %bb.eu, label %ibf_load_small_value.exit.thread.i

ibf_load_small_value.exit.thread.i:               ; preds = %.thread.i.i118
  %i.dgl = lshr i8 %i.dfw, 1
  %i.dgm = zext nneg i8 %i.dgl to i64
  br label %bb.ew

bb.eu:                                            ; preds = %.thread.i.i118, %bb.et
  %i.dgn = load i64, ptr @rb_eRuntimeError, align 8, !tbaa !36
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.dgn, ptr noundef nonnull @.str.236) #41
  unreachable

bb.ev:                                            ; preds = %bb.et
  %i.dgo = zext i8 %i.dfw to i64
  %i.dgp = zext nneg i32 %i.dgc to i64            ; 2 uses
  %i.dgq = lshr i64 %i.dgo, %i.dgp                ; 2 uses
  %i.dgr = add nsw i64 %i.dgp, -1                 ; 2 uses
  %xtraiter2367 = and i64 %i.dgr, 3               ; 3 uses
  %i.dgs = add nsw i32 %i.dgc, -2
  %i.dgt = icmp ult i32 %i.dgs, 3
  br i1 %i.dgt, label %.lr.ph.i.i131.epil.preheader, label %.new2366

.new2366:                                         ; preds = %bb.ev
  %unroll_iter2372 = and i64 %i.dgr, -4
  %invariant.op2919 = add i32 1, %.098110.i
  %invariant.op2921 = add i32 2, %.098110.i
  %invariant.op2923 = add i32 3, %.098110.i
  br label %.lr.ph.i.i131

.lr.ph.i.i131:                                    ; preds = %.lr.ph.i.i131, %.new2366
  %indvars.iv.i.i132 = phi i64 [ 1, %.new2366 ], [ %indvars.iv.next.i.i134.3, %.lr.ph.i.i131 ] ; 5 uses
  %.0211.i.i133 = phi i64 [ %i.dgq, %.new2366 ], [ %i.dhw, %.lr.ph.i.i131 ]
  %niter2373 = phi i64 [ 0, %.new2366 ], [ %niter2373.next.3, %.lr.ph.i.i131 ]
  %i.dgu = trunc nuw nsw i64 %indvars.iv.i.i132 to i32
  %i.dgv = add i32 %.098110.i, %i.dgu
  %i.dgw = zext i32 %i.dgv to i64
  %i.dgx = getelementptr i8, ptr %i.dft, i64 %i.dgw
  %i.dgy = load i8, ptr %i.dgx, align 1, !tbaa !20
  %i.dgz = zext i8 %i.dgy to i64
  %i.dha = shl i64 %.0211.i.i133, 16
  %i.dhb = shl nuw nsw i64 %i.dgz, 8
  %i.dhc = or disjoint i64 %i.dha, %i.dhb
  %i.dhd = trunc i64 %indvars.iv.i.i132 to i32
  %.reass2920 = add i32 %i.dhd, %invariant.op2919
  %i.dhe = zext i32 %.reass2920 to i64
  %i.dhf = getelementptr i8, ptr %i.dft, i64 %i.dhe
  %i.dhg = load i8, ptr %i.dhf, align 1, !tbaa !20
  %i.dhh = zext i8 %i.dhg to i64
  %i.dhi = or disjoint i64 %i.dhc, %i.dhh
  %i.dhj = trunc i64 %indvars.iv.i.i132 to i32
  %.reass2922 = add i32 %i.dhj, %invariant.op2921
  %i.dhk = zext i32 %.reass2922 to i64
  %i.dhl = getelementptr i8, ptr %i.dft, i64 %i.dhk
  %i.dhm = load i8, ptr %i.dhl, align 1, !tbaa !20
  %i.dhn = zext i8 %i.dhm to i64
  %i.dho = shl i64 %i.dhi, 16
  %i.dhp = shl nuw nsw i64 %i.dhn, 8
  %i.dhq = or disjoint i64 %i.dho, %i.dhp
  %i.dhr = trunc i64 %indvars.iv.i.i132 to i32
  %.reass2924 = add i32 %i.dhr, %invariant.op2923
  %i.dhs = zext i32 %.reass2924 to i64
  %i.dht = getelementptr i8, ptr %i.dft, i64 %i.dhs
  %i.dhu = load i8, ptr %i.dht, align 1, !tbaa !20
  %i.dhv = zext i8 %i.dhu to i64
  %i.dhw = or disjoint i64 %i.dhq, %i.dhv         ; 3 uses
  %indvars.iv.next.i.i134.3 = add nuw nsw i64 %indvars.iv.i.i132, 4 ; 2 uses
  %niter2373.next.3 = add i64 %niter2373, 4       ; 2 uses
  %niter2373.ncmp.3 = icmp eq i64 %niter2373.next.3, %unroll_iter2372
  br i1 %niter2373.ncmp.3, label %ibf_load_small_value.exit.i136.unr-lcssa, label %.lr.ph.i.i131, !llvm.loop !361

ibf_load_small_value.exit.i136.unr-lcssa:         ; preds = %.lr.ph.i.i131
  %lcmp.mod2369.not = icmp eq i64 %xtraiter2367, 0
  br i1 %lcmp.mod2369.not, label %ibf_load_small_value.exit.i136, label %.lr.ph.i.i131.epil.preheader

.lr.ph.i.i131.epil.preheader:                     ; preds = %ibf_load_small_value.exit.i136.unr-lcssa, %bb.ev
  %indvars.iv.i.i132.epil.init = phi i64 [ 1, %bb.ev ], [ %indvars.iv.next.i.i134.3, %ibf_load_small_value.exit.i136.unr-lcssa ]
  %.0211.i.i133.epil.init = phi i64 [ %i.dgq, %bb.ev ], [ %i.dhw, %ibf_load_small_value.exit.i136.unr-lcssa ]
  %lcmp.mod2371 = icmp ne i64 %xtraiter2367, 0
  tail call void @llvm.assume(i1 %lcmp.mod2371)
  br label %.lr.ph.i.i131.epil

.lr.ph.i.i131.epil:                               ; preds = %.lr.ph.i.i131.epil, %.lr.ph.i.i131.epil.preheader
  %indvars.iv.i.i132.epil = phi i64 [ %indvars.iv.next.i.i134.epil, %.lr.ph.i.i131.epil ], [ %indvars.iv.i.i132.epil.init, %.lr.ph.i.i131.epil.preheader ] ; 2 uses
  %.0211.i.i133.epil = phi i64 [ %i.die, %.lr.ph.i.i131.epil ], [ %.0211.i.i133.epil.init, %.lr.ph.i.i131.epil.preheader ]
  %epil.iter2368 = phi i64 [ %epil.iter2368.next, %.lr.ph.i.i131.epil ], [ 0, %.lr.ph.i.i131.epil.preheader ]
  %i.dhx = shl i64 %.0211.i.i133.epil, 8
  %i.dhy = trunc nuw nsw i64 %indvars.iv.i.i132.epil to i32
  %i.dhz = add i32 %.098110.i, %i.dhy
  %i.dia = zext i32 %i.dhz to i64
  %i.dib = getelementptr i8, ptr %i.dft, i64 %i.dia
  %i.dic = load i8, ptr %i.dib, align 1, !tbaa !20
  %i.did = zext i8 %i.dic to i64
  %i.die = or disjoint i64 %i.dhx, %i.did         ; 2 uses
  %indvars.iv.next.i.i134.epil = add nuw nsw i64 %indvars.iv.i.i132.epil, 1
  %epil.iter2368.next = add i64 %epil.iter2368, 1 ; 2 uses
  %epil.iter2368.cmp.not = icmp eq i64 %epil.iter2368.next, %xtraiter2367
  br i1 %epil.iter2368.cmp.not, label %ibf_load_small_value.exit.i136, label %.lr.ph.i.i131.epil, !llvm.loop !417

ibf_load_small_value.exit.i136:                   ; preds = %.lr.ph.i.i131.epil, %ibf_load_small_value.exit.i136.unr-lcssa
  %.lcssa1970 = phi i64 [ %i.dhw, %ibf_load_small_value.exit.i136.unr-lcssa ], [ %i.die, %.lr.ph.i.i131.epil ] ; 2 uses
  %.not48.i = icmp eq i64 %.lcssa1970, -1
  br i1 %.not48.i, label %bb.ft, label %bb.ew

bb.ew:                                            ; preds = %ibf_load_small_value.exit.i136, %ibf_load_small_value.exit.thread.i
  %.021.lcssa.i101.i = phi i64 [ %i.dgm, %ibf_load_small_value.exit.thread.i ], [ %.lcssa1970, %ibf_load_small_value.exit.i136 ] ; 2 uses
  %i.dif = phi i32 [ %i.dgh, %ibf_load_small_value.exit.thread.i ], [ %i.dgd, %ibf_load_small_value.exit.i136 ] ; 8 uses
  %i.dig = icmp eq i64 %.021.lcssa.i101.i, 0
end_hunk_2
begin_hunk_3_@rb_ibf_load_iseq_complete:bb.a
  %i.gqa = getelementptr i8, ptr %i.gpy, i64 %i.gpz
  %i.gqb = load i8, ptr %i.gqa, align 1, !tbaa !20 ; 4 uses
  %i.gqc = zext i8 %i.gqb to i32                  ; 2 uses
  %i.gqd = and i32 %i.gqc, 1
  %.not.i216.i = icmp eq i32 %i.gqd, 0
  br i1 %.not.i216.i, label %bb.lw, label %.thread.i217.i

bb.lw:                                            ; preds = %bb.lv
  %i.gqe = icmp eq i8 %i.gqb, 0
  %i.gqf = tail call range(i32 0, 8) i32 @llvm.cttz.i32(i32 range(i32 1, 256) %i.gqc, i1 true)
  %i.gqg = add nuw nsw i32 %i.gqf, 1
  %i.gqh = select i1 %i.gqe, i32 9, i32 %i.gqg    ; 3 uses
  %i.gqi = add i32 %i.gqh, %.1                    ; 3 uses
  %i.gqj = getelementptr i8, ptr %.val.i25, i64 8
  %i.gqk = load i32, ptr %i.gqj, align 8, !tbaa !360
  %i.gql = icmp ugt i32 %i.gqi, %i.gqk
  br i1 %i.gql, label %bb.lx, label %bb.ly

.thread.i217.i:                                   ; preds = %bb.lv
  %i.gqm = add i32 %.1, 1                         ; 2 uses
  %i.gqn = getelementptr i8, ptr %.val.i25, i64 8
  %i.gqo = load i32, ptr %i.gqn, align 8, !tbaa !360
  %i.gqp = icmp ugt i32 %i.gqm, %i.gqo
  br i1 %i.gqp, label %bb.lx, label %.thread4.i218.i

.thread4.i218.i:                                  ; preds = %.thread.i217.i
  %i.gqq = lshr i8 %i.gqb, 1
  %i.gqr = zext nneg i8 %i.gqq to i64
  br label %ibf_load_small_value.exit225.i

bb.lx:                                            ; preds = %.thread.i217.i, %bb.lw
  %i.gqs = load i64, ptr @rb_eRuntimeError, align 8, !tbaa !36
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.gqs, ptr noundef nonnull @.str.236) #41, !inline_history !457
  unreachable

bb.ly:                                            ; preds = %bb.lw
  %i.gqt = zext i8 %i.gqb to i64
  %i.gqu = zext nneg i32 %i.gqh to i64            ; 2 uses
  %i.gqv = lshr i64 %i.gqt, %i.gqu                ; 2 uses
  %i.gqw = add nsw i64 %i.gqu, -1                 ; 2 uses
  %xtraiter2583 = and i64 %i.gqw, 3               ; 3 uses
  %i.gqx = add nsw i32 %i.gqh, -2
  %i.gqy = icmp ult i32 %i.gqx, 3
  br i1 %i.gqy, label %.lr.ph.i220.i.epil.preheader, label %.new2582

.new2582:                                         ; preds = %bb.ly
  %unroll_iter2588 = and i64 %i.gqw, -4
  %invariant.op3027 = add i32 1, %.1
  %invariant.op3029 = add i32 2, %.1
  %invariant.op3031 = add i32 3, %.1
  br label %.lr.ph.i220.i

.lr.ph.i220.i:                                    ; preds = %.lr.ph.i220.i, %.new2582
  %indvars.iv.i221.i = phi i64 [ 1, %.new2582 ], [ %indvars.iv.next.i223.i.3, %.lr.ph.i220.i ] ; 5 uses
  %.0211.i222.i = phi i64 [ %i.gqv, %.new2582 ], [ %i.gsb, %.lr.ph.i220.i ]
  %niter2589 = phi i64 [ 0, %.new2582 ], [ %niter2589.next.3, %.lr.ph.i220.i ]
  %i.gqz = trunc nuw nsw i64 %indvars.iv.i221.i to i32
  %i.gra = add i32 %.1, %i.gqz
  %i.grb = zext i32 %i.gra to i64
  %i.grc = getelementptr i8, ptr %i.gpy, i64 %i.grb
  %i.grd = load i8, ptr %i.grc, align 1, !tbaa !20
  %i.gre = zext i8 %i.grd to i64
  %i.grf = shl i64 %.0211.i222.i, 16
  %i.grg = shl nuw nsw i64 %i.gre, 8
  %i.grh = or disjoint i64 %i.grf, %i.grg
  %i.gri = trunc i64 %indvars.iv.i221.i to i32
  %.reass3028 = add i32 %i.gri, %invariant.op3027
  %i.grj = zext i32 %.reass3028 to i64
  %i.grk = getelementptr i8, ptr %i.gpy, i64 %i.grj
  %i.grl = load i8, ptr %i.grk, align 1, !tbaa !20
  %i.grm = zext i8 %i.grl to i64
  %i.grn = or disjoint i64 %i.grh, %i.grm
  %i.gro = trunc i64 %indvars.iv.i221.i to i32
  %.reass3030 = add i32 %i.gro, %invariant.op3029
  %i.grp = zext i32 %.reass3030 to i64
  %i.grq = getelementptr i8, ptr %i.gpy, i64 %i.grp
  %i.grr = load i8, ptr %i.grq, align 1, !tbaa !20
  %i.grs = zext i8 %i.grr to i64
  %i.grt = shl i64 %i.grn, 16
  %i.gru = shl nuw nsw i64 %i.grs, 8
  %i.grv = or disjoint i64 %i.grt, %i.gru
  %i.grw = trunc i64 %indvars.iv.i221.i to i32
  %.reass3032 = add i32 %i.grw, %invariant.op3031
  %i.grx = zext i32 %.reass3032 to i64
  %i.gry = getelementptr i8, ptr %i.gpy, i64 %i.grx
  %i.grz = load i8, ptr %i.gry, align 1, !tbaa !20
  %i.gsa = zext i8 %i.grz to i64
  %i.gsb = or disjoint i64 %i.grv, %i.gsa         ; 3 uses
  %indvars.iv.next.i223.i.3 = add nuw nsw i64 %indvars.iv.i221.i, 4 ; 2 uses
  %niter2589.next.3 = add i64 %niter2589, 4       ; 2 uses
  %niter2589.ncmp.3 = icmp eq i64 %niter2589.next.3, %unroll_iter2588
  br i1 %niter2589.ncmp.3, label %ibf_load_small_value.exit225.i.loopexit.unr-lcssa, label %.lr.ph.i220.i, !llvm.loop !361

ibf_load_small_value.exit225.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i220.i
  %lcmp.mod2585.not = icmp eq i64 %xtraiter2583, 0
  br i1 %lcmp.mod2585.not, label %ibf_load_small_value.exit225.i, label %.lr.ph.i220.i.epil.preheader

.lr.ph.i220.i.epil.preheader:                     ; preds = %ibf_load_small_value.exit225.i.loopexit.unr-lcssa, %bb.ly
  %indvars.iv.i221.i.epil.init = phi i64 [ 1, %bb.ly ], [ %indvars.iv.next.i223.i.3, %ibf_load_small_value.exit225.i.loopexit.unr-lcssa ]
  %.0211.i222.i.epil.init = phi i64 [ %i.gqv, %bb.ly ], [ %i.gsb, %ibf_load_small_value.exit225.i.loopexit.unr-lcssa ]
  %lcmp.mod2587 = icmp ne i64 %xtraiter2583, 0
  tail call void @llvm.assume(i1 %lcmp.mod2587)
  br label %.lr.ph.i220.i.epil

.lr.ph.i220.i.epil:                               ; preds = %.lr.ph.i220.i.epil, %.lr.ph.i220.i.epil.preheader
  %indvars.iv.i221.i.epil = phi i64 [ %indvars.iv.next.i223.i.epil, %.lr.ph.i220.i.epil ], [ %indvars.iv.i221.i.epil.init, %.lr.ph.i220.i.epil.preheader ] ; 2 uses
  %.0211.i222.i.epil = phi i64 [ %i.gsj, %.lr.ph.i220.i.epil ], [ %.0211.i222.i.epil.init, %.lr.ph.i220.i.epil.preheader ]
  %epil.iter2584 = phi i64 [ %epil.iter2584.next, %.lr.ph.i220.i.epil ], [ 0, %.lr.ph.i220.i.epil.preheader ]
  %i.gsc = shl i64 %.0211.i222.i.epil, 8
  %i.gsd = trunc nuw nsw i64 %indvars.iv.i221.i.epil to i32
  %i.gse = add i32 %.1, %i.gsd
  %i.gsf = zext i32 %i.gse to i64
  %i.gsg = getelementptr i8, ptr %i.gpy, i64 %i.gsf
  %i.gsh = load i8, ptr %i.gsg, align 1, !tbaa !20
  %i.gsi = zext i8 %i.gsh to i64
  %i.gsj = or disjoint i64 %i.gsc, %i.gsi         ; 2 uses
  %indvars.iv.next.i223.i.epil = add nuw nsw i64 %indvars.iv.i221.i.epil, 1
  %epil.iter2584.next = add i64 %epil.iter2584, 1 ; 2 uses
  %epil.iter2584.cmp.not = icmp eq i64 %epil.iter2584.next, %xtraiter2583
  br i1 %epil.iter2584.cmp.not, label %ibf_load_small_value.exit225.i, label %.lr.ph.i220.i.epil, !llvm.loop !472

ibf_load_small_value.exit225.i:                   ; preds = %ibf_load_small_value.exit225.i.loopexit.unr-lcssa, %.lr.ph.i220.i.epil, %.thread4.i218.i
  %i.gsk = phi i32 [ %i.gqm, %.thread4.i218.i ], [ %i.gqi, %.lr.ph.i220.i.epil ], [ %i.gqi, %ibf_load_small_value.exit225.i.loopexit.unr-lcssa ]
  %.021.lcssa.i219.i = phi i64 [ %i.gqr, %.thread4.i218.i ], [ %i.gsb, %ibf_load_small_value.exit225.i.loopexit.unr-lcssa ], [ %i.gsj, %.lr.ph.i220.i.epil ]
  %i.gsl = zext i32 %.1.i23 to i64
  %i.gsm = getelementptr [8 x i8], ptr %i.fjg, i64 %i.gsl
  store i64 %.021.lcssa.i219.i, ptr %i.gsm, align 8, !tbaa !36
  br label %rb_obj_written.exit165.i

rb_obj_written.exit165.i.critedge:                ; preds = %bb.jr
  %i.gsn = zext i32 %.1.i23 to i64                ; 3 uses
  %i.gso = getelementptr [8 x i8], ptr %i.fjg, i64 %i.gsn
  store i64 %i.fsi, ptr %i.gso, align 8, !tbaa !36
  %i.gsp = and i64 %i.gsn, 63
  %i.gsq = shl nuw i64 1, %i.gsp
  %i.gsr = lshr i64 %i.gsn, 6
  %i.gss = getelementptr [8 x i8], ptr %.0127.i, i64 %i.gsr ; 2 uses
  %i.gst = load i64, ptr %i.gss, align 8, !tbaa !36
  %i.gsu = or i64 %i.gst, %i.gsq
  store i64 %i.gsu, ptr %i.gss, align 8, !tbaa !36
  br label %rb_obj_written.exit165.i

rb_obj_written.exit165.i:                         ; preds = %ibf_load_iseq.exit.i.thread, %rb_obj_written.exit165.i.critedge, %ISEQ_IS_ENTRY_START.exit.i, %pinned_list_store.exit.i, %ibf_load_small_value.exit225.i, %ibf_load_builtin.exit.i, %ibf_load_id.exit.i, %bb.lb, %bb.la, %array_to_idlist.exit.i, %rb_obj_written.exit177.i, %ibf_load_iseq.exit.i, %rb_obj_written.exit.i, %ibf_load_small_value.exit153.i
  %.2 = phi i32 [ %i.gsk, %ibf_load_small_value.exit225.i ], [ %i.fpg, %ibf_load_small_value.exit153.i ], [ %i.fpg, %rb_obj_written.exit.i ], [ %i.gpf, %ibf_load_builtin.exit.i ], [ %i.fwo, %ibf_load_iseq.exit.i ], [ %i.fwo, %rb_obj_written.exit177.i ], [ %i.gcf, %array_to_idlist.exit.i ], [ %i.ggc, %bb.la ], [ %i.ggc, %ISEQ_IS_ENTRY_START.exit.i ], [ %.1, %bb.lb ], [ %i.gjq, %ibf_load_id.exit.i ], [ %i.fsg, %pinned_list_store.exit.i ], [ %i.fsg, %rb_obj_written.exit165.i.critedge ], [ %i.fwo, %ibf_load_iseq.exit.i.thread ]
  %.5.i = phi i1 [ %.1129.i, %ibf_load_small_value.exit225.i ], [ %.1129.i, %ibf_load_small_value.exit153.i ], [ true, %rb_obj_written.exit.i ], [ %.1129.i, %ibf_load_builtin.exit.i ], [ %.1129.i, %ibf_load_iseq.exit.i ], [ true, %rb_obj_written.exit177.i ], [ %.1129.i, %array_to_idlist.exit.i ], [ %.1129.i, %bb.la ], [ %.1129.i, %ISEQ_IS_ENTRY_START.exit.i ], [ %.1129.i, %bb.lb ], [ %.1129.i, %ibf_load_id.exit.i ], [ true, %pinned_list_store.exit.i ], [ true, %rb_obj_written.exit165.i.critedge ], [ %.1129.i, %ibf_load_iseq.exit.i.thread ]
  %.3126.i = phi i32 [ %.1124.i, %ibf_load_small_value.exit225.i ], [ %.1124.i, %ibf_load_small_value.exit153.i ], [ %.1124.i, %rb_obj_written.exit.i ], [ %.1124.i, %ibf_load_builtin.exit.i ], [ %.1124.i, %ibf_load_iseq.exit.i ], [ %.1124.i, %rb_obj_written.exit177.i ], [ %i.gci, %array_to_idlist.exit.i ], [ %.1124.i, %bb.la ], [ %.1124.i, %ISEQ_IS_ENTRY_START.exit.i ], [ %.1124.i, %bb.lb ], [ %.1124.i, %ibf_load_id.exit.i ], [ %.1124.i, %pinned_list_store.exit.i ], [ %.1124.i, %rb_obj_written.exit165.i.critedge ], [ %.1124.i, %ibf_load_iseq.exit.i.thread ]
  %.3.i = phi ptr [ %.1122.i, %ibf_load_small_value.exit225.i ], [ %.1122.i, %ibf_load_small_value.exit153.i ], [ %.1122.i, %rb_obj_written.exit.i ], [ %.1122.i, %ibf_load_builtin.exit.i ], [ %.1122.i, %ibf_load_iseq.exit.i ], [ %.1122.i, %rb_obj_written.exit177.i ], [ %.1122.i, %array_to_idlist.exit.i ], [ %.1122.i, %bb.la ], [ %.1122.i, %ISEQ_IS_ENTRY_START.exit.i ], [ %i.gha, %bb.lb ], [ %.1122.i, %ibf_load_id.exit.i ], [ %.1122.i, %pinned_list_store.exit.i ], [ %.1122.i, %rb_obj_written.exit165.i.critedge ], [ %.1122.i, %ibf_load_iseq.exit.i.thread ]
  %i.gsv = add i32 %.0132.i, 1
  br label %bb.je, !llvm.loop !473

bb.lz:                                            ; preds = %bb.je
  %i.gsw = getelementptr i8, ptr @rb_vm_insn_len_info, i64 %.021.lcssa.i.i
  %i.gsx = load i8, ptr %i.gsw, align 1, !tbaa !20
  %i.gsy = zext i8 %i.gsx to i32
  %i.gsz = add i32 %.0132.i, 1
  %.not135.i = icmp eq i32 %i.gsz, %i.gsy
  br i1 %.not135.i, label %bb.iz, label %bb.ma, !llvm.loop !474

bb.ma:                                            ; preds = %bb.lz
  %i.gta = load i64, ptr @rb_eRuntimeError, align 8, !tbaa !36
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.gta, ptr noundef nonnull @.str.208) #41, !inline_history !457
  unreachable

bb.mb:                                            ; preds = %bb.iz
  store i32 %.0.i22, ptr %i.fjl, align 4, !tbaa !145
  %i.gtb = zext i32 %.0.i22 to i64
  %i.gtc = add nuw nsw i64 %i.gtb, 63
  %.mask.i = and i64 %i.gtc, 8589934528
  %i.gtd = icmp eq i64 %.mask.i, 64
  br i1 %i.gtd, label %bb.mc, label %bb.md

bb.mc:                                            ; preds = %bb.mb
  %i.gte = load i64, ptr %.0127.i, align 8, !tbaa !36
  %i.gtf = getelementptr i8, ptr %i.fjh, i64 280
  store i64 %i.gte, ptr %i.gtf, align 8, !tbaa !20
  br label %ibf_load_code.exit

bb.md:                                            ; preds = %bb.mb
  %i.gtg = getelementptr i8, ptr %i.fjh, i64 280  ; 2 uses
  br i1 %.0128.i, label %bb.me, label %bb.mf

bb.me:                                            ; preds = %bb.md
  store ptr %.0127.i, ptr %i.gtg, align 8, !tbaa !20
  br label %ibf_load_code.exit

bb.mf:                                            ; preds = %bb.md
  store ptr null, ptr %i.gtg, align 8, !tbaa !20
  call void @ruby_xfree(ptr noundef nonnull %.0127.i) #37, !inline_history !457
  br label %ibf_load_code.exit

ibf_load_code.exit:                               ; preds = %bb.mc, %bb.me, %bb.mf
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #37
  call void @rb_iseq_insns_info_encode_positions(ptr noundef %0) #37, !inline_history !357
  %i.gth = call ptr @rb_vm_get_insns_address_table() #37
  %i.gti = load ptr, ptr %i.v, align 8, !tbaa !46 ; 2 uses
  %i.gtj = getelementptr i8, ptr %i.gti, i64 8
  %i.gtk = load ptr, ptr %i.gtj, align 8, !tbaa !144
  %i.gtl = getelementptr i8, ptr %i.gti, i64 4
  %i.gtm = load i32, ptr %i.gtl, align 4, !tbaa !145 ; 2 uses
  %.not.i20 = icmp eq i32 %i.gtm, 0
  br i1 %.not.i20, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %ibf_load_code.exit, %.lr.ph.i
  %.012.i = phi i32 [ %i.gtx, %.lr.ph.i ], [ 0, %ibf_load_code.exit ] ; 2 uses
  %i.gtn = zext i32 %.012.i to i64
  %i.gto = getelementptr [8 x i8], ptr %i.gtk, i64 %i.gtn ; 2 uses
  %i.gtp = load i64, ptr %i.gto, align 8, !tbaa !36
  %sext.i21 = shl i64 %i.gtp, 32
  %i.gtq = ashr exact i64 %sext.i21, 32           ; 2 uses
  %i.gtr = getelementptr i8, ptr @rb_vm_insn_len_info, i64 %i.gtq
  %i.gts = load i8, ptr %i.gtr, align 1, !tbaa !20
  %i.gtt = zext i8 %i.gts to i32
  %i.gtu = getelementptr [8 x i8], ptr %i.gth, i64 %i.gtq
  %i.gtv = load ptr, ptr %i.gtu, align 8, !tbaa !167
  %i.gtw = ptrtoint ptr %i.gtv to i64
  store i64 %i.gtw, ptr %i.gto, align 8, !tbaa !36
  %i.gtx = add i32 %.012.i, %i.gtt                ; 2 uses
  %i.gty = icmp ult i32 %i.gtx, %i.gtm
  br i1 %i.gty, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !168

._crit_edge.i:                                    ; preds = %.lr.ph.i, %ibf_load_code.exit
  %1 = and i64 %i.der, 7
  %2 = icmp eq i64 %1, 0                          ; 2 uses
  br i1 %2, label %3, label %rb_iseq_translate_threaded_code.exit

3:                                                ; preds = %._crit_edge.i
  %4 = load i64, ptr %0, align 8, !tbaa !75
  %5 = or i64 %4, 524288
  store i64 %5, ptr %0, align 8, !tbaa !75
  br label %rb_iseq_translate_threaded_code.exit

rb_iseq_translate_threaded_code.exit:             ; preds = %._crit_edge.i, %3
  %i.gtz = load i64, ptr @rb_yjit_live_iseq_count, align 8, !tbaa !36
  %i.gua = add i64 %i.gtz, 1
  store i64 %i.gua, ptr @rb_yjit_live_iseq_count, align 8, !tbaa !36
  %i.gub = load i64, ptr @rb_yjit_iseq_alloc_count, align 8, !tbaa !36
  %i.guc = add i64 %i.gub, 1
  store i64 %i.guc, ptr @rb_yjit_iseq_alloc_count, align 8, !tbaa !36
  %i.gud = getelementptr i8, ptr %i.u, i64 72     ; 2 uses
  %i.gue = call fastcc i64 @ibf_load_object(ptr noundef %i.i, i64 noundef %.021.lcssa.i463) ; 2 uses
  %.not.i17 = icmp eq i64 %i.gue, 4
  br i1 %.not.i17, label %ibf_load_location_str.exit19.thread, label %ibf_load_location_str.exit19

ibf_load_location_str.exit19.thread:              ; preds = %rb_iseq_translate_threaded_code.exit
  store i64 4, ptr %i.gud, align 8, !tbaa !36
  br label %rb_obj_write.exit16

ibf_load_location_str.exit19:                     ; preds = %rb_iseq_translate_threaded_code.exit
  %i.guf = call i64 @rb_fstring(i64 noundef %i.gue) #37 ; 4 uses
  store i64 %i.guf, ptr %i.gud, align 8, !tbaa !36
  %i.gug = icmp eq i64 %i.guf, 0
  %i.guh = and i64 %i.guf, 7
  %i.gui = icmp ne i64 %i.guh, 0
  %i.guj = or i1 %i.gug, %i.gui
  br i1 %i.guj, label %rb_obj_write.exit16, label %bb.mg

bb.mg:                                            ; preds = %ibf_load_location_str.exit19
  call void @rb_gc_writebarrier(i64 noundef %i.der, i64 noundef %i.guf) #37
  br label %rb_obj_write.exit16

rb_obj_write.exit16:                              ; preds = %ibf_load_location_str.exit19.thread, %ibf_load_location_str.exit19, %bb.mg
  %i.guk = getelementptr i8, ptr %i.u, i64 80     ; 2 uses
  %i.gul = call fastcc i64 @ibf_load_object(ptr noundef %i.i, i64 noundef %.021.lcssa.i452) ; 2 uses
  %.not.i14 = icmp eq i64 %i.gul, 4
  br i1 %.not.i14, label %ibf_load_location_str.exit.thread, label %ibf_load_location_str.exit

ibf_load_location_str.exit.thread:                ; preds = %rb_obj_write.exit16
  store i64 4, ptr %i.guk, align 8, !tbaa !36
  br label %rb_obj_write.exit

ibf_load_location_str.exit:                       ; preds = %rb_obj_write.exit16
  %i.gum = call i64 @rb_fstring(i64 noundef %i.gul) #37 ; 4 uses
  store i64 %i.gum, ptr %i.guk, align 8, !tbaa !36
  %i.gun = icmp eq i64 %i.gum, 0
  %i.guo = and i64 %i.gum, 7
  %i.gup = icmp ne i64 %i.guo, 0
  %i.guq = or i1 %i.gun, %i.gup
  br i1 %i.guq, label %rb_obj_write.exit, label %bb.mh

bb.mh:                                            ; preds = %ibf_load_location_str.exit
  call void @rb_gc_writebarrier(i64 noundef %i.der, i64 noundef %i.gum) #37
  br label %rb_obj_write.exit

rb_obj_write.exit:                                ; preds = %ibf_load_location_str.exit.thread, %ibf_load_location_str.exit, %bb.mh
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #37
  store ptr %i.c, ptr %i.d, align 8, !tbaa !89
  call void asm sideeffect "", "*m,~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(ptr) %i.d) #37, !inline_history !357, !srcloc !475
  %i.gur = load ptr, ptr %i.d, align 8, !tbaa !89
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #37
  %i.gus = load volatile i64, ptr %i.gur, align 8, !tbaa !36 ; 0 uses
  call void @rb_vm_pop_frame_no_int(ptr noundef %.0..0..0..0..0..0..i) #37, !inline_history !357
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #37
  %i.gut = load i64, ptr %0, align 8, !tbaa !37   ; 2 uses
  %i.guu = and i64 %i.gut, -262145
  store i64 %i.guu, ptr %0, align 8, !tbaa !37
  store ptr null, ptr %i.e, align 8, !tbaa !20
  br i1 %2, label %6, label %RB_FL_UNSET.exit

6:                                                ; preds = %rb_obj_write.exit
  %7 = and i64 %i.gut, -393217
  store i64 %7, ptr %0, align 8, !tbaa !75
  br label %RB_FL_UNSET.exit

RB_FL_UNSET.exit:                                 ; preds = %rb_obj_write.exit, %6
  call void @rb_iseq_init_trace(ptr noundef nonnull %0) #37
  store ptr %i.k, ptr %i.j, align 8, !tbaa !349
  ret void
}

declare void @rb_iseq_init_trace(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define hidden ptr @rb_iseq_ibf_load(i64 noundef %0) local_unnamed_addr #1 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #37
  %i.c = tail call i64 @rb_data_typed_object_zalloc(i64 noundef 0, i64 noundef 80, ptr noundef nonnull @ibf_load_type) #37 ; 3 uses
  %i.d = inttoptr i64 %i.c to ptr                 ; 2 uses
  %i.e = getelementptr i8, ptr %i.d, i64 24
  %i.f = load i64, ptr %i.e, align 8, !tbaa !319
  %i.g = trunc i64 %i.f to i1
  %i.h = getelementptr i8, ptr %i.d, i64 32       ; 2 uses
  br i1 %i.g, label %RTYPEDDATA_GET_DATA.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !301
  br label %RTYPEDDATA_GET_DATA.exit

RTYPEDDATA_GET_DATA.exit:                         ; preds = %bb.a, %bb.b
  %i.j = phi ptr [ %i.i, %bb.b ], [ %i.h, %bb.a ] ; 2 uses
  store i64 %i.c, ptr %i.a, align 8, !tbaa !36
  tail call fastcc void @ibf_load_setup(ptr noundef %i.j, i64 noundef %i.c, i64 noundef %0)
  %i.k = tail call fastcc ptr @ibf_load_iseq(ptr noundef %i.j, ptr noundef null)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #37
  store ptr %i.a, ptr %i.b, align 8, !tbaa !89
  call void asm sideeffect "", "*m,~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(ptr) %i.b) #37, !srcloc !476
  %i.l = load ptr, ptr %i.b, align 8, !tbaa !89
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #37
  %i.m = load volatile i64, ptr %i.l, align 8, !tbaa !36 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #37
  ret ptr %i.k
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @ibf_load_setup(ptr noundef %0, i64 noundef %1, i64 noundef %2) unnamed_addr #1 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  store i64 %2, ptr %i.a, align 8, !tbaa !36
  %i.b = call i64 @rb_string_value(ptr noundef nonnull %i.a) #37 ; 0 uses
  %i.c = load i64, ptr %i.a, align 8, !tbaa !36
  %i.d = inttoptr i64 %i.c to ptr                 ; 3 uses
  %i.e = getelementptr i8, ptr %i.d, i64 16
  %i.f = load i64, ptr %i.e, align 8, !tbaa !327  ; 4 uses
  %i.g = add i64 %i.f, 2147483648
  %.not.i.i = icmp ult i64 %i.g, 4294967296
  br i1 %.not.i.i, label %RSTRING_LENINT.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @rb_out_of_int(i64 noundef %i.f) #38
  unreachable

RSTRING_LENINT.exit:                              ; preds = %bb.a
  %i.h = icmp slt i64 %i.f, 40
  br i1 %i.h, label %bb.c, label %bb.d

bb.c:                                             ; preds = %RSTRING_LENINT.exit
  %i.i = load i64, ptr @rb_eRuntimeError, align 8, !tbaa !36
  call void (i64, ptr, ...) @rb_raise(i64 noundef %i.i, ptr noundef nonnull @.str.247) #41
  unreachable

bb.d:                                             ; preds = %RSTRING_LENINT.exit
  %i.j = load i64, ptr %i.d, align 8, !tbaa !75
  %i.k = and i64 %i.j, 8192
  %.not.i = icmp eq i64 %i.k, 0
  %i.l = getelementptr i8, ptr %i.d, i64 24       ; 2 uses
  br i1 %.not.i, label %RSTRING_PTR.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !20
  br label %RSTRING_PTR.exit

RSTRING_PTR.exit:                                 ; preds = %bb.d, %bb.e
  %i.n = phi ptr [ %i.m, %bb.e ], [ %i.l, %bb.d ]
  call fastcc void @ibf_load_setup_bytes(ptr noundef %0, i64 noundef %1, ptr noundef %i.n, i64 noundef %i.f)
  %i.o = getelementptr i8, ptr %0, i64 64
  %i.p = load i64, ptr %i.a, align 8, !tbaa !36   ; 4 uses
  store i64 %i.p, ptr %i.o, align 8, !tbaa !36
  %i.q = icmp eq i64 %i.p, 0
  %i.r = and i64 %i.p, 7
  %i.s = icmp ne i64 %i.r, 0
  %i.t = or i1 %i.q, %i.s
  br i1 %i.t, label %rb_obj_write.exit, label %bb.f

bb.f:                                             ; preds = %RSTRING_PTR.exit
  call void @rb_gc_writebarrier(i64 noundef %1, i64 noundef %i.p) #37
  br label %rb_obj_write.exit

rb_obj_write.exit:                                ; preds = %RSTRING_PTR.exit, %bb.f
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc ptr @ibf_load_iseq(ptr noundef readonly captures(none) %0, ptr noundef %1) unnamed_addr #1 {
bb.a:
  %i.a = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.b = trunc i64 %i.a to i32                    ; 2 uses
  %i.c = icmp eq i32 %i.b, -1
  br i1 %i.c, label %bb.p, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr i8, ptr %0, i64 8          ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !444  ; 4 uses
  %sext = shl i64 %i.a, 32
  %i.f = ashr exact i64 %sext, 32                 ; 6 uses
  %i.g = icmp eq i64 %i.e, 0
  %i.h = and i64 %i.e, 7
  %i.i = icmp ne i64 %i.h, 0
  %i.j = or i1 %i.g, %i.i
  br i1 %i.j, label %.critedge.i.i, label %rbimpl_RB_TYPE_P_fastpath.exit.i.i, !prof !445

rbimpl_RB_TYPE_P_fastpath.exit.i.i:               ; preds = %bb.b
  %i.k = inttoptr i64 %i.e to ptr                 ; 3 uses
  %i.l = load i64, ptr %i.k, align 8, !tbaa !75
  %i.m = and i64 %i.l, 95
  %or.cond.not.i.i = icmp eq i64 %i.m, 76
  br i1 %or.cond.not.i.i, label %bb.c, label %.critedge.i.i, !prof !446

bb.c:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i.i
  %i.n = getelementptr i8, ptr %i.k, i64 24
  %i.o = load i64, ptr %i.n, align 8, !tbaa !319  ; 2 uses
  %i.p = and i64 %i.o, -2                         ; 2 uses
  %i.q = inttoptr i64 %i.p to ptr
  %i.r = trunc i64 %i.o to i1
  %i.s = getelementptr i8, ptr %i.k, i64 32       ; 2 uses
  br i1 %i.r, label %RTYPEDDATA_GET_DATA.exit.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !301
  br label %RTYPEDDATA_GET_DATA.exit.i.i

RTYPEDDATA_GET_DATA.exit.i.i:                     ; preds = %bb.d, %bb.c
  %i.u = phi ptr [ %i.t, %bb.d ], [ %i.s, %bb.c ] ; 2 uses
  %i.v = icmp eq i64 %i.p, ptrtoint (ptr @pinned_list_type to i64)
  br i1 %i.v, label %rbimpl_check_typeddata.exit.i, label %.preheader.i.i, !prof !125

.preheader.i.i:                                   ; preds = %RTYPEDDATA_GET_DATA.exit.i.i, %bb.e
  %.016.i.i = phi ptr [ %i.x, %bb.e ], [ %i.q, %RTYPEDDATA_GET_DATA.exit.i.i ] ; 2 uses
  %.not.i.i = icmp eq ptr %.016.i.i, null
  br i1 %.not.i.i, label %.critedge.i.i, label %bb.e

bb.e:                                             ; preds = %.preheader.i.i
  %i.w = getelementptr i8, ptr %.016.i.i, i64 48
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !447  ; 2 uses
  %i.y = icmp eq ptr %i.x, @pinned_list_type
  br i1 %i.y, label %rbimpl_check_typeddata.exit.i, label %.preheader.i.i, !llvm.loop !451

.critedge.i.i:                                    ; preds = %.preheader.i.i, %rbimpl_RB_TYPE_P_fastpath.exit.i.i, %bb.b
  %i.z = tail call ptr @rb_check_typeddata(i64 noundef %i.e, ptr noundef nonnull @pinned_list_type) #37
  br label %rbimpl_check_typeddata.exit.i

rbimpl_check_typeddata.exit.i:                    ; preds = %bb.e, %.critedge.i.i, %RTYPEDDATA_GET_DATA.exit.i.i
  %.1.i.i = phi ptr [ %i.z, %.critedge.i.i ], [ %i.u, %RTYPEDDATA_GET_DATA.exit.i.i ], [ %i.u, %bb.e ] ; 2 uses
  %i.aa = load i64, ptr %.1.i.i, align 8, !tbaa !452
  %.not.i = icmp slt i64 %i.f, %i.aa
  br i1 %.not.i, label %pinned_list_fetch.exit, label %bb.f

bb.f:                                             ; preds = %rbimpl_check_typeddata.exit.i
  %i.ab = load i64, ptr @rb_eIndexError, align 8, !tbaa !36
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.ab, ptr noundef nonnull @.str.238, i64 noundef %i.f) #41
  unreachable

pinned_list_fetch.exit:                           ; preds = %rbimpl_check_typeddata.exit.i
  %i.ac = getelementptr i8, ptr %.1.i.i, i64 8
  %i.ad = getelementptr [8 x i8], ptr %i.ac, i64 %i.f
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !36 ; 2 uses
  %.not = icmp eq i64 %i.ae, 0
  br i1 %.not, label %bb.h, label %bb.g

bb.g:                                             ; preds = %pinned_list_fetch.exit
  %i.af = inttoptr i64 %i.ae to ptr
  br label %bb.p

bb.h:                                             ; preds = %pinned_list_fetch.exit
  %i.ag = tail call i64 @rb_imemo_new(i32 noundef 7, i64 noundef 0, i64 noundef 40, i1 noundef zeroext true) #37 ; 6 uses
  %i.ah = inttoptr i64 %i.ag to ptr               ; 7 uses
  %i.ai = getelementptr i8, ptr %i.ah, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.ai, i8 noundef 0, i64 noundef 32, i1 noundef false) #37
  %i.aj = icmp ne i64 %i.ag, 0
  %i.ak = and i64 %i.ag, 7                        ; 2 uses
  %i.al = icmp eq i64 %i.ak, 0
  %.not4.i = and i1 %i.aj, %i.al
  br i1 %.not4.i, label %bb.i, label %RB_FL_SET.exit

bb.i:                                             ; preds = %bb.h
  %i.am = load i64, ptr %i.ah, align 8, !tbaa !75
  %i.an = or i64 %i.am, 131072
  store i64 %i.an, ptr %i.ah, align 8, !tbaa !75
  br label %RB_FL_SET.exit

RB_FL_SET.exit:                                   ; preds = %bb.h, %bb.i
  %i.ao = getelementptr i8, ptr %0, i64 48
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !454
  %i.aq = getelementptr i8, ptr %i.ah, i64 24
end_hunk_3
